VERSION 5.00
Begin VB.Form frmFilter
  Caption = "Filter manager"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 4 'Fixed ToolWindow
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 315
  ClientWidth = 9690
  ClientHeight = 4875
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin VB.Timer tmrAutoRefresh
    Left = 1200
    Top = 0
  End
  Begin XtremeSuiteControls.CheckBox chkCol
    Index = 0
    Left = 120
    Top = 120
    Width = 1695
    Height = 255
    TabIndex = 0
  End
  Begin XtremeSuiteControls.CheckBox chkCol
    Index = 1
    Left = 120
    Top = 360
    Width = 1695
    Height = 255
    TabIndex = 1
  End
  Begin XtremeSuiteControls.CheckBox chkCol
    Index = 2
    Left = 120
    Top = 600
    Width = 1695
    Height = 255
    TabIndex = 2
  End
  Begin XtremeSuiteControls.CheckBox chkCol
    Index = 3
    Left = 120
    Top = 840
    Width = 1695
    Height = 255
    TabIndex = 3
  End
  Begin XtremeSuiteControls.CheckBox chkCol
    Index = 4
    Left = 120
    Top = 1080
    Width = 1695
    Height = 255
    TabIndex = 4
  End
  Begin XtremeSuiteControls.CheckBox chkCol
    Index = 5
    Left = 120
    Top = 1320
    Width = 1695
    Height = 255
    TabIndex = 5
  End
  Begin XtremeSuiteControls.CheckBox chkCol
    Index = 6
    Left = 120
    Top = 1560
    Width = 1695
    Height = 255
    TabIndex = 6
  End
  Begin XtremeSuiteControls.CheckBox chkCol
    Index = 7
    Left = 120
    Top = 1800
    Width = 1695
    Height = 255
    TabIndex = 7
  End
  Begin XtremeSuiteControls.CheckBox chkCol
    Index = 8
    Left = 4560
    Top = 120
    Width = 1695
    Height = 255
    TabIndex = 8
  End
  Begin XtremeSuiteControls.CheckBox chkCol
    Index = 9
    Left = 4560
    Top = 360
    Width = 1695
    Height = 255
    TabIndex = 9
  End
  Begin XtremeSuiteControls.CheckBox chkCol
    Index = 10
    Left = 4560
    Top = 600
    Width = 1695
    Height = 255
    TabIndex = 10
  End
  Begin XtremeSuiteControls.CheckBox chkCol
    Index = 11
    Left = 4560
    Top = 840
    Width = 1695
    Height = 255
    TabIndex = 11
  End
  Begin XtremeSuiteControls.CheckBox chkCol
    Index = 12
    Left = 4560
    Top = 1080
    Width = 1695
    Height = 255
    TabIndex = 12
  End
  Begin XtremeSuiteControls.CheckBox chkCol
    Index = 13
    Left = 4560
    Top = 1320
    Width = 1695
    Height = 255
    TabIndex = 13
  End
  Begin XtremeSuiteControls.CheckBox chkCol
    Index = 14
    Left = 4560
    Top = 1560
    Width = 1695
    Height = 255
    TabIndex = 14
  End
  Begin XtremeSuiteControls.CheckBox chkCol
    Index = 15
    Left = 4560
    Top = 1800
    Width = 1695
    Height = 255
    TabIndex = 15
  End
  Begin XtremeSuiteControls.TabControl tbFilter
    Left = 120
    Top = 2160
    Width = 9570
    Height = 2175
    TabIndex = 32
    Begin VB.Frame frmOpt
      Index = 13
      Left = 32768
      Top = 65032
      Width = 65534
      Height = 600
      Begin XtremeSuiteControls.RadioButton optIdle
        Index = 1
        Left = 1320
        Top = 0
        Width = 495
        Height = 255
        TabIndex = 128
      End
      Begin XtremeSuiteControls.RadioButton optIdle
        Index = 0
        Left = 0
        Top = 0
        Width = 1215
        Height = 255
        TabIndex = 129
      End
      Begin XtremeSuiteControls.RadioButton optIdle
        Index = 2
        Left = 2040
        Top = 0
        Width = 735
        Height = 255
        TabIndex = 130
      End
    End
    Begin VB.Frame frmOpt
      Index = 12
      Left = 32768
      Top = 65032
      Width = 65534
      Height = 600
      Begin XtremeSuiteControls.RadioButton optUptime
        Index = 1
        Left = 1320
        Top = 0
        Width = 495
        Height = 255
        TabIndex = 124
      End
      Begin XtremeSuiteControls.RadioButton optUptime
        Index = 0
        Left = 0
        Top = 0
        Width = 1215
        Height = 255
        TabIndex = 125
      End
      Begin XtremeSuiteControls.RadioButton optUptime
        Index = 2
        Left = 2040
        Top = 0
        Width = 735
        Height = 255
        TabIndex = 126
      End
    End
    Begin VB.Frame frmOpt
      Index = 8
      Left = 32768
      Top = 62872
      Width = 65534
      Height = 600
      Begin XtremeSuiteControls.RadioButton optPing
        Index = 1
        Left = 1320
        Top = 0
        Width = 495
        Height = 255
        TabIndex = 118
      End
      Begin XtremeSuiteControls.RadioButton optPing
        Index = 0
        Left = 0
        Top = 0
        Width = 1215
        Height = 255
        TabIndex = 119
      End
      Begin XtremeSuiteControls.RadioButton optPing
        Index = 2
        Left = 2040
        Top = 0
        Width = 735
        Height = 255
        TabIndex = 120
      End
    End
    Begin VB.Frame frmOpt
      Index = 11
      Left = 32768
      Top = 62872
      Width = 65534
      Height = 600
      Begin XtremeSuiteControls.RadioButton optSocks
        Index = 1
        Left = 1320
        Top = 0
        Width = 495
        Height = 255
        TabIndex = 114
      End
      Begin XtremeSuiteControls.RadioButton optSocks
        Index = 0
        Left = 0
        Top = 0
        Width = 1215
        Height = 255
        TabIndex = 115
      End
      Begin XtremeSuiteControls.RadioButton optSocks
        Index = 2
        Left = 2040
        Top = 0
        Width = 735
        Height = 255
        TabIndex = 116
      End
    End
    Begin VB.Frame frmOpt
      Index = 10
      Left = 32768
      Top = 63352
      Width = 65534
      Height = 600
      Begin XtremeSuiteControls.RadioButton optVersion
        Index = 1
        Left = 1320
        Top = 0
        Width = 495
        Height = 255
        TabIndex = 110
      End
      Begin XtremeSuiteControls.RadioButton optVersion
        Index = 0
        Left = 0
        Top = 0
        Width = 1215
        Height = 255
        TabIndex = 111
      End
      Begin XtremeSuiteControls.RadioButton optVersion
        Index = 2
        Left = 2040
        Top = 0
        Width = 735
        Height = 255
        TabIndex = 112
      End
    End
    Begin VB.Frame frmOpt
      Index = 9
      Left = 32768
      Top = 64072
      Width = 65534
      Height = 600
      Begin XtremeSuiteControls.RadioButton optCountry
        Index = 1
        Left = 1320
        Top = 0
        Width = 975
        Height = 255
        TabIndex = 107
      End
      Begin XtremeSuiteControls.RadioButton optCountry
        Index = 0
        Left = 0
        Top = 0
        Width = 1215
        Height = 255
        TabIndex = 108
      End
    End
    Begin VB.Frame frmOpt
      Index = 7
      Left = 32768
      Top = 63472
      Width = 65534
      Height = 600
      Begin XtremeSuiteControls.RadioButton optOS
        Index = 1
        Left = 1320
        Top = 0
        Width = 975
        Height = 255
        TabIndex = 104
      End
      Begin XtremeSuiteControls.RadioButton optOS
        Index = 0
        Left = 0
        Top = 0
        Width = 1215
        Height = 255
        TabIndex = 105
      End
    End
    Begin VB.Frame frmOpt
      Index = 6
      Left = 32768
      Top = 63952
      Width = 65534
      Height = 600
      Begin XtremeSuiteControls.RadioButton optPrivileges
        Index = 1
        Left = 1320
        Top = 0
        Width = 975
        Height = 255
        TabIndex = 101
      End
      Begin XtremeSuiteControls.RadioButton optPrivileges
        Index = 0
        Left = 0
        Top = 0
        Width = 1215
        Height = 255
        TabIndex = 102
      End
    End
    Begin VB.Frame frmOpt
      Index = 5
      Left = 32768
      Top = 64192
      Width = 65534
      Height = 600
      Begin XtremeSuiteControls.RadioButton optCompName
        Index = 1
        Left = 1320
        Top = 0
        Width = 975
        Height = 255
        TabIndex = 98
      End
      Begin XtremeSuiteControls.RadioButton optCompName
        Index = 0
        Left = 0
        Top = 0
        Width = 1215
        Height = 255
        TabIndex = 99
      End
    End
    Begin VB.Frame frmOpt
      Index = 4
      Left = 32768
      Top = 63952
      Width = 65534
      Height = 600
      Begin XtremeSuiteControls.RadioButton optUsername
        Index = 1
        Left = 1320
        Top = 0
        Width = 975
        Height = 255
        TabIndex = 95
      End
      Begin XtremeSuiteControls.RadioButton optUsername
        Index = 0
        Left = 0
        Top = 0
        Width = 1215
        Height = 255
        TabIndex = 96
      End
    End
    Begin VB.Frame frmOpt
      Index = 3
      Left = 32768
      Top = 63712
      Width = 65534
      Height = 600
      Begin XtremeSuiteControls.RadioButton optDDOS
        Index = 1
        Left = 1320
        Top = 0
        Width = 975
        Height = 255
        TabIndex = 92
      End
      Begin XtremeSuiteControls.RadioButton optDDOS
        Index = 0
        Left = 0
        Top = 0
        Width = 1215
        Height = 255
        TabIndex = 93
      End
    End
    Begin VB.Frame frmOpt
      Index = 2
      Left = 32768
      Top = 63832
      Width = 65534
      Height = 600
      Begin XtremeSuiteControls.RadioButton optLAN
        Index = 1
        Left = 1320
        Top = 0
        Width = 975
        Height = 255
        TabIndex = 89
      End
      Begin XtremeSuiteControls.RadioButton optLAN
        Index = 0
        Left = 0
        Top = 0
        Width = 1215
        Height = 255
        TabIndex = 90
      End
    End
    Begin VB.Frame frmOpt
      Index = 1
      Left = 32768
      Top = 63592
      Width = 65534
      Height = 600
      Begin XtremeSuiteControls.RadioButton optWAN
        Index = 1
        Left = 1320
        Top = 0
        Width = 975
        Height = 255
        TabIndex = 86
      End
      Begin XtremeSuiteControls.RadioButton optWAN
        Index = 0
        Left = 0
        Top = 0
        Width = 1215
        Height = 255
        TabIndex = 87
      End
    End
    Begin VB.Frame frmOpt
      Index = 0
      Left = 2160
      Top = 600
      Width = 2655
      Height = 255
      TabIndex = 82
      BorderStyle = 0 'None
      Begin XtremeSuiteControls.RadioButton optID
        Index = 1
        Left = 1320
        Top = 0
        Width = 975
        Height = 255
        TabIndex = 83
      End
      Begin XtremeSuiteControls.RadioButton optID
        Index = 0
        Left = 0
        Top = 0
        Width = 1215
        Height = 255
        TabIndex = 84
      End
    End
    Begin VB.TextBox txtVersion
      Left = 32768
      Top = 62032
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtCountry
      Left = 32768
      Top = 61912
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtSocks
      Left = 32768
      Top = 61792
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtPing
      Left = 32768
      Top = 61792
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtIdle
      Index = 2
      Left = 32768
      Top = 64312
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtIdle
      Index = 1
      Left = 32768
      Top = 62992
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtIdle
      Index = 0
      Left = 32768
      Top = 61792
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtUptime
      Index = 2
      Left = 32768
      Top = 64312
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtUptime
      Index = 1
      Left = 32768
      Top = 62992
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtUptime
      Index = 0
      Left = 32768
      Top = 61792
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtOS
      Left = 32768
      Top = 61672
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtPrivileges
      Left = 32768
      Top = 62152
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtCompName
      Left = 32768
      Top = 62392
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtUsername
      Left = 32768
      Top = 62152
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtLAN
      Left = 32768
      Top = 62032
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtDDOS
      Left = 32768
      Top = 61912
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtWAN
      Left = 32768
      Top = 61792
      Width = 65534
      Height = 600
    End
    Begin VB.TextBox txtID
      Left = 720
      Top = 600
      Width = 1335
      Height = 285
      TabIndex = 46
      MaxLength = 12
    End
    Begin VB.TextBox txtPort
      Left = 32768
      Top = 57208
      Width = 65533
      Height = 240
    End
    Begin VB.Frame frmFTP
      Caption = "FTP Settings"
      Left = 32768
      Top = 56728
      Width = 65533
      Height = 3360
      Begin VB.TextBox txtFTPHost
        Left = 600
        Top = 240
        Width = 2175
        Height = 285
        Text = "site.com"
        TabIndex = 37
      End
      Begin VB.TextBox txtFTPUsername
        Left = 600
        Top = 960
        Width = 1335
        Height = 285
        Text = "username"
        TabIndex = 36
      End
      Begin VB.TextBox txtFTPPassword
        Left = 600
        Top = 1320
        Width = 1335
        Height = 285
        Text = "password"
        TabIndex = 35
      End
      Begin VB.TextBox txtFTPPort
        Left = 600
        Top = 600
        Width = 1335
        Height = 285
        Text = "21"
        TabIndex = 34
      End
      Begin VB.Label lblFTPHost
        Caption = "Host:"
        Left = 120
        Top = 240
        Width = 495
        Height = 255
        TabIndex = 41
        BackStyle = 0 'Transparent
      End
      Begin VB.Label lblFTPUsername
        Caption = "User:"
        Left = 120
        Top = 960
        Width = 495
        Height = 255
        TabIndex = 40
        BackStyle = 0 'Transparent
      End
      Begin VB.Label lblFTPPassword
        Caption = "Pass:"
        Left = 120
        Top = 1320
        Width = 495
        Height = 255
        TabIndex = 39
        BackStyle = 0 'Transparent
      End
      Begin VB.Label lblFTPPort
        Caption = "Port:"
        Left = 120
        Top = 600
        Width = 495
        Height = 255
        TabIndex = 38
        BackStyle = 0 'Transparent
      End
    End
    Begin XtremeSuiteControls.PushButton cmdAktivera
      Left = 32768
      Top = 1752
      Width = 65534
      Height = 4680
    End
    Begin VB.Label lblFilter
      Caption = "Version:"
      Index = 17
      Left = 32768
      Top = 61312
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "Country:"
      Index = 16
      Left = 32768
      Top = 61192
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "Port:"
      Index = 15
      Left = 32768
      Top = 61192
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "Ping:"
      Index = 11
      Left = 32768
      Top = 61192
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "Mins:"
      Index = 14
      Left = 32768
      Top = 63712
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "Hrs:"
      Index = 13
      Left = 32768
      Top = 62392
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "Days:"
      Index = 12
      Left = 32768
      Top = 61312
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "Mins:"
      Index = 10
      Left = 32768
      Top = 63712
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "Hrs:"
      Index = 9
      Left = 32768
      Top = 62392
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "Days:"
      Index = 8
      Left = 32768
      Top = 61312
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "OS:"
      Index = 7
      Left = 32768
      Top = 61312
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "Privileges:"
      Index = 6
      Left = 32768
      Top = 61312
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "Comp. Name:"
      Index = 5
      Left = 32768
      Top = 61312
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "Username:"
      Index = 4
      Left = 32768
      Top = 61312
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "LAN IP:"
      Index = 3
      Left = 32768
      Top = 61312
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "Target:"
      Index = 2
      Left = 32768
      Top = 61312
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "WAN:"
      Index = 1
      Left = 32768
      Top = 61192
      Width = 65534
      Height = 600
    End
    Begin VB.Label lblFilter
      Caption = "ID:"
      Index = 0
      Left = 120
      Top = 600
      Width = 495
      Height = 255
      TabIndex = 45
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblPort
      Caption = "Port:"
      Left = 32768
      Top = 56848
      Width = 65533
      Height = 240
    End
  End
  Begin XtremeSuiteControls.PushButton cmdFilter
    Left = 8640
    Top = 4440
    Width = 975
    Height = 375
    TabIndex = 81
  End
  Begin XtremeSuiteControls.CheckBox chkMatch
    Left = 6720
    Top = 4500
    Width = 1815
    Height = 255
    TabIndex = 121
  End
  Begin XtremeSuiteControls.PushButton cmdRestore
    Left = 120
    Top = 4440
    Width = 975
    Height = 375
    TabIndex = 122
  End
  Begin XtremeSuiteControls.CheckBox chkAutoRefresh
    Left = 3720
    Top = 4515
    Width = 1215
    Height = 255
    TabIndex = 131
  End
  Begin XtremeSuiteControls.ComboBox cmbAutoRefresh
    Left = 5040
    Top = 4500
    Width = 975
    Height = 315
    TabIndex = 132
  End
  Begin VB.Label lblDesc
    Caption = "sec"
    Index = 16
    Left = 6120
    Top = 4525
    Width = 375
    Height = 255
    TabIndex = 133
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDesc
    Caption = "Not set"
    Index = 15
    Left = 6480
    Top = 1800
    Width = 2415
    Height = 255
    TabIndex = 31
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDesc
    Caption = "Not set"
    Index = 14
    Left = 6480
    Top = 1560
    Width = 2415
    Height = 255
    TabIndex = 30
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDesc
    Caption = "Not set"
    Index = 13
    Left = 6480
    Top = 1320
    Width = 2415
    Height = 255
    TabIndex = 29
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDesc
    Caption = "Not set"
    Index = 12
    Left = 6480
    Top = 1080
    Width = 2415
    Height = 255
    TabIndex = 28
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDesc
    Caption = "Not set"
    Index = 11
    Left = 6480
    Top = 840
    Width = 2415
    Height = 255
    TabIndex = 27
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDesc
    Caption = "Not set"
    Index = 10
    Left = 6480
    Top = 600
    Width = 2415
    Height = 255
    TabIndex = 26
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDesc
    Caption = "Not set"
    Index = 9
    Left = 6480
    Top = 360
    Width = 2415
    Height = 255
    TabIndex = 25
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDesc
    Caption = "Not set"
    Index = 8
    Left = 6480
    Top = 120
    Width = 2415
    Height = 255
    TabIndex = 24
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDesc
    Caption = "Not set"
    Index = 7
    Left = 2040
    Top = 1800
    Width = 2415
    Height = 255
    TabIndex = 23
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDesc
    Caption = "Not set"
    Index = 6
    Left = 2040
    Top = 1560
    Width = 2415
    Height = 255
    TabIndex = 22
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDesc
    Caption = "Not set"
    Index = 5
    Left = 2040
    Top = 1320
    Width = 2415
    Height = 255
    TabIndex = 21
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDesc
    Caption = "Not set"
    Index = 4
    Left = 2040
    Top = 1080
    Width = 2415
    Height = 255
    TabIndex = 20
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDesc
    Caption = "Not set"
    Index = 3
    Left = 2040
    Top = 840
    Width = 2415
    Height = 255
    TabIndex = 19
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDesc
    Caption = "Not set"
    Index = 2
    Left = 2040
    Top = 600
    Width = 2415
    Height = 255
    TabIndex = 18
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDesc
    Caption = "Not set"
    Index = 1
    Left = 2040
    Top = 360
    Width = 2415
    Height = 855
    TabIndex = 17
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblDesc
    Caption = "Not set"
    Index = 0
    Left = 2040
    Top = 120
    Width = 2415
    Height = 255
    TabIndex = 16
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "frmFilter"


Private sub cmdFilter__824CC9
00824CC9: push ebp
00824CCA: mov ebp, esp
00824CCC: sub esp, 00000018h
00824CCF: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00824CD4: mov eax, fs:[00h]
00824CDA: push eax
00824CDB: mov fs:[00000000h], esp
00824CE2: push 0000001Ch
00824CE4: pop eax
00824CE5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00824CEA: push ebx
00824CEB: push esi
00824CEC: push edi
00824CED: mov var_18, esp
00824CF0: mov var_14, 0040B1A0h
00824CF7: mov eax, [ebp+08h]
00824CFA: and eax, 00000001h
00824CFD: mov var_10, eax
00824D00: mov eax, [ebp+08h]
00824D03: and al, FEh
00824D05: mov [ebp+08h], eax
00824D08: mov var_0C, 00000000h
00824D0F: mov eax, [ebp+08h]
00824D12: mov eax, [eax]
00824D14: push [ebp+08h]
00824D17: call [eax+04h]
00824D1A: mov var_04, 00000001h
00824D21: mov var_04, 00000002h
00824D28: push FFFFFFFFh
00824D2A: call 00410A60h ; On Error ...
00824D2F: mov var_04, 00000003h
00824D36: mov eax, [ebp+08h]
00824D39: mov eax, [eax]
00824D3B: push [ebp+08h]
00824D3E: call [eax+00000700h]
00824D44: mov var_24, eax
00824D47: cmp var_24, 00000000h
00824D4B: jnl 824D67h
00824D4D: push 00000700h
00824D52: push 00444310h
00824D57: push [ebp+08h]
00824D5A: push var_24
00824D5D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00824D62: mov var_3C, eax
00824D65: jmp 824D6Bh
00824D67: and var_3C, 00000000h
00824D6B: mov var_04, 00000004h
00824D72: or word ptr [008F2430h], FFFFh
00824D7A: mov var_10, 00000000h
00824D81: mov eax, [ebp+08h]
00824D84: mov eax, [eax]
00824D86: push [ebp+08h]
00824D89: call [eax+08h]
00824D8C: mov eax, var_10
00824D8F: mov ecx, var_20
00824D92: mov fs:[00000000h], ecx
00824D99: pop edi
00824D9A: pop esi
00824D9B: pop ebx
00824D9C: leave 
00824D9D: retn 0004h
End Sub

Private sub cmdRestore__824DA0
00824DA0: push ebp
00824DA1: mov ebp, esp
00824DA3: sub esp, 0000000Ch
00824DA6: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00824DAB: mov eax, fs:[00h]
00824DB1: push eax
00824DB2: mov fs:[00000000h], esp
00824DB9: push 0000003Ch
00824DBB: pop eax
00824DBC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00824DC1: push ebx
00824DC2: push esi
00824DC3: push edi
00824DC4: mov var_0C, esp
00824DC7: mov var_08, 0040B1D8h
00824DCE: mov eax, [ebp+08h]
00824DD1: and eax, 00000001h
00824DD4: mov var_04, eax
00824DD7: mov eax, [ebp+08h]
00824DDA: and al, FEh
00824DDC: mov [ebp+08h], eax
00824DDF: mov eax, [ebp+08h]
00824DE2: mov eax, [eax]
00824DE4: push [ebp+08h]
00824DE7: call [eax+04h]
00824DEA: mov eax, [ebp+08h]
00824DED: mov eax, [eax]
00824DEF: push [ebp+08h]
00824DF2: call [eax+000002FCh]
00824DF8: push eax
00824DF9: lea eax, var_18
00824DFC: push eax
00824DFD: call 00410A84h ; Set (object)
00824E02: mov var_3C, eax
00824E05: push 00000000h
00824E07: mov eax, var_3C
00824E0A: mov eax, [eax]
00824E0C: push var_3C
00824E0F: call [eax+5Ch]
00824E12: fclex 
00824E14: mov var_40, eax
00824E17: cmp var_40, 00000000h
00824E1B: jnl 824E34h
00824E1D: push 0000005Ch
00824E1F: push 00447A20h
00824E24: push var_3C
00824E27: push var_40
00824E2A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00824E2F: mov var_4C, eax
00824E32: jmp 824E38h
00824E34: and var_4C, 00000000h
00824E38: lea ecx, var_18
00824E3B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00824E40: and var_20, 00000000h
00824E44: mov var_28, 00000003h
00824E4B: push 00000010h
00824E4D: pop eax
00824E4E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00824E53: lea esi, var_28
00824E56: mov edi, esp
00824E58: movsd 
00824E59: movsd 
00824E5A: movsd 
00824E5B: movsd 
00824E5C: push 00000000h
00824E5E: mov eax, [ebp+08h]
00824E61: mov eax, [eax]
00824E63: push [ebp+08h]
00824E66: call [eax+000003C0h]
00824E6C: push eax
00824E6D: lea eax, var_18
00824E70: push eax
00824E71: call 00410A84h ; Set (object)
00824E76: push eax
00824E77: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00824E7C: lea ecx, var_18
00824E7F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00824E84: and var_20, 00000000h
00824E88: mov var_28, 0000000Bh
00824E8F: push 00000010h
00824E91: pop eax
00824E92: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00824E97: lea esi, var_28
00824E9A: mov edi, esp
00824E9C: movsd 
00824E9D: movsd 
00824E9E: movsd 
00824E9F: movsd 
00824EA0: push 8001000Dh
00824EA5: mov eax, [ebp+08h]
00824EA8: mov eax, [eax]
00824EAA: push [ebp+08h]
00824EAD: call [eax+000003C4h]
00824EB3: push eax
00824EB4: lea eax, var_18
00824EB7: push eax
00824EB8: call 00410A84h ; Set (object)
00824EBD: push eax
00824EBE: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00824EC3: lea ecx, var_18
00824EC6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00824ECB: mov eax, [ebp+08h]
00824ECE: mov eax, [eax]
00824ED0: push [ebp+08h]
00824ED3: call [eax+000006FCh]
00824ED9: mov var_3C, eax
00824EDC: cmp var_3C, 00000000h
00824EE0: jnl 824EFCh
00824EE2: push 000006FCh
00824EE7: push 00444310h
00824EEC: push [ebp+08h]
00824EEF: push var_3C
00824EF2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00824EF7: mov var_50, eax
00824EFA: jmp 824F00h
00824EFC: and var_50, 00000000h
00824F00: and word ptr [008F2430h], 0000h
00824F08: mov var_04, 00000000h
00824F0F: push 00824F20h
00824F14: jmp 824F1Fh
00824F16: lea ecx, var_18
00824F19: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00824F1E: ret 
End Sub

Private sub Form__824F3F
00824F3F: push ebp
00824F40: mov ebp, esp
00824F42: sub esp, 0000000Ch
00824F45: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00824F4A: mov eax, fs:[00h]
00824F50: push eax
00824F51: mov fs:[00000000h], esp
00824F58: mov eax, 00000094h
00824F5D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00824F62: push ebx
00824F63: push esi
00824F64: push edi
00824F65: mov var_0C, esp
00824F68: mov var_08, 0040B1E8h
00824F6F: mov eax, [ebp+08h]
00824F72: and eax, 00000001h
00824F75: mov var_04, eax
00824F78: mov eax, [ebp+08h]
00824F7B: and al, FEh
00824F7D: mov [ebp+08h], eax
00824F80: mov eax, [ebp+08h]
00824F83: mov eax, [eax]
00824F85: push [ebp+08h]
00824F88: call [eax+04h]
00824F8B: mov var_64, 00446714h ; ID
00824F92: mov var_6C, 00000008h
00824F99: and var_44, 00000000h
00824F9D: mov var_4C, 00000003h
00824FA4: push 00000010h
00824FA6: pop eax
00824FA7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00824FAC: lea esi, var_6C
00824FAF: mov edi, esp
00824FB1: movsd 
00824FB2: movsd 
00824FB3: movsd 
00824FB4: movsd 
00824FB5: push 00000001h
00824FB7: push 004469F4h
00824FBC: push 00000010h
00824FBE: pop eax
00824FBF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00824FC4: lea esi, var_4C
00824FC7: mov edi, esp
00824FC9: movsd 
00824FCA: movsd 
00824FCB: movsd 
00824FCC: movsd 
00824FCD: push 00000001h
00824FCF: push 00000000h
00824FD1: mov eax, [ebp+08h]
00824FD4: mov eax, [eax]
00824FD6: push [ebp+08h]
00824FD9: call [eax+00000374h]
00824FDF: push eax
00824FE0: lea eax, var_28
00824FE3: push eax
00824FE4: call 00410A84h ; Set (object)
00824FE9: push eax
00824FEA: lea eax, var_3C
00824FED: push eax
00824FEE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00824FF3: add esp, 00000020h
00824FF6: push eax
00824FF7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00824FFC: push eax
00824FFD: lea eax, var_2C
00825000: push eax
00825001: call 00410A84h ; Set (object)
00825006: push eax
00825007: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082500C: lea eax, var_2C
0082500F: push eax
00825010: lea eax, var_28
00825013: push eax
00825014: push 00000002h
00825016: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082501B: add esp, 0000000Ch
0082501E: lea ecx, var_3C
00825021: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00825026: mov var_64, 00446720h ; WAN
0082502D: mov var_6C, 00000008h
00825034: mov var_44, 00000001h
0082503B: mov var_4C, 00000003h
00825042: push 00000010h
00825044: pop eax
00825045: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082504A: lea esi, var_6C
0082504D: mov edi, esp
0082504F: movsd 
00825050: movsd 
00825051: movsd 
00825052: movsd 
00825053: push 00000001h
00825055: push 004469F4h
0082505A: push 00000010h
0082505C: pop eax
0082505D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825062: lea esi, var_4C
00825065: mov edi, esp
00825067: movsd 
00825068: movsd 
00825069: movsd 
0082506A: movsd 
0082506B: push 00000001h
0082506D: push 00000000h
0082506F: mov eax, [ebp+08h]
00825072: mov eax, [eax]
00825074: push [ebp+08h]
00825077: call [eax+00000374h]
0082507D: push eax
0082507E: lea eax, var_28
00825081: push eax
00825082: call 00410A84h ; Set (object)
00825087: push eax
00825088: lea eax, var_3C
0082508B: push eax
0082508C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00825091: add esp, 00000020h
00825094: push eax
00825095: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082509A: push eax
0082509B: lea eax, var_2C
0082509E: push eax
0082509F: call 00410A84h ; Set (object)
008250A4: push eax
008250A5: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008250AA: lea eax, var_2C
008250AD: push eax
008250AE: lea eax, var_28
008250B1: push eax
008250B2: push 00000002h
008250B4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008250B9: add esp, 0000000Ch
008250BC: lea ecx, var_3C
008250BF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008250C4: mov var_64, 0044672Ch ; LAN
008250CB: mov var_6C, 00000008h
008250D2: mov var_44, 00000002h
008250D9: mov var_4C, 00000003h
008250E0: push 00000010h
008250E2: pop eax
008250E3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008250E8: lea esi, var_6C
008250EB: mov edi, esp
008250ED: movsd 
008250EE: movsd 
008250EF: movsd 
008250F0: movsd 
008250F1: push 00000001h
008250F3: push 004469F4h
008250F8: push 00000010h
008250FA: pop eax
008250FB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825100: lea esi, var_4C
00825103: mov edi, esp
00825105: movsd 
00825106: movsd 
00825107: movsd 
00825108: movsd 
00825109: push 00000001h
0082510B: push 00000000h
0082510D: mov eax, [ebp+08h]
00825110: mov eax, [eax]
00825112: push [ebp+08h]
00825115: call [eax+00000374h]
0082511B: push eax
0082511C: lea eax, var_28
0082511F: push eax
00825120: call 00410A84h ; Set (object)
00825125: push eax
00825126: lea eax, var_3C
00825129: push eax
0082512A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082512F: add esp, 00000020h
00825132: push eax
00825133: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00825138: push eax
00825139: lea eax, var_2C
0082513C: push eax
0082513D: call 00410A84h ; Set (object)
00825142: push eax
00825143: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00825148: lea eax, var_2C
0082514B: push eax
0082514C: lea eax, var_28
0082514F: push eax
00825150: push 00000002h
00825152: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00825157: add esp, 0000000Ch
0082515A: lea ecx, var_3C
0082515D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00825162: mov var_64, 00453EC8h ; DDOS
00825169: mov var_6C, 00000008h
00825170: mov var_44, 00000003h
00825177: mov var_4C, 00000003h
0082517E: push 00000010h
00825180: pop eax
00825181: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825186: lea esi, var_6C
00825189: mov edi, esp
0082518B: movsd 
0082518C: movsd 
0082518D: movsd 
0082518E: movsd 
0082518F: push 00000001h
00825191: push 004469F4h
00825196: push 00000010h
00825198: pop eax
00825199: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082519E: lea esi, var_4C
008251A1: mov edi, esp
008251A3: movsd 
008251A4: movsd 
008251A5: movsd 
008251A6: movsd 
008251A7: push 00000001h
008251A9: push 00000000h
008251AB: mov eax, [ebp+08h]
008251AE: mov eax, [eax]
008251B0: push [ebp+08h]
008251B3: call [eax+00000374h]
008251B9: push eax
008251BA: lea eax, var_28
008251BD: push eax
008251BE: call 00410A84h ; Set (object)
008251C3: push eax
008251C4: lea eax, var_3C
008251C7: push eax
008251C8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008251CD: add esp, 00000020h
008251D0: push eax
008251D1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008251D6: push eax
008251D7: lea eax, var_2C
008251DA: push eax
008251DB: call 00410A84h ; Set (object)
008251E0: push eax
008251E1: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008251E6: lea eax, var_2C
008251E9: push eax
008251EA: lea eax, var_28
008251ED: push eax
008251EE: push 00000002h
008251F0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008251F5: add esp, 0000000Ch
008251F8: lea ecx, var_3C
008251FB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00825200: mov var_64, 00453ED8h ; UserName
00825207: mov var_6C, 00000008h
0082520E: mov var_44, 00000004h
00825215: mov var_4C, 00000003h
0082521C: push 00000010h
0082521E: pop eax
0082521F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825224: lea esi, var_6C
00825227: mov edi, esp
00825229: movsd 
0082522A: movsd 
0082522B: movsd 
0082522C: movsd 
0082522D: push 00000001h
0082522F: push 004469F4h
00825234: push 00000010h
00825236: pop eax
00825237: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082523C: lea esi, var_4C
0082523F: mov edi, esp
00825241: movsd 
00825242: movsd 
00825243: movsd 
00825244: movsd 
00825245: push 00000001h
00825247: push 00000000h
00825249: mov eax, [ebp+08h]
0082524C: mov eax, [eax]
0082524E: push [ebp+08h]
00825251: call [eax+00000374h]
00825257: push eax
00825258: lea eax, var_28
0082525B: push eax
0082525C: call 00410A84h ; Set (object)
00825261: push eax
00825262: lea eax, var_3C
00825265: push eax
00825266: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082526B: add esp, 00000020h
0082526E: push eax
0082526F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00825274: push eax
00825275: lea eax, var_2C
00825278: push eax
00825279: call 00410A84h ; Set (object)
0082527E: push eax
0082527F: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00825284: lea eax, var_2C
00825287: push eax
00825288: lea eax, var_28
0082528B: push eax
0082528C: push 00000002h
0082528E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00825293: add esp, 0000000Ch
00825296: lea ecx, var_3C
00825299: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082529E: mov var_64, 0044675Ch ; Comp.Name
008252A5: mov var_6C, 00000008h
008252AC: mov var_44, 00000005h
008252B3: mov var_4C, 00000003h
008252BA: push 00000010h
008252BC: pop eax
008252BD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008252C2: lea esi, var_6C
008252C5: mov edi, esp
008252C7: movsd 
008252C8: movsd 
008252C9: movsd 
008252CA: movsd 
008252CB: push 00000001h
008252CD: push 004469F4h
008252D2: push 00000010h
008252D4: pop eax
008252D5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008252DA: lea esi, var_4C
008252DD: mov edi, esp
008252DF: movsd 
008252E0: movsd 
008252E1: movsd 
008252E2: movsd 
008252E3: push 00000001h
008252E5: push 00000000h
008252E7: mov eax, [ebp+08h]
008252EA: mov eax, [eax]
008252EC: push [ebp+08h]
008252EF: call [eax+00000374h]
008252F5: push eax
008252F6: lea eax, var_28
008252F9: push eax
008252FA: call 00410A84h ; Set (object)
008252FF: push eax
00825300: lea eax, var_3C
00825303: push eax
00825304: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00825309: add esp, 00000020h
0082530C: push eax
0082530D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00825312: push eax
00825313: lea eax, var_2C
00825316: push eax
00825317: call 00410A84h ; Set (object)
0082531C: push eax
0082531D: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00825322: lea eax, var_2C
00825325: push eax
00825326: lea eax, var_28
00825329: push eax
0082532A: push 00000002h
0082532C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00825331: add esp, 0000000Ch
00825334: lea ecx, var_3C
00825337: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082533C: mov var_64, 00446774h ; Privileges
00825343: mov var_6C, 00000008h
0082534A: mov var_44, 00000006h
00825351: mov var_4C, 00000003h
00825358: push 00000010h
0082535A: pop eax
0082535B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825360: lea esi, var_6C
00825363: mov edi, esp
00825365: movsd 
00825366: movsd 
00825367: movsd 
00825368: movsd 
00825369: push 00000001h
0082536B: push 004469F4h
00825370: push 00000010h
00825372: pop eax
00825373: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825378: lea esi, var_4C
0082537B: mov edi, esp
0082537D: movsd 
0082537E: movsd 
0082537F: movsd 
00825380: movsd 
00825381: push 00000001h
00825383: push 00000000h
00825385: mov eax, [ebp+08h]
00825388: mov eax, [eax]
0082538A: push [ebp+08h]
0082538D: call [eax+00000374h]
00825393: push eax
00825394: lea eax, var_28
00825397: push eax
00825398: call 00410A84h ; Set (object)
0082539D: push eax
0082539E: lea eax, var_3C
008253A1: push eax
008253A2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008253A7: add esp, 00000020h
008253AA: push eax
008253AB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008253B0: push eax
008253B1: lea eax, var_2C
008253B4: push eax
008253B5: call 00410A84h ; Set (object)
008253BA: push eax
008253BB: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008253C0: lea eax, var_2C
008253C3: push eax
008253C4: lea eax, var_28
008253C7: push eax
008253C8: push 00000002h
008253CA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008253CF: add esp, 0000000Ch
008253D2: lea ecx, var_3C
008253D5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008253DA: mov var_64, 004465CCh ; OS
008253E1: mov var_6C, 00000008h
008253E8: mov var_44, 00000007h
008253EF: mov var_4C, 00000003h
008253F6: push 00000010h
008253F8: pop eax
008253F9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008253FE: lea esi, var_6C
00825401: mov edi, esp
00825403: movsd 
00825404: movsd 
00825405: movsd 
00825406: movsd 
00825407: push 00000001h
00825409: push 004469F4h
0082540E: push 00000010h
00825410: pop eax
00825411: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825416: lea esi, var_4C
00825419: mov edi, esp
0082541B: movsd 
0082541C: movsd 
0082541D: movsd 
0082541E: movsd 
0082541F: push 00000001h
00825421: push 00000000h
00825423: mov eax, [ebp+08h]
00825426: mov eax, [eax]
00825428: push [ebp+08h]
0082542B: call [eax+00000374h]
00825431: push eax
00825432: lea eax, var_28
00825435: push eax
00825436: call 00410A84h ; Set (object)
0082543B: push eax
0082543C: lea eax, var_3C
0082543F: push eax
00825440: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00825445: add esp, 00000020h
00825448: push eax
00825449: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082544E: push eax
0082544F: lea eax, var_2C
00825452: push eax
00825453: call 00410A84h ; Set (object)
00825458: push eax
00825459: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082545E: lea eax, var_2C
00825461: push eax
00825462: lea eax, var_28
00825465: push eax
00825466: push 00000002h
00825468: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082546D: add esp, 0000000Ch
00825470: lea ecx, var_3C
00825473: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00825478: mov var_64, 004463F0h ; Uptime
0082547F: mov var_6C, 00000008h
00825486: mov var_44, 00000008h
0082548D: mov var_4C, 00000003h
00825494: push 00000010h
00825496: pop eax
00825497: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082549C: lea esi, var_6C
0082549F: mov edi, esp
008254A1: movsd 
008254A2: movsd 
008254A3: movsd 
008254A4: movsd 
008254A5: push 00000001h
008254A7: push 004469F4h
008254AC: push 00000010h
008254AE: pop eax
008254AF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008254B4: lea esi, var_4C
008254B7: mov edi, esp
008254B9: movsd 
008254BA: movsd 
008254BB: movsd 
008254BC: movsd 
008254BD: push 00000001h
008254BF: push 00000000h
008254C1: mov eax, [ebp+08h]
008254C4: mov eax, [eax]
008254C6: push [ebp+08h]
008254C9: call [eax+00000374h]
008254CF: push eax
008254D0: lea eax, var_28
008254D3: push eax
008254D4: call 00410A84h ; Set (object)
008254D9: push eax
008254DA: lea eax, var_3C
008254DD: push eax
008254DE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008254E3: add esp, 00000020h
008254E6: push eax
008254E7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008254EC: push eax
008254ED: lea eax, var_2C
008254F0: push eax
008254F1: call 00410A84h ; Set (object)
008254F6: push eax
008254F7: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008254FC: lea eax, var_2C
008254FF: push eax
00825500: lea eax, var_28
00825503: push eax
00825504: push 00000002h
00825506: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082550B: add esp, 0000000Ch
0082550E: lea ecx, var_3C
00825511: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00825516: mov var_64, 00446404h ; Idle
0082551D: mov var_6C, 00000008h
00825524: mov var_44, 00000009h
0082552B: mov var_4C, 00000003h
00825532: push 00000010h
00825534: pop eax
00825535: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082553A: lea esi, var_6C
0082553D: mov edi, esp
0082553F: movsd 
00825540: movsd 
00825541: movsd 
00825542: movsd 
00825543: push 00000001h
00825545: push 004469F4h
0082554A: push 00000010h
0082554C: pop eax
0082554D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825552: lea esi, var_4C
00825555: mov edi, esp
00825557: movsd 
00825558: movsd 
00825559: movsd 
0082555A: movsd 
0082555B: push 00000001h
0082555D: push 00000000h
0082555F: mov eax, [ebp+08h]
00825562: mov eax, [eax]
00825564: push [ebp+08h]
00825567: call [eax+00000374h]
0082556D: push eax
0082556E: lea eax, var_28
00825571: push eax
00825572: call 00410A84h ; Set (object)
00825577: push eax
00825578: lea eax, var_3C
0082557B: push eax
0082557C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00825581: add esp, 00000020h
00825584: push eax
00825585: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082558A: push eax
0082558B: lea eax, var_2C
0082558E: push eax
0082558F: call 00410A84h ; Set (object)
00825594: push eax
00825595: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082559A: lea eax, var_2C
0082559D: push eax
0082559E: lea eax, var_28
008255A1: push eax
008255A2: push 00000002h
008255A4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008255A9: add esp, 0000000Ch
008255AC: lea ecx, var_3C
008255AF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008255B4: mov var_64, 00445794h ; Ping
008255BB: mov var_6C, 00000008h
008255C2: mov var_44, 0000000Ah
008255C9: mov var_4C, 00000003h
008255D0: push 00000010h
008255D2: pop eax
008255D3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008255D8: lea esi, var_6C
008255DB: mov edi, esp
008255DD: movsd 
008255DE: movsd 
008255DF: movsd 
008255E0: movsd 
008255E1: push 00000001h
008255E3: push 004469F4h
008255E8: push 00000010h
008255EA: pop eax
008255EB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008255F0: lea esi, var_4C
008255F3: mov edi, esp
008255F5: movsd 
008255F6: movsd 
008255F7: movsd 
008255F8: movsd 
008255F9: push 00000001h
008255FB: push 00000000h
008255FD: mov eax, [ebp+08h]
00825600: mov eax, [eax]
00825602: push [ebp+08h]
00825605: call [eax+00000374h]
0082560B: push eax
0082560C: lea eax, var_28
0082560F: push eax
00825610: call 00410A84h ; Set (object)
00825615: push eax
00825616: lea eax, var_3C
00825619: push eax
0082561A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082561F: add esp, 00000020h
00825622: push eax
00825623: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00825628: push eax
00825629: lea eax, var_2C
0082562C: push eax
0082562D: call 00410A84h ; Set (object)
00825632: push eax
00825633: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00825638: lea eax, var_2C
0082563B: push eax
0082563C: lea eax, var_28
0082563F: push eax
00825640: push 00000002h
00825642: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00825647: add esp, 0000000Ch
0082564A: lea ecx, var_3C
0082564D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00825652: mov var_64, 00446794h ; Socks4
00825659: mov var_6C, 00000008h
00825660: mov var_44, 0000000Bh
00825667: mov var_4C, 00000003h
0082566E: push 00000010h
00825670: pop eax
00825671: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825676: lea esi, var_6C
00825679: mov edi, esp
0082567B: movsd 
0082567C: movsd 
0082567D: movsd 
0082567E: movsd 
0082567F: push 00000001h
00825681: push 004469F4h
00825686: push 00000010h
00825688: pop eax
00825689: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082568E: lea esi, var_4C
00825691: mov edi, esp
00825693: movsd 
00825694: movsd 
00825695: movsd 
00825696: movsd 
00825697: push 00000001h
00825699: push 00000000h
0082569B: mov eax, [ebp+08h]
0082569E: mov eax, [eax]
008256A0: push [ebp+08h]
008256A3: call [eax+00000374h]
008256A9: push eax
008256AA: lea eax, var_28
008256AD: push eax
008256AE: call 00410A84h ; Set (object)
008256B3: push eax
008256B4: lea eax, var_3C
008256B7: push eax
008256B8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008256BD: add esp, 00000020h
008256C0: push eax
008256C1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008256C6: push eax
008256C7: lea eax, var_2C
008256CA: push eax
008256CB: call 00410A84h ; Set (object)
008256D0: push eax
008256D1: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008256D6: lea eax, var_2C
008256D9: push eax
008256DA: lea eax, var_28
008256DD: push eax
008256DE: push 00000002h
008256E0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008256E5: add esp, 0000000Ch
008256E8: lea ecx, var_3C
008256EB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008256F0: mov var_64, 004467A8h ; Country
008256F7: mov var_6C, 00000008h
008256FE: mov var_44, 0000000Ch
00825705: mov var_4C, 00000003h
0082570C: push 00000010h
0082570E: pop eax
0082570F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825714: lea esi, var_6C
00825717: mov edi, esp
00825719: movsd 
0082571A: movsd 
0082571B: movsd 
0082571C: movsd 
0082571D: push 00000001h
0082571F: push 004469F4h
00825724: push 00000010h
00825726: pop eax
00825727: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082572C: lea esi, var_4C
0082572F: mov edi, esp
00825731: movsd 
00825732: movsd 
00825733: movsd 
00825734: movsd 
00825735: push 00000001h
00825737: push 00000000h
00825739: mov eax, [ebp+08h]
0082573C: mov eax, [eax]
0082573E: push [ebp+08h]
00825741: call [eax+00000374h]
00825747: push eax
00825748: lea eax, var_28
0082574B: push eax
0082574C: call 00410A84h ; Set (object)
00825751: push eax
00825752: lea eax, var_3C
00825755: push eax
00825756: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082575B: add esp, 00000020h
0082575E: push eax
0082575F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00825764: push eax
00825765: lea eax, var_2C
00825768: push eax
00825769: call 00410A84h ; Set (object)
0082576E: push eax
0082576F: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00825774: lea eax, var_2C
00825777: push eax
00825778: lea eax, var_28
0082577B: push eax
0082577C: push 00000002h
0082577E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00825783: add esp, 0000000Ch
00825786: lea ecx, var_3C
00825789: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082578E: mov var_64, 004467BCh ; Version
00825795: mov var_6C, 00000008h
0082579C: mov var_44, 0000000Dh
008257A3: mov var_4C, 00000003h
008257AA: push 00000010h
008257AC: pop eax
008257AD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008257B2: lea esi, var_6C
008257B5: mov edi, esp
008257B7: movsd 
008257B8: movsd 
008257B9: movsd 
008257BA: movsd 
008257BB: push 00000001h
008257BD: push 004469F4h
008257C2: push 00000010h
008257C4: pop eax
008257C5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008257CA: lea esi, var_4C
008257CD: mov edi, esp
008257CF: movsd 
008257D0: movsd 
008257D1: movsd 
008257D2: movsd 
008257D3: push 00000001h
008257D5: push 00000000h
008257D7: mov eax, [ebp+08h]
008257DA: mov eax, [eax]
008257DC: push [ebp+08h]
008257DF: call [eax+00000374h]
008257E5: push eax
008257E6: lea eax, var_28
008257E9: push eax
008257EA: call 00410A84h ; Set (object)
008257EF: push eax
008257F0: lea eax, var_3C
008257F3: push eax
008257F4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008257F9: add esp, 00000020h
008257FC: push eax
008257FD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00825802: push eax
00825803: lea eax, var_2C
00825806: push eax
00825807: call 00410A84h ; Set (object)
0082580C: push eax
0082580D: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00825812: lea eax, var_2C
00825815: push eax
00825816: lea eax, var_28
00825819: push eax
0082581A: push 00000002h
0082581C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00825821: add esp, 0000000Ch
00825824: lea ecx, var_3C
00825827: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082582C: mov var_44, 00000001h
00825833: mov var_4C, 00000002h
0082583A: mov var_54, 0000003Ch
00825841: mov var_5C, 00000002h
00825848: mov var_64, 00000001h
0082584F: mov var_6C, 00000002h
00825856: lea eax, var_4C
00825859: push eax
0082585A: lea eax, var_5C
0082585D: push eax
0082585E: lea eax, var_6C
00825861: push eax
00825862: lea eax, var_0000009C
00825868: push eax
00825869: lea eax, var_0000008C
0082586F: push eax
00825870: lea eax, var_24
00825873: push eax
00825874: call 00410A3Ch ; For
00825879: mov var_000000A8, eax
0082587F: jmp 8258F7h
00825881: lea eax, var_24
00825884: push eax
00825885: call 00410862h ; msvbvm60.dll.__vbaStrVarCopy
0082588A: mov var_34, eax
0082588D: mov var_3C, 00000008h
00825894: push 00000010h
00825896: pop eax
00825897: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082589C: lea esi, var_3C
0082589F: mov edi, esp
008258A1: movsd 
008258A2: movsd 
008258A3: movsd 
008258A4: movsd 
008258A5: push 00000001h
008258A7: push 0000000Dh
008258A9: mov eax, [ebp+08h]
008258AC: mov eax, [eax]
008258AE: push [ebp+08h]
008258B1: call [eax+000003C4h]
008258B7: push eax
008258B8: lea eax, var_28
008258BB: push eax
008258BC: call 00410A84h ; Set (object)
008258C1: push eax
008258C2: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008258C7: add esp, 0000001Ch
008258CA: lea ecx, var_28
008258CD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008258D2: lea ecx, var_3C
008258D5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008258DA: lea eax, var_0000009C
008258E0: push eax
008258E1: lea eax, var_0000008C
008258E7: push eax
008258E8: lea eax, var_24
008258EB: push eax
008258EC: call 00410A36h ; Next
008258F1: mov var_000000A8, eax
008258F7: cmp var_000000A8, 00000000h
008258FE: jnz 825881h
00825900: mov var_44, 00453EF0h ; 30
00825907: mov var_4C, 00000008h
0082590E: push 00000010h
00825910: pop eax
00825911: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825916: lea esi, var_4C
00825919: mov edi, esp
0082591B: movsd 
0082591C: movsd 
0082591D: movsd 
0082591E: movsd 
0082591F: push 00000000h
00825921: mov eax, [ebp+08h]
00825924: mov eax, [eax]
00825926: push [ebp+08h]
00825929: call [eax+000003C4h]
0082592F: push eax
00825930: lea eax, var_28
00825933: push eax
00825934: call 00410A84h ; Set (object)
00825939: push eax
0082593A: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082593F: lea ecx, var_28
00825942: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00825947: mov var_04, 00000000h
0082594E: push 00825991h
00825953: jmp 825970h
00825955: lea eax, var_2C
00825958: push eax
00825959: lea eax, var_28
0082595C: push eax
0082595D: push 00000002h
0082595F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00825964: add esp, 0000000Ch
00825967: lea ecx, var_3C
0082596A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082596F: ret 
End Sub

Private sub Form__82E865
0082E865: push ebp
0082E866: mov ebp, esp
0082E868: sub esp, 0000000Ch
0082E86B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0082E870: mov eax, fs:[00h]
0082E876: push eax
0082E877: mov fs:[00000000h], esp
0082E87E: push 00000010h
0082E880: pop eax
0082E881: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082E886: push ebx
0082E887: push esi
0082E888: push edi
0082E889: mov var_0C, esp
0082E88C: mov var_08, 0040B690h
0082E893: mov eax, [ebp+08h]
0082E896: and eax, 00000001h
0082E899: mov var_04, eax
0082E89C: mov eax, [ebp+08h]
0082E89F: and al, FEh
0082E8A1: mov [ebp+08h], eax
0082E8A4: mov eax, [ebp+08h]
0082E8A7: mov eax, [eax]
0082E8A9: push [ebp+08h]
0082E8AC: call [eax+04h]
0082E8AF: push 00000000h
0082E8B1: mov eax, [ebp+08h]
0082E8B4: mov eax, [eax]
0082E8B6: push [ebp+08h]
0082E8B9: call [eax+000001BCh]
0082E8BF: fclex 
0082E8C1: mov var_18, eax
0082E8C4: cmp var_18, 00000000h
0082E8C8: jnl 82E8E4h
0082E8CA: push 000001BCh
0082E8CF: push 004442E0h
0082E8D4: push [ebp+08h]
0082E8D7: push var_18
0082E8DA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082E8DF: mov var_24, eax
0082E8E2: jmp 82E8E8h
0082E8E4: and var_24, 00000000h
0082E8E8: mov eax, [ebp+0Ch]
0082E8EB: or word ptr [eax], FFFFh
0082E8EF: mov var_04, 00000000h
0082E8F6: mov eax, [ebp+08h]
0082E8F9: mov eax, [eax]
0082E8FB: push [ebp+08h]
0082E8FE: call [eax+08h]
0082E901: mov eax, var_04
0082E904: mov ecx, var_14
0082E907: mov fs:[00000000h], ecx
0082E90E: pop edi
0082E90F: pop esi
0082E910: pop ebx
0082E911: leave 
0082E912: retn 0008h
End Sub

Private sub txtUsername__82F942
0082F942: push ebp
0082F943: mov ebp, esp
0082F945: sub esp, 0000000Ch
0082F948: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0082F94D: mov eax, fs:[00h]
0082F953: push eax
0082F954: mov fs:[00000000h], esp
0082F95B: push 00000070h
0082F95D: pop eax
0082F95E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082F963: push ebx
0082F964: push esi
0082F965: push edi
0082F966: mov var_0C, esp
0082F969: mov var_08, 0040B6E0h
0082F970: mov eax, [ebp+08h]
0082F973: and eax, 00000001h
0082F976: mov var_04, eax
0082F979: mov eax, [ebp+08h]
0082F97C: and al, FEh
0082F97E: mov [ebp+08h], eax
0082F981: mov eax, [ebp+08h]
0082F984: mov eax, [eax]
0082F986: push [ebp+08h]
0082F989: call [eax+04h]
0082F98C: mov eax, [ebp+08h]
0082F98F: mov eax, [eax]
0082F991: push [ebp+08h]
0082F994: call [eax+00000328h]
0082F99A: push eax
0082F99B: lea eax, var_1C
0082F99E: push eax
0082F99F: call 00410A84h ; Set (object)
0082F9A4: mov var_48, eax
0082F9A7: lea eax, var_18
0082F9AA: push eax
0082F9AB: mov eax, var_48
0082F9AE: mov eax, [eax]
0082F9B0: push var_48
0082F9B3: call [eax+000000A0h]
0082F9B9: fclex 
0082F9BB: mov var_4C, eax
0082F9BE: cmp var_4C, 00000000h
0082F9C2: jnl 82F9DEh
0082F9C4: push 000000A0h
0082F9C9: push 00440E08h
0082F9CE: push var_48
0082F9D1: push var_4C
0082F9D4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F9D9: mov var_68, eax
0082F9DC: jmp 82F9E2h
0082F9DE: and var_68, 00000000h
0082F9E2: push var_18
0082F9E5: call 0041098Eh ; Len(arg_1)
0082F9EA: xor ecx, ecx
0082F9EC: test eax, eax
0082F9EE: setnle cl
0082F9F1: neg ecx
0082F9F3: mov var_50, cx
0082F9F7: lea ecx, var_18
0082F9FA: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082F9FF: lea ecx, var_1C
0082FA02: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0082FA07: movsx eax, word ptr var_50
0082FA0B: test eax, eax
0082FA0D: jz 0082FBA5h
0082FA13: mov var_2C, 00000001h
0082FA1A: mov var_34, 00000003h
0082FA21: mov eax, [ebp+08h]
0082FA24: mov eax, [eax]
0082FA26: push [ebp+08h]
0082FA29: call [eax+00000370h]
0082FA2F: push eax
0082FA30: lea eax, var_1C
0082FA33: push eax
0082FA34: call 00410A84h ; Set (object)
0082FA39: mov var_48, eax
0082FA3C: lea eax, var_20
0082FA3F: push eax
0082FA40: push 00000006h
0082FA42: mov eax, var_48
0082FA45: mov eax, [eax]
0082FA47: push var_48
0082FA4A: call [eax+40h]
0082FA4D: fclex 
0082FA4F: mov var_4C, eax
0082FA52: cmp var_4C, 00000000h
0082FA56: jnl 82FA6Fh
0082FA58: push 00000040h
0082FA5A: push 00440DE8h
0082FA5F: push var_48
0082FA62: push var_4C
0082FA65: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082FA6A: mov var_6C, eax
0082FA6D: jmp 82FA73h
0082FA6F: and var_6C, 00000000h
0082FA73: push 00000010h
0082FA75: pop eax
0082FA76: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082FA7B: lea esi, var_34
0082FA7E: mov edi, esp
0082FA80: movsd 
0082FA81: movsd 
0082FA82: movsd 
0082FA83: movsd 
0082FA84: push 00000000h
0082FA86: push var_20
0082FA89: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082FA8E: lea eax, var_20
0082FA91: push eax
0082FA92: lea eax, var_1C
0082FA95: push eax
0082FA96: push 00000002h
0082FA98: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082FA9D: add esp, 0000000Ch
0082FAA0: mov eax, [ebp+08h]
0082FAA3: mov eax, [eax]
0082FAA5: push [ebp+08h]
0082FAA8: call [eax+0000036Ch]
0082FAAE: push eax
0082FAAF: lea eax, var_1C
0082FAB2: push eax
0082FAB3: call 00410A84h ; Set (object)
0082FAB8: mov var_50, eax
0082FABB: lea eax, var_20
0082FABE: push eax
0082FABF: push 00000006h
0082FAC1: mov eax, var_50
0082FAC4: mov eax, [eax]
0082FAC6: push var_50
0082FAC9: call [eax+40h]
0082FACC: fclex 
0082FACE: mov var_54, eax
0082FAD1: cmp var_54, 00000000h
0082FAD5: jnl 82FAEEh
0082FAD7: push 00000040h
0082FAD9: push 00440DE8h
0082FADE: push var_50
0082FAE1: push var_54
0082FAE4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082FAE9: mov var_70, eax
0082FAEC: jmp 82FAF2h
0082FAEE: and var_70, 00000000h
0082FAF2: mov eax, var_20
0082FAF5: mov var_58, eax
0082FAF8: mov eax, [ebp+08h]
0082FAFB: mov eax, [eax]
0082FAFD: push [ebp+08h]
0082FB00: call [eax+00000328h]
0082FB06: push eax
0082FB07: lea eax, var_24
0082FB0A: push eax
0082FB0B: call 00410A84h ; Set (object)
0082FB10: mov var_48, eax
0082FB13: lea eax, var_18
0082FB16: push eax
0082FB17: mov eax, var_48
0082FB1A: mov eax, [eax]
0082FB1C: push var_48
0082FB1F: call [eax+000000A0h]
0082FB25: fclex 
0082FB27: mov var_4C, eax
0082FB2A: cmp var_4C, 00000000h
0082FB2E: jnl 82FB4Ah
0082FB30: push 000000A0h
0082FB35: push 00440E08h
0082FB3A: push var_48
0082FB3D: push var_4C
0082FB40: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082FB45: mov var_74, eax
0082FB48: jmp 82FB4Eh
0082FB4A: and var_74, 00000000h
0082FB4E: push var_18
0082FB51: mov eax, var_58
0082FB54: mov eax, [eax]
0082FB56: push var_58
0082FB59: call [eax+54h]
0082FB5C: fclex 
0082FB5E: mov var_5C, eax
0082FB61: cmp var_5C, 00000000h
0082FB65: jnl 82FB7Eh
0082FB67: push 00000054h
0082FB69: push 004425E4h
0082FB6E: push var_58
0082FB71: push var_5C
0082FB74: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082FB79: mov var_78, eax
0082FB7C: jmp 82FB82h
0082FB7E: and var_78, 00000000h
0082FB82: lea ecx, var_18
0082FB85: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082FB8A: lea eax, var_20
0082FB8D: push eax
0082FB8E: lea eax, var_24
0082FB91: push eax
0082FB92: lea eax, var_1C
0082FB95: push eax
0082FB96: push 00000003h
0082FB98: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082FB9D: add esp, 00000010h
0082FBA0: jmp 0082FCD5h
0082FBA5: and var_2C, 00000000h
0082FBA9: mov var_34, 00000003h
0082FBB0: mov eax, [ebp+08h]
0082FBB3: mov eax, [eax]
0082FBB5: push [ebp+08h]
0082FBB8: call [eax+00000370h]
0082FBBE: push eax
0082FBBF: lea eax, var_1C
0082FBC2: push eax
0082FBC3: call 00410A84h ; Set (object)
0082FBC8: mov var_48, eax
0082FBCB: lea eax, var_20
0082FBCE: push eax
0082FBCF: push 00000006h
0082FBD1: mov eax, var_48
0082FBD4: mov eax, [eax]
0082FBD6: push var_48
0082FBD9: call [eax+40h]
0082FBDC: fclex 
0082FBDE: mov var_4C, eax
0082FBE1: cmp var_4C, 00000000h
0082FBE5: jnl 82FBFEh
0082FBE7: push 00000040h
0082FBE9: push 00440DE8h
0082FBEE: push var_48
0082FBF1: push var_4C
0082FBF4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082FBF9: mov var_7C, eax
0082FBFC: jmp 82FC02h
0082FBFE: and var_7C, 00000000h
0082FC02: push 00000010h
0082FC04: pop eax
0082FC05: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082FC0A: lea esi, var_34
0082FC0D: mov edi, esp
0082FC0F: movsd 
0082FC10: movsd 
0082FC11: movsd 
0082FC12: movsd 
0082FC13: push 00000000h
0082FC15: push var_20
0082FC18: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082FC1D: lea eax, var_20
0082FC20: push eax
0082FC21: lea eax, var_1C
0082FC24: push eax
0082FC25: push 00000002h
0082FC27: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082FC2C: add esp, 0000000Ch
0082FC2F: mov eax, [ebp+08h]
0082FC32: mov eax, [eax]
0082FC34: push [ebp+08h]
0082FC37: call [eax+0000036Ch]
0082FC3D: push eax
0082FC3E: lea eax, var_1C
0082FC41: push eax
0082FC42: call 00410A84h ; Set (object)
0082FC47: mov var_48, eax
0082FC4A: lea eax, var_20
0082FC4D: push eax
0082FC4E: push 00000006h
0082FC50: mov eax, var_48
0082FC53: mov eax, [eax]
0082FC55: push var_48
0082FC58: call [eax+40h]
0082FC5B: fclex 
0082FC5D: mov var_4C, eax
0082FC60: cmp var_4C, 00000000h
0082FC64: jnl 82FC7Dh
0082FC66: push 00000040h
0082FC68: push 00440DE8h
0082FC6D: push var_48
0082FC70: push var_4C
0082FC73: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082FC78: mov var_80, eax
0082FC7B: jmp 82FC81h
0082FC7D: and var_80, 00000000h
0082FC81: mov eax, var_20
0082FC84: mov var_50, eax
0082FC87: push 00453EB4h ; Not set
0082FC8C: mov eax, var_50
0082FC8F: mov eax, [eax]
0082FC91: push var_50
0082FC94: call [eax+54h]
0082FC97: fclex 
0082FC99: mov var_54, eax
0082FC9C: cmp var_54, 00000000h
0082FCA0: jnl 82FCBCh
0082FCA2: push 00000054h
0082FCA4: push 004425E4h
0082FCA9: push var_50
0082FCAC: push var_54
0082FCAF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082FCB4: mov var_00000084, eax
0082FCBA: jmp 82FCC3h
0082FCBC: and var_00000084, 00000000h
0082FCC3: lea eax, var_20
0082FCC6: push eax
0082FCC7: lea eax, var_1C
0082FCCA: push eax
0082FCCB: push 00000002h
0082FCCD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082FCD2: add esp, 0000000Ch
0082FCD5: mov var_04, 00000000h
0082FCDC: push 0082FD03h
0082FCE1: jmp 82FD02h
0082FCE3: lea ecx, var_18
0082FCE6: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082FCEB: lea eax, var_24
0082FCEE: push eax
0082FCEF: lea eax, var_20
0082FCF2: push eax
0082FCF3: lea eax, var_1C
0082FCF6: push eax
0082FCF7: push 00000003h
0082FCF9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082FCFE: add esp, 00000010h
0082FD01: ret 
End Sub

Private sub chkAutoRefresh__823D72
00823D72: push ebp
00823D73: mov ebp, esp
00823D75: sub esp, 0000000Ch
00823D78: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00823D7D: mov eax, fs:[00h]
00823D83: push eax
00823D84: mov fs:[00000000h], esp
00823D8B: push 00000054h
00823D8D: pop eax
00823D8E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00823D93: push ebx
00823D94: push esi
00823D95: push edi
00823D96: mov var_0C, esp
00823D99: mov var_08, 0040B180h
00823DA0: mov eax, [ebp+08h]
00823DA3: and eax, 00000001h
00823DA6: mov var_04, eax
00823DA9: mov eax, [ebp+08h]
00823DAC: and al, FEh
00823DAE: mov [ebp+08h], eax
00823DB1: mov eax, [ebp+08h]
00823DB4: mov eax, [eax]
00823DB6: push [ebp+08h]
00823DB9: call [eax+04h]
00823DBC: push 00000000h
00823DBE: push 00000000h
00823DC0: mov eax, [ebp+08h]
00823DC3: mov eax, [eax]
00823DC5: push [ebp+08h]
00823DC8: call [eax+000003C0h]
00823DCE: push eax
00823DCF: lea eax, var_1C
00823DD2: push eax
00823DD3: call 00410A84h ; Set (object)
00823DD8: push eax
00823DD9: lea eax, var_30
00823DDC: push eax
00823DDD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00823DE2: add esp, 00000010h
00823DE5: push eax
00823DE6: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00823DEB: neg eax
00823DED: sbb eax, eax
00823DEF: neg eax
00823DF1: neg eax
00823DF3: mov var_38, ax
00823DF7: mov var_40, 0000000Bh
00823DFE: push 00000010h
00823E00: pop eax
00823E01: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00823E06: lea esi, var_40
00823E09: mov edi, esp
00823E0B: movsd 
00823E0C: movsd 
00823E0D: movsd 
00823E0E: movsd 
00823E0F: push 8001000Dh
00823E14: mov eax, [ebp+08h]
00823E17: mov eax, [eax]
00823E19: push [ebp+08h]
00823E1C: call [eax+000003C4h]
00823E22: push eax
00823E23: lea eax, var_20
00823E26: push eax
00823E27: call 00410A84h ; Set (object)
00823E2C: push eax
00823E2D: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00823E32: lea eax, var_20
00823E35: push eax
00823E36: lea eax, var_1C
00823E39: push eax
00823E3A: push 00000002h
00823E3C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00823E41: add esp, 0000000Ch
00823E44: lea eax, var_40
00823E47: push eax
00823E48: lea eax, var_30
00823E4B: push eax
00823E4C: push 00000002h
00823E4E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00823E53: add esp, 0000000Ch
00823E56: mov eax, [ebp+08h]
00823E59: mov eax, [eax]
00823E5B: push [ebp+08h]
00823E5E: call [eax+000002FCh]
00823E64: push eax
00823E65: lea eax, var_20
00823E68: push eax
00823E69: call 00410A84h ; Set (object)
00823E6E: mov var_54, eax
00823E71: push 00000000h
00823E73: push 00000000h
00823E75: mov eax, [ebp+08h]
00823E78: mov eax, [eax]
00823E7A: push [ebp+08h]
00823E7D: call [eax+000003C4h]
00823E83: push eax
00823E84: lea eax, var_1C
00823E87: push eax
00823E88: call 00410A84h ; Set (object)
00823E8D: push eax
00823E8E: lea eax, var_30
00823E91: push eax
00823E92: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00823E97: add esp, 00000010h
00823E9A: push eax
00823E9B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00823EA0: mov edx, eax
00823EA2: lea ecx, var_18
00823EA5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00823EAA: push eax
00823EAB: call 004109DCh ; Val(arg_1)
00823EB0: fmul real8 ptr [0040B178h]
00823EB6: fstsw ax
00823EB8: test al, 0Dh
00823EBA: jnz 00824009h
00823EC0: call 00410814h ; msvbvm60.dll.__vbaFpI4
00823EC5: push eax
00823EC6: mov eax, var_54
00823EC9: mov eax, [eax]
00823ECB: push var_54
00823ECE: call [eax+64h]
00823ED1: fclex 
00823ED3: mov var_58, eax
00823ED6: cmp var_58, 00000000h
00823EDA: jnl 823EF3h
00823EDC: push 00000064h
00823EDE: push 00447A20h
00823EE3: push var_54
00823EE6: push var_58
00823EE9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00823EEE: mov var_64, eax
00823EF1: jmp 823EF7h
00823EF3: and var_64, 00000000h
00823EF7: lea ecx, var_18
00823EFA: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00823EFF: lea eax, var_20
00823F02: push eax
00823F03: lea eax, var_1C
00823F06: push eax
00823F07: push 00000002h
00823F09: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00823F0E: add esp, 0000000Ch
00823F11: lea ecx, var_30
00823F14: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00823F19: mov eax, [ebp+08h]
00823F1C: mov eax, [eax]
00823F1E: push [ebp+08h]
00823F21: call [eax+000002FCh]
00823F27: push eax
00823F28: lea eax, var_20
00823F2B: push eax
00823F2C: call 00410A84h ; Set (object)
00823F31: mov var_54, eax
00823F34: push 00000000h
00823F36: push 00000000h
00823F38: mov eax, [ebp+08h]
00823F3B: mov eax, [eax]
00823F3D: push [ebp+08h]
00823F40: call [eax+000003C0h]
00823F46: push eax
00823F47: lea eax, var_1C
00823F4A: push eax
00823F4B: call 00410A84h ; Set (object)
00823F50: push eax
00823F51: lea eax, var_30
00823F54: push eax
00823F55: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00823F5A: add esp, 00000010h
00823F5D: push eax
00823F5E: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00823F63: neg eax
00823F65: sbb eax, eax
00823F67: neg eax
00823F69: neg eax
00823F6B: push eax
00823F6C: mov eax, var_54
00823F6F: mov eax, [eax]
00823F71: push var_54
00823F74: call [eax+5Ch]
00823F77: fclex 
00823F79: mov var_58, eax
00823F7C: cmp var_58, 00000000h
00823F80: jnl 823F99h
00823F82: push 0000005Ch
00823F84: push 00447A20h
00823F89: push var_54
00823F8C: push var_58
00823F8F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00823F94: mov var_68, eax
00823F97: jmp 823F9Dh
00823F99: and var_68, 00000000h
00823F9D: lea eax, var_20
00823FA0: push eax
00823FA1: lea eax, var_1C
00823FA4: push eax
00823FA5: push 00000002h
00823FA7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00823FAC: add esp, 0000000Ch
00823FAF: lea ecx, var_30
00823FB2: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00823FB7: mov var_04, 00000000h
00823FBE: wait 
00823FBF: push 00823FEAh
00823FC4: jmp 823FE9h
00823FC6: lea ecx, var_18
00823FC9: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00823FCE: lea eax, var_20
00823FD1: push eax
00823FD2: lea eax, var_1C
00823FD5: push eax
00823FD6: push 00000002h
00823FD8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00823FDD: add esp, 0000000Ch
00823FE0: lea ecx, var_30
00823FE3: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00823FE8: ret 
End Sub

Private sub tmrAutoRefresh__82E915
0082E915: push ebp
0082E916: mov ebp, esp
0082E918: sub esp, 0000000Ch
0082E91B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0082E920: mov eax, fs:[00h]
0082E926: push eax
0082E927: mov fs:[00000000h], esp
0082E92E: push 00000010h
0082E930: pop eax
0082E931: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082E936: push ebx
0082E937: push esi
0082E938: push edi
0082E939: mov var_0C, esp
0082E93C: mov var_08, 0040B698h
0082E943: mov eax, [ebp+08h]
0082E946: and eax, 00000001h
0082E949: mov var_04, eax
0082E94C: mov eax, [ebp+08h]
0082E94F: and al, FEh
0082E951: mov [ebp+08h], eax
0082E954: mov eax, [ebp+08h]
0082E957: mov eax, [eax]
0082E959: push [ebp+08h]
0082E95C: call [eax+04h]
0082E95F: mov eax, [ebp+08h]
0082E962: mov eax, [eax]
0082E964: push [ebp+08h]
0082E967: call [eax+00000700h]
0082E96D: mov var_18, eax
0082E970: cmp var_18, 00000000h
0082E974: jnl 82E990h
0082E976: push 00000700h
0082E97B: push 00444310h
0082E980: push [ebp+08h]
0082E983: push var_18
0082E986: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082E98B: mov var_24, eax
0082E98E: jmp 82E994h
0082E990: and var_24, 00000000h
0082E994: or word ptr [008F2430h], FFFFh
0082E99C: mov var_04, 00000000h
0082E9A3: mov eax, [ebp+08h]
0082E9A6: mov eax, [eax]
0082E9A8: push [ebp+08h]
0082E9AB: call [eax+08h]
0082E9AE: mov eax, var_04
0082E9B1: mov ecx, var_14
0082E9B4: mov fs:[00000000h], ecx
0082E9BB: pop edi
0082E9BC: pop esi
0082E9BD: pop ebx
0082E9BE: leave 
0082E9BF: retn 0004h
End Sub

Private sub chkCol__82400E
0082400E: push ebp
0082400F: mov ebp, esp
00824011: sub esp, 0000000Ch
00824014: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00824019: mov eax, fs:[00h]
0082401F: push eax
00824020: mov fs:[00000000h], esp
00824027: mov eax, 000000E8h
0082402C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00824031: push ebx
00824032: push esi
00824033: push edi
00824034: mov var_0C, esp
00824037: mov var_08, 0040B190h
0082403E: mov eax, [ebp+08h]
00824041: and eax, 00000001h
00824044: mov var_04, eax
00824047: mov eax, [ebp+08h]
0082404A: and al, FEh
0082404C: mov [ebp+08h], eax
0082404F: mov eax, [ebp+08h]
00824052: mov eax, [eax]
00824054: push [ebp+08h]
00824057: call [eax+04h]
0082405A: mov eax, [ebp+0Ch]
0082405D: cmp word ptr [eax], 0003h
00824061: jnle 00824109h
00824067: or var_54, FFFFFFFFh
0082406B: mov var_5C, 0000000Bh
00824072: mov eax, [ebp+0Ch]
00824075: movsx eax, word ptr [eax]
00824078: mov var_34, eax
0082407B: mov var_3C, 00000003h
00824082: push 00000010h
00824084: pop eax
00824085: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082408A: lea esi, var_5C
0082408D: mov edi, esp
0082408F: movsd 
00824090: movsd 
00824091: movsd 
00824092: movsd 
00824093: push 00000004h
00824095: push 004469F4h
0082409A: push 00000010h
0082409C: pop eax
0082409D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008240A2: lea esi, var_3C
008240A5: mov edi, esp
008240A7: movsd 
008240A8: movsd 
008240A9: movsd 
008240AA: movsd 
008240AB: push 00000001h
008240AD: push 00000000h
008240AF: mov eax, [ebp+08h]
008240B2: mov eax, [eax]
008240B4: push [ebp+08h]
008240B7: call [eax+00000374h]
008240BD: push eax
008240BE: lea eax, var_18
008240C1: push eax
008240C2: call 00410A84h ; Set (object)
008240C7: push eax
008240C8: lea eax, var_2C
008240CB: push eax
008240CC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008240D1: add esp, 00000020h
008240D4: push eax
008240D5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008240DA: push eax
008240DB: lea eax, var_1C
008240DE: push eax
008240DF: call 00410A84h ; Set (object)
008240E4: push eax
008240E5: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008240EA: lea eax, var_1C
008240ED: push eax
008240EE: lea eax, var_18
008240F1: push eax
008240F2: push 00000002h
008240F4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008240F9: add esp, 0000000Ch
008240FC: lea ecx, var_2C
008240FF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00824104: jmp 008241B3h
00824109: or var_54, FFFFFFFFh
0082410D: mov var_5C, 0000000Bh
00824114: mov eax, [ebp+0Ch]
00824117: mov ax, [eax]
0082411A: sub ax, 0002h
0082411E: jo 00824CC4h
00824124: movsx eax, ax
00824127: mov var_34, eax
0082412A: mov var_3C, 00000003h
00824131: push 00000010h
00824133: pop eax
00824134: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00824139: lea esi, var_5C
0082413C: mov edi, esp
0082413E: movsd 
0082413F: movsd 
00824140: movsd 
00824141: movsd 
00824142: push 00000004h
00824144: push 004469F4h
00824149: push 00000010h
0082414B: pop eax
0082414C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00824151: lea esi, var_3C
00824154: mov edi, esp
00824156: movsd 
00824157: movsd 
00824158: movsd 
00824159: movsd 
0082415A: push 00000001h
0082415C: push 00000000h
0082415E: mov eax, [ebp+08h]
00824161: mov eax, [eax]
00824163: push [ebp+08h]
00824166: call [eax+00000374h]
0082416C: push eax
0082416D: lea eax, var_18
00824170: push eax
00824171: call 00410A84h ; Set (object)
00824176: push eax
00824177: lea eax, var_2C
0082417A: push eax
0082417B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00824180: add esp, 00000020h
00824183: push eax
00824184: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00824189: push eax
0082418A: lea eax, var_1C
0082418D: push eax
0082418E: call 00410A84h ; Set (object)
00824193: push eax
00824194: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00824199: lea eax, var_1C
0082419C: push eax
0082419D: lea eax, var_18
008241A0: push eax
008241A1: push 00000002h
008241A3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008241A8: add esp, 0000000Ch
008241AB: lea ecx, var_2C
008241AE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008241B3: mov eax, [ebp+08h]
008241B6: mov eax, [eax]
008241B8: push [ebp+08h]
008241BB: call [eax+00000370h]
008241C1: push eax
008241C2: lea eax, var_18
008241C5: push eax
008241C6: call 00410A84h ; Set (object)
008241CB: mov var_70, eax
008241CE: lea eax, var_1C
008241D1: push eax
008241D2: mov eax, [ebp+0Ch]
008241D5: mov ax, [eax]
008241D8: push eax
008241D9: mov eax, var_70
008241DC: mov eax, [eax]
008241DE: push var_70
008241E1: call [eax+40h]
008241E4: fclex 
008241E6: mov var_74, eax
008241E9: cmp var_74, 00000000h
008241ED: jnl 824209h
008241EF: push 00000040h
008241F1: push 00440DE8h
008241F6: push var_70
008241F9: push var_74
008241FC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00824201: mov var_0000008C, eax
00824207: jmp 824210h
00824209: and var_0000008C, 00000000h
00824210: push 00000000h
00824212: push 00000000h
00824214: push var_1C
00824217: lea eax, var_2C
0082421A: push eax
0082421B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00824220: add esp, 00000010h
00824223: push eax
00824224: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00824229: neg eax
0082422B: sbb eax, eax
0082422D: inc eax
0082422E: neg eax
00824230: mov var_78, ax
00824234: lea eax, var_1C
00824237: push eax
00824238: lea eax, var_18
0082423B: push eax
0082423C: push 00000002h
0082423E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00824243: add esp, 0000000Ch
00824246: lea ecx, var_2C
00824249: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082424E: movsx eax, word ptr var_78
00824252: test eax, eax
00824254: jz 00824C3Bh
0082425A: mov eax, [ebp+0Ch]
0082425D: mov ax, [eax]
00824260: mov var_80, ax
00824264: movsx eax, word ptr var_80
00824268: mov var_00000090, eax
0082426E: cmp var_00000090, 0000000Fh
00824275: jnbe 00824B8Ah
0082427B: mov eax, var_00000090
00824281: jmp [eax*4+00824C84h]
00824288: mov eax, [ebp+08h]
0082428B: mov eax, [eax]
0082428D: push [ebp+08h]
00824290: call [eax+00000338h]
00824296: push eax
00824297: lea eax, var_18
0082429A: push eax
0082429B: call 00410A84h ; Set (object)
008242A0: mov var_70, eax
008242A3: push 00000000h
008242A5: mov eax, var_70
008242A8: mov eax, [eax]
008242AA: push var_70
008242AD: call [eax+000000A4h]
008242B3: fclex 
008242B5: mov var_74, eax
008242B8: cmp var_74, 00000000h
008242BC: jnl 8242DBh
008242BE: push 000000A4h
008242C3: push 00440E08h
008242C8: push var_70
008242CB: push var_74
008242CE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008242D3: mov var_00000094, eax
008242D9: jmp 8242E2h
008242DB: and var_00000094, 00000000h
008242E2: lea ecx, var_18
008242E5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008242EA: jmp 00824B8Ah
008242EF: mov eax, [ebp+08h]
008242F2: mov eax, [eax]
008242F4: push [ebp+08h]
008242F7: call [eax+00000334h]
008242FD: push eax
008242FE: lea eax, var_18
00824301: push eax
00824302: call 00410A84h ; Set (object)
00824307: mov var_70, eax
0082430A: push 00000000h
0082430C: mov eax, var_70
0082430F: mov eax, [eax]
00824311: push var_70
00824314: call [eax+000000A4h]
0082431A: fclex 
0082431C: mov var_74, eax
0082431F: cmp var_74, 00000000h
00824323: jnl 824342h
00824325: push 000000A4h
0082432A: push 00440E08h
0082432F: push var_70
00824332: push var_74
00824335: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082433A: mov var_00000098, eax
00824340: jmp 824349h
00824342: and var_00000098, 00000000h
00824349: lea ecx, var_18
0082434C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00824351: jmp 00824B8Ah
00824356: mov eax, [ebp+08h]
00824359: mov eax, [eax]
0082435B: push [ebp+08h]
0082435E: call [eax+0000032Ch]
00824364: push eax
00824365: lea eax, var_18
00824368: push eax
00824369: call 00410A84h ; Set (object)
0082436E: mov var_70, eax
00824371: push 00000000h
00824373: mov eax, var_70
00824376: mov eax, [eax]
00824378: push var_70
0082437B: call [eax+000000A4h]
00824381: fclex 
00824383: mov var_74, eax
00824386: cmp var_74, 00000000h
0082438A: jnl 8243A9h
0082438C: push 000000A4h
00824391: push 00440E08h
00824396: push var_70
00824399: push var_74
0082439C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008243A1: mov var_0000009C, eax
008243A7: jmp 8243B0h
008243A9: and var_0000009C, 00000000h
008243B0: lea ecx, var_18
008243B3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008243B8: jmp 00824B8Ah
008243BD: mov eax, [ebp+08h]
008243C0: mov eax, [eax]
008243C2: push [ebp+08h]
008243C5: call [eax+00000330h]
008243CB: push eax
008243CC: lea eax, var_18
008243CF: push eax
008243D0: call 00410A84h ; Set (object)
008243D5: mov var_70, eax
008243D8: push 00000000h
008243DA: mov eax, var_70
008243DD: mov eax, [eax]
008243DF: push var_70
008243E2: call [eax+000000A4h]
008243E8: fclex 
008243EA: mov var_74, eax
008243ED: cmp var_74, 00000000h
008243F1: jnl 824410h
008243F3: push 000000A4h
008243F8: push 00440E08h
008243FD: push var_70
00824400: push var_74
00824403: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00824408: mov var_000000A0, eax
0082440E: jmp 824417h
00824410: and var_000000A0, 00000000h
00824417: lea ecx, var_18
0082441A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0082441F: jmp 00824B8Ah
00824424: mov eax, [ebp+08h]
00824427: mov eax, [eax]
00824429: push [ebp+08h]
0082442C: call [eax+00000328h]
00824432: push eax
00824433: lea eax, var_18
00824436: push eax
00824437: call 00410A84h ; Set (object)
0082443C: mov var_70, eax
0082443F: push 00000000h
00824441: mov eax, var_70
00824444: mov eax, [eax]
00824446: push var_70
00824449: call [eax+000000A4h]
0082444F: fclex 
00824451: mov var_74, eax
00824454: cmp var_74, 00000000h
00824458: jnl 824477h
0082445A: push 000000A4h
0082445F: push 00440E08h
00824464: push var_70
00824467: push var_74
0082446A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082446F: mov var_000000A4, eax
00824475: jmp 82447Eh
00824477: and var_000000A4, 00000000h
0082447E: lea ecx, var_18
00824481: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00824486: jmp 00824B8Ah
0082448B: mov eax, [ebp+08h]
0082448E: mov eax, [eax]
00824490: push [ebp+08h]
00824493: call [eax+00000324h]
00824499: push eax
0082449A: lea eax, var_18
0082449D: push eax
0082449E: call 00410A84h ; Set (object)
008244A3: mov var_70, eax
008244A6: push 00000000h
008244A8: mov eax, var_70
008244AB: mov eax, [eax]
008244AD: push var_70
008244B0: call [eax+000000A4h]
008244B6: fclex 
008244B8: mov var_74, eax
008244BB: cmp var_74, 00000000h
008244BF: jnl 8244DEh
008244C1: push 000000A4h
008244C6: push 00440E08h
008244CB: push var_70
008244CE: push var_74
008244D1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008244D6: mov var_000000A8, eax
008244DC: jmp 8244E5h
008244DE: and var_000000A8, 00000000h
008244E5: lea ecx, var_18
008244E8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008244ED: jmp 00824B8Ah
008244F2: mov eax, [ebp+08h]
008244F5: mov eax, [eax]
008244F7: push [ebp+08h]
008244FA: call [eax+00000320h]
00824500: push eax
00824501: lea eax, var_18
00824504: push eax
00824505: call 00410A84h ; Set (object)
0082450A: mov var_70, eax
0082450D: push 00000000h
0082450F: mov eax, var_70
00824512: mov eax, [eax]
00824514: push var_70
00824517: call [eax+000000A4h]
0082451D: fclex 
0082451F: mov var_74, eax
00824522: cmp var_74, 00000000h
00824526: jnl 824545h
00824528: push 000000A4h
0082452D: push 00440E08h
00824532: push var_70
00824535: push var_74
00824538: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082453D: mov var_000000AC, eax
00824543: jmp 82454Ch
00824545: and var_000000AC, 00000000h
0082454C: lea ecx, var_18
0082454F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00824554: jmp 00824B8Ah
00824559: mov eax, [ebp+08h]
0082455C: mov eax, [eax]
0082455E: push [ebp+08h]
00824561: call [eax+0000031Ch]
00824567: push eax
00824568: lea eax, var_18
0082456B: push eax
0082456C: call 00410A84h ; Set (object)
00824571: mov var_70, eax
00824574: push 00000000h
00824576: mov eax, var_70
00824579: mov eax, [eax]
0082457B: push var_70
0082457E: call [eax+000000A4h]
00824584: fclex 
00824586: mov var_74, eax
00824589: cmp var_74, 00000000h
0082458D: jnl 8245ACh
0082458F: push 000000A4h
00824594: push 00440E08h
00824599: push var_70
0082459C: push var_74
0082459F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008245A4: mov var_000000B0, eax
008245AA: jmp 8245B3h
008245AC: and var_000000B0, 00000000h
008245B3: lea ecx, var_18
008245B6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008245BB: jmp 00824B8Ah
008245C0: mov eax, [ebp+08h]
008245C3: mov eax, [eax]
008245C5: push [ebp+08h]
008245C8: call [eax+00000318h]
008245CE: push eax
008245CF: lea eax, var_18
008245D2: push eax
008245D3: call 00410A84h ; Set (object)
008245D8: mov var_70, eax
008245DB: lea eax, var_1C
008245DE: push eax
008245DF: push 00000000h
008245E1: mov eax, var_70
008245E4: mov eax, [eax]
008245E6: push var_70
008245E9: call [eax+40h]
008245EC: fclex 
008245EE: mov var_74, eax
008245F1: cmp var_74, 00000000h
008245F5: jnl 824611h
008245F7: push 00000040h
008245F9: push 00440DE8h
008245FE: push var_70
00824601: push var_74
00824604: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00824609: mov var_000000B8, eax
0082460F: jmp 824618h
00824611: and var_000000B8, 00000000h
00824618: mov eax, var_1C
0082461B: mov var_78, eax
0082461E: push 00442930h
00824623: mov eax, var_78
00824626: mov eax, [eax]
00824628: push var_78
0082462B: call [eax+000000A4h]
00824631: fclex 
00824633: mov var_7C, eax
00824636: cmp var_7C, 00000000h
0082463A: jnl 824659h
0082463C: push 000000A4h
00824641: push 00440E08h
00824646: push var_78
00824649: push var_7C
0082464C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00824651: mov var_000000BC, eax
00824657: jmp 824660h
00824659: and var_000000BC, 00000000h
00824660: lea eax, var_1C
00824663: push eax
00824664: lea eax, var_18
00824667: push eax
00824668: push 00000002h
0082466A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082466F: add esp, 0000000Ch
00824672: mov eax, [ebp+08h]
00824675: mov eax, [eax]
00824677: push [ebp+08h]
0082467A: call [eax+00000318h]
00824680: push eax
00824681: lea eax, var_18
00824684: push eax
00824685: call 00410A84h ; Set (object)
0082468A: mov var_70, eax
0082468D: lea eax, var_1C
00824690: push eax
00824691: push 00000001h
00824693: mov eax, var_70
00824696: mov eax, [eax]
00824698: push var_70
0082469B: call [eax+40h]
0082469E: fclex 
008246A0: mov var_74, eax
008246A3: cmp var_74, 00000000h
008246A7: jnl 8246C3h
008246A9: push 00000040h
008246AB: push 00440DE8h
008246B0: push var_70
008246B3: push var_74
008246B6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008246BB: mov var_000000C0, eax
008246C1: jmp 8246CAh
008246C3: and var_000000C0, 00000000h
008246CA: mov eax, var_1C
008246CD: mov var_78, eax
008246D0: push 00442930h
008246D5: mov eax, var_78
008246D8: mov eax, [eax]
008246DA: push var_78
008246DD: call [eax+000000A4h]
008246E3: fclex 
008246E5: mov var_7C, eax
008246E8: cmp var_7C, 00000000h
008246EC: jnl 82470Bh
008246EE: push 000000A4h
008246F3: push 00440E08h
008246F8: push var_78
008246FB: push var_7C
008246FE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00824703: mov var_000000C4, eax
00824709: jmp 824712h
0082470B: and var_000000C4, 00000000h
00824712: lea eax, var_1C
00824715: push eax
00824716: lea eax, var_18
00824719: push eax
0082471A: push 00000002h
0082471C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00824721: add esp, 0000000Ch
00824724: mov eax, [ebp+08h]
00824727: mov eax, [eax]
00824729: push [ebp+08h]
0082472C: call [eax+00000318h]
00824732: push eax
00824733: lea eax, var_18
00824736: push eax
00824737: call 00410A84h ; Set (object)
0082473C: mov var_70, eax
0082473F: lea eax, var_1C
00824742: push eax
00824743: push 00000002h
00824745: mov eax, var_70
00824748: mov eax, [eax]
0082474A: push var_70
0082474D: call [eax+40h]
00824750: fclex 
00824752: mov var_74, eax
00824755: cmp var_74, 00000000h
00824759: jnl 824775h
0082475B: push 00000040h
0082475D: push 00440DE8h
00824762: push var_70
00824765: push var_74
00824768: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082476D: mov var_000000C8, eax
00824773: jmp 82477Ch
00824775: and var_000000C8, 00000000h
0082477C: mov eax, var_1C
0082477F: mov var_78, eax
00824782: push 00442930h
00824787: mov eax, var_78
0082478A: mov eax, [eax]
0082478C: push var_78
0082478F: call [eax+000000A4h]
00824795: fclex 
00824797: mov var_7C, eax
0082479A: cmp var_7C, 00000000h
0082479E: jnl 8247BDh
008247A0: push 000000A4h
008247A5: push 00440E08h
008247AA: push var_78
008247AD: push var_7C
008247B0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008247B5: mov var_000000CC, eax
008247BB: jmp 8247C4h
008247BD: and var_000000CC, 00000000h
008247C4: lea eax, var_1C
008247C7: push eax
008247C8: lea eax, var_18
008247CB: push eax
008247CC: push 00000002h
008247CE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008247D3: add esp, 0000000Ch
008247D6: jmp 00824B8Ah
008247DB: mov eax, [ebp+08h]
008247DE: mov eax, [eax]
008247E0: push [ebp+08h]
008247E3: call [eax+00000314h]
008247E9: push eax
008247EA: lea eax, var_18
008247ED: push eax
008247EE: call 00410A84h ; Set (object)
008247F3: mov var_70, eax
008247F6: lea eax, var_1C
008247F9: push eax
008247FA: push 00000000h
008247FC: mov eax, var_70
008247FF: mov eax, [eax]
00824801: push var_70
00824804: call [eax+40h]
00824807: fclex 
00824809: mov var_74, eax
0082480C: cmp var_74, 00000000h
00824810: jnl 82482Ch
00824812: push 00000040h
00824814: push 00440DE8h
00824819: push var_70
0082481C: push var_74
0082481F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00824824: mov var_000000D0, eax
0082482A: jmp 824833h
0082482C: and var_000000D0, 00000000h
00824833: mov eax, var_1C
00824836: mov var_78, eax
00824839: push 00442930h
0082483E: mov eax, var_78
00824841: mov eax, [eax]
00824843: push var_78
00824846: call [eax+000000A4h]
0082484C: fclex 
0082484E: mov var_7C, eax
00824851: cmp var_7C, 00000000h
00824855: jnl 824874h
00824857: push 000000A4h
0082485C: push 00440E08h
00824861: push var_78
00824864: push var_7C
00824867: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082486C: mov var_000000D4, eax
00824872: jmp 82487Bh
00824874: and var_000000D4, 00000000h
0082487B: lea eax, var_1C
0082487E: push eax
0082487F: lea eax, var_18
00824882: push eax
00824883: push 00000002h
00824885: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082488A: add esp, 0000000Ch
0082488D: mov eax, [ebp+08h]
00824890: mov eax, [eax]
00824892: push [ebp+08h]
00824895: call [eax+00000314h]
0082489B: push eax
0082489C: lea eax, var_18
0082489F: push eax
008248A0: call 00410A84h ; Set (object)
008248A5: mov var_70, eax
008248A8: lea eax, var_1C
008248AB: push eax
008248AC: push 00000001h
008248AE: mov eax, var_70
008248B1: mov eax, [eax]
008248B3: push var_70
008248B6: call [eax+40h]
008248B9: fclex 
008248BB: mov var_74, eax
008248BE: cmp var_74, 00000000h
008248C2: jnl 8248DEh
008248C4: push 00000040h
008248C6: push 00440DE8h
008248CB: push var_70
008248CE: push var_74
008248D1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008248D6: mov var_000000D8, eax
008248DC: jmp 8248E5h
008248DE: and var_000000D8, 00000000h
008248E5: mov eax, var_1C
008248E8: mov var_78, eax
008248EB: push 00442930h
008248F0: mov eax, var_78
008248F3: mov eax, [eax]
008248F5: push var_78
008248F8: call [eax+000000A4h]
008248FE: fclex 
00824900: mov var_7C, eax
00824903: cmp var_7C, 00000000h
00824907: jnl 824926h
00824909: push 000000A4h
0082490E: push 00440E08h
00824913: push var_78
00824916: push var_7C
00824919: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082491E: mov var_000000DC, eax
00824924: jmp 82492Dh
00824926: and var_000000DC, 00000000h
0082492D: lea eax, var_1C
00824930: push eax
00824931: lea eax, var_18
00824934: push eax
00824935: push 00000002h
00824937: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082493C: add esp, 0000000Ch
0082493F: mov eax, [ebp+08h]
00824942: mov eax, [eax]
00824944: push [ebp+08h]
00824947: call [eax+00000314h]
0082494D: push eax
0082494E: lea eax, var_18
00824951: push eax
00824952: call 00410A84h ; Set (object)
00824957: mov var_70, eax
0082495A: lea eax, var_1C
0082495D: push eax
0082495E: push 00000002h
00824960: mov eax, var_70
00824963: mov eax, [eax]
00824965: push var_70
00824968: call [eax+40h]
0082496B: fclex 
0082496D: mov var_74, eax
00824970: cmp var_74, 00000000h
00824974: jnl 824990h
00824976: push 00000040h
00824978: push 00440DE8h
0082497D: push var_70
00824980: push var_74
00824983: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00824988: mov var_000000E0, eax
0082498E: jmp 824997h
00824990: and var_000000E0, 00000000h
00824997: mov eax, var_1C
0082499A: mov var_78, eax
0082499D: push 00442930h
008249A2: mov eax, var_78
008249A5: mov eax, [eax]
008249A7: push var_78
008249AA: call [eax+000000A4h]
008249B0: fclex 
008249B2: mov var_7C, eax
008249B5: cmp var_7C, 00000000h
008249B9: jnl 8249D8h
008249BB: push 000000A4h
008249C0: push 00440E08h
008249C5: push var_78
008249C8: push var_7C
008249CB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008249D0: mov var_000000E4, eax
008249D6: jmp 8249DFh
008249D8: and var_000000E4, 00000000h
008249DF: lea eax, var_1C
008249E2: push eax
008249E3: lea eax, var_18
008249E6: push eax
008249E7: push 00000002h
008249E9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008249EE: add esp, 0000000Ch
008249F1: jmp 00824B8Ah
008249F6: mov eax, [ebp+08h]
008249F9: mov eax, [eax]
008249FB: push [ebp+08h]
008249FE: call [eax+00000310h]
00824A04: push eax
00824A05: lea eax, var_18
00824A08: push eax
00824A09: call 00410A84h ; Set (object)
00824A0E: mov var_70, eax
00824A11: push 00000000h
00824A13: mov eax, var_70
00824A16: mov eax, [eax]
00824A18: push var_70
00824A1B: call [eax+000000A4h]
00824A21: fclex 
00824A23: mov var_74, eax
00824A26: cmp var_74, 00000000h
00824A2A: jnl 824A49h
00824A2C: push 000000A4h
00824A31: push 00440E08h
00824A36: push var_70
00824A39: push var_74
00824A3C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00824A41: mov var_000000E8, eax
00824A47: jmp 824A50h
00824A49: and var_000000E8, 00000000h
00824A50: lea ecx, var_18
00824A53: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00824A58: jmp 00824B8Ah
00824A5D: mov eax, [ebp+08h]
00824A60: mov eax, [eax]
00824A62: push [ebp+08h]
00824A65: call [eax+0000030Ch]
00824A6B: push eax
00824A6C: lea eax, var_18
00824A6F: push eax
00824A70: call 00410A84h ; Set (object)
00824A75: mov var_70, eax
00824A78: push 00000000h
00824A7A: mov eax, var_70
00824A7D: mov eax, [eax]
00824A7F: push var_70
00824A82: call [eax+000000A4h]
00824A88: fclex 
00824A8A: mov var_74, eax
00824A8D: cmp var_74, 00000000h
00824A91: jnl 824AB0h
00824A93: push 000000A4h
00824A98: push 00440E08h
00824A9D: push var_70
00824AA0: push var_74
00824AA3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00824AA8: mov var_000000EC, eax
00824AAE: jmp 824AB7h
00824AB0: and var_000000EC, 00000000h
00824AB7: lea ecx, var_18
00824ABA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00824ABF: jmp 00824B8Ah
00824AC4: mov eax, [ebp+08h]
00824AC7: mov eax, [eax]
00824AC9: push [ebp+08h]
00824ACC: call [eax+00000308h]
00824AD2: push eax
00824AD3: lea eax, var_18
00824AD6: push eax
00824AD7: call 00410A84h ; Set (object)
00824ADC: mov var_70, eax
00824ADF: push 00000000h
00824AE1: mov eax, var_70
00824AE4: mov eax, [eax]
00824AE6: push var_70
00824AE9: call [eax+000000A4h]
00824AEF: fclex 
00824AF1: mov var_74, eax
00824AF4: cmp var_74, 00000000h
00824AF8: jnl 824B17h
00824AFA: push 000000A4h
00824AFF: push 00440E08h
00824B04: push var_70
00824B07: push var_74
00824B0A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00824B0F: mov var_000000F0, eax
00824B15: jmp 824B1Eh
00824B17: and var_000000F0, 00000000h
00824B1E: lea ecx, var_18
00824B21: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00824B26: jmp 824B8Ah
00824B28: mov eax, [ebp+08h]
00824B2B: mov eax, [eax]
00824B2D: push [ebp+08h]
00824B30: call [eax+00000304h]
00824B36: push eax
00824B37: lea eax, var_18
00824B3A: push eax
00824B3B: call 00410A84h ; Set (object)
00824B40: mov var_70, eax
00824B43: push 00000000h
00824B45: mov eax, var_70
00824B48: mov eax, [eax]
00824B4A: push var_70
00824B4D: call [eax+000000A4h]
00824B53: fclex 
00824B55: mov var_74, eax
00824B58: cmp var_74, 00000000h
00824B5C: jnl 824B7Bh
00824B5E: push 000000A4h
00824B63: push 00440E08h
00824B68: push var_70
00824B6B: push var_74
00824B6E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00824B73: mov var_000000F4, eax
00824B79: jmp 824B82h
00824B7B: and var_000000F4, 00000000h
00824B82: lea ecx, var_18
00824B85: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00824B8A: mov eax, [ebp+08h]
00824B8D: mov eax, [eax]
00824B8F: push [ebp+08h]
00824B92: call [eax+0000036Ch]
00824B98: push eax
00824B99: lea eax, var_18
00824B9C: push eax
00824B9D: call 00410A84h ; Set (object)
00824BA2: mov var_70, eax
00824BA5: lea eax, var_1C
00824BA8: push eax
00824BA9: mov eax, [ebp+0Ch]
00824BAC: mov ax, [eax]
00824BAF: push eax
00824BB0: mov eax, var_70
00824BB3: mov eax, [eax]
00824BB5: push var_70
00824BB8: call [eax+40h]
00824BBB: fclex 
00824BBD: mov var_74, eax
00824BC0: cmp var_74, 00000000h
00824BC4: jnl 824BE0h
00824BC6: push 00000040h
00824BC8: push 00440DE8h
00824BCD: push var_70
00824BD0: push var_74
00824BD3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00824BD8: mov var_000000F8, eax
00824BDE: jmp 824BE7h
00824BE0: and var_000000F8, 00000000h
00824BE7: mov eax, var_1C
00824BEA: mov var_78, eax
00824BED: push 00453EB4h ; Not set
00824BF2: mov eax, var_78
00824BF5: mov eax, [eax]
00824BF7: push var_78
00824BFA: call [eax+54h]
00824BFD: fclex 
00824BFF: mov var_7C, eax
00824C02: cmp var_7C, 00000000h
00824C06: jnl 824C22h
00824C08: push 00000054h
00824C0A: push 004425E4h
00824C0F: push var_78
00824C12: push var_7C
00824C15: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00824C1A: mov var_000000FC, eax
00824C20: jmp 824C29h
00824C22: and var_000000FC, 00000000h
00824C29: lea eax, var_1C
00824C2C: push eax
00824C2D: lea eax, var_18
00824C30: push eax
00824C31: push 00000002h
00824C33: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00824C38: add esp, 0000000Ch
00824C3B: mov var_04, 00000000h
00824C42: push 00824C65h
00824C47: jmp 824C64h
00824C49: lea eax, var_1C
00824C4C: push eax
00824C4D: lea eax, var_18
00824C50: push eax
00824C51: push 00000002h
00824C53: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00824C58: add esp, 0000000Ch
00824C5B: lea ecx, var_2C
00824C5E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00824C63: ret 
End Sub

Private sub txtID__82E9C2
0082E9C2: push ebp
0082E9C3: mov ebp, esp
0082E9C5: sub esp, 0000000Ch
0082E9C8: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0082E9CD: mov eax, fs:[00h]
0082E9D3: push eax
0082E9D4: mov fs:[00000000h], esp
0082E9DB: push 00000070h
0082E9DD: pop eax
0082E9DE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082E9E3: push ebx
0082E9E4: push esi
0082E9E5: push edi
0082E9E6: mov var_0C, esp
0082E9E9: mov var_08, 0040B6A0h
0082E9F0: mov eax, [ebp+08h]
0082E9F3: and eax, 00000001h
0082E9F6: mov var_04, eax
0082E9F9: mov eax, [ebp+08h]
0082E9FC: and al, FEh
0082E9FE: mov [ebp+08h], eax
0082EA01: mov eax, [ebp+08h]
0082EA04: mov eax, [eax]
0082EA06: push [ebp+08h]
0082EA09: call [eax+04h]
0082EA0C: mov eax, [ebp+08h]
0082EA0F: mov eax, [eax]
0082EA11: push [ebp+08h]
0082EA14: call [eax+00000338h]
0082EA1A: push eax
0082EA1B: lea eax, var_1C
0082EA1E: push eax
0082EA1F: call 00410A84h ; Set (object)
0082EA24: mov var_48, eax
0082EA27: lea eax, var_18
0082EA2A: push eax
0082EA2B: mov eax, var_48
0082EA2E: mov eax, [eax]
0082EA30: push var_48
0082EA33: call [eax+000000A0h]
0082EA39: fclex 
0082EA3B: mov var_4C, eax
0082EA3E: cmp var_4C, 00000000h
0082EA42: jnl 82EA5Eh
0082EA44: push 000000A0h
0082EA49: push 00440E08h
0082EA4E: push var_48
0082EA51: push var_4C
0082EA54: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082EA59: mov var_68, eax
0082EA5C: jmp 82EA62h
0082EA5E: and var_68, 00000000h
0082EA62: push var_18
0082EA65: call 0041098Eh ; Len(arg_1)
0082EA6A: xor ecx, ecx
0082EA6C: test eax, eax
0082EA6E: setnle cl
0082EA71: neg ecx
0082EA73: mov var_50, cx
0082EA77: lea ecx, var_18
0082EA7A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082EA7F: lea ecx, var_1C
0082EA82: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0082EA87: movsx eax, word ptr var_50
0082EA8B: test eax, eax
0082EA8D: jz 0082EC25h
0082EA93: mov var_2C, 00000001h
0082EA9A: mov var_34, 00000003h
0082EAA1: mov eax, [ebp+08h]
0082EAA4: mov eax, [eax]
0082EAA6: push [ebp+08h]
0082EAA9: call [eax+00000370h]
0082EAAF: push eax
0082EAB0: lea eax, var_1C
0082EAB3: push eax
0082EAB4: call 00410A84h ; Set (object)
0082EAB9: mov var_48, eax
0082EABC: lea eax, var_20
0082EABF: push eax
0082EAC0: push 00000000h
0082EAC2: mov eax, var_48
0082EAC5: mov eax, [eax]
0082EAC7: push var_48
0082EACA: call [eax+40h]
0082EACD: fclex 
0082EACF: mov var_4C, eax
0082EAD2: cmp var_4C, 00000000h
0082EAD6: jnl 82EAEFh
0082EAD8: push 00000040h
0082EADA: push 00440DE8h
0082EADF: push var_48
0082EAE2: push var_4C
0082EAE5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082EAEA: mov var_6C, eax
0082EAED: jmp 82EAF3h
0082EAEF: and var_6C, 00000000h
0082EAF3: push 00000010h
0082EAF5: pop eax
0082EAF6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082EAFB: lea esi, var_34
0082EAFE: mov edi, esp
0082EB00: movsd 
0082EB01: movsd 
0082EB02: movsd 
0082EB03: movsd 
0082EB04: push 00000000h
0082EB06: push var_20
0082EB09: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082EB0E: lea eax, var_20
0082EB11: push eax
0082EB12: lea eax, var_1C
0082EB15: push eax
0082EB16: push 00000002h
0082EB18: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082EB1D: add esp, 0000000Ch
0082EB20: mov eax, [ebp+08h]
0082EB23: mov eax, [eax]
0082EB25: push [ebp+08h]
0082EB28: call [eax+0000036Ch]
0082EB2E: push eax
0082EB2F: lea eax, var_1C
0082EB32: push eax
0082EB33: call 00410A84h ; Set (object)
0082EB38: mov var_50, eax
0082EB3B: lea eax, var_20
0082EB3E: push eax
0082EB3F: push 00000000h
0082EB41: mov eax, var_50
0082EB44: mov eax, [eax]
0082EB46: push var_50
0082EB49: call [eax+40h]
0082EB4C: fclex 
0082EB4E: mov var_54, eax
0082EB51: cmp var_54, 00000000h
0082EB55: jnl 82EB6Eh
0082EB57: push 00000040h
0082EB59: push 00440DE8h
0082EB5E: push var_50
0082EB61: push var_54
0082EB64: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082EB69: mov var_70, eax
0082EB6C: jmp 82EB72h
0082EB6E: and var_70, 00000000h
0082EB72: mov eax, var_20
0082EB75: mov var_58, eax
0082EB78: mov eax, [ebp+08h]
0082EB7B: mov eax, [eax]
0082EB7D: push [ebp+08h]
0082EB80: call [eax+00000338h]
0082EB86: push eax
0082EB87: lea eax, var_24
0082EB8A: push eax
0082EB8B: call 00410A84h ; Set (object)
0082EB90: mov var_48, eax
0082EB93: lea eax, var_18
0082EB96: push eax
0082EB97: mov eax, var_48
0082EB9A: mov eax, [eax]
0082EB9C: push var_48
0082EB9F: call [eax+000000A0h]
0082EBA5: fclex 
0082EBA7: mov var_4C, eax
0082EBAA: cmp var_4C, 00000000h
0082EBAE: jnl 82EBCAh
0082EBB0: push 000000A0h
0082EBB5: push 00440E08h
0082EBBA: push var_48
0082EBBD: push var_4C
0082EBC0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082EBC5: mov var_74, eax
0082EBC8: jmp 82EBCEh
0082EBCA: and var_74, 00000000h
0082EBCE: push var_18
0082EBD1: mov eax, var_58
0082EBD4: mov eax, [eax]
0082EBD6: push var_58
0082EBD9: call [eax+54h]
0082EBDC: fclex 
0082EBDE: mov var_5C, eax
0082EBE1: cmp var_5C, 00000000h
0082EBE5: jnl 82EBFEh
0082EBE7: push 00000054h
0082EBE9: push 004425E4h
0082EBEE: push var_58
0082EBF1: push var_5C
0082EBF4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082EBF9: mov var_78, eax
0082EBFC: jmp 82EC02h
0082EBFE: and var_78, 00000000h
0082EC02: lea ecx, var_18
0082EC05: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082EC0A: lea eax, var_20
0082EC0D: push eax
0082EC0E: lea eax, var_24
0082EC11: push eax
0082EC12: lea eax, var_1C
0082EC15: push eax
0082EC16: push 00000003h
0082EC18: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082EC1D: add esp, 00000010h
0082EC20: jmp 0082ED55h
0082EC25: and var_2C, 00000000h
0082EC29: mov var_34, 00000003h
0082EC30: mov eax, [ebp+08h]
0082EC33: mov eax, [eax]
0082EC35: push [ebp+08h]
0082EC38: call [eax+00000370h]
0082EC3E: push eax
0082EC3F: lea eax, var_1C
0082EC42: push eax
0082EC43: call 00410A84h ; Set (object)
0082EC48: mov var_48, eax
0082EC4B: lea eax, var_20
0082EC4E: push eax
0082EC4F: push 00000000h
0082EC51: mov eax, var_48
0082EC54: mov eax, [eax]
0082EC56: push var_48
0082EC59: call [eax+40h]
0082EC5C: fclex 
0082EC5E: mov var_4C, eax
0082EC61: cmp var_4C, 00000000h
0082EC65: jnl 82EC7Eh
0082EC67: push 00000040h
0082EC69: push 00440DE8h
0082EC6E: push var_48
0082EC71: push var_4C
0082EC74: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082EC79: mov var_7C, eax
0082EC7C: jmp 82EC82h
0082EC7E: and var_7C, 00000000h
0082EC82: push 00000010h
0082EC84: pop eax
0082EC85: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082EC8A: lea esi, var_34
0082EC8D: mov edi, esp
0082EC8F: movsd 
0082EC90: movsd 
0082EC91: movsd 
0082EC92: movsd 
0082EC93: push 00000000h
0082EC95: push var_20
0082EC98: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082EC9D: lea eax, var_20
0082ECA0: push eax
0082ECA1: lea eax, var_1C
0082ECA4: push eax
0082ECA5: push 00000002h
0082ECA7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082ECAC: add esp, 0000000Ch
0082ECAF: mov eax, [ebp+08h]
0082ECB2: mov eax, [eax]
0082ECB4: push [ebp+08h]
0082ECB7: call [eax+0000036Ch]
0082ECBD: push eax
0082ECBE: lea eax, var_1C
0082ECC1: push eax
0082ECC2: call 00410A84h ; Set (object)
0082ECC7: mov var_48, eax
0082ECCA: lea eax, var_20
0082ECCD: push eax
0082ECCE: push 00000000h
0082ECD0: mov eax, var_48
0082ECD3: mov eax, [eax]
0082ECD5: push var_48
0082ECD8: call [eax+40h]
0082ECDB: fclex 
0082ECDD: mov var_4C, eax
0082ECE0: cmp var_4C, 00000000h
0082ECE4: jnl 82ECFDh
0082ECE6: push 00000040h
0082ECE8: push 00440DE8h
0082ECED: push var_48
0082ECF0: push var_4C
0082ECF3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082ECF8: mov var_80, eax
0082ECFB: jmp 82ED01h
0082ECFD: and var_80, 00000000h
0082ED01: mov eax, var_20
0082ED04: mov var_50, eax
0082ED07: push 00453EB4h ; Not set
0082ED0C: mov eax, var_50
0082ED0F: mov eax, [eax]
0082ED11: push var_50
0082ED14: call [eax+54h]
0082ED17: fclex 
0082ED19: mov var_54, eax
0082ED1C: cmp var_54, 00000000h
0082ED20: jnl 82ED3Ch
0082ED22: push 00000054h
0082ED24: push 004425E4h
0082ED29: push var_50
0082ED2C: push var_54
0082ED2F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082ED34: mov var_00000084, eax
0082ED3A: jmp 82ED43h
0082ED3C: and var_00000084, 00000000h
0082ED43: lea eax, var_20
0082ED46: push eax
0082ED47: lea eax, var_1C
0082ED4A: push eax
0082ED4B: push 00000002h
0082ED4D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082ED52: add esp, 0000000Ch
0082ED55: mov var_04, 00000000h
0082ED5C: push 0082ED83h
0082ED61: jmp 82ED82h
0082ED63: lea ecx, var_18
0082ED66: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082ED6B: lea eax, var_24
0082ED6E: push eax
0082ED6F: lea eax, var_20
0082ED72: push eax
0082ED73: lea eax, var_1C
0082ED76: push eax
0082ED77: push 00000003h
0082ED79: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082ED7E: add esp, 00000010h
0082ED81: ret 
End Sub

Private sub txtWAN__82EDA2
0082EDA2: push ebp
0082EDA3: mov ebp, esp
0082EDA5: sub esp, 0000000Ch
0082EDA8: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0082EDAD: mov eax, fs:[00h]
0082EDB3: push eax
0082EDB4: mov fs:[00000000h], esp
0082EDBB: push 00000070h
0082EDBD: pop eax
0082EDBE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082EDC3: push ebx
0082EDC4: push esi
0082EDC5: push edi
0082EDC6: mov var_0C, esp
0082EDC9: mov var_08, 0040B6B0h
0082EDD0: mov eax, [ebp+08h]
0082EDD3: and eax, 00000001h
0082EDD6: mov var_04, eax
0082EDD9: mov eax, [ebp+08h]
0082EDDC: and al, FEh
0082EDDE: mov [ebp+08h], eax
0082EDE1: mov eax, [ebp+08h]
0082EDE4: mov eax, [eax]
0082EDE6: push [ebp+08h]
0082EDE9: call [eax+04h]
0082EDEC: mov eax, [ebp+08h]
0082EDEF: mov eax, [eax]
0082EDF1: push [ebp+08h]
0082EDF4: call [eax+00000334h]
0082EDFA: push eax
0082EDFB: lea eax, var_1C
0082EDFE: push eax
0082EDFF: call 00410A84h ; Set (object)
0082EE04: mov var_48, eax
0082EE07: lea eax, var_18
0082EE0A: push eax
0082EE0B: mov eax, var_48
0082EE0E: mov eax, [eax]
0082EE10: push var_48
0082EE13: call [eax+000000A0h]
0082EE19: fclex 
0082EE1B: mov var_4C, eax
0082EE1E: cmp var_4C, 00000000h
0082EE22: jnl 82EE3Eh
0082EE24: push 000000A0h
0082EE29: push 00440E08h
0082EE2E: push var_48
0082EE31: push var_4C
0082EE34: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082EE39: mov var_68, eax
0082EE3C: jmp 82EE42h
0082EE3E: and var_68, 00000000h
0082EE42: push var_18
0082EE45: call 0041098Eh ; Len(arg_1)
0082EE4A: xor ecx, ecx
0082EE4C: test eax, eax
0082EE4E: setnle cl
0082EE51: neg ecx
0082EE53: mov var_50, cx
0082EE57: lea ecx, var_18
0082EE5A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082EE5F: lea ecx, var_1C
0082EE62: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0082EE67: movsx eax, word ptr var_50
0082EE6B: test eax, eax
0082EE6D: jz 0082F005h
0082EE73: mov var_2C, 00000001h
0082EE7A: mov var_34, 00000003h
0082EE81: mov eax, [ebp+08h]
0082EE84: mov eax, [eax]
0082EE86: push [ebp+08h]
0082EE89: call [eax+00000370h]
0082EE8F: push eax
0082EE90: lea eax, var_1C
0082EE93: push eax
0082EE94: call 00410A84h ; Set (object)
0082EE99: mov var_48, eax
0082EE9C: lea eax, var_20
0082EE9F: push eax
0082EEA0: push 00000001h
0082EEA2: mov eax, var_48
0082EEA5: mov eax, [eax]
0082EEA7: push var_48
0082EEAA: call [eax+40h]
0082EEAD: fclex 
0082EEAF: mov var_4C, eax
0082EEB2: cmp var_4C, 00000000h
0082EEB6: jnl 82EECFh
0082EEB8: push 00000040h
0082EEBA: push 00440DE8h
0082EEBF: push var_48
0082EEC2: push var_4C
0082EEC5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082EECA: mov var_6C, eax
0082EECD: jmp 82EED3h
0082EECF: and var_6C, 00000000h
0082EED3: push 00000010h
0082EED5: pop eax
0082EED6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082EEDB: lea esi, var_34
0082EEDE: mov edi, esp
0082EEE0: movsd 
0082EEE1: movsd 
0082EEE2: movsd 
0082EEE3: movsd 
0082EEE4: push 00000000h
0082EEE6: push var_20
0082EEE9: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082EEEE: lea eax, var_20
0082EEF1: push eax
0082EEF2: lea eax, var_1C
0082EEF5: push eax
0082EEF6: push 00000002h
0082EEF8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082EEFD: add esp, 0000000Ch
0082EF00: mov eax, [ebp+08h]
0082EF03: mov eax, [eax]
0082EF05: push [ebp+08h]
0082EF08: call [eax+0000036Ch]
0082EF0E: push eax
0082EF0F: lea eax, var_1C
0082EF12: push eax
0082EF13: call 00410A84h ; Set (object)
0082EF18: mov var_50, eax
0082EF1B: lea eax, var_20
0082EF1E: push eax
0082EF1F: push 00000001h
0082EF21: mov eax, var_50
0082EF24: mov eax, [eax]
0082EF26: push var_50
0082EF29: call [eax+40h]
0082EF2C: fclex 
0082EF2E: mov var_54, eax
0082EF31: cmp var_54, 00000000h
0082EF35: jnl 82EF4Eh
0082EF37: push 00000040h
0082EF39: push 00440DE8h
0082EF3E: push var_50
0082EF41: push var_54
0082EF44: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082EF49: mov var_70, eax
0082EF4C: jmp 82EF52h
0082EF4E: and var_70, 00000000h
0082EF52: mov eax, var_20
0082EF55: mov var_58, eax
0082EF58: mov eax, [ebp+08h]
0082EF5B: mov eax, [eax]
0082EF5D: push [ebp+08h]
0082EF60: call [eax+00000334h]
0082EF66: push eax
0082EF67: lea eax, var_24
0082EF6A: push eax
0082EF6B: call 00410A84h ; Set (object)
0082EF70: mov var_48, eax
0082EF73: lea eax, var_18
0082EF76: push eax
0082EF77: mov eax, var_48
0082EF7A: mov eax, [eax]
0082EF7C: push var_48
0082EF7F: call [eax+000000A0h]
0082EF85: fclex 
0082EF87: mov var_4C, eax
0082EF8A: cmp var_4C, 00000000h
0082EF8E: jnl 82EFAAh
0082EF90: push 000000A0h
0082EF95: push 00440E08h
0082EF9A: push var_48
0082EF9D: push var_4C
0082EFA0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082EFA5: mov var_74, eax
0082EFA8: jmp 82EFAEh
0082EFAA: and var_74, 00000000h
0082EFAE: push var_18
0082EFB1: mov eax, var_58
0082EFB4: mov eax, [eax]
0082EFB6: push var_58
0082EFB9: call [eax+54h]
0082EFBC: fclex 
0082EFBE: mov var_5C, eax
0082EFC1: cmp var_5C, 00000000h
0082EFC5: jnl 82EFDEh
0082EFC7: push 00000054h
0082EFC9: push 004425E4h
0082EFCE: push var_58
0082EFD1: push var_5C
0082EFD4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082EFD9: mov var_78, eax
0082EFDC: jmp 82EFE2h
0082EFDE: and var_78, 00000000h
0082EFE2: lea ecx, var_18
0082EFE5: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082EFEA: lea eax, var_20
0082EFED: push eax
0082EFEE: lea eax, var_24
0082EFF1: push eax
0082EFF2: lea eax, var_1C
0082EFF5: push eax
0082EFF6: push 00000003h
0082EFF8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082EFFD: add esp, 00000010h
0082F000: jmp 0082F135h
0082F005: and var_2C, 00000000h
0082F009: mov var_34, 00000003h
0082F010: mov eax, [ebp+08h]
0082F013: mov eax, [eax]
0082F015: push [ebp+08h]
0082F018: call [eax+00000370h]
0082F01E: push eax
0082F01F: lea eax, var_1C
0082F022: push eax
0082F023: call 00410A84h ; Set (object)
0082F028: mov var_48, eax
0082F02B: lea eax, var_20
0082F02E: push eax
0082F02F: push 00000001h
0082F031: mov eax, var_48
0082F034: mov eax, [eax]
0082F036: push var_48
0082F039: call [eax+40h]
0082F03C: fclex 
0082F03E: mov var_4C, eax
0082F041: cmp var_4C, 00000000h
0082F045: jnl 82F05Eh
0082F047: push 00000040h
0082F049: push 00440DE8h
0082F04E: push var_48
0082F051: push var_4C
0082F054: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F059: mov var_7C, eax
0082F05C: jmp 82F062h
0082F05E: and var_7C, 00000000h
0082F062: push 00000010h
0082F064: pop eax
0082F065: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082F06A: lea esi, var_34
0082F06D: mov edi, esp
0082F06F: movsd 
0082F070: movsd 
0082F071: movsd 
0082F072: movsd 
0082F073: push 00000000h
0082F075: push var_20
0082F078: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082F07D: lea eax, var_20
0082F080: push eax
0082F081: lea eax, var_1C
0082F084: push eax
0082F085: push 00000002h
0082F087: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082F08C: add esp, 0000000Ch
0082F08F: mov eax, [ebp+08h]
0082F092: mov eax, [eax]
0082F094: push [ebp+08h]
0082F097: call [eax+0000036Ch]
0082F09D: push eax
0082F09E: lea eax, var_1C
0082F0A1: push eax
0082F0A2: call 00410A84h ; Set (object)
0082F0A7: mov var_48, eax
0082F0AA: lea eax, var_20
0082F0AD: push eax
0082F0AE: push 00000001h
0082F0B0: mov eax, var_48
0082F0B3: mov eax, [eax]
0082F0B5: push var_48
0082F0B8: call [eax+40h]
0082F0BB: fclex 
0082F0BD: mov var_4C, eax
0082F0C0: cmp var_4C, 00000000h
0082F0C4: jnl 82F0DDh
0082F0C6: push 00000040h
0082F0C8: push 00440DE8h
0082F0CD: push var_48
0082F0D0: push var_4C
0082F0D3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F0D8: mov var_80, eax
0082F0DB: jmp 82F0E1h
0082F0DD: and var_80, 00000000h
0082F0E1: mov eax, var_20
0082F0E4: mov var_50, eax
0082F0E7: push 00453EB4h ; Not set
0082F0EC: mov eax, var_50
0082F0EF: mov eax, [eax]
0082F0F1: push var_50
0082F0F4: call [eax+54h]
0082F0F7: fclex 
0082F0F9: mov var_54, eax
0082F0FC: cmp var_54, 00000000h
0082F100: jnl 82F11Ch
0082F102: push 00000054h
0082F104: push 004425E4h
0082F109: push var_50
0082F10C: push var_54
0082F10F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F114: mov var_00000084, eax
0082F11A: jmp 82F123h
0082F11C: and var_00000084, 00000000h
0082F123: lea eax, var_20
0082F126: push eax
0082F127: lea eax, var_1C
0082F12A: push eax
0082F12B: push 00000002h
0082F12D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082F132: add esp, 0000000Ch
0082F135: mov var_04, 00000000h
0082F13C: push 0082F163h
0082F141: jmp 82F162h
0082F143: lea ecx, var_18
0082F146: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082F14B: lea eax, var_24
0082F14E: push eax
0082F14F: lea eax, var_20
0082F152: push eax
0082F153: lea eax, var_1C
0082F156: push eax
0082F157: push 00000003h
0082F159: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082F15E: add esp, 00000010h
0082F161: ret 
End Sub

Private sub txtLAN__82F182
0082F182: push ebp
0082F183: mov ebp, esp
0082F185: sub esp, 0000000Ch
0082F188: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0082F18D: mov eax, fs:[00h]
0082F193: push eax
0082F194: mov fs:[00000000h], esp
0082F19B: push 00000070h
0082F19D: pop eax
0082F19E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082F1A3: push ebx
0082F1A4: push esi
0082F1A5: push edi
0082F1A6: mov var_0C, esp
0082F1A9: mov var_08, 0040B6C0h
0082F1B0: mov eax, [ebp+08h]
0082F1B3: and eax, 00000001h
0082F1B6: mov var_04, eax
0082F1B9: mov eax, [ebp+08h]
0082F1BC: and al, FEh
0082F1BE: mov [ebp+08h], eax
0082F1C1: mov eax, [ebp+08h]
0082F1C4: mov eax, [eax]
0082F1C6: push [ebp+08h]
0082F1C9: call [eax+04h]
0082F1CC: mov eax, [ebp+08h]
0082F1CF: mov eax, [eax]
0082F1D1: push [ebp+08h]
0082F1D4: call [eax+0000032Ch]
0082F1DA: push eax
0082F1DB: lea eax, var_1C
0082F1DE: push eax
0082F1DF: call 00410A84h ; Set (object)
0082F1E4: mov var_48, eax
0082F1E7: lea eax, var_18
0082F1EA: push eax
0082F1EB: mov eax, var_48
0082F1EE: mov eax, [eax]
0082F1F0: push var_48
0082F1F3: call [eax+000000A0h]
0082F1F9: fclex 
0082F1FB: mov var_4C, eax
0082F1FE: cmp var_4C, 00000000h
0082F202: jnl 82F21Eh
0082F204: push 000000A0h
0082F209: push 00440E08h
0082F20E: push var_48
0082F211: push var_4C
0082F214: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F219: mov var_68, eax
0082F21C: jmp 82F222h
0082F21E: and var_68, 00000000h
0082F222: push var_18
0082F225: call 0041098Eh ; Len(arg_1)
0082F22A: xor ecx, ecx
0082F22C: test eax, eax
0082F22E: setnle cl
0082F231: neg ecx
0082F233: mov var_50, cx
0082F237: lea ecx, var_18
0082F23A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082F23F: lea ecx, var_1C
0082F242: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0082F247: movsx eax, word ptr var_50
0082F24B: test eax, eax
0082F24D: jz 0082F3E5h
0082F253: mov var_2C, 00000001h
0082F25A: mov var_34, 00000003h
0082F261: mov eax, [ebp+08h]
0082F264: mov eax, [eax]
0082F266: push [ebp+08h]
0082F269: call [eax+00000370h]
0082F26F: push eax
0082F270: lea eax, var_1C
0082F273: push eax
0082F274: call 00410A84h ; Set (object)
0082F279: mov var_48, eax
0082F27C: lea eax, var_20
0082F27F: push eax
0082F280: push 00000002h
0082F282: mov eax, var_48
0082F285: mov eax, [eax]
0082F287: push var_48
0082F28A: call [eax+40h]
0082F28D: fclex 
0082F28F: mov var_4C, eax
0082F292: cmp var_4C, 00000000h
0082F296: jnl 82F2AFh
0082F298: push 00000040h
0082F29A: push 00440DE8h
0082F29F: push var_48
0082F2A2: push var_4C
0082F2A5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F2AA: mov var_6C, eax
0082F2AD: jmp 82F2B3h
0082F2AF: and var_6C, 00000000h
0082F2B3: push 00000010h
0082F2B5: pop eax
0082F2B6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082F2BB: lea esi, var_34
0082F2BE: mov edi, esp
0082F2C0: movsd 
0082F2C1: movsd 
0082F2C2: movsd 
0082F2C3: movsd 
0082F2C4: push 00000000h
0082F2C6: push var_20
0082F2C9: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082F2CE: lea eax, var_20
0082F2D1: push eax
0082F2D2: lea eax, var_1C
0082F2D5: push eax
0082F2D6: push 00000002h
0082F2D8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082F2DD: add esp, 0000000Ch
0082F2E0: mov eax, [ebp+08h]
0082F2E3: mov eax, [eax]
0082F2E5: push [ebp+08h]
0082F2E8: call [eax+0000036Ch]
0082F2EE: push eax
0082F2EF: lea eax, var_1C
0082F2F2: push eax
0082F2F3: call 00410A84h ; Set (object)
0082F2F8: mov var_50, eax
0082F2FB: lea eax, var_20
0082F2FE: push eax
0082F2FF: push 00000002h
0082F301: mov eax, var_50
0082F304: mov eax, [eax]
0082F306: push var_50
0082F309: call [eax+40h]
0082F30C: fclex 
0082F30E: mov var_54, eax
0082F311: cmp var_54, 00000000h
0082F315: jnl 82F32Eh
0082F317: push 00000040h
0082F319: push 00440DE8h
0082F31E: push var_50
0082F321: push var_54
0082F324: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F329: mov var_70, eax
0082F32C: jmp 82F332h
0082F32E: and var_70, 00000000h
0082F332: mov eax, var_20
0082F335: mov var_58, eax
0082F338: mov eax, [ebp+08h]
0082F33B: mov eax, [eax]
0082F33D: push [ebp+08h]
0082F340: call [eax+0000032Ch]
0082F346: push eax
0082F347: lea eax, var_24
0082F34A: push eax
0082F34B: call 00410A84h ; Set (object)
0082F350: mov var_48, eax
0082F353: lea eax, var_18
0082F356: push eax
0082F357: mov eax, var_48
0082F35A: mov eax, [eax]
0082F35C: push var_48
0082F35F: call [eax+000000A0h]
0082F365: fclex 
0082F367: mov var_4C, eax
0082F36A: cmp var_4C, 00000000h
0082F36E: jnl 82F38Ah
0082F370: push 000000A0h
0082F375: push 00440E08h
0082F37A: push var_48
0082F37D: push var_4C
0082F380: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F385: mov var_74, eax
0082F388: jmp 82F38Eh
0082F38A: and var_74, 00000000h
0082F38E: push var_18
0082F391: mov eax, var_58
0082F394: mov eax, [eax]
0082F396: push var_58
0082F399: call [eax+54h]
0082F39C: fclex 
0082F39E: mov var_5C, eax
0082F3A1: cmp var_5C, 00000000h
0082F3A5: jnl 82F3BEh
0082F3A7: push 00000054h
0082F3A9: push 004425E4h
0082F3AE: push var_58
0082F3B1: push var_5C
0082F3B4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F3B9: mov var_78, eax
0082F3BC: jmp 82F3C2h
0082F3BE: and var_78, 00000000h
0082F3C2: lea ecx, var_18
0082F3C5: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082F3CA: lea eax, var_20
0082F3CD: push eax
0082F3CE: lea eax, var_24
0082F3D1: push eax
0082F3D2: lea eax, var_1C
0082F3D5: push eax
0082F3D6: push 00000003h
0082F3D8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082F3DD: add esp, 00000010h
0082F3E0: jmp 0082F515h
0082F3E5: and var_2C, 00000000h
0082F3E9: mov var_34, 00000003h
0082F3F0: mov eax, [ebp+08h]
0082F3F3: mov eax, [eax]
0082F3F5: push [ebp+08h]
0082F3F8: call [eax+00000370h]
0082F3FE: push eax
0082F3FF: lea eax, var_1C
0082F402: push eax
0082F403: call 00410A84h ; Set (object)
0082F408: mov var_48, eax
0082F40B: lea eax, var_20
0082F40E: push eax
0082F40F: push 00000002h
0082F411: mov eax, var_48
0082F414: mov eax, [eax]
0082F416: push var_48
0082F419: call [eax+40h]
0082F41C: fclex 
0082F41E: mov var_4C, eax
0082F421: cmp var_4C, 00000000h
0082F425: jnl 82F43Eh
0082F427: push 00000040h
0082F429: push 00440DE8h
0082F42E: push var_48
0082F431: push var_4C
0082F434: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F439: mov var_7C, eax
0082F43C: jmp 82F442h
0082F43E: and var_7C, 00000000h
0082F442: push 00000010h
0082F444: pop eax
0082F445: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082F44A: lea esi, var_34
0082F44D: mov edi, esp
0082F44F: movsd 
0082F450: movsd 
0082F451: movsd 
0082F452: movsd 
0082F453: push 00000000h
0082F455: push var_20
0082F458: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082F45D: lea eax, var_20
0082F460: push eax
0082F461: lea eax, var_1C
0082F464: push eax
0082F465: push 00000002h
0082F467: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082F46C: add esp, 0000000Ch
0082F46F: mov eax, [ebp+08h]
0082F472: mov eax, [eax]
0082F474: push [ebp+08h]
0082F477: call [eax+0000036Ch]
0082F47D: push eax
0082F47E: lea eax, var_1C
0082F481: push eax
0082F482: call 00410A84h ; Set (object)
0082F487: mov var_48, eax
0082F48A: lea eax, var_20
0082F48D: push eax
0082F48E: push 00000002h
0082F490: mov eax, var_48
0082F493: mov eax, [eax]
0082F495: push var_48
0082F498: call [eax+40h]
0082F49B: fclex 
0082F49D: mov var_4C, eax
0082F4A0: cmp var_4C, 00000000h
0082F4A4: jnl 82F4BDh
0082F4A6: push 00000040h
0082F4A8: push 00440DE8h
0082F4AD: push var_48
0082F4B0: push var_4C
0082F4B3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F4B8: mov var_80, eax
0082F4BB: jmp 82F4C1h
0082F4BD: and var_80, 00000000h
0082F4C1: mov eax, var_20
0082F4C4: mov var_50, eax
0082F4C7: push 00453EB4h ; Not set
0082F4CC: mov eax, var_50
0082F4CF: mov eax, [eax]
0082F4D1: push var_50
0082F4D4: call [eax+54h]
0082F4D7: fclex 
0082F4D9: mov var_54, eax
0082F4DC: cmp var_54, 00000000h
0082F4E0: jnl 82F4FCh
0082F4E2: push 00000054h
0082F4E4: push 004425E4h
0082F4E9: push var_50
0082F4EC: push var_54
0082F4EF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F4F4: mov var_00000084, eax
0082F4FA: jmp 82F503h
0082F4FC: and var_00000084, 00000000h
0082F503: lea eax, var_20
0082F506: push eax
0082F507: lea eax, var_1C
0082F50A: push eax
0082F50B: push 00000002h
0082F50D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082F512: add esp, 0000000Ch
0082F515: mov var_04, 00000000h
0082F51C: push 0082F543h
0082F521: jmp 82F542h
0082F523: lea ecx, var_18
0082F526: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082F52B: lea eax, var_24
0082F52E: push eax
0082F52F: lea eax, var_20
0082F532: push eax
0082F533: lea eax, var_1C
0082F536: push eax
0082F537: push 00000003h
0082F539: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082F53E: add esp, 00000010h
0082F541: ret 
End Sub

Private sub txtDDOS__82F562
0082F562: push ebp
0082F563: mov ebp, esp
0082F565: sub esp, 0000000Ch
0082F568: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0082F56D: mov eax, fs:[00h]
0082F573: push eax
0082F574: mov fs:[00000000h], esp
0082F57B: push 00000070h
0082F57D: pop eax
0082F57E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082F583: push ebx
0082F584: push esi
0082F585: push edi
0082F586: mov var_0C, esp
0082F589: mov var_08, 0040B6D0h
0082F590: mov eax, [ebp+08h]
0082F593: and eax, 00000001h
0082F596: mov var_04, eax
0082F599: mov eax, [ebp+08h]
0082F59C: and al, FEh
0082F59E: mov [ebp+08h], eax
0082F5A1: mov eax, [ebp+08h]
0082F5A4: mov eax, [eax]
0082F5A6: push [ebp+08h]
0082F5A9: call [eax+04h]
0082F5AC: mov eax, [ebp+08h]
0082F5AF: mov eax, [eax]
0082F5B1: push [ebp+08h]
0082F5B4: call [eax+00000330h]
0082F5BA: push eax
0082F5BB: lea eax, var_1C
0082F5BE: push eax
0082F5BF: call 00410A84h ; Set (object)
0082F5C4: mov var_48, eax
0082F5C7: lea eax, var_18
0082F5CA: push eax
0082F5CB: mov eax, var_48
0082F5CE: mov eax, [eax]
0082F5D0: push var_48
0082F5D3: call [eax+000000A0h]
0082F5D9: fclex 
0082F5DB: mov var_4C, eax
0082F5DE: cmp var_4C, 00000000h
0082F5E2: jnl 82F5FEh
0082F5E4: push 000000A0h
0082F5E9: push 00440E08h
0082F5EE: push var_48
0082F5F1: push var_4C
0082F5F4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F5F9: mov var_68, eax
0082F5FC: jmp 82F602h
0082F5FE: and var_68, 00000000h
0082F602: push var_18
0082F605: call 0041098Eh ; Len(arg_1)
0082F60A: xor ecx, ecx
0082F60C: test eax, eax
0082F60E: setnle cl
0082F611: neg ecx
0082F613: mov var_50, cx
0082F617: lea ecx, var_18
0082F61A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082F61F: lea ecx, var_1C
0082F622: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0082F627: movsx eax, word ptr var_50
0082F62B: test eax, eax
0082F62D: jz 0082F7C5h
0082F633: mov var_2C, 00000001h
0082F63A: mov var_34, 00000003h
0082F641: mov eax, [ebp+08h]
0082F644: mov eax, [eax]
0082F646: push [ebp+08h]
0082F649: call [eax+00000370h]
0082F64F: push eax
0082F650: lea eax, var_1C
0082F653: push eax
0082F654: call 00410A84h ; Set (object)
0082F659: mov var_48, eax
0082F65C: lea eax, var_20
0082F65F: push eax
0082F660: push 00000003h
0082F662: mov eax, var_48
0082F665: mov eax, [eax]
0082F667: push var_48
0082F66A: call [eax+40h]
0082F66D: fclex 
0082F66F: mov var_4C, eax
0082F672: cmp var_4C, 00000000h
0082F676: jnl 82F68Fh
0082F678: push 00000040h
0082F67A: push 00440DE8h
0082F67F: push var_48
0082F682: push var_4C
0082F685: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F68A: mov var_6C, eax
0082F68D: jmp 82F693h
0082F68F: and var_6C, 00000000h
0082F693: push 00000010h
0082F695: pop eax
0082F696: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082F69B: lea esi, var_34
0082F69E: mov edi, esp
0082F6A0: movsd 
0082F6A1: movsd 
0082F6A2: movsd 
0082F6A3: movsd 
0082F6A4: push 00000000h
0082F6A6: push var_20
0082F6A9: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082F6AE: lea eax, var_20
0082F6B1: push eax
0082F6B2: lea eax, var_1C
0082F6B5: push eax
0082F6B6: push 00000002h
0082F6B8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082F6BD: add esp, 0000000Ch
0082F6C0: mov eax, [ebp+08h]
0082F6C3: mov eax, [eax]
0082F6C5: push [ebp+08h]
0082F6C8: call [eax+0000036Ch]
0082F6CE: push eax
0082F6CF: lea eax, var_1C
0082F6D2: push eax
0082F6D3: call 00410A84h ; Set (object)
0082F6D8: mov var_50, eax
0082F6DB: lea eax, var_20
0082F6DE: push eax
0082F6DF: push 00000003h
0082F6E1: mov eax, var_50
0082F6E4: mov eax, [eax]
0082F6E6: push var_50
0082F6E9: call [eax+40h]
0082F6EC: fclex 
0082F6EE: mov var_54, eax
0082F6F1: cmp var_54, 00000000h
0082F6F5: jnl 82F70Eh
0082F6F7: push 00000040h
0082F6F9: push 00440DE8h
0082F6FE: push var_50
0082F701: push var_54
0082F704: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F709: mov var_70, eax
0082F70C: jmp 82F712h
0082F70E: and var_70, 00000000h
0082F712: mov eax, var_20
0082F715: mov var_58, eax
0082F718: mov eax, [ebp+08h]
0082F71B: mov eax, [eax]
0082F71D: push [ebp+08h]
0082F720: call [eax+00000330h]
0082F726: push eax
0082F727: lea eax, var_24
0082F72A: push eax
0082F72B: call 00410A84h ; Set (object)
0082F730: mov var_48, eax
0082F733: lea eax, var_18
0082F736: push eax
0082F737: mov eax, var_48
0082F73A: mov eax, [eax]
0082F73C: push var_48
0082F73F: call [eax+000000A0h]
0082F745: fclex 
0082F747: mov var_4C, eax
0082F74A: cmp var_4C, 00000000h
0082F74E: jnl 82F76Ah
0082F750: push 000000A0h
0082F755: push 00440E08h
0082F75A: push var_48
0082F75D: push var_4C
0082F760: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F765: mov var_74, eax
0082F768: jmp 82F76Eh
0082F76A: and var_74, 00000000h
0082F76E: push var_18
0082F771: mov eax, var_58
0082F774: mov eax, [eax]
0082F776: push var_58
0082F779: call [eax+54h]
0082F77C: fclex 
0082F77E: mov var_5C, eax
0082F781: cmp var_5C, 00000000h
0082F785: jnl 82F79Eh
0082F787: push 00000054h
0082F789: push 004425E4h
0082F78E: push var_58
0082F791: push var_5C
0082F794: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F799: mov var_78, eax
0082F79C: jmp 82F7A2h
0082F79E: and var_78, 00000000h
0082F7A2: lea ecx, var_18
0082F7A5: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082F7AA: lea eax, var_20
0082F7AD: push eax
0082F7AE: lea eax, var_24
0082F7B1: push eax
0082F7B2: lea eax, var_1C
0082F7B5: push eax
0082F7B6: push 00000003h
0082F7B8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082F7BD: add esp, 00000010h
0082F7C0: jmp 0082F8F5h
0082F7C5: and var_2C, 00000000h
0082F7C9: mov var_34, 00000003h
0082F7D0: mov eax, [ebp+08h]
0082F7D3: mov eax, [eax]
0082F7D5: push [ebp+08h]
0082F7D8: call [eax+00000370h]
0082F7DE: push eax
0082F7DF: lea eax, var_1C
0082F7E2: push eax
0082F7E3: call 00410A84h ; Set (object)
0082F7E8: mov var_48, eax
0082F7EB: lea eax, var_20
0082F7EE: push eax
0082F7EF: push 00000003h
0082F7F1: mov eax, var_48
0082F7F4: mov eax, [eax]
0082F7F6: push var_48
0082F7F9: call [eax+40h]
0082F7FC: fclex 
0082F7FE: mov var_4C, eax
0082F801: cmp var_4C, 00000000h
0082F805: jnl 82F81Eh
0082F807: push 00000040h
0082F809: push 00440DE8h
0082F80E: push var_48
0082F811: push var_4C
0082F814: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F819: mov var_7C, eax
0082F81C: jmp 82F822h
0082F81E: and var_7C, 00000000h
0082F822: push 00000010h
0082F824: pop eax
0082F825: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082F82A: lea esi, var_34
0082F82D: mov edi, esp
0082F82F: movsd 
0082F830: movsd 
0082F831: movsd 
0082F832: movsd 
0082F833: push 00000000h
0082F835: push var_20
0082F838: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082F83D: lea eax, var_20
0082F840: push eax
0082F841: lea eax, var_1C
0082F844: push eax
0082F845: push 00000002h
0082F847: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082F84C: add esp, 0000000Ch
0082F84F: mov eax, [ebp+08h]
0082F852: mov eax, [eax]
0082F854: push [ebp+08h]
0082F857: call [eax+0000036Ch]
0082F85D: push eax
0082F85E: lea eax, var_1C
0082F861: push eax
0082F862: call 00410A84h ; Set (object)
0082F867: mov var_48, eax
0082F86A: lea eax, var_20
0082F86D: push eax
0082F86E: push 00000003h
0082F870: mov eax, var_48
0082F873: mov eax, [eax]
0082F875: push var_48
0082F878: call [eax+40h]
0082F87B: fclex 
0082F87D: mov var_4C, eax
0082F880: cmp var_4C, 00000000h
0082F884: jnl 82F89Dh
0082F886: push 00000040h
0082F888: push 00440DE8h
0082F88D: push var_48
0082F890: push var_4C
0082F893: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F898: mov var_80, eax
0082F89B: jmp 82F8A1h
0082F89D: and var_80, 00000000h
0082F8A1: mov eax, var_20
0082F8A4: mov var_50, eax
0082F8A7: push 00453EB4h ; Not set
0082F8AC: mov eax, var_50
0082F8AF: mov eax, [eax]
0082F8B1: push var_50
0082F8B4: call [eax+54h]
0082F8B7: fclex 
0082F8B9: mov var_54, eax
0082F8BC: cmp var_54, 00000000h
0082F8C0: jnl 82F8DCh
0082F8C2: push 00000054h
0082F8C4: push 004425E4h
0082F8C9: push var_50
0082F8CC: push var_54
0082F8CF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082F8D4: mov var_00000084, eax
0082F8DA: jmp 82F8E3h
0082F8DC: and var_00000084, 00000000h
0082F8E3: lea eax, var_20
0082F8E6: push eax
0082F8E7: lea eax, var_1C
0082F8EA: push eax
0082F8EB: push 00000002h
0082F8ED: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082F8F2: add esp, 0000000Ch
0082F8F5: mov var_04, 00000000h
0082F8FC: push 0082F923h
0082F901: jmp 82F922h
0082F903: lea ecx, var_18
0082F906: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082F90B: lea eax, var_24
0082F90E: push eax
0082F90F: lea eax, var_20
0082F912: push eax
0082F913: lea eax, var_1C
0082F916: push eax
0082F917: push 00000003h
0082F919: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082F91E: add esp, 00000010h
0082F921: ret 
End Sub

Private sub txtCompName__82FD22
0082FD22: push ebp
0082FD23: mov ebp, esp
0082FD25: sub esp, 0000000Ch
0082FD28: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0082FD2D: mov eax, fs:[00h]
0082FD33: push eax
0082FD34: mov fs:[00000000h], esp
0082FD3B: push 00000070h
0082FD3D: pop eax
0082FD3E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082FD43: push ebx
0082FD44: push esi
0082FD45: push edi
0082FD46: mov var_0C, esp
0082FD49: mov var_08, 0040B6F0h
0082FD50: mov eax, [ebp+08h]
0082FD53: and eax, 00000001h
0082FD56: mov var_04, eax
0082FD59: mov eax, [ebp+08h]
0082FD5C: and al, FEh
0082FD5E: mov [ebp+08h], eax
0082FD61: mov eax, [ebp+08h]
0082FD64: mov eax, [eax]
0082FD66: push [ebp+08h]
0082FD69: call [eax+04h]
0082FD6C: mov eax, [ebp+08h]
0082FD6F: mov eax, [eax]
0082FD71: push [ebp+08h]
0082FD74: call [eax+00000324h]
0082FD7A: push eax
0082FD7B: lea eax, var_1C
0082FD7E: push eax
0082FD7F: call 00410A84h ; Set (object)
0082FD84: mov var_48, eax
0082FD87: lea eax, var_18
0082FD8A: push eax
0082FD8B: mov eax, var_48
0082FD8E: mov eax, [eax]
0082FD90: push var_48
0082FD93: call [eax+000000A0h]
0082FD99: fclex 
0082FD9B: mov var_4C, eax
0082FD9E: cmp var_4C, 00000000h
0082FDA2: jnl 82FDBEh
0082FDA4: push 000000A0h
0082FDA9: push 00440E08h
0082FDAE: push var_48
0082FDB1: push var_4C
0082FDB4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082FDB9: mov var_68, eax
0082FDBC: jmp 82FDC2h
0082FDBE: and var_68, 00000000h
0082FDC2: push var_18
0082FDC5: call 0041098Eh ; Len(arg_1)
0082FDCA: xor ecx, ecx
0082FDCC: test eax, eax
0082FDCE: setnle cl
0082FDD1: neg ecx
0082FDD3: mov var_50, cx
0082FDD7: lea ecx, var_18
0082FDDA: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082FDDF: lea ecx, var_1C
0082FDE2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0082FDE7: movsx eax, word ptr var_50
0082FDEB: test eax, eax
0082FDED: jz 0082FF85h
0082FDF3: mov var_2C, 00000001h
0082FDFA: mov var_34, 00000003h
0082FE01: mov eax, [ebp+08h]
0082FE04: mov eax, [eax]
0082FE06: push [ebp+08h]
0082FE09: call [eax+00000370h]
0082FE0F: push eax
0082FE10: lea eax, var_1C
0082FE13: push eax
0082FE14: call 00410A84h ; Set (object)
0082FE19: mov var_48, eax
0082FE1C: lea eax, var_20
0082FE1F: push eax
0082FE20: push 00000007h
0082FE22: mov eax, var_48
0082FE25: mov eax, [eax]
0082FE27: push var_48
0082FE2A: call [eax+40h]
0082FE2D: fclex 
0082FE2F: mov var_4C, eax
0082FE32: cmp var_4C, 00000000h
0082FE36: jnl 82FE4Fh
0082FE38: push 00000040h
0082FE3A: push 00440DE8h
0082FE3F: push var_48
0082FE42: push var_4C
0082FE45: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082FE4A: mov var_6C, eax
0082FE4D: jmp 82FE53h
0082FE4F: and var_6C, 00000000h
0082FE53: push 00000010h
0082FE55: pop eax
0082FE56: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082FE5B: lea esi, var_34
0082FE5E: mov edi, esp
0082FE60: movsd 
0082FE61: movsd 
0082FE62: movsd 
0082FE63: movsd 
0082FE64: push 00000000h
0082FE66: push var_20
0082FE69: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082FE6E: lea eax, var_20
0082FE71: push eax
0082FE72: lea eax, var_1C
0082FE75: push eax
0082FE76: push 00000002h
0082FE78: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082FE7D: add esp, 0000000Ch
0082FE80: mov eax, [ebp+08h]
0082FE83: mov eax, [eax]
0082FE85: push [ebp+08h]
0082FE88: call [eax+0000036Ch]
0082FE8E: push eax
0082FE8F: lea eax, var_1C
0082FE92: push eax
0082FE93: call 00410A84h ; Set (object)
0082FE98: mov var_50, eax
0082FE9B: lea eax, var_20
0082FE9E: push eax
0082FE9F: push 00000007h
0082FEA1: mov eax, var_50
0082FEA4: mov eax, [eax]
0082FEA6: push var_50
0082FEA9: call [eax+40h]
0082FEAC: fclex 
0082FEAE: mov var_54, eax
0082FEB1: cmp var_54, 00000000h
0082FEB5: jnl 82FECEh
0082FEB7: push 00000040h
0082FEB9: push 00440DE8h
0082FEBE: push var_50
0082FEC1: push var_54
0082FEC4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082FEC9: mov var_70, eax
0082FECC: jmp 82FED2h
0082FECE: and var_70, 00000000h
0082FED2: mov eax, var_20
0082FED5: mov var_58, eax
0082FED8: mov eax, [ebp+08h]
0082FEDB: mov eax, [eax]
0082FEDD: push [ebp+08h]
0082FEE0: call [eax+00000324h]
0082FEE6: push eax
0082FEE7: lea eax, var_24
0082FEEA: push eax
0082FEEB: call 00410A84h ; Set (object)
0082FEF0: mov var_48, eax
0082FEF3: lea eax, var_18
0082FEF6: push eax
0082FEF7: mov eax, var_48
0082FEFA: mov eax, [eax]
0082FEFC: push var_48
0082FEFF: call [eax+000000A0h]
0082FF05: fclex 
0082FF07: mov var_4C, eax
0082FF0A: cmp var_4C, 00000000h
0082FF0E: jnl 82FF2Ah
0082FF10: push 000000A0h
0082FF15: push 00440E08h
0082FF1A: push var_48
0082FF1D: push var_4C
0082FF20: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082FF25: mov var_74, eax
0082FF28: jmp 82FF2Eh
0082FF2A: and var_74, 00000000h
0082FF2E: push var_18
0082FF31: mov eax, var_58
0082FF34: mov eax, [eax]
0082FF36: push var_58
0082FF39: call [eax+54h]
0082FF3C: fclex 
0082FF3E: mov var_5C, eax
0082FF41: cmp var_5C, 00000000h
0082FF45: jnl 82FF5Eh
0082FF47: push 00000054h
0082FF49: push 004425E4h
0082FF4E: push var_58
0082FF51: push var_5C
0082FF54: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082FF59: mov var_78, eax
0082FF5C: jmp 82FF62h
0082FF5E: and var_78, 00000000h
0082FF62: lea ecx, var_18
0082FF65: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082FF6A: lea eax, var_20
0082FF6D: push eax
0082FF6E: lea eax, var_24
0082FF71: push eax
0082FF72: lea eax, var_1C
0082FF75: push eax
0082FF76: push 00000003h
0082FF78: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082FF7D: add esp, 00000010h
0082FF80: jmp 008300B5h
0082FF85: and var_2C, 00000000h
0082FF89: mov var_34, 00000003h
0082FF90: mov eax, [ebp+08h]
0082FF93: mov eax, [eax]
0082FF95: push [ebp+08h]
0082FF98: call [eax+00000370h]
0082FF9E: push eax
0082FF9F: lea eax, var_1C
0082FFA2: push eax
0082FFA3: call 00410A84h ; Set (object)
0082FFA8: mov var_48, eax
0082FFAB: lea eax, var_20
0082FFAE: push eax
0082FFAF: push 00000007h
0082FFB1: mov eax, var_48
0082FFB4: mov eax, [eax]
0082FFB6: push var_48
0082FFB9: call [eax+40h]
0082FFBC: fclex 
0082FFBE: mov var_4C, eax
0082FFC1: cmp var_4C, 00000000h
0082FFC5: jnl 82FFDEh
0082FFC7: push 00000040h
0082FFC9: push 00440DE8h
0082FFCE: push var_48
0082FFD1: push var_4C
0082FFD4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082FFD9: mov var_7C, eax
0082FFDC: jmp 82FFE2h
0082FFDE: and var_7C, 00000000h
0082FFE2: push 00000010h
0082FFE4: pop eax
0082FFE5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082FFEA: lea esi, var_34
0082FFED: mov edi, esp
0082FFEF: movsd 
0082FFF0: movsd 
0082FFF1: movsd 
0082FFF2: movsd 
0082FFF3: push 00000000h
0082FFF5: push var_20
0082FFF8: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082FFFD: lea eax, var_20
00830000: push eax
00830001: lea eax, var_1C
00830004: push eax
00830005: push 00000002h
00830007: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083000C: add esp, 0000000Ch
0083000F: mov eax, [ebp+08h]
00830012: mov eax, [eax]
00830014: push [ebp+08h]
00830017: call [eax+0000036Ch]
0083001D: push eax
0083001E: lea eax, var_1C
00830021: push eax
00830022: call 00410A84h ; Set (object)
00830027: mov var_48, eax
0083002A: lea eax, var_20
0083002D: push eax
0083002E: push 00000007h
00830030: mov eax, var_48
00830033: mov eax, [eax]
00830035: push var_48
00830038: call [eax+40h]
0083003B: fclex 
0083003D: mov var_4C, eax
00830040: cmp var_4C, 00000000h
00830044: jnl 83005Dh
00830046: push 00000040h
00830048: push 00440DE8h
0083004D: push var_48
00830050: push var_4C
00830053: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830058: mov var_80, eax
0083005B: jmp 830061h
0083005D: and var_80, 00000000h
00830061: mov eax, var_20
00830064: mov var_50, eax
00830067: push 00453EB4h ; Not set
0083006C: mov eax, var_50
0083006F: mov eax, [eax]
00830071: push var_50
00830074: call [eax+54h]
00830077: fclex 
00830079: mov var_54, eax
0083007C: cmp var_54, 00000000h
00830080: jnl 83009Ch
00830082: push 00000054h
00830084: push 004425E4h
00830089: push var_50
0083008C: push var_54
0083008F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830094: mov var_00000084, eax
0083009A: jmp 8300A3h
0083009C: and var_00000084, 00000000h
008300A3: lea eax, var_20
008300A6: push eax
008300A7: lea eax, var_1C
008300AA: push eax
008300AB: push 00000002h
008300AD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008300B2: add esp, 0000000Ch
008300B5: mov var_04, 00000000h
008300BC: push 008300E3h
008300C1: jmp 8300E2h
008300C3: lea ecx, var_18
008300C6: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008300CB: lea eax, var_24
008300CE: push eax
008300CF: lea eax, var_20
008300D2: push eax
008300D3: lea eax, var_1C
008300D6: push eax
008300D7: push 00000003h
008300D9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008300DE: add esp, 00000010h
008300E1: ret 
End Sub

Private sub txtPrivileges__830102
00830102: push ebp
00830103: mov ebp, esp
00830105: sub esp, 0000000Ch
00830108: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0083010D: mov eax, fs:[00h]
00830113: push eax
00830114: mov fs:[00000000h], esp
0083011B: push 00000070h
0083011D: pop eax
0083011E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00830123: push ebx
00830124: push esi
00830125: push edi
00830126: mov var_0C, esp
00830129: mov var_08, 0040B700h
00830130: mov eax, [ebp+08h]
00830133: and eax, 00000001h
00830136: mov var_04, eax
00830139: mov eax, [ebp+08h]
0083013C: and al, FEh
0083013E: mov [ebp+08h], eax
00830141: mov eax, [ebp+08h]
00830144: mov eax, [eax]
00830146: push [ebp+08h]
00830149: call [eax+04h]
0083014C: mov eax, [ebp+08h]
0083014F: mov eax, [eax]
00830151: push [ebp+08h]
00830154: call [eax+00000320h]
0083015A: push eax
0083015B: lea eax, var_1C
0083015E: push eax
0083015F: call 00410A84h ; Set (object)
00830164: mov var_48, eax
00830167: lea eax, var_18
0083016A: push eax
0083016B: mov eax, var_48
0083016E: mov eax, [eax]
00830170: push var_48
00830173: call [eax+000000A0h]
00830179: fclex 
0083017B: mov var_4C, eax
0083017E: cmp var_4C, 00000000h
00830182: jnl 83019Eh
00830184: push 000000A0h
00830189: push 00440E08h
0083018E: push var_48
00830191: push var_4C
00830194: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830199: mov var_68, eax
0083019C: jmp 8301A2h
0083019E: and var_68, 00000000h
008301A2: push var_18
008301A5: call 0041098Eh ; Len(arg_1)
008301AA: xor ecx, ecx
008301AC: test eax, eax
008301AE: setnle cl
008301B1: neg ecx
008301B3: mov var_50, cx
008301B7: lea ecx, var_18
008301BA: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008301BF: lea ecx, var_1C
008301C2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008301C7: movsx eax, word ptr var_50
008301CB: test eax, eax
008301CD: jz 00830365h
008301D3: mov var_2C, 00000001h
008301DA: mov var_34, 00000003h
008301E1: mov eax, [ebp+08h]
008301E4: mov eax, [eax]
008301E6: push [ebp+08h]
008301E9: call [eax+00000370h]
008301EF: push eax
008301F0: lea eax, var_1C
008301F3: push eax
008301F4: call 00410A84h ; Set (object)
008301F9: mov var_48, eax
008301FC: lea eax, var_20
008301FF: push eax
00830200: push 00000008h
00830202: mov eax, var_48
00830205: mov eax, [eax]
00830207: push var_48
0083020A: call [eax+40h]
0083020D: fclex 
0083020F: mov var_4C, eax
00830212: cmp var_4C, 00000000h
00830216: jnl 83022Fh
00830218: push 00000040h
0083021A: push 00440DE8h
0083021F: push var_48
00830222: push var_4C
00830225: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0083022A: mov var_6C, eax
0083022D: jmp 830233h
0083022F: and var_6C, 00000000h
00830233: push 00000010h
00830235: pop eax
00830236: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0083023B: lea esi, var_34
0083023E: mov edi, esp
00830240: movsd 
00830241: movsd 
00830242: movsd 
00830243: movsd 
00830244: push 00000000h
00830246: push var_20
00830249: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0083024E: lea eax, var_20
00830251: push eax
00830252: lea eax, var_1C
00830255: push eax
00830256: push 00000002h
00830258: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083025D: add esp, 0000000Ch
00830260: mov eax, [ebp+08h]
00830263: mov eax, [eax]
00830265: push [ebp+08h]
00830268: call [eax+0000036Ch]
0083026E: push eax
0083026F: lea eax, var_1C
00830272: push eax
00830273: call 00410A84h ; Set (object)
00830278: mov var_50, eax
0083027B: lea eax, var_20
0083027E: push eax
0083027F: push 00000008h
00830281: mov eax, var_50
00830284: mov eax, [eax]
00830286: push var_50
00830289: call [eax+40h]
0083028C: fclex 
0083028E: mov var_54, eax
00830291: cmp var_54, 00000000h
00830295: jnl 8302AEh
00830297: push 00000040h
00830299: push 00440DE8h
0083029E: push var_50
008302A1: push var_54
008302A4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008302A9: mov var_70, eax
008302AC: jmp 8302B2h
008302AE: and var_70, 00000000h
008302B2: mov eax, var_20
008302B5: mov var_58, eax
008302B8: mov eax, [ebp+08h]
008302BB: mov eax, [eax]
008302BD: push [ebp+08h]
008302C0: call [eax+00000320h]
008302C6: push eax
008302C7: lea eax, var_24
008302CA: push eax
008302CB: call 00410A84h ; Set (object)
008302D0: mov var_48, eax
008302D3: lea eax, var_18
008302D6: push eax
008302D7: mov eax, var_48
008302DA: mov eax, [eax]
008302DC: push var_48
008302DF: call [eax+000000A0h]
008302E5: fclex 
008302E7: mov var_4C, eax
008302EA: cmp var_4C, 00000000h
008302EE: jnl 83030Ah
008302F0: push 000000A0h
008302F5: push 00440E08h
008302FA: push var_48
008302FD: push var_4C
00830300: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830305: mov var_74, eax
00830308: jmp 83030Eh
0083030A: and var_74, 00000000h
0083030E: push var_18
00830311: mov eax, var_58
00830314: mov eax, [eax]
00830316: push var_58
00830319: call [eax+54h]
0083031C: fclex 
0083031E: mov var_5C, eax
00830321: cmp var_5C, 00000000h
00830325: jnl 83033Eh
00830327: push 00000054h
00830329: push 004425E4h
0083032E: push var_58
00830331: push var_5C
00830334: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830339: mov var_78, eax
0083033C: jmp 830342h
0083033E: and var_78, 00000000h
00830342: lea ecx, var_18
00830345: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0083034A: lea eax, var_20
0083034D: push eax
0083034E: lea eax, var_24
00830351: push eax
00830352: lea eax, var_1C
00830355: push eax
00830356: push 00000003h
00830358: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083035D: add esp, 00000010h
00830360: jmp 00830495h
00830365: and var_2C, 00000000h
00830369: mov var_34, 00000003h
00830370: mov eax, [ebp+08h]
00830373: mov eax, [eax]
00830375: push [ebp+08h]
00830378: call [eax+00000370h]
0083037E: push eax
0083037F: lea eax, var_1C
00830382: push eax
00830383: call 00410A84h ; Set (object)
00830388: mov var_48, eax
0083038B: lea eax, var_20
0083038E: push eax
0083038F: push 00000008h
00830391: mov eax, var_48
00830394: mov eax, [eax]
00830396: push var_48
00830399: call [eax+40h]
0083039C: fclex 
0083039E: mov var_4C, eax
008303A1: cmp var_4C, 00000000h
008303A5: jnl 8303BEh
008303A7: push 00000040h
008303A9: push 00440DE8h
008303AE: push var_48
008303B1: push var_4C
008303B4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008303B9: mov var_7C, eax
008303BC: jmp 8303C2h
008303BE: and var_7C, 00000000h
008303C2: push 00000010h
008303C4: pop eax
008303C5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008303CA: lea esi, var_34
008303CD: mov edi, esp
008303CF: movsd 
008303D0: movsd 
008303D1: movsd 
008303D2: movsd 
008303D3: push 00000000h
008303D5: push var_20
008303D8: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008303DD: lea eax, var_20
008303E0: push eax
008303E1: lea eax, var_1C
008303E4: push eax
008303E5: push 00000002h
008303E7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008303EC: add esp, 0000000Ch
008303EF: mov eax, [ebp+08h]
008303F2: mov eax, [eax]
008303F4: push [ebp+08h]
008303F7: call [eax+0000036Ch]
008303FD: push eax
008303FE: lea eax, var_1C
00830401: push eax
00830402: call 00410A84h ; Set (object)
00830407: mov var_48, eax
0083040A: lea eax, var_20
0083040D: push eax
0083040E: push 00000008h
00830410: mov eax, var_48
00830413: mov eax, [eax]
00830415: push var_48
00830418: call [eax+40h]
0083041B: fclex 
0083041D: mov var_4C, eax
00830420: cmp var_4C, 00000000h
00830424: jnl 83043Dh
00830426: push 00000040h
00830428: push 00440DE8h
0083042D: push var_48
00830430: push var_4C
00830433: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830438: mov var_80, eax
0083043B: jmp 830441h
0083043D: and var_80, 00000000h
00830441: mov eax, var_20
00830444: mov var_50, eax
00830447: push 00453EB4h ; Not set
0083044C: mov eax, var_50
0083044F: mov eax, [eax]
00830451: push var_50
00830454: call [eax+54h]
00830457: fclex 
00830459: mov var_54, eax
0083045C: cmp var_54, 00000000h
00830460: jnl 83047Ch
00830462: push 00000054h
00830464: push 004425E4h
00830469: push var_50
0083046C: push var_54
0083046F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830474: mov var_00000084, eax
0083047A: jmp 830483h
0083047C: and var_00000084, 00000000h
00830483: lea eax, var_20
00830486: push eax
00830487: lea eax, var_1C
0083048A: push eax
0083048B: push 00000002h
0083048D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00830492: add esp, 0000000Ch
00830495: mov var_04, 00000000h
0083049C: push 008304C3h
008304A1: jmp 8304C2h
008304A3: lea ecx, var_18
008304A6: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008304AB: lea eax, var_24
008304AE: push eax
008304AF: lea eax, var_20
008304B2: push eax
008304B3: lea eax, var_1C
008304B6: push eax
008304B7: push 00000003h
008304B9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008304BE: add esp, 00000010h
008304C1: ret 
End Sub

Private sub txtOS__8304E2
008304E2: push ebp
008304E3: mov ebp, esp
008304E5: sub esp, 0000000Ch
008304E8: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008304ED: mov eax, fs:[00h]
008304F3: push eax
008304F4: mov fs:[00000000h], esp
008304FB: push 00000070h
008304FD: pop eax
008304FE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00830503: push ebx
00830504: push esi
00830505: push edi
00830506: mov var_0C, esp
00830509: mov var_08, 0040B710h
00830510: mov eax, [ebp+08h]
00830513: and eax, 00000001h
00830516: mov var_04, eax
00830519: mov eax, [ebp+08h]
0083051C: and al, FEh
0083051E: mov [ebp+08h], eax
00830521: mov eax, [ebp+08h]
00830524: mov eax, [eax]
00830526: push [ebp+08h]
00830529: call [eax+04h]
0083052C: mov eax, [ebp+08h]
0083052F: mov eax, [eax]
00830531: push [ebp+08h]
00830534: call [eax+0000031Ch]
0083053A: push eax
0083053B: lea eax, var_1C
0083053E: push eax
0083053F: call 00410A84h ; Set (object)
00830544: mov var_48, eax
00830547: lea eax, var_18
0083054A: push eax
0083054B: mov eax, var_48
0083054E: mov eax, [eax]
00830550: push var_48
00830553: call [eax+000000A0h]
00830559: fclex 
0083055B: mov var_4C, eax
0083055E: cmp var_4C, 00000000h
00830562: jnl 83057Eh
00830564: push 000000A0h
00830569: push 00440E08h
0083056E: push var_48
00830571: push var_4C
00830574: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830579: mov var_68, eax
0083057C: jmp 830582h
0083057E: and var_68, 00000000h
00830582: push var_18
00830585: call 0041098Eh ; Len(arg_1)
0083058A: xor ecx, ecx
0083058C: test eax, eax
0083058E: setnle cl
00830591: neg ecx
00830593: mov var_50, cx
00830597: lea ecx, var_18
0083059A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0083059F: lea ecx, var_1C
008305A2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008305A7: movsx eax, word ptr var_50
008305AB: test eax, eax
008305AD: jz 00830745h
008305B3: mov var_2C, 00000001h
008305BA: mov var_34, 00000003h
008305C1: mov eax, [ebp+08h]
008305C4: mov eax, [eax]
008305C6: push [ebp+08h]
008305C9: call [eax+00000370h]
008305CF: push eax
008305D0: lea eax, var_1C
008305D3: push eax
008305D4: call 00410A84h ; Set (object)
008305D9: mov var_48, eax
008305DC: lea eax, var_20
008305DF: push eax
008305E0: push 00000009h
008305E2: mov eax, var_48
008305E5: mov eax, [eax]
008305E7: push var_48
008305EA: call [eax+40h]
008305ED: fclex 
008305EF: mov var_4C, eax
008305F2: cmp var_4C, 00000000h
008305F6: jnl 83060Fh
008305F8: push 00000040h
008305FA: push 00440DE8h
008305FF: push var_48
00830602: push var_4C
00830605: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0083060A: mov var_6C, eax
0083060D: jmp 830613h
0083060F: and var_6C, 00000000h
00830613: push 00000010h
00830615: pop eax
00830616: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0083061B: lea esi, var_34
0083061E: mov edi, esp
00830620: movsd 
00830621: movsd 
00830622: movsd 
00830623: movsd 
00830624: push 00000000h
00830626: push var_20
00830629: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0083062E: lea eax, var_20
00830631: push eax
00830632: lea eax, var_1C
00830635: push eax
00830636: push 00000002h
00830638: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083063D: add esp, 0000000Ch
00830640: mov eax, [ebp+08h]
00830643: mov eax, [eax]
00830645: push [ebp+08h]
00830648: call [eax+0000036Ch]
0083064E: push eax
0083064F: lea eax, var_1C
00830652: push eax
00830653: call 00410A84h ; Set (object)
00830658: mov var_50, eax
0083065B: lea eax, var_20
0083065E: push eax
0083065F: push 00000009h
00830661: mov eax, var_50
00830664: mov eax, [eax]
00830666: push var_50
00830669: call [eax+40h]
0083066C: fclex 
0083066E: mov var_54, eax
00830671: cmp var_54, 00000000h
00830675: jnl 83068Eh
00830677: push 00000040h
00830679: push 00440DE8h
0083067E: push var_50
00830681: push var_54
00830684: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830689: mov var_70, eax
0083068C: jmp 830692h
0083068E: and var_70, 00000000h
00830692: mov eax, var_20
00830695: mov var_58, eax
00830698: mov eax, [ebp+08h]
0083069B: mov eax, [eax]
0083069D: push [ebp+08h]
008306A0: call [eax+0000031Ch]
008306A6: push eax
008306A7: lea eax, var_24
008306AA: push eax
008306AB: call 00410A84h ; Set (object)
008306B0: mov var_48, eax
008306B3: lea eax, var_18
008306B6: push eax
008306B7: mov eax, var_48
008306BA: mov eax, [eax]
008306BC: push var_48
008306BF: call [eax+000000A0h]
008306C5: fclex 
008306C7: mov var_4C, eax
008306CA: cmp var_4C, 00000000h
008306CE: jnl 8306EAh
008306D0: push 000000A0h
008306D5: push 00440E08h
008306DA: push var_48
008306DD: push var_4C
008306E0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008306E5: mov var_74, eax
008306E8: jmp 8306EEh
008306EA: and var_74, 00000000h
008306EE: push var_18
008306F1: mov eax, var_58
008306F4: mov eax, [eax]
008306F6: push var_58
008306F9: call [eax+54h]
008306FC: fclex 
008306FE: mov var_5C, eax
00830701: cmp var_5C, 00000000h
00830705: jnl 83071Eh
00830707: push 00000054h
00830709: push 004425E4h
0083070E: push var_58
00830711: push var_5C
00830714: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830719: mov var_78, eax
0083071C: jmp 830722h
0083071E: and var_78, 00000000h
00830722: lea ecx, var_18
00830725: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0083072A: lea eax, var_20
0083072D: push eax
0083072E: lea eax, var_24
00830731: push eax
00830732: lea eax, var_1C
00830735: push eax
00830736: push 00000003h
00830738: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083073D: add esp, 00000010h
00830740: jmp 00830875h
00830745: and var_2C, 00000000h
00830749: mov var_34, 00000003h
00830750: mov eax, [ebp+08h]
00830753: mov eax, [eax]
00830755: push [ebp+08h]
00830758: call [eax+00000370h]
0083075E: push eax
0083075F: lea eax, var_1C
00830762: push eax
00830763: call 00410A84h ; Set (object)
00830768: mov var_48, eax
0083076B: lea eax, var_20
0083076E: push eax
0083076F: push 00000009h
00830771: mov eax, var_48
00830774: mov eax, [eax]
00830776: push var_48
00830779: call [eax+40h]
0083077C: fclex 
0083077E: mov var_4C, eax
00830781: cmp var_4C, 00000000h
00830785: jnl 83079Eh
00830787: push 00000040h
00830789: push 00440DE8h
0083078E: push var_48
00830791: push var_4C
00830794: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830799: mov var_7C, eax
0083079C: jmp 8307A2h
0083079E: and var_7C, 00000000h
008307A2: push 00000010h
008307A4: pop eax
008307A5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008307AA: lea esi, var_34
008307AD: mov edi, esp
008307AF: movsd 
008307B0: movsd 
008307B1: movsd 
008307B2: movsd 
008307B3: push 00000000h
008307B5: push var_20
008307B8: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008307BD: lea eax, var_20
008307C0: push eax
008307C1: lea eax, var_1C
008307C4: push eax
008307C5: push 00000002h
008307C7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008307CC: add esp, 0000000Ch
008307CF: mov eax, [ebp+08h]
008307D2: mov eax, [eax]
008307D4: push [ebp+08h]
008307D7: call [eax+0000036Ch]
008307DD: push eax
008307DE: lea eax, var_1C
008307E1: push eax
008307E2: call 00410A84h ; Set (object)
008307E7: mov var_48, eax
008307EA: lea eax, var_20
008307ED: push eax
008307EE: push 00000009h
008307F0: mov eax, var_48
008307F3: mov eax, [eax]
008307F5: push var_48
008307F8: call [eax+40h]
008307FB: fclex 
008307FD: mov var_4C, eax
00830800: cmp var_4C, 00000000h
00830804: jnl 83081Dh
00830806: push 00000040h
00830808: push 00440DE8h
0083080D: push var_48
00830810: push var_4C
00830813: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830818: mov var_80, eax
0083081B: jmp 830821h
0083081D: and var_80, 00000000h
00830821: mov eax, var_20
00830824: mov var_50, eax
00830827: push 00453EB4h ; Not set
0083082C: mov eax, var_50
0083082F: mov eax, [eax]
00830831: push var_50
00830834: call [eax+54h]
00830837: fclex 
00830839: mov var_54, eax
0083083C: cmp var_54, 00000000h
00830840: jnl 83085Ch
00830842: push 00000054h
00830844: push 004425E4h
00830849: push var_50
0083084C: push var_54
0083084F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830854: mov var_00000084, eax
0083085A: jmp 830863h
0083085C: and var_00000084, 00000000h
00830863: lea eax, var_20
00830866: push eax
00830867: lea eax, var_1C
0083086A: push eax
0083086B: push 00000002h
0083086D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00830872: add esp, 0000000Ch
00830875: mov var_04, 00000000h
0083087C: push 008308A3h
00830881: jmp 8308A2h
00830883: lea ecx, var_18
00830886: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0083088B: lea eax, var_24
0083088E: push eax
0083088F: lea eax, var_20
00830892: push eax
00830893: lea eax, var_1C
00830896: push eax
00830897: push 00000003h
00830899: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083089E: add esp, 00000010h
008308A1: ret 
End Sub

Private sub txtUptime__8308C2
008308C2: push ebp
008308C3: mov ebp, esp
008308C5: sub esp, 00000018h
008308C8: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008308CD: mov eax, fs:[00h]
008308D3: push eax
008308D4: mov fs:[00000000h], esp
008308DB: mov eax, 000001B0h
008308E0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008308E5: push ebx
008308E6: push esi
008308E7: push edi
008308E8: mov var_18, esp
008308EB: mov var_14, 0040B720h
008308F2: mov eax, [ebp+08h]
008308F5: and eax, 00000001h
008308F8: mov var_10, eax
008308FB: mov eax, [ebp+08h]
008308FE: and al, FEh
00830900: mov [ebp+08h], eax
00830903: mov var_0C, 00000000h
0083090A: mov eax, [ebp+08h]
0083090D: mov eax, [eax]
0083090F: push [ebp+08h]
00830912: call [eax+04h]
00830915: mov var_04, 00000001h
0083091C: mov var_04, 00000002h
00830923: push FFFFFFFFh
00830925: call 00410A60h ; On Error ...
0083092A: mov var_04, 00000003h
00830931: mov eax, [ebp+0Ch]
00830934: mov ax, [eax]
00830937: mov var_000000F4, ax
0083093E: mov var_04, 00000004h
00830945: movsx eax, word ptr var_000000F4
0083094C: test eax, eax
0083094E: jnz 00831015h
00830954: mov var_04, 00000005h
0083095B: mov eax, [ebp+08h]
0083095E: mov eax, [eax]
00830960: push [ebp+08h]
00830963: call [eax+00000318h]
00830969: push eax
0083096A: lea eax, var_44
0083096D: push eax
0083096E: call 00410A84h ; Set (object)
00830973: mov var_000000B4, eax
00830979: lea eax, var_48
0083097C: push eax
0083097D: mov eax, [ebp+0Ch]
00830980: mov ax, [eax]
00830983: push eax
00830984: mov eax, var_000000B4
0083098A: mov eax, [eax]
0083098C: push var_000000B4
00830992: call [eax+40h]
00830995: fclex 
00830997: mov var_000000B8, eax
0083099D: cmp var_000000B8, 00000000h
008309A4: jnl 8309C6h
008309A6: push 00000040h
008309A8: push 00440DE8h
008309AD: push var_000000B4
008309B3: push var_000000B8
008309B9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008309BE: mov var_0000011C, eax
008309C4: jmp 8309CDh
008309C6: and var_0000011C, 00000000h
008309CD: mov eax, var_48
008309D0: mov var_000000BC, eax
008309D6: lea eax, var_24
008309D9: push eax
008309DA: mov eax, var_000000BC
008309E0: mov eax, [eax]
008309E2: push var_000000BC
008309E8: call [eax+000000A0h]
008309EE: fclex 
008309F0: mov var_000000C0, eax
008309F6: cmp var_000000C0, 00000000h
008309FD: jnl 830A22h
008309FF: push 000000A0h
00830A04: push 00440E08h
00830A09: push var_000000BC
00830A0F: push var_000000C0
00830A15: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830A1A: mov var_00000120, eax
00830A20: jmp 830A29h
00830A22: and var_00000120, 00000000h
00830A29: mov eax, [ebp+08h]
00830A2C: mov eax, [eax]
00830A2E: push [ebp+08h]
00830A31: call [eax+00000318h]
00830A37: push eax
00830A38: lea eax, var_4C
00830A3B: push eax
00830A3C: call 00410A84h ; Set (object)
00830A41: mov var_000000C4, eax
00830A47: lea eax, var_50
00830A4A: push eax
00830A4B: mov eax, [ebp+0Ch]
00830A4E: mov ax, [eax]
00830A51: push eax
00830A52: mov eax, var_000000C4
00830A58: mov eax, [eax]
00830A5A: push var_000000C4
00830A60: call [eax+40h]
00830A63: fclex 
00830A65: mov var_000000C8, eax
00830A6B: cmp var_000000C8, 00000000h
00830A72: jnl 830A94h
00830A74: push 00000040h
00830A76: push 00440DE8h
00830A7B: push var_000000C4
00830A81: push var_000000C8
00830A87: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830A8C: mov var_00000124, eax
00830A92: jmp 830A9Bh
00830A94: and var_00000124, 00000000h
00830A9B: mov eax, var_50
00830A9E: mov var_0000010C, eax
00830AA4: and var_50, 00000000h
00830AA8: mov eax, var_0000010C
00830AAE: mov var_68, eax
00830AB1: mov var_70, 00000009h
00830AB8: push var_24
00830ABB: call 0041098Eh ; Len(arg_1)
00830AC0: xor ebx, ebx
00830AC2: test eax, eax
00830AC4: setnle bl
00830AC7: neg ebx
00830AC9: lea eax, var_70
00830ACC: push eax
00830ACD: call 004109EEh ; IsNumeric(arg_1)
00830AD2: neg ax
00830AD5: sbb eax, eax
00830AD7: inc eax
00830AD8: neg eax
00830ADA: and bx, ax
00830ADD: mov var_000000CC, bx
00830AE4: lea ecx, var_24
00830AE7: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00830AEC: lea eax, var_4C
00830AEF: push eax
00830AF0: lea eax, var_48
00830AF3: push eax
00830AF4: lea eax, var_44
00830AF7: push eax
00830AF8: push 00000003h
00830AFA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00830AFF: add esp, 00000010h
00830B02: lea ecx, var_70
00830B05: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00830B0A: movsx eax, word ptr var_000000CC
00830B11: test eax, eax
00830B13: jz 00830DD2h
00830B19: mov var_04, 00000006h
00830B20: mov eax, [ebp+08h]
00830B23: mov eax, [eax]
00830B25: push [ebp+08h]
00830B28: call [eax+00000318h]
00830B2E: push eax
00830B2F: lea eax, var_44
00830B32: push eax
00830B33: call 00410A84h ; Set (object)
00830B38: mov var_000000B4, eax
00830B3E: lea eax, var_48
00830B41: push eax
00830B42: mov eax, [ebp+0Ch]
00830B45: mov ax, [eax]
00830B48: push eax
00830B49: mov eax, var_000000B4
00830B4F: mov eax, [eax]
00830B51: push var_000000B4
00830B57: call [eax+40h]
00830B5A: fclex 
00830B5C: mov var_000000B8, eax
00830B62: cmp var_000000B8, 00000000h
00830B69: jnl 830B8Bh
00830B6B: push 00000040h
00830B6D: push 00440DE8h
00830B72: push var_000000B4
00830B78: push var_000000B8
00830B7E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830B83: mov var_00000128, eax
00830B89: jmp 830B92h
00830B8B: and var_00000128, 00000000h
00830B92: mov eax, [ebp+08h]
00830B95: mov eax, [eax]
00830B97: push [ebp+08h]
00830B9A: call [eax+00000318h]
00830BA0: push eax
00830BA1: lea eax, var_54
00830BA4: push eax
00830BA5: call 00410A84h ; Set (object)
00830BAA: mov var_000000CC, eax
00830BB0: lea eax, var_58
00830BB3: push eax
00830BB4: mov eax, [ebp+0Ch]
00830BB7: mov ax, [eax]
00830BBA: push eax
00830BBB: mov eax, var_000000CC
00830BC1: mov eax, [eax]
00830BC3: push var_000000CC
00830BC9: call [eax+40h]
00830BCC: fclex 
00830BCE: mov var_000000D0, eax
00830BD4: cmp var_000000D0, 00000000h
00830BDB: jnl 830BFDh
00830BDD: push 00000040h
00830BDF: push 00440DE8h
00830BE4: push var_000000CC
00830BEA: push var_000000D0
00830BF0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830BF5: mov var_0000012C, eax
00830BFB: jmp 830C04h
00830BFD: and var_0000012C, 00000000h
00830C04: mov eax, var_58
00830C07: mov var_000000D4, eax
00830C0D: mov eax, [ebp+08h]
00830C10: mov eax, [eax]
00830C12: push [ebp+08h]
00830C15: call [eax+00000318h]
00830C1B: push eax
00830C1C: lea eax, var_4C
00830C1F: push eax
00830C20: call 00410A84h ; Set (object)
00830C25: mov var_000000BC, eax
00830C2B: lea eax, var_50
00830C2E: push eax
00830C2F: mov eax, [ebp+0Ch]
00830C32: mov ax, [eax]
00830C35: push eax
00830C36: mov eax, var_000000BC
00830C3C: mov eax, [eax]
00830C3E: push var_000000BC
00830C44: call [eax+40h]
00830C47: fclex 
00830C49: mov var_000000C0, eax
00830C4F: cmp var_000000C0, 00000000h
00830C56: jnl 830C78h
00830C58: push 00000040h
00830C5A: push 00440DE8h
00830C5F: push var_000000BC
00830C65: push var_000000C0
00830C6B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830C70: mov var_00000130, eax
00830C76: jmp 830C7Fh
00830C78: and var_00000130, 00000000h
00830C7F: mov eax, var_50
00830C82: mov var_000000C4, eax
00830C88: lea eax, var_24
00830C8B: push eax
00830C8C: mov eax, var_000000C4
00830C92: mov eax, [eax]
00830C94: push var_000000C4
00830C9A: call [eax+000000A0h]
00830CA0: fclex 
00830CA2: mov var_000000C8, eax
00830CA8: cmp var_000000C8, 00000000h
00830CAF: jnl 830CD4h
00830CB1: push 000000A0h
00830CB6: push 00440E08h
00830CBB: push var_000000C4
00830CC1: push var_000000C8
00830CC7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830CCC: mov var_00000134, eax
00830CD2: jmp 830CDBh
00830CD4: and var_00000134, 00000000h
00830CDB: push var_24
00830CDE: call 0041098Eh ; Len(arg_1)
00830CE3: sub eax, 00000001h
00830CE6: jo 008321E4h
00830CEC: mov var_78, eax
00830CEF: mov var_80, 00000003h
00830CF6: mov eax, var_48
00830CF9: mov var_00000110, eax
00830CFF: and var_48, 00000000h
00830D03: mov eax, var_00000110
00830D09: mov var_68, eax
00830D0C: mov var_70, 00000009h
00830D13: lea eax, var_80
00830D16: push eax
00830D17: push 00000001h
00830D19: lea eax, var_70
00830D1C: push eax
00830D1D: lea eax, var_00000090
00830D23: push eax
00830D24: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
00830D29: lea eax, var_00000090
00830D2F: push eax
00830D30: lea eax, var_28
00830D33: push eax
00830D34: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
00830D39: push eax
00830D3A: mov eax, var_000000D4
00830D40: mov eax, [eax]
00830D42: push var_000000D4
00830D48: call [eax+000000A4h]
00830D4E: fclex 
00830D50: mov var_000000D8, eax
00830D56: cmp var_000000D8, 00000000h
00830D5D: jnl 830D82h
00830D5F: push 000000A4h
00830D64: push 00440E08h
00830D69: push var_000000D4
00830D6F: push var_000000D8
00830D75: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830D7A: mov var_00000138, eax
00830D80: jmp 830D89h
00830D82: and var_00000138, 00000000h
00830D89: lea eax, var_28
00830D8C: push eax
00830D8D: lea eax, var_24
00830D90: push eax
00830D91: push 00000002h
00830D93: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00830D98: add esp, 0000000Ch
00830D9B: lea eax, var_58
00830D9E: push eax
00830D9F: lea eax, var_54
00830DA2: push eax
00830DA3: lea eax, var_50
00830DA6: push eax
00830DA7: lea eax, var_4C
00830DAA: push eax
00830DAB: lea eax, var_44
00830DAE: push eax
00830DAF: push 00000005h
00830DB1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00830DB6: add esp, 00000018h
00830DB9: lea eax, var_00000090
00830DBF: push eax
00830DC0: lea eax, var_80
00830DC3: push eax
00830DC4: lea eax, var_70
00830DC7: push eax
00830DC8: push 00000003h
00830DCA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00830DCF: add esp, 00000010h
00830DD2: mov var_04, 00000008h
00830DD9: mov var_68, 80020004h
00830DE0: mov var_70, 0000000Ah
00830DE7: lea eax, var_70
00830DEA: push eax
00830DEB: push 0044AED4h ; {End}
00830DF0: call 00410736h ; SendKeys
00830DF5: lea ecx, var_70
00830DF8: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00830DFD: mov var_04, 00000009h
00830E04: mov eax, [ebp+08h]
00830E07: mov eax, [eax]
00830E09: push [ebp+08h]
00830E0C: call [eax+00000318h]
00830E12: push eax
00830E13: lea eax, var_44
00830E16: push eax
00830E17: call 00410A84h ; Set (object)
00830E1C: mov var_000000B4, eax
00830E22: lea eax, var_48
00830E25: push eax
00830E26: mov eax, [ebp+0Ch]
00830E29: mov ax, [eax]
00830E2C: push eax
00830E2D: mov eax, var_000000B4
00830E33: mov eax, [eax]
00830E35: push var_000000B4
00830E3B: call [eax+40h]
00830E3E: fclex 
00830E40: mov var_000000B8, eax
00830E46: cmp var_000000B8, 00000000h
00830E4D: jnl 830E6Fh
00830E4F: push 00000040h
00830E51: push 00440DE8h
00830E56: push var_000000B4
00830E5C: push var_000000B8
00830E62: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830E67: mov var_0000013C, eax
00830E6D: jmp 830E76h
00830E6F: and var_0000013C, 00000000h
00830E76: mov eax, var_48
00830E79: mov var_000000BC, eax
00830E7F: lea eax, var_24
00830E82: push eax
00830E83: mov eax, var_000000BC
00830E89: mov eax, [eax]
00830E8B: push var_000000BC
00830E91: call [eax+000000A0h]
00830E97: fclex 
00830E99: mov var_000000C0, eax
00830E9F: cmp var_000000C0, 00000000h
00830EA6: jnl 830ECBh
00830EA8: push 000000A0h
00830EAD: push 00440E08h
00830EB2: push var_000000BC
00830EB8: push var_000000C0
00830EBE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830EC3: mov var_00000140, eax
00830EC9: jmp 830ED2h
00830ECB: and var_00000140, 00000000h
00830ED2: push var_24
00830ED5: push 00000000h
00830ED7: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00830EDC: neg eax
00830EDE: sbb eax, eax
00830EE0: inc eax
00830EE1: neg eax
00830EE3: mov var_000000C4, ax
00830EEA: lea ecx, var_24
00830EED: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00830EF2: lea eax, var_48
00830EF5: push eax
00830EF6: lea eax, var_44
00830EF9: push eax
00830EFA: push 00000002h
00830EFC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00830F01: add esp, 0000000Ch
00830F04: movsx eax, word ptr var_000000C4
00830F0B: test eax, eax
00830F0D: jz 00831010h
00830F13: mov var_04, 0000000Ah
00830F1A: mov eax, [ebp+08h]
00830F1D: mov eax, [eax]
00830F1F: push [ebp+08h]
00830F22: call [eax+00000318h]
00830F28: push eax
00830F29: lea eax, var_44
00830F2C: push eax
00830F2D: call 00410A84h ; Set (object)
00830F32: mov var_000000B4, eax
00830F38: lea eax, var_48
00830F3B: push eax
00830F3C: mov eax, [ebp+0Ch]
00830F3F: mov ax, [eax]
00830F42: push eax
00830F43: mov eax, var_000000B4
00830F49: mov eax, [eax]
00830F4B: push var_000000B4
00830F51: call [eax+40h]
00830F54: fclex 
00830F56: mov var_000000B8, eax
00830F5C: cmp var_000000B8, 00000000h
00830F63: jnl 830F85h
00830F65: push 00000040h
00830F67: push 00440DE8h
00830F6C: push var_000000B4
00830F72: push var_000000B8
00830F78: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830F7D: mov var_00000144, eax
00830F83: jmp 830F8Ch
00830F85: and var_00000144, 00000000h
00830F8C: mov eax, var_48
00830F8F: mov var_000000BC, eax
00830F95: push 00000000h
00830F97: call 00410964h ; msvbvm60.dll.__vbaStrI2
00830F9C: mov edx, eax
00830F9E: lea ecx, var_24
00830FA1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00830FA6: push eax
00830FA7: mov eax, var_000000BC
00830FAD: mov eax, [eax]
00830FAF: push var_000000BC
00830FB5: call [eax+000000A4h]
00830FBB: fclex 
00830FBD: mov var_000000C0, eax
00830FC3: cmp var_000000C0, 00000000h
00830FCA: jnl 830FEFh
00830FCC: push 000000A4h
00830FD1: push 00440E08h
00830FD6: push var_000000BC
00830FDC: push var_000000C0
00830FE2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00830FE7: mov var_00000148, eax
00830FED: jmp 830FF6h
00830FEF: and var_00000148, 00000000h
00830FF6: lea ecx, var_24
00830FF9: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00830FFE: lea eax, var_48
00831001: push eax
00831002: lea eax, var_44
00831005: push eax
00831006: push 00000002h
00831008: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083100D: add esp, 0000000Ch
00831010: jmp 0083180Ah
00831015: mov var_04, 0000000Ch
0083101C: cmp word ptr var_000000F4, 0001h
00831024: jl 0083180Ah
0083102A: cmp word ptr var_000000F4, 0002h
00831032: jnle 0083180Ah
00831038: mov var_04, 0000000Dh
0083103F: mov eax, [ebp+08h]
00831042: mov eax, [eax]
00831044: push [ebp+08h]
00831047: call [eax+00000318h]
0083104D: push eax
0083104E: lea eax, var_44
00831051: push eax
00831052: call 00410A84h ; Set (object)
00831057: mov var_000000B4, eax
0083105D: lea eax, var_48
00831060: push eax
00831061: mov eax, [ebp+0Ch]
00831064: mov ax, [eax]
00831067: push eax
00831068: mov eax, var_000000B4
0083106E: mov eax, [eax]
00831070: push var_000000B4
00831076: call [eax+40h]
00831079: fclex 
0083107B: mov var_000000B8, eax
00831081: cmp var_000000B8, 00000000h
00831088: jnl 8310AAh
0083108A: push 00000040h
0083108C: push 00440DE8h
00831091: push var_000000B4
00831097: push var_000000B8
0083109D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008310A2: mov var_0000014C, eax
008310A8: jmp 8310B1h
008310AA: and var_0000014C, 00000000h
008310B1: mov eax, var_48
008310B4: mov var_000000BC, eax
008310BA: lea eax, var_24
008310BD: push eax
008310BE: mov eax, var_000000BC
008310C4: mov eax, [eax]
008310C6: push var_000000BC
008310CC: call [eax+000000A0h]
008310D2: fclex 
008310D4: mov var_000000C0, eax
008310DA: cmp var_000000C0, 00000000h
008310E1: jnl 831106h
008310E3: push 000000A0h
008310E8: push 00440E08h
008310ED: push var_000000BC
008310F3: push var_000000C0
008310F9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008310FE: mov var_00000150, eax
00831104: jmp 83110Dh
00831106: and var_00000150, 00000000h
0083110D: mov eax, [ebp+08h]
00831110: mov eax, [eax]
00831112: push [ebp+08h]
00831115: call [eax+00000318h]
0083111B: push eax
0083111C: lea eax, var_4C
0083111F: push eax
00831120: call 00410A84h ; Set (object)
00831125: mov var_000000C4, eax
0083112B: lea eax, var_50
0083112E: push eax
0083112F: mov eax, [ebp+0Ch]
00831132: mov ax, [eax]
00831135: push eax
00831136: mov eax, var_000000C4
0083113C: mov eax, [eax]
0083113E: push var_000000C4
00831144: call [eax+40h]
00831147: fclex 
00831149: mov var_000000C8, eax
0083114F: cmp var_000000C8, 00000000h
00831156: jnl 831178h
00831158: push 00000040h
0083115A: push 00440DE8h
0083115F: push var_000000C4
00831165: push var_000000C8
0083116B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831170: mov var_00000154, eax
00831176: jmp 83117Fh
00831178: and var_00000154, 00000000h
0083117F: mov eax, var_50
00831182: mov var_00000114, eax
00831188: and var_50, 00000000h
0083118C: mov eax, var_00000114
00831192: mov var_68, eax
00831195: mov var_70, 00000009h
0083119C: push var_24
0083119F: call 0041098Eh ; Len(arg_1)
008311A4: xor ebx, ebx
008311A6: test eax, eax
008311A8: setnle bl
008311AB: neg ebx
008311AD: lea eax, var_70
008311B0: push eax
008311B1: call 004109EEh ; IsNumeric(arg_1)
008311B6: neg ax
008311B9: sbb eax, eax
008311BB: inc eax
008311BC: neg eax
008311BE: and bx, ax
008311C1: mov var_000000CC, bx
008311C8: lea ecx, var_24
008311CB: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008311D0: lea eax, var_4C
008311D3: push eax
008311D4: lea eax, var_48
008311D7: push eax
008311D8: lea eax, var_44
008311DB: push eax
008311DC: push 00000003h
008311DE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008311E3: add esp, 00000010h
008311E6: lea ecx, var_70
008311E9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008311EE: movsx eax, word ptr var_000000CC
008311F5: test eax, eax
008311F7: jz 008314B6h
008311FD: mov var_04, 0000000Eh
00831204: mov eax, [ebp+08h]
00831207: mov eax, [eax]
00831209: push [ebp+08h]
0083120C: call [eax+00000318h]
00831212: push eax
00831213: lea eax, var_44
00831216: push eax
00831217: call 00410A84h ; Set (object)
0083121C: mov var_000000B4, eax
00831222: lea eax, var_48
00831225: push eax
00831226: mov eax, [ebp+0Ch]
00831229: mov ax, [eax]
0083122C: push eax
0083122D: mov eax, var_000000B4
00831233: mov eax, [eax]
00831235: push var_000000B4
0083123B: call [eax+40h]
0083123E: fclex 
00831240: mov var_000000B8, eax
00831246: cmp var_000000B8, 00000000h
0083124D: jnl 83126Fh
0083124F: push 00000040h
00831251: push 00440DE8h
00831256: push var_000000B4
0083125C: push var_000000B8
00831262: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831267: mov var_00000158, eax
0083126D: jmp 831276h
0083126F: and var_00000158, 00000000h
00831276: mov eax, [ebp+08h]
00831279: mov eax, [eax]
0083127B: push [ebp+08h]
0083127E: call [eax+00000318h]
00831284: push eax
00831285: lea eax, var_54
00831288: push eax
00831289: call 00410A84h ; Set (object)
0083128E: mov var_000000CC, eax
00831294: lea eax, var_58
00831297: push eax
00831298: mov eax, [ebp+0Ch]
0083129B: mov ax, [eax]
0083129E: push eax
0083129F: mov eax, var_000000CC
008312A5: mov eax, [eax]
008312A7: push var_000000CC
008312AD: call [eax+40h]
008312B0: fclex 
008312B2: mov var_000000D0, eax
008312B8: cmp var_000000D0, 00000000h
008312BF: jnl 8312E1h
008312C1: push 00000040h
008312C3: push 00440DE8h
008312C8: push var_000000CC
008312CE: push var_000000D0
008312D4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008312D9: mov var_0000015C, eax
008312DF: jmp 8312E8h
008312E1: and var_0000015C, 00000000h
008312E8: mov eax, var_58
008312EB: mov var_000000D4, eax
008312F1: mov eax, [ebp+08h]
008312F4: mov eax, [eax]
008312F6: push [ebp+08h]
008312F9: call [eax+00000318h]
008312FF: push eax
00831300: lea eax, var_4C
00831303: push eax
00831304: call 00410A84h ; Set (object)
00831309: mov var_000000BC, eax
0083130F: lea eax, var_50
00831312: push eax
00831313: mov eax, [ebp+0Ch]
00831316: mov ax, [eax]
00831319: push eax
0083131A: mov eax, var_000000BC
00831320: mov eax, [eax]
00831322: push var_000000BC
00831328: call [eax+40h]
0083132B: fclex 
0083132D: mov var_000000C0, eax
00831333: cmp var_000000C0, 00000000h
0083133A: jnl 83135Ch
0083133C: push 00000040h
0083133E: push 00440DE8h
00831343: push var_000000BC
00831349: push var_000000C0
0083134F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831354: mov var_00000160, eax
0083135A: jmp 831363h
0083135C: and var_00000160, 00000000h
00831363: mov eax, var_50
00831366: mov var_000000C4, eax
0083136C: lea eax, var_24
0083136F: push eax
00831370: mov eax, var_000000C4
00831376: mov eax, [eax]
00831378: push var_000000C4
0083137E: call [eax+000000A0h]
00831384: fclex 
00831386: mov var_000000C8, eax
0083138C: cmp var_000000C8, 00000000h
00831393: jnl 8313B8h
00831395: push 000000A0h
0083139A: push 00440E08h
0083139F: push var_000000C4
008313A5: push var_000000C8
008313AB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008313B0: mov var_00000164, eax
008313B6: jmp 8313BFh
008313B8: and var_00000164, 00000000h
008313BF: push var_24
008313C2: call 0041098Eh ; Len(arg_1)
008313C7: sub eax, 00000001h
008313CA: jo 008321E4h
008313D0: mov var_78, eax
008313D3: mov var_80, 00000003h
008313DA: mov eax, var_48
008313DD: mov var_00000118, eax
008313E3: and var_48, 00000000h
008313E7: mov eax, var_00000118
008313ED: mov var_68, eax
008313F0: mov var_70, 00000009h
008313F7: lea eax, var_80
008313FA: push eax
008313FB: push 00000001h
008313FD: lea eax, var_70
00831400: push eax
00831401: lea eax, var_00000090
00831407: push eax
00831408: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
0083140D: lea eax, var_00000090
00831413: push eax
00831414: lea eax, var_28
00831417: push eax
00831418: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
0083141D: push eax
0083141E: mov eax, var_000000D4
00831424: mov eax, [eax]
00831426: push var_000000D4
0083142C: call [eax+000000A4h]
00831432: fclex 
00831434: mov var_000000D8, eax
0083143A: cmp var_000000D8, 00000000h
00831441: jnl 831466h
00831443: push 000000A4h
00831448: push 00440E08h
0083144D: push var_000000D4
00831453: push var_000000D8
00831459: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0083145E: mov var_00000168, eax
00831464: jmp 83146Dh
00831466: and var_00000168, 00000000h
0083146D: lea eax, var_28
00831470: push eax
00831471: lea eax, var_24
00831474: push eax
00831475: push 00000002h
00831477: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0083147C: add esp, 0000000Ch
0083147F: lea eax, var_58
00831482: push eax
00831483: lea eax, var_54
00831486: push eax
00831487: lea eax, var_50
0083148A: push eax
0083148B: lea eax, var_4C
0083148E: push eax
0083148F: lea eax, var_44
00831492: push eax
00831493: push 00000005h
00831495: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083149A: add esp, 00000018h
0083149D: lea eax, var_00000090
008314A3: push eax
008314A4: lea eax, var_80
008314A7: push eax
008314A8: lea eax, var_70
008314AB: push eax
008314AC: push 00000003h
008314AE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008314B3: add esp, 00000010h
008314B6: mov var_04, 00000010h
008314BD: mov var_68, 80020004h
008314C4: mov var_70, 0000000Ah
008314CB: lea eax, var_70
008314CE: push eax
008314CF: push 0044AED4h ; {End}
008314D4: call 00410736h ; SendKeys
008314D9: lea ecx, var_70
008314DC: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008314E1: mov var_04, 00000011h
008314E8: mov eax, [ebp+08h]
008314EB: mov eax, [eax]
008314ED: push [ebp+08h]
008314F0: call [eax+00000318h]
008314F6: push eax
008314F7: lea eax, var_44
008314FA: push eax
008314FB: call 00410A84h ; Set (object)
00831500: mov var_000000B4, eax
00831506: lea eax, var_48
00831509: push eax
0083150A: mov eax, [ebp+0Ch]
0083150D: mov ax, [eax]
00831510: push eax
00831511: mov eax, var_000000B4
00831517: mov eax, [eax]
00831519: push var_000000B4
0083151F: call [eax+40h]
00831522: fclex 
00831524: mov var_000000B8, eax
0083152A: cmp var_000000B8, 00000000h
00831531: jnl 831553h
00831533: push 00000040h
00831535: push 00440DE8h
0083153A: push var_000000B4
00831540: push var_000000B8
00831546: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0083154B: mov var_0000016C, eax
00831551: jmp 83155Ah
00831553: and var_0000016C, 00000000h
0083155A: mov eax, var_48
0083155D: mov var_000000BC, eax
00831563: lea eax, var_24
00831566: push eax
00831567: mov eax, var_000000BC
0083156D: mov eax, [eax]
0083156F: push var_000000BC
00831575: call [eax+000000A0h]
0083157B: fclex 
0083157D: mov var_000000C0, eax
00831583: cmp var_000000C0, 00000000h
0083158A: jnl 8315AFh
0083158C: push 000000A0h
00831591: push 00440E08h
00831596: push var_000000BC
0083159C: push var_000000C0
008315A2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008315A7: mov var_00000170, eax
008315AD: jmp 8315B6h
008315AF: and var_00000170, 00000000h
008315B6: push var_24
008315B9: call 004109DCh ; Val(arg_1)
008315BE: call 004109D6h ; msvbvm60.dll.__vbaFpR8
008315C3: fcomp real8 ptr [00409FF8h]
008315C9: fstsw ax
008315CB: sahf 
008315CC: jbe 8315DAh
008315CE: mov var_00000174, 00000001h
008315D8: jmp 8315E1h
008315DA: and var_00000174, 00000000h
008315E1: mov eax, [ebp+08h]
008315E4: mov eax, [eax]
008315E6: push [ebp+08h]
008315E9: call [eax+00000318h]
008315EF: push eax
008315F0: lea eax, var_4C
008315F3: push eax
008315F4: call 00410A84h ; Set (object)
008315F9: mov var_000000C4, eax
008315FF: lea eax, var_50
00831602: push eax
00831603: mov eax, [ebp+0Ch]
00831606: mov ax, [eax]
00831609: push eax
0083160A: mov eax, var_000000C4
00831610: mov eax, [eax]
00831612: push var_000000C4
00831618: call [eax+40h]
0083161B: fclex 
0083161D: mov var_000000C8, eax
00831623: cmp var_000000C8, 00000000h
0083162A: jnl 83164Ch
0083162C: push 00000040h
0083162E: push 00440DE8h
00831633: push var_000000C4
00831639: push var_000000C8
0083163F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831644: mov var_00000178, eax
0083164A: jmp 831653h
0083164C: and var_00000178, 00000000h
00831653: mov eax, var_50
00831656: mov var_000000CC, eax
0083165C: lea eax, var_28
0083165F: push eax
00831660: mov eax, var_000000CC
00831666: mov eax, [eax]
00831668: push var_000000CC
0083166E: call [eax+000000A0h]
00831674: fclex 
00831676: mov var_000000D0, eax
0083167C: cmp var_000000D0, 00000000h
00831683: jnl 8316A8h
00831685: push 000000A0h
0083168A: push 00440E08h
0083168F: push var_000000CC
00831695: push var_000000D0
0083169B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008316A0: mov var_0000017C, eax
008316A6: jmp 8316AFh
008316A8: and var_0000017C, 00000000h
008316AF: mov esi, var_00000174
008316B5: neg esi
008316B7: push var_28
008316BA: push 00000000h
008316BC: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008316C1: neg eax
008316C3: sbb eax, eax
008316C5: inc eax
008316C6: neg eax
008316C8: or si, ax
008316CB: mov var_000000D4, si
008316D2: lea eax, var_28
008316D5: push eax
008316D6: lea eax, var_24
008316D9: push eax
008316DA: push 00000002h
008316DC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008316E1: add esp, 0000000Ch
008316E4: lea eax, var_50
008316E7: push eax
008316E8: lea eax, var_4C
008316EB: push eax
008316EC: lea eax, var_48
008316EF: push eax
008316F0: lea eax, var_44
008316F3: push eax
008316F4: push 00000004h
008316F6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008316FB: add esp, 00000014h
008316FE: movsx eax, word ptr var_000000D4
00831705: test eax, eax
00831707: jz 0083180Ah
0083170D: mov var_04, 00000012h
00831714: mov eax, [ebp+08h]
00831717: mov eax, [eax]
00831719: push [ebp+08h]
0083171C: call [eax+00000318h]
00831722: push eax
00831723: lea eax, var_44
00831726: push eax
00831727: call 00410A84h ; Set (object)
0083172C: mov var_000000B4, eax
00831732: lea eax, var_48
00831735: push eax
00831736: mov eax, [ebp+0Ch]
00831739: mov ax, [eax]
0083173C: push eax
0083173D: mov eax, var_000000B4
00831743: mov eax, [eax]
00831745: push var_000000B4
0083174B: call [eax+40h]
0083174E: fclex 
00831750: mov var_000000B8, eax
00831756: cmp var_000000B8, 00000000h
0083175D: jnl 83177Fh
0083175F: push 00000040h
00831761: push 00440DE8h
00831766: push var_000000B4
0083176C: push var_000000B8
00831772: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831777: mov var_00000180, eax
0083177D: jmp 831786h
0083177F: and var_00000180, 00000000h
00831786: mov eax, var_48
00831789: mov var_000000BC, eax
0083178F: push 00000000h
00831791: call 00410964h ; msvbvm60.dll.__vbaStrI2
00831796: mov edx, eax
00831798: lea ecx, var_24
0083179B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008317A0: push eax
008317A1: mov eax, var_000000BC
008317A7: mov eax, [eax]
008317A9: push var_000000BC
008317AF: call [eax+000000A4h]
008317B5: fclex 
008317B7: mov var_000000C0, eax
008317BD: cmp var_000000C0, 00000000h
008317C4: jnl 8317E9h
008317C6: push 000000A4h
008317CB: push 00440E08h
008317D0: push var_000000BC
008317D6: push var_000000C0
008317DC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008317E1: mov var_00000184, eax
008317E7: jmp 8317F0h
008317E9: and var_00000184, 00000000h
008317F0: lea ecx, var_24
008317F3: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008317F8: lea eax, var_48
008317FB: push eax
008317FC: lea eax, var_44
008317FF: push eax
00831800: push 00000002h
00831802: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00831807: add esp, 0000000Ch
0083180A: mov var_04, 00000015h
00831811: mov eax, [ebp+08h]
00831814: mov eax, [eax]
00831816: push [ebp+08h]
00831819: call [eax+00000318h]
0083181F: push eax
00831820: lea eax, var_44
00831823: push eax
00831824: call 00410A84h ; Set (object)
00831829: mov var_000000B4, eax
0083182F: lea eax, var_48
00831832: push eax
00831833: push 00000000h
00831835: mov eax, var_000000B4
0083183B: mov eax, [eax]
0083183D: push var_000000B4
00831843: call [eax+40h]
00831846: fclex 
00831848: mov var_000000B8, eax
0083184E: cmp var_000000B8, 00000000h
00831855: jnl 831877h
00831857: push 00000040h
00831859: push 00440DE8h
0083185E: push var_000000B4
00831864: push var_000000B8
0083186A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0083186F: mov var_00000188, eax
00831875: jmp 83187Eh
00831877: and var_00000188, 00000000h
0083187E: mov eax, var_48
00831881: mov var_000000BC, eax
00831887: lea eax, var_28
0083188A: push eax
0083188B: mov eax, var_000000BC
00831891: mov eax, [eax]
00831893: push var_000000BC
00831899: call [eax+000000A0h]
0083189F: fclex 
008318A1: mov var_000000C0, eax
008318A7: cmp var_000000C0, 00000000h
008318AE: jnl 8318D3h
008318B0: push 000000A0h
008318B5: push 00440E08h
008318BA: push var_000000BC
008318C0: push var_000000C0
008318C6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008318CB: mov var_0000018C, eax
008318D1: jmp 8318DAh
008318D3: and var_0000018C, 00000000h
008318DA: mov eax, [ebp+08h]
008318DD: mov eax, [eax]
008318DF: push [ebp+08h]
008318E2: call [eax+00000318h]
008318E8: push eax
008318E9: lea eax, var_4C
008318EC: push eax
008318ED: call 00410A84h ; Set (object)
008318F2: mov var_000000C4, eax
008318F8: lea eax, var_50
008318FB: push eax
008318FC: push 00000001h
008318FE: mov eax, var_000000C4
00831904: mov eax, [eax]
00831906: push var_000000C4
0083190C: call [eax+40h]
0083190F: fclex 
00831911: mov var_000000C8, eax
00831917: cmp var_000000C8, 00000000h
0083191E: jnl 831940h
00831920: push 00000040h
00831922: push 00440DE8h
00831927: push var_000000C4
0083192D: push var_000000C8
00831933: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831938: mov var_00000190, eax
0083193E: jmp 831947h
00831940: and var_00000190, 00000000h
00831947: mov eax, var_50
0083194A: mov var_000000CC, eax
00831950: lea eax, var_24
00831953: push eax
00831954: mov eax, var_000000CC
0083195A: mov eax, [eax]
0083195C: push var_000000CC
00831962: call [eax+000000A0h]
00831968: fclex 
0083196A: mov var_000000D0, eax
00831970: cmp var_000000D0, 00000000h
00831977: jnl 83199Ch
00831979: push 000000A0h
0083197E: push 00440E08h
00831983: push var_000000CC
00831989: push var_000000D0
0083198F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831994: mov var_00000194, eax
0083199A: jmp 8319A3h
0083199C: and var_00000194, 00000000h
008319A3: mov eax, [ebp+08h]
008319A6: mov eax, [eax]
008319A8: push [ebp+08h]
008319AB: call [eax+00000318h]
008319B1: push eax
008319B2: lea eax, var_54
008319B5: push eax
008319B6: call 00410A84h ; Set (object)
008319BB: mov var_000000D4, eax
008319C1: lea eax, var_58
008319C4: push eax
008319C5: push 00000002h
008319C7: mov eax, var_000000D4
008319CD: mov eax, [eax]
008319CF: push var_000000D4
008319D5: call [eax+40h]
008319D8: fclex 
008319DA: mov var_000000D8, eax
008319E0: cmp var_000000D8, 00000000h
008319E7: jnl 831A09h
008319E9: push 00000040h
008319EB: push 00440DE8h
008319F0: push var_000000D4
008319F6: push var_000000D8
008319FC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831A01: mov var_00000198, eax
00831A07: jmp 831A10h
00831A09: and var_00000198, 00000000h
00831A10: mov eax, var_58
00831A13: mov var_000000DC, eax
00831A19: lea eax, var_2C
00831A1C: push eax
00831A1D: mov eax, var_000000DC
00831A23: mov eax, [eax]
00831A25: push var_000000DC
00831A2B: call [eax+000000A0h]
00831A31: fclex 
00831A33: mov var_000000E0, eax
00831A39: cmp var_000000E0, 00000000h
00831A40: jnl 831A65h
00831A42: push 000000A0h
00831A47: push 00440E08h
00831A4C: push var_000000DC
00831A52: push var_000000E0
00831A58: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831A5D: mov var_0000019C, eax
00831A63: jmp 831A6Ch
00831A65: and var_0000019C, 00000000h
00831A6C: push var_28
00831A6F: push var_24
00831A72: call 00410A18h ; &
00831A77: mov edx, eax
00831A79: lea ecx, var_30
00831A7C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00831A81: push eax
00831A82: push var_2C
00831A85: call 00410A18h ; &
00831A8A: mov edx, eax
00831A8C: lea ecx, var_34
00831A8F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00831A94: push eax
00831A95: call 004109DCh ; Val(arg_1)
00831A9A: call 004109D6h ; msvbvm60.dll.__vbaFpR8
00831A9F: fcomp real8 ptr [00401770h]
00831AA5: fstsw ax
00831AA7: sahf 
00831AA8: jbe 831AB6h
00831AAA: mov var_000001A0, 00000001h
00831AB4: jmp 831ABDh
00831AB6: and var_000001A0, 00000000h
00831ABD: mov eax, var_000001A0
00831AC3: neg eax
00831AC5: mov var_000000E4, ax
00831ACC: lea eax, var_34
00831ACF: push eax
00831AD0: lea eax, var_2C
00831AD3: push eax
00831AD4: lea eax, var_30
00831AD7: push eax
00831AD8: lea eax, var_24
00831ADB: push eax
00831ADC: lea eax, var_28
00831ADF: push eax
00831AE0: push 00000005h
00831AE2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00831AE7: add esp, 00000018h
00831AEA: lea eax, var_58
00831AED: push eax
00831AEE: lea eax, var_54
00831AF1: push eax
00831AF2: lea eax, var_48
00831AF5: push eax
00831AF6: lea eax, var_50
00831AF9: push eax
00831AFA: lea eax, var_4C
00831AFD: push eax
00831AFE: lea eax, var_44
00831B01: push eax
00831B02: push 00000006h
00831B04: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00831B09: add esp, 0000001Ch
00831B0C: movsx eax, word ptr var_000000E4
00831B13: test eax, eax
00831B15: jz 00831FB5h
00831B1B: mov var_04, 00000016h
00831B22: mov var_00000098, 00000001h
00831B2C: mov var_000000A0, 00000003h
00831B36: mov eax, [ebp+08h]
00831B39: mov eax, [eax]
00831B3B: push [ebp+08h]
00831B3E: call [eax+00000370h]
00831B44: push eax
00831B45: lea eax, var_44
00831B48: push eax
00831B49: call 00410A84h ; Set (object)
00831B4E: mov var_000000B4, eax
00831B54: lea eax, var_48
00831B57: push eax
00831B58: push 0000000Ah
00831B5A: mov eax, var_000000B4
00831B60: mov eax, [eax]
00831B62: push var_000000B4
00831B68: call [eax+40h]
00831B6B: fclex 
00831B6D: mov var_000000B8, eax
00831B73: cmp var_000000B8, 00000000h
00831B7A: jnl 831B9Ch
00831B7C: push 00000040h
00831B7E: push 00440DE8h
00831B83: push var_000000B4
00831B89: push var_000000B8
00831B8F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831B94: mov var_000001A4, eax
00831B9A: jmp 831BA3h
00831B9C: and var_000001A4, 00000000h
00831BA3: push 00000010h
00831BA5: pop eax
00831BA6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00831BAB: lea esi, var_000000A0
00831BB1: mov edi, esp
00831BB3: movsd 
00831BB4: movsd 
00831BB5: movsd 
00831BB6: movsd 
00831BB7: push 00000000h
00831BB9: push var_48
00831BBC: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00831BC1: lea eax, var_48
00831BC4: push eax
00831BC5: lea eax, var_44
00831BC8: push eax
00831BC9: push 00000002h
00831BCB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00831BD0: add esp, 0000000Ch
00831BD3: mov var_04, 00000017h
00831BDA: mov eax, [ebp+08h]
00831BDD: mov eax, [eax]
00831BDF: push [ebp+08h]
00831BE2: call [eax+0000036Ch]
00831BE8: push eax
00831BE9: lea eax, var_5C
00831BEC: push eax
00831BED: call 00410A84h ; Set (object)
00831BF2: mov var_000000E4, eax
00831BF8: lea eax, var_60
00831BFB: push eax
00831BFC: push 0000000Ah
00831BFE: mov eax, var_000000E4
00831C04: mov eax, [eax]
00831C06: push var_000000E4
00831C0C: call [eax+40h]
00831C0F: fclex 
00831C11: mov var_000000E8, eax
00831C17: cmp var_000000E8, 00000000h
00831C1E: jnl 831C40h
00831C20: push 00000040h
00831C22: push 00440DE8h
00831C27: push var_000000E4
00831C2D: push var_000000E8
00831C33: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831C38: mov var_000001A8, eax
00831C3E: jmp 831C47h
00831C40: and var_000001A8, 00000000h
00831C47: mov eax, var_60
00831C4A: mov var_000000EC, eax
00831C50: mov eax, [ebp+08h]
00831C53: mov eax, [eax]
00831C55: push [ebp+08h]
00831C58: call [eax+00000318h]
00831C5E: push eax
00831C5F: lea eax, var_44
00831C62: push eax
00831C63: call 00410A84h ; Set (object)
00831C68: mov var_000000B4, eax
00831C6E: lea eax, var_48
00831C71: push eax
00831C72: push 00000000h
00831C74: mov eax, var_000000B4
00831C7A: mov eax, [eax]
00831C7C: push var_000000B4
00831C82: call [eax+40h]
00831C85: fclex 
00831C87: mov var_000000B8, eax
00831C8D: cmp var_000000B8, 00000000h
00831C94: jnl 831CB6h
00831C96: push 00000040h
00831C98: push 00440DE8h
00831C9D: push var_000000B4
00831CA3: push var_000000B8
00831CA9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831CAE: mov var_000001AC, eax
00831CB4: jmp 831CBDh
00831CB6: and var_000001AC, 00000000h
00831CBD: mov eax, var_48
00831CC0: mov var_000000BC, eax
00831CC6: lea eax, var_24
00831CC9: push eax
00831CCA: mov eax, var_000000BC
00831CD0: mov eax, [eax]
00831CD2: push var_000000BC
00831CD8: call [eax+000000A0h]
00831CDE: fclex 
00831CE0: mov var_000000C0, eax
00831CE6: cmp var_000000C0, 00000000h
00831CED: jnl 831D12h
00831CEF: push 000000A0h
00831CF4: push 00440E08h
00831CF9: push var_000000BC
00831CFF: push var_000000C0
00831D05: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831D0A: mov var_000001B0, eax
00831D10: jmp 831D19h
00831D12: and var_000001B0, 00000000h
00831D19: mov eax, [ebp+08h]
00831D1C: mov eax, [eax]
00831D1E: push [ebp+08h]
00831D21: call [eax+00000318h]
00831D27: push eax
00831D28: lea eax, var_4C
00831D2B: push eax
00831D2C: call 00410A84h ; Set (object)
00831D31: mov var_000000C4, eax
00831D37: lea eax, var_50
00831D3A: push eax
00831D3B: push 00000001h
00831D3D: mov eax, var_000000C4
00831D43: mov eax, [eax]
00831D45: push var_000000C4
00831D4B: call [eax+40h]
00831D4E: fclex 
00831D50: mov var_000000C8, eax
00831D56: cmp var_000000C8, 00000000h
00831D5D: jnl 831D7Fh
00831D5F: push 00000040h
00831D61: push 00440DE8h
00831D66: push var_000000C4
00831D6C: push var_000000C8
00831D72: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831D77: mov var_000001B4, eax
00831D7D: jmp 831D86h
00831D7F: and var_000001B4, 00000000h
00831D86: mov eax, var_50
00831D89: mov var_000000CC, eax
00831D8F: lea eax, var_28
00831D92: push eax
00831D93: mov eax, var_000000CC
00831D99: mov eax, [eax]
00831D9B: push var_000000CC
00831DA1: call [eax+000000A0h]
00831DA7: fclex 
00831DA9: mov var_000000D0, eax
00831DAF: cmp var_000000D0, 00000000h
00831DB6: jnl 831DDBh
00831DB8: push 000000A0h
00831DBD: push 00440E08h
00831DC2: push var_000000CC
00831DC8: push var_000000D0
00831DCE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831DD3: mov var_000001B8, eax
00831DD9: jmp 831DE2h
00831DDB: and var_000001B8, 00000000h
00831DE2: mov eax, [ebp+08h]
00831DE5: mov eax, [eax]
00831DE7: push [ebp+08h]
00831DEA: call [eax+00000318h]
00831DF0: push eax
00831DF1: lea eax, var_54
00831DF4: push eax
00831DF5: call 00410A84h ; Set (object)
00831DFA: mov var_000000D4, eax
00831E00: lea eax, var_58
00831E03: push eax
00831E04: push 00000002h
00831E06: mov eax, var_000000D4
00831E0C: mov eax, [eax]
00831E0E: push var_000000D4
00831E14: call [eax+40h]
00831E17: fclex 
00831E19: mov var_000000D8, eax
00831E1F: cmp var_000000D8, 00000000h
00831E26: jnl 831E48h
00831E28: push 00000040h
00831E2A: push 00440DE8h
00831E2F: push var_000000D4
00831E35: push var_000000D8
00831E3B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831E40: mov var_000001BC, eax
00831E46: jmp 831E4Fh
00831E48: and var_000001BC, 00000000h
00831E4F: mov eax, var_58
00831E52: mov var_000000DC, eax
00831E58: lea eax, var_34
00831E5B: push eax
00831E5C: mov eax, var_000000DC
00831E62: mov eax, [eax]
00831E64: push var_000000DC
00831E6A: call [eax+000000A0h]
00831E70: fclex 
00831E72: mov var_000000E0, eax
00831E78: cmp var_000000E0, 00000000h
00831E7F: jnl 831EA4h
00831E81: push 000000A0h
00831E86: push 00440E08h
00831E8B: push var_000000DC
00831E91: push var_000000E0
00831E97: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831E9C: mov var_000001C0, eax
00831EA2: jmp 831EABh
00831EA4: and var_000001C0, 00000000h
00831EAB: push var_24
00831EAE: push 0044E2E0h ; d:
00831EB3: call 00410A18h ; &
00831EB8: mov edx, eax
00831EBA: lea ecx, var_2C
00831EBD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00831EC2: push eax
00831EC3: push var_28
00831EC6: call 00410A18h ; &
00831ECB: mov edx, eax
00831ECD: lea ecx, var_30
00831ED0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00831ED5: push eax
00831ED6: push 0044E2ECh ; h:
00831EDB: call 00410A18h ; &
00831EE0: mov edx, eax
00831EE2: lea ecx, var_38
00831EE5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00831EEA: push eax
00831EEB: push var_34
00831EEE: call 00410A18h ; &
00831EF3: mov edx, eax
00831EF5: lea ecx, var_3C
00831EF8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00831EFD: push eax
00831EFE: push 0044E2F8h
00831F03: call 00410A18h ; &
00831F08: mov edx, eax
00831F0A: lea ecx, var_40
00831F0D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00831F12: push eax
00831F13: mov eax, var_000000EC
00831F19: mov eax, [eax]
00831F1B: push var_000000EC
00831F21: call [eax+54h]
00831F24: fclex 
00831F26: mov var_000000F0, eax
00831F2C: cmp var_000000F0, 00000000h
00831F33: jnl 831F55h
00831F35: push 00000054h
00831F37: push 004425E4h
00831F3C: push var_000000EC
00831F42: push var_000000F0
00831F48: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00831F4D: mov var_000001C4, eax
00831F53: jmp 831F5Ch
00831F55: and var_000001C4, 00000000h
00831F5C: lea eax, var_40
00831F5F: push eax
00831F60: lea eax, var_3C
00831F63: push eax
00831F64: lea eax, var_34
00831F67: push eax
00831F68: lea eax, var_38
00831F6B: push eax
00831F6C: lea eax, var_30
00831F6F: push eax
00831F70: lea eax, var_28
00831F73: push eax
00831F74: lea eax, var_2C
00831F77: push eax
00831F78: lea eax, var_24
00831F7B: push eax
00831F7C: push 00000008h
00831F7E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00831F83: add esp, 00000024h
00831F86: lea eax, var_60
00831F89: push eax
00831F8A: lea eax, var_5C
00831F8D: push eax
00831F8E: lea eax, var_58
00831F91: push eax
00831F92: lea eax, var_54
00831F95: push eax
00831F96: lea eax, var_50
00831F99: push eax
00831F9A: lea eax, var_4C
00831F9D: push eax
00831F9E: lea eax, var_48
00831FA1: push eax
00831FA2: lea eax, var_44
00831FA5: push eax
00831FA6: push 00000008h
00831FA8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00831FAD: add esp, 00000024h
00831FB0: jmp 00832147h
00831FB5: mov var_04, 00000019h
00831FBC: and var_00000098, 00000000h
00831FC3: mov var_000000A0, 00000003h
00831FCD: mov eax, [ebp+08h]
00831FD0: mov eax, [eax]
00831FD2: push [ebp+08h]
00831FD5: call [eax+00000370h]
00831FDB: push eax
00831FDC: lea eax, var_44
00831FDF: push eax
00831FE0: call 00410A84h ; Set (object)
00831FE5: mov var_000000B4, eax
00831FEB: lea eax, var_48
00831FEE: push eax
00831FEF: push 0000000Ah
00831FF1: mov eax, var_000000B4
00831FF7: mov eax, [eax]
00831FF9: push var_000000B4
00831FFF: call [eax+40h]
00832002: fclex 
00832004: mov var_000000B8, eax
0083200A: cmp var_000000B8, 00000000h
00832011: jnl 832033h
00832013: push 00000040h
00832015: push 00440DE8h
0083201A: push var_000000B4
00832020: push var_000000B8
00832026: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0083202B: mov var_000001C8, eax
00832031: jmp 83203Ah
00832033: and var_000001C8, 00000000h
0083203A: push 00000010h
0083203C: pop eax
0083203D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00832042: lea esi, var_000000A0
00832048: mov edi, esp
0083204A: movsd 
0083204B: movsd 
0083204C: movsd 
0083204D: movsd 
0083204E: push 00000000h
00832050: push var_48
00832053: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00832058: lea eax, var_48
0083205B: push eax
0083205C: lea eax, var_44
0083205F: push eax
00832060: push 00000002h
00832062: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00832067: add esp, 0000000Ch
0083206A: mov var_04, 0000001Ah
00832071: mov eax, [ebp+08h]
00832074: mov eax, [eax]
00832076: push [ebp+08h]
00832079: call [eax+0000036Ch]
0083207F: push eax
00832080: lea eax, var_44
00832083: push eax
00832084: call 00410A84h ; Set (object)
00832089: mov var_000000B4, eax
0083208F: lea eax, var_48
00832092: push eax
00832093: push 0000000Ah
00832095: mov eax, var_000000B4
0083209B: mov eax, [eax]
0083209D: push var_000000B4
008320A3: call [eax+40h]
008320A6: fclex 
008320A8: mov var_000000B8, eax
008320AE: cmp var_000000B8, 00000000h
008320B5: jnl 8320D7h
008320B7: push 00000040h
008320B9: push 00440DE8h
008320BE: push var_000000B4
008320C4: push var_000000B8
008320CA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008320CF: mov var_000001CC, eax
008320D5: jmp 8320DEh
008320D7: and var_000001CC, 00000000h
008320DE: mov eax, var_48
008320E1: mov var_000000BC, eax
008320E7: push 00453EB4h ; Not set
008320EC: mov eax, var_000000BC
008320F2: mov eax, [eax]
008320F4: push var_000000BC
008320FA: call [eax+54h]
008320FD: fclex 
008320FF: mov var_000000C0, eax
00832105: cmp var_000000C0, 00000000h
0083210C: jnl 83212Eh
0083210E: push 00000054h
00832110: push 004425E4h
00832115: push var_000000BC
0083211B: push var_000000C0
00832121: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00832126: mov var_000001D0, eax
0083212C: jmp 832135h
0083212E: and var_000001D0, 00000000h
00832135: lea eax, var_48
00832138: push eax
00832139: lea eax, var_44
0083213C: push eax
0083213D: push 00000002h
0083213F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00832144: add esp, 0000000Ch
00832147: mov var_10, 00000000h
0083214E: wait 
0083214F: push 008321C5h
00832154: jmp 8321C4h
00832156: lea eax, var_40
00832159: push eax
0083215A: lea eax, var_3C
0083215D: push eax
0083215E: lea eax, var_38
00832161: push eax
00832162: lea eax, var_34
00832165: push eax
00832166: lea eax, var_30
00832169: push eax
0083216A: lea eax, var_2C
0083216D: push eax
0083216E: lea eax, var_28
00832171: push eax
00832172: lea eax, var_24
00832175: push eax
00832176: push 00000008h
00832178: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0083217D: add esp, 00000024h
00832180: lea eax, var_60
00832183: push eax
00832184: lea eax, var_5C
00832187: push eax
00832188: lea eax, var_58
0083218B: push eax
0083218C: lea eax, var_54
0083218F: push eax
00832190: lea eax, var_50
00832193: push eax
00832194: lea eax, var_4C
00832197: push eax
00832198: lea eax, var_48
0083219B: push eax
0083219C: lea eax, var_44
0083219F: push eax
008321A0: push 00000008h
008321A2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008321A7: add esp, 00000024h
008321AA: lea eax, var_00000090
008321B0: push eax
008321B1: lea eax, var_80
008321B4: push eax
008321B5: lea eax, var_70
008321B8: push eax
008321B9: push 00000003h
008321BB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008321C0: add esp, 00000010h
008321C3: ret 
End Sub

Private sub txtIdle__8321E9
008321E9: push ebp
008321EA: mov ebp, esp
008321EC: sub esp, 00000018h
008321EF: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008321F4: mov eax, fs:[00h]
008321FA: push eax
008321FB: mov fs:[00000000h], esp
00832202: mov eax, 000001B0h
00832207: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0083220C: push ebx
0083220D: push esi
0083220E: push edi
0083220F: mov var_18, esp
00832212: mov var_14, 0040B7B0h
00832219: mov eax, [ebp+08h]
0083221C: and eax, 00000001h
0083221F: mov var_10, eax
00832222: mov eax, [ebp+08h]
00832225: and al, FEh
00832227: mov [ebp+08h], eax
0083222A: mov var_0C, 00000000h
00832231: mov eax, [ebp+08h]
00832234: mov eax, [eax]
00832236: push [ebp+08h]
00832239: call [eax+04h]
0083223C: mov var_04, 00000001h
00832243: mov var_04, 00000002h
0083224A: push FFFFFFFFh
0083224C: call 00410A60h ; On Error ...
00832251: mov var_04, 00000003h
00832258: mov eax, [ebp+0Ch]
0083225B: mov ax, [eax]
0083225E: mov var_000000F4, ax
00832265: mov var_04, 00000004h
0083226C: movsx eax, word ptr var_000000F4
00832273: test eax, eax
00832275: jnz 0083293Ch
0083227B: mov var_04, 00000005h
00832282: mov eax, [ebp+08h]
00832285: mov eax, [eax]
00832287: push [ebp+08h]
0083228A: call [eax+00000314h]
00832290: push eax
00832291: lea eax, var_44
00832294: push eax
00832295: call 00410A84h ; Set (object)
0083229A: mov var_000000B4, eax
008322A0: lea eax, var_48
008322A3: push eax
008322A4: mov eax, [ebp+0Ch]
008322A7: mov ax, [eax]
008322AA: push eax
008322AB: mov eax, var_000000B4
008322B1: mov eax, [eax]
008322B3: push var_000000B4
008322B9: call [eax+40h]
008322BC: fclex 
008322BE: mov var_000000B8, eax
008322C4: cmp var_000000B8, 00000000h
008322CB: jnl 8322EDh
008322CD: push 00000040h
008322CF: push 00440DE8h
008322D4: push var_000000B4
008322DA: push var_000000B8
008322E0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008322E5: mov var_0000011C, eax
008322EB: jmp 8322F4h
008322ED: and var_0000011C, 00000000h
008322F4: mov eax, var_48
008322F7: mov var_000000BC, eax
008322FD: lea eax, var_24
00832300: push eax
00832301: mov eax, var_000000BC
00832307: mov eax, [eax]
00832309: push var_000000BC
0083230F: call [eax+000000A0h]
00832315: fclex 
00832317: mov var_000000C0, eax
0083231D: cmp var_000000C0, 00000000h
00832324: jnl 832349h
00832326: push 000000A0h
0083232B: push 00440E08h
00832330: push var_000000BC
00832336: push var_000000C0
0083233C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00832341: mov var_00000120, eax
00832347: jmp 832350h
00832349: and var_00000120, 00000000h
00832350: mov eax, [ebp+08h]
00832353: mov eax, [eax]
00832355: push [ebp+08h]
00832358: call [eax+00000314h]
0083235E: push eax
0083235F: lea eax, var_4C
00832362: push eax
00832363: call 00410A84h ; Set (object)
00832368: mov var_000000C4, eax
0083236E: lea eax, var_50
00832371: push eax
00832372: mov eax, [ebp+0Ch]
00832375: mov ax, [eax]
00832378: push eax
00832379: mov eax, var_000000C4
0083237F: mov eax, [eax]
00832381: push var_000000C4
00832387: call [eax+40h]
0083238A: fclex 
0083238C: mov var_000000C8, eax
00832392: cmp var_000000C8, 00000000h
00832399: jnl 8323BBh
0083239B: push 00000040h
0083239D: push 00440DE8h
008323A2: push var_000000C4
008323A8: push var_000000C8
008323AE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008323B3: mov var_00000124, eax
008323B9: jmp 8323C2h
008323BB: and var_00000124, 00000000h
008323C2: mov eax, var_50
008323C5: mov var_0000010C, eax
008323CB: and var_50, 00000000h
008323CF: mov eax, var_0000010C
008323D5: mov var_68, eax
008323D8: mov var_70, 00000009h
008323DF: push var_24
008323E2: call 0041098Eh ; Len(arg_1)
008323E7: xor ebx, ebx
008323E9: test eax, eax
008323EB: setnle bl
008323EE: neg ebx
008323F0: lea eax, var_70
008323F3: push eax
008323F4: call 004109EEh ; IsNumeric(arg_1)
008323F9: neg ax
008323FC: sbb eax, eax
008323FE: inc eax
008323FF: neg eax
00832401: and bx, ax
00832404: mov var_000000CC, bx
0083240B: lea ecx, var_24
0083240E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00832413: lea eax, var_4C
00832416: push eax
00832417: lea eax, var_48
0083241A: push eax
0083241B: lea eax, var_44
0083241E: push eax
0083241F: push 00000003h
00832421: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00832426: add esp, 00000010h
00832429: lea ecx, var_70
0083242C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00832431: movsx eax, word ptr var_000000CC
00832438: test eax, eax
0083243A: jz 008326F9h
00832440: mov var_04, 00000006h
00832447: mov eax, [ebp+08h]
0083244A: mov eax, [eax]
0083244C: push [ebp+08h]
0083244F: call [eax+00000314h]
00832455: push eax
00832456: lea eax, var_44
00832459: push eax
0083245A: call 00410A84h ; Set (object)
0083245F: mov var_000000B4, eax
00832465: lea eax, var_48
00832468: push eax
00832469: mov eax, [ebp+0Ch]
0083246C: mov ax, [eax]
0083246F: push eax
00832470: mov eax, var_000000B4
00832476: mov eax, [eax]
00832478: push var_000000B4
0083247E: call [eax+40h]
00832481: fclex 
00832483: mov var_000000B8, eax
00832489: cmp var_000000B8, 00000000h
00832490: jnl 8324B2h
00832492: push 00000040h
00832494: push 00440DE8h
00832499: push var_000000B4
0083249F: push var_000000B8
008324A5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008324AA: mov var_00000128, eax
008324B0: jmp 8324B9h
008324B2: and var_00000128, 00000000h
008324B9: mov eax, [ebp+08h]
008324BC: mov eax, [eax]
008324BE: push [ebp+08h]
008324C1: call [eax+00000314h]
008324C7: push eax
008324C8: lea eax, var_54
008324CB: push eax
008324CC: call 00410A84h ; Set (object)
008324D1: mov var_000000CC, eax
008324D7: lea eax, var_58
008324DA: push eax
008324DB: mov eax, [ebp+0Ch]
008324DE: mov ax, [eax]
008324E1: push eax
008324E2: mov eax, var_000000CC
008324E8: mov eax, [eax]
008324EA: push var_000000CC
008324F0: call [eax+40h]
008324F3: fclex 
008324F5: mov var_000000D0, eax
008324FB: cmp var_000000D0, 00000000h
00832502: jnl 832524h
00832504: push 00000040h
00832506: push 00440DE8h
0083250B: push var_000000CC
00832511: push var_000000D0
00832517: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0083251C: mov var_0000012C, eax
00832522: jmp 83252Bh
00832524: and var_0000012C, 00000000h
0083252B: mov eax, var_58
0083252E: mov var_000000D4, eax
00832534: mov eax, [ebp+08h]
00832537: mov eax, [eax]
00832539: push [ebp+08h]
0083253C: call [eax+00000314h]
00832542: push eax
00832543: lea eax, var_4C
00832546: push eax
00832547: call 00410A84h ; Set (object)
0083254C: mov var_000000BC, eax
00832552: lea eax, var_50
00832555: push eax
00832556: mov eax, [ebp+0Ch]
00832559: mov ax, [eax]
0083255C: push eax
0083255D: mov eax, var_000000BC
00832563: mov eax, [eax]
00832565: push var_000000BC
0083256B: call [eax+40h]
0083256E: fclex 
00832570: mov var_000000C0, eax
00832576: cmp var_000000C0, 00000000h
0083257D: jnl 83259Fh
0083257F: push 00000040h
00832581: push 00440DE8h
00832586: push var_000000BC
0083258C: push var_000000C0
00832592: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00832597: mov var_00000130, eax
0083259D: jmp 8325A6h
0083259F: and var_00000130, 00000000h
008325A6: mov eax, var_50
008325A9: mov var_000000C4, eax
008325AF: lea eax, var_24
008325B2: push eax
008325B3: mov eax, var_000000C4
008325B9: mov eax, [eax]
008325BB: push var_000000C4
008325C1: call [eax+000000A0h]
008325C7: fclex 
008325C9: mov var_000000C8, eax
008325CF: cmp var_000000C8, 00000000h
008325D6: jnl 8325FBh
008325D8: push 000000A0h
008325DD: push 00440E08h
008325E2: push var_000000C4
008325E8: push var_000000C8
008325EE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008325F3: mov var_00000134, eax
008325F9: jmp 832602h
008325FB: and var_00000134, 00000000h
00832602: push var_24
00832605: call 0041098Eh ; Len(arg_1)
0083260A: sub eax, 00000001h
0083260D: jo 00833B0Bh
00832613: mov var_78, eax
00832616: mov var_80, 00000003h
0083261D: mov eax, var_48
00832620: mov var_00000110, eax
00832626: and var_48, 00000000h
0083262A: mov eax, var_00000110
00832630: mov var_68, eax
00832633: mov var_70, 00000009h
0083263A: lea eax, var_80
0083263D: push eax
0083263E: push 00000001h
00832640: lea eax, var_70
00832643: push eax
00832644: lea eax, var_00000090
0083264A: push eax
0083264B: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
00832650: lea eax, var_00000090
00832656: push eax
00832657: lea eax, var_28
0083265A: push eax
0083265B: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
00832660: push eax
00832661: mov eax, var_000000D4
00832667: mov eax, [eax]
00832669: push var_000000D4
0083266F: call [eax+000000A4h]
00832675: fclex 
00832677: mov var_000000D8, eax
0083267D: cmp var_000000D8, 00000000h
00832684: jnl 8326A9h
00832686: push 000000A4h
0083268B: push 00440E08h
00832690: push var_000000D4
00832696: push var_000000D8
0083269C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008326A1: mov var_00000138, eax
008326A7: jmp 8326B0h
008326A9: and var_00000138, 00000000h
008326B0: lea eax, var_28
008326B3: push eax
008326B4: lea eax, var_24
008326B7: push eax
008326B8: push 00000002h
008326BA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008326BF: add esp, 0000000Ch
008326C2: lea eax, var_58
008326C5: push eax
008326C6: lea eax, var_54
008326C9: push eax
008326CA: lea eax, var_50
008326CD: push eax
008326CE: lea eax, var_4C
008326D1: push eax
008326D2: lea eax, var_44
008326D5: push eax
008326D6: push 00000005h
008326D8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008326DD: add esp, 00000018h
008326E0: lea eax, var_00000090
008326E6: push eax
008326E7: lea eax, var_80
008326EA: push eax
008326EB: lea eax, var_70
008326EE: push eax
008326EF: push 00000003h
008326F1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008326F6: add esp, 00000010h
008326F9: mov var_04, 00000008h
00832700: mov var_68, 80020004h
00832707: mov var_70, 0000000Ah
0083270E: lea eax, var_70
00832711: push eax
00832712: push 0044AED4h ; {End}
00832717: call 00410736h ; SendKeys
0083271C: lea ecx, var_70
0083271F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00832724: mov var_04, 00000009h
0083272B: mov eax, [ebp+08h]
0083272E: mov eax, [eax]
00832730: push [ebp+08h]
00832733: call [eax+00000314h]
00832739: push eax
0083273A: lea eax, var_44
0083273D: push eax
0083273E: call 00410A84h ; Set (object)
00832743: mov var_000000B4, eax
00832749: lea eax, var_48
0083274C: push eax
0083274D: mov eax, [ebp+0Ch]
00832750: mov ax, [eax]
00832753: push eax
00832754: mov eax, var_000000B4
0083275A: mov eax, [eax]
0083275C: push var_000000B4
00832762: call [eax+40h]
00832765: fclex 
00832767: mov var_000000B8, eax
0083276D: cmp var_000000B8, 00000000h
00832774: jnl 832796h
00832776: push 00000040h
00832778: push 00440DE8h
0083277D: push var_000000B4
00832783: push var_000000B8
00832789: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0083278E: mov var_0000013C, eax
00832794: jmp 83279Dh
00832796: and var_0000013C, 00000000h
0083279D: mov eax, var_48
008327A0: mov var_000000BC, eax
008327A6: lea eax, var_24
008327A9: push eax
008327AA: mov eax, var_000000BC
008327B0: mov eax, [eax]
008327B2: push var_000000BC
008327B8: call [eax+000000A0h]
008327BE: fclex 
008327C0: mov var_000000C0, eax
008327C6: cmp var_000000C0, 00000000h
008327CD: jnl 8327F2h
008327CF: push 000000A0h
008327D4: push 00440E08h
008327D9: push var_000000BC
008327DF: push var_000000C0
008327E5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008327EA: mov var_00000140, eax
008327F0: jmp 8327F9h
008327F2: and var_00000140, 00000000h
008327F9: push var_24
008327FC: push 00000000h
008327FE: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00832803: neg eax
00832805: sbb eax, eax
00832807: inc eax
00832808: neg eax
0083280A: mov var_000000C4, ax
00832811: lea ecx, var_24
00832814: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00832819: lea eax, var_48
0083281C: push eax
0083281D: lea eax, var_44
00832820: push eax
00832821: push 00000002h
00832823: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00832828: add esp, 0000000Ch
0083282B: movsx eax, word ptr var_000000C4
00832832: test eax, eax
00832834: jz 00832937h
0083283A: mov var_04, 0000000Ah
00832841: mov eax, [ebp+08h]
00832844: mov eax, [eax]
00832846: push [ebp+08h]
00832849: call [eax+00000314h]
0083284F: push eax
00832850: lea eax, var_44
00832853: push eax
00832854: call 00410A84h ; Set (object)
00832859: mov var_000000B4, eax
0083285F: lea eax, var_48
00832862: push eax
00832863: mov eax, [ebp+0Ch]
00832866: mov ax, [eax]
00832869: push eax
0083286A: mov eax, var_000000B4
00832870: mov eax, [eax]
00832872: push var_000000B4
00832878: call [eax+40h]
0083287B: fclex 
0083287D: mov var_000000B8, eax
00832883: cmp var_000000B8, 00000000h
0083288A: jnl 8328ACh
0083288C: push 00000040h
0083288E: push 00440DE8h
00832893: push var_000000B4
00832899: push var_000000B8
0083289F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008328A4: mov var_00000144, eax
008328AA: jmp 8328B3h
008328AC: and var_00000144, 00000000h
008328B3: mov eax, var_48
008328B6: mov var_000000BC, eax
008328BC: push 00000000h
008328BE: call 00410964h ; msvbvm60.dll.__vbaStrI2
008328C3: mov edx, eax
008328C5: lea ecx, var_24
008328C8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008328CD: push eax
008328CE: mov eax, var_000000BC
008328D4: mov eax, [eax]
008328D6: push var_000000BC
008328DC: call [eax+000000A4h]
008328E2: fclex 
008328E4: mov var_000000C0, eax
008328EA: cmp var_000000C0, 00000000h
008328F1: jnl 832916h
008328F3: push 000000A4h
008328F8: push 00440E08h
008328FD: push var_000000BC
00832903: push var_000000C0
00832909: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0083290E: mov var_00000148, eax
00832914: jmp 83291Dh
00832916: and var_00000148, 00000000h
0083291D: lea ecx, var_24
00832920: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00832925: lea eax, var_48
00832928: push eax
00832929: lea eax, var_44
0083292C: push eax
0083292D: push 00000002h
0083292F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00832934: add esp, 0000000Ch
00832937: jmp 00833131h
0083293C: mov var_04, 0000000Ch
00832943: cmp word ptr var_000000F4, 0001h
0083294B: jl 00833131h
00832951: cmp word ptr var_000000F4, 0002h
00832959: jnle 00833131h
0083295F: mov var_04, 0000000Dh
00832966: mov eax, [ebp+08h]
00832969: mov eax, [eax]
0083296B: push [ebp+08h]
0083296E: call [eax+00000314h]
00832974: push eax
00832975: lea eax, var_44
00832978: push eax
00832979: call 00410A84h ; Set (object)
0083297E: mov var_000000B4, eax
00832984: lea eax, var_48
00832987: push eax
00832988: mov eax, [ebp+0Ch]
0083298B: mov ax, [eax]
0083298E: push eax
0083298F: mov eax, var_000000B4
00832995: mov eax, [eax]
00832997: push var_000000B4
0083299D: call [eax+40h]
008329A0: fclex 
008329A2: mov var_000000B8, eax
008329A8: cmp var_000000B8, 00000000h
008329AF: jnl 8329D1h
008329B1: push 00000040h
008329B3: push 00440DE8h
008329B8: push var_000000B4
008329BE: push var_000000B8
008329C4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008329C9: mov var_0000014C, eax
008329CF: jmp 8329D8h
008329D1: and var_0000014C, 00000000h
008329D8: mov eax, var_48
008329DB: mov var_000000BC, eax
008329E1: lea eax, var_24
008329E4: push eax
008329E5: mov eax, var_000000BC
008329EB: mov eax, [eax]
008329ED: push var_000000BC
008329F3: call [eax+000000A0h]
008329F9: fclex 
008329FB: mov var_000000C0, eax
00832A01: cmp var_000000C0, 00000000h
00832A08: jnl 832A2Dh
00832A0A: push 000000A0h
00832A0F: push 00440E08h
00832A14: push var_000000BC
00832A1A: push var_000000C0
00832A20: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00832A25: mov var_00000150, eax
00832A2B: jmp 832A34h
00832A2D: and var_00000150, 00000000h
00832A34: mov eax, [ebp+08h]
00832A37: mov eax, [eax]
00832A39: push [ebp+08h]
00832A3C: call [eax+00000314h]
00832A42: push eax
00832A43: lea eax, var_4C
00832A46: push eax
00832A47: call 00410A84h ; Set (object)
00832A4C: mov var_000000C4, eax
00832A52: lea eax, var_50
00832A55: push eax
00832A56: mov eax, [ebp+0Ch]
00832A59: mov ax, [eax]
00832A5C: push eax
00832A5D: mov eax, var_000000C4
00832A63: mov eax, [eax]
00832A65: push var_000000C4
00832A6B: call [eax+40h]
00832A6E: fclex 
00832A70: mov var_000000C8, eax
00832A76: cmp var_000000C8, 00000000h
00832A7D: jnl 832A9Fh
00832A7F: push 00000040h
00832A81: push 00440DE8h
00832A86: push var_000000C4
00832A8C: push var_000000C8
00832A92: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00832A97: mov var_00000154, eax
00832A9D: jmp 832AA6h
00832A9F: and var_00000154, 00000000h
00832AA6: mov eax, var_50
00832AA9: mov var_00000114, eax
00832AAF: and var_50, 00000000h
00832AB3: mov eax, var_00000114
00832AB9: mov var_68, eax
00832ABC: mov var_70, 00000009h
00832AC3: push var_24
00832AC6: call 0041098Eh ; Len(arg_1)
00832ACB: xor ebx, ebx
00832ACD: test eax, eax
00832ACF: setnle bl
00832AD2: neg ebx
00832AD4: lea eax, var_70
00832AD7: push eax
00832AD8: call 004109EEh ; IsNumeric(arg_1)
00832ADD: neg ax
00832AE0: sbb eax, eax
00832AE2: inc eax
00832AE3: neg eax
00832AE5: and bx, ax
00832AE8: mov var_000000CC, bx
00832AEF: lea ecx, var_24
00832AF2: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00832AF7: lea eax, var_4C
00832AFA: push eax
00832AFB: lea eax, var_48
00832AFE: push eax
00832AFF: lea eax, var_44
00832B02: push eax
00832B03: push 00000003h
00832B05: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00832B0A: add esp, 00000010h
00832B0D: lea ecx, var_70
00832B10: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00832B15: movsx eax, word ptr var_000000CC
00832B1C: test eax, eax
00832B1E: jz 00832DDDh
00832B24: mov var_04, 0000000Eh
00832B2B: mov eax, [ebp+08h]
00832B2E: mov eax, [eax]
00832B30: push [ebp+08h]
00832B33: call [eax+00000314h]
00832B39: push eax
00832B3A: lea eax, var_44
00832B3D: push eax
00832B3E: call 00410A84h ; Set (object)
00832B43: mov var_000000B4, eax
00832B49: lea eax, var_48
00832B4C: push eax
00832B4D: mov eax, [ebp+0Ch]
00832B50: mov ax, [eax]
00832B53: push eax
00832B54: mov eax, var_000000B4
00832B5A: mov eax, [eax]
00832B5C: push var_000000B4
00832B62: call [eax+40h]
00832B65: fclex 
00832B67: mov var_000000B8, eax
00832B6D: cmp var_000000B8, 00000000h
00832B74: jnl 832B96h
00832B76: push 00000040h
00832B78: push 00440DE8h
00832B7D: push var_000000B4
00832B83: push var_000000B8
00832B89: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00832B8E: mov var_00000158, eax
00832B94: jmp 832B9Dh
00832B96: and var_00000158, 00000000h
00832B9D: mov eax, [ebp+08h]
00832BA0: mov eax, [eax]
00832BA2: push [ebp+08h]
00832BA5: call [eax+00000314h]
00832BAB: push eax
00832BAC: lea eax, var_54
00832BAF: push eax
00832BB0: call 00410A84h ; Set (object)
00832BB5: mov var_000000CC, eax
00832BBB: lea eax, var_58
00832BBE: push eax
00832BBF: mov eax, [ebp+0Ch]
00832BC2: mov ax, [eax]
00832BC5: push eax
00832BC6: mov eax, var_000000CC
00832BCC: mov eax, [eax]
00832BCE: push var_000000CC
00832BD4: call [eax+40h]
00832BD7: fclex 
00832BD9: mov var_000000D0, eax
00832BDF: cmp var_000000D0, 00000000h
00832BE6: jnl 832C08h
00832BE8: push 00000040h
00832BEA: push 00440DE8h
00832BEF: push var_000000CC
00832BF5: push var_000000D0
00832BFB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00832C00: mov var_0000015C, eax
00832C06: jmp 832C0Fh
00832C08: and var_0000015C, 00000000h
00832C0F: mov eax, var_58
00832C12: mov var_000000D4, eax
00832C18: mov eax, [ebp+08h]
00832C1B: mov eax, [eax]
00832C1D: push [ebp+08h]
00832C20: call [eax+00000314h]
00832C26: push eax
00832C27: lea eax, var_4C
00832C2A: push eax
00832C2B: call 00410A84h ; Set (object)
00832C30: mov var_000000BC, eax
00832C36: lea eax, var_50
00832C39: push eax
00832C3A: mov eax, [ebp+0Ch]
00832C3D: mov ax, [eax]
00832C40: push eax
00832C41: mov eax, var_000000BC
00832C47: mov eax, [eax]
00832C49: push var_000000BC
00832C4F: call [eax+40h]
00832C52: fclex 
00832C54: mov var_000000C0, eax
00832C5A: cmp var_000000C0, 00000000h
00832C61: jnl 832C83h
00832C63: push 00000040h
00832C65: push 00440DE8h
00832C6A: push var_000000BC
00832C70: push var_000000C0
00832C76: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00832C7B: mov var_00000160, eax
00832C81: jmp 832C8Ah
00832C83: and var_00000160, 00000000h
00832C8A: mov eax, var_50
00832C8D: mov var_000000C4, eax
00832C93: lea eax, var_24
00832C96: push eax
00832C97: mov eax, var_000000C4
00832C9D: mov eax, [eax]
00832C9F: push var_000000C4
00832CA5: call [eax+000000A0h]
00832CAB: fclex 
00832CAD: mov var_000000C8, eax
00832CB3: cmp var_000000C8, 00000000h
00832CBA: jnl 832CDFh
00832CBC: push 000000A0h
00832CC1: push 00440E08h
00832CC6: push var_000000C4
00832CCC: push var_000000C8
00832CD2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00832CD7: mov var_00000164, eax
00832CDD: jmp 832CE6h
00832CDF: and var_00000164, 00000000h
00832CE6: push var_24
00832CE9: call 0041098Eh ; Len(arg_1)
00832CEE: sub eax, 00000001h
00832CF1: jo 00833B0Bh
00832CF7: mov var_78, eax
00832CFA: mov var_80, 00000003h
00832D01: mov eax, var_48
00832D04: mov var_00000118, eax
00832D0A: and var_48, 00000000h
00832D0E: mov eax, var_00000118
00832D14: mov var_68, eax
00832D17: mov var_70, 00000009h
00832D1E: lea eax, var_80
00832D21: push eax
00832D22: push 00000001h
00832D24: lea eax, var_70
00832D27: push eax
00832D28: lea eax, var_00000090
00832D2E: push eax
00832D2F: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
00832D34: lea eax, var_00000090
00832D3A: push eax
00832D3B: lea eax, var_28
00832D3E: push eax
00832D3F: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
00832D44: push eax
00832D45: mov eax, var_000000D4
00832D4B: mov eax, [eax]
00832D4D: push var_000000D4
00832D53: call [eax+000000A4h]
00832D59: fclex 
00832D5B: mov var_000000D8, eax
00832D61: cmp var_000000D8, 00000000h
00832D68: jnl 832D8Dh
00832D6A: push 000000A4h
00832D6F: push 00440E08h
00832D74: push var_000000D4
00832D7A: push var_000000D8
00832D80: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00832D85: mov var_00000168, eax
00832D8B: jmp 832D94h
00832D8D: and var_00000168, 00000000h
00832D94: lea eax, var_28
00832D97: push eax
00832D98: lea eax, var_24
00832D9B: push eax
00832D9C: push 00000002h
00832D9E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00832DA3: add esp, 0000000Ch
00832DA6: lea eax, var_58
00832DA9: push eax
00832DAA: lea eax, var_54
00832DAD: push eax
00832DAE: lea eax, var_50
00832DB1: push eax
00832DB2: lea eax, var_4C
00832DB5: push eax
00832DB6: lea eax, var_44
00832DB9: push eax
00832DBA: push 00000005h
00832DBC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00832DC1: add esp, 00000018h
00832DC4: lea eax, var_00000090
00832DCA: push eax
00832DCB: lea eax, var_80
00832DCE: push eax
00832DCF: lea eax, var_70
00832DD2: push eax
00832DD3: push 00000003h
00832DD5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00832DDA: add esp, 00000010h
00832DDD: mov var_04, 00000010h
00832DE4: mov var_68, 80020004h
00832DEB: mov var_70, 0000000Ah
00832DF2: lea eax, var_70
00832DF5: push eax
00832DF6: push 0044AED4h ; {End}
00832DFB: call 00410736h ; SendKeys
00832E00: lea ecx, var_70
00832E03: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00832E08: mov var_04, 00000011h
00832E0F: mov eax, [ebp+08h]
00832E12: mov eax, [eax]
00832E14: push [ebp+08h]
00832E17: call [eax+00000314h]
00832E1D: push eax
00832E1E: lea eax, var_44
00832E21: push eax
00832E22: call 00410A84h ; Set (object)
00832E27: mov var_000000B4, eax
00832E2D: lea eax, var_48
00832E30: push eax
00832E31: mov eax, [ebp+0Ch]
00832E34: mov ax, [eax]
00832E37: push eax
00832E38: mov eax, var_000000B4
00832E3E: mov eax, [eax]
00832E40: push var_000000B4
00832E46: call [eax+40h]
00832E49: fclex 
00832E4B: mov var_000000B8, eax
00832E51: cmp var_000000B8, 00000000h
00832E58: jnl 832E7Ah
00832E5A: push 00000040h
00832E5C: push 00440DE8h
00832E61: push var_000000B4
00832E67: push var_000000B8
00832E6D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00832E72: mov var_0000016C, eax
00832E78: jmp 832E81h
00832E7A: and var_0000016C, 00000000h
00832E81: mov eax, var_48
00832E84: mov var_000000BC, eax
00832E8A: lea eax, var_24
00832E8D: push eax
00832E8E: mov eax, var_000000BC
00832E94: mov eax, [eax]
00832E96: push var_000000BC
00832E9C: call [eax+000000A0h]
00832EA2: fclex 
00832EA4: mov var_000000C0, eax
00832EAA: cmp var_000000C0, 00000000h
00832EB1: jnl 832ED6h
00832EB3: push 000000A0h
00832EB8: push 00440E08h
00832EBD: push var_000000BC
00832EC3: push var_000000C0
00832EC9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00832ECE: mov var_00000170, eax
00832ED4: jmp 832EDDh
00832ED6: and var_00000170, 00000000h
00832EDD: push var_24
00832EE0: call 004109DCh ; Val(arg_1)
00832EE5: call 004109D6h ; msvbvm60.dll.__vbaFpR8
00832EEA: fcomp real8 ptr [00409FF8h]
00832EF0: fstsw ax
00832EF2: sahf 
00832EF3: jbe 832F01h
00832EF5: mov var_00000174, 00000001h
00832EFF: jmp 832F08h
00832F01: and var_00000174, 00000000h
00832F08: mov eax, [ebp+08h]
00832F0B: mov eax, [eax]
00832F0D: push [ebp+08h]
00832F10: call [eax+00000314h]
00832F16: push eax
00832F17: lea eax, var_4C
00832F1A: push eax
00832F1B: call 00410A84h ; Set (object)
00832F20: mov var_000000C4, eax
00832F26: lea eax, var_50
00832F29: push eax
00832F2A: mov eax, [ebp+0Ch]
00832F2D: mov ax, [eax]
00832F30: push eax
00832F31: mov eax, var_000000C4
00832F37: mov eax, [eax]
00832F39: push var_000000C4
00832F3F: call [eax+40h]
00832F42: fclex 
00832F44: mov var_000000C8, eax
00832F4A: cmp var_000000C8, 00000000h
00832F51: jnl 832F73h
00832F53: push 00000040h
00832F55: push 00440DE8h
00832F5A: push var_000000C4
00832F60: push var_000000C8
00832F66: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00832F6B: mov var_00000178, eax
00832F71: jmp 832F7Ah
00832F73: and var_00000178, 00000000h
00832F7A: mov eax, var_50
00832F7D: mov var_000000CC, eax
00832F83: lea eax, var_28
00832F86: push eax
00832F87: mov eax, var_000000CC
00832F8D: mov eax, [eax]
00832F8F: push var_000000CC
00832F95: call [eax+000000A0h]
00832F9B: fclex 
00832F9D: mov var_000000D0, eax
00832FA3: cmp var_000000D0, 00000000h
00832FAA: jnl 832FCFh
00832FAC: push 000000A0h
00832FB1: push 00440E08h
00832FB6: push var_000000CC
00832FBC: push var_000000D0
00832FC2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00832FC7: mov var_0000017C, eax
00832FCD: jmp 832FD6h
00832FCF: and var_0000017C, 00000000h
00832FD6: mov esi, var_00000174
00832FDC: neg esi
00832FDE: push var_28
00832FE1: push 00000000h
00832FE3: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00832FE8: neg eax
00832FEA: sbb eax, eax
00832FEC: inc eax
00832FED: neg eax
00832FEF: or si, ax
00832FF2: mov var_000000D4, si
00832FF9: lea eax, var_28
00832FFC: push eax
00832FFD: lea eax, var_24
00833000: push eax
00833001: push 00000002h
00833003: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00833008: add esp, 0000000Ch
0083300B: lea eax, var_50
0083300E: push eax
0083300F: lea eax, var_4C
00833012: push eax
00833013: lea eax, var_48
00833016: push eax
00833017: lea eax, var_44
0083301A: push eax
0083301B: push 00000004h
0083301D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00833022: add esp, 00000014h
00833025: movsx eax, word ptr var_000000D4
0083302C: test eax, eax
0083302E: jz 00833131h
00833034: mov var_04, 00000012h
0083303B: mov eax, [ebp+08h]
0083303E: mov eax, [eax]
00833040: push [ebp+08h]
00833043: call [eax+00000314h]
00833049: push eax
0083304A: lea eax, var_44
0083304D: push eax
0083304E: call 00410A84h ; Set (object)
00833053: mov var_000000B4, eax
00833059: lea eax, var_48
0083305C: push eax
0083305D: mov eax, [ebp+0Ch]
00833060: mov ax, [eax]
00833063: push eax
00833064: mov eax, var_000000B4
0083306A: mov eax, [eax]
0083306C: push var_000000B4
00833072: call [eax+40h]
00833075: fclex 
00833077: mov var_000000B8, eax
0083307D: cmp var_000000B8, 00000000h
00833084: jnl 8330A6h
00833086: push 00000040h
00833088: push 00440DE8h
0083308D: push var_000000B4
00833093: push var_000000B8
00833099: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0083309E: mov var_00000180, eax
008330A4: jmp 8330ADh
008330A6: and var_00000180, 00000000h
008330AD: mov eax, var_48
008330B0: mov var_000000BC, eax
008330B6: push 00000000h
008330B8: call 00410964h ; msvbvm60.dll.__vbaStrI2
008330BD: mov edx, eax
008330BF: lea ecx, var_24
008330C2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008330C7: push eax
008330C8: mov eax, var_000000BC
008330CE: mov eax, [eax]
008330D0: push var_000000BC
008330D6: call [eax+000000A4h]
008330DC: fclex 
008330DE: mov var_000000C0, eax
008330E4: cmp var_000000C0, 00000000h
008330EB: jnl 833110h
008330ED: push 000000A4h
008330F2: push 00440E08h
008330F7: push var_000000BC
008330FD: push var_000000C0
00833103: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833108: mov var_00000184, eax
0083310E: jmp 833117h
00833110: and var_00000184, 00000000h
00833117: lea ecx, var_24
0083311A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0083311F: lea eax, var_48
00833122: push eax
00833123: lea eax, var_44
00833126: push eax
00833127: push 00000002h
00833129: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083312E: add esp, 0000000Ch
00833131: mov var_04, 00000015h
00833138: mov eax, [ebp+08h]
0083313B: mov eax, [eax]
0083313D: push [ebp+08h]
00833140: call [eax+00000314h]
00833146: push eax
00833147: lea eax, var_44
0083314A: push eax
0083314B: call 00410A84h ; Set (object)
00833150: mov var_000000B4, eax
00833156: lea eax, var_48
00833159: push eax
0083315A: push 00000000h
0083315C: mov eax, var_000000B4
00833162: mov eax, [eax]
00833164: push var_000000B4
0083316A: call [eax+40h]
0083316D: fclex 
0083316F: mov var_000000B8, eax
00833175: cmp var_000000B8, 00000000h
0083317C: jnl 83319Eh
0083317E: push 00000040h
00833180: push 00440DE8h
00833185: push var_000000B4
0083318B: push var_000000B8
00833191: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833196: mov var_00000188, eax
0083319C: jmp 8331A5h
0083319E: and var_00000188, 00000000h
008331A5: mov eax, var_48
008331A8: mov var_000000BC, eax
008331AE: lea eax, var_28
008331B1: push eax
008331B2: mov eax, var_000000BC
008331B8: mov eax, [eax]
008331BA: push var_000000BC
008331C0: call [eax+000000A0h]
008331C6: fclex 
008331C8: mov var_000000C0, eax
008331CE: cmp var_000000C0, 00000000h
008331D5: jnl 8331FAh
008331D7: push 000000A0h
008331DC: push 00440E08h
008331E1: push var_000000BC
008331E7: push var_000000C0
008331ED: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008331F2: mov var_0000018C, eax
008331F8: jmp 833201h
008331FA: and var_0000018C, 00000000h
00833201: mov eax, [ebp+08h]
00833204: mov eax, [eax]
00833206: push [ebp+08h]
00833209: call [eax+00000314h]
0083320F: push eax
00833210: lea eax, var_4C
00833213: push eax
00833214: call 00410A84h ; Set (object)
00833219: mov var_000000C4, eax
0083321F: lea eax, var_50
00833222: push eax
00833223: push 00000001h
00833225: mov eax, var_000000C4
0083322B: mov eax, [eax]
0083322D: push var_000000C4
00833233: call [eax+40h]
00833236: fclex 
00833238: mov var_000000C8, eax
0083323E: cmp var_000000C8, 00000000h
00833245: jnl 833267h
00833247: push 00000040h
00833249: push 00440DE8h
0083324E: push var_000000C4
00833254: push var_000000C8
0083325A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0083325F: mov var_00000190, eax
00833265: jmp 83326Eh
00833267: and var_00000190, 00000000h
0083326E: mov eax, var_50
00833271: mov var_000000CC, eax
00833277: lea eax, var_24
0083327A: push eax
0083327B: mov eax, var_000000CC
00833281: mov eax, [eax]
00833283: push var_000000CC
00833289: call [eax+000000A0h]
0083328F: fclex 
00833291: mov var_000000D0, eax
00833297: cmp var_000000D0, 00000000h
0083329E: jnl 8332C3h
008332A0: push 000000A0h
008332A5: push 00440E08h
008332AA: push var_000000CC
008332B0: push var_000000D0
008332B6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008332BB: mov var_00000194, eax
008332C1: jmp 8332CAh
008332C3: and var_00000194, 00000000h
008332CA: mov eax, [ebp+08h]
008332CD: mov eax, [eax]
008332CF: push [ebp+08h]
008332D2: call [eax+00000314h]
008332D8: push eax
008332D9: lea eax, var_54
008332DC: push eax
008332DD: call 00410A84h ; Set (object)
008332E2: mov var_000000D4, eax
008332E8: lea eax, var_58
008332EB: push eax
008332EC: push 00000002h
008332EE: mov eax, var_000000D4
008332F4: mov eax, [eax]
008332F6: push var_000000D4
008332FC: call [eax+40h]
008332FF: fclex 
00833301: mov var_000000D8, eax
00833307: cmp var_000000D8, 00000000h
0083330E: jnl 833330h
00833310: push 00000040h
00833312: push 00440DE8h
00833317: push var_000000D4
0083331D: push var_000000D8
00833323: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833328: mov var_00000198, eax
0083332E: jmp 833337h
00833330: and var_00000198, 00000000h
00833337: mov eax, var_58
0083333A: mov var_000000DC, eax
00833340: lea eax, var_2C
00833343: push eax
00833344: mov eax, var_000000DC
0083334A: mov eax, [eax]
0083334C: push var_000000DC
00833352: call [eax+000000A0h]
00833358: fclex 
0083335A: mov var_000000E0, eax
00833360: cmp var_000000E0, 00000000h
00833367: jnl 83338Ch
00833369: push 000000A0h
0083336E: push 00440E08h
00833373: push var_000000DC
00833379: push var_000000E0
0083337F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833384: mov var_0000019C, eax
0083338A: jmp 833393h
0083338C: and var_0000019C, 00000000h
00833393: push var_28
00833396: push var_24
00833399: call 00410A18h ; &
0083339E: mov edx, eax
008333A0: lea ecx, var_30
008333A3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008333A8: push eax
008333A9: push var_2C
008333AC: call 00410A18h ; &
008333B1: mov edx, eax
008333B3: lea ecx, var_34
008333B6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008333BB: push eax
008333BC: call 004109DCh ; Val(arg_1)
008333C1: call 004109D6h ; msvbvm60.dll.__vbaFpR8
008333C6: fcomp real8 ptr [00401770h]
008333CC: fstsw ax
008333CE: sahf 
008333CF: jbe 8333DDh
008333D1: mov var_000001A0, 00000001h
008333DB: jmp 8333E4h
008333DD: and var_000001A0, 00000000h
008333E4: mov eax, var_000001A0
008333EA: neg eax
008333EC: mov var_000000E4, ax
008333F3: lea eax, var_34
008333F6: push eax
008333F7: lea eax, var_2C
008333FA: push eax
008333FB: lea eax, var_30
008333FE: push eax
008333FF: lea eax, var_24
00833402: push eax
00833403: lea eax, var_28
00833406: push eax
00833407: push 00000005h
00833409: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0083340E: add esp, 00000018h
00833411: lea eax, var_58
00833414: push eax
00833415: lea eax, var_54
00833418: push eax
00833419: lea eax, var_48
0083341C: push eax
0083341D: lea eax, var_50
00833420: push eax
00833421: lea eax, var_4C
00833424: push eax
00833425: lea eax, var_44
00833428: push eax
00833429: push 00000006h
0083342B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00833430: add esp, 0000001Ch
00833433: movsx eax, word ptr var_000000E4
0083343A: test eax, eax
0083343C: jz 008338DCh
00833442: mov var_04, 00000016h
00833449: mov var_00000098, 00000001h
00833453: mov var_000000A0, 00000003h
0083345D: mov eax, [ebp+08h]
00833460: mov eax, [eax]
00833462: push [ebp+08h]
00833465: call [eax+00000370h]
0083346B: push eax
0083346C: lea eax, var_44
0083346F: push eax
00833470: call 00410A84h ; Set (object)
00833475: mov var_000000B4, eax
0083347B: lea eax, var_48
0083347E: push eax
0083347F: push 0000000Bh
00833481: mov eax, var_000000B4
00833487: mov eax, [eax]
00833489: push var_000000B4
0083348F: call [eax+40h]
00833492: fclex 
00833494: mov var_000000B8, eax
0083349A: cmp var_000000B8, 00000000h
008334A1: jnl 8334C3h
008334A3: push 00000040h
008334A5: push 00440DE8h
008334AA: push var_000000B4
008334B0: push var_000000B8
008334B6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008334BB: mov var_000001A4, eax
008334C1: jmp 8334CAh
008334C3: and var_000001A4, 00000000h
008334CA: push 00000010h
008334CC: pop eax
008334CD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008334D2: lea esi, var_000000A0
008334D8: mov edi, esp
008334DA: movsd 
008334DB: movsd 
008334DC: movsd 
008334DD: movsd 
008334DE: push 00000000h
008334E0: push var_48
008334E3: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008334E8: lea eax, var_48
008334EB: push eax
008334EC: lea eax, var_44
008334EF: push eax
008334F0: push 00000002h
008334F2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008334F7: add esp, 0000000Ch
008334FA: mov var_04, 00000017h
00833501: mov eax, [ebp+08h]
00833504: mov eax, [eax]
00833506: push [ebp+08h]
00833509: call [eax+0000036Ch]
0083350F: push eax
00833510: lea eax, var_5C
00833513: push eax
00833514: call 00410A84h ; Set (object)
00833519: mov var_000000E4, eax
0083351F: lea eax, var_60
00833522: push eax
00833523: push 0000000Bh
00833525: mov eax, var_000000E4
0083352B: mov eax, [eax]
0083352D: push var_000000E4
00833533: call [eax+40h]
00833536: fclex 
00833538: mov var_000000E8, eax
0083353E: cmp var_000000E8, 00000000h
00833545: jnl 833567h
00833547: push 00000040h
00833549: push 00440DE8h
0083354E: push var_000000E4
00833554: push var_000000E8
0083355A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0083355F: mov var_000001A8, eax
00833565: jmp 83356Eh
00833567: and var_000001A8, 00000000h
0083356E: mov eax, var_60
00833571: mov var_000000EC, eax
00833577: mov eax, [ebp+08h]
0083357A: mov eax, [eax]
0083357C: push [ebp+08h]
0083357F: call [eax+00000314h]
00833585: push eax
00833586: lea eax, var_44
00833589: push eax
0083358A: call 00410A84h ; Set (object)
0083358F: mov var_000000B4, eax
00833595: lea eax, var_48
00833598: push eax
00833599: push 00000000h
0083359B: mov eax, var_000000B4
008335A1: mov eax, [eax]
008335A3: push var_000000B4
008335A9: call [eax+40h]
008335AC: fclex 
008335AE: mov var_000000B8, eax
008335B4: cmp var_000000B8, 00000000h
008335BB: jnl 8335DDh
008335BD: push 00000040h
008335BF: push 00440DE8h
008335C4: push var_000000B4
008335CA: push var_000000B8
008335D0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008335D5: mov var_000001AC, eax
008335DB: jmp 8335E4h
008335DD: and var_000001AC, 00000000h
008335E4: mov eax, var_48
008335E7: mov var_000000BC, eax
008335ED: lea eax, var_24
008335F0: push eax
008335F1: mov eax, var_000000BC
008335F7: mov eax, [eax]
008335F9: push var_000000BC
008335FF: call [eax+000000A0h]
00833605: fclex 
00833607: mov var_000000C0, eax
0083360D: cmp var_000000C0, 00000000h
00833614: jnl 833639h
00833616: push 000000A0h
0083361B: push 00440E08h
00833620: push var_000000BC
00833626: push var_000000C0
0083362C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833631: mov var_000001B0, eax
00833637: jmp 833640h
00833639: and var_000001B0, 00000000h
00833640: mov eax, [ebp+08h]
00833643: mov eax, [eax]
00833645: push [ebp+08h]
00833648: call [eax+00000314h]
0083364E: push eax
0083364F: lea eax, var_4C
00833652: push eax
00833653: call 00410A84h ; Set (object)
00833658: mov var_000000C4, eax
0083365E: lea eax, var_50
00833661: push eax
00833662: push 00000001h
00833664: mov eax, var_000000C4
0083366A: mov eax, [eax]
0083366C: push var_000000C4
00833672: call [eax+40h]
00833675: fclex 
00833677: mov var_000000C8, eax
0083367D: cmp var_000000C8, 00000000h
00833684: jnl 8336A6h
00833686: push 00000040h
00833688: push 00440DE8h
0083368D: push var_000000C4
00833693: push var_000000C8
00833699: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0083369E: mov var_000001B4, eax
008336A4: jmp 8336ADh
008336A6: and var_000001B4, 00000000h
008336AD: mov eax, var_50
008336B0: mov var_000000CC, eax
008336B6: lea eax, var_28
008336B9: push eax
008336BA: mov eax, var_000000CC
008336C0: mov eax, [eax]
008336C2: push var_000000CC
008336C8: call [eax+000000A0h]
008336CE: fclex 
008336D0: mov var_000000D0, eax
008336D6: cmp var_000000D0, 00000000h
008336DD: jnl 833702h
008336DF: push 000000A0h
008336E4: push 00440E08h
008336E9: push var_000000CC
008336EF: push var_000000D0
008336F5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008336FA: mov var_000001B8, eax
00833700: jmp 833709h
00833702: and var_000001B8, 00000000h
00833709: mov eax, [ebp+08h]
0083370C: mov eax, [eax]
0083370E: push [ebp+08h]
00833711: call [eax+00000314h]
00833717: push eax
00833718: lea eax, var_54
0083371B: push eax
0083371C: call 00410A84h ; Set (object)
00833721: mov var_000000D4, eax
00833727: lea eax, var_58
0083372A: push eax
0083372B: push 00000002h
0083372D: mov eax, var_000000D4
00833733: mov eax, [eax]
00833735: push var_000000D4
0083373B: call [eax+40h]
0083373E: fclex 
00833740: mov var_000000D8, eax
00833746: cmp var_000000D8, 00000000h
0083374D: jnl 83376Fh
0083374F: push 00000040h
00833751: push 00440DE8h
00833756: push var_000000D4
0083375C: push var_000000D8
00833762: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833767: mov var_000001BC, eax
0083376D: jmp 833776h
0083376F: and var_000001BC, 00000000h
00833776: mov eax, var_58
00833779: mov var_000000DC, eax
0083377F: lea eax, var_34
00833782: push eax
00833783: mov eax, var_000000DC
00833789: mov eax, [eax]
0083378B: push var_000000DC
00833791: call [eax+000000A0h]
00833797: fclex 
00833799: mov var_000000E0, eax
0083379F: cmp var_000000E0, 00000000h
008337A6: jnl 8337CBh
008337A8: push 000000A0h
008337AD: push 00440E08h
008337B2: push var_000000DC
008337B8: push var_000000E0
008337BE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008337C3: mov var_000001C0, eax
008337C9: jmp 8337D2h
008337CB: and var_000001C0, 00000000h
008337D2: push var_24
008337D5: push 0044E2E0h ; d:
008337DA: call 00410A18h ; &
008337DF: mov edx, eax
008337E1: lea ecx, var_2C
008337E4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008337E9: push eax
008337EA: push var_28
008337ED: call 00410A18h ; &
008337F2: mov edx, eax
008337F4: lea ecx, var_30
008337F7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008337FC: push eax
008337FD: push 0044E2ECh ; h:
00833802: call 00410A18h ; &
00833807: mov edx, eax
00833809: lea ecx, var_38
0083380C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00833811: push eax
00833812: push var_34
00833815: call 00410A18h ; &
0083381A: mov edx, eax
0083381C: lea ecx, var_3C
0083381F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00833824: push eax
00833825: push 0044E2F8h
0083382A: call 00410A18h ; &
0083382F: mov edx, eax
00833831: lea ecx, var_40
00833834: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00833839: push eax
0083383A: mov eax, var_000000EC
00833840: mov eax, [eax]
00833842: push var_000000EC
00833848: call [eax+54h]
0083384B: fclex 
0083384D: mov var_000000F0, eax
00833853: cmp var_000000F0, 00000000h
0083385A: jnl 83387Ch
0083385C: push 00000054h
0083385E: push 004425E4h
00833863: push var_000000EC
00833869: push var_000000F0
0083386F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833874: mov var_000001C4, eax
0083387A: jmp 833883h
0083387C: and var_000001C4, 00000000h
00833883: lea eax, var_40
00833886: push eax
00833887: lea eax, var_3C
0083388A: push eax
0083388B: lea eax, var_34
0083388E: push eax
0083388F: lea eax, var_38
00833892: push eax
00833893: lea eax, var_30
00833896: push eax
00833897: lea eax, var_28
0083389A: push eax
0083389B: lea eax, var_2C
0083389E: push eax
0083389F: lea eax, var_24
008338A2: push eax
008338A3: push 00000008h
008338A5: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008338AA: add esp, 00000024h
008338AD: lea eax, var_60
008338B0: push eax
008338B1: lea eax, var_5C
008338B4: push eax
008338B5: lea eax, var_58
008338B8: push eax
008338B9: lea eax, var_54
008338BC: push eax
008338BD: lea eax, var_50
008338C0: push eax
008338C1: lea eax, var_4C
008338C4: push eax
008338C5: lea eax, var_48
008338C8: push eax
008338C9: lea eax, var_44
008338CC: push eax
008338CD: push 00000008h
008338CF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008338D4: add esp, 00000024h
008338D7: jmp 00833A6Eh
008338DC: mov var_04, 00000019h
008338E3: and var_00000098, 00000000h
008338EA: mov var_000000A0, 00000003h
008338F4: mov eax, [ebp+08h]
008338F7: mov eax, [eax]
008338F9: push [ebp+08h]
008338FC: call [eax+00000370h]
00833902: push eax
00833903: lea eax, var_44
00833906: push eax
00833907: call 00410A84h ; Set (object)
0083390C: mov var_000000B4, eax
00833912: lea eax, var_48
00833915: push eax
00833916: push 0000000Bh
00833918: mov eax, var_000000B4
0083391E: mov eax, [eax]
00833920: push var_000000B4
00833926: call [eax+40h]
00833929: fclex 
0083392B: mov var_000000B8, eax
00833931: cmp var_000000B8, 00000000h
00833938: jnl 83395Ah
0083393A: push 00000040h
0083393C: push 00440DE8h
00833941: push var_000000B4
00833947: push var_000000B8
0083394D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833952: mov var_000001C8, eax
00833958: jmp 833961h
0083395A: and var_000001C8, 00000000h
00833961: push 00000010h
00833963: pop eax
00833964: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00833969: lea esi, var_000000A0
0083396F: mov edi, esp
00833971: movsd 
00833972: movsd 
00833973: movsd 
00833974: movsd 
00833975: push 00000000h
00833977: push var_48
0083397A: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0083397F: lea eax, var_48
00833982: push eax
00833983: lea eax, var_44
00833986: push eax
00833987: push 00000002h
00833989: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083398E: add esp, 0000000Ch
00833991: mov var_04, 0000001Ah
00833998: mov eax, [ebp+08h]
0083399B: mov eax, [eax]
0083399D: push [ebp+08h]
008339A0: call [eax+0000036Ch]
008339A6: push eax
008339A7: lea eax, var_44
008339AA: push eax
008339AB: call 00410A84h ; Set (object)
008339B0: mov var_000000B4, eax
008339B6: lea eax, var_48
008339B9: push eax
008339BA: push 0000000Bh
008339BC: mov eax, var_000000B4
008339C2: mov eax, [eax]
008339C4: push var_000000B4
008339CA: call [eax+40h]
008339CD: fclex 
008339CF: mov var_000000B8, eax
008339D5: cmp var_000000B8, 00000000h
008339DC: jnl 8339FEh
008339DE: push 00000040h
008339E0: push 00440DE8h
008339E5: push var_000000B4
008339EB: push var_000000B8
008339F1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008339F6: mov var_000001CC, eax
008339FC: jmp 833A05h
008339FE: and var_000001CC, 00000000h
00833A05: mov eax, var_48
00833A08: mov var_000000BC, eax
00833A0E: push 00453EB4h ; Not set
00833A13: mov eax, var_000000BC
00833A19: mov eax, [eax]
00833A1B: push var_000000BC
00833A21: call [eax+54h]
00833A24: fclex 
00833A26: mov var_000000C0, eax
00833A2C: cmp var_000000C0, 00000000h
00833A33: jnl 833A55h
00833A35: push 00000054h
00833A37: push 004425E4h
00833A3C: push var_000000BC
00833A42: push var_000000C0
00833A48: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833A4D: mov var_000001D0, eax
00833A53: jmp 833A5Ch
00833A55: and var_000001D0, 00000000h
00833A5C: lea eax, var_48
00833A5F: push eax
00833A60: lea eax, var_44
00833A63: push eax
00833A64: push 00000002h
00833A66: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00833A6B: add esp, 0000000Ch
00833A6E: mov var_10, 00000000h
00833A75: wait 
00833A76: push 00833AECh
00833A7B: jmp 833AEBh
00833A7D: lea eax, var_40
00833A80: push eax
00833A81: lea eax, var_3C
00833A84: push eax
00833A85: lea eax, var_38
00833A88: push eax
00833A89: lea eax, var_34
00833A8C: push eax
00833A8D: lea eax, var_30
00833A90: push eax
00833A91: lea eax, var_2C
00833A94: push eax
00833A95: lea eax, var_28
00833A98: push eax
00833A99: lea eax, var_24
00833A9C: push eax
00833A9D: push 00000008h
00833A9F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00833AA4: add esp, 00000024h
00833AA7: lea eax, var_60
00833AAA: push eax
00833AAB: lea eax, var_5C
00833AAE: push eax
00833AAF: lea eax, var_58
00833AB2: push eax
00833AB3: lea eax, var_54
00833AB6: push eax
00833AB7: lea eax, var_50
00833ABA: push eax
00833ABB: lea eax, var_4C
00833ABE: push eax
00833ABF: lea eax, var_48
00833AC2: push eax
00833AC3: lea eax, var_44
00833AC6: push eax
00833AC7: push 00000008h
00833AC9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00833ACE: add esp, 00000024h
00833AD1: lea eax, var_00000090
00833AD7: push eax
00833AD8: lea eax, var_80
00833ADB: push eax
00833ADC: lea eax, var_70
00833ADF: push eax
00833AE0: push 00000003h
00833AE2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00833AE7: add esp, 00000010h
00833AEA: ret 
End Sub

Private sub txtPing__833B10
00833B10: push ebp
00833B11: mov ebp, esp
00833B13: sub esp, 0000000Ch
00833B16: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00833B1B: mov eax, fs:[00h]
00833B21: push eax
00833B22: mov fs:[00000000h], esp
00833B29: push 00000070h
00833B2B: pop eax
00833B2C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00833B31: push ebx
00833B32: push esi
00833B33: push edi
00833B34: mov var_0C, esp
00833B37: mov var_08, 0040B840h
00833B3E: mov eax, [ebp+08h]
00833B41: and eax, 00000001h
00833B44: mov var_04, eax
00833B47: mov eax, [ebp+08h]
00833B4A: and al, FEh
00833B4C: mov [ebp+08h], eax
00833B4F: mov eax, [ebp+08h]
00833B52: mov eax, [eax]
00833B54: push [ebp+08h]
00833B57: call [eax+04h]
00833B5A: mov eax, [ebp+08h]
00833B5D: mov eax, [eax]
00833B5F: push [ebp+08h]
00833B62: call [eax+00000310h]
00833B68: push eax
00833B69: lea eax, var_1C
00833B6C: push eax
00833B6D: call 00410A84h ; Set (object)
00833B72: mov var_48, eax
00833B75: lea eax, var_18
00833B78: push eax
00833B79: mov eax, var_48
00833B7C: mov eax, [eax]
00833B7E: push var_48
00833B81: call [eax+000000A0h]
00833B87: fclex 
00833B89: mov var_4C, eax
00833B8C: cmp var_4C, 00000000h
00833B90: jnl 833BACh
00833B92: push 000000A0h
00833B97: push 00440E08h
00833B9C: push var_48
00833B9F: push var_4C
00833BA2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833BA7: mov var_68, eax
00833BAA: jmp 833BB0h
00833BAC: and var_68, 00000000h
00833BB0: push var_18
00833BB3: call 0041098Eh ; Len(arg_1)
00833BB8: xor ecx, ecx
00833BBA: test eax, eax
00833BBC: setnle cl
00833BBF: neg ecx
00833BC1: mov var_50, cx
00833BC5: lea ecx, var_18
00833BC8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00833BCD: lea ecx, var_1C
00833BD0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00833BD5: movsx eax, word ptr var_50
00833BD9: test eax, eax
00833BDB: jz 00833D73h
00833BE1: mov var_2C, 00000001h
00833BE8: mov var_34, 00000003h
00833BEF: mov eax, [ebp+08h]
00833BF2: mov eax, [eax]
00833BF4: push [ebp+08h]
00833BF7: call [eax+00000370h]
00833BFD: push eax
00833BFE: lea eax, var_1C
00833C01: push eax
00833C02: call 00410A84h ; Set (object)
00833C07: mov var_48, eax
00833C0A: lea eax, var_20
00833C0D: push eax
00833C0E: push 0000000Ch
00833C10: mov eax, var_48
00833C13: mov eax, [eax]
00833C15: push var_48
00833C18: call [eax+40h]
00833C1B: fclex 
00833C1D: mov var_4C, eax
00833C20: cmp var_4C, 00000000h
00833C24: jnl 833C3Dh
00833C26: push 00000040h
00833C28: push 00440DE8h
00833C2D: push var_48
00833C30: push var_4C
00833C33: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833C38: mov var_6C, eax
00833C3B: jmp 833C41h
00833C3D: and var_6C, 00000000h
00833C41: push 00000010h
00833C43: pop eax
00833C44: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00833C49: lea esi, var_34
00833C4C: mov edi, esp
00833C4E: movsd 
00833C4F: movsd 
00833C50: movsd 
00833C51: movsd 
00833C52: push 00000000h
00833C54: push var_20
00833C57: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00833C5C: lea eax, var_20
00833C5F: push eax
00833C60: lea eax, var_1C
00833C63: push eax
00833C64: push 00000002h
00833C66: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00833C6B: add esp, 0000000Ch
00833C6E: mov eax, [ebp+08h]
00833C71: mov eax, [eax]
00833C73: push [ebp+08h]
00833C76: call [eax+0000036Ch]
00833C7C: push eax
00833C7D: lea eax, var_1C
00833C80: push eax
00833C81: call 00410A84h ; Set (object)
00833C86: mov var_50, eax
00833C89: lea eax, var_20
00833C8C: push eax
00833C8D: push 0000000Ch
00833C8F: mov eax, var_50
00833C92: mov eax, [eax]
00833C94: push var_50
00833C97: call [eax+40h]
00833C9A: fclex 
00833C9C: mov var_54, eax
00833C9F: cmp var_54, 00000000h
00833CA3: jnl 833CBCh
00833CA5: push 00000040h
00833CA7: push 00440DE8h
00833CAC: push var_50
00833CAF: push var_54
00833CB2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833CB7: mov var_70, eax
00833CBA: jmp 833CC0h
00833CBC: and var_70, 00000000h
00833CC0: mov eax, var_20
00833CC3: mov var_58, eax
00833CC6: mov eax, [ebp+08h]
00833CC9: mov eax, [eax]
00833CCB: push [ebp+08h]
00833CCE: call [eax+00000310h]
00833CD4: push eax
00833CD5: lea eax, var_24
00833CD8: push eax
00833CD9: call 00410A84h ; Set (object)
00833CDE: mov var_48, eax
00833CE1: lea eax, var_18
00833CE4: push eax
00833CE5: mov eax, var_48
00833CE8: mov eax, [eax]
00833CEA: push var_48
00833CED: call [eax+000000A0h]
00833CF3: fclex 
00833CF5: mov var_4C, eax
00833CF8: cmp var_4C, 00000000h
00833CFC: jnl 833D18h
00833CFE: push 000000A0h
00833D03: push 00440E08h
00833D08: push var_48
00833D0B: push var_4C
00833D0E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833D13: mov var_74, eax
00833D16: jmp 833D1Ch
00833D18: and var_74, 00000000h
00833D1C: push var_18
00833D1F: mov eax, var_58
00833D22: mov eax, [eax]
00833D24: push var_58
00833D27: call [eax+54h]
00833D2A: fclex 
00833D2C: mov var_5C, eax
00833D2F: cmp var_5C, 00000000h
00833D33: jnl 833D4Ch
00833D35: push 00000054h
00833D37: push 004425E4h
00833D3C: push var_58
00833D3F: push var_5C
00833D42: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833D47: mov var_78, eax
00833D4A: jmp 833D50h
00833D4C: and var_78, 00000000h
00833D50: lea ecx, var_18
00833D53: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00833D58: lea eax, var_20
00833D5B: push eax
00833D5C: lea eax, var_24
00833D5F: push eax
00833D60: lea eax, var_1C
00833D63: push eax
00833D64: push 00000003h
00833D66: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00833D6B: add esp, 00000010h
00833D6E: jmp 00833EA3h
00833D73: and var_2C, 00000000h
00833D77: mov var_34, 00000003h
00833D7E: mov eax, [ebp+08h]
00833D81: mov eax, [eax]
00833D83: push [ebp+08h]
00833D86: call [eax+00000370h]
00833D8C: push eax
00833D8D: lea eax, var_1C
00833D90: push eax
00833D91: call 00410A84h ; Set (object)
00833D96: mov var_48, eax
00833D99: lea eax, var_20
00833D9C: push eax
00833D9D: push 0000000Ch
00833D9F: mov eax, var_48
00833DA2: mov eax, [eax]
00833DA4: push var_48
00833DA7: call [eax+40h]
00833DAA: fclex 
00833DAC: mov var_4C, eax
00833DAF: cmp var_4C, 00000000h
00833DB3: jnl 833DCCh
00833DB5: push 00000040h
00833DB7: push 00440DE8h
00833DBC: push var_48
00833DBF: push var_4C
00833DC2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833DC7: mov var_7C, eax
00833DCA: jmp 833DD0h
00833DCC: and var_7C, 00000000h
00833DD0: push 00000010h
00833DD2: pop eax
00833DD3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00833DD8: lea esi, var_34
00833DDB: mov edi, esp
00833DDD: movsd 
00833DDE: movsd 
00833DDF: movsd 
00833DE0: movsd 
00833DE1: push 00000000h
00833DE3: push var_20
00833DE6: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00833DEB: lea eax, var_20
00833DEE: push eax
00833DEF: lea eax, var_1C
00833DF2: push eax
00833DF3: push 00000002h
00833DF5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00833DFA: add esp, 0000000Ch
00833DFD: mov eax, [ebp+08h]
00833E00: mov eax, [eax]
00833E02: push [ebp+08h]
00833E05: call [eax+0000036Ch]
00833E0B: push eax
00833E0C: lea eax, var_1C
00833E0F: push eax
00833E10: call 00410A84h ; Set (object)
00833E15: mov var_48, eax
00833E18: lea eax, var_20
00833E1B: push eax
00833E1C: push 0000000Ch
00833E1E: mov eax, var_48
00833E21: mov eax, [eax]
00833E23: push var_48
00833E26: call [eax+40h]
00833E29: fclex 
00833E2B: mov var_4C, eax
00833E2E: cmp var_4C, 00000000h
00833E32: jnl 833E4Bh
00833E34: push 00000040h
00833E36: push 00440DE8h
00833E3B: push var_48
00833E3E: push var_4C
00833E41: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833E46: mov var_80, eax
00833E49: jmp 833E4Fh
00833E4B: and var_80, 00000000h
00833E4F: mov eax, var_20
00833E52: mov var_50, eax
00833E55: push 00453EB4h ; Not set
00833E5A: mov eax, var_50
00833E5D: mov eax, [eax]
00833E5F: push var_50
00833E62: call [eax+54h]
00833E65: fclex 
00833E67: mov var_54, eax
00833E6A: cmp var_54, 00000000h
00833E6E: jnl 833E8Ah
00833E70: push 00000054h
00833E72: push 004425E4h
00833E77: push var_50
00833E7A: push var_54
00833E7D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833E82: mov var_00000084, eax
00833E88: jmp 833E91h
00833E8A: and var_00000084, 00000000h
00833E91: lea eax, var_20
00833E94: push eax
00833E95: lea eax, var_1C
00833E98: push eax
00833E99: push 00000002h
00833E9B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00833EA0: add esp, 0000000Ch
00833EA3: mov var_04, 00000000h
00833EAA: push 00833ED1h
00833EAF: jmp 833ED0h
00833EB1: lea ecx, var_18
00833EB4: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00833EB9: lea eax, var_24
00833EBC: push eax
00833EBD: lea eax, var_20
00833EC0: push eax
00833EC1: lea eax, var_1C
00833EC4: push eax
00833EC5: push 00000003h
00833EC7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00833ECC: add esp, 00000010h
00833ECF: ret 
End Sub

Private sub txtSocks__833EF0
00833EF0: push ebp
00833EF1: mov ebp, esp
00833EF3: sub esp, 0000000Ch
00833EF6: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00833EFB: mov eax, fs:[00h]
00833F01: push eax
00833F02: mov fs:[00000000h], esp
00833F09: push 00000070h
00833F0B: pop eax
00833F0C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00833F11: push ebx
00833F12: push esi
00833F13: push edi
00833F14: mov var_0C, esp
00833F17: mov var_08, 0040B850h
00833F1E: mov eax, [ebp+08h]
00833F21: and eax, 00000001h
00833F24: mov var_04, eax
00833F27: mov eax, [ebp+08h]
00833F2A: and al, FEh
00833F2C: mov [ebp+08h], eax
00833F2F: mov eax, [ebp+08h]
00833F32: mov eax, [eax]
00833F34: push [ebp+08h]
00833F37: call [eax+04h]
00833F3A: mov eax, [ebp+08h]
00833F3D: mov eax, [eax]
00833F3F: push [ebp+08h]
00833F42: call [eax+0000030Ch]
00833F48: push eax
00833F49: lea eax, var_1C
00833F4C: push eax
00833F4D: call 00410A84h ; Set (object)
00833F52: mov var_48, eax
00833F55: lea eax, var_18
00833F58: push eax
00833F59: mov eax, var_48
00833F5C: mov eax, [eax]
00833F5E: push var_48
00833F61: call [eax+000000A0h]
00833F67: fclex 
00833F69: mov var_4C, eax
00833F6C: cmp var_4C, 00000000h
00833F70: jnl 833F8Ch
00833F72: push 000000A0h
00833F77: push 00440E08h
00833F7C: push var_48
00833F7F: push var_4C
00833F82: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00833F87: mov var_68, eax
00833F8A: jmp 833F90h
00833F8C: and var_68, 00000000h
00833F90: push var_18
00833F93: call 0041098Eh ; Len(arg_1)
00833F98: xor ecx, ecx
00833F9A: test eax, eax
00833F9C: setnle cl
00833F9F: neg ecx
00833FA1: mov var_50, cx
00833FA5: lea ecx, var_18
00833FA8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00833FAD: lea ecx, var_1C
00833FB0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00833FB5: movsx eax, word ptr var_50
00833FB9: test eax, eax
00833FBB: jz 00834153h
00833FC1: mov var_2C, 00000001h
00833FC8: mov var_34, 00000003h
00833FCF: mov eax, [ebp+08h]
00833FD2: mov eax, [eax]
00833FD4: push [ebp+08h]
00833FD7: call [eax+00000370h]
00833FDD: push eax
00833FDE: lea eax, var_1C
00833FE1: push eax
00833FE2: call 00410A84h ; Set (object)
00833FE7: mov var_48, eax
00833FEA: lea eax, var_20
00833FED: push eax
00833FEE: push 0000000Dh
00833FF0: mov eax, var_48
00833FF3: mov eax, [eax]
00833FF5: push var_48
00833FF8: call [eax+40h]
00833FFB: fclex 
00833FFD: mov var_4C, eax
00834000: cmp var_4C, 00000000h
00834004: jnl 83401Dh
00834006: push 00000040h
00834008: push 00440DE8h
0083400D: push var_48
00834010: push var_4C
00834013: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00834018: mov var_6C, eax
0083401B: jmp 834021h
0083401D: and var_6C, 00000000h
00834021: push 00000010h
00834023: pop eax
00834024: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00834029: lea esi, var_34
0083402C: mov edi, esp
0083402E: movsd 
0083402F: movsd 
00834030: movsd 
00834031: movsd 
00834032: push 00000000h
00834034: push var_20
00834037: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0083403C: lea eax, var_20
0083403F: push eax
00834040: lea eax, var_1C
00834043: push eax
00834044: push 00000002h
00834046: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083404B: add esp, 0000000Ch
0083404E: mov eax, [ebp+08h]
00834051: mov eax, [eax]
00834053: push [ebp+08h]
00834056: call [eax+0000036Ch]
0083405C: push eax
0083405D: lea eax, var_1C
00834060: push eax
00834061: call 00410A84h ; Set (object)
00834066: mov var_50, eax
00834069: lea eax, var_20
0083406C: push eax
0083406D: push 0000000Dh
0083406F: mov eax, var_50
00834072: mov eax, [eax]
00834074: push var_50
00834077: call [eax+40h]
0083407A: fclex 
0083407C: mov var_54, eax
0083407F: cmp var_54, 00000000h
00834083: jnl 83409Ch
00834085: push 00000040h
00834087: push 00440DE8h
0083408C: push var_50
0083408F: push var_54
00834092: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00834097: mov var_70, eax
0083409A: jmp 8340A0h
0083409C: and var_70, 00000000h
008340A0: mov eax, var_20
008340A3: mov var_58, eax
008340A6: mov eax, [ebp+08h]
008340A9: mov eax, [eax]
008340AB: push [ebp+08h]
008340AE: call [eax+0000030Ch]
008340B4: push eax
008340B5: lea eax, var_24
008340B8: push eax
008340B9: call 00410A84h ; Set (object)
008340BE: mov var_48, eax
008340C1: lea eax, var_18
008340C4: push eax
008340C5: mov eax, var_48
008340C8: mov eax, [eax]
008340CA: push var_48
008340CD: call [eax+000000A0h]
008340D3: fclex 
008340D5: mov var_4C, eax
008340D8: cmp var_4C, 00000000h
008340DC: jnl 8340F8h
008340DE: push 000000A0h
008340E3: push 00440E08h
008340E8: push var_48
008340EB: push var_4C
008340EE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008340F3: mov var_74, eax
008340F6: jmp 8340FCh
008340F8: and var_74, 00000000h
008340FC: push var_18
008340FF: mov eax, var_58
00834102: mov eax, [eax]
00834104: push var_58
00834107: call [eax+54h]
0083410A: fclex 
0083410C: mov var_5C, eax
0083410F: cmp var_5C, 00000000h
00834113: jnl 83412Ch
00834115: push 00000054h
00834117: push 004425E4h
0083411C: push var_58
0083411F: push var_5C
00834122: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00834127: mov var_78, eax
0083412A: jmp 834130h
0083412C: and var_78, 00000000h
00834130: lea ecx, var_18
00834133: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00834138: lea eax, var_20
0083413B: push eax
0083413C: lea eax, var_24
0083413F: push eax
00834140: lea eax, var_1C
00834143: push eax
00834144: push 00000003h
00834146: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083414B: add esp, 00000010h
0083414E: jmp 00834283h
00834153: and var_2C, 00000000h
00834157: mov var_34, 00000003h
0083415E: mov eax, [ebp+08h]
00834161: mov eax, [eax]
00834163: push [ebp+08h]
00834166: call [eax+00000370h]
0083416C: push eax
0083416D: lea eax, var_1C
00834170: push eax
00834171: call 00410A84h ; Set (object)
00834176: mov var_48, eax
00834179: lea eax, var_20
0083417C: push eax
0083417D: push 0000000Dh
0083417F: mov eax, var_48
00834182: mov eax, [eax]
00834184: push var_48
00834187: call [eax+40h]
0083418A: fclex 
0083418C: mov var_4C, eax
0083418F: cmp var_4C, 00000000h
00834193: jnl 8341ACh
00834195: push 00000040h
00834197: push 00440DE8h
0083419C: push var_48
0083419F: push var_4C
008341A2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008341A7: mov var_7C, eax
008341AA: jmp 8341B0h
008341AC: and var_7C, 00000000h
008341B0: push 00000010h
008341B2: pop eax
008341B3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008341B8: lea esi, var_34
008341BB: mov edi, esp
008341BD: movsd 
008341BE: movsd 
008341BF: movsd 
008341C0: movsd 
008341C1: push 00000000h
008341C3: push var_20
008341C6: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008341CB: lea eax, var_20
008341CE: push eax
008341CF: lea eax, var_1C
008341D2: push eax
008341D3: push 00000002h
008341D5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008341DA: add esp, 0000000Ch
008341DD: mov eax, [ebp+08h]
008341E0: mov eax, [eax]
008341E2: push [ebp+08h]
008341E5: call [eax+0000036Ch]
008341EB: push eax
008341EC: lea eax, var_1C
008341EF: push eax
008341F0: call 00410A84h ; Set (object)
008341F5: mov var_48, eax
008341F8: lea eax, var_20
008341FB: push eax
008341FC: push 0000000Dh
008341FE: mov eax, var_48
00834201: mov eax, [eax]
00834203: push var_48
00834206: call [eax+40h]
00834209: fclex 
0083420B: mov var_4C, eax
0083420E: cmp var_4C, 00000000h
00834212: jnl 83422Bh
00834214: push 00000040h
00834216: push 00440DE8h
0083421B: push var_48
0083421E: push var_4C
00834221: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00834226: mov var_80, eax
00834229: jmp 83422Fh
0083422B: and var_80, 00000000h
0083422F: mov eax, var_20
00834232: mov var_50, eax
00834235: push 00453EB4h ; Not set
0083423A: mov eax, var_50
0083423D: mov eax, [eax]
0083423F: push var_50
00834242: call [eax+54h]
00834245: fclex 
00834247: mov var_54, eax
0083424A: cmp var_54, 00000000h
0083424E: jnl 83426Ah
00834250: push 00000054h
00834252: push 004425E4h
00834257: push var_50
0083425A: push var_54
0083425D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00834262: mov var_00000084, eax
00834268: jmp 834271h
0083426A: and var_00000084, 00000000h
00834271: lea eax, var_20
00834274: push eax
00834275: lea eax, var_1C
00834278: push eax
00834279: push 00000002h
0083427B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00834280: add esp, 0000000Ch
00834283: mov var_04, 00000000h
0083428A: push 008342B1h
0083428F: jmp 8342B0h
00834291: lea ecx, var_18
00834294: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00834299: lea eax, var_24
0083429C: push eax
0083429D: lea eax, var_20
008342A0: push eax
008342A1: lea eax, var_1C
008342A4: push eax
008342A5: push 00000003h
008342A7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008342AC: add esp, 00000010h
008342AF: ret 
End Sub

Private sub txtCountry__8342D0
008342D0: push ebp
008342D1: mov ebp, esp
008342D3: sub esp, 0000000Ch
008342D6: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008342DB: mov eax, fs:[00h]
008342E1: push eax
008342E2: mov fs:[00000000h], esp
008342E9: push 00000070h
008342EB: pop eax
008342EC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008342F1: push ebx
008342F2: push esi
008342F3: push edi
008342F4: mov var_0C, esp
008342F7: mov var_08, 0040B860h
008342FE: mov eax, [ebp+08h]
00834301: and eax, 00000001h
00834304: mov var_04, eax
00834307: mov eax, [ebp+08h]
0083430A: and al, FEh
0083430C: mov [ebp+08h], eax
0083430F: mov eax, [ebp+08h]
00834312: mov eax, [eax]
00834314: push [ebp+08h]
00834317: call [eax+04h]
0083431A: mov eax, [ebp+08h]
0083431D: mov eax, [eax]
0083431F: push [ebp+08h]
00834322: call [eax+00000308h]
00834328: push eax
00834329: lea eax, var_1C
0083432C: push eax
0083432D: call 00410A84h ; Set (object)
00834332: mov var_48, eax
00834335: lea eax, var_18
00834338: push eax
00834339: mov eax, var_48
0083433C: mov eax, [eax]
0083433E: push var_48
00834341: call [eax+000000A0h]
00834347: fclex 
00834349: mov var_4C, eax
0083434C: cmp var_4C, 00000000h
00834350: jnl 83436Ch
00834352: push 000000A0h
00834357: push 00440E08h
0083435C: push var_48
0083435F: push var_4C
00834362: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00834367: mov var_68, eax
0083436A: jmp 834370h
0083436C: and var_68, 00000000h
00834370: push var_18
00834373: call 0041098Eh ; Len(arg_1)
00834378: xor ecx, ecx
0083437A: test eax, eax
0083437C: setnle cl
0083437F: neg ecx
00834381: mov var_50, cx
00834385: lea ecx, var_18
00834388: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0083438D: lea ecx, var_1C
00834390: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00834395: movsx eax, word ptr var_50
00834399: test eax, eax
0083439B: jz 00834533h
008343A1: mov var_2C, 00000001h
008343A8: mov var_34, 00000003h
008343AF: mov eax, [ebp+08h]
008343B2: mov eax, [eax]
008343B4: push [ebp+08h]
008343B7: call [eax+00000370h]
008343BD: push eax
008343BE: lea eax, var_1C
008343C1: push eax
008343C2: call 00410A84h ; Set (object)
008343C7: mov var_48, eax
008343CA: lea eax, var_20
008343CD: push eax
008343CE: push 0000000Eh
008343D0: mov eax, var_48
008343D3: mov eax, [eax]
008343D5: push var_48
008343D8: call [eax+40h]
008343DB: fclex 
008343DD: mov var_4C, eax
008343E0: cmp var_4C, 00000000h
008343E4: jnl 8343FDh
008343E6: push 00000040h
008343E8: push 00440DE8h
008343ED: push var_48
008343F0: push var_4C
008343F3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008343F8: mov var_6C, eax
008343FB: jmp 834401h
008343FD: and var_6C, 00000000h
00834401: push 00000010h
00834403: pop eax
00834404: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00834409: lea esi, var_34
0083440C: mov edi, esp
0083440E: movsd 
0083440F: movsd 
00834410: movsd 
00834411: movsd 
00834412: push 00000000h
00834414: push var_20
00834417: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0083441C: lea eax, var_20
0083441F: push eax
00834420: lea eax, var_1C
00834423: push eax
00834424: push 00000002h
00834426: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083442B: add esp, 0000000Ch
0083442E: mov eax, [ebp+08h]
00834431: mov eax, [eax]
00834433: push [ebp+08h]
00834436: call [eax+0000036Ch]
0083443C: push eax
0083443D: lea eax, var_1C
00834440: push eax
00834441: call 00410A84h ; Set (object)
00834446: mov var_50, eax
00834449: lea eax, var_20
0083444C: push eax
0083444D: push 0000000Eh
0083444F: mov eax, var_50
00834452: mov eax, [eax]
00834454: push var_50
00834457: call [eax+40h]
0083445A: fclex 
0083445C: mov var_54, eax
0083445F: cmp var_54, 00000000h
00834463: jnl 83447Ch
00834465: push 00000040h
00834467: push 00440DE8h
0083446C: push var_50
0083446F: push var_54
00834472: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00834477: mov var_70, eax
0083447A: jmp 834480h
0083447C: and var_70, 00000000h
00834480: mov eax, var_20
00834483: mov var_58, eax
00834486: mov eax, [ebp+08h]
00834489: mov eax, [eax]
0083448B: push [ebp+08h]
0083448E: call [eax+00000308h]
00834494: push eax
00834495: lea eax, var_24
00834498: push eax
00834499: call 00410A84h ; Set (object)
0083449E: mov var_48, eax
008344A1: lea eax, var_18
008344A4: push eax
008344A5: mov eax, var_48
008344A8: mov eax, [eax]
008344AA: push var_48
008344AD: call [eax+000000A0h]
008344B3: fclex 
008344B5: mov var_4C, eax
008344B8: cmp var_4C, 00000000h
008344BC: jnl 8344D8h
008344BE: push 000000A0h
008344C3: push 00440E08h
008344C8: push var_48
008344CB: push var_4C
008344CE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008344D3: mov var_74, eax
008344D6: jmp 8344DCh
008344D8: and var_74, 00000000h
008344DC: push var_18
008344DF: mov eax, var_58
008344E2: mov eax, [eax]
008344E4: push var_58
008344E7: call [eax+54h]
008344EA: fclex 
008344EC: mov var_5C, eax
008344EF: cmp var_5C, 00000000h
008344F3: jnl 83450Ch
008344F5: push 00000054h
008344F7: push 004425E4h
008344FC: push var_58
008344FF: push var_5C
00834502: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00834507: mov var_78, eax
0083450A: jmp 834510h
0083450C: and var_78, 00000000h
00834510: lea ecx, var_18
00834513: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00834518: lea eax, var_20
0083451B: push eax
0083451C: lea eax, var_24
0083451F: push eax
00834520: lea eax, var_1C
00834523: push eax
00834524: push 00000003h
00834526: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083452B: add esp, 00000010h
0083452E: jmp 00834663h
00834533: and var_2C, 00000000h
00834537: mov var_34, 00000003h
0083453E: mov eax, [ebp+08h]
00834541: mov eax, [eax]
00834543: push [ebp+08h]
00834546: call [eax+00000370h]
0083454C: push eax
0083454D: lea eax, var_1C
00834550: push eax
00834551: call 00410A84h ; Set (object)
00834556: mov var_48, eax
00834559: lea eax, var_20
0083455C: push eax
0083455D: push 0000000Eh
0083455F: mov eax, var_48
00834562: mov eax, [eax]
00834564: push var_48
00834567: call [eax+40h]
0083456A: fclex 
0083456C: mov var_4C, eax
0083456F: cmp var_4C, 00000000h
00834573: jnl 83458Ch
00834575: push 00000040h
00834577: push 00440DE8h
0083457C: push var_48
0083457F: push var_4C
00834582: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00834587: mov var_7C, eax
0083458A: jmp 834590h
0083458C: and var_7C, 00000000h
00834590: push 00000010h
00834592: pop eax
00834593: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00834598: lea esi, var_34
0083459B: mov edi, esp
0083459D: movsd 
0083459E: movsd 
0083459F: movsd 
008345A0: movsd 
008345A1: push 00000000h
008345A3: push var_20
008345A6: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008345AB: lea eax, var_20
008345AE: push eax
008345AF: lea eax, var_1C
008345B2: push eax
008345B3: push 00000002h
008345B5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008345BA: add esp, 0000000Ch
008345BD: mov eax, [ebp+08h]
008345C0: mov eax, [eax]
008345C2: push [ebp+08h]
008345C5: call [eax+0000036Ch]
008345CB: push eax
008345CC: lea eax, var_1C
008345CF: push eax
008345D0: call 00410A84h ; Set (object)
008345D5: mov var_48, eax
008345D8: lea eax, var_20
008345DB: push eax
008345DC: push 0000000Eh
008345DE: mov eax, var_48
008345E1: mov eax, [eax]
008345E3: push var_48
008345E6: call [eax+40h]
008345E9: fclex 
008345EB: mov var_4C, eax
008345EE: cmp var_4C, 00000000h
008345F2: jnl 83460Bh
008345F4: push 00000040h
008345F6: push 00440DE8h
008345FB: push var_48
008345FE: push var_4C
00834601: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00834606: mov var_80, eax
00834609: jmp 83460Fh
0083460B: and var_80, 00000000h
0083460F: mov eax, var_20
00834612: mov var_50, eax
00834615: push 00453EB4h ; Not set
0083461A: mov eax, var_50
0083461D: mov eax, [eax]
0083461F: push var_50
00834622: call [eax+54h]
00834625: fclex 
00834627: mov var_54, eax
0083462A: cmp var_54, 00000000h
0083462E: jnl 83464Ah
00834630: push 00000054h
00834632: push 004425E4h
00834637: push var_50
0083463A: push var_54
0083463D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00834642: mov var_00000084, eax
00834648: jmp 834651h
0083464A: and var_00000084, 00000000h
00834651: lea eax, var_20
00834654: push eax
00834655: lea eax, var_1C
00834658: push eax
00834659: push 00000002h
0083465B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00834660: add esp, 0000000Ch
00834663: mov var_04, 00000000h
0083466A: push 00834691h
0083466F: jmp 834690h
00834671: lea ecx, var_18
00834674: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00834679: lea eax, var_24
0083467C: push eax
0083467D: lea eax, var_20
00834680: push eax
00834681: lea eax, var_1C
00834684: push eax
00834685: push 00000003h
00834687: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083468C: add esp, 00000010h
0083468F: ret 
End Sub

Private sub txtVersion__8346B0
008346B0: push ebp
008346B1: mov ebp, esp
008346B3: sub esp, 0000000Ch
008346B6: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008346BB: mov eax, fs:[00h]
008346C1: push eax
008346C2: mov fs:[00000000h], esp
008346C9: push 00000070h
008346CB: pop eax
008346CC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008346D1: push ebx
008346D2: push esi
008346D3: push edi
008346D4: mov var_0C, esp
008346D7: mov var_08, 0040B870h
008346DE: mov eax, [ebp+08h]
008346E1: and eax, 00000001h
008346E4: mov var_04, eax
008346E7: mov eax, [ebp+08h]
008346EA: and al, FEh
008346EC: mov [ebp+08h], eax
008346EF: mov eax, [ebp+08h]
008346F2: mov eax, [eax]
008346F4: push [ebp+08h]
008346F7: call [eax+04h]
008346FA: mov eax, [ebp+08h]
008346FD: mov eax, [eax]
008346FF: push [ebp+08h]
00834702: call [eax+00000304h]
00834708: push eax
00834709: lea eax, var_1C
0083470C: push eax
0083470D: call 00410A84h ; Set (object)
00834712: mov var_48, eax
00834715: lea eax, var_18
00834718: push eax
00834719: mov eax, var_48
0083471C: mov eax, [eax]
0083471E: push var_48
00834721: call [eax+000000A0h]
00834727: fclex 
00834729: mov var_4C, eax
0083472C: cmp var_4C, 00000000h
00834730: jnl 83474Ch
00834732: push 000000A0h
00834737: push 00440E08h
0083473C: push var_48
0083473F: push var_4C
00834742: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00834747: mov var_68, eax
0083474A: jmp 834750h
0083474C: and var_68, 00000000h
00834750: push var_18
00834753: call 0041098Eh ; Len(arg_1)
00834758: xor ecx, ecx
0083475A: test eax, eax
0083475C: setnle cl
0083475F: neg ecx
00834761: mov var_50, cx
00834765: lea ecx, var_18
00834768: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0083476D: lea ecx, var_1C
00834770: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00834775: movsx eax, word ptr var_50
00834779: test eax, eax
0083477B: jz 00834913h
00834781: mov var_2C, 00000001h
00834788: mov var_34, 00000003h
0083478F: mov eax, [ebp+08h]
00834792: mov eax, [eax]
00834794: push [ebp+08h]
00834797: call [eax+00000370h]
0083479D: push eax
0083479E: lea eax, var_1C
008347A1: push eax
008347A2: call 00410A84h ; Set (object)
008347A7: mov var_48, eax
008347AA: lea eax, var_20
008347AD: push eax
008347AE: push 0000000Fh
008347B0: mov eax, var_48
008347B3: mov eax, [eax]
008347B5: push var_48
008347B8: call [eax+40h]
008347BB: fclex 
008347BD: mov var_4C, eax
008347C0: cmp var_4C, 00000000h
008347C4: jnl 8347DDh
008347C6: push 00000040h
008347C8: push 00440DE8h
008347CD: push var_48
008347D0: push var_4C
008347D3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008347D8: mov var_6C, eax
008347DB: jmp 8347E1h
008347DD: and var_6C, 00000000h
008347E1: push 00000010h
008347E3: pop eax
008347E4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008347E9: lea esi, var_34
008347EC: mov edi, esp
008347EE: movsd 
008347EF: movsd 
008347F0: movsd 
008347F1: movsd 
008347F2: push 00000000h
008347F4: push var_20
008347F7: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008347FC: lea eax, var_20
008347FF: push eax
00834800: lea eax, var_1C
00834803: push eax
00834804: push 00000002h
00834806: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083480B: add esp, 0000000Ch
0083480E: mov eax, [ebp+08h]
00834811: mov eax, [eax]
00834813: push [ebp+08h]
00834816: call [eax+0000036Ch]
0083481C: push eax
0083481D: lea eax, var_1C
00834820: push eax
00834821: call 00410A84h ; Set (object)
00834826: mov var_50, eax
00834829: lea eax, var_20
0083482C: push eax
0083482D: push 0000000Fh
0083482F: mov eax, var_50
00834832: mov eax, [eax]
00834834: push var_50
00834837: call [eax+40h]
0083483A: fclex 
0083483C: mov var_54, eax
0083483F: cmp var_54, 00000000h
00834843: jnl 83485Ch
00834845: push 00000040h
00834847: push 00440DE8h
0083484C: push var_50
0083484F: push var_54
00834852: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00834857: mov var_70, eax
0083485A: jmp 834860h
0083485C: and var_70, 00000000h
00834860: mov eax, var_20
00834863: mov var_58, eax
00834866: mov eax, [ebp+08h]
00834869: mov eax, [eax]
0083486B: push [ebp+08h]
0083486E: call [eax+00000304h]
00834874: push eax
00834875: lea eax, var_24
00834878: push eax
00834879: call 00410A84h ; Set (object)
0083487E: mov var_48, eax
00834881: lea eax, var_18
00834884: push eax
00834885: mov eax, var_48
00834888: mov eax, [eax]
0083488A: push var_48
0083488D: call [eax+000000A0h]
00834893: fclex 
00834895: mov var_4C, eax
00834898: cmp var_4C, 00000000h
0083489C: jnl 8348B8h
0083489E: push 000000A0h
008348A3: push 00440E08h
008348A8: push var_48
008348AB: push var_4C
008348AE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008348B3: mov var_74, eax
008348B6: jmp 8348BCh
008348B8: and var_74, 00000000h
008348BC: push var_18
008348BF: mov eax, var_58
008348C2: mov eax, [eax]
008348C4: push var_58
008348C7: call [eax+54h]
008348CA: fclex 
008348CC: mov var_5C, eax
008348CF: cmp var_5C, 00000000h
008348D3: jnl 8348ECh
008348D5: push 00000054h
008348D7: push 004425E4h
008348DC: push var_58
008348DF: push var_5C
008348E2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008348E7: mov var_78, eax
008348EA: jmp 8348F0h
008348EC: and var_78, 00000000h
008348F0: lea ecx, var_18
008348F3: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008348F8: lea eax, var_20
008348FB: push eax
008348FC: lea eax, var_24
008348FF: push eax
00834900: lea eax, var_1C
00834903: push eax
00834904: push 00000003h
00834906: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083490B: add esp, 00000010h
0083490E: jmp 00834A43h
00834913: and var_2C, 00000000h
00834917: mov var_34, 00000003h
0083491E: mov eax, [ebp+08h]
00834921: mov eax, [eax]
00834923: push [ebp+08h]
00834926: call [eax+00000370h]
0083492C: push eax
0083492D: lea eax, var_1C
00834930: push eax
00834931: call 00410A84h ; Set (object)
00834936: mov var_48, eax
00834939: lea eax, var_20
0083493C: push eax
0083493D: push 0000000Fh
0083493F: mov eax, var_48
00834942: mov eax, [eax]
00834944: push var_48
00834947: call [eax+40h]
0083494A: fclex 
0083494C: mov var_4C, eax
0083494F: cmp var_4C, 00000000h
00834953: jnl 83496Ch
00834955: push 00000040h
00834957: push 00440DE8h
0083495C: push var_48
0083495F: push var_4C
00834962: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00834967: mov var_7C, eax
0083496A: jmp 834970h
0083496C: and var_7C, 00000000h
00834970: push 00000010h
00834972: pop eax
00834973: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00834978: lea esi, var_34
0083497B: mov edi, esp
0083497D: movsd 
0083497E: movsd 
0083497F: movsd 
00834980: movsd 
00834981: push 00000000h
00834983: push var_20
00834986: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0083498B: lea eax, var_20
0083498E: push eax
0083498F: lea eax, var_1C
00834992: push eax
00834993: push 00000002h
00834995: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0083499A: add esp, 0000000Ch
0083499D: mov eax, [ebp+08h]
008349A0: mov eax, [eax]
008349A2: push [ebp+08h]
008349A5: call [eax+0000036Ch]
008349AB: push eax
008349AC: lea eax, var_1C
008349AF: push eax
008349B0: call 00410A84h ; Set (object)
008349B5: mov var_48, eax
008349B8: lea eax, var_20
008349BB: push eax
008349BC: push 0000000Fh
008349BE: mov eax, var_48
008349C1: mov eax, [eax]
008349C3: push var_48
008349C6: call [eax+40h]
008349C9: fclex 
008349CB: mov var_4C, eax
008349CE: cmp var_4C, 00000000h
008349D2: jnl 8349EBh
008349D4: push 00000040h
008349D6: push 00440DE8h
008349DB: push var_48
008349DE: push var_4C
008349E1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008349E6: mov var_80, eax
008349E9: jmp 8349EFh
008349EB: and var_80, 00000000h
008349EF: mov eax, var_20
008349F2: mov var_50, eax
008349F5: push 00453EB4h ; Not set
008349FA: mov eax, var_50
008349FD: mov eax, [eax]
008349FF: push var_50
00834A02: call [eax+54h]
00834A05: fclex 
00834A07: mov var_54, eax
00834A0A: cmp var_54, 00000000h
00834A0E: jnl 834A2Ah
00834A10: push 00000054h
00834A12: push 004425E4h
00834A17: push var_50
00834A1A: push var_54
00834A1D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00834A22: mov var_00000084, eax
00834A28: jmp 834A31h
00834A2A: and var_00000084, 00000000h
00834A31: lea eax, var_20
00834A34: push eax
00834A35: lea eax, var_1C
00834A38: push eax
00834A39: push 00000002h
00834A3B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00834A40: add esp, 0000000Ch
00834A43: mov var_04, 00000000h
00834A4A: push 00834A71h
00834A4F: jmp 834A70h
00834A51: lea ecx, var_18
00834A54: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00834A59: lea eax, var_24
00834A5C: push eax
00834A5D: lea eax, var_20
00834A60: push eax
00834A61: lea eax, var_1C
00834A64: push eax
00834A65: push 00000003h
00834A67: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00834A6C: add esp, 00000010h
00834A6F: ret 
End Sub

Private sub unknown_8259B0
008259B0: push ebp
008259B1: mov ebp, esp
008259B3: sub esp, 0000000Ch
008259B6: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008259BB: mov eax, fs:[00h]
008259C1: push eax
008259C2: mov fs:[00000000h], esp
008259C9: mov eax, 000000A0h
008259CE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008259D3: push ebx
008259D4: push esi
008259D5: push edi
008259D6: mov var_0C, esp
008259D9: mov var_08, 0040B1F8h
008259E0: mov var_04, 00000000h
008259E7: mov eax, [ebp+08h]
008259EA: mov eax, [eax]
008259EC: push [ebp+08h]
008259EF: call [eax+04h]
008259F2: and var_34, 00000000h
008259F6: mov var_3C, 00000002h
008259FD: cmp [008F2010h], 00000000h
00825A04: jnz 825A21h
00825A06: push 008F2010h
00825A0B: push 00433984h
00825A10: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00825A15: mov var_000000A4, 008F2010h
00825A1F: jmp 825A2Bh
00825A21: mov var_000000A4, 008F2010h
00825A2B: push 00000010h
00825A2D: pop eax
00825A2E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825A33: lea esi, var_3C
00825A36: mov edi, esp
00825A38: movsd 
00825A39: movsd 
00825A3A: movsd 
00825A3B: movsd 
00825A3C: push 00000001h
00825A3E: push 80011001h
00825A43: mov eax, var_000000A4
00825A49: mov eax, [eax]
00825A4B: mov ecx, var_000000A4
00825A51: mov ecx, [ecx]
00825A53: mov ecx, [ecx]
00825A55: push eax
00825A56: call [ecx+00000550h]
00825A5C: push eax
00825A5D: lea eax, var_28
00825A60: push eax
00825A61: call 00410A84h ; Set (object)
00825A66: push eax
00825A67: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00825A6C: add esp, 0000001Ch
00825A6F: lea ecx, var_28
00825A72: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00825A77: and var_34, 00000000h
00825A7B: mov var_3C, 0000000Bh
00825A82: cmp [008F2010h], 00000000h
00825A89: jnz 825AA6h
00825A8B: push 008F2010h
00825A90: push 00433984h
00825A95: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00825A9A: mov var_000000A8, 008F2010h
00825AA4: jmp 825AB0h
00825AA6: mov var_000000A8, 008F2010h
00825AB0: push 00000010h
00825AB2: pop eax
00825AB3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825AB8: lea esi, var_3C
00825ABB: mov edi, esp
00825ABD: movsd 
00825ABE: movsd 
00825ABF: movsd 
00825AC0: movsd 
00825AC1: push 80010007h
00825AC6: mov eax, var_000000A8
00825ACC: mov eax, [eax]
00825ACE: mov ecx, var_000000A8
00825AD4: mov ecx, [ecx]
00825AD6: mov ecx, [ecx]
00825AD8: push eax
00825AD9: call [ecx+0000054Ch]
00825ADF: push eax
00825AE0: lea eax, var_28
00825AE3: push eax
00825AE4: call 00410A84h ; Set (object)
00825AE9: push eax
00825AEA: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00825AEF: lea ecx, var_28
00825AF2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00825AF7: mov var_34, 00000001h
00825AFE: mov var_3C, 00000002h
00825B05: mov eax, [ebp+08h]
00825B08: mov eax, [eax]
00825B0A: push [ebp+08h]
00825B0D: call [eax+00000370h]
00825B13: push eax
00825B14: lea eax, var_2C
00825B17: push eax
00825B18: call 00410A84h ; Set (object)
00825B1D: mov var_70, eax
00825B20: lea eax, var_64
00825B23: push eax
00825B24: mov eax, var_70
00825B27: mov eax, [eax]
00825B29: push var_70
00825B2C: call [eax+48h]
00825B2F: fclex 
00825B31: mov var_74, eax
00825B34: cmp var_74, 00000000h
00825B38: jnl 825B54h
00825B3A: push 00000048h
00825B3C: push 00440DE8h
00825B41: push var_70
00825B44: push var_74
00825B47: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00825B4C: mov var_000000AC, eax
00825B52: jmp 825B5Bh
00825B54: and var_000000AC, 00000000h
00825B5B: mov ax, var_64
00825B5F: mov var_44, ax
00825B63: mov var_4C, 00000002h
00825B6A: mov eax, [ebp+08h]
00825B6D: mov eax, [eax]
00825B6F: push [ebp+08h]
00825B72: call [eax+00000370h]
00825B78: push eax
00825B79: lea eax, var_28
00825B7C: push eax
00825B7D: call 00410A84h ; Set (object)
00825B82: mov var_68, eax
00825B85: lea eax, var_60
00825B88: push eax
00825B89: mov eax, var_68
00825B8C: mov eax, [eax]
00825B8E: push var_68
00825B91: call [eax+44h]
00825B94: fclex 
00825B96: mov var_6C, eax
00825B99: cmp var_6C, 00000000h
00825B9D: jnl 825BB9h
00825B9F: push 00000044h
00825BA1: push 00440DE8h
00825BA6: push var_68
00825BA9: push var_6C
00825BAC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00825BB1: mov var_000000B0, eax
00825BB7: jmp 825BC0h
00825BB9: and var_000000B0, 00000000h
00825BC0: mov ax, var_60
00825BC4: mov var_54, ax
00825BC8: mov var_5C, 00000002h
00825BCF: lea eax, var_3C
00825BD2: push eax
00825BD3: lea eax, var_4C
00825BD6: push eax
00825BD7: lea eax, var_5C
00825BDA: push eax
00825BDB: lea eax, var_00000094
00825BE1: push eax
00825BE2: lea eax, var_00000084
00825BE8: push eax
00825BE9: lea eax, var_24
00825BEC: push eax
00825BED: call 00410A3Ch ; For
00825BF2: mov var_000000A0, eax
00825BF8: lea eax, var_2C
00825BFB: push eax
00825BFC: lea eax, var_28
00825BFF: push eax
00825C00: push 00000002h
00825C02: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00825C07: add esp, 0000000Ch
00825C0A: jmp 00825CC4h
00825C0F: and var_34, 00000000h
00825C13: mov var_3C, 00000003h
00825C1A: mov eax, [ebp+08h]
00825C1D: mov eax, [eax]
00825C1F: push [ebp+08h]
00825C22: call [eax+00000370h]
00825C28: push eax
00825C29: lea eax, var_28
00825C2C: push eax
00825C2D: call 00410A84h ; Set (object)
00825C32: mov var_68, eax
00825C35: lea eax, var_2C
00825C38: push eax
00825C39: lea eax, var_24
00825C3C: push eax
00825C3D: call 004109D0h ; msvbvm60.dll.__vbaI2Var
00825C42: push eax
00825C43: mov eax, var_68
00825C46: mov eax, [eax]
00825C48: push var_68
00825C4B: call [eax+40h]
00825C4E: fclex 
00825C50: mov var_6C, eax
00825C53: cmp var_6C, 00000000h
00825C57: jnl 825C73h
00825C59: push 00000040h
00825C5B: push 00440DE8h
00825C60: push var_68
00825C63: push var_6C
00825C66: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00825C6B: mov var_000000B4, eax
00825C71: jmp 825C7Ah
00825C73: and var_000000B4, 00000000h
00825C7A: push 00000010h
00825C7C: pop eax
00825C7D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825C82: lea esi, var_3C
00825C85: mov edi, esp
00825C87: movsd 
00825C88: movsd 
00825C89: movsd 
00825C8A: movsd 
00825C8B: push 00000000h
00825C8D: push var_2C
00825C90: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00825C95: lea eax, var_2C
00825C98: push eax
00825C99: lea eax, var_28
00825C9C: push eax
00825C9D: push 00000002h
00825C9F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00825CA4: add esp, 0000000Ch
00825CA7: lea eax, var_00000094
00825CAD: push eax
00825CAE: lea eax, var_00000084
00825CB4: push eax
00825CB5: lea eax, var_24
00825CB8: push eax
00825CB9: call 00410A36h ; Next
00825CBE: mov var_000000A0, eax
00825CC4: cmp var_000000A0, 00000000h
00825CCB: jnz 00825C0Fh
00825CD1: push 00825D0Ch
00825CD6: jmp 825CEBh
00825CD8: lea eax, var_2C
00825CDB: push eax
00825CDC: lea eax, var_28
00825CDF: push eax
00825CE0: push 00000002h
00825CE2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00825CE7: add esp, 0000000Ch
00825CEA: ret 
End Sub

Private sub unknown_825D2B
00825D2B: push ebp
00825D2C: mov ebp, esp
00825D2E: sub esp, 00000018h
00825D31: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00825D36: mov eax, fs:[00h]
00825D3C: push eax
00825D3D: mov fs:[00000000h], esp
00825D44: mov eax, 00000544h
00825D49: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825D4E: push ebx
00825D4F: push esi
00825D50: push edi
00825D51: mov var_18, esp
00825D54: mov var_14, 0040B208h
00825D5B: mov var_10, 00000000h
00825D62: mov var_0C, 00000000h
00825D69: mov eax, [ebp+08h]
00825D6C: mov eax, [eax]
00825D6E: push [ebp+08h]
00825D71: call [eax+04h]
00825D74: mov var_04, 00000001h
00825D7B: push 0000000Bh
00825D7D: push 00453EFCh
00825D82: lea eax, var_68
00825D85: push eax
00825D86: call 00410B4Ah ; msvbvm60.dll.__vbaAryConstruct2
00825D8B: mov var_04, 00000002h
00825D92: push FFFFFFFFh
00825D94: call 00410A60h ; On Error ...
00825D99: mov var_04, 00000003h
00825DA0: cmp [008F2010h], 00000000h
00825DA7: jnz 825DC4h
00825DA9: push 008F2010h
00825DAE: push 00433984h
00825DB3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00825DB8: mov var_00000364, 008F2010h
00825DC2: jmp 825DCEh
00825DC4: mov var_00000364, 008F2010h
00825DCE: push 00000000h
00825DD0: push 00000003h
00825DD2: push 00440E48h
00825DD7: push 00000000h
00825DD9: push 00000018h
00825DDB: mov eax, var_00000364
00825DE1: mov eax, [eax]
00825DE3: mov ecx, var_00000364
00825DE9: mov ecx, [ecx]
00825DEB: mov ecx, [ecx]
00825DED: push eax
00825DEE: call [ecx+0000054Ch]
00825DF4: push eax
00825DF5: lea eax, var_00000094
00825DFB: push eax
00825DFC: call 00410A84h ; Set (object)
00825E01: push eax
00825E02: lea eax, var_000000B8
00825E08: push eax
00825E09: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00825E0E: add esp, 00000010h
00825E11: push eax
00825E12: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00825E17: push eax
00825E18: lea eax, var_00000098
00825E1E: push eax
00825E1F: call 00410A84h ; Set (object)
00825E24: push eax
00825E25: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00825E2A: add esp, 0000000Ch
00825E2D: lea eax, var_00000098
00825E33: push eax
00825E34: lea eax, var_00000094
00825E3A: push eax
00825E3B: push 00000002h
00825E3D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00825E42: add esp, 0000000Ch
00825E45: lea ecx, var_000000B8
00825E4B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00825E50: mov var_04, 00000004h
00825E57: or var_00000160, FFFFFFFFh
00825E5E: mov var_00000168, 0000000Bh
00825E68: cmp [008F2010h], 00000000h
00825E6F: jnz 825E8Ch
00825E71: push 008F2010h
00825E76: push 00433984h
00825E7B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00825E80: mov var_00000368, 008F2010h
00825E8A: jmp 825E96h
00825E8C: mov var_00000368, 008F2010h
00825E96: push 00000010h
00825E98: pop eax
00825E99: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825E9E: lea esi, var_00000168
00825EA4: mov edi, esp
00825EA6: movsd 
00825EA7: movsd 
00825EA8: movsd 
00825EA9: movsd 
00825EAA: push 80010007h
00825EAF: mov eax, var_00000368
00825EB5: mov eax, [eax]
00825EB7: mov ecx, var_00000368
00825EBD: mov ecx, [ecx]
00825EBF: mov ecx, [ecx]
00825EC1: push eax
00825EC2: call [ecx+0000054Ch]
00825EC8: push eax
00825EC9: lea eax, var_00000094
00825ECF: push eax
00825ED0: call 00410A84h ; Set (object)
00825ED5: push eax
00825ED6: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00825EDB: lea ecx, var_00000094
00825EE1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00825EE6: mov var_04, 00000005h
00825EED: and var_00000160, 00000000h
00825EF4: mov var_00000168, 00000002h
00825EFE: cmp [008F2010h], 00000000h
00825F05: jnz 825F22h
00825F07: push 008F2010h
00825F0C: push 00433984h
00825F11: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00825F16: mov var_0000036C, 008F2010h
00825F20: jmp 825F2Ch
00825F22: mov var_0000036C, 008F2010h
00825F2C: push 00000010h
00825F2E: pop eax
00825F2F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00825F34: lea esi, var_00000168
00825F3A: mov edi, esp
00825F3C: movsd 
00825F3D: movsd 
00825F3E: movsd 
00825F3F: movsd 
00825F40: push 00000001h
00825F42: push 80011001h
00825F47: mov eax, var_0000036C
00825F4D: mov eax, [eax]
00825F4F: mov ecx, var_0000036C
00825F55: mov ecx, [ecx]
00825F57: mov ecx, [ecx]
00825F59: push eax
00825F5A: call [ecx+0000054Ch]
00825F60: push eax
00825F61: lea eax, var_00000094
00825F67: push eax
00825F68: call 00410A84h ; Set (object)
00825F6D: push eax
00825F6E: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00825F73: add esp, 0000001Ch
00825F76: lea ecx, var_00000094
00825F7C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00825F81: mov var_04, 00000006h
00825F88: mov var_00000160, 00000001h
00825F92: mov var_00000168, 00000002h
00825F9C: mov eax, [ebp+08h]
00825F9F: mov eax, [eax]
00825FA1: push [ebp+08h]
00825FA4: call [eax+00000370h]
00825FAA: push eax
00825FAB: lea eax, var_00000098
00825FB1: push eax
00825FB2: call 00410A84h ; Set (object)
00825FB7: mov var_00000218, eax
00825FBD: lea eax, var_000001F0
00825FC3: push eax
00825FC4: mov eax, var_00000218
00825FCA: mov eax, [eax]
00825FCC: push var_00000218
00825FD2: call [eax+48h]
00825FD5: fclex 
00825FD7: mov var_0000021C, eax
00825FDD: cmp var_0000021C, 00000000h
00825FE4: jnl 826006h
00825FE6: push 00000048h
00825FE8: push 00440DE8h
00825FED: push var_00000218
00825FF3: push var_0000021C
00825FF9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00825FFE: mov var_00000370, eax
00826004: jmp 82600Dh
00826006: and var_00000370, 00000000h
0082600D: mov ax, var_000001F0
00826014: mov var_00000170, ax
0082601B: mov var_00000178, 00000002h
00826025: mov eax, [ebp+08h]
00826028: mov eax, [eax]
0082602A: push [ebp+08h]
0082602D: call [eax+00000370h]
00826033: push eax
00826034: lea eax, var_00000094
0082603A: push eax
0082603B: call 00410A84h ; Set (object)
00826040: mov var_00000210, eax
00826046: lea eax, var_000001EC
0082604C: push eax
0082604D: mov eax, var_00000210
00826053: mov eax, [eax]
00826055: push var_00000210
0082605B: call [eax+44h]
0082605E: fclex 
00826060: mov var_00000214, eax
00826066: cmp var_00000214, 00000000h
0082606D: jnl 82608Fh
0082606F: push 00000044h
00826071: push 00440DE8h
00826076: push var_00000210
0082607C: push var_00000214
00826082: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00826087: mov var_00000374, eax
0082608D: jmp 826096h
0082608F: and var_00000374, 00000000h
00826096: mov ax, var_000001EC
0082609D: mov var_00000180, ax
008260A4: mov var_00000188, 00000002h
008260AE: lea eax, var_00000168
008260B4: push eax
008260B5: lea eax, var_00000178
008260BB: push eax
008260BC: lea eax, var_00000188
008260C2: push eax
008260C3: lea eax, var_00000248
008260C9: push eax
008260CA: lea eax, var_00000238
008260D0: push eax
008260D1: lea eax, var_30
008260D4: push eax
008260D5: call 00410A3Ch ; For
008260DA: mov var_00000330, eax
008260E0: lea eax, var_00000098
008260E6: push eax
008260E7: lea eax, var_00000094
008260ED: push eax
008260EE: push 00000002h
008260F0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008260F5: add esp, 0000000Ch
008260F8: jmp 00826218h
008260FD: mov var_04, 00000007h
00826104: mov eax, [ebp+08h]
00826107: mov eax, [eax]
00826109: push [ebp+08h]
0082610C: call [eax+00000370h]
00826112: push eax
00826113: lea eax, var_00000094
00826119: push eax
0082611A: call 00410A84h ; Set (object)
0082611F: mov var_00000210, eax
00826125: lea eax, var_00000098
0082612B: push eax
0082612C: lea eax, var_30
0082612F: push eax
00826130: call 004109D0h ; msvbvm60.dll.__vbaI2Var
00826135: push eax
00826136: mov eax, var_00000210
0082613C: mov eax, [eax]
0082613E: push var_00000210
00826144: call [eax+40h]
00826147: fclex 
00826149: mov var_00000214, eax
0082614F: cmp var_00000214, 00000000h
00826156: jnl 826178h
00826158: push 00000040h
0082615A: push 00440DE8h
0082615F: push var_00000210
00826165: push var_00000214
0082616B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00826170: mov var_00000378, eax
00826176: jmp 82617Fh
00826178: and var_00000378, 00000000h
0082617F: push 00000000h
00826181: push 00000000h
00826183: push var_00000098
00826189: lea eax, var_000000B8
0082618F: push eax
00826190: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00826195: add esp, 00000010h
00826198: push eax
00826199: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082619E: dec eax
0082619F: neg eax
008261A1: sbb eax, eax
008261A3: inc eax
008261A4: neg eax
008261A6: mov var_00000218, ax
008261AD: lea eax, var_00000098
008261B3: push eax
008261B4: lea eax, var_00000094
008261BA: push eax
008261BB: push 00000002h
008261BD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008261C2: add esp, 0000000Ch
008261C5: lea ecx, var_000000B8
008261CB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008261D0: movsx eax, word ptr var_00000218
008261D7: test eax, eax
008261D9: jz 8261F4h
008261DB: mov var_04, 00000008h
008261E2: mov ax, var_48
008261E6: add ax, 0001h
008261EA: jo 0082E860h
008261F0: mov var_48, ax
008261F4: mov var_04, 0000000Ah
008261FB: lea eax, var_00000248
00826201: push eax
00826202: lea eax, var_00000238
00826208: push eax
00826209: lea eax, var_30
0082620C: push eax
0082620D: call 00410A36h ; Next
00826212: mov var_00000330, eax
00826218: cmp var_00000330, 00000000h
0082621F: jnz 008260FDh
00826225: mov var_04, 0000000Bh
0082622C: cmp [008F2010h], 00000000h
00826233: jnz 826250h
00826235: push 008F2010h
0082623A: push 00433984h
0082623F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00826244: mov var_0000037C, 008F2010h
0082624E: jmp 82625Ah
00826250: mov var_0000037C, 008F2010h
0082625A: mov eax, var_0000037C
00826260: mov eax, [eax]
00826262: mov ecx, var_0000037C
00826268: mov ecx, [ecx]
0082626A: mov ecx, [ecx]
0082626C: push eax
0082626D: call [ecx+00000550h]
00826273: push eax
00826274: lea eax, var_00000228
0082627A: push eax
0082627B: call 00410A84h ; Set (object)
00826280: mov var_04, 0000000Ch
00826287: mov var_00000160, 00000001h
00826291: mov var_00000168, 00000002h
0082629B: cmp [008F2010h], 00000000h
008262A2: jnz 8262BFh
008262A4: push 008F2010h
008262A9: push 00433984h
008262AE: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008262B3: mov var_00000380, 008F2010h
008262BD: jmp 8262C9h
008262BF: mov var_00000380, 008F2010h
008262C9: push 00000000h
008262CB: push 00000001h
008262CD: push 00440E48h
008262D2: push 00000000h
008262D4: push 00000018h
008262D6: mov eax, var_00000380
008262DC: mov eax, [eax]
008262DE: mov ecx, var_00000380
008262E4: mov ecx, [ecx]
008262E6: mov ecx, [ecx]
008262E8: push eax
008262E9: call [ecx+00000550h]
008262EF: push eax
008262F0: lea eax, var_00000094
008262F6: push eax
008262F7: call 00410A84h ; Set (object)
008262FC: push eax
008262FD: lea eax, var_000000B8
00826303: push eax
00826304: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00826309: add esp, 00000010h
0082630C: push eax
0082630D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00826312: push eax
00826313: lea eax, var_00000098
00826319: push eax
0082631A: call 00410A84h ; Set (object)
0082631F: push eax
00826320: lea eax, var_000000C8
00826326: push eax
00826327: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082632C: add esp, 00000010h
0082632F: push eax
00826330: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00826335: mov var_00000170, eax
0082633B: mov var_00000178, 00000003h
00826345: mov var_00000180, 00000001h
0082634F: mov var_00000188, 00000002h
00826359: lea eax, var_00000168
0082635F: push eax
00826360: lea eax, var_00000178
00826366: push eax
00826367: lea eax, var_00000188
0082636D: push eax
0082636E: lea eax, var_00000268
00826374: push eax
00826375: lea eax, var_00000258
0082637B: push eax
0082637C: lea eax, var_30
0082637F: push eax
00826380: call 00410A3Ch ; For
00826385: mov var_00000334, eax
0082638B: lea eax, var_00000098
00826391: push eax
00826392: lea eax, var_00000094
00826398: push eax
00826399: push 00000002h
0082639B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008263A0: add esp, 0000000Ch
008263A3: lea eax, var_000000C8
008263A9: push eax
008263AA: lea eax, var_000000B8
008263B0: push eax
008263B1: push 00000002h
008263B3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008263B8: add esp, 0000000Ch
008263BB: jmp 0082E6ACh
008263C0: mov var_04, 0000000Dh
008263C7: lea eax, var_30
008263CA: mov var_00000160, eax
008263D0: mov var_00000168, 0000400Ch
008263DA: push 00000000h
008263DC: push 00000014h
008263DE: push 00440E58h
008263E3: push 00000010h
008263E5: pop eax
008263E6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008263EB: lea esi, var_00000168
008263F1: mov edi, esp
008263F3: movsd 
008263F4: movsd 
008263F5: movsd 
008263F6: movsd 
008263F7: push 00000001h
008263F9: push 00000000h
008263FB: push 00440E48h
00826400: push 00000000h
00826402: push 00000018h
00826404: push var_00000228
0082640A: lea eax, var_000000B8
00826410: push eax
00826411: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00826416: add esp, 00000010h
00826419: push eax
0082641A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082641F: push eax
00826420: lea eax, var_00000094
00826426: push eax
00826427: call 00410A84h ; Set (object)
0082642C: push eax
0082642D: lea eax, var_000000C8
00826433: push eax
00826434: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00826439: add esp, 00000020h
0082643C: push eax
0082643D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00826442: push eax
00826443: lea eax, var_00000098
00826449: push eax
0082644A: call 00410A84h ; Set (object)
0082644F: push eax
00826450: lea eax, var_000000D8
00826456: push eax
00826457: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082645C: add esp, 00000010h
0082645F: push eax
00826460: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00826465: mov edx, eax
00826467: lea ecx, var_00000088
0082646D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00826472: lea eax, var_00000098
00826478: push eax
00826479: lea eax, var_00000094
0082647F: push eax
00826480: push 00000002h
00826482: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00826487: add esp, 0000000Ch
0082648A: lea eax, var_000000D8
00826490: push eax
00826491: lea eax, var_000000C8
00826497: push eax
00826498: lea eax, var_000000B8
0082649E: push eax
0082649F: push 00000003h
008264A1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008264A6: add esp, 00000010h
008264A9: mov var_04, 0000000Eh
008264B0: mov var_00000160, 00000001h
008264BA: mov var_00000168, 00000002h
008264C4: lea eax, var_68
008264C7: push eax
008264C8: push 00000001h
008264CA: call 00410886h ; UBound
008264CF: mov var_00000170, eax
008264D5: mov var_00000178, 00000003h
008264DF: lea eax, var_68
008264E2: push eax
008264E3: push 00000001h
008264E5: call 00410880h ; LBound(arg_1)
008264EA: mov var_00000180, eax
008264F0: mov var_00000188, 00000003h
008264FA: lea eax, var_00000168
00826500: push eax
00826501: lea eax, var_00000178
00826507: push eax
00826508: lea eax, var_00000188
0082650E: push eax
0082650F: lea eax, var_00000288
00826515: push eax
00826516: lea eax, var_00000278
0082651C: push eax
0082651D: lea eax, var_40
00826520: push eax
00826521: call 00410A3Ch ; For
00826526: mov var_00000338, eax
0082652C: jmp 826593h
0082652E: mov var_04, 0000000Fh
00826535: lea eax, var_40
00826538: push eax
00826539: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082653E: mov var_00000210, eax
00826544: cmp var_00000210, 00000012h
0082654B: jnb 826556h
0082654D: and var_00000384, 00000000h
00826554: jmp 826561h
00826556: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082655B: mov var_00000384, eax
00826561: mov eax, var_00000210
00826567: mov ecx, var_5C
0082656A: and word ptr [ecx+eax*2], 0000h
0082656F: mov var_04, 00000010h
00826576: lea eax, var_00000288
0082657C: push eax
0082657D: lea eax, var_00000278
00826583: push eax
00826584: lea eax, var_40
00826587: push eax
00826588: call 00410A36h ; Next
0082658D: mov var_00000338, eax
00826593: cmp var_00000338, 00000000h
0082659A: jnz 82652Eh
0082659C: mov var_04, 00000011h
008265A3: and word ptr var_4C, 0000h
008265A8: mov var_04, 00000012h
008265AF: mov var_00000160, 00000001h
008265B9: mov var_00000168, 00000002h
008265C3: mov eax, [ebp+08h]
008265C6: mov eax, [eax]
008265C8: push [ebp+08h]
008265CB: call [eax+00000370h]
008265D1: push eax
008265D2: lea eax, var_00000098
008265D8: push eax
008265D9: call 00410A84h ; Set (object)
008265DE: mov var_00000218, eax
008265E4: lea eax, var_000001F0
008265EA: push eax
008265EB: mov eax, var_00000218
008265F1: mov eax, [eax]
008265F3: push var_00000218
008265F9: call [eax+48h]
008265FC: fclex 
008265FE: mov var_0000021C, eax
00826604: cmp var_0000021C, 00000000h
0082660B: jnl 82662Dh
0082660D: push 00000048h
0082660F: push 00440DE8h
00826614: push var_00000218
0082661A: push var_0000021C
00826620: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00826625: mov var_00000388, eax
0082662B: jmp 826634h
0082662D: and var_00000388, 00000000h
00826634: mov ax, var_000001F0
0082663B: mov var_00000170, ax
00826642: mov var_00000178, 00000002h
0082664C: mov eax, [ebp+08h]
0082664F: mov eax, [eax]
00826651: push [ebp+08h]
00826654: call [eax+00000370h]
0082665A: push eax
0082665B: lea eax, var_00000094
00826661: push eax
00826662: call 00410A84h ; Set (object)
00826667: mov var_00000210, eax
0082666D: lea eax, var_000001EC
00826673: push eax
00826674: mov eax, var_00000210
0082667A: mov eax, [eax]
0082667C: push var_00000210
00826682: call [eax+44h]
00826685: fclex 
00826687: mov var_00000214, eax
0082668D: cmp var_00000214, 00000000h
00826694: jnl 8266B6h
00826696: push 00000044h
00826698: push 00440DE8h
0082669D: push var_00000210
008266A3: push var_00000214
008266A9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008266AE: mov var_0000038C, eax
008266B4: jmp 8266BDh
008266B6: and var_0000038C, 00000000h
008266BD: mov ax, var_000001EC
008266C4: mov var_00000180, ax
008266CB: mov var_00000188, 00000002h
008266D5: lea eax, var_00000168
008266DB: push eax
008266DC: lea eax, var_00000178
008266E2: push eax
008266E3: lea eax, var_00000188
008266E9: push eax
008266EA: lea eax, var_000002A8
008266F0: push eax
008266F1: lea eax, var_00000298
008266F7: push eax
008266F8: lea eax, var_40
008266FB: push eax
008266FC: call 00410A3Ch ; For
00826701: mov var_0000033C, eax
00826707: lea eax, var_00000098
0082670D: push eax
0082670E: lea eax, var_00000094
00826714: push eax
00826715: push 00000002h
00826717: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082671C: add esp, 0000000Ch
0082671F: jmp 0082DAB2h
00826724: mov var_04, 00000013h
0082672B: mov eax, [ebp+08h]
0082672E: mov eax, [eax]
00826730: push [ebp+08h]
00826733: call [eax+00000370h]
00826739: push eax
0082673A: lea eax, var_00000094
00826740: push eax
00826741: call 00410A84h ; Set (object)
00826746: mov var_00000210, eax
0082674C: lea eax, var_00000098
00826752: push eax
00826753: lea eax, var_40
00826756: push eax
00826757: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0082675C: push eax
0082675D: mov eax, var_00000210
00826763: mov eax, [eax]
00826765: push var_00000210
0082676B: call [eax+40h]
0082676E: fclex 
00826770: mov var_00000214, eax
00826776: cmp var_00000214, 00000000h
0082677D: jnl 82679Fh
0082677F: push 00000040h
00826781: push 00440DE8h
00826786: push var_00000210
0082678C: push var_00000214
00826792: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00826797: mov var_00000390, eax
0082679D: jmp 8267A6h
0082679F: and var_00000390, 00000000h
008267A6: push 00000000h
008267A8: push 00000000h
008267AA: push var_00000098
008267B0: lea eax, var_000000B8
008267B6: push eax
008267B7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008267BC: add esp, 00000010h
008267BF: push eax
008267C0: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008267C5: dec eax
008267C6: neg eax
008267C8: sbb eax, eax
008267CA: inc eax
008267CB: neg eax
008267CD: mov var_00000218, ax
008267D4: lea eax, var_00000098
008267DA: push eax
008267DB: lea eax, var_00000094
008267E1: push eax
008267E2: push 00000002h
008267E4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008267E9: add esp, 0000000Ch
008267EC: lea ecx, var_000000B8
008267F2: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008267F7: movsx eax, word ptr var_00000218
008267FE: test eax, eax
00826800: jz 0082DA8Eh
00826806: mov var_04, 00000014h
0082680D: lea edx, var_40
00826810: lea ecx, var_000002B8
00826816: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0082681B: mov var_04, 00000015h
00826822: and var_00000160, 00000000h
00826829: mov var_00000168, 00008002h
00826833: lea eax, var_000002B8
00826839: push eax
0082683A: lea eax, var_00000168
00826840: push eax
00826841: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
00826846: movsx eax, ax
00826849: test eax, eax
0082684B: jz 00826DDDh
00826851: mov var_04, 00000016h
00826858: mov eax, [ebp+08h]
0082685B: mov eax, [eax]
0082685D: push [ebp+08h]
00826860: call [eax+000003ACh]
00826866: push eax
00826867: lea eax, var_00000094
0082686D: push eax
0082686E: call 00410A84h ; Set (object)
00826873: mov var_00000210, eax
00826879: lea eax, var_00000098
0082687F: push eax
00826880: push 00000000h
00826882: mov eax, var_00000210
00826888: mov eax, [eax]
0082688A: push var_00000210
00826890: call [eax+40h]
00826893: fclex 
00826895: mov var_00000214, eax
0082689B: cmp var_00000214, 00000000h
008268A2: jnl 8268C4h
008268A4: push 00000040h
008268A6: push 00440DE8h
008268AB: push var_00000210
008268B1: push var_00000214
008268B7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008268BC: mov var_00000394, eax
008268C2: jmp 8268CBh
008268C4: and var_00000394, 00000000h
008268CB: push 00000000h
008268CD: push 00000000h
008268CF: push var_00000098
008268D5: lea eax, var_000000B8
008268DB: push eax
008268DC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008268E1: add esp, 00000010h
008268E4: push eax
008268E5: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008268EA: sub ax, FFFFh
008268EE: neg ax
008268F1: sbb eax, eax
008268F3: inc eax
008268F4: neg eax
008268F6: mov var_00000218, ax
008268FD: lea eax, var_00000098
00826903: push eax
00826904: lea eax, var_00000094
0082690A: push eax
0082690B: push 00000002h
0082690D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00826912: add esp, 0000000Ch
00826915: lea ecx, var_000000B8
0082691B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00826920: movsx eax, word ptr var_00000218
00826927: test eax, eax
00826929: jz 00826B30h
0082692F: mov var_04, 00000017h
00826936: mov eax, [ebp+08h]
00826939: mov eax, [eax]
0082693B: push [ebp+08h]
0082693E: call [eax+00000338h]
00826944: push eax
00826945: lea eax, var_0000009C
0082694B: push eax
0082694C: call 00410A84h ; Set (object)
00826951: mov var_00000210, eax
00826957: lea eax, var_0000008C
0082695D: push eax
0082695E: mov eax, var_00000210
00826964: mov eax, [eax]
00826966: push var_00000210
0082696C: call [eax+000000A0h]
00826972: fclex 
00826974: mov var_00000214, eax
0082697A: cmp var_00000214, 00000000h
00826981: jnl 8269A6h
00826983: push 000000A0h
00826988: push 00440E08h
0082698D: push var_00000210
00826993: push var_00000214
00826999: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082699E: mov var_00000398, eax
008269A4: jmp 8269ADh
008269A6: and var_00000398, 00000000h
008269AD: mov eax, var_00000088
008269B3: mov var_00000160, eax
008269B9: mov var_00000168, 00000008h
008269C3: push var_0000008C
008269C9: push 00000000h
008269CB: push 00000000h
008269CD: push 00440E58h
008269D2: push 00000010h
008269D4: pop eax
008269D5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008269DA: lea esi, var_00000168
008269E0: mov edi, esp
008269E2: movsd 
008269E3: movsd 
008269E4: movsd 
008269E5: movsd 
008269E6: push 00000001h
008269E8: push 00000000h
008269EA: push 00440E48h
008269EF: push 00000000h
008269F1: push 00000018h
008269F3: push var_00000228
008269F9: lea eax, var_000000B8
008269FF: push eax
00826A00: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00826A05: add esp, 00000010h
00826A08: push eax
00826A09: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00826A0E: push eax
00826A0F: lea eax, var_00000094
00826A15: push eax
00826A16: call 00410A84h ; Set (object)
00826A1B: push eax
00826A1C: lea eax, var_000000C8
00826A22: push eax
00826A23: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00826A28: add esp, 00000020h
00826A2B: push eax
00826A2C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00826A31: push eax
00826A32: lea eax, var_00000098
00826A38: push eax
00826A39: call 00410A84h ; Set (object)
00826A3E: push eax
00826A3F: lea eax, var_000000D8
00826A45: push eax
00826A46: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00826A4B: add esp, 00000010h
00826A4E: push eax
00826A4F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00826A54: mov edx, eax
00826A56: lea ecx, var_00000090
00826A5C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00826A61: push eax
00826A62: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00826A67: neg eax
00826A69: sbb eax, eax
00826A6B: inc eax
00826A6C: neg eax
00826A6E: mov var_00000218, ax
00826A75: lea eax, var_00000090
00826A7B: push eax
00826A7C: lea eax, var_0000008C
00826A82: push eax
00826A83: push 00000002h
00826A85: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00826A8A: add esp, 0000000Ch
00826A8D: lea eax, var_0000009C
00826A93: push eax
00826A94: lea eax, var_00000098
00826A9A: push eax
00826A9B: lea eax, var_00000094
00826AA1: push eax
00826AA2: push 00000003h
00826AA4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00826AA9: add esp, 00000010h
00826AAC: lea eax, var_000000D8
00826AB2: push eax
00826AB3: lea eax, var_000000C8
00826AB9: push eax
00826ABA: lea eax, var_000000B8
00826AC0: push eax
00826AC1: push 00000003h
00826AC3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00826AC8: add esp, 00000010h
00826ACB: movsx eax, word ptr var_00000218
00826AD2: test eax, eax
00826AD4: jz 826B30h
00826AD6: mov var_04, 00000018h
00826ADD: lea eax, var_40
00826AE0: push eax
00826AE1: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00826AE6: mov var_00000210, eax
00826AEC: cmp var_00000210, 00000012h
00826AF3: jnb 826AFEh
00826AF5: and var_0000039C, 00000000h
00826AFC: jmp 826B09h
00826AFE: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
00826B03: mov var_0000039C, eax
00826B09: mov eax, var_00000210
00826B0F: mov ecx, var_5C
00826B12: or word ptr [ecx+eax*2], FFFFh
00826B17: mov var_04, 00000019h
00826B1E: mov ax, var_4C
00826B22: add ax, 0001h
00826B26: jo 0082E860h
00826B2C: mov var_4C, ax
00826B30: mov var_04, 0000001Ch
00826B37: mov eax, [ebp+08h]
00826B3A: mov eax, [eax]
00826B3C: push [ebp+08h]
00826B3F: call [eax+000003ACh]
00826B45: push eax
00826B46: lea eax, var_00000094
00826B4C: push eax
00826B4D: call 00410A84h ; Set (object)
00826B52: mov var_00000210, eax
00826B58: lea eax, var_00000098
00826B5E: push eax
00826B5F: push 00000001h
00826B61: mov eax, var_00000210
00826B67: mov eax, [eax]
00826B69: push var_00000210
00826B6F: call [eax+40h]
00826B72: fclex 
00826B74: mov var_00000214, eax
00826B7A: cmp var_00000214, 00000000h
00826B81: jnl 826BA3h
00826B83: push 00000040h
00826B85: push 00440DE8h
00826B8A: push var_00000210
00826B90: push var_00000214
00826B96: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00826B9B: mov var_000003A0, eax
00826BA1: jmp 826BAAh
00826BA3: and var_000003A0, 00000000h
00826BAA: push 00000000h
00826BAC: push 00000000h
00826BAE: push var_00000098
00826BB4: lea eax, var_000000B8
00826BBA: push eax
00826BBB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00826BC0: add esp, 00000010h
00826BC3: push eax
00826BC4: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00826BC9: sub ax, FFFFh
00826BCD: neg ax
00826BD0: sbb eax, eax
00826BD2: inc eax
00826BD3: neg eax
00826BD5: mov var_00000218, ax
00826BDC: lea eax, var_00000098
00826BE2: push eax
00826BE3: lea eax, var_00000094
00826BE9: push eax
00826BEA: push 00000002h
00826BEC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00826BF1: add esp, 0000000Ch
00826BF4: lea ecx, var_000000B8
00826BFA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00826BFF: movsx eax, word ptr var_00000218
00826C06: test eax, eax
00826C08: jz 00826DD8h
00826C0E: mov var_04, 0000001Dh
00826C15: mov eax, var_00000088
00826C1B: mov var_00000160, eax
00826C21: mov var_00000168, 00000008h
00826C2B: push 00000000h
00826C2D: push 00000000h
00826C2F: push 00440E58h
00826C34: push 00000010h
00826C36: pop eax
00826C37: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00826C3C: lea esi, var_00000168
00826C42: mov edi, esp
00826C44: movsd 
00826C45: movsd 
00826C46: movsd 
00826C47: movsd 
00826C48: push 00000001h
00826C4A: push 00000000h
00826C4C: push 00440E48h
00826C51: push 00000000h
00826C53: push 00000018h
00826C55: push var_00000228
00826C5B: lea eax, var_000000B8
00826C61: push eax
00826C62: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00826C67: add esp, 00000010h
00826C6A: push eax
00826C6B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00826C70: push eax
00826C71: lea eax, var_00000094
00826C77: push eax
00826C78: call 00410A84h ; Set (object)
00826C7D: push eax
00826C7E: lea eax, var_000000C8
00826C84: push eax
00826C85: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00826C8A: add esp, 00000020h
00826C8D: push eax
00826C8E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00826C93: push eax
00826C94: lea eax, var_00000098
00826C9A: push eax
00826C9B: call 00410A84h ; Set (object)
00826CA0: push eax
00826CA1: lea eax, var_000000D8
00826CA7: push eax
00826CA8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00826CAD: add esp, 00000010h
00826CB0: push eax
00826CB1: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00826CB6: mov var_000000F0, eax
00826CBC: mov var_000000F8, 00000008h
00826CC6: mov eax, [ebp+08h]
00826CC9: mov eax, [eax]
00826CCB: push [ebp+08h]
00826CCE: call [eax+00000338h]
00826CD4: mov var_000000E0, eax
00826CDA: mov var_000000E8, 00000009h
00826CE4: and var_00000180, 00000000h
00826CEB: mov var_00000188, 00008002h
00826CF5: push 00000001h
00826CF7: lea eax, var_000000F8
00826CFD: push eax
00826CFE: lea eax, var_000000E8
00826D04: push eax
00826D05: push 00000000h
00826D07: lea eax, var_00000108
00826D0D: push eax
00826D0E: call 0041083Eh ; InStr
00826D13: push eax
00826D14: lea eax, var_00000188
00826D1A: push eax
00826D1B: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
00826D20: mov var_00000210, ax
00826D27: lea eax, var_00000098
00826D2D: push eax
00826D2E: lea eax, var_00000094
00826D34: push eax
00826D35: push 00000002h
00826D37: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00826D3C: add esp, 0000000Ch
00826D3F: lea eax, var_00000108
00826D45: push eax
00826D46: lea eax, var_000000F8
00826D4C: push eax
00826D4D: lea eax, var_000000E8
00826D53: push eax
00826D54: lea eax, var_000000D8
00826D5A: push eax
00826D5B: lea eax, var_000000C8
00826D61: push eax
00826D62: lea eax, var_000000B8
00826D68: push eax
00826D69: push 00000006h
00826D6B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00826D70: add esp, 0000001Ch
00826D73: movsx eax, word ptr var_00000210
00826D7A: test eax, eax
00826D7C: jz 826DD8h
00826D7E: mov var_04, 0000001Eh
00826D85: lea eax, var_40
00826D88: push eax
00826D89: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00826D8E: mov var_00000210, eax
00826D94: cmp var_00000210, 00000012h
00826D9B: jnb 826DA6h
00826D9D: and var_000003A4, 00000000h
00826DA4: jmp 826DB1h
00826DA6: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
00826DAB: mov var_000003A4, eax
00826DB1: mov eax, var_00000210
00826DB7: mov ecx, var_5C
00826DBA: or word ptr [ecx+eax*2], FFFFh
00826DBF: mov var_04, 0000001Fh
00826DC6: mov ax, var_4C
00826DCA: add ax, 0001h
00826DCE: jo 0082E860h
00826DD4: mov var_4C, ax
00826DD8: jmp 0082DA8Eh
00826DDD: mov var_04, 00000022h
00826DE4: mov var_00000160, 00000001h
00826DEE: mov var_00000168, 00008002h
00826DF8: lea eax, var_000002B8
00826DFE: push eax
00826DFF: lea eax, var_00000168
00826E05: push eax
00826E06: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
00826E0B: movsx eax, ax
00826E0E: test eax, eax
00826E10: jz 008273FCh
00826E16: mov var_04, 00000023h
00826E1D: mov eax, [ebp+08h]
00826E20: mov eax, [eax]
00826E22: push [ebp+08h]
00826E25: call [eax+000003A8h]
00826E2B: push eax
00826E2C: lea eax, var_00000094
00826E32: push eax
00826E33: call 00410A84h ; Set (object)
00826E38: mov var_00000210, eax
00826E3E: lea eax, var_00000098
00826E44: push eax
00826E45: push 00000000h
00826E47: mov eax, var_00000210
00826E4D: mov eax, [eax]
00826E4F: push var_00000210
00826E55: call [eax+40h]
00826E58: fclex 
00826E5A: mov var_00000214, eax
00826E60: cmp var_00000214, 00000000h
00826E67: jnl 826E89h
00826E69: push 00000040h
00826E6B: push 00440DE8h
00826E70: push var_00000210
00826E76: push var_00000214
00826E7C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00826E81: mov var_000003A8, eax
00826E87: jmp 826E90h
00826E89: and var_000003A8, 00000000h
00826E90: push 00000000h
00826E92: push 00000000h
00826E94: push var_00000098
00826E9A: lea eax, var_000000B8
00826EA0: push eax
00826EA1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00826EA6: add esp, 00000010h
00826EA9: push eax
00826EAA: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00826EAF: sub ax, FFFFh
00826EB3: neg ax
00826EB6: sbb eax, eax
00826EB8: inc eax
00826EB9: neg eax
00826EBB: mov var_00000218, ax
00826EC2: lea eax, var_00000098
00826EC8: push eax
00826EC9: lea eax, var_00000094
00826ECF: push eax
00826ED0: push 00000002h
00826ED2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00826ED7: add esp, 0000000Ch
00826EDA: lea ecx, var_000000B8
00826EE0: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00826EE5: movsx eax, word ptr var_00000218
00826EEC: test eax, eax
00826EEE: jz 00827122h
00826EF4: mov var_04, 00000024h
00826EFB: mov eax, [ebp+08h]
00826EFE: mov eax, [eax]
00826F00: push [ebp+08h]
00826F03: call [eax+00000334h]
00826F09: push eax
00826F0A: lea eax, var_0000009C
00826F10: push eax
00826F11: call 00410A84h ; Set (object)
00826F16: mov var_00000210, eax
00826F1C: lea eax, var_0000008C
00826F22: push eax
00826F23: mov eax, var_00000210
00826F29: mov eax, [eax]
00826F2B: push var_00000210
00826F31: call [eax+000000A0h]
00826F37: fclex 
00826F39: mov var_00000214, eax
00826F3F: cmp var_00000214, 00000000h
00826F46: jnl 826F6Bh
00826F48: push 000000A0h
00826F4D: push 00440E08h
00826F52: push var_00000210
00826F58: push var_00000214
00826F5E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00826F63: mov var_000003AC, eax
00826F69: jmp 826F72h
00826F6B: and var_000003AC, 00000000h
00826F72: lea eax, var_40
00826F75: push eax
00826F76: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00826F7B: mov var_00000180, eax
00826F81: mov var_00000188, 00000003h
00826F8B: mov eax, var_00000088
00826F91: mov var_00000160, eax
00826F97: mov var_00000168, 00000008h
00826FA1: push var_0000008C
00826FA7: push 00000010h
00826FA9: pop eax
00826FAA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00826FAF: lea esi, var_00000188
00826FB5: mov edi, esp
00826FB7: movsd 
00826FB8: movsd 
00826FB9: movsd 
00826FBA: movsd 
00826FBB: push 00000001h
00826FBD: push 00000010h
00826FBF: push 00440E58h
00826FC4: push 00000010h
00826FC6: pop eax
00826FC7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00826FCC: lea esi, var_00000168
00826FD2: mov edi, esp
00826FD4: movsd 
00826FD5: movsd 
00826FD6: movsd 
00826FD7: movsd 
00826FD8: push 00000001h
00826FDA: push 00000000h
00826FDC: push 00440E48h
00826FE1: push 00000000h
00826FE3: push 00000018h
00826FE5: push var_00000228
00826FEB: lea eax, var_000000B8
00826FF1: push eax
00826FF2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00826FF7: add esp, 00000010h
00826FFA: push eax
00826FFB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00827000: push eax
00827001: lea eax, var_00000094
00827007: push eax
00827008: call 00410A84h ; Set (object)
0082700D: push eax
0082700E: lea eax, var_000000C8
00827014: push eax
00827015: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082701A: add esp, 00000020h
0082701D: push eax
0082701E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00827023: push eax
00827024: lea eax, var_00000098
0082702A: push eax
0082702B: call 00410A84h ; Set (object)
00827030: push eax
00827031: lea eax, var_000000D8
00827037: push eax
00827038: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082703D: add esp, 00000020h
00827040: push eax
00827041: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00827046: mov edx, eax
00827048: lea ecx, var_00000090
0082704E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00827053: push eax
00827054: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00827059: neg eax
0082705B: sbb eax, eax
0082705D: inc eax
0082705E: neg eax
00827060: mov var_00000218, ax
00827067: lea eax, var_00000090
0082706D: push eax
0082706E: lea eax, var_0000008C
00827074: push eax
00827075: push 00000002h
00827077: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0082707C: add esp, 0000000Ch
0082707F: lea eax, var_0000009C
00827085: push eax
00827086: lea eax, var_00000098
0082708C: push eax
0082708D: lea eax, var_00000094
00827093: push eax
00827094: push 00000003h
00827096: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082709B: add esp, 00000010h
0082709E: lea eax, var_000000D8
008270A4: push eax
008270A5: lea eax, var_000000C8
008270AB: push eax
008270AC: lea eax, var_000000B8
008270B2: push eax
008270B3: push 00000003h
008270B5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008270BA: add esp, 00000010h
008270BD: movsx eax, word ptr var_00000218
008270C4: test eax, eax
008270C6: jz 827122h
008270C8: mov var_04, 00000025h
008270CF: lea eax, var_40
008270D2: push eax
008270D3: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008270D8: mov var_00000210, eax
008270DE: cmp var_00000210, 00000012h
008270E5: jnb 8270F0h
008270E7: and var_000003B0, 00000000h
008270EE: jmp 8270FBh
008270F0: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008270F5: mov var_000003B0, eax
008270FB: mov eax, var_00000210
00827101: mov ecx, var_5C
00827104: or word ptr [ecx+eax*2], FFFFh
00827109: mov var_04, 00000026h
00827110: mov ax, var_4C
00827114: add ax, 0001h
00827118: jo 0082E860h
0082711E: mov var_4C, ax
00827122: mov var_04, 00000029h
00827129: mov eax, [ebp+08h]
0082712C: mov eax, [eax]
0082712E: push [ebp+08h]
00827131: call [eax+000003A8h]
00827137: push eax
00827138: lea eax, var_00000094
0082713E: push eax
0082713F: call 00410A84h ; Set (object)
00827144: mov var_00000210, eax
0082714A: lea eax, var_00000098
00827150: push eax
00827151: push 00000001h
00827153: mov eax, var_00000210
00827159: mov eax, [eax]
0082715B: push var_00000210
00827161: call [eax+40h]
00827164: fclex 
00827166: mov var_00000214, eax
0082716C: cmp var_00000214, 00000000h
00827173: jnl 827195h
00827175: push 00000040h
00827177: push 00440DE8h
0082717C: push var_00000210
00827182: push var_00000214
00827188: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082718D: mov var_000003B4, eax
00827193: jmp 82719Ch
00827195: and var_000003B4, 00000000h
0082719C: push 00000000h
0082719E: push 00000000h
008271A0: push var_00000098
008271A6: lea eax, var_000000B8
008271AC: push eax
008271AD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008271B2: add esp, 00000010h
008271B5: push eax
008271B6: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008271BB: sub ax, FFFFh
008271BF: neg ax
008271C2: sbb eax, eax
008271C4: inc eax
008271C5: neg eax
008271C7: mov var_00000218, ax
008271CE: lea eax, var_00000098
008271D4: push eax
008271D5: lea eax, var_00000094
008271DB: push eax
008271DC: push 00000002h
008271DE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008271E3: add esp, 0000000Ch
008271E6: lea ecx, var_000000B8
008271EC: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008271F1: movsx eax, word ptr var_00000218
008271F8: test eax, eax
008271FA: jz 008273F7h
00827200: mov var_04, 0000002Ah
00827207: lea eax, var_40
0082720A: push eax
0082720B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00827210: mov var_00000180, eax
00827216: mov var_00000188, 00000003h
00827220: mov eax, var_00000088
00827226: mov var_00000160, eax
0082722C: mov var_00000168, 00000008h
00827236: push 00000010h
00827238: pop eax
00827239: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082723E: lea esi, var_00000188
00827244: mov edi, esp
00827246: movsd 
00827247: movsd 
00827248: movsd 
00827249: movsd 
0082724A: push 00000001h
0082724C: push 00000010h
0082724E: push 00440E58h
00827253: push 00000010h
00827255: pop eax
00827256: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082725B: lea esi, var_00000168
00827261: mov edi, esp
00827263: movsd 
00827264: movsd 
00827265: movsd 
00827266: movsd 
00827267: push 00000001h
00827269: push 00000000h
0082726B: push 00440E48h
00827270: push 00000000h
00827272: push 00000018h
00827274: push var_00000228
0082727A: lea eax, var_000000B8
00827280: push eax
00827281: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00827286: add esp, 00000010h
00827289: push eax
0082728A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082728F: push eax
00827290: lea eax, var_00000094
00827296: push eax
00827297: call 00410A84h ; Set (object)
0082729C: push eax
0082729D: lea eax, var_000000C8
008272A3: push eax
008272A4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008272A9: add esp, 00000020h
008272AC: push eax
008272AD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008272B2: push eax
008272B3: lea eax, var_00000098
008272B9: push eax
008272BA: call 00410A84h ; Set (object)
008272BF: push eax
008272C0: lea eax, var_000000D8
008272C6: push eax
008272C7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008272CC: add esp, 00000020h
008272CF: push eax
008272D0: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008272D5: mov var_000000F0, eax
008272DB: mov var_000000F8, 00000008h
008272E5: mov eax, [ebp+08h]
008272E8: mov eax, [eax]
008272EA: push [ebp+08h]
008272ED: call [eax+00000334h]
008272F3: mov var_000000E0, eax
008272F9: mov var_000000E8, 00000009h
00827303: and var_000001A0, 00000000h
0082730A: mov var_000001A8, 00008002h
00827314: push 00000001h
00827316: lea eax, var_000000F8
0082731C: push eax
0082731D: lea eax, var_000000E8
00827323: push eax
00827324: push 00000000h
00827326: lea eax, var_00000108
0082732C: push eax
0082732D: call 0041083Eh ; InStr
00827332: push eax
00827333: lea eax, var_000001A8
00827339: push eax
0082733A: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
0082733F: mov var_00000210, ax
00827346: lea eax, var_00000098
0082734C: push eax
0082734D: lea eax, var_00000094
00827353: push eax
00827354: push 00000002h
00827356: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082735B: add esp, 0000000Ch
0082735E: lea eax, var_00000108
00827364: push eax
00827365: lea eax, var_000000F8
0082736B: push eax
0082736C: lea eax, var_000000E8
00827372: push eax
00827373: lea eax, var_000000D8
00827379: push eax
0082737A: lea eax, var_000000C8
00827380: push eax
00827381: lea eax, var_000000B8
00827387: push eax
00827388: push 00000006h
0082738A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082738F: add esp, 0000001Ch
00827392: movsx eax, word ptr var_00000210
00827399: test eax, eax
0082739B: jz 8273F7h
0082739D: mov var_04, 0000002Bh
008273A4: lea eax, var_40
008273A7: push eax
008273A8: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008273AD: mov var_00000210, eax
008273B3: cmp var_00000210, 00000012h
008273BA: jnb 8273C5h
008273BC: and var_000003B8, 00000000h
008273C3: jmp 8273D0h
008273C5: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008273CA: mov var_000003B8, eax
008273D0: mov eax, var_00000210
008273D6: mov ecx, var_5C
008273D9: or word ptr [ecx+eax*2], FFFFh
008273DE: mov var_04, 0000002Ch
008273E5: mov ax, var_4C
008273E9: add ax, 0001h
008273ED: jo 0082E860h
008273F3: mov var_4C, ax
008273F7: jmp 0082DA8Eh
008273FC: mov var_04, 0000002Fh
00827403: mov var_00000160, 00000002h
0082740D: mov var_00000168, 00008002h
00827417: lea eax, var_000002B8
0082741D: push eax
0082741E: lea eax, var_00000168
00827424: push eax
00827425: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
0082742A: movsx eax, ax
0082742D: test eax, eax
0082742F: jz 00827A1Bh
00827435: mov var_04, 00000030h
0082743C: mov eax, [ebp+08h]
0082743F: mov eax, [eax]
00827441: push [ebp+08h]
00827444: call [eax+000003A4h]
0082744A: push eax
0082744B: lea eax, var_00000094
00827451: push eax
00827452: call 00410A84h ; Set (object)
00827457: mov var_00000210, eax
0082745D: lea eax, var_00000098
00827463: push eax
00827464: push 00000000h
00827466: mov eax, var_00000210
0082746C: mov eax, [eax]
0082746E: push var_00000210
00827474: call [eax+40h]
00827477: fclex 
00827479: mov var_00000214, eax
0082747F: cmp var_00000214, 00000000h
00827486: jnl 8274A8h
00827488: push 00000040h
0082748A: push 00440DE8h
0082748F: push var_00000210
00827495: push var_00000214
0082749B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008274A0: mov var_000003BC, eax
008274A6: jmp 8274AFh
008274A8: and var_000003BC, 00000000h
008274AF: push 00000000h
008274B1: push 00000000h
008274B3: push var_00000098
008274B9: lea eax, var_000000B8
008274BF: push eax
008274C0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008274C5: add esp, 00000010h
008274C8: push eax
008274C9: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008274CE: sub ax, FFFFh
008274D2: neg ax
008274D5: sbb eax, eax
008274D7: inc eax
008274D8: neg eax
008274DA: mov var_00000218, ax
008274E1: lea eax, var_00000098
008274E7: push eax
008274E8: lea eax, var_00000094
008274EE: push eax
008274EF: push 00000002h
008274F1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008274F6: add esp, 0000000Ch
008274F9: lea ecx, var_000000B8
008274FF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00827504: movsx eax, word ptr var_00000218
0082750B: test eax, eax
0082750D: jz 00827741h
00827513: mov var_04, 00000031h
0082751A: mov eax, [ebp+08h]
0082751D: mov eax, [eax]
0082751F: push [ebp+08h]
00827522: call [eax+0000032Ch]
00827528: push eax
00827529: lea eax, var_0000009C
0082752F: push eax
00827530: call 00410A84h ; Set (object)
00827535: mov var_00000210, eax
0082753B: lea eax, var_0000008C
00827541: push eax
00827542: mov eax, var_00000210
00827548: mov eax, [eax]
0082754A: push var_00000210
00827550: call [eax+000000A0h]
00827556: fclex 
00827558: mov var_00000214, eax
0082755E: cmp var_00000214, 00000000h
00827565: jnl 82758Ah
00827567: push 000000A0h
0082756C: push 00440E08h
00827571: push var_00000210
00827577: push var_00000214
0082757D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00827582: mov var_000003C0, eax
00827588: jmp 827591h
0082758A: and var_000003C0, 00000000h
00827591: lea eax, var_40
00827594: push eax
00827595: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082759A: mov var_00000180, eax
008275A0: mov var_00000188, 00000003h
008275AA: mov eax, var_00000088
008275B0: mov var_00000160, eax
008275B6: mov var_00000168, 00000008h
008275C0: push var_0000008C
008275C6: push 00000010h
008275C8: pop eax
008275C9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008275CE: lea esi, var_00000188
008275D4: mov edi, esp
008275D6: movsd 
008275D7: movsd 
008275D8: movsd 
008275D9: movsd 
008275DA: push 00000001h
008275DC: push 00000010h
008275DE: push 00440E58h
008275E3: push 00000010h
008275E5: pop eax
008275E6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008275EB: lea esi, var_00000168
008275F1: mov edi, esp
008275F3: movsd 
008275F4: movsd 
008275F5: movsd 
008275F6: movsd 
008275F7: push 00000001h
008275F9: push 00000000h
008275FB: push 00440E48h
00827600: push 00000000h
00827602: push 00000018h
00827604: push var_00000228
0082760A: lea eax, var_000000B8
00827610: push eax
00827611: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00827616: add esp, 00000010h
00827619: push eax
0082761A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082761F: push eax
00827620: lea eax, var_00000094
00827626: push eax
00827627: call 00410A84h ; Set (object)
0082762C: push eax
0082762D: lea eax, var_000000C8
00827633: push eax
00827634: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00827639: add esp, 00000020h
0082763C: push eax
0082763D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00827642: push eax
00827643: lea eax, var_00000098
00827649: push eax
0082764A: call 00410A84h ; Set (object)
0082764F: push eax
00827650: lea eax, var_000000D8
00827656: push eax
00827657: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082765C: add esp, 00000020h
0082765F: push eax
00827660: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00827665: mov edx, eax
00827667: lea ecx, var_00000090
0082766D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00827672: push eax
00827673: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00827678: neg eax
0082767A: sbb eax, eax
0082767C: inc eax
0082767D: neg eax
0082767F: mov var_00000218, ax
00827686: lea eax, var_00000090
0082768C: push eax
0082768D: lea eax, var_0000008C
00827693: push eax
00827694: push 00000002h
00827696: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0082769B: add esp, 0000000Ch
0082769E: lea eax, var_0000009C
008276A4: push eax
008276A5: lea eax, var_00000098
008276AB: push eax
008276AC: lea eax, var_00000094
008276B2: push eax
008276B3: push 00000003h
008276B5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008276BA: add esp, 00000010h
008276BD: lea eax, var_000000D8
008276C3: push eax
008276C4: lea eax, var_000000C8
008276CA: push eax
008276CB: lea eax, var_000000B8
008276D1: push eax
008276D2: push 00000003h
008276D4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008276D9: add esp, 00000010h
008276DC: movsx eax, word ptr var_00000218
008276E3: test eax, eax
008276E5: jz 827741h
008276E7: mov var_04, 00000032h
008276EE: lea eax, var_40
008276F1: push eax
008276F2: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008276F7: mov var_00000210, eax
008276FD: cmp var_00000210, 00000012h
00827704: jnb 82770Fh
00827706: and var_000003C4, 00000000h
0082770D: jmp 82771Ah
0082770F: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
00827714: mov var_000003C4, eax
0082771A: mov eax, var_00000210
00827720: mov ecx, var_5C
00827723: or word ptr [ecx+eax*2], FFFFh
00827728: mov var_04, 00000033h
0082772F: mov ax, var_4C
00827733: add ax, 0001h
00827737: jo 0082E860h
0082773D: mov var_4C, ax
00827741: mov var_04, 00000036h
00827748: mov eax, [ebp+08h]
0082774B: mov eax, [eax]
0082774D: push [ebp+08h]
00827750: call [eax+000003A4h]
00827756: push eax
00827757: lea eax, var_00000094
0082775D: push eax
0082775E: call 00410A84h ; Set (object)
00827763: mov var_00000210, eax
00827769: lea eax, var_00000098
0082776F: push eax
00827770: push 00000001h
00827772: mov eax, var_00000210
00827778: mov eax, [eax]
0082777A: push var_00000210
00827780: call [eax+40h]
00827783: fclex 
00827785: mov var_00000214, eax
0082778B: cmp var_00000214, 00000000h
00827792: jnl 8277B4h
00827794: push 00000040h
00827796: push 00440DE8h
0082779B: push var_00000210
008277A1: push var_00000214
008277A7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008277AC: mov var_000003C8, eax
008277B2: jmp 8277BBh
008277B4: and var_000003C8, 00000000h
008277BB: push 00000000h
008277BD: push 00000000h
008277BF: push var_00000098
008277C5: lea eax, var_000000B8
008277CB: push eax
008277CC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008277D1: add esp, 00000010h
008277D4: push eax
008277D5: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008277DA: sub ax, FFFFh
008277DE: neg ax
008277E1: sbb eax, eax
008277E3: inc eax
008277E4: neg eax
008277E6: mov var_00000218, ax
008277ED: lea eax, var_00000098
008277F3: push eax
008277F4: lea eax, var_00000094
008277FA: push eax
008277FB: push 00000002h
008277FD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00827802: add esp, 0000000Ch
00827805: lea ecx, var_000000B8
0082780B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00827810: movsx eax, word ptr var_00000218
00827817: test eax, eax
00827819: jz 00827A16h
0082781F: mov var_04, 00000037h
00827826: lea eax, var_40
00827829: push eax
0082782A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082782F: mov var_00000180, eax
00827835: mov var_00000188, 00000003h
0082783F: mov eax, var_00000088
00827845: mov var_00000160, eax
0082784B: mov var_00000168, 00000008h
00827855: push 00000010h
00827857: pop eax
00827858: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082785D: lea esi, var_00000188
00827863: mov edi, esp
00827865: movsd 
00827866: movsd 
00827867: movsd 
00827868: movsd 
00827869: push 00000001h
0082786B: push 00000010h
0082786D: push 00440E58h
00827872: push 00000010h
00827874: pop eax
00827875: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082787A: lea esi, var_00000168
00827880: mov edi, esp
00827882: movsd 
00827883: movsd 
00827884: movsd 
00827885: movsd 
00827886: push 00000001h
00827888: push 00000000h
0082788A: push 00440E48h
0082788F: push 00000000h
00827891: push 00000018h
00827893: push var_00000228
00827899: lea eax, var_000000B8
0082789F: push eax
008278A0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008278A5: add esp, 00000010h
008278A8: push eax
008278A9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008278AE: push eax
008278AF: lea eax, var_00000094
008278B5: push eax
008278B6: call 00410A84h ; Set (object)
008278BB: push eax
008278BC: lea eax, var_000000C8
008278C2: push eax
008278C3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008278C8: add esp, 00000020h
008278CB: push eax
008278CC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008278D1: push eax
008278D2: lea eax, var_00000098
008278D8: push eax
008278D9: call 00410A84h ; Set (object)
008278DE: push eax
008278DF: lea eax, var_000000D8
008278E5: push eax
008278E6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008278EB: add esp, 00000020h
008278EE: push eax
008278EF: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008278F4: mov var_000000F0, eax
008278FA: mov var_000000F8, 00000008h
00827904: mov eax, [ebp+08h]
00827907: mov eax, [eax]
00827909: push [ebp+08h]
0082790C: call [eax+0000032Ch]
00827912: mov var_000000E0, eax
00827918: mov var_000000E8, 00000009h
00827922: and var_000001A0, 00000000h
00827929: mov var_000001A8, 00008002h
00827933: push 00000001h
00827935: lea eax, var_000000F8
0082793B: push eax
0082793C: lea eax, var_000000E8
00827942: push eax
00827943: push 00000000h
00827945: lea eax, var_00000108
0082794B: push eax
0082794C: call 0041083Eh ; InStr
00827951: push eax
00827952: lea eax, var_000001A8
00827958: push eax
00827959: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
0082795E: mov var_00000210, ax
00827965: lea eax, var_00000098
0082796B: push eax
0082796C: lea eax, var_00000094
00827972: push eax
00827973: push 00000002h
00827975: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082797A: add esp, 0000000Ch
0082797D: lea eax, var_00000108
00827983: push eax
00827984: lea eax, var_000000F8
0082798A: push eax
0082798B: lea eax, var_000000E8
00827991: push eax
00827992: lea eax, var_000000D8
00827998: push eax
00827999: lea eax, var_000000C8
0082799F: push eax
008279A0: lea eax, var_000000B8
008279A6: push eax
008279A7: push 00000006h
008279A9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008279AE: add esp, 0000001Ch
008279B1: movsx eax, word ptr var_00000210
008279B8: test eax, eax
008279BA: jz 827A16h
008279BC: mov var_04, 00000038h
008279C3: lea eax, var_40
008279C6: push eax
008279C7: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008279CC: mov var_00000210, eax
008279D2: cmp var_00000210, 00000012h
008279D9: jnb 8279E4h
008279DB: and var_000003CC, 00000000h
008279E2: jmp 8279EFh
008279E4: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008279E9: mov var_000003CC, eax
008279EF: mov eax, var_00000210
008279F5: mov ecx, var_5C
008279F8: or word ptr [ecx+eax*2], FFFFh
008279FD: mov var_04, 00000039h
00827A04: mov ax, var_4C
00827A08: add ax, 0001h
00827A0C: jo 0082E860h
00827A12: mov var_4C, ax
00827A16: jmp 0082DA8Eh
00827A1B: mov var_04, 0000003Ch
00827A22: mov var_00000160, 00000003h
00827A2C: mov var_00000168, 00008002h
00827A36: lea eax, var_000002B8
00827A3C: push eax
00827A3D: lea eax, var_00000168
00827A43: push eax
00827A44: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
00827A49: movsx eax, ax
00827A4C: test eax, eax
00827A4E: jz 0082803Ah
00827A54: mov var_04, 0000003Dh
00827A5B: mov eax, [ebp+08h]
00827A5E: mov eax, [eax]
00827A60: push [ebp+08h]
00827A63: call [eax+000003A0h]
00827A69: push eax
00827A6A: lea eax, var_00000094
00827A70: push eax
00827A71: call 00410A84h ; Set (object)
00827A76: mov var_00000210, eax
00827A7C: lea eax, var_00000098
00827A82: push eax
00827A83: push 00000000h
00827A85: mov eax, var_00000210
00827A8B: mov eax, [eax]
00827A8D: push var_00000210
00827A93: call [eax+40h]
00827A96: fclex 
00827A98: mov var_00000214, eax
00827A9E: cmp var_00000214, 00000000h
00827AA5: jnl 827AC7h
00827AA7: push 00000040h
00827AA9: push 00440DE8h
00827AAE: push var_00000210
00827AB4: push var_00000214
00827ABA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00827ABF: mov var_000003D0, eax
00827AC5: jmp 827ACEh
00827AC7: and var_000003D0, 00000000h
00827ACE: push 00000000h
00827AD0: push 00000000h
00827AD2: push var_00000098
00827AD8: lea eax, var_000000B8
00827ADE: push eax
00827ADF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00827AE4: add esp, 00000010h
00827AE7: push eax
00827AE8: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00827AED: sub ax, FFFFh
00827AF1: neg ax
00827AF4: sbb eax, eax
00827AF6: inc eax
00827AF7: neg eax
00827AF9: mov var_00000218, ax
00827B00: lea eax, var_00000098
00827B06: push eax
00827B07: lea eax, var_00000094
00827B0D: push eax
00827B0E: push 00000002h
00827B10: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00827B15: add esp, 0000000Ch
00827B18: lea ecx, var_000000B8
00827B1E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00827B23: movsx eax, word ptr var_00000218
00827B2A: test eax, eax
00827B2C: jz 00827D60h
00827B32: mov var_04, 0000003Eh
00827B39: mov eax, [ebp+08h]
00827B3C: mov eax, [eax]
00827B3E: push [ebp+08h]
00827B41: call [eax+00000330h]
00827B47: push eax
00827B48: lea eax, var_0000009C
00827B4E: push eax
00827B4F: call 00410A84h ; Set (object)
00827B54: mov var_00000210, eax
00827B5A: lea eax, var_0000008C
00827B60: push eax
00827B61: mov eax, var_00000210
00827B67: mov eax, [eax]
00827B69: push var_00000210
00827B6F: call [eax+000000A0h]
00827B75: fclex 
00827B77: mov var_00000214, eax
00827B7D: cmp var_00000214, 00000000h
00827B84: jnl 827BA9h
00827B86: push 000000A0h
00827B8B: push 00440E08h
00827B90: push var_00000210
00827B96: push var_00000214
00827B9C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00827BA1: mov var_000003D4, eax
00827BA7: jmp 827BB0h
00827BA9: and var_000003D4, 00000000h
00827BB0: lea eax, var_40
00827BB3: push eax
00827BB4: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00827BB9: mov var_00000180, eax
00827BBF: mov var_00000188, 00000003h
00827BC9: mov eax, var_00000088
00827BCF: mov var_00000160, eax
00827BD5: mov var_00000168, 00000008h
00827BDF: push var_0000008C
00827BE5: push 00000010h
00827BE7: pop eax
00827BE8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00827BED: lea esi, var_00000188
00827BF3: mov edi, esp
00827BF5: movsd 
00827BF6: movsd 
00827BF7: movsd 
00827BF8: movsd 
00827BF9: push 00000001h
00827BFB: push 00000010h
00827BFD: push 00440E58h
00827C02: push 00000010h
00827C04: pop eax
00827C05: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00827C0A: lea esi, var_00000168
00827C10: mov edi, esp
00827C12: movsd 
00827C13: movsd 
00827C14: movsd 
00827C15: movsd 
00827C16: push 00000001h
00827C18: push 00000000h
00827C1A: push 00440E48h
00827C1F: push 00000000h
00827C21: push 00000018h
00827C23: push var_00000228
00827C29: lea eax, var_000000B8
00827C2F: push eax
00827C30: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00827C35: add esp, 00000010h
00827C38: push eax
00827C39: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00827C3E: push eax
00827C3F: lea eax, var_00000094
00827C45: push eax
00827C46: call 00410A84h ; Set (object)
00827C4B: push eax
00827C4C: lea eax, var_000000C8
00827C52: push eax
00827C53: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00827C58: add esp, 00000020h
00827C5B: push eax
00827C5C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00827C61: push eax
00827C62: lea eax, var_00000098
00827C68: push eax
00827C69: call 00410A84h ; Set (object)
00827C6E: push eax
00827C6F: lea eax, var_000000D8
00827C75: push eax
00827C76: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00827C7B: add esp, 00000020h
00827C7E: push eax
00827C7F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00827C84: mov edx, eax
00827C86: lea ecx, var_00000090
00827C8C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00827C91: push eax
00827C92: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00827C97: neg eax
00827C99: sbb eax, eax
00827C9B: inc eax
00827C9C: neg eax
00827C9E: mov var_00000218, ax
00827CA5: lea eax, var_00000090
00827CAB: push eax
00827CAC: lea eax, var_0000008C
00827CB2: push eax
00827CB3: push 00000002h
00827CB5: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00827CBA: add esp, 0000000Ch
00827CBD: lea eax, var_0000009C
00827CC3: push eax
00827CC4: lea eax, var_00000098
00827CCA: push eax
00827CCB: lea eax, var_00000094
00827CD1: push eax
00827CD2: push 00000003h
00827CD4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00827CD9: add esp, 00000010h
00827CDC: lea eax, var_000000D8
00827CE2: push eax
00827CE3: lea eax, var_000000C8
00827CE9: push eax
00827CEA: lea eax, var_000000B8
00827CF0: push eax
00827CF1: push 00000003h
00827CF3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00827CF8: add esp, 00000010h
00827CFB: movsx eax, word ptr var_00000218
00827D02: test eax, eax
00827D04: jz 827D60h
00827D06: mov var_04, 0000003Fh
00827D0D: lea eax, var_40
00827D10: push eax
00827D11: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00827D16: mov var_00000210, eax
00827D1C: cmp var_00000210, 00000012h
00827D23: jnb 827D2Eh
00827D25: and var_000003D8, 00000000h
00827D2C: jmp 827D39h
00827D2E: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
00827D33: mov var_000003D8, eax
00827D39: mov eax, var_00000210
00827D3F: mov ecx, var_5C
00827D42: or word ptr [ecx+eax*2], FFFFh
00827D47: mov var_04, 00000040h
00827D4E: mov ax, var_4C
00827D52: add ax, 0001h
00827D56: jo 0082E860h
00827D5C: mov var_4C, ax
00827D60: mov var_04, 00000043h
00827D67: mov eax, [ebp+08h]
00827D6A: mov eax, [eax]
00827D6C: push [ebp+08h]
00827D6F: call [eax+000003A0h]
00827D75: push eax
00827D76: lea eax, var_00000094
00827D7C: push eax
00827D7D: call 00410A84h ; Set (object)
00827D82: mov var_00000210, eax
00827D88: lea eax, var_00000098
00827D8E: push eax
00827D8F: push 00000001h
00827D91: mov eax, var_00000210
00827D97: mov eax, [eax]
00827D99: push var_00000210
00827D9F: call [eax+40h]
00827DA2: fclex 
00827DA4: mov var_00000214, eax
00827DAA: cmp var_00000214, 00000000h
00827DB1: jnl 827DD3h
00827DB3: push 00000040h
00827DB5: push 00440DE8h
00827DBA: push var_00000210
00827DC0: push var_00000214
00827DC6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00827DCB: mov var_000003DC, eax
00827DD1: jmp 827DDAh
00827DD3: and var_000003DC, 00000000h
00827DDA: push 00000000h
00827DDC: push 00000000h
00827DDE: push var_00000098
00827DE4: lea eax, var_000000B8
00827DEA: push eax
00827DEB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00827DF0: add esp, 00000010h
00827DF3: push eax
00827DF4: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00827DF9: sub ax, FFFFh
00827DFD: neg ax
00827E00: sbb eax, eax
00827E02: inc eax
00827E03: neg eax
00827E05: mov var_00000218, ax
00827E0C: lea eax, var_00000098
00827E12: push eax
00827E13: lea eax, var_00000094
00827E19: push eax
00827E1A: push 00000002h
00827E1C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00827E21: add esp, 0000000Ch
00827E24: lea ecx, var_000000B8
00827E2A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00827E2F: movsx eax, word ptr var_00000218
00827E36: test eax, eax
00827E38: jz 00828035h
00827E3E: mov var_04, 00000044h
00827E45: lea eax, var_40
00827E48: push eax
00827E49: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00827E4E: mov var_00000180, eax
00827E54: mov var_00000188, 00000003h
00827E5E: mov eax, var_00000088
00827E64: mov var_00000160, eax
00827E6A: mov var_00000168, 00000008h
00827E74: push 00000010h
00827E76: pop eax
00827E77: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00827E7C: lea esi, var_00000188
00827E82: mov edi, esp
00827E84: movsd 
00827E85: movsd 
00827E86: movsd 
00827E87: movsd 
00827E88: push 00000001h
00827E8A: push 00000010h
00827E8C: push 00440E58h
00827E91: push 00000010h
00827E93: pop eax
00827E94: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00827E99: lea esi, var_00000168
00827E9F: mov edi, esp
00827EA1: movsd 
00827EA2: movsd 
00827EA3: movsd 
00827EA4: movsd 
00827EA5: push 00000001h
00827EA7: push 00000000h
00827EA9: push 00440E48h
00827EAE: push 00000000h
00827EB0: push 00000018h
00827EB2: push var_00000228
00827EB8: lea eax, var_000000B8
00827EBE: push eax
00827EBF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00827EC4: add esp, 00000010h
00827EC7: push eax
00827EC8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00827ECD: push eax
00827ECE: lea eax, var_00000094
00827ED4: push eax
00827ED5: call 00410A84h ; Set (object)
00827EDA: push eax
00827EDB: lea eax, var_000000C8
00827EE1: push eax
00827EE2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00827EE7: add esp, 00000020h
00827EEA: push eax
00827EEB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00827EF0: push eax
00827EF1: lea eax, var_00000098
00827EF7: push eax
00827EF8: call 00410A84h ; Set (object)
00827EFD: push eax
00827EFE: lea eax, var_000000D8
00827F04: push eax
00827F05: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00827F0A: add esp, 00000020h
00827F0D: push eax
00827F0E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00827F13: mov var_000000F0, eax
00827F19: mov var_000000F8, 00000008h
00827F23: mov eax, [ebp+08h]
00827F26: mov eax, [eax]
00827F28: push [ebp+08h]
00827F2B: call [eax+00000330h]
00827F31: mov var_000000E0, eax
00827F37: mov var_000000E8, 00000009h
00827F41: and var_000001A0, 00000000h
00827F48: mov var_000001A8, 00008002h
00827F52: push 00000001h
00827F54: lea eax, var_000000F8
00827F5A: push eax
00827F5B: lea eax, var_000000E8
00827F61: push eax
00827F62: push 00000000h
00827F64: lea eax, var_00000108
00827F6A: push eax
00827F6B: call 0041083Eh ; InStr
00827F70: push eax
00827F71: lea eax, var_000001A8
00827F77: push eax
00827F78: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
00827F7D: mov var_00000210, ax
00827F84: lea eax, var_00000098
00827F8A: push eax
00827F8B: lea eax, var_00000094
00827F91: push eax
00827F92: push 00000002h
00827F94: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00827F99: add esp, 0000000Ch
00827F9C: lea eax, var_00000108
00827FA2: push eax
00827FA3: lea eax, var_000000F8
00827FA9: push eax
00827FAA: lea eax, var_000000E8
00827FB0: push eax
00827FB1: lea eax, var_000000D8
00827FB7: push eax
00827FB8: lea eax, var_000000C8
00827FBE: push eax
00827FBF: lea eax, var_000000B8
00827FC5: push eax
00827FC6: push 00000006h
00827FC8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00827FCD: add esp, 0000001Ch
00827FD0: movsx eax, word ptr var_00000210
00827FD7: test eax, eax
00827FD9: jz 828035h
00827FDB: mov var_04, 00000045h
00827FE2: lea eax, var_40
00827FE5: push eax
00827FE6: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00827FEB: mov var_00000210, eax
00827FF1: cmp var_00000210, 00000012h
00827FF8: jnb 828003h
00827FFA: and var_000003E0, 00000000h
00828001: jmp 82800Eh
00828003: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
00828008: mov var_000003E0, eax
0082800E: mov eax, var_00000210
00828014: mov ecx, var_5C
00828017: or word ptr [ecx+eax*2], FFFFh
0082801C: mov var_04, 00000046h
00828023: mov ax, var_4C
00828027: add ax, 0001h
0082802B: jo 0082E860h
00828031: mov var_4C, ax
00828035: jmp 0082DA8Eh
0082803A: mov var_04, 00000049h
00828041: mov var_00000160, 00000004h
0082804B: mov var_00000168, 00008002h
00828055: lea eax, var_000002B8
0082805B: push eax
0082805C: lea eax, var_00000168
00828062: push eax
00828063: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
00828068: movsx eax, ax
0082806B: test eax, eax
0082806D: jz 008282FAh
00828073: mov var_04, 0000004Ah
0082807A: mov eax, [ebp+08h]
0082807D: mov eax, [eax]
0082807F: push [ebp+08h]
00828082: call [eax+00000370h]
00828088: push eax
00828089: lea eax, var_00000094
0082808F: push eax
00828090: call 00410A84h ; Set (object)
00828095: mov var_00000210, eax
0082809B: lea eax, var_00000098
008280A1: push eax
008280A2: lea eax, var_40
008280A5: push eax
008280A6: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008280AB: push eax
008280AC: mov eax, var_00000210
008280B2: mov eax, [eax]
008280B4: push var_00000210
008280BA: call [eax+40h]
008280BD: fclex 
008280BF: mov var_00000214, eax
008280C5: cmp var_00000214, 00000000h
008280CC: jnl 8280EEh
008280CE: push 00000040h
008280D0: push 00440DE8h
008280D5: push var_00000210
008280DB: push var_00000214
008280E1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008280E6: mov var_000003E4, eax
008280EC: jmp 8280F5h
008280EE: and var_000003E4, 00000000h
008280F5: push 00000000h
008280F7: push 00000000h
008280F9: push var_00000098
008280FF: lea eax, var_000000B8
00828105: push eax
00828106: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082810B: add esp, 00000010h
0082810E: push eax
0082810F: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00828114: dec eax
00828115: neg eax
00828117: sbb eax, eax
00828119: inc eax
0082811A: neg eax
0082811C: mov var_00000218, ax
00828123: lea eax, var_00000098
00828129: push eax
0082812A: lea eax, var_00000094
00828130: push eax
00828131: push 00000002h
00828133: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00828138: add esp, 0000000Ch
0082813B: lea ecx, var_000000B8
00828141: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00828146: movsx eax, word ptr var_00000218
0082814D: test eax, eax
0082814F: jz 008282F5h
00828155: mov var_04, 0000004Bh
0082815C: lea eax, var_40
0082815F: push eax
00828160: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00828165: mov var_00000180, eax
0082816B: mov var_00000188, 00000003h
00828175: mov eax, var_00000088
0082817B: mov var_00000160, eax
00828181: mov var_00000168, 00000008h
0082818B: push 00000010h
0082818D: pop eax
0082818E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00828193: lea esi, var_00000188
00828199: mov edi, esp
0082819B: movsd 
0082819C: movsd 
0082819D: movsd 
0082819E: movsd 
0082819F: push 00000001h
008281A1: push 00000010h
008281A3: push 00440E58h
008281A8: push 00000010h
008281AA: pop eax
008281AB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008281B0: lea esi, var_00000168
008281B6: mov edi, esp
008281B8: movsd 
008281B9: movsd 
008281BA: movsd 
008281BB: movsd 
008281BC: push 00000001h
008281BE: push 00000000h
008281C0: push 00440E48h
008281C5: push 00000000h
008281C7: push 00000018h
008281C9: push var_00000228
008281CF: lea eax, var_000000B8
008281D5: push eax
008281D6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008281DB: add esp, 00000010h
008281DE: push eax
008281DF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008281E4: push eax
008281E5: lea eax, var_00000094
008281EB: push eax
008281EC: call 00410A84h ; Set (object)
008281F1: push eax
008281F2: lea eax, var_000000C8
008281F8: push eax
008281F9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008281FE: add esp, 00000020h
00828201: push eax
00828202: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00828207: push eax
00828208: lea eax, var_00000098
0082820E: push eax
0082820F: call 00410A84h ; Set (object)
00828214: push eax
00828215: lea eax, var_000000D8
0082821B: push eax
0082821C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00828221: add esp, 00000020h
00828224: push eax
00828225: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082822A: mov edx, eax
0082822C: lea ecx, var_0000008C
00828232: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00828237: push eax
00828238: push 00000000h
0082823A: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0082823F: neg eax
00828241: sbb eax, eax
00828243: neg eax
00828245: neg eax
00828247: mov var_00000210, ax
0082824E: lea ecx, var_0000008C
00828254: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00828259: lea eax, var_00000098
0082825F: push eax
00828260: lea eax, var_00000094
00828266: push eax
00828267: push 00000002h
00828269: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082826E: add esp, 0000000Ch
00828271: lea eax, var_000000D8
00828277: push eax
00828278: lea eax, var_000000C8
0082827E: push eax
0082827F: lea eax, var_000000B8
00828285: push eax
00828286: push 00000003h
00828288: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082828D: add esp, 00000010h
00828290: movsx eax, word ptr var_00000210
00828297: test eax, eax
00828299: jz 8282F5h
0082829B: mov var_04, 0000004Ch
008282A2: lea eax, var_40
008282A5: push eax
008282A6: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008282AB: mov var_00000210, eax
008282B1: cmp var_00000210, 00000012h
008282B8: jnb 8282C3h
008282BA: and var_000003E8, 00000000h
008282C1: jmp 8282CEh
008282C3: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008282C8: mov var_000003E8, eax
008282CE: mov eax, var_00000210
008282D4: mov ecx, var_5C
008282D7: or word ptr [ecx+eax*2], FFFFh
008282DC: mov var_04, 0000004Dh
008282E3: mov ax, var_4C
008282E7: add ax, 0001h
008282EB: jo 0082E860h
008282F1: mov var_4C, ax
008282F5: jmp 0082DA8Eh
008282FA: mov var_04, 00000050h
00828301: mov var_00000160, 00000005h
0082830B: mov var_00000168, 00008002h
00828315: lea eax, var_000002B8
0082831B: push eax
0082831C: lea eax, var_00000168
00828322: push eax
00828323: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
00828328: movsx eax, ax
0082832B: test eax, eax
0082832D: jz 008285BAh
00828333: mov var_04, 00000051h
0082833A: mov eax, [ebp+08h]
0082833D: mov eax, [eax]
0082833F: push [ebp+08h]
00828342: call [eax+00000370h]
00828348: push eax
00828349: lea eax, var_00000094
0082834F: push eax
00828350: call 00410A84h ; Set (object)
00828355: mov var_00000210, eax
0082835B: lea eax, var_00000098
00828361: push eax
00828362: lea eax, var_40
00828365: push eax
00828366: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0082836B: push eax
0082836C: mov eax, var_00000210
00828372: mov eax, [eax]
00828374: push var_00000210
0082837A: call [eax+40h]
0082837D: fclex 
0082837F: mov var_00000214, eax
00828385: cmp var_00000214, 00000000h
0082838C: jnl 8283AEh
0082838E: push 00000040h
00828390: push 00440DE8h
00828395: push var_00000210
0082839B: push var_00000214
008283A1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008283A6: mov var_000003EC, eax
008283AC: jmp 8283B5h
008283AE: and var_000003EC, 00000000h
008283B5: push 00000000h
008283B7: push 00000000h
008283B9: push var_00000098
008283BF: lea eax, var_000000B8
008283C5: push eax
008283C6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008283CB: add esp, 00000010h
008283CE: push eax
008283CF: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008283D4: dec eax
008283D5: neg eax
008283D7: sbb eax, eax
008283D9: inc eax
008283DA: neg eax
008283DC: mov var_00000218, ax
008283E3: lea eax, var_00000098
008283E9: push eax
008283EA: lea eax, var_00000094
008283F0: push eax
008283F1: push 00000002h
008283F3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008283F8: add esp, 0000000Ch
008283FB: lea ecx, var_000000B8
00828401: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00828406: movsx eax, word ptr var_00000218
0082840D: test eax, eax
0082840F: jz 008285B5h
00828415: mov var_04, 00000052h
0082841C: lea eax, var_40
0082841F: push eax
00828420: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00828425: mov var_00000180, eax
0082842B: mov var_00000188, 00000003h
00828435: mov eax, var_00000088
0082843B: mov var_00000160, eax
00828441: mov var_00000168, 00000008h
0082844B: push 00000010h
0082844D: pop eax
0082844E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00828453: lea esi, var_00000188
00828459: mov edi, esp
0082845B: movsd 
0082845C: movsd 
0082845D: movsd 
0082845E: movsd 
0082845F: push 00000001h
00828461: push 00000010h
00828463: push 00440E58h
00828468: push 00000010h
0082846A: pop eax
0082846B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00828470: lea esi, var_00000168
00828476: mov edi, esp
00828478: movsd 
00828479: movsd 
0082847A: movsd 
0082847B: movsd 
0082847C: push 00000001h
0082847E: push 00000000h
00828480: push 00440E48h
00828485: push 00000000h
00828487: push 00000018h
00828489: push var_00000228
0082848F: lea eax, var_000000B8
00828495: push eax
00828496: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082849B: add esp, 00000010h
0082849E: push eax
0082849F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008284A4: push eax
008284A5: lea eax, var_00000094
008284AB: push eax
008284AC: call 00410A84h ; Set (object)
008284B1: push eax
008284B2: lea eax, var_000000C8
008284B8: push eax
008284B9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008284BE: add esp, 00000020h
008284C1: push eax
008284C2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008284C7: push eax
008284C8: lea eax, var_00000098
008284CE: push eax
008284CF: call 00410A84h ; Set (object)
008284D4: push eax
008284D5: lea eax, var_000000D8
008284DB: push eax
008284DC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008284E1: add esp, 00000020h
008284E4: push eax
008284E5: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008284EA: mov edx, eax
008284EC: lea ecx, var_0000008C
008284F2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008284F7: push eax
008284F8: push 00000000h
008284FA: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008284FF: neg eax
00828501: sbb eax, eax
00828503: neg eax
00828505: neg eax
00828507: mov var_00000210, ax
0082850E: lea ecx, var_0000008C
00828514: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00828519: lea eax, var_00000098
0082851F: push eax
00828520: lea eax, var_00000094
00828526: push eax
00828527: push 00000002h
00828529: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082852E: add esp, 0000000Ch
00828531: lea eax, var_000000D8
00828537: push eax
00828538: lea eax, var_000000C8
0082853E: push eax
0082853F: lea eax, var_000000B8
00828545: push eax
00828546: push 00000003h
00828548: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082854D: add esp, 00000010h
00828550: movsx eax, word ptr var_00000210
00828557: test eax, eax
00828559: jz 8285B5h
0082855B: mov var_04, 00000053h
00828562: lea eax, var_40
00828565: push eax
00828566: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082856B: mov var_00000210, eax
00828571: cmp var_00000210, 00000012h
00828578: jnb 828583h
0082857A: and var_000003F0, 00000000h
00828581: jmp 82858Eh
00828583: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
00828588: mov var_000003F0, eax
0082858E: mov eax, var_00000210
00828594: mov ecx, var_5C
00828597: or word ptr [ecx+eax*2], FFFFh
0082859C: mov var_04, 00000054h
008285A3: mov ax, var_4C
008285A7: add ax, 0001h
008285AB: jo 0082E860h
008285B1: mov var_4C, ax
008285B5: jmp 0082DA8Eh
008285BA: mov var_04, 00000057h
008285C1: mov var_00000160, 00000006h
008285CB: mov var_00000168, 00008002h
008285D5: lea eax, var_000002B8
008285DB: push eax
008285DC: lea eax, var_00000168
008285E2: push eax
008285E3: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
008285E8: movsx eax, ax
008285EB: test eax, eax
008285ED: jz 00828BD9h
008285F3: mov var_04, 00000058h
008285FA: mov eax, [ebp+08h]
008285FD: mov eax, [eax]
008285FF: push [ebp+08h]
00828602: call [eax+0000039Ch]
00828608: push eax
00828609: lea eax, var_00000094
0082860F: push eax
00828610: call 00410A84h ; Set (object)
00828615: mov var_00000210, eax
0082861B: lea eax, var_00000098
00828621: push eax
00828622: push 00000000h
00828624: mov eax, var_00000210
0082862A: mov eax, [eax]
0082862C: push var_00000210
00828632: call [eax+40h]
00828635: fclex 
00828637: mov var_00000214, eax
0082863D: cmp var_00000214, 00000000h
00828644: jnl 828666h
00828646: push 00000040h
00828648: push 00440DE8h
0082864D: push var_00000210
00828653: push var_00000214
00828659: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082865E: mov var_000003F4, eax
00828664: jmp 82866Dh
00828666: and var_000003F4, 00000000h
0082866D: push 00000000h
0082866F: push 00000000h
00828671: push var_00000098
00828677: lea eax, var_000000B8
0082867D: push eax
0082867E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00828683: add esp, 00000010h
00828686: push eax
00828687: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082868C: sub ax, FFFFh
00828690: neg ax
00828693: sbb eax, eax
00828695: inc eax
00828696: neg eax
00828698: mov var_00000218, ax
0082869F: lea eax, var_00000098
008286A5: push eax
008286A6: lea eax, var_00000094
008286AC: push eax
008286AD: push 00000002h
008286AF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008286B4: add esp, 0000000Ch
008286B7: lea ecx, var_000000B8
008286BD: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008286C2: movsx eax, word ptr var_00000218
008286C9: test eax, eax
008286CB: jz 008288FFh
008286D1: mov var_04, 00000059h
008286D8: mov eax, [ebp+08h]
008286DB: mov eax, [eax]
008286DD: push [ebp+08h]
008286E0: call [eax+00000328h]
008286E6: push eax
008286E7: lea eax, var_0000009C
008286ED: push eax
008286EE: call 00410A84h ; Set (object)
008286F3: mov var_00000210, eax
008286F9: lea eax, var_0000008C
008286FF: push eax
00828700: mov eax, var_00000210
00828706: mov eax, [eax]
00828708: push var_00000210
0082870E: call [eax+000000A0h]
00828714: fclex 
00828716: mov var_00000214, eax
0082871C: cmp var_00000214, 00000000h
00828723: jnl 828748h
00828725: push 000000A0h
0082872A: push 00440E08h
0082872F: push var_00000210
00828735: push var_00000214
0082873B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00828740: mov var_000003F8, eax
00828746: jmp 82874Fh
00828748: and var_000003F8, 00000000h
0082874F: lea eax, var_40
00828752: push eax
00828753: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00828758: mov var_00000180, eax
0082875E: mov var_00000188, 00000003h
00828768: mov eax, var_00000088
0082876E: mov var_00000160, eax
00828774: mov var_00000168, 00000008h
0082877E: push var_0000008C
00828784: push 00000010h
00828786: pop eax
00828787: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082878C: lea esi, var_00000188
00828792: mov edi, esp
00828794: movsd 
00828795: movsd 
00828796: movsd 
00828797: movsd 
00828798: push 00000001h
0082879A: push 00000010h
0082879C: push 00440E58h
008287A1: push 00000010h
008287A3: pop eax
008287A4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008287A9: lea esi, var_00000168
008287AF: mov edi, esp
008287B1: movsd 
008287B2: movsd 
008287B3: movsd 
008287B4: movsd 
008287B5: push 00000001h
008287B7: push 00000000h
008287B9: push 00440E48h
008287BE: push 00000000h
008287C0: push 00000018h
008287C2: push var_00000228
008287C8: lea eax, var_000000B8
008287CE: push eax
008287CF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008287D4: add esp, 00000010h
008287D7: push eax
008287D8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008287DD: push eax
008287DE: lea eax, var_00000094
008287E4: push eax
008287E5: call 00410A84h ; Set (object)
008287EA: push eax
008287EB: lea eax, var_000000C8
008287F1: push eax
008287F2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008287F7: add esp, 00000020h
008287FA: push eax
008287FB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00828800: push eax
00828801: lea eax, var_00000098
00828807: push eax
00828808: call 00410A84h ; Set (object)
0082880D: push eax
0082880E: lea eax, var_000000D8
00828814: push eax
00828815: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082881A: add esp, 00000020h
0082881D: push eax
0082881E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00828823: mov edx, eax
00828825: lea ecx, var_00000090
0082882B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00828830: push eax
00828831: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00828836: neg eax
00828838: sbb eax, eax
0082883A: inc eax
0082883B: neg eax
0082883D: mov var_00000218, ax
00828844: lea eax, var_00000090
0082884A: push eax
0082884B: lea eax, var_0000008C
00828851: push eax
00828852: push 00000002h
00828854: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00828859: add esp, 0000000Ch
0082885C: lea eax, var_0000009C
00828862: push eax
00828863: lea eax, var_00000098
00828869: push eax
0082886A: lea eax, var_00000094
00828870: push eax
00828871: push 00000003h
00828873: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00828878: add esp, 00000010h
0082887B: lea eax, var_000000D8
00828881: push eax
00828882: lea eax, var_000000C8
00828888: push eax
00828889: lea eax, var_000000B8
0082888F: push eax
00828890: push 00000003h
00828892: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00828897: add esp, 00000010h
0082889A: movsx eax, word ptr var_00000218
008288A1: test eax, eax
008288A3: jz 8288FFh
008288A5: mov var_04, 0000005Ah
008288AC: lea eax, var_40
008288AF: push eax
008288B0: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008288B5: mov var_00000210, eax
008288BB: cmp var_00000210, 00000012h
008288C2: jnb 8288CDh
008288C4: and var_000003FC, 00000000h
008288CB: jmp 8288D8h
008288CD: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008288D2: mov var_000003FC, eax
008288D8: mov eax, var_00000210
008288DE: mov ecx, var_5C
008288E1: or word ptr [ecx+eax*2], FFFFh
008288E6: mov var_04, 0000005Bh
008288ED: mov ax, var_4C
008288F1: add ax, 0001h
008288F5: jo 0082E860h
008288FB: mov var_4C, ax
008288FF: mov var_04, 0000005Eh
00828906: mov eax, [ebp+08h]
00828909: mov eax, [eax]
0082890B: push [ebp+08h]
0082890E: call [eax+0000039Ch]
00828914: push eax
00828915: lea eax, var_00000094
0082891B: push eax
0082891C: call 00410A84h ; Set (object)
00828921: mov var_00000210, eax
00828927: lea eax, var_00000098
0082892D: push eax
0082892E: push 00000001h
00828930: mov eax, var_00000210
00828936: mov eax, [eax]
00828938: push var_00000210
0082893E: call [eax+40h]
00828941: fclex 
00828943: mov var_00000214, eax
00828949: cmp var_00000214, 00000000h
00828950: jnl 828972h
00828952: push 00000040h
00828954: push 00440DE8h
00828959: push var_00000210
0082895F: push var_00000214
00828965: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082896A: mov var_00000400, eax
00828970: jmp 828979h
00828972: and var_00000400, 00000000h
00828979: push 00000000h
0082897B: push 00000000h
0082897D: push var_00000098
00828983: lea eax, var_000000B8
00828989: push eax
0082898A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082898F: add esp, 00000010h
00828992: push eax
00828993: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00828998: sub ax, FFFFh
0082899C: neg ax
0082899F: sbb eax, eax
008289A1: inc eax
008289A2: neg eax
008289A4: mov var_00000218, ax
008289AB: lea eax, var_00000098
008289B1: push eax
008289B2: lea eax, var_00000094
008289B8: push eax
008289B9: push 00000002h
008289BB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008289C0: add esp, 0000000Ch
008289C3: lea ecx, var_000000B8
008289C9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008289CE: movsx eax, word ptr var_00000218
008289D5: test eax, eax
008289D7: jz 00828BD4h
008289DD: mov var_04, 0000005Fh
008289E4: lea eax, var_40
008289E7: push eax
008289E8: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008289ED: mov var_00000180, eax
008289F3: mov var_00000188, 00000003h
008289FD: mov eax, var_00000088
00828A03: mov var_00000160, eax
00828A09: mov var_00000168, 00000008h
00828A13: push 00000010h
00828A15: pop eax
00828A16: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00828A1B: lea esi, var_00000188
00828A21: mov edi, esp
00828A23: movsd 
00828A24: movsd 
00828A25: movsd 
00828A26: movsd 
00828A27: push 00000001h
00828A29: push 00000010h
00828A2B: push 00440E58h
00828A30: push 00000010h
00828A32: pop eax
00828A33: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00828A38: lea esi, var_00000168
00828A3E: mov edi, esp
00828A40: movsd 
00828A41: movsd 
00828A42: movsd 
00828A43: movsd 
00828A44: push 00000001h
00828A46: push 00000000h
00828A48: push 00440E48h
00828A4D: push 00000000h
00828A4F: push 00000018h
00828A51: push var_00000228
00828A57: lea eax, var_000000B8
00828A5D: push eax
00828A5E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00828A63: add esp, 00000010h
00828A66: push eax
00828A67: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00828A6C: push eax
00828A6D: lea eax, var_00000094
00828A73: push eax
00828A74: call 00410A84h ; Set (object)
00828A79: push eax
00828A7A: lea eax, var_000000C8
00828A80: push eax
00828A81: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00828A86: add esp, 00000020h
00828A89: push eax
00828A8A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00828A8F: push eax
00828A90: lea eax, var_00000098
00828A96: push eax
00828A97: call 00410A84h ; Set (object)
00828A9C: push eax
00828A9D: lea eax, var_000000D8
00828AA3: push eax
00828AA4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00828AA9: add esp, 00000020h
00828AAC: push eax
00828AAD: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00828AB2: mov var_000000F0, eax
00828AB8: mov var_000000F8, 00000008h
00828AC2: mov eax, [ebp+08h]
00828AC5: mov eax, [eax]
00828AC7: push [ebp+08h]
00828ACA: call [eax+00000328h]
00828AD0: mov var_000000E0, eax
00828AD6: mov var_000000E8, 00000009h
00828AE0: and var_000001A0, 00000000h
00828AE7: mov var_000001A8, 00008002h
00828AF1: push 00000001h
00828AF3: lea eax, var_000000F8
00828AF9: push eax
00828AFA: lea eax, var_000000E8
00828B00: push eax
00828B01: push 00000000h
00828B03: lea eax, var_00000108
00828B09: push eax
00828B0A: call 0041083Eh ; InStr
00828B0F: push eax
00828B10: lea eax, var_000001A8
00828B16: push eax
00828B17: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
00828B1C: mov var_00000210, ax
00828B23: lea eax, var_00000098
00828B29: push eax
00828B2A: lea eax, var_00000094
00828B30: push eax
00828B31: push 00000002h
00828B33: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00828B38: add esp, 0000000Ch
00828B3B: lea eax, var_00000108
00828B41: push eax
00828B42: lea eax, var_000000F8
00828B48: push eax
00828B49: lea eax, var_000000E8
00828B4F: push eax
00828B50: lea eax, var_000000D8
00828B56: push eax
00828B57: lea eax, var_000000C8
00828B5D: push eax
00828B5E: lea eax, var_000000B8
00828B64: push eax
00828B65: push 00000006h
00828B67: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00828B6C: add esp, 0000001Ch
00828B6F: movsx eax, word ptr var_00000210
00828B76: test eax, eax
00828B78: jz 828BD4h
00828B7A: mov var_04, 00000060h
00828B81: lea eax, var_40
00828B84: push eax
00828B85: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00828B8A: mov var_00000210, eax
00828B90: cmp var_00000210, 00000012h
00828B97: jnb 828BA2h
00828B99: and var_00000404, 00000000h
00828BA0: jmp 828BADh
00828BA2: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
00828BA7: mov var_00000404, eax
00828BAD: mov eax, var_00000210
00828BB3: mov ecx, var_5C
00828BB6: or word ptr [ecx+eax*2], FFFFh
00828BBB: mov var_04, 00000061h
00828BC2: mov ax, var_4C
00828BC6: add ax, 0001h
00828BCA: jo 0082E860h
00828BD0: mov var_4C, ax
00828BD4: jmp 0082DA8Eh
00828BD9: mov var_04, 00000064h
00828BE0: mov var_00000160, 00000007h
00828BEA: mov var_00000168, 00008002h
00828BF4: lea eax, var_000002B8
00828BFA: push eax
00828BFB: lea eax, var_00000168
00828C01: push eax
00828C02: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
00828C07: movsx eax, ax
00828C0A: test eax, eax
00828C0C: jz 008291F8h
00828C12: mov var_04, 00000065h
00828C19: mov eax, [ebp+08h]
00828C1C: mov eax, [eax]
00828C1E: push [ebp+08h]
00828C21: call [eax+00000398h]
00828C27: push eax
00828C28: lea eax, var_00000094
00828C2E: push eax
00828C2F: call 00410A84h ; Set (object)
00828C34: mov var_00000210, eax
00828C3A: lea eax, var_00000098
00828C40: push eax
00828C41: push 00000000h
00828C43: mov eax, var_00000210
00828C49: mov eax, [eax]
00828C4B: push var_00000210
00828C51: call [eax+40h]
00828C54: fclex 
00828C56: mov var_00000214, eax
00828C5C: cmp var_00000214, 00000000h
00828C63: jnl 828C85h
00828C65: push 00000040h
00828C67: push 00440DE8h
00828C6C: push var_00000210
00828C72: push var_00000214
00828C78: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00828C7D: mov var_00000408, eax
00828C83: jmp 828C8Ch
00828C85: and var_00000408, 00000000h
00828C8C: push 00000000h
00828C8E: push 00000000h
00828C90: push var_00000098
00828C96: lea eax, var_000000B8
00828C9C: push eax
00828C9D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00828CA2: add esp, 00000010h
00828CA5: push eax
00828CA6: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00828CAB: sub ax, FFFFh
00828CAF: neg ax
00828CB2: sbb eax, eax
00828CB4: inc eax
00828CB5: neg eax
00828CB7: mov var_00000218, ax
00828CBE: lea eax, var_00000098
00828CC4: push eax
00828CC5: lea eax, var_00000094
00828CCB: push eax
00828CCC: push 00000002h
00828CCE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00828CD3: add esp, 0000000Ch
00828CD6: lea ecx, var_000000B8
00828CDC: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00828CE1: movsx eax, word ptr var_00000218
00828CE8: test eax, eax
00828CEA: jz 00828F1Eh
00828CF0: mov var_04, 00000066h
00828CF7: mov eax, [ebp+08h]
00828CFA: mov eax, [eax]
00828CFC: push [ebp+08h]
00828CFF: call [eax+00000324h]
00828D05: push eax
00828D06: lea eax, var_0000009C
00828D0C: push eax
00828D0D: call 00410A84h ; Set (object)
00828D12: mov var_00000210, eax
00828D18: lea eax, var_0000008C
00828D1E: push eax
00828D1F: mov eax, var_00000210
00828D25: mov eax, [eax]
00828D27: push var_00000210
00828D2D: call [eax+000000A0h]
00828D33: fclex 
00828D35: mov var_00000214, eax
00828D3B: cmp var_00000214, 00000000h
00828D42: jnl 828D67h
00828D44: push 000000A0h
00828D49: push 00440E08h
00828D4E: push var_00000210
00828D54: push var_00000214
00828D5A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00828D5F: mov var_0000040C, eax
00828D65: jmp 828D6Eh
00828D67: and var_0000040C, 00000000h
00828D6E: lea eax, var_40
00828D71: push eax
00828D72: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00828D77: mov var_00000180, eax
00828D7D: mov var_00000188, 00000003h
00828D87: mov eax, var_00000088
00828D8D: mov var_00000160, eax
00828D93: mov var_00000168, 00000008h
00828D9D: push var_0000008C
00828DA3: push 00000010h
00828DA5: pop eax
00828DA6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00828DAB: lea esi, var_00000188
00828DB1: mov edi, esp
00828DB3: movsd 
00828DB4: movsd 
00828DB5: movsd 
00828DB6: movsd 
00828DB7: push 00000001h
00828DB9: push 00000010h
00828DBB: push 00440E58h
00828DC0: push 00000010h
00828DC2: pop eax
00828DC3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00828DC8: lea esi, var_00000168
00828DCE: mov edi, esp
00828DD0: movsd 
00828DD1: movsd 
00828DD2: movsd 
00828DD3: movsd 
00828DD4: push 00000001h
00828DD6: push 00000000h
00828DD8: push 00440E48h
00828DDD: push 00000000h
00828DDF: push 00000018h
00828DE1: push var_00000228
00828DE7: lea eax, var_000000B8
00828DED: push eax
00828DEE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00828DF3: add esp, 00000010h
00828DF6: push eax
00828DF7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00828DFC: push eax
00828DFD: lea eax, var_00000094
00828E03: push eax
00828E04: call 00410A84h ; Set (object)
00828E09: push eax
00828E0A: lea eax, var_000000C8
00828E10: push eax
00828E11: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00828E16: add esp, 00000020h
00828E19: push eax
00828E1A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00828E1F: push eax
00828E20: lea eax, var_00000098
00828E26: push eax
00828E27: call 00410A84h ; Set (object)
00828E2C: push eax
00828E2D: lea eax, var_000000D8
00828E33: push eax
00828E34: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00828E39: add esp, 00000020h
00828E3C: push eax
00828E3D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00828E42: mov edx, eax
00828E44: lea ecx, var_00000090
00828E4A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00828E4F: push eax
00828E50: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00828E55: neg eax
00828E57: sbb eax, eax
00828E59: inc eax
00828E5A: neg eax
00828E5C: mov var_00000218, ax
00828E63: lea eax, var_00000090
00828E69: push eax
00828E6A: lea eax, var_0000008C
00828E70: push eax
00828E71: push 00000002h
00828E73: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00828E78: add esp, 0000000Ch
00828E7B: lea eax, var_0000009C
00828E81: push eax
00828E82: lea eax, var_00000098
00828E88: push eax
00828E89: lea eax, var_00000094
00828E8F: push eax
00828E90: push 00000003h
00828E92: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00828E97: add esp, 00000010h
00828E9A: lea eax, var_000000D8
00828EA0: push eax
00828EA1: lea eax, var_000000C8
00828EA7: push eax
00828EA8: lea eax, var_000000B8
00828EAE: push eax
00828EAF: push 00000003h
00828EB1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00828EB6: add esp, 00000010h
00828EB9: movsx eax, word ptr var_00000218
00828EC0: test eax, eax
00828EC2: jz 828F1Eh
00828EC4: mov var_04, 00000067h
00828ECB: lea eax, var_40
00828ECE: push eax
00828ECF: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00828ED4: mov var_00000210, eax
00828EDA: cmp var_00000210, 00000012h
00828EE1: jnb 828EECh
00828EE3: and var_00000410, 00000000h
00828EEA: jmp 828EF7h
00828EEC: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
00828EF1: mov var_00000410, eax
00828EF7: mov eax, var_00000210
00828EFD: mov ecx, var_5C
00828F00: or word ptr [ecx+eax*2], FFFFh
00828F05: mov var_04, 00000068h
00828F0C: mov ax, var_4C
00828F10: add ax, 0001h
00828F14: jo 0082E860h
00828F1A: mov var_4C, ax
00828F1E: mov var_04, 0000006Bh
00828F25: mov eax, [ebp+08h]
00828F28: mov eax, [eax]
00828F2A: push [ebp+08h]
00828F2D: call [eax+00000398h]
00828F33: push eax
00828F34: lea eax, var_00000094
00828F3A: push eax
00828F3B: call 00410A84h ; Set (object)
00828F40: mov var_00000210, eax
00828F46: lea eax, var_00000098
00828F4C: push eax
00828F4D: push 00000001h
00828F4F: mov eax, var_00000210
00828F55: mov eax, [eax]
00828F57: push var_00000210
00828F5D: call [eax+40h]
00828F60: fclex 
00828F62: mov var_00000214, eax
00828F68: cmp var_00000214, 00000000h
00828F6F: jnl 828F91h
00828F71: push 00000040h
00828F73: push 00440DE8h
00828F78: push var_00000210
00828F7E: push var_00000214
00828F84: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00828F89: mov var_00000414, eax
00828F8F: jmp 828F98h
00828F91: and var_00000414, 00000000h
00828F98: push 00000000h
00828F9A: push 00000000h
00828F9C: push var_00000098
00828FA2: lea eax, var_000000B8
00828FA8: push eax
00828FA9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00828FAE: add esp, 00000010h
00828FB1: push eax
00828FB2: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00828FB7: sub ax, FFFFh
00828FBB: neg ax
00828FBE: sbb eax, eax
00828FC0: inc eax
00828FC1: neg eax
00828FC3: mov var_00000218, ax
00828FCA: lea eax, var_00000098
00828FD0: push eax
00828FD1: lea eax, var_00000094
00828FD7: push eax
00828FD8: push 00000002h
00828FDA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00828FDF: add esp, 0000000Ch
00828FE2: lea ecx, var_000000B8
00828FE8: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00828FED: movsx eax, word ptr var_00000218
00828FF4: test eax, eax
00828FF6: jz 008291F3h
00828FFC: mov var_04, 0000006Ch
00829003: lea eax, var_40
00829006: push eax
00829007: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082900C: mov var_00000180, eax
00829012: mov var_00000188, 00000003h
0082901C: mov eax, var_00000088
00829022: mov var_00000160, eax
00829028: mov var_00000168, 00000008h
00829032: push 00000010h
00829034: pop eax
00829035: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082903A: lea esi, var_00000188
00829040: mov edi, esp
00829042: movsd 
00829043: movsd 
00829044: movsd 
00829045: movsd 
00829046: push 00000001h
00829048: push 00000010h
0082904A: push 00440E58h
0082904F: push 00000010h
00829051: pop eax
00829052: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00829057: lea esi, var_00000168
0082905D: mov edi, esp
0082905F: movsd 
00829060: movsd 
00829061: movsd 
00829062: movsd 
00829063: push 00000001h
00829065: push 00000000h
00829067: push 00440E48h
0082906C: push 00000000h
0082906E: push 00000018h
00829070: push var_00000228
00829076: lea eax, var_000000B8
0082907C: push eax
0082907D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00829082: add esp, 00000010h
00829085: push eax
00829086: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082908B: push eax
0082908C: lea eax, var_00000094
00829092: push eax
00829093: call 00410A84h ; Set (object)
00829098: push eax
00829099: lea eax, var_000000C8
0082909F: push eax
008290A0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008290A5: add esp, 00000020h
008290A8: push eax
008290A9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008290AE: push eax
008290AF: lea eax, var_00000098
008290B5: push eax
008290B6: call 00410A84h ; Set (object)
008290BB: push eax
008290BC: lea eax, var_000000D8
008290C2: push eax
008290C3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008290C8: add esp, 00000020h
008290CB: push eax
008290CC: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008290D1: mov var_000000F0, eax
008290D7: mov var_000000F8, 00000008h
008290E1: mov eax, [ebp+08h]
008290E4: mov eax, [eax]
008290E6: push [ebp+08h]
008290E9: call [eax+00000324h]
008290EF: mov var_000000E0, eax
008290F5: mov var_000000E8, 00000009h
008290FF: and var_000001A0, 00000000h
00829106: mov var_000001A8, 00008002h
00829110: push 00000001h
00829112: lea eax, var_000000F8
00829118: push eax
00829119: lea eax, var_000000E8
0082911F: push eax
00829120: push 00000000h
00829122: lea eax, var_00000108
00829128: push eax
00829129: call 0041083Eh ; InStr
0082912E: push eax
0082912F: lea eax, var_000001A8
00829135: push eax
00829136: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
0082913B: mov var_00000210, ax
00829142: lea eax, var_00000098
00829148: push eax
00829149: lea eax, var_00000094
0082914F: push eax
00829150: push 00000002h
00829152: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00829157: add esp, 0000000Ch
0082915A: lea eax, var_00000108
00829160: push eax
00829161: lea eax, var_000000F8
00829167: push eax
00829168: lea eax, var_000000E8
0082916E: push eax
0082916F: lea eax, var_000000D8
00829175: push eax
00829176: lea eax, var_000000C8
0082917C: push eax
0082917D: lea eax, var_000000B8
00829183: push eax
00829184: push 00000006h
00829186: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082918B: add esp, 0000001Ch
0082918E: movsx eax, word ptr var_00000210
00829195: test eax, eax
00829197: jz 8291F3h
00829199: mov var_04, 0000006Dh
008291A0: lea eax, var_40
008291A3: push eax
008291A4: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008291A9: mov var_00000210, eax
008291AF: cmp var_00000210, 00000012h
008291B6: jnb 8291C1h
008291B8: and var_00000418, 00000000h
008291BF: jmp 8291CCh
008291C1: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008291C6: mov var_00000418, eax
008291CC: mov eax, var_00000210
008291D2: mov ecx, var_5C
008291D5: or word ptr [ecx+eax*2], FFFFh
008291DA: mov var_04, 0000006Eh
008291E1: mov ax, var_4C
008291E5: add ax, 0001h
008291E9: jo 0082E860h
008291EF: mov var_4C, ax
008291F3: jmp 0082DA8Eh
008291F8: mov var_04, 00000071h
008291FF: mov var_00000160, 00000008h
00829209: mov var_00000168, 00008002h
00829213: lea eax, var_000002B8
00829219: push eax
0082921A: lea eax, var_00000168
00829220: push eax
00829221: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
00829226: movsx eax, ax
00829229: test eax, eax
0082922B: jz 00829817h
00829231: mov var_04, 00000072h
00829238: mov eax, [ebp+08h]
0082923B: mov eax, [eax]
0082923D: push [ebp+08h]
00829240: call [eax+00000394h]
00829246: push eax
00829247: lea eax, var_00000094
0082924D: push eax
0082924E: call 00410A84h ; Set (object)
00829253: mov var_00000210, eax
00829259: lea eax, var_00000098
0082925F: push eax
00829260: push 00000000h
00829262: mov eax, var_00000210
00829268: mov eax, [eax]
0082926A: push var_00000210
00829270: call [eax+40h]
00829273: fclex 
00829275: mov var_00000214, eax
0082927B: cmp var_00000214, 00000000h
00829282: jnl 8292A4h
00829284: push 00000040h
00829286: push 00440DE8h
0082928B: push var_00000210
00829291: push var_00000214
00829297: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082929C: mov var_0000041C, eax
008292A2: jmp 8292ABh
008292A4: and var_0000041C, 00000000h
008292AB: push 00000000h
008292AD: push 00000000h
008292AF: push var_00000098
008292B5: lea eax, var_000000B8
008292BB: push eax
008292BC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008292C1: add esp, 00000010h
008292C4: push eax
008292C5: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008292CA: sub ax, FFFFh
008292CE: neg ax
008292D1: sbb eax, eax
008292D3: inc eax
008292D4: neg eax
008292D6: mov var_00000218, ax
008292DD: lea eax, var_00000098
008292E3: push eax
008292E4: lea eax, var_00000094
008292EA: push eax
008292EB: push 00000002h
008292ED: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008292F2: add esp, 0000000Ch
008292F5: lea ecx, var_000000B8
008292FB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00829300: movsx eax, word ptr var_00000218
00829307: test eax, eax
00829309: jz 0082953Dh
0082930F: mov var_04, 00000073h
00829316: mov eax, [ebp+08h]
00829319: mov eax, [eax]
0082931B: push [ebp+08h]
0082931E: call [eax+00000320h]
00829324: push eax
00829325: lea eax, var_0000009C
0082932B: push eax
0082932C: call 00410A84h ; Set (object)
00829331: mov var_00000210, eax
00829337: lea eax, var_0000008C
0082933D: push eax
0082933E: mov eax, var_00000210
00829344: mov eax, [eax]
00829346: push var_00000210
0082934C: call [eax+000000A0h]
00829352: fclex 
00829354: mov var_00000214, eax
0082935A: cmp var_00000214, 00000000h
00829361: jnl 829386h
00829363: push 000000A0h
00829368: push 00440E08h
0082936D: push var_00000210
00829373: push var_00000214
00829379: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082937E: mov var_00000420, eax
00829384: jmp 82938Dh
00829386: and var_00000420, 00000000h
0082938D: lea eax, var_40
00829390: push eax
00829391: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00829396: mov var_00000180, eax
0082939C: mov var_00000188, 00000003h
008293A6: mov eax, var_00000088
008293AC: mov var_00000160, eax
008293B2: mov var_00000168, 00000008h
008293BC: push var_0000008C
008293C2: push 00000010h
008293C4: pop eax
008293C5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008293CA: lea esi, var_00000188
008293D0: mov edi, esp
008293D2: movsd 
008293D3: movsd 
008293D4: movsd 
008293D5: movsd 
008293D6: push 00000001h
008293D8: push 00000010h
008293DA: push 00440E58h
008293DF: push 00000010h
008293E1: pop eax
008293E2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008293E7: lea esi, var_00000168
008293ED: mov edi, esp
008293EF: movsd 
008293F0: movsd 
008293F1: movsd 
008293F2: movsd 
008293F3: push 00000001h
008293F5: push 00000000h
008293F7: push 00440E48h
008293FC: push 00000000h
008293FE: push 00000018h
00829400: push var_00000228
00829406: lea eax, var_000000B8
0082940C: push eax
0082940D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00829412: add esp, 00000010h
00829415: push eax
00829416: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082941B: push eax
0082941C: lea eax, var_00000094
00829422: push eax
00829423: call 00410A84h ; Set (object)
00829428: push eax
00829429: lea eax, var_000000C8
0082942F: push eax
00829430: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00829435: add esp, 00000020h
00829438: push eax
00829439: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082943E: push eax
0082943F: lea eax, var_00000098
00829445: push eax
00829446: call 00410A84h ; Set (object)
0082944B: push eax
0082944C: lea eax, var_000000D8
00829452: push eax
00829453: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00829458: add esp, 00000020h
0082945B: push eax
0082945C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00829461: mov edx, eax
00829463: lea ecx, var_00000090
00829469: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0082946E: push eax
0082946F: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00829474: neg eax
00829476: sbb eax, eax
00829478: inc eax
00829479: neg eax
0082947B: mov var_00000218, ax
00829482: lea eax, var_00000090
00829488: push eax
00829489: lea eax, var_0000008C
0082948F: push eax
00829490: push 00000002h
00829492: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00829497: add esp, 0000000Ch
0082949A: lea eax, var_0000009C
008294A0: push eax
008294A1: lea eax, var_00000098
008294A7: push eax
008294A8: lea eax, var_00000094
008294AE: push eax
008294AF: push 00000003h
008294B1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008294B6: add esp, 00000010h
008294B9: lea eax, var_000000D8
008294BF: push eax
008294C0: lea eax, var_000000C8
008294C6: push eax
008294C7: lea eax, var_000000B8
008294CD: push eax
008294CE: push 00000003h
008294D0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008294D5: add esp, 00000010h
008294D8: movsx eax, word ptr var_00000218
008294DF: test eax, eax
008294E1: jz 82953Dh
008294E3: mov var_04, 00000074h
008294EA: lea eax, var_40
008294ED: push eax
008294EE: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008294F3: mov var_00000210, eax
008294F9: cmp var_00000210, 00000012h
00829500: jnb 82950Bh
00829502: and var_00000424, 00000000h
00829509: jmp 829516h
0082950B: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
00829510: mov var_00000424, eax
00829516: mov eax, var_00000210
0082951C: mov ecx, var_5C
0082951F: or word ptr [ecx+eax*2], FFFFh
00829524: mov var_04, 00000075h
0082952B: mov ax, var_4C
0082952F: add ax, 0001h
00829533: jo 0082E860h
00829539: mov var_4C, ax
0082953D: mov var_04, 00000078h
00829544: mov eax, [ebp+08h]
00829547: mov eax, [eax]
00829549: push [ebp+08h]
0082954C: call [eax+00000394h]
00829552: push eax
00829553: lea eax, var_00000094
00829559: push eax
0082955A: call 00410A84h ; Set (object)
0082955F: mov var_00000210, eax
00829565: lea eax, var_00000098
0082956B: push eax
0082956C: push 00000001h
0082956E: mov eax, var_00000210
00829574: mov eax, [eax]
00829576: push var_00000210
0082957C: call [eax+40h]
0082957F: fclex 
00829581: mov var_00000214, eax
00829587: cmp var_00000214, 00000000h
0082958E: jnl 8295B0h
00829590: push 00000040h
00829592: push 00440DE8h
00829597: push var_00000210
0082959D: push var_00000214
008295A3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008295A8: mov var_00000428, eax
008295AE: jmp 8295B7h
008295B0: and var_00000428, 00000000h
008295B7: push 00000000h
008295B9: push 00000000h
008295BB: push var_00000098
008295C1: lea eax, var_000000B8
008295C7: push eax
008295C8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008295CD: add esp, 00000010h
008295D0: push eax
008295D1: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008295D6: sub ax, FFFFh
008295DA: neg ax
008295DD: sbb eax, eax
008295DF: inc eax
008295E0: neg eax
008295E2: mov var_00000218, ax
008295E9: lea eax, var_00000098
008295EF: push eax
008295F0: lea eax, var_00000094
008295F6: push eax
008295F7: push 00000002h
008295F9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008295FE: add esp, 0000000Ch
00829601: lea ecx, var_000000B8
00829607: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082960C: movsx eax, word ptr var_00000218
00829613: test eax, eax
00829615: jz 00829812h
0082961B: mov var_04, 00000079h
00829622: lea eax, var_40
00829625: push eax
00829626: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082962B: mov var_00000180, eax
00829631: mov var_00000188, 00000003h
0082963B: mov eax, var_00000088
00829641: mov var_00000160, eax
00829647: mov var_00000168, 00000008h
00829651: push 00000010h
00829653: pop eax
00829654: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00829659: lea esi, var_00000188
0082965F: mov edi, esp
00829661: movsd 
00829662: movsd 
00829663: movsd 
00829664: movsd 
00829665: push 00000001h
00829667: push 00000010h
00829669: push 00440E58h
0082966E: push 00000010h
00829670: pop eax
00829671: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00829676: lea esi, var_00000168
0082967C: mov edi, esp
0082967E: movsd 
0082967F: movsd 
00829680: movsd 
00829681: movsd 
00829682: push 00000001h
00829684: push 00000000h
00829686: push 00440E48h
0082968B: push 00000000h
0082968D: push 00000018h
0082968F: push var_00000228
00829695: lea eax, var_000000B8
0082969B: push eax
0082969C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008296A1: add esp, 00000010h
008296A4: push eax
008296A5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008296AA: push eax
008296AB: lea eax, var_00000094
008296B1: push eax
008296B2: call 00410A84h ; Set (object)
008296B7: push eax
008296B8: lea eax, var_000000C8
008296BE: push eax
008296BF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008296C4: add esp, 00000020h
008296C7: push eax
008296C8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008296CD: push eax
008296CE: lea eax, var_00000098
008296D4: push eax
008296D5: call 00410A84h ; Set (object)
008296DA: push eax
008296DB: lea eax, var_000000D8
008296E1: push eax
008296E2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008296E7: add esp, 00000020h
008296EA: push eax
008296EB: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008296F0: mov var_000000F0, eax
008296F6: mov var_000000F8, 00000008h
00829700: mov eax, [ebp+08h]
00829703: mov eax, [eax]
00829705: push [ebp+08h]
00829708: call [eax+00000320h]
0082970E: mov var_000000E0, eax
00829714: mov var_000000E8, 00000009h
0082971E: and var_000001A0, 00000000h
00829725: mov var_000001A8, 00008002h
0082972F: push 00000001h
00829731: lea eax, var_000000F8
00829737: push eax
00829738: lea eax, var_000000E8
0082973E: push eax
0082973F: push 00000000h
00829741: lea eax, var_00000108
00829747: push eax
00829748: call 0041083Eh ; InStr
0082974D: push eax
0082974E: lea eax, var_000001A8
00829754: push eax
00829755: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
0082975A: mov var_00000210, ax
00829761: lea eax, var_00000098
00829767: push eax
00829768: lea eax, var_00000094
0082976E: push eax
0082976F: push 00000002h
00829771: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00829776: add esp, 0000000Ch
00829779: lea eax, var_00000108
0082977F: push eax
00829780: lea eax, var_000000F8
00829786: push eax
00829787: lea eax, var_000000E8
0082978D: push eax
0082978E: lea eax, var_000000D8
00829794: push eax
00829795: lea eax, var_000000C8
0082979B: push eax
0082979C: lea eax, var_000000B8
008297A2: push eax
008297A3: push 00000006h
008297A5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008297AA: add esp, 0000001Ch
008297AD: movsx eax, word ptr var_00000210
008297B4: test eax, eax
008297B6: jz 829812h
008297B8: mov var_04, 0000007Ah
008297BF: lea eax, var_40
008297C2: push eax
008297C3: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008297C8: mov var_00000210, eax
008297CE: cmp var_00000210, 00000012h
008297D5: jnb 8297E0h
008297D7: and var_0000042C, 00000000h
008297DE: jmp 8297EBh
008297E0: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008297E5: mov var_0000042C, eax
008297EB: mov eax, var_00000210
008297F1: mov ecx, var_5C
008297F4: or word ptr [ecx+eax*2], FFFFh
008297F9: mov var_04, 0000007Bh
00829800: mov ax, var_4C
00829804: add ax, 0001h
00829808: jo 0082E860h
0082980E: mov var_4C, ax
00829812: jmp 0082DA8Eh
00829817: mov var_04, 0000007Eh
0082981E: mov var_00000160, 00000009h
00829828: mov var_00000168, 00008002h
00829832: lea eax, var_000002B8
00829838: push eax
00829839: lea eax, var_00000168
0082983F: push eax
00829840: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
00829845: movsx eax, ax
00829848: test eax, eax
0082984A: jz 00829E36h
00829850: mov var_04, 0000007Fh
00829857: mov eax, [ebp+08h]
0082985A: mov eax, [eax]
0082985C: push [ebp+08h]
0082985F: call [eax+00000390h]
00829865: push eax
00829866: lea eax, var_00000094
0082986C: push eax
0082986D: call 00410A84h ; Set (object)
00829872: mov var_00000210, eax
00829878: lea eax, var_00000098
0082987E: push eax
0082987F: push 00000000h
00829881: mov eax, var_00000210
00829887: mov eax, [eax]
00829889: push var_00000210
0082988F: call [eax+40h]
00829892: fclex 
00829894: mov var_00000214, eax
0082989A: cmp var_00000214, 00000000h
008298A1: jnl 8298C3h
008298A3: push 00000040h
008298A5: push 00440DE8h
008298AA: push var_00000210
008298B0: push var_00000214
008298B6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008298BB: mov var_00000430, eax
008298C1: jmp 8298CAh
008298C3: and var_00000430, 00000000h
008298CA: push 00000000h
008298CC: push 00000000h
008298CE: push var_00000098
008298D4: lea eax, var_000000B8
008298DA: push eax
008298DB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008298E0: add esp, 00000010h
008298E3: push eax
008298E4: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008298E9: sub ax, FFFFh
008298ED: neg ax
008298F0: sbb eax, eax
008298F2: inc eax
008298F3: neg eax
008298F5: mov var_00000218, ax
008298FC: lea eax, var_00000098
00829902: push eax
00829903: lea eax, var_00000094
00829909: push eax
0082990A: push 00000002h
0082990C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00829911: add esp, 0000000Ch
00829914: lea ecx, var_000000B8
0082991A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082991F: movsx eax, word ptr var_00000218
00829926: test eax, eax
00829928: jz 00829B5Ch
0082992E: mov var_04, 00000080h
00829935: mov eax, [ebp+08h]
00829938: mov eax, [eax]
0082993A: push [ebp+08h]
0082993D: call [eax+0000031Ch]
00829943: push eax
00829944: lea eax, var_0000009C
0082994A: push eax
0082994B: call 00410A84h ; Set (object)
00829950: mov var_00000210, eax
00829956: lea eax, var_0000008C
0082995C: push eax
0082995D: mov eax, var_00000210
00829963: mov eax, [eax]
00829965: push var_00000210
0082996B: call [eax+000000A0h]
00829971: fclex 
00829973: mov var_00000214, eax
00829979: cmp var_00000214, 00000000h
00829980: jnl 8299A5h
00829982: push 000000A0h
00829987: push 00440E08h
0082998C: push var_00000210
00829992: push var_00000214
00829998: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082999D: mov var_00000434, eax
008299A3: jmp 8299ACh
008299A5: and var_00000434, 00000000h
008299AC: lea eax, var_40
008299AF: push eax
008299B0: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008299B5: mov var_00000180, eax
008299BB: mov var_00000188, 00000003h
008299C5: mov eax, var_00000088
008299CB: mov var_00000160, eax
008299D1: mov var_00000168, 00000008h
008299DB: push var_0000008C
008299E1: push 00000010h
008299E3: pop eax
008299E4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008299E9: lea esi, var_00000188
008299EF: mov edi, esp
008299F1: movsd 
008299F2: movsd 
008299F3: movsd 
008299F4: movsd 
008299F5: push 00000001h
008299F7: push 00000010h
008299F9: push 00440E58h
008299FE: push 00000010h
00829A00: pop eax
00829A01: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00829A06: lea esi, var_00000168
00829A0C: mov edi, esp
00829A0E: movsd 
00829A0F: movsd 
00829A10: movsd 
00829A11: movsd 
00829A12: push 00000001h
00829A14: push 00000000h
00829A16: push 00440E48h
00829A1B: push 00000000h
00829A1D: push 00000018h
00829A1F: push var_00000228
00829A25: lea eax, var_000000B8
00829A2B: push eax
00829A2C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00829A31: add esp, 00000010h
00829A34: push eax
00829A35: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00829A3A: push eax
00829A3B: lea eax, var_00000094
00829A41: push eax
00829A42: call 00410A84h ; Set (object)
00829A47: push eax
00829A48: lea eax, var_000000C8
00829A4E: push eax
00829A4F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00829A54: add esp, 00000020h
00829A57: push eax
00829A58: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00829A5D: push eax
00829A5E: lea eax, var_00000098
00829A64: push eax
00829A65: call 00410A84h ; Set (object)
00829A6A: push eax
00829A6B: lea eax, var_000000D8
00829A71: push eax
00829A72: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00829A77: add esp, 00000020h
00829A7A: push eax
00829A7B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00829A80: mov edx, eax
00829A82: lea ecx, var_00000090
00829A88: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00829A8D: push eax
00829A8E: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00829A93: neg eax
00829A95: sbb eax, eax
00829A97: inc eax
00829A98: neg eax
00829A9A: mov var_00000218, ax
00829AA1: lea eax, var_00000090
00829AA7: push eax
00829AA8: lea eax, var_0000008C
00829AAE: push eax
00829AAF: push 00000002h
00829AB1: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00829AB6: add esp, 0000000Ch
00829AB9: lea eax, var_0000009C
00829ABF: push eax
00829AC0: lea eax, var_00000098
00829AC6: push eax
00829AC7: lea eax, var_00000094
00829ACD: push eax
00829ACE: push 00000003h
00829AD0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00829AD5: add esp, 00000010h
00829AD8: lea eax, var_000000D8
00829ADE: push eax
00829ADF: lea eax, var_000000C8
00829AE5: push eax
00829AE6: lea eax, var_000000B8
00829AEC: push eax
00829AED: push 00000003h
00829AEF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00829AF4: add esp, 00000010h
00829AF7: movsx eax, word ptr var_00000218
00829AFE: test eax, eax
00829B00: jz 829B5Ch
00829B02: mov var_04, 00000081h
00829B09: lea eax, var_40
00829B0C: push eax
00829B0D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00829B12: mov var_00000210, eax
00829B18: cmp var_00000210, 00000012h
00829B1F: jnb 829B2Ah
00829B21: and var_00000438, 00000000h
00829B28: jmp 829B35h
00829B2A: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
00829B2F: mov var_00000438, eax
00829B35: mov eax, var_00000210
00829B3B: mov ecx, var_5C
00829B3E: or word ptr [ecx+eax*2], FFFFh
00829B43: mov var_04, 00000082h
00829B4A: mov ax, var_4C
00829B4E: add ax, 0001h
00829B52: jo 0082E860h
00829B58: mov var_4C, ax
00829B5C: mov var_04, 00000085h
00829B63: mov eax, [ebp+08h]
00829B66: mov eax, [eax]
00829B68: push [ebp+08h]
00829B6B: call [eax+00000390h]
00829B71: push eax
00829B72: lea eax, var_00000094
00829B78: push eax
00829B79: call 00410A84h ; Set (object)
00829B7E: mov var_00000210, eax
00829B84: lea eax, var_00000098
00829B8A: push eax
00829B8B: push 00000001h
00829B8D: mov eax, var_00000210
00829B93: mov eax, [eax]
00829B95: push var_00000210
00829B9B: call [eax+40h]
00829B9E: fclex 
00829BA0: mov var_00000214, eax
00829BA6: cmp var_00000214, 00000000h
00829BAD: jnl 829BCFh
00829BAF: push 00000040h
00829BB1: push 00440DE8h
00829BB6: push var_00000210
00829BBC: push var_00000214
00829BC2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00829BC7: mov var_0000043C, eax
00829BCD: jmp 829BD6h
00829BCF: and var_0000043C, 00000000h
00829BD6: push 00000000h
00829BD8: push 00000000h
00829BDA: push var_00000098
00829BE0: lea eax, var_000000B8
00829BE6: push eax
00829BE7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00829BEC: add esp, 00000010h
00829BEF: push eax
00829BF0: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00829BF5: sub ax, FFFFh
00829BF9: neg ax
00829BFC: sbb eax, eax
00829BFE: inc eax
00829BFF: neg eax
00829C01: mov var_00000218, ax
00829C08: lea eax, var_00000098
00829C0E: push eax
00829C0F: lea eax, var_00000094
00829C15: push eax
00829C16: push 00000002h
00829C18: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00829C1D: add esp, 0000000Ch
00829C20: lea ecx, var_000000B8
00829C26: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00829C2B: movsx eax, word ptr var_00000218
00829C32: test eax, eax
00829C34: jz 00829E31h
00829C3A: mov var_04, 00000086h
00829C41: lea eax, var_40
00829C44: push eax
00829C45: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00829C4A: mov var_00000180, eax
00829C50: mov var_00000188, 00000003h
00829C5A: mov eax, var_00000088
00829C60: mov var_00000160, eax
00829C66: mov var_00000168, 00000008h
00829C70: push 00000010h
00829C72: pop eax
00829C73: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00829C78: lea esi, var_00000188
00829C7E: mov edi, esp
00829C80: movsd 
00829C81: movsd 
00829C82: movsd 
00829C83: movsd 
00829C84: push 00000001h
00829C86: push 00000010h
00829C88: push 00440E58h
00829C8D: push 00000010h
00829C8F: pop eax
00829C90: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00829C95: lea esi, var_00000168
00829C9B: mov edi, esp
00829C9D: movsd 
00829C9E: movsd 
00829C9F: movsd 
00829CA0: movsd 
00829CA1: push 00000001h
00829CA3: push 00000000h
00829CA5: push 00440E48h
00829CAA: push 00000000h
00829CAC: push 00000018h
00829CAE: push var_00000228
00829CB4: lea eax, var_000000B8
00829CBA: push eax
00829CBB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00829CC0: add esp, 00000010h
00829CC3: push eax
00829CC4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00829CC9: push eax
00829CCA: lea eax, var_00000094
00829CD0: push eax
00829CD1: call 00410A84h ; Set (object)
00829CD6: push eax
00829CD7: lea eax, var_000000C8
00829CDD: push eax
00829CDE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00829CE3: add esp, 00000020h
00829CE6: push eax
00829CE7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00829CEC: push eax
00829CED: lea eax, var_00000098
00829CF3: push eax
00829CF4: call 00410A84h ; Set (object)
00829CF9: push eax
00829CFA: lea eax, var_000000D8
00829D00: push eax
00829D01: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00829D06: add esp, 00000020h
00829D09: push eax
00829D0A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00829D0F: mov var_000000F0, eax
00829D15: mov var_000000F8, 00000008h
00829D1F: mov eax, [ebp+08h]
00829D22: mov eax, [eax]
00829D24: push [ebp+08h]
00829D27: call [eax+0000031Ch]
00829D2D: mov var_000000E0, eax
00829D33: mov var_000000E8, 00000009h
00829D3D: and var_000001A0, 00000000h
00829D44: mov var_000001A8, 00008002h
00829D4E: push 00000001h
00829D50: lea eax, var_000000F8
00829D56: push eax
00829D57: lea eax, var_000000E8
00829D5D: push eax
00829D5E: push 00000000h
00829D60: lea eax, var_00000108
00829D66: push eax
00829D67: call 0041083Eh ; InStr
00829D6C: push eax
00829D6D: lea eax, var_000001A8
00829D73: push eax
00829D74: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
00829D79: mov var_00000210, ax
00829D80: lea eax, var_00000098
00829D86: push eax
00829D87: lea eax, var_00000094
00829D8D: push eax
00829D8E: push 00000002h
00829D90: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00829D95: add esp, 0000000Ch
00829D98: lea eax, var_00000108
00829D9E: push eax
00829D9F: lea eax, var_000000F8
00829DA5: push eax
00829DA6: lea eax, var_000000E8
00829DAC: push eax
00829DAD: lea eax, var_000000D8
00829DB3: push eax
00829DB4: lea eax, var_000000C8
00829DBA: push eax
00829DBB: lea eax, var_000000B8
00829DC1: push eax
00829DC2: push 00000006h
00829DC4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00829DC9: add esp, 0000001Ch
00829DCC: movsx eax, word ptr var_00000210
00829DD3: test eax, eax
00829DD5: jz 829E31h
00829DD7: mov var_04, 00000087h
00829DDE: lea eax, var_40
00829DE1: push eax
00829DE2: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00829DE7: mov var_00000210, eax
00829DED: cmp var_00000210, 00000012h
00829DF4: jnb 829DFFh
00829DF6: and var_00000440, 00000000h
00829DFD: jmp 829E0Ah
00829DFF: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
00829E04: mov var_00000440, eax
00829E0A: mov eax, var_00000210
00829E10: mov ecx, var_5C
00829E13: or word ptr [ecx+eax*2], FFFFh
00829E18: mov var_04, 00000088h
00829E1F: mov ax, var_4C
00829E23: add ax, 0001h
00829E27: jo 0082E860h
00829E2D: mov var_4C, ax
00829E31: jmp 0082DA8Eh
00829E36: mov var_04, 0000008Bh
00829E3D: mov var_00000160, 0000000Ah
00829E47: mov var_00000168, 00008002h
00829E51: lea eax, var_000002B8
00829E57: push eax
00829E58: lea eax, var_00000168
00829E5E: push eax
00829E5F: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
00829E64: movsx eax, ax
00829E67: test eax, eax
00829E69: jz 0082A9DDh
00829E6F: mov var_04, 0000008Ch
00829E76: lea eax, var_40
00829E79: push eax
00829E7A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00829E7F: mov var_00000180, eax
00829E85: mov var_00000188, 00000003h
00829E8F: mov eax, var_00000088
00829E95: mov var_00000160, eax
00829E9B: mov var_00000168, 00000008h
00829EA5: push 00000010h
00829EA7: pop eax
00829EA8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00829EAD: lea esi, var_00000188
00829EB3: mov edi, esp
00829EB5: movsd 
00829EB6: movsd 
00829EB7: movsd 
00829EB8: movsd 
00829EB9: push 00000001h
00829EBB: push 00000010h
00829EBD: push 00440E58h
00829EC2: push 00000010h
00829EC4: pop eax
00829EC5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00829ECA: lea esi, var_00000168
00829ED0: mov edi, esp
00829ED2: movsd 
00829ED3: movsd 
00829ED4: movsd 
00829ED5: movsd 
00829ED6: push 00000001h
00829ED8: push 00000000h
00829EDA: push 00440E48h
00829EDF: push 00000000h
00829EE1: push 00000018h
00829EE3: push var_00000228
00829EE9: lea eax, var_000000B8
00829EEF: push eax
00829EF0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00829EF5: add esp, 00000010h
00829EF8: push eax
00829EF9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00829EFE: push eax
00829EFF: lea eax, var_00000094
00829F05: push eax
00829F06: call 00410A84h ; Set (object)
00829F0B: push eax
00829F0C: lea eax, var_000000C8
00829F12: push eax
00829F13: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00829F18: add esp, 00000020h
00829F1B: push eax
00829F1C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00829F21: push eax
00829F22: lea eax, var_00000098
00829F28: push eax
00829F29: call 00410A84h ; Set (object)
00829F2E: push eax
00829F2F: lea eax, var_000000D8
00829F35: push eax
00829F36: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00829F3B: add esp, 00000020h
00829F3E: mov var_000001A0, 004412B8h
00829F48: mov var_000001A8, 00000008h
00829F52: lea edx, var_000001A8
00829F58: lea ecx, var_000000E8
00829F5E: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00829F63: push 00000000h
00829F65: push 00000003h
00829F67: lea eax, var_000000E8
00829F6D: push eax
00829F6E: lea eax, var_000000D8
00829F74: push eax
00829F75: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00829F7A: mov edx, eax
00829F7C: lea ecx, var_0000008C
00829F82: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00829F87: push eax
00829F88: lea eax, var_000000F8
00829F8E: push eax
00829F8F: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
00829F94: lea eax, var_000000F8
00829F9A: push eax
00829F9B: push 00002008h
00829FA0: call 0041088Ch ; msvbvm60.dll.__vbaAryVar
00829FA5: mov var_000001F4, eax
00829FAB: lea eax, var_000001F4
00829FB1: push eax
00829FB2: lea eax, var_50
00829FB5: push eax
00829FB6: call 00410892h ; msvbvm60.dll.__vbaAryCopy
00829FBB: lea ecx, var_0000008C
00829FC1: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00829FC6: lea eax, var_00000098
00829FCC: push eax
00829FCD: lea eax, var_00000094
00829FD3: push eax
00829FD4: push 00000002h
00829FD6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00829FDB: add esp, 0000000Ch
00829FDE: lea eax, var_000000F8
00829FE4: push eax
00829FE5: lea eax, var_000000E8
00829FEB: push eax
00829FEC: lea eax, var_000000D8
00829FF2: push eax
00829FF3: lea eax, var_000000C8
00829FF9: push eax
00829FFA: lea eax, var_000000B8
0082A000: push eax
0082A001: push 00000005h
0082A003: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082A008: add esp, 00000018h
0082A00B: mov var_04, 0000008Dh
0082A012: push 00000000h
0082A014: push var_50
0082A017: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0082A01C: push [eax]
0082A01E: call 004109DCh ; Val(arg_1)
0082A023: fstp real8 ptr var_000001FC
0082A029: push 00000001h
0082A02B: push var_50
0082A02E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0082A033: push [eax]
0082A035: call 004109DCh ; Val(arg_1)
0082A03A: fstp real8 ptr var_00000204
0082A040: push 00000002h
0082A042: push var_50
0082A045: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0082A04A: push [eax]
0082A04C: call 004109DCh ; Val(arg_1)
0082A051: fstp real8 ptr var_0000020C
0082A057: mov var_00000170, 004412ACh ; 00
0082A061: mov var_00000178, 00000008h
0082A06B: lea edx, var_00000178
0082A071: lea ecx, var_000000C8
0082A077: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0082A07C: fld real8 ptr var_000001FC
0082A082: fstp real8 ptr var_000000B0
0082A088: mov var_000000B8, 00000005h
0082A092: push 00000001h
0082A094: push 00000001h
0082A096: lea eax, var_000000C8
0082A09C: push eax
0082A09D: lea eax, var_000000B8
0082A0A3: push eax
0082A0A4: lea eax, var_000000D8
0082A0AA: push eax
0082A0AB: call 004109BEh ; msvbvm60.dll.rtcVarFromFormatVar
0082A0B0: mov var_00000190, 004412ACh ; 00
0082A0BA: mov var_00000198, 00000008h
0082A0C4: lea edx, var_00000198
0082A0CA: lea ecx, var_000000F8
0082A0D0: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0082A0D5: fld real8 ptr var_00000204
0082A0DB: fstp real8 ptr var_000000E0
0082A0E1: mov var_000000E8, 00000005h
0082A0EB: push 00000001h
0082A0ED: push 00000001h
0082A0EF: lea eax, var_000000F8
0082A0F5: push eax
0082A0F6: lea eax, var_000000E8
0082A0FC: push eax
0082A0FD: lea eax, var_00000108
0082A103: push eax
0082A104: call 004109BEh ; msvbvm60.dll.rtcVarFromFormatVar
0082A109: mov var_000001B0, 004412ACh ; 00
0082A113: mov var_000001B8, 00000008h
0082A11D: lea edx, var_000001B8
0082A123: lea ecx, var_00000138
0082A129: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0082A12E: fld real8 ptr var_0000020C
0082A134: fstp real8 ptr var_00000120
0082A13A: mov var_00000128, 00000005h
0082A144: push 00000001h
0082A146: push 00000001h
0082A148: lea eax, var_00000138
0082A14E: push eax
0082A14F: lea eax, var_00000128
0082A155: push eax
0082A156: lea eax, var_00000148
0082A15C: push eax
0082A15D: call 004109BEh ; msvbvm60.dll.rtcVarFromFormatVar
0082A162: lea eax, var_000000D8
0082A168: push eax
0082A169: lea eax, var_00000108
0082A16F: push eax
0082A170: lea eax, var_00000118
0082A176: push eax
0082A177: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0082A17C: push eax
0082A17D: lea eax, var_00000148
0082A183: push eax
0082A184: lea eax, var_00000158
0082A18A: push eax
0082A18B: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0082A190: push eax
0082A191: lea eax, var_0000008C
0082A197: push eax
0082A198: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
0082A19D: push eax
0082A19E: call 004109DCh ; Val(arg_1)
0082A1A3: fstp real8 ptr var_000001C0
0082A1A9: mov var_000001C8, 00000005h
0082A1B3: lea edx, var_000001C8
0082A1B9: lea ecx, var_80
0082A1BC: call 00410922h ; msvbvm60.dll.__vbaVarMove
0082A1C1: lea ecx, var_0000008C
0082A1C7: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082A1CC: lea eax, var_00000158
0082A1D2: push eax
0082A1D3: lea eax, var_00000148
0082A1D9: push eax
0082A1DA: lea eax, var_00000118
0082A1E0: push eax
0082A1E1: lea eax, var_00000138
0082A1E7: push eax
0082A1E8: lea eax, var_00000128
0082A1EE: push eax
0082A1EF: lea eax, var_00000108
0082A1F5: push eax
0082A1F6: lea eax, var_000000D8
0082A1FC: push eax
0082A1FD: lea eax, var_000000F8
0082A203: push eax
0082A204: lea eax, var_000000E8
0082A20A: push eax
0082A20B: lea eax, var_000000C8
0082A211: push eax
0082A212: lea eax, var_000000B8
0082A218: push eax
0082A219: push 0000000Bh
0082A21B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082A220: add esp, 00000030h
0082A223: mov var_04, 0000008Eh
0082A22A: mov eax, [ebp+08h]
0082A22D: mov eax, [eax]
0082A22F: push [ebp+08h]
0082A232: call [eax+00000318h]
0082A238: push eax
0082A239: lea eax, var_00000094
0082A23F: push eax
0082A240: call 00410A84h ; Set (object)
0082A245: mov var_00000210, eax
0082A24B: lea eax, var_00000098
0082A251: push eax
0082A252: push 00000000h
0082A254: mov eax, var_00000210
0082A25A: mov eax, [eax]
0082A25C: push var_00000210
0082A262: call [eax+40h]
0082A265: fclex 
0082A267: mov var_00000214, eax
0082A26D: cmp var_00000214, 00000000h
0082A274: jnl 82A296h
0082A276: push 00000040h
0082A278: push 00440DE8h
0082A27D: push var_00000210
0082A283: push var_00000214
0082A289: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082A28E: mov var_00000444, eax
0082A294: jmp 82A29Dh
0082A296: and var_00000444, 00000000h
0082A29D: mov eax, [ebp+08h]
0082A2A0: mov eax, [eax]
0082A2A2: push [ebp+08h]
0082A2A5: call [eax+00000318h]
0082A2AB: push eax
0082A2AC: lea eax, var_0000009C
0082A2B2: push eax
0082A2B3: call 00410A84h ; Set (object)
0082A2B8: mov var_00000218, eax
0082A2BE: lea eax, var_000000A0
0082A2C4: push eax
0082A2C5: push 00000001h
0082A2C7: mov eax, var_00000218
0082A2CD: mov eax, [eax]
0082A2CF: push var_00000218
0082A2D5: call [eax+40h]
0082A2D8: fclex 
0082A2DA: mov var_0000021C, eax
0082A2E0: cmp var_0000021C, 00000000h
0082A2E7: jnl 82A309h
0082A2E9: push 00000040h
0082A2EB: push 00440DE8h
0082A2F0: push var_00000218
0082A2F6: push var_0000021C
0082A2FC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082A301: mov var_00000448, eax
0082A307: jmp 82A310h
0082A309: and var_00000448, 00000000h
0082A310: mov eax, [ebp+08h]
0082A313: mov eax, [eax]
0082A315: push [ebp+08h]
0082A318: call [eax+00000318h]
0082A31E: push eax
0082A31F: lea eax, var_000000A4
0082A325: push eax
0082A326: call 00410A84h ; Set (object)
0082A32B: mov var_00000220, eax
0082A331: lea eax, var_000000A8
0082A337: push eax
0082A338: push 00000002h
0082A33A: mov eax, var_00000220
0082A340: mov eax, [eax]
0082A342: push var_00000220
0082A348: call [eax+40h]
0082A34B: fclex 
0082A34D: mov var_00000224, eax
0082A353: cmp var_00000224, 00000000h
0082A35A: jnl 82A37Ch
0082A35C: push 00000040h
0082A35E: push 00440DE8h
0082A363: push var_00000220
0082A369: push var_00000224
0082A36F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082A374: mov var_0000044C, eax
0082A37A: jmp 82A383h
0082A37C: and var_0000044C, 00000000h
0082A383: mov var_00000160, 004412ACh ; 00
0082A38D: mov var_00000168, 00000008h
0082A397: lea edx, var_00000168
0082A39D: lea ecx, var_000000C8
0082A3A3: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0082A3A8: mov eax, var_00000098
0082A3AE: mov var_00000340, eax
0082A3B4: and var_00000098, 00000000h
0082A3BB: mov eax, var_00000340
0082A3C1: mov var_000000B0, eax
0082A3C7: mov var_000000B8, 00000009h
0082A3D1: push 00000001h
0082A3D3: push 00000001h
0082A3D5: lea eax, var_000000C8
0082A3DB: push eax
0082A3DC: lea eax, var_000000B8
0082A3E2: push eax
0082A3E3: lea eax, var_000000D8
0082A3E9: push eax
0082A3EA: call 004109BEh ; msvbvm60.dll.rtcVarFromFormatVar
0082A3EF: mov var_00000170, 004412ACh ; 00
0082A3F9: mov var_00000178, 00000008h
0082A403: lea edx, var_00000178
0082A409: lea ecx, var_000000F8
0082A40F: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0082A414: mov eax, var_000000A0
0082A41A: mov var_00000344, eax
0082A420: and var_000000A0, 00000000h
0082A427: mov eax, var_00000344
0082A42D: mov var_000000E0, eax
0082A433: mov var_000000E8, 00000009h
0082A43D: push 00000001h
0082A43F: push 00000001h
0082A441: lea eax, var_000000F8
0082A447: push eax
0082A448: lea eax, var_000000E8
0082A44E: push eax
0082A44F: lea eax, var_00000108
0082A455: push eax
0082A456: call 004109BEh ; msvbvm60.dll.rtcVarFromFormatVar
0082A45B: mov var_00000180, 004412ACh ; 00
0082A465: mov var_00000188, 00000008h
0082A46F: lea edx, var_00000188
0082A475: lea ecx, var_00000128
0082A47B: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0082A480: mov eax, var_000000A8
0082A486: mov var_00000348, eax
0082A48C: and var_000000A8, 00000000h
0082A493: mov eax, var_00000348
0082A499: mov var_00000110, eax
0082A49F: mov var_00000118, 00000009h
0082A4A9: push 00000001h
0082A4AB: push 00000001h
0082A4AD: lea eax, var_00000128
0082A4B3: push eax
0082A4B4: lea eax, var_00000118
0082A4BA: push eax
0082A4BB: lea eax, var_00000138
0082A4C1: push eax
0082A4C2: call 004109BEh ; msvbvm60.dll.rtcVarFromFormatVar
0082A4C7: lea eax, var_000000D8
0082A4CD: push eax
0082A4CE: lea eax, var_00000108
0082A4D4: push eax
0082A4D5: lea eax, var_00000138
0082A4DB: push eax
0082A4DC: lea eax, var_00000148
0082A4E2: push eax
0082A4E3: call 004107B4h ; msvbvm60.dll.__vbaVarAdd
0082A4E8: push eax
0082A4E9: lea eax, var_00000158
0082A4EF: push eax
0082A4F0: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0082A4F5: push eax
0082A4F6: lea eax, var_0000008C
0082A4FC: push eax
0082A4FD: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
0082A502: push eax
0082A503: call 004109DCh ; Val(arg_1)
0082A508: call 00410814h ; msvbvm60.dll.__vbaFpI4
0082A50D: mov var_00000084, eax
0082A513: lea ecx, var_0000008C
0082A519: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082A51E: lea eax, var_000000A4
0082A524: push eax
0082A525: lea eax, var_0000009C
0082A52B: push eax
0082A52C: lea eax, var_00000094
0082A532: push eax
0082A533: push 00000003h
0082A535: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082A53A: add esp, 00000010h
0082A53D: lea eax, var_00000158
0082A543: push eax
0082A544: lea eax, var_00000148
0082A54A: push eax
0082A54B: lea eax, var_000000D8
0082A551: push eax
0082A552: lea eax, var_00000138
0082A558: push eax
0082A559: lea eax, var_00000108
0082A55F: push eax
0082A560: lea eax, var_00000128
0082A566: push eax
0082A567: lea eax, var_00000118
0082A56D: push eax
0082A56E: lea eax, var_000000F8
0082A574: push eax
0082A575: lea eax, var_000000E8
0082A57B: push eax
0082A57C: lea eax, var_000000C8
0082A582: push eax
0082A583: lea eax, var_000000B8
0082A589: push eax
0082A58A: push 0000000Bh
0082A58C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082A591: add esp, 00000030h
0082A594: mov var_04, 0000008Fh
0082A59B: mov eax, [ebp+08h]
0082A59E: mov eax, [eax]
0082A5A0: push [ebp+08h]
0082A5A3: call [eax+0000037Ch]
0082A5A9: push eax
0082A5AA: lea eax, var_00000094
0082A5B0: push eax
0082A5B1: call 00410A84h ; Set (object)
0082A5B6: mov var_00000210, eax
0082A5BC: lea eax, var_00000098
0082A5C2: push eax
0082A5C3: push 00000000h
0082A5C5: mov eax, var_00000210
0082A5CB: mov eax, [eax]
0082A5CD: push var_00000210
0082A5D3: call [eax+40h]
0082A5D6: fclex 
0082A5D8: mov var_00000214, eax
0082A5DE: cmp var_00000214, 00000000h
0082A5E5: jnl 82A607h
0082A5E7: push 00000040h
0082A5E9: push 00440DE8h
0082A5EE: push var_00000210
0082A5F4: push var_00000214
0082A5FA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082A5FF: mov var_00000450, eax
0082A605: jmp 82A60Eh
0082A607: and var_00000450, 00000000h
0082A60E: push 00000000h
0082A610: push 00000000h
0082A612: push var_00000098
0082A618: lea eax, var_000000B8
0082A61E: push eax
0082A61F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082A624: add esp, 00000010h
0082A627: push eax
0082A628: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082A62D: sub ax, FFFFh
0082A631: neg ax
0082A634: sbb eax, eax
0082A636: inc eax
0082A637: neg eax
0082A639: mov var_00000218, ax
0082A640: lea eax, var_00000098
0082A646: push eax
0082A647: lea eax, var_00000094
0082A64D: push eax
0082A64E: push 00000002h
0082A650: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082A655: add esp, 0000000Ch
0082A658: lea ecx, var_000000B8
0082A65E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082A663: movsx eax, word ptr var_00000218
0082A66A: test eax, eax
0082A66C: jz 0082A700h
0082A672: mov var_04, 00000090h
0082A679: mov eax, var_00000084
0082A67F: mov var_00000160, eax
0082A685: mov var_00000168, 00008003h
0082A68F: lea eax, var_80
0082A692: push eax
0082A693: lea eax, var_00000168
0082A699: push eax
0082A69A: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
0082A69F: movsx eax, ax
0082A6A2: test eax, eax
0082A6A4: jz 82A700h
0082A6A6: mov var_04, 00000091h
0082A6AD: lea eax, var_40
0082A6B0: push eax
0082A6B1: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082A6B6: mov var_00000210, eax
0082A6BC: cmp var_00000210, 00000012h
0082A6C3: jnb 82A6CEh
0082A6C5: and var_00000454, 00000000h
0082A6CC: jmp 82A6D9h
0082A6CE: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082A6D3: mov var_00000454, eax
0082A6D9: mov eax, var_00000210
0082A6DF: mov ecx, var_5C
0082A6E2: or word ptr [ecx+eax*2], FFFFh
0082A6E7: mov var_04, 00000092h
0082A6EE: mov ax, var_4C
0082A6F2: add ax, 0001h
0082A6F6: jo 0082E860h
0082A6FC: mov var_4C, ax
0082A700: mov var_04, 00000095h
0082A707: mov eax, [ebp+08h]
0082A70A: mov eax, [eax]
0082A70C: push [ebp+08h]
0082A70F: call [eax+0000037Ch]
0082A715: push eax
0082A716: lea eax, var_00000094
0082A71C: push eax
0082A71D: call 00410A84h ; Set (object)
0082A722: mov var_00000210, eax
0082A728: lea eax, var_00000098
0082A72E: push eax
0082A72F: push 00000001h
0082A731: mov eax, var_00000210
0082A737: mov eax, [eax]
0082A739: push var_00000210
0082A73F: call [eax+40h]
0082A742: fclex 
0082A744: mov var_00000214, eax
0082A74A: cmp var_00000214, 00000000h
0082A751: jnl 82A773h
0082A753: push 00000040h
0082A755: push 00440DE8h
0082A75A: push var_00000210
0082A760: push var_00000214
0082A766: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082A76B: mov var_00000458, eax
0082A771: jmp 82A77Ah
0082A773: and var_00000458, 00000000h
0082A77A: push 00000000h
0082A77C: push 00000000h
0082A77E: push var_00000098
0082A784: lea eax, var_000000B8
0082A78A: push eax
0082A78B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082A790: add esp, 00000010h
0082A793: push eax
0082A794: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082A799: sub ax, FFFFh
0082A79D: neg ax
0082A7A0: sbb eax, eax
0082A7A2: inc eax
0082A7A3: neg eax
0082A7A5: mov var_00000218, ax
0082A7AC: lea eax, var_00000098
0082A7B2: push eax
0082A7B3: lea eax, var_00000094
0082A7B9: push eax
0082A7BA: push 00000002h
0082A7BC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082A7C1: add esp, 0000000Ch
0082A7C4: lea ecx, var_000000B8
0082A7CA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082A7CF: movsx eax, word ptr var_00000218
0082A7D6: test eax, eax
0082A7D8: jz 0082A86Ch
0082A7DE: mov var_04, 00000096h
0082A7E5: mov eax, var_00000084
0082A7EB: mov var_00000160, eax
0082A7F1: mov var_00000168, 00008003h
0082A7FB: lea eax, var_80
0082A7FE: push eax
0082A7FF: lea eax, var_00000168
0082A805: push eax
0082A806: call 00410ABAh ; msvbvm60.dll.__vbaVarTstGe
0082A80B: movsx eax, ax
0082A80E: test eax, eax
0082A810: jz 82A86Ch
0082A812: mov var_04, 00000097h
0082A819: lea eax, var_40
0082A81C: push eax
0082A81D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082A822: mov var_00000210, eax
0082A828: cmp var_00000210, 00000012h
0082A82F: jnb 82A83Ah
0082A831: and var_0000045C, 00000000h
0082A838: jmp 82A845h
0082A83A: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082A83F: mov var_0000045C, eax
0082A845: mov eax, var_00000210
0082A84B: mov ecx, var_5C
0082A84E: or word ptr [ecx+eax*2], FFFFh
0082A853: mov var_04, 00000098h
0082A85A: mov ax, var_4C
0082A85E: add ax, 0001h
0082A862: jo 0082E860h
0082A868: mov var_4C, ax
0082A86C: mov var_04, 0000009Bh
0082A873: mov eax, [ebp+08h]
0082A876: mov eax, [eax]
0082A878: push [ebp+08h]
0082A87B: call [eax+0000037Ch]
0082A881: push eax
0082A882: lea eax, var_00000094
0082A888: push eax
0082A889: call 00410A84h ; Set (object)
0082A88E: mov var_00000210, eax
0082A894: lea eax, var_00000098
0082A89A: push eax
0082A89B: push 00000002h
0082A89D: mov eax, var_00000210
0082A8A3: mov eax, [eax]
0082A8A5: push var_00000210
0082A8AB: call [eax+40h]
0082A8AE: fclex 
0082A8B0: mov var_00000214, eax
0082A8B6: cmp var_00000214, 00000000h
0082A8BD: jnl 82A8DFh
0082A8BF: push 00000040h
0082A8C1: push 00440DE8h
0082A8C6: push var_00000210
0082A8CC: push var_00000214
0082A8D2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082A8D7: mov var_00000460, eax
0082A8DD: jmp 82A8E6h
0082A8DF: and var_00000460, 00000000h
0082A8E6: push 00000000h
0082A8E8: push 00000000h
0082A8EA: push var_00000098
0082A8F0: lea eax, var_000000B8
0082A8F6: push eax
0082A8F7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082A8FC: add esp, 00000010h
0082A8FF: push eax
0082A900: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082A905: sub ax, FFFFh
0082A909: neg ax
0082A90C: sbb eax, eax
0082A90E: inc eax
0082A90F: neg eax
0082A911: mov var_00000218, ax
0082A918: lea eax, var_00000098
0082A91E: push eax
0082A91F: lea eax, var_00000094
0082A925: push eax
0082A926: push 00000002h
0082A928: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082A92D: add esp, 0000000Ch
0082A930: lea ecx, var_000000B8
0082A936: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082A93B: movsx eax, word ptr var_00000218
0082A942: test eax, eax
0082A944: jz 0082A9D8h
0082A94A: mov var_04, 0000009Ch
0082A951: mov eax, var_00000084
0082A957: mov var_00000160, eax
0082A95D: mov var_00000168, 00008003h
0082A967: lea eax, var_80
0082A96A: push eax
0082A96B: lea eax, var_00000168
0082A971: push eax
0082A972: call 00410B6Eh ; msvbvm60.dll.__vbaVarTstLe
0082A977: movsx eax, ax
0082A97A: test eax, eax
0082A97C: jz 82A9D8h
0082A97E: mov var_04, 0000009Dh
0082A985: lea eax, var_40
0082A988: push eax
0082A989: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082A98E: mov var_00000210, eax
0082A994: cmp var_00000210, 00000012h
0082A99B: jnb 82A9A6h
0082A99D: and var_00000464, 00000000h
0082A9A4: jmp 82A9B1h
0082A9A6: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082A9AB: mov var_00000464, eax
0082A9B1: mov eax, var_00000210
0082A9B7: mov ecx, var_5C
0082A9BA: or word ptr [ecx+eax*2], FFFFh
0082A9BF: mov var_04, 0000009Eh
0082A9C6: mov ax, var_4C
0082A9CA: add ax, 0001h
0082A9CE: jo 0082E860h
0082A9D4: mov var_4C, ax
0082A9D8: jmp 0082DA8Eh
0082A9DD: mov var_04, 000000A1h
0082A9E4: mov var_00000160, 0000000Bh
0082A9EE: mov var_00000168, 00008002h
0082A9F8: lea eax, var_000002B8
0082A9FE: push eax
0082A9FF: lea eax, var_00000168
0082AA05: push eax
0082AA06: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
0082AA0B: movsx eax, ax
0082AA0E: test eax, eax
0082AA10: jz 0082B6CEh
0082AA16: mov var_04, 000000A2h
0082AA1D: lea eax, var_40
0082AA20: push eax
0082AA21: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082AA26: mov var_00000180, eax
0082AA2C: mov var_00000188, 00000003h
0082AA36: mov eax, var_00000088
0082AA3C: mov var_00000160, eax
0082AA42: mov var_00000168, 00000008h
0082AA4C: push 00000010h
0082AA4E: pop eax
0082AA4F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082AA54: lea esi, var_00000188
0082AA5A: mov edi, esp
0082AA5C: movsd 
0082AA5D: movsd 
0082AA5E: movsd 
0082AA5F: movsd 
0082AA60: push 00000001h
0082AA62: push 00000010h
0082AA64: push 00440E58h
0082AA69: push 00000010h
0082AA6B: pop eax
0082AA6C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082AA71: lea esi, var_00000168
0082AA77: mov edi, esp
0082AA79: movsd 
0082AA7A: movsd 
0082AA7B: movsd 
0082AA7C: movsd 
0082AA7D: push 00000001h
0082AA7F: push 00000000h
0082AA81: push 00440E48h
0082AA86: push 00000000h
0082AA88: push 00000018h
0082AA8A: push var_00000228
0082AA90: lea eax, var_000000B8
0082AA96: push eax
0082AA97: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082AA9C: add esp, 00000010h
0082AA9F: push eax
0082AAA0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082AAA5: push eax
0082AAA6: lea eax, var_00000094
0082AAAC: push eax
0082AAAD: call 00410A84h ; Set (object)
0082AAB2: push eax
0082AAB3: lea eax, var_000000C8
0082AAB9: push eax
0082AABA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082AABF: add esp, 00000020h
0082AAC2: push eax
0082AAC3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082AAC8: push eax
0082AAC9: lea eax, var_00000098
0082AACF: push eax
0082AAD0: call 00410A84h ; Set (object)
0082AAD5: push eax
0082AAD6: lea eax, var_000000D8
0082AADC: push eax
0082AADD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082AAE2: add esp, 00000020h
0082AAE5: push eax
0082AAE6: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082AAEB: mov edx, eax
0082AAED: lea ecx, var_0000008C
0082AAF3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0082AAF8: push eax
0082AAF9: push 00000000h
0082AAFB: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0082AB00: neg eax
0082AB02: sbb eax, eax
0082AB04: neg eax
0082AB06: neg eax
0082AB08: mov var_00000210, ax
0082AB0F: lea ecx, var_0000008C
0082AB15: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082AB1A: lea eax, var_00000098
0082AB20: push eax
0082AB21: lea eax, var_00000094
0082AB27: push eax
0082AB28: push 00000002h
0082AB2A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082AB2F: add esp, 0000000Ch
0082AB32: lea eax, var_000000D8
0082AB38: push eax
0082AB39: lea eax, var_000000C8
0082AB3F: push eax
0082AB40: lea eax, var_000000B8
0082AB46: push eax
0082AB47: push 00000003h
0082AB49: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082AB4E: add esp, 00000010h
0082AB51: movsx eax, word ptr var_00000210
0082AB58: test eax, eax
0082AB5A: jz 0082B6C9h
0082AB60: mov var_04, 000000A3h
0082AB67: lea eax, var_40
0082AB6A: push eax
0082AB6B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082AB70: mov var_00000180, eax
0082AB76: mov var_00000188, 00000003h
0082AB80: mov eax, var_00000088
0082AB86: mov var_00000160, eax
0082AB8C: mov var_00000168, 00000008h
0082AB96: push 00000010h
0082AB98: pop eax
0082AB99: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082AB9E: lea esi, var_00000188
0082ABA4: mov edi, esp
0082ABA6: movsd 
0082ABA7: movsd 
0082ABA8: movsd 
0082ABA9: movsd 
0082ABAA: push 00000001h
0082ABAC: push 00000010h
0082ABAE: push 00440E58h
0082ABB3: push 00000010h
0082ABB5: pop eax
0082ABB6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082ABBB: lea esi, var_00000168
0082ABC1: mov edi, esp
0082ABC3: movsd 
0082ABC4: movsd 
0082ABC5: movsd 
0082ABC6: movsd 
0082ABC7: push 00000001h
0082ABC9: push 00000000h
0082ABCB: push 00440E48h
0082ABD0: push 00000000h
0082ABD2: push 00000018h
0082ABD4: push var_00000228
0082ABDA: lea eax, var_000000B8
0082ABE0: push eax
0082ABE1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082ABE6: add esp, 00000010h
0082ABE9: push eax
0082ABEA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082ABEF: push eax
0082ABF0: lea eax, var_00000094
0082ABF6: push eax
0082ABF7: call 00410A84h ; Set (object)
0082ABFC: push eax
0082ABFD: lea eax, var_000000C8
0082AC03: push eax
0082AC04: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082AC09: add esp, 00000020h
0082AC0C: push eax
0082AC0D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082AC12: push eax
0082AC13: lea eax, var_00000098
0082AC19: push eax
0082AC1A: call 00410A84h ; Set (object)
0082AC1F: push eax
0082AC20: lea eax, var_000000D8
0082AC26: push eax
0082AC27: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082AC2C: add esp, 00000020h
0082AC2F: mov var_000001A0, 004412B8h
0082AC39: mov var_000001A8, 00000008h
0082AC43: lea edx, var_000001A8
0082AC49: lea ecx, var_000000E8
0082AC4F: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0082AC54: push 00000000h
0082AC56: push 00000003h
0082AC58: lea eax, var_000000E8
0082AC5E: push eax
0082AC5F: lea eax, var_000000D8
0082AC65: push eax
0082AC66: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082AC6B: mov edx, eax
0082AC6D: lea ecx, var_0000008C
0082AC73: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0082AC78: push eax
0082AC79: lea eax, var_000000F8
0082AC7F: push eax
0082AC80: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
0082AC85: lea eax, var_000000F8
0082AC8B: push eax
0082AC8C: push 00002008h
0082AC91: call 0041088Ch ; msvbvm60.dll.__vbaAryVar
0082AC96: mov var_000001F4, eax
0082AC9C: lea eax, var_000001F4
0082ACA2: push eax
0082ACA3: lea eax, var_50
0082ACA6: push eax
0082ACA7: call 00410892h ; msvbvm60.dll.__vbaAryCopy
0082ACAC: lea ecx, var_0000008C
0082ACB2: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082ACB7: lea eax, var_00000098
0082ACBD: push eax
0082ACBE: lea eax, var_00000094
0082ACC4: push eax
0082ACC5: push 00000002h
0082ACC7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082ACCC: add esp, 0000000Ch
0082ACCF: lea eax, var_000000F8
0082ACD5: push eax
0082ACD6: lea eax, var_000000E8
0082ACDC: push eax
0082ACDD: lea eax, var_000000D8
0082ACE3: push eax
0082ACE4: lea eax, var_000000C8
0082ACEA: push eax
0082ACEB: lea eax, var_000000B8
0082ACF1: push eax
0082ACF2: push 00000005h
0082ACF4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082ACF9: add esp, 00000018h
0082ACFC: mov var_04, 000000A4h
0082AD03: push 00000000h
0082AD05: push var_50
0082AD08: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0082AD0D: push [eax]
0082AD0F: call 004109DCh ; Val(arg_1)
0082AD14: fstp real8 ptr var_000001FC
0082AD1A: push 00000001h
0082AD1C: push var_50
0082AD1F: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0082AD24: push [eax]
0082AD26: call 004109DCh ; Val(arg_1)
0082AD2B: fstp real8 ptr var_00000204
0082AD31: push 00000002h
0082AD33: push var_50
0082AD36: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0082AD3B: push [eax]
0082AD3D: call 004109DCh ; Val(arg_1)
0082AD42: fstp real8 ptr var_0000020C
0082AD48: mov var_00000170, 004412ACh ; 00
0082AD52: mov var_00000178, 00000008h
0082AD5C: lea edx, var_00000178
0082AD62: lea ecx, var_000000C8
0082AD68: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0082AD6D: fld real8 ptr var_000001FC
0082AD73: fstp real8 ptr var_000000B0
0082AD79: mov var_000000B8, 00000005h
0082AD83: push 00000001h
0082AD85: push 00000001h
0082AD87: lea eax, var_000000C8
0082AD8D: push eax
0082AD8E: lea eax, var_000000B8
0082AD94: push eax
0082AD95: lea eax, var_000000D8
0082AD9B: push eax
0082AD9C: call 004109BEh ; msvbvm60.dll.rtcVarFromFormatVar
0082ADA1: mov var_00000190, 004412ACh ; 00
0082ADAB: mov var_00000198, 00000008h
0082ADB5: lea edx, var_00000198
0082ADBB: lea ecx, var_000000F8
0082ADC1: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0082ADC6: fld real8 ptr var_00000204
0082ADCC: fstp real8 ptr var_000000E0
0082ADD2: mov var_000000E8, 00000005h
0082ADDC: push 00000001h
0082ADDE: push 00000001h
0082ADE0: lea eax, var_000000F8
0082ADE6: push eax
0082ADE7: lea eax, var_000000E8
0082ADED: push eax
0082ADEE: lea eax, var_00000108
0082ADF4: push eax
0082ADF5: call 004109BEh ; msvbvm60.dll.rtcVarFromFormatVar
0082ADFA: mov var_000001B0, 004412ACh ; 00
0082AE04: mov var_000001B8, 00000008h
0082AE0E: lea edx, var_000001B8
0082AE14: lea ecx, var_00000138
0082AE1A: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0082AE1F: fld real8 ptr var_0000020C
0082AE25: fstp real8 ptr var_00000120
0082AE2B: mov var_00000128, 00000005h
0082AE35: push 00000001h
0082AE37: push 00000001h
0082AE39: lea eax, var_00000138
0082AE3F: push eax
0082AE40: lea eax, var_00000128
0082AE46: push eax
0082AE47: lea eax, var_00000148
0082AE4D: push eax
0082AE4E: call 004109BEh ; msvbvm60.dll.rtcVarFromFormatVar
0082AE53: lea eax, var_000000D8
0082AE59: push eax
0082AE5A: lea eax, var_00000108
0082AE60: push eax
0082AE61: lea eax, var_00000118
0082AE67: push eax
0082AE68: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0082AE6D: push eax
0082AE6E: lea eax, var_00000148
0082AE74: push eax
0082AE75: lea eax, var_00000158
0082AE7B: push eax
0082AE7C: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0082AE81: push eax
0082AE82: lea eax, var_0000008C
0082AE88: push eax
0082AE89: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
0082AE8E: push eax
0082AE8F: call 004109DCh ; Val(arg_1)
0082AE94: fstp real8 ptr var_000001C0
0082AE9A: mov var_000001C8, 00000005h
0082AEA4: lea edx, var_000001C8
0082AEAA: lea ecx, var_80
0082AEAD: call 00410922h ; msvbvm60.dll.__vbaVarMove
0082AEB2: lea ecx, var_0000008C
0082AEB8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082AEBD: lea eax, var_00000158
0082AEC3: push eax
0082AEC4: lea eax, var_00000148
0082AECA: push eax
0082AECB: lea eax, var_00000118
0082AED1: push eax
0082AED2: lea eax, var_00000138
0082AED8: push eax
0082AED9: lea eax, var_00000128
0082AEDF: push eax
0082AEE0: lea eax, var_00000108
0082AEE6: push eax
0082AEE7: lea eax, var_000000D8
0082AEED: push eax
0082AEEE: lea eax, var_000000F8
0082AEF4: push eax
0082AEF5: lea eax, var_000000E8
0082AEFB: push eax
0082AEFC: lea eax, var_000000C8
0082AF02: push eax
0082AF03: lea eax, var_000000B8
0082AF09: push eax
0082AF0A: push 0000000Bh
0082AF0C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082AF11: add esp, 00000030h
0082AF14: mov var_04, 000000A5h
0082AF1B: mov eax, [ebp+08h]
0082AF1E: mov eax, [eax]
0082AF20: push [ebp+08h]
0082AF23: call [eax+00000314h]
0082AF29: push eax
0082AF2A: lea eax, var_00000094
0082AF30: push eax
0082AF31: call 00410A84h ; Set (object)
0082AF36: mov var_00000210, eax
0082AF3C: lea eax, var_00000098
0082AF42: push eax
0082AF43: push 00000000h
0082AF45: mov eax, var_00000210
0082AF4B: mov eax, [eax]
0082AF4D: push var_00000210
0082AF53: call [eax+40h]
0082AF56: fclex 
0082AF58: mov var_00000214, eax
0082AF5E: cmp var_00000214, 00000000h
0082AF65: jnl 82AF87h
0082AF67: push 00000040h
0082AF69: push 00440DE8h
0082AF6E: push var_00000210
0082AF74: push var_00000214
0082AF7A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082AF7F: mov var_00000468, eax
0082AF85: jmp 82AF8Eh
0082AF87: and var_00000468, 00000000h
0082AF8E: mov eax, [ebp+08h]
0082AF91: mov eax, [eax]
0082AF93: push [ebp+08h]
0082AF96: call [eax+00000314h]
0082AF9C: push eax
0082AF9D: lea eax, var_0000009C
0082AFA3: push eax
0082AFA4: call 00410A84h ; Set (object)
0082AFA9: mov var_00000218, eax
0082AFAF: lea eax, var_000000A0
0082AFB5: push eax
0082AFB6: push 00000001h
0082AFB8: mov eax, var_00000218
0082AFBE: mov eax, [eax]
0082AFC0: push var_00000218
0082AFC6: call [eax+40h]
0082AFC9: fclex 
0082AFCB: mov var_0000021C, eax
0082AFD1: cmp var_0000021C, 00000000h
0082AFD8: jnl 82AFFAh
0082AFDA: push 00000040h
0082AFDC: push 00440DE8h
0082AFE1: push var_00000218
0082AFE7: push var_0000021C
0082AFED: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082AFF2: mov var_0000046C, eax
0082AFF8: jmp 82B001h
0082AFFA: and var_0000046C, 00000000h
0082B001: mov eax, [ebp+08h]
0082B004: mov eax, [eax]
0082B006: push [ebp+08h]
0082B009: call [eax+00000314h]
0082B00F: push eax
0082B010: lea eax, var_000000A4
0082B016: push eax
0082B017: call 00410A84h ; Set (object)
0082B01C: mov var_00000220, eax
0082B022: lea eax, var_000000A8
0082B028: push eax
0082B029: push 00000002h
0082B02B: mov eax, var_00000220
0082B031: mov eax, [eax]
0082B033: push var_00000220
0082B039: call [eax+40h]
0082B03C: fclex 
0082B03E: mov var_00000224, eax
0082B044: cmp var_00000224, 00000000h
0082B04B: jnl 82B06Dh
0082B04D: push 00000040h
0082B04F: push 00440DE8h
0082B054: push var_00000220
0082B05A: push var_00000224
0082B060: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082B065: mov var_00000470, eax
0082B06B: jmp 82B074h
0082B06D: and var_00000470, 00000000h
0082B074: mov var_00000160, 004412ACh ; 00
0082B07E: mov var_00000168, 00000008h
0082B088: lea edx, var_00000168
0082B08E: lea ecx, var_000000C8
0082B094: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0082B099: mov eax, var_00000098
0082B09F: mov var_0000034C, eax
0082B0A5: and var_00000098, 00000000h
0082B0AC: mov eax, var_0000034C
0082B0B2: mov var_000000B0, eax
0082B0B8: mov var_000000B8, 00000009h
0082B0C2: push 00000001h
0082B0C4: push 00000001h
0082B0C6: lea eax, var_000000C8
0082B0CC: push eax
0082B0CD: lea eax, var_000000B8
0082B0D3: push eax
0082B0D4: lea eax, var_000000D8
0082B0DA: push eax
0082B0DB: call 004109BEh ; msvbvm60.dll.rtcVarFromFormatVar
0082B0E0: mov var_00000170, 004412ACh ; 00
0082B0EA: mov var_00000178, 00000008h
0082B0F4: lea edx, var_00000178
0082B0FA: lea ecx, var_000000F8
0082B100: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0082B105: mov eax, var_000000A0
0082B10B: mov var_00000350, eax
0082B111: and var_000000A0, 00000000h
0082B118: mov eax, var_00000350
0082B11E: mov var_000000E0, eax
0082B124: mov var_000000E8, 00000009h
0082B12E: push 00000001h
0082B130: push 00000001h
0082B132: lea eax, var_000000F8
0082B138: push eax
0082B139: lea eax, var_000000E8
0082B13F: push eax
0082B140: lea eax, var_00000108
0082B146: push eax
0082B147: call 004109BEh ; msvbvm60.dll.rtcVarFromFormatVar
0082B14C: mov var_00000180, 004412ACh ; 00
0082B156: mov var_00000188, 00000008h
0082B160: lea edx, var_00000188
0082B166: lea ecx, var_00000128
0082B16C: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0082B171: mov eax, var_000000A8
0082B177: mov var_00000354, eax
0082B17D: and var_000000A8, 00000000h
0082B184: mov eax, var_00000354
0082B18A: mov var_00000110, eax
0082B190: mov var_00000118, 00000009h
0082B19A: push 00000001h
0082B19C: push 00000001h
0082B19E: lea eax, var_00000128
0082B1A4: push eax
0082B1A5: lea eax, var_00000118
0082B1AB: push eax
0082B1AC: lea eax, var_00000138
0082B1B2: push eax
0082B1B3: call 004109BEh ; msvbvm60.dll.rtcVarFromFormatVar
0082B1B8: lea eax, var_000000D8
0082B1BE: push eax
0082B1BF: lea eax, var_00000108
0082B1C5: push eax
0082B1C6: lea eax, var_00000138
0082B1CC: push eax
0082B1CD: lea eax, var_00000148
0082B1D3: push eax
0082B1D4: call 004107B4h ; msvbvm60.dll.__vbaVarAdd
0082B1D9: push eax
0082B1DA: lea eax, var_00000158
0082B1E0: push eax
0082B1E1: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0082B1E6: push eax
0082B1E7: lea eax, var_0000008C
0082B1ED: push eax
0082B1EE: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
0082B1F3: push eax
0082B1F4: call 004109DCh ; Val(arg_1)
0082B1F9: call 00410814h ; msvbvm60.dll.__vbaFpI4
0082B1FE: mov var_00000084, eax
0082B204: lea ecx, var_0000008C
0082B20A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082B20F: lea eax, var_000000A4
0082B215: push eax
0082B216: lea eax, var_0000009C
0082B21C: push eax
0082B21D: lea eax, var_00000094
0082B223: push eax
0082B224: push 00000003h
0082B226: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082B22B: add esp, 00000010h
0082B22E: lea eax, var_00000158
0082B234: push eax
0082B235: lea eax, var_00000148
0082B23B: push eax
0082B23C: lea eax, var_000000D8
0082B242: push eax
0082B243: lea eax, var_00000138
0082B249: push eax
0082B24A: lea eax, var_00000108
0082B250: push eax
0082B251: lea eax, var_00000128
0082B257: push eax
0082B258: lea eax, var_00000118
0082B25E: push eax
0082B25F: lea eax, var_000000F8
0082B265: push eax
0082B266: lea eax, var_000000E8
0082B26C: push eax
0082B26D: lea eax, var_000000C8
0082B273: push eax
0082B274: lea eax, var_000000B8
0082B27A: push eax
0082B27B: push 0000000Bh
0082B27D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082B282: add esp, 00000030h
0082B285: mov var_04, 000000A6h
0082B28C: mov eax, [ebp+08h]
0082B28F: mov eax, [eax]
0082B291: push [ebp+08h]
0082B294: call [eax+00000378h]
0082B29A: push eax
0082B29B: lea eax, var_00000094
0082B2A1: push eax
0082B2A2: call 00410A84h ; Set (object)
0082B2A7: mov var_00000210, eax
0082B2AD: lea eax, var_00000098
0082B2B3: push eax
0082B2B4: push 00000000h
0082B2B6: mov eax, var_00000210
0082B2BC: mov eax, [eax]
0082B2BE: push var_00000210
0082B2C4: call [eax+40h]
0082B2C7: fclex 
0082B2C9: mov var_00000214, eax
0082B2CF: cmp var_00000214, 00000000h
0082B2D6: jnl 82B2F8h
0082B2D8: push 00000040h
0082B2DA: push 00440DE8h
0082B2DF: push var_00000210
0082B2E5: push var_00000214
0082B2EB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082B2F0: mov var_00000474, eax
0082B2F6: jmp 82B2FFh
0082B2F8: and var_00000474, 00000000h
0082B2FF: push 00000000h
0082B301: push 00000000h
0082B303: push var_00000098
0082B309: lea eax, var_000000B8
0082B30F: push eax
0082B310: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082B315: add esp, 00000010h
0082B318: push eax
0082B319: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082B31E: sub ax, FFFFh
0082B322: neg ax
0082B325: sbb eax, eax
0082B327: inc eax
0082B328: neg eax
0082B32A: mov var_00000218, ax
0082B331: lea eax, var_00000098
0082B337: push eax
0082B338: lea eax, var_00000094
0082B33E: push eax
0082B33F: push 00000002h
0082B341: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082B346: add esp, 0000000Ch
0082B349: lea ecx, var_000000B8
0082B34F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082B354: movsx eax, word ptr var_00000218
0082B35B: test eax, eax
0082B35D: jz 0082B3F1h
0082B363: mov var_04, 000000A7h
0082B36A: mov eax, var_00000084
0082B370: mov var_00000160, eax
0082B376: mov var_00000168, 00008003h
0082B380: lea eax, var_80
0082B383: push eax
0082B384: lea eax, var_00000168
0082B38A: push eax
0082B38B: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
0082B390: movsx eax, ax
0082B393: test eax, eax
0082B395: jz 82B3F1h
0082B397: mov var_04, 000000A8h
0082B39E: lea eax, var_40
0082B3A1: push eax
0082B3A2: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082B3A7: mov var_00000210, eax
0082B3AD: cmp var_00000210, 00000012h
0082B3B4: jnb 82B3BFh
0082B3B6: and var_00000478, 00000000h
0082B3BD: jmp 82B3CAh
0082B3BF: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082B3C4: mov var_00000478, eax
0082B3CA: mov eax, var_00000210
0082B3D0: mov ecx, var_5C
0082B3D3: or word ptr [ecx+eax*2], FFFFh
0082B3D8: mov var_04, 000000A9h
0082B3DF: mov ax, var_4C
0082B3E3: add ax, 0001h
0082B3E7: jo 0082E860h
0082B3ED: mov var_4C, ax
0082B3F1: mov var_04, 000000ACh
0082B3F8: mov eax, [ebp+08h]
0082B3FB: mov eax, [eax]
0082B3FD: push [ebp+08h]
0082B400: call [eax+00000378h]
0082B406: push eax
0082B407: lea eax, var_00000094
0082B40D: push eax
0082B40E: call 00410A84h ; Set (object)
0082B413: mov var_00000210, eax
0082B419: lea eax, var_00000098
0082B41F: push eax
0082B420: push 00000001h
0082B422: mov eax, var_00000210
0082B428: mov eax, [eax]
0082B42A: push var_00000210
0082B430: call [eax+40h]
0082B433: fclex 
0082B435: mov var_00000214, eax
0082B43B: cmp var_00000214, 00000000h
0082B442: jnl 82B464h
0082B444: push 00000040h
0082B446: push 00440DE8h
0082B44B: push var_00000210
0082B451: push var_00000214
0082B457: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082B45C: mov var_0000047C, eax
0082B462: jmp 82B46Bh
0082B464: and var_0000047C, 00000000h
0082B46B: push 00000000h
0082B46D: push 00000000h
0082B46F: push var_00000098
0082B475: lea eax, var_000000B8
0082B47B: push eax
0082B47C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082B481: add esp, 00000010h
0082B484: push eax
0082B485: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082B48A: sub ax, FFFFh
0082B48E: neg ax
0082B491: sbb eax, eax
0082B493: inc eax
0082B494: neg eax
0082B496: mov var_00000218, ax
0082B49D: lea eax, var_00000098
0082B4A3: push eax
0082B4A4: lea eax, var_00000094
0082B4AA: push eax
0082B4AB: push 00000002h
0082B4AD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082B4B2: add esp, 0000000Ch
0082B4B5: lea ecx, var_000000B8
0082B4BB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082B4C0: movsx eax, word ptr var_00000218
0082B4C7: test eax, eax
0082B4C9: jz 0082B55Dh
0082B4CF: mov var_04, 000000ADh
0082B4D6: mov eax, var_00000084
0082B4DC: mov var_00000160, eax
0082B4E2: mov var_00000168, 00008003h
0082B4EC: lea eax, var_80
0082B4EF: push eax
0082B4F0: lea eax, var_00000168
0082B4F6: push eax
0082B4F7: call 00410ABAh ; msvbvm60.dll.__vbaVarTstGe
0082B4FC: movsx eax, ax
0082B4FF: test eax, eax
0082B501: jz 82B55Dh
0082B503: mov var_04, 000000AEh
0082B50A: lea eax, var_40
0082B50D: push eax
0082B50E: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082B513: mov var_00000210, eax
0082B519: cmp var_00000210, 00000012h
0082B520: jnb 82B52Bh
0082B522: and var_00000480, 00000000h
0082B529: jmp 82B536h
0082B52B: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082B530: mov var_00000480, eax
0082B536: mov eax, var_00000210
0082B53C: mov ecx, var_5C
0082B53F: or word ptr [ecx+eax*2], FFFFh
0082B544: mov var_04, 000000AFh
0082B54B: mov ax, var_4C
0082B54F: add ax, 0001h
0082B553: jo 0082E860h
0082B559: mov var_4C, ax
0082B55D: mov var_04, 000000B2h
0082B564: mov eax, [ebp+08h]
0082B567: mov eax, [eax]
0082B569: push [ebp+08h]
0082B56C: call [eax+00000378h]
0082B572: push eax
0082B573: lea eax, var_00000094
0082B579: push eax
0082B57A: call 00410A84h ; Set (object)
0082B57F: mov var_00000210, eax
0082B585: lea eax, var_00000098
0082B58B: push eax
0082B58C: push 00000002h
0082B58E: mov eax, var_00000210
0082B594: mov eax, [eax]
0082B596: push var_00000210
0082B59C: call [eax+40h]
0082B59F: fclex 
0082B5A1: mov var_00000214, eax
0082B5A7: cmp var_00000214, 00000000h
0082B5AE: jnl 82B5D0h
0082B5B0: push 00000040h
0082B5B2: push 00440DE8h
0082B5B7: push var_00000210
0082B5BD: push var_00000214
0082B5C3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082B5C8: mov var_00000484, eax
0082B5CE: jmp 82B5D7h
0082B5D0: and var_00000484, 00000000h
0082B5D7: push 00000000h
0082B5D9: push 00000000h
0082B5DB: push var_00000098
0082B5E1: lea eax, var_000000B8
0082B5E7: push eax
0082B5E8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082B5ED: add esp, 00000010h
0082B5F0: push eax
0082B5F1: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082B5F6: sub ax, FFFFh
0082B5FA: neg ax
0082B5FD: sbb eax, eax
0082B5FF: inc eax
0082B600: neg eax
0082B602: mov var_00000218, ax
0082B609: lea eax, var_00000098
0082B60F: push eax
0082B610: lea eax, var_00000094
0082B616: push eax
0082B617: push 00000002h
0082B619: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082B61E: add esp, 0000000Ch
0082B621: lea ecx, var_000000B8
0082B627: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082B62C: movsx eax, word ptr var_00000218
0082B633: test eax, eax
0082B635: jz 0082B6C9h
0082B63B: mov var_04, 000000B3h
0082B642: mov eax, var_00000084
0082B648: mov var_00000160, eax
0082B64E: mov var_00000168, 00008003h
0082B658: lea eax, var_80
0082B65B: push eax
0082B65C: lea eax, var_00000168
0082B662: push eax
0082B663: call 00410B6Eh ; msvbvm60.dll.__vbaVarTstLe
0082B668: movsx eax, ax
0082B66B: test eax, eax
0082B66D: jz 82B6C9h
0082B66F: mov var_04, 000000B4h
0082B676: lea eax, var_40
0082B679: push eax
0082B67A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082B67F: mov var_00000210, eax
0082B685: cmp var_00000210, 00000012h
0082B68C: jnb 82B697h
0082B68E: and var_00000488, 00000000h
0082B695: jmp 82B6A2h
0082B697: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082B69C: mov var_00000488, eax
0082B6A2: mov eax, var_00000210
0082B6A8: mov ecx, var_5C
0082B6AB: or word ptr [ecx+eax*2], FFFFh
0082B6B0: mov var_04, 000000B5h
0082B6B7: mov ax, var_4C
0082B6BB: add ax, 0001h
0082B6BF: jo 0082E860h
0082B6C5: mov var_4C, ax
0082B6C9: jmp 0082DA8Eh
0082B6CE: mov var_04, 000000B9h
0082B6D5: mov var_00000160, 0000000Ch
0082B6DF: mov var_00000168, 00008002h
0082B6E9: lea eax, var_000002B8
0082B6EF: push eax
0082B6F0: lea eax, var_00000168
0082B6F6: push eax
0082B6F7: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
0082B6FC: movsx eax, ax
0082B6FF: test eax, eax
0082B701: jz 0082C0B0h
0082B707: mov var_04, 000000BAh
0082B70E: mov eax, [ebp+08h]
0082B711: mov eax, [eax]
0082B713: push [ebp+08h]
0082B716: call [eax+00000380h]
0082B71C: push eax
0082B71D: lea eax, var_00000094
0082B723: push eax
0082B724: call 00410A84h ; Set (object)
0082B729: mov var_00000210, eax
0082B72F: lea eax, var_00000098
0082B735: push eax
0082B736: push 00000000h
0082B738: mov eax, var_00000210
0082B73E: mov eax, [eax]
0082B740: push var_00000210
0082B746: call [eax+40h]
0082B749: fclex 
0082B74B: mov var_00000214, eax
0082B751: cmp var_00000214, 00000000h
0082B758: jnl 82B77Ah
0082B75A: push 00000040h
0082B75C: push 00440DE8h
0082B761: push var_00000210
0082B767: push var_00000214
0082B76D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082B772: mov var_0000048C, eax
0082B778: jmp 82B781h
0082B77A: and var_0000048C, 00000000h
0082B781: push 00000000h
0082B783: push 00000000h
0082B785: push var_00000098
0082B78B: lea eax, var_000000B8
0082B791: push eax
0082B792: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082B797: add esp, 00000010h
0082B79A: push eax
0082B79B: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082B7A0: sub ax, FFFFh
0082B7A4: neg ax
0082B7A7: sbb eax, eax
0082B7A9: inc eax
0082B7AA: neg eax
0082B7AC: mov var_00000218, ax
0082B7B3: lea eax, var_00000098
0082B7B9: push eax
0082B7BA: lea eax, var_00000094
0082B7C0: push eax
0082B7C1: push 00000002h
0082B7C3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082B7C8: add esp, 0000000Ch
0082B7CB: lea ecx, var_000000B8
0082B7D1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082B7D6: movsx eax, word ptr var_00000218
0082B7DD: test eax, eax
0082B7DF: jz 0082BA13h
0082B7E5: mov var_04, 000000BBh
0082B7EC: mov eax, [ebp+08h]
0082B7EF: mov eax, [eax]
0082B7F1: push [ebp+08h]
0082B7F4: call [eax+00000310h]
0082B7FA: push eax
0082B7FB: lea eax, var_0000009C
0082B801: push eax
0082B802: call 00410A84h ; Set (object)
0082B807: mov var_00000210, eax
0082B80D: lea eax, var_0000008C
0082B813: push eax
0082B814: mov eax, var_00000210
0082B81A: mov eax, [eax]
0082B81C: push var_00000210
0082B822: call [eax+000000A0h]
0082B828: fclex 
0082B82A: mov var_00000214, eax
0082B830: cmp var_00000214, 00000000h
0082B837: jnl 82B85Ch
0082B839: push 000000A0h
0082B83E: push 00440E08h
0082B843: push var_00000210
0082B849: push var_00000214
0082B84F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082B854: mov var_00000490, eax
0082B85A: jmp 82B863h
0082B85C: and var_00000490, 00000000h
0082B863: lea eax, var_40
0082B866: push eax
0082B867: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082B86C: mov var_00000180, eax
0082B872: mov var_00000188, 00000003h
0082B87C: mov eax, var_00000088
0082B882: mov var_00000160, eax
0082B888: mov var_00000168, 00000008h
0082B892: push var_0000008C
0082B898: push 00000010h
0082B89A: pop eax
0082B89B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082B8A0: lea esi, var_00000188
0082B8A6: mov edi, esp
0082B8A8: movsd 
0082B8A9: movsd 
0082B8AA: movsd 
0082B8AB: movsd 
0082B8AC: push 00000001h
0082B8AE: push 00000010h
0082B8B0: push 00440E58h
0082B8B5: push 00000010h
0082B8B7: pop eax
0082B8B8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082B8BD: lea esi, var_00000168
0082B8C3: mov edi, esp
0082B8C5: movsd 
0082B8C6: movsd 
0082B8C7: movsd 
0082B8C8: movsd 
0082B8C9: push 00000001h
0082B8CB: push 00000000h
0082B8CD: push 00440E48h
0082B8D2: push 00000000h
0082B8D4: push 00000018h
0082B8D6: push var_00000228
0082B8DC: lea eax, var_000000B8
0082B8E2: push eax
0082B8E3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082B8E8: add esp, 00000010h
0082B8EB: push eax
0082B8EC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082B8F1: push eax
0082B8F2: lea eax, var_00000094
0082B8F8: push eax
0082B8F9: call 00410A84h ; Set (object)
0082B8FE: push eax
0082B8FF: lea eax, var_000000C8
0082B905: push eax
0082B906: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082B90B: add esp, 00000020h
0082B90E: push eax
0082B90F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082B914: push eax
0082B915: lea eax, var_00000098
0082B91B: push eax
0082B91C: call 00410A84h ; Set (object)
0082B921: push eax
0082B922: lea eax, var_000000D8
0082B928: push eax
0082B929: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082B92E: add esp, 00000020h
0082B931: push eax
0082B932: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082B937: mov edx, eax
0082B939: lea ecx, var_00000090
0082B93F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0082B944: push eax
0082B945: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0082B94A: neg eax
0082B94C: sbb eax, eax
0082B94E: inc eax
0082B94F: neg eax
0082B951: mov var_00000218, ax
0082B958: lea eax, var_00000090
0082B95E: push eax
0082B95F: lea eax, var_0000008C
0082B965: push eax
0082B966: push 00000002h
0082B968: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0082B96D: add esp, 0000000Ch
0082B970: lea eax, var_0000009C
0082B976: push eax
0082B977: lea eax, var_00000098
0082B97D: push eax
0082B97E: lea eax, var_00000094
0082B984: push eax
0082B985: push 00000003h
0082B987: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082B98C: add esp, 00000010h
0082B98F: lea eax, var_000000D8
0082B995: push eax
0082B996: lea eax, var_000000C8
0082B99C: push eax
0082B99D: lea eax, var_000000B8
0082B9A3: push eax
0082B9A4: push 00000003h
0082B9A6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082B9AB: add esp, 00000010h
0082B9AE: movsx eax, word ptr var_00000218
0082B9B5: test eax, eax
0082B9B7: jz 82BA13h
0082B9B9: mov var_04, 000000BCh
0082B9C0: lea eax, var_40
0082B9C3: push eax
0082B9C4: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082B9C9: mov var_00000210, eax
0082B9CF: cmp var_00000210, 00000012h
0082B9D6: jnb 82B9E1h
0082B9D8: and var_00000494, 00000000h
0082B9DF: jmp 82B9ECh
0082B9E1: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082B9E6: mov var_00000494, eax
0082B9EC: mov eax, var_00000210
0082B9F2: mov ecx, var_5C
0082B9F5: or word ptr [ecx+eax*2], FFFFh
0082B9FA: mov var_04, 000000BDh
0082BA01: mov ax, var_4C
0082BA05: add ax, 0001h
0082BA09: jo 0082E860h
0082BA0F: mov var_4C, ax
0082BA13: mov var_04, 000000C0h
0082BA1A: mov eax, [ebp+08h]
0082BA1D: mov eax, [eax]
0082BA1F: push [ebp+08h]
0082BA22: call [eax+00000380h]
0082BA28: push eax
0082BA29: lea eax, var_00000094
0082BA2F: push eax
0082BA30: call 00410A84h ; Set (object)
0082BA35: mov var_00000210, eax
0082BA3B: lea eax, var_00000098
0082BA41: push eax
0082BA42: push 00000001h
0082BA44: mov eax, var_00000210
0082BA4A: mov eax, [eax]
0082BA4C: push var_00000210
0082BA52: call [eax+40h]
0082BA55: fclex 
0082BA57: mov var_00000214, eax
0082BA5D: cmp var_00000214, 00000000h
0082BA64: jnl 82BA86h
0082BA66: push 00000040h
0082BA68: push 00440DE8h
0082BA6D: push var_00000210
0082BA73: push var_00000214
0082BA79: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082BA7E: mov var_00000498, eax
0082BA84: jmp 82BA8Dh
0082BA86: and var_00000498, 00000000h
0082BA8D: push 00000000h
0082BA8F: push 00000000h
0082BA91: push var_00000098
0082BA97: lea eax, var_000000B8
0082BA9D: push eax
0082BA9E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082BAA3: add esp, 00000010h
0082BAA6: push eax
0082BAA7: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082BAAC: sub ax, FFFFh
0082BAB0: neg ax
0082BAB3: sbb eax, eax
0082BAB5: inc eax
0082BAB6: neg eax
0082BAB8: mov var_00000218, ax
0082BABF: lea eax, var_00000098
0082BAC5: push eax
0082BAC6: lea eax, var_00000094
0082BACC: push eax
0082BACD: push 00000002h
0082BACF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082BAD4: add esp, 0000000Ch
0082BAD7: lea ecx, var_000000B8
0082BADD: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082BAE2: movsx eax, word ptr var_00000218
0082BAE9: test eax, eax
0082BAEB: jz 0082BD5Fh
0082BAF1: mov var_04, 000000C1h
0082BAF8: mov eax, [ebp+08h]
0082BAFB: mov eax, [eax]
0082BAFD: push [ebp+08h]
0082BB00: call [eax+00000310h]
0082BB06: push eax
0082BB07: lea eax, var_0000009C
0082BB0D: push eax
0082BB0E: call 00410A84h ; Set (object)
0082BB13: mov var_00000210, eax
0082BB19: lea eax, var_00000090
0082BB1F: push eax
0082BB20: mov eax, var_00000210
0082BB26: mov eax, [eax]
0082BB28: push var_00000210
0082BB2E: call [eax+000000A0h]
0082BB34: fclex 
0082BB36: mov var_00000214, eax
0082BB3C: cmp var_00000214, 00000000h
0082BB43: jnl 82BB68h
0082BB45: push 000000A0h
0082BB4A: push 00440E08h
0082BB4F: push var_00000210
0082BB55: push var_00000214
0082BB5B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082BB60: mov var_0000049C, eax
0082BB66: jmp 82BB6Fh
0082BB68: and var_0000049C, 00000000h
0082BB6F: push var_00000090
0082BB75: call 004109DCh ; Val(arg_1)
0082BB7A: fstp real8 ptr var_000001FC
0082BB80: lea eax, var_40
0082BB83: push eax
0082BB84: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082BB89: mov var_00000180, eax
0082BB8F: mov var_00000188, 00000003h
0082BB99: mov eax, var_00000088
0082BB9F: mov var_00000160, eax
0082BBA5: mov var_00000168, 00000008h
0082BBAF: push 00000010h
0082BBB1: pop eax
0082BBB2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082BBB7: lea esi, var_00000188
0082BBBD: mov edi, esp
0082BBBF: movsd 
0082BBC0: movsd 
0082BBC1: movsd 
0082BBC2: movsd 
0082BBC3: push 00000001h
0082BBC5: push 00000010h
0082BBC7: push 00440E58h
0082BBCC: push 00000010h
0082BBCE: pop eax
0082BBCF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082BBD4: lea esi, var_00000168
0082BBDA: mov edi, esp
0082BBDC: movsd 
0082BBDD: movsd 
0082BBDE: movsd 
0082BBDF: movsd 
0082BBE0: push 00000001h
0082BBE2: push 00000000h
0082BBE4: push 00440E48h
0082BBE9: push 00000000h
0082BBEB: push 00000018h
0082BBED: push var_00000228
0082BBF3: lea eax, var_000000B8
0082BBF9: push eax
0082BBFA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082BBFF: add esp, 00000010h
0082BC02: push eax
0082BC03: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082BC08: push eax
0082BC09: lea eax, var_00000094
0082BC0F: push eax
0082BC10: call 00410A84h ; Set (object)
0082BC15: push eax
0082BC16: lea eax, var_000000C8
0082BC1C: push eax
0082BC1D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082BC22: add esp, 00000020h
0082BC25: push eax
0082BC26: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082BC2B: push eax
0082BC2C: lea eax, var_00000098
0082BC32: push eax
0082BC33: call 00410A84h ; Set (object)
0082BC38: push eax
0082BC39: lea eax, var_000000D8
0082BC3F: push eax
0082BC40: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082BC45: add esp, 00000020h
0082BC48: push eax
0082BC49: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082BC4E: mov edx, eax
0082BC50: lea ecx, var_0000008C
0082BC56: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0082BC5B: push eax
0082BC5C: call 004109DCh ; Val(arg_1)
0082BC61: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0082BC66: fstp real8 ptr var_000004A4
0082BC6C: fld real8 ptr var_000001FC
0082BC72: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0082BC77: fcomp real8 ptr var_000004A4
0082BC7D: fstsw ax
0082BC7F: sahf 
0082BC80: jnbe 82BC8Eh
0082BC82: mov var_000004A8, 00000001h
0082BC8C: jmp 82BC95h
0082BC8E: and var_000004A8, 00000000h
0082BC95: mov eax, var_000004A8
0082BC9B: neg eax
0082BC9D: mov var_00000218, ax
0082BCA4: lea eax, var_00000090
0082BCAA: push eax
0082BCAB: lea eax, var_0000008C
0082BCB1: push eax
0082BCB2: push 00000002h
0082BCB4: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0082BCB9: add esp, 0000000Ch
0082BCBC: lea eax, var_0000009C
0082BCC2: push eax
0082BCC3: lea eax, var_00000098
0082BCC9: push eax
0082BCCA: lea eax, var_00000094
0082BCD0: push eax
0082BCD1: push 00000003h
0082BCD3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082BCD8: add esp, 00000010h
0082BCDB: lea eax, var_000000D8
0082BCE1: push eax
0082BCE2: lea eax, var_000000C8
0082BCE8: push eax
0082BCE9: lea eax, var_000000B8
0082BCEF: push eax
0082BCF0: push 00000003h
0082BCF2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082BCF7: add esp, 00000010h
0082BCFA: movsx eax, word ptr var_00000218
0082BD01: test eax, eax
0082BD03: jz 82BD5Fh
0082BD05: mov var_04, 000000C2h
0082BD0C: lea eax, var_40
0082BD0F: push eax
0082BD10: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082BD15: mov var_00000210, eax
0082BD1B: cmp var_00000210, 00000012h
0082BD22: jnb 82BD2Dh
0082BD24: and var_000004AC, 00000000h
0082BD2B: jmp 82BD38h
0082BD2D: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082BD32: mov var_000004AC, eax
0082BD38: mov eax, var_00000210
0082BD3E: mov ecx, var_5C
0082BD41: or word ptr [ecx+eax*2], FFFFh
0082BD46: mov var_04, 000000C3h
0082BD4D: mov ax, var_4C
0082BD51: add ax, 0001h
0082BD55: jo 0082E860h
0082BD5B: mov var_4C, ax
0082BD5F: mov var_04, 000000C6h
0082BD66: mov eax, [ebp+08h]
0082BD69: mov eax, [eax]
0082BD6B: push [ebp+08h]
0082BD6E: call [eax+00000380h]
0082BD74: push eax
0082BD75: lea eax, var_00000094
0082BD7B: push eax
0082BD7C: call 00410A84h ; Set (object)
0082BD81: mov var_00000210, eax
0082BD87: lea eax, var_00000098
0082BD8D: push eax
0082BD8E: push 00000002h
0082BD90: mov eax, var_00000210
0082BD96: mov eax, [eax]
0082BD98: push var_00000210
0082BD9E: call [eax+40h]
0082BDA1: fclex 
0082BDA3: mov var_00000214, eax
0082BDA9: cmp var_00000214, 00000000h
0082BDB0: jnl 82BDD2h
0082BDB2: push 00000040h
0082BDB4: push 00440DE8h
0082BDB9: push var_00000210
0082BDBF: push var_00000214
0082BDC5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082BDCA: mov var_000004B0, eax
0082BDD0: jmp 82BDD9h
0082BDD2: and var_000004B0, 00000000h
0082BDD9: push 00000000h
0082BDDB: push 00000000h
0082BDDD: push var_00000098
0082BDE3: lea eax, var_000000B8
0082BDE9: push eax
0082BDEA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082BDEF: add esp, 00000010h
0082BDF2: push eax
0082BDF3: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082BDF8: sub ax, FFFFh
0082BDFC: neg ax
0082BDFF: sbb eax, eax
0082BE01: inc eax
0082BE02: neg eax
0082BE04: mov var_00000218, ax
0082BE0B: lea eax, var_00000098
0082BE11: push eax
0082BE12: lea eax, var_00000094
0082BE18: push eax
0082BE19: push 00000002h
0082BE1B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082BE20: add esp, 0000000Ch
0082BE23: lea ecx, var_000000B8
0082BE29: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082BE2E: movsx eax, word ptr var_00000218
0082BE35: test eax, eax
0082BE37: jz 0082C0ABh
0082BE3D: mov var_04, 000000C7h
0082BE44: mov eax, [ebp+08h]
0082BE47: mov eax, [eax]
0082BE49: push [ebp+08h]
0082BE4C: call [eax+00000310h]
0082BE52: push eax
0082BE53: lea eax, var_0000009C
0082BE59: push eax
0082BE5A: call 00410A84h ; Set (object)
0082BE5F: mov var_00000210, eax
0082BE65: lea eax, var_00000090
0082BE6B: push eax
0082BE6C: mov eax, var_00000210
0082BE72: mov eax, [eax]
0082BE74: push var_00000210
0082BE7A: call [eax+000000A0h]
0082BE80: fclex 
0082BE82: mov var_00000214, eax
0082BE88: cmp var_00000214, 00000000h
0082BE8F: jnl 82BEB4h
0082BE91: push 000000A0h
0082BE96: push 00440E08h
0082BE9B: push var_00000210
0082BEA1: push var_00000214
0082BEA7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082BEAC: mov var_000004B4, eax
0082BEB2: jmp 82BEBBh
0082BEB4: and var_000004B4, 00000000h
0082BEBB: push var_00000090
0082BEC1: call 004109DCh ; Val(arg_1)
0082BEC6: fstp real8 ptr var_000001FC
0082BECC: lea eax, var_40
0082BECF: push eax
0082BED0: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082BED5: mov var_00000180, eax
0082BEDB: mov var_00000188, 00000003h
0082BEE5: mov eax, var_00000088
0082BEEB: mov var_00000160, eax
0082BEF1: mov var_00000168, 00000008h
0082BEFB: push 00000010h
0082BEFD: pop eax
0082BEFE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082BF03: lea esi, var_00000188
0082BF09: mov edi, esp
0082BF0B: movsd 
0082BF0C: movsd 
0082BF0D: movsd 
0082BF0E: movsd 
0082BF0F: push 00000001h
0082BF11: push 00000010h
0082BF13: push 00440E58h
0082BF18: push 00000010h
0082BF1A: pop eax
0082BF1B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082BF20: lea esi, var_00000168
0082BF26: mov edi, esp
0082BF28: movsd 
0082BF29: movsd 
0082BF2A: movsd 
0082BF2B: movsd 
0082BF2C: push 00000001h
0082BF2E: push 00000000h
0082BF30: push 00440E48h
0082BF35: push 00000000h
0082BF37: push 00000018h
0082BF39: push var_00000228
0082BF3F: lea eax, var_000000B8
0082BF45: push eax
0082BF46: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082BF4B: add esp, 00000010h
0082BF4E: push eax
0082BF4F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082BF54: push eax
0082BF55: lea eax, var_00000094
0082BF5B: push eax
0082BF5C: call 00410A84h ; Set (object)
0082BF61: push eax
0082BF62: lea eax, var_000000C8
0082BF68: push eax
0082BF69: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082BF6E: add esp, 00000020h
0082BF71: push eax
0082BF72: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082BF77: push eax
0082BF78: lea eax, var_00000098
0082BF7E: push eax
0082BF7F: call 00410A84h ; Set (object)
0082BF84: push eax
0082BF85: lea eax, var_000000D8
0082BF8B: push eax
0082BF8C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082BF91: add esp, 00000020h
0082BF94: push eax
0082BF95: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082BF9A: mov edx, eax
0082BF9C: lea ecx, var_0000008C
0082BFA2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0082BFA7: push eax
0082BFA8: call 004109DCh ; Val(arg_1)
0082BFAD: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0082BFB2: fstp real8 ptr var_000004BC
0082BFB8: fld real8 ptr var_000001FC
0082BFBE: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0082BFC3: fcomp real8 ptr var_000004BC
0082BFC9: fstsw ax
0082BFCB: sahf 
0082BFCC: jb 82BFDAh
0082BFCE: mov var_000004C0, 00000001h
0082BFD8: jmp 82BFE1h
0082BFDA: and var_000004C0, 00000000h
0082BFE1: mov eax, var_000004C0
0082BFE7: neg eax
0082BFE9: mov var_00000218, ax
0082BFF0: lea eax, var_00000090
0082BFF6: push eax
0082BFF7: lea eax, var_0000008C
0082BFFD: push eax
0082BFFE: push 00000002h
0082C000: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0082C005: add esp, 0000000Ch
0082C008: lea eax, var_0000009C
0082C00E: push eax
0082C00F: lea eax, var_00000098
0082C015: push eax
0082C016: lea eax, var_00000094
0082C01C: push eax
0082C01D: push 00000003h
0082C01F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082C024: add esp, 00000010h
0082C027: lea eax, var_000000D8
0082C02D: push eax
0082C02E: lea eax, var_000000C8
0082C034: push eax
0082C035: lea eax, var_000000B8
0082C03B: push eax
0082C03C: push 00000003h
0082C03E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082C043: add esp, 00000010h
0082C046: movsx eax, word ptr var_00000218
0082C04D: test eax, eax
0082C04F: jz 82C0ABh
0082C051: mov var_04, 000000C8h
0082C058: lea eax, var_40
0082C05B: push eax
0082C05C: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082C061: mov var_00000210, eax
0082C067: cmp var_00000210, 00000012h
0082C06E: jnb 82C079h
0082C070: and var_000004C4, 00000000h
0082C077: jmp 82C084h
0082C079: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082C07E: mov var_000004C4, eax
0082C084: mov eax, var_00000210
0082C08A: mov ecx, var_5C
0082C08D: or word ptr [ecx+eax*2], FFFFh
0082C092: mov var_04, 000000C9h
0082C099: mov ax, var_4C
0082C09D: add ax, 0001h
0082C0A1: jo 0082E860h
0082C0A7: mov var_4C, ax
0082C0AB: jmp 0082DA8Eh
0082C0B0: mov var_04, 000000CCh
0082C0B7: mov var_00000160, 0000000Dh
0082C0C1: mov var_00000168, 00008002h
0082C0CB: lea eax, var_000002B8
0082C0D1: push eax
0082C0D2: lea eax, var_00000168
0082C0D8: push eax
0082C0D9: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
0082C0DE: movsx eax, ax
0082C0E1: test eax, eax
0082C0E3: jz 0082CA92h
0082C0E9: mov var_04, 000000CDh
0082C0F0: mov eax, [ebp+08h]
0082C0F3: mov eax, [eax]
0082C0F5: push [ebp+08h]
0082C0F8: call [eax+00000384h]
0082C0FE: push eax
0082C0FF: lea eax, var_00000094
0082C105: push eax
0082C106: call 00410A84h ; Set (object)
0082C10B: mov var_00000210, eax
0082C111: lea eax, var_00000098
0082C117: push eax
0082C118: push 00000000h
0082C11A: mov eax, var_00000210
0082C120: mov eax, [eax]
0082C122: push var_00000210
0082C128: call [eax+40h]
0082C12B: fclex 
0082C12D: mov var_00000214, eax
0082C133: cmp var_00000214, 00000000h
0082C13A: jnl 82C15Ch
0082C13C: push 00000040h
0082C13E: push 00440DE8h
0082C143: push var_00000210
0082C149: push var_00000214
0082C14F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082C154: mov var_000004C8, eax
0082C15A: jmp 82C163h
0082C15C: and var_000004C8, 00000000h
0082C163: push 00000000h
0082C165: push 00000000h
0082C167: push var_00000098
0082C16D: lea eax, var_000000B8
0082C173: push eax
0082C174: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082C179: add esp, 00000010h
0082C17C: push eax
0082C17D: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082C182: sub ax, FFFFh
0082C186: neg ax
0082C189: sbb eax, eax
0082C18B: inc eax
0082C18C: neg eax
0082C18E: mov var_00000218, ax
0082C195: lea eax, var_00000098
0082C19B: push eax
0082C19C: lea eax, var_00000094
0082C1A2: push eax
0082C1A3: push 00000002h
0082C1A5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082C1AA: add esp, 0000000Ch
0082C1AD: lea ecx, var_000000B8
0082C1B3: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082C1B8: movsx eax, word ptr var_00000218
0082C1BF: test eax, eax
0082C1C1: jz 0082C3F5h
0082C1C7: mov var_04, 000000CEh
0082C1CE: mov eax, [ebp+08h]
0082C1D1: mov eax, [eax]
0082C1D3: push [ebp+08h]
0082C1D6: call [eax+0000030Ch]
0082C1DC: push eax
0082C1DD: lea eax, var_0000009C
0082C1E3: push eax
0082C1E4: call 00410A84h ; Set (object)
0082C1E9: mov var_00000210, eax
0082C1EF: lea eax, var_0000008C
0082C1F5: push eax
0082C1F6: mov eax, var_00000210
0082C1FC: mov eax, [eax]
0082C1FE: push var_00000210
0082C204: call [eax+000000A0h]
0082C20A: fclex 
0082C20C: mov var_00000214, eax
0082C212: cmp var_00000214, 00000000h
0082C219: jnl 82C23Eh
0082C21B: push 000000A0h
0082C220: push 00440E08h
0082C225: push var_00000210
0082C22B: push var_00000214
0082C231: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082C236: mov var_000004CC, eax
0082C23C: jmp 82C245h
0082C23E: and var_000004CC, 00000000h
0082C245: lea eax, var_40
0082C248: push eax
0082C249: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082C24E: mov var_00000180, eax
0082C254: mov var_00000188, 00000003h
0082C25E: mov eax, var_00000088
0082C264: mov var_00000160, eax
0082C26A: mov var_00000168, 00000008h
0082C274: push var_0000008C
0082C27A: push 00000010h
0082C27C: pop eax
0082C27D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082C282: lea esi, var_00000188
0082C288: mov edi, esp
0082C28A: movsd 
0082C28B: movsd 
0082C28C: movsd 
0082C28D: movsd 
0082C28E: push 00000001h
0082C290: push 00000010h
0082C292: push 00440E58h
0082C297: push 00000010h
0082C299: pop eax
0082C29A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082C29F: lea esi, var_00000168
0082C2A5: mov edi, esp
0082C2A7: movsd 
0082C2A8: movsd 
0082C2A9: movsd 
0082C2AA: movsd 
0082C2AB: push 00000001h
0082C2AD: push 00000000h
0082C2AF: push 00440E48h
0082C2B4: push 00000000h
0082C2B6: push 00000018h
0082C2B8: push var_00000228
0082C2BE: lea eax, var_000000B8
0082C2C4: push eax
0082C2C5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082C2CA: add esp, 00000010h
0082C2CD: push eax
0082C2CE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082C2D3: push eax
0082C2D4: lea eax, var_00000094
0082C2DA: push eax
0082C2DB: call 00410A84h ; Set (object)
0082C2E0: push eax
0082C2E1: lea eax, var_000000C8
0082C2E7: push eax
0082C2E8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082C2ED: add esp, 00000020h
0082C2F0: push eax
0082C2F1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082C2F6: push eax
0082C2F7: lea eax, var_00000098
0082C2FD: push eax
0082C2FE: call 00410A84h ; Set (object)
0082C303: push eax
0082C304: lea eax, var_000000D8
0082C30A: push eax
0082C30B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082C310: add esp, 00000020h
0082C313: push eax
0082C314: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082C319: mov edx, eax
0082C31B: lea ecx, var_00000090
0082C321: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0082C326: push eax
0082C327: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0082C32C: neg eax
0082C32E: sbb eax, eax
0082C330: inc eax
0082C331: neg eax
0082C333: mov var_00000218, ax
0082C33A: lea eax, var_00000090
0082C340: push eax
0082C341: lea eax, var_0000008C
0082C347: push eax
0082C348: push 00000002h
0082C34A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0082C34F: add esp, 0000000Ch
0082C352: lea eax, var_0000009C
0082C358: push eax
0082C359: lea eax, var_00000098
0082C35F: push eax
0082C360: lea eax, var_00000094
0082C366: push eax
0082C367: push 00000003h
0082C369: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082C36E: add esp, 00000010h
0082C371: lea eax, var_000000D8
0082C377: push eax
0082C378: lea eax, var_000000C8
0082C37E: push eax
0082C37F: lea eax, var_000000B8
0082C385: push eax
0082C386: push 00000003h
0082C388: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082C38D: add esp, 00000010h
0082C390: movsx eax, word ptr var_00000218
0082C397: test eax, eax
0082C399: jz 82C3F5h
0082C39B: mov var_04, 000000CFh
0082C3A2: lea eax, var_40
0082C3A5: push eax
0082C3A6: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082C3AB: mov var_00000210, eax
0082C3B1: cmp var_00000210, 00000012h
0082C3B8: jnb 82C3C3h
0082C3BA: and var_000004D0, 00000000h
0082C3C1: jmp 82C3CEh
0082C3C3: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082C3C8: mov var_000004D0, eax
0082C3CE: mov eax, var_00000210
0082C3D4: mov ecx, var_5C
0082C3D7: or word ptr [ecx+eax*2], FFFFh
0082C3DC: mov var_04, 000000D0h
0082C3E3: mov ax, var_4C
0082C3E7: add ax, 0001h
0082C3EB: jo 0082E860h
0082C3F1: mov var_4C, ax
0082C3F5: mov var_04, 000000D3h
0082C3FC: mov eax, [ebp+08h]
0082C3FF: mov eax, [eax]
0082C401: push [ebp+08h]
0082C404: call [eax+00000384h]
0082C40A: push eax
0082C40B: lea eax, var_00000094
0082C411: push eax
0082C412: call 00410A84h ; Set (object)
0082C417: mov var_00000210, eax
0082C41D: lea eax, var_00000098
0082C423: push eax
0082C424: push 00000001h
0082C426: mov eax, var_00000210
0082C42C: mov eax, [eax]
0082C42E: push var_00000210
0082C434: call [eax+40h]
0082C437: fclex 
0082C439: mov var_00000214, eax
0082C43F: cmp var_00000214, 00000000h
0082C446: jnl 82C468h
0082C448: push 00000040h
0082C44A: push 00440DE8h
0082C44F: push var_00000210
0082C455: push var_00000214
0082C45B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082C460: mov var_000004D4, eax
0082C466: jmp 82C46Fh
0082C468: and var_000004D4, 00000000h
0082C46F: push 00000000h
0082C471: push 00000000h
0082C473: push var_00000098
0082C479: lea eax, var_000000B8
0082C47F: push eax
0082C480: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082C485: add esp, 00000010h
0082C488: push eax
0082C489: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082C48E: sub ax, FFFFh
0082C492: neg ax
0082C495: sbb eax, eax
0082C497: inc eax
0082C498: neg eax
0082C49A: mov var_00000218, ax
0082C4A1: lea eax, var_00000098
0082C4A7: push eax
0082C4A8: lea eax, var_00000094
0082C4AE: push eax
0082C4AF: push 00000002h
0082C4B1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082C4B6: add esp, 0000000Ch
0082C4B9: lea ecx, var_000000B8
0082C4BF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082C4C4: movsx eax, word ptr var_00000218
0082C4CB: test eax, eax
0082C4CD: jz 0082C741h
0082C4D3: mov var_04, 000000D4h
0082C4DA: mov eax, [ebp+08h]
0082C4DD: mov eax, [eax]
0082C4DF: push [ebp+08h]
0082C4E2: call [eax+0000030Ch]
0082C4E8: push eax
0082C4E9: lea eax, var_0000009C
0082C4EF: push eax
0082C4F0: call 00410A84h ; Set (object)
0082C4F5: mov var_00000210, eax
0082C4FB: lea eax, var_00000090
0082C501: push eax
0082C502: mov eax, var_00000210
0082C508: mov eax, [eax]
0082C50A: push var_00000210
0082C510: call [eax+000000A0h]
0082C516: fclex 
0082C518: mov var_00000214, eax
0082C51E: cmp var_00000214, 00000000h
0082C525: jnl 82C54Ah
0082C527: push 000000A0h
0082C52C: push 00440E08h
0082C531: push var_00000210
0082C537: push var_00000214
0082C53D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082C542: mov var_000004D8, eax
0082C548: jmp 82C551h
0082C54A: and var_000004D8, 00000000h
0082C551: push var_00000090
0082C557: call 004109DCh ; Val(arg_1)
0082C55C: fstp real8 ptr var_000001FC
0082C562: lea eax, var_40
0082C565: push eax
0082C566: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082C56B: mov var_00000180, eax
0082C571: mov var_00000188, 00000003h
0082C57B: mov eax, var_00000088
0082C581: mov var_00000160, eax
0082C587: mov var_00000168, 00000008h
0082C591: push 00000010h
0082C593: pop eax
0082C594: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082C599: lea esi, var_00000188
0082C59F: mov edi, esp
0082C5A1: movsd 
0082C5A2: movsd 
0082C5A3: movsd 
0082C5A4: movsd 
0082C5A5: push 00000001h
0082C5A7: push 00000010h
0082C5A9: push 00440E58h
0082C5AE: push 00000010h
0082C5B0: pop eax
0082C5B1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082C5B6: lea esi, var_00000168
0082C5BC: mov edi, esp
0082C5BE: movsd 
0082C5BF: movsd 
0082C5C0: movsd 
0082C5C1: movsd 
0082C5C2: push 00000001h
0082C5C4: push 00000000h
0082C5C6: push 00440E48h
0082C5CB: push 00000000h
0082C5CD: push 00000018h
0082C5CF: push var_00000228
0082C5D5: lea eax, var_000000B8
0082C5DB: push eax
0082C5DC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082C5E1: add esp, 00000010h
0082C5E4: push eax
0082C5E5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082C5EA: push eax
0082C5EB: lea eax, var_00000094
0082C5F1: push eax
0082C5F2: call 00410A84h ; Set (object)
0082C5F7: push eax
0082C5F8: lea eax, var_000000C8
0082C5FE: push eax
0082C5FF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082C604: add esp, 00000020h
0082C607: push eax
0082C608: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082C60D: push eax
0082C60E: lea eax, var_00000098
0082C614: push eax
0082C615: call 00410A84h ; Set (object)
0082C61A: push eax
0082C61B: lea eax, var_000000D8
0082C621: push eax
0082C622: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082C627: add esp, 00000020h
0082C62A: push eax
0082C62B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082C630: mov edx, eax
0082C632: lea ecx, var_0000008C
0082C638: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0082C63D: push eax
0082C63E: call 004109DCh ; Val(arg_1)
0082C643: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0082C648: fstp real8 ptr var_000004E0
0082C64E: fld real8 ptr var_000001FC
0082C654: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0082C659: fcomp real8 ptr var_000004E0
0082C65F: fstsw ax
0082C661: sahf 
0082C662: jnbe 82C670h
0082C664: mov var_000004E4, 00000001h
0082C66E: jmp 82C677h
0082C670: and var_000004E4, 00000000h
0082C677: mov eax, var_000004E4
0082C67D: neg eax
0082C67F: mov var_00000218, ax
0082C686: lea eax, var_00000090
0082C68C: push eax
0082C68D: lea eax, var_0000008C
0082C693: push eax
0082C694: push 00000002h
0082C696: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0082C69B: add esp, 0000000Ch
0082C69E: lea eax, var_0000009C
0082C6A4: push eax
0082C6A5: lea eax, var_00000098
0082C6AB: push eax
0082C6AC: lea eax, var_00000094
0082C6B2: push eax
0082C6B3: push 00000003h
0082C6B5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082C6BA: add esp, 00000010h
0082C6BD: lea eax, var_000000D8
0082C6C3: push eax
0082C6C4: lea eax, var_000000C8
0082C6CA: push eax
0082C6CB: lea eax, var_000000B8
0082C6D1: push eax
0082C6D2: push 00000003h
0082C6D4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082C6D9: add esp, 00000010h
0082C6DC: movsx eax, word ptr var_00000218
0082C6E3: test eax, eax
0082C6E5: jz 82C741h
0082C6E7: mov var_04, 000000D5h
0082C6EE: lea eax, var_40
0082C6F1: push eax
0082C6F2: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082C6F7: mov var_00000210, eax
0082C6FD: cmp var_00000210, 00000012h
0082C704: jnb 82C70Fh
0082C706: and var_000004E8, 00000000h
0082C70D: jmp 82C71Ah
0082C70F: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082C714: mov var_000004E8, eax
0082C71A: mov eax, var_00000210
0082C720: mov ecx, var_5C
0082C723: or word ptr [ecx+eax*2], FFFFh
0082C728: mov var_04, 000000D6h
0082C72F: mov ax, var_4C
0082C733: add ax, 0001h
0082C737: jo 0082E860h
0082C73D: mov var_4C, ax
0082C741: mov var_04, 000000D9h
0082C748: mov eax, [ebp+08h]
0082C74B: mov eax, [eax]
0082C74D: push [ebp+08h]
0082C750: call [eax+00000384h]
0082C756: push eax
0082C757: lea eax, var_00000094
0082C75D: push eax
0082C75E: call 00410A84h ; Set (object)
0082C763: mov var_00000210, eax
0082C769: lea eax, var_00000098
0082C76F: push eax
0082C770: push 00000002h
0082C772: mov eax, var_00000210
0082C778: mov eax, [eax]
0082C77A: push var_00000210
0082C780: call [eax+40h]
0082C783: fclex 
0082C785: mov var_00000214, eax
0082C78B: cmp var_00000214, 00000000h
0082C792: jnl 82C7B4h
0082C794: push 00000040h
0082C796: push 00440DE8h
0082C79B: push var_00000210
0082C7A1: push var_00000214
0082C7A7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082C7AC: mov var_000004EC, eax
0082C7B2: jmp 82C7BBh
0082C7B4: and var_000004EC, 00000000h
0082C7BB: push 00000000h
0082C7BD: push 00000000h
0082C7BF: push var_00000098
0082C7C5: lea eax, var_000000B8
0082C7CB: push eax
0082C7CC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082C7D1: add esp, 00000010h
0082C7D4: push eax
0082C7D5: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082C7DA: sub ax, FFFFh
0082C7DE: neg ax
0082C7E1: sbb eax, eax
0082C7E3: inc eax
0082C7E4: neg eax
0082C7E6: mov var_00000218, ax
0082C7ED: lea eax, var_00000098
0082C7F3: push eax
0082C7F4: lea eax, var_00000094
0082C7FA: push eax
0082C7FB: push 00000002h
0082C7FD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082C802: add esp, 0000000Ch
0082C805: lea ecx, var_000000B8
0082C80B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082C810: movsx eax, word ptr var_00000218
0082C817: test eax, eax
0082C819: jz 0082CA8Dh
0082C81F: mov var_04, 000000DAh
0082C826: mov eax, [ebp+08h]
0082C829: mov eax, [eax]
0082C82B: push [ebp+08h]
0082C82E: call [eax+0000030Ch]
0082C834: push eax
0082C835: lea eax, var_0000009C
0082C83B: push eax
0082C83C: call 00410A84h ; Set (object)
0082C841: mov var_00000210, eax
0082C847: lea eax, var_00000090
0082C84D: push eax
0082C84E: mov eax, var_00000210
0082C854: mov eax, [eax]
0082C856: push var_00000210
0082C85C: call [eax+000000A0h]
0082C862: fclex 
0082C864: mov var_00000214, eax
0082C86A: cmp var_00000214, 00000000h
0082C871: jnl 82C896h
0082C873: push 000000A0h
0082C878: push 00440E08h
0082C87D: push var_00000210
0082C883: push var_00000214
0082C889: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082C88E: mov var_000004F0, eax
0082C894: jmp 82C89Dh
0082C896: and var_000004F0, 00000000h
0082C89D: push var_00000090
0082C8A3: call 004109DCh ; Val(arg_1)
0082C8A8: fstp real8 ptr var_000001FC
0082C8AE: lea eax, var_40
0082C8B1: push eax
0082C8B2: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082C8B7: mov var_00000180, eax
0082C8BD: mov var_00000188, 00000003h
0082C8C7: mov eax, var_00000088
0082C8CD: mov var_00000160, eax
0082C8D3: mov var_00000168, 00000008h
0082C8DD: push 00000010h
0082C8DF: pop eax
0082C8E0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082C8E5: lea esi, var_00000188
0082C8EB: mov edi, esp
0082C8ED: movsd 
0082C8EE: movsd 
0082C8EF: movsd 
0082C8F0: movsd 
0082C8F1: push 00000001h
0082C8F3: push 00000010h
0082C8F5: push 00440E58h
0082C8FA: push 00000010h
0082C8FC: pop eax
0082C8FD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082C902: lea esi, var_00000168
0082C908: mov edi, esp
0082C90A: movsd 
0082C90B: movsd 
0082C90C: movsd 
0082C90D: movsd 
0082C90E: push 00000001h
0082C910: push 00000000h
0082C912: push 00440E48h
0082C917: push 00000000h
0082C919: push 00000018h
0082C91B: push var_00000228
0082C921: lea eax, var_000000B8
0082C927: push eax
0082C928: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082C92D: add esp, 00000010h
0082C930: push eax
0082C931: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082C936: push eax
0082C937: lea eax, var_00000094
0082C93D: push eax
0082C93E: call 00410A84h ; Set (object)
0082C943: push eax
0082C944: lea eax, var_000000C8
0082C94A: push eax
0082C94B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082C950: add esp, 00000020h
0082C953: push eax
0082C954: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082C959: push eax
0082C95A: lea eax, var_00000098
0082C960: push eax
0082C961: call 00410A84h ; Set (object)
0082C966: push eax
0082C967: lea eax, var_000000D8
0082C96D: push eax
0082C96E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082C973: add esp, 00000020h
0082C976: push eax
0082C977: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082C97C: mov edx, eax
0082C97E: lea ecx, var_0000008C
0082C984: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0082C989: push eax
0082C98A: call 004109DCh ; Val(arg_1)
0082C98F: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0082C994: fstp real8 ptr var_000004F8
0082C99A: fld real8 ptr var_000001FC
0082C9A0: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0082C9A5: fcomp real8 ptr var_000004F8
0082C9AB: fstsw ax
0082C9AD: sahf 
0082C9AE: jb 82C9BCh
0082C9B0: mov var_000004FC, 00000001h
0082C9BA: jmp 82C9C3h
0082C9BC: and var_000004FC, 00000000h
0082C9C3: mov eax, var_000004FC
0082C9C9: neg eax
0082C9CB: mov var_00000218, ax
0082C9D2: lea eax, var_00000090
0082C9D8: push eax
0082C9D9: lea eax, var_0000008C
0082C9DF: push eax
0082C9E0: push 00000002h
0082C9E2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0082C9E7: add esp, 0000000Ch
0082C9EA: lea eax, var_0000009C
0082C9F0: push eax
0082C9F1: lea eax, var_00000098
0082C9F7: push eax
0082C9F8: lea eax, var_00000094
0082C9FE: push eax
0082C9FF: push 00000003h
0082CA01: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082CA06: add esp, 00000010h
0082CA09: lea eax, var_000000D8
0082CA0F: push eax
0082CA10: lea eax, var_000000C8
0082CA16: push eax
0082CA17: lea eax, var_000000B8
0082CA1D: push eax
0082CA1E: push 00000003h
0082CA20: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082CA25: add esp, 00000010h
0082CA28: movsx eax, word ptr var_00000218
0082CA2F: test eax, eax
0082CA31: jz 82CA8Dh
0082CA33: mov var_04, 000000DBh
0082CA3A: lea eax, var_40
0082CA3D: push eax
0082CA3E: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082CA43: mov var_00000210, eax
0082CA49: cmp var_00000210, 00000012h
0082CA50: jnb 82CA5Bh
0082CA52: and var_00000500, 00000000h
0082CA59: jmp 82CA66h
0082CA5B: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082CA60: mov var_00000500, eax
0082CA66: mov eax, var_00000210
0082CA6C: mov ecx, var_5C
0082CA6F: or word ptr [ecx+eax*2], FFFFh
0082CA74: mov var_04, 000000DCh
0082CA7B: mov ax, var_4C
0082CA7F: add ax, 0001h
0082CA83: jo 0082E860h
0082CA89: mov var_4C, ax
0082CA8D: jmp 0082DA8Eh
0082CA92: mov var_04, 000000DFh
0082CA99: mov var_00000160, 0000000Eh
0082CAA3: mov var_00000168, 00008002h
0082CAAD: lea eax, var_000002B8
0082CAB3: push eax
0082CAB4: lea eax, var_00000168
0082CABA: push eax
0082CABB: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
0082CAC0: movsx eax, ax
0082CAC3: test eax, eax
0082CAC5: jz 0082D0B1h
0082CACB: mov var_04, 000000E0h
0082CAD2: mov eax, [ebp+08h]
0082CAD5: mov eax, [eax]
0082CAD7: push [ebp+08h]
0082CADA: call [eax+0000038Ch]
0082CAE0: push eax
0082CAE1: lea eax, var_00000094
0082CAE7: push eax
0082CAE8: call 00410A84h ; Set (object)
0082CAED: mov var_00000210, eax
0082CAF3: lea eax, var_00000098
0082CAF9: push eax
0082CAFA: push 00000000h
0082CAFC: mov eax, var_00000210
0082CB02: mov eax, [eax]
0082CB04: push var_00000210
0082CB0A: call [eax+40h]
0082CB0D: fclex 
0082CB0F: mov var_00000214, eax
0082CB15: cmp var_00000214, 00000000h
0082CB1C: jnl 82CB3Eh
0082CB1E: push 00000040h
0082CB20: push 00440DE8h
0082CB25: push var_00000210
0082CB2B: push var_00000214
0082CB31: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082CB36: mov var_00000504, eax
0082CB3C: jmp 82CB45h
0082CB3E: and var_00000504, 00000000h
0082CB45: push 00000000h
0082CB47: push 00000000h
0082CB49: push var_00000098
0082CB4F: lea eax, var_000000B8
0082CB55: push eax
0082CB56: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082CB5B: add esp, 00000010h
0082CB5E: push eax
0082CB5F: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082CB64: sub ax, FFFFh
0082CB68: neg ax
0082CB6B: sbb eax, eax
0082CB6D: inc eax
0082CB6E: neg eax
0082CB70: mov var_00000218, ax
0082CB77: lea eax, var_00000098
0082CB7D: push eax
0082CB7E: lea eax, var_00000094
0082CB84: push eax
0082CB85: push 00000002h
0082CB87: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082CB8C: add esp, 0000000Ch
0082CB8F: lea ecx, var_000000B8
0082CB95: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082CB9A: movsx eax, word ptr var_00000218
0082CBA1: test eax, eax
0082CBA3: jz 0082CDD7h
0082CBA9: mov var_04, 000000E1h
0082CBB0: mov eax, [ebp+08h]
0082CBB3: mov eax, [eax]
0082CBB5: push [ebp+08h]
0082CBB8: call [eax+00000308h]
0082CBBE: push eax
0082CBBF: lea eax, var_0000009C
0082CBC5: push eax
0082CBC6: call 00410A84h ; Set (object)
0082CBCB: mov var_00000210, eax
0082CBD1: lea eax, var_0000008C
0082CBD7: push eax
0082CBD8: mov eax, var_00000210
0082CBDE: mov eax, [eax]
0082CBE0: push var_00000210
0082CBE6: call [eax+000000A0h]
0082CBEC: fclex 
0082CBEE: mov var_00000214, eax
0082CBF4: cmp var_00000214, 00000000h
0082CBFB: jnl 82CC20h
0082CBFD: push 000000A0h
0082CC02: push 00440E08h
0082CC07: push var_00000210
0082CC0D: push var_00000214
0082CC13: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082CC18: mov var_00000508, eax
0082CC1E: jmp 82CC27h
0082CC20: and var_00000508, 00000000h
0082CC27: lea eax, var_40
0082CC2A: push eax
0082CC2B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082CC30: mov var_00000180, eax
0082CC36: mov var_00000188, 00000003h
0082CC40: mov eax, var_00000088
0082CC46: mov var_00000160, eax
0082CC4C: mov var_00000168, 00000008h
0082CC56: push var_0000008C
0082CC5C: push 00000010h
0082CC5E: pop eax
0082CC5F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082CC64: lea esi, var_00000188
0082CC6A: mov edi, esp
0082CC6C: movsd 
0082CC6D: movsd 
0082CC6E: movsd 
0082CC6F: movsd 
0082CC70: push 00000001h
0082CC72: push 00000010h
0082CC74: push 00440E58h
0082CC79: push 00000010h
0082CC7B: pop eax
0082CC7C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082CC81: lea esi, var_00000168
0082CC87: mov edi, esp
0082CC89: movsd 
0082CC8A: movsd 
0082CC8B: movsd 
0082CC8C: movsd 
0082CC8D: push 00000001h
0082CC8F: push 00000000h
0082CC91: push 00440E48h
0082CC96: push 00000000h
0082CC98: push 00000018h
0082CC9A: push var_00000228
0082CCA0: lea eax, var_000000B8
0082CCA6: push eax
0082CCA7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082CCAC: add esp, 00000010h
0082CCAF: push eax
0082CCB0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082CCB5: push eax
0082CCB6: lea eax, var_00000094
0082CCBC: push eax
0082CCBD: call 00410A84h ; Set (object)
0082CCC2: push eax
0082CCC3: lea eax, var_000000C8
0082CCC9: push eax
0082CCCA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082CCCF: add esp, 00000020h
0082CCD2: push eax
0082CCD3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082CCD8: push eax
0082CCD9: lea eax, var_00000098
0082CCDF: push eax
0082CCE0: call 00410A84h ; Set (object)
0082CCE5: push eax
0082CCE6: lea eax, var_000000D8
0082CCEC: push eax
0082CCED: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082CCF2: add esp, 00000020h
0082CCF5: push eax
0082CCF6: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082CCFB: mov edx, eax
0082CCFD: lea ecx, var_00000090
0082CD03: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0082CD08: push eax
0082CD09: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0082CD0E: neg eax
0082CD10: sbb eax, eax
0082CD12: inc eax
0082CD13: neg eax
0082CD15: mov var_00000218, ax
0082CD1C: lea eax, var_00000090
0082CD22: push eax
0082CD23: lea eax, var_0000008C
0082CD29: push eax
0082CD2A: push 00000002h
0082CD2C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0082CD31: add esp, 0000000Ch
0082CD34: lea eax, var_0000009C
0082CD3A: push eax
0082CD3B: lea eax, var_00000098
0082CD41: push eax
0082CD42: lea eax, var_00000094
0082CD48: push eax
0082CD49: push 00000003h
0082CD4B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082CD50: add esp, 00000010h
0082CD53: lea eax, var_000000D8
0082CD59: push eax
0082CD5A: lea eax, var_000000C8
0082CD60: push eax
0082CD61: lea eax, var_000000B8
0082CD67: push eax
0082CD68: push 00000003h
0082CD6A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082CD6F: add esp, 00000010h
0082CD72: movsx eax, word ptr var_00000218
0082CD79: test eax, eax
0082CD7B: jz 82CDD7h
0082CD7D: mov var_04, 000000E2h
0082CD84: lea eax, var_40
0082CD87: push eax
0082CD88: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082CD8D: mov var_00000210, eax
0082CD93: cmp var_00000210, 00000012h
0082CD9A: jnb 82CDA5h
0082CD9C: and var_0000050C, 00000000h
0082CDA3: jmp 82CDB0h
0082CDA5: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082CDAA: mov var_0000050C, eax
0082CDB0: mov eax, var_00000210
0082CDB6: mov ecx, var_5C
0082CDB9: or word ptr [ecx+eax*2], FFFFh
0082CDBE: mov var_04, 000000E3h
0082CDC5: mov ax, var_4C
0082CDC9: add ax, 0001h
0082CDCD: jo 0082E860h
0082CDD3: mov var_4C, ax
0082CDD7: mov var_04, 000000E6h
0082CDDE: mov eax, [ebp+08h]
0082CDE1: mov eax, [eax]
0082CDE3: push [ebp+08h]
0082CDE6: call [eax+0000038Ch]
0082CDEC: push eax
0082CDED: lea eax, var_00000094
0082CDF3: push eax
0082CDF4: call 00410A84h ; Set (object)
0082CDF9: mov var_00000210, eax
0082CDFF: lea eax, var_00000098
0082CE05: push eax
0082CE06: push 00000001h
0082CE08: mov eax, var_00000210
0082CE0E: mov eax, [eax]
0082CE10: push var_00000210
0082CE16: call [eax+40h]
0082CE19: fclex 
0082CE1B: mov var_00000214, eax
0082CE21: cmp var_00000214, 00000000h
0082CE28: jnl 82CE4Ah
0082CE2A: push 00000040h
0082CE2C: push 00440DE8h
0082CE31: push var_00000210
0082CE37: push var_00000214
0082CE3D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082CE42: mov var_00000510, eax
0082CE48: jmp 82CE51h
0082CE4A: and var_00000510, 00000000h
0082CE51: push 00000000h
0082CE53: push 00000000h
0082CE55: push var_00000098
0082CE5B: lea eax, var_000000B8
0082CE61: push eax
0082CE62: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082CE67: add esp, 00000010h
0082CE6A: push eax
0082CE6B: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082CE70: sub ax, FFFFh
0082CE74: neg ax
0082CE77: sbb eax, eax
0082CE79: inc eax
0082CE7A: neg eax
0082CE7C: mov var_00000218, ax
0082CE83: lea eax, var_00000098
0082CE89: push eax
0082CE8A: lea eax, var_00000094
0082CE90: push eax
0082CE91: push 00000002h
0082CE93: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082CE98: add esp, 0000000Ch
0082CE9B: lea ecx, var_000000B8
0082CEA1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082CEA6: movsx eax, word ptr var_00000218
0082CEAD: test eax, eax
0082CEAF: jz 0082D0ACh
0082CEB5: mov var_04, 000000E7h
0082CEBC: lea eax, var_40
0082CEBF: push eax
0082CEC0: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082CEC5: mov var_00000180, eax
0082CECB: mov var_00000188, 00000003h
0082CED5: mov eax, var_00000088
0082CEDB: mov var_00000160, eax
0082CEE1: mov var_00000168, 00000008h
0082CEEB: push 00000010h
0082CEED: pop eax
0082CEEE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082CEF3: lea esi, var_00000188
0082CEF9: mov edi, esp
0082CEFB: movsd 
0082CEFC: movsd 
0082CEFD: movsd 
0082CEFE: movsd 
0082CEFF: push 00000001h
0082CF01: push 00000010h
0082CF03: push 00440E58h
0082CF08: push 00000010h
0082CF0A: pop eax
0082CF0B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082CF10: lea esi, var_00000168
0082CF16: mov edi, esp
0082CF18: movsd 
0082CF19: movsd 
0082CF1A: movsd 
0082CF1B: movsd 
0082CF1C: push 00000001h
0082CF1E: push 00000000h
0082CF20: push 00440E48h
0082CF25: push 00000000h
0082CF27: push 00000018h
0082CF29: push var_00000228
0082CF2F: lea eax, var_000000B8
0082CF35: push eax
0082CF36: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082CF3B: add esp, 00000010h
0082CF3E: push eax
0082CF3F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082CF44: push eax
0082CF45: lea eax, var_00000094
0082CF4B: push eax
0082CF4C: call 00410A84h ; Set (object)
0082CF51: push eax
0082CF52: lea eax, var_000000C8
0082CF58: push eax
0082CF59: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082CF5E: add esp, 00000020h
0082CF61: push eax
0082CF62: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082CF67: push eax
0082CF68: lea eax, var_00000098
0082CF6E: push eax
0082CF6F: call 00410A84h ; Set (object)
0082CF74: push eax
0082CF75: lea eax, var_000000D8
0082CF7B: push eax
0082CF7C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082CF81: add esp, 00000020h
0082CF84: push eax
0082CF85: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082CF8A: mov var_000000F0, eax
0082CF90: mov var_000000F8, 00000008h
0082CF9A: mov eax, [ebp+08h]
0082CF9D: mov eax, [eax]
0082CF9F: push [ebp+08h]
0082CFA2: call [eax+00000308h]
0082CFA8: mov var_000000E0, eax
0082CFAE: mov var_000000E8, 00000009h
0082CFB8: and var_000001A0, 00000000h
0082CFBF: mov var_000001A8, 00008002h
0082CFC9: push 00000001h
0082CFCB: lea eax, var_000000F8
0082CFD1: push eax
0082CFD2: lea eax, var_000000E8
0082CFD8: push eax
0082CFD9: push 00000000h
0082CFDB: lea eax, var_00000108
0082CFE1: push eax
0082CFE2: call 0041083Eh ; InStr
0082CFE7: push eax
0082CFE8: lea eax, var_000001A8
0082CFEE: push eax
0082CFEF: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
0082CFF4: mov var_00000210, ax
0082CFFB: lea eax, var_00000098
0082D001: push eax
0082D002: lea eax, var_00000094
0082D008: push eax
0082D009: push 00000002h
0082D00B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082D010: add esp, 0000000Ch
0082D013: lea eax, var_00000108
0082D019: push eax
0082D01A: lea eax, var_000000F8
0082D020: push eax
0082D021: lea eax, var_000000E8
0082D027: push eax
0082D028: lea eax, var_000000D8
0082D02E: push eax
0082D02F: lea eax, var_000000C8
0082D035: push eax
0082D036: lea eax, var_000000B8
0082D03C: push eax
0082D03D: push 00000006h
0082D03F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082D044: add esp, 0000001Ch
0082D047: movsx eax, word ptr var_00000210
0082D04E: test eax, eax
0082D050: jz 82D0ACh
0082D052: mov var_04, 000000E8h
0082D059: lea eax, var_40
0082D05C: push eax
0082D05D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082D062: mov var_00000210, eax
0082D068: cmp var_00000210, 00000012h
0082D06F: jnb 82D07Ah
0082D071: and var_00000514, 00000000h
0082D078: jmp 82D085h
0082D07A: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082D07F: mov var_00000514, eax
0082D085: mov eax, var_00000210
0082D08B: mov ecx, var_5C
0082D08E: or word ptr [ecx+eax*2], FFFFh
0082D093: mov var_04, 000000E9h
0082D09A: mov ax, var_4C
0082D09E: add ax, 0001h
0082D0A2: jo 0082E860h
0082D0A8: mov var_4C, ax
0082D0AC: jmp 0082DA8Eh
0082D0B1: mov var_04, 000000ECh
0082D0B8: mov var_00000160, 0000000Fh
0082D0C2: mov var_00000168, 00008002h
0082D0CC: lea eax, var_000002B8
0082D0D2: push eax
0082D0D3: lea eax, var_00000168
0082D0D9: push eax
0082D0DA: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
0082D0DF: movsx eax, ax
0082D0E2: test eax, eax
0082D0E4: jz 0082DA8Eh
0082D0EA: mov var_04, 000000EDh
0082D0F1: mov eax, [ebp+08h]
0082D0F4: mov eax, [eax]
0082D0F6: push [ebp+08h]
0082D0F9: call [eax+00000388h]
0082D0FF: push eax
0082D100: lea eax, var_00000094
0082D106: push eax
0082D107: call 00410A84h ; Set (object)
0082D10C: mov var_00000210, eax
0082D112: lea eax, var_00000098
0082D118: push eax
0082D119: push 00000000h
0082D11B: mov eax, var_00000210
0082D121: mov eax, [eax]
0082D123: push var_00000210
0082D129: call [eax+40h]
0082D12C: fclex 
0082D12E: mov var_00000214, eax
0082D134: cmp var_00000214, 00000000h
0082D13B: jnl 82D15Dh
0082D13D: push 00000040h
0082D13F: push 00440DE8h
0082D144: push var_00000210
0082D14A: push var_00000214
0082D150: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082D155: mov var_00000518, eax
0082D15B: jmp 82D164h
0082D15D: and var_00000518, 00000000h
0082D164: push 00000000h
0082D166: push 00000000h
0082D168: push var_00000098
0082D16E: lea eax, var_000000B8
0082D174: push eax
0082D175: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082D17A: add esp, 00000010h
0082D17D: push eax
0082D17E: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082D183: sub ax, FFFFh
0082D187: neg ax
0082D18A: sbb eax, eax
0082D18C: inc eax
0082D18D: neg eax
0082D18F: mov var_00000218, ax
0082D196: lea eax, var_00000098
0082D19C: push eax
0082D19D: lea eax, var_00000094
0082D1A3: push eax
0082D1A4: push 00000002h
0082D1A6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082D1AB: add esp, 0000000Ch
0082D1AE: lea ecx, var_000000B8
0082D1B4: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082D1B9: movsx eax, word ptr var_00000218
0082D1C0: test eax, eax
0082D1C2: jz 0082D3F6h
0082D1C8: mov var_04, 000000EEh
0082D1CF: mov eax, [ebp+08h]
0082D1D2: mov eax, [eax]
0082D1D4: push [ebp+08h]
0082D1D7: call [eax+00000304h]
0082D1DD: push eax
0082D1DE: lea eax, var_0000009C
0082D1E4: push eax
0082D1E5: call 00410A84h ; Set (object)
0082D1EA: mov var_00000210, eax
0082D1F0: lea eax, var_0000008C
0082D1F6: push eax
0082D1F7: mov eax, var_00000210
0082D1FD: mov eax, [eax]
0082D1FF: push var_00000210
0082D205: call [eax+000000A0h]
0082D20B: fclex 
0082D20D: mov var_00000214, eax
0082D213: cmp var_00000214, 00000000h
0082D21A: jnl 82D23Fh
0082D21C: push 000000A0h
0082D221: push 00440E08h
0082D226: push var_00000210
0082D22C: push var_00000214
0082D232: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082D237: mov var_0000051C, eax
0082D23D: jmp 82D246h
0082D23F: and var_0000051C, 00000000h
0082D246: lea eax, var_40
0082D249: push eax
0082D24A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082D24F: mov var_00000180, eax
0082D255: mov var_00000188, 00000003h
0082D25F: mov eax, var_00000088
0082D265: mov var_00000160, eax
0082D26B: mov var_00000168, 00000008h
0082D275: push var_0000008C
0082D27B: push 00000010h
0082D27D: pop eax
0082D27E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082D283: lea esi, var_00000188
0082D289: mov edi, esp
0082D28B: movsd 
0082D28C: movsd 
0082D28D: movsd 
0082D28E: movsd 
0082D28F: push 00000001h
0082D291: push 00000010h
0082D293: push 00440E58h
0082D298: push 00000010h
0082D29A: pop eax
0082D29B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082D2A0: lea esi, var_00000168
0082D2A6: mov edi, esp
0082D2A8: movsd 
0082D2A9: movsd 
0082D2AA: movsd 
0082D2AB: movsd 
0082D2AC: push 00000001h
0082D2AE: push 00000000h
0082D2B0: push 00440E48h
0082D2B5: push 00000000h
0082D2B7: push 00000018h
0082D2B9: push var_00000228
0082D2BF: lea eax, var_000000B8
0082D2C5: push eax
0082D2C6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082D2CB: add esp, 00000010h
0082D2CE: push eax
0082D2CF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082D2D4: push eax
0082D2D5: lea eax, var_00000094
0082D2DB: push eax
0082D2DC: call 00410A84h ; Set (object)
0082D2E1: push eax
0082D2E2: lea eax, var_000000C8
0082D2E8: push eax
0082D2E9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082D2EE: add esp, 00000020h
0082D2F1: push eax
0082D2F2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082D2F7: push eax
0082D2F8: lea eax, var_00000098
0082D2FE: push eax
0082D2FF: call 00410A84h ; Set (object)
0082D304: push eax
0082D305: lea eax, var_000000D8
0082D30B: push eax
0082D30C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082D311: add esp, 00000020h
0082D314: push eax
0082D315: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082D31A: mov edx, eax
0082D31C: lea ecx, var_00000090
0082D322: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0082D327: push eax
0082D328: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0082D32D: neg eax
0082D32F: sbb eax, eax
0082D331: inc eax
0082D332: neg eax
0082D334: mov var_00000218, ax
0082D33B: lea eax, var_00000090
0082D341: push eax
0082D342: lea eax, var_0000008C
0082D348: push eax
0082D349: push 00000002h
0082D34B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0082D350: add esp, 0000000Ch
0082D353: lea eax, var_0000009C
0082D359: push eax
0082D35A: lea eax, var_00000098
0082D360: push eax
0082D361: lea eax, var_00000094
0082D367: push eax
0082D368: push 00000003h
0082D36A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082D36F: add esp, 00000010h
0082D372: lea eax, var_000000D8
0082D378: push eax
0082D379: lea eax, var_000000C8
0082D37F: push eax
0082D380: lea eax, var_000000B8
0082D386: push eax
0082D387: push 00000003h
0082D389: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082D38E: add esp, 00000010h
0082D391: movsx eax, word ptr var_00000218
0082D398: test eax, eax
0082D39A: jz 82D3F6h
0082D39C: mov var_04, 000000EFh
0082D3A3: lea eax, var_40
0082D3A6: push eax
0082D3A7: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082D3AC: mov var_00000210, eax
0082D3B2: cmp var_00000210, 00000012h
0082D3B9: jnb 82D3C4h
0082D3BB: and var_00000520, 00000000h
0082D3C2: jmp 82D3CFh
0082D3C4: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082D3C9: mov var_00000520, eax
0082D3CF: mov eax, var_00000210
0082D3D5: mov ecx, var_5C
0082D3D8: or word ptr [ecx+eax*2], FFFFh
0082D3DD: mov var_04, 000000F0h
0082D3E4: mov ax, var_4C
0082D3E8: add ax, 0001h
0082D3EC: jo 0082E860h
0082D3F2: mov var_4C, ax
0082D3F6: mov var_04, 000000F3h
0082D3FD: mov eax, [ebp+08h]
0082D400: mov eax, [eax]
0082D402: push [ebp+08h]
0082D405: call [eax+00000388h]
0082D40B: push eax
0082D40C: lea eax, var_00000094
0082D412: push eax
0082D413: call 00410A84h ; Set (object)
0082D418: mov var_00000210, eax
0082D41E: lea eax, var_00000098
0082D424: push eax
0082D425: push 00000001h
0082D427: mov eax, var_00000210
0082D42D: mov eax, [eax]
0082D42F: push var_00000210
0082D435: call [eax+40h]
0082D438: fclex 
0082D43A: mov var_00000214, eax
0082D440: cmp var_00000214, 00000000h
0082D447: jnl 82D469h
0082D449: push 00000040h
0082D44B: push 00440DE8h
0082D450: push var_00000210
0082D456: push var_00000214
0082D45C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082D461: mov var_00000524, eax
0082D467: jmp 82D470h
0082D469: and var_00000524, 00000000h
0082D470: push 00000000h
0082D472: push 00000000h
0082D474: push var_00000098
0082D47A: lea eax, var_000000B8
0082D480: push eax
0082D481: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082D486: add esp, 00000010h
0082D489: push eax
0082D48A: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082D48F: sub ax, FFFFh
0082D493: neg ax
0082D496: sbb eax, eax
0082D498: inc eax
0082D499: neg eax
0082D49B: mov var_00000218, ax
0082D4A2: lea eax, var_00000098
0082D4A8: push eax
0082D4A9: lea eax, var_00000094
0082D4AF: push eax
0082D4B0: push 00000002h
0082D4B2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082D4B7: add esp, 0000000Ch
0082D4BA: lea ecx, var_000000B8
0082D4C0: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082D4C5: movsx eax, word ptr var_00000218
0082D4CC: test eax, eax
0082D4CE: jz 0082D742h
0082D4D4: mov var_04, 000000F4h
0082D4DB: mov eax, [ebp+08h]
0082D4DE: mov eax, [eax]
0082D4E0: push [ebp+08h]
0082D4E3: call [eax+00000304h]
0082D4E9: push eax
0082D4EA: lea eax, var_0000009C
0082D4F0: push eax
0082D4F1: call 00410A84h ; Set (object)
0082D4F6: mov var_00000210, eax
0082D4FC: lea eax, var_00000090
0082D502: push eax
0082D503: mov eax, var_00000210
0082D509: mov eax, [eax]
0082D50B: push var_00000210
0082D511: call [eax+000000A0h]
0082D517: fclex 
0082D519: mov var_00000214, eax
0082D51F: cmp var_00000214, 00000000h
0082D526: jnl 82D54Bh
0082D528: push 000000A0h
0082D52D: push 00440E08h
0082D532: push var_00000210
0082D538: push var_00000214
0082D53E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082D543: mov var_00000528, eax
0082D549: jmp 82D552h
0082D54B: and var_00000528, 00000000h
0082D552: push var_00000090
0082D558: call 004109DCh ; Val(arg_1)
0082D55D: fstp real8 ptr var_000001FC
0082D563: lea eax, var_40
0082D566: push eax
0082D567: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082D56C: mov var_00000180, eax
0082D572: mov var_00000188, 00000003h
0082D57C: mov eax, var_00000088
0082D582: mov var_00000160, eax
0082D588: mov var_00000168, 00000008h
0082D592: push 00000010h
0082D594: pop eax
0082D595: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082D59A: lea esi, var_00000188
0082D5A0: mov edi, esp
0082D5A2: movsd 
0082D5A3: movsd 
0082D5A4: movsd 
0082D5A5: movsd 
0082D5A6: push 00000001h
0082D5A8: push 00000010h
0082D5AA: push 00440E58h
0082D5AF: push 00000010h
0082D5B1: pop eax
0082D5B2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082D5B7: lea esi, var_00000168
0082D5BD: mov edi, esp
0082D5BF: movsd 
0082D5C0: movsd 
0082D5C1: movsd 
0082D5C2: movsd 
0082D5C3: push 00000001h
0082D5C5: push 00000000h
0082D5C7: push 00440E48h
0082D5CC: push 00000000h
0082D5CE: push 00000018h
0082D5D0: push var_00000228
0082D5D6: lea eax, var_000000B8
0082D5DC: push eax
0082D5DD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082D5E2: add esp, 00000010h
0082D5E5: push eax
0082D5E6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082D5EB: push eax
0082D5EC: lea eax, var_00000094
0082D5F2: push eax
0082D5F3: call 00410A84h ; Set (object)
0082D5F8: push eax
0082D5F9: lea eax, var_000000C8
0082D5FF: push eax
0082D600: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082D605: add esp, 00000020h
0082D608: push eax
0082D609: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082D60E: push eax
0082D60F: lea eax, var_00000098
0082D615: push eax
0082D616: call 00410A84h ; Set (object)
0082D61B: push eax
0082D61C: lea eax, var_000000D8
0082D622: push eax
0082D623: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082D628: add esp, 00000020h
0082D62B: push eax
0082D62C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082D631: mov edx, eax
0082D633: lea ecx, var_0000008C
0082D639: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0082D63E: push eax
0082D63F: call 004109DCh ; Val(arg_1)
0082D644: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0082D649: fstp real8 ptr var_00000530
0082D64F: fld real8 ptr var_000001FC
0082D655: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0082D65A: fcomp real8 ptr var_00000530
0082D660: fstsw ax
0082D662: sahf 
0082D663: jnbe 82D671h
0082D665: mov var_00000534, 00000001h
0082D66F: jmp 82D678h
0082D671: and var_00000534, 00000000h
0082D678: mov eax, var_00000534
0082D67E: neg eax
0082D680: mov var_00000218, ax
0082D687: lea eax, var_00000090
0082D68D: push eax
0082D68E: lea eax, var_0000008C
0082D694: push eax
0082D695: push 00000002h
0082D697: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0082D69C: add esp, 0000000Ch
0082D69F: lea eax, var_0000009C
0082D6A5: push eax
0082D6A6: lea eax, var_00000098
0082D6AC: push eax
0082D6AD: lea eax, var_00000094
0082D6B3: push eax
0082D6B4: push 00000003h
0082D6B6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082D6BB: add esp, 00000010h
0082D6BE: lea eax, var_000000D8
0082D6C4: push eax
0082D6C5: lea eax, var_000000C8
0082D6CB: push eax
0082D6CC: lea eax, var_000000B8
0082D6D2: push eax
0082D6D3: push 00000003h
0082D6D5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082D6DA: add esp, 00000010h
0082D6DD: movsx eax, word ptr var_00000218
0082D6E4: test eax, eax
0082D6E6: jz 82D742h
0082D6E8: mov var_04, 000000F5h
0082D6EF: lea eax, var_40
0082D6F2: push eax
0082D6F3: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082D6F8: mov var_00000210, eax
0082D6FE: cmp var_00000210, 00000012h
0082D705: jnb 82D710h
0082D707: and var_00000538, 00000000h
0082D70E: jmp 82D71Bh
0082D710: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082D715: mov var_00000538, eax
0082D71B: mov eax, var_00000210
0082D721: mov ecx, var_5C
0082D724: or word ptr [ecx+eax*2], FFFFh
0082D729: mov var_04, 000000F6h
0082D730: mov ax, var_4C
0082D734: add ax, 0001h
0082D738: jo 0082E860h
0082D73E: mov var_4C, ax
0082D742: mov var_04, 000000F9h
0082D749: mov eax, [ebp+08h]
0082D74C: mov eax, [eax]
0082D74E: push [ebp+08h]
0082D751: call [eax+00000388h]
0082D757: push eax
0082D758: lea eax, var_00000094
0082D75E: push eax
0082D75F: call 00410A84h ; Set (object)
0082D764: mov var_00000210, eax
0082D76A: lea eax, var_00000098
0082D770: push eax
0082D771: push 00000002h
0082D773: mov eax, var_00000210
0082D779: mov eax, [eax]
0082D77B: push var_00000210
0082D781: call [eax+40h]
0082D784: fclex 
0082D786: mov var_00000214, eax
0082D78C: cmp var_00000214, 00000000h
0082D793: jnl 82D7B5h
0082D795: push 00000040h
0082D797: push 00440DE8h
0082D79C: push var_00000210
0082D7A2: push var_00000214
0082D7A8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082D7AD: mov var_0000053C, eax
0082D7B3: jmp 82D7BCh
0082D7B5: and var_0000053C, 00000000h
0082D7BC: push 00000000h
0082D7BE: push 00000000h
0082D7C0: push var_00000098
0082D7C6: lea eax, var_000000B8
0082D7CC: push eax
0082D7CD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082D7D2: add esp, 00000010h
0082D7D5: push eax
0082D7D6: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0082D7DB: sub ax, FFFFh
0082D7DF: neg ax
0082D7E2: sbb eax, eax
0082D7E4: inc eax
0082D7E5: neg eax
0082D7E7: mov var_00000218, ax
0082D7EE: lea eax, var_00000098
0082D7F4: push eax
0082D7F5: lea eax, var_00000094
0082D7FB: push eax
0082D7FC: push 00000002h
0082D7FE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082D803: add esp, 0000000Ch
0082D806: lea ecx, var_000000B8
0082D80C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082D811: movsx eax, word ptr var_00000218
0082D818: test eax, eax
0082D81A: jz 0082DA8Eh
0082D820: mov var_04, 000000FAh
0082D827: mov eax, [ebp+08h]
0082D82A: mov eax, [eax]
0082D82C: push [ebp+08h]
0082D82F: call [eax+00000304h]
0082D835: push eax
0082D836: lea eax, var_0000009C
0082D83C: push eax
0082D83D: call 00410A84h ; Set (object)
0082D842: mov var_00000210, eax
0082D848: lea eax, var_00000090
0082D84E: push eax
0082D84F: mov eax, var_00000210
0082D855: mov eax, [eax]
0082D857: push var_00000210
0082D85D: call [eax+000000A0h]
0082D863: fclex 
0082D865: mov var_00000214, eax
0082D86B: cmp var_00000214, 00000000h
0082D872: jnl 82D897h
0082D874: push 000000A0h
0082D879: push 00440E08h
0082D87E: push var_00000210
0082D884: push var_00000214
0082D88A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082D88F: mov var_00000540, eax
0082D895: jmp 82D89Eh
0082D897: and var_00000540, 00000000h
0082D89E: push var_00000090
0082D8A4: call 004109DCh ; Val(arg_1)
0082D8A9: fstp real8 ptr var_000001FC
0082D8AF: lea eax, var_40
0082D8B2: push eax
0082D8B3: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082D8B8: mov var_00000180, eax
0082D8BE: mov var_00000188, 00000003h
0082D8C8: mov eax, var_00000088
0082D8CE: mov var_00000160, eax
0082D8D4: mov var_00000168, 00000008h
0082D8DE: push 00000010h
0082D8E0: pop eax
0082D8E1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082D8E6: lea esi, var_00000188
0082D8EC: mov edi, esp
0082D8EE: movsd 
0082D8EF: movsd 
0082D8F0: movsd 
0082D8F1: movsd 
0082D8F2: push 00000001h
0082D8F4: push 00000010h
0082D8F6: push 00440E58h
0082D8FB: push 00000010h
0082D8FD: pop eax
0082D8FE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082D903: lea esi, var_00000168
0082D909: mov edi, esp
0082D90B: movsd 
0082D90C: movsd 
0082D90D: movsd 
0082D90E: movsd 
0082D90F: push 00000001h
0082D911: push 00000000h
0082D913: push 00440E48h
0082D918: push 00000000h
0082D91A: push 00000018h
0082D91C: push var_00000228
0082D922: lea eax, var_000000B8
0082D928: push eax
0082D929: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082D92E: add esp, 00000010h
0082D931: push eax
0082D932: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082D937: push eax
0082D938: lea eax, var_00000094
0082D93E: push eax
0082D93F: call 00410A84h ; Set (object)
0082D944: push eax
0082D945: lea eax, var_000000C8
0082D94B: push eax
0082D94C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082D951: add esp, 00000020h
0082D954: push eax
0082D955: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082D95A: push eax
0082D95B: lea eax, var_00000098
0082D961: push eax
0082D962: call 00410A84h ; Set (object)
0082D967: push eax
0082D968: lea eax, var_000000D8
0082D96E: push eax
0082D96F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082D974: add esp, 00000020h
0082D977: push eax
0082D978: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082D97D: mov edx, eax
0082D97F: lea ecx, var_0000008C
0082D985: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0082D98A: push eax
0082D98B: call 004109DCh ; Val(arg_1)
0082D990: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0082D995: fstp real8 ptr var_00000548
0082D99B: fld real8 ptr var_000001FC
0082D9A1: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0082D9A6: fcomp real8 ptr var_00000548
0082D9AC: fstsw ax
0082D9AE: sahf 
0082D9AF: jb 82D9BDh
0082D9B1: mov var_0000054C, 00000001h
0082D9BB: jmp 82D9C4h
0082D9BD: and var_0000054C, 00000000h
0082D9C4: mov eax, var_0000054C
0082D9CA: neg eax
0082D9CC: mov var_00000218, ax
0082D9D3: lea eax, var_00000090
0082D9D9: push eax
0082D9DA: lea eax, var_0000008C
0082D9E0: push eax
0082D9E1: push 00000002h
0082D9E3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0082D9E8: add esp, 0000000Ch
0082D9EB: lea eax, var_0000009C
0082D9F1: push eax
0082D9F2: lea eax, var_00000098
0082D9F8: push eax
0082D9F9: lea eax, var_00000094
0082D9FF: push eax
0082DA00: push 00000003h
0082DA02: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082DA07: add esp, 00000010h
0082DA0A: lea eax, var_000000D8
0082DA10: push eax
0082DA11: lea eax, var_000000C8
0082DA17: push eax
0082DA18: lea eax, var_000000B8
0082DA1E: push eax
0082DA1F: push 00000003h
0082DA21: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082DA26: add esp, 00000010h
0082DA29: movsx eax, word ptr var_00000218
0082DA30: test eax, eax
0082DA32: jz 82DA8Eh
0082DA34: mov var_04, 000000FBh
0082DA3B: lea eax, var_40
0082DA3E: push eax
0082DA3F: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082DA44: mov var_00000210, eax
0082DA4A: cmp var_00000210, 00000012h
0082DA51: jnb 82DA5Ch
0082DA53: and var_00000550, 00000000h
0082DA5A: jmp 82DA67h
0082DA5C: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082DA61: mov var_00000550, eax
0082DA67: mov eax, var_00000210
0082DA6D: mov ecx, var_5C
0082DA70: or word ptr [ecx+eax*2], FFFFh
0082DA75: mov var_04, 000000FCh
0082DA7C: mov ax, var_4C
0082DA80: add ax, 0001h
0082DA84: jo 0082E860h
0082DA8A: mov var_4C, ax
0082DA8E: mov var_04, 00000101h
0082DA95: lea eax, var_000002A8
0082DA9B: push eax
0082DA9C: lea eax, var_00000298
0082DAA2: push eax
0082DAA3: lea eax, var_40
0082DAA6: push eax
0082DAA7: call 00410A36h ; Next
0082DAAC: mov var_0000033C, eax
0082DAB2: cmp var_0000033C, 00000000h
0082DAB9: jnz 00826724h
0082DABF: mov var_04, 00000102h
0082DAC6: and word ptr var_70, 0000h
0082DACB: mov var_04, 00000103h
0082DAD2: mov var_00000160, 00000001h
0082DADC: mov var_00000168, 00000002h
0082DAE6: lea eax, var_68
0082DAE9: push eax
0082DAEA: push 00000001h
0082DAEC: call 00410886h ; UBound
0082DAF1: mov var_00000170, eax
0082DAF7: mov var_00000178, 00000003h
0082DB01: lea eax, var_68
0082DB04: push eax
0082DB05: push 00000001h
0082DB07: call 00410880h ; LBound(arg_1)
0082DB0C: mov var_00000180, eax
0082DB12: mov var_00000188, 00000003h
0082DB1C: lea eax, var_00000168
0082DB22: push eax
0082DB23: lea eax, var_00000178
0082DB29: push eax
0082DB2A: lea eax, var_00000188
0082DB30: push eax
0082DB31: lea eax, var_000002D8
0082DB37: push eax
0082DB38: lea eax, var_000002C8
0082DB3E: push eax
0082DB3F: lea eax, var_40
0082DB42: push eax
0082DB43: call 00410A3Ch ; For
0082DB48: mov var_00000358, eax
0082DB4E: jmp 82DBC3h
0082DB50: mov var_04, 00000104h
0082DB57: lea eax, var_40
0082DB5A: push eax
0082DB5B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082DB60: mov var_00000210, eax
0082DB66: cmp var_00000210, 00000012h
0082DB6D: jnb 82DB78h
0082DB6F: and var_00000554, 00000000h
0082DB76: jmp 82DB83h
0082DB78: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0082DB7D: mov var_00000554, eax
0082DB83: mov eax, var_00000210
0082DB89: mov ecx, var_5C
0082DB8C: cmp word ptr [ecx+eax*2], FFFFh
0082DB91: jnz 82DB9Fh
0082DB93: mov var_04, 00000105h
0082DB9A: or word ptr var_70, FFFFh
0082DB9F: mov var_04, 00000107h
0082DBA6: lea eax, var_000002D8
0082DBAC: push eax
0082DBAD: lea eax, var_000002C8
0082DBB3: push eax
0082DBB4: lea eax, var_40
0082DBB7: push eax
0082DBB8: call 00410A36h ; Next
0082DBBD: mov var_00000358, eax
0082DBC3: cmp var_00000358, 00000000h
0082DBCA: jnz 82DB50h
0082DBCC: mov var_04, 00000108h
0082DBD3: cmp word ptr var_70, FFFFh
0082DBD8: jnz 0082E688h
0082DBDE: mov var_04, 00000109h
0082DBE5: push 00000000h
0082DBE7: push 00000000h
0082DBE9: mov eax, [ebp+08h]
0082DBEC: mov eax, [eax]
0082DBEE: push [ebp+08h]
0082DBF1: call [eax+000003B8h]
0082DBF7: push eax
0082DBF8: lea eax, var_00000094
0082DBFE: push eax
0082DBFF: call 00410A84h ; Set (object)
0082DC04: push eax
0082DC05: lea eax, var_000000B8
0082DC0B: push eax
0082DC0C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082DC11: add esp, 00000010h
0082DC14: push eax
0082DC15: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082DC1A: dec eax
0082DC1B: neg eax
0082DC1D: sbb eax, eax
0082DC1F: inc eax
0082DC20: neg eax
0082DC22: mov var_00000210, ax
0082DC29: lea ecx, var_00000094
0082DC2F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0082DC34: lea ecx, var_000000B8
0082DC3A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082DC3F: movsx eax, word ptr var_00000210
0082DC46: test eax, eax
0082DC48: jz 0082E178h
0082DC4E: mov var_04, 0000010Ah
0082DC55: mov ax, var_4C
0082DC59: cmp ax, var_48
0082DC5D: jnz 0082E173h
0082DC63: mov var_04, 0000010Bh
0082DC6A: mov var_00000170, 80020004h
0082DC74: mov var_00000178, 0000000Ah
0082DC7E: mov eax, var_00000088
0082DC84: mov var_00000190, eax
0082DC8A: mov var_00000198, 00000008h
0082DC94: lea eax, var_30
0082DC97: mov var_00000160, eax
0082DC9D: mov var_00000168, 0000400Ch
0082DCA7: push 00000000h
0082DCA9: push 00000000h
0082DCAB: push 00440E58h
0082DCB0: push 00000010h
0082DCB2: pop eax
0082DCB3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082DCB8: lea esi, var_00000168
0082DCBE: mov edi, esp
0082DCC0: movsd 
0082DCC1: movsd 
0082DCC2: movsd 
0082DCC3: movsd 
0082DCC4: push 00000001h
0082DCC6: push 00000000h
0082DCC8: push 00440E48h
0082DCCD: push 00000000h
0082DCCF: push 00000018h
0082DCD1: push var_00000228
0082DCD7: lea eax, var_000000B8
0082DCDD: push eax
0082DCDE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082DCE3: add esp, 00000010h
0082DCE6: push eax
0082DCE7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082DCEC: push eax
0082DCED: lea eax, var_00000094
0082DCF3: push eax
0082DCF4: call 00410A84h ; Set (object)
0082DCF9: push eax
0082DCFA: lea eax, var_000000C8
0082DD00: push eax
0082DD01: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082DD06: add esp, 00000020h
0082DD09: push eax
0082DD0A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082DD0F: push eax
0082DD10: lea eax, var_00000098
0082DD16: push eax
0082DD17: call 00410A84h ; Set (object)
0082DD1C: push eax
0082DD1D: lea eax, var_000000D8
0082DD23: push eax
0082DD24: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082DD29: add esp, 00000010h
0082DD2C: push eax
0082DD2D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082DD32: mov var_000000F0, eax
0082DD38: mov var_000000F8, 00000008h
0082DD42: cmp [008F2010h], 00000000h
0082DD49: jnz 82DD66h
0082DD4B: push 008F2010h
0082DD50: push 00433984h
0082DD55: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0082DD5A: mov var_00000558, 008F2010h
0082DD64: jmp 82DD70h
0082DD66: mov var_00000558, 008F2010h
0082DD70: push 00000010h
0082DD72: pop eax
0082DD73: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082DD78: lea esi, var_00000178
0082DD7E: mov edi, esp
0082DD80: movsd 
0082DD81: movsd 
0082DD82: movsd 
0082DD83: movsd 
0082DD84: push 00000010h
0082DD86: pop eax
0082DD87: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082DD8C: lea esi, var_00000198
0082DD92: mov edi, esp
0082DD94: movsd 
0082DD95: movsd 
0082DD96: movsd 
0082DD97: movsd 
0082DD98: push 00000010h
0082DD9A: pop eax
0082DD9B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082DDA0: lea esi, var_000000F8
0082DDA6: mov edi, esp
0082DDA8: movsd 
0082DDA9: movsd 
0082DDAA: movsd 
0082DDAB: movsd 
0082DDAC: push 00000003h
0082DDAE: push 00000002h
0082DDB0: push 00440E48h
0082DDB5: push 00000000h
0082DDB7: push 00000018h
0082DDB9: mov eax, var_00000558
0082DDBF: mov eax, [eax]
0082DDC1: mov ecx, var_00000558
0082DDC7: mov ecx, [ecx]
0082DDC9: mov ecx, [ecx]
0082DDCB: push eax
0082DDCC: call [ecx+0000054Ch]
0082DDD2: push eax
0082DDD3: lea eax, var_0000009C
0082DDD9: push eax
0082DDDA: call 00410A84h ; Set (object)
0082DDDF: push eax
0082DDE0: lea eax, var_000000E8
0082DDE6: push eax
0082DDE7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082DDEC: add esp, 00000010h
0082DDEF: push eax
0082DDF0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082DDF5: push eax
0082DDF6: lea eax, var_000000A0
0082DDFC: push eax
0082DDFD: call 00410A84h ; Set (object)
0082DE02: push eax
0082DE03: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0082DE08: add esp, 0000003Ch
0082DE0B: lea eax, var_000000A0
0082DE11: push eax
0082DE12: lea eax, var_0000009C
0082DE18: push eax
0082DE19: lea eax, var_00000098
0082DE1F: push eax
0082DE20: lea eax, var_00000094
0082DE26: push eax
0082DE27: push 00000004h
0082DE29: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082DE2E: add esp, 00000014h
0082DE31: lea eax, var_000000F8
0082DE37: push eax
0082DE38: lea eax, var_000000E8
0082DE3E: push eax
0082DE3F: lea eax, var_000000D8
0082DE45: push eax
0082DE46: lea eax, var_000000C8
0082DE4C: push eax
0082DE4D: lea eax, var_000000B8
0082DE53: push eax
0082DE54: push 00000005h
0082DE56: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082DE5B: add esp, 00000018h
0082DE5E: mov var_04, 0000010Ch
0082DE65: mov var_00000160, 00000001h
0082DE6F: mov var_00000168, 00000002h
0082DE79: mov var_00000170, 00000013h
0082DE83: mov var_00000178, 00000002h
0082DE8D: mov var_00000180, 00000001h
0082DE97: mov var_00000188, 00000002h
0082DEA1: lea eax, var_00000168
0082DEA7: push eax
0082DEA8: lea eax, var_00000178
0082DEAE: push eax
0082DEAF: lea eax, var_00000188
0082DEB5: push eax
0082DEB6: lea eax, var_000002F8
0082DEBC: push eax
0082DEBD: lea eax, var_000002E8
0082DEC3: push eax
0082DEC4: lea eax, var_40
0082DEC7: push eax
0082DEC8: call 00410A3Ch ; For
0082DECD: mov var_0000035C, eax
0082DED3: jmp 0082E166h
0082DED8: mov var_04, 0000010Dh
0082DEDF: lea eax, var_40
0082DEE2: push eax
0082DEE3: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082DEE8: mov var_000001C0, eax
0082DEEE: mov var_000001C8, 00000003h
0082DEF8: lea eax, var_40
0082DEFB: push eax
0082DEFC: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082DF01: mov var_00000180, eax
0082DF07: mov var_00000188, 00000003h
0082DF11: mov eax, var_00000088
0082DF17: mov var_00000160, eax
0082DF1D: mov var_00000168, 00000008h
0082DF27: push 00000010h
0082DF29: pop eax
0082DF2A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082DF2F: lea esi, var_00000188
0082DF35: mov edi, esp
0082DF37: movsd 
0082DF38: movsd 
0082DF39: movsd 
0082DF3A: movsd 
0082DF3B: push 00000001h
0082DF3D: push 00000010h
0082DF3F: push 00440E58h
0082DF44: push 00000010h
0082DF46: pop eax
0082DF47: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082DF4C: lea esi, var_00000168
0082DF52: mov edi, esp
0082DF54: movsd 
0082DF55: movsd 
0082DF56: movsd 
0082DF57: movsd 
0082DF58: push 00000001h
0082DF5A: push 00000000h
0082DF5C: push 00440E48h
0082DF61: push 00000000h
0082DF63: push 00000018h
0082DF65: push var_00000228
0082DF6B: lea eax, var_000000B8
0082DF71: push eax
0082DF72: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082DF77: add esp, 00000010h
0082DF7A: push eax
0082DF7B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082DF80: push eax
0082DF81: lea eax, var_00000094
0082DF87: push eax
0082DF88: call 00410A84h ; Set (object)
0082DF8D: push eax
0082DF8E: lea eax, var_000000C8
0082DF94: push eax
0082DF95: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082DF9A: add esp, 00000020h
0082DF9D: push eax
0082DF9E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082DFA3: push eax
0082DFA4: lea eax, var_00000098
0082DFAA: push eax
0082DFAB: call 00410A84h ; Set (object)
0082DFB0: push eax
0082DFB1: lea eax, var_000000D8
0082DFB7: push eax
0082DFB8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082DFBD: add esp, 00000020h
0082DFC0: push eax
0082DFC1: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082DFC6: mov var_00000100, eax
0082DFCC: mov var_00000108, 00000008h
0082DFD6: mov eax, var_00000088
0082DFDC: mov var_000001A0, eax
0082DFE2: mov var_000001A8, 00000008h
0082DFEC: cmp [008F2010h], 00000000h
0082DFF3: jnz 82E010h
0082DFF5: push 008F2010h
0082DFFA: push 00433984h
0082DFFF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0082E004: mov var_0000055C, 008F2010h
0082E00E: jmp 82E01Ah
0082E010: mov var_0000055C, 008F2010h
0082E01A: push 00000010h
0082E01C: pop eax
0082E01D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082E022: lea esi, var_000001C8
0082E028: mov edi, esp
0082E02A: movsd 
0082E02B: movsd 
0082E02C: movsd 
0082E02D: movsd 
0082E02E: push 00000010h
0082E030: pop eax
0082E031: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082E036: lea esi, var_00000108
0082E03C: mov edi, esp
0082E03E: movsd 
0082E03F: movsd 
0082E040: movsd 
0082E041: movsd 
0082E042: push 00000001h
0082E044: push 00000010h
0082E046: push 00440E58h
0082E04B: push 00000010h
0082E04D: pop eax
0082E04E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082E053: lea esi, var_000001A8
0082E059: mov edi, esp
0082E05B: movsd 
0082E05C: movsd 
0082E05D: movsd 
0082E05E: movsd 
0082E05F: push 00000001h
0082E061: push 00000000h
0082E063: push 00440E48h
0082E068: push 00000000h
0082E06A: push 00000018h
0082E06C: mov eax, var_0000055C
0082E072: mov eax, [eax]
0082E074: mov ecx, var_0000055C
0082E07A: mov ecx, [ecx]
0082E07C: mov ecx, [ecx]
0082E07E: push eax
0082E07F: call [ecx+0000054Ch]
0082E085: push eax
0082E086: lea eax, var_0000009C
0082E08C: push eax
0082E08D: call 00410A84h ; Set (object)
0082E092: push eax
0082E093: lea eax, var_000000E8
0082E099: push eax
0082E09A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082E09F: add esp, 00000010h
0082E0A2: push eax
0082E0A3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082E0A8: push eax
0082E0A9: lea eax, var_000000A0
0082E0AF: push eax
0082E0B0: call 00410A84h ; Set (object)
0082E0B5: push eax
0082E0B6: lea eax, var_000000F8
0082E0BC: push eax
0082E0BD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082E0C2: add esp, 00000020h
0082E0C5: push eax
0082E0C6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082E0CB: push eax
0082E0CC: lea eax, var_000000A4
0082E0D2: push eax
0082E0D3: call 00410A84h ; Set (object)
0082E0D8: push eax
0082E0D9: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
0082E0DE: add esp, 0000002Ch
0082E0E1: lea eax, var_000000A4
0082E0E7: push eax
0082E0E8: lea eax, var_000000A0
0082E0EE: push eax
0082E0EF: lea eax, var_0000009C
0082E0F5: push eax
0082E0F6: lea eax, var_00000098
0082E0FC: push eax
0082E0FD: lea eax, var_00000094
0082E103: push eax
0082E104: push 00000005h
0082E106: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082E10B: add esp, 00000018h
0082E10E: lea eax, var_00000108
0082E114: push eax
0082E115: lea eax, var_000000F8
0082E11B: push eax
0082E11C: lea eax, var_000000E8
0082E122: push eax
0082E123: lea eax, var_000000D8
0082E129: push eax
0082E12A: lea eax, var_000000C8
0082E130: push eax
0082E131: lea eax, var_000000B8
0082E137: push eax
0082E138: push 00000006h
0082E13A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082E13F: add esp, 0000001Ch
0082E142: mov var_04, 0000010Eh
0082E149: lea eax, var_000002F8
0082E14F: push eax
0082E150: lea eax, var_000002E8
0082E156: push eax
0082E157: lea eax, var_40
0082E15A: push eax
0082E15B: call 00410A36h ; Next
0082E160: mov var_0000035C, eax
0082E166: cmp var_0000035C, 00000000h
0082E16D: jnz 0082DED8h
0082E173: jmp 0082E688h
0082E178: mov var_04, 00000111h
0082E17F: mov var_00000170, 80020004h
0082E189: mov var_00000178, 0000000Ah
0082E193: mov eax, var_00000088
0082E199: mov var_00000190, eax
0082E19F: mov var_00000198, 00000008h
0082E1A9: lea eax, var_30
0082E1AC: mov var_00000160, eax
0082E1B2: mov var_00000168, 0000400Ch
0082E1BC: push 00000000h
0082E1BE: push 00000000h
0082E1C0: push 00440E58h
0082E1C5: push 00000010h
0082E1C7: pop eax
0082E1C8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082E1CD: lea esi, var_00000168
0082E1D3: mov edi, esp
0082E1D5: movsd 
0082E1D6: movsd 
0082E1D7: movsd 
0082E1D8: movsd 
0082E1D9: push 00000001h
0082E1DB: push 00000000h
0082E1DD: push 00440E48h
0082E1E2: push 00000000h
0082E1E4: push 00000018h
0082E1E6: push var_00000228
0082E1EC: lea eax, var_000000B8
0082E1F2: push eax
0082E1F3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082E1F8: add esp, 00000010h
0082E1FB: push eax
0082E1FC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082E201: push eax
0082E202: lea eax, var_00000094
0082E208: push eax
0082E209: call 00410A84h ; Set (object)
0082E20E: push eax
0082E20F: lea eax, var_000000C8
0082E215: push eax
0082E216: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082E21B: add esp, 00000020h
0082E21E: push eax
0082E21F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082E224: push eax
0082E225: lea eax, var_00000098
0082E22B: push eax
0082E22C: call 00410A84h ; Set (object)
0082E231: push eax
0082E232: lea eax, var_000000D8
0082E238: push eax
0082E239: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082E23E: add esp, 00000010h
0082E241: push eax
0082E242: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082E247: mov var_000000F0, eax
0082E24D: mov var_000000F8, 00000008h
0082E257: cmp [008F2010h], 00000000h
0082E25E: jnz 82E27Bh
0082E260: push 008F2010h
0082E265: push 00433984h
0082E26A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0082E26F: mov var_00000560, 008F2010h
0082E279: jmp 82E285h
0082E27B: mov var_00000560, 008F2010h
0082E285: push 00000010h
0082E287: pop eax
0082E288: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082E28D: lea esi, var_00000178
0082E293: mov edi, esp
0082E295: movsd 
0082E296: movsd 
0082E297: movsd 
0082E298: movsd 
0082E299: push 00000010h
0082E29B: pop eax
0082E29C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082E2A1: lea esi, var_00000198
0082E2A7: mov edi, esp
0082E2A9: movsd 
0082E2AA: movsd 
0082E2AB: movsd 
0082E2AC: movsd 
0082E2AD: push 00000010h
0082E2AF: pop eax
0082E2B0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082E2B5: lea esi, var_000000F8
0082E2BB: mov edi, esp
0082E2BD: movsd 
0082E2BE: movsd 
0082E2BF: movsd 
0082E2C0: movsd 
0082E2C1: push 00000003h
0082E2C3: push 00000002h
0082E2C5: push 00440E48h
0082E2CA: push 00000000h
0082E2CC: push 00000018h
0082E2CE: mov eax, var_00000560
0082E2D4: mov eax, [eax]
0082E2D6: mov ecx, var_00000560
0082E2DC: mov ecx, [ecx]
0082E2DE: mov ecx, [ecx]
0082E2E0: push eax
0082E2E1: call [ecx+0000054Ch]
0082E2E7: push eax
0082E2E8: lea eax, var_0000009C
0082E2EE: push eax
0082E2EF: call 00410A84h ; Set (object)
0082E2F4: push eax
0082E2F5: lea eax, var_000000E8
0082E2FB: push eax
0082E2FC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082E301: add esp, 00000010h
0082E304: push eax
0082E305: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082E30A: push eax
0082E30B: lea eax, var_000000A0
0082E311: push eax
0082E312: call 00410A84h ; Set (object)
0082E317: push eax
0082E318: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0082E31D: add esp, 0000003Ch
0082E320: lea eax, var_000000A0
0082E326: push eax
0082E327: lea eax, var_0000009C
0082E32D: push eax
0082E32E: lea eax, var_00000098
0082E334: push eax
0082E335: lea eax, var_00000094
0082E33B: push eax
0082E33C: push 00000004h
0082E33E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082E343: add esp, 00000014h
0082E346: lea eax, var_000000F8
0082E34C: push eax
0082E34D: lea eax, var_000000E8
0082E353: push eax
0082E354: lea eax, var_000000D8
0082E35A: push eax
0082E35B: lea eax, var_000000C8
0082E361: push eax
0082E362: lea eax, var_000000B8
0082E368: push eax
0082E369: push 00000005h
0082E36B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082E370: add esp, 00000018h
0082E373: mov var_04, 00000112h
0082E37A: mov var_00000160, 00000001h
0082E384: mov var_00000168, 00000002h
0082E38E: mov var_00000170, 00000013h
0082E398: mov var_00000178, 00000002h
0082E3A2: mov var_00000180, 00000001h
0082E3AC: mov var_00000188, 00000002h
0082E3B6: lea eax, var_00000168
0082E3BC: push eax
0082E3BD: lea eax, var_00000178
0082E3C3: push eax
0082E3C4: lea eax, var_00000188
0082E3CA: push eax
0082E3CB: lea eax, var_00000318
0082E3D1: push eax
0082E3D2: lea eax, var_00000308
0082E3D8: push eax
0082E3D9: lea eax, var_40
0082E3DC: push eax
0082E3DD: call 00410A3Ch ; For
0082E3E2: mov var_00000360, eax
0082E3E8: jmp 0082E67Bh
0082E3ED: mov var_04, 00000113h
0082E3F4: lea eax, var_40
0082E3F7: push eax
0082E3F8: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082E3FD: mov var_000001C0, eax
0082E403: mov var_000001C8, 00000003h
0082E40D: lea eax, var_40
0082E410: push eax
0082E411: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0082E416: mov var_00000180, eax
0082E41C: mov var_00000188, 00000003h
0082E426: mov eax, var_00000088
0082E42C: mov var_00000160, eax
0082E432: mov var_00000168, 00000008h
0082E43C: push 00000010h
0082E43E: pop eax
0082E43F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082E444: lea esi, var_00000188
0082E44A: mov edi, esp
0082E44C: movsd 
0082E44D: movsd 
0082E44E: movsd 
0082E44F: movsd 
0082E450: push 00000001h
0082E452: push 00000010h
0082E454: push 00440E58h
0082E459: push 00000010h
0082E45B: pop eax
0082E45C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082E461: lea esi, var_00000168
0082E467: mov edi, esp
0082E469: movsd 
0082E46A: movsd 
0082E46B: movsd 
0082E46C: movsd 
0082E46D: push 00000001h
0082E46F: push 00000000h
0082E471: push 00440E48h
0082E476: push 00000000h
0082E478: push 00000018h
0082E47A: push var_00000228
0082E480: lea eax, var_000000B8
0082E486: push eax
0082E487: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082E48C: add esp, 00000010h
0082E48F: push eax
0082E490: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082E495: push eax
0082E496: lea eax, var_00000094
0082E49C: push eax
0082E49D: call 00410A84h ; Set (object)
0082E4A2: push eax
0082E4A3: lea eax, var_000000C8
0082E4A9: push eax
0082E4AA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082E4AF: add esp, 00000020h
0082E4B2: push eax
0082E4B3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082E4B8: push eax
0082E4B9: lea eax, var_00000098
0082E4BF: push eax
0082E4C0: call 00410A84h ; Set (object)
0082E4C5: push eax
0082E4C6: lea eax, var_000000D8
0082E4CC: push eax
0082E4CD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082E4D2: add esp, 00000020h
0082E4D5: push eax
0082E4D6: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082E4DB: mov var_00000100, eax
0082E4E1: mov var_00000108, 00000008h
0082E4EB: mov eax, var_00000088
0082E4F1: mov var_000001A0, eax
0082E4F7: mov var_000001A8, 00000008h
0082E501: cmp [008F2010h], 00000000h
0082E508: jnz 82E525h
0082E50A: push 008F2010h
0082E50F: push 00433984h
0082E514: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0082E519: mov var_00000564, 008F2010h
0082E523: jmp 82E52Fh
0082E525: mov var_00000564, 008F2010h
0082E52F: push 00000010h
0082E531: pop eax
0082E532: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082E537: lea esi, var_000001C8
0082E53D: mov edi, esp
0082E53F: movsd 
0082E540: movsd 
0082E541: movsd 
0082E542: movsd 
0082E543: push 00000010h
0082E545: pop eax
0082E546: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082E54B: lea esi, var_00000108
0082E551: mov edi, esp
0082E553: movsd 
0082E554: movsd 
0082E555: movsd 
0082E556: movsd 
0082E557: push 00000001h
0082E559: push 00000010h
0082E55B: push 00440E58h
0082E560: push 00000010h
0082E562: pop eax
0082E563: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082E568: lea esi, var_000001A8
0082E56E: mov edi, esp
0082E570: movsd 
0082E571: movsd 
0082E572: movsd 
0082E573: movsd 
0082E574: push 00000001h
0082E576: push 00000000h
0082E578: push 00440E48h
0082E57D: push 00000000h
0082E57F: push 00000018h
0082E581: mov eax, var_00000564
0082E587: mov eax, [eax]
0082E589: mov ecx, var_00000564
0082E58F: mov ecx, [ecx]
0082E591: mov ecx, [ecx]
0082E593: push eax
0082E594: call [ecx+0000054Ch]
0082E59A: push eax
0082E59B: lea eax, var_0000009C
0082E5A1: push eax
0082E5A2: call 00410A84h ; Set (object)
0082E5A7: push eax
0082E5A8: lea eax, var_000000E8
0082E5AE: push eax
0082E5AF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082E5B4: add esp, 00000010h
0082E5B7: push eax
0082E5B8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082E5BD: push eax
0082E5BE: lea eax, var_000000A0
0082E5C4: push eax
0082E5C5: call 00410A84h ; Set (object)
0082E5CA: push eax
0082E5CB: lea eax, var_000000F8
0082E5D1: push eax
0082E5D2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082E5D7: add esp, 00000020h
0082E5DA: push eax
0082E5DB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082E5E0: push eax
0082E5E1: lea eax, var_000000A4
0082E5E7: push eax
0082E5E8: call 00410A84h ; Set (object)
0082E5ED: push eax
0082E5EE: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
0082E5F3: add esp, 0000002Ch
0082E5F6: lea eax, var_000000A4
0082E5FC: push eax
0082E5FD: lea eax, var_000000A0
0082E603: push eax
0082E604: lea eax, var_0000009C
0082E60A: push eax
0082E60B: lea eax, var_00000098
0082E611: push eax
0082E612: lea eax, var_00000094
0082E618: push eax
0082E619: push 00000005h
0082E61B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082E620: add esp, 00000018h
0082E623: lea eax, var_00000108
0082E629: push eax
0082E62A: lea eax, var_000000F8
0082E630: push eax
0082E631: lea eax, var_000000E8
0082E637: push eax
0082E638: lea eax, var_000000D8
0082E63E: push eax
0082E63F: lea eax, var_000000C8
0082E645: push eax
0082E646: lea eax, var_000000B8
0082E64C: push eax
0082E64D: push 00000006h
0082E64F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082E654: add esp, 0000001Ch
0082E657: mov var_04, 00000114h
0082E65E: lea eax, var_00000318
0082E664: push eax
0082E665: lea eax, var_00000308
0082E66B: push eax
0082E66C: lea eax, var_40
0082E66F: push eax
0082E670: call 00410A36h ; Next
0082E675: mov var_00000360, eax
0082E67B: cmp var_00000360, 00000000h
0082E682: jnz 0082E3EDh
0082E688: mov var_04, 00000117h
0082E68F: lea eax, var_00000268
0082E695: push eax
0082E696: lea eax, var_00000258
0082E69C: push eax
0082E69D: lea eax, var_30
0082E6A0: push eax
0082E6A1: call 00410A36h ; Next
0082E6A6: mov var_00000334, eax
0082E6AC: cmp var_00000334, 00000000h
0082E6B3: jnz 008263C0h
0082E6B9: mov var_04, 00000118h
0082E6C0: push 00000000h
0082E6C2: lea eax, var_00000228
0082E6C8: push eax
0082E6C9: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0082E6CE: wait 
0082E6CF: push 0082E841h
0082E6D4: jmp 0082E77Dh
0082E6D9: lea eax, var_00000090
0082E6DF: push eax
0082E6E0: lea eax, var_0000008C
0082E6E6: push eax
0082E6E7: push 00000002h
0082E6E9: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0082E6EE: add esp, 0000000Ch
0082E6F1: lea eax, var_000000A8
0082E6F7: push eax
0082E6F8: lea eax, var_000000A4
0082E6FE: push eax
0082E6FF: lea eax, var_000000A0
0082E705: push eax
0082E706: lea eax, var_0000009C
0082E70C: push eax
0082E70D: lea eax, var_00000098
0082E713: push eax
0082E714: lea eax, var_00000094
0082E71A: push eax
0082E71B: push 00000006h
0082E71D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082E722: add esp, 0000001Ch
0082E725: lea eax, var_00000158
0082E72B: push eax
0082E72C: lea eax, var_00000148
0082E732: push eax
0082E733: lea eax, var_00000138
0082E739: push eax
0082E73A: lea eax, var_00000128
0082E740: push eax
0082E741: lea eax, var_00000118
0082E747: push eax
0082E748: lea eax, var_00000108
0082E74E: push eax
0082E74F: lea eax, var_000000F8
0082E755: push eax
0082E756: lea eax, var_000000E8
0082E75C: push eax
0082E75D: lea eax, var_000000D8
0082E763: push eax
0082E764: lea eax, var_000000C8
0082E76A: push eax
0082E76B: lea eax, var_000000B8
0082E771: push eax
0082E772: push 0000000Bh
0082E774: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082E779: add esp, 00000030h
0082E77C: ret 
End Sub

