Public Class Form7
    Public sock As Integer



    Private Sub KillToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles KillToolStripMenuItem.Click
        Dim allprocess As String = ""
        For Each item As ListViewItem In ListView1.SelectedItems
            allprocess += (item.Text & "ProcessSplit")
        Next
        Form1.s.Send(sock, "KillProcess" & Form1.yy & allprocess)

        ListView1.Items.Clear()
        Form1.s.Send(sock, "GetProcesses")
    End Sub

    Private Sub RefreshToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RefreshToolStripMenuItem.Click
        ListView1.Items.Clear()
        Form1.s.Send(sock, "GetProcesses")
    End Sub

    Private Sub Form7_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        ListView1.Items.Clear()
        Form1.s.Send(sock, "GetProcesses")
    End Sub

    Private Sub SdToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SdToolStripMenuItem.Click
        Dim allprocess As String = ""
        For Each item As ListViewItem In ListView1.SelectedItems
            allprocess += (item.Text & "ProcessSplit")
        Next
        Form1.s.Send(sock, "SProcess" & Form1.yy & allprocess)
    End Sub
End Class