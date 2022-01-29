<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Pass
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Pass))
        Me.MenuStrip1 = New System.Windows.Forms.MenuStrip()
        Me.ToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem()
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.CopyUserToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyPassToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopySiteToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyALLToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SaveAllToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.InClipboardToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.InDiskToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.FindToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RemoveEmptyPWToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.sf = New System.Windows.Forms.SaveFileDialog()
        Me.L1 = New System.Windows.Forms.ListView()
        Me.ColumnHeader1 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader2 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader3 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader4 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader5 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.MenuStrip1.SuspendLayout()
        Me.ContextMenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'MenuStrip1
        '
        Me.MenuStrip1.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.MenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ToolStripMenuItem1})
        Me.MenuStrip1.Location = New System.Drawing.Point(0, 213)
        Me.MenuStrip1.Name = "MenuStrip1"
        Me.MenuStrip1.Size = New System.Drawing.Size(676, 24)
        Me.MenuStrip1.TabIndex = 0
        Me.MenuStrip1.Text = "MenuStrip1"
        '
        'ToolStripMenuItem1
        '
        Me.ToolStripMenuItem1.Name = "ToolStripMenuItem1"
        Me.ToolStripMenuItem1.Size = New System.Drawing.Size(74, 20)
        Me.ToolStripMenuItem1.Text = "Passwords"
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.CopyUserToolStripMenuItem, Me.CopyPassToolStripMenuItem, Me.CopySiteToolStripMenuItem, Me.CopyALLToolStripMenuItem, Me.SaveAllToolStripMenuItem, Me.FindToolStripMenuItem, Me.RemoveEmptyPWToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(176, 158)
        '
        'CopyUserToolStripMenuItem
        '
        Me.CopyUserToolStripMenuItem.Name = "CopyUserToolStripMenuItem"
        Me.CopyUserToolStripMenuItem.Size = New System.Drawing.Size(175, 22)
        Me.CopyUserToolStripMenuItem.Text = "Copy User"
        '
        'CopyPassToolStripMenuItem
        '
        Me.CopyPassToolStripMenuItem.Name = "CopyPassToolStripMenuItem"
        Me.CopyPassToolStripMenuItem.Size = New System.Drawing.Size(175, 22)
        Me.CopyPassToolStripMenuItem.Text = "Copy Pass"
        '
        'CopySiteToolStripMenuItem
        '
        Me.CopySiteToolStripMenuItem.Name = "CopySiteToolStripMenuItem"
        Me.CopySiteToolStripMenuItem.Size = New System.Drawing.Size(175, 22)
        Me.CopySiteToolStripMenuItem.Text = "Copy Site"
        '
        'CopyALLToolStripMenuItem
        '
        Me.CopyALLToolStripMenuItem.Name = "CopyALLToolStripMenuItem"
        Me.CopyALLToolStripMenuItem.Size = New System.Drawing.Size(175, 22)
        Me.CopyALLToolStripMenuItem.Text = "Copy ALL"
        '
        'SaveAllToolStripMenuItem
        '
        Me.SaveAllToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.InClipboardToolStripMenuItem, Me.InDiskToolStripMenuItem})
        Me.SaveAllToolStripMenuItem.Name = "SaveAllToolStripMenuItem"
        Me.SaveAllToolStripMenuItem.Size = New System.Drawing.Size(175, 22)
        Me.SaveAllToolStripMenuItem.Text = "Save All"
        '
        'InClipboardToolStripMenuItem
        '
        Me.InClipboardToolStripMenuItem.Name = "InClipboardToolStripMenuItem"
        Me.InClipboardToolStripMenuItem.Size = New System.Drawing.Size(139, 22)
        Me.InClipboardToolStripMenuItem.Text = "in Clipboard"
        '
        'InDiskToolStripMenuItem
        '
        Me.InDiskToolStripMenuItem.Name = "InDiskToolStripMenuItem"
        Me.InDiskToolStripMenuItem.Size = New System.Drawing.Size(139, 22)
        Me.InDiskToolStripMenuItem.Text = "in Disk"
        '
        'FindToolStripMenuItem
        '
        Me.FindToolStripMenuItem.Name = "FindToolStripMenuItem"
        Me.FindToolStripMenuItem.Size = New System.Drawing.Size(175, 22)
        Me.FindToolStripMenuItem.Text = "Find"
        '
        'RemoveEmptyPWToolStripMenuItem
        '
        Me.RemoveEmptyPWToolStripMenuItem.Name = "RemoveEmptyPWToolStripMenuItem"
        Me.RemoveEmptyPWToolStripMenuItem.Size = New System.Drawing.Size(175, 22)
        Me.RemoveEmptyPWToolStripMenuItem.Text = "Remove Empty PW"
        '
        'sf
        '
        Me.sf.FileName = "Pass.txt"
        Me.sf.Filter = "Text|.txt"
        '
        'L1
        '
        Me.L1.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader1, Me.ColumnHeader2, Me.ColumnHeader3, Me.ColumnHeader4, Me.ColumnHeader5})
        Me.L1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.L1.Cursor = System.Windows.Forms.Cursors.Hand
        Me.L1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.L1.FullRowSelect = True
        Me.L1.GridLines = True
        Me.L1.LargeImageList = Me.ImageList1
        Me.L1.Location = New System.Drawing.Point(0, 0)
        Me.L1.Name = "L1"
        Me.L1.Size = New System.Drawing.Size(676, 213)
        Me.L1.SmallImageList = Me.ImageList1
        Me.L1.TabIndex = 2
        Me.L1.UseCompatibleStateImageBehavior = False
        Me.L1.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "User"
        '
        'ColumnHeader2
        '
        Me.ColumnHeader2.Text = "Pass"
        '
        'ColumnHeader3
        '
        Me.ColumnHeader3.Text = "Site"
        '
        'ColumnHeader4
        '
        Me.ColumnHeader4.Text = "App"
        '
        'ColumnHeader5
        '
        Me.ColumnHeader5.Text = "From"
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "4.bmp")
        Me.ImageList1.Images.SetKeyName(1, "5.bmp")
        Me.ImageList1.Images.SetKeyName(2, "6.bmp")
        Me.ImageList1.Images.SetKeyName(3, "7.bmp")
        Me.ImageList1.Images.SetKeyName(4, "8.bmp")
        Me.ImageList1.Images.SetKeyName(5, "9.bmp")
        Me.ImageList1.Images.SetKeyName(6, "10.bmp")
        Me.ImageList1.Images.SetKeyName(7, "11.bmp")
        Me.ImageList1.Images.SetKeyName(8, "12.bmp")
        Me.ImageList1.Images.SetKeyName(9, "13.bmp")
        '
        'Pass
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(676, 237)
        Me.Controls.Add(Me.L1)
        Me.Controls.Add(Me.MenuStrip1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MainMenuStrip = Me.MenuStrip1
        Me.Name = "Pass"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Passwords .."
        Me.MenuStrip1.ResumeLayout(False)
        Me.MenuStrip1.PerformLayout()
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents MenuStrip1 As System.Windows.Forms.MenuStrip
    Friend WithEvents ToolStripMenuItem1 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents CopyUserToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CopyPassToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CopySiteToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CopyALLToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents SaveAllToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents InClipboardToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents InDiskToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents FindToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents RemoveEmptyPWToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents sf As System.Windows.Forms.SaveFileDialog
    Friend WithEvents L1 As System.Windows.Forms.ListView
    Friend WithEvents ColumnHeader1 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader2 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader3 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader4 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader5 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
End Class
