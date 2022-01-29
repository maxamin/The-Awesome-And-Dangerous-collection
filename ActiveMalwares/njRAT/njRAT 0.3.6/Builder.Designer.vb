<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Builder
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
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

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.host = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.port = New System.Windows.Forms.NumericUpDown()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.exe = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.dir = New System.Windows.Forms.ComboBox()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.CheckBox1 = New System.Windows.Forms.CheckBox()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.VN = New System.Windows.Forms.TextBox()
        Me.bsod = New System.Windows.Forms.CheckBox()
        CType(Me.port, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'host
        '
        Me.host.Location = New System.Drawing.Point(12, 25)
        Me.host.Name = "host"
        Me.host.Size = New System.Drawing.Size(182, 20)
        Me.host.TabIndex = 0
        Me.host.Text = "127.0.0.1"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(9, 9)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(29, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Host"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(193, 9)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(27, 13)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Port"
        '
        'port
        '
        Me.port.Location = New System.Drawing.Point(196, 25)
        Me.port.Maximum = New Decimal(New Integer() {60000, 0, 0, 0})
        Me.port.Minimum = New Decimal(New Integer() {1, 0, 0, 0})
        Me.port.Name = "port"
        Me.port.Size = New System.Drawing.Size(69, 20)
        Me.port.TabIndex = 3
        Me.port.Value = New Decimal(New Integer() {1177, 0, 0, 0})
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(9, 88)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(52, 13)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "ExeName"
        '
        'exe
        '
        Me.exe.Location = New System.Drawing.Point(12, 104)
        Me.exe.Name = "exe"
        Me.exe.Size = New System.Drawing.Size(253, 20)
        Me.exe.TabIndex = 5
        Me.exe.Text = "Trojan.exe"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(9, 129)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(51, 13)
        Me.Label4.TabIndex = 6
        Me.Label4.Text = "Directory"
        '
        'dir
        '
        Me.dir.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.dir.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.dir.FormattingEnabled = True
        Me.dir.Items.AddRange(New Object() {"%TEMP%", "%AppData%", "%UserProfile%", "%ProgramData%"})
        Me.dir.Location = New System.Drawing.Point(12, 145)
        Me.dir.Name = "dir"
        Me.dir.Size = New System.Drawing.Size(253, 21)
        Me.dir.TabIndex = 7
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(12, 238)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(253, 23)
        Me.Button1.TabIndex = 8
        Me.Button1.Text = "Build"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'CheckBox1
        '
        Me.CheckBox1.AutoSize = True
        Me.CheckBox1.Location = New System.Drawing.Point(12, 182)
        Me.CheckBox1.Name = "CheckBox1"
        Me.CheckBox1.Size = New System.Drawing.Size(47, 17)
        Me.CheckBox1.TabIndex = 9
        Me.CheckBox1.Text = "Icon"
        Me.CheckBox1.UseVisualStyleBackColor = True
        '
        'PictureBox1
        '
        Me.PictureBox1.Location = New System.Drawing.Point(216, 182)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(49, 34)
        Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom
        Me.PictureBox1.TabIndex = 10
        Me.PictureBox1.TabStop = False
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(9, 49)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(66, 13)
        Me.Label5.TabIndex = 11
        Me.Label5.Text = "VicTim Name"
        '
        'VN
        '
        Me.VN.Location = New System.Drawing.Point(12, 65)
        Me.VN.Name = "VN"
        Me.VN.Size = New System.Drawing.Size(253, 20)
        Me.VN.TabIndex = 12
        Me.VN.Text = "HacKed"
        '
        'bsod
        '
        Me.bsod.AutoSize = True
        Me.bsod.Location = New System.Drawing.Point(12, 215)
        Me.bsod.Name = "bsod"
        Me.bsod.Size = New System.Drawing.Size(139, 17)
        Me.bsod.TabIndex = 13
        Me.bsod.Text = "Protect Process [BSOD]"
        Me.bsod.UseVisualStyleBackColor = True
        '
        'Builder
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(276, 266)
        Me.Controls.Add(Me.bsod)
        Me.Controls.Add(Me.VN)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.PictureBox1)
        Me.Controls.Add(Me.CheckBox1)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.dir)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.exe)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.port)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.host)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "Builder"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Builder"
        CType(Me.port, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents host As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents port As System.Windows.Forms.NumericUpDown
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents exe As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents dir As System.Windows.Forms.ComboBox
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents CheckBox1 As System.Windows.Forms.CheckBox
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents VN As System.Windows.Forms.TextBox
    Friend WithEvents bsod As System.Windows.Forms.CheckBox
End Class
