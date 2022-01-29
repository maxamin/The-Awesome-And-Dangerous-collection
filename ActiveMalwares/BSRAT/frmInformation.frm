VERSION 5.00
Begin VB.Form frmInformation
  Caption = "Information"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmInformation.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 11670
  ClientHeight = 8310
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer Timer1
    Interval = 800
    Left = 9960
    Top = 0
  End
  Begin MSComctlLib.ImageList imgInfo
  End
  Begin MSComctlLib.ListView lstInfo
    Left = 0
    Top = 0
    Width = 11655
    Height = 8295
    TabIndex = 0
  End
  Begin VB.Menu mnuInformationMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuInformation
      Index = 0
      Caption = "Refresh"
    End
    Begin VB.Menu mnuInformation
      Index = 1
      Caption = "-"
    End
    Begin VB.Menu mnuInformation
      Index = 2
      Caption = "Copy"
    End
    Begin VB.Menu mnuInformation
      Index = 3
      Caption = "Save"
    End
  End
End

Attribute VB_Name = "frmInformation"


Private sub mnuInformation__8639EA
008639EA: push ebp
008639EB: mov ebp, esp
008639ED: sub esp, 00000018h
008639F0: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008639F5: mov eax, fs:[00h]
008639FB: push eax
008639FC: mov fs:[00000000h], esp
00863A03: mov eax, 000001E4h
00863A08: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00863A0D: push ebx
00863A0E: push esi
00863A0F: push edi
00863A10: mov var_18, esp
00863A13: mov var_14, 0040CEE8h
00863A1A: mov eax, [ebp+08h]
00863A1D: and eax, 00000001h
00863A20: mov var_10, eax
00863A23: mov eax, [ebp+08h]
00863A26: and al, FEh
00863A28: mov [ebp+08h], eax
00863A2B: mov var_0C, 00000000h
00863A32: mov eax, [ebp+08h]
00863A35: mov eax, [eax]
00863A37: push [ebp+08h]
00863A3A: call [eax+04h]
00863A3D: mov var_04, 00000001h
00863A44: mov var_04, 00000002h
00863A4B: push FFFFFFFFh
00863A4D: call 00410A60h ; On Error ...
00863A52: mov var_04, 00000003h
00863A59: mov eax, [ebp+0Ch]
00863A5C: mov ax, [eax]
00863A5F: mov var_00000154, ax
00863A66: movsx eax, word ptr var_00000154
00863A6D: mov var_00000178, eax
00863A73: cmp var_00000178, 00000000h
00863A7A: jz 863AA0h
00863A7C: cmp var_00000178, 00000002h
00863A83: jz 00863E0Ch
00863A89: cmp var_00000178, 00000003h
00863A90: jz 008647BFh
00863A96: jmp 00865118h
00863A9B: jmp 00865118h
00863AA0: mov var_04, 00000005h
00863AA7: mov var_00000094, 00000001h
00863AB1: mov var_0000009C, 00000002h
00863ABB: push 004412BCh
00863AC0: push 00000000h
00863AC2: push 00000007h
00863AC4: mov eax, [ebp+08h]
00863AC7: mov eax, [eax]
00863AC9: push [ebp+08h]
00863ACC: call [eax+0000030Ch]
00863AD2: push eax
00863AD3: lea eax, var_54
00863AD6: push eax
00863AD7: call 00410A84h ; Set (object)
00863ADC: push eax
00863ADD: lea eax, var_78
00863AE0: push eax
00863AE1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00863AE6: add esp, 00000010h
00863AE9: push eax
00863AEA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00863AEF: push eax
00863AF0: lea eax, var_58
00863AF3: push eax
00863AF4: call 00410A84h ; Set (object)
00863AF9: mov var_000000D0, eax
00863AFF: lea eax, var_000000C4
00863B05: push eax
00863B06: mov eax, var_000000D0
00863B0C: mov eax, [eax]
00863B0E: push var_000000D0
00863B14: call [eax+1Ch]
00863B17: fclex 
00863B19: mov var_000000D4, eax
00863B1F: cmp var_000000D4, 00000000h
00863B26: jnl 863B48h
00863B28: push 0000001Ch
00863B2A: push 004412BCh
00863B2F: push var_000000D0
00863B35: push var_000000D4
00863B3B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00863B40: mov var_0000017C, eax
00863B46: jmp 863B4Fh
00863B48: and var_0000017C, 00000000h
00863B4F: mov eax, var_000000C4
00863B55: mov var_000000A4, eax
00863B5B: mov var_000000AC, 00000003h
00863B65: mov var_000000B4, 00000001h
00863B6F: mov var_000000BC, 00000002h
00863B79: lea eax, var_0000009C
00863B7F: push eax
00863B80: lea eax, var_000000AC
00863B86: push eax
00863B87: lea eax, var_000000BC
00863B8D: push eax
00863B8E: lea eax, var_00000110
00863B94: push eax
00863B95: lea eax, var_00000100
00863B9B: push eax
00863B9C: lea eax, var_30
00863B9F: push eax
00863BA0: call 00410A3Ch ; For
00863BA5: mov var_0000016C, eax
00863BAB: lea eax, var_58
00863BAE: push eax
00863BAF: lea eax, var_54
00863BB2: push eax
00863BB3: push 00000002h
00863BB5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00863BBA: add esp, 0000000Ch
00863BBD: lea ecx, var_78
00863BC0: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00863BC5: jmp 00863D04h
00863BCA: mov var_04, 00000006h
00863BD1: push 004412BCh
00863BD6: push 00000000h
00863BD8: push 00000007h
00863BDA: mov eax, [ebp+08h]
00863BDD: mov eax, [eax]
00863BDF: push [ebp+08h]
00863BE2: call [eax+0000030Ch]
00863BE8: push eax
00863BE9: lea eax, var_54
00863BEC: push eax
00863BED: call 00410A84h ; Set (object)
00863BF2: push eax
00863BF3: lea eax, var_78
00863BF6: push eax
00863BF7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00863BFC: add esp, 00000010h
00863BFF: push eax
00863C00: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00863C05: push eax
00863C06: lea eax, var_58
00863C09: push eax
00863C0A: call 00410A84h ; Set (object)
00863C0F: mov var_000000D0, eax
00863C15: lea eax, var_5C
00863C18: push eax
00863C19: lea eax, var_30
00863C1C: push eax
00863C1D: mov eax, var_000000D0
00863C23: mov eax, [eax]
00863C25: push var_000000D0
00863C2B: call [eax+24h]
00863C2E: fclex 
00863C30: mov var_000000D4, eax
00863C36: cmp var_000000D4, 00000000h
00863C3D: jnl 863C5Fh
00863C3F: push 00000024h
00863C41: push 004412BCh
00863C46: push var_000000D0
00863C4C: push var_000000D4
00863C52: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00863C57: mov var_00000180, eax
00863C5D: jmp 863C66h
00863C5F: and var_00000180, 00000000h
00863C66: mov eax, var_5C
00863C69: mov var_000000D8, eax
00863C6F: push 00000000h
00863C71: push 00000001h
00863C73: mov eax, var_000000D8
00863C79: mov eax, [eax]
00863C7B: push var_000000D8
00863C81: call [eax+00000088h]
00863C87: fclex 
00863C89: mov var_000000DC, eax
00863C8F: cmp var_000000DC, 00000000h
00863C96: jnl 863CBBh
00863C98: push 00000088h
00863C9D: push 004412DCh
00863CA2: push var_000000D8
00863CA8: push var_000000DC
00863CAE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00863CB3: mov var_00000184, eax
00863CB9: jmp 863CC2h
00863CBB: and var_00000184, 00000000h
00863CC2: lea eax, var_5C
00863CC5: push eax
00863CC6: lea eax, var_58
00863CC9: push eax
00863CCA: lea eax, var_54
00863CCD: push eax
00863CCE: push 00000003h
00863CD0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00863CD5: add esp, 00000010h
00863CD8: lea ecx, var_78
00863CDB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00863CE0: mov var_04, 00000007h
00863CE7: lea eax, var_00000110
00863CED: push eax
00863CEE: lea eax, var_00000100
00863CF4: push eax
00863CF5: lea eax, var_30
00863CF8: push eax
00863CF9: call 00410A36h ; Next
00863CFE: mov var_0000016C, eax
00863D04: cmp var_0000016C, 00000000h
00863D0B: jnz 00863BCAh
00863D11: mov var_04, 00000008h
00863D18: lea eax, var_40
00863D1B: push eax
00863D1C: mov eax, [ebp+08h]
00863D1F: mov eax, [eax]
00863D21: push [ebp+08h]
00863D24: call [eax+000001C0h]
00863D2A: fclex 
00863D2C: mov var_000000D0, eax
00863D32: cmp var_000000D0, 00000000h
00863D39: jnl 863D5Bh
00863D3B: push 000001C0h
00863D40: push 00444ABCh
00863D45: push [ebp+08h]
00863D48: push var_000000D0
00863D4E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00863D53: mov var_00000188, eax
00863D59: jmp 863D62h
00863D5B: and var_00000188, 00000000h
00863D62: push var_40
00863D65: call 004109DCh ; Val(arg_1)
00863D6A: fstp real8 ptr var_000000CC
00863D70: push 00000000h
00863D72: push 00000000h
00863D74: push 00000001h
00863D76: push 00000000h
00863D78: lea eax, var_0000008C
00863D7E: push eax
00863D7F: push 00000010h
00863D81: push 00000880h
00863D86: call 00410946h ; ReDim
00863D8B: add esp, 0000001Ch
00863D8E: mov var_00000094, 00442938h
00863D98: mov var_0000009C, 00000008h
00863DA2: lea esi, var_0000009C
00863DA8: push 00000000h
00863DAA: push var_0000008C
00863DB0: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00863DB5: mov ecx, eax
00863DB7: mov edx, esi
00863DB9: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
00863DBE: mov edx, 0043D7B0h ; x77
00863DC3: lea ecx, var_44
00863DC6: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00863DCB: lea eax, var_0000008C
00863DD1: push eax
00863DD2: lea eax, var_44
00863DD5: push eax
00863DD6: fld real8 ptr var_000000CC
00863DDC: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00863DE1: push eax
00863DE2: call 007A6910h
00863DE7: lea eax, var_0000008C
00863DED: push eax
00863DEE: push 00000000h
00863DF0: call 00410934h ; Erase
00863DF5: lea eax, var_44
00863DF8: push eax
00863DF9: lea eax, var_40
00863DFC: push eax
00863DFD: push 00000002h
00863DFF: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00863E04: add esp, 0000000Ch
00863E07: jmp 00865118h
00863E0C: mov var_04, 0000000Ah
00863E13: mov var_00000094, 00000001h
00863E1D: mov var_0000009C, 00000002h
00863E27: push 004412BCh
00863E2C: push 00000000h
00863E2E: push 00000007h
00863E30: mov eax, [ebp+08h]
00863E33: mov eax, [eax]
00863E35: push [ebp+08h]
00863E38: call [eax+0000030Ch]
00863E3E: push eax
00863E3F: lea eax, var_54
00863E42: push eax
00863E43: call 00410A84h ; Set (object)
00863E48: push eax
00863E49: lea eax, var_78
00863E4C: push eax
00863E4D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00863E52: add esp, 00000010h
00863E55: push eax
00863E56: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00863E5B: push eax
00863E5C: lea eax, var_58
00863E5F: push eax
00863E60: call 00410A84h ; Set (object)
00863E65: mov var_000000D0, eax
00863E6B: lea eax, var_000000C4
00863E71: push eax
00863E72: mov eax, var_000000D0
00863E78: mov eax, [eax]
00863E7A: push var_000000D0
00863E80: call [eax+1Ch]
00863E83: fclex 
00863E85: mov var_000000D4, eax
00863E8B: cmp var_000000D4, 00000000h
00863E92: jnl 863EB4h
00863E94: push 0000001Ch
00863E96: push 004412BCh
00863E9B: push var_000000D0
00863EA1: push var_000000D4
00863EA7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00863EAC: mov var_0000018C, eax
00863EB2: jmp 863EBBh
00863EB4: and var_0000018C, 00000000h
00863EBB: mov eax, var_000000C4
00863EC1: mov var_000000A4, eax
00863EC7: mov var_000000AC, 00000003h
00863ED1: mov var_000000B4, 00000001h
00863EDB: mov var_000000BC, 00000002h
00863EE5: lea eax, var_0000009C
00863EEB: push eax
00863EEC: lea eax, var_000000AC
00863EF2: push eax
00863EF3: lea eax, var_000000BC
00863EF9: push eax
00863EFA: lea eax, var_00000130
00863F00: push eax
00863F01: lea eax, var_00000120
00863F07: push eax
00863F08: lea eax, var_30
00863F0B: push eax
00863F0C: call 00410A3Ch ; For
00863F11: mov var_00000170, eax
00863F17: lea eax, var_58
00863F1A: push eax
00863F1B: lea eax, var_54
00863F1E: push eax
00863F1F: push 00000002h
00863F21: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00863F26: add esp, 0000000Ch
00863F29: lea ecx, var_78
00863F2C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00863F31: jmp 008645AEh
00863F36: mov var_04, 0000000Bh
00863F3D: push 004412BCh
00863F42: push 00000000h
00863F44: push 00000007h
00863F46: mov eax, [ebp+08h]
00863F49: mov eax, [eax]
00863F4B: push [ebp+08h]
00863F4E: call [eax+0000030Ch]
00863F54: push eax
00863F55: lea eax, var_54
00863F58: push eax
00863F59: call 00410A84h ; Set (object)
00863F5E: push eax
00863F5F: lea eax, var_78
00863F62: push eax
00863F63: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00863F68: add esp, 00000010h
00863F6B: push eax
00863F6C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00863F71: push eax
00863F72: lea eax, var_58
00863F75: push eax
00863F76: call 00410A84h ; Set (object)
00863F7B: mov var_000000D0, eax
00863F81: lea eax, var_5C
00863F84: push eax
00863F85: lea eax, var_30
00863F88: push eax
00863F89: mov eax, var_000000D0
00863F8F: mov eax, [eax]
00863F91: push var_000000D0
00863F97: call [eax+24h]
00863F9A: fclex 
00863F9C: mov var_000000D4, eax
00863FA2: cmp var_000000D4, 00000000h
00863FA9: jnl 863FCBh
00863FAB: push 00000024h
00863FAD: push 004412BCh
00863FB2: push var_000000D0
00863FB8: push var_000000D4
00863FBE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00863FC3: mov var_00000190, eax
00863FC9: jmp 863FD2h
00863FCB: and var_00000190, 00000000h
00863FD2: mov eax, var_5C
00863FD5: mov var_000000D8, eax
00863FDB: lea eax, var_000000C0
00863FE1: push eax
00863FE2: mov eax, var_000000D8
00863FE8: mov eax, [eax]
00863FEA: push var_000000D8
00863FF0: call [eax+5Ch]
00863FF3: fclex 
00863FF5: mov var_000000DC, eax
00863FFB: cmp var_000000DC, 00000000h
00864002: jnl 864024h
00864004: push 0000005Ch
00864006: push 004412DCh
0086400B: push var_000000D8
00864011: push var_000000DC
00864017: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086401C: mov var_00000194, eax
00864022: jmp 86402Bh
00864024: and var_00000194, 00000000h
0086402B: xor eax, eax
0086402D: cmp word ptr var_000000C0, FFFFh
00864035: setz al
00864038: neg eax
0086403A: mov var_000000E0, ax
00864041: lea eax, var_5C
00864044: push eax
00864045: lea eax, var_58
00864048: push eax
00864049: lea eax, var_54
0086404C: push eax
0086404D: push 00000003h
0086404F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00864054: add esp, 00000010h
00864057: lea ecx, var_78
0086405A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086405F: movsx eax, word ptr var_000000E0
00864066: test eax, eax
00864068: jz 0086458Ah
0086406E: mov var_04, 0000000Ch
00864075: push 004412BCh
0086407A: push 00000000h
0086407C: push 00000007h
0086407E: mov eax, [ebp+08h]
00864081: mov eax, [eax]
00864083: push [ebp+08h]
00864086: call [eax+0000030Ch]
0086408C: push eax
0086408D: lea eax, var_54
00864090: push eax
00864091: call 00410A84h ; Set (object)
00864096: push eax
00864097: lea eax, var_78
0086409A: push eax
0086409B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008640A0: add esp, 00000010h
008640A3: push eax
008640A4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008640A9: push eax
008640AA: lea eax, var_58
008640AD: push eax
008640AE: call 00410A84h ; Set (object)
008640B3: mov var_000000D0, eax
008640B9: lea eax, var_5C
008640BC: push eax
008640BD: lea eax, var_30
008640C0: push eax
008640C1: mov eax, var_000000D0
008640C7: mov eax, [eax]
008640C9: push var_000000D0
008640CF: call [eax+24h]
008640D2: fclex 
008640D4: mov var_000000D4, eax
008640DA: cmp var_000000D4, 00000000h
008640E1: jnl 864103h
008640E3: push 00000024h
008640E5: push 004412BCh
008640EA: push var_000000D0
008640F0: push var_000000D4
008640F6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008640FB: mov var_00000198, eax
00864101: jmp 86410Ah
00864103: and var_00000198, 00000000h
0086410A: mov eax, var_5C
0086410D: mov var_000000D8, eax
00864113: lea eax, var_40
00864116: push eax
00864117: mov eax, var_000000D8
0086411D: mov eax, [eax]
0086411F: push var_000000D8
00864125: call [eax+24h]
00864128: fclex 
0086412A: mov var_000000DC, eax
00864130: cmp var_000000DC, 00000000h
00864137: jnl 864159h
00864139: push 00000024h
0086413B: push 004412DCh
00864140: push var_000000D8
00864146: push var_000000DC
0086414C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864151: mov var_0000019C, eax
00864157: jmp 864160h
00864159: and var_0000019C, 00000000h
00864160: push 004412BCh
00864165: push 00000000h
00864167: push 00000007h
00864169: mov eax, [ebp+08h]
0086416C: mov eax, [eax]
0086416E: push [ebp+08h]
00864171: call [eax+0000030Ch]
00864177: push eax
00864178: lea eax, var_60
0086417B: push eax
0086417C: call 00410A84h ; Set (object)
00864181: push eax
00864182: lea eax, var_00000088
00864188: push eax
00864189: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086418E: add esp, 00000010h
00864191: push eax
00864192: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00864197: push eax
00864198: lea eax, var_64
0086419B: push eax
0086419C: call 00410A84h ; Set (object)
008641A1: mov var_000000E0, eax
008641A7: lea eax, var_68
008641AA: push eax
008641AB: lea eax, var_30
008641AE: push eax
008641AF: mov eax, var_000000E0
008641B5: mov eax, [eax]
008641B7: push var_000000E0
008641BD: call [eax+24h]
008641C0: fclex 
008641C2: mov var_000000E4, eax
008641C8: cmp var_000000E4, 00000000h
008641CF: jnl 8641F1h
008641D1: push 00000024h
008641D3: push 004412BCh
008641D8: push var_000000E0
008641DE: push var_000000E4
008641E4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008641E9: mov var_000001A0, eax
008641EF: jmp 8641F8h
008641F1: and var_000001A0, 00000000h
008641F8: mov eax, var_68
008641FB: mov var_000000E8, eax
00864201: lea eax, var_44
00864204: push eax
00864205: push 00000001h
00864207: mov eax, var_000000E8
0086420D: mov eax, [eax]
0086420F: push var_000000E8
00864215: call [eax+00000084h]
0086421B: fclex 
0086421D: mov var_000000EC, eax
00864223: cmp var_000000EC, 00000000h
0086422A: jnl 86424Fh
0086422C: push 00000084h
00864231: push 004412DCh
00864236: push var_000000E8
0086423C: push var_000000EC
00864242: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864247: mov var_000001A4, eax
0086424D: jmp 864256h
0086424F: and var_000001A4, 00000000h
00864256: push var_40
00864259: push 00000000h
0086425B: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00864260: mov esi, eax
00864262: neg esi
00864264: sbb esi, esi
00864266: inc esi
00864267: neg esi
00864269: push var_44
0086426C: push 00000000h
0086426E: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00864273: neg eax
00864275: sbb eax, eax
00864277: inc eax
00864278: neg eax
0086427A: and si, ax
0086427D: mov var_000000F0, si
00864284: lea eax, var_44
00864287: push eax
00864288: lea eax, var_40
0086428B: push eax
0086428C: push 00000002h
0086428E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00864293: add esp, 0000000Ch
00864296: lea eax, var_68
00864299: push eax
0086429A: lea eax, var_64
0086429D: push eax
0086429E: lea eax, var_60
008642A1: push eax
008642A2: lea eax, var_5C
008642A5: push eax
008642A6: lea eax, var_58
008642A9: push eax
008642AA: lea eax, var_54
008642AD: push eax
008642AE: push 00000006h
008642B0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008642B5: add esp, 0000001Ch
008642B8: lea eax, var_00000088
008642BE: push eax
008642BF: lea eax, var_78
008642C2: push eax
008642C3: push 00000002h
008642C5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008642CA: add esp, 0000000Ch
008642CD: movsx eax, word ptr var_000000F0
008642D4: test eax, eax
008642D6: jz 8642FBh
008642D8: mov var_04, 0000000Dh
008642DF: push var_38
008642E2: push 00441264h ; vbCrLf
008642E7: call 00410A18h ; &
008642EC: mov edx, eax
008642EE: lea ecx, var_38
008642F1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008642F6: jmp 0086458Ah
008642FB: mov var_04, 0000000Fh
00864302: push 004412BCh
00864307: push 00000000h
00864309: push 00000007h
0086430B: mov eax, [ebp+08h]
0086430E: mov eax, [eax]
00864310: push [ebp+08h]
00864313: call [eax+0000030Ch]
00864319: push eax
0086431A: lea eax, var_54
0086431D: push eax
0086431E: call 00410A84h ; Set (object)
00864323: push eax
00864324: lea eax, var_78
00864327: push eax
00864328: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086432D: add esp, 00000010h
00864330: push eax
00864331: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00864336: push eax
00864337: lea eax, var_58
0086433A: push eax
0086433B: call 00410A84h ; Set (object)
00864340: mov var_000000D0, eax
00864346: lea eax, var_5C
00864349: push eax
0086434A: lea eax, var_30
0086434D: push eax
0086434E: mov eax, var_000000D0
00864354: mov eax, [eax]
00864356: push var_000000D0
0086435C: call [eax+24h]
0086435F: fclex 
00864361: mov var_000000D4, eax
00864367: cmp var_000000D4, 00000000h
0086436E: jnl 864390h
00864370: push 00000024h
00864372: push 004412BCh
00864377: push var_000000D0
0086437D: push var_000000D4
00864383: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864388: mov var_000001A8, eax
0086438E: jmp 864397h
00864390: and var_000001A8, 00000000h
00864397: mov eax, var_5C
0086439A: mov var_000000D8, eax
008643A0: lea eax, var_40
008643A3: push eax
008643A4: mov eax, var_000000D8
008643AA: mov eax, [eax]
008643AC: push var_000000D8
008643B2: call [eax+24h]
008643B5: fclex 
008643B7: mov var_000000DC, eax
008643BD: cmp var_000000DC, 00000000h
008643C4: jnl 8643E6h
008643C6: push 00000024h
008643C8: push 004412DCh
008643CD: push var_000000D8
008643D3: push var_000000DC
008643D9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008643DE: mov var_000001AC, eax
008643E4: jmp 8643EDh
008643E6: and var_000001AC, 00000000h
008643ED: push 004412BCh
008643F2: push 00000000h
008643F4: push 00000007h
008643F6: mov eax, [ebp+08h]
008643F9: mov eax, [eax]
008643FB: push [ebp+08h]
008643FE: call [eax+0000030Ch]
00864404: push eax
00864405: lea eax, var_60
00864408: push eax
00864409: call 00410A84h ; Set (object)
0086440E: push eax
0086440F: lea eax, var_00000088
00864415: push eax
00864416: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086441B: add esp, 00000010h
0086441E: push eax
0086441F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00864424: push eax
00864425: lea eax, var_64
00864428: push eax
00864429: call 00410A84h ; Set (object)
0086442E: mov var_000000E0, eax
00864434: lea eax, var_68
00864437: push eax
00864438: lea eax, var_30
0086443B: push eax
0086443C: mov eax, var_000000E0
00864442: mov eax, [eax]
00864444: push var_000000E0
0086444A: call [eax+24h]
0086444D: fclex 
0086444F: mov var_000000E4, eax
00864455: cmp var_000000E4, 00000000h
0086445C: jnl 86447Eh
0086445E: push 00000024h
00864460: push 004412BCh
00864465: push var_000000E0
0086446B: push var_000000E4
00864471: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864476: mov var_000001B0, eax
0086447C: jmp 864485h
0086447E: and var_000001B0, 00000000h
00864485: mov eax, var_68
00864488: mov var_000000E8, eax
0086448E: lea eax, var_48
00864491: push eax
00864492: push 00000001h
00864494: mov eax, var_000000E8
0086449A: mov eax, [eax]
0086449C: push var_000000E8
008644A2: call [eax+00000084h]
008644A8: fclex 
008644AA: mov var_000000EC, eax
008644B0: cmp var_000000EC, 00000000h
008644B7: jnl 8644DCh
008644B9: push 00000084h
008644BE: push 004412DCh
008644C3: push var_000000E8
008644C9: push var_000000EC
008644CF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008644D4: mov var_000001B4, eax
008644DA: jmp 8644E3h
008644DC: and var_000001B4, 00000000h
008644E3: push var_38
008644E6: push var_40
008644E9: call 00410A18h ; &
008644EE: mov edx, eax
008644F0: lea ecx, var_44
008644F3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008644F8: push eax
008644F9: push 00449920h
008644FE: call 00410A18h ; &
00864503: mov edx, eax
00864505: lea ecx, var_4C
00864508: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0086450D: push eax
0086450E: push var_48
00864511: call 00410A18h ; &
00864516: mov edx, eax
00864518: lea ecx, var_50
0086451B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00864520: push eax
00864521: push 00441264h ; vbCrLf
00864526: call 00410A18h ; &
0086452B: mov edx, eax
0086452D: lea ecx, var_38
00864530: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00864535: lea eax, var_50
00864538: push eax
00864539: lea eax, var_48
0086453C: push eax
0086453D: lea eax, var_4C
00864540: push eax
00864541: lea eax, var_44
00864544: push eax
00864545: lea eax, var_40
00864548: push eax
00864549: push 00000005h
0086454B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00864550: add esp, 00000018h
00864553: lea eax, var_68
00864556: push eax
00864557: lea eax, var_64
0086455A: push eax
0086455B: lea eax, var_60
0086455E: push eax
0086455F: lea eax, var_5C
00864562: push eax
00864563: lea eax, var_58
00864566: push eax
00864567: lea eax, var_54
0086456A: push eax
0086456B: push 00000006h
0086456D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00864572: add esp, 0000001Ch
00864575: lea eax, var_00000088
0086457B: push eax
0086457C: lea eax, var_78
0086457F: push eax
00864580: push 00000002h
00864582: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00864587: add esp, 0000000Ch
0086458A: mov var_04, 00000012h
00864591: lea eax, var_00000130
00864597: push eax
00864598: lea eax, var_00000120
0086459E: push eax
0086459F: lea eax, var_30
008645A2: push eax
008645A3: call 00410A36h ; Next
008645A8: mov var_00000170, eax
008645AE: cmp var_00000170, 00000000h
008645B5: jnz 00863F36h
008645BB: mov var_04, 00000013h
008645C2: cmp [008F529Ch], 00000000h
008645C9: jnz 8645E6h
008645CB: push 008F529Ch
008645D0: push 00440F2Ch
008645D5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008645DA: mov var_000001B8, 008F529Ch
008645E4: jmp 8645F0h
008645E6: mov var_000001B8, 008F529Ch
008645F0: mov eax, var_000001B8
008645F6: mov eax, [eax]
008645F8: mov var_000000D0, eax
008645FE: lea eax, var_54
00864601: push eax
00864602: mov eax, var_000000D0
00864608: mov eax, [eax]
0086460A: push var_000000D0
00864610: call [eax+1Ch]
00864613: fclex 
00864615: mov var_000000D4, eax
0086461B: cmp var_000000D4, 00000000h
00864622: jnl 864644h
00864624: push 0000001Ch
00864626: push 00440F1Ch
0086462B: push var_000000D0
00864631: push var_000000D4
00864637: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086463C: mov var_000001BC, eax
00864642: jmp 86464Bh
00864644: and var_000001BC, 00000000h
0086464B: mov eax, var_54
0086464E: mov var_000000D8, eax
00864654: mov eax, var_000000D8
0086465A: mov eax, [eax]
0086465C: push var_000000D8
00864662: call [eax+50h]
00864665: fclex 
00864667: mov var_000000DC, eax
0086466D: cmp var_000000DC, 00000000h
00864674: jnl 864696h
00864676: push 00000050h
00864678: push 00445554h
0086467D: push var_000000D8
00864683: push var_000000DC
00864689: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086468E: mov var_000001C0, eax
00864694: jmp 86469Dh
00864696: and var_000001C0, 00000000h
0086469D: lea ecx, var_54
008646A0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008646A5: mov var_04, 00000014h
008646AC: cmp [008F529Ch], 00000000h
008646B3: jnz 8646D0h
008646B5: push 008F529Ch
008646BA: push 00440F2Ch
008646BF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008646C4: mov var_000001C4, 008F529Ch
008646CE: jmp 8646DAh
008646D0: mov var_000001C4, 008F529Ch
008646DA: mov eax, var_000001C4
008646E0: mov eax, [eax]
008646E2: mov var_000000D0, eax
008646E8: lea eax, var_54
008646EB: push eax
008646EC: mov eax, var_000000D0
008646F2: mov eax, [eax]
008646F4: push var_000000D0
008646FA: call [eax+1Ch]
008646FD: fclex 
008646FF: mov var_000000D4, eax
00864705: cmp var_000000D4, 00000000h
0086470C: jnl 86472Eh
0086470E: push 0000001Ch
00864710: push 00440F1Ch
00864715: push var_000000D0
0086471B: push var_000000D4
00864721: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864726: mov var_000001C8, eax
0086472C: jmp 864735h
0086472E: and var_000001C8, 00000000h
00864735: mov eax, var_54
00864738: mov var_000000D8, eax
0086473E: mov var_00000094, 80020004h
00864748: mov var_0000009C, 0000000Ah
00864752: push 00000010h
00864754: pop eax
00864755: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086475A: lea esi, var_0000009C
00864760: mov edi, esp
00864762: movsd 
00864763: movsd 
00864764: movsd 
00864765: movsd 
00864766: push var_38
00864769: mov eax, var_000000D8
0086476F: mov eax, [eax]
00864771: push var_000000D8
00864777: call [eax+60h]
0086477A: fclex 
0086477C: mov var_000000DC, eax
00864782: cmp var_000000DC, 00000000h
00864789: jnl 8647ABh
0086478B: push 00000060h
0086478D: push 00445554h
00864792: push var_000000D8
00864798: push var_000000DC
0086479E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008647A3: mov var_000001CC, eax
008647A9: jmp 8647B2h
008647AB: and var_000001CC, 00000000h
008647B2: lea ecx, var_54
008647B5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008647BA: jmp 00865118h
008647BF: mov var_04, 00000016h
008647C6: cmp [008F529Ch], 00000000h
008647CD: jnz 8647EAh
008647CF: push 008F529Ch
008647D4: push 00440F2Ch
008647D9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008647DE: mov var_000001D0, 008F529Ch
008647E8: jmp 8647F4h
008647EA: mov var_000001D0, 008F529Ch
008647F4: mov eax, var_000001D0
008647FA: mov eax, [eax]
008647FC: mov var_000000D0, eax
00864802: lea eax, var_54
00864805: push eax
00864806: mov eax, var_000000D0
0086480C: mov eax, [eax]
0086480E: push var_000000D0
00864814: call [eax+14h]
00864817: fclex 
00864819: mov var_000000D4, eax
0086481F: cmp var_000000D4, 00000000h
00864826: jnl 864848h
00864828: push 00000014h
0086482A: push 00440F1Ch
0086482F: push var_000000D0
00864835: push var_000000D4
0086483B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864840: mov var_000001D4, eax
00864846: jmp 86484Fh
00864848: and var_000001D4, 00000000h
0086484F: mov eax, var_54
00864852: mov var_000000D8, eax
00864858: lea eax, var_40
0086485B: push eax
0086485C: mov eax, var_000000D8
00864862: mov eax, [eax]
00864864: push var_000000D8
0086486A: call [eax+50h]
0086486D: fclex 
0086486F: mov var_000000DC, eax
00864875: cmp var_000000DC, 00000000h
0086487C: jnl 86489Eh
0086487E: push 00000050h
00864880: push 00440F3Ch
00864885: push var_000000D8
0086488B: push var_000000DC
00864891: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864896: mov var_000001D8, eax
0086489C: jmp 8648A5h
0086489E: and var_000001D8, 00000000h
008648A5: push 00000000h
008648A7: push 00000000h
008648A9: push var_40
008648AC: push 0044558Ch ; txt
008648B1: push 00452FD0h ; Text Documents
008648B6: call 007CCC4Dh
008648BB: mov edx, eax
008648BD: lea ecx, var_3C
008648C0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008648C5: lea ecx, var_40
008648C8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008648CD: lea ecx, var_54
008648D0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008648D5: mov var_04, 00000017h
008648DC: push var_3C
008648DF: push 00000000h
008648E1: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008648E6: test eax, eax
008648E8: jz 00865118h
008648EE: mov var_04, 00000018h
008648F5: mov var_00000094, 00000001h
008648FF: mov var_0000009C, 00000002h
00864909: push 004412BCh
0086490E: push 00000000h
00864910: push 00000007h
00864912: mov eax, [ebp+08h]
00864915: mov eax, [eax]
00864917: push [ebp+08h]
0086491A: call [eax+0000030Ch]
00864920: push eax
00864921: lea eax, var_54
00864924: push eax
00864925: call 00410A84h ; Set (object)
0086492A: push eax
0086492B: lea eax, var_78
0086492E: push eax
0086492F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00864934: add esp, 00000010h
00864937: push eax
00864938: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086493D: push eax
0086493E: lea eax, var_58
00864941: push eax
00864942: call 00410A84h ; Set (object)
00864947: mov var_000000D0, eax
0086494D: lea eax, var_000000C4
00864953: push eax
00864954: mov eax, var_000000D0
0086495A: mov eax, [eax]
0086495C: push var_000000D0
00864962: call [eax+1Ch]
00864965: fclex 
00864967: mov var_000000D4, eax
0086496D: cmp var_000000D4, 00000000h
00864974: jnl 864996h
00864976: push 0000001Ch
00864978: push 004412BCh
0086497D: push var_000000D0
00864983: push var_000000D4
00864989: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086498E: mov var_000001DC, eax
00864994: jmp 86499Dh
00864996: and var_000001DC, 00000000h
0086499D: mov eax, var_000000C4
008649A3: mov var_000000A4, eax
008649A9: mov var_000000AC, 00000003h
008649B3: mov var_000000B4, 00000001h
008649BD: mov var_000000BC, 00000002h
008649C7: lea eax, var_0000009C
008649CD: push eax
008649CE: lea eax, var_000000AC
008649D4: push eax
008649D5: lea eax, var_000000BC
008649DB: push eax
008649DC: lea eax, var_00000150
008649E2: push eax
008649E3: lea eax, var_00000140
008649E9: push eax
008649EA: lea eax, var_30
008649ED: push eax
008649EE: call 00410A3Ch ; For
008649F3: mov var_00000174, eax
008649F9: lea eax, var_58
008649FC: push eax
008649FD: lea eax, var_54
00864A00: push eax
00864A01: push 00000002h
00864A03: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00864A08: add esp, 0000000Ch
00864A0B: lea ecx, var_78
00864A0E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00864A13: jmp 00865090h
00864A18: mov var_04, 00000019h
00864A1F: push 004412BCh
00864A24: push 00000000h
00864A26: push 00000007h
00864A28: mov eax, [ebp+08h]
00864A2B: mov eax, [eax]
00864A2D: push [ebp+08h]
00864A30: call [eax+0000030Ch]
00864A36: push eax
00864A37: lea eax, var_54
00864A3A: push eax
00864A3B: call 00410A84h ; Set (object)
00864A40: push eax
00864A41: lea eax, var_78
00864A44: push eax
00864A45: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00864A4A: add esp, 00000010h
00864A4D: push eax
00864A4E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00864A53: push eax
00864A54: lea eax, var_58
00864A57: push eax
00864A58: call 00410A84h ; Set (object)
00864A5D: mov var_000000D0, eax
00864A63: lea eax, var_5C
00864A66: push eax
00864A67: lea eax, var_30
00864A6A: push eax
00864A6B: mov eax, var_000000D0
00864A71: mov eax, [eax]
00864A73: push var_000000D0
00864A79: call [eax+24h]
00864A7C: fclex 
00864A7E: mov var_000000D4, eax
00864A84: cmp var_000000D4, 00000000h
00864A8B: jnl 864AADh
00864A8D: push 00000024h
00864A8F: push 004412BCh
00864A94: push var_000000D0
00864A9A: push var_000000D4
00864AA0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864AA5: mov var_000001E0, eax
00864AAB: jmp 864AB4h
00864AAD: and var_000001E0, 00000000h
00864AB4: mov eax, var_5C
00864AB7: mov var_000000D8, eax
00864ABD: lea eax, var_000000C0
00864AC3: push eax
00864AC4: mov eax, var_000000D8
00864ACA: mov eax, [eax]
00864ACC: push var_000000D8
00864AD2: call [eax+5Ch]
00864AD5: fclex 
00864AD7: mov var_000000DC, eax
00864ADD: cmp var_000000DC, 00000000h
00864AE4: jnl 864B06h
00864AE6: push 0000005Ch
00864AE8: push 004412DCh
00864AED: push var_000000D8
00864AF3: push var_000000DC
00864AF9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864AFE: mov var_000001E4, eax
00864B04: jmp 864B0Dh
00864B06: and var_000001E4, 00000000h
00864B0D: xor eax, eax
00864B0F: cmp word ptr var_000000C0, FFFFh
00864B17: setz al
00864B1A: neg eax
00864B1C: mov var_000000E0, ax
00864B23: lea eax, var_5C
00864B26: push eax
00864B27: lea eax, var_58
00864B2A: push eax
00864B2B: lea eax, var_54
00864B2E: push eax
00864B2F: push 00000003h
00864B31: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00864B36: add esp, 00000010h
00864B39: lea ecx, var_78
00864B3C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00864B41: movsx eax, word ptr var_000000E0
00864B48: test eax, eax
00864B4A: jz 0086506Ch
00864B50: mov var_04, 0000001Ah
00864B57: push 004412BCh
00864B5C: push 00000000h
00864B5E: push 00000007h
00864B60: mov eax, [ebp+08h]
00864B63: mov eax, [eax]
00864B65: push [ebp+08h]
00864B68: call [eax+0000030Ch]
00864B6E: push eax
00864B6F: lea eax, var_54
00864B72: push eax
00864B73: call 00410A84h ; Set (object)
00864B78: push eax
00864B79: lea eax, var_78
00864B7C: push eax
00864B7D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00864B82: add esp, 00000010h
00864B85: push eax
00864B86: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00864B8B: push eax
00864B8C: lea eax, var_58
00864B8F: push eax
00864B90: call 00410A84h ; Set (object)
00864B95: mov var_000000D0, eax
00864B9B: lea eax, var_5C
00864B9E: push eax
00864B9F: lea eax, var_30
00864BA2: push eax
00864BA3: mov eax, var_000000D0
00864BA9: mov eax, [eax]
00864BAB: push var_000000D0
00864BB1: call [eax+24h]
00864BB4: fclex 
00864BB6: mov var_000000D4, eax
00864BBC: cmp var_000000D4, 00000000h
00864BC3: jnl 864BE5h
00864BC5: push 00000024h
00864BC7: push 004412BCh
00864BCC: push var_000000D0
00864BD2: push var_000000D4
00864BD8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864BDD: mov var_000001E8, eax
00864BE3: jmp 864BECh
00864BE5: and var_000001E8, 00000000h
00864BEC: mov eax, var_5C
00864BEF: mov var_000000D8, eax
00864BF5: lea eax, var_40
00864BF8: push eax
00864BF9: mov eax, var_000000D8
00864BFF: mov eax, [eax]
00864C01: push var_000000D8
00864C07: call [eax+24h]
00864C0A: fclex 
00864C0C: mov var_000000DC, eax
00864C12: cmp var_000000DC, 00000000h
00864C19: jnl 864C3Bh
00864C1B: push 00000024h
00864C1D: push 004412DCh
00864C22: push var_000000D8
00864C28: push var_000000DC
00864C2E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864C33: mov var_000001EC, eax
00864C39: jmp 864C42h
00864C3B: and var_000001EC, 00000000h
00864C42: push 004412BCh
00864C47: push 00000000h
00864C49: push 00000007h
00864C4B: mov eax, [ebp+08h]
00864C4E: mov eax, [eax]
00864C50: push [ebp+08h]
00864C53: call [eax+0000030Ch]
00864C59: push eax
00864C5A: lea eax, var_60
00864C5D: push eax
00864C5E: call 00410A84h ; Set (object)
00864C63: push eax
00864C64: lea eax, var_00000088
00864C6A: push eax
00864C6B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00864C70: add esp, 00000010h
00864C73: push eax
00864C74: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00864C79: push eax
00864C7A: lea eax, var_64
00864C7D: push eax
00864C7E: call 00410A84h ; Set (object)
00864C83: mov var_000000E0, eax
00864C89: lea eax, var_68
00864C8C: push eax
00864C8D: lea eax, var_30
00864C90: push eax
00864C91: mov eax, var_000000E0
00864C97: mov eax, [eax]
00864C99: push var_000000E0
00864C9F: call [eax+24h]
00864CA2: fclex 
00864CA4: mov var_000000E4, eax
00864CAA: cmp var_000000E4, 00000000h
00864CB1: jnl 864CD3h
00864CB3: push 00000024h
00864CB5: push 004412BCh
00864CBA: push var_000000E0
00864CC0: push var_000000E4
00864CC6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864CCB: mov var_000001F0, eax
00864CD1: jmp 864CDAh
00864CD3: and var_000001F0, 00000000h
00864CDA: mov eax, var_68
00864CDD: mov var_000000E8, eax
00864CE3: lea eax, var_44
00864CE6: push eax
00864CE7: push 00000001h
00864CE9: mov eax, var_000000E8
00864CEF: mov eax, [eax]
00864CF1: push var_000000E8
00864CF7: call [eax+00000084h]
00864CFD: fclex 
00864CFF: mov var_000000EC, eax
00864D05: cmp var_000000EC, 00000000h
00864D0C: jnl 864D31h
00864D0E: push 00000084h
00864D13: push 004412DCh
00864D18: push var_000000E8
00864D1E: push var_000000EC
00864D24: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864D29: mov var_000001F4, eax
00864D2F: jmp 864D38h
00864D31: and var_000001F4, 00000000h
00864D38: push var_40
00864D3B: push 00000000h
00864D3D: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00864D42: mov esi, eax
00864D44: neg esi
00864D46: sbb esi, esi
00864D48: inc esi
00864D49: neg esi
00864D4B: push var_44
00864D4E: push 00000000h
00864D50: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00864D55: neg eax
00864D57: sbb eax, eax
00864D59: inc eax
00864D5A: neg eax
00864D5C: and si, ax
00864D5F: mov var_000000F0, si
00864D66: lea eax, var_44
00864D69: push eax
00864D6A: lea eax, var_40
00864D6D: push eax
00864D6E: push 00000002h
00864D70: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00864D75: add esp, 0000000Ch
00864D78: lea eax, var_68
00864D7B: push eax
00864D7C: lea eax, var_64
00864D7F: push eax
00864D80: lea eax, var_60
00864D83: push eax
00864D84: lea eax, var_5C
00864D87: push eax
00864D88: lea eax, var_58
00864D8B: push eax
00864D8C: lea eax, var_54
00864D8F: push eax
00864D90: push 00000006h
00864D92: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00864D97: add esp, 0000001Ch
00864D9A: lea eax, var_00000088
00864DA0: push eax
00864DA1: lea eax, var_78
00864DA4: push eax
00864DA5: push 00000002h
00864DA7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00864DAC: add esp, 0000000Ch
00864DAF: movsx eax, word ptr var_000000F0
00864DB6: test eax, eax
00864DB8: jz 864DDDh
00864DBA: mov var_04, 0000001Bh
00864DC1: push var_38
00864DC4: push 00441264h ; vbCrLf
00864DC9: call 00410A18h ; &
00864DCE: mov edx, eax
00864DD0: lea ecx, var_38
00864DD3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00864DD8: jmp 0086506Ch
00864DDD: mov var_04, 0000001Dh
00864DE4: push 004412BCh
00864DE9: push 00000000h
00864DEB: push 00000007h
00864DED: mov eax, [ebp+08h]
00864DF0: mov eax, [eax]
00864DF2: push [ebp+08h]
00864DF5: call [eax+0000030Ch]
00864DFB: push eax
00864DFC: lea eax, var_54
00864DFF: push eax
00864E00: call 00410A84h ; Set (object)
00864E05: push eax
00864E06: lea eax, var_78
00864E09: push eax
00864E0A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00864E0F: add esp, 00000010h
00864E12: push eax
00864E13: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00864E18: push eax
00864E19: lea eax, var_58
00864E1C: push eax
00864E1D: call 00410A84h ; Set (object)
00864E22: mov var_000000D0, eax
00864E28: lea eax, var_5C
00864E2B: push eax
00864E2C: lea eax, var_30
00864E2F: push eax
00864E30: mov eax, var_000000D0
00864E36: mov eax, [eax]
00864E38: push var_000000D0
00864E3E: call [eax+24h]
00864E41: fclex 
00864E43: mov var_000000D4, eax
00864E49: cmp var_000000D4, 00000000h
00864E50: jnl 864E72h
00864E52: push 00000024h
00864E54: push 004412BCh
00864E59: push var_000000D0
00864E5F: push var_000000D4
00864E65: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864E6A: mov var_000001F8, eax
00864E70: jmp 864E79h
00864E72: and var_000001F8, 00000000h
00864E79: mov eax, var_5C
00864E7C: mov var_000000D8, eax
00864E82: lea eax, var_40
00864E85: push eax
00864E86: mov eax, var_000000D8
00864E8C: mov eax, [eax]
00864E8E: push var_000000D8
00864E94: call [eax+24h]
00864E97: fclex 
00864E99: mov var_000000DC, eax
00864E9F: cmp var_000000DC, 00000000h
00864EA6: jnl 864EC8h
00864EA8: push 00000024h
00864EAA: push 004412DCh
00864EAF: push var_000000D8
00864EB5: push var_000000DC
00864EBB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864EC0: mov var_000001FC, eax
00864EC6: jmp 864ECFh
00864EC8: and var_000001FC, 00000000h
00864ECF: push 004412BCh
00864ED4: push 00000000h
00864ED6: push 00000007h
00864ED8: mov eax, [ebp+08h]
00864EDB: mov eax, [eax]
00864EDD: push [ebp+08h]
00864EE0: call [eax+0000030Ch]
00864EE6: push eax
00864EE7: lea eax, var_60
00864EEA: push eax
00864EEB: call 00410A84h ; Set (object)
00864EF0: push eax
00864EF1: lea eax, var_00000088
00864EF7: push eax
00864EF8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00864EFD: add esp, 00000010h
00864F00: push eax
00864F01: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00864F06: push eax
00864F07: lea eax, var_64
00864F0A: push eax
00864F0B: call 00410A84h ; Set (object)
00864F10: mov var_000000E0, eax
00864F16: lea eax, var_68
00864F19: push eax
00864F1A: lea eax, var_30
00864F1D: push eax
00864F1E: mov eax, var_000000E0
00864F24: mov eax, [eax]
00864F26: push var_000000E0
00864F2C: call [eax+24h]
00864F2F: fclex 
00864F31: mov var_000000E4, eax
00864F37: cmp var_000000E4, 00000000h
00864F3E: jnl 864F60h
00864F40: push 00000024h
00864F42: push 004412BCh
00864F47: push var_000000E0
00864F4D: push var_000000E4
00864F53: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864F58: mov var_00000200, eax
00864F5E: jmp 864F67h
00864F60: and var_00000200, 00000000h
00864F67: mov eax, var_68
00864F6A: mov var_000000E8, eax
00864F70: lea eax, var_48
00864F73: push eax
00864F74: push 00000001h
00864F76: mov eax, var_000000E8
00864F7C: mov eax, [eax]
00864F7E: push var_000000E8
00864F84: call [eax+00000084h]
00864F8A: fclex 
00864F8C: mov var_000000EC, eax
00864F92: cmp var_000000EC, 00000000h
00864F99: jnl 864FBEh
00864F9B: push 00000084h
00864FA0: push 004412DCh
00864FA5: push var_000000E8
00864FAB: push var_000000EC
00864FB1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00864FB6: mov var_00000204, eax
00864FBC: jmp 864FC5h
00864FBE: and var_00000204, 00000000h
00864FC5: push var_38
00864FC8: push var_40
00864FCB: call 00410A18h ; &
00864FD0: mov edx, eax
00864FD2: lea ecx, var_44
00864FD5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00864FDA: push eax
00864FDB: push 00449920h
00864FE0: call 00410A18h ; &
00864FE5: mov edx, eax
00864FE7: lea ecx, var_4C
00864FEA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00864FEF: push eax
00864FF0: push var_48
00864FF3: call 00410A18h ; &
00864FF8: mov edx, eax
00864FFA: lea ecx, var_50
00864FFD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00865002: push eax
00865003: push 00441264h ; vbCrLf
00865008: call 00410A18h ; &
0086500D: mov edx, eax
0086500F: lea ecx, var_38
00865012: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00865017: lea eax, var_50
0086501A: push eax
0086501B: lea eax, var_48
0086501E: push eax
0086501F: lea eax, var_4C
00865022: push eax
00865023: lea eax, var_44
00865026: push eax
00865027: lea eax, var_40
0086502A: push eax
0086502B: push 00000005h
0086502D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00865032: add esp, 00000018h
00865035: lea eax, var_68
00865038: push eax
00865039: lea eax, var_64
0086503C: push eax
0086503D: lea eax, var_60
00865040: push eax
00865041: lea eax, var_5C
00865044: push eax
00865045: lea eax, var_58
00865048: push eax
00865049: lea eax, var_54
0086504C: push eax
0086504D: push 00000006h
0086504F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00865054: add esp, 0000001Ch
00865057: lea eax, var_00000088
0086505D: push eax
0086505E: lea eax, var_78
00865061: push eax
00865062: push 00000002h
00865064: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00865069: add esp, 0000000Ch
0086506C: mov var_04, 00000020h
00865073: lea eax, var_00000150
00865079: push eax
0086507A: lea eax, var_00000140
00865080: push eax
00865081: lea eax, var_30
00865084: push eax
00865085: call 00410A36h ; Next
0086508A: mov var_00000174, eax
00865090: cmp var_00000174, 00000000h
00865097: jnz 00864A18h
0086509D: mov var_04, 00000021h
008650A4: mov var_70, 80020004h
008650AB: mov var_78, 0000000Ah
008650B2: lea eax, var_78
008650B5: push eax
008650B6: call 004108C2h ; FreeFile
008650BB: movsx eax, ax
008650BE: mov var_34, eax
008650C1: lea ecx, var_78
008650C4: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008650C9: mov var_04, 00000022h
008650D0: push var_3C
008650D3: mov ecx, var_34
008650D6: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008650DB: push eax
008650DC: push FFFFFFFFh
008650DE: push 00000220h
008650E3: call 004108B6h ; Open #
008650E8: mov var_04, 00000023h
008650EF: mov ecx, var_34
008650F2: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008650F7: push eax
008650F8: lea eax, var_38
008650FB: push eax
008650FC: push 00000000h
008650FE: call 0041089Eh ; Put #
00865103: mov var_04, 00000024h
0086510A: mov ecx, var_34
0086510D: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00865112: push eax
00865113: call 00410898h ; Close #arg_1
00865118: mov var_10, 00000000h
0086511F: wait 
00865120: push 008651D8h
00865125: jmp 86518Bh
00865127: lea eax, var_50
0086512A: push eax
0086512B: lea eax, var_4C
0086512E: push eax
0086512F: lea eax, var_48
00865132: push eax
00865133: lea eax, var_44
00865136: push eax
00865137: lea eax, var_40
0086513A: push eax
0086513B: push 00000005h
0086513D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00865142: add esp, 00000018h
00865145: lea eax, var_68
00865148: push eax
00865149: lea eax, var_64
0086514C: push eax
0086514D: lea eax, var_60
00865150: push eax
00865151: lea eax, var_5C
00865154: push eax
00865155: lea eax, var_58
00865158: push eax
00865159: lea eax, var_54
0086515C: push eax
0086515D: push 00000006h
0086515F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00865164: add esp, 0000001Ch
00865167: lea eax, var_00000088
0086516D: push eax
0086516E: lea eax, var_78
00865171: push eax
00865172: push 00000002h
00865174: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00865179: add esp, 0000000Ch
0086517C: lea eax, var_0000008C
00865182: push eax
00865183: push 00000000h
00865185: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0086518A: ret 
End Sub

Private sub lstInfo__863811
00863811: push ebp
00863812: mov ebp, esp
00863814: sub esp, 0000000Ch
00863817: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0086381C: mov eax, fs:[00h]
00863822: push eax
00863823: mov fs:[00000000h], esp
0086382A: push 00000008h
0086382C: pop eax
0086382D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00863832: push ebx
00863833: push esi
00863834: push edi
00863835: mov var_0C, esp
00863838: mov var_08, 0040CED0h
0086383F: mov eax, [ebp+08h]
00863842: and eax, 00000001h
00863845: mov var_04, eax
00863848: mov eax, [ebp+08h]
0086384B: and al, FEh
0086384D: mov [ebp+08h], eax
00863850: mov eax, [ebp+08h]
00863853: mov eax, [eax]
00863855: push [ebp+08h]
00863858: call [eax+04h]
0086385B: mov eax, [ebp+0Ch]
0086385E: or word ptr [eax], FFFFh
00863862: mov var_04, 00000000h
00863869: mov eax, [ebp+08h]
0086386C: mov eax, [eax]
0086386E: push [ebp+08h]
00863871: call [eax+08h]
00863874: mov eax, var_04
00863877: mov ecx, var_14
0086387A: mov fs:[00000000h], ecx
00863881: pop edi
00863882: pop esi
00863883: pop ebx
00863884: leave 
00863885: retn 0008h
End Sub

Private sub lstInfo__863888
00863888: push ebp
00863889: mov ebp, esp
0086388B: sub esp, 0000000Ch
0086388E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00863893: mov eax, fs:[00h]
00863899: push eax
0086389A: mov fs:[00000000h], esp
008638A1: push 00000054h
008638A3: pop eax
008638A4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008638A9: push ebx
008638AA: push esi
008638AB: push edi
008638AC: mov var_0C, esp
008638AF: mov var_08, 0040CED8h
008638B6: mov eax, [ebp+08h]
008638B9: and eax, 00000001h
008638BC: mov var_04, eax
008638BF: mov eax, [ebp+08h]
008638C2: and al, FEh
008638C4: mov [ebp+08h], eax
008638C7: mov eax, [ebp+08h]
008638CA: mov eax, [eax]
008638CC: push [ebp+08h]
008638CF: call [eax+04h]
008638D2: mov eax, [ebp+0Ch]
008638D5: cmp word ptr [eax], 0002h
008638D9: jnz 008639B3h
008638DF: mov var_50, 80020004h
008638E6: mov var_58, 0000000Ah
008638ED: mov var_40, 80020004h
008638F4: mov var_48, 0000000Ah
008638FB: mov var_30, 80020004h
00863902: mov var_38, 0000000Ah
00863909: mov var_20, 80020004h
00863910: mov var_28, 0000000Ah
00863917: push 00000010h
00863919: pop eax
0086391A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086391F: lea esi, var_58
00863922: mov edi, esp
00863924: movsd 
00863925: movsd 
00863926: movsd 
00863927: movsd 
00863928: push 00000010h
0086392A: pop eax
0086392B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00863930: lea esi, var_48
00863933: mov edi, esp
00863935: movsd 
00863936: movsd 
00863937: movsd 
00863938: movsd 
00863939: push 00000010h
0086393B: pop eax
0086393C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00863941: lea esi, var_38
00863944: mov edi, esp
00863946: movsd 
00863947: movsd 
00863948: movsd 
00863949: movsd 
0086394A: push 00000010h
0086394C: pop eax
0086394D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00863952: lea esi, var_28
00863955: mov edi, esp
00863957: movsd 
00863958: movsd 
00863959: movsd 
0086395A: movsd 
0086395B: mov eax, [ebp+08h]
0086395E: mov eax, [eax]
00863960: push [ebp+08h]
00863963: call [eax+00000300h]
00863969: push eax
0086396A: lea eax, var_18
0086396D: push eax
0086396E: call 00410A84h ; Set (object)
00863973: push eax
00863974: mov eax, [ebp+08h]
00863977: mov eax, [eax]
00863979: push [ebp+08h]
0086397C: call [eax+000002BCh]
00863982: fclex 
00863984: mov var_5C, eax
00863987: cmp var_5C, 00000000h
0086398B: jnl 8639A7h
0086398D: push 000002BCh
00863992: push 00444ABCh
00863997: push [ebp+08h]
0086399A: push var_5C
0086399D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008639A2: mov var_68, eax
008639A5: jmp 8639ABh
008639A7: and var_68, 00000000h
008639AB: lea ecx, var_18
008639AE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008639B3: mov var_04, 00000000h
008639BA: push 008639CBh
008639BF: jmp 8639CAh
008639C1: lea ecx, var_18
008639C4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008639C9: ret 
End Sub

Private sub Form__860586
00860586: push ebp
00860587: mov ebp, esp
00860589: sub esp, 0000000Ch
0086058C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00860591: mov eax, fs:[00h]
00860597: push eax
00860598: mov fs:[00000000h], esp
0086059F: mov eax, 00000184h
008605A4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008605A9: push ebx
008605AA: push esi
008605AB: push edi
008605AC: mov var_0C, esp
008605AF: mov var_08, 0040CE90h
008605B6: mov eax, [ebp+08h]
008605B9: and eax, 00000001h
008605BC: mov var_04, eax
008605BF: mov eax, [ebp+08h]
008605C2: and al, FEh
008605C4: mov [ebp+08h], eax
008605C7: mov eax, [ebp+08h]
008605CA: mov eax, [eax]
008605CC: push [ebp+08h]
008605CF: call [eax+04h]
008605D2: mov eax, [ebp+08h]
008605D5: mov eax, [eax]
008605D7: push [ebp+08h]
008605DA: call [eax+00000308h]
008605E0: mov var_28, eax
008605E3: mov var_30, 00000009h
008605EA: push 00000010h
008605EC: pop eax
008605ED: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008605F2: lea esi, var_30
008605F5: mov edi, esp
008605F7: movsd 
008605F8: movsd 
008605F9: movsd 
008605FA: movsd 
008605FB: push 0000000Eh
008605FD: mov eax, [ebp+08h]
00860600: mov eax, [eax]
00860602: push [ebp+08h]
00860605: call [eax+0000030Ch]
0086060B: push eax
0086060C: lea eax, var_18
0086060F: push eax
00860610: call 00410A84h ; Set (object)
00860615: push eax
00860616: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0086061B: lea ecx, var_18
0086061E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00860623: lea ecx, var_30
00860626: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086062B: push 004412BCh
00860630: push 00000000h
00860632: push 00000007h
00860634: mov eax, [ebp+08h]
00860637: mov eax, [eax]
00860639: push [ebp+08h]
0086063C: call [eax+0000030Ch]
00860642: push eax
00860643: lea eax, var_18
00860646: push eax
00860647: call 00410A84h ; Set (object)
0086064C: push eax
0086064D: lea eax, var_30
00860650: push eax
00860651: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00860656: add esp, 00000010h
00860659: push eax
0086065A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086065F: push eax
00860660: lea eax, var_1C
00860663: push eax
00860664: call 00410A84h ; Set (object)
00860669: mov var_000000D4, eax
0086066F: mov var_78, 00000001h
00860676: mov var_80, 00000002h
0086067D: mov var_68, 80020004h
00860684: mov var_70, 0000000Ah
0086068B: mov var_000000A8, 00456AA0h ; General
00860695: mov var_000000B0, 00000008h
0086069F: lea edx, var_000000B0
008606A5: lea ecx, var_60
008606A8: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008606AD: mov var_00000098, 00455470h ; gen
008606B7: mov var_000000A0, 00000008h
008606C1: lea edx, var_000000A0
008606C7: lea ecx, var_50
008606CA: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008606CF: mov var_38, 80020004h
008606D6: mov var_40, 0000000Ah
008606DD: lea eax, var_20
008606E0: push eax
008606E1: lea eax, var_80
008606E4: push eax
008606E5: lea eax, var_70
008606E8: push eax
008606E9: lea eax, var_60
008606EC: push eax
008606ED: lea eax, var_50
008606F0: push eax
008606F1: lea eax, var_40
008606F4: push eax
008606F5: mov eax, var_000000D4
008606FB: mov eax, [eax]
008606FD: push var_000000D4
00860703: call [eax+28h]
00860706: fclex 
00860708: mov var_000000D8, eax
0086070E: cmp var_000000D8, 00000000h
00860715: jnl 860737h
00860717: push 00000028h
00860719: push 004412BCh
0086071E: push var_000000D4
00860724: push var_000000D8
0086072A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086072F: mov var_000000EC, eax
00860735: jmp 86073Eh
00860737: and var_000000EC, 00000000h
0086073E: lea eax, var_20
00860741: push eax
00860742: lea eax, var_1C
00860745: push eax
00860746: lea eax, var_18
00860749: push eax
0086074A: push 00000003h
0086074C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00860751: add esp, 00000010h
00860754: lea eax, var_80
00860757: push eax
00860758: lea eax, var_70
0086075B: push eax
0086075C: lea eax, var_60
0086075F: push eax
00860760: lea eax, var_50
00860763: push eax
00860764: lea eax, var_40
00860767: push eax
00860768: lea eax, var_30
0086076B: push eax
0086076C: push 00000006h
0086076E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00860773: add esp, 0000001Ch
00860776: push 004412BCh
0086077B: push 00000000h
0086077D: push 00000007h
0086077F: mov eax, [ebp+08h]
00860782: mov eax, [eax]
00860784: push [ebp+08h]
00860787: call [eax+0000030Ch]
0086078D: push eax
0086078E: lea eax, var_18
00860791: push eax
00860792: call 00410A84h ; Set (object)
00860797: push eax
00860798: lea eax, var_30
0086079B: push eax
0086079C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008607A1: add esp, 00000010h
008607A4: push eax
008607A5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008607AA: push eax
008607AB: lea eax, var_1C
008607AE: push eax
008607AF: call 00410A84h ; Set (object)
008607B4: mov var_000000D4, eax
008607BA: mov var_00000088, 00455470h ; gen
008607C4: mov var_00000090, 00000008h
008607CE: lea edx, var_00000090
008607D4: lea ecx, var_40
008607D7: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008607DC: lea eax, var_20
008607DF: push eax
008607E0: lea eax, var_40
008607E3: push eax
008607E4: mov eax, var_000000D4
008607EA: mov eax, [eax]
008607EC: push var_000000D4
008607F2: call [eax+24h]
008607F5: fclex 
008607F7: mov var_000000D8, eax
008607FD: cmp var_000000D8, 00000000h
00860804: jnl 860826h
00860806: push 00000024h
00860808: push 004412BCh
0086080D: push var_000000D4
00860813: push var_000000D8
00860819: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086081E: mov var_000000F0, eax
00860824: jmp 86082Dh
00860826: and var_000000F0, 00000000h
0086082D: mov eax, var_20
00860830: mov var_000000DC, eax
00860836: push 00FF0000h
0086083B: mov eax, var_000000DC
00860841: mov eax, [eax]
00860843: push var_000000DC
00860849: call [eax+000000ACh]
0086084F: fclex 
00860851: mov var_000000E0, eax
00860857: cmp var_000000E0, 00000000h
0086085E: jnl 860883h
00860860: push 000000ACh
00860865: push 004412DCh
0086086A: push var_000000DC
00860870: push var_000000E0
00860876: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086087B: mov var_000000F4, eax
00860881: jmp 86088Ah
00860883: and var_000000F4, 00000000h
0086088A: lea eax, var_20
0086088D: push eax
0086088E: lea eax, var_1C
00860891: push eax
00860892: lea eax, var_18
00860895: push eax
00860896: push 00000003h
00860898: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086089D: add esp, 00000010h
008608A0: lea eax, var_40
008608A3: push eax
008608A4: lea eax, var_30
008608A7: push eax
008608A8: push 00000002h
008608AA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008608AF: add esp, 0000000Ch
008608B2: push 004412BCh
008608B7: push 00000000h
008608B9: push 00000007h
008608BB: mov eax, [ebp+08h]
008608BE: mov eax, [eax]
008608C0: push [ebp+08h]
008608C3: call [eax+0000030Ch]
008608C9: push eax
008608CA: lea eax, var_18
008608CD: push eax
008608CE: call 00410A84h ; Set (object)
008608D3: push eax
008608D4: lea eax, var_30
008608D7: push eax
008608D8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008608DD: add esp, 00000010h
008608E0: push eax
008608E1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008608E6: push eax
008608E7: lea eax, var_1C
008608EA: push eax
008608EB: call 00410A84h ; Set (object)
008608F0: mov var_000000D4, eax
008608F6: mov var_00000088, 00455470h ; gen
00860900: mov var_00000090, 00000008h
0086090A: lea edx, var_00000090
00860910: lea ecx, var_40
00860913: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00860918: lea eax, var_20
0086091B: push eax
0086091C: lea eax, var_40
0086091F: push eax
00860920: mov eax, var_000000D4
00860926: mov eax, [eax]
00860928: push var_000000D4
0086092E: call [eax+24h]
00860931: fclex 
00860933: mov var_000000D8, eax
00860939: cmp var_000000D8, 00000000h
00860940: jnl 860962h
00860942: push 00000024h
00860944: push 004412BCh
00860949: push var_000000D4
0086094F: push var_000000D8
00860955: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086095A: mov var_000000F8, eax
00860960: jmp 860969h
00860962: and var_000000F8, 00000000h
00860969: mov eax, var_20
0086096C: mov var_000000DC, eax
00860972: push FFFFFFFFh
00860974: mov eax, var_000000DC
0086097A: mov eax, [eax]
0086097C: push var_000000DC
00860982: call [eax+000000BCh]
00860988: fclex 
0086098A: mov var_000000E0, eax
00860990: cmp var_000000E0, 00000000h
00860997: jnl 8609BCh
00860999: push 000000BCh
0086099E: push 004412DCh
008609A3: push var_000000DC
008609A9: push var_000000E0
008609AF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008609B4: mov var_000000FC, eax
008609BA: jmp 8609C3h
008609BC: and var_000000FC, 00000000h
008609C3: lea eax, var_20
008609C6: push eax
008609C7: lea eax, var_1C
008609CA: push eax
008609CB: lea eax, var_18
008609CE: push eax
008609CF: push 00000003h
008609D1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008609D6: add esp, 00000010h
008609D9: lea eax, var_40
008609DC: push eax
008609DD: lea eax, var_30
008609E0: push eax
008609E1: push 00000002h
008609E3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008609E8: add esp, 0000000Ch
008609EB: push 004412BCh
008609F0: push 00000000h
008609F2: push 00000007h
008609F4: mov eax, [ebp+08h]
008609F7: mov eax, [eax]
008609F9: push [ebp+08h]
008609FC: call [eax+0000030Ch]
00860A02: push eax
00860A03: lea eax, var_18
00860A06: push eax
00860A07: call 00410A84h ; Set (object)
00860A0C: push eax
00860A0D: lea eax, var_30
00860A10: push eax
00860A11: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00860A16: add esp, 00000010h
00860A19: push eax
00860A1A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00860A1F: push eax
00860A20: lea eax, var_1C
00860A23: push eax
00860A24: call 00410A84h ; Set (object)
00860A29: mov var_000000D4, eax
00860A2F: mov var_00000088, 00455470h ; gen
00860A39: mov var_00000090, 00000008h
00860A43: lea edx, var_00000090
00860A49: lea ecx, var_40
00860A4C: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00860A51: lea eax, var_20
00860A54: push eax
00860A55: lea eax, var_40
00860A58: push eax
00860A59: mov eax, var_000000D4
00860A5F: mov eax, [eax]
00860A61: push var_000000D4
00860A67: call [eax+24h]
00860A6A: fclex 
00860A6C: mov var_000000D8, eax
00860A72: cmp var_000000D8, 00000000h
00860A79: jnl 860A9Bh
00860A7B: push 00000024h
00860A7D: push 004412BCh
00860A82: push var_000000D4
00860A88: push var_000000D8
00860A8E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00860A93: mov var_00000100, eax
00860A99: jmp 860AA2h
00860A9B: and var_00000100, 00000000h
00860AA2: mov eax, var_20
00860AA5: mov var_000000DC, eax
00860AAB: push 00000000h
00860AAD: push 00000001h
00860AAF: mov eax, var_000000DC
00860AB5: mov eax, [eax]
00860AB7: push var_000000DC
00860ABD: call [eax+00000088h]
00860AC3: fclex 
00860AC5: mov var_000000E0, eax
00860ACB: cmp var_000000E0, 00000000h
00860AD2: jnl 860AF7h
00860AD4: push 00000088h
00860AD9: push 004412DCh
00860ADE: push var_000000DC
00860AE4: push var_000000E0
00860AEA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00860AEF: mov var_00000104, eax
00860AF5: jmp 860AFEh
00860AF7: and var_00000104, 00000000h
00860AFE: lea eax, var_20
00860B01: push eax
00860B02: lea eax, var_1C
00860B05: push eax
00860B06: lea eax, var_18
00860B09: push eax
00860B0A: push 00000003h
00860B0C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00860B11: add esp, 00000010h
00860B14: lea eax, var_40
00860B17: push eax
00860B18: lea eax, var_30
00860B1B: push eax
00860B1C: push 00000002h
00860B1E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00860B23: add esp, 0000000Ch
00860B26: push 004412BCh
00860B2B: push 00000000h
00860B2D: push 00000007h
00860B2F: mov eax, [ebp+08h]
00860B32: mov eax, [eax]
00860B34: push [ebp+08h]
00860B37: call [eax+0000030Ch]
00860B3D: push eax
00860B3E: lea eax, var_18
00860B41: push eax
00860B42: call 00410A84h ; Set (object)
00860B47: push eax
00860B48: lea eax, var_30
00860B4B: push eax
00860B4C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00860B51: add esp, 00000010h
00860B54: push eax
00860B55: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00860B5A: push eax
00860B5B: lea eax, var_1C
00860B5E: push eax
00860B5F: call 00410A84h ; Set (object)
00860B64: mov var_000000D4, eax
00860B6A: mov var_78, 80020004h
00860B71: mov var_80, 0000000Ah
00860B78: mov var_68, 80020004h
00860B7F: mov var_70, 0000000Ah
00860B86: mov var_000000A8, 00446714h ; ID
00860B90: mov var_000000B0, 00000008h
00860B9A: lea edx, var_000000B0
00860BA0: lea ecx, var_60
00860BA3: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00860BA8: mov var_00000098, 00456AB4h ; id
00860BB2: mov var_000000A0, 00000008h
00860BBC: lea edx, var_000000A0
00860BC2: lea ecx, var_50
00860BC5: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00860BCA: mov var_38, 80020004h
00860BD1: mov var_40, 0000000Ah
00860BD8: lea eax, var_20
00860BDB: push eax
00860BDC: lea eax, var_80
00860BDF: push eax
00860BE0: lea eax, var_70
00860BE3: push eax
00860BE4: lea eax, var_60
00860BE7: push eax
00860BE8: lea eax, var_50
00860BEB: push eax
00860BEC: lea eax, var_40
00860BEF: push eax
00860BF0: mov eax, var_000000D4
00860BF6: mov eax, [eax]
00860BF8: push var_000000D4
00860BFE: call [eax+28h]
00860C01: fclex 
00860C03: mov var_000000D8, eax
00860C09: cmp var_000000D8, 00000000h
00860C10: jnl 860C32h
00860C12: push 00000028h
00860C14: push 004412BCh
00860C19: push var_000000D4
00860C1F: push var_000000D8
00860C25: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00860C2A: mov var_00000108, eax
00860C30: jmp 860C39h
00860C32: and var_00000108, 00000000h
00860C39: lea eax, var_20
00860C3C: push eax
00860C3D: lea eax, var_1C
00860C40: push eax
00860C41: lea eax, var_18
00860C44: push eax
00860C45: push 00000003h
00860C47: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00860C4C: add esp, 00000010h
00860C4F: lea eax, var_80
00860C52: push eax
00860C53: lea eax, var_70
00860C56: push eax
00860C57: lea eax, var_60
00860C5A: push eax
00860C5B: lea eax, var_50
00860C5E: push eax
00860C5F: lea eax, var_40
00860C62: push eax
00860C63: lea eax, var_30
00860C66: push eax
00860C67: push 00000006h
00860C69: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00860C6E: add esp, 0000001Ch
00860C71: push 004412BCh
00860C76: push 00000000h
00860C78: push 00000007h
00860C7A: mov eax, [ebp+08h]
00860C7D: mov eax, [eax]
00860C7F: push [ebp+08h]
00860C82: call [eax+0000030Ch]
00860C88: push eax
00860C89: lea eax, var_18
00860C8C: push eax
00860C8D: call 00410A84h ; Set (object)
00860C92: push eax
00860C93: lea eax, var_30
00860C96: push eax
00860C97: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00860C9C: add esp, 00000010h
00860C9F: push eax
00860CA0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00860CA5: push eax
00860CA6: lea eax, var_1C
00860CA9: push eax
00860CAA: call 00410A84h ; Set (object)
00860CAF: mov var_000000D4, eax
00860CB5: mov var_78, 80020004h
00860CBC: mov var_80, 0000000Ah
00860CC3: mov var_68, 80020004h
00860CCA: mov var_70, 0000000Ah
00860CD1: mov var_000000A8, 004467BCh ; Version
00860CDB: mov var_000000B0, 00000008h
00860CE5: lea edx, var_000000B0
00860CEB: lea ecx, var_60
00860CEE: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00860CF3: mov var_00000098, 00456AC0h ; version
00860CFD: mov var_000000A0, 00000008h
00860D07: lea edx, var_000000A0
00860D0D: lea ecx, var_50
00860D10: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00860D15: mov var_38, 80020004h
00860D1C: mov var_40, 0000000Ah
00860D23: lea eax, var_20
00860D26: push eax
00860D27: lea eax, var_80
00860D2A: push eax
00860D2B: lea eax, var_70
00860D2E: push eax
00860D2F: lea eax, var_60
00860D32: push eax
00860D33: lea eax, var_50
00860D36: push eax
00860D37: lea eax, var_40
00860D3A: push eax
00860D3B: mov eax, var_000000D4
00860D41: mov eax, [eax]
00860D43: push var_000000D4
00860D49: call [eax+28h]
00860D4C: fclex 
00860D4E: mov var_000000D8, eax
00860D54: cmp var_000000D8, 00000000h
00860D5B: jnl 860D7Dh
00860D5D: push 00000028h
00860D5F: push 004412BCh
00860D64: push var_000000D4
00860D6A: push var_000000D8
00860D70: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00860D75: mov var_0000010C, eax
00860D7B: jmp 860D84h
00860D7D: and var_0000010C, 00000000h
00860D84: lea eax, var_20
00860D87: push eax
00860D88: lea eax, var_1C
00860D8B: push eax
00860D8C: lea eax, var_18
00860D8F: push eax
00860D90: push 00000003h
00860D92: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00860D97: add esp, 00000010h
00860D9A: lea eax, var_80
00860D9D: push eax
00860D9E: lea eax, var_70
00860DA1: push eax
00860DA2: lea eax, var_60
00860DA5: push eax
00860DA6: lea eax, var_50
00860DA9: push eax
00860DAA: lea eax, var_40
00860DAD: push eax
00860DAE: lea eax, var_30
00860DB1: push eax
00860DB2: push 00000006h
00860DB4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00860DB9: add esp, 0000001Ch
00860DBC: push 004412BCh
00860DC1: push 00000000h
00860DC3: push 00000007h
00860DC5: mov eax, [ebp+08h]
00860DC8: mov eax, [eax]
00860DCA: push [ebp+08h]
00860DCD: call [eax+0000030Ch]
00860DD3: push eax
00860DD4: lea eax, var_18
00860DD7: push eax
00860DD8: call 00410A84h ; Set (object)
00860DDD: push eax
00860DDE: lea eax, var_30
00860DE1: push eax
00860DE2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00860DE7: add esp, 00000010h
00860DEA: push eax
00860DEB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00860DF0: push eax
00860DF1: lea eax, var_1C
00860DF4: push eax
00860DF5: call 00410A84h ; Set (object)
00860DFA: mov var_000000D4, eax
00860E00: mov var_78, 80020004h
00860E07: mov var_80, 0000000Ah
00860E0E: mov var_68, 80020004h
00860E15: mov var_70, 0000000Ah
00860E1C: mov var_000000A8, 00446720h ; WAN
00860E26: mov var_000000B0, 00000008h
00860E30: lea edx, var_000000B0
00860E36: lea ecx, var_60
00860E39: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00860E3E: mov var_00000098, 00456AD4h ; wan
00860E48: mov var_000000A0, 00000008h
00860E52: lea edx, var_000000A0
00860E58: lea ecx, var_50
00860E5B: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00860E60: mov var_38, 80020004h
00860E67: mov var_40, 0000000Ah
00860E6E: lea eax, var_20
00860E71: push eax
00860E72: lea eax, var_80
00860E75: push eax
00860E76: lea eax, var_70
00860E79: push eax
00860E7A: lea eax, var_60
00860E7D: push eax
00860E7E: lea eax, var_50
00860E81: push eax
00860E82: lea eax, var_40
00860E85: push eax
00860E86: mov eax, var_000000D4
00860E8C: mov eax, [eax]
00860E8E: push var_000000D4
00860E94: call [eax+28h]
00860E97: fclex 
00860E99: mov var_000000D8, eax
00860E9F: cmp var_000000D8, 00000000h
00860EA6: jnl 860EC8h
00860EA8: push 00000028h
00860EAA: push 004412BCh
00860EAF: push var_000000D4
00860EB5: push var_000000D8
00860EBB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00860EC0: mov var_00000110, eax
00860EC6: jmp 860ECFh
00860EC8: and var_00000110, 00000000h
00860ECF: lea eax, var_20
00860ED2: push eax
00860ED3: lea eax, var_1C
00860ED6: push eax
00860ED7: lea eax, var_18
00860EDA: push eax
00860EDB: push 00000003h
00860EDD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00860EE2: add esp, 00000010h
00860EE5: lea eax, var_80
00860EE8: push eax
00860EE9: lea eax, var_70
00860EEC: push eax
00860EED: lea eax, var_60
00860EF0: push eax
00860EF1: lea eax, var_50
00860EF4: push eax
00860EF5: lea eax, var_40
00860EF8: push eax
00860EF9: lea eax, var_30
00860EFC: push eax
00860EFD: push 00000006h
00860EFF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00860F04: add esp, 0000001Ch
00860F07: push 004412BCh
00860F0C: push 00000000h
00860F0E: push 00000007h
00860F10: mov eax, [ebp+08h]
00860F13: mov eax, [eax]
00860F15: push [ebp+08h]
00860F18: call [eax+0000030Ch]
00860F1E: push eax
00860F1F: lea eax, var_18
00860F22: push eax
00860F23: call 00410A84h ; Set (object)
00860F28: push eax
00860F29: lea eax, var_30
00860F2C: push eax
00860F2D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00860F32: add esp, 00000010h
00860F35: push eax
00860F36: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00860F3B: push eax
00860F3C: lea eax, var_1C
00860F3F: push eax
00860F40: call 00410A84h ; Set (object)
00860F45: mov var_000000D4, eax
00860F4B: mov var_78, 80020004h
00860F52: mov var_80, 0000000Ah
00860F59: mov var_68, 80020004h
00860F60: mov var_70, 0000000Ah
00860F67: mov var_000000A8, 00456AECh ; LAN IP
00860F71: mov var_000000B0, 00000008h
00860F7B: lea edx, var_000000B0
00860F81: lea ecx, var_60
00860F84: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00860F89: mov var_00000098, 00456AE0h ; lan
00860F93: mov var_000000A0, 00000008h
00860F9D: lea edx, var_000000A0
00860FA3: lea ecx, var_50
00860FA6: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00860FAB: mov var_38, 80020004h
00860FB2: mov var_40, 0000000Ah
00860FB9: lea eax, var_20
00860FBC: push eax
00860FBD: lea eax, var_80
00860FC0: push eax
00860FC1: lea eax, var_70
00860FC4: push eax
00860FC5: lea eax, var_60
00860FC8: push eax
00860FC9: lea eax, var_50
00860FCC: push eax
00860FCD: lea eax, var_40
00860FD0: push eax
00860FD1: mov eax, var_000000D4
00860FD7: mov eax, [eax]
00860FD9: push var_000000D4
00860FDF: call [eax+28h]
00860FE2: fclex 
00860FE4: mov var_000000D8, eax
00860FEA: cmp var_000000D8, 00000000h
00860FF1: jnl 861013h
00860FF3: push 00000028h
00860FF5: push 004412BCh
00860FFA: push var_000000D4
00861000: push var_000000D8
00861006: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086100B: mov var_00000114, eax
00861011: jmp 86101Ah
00861013: and var_00000114, 00000000h
0086101A: lea eax, var_20
0086101D: push eax
0086101E: lea eax, var_1C
00861021: push eax
00861022: lea eax, var_18
00861025: push eax
00861026: push 00000003h
00861028: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086102D: add esp, 00000010h
00861030: lea eax, var_80
00861033: push eax
00861034: lea eax, var_70
00861037: push eax
00861038: lea eax, var_60
0086103B: push eax
0086103C: lea eax, var_50
0086103F: push eax
00861040: lea eax, var_40
00861043: push eax
00861044: lea eax, var_30
00861047: push eax
00861048: push 00000006h
0086104A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086104F: add esp, 0000001Ch
00861052: push 004412BCh
00861057: push 00000000h
00861059: push 00000007h
0086105B: mov eax, [ebp+08h]
0086105E: mov eax, [eax]
00861060: push [ebp+08h]
00861063: call [eax+0000030Ch]
00861069: push eax
0086106A: lea eax, var_18
0086106D: push eax
0086106E: call 00410A84h ; Set (object)
00861073: push eax
00861074: lea eax, var_30
00861077: push eax
00861078: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086107D: add esp, 00000010h
00861080: push eax
00861081: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00861086: push eax
00861087: lea eax, var_1C
0086108A: push eax
0086108B: call 00410A84h ; Set (object)
00861090: mov var_000000D4, eax
00861096: mov var_78, 80020004h
0086109D: mov var_80, 0000000Ah
008610A4: mov var_68, 80020004h
008610AB: mov var_70, 0000000Ah
008610B2: mov var_000000A8, 00441420h ; Port
008610BC: mov var_000000B0, 00000008h
008610C6: lea edx, var_000000B0
008610CC: lea ecx, var_60
008610CF: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008610D4: mov var_00000098, 00456B00h ; comport
008610DE: mov var_000000A0, 00000008h
008610E8: lea edx, var_000000A0
008610EE: lea ecx, var_50
008610F1: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008610F6: mov var_38, 80020004h
008610FD: mov var_40, 0000000Ah
00861104: lea eax, var_20
00861107: push eax
00861108: lea eax, var_80
0086110B: push eax
0086110C: lea eax, var_70
0086110F: push eax
00861110: lea eax, var_60
00861113: push eax
00861114: lea eax, var_50
00861117: push eax
00861118: lea eax, var_40
0086111B: push eax
0086111C: mov eax, var_000000D4
00861122: mov eax, [eax]
00861124: push var_000000D4
0086112A: call [eax+28h]
0086112D: fclex 
0086112F: mov var_000000D8, eax
00861135: cmp var_000000D8, 00000000h
0086113C: jnl 86115Eh
0086113E: push 00000028h
00861140: push 004412BCh
00861145: push var_000000D4
0086114B: push var_000000D8
00861151: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00861156: mov var_00000118, eax
0086115C: jmp 861165h
0086115E: and var_00000118, 00000000h
00861165: lea eax, var_20
00861168: push eax
00861169: lea eax, var_1C
0086116C: push eax
0086116D: lea eax, var_18
00861170: push eax
00861171: push 00000003h
00861173: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00861178: add esp, 00000010h
0086117B: lea eax, var_80
0086117E: push eax
0086117F: lea eax, var_70
00861182: push eax
00861183: lea eax, var_60
00861186: push eax
00861187: lea eax, var_50
0086118A: push eax
0086118B: lea eax, var_40
0086118E: push eax
0086118F: lea eax, var_30
00861192: push eax
00861193: push 00000006h
00861195: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086119A: add esp, 0000001Ch
0086119D: push 004412BCh
008611A2: push 00000000h
008611A4: push 00000007h
008611A6: mov eax, [ebp+08h]
008611A9: mov eax, [eax]
008611AB: push [ebp+08h]
008611AE: call [eax+0000030Ch]
008611B4: push eax
008611B5: lea eax, var_18
008611B8: push eax
008611B9: call 00410A84h ; Set (object)
008611BE: push eax
008611BF: lea eax, var_30
008611C2: push eax
008611C3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008611C8: add esp, 00000010h
008611CB: push eax
008611CC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008611D1: push eax
008611D2: lea eax, var_1C
008611D5: push eax
008611D6: call 00410A84h ; Set (object)
008611DB: mov var_000000D4, eax
008611E1: mov var_78, 80020004h
008611E8: mov var_80, 0000000Ah
008611EF: mov var_68, 80020004h
008611F6: mov var_70, 0000000Ah
008611FD: mov var_000000A8, 00456B28h ; Transfer port
00861207: mov var_000000B0, 00000008h
00861211: lea edx, var_000000B0
00861217: lea ecx, var_60
0086121A: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086121F: mov var_00000098, 00456B14h ; tsfport
00861229: mov var_000000A0, 00000008h
00861233: lea edx, var_000000A0
00861239: lea ecx, var_50
0086123C: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00861241: mov var_38, 80020004h
00861248: mov var_40, 0000000Ah
0086124F: lea eax, var_20
00861252: push eax
00861253: lea eax, var_80
00861256: push eax
00861257: lea eax, var_70
0086125A: push eax
0086125B: lea eax, var_60
0086125E: push eax
0086125F: lea eax, var_50
00861262: push eax
00861263: lea eax, var_40
00861266: push eax
00861267: mov eax, var_000000D4
0086126D: mov eax, [eax]
0086126F: push var_000000D4
00861275: call [eax+28h]
00861278: fclex 
0086127A: mov var_000000D8, eax
00861280: cmp var_000000D8, 00000000h
00861287: jnl 8612A9h
00861289: push 00000028h
0086128B: push 004412BCh
00861290: push var_000000D4
00861296: push var_000000D8
0086129C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008612A1: mov var_0000011C, eax
008612A7: jmp 8612B0h
008612A9: and var_0000011C, 00000000h
008612B0: lea eax, var_20
008612B3: push eax
008612B4: lea eax, var_1C
008612B7: push eax
008612B8: lea eax, var_18
008612BB: push eax
008612BC: push 00000003h
008612BE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008612C3: add esp, 00000010h
008612C6: lea eax, var_80
008612C9: push eax
008612CA: lea eax, var_70
008612CD: push eax
008612CE: lea eax, var_60
008612D1: push eax
008612D2: lea eax, var_50
008612D5: push eax
008612D6: lea eax, var_40
008612D9: push eax
008612DA: lea eax, var_30
008612DD: push eax
008612DE: push 00000006h
008612E0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008612E5: add esp, 0000001Ch
008612E8: push 004412BCh
008612ED: push 00000000h
008612EF: push 00000007h
008612F1: mov eax, [ebp+08h]
008612F4: mov eax, [eax]
008612F6: push [ebp+08h]
008612F9: call [eax+0000030Ch]
008612FF: push eax
00861300: lea eax, var_18
00861303: push eax
00861304: call 00410A84h ; Set (object)
00861309: push eax
0086130A: lea eax, var_30
0086130D: push eax
0086130E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00861313: add esp, 00000010h
00861316: push eax
00861317: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086131C: push eax
0086131D: lea eax, var_1C
00861320: push eax
00861321: call 00410A84h ; Set (object)
00861326: mov var_000000D4, eax
0086132C: mov var_78, 80020004h
00861333: mov var_80, 0000000Ah
0086133A: mov var_68, 80020004h
00861341: mov var_70, 0000000Ah
00861348: mov var_000000A8, 00456B5Ch ; PC Type
00861352: mov var_000000B0, 00000008h
0086135C: lea edx, var_000000B0
00861362: lea ecx, var_60
00861365: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086136A: mov var_00000098, 00456B48h ; pctype
00861374: mov var_000000A0, 00000008h
0086137E: lea edx, var_000000A0
00861384: lea ecx, var_50
00861387: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086138C: mov var_38, 80020004h
00861393: mov var_40, 0000000Ah
0086139A: lea eax, var_20
0086139D: push eax
0086139E: lea eax, var_80
008613A1: push eax
008613A2: lea eax, var_70
008613A5: push eax
008613A6: lea eax, var_60
008613A9: push eax
008613AA: lea eax, var_50
008613AD: push eax
008613AE: lea eax, var_40
008613B1: push eax
008613B2: mov eax, var_000000D4
008613B8: mov eax, [eax]
008613BA: push var_000000D4
008613C0: call [eax+28h]
008613C3: fclex 
008613C5: mov var_000000D8, eax
008613CB: cmp var_000000D8, 00000000h
008613D2: jnl 8613F4h
008613D4: push 00000028h
008613D6: push 004412BCh
008613DB: push var_000000D4
008613E1: push var_000000D8
008613E7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008613EC: mov var_00000120, eax
008613F2: jmp 8613FBh
008613F4: and var_00000120, 00000000h
008613FB: lea eax, var_20
008613FE: push eax
008613FF: lea eax, var_1C
00861402: push eax
00861403: lea eax, var_18
00861406: push eax
00861407: push 00000003h
00861409: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086140E: add esp, 00000010h
00861411: lea eax, var_80
00861414: push eax
00861415: lea eax, var_70
00861418: push eax
00861419: lea eax, var_60
0086141C: push eax
0086141D: lea eax, var_50
00861420: push eax
00861421: lea eax, var_40
00861424: push eax
00861425: lea eax, var_30
00861428: push eax
00861429: push 00000006h
0086142B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00861430: add esp, 0000001Ch
00861433: push 004412BCh
00861438: push 00000000h
0086143A: push 00000007h
0086143C: mov eax, [ebp+08h]
0086143F: mov eax, [eax]
00861441: push [ebp+08h]
00861444: call [eax+0000030Ch]
0086144A: push eax
0086144B: lea eax, var_18
0086144E: push eax
0086144F: call 00410A84h ; Set (object)
00861454: push eax
00861455: lea eax, var_30
00861458: push eax
00861459: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086145E: add esp, 00000010h
00861461: push eax
00861462: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00861467: push eax
00861468: lea eax, var_1C
0086146B: push eax
0086146C: call 00410A84h ; Set (object)
00861471: mov var_000000D4, eax
00861477: mov var_78, 80020004h
0086147E: mov var_80, 0000000Ah
00861485: mov var_68, 80020004h
0086148C: mov var_70, 0000000Ah
00861493: mov var_000000A8, 0044675Ch ; Comp.Name
0086149D: mov var_000000B0, 00000008h
008614A7: lea edx, var_000000B0
008614AD: lea ecx, var_60
008614B0: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008614B5: mov var_00000098, 00456B70h ; compname
008614BF: mov var_000000A0, 00000008h
008614C9: lea edx, var_000000A0
008614CF: lea ecx, var_50
008614D2: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008614D7: mov var_38, 80020004h
008614DE: mov var_40, 0000000Ah
008614E5: lea eax, var_20
008614E8: push eax
008614E9: lea eax, var_80
008614EC: push eax
008614ED: lea eax, var_70
008614F0: push eax
008614F1: lea eax, var_60
008614F4: push eax
008614F5: lea eax, var_50
008614F8: push eax
008614F9: lea eax, var_40
008614FC: push eax
008614FD: mov eax, var_000000D4
00861503: mov eax, [eax]
00861505: push var_000000D4
0086150B: call [eax+28h]
0086150E: fclex 
00861510: mov var_000000D8, eax
00861516: cmp var_000000D8, 00000000h
0086151D: jnl 86153Fh
0086151F: push 00000028h
00861521: push 004412BCh
00861526: push var_000000D4
0086152C: push var_000000D8
00861532: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00861537: mov var_00000124, eax
0086153D: jmp 861546h
0086153F: and var_00000124, 00000000h
00861546: lea eax, var_20
00861549: push eax
0086154A: lea eax, var_1C
0086154D: push eax
0086154E: lea eax, var_18
00861551: push eax
00861552: push 00000003h
00861554: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00861559: add esp, 00000010h
0086155C: lea eax, var_80
0086155F: push eax
00861560: lea eax, var_70
00861563: push eax
00861564: lea eax, var_60
00861567: push eax
00861568: lea eax, var_50
0086156B: push eax
0086156C: lea eax, var_40
0086156F: push eax
00861570: lea eax, var_30
00861573: push eax
00861574: push 00000006h
00861576: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086157B: add esp, 0000001Ch
0086157E: push 004412BCh
00861583: push 00000000h
00861585: push 00000007h
00861587: mov eax, [ebp+08h]
0086158A: mov eax, [eax]
0086158C: push [ebp+08h]
0086158F: call [eax+0000030Ch]
00861595: push eax
00861596: lea eax, var_18
00861599: push eax
0086159A: call 00410A84h ; Set (object)
0086159F: push eax
008615A0: lea eax, var_30
008615A3: push eax
008615A4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008615A9: add esp, 00000010h
008615AC: push eax
008615AD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008615B2: push eax
008615B3: lea eax, var_1C
008615B6: push eax
008615B7: call 00410A84h ; Set (object)
008615BC: mov var_000000D4, eax
008615C2: mov var_78, 80020004h
008615C9: mov var_80, 0000000Ah
008615D0: mov var_68, 80020004h
008615D7: mov var_70, 0000000Ah
008615DE: mov var_000000A8, 00456B88h ; User name
008615E8: mov var_000000B0, 00000008h
008615F2: lea edx, var_000000B0
008615F8: lea ecx, var_60
008615FB: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00861600: mov var_00000098, 0044E398h ; username
0086160A: mov var_000000A0, 00000008h
00861614: lea edx, var_000000A0
0086161A: lea ecx, var_50
0086161D: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00861622: mov var_38, 80020004h
00861629: mov var_40, 0000000Ah
00861630: lea eax, var_20
00861633: push eax
00861634: lea eax, var_80
00861637: push eax
00861638: lea eax, var_70
0086163B: push eax
0086163C: lea eax, var_60
0086163F: push eax
00861640: lea eax, var_50
00861643: push eax
00861644: lea eax, var_40
00861647: push eax
00861648: mov eax, var_000000D4
0086164E: mov eax, [eax]
00861650: push var_000000D4
00861656: call [eax+28h]
00861659: fclex 
0086165B: mov var_000000D8, eax
00861661: cmp var_000000D8, 00000000h
00861668: jnl 86168Ah
0086166A: push 00000028h
0086166C: push 004412BCh
00861671: push var_000000D4
00861677: push var_000000D8
0086167D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00861682: mov var_00000128, eax
00861688: jmp 861691h
0086168A: and var_00000128, 00000000h
00861691: lea eax, var_20
00861694: push eax
00861695: lea eax, var_1C
00861698: push eax
00861699: lea eax, var_18
0086169C: push eax
0086169D: push 00000003h
0086169F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008616A4: add esp, 00000010h
008616A7: lea eax, var_80
008616AA: push eax
008616AB: lea eax, var_70
008616AE: push eax
008616AF: lea eax, var_60
008616B2: push eax
008616B3: lea eax, var_50
008616B6: push eax
008616B7: lea eax, var_40
008616BA: push eax
008616BB: lea eax, var_30
008616BE: push eax
008616BF: push 00000006h
008616C1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008616C6: add esp, 0000001Ch
008616C9: push 004412BCh
008616CE: push 00000000h
008616D0: push 00000007h
008616D2: mov eax, [ebp+08h]
008616D5: mov eax, [eax]
008616D7: push [ebp+08h]
008616DA: call [eax+0000030Ch]
008616E0: push eax
008616E1: lea eax, var_18
008616E4: push eax
008616E5: call 00410A84h ; Set (object)
008616EA: push eax
008616EB: lea eax, var_30
008616EE: push eax
008616EF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008616F4: add esp, 00000010h
008616F7: push eax
008616F8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008616FD: push eax
008616FE: lea eax, var_1C
00861701: push eax
00861702: call 00410A84h ; Set (object)
00861707: mov var_000000D4, eax
0086170D: mov var_78, 80020004h
00861714: mov var_80, 0000000Ah
0086171B: mov var_68, 80020004h
00861722: mov var_70, 0000000Ah
00861729: mov var_000000A8, 00446774h ; Privileges
00861733: mov var_000000B0, 00000008h
0086173D: lea edx, var_000000B0
00861743: lea ecx, var_60
00861746: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086174B: mov var_00000098, 00456BA0h ; privileges
00861755: mov var_000000A0, 00000008h
0086175F: lea edx, var_000000A0
00861765: lea ecx, var_50
00861768: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086176D: mov var_38, 80020004h
00861774: mov var_40, 0000000Ah
0086177B: lea eax, var_20
0086177E: push eax
0086177F: lea eax, var_80
00861782: push eax
00861783: lea eax, var_70
00861786: push eax
00861787: lea eax, var_60
0086178A: push eax
0086178B: lea eax, var_50
0086178E: push eax
0086178F: lea eax, var_40
00861792: push eax
00861793: mov eax, var_000000D4
00861799: mov eax, [eax]
0086179B: push var_000000D4
008617A1: call [eax+28h]
008617A4: fclex 
008617A6: mov var_000000D8, eax
008617AC: cmp var_000000D8, 00000000h
008617B3: jnl 8617D5h
008617B5: push 00000028h
008617B7: push 004412BCh
008617BC: push var_000000D4
008617C2: push var_000000D8
008617C8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008617CD: mov var_0000012C, eax
008617D3: jmp 8617DCh
008617D5: and var_0000012C, 00000000h
008617DC: lea eax, var_20
008617DF: push eax
008617E0: lea eax, var_1C
008617E3: push eax
008617E4: lea eax, var_18
008617E7: push eax
008617E8: push 00000003h
008617EA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008617EF: add esp, 00000010h
008617F2: lea eax, var_80
008617F5: push eax
008617F6: lea eax, var_70
008617F9: push eax
008617FA: lea eax, var_60
008617FD: push eax
008617FE: lea eax, var_50
00861801: push eax
00861802: lea eax, var_40
00861805: push eax
00861806: lea eax, var_30
00861809: push eax
0086180A: push 00000006h
0086180C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00861811: add esp, 0000001Ch
00861814: push 004412BCh
00861819: push 00000000h
0086181B: push 00000007h
0086181D: mov eax, [ebp+08h]
00861820: mov eax, [eax]
00861822: push [ebp+08h]
00861825: call [eax+0000030Ch]
0086182B: push eax
0086182C: lea eax, var_18
0086182F: push eax
00861830: call 00410A84h ; Set (object)
00861835: push eax
00861836: lea eax, var_30
00861839: push eax
0086183A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086183F: add esp, 00000010h
00861842: push eax
00861843: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00861848: push eax
00861849: lea eax, var_1C
0086184C: push eax
0086184D: call 00410A84h ; Set (object)
00861852: mov var_000000D4, eax
00861858: mov var_78, 80020004h
0086185F: mov var_80, 0000000Ah
00861866: mov var_68, 80020004h
0086186D: mov var_70, 0000000Ah
00861874: mov var_000000A8, 00456BC8h ; RAM
0086187E: mov var_000000B0, 00000008h
00861888: lea edx, var_000000B0
0086188E: lea ecx, var_60
00861891: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00861896: mov var_00000098, 00456BBCh ; ram
008618A0: mov var_000000A0, 00000008h
008618AA: lea edx, var_000000A0
008618B0: lea ecx, var_50
008618B3: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008618B8: mov var_38, 80020004h
008618BF: mov var_40, 0000000Ah
008618C6: lea eax, var_20
008618C9: push eax
008618CA: lea eax, var_80
008618CD: push eax
008618CE: lea eax, var_70
008618D1: push eax
008618D2: lea eax, var_60
008618D5: push eax
008618D6: lea eax, var_50
008618D9: push eax
008618DA: lea eax, var_40
008618DD: push eax
008618DE: mov eax, var_000000D4
008618E4: mov eax, [eax]
008618E6: push var_000000D4
008618EC: call [eax+28h]
008618EF: fclex 
008618F1: mov var_000000D8, eax
008618F7: cmp var_000000D8, 00000000h
008618FE: jnl 861920h
00861900: push 00000028h
00861902: push 004412BCh
00861907: push var_000000D4
0086190D: push var_000000D8
00861913: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00861918: mov var_00000130, eax
0086191E: jmp 861927h
00861920: and var_00000130, 00000000h
00861927: lea eax, var_20
0086192A: push eax
0086192B: lea eax, var_1C
0086192E: push eax
0086192F: lea eax, var_18
00861932: push eax
00861933: push 00000003h
00861935: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086193A: add esp, 00000010h
0086193D: lea eax, var_80
00861940: push eax
00861941: lea eax, var_70
00861944: push eax
00861945: lea eax, var_60
00861948: push eax
00861949: lea eax, var_50
0086194C: push eax
0086194D: lea eax, var_40
00861950: push eax
00861951: lea eax, var_30
00861954: push eax
00861955: push 00000006h
00861957: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086195C: add esp, 0000001Ch
0086195F: push 004412BCh
00861964: push 00000000h
00861966: push 00000007h
00861968: mov eax, [ebp+08h]
0086196B: mov eax, [eax]
0086196D: push [ebp+08h]
00861970: call [eax+0000030Ch]
00861976: push eax
00861977: lea eax, var_18
0086197A: push eax
0086197B: call 00410A84h ; Set (object)
00861980: push eax
00861981: lea eax, var_30
00861984: push eax
00861985: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086198A: add esp, 00000010h
0086198D: push eax
0086198E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00861993: push eax
00861994: lea eax, var_1C
00861997: push eax
00861998: call 00410A84h ; Set (object)
0086199D: mov var_000000D4, eax
008619A3: mov var_78, 80020004h
008619AA: mov var_80, 0000000Ah
008619B1: mov var_68, 80020004h
008619B8: mov var_70, 0000000Ah
008619BF: mov var_000000A8, 00456BE0h ; CPU
008619C9: mov var_000000B0, 00000008h
008619D3: lea edx, var_000000B0
008619D9: lea ecx, var_60
008619DC: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008619E1: mov var_00000098, 00456BD4h ; cpu
008619EB: mov var_000000A0, 00000008h
008619F5: lea edx, var_000000A0
008619FB: lea ecx, var_50
008619FE: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00861A03: mov var_38, 80020004h
00861A0A: mov var_40, 0000000Ah
00861A11: lea eax, var_20
00861A14: push eax
00861A15: lea eax, var_80
00861A18: push eax
00861A19: lea eax, var_70
00861A1C: push eax
00861A1D: lea eax, var_60
00861A20: push eax
00861A21: lea eax, var_50
00861A24: push eax
00861A25: lea eax, var_40
00861A28: push eax
00861A29: mov eax, var_000000D4
00861A2F: mov eax, [eax]
00861A31: push var_000000D4
00861A37: call [eax+28h]
00861A3A: fclex 
00861A3C: mov var_000000D8, eax
00861A42: cmp var_000000D8, 00000000h
00861A49: jnl 861A6Bh
00861A4B: push 00000028h
00861A4D: push 004412BCh
00861A52: push var_000000D4
00861A58: push var_000000D8
00861A5E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00861A63: mov var_00000134, eax
00861A69: jmp 861A72h
00861A6B: and var_00000134, 00000000h
00861A72: lea eax, var_20
00861A75: push eax
00861A76: lea eax, var_1C
00861A79: push eax
00861A7A: lea eax, var_18
00861A7D: push eax
00861A7E: push 00000003h
00861A80: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00861A85: add esp, 00000010h
00861A88: lea eax, var_80
00861A8B: push eax
00861A8C: lea eax, var_70
00861A8F: push eax
00861A90: lea eax, var_60
00861A93: push eax
00861A94: lea eax, var_50
00861A97: push eax
00861A98: lea eax, var_40
00861A9B: push eax
00861A9C: lea eax, var_30
00861A9F: push eax
00861AA0: push 00000006h
00861AA2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00861AA7: add esp, 0000001Ch
00861AAA: push 004412BCh
00861AAF: push 00000000h
00861AB1: push 00000007h
00861AB3: mov eax, [ebp+08h]
00861AB6: mov eax, [eax]
00861AB8: push [ebp+08h]
00861ABB: call [eax+0000030Ch]
00861AC1: push eax
00861AC2: lea eax, var_18
00861AC5: push eax
00861AC6: call 00410A84h ; Set (object)
00861ACB: push eax
00861ACC: lea eax, var_30
00861ACF: push eax
00861AD0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00861AD5: add esp, 00000010h
00861AD8: push eax
00861AD9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00861ADE: push eax
00861ADF: lea eax, var_1C
00861AE2: push eax
00861AE3: call 00410A84h ; Set (object)
00861AE8: mov var_000000D4, eax
00861AEE: mov var_78, 80020004h
00861AF5: mov var_80, 0000000Ah
00861AFC: mov var_68, 80020004h
00861B03: mov var_70, 0000000Ah
00861B0A: mov var_000000A8, 00456BF8h ; Hard disk
00861B14: mov var_000000B0, 00000008h
00861B1E: lea edx, var_000000B0
00861B24: lea ecx, var_60
00861B27: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00861B2C: mov var_00000098, 00456BECh ; hdd
00861B36: mov var_000000A0, 00000008h
00861B40: lea edx, var_000000A0
00861B46: lea ecx, var_50
00861B49: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00861B4E: mov var_38, 80020004h
00861B55: mov var_40, 0000000Ah
00861B5C: lea eax, var_20
00861B5F: push eax
00861B60: lea eax, var_80
00861B63: push eax
00861B64: lea eax, var_70
00861B67: push eax
00861B68: lea eax, var_60
00861B6B: push eax
00861B6C: lea eax, var_50
00861B6F: push eax
00861B70: lea eax, var_40
00861B73: push eax
00861B74: mov eax, var_000000D4
00861B7A: mov eax, [eax]
00861B7C: push var_000000D4
00861B82: call [eax+28h]
00861B85: fclex 
00861B87: mov var_000000D8, eax
00861B8D: cmp var_000000D8, 00000000h
00861B94: jnl 861BB6h
00861B96: push 00000028h
00861B98: push 004412BCh
00861B9D: push var_000000D4
00861BA3: push var_000000D8
00861BA9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00861BAE: mov var_00000138, eax
00861BB4: jmp 861BBDh
00861BB6: and var_00000138, 00000000h
00861BBD: lea eax, var_20
00861BC0: push eax
00861BC1: lea eax, var_1C
00861BC4: push eax
00861BC5: lea eax, var_18
00861BC8: push eax
00861BC9: push 00000003h
00861BCB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00861BD0: add esp, 00000010h
00861BD3: lea eax, var_80
00861BD6: push eax
00861BD7: lea eax, var_70
00861BDA: push eax
00861BDB: lea eax, var_60
00861BDE: push eax
00861BDF: lea eax, var_50
00861BE2: push eax
00861BE3: lea eax, var_40
00861BE6: push eax
00861BE7: lea eax, var_30
00861BEA: push eax
00861BEB: push 00000006h
00861BED: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00861BF2: add esp, 0000001Ch
00861BF5: push 004412BCh
00861BFA: push 00000000h
00861BFC: push 00000007h
00861BFE: mov eax, [ebp+08h]
00861C01: mov eax, [eax]
00861C03: push [ebp+08h]
00861C06: call [eax+0000030Ch]
00861C0C: push eax
00861C0D: lea eax, var_18
00861C10: push eax
00861C11: call 00410A84h ; Set (object)
00861C16: push eax
00861C17: lea eax, var_30
00861C1A: push eax
00861C1B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00861C20: add esp, 00000010h
00861C23: push eax
00861C24: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00861C29: push eax
00861C2A: lea eax, var_1C
00861C2D: push eax
00861C2E: call 00410A84h ; Set (object)
00861C33: mov var_000000D4, eax
00861C39: mov var_78, 80020004h
00861C40: mov var_80, 0000000Ah
00861C47: mov var_68, 80020004h
00861C4E: mov var_70, 0000000Ah
00861C55: mov var_000000A8, 00456C1Ch ; Operating system
00861C5F: mov var_000000B0, 00000008h
00861C69: lea edx, var_000000B0
00861C6F: lea ecx, var_60
00861C72: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00861C77: mov var_00000098, 00456C10h ; os
00861C81: mov var_000000A0, 00000008h
00861C8B: lea edx, var_000000A0
00861C91: lea ecx, var_50
00861C94: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00861C99: mov var_38, 80020004h
00861CA0: mov var_40, 0000000Ah
00861CA7: lea eax, var_20
00861CAA: push eax
00861CAB: lea eax, var_80
00861CAE: push eax
00861CAF: lea eax, var_70
00861CB2: push eax
00861CB3: lea eax, var_60
00861CB6: push eax
00861CB7: lea eax, var_50
00861CBA: push eax
00861CBB: lea eax, var_40
00861CBE: push eax
00861CBF: mov eax, var_000000D4
00861CC5: mov eax, [eax]
00861CC7: push var_000000D4
00861CCD: call [eax+28h]
00861CD0: fclex 
00861CD2: mov var_000000D8, eax
00861CD8: cmp var_000000D8, 00000000h
00861CDF: jnl 861D01h
00861CE1: push 00000028h
00861CE3: push 004412BCh
00861CE8: push var_000000D4
00861CEE: push var_000000D8
00861CF4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00861CF9: mov var_0000013C, eax
00861CFF: jmp 861D08h
00861D01: and var_0000013C, 00000000h
00861D08: lea eax, var_20
00861D0B: push eax
00861D0C: lea eax, var_1C
00861D0F: push eax
00861D10: lea eax, var_18
00861D13: push eax
00861D14: push 00000003h
00861D16: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00861D1B: add esp, 00000010h
00861D1E: lea eax, var_80
00861D21: push eax
00861D22: lea eax, var_70
00861D25: push eax
00861D26: lea eax, var_60
00861D29: push eax
00861D2A: lea eax, var_50
00861D2D: push eax
00861D2E: lea eax, var_40
00861D31: push eax
00861D32: lea eax, var_30
00861D35: push eax
00861D36: push 00000006h
00861D38: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00861D3D: add esp, 0000001Ch
00861D40: push 004412BCh
00861D45: push 00000000h
00861D47: push 00000007h
00861D49: mov eax, [ebp+08h]
00861D4C: mov eax, [eax]
00861D4E: push [ebp+08h]
00861D51: call [eax+0000030Ch]
00861D57: push eax
00861D58: lea eax, var_18
00861D5B: push eax
00861D5C: call 00410A84h ; Set (object)
00861D61: push eax
00861D62: lea eax, var_30
00861D65: push eax
00861D66: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00861D6B: add esp, 00000010h
00861D6E: push eax
00861D6F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00861D74: push eax
00861D75: lea eax, var_1C
00861D78: push eax
00861D79: call 00410A84h ; Set (object)
00861D7E: mov var_000000D4, eax
00861D84: mov var_78, 80020004h
00861D8B: mov var_80, 0000000Ah
00861D92: mov var_68, 80020004h
00861D99: mov var_70, 0000000Ah
00861DA0: mov var_000000A8, 004463F0h ; Uptime
00861DAA: mov var_000000B0, 00000008h
00861DB4: lea edx, var_000000B0
00861DBA: lea ecx, var_60
00861DBD: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00861DC2: mov var_00000098, 00456C48h ; uptime
00861DCC: mov var_000000A0, 00000008h
00861DD6: lea edx, var_000000A0
00861DDC: lea ecx, var_50
00861DDF: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00861DE4: mov var_38, 80020004h
00861DEB: mov var_40, 0000000Ah
00861DF2: lea eax, var_20
00861DF5: push eax
00861DF6: lea eax, var_80
00861DF9: push eax
00861DFA: lea eax, var_70
00861DFD: push eax
00861DFE: lea eax, var_60
00861E01: push eax
00861E02: lea eax, var_50
00861E05: push eax
00861E06: lea eax, var_40
00861E09: push eax
00861E0A: mov eax, var_000000D4
00861E10: mov eax, [eax]
00861E12: push var_000000D4
00861E18: call [eax+28h]
00861E1B: fclex 
00861E1D: mov var_000000D8, eax
00861E23: cmp var_000000D8, 00000000h
00861E2A: jnl 861E4Ch
00861E2C: push 00000028h
00861E2E: push 004412BCh
00861E33: push var_000000D4
00861E39: push var_000000D8
00861E3F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00861E44: mov var_00000140, eax
00861E4A: jmp 861E53h
00861E4C: and var_00000140, 00000000h
00861E53: lea eax, var_20
00861E56: push eax
00861E57: lea eax, var_1C
00861E5A: push eax
00861E5B: lea eax, var_18
00861E5E: push eax
00861E5F: push 00000003h
00861E61: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00861E66: add esp, 00000010h
00861E69: lea eax, var_80
00861E6C: push eax
00861E6D: lea eax, var_70
00861E70: push eax
00861E71: lea eax, var_60
00861E74: push eax
00861E75: lea eax, var_50
00861E78: push eax
00861E79: lea eax, var_40
00861E7C: push eax
00861E7D: lea eax, var_30
00861E80: push eax
00861E81: push 00000006h
00861E83: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00861E88: add esp, 0000001Ch
00861E8B: push 004412BCh
00861E90: push 00000000h
00861E92: push 00000007h
00861E94: mov eax, [ebp+08h]
00861E97: mov eax, [eax]
00861E99: push [ebp+08h]
00861E9C: call [eax+0000030Ch]
00861EA2: push eax
00861EA3: lea eax, var_18
00861EA6: push eax
00861EA7: call 00410A84h ; Set (object)
00861EAC: push eax
00861EAD: lea eax, var_30
00861EB0: push eax
00861EB1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00861EB6: add esp, 00000010h
00861EB9: push eax
00861EBA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00861EBF: push eax
00861EC0: lea eax, var_1C
00861EC3: push eax
00861EC4: call 00410A84h ; Set (object)
00861EC9: mov var_000000D4, eax
00861ECF: mov var_78, 80020004h
00861ED6: mov var_80, 0000000Ah
00861EDD: mov var_68, 80020004h
00861EE4: mov var_70, 0000000Ah
00861EEB: mov var_000000A8, 00456C74h ; Idle time
00861EF5: mov var_000000B0, 00000008h
00861EFF: lea edx, var_000000B0
00861F05: lea ecx, var_60
00861F08: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00861F0D: mov var_00000098, 00456C5Ch ; idletime
00861F17: mov var_000000A0, 00000008h
00861F21: lea edx, var_000000A0
00861F27: lea ecx, var_50
00861F2A: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00861F2F: mov var_38, 80020004h
00861F36: mov var_40, 0000000Ah
00861F3D: lea eax, var_20
00861F40: push eax
00861F41: lea eax, var_80
00861F44: push eax
00861F45: lea eax, var_70
00861F48: push eax
00861F49: lea eax, var_60
00861F4C: push eax
00861F4D: lea eax, var_50
00861F50: push eax
00861F51: lea eax, var_40
00861F54: push eax
00861F55: mov eax, var_000000D4
00861F5B: mov eax, [eax]
00861F5D: push var_000000D4
00861F63: call [eax+28h]
00861F66: fclex 
00861F68: mov var_000000D8, eax
00861F6E: cmp var_000000D8, 00000000h
00861F75: jnl 861F97h
00861F77: push 00000028h
00861F79: push 004412BCh
00861F7E: push var_000000D4
00861F84: push var_000000D8
00861F8A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00861F8F: mov var_00000144, eax
00861F95: jmp 861F9Eh
00861F97: and var_00000144, 00000000h
00861F9E: lea eax, var_20
00861FA1: push eax
00861FA2: lea eax, var_1C
00861FA5: push eax
00861FA6: lea eax, var_18
00861FA9: push eax
00861FAA: push 00000003h
00861FAC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00861FB1: add esp, 00000010h
00861FB4: lea eax, var_80
00861FB7: push eax
00861FB8: lea eax, var_70
00861FBB: push eax
00861FBC: lea eax, var_60
00861FBF: push eax
00861FC0: lea eax, var_50
00861FC3: push eax
00861FC4: lea eax, var_40
00861FC7: push eax
00861FC8: lea eax, var_30
00861FCB: push eax
00861FCC: push 00000006h
00861FCE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00861FD3: add esp, 0000001Ch
00861FD6: push 004412BCh
00861FDB: push 00000000h
00861FDD: push 00000007h
00861FDF: mov eax, [ebp+08h]
00861FE2: mov eax, [eax]
00861FE4: push [ebp+08h]
00861FE7: call [eax+0000030Ch]
00861FED: push eax
00861FEE: lea eax, var_18
00861FF1: push eax
00861FF2: call 00410A84h ; Set (object)
00861FF7: push eax
00861FF8: lea eax, var_30
00861FFB: push eax
00861FFC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00862001: add esp, 00000010h
00862004: push eax
00862005: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086200A: push eax
0086200B: lea eax, var_1C
0086200E: push eax
0086200F: call 00410A84h ; Set (object)
00862014: mov var_000000D4, eax
0086201A: mov var_78, 80020004h
00862021: mov var_80, 0000000Ah
00862028: mov var_68, 80020004h
0086202F: mov var_70, 0000000Ah
00862036: mov var_000000A8, 00445794h ; Ping
00862040: mov var_000000B0, 00000008h
0086204A: lea edx, var_000000B0
00862050: lea ecx, var_60
00862053: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00862058: mov var_00000098, 00456C8Ch ; ping
00862062: mov var_000000A0, 00000008h
0086206C: lea edx, var_000000A0
00862072: lea ecx, var_50
00862075: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086207A: mov var_38, 80020004h
00862081: mov var_40, 0000000Ah
00862088: lea eax, var_20
0086208B: push eax
0086208C: lea eax, var_80
0086208F: push eax
00862090: lea eax, var_70
00862093: push eax
00862094: lea eax, var_60
00862097: push eax
00862098: lea eax, var_50
0086209B: push eax
0086209C: lea eax, var_40
0086209F: push eax
008620A0: mov eax, var_000000D4
008620A6: mov eax, [eax]
008620A8: push var_000000D4
008620AE: call [eax+28h]
008620B1: fclex 
008620B3: mov var_000000D8, eax
008620B9: cmp var_000000D8, 00000000h
008620C0: jnl 8620E2h
008620C2: push 00000028h
008620C4: push 004412BCh
008620C9: push var_000000D4
008620CF: push var_000000D8
008620D5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008620DA: mov var_00000148, eax
008620E0: jmp 8620E9h
008620E2: and var_00000148, 00000000h
008620E9: lea eax, var_20
008620EC: push eax
008620ED: lea eax, var_1C
008620F0: push eax
008620F1: lea eax, var_18
008620F4: push eax
008620F5: push 00000003h
008620F7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008620FC: add esp, 00000010h
008620FF: lea eax, var_80
00862102: push eax
00862103: lea eax, var_70
00862106: push eax
00862107: lea eax, var_60
0086210A: push eax
0086210B: lea eax, var_50
0086210E: push eax
0086210F: lea eax, var_40
00862112: push eax
00862113: lea eax, var_30
00862116: push eax
00862117: push 00000006h
00862119: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086211E: add esp, 0000001Ch
00862121: push 004412BCh
00862126: push 00000000h
00862128: push 00000007h
0086212A: mov eax, [ebp+08h]
0086212D: mov eax, [eax]
0086212F: push [ebp+08h]
00862132: call [eax+0000030Ch]
00862138: push eax
00862139: lea eax, var_18
0086213C: push eax
0086213D: call 00410A84h ; Set (object)
00862142: push eax
00862143: lea eax, var_30
00862146: push eax
00862147: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086214C: add esp, 00000010h
0086214F: push eax
00862150: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00862155: push eax
00862156: lea eax, var_1C
00862159: push eax
0086215A: call 00410A84h ; Set (object)
0086215F: mov var_000000D4, eax
00862165: mov var_78, 80020004h
0086216C: mov var_80, 0000000Ah
00862173: mov var_68, 80020004h
0086217A: mov var_70, 0000000Ah
00862181: mov var_000000A8, 004467D0h ; Cam
0086218B: mov var_000000B0, 00000008h
00862195: lea edx, var_000000B0
0086219B: lea ecx, var_60
0086219E: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008621A3: mov var_00000098, 00456C9Ch ; cam
008621AD: mov var_000000A0, 00000008h
008621B7: lea edx, var_000000A0
008621BD: lea ecx, var_50
008621C0: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008621C5: mov var_38, 80020004h
008621CC: mov var_40, 0000000Ah
008621D3: lea eax, var_20
008621D6: push eax
008621D7: lea eax, var_80
008621DA: push eax
008621DB: lea eax, var_70
008621DE: push eax
008621DF: lea eax, var_60
008621E2: push eax
008621E3: lea eax, var_50
008621E6: push eax
008621E7: lea eax, var_40
008621EA: push eax
008621EB: mov eax, var_000000D4
008621F1: mov eax, [eax]
008621F3: push var_000000D4
008621F9: call [eax+28h]
008621FC: fclex 
008621FE: mov var_000000D8, eax
00862204: cmp var_000000D8, 00000000h
0086220B: jnl 86222Dh
0086220D: push 00000028h
0086220F: push 004412BCh
00862214: push var_000000D4
0086221A: push var_000000D8
00862220: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00862225: mov var_0000014C, eax
0086222B: jmp 862234h
0086222D: and var_0000014C, 00000000h
00862234: lea eax, var_20
00862237: push eax
00862238: lea eax, var_1C
0086223B: push eax
0086223C: lea eax, var_18
0086223F: push eax
00862240: push 00000003h
00862242: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00862247: add esp, 00000010h
0086224A: lea eax, var_80
0086224D: push eax
0086224E: lea eax, var_70
00862251: push eax
00862252: lea eax, var_60
00862255: push eax
00862256: lea eax, var_50
00862259: push eax
0086225A: lea eax, var_40
0086225D: push eax
0086225E: lea eax, var_30
00862261: push eax
00862262: push 00000006h
00862264: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00862269: add esp, 0000001Ch
0086226C: push 004412BCh
00862271: push 00000000h
00862273: push 00000007h
00862275: mov eax, [ebp+08h]
00862278: mov eax, [eax]
0086227A: push [ebp+08h]
0086227D: call [eax+0000030Ch]
00862283: push eax
00862284: lea eax, var_18
00862287: push eax
00862288: call 00410A84h ; Set (object)
0086228D: push eax
0086228E: lea eax, var_30
00862291: push eax
00862292: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00862297: add esp, 00000010h
0086229A: push eax
0086229B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008622A0: push eax
008622A1: lea eax, var_1C
008622A4: push eax
008622A5: call 00410A84h ; Set (object)
008622AA: mov var_000000D4, eax
008622B0: mov var_78, 80020004h
008622B7: mov var_80, 0000000Ah
008622BE: mov var_68, 80020004h
008622C5: mov var_70, 0000000Ah
008622CC: mov var_000000A8, 004467DCh ; Masters
008622D6: mov var_000000B0, 00000008h
008622E0: lea edx, var_000000B0
008622E6: lea ecx, var_60
008622E9: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008622EE: mov var_00000098, 00456CA8h ; masters
008622F8: mov var_000000A0, 00000008h
00862302: lea edx, var_000000A0
00862308: lea ecx, var_50
0086230B: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00862310: mov var_38, 80020004h
00862317: mov var_40, 0000000Ah
0086231E: lea eax, var_20
00862321: push eax
00862322: lea eax, var_80
00862325: push eax
00862326: lea eax, var_70
00862329: push eax
0086232A: lea eax, var_60
0086232D: push eax
0086232E: lea eax, var_50
00862331: push eax
00862332: lea eax, var_40
00862335: push eax
00862336: mov eax, var_000000D4
0086233C: mov eax, [eax]
0086233E: push var_000000D4
00862344: call [eax+28h]
00862347: fclex 
00862349: mov var_000000D8, eax
0086234F: cmp var_000000D8, 00000000h
00862356: jnl 862378h
00862358: push 00000028h
0086235A: push 004412BCh
0086235F: push var_000000D4
00862365: push var_000000D8
0086236B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00862370: mov var_00000150, eax
00862376: jmp 86237Fh
00862378: and var_00000150, 00000000h
0086237F: lea eax, var_20
00862382: push eax
00862383: lea eax, var_1C
00862386: push eax
00862387: lea eax, var_18
0086238A: push eax
0086238B: push 00000003h
0086238D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00862392: add esp, 00000010h
00862395: lea eax, var_80
00862398: push eax
00862399: lea eax, var_70
0086239C: push eax
0086239D: lea eax, var_60
008623A0: push eax
008623A1: lea eax, var_50
008623A4: push eax
008623A5: lea eax, var_40
008623A8: push eax
008623A9: lea eax, var_30
008623AC: push eax
008623AD: push 00000006h
008623AF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008623B4: add esp, 0000001Ch
008623B7: push 004412BCh
008623BC: push 00000000h
008623BE: push 00000007h
008623C0: mov eax, [ebp+08h]
008623C3: mov eax, [eax]
008623C5: push [ebp+08h]
008623C8: call [eax+0000030Ch]
008623CE: push eax
008623CF: lea eax, var_18
008623D2: push eax
008623D3: call 00410A84h ; Set (object)
008623D8: push eax
008623D9: lea eax, var_30
008623DC: push eax
008623DD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008623E2: add esp, 00000010h
008623E5: push eax
008623E6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008623EB: push eax
008623EC: lea eax, var_1C
008623EF: push eax
008623F0: call 00410A84h ; Set (object)
008623F5: mov var_000000D4, eax
008623FB: mov var_78, 80020004h
00862402: mov var_80, 0000000Ah
00862409: mov var_68, 80020004h
00862410: mov var_70, 0000000Ah
00862417: mov var_000000A8, 00456CD4h ; Anti Virus
00862421: mov var_000000B0, 00000008h
0086242B: lea edx, var_000000B0
00862431: lea ecx, var_60
00862434: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00862439: mov var_00000098, 00456CBCh ; antivirus
00862443: mov var_000000A0, 00000008h
0086244D: lea edx, var_000000A0
00862453: lea ecx, var_50
00862456: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086245B: mov var_38, 80020004h
00862462: mov var_40, 0000000Ah
00862469: lea eax, var_20
0086246C: push eax
0086246D: lea eax, var_80
00862470: push eax
00862471: lea eax, var_70
00862474: push eax
00862475: lea eax, var_60
00862478: push eax
00862479: lea eax, var_50
0086247C: push eax
0086247D: lea eax, var_40
00862480: push eax
00862481: mov eax, var_000000D4
00862487: mov eax, [eax]
00862489: push var_000000D4
0086248F: call [eax+28h]
00862492: fclex 
00862494: mov var_000000D8, eax
0086249A: cmp var_000000D8, 00000000h
008624A1: jnl 8624C3h
008624A3: push 00000028h
008624A5: push 004412BCh
008624AA: push var_000000D4
008624B0: push var_000000D8
008624B6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008624BB: mov var_00000154, eax
008624C1: jmp 8624CAh
008624C3: and var_00000154, 00000000h
008624CA: lea eax, var_20
008624CD: push eax
008624CE: lea eax, var_1C
008624D1: push eax
008624D2: lea eax, var_18
008624D5: push eax
008624D6: push 00000003h
008624D8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008624DD: add esp, 00000010h
008624E0: lea eax, var_80
008624E3: push eax
008624E4: lea eax, var_70
008624E7: push eax
008624E8: lea eax, var_60
008624EB: push eax
008624EC: lea eax, var_50
008624EF: push eax
008624F0: lea eax, var_40
008624F3: push eax
008624F4: lea eax, var_30
008624F7: push eax
008624F8: push 00000006h
008624FA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008624FF: add esp, 0000001Ch
00862502: push 004412BCh
00862507: push 00000000h
00862509: push 00000007h
0086250B: mov eax, [ebp+08h]
0086250E: mov eax, [eax]
00862510: push [ebp+08h]
00862513: call [eax+0000030Ch]
00862519: push eax
0086251A: lea eax, var_18
0086251D: push eax
0086251E: call 00410A84h ; Set (object)
00862523: push eax
00862524: lea eax, var_30
00862527: push eax
00862528: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086252D: add esp, 00000010h
00862530: push eax
00862531: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00862536: push eax
00862537: lea eax, var_1C
0086253A: push eax
0086253B: call 00410A84h ; Set (object)
00862540: mov var_000000D4, eax
00862546: mov var_78, 80020004h
0086254D: mov var_80, 0000000Ah
00862554: mov var_68, 80020004h
0086255B: mov var_70, 0000000Ah
00862562: mov var_000000A8, 00456D14h ; Default browser
0086256C: mov var_000000B0, 00000008h
00862576: lea edx, var_000000B0
0086257C: lea ecx, var_60
0086257F: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00862584: mov var_00000098, 00456CF0h ; defaultbrowser
0086258E: mov var_000000A0, 00000008h
00862598: lea edx, var_000000A0
0086259E: lea ecx, var_50
008625A1: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008625A6: mov var_38, 80020004h
008625AD: mov var_40, 0000000Ah
008625B4: lea eax, var_20
008625B7: push eax
008625B8: lea eax, var_80
008625BB: push eax
008625BC: lea eax, var_70
008625BF: push eax
008625C0: lea eax, var_60
008625C3: push eax
008625C4: lea eax, var_50
008625C7: push eax
008625C8: lea eax, var_40
008625CB: push eax
008625CC: mov eax, var_000000D4
008625D2: mov eax, [eax]
008625D4: push var_000000D4
008625DA: call [eax+28h]
008625DD: fclex 
008625DF: mov var_000000D8, eax
008625E5: cmp var_000000D8, 00000000h
008625EC: jnl 86260Eh
008625EE: push 00000028h
008625F0: push 004412BCh
008625F5: push var_000000D4
008625FB: push var_000000D8
00862601: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00862606: mov var_00000158, eax
0086260C: jmp 862615h
0086260E: and var_00000158, 00000000h
00862615: lea eax, var_20
00862618: push eax
00862619: lea eax, var_1C
0086261C: push eax
0086261D: lea eax, var_18
00862620: push eax
00862621: push 00000003h
00862623: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00862628: add esp, 00000010h
0086262B: lea eax, var_80
0086262E: push eax
0086262F: lea eax, var_70
00862632: push eax
00862633: lea eax, var_60
00862636: push eax
00862637: lea eax, var_50
0086263A: push eax
0086263B: lea eax, var_40
0086263E: push eax
0086263F: lea eax, var_30
00862642: push eax
00862643: push 00000006h
00862645: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086264A: add esp, 0000001Ch
0086264D: push 004412BCh
00862652: push 00000000h
00862654: push 00000007h
00862656: mov eax, [ebp+08h]
00862659: mov eax, [eax]
0086265B: push [ebp+08h]
0086265E: call [eax+0000030Ch]
00862664: push eax
00862665: lea eax, var_18
00862668: push eax
00862669: call 00410A84h ; Set (object)
0086266E: push eax
0086266F: lea eax, var_30
00862672: push eax
00862673: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00862678: add esp, 00000010h
0086267B: push eax
0086267C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00862681: push eax
00862682: lea eax, var_1C
00862685: push eax
00862686: call 00410A84h ; Set (object)
0086268B: mov var_000000D4, eax
00862691: mov var_78, 80020004h
00862698: mov var_80, 0000000Ah
0086269F: mov var_68, 80020004h
008626A6: mov var_70, 0000000Ah
008626AD: mov var_000000A8, 00446810h ; Active window
008626B7: mov var_000000B0, 00000008h
008626C1: lea edx, var_000000B0
008626C7: lea ecx, var_60
008626CA: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008626CF: mov var_00000098, 00456D38h ; activewindow
008626D9: mov var_000000A0, 00000008h
008626E3: lea edx, var_000000A0
008626E9: lea ecx, var_50
008626EC: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008626F1: mov var_38, 80020004h
008626F8: mov var_40, 0000000Ah
008626FF: lea eax, var_20
00862702: push eax
00862703: lea eax, var_80
00862706: push eax
00862707: lea eax, var_70
0086270A: push eax
0086270B: lea eax, var_60
0086270E: push eax
0086270F: lea eax, var_50
00862712: push eax
00862713: lea eax, var_40
00862716: push eax
00862717: mov eax, var_000000D4
0086271D: mov eax, [eax]
0086271F: push var_000000D4
00862725: call [eax+28h]
00862728: fclex 
0086272A: mov var_000000D8, eax
00862730: cmp var_000000D8, 00000000h
00862737: jnl 862759h
00862739: push 00000028h
0086273B: push 004412BCh
00862740: push var_000000D4
00862746: push var_000000D8
0086274C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00862751: mov var_0000015C, eax
00862757: jmp 862760h
00862759: and var_0000015C, 00000000h
00862760: lea eax, var_20
00862763: push eax
00862764: lea eax, var_1C
00862767: push eax
00862768: lea eax, var_18
0086276B: push eax
0086276C: push 00000003h
0086276E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00862773: add esp, 00000010h
00862776: lea eax, var_80
00862779: push eax
0086277A: lea eax, var_70
0086277D: push eax
0086277E: lea eax, var_60
00862781: push eax
00862782: lea eax, var_50
00862785: push eax
00862786: lea eax, var_40
00862789: push eax
0086278A: lea eax, var_30
0086278D: push eax
0086278E: push 00000006h
00862790: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00862795: add esp, 0000001Ch
00862798: push 004412BCh
0086279D: push 00000000h
0086279F: push 00000007h
008627A1: mov eax, [ebp+08h]
008627A4: mov eax, [eax]
008627A6: push [ebp+08h]
008627A9: call [eax+0000030Ch]
008627AF: push eax
008627B0: lea eax, var_18
008627B3: push eax
008627B4: call 00410A84h ; Set (object)
008627B9: push eax
008627BA: lea eax, var_30
008627BD: push eax
008627BE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008627C3: add esp, 00000010h
008627C6: push eax
008627C7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008627CC: push eax
008627CD: lea eax, var_1C
008627D0: push eax
008627D1: call 00410A84h ; Set (object)
008627D6: mov var_000000D4, eax
008627DC: mov var_78, 80020004h
008627E3: mov var_80, 0000000Ah
008627EA: mov var_68, 80020004h
008627F1: mov var_70, 0000000Ah
008627F8: mov var_000000A8, 00442BFCh
00862802: mov var_000000B0, 00000008h
0086280C: lea edx, var_000000B0
00862812: lea ecx, var_60
00862815: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086281A: mov var_00000098, 00456D58h ; newline
00862824: mov var_000000A0, 00000008h
0086282E: lea edx, var_000000A0
00862834: lea ecx, var_50
00862837: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086283C: mov var_38, 80020004h
00862843: mov var_40, 0000000Ah
0086284A: lea eax, var_20
0086284D: push eax
0086284E: lea eax, var_80
00862851: push eax
00862852: lea eax, var_70
00862855: push eax
00862856: lea eax, var_60
00862859: push eax
0086285A: lea eax, var_50
0086285D: push eax
0086285E: lea eax, var_40
00862861: push eax
00862862: mov eax, var_000000D4
00862868: mov eax, [eax]
0086286A: push var_000000D4
00862870: call [eax+28h]
00862873: fclex 
00862875: mov var_000000D8, eax
0086287B: cmp var_000000D8, 00000000h
00862882: jnl 8628A4h
00862884: push 00000028h
00862886: push 004412BCh
0086288B: push var_000000D4
00862891: push var_000000D8
00862897: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086289C: mov var_00000160, eax
008628A2: jmp 8628ABh
008628A4: and var_00000160, 00000000h
008628AB: lea eax, var_20
008628AE: push eax
008628AF: lea eax, var_1C
008628B2: push eax
008628B3: lea eax, var_18
008628B6: push eax
008628B7: push 00000003h
008628B9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008628BE: add esp, 00000010h
008628C1: lea eax, var_80
008628C4: push eax
008628C5: lea eax, var_70
008628C8: push eax
008628C9: lea eax, var_60
008628CC: push eax
008628CD: lea eax, var_50
008628D0: push eax
008628D1: lea eax, var_40
008628D4: push eax
008628D5: lea eax, var_30
008628D8: push eax
008628D9: push 00000006h
008628DB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008628E0: add esp, 0000001Ch
008628E3: push 004412BCh
008628E8: push 00000000h
008628EA: push 00000007h
008628EC: mov eax, [ebp+08h]
008628EF: mov eax, [eax]
008628F1: push [ebp+08h]
008628F4: call [eax+0000030Ch]
008628FA: push eax
008628FB: lea eax, var_18
008628FE: push eax
008628FF: call 00410A84h ; Set (object)
00862904: push eax
00862905: lea eax, var_30
00862908: push eax
00862909: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086290E: add esp, 00000010h
00862911: push eax
00862912: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00862917: push eax
00862918: lea eax, var_1C
0086291B: push eax
0086291C: call 00410A84h ; Set (object)
00862921: mov var_000000D4, eax
00862927: mov var_00000088, 00456D58h ; newline
00862931: mov var_00000090, 00000008h
0086293B: lea edx, var_00000090
00862941: lea ecx, var_40
00862944: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00862949: lea eax, var_20
0086294C: push eax
0086294D: lea eax, var_40
00862950: push eax
00862951: mov eax, var_000000D4
00862957: mov eax, [eax]
00862959: push var_000000D4
0086295F: call [eax+24h]
00862962: fclex 
00862964: mov var_000000D8, eax
0086296A: cmp var_000000D8, 00000000h
00862971: jnl 862993h
00862973: push 00000024h
00862975: push 004412BCh
0086297A: push var_000000D4
00862980: push var_000000D8
00862986: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086298B: mov var_00000164, eax
00862991: jmp 86299Ah
00862993: and var_00000164, 00000000h
0086299A: mov eax, var_20
0086299D: mov var_000000DC, eax
008629A3: push 00000000h
008629A5: push 00000001h
008629A7: mov eax, var_000000DC
008629AD: mov eax, [eax]
008629AF: push var_000000DC
008629B5: call [eax+00000088h]
008629BB: fclex 
008629BD: mov var_000000E0, eax
008629C3: cmp var_000000E0, 00000000h
008629CA: jnl 8629EFh
008629CC: push 00000088h
008629D1: push 004412DCh
008629D6: push var_000000DC
008629DC: push var_000000E0
008629E2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008629E7: mov var_00000168, eax
008629ED: jmp 8629F6h
008629EF: and var_00000168, 00000000h
008629F6: lea eax, var_20
008629F9: push eax
008629FA: lea eax, var_1C
008629FD: push eax
008629FE: lea eax, var_18
00862A01: push eax
00862A02: push 00000003h
00862A04: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00862A09: add esp, 00000010h
00862A0C: lea eax, var_40
00862A0F: push eax
00862A10: lea eax, var_30
00862A13: push eax
00862A14: push 00000002h
00862A16: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00862A1B: add esp, 0000000Ch
00862A1E: push 004412BCh
00862A23: push 00000000h
00862A25: push 00000007h
00862A27: mov eax, [ebp+08h]
00862A2A: mov eax, [eax]
00862A2C: push [ebp+08h]
00862A2F: call [eax+0000030Ch]
00862A35: push eax
00862A36: lea eax, var_18
00862A39: push eax
00862A3A: call 00410A84h ; Set (object)
00862A3F: push eax
00862A40: lea eax, var_30
00862A43: push eax
00862A44: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00862A49: add esp, 00000010h
00862A4C: push eax
00862A4D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00862A52: push eax
00862A53: lea eax, var_1C
00862A56: push eax
00862A57: call 00410A84h ; Set (object)
00862A5C: mov var_000000D4, eax
00862A62: mov var_78, 00000002h
00862A69: mov var_80, 00000002h
00862A70: mov var_68, 80020004h
00862A77: mov var_70, 0000000Ah
00862A7E: mov var_000000A8, 00456D78h ; Location
00862A88: mov var_000000B0, 00000008h
00862A92: lea edx, var_000000B0
00862A98: lea ecx, var_60
00862A9B: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00862AA0: mov var_00000098, 00456D6Ch ; loc
00862AAA: mov var_000000A0, 00000008h
00862AB4: lea edx, var_000000A0
00862ABA: lea ecx, var_50
00862ABD: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00862AC2: mov var_38, 80020004h
00862AC9: mov var_40, 0000000Ah
00862AD0: lea eax, var_20
00862AD3: push eax
00862AD4: lea eax, var_80
00862AD7: push eax
00862AD8: lea eax, var_70
00862ADB: push eax
00862ADC: lea eax, var_60
00862ADF: push eax
00862AE0: lea eax, var_50
00862AE3: push eax
00862AE4: lea eax, var_40
00862AE7: push eax
00862AE8: mov eax, var_000000D4
00862AEE: mov eax, [eax]
00862AF0: push var_000000D4
00862AF6: call [eax+28h]
00862AF9: fclex 
00862AFB: mov var_000000D8, eax
00862B01: cmp var_000000D8, 00000000h
00862B08: jnl 862B2Ah
00862B0A: push 00000028h
00862B0C: push 004412BCh
00862B11: push var_000000D4
00862B17: push var_000000D8
00862B1D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00862B22: mov var_0000016C, eax
00862B28: jmp 862B31h
00862B2A: and var_0000016C, 00000000h
00862B31: lea eax, var_20
00862B34: push eax
00862B35: lea eax, var_1C
00862B38: push eax
00862B39: lea eax, var_18
00862B3C: push eax
00862B3D: push 00000003h
00862B3F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00862B44: add esp, 00000010h
00862B47: lea eax, var_80
00862B4A: push eax
00862B4B: lea eax, var_70
00862B4E: push eax
00862B4F: lea eax, var_60
00862B52: push eax
00862B53: lea eax, var_50
00862B56: push eax
00862B57: lea eax, var_40
00862B5A: push eax
00862B5B: lea eax, var_30
00862B5E: push eax
00862B5F: push 00000006h
00862B61: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00862B66: add esp, 0000001Ch
00862B69: push 004412BCh
00862B6E: push 00000000h
00862B70: push 00000007h
00862B72: mov eax, [ebp+08h]
00862B75: mov eax, [eax]
00862B77: push [ebp+08h]
00862B7A: call [eax+0000030Ch]
00862B80: push eax
00862B81: lea eax, var_18
00862B84: push eax
00862B85: call 00410A84h ; Set (object)
00862B8A: push eax
00862B8B: lea eax, var_30
00862B8E: push eax
00862B8F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00862B94: add esp, 00000010h
00862B97: push eax
00862B98: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00862B9D: push eax
00862B9E: lea eax, var_1C
00862BA1: push eax
00862BA2: call 00410A84h ; Set (object)
00862BA7: mov var_000000D4, eax
00862BAD: mov var_00000088, 00456D6Ch ; loc
00862BB7: mov var_00000090, 00000008h
00862BC1: lea edx, var_00000090
00862BC7: lea ecx, var_40
00862BCA: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00862BCF: lea eax, var_20
00862BD2: push eax
00862BD3: lea eax, var_40
00862BD6: push eax
00862BD7: mov eax, var_000000D4
00862BDD: mov eax, [eax]
00862BDF: push var_000000D4
00862BE5: call [eax+24h]
00862BE8: fclex 
00862BEA: mov var_000000D8, eax
00862BF0: cmp var_000000D8, 00000000h
00862BF7: jnl 862C19h
00862BF9: push 00000024h
00862BFB: push 004412BCh
00862C00: push var_000000D4
00862C06: push var_000000D8
00862C0C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00862C11: mov var_00000170, eax
00862C17: jmp 862C20h
00862C19: and var_00000170, 00000000h
00862C20: mov eax, var_20
00862C23: mov var_000000DC, eax
00862C29: push 00FF0000h
00862C2E: mov eax, var_000000DC
00862C34: mov eax, [eax]
00862C36: push var_000000DC
00862C3C: call [eax+000000ACh]
00862C42: fclex 
00862C44: mov var_000000E0, eax
00862C4A: cmp var_000000E0, 00000000h
00862C51: jnl 862C76h
00862C53: push 000000ACh
00862C58: push 004412DCh
00862C5D: push var_000000DC
00862C63: push var_000000E0
00862C69: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00862C6E: mov var_00000174, eax
00862C74: jmp 862C7Dh
00862C76: and var_00000174, 00000000h
00862C7D: lea eax, var_20
00862C80: push eax
00862C81: lea eax, var_1C
00862C84: push eax
00862C85: lea eax, var_18
00862C88: push eax
00862C89: push 00000003h
00862C8B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00862C90: add esp, 00000010h
00862C93: lea eax, var_40
00862C96: push eax
00862C97: lea eax, var_30
00862C9A: push eax
00862C9B: push 00000002h
00862C9D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00862CA2: add esp, 0000000Ch
00862CA5: push 004412BCh
00862CAA: push 00000000h
00862CAC: push 00000007h
00862CAE: mov eax, [ebp+08h]
00862CB1: mov eax, [eax]
00862CB3: push [ebp+08h]
00862CB6: call [eax+0000030Ch]
00862CBC: push eax
00862CBD: lea eax, var_18
00862CC0: push eax
00862CC1: call 00410A84h ; Set (object)
00862CC6: push eax
00862CC7: lea eax, var_30
00862CCA: push eax
00862CCB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00862CD0: add esp, 00000010h
00862CD3: push eax
00862CD4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00862CD9: push eax
00862CDA: lea eax, var_1C
00862CDD: push eax
00862CDE: call 00410A84h ; Set (object)
00862CE3: mov var_000000D4, eax
00862CE9: mov var_00000088, 00456D6Ch ; loc
00862CF3: mov var_00000090, 00000008h
00862CFD: lea edx, var_00000090
00862D03: lea ecx, var_40
00862D06: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00862D0B: lea eax, var_20
00862D0E: push eax
00862D0F: lea eax, var_40
00862D12: push eax
00862D13: mov eax, var_000000D4
00862D19: mov eax, [eax]
00862D1B: push var_000000D4
00862D21: call [eax+24h]
00862D24: fclex 
00862D26: mov var_000000D8, eax
00862D2C: cmp var_000000D8, 00000000h
00862D33: jnl 862D55h
00862D35: push 00000024h
00862D37: push 004412BCh
00862D3C: push var_000000D4
00862D42: push var_000000D8
00862D48: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00862D4D: mov var_00000178, eax
00862D53: jmp 862D5Ch
00862D55: and var_00000178, 00000000h
00862D5C: mov eax, var_20
00862D5F: mov var_000000DC, eax
00862D65: push FFFFFFFFh
00862D67: mov eax, var_000000DC
00862D6D: mov eax, [eax]
00862D6F: push var_000000DC
00862D75: call [eax+000000BCh]
00862D7B: fclex 
00862D7D: mov var_000000E0, eax
00862D83: cmp var_000000E0, 00000000h
00862D8A: jnl 862DAFh
00862D8C: push 000000BCh
00862D91: push 004412DCh
00862D96: push var_000000DC
00862D9C: push var_000000E0
00862DA2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00862DA7: mov var_0000017C, eax
00862DAD: jmp 862DB6h
00862DAF: and var_0000017C, 00000000h
00862DB6: lea eax, var_20
00862DB9: push eax
00862DBA: lea eax, var_1C
00862DBD: push eax
00862DBE: lea eax, var_18
00862DC1: push eax
00862DC2: push 00000003h
00862DC4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00862DC9: add esp, 00000010h
00862DCC: lea eax, var_40
00862DCF: push eax
00862DD0: lea eax, var_30
00862DD3: push eax
00862DD4: push 00000002h
00862DD6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00862DDB: add esp, 0000000Ch
00862DDE: push 004412BCh
00862DE3: push 00000000h
00862DE5: push 00000007h
00862DE7: mov eax, [ebp+08h]
00862DEA: mov eax, [eax]
00862DEC: push [ebp+08h]
00862DEF: call [eax+0000030Ch]
00862DF5: push eax
00862DF6: lea eax, var_18
00862DF9: push eax
00862DFA: call 00410A84h ; Set (object)
00862DFF: push eax
00862E00: lea eax, var_30
00862E03: push eax
00862E04: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00862E09: add esp, 00000010h
00862E0C: push eax
00862E0D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00862E12: push eax
00862E13: lea eax, var_1C
00862E16: push eax
00862E17: call 00410A84h ; Set (object)
00862E1C: mov var_000000D4, eax
00862E22: mov var_00000088, 00456D6Ch ; loc
00862E2C: mov var_00000090, 00000008h
00862E36: lea edx, var_00000090
00862E3C: lea ecx, var_40
00862E3F: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00862E44: lea eax, var_20
00862E47: push eax
00862E48: lea eax, var_40
00862E4B: push eax
00862E4C: mov eax, var_000000D4
00862E52: mov eax, [eax]
00862E54: push var_000000D4
00862E5A: call [eax+24h]
00862E5D: fclex 
00862E5F: mov var_000000D8, eax
00862E65: cmp var_000000D8, 00000000h
00862E6C: jnl 862E8Eh
00862E6E: push 00000024h
00862E70: push 004412BCh
00862E75: push var_000000D4
00862E7B: push var_000000D8
00862E81: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00862E86: mov var_00000180, eax
00862E8C: jmp 862E95h
00862E8E: and var_00000180, 00000000h
00862E95: mov eax, var_20
00862E98: mov var_000000DC, eax
00862E9E: push 00000000h
00862EA0: push 00000001h
00862EA2: mov eax, var_000000DC
00862EA8: mov eax, [eax]
00862EAA: push var_000000DC
00862EB0: call [eax+00000088h]
00862EB6: fclex 
00862EB8: mov var_000000E0, eax
00862EBE: cmp var_000000E0, 00000000h
00862EC5: jnl 862EEAh
00862EC7: push 00000088h
00862ECC: push 004412DCh
00862ED1: push var_000000DC
00862ED7: push var_000000E0
00862EDD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00862EE2: mov var_00000184, eax
00862EE8: jmp 862EF1h
00862EEA: and var_00000184, 00000000h
00862EF1: lea eax, var_20
00862EF4: push eax
00862EF5: lea eax, var_1C
00862EF8: push eax
00862EF9: lea eax, var_18
00862EFC: push eax
00862EFD: push 00000003h
00862EFF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00862F04: add esp, 00000010h
00862F07: lea eax, var_40
00862F0A: push eax
00862F0B: lea eax, var_30
00862F0E: push eax
00862F0F: push 00000002h
00862F11: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00862F16: add esp, 0000000Ch
00862F19: push 004412BCh
00862F1E: push 00000000h
00862F20: push 00000007h
00862F22: mov eax, [ebp+08h]
00862F25: mov eax, [eax]
00862F27: push [ebp+08h]
00862F2A: call [eax+0000030Ch]
00862F30: push eax
00862F31: lea eax, var_18
00862F34: push eax
00862F35: call 00410A84h ; Set (object)
00862F3A: push eax
00862F3B: lea eax, var_30
00862F3E: push eax
00862F3F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00862F44: add esp, 00000010h
00862F47: push eax
00862F48: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00862F4D: push eax
00862F4E: lea eax, var_1C
00862F51: push eax
00862F52: call 00410A84h ; Set (object)
00862F57: mov var_000000D4, eax
00862F5D: mov var_78, 80020004h
00862F64: mov var_80, 0000000Ah
00862F6B: mov var_68, 80020004h
00862F72: mov var_70, 0000000Ah
00862F79: mov var_000000A8, 004467A8h ; Country
00862F83: mov var_000000B0, 00000008h
00862F8D: lea edx, var_000000B0
00862F93: lea ecx, var_60
00862F96: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00862F9B: mov var_00000098, 00456D90h ; country
00862FA5: mov var_000000A0, 00000008h
00862FAF: lea edx, var_000000A0
00862FB5: lea ecx, var_50
00862FB8: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00862FBD: mov var_38, 80020004h
00862FC4: mov var_40, 0000000Ah
00862FCB: lea eax, var_20
00862FCE: push eax
00862FCF: lea eax, var_80
00862FD2: push eax
00862FD3: lea eax, var_70
00862FD6: push eax
00862FD7: lea eax, var_60
00862FDA: push eax
00862FDB: lea eax, var_50
00862FDE: push eax
00862FDF: lea eax, var_40
00862FE2: push eax
00862FE3: mov eax, var_000000D4
00862FE9: mov eax, [eax]
00862FEB: push var_000000D4
00862FF1: call [eax+28h]
00862FF4: fclex 
00862FF6: mov var_000000D8, eax
00862FFC: cmp var_000000D8, 00000000h
00863003: jnl 863025h
00863005: push 00000028h
00863007: push 004412BCh
0086300C: push var_000000D4
00863012: push var_000000D8
00863018: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086301D: mov var_00000188, eax
00863023: jmp 86302Ch
00863025: and var_00000188, 00000000h
0086302C: lea eax, var_20
0086302F: push eax
00863030: lea eax, var_1C
00863033: push eax
00863034: lea eax, var_18
00863037: push eax
00863038: push 00000003h
0086303A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086303F: add esp, 00000010h
00863042: lea eax, var_80
00863045: push eax
00863046: lea eax, var_70
00863049: push eax
0086304A: lea eax, var_60
0086304D: push eax
0086304E: lea eax, var_50
00863051: push eax
00863052: lea eax, var_40
00863055: push eax
00863056: lea eax, var_30
00863059: push eax
0086305A: push 00000006h
0086305C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00863061: add esp, 0000001Ch
00863064: push 004412BCh
00863069: push 00000000h
0086306B: push 00000007h
0086306D: mov eax, [ebp+08h]
00863070: mov eax, [eax]
00863072: push [ebp+08h]
00863075: call [eax+0000030Ch]
0086307B: push eax
0086307C: lea eax, var_18
0086307F: push eax
00863080: call 00410A84h ; Set (object)
00863085: push eax
00863086: lea eax, var_30
00863089: push eax
0086308A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086308F: add esp, 00000010h
00863092: push eax
00863093: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00863098: push eax
00863099: lea eax, var_1C
0086309C: push eax
0086309D: call 00410A84h ; Set (object)
008630A2: mov var_000000D4, eax
008630A8: mov var_78, 80020004h
008630AF: mov var_80, 0000000Ah
008630B6: mov var_68, 80020004h
008630BD: mov var_70, 0000000Ah
008630C4: mov var_000000A8, 00456DB8h ; Region
008630CE: mov var_000000B0, 00000008h
008630D8: lea edx, var_000000B0
008630DE: lea ecx, var_60
008630E1: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008630E6: mov var_00000098, 00456DA4h ; region
008630F0: mov var_000000A0, 00000008h
008630FA: lea edx, var_000000A0
00863100: lea ecx, var_50
00863103: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00863108: mov var_38, 80020004h
0086310F: mov var_40, 0000000Ah
00863116: lea eax, var_20
00863119: push eax
0086311A: lea eax, var_80
0086311D: push eax
0086311E: lea eax, var_70
00863121: push eax
00863122: lea eax, var_60
00863125: push eax
00863126: lea eax, var_50
00863129: push eax
0086312A: lea eax, var_40
0086312D: push eax
0086312E: mov eax, var_000000D4
00863134: mov eax, [eax]
00863136: push var_000000D4
0086313C: call [eax+28h]
0086313F: fclex 
00863141: mov var_000000D8, eax
00863147: cmp var_000000D8, 00000000h
0086314E: jnl 863170h
00863150: push 00000028h
00863152: push 004412BCh
00863157: push var_000000D4
0086315D: push var_000000D8
00863163: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00863168: mov var_0000018C, eax
0086316E: jmp 863177h
00863170: and var_0000018C, 00000000h
00863177: lea eax, var_20
0086317A: push eax
0086317B: lea eax, var_1C
0086317E: push eax
0086317F: lea eax, var_18
00863182: push eax
00863183: push 00000003h
00863185: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086318A: add esp, 00000010h
0086318D: lea eax, var_80
00863190: push eax
00863191: lea eax, var_70
00863194: push eax
00863195: lea eax, var_60
00863198: push eax
00863199: lea eax, var_50
0086319C: push eax
0086319D: lea eax, var_40
008631A0: push eax
008631A1: lea eax, var_30
008631A4: push eax
008631A5: push 00000006h
008631A7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008631AC: add esp, 0000001Ch
008631AF: push 004412BCh
008631B4: push 00000000h
008631B6: push 00000007h
008631B8: mov eax, [ebp+08h]
008631BB: mov eax, [eax]
008631BD: push [ebp+08h]
008631C0: call [eax+0000030Ch]
008631C6: push eax
008631C7: lea eax, var_18
008631CA: push eax
008631CB: call 00410A84h ; Set (object)
008631D0: push eax
008631D1: lea eax, var_30
008631D4: push eax
008631D5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008631DA: add esp, 00000010h
008631DD: push eax
008631DE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008631E3: push eax
008631E4: lea eax, var_1C
008631E7: push eax
008631E8: call 00410A84h ; Set (object)
008631ED: mov var_000000D4, eax
008631F3: mov var_78, 80020004h
008631FA: mov var_80, 0000000Ah
00863201: mov var_68, 80020004h
00863208: mov var_70, 0000000Ah
0086320F: mov var_000000A8, 00456DDCh ; City
00863219: mov var_000000B0, 00000008h
00863223: lea edx, var_000000B0
00863229: lea ecx, var_60
0086322C: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00863231: mov var_00000098, 00456DCCh ; city
0086323B: mov var_000000A0, 00000008h
00863245: lea edx, var_000000A0
0086324B: lea ecx, var_50
0086324E: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00863253: mov var_38, 80020004h
0086325A: mov var_40, 0000000Ah
00863261: lea eax, var_20
00863264: push eax
00863265: lea eax, var_80
00863268: push eax
00863269: lea eax, var_70
0086326C: push eax
0086326D: lea eax, var_60
00863270: push eax
00863271: lea eax, var_50
00863274: push eax
00863275: lea eax, var_40
00863278: push eax
00863279: mov eax, var_000000D4
0086327F: mov eax, [eax]
00863281: push var_000000D4
00863287: call [eax+28h]
0086328A: fclex 
0086328C: mov var_000000D8, eax
00863292: cmp var_000000D8, 00000000h
00863299: jnl 8632BBh
0086329B: push 00000028h
0086329D: push 004412BCh
008632A2: push var_000000D4
008632A8: push var_000000D8
008632AE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008632B3: mov var_00000190, eax
008632B9: jmp 8632C2h
008632BB: and var_00000190, 00000000h
008632C2: lea eax, var_20
008632C5: push eax
008632C6: lea eax, var_1C
008632C9: push eax
008632CA: lea eax, var_18
008632CD: push eax
008632CE: push 00000003h
008632D0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008632D5: add esp, 00000010h
008632D8: lea eax, var_80
008632DB: push eax
008632DC: lea eax, var_70
008632DF: push eax
008632E0: lea eax, var_60
008632E3: push eax
008632E4: lea eax, var_50
008632E7: push eax
008632E8: lea eax, var_40
008632EB: push eax
008632EC: lea eax, var_30
008632EF: push eax
008632F0: push 00000006h
008632F2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008632F7: add esp, 0000001Ch
008632FA: push 004412BCh
008632FF: push 00000000h
00863301: push 00000007h
00863303: mov eax, [ebp+08h]
00863306: mov eax, [eax]
00863308: push [ebp+08h]
0086330B: call [eax+0000030Ch]
00863311: push eax
00863312: lea eax, var_18
00863315: push eax
00863316: call 00410A84h ; Set (object)
0086331B: push eax
0086331C: lea eax, var_30
0086331F: push eax
00863320: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00863325: add esp, 00000010h
00863328: push eax
00863329: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086332E: push eax
0086332F: lea eax, var_1C
00863332: push eax
00863333: call 00410A84h ; Set (object)
00863338: mov var_000000D4, eax
0086333E: mov var_78, 80020004h
00863345: mov var_80, 0000000Ah
0086334C: mov var_68, 80020004h
00863353: mov var_70, 0000000Ah
0086335A: mov var_000000A8, 00456E04h ; Longitude
00863364: mov var_000000B0, 00000008h
0086336E: lea edx, var_000000B0
00863374: lea ecx, var_60
00863377: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086337C: mov var_00000098, 00456DECh ; longitude
00863386: mov var_000000A0, 00000008h
00863390: lea edx, var_000000A0
00863396: lea ecx, var_50
00863399: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086339E: mov var_38, 80020004h
008633A5: mov var_40, 0000000Ah
008633AC: lea eax, var_20
008633AF: push eax
008633B0: lea eax, var_80
008633B3: push eax
008633B4: lea eax, var_70
008633B7: push eax
008633B8: lea eax, var_60
008633BB: push eax
008633BC: lea eax, var_50
008633BF: push eax
008633C0: lea eax, var_40
008633C3: push eax
008633C4: mov eax, var_000000D4
008633CA: mov eax, [eax]
008633CC: push var_000000D4
008633D2: call [eax+28h]
008633D5: fclex 
008633D7: mov var_000000D8, eax
008633DD: cmp var_000000D8, 00000000h
008633E4: jnl 863406h
008633E6: push 00000028h
008633E8: push 004412BCh
008633ED: push var_000000D4
008633F3: push var_000000D8
008633F9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008633FE: mov var_00000194, eax
00863404: jmp 86340Dh
00863406: and var_00000194, 00000000h
0086340D: lea eax, var_20
00863410: push eax
00863411: lea eax, var_1C
00863414: push eax
00863415: lea eax, var_18
00863418: push eax
00863419: push 00000003h
0086341B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00863420: add esp, 00000010h
00863423: lea eax, var_80
00863426: push eax
00863427: lea eax, var_70
0086342A: push eax
0086342B: lea eax, var_60
0086342E: push eax
0086342F: lea eax, var_50
00863432: push eax
00863433: lea eax, var_40
00863436: push eax
00863437: lea eax, var_30
0086343A: push eax
0086343B: push 00000006h
0086343D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00863442: add esp, 0000001Ch
00863445: push 004412BCh
0086344A: push 00000000h
0086344C: push 00000007h
0086344E: mov eax, [ebp+08h]
00863451: mov eax, [eax]
00863453: push [ebp+08h]
00863456: call [eax+0000030Ch]
0086345C: push eax
0086345D: lea eax, var_18
00863460: push eax
00863461: call 00410A84h ; Set (object)
00863466: push eax
00863467: lea eax, var_30
0086346A: push eax
0086346B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00863470: add esp, 00000010h
00863473: push eax
00863474: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00863479: push eax
0086347A: lea eax, var_1C
0086347D: push eax
0086347E: call 00410A84h ; Set (object)
00863483: mov var_000000D4, eax
00863489: mov var_78, 80020004h
00863490: mov var_80, 0000000Ah
00863497: mov var_68, 80020004h
0086349E: mov var_70, 0000000Ah
008634A5: mov var_000000A8, 00456E34h ; Latitude
008634AF: mov var_000000B0, 00000008h
008634B9: lea edx, var_000000B0
008634BF: lea ecx, var_60
008634C2: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008634C7: mov var_00000098, 00456E1Ch ; latitude
008634D1: mov var_000000A0, 00000008h
008634DB: lea edx, var_000000A0
008634E1: lea ecx, var_50
008634E4: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008634E9: mov var_38, 80020004h
008634F0: mov var_40, 0000000Ah
008634F7: lea eax, var_20
008634FA: push eax
008634FB: lea eax, var_80
008634FE: push eax
008634FF: lea eax, var_70
00863502: push eax
00863503: lea eax, var_60
00863506: push eax
00863507: lea eax, var_50
0086350A: push eax
0086350B: lea eax, var_40
0086350E: push eax
0086350F: mov eax, var_000000D4
00863515: mov eax, [eax]
00863517: push var_000000D4
0086351D: call [eax+28h]
00863520: fclex 
00863522: mov var_000000D8, eax
00863528: cmp var_000000D8, 00000000h
0086352F: jnl 863551h
00863531: push 00000028h
00863533: push 004412BCh
00863538: push var_000000D4
0086353E: push var_000000D8
00863544: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00863549: mov var_00000198, eax
0086354F: jmp 863558h
00863551: and var_00000198, 00000000h
00863558: lea eax, var_20
0086355B: push eax
0086355C: lea eax, var_1C
0086355F: push eax
00863560: lea eax, var_18
00863563: push eax
00863564: push 00000003h
00863566: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086356B: add esp, 00000010h
0086356E: lea eax, var_80
00863571: push eax
00863572: lea eax, var_70
00863575: push eax
00863576: lea eax, var_60
00863579: push eax
0086357A: lea eax, var_50
0086357D: push eax
0086357E: lea eax, var_40
00863581: push eax
00863582: lea eax, var_30
00863585: push eax
00863586: push 00000006h
00863588: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086358D: add esp, 0000001Ch
00863590: mov var_04, 00000000h
00863597: push 008635D8h
0086359C: jmp 8635D7h
0086359E: lea eax, var_20
008635A1: push eax
008635A2: lea eax, var_1C
008635A5: push eax
008635A6: lea eax, var_18
008635A9: push eax
008635AA: push 00000003h
008635AC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008635B1: add esp, 00000010h
008635B4: lea eax, var_80
008635B7: push eax
008635B8: lea eax, var_70
008635BB: push eax
008635BC: lea eax, var_60
008635BF: push eax
008635C0: lea eax, var_50
008635C3: push eax
008635C4: lea eax, var_40
008635C7: push eax
008635C8: lea eax, var_30
008635CB: push eax
008635CC: push 00000006h
008635CE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008635D3: add esp, 0000001Ch
008635D6: ret 
End Sub

Private sub Form__8635F7
008635F7: push ebp
008635F8: mov ebp, esp
008635FA: sub esp, 00000018h
008635FD: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00863602: mov eax, fs:[00h]
00863608: push eax
00863609: mov fs:[00000000h], esp
00863610: mov eax, 000000B0h
00863615: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086361A: push ebx
0086361B: push esi
0086361C: push edi
0086361D: mov var_18, esp
00863620: mov var_14, 0040CEA0h
00863627: mov eax, [ebp+08h]
0086362A: and eax, 00000001h
0086362D: mov var_10, eax
00863630: mov eax, [ebp+08h]
00863633: and al, FEh
00863635: mov [ebp+08h], eax
00863638: mov var_0C, 00000000h
0086363F: mov eax, [ebp+08h]
00863642: mov eax, [eax]
00863644: push [ebp+08h]
00863647: call [eax+04h]
0086364A: mov var_04, 00000001h
00863651: mov var_04, 00000002h
00863658: push FFFFFFFFh
0086365A: call 00410A60h ; On Error ...
0086365F: mov var_04, 00000003h
00863666: fldz 
00863668: fstp real4 ptr var_2C
0086366B: mov var_34, 00000004h
00863672: and var_4C, 00000000h
00863676: mov var_54, 00000002h
0086367D: lea eax, var_000000A8
00863683: push eax
00863684: mov eax, [ebp+08h]
00863687: mov eax, [eax]
00863689: push [ebp+08h]
0086368C: call [eax+00000080h]
00863692: fclex 
00863694: mov var_000000B0, eax
0086369A: cmp var_000000B0, 00000000h
008636A1: jnl 8636C3h
008636A3: push 00000080h
008636A8: push 00444ABCh
008636AD: push [ebp+08h]
008636B0: push var_000000B0
008636B6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008636BB: mov var_000000CC, eax
008636C1: jmp 8636CAh
008636C3: and var_000000CC, 00000000h
008636CA: fld real4 ptr var_000000A8
008636D0: fsub real4 ptr [00402BB4h]
008636D6: fstp real4 ptr var_6C
008636D9: fstsw ax
008636DB: test al, 0Dh
008636DD: jnz 0086380Ch
008636E3: mov var_74, 00000004h
008636EA: lea eax, var_000000AC
008636F0: push eax
008636F1: mov eax, [ebp+08h]
008636F4: mov eax, [eax]
008636F6: push [ebp+08h]
008636F9: call [eax+00000088h]
008636FF: fclex 
00863701: mov var_000000B4, eax
00863707: cmp var_000000B4, 00000000h
0086370E: jnl 863730h
00863710: push 00000088h
00863715: push 00444ABCh
0086371A: push [ebp+08h]
0086371D: push var_000000B4
00863723: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00863728: mov var_000000D0, eax
0086372E: jmp 863737h
00863730: and var_000000D0, 00000000h
00863737: fld real4 ptr var_000000AC
0086373D: fsub real4 ptr [00402B80h]
00863743: fstp real4 ptr var_0000008C
00863749: fstsw ax
0086374B: test al, 0Dh
0086374D: jnz 0086380Ch
00863753: mov var_00000094, 00000004h
0086375D: push 00000010h
0086375F: pop eax
00863760: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00863765: lea esi, var_34
00863768: mov edi, esp
0086376A: movsd 
0086376B: movsd 
0086376C: movsd 
0086376D: movsd 
0086376E: push 00000010h
00863770: pop eax
00863771: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00863776: lea esi, var_54
00863779: mov edi, esp
0086377B: movsd 
0086377C: movsd 
0086377D: movsd 
0086377E: movsd 
0086377F: push 00000010h
00863781: pop eax
00863782: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00863787: lea esi, var_74
0086378A: mov edi, esp
0086378C: movsd 
0086378D: movsd 
0086378E: movsd 
0086378F: movsd 
00863790: push 00000010h
00863792: pop eax
00863793: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00863798: lea esi, var_00000094
0086379E: mov edi, esp
008637A0: movsd 
008637A1: movsd 
008637A2: movsd 
008637A3: movsd 
008637A4: push 00000004h
008637A6: push 80011002h
008637AB: mov eax, [ebp+08h]
008637AE: mov eax, [eax]
008637B0: push [ebp+08h]
008637B3: call [eax+0000030Ch]
008637B9: push eax
008637BA: lea eax, var_24
008637BD: push eax
008637BE: call 00410A84h ; Set (object)
008637C3: push eax
008637C4: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008637C9: add esp, 0000004Ch
008637CC: lea ecx, var_24
008637CF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008637D4: mov var_10, 00000000h
008637DB: wait 
008637DC: push 008637EDh
008637E1: jmp 8637ECh
008637E3: lea ecx, var_24
008637E6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008637EB: ret 
End Sub

Private sub Timer1__867B1B
00867B1B: push ebp
00867B1C: mov ebp, esp
00867B1E: sub esp, 0000000Ch
00867B21: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00867B26: mov eax, fs:[00h]
00867B2C: push eax
00867B2D: mov fs:[00000000h], esp
00867B34: push 0000003Ch
00867B36: pop eax
00867B37: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00867B3C: push ebx
00867B3D: push esi
00867B3E: push edi
00867B3F: mov var_0C, esp
00867B42: mov var_08, 0040D060h
00867B49: mov eax, [ebp+08h]
00867B4C: and eax, 00000001h
00867B4F: mov var_04, eax
00867B52: mov eax, [ebp+08h]
00867B55: and al, FEh
00867B57: mov [ebp+08h], eax
00867B5A: mov eax, [ebp+08h]
00867B5D: mov eax, [eax]
00867B5F: push [ebp+08h]
00867B62: call [eax+04h]
00867B65: cmp [008F2010h], 00000000h
00867B6C: jnz 867B86h
00867B6E: push 008F2010h
00867B73: push 00433984h
00867B78: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00867B7D: mov var_40, 008F2010h
00867B84: jmp 867B8Dh
00867B86: mov var_40, 008F2010h
00867B8D: mov eax, var_40
00867B90: mov eax, [eax]
00867B92: mov ecx, var_40
00867B95: mov ecx, [ecx]
00867B97: mov ecx, [ecx]
00867B99: push eax
00867B9A: call [ecx+00000380h]
00867BA0: push eax
00867BA1: lea eax, var_18
00867BA4: push eax
00867BA5: call 00410A84h ; Set (object)
00867BAA: mov var_24, eax
00867BAD: lea eax, var_1C
00867BB0: push eax
00867BB1: push 00000003h
00867BB3: mov eax, var_24
00867BB6: mov eax, [eax]
00867BB8: push var_24
00867BBB: call [eax+40h]
00867BBE: fclex 
00867BC0: mov var_28, eax
00867BC3: cmp var_28, 00000000h
00867BC7: jnl 867BE0h
00867BC9: push 00000040h
00867BCB: push 00440DE8h
00867BD0: push var_24
00867BD3: push var_28
00867BD6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00867BDB: mov var_44, eax
00867BDE: jmp 867BE4h
00867BE0: and var_44, 00000000h
00867BE4: mov eax, var_1C
00867BE7: mov var_2C, eax
00867BEA: lea eax, var_20
00867BED: push eax
00867BEE: mov eax, var_2C
00867BF1: mov eax, [eax]
00867BF3: push var_2C
00867BF6: call [eax+000000E0h]
00867BFC: fclex 
00867BFE: mov var_30, eax
00867C01: cmp var_30, 00000000h
00867C05: jnl 867C21h
00867C07: push 000000E0h
00867C0C: push 00440DF8h
00867C11: push var_2C
00867C14: push var_30
00867C17: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00867C1C: mov var_48, eax
00867C1F: jmp 867C25h
00867C21: and var_48, 00000000h
00867C25: xor eax, eax
00867C27: cmp word ptr var_20, 0001h
00867C2C: setz al
00867C2F: neg eax
00867C31: mov var_34, ax
00867C35: lea eax, var_1C
00867C38: push eax
00867C39: lea eax, var_18
00867C3C: push eax
00867C3D: push 00000002h
00867C3F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00867C44: add esp, 0000000Ch
00867C47: movsx eax, word ptr var_34
00867C4B: test eax, eax
00867C4D: jz 867C8Dh
00867C4F: and word ptr var_20, 0000h
00867C54: lea eax, var_20
00867C57: push eax
00867C58: mov eax, [ebp+08h]
00867C5B: mov eax, [eax]
00867C5D: push [ebp+08h]
00867C60: call [eax+0000070Ch]
00867C66: mov var_24, eax
00867C69: cmp var_24, 00000000h
00867C6D: jnl 867C89h
00867C6F: push 0000070Ch
00867C74: push 004403F0h
00867C79: push [ebp+08h]
00867C7C: push var_24
00867C7F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00867C84: mov var_4C, eax
00867C87: jmp 867C8Dh
00867C89: and var_4C, 00000000h
00867C8D: mov eax, [ebp+08h]
00867C90: mov eax, [eax]
00867C92: push [ebp+08h]
00867C95: call [eax+000002FCh]
00867C9B: push eax
00867C9C: lea eax, var_18
00867C9F: push eax
00867CA0: call 00410A84h ; Set (object)
00867CA5: mov var_24, eax
00867CA8: push 00000000h
00867CAA: mov eax, var_24
00867CAD: mov eax, [eax]
00867CAF: push var_24
00867CB2: call [eax+5Ch]
00867CB5: fclex 
00867CB7: mov var_28, eax
00867CBA: cmp var_28, 00000000h
00867CBE: jnl 867CD7h
00867CC0: push 0000005Ch
00867CC2: push 00447A20h
00867CC7: push var_24
00867CCA: push var_28
00867CCD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00867CD2: mov var_50, eax
00867CD5: jmp 867CDBh
00867CD7: and var_50, 00000000h
00867CDB: lea ecx, var_18
00867CDE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00867CE3: mov var_04, 00000000h
00867CEA: push 00867D05h
00867CEF: jmp 867D04h
00867CF1: lea eax, var_1C
00867CF4: push eax
00867CF5: lea eax, var_18
00867CF8: push eax
00867CF9: push 00000002h
00867CFB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00867D00: add esp, 0000000Ch
00867D03: ret 
End Sub

Private sub unknown_8651F7
008651F7: push ebp
008651F8: mov ebp, esp
008651FA: sub esp, 00000018h
008651FD: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00865202: mov eax, fs:[00h]
00865208: push eax
00865209: mov fs:[00000000h], esp
00865210: mov eax, 000001B0h
00865215: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086521A: push ebx
0086521B: push esi
0086521C: push edi
0086521D: mov var_18, esp
00865220: mov var_14, 0040CFA8h
00865227: mov var_10, 00000000h
0086522E: mov var_0C, 00000000h
00865235: mov eax, [ebp+08h]
00865238: mov eax, [eax]
0086523A: push [ebp+08h]
0086523D: call [eax+04h]
00865240: mov var_04, 00000001h
00865247: mov var_04, 00000002h
0086524E: push FFFFFFFFh
00865250: call 00410A60h ; On Error ...
00865255: mov var_04, 00000003h
0086525C: mov var_7C, 00000001h
00865263: mov var_00000084, 00000002h
0086526D: mov eax, [ebp+0Ch]
00865270: push [eax]
00865272: push 00000001h
00865274: call 00410886h ; UBound
00865279: mov var_0000008C, eax
0086527F: mov var_00000094, 00000003h
00865289: mov eax, [ebp+0Ch]
0086528C: push [eax]
0086528E: push 00000001h
00865290: call 00410880h ; LBound(arg_1)
00865295: mov var_0000009C, eax
0086529B: mov var_000000A4, 00000003h
008652A5: lea eax, var_00000084
008652AB: push eax
008652AC: lea eax, var_00000094
008652B2: push eax
008652B3: lea eax, var_000000A4
008652B9: push eax
008652BA: lea eax, var_000000D8
008652C0: push eax
008652C1: lea eax, var_000000C8
008652C7: push eax
008652C8: lea eax, var_30
008652CB: push eax
008652CC: call 00410A3Ch ; For
008652D1: mov var_000000F0, eax
008652D7: jmp 86534Ch
008652D9: mov var_04, 00000004h
008652E0: lea eax, var_30
008652E3: push eax
008652E4: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008652E9: push eax
008652EA: mov eax, [ebp+0Ch]
008652ED: push [eax]
008652EF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008652F4: push [eax]
008652F6: call 0041098Eh ; Len(arg_1)
008652FB: test eax, eax
008652FD: jnz 865328h
008652FF: mov var_04, 00000005h
00865306: mov esi, 00441194h ; N/A
0086530B: lea eax, var_30
0086530E: push eax
0086530F: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00865314: push eax
00865315: mov eax, [ebp+0Ch]
00865318: push [eax]
0086531A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0086531F: mov ecx, eax
00865321: mov edx, esi
00865323: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00865328: mov var_04, 00000007h
0086532F: lea eax, var_000000D8
00865335: push eax
00865336: lea eax, var_000000C8
0086533C: push eax
0086533D: lea eax, var_30
00865340: push eax
00865341: call 00410A36h ; Next
00865346: mov var_000000F0, eax
0086534C: cmp var_000000F0, 00000000h
00865353: jnz 8652D9h
00865355: mov var_04, 00000008h
0086535C: lea eax, var_34
0086535F: push eax
00865360: mov eax, [ebp+08h]
00865363: mov eax, [eax]
00865365: push [ebp+08h]
00865368: call [eax+000001C0h]
0086536E: fclex 
00865370: mov var_000000A8, eax
00865376: cmp var_000000A8, 00000000h
0086537D: jnl 86539Fh
0086537F: push 000001C0h
00865384: push 00444ABCh
00865389: push [ebp+08h]
0086538C: push var_000000A8
00865392: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00865397: mov var_000000F4, eax
0086539D: jmp 8653A6h
0086539F: and var_000000F4, 00000000h
008653A6: push var_34
008653A9: call 004109DCh ; Val(arg_1)
008653AE: push ecx
008653AF: push ecx
008653B0: fstp real8 ptr [esp]
008653B3: call 00410790h ; msvbvm60.dll.__vbaStrR8
008653B8: mov edx, eax
008653BA: lea ecx, var_38
008653BD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008653C2: push eax
008653C3: push 004417CCh ; sck
008653C8: call 00410A18h ; &
008653CD: mov var_5C, eax
008653D0: mov var_64, 00000008h
008653D7: cmp [008F2010h], 00000000h
008653DE: jnz 8653FBh
008653E0: push 008F2010h
008653E5: push 00433984h
008653EA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008653EF: mov var_000000F8, 008F2010h
008653F9: jmp 865405h
008653FB: mov var_000000F8, 008F2010h
00865405: push 00440E58h
0086540A: push 00000010h
0086540C: pop eax
0086540D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00865412: lea esi, var_64
00865415: mov edi, esp
00865417: movsd 
00865418: movsd 
00865419: movsd 
0086541A: movsd 
0086541B: push 00000001h
0086541D: push 00000000h
0086541F: push 00440E48h
00865424: push 00000000h
00865426: push 00000018h
00865428: mov eax, var_000000F8
0086542E: mov eax, [eax]
00865430: mov ecx, var_000000F8
00865436: mov ecx, [ecx]
00865438: mov ecx, [ecx]
0086543A: push eax
0086543B: call [ecx+00000550h]
00865441: push eax
00865442: lea eax, var_3C
00865445: push eax
00865446: call 00410A84h ; Set (object)
0086544B: push eax
0086544C: lea eax, var_54
0086544F: push eax
00865450: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00865455: add esp, 00000010h
00865458: push eax
00865459: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086545E: push eax
0086545F: lea eax, var_40
00865462: push eax
00865463: call 00410A84h ; Set (object)
00865468: push eax
00865469: lea eax, var_74
0086546C: push eax
0086546D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00865472: add esp, 00000020h
00865475: push eax
00865476: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086547B: push eax
0086547C: lea eax, var_000000B8
00865482: push eax
00865483: call 00410A84h ; Set (object)
00865488: lea eax, var_38
0086548B: push eax
0086548C: lea eax, var_34
0086548F: push eax
00865490: push 00000002h
00865492: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00865497: add esp, 0000000Ch
0086549A: lea eax, var_40
0086549D: push eax
0086549E: lea eax, var_3C
008654A1: push eax
008654A2: push 00000002h
008654A4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008654A9: add esp, 0000000Ch
008654AC: lea eax, var_74
008654AF: push eax
008654B0: lea eax, var_64
008654B3: push eax
008654B4: lea eax, var_54
008654B7: push eax
008654B8: push 00000003h
008654BA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008654BF: add esp, 00000010h
008654C2: mov var_04, 00000009h
008654C9: push 004412BCh
008654CE: push 00000000h
008654D0: push 00000007h
008654D2: mov eax, [ebp+08h]
008654D5: mov eax, [eax]
008654D7: push [ebp+08h]
008654DA: call [eax+0000030Ch]
008654E0: push eax
008654E1: lea eax, var_3C
008654E4: push eax
008654E5: call 00410A84h ; Set (object)
008654EA: push eax
008654EB: lea eax, var_64
008654EE: push eax
008654EF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008654F4: add esp, 00000010h
008654F7: push eax
008654F8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008654FD: push eax
008654FE: lea eax, var_40
00865501: push eax
00865502: call 00410A84h ; Set (object)
00865507: mov var_000000A8, eax
0086550D: mov var_7C, 00456AB4h ; id
00865514: mov var_00000084, 00000008h
0086551E: lea edx, var_00000084
00865524: lea ecx, var_74
00865527: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086552C: lea eax, var_44
0086552F: push eax
00865530: lea eax, var_74
00865533: push eax
00865534: mov eax, var_000000A8
0086553A: mov eax, [eax]
0086553C: push var_000000A8
00865542: call [eax+24h]
00865545: fclex 
00865547: mov var_000000AC, eax
0086554D: cmp var_000000AC, 00000000h
00865554: jnl 865576h
00865556: push 00000024h
00865558: push 004412BCh
0086555D: push var_000000A8
00865563: push var_000000AC
00865569: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086556E: mov var_000000FC, eax
00865574: jmp 86557Dh
00865576: and var_000000FC, 00000000h
0086557D: mov eax, var_44
00865580: mov var_000000B0, eax
00865586: push 00000000h
00865588: push 00000000h
0086558A: push var_000000B8
00865590: lea eax, var_54
00865593: push eax
00865594: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00865599: add esp, 00000010h
0086559C: push eax
0086559D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008655A2: mov edx, eax
008655A4: lea ecx, var_34
008655A7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008655AC: push eax
008655AD: push 00000001h
008655AF: mov eax, var_000000B0
008655B5: mov eax, [eax]
008655B7: push var_000000B0
008655BD: call [eax+00000088h]
008655C3: fclex 
008655C5: mov var_000000B4, eax
008655CB: cmp var_000000B4, 00000000h
008655D2: jnl 8655F7h
008655D4: push 00000088h
008655D9: push 004412DCh
008655DE: push var_000000B0
008655E4: push var_000000B4
008655EA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008655EF: mov var_00000100, eax
008655F5: jmp 8655FEh
008655F7: and var_00000100, 00000000h
008655FE: lea ecx, var_34
00865601: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00865606: lea eax, var_44
00865609: push eax
0086560A: lea eax, var_40
0086560D: push eax
0086560E: lea eax, var_3C
00865611: push eax
00865612: push 00000003h
00865614: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00865619: add esp, 00000010h
0086561C: lea eax, var_74
0086561F: push eax
00865620: lea eax, var_64
00865623: push eax
00865624: lea eax, var_54
00865627: push eax
00865628: push 00000003h
0086562A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086562F: add esp, 00000010h
00865632: mov var_04, 0000000Ah
00865639: push 004412BCh
0086563E: push 00000000h
00865640: push 00000007h
00865642: mov eax, [ebp+08h]
00865645: mov eax, [eax]
00865647: push [ebp+08h]
0086564A: call [eax+0000030Ch]
00865650: push eax
00865651: lea eax, var_3C
00865654: push eax
00865655: call 00410A84h ; Set (object)
0086565A: push eax
0086565B: lea eax, var_64
0086565E: push eax
0086565F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00865664: add esp, 00000010h
00865667: push eax
00865668: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086566D: push eax
0086566E: lea eax, var_40
00865671: push eax
00865672: call 00410A84h ; Set (object)
00865677: mov var_000000A8, eax
0086567D: mov var_0000009C, 00456AC0h ; version
00865687: mov var_000000A4, 00000008h
00865691: lea edx, var_000000A4
00865697: lea ecx, var_74
0086569A: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086569F: lea eax, var_44
008656A2: push eax
008656A3: lea eax, var_74
008656A6: push eax
008656A7: mov eax, var_000000A8
008656AD: mov eax, [eax]
008656AF: push var_000000A8
008656B5: call [eax+24h]
008656B8: fclex 
008656BA: mov var_000000AC, eax
008656C0: cmp var_000000AC, 00000000h
008656C7: jnl 8656E9h
008656C9: push 00000024h
008656CB: push 004412BCh
008656D0: push var_000000A8
008656D6: push var_000000AC
008656DC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008656E1: mov var_00000104, eax
008656E7: jmp 8656F0h
008656E9: and var_00000104, 00000000h
008656F0: mov eax, var_44
008656F3: mov var_000000B0, eax
008656F9: mov var_7C, 0000000Fh
00865700: mov var_00000084, 00000003h
0086570A: push 00000010h
0086570C: pop eax
0086570D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00865712: lea esi, var_00000084
00865718: mov edi, esp
0086571A: movsd 
0086571B: movsd 
0086571C: movsd 
0086571D: movsd 
0086571E: push 00000001h
00865720: push 00000010h
00865722: push var_000000B8
00865728: lea eax, var_54
0086572B: push eax
0086572C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00865731: add esp, 00000020h
00865734: push eax
00865735: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086573A: mov edx, eax
0086573C: lea ecx, var_34
0086573F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00865744: push eax
00865745: push 00000001h
00865747: mov eax, var_000000B0
0086574D: mov eax, [eax]
0086574F: push var_000000B0
00865755: call [eax+00000088h]
0086575B: fclex 
0086575D: mov var_000000B4, eax
00865763: cmp var_000000B4, 00000000h
0086576A: jnl 86578Fh
0086576C: push 00000088h
00865771: push 004412DCh
00865776: push var_000000B0
0086577C: push var_000000B4
00865782: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00865787: mov var_00000108, eax
0086578D: jmp 865796h
0086578F: and var_00000108, 00000000h
00865796: lea ecx, var_34
00865799: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0086579E: lea eax, var_44
008657A1: push eax
008657A2: lea eax, var_40
008657A5: push eax
008657A6: lea eax, var_3C
008657A9: push eax
008657AA: push 00000003h
008657AC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008657B1: add esp, 00000010h
008657B4: lea eax, var_74
008657B7: push eax
008657B8: lea eax, var_64
008657BB: push eax
008657BC: lea eax, var_54
008657BF: push eax
008657C0: push 00000003h
008657C2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008657C7: add esp, 00000010h
008657CA: mov var_04, 0000000Bh
008657D1: push 004412BCh
008657D6: push 00000000h
008657D8: push 00000007h
008657DA: mov eax, [ebp+08h]
008657DD: mov eax, [eax]
008657DF: push [ebp+08h]
008657E2: call [eax+0000030Ch]
008657E8: push eax
008657E9: lea eax, var_3C
008657EC: push eax
008657ED: call 00410A84h ; Set (object)
008657F2: push eax
008657F3: lea eax, var_54
008657F6: push eax
008657F7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008657FC: add esp, 00000010h
008657FF: push eax
00865800: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00865805: push eax
00865806: lea eax, var_40
00865809: push eax
0086580A: call 00410A84h ; Set (object)
0086580F: mov var_000000A8, eax
00865815: mov var_7C, 00456AD4h ; wan
0086581C: mov var_00000084, 00000008h
00865826: lea edx, var_00000084
0086582C: lea ecx, var_64
0086582F: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00865834: lea eax, var_44
00865837: push eax
00865838: lea eax, var_64
0086583B: push eax
0086583C: mov eax, var_000000A8
00865842: mov eax, [eax]
00865844: push var_000000A8
0086584A: call [eax+24h]
0086584D: fclex 
0086584F: mov var_000000AC, eax
00865855: cmp var_000000AC, 00000000h
0086585C: jnl 86587Eh
0086585E: push 00000024h
00865860: push 004412BCh
00865865: push var_000000A8
0086586B: push var_000000AC
00865871: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00865876: mov var_0000010C, eax
0086587C: jmp 865885h
0086587E: and var_0000010C, 00000000h
00865885: mov eax, var_44
00865888: mov var_000000B0, eax
0086588E: push 00000000h
00865890: mov eax, [ebp+0Ch]
00865893: push [eax]
00865895: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0086589A: push [eax]
0086589C: push 00000001h
0086589E: mov eax, var_000000B0
008658A4: mov eax, [eax]
008658A6: push var_000000B0
008658AC: call [eax+00000088h]
008658B2: fclex 
008658B4: mov var_000000B4, eax
008658BA: cmp var_000000B4, 00000000h
008658C1: jnl 8658E6h
008658C3: push 00000088h
008658C8: push 004412DCh
008658CD: push var_000000B0
008658D3: push var_000000B4
008658D9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008658DE: mov var_00000110, eax
008658E4: jmp 8658EDh
008658E6: and var_00000110, 00000000h
008658ED: lea eax, var_44
008658F0: push eax
008658F1: lea eax, var_40
008658F4: push eax
008658F5: lea eax, var_3C
008658F8: push eax
008658F9: push 00000003h
008658FB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00865900: add esp, 00000010h
00865903: lea eax, var_64
00865906: push eax
00865907: lea eax, var_54
0086590A: push eax
0086590B: push 00000002h
0086590D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00865912: add esp, 0000000Ch
00865915: mov var_04, 0000000Ch
0086591C: push 004412BCh
00865921: push 00000000h
00865923: push 00000007h
00865925: mov eax, [ebp+08h]
00865928: mov eax, [eax]
0086592A: push [ebp+08h]
0086592D: call [eax+0000030Ch]
00865933: push eax
00865934: lea eax, var_3C
00865937: push eax
00865938: call 00410A84h ; Set (object)
0086593D: push eax
0086593E: lea eax, var_64
00865941: push eax
00865942: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00865947: add esp, 00000010h
0086594A: push eax
0086594B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00865950: push eax
00865951: lea eax, var_40
00865954: push eax
00865955: call 00410A84h ; Set (object)
0086595A: mov var_000000A8, eax
00865960: mov var_0000009C, 00456AE0h ; lan
0086596A: mov var_000000A4, 00000008h
00865974: lea edx, var_000000A4
0086597A: lea ecx, var_74
0086597D: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00865982: lea eax, var_44
00865985: push eax
00865986: lea eax, var_74
00865989: push eax
0086598A: mov eax, var_000000A8
00865990: mov eax, [eax]
00865992: push var_000000A8
00865998: call [eax+24h]
0086599B: fclex 
0086599D: mov var_000000AC, eax
008659A3: cmp var_000000AC, 00000000h
008659AA: jnl 8659CCh
008659AC: push 00000024h
008659AE: push 004412BCh
008659B3: push var_000000A8
008659B9: push var_000000AC
008659BF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008659C4: mov var_00000114, eax
008659CA: jmp 8659D3h
008659CC: and var_00000114, 00000000h
008659D3: mov eax, var_44
008659D6: mov var_000000B0, eax
008659DC: mov var_7C, 00000002h
008659E3: mov var_00000084, 00000003h
008659ED: push 00000010h
008659EF: pop eax
008659F0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008659F5: lea esi, var_00000084
008659FB: mov edi, esp
008659FD: movsd 
008659FE: movsd 
008659FF: movsd 
00865A00: movsd 
00865A01: push 00000001h
00865A03: push 00000010h
00865A05: push var_000000B8
00865A0B: lea eax, var_54
00865A0E: push eax
00865A0F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00865A14: add esp, 00000020h
00865A17: push eax
00865A18: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00865A1D: mov edx, eax
00865A1F: lea ecx, var_34
00865A22: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00865A27: push eax
00865A28: push 00000001h
00865A2A: mov eax, var_000000B0
00865A30: mov eax, [eax]
00865A32: push var_000000B0
00865A38: call [eax+00000088h]
00865A3E: fclex 
00865A40: mov var_000000B4, eax
00865A46: cmp var_000000B4, 00000000h
00865A4D: jnl 865A72h
00865A4F: push 00000088h
00865A54: push 004412DCh
00865A59: push var_000000B0
00865A5F: push var_000000B4
00865A65: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00865A6A: mov var_00000118, eax
00865A70: jmp 865A79h
00865A72: and var_00000118, 00000000h
00865A79: lea ecx, var_34
00865A7C: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00865A81: lea eax, var_44
00865A84: push eax
00865A85: lea eax, var_40
00865A88: push eax
00865A89: lea eax, var_3C
00865A8C: push eax
00865A8D: push 00000003h
00865A8F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00865A94: add esp, 00000010h
00865A97: lea eax, var_74
00865A9A: push eax
00865A9B: lea eax, var_64
00865A9E: push eax
00865A9F: lea eax, var_54
00865AA2: push eax
00865AA3: push 00000003h
00865AA5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00865AAA: add esp, 00000010h
00865AAD: mov var_04, 0000000Dh
00865AB4: push 004412BCh
00865AB9: push 00000000h
00865ABB: push 00000007h
00865ABD: mov eax, [ebp+08h]
00865AC0: mov eax, [eax]
00865AC2: push [ebp+08h]
00865AC5: call [eax+0000030Ch]
00865ACB: push eax
00865ACC: lea eax, var_3C
00865ACF: push eax
00865AD0: call 00410A84h ; Set (object)
00865AD5: push eax
00865AD6: lea eax, var_54
00865AD9: push eax
00865ADA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00865ADF: add esp, 00000010h
00865AE2: push eax
00865AE3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00865AE8: push eax
00865AE9: lea eax, var_40
00865AEC: push eax
00865AED: call 00410A84h ; Set (object)
00865AF2: mov var_000000A8, eax
00865AF8: mov var_7C, 00456B00h ; comport
00865AFF: mov var_00000084, 00000008h
00865B09: lea edx, var_00000084
00865B0F: lea ecx, var_64
00865B12: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00865B17: lea eax, var_44
00865B1A: push eax
00865B1B: lea eax, var_64
00865B1E: push eax
00865B1F: mov eax, var_000000A8
00865B25: mov eax, [eax]
00865B27: push var_000000A8
00865B2D: call [eax+24h]
00865B30: fclex 
00865B32: mov var_000000AC, eax
00865B38: cmp var_000000AC, 00000000h
00865B3F: jnl 865B61h
00865B41: push 00000024h
00865B43: push 004412BCh
00865B48: push var_000000A8
00865B4E: push var_000000AC
00865B54: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00865B59: mov var_0000011C, eax
00865B5F: jmp 865B68h
00865B61: and var_0000011C, 00000000h
00865B68: mov eax, var_44
00865B6B: mov var_000000B0, eax
00865B71: push 00000010h
00865B73: mov eax, [ebp+0Ch]
00865B76: push [eax]
00865B78: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00865B7D: push [eax]
00865B7F: push 00000001h
00865B81: mov eax, var_000000B0
00865B87: mov eax, [eax]
00865B89: push var_000000B0
00865B8F: call [eax+00000088h]
00865B95: fclex 
00865B97: mov var_000000B4, eax
00865B9D: cmp var_000000B4, 00000000h
00865BA4: jnl 865BC9h
00865BA6: push 00000088h
00865BAB: push 004412DCh
00865BB0: push var_000000B0
00865BB6: push var_000000B4
00865BBC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00865BC1: mov var_00000120, eax
00865BC7: jmp 865BD0h
00865BC9: and var_00000120, 00000000h
00865BD0: lea eax, var_44
00865BD3: push eax
00865BD4: lea eax, var_40
00865BD7: push eax
00865BD8: lea eax, var_3C
00865BDB: push eax
00865BDC: push 00000003h
00865BDE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00865BE3: add esp, 00000010h
00865BE6: lea eax, var_64
00865BE9: push eax
00865BEA: lea eax, var_54
00865BED: push eax
00865BEE: push 00000002h
00865BF0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00865BF5: add esp, 0000000Ch
00865BF8: mov var_04, 0000000Eh
00865BFF: push 004412BCh
00865C04: push 00000000h
00865C06: push 00000007h
00865C08: mov eax, [ebp+08h]
00865C0B: mov eax, [eax]
00865C0D: push [ebp+08h]
00865C10: call [eax+0000030Ch]
00865C16: push eax
00865C17: lea eax, var_3C
00865C1A: push eax
00865C1B: call 00410A84h ; Set (object)
00865C20: push eax
00865C21: lea eax, var_54
00865C24: push eax
00865C25: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00865C2A: add esp, 00000010h
00865C2D: push eax
00865C2E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00865C33: push eax
00865C34: lea eax, var_40
00865C37: push eax
00865C38: call 00410A84h ; Set (object)
00865C3D: mov var_000000A8, eax
00865C43: mov var_7C, 00456B14h ; tsfport
00865C4A: mov var_00000084, 00000008h
00865C54: lea edx, var_00000084
00865C5A: lea ecx, var_64
00865C5D: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00865C62: lea eax, var_44
00865C65: push eax
00865C66: lea eax, var_64
00865C69: push eax
00865C6A: mov eax, var_000000A8
00865C70: mov eax, [eax]
00865C72: push var_000000A8
00865C78: call [eax+24h]
00865C7B: fclex 
00865C7D: mov var_000000AC, eax
00865C83: cmp var_000000AC, 00000000h
00865C8A: jnl 865CACh
00865C8C: push 00000024h
00865C8E: push 004412BCh
00865C93: push var_000000A8
00865C99: push var_000000AC
00865C9F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00865CA4: mov var_00000124, eax
00865CAA: jmp 865CB3h
00865CAC: and var_00000124, 00000000h
00865CB3: mov eax, var_44
00865CB6: mov var_000000B0, eax
00865CBC: push 00000011h
00865CBE: mov eax, [ebp+0Ch]
00865CC1: push [eax]
00865CC3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00865CC8: push [eax]
00865CCA: push 00000001h
00865CCC: mov eax, var_000000B0
00865CD2: mov eax, [eax]
00865CD4: push var_000000B0
00865CDA: call [eax+00000088h]
00865CE0: fclex 
00865CE2: mov var_000000B4, eax
00865CE8: cmp var_000000B4, 00000000h
00865CEF: jnl 865D14h
00865CF1: push 00000088h
00865CF6: push 004412DCh
00865CFB: push var_000000B0
00865D01: push var_000000B4
00865D07: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00865D0C: mov var_00000128, eax
00865D12: jmp 865D1Bh
00865D14: and var_00000128, 00000000h
00865D1B: lea eax, var_44
00865D1E: push eax
00865D1F: lea eax, var_40
00865D22: push eax
00865D23: lea eax, var_3C
00865D26: push eax
00865D27: push 00000003h
00865D29: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00865D2E: add esp, 00000010h
00865D31: lea eax, var_64
00865D34: push eax
00865D35: lea eax, var_54
00865D38: push eax
00865D39: push 00000002h
00865D3B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00865D40: add esp, 0000000Ch
00865D43: mov var_04, 0000000Fh
00865D4A: push 004412BCh
00865D4F: push 00000000h
00865D51: push 00000007h
00865D53: mov eax, [ebp+08h]
00865D56: mov eax, [eax]
00865D58: push [ebp+08h]
00865D5B: call [eax+0000030Ch]
00865D61: push eax
00865D62: lea eax, var_3C
00865D65: push eax
00865D66: call 00410A84h ; Set (object)
00865D6B: push eax
00865D6C: lea eax, var_54
00865D6F: push eax
00865D70: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00865D75: add esp, 00000010h
00865D78: push eax
00865D79: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00865D7E: push eax
00865D7F: lea eax, var_40
00865D82: push eax
00865D83: call 00410A84h ; Set (object)
00865D88: mov var_000000A8, eax
00865D8E: mov var_7C, 00456B48h ; pctype
00865D95: mov var_00000084, 00000008h
00865D9F: lea edx, var_00000084
00865DA5: lea ecx, var_64
00865DA8: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00865DAD: lea eax, var_44
00865DB0: push eax
00865DB1: lea eax, var_64
00865DB4: push eax
00865DB5: mov eax, var_000000A8
00865DBB: mov eax, [eax]
00865DBD: push var_000000A8
00865DC3: call [eax+24h]
00865DC6: fclex 
00865DC8: mov var_000000AC, eax
00865DCE: cmp var_000000AC, 00000000h
00865DD5: jnl 865DF7h
00865DD7: push 00000024h
00865DD9: push 004412BCh
00865DDE: push var_000000A8
00865DE4: push var_000000AC
00865DEA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00865DEF: mov var_0000012C, eax
00865DF5: jmp 865DFEh
00865DF7: and var_0000012C, 00000000h
00865DFE: mov eax, var_44
00865E01: mov var_000000B0, eax
00865E07: push 00000001h
00865E09: mov eax, [ebp+0Ch]
00865E0C: push [eax]
00865E0E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00865E13: push [eax]
00865E15: push 00000001h
00865E17: mov eax, var_000000B0
00865E1D: mov eax, [eax]
00865E1F: push var_000000B0
00865E25: call [eax+00000088h]
00865E2B: fclex 
00865E2D: mov var_000000B4, eax
00865E33: cmp var_000000B4, 00000000h
00865E3A: jnl 865E5Fh
00865E3C: push 00000088h
00865E41: push 004412DCh
00865E46: push var_000000B0
00865E4C: push var_000000B4
00865E52: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00865E57: mov var_00000130, eax
00865E5D: jmp 865E66h
00865E5F: and var_00000130, 00000000h
00865E66: lea eax, var_44
00865E69: push eax
00865E6A: lea eax, var_40
00865E6D: push eax
00865E6E: lea eax, var_3C
00865E71: push eax
00865E72: push 00000003h
00865E74: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00865E79: add esp, 00000010h
00865E7C: lea eax, var_64
00865E7F: push eax
00865E80: lea eax, var_54
00865E83: push eax
00865E84: push 00000002h
00865E86: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00865E8B: add esp, 0000000Ch
00865E8E: mov var_04, 00000010h
00865E95: push 004412BCh
00865E9A: push 00000000h
00865E9C: push 00000007h
00865E9E: mov eax, [ebp+08h]
00865EA1: mov eax, [eax]
00865EA3: push [ebp+08h]
00865EA6: call [eax+0000030Ch]
00865EAC: push eax
00865EAD: lea eax, var_3C
00865EB0: push eax
00865EB1: call 00410A84h ; Set (object)
00865EB6: push eax
00865EB7: lea eax, var_64
00865EBA: push eax
00865EBB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00865EC0: add esp, 00000010h
00865EC3: push eax
00865EC4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00865EC9: push eax
00865ECA: lea eax, var_40
00865ECD: push eax
00865ECE: call 00410A84h ; Set (object)
00865ED3: mov var_000000A8, eax
00865ED9: mov var_0000009C, 00456B70h ; compname
00865EE3: mov var_000000A4, 00000008h
00865EED: lea edx, var_000000A4
00865EF3: lea ecx, var_74
00865EF6: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00865EFB: lea eax, var_44
00865EFE: push eax
00865EFF: lea eax, var_74
00865F02: push eax
00865F03: mov eax, var_000000A8
00865F09: mov eax, [eax]
00865F0B: push var_000000A8
00865F11: call [eax+24h]
00865F14: fclex 
00865F16: mov var_000000AC, eax
00865F1C: cmp var_000000AC, 00000000h
00865F23: jnl 865F45h
00865F25: push 00000024h
00865F27: push 004412BCh
00865F2C: push var_000000A8
00865F32: push var_000000AC
00865F38: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00865F3D: mov var_00000134, eax
00865F43: jmp 865F4Ch
00865F45: and var_00000134, 00000000h
00865F4C: mov eax, var_44
00865F4F: mov var_000000B0, eax
00865F55: mov var_7C, 00000007h
00865F5C: mov var_00000084, 00000003h
00865F66: push 00000010h
00865F68: pop eax
00865F69: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00865F6E: lea esi, var_00000084
00865F74: mov edi, esp
00865F76: movsd 
00865F77: movsd 
00865F78: movsd 
00865F79: movsd 
00865F7A: push 00000001h
00865F7C: push 00000010h
00865F7E: push var_000000B8
00865F84: lea eax, var_54
00865F87: push eax
00865F88: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00865F8D: add esp, 00000020h
00865F90: push eax
00865F91: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00865F96: mov edx, eax
00865F98: lea ecx, var_34
00865F9B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00865FA0: push eax
00865FA1: push 00000001h
00865FA3: mov eax, var_000000B0
00865FA9: mov eax, [eax]
00865FAB: push var_000000B0
00865FB1: call [eax+00000088h]
00865FB7: fclex 
00865FB9: mov var_000000B4, eax
00865FBF: cmp var_000000B4, 00000000h
00865FC6: jnl 865FEBh
00865FC8: push 00000088h
00865FCD: push 004412DCh
00865FD2: push var_000000B0
00865FD8: push var_000000B4
00865FDE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00865FE3: mov var_00000138, eax
00865FE9: jmp 865FF2h
00865FEB: and var_00000138, 00000000h
00865FF2: lea ecx, var_34
00865FF5: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00865FFA: lea eax, var_44
00865FFD: push eax
00865FFE: lea eax, var_40
00866001: push eax
00866002: lea eax, var_3C
00866005: push eax
00866006: push 00000003h
00866008: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086600D: add esp, 00000010h
00866010: lea eax, var_74
00866013: push eax
00866014: lea eax, var_64
00866017: push eax
00866018: lea eax, var_54
0086601B: push eax
0086601C: push 00000003h
0086601E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00866023: add esp, 00000010h
00866026: mov var_04, 00000011h
0086602D: push 004412BCh
00866032: push 00000000h
00866034: push 00000007h
00866036: mov eax, [ebp+08h]
00866039: mov eax, [eax]
0086603B: push [ebp+08h]
0086603E: call [eax+0000030Ch]
00866044: push eax
00866045: lea eax, var_3C
00866048: push eax
00866049: call 00410A84h ; Set (object)
0086604E: push eax
0086604F: lea eax, var_64
00866052: push eax
00866053: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00866058: add esp, 00000010h
0086605B: push eax
0086605C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00866061: push eax
00866062: lea eax, var_40
00866065: push eax
00866066: call 00410A84h ; Set (object)
0086606B: mov var_000000A8, eax
00866071: mov var_0000009C, 0044E398h ; username
0086607B: mov var_000000A4, 00000008h
00866085: lea edx, var_000000A4
0086608B: lea ecx, var_74
0086608E: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00866093: lea eax, var_44
00866096: push eax
00866097: lea eax, var_74
0086609A: push eax
0086609B: mov eax, var_000000A8
008660A1: mov eax, [eax]
008660A3: push var_000000A8
008660A9: call [eax+24h]
008660AC: fclex 
008660AE: mov var_000000AC, eax
008660B4: cmp var_000000AC, 00000000h
008660BB: jnl 8660DDh
008660BD: push 00000024h
008660BF: push 004412BCh
008660C4: push var_000000A8
008660CA: push var_000000AC
008660D0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008660D5: mov var_0000013C, eax
008660DB: jmp 8660E4h
008660DD: and var_0000013C, 00000000h
008660E4: mov eax, var_44
008660E7: mov var_000000B0, eax
008660ED: mov var_7C, 00000006h
008660F4: mov var_00000084, 00000003h
008660FE: push 00000010h
00866100: pop eax
00866101: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00866106: lea esi, var_00000084
0086610C: mov edi, esp
0086610E: movsd 
0086610F: movsd 
00866110: movsd 
00866111: movsd 
00866112: push 00000001h
00866114: push 00000010h
00866116: push var_000000B8
0086611C: lea eax, var_54
0086611F: push eax
00866120: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00866125: add esp, 00000020h
00866128: push eax
00866129: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086612E: mov edx, eax
00866130: lea ecx, var_34
00866133: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00866138: push eax
00866139: push 00000001h
0086613B: mov eax, var_000000B0
00866141: mov eax, [eax]
00866143: push var_000000B0
00866149: call [eax+00000088h]
0086614F: fclex 
00866151: mov var_000000B4, eax
00866157: cmp var_000000B4, 00000000h
0086615E: jnl 866183h
00866160: push 00000088h
00866165: push 004412DCh
0086616A: push var_000000B0
00866170: push var_000000B4
00866176: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086617B: mov var_00000140, eax
00866181: jmp 86618Ah
00866183: and var_00000140, 00000000h
0086618A: lea ecx, var_34
0086618D: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00866192: lea eax, var_44
00866195: push eax
00866196: lea eax, var_40
00866199: push eax
0086619A: lea eax, var_3C
0086619D: push eax
0086619E: push 00000003h
008661A0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008661A5: add esp, 00000010h
008661A8: lea eax, var_74
008661AB: push eax
008661AC: lea eax, var_64
008661AF: push eax
008661B0: lea eax, var_54
008661B3: push eax
008661B4: push 00000003h
008661B6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008661BB: add esp, 00000010h
008661BE: mov var_04, 00000012h
008661C5: push 004412BCh
008661CA: push 00000000h
008661CC: push 00000007h
008661CE: mov eax, [ebp+08h]
008661D1: mov eax, [eax]
008661D3: push [ebp+08h]
008661D6: call [eax+0000030Ch]
008661DC: push eax
008661DD: lea eax, var_3C
008661E0: push eax
008661E1: call 00410A84h ; Set (object)
008661E6: push eax
008661E7: lea eax, var_64
008661EA: push eax
008661EB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008661F0: add esp, 00000010h
008661F3: push eax
008661F4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008661F9: push eax
008661FA: lea eax, var_40
008661FD: push eax
008661FE: call 00410A84h ; Set (object)
00866203: mov var_000000A8, eax
00866209: mov var_0000009C, 00456BA0h ; privileges
00866213: mov var_000000A4, 00000008h
0086621D: lea edx, var_000000A4
00866223: lea ecx, var_74
00866226: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086622B: lea eax, var_44
0086622E: push eax
0086622F: lea eax, var_74
00866232: push eax
00866233: mov eax, var_000000A8
00866239: mov eax, [eax]
0086623B: push var_000000A8
00866241: call [eax+24h]
00866244: fclex 
00866246: mov var_000000AC, eax
0086624C: cmp var_000000AC, 00000000h
00866253: jnl 866275h
00866255: push 00000024h
00866257: push 004412BCh
0086625C: push var_000000A8
00866262: push var_000000AC
00866268: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086626D: mov var_00000144, eax
00866273: jmp 86627Ch
00866275: and var_00000144, 00000000h
0086627C: mov eax, var_44
0086627F: mov var_000000B0, eax
00866285: mov var_7C, 00000008h
0086628C: mov var_00000084, 00000003h
00866296: push 00000010h
00866298: pop eax
00866299: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0086629E: lea esi, var_00000084
008662A4: mov edi, esp
008662A6: movsd 
008662A7: movsd 
008662A8: movsd 
008662A9: movsd 
008662AA: push 00000001h
008662AC: push 00000010h
008662AE: push var_000000B8
008662B4: lea eax, var_54
008662B7: push eax
008662B8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008662BD: add esp, 00000020h
008662C0: push eax
008662C1: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008662C6: mov edx, eax
008662C8: lea ecx, var_34
008662CB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008662D0: push eax
008662D1: push 00000001h
008662D3: mov eax, var_000000B0
008662D9: mov eax, [eax]
008662DB: push var_000000B0
008662E1: call [eax+00000088h]
008662E7: fclex 
008662E9: mov var_000000B4, eax
008662EF: cmp var_000000B4, 00000000h
008662F6: jnl 86631Bh
008662F8: push 00000088h
008662FD: push 004412DCh
00866302: push var_000000B0
00866308: push var_000000B4
0086630E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00866313: mov var_00000148, eax
00866319: jmp 866322h
0086631B: and var_00000148, 00000000h
00866322: lea ecx, var_34
00866325: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0086632A: lea eax, var_44
0086632D: push eax
0086632E: lea eax, var_40
00866331: push eax
00866332: lea eax, var_3C
00866335: push eax
00866336: push 00000003h
00866338: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086633D: add esp, 00000010h
00866340: lea eax, var_74
00866343: push eax
00866344: lea eax, var_64
00866347: push eax
00866348: lea eax, var_54
0086634B: push eax
0086634C: push 00000003h
0086634E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00866353: add esp, 00000010h
00866356: mov var_04, 00000013h
0086635D: push 004412BCh
00866362: push 00000000h
00866364: push 00000007h
00866366: mov eax, [ebp+08h]
00866369: mov eax, [eax]
0086636B: push [ebp+08h]
0086636E: call [eax+0000030Ch]
00866374: push eax
00866375: lea eax, var_3C
00866378: push eax
00866379: call 00410A84h ; Set (object)
0086637E: push eax
0086637F: lea eax, var_54
00866382: push eax
00866383: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00866388: add esp, 00000010h
0086638B: push eax
0086638C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00866391: push eax
00866392: lea eax, var_40
00866395: push eax
00866396: call 00410A84h ; Set (object)
0086639B: mov var_000000A8, eax
008663A1: mov var_7C, 00456BBCh ; ram
008663A8: mov var_00000084, 00000008h
008663B2: lea edx, var_00000084
008663B8: lea ecx, var_64
008663BB: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008663C0: lea eax, var_44
008663C3: push eax
008663C4: lea eax, var_64
008663C7: push eax
008663C8: mov eax, var_000000A8
008663CE: mov eax, [eax]
008663D0: push var_000000A8
008663D6: call [eax+24h]
008663D9: fclex 
008663DB: mov var_000000AC, eax
008663E1: cmp var_000000AC, 00000000h
008663E8: jnl 86640Ah
008663EA: push 00000024h
008663EC: push 004412BCh
008663F1: push var_000000A8
008663F7: push var_000000AC
008663FD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00866402: mov var_0000014C, eax
00866408: jmp 866411h
0086640A: and var_0000014C, 00000000h
00866411: mov eax, var_44
00866414: mov var_000000B0, eax
0086641A: push 00000002h
0086641C: mov eax, [ebp+0Ch]
0086641F: push [eax]
00866421: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00866426: push [eax]
00866428: push 00000001h
0086642A: mov eax, var_000000B0
00866430: mov eax, [eax]
00866432: push var_000000B0
00866438: call [eax+00000088h]
0086643E: fclex 
00866440: mov var_000000B4, eax
00866446: cmp var_000000B4, 00000000h
0086644D: jnl 866472h
0086644F: push 00000088h
00866454: push 004412DCh
00866459: push var_000000B0
0086645F: push var_000000B4
00866465: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086646A: mov var_00000150, eax
00866470: jmp 866479h
00866472: and var_00000150, 00000000h
00866479: lea eax, var_44
0086647C: push eax
0086647D: lea eax, var_40
00866480: push eax
00866481: lea eax, var_3C
00866484: push eax
00866485: push 00000003h
00866487: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086648C: add esp, 00000010h
0086648F: lea eax, var_64
00866492: push eax
00866493: lea eax, var_54
00866496: push eax
00866497: push 00000002h
00866499: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086649E: add esp, 0000000Ch
008664A1: mov var_04, 00000014h
008664A8: push 004412BCh
008664AD: push 00000000h
008664AF: push 00000007h
008664B1: mov eax, [ebp+08h]
008664B4: mov eax, [eax]
008664B6: push [ebp+08h]
008664B9: call [eax+0000030Ch]
008664BF: push eax
008664C0: lea eax, var_3C
008664C3: push eax
008664C4: call 00410A84h ; Set (object)
008664C9: push eax
008664CA: lea eax, var_54
008664CD: push eax
008664CE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008664D3: add esp, 00000010h
008664D6: push eax
008664D7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008664DC: push eax
008664DD: lea eax, var_40
008664E0: push eax
008664E1: call 00410A84h ; Set (object)
008664E6: mov var_000000A8, eax
008664EC: mov var_7C, 00456BD4h ; cpu
008664F3: mov var_00000084, 00000008h
008664FD: lea edx, var_00000084
00866503: lea ecx, var_64
00866506: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086650B: lea eax, var_44
0086650E: push eax
0086650F: lea eax, var_64
00866512: push eax
00866513: mov eax, var_000000A8
00866519: mov eax, [eax]
0086651B: push var_000000A8
00866521: call [eax+24h]
00866524: fclex 
00866526: mov var_000000AC, eax
0086652C: cmp var_000000AC, 00000000h
00866533: jnl 866555h
00866535: push 00000024h
00866537: push 004412BCh
0086653C: push var_000000A8
00866542: push var_000000AC
00866548: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086654D: mov var_00000154, eax
00866553: jmp 86655Ch
00866555: and var_00000154, 00000000h
0086655C: mov eax, var_44
0086655F: mov var_000000B0, eax
00866565: push 00000003h
00866567: mov eax, [ebp+0Ch]
0086656A: push [eax]
0086656C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00866571: push [eax]
00866573: push 00000001h
00866575: mov eax, var_000000B0
0086657B: mov eax, [eax]
0086657D: push var_000000B0
00866583: call [eax+00000088h]
00866589: fclex 
0086658B: mov var_000000B4, eax
00866591: cmp var_000000B4, 00000000h
00866598: jnl 8665BDh
0086659A: push 00000088h
0086659F: push 004412DCh
008665A4: push var_000000B0
008665AA: push var_000000B4
008665B0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008665B5: mov var_00000158, eax
008665BB: jmp 8665C4h
008665BD: and var_00000158, 00000000h
008665C4: lea eax, var_44
008665C7: push eax
008665C8: lea eax, var_40
008665CB: push eax
008665CC: lea eax, var_3C
008665CF: push eax
008665D0: push 00000003h
008665D2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008665D7: add esp, 00000010h
008665DA: lea eax, var_64
008665DD: push eax
008665DE: lea eax, var_54
008665E1: push eax
008665E2: push 00000002h
008665E4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008665E9: add esp, 0000000Ch
008665EC: mov var_04, 00000015h
008665F3: push 004412BCh
008665F8: push 00000000h
008665FA: push 00000007h
008665FC: mov eax, [ebp+08h]
008665FF: mov eax, [eax]
00866601: push [ebp+08h]
00866604: call [eax+0000030Ch]
0086660A: push eax
0086660B: lea eax, var_3C
0086660E: push eax
0086660F: call 00410A84h ; Set (object)
00866614: push eax
00866615: lea eax, var_54
00866618: push eax
00866619: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086661E: add esp, 00000010h
00866621: push eax
00866622: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00866627: push eax
00866628: lea eax, var_40
0086662B: push eax
0086662C: call 00410A84h ; Set (object)
00866631: mov var_000000A8, eax
00866637: mov var_7C, 00456BECh ; hdd
0086663E: mov var_00000084, 00000008h
00866648: lea edx, var_00000084
0086664E: lea ecx, var_64
00866651: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00866656: lea eax, var_44
00866659: push eax
0086665A: lea eax, var_64
0086665D: push eax
0086665E: mov eax, var_000000A8
00866664: mov eax, [eax]
00866666: push var_000000A8
0086666C: call [eax+24h]
0086666F: fclex 
00866671: mov var_000000AC, eax
00866677: cmp var_000000AC, 00000000h
0086667E: jnl 8666A0h
00866680: push 00000024h
00866682: push 004412BCh
00866687: push var_000000A8
0086668D: push var_000000AC
00866693: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00866698: mov var_0000015C, eax
0086669E: jmp 8666A7h
008666A0: and var_0000015C, 00000000h
008666A7: mov eax, var_44
008666AA: mov var_000000B0, eax
008666B0: push 00000004h
008666B2: mov eax, [ebp+0Ch]
008666B5: push [eax]
008666B7: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008666BC: push [eax]
008666BE: push 00000001h
008666C0: mov eax, var_000000B0
008666C6: mov eax, [eax]
008666C8: push var_000000B0
008666CE: call [eax+00000088h]
008666D4: fclex 
008666D6: mov var_000000B4, eax
008666DC: cmp var_000000B4, 00000000h
008666E3: jnl 866708h
008666E5: push 00000088h
008666EA: push 004412DCh
008666EF: push var_000000B0
008666F5: push var_000000B4
008666FB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00866700: mov var_00000160, eax
00866706: jmp 86670Fh
00866708: and var_00000160, 00000000h
0086670F: lea eax, var_44
00866712: push eax
00866713: lea eax, var_40
00866716: push eax
00866717: lea eax, var_3C
0086671A: push eax
0086671B: push 00000003h
0086671D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00866722: add esp, 00000010h
00866725: lea eax, var_64
00866728: push eax
00866729: lea eax, var_54
0086672C: push eax
0086672D: push 00000002h
0086672F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00866734: add esp, 0000000Ch
00866737: mov var_04, 00000016h
0086673E: push 004412BCh
00866743: push 00000000h
00866745: push 00000007h
00866747: mov eax, [ebp+08h]
0086674A: mov eax, [eax]
0086674C: push [ebp+08h]
0086674F: call [eax+0000030Ch]
00866755: push eax
00866756: lea eax, var_3C
00866759: push eax
0086675A: call 00410A84h ; Set (object)
0086675F: push eax
00866760: lea eax, var_64
00866763: push eax
00866764: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00866769: add esp, 00000010h
0086676C: push eax
0086676D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00866772: push eax
00866773: lea eax, var_40
00866776: push eax
00866777: call 00410A84h ; Set (object)
0086677C: mov var_000000A8, eax
00866782: mov var_0000009C, 00456C10h ; os
0086678C: mov var_000000A4, 00000008h
00866796: lea edx, var_000000A4
0086679C: lea ecx, var_74
0086679F: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008667A4: lea eax, var_44
008667A7: push eax
008667A8: lea eax, var_74
008667AB: push eax
008667AC: mov eax, var_000000A8
008667B2: mov eax, [eax]
008667B4: push var_000000A8
008667BA: call [eax+24h]
008667BD: fclex 
008667BF: mov var_000000AC, eax
008667C5: cmp var_000000AC, 00000000h
008667CC: jnl 8667EEh
008667CE: push 00000024h
008667D0: push 004412BCh
008667D5: push var_000000A8
008667DB: push var_000000AC
008667E1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008667E6: mov var_00000164, eax
008667EC: jmp 8667F5h
008667EE: and var_00000164, 00000000h
008667F5: mov eax, var_44
008667F8: mov var_000000B0, eax
008667FE: mov var_7C, 00000009h
00866805: mov var_00000084, 00000003h
0086680F: push 00000010h
00866811: pop eax
00866812: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00866817: lea esi, var_00000084
0086681D: mov edi, esp
0086681F: movsd 
00866820: movsd 
00866821: movsd 
00866822: movsd 
00866823: push 00000001h
00866825: push 00000010h
00866827: push var_000000B8
0086682D: lea eax, var_54
00866830: push eax
00866831: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00866836: add esp, 00000020h
00866839: push eax
0086683A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0086683F: mov edx, eax
00866841: lea ecx, var_34
00866844: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00866849: push eax
0086684A: push 00000001h
0086684C: mov eax, var_000000B0
00866852: mov eax, [eax]
00866854: push var_000000B0
0086685A: call [eax+00000088h]
00866860: fclex 
00866862: mov var_000000B4, eax
00866868: cmp var_000000B4, 00000000h
0086686F: jnl 866894h
00866871: push 00000088h
00866876: push 004412DCh
0086687B: push var_000000B0
00866881: push var_000000B4
00866887: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086688C: mov var_00000168, eax
00866892: jmp 86689Bh
00866894: and var_00000168, 00000000h
0086689B: lea ecx, var_34
0086689E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008668A3: lea eax, var_44
008668A6: push eax
008668A7: lea eax, var_40
008668AA: push eax
008668AB: lea eax, var_3C
008668AE: push eax
008668AF: push 00000003h
008668B1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008668B6: add esp, 00000010h
008668B9: lea eax, var_74
008668BC: push eax
008668BD: lea eax, var_64
008668C0: push eax
008668C1: lea eax, var_54
008668C4: push eax
008668C5: push 00000003h
008668C7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008668CC: add esp, 00000010h
008668CF: mov var_04, 00000017h
008668D6: push 004412BCh
008668DB: push 00000000h
008668DD: push 00000007h
008668DF: mov eax, [ebp+08h]
008668E2: mov eax, [eax]
008668E4: push [ebp+08h]
008668E7: call [eax+0000030Ch]
008668ED: push eax
008668EE: lea eax, var_3C
008668F1: push eax
008668F2: call 00410A84h ; Set (object)
008668F7: push eax
008668F8: lea eax, var_54
008668FB: push eax
008668FC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00866901: add esp, 00000010h
00866904: push eax
00866905: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0086690A: push eax
0086690B: lea eax, var_40
0086690E: push eax
0086690F: call 00410A84h ; Set (object)
00866914: mov var_000000A8, eax
0086691A: mov var_7C, 00456C48h ; uptime
00866921: mov var_00000084, 00000008h
0086692B: lea edx, var_00000084
00866931: lea ecx, var_64
00866934: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00866939: lea eax, var_44
0086693C: push eax
0086693D: lea eax, var_64
00866940: push eax
00866941: mov eax, var_000000A8
00866947: mov eax, [eax]
00866949: push var_000000A8
0086694F: call [eax+24h]
00866952: fclex 
00866954: mov var_000000AC, eax
0086695A: cmp var_000000AC, 00000000h
00866961: jnl 866983h
00866963: push 00000024h
00866965: push 004412BCh
0086696A: push var_000000A8
00866970: push var_000000AC
00866976: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086697B: mov var_0000016C, eax
00866981: jmp 86698Ah
00866983: and var_0000016C, 00000000h
0086698A: mov eax, var_44
0086698D: mov var_000000B0, eax
00866993: push 00000005h
00866995: mov eax, [ebp+0Ch]
00866998: push [eax]
0086699A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0086699F: push [eax]
008669A1: call 00410A0Ch ; msvbvm60.dll.__vbaI4Str
008669A6: push eax
008669A7: call 007A593Fh
008669AC: mov edx, eax
008669AE: lea ecx, var_34
008669B1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008669B6: push eax
008669B7: push 00000001h
008669B9: mov eax, var_000000B0
008669BF: mov eax, [eax]
008669C1: push var_000000B0
008669C7: call [eax+00000088h]
008669CD: fclex 
008669CF: mov var_000000B4, eax
008669D5: cmp var_000000B4, 00000000h
008669DC: jnl 866A01h
008669DE: push 00000088h
008669E3: push 004412DCh
008669E8: push var_000000B0
008669EE: push var_000000B4
008669F4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008669F9: mov var_00000170, eax
008669FF: jmp 866A08h
00866A01: and var_00000170, 00000000h
00866A08: lea ecx, var_34
00866A0B: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00866A10: lea eax, var_44
00866A13: push eax
00866A14: lea eax, var_40
00866A17: push eax
00866A18: lea eax, var_3C
00866A1B: push eax
00866A1C: push 00000003h
00866A1E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00866A23: add esp, 00000010h
00866A26: lea eax, var_64
00866A29: push eax
00866A2A: lea eax, var_54
00866A2D: push eax
00866A2E: push 00000002h
00866A30: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00866A35: add esp, 0000000Ch
00866A38: mov var_04, 00000018h
00866A3F: push 004412BCh
00866A44: push 00000000h
00866A46: push 00000007h
00866A48: mov eax, [ebp+08h]
00866A4B: mov eax, [eax]
00866A4D: push [ebp+08h]
00866A50: call [eax+0000030Ch]
00866A56: push eax
00866A57: lea eax, var_3C
00866A5A: push eax
00866A5B: call 00410A84h ; Set (object)
00866A60: push eax
00866A61: lea eax, var_54
00866A64: push eax
00866A65: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00866A6A: add esp, 00000010h
00866A6D: push eax
00866A6E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00866A73: push eax
00866A74: lea eax, var_40
00866A77: push eax
00866A78: call 00410A84h ; Set (object)
00866A7D: mov var_000000A8, eax
00866A83: mov var_7C, 00456C5Ch ; idletime
00866A8A: mov var_00000084, 00000008h
00866A94: lea edx, var_00000084
00866A9A: lea ecx, var_64
00866A9D: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00866AA2: lea eax, var_44
00866AA5: push eax
00866AA6: lea eax, var_64
00866AA9: push eax
00866AAA: mov eax, var_000000A8
00866AB0: mov eax, [eax]
00866AB2: push var_000000A8
00866AB8: call [eax+24h]
00866ABB: fclex 
00866ABD: mov var_000000AC, eax
00866AC3: cmp var_000000AC, 00000000h
00866ACA: jnl 866AECh
00866ACC: push 00000024h
00866ACE: push 004412BCh
00866AD3: push var_000000A8
00866AD9: push var_000000AC
00866ADF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00866AE4: mov var_00000174, eax
00866AEA: jmp 866AF3h
00866AEC: and var_00000174, 00000000h
00866AF3: mov eax, var_44
00866AF6: mov var_000000B0, eax
00866AFC: push 00000006h
00866AFE: mov eax, [ebp+0Ch]
00866B01: push [eax]
00866B03: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00866B08: push [eax]
00866B0A: call 00410A0Ch ; msvbvm60.dll.__vbaI4Str
00866B0F: push eax
00866B10: call 007A593Fh
00866B15: mov edx, eax
00866B17: lea ecx, var_34
00866B1A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00866B1F: push eax
00866B20: push 00000001h
00866B22: mov eax, var_000000B0
00866B28: mov eax, [eax]
00866B2A: push var_000000B0
00866B30: call [eax+00000088h]
00866B36: fclex 
00866B38: mov var_000000B4, eax
00866B3E: cmp var_000000B4, 00000000h
00866B45: jnl 866B6Ah
00866B47: push 00000088h
00866B4C: push 004412DCh
00866B51: push var_000000B0
00866B57: push var_000000B4
00866B5D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00866B62: mov var_00000178, eax
00866B68: jmp 866B71h
00866B6A: and var_00000178, 00000000h
00866B71: lea ecx, var_34
00866B74: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00866B79: lea eax, var_44
00866B7C: push eax
00866B7D: lea eax, var_40
00866B80: push eax
00866B81: lea eax, var_3C
00866B84: push eax
00866B85: push 00000003h
00866B87: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00866B8C: add esp, 00000010h
00866B8F: lea eax, var_64
00866B92: push eax
00866B93: lea eax, var_54
00866B96: push eax
00866B97: push 00000002h
00866B99: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00866B9E: add esp, 0000000Ch
00866BA1: mov var_04, 00000019h
00866BA8: push 004412BCh
00866BAD: push 00000000h
00866BAF: push 00000007h
00866BB1: mov eax, [ebp+08h]
00866BB4: mov eax, [eax]
00866BB6: push [ebp+08h]
00866BB9: call [eax+0000030Ch]
00866BBF: push eax
00866BC0: lea eax, var_3C
00866BC3: push eax
00866BC4: call 00410A84h ; Set (object)
00866BC9: push eax
00866BCA: lea eax, var_64
00866BCD: push eax
00866BCE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00866BD3: add esp, 00000010h
00866BD6: push eax
00866BD7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00866BDC: push eax
00866BDD: lea eax, var_40
00866BE0: push eax
00866BE1: call 00410A84h ; Set (object)
00866BE6: mov var_000000A8, eax
00866BEC: mov var_0000009C, 00456C8Ch ; ping
00866BF6: mov var_000000A4, 00000008h
00866C00: lea edx, var_000000A4
00866C06: lea ecx, var_74
00866C09: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00866C0E: lea eax, var_44
00866C11: push eax
00866C12: lea eax, var_74
00866C15: push eax
00866C16: mov eax, var_000000A8
00866C1C: mov eax, [eax]
00866C1E: push var_000000A8
00866C24: call [eax+24h]
00866C27: fclex 
00866C29: mov var_000000AC, eax
00866C2F: cmp var_000000AC, 00000000h
00866C36: jnl 866C58h
00866C38: push 00000024h
00866C3A: push 004412BCh
00866C3F: push var_000000A8
00866C45: push var_000000AC
00866C4B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00866C50: mov var_0000017C, eax
00866C56: jmp 866C5Fh
00866C58: and var_0000017C, 00000000h
00866C5F: mov eax, var_44
00866C62: mov var_000000B0, eax
00866C68: mov var_7C, 0000000Ch
00866C6F: mov var_00000084, 00000003h
00866C79: push 00000010h
00866C7B: pop eax
00866C7C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00866C81: lea esi, var_00000084
00866C87: mov edi, esp
00866C89: movsd 
00866C8A: movsd 
00866C8B: movsd 
00866C8C: movsd 
00866C8D: push 00000001h
00866C8F: push 00000010h
00866C91: push var_000000B8
00866C97: lea eax, var_54
00866C9A: push eax
00866C9B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00866CA0: add esp, 00000020h
00866CA3: push eax
00866CA4: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00866CA9: mov edx, eax
00866CAB: lea ecx, var_34
00866CAE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00866CB3: push eax
00866CB4: push 00000001h
00866CB6: mov eax, var_000000B0
00866CBC: mov eax, [eax]
00866CBE: push var_000000B0
00866CC4: call [eax+00000088h]
00866CCA: fclex 
00866CCC: mov var_000000B4, eax
00866CD2: cmp var_000000B4, 00000000h
00866CD9: jnl 866CFEh
00866CDB: push 00000088h
00866CE0: push 004412DCh
00866CE5: push var_000000B0
00866CEB: push var_000000B4
00866CF1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00866CF6: mov var_00000180, eax
00866CFC: jmp 866D05h
00866CFE: and var_00000180, 00000000h
00866D05: lea ecx, var_34
00866D08: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00866D0D: lea eax, var_44
00866D10: push eax
00866D11: lea eax, var_40
00866D14: push eax
00866D15: lea eax, var_3C
00866D18: push eax
00866D19: push 00000003h
00866D1B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00866D20: add esp, 00000010h
00866D23: lea eax, var_74
00866D26: push eax
00866D27: lea eax, var_64
00866D2A: push eax
00866D2B: lea eax, var_54
00866D2E: push eax
00866D2F: push 00000003h
00866D31: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00866D36: add esp, 00000010h
00866D39: mov var_04, 0000001Ah
00866D40: push 004412BCh
00866D45: push 00000000h
00866D47: push 00000007h
00866D49: mov eax, [ebp+08h]
00866D4C: mov eax, [eax]
00866D4E: push [ebp+08h]
00866D51: call [eax+0000030Ch]
00866D57: push eax
00866D58: lea eax, var_3C
00866D5B: push eax
00866D5C: call 00410A84h ; Set (object)
00866D61: push eax
00866D62: lea eax, var_64
00866D65: push eax
00866D66: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00866D6B: add esp, 00000010h
00866D6E: push eax
00866D6F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00866D74: push eax
00866D75: lea eax, var_40
00866D78: push eax
00866D79: call 00410A84h ; Set (object)
00866D7E: mov var_000000A8, eax
00866D84: mov var_0000009C, 00456C9Ch ; cam
00866D8E: mov var_000000A4, 00000008h
00866D98: lea edx, var_000000A4
00866D9E: lea ecx, var_74
00866DA1: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00866DA6: lea eax, var_44
00866DA9: push eax
00866DAA: lea eax, var_74
00866DAD: push eax
00866DAE: mov eax, var_000000A8
00866DB4: mov eax, [eax]
00866DB6: push var_000000A8
00866DBC: call [eax+24h]
00866DBF: fclex 
00866DC1: mov var_000000AC, eax
00866DC7: cmp var_000000AC, 00000000h
00866DCE: jnl 866DF0h
00866DD0: push 00000024h
00866DD2: push 004412BCh
00866DD7: push var_000000A8
00866DDD: push var_000000AC
00866DE3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00866DE8: mov var_00000184, eax
00866DEE: jmp 866DF7h
00866DF0: and var_00000184, 00000000h
00866DF7: mov eax, var_44
00866DFA: mov var_000000B0, eax
00866E00: mov var_7C, 00000010h
00866E07: mov var_00000084, 00000003h
00866E11: push 00000010h
00866E13: pop eax
00866E14: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00866E19: lea esi, var_00000084
00866E1F: mov edi, esp
00866E21: movsd 
00866E22: movsd 
00866E23: movsd 
00866E24: movsd 
00866E25: push 00000001h
00866E27: push 00000010h
00866E29: push var_000000B8
00866E2F: lea eax, var_54
00866E32: push eax
00866E33: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00866E38: add esp, 00000020h
00866E3B: push eax
00866E3C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00866E41: mov edx, eax
00866E43: lea ecx, var_34
00866E46: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00866E4B: push eax
00866E4C: push 00000001h
00866E4E: mov eax, var_000000B0
00866E54: mov eax, [eax]
00866E56: push var_000000B0
00866E5C: call [eax+00000088h]
00866E62: fclex 
00866E64: mov var_000000B4, eax
00866E6A: cmp var_000000B4, 00000000h
00866E71: jnl 866E96h
00866E73: push 00000088h
00866E78: push 004412DCh
00866E7D: push var_000000B0
00866E83: push var_000000B4
00866E89: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00866E8E: mov var_00000188, eax
00866E94: jmp 866E9Dh
00866E96: and var_00000188, 00000000h
00866E9D: lea ecx, var_34
00866EA0: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00866EA5: lea eax, var_44
00866EA8: push eax
00866EA9: lea eax, var_40
00866EAC: push eax
00866EAD: lea eax, var_3C
00866EB0: push eax
00866EB1: push 00000003h
00866EB3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00866EB8: add esp, 00000010h
00866EBB: lea eax, var_74
00866EBE: push eax
00866EBF: lea eax, var_64
00866EC2: push eax
00866EC3: lea eax, var_54
00866EC6: push eax
00866EC7: push 00000003h
00866EC9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00866ECE: add esp, 00000010h
00866ED1: mov var_04, 0000001Bh
00866ED8: push 004412BCh
00866EDD: push 00000000h
00866EDF: push 00000007h
00866EE1: mov eax, [ebp+08h]
00866EE4: mov eax, [eax]
00866EE6: push [ebp+08h]
00866EE9: call [eax+0000030Ch]
00866EEF: push eax
00866EF0: lea eax, var_3C
00866EF3: push eax
00866EF4: call 00410A84h ; Set (object)
00866EF9: push eax
00866EFA: lea eax, var_54
00866EFD: push eax
00866EFE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00866F03: add esp, 00000010h
00866F06: push eax
00866F07: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00866F0C: push eax
00866F0D: lea eax, var_40
00866F10: push eax
00866F11: call 00410A84h ; Set (object)
00866F16: mov var_000000A8, eax
00866F1C: mov var_7C, 00456CA8h ; masters
00866F23: mov var_00000084, 00000008h
00866F2D: lea edx, var_00000084
00866F33: lea ecx, var_64
00866F36: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00866F3B: lea eax, var_44
00866F3E: push eax
00866F3F: lea eax, var_64
00866F42: push eax
00866F43: mov eax, var_000000A8
00866F49: mov eax, [eax]
00866F4B: push var_000000A8
00866F51: call [eax+24h]
00866F54: fclex 
00866F56: mov var_000000AC, eax
00866F5C: cmp var_000000AC, 00000000h
00866F63: jnl 866F85h
00866F65: push 00000024h
00866F67: push 004412BCh
00866F6C: push var_000000A8
00866F72: push var_000000AC
00866F78: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00866F7D: mov var_0000018C, eax
00866F83: jmp 866F8Ch
00866F85: and var_0000018C, 00000000h
00866F8C: mov eax, var_44
00866F8F: mov var_000000B0, eax
00866F95: push 00000007h
00866F97: mov eax, [ebp+0Ch]
00866F9A: push [eax]
00866F9C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00866FA1: push [eax]
00866FA3: push 00000001h
00866FA5: mov eax, var_000000B0
00866FAB: mov eax, [eax]
00866FAD: push var_000000B0
00866FB3: call [eax+00000088h]
00866FB9: fclex 
00866FBB: mov var_000000B4, eax
00866FC1: cmp var_000000B4, 00000000h
00866FC8: jnl 866FEDh
00866FCA: push 00000088h
00866FCF: push 004412DCh
00866FD4: push var_000000B0
00866FDA: push var_000000B4
00866FE0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00866FE5: mov var_00000190, eax
00866FEB: jmp 866FF4h
00866FED: and var_00000190, 00000000h
00866FF4: lea eax, var_44
00866FF7: push eax
00866FF8: lea eax, var_40
00866FFB: push eax
00866FFC: lea eax, var_3C
00866FFF: push eax
00867000: push 00000003h
00867002: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00867007: add esp, 00000010h
0086700A: lea eax, var_64
0086700D: push eax
0086700E: lea eax, var_54
00867011: push eax
00867012: push 00000002h
00867014: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00867019: add esp, 0000000Ch
0086701C: mov var_04, 0000001Ch
00867023: push 004412BCh
00867028: push 00000000h
0086702A: push 00000007h
0086702C: mov eax, [ebp+08h]
0086702F: mov eax, [eax]
00867031: push [ebp+08h]
00867034: call [eax+0000030Ch]
0086703A: push eax
0086703B: lea eax, var_3C
0086703E: push eax
0086703F: call 00410A84h ; Set (object)
00867044: push eax
00867045: lea eax, var_54
00867048: push eax
00867049: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086704E: add esp, 00000010h
00867051: push eax
00867052: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00867057: push eax
00867058: lea eax, var_40
0086705B: push eax
0086705C: call 00410A84h ; Set (object)
00867061: mov var_000000A8, eax
00867067: mov var_7C, 00456CBCh ; antivirus
0086706E: mov var_00000084, 00000008h
00867078: lea edx, var_00000084
0086707E: lea ecx, var_64
00867081: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00867086: lea eax, var_44
00867089: push eax
0086708A: lea eax, var_64
0086708D: push eax
0086708E: mov eax, var_000000A8
00867094: mov eax, [eax]
00867096: push var_000000A8
0086709C: call [eax+24h]
0086709F: fclex 
008670A1: mov var_000000AC, eax
008670A7: cmp var_000000AC, 00000000h
008670AE: jnl 8670D0h
008670B0: push 00000024h
008670B2: push 004412BCh
008670B7: push var_000000A8
008670BD: push var_000000AC
008670C3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008670C8: mov var_00000194, eax
008670CE: jmp 8670D7h
008670D0: and var_00000194, 00000000h
008670D7: mov eax, var_44
008670DA: mov var_000000B0, eax
008670E0: push 00000008h
008670E2: mov eax, [ebp+0Ch]
008670E5: push [eax]
008670E7: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008670EC: push [eax]
008670EE: push 00000001h
008670F0: mov eax, var_000000B0
008670F6: mov eax, [eax]
008670F8: push var_000000B0
008670FE: call [eax+00000088h]
00867104: fclex 
00867106: mov var_000000B4, eax
0086710C: cmp var_000000B4, 00000000h
00867113: jnl 867138h
00867115: push 00000088h
0086711A: push 004412DCh
0086711F: push var_000000B0
00867125: push var_000000B4
0086712B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00867130: mov var_00000198, eax
00867136: jmp 86713Fh
00867138: and var_00000198, 00000000h
0086713F: lea eax, var_44
00867142: push eax
00867143: lea eax, var_40
00867146: push eax
00867147: lea eax, var_3C
0086714A: push eax
0086714B: push 00000003h
0086714D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00867152: add esp, 00000010h
00867155: lea eax, var_64
00867158: push eax
00867159: lea eax, var_54
0086715C: push eax
0086715D: push 00000002h
0086715F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00867164: add esp, 0000000Ch
00867167: mov var_04, 0000001Dh
0086716E: push 004412BCh
00867173: push 00000000h
00867175: push 00000007h
00867177: mov eax, [ebp+08h]
0086717A: mov eax, [eax]
0086717C: push [ebp+08h]
0086717F: call [eax+0000030Ch]
00867185: push eax
00867186: lea eax, var_3C
00867189: push eax
0086718A: call 00410A84h ; Set (object)
0086718F: push eax
00867190: lea eax, var_54
00867193: push eax
00867194: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00867199: add esp, 00000010h
0086719C: push eax
0086719D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008671A2: push eax
008671A3: lea eax, var_40
008671A6: push eax
008671A7: call 00410A84h ; Set (object)
008671AC: mov var_000000A8, eax
008671B2: mov var_7C, 00456CF0h ; defaultbrowser
008671B9: mov var_00000084, 00000008h
008671C3: lea edx, var_00000084
008671C9: lea ecx, var_64
008671CC: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008671D1: lea eax, var_44
008671D4: push eax
008671D5: lea eax, var_64
008671D8: push eax
008671D9: mov eax, var_000000A8
008671DF: mov eax, [eax]
008671E1: push var_000000A8
008671E7: call [eax+24h]
008671EA: fclex 
008671EC: mov var_000000AC, eax
008671F2: cmp var_000000AC, 00000000h
008671F9: jnl 86721Bh
008671FB: push 00000024h
008671FD: push 004412BCh
00867202: push var_000000A8
00867208: push var_000000AC
0086720E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00867213: mov var_0000019C, eax
00867219: jmp 867222h
0086721B: and var_0000019C, 00000000h
00867222: mov eax, var_44
00867225: mov var_000000B0, eax
0086722B: push 00000009h
0086722D: mov eax, [ebp+0Ch]
00867230: push [eax]
00867232: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00867237: push [eax]
00867239: push 00000001h
0086723B: mov eax, var_000000B0
00867241: mov eax, [eax]
00867243: push var_000000B0
00867249: call [eax+00000088h]
0086724F: fclex 
00867251: mov var_000000B4, eax
00867257: cmp var_000000B4, 00000000h
0086725E: jnl 867283h
00867260: push 00000088h
00867265: push 004412DCh
0086726A: push var_000000B0
00867270: push var_000000B4
00867276: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086727B: mov var_000001A0, eax
00867281: jmp 86728Ah
00867283: and var_000001A0, 00000000h
0086728A: lea eax, var_44
0086728D: push eax
0086728E: lea eax, var_40
00867291: push eax
00867292: lea eax, var_3C
00867295: push eax
00867296: push 00000003h
00867298: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086729D: add esp, 00000010h
008672A0: lea eax, var_64
008672A3: push eax
008672A4: lea eax, var_54
008672A7: push eax
008672A8: push 00000002h
008672AA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008672AF: add esp, 0000000Ch
008672B2: mov var_04, 0000001Eh
008672B9: push 004412BCh
008672BE: push 00000000h
008672C0: push 00000007h
008672C2: mov eax, [ebp+08h]
008672C5: mov eax, [eax]
008672C7: push [ebp+08h]
008672CA: call [eax+0000030Ch]
008672D0: push eax
008672D1: lea eax, var_3C
008672D4: push eax
008672D5: call 00410A84h ; Set (object)
008672DA: push eax
008672DB: lea eax, var_54
008672DE: push eax
008672DF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008672E4: add esp, 00000010h
008672E7: push eax
008672E8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008672ED: push eax
008672EE: lea eax, var_40
008672F1: push eax
008672F2: call 00410A84h ; Set (object)
008672F7: mov var_000000A8, eax
008672FD: mov var_7C, 00456D38h ; activewindow
00867304: mov var_00000084, 00000008h
0086730E: lea edx, var_00000084
00867314: lea ecx, var_64
00867317: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0086731C: lea eax, var_44
0086731F: push eax
00867320: lea eax, var_64
00867323: push eax
00867324: mov eax, var_000000A8
0086732A: mov eax, [eax]
0086732C: push var_000000A8
00867332: call [eax+24h]
00867335: fclex 
00867337: mov var_000000AC, eax
0086733D: cmp var_000000AC, 00000000h
00867344: jnl 867366h
00867346: push 00000024h
00867348: push 004412BCh
0086734D: push var_000000A8
00867353: push var_000000AC
00867359: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086735E: mov var_000001A4, eax
00867364: jmp 86736Dh
00867366: and var_000001A4, 00000000h
0086736D: mov eax, var_44
00867370: mov var_000000B0, eax
00867376: push 0000000Ah
00867378: mov eax, [ebp+0Ch]
0086737B: push [eax]
0086737D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00867382: push [eax]
00867384: push 00000001h
00867386: mov eax, var_000000B0
0086738C: mov eax, [eax]
0086738E: push var_000000B0
00867394: call [eax+00000088h]
0086739A: fclex 
0086739C: mov var_000000B4, eax
008673A2: cmp var_000000B4, 00000000h
008673A9: jnl 8673CEh
008673AB: push 00000088h
008673B0: push 004412DCh
008673B5: push var_000000B0
008673BB: push var_000000B4
008673C1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008673C6: mov var_000001A8, eax
008673CC: jmp 8673D5h
008673CE: and var_000001A8, 00000000h
008673D5: lea eax, var_44
008673D8: push eax
008673D9: lea eax, var_40
008673DC: push eax
008673DD: lea eax, var_3C
008673E0: push eax
008673E1: push 00000003h
008673E3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008673E8: add esp, 00000010h
008673EB: lea eax, var_64
008673EE: push eax
008673EF: lea eax, var_54
008673F2: push eax
008673F3: push 00000002h
008673F5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008673FA: add esp, 0000000Ch
008673FD: mov var_04, 0000001Fh
00867404: push 004412BCh
00867409: push 00000000h
0086740B: push 00000007h
0086740D: mov eax, [ebp+08h]
00867410: mov eax, [eax]
00867412: push [ebp+08h]
00867415: call [eax+0000030Ch]
0086741B: push eax
0086741C: lea eax, var_3C
0086741F: push eax
00867420: call 00410A84h ; Set (object)
00867425: push eax
00867426: lea eax, var_54
00867429: push eax
0086742A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086742F: add esp, 00000010h
00867432: push eax
00867433: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00867438: push eax
00867439: lea eax, var_40
0086743C: push eax
0086743D: call 00410A84h ; Set (object)
00867442: mov var_000000A8, eax
00867448: mov var_7C, 00456D90h ; country
0086744F: mov var_00000084, 00000008h
00867459: lea edx, var_00000084
0086745F: lea ecx, var_64
00867462: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00867467: lea eax, var_44
0086746A: push eax
0086746B: lea eax, var_64
0086746E: push eax
0086746F: mov eax, var_000000A8
00867475: mov eax, [eax]
00867477: push var_000000A8
0086747D: call [eax+24h]
00867480: fclex 
00867482: mov var_000000AC, eax
00867488: cmp var_000000AC, 00000000h
0086748F: jnl 8674B1h
00867491: push 00000024h
00867493: push 004412BCh
00867498: push var_000000A8
0086749E: push var_000000AC
008674A4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008674A9: mov var_000001AC, eax
008674AF: jmp 8674B8h
008674B1: and var_000001AC, 00000000h
008674B8: mov eax, var_44
008674BB: mov var_000000B0, eax
008674C1: push 0000000Bh
008674C3: mov eax, [ebp+0Ch]
008674C6: push [eax]
008674C8: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008674CD: push [eax]
008674CF: push 00000001h
008674D1: mov eax, var_000000B0
008674D7: mov eax, [eax]
008674D9: push var_000000B0
008674DF: call [eax+00000088h]
008674E5: fclex 
008674E7: mov var_000000B4, eax
008674ED: cmp var_000000B4, 00000000h
008674F4: jnl 867519h
008674F6: push 00000088h
008674FB: push 004412DCh
00867500: push var_000000B0
00867506: push var_000000B4
0086750C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00867511: mov var_000001B0, eax
00867517: jmp 867520h
00867519: and var_000001B0, 00000000h
00867520: lea eax, var_44
00867523: push eax
00867524: lea eax, var_40
00867527: push eax
00867528: lea eax, var_3C
0086752B: push eax
0086752C: push 00000003h
0086752E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00867533: add esp, 00000010h
00867536: lea eax, var_64
00867539: push eax
0086753A: lea eax, var_54
0086753D: push eax
0086753E: push 00000002h
00867540: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00867545: add esp, 0000000Ch
00867548: mov var_04, 00000020h
0086754F: push 004412BCh
00867554: push 00000000h
00867556: push 00000007h
00867558: mov eax, [ebp+08h]
0086755B: mov eax, [eax]
0086755D: push [ebp+08h]
00867560: call [eax+0000030Ch]
00867566: push eax
00867567: lea eax, var_3C
0086756A: push eax
0086756B: call 00410A84h ; Set (object)
00867570: push eax
00867571: lea eax, var_54
00867574: push eax
00867575: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086757A: add esp, 00000010h
0086757D: push eax
0086757E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00867583: push eax
00867584: lea eax, var_40
00867587: push eax
00867588: call 00410A84h ; Set (object)
0086758D: mov var_000000A8, eax
00867593: mov var_7C, 00456DA4h ; region
0086759A: mov var_00000084, 00000008h
008675A4: lea edx, var_00000084
008675AA: lea ecx, var_64
008675AD: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008675B2: lea eax, var_44
008675B5: push eax
008675B6: lea eax, var_64
008675B9: push eax
008675BA: mov eax, var_000000A8
008675C0: mov eax, [eax]
008675C2: push var_000000A8
008675C8: call [eax+24h]
008675CB: fclex 
008675CD: mov var_000000AC, eax
008675D3: cmp var_000000AC, 00000000h
008675DA: jnl 8675FCh
008675DC: push 00000024h
008675DE: push 004412BCh
008675E3: push var_000000A8
008675E9: push var_000000AC
008675EF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008675F4: mov var_000001B4, eax
008675FA: jmp 867603h
008675FC: and var_000001B4, 00000000h
00867603: mov eax, var_44
00867606: mov var_000000B0, eax
0086760C: push 0000000Ch
0086760E: mov eax, [ebp+0Ch]
00867611: push [eax]
00867613: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00867618: push [eax]
0086761A: push 00000001h
0086761C: mov eax, var_000000B0
00867622: mov eax, [eax]
00867624: push var_000000B0
0086762A: call [eax+00000088h]
00867630: fclex 
00867632: mov var_000000B4, eax
00867638: cmp var_000000B4, 00000000h
0086763F: jnl 867664h
00867641: push 00000088h
00867646: push 004412DCh
0086764B: push var_000000B0
00867651: push var_000000B4
00867657: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086765C: mov var_000001B8, eax
00867662: jmp 86766Bh
00867664: and var_000001B8, 00000000h
0086766B: lea eax, var_44
0086766E: push eax
0086766F: lea eax, var_40
00867672: push eax
00867673: lea eax, var_3C
00867676: push eax
00867677: push 00000003h
00867679: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086767E: add esp, 00000010h
00867681: lea eax, var_64
00867684: push eax
00867685: lea eax, var_54
00867688: push eax
00867689: push 00000002h
0086768B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00867690: add esp, 0000000Ch
00867693: mov var_04, 00000021h
0086769A: push 004412BCh
0086769F: push 00000000h
008676A1: push 00000007h
008676A3: mov eax, [ebp+08h]
008676A6: mov eax, [eax]
008676A8: push [ebp+08h]
008676AB: call [eax+0000030Ch]
008676B1: push eax
008676B2: lea eax, var_3C
008676B5: push eax
008676B6: call 00410A84h ; Set (object)
008676BB: push eax
008676BC: lea eax, var_54
008676BF: push eax
008676C0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008676C5: add esp, 00000010h
008676C8: push eax
008676C9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008676CE: push eax
008676CF: lea eax, var_40
008676D2: push eax
008676D3: call 00410A84h ; Set (object)
008676D8: mov var_000000A8, eax
008676DE: mov var_7C, 00456DCCh ; city
008676E5: mov var_00000084, 00000008h
008676EF: lea edx, var_00000084
008676F5: lea ecx, var_64
008676F8: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008676FD: lea eax, var_44
00867700: push eax
00867701: lea eax, var_64
00867704: push eax
00867705: mov eax, var_000000A8
0086770B: mov eax, [eax]
0086770D: push var_000000A8
00867713: call [eax+24h]
00867716: fclex 
00867718: mov var_000000AC, eax
0086771E: cmp var_000000AC, 00000000h
00867725: jnl 867747h
00867727: push 00000024h
00867729: push 004412BCh
0086772E: push var_000000A8
00867734: push var_000000AC
0086773A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086773F: mov var_000001BC, eax
00867745: jmp 86774Eh
00867747: and var_000001BC, 00000000h
0086774E: mov eax, var_44
00867751: mov var_000000B0, eax
00867757: push 0000000Dh
00867759: mov eax, [ebp+0Ch]
0086775C: push [eax]
0086775E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00867763: push [eax]
00867765: push 00000001h
00867767: mov eax, var_000000B0
0086776D: mov eax, [eax]
0086776F: push var_000000B0
00867775: call [eax+00000088h]
0086777B: fclex 
0086777D: mov var_000000B4, eax
00867783: cmp var_000000B4, 00000000h
0086778A: jnl 8677AFh
0086778C: push 00000088h
00867791: push 004412DCh
00867796: push var_000000B0
0086779C: push var_000000B4
008677A2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008677A7: mov var_000001C0, eax
008677AD: jmp 8677B6h
008677AF: and var_000001C0, 00000000h
008677B6: lea eax, var_44
008677B9: push eax
008677BA: lea eax, var_40
008677BD: push eax
008677BE: lea eax, var_3C
008677C1: push eax
008677C2: push 00000003h
008677C4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008677C9: add esp, 00000010h
008677CC: lea eax, var_64
008677CF: push eax
008677D0: lea eax, var_54
008677D3: push eax
008677D4: push 00000002h
008677D6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008677DB: add esp, 0000000Ch
008677DE: mov var_04, 00000022h
008677E5: push 004412BCh
008677EA: push 00000000h
008677EC: push 00000007h
008677EE: mov eax, [ebp+08h]
008677F1: mov eax, [eax]
008677F3: push [ebp+08h]
008677F6: call [eax+0000030Ch]
008677FC: push eax
008677FD: lea eax, var_3C
00867800: push eax
00867801: call 00410A84h ; Set (object)
00867806: push eax
00867807: lea eax, var_54
0086780A: push eax
0086780B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00867810: add esp, 00000010h
00867813: push eax
00867814: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00867819: push eax
0086781A: lea eax, var_40
0086781D: push eax
0086781E: call 00410A84h ; Set (object)
00867823: mov var_000000A8, eax
00867829: mov var_7C, 00456DECh ; longitude
00867830: mov var_00000084, 00000008h
0086783A: lea edx, var_00000084
00867840: lea ecx, var_64
00867843: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00867848: lea eax, var_44
0086784B: push eax
0086784C: lea eax, var_64
0086784F: push eax
00867850: mov eax, var_000000A8
00867856: mov eax, [eax]
00867858: push var_000000A8
0086785E: call [eax+24h]
00867861: fclex 
00867863: mov var_000000AC, eax
00867869: cmp var_000000AC, 00000000h
00867870: jnl 867892h
00867872: push 00000024h
00867874: push 004412BCh
00867879: push var_000000A8
0086787F: push var_000000AC
00867885: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086788A: mov var_000001C4, eax
00867890: jmp 867899h
00867892: and var_000001C4, 00000000h
00867899: mov eax, var_44
0086789C: mov var_000000B0, eax
008678A2: push 0000000Eh
008678A4: mov eax, [ebp+0Ch]
008678A7: push [eax]
008678A9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008678AE: push [eax]
008678B0: push 00000001h
008678B2: mov eax, var_000000B0
008678B8: mov eax, [eax]
008678BA: push var_000000B0
008678C0: call [eax+00000088h]
008678C6: fclex 
008678C8: mov var_000000B4, eax
008678CE: cmp var_000000B4, 00000000h
008678D5: jnl 8678FAh
008678D7: push 00000088h
008678DC: push 004412DCh
008678E1: push var_000000B0
008678E7: push var_000000B4
008678ED: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008678F2: mov var_000001C8, eax
008678F8: jmp 867901h
008678FA: and var_000001C8, 00000000h
00867901: lea eax, var_44
00867904: push eax
00867905: lea eax, var_40
00867908: push eax
00867909: lea eax, var_3C
0086790C: push eax
0086790D: push 00000003h
0086790F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00867914: add esp, 00000010h
00867917: lea eax, var_64
0086791A: push eax
0086791B: lea eax, var_54
0086791E: push eax
0086791F: push 00000002h
00867921: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00867926: add esp, 0000000Ch
00867929: mov var_04, 00000023h
00867930: push 004412BCh
00867935: push 00000000h
00867937: push 00000007h
00867939: mov eax, [ebp+08h]
0086793C: mov eax, [eax]
0086793E: push [ebp+08h]
00867941: call [eax+0000030Ch]
00867947: push eax
00867948: lea eax, var_3C
0086794B: push eax
0086794C: call 00410A84h ; Set (object)
00867951: push eax
00867952: lea eax, var_54
00867955: push eax
00867956: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0086795B: add esp, 00000010h
0086795E: push eax
0086795F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00867964: push eax
00867965: lea eax, var_40
00867968: push eax
00867969: call 00410A84h ; Set (object)
0086796E: mov var_000000A8, eax
00867974: mov var_7C, 00456E1Ch ; latitude
0086797B: mov var_00000084, 00000008h
00867985: lea edx, var_00000084
0086798B: lea ecx, var_64
0086798E: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00867993: lea eax, var_44
00867996: push eax
00867997: lea eax, var_64
0086799A: push eax
0086799B: mov eax, var_000000A8
008679A1: mov eax, [eax]
008679A3: push var_000000A8
008679A9: call [eax+24h]
008679AC: fclex 
008679AE: mov var_000000AC, eax
008679B4: cmp var_000000AC, 00000000h
008679BB: jnl 8679DDh
008679BD: push 00000024h
008679BF: push 004412BCh
008679C4: push var_000000A8
008679CA: push var_000000AC
008679D0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008679D5: mov var_000001CC, eax
008679DB: jmp 8679E4h
008679DD: and var_000001CC, 00000000h
008679E4: mov eax, var_44
008679E7: mov var_000000B0, eax
008679ED: push 0000000Fh
008679EF: mov eax, [ebp+0Ch]
008679F2: push [eax]
008679F4: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008679F9: push [eax]
008679FB: push 00000001h
008679FD: mov eax, var_000000B0
00867A03: mov eax, [eax]
00867A05: push var_000000B0
00867A0B: call [eax+00000088h]
00867A11: fclex 
00867A13: mov var_000000B4, eax
00867A19: cmp var_000000B4, 00000000h
00867A20: jnl 867A45h
00867A22: push 00000088h
00867A27: push 004412DCh
00867A2C: push var_000000B0
00867A32: push var_000000B4
00867A38: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00867A3D: mov var_000001D0, eax
00867A43: jmp 867A4Ch
00867A45: and var_000001D0, 00000000h
00867A4C: lea eax, var_44
00867A4F: push eax
00867A50: lea eax, var_40
00867A53: push eax
00867A54: lea eax, var_3C
00867A57: push eax
00867A58: push 00000003h
00867A5A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00867A5F: add esp, 00000010h
00867A62: lea eax, var_64
00867A65: push eax
00867A66: lea eax, var_54
00867A69: push eax
00867A6A: push 00000002h
00867A6C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00867A71: add esp, 0000000Ch
00867A74: mov var_04, 00000024h
00867A7B: push 00000000h
00867A7D: lea eax, var_000000B8
00867A83: push eax
00867A84: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
00867A89: wait 
00867A8A: push 00867AFCh
00867A8F: jmp 867AD0h
00867A91: lea eax, var_38
00867A94: push eax
00867A95: lea eax, var_34
00867A98: push eax
00867A99: push 00000002h
00867A9B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00867AA0: add esp, 0000000Ch
00867AA3: lea eax, var_44
00867AA6: push eax
00867AA7: lea eax, var_40
00867AAA: push eax
00867AAB: lea eax, var_3C
00867AAE: push eax
00867AAF: push 00000003h
00867AB1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00867AB6: add esp, 00000010h
00867AB9: lea eax, var_74
00867ABC: push eax
00867ABD: lea eax, var_64
00867AC0: push eax
00867AC1: lea eax, var_54
00867AC4: push eax
00867AC5: push 00000003h
00867AC7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00867ACC: add esp, 00000010h
00867ACF: ret 
End Sub

