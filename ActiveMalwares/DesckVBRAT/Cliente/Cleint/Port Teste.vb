Imports System.Net.Sockets
Imports System.Net
Imports System.Net.Dns
Imports System.Threading
Imports System
Imports System.IO
Imports System.Windows.Forms.Form
Imports System.Windows.Forms
Imports System.Text
Imports System.Net.WebClient
Imports Microsoft.VisualBasic.CompilerServices

'v2.0
'coded pjoao1578
Public Class Port_Teste

    Private Sub Port_Teste_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Port_Teste_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try

        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Port_Teste_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try
            Me.PictureBox2.BackColor = Color.Black
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.TextBox1.Clear()
        'TCP Port
        If RadioButton2.Checked = True Then
            Try
                Dim Hostname As String = Me.TextBox2.Text
                Dim Port As Integer = Me.NumericUpDown1.Value
                Dim PortOpen As Boolean = PortTCP(Hostname, Port)

                If (PortOpen) Then
                    Me.TextBox1.Text = "Porta Aberta"
                    Me.PictureBox2.BackColor = Color.Black
                    Me.PictureBox2.Image = Me.PictureBox3.Image
                Else
                    Me.TextBox1.Text = "Porta Fechada"
                    Me.PictureBox2.BackColor = Color.Black
                    Me.PictureBox2.Image = Me.PictureBox4.Image
                End If
            Catch ex As Exception
                Form1.ListBox1.Items.Add("Erro Ao Testar A Porta !")
                MsgBox("Erro !", MsgBoxStyle.Information)
                ProjectData.SetProjectError(ex)
                ProjectData.ClearProjectError()
            End Try
        End If

        'UPD Port
        If RadioButton1.Checked = True Then
            Try
                Dim Hostname As String = Me.TextBox2.Text
                Dim Port As Integer = Me.NumericUpDown1.Value
                Dim PortOpen As Boolean = PortUDP(Hostname, Port)

                If (PortOpen) Then
                    Me.TextBox1.Text = "Porta Aberta"
                    Me.PictureBox2.BackColor = Color.Black
                    Me.PictureBox2.Image = Me.PictureBox3.Image
                Else
                    Me.TextBox1.Text = "Porta Fechada"
                    Me.PictureBox2.BackColor = Color.Black
                    Me.PictureBox2.Image = Me.PictureBox4.Image
                End If
            Catch ex As Exception
                Form1.ListBox1.Items.Add("Erro Ao Testar A Porta !")
                MsgBox("Erro !", MsgBoxStyle.Information)
                ProjectData.SetProjectError(ex)
                ProjectData.ClearProjectError()
            End Try
        End If
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        'get IPS
        'IP V4
        If RadioButton3.Checked = True Then
            Dim iphi As IPHostEntry = Dns.GetHostEntry(Dns.GetHostName) 'pegar ip da lan
            Dim a7 As String = ""
            Try
                For I As Integer = 0 To iphi.AddressList.Length - 8 'numero de ip de lan 
                    a7 &= iphi.AddressList.GetValue(6).ToString() & vbNewLine
                    Me.TextBox2.Text = a7.ToString
                Next
            Catch ex As Exception
                Form1.ListBox1.Items.Add("Erro Ao Testar A Porta IP V4 !")
                MsgBox("Erro !", MsgBoxStyle.Information)
                ProjectData.SetProjectError(ex)
                ProjectData.ClearProjectError()
            End Try
        End If

        'IP Manual
        If RadioButton5.Checked = True Then
            Me.TextBox2.Clear()
        Else
            'nada
        End If
    End Sub

    Private Sub RadioButton5_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton5.CheckedChanged
        'IP Manual
        If RadioButton5.Checked = True Then
            Me.TextBox2.Clear()
        Else
            'nada
        End If
    End Sub

    Private Function PortTCP(ByVal Host As String, ByVal PortNumber As Integer) As Boolean
        Dim Client As TcpClient = Nothing 'TCP
        Try
            Client = New TcpClient(Host, PortNumber)
            Return True
        Catch ex As SocketException
            Return False
        Finally
            If Not Client Is Nothing Then
                Client.Close()
            End If
        End Try
    End Function

    Private Function PortUDP(ByVal Host As String, ByVal PortNumber As Integer) As Boolean
        Dim Client As UdpClient = Nothing 'UDP
        Try
            Client = New UdpClient(Host, PortNumber)
            Return True
        Catch ex As SocketException
            Return False
        Finally
            If Not Client Is Nothing Then
                Client.Close()
            End If
        End Try
    End Function
End Class