VERSION 5.00
Begin VB.Form frmRelay
  Caption = "Relay"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 5 'Sizable ToolWindow
  LinkTopic = "Form1"
  MinButton = 0   'False
  ClientLeft = 60
  ClientTop = 330
  ClientWidth = 9750
  ClientHeight = 4770
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer tmrRefresh
    Interval = 1000
    Left = 4320
    Top = 0
  End
  Begin MSComctlLib.ListView lstRelay
    Left = 0
    Top = 0
    Width = 9735
    Height = 4455
    TabIndex = 0
  End
  Begin MSComctlLib.StatusBar sbStatus
    Left = 0
    Top = 4455
    Width = 9750
    Height = 315
    TabIndex = 1
  End
  Begin VB.Menu mnuRelayMeny
    Visible = 0   'False
    Caption = "Relay"
    Begin VB.Menu mnuRelay
      Index = 0
      Caption = "Start socks"
    End
    Begin VB.Menu mnuRelay
      Index = 1
      Caption = "Stop socks"
    End
    Begin VB.Menu mnuRelay
      Index = 2
      Caption = "-"
    End
    Begin VB.Menu mnuRelay
      Index = 3
      Caption = "Update statistics"
    End
  End
End

Attribute VB_Name = "frmRelay"


Private sub lstRelay__801A94
00801A94: push ebp
00801A95: mov ebp, esp
00801A97: sub esp, 0000000Ch
00801A9A: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00801A9F: mov eax, fs:[00h]
00801AA5: push eax
00801AA6: mov fs:[00000000h], esp
00801AAD: push 00000008h
00801AAF: pop eax
00801AB0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00801AB5: push ebx
00801AB6: push esi
00801AB7: push edi
00801AB8: mov var_0C, esp
00801ABB: mov var_08, 0040A1D8h
00801AC2: mov eax, [ebp+08h]
00801AC5: and eax, 00000001h
00801AC8: mov var_04, eax
00801ACB: mov eax, [ebp+08h]
00801ACE: and al, FEh
00801AD0: mov [ebp+08h], eax
00801AD3: mov eax, [ebp+08h]
00801AD6: mov eax, [eax]
00801AD8: push [ebp+08h]
00801ADB: call [eax+04h]
00801ADE: mov eax, [ebp+0Ch]
00801AE1: or word ptr [eax], FFFFh
00801AE5: mov var_04, 00000000h
00801AEC: mov eax, [ebp+08h]
00801AEF: mov eax, [eax]
00801AF1: push [ebp+08h]
00801AF4: call [eax+08h]
00801AF7: mov eax, var_04
00801AFA: mov ecx, var_14
00801AFD: mov fs:[00000000h], ecx
00801B04: pop edi
00801B05: pop esi
00801B06: pop ebx
00801B07: leave 
00801B08: retn 0008h
End Sub

Private sub lstRelay__801B0B
00801B0B: push ebp
00801B0C: mov ebp, esp
00801B0E: sub esp, 0000000Ch
00801B11: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00801B16: mov eax, fs:[00h]
00801B1C: push eax
00801B1D: mov fs:[00000000h], esp
00801B24: push 00000054h
00801B26: pop eax
00801B27: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00801B2C: push ebx
00801B2D: push esi
00801B2E: push edi
00801B2F: mov var_0C, esp
00801B32: mov var_08, 0040A1E0h
00801B39: mov eax, [ebp+08h]
00801B3C: and eax, 00000001h
00801B3F: mov var_04, eax
00801B42: mov eax, [ebp+08h]
00801B45: and al, FEh
00801B47: mov [ebp+08h], eax
00801B4A: mov eax, [ebp+08h]
00801B4D: mov eax, [eax]
00801B4F: push [ebp+08h]
00801B52: call [eax+04h]
00801B55: mov eax, [ebp+0Ch]
00801B58: cmp word ptr [eax], 0002h
00801B5C: jnz 00801C36h
00801B62: mov var_50, 80020004h
00801B69: mov var_58, 0000000Ah
00801B70: mov var_40, 80020004h
00801B77: mov var_48, 0000000Ah
00801B7E: mov var_30, 80020004h
00801B85: mov var_38, 0000000Ah
00801B8C: mov var_20, 80020004h
00801B93: mov var_28, 0000000Ah
00801B9A: push 00000010h
00801B9C: pop eax
00801B9D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00801BA2: lea esi, var_58
00801BA5: mov edi, esp
00801BA7: movsd 
00801BA8: movsd 
00801BA9: movsd 
00801BAA: movsd 
00801BAB: push 00000010h
00801BAD: pop eax
00801BAE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00801BB3: lea esi, var_48
00801BB6: mov edi, esp
00801BB8: movsd 
00801BB9: movsd 
00801BBA: movsd 
00801BBB: movsd 
00801BBC: push 00000010h
00801BBE: pop eax
00801BBF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00801BC4: lea esi, var_38
00801BC7: mov edi, esp
00801BC9: movsd 
00801BCA: movsd 
00801BCB: movsd 
00801BCC: movsd 
00801BCD: push 00000010h
00801BCF: pop eax
00801BD0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00801BD5: lea esi, var_28
00801BD8: mov edi, esp
00801BDA: movsd 
00801BDB: movsd 
00801BDC: movsd 
00801BDD: movsd 
00801BDE: mov eax, [ebp+08h]
00801BE1: mov eax, [eax]
00801BE3: push [ebp+08h]
00801BE6: call [eax+00000300h]
00801BEC: push eax
00801BED: lea eax, var_18
00801BF0: push eax
00801BF1: call 00410A84h ; Set (object)
00801BF6: push eax
00801BF7: mov eax, [ebp+08h]
00801BFA: mov eax, [eax]
00801BFC: push [ebp+08h]
00801BFF: call [eax+000002BCh]
00801C05: fclex 
00801C07: mov var_5C, eax
00801C0A: cmp var_5C, 00000000h
00801C0E: jnl 801C2Ah
00801C10: push 000002BCh
00801C15: push 00444E68h
00801C1A: push [ebp+08h]
00801C1D: push var_5C
00801C20: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00801C25: mov var_68, eax
00801C28: jmp 801C2Eh
00801C2A: and var_68, 00000000h
00801C2E: lea ecx, var_18
00801C31: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00801C36: mov var_04, 00000000h
00801C3D: push 00801C4Eh
00801C42: jmp 801C4Dh
00801C44: lea ecx, var_18
00801C47: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00801C4C: ret 
End Sub

Private sub tmrRefresh__802CCA
00802CCA: push ebp
00802CCB: mov ebp, esp
00802CCD: sub esp, 00000018h
00802CD0: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00802CD5: mov eax, fs:[00h]
00802CDB: push eax
00802CDC: mov fs:[00000000h], esp
00802CE3: push 00000030h
00802CE5: pop eax
00802CE6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00802CEB: push ebx
00802CEC: push esi
00802CED: push edi
00802CEE: mov var_18, esp
00802CF1: mov var_14, 0040A270h
00802CF8: mov eax, [ebp+08h]
00802CFB: and eax, 00000001h
00802CFE: mov var_10, eax
00802D01: mov eax, [ebp+08h]
00802D04: and al, FEh
00802D06: mov [ebp+08h], eax
00802D09: mov var_0C, 00000000h
00802D10: mov eax, [ebp+08h]
00802D13: mov eax, [eax]
00802D15: push [ebp+08h]
00802D18: call [eax+04h]
00802D1B: mov var_04, 00000001h
00802D22: mov var_04, 00000002h
00802D29: push FFFFFFFFh
00802D2B: call 00410A60h ; On Error ...
00802D30: mov var_04, 00000003h
00802D37: lea eax, var_24
00802D3A: push eax
00802D3B: mov eax, [ebp+08h]
00802D3E: mov eax, [eax]
00802D40: push [ebp+08h]
00802D43: call [eax+000001C0h]
00802D49: fclex 
00802D4B: mov var_38, eax
00802D4E: cmp var_38, 00000000h
00802D52: jnl 802D6Eh
00802D54: push 000001C0h
00802D59: push 00444E68h
00802D5E: push [ebp+08h]
00802D61: push var_38
00802D64: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00802D69: mov var_50, eax
00802D6C: jmp 802D72h
00802D6E: and var_50, 00000000h
00802D72: push var_24
00802D75: call 004109DCh ; Val(arg_1)
00802D7A: fstp real8 ptr var_34
00802D7D: push 00000000h
00802D7F: push FFFFFFFFh
00802D81: push 00000000h
00802D83: push 00000000h
00802D85: lea eax, var_2C
00802D88: push eax
00802D89: push 00000010h
00802D8B: push 00000880h
00802D90: call 00410946h ; ReDim
00802D95: add esp, 0000001Ch
00802D98: mov edx, 0043D458h ; x6
00802D9D: lea ecx, var_28
00802DA0: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00802DA5: lea eax, var_2C
00802DA8: push eax
00802DA9: lea eax, var_28
00802DAC: push eax
00802DAD: fld real8 ptr var_34
00802DB0: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00802DB5: push eax
00802DB6: call 007A6910h
00802DBB: lea eax, var_2C
00802DBE: push eax
00802DBF: push 00000000h
00802DC1: call 00410934h ; Erase
00802DC6: lea eax, var_28
00802DC9: push eax
00802DCA: lea eax, var_24
00802DCD: push eax
00802DCE: push 00000002h
00802DD0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00802DD5: add esp, 0000000Ch
00802DD8: mov var_10, 00000000h
00802DDF: wait 
00802DE0: push 00802E06h
00802DE5: jmp 802E05h
00802DE7: lea eax, var_28
00802DEA: push eax
00802DEB: lea eax, var_24
00802DEE: push eax
00802DEF: push 00000002h
00802DF1: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00802DF6: add esp, 0000000Ch
00802DF9: lea eax, var_2C
00802DFC: push eax
00802DFD: push 00000000h
00802DFF: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
00802E04: ret 
End Sub

Private sub mnuRelay__801C6D
00801C6D: push ebp
00801C6E: mov ebp, esp
00801C70: sub esp, 00000018h
00801C73: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00801C78: mov eax, fs:[00h]
00801C7E: push eax
00801C7F: mov fs:[00000000h], esp
00801C86: mov eax, 000001F8h
00801C8B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00801C90: push ebx
00801C91: push esi
00801C92: push edi
00801C93: mov var_18, esp
00801C96: mov var_14, 0040A1F0h
00801C9D: mov eax, [ebp+08h]
00801CA0: and eax, 00000001h
00801CA3: mov var_10, eax
00801CA6: mov eax, [ebp+08h]
00801CA9: and al, FEh
00801CAB: mov [ebp+08h], eax
00801CAE: mov var_0C, 00000000h
00801CB5: mov eax, [ebp+08h]
00801CB8: mov eax, [eax]
00801CBA: push [ebp+08h]
00801CBD: call [eax+04h]
00801CC0: mov var_04, 00000001h
00801CC7: mov var_04, 00000002h
00801CCE: push FFFFFFFFh
00801CD0: call 00410A60h ; On Error ...
00801CD5: mov var_04, 00000003h
00801CDC: mov eax, [ebp+0Ch]
00801CDF: mov ax, [eax]
00801CE2: mov var_000001B4, ax
00801CE9: movsx eax, word ptr var_000001B4
00801CF0: mov var_000001D4, eax
00801CF6: cmp var_000001D4, 00000000h
00801CFD: jz 801D23h
00801CFF: cmp var_000001D4, 00000001h
00801D06: jz 00802655h
00801D0C: cmp var_000001D4, 00000003h
00801D13: jz 00802B28h
00801D19: jmp 00802BEEh
00801D1E: jmp 00802BEEh
00801D23: mov var_04, 00000005h
00801D2A: mov var_000000C0, 80020004h
00801D34: mov var_000000C8, 0000000Ah
00801D3E: mov var_000000B0, 80020004h
00801D48: mov var_000000B8, 0000000Ah
00801D52: mov var_000000A0, 80020004h
00801D5C: mov var_000000A8, 0000000Ah
00801D66: mov var_00000090, 80020004h
00801D70: mov var_00000098, 0000000Ah
00801D7A: mov var_80, 80020004h
00801D81: mov var_00000088, 0000000Ah
00801D8B: mov var_000000F4, 00446794h ; Socks4
00801D95: mov var_000000FC, 00000008h
00801D9F: lea edx, var_000000FC
00801DA5: lea ecx, var_78
00801DA8: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00801DAD: mov var_000000E4, 00452F88h ; Specify port
00801DB7: mov var_000000EC, 00000008h
00801DC1: lea edx, var_000000EC
00801DC7: lea ecx, var_68
00801DCA: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00801DCF: lea eax, var_000000C8
00801DD5: push eax
00801DD6: lea eax, var_000000B8
00801DDC: push eax
00801DDD: lea eax, var_000000A8
00801DE3: push eax
00801DE4: lea eax, var_00000098
00801DEA: push eax
00801DEB: lea eax, var_00000088
00801DF1: push eax
00801DF2: lea eax, var_78
00801DF5: push eax
00801DF6: lea eax, var_68
00801DF9: push eax
00801DFA: call 00410994h ; InputBox
00801DFF: mov var_000000D0, eax
00801E05: mov var_000000D8, 00000008h
00801E0F: lea edx, var_000000D8
00801E15: lea ecx, var_40
00801E18: call 00410922h ; msvbvm60.dll.__vbaVarMove
00801E1D: lea eax, var_000000C8
00801E23: push eax
00801E24: lea eax, var_000000B8
00801E2A: push eax
00801E2B: lea eax, var_000000A8
00801E31: push eax
00801E32: lea eax, var_00000098
00801E38: push eax
00801E39: lea eax, var_00000088
00801E3F: push eax
00801E40: lea eax, var_78
00801E43: push eax
00801E44: lea eax, var_68
00801E47: push eax
00801E48: push 00000007h
00801E4A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00801E4F: add esp, 00000020h
00801E52: mov var_04, 00000006h
00801E59: mov var_000000E4, 00000001h
00801E63: mov var_000000EC, 00000002h
00801E6D: cmp [008F2010h], 00000000h
00801E74: jnz 801E91h
00801E76: push 008F2010h
00801E7B: push 00433984h
00801E80: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00801E85: mov var_000001D8, 008F2010h
00801E8F: jmp 801E9Bh
00801E91: mov var_000001D8, 008F2010h
00801E9B: push 00000000h
00801E9D: push 00000001h
00801E9F: push 00440E48h
00801EA4: push 00000000h
00801EA6: push 00000018h
00801EA8: mov eax, var_000001D8
00801EAE: mov eax, [eax]
00801EB0: mov ecx, var_000001D8
00801EB6: mov ecx, [ecx]
00801EB8: mov ecx, [ecx]
00801EBA: push eax
00801EBB: call [ecx+00000550h]
00801EC1: push eax
00801EC2: lea eax, var_50
00801EC5: push eax
00801EC6: call 00410A84h ; Set (object)
00801ECB: push eax
00801ECC: lea eax, var_68
00801ECF: push eax
00801ED0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00801ED5: add esp, 00000010h
00801ED8: push eax
00801ED9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00801EDE: push eax
00801EDF: lea eax, var_54
00801EE2: push eax
00801EE3: call 00410A84h ; Set (object)
00801EE8: push eax
00801EE9: lea eax, var_78
00801EEC: push eax
00801EED: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00801EF2: add esp, 00000010h
00801EF5: push eax
00801EF6: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00801EFB: mov var_000000F4, eax
00801F01: mov var_000000FC, 00000003h
00801F0B: mov var_00000104, 00000001h
00801F15: mov var_0000010C, 00000002h
00801F1F: lea eax, var_000000EC
00801F25: push eax
00801F26: lea eax, var_000000FC
00801F2C: push eax
00801F2D: lea eax, var_0000010C
00801F33: push eax
00801F34: lea eax, var_00000190
00801F3A: push eax
00801F3B: lea eax, var_00000180
00801F41: push eax
00801F42: lea eax, var_30
00801F45: push eax
00801F46: call 00410A3Ch ; For
00801F4B: mov var_000001CC, eax
00801F51: lea eax, var_54
00801F54: push eax
00801F55: lea eax, var_50
00801F58: push eax
00801F59: push 00000002h
00801F5B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00801F60: add esp, 0000000Ch
00801F63: lea eax, var_78
00801F66: push eax
00801F67: lea eax, var_68
00801F6A: push eax
00801F6B: push 00000002h
00801F6D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00801F72: add esp, 0000000Ch
00801F75: jmp 008022A8h
00801F7A: mov var_04, 00000007h
00801F81: lea eax, var_30
00801F84: mov var_000000E4, eax
00801F8A: mov var_000000EC, 0000400Ch
00801F94: cmp [008F2010h], 00000000h
00801F9B: jnz 801FB8h
00801F9D: push 008F2010h
00801FA2: push 00433984h
00801FA7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00801FAC: mov var_000001DC, 008F2010h
00801FB6: jmp 801FC2h
00801FB8: mov var_000001DC, 008F2010h
00801FC2: push 00000000h
00801FC4: push 00000004h
00801FC6: push 00440E58h
00801FCB: push 00000010h
00801FCD: pop eax
00801FCE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00801FD3: lea esi, var_000000EC
00801FD9: mov edi, esp
00801FDB: movsd 
00801FDC: movsd 
00801FDD: movsd 
00801FDE: movsd 
00801FDF: push 00000001h
00801FE1: push 00000000h
00801FE3: push 00440E48h
00801FE8: push 00000000h
00801FEA: push 00000018h
00801FEC: mov eax, var_000001DC
00801FF2: mov eax, [eax]
00801FF4: mov ecx, var_000001DC
00801FFA: mov ecx, [ecx]
00801FFC: mov ecx, [ecx]
00801FFE: push eax
00801FFF: call [ecx+00000550h]
00802005: push eax
00802006: lea eax, var_50
00802009: push eax
0080200A: call 00410A84h ; Set (object)
0080200F: push eax
00802010: lea eax, var_68
00802013: push eax
00802014: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00802019: add esp, 00000010h
0080201C: push eax
0080201D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00802022: push eax
00802023: lea eax, var_54
00802026: push eax
00802027: call 00410A84h ; Set (object)
0080202C: push eax
0080202D: lea eax, var_78
00802030: push eax
00802031: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00802036: add esp, 00000020h
00802039: push eax
0080203A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080203F: push eax
00802040: lea eax, var_58
00802043: push eax
00802044: call 00410A84h ; Set (object)
00802049: push eax
0080204A: lea eax, var_00000088
00802050: push eax
00802051: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00802056: add esp, 00000010h
00802059: push eax
0080205A: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0080205F: sub ax, FFFFh
00802063: neg ax
00802066: sbb eax, eax
00802068: inc eax
00802069: neg eax
0080206B: mov var_00000158, ax
00802072: lea eax, var_58
00802075: push eax
00802076: lea eax, var_54
00802079: push eax
0080207A: lea eax, var_50
0080207D: push eax
0080207E: push 00000003h
00802080: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00802085: add esp, 00000010h
00802088: lea eax, var_00000088
0080208E: push eax
0080208F: lea eax, var_78
00802092: push eax
00802093: lea eax, var_68
00802096: push eax
00802097: push 00000003h
00802099: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080209E: add esp, 00000010h
008020A1: movsx eax, word ptr var_00000158
008020A8: test eax, eax
008020AA: jz 00802284h
008020B0: mov var_04, 00000008h
008020B7: lea eax, var_30
008020BA: mov var_000000E4, eax
008020C0: mov var_000000EC, 0000400Ch
008020CA: cmp [008F2010h], 00000000h
008020D1: jnz 8020EEh
008020D3: push 008F2010h
008020D8: push 00433984h
008020DD: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008020E2: mov var_000001E0, 008F2010h
008020EC: jmp 8020F8h
008020EE: mov var_000001E0, 008F2010h
008020F8: push 00000000h
008020FA: push 00000014h
008020FC: push 00440E58h
00802101: push 00000010h
00802103: pop eax
00802104: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00802109: lea esi, var_000000EC
0080210F: mov edi, esp
00802111: movsd 
00802112: movsd 
00802113: movsd 
00802114: movsd 
00802115: push 00000001h
00802117: push 00000000h
00802119: push 00440E48h
0080211E: push 00000000h
00802120: push 00000018h
00802122: mov eax, var_000001E0
00802128: mov eax, [eax]
0080212A: mov ecx, var_000001E0
00802130: mov ecx, [ecx]
00802132: mov ecx, [ecx]
00802134: push eax
00802135: call [ecx+00000550h]
0080213B: push eax
0080213C: lea eax, var_50
0080213F: push eax
00802140: call 00410A84h ; Set (object)
00802145: push eax
00802146: lea eax, var_68
00802149: push eax
0080214A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080214F: add esp, 00000010h
00802152: push eax
00802153: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00802158: push eax
00802159: lea eax, var_54
0080215C: push eax
0080215D: call 00410A84h ; Set (object)
00802162: push eax
00802163: lea eax, var_78
00802166: push eax
00802167: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080216C: add esp, 00000020h
0080216F: push eax
00802170: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00802175: push eax
00802176: lea eax, var_58
00802179: push eax
0080217A: call 00410A84h ; Set (object)
0080217F: push eax
00802180: lea eax, var_00000088
00802186: push eax
00802187: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080218C: add esp, 00000010h
0080218F: push eax
00802190: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00802195: mov edx, eax
00802197: lea ecx, var_44
0080219A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080219F: push eax
008021A0: call 004109DCh ; Val(arg_1)
008021A5: fstp real8 ptr var_00000154
008021AB: push 00000000h
008021AD: push 00000000h
008021AF: push 00000001h
008021B1: push 00000000h
008021B3: lea eax, var_000000DC
008021B9: push eax
008021BA: push 00000010h
008021BC: push 00000880h
008021C1: call 00410946h ; ReDim
008021C6: add esp, 0000001Ch
008021C9: lea eax, var_40
008021CC: push eax
008021CD: lea eax, var_48
008021D0: push eax
008021D1: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008021D6: push eax
008021D7: call 004109DCh ; Val(arg_1)
008021DC: fstp real8 ptr var_000000F4
008021E2: mov var_000000FC, 00000005h
008021EC: lea esi, var_000000FC
008021F2: push 00000000h
008021F4: push var_000000DC
008021FA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008021FF: mov ecx, eax
00802201: mov edx, esi
00802203: call 00410922h ; msvbvm60.dll.__vbaVarMove
00802208: mov edx, 0043D440h ; x4
0080220D: lea ecx, var_4C
00802210: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00802215: lea eax, var_000000DC
0080221B: push eax
0080221C: lea eax, var_4C
0080221F: push eax
00802220: fld real8 ptr var_00000154
00802226: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0080222B: push eax
0080222C: call 007A6910h
00802231: lea eax, var_000000DC
00802237: push eax
00802238: push 00000000h
0080223A: call 00410934h ; Erase
0080223F: lea eax, var_4C
00802242: push eax
00802243: lea eax, var_48
00802246: push eax
00802247: lea eax, var_44
0080224A: push eax
0080224B: push 00000003h
0080224D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00802252: add esp, 00000010h
00802255: lea eax, var_58
00802258: push eax
00802259: lea eax, var_54
0080225C: push eax
0080225D: lea eax, var_50
00802260: push eax
00802261: push 00000003h
00802263: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00802268: add esp, 00000010h
0080226B: lea eax, var_00000088
00802271: push eax
00802272: lea eax, var_78
00802275: push eax
00802276: lea eax, var_68
00802279: push eax
0080227A: push 00000003h
0080227C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00802281: add esp, 00000010h
00802284: mov var_04, 0000000Ah
0080228B: lea eax, var_00000190
00802291: push eax
00802292: lea eax, var_00000180
00802298: push eax
00802299: lea eax, var_30
0080229C: push eax
0080229D: call 00410A36h ; Next
008022A2: mov var_000001CC, eax
008022A8: cmp var_000001CC, 00000000h
008022AF: jnz 00801F7Ah
008022B5: mov var_04, 0000000Bh
008022BC: cmp [008F529Ch], 00000000h
008022C3: jnz 8022E0h
008022C5: push 008F529Ch
008022CA: push 00440F2Ch
008022CF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008022D4: mov var_000001E4, 008F529Ch
008022DE: jmp 8022EAh
008022E0: mov var_000001E4, 008F529Ch
008022EA: mov eax, var_000001E4
008022F0: mov eax, [eax]
008022F2: mov var_00000158, eax
008022F8: lea eax, var_50
008022FB: push eax
008022FC: mov eax, var_00000158
00802302: mov eax, [eax]
00802304: push var_00000158
0080230A: call [eax+1Ch]
0080230D: fclex 
0080230F: mov var_0000015C, eax
00802315: cmp var_0000015C, 00000000h
0080231C: jnl 80233Eh
0080231E: push 0000001Ch
00802320: push 00440F1Ch
00802325: push var_00000158
0080232B: push var_0000015C
00802331: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00802336: mov var_000001E8, eax
0080233C: jmp 802345h
0080233E: and var_000001E8, 00000000h
00802345: mov eax, var_50
00802348: mov var_00000160, eax
0080234E: mov eax, var_00000160
00802354: mov eax, [eax]
00802356: push var_00000160
0080235C: call [eax+50h]
0080235F: fclex 
00802361: mov var_00000164, eax
00802367: cmp var_00000164, 00000000h
0080236E: jnl 802390h
00802370: push 00000050h
00802372: push 00445554h
00802377: push var_00000160
0080237D: push var_00000164
00802383: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00802388: mov var_000001EC, eax
0080238E: jmp 802397h
00802390: and var_000001EC, 00000000h
00802397: lea ecx, var_50
0080239A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080239F: mov var_04, 0000000Ch
008023A6: lea eax, var_44
008023A9: push eax
008023AA: mov eax, [ebp+08h]
008023AD: mov eax, [eax]
008023AF: push [ebp+08h]
008023B2: call [eax+000001C0h]
008023B8: fclex 
008023BA: mov var_00000158, eax
008023C0: cmp var_00000158, 00000000h
008023C7: jnl 8023E9h
008023C9: push 000001C0h
008023CE: push 00444E68h
008023D3: push [ebp+08h]
008023D6: push var_00000158
008023DC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008023E1: mov var_000001F0, eax
008023E7: jmp 8023F0h
008023E9: and var_000001F0, 00000000h
008023F0: push var_44
008023F3: call 004109DCh ; Val(arg_1)
008023F8: fstp real8 ptr var_00000154
008023FE: cmp [008F2010h], 00000000h
00802405: jnz 802422h
00802407: push 008F2010h
0080240C: push 00433984h
00802411: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00802416: mov var_000001F4, 008F2010h
00802420: jmp 80242Ch
00802422: mov var_000001F4, 008F2010h
0080242C: mov eax, var_000001F4
00802432: mov eax, [eax]
00802434: mov ecx, var_000001F4
0080243A: mov ecx, [ecx]
0080243C: mov ecx, [ecx]
0080243E: push eax
0080243F: call [ecx+00000524h]
00802445: push eax
00802446: lea eax, var_50
00802449: push eax
0080244A: call 00410A84h ; Set (object)
0080244F: mov var_0000015C, eax
00802455: lea eax, var_54
00802458: push eax
00802459: fld real8 ptr var_00000154
0080245F: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00802464: push eax
00802465: mov eax, var_0000015C
0080246B: mov eax, [eax]
0080246D: push var_0000015C
00802473: call [eax+40h]
00802476: fclex 
00802478: mov var_00000160, eax
0080247E: cmp var_00000160, 00000000h
00802485: jnl 8024A7h
00802487: push 00000040h
00802489: push 00440DE8h
0080248E: push var_0000015C
00802494: push var_00000160
0080249A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080249F: mov var_000001F8, eax
008024A5: jmp 8024AEh
008024A7: and var_000001F8, 00000000h
008024AE: push 00000000h
008024B0: push 00000004h
008024B2: push var_54
008024B5: lea eax, var_68
008024B8: push eax
008024B9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008024BE: add esp, 00000010h
008024C1: cmp [008F529Ch], 00000000h
008024C8: jnz 8024E5h
008024CA: push 008F529Ch
008024CF: push 00440F2Ch
008024D4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008024D9: mov var_000001FC, 008F529Ch
008024E3: jmp 8024EFh
008024E5: mov var_000001FC, 008F529Ch
008024EF: mov eax, var_000001FC
008024F5: mov eax, [eax]
008024F7: mov var_00000164, eax
008024FD: lea eax, var_58
00802500: push eax
00802501: mov eax, var_00000164
00802507: mov eax, [eax]
00802509: push var_00000164
0080250F: call [eax+1Ch]
00802512: fclex 
00802514: mov var_00000168, eax
0080251A: cmp var_00000168, 00000000h
00802521: jnl 802543h
00802523: push 0000001Ch
00802525: push 00440F1Ch
0080252A: push var_00000164
00802530: push var_00000168
00802536: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080253B: mov var_00000200, eax
00802541: jmp 80254Ah
00802543: and var_00000200, 00000000h
0080254A: mov eax, var_58
0080254D: mov var_0000016C, eax
00802553: mov var_000000E4, 80020004h
0080255D: mov var_000000EC, 0000000Ah
00802567: lea eax, var_68
0080256A: push eax
0080256B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00802570: mov edx, eax
00802572: lea ecx, var_48
00802575: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080257A: push eax
0080257B: push 004412B8h
00802580: call 00410A18h ; &
00802585: mov var_70, eax
00802588: mov var_78, 00000008h
0080258F: push 00000010h
00802591: pop eax
00802592: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00802597: lea esi, var_000000EC
0080259D: mov edi, esp
0080259F: movsd 
008025A0: movsd 
008025A1: movsd 
008025A2: movsd 
008025A3: lea eax, var_78
008025A6: push eax
008025A7: lea eax, var_40
008025AA: push eax
008025AB: lea eax, var_00000088
008025B1: push eax
008025B2: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008025B7: push eax
008025B8: lea eax, var_4C
008025BB: push eax
008025BC: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008025C1: push eax
008025C2: mov eax, var_0000016C
008025C8: mov eax, [eax]
008025CA: push var_0000016C
008025D0: call [eax+60h]
008025D3: fclex 
008025D5: mov var_00000170, eax
008025DB: cmp var_00000170, 00000000h
008025E2: jnl 802604h
008025E4: push 00000060h
008025E6: push 00445554h
008025EB: push var_0000016C
008025F1: push var_00000170
008025F7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008025FC: mov var_00000204, eax
00802602: jmp 80260Bh
00802604: and var_00000204, 00000000h
0080260B: lea eax, var_4C
0080260E: push eax
0080260F: lea eax, var_48
00802612: push eax
00802613: lea eax, var_44
00802616: push eax
00802617: push 00000003h
00802619: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080261E: add esp, 00000010h
00802621: lea eax, var_58
00802624: push eax
00802625: lea eax, var_54
00802628: push eax
00802629: lea eax, var_50
0080262C: push eax
0080262D: push 00000003h
0080262F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00802634: add esp, 00000010h
00802637: lea eax, var_00000088
0080263D: push eax
0080263E: lea eax, var_78
00802641: push eax
00802642: lea eax, var_68
00802645: push eax
00802646: push 00000003h
00802648: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080264D: add esp, 00000010h
00802650: jmp 00802BEEh
00802655: mov var_04, 0000000Eh
0080265C: push 004412BCh
00802661: push 00000000h
00802663: push 00000007h
00802665: mov eax, [ebp+08h]
00802668: mov eax, [eax]
0080266A: push [ebp+08h]
0080266D: call [eax+00000308h]
00802673: push eax
00802674: lea eax, var_50
00802677: push eax
00802678: call 00410A84h ; Set (object)
0080267D: push eax
0080267E: lea eax, var_68
00802681: push eax
00802682: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00802687: add esp, 00000010h
0080268A: push eax
0080268B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00802690: push eax
00802691: lea eax, var_54
00802694: push eax
00802695: call 00410A84h ; Set (object)
0080269A: mov var_00000158, eax
008026A0: mov eax, var_00000158
008026A6: mov eax, [eax]
008026A8: push var_00000158
008026AE: call [eax+2Ch]
008026B1: fclex 
008026B3: mov var_0000015C, eax
008026B9: cmp var_0000015C, 00000000h
008026C0: jnl 8026E2h
008026C2: push 0000002Ch
008026C4: push 004412BCh
008026C9: push var_00000158
008026CF: push var_0000015C
008026D5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008026DA: mov var_00000208, eax
008026E0: jmp 8026E9h
008026E2: and var_00000208, 00000000h
008026E9: lea eax, var_54
008026EC: push eax
008026ED: lea eax, var_50
008026F0: push eax
008026F1: push 00000002h
008026F3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008026F8: add esp, 0000000Ch
008026FB: lea ecx, var_68
008026FE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00802703: mov var_04, 0000000Fh
0080270A: mov var_000000E4, 00000001h
00802714: mov var_000000EC, 00000002h
0080271E: cmp [008F2010h], 00000000h
00802725: jnz 802742h
00802727: push 008F2010h
0080272C: push 00433984h
00802731: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00802736: mov var_0000020C, 008F2010h
00802740: jmp 80274Ch
00802742: mov var_0000020C, 008F2010h
0080274C: push 00000000h
0080274E: push 00000001h
00802750: push 00440E48h
00802755: push 00000000h
00802757: push 00000018h
00802759: mov eax, var_0000020C
0080275F: mov eax, [eax]
00802761: mov ecx, var_0000020C
00802767: mov ecx, [ecx]
00802769: mov ecx, [ecx]
0080276B: push eax
0080276C: call [ecx+00000550h]
00802772: push eax
00802773: lea eax, var_50
00802776: push eax
00802777: call 00410A84h ; Set (object)
0080277C: push eax
0080277D: lea eax, var_68
00802780: push eax
00802781: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00802786: add esp, 00000010h
00802789: push eax
0080278A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080278F: push eax
00802790: lea eax, var_54
00802793: push eax
00802794: call 00410A84h ; Set (object)
00802799: push eax
0080279A: lea eax, var_78
0080279D: push eax
0080279E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008027A3: add esp, 00000010h
008027A6: push eax
008027A7: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008027AC: mov var_000000F4, eax
008027B2: mov var_000000FC, 00000003h
008027BC: mov var_00000104, 00000001h
008027C6: mov var_0000010C, 00000002h
008027D0: lea eax, var_000000EC
008027D6: push eax
008027D7: lea eax, var_000000FC
008027DD: push eax
008027DE: lea eax, var_0000010C
008027E4: push eax
008027E5: lea eax, var_000001B0
008027EB: push eax
008027EC: lea eax, var_000001A0
008027F2: push eax
008027F3: lea eax, var_30
008027F6: push eax
008027F7: call 00410A3Ch ; For
008027FC: mov var_000001D0, eax
00802802: lea eax, var_54
00802805: push eax
00802806: lea eax, var_50
00802809: push eax
0080280A: push 00000002h
0080280C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00802811: add esp, 0000000Ch
00802814: lea eax, var_78
00802817: push eax
00802818: lea eax, var_68
0080281B: push eax
0080281C: push 00000002h
0080281E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00802823: add esp, 0000000Ch
00802826: jmp 00802B16h
0080282B: mov var_04, 00000010h
00802832: lea eax, var_30
00802835: mov var_000000E4, eax
0080283B: mov var_000000EC, 0000400Ch
00802845: cmp [008F2010h], 00000000h
0080284C: jnz 802869h
0080284E: push 008F2010h
00802853: push 00433984h
00802858: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080285D: mov var_00000210, 008F2010h
00802867: jmp 802873h
00802869: mov var_00000210, 008F2010h
00802873: push 00000000h
00802875: push 00000004h
00802877: push 00440E58h
0080287C: push 00000010h
0080287E: pop eax
0080287F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00802884: lea esi, var_000000EC
0080288A: mov edi, esp
0080288C: movsd 
0080288D: movsd 
0080288E: movsd 
0080288F: movsd 
00802890: push 00000001h
00802892: push 00000000h
00802894: push 00440E48h
00802899: push 00000000h
0080289B: push 00000018h
0080289D: mov eax, var_00000210
008028A3: mov eax, [eax]
008028A5: mov ecx, var_00000210
008028AB: mov ecx, [ecx]
008028AD: mov ecx, [ecx]
008028AF: push eax
008028B0: call [ecx+00000550h]
008028B6: push eax
008028B7: lea eax, var_50
008028BA: push eax
008028BB: call 00410A84h ; Set (object)
008028C0: push eax
008028C1: lea eax, var_68
008028C4: push eax
008028C5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008028CA: add esp, 00000010h
008028CD: push eax
008028CE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008028D3: push eax
008028D4: lea eax, var_54
008028D7: push eax
008028D8: call 00410A84h ; Set (object)
008028DD: push eax
008028DE: lea eax, var_78
008028E1: push eax
008028E2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008028E7: add esp, 00000020h
008028EA: push eax
008028EB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008028F0: push eax
008028F1: lea eax, var_58
008028F4: push eax
008028F5: call 00410A84h ; Set (object)
008028FA: push eax
008028FB: lea eax, var_00000088
00802901: push eax
00802902: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00802907: add esp, 00000010h
0080290A: push eax
0080290B: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00802910: sub ax, FFFFh
00802914: neg ax
00802917: sbb eax, eax
00802919: inc eax
0080291A: neg eax
0080291C: mov var_00000158, ax
00802923: lea eax, var_58
00802926: push eax
00802927: lea eax, var_54
0080292A: push eax
0080292B: lea eax, var_50
0080292E: push eax
0080292F: push 00000003h
00802931: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00802936: add esp, 00000010h
00802939: lea eax, var_00000088
0080293F: push eax
00802940: lea eax, var_78
00802943: push eax
00802944: lea eax, var_68
00802947: push eax
00802948: push 00000003h
0080294A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080294F: add esp, 00000010h
00802952: movsx eax, word ptr var_00000158
00802959: test eax, eax
0080295B: jz 00802AF2h
00802961: mov var_04, 00000011h
00802968: lea eax, var_30
0080296B: mov var_000000E4, eax
00802971: mov var_000000EC, 0000400Ch
0080297B: cmp [008F2010h], 00000000h
00802982: jnz 80299Fh
00802984: push 008F2010h
00802989: push 00433984h
0080298E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00802993: mov var_00000214, 008F2010h
0080299D: jmp 8029A9h
0080299F: mov var_00000214, 008F2010h
008029A9: push 00000000h
008029AB: push 00000014h
008029AD: push 00440E58h
008029B2: push 00000010h
008029B4: pop eax
008029B5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008029BA: lea esi, var_000000EC
008029C0: mov edi, esp
008029C2: movsd 
008029C3: movsd 
008029C4: movsd 
008029C5: movsd 
008029C6: push 00000001h
008029C8: push 00000000h
008029CA: push 00440E48h
008029CF: push 00000000h
008029D1: push 00000018h
008029D3: mov eax, var_00000214
008029D9: mov eax, [eax]
008029DB: mov ecx, var_00000214
008029E1: mov ecx, [ecx]
008029E3: mov ecx, [ecx]
008029E5: push eax
008029E6: call [ecx+00000550h]
008029EC: push eax
008029ED: lea eax, var_50
008029F0: push eax
008029F1: call 00410A84h ; Set (object)
008029F6: push eax
008029F7: lea eax, var_68
008029FA: push eax
008029FB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00802A00: add esp, 00000010h
00802A03: push eax
00802A04: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00802A09: push eax
00802A0A: lea eax, var_54
00802A0D: push eax
00802A0E: call 00410A84h ; Set (object)
00802A13: push eax
00802A14: lea eax, var_78
00802A17: push eax
00802A18: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00802A1D: add esp, 00000020h
00802A20: push eax
00802A21: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00802A26: push eax
00802A27: lea eax, var_58
00802A2A: push eax
00802A2B: call 00410A84h ; Set (object)
00802A30: push eax
00802A31: lea eax, var_00000088
00802A37: push eax
00802A38: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00802A3D: add esp, 00000010h
00802A40: push eax
00802A41: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00802A46: mov edx, eax
00802A48: lea ecx, var_44
00802A4B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00802A50: push eax
00802A51: call 004109DCh ; Val(arg_1)
00802A56: fstp real8 ptr var_00000154
00802A5C: push 00000000h
00802A5E: push FFFFFFFFh
00802A60: push 00000000h
00802A62: push 00000000h
00802A64: lea eax, var_000000DC
00802A6A: push eax
00802A6B: push 00000010h
00802A6D: push 00000880h
00802A72: call 00410946h ; ReDim
00802A77: add esp, 0000001Ch
00802A7A: mov edx, 0043D44Ch ; x5
00802A7F: lea ecx, var_48
00802A82: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00802A87: lea eax, var_000000DC
00802A8D: push eax
00802A8E: lea eax, var_48
00802A91: push eax
00802A92: fld real8 ptr var_00000154
00802A98: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00802A9D: push eax
00802A9E: call 007A6910h
00802AA3: lea eax, var_000000DC
00802AA9: push eax
00802AAA: push 00000000h
00802AAC: call 00410934h ; Erase
00802AB1: lea eax, var_48
00802AB4: push eax
00802AB5: lea eax, var_44
00802AB8: push eax
00802AB9: push 00000002h
00802ABB: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00802AC0: add esp, 0000000Ch
00802AC3: lea eax, var_58
00802AC6: push eax
00802AC7: lea eax, var_54
00802ACA: push eax
00802ACB: lea eax, var_50
00802ACE: push eax
00802ACF: push 00000003h
00802AD1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00802AD6: add esp, 00000010h
00802AD9: lea eax, var_00000088
00802ADF: push eax
00802AE0: lea eax, var_78
00802AE3: push eax
00802AE4: lea eax, var_68
00802AE7: push eax
00802AE8: push 00000003h
00802AEA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00802AEF: add esp, 00000010h
00802AF2: mov var_04, 00000013h
00802AF9: lea eax, var_000001B0
00802AFF: push eax
00802B00: lea eax, var_000001A0
00802B06: push eax
00802B07: lea eax, var_30
00802B0A: push eax
00802B0B: call 00410A36h ; Next
00802B10: mov var_000001D0, eax
00802B16: cmp var_000001D0, 00000000h
00802B1D: jnz 0080282Bh
00802B23: jmp 00802BEEh
00802B28: mov var_04, 00000015h
00802B2F: lea eax, var_44
00802B32: push eax
00802B33: mov eax, [ebp+08h]
00802B36: mov eax, [eax]
00802B38: push [ebp+08h]
00802B3B: call [eax+000001C0h]
00802B41: fclex 
00802B43: mov var_00000158, eax
00802B49: cmp var_00000158, 00000000h
00802B50: jnl 802B72h
00802B52: push 000001C0h
00802B57: push 00444E68h
00802B5C: push [ebp+08h]
00802B5F: push var_00000158
00802B65: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00802B6A: mov var_00000218, eax
00802B70: jmp 802B79h
00802B72: and var_00000218, 00000000h
00802B79: push var_44
00802B7C: call 004109DCh ; Val(arg_1)
00802B81: fstp real8 ptr var_00000154
00802B87: push 00000000h
00802B89: push FFFFFFFFh
00802B8B: push 00000000h
00802B8D: push 00000000h
00802B8F: lea eax, var_000000DC
00802B95: push eax
00802B96: push 00000010h
00802B98: push 00000880h
00802B9D: call 00410946h ; ReDim
00802BA2: add esp, 0000001Ch
00802BA5: mov edx, 0043D458h ; x6
00802BAA: lea ecx, var_48
00802BAD: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00802BB2: lea eax, var_000000DC
00802BB8: push eax
00802BB9: lea eax, var_48
00802BBC: push eax
00802BBD: fld real8 ptr var_00000154
00802BC3: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00802BC8: push eax
00802BC9: call 007A6910h
00802BCE: lea eax, var_000000DC
00802BD4: push eax
00802BD5: push 00000000h
00802BD7: call 00410934h ; Erase
00802BDC: lea eax, var_48
00802BDF: push eax
00802BE0: lea eax, var_44
00802BE3: push eax
00802BE4: push 00000002h
00802BE6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00802BEB: add esp, 0000000Ch
00802BEE: mov var_10, 00000000h
00802BF5: wait 
00802BF6: push 00802CABh
00802BFB: jmp 802C74h
00802BFD: lea eax, var_4C
00802C00: push eax
00802C01: lea eax, var_48
00802C04: push eax
00802C05: lea eax, var_44
00802C08: push eax
00802C09: push 00000003h
00802C0B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00802C10: add esp, 00000010h
00802C13: lea eax, var_58
00802C16: push eax
00802C17: lea eax, var_54
00802C1A: push eax
00802C1B: lea eax, var_50
00802C1E: push eax
00802C1F: push 00000003h
00802C21: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00802C26: add esp, 00000010h
00802C29: lea eax, var_000000D8
00802C2F: push eax
00802C30: lea eax, var_000000C8
00802C36: push eax
00802C37: lea eax, var_000000B8
00802C3D: push eax
00802C3E: lea eax, var_000000A8
00802C44: push eax
00802C45: lea eax, var_00000098
00802C4B: push eax
00802C4C: lea eax, var_00000088
00802C52: push eax
00802C53: lea eax, var_78
00802C56: push eax
00802C57: lea eax, var_68
00802C5A: push eax
00802C5B: push 00000008h
00802C5D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00802C62: add esp, 00000024h
00802C65: lea eax, var_000000DC
00802C6B: push eax
00802C6C: push 00000000h
00802C6E: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
00802C73: ret 
End Sub

Private sub Form__801781
00801781: push ebp
00801782: mov ebp, esp
00801784: sub esp, 0000000Ch
00801787: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080178C: mov eax, fs:[00h]
00801792: push eax
00801793: mov fs:[00000000h], esp
0080179A: mov eax, 00000088h
0080179F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008017A4: push ebx
008017A5: push esi
008017A6: push edi
008017A7: mov var_0C, esp
008017AA: mov var_08, 0040A190h
008017B1: mov eax, [ebp+08h]
008017B4: and eax, 00000001h
008017B7: mov var_04, eax
008017BA: mov eax, [ebp+08h]
008017BD: and al, FEh
008017BF: mov [ebp+08h], eax
008017C2: mov eax, [ebp+08h]
008017C5: mov eax, [eax]
008017C7: push [ebp+08h]
008017CA: call [eax+04h]
008017CD: mov var_4C, 80020004h
008017D4: mov var_54, 0000000Ah
008017DB: mov var_3C, 80020004h
008017E2: mov var_44, 0000000Ah
008017E9: mov var_2C, 80020004h
008017F0: mov var_34, 0000000Ah
008017F7: mov var_5C, 00452E7Ch ; This will not work without a port opened for the user. Please only use if the WAN/LAN IP Match or if you have scanned their ports.
008017FE: mov var_64, 00000008h
00801805: lea edx, var_64
00801808: lea ecx, var_24
0080180B: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00801810: lea eax, var_54
00801813: push eax
00801814: lea eax, var_44
00801817: push eax
00801818: lea eax, var_34
0080181B: push eax
0080181C: push 00000040h
0080181E: lea eax, var_24
00801821: push eax
00801822: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00801827: lea eax, var_54
0080182A: push eax
0080182B: lea eax, var_44
0080182E: push eax
0080182F: lea eax, var_34
00801832: push eax
00801833: lea eax, var_24
00801836: push eax
00801837: push 00000004h
00801839: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080183E: add esp, 00000014h
00801841: mov var_04, 00000000h
00801848: push 0080186Bh
0080184D: jmp 80186Ah
0080184F: lea eax, var_54
00801852: push eax
00801853: lea eax, var_44
00801856: push eax
00801857: lea eax, var_34
0080185A: push eax
0080185B: lea eax, var_24
0080185E: push eax
0080185F: push 00000004h
00801861: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00801866: add esp, 00000014h
00801869: ret 
End Sub

Private sub Form__80188A
0080188A: push ebp
0080188B: mov ebp, esp
0080188D: sub esp, 00000018h
00801890: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00801895: mov eax, fs:[00h]
0080189B: push eax
0080189C: mov fs:[00000000h], esp
008018A3: mov eax, 000000B0h
008018A8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008018AD: push ebx
008018AE: push esi
008018AF: push edi
008018B0: mov var_18, esp
008018B3: mov var_14, 0040A1A0h
008018BA: mov eax, [ebp+08h]
008018BD: and eax, 00000001h
008018C0: mov var_10, eax
008018C3: mov eax, [ebp+08h]
008018C6: and al, FEh
008018C8: mov [ebp+08h], eax
008018CB: mov var_0C, 00000000h
008018D2: mov eax, [ebp+08h]
008018D5: mov eax, [eax]
008018D7: push [ebp+08h]
008018DA: call [eax+04h]
008018DD: mov var_04, 00000001h
008018E4: mov var_04, 00000002h
008018EB: push FFFFFFFFh
008018ED: call 00410A60h ; On Error ...
008018F2: mov var_04, 00000003h
008018F9: fldz 
008018FB: fstp real4 ptr var_2C
008018FE: mov var_34, 00000004h
00801905: and var_4C, 00000000h
00801909: mov var_54, 00000002h
00801910: lea eax, var_000000A8
00801916: push eax
00801917: mov eax, [ebp+08h]
0080191A: mov eax, [eax]
0080191C: push [ebp+08h]
0080191F: call [eax+00000080h]
00801925: fclex 
00801927: mov var_000000B0, eax
0080192D: cmp var_000000B0, 00000000h
00801934: jnl 801956h
00801936: push 00000080h
0080193B: push 00444E68h
00801940: push [ebp+08h]
00801943: push var_000000B0
00801949: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080194E: mov var_000000CC, eax
00801954: jmp 80195Dh
00801956: and var_000000CC, 00000000h
0080195D: fld real4 ptr var_000000A8
00801963: fstp real4 ptr var_6C
00801966: mov var_74, 00000004h
0080196D: lea eax, var_000000AC
00801973: push eax
00801974: mov eax, [ebp+08h]
00801977: mov eax, [eax]
00801979: push [ebp+08h]
0080197C: call [eax+00000088h]
00801982: fclex 
00801984: mov var_000000B4, eax
0080198A: cmp var_000000B4, 00000000h
00801991: jnl 8019B3h
00801993: push 00000088h
00801998: push 00444E68h
0080199D: push [ebp+08h]
008019A0: push var_000000B4
008019A6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008019AB: mov var_000000D0, eax
008019B1: jmp 8019BAh
008019B3: and var_000000D0, 00000000h
008019BA: fld real4 ptr var_000000AC
008019C0: fsub real4 ptr [0040A1D0h]
008019C6: fstp real4 ptr var_0000008C
008019CC: fstsw ax
008019CE: test al, 0Dh
008019D0: jnz 00801A8Fh
008019D6: mov var_00000094, 00000004h
008019E0: push 00000010h
008019E2: pop eax
008019E3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008019E8: lea esi, var_34
008019EB: mov edi, esp
008019ED: movsd 
008019EE: movsd 
008019EF: movsd 
008019F0: movsd 
008019F1: push 00000010h
008019F3: pop eax
008019F4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008019F9: lea esi, var_54
008019FC: mov edi, esp
008019FE: movsd 
008019FF: movsd 
00801A00: movsd 
00801A01: movsd 
00801A02: push 00000010h
00801A04: pop eax
00801A05: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00801A0A: lea esi, var_74
00801A0D: mov edi, esp
00801A0F: movsd 
00801A10: movsd 
00801A11: movsd 
00801A12: movsd 
00801A13: push 00000010h
00801A15: pop eax
00801A16: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00801A1B: lea esi, var_00000094
00801A21: mov edi, esp
00801A23: movsd 
00801A24: movsd 
00801A25: movsd 
00801A26: movsd 
00801A27: push 00000004h
00801A29: push 80011002h
00801A2E: mov eax, [ebp+08h]
00801A31: mov eax, [eax]
00801A33: push [ebp+08h]
00801A36: call [eax+00000308h]
00801A3C: push eax
00801A3D: lea eax, var_24
00801A40: push eax
00801A41: call 00410A84h ; Set (object)
00801A46: push eax
00801A47: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00801A4C: add esp, 0000004Ch
00801A4F: lea ecx, var_24
00801A52: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00801A57: mov var_10, 00000000h
00801A5E: wait 
00801A5F: push 00801A70h
00801A64: jmp 801A6Fh
00801A66: lea ecx, var_24
00801A69: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00801A6E: ret 
End Sub

