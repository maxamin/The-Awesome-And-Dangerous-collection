Imports System.ComponentModel
Imports System.Text
Imports System.IO
Imports System.Windows.Forms.Form
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas
Imports System.Windows.Forms.TextBox
Imports Microsoft.VisualBasic.CompilerServices


'coded by´pjoao1578
'v2
Public Class Informaçoes
#Region "info"
    Public sock As Integer
#End Region

    Private Sub Informaçoes_Closed(sender As Object, e As EventArgs) Handles Me.Closed
        Try
            Me.TextBox1.Clear() 'linpar txt
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Informaçoes_Closing(sender As Object, e As CancelEventArgs) Handles Me.Closing
        Try
            Me.TextBox1.Clear() 'linpar txt
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Informaçoes_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub ExitToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ExitToolStripMenuItem.Click
        Me.TextBox1.Clear() 'linpar txt
        Me.Close() 'exit
    End Sub

    Private Sub LinparTXTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles LinparTXTToolStripMenuItem.Click
        Me.TextBox1.Clear() 'linpar txt
    End Sub

    Private Sub CopyAllToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyAllToolStripMenuItem.Click
        Me.TextBox1.SelectAll() 'select all txt
        Try
            My.Computer.Clipboard.SetText(Me.TextBox1.Text) 'copy txt all
        Catch ex As Exception 'erro nao report
        End Try
        MessageBox.Show("TXT Copiado", "Copiado !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
    End Sub

    Private Sub CopySelectedToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopySelectedToolStripMenuItem.Click
        Try
            My.Computer.Clipboard.SetText(Me.TextBox1.SelectedText) 'copy txt selected
        Catch ex As Exception 'erro nao report
        End Try
        MessageBox.Show("TXT Copiado", "Copiado !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
    End Sub

    Private Sub SaveEmTXTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SaveEmTXTToolStripMenuItem.Click
        'salvar em txt as informations 
        Dim sd As New SaveFileDialog()
        sd.Filter = "Informations TXT (*.txt)|*.txt" '.txt
        sd.FileName = "Informations.txt" 'name
        If sd.ShowDialog() = Windows.Forms.DialogResult.OK Then
            Dim b As New StringBuilder()
            b.Append(Me.TextBox1.Text & vbNewLine)
            IO.File.WriteAllText(sd.FileName, b.ToString())
            MessageBox.Show("Salvo Em TXT", "Salvo", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'Mensagem
        End If
    End Sub
End Class