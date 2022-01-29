Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Drawing
Imports System.Runtime.CompilerServices
Imports System.Windows.Forms
Imports njRAT_0._3._6.njRAT

Public Class Logs
    Public Sub Append(ByVal T As String)
        If (Me.Lgs.TextLength > &H9C40) Then
            Try
                Me.Lgs.Text = Me.Lgs.Text.Remove(0, &H4E20)
            Catch exception1 As Exception
                ProjectData.SetProjectError(exception1)
                ProjectData.ClearProjectError()
            End Try
        End If
        Me.Lgs.AppendText((T & ChrW(13) & ChrW(10)))
        Me.Lgs.SelectionStart = (Me.Lgs.TextLength - 1)
        Me.Lgs.ScrollToCaret()
    End Sub

    Private Sub Label4_Click(sender As Object, e As EventArgs) Handles Label4.Click
        ind.SNT = 0
        ind.RC = 0
    End Sub

    Private Sub Label6_Click(sender As Object, e As EventArgs) Handles Label6.Click
        ind.SNT = 0
        ind.RC = 0
    End Sub

    Private Sub Logs_Load(sender As Object, e As EventArgs) Handles Me.Load
        Control.CheckForIllegalCrossThreadCalls = False
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Me.Timer1.Enabled = False
        If (ind.LG.Count > 0) Then
            Me.Append(ind.LG.Item(0))
            ind.LG.RemoveAt(0)
        End If
        Me.cn.Text = Conversions.ToString(ind.W.Online.Count)
        Me.snt.Text = FN.siz(Conversions.ToString(ind.SNT))
        Me.rc.Text = FN.siz(Conversions.ToString(ind.RC))
        ind.F.Text = String.Concat(New String() {"[ ", Conversions.ToString(ind.F.port), " ] ", ind.vr, " Online[ ", Conversions.ToString(ind.F.L1.Items.Count), " ]"})
        Me.Timer1.Enabled = True
    End Sub
End Class
