Imports Microsoft.VisualBasic.CompilerServices
Imports System.Diagnostics
Imports System
Imports System.IO
Imports System.Windows.Forms
Imports Microsoft.VisualBasic
Imports System.ComponentModel
Imports System.Text
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas



'Coded By Pjoao1578
'v3
Public Class Updeterdesck

    Private Sub Updeter_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try
            Me.Label1.Text = "Stop..."
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.ProgressBar1.Value = 0
        Me.Timer1.Stop()
        Me.Timer1.Enabled = False
        Me.Timer2.Stop()
        Me.Timer2.Enabled = False
        Me.Timer3.Stop()
        Me.Timer3.Enabled = False
        Me.Timer4.Stop()
        Me.Timer4.Enabled = False
        Try
            Me.Close() 'exit
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Me.Label1.Text = "Loading..."
        Me.ProgressBar1.Value = 10
        Me.Timer1.Start()
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick 'interval
        Me.ProgressBar1.Value = 30
        Me.Timer2.Start()
        Me.Timer1.Stop()
        Me.Timer1.Enabled = False
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick 'interval
        Me.ProgressBar1.Value = 50
        Me.Timer3.Start()
        Me.Timer2.Stop()
        Me.Timer2.Enabled = False
    End Sub
    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick 'interval 1000
        Me.ProgressBar1.Value = 70
        Me.Timer4.Start()
        Me.Timer3.Stop()
        Me.Timer3.Enabled = False
    End Sub

    Private Sub Timer4_Tick(sender As Object, e As EventArgs) Handles Timer4.Tick
        Me.ProgressBar1.Value = 100
        Call main()
    End Sub

    Sub main()
        Me.Timer4.Stop()
        Me.Timer4.Enabled = False
        Me.Label1.Text = "Completado"
        MessageBox.Show(("Você sera Levado Para Baixa a versão Nova Caso Haja Uma"), "Mensagem", MessageBoxButtons.OK, MessageBoxIcon.Question) 'butao ok
        Diagnostics.Process.Start("https://www.dropbox.com/sh/nvq638iberlzc9u/AADHajQrOqTOJrEiIcTDNijDa?dl=0")
        Try
            Me.Close() 'exit
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Updeterdesck_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        Try
            Me.ProgressBar1.Value = 0
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Updeterdesck_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try
            Me.ProgressBar1.Value = 0
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub
End Class
