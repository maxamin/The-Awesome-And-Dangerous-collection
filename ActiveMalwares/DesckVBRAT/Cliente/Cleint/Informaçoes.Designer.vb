<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Informaçoes
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Informaçoes))
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.SaveEmTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyAllToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopySelectedToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.LinparTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ExitToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.ContextMenuStrip1.SuspendLayout
        Me.SuspendLayout
        '
        'TextBox1
        '
        Me.TextBox1.BackColor = System.Drawing.Color.Black
        Me.TextBox1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.TextBox1.Cursor = System.Windows.Forms.Cursors.Cross
        Me.TextBox1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.TextBox1.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.25!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        Me.TextBox1.ForeColor = System.Drawing.Color.White
        Me.TextBox1.Location = New System.Drawing.Point(0, 0)
        Me.TextBox1.Multiline = true
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.ScrollBars = System.Windows.Forms.ScrollBars.Both
        Me.TextBox1.Size = New System.Drawing.Size(472, 403)
        Me.TextBox1.TabIndex = 0
        Me.TextBox1.WordWrap = false
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SaveEmTXTToolStripMenuItem, Me.LinparTXTToolStripMenuItem, Me.CopyTXTToolStripMenuItem, Me.ExitToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(153, 114)
        '
        'SaveEmTXTToolStripMenuItem
        '
        Me.SaveEmTXTToolStripMenuItem.Image = CType(resources.GetObject("SaveEmTXTToolStripMenuItem.Image"), System.Drawing.Image)
        Me.SaveEmTXTToolStripMenuItem.Name = "SaveEmTXTToolStripMenuItem"
        Me.SaveEmTXTToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.SaveEmTXTToolStripMenuItem.Text = "Save Em TXT"
        '
        'CopyTXTToolStripMenuItem
        '
        Me.CopyTXTToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.CopyAllToolStripMenuItem, Me.CopySelectedToolStripMenuItem})
        Me.CopyTXTToolStripMenuItem.Image = CType(resources.GetObject("CopyTXTToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopyTXTToolStripMenuItem.Name = "CopyTXTToolStripMenuItem"
        Me.CopyTXTToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.CopyTXTToolStripMenuItem.Text = "Copy TXT"
        '
        'CopyAllToolStripMenuItem
        '
        Me.CopyAllToolStripMenuItem.Image = CType(resources.GetObject("CopyAllToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopyAllToolStripMenuItem.Name = "CopyAllToolStripMenuItem"
        Me.CopyAllToolStripMenuItem.Size = New System.Drawing.Size(149, 22)
        Me.CopyAllToolStripMenuItem.Text = "Copy All"
        '
        'CopySelectedToolStripMenuItem
        '
        Me.CopySelectedToolStripMenuItem.Image = CType(resources.GetObject("CopySelectedToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopySelectedToolStripMenuItem.Name = "CopySelectedToolStripMenuItem"
        Me.CopySelectedToolStripMenuItem.Size = New System.Drawing.Size(149, 22)
        Me.CopySelectedToolStripMenuItem.Text = "Copy Selected"
        '
        'LinparTXTToolStripMenuItem
        '
        Me.LinparTXTToolStripMenuItem.Image = CType(resources.GetObject("LinparTXTToolStripMenuItem.Image"), System.Drawing.Image)
        Me.LinparTXTToolStripMenuItem.Name = "LinparTXTToolStripMenuItem"
        Me.LinparTXTToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.LinparTXTToolStripMenuItem.Text = "Linpar TXT"
        '
        'ExitToolStripMenuItem
        '
        Me.ExitToolStripMenuItem.Image = CType(resources.GetObject("ExitToolStripMenuItem.Image"), System.Drawing.Image)
        Me.ExitToolStripMenuItem.Name = "ExitToolStripMenuItem"
        Me.ExitToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.ExitToolStripMenuItem.Text = "Exit"
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"),System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "lan.png")
        '
        'Informaçoes
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6!, 13!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.ClientSize = New System.Drawing.Size(472, 403)
        Me.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Controls.Add(Me.TextBox1)
        Me.Cursor = System.Windows.Forms.Cursors.Cross
        Me.Icon = CType(resources.GetObject("$this.Icon"),System.Drawing.Icon)
        Me.MaximizeBox = false
        Me.Name = "Informaçoes"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Informations"
        Me.ContextMenuStrip1.ResumeLayout(false)
        Me.ResumeLayout(false)
        Me.PerformLayout

End Sub

    Friend WithEvents TextBox1 As TextBox
    Friend WithEvents ContextMenuStrip1 As ContextMenuStrip
    Friend WithEvents CopyTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CopyAllToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CopySelectedToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents SaveEmTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents LinparTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ExitToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ImageList1 As ImageList
End Class
