Imports System.Text
Imports System.Net
Imports Microsoft.VisualBasic.CompilerServices
Imports System.ComponentModel
Imports System.IO
Imports System
Imports Microsoft.VisualBasic
Imports System.Windows.Forms
Imports System.Diagnostics
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas


'Coded pjoao1578
'v4
Public Class Noip

    Private Sub CheckBox1_CheckedChanged_1(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged 'email
        'esconder palavas ao digitar por ?
        If Me.CheckBox1.Checked = True Then
            Me.TextBox1.PasswordChar = "?"
        Else
            Me.TextBox1.PasswordChar = String.Empty
        End If
    End Sub

    Private Sub CheckBox2_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox2.CheckedChanged 'password
        'esconder palavas ao digitar por ?
        If Me.CheckBox2.Checked = True Then
            Me.TextBox2.PasswordChar = "?"
        Else
            Me.TextBox2.PasswordChar = String.Empty
        End If
    End Sub

    Private Sub CheckBox3_CheckedChanged_1(sender As Object, e As EventArgs) Handles CheckBox3.CheckedChanged 'host
        'esconder palavas ao digitar por ?
        If Me.CheckBox3.Checked = True Then
            Me.TextBox3.PasswordChar = "?"
        Else
            Me.TextBox3.PasswordChar = String.Empty
        End If
    End Sub

    Private Sub Button1_Click_1(sender As Object, e As EventArgs) Handles Button1.Click 'updeter No-ip + host 
        Try
            Dim wc = New Net.WebClient()
            Dim utf8 = New UTF8Encoding
            Dim page As String = utf8.GetString(wc.DownloadData("http://dynupdate.no-ip.com/dns?username=" & Me.TextBox1.Text & "&password=" & Me.TextBox2.Text & "&hostname=" & Me.TextBox3.Text))
            Dim texter() As String = page.Split(":")

            Me.TextBox4.Text = texter(1)
            If texter(1).Contains("0") Then
                MsgBox("Success - IP address is current, no update performed", MsgBoxStyle.Information)
            End If
            If texter(1).Contains("1") Then
                MsgBox("Success - DNS hostname update successful", MsgBoxStyle.Information)
            End If
            If texter(1).Contains("2") Then
                MsgBox("Error - Hostname supplied does not exist", MsgBoxStyle.Critical)
            End If
            If texter(1).Contains("3") Then
                MsgBox("Error - Invalid username", MsgBoxStyle.Critical)
            End If
            If texter(1).Contains("4") Then
                MsgBox("Error - Invalid password", MsgBoxStyle.Critical)
            End If
            If texter(1).Contains("5") Then
                MsgBox("Error - Too many updates sent. Updates are blocked   until 1 hour passes since last status of 5 returned.", MsgBoxStyle.Critical)
            End If
            If texter(1).Contains("6") Then
                MsgBox("Error - Account disabled due to violation of No-IP   terms of service. Our terms of service can be viewed at   http://www.no-ip.com/legal/tos", MsgBoxStyle.Critical)
            End If
            If texter(1).Contains("7") Then
                MsgBox("Error - Invalid IP. Invalid IP submitted is   improperly formated, is a private LAN RFC 1918 address, or an abuse   blacklisted address.", MsgBoxStyle.Critical)
            End If
            If texter(1).Contains("8") Then
                MsgBox("Error - Disabled / Locked hostname", MsgBoxStyle.Critical)
            End If
            If texter(1).Contains("9") Then
                MsgBox("Host updated is configured as a web redirect and no update was performed.", MsgBoxStyle.Information)
            End If
            If texter(1).Contains("10") Then
                MsgBox("Error - Group supplied does not exist", MsgBoxStyle.Critical)
            End If
            If texter(1).Contains("11") Then
                MsgBox("Success - DNS group update is successful", MsgBoxStyle.Information)
            End If
            If texter(1).Contains("12") Then
                MsgBox("Success - DNS group is current, no update performed.", MsgBoxStyle.Information)
            End If
            If texter(1).Contains("13") Then
                MsgBox("Error - Update client support not available for supplied hostname or group", MsgBoxStyle.Critical)
            End If
            If texter(1).Contains("14") Then
                MsgBox("Error - Hostname supplied does not have offline   settings configured. Returned if sending offline=YES on a host that  does  not have any offline actions configured.", MsgBoxStyle.Critical)
            End If
            If texter(1).Contains("99") Then
                MsgBox("Error - Client disabled. Client should exit and not   perform any more updates without user intervention.", MsgBoxStyle.Critical)
            End If
            If texter(1).Contains("100") Then
                MsgBox("Error - User input error usually returned if missing required request parameters", MsgBoxStyle.Critical)
            End If
        Catch ex As Exception
        End Try
    End Sub

    Private Sub LinparTudoToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles LinparTudoToolStripMenuItem.Click
        'linpar tudo
        Me.TextBox1.Clear() 'linpar
        Me.TextBox2.Clear() 'linpar
        Me.TextBox3.Clear() 'linpar
    End Sub

    Private Sub Noip_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed

    End Sub

    Private Sub Noip_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Form4_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub
End Class