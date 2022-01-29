<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Pasta_compartihadas
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Pasta_compartihadas))
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.UpdeterListToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.LinparListToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.CopyTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyTXTSelectedToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyTXTAllToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ContextMenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'TextBox1
        '
        Me.TextBox1.BackColor = System.Drawing.Color.Black
        Me.TextBox1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.TextBox1.Dock = System.Windows.Forms.DockStyle.Top
        Me.TextBox1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TextBox1.ForeColor = System.Drawing.Color.White
        Me.TextBox1.Location = New System.Drawing.Point(0, 0)
        Me.TextBox1.Multiline = True
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.ScrollBars = System.Windows.Forms.ScrollBars.Both
        Me.TextBox1.Size = New System.Drawing.Size(553, 177)
        Me.TextBox1.TabIndex = 0
        Me.TextBox1.WordWrap = False
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.UpdeterListToolStripMenuItem, Me.LinparListToolStripMenuItem, Me.CopyTXTToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(138, 70)
        '
        'UpdeterListToolStripMenuItem
        '
        Me.UpdeterListToolStripMenuItem.Image = CType(resources.GetObject("UpdeterListToolStripMenuItem.Image"), System.Drawing.Image)
        Me.UpdeterListToolStripMenuItem.Name = "UpdeterListToolStripMenuItem"
        Me.UpdeterListToolStripMenuItem.Size = New System.Drawing.Size(137, 22)
        Me.UpdeterListToolStripMenuItem.Text = "Updeter List"
        '
        'LinparListToolStripMenuItem
        '
        Me.LinparListToolStripMenuItem.Image = CType(resources.GetObject("LinparListToolStripMenuItem.Image"), System.Drawing.Image)
        Me.LinparListToolStripMenuItem.Name = "LinparListToolStripMenuItem"
        Me.LinparListToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.LinparListToolStripMenuItem.Text = "Linpar List"
        '
        'StatusStrip1
        '
        Me.StatusStrip1.BackColor = System.Drawing.Color.White
        Me.StatusStrip1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 180)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.Size = New System.Drawing.Size(553, 22)
        Me.StatusStrip1.TabIndex = 1
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'CopyTXTToolStripMenuItem
        '
        Me.CopyTXTToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.CopyTXTSelectedToolStripMenuItem, Me.CopyTXTAllToolStripMenuItem})
        Me.CopyTXTToolStripMenuItem.Image = CType(resources.GetObject("CopyTXTToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopyTXTToolStripMenuItem.Name = "CopyTXTToolStripMenuItem"
        Me.CopyTXTToolStripMenuItem.Size = New System.Drawing.Size(137, 22)
        Me.CopyTXTToolStripMenuItem.Text = "Copy TXT"
        '
        'CopyTXTSelectedToolStripMenuItem
        '
        Me.CopyTXTSelectedToolStripMenuItem.Image = CType(resources.GetObject("CopyTXTSelectedToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopyTXTSelectedToolStripMenuItem.Name = "CopyTXTSelectedToolStripMenuItem"
        Me.CopyTXTSelectedToolStripMenuItem.Size = New System.Drawing.Size(173, 22)
        Me.CopyTXTSelectedToolStripMenuItem.Text = "Copy TXT Selected"
        '
        'CopyTXTAllToolStripMenuItem
        '
        Me.CopyTXTAllToolStripMenuItem.Image = CType(resources.GetObject("CopyTXTAllToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopyTXTAllToolStripMenuItem.Name = "CopyTXTAllToolStripMenuItem"
        Me.CopyTXTAllToolStripMenuItem.Size = New System.Drawing.Size(173, 22)
        Me.CopyTXTAllToolStripMenuItem.Text = "Copy TXT All"
        '
        'Pasta_compartihadas
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.ClientSize = New System.Drawing.Size(553, 202)
        Me.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Controls.Add(Me.StatusStrip1)
        Me.Controls.Add(Me.TextBox1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "Pasta_compartihadas"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Pasta_compartihadas"
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents UpdeterListToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents LinparListToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CopyTXTToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CopyTXTSelectedToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CopyTXTAllToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
End Class
