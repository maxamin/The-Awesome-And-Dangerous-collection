Imports System.ComponentModel
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas
Imports System
Imports System.IO
Imports System.Windows.Forms
Imports System.Windows.Forms.Form
Imports System.Diagnostics
Imports Microsoft.Win32
Imports Microsoft.VisualBasic
Imports System.Windows.Forms.Label
Imports System.Windows.Forms.TextBox


'Coded Py Pjoao1578
'Contador de 50% a 100% e clea
'cmd v3
Public Class Cmdcomando
    Public sock As Integer
    Dim yy As String = "||" 'yy = "||" = senha 

    Private Sub StartComandoToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles StartComandoToolStripMenuItem.Click
        Try
            Dim name As String = Me.TextBox1.Text
            If name = "" Then
            Else
                For Each x As ListViewItem In Form1.l1.SelectedItems
                    Me.Timer1.Start() 'progressbar volue 
                    Form1.s.Send(x.ToolTipText, "cmd" & yy & name)
                Next
            End If
        Catch ex As Exception 'erro nao report
        End Try
        MessageBox.Show("O Codigo Sera Enviado a Maquina", "Codigo", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
        Me.TextBox1.Clear() 'limpar textbox
    End Sub

    Private Sub ToolStripStatusLabel1_Click(sender As Object, e As EventArgs) Handles ToolStripStatusLabel1.Click
        Try
            Dim name As String = TextBox1.Text
            If name = "" Then
            Else
                For Each x As ListViewItem In Form1.l1.SelectedItems
                    Me.Timer1.Start() 'progressbar volue 
                    Form1.s.Send(x.ToolTipText, "cmd" & yy & name)
                Next
            End If
        Catch ex As Exception 'erro nao report
        End Try
        MessageBox.Show("O Codigo Sera Enviado a Maquina", "Codigo", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
        Me.Timer4.Stop()
        Me.Timer1.Stop()
        Me.Timer2.Stop()
        Me.Timer3.Stop()
        Me.TextBox1.Clear() 'limpar textbox
        Me.ToolStripProgressBar1.Value = 0 '%
    End Sub

    Private Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        If Me.CheckBox1.Checked = True Then
            Me.Timer4.Start()
            Me.Timer4.Interval = Me.NumericUpDown1.Value 'muder interval de timer 4
            Me.Timer1.Start() 'progressbar volue 
            Me.PictureBox1.Image = Me.PictureBox3.Image
            MessageBox.Show("O Codigo Sera Enviado a Maquina", "Codigo", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
        Else
            Me.Timer4.Stop()
            Me.Timer1.Stop()
            Me.Timer2.Stop()
            Me.Timer3.Stop()
            Me.ToolStripProgressBar1.Value = 0 '%
            Me.PictureBox1.Image = Me.PictureBox4.Image
            MessageBox.Show(" O Auto Start Foi Parado o codigo Não Sera Mais Enviado" & vbNewLine & "De tenpo Em Tenpo Para a Maquina", "Parado", MessageBoxButtons.OK, MessageBoxIcon.Error) 'mensagem
        End If
    End Sub

    Private Sub ExitToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ExitToolStripMenuItem.Click
        Me.TextBox1.Clear() 'limpar textbox
        Me.Close() 'exit forme
    End Sub

    Private Sub LimparCmdToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles LimparCmdToolStripMenuItem.Click
        Me.Timer1.Start() 'progressbar volue 
        Me.TextBox1.Clear() 'limpar textbox
    End Sub

    Private Sub Cmdcomando_Closed(sender As Object, e As EventArgs) Handles Me.Closed
        Me.TextBox1.Clear() 'limpar textbox
    End Sub

    Private Sub Cmdcomando_Closing(sender As Object, e As CancelEventArgs) Handles Me.Closing
        Me.TextBox1.Clear() 'limpar textbox
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Me.ToolStripProgressBar1.Value = 50 '%
        Me.Timer2.Start()
        Me.Timer1.Stop()
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        Me.ToolStripProgressBar1.Value = 100 '%
        Me.Timer3.Start()
        Me.Timer2.Stop()
    End Sub

    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick
        Me.ToolStripProgressBar1.Value = 0 '%
        Me.Timer3.Stop()
        Me.Timer1.Start()
    End Sub

    Private Sub Timer4_Tick(sender As Object, e As EventArgs) Handles Timer4.Tick 'interval 6000
        Try
            Dim name As String = Me.TextBox1.Text
            If name = "" Then
            Else
                For Each x As ListViewItem In Form1.l1.SelectedItems
                    Form1.s.Send(x.ToolTipText, "cmd" & yy & name)
                Next
            End If
        Catch ex As Exception 'erro nao report
        End Try
    End Sub

    Private Sub Cmdcomando_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.PictureBox1.Image = Me.PictureBox4.Image
        Me.PictureBox1.BackColor = Color.White
    End Sub
End Class

