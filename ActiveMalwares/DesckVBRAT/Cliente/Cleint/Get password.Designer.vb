<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class password
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(password))
        Me.ListView1 = New System.Windows.Forms.ListView()
        Me.ColumnHeader1 = CType(New System.Windows.Forms.ColumnHeader(),System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader2 = CType(New System.Windows.Forms.ColumnHeader(),System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader3 = CType(New System.Windows.Forms.ColumnHeader(),System.Windows.Forms.ColumnHeader)
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.SalvarEmTxtToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.Updeterpass = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyPassToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyUserToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.OpenURLToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.Label1 = New System.Windows.Forms.ToolStripStatusLabel()
        Me.ContextMenuStrip1.SuspendLayout()
        Me.StatusStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'ListView1
        '
        Me.ListView1.BackColor = System.Drawing.Color.Black
        Me.ListView1.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader1, Me.ColumnHeader2, Me.ColumnHeader3})
        Me.ListView1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.ListView1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ListView1.ForeColor = System.Drawing.Color.White
        Me.ListView1.FullRowSelect = True
        Me.ListView1.GridLines = True
        Me.ListView1.Location = New System.Drawing.Point(0, 0)
        Me.ListView1.Name = "ListView1"
        Me.ListView1.Size = New System.Drawing.Size(881, 276)
        Me.ListView1.SmallImageList = Me.ImageList1
        Me.ListView1.TabIndex = 0
        Me.ListView1.UseCompatibleStateImageBehavior = False
        Me.ListView1.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "URL"
        Me.ColumnHeader1.Width = 270
        '
        'ColumnHeader2
        '
        Me.ColumnHeader2.Text = "Email"
        Me.ColumnHeader2.Width = 378
        '
        'ColumnHeader3
        '
        Me.ColumnHeader3.Text = "Password"
        Me.ColumnHeader3.Width = 350
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SalvarEmTxtToolStripMenuItem, Me.Updeterpass, Me.CopyPassToolStripMenuItem, Me.CopyUserToolStripMenuItem, Me.OpenURLToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(150, 114)
        '
        'SalvarEmTxtToolStripMenuItem
        '
        Me.SalvarEmTxtToolStripMenuItem.Image = CType(resources.GetObject("SalvarEmTxtToolStripMenuItem.Image"), System.Drawing.Image)
        Me.SalvarEmTxtToolStripMenuItem.Name = "SalvarEmTxtToolStripMenuItem"
        Me.SalvarEmTxtToolStripMenuItem.Size = New System.Drawing.Size(149, 22)
        Me.SalvarEmTxtToolStripMenuItem.Text = "Salvar em TXT"
        '
        'Updeterpass
        '
        Me.Updeterpass.Image = CType(resources.GetObject("Updeterpass.Image"), System.Drawing.Image)
        Me.Updeterpass.Name = "Updeterpass"
        Me.Updeterpass.Size = New System.Drawing.Size(149, 22)
        Me.Updeterpass.Text = "Updeter Pass"
        '
        'CopyPassToolStripMenuItem
        '
        Me.CopyPassToolStripMenuItem.Image = CType(resources.GetObject("CopyPassToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopyPassToolStripMenuItem.Name = "CopyPassToolStripMenuItem"
        Me.CopyPassToolStripMenuItem.Size = New System.Drawing.Size(149, 22)
        Me.CopyPassToolStripMenuItem.Text = "Copy Pass"
        '
        'CopyUserToolStripMenuItem
        '
        Me.CopyUserToolStripMenuItem.Image = CType(resources.GetObject("CopyUserToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CopyUserToolStripMenuItem.Name = "CopyUserToolStripMenuItem"
        Me.CopyUserToolStripMenuItem.Size = New System.Drawing.Size(149, 22)
        Me.CopyUserToolStripMenuItem.Text = "Copy User"
        '
        'OpenURLToolStripMenuItem
        '
        Me.OpenURLToolStripMenuItem.Image = CType(resources.GetObject("OpenURLToolStripMenuItem.Image"), System.Drawing.Image)
        Me.OpenURLToolStripMenuItem.Name = "OpenURLToolStripMenuItem"
        Me.OpenURLToolStripMenuItem.Size = New System.Drawing.Size(149, 22)
        Me.OpenURLToolStripMenuItem.Text = "Copy URL"
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "pass.png")
        '
        'StatusStrip1
        '
        Me.StatusStrip1.BackColor = System.Drawing.Color.White
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.Label1})
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 279)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional
        Me.StatusStrip1.Size = New System.Drawing.Size(881, 22)
        Me.StatusStrip1.TabIndex = 1
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'Label1
        '
        Me.Label1.ActiveLinkColor = System.Drawing.Color.White
        Me.Label1.BackColor = System.Drawing.Color.White
        Me.Label1.ForeColor = System.Drawing.Color.Black
        Me.Label1.LinkColor = System.Drawing.Color.White
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(33, 17)
        Me.Label1.Text = " Pass"
        Me.Label1.VisitedLinkColor = System.Drawing.Color.White
        '
        'password
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.BackColor = System.Drawing.Color.Black
        Me.ClientSize = New System.Drawing.Size(881, 301)
        Me.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Controls.Add(Me.StatusStrip1)
        Me.Controls.Add(Me.ListView1)
        Me.Cursor = System.Windows.Forms.Cursors.Cross
        Me.ForeColor = System.Drawing.Color.White
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "password"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Get Password"
        Me.ContextMenuStrip1.ResumeLayout(false)
        Me.StatusStrip1.ResumeLayout(false)
        Me.StatusStrip1.PerformLayout
        Me.ResumeLayout(false)
        Me.PerformLayout

End Sub

    Friend WithEvents ListView1 As ListView
    Friend WithEvents ColumnHeader1 As ColumnHeader
    Friend WithEvents ColumnHeader2 As ColumnHeader
    Friend WithEvents ColumnHeader3 As ColumnHeader
    Friend WithEvents ImageList1 As ImageList
    Friend WithEvents ContextMenuStrip1 As ContextMenuStrip
    Friend WithEvents SalvarEmTxtToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CopyPassToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CopyUserToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents OpenURLToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents StatusStrip1 As StatusStrip
    Friend WithEvents Updeterpass As ToolStripMenuItem
    Friend WithEvents Label1 As ToolStripStatusLabel
End Class
