<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form3
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
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form3))
        Me.ListView1 = New System.Windows.Forms.ListView()
        Me.ColumnHeader1 = CType(New System.Windows.Forms.ColumnHeader(),System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader2 = CType(New System.Windows.Forms.ColumnHeader(),System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader3 = CType(New System.Windows.Forms.ColumnHeader(),System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader4 = CType(New System.Windows.Forms.ColumnHeader(),System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader8 = CType(New System.Windows.Forms.ColumnHeader(),System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader9 = CType(New System.Windows.Forms.ColumnHeader(),System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader10 = CType(New System.Windows.Forms.ColumnHeader(),System.Windows.Forms.ColumnHeader)
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.UpdeterToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ProcessosToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SuspendiToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RestoreProcessoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SuspendiProcessoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.KillProcessoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.NormalToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CmdToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.KillDeleteToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.StartProcessNameToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.StartProcessoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.HideExecutavelToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.NormalExecutavelToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.KillToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RestoreToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.copy = New System.Windows.Forms.ToolStripMenuItem()
        Me.ProcessKillNormalToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyUserNameToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ProcessStartToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyLocalArquivoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.ToolStripProgressBar1 = New System.Windows.Forms.ToolStripProgressBar()
        Me.ToolStripStatusLabel1 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.CheckBox1 = New System.Windows.Forms.CheckBox()
        Me.NumericUpDown1 = New System.Windows.Forms.NumericUpDown()
        Me.Timer2 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer3 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer4 = New System.Windows.Forms.Timer(Me.components)
        Me.PictureBox2 = New System.Windows.Forms.PictureBox()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.PictureBox3 = New System.Windows.Forms.PictureBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.ContextMenuStrip1.SuspendLayout
        Me.StatusStrip1.SuspendLayout
        CType(Me.NumericUpDown1,System.ComponentModel.ISupportInitialize).BeginInit
        CType(Me.PictureBox2,System.ComponentModel.ISupportInitialize).BeginInit
        CType(Me.PictureBox1,System.ComponentModel.ISupportInitialize).BeginInit
        CType(Me.PictureBox3,System.ComponentModel.ISupportInitialize).BeginInit
        Me.SuspendLayout
        '
        'ListView1
        '
        Me.ListView1.BackColor = System.Drawing.Color.Black
        Me.ListView1.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader1, Me.ColumnHeader2, Me.ColumnHeader3, Me.ColumnHeader4, Me.ColumnHeader8, Me.ColumnHeader9, Me.ColumnHeader10})
        Me.ListView1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.ListView1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        Me.ListView1.ForeColor = System.Drawing.Color.White
        Me.ListView1.FullRowSelect = true
        Me.ListView1.GridLines = true
        Me.ListView1.Location = New System.Drawing.Point(0, 1)
        Me.ListView1.Name = "ListView1"
        Me.ListView1.Size = New System.Drawing.Size(666, 502)
        Me.ListView1.SmallImageList = Me.ImageList1
        Me.ListView1.TabIndex = 2
        Me.ListView1.UseCompatibleStateImageBehavior = false
        Me.ListView1.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "Name"
        Me.ColumnHeader1.Width = 87
        '
        'ColumnHeader2
        '
        Me.ColumnHeader2.Text = "User   "
        Me.ColumnHeader2.Width = 50
        '
        'ColumnHeader3
        '
        Me.ColumnHeader3.Text = "ID"
        Me.ColumnHeader3.Width = 65
        '
        'ColumnHeader4
        '
        Me.ColumnHeader4.Text = "Cpu    "
        Me.ColumnHeader4.Width = 52
        '
        'ColumnHeader8
        '
        Me.ColumnHeader8.Text = "Local             "
        Me.ColumnHeader8.Width = 110
        '
        'ColumnHeader9
        '
        Me.ColumnHeader9.Text = "Instal Date             "
        Me.ColumnHeader9.Width = 136
        '
        'ColumnHeader10
        '
        Me.ColumnHeader10.Text = "Activer Windows        "
        Me.ColumnHeader10.Width = 159
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.UpdeterToolStripMenuItem, Me.ProcessosToolStripMenuItem, Me.KillToolStripMenuItem, Me.copy})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(175, 114)
        '
        'UpdeterToolStripMenuItem
        '
        Me.UpdeterToolStripMenuItem.Image = CType(resources.GetObject("UpdeterToolStripMenuItem.Image"),System.Drawing.Image)
        Me.UpdeterToolStripMenuItem.Name = "UpdeterToolStripMenuItem"
        Me.UpdeterToolStripMenuItem.Size = New System.Drawing.Size(174, 22)
        Me.UpdeterToolStripMenuItem.Text = " Updeter Processos"
        '
        'ProcessosToolStripMenuItem
        '
        Me.ProcessosToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SuspendiToolStripMenuItem, Me.KillProcessoToolStripMenuItem, Me.StartProcessNameToolStripMenuItem, Me.StartProcessoToolStripMenuItem})
        Me.ProcessosToolStripMenuItem.Image = CType(resources.GetObject("ProcessosToolStripMenuItem.Image"),System.Drawing.Image)
        Me.ProcessosToolStripMenuItem.Name = "ProcessosToolStripMenuItem"
        Me.ProcessosToolStripMenuItem.Size = New System.Drawing.Size(174, 22)
        Me.ProcessosToolStripMenuItem.Text = "Processos"
        '
        'SuspendiToolStripMenuItem
        '
        Me.SuspendiToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.RestoreProcessoToolStripMenuItem, Me.SuspendiProcessoToolStripMenuItem})
        Me.SuspendiToolStripMenuItem.Image = CType(resources.GetObject("SuspendiToolStripMenuItem.Image"),System.Drawing.Image)
        Me.SuspendiToolStripMenuItem.Name = "SuspendiToolStripMenuItem"
        Me.SuspendiToolStripMenuItem.Size = New System.Drawing.Size(233, 22)
        Me.SuspendiToolStripMenuItem.Text = "Suspendi Processo"
        '
        'RestoreProcessoToolStripMenuItem
        '
        Me.RestoreProcessoToolStripMenuItem.Image = CType(resources.GetObject("RestoreProcessoToolStripMenuItem.Image"),System.Drawing.Image)
        Me.RestoreProcessoToolStripMenuItem.Name = "RestoreProcessoToolStripMenuItem"
        Me.RestoreProcessoToolStripMenuItem.Size = New System.Drawing.Size(172, 22)
        Me.RestoreProcessoToolStripMenuItem.Text = "Restore Processo"
        '
        'SuspendiProcessoToolStripMenuItem
        '
        Me.SuspendiProcessoToolStripMenuItem.Image = CType(resources.GetObject("SuspendiProcessoToolStripMenuItem.Image"),System.Drawing.Image)
        Me.SuspendiProcessoToolStripMenuItem.Name = "SuspendiProcessoToolStripMenuItem"
        Me.SuspendiProcessoToolStripMenuItem.Size = New System.Drawing.Size(172, 22)
        Me.SuspendiProcessoToolStripMenuItem.Text = "Suspendi Processo"
        '
        'KillProcessoToolStripMenuItem
        '
        Me.KillProcessoToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.NormalToolStripMenuItem, Me.CmdToolStripMenuItem, Me.KillDeleteToolStripMenuItem})
        Me.KillProcessoToolStripMenuItem.Image = CType(resources.GetObject("KillProcessoToolStripMenuItem.Image"),System.Drawing.Image)
        Me.KillProcessoToolStripMenuItem.Name = "KillProcessoToolStripMenuItem"
        Me.KillProcessoToolStripMenuItem.Size = New System.Drawing.Size(233, 22)
        Me.KillProcessoToolStripMenuItem.Text = "Kill Processo"
        '
        'NormalToolStripMenuItem
        '
        Me.NormalToolStripMenuItem.Image = CType(resources.GetObject("NormalToolStripMenuItem.Image"),System.Drawing.Image)
        Me.NormalToolStripMenuItem.Name = "NormalToolStripMenuItem"
        Me.NormalToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.NormalToolStripMenuItem.Text = "Normal"
        '
        'CmdToolStripMenuItem
        '
        Me.CmdToolStripMenuItem.Image = CType(resources.GetObject("CmdToolStripMenuItem.Image"),System.Drawing.Image)
        Me.CmdToolStripMenuItem.Name = "CmdToolStripMenuItem"
        Me.CmdToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.CmdToolStripMenuItem.Text = "Cmd"
        '
        'KillDeleteToolStripMenuItem
        '
        Me.KillDeleteToolStripMenuItem.Name = "KillDeleteToolStripMenuItem"
        Me.KillDeleteToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.KillDeleteToolStripMenuItem.Text = " "
        Me.KillDeleteToolStripMenuItem.Visible = false
        '
        'StartProcessNameToolStripMenuItem
        '
        Me.StartProcessNameToolStripMenuItem.Image = CType(resources.GetObject("StartProcessNameToolStripMenuItem.Image"),System.Drawing.Image)
        Me.StartProcessNameToolStripMenuItem.Name = "StartProcessNameToolStripMenuItem"
        Me.StartProcessNameToolStripMenuItem.Size = New System.Drawing.Size(233, 22)
        Me.StartProcessNameToolStripMenuItem.Text = "Start Process Name /Caminho"
        '
        'StartProcessoToolStripMenuItem
        '
        Me.StartProcessoToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.HideExecutavelToolStripMenuItem, Me.NormalExecutavelToolStripMenuItem})
        Me.StartProcessoToolStripMenuItem.Name = "StartProcessoToolStripMenuItem"
        Me.StartProcessoToolStripMenuItem.Size = New System.Drawing.Size(233, 22)
        Me.StartProcessoToolStripMenuItem.Text = " "
        Me.StartProcessoToolStripMenuItem.Visible = false
        '
        'HideExecutavelToolStripMenuItem
        '
        Me.HideExecutavelToolStripMenuItem.Name = "HideExecutavelToolStripMenuItem"
        Me.HideExecutavelToolStripMenuItem.Size = New System.Drawing.Size(77, 22)
        Me.HideExecutavelToolStripMenuItem.Text = " "
        Me.HideExecutavelToolStripMenuItem.Visible = false
        '
        'NormalExecutavelToolStripMenuItem
        '
        Me.NormalExecutavelToolStripMenuItem.Name = "NormalExecutavelToolStripMenuItem"
        Me.NormalExecutavelToolStripMenuItem.Size = New System.Drawing.Size(77, 22)
        Me.NormalExecutavelToolStripMenuItem.Text = " "
        Me.NormalExecutavelToolStripMenuItem.Visible = false
        '
        'KillToolStripMenuItem
        '
        Me.KillToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.RestoreToolStripMenuItem})
        Me.KillToolStripMenuItem.Image = CType(resources.GetObject("KillToolStripMenuItem.Image"),System.Drawing.Image)
        Me.KillToolStripMenuItem.Name = "KillToolStripMenuItem"
        Me.KillToolStripMenuItem.Size = New System.Drawing.Size(174, 22)
        Me.KillToolStripMenuItem.Text = "Explorer"
        '
        'RestoreToolStripMenuItem
        '
        Me.RestoreToolStripMenuItem.Image = CType(resources.GetObject("RestoreToolStripMenuItem.Image"),System.Drawing.Image)
        Me.RestoreToolStripMenuItem.Name = "RestoreToolStripMenuItem"
        Me.RestoreToolStripMenuItem.Size = New System.Drawing.Size(156, 22)
        Me.RestoreToolStripMenuItem.Text = "Restore Process"
        '
        'copy
        '
        Me.copy.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ProcessKillNormalToolStripMenuItem, Me.CopyUserNameToolStripMenuItem, Me.ProcessStartToolStripMenuItem1, Me.CopyLocalArquivoToolStripMenuItem})
        Me.copy.Image = CType(resources.GetObject("copy.Image"),System.Drawing.Image)
        Me.copy.Name = "copy"
        Me.copy.Size = New System.Drawing.Size(174, 22)
        Me.copy.Text = "Copy Names"
        '
        'ProcessKillNormalToolStripMenuItem
        '
        Me.ProcessKillNormalToolStripMenuItem.Image = CType(resources.GetObject("ProcessKillNormalToolStripMenuItem.Image"),System.Drawing.Image)
        Me.ProcessKillNormalToolStripMenuItem.Name = "ProcessKillNormalToolStripMenuItem"
        Me.ProcessKillNormalToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.ProcessKillNormalToolStripMenuItem.Text = "Copy ID"
        '
        'CopyUserNameToolStripMenuItem
        '
        Me.CopyUserNameToolStripMenuItem.Image = CType(resources.GetObject("CopyUserNameToolStripMenuItem.Image"),System.Drawing.Image)
        Me.CopyUserNameToolStripMenuItem.Name = "CopyUserNameToolStripMenuItem"
        Me.CopyUserNameToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.CopyUserNameToolStripMenuItem.Text = "Copy User Name"
        '
        'ProcessStartToolStripMenuItem1
        '
        Me.ProcessStartToolStripMenuItem1.Image = CType(resources.GetObject("ProcessStartToolStripMenuItem1.Image"),System.Drawing.Image)
        Me.ProcessStartToolStripMenuItem1.Name = "ProcessStartToolStripMenuItem1"
        Me.ProcessStartToolStripMenuItem1.Size = New System.Drawing.Size(180, 22)
        Me.ProcessStartToolStripMenuItem1.Text = "Copy Name Process"
        '
        'CopyLocalArquivoToolStripMenuItem
        '
        Me.CopyLocalArquivoToolStripMenuItem.Image = CType(resources.GetObject("CopyLocalArquivoToolStripMenuItem.Image"),System.Drawing.Image)
        Me.CopyLocalArquivoToolStripMenuItem.Name = "CopyLocalArquivoToolStripMenuItem"
        Me.CopyLocalArquivoToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.CopyLocalArquivoToolStripMenuItem.Text = "Copy Local Arquivo"
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"),System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "config.png")
        '
        'StatusStrip1
        '
        Me.StatusStrip1.BackColor = System.Drawing.Color.White
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripProgressBar1, Me.ToolStripStatusLabel1})
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 506)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.Size = New System.Drawing.Size(664, 22)
        Me.StatusStrip1.TabIndex = 3
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'ToolStripProgressBar1
        '
        Me.ToolStripProgressBar1.ForeColor = System.Drawing.Color.Lime
        Me.ToolStripProgressBar1.Name = "ToolStripProgressBar1"
        Me.ToolStripProgressBar1.Size = New System.Drawing.Size(100, 16)
        '
        'ToolStripStatusLabel1
        '
        Me.ToolStripStatusLabel1.ActiveLinkColor = System.Drawing.Color.Black
        Me.ToolStripStatusLabel1.ForeColor = System.Drawing.Color.Black
        Me.ToolStripStatusLabel1.LinkColor = System.Drawing.Color.Black
        Me.ToolStripStatusLabel1.Name = "ToolStripStatusLabel1"
        Me.ToolStripStatusLabel1.Size = New System.Drawing.Size(59, 17)
        Me.ToolStripStatusLabel1.Text = "Timer -->"
        Me.ToolStripStatusLabel1.VisitedLinkColor = System.Drawing.Color.Black
        '
        'Timer1
        '
        Me.Timer1.Interval = 1000
        '
        'CheckBox1
        '
        Me.CheckBox1.AutoSize = true
        Me.CheckBox1.BackColor = System.Drawing.Color.White
        Me.CheckBox1.ForeColor = System.Drawing.Color.Black
        Me.CheckBox1.Location = New System.Drawing.Point(238, 509)
        Me.CheckBox1.Name = "CheckBox1"
        Me.CheckBox1.Size = New System.Drawing.Size(126, 17)
        Me.CheckBox1.TabIndex = 4
        Me.CheckBox1.Text = "Alto Updeter Process"
        Me.CheckBox1.UseVisualStyleBackColor = false
        '
        'NumericUpDown1
        '
        Me.NumericUpDown1.BackColor = System.Drawing.Color.Black
        Me.NumericUpDown1.ForeColor = System.Drawing.Color.White
        Me.NumericUpDown1.Location = New System.Drawing.Point(170, 508)
        Me.NumericUpDown1.Maximum = New Decimal(New Integer() {99999, 0, 0, 0})
        Me.NumericUpDown1.Minimum = New Decimal(New Integer() {6000, 0, 0, 0})
        Me.NumericUpDown1.Name = "NumericUpDown1"
        Me.NumericUpDown1.Size = New System.Drawing.Size(62, 20)
        Me.NumericUpDown1.TabIndex = 5
        Me.NumericUpDown1.Value = New Decimal(New Integer() {6000, 0, 0, 0})
        '
        'Timer2
        '
        Me.Timer2.Interval = 400
        '
        'Timer3
        '
        Me.Timer3.Interval = 450
        '
        'Timer4
        '
        Me.Timer4.Interval = 500
        '
        'PictureBox2
        '
        Me.PictureBox2.BackColor = System.Drawing.Color.White
        Me.PictureBox2.Image = CType(resources.GetObject("PictureBox2.Image"),System.Drawing.Image)
        Me.PictureBox2.Location = New System.Drawing.Point(441, 453)
        Me.PictureBox2.Name = "PictureBox2"
        Me.PictureBox2.Size = New System.Drawing.Size(26, 22)
        Me.PictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.CenterImage
        Me.PictureBox2.TabIndex = 1000011
        Me.PictureBox2.TabStop = false
        Me.PictureBox2.Visible = false
        '
        'PictureBox1
        '
        Me.PictureBox1.BackColor = System.Drawing.Color.White
        Me.PictureBox1.Enabled = false
        Me.PictureBox1.Image = CType(resources.GetObject("PictureBox1.Image"),System.Drawing.Image)
        Me.PictureBox1.Location = New System.Drawing.Point(441, 481)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(26, 22)
        Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.CenterImage
        Me.PictureBox1.TabIndex = 1000012
        Me.PictureBox1.TabStop = false
        Me.PictureBox1.Visible = false
        '
        'PictureBox3
        '
        Me.PictureBox3.BackColor = System.Drawing.Color.Black
        Me.PictureBox3.Location = New System.Drawing.Point(370, 506)
        Me.PictureBox3.Name = "PictureBox3"
        Me.PictureBox3.Size = New System.Drawing.Size(26, 22)
        Me.PictureBox3.SizeMode = System.Windows.Forms.PictureBoxSizeMode.CenterImage
        Me.PictureBox3.TabIndex = 1000013
        Me.PictureBox3.TabStop = false
        '
        'Label1
        '
        Me.Label1.AutoSize = true
        Me.Label1.BackColor = System.Drawing.Color.White
        Me.Label1.ForeColor = System.Drawing.Color.Black
        Me.Label1.Location = New System.Drawing.Point(413, 510)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(56, 13)
        Me.Label1.TabIndex = 1000014
        Me.Label1.Text = "Processos"
        '
        'Form3
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6!, 13!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.BackColor = System.Drawing.Color.Black
        Me.ClientSize = New System.Drawing.Size(664, 528)
        Me.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.PictureBox3)
        Me.Controls.Add(Me.PictureBox1)
        Me.Controls.Add(Me.PictureBox2)
        Me.Controls.Add(Me.NumericUpDown1)
        Me.Controls.Add(Me.CheckBox1)
        Me.Controls.Add(Me.StatusStrip1)
        Me.Controls.Add(Me.ListView1)
        Me.Cursor = System.Windows.Forms.Cursors.Cross
        Me.ForeColor = System.Drawing.Color.White
        Me.Icon = CType(resources.GetObject("$this.Icon"),System.Drawing.Icon)
        Me.Name = "Form3"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Gerenciador De Tarefas"
        Me.ContextMenuStrip1.ResumeLayout(false)
        Me.StatusStrip1.ResumeLayout(false)
        Me.StatusStrip1.PerformLayout
        CType(Me.NumericUpDown1,System.ComponentModel.ISupportInitialize).EndInit
        CType(Me.PictureBox2,System.ComponentModel.ISupportInitialize).EndInit
        CType(Me.PictureBox1,System.ComponentModel.ISupportInitialize).EndInit
        CType(Me.PictureBox3,System.ComponentModel.ISupportInitialize).EndInit
        Me.ResumeLayout(false)
        Me.PerformLayout

End Sub
    Friend WithEvents ListView1 As System.Windows.Forms.ListView
    Friend WithEvents ColumnHeader1 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ContextMenuStrip1 As ContextMenuStrip
    Friend WithEvents KillToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents UpdeterToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ProcessosToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents SuspendiToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents RestoreProcessoToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents KillProcessoToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents SuspendiProcessoToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents NormalToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents StartProcessoToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents HideExecutavelToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents NormalExecutavelToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CmdToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents RestoreToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents copy As ToolStripMenuItem
    Friend WithEvents ProcessStartToolStripMenuItem1 As ToolStripMenuItem
    Friend WithEvents ProcessKillNormalToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents StartProcessNameToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents StatusStrip1 As StatusStrip
    Friend WithEvents ColumnHeader2 As ColumnHeader
    Friend WithEvents ColumnHeader3 As ColumnHeader
    Friend WithEvents ColumnHeader4 As ColumnHeader
    Friend WithEvents KillDeleteToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ToolStripProgressBar1 As ToolStripProgressBar
    Friend WithEvents Timer1 As Timer
    Friend WithEvents CheckBox1 As CheckBox
    Friend WithEvents NumericUpDown1 As NumericUpDown
    Friend WithEvents ToolStripStatusLabel1 As ToolStripStatusLabel
    Friend WithEvents Timer2 As Timer
    Friend WithEvents Timer3 As Timer
    Friend WithEvents Timer4 As Timer
    Friend WithEvents PictureBox2 As PictureBox
    Friend WithEvents PictureBox1 As PictureBox
    Friend WithEvents PictureBox3 As PictureBox
    Friend WithEvents CopyUserNameToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ColumnHeader8 As ColumnHeader
    Friend WithEvents ColumnHeader9 As ColumnHeader
    Friend WithEvents ColumnHeader10 As ColumnHeader
    Friend WithEvents ImageList1 As ImageList
    Friend WithEvents Label1 As Label
    Friend WithEvents CopyLocalArquivoToolStripMenuItem As ToolStripMenuItem
End Class
