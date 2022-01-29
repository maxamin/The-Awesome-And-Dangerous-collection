Imports System.ComponentModel
Imports System.Text
Imports Microsoft.VisualBasic.CompilerServices
Imports System.IO
Imports System
Imports Microsoft.VisualBasic
Imports System.Windows.Forms
Imports System.Windows.Forms.Form
Imports System.Diagnostics
Imports System.Threading
Imports System.Drawing.Imaging 'imagem
Imports System.Drawing.Drawing2D 'descktop
Imports System.Drawing 'imagem 
Imports System.Environment
Imports System.Windows
Imports System.Drawing.Bitmap
Imports System.Drawing.Image


'Coded By pjoao1578
'v4
Public Class Report
#Region "report"
    Dim x, y As Integer
#End Region


    Private Sub Report_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        kkk.BackColor = Color.White 'pickturebox = Color branco / pickturebox = bandeira
        Try
            Me.x = Screen.PrimaryScreen.WorkingArea.Width - Me.Width
            Me.y = Screen.PrimaryScreen.WorkingArea.Height
            Me.Location = New Point(Me.x, Me.y)
            Me.TopMost = True
            Me.Timer1.Start() 'start tempo
        Catch ex As Exception 'erro nao report
            Form1.ListBox1.Items.Add("Erro Na Notificação Visual !") 'logs
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Timer1_Tick(ByVal sender As Object, ByVal e As EventArgs) Handles Timer1.Tick 'interval 50
        Try
            If Not Me.y <= Screen.PrimaryScreen.WorkingArea.Height - Me.Height Then
                Me.y -= 6 '6 = subida a 6 segundos
                Me.Location = New Point(Me.x, Me.y)
            Else
                Threading.Thread.Sleep(100) 'sleep 100 = tenpo de notificaçao
                Me.Close()
            End If
        Catch ex As Exception 'erro nao report
            Form1.ListBox1.Items.Add("Erro Na Notificação Visual !") 'logs
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Report_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        Try
            Me.Timer1.Stop()
            Me.Timer1.Enabled = False
        Catch ex As Exception 'erro nao report
            Form1.ListBox1.Items.Add("Erro Na Notificação Visual Ao Fecha !") 'logs
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Report_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try
            Me.Timer1.Stop()
            Me.Timer1.Enabled = False
        Catch ex As Exception 'erro nao report
            Form1.ListBox1.Items.Add("Erro Na Notificação Visual Ao Fecha !") 'logs
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub PictureBox1_Click(sender As Object, e As EventArgs)
        Try
            Me.Timer1.Stop()
            Me.Timer1.Enabled = False
            Me.Close() 'close = fechar forme ao clicar
        Catch ex As Exception 'erro nao report
            Form1.ListBox1.Items.Add("Erro Na Notificação Visual Ao Fecha !") 'logs
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub kkk_SelectedIndexChanged(sender As Object, e As EventArgs) Handles kkk.SelectedIndexChanged
        Try
            Me.Timer1.Stop()
            Me.Timer1.Enabled = False
            Me.Close() 'close = fechar forme ao clicar
        Catch ex As Exception 'erro nao report
            Form1.ListBox1.Items.Add("Erro Na Notificação Visual Ao Fecha !") 'logs
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub PictureBox1_Click_1(sender As Object, e As EventArgs) Handles PictureBox1.Click
        Try
            Me.Timer1.Stop()
            Me.Timer1.Enabled = False
            Me.Close() 'close = fechar forme ao clicar
        Catch ex As Exception 'erro nao report
            Form1.ListBox1.Items.Add("Erro Na Notificação Visual Ao Fecha !") 'logs
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Report_Click(sender As Object, e As EventArgs) Handles Me.Click
        Try
            Me.Timer1.Stop()
            Me.Timer1.Enabled = False
            Me.Close() 'close = fechar forme ao clicar
        Catch ex As Exception 'erro nao report
            Form1.ListBox1.Items.Add("Erro Na Notificação Visual Ao Fecha !") 'logs
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub kkk_Click(sender As Object, e As EventArgs) Handles kkk.Click
        Try
            Me.Timer1.Stop()
            Me.Timer1.Enabled = False
            Me.Close() 'close = fechar forme ao clicar
        Catch ex As Exception 'erro nao report
            Form1.ListBox1.Items.Add("Erro Na Notificação Visual Ao Fecha !") 'logs
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub
End Class

