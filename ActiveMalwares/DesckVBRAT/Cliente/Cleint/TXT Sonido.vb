Imports System.ComponentModel
Imports System.Text
Imports Microsoft.VisualBasic.CompilerServices
Imports System.IO
Imports System
Imports Microsoft.VisualBasic
Imports System.Windows.Forms
Imports System.Diagnostics
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas


'coded pjoao1578
'v2
Public Class TXT_Send
#Region "text"
    Public sock As Integer
    Dim yy As String = "||"
#End Region

    Private Sub TXT_Send_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try
            Me.PictureBox1.Image = Me.PictureBox4.Image
            Me.PictureBox1.BackColor = Color.White
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Form1.s.Send(sock, "txttosend" & yy & Me.TextBox1.Text) 'chamar
        MessageBox.Show("O Sonido Foi Reprodozido", "Sonido", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub TXT_Send_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        Try
            Me.TextBox1.Clear() 'limpar
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub TXT_Send_Closing(sender As Object, e As CancelEventArgs) Handles Me.Closing
        Try
            Me.TextBox1.Clear() 'limpar
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Checked = True Then
            Me.Timer1.Interval = Me.NumericUpDown1.Value 'mude interval de timer 1
            Me.Timer1.Start()
            Me.Timer2.Start()
            Me.PictureBox1.Image = Me.PictureBox3.Image
            MessageBox.Show("O Sonido Foi Reprodozido Com o Tempo Escolhido", "Sonido", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
        Else
            Me.Timer1.Stop()
            Me.Timer2.Stop()
            Me.Timer3.Stop()
            Me.Timer4.Stop()
            Me.Timer5.Stop()
            Me.ToolStripProgressBar1.Value = 0 '%
            Me.PictureBox1.Image = PictureBox4.Image
            MessageBox.Show("O Sonido Foi Parado", "Sonido", MessageBoxButtons.OK, MessageBoxIcon.Error) 'mensagem
        End If
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Form1.s.Send(sock, "txttosend" & Form1.yy & Me.TextBox1.Text) 'chamar
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        Me.ToolStripProgressBar1.Value = 30 '%
        Me.Timer3.Start()
        Me.Timer2.Stop()
    End Sub

    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick
        Me.ToolStripProgressBar1.Value = 50 '%
        Me.Timer4.Start()
        Me.Timer3.Stop()
    End Sub

    Private Sub Timer4_Tick(sender As Object, e As EventArgs) Handles Timer4.Tick
        Me.ToolStripProgressBar1.Value = 100 '%
        Me.Timer5.Start()
        Me.Timer4.Stop()
    End Sub

    Private Sub Timer5_Tick(sender As Object, e As EventArgs) Handles Timer5.Tick
        Me.ToolStripProgressBar1.Value = 0 '%
        Me.Timer2.Start()
        Me.Timer5.Stop()
    End Sub
End Class