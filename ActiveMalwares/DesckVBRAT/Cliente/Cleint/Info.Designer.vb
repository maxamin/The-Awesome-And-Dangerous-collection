<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Info
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Info))
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.CopyTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyAllTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SelectCopyTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ExitToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CheckBox1 = New System.Windows.Forms.CheckBox()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer2 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer3 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer4 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer5 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer6 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer7 = New System.Windows.Forms.Timer(Me.components)
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.ToolStripProgressBar1 = New System.Windows.Forms.ToolStripProgressBar()
        Me.Timer8 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer9 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer10 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer11 = New System.Windows.Forms.Timer(Me.components)
        Me.Timer12 = New System.Windows.Forms.Timer(Me.components)
        Me.WaterFX1 = New DesckVB.WaterFX()
        Me.ContextMenuStrip1.SuspendLayout
        Me.StatusStrip1.SuspendLayout
        Me.SuspendLayout
        '
        'TextBox1
        '
        Me.TextBox1.BackColor = System.Drawing.Color.Black
        Me.TextBox1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.TextBox1.ForeColor = System.Drawing.Color.White
        Me.TextBox1.Location = New System.Drawing.Point(12, 182)
        Me.TextBox1.Multiline = true
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.ScrollBars = System.Windows.Forms.ScrollBars.Both
        Me.TextBox1.Size = New System.Drawing.Size(526, 184)
        Me.TextBox1.TabIndex = 0
        Me.TextBox1.WordWrap = false
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.BackColor = System.Drawing.Color.White
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.CopyTXTToolStripMenuItem, Me.ExitToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(153, 70)
        Me.ContextMenuStrip1.Text = "Copy"
        '
        'CopyTXTToolStripMenuItem
        '
        Me.CopyTXTToolStripMenuItem.BackColor = System.Drawing.Color.Black
        Me.CopyTXTToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.CopyAllTXTToolStripMenuItem, Me.SelectCopyTXTToolStripMenuItem})
        Me.CopyTXTToolStripMenuItem.ForeColor = System.Drawing.Color.Red
        Me.CopyTXTToolStripMenuItem.Image = CType(resources.GetObject("CopyTXTToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopyTXTToolStripMenuItem.Name = "CopyTXTToolStripMenuItem"
        Me.CopyTXTToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.CopyTXTToolStripMenuItem.Text = "Copy TXT"
        '
        'CopyAllTXTToolStripMenuItem
        '
        Me.CopyAllTXTToolStripMenuItem.BackColor = System.Drawing.Color.Black
        Me.CopyAllTXTToolStripMenuItem.ForeColor = System.Drawing.Color.Red
        Me.CopyAllTXTToolStripMenuItem.Image = CType(resources.GetObject("CopyAllTXTToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopyAllTXTToolStripMenuItem.Name = "CopyAllTXTToolStripMenuItem"
        Me.CopyAllTXTToolStripMenuItem.Size = New System.Drawing.Size(173, 22)
        Me.CopyAllTXTToolStripMenuItem.Text = "Copy All TXT"
        '
        'SelectCopyTXTToolStripMenuItem
        '
        Me.SelectCopyTXTToolStripMenuItem.BackColor = System.Drawing.Color.Black
        Me.SelectCopyTXTToolStripMenuItem.ForeColor = System.Drawing.Color.Red
        Me.SelectCopyTXTToolStripMenuItem.Image = CType(resources.GetObject("SelectCopyTXTToolStripMenuItem.Image"), System.Drawing.Image)
        Me.SelectCopyTXTToolStripMenuItem.Name = "SelectCopyTXTToolStripMenuItem"
        Me.SelectCopyTXTToolStripMenuItem.Size = New System.Drawing.Size(173, 22)
        Me.SelectCopyTXTToolStripMenuItem.Text = "Selected Copy TXT"
        '
        'ExitToolStripMenuItem
        '
        Me.ExitToolStripMenuItem.BackColor = System.Drawing.Color.Black
        Me.ExitToolStripMenuItem.ForeColor = System.Drawing.Color.Red
        Me.ExitToolStripMenuItem.Image = CType(resources.GetObject("ExitToolStripMenuItem.Image"), System.Drawing.Image)
        Me.ExitToolStripMenuItem.Name = "ExitToolStripMenuItem"
        Me.ExitToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.ExitToolStripMenuItem.Text = "Exit"
        '
        'CheckBox1
        '
        Me.CheckBox1.AutoSize = True
        Me.CheckBox1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.CheckBox1.Location = New System.Drawing.Point(316, 381)
        Me.CheckBox1.Name = "CheckBox1"
        Me.CheckBox1.Size = New System.Drawing.Size(161, 20)
        Me.CheckBox1.TabIndex = 1
        Me.CheckBox1.Text = "Não Mostrar Mais isso"
        Me.CheckBox1.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.BackColor = System.Drawing.Color.Black
        Me.Button1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Button1.Location = New System.Drawing.Point(12, 372)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(101, 36)
        Me.Button1.TabIndex = 2
        Me.Button1.Text = " "
        Me.Button1.UseVisualStyleBackColor = False
        '
        'Timer1
        '
        Me.Timer1.Interval = 2000
        '
        'Timer2
        '
        Me.Timer2.Interval = 2000
        '
        'Timer3
        '
        Me.Timer3.Interval = 2000
        '
        'Timer4
        '
        Me.Timer4.Interval = 2000
        '
        'Timer5
        '
        Me.Timer5.Interval = 2000
        '
        'Timer6
        '
        Me.Timer6.Interval = 2000
        '
        'Timer7
        '
        Me.Timer7.Interval = 2000
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Label1.Location = New System.Drawing.Point(29, 382)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(67, 16)
        Me.Label1.TabIndex = 3
        Me.Label1.Text = "Comtador"
        '
        'Button2
        '
        Me.Button2.BackColor = System.Drawing.Color.Black
        Me.Button2.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Button2.Location = New System.Drawing.Point(494, 379)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(44, 23)
        Me.Button2.TabIndex = 4
        Me.Button2.Text = "Exit"
        Me.Button2.UseVisualStyleBackColor = False
        '
        'StatusStrip1
        '
        Me.StatusStrip1.BackColor = System.Drawing.Color.Black
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripProgressBar1})
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 416)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.StatusStrip1.Size = New System.Drawing.Size(550, 22)
        Me.StatusStrip1.TabIndex = 6
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'ToolStripProgressBar1
        '
        Me.ToolStripProgressBar1.ForeColor = System.Drawing.Color.White
        Me.ToolStripProgressBar1.Name = "ToolStripProgressBar1"
        Me.ToolStripProgressBar1.Size = New System.Drawing.Size(100, 16)
        '
        'Timer8
        '
        Me.Timer8.Interval = 2000
        '
        'Timer9
        '
        Me.Timer9.Interval = 2000
        '
        'Timer10
        '
        Me.Timer10.Interval = 2000
        '
        'Timer11
        '
        Me.Timer11.Interval = 2000
        '
        'Timer12
        '
        Me.Timer12.Interval = 2000
        '
        'WaterFX1
        '
        Me.WaterFX1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.WaterFX1.BackColor = System.Drawing.Color.White
        Me.WaterFX1.ImageBitmap = CType(resources.GetObject("WaterFX1.ImageBitmap"), System.Drawing.Bitmap)
        Me.WaterFX1.Location = New System.Drawing.Point(12, 12)
        Me.WaterFX1.Name = "WaterFX1"
        Me.WaterFX1.Scale = 1
        Me.WaterFX1.Size = New System.Drawing.Size(526, 163)
        Me.WaterFX1.TabIndex = 23
        '
        'Info
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 16.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.BackColor = System.Drawing.Color.Black
        Me.ClientSize = New System.Drawing.Size(550, 438)
        Me.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Controls.Add(Me.WaterFX1)
        Me.Controls.Add(Me.StatusStrip1)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.CheckBox1)
        Me.Controls.Add(Me.TextBox1)
        Me.Cursor = System.Windows.Forms.Cursors.Cross
        Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        Me.ForeColor = System.Drawing.Color.White
        Me.Icon = CType(resources.GetObject("$this.Icon"),System.Drawing.Icon)
        Me.Margin = New System.Windows.Forms.Padding(4)
        Me.MaximizeBox = false
        Me.MinimizeBox = false
        Me.Name = "Info"
        Me.Opacity = 0.8R
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Info DesckVB Rat"
        Me.ContextMenuStrip1.ResumeLayout(false)
        Me.StatusStrip1.ResumeLayout(false)
        Me.StatusStrip1.PerformLayout
        Me.ResumeLayout(false)
        Me.PerformLayout

End Sub

    Friend WithEvents TextBox1 As TextBox
    Friend WithEvents CheckBox1 As CheckBox
    Friend WithEvents Button1 As Button
    Friend WithEvents Timer1 As Timer
    Friend WithEvents Timer2 As Timer
    Friend WithEvents Timer3 As Timer
    Friend WithEvents Timer4 As Timer
    Friend WithEvents Timer5 As Timer
    Friend WithEvents Timer6 As Timer
    Friend WithEvents Timer7 As Timer
    Friend WithEvents Label1 As Label
    Friend WithEvents Button2 As Button
    Friend WithEvents ContextMenuStrip1 As ContextMenuStrip
    Friend WithEvents CopyTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ExitToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents StatusStrip1 As StatusStrip
    Friend WithEvents ToolStripProgressBar1 As ToolStripProgressBar
    Friend WithEvents Timer8 As Timer
    Friend WithEvents Timer9 As Timer
    Friend WithEvents Timer10 As Timer
    Friend WithEvents Timer11 As Timer
    Friend WithEvents Timer12 As Timer
    Friend WithEvents CopyAllTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents SelectCopyTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents WaterFX1 As DesckVB.WaterFX
End Class
