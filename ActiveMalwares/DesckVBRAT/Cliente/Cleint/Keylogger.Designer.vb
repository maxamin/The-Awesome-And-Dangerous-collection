<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Keylogger
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Keylogger))
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.SaveLogEmTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.DeleteInutillixoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.UpdeterLogToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.DeleteLogToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SelectCopyToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyAllTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.TextBox2 = New System.Windows.Forms.TextBox()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.ContextMenuStrip1.SuspendLayout
        Me.Panel1.SuspendLayout
        Me.SuspendLayout
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SaveLogEmTXTToolStripMenuItem, Me.UpdeterLogToolStripMenuItem, Me.DeleteLogToolStripMenuItem, Me.CopyTXTToolStripMenuItem, Me.DeleteInutillixoToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(171, 114)
        '
        'SaveLogEmTXTToolStripMenuItem
        '
        Me.SaveLogEmTXTToolStripMenuItem.Image = CType(resources.GetObject("SaveLogEmTXTToolStripMenuItem.Image"),System.Drawing.Image)
        Me.SaveLogEmTXTToolStripMenuItem.Name = "SaveLogEmTXTToolStripMenuItem"
        Me.SaveLogEmTXTToolStripMenuItem.Size = New System.Drawing.Size(170, 22)
        Me.SaveLogEmTXTToolStripMenuItem.Text = "Save Logs Em TXT"
        '
        'DeleteInutillixoToolStripMenuItem
        '
        Me.DeleteInutillixoToolStripMenuItem.Name = "DeleteInutillixoToolStripMenuItem"
        Me.DeleteInutillixoToolStripMenuItem.Size = New System.Drawing.Size(170, 22)
        Me.DeleteInutillixoToolStripMenuItem.Text = " "
        Me.DeleteInutillixoToolStripMenuItem.Visible = false
        '
        'UpdeterLogToolStripMenuItem
        '
        Me.UpdeterLogToolStripMenuItem.Image = CType(resources.GetObject("UpdeterLogToolStripMenuItem.Image"),System.Drawing.Image)
        Me.UpdeterLogToolStripMenuItem.Name = "UpdeterLogToolStripMenuItem"
        Me.UpdeterLogToolStripMenuItem.Size = New System.Drawing.Size(170, 22)
        Me.UpdeterLogToolStripMenuItem.Text = "Updeter Log"
        '
        'DeleteLogToolStripMenuItem
        '
        Me.DeleteLogToolStripMenuItem.Image = CType(resources.GetObject("DeleteLogToolStripMenuItem.Image"),System.Drawing.Image)
        Me.DeleteLogToolStripMenuItem.Name = "DeleteLogToolStripMenuItem"
        Me.DeleteLogToolStripMenuItem.Size = New System.Drawing.Size(170, 22)
        Me.DeleteLogToolStripMenuItem.Text = "Clean TXT"
        '
        'CopyTXTToolStripMenuItem
        '
        Me.CopyTXTToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SelectCopyToolStripMenuItem, Me.CopyAllTXTToolStripMenuItem})
        Me.CopyTXTToolStripMenuItem.Image = CType(resources.GetObject("CopyTXTToolStripMenuItem.Image"),System.Drawing.Image)
        Me.CopyTXTToolStripMenuItem.Name = "CopyTXTToolStripMenuItem"
        Me.CopyTXTToolStripMenuItem.Size = New System.Drawing.Size(170, 22)
        Me.CopyTXTToolStripMenuItem.Text = "Copy TXT"
        '
        'SelectCopyToolStripMenuItem
        '
        Me.SelectCopyToolStripMenuItem.Image = CType(resources.GetObject("SelectCopyToolStripMenuItem.Image"),System.Drawing.Image)
        Me.SelectCopyToolStripMenuItem.Name = "SelectCopyToolStripMenuItem"
        Me.SelectCopyToolStripMenuItem.Size = New System.Drawing.Size(173, 22)
        Me.SelectCopyToolStripMenuItem.Text = "Selected Copy TXT"
        '
        'CopyAllTXTToolStripMenuItem
        '
        Me.CopyAllTXTToolStripMenuItem.Image = CType(resources.GetObject("CopyAllTXTToolStripMenuItem.Image"),System.Drawing.Image)
        Me.CopyAllTXTToolStripMenuItem.Name = "CopyAllTXTToolStripMenuItem"
        Me.CopyAllTXTToolStripMenuItem.Size = New System.Drawing.Size(173, 22)
        Me.CopyAllTXTToolStripMenuItem.Text = "Copy All TXT"
        '
        'Panel1
        '
        Me.Panel1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.Panel1.BackColor = System.Drawing.Color.White
        Me.Panel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.Panel1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Panel1.Controls.Add(Me.Button2)
        Me.Panel1.Controls.Add(Me.Button1)
        Me.Panel1.Controls.Add(Me.TextBox2)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.Panel1.ForeColor = System.Drawing.Color.Black
        Me.Panel1.Location = New System.Drawing.Point(0, 192)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(543, 37)
        Me.Panel1.TabIndex = 1
        '
        'Button2
        '
        Me.Button2.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Button2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        Me.Button2.Location = New System.Drawing.Point(318, 6)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 23)
        Me.Button2.TabIndex = 4
        Me.Button2.Text = "Procure"
        Me.Button2.UseVisualStyleBackColor = true
        '
        'Button1
        '
        Me.Button1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Button1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        Me.Button1.Location = New System.Drawing.Point(237, 6)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 23)
        Me.Button1.TabIndex = 3
        Me.Button1.Text = "Delete"
        Me.Button1.UseVisualStyleBackColor = true
        '
        'TextBox2
        '
        Me.TextBox2.ContextMenuStrip = Me.ContextMenuStrip1
        Me.TextBox2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        Me.TextBox2.Location = New System.Drawing.Point(8, 6)
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(214, 21)
        Me.TextBox2.TabIndex = 2
        Me.TextBox2.Text = "Palavra a Ser Deletada ou Procurada"
        '
        'TextBox1
        '
        Me.TextBox1.BackColor = System.Drawing.Color.Black
        Me.TextBox1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.TextBox1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.TextBox1.ForeColor = System.Drawing.Color.White
        Me.TextBox1.Location = New System.Drawing.Point(0, 0)
        Me.TextBox1.Multiline = true
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.TextBox1.Size = New System.Drawing.Size(543, 192)
        Me.TextBox1.TabIndex = 0
        '
        'Keylogger
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6!, 13!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.Black
        Me.ClientSize = New System.Drawing.Size(543, 229)
        Me.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.Panel1)
        Me.Cursor = System.Windows.Forms.Cursors.Cross
        Me.ForeColor = System.Drawing.Color.White
        Me.Icon = CType(resources.GetObject("$this.Icon"),System.Drawing.Icon)
        Me.MaximizeBox = false
        Me.Name = "Keylogger"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Keylogger"
        Me.ContextMenuStrip1.ResumeLayout(false)
        Me.Panel1.ResumeLayout(false)
        Me.Panel1.PerformLayout
        Me.ResumeLayout(false)
        Me.PerformLayout

End Sub
    Friend WithEvents ContextMenuStrip1 As ContextMenuStrip
    Friend WithEvents UpdeterLogToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents DeleteLogToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents SaveLogEmTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents DeleteInutillixoToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CopyTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CopyAllTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents SelectCopyToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents Timer1 As Timer
    Friend WithEvents Panel1 As Panel
    Friend WithEvents Button2 As Button
    Friend WithEvents Button1 As Button
    Friend WithEvents TextBox2 As TextBox
    Friend WithEvents TextBox1 As TextBox
End Class
