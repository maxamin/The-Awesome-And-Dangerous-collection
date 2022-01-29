Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Drawing
Imports System.Runtime.CompilerServices
Imports System.Windows.Forms

Public Class script
    Public Code As String
    Public F As Form1
    Public RunAs As String
    Public Sub New()
        Me.RunAs = "vbs"
        Me.Code = ""
        Me.InitializeComponent()
    End Sub

    Private Sub ToolStripStatusLabel1_Click(sender As Object, e As EventArgs) Handles ToolStripStatusLabel1.Click
        Me.Code = Me.TextBox1.Text
        Me.Close()
    End Sub

    Private Sub ToolStripStatusLabel2_Click(sender As Object, e As EventArgs) Handles ToolStripStatusLabel2.Click
        Dim str As String = Interaction.InputBox("Run As :", "", "vbs", -1, -1)
        If (str.Length > 0) Then
            Me.RunAs = str
            Me.ToolStripStatusLabel2.Text = ("RunAs: " & str)
        End If
    End Sub

    Private Sub script_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub
End Class