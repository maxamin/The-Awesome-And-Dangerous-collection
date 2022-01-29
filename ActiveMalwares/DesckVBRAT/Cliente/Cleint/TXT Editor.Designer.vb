<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class TXT_Editor
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(TXT_Editor))
        Me.ToolStrip1 = New System.Windows.Forms.ToolStrip()
        Me.ToolStripDropDownButton1 = New System.Windows.Forms.ToolStripDropDownButton()
        Me.SaveTextoEmTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SaveTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ExitToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.CopyTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopySelectedTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyTXTAllToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'ToolStrip1
        '
        Me.ToolStrip1.BackColor = System.Drawing.Color.White
        Me.ToolStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripDropDownButton1})
        Me.ToolStrip1.Location = New System.Drawing.Point(0, 0)
        Me.ToolStrip1.Name = "ToolStrip1"
        Me.ToolStrip1.Size = New System.Drawing.Size(385, 25)
        Me.ToolStrip1.TabIndex = 0
        Me.ToolStrip1.Text = "ToolStrip1"
        '
        'ToolStripDropDownButton1
        '
        Me.ToolStripDropDownButton1.BackColor = System.Drawing.Color.White
        Me.ToolStripDropDownButton1.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.ToolStripDropDownButton1.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SaveTextoEmTXTToolStripMenuItem, Me.CopyTXTToolStripMenuItem, Me.SaveTXTToolStripMenuItem, Me.ExitToolStripMenuItem})
        Me.ToolStripDropDownButton1.ForeColor = System.Drawing.Color.Black
        Me.ToolStripDropDownButton1.Image = CType(resources.GetObject("ToolStripDropDownButton1.Image"), System.Drawing.Image)
        Me.ToolStripDropDownButton1.ImageTransparentColor = System.Drawing.Color.White
        Me.ToolStripDropDownButton1.Name = "ToolStripDropDownButton1"
        Me.ToolStripDropDownButton1.Size = New System.Drawing.Size(29, 22)
        Me.ToolStripDropDownButton1.Text = "ToolStripDropDownButton1"
        '
        'SaveTextoEmTXTToolStripMenuItem
        '
        Me.SaveTextoEmTXTToolStripMenuItem.Image = CType(resources.GetObject("SaveTextoEmTXTToolStripMenuItem.Image"), System.Drawing.Image)
        Me.SaveTextoEmTXTToolStripMenuItem.Name = "SaveTextoEmTXTToolStripMenuItem"
        Me.SaveTextoEmTXTToolStripMenuItem.Size = New System.Drawing.Size(174, 22)
        Me.SaveTextoEmTXTToolStripMenuItem.Text = "Save Texto Em TXT"
        '
        'SaveTXTToolStripMenuItem
        '
        Me.SaveTXTToolStripMenuItem.Image = CType(resources.GetObject("SaveTXTToolStripMenuItem.Image"), System.Drawing.Image)
        Me.SaveTXTToolStripMenuItem.Name = "SaveTXTToolStripMenuItem"
        Me.SaveTXTToolStripMenuItem.Size = New System.Drawing.Size(174, 22)
        Me.SaveTXTToolStripMenuItem.Text = "Save TXT"
        '
        'ExitToolStripMenuItem
        '
        Me.ExitToolStripMenuItem.Image = CType(resources.GetObject("ExitToolStripMenuItem.Image"), System.Drawing.Image)
        Me.ExitToolStripMenuItem.Name = "ExitToolStripMenuItem"
        Me.ExitToolStripMenuItem.Size = New System.Drawing.Size(174, 22)
        Me.ExitToolStripMenuItem.Text = "Exit"
        '
        'TextBox1
        '
        Me.TextBox1.Cursor = System.Windows.Forms.Cursors.Cross
        Me.TextBox1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.TextBox1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TextBox1.ForeColor = System.Drawing.Color.Black
        Me.TextBox1.Location = New System.Drawing.Point(0, 25)
        Me.TextBox1.Multiline = True
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.ScrollBars = System.Windows.Forms.ScrollBars.Both
        Me.TextBox1.Size = New System.Drawing.Size(385, 300)
        Me.TextBox1.TabIndex = 1
        Me.TextBox1.WordWrap = False
        '
        'CopyTXTToolStripMenuItem
        '
        Me.CopyTXTToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.CopySelectedTXTToolStripMenuItem, Me.CopyTXTAllToolStripMenuItem})
        Me.CopyTXTToolStripMenuItem.Image = CType(resources.GetObject("CopyTXTToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopyTXTToolStripMenuItem.Name = "CopyTXTToolStripMenuItem"
        Me.CopyTXTToolStripMenuItem.Size = New System.Drawing.Size(174, 22)
        Me.CopyTXTToolStripMenuItem.Text = "Copy TXT"
        '
        'CopySelectedTXTToolStripMenuItem
        '
        Me.CopySelectedTXTToolStripMenuItem.Image = CType(resources.GetObject("CopySelectedTXTToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopySelectedTXTToolStripMenuItem.Name = "CopySelectedTXTToolStripMenuItem"
        Me.CopySelectedTXTToolStripMenuItem.Size = New System.Drawing.Size(173, 22)
        Me.CopySelectedTXTToolStripMenuItem.Text = "Copy Selected TXT"
        '
        'CopyTXTAllToolStripMenuItem
        '
        Me.CopyTXTAllToolStripMenuItem.Image = CType(resources.GetObject("CopyTXTAllToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopyTXTAllToolStripMenuItem.Name = "CopyTXTAllToolStripMenuItem"
        Me.CopyTXTAllToolStripMenuItem.Size = New System.Drawing.Size(173, 22)
        Me.CopyTXTAllToolStripMenuItem.Text = "Copy TXT All"
        '
        'TXT_Editor
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6!, 13!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.BackColor = System.Drawing.Color.White
        Me.ClientSize = New System.Drawing.Size(385, 325)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.ToolStrip1)
        Me.Cursor = System.Windows.Forms.Cursors.Cross
        Me.ForeColor = System.Drawing.Color.Black
        Me.Icon = CType(resources.GetObject("$this.Icon"),System.Drawing.Icon)
        Me.MaximizeBox = false
        Me.Name = "TXT_Editor"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "TXT_Editor"
        Me.ToolStrip1.ResumeLayout(false)
        Me.ToolStrip1.PerformLayout
        Me.ResumeLayout(false)
        Me.PerformLayout

End Sub

    Friend WithEvents ToolStrip1 As ToolStrip
    Friend WithEvents ToolStripDropDownButton1 As ToolStripDropDownButton
    Friend WithEvents SaveTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ExitToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents TextBox1 As TextBox
    Friend WithEvents SaveTextoEmTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CopyTXTToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CopySelectedTXTToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CopyTXTAllToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
End Class
