<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Descktop
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Descktop))
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Button1 = New System.Windows.Forms.Button()
        Me.CheckBox1 = New System.Windows.Forms.CheckBox()
        Me.CheckBox2 = New System.Windows.Forms.CheckBox()
        Me.C1 = New System.Windows.Forms.ComboBox()
        Me.C2 = New System.Windows.Forms.ComboBox()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.box1 = New System.Windows.Forms.ComboBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.NumericUpDown1 = New System.Windows.Forms.NumericUpDown()
        Me.CheckBox3 = New System.Windows.Forms.CheckBox()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.p1 = New System.Windows.Forms.PictureBox()
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.SetAsToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SendMsgboxTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SendTXTSonidoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.FunçõesToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ChagersToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.HideToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ShowToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.PainelToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem()
        Me.HideToolStripMenuItem3 = New System.Windows.Forms.ToolStripMenuItem()
        Me.ShowToolStripMenuItem3 = New System.Windows.Forms.ToolStripMenuItem()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Timer2 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer3 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer4 = New System.Windows.Forms.Timer(Me.components)
        Me.Panel1.SuspendLayout
        CType(Me.NumericUpDown1,System.ComponentModel.ISupportInitialize).BeginInit
        CType(Me.p1,System.ComponentModel.ISupportInitialize).BeginInit
        Me.ContextMenuStrip1.SuspendLayout
        Me.SuspendLayout
        '
        'Timer1
        '
        Me.Timer1.Enabled = true
        Me.Timer1.Interval = 30
        '
        'Button1
        '
        Me.Button1.BackColor = System.Drawing.Color.Black
        Me.Button1.ForeColor = System.Drawing.Color.White
        Me.Button1.Location = New System.Drawing.Point(3, 3)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 21)
        Me.Button1.TabIndex = 19
        Me.Button1.Text = "Start"
        Me.Button1.UseVisualStyleBackColor = false
        '
        'CheckBox1
        '
        Me.CheckBox1.AutoSize = true
        Me.CheckBox1.Location = New System.Drawing.Point(560, 5)
        Me.CheckBox1.Name = "CheckBox1"
        Me.CheckBox1.Size = New System.Drawing.Size(88, 17)
        Me.CheckBox1.TabIndex = 20
        Me.CheckBox1.Text = "Dividing lines"
        Me.CheckBox1.UseVisualStyleBackColor = true
        '
        'CheckBox2
        '
        Me.CheckBox2.AutoSize = true
        Me.CheckBox2.Location = New System.Drawing.Point(494, 5)
        Me.CheckBox2.Name = "CheckBox2"
        Me.CheckBox2.Size = New System.Drawing.Size(61, 17)
        Me.CheckBox2.TabIndex = 21
        Me.CheckBox2.Text = "Mouse "
        Me.CheckBox2.UseVisualStyleBackColor = true
        '
        'C1
        '
        Me.C1.BackColor = System.Drawing.Color.Black
        Me.C1.ForeColor = System.Drawing.Color.White
        Me.C1.FormattingEnabled = true
        Me.C1.Location = New System.Drawing.Point(248, 3)
        Me.C1.Name = "C1"
        Me.C1.Size = New System.Drawing.Size(121, 21)
        Me.C1.TabIndex = 22
        '
        'C2
        '
        Me.C2.BackColor = System.Drawing.Color.Black
        Me.C2.DisplayMember = "1"
        Me.C2.ForeColor = System.Drawing.Color.White
        Me.C2.FormattingEnabled = true
        Me.C2.Location = New System.Drawing.Point(375, 3)
        Me.C2.Name = "C2"
        Me.C2.Size = New System.Drawing.Size(48, 21)
        Me.C2.TabIndex = 23
        '
        'Panel1
        '
        Me.Panel1.AccessibleRole = System.Windows.Forms.AccessibleRole.None
        Me.Panel1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.Panel1.BackColor = System.Drawing.Color.White
        Me.Panel1.Controls.Add(Me.box1)
        Me.Panel1.Controls.Add(Me.Label2)
        Me.Panel1.Controls.Add(Me.NumericUpDown1)
        Me.Panel1.Controls.Add(Me.CheckBox3)
        Me.Panel1.Controls.Add(Me.Button3)
        Me.Panel1.Controls.Add(Me.Button2)
        Me.Panel1.Controls.Add(Me.Button1)
        Me.Panel1.Controls.Add(Me.CheckBox2)
        Me.Panel1.Controls.Add(Me.C2)
        Me.Panel1.Controls.Add(Me.C1)
        Me.Panel1.Controls.Add(Me.CheckBox1)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Top
        Me.Panel1.ForeColor = System.Drawing.Color.Black
        Me.Panel1.Location = New System.Drawing.Point(0, 0)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(868, 27)
        Me.Panel1.TabIndex = 26
        '
        'box1
        '
        Me.box1.BackColor = System.Drawing.Color.Black
        Me.box1.DisplayMember = "1"
        Me.box1.ForeColor = System.Drawing.Color.White
        Me.box1.FormattingEnabled = true
        Me.box1.Items.AddRange(New Object() {"100", "90", "80", "70", "60", "50", "40", "30", "20", "10"})
        Me.box1.Location = New System.Drawing.Point(429, 3)
        Me.box1.Name = "box1"
        Me.box1.Size = New System.Drawing.Size(59, 21)
        Me.box1.TabIndex = 31
        '
        'Label2
        '
        Me.Label2.AutoSize = true
        Me.Label2.Location = New System.Drawing.Point(756, 6)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(48, 13)
        Me.Label2.TabIndex = 32
        Me.Label2.Text = "Timer -->"
        '
        'NumericUpDown1
        '
        Me.NumericUpDown1.BackColor = System.Drawing.Color.Black
        Me.NumericUpDown1.ForeColor = System.Drawing.Color.White
        Me.NumericUpDown1.Location = New System.Drawing.Point(810, 4)
        Me.NumericUpDown1.Maximum = New Decimal(New Integer() {60000, 0, 0, 0})
        Me.NumericUpDown1.Minimum = New Decimal(New Integer() {1000, 0, 0, 0})
        Me.NumericUpDown1.Name = "NumericUpDown1"
        Me.NumericUpDown1.Size = New System.Drawing.Size(53, 20)
        Me.NumericUpDown1.TabIndex = 31
        Me.NumericUpDown1.Value = New Decimal(New Integer() {1000, 0, 0, 0})
        '
        'CheckBox3
        '
        Me.CheckBox3.AutoSize = true
        Me.CheckBox3.Location = New System.Drawing.Point(654, 4)
        Me.CheckBox3.Name = "CheckBox3"
        Me.CheckBox3.Size = New System.Drawing.Size(108, 17)
        Me.CheckBox3.TabIndex = 28
        Me.CheckBox3.Text = "Alto Save Tela ->"
        Me.CheckBox3.UseVisualStyleBackColor = true
        '
        'Button3
        '
        Me.Button3.BackColor = System.Drawing.Color.Black
        Me.Button3.ForeColor = System.Drawing.Color.White
        Me.Button3.Location = New System.Drawing.Point(165, 3)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(75, 21)
        Me.Button3.TabIndex = 27
        Me.Button3.Text = "Limpar Tela"
        Me.Button3.UseVisualStyleBackColor = false
        '
        'Button2
        '
        Me.Button2.BackColor = System.Drawing.Color.Black
        Me.Button2.ForeColor = System.Drawing.Color.White
        Me.Button2.Location = New System.Drawing.Point(84, 3)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 21)
        Me.Button2.TabIndex = 25
        Me.Button2.Text = "Salvar Tela"
        Me.Button2.UseVisualStyleBackColor = false
        '
        'p1
        '
        Me.p1.BackColor = System.Drawing.Color.Black
        Me.p1.Cursor = System.Windows.Forms.Cursors.Cross
        Me.p1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.p1.Location = New System.Drawing.Point(0, 27)
        Me.p1.Name = "p1"
        Me.p1.Size = New System.Drawing.Size(868, 406)
        Me.p1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.p1.TabIndex = 29
        Me.p1.TabStop = false
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.BackColor = System.Drawing.Color.White
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SendMsgboxTXTToolStripMenuItem, Me.SendTXTSonidoToolStripMenuItem, Me.SetAsToolStripMenuItem, Me.FunçõesToolStripMenuItem, Me.ChagersToolStripMenuItem, Me.PainelToolStripMenuItem1})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(170, 158)
        '
        'SetAsToolStripMenuItem
        '
        Me.SetAsToolStripMenuItem.BackColor = System.Drawing.Color.White
        Me.SetAsToolStripMenuItem.Image = CType(resources.GetObject("SetAsToolStripMenuItem.Image"),System.Drawing.Image)
        Me.SetAsToolStripMenuItem.Name = "SetAsToolStripMenuItem"
        Me.SetAsToolStripMenuItem.Size = New System.Drawing.Size(169, 22)
        Me.SetAsToolStripMenuItem.Text = "Set as wallpaper"
        '
        'SendMsgboxTXTToolStripMenuItem
        '
        Me.SendMsgboxTXTToolStripMenuItem.Image = CType(resources.GetObject("SendMsgboxTXTToolStripMenuItem.Image"),System.Drawing.Image)
        Me.SendMsgboxTXTToolStripMenuItem.Name = "SendMsgboxTXTToolStripMenuItem"
        Me.SendMsgboxTXTToolStripMenuItem.Size = New System.Drawing.Size(169, 22)
        Me.SendMsgboxTXTToolStripMenuItem.Text = "Send Msgbox TXT"
        '
        'SendTXTSonidoToolStripMenuItem
        '
        Me.SendTXTSonidoToolStripMenuItem.BackColor = System.Drawing.Color.White
        Me.SendTXTSonidoToolStripMenuItem.ForeColor = System.Drawing.Color.Black
        Me.SendTXTSonidoToolStripMenuItem.Image = CType(resources.GetObject("SendTXTSonidoToolStripMenuItem.Image"),System.Drawing.Image)
        Me.SendTXTSonidoToolStripMenuItem.Name = "SendTXTSonidoToolStripMenuItem"
        Me.SendTXTSonidoToolStripMenuItem.Size = New System.Drawing.Size(169, 22)
        Me.SendTXTSonidoToolStripMenuItem.Text = "Send TXT Sonido"
        '
        'FunçõesToolStripMenuItem
        '
        Me.FunçõesToolStripMenuItem.Image = CType(resources.GetObject("FunçõesToolStripMenuItem.Image"),System.Drawing.Image)
        Me.FunçõesToolStripMenuItem.Name = "FunçõesToolStripMenuItem"
        Me.FunçõesToolStripMenuItem.Size = New System.Drawing.Size(169, 22)
        Me.FunçõesToolStripMenuItem.Text = "funções"
        '
        'ChagersToolStripMenuItem
        '
        Me.ChagersToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.HideToolStripMenuItem, Me.ShowToolStripMenuItem})
        Me.ChagersToolStripMenuItem.Image = CType(resources.GetObject("ChagersToolStripMenuItem.Image"),System.Drawing.Image)
        Me.ChagersToolStripMenuItem.Name = "ChagersToolStripMenuItem"
        Me.ChagersToolStripMenuItem.Size = New System.Drawing.Size(169, 22)
        Me.ChagersToolStripMenuItem.Text = "Chagers"
        '
        'HideToolStripMenuItem
        '
        Me.HideToolStripMenuItem.Image = CType(resources.GetObject("HideToolStripMenuItem.Image"),System.Drawing.Image)
        Me.HideToolStripMenuItem.Name = "HideToolStripMenuItem"
        Me.HideToolStripMenuItem.Size = New System.Drawing.Size(103, 22)
        Me.HideToolStripMenuItem.Text = "Hide"
        '
        'ShowToolStripMenuItem
        '
        Me.ShowToolStripMenuItem.Image = CType(resources.GetObject("ShowToolStripMenuItem.Image"),System.Drawing.Image)
        Me.ShowToolStripMenuItem.Name = "ShowToolStripMenuItem"
        Me.ShowToolStripMenuItem.Size = New System.Drawing.Size(103, 22)
        Me.ShowToolStripMenuItem.Text = "Show"
        '
        'PainelToolStripMenuItem1
        '
        Me.PainelToolStripMenuItem1.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.HideToolStripMenuItem3, Me.ShowToolStripMenuItem3})
        Me.PainelToolStripMenuItem1.Image = CType(resources.GetObject("PainelToolStripMenuItem1.Image"),System.Drawing.Image)
        Me.PainelToolStripMenuItem1.Name = "PainelToolStripMenuItem1"
        Me.PainelToolStripMenuItem1.Size = New System.Drawing.Size(169, 22)
        Me.PainelToolStripMenuItem1.Text = "Painel"
        '
        'HideToolStripMenuItem3
        '
        Me.HideToolStripMenuItem3.Image = CType(resources.GetObject("HideToolStripMenuItem3.Image"),System.Drawing.Image)
        Me.HideToolStripMenuItem3.Name = "HideToolStripMenuItem3"
        Me.HideToolStripMenuItem3.Size = New System.Drawing.Size(103, 22)
        Me.HideToolStripMenuItem3.Text = "Hide"
        '
        'ShowToolStripMenuItem3
        '
        Me.ShowToolStripMenuItem3.Image = CType(resources.GetObject("ShowToolStripMenuItem3.Image"),System.Drawing.Image)
        Me.ShowToolStripMenuItem3.Name = "ShowToolStripMenuItem3"
        Me.ShowToolStripMenuItem3.Size = New System.Drawing.Size(103, 22)
        Me.ShowToolStripMenuItem3.Text = "Show"
        '
        'Label1
        '
        Me.Label1.AutoSize = true
        Me.Label1.BackColor = System.Drawing.Color.Transparent
        Me.Label1.ForeColor = System.Drawing.Color.White
        Me.Label1.Location = New System.Drawing.Point(0, 27)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(19, 13)
        Me.Label1.TabIndex = 30
        Me.Label1.Text = "-->"
        '
        'Timer2
        '
        Me.Timer2.Interval = 1000
        '
        'Timer3
        '
        '
        'Descktop
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6!, 13!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.Black
        Me.ClientSize = New System.Drawing.Size(868, 433)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.p1)
        Me.Controls.Add(Me.Panel1)
        Me.Cursor = System.Windows.Forms.Cursors.Cross
        Me.ForeColor = System.Drawing.Color.White
        Me.Icon = CType(resources.GetObject("$this.Icon"),System.Drawing.Icon)
        Me.Name = "Descktop"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Remote Desktop"
        Me.Panel1.ResumeLayout(false)
        Me.Panel1.PerformLayout
        CType(Me.NumericUpDown1,System.ComponentModel.ISupportInitialize).EndInit
        CType(Me.p1,System.ComponentModel.ISupportInitialize).EndInit
        Me.ContextMenuStrip1.ResumeLayout(false)
        Me.ResumeLayout(false)
        Me.PerformLayout

End Sub
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents CheckBox1 As System.Windows.Forms.CheckBox
    Friend WithEvents CheckBox2 As System.Windows.Forms.CheckBox
    Friend WithEvents C1 As System.Windows.Forms.ComboBox
    Friend WithEvents C2 As System.Windows.Forms.ComboBox
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents Button2 As Button
    Friend WithEvents Button3 As Button
    Friend WithEvents p1 As PictureBox
    Friend WithEvents ContextMenuStrip1 As ContextMenuStrip
    Friend WithEvents SetAsToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents Label1 As Label
    Friend WithEvents CheckBox3 As CheckBox
    Friend WithEvents Timer2 As Timer
    Friend WithEvents Label2 As Label
    Friend WithEvents NumericUpDown1 As NumericUpDown
    Friend WithEvents Timer3 As Timer
    Friend WithEvents SendMsgboxTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents SendTXTSonidoToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents box1 As ComboBox
    Friend WithEvents ChagersToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ShowToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents HideToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents PainelToolStripMenuItem1 As ToolStripMenuItem
    Friend WithEvents HideToolStripMenuItem3 As ToolStripMenuItem
    Friend WithEvents ShowToolStripMenuItem3 As ToolStripMenuItem
    Friend WithEvents Timer4 As Timer
    Friend WithEvents FunçõesToolStripMenuItem As ToolStripMenuItem
End Class
