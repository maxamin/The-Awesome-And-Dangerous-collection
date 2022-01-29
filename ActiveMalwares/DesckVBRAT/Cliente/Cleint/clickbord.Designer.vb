<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class clickbord
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(clickbord))
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.SaveTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CleanTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.UpdeterToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SelectdCopyToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.AllCopyToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.ContextMenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'TextBox1
        '
        Me.TextBox1.BackColor = System.Drawing.Color.Black
        Me.TextBox1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.TextBox1.Dock = System.Windows.Forms.DockStyle.Top
        Me.TextBox1.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TextBox1.ForeColor = System.Drawing.Color.White
        Me.TextBox1.Location = New System.Drawing.Point(0, 0)
        Me.TextBox1.Multiline = True
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.ScrollBars = System.Windows.Forms.ScrollBars.Both
        Me.TextBox1.Size = New System.Drawing.Size(583, 207)
        Me.TextBox1.TabIndex = 0
        Me.TextBox1.WordWrap = False
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.UpdeterToolStripMenuItem, Me.CleanTXTToolStripMenuItem, Me.CopyTXTToolStripMenuItem, Me.SaveTXTToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(153, 114)
        '
        'SaveTXTToolStripMenuItem
        '
        Me.SaveTXTToolStripMenuItem.Image = CType(resources.GetObject("SaveTXTToolStripMenuItem.Image"), System.Drawing.Image)
        Me.SaveTXTToolStripMenuItem.Name = "SaveTXTToolStripMenuItem"
        Me.SaveTXTToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.SaveTXTToolStripMenuItem.Text = "Save TXT"
        '
        'CleanTXTToolStripMenuItem
        '
        Me.CleanTXTToolStripMenuItem.Image = CType(resources.GetObject("CleanTXTToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CleanTXTToolStripMenuItem.Name = "CleanTXTToolStripMenuItem"
        Me.CleanTXTToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.CleanTXTToolStripMenuItem.Text = "Clean TXT"
        '
        'UpdeterToolStripMenuItem
        '
        Me.UpdeterToolStripMenuItem.Image = CType(resources.GetObject("UpdeterToolStripMenuItem.Image"), System.Drawing.Image)
        Me.UpdeterToolStripMenuItem.Name = "UpdeterToolStripMenuItem"
        Me.UpdeterToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.UpdeterToolStripMenuItem.Text = "Updeter List"
        '
        'CopyTXTToolStripMenuItem
        '
        Me.CopyTXTToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SelectdCopyToolStripMenuItem, Me.AllCopyToolStripMenuItem})
        Me.CopyTXTToolStripMenuItem.Image = CType(resources.GetObject("CopyTXTToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopyTXTToolStripMenuItem.Name = "CopyTXTToolStripMenuItem"
        Me.CopyTXTToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.CopyTXTToolStripMenuItem.Text = "Copy TXT"
        '
        'SelectdCopyToolStripMenuItem
        '
        Me.SelectdCopyToolStripMenuItem.Image = CType(resources.GetObject("SelectdCopyToolStripMenuItem.Image"), System.Drawing.Image)
        Me.SelectdCopyToolStripMenuItem.Name = "SelectdCopyToolStripMenuItem"
        Me.SelectdCopyToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.SelectdCopyToolStripMenuItem.Text = "Selectd Copy"
        '
        'AllCopyToolStripMenuItem
        '
        Me.AllCopyToolStripMenuItem.Image = CType(resources.GetObject("AllCopyToolStripMenuItem.Image"), System.Drawing.Image)
        Me.AllCopyToolStripMenuItem.Name = "AllCopyToolStripMenuItem"
        Me.AllCopyToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.AllCopyToolStripMenuItem.Text = "All Copy"
        '
        'StatusStrip1
        '
        Me.StatusStrip1.BackColor = System.Drawing.Color.White
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 206)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.StatusStrip1.Size = New System.Drawing.Size(583, 22)
        Me.StatusStrip1.TabIndex = 6
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'clickbord
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6!, 13!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.BackColor = System.Drawing.Color.Black
        Me.ClientSize = New System.Drawing.Size(583, 228)
        Me.Controls.Add(Me.StatusStrip1)
        Me.Controls.Add(Me.TextBox1)
        Me.Cursor = System.Windows.Forms.Cursors.Cross
        Me.ForeColor = System.Drawing.Color.White
        Me.Icon = CType(resources.GetObject("$this.Icon"),System.Drawing.Icon)
        Me.MaximizeBox = false
        Me.Name = "clickbord"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Clickbord"
        Me.ContextMenuStrip1.ResumeLayout(false)
        Me.ResumeLayout(false)
        Me.PerformLayout

End Sub
    Friend WithEvents TextBox1 As TextBox
    Friend WithEvents StatusStrip1 As StatusStrip
    Friend WithEvents ContextMenuStrip1 As ContextMenuStrip
    Friend WithEvents SaveTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CleanTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents UpdeterToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CopyTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents SelectdCopyToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents AllCopyToolStripMenuItem As ToolStripMenuItem
End Class
