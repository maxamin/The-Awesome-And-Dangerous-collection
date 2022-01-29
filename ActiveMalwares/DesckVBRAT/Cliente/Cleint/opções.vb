Imports System.IO
Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.Diagnostics
Imports Microsoft.VisualBasic
Imports System.Windows.Forms
Imports System.Windows.Forms.Form
Imports System.ComponentModel
Imports System.Text
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas
Imports System.Windows.Forms.Button
Imports System.Windows.Forms.CheckBox
Imports System.Windows.Forms.TextBox
Imports System.Windows.Forms.ComboBox

'coded Py Pjoao1578
'v6
Public Class opções
#Region "opções"
    Public exe As Object = Application.ExecutablePath 'executavel
    Dim sstartup As String = Application.StartupPath 'local
#End Region

    Private Sub opções_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub opções_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub opções_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try
            'caregar conf ig para da true ou false nas configuraçoes 
            If IO.File.Exists(Application.StartupPath & "/Configs/config.txt") Then
                Me.CheckBox1.Checked = IO.File.ReadAllText(sstartup & "/Configs/config.txt")
            End If
            'caregar config para da true ou false nas configuraçoes 
            If IO.File.Exists(Application.StartupPath & "/Configs/config1.txt") Then
                Me.CheckBox2.Checked = IO.File.ReadAllText(sstartup & "/Configs/config1.txt")
            End If
            'caregar config para da true ou false nas configuraçoes 
            If IO.File.Exists(Application.StartupPath & "/Configs/config2.txt") Then
                Me.CheckBox3.Checked = IO.File.ReadAllText(sstartup & "/Configs/config2.txt")
            End If
            'salvar porta de conexoes
            If IO.File.Exists(Application.StartupPath & "/Configs/config3.txt") Then
                Form1.NumericUpDown1.Value = IO.File.ReadAllText(sstartup & "/Configs/config3.txt")
            End If
            'caregar config para da true ou false nas configuraçoes
            If IO.File.Exists(Application.StartupPath & "/Configs/config4.txt") Then
                Me.CheckBox4.Checked = IO.File.ReadAllText(sstartup & "/Configs/config4.txt")
            End If
            'caregar config para da true ou false nas configuraçoes 
            If IO.File.Exists(Application.StartupPath & "/Configs/config6.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
                CheckBox6.Checked = IO.File.ReadAllText(sstartup & "/Configs/config6.txt")
            End If
            'caregar config para da true ou false nas configuraçoes 
            If IO.File.Exists(Application.StartupPath & "/Configs/config7.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
                Me.CheckBox7.Checked = IO.File.ReadAllText(sstartup & "/Configs/config7.txt")
            End If
            'caregar config para da true ou false nas configuraçoes 
            If IO.File.Exists(Application.StartupPath & "/Configs/config8.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
                Me.CheckBox8.Checked = IO.File.ReadAllText(sstartup & "/Configs/config8.txt")
            End If
            'caregar config para da true ou false nas configuraçoes 
            If IO.File.Exists(Application.StartupPath & "/Configs/config9.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
                Me.ComboBox2.Text = IO.File.ReadAllText(sstartup & "/Configs/config9.txt")
            End If
            'caregar config para da true ou false nas configuraçoes 
            If IO.File.Exists(Application.StartupPath & "/Configs/config10.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
                Me.ComboBox1.Text = IO.File.ReadAllText(sstartup & "/Configs/config10.txt")
            End If
        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub CheckBox2_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox2.CheckedChanged
        'Opacidade [Off / ON]
        Try
            If Me.CheckBox2.Checked = True Then
                Dim texto As String = "true"
                Dim esc_texto As New StreamWriter(sstartup & "/Configs/config1.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
                Me.Opacity = 0.8 '80%
                Form1.Opacity = 0.8 '80%
                Report.Opacity = 0.8 '80%
                TXT.Opacity = 0.8 '80%
                TXT_Editor.Opacity = 0.8 '80%
                TXT_Send.Opacity = 0.8 '80%
                Informaçoes.Opacity = 0.8 '80%
                Aborte.Opacity = 0.8 '80%
                Descktop.Opacity = 0.8 '80%
                Fm.Opacity = 0.8 '80%
                password.Opacity = 0.8 '80%
                Server.Opacity = 0.8 '80%
                Form3.Opacity = 0.8 '80%
                Cmdcomando.Opacity = 0.8 '80%
                Creat_Server_DownloadFile.Opacity = 0.8 '80%
                Updeterdesck.Opacity = 0.8 '80%
                Noip.Opacity = 0.8 '80%
                keylogger_online.Opacity = 0.8 '80%
                Updeterdesck.Opacity = 0.8 '80%
                Reg.Opacity = 0.8 '80%
                Rgv.Opacity = 0.8 '80%
                Emailreport.Opacity = 0.8 '80%
                Port_Teste.Opacity = 0.8 '80%
            Else
                Dim texto As String = "false"
                Dim esc_texto As New StreamWriter(sstartup & "/Configs/config1.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
                Me.Opacity = 100 '100%
                Form1.Opacity = 100 '100%
                Report.Opacity = 100 '100%
                TXT.Opacity = 100 '100%
                TXT_Send.Opacity = 100 '100%
                Informaçoes.Opacity = 100 '100%
                TXT_Editor.Opacity = 100 '100%
                Aborte.Opacity = 100 '100%
                Descktop.Opacity = 100 '100%
                Fm.Opacity = 100 '100%
                password.Opacity = 100 '100%
                Server.Opacity = 100 '100%
                Form3.Opacity = 100 '100%
                Cmdcomando.Opacity = 100 '100%
                Creat_Server_DownloadFile.Opacity = 100 '100%
                Updeterdesck.Opacity = 100 '100%
                Noip.Opacity = 100 '100%
                keylogger_online.Opacity = 100 '100%
                Updeterdesck.Opacity = 100 '100%
                Reg.Opacity = 100 '100%
                Rgv.Opacity = 100 '100%
                Emailreport.Opacity = 100 '100%
                Port_Teste.Opacity = 100 '100%
            End If
        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        'Notificação [Show / Close]
        If Me.CheckBox1.Checked = True Then
            Dim texto As String = "true"
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
        Else
            Dim texto As String = "false"
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
        End If
    End Sub

    Private Sub CheckBox3_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox3.CheckedChanged
        'Som da Notificação [Som / Mute]
        If Me.CheckBox3.Checked = True Then
            Dim texto As String = "true"
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config2.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
        Else
            Dim texto As String = "false"
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config2.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
        End If
    End Sub

    Private Sub CheckBox4_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox4.CheckedChanged
        'PC/User [Show / Hide]
        If Me.CheckBox4.Checked = True Then
            Dim texto As String = "true"
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config4.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
            Form1.Label1.Visible = True
            Form1.PictureBox1.Visible = True
        Else
            Dim texto As String = "false"
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config4.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
            Form1.Label1.Visible = False
            Form1.PictureBox1.Visible = False
        End If
    End Sub

    Private Sub CheckBox5_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox5.CheckedChanged
        'Info Rat [Show / Hide]
        If Me.CheckBox5.Checked = True Then
            Dim texto As String = "true"
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config5.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
        Else
            IO.File.SetAttributes(Application.StartupPath & "/Configs/config5.txt", FileAttributes.Normal)
            Dim texto As String = "false"
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config5.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
        End If
    End Sub

    Private Sub CheckBox6_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox6.CheckedChanged
        'Alto Start Porta [Start / Stop]
        If Me.CheckBox6.Checked = True Then
            Dim texto As String = "true"
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config6.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
        Else
            Dim texto As String = "false"
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config6.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
        End If
    End Sub

    Private Sub CheckBox7_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox7.CheckedChanged
        'Minimized [Off/ON]
        If Me.CheckBox7.Checked = True Then
            Dim texto As String = "true"
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config7.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
        Else
            Dim texto As String = "false"
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config7.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
        End If
    End Sub

    Private Sub CheckBox8_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox8.CheckedChanged
        If Me.CheckBox8.Checked = True Then
            Dim texto As String = "true"
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config8.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
        Else
            Dim texto As String = "false"
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config8.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
            Form1.Timer3.Enabled = False
            Form1.PictureBox6.Visible = False
            Form1.PictureBox6.Enabled = False
        End If
    End Sub

    Private Sub ExitToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ExitToolStripMenuItem.Click
        Try
            Me.Close() 'exit forme
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'restart desckvb rat
        Try
            Me.ShowIcon = False 'icone minimized hide
            Form1.DesckVB.Visible = False 'icone rat hide
            Form1.Minimized.Visible = False 'icone minimized hide
        Catch ex As Exception
        End Try
        Try
            Diagnostics.Process.Start(exe) 'restart
            ProjectData.EndApp() 'finalizar tudo
        Catch ex As Exception 'erro nao report
            ProjectData.SetProjectError(ex)
            Diagnostics.Process.Start(exe) 'restart
            ProjectData.EndApp() 'finalizar tudo
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub CheckToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CheckToolStripMenuItem.Click
        'check al CheckBoxs
        Me.CheckBox1.Checked = True
        Me.CheckBox2.Checked = True
        Me.CheckBox3.Checked = True
        Me.CheckBox4.Checked = True
        Me.CheckBox5.Checked = True
        Me.CheckBox6.Checked = True
        Me.CheckBox7.Checked = True
        Me.CheckBox8.Checked = True
    End Sub

    Private Sub DescheckToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DescheckToolStripMenuItem.Click
        'decheck al CheckBoxs
        Me.CheckBox1.Checked = False
        Me.CheckBox2.Checked = False
        Me.CheckBox3.Checked = False
        Me.CheckBox4.Checked = False
        Me.CheckBox5.Checked = False
        Me.CheckBox6.Checked = False
        Me.CheckBox7.Checked = False
        Me.CheckBox8.Checked = False
    End Sub

    Private Sub ComboBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ComboBox1.SelectedIndexChanged
        Dim a1 As String = True
        If a1 Then
            Dim texto As String = Me.ComboBox1.Text
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config10.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
        Else
            Dim texto As String = Me.ComboBox1.Text
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config10.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
        End If
    End Sub

    Private Sub ComboBox2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ComboBox2.SelectedIndexChanged
        Dim a1 As String = True
        If a1 Then
            Dim texto As String = Me.ComboBox2.Text
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config9.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
        Else
            Dim texto As String = Me.ComboBox2.Text
            Dim esc_texto As New StreamWriter(sstartup & "/Configs/config9.txt")
            esc_texto.Write(texto)
            esc_texto.Close()
        End If
    End Sub
End Class