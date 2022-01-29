Imports System.ComponentModel
Imports System.Text
Imports Microsoft.VisualBasic.CompilerServices
Imports System.IO
Imports System
Imports Microsoft.VisualBasic
Imports System.Windows.Forms
Imports System.Diagnostics
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas

'v3
Public Class Pasta_compartihadas
#Region "past"
    Public sock As Integer
    Dim yy As String = "||" 'yy = "||" = senha
#End Region


    Private Sub Pasta_compartihadas_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        Try
            Me.TextBox1.Clear()
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Me.TextBox1.Clear()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Pasta_compartihadas_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try
            Me.TextBox1.Clear()
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Me.TextBox1.Clear()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Pasta_compartihadas_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.TextBox1.Clear()
        Form1.s.Send(sock, "pastacompartilhada" & yy)
    End Sub

    Private Sub UpdeterListToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles UpdeterListToolStripMenuItem.Click
        Me.TextBox1.Clear()
        Form1.s.Send(sock, "pastacompartilhada" & yy)
    End Sub

    Private Sub LinparListToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles LinparListToolStripMenuItem.Click
        Me.TextBox1.Clear()
    End Sub

    Private Sub CopyTXTSelectedToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyTXTSelectedToolStripMenuItem.Click
        'selectd copy
        Try
            My.Computer.Clipboard.SetText(TextBox1.SelectedText) 'copy txt Selected
        Catch ex As Exception 'erro nao report
        End Try
        MessageBox.Show("TXT Copiado", "Copiado !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
    End Sub

    Private Sub CopyTXTAllToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyTXTAllToolStripMenuItem.Click
        Me.TextBox1.SelectAll() 'select all txt
        Try
            My.Computer.Clipboard.SetText(Me.TextBox1.Text) 'copy txt all
        Catch ex As Exception 'erro nao report
        End Try
        MessageBox.Show("TXT Copiado", "Copiado !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
    End Sub
End Class