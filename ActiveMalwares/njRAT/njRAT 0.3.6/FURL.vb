Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Drawing
Imports System.Runtime.CompilerServices
Imports System.Windows.Forms
Public Class FURL
    Public IsOK As Boolean

    Public Sub New()
        Me.IsOK = False
        Me.InitializeComponent()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If (((Me.TextBox1.Text.Length > 0) And Me.TextBox1.Text.ToLower.StartsWith("http")) And (Me.TextBox2.TextLength > 0)) Then
            Me.IsOK = True
            Me.Close()
        End If
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Me.Close()
    End Sub

    Private Sub TextBox1_KeyDown(sender As Object, e As KeyEventArgs) Handles TextBox1.KeyDown
        If (e.KeyCode = Keys.Enter) Then
            Me.Button1_Click(RuntimeHelpers.GetObjectValue(sender), e)
        End If
    End Sub

    Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        Try
            Me.TextBox2.Text = Strings.Split(Me.TextBox1.Text, ".", -1, CompareMethod.Binary)((Strings.Split(Me.TextBox1.Text, ".", -1, CompareMethod.Binary).Length - 1))
        Catch exception1 As Exception
            ProjectData.SetProjectError(exception1)
            ProjectData.ClearProjectError()
        End Try
    End Sub
End Class