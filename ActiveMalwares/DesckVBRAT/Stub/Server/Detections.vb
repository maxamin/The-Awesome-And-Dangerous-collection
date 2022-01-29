Imports System.IO
Imports System.Environment
Imports System.Windows
Imports System.Windows.Forms
Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports System


Module detection
#Region "todays"
    Declare Sub mouse_event Lib "user32" Alias "mouse_event" (ByVal dwFlags As Integer, ByVal dx As Integer, ByVal dy As Integer, ByVal cButtons As Integer, ByVal dwExtraInfo As Integer)
    Public GetProcesses() As Process 'antivirus anti malware detction
    Public LO As Object = New FileInfo(Application.ExecutablePath) 'executavel
#End Region

    Function getanti() 'chamar o comando getanti para verificar se tem algum antivirus em execusao / antivirus ou anti malware detction
        Dim antivirus As String
        Dim procList() As Process = Process.GetProcesses() 'detectar se tem algum antivirus em execusao 
        Dim i As Integer
        For i = 0 To procList.Length - 1 Step i + 1
            Dim strProcName As String = procList(i).ProcessName
            If strProcName = "pdiface" Then  '01 / Anti Malware detections
                antivirus = "Bit Defender 60 Segundos"
            ElseIf strProcName = "IMFsrv" Then '02
                antivirus = "Iobit Malware"
            ElseIf strProcName = "mbam" Then '03
                antivirus = "Malware Bytes"
            ElseIf strProcName = "saswinlo" Then '04
                antivirus = "SUPERAntiSpyware"
            ElseIf strProcName = "AntiLogger" Then '05
                antivirus = "AntiLogger"
            ElseIf strProcName = "ahnsd" Then '06 / 'Antivirus Detection
                antivirus = "AhnLab-V3"
            ElseIf strProcName = "bdss" Then '07
                antivirus = "BitDefender"
            ElseIf strProcName = "bdv" Then '08
                antivirus = "ByteHero"
            ElseIf strProcName = "clamav" Then '09
                antivirus = "ClamAV"
            ElseIf strProcName = "fpavserver" Then '10
                antivirus = "F-Prot"
            ElseIf strProcName = "fssm32" Then '11
                antivirus = "F-Secure"
            ElseIf strProcName = "avkcl" Then '12
                antivirus = "GData"
            ElseIf strProcName = "engface" Then '13
                antivirus = "Jiangmin"
            ElseIf strProcName = "updaterui" Then '14
                antivirus = "McAfee"
            ElseIf strProcName = "MsMpEng" Then '15
                antivirus = "Microsoft security essentials"
            ElseIf strProcName = "zanda" Then '16
                antivirus = "Norman"
            ElseIf strProcName = "npupdate" Then '17
                antivirus = "nProtect"
            ElseIf strProcName = "inicio" Then '18
                antivirus = "Panda"
            ElseIf strProcName = "sagui" Then '19
                antivirus = "Prevx"
            ElseIf strProcName = "Norman" Then '20
                antivirus = "Sophos"
            ElseIf strProcName = "savservice" Then '21
                antivirus = "Sophos"
            ElseIf strProcName = "spbbcsvc" Then '22
                antivirus = "Symantec"
            ElseIf strProcName = "thd32" Then '23
                antivirus = "TheHacker"
            ElseIf strProcName = "ufseagnt" Then '24
                antivirus = "TrendMicro"
            ElseIf strProcName = "sbamtray" Then '25
                antivirus = "VIPRE"
            ElseIf strProcName = "vrmonsvc" Then '26
                antivirus = "ViRobot"
            ElseIf strProcName = "dllhook" Then '27
                antivirus = "VBA32"
            ElseIf strProcName = "vbcalrt" Then '28
                antivirus = "VirusBuster"
            ElseIf strProcName = "BavSvc" Then '29
                antivirus = "Baidu Antivirus"
            ElseIf strProcName = "Spark" Then '30
                antivirus = "Baidu Security"
            ElseIf strProcName = "MpCmdRun" Then '31
                antivirus = "Windows Defender"
            ElseIf strProcName = "avastui" Then '32
                antivirus = "Avast"
            ElseIf strProcName = "ToolbarUpdater" Then '33
                antivirus = "AVG"
            ElseIf strProcName = "avgui" Then '34
                antivirus = "AVG"
            ElseIf strProcName = "avp" Then '35
                antivirus = "Kaspersky"
            ElseIf strProcName = "egui" Then '36
                antivirus = "NOD32"
            ElseIf strProcName = "QHSafeTray" Then '37
                antivirus = "360 Total security"
            ElseIf strProcName = "avguard" Then '38
                antivirus = "Avira"
            ElseIf strProcName = "avgnt" Then '39
                antivirus = "Avira"
            End If
            Dim iProcID As Integer = procList(i).Id 'ver se tem algum destes nomes em execusao no gerenciador de tarefas 
        Next
        Return antivirus
    End Function
End Module