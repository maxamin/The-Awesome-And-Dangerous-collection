<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Logs
    Inherits System.Windows.Forms.UserControl

    'UserControl overrides dispose to clean up the component list.
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
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.rc = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.snt = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.cn = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Lgs = New System.Windows.Forms.RichTextBox()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Panel1
        '
        Me.Panel1.Controls.Add(Me.Label1)
        Me.Panel1.Controls.Add(Me.cn)
        Me.Panel1.Controls.Add(Me.Label4)
        Me.Panel1.Controls.Add(Me.snt)
        Me.Panel1.Controls.Add(Me.Label6)
        Me.Panel1.Controls.Add(Me.rc)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Left
        Me.Panel1.Location = New System.Drawing.Point(0, 0)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(126, 334)
        Me.Panel1.TabIndex = 0
        '
        'rc
        '
        Me.rc.AutoSize = True
        Me.rc.Location = New System.Drawing.Point(6, 88)
        Me.rc.Name = "rc"
        Me.rc.Size = New System.Drawing.Size(13, 13)
        Me.rc.TabIndex = 0
        Me.rc.Text = "0"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Font = New System.Drawing.Font("Tahoma", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.Location = New System.Drawing.Point(3, 70)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(45, 13)
        Me.Label6.TabIndex = 1
        Me.Label6.Text = "Recive"
        '
        'snt
        '
        Me.snt.AutoSize = True
        Me.snt.Location = New System.Drawing.Point(6, 54)
        Me.snt.Name = "snt"
        Me.snt.Size = New System.Drawing.Size(13, 13)
        Me.snt.TabIndex = 2
        Me.snt.Text = "0"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Tahoma", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(3, 37)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(33, 13)
        Me.Label4.TabIndex = 3
        Me.Label4.Text = "Sent"
        '
        'cn
        '
        Me.cn.AutoSize = True
        Me.cn.Location = New System.Drawing.Point(6, 20)
        Me.cn.Name = "cn"
        Me.cn.Size = New System.Drawing.Size(13, 13)
        Me.cn.TabIndex = 4
        Me.cn.Text = "0"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Tahoma", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(3, 3)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(76, 13)
        Me.Label1.TabIndex = 5
        Me.Label1.Text = "Connections"
        '
        'Lgs
        '
        Me.Lgs.BackColor = System.Drawing.Color.White
        Me.Lgs.Dock = System.Windows.Forms.DockStyle.Fill
        Me.Lgs.Location = New System.Drawing.Point(126, 0)
        Me.Lgs.Name = "Lgs"
        Me.Lgs.ReadOnly = True
        Me.Lgs.Size = New System.Drawing.Size(610, 334)
        Me.Lgs.TabIndex = 1
        Me.Lgs.Text = ""
        '
        'Timer1
        '
        Me.Timer1.Interval = 10
        '
        'Logs
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.Controls.Add(Me.Lgs)
        Me.Controls.Add(Me.Panel1)
        Me.Name = "Logs"
        Me.Size = New System.Drawing.Size(736, 334)
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents cn As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents snt As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents rc As System.Windows.Forms.Label
    Friend WithEvents Lgs As System.Windows.Forms.RichTextBox
    Friend WithEvents Timer1 As System.Windows.Forms.Timer

End Class
