Public Class tcp
    Dim ss As String = "tcp"
    Dim yy As String = "||" 'senha yy =  "||"
    Public sock As Integer
    Private Sub tcp_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Form1.s.Send(sock, ss) 'atualizar processos
    End Sub
End Class