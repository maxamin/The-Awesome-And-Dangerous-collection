Imports System.Diagnostics
Imports System
Imports System.IO
Imports System.Windows.Forms
Imports System.Text
Imports System.Net
Imports Microsoft.VisualBasic.CompilerServices
Imports System.Windows.Forms.Form
Imports System.Windows.Forms.MessageBox
Imports System.Windows.Forms.Label
Imports System.Windows.Forms.TextBox
Imports System.Windows.Forms.PictureBox
Imports System.Windows.Forms.LinkLabel
Imports System.Windows.Forms.Button


'coded Py Pjoao1578
'v3
Public Class Aborte

    Private Sub Aborte_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Aborte_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Form5_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub LinkLabel3_LinkClicked(sender As Object, e As LinkLabelLinkClickedEventArgs) Handles LinkLabel3.LinkClicked
        Try
            Diagnostics.Process.Start("http://pjoao1578.blogspot.com.br/") 'start URL
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            MessageBox.Show("Erro", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Diagnostics.Process.Start("http://pjoao1578.blogspot.com.br/") 'start URL
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Emailreport.Show() 'report erros 
            Me.Close()
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Emailreport.Show() 'report erros 
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub
End Class