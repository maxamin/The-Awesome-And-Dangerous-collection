Imports System.ComponentModel
Imports System.Text
Imports Microsoft.VisualBasic.CompilerServices
Imports System.IO
Imports System
Imports Microsoft.VisualBasic
Imports System.Windows.Forms
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas
Imports System.Windows.Forms.ContextMenuStrip


'Coded By Pjoao1578
'v2
Public Class TXT_Editor
#Region "TXT_Editor"
    Public sock As Integer
    Public pathoftext As String
    Public yy As String = "||" 'senha yy = "||"
#End Region

    Private Sub TXT_Editor_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub TXT_Editor_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub TXT_Editor_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub SaveTextoEmTXTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SaveTextoEmTXTToolStripMenuItem.Click
        'salvar textto em txt
        Dim sd As New SaveFileDialog()
        sd.Filter = "Arquivos TXT (*.txt)|*.txt" '.txt
        sd.FileName = "TXT.txt" 'name
        If sd.ShowDialog() = Windows.Forms.DialogResult.OK Then
            Dim b As New StringBuilder()
            b.Append(Me.TextBox1.Text & vbNewLine)
            IO.File.WriteAllText(sd.FileName, b.ToString())
            MessageBox.Show("Salvo Em TXT", "Salvo !", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'Mensagem
        End If
    End Sub

    Private Sub SaveTXTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SaveTXTToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "savetextfile" & yy & pathoftext & yy & Me.TextBox1.Text)
        Next
        Me.TextBox1.Clear() 'limpar
        MessageBox.Show("   O Arquivo foi Salvo", "Salvo", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub ExitToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ExitToolStripMenuItem.Click
        Me.TextBox1.Clear() 'limpar
        Me.Close() 'exit
    End Sub

    Private Sub TXT_Editor_Closed(sender As Object, e As EventArgs) Handles Me.Closed
        Me.TextBox1.Clear() 'limpar
    End Sub

    Private Sub TXT_Editor_Closing(sender As Object, e As CancelEventArgs) Handles Me.Closing
        Me.TextBox1.Clear() 'limpar
    End Sub

    Private Sub CopyTXTAllToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyTXTAllToolStripMenuItem.Click
        Me.TextBox1.SelectAll() 'select all txt
        Try
            My.Computer.Clipboard.SetText(Me.TextBox1.Text) 'copy txt all
        Catch ex As Exception 'erro nao report
        End Try
        MessageBox.Show("TXT Copiado", "Copiado !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
    End Sub

    Private Sub CopySelectedTXTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopySelectedTXTToolStripMenuItem.Click
        Try
            My.Computer.Clipboard.SetText(Me.TextBox1.Text) 'copy txt all
        Catch ex As Exception 'erro nao report
        End Try
        MessageBox.Show("TXT Copiado", "Copiado !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
    End Sub
End Class