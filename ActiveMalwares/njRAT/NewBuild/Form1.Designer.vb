<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Descartar substituições de formulário para limpar a lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Exigido pelo Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'OBSERVAÇÃO: O procedimento a seguir é exigido pelo Windows Form Designer
    'Ele pode ser modificado usando o Windows Form Designer.  
    'Não o modifique usando o editor de códigos.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.TXT_NomeVitima = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.TXT_Host = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.ND_Porta = New System.Windows.Forms.NumericUpDown()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.CK_ProtectProcess = New System.Windows.Forms.CheckBox()
        Me.CK_CopyStartUp = New System.Windows.Forms.CheckBox()
        Me.CK_RegistryStartUp = New System.Windows.Forms.CheckBox()
        Me.CK_Copy = New System.Windows.Forms.CheckBox()
        Me.TXT_NomeProcess = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.CB_Diretorio = New System.Windows.Forms.ComboBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.TXT_Mensagem = New System.Windows.Forms.TextBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.TXT_Titulo = New System.Windows.Forms.TextBox()
        Me.CK_Msgbox = New System.Windows.Forms.CheckBox()
        Me.btn_OK = New System.Windows.Forms.Button()
        CType(Me.ND_Porta, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'TXT_NomeVitima
        '
        Me.TXT_NomeVitima.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TXT_NomeVitima.Location = New System.Drawing.Point(27, 37)
        Me.TXT_NomeVitima.Name = "TXT_NomeVitima"
        Me.TXT_NomeVitima.Size = New System.Drawing.Size(292, 22)
        Me.TXT_NomeVitima.TabIndex = 0
        Me.TXT_NomeVitima.Text = "Vitima"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(24, 21)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(83, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Nome (Vitima)"
        '
        'TXT_Host
        '
        Me.TXT_Host.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TXT_Host.Location = New System.Drawing.Point(27, 90)
        Me.TXT_Host.Name = "TXT_Host"
        Me.TXT_Host.Size = New System.Drawing.Size(207, 22)
        Me.TXT_Host.TabIndex = 2
        Me.TXT_Host.Text = "127.0.0.1"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(24, 74)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(31, 13)
        Me.Label2.TabIndex = 3
        Me.Label2.Text = "Host"
        '
        'ND_Porta
        '
        Me.ND_Porta.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ND_Porta.Location = New System.Drawing.Point(240, 90)
        Me.ND_Porta.Maximum = New Decimal(New Integer() {1316134911, 2328, 0, 0})
        Me.ND_Porta.Minimum = New Decimal(New Integer() {1, 0, 0, 0})
        Me.ND_Porta.Name = "ND_Porta"
        Me.ND_Porta.Size = New System.Drawing.Size(79, 22)
        Me.ND_Porta.TabIndex = 4
        Me.ND_Porta.Value = New Decimal(New Integer() {1177, 0, 0, 0})
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(237, 74)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(29, 13)
        Me.Label3.TabIndex = 5
        Me.Label3.Text = "Port"
        '
        'CK_ProtectProcess
        '
        Me.CK_ProtectProcess.AutoSize = True
        Me.CK_ProtectProcess.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.CK_ProtectProcess.Location = New System.Drawing.Point(336, 37)
        Me.CK_ProtectProcess.Name = "CK_ProtectProcess"
        Me.CK_ProtectProcess.Size = New System.Drawing.Size(105, 17)
        Me.CK_ProtectProcess.TabIndex = 6
        Me.CK_ProtectProcess.Text = "Protect Process"
        Me.CK_ProtectProcess.UseVisualStyleBackColor = True
        '
        'CK_CopyStartUp
        '
        Me.CK_CopyStartUp.AutoSize = True
        Me.CK_CopyStartUp.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.CK_CopyStartUp.Location = New System.Drawing.Point(336, 60)
        Me.CK_CopyStartUp.Name = "CK_CopyStartUp"
        Me.CK_CopyStartUp.Size = New System.Drawing.Size(95, 17)
        Me.CK_CopyStartUp.TabIndex = 7
        Me.CK_CopyStartUp.Text = "Copy StartUp"
        Me.CK_CopyStartUp.UseVisualStyleBackColor = True
        '
        'CK_RegistryStartUp
        '
        Me.CK_RegistryStartUp.AutoSize = True
        Me.CK_RegistryStartUp.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.CK_RegistryStartUp.Location = New System.Drawing.Point(336, 83)
        Me.CK_RegistryStartUp.Name = "CK_RegistryStartUp"
        Me.CK_RegistryStartUp.Size = New System.Drawing.Size(110, 17)
        Me.CK_RegistryStartUp.TabIndex = 8
        Me.CK_RegistryStartUp.Text = "Registry StartUp"
        Me.CK_RegistryStartUp.UseVisualStyleBackColor = True
        '
        'CK_Copy
        '
        Me.CK_Copy.AutoSize = True
        Me.CK_Copy.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.CK_Copy.Location = New System.Drawing.Point(266, 122)
        Me.CK_Copy.Name = "CK_Copy"
        Me.CK_Copy.Size = New System.Drawing.Size(53, 17)
        Me.CK_Copy.TabIndex = 10
        Me.CK_Copy.Text = "Copy"
        Me.CK_Copy.UseVisualStyleBackColor = True
        '
        'TXT_NomeProcess
        '
        Me.TXT_NomeProcess.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TXT_NomeProcess.Location = New System.Drawing.Point(27, 142)
        Me.TXT_NomeProcess.Name = "TXT_NomeProcess"
        Me.TXT_NomeProcess.Size = New System.Drawing.Size(292, 22)
        Me.TXT_NomeProcess.TabIndex = 11
        Me.TXT_NomeProcess.Text = "svchost.exe"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(24, 126)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(81, 13)
        Me.Label4.TabIndex = 12
        Me.Label4.Text = "Nome Process"
        '
        'CB_Diretorio
        '
        Me.CB_Diretorio.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.CB_Diretorio.FormattingEnabled = True
        Me.CB_Diretorio.Items.AddRange(New Object() {"TEMP", "Appdata"})
        Me.CB_Diretorio.Location = New System.Drawing.Point(27, 180)
        Me.CB_Diretorio.Name = "CB_Diretorio"
        Me.CB_Diretorio.Size = New System.Drawing.Size(292, 21)
        Me.CB_Diretorio.TabIndex = 13
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(26, 167)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(53, 13)
        Me.Label5.TabIndex = 14
        Me.Label5.Text = "Diretório"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.Location = New System.Drawing.Point(26, 251)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(70, 13)
        Me.Label6.TabIndex = 18
        Me.Label6.Text = "Menssagem"
        '
        'TXT_Mensagem
        '
        Me.TXT_Mensagem.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TXT_Mensagem.Location = New System.Drawing.Point(29, 267)
        Me.TXT_Mensagem.Multiline = True
        Me.TXT_Mensagem.Name = "TXT_Mensagem"
        Me.TXT_Mensagem.Size = New System.Drawing.Size(290, 82)
        Me.TXT_Mensagem.TabIndex = 17
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label7.Location = New System.Drawing.Point(26, 213)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(37, 13)
        Me.Label7.TabIndex = 16
        Me.Label7.Text = "Titulo"
        '
        'TXT_Titulo
        '
        Me.TXT_Titulo.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TXT_Titulo.Location = New System.Drawing.Point(29, 229)
        Me.TXT_Titulo.Name = "TXT_Titulo"
        Me.TXT_Titulo.Size = New System.Drawing.Size(292, 22)
        Me.TXT_Titulo.TabIndex = 15
        '
        'CK_Msgbox
        '
        Me.CK_Msgbox.AutoSize = True
        Me.CK_Msgbox.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.CK_Msgbox.Location = New System.Drawing.Point(252, 206)
        Me.CK_Msgbox.Name = "CK_Msgbox"
        Me.CK_Msgbox.Size = New System.Drawing.Size(69, 17)
        Me.CK_Msgbox.TabIndex = 19
        Me.CK_Msgbox.Text = "MsgBox"
        Me.CK_Msgbox.UseVisualStyleBackColor = True
        '
        'btn_OK
        '
        Me.btn_OK.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn_OK.Location = New System.Drawing.Point(325, 167)
        Me.btn_OK.Name = "btn_OK"
        Me.btn_OK.Size = New System.Drawing.Size(176, 95)
        Me.btn_OK.TabIndex = 20
        Me.btn_OK.Text = "OK"
        Me.btn_OK.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(509, 364)
        Me.Controls.Add(Me.btn_OK)
        Me.Controls.Add(Me.CK_Msgbox)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.TXT_Mensagem)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.TXT_Titulo)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.CB_Diretorio)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.TXT_NomeProcess)
        Me.Controls.Add(Me.CK_Copy)
        Me.Controls.Add(Me.CK_RegistryStartUp)
        Me.Controls.Add(Me.CK_CopyStartUp)
        Me.Controls.Add(Me.CK_ProtectProcess)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.ND_Porta)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.TXT_Host)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.TXT_NomeVitima)
        Me.ForeColor = System.Drawing.Color.Black
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Me.Name = "Form1"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        CType(Me.ND_Porta, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents TXT_NomeVitima As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents TXT_Host As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents ND_Porta As System.Windows.Forms.NumericUpDown
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents CK_ProtectProcess As System.Windows.Forms.CheckBox
    Friend WithEvents CK_CopyStartUp As System.Windows.Forms.CheckBox
    Friend WithEvents CK_RegistryStartUp As System.Windows.Forms.CheckBox
    Friend WithEvents CK_Copy As System.Windows.Forms.CheckBox
    Friend WithEvents TXT_NomeProcess As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents CB_Diretorio As System.Windows.Forms.ComboBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents TXT_Mensagem As System.Windows.Forms.TextBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents TXT_Titulo As System.Windows.Forms.TextBox
    Friend WithEvents CK_Msgbox As System.Windows.Forms.CheckBox
    Friend WithEvents btn_OK As System.Windows.Forms.Button

End Class
