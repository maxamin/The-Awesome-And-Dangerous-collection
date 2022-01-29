<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Reg
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
        Dim TreeNode1 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("HKEY_CLASSES_ROOT")
        Dim TreeNode2 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("HKEY_CURRENT_USER")
        Dim TreeNode3 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("HKEY_LOCAL_MACHINE")
        Dim TreeNode4 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("HKEY_USERS")
        Dim TreeNode5 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("HKEY_CURRENT_CONFIG")
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Reg))
        Me.RGk = New System.Windows.Forms.TreeView()
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.UpdeterToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CreatKeyToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.DeleteKeyToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ExitToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem()
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.RGLIST = New System.Windows.Forms.ListView()
        Me.ColumnHeader1 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader2 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader3 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ContextMenuStrip2 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.NovoVolueToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.EditToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.UpdeterToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem()
        Me.DeleteToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ExitToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ContextMenuStrip1.SuspendLayout()
        Me.ContextMenuStrip2.SuspendLayout()
        Me.SuspendLayout()
        '
        'RGk
        '
        Me.RGk.BackColor = System.Drawing.Color.White
        Me.RGk.ContextMenuStrip = Me.ContextMenuStrip1
        Me.RGk.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.RGk.ForeColor = System.Drawing.Color.Black
        Me.RGk.ImageIndex = 0
        Me.RGk.ImageList = Me.ImageList1
        Me.RGk.Location = New System.Drawing.Point(0, 0)
        Me.RGk.Name = "RGk"
        TreeNode1.Name = "HKEY_CLASSES_ROOT"
        TreeNode1.Text = "HKEY_CLASSES_ROOT"
        TreeNode2.Name = "HKEY_CURRENT_USER"
        TreeNode2.Text = "HKEY_CURRENT_USER"
        TreeNode3.ImageKey = "(default)"
        TreeNode3.Name = "HKEY_LOCAL_MACHINE"
        TreeNode3.Text = "HKEY_LOCAL_MACHINE"
        TreeNode4.Name = "HKEY_USERS"
        TreeNode4.Text = "HKEY_USERS"
        TreeNode5.Name = "HKEY_CURRENT_CONFIGE"
        TreeNode5.Text = "HKEY_CURRENT_CONFIG"
        Me.RGk.Nodes.AddRange(New System.Windows.Forms.TreeNode() {TreeNode1, TreeNode2, TreeNode3, TreeNode4, TreeNode5})
        Me.RGk.SelectedImageIndex = 0
        Me.RGk.Size = New System.Drawing.Size(261, 255)
        Me.RGk.TabIndex = 0
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.DeleteKeyToolStripMenuItem, Me.UpdeterToolStripMenuItem, Me.CreatKeyToolStripMenuItem, Me.ExitToolStripMenuItem1})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(155, 92)
        '
        'UpdeterToolStripMenuItem
        '
        Me.UpdeterToolStripMenuItem.Image = CType(resources.GetObject("UpdeterToolStripMenuItem.Image"), System.Drawing.Image)
        Me.UpdeterToolStripMenuItem.Name = "UpdeterToolStripMenuItem"
        Me.UpdeterToolStripMenuItem.Size = New System.Drawing.Size(154, 22)
        Me.UpdeterToolStripMenuItem.Text = "Updeter List"
        '
        'CreatKeyToolStripMenuItem
        '
        Me.CreatKeyToolStripMenuItem.Image = CType(resources.GetObject("CreatKeyToolStripMenuItem.Image"), System.Drawing.Image)
        Me.CreatKeyToolStripMenuItem.Name = "CreatKeyToolStripMenuItem"
        Me.CreatKeyToolStripMenuItem.Size = New System.Drawing.Size(154, 22)
        Me.CreatKeyToolStripMenuItem.Text = "Nova Pasta"
        '
        'DeleteKeyToolStripMenuItem
        '
        Me.DeleteKeyToolStripMenuItem.Image = CType(resources.GetObject("DeleteKeyToolStripMenuItem.Image"), System.Drawing.Image)
        Me.DeleteKeyToolStripMenuItem.Name = "DeleteKeyToolStripMenuItem"
        Me.DeleteKeyToolStripMenuItem.Size = New System.Drawing.Size(154, 22)
        Me.DeleteKeyToolStripMenuItem.Text = "Delete Selected"
        '
        'ExitToolStripMenuItem1
        '
        Me.ExitToolStripMenuItem1.Image = CType(resources.GetObject("ExitToolStripMenuItem1.Image"), System.Drawing.Image)
        Me.ExitToolStripMenuItem1.Name = "ExitToolStripMenuItem1"
        Me.ExitToolStripMenuItem1.Size = New System.Drawing.Size(154, 22)
        Me.ExitToolStripMenuItem1.Text = "Exit"
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "4.png")
        Me.ImageList1.Images.SetKeyName(1, "ab.png")
        Me.ImageList1.Images.SetKeyName(2, "key.png")
        '
        'RGLIST
        '
        Me.RGLIST.BackColor = System.Drawing.Color.White
        Me.RGLIST.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader1, Me.ColumnHeader2, Me.ColumnHeader3})
        Me.RGLIST.ContextMenuStrip = Me.ContextMenuStrip2
        Me.RGLIST.Dock = System.Windows.Forms.DockStyle.Right
        Me.RGLIST.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.RGLIST.ForeColor = System.Drawing.Color.Black
        Me.RGLIST.FullRowSelect = True
        Me.RGLIST.Location = New System.Drawing.Point(259, 0)
        Me.RGLIST.Name = "RGLIST"
        Me.RGLIST.Size = New System.Drawing.Size(379, 255)
        Me.RGLIST.SmallImageList = Me.ImageList1
        Me.RGLIST.TabIndex = 1
        Me.RGLIST.UseCompatibleStateImageBehavior = False
        Me.RGLIST.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "Name       "
        Me.ColumnHeader1.Width = 104
        '
        'ColumnHeader2
        '
        Me.ColumnHeader2.Text = "Type           "
        Me.ColumnHeader2.Width = 146
        '
        'ColumnHeader3
        '
        Me.ColumnHeader3.Text = "Dados           "
        Me.ColumnHeader3.Width = 123
        '
        'ContextMenuStrip2
        '
        Me.ContextMenuStrip2.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.DeleteToolStripMenuItem, Me.EditToolStripMenuItem, Me.UpdeterToolStripMenuItem1, Me.NovoVolueToolStripMenuItem, Me.ExitToolStripMenuItem})
        Me.ContextMenuStrip2.Name = "ContextMenuStrip2"
        Me.ContextMenuStrip2.Size = New System.Drawing.Size(177, 136)
        '
        'NovoVolueToolStripMenuItem
        '
        Me.NovoVolueToolStripMenuItem.Image = CType(resources.GetObject("NovoVolueToolStripMenuItem.Image"), System.Drawing.Image)
        Me.NovoVolueToolStripMenuItem.Name = "NovoVolueToolStripMenuItem"
        Me.NovoVolueToolStripMenuItem.Size = New System.Drawing.Size(176, 22)
        Me.NovoVolueToolStripMenuItem.Text = "Novo Volue"
        '
        'EditToolStripMenuItem
        '
        Me.EditToolStripMenuItem.Image = CType(resources.GetObject("EditToolStripMenuItem.Image"), System.Drawing.Image)
        Me.EditToolStripMenuItem.Name = "EditToolStripMenuItem"
        Me.EditToolStripMenuItem.Size = New System.Drawing.Size(176, 22)
        Me.EditToolStripMenuItem.Text = " Edit Key Selected"
        '
        'UpdeterToolStripMenuItem1
        '
        Me.UpdeterToolStripMenuItem1.Image = CType(resources.GetObject("UpdeterToolStripMenuItem1.Image"), System.Drawing.Image)
        Me.UpdeterToolStripMenuItem1.Name = "UpdeterToolStripMenuItem1"
        Me.UpdeterToolStripMenuItem1.Size = New System.Drawing.Size(176, 22)
        Me.UpdeterToolStripMenuItem1.Text = "Updeter Keys"
        '
        'DeleteToolStripMenuItem
        '
        Me.DeleteToolStripMenuItem.Image = CType(resources.GetObject("DeleteToolStripMenuItem.Image"), System.Drawing.Image)
        Me.DeleteToolStripMenuItem.Name = "DeleteToolStripMenuItem"
        Me.DeleteToolStripMenuItem.Size = New System.Drawing.Size(176, 22)
        Me.DeleteToolStripMenuItem.Text = "Delete Key Selected"
        '
        'ExitToolStripMenuItem
        '
        Me.ExitToolStripMenuItem.Image = CType(resources.GetObject("ExitToolStripMenuItem.Image"), System.Drawing.Image)
        Me.ExitToolStripMenuItem.Name = "ExitToolStripMenuItem"
        Me.ExitToolStripMenuItem.Size = New System.Drawing.Size(176, 22)
        Me.ExitToolStripMenuItem.Text = "Exit"
        '
        'Reg
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6!, 13!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.ClientSize = New System.Drawing.Size(638, 255)
        Me.Controls.Add(Me.RGLIST)
        Me.Controls.Add(Me.RGk)
        Me.Cursor = System.Windows.Forms.Cursors.Cross
        Me.Icon = CType(resources.GetObject("$this.Icon"),System.Drawing.Icon)
        Me.MaximizeBox = false
        Me.Name = "Reg"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Regedit"
        Me.ContextMenuStrip1.ResumeLayout(false)
        Me.ContextMenuStrip2.ResumeLayout(false)
        Me.ResumeLayout(false)

End Sub

    Friend WithEvents RGk As TreeView
    Friend WithEvents ImageList1 As ImageList
    Friend WithEvents RGLIST As ListView
    Friend WithEvents ColumnHeader1 As ColumnHeader
    Friend WithEvents ColumnHeader2 As ColumnHeader
    Friend WithEvents ColumnHeader3 As ColumnHeader
    Friend WithEvents ContextMenuStrip1 As ContextMenuStrip
    Friend WithEvents UpdeterToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CreatKeyToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents DeleteKeyToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ContextMenuStrip2 As ContextMenuStrip
    Friend WithEvents UpdeterToolStripMenuItem1 As ToolStripMenuItem
    Friend WithEvents NovoVolueToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents DeleteToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents EditToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ExitToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ExitToolStripMenuItem1 As System.Windows.Forms.ToolStripMenuItem
End Class
