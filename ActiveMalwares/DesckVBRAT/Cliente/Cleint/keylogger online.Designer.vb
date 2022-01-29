<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class keylogger_online
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(keylogger_online))
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.SaveEmTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.UpdeterLogsToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CleanTXTToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopiToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopySelectedToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CopyAllToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.StopToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.TextBox2 = New System.Windows.Forms.TextBox()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.ContextMenuStrip1.SuspendLayout
        Me.Panel1.SuspendLayout
        Me.SuspendLayout
        '
        'Timer1
        '
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SaveEmTXTToolStripMenuItem, Me.UpdeterLogsToolStripMenuItem, Me.CleanTXTToolStripMenuItem, Me.CopiToolStripMenuItem, Me.StopToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(168, 114)
        '
        'SaveEmTXTToolStripMenuItem
        '
        Me.SaveEmTXTToolStripMenuItem.Image = CType(resources.GetObject("SaveEmTXTToolStripMenuItem.Image"),System.Drawing.Image)
        Me.SaveEmTXTToolStripMenuItem.Name = "SaveEmTXTToolStripMenuItem"
        Me.SaveEmTXTToolStripMenuItem.Size = New System.Drawing.Size(167, 22)
        Me.SaveEmTXTToolStripMenuItem.Text = "Save logs em TXT"
        '
        'UpdeterLogsToolStripMenuItem
        '
        Me.UpdeterLogsToolStripMenuItem.Image = CType(resources.GetObject("UpdeterLogsToolStripMenuItem.Image"),System.Drawing.Image)
        Me.UpdeterLogsToolStripMenuItem.Name = "UpdeterLogsToolStripMenuItem"
        Me.UpdeterLogsToolStripMenuItem.Size = New System.Drawing.Size(167, 22)
        Me.UpdeterLogsToolStripMenuItem.Text = "Updeter Logs"
        '
        'CleanTXTToolStripMenuItem
        '
        Me.CleanTXTToolStripMenuItem.Image = CType(resources.GetObject("CleanTXTToolStripMenuItem.Image"),System.Drawing.Image)
        Me.CleanTXTToolStripMenuItem.Name = "CleanTXTToolStripMenuItem"
        Me.CleanTXTToolStripMenuItem.Size = New System.Drawing.Size(167, 22)
        Me.CleanTXTToolStripMenuItem.Text = "Clean TXT"
        '
        'CopiToolStripMenuItem
        '
        Me.CopiToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.CopySelectedToolStripMenuItem, Me.CopyAllToolStripMenuItem})
        Me.CopiToolStripMenuItem.Image = CType(resources.GetObject("CopiToolStripMenuItem.Image"),System.Drawing.Image)
        Me.CopiToolStripMenuItem.Name = "CopiToolStripMenuItem"
        Me.CopiToolStripMenuItem.Size = New System.Drawing.Size(167, 22)
        Me.CopiToolStripMenuItem.Text = "Copy"
        '
        'CopySelectedToolStripMenuItem
        '
        Me.CopySelectedToolStripMenuItem.Image = CType(resources.GetObject("CopySelectedToolStripMenuItem.Image"),System.Drawing.Image)
        Me.CopySelectedToolStripMenuItem.Name = "CopySelectedToolStripMenuItem"
        Me.CopySelectedToolStripMenuItem.Size = New System.Drawing.Size(173, 22)
        Me.CopySelectedToolStripMenuItem.Text = "Copy Selected TXT"
        '
        'CopyAllToolStripMenuItem
        '
        Me.CopyAllToolStripMenuItem.Image = CType(resources.GetObject("CopyAllToolStripMenuItem.Image"),System.Drawing.Image)
        Me.CopyAllToolStripMenuItem.Name = "CopyAllToolStripMenuItem"
        Me.CopyAllToolStripMenuItem.Size = New System.Drawing.Size(173, 22)
        Me.CopyAllToolStripMenuItem.Text = "Copy all TXT"
        '
        'StopToolStripMenuItem
        '
        Me.StopToolStripMenuItem.Image = CType(resources.GetObject("StopToolStripMenuItem.Image"),System.Drawing.Image)
        Me.StopToolStripMenuItem.Name = "StopToolStripMenuItem"
        Me.StopToolStripMenuItem.Size = New System.Drawing.Size(167, 22)
        Me.StopToolStripMenuItem.Text = "Stop"
        '
        'Panel1
        '
        Me.Panel1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
        Me.Panel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.Panel1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Panel1.Controls.Add(Me.Button2)
        Me.Panel1.Controls.Add(Me.Button1)
        Me.Panel1.Controls.Add(Me.TextBox2)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.Panel1.Location = New System.Drawing.Point(0, 199)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(545, 33)
        Me.Panel1.TabIndex = 3
        '
        'Button2
        '
        Me.Button2.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Button2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        Me.Button2.Location = New System.Drawing.Point(333, 4)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 23)
        Me.Button2.TabIndex = 7
        Me.Button2.Text = "Procure"
        Me.Button2.UseVisualStyleBackColor = true
        '
        'Button1
        '
        Me.Button1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Button1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        Me.Button1.Location = New System.Drawing.Point(252, 4)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 23)
        Me.Button1.TabIndex = 6
        Me.Button1.Text = "Delete"
        Me.Button1.UseVisualStyleBackColor = true
        '
        'TextBox2
        '
        Me.TextBox2.ContextMenuStrip = Me.ContextMenuStrip1
        Me.TextBox2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0,Byte))
        Me.TextBox2.Location = New System.Drawing.Point(13, 4)
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(219, 21)
        Me.TextBox2.TabIndex = 5
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
        Me.TextBox1.Size = New System.Drawing.Size(545, 199)
        Me.TextBox1.TabIndex = 4
        '
        'keylogger_online
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6!, 13!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(545, 232)
        Me.ContextMenuStrip = Me.ContextMenuStrip1
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.Panel1)
        Me.Icon = CType(resources.GetObject("$this.Icon"),System.Drawing.Icon)
        Me.MaximizeBox = false
        Me.Name = "keylogger_online"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "keylogger_online"
        Me.ContextMenuStrip1.ResumeLayout(false)
        Me.Panel1.ResumeLayout(false)
        Me.Panel1.PerformLayout
        Me.ResumeLayout(false)
        Me.PerformLayout

End Sub
    Friend WithEvents Timer1 As Timer
    Friend WithEvents ContextMenuStrip1 As ContextMenuStrip
    Friend WithEvents UpdeterLogsToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents SaveEmTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CopiToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CopyAllToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CopySelectedToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents StopToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CleanTXTToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents Panel1 As Panel
    Friend WithEvents Button2 As Button
    Friend WithEvents Button1 As Button
    Friend WithEvents TextBox2 As TextBox
    Friend WithEvents TextBox1 As TextBox
End Class
