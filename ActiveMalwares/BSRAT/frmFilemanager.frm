VERSION 5.00
Begin VB.Form frmFilemanager
  Caption = "File manager"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmFilemanager.frx":0
  LinkTopic = "Form1"
  ClientLeft = 165
  ClientTop = 495
  ClientWidth = 13665
  ClientHeight = 6675
  StartUpPosition = 1 'CenterOwner
  Begin VB.Timer tmrFilemanager
    Interval = 500
    Left = 13080
    Top = 0
  End
  Begin VB.Timer Timer1
    Interval = 800
    Left = 12480
    Top = 0
  End
  Begin VB.ListBox lstExtensions
    Left = 3000
    Top = 240
    Width = 1575
    Height = 255
    Visible = 0   'False
    TabIndex = 0
  End
  Begin MSComctlLib.ImageList lstimgFileExt
  End
  Begin MSComctlLib.ListView lstFileMgrDirs
    Left = 0
    Top = 0
    Width = 2775
    Height = 6375
    TabIndex = 2
  End
  Begin MSComctlLib.StatusBar sbFilemanager
    Left = 0
    Top = 6375
    Width = 13665
    Height = 300
    TabIndex = 3
  End
  Begin MSComctlLib.ListView lstFileMgrFiles
    Left = 2880
    Top = 0
    Width = 10815
    Height = 6375
    TabIndex = 1
  End
  Begin VB.Menu mnuDiskarMeny
    Visible = 0   'False
    Caption = "Disks"
    Begin VB.Menu mnuDiskar
      Index = 0
      Caption = "Update"
    End
    Begin VB.Menu mnuDiskar
      Index = 1
      Caption = "Download folder"
    End
    Begin VB.Menu mnuDiskar
      Index = 2
      Caption = "-"
    End
    Begin VB.Menu mnuDiskar
      Index = 3
      Caption = "Delete"
    End
  End
  Begin VB.Menu mnuFilerMeny
    Visible = 0   'False
    Caption = "Files"
    Begin VB.Menu mnuFiler
      Index = 0
      Caption = "Refresh"
    End
    Begin VB.Menu mnuFiler
      Index = 1
      Caption = "Set attributes"
    End
    Begin VB.Menu mnuFiler
      Index = 2
      Caption = "Rename"
    End
    Begin VB.Menu mnuFiler
      Index = 3
      Caption = "Search"
    End
    Begin VB.Menu mnuFiler
      Index = 4
      Caption = "Hijack folder"
    End
    Begin VB.Menu mnuFiler
      Index = 5
      Caption = "Infect folder"
    End
    Begin VB.Menu mnuFiler
      Index = 6
      Caption = "-"
    End
    Begin VB.Menu mnuFiler
      Index = 7
      Caption = "Download file(s)"
    End
    Begin VB.Menu mnuFiler
      Index = 8
      Caption = "Upload file"
    End
    Begin VB.Menu mnuFiler
      Index = 9
      Caption = "-"
    End
    Begin VB.Menu mnuFiler
      Index = 10
      Caption = "Execute"
    End
    Begin VB.Menu mnuFiler
      Index = 11
      Caption = "Execute hidden"
    End
    Begin VB.Menu mnuFiler
      Index = 12
      Caption = "Secure delete"
    End
    Begin VB.Menu mnuFiler
      Index = 13
      Caption = "-"
    End
    Begin VB.Menu mnuFiler
      Index = 14
      Caption = "Gallery"
    End
    Begin VB.Menu mnuFiler
      Index = 15
      Caption = "Show downloaded files"
    End
  End
End

Attribute VB_Name = "frmFilemanager"


Private sub lstFileMgrDirs__7E0247
007E0247: push ebp
007E0248: mov ebp, esp
007E024A: sub esp, 0000000Ch
007E024D: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007E0252: mov eax, fs:[00h]
007E0258: push eax
007E0259: mov fs:[00000000h], esp
007E0260: push 00000008h
007E0262: pop eax
007E0263: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E0268: push ebx
007E0269: push esi
007E026A: push edi
007E026B: mov var_0C, esp
007E026E: mov var_08, 00409850h
007E0275: mov eax, [ebp+08h]
007E0278: and eax, 00000001h
007E027B: mov var_04, eax
007E027E: mov eax, [ebp+08h]
007E0281: and al, FEh
007E0283: mov [ebp+08h], eax
007E0286: mov eax, [ebp+08h]
007E0289: mov eax, [eax]
007E028B: push [ebp+08h]
007E028E: call [eax+04h]
007E0291: mov eax, [ebp+0Ch]
007E0294: or word ptr [eax], FFFFh
007E0298: mov var_04, 00000000h
007E029F: mov eax, [ebp+08h]
007E02A2: mov eax, [eax]
007E02A4: push [ebp+08h]
007E02A7: call [eax+08h]
007E02AA: mov eax, var_04
007E02AD: mov ecx, var_14
007E02B0: mov fs:[00000000h], ecx
007E02B7: pop edi
007E02B8: pop esi
007E02B9: pop ebx
007E02BA: leave 
007E02BB: retn 0008h
End Sub

Private sub lstFileMgrDirs__7E1BFF
007E1BFF: push ebp
007E1C00: mov ebp, esp
007E1C02: sub esp, 0000000Ch
007E1C05: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007E1C0A: mov eax, fs:[00h]
007E1C10: push eax
007E1C11: mov fs:[00000000h], esp
007E1C18: push 00000010h
007E1C1A: pop eax
007E1C1B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E1C20: push ebx
007E1C21: push esi
007E1C22: push edi
007E1C23: mov var_0C, esp
007E1C26: mov var_08, 00409920h
007E1C2D: mov eax, [ebp+08h]
007E1C30: and eax, 00000001h
007E1C33: mov var_04, eax
007E1C36: mov eax, [ebp+08h]
007E1C39: and al, FEh
007E1C3B: mov [ebp+08h], eax
007E1C3E: mov eax, [ebp+08h]
007E1C41: mov eax, [eax]
007E1C43: push [ebp+08h]
007E1C46: call [eax+04h]
007E1C49: mov eax, [ebp+0Ch]
007E1C4C: movsx eax, word ptr [eax]
007E1C4F: cmp eax, 0000000Dh
007E1C52: jnz 7E1C89h
007E1C54: mov eax, [ebp+08h]
007E1C57: mov eax, [eax]
007E1C59: push [ebp+08h]
007E1C5C: call [eax+00000704h]
007E1C62: mov var_18, eax
007E1C65: cmp var_18, 00000000h
007E1C69: jnl 7E1C85h
007E1C6B: push 00000704h
007E1C70: push 00440310h
007E1C75: push [ebp+08h]
007E1C78: push var_18
007E1C7B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E1C80: mov var_24, eax
007E1C83: jmp 7E1C89h
007E1C85: and var_24, 00000000h
007E1C89: mov var_04, 00000000h
007E1C90: mov eax, [ebp+08h]
007E1C93: mov eax, [eax]
007E1C95: push [ebp+08h]
007E1C98: call [eax+08h]
007E1C9B: mov eax, var_04
007E1C9E: mov ecx, var_14
007E1CA1: mov fs:[00000000h], ecx
007E1CA8: pop edi
007E1CA9: pop esi
007E1CAA: pop ebx
007E1CAB: leave 
007E1CAC: retn 000Ch
End Sub

Private sub lstFileMgrDirs__7E1CAF
007E1CAF: push ebp
007E1CB0: mov ebp, esp
007E1CB2: sub esp, 00000018h
007E1CB5: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007E1CBA: mov eax, fs:[00h]
007E1CC0: push eax
007E1CC1: mov fs:[00000000h], esp
007E1CC8: mov eax, 000000C8h
007E1CCD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E1CD2: push ebx
007E1CD3: push esi
007E1CD4: push edi
007E1CD5: mov var_18, esp
007E1CD8: mov var_14, 00409928h
007E1CDF: mov eax, [ebp+08h]
007E1CE2: and eax, 00000001h
007E1CE5: mov var_10, eax
007E1CE8: mov eax, [ebp+08h]
007E1CEB: and al, FEh
007E1CED: mov [ebp+08h], eax
007E1CF0: mov var_0C, 00000000h
007E1CF7: mov eax, [ebp+08h]
007E1CFA: mov eax, [eax]
007E1CFC: push [ebp+08h]
007E1CFF: call [eax+04h]
007E1D02: mov var_04, 00000001h
007E1D09: mov var_04, 00000002h
007E1D10: push FFFFFFFFh
007E1D12: call 00410A60h ; On Error ...
007E1D17: mov var_04, 00000003h
007E1D1E: mov eax, [ebp+0Ch]
007E1D21: cmp word ptr [eax], 0002h
007E1D25: jnz 007E23CAh
007E1D2B: mov var_04, 00000004h
007E1D32: push 0044A87Ch
007E1D37: push 00000000h
007E1D39: push 00000003h
007E1D3B: mov eax, [ebp+08h]
007E1D3E: mov eax, [eax]
007E1D40: push [ebp+08h]
007E1D43: call [eax+00000320h]
007E1D49: push eax
007E1D4A: lea eax, var_28
007E1D4D: push eax
007E1D4E: call 00410A84h ; Set (object)
007E1D53: push eax
007E1D54: lea eax, var_40
007E1D57: push eax
007E1D58: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E1D5D: add esp, 00000010h
007E1D60: push eax
007E1D61: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E1D66: push eax
007E1D67: lea eax, var_2C
007E1D6A: push eax
007E1D6B: call 00410A84h ; Set (object)
007E1D70: mov var_00000094, eax
007E1D76: mov var_48, 00000001h
007E1D7D: mov var_50, 00000002h
007E1D84: lea eax, var_30
007E1D87: push eax
007E1D88: lea eax, var_50
007E1D8B: push eax
007E1D8C: mov eax, var_00000094
007E1D92: mov eax, [eax]
007E1D94: push var_00000094
007E1D9A: call [eax+24h]
007E1D9D: fclex 
007E1D9F: mov var_00000098, eax
007E1DA5: cmp var_00000098, 00000000h
007E1DAC: jnl 7E1DCEh
007E1DAE: push 00000024h
007E1DB0: push 0044A87Ch
007E1DB5: push var_00000094
007E1DBB: push var_00000098
007E1DC1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E1DC6: mov var_000000BC, eax
007E1DCC: jmp 7E1DD5h
007E1DCE: and var_000000BC, 00000000h
007E1DD5: mov eax, var_30
007E1DD8: mov var_0000009C, eax
007E1DDE: lea eax, var_24
007E1DE1: push eax
007E1DE2: mov eax, var_0000009C
007E1DE8: mov eax, [eax]
007E1DEA: push var_0000009C
007E1DF0: call [eax+7Ch]
007E1DF3: fclex 
007E1DF5: mov var_000000A0, eax
007E1DFB: cmp var_000000A0, 00000000h
007E1E02: jnl 7E1E24h
007E1E04: push 0000007Ch
007E1E06: push 0044A88Ch
007E1E0B: push var_0000009C
007E1E11: push var_000000A0
007E1E17: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E1E1C: mov var_000000C0, eax
007E1E22: jmp 7E1E2Bh
007E1E24: and var_000000C0, 00000000h
007E1E2B: push var_24
007E1E2E: push 00441194h ; N/A
007E1E33: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
007E1E38: neg eax
007E1E3A: sbb eax, eax
007E1E3C: inc eax
007E1E3D: neg eax
007E1E3F: mov var_000000A4, ax
007E1E46: lea ecx, var_24
007E1E49: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E1E4E: lea eax, var_30
007E1E51: push eax
007E1E52: lea eax, var_2C
007E1E55: push eax
007E1E56: lea eax, var_28
007E1E59: push eax
007E1E5A: push 00000003h
007E1E5C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E1E61: add esp, 00000010h
007E1E64: lea eax, var_50
007E1E67: push eax
007E1E68: lea eax, var_40
007E1E6B: push eax
007E1E6C: push 00000002h
007E1E6E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E1E73: add esp, 0000000Ch
007E1E76: movsx eax, word ptr var_000000A4
007E1E7D: test eax, eax
007E1E7F: jz 007E203Eh
007E1E85: mov var_04, 00000005h
007E1E8C: mov eax, [ebp+08h]
007E1E8F: mov eax, [eax]
007E1E91: push [ebp+08h]
007E1E94: call [eax+0000030Ch]
007E1E9A: push eax
007E1E9B: lea eax, var_28
007E1E9E: push eax
007E1E9F: call 00410A84h ; Set (object)
007E1EA4: mov var_00000094, eax
007E1EAA: lea eax, var_2C
007E1EAD: push eax
007E1EAE: push 00000000h
007E1EB0: mov eax, var_00000094
007E1EB6: mov eax, [eax]
007E1EB8: push var_00000094
007E1EBE: call [eax+40h]
007E1EC1: fclex 
007E1EC3: mov var_00000098, eax
007E1EC9: cmp var_00000098, 00000000h
007E1ED0: jnl 7E1EF2h
007E1ED2: push 00000040h
007E1ED4: push 00440DE8h
007E1ED9: push var_00000094
007E1EDF: push var_00000098
007E1EE5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E1EEA: mov var_000000C4, eax
007E1EF0: jmp 7E1EF9h
007E1EF2: and var_000000C4, 00000000h
007E1EF9: mov eax, var_2C
007E1EFC: mov var_0000009C, eax
007E1F02: push FFFFFFFFh
007E1F04: mov eax, var_0000009C
007E1F0A: mov eax, [eax]
007E1F0C: push var_0000009C
007E1F12: call [eax+5Ch]
007E1F15: fclex 
007E1F17: mov var_000000A0, eax
007E1F1D: cmp var_000000A0, 00000000h
007E1F24: jnl 7E1F46h
007E1F26: push 0000005Ch
007E1F28: push 00445524h
007E1F2D: push var_0000009C
007E1F33: push var_000000A0
007E1F39: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E1F3E: mov var_000000C8, eax
007E1F44: jmp 7E1F4Dh
007E1F46: and var_000000C8, 00000000h
007E1F4D: lea eax, var_2C
007E1F50: push eax
007E1F51: lea eax, var_28
007E1F54: push eax
007E1F55: push 00000002h
007E1F57: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E1F5C: add esp, 0000000Ch
007E1F5F: mov var_04, 00000006h
007E1F66: mov eax, [ebp+08h]
007E1F69: mov eax, [eax]
007E1F6B: push [ebp+08h]
007E1F6E: call [eax+0000030Ch]
007E1F74: push eax
007E1F75: lea eax, var_28
007E1F78: push eax
007E1F79: call 00410A84h ; Set (object)
007E1F7E: mov var_00000094, eax
007E1F84: lea eax, var_2C
007E1F87: push eax
007E1F88: push 00000001h
007E1F8A: mov eax, var_00000094
007E1F90: mov eax, [eax]
007E1F92: push var_00000094
007E1F98: call [eax+40h]
007E1F9B: fclex 
007E1F9D: mov var_00000098, eax
007E1FA3: cmp var_00000098, 00000000h
007E1FAA: jnl 7E1FCCh
007E1FAC: push 00000040h
007E1FAE: push 00440DE8h
007E1FB3: push var_00000094
007E1FB9: push var_00000098
007E1FBF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E1FC4: mov var_000000CC, eax
007E1FCA: jmp 7E1FD3h
007E1FCC: and var_000000CC, 00000000h
007E1FD3: mov eax, var_2C
007E1FD6: mov var_0000009C, eax
007E1FDC: push 00000000h
007E1FDE: mov eax, var_0000009C
007E1FE4: mov eax, [eax]
007E1FE6: push var_0000009C
007E1FEC: call [eax+5Ch]
007E1FEF: fclex 
007E1FF1: mov var_000000A0, eax
007E1FF7: cmp var_000000A0, 00000000h
007E1FFE: jnl 7E2020h
007E2000: push 0000005Ch
007E2002: push 00445524h
007E2007: push var_0000009C
007E200D: push var_000000A0
007E2013: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E2018: mov var_000000D0, eax
007E201E: jmp 7E2027h
007E2020: and var_000000D0, 00000000h
007E2027: lea eax, var_2C
007E202A: push eax
007E202B: lea eax, var_28
007E202E: push eax
007E202F: push 00000002h
007E2031: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E2036: add esp, 0000000Ch
007E2039: jmp 007E21F2h
007E203E: mov var_04, 00000008h
007E2045: mov eax, [ebp+08h]
007E2048: mov eax, [eax]
007E204A: push [ebp+08h]
007E204D: call [eax+0000030Ch]
007E2053: push eax
007E2054: lea eax, var_28
007E2057: push eax
007E2058: call 00410A84h ; Set (object)
007E205D: mov var_00000094, eax
007E2063: lea eax, var_2C
007E2066: push eax
007E2067: push 00000001h
007E2069: mov eax, var_00000094
007E206F: mov eax, [eax]
007E2071: push var_00000094
007E2077: call [eax+40h]
007E207A: fclex 
007E207C: mov var_00000098, eax
007E2082: cmp var_00000098, 00000000h
007E2089: jnl 7E20ABh
007E208B: push 00000040h
007E208D: push 00440DE8h
007E2092: push var_00000094
007E2098: push var_00000098
007E209E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E20A3: mov var_000000D4, eax
007E20A9: jmp 7E20B2h
007E20AB: and var_000000D4, 00000000h
007E20B2: mov eax, var_2C
007E20B5: mov var_0000009C, eax
007E20BB: push FFFFFFFFh
007E20BD: mov eax, var_0000009C
007E20C3: mov eax, [eax]
007E20C5: push var_0000009C
007E20CB: call [eax+5Ch]
007E20CE: fclex 
007E20D0: mov var_000000A0, eax
007E20D6: cmp var_000000A0, 00000000h
007E20DD: jnl 7E20FFh
007E20DF: push 0000005Ch
007E20E1: push 00445524h
007E20E6: push var_0000009C
007E20EC: push var_000000A0
007E20F2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E20F7: mov var_000000D8, eax
007E20FD: jmp 7E2106h
007E20FF: and var_000000D8, 00000000h
007E2106: lea eax, var_2C
007E2109: push eax
007E210A: lea eax, var_28
007E210D: push eax
007E210E: push 00000002h
007E2110: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E2115: add esp, 0000000Ch
007E2118: mov var_04, 00000009h
007E211F: mov eax, [ebp+08h]
007E2122: mov eax, [eax]
007E2124: push [ebp+08h]
007E2127: call [eax+0000030Ch]
007E212D: push eax
007E212E: lea eax, var_28
007E2131: push eax
007E2132: call 00410A84h ; Set (object)
007E2137: mov var_00000094, eax
007E213D: lea eax, var_2C
007E2140: push eax
007E2141: push 00000000h
007E2143: mov eax, var_00000094
007E2149: mov eax, [eax]
007E214B: push var_00000094
007E2151: call [eax+40h]
007E2154: fclex 
007E2156: mov var_00000098, eax
007E215C: cmp var_00000098, 00000000h
007E2163: jnl 7E2185h
007E2165: push 00000040h
007E2167: push 00440DE8h
007E216C: push var_00000094
007E2172: push var_00000098
007E2178: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E217D: mov var_000000DC, eax
007E2183: jmp 7E218Ch
007E2185: and var_000000DC, 00000000h
007E218C: mov eax, var_2C
007E218F: mov var_0000009C, eax
007E2195: push 00000000h
007E2197: mov eax, var_0000009C
007E219D: mov eax, [eax]
007E219F: push var_0000009C
007E21A5: call [eax+5Ch]
007E21A8: fclex 
007E21AA: mov var_000000A0, eax
007E21B0: cmp var_000000A0, 00000000h
007E21B7: jnl 7E21D9h
007E21B9: push 0000005Ch
007E21BB: push 00445524h
007E21C0: push var_0000009C
007E21C6: push var_000000A0
007E21CC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E21D1: mov var_000000E0, eax
007E21D7: jmp 7E21E0h
007E21D9: and var_000000E0, 00000000h
007E21E0: lea eax, var_2C
007E21E3: push eax
007E21E4: lea eax, var_28
007E21E7: push eax
007E21E8: push 00000002h
007E21EA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E21EF: add esp, 0000000Ch
007E21F2: mov var_04, 0000000Bh
007E21F9: push 004412DCh
007E21FE: push 00000000h
007E2200: push 0000000Dh
007E2202: mov eax, [ebp+08h]
007E2205: mov eax, [eax]
007E2207: push [ebp+08h]
007E220A: call [eax+0000031Ch]
007E2210: push eax
007E2211: lea eax, var_28
007E2214: push eax
007E2215: call 00410A84h ; Set (object)
007E221A: push eax
007E221B: lea eax, var_40
007E221E: push eax
007E221F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E2224: add esp, 00000010h
007E2227: push eax
007E2228: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E222D: push eax
007E222E: lea eax, var_2C
007E2231: push eax
007E2232: call 00410A84h ; Set (object)
007E2237: mov var_00000094, eax
007E223D: lea eax, var_24
007E2240: push eax
007E2241: mov eax, var_00000094
007E2247: mov eax, [eax]
007E2249: push var_00000094
007E224F: call [eax+24h]
007E2252: fclex 
007E2254: mov var_00000098, eax
007E225A: cmp var_00000098, 00000000h
007E2261: jnl 7E2283h
007E2263: push 00000024h
007E2265: push 004412DCh
007E226A: push var_00000094
007E2270: push var_00000098
007E2276: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E227B: mov var_000000E4, eax
007E2281: jmp 7E228Ah
007E2283: and var_000000E4, 00000000h
007E228A: push var_24
007E228D: push 0044C03Ch ; ..
007E2292: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
007E2297: neg eax
007E2299: sbb eax, eax
007E229B: neg eax
007E229D: neg eax
007E229F: mov var_0000009C, ax
007E22A6: lea ecx, var_24
007E22A9: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E22AE: lea eax, var_2C
007E22B1: push eax
007E22B2: lea eax, var_28
007E22B5: push eax
007E22B6: push 00000002h
007E22B8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E22BD: add esp, 0000000Ch
007E22C0: lea ecx, var_40
007E22C3: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E22C8: movsx eax, word ptr var_0000009C
007E22CF: test eax, eax
007E22D1: jz 007E23CAh
007E22D7: mov var_04, 0000000Ch
007E22DE: mov var_00000088, 80020004h
007E22E8: mov var_00000090, 0000000Ah
007E22F2: mov var_78, 80020004h
007E22F9: mov var_80, 0000000Ah
007E2300: mov var_68, 80020004h
007E2307: mov var_70, 0000000Ah
007E230E: mov var_58, 80020004h
007E2315: mov var_60, 0000000Ah
007E231C: push 00000010h
007E231E: pop eax
007E231F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E2324: lea esi, var_00000090
007E232A: mov edi, esp
007E232C: movsd 
007E232D: movsd 
007E232E: movsd 
007E232F: movsd 
007E2330: push 00000010h
007E2332: pop eax
007E2333: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E2338: lea esi, var_80
007E233B: mov edi, esp
007E233D: movsd 
007E233E: movsd 
007E233F: movsd 
007E2340: movsd 
007E2341: push 00000010h
007E2343: pop eax
007E2344: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E2349: lea esi, var_70
007E234C: mov edi, esp
007E234E: movsd 
007E234F: movsd 
007E2350: movsd 
007E2351: movsd 
007E2352: push 00000010h
007E2354: pop eax
007E2355: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E235A: lea esi, var_60
007E235D: mov edi, esp
007E235F: movsd 
007E2360: movsd 
007E2361: movsd 
007E2362: movsd 
007E2363: mov eax, [ebp+08h]
007E2366: mov eax, [eax]
007E2368: push [ebp+08h]
007E236B: call [eax+00000308h]
007E2371: push eax
007E2372: lea eax, var_28
007E2375: push eax
007E2376: call 00410A84h ; Set (object)
007E237B: push eax
007E237C: mov eax, [ebp+08h]
007E237F: mov eax, [eax]
007E2381: push [ebp+08h]
007E2384: call [eax+000002BCh]
007E238A: fclex 
007E238C: mov var_00000094, eax
007E2392: cmp var_00000094, 00000000h
007E2399: jnl 7E23BBh
007E239B: push 000002BCh
007E23A0: push 0044420Ch
007E23A5: push [ebp+08h]
007E23A8: push var_00000094
007E23AE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E23B3: mov var_000000E8, eax
007E23B9: jmp 7E23C2h
007E23BB: and var_000000E8, 00000000h
007E23C2: lea ecx, var_28
007E23C5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E23CA: mov var_10, 00000000h
007E23D1: push 007E240Ah
007E23D6: jmp 7E2409h
007E23D8: lea ecx, var_24
007E23DB: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E23E0: lea eax, var_30
007E23E3: push eax
007E23E4: lea eax, var_2C
007E23E7: push eax
007E23E8: lea eax, var_28
007E23EB: push eax
007E23EC: push 00000003h
007E23EE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E23F3: add esp, 00000010h
007E23F6: lea eax, var_50
007E23F9: push eax
007E23FA: lea eax, var_40
007E23FD: push eax
007E23FE: push 00000002h
007E2400: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E2405: add esp, 0000000Ch
007E2408: ret 
End Sub

Private sub lstFileMgrDirs__7E02BE
007E02BE: push ebp
007E02BF: mov ebp, esp
007E02C1: sub esp, 00000018h
007E02C4: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007E02C9: mov eax, fs:[00h]
007E02CF: push eax
007E02D0: mov fs:[00000000h], esp
007E02D7: mov eax, 000001A8h
007E02DC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E02E1: push ebx
007E02E2: push esi
007E02E3: push edi
007E02E4: mov var_18, esp
007E02E7: mov var_14, 00409858h
007E02EE: mov eax, [ebp+08h]
007E02F1: and eax, 00000001h
007E02F4: mov var_10, eax
007E02F7: mov eax, [ebp+08h]
007E02FA: and al, FEh
007E02FC: mov [ebp+08h], eax
007E02FF: mov var_0C, 00000000h
007E0306: mov eax, [ebp+08h]
007E0309: mov eax, [eax]
007E030B: push [ebp+08h]
007E030E: call [eax+04h]
007E0311: mov var_04, 00000001h
007E0318: mov var_04, 00000002h
007E031F: push FFFFFFFFh
007E0321: call 00410A60h ; On Error ...
007E0326: mov var_04, 00000003h
007E032D: cmp [008F2010h], 00000000h
007E0334: jnz 7E0351h
007E0336: push 008F2010h
007E033B: push 00433984h
007E0340: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E0345: mov var_00000174, 008F2010h
007E034F: jmp 7E035Bh
007E0351: mov var_00000174, 008F2010h
007E035B: mov eax, var_00000174
007E0361: mov eax, [eax]
007E0363: mov ecx, var_00000174
007E0369: mov ecx, [ecx]
007E036B: mov ecx, [ecx]
007E036D: push eax
007E036E: call [ecx+00000520h]
007E0374: mov var_58, eax
007E0377: mov var_60, 00000009h
007E037E: push 00000010h
007E0380: pop eax
007E0381: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E0386: lea esi, var_60
007E0389: mov edi, esp
007E038B: movsd 
007E038C: movsd 
007E038D: movsd 
007E038E: movsd 
007E038F: push 0000000Eh
007E0391: mov eax, [ebp+08h]
007E0394: mov eax, [eax]
007E0396: push [ebp+08h]
007E0399: call [eax+0000031Ch]
007E039F: push eax
007E03A0: lea eax, var_44
007E03A3: push eax
007E03A4: call 00410A84h ; Set (object)
007E03A9: push eax
007E03AA: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007E03AF: lea ecx, var_44
007E03B2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E03B7: lea ecx, var_60
007E03BA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E03BF: mov var_04, 00000004h
007E03C6: push 004412BCh
007E03CB: push 00000000h
007E03CD: push 00000007h
007E03CF: mov eax, [ebp+08h]
007E03D2: mov eax, [eax]
007E03D4: push [ebp+08h]
007E03D7: call [eax+0000031Ch]
007E03DD: push eax
007E03DE: lea eax, var_44
007E03E1: push eax
007E03E2: call 00410A84h ; Set (object)
007E03E7: push eax
007E03E8: lea eax, var_60
007E03EB: push eax
007E03EC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E03F1: add esp, 00000010h
007E03F4: push eax
007E03F5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E03FA: push eax
007E03FB: lea eax, var_48
007E03FE: push eax
007E03FF: call 00410A84h ; Set (object)
007E0404: mov var_00000124, eax
007E040A: lea eax, var_00000118
007E0410: push eax
007E0411: mov eax, var_00000124
007E0417: mov eax, [eax]
007E0419: push var_00000124
007E041F: call [eax+1Ch]
007E0422: fclex 
007E0424: mov var_00000128, eax
007E042A: cmp var_00000128, 00000000h
007E0431: jnl 7E0453h
007E0433: push 0000001Ch
007E0435: push 004412BCh
007E043A: push var_00000124
007E0440: push var_00000128
007E0446: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E044B: mov var_00000178, eax
007E0451: jmp 7E045Ah
007E0453: and var_00000178, 00000000h
007E045A: xor eax, eax
007E045C: cmp var_00000118, 00000000h
007E0463: setnz al
007E0466: neg eax
007E0468: mov var_0000012C, ax
007E046F: lea eax, var_48
007E0472: push eax
007E0473: lea eax, var_44
007E0476: push eax
007E0477: push 00000002h
007E0479: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E047E: add esp, 0000000Ch
007E0481: lea ecx, var_60
007E0484: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E0489: movsx eax, word ptr var_0000012C
007E0490: test eax, eax
007E0492: jz 007E1B2Fh
007E0498: mov var_04, 00000005h
007E049F: push 004412DCh
007E04A4: push 00000000h
007E04A6: push 0000000Dh
007E04A8: mov eax, [ebp+08h]
007E04AB: mov eax, [eax]
007E04AD: push [ebp+08h]
007E04B0: call [eax+0000031Ch]
007E04B6: push eax
007E04B7: lea eax, var_44
007E04BA: push eax
007E04BB: call 00410A84h ; Set (object)
007E04C0: push eax
007E04C1: lea eax, var_60
007E04C4: push eax
007E04C5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E04CA: add esp, 00000010h
007E04CD: push eax
007E04CE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E04D3: push eax
007E04D4: lea eax, var_48
007E04D7: push eax
007E04D8: call 00410A84h ; Set (object)
007E04DD: mov var_00000124, eax
007E04E3: lea eax, var_38
007E04E6: push eax
007E04E7: mov eax, var_00000124
007E04ED: mov eax, [eax]
007E04EF: push var_00000124
007E04F5: call [eax+1Ch]
007E04F8: fclex 
007E04FA: mov var_00000128, eax
007E0500: cmp var_00000128, 00000000h
007E0507: jnl 7E0529h
007E0509: push 0000001Ch
007E050B: push 004412DCh
007E0510: push var_00000124
007E0516: push var_00000128
007E051C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E0521: mov var_0000017C, eax
007E0527: jmp 7E0530h
007E0529: and var_0000017C, 00000000h
007E0530: push var_38
007E0533: push 00000000h
007E0535: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
007E053A: neg eax
007E053C: sbb eax, eax
007E053E: inc eax
007E053F: neg eax
007E0541: mov var_0000012C, ax
007E0548: lea ecx, var_38
007E054B: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E0550: lea eax, var_48
007E0553: push eax
007E0554: lea eax, var_44
007E0557: push eax
007E0558: push 00000002h
007E055A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E055F: add esp, 0000000Ch
007E0562: lea ecx, var_60
007E0565: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E056A: movsx eax, word ptr var_0000012C
007E0571: test eax, eax
007E0573: jz 7E057Ah
007E0575: jmp 007E1B2Fh
007E057A: mov var_04, 00000008h
007E0581: push 004412DCh
007E0586: push 00000000h
007E0588: push 0000000Dh
007E058A: mov eax, [ebp+08h]
007E058D: mov eax, [eax]
007E058F: push [ebp+08h]
007E0592: call [eax+0000031Ch]
007E0598: push eax
007E0599: lea eax, var_44
007E059C: push eax
007E059D: call 00410A84h ; Set (object)
007E05A2: push eax
007E05A3: lea eax, var_60
007E05A6: push eax
007E05A7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E05AC: add esp, 00000010h
007E05AF: push eax
007E05B0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E05B5: push eax
007E05B6: lea eax, var_48
007E05B9: push eax
007E05BA: call 00410A84h ; Set (object)
007E05BF: mov var_00000124, eax
007E05C5: lea eax, var_38
007E05C8: push eax
007E05C9: mov eax, var_00000124
007E05CF: mov eax, [eax]
007E05D1: push var_00000124
007E05D7: call [eax+1Ch]
007E05DA: fclex 
007E05DC: mov var_00000128, eax
007E05E2: cmp var_00000128, 00000000h
007E05E9: jnl 7E060Bh
007E05EB: push 0000001Ch
007E05ED: push 004412DCh
007E05F2: push var_00000124
007E05F8: push var_00000128
007E05FE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E0603: mov var_00000180, eax
007E0609: jmp 7E0612h
007E060B: and var_00000180, 00000000h
007E0612: push var_38
007E0615: push 0044C03Ch ; ..
007E061A: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
007E061F: neg eax
007E0621: sbb eax, eax
007E0623: inc eax
007E0624: neg eax
007E0626: mov var_0000012C, ax
007E062D: lea ecx, var_38
007E0630: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E0635: lea eax, var_48
007E0638: push eax
007E0639: lea eax, var_44
007E063C: push eax
007E063D: push 00000002h
007E063F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E0644: add esp, 0000000Ch
007E0647: lea ecx, var_60
007E064A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E064F: movsx eax, word ptr var_0000012C
007E0656: test eax, eax
007E0658: jz 007E0ED1h
007E065E: mov var_04, 00000009h
007E0665: push 00000000h
007E0667: push 8001000Bh
007E066C: mov eax, [ebp+08h]
007E066F: mov eax, [eax]
007E0671: push [ebp+08h]
007E0674: call [eax+00000324h]
007E067A: push eax
007E067B: lea eax, var_44
007E067E: push eax
007E067F: call 00410A84h ; Set (object)
007E0684: push eax
007E0685: lea eax, var_60
007E0688: push eax
007E0689: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E068E: add esp, 00000010h
007E0691: push eax
007E0692: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E0697: mov edx, eax
007E0699: lea ecx, var_38
007E069C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E06A1: push eax
007E06A2: call 0041098Eh ; Len(arg_1)
007E06A7: sub eax, 00000003h
007E06AA: neg eax
007E06AC: sbb eax, eax
007E06AE: inc eax
007E06AF: neg eax
007E06B1: mov var_00000124, ax
007E06B8: lea ecx, var_38
007E06BB: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E06C0: lea ecx, var_44
007E06C3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E06C8: lea ecx, var_60
007E06CB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E06D0: movsx eax, word ptr var_00000124
007E06D7: test eax, eax
007E06D9: jz 007E0A3Bh
007E06DF: mov var_04, 0000000Ah
007E06E6: push 004412BCh
007E06EB: push 00000000h
007E06ED: push 00000007h
007E06EF: mov eax, [ebp+08h]
007E06F2: mov eax, [eax]
007E06F4: push [ebp+08h]
007E06F7: call [eax+0000031Ch]
007E06FD: push eax
007E06FE: lea eax, var_44
007E0701: push eax
007E0702: call 00410A84h ; Set (object)
007E0707: push eax
007E0708: lea eax, var_60
007E070B: push eax
007E070C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E0711: add esp, 00000010h
007E0714: push eax
007E0715: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E071A: push eax
007E071B: lea eax, var_48
007E071E: push eax
007E071F: call 00410A84h ; Set (object)
007E0724: mov var_00000124, eax
007E072A: mov eax, var_00000124
007E0730: mov eax, [eax]
007E0732: push var_00000124
007E0738: call [eax+2Ch]
007E073B: fclex 
007E073D: mov var_00000128, eax
007E0743: cmp var_00000128, 00000000h
007E074A: jnl 7E076Ch
007E074C: push 0000002Ch
007E074E: push 004412BCh
007E0753: push var_00000124
007E0759: push var_00000128
007E075F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E0764: mov var_00000184, eax
007E076A: jmp 7E0773h
007E076C: and var_00000184, 00000000h
007E0773: lea eax, var_48
007E0776: push eax
007E0777: lea eax, var_44
007E077A: push eax
007E077B: push 00000002h
007E077D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E0782: add esp, 0000000Ch
007E0785: lea ecx, var_60
007E0788: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E078D: mov var_04, 0000000Bh
007E0794: and var_000000CC, 00000000h
007E079B: mov var_000000D4, 00000008h
007E07A5: push 00000010h
007E07A7: pop eax
007E07A8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E07AD: lea esi, var_000000D4
007E07B3: mov edi, esp
007E07B5: movsd 
007E07B6: movsd 
007E07B7: movsd 
007E07B8: movsd 
007E07B9: push 8001000Bh
007E07BE: mov eax, [ebp+08h]
007E07C1: mov eax, [eax]
007E07C3: push [ebp+08h]
007E07C6: call [eax+00000324h]
007E07CC: push eax
007E07CD: lea eax, var_44
007E07D0: push eax
007E07D1: call 00410A84h ; Set (object)
007E07D6: push eax
007E07D7: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007E07DC: lea ecx, var_44
007E07DF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E07E4: mov var_04, 0000000Ch
007E07EB: push 004412BCh
007E07F0: push 00000000h
007E07F2: push 00000007h
007E07F4: mov eax, [ebp+08h]
007E07F7: mov eax, [eax]
007E07F9: push [ebp+08h]
007E07FC: call [eax+00000324h]
007E0802: push eax
007E0803: lea eax, var_44
007E0806: push eax
007E0807: call 00410A84h ; Set (object)
007E080C: push eax
007E080D: lea eax, var_60
007E0810: push eax
007E0811: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E0816: add esp, 00000010h
007E0819: push eax
007E081A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E081F: push eax
007E0820: lea eax, var_48
007E0823: push eax
007E0824: call 00410A84h ; Set (object)
007E0829: mov var_00000124, eax
007E082F: mov eax, var_00000124
007E0835: mov eax, [eax]
007E0837: push var_00000124
007E083D: call [eax+2Ch]
007E0840: fclex 
007E0842: mov var_00000128, eax
007E0848: cmp var_00000128, 00000000h
007E084F: jnl 7E0871h
007E0851: push 0000002Ch
007E0853: push 004412BCh
007E0858: push var_00000124
007E085E: push var_00000128
007E0864: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E0869: mov var_00000188, eax
007E086F: jmp 7E0878h
007E0871: and var_00000188, 00000000h
007E0878: lea eax, var_48
007E087B: push eax
007E087C: lea eax, var_44
007E087F: push eax
007E0880: push 00000002h
007E0882: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E0887: add esp, 0000000Ch
007E088A: lea ecx, var_60
007E088D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E0892: mov var_04, 0000000Dh
007E0899: push 004412BCh
007E089E: push 00000000h
007E08A0: push 00000007h
007E08A2: mov eax, [ebp+08h]
007E08A5: mov eax, [eax]
007E08A7: push [ebp+08h]
007E08AA: call [eax+0000031Ch]
007E08B0: push eax
007E08B1: lea eax, var_44
007E08B4: push eax
007E08B5: call 00410A84h ; Set (object)
007E08BA: push eax
007E08BB: lea eax, var_60
007E08BE: push eax
007E08BF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E08C4: add esp, 00000010h
007E08C7: push eax
007E08C8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E08CD: push eax
007E08CE: lea eax, var_48
007E08D1: push eax
007E08D2: call 00410A84h ; Set (object)
007E08D7: mov var_00000124, eax
007E08DD: mov eax, var_00000124
007E08E3: mov eax, [eax]
007E08E5: push var_00000124
007E08EB: call [eax+2Ch]
007E08EE: fclex 
007E08F0: mov var_00000128, eax
007E08F6: cmp var_00000128, 00000000h
007E08FD: jnl 7E091Fh
007E08FF: push 0000002Ch
007E0901: push 004412BCh
007E0906: push var_00000124
007E090C: push var_00000128
007E0912: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E0917: mov var_0000018C, eax
007E091D: jmp 7E0926h
007E091F: and var_0000018C, 00000000h
007E0926: lea eax, var_48
007E0929: push eax
007E092A: lea eax, var_44
007E092D: push eax
007E092E: push 00000002h
007E0930: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E0935: add esp, 0000000Ch
007E0938: lea ecx, var_60
007E093B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E0940: mov var_04, 0000000Eh
007E0947: lea eax, var_38
007E094A: push eax
007E094B: mov eax, [ebp+08h]
007E094E: mov eax, [eax]
007E0950: push [ebp+08h]
007E0953: call [eax+000001C0h]
007E0959: fclex 
007E095B: mov var_00000124, eax
007E0961: cmp var_00000124, 00000000h
007E0968: jnl 7E098Ah
007E096A: push 000001C0h
007E096F: push 0044420Ch
007E0974: push [ebp+08h]
007E0977: push var_00000124
007E097D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E0982: mov var_00000190, eax
007E0988: jmp 7E0991h
007E098A: and var_00000190, 00000000h
007E0991: push var_38
007E0994: call 004109DCh ; Val(arg_1)
007E0999: fstp real8 ptr var_00000120
007E099F: push 00000000h
007E09A1: push 00000000h
007E09A3: push 00000001h
007E09A5: push 00000000h
007E09A7: lea eax, var_000000C4
007E09AD: push eax
007E09AE: push 00000010h
007E09B0: push 00000880h
007E09B5: call 00410946h ; ReDim
007E09BA: add esp, 0000001Ch
007E09BD: mov var_000000CC, 00442BFCh
007E09C7: mov var_000000D4, 00000008h
007E09D1: lea esi, var_000000D4
007E09D7: push 00000000h
007E09D9: push var_000000C4
007E09DF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E09E4: mov ecx, eax
007E09E6: mov edx, esi
007E09E8: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007E09ED: mov edx, 0043D4D0h ; x16
007E09F2: lea ecx, var_3C
007E09F5: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007E09FA: lea eax, var_000000C4
007E0A00: push eax
007E0A01: lea eax, var_3C
007E0A04: push eax
007E0A05: fld real8 ptr var_00000120
007E0A0B: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007E0A10: push eax
007E0A11: call 007A6910h
007E0A16: lea eax, var_000000C4
007E0A1C: push eax
007E0A1D: push 00000000h
007E0A1F: call 00410934h ; Erase
007E0A24: lea eax, var_3C
007E0A27: push eax
007E0A28: lea eax, var_38
007E0A2B: push eax
007E0A2C: push 00000002h
007E0A2E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E0A33: add esp, 0000000Ch
007E0A36: jmp 007E1B2Fh
007E0A3B: mov var_04, 00000011h
007E0A42: push 00000000h
007E0A44: push 8001000Bh
007E0A49: mov eax, [ebp+08h]
007E0A4C: mov eax, [eax]
007E0A4E: push [ebp+08h]
007E0A51: call [eax+00000324h]
007E0A57: push eax
007E0A58: lea eax, var_44
007E0A5B: push eax
007E0A5C: call 00410A84h ; Set (object)
007E0A61: push eax
007E0A62: lea eax, var_60
007E0A65: push eax
007E0A66: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E0A6B: add esp, 00000010h
007E0A6E: mov var_000000CC, 00441B28h
007E0A78: mov var_000000D4, 00000008h
007E0A82: lea edx, var_000000D4
007E0A88: lea ecx, var_70
007E0A8B: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007E0A90: push 00000000h
007E0A92: push FFFFFFFFh
007E0A94: lea eax, var_70
007E0A97: push eax
007E0A98: lea eax, var_60
007E0A9B: push eax
007E0A9C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E0AA1: mov edx, eax
007E0AA3: lea ecx, var_38
007E0AA6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E0AAB: push eax
007E0AAC: lea eax, var_80
007E0AAF: push eax
007E0AB0: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
007E0AB5: lea eax, var_80
007E0AB8: push eax
007E0AB9: push 00002008h
007E0ABE: call 0041088Ch ; msvbvm60.dll.__vbaAryVar
007E0AC3: mov var_00000118, eax
007E0AC9: lea eax, var_00000118
007E0ACF: push eax
007E0AD0: lea eax, var_34
007E0AD3: push eax
007E0AD4: call 00410892h ; msvbvm60.dll.__vbaAryCopy
007E0AD9: lea ecx, var_38
007E0ADC: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E0AE1: lea ecx, var_44
007E0AE4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E0AE9: lea eax, var_80
007E0AEC: push eax
007E0AED: lea eax, var_70
007E0AF0: push eax
007E0AF1: lea eax, var_60
007E0AF4: push eax
007E0AF5: push 00000003h
007E0AF7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E0AFC: add esp, 00000010h
007E0AFF: mov var_04, 00000012h
007E0B06: and var_000000CC, 00000000h
007E0B0D: mov var_000000D4, 00000008h
007E0B17: push 00000010h
007E0B19: pop eax
007E0B1A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E0B1F: lea esi, var_000000D4
007E0B25: mov edi, esp
007E0B27: movsd 
007E0B28: movsd 
007E0B29: movsd 
007E0B2A: movsd 
007E0B2B: push 8001000Bh
007E0B30: mov eax, [ebp+08h]
007E0B33: mov eax, [eax]
007E0B35: push [ebp+08h]
007E0B38: call [eax+00000324h]
007E0B3E: push eax
007E0B3F: lea eax, var_44
007E0B42: push eax
007E0B43: call 00410A84h ; Set (object)
007E0B48: push eax
007E0B49: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007E0B4E: lea ecx, var_44
007E0B51: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E0B56: mov var_04, 00000013h
007E0B5D: mov var_000000CC, 00000001h
007E0B67: mov var_000000D4, 00000002h
007E0B71: push var_34
007E0B74: push 00000001h
007E0B76: call 00410886h ; UBound
007E0B7B: sub eax, 00000002h
007E0B7E: jo 007E1BFAh
007E0B84: mov var_000000DC, eax
007E0B8A: mov var_000000E4, 00000003h
007E0B94: and var_000000EC, 00000000h
007E0B9B: mov var_000000F4, 00000002h
007E0BA5: lea eax, var_000000D4
007E0BAB: push eax
007E0BAC: lea eax, var_000000E4
007E0BB2: push eax
007E0BB3: lea eax, var_000000F4
007E0BB9: push eax
007E0BBA: lea eax, var_00000154
007E0BC0: push eax
007E0BC1: lea eax, var_00000144
007E0BC7: push eax
007E0BC8: lea eax, var_30
007E0BCB: push eax
007E0BCC: call 00410A3Ch ; For
007E0BD1: mov var_0000016C, eax
007E0BD7: jmp 007E0CE6h
007E0BDC: mov var_04, 00000014h
007E0BE3: push 00000000h
007E0BE5: push 8001000Bh
007E0BEA: mov eax, [ebp+08h]
007E0BED: mov eax, [eax]
007E0BEF: push [ebp+08h]
007E0BF2: call [eax+00000324h]
007E0BF8: push eax
007E0BF9: lea eax, var_44
007E0BFC: push eax
007E0BFD: call 00410A84h ; Set (object)
007E0C02: push eax
007E0C03: lea eax, var_60
007E0C06: push eax
007E0C07: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E0C0C: add esp, 00000010h
007E0C0F: push eax
007E0C10: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E0C15: mov edx, eax
007E0C17: lea ecx, var_38
007E0C1A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E0C1F: push eax
007E0C20: lea eax, var_30
007E0C23: push eax
007E0C24: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007E0C29: push eax
007E0C2A: push var_34
007E0C2D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E0C32: push [eax]
007E0C34: call 00410A18h ; &
007E0C39: mov edx, eax
007E0C3B: lea ecx, var_3C
007E0C3E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E0C43: push eax
007E0C44: push 00441B28h
007E0C49: call 00410A18h ; &
007E0C4E: mov var_68, eax
007E0C51: mov var_70, 00000008h
007E0C58: push 00000010h
007E0C5A: pop eax
007E0C5B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E0C60: lea esi, var_70
007E0C63: mov edi, esp
007E0C65: movsd 
007E0C66: movsd 
007E0C67: movsd 
007E0C68: movsd 
007E0C69: push 8001000Bh
007E0C6E: mov eax, [ebp+08h]
007E0C71: mov eax, [eax]
007E0C73: push [ebp+08h]
007E0C76: call [eax+00000324h]
007E0C7C: push eax
007E0C7D: lea eax, var_48
007E0C80: push eax
007E0C81: call 00410A84h ; Set (object)
007E0C86: push eax
007E0C87: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007E0C8C: lea eax, var_3C
007E0C8F: push eax
007E0C90: lea eax, var_38
007E0C93: push eax
007E0C94: push 00000002h
007E0C96: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E0C9B: add esp, 0000000Ch
007E0C9E: lea eax, var_48
007E0CA1: push eax
007E0CA2: lea eax, var_44
007E0CA5: push eax
007E0CA6: push 00000002h
007E0CA8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E0CAD: add esp, 0000000Ch
007E0CB0: lea eax, var_70
007E0CB3: push eax
007E0CB4: lea eax, var_60
007E0CB7: push eax
007E0CB8: push 00000002h
007E0CBA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E0CBF: add esp, 0000000Ch
007E0CC2: mov var_04, 00000015h
007E0CC9: lea eax, var_00000154
007E0CCF: push eax
007E0CD0: lea eax, var_00000144
007E0CD6: push eax
007E0CD7: lea eax, var_30
007E0CDA: push eax
007E0CDB: call 00410A36h ; Next
007E0CE0: mov var_0000016C, eax
007E0CE6: cmp var_0000016C, 00000000h
007E0CED: jnz 007E0BDCh
007E0CF3: mov var_04, 00000016h
007E0CFA: push 004412BCh
007E0CFF: push 00000000h
007E0D01: push 00000007h
007E0D03: mov eax, [ebp+08h]
007E0D06: mov eax, [eax]
007E0D08: push [ebp+08h]
007E0D0B: call [eax+00000324h]
007E0D11: push eax
007E0D12: lea eax, var_44
007E0D15: push eax
007E0D16: call 00410A84h ; Set (object)
007E0D1B: push eax
007E0D1C: lea eax, var_60
007E0D1F: push eax
007E0D20: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E0D25: add esp, 00000010h
007E0D28: push eax
007E0D29: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E0D2E: push eax
007E0D2F: lea eax, var_48
007E0D32: push eax
007E0D33: call 00410A84h ; Set (object)
007E0D38: mov var_00000124, eax
007E0D3E: mov eax, var_00000124
007E0D44: mov eax, [eax]
007E0D46: push var_00000124
007E0D4C: call [eax+2Ch]
007E0D4F: fclex 
007E0D51: mov var_00000128, eax
007E0D57: cmp var_00000128, 00000000h
007E0D5E: jnl 7E0D80h
007E0D60: push 0000002Ch
007E0D62: push 004412BCh
007E0D67: push var_00000124
007E0D6D: push var_00000128
007E0D73: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E0D78: mov var_00000194, eax
007E0D7E: jmp 7E0D87h
007E0D80: and var_00000194, 00000000h
007E0D87: lea eax, var_48
007E0D8A: push eax
007E0D8B: lea eax, var_44
007E0D8E: push eax
007E0D8F: push 00000002h
007E0D91: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E0D96: add esp, 0000000Ch
007E0D99: lea ecx, var_60
007E0D9C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E0DA1: mov var_04, 00000017h
007E0DA8: lea eax, var_38
007E0DAB: push eax
007E0DAC: mov eax, [ebp+08h]
007E0DAF: mov eax, [eax]
007E0DB1: push [ebp+08h]
007E0DB4: call [eax+000001C0h]
007E0DBA: fclex 
007E0DBC: mov var_00000124, eax
007E0DC2: cmp var_00000124, 00000000h
007E0DC9: jnl 7E0DEBh
007E0DCB: push 000001C0h
007E0DD0: push 0044420Ch
007E0DD5: push [ebp+08h]
007E0DD8: push var_00000124
007E0DDE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E0DE3: mov var_00000198, eax
007E0DE9: jmp 7E0DF2h
007E0DEB: and var_00000198, 00000000h
007E0DF2: push var_38
007E0DF5: call 004109DCh ; Val(arg_1)
007E0DFA: fstp real8 ptr var_00000120
007E0E00: push 00000000h
007E0E02: push 00000000h
007E0E04: push 00000001h
007E0E06: push 00000000h
007E0E08: lea eax, var_000000C4
007E0E0E: push eax
007E0E0F: push 00000010h
007E0E11: push 00000880h
007E0E16: call 00410946h ; ReDim
007E0E1B: add esp, 0000001Ch
007E0E1E: push 00000000h
007E0E20: push 8001000Bh
007E0E25: mov eax, [ebp+08h]
007E0E28: mov eax, [eax]
007E0E2A: push [ebp+08h]
007E0E2D: call [eax+00000324h]
007E0E33: push eax
007E0E34: lea eax, var_44
007E0E37: push eax
007E0E38: call 00410A84h ; Set (object)
007E0E3D: push eax
007E0E3E: lea eax, var_60
007E0E41: push eax
007E0E42: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E0E47: add esp, 00000010h
007E0E4A: push eax
007E0E4B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E0E50: mov var_68, eax
007E0E53: mov var_70, 00000008h
007E0E5A: lea esi, var_70
007E0E5D: push 00000000h
007E0E5F: push var_000000C4
007E0E65: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E0E6A: mov ecx, eax
007E0E6C: mov edx, esi
007E0E6E: call 00410940h ; msvbvm60.dll.__vbaVarZero
007E0E73: mov edx, 0043D4DCh ; x17
007E0E78: lea ecx, var_3C
007E0E7B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007E0E80: lea eax, var_000000C4
007E0E86: push eax
007E0E87: lea eax, var_3C
007E0E8A: push eax
007E0E8B: fld real8 ptr var_00000120
007E0E91: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007E0E96: push eax
007E0E97: call 007A6910h
007E0E9C: lea eax, var_000000C4
007E0EA2: push eax
007E0EA3: push 00000000h
007E0EA5: call 00410934h ; Erase
007E0EAA: lea eax, var_3C
007E0EAD: push eax
007E0EAE: lea eax, var_38
007E0EB1: push eax
007E0EB2: push 00000002h
007E0EB4: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E0EB9: add esp, 0000000Ch
007E0EBC: lea ecx, var_44
007E0EBF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E0EC4: lea ecx, var_60
007E0EC7: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E0ECC: jmp 007E1B2Fh
007E0ED1: mov var_04, 00000019h
007E0ED8: push 004412BCh
007E0EDD: push 00000000h
007E0EDF: push 00000007h
007E0EE1: mov eax, [ebp+08h]
007E0EE4: mov eax, [eax]
007E0EE6: push [ebp+08h]
007E0EE9: call [eax+0000031Ch]
007E0EEF: push eax
007E0EF0: lea eax, var_44
007E0EF3: push eax
007E0EF4: call 00410A84h ; Set (object)
007E0EF9: push eax
007E0EFA: lea eax, var_60
007E0EFD: push eax
007E0EFE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E0F03: add esp, 00000010h
007E0F06: push eax
007E0F07: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E0F0C: push eax
007E0F0D: lea eax, var_48
007E0F10: push eax
007E0F11: call 00410A84h ; Set (object)
007E0F16: mov var_00000124, eax
007E0F1C: mov var_68, 00000001h
007E0F23: mov var_70, 00000002h
007E0F2A: lea eax, var_4C
007E0F2D: push eax
007E0F2E: lea eax, var_70
007E0F31: push eax
007E0F32: mov eax, var_00000124
007E0F38: mov eax, [eax]
007E0F3A: push var_00000124
007E0F40: call [eax+30h]
007E0F43: fclex 
007E0F45: mov var_00000128, eax
007E0F4B: cmp var_00000128, 00000000h
007E0F52: jnl 7E0F74h
007E0F54: push 00000030h
007E0F56: push 004412BCh
007E0F5B: push var_00000124
007E0F61: push var_00000128
007E0F67: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E0F6C: mov var_0000019C, eax
007E0F72: jmp 7E0F7Bh
007E0F74: and var_0000019C, 00000000h
007E0F7B: mov eax, var_4C
007E0F7E: mov var_0000012C, eax
007E0F84: lea eax, var_38
007E0F87: push eax
007E0F88: mov eax, var_0000012C
007E0F8E: mov eax, [eax]
007E0F90: push var_0000012C
007E0F96: call [eax+24h]
007E0F99: fclex 
007E0F9B: mov var_00000130, eax
007E0FA1: cmp var_00000130, 00000000h
007E0FA8: jnl 7E0FCAh
007E0FAA: push 00000024h
007E0FAC: push 004412DCh
007E0FB1: push var_0000012C
007E0FB7: push var_00000130
007E0FBD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E0FC2: mov var_000001A0, eax
007E0FC8: jmp 7E0FD1h
007E0FCA: and var_000001A0, 00000000h
007E0FD1: push var_38
007E0FD4: push 0044C03Ch ; ..
007E0FD9: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
007E0FDE: neg eax
007E0FE0: sbb eax, eax
007E0FE2: neg eax
007E0FE4: neg eax
007E0FE6: mov var_00000134, ax
007E0FED: lea ecx, var_38
007E0FF0: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E0FF5: lea eax, var_4C
007E0FF8: push eax
007E0FF9: lea eax, var_48
007E0FFC: push eax
007E0FFD: lea eax, var_44
007E1000: push eax
007E1001: push 00000003h
007E1003: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E1008: add esp, 00000010h
007E100B: lea eax, var_70
007E100E: push eax
007E100F: lea eax, var_60
007E1012: push eax
007E1013: push 00000002h
007E1015: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E101A: add esp, 0000000Ch
007E101D: movsx eax, word ptr var_00000134
007E1024: test eax, eax
007E1026: jz 007E15D3h
007E102C: mov var_04, 0000001Ah
007E1033: push 004412DCh
007E1038: push 00000000h
007E103A: push 0000000Dh
007E103C: mov eax, [ebp+08h]
007E103F: mov eax, [eax]
007E1041: push [ebp+08h]
007E1044: call [eax+0000031Ch]
007E104A: push eax
007E104B: lea eax, var_48
007E104E: push eax
007E104F: call 00410A84h ; Set (object)
007E1054: push eax
007E1055: lea eax, var_70
007E1058: push eax
007E1059: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E105E: add esp, 00000010h
007E1061: push eax
007E1062: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E1067: push eax
007E1068: lea eax, var_4C
007E106B: push eax
007E106C: call 00410A84h ; Set (object)
007E1071: mov var_00000124, eax
007E1077: lea eax, var_38
007E107A: push eax
007E107B: mov eax, var_00000124
007E1081: mov eax, [eax]
007E1083: push var_00000124
007E1089: call [eax+24h]
007E108C: fclex 
007E108E: mov var_00000128, eax
007E1094: cmp var_00000128, 00000000h
007E109B: jnl 7E10BDh
007E109D: push 00000024h
007E109F: push 004412DCh
007E10A4: push var_00000124
007E10AA: push var_00000128
007E10B0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E10B5: mov var_000001A4, eax
007E10BB: jmp 7E10C4h
007E10BD: and var_000001A4, 00000000h
007E10C4: push 00000000h
007E10C6: push 8001000Bh
007E10CB: mov eax, [ebp+08h]
007E10CE: mov eax, [eax]
007E10D0: push [ebp+08h]
007E10D3: call [eax+00000324h]
007E10D9: push eax
007E10DA: lea eax, var_44
007E10DD: push eax
007E10DE: call 00410A84h ; Set (object)
007E10E3: push eax
007E10E4: lea eax, var_60
007E10E7: push eax
007E10E8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E10ED: add esp, 00000010h
007E10F0: push eax
007E10F1: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E10F6: mov var_00000098, eax
007E10FC: mov var_000000A0, 00000008h
007E1106: mov eax, var_38
007E1109: mov var_00000170, eax
007E110F: and var_38, 00000000h
007E1113: mov eax, var_00000170
007E1119: mov var_78, eax
007E111C: mov var_80, 00000008h
007E1123: push 00000003h
007E1125: lea eax, var_80
007E1128: push eax
007E1129: lea eax, var_00000090
007E112F: push eax
007E1130: call 00410778h ; Left(arg_1, arg_2)
007E1135: lea eax, var_000000A0
007E113B: push eax
007E113C: lea eax, var_00000090
007E1142: push eax
007E1143: lea eax, var_000000B0
007E1149: push eax
007E114A: call 004109F4h ; msvbvm60.dll.__vbaVarCat
007E114F: push eax
007E1150: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E1155: mov var_000000B8, eax
007E115B: mov var_000000C0, 00000008h
007E1165: push 00000010h
007E1167: pop eax
007E1168: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E116D: lea esi, var_000000C0
007E1173: mov edi, esp
007E1175: movsd 
007E1176: movsd 
007E1177: movsd 
007E1178: movsd 
007E1179: push 8001000Bh
007E117E: mov eax, [ebp+08h]
007E1181: mov eax, [eax]
007E1183: push [ebp+08h]
007E1186: call [eax+00000324h]
007E118C: push eax
007E118D: lea eax, var_50
007E1190: push eax
007E1191: call 00410A84h ; Set (object)
007E1196: push eax
007E1197: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007E119C: lea eax, var_50
007E119F: push eax
007E11A0: lea eax, var_4C
007E11A3: push eax
007E11A4: lea eax, var_48
007E11A7: push eax
007E11A8: lea eax, var_44
007E11AB: push eax
007E11AC: push 00000004h
007E11AE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E11B3: add esp, 00000014h
007E11B6: lea eax, var_000000C0
007E11BC: push eax
007E11BD: lea eax, var_000000B0
007E11C3: push eax
007E11C4: lea eax, var_00000090
007E11CA: push eax
007E11CB: lea eax, var_000000A0
007E11D1: push eax
007E11D2: lea eax, var_80
007E11D5: push eax
007E11D6: lea eax, var_70
007E11D9: push eax
007E11DA: lea eax, var_60
007E11DD: push eax
007E11DE: push 00000007h
007E11E0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E11E5: add esp, 00000020h
007E11E8: mov var_04, 0000001Bh
007E11EF: push 004412BCh
007E11F4: push 00000000h
007E11F6: push 00000007h
007E11F8: mov eax, [ebp+08h]
007E11FB: mov eax, [eax]
007E11FD: push [ebp+08h]
007E1200: call [eax+00000324h]
007E1206: push eax
007E1207: lea eax, var_44
007E120A: push eax
007E120B: call 00410A84h ; Set (object)
007E1210: push eax
007E1211: lea eax, var_60
007E1214: push eax
007E1215: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E121A: add esp, 00000010h
007E121D: push eax
007E121E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E1223: push eax
007E1224: lea eax, var_48
007E1227: push eax
007E1228: call 00410A84h ; Set (object)
007E122D: mov var_00000124, eax
007E1233: mov eax, var_00000124
007E1239: mov eax, [eax]
007E123B: push var_00000124
007E1241: call [eax+2Ch]
007E1244: fclex 
007E1246: mov var_00000128, eax
007E124C: cmp var_00000128, 00000000h
007E1253: jnl 7E1275h
007E1255: push 0000002Ch
007E1257: push 004412BCh
007E125C: push var_00000124
007E1262: push var_00000128
007E1268: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E126D: mov var_000001A8, eax
007E1273: jmp 7E127Ch
007E1275: and var_000001A8, 00000000h
007E127C: lea eax, var_48
007E127F: push eax
007E1280: lea eax, var_44
007E1283: push eax
007E1284: push 00000002h
007E1286: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E128B: add esp, 0000000Ch
007E128E: lea ecx, var_60
007E1291: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E1296: mov var_04, 0000001Ch
007E129D: push 004412BCh
007E12A2: push 00000000h
007E12A4: push 00000007h
007E12A6: mov eax, [ebp+08h]
007E12A9: mov eax, [eax]
007E12AB: push [ebp+08h]
007E12AE: call [eax+0000031Ch]
007E12B4: push eax
007E12B5: lea eax, var_44
007E12B8: push eax
007E12B9: call 00410A84h ; Set (object)
007E12BE: push eax
007E12BF: lea eax, var_60
007E12C2: push eax
007E12C3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E12C8: add esp, 00000010h
007E12CB: push eax
007E12CC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E12D1: push eax
007E12D2: lea eax, var_48
007E12D5: push eax
007E12D6: call 00410A84h ; Set (object)
007E12DB: mov var_00000124, eax
007E12E1: mov eax, var_00000124
007E12E7: mov eax, [eax]
007E12E9: push var_00000124
007E12EF: call [eax+2Ch]
007E12F2: fclex 
007E12F4: mov var_00000128, eax
007E12FA: cmp var_00000128, 00000000h
007E1301: jnl 7E1323h
007E1303: push 0000002Ch
007E1305: push 004412BCh
007E130A: push var_00000124
007E1310: push var_00000128
007E1316: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E131B: mov var_000001AC, eax
007E1321: jmp 7E132Ah
007E1323: and var_000001AC, 00000000h
007E132A: lea eax, var_48
007E132D: push eax
007E132E: lea eax, var_44
007E1331: push eax
007E1332: push 00000002h
007E1334: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E1339: add esp, 0000000Ch
007E133C: lea ecx, var_60
007E133F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E1344: mov var_04, 0000001Dh
007E134B: push 004412BCh
007E1350: push 00000000h
007E1352: push 00000007h
007E1354: mov eax, [ebp+08h]
007E1357: mov eax, [eax]
007E1359: push [ebp+08h]
007E135C: call [eax+0000031Ch]
007E1362: push eax
007E1363: lea eax, var_44
007E1366: push eax
007E1367: call 00410A84h ; Set (object)
007E136C: push eax
007E136D: lea eax, var_60
007E1370: push eax
007E1371: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E1376: add esp, 00000010h
007E1379: push eax
007E137A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E137F: push eax
007E1380: lea eax, var_48
007E1383: push eax
007E1384: call 00410A84h ; Set (object)
007E1389: mov var_00000124, eax
007E138F: mov var_000000A8, 00000001h
007E1399: mov var_000000B0, 00000002h
007E13A3: mov var_00000098, 80020004h
007E13AD: mov var_000000A0, 0000000Ah
007E13B7: mov var_000000EC, 0044C03Ch ; ..
007E13C1: mov var_000000F4, 00000008h
007E13CB: lea edx, var_000000F4
007E13D1: lea ecx, var_00000090
007E13D7: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007E13DC: mov var_78, 80020004h
007E13E3: mov var_80, 0000000Ah
007E13EA: mov var_68, 80020004h
007E13F1: mov var_70, 0000000Ah
007E13F8: lea eax, var_4C
007E13FB: push eax
007E13FC: lea eax, var_000000B0
007E1402: push eax
007E1403: lea eax, var_000000A0
007E1409: push eax
007E140A: lea eax, var_00000090
007E1410: push eax
007E1411: lea eax, var_80
007E1414: push eax
007E1415: lea eax, var_70
007E1418: push eax
007E1419: mov eax, var_00000124
007E141F: mov eax, [eax]
007E1421: push var_00000124
007E1427: call [eax+28h]
007E142A: fclex 
007E142C: mov var_00000128, eax
007E1432: cmp var_00000128, 00000000h
007E1439: jnl 7E145Bh
007E143B: push 00000028h
007E143D: push 004412BCh
007E1442: push var_00000124
007E1448: push var_00000128
007E144E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E1453: mov var_000001B0, eax
007E1459: jmp 7E1462h
007E145B: and var_000001B0, 00000000h
007E1462: lea eax, var_4C
007E1465: push eax
007E1466: lea eax, var_48
007E1469: push eax
007E146A: lea eax, var_44
007E146D: push eax
007E146E: push 00000003h
007E1470: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E1475: add esp, 00000010h
007E1478: lea eax, var_000000B0
007E147E: push eax
007E147F: lea eax, var_000000A0
007E1485: push eax
007E1486: lea eax, var_00000090
007E148C: push eax
007E148D: lea eax, var_80
007E1490: push eax
007E1491: lea eax, var_70
007E1494: push eax
007E1495: lea eax, var_60
007E1498: push eax
007E1499: push 00000006h
007E149B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E14A0: add esp, 0000001Ch
007E14A3: mov var_04, 0000001Eh
007E14AA: lea eax, var_38
007E14AD: push eax
007E14AE: mov eax, [ebp+08h]
007E14B1: mov eax, [eax]
007E14B3: push [ebp+08h]
007E14B6: call [eax+000001C0h]
007E14BC: fclex 
007E14BE: mov var_00000124, eax
007E14C4: cmp var_00000124, 00000000h
007E14CB: jnl 7E14EDh
007E14CD: push 000001C0h
007E14D2: push 0044420Ch
007E14D7: push [ebp+08h]
007E14DA: push var_00000124
007E14E0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E14E5: mov var_000001B4, eax
007E14EB: jmp 7E14F4h
007E14ED: and var_000001B4, 00000000h
007E14F4: push var_38
007E14F7: call 004109DCh ; Val(arg_1)
007E14FC: fstp real8 ptr var_00000120
007E1502: push 00000000h
007E1504: push 00000000h
007E1506: push 00000001h
007E1508: push 00000000h
007E150A: lea eax, var_000000C4
007E1510: push eax
007E1511: push 00000010h
007E1513: push 00000880h
007E1518: call 00410946h ; ReDim
007E151D: add esp, 0000001Ch
007E1520: push 00000000h
007E1522: push 8001000Bh
007E1527: mov eax, [ebp+08h]
007E152A: mov eax, [eax]
007E152C: push [ebp+08h]
007E152F: call [eax+00000324h]
007E1535: push eax
007E1536: lea eax, var_44
007E1539: push eax
007E153A: call 00410A84h ; Set (object)
007E153F: push eax
007E1540: lea eax, var_60
007E1543: push eax
007E1544: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E1549: add esp, 00000010h
007E154C: push eax
007E154D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E1552: mov var_68, eax
007E1555: mov var_70, 00000008h
007E155C: lea esi, var_70
007E155F: push 00000000h
007E1561: push var_000000C4
007E1567: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E156C: mov ecx, eax
007E156E: mov edx, esi
007E1570: call 00410940h ; msvbvm60.dll.__vbaVarZero
007E1575: mov edx, 0043D4DCh ; x17
007E157A: lea ecx, var_3C
007E157D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007E1582: lea eax, var_000000C4
007E1588: push eax
007E1589: lea eax, var_3C
007E158C: push eax
007E158D: fld real8 ptr var_00000120
007E1593: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007E1598: push eax
007E1599: call 007A6910h
007E159E: lea eax, var_000000C4
007E15A4: push eax
007E15A5: push 00000000h
007E15A7: call 00410934h ; Erase
007E15AC: lea eax, var_3C
007E15AF: push eax
007E15B0: lea eax, var_38
007E15B3: push eax
007E15B4: push 00000002h
007E15B6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E15BB: add esp, 0000000Ch
007E15BE: lea ecx, var_44
007E15C1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E15C6: lea ecx, var_60
007E15C9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E15CE: jmp 007E1B2Fh
007E15D3: mov var_04, 00000020h
007E15DA: push 004412DCh
007E15DF: push 00000000h
007E15E1: push 0000000Dh
007E15E3: mov eax, [ebp+08h]
007E15E6: mov eax, [eax]
007E15E8: push [ebp+08h]
007E15EB: call [eax+0000031Ch]
007E15F1: push eax
007E15F2: lea eax, var_48
007E15F5: push eax
007E15F6: call 00410A84h ; Set (object)
007E15FB: push eax
007E15FC: lea eax, var_70
007E15FF: push eax
007E1600: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E1605: add esp, 00000010h
007E1608: push eax
007E1609: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E160E: push eax
007E160F: lea eax, var_4C
007E1612: push eax
007E1613: call 00410A84h ; Set (object)
007E1618: mov var_00000124, eax
007E161E: lea eax, var_38
007E1621: push eax
007E1622: mov eax, var_00000124
007E1628: mov eax, [eax]
007E162A: push var_00000124
007E1630: call [eax+1Ch]
007E1633: fclex 
007E1635: mov var_00000128, eax
007E163B: cmp var_00000128, 00000000h
007E1642: jnl 7E1664h
007E1644: push 0000001Ch
007E1646: push 004412DCh
007E164B: push var_00000124
007E1651: push var_00000128
007E1657: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E165C: mov var_000001B8, eax
007E1662: jmp 7E166Bh
007E1664: and var_000001B8, 00000000h
007E166B: push 00000000h
007E166D: push 8001000Bh
007E1672: mov eax, [ebp+08h]
007E1675: mov eax, [eax]
007E1677: push [ebp+08h]
007E167A: call [eax+00000324h]
007E1680: push eax
007E1681: lea eax, var_44
007E1684: push eax
007E1685: call 00410A84h ; Set (object)
007E168A: push eax
007E168B: lea eax, var_60
007E168E: push eax
007E168F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E1694: add esp, 00000010h
007E1697: push eax
007E1698: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E169D: mov edx, eax
007E169F: lea ecx, var_3C
007E16A2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E16A7: push eax
007E16A8: push var_38
007E16AB: call 00410A18h ; &
007E16B0: mov edx, eax
007E16B2: lea ecx, var_40
007E16B5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E16BA: push eax
007E16BB: push 00441B28h
007E16C0: call 00410A18h ; &
007E16C5: mov var_78, eax
007E16C8: mov var_80, 00000008h
007E16CF: push 00000010h
007E16D1: pop eax
007E16D2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E16D7: lea esi, var_80
007E16DA: mov edi, esp
007E16DC: movsd 
007E16DD: movsd 
007E16DE: movsd 
007E16DF: movsd 
007E16E0: push 8001000Bh
007E16E5: mov eax, [ebp+08h]
007E16E8: mov eax, [eax]
007E16EA: push [ebp+08h]
007E16ED: call [eax+00000324h]
007E16F3: push eax
007E16F4: lea eax, var_50
007E16F7: push eax
007E16F8: call 00410A84h ; Set (object)
007E16FD: push eax
007E16FE: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007E1703: lea eax, var_40
007E1706: push eax
007E1707: lea eax, var_38
007E170A: push eax
007E170B: lea eax, var_3C
007E170E: push eax
007E170F: push 00000003h
007E1711: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E1716: add esp, 00000010h
007E1719: lea eax, var_50
007E171C: push eax
007E171D: lea eax, var_4C
007E1720: push eax
007E1721: lea eax, var_48
007E1724: push eax
007E1725: lea eax, var_44
007E1728: push eax
007E1729: push 00000004h
007E172B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E1730: add esp, 00000014h
007E1733: lea eax, var_80
007E1736: push eax
007E1737: lea eax, var_70
007E173A: push eax
007E173B: lea eax, var_60
007E173E: push eax
007E173F: push 00000003h
007E1741: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E1746: add esp, 00000010h
007E1749: mov var_04, 00000021h
007E1750: push 004412BCh
007E1755: push 00000000h
007E1757: push 00000007h
007E1759: mov eax, [ebp+08h]
007E175C: mov eax, [eax]
007E175E: push [ebp+08h]
007E1761: call [eax+00000324h]
007E1767: push eax
007E1768: lea eax, var_44
007E176B: push eax
007E176C: call 00410A84h ; Set (object)
007E1771: push eax
007E1772: lea eax, var_60
007E1775: push eax
007E1776: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E177B: add esp, 00000010h
007E177E: push eax
007E177F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E1784: push eax
007E1785: lea eax, var_48
007E1788: push eax
007E1789: call 00410A84h ; Set (object)
007E178E: mov var_00000124, eax
007E1794: mov eax, var_00000124
007E179A: mov eax, [eax]
007E179C: push var_00000124
007E17A2: call [eax+2Ch]
007E17A5: fclex 
007E17A7: mov var_00000128, eax
007E17AD: cmp var_00000128, 00000000h
007E17B4: jnl 7E17D6h
007E17B6: push 0000002Ch
007E17B8: push 004412BCh
007E17BD: push var_00000124
007E17C3: push var_00000128
007E17C9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E17CE: mov var_000001BC, eax
007E17D4: jmp 7E17DDh
007E17D6: and var_000001BC, 00000000h
007E17DD: lea eax, var_48
007E17E0: push eax
007E17E1: lea eax, var_44
007E17E4: push eax
007E17E5: push 00000002h
007E17E7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E17EC: add esp, 0000000Ch
007E17EF: lea ecx, var_60
007E17F2: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E17F7: mov var_04, 00000022h
007E17FE: push 004412BCh
007E1803: push 00000000h
007E1805: push 00000007h
007E1807: mov eax, [ebp+08h]
007E180A: mov eax, [eax]
007E180C: push [ebp+08h]
007E180F: call [eax+0000031Ch]
007E1815: push eax
007E1816: lea eax, var_44
007E1819: push eax
007E181A: call 00410A84h ; Set (object)
007E181F: push eax
007E1820: lea eax, var_60
007E1823: push eax
007E1824: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E1829: add esp, 00000010h
007E182C: push eax
007E182D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E1832: push eax
007E1833: lea eax, var_48
007E1836: push eax
007E1837: call 00410A84h ; Set (object)
007E183C: mov var_00000124, eax
007E1842: mov eax, var_00000124
007E1848: mov eax, [eax]
007E184A: push var_00000124
007E1850: call [eax+2Ch]
007E1853: fclex 
007E1855: mov var_00000128, eax
007E185B: cmp var_00000128, 00000000h
007E1862: jnl 7E1884h
007E1864: push 0000002Ch
007E1866: push 004412BCh
007E186B: push var_00000124
007E1871: push var_00000128
007E1877: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E187C: mov var_000001C0, eax
007E1882: jmp 7E188Bh
007E1884: and var_000001C0, 00000000h
007E188B: lea eax, var_48
007E188E: push eax
007E188F: lea eax, var_44
007E1892: push eax
007E1893: push 00000002h
007E1895: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E189A: add esp, 0000000Ch
007E189D: lea ecx, var_60
007E18A0: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E18A5: mov var_04, 00000023h
007E18AC: push 004412BCh
007E18B1: push 00000000h
007E18B3: push 00000007h
007E18B5: mov eax, [ebp+08h]
007E18B8: mov eax, [eax]
007E18BA: push [ebp+08h]
007E18BD: call [eax+0000031Ch]
007E18C3: push eax
007E18C4: lea eax, var_44
007E18C7: push eax
007E18C8: call 00410A84h ; Set (object)
007E18CD: push eax
007E18CE: lea eax, var_60
007E18D1: push eax
007E18D2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E18D7: add esp, 00000010h
007E18DA: push eax
007E18DB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E18E0: push eax
007E18E1: lea eax, var_48
007E18E4: push eax
007E18E5: call 00410A84h ; Set (object)
007E18EA: mov var_00000124, eax
007E18F0: mov var_000000A8, 00000001h
007E18FA: mov var_000000B0, 00000002h
007E1904: mov var_00000098, 80020004h
007E190E: mov var_000000A0, 0000000Ah
007E1918: mov var_000000EC, 0044C03Ch ; ..
007E1922: mov var_000000F4, 00000008h
007E192C: lea edx, var_000000F4
007E1932: lea ecx, var_00000090
007E1938: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007E193D: mov var_78, 80020004h
007E1944: mov var_80, 0000000Ah
007E194B: mov var_68, 80020004h
007E1952: mov var_70, 0000000Ah
007E1959: lea eax, var_4C
007E195C: push eax
007E195D: lea eax, var_000000B0
007E1963: push eax
007E1964: lea eax, var_000000A0
007E196A: push eax
007E196B: lea eax, var_00000090
007E1971: push eax
007E1972: lea eax, var_80
007E1975: push eax
007E1976: lea eax, var_70
007E1979: push eax
007E197A: mov eax, var_00000124
007E1980: mov eax, [eax]
007E1982: push var_00000124
007E1988: call [eax+28h]
007E198B: fclex 
007E198D: mov var_00000128, eax
007E1993: cmp var_00000128, 00000000h
007E199A: jnl 7E19BCh
007E199C: push 00000028h
007E199E: push 004412BCh
007E19A3: push var_00000124
007E19A9: push var_00000128
007E19AF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E19B4: mov var_000001C4, eax
007E19BA: jmp 7E19C3h
007E19BC: and var_000001C4, 00000000h
007E19C3: lea eax, var_4C
007E19C6: push eax
007E19C7: lea eax, var_48
007E19CA: push eax
007E19CB: lea eax, var_44
007E19CE: push eax
007E19CF: push 00000003h
007E19D1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E19D6: add esp, 00000010h
007E19D9: lea eax, var_000000B0
007E19DF: push eax
007E19E0: lea eax, var_000000A0
007E19E6: push eax
007E19E7: lea eax, var_00000090
007E19ED: push eax
007E19EE: lea eax, var_80
007E19F1: push eax
007E19F2: lea eax, var_70
007E19F5: push eax
007E19F6: lea eax, var_60
007E19F9: push eax
007E19FA: push 00000006h
007E19FC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E1A01: add esp, 0000001Ch
007E1A04: mov var_04, 00000024h
007E1A0B: lea eax, var_38
007E1A0E: push eax
007E1A0F: mov eax, [ebp+08h]
007E1A12: mov eax, [eax]
007E1A14: push [ebp+08h]
007E1A17: call [eax+000001C0h]
007E1A1D: fclex 
007E1A1F: mov var_00000124, eax
007E1A25: cmp var_00000124, 00000000h
007E1A2C: jnl 7E1A4Eh
007E1A2E: push 000001C0h
007E1A33: push 0044420Ch
007E1A38: push [ebp+08h]
007E1A3B: push var_00000124
007E1A41: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E1A46: mov var_000001C8, eax
007E1A4C: jmp 7E1A55h
007E1A4E: and var_000001C8, 00000000h
007E1A55: push var_38
007E1A58: call 004109DCh ; Val(arg_1)
007E1A5D: fstp real8 ptr var_00000120
007E1A63: push 00000000h
007E1A65: push 00000000h
007E1A67: push 00000001h
007E1A69: push 00000000h
007E1A6B: lea eax, var_000000C4
007E1A71: push eax
007E1A72: push 00000010h
007E1A74: push 00000880h
007E1A79: call 00410946h ; ReDim
007E1A7E: add esp, 0000001Ch
007E1A81: push 00000000h
007E1A83: push 8001000Bh
007E1A88: mov eax, [ebp+08h]
007E1A8B: mov eax, [eax]
007E1A8D: push [ebp+08h]
007E1A90: call [eax+00000324h]
007E1A96: push eax
007E1A97: lea eax, var_44
007E1A9A: push eax
007E1A9B: call 00410A84h ; Set (object)
007E1AA0: push eax
007E1AA1: lea eax, var_60
007E1AA4: push eax
007E1AA5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E1AAA: add esp, 00000010h
007E1AAD: push eax
007E1AAE: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E1AB3: mov var_68, eax
007E1AB6: mov var_70, 00000008h
007E1ABD: lea esi, var_70
007E1AC0: push 00000000h
007E1AC2: push var_000000C4
007E1AC8: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E1ACD: mov ecx, eax
007E1ACF: mov edx, esi
007E1AD1: call 00410940h ; msvbvm60.dll.__vbaVarZero
007E1AD6: mov edx, 0043D4DCh ; x17
007E1ADB: lea ecx, var_3C
007E1ADE: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007E1AE3: lea eax, var_000000C4
007E1AE9: push eax
007E1AEA: lea eax, var_3C
007E1AED: push eax
007E1AEE: fld real8 ptr var_00000120
007E1AF4: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007E1AF9: push eax
007E1AFA: call 007A6910h
007E1AFF: lea eax, var_000000C4
007E1B05: push eax
007E1B06: push 00000000h
007E1B08: call 00410934h ; Erase
007E1B0D: lea eax, var_3C
007E1B10: push eax
007E1B11: lea eax, var_38
007E1B14: push eax
007E1B15: push 00000002h
007E1B17: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E1B1C: add esp, 0000000Ch
007E1B1F: lea ecx, var_44
007E1B22: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E1B27: lea ecx, var_60
007E1B2A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E1B2F: mov var_10, 00000000h
007E1B36: wait 
007E1B37: push 007E1BDBh
007E1B3C: jmp 7E1BAFh
007E1B3E: lea eax, var_40
007E1B41: push eax
007E1B42: lea eax, var_3C
007E1B45: push eax
007E1B46: lea eax, var_38
007E1B49: push eax
007E1B4A: push 00000003h
007E1B4C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E1B51: add esp, 00000010h
007E1B54: lea eax, var_50
007E1B57: push eax
007E1B58: lea eax, var_4C
007E1B5B: push eax
007E1B5C: lea eax, var_48
007E1B5F: push eax
007E1B60: lea eax, var_44
007E1B63: push eax
007E1B64: push 00000004h
007E1B66: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E1B6B: add esp, 00000014h
007E1B6E: lea eax, var_000000C0
007E1B74: push eax
007E1B75: lea eax, var_000000B0
007E1B7B: push eax
007E1B7C: lea eax, var_000000A0
007E1B82: push eax
007E1B83: lea eax, var_00000090
007E1B89: push eax
007E1B8A: lea eax, var_80
007E1B8D: push eax
007E1B8E: lea eax, var_70
007E1B91: push eax
007E1B92: lea eax, var_60
007E1B95: push eax
007E1B96: push 00000007h
007E1B98: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E1B9D: add esp, 00000020h
007E1BA0: lea eax, var_000000C4
007E1BA6: push eax
007E1BA7: push 00000000h
007E1BA9: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
007E1BAE: ret 
End Sub

Private sub lstFileMgrFiles__7E2429
007E2429: push ebp
007E242A: mov ebp, esp
007E242C: sub esp, 0000000Ch
007E242F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007E2434: mov eax, fs:[00h]
007E243A: push eax
007E243B: mov fs:[00000000h], esp
007E2442: push 00000008h
007E2444: pop eax
007E2445: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E244A: push ebx
007E244B: push esi
007E244C: push edi
007E244D: mov var_0C, esp
007E2450: mov var_08, 00409988h
007E2457: mov eax, [ebp+08h]
007E245A: and eax, 00000001h
007E245D: mov var_04, eax
007E2460: mov eax, [ebp+08h]
007E2463: and al, FEh
007E2465: mov [ebp+08h], eax
007E2468: mov eax, [ebp+08h]
007E246B: mov eax, [eax]
007E246D: push [ebp+08h]
007E2470: call [eax+04h]
007E2473: mov eax, [ebp+0Ch]
007E2476: or word ptr [eax], FFFFh
007E247A: mov var_04, 00000000h
007E2481: mov eax, [ebp+08h]
007E2484: mov eax, [eax]
007E2486: push [ebp+08h]
007E2489: call [eax+08h]
007E248C: mov eax, var_04
007E248F: mov ecx, var_14
007E2492: mov fs:[00000000h], ecx
007E2499: pop edi
007E249A: pop esi
007E249B: pop ebx
007E249C: leave 
007E249D: retn 0008h
End Sub

Private sub lstFileMgrFiles__7E24A0
007E24A0: push ebp
007E24A1: mov ebp, esp
007E24A3: sub esp, 00000018h
007E24A6: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007E24AB: mov eax, fs:[00h]
007E24B1: push eax
007E24B2: mov fs:[00000000h], esp
007E24B9: push 00000074h
007E24BB: pop eax
007E24BC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E24C1: push ebx
007E24C2: push esi
007E24C3: push edi
007E24C4: mov var_18, esp
007E24C7: mov var_14, 00409990h
007E24CE: mov eax, [ebp+08h]
007E24D1: and eax, 00000001h
007E24D4: mov var_10, eax
007E24D7: mov eax, [ebp+08h]
007E24DA: and al, FEh
007E24DC: mov [ebp+08h], eax
007E24DF: mov var_0C, 00000000h
007E24E6: mov eax, [ebp+08h]
007E24E9: mov eax, [eax]
007E24EB: push [ebp+08h]
007E24EE: call [eax+04h]
007E24F1: mov var_04, 00000001h
007E24F8: push [ebp+0Ch]
007E24FB: lea eax, var_24
007E24FE: push eax
007E24FF: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
007E2504: mov var_04, 00000002h
007E250B: push FFFFFFFFh
007E250D: call 00410A60h ; On Error ...
007E2512: mov var_04, 00000003h
007E2519: lea eax, var_70
007E251C: push eax
007E251D: mov eax, var_24
007E2520: mov eax, [eax]
007E2522: push var_24
007E2525: call [eax+34h]
007E2528: fclex 
007E252A: mov var_74, eax
007E252D: cmp var_74, 00000000h
007E2531: jnl 7E254Dh
007E2533: push 00000034h
007E2535: push 00450154h
007E253A: push var_24
007E253D: push var_74
007E2540: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E2545: mov var_00000090, eax
007E254B: jmp 7E2554h
007E254D: and var_00000090, 00000000h
007E2554: push 00000000h
007E2556: push 0000000Fh
007E2558: mov eax, [ebp+08h]
007E255B: mov eax, [eax]
007E255D: push [ebp+08h]
007E2560: call [eax+00000324h]
007E2566: push eax
007E2567: lea eax, var_28
007E256A: push eax
007E256B: call 00410A84h ; Set (object)
007E2570: push eax
007E2571: lea eax, var_3C
007E2574: push eax
007E2575: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E257A: add esp, 00000010h
007E257D: push eax
007E257E: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007E2583: mov si, ax
007E2586: mov edi, var_70
007E2589: sub edi, 00000001h
007E258C: jo 007E2827h
007E2592: push 00000000h
007E2594: push 00000010h
007E2596: mov eax, [ebp+08h]
007E2599: mov eax, [eax]
007E259B: push [ebp+08h]
007E259E: call [eax+00000324h]
007E25A4: push eax
007E25A5: lea eax, var_2C
007E25A8: push eax
007E25A9: call 00410A84h ; Set (object)
007E25AE: push eax
007E25AF: lea eax, var_4C
007E25B2: push eax
007E25B3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E25B8: add esp, 00000010h
007E25BB: push eax
007E25BC: call 004109D0h ; msvbvm60.dll.__vbaI2Var
007E25C1: movsx eax, ax
007E25C4: sub edi, eax
007E25C6: neg edi
007E25C8: sbb edi, edi
007E25CA: inc edi
007E25CB: neg edi
007E25CD: and si, di
007E25D0: mov var_78, si
007E25D4: lea eax, var_2C
007E25D7: push eax
007E25D8: lea eax, var_28
007E25DB: push eax
007E25DC: push 00000002h
007E25DE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E25E3: add esp, 0000000Ch
007E25E6: lea eax, var_4C
007E25E9: push eax
007E25EA: lea eax, var_3C
007E25ED: push eax
007E25EE: push 00000002h
007E25F0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E25F5: add esp, 0000000Ch
007E25F8: movsx eax, word ptr var_78
007E25FC: test eax, eax
007E25FE: jz 007E269Fh
007E2604: mov var_04, 00000004h
007E260B: push 00000000h
007E260D: push 00000011h
007E260F: mov eax, [ebp+08h]
007E2612: mov eax, [eax]
007E2614: push [ebp+08h]
007E2617: call [eax+00000324h]
007E261D: push eax
007E261E: lea eax, var_28
007E2621: push eax
007E2622: call 00410A84h ; Set (object)
007E2627: push eax
007E2628: lea eax, var_3C
007E262B: push eax
007E262C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E2631: add esp, 00000010h
007E2634: push eax
007E2635: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007E263A: push 00000001h
007E263C: pop ecx
007E263D: sub ecx, eax
007E263F: jo 007E2827h
007E2645: mov var_54, ecx
007E2648: mov var_5C, 00000003h
007E264F: push 00000010h
007E2651: pop eax
007E2652: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E2657: lea esi, var_5C
007E265A: mov edi, esp
007E265C: movsd 
007E265D: movsd 
007E265E: movsd 
007E265F: movsd 
007E2660: push 00000011h
007E2662: mov eax, [ebp+08h]
007E2665: mov eax, [eax]
007E2667: push [ebp+08h]
007E266A: call [eax+00000324h]
007E2670: push eax
007E2671: lea eax, var_2C
007E2674: push eax
007E2675: call 00410A84h ; Set (object)
007E267A: push eax
007E267B: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007E2680: lea eax, var_2C
007E2683: push eax
007E2684: lea eax, var_28
007E2687: push eax
007E2688: push 00000002h
007E268A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E268F: add esp, 0000000Ch
007E2692: lea ecx, var_3C
007E2695: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E269A: jmp 007E2781h
007E269F: mov var_04, 00000006h
007E26A6: and var_54, 00000000h
007E26AA: mov var_5C, 00000003h
007E26B1: push 00000010h
007E26B3: pop eax
007E26B4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E26B9: lea esi, var_5C
007E26BC: mov edi, esp
007E26BE: movsd 
007E26BF: movsd 
007E26C0: movsd 
007E26C1: movsd 
007E26C2: push 00000011h
007E26C4: mov eax, [ebp+08h]
007E26C7: mov eax, [eax]
007E26C9: push [ebp+08h]
007E26CC: call [eax+00000324h]
007E26D2: push eax
007E26D3: lea eax, var_28
007E26D6: push eax
007E26D7: call 00410A84h ; Set (object)
007E26DC: push eax
007E26DD: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007E26E2: lea ecx, var_28
007E26E5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E26EA: mov var_04, 00000007h
007E26F1: lea eax, var_70
007E26F4: push eax
007E26F5: mov eax, var_24
007E26F8: mov eax, [eax]
007E26FA: push var_24
007E26FD: call [eax+34h]
007E2700: fclex 
007E2702: mov var_74, eax
007E2705: cmp var_74, 00000000h
007E2709: jnl 7E2725h
007E270B: push 00000034h
007E270D: push 00450154h
007E2712: push var_24
007E2715: push var_74
007E2718: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E271D: mov var_00000094, eax
007E2723: jmp 7E272Ch
007E2725: and var_00000094, 00000000h
007E272C: mov ecx, var_70
007E272F: sub ecx, 00000001h
007E2732: jo 007E2827h
007E2738: call 004108B0h ; msvbvm60.dll.__vbaI2I4
007E273D: mov var_54, ax
007E2741: mov var_5C, 00000002h
007E2748: push 00000010h
007E274A: pop eax
007E274B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E2750: lea esi, var_5C
007E2753: mov edi, esp
007E2755: movsd 
007E2756: movsd 
007E2757: movsd 
007E2758: movsd 
007E2759: push 00000010h
007E275B: mov eax, [ebp+08h]
007E275E: mov eax, [eax]
007E2760: push [ebp+08h]
007E2763: call [eax+00000324h]
007E2769: push eax
007E276A: lea eax, var_28
007E276D: push eax
007E276E: call 00410A84h ; Set (object)
007E2773: push eax
007E2774: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007E2779: lea ecx, var_28
007E277C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E2781: mov var_04, 00000009h
007E2788: or var_54, FFFFFFFFh
007E278C: mov var_5C, 0000000Bh
007E2793: push 00000010h
007E2795: pop eax
007E2796: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E279B: lea esi, var_5C
007E279E: mov edi, esp
007E27A0: movsd 
007E27A1: movsd 
007E27A2: movsd 
007E27A3: movsd 
007E27A4: push 0000000Fh
007E27A6: mov eax, [ebp+08h]
007E27A9: mov eax, [eax]
007E27AB: push [ebp+08h]
007E27AE: call [eax+00000324h]
007E27B4: push eax
007E27B5: lea eax, var_28
007E27B8: push eax
007E27B9: call 00410A84h ; Set (object)
007E27BE: push eax
007E27BF: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007E27C4: lea ecx, var_28
007E27C7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E27CC: mov var_10, 00000000h
007E27D3: push 007E2808h
007E27D8: jmp 7E27FFh
007E27DA: lea eax, var_2C
007E27DD: push eax
007E27DE: lea eax, var_28
007E27E1: push eax
007E27E2: push 00000002h
007E27E4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E27E9: add esp, 0000000Ch
007E27EC: lea eax, var_4C
007E27EF: push eax
007E27F0: lea eax, var_3C
007E27F3: push eax
007E27F4: push 00000002h
007E27F6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E27FB: add esp, 0000000Ch
007E27FE: ret 
End Sub

Private sub lstFileMgrFiles__7E5A2A
007E5A2A: push ebp
007E5A2B: mov ebp, esp
007E5A2D: sub esp, 00000018h
007E5A30: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007E5A35: mov eax, fs:[00h]
007E5A3B: push eax
007E5A3C: mov fs:[00000000h], esp
007E5A43: mov eax, 000000B8h
007E5A48: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E5A4D: push ebx
007E5A4E: push esi
007E5A4F: push edi
007E5A50: mov var_18, esp
007E5A53: mov var_14, 00409A00h
007E5A5A: mov eax, [ebp+08h]
007E5A5D: and eax, 00000001h
007E5A60: mov var_10, eax
007E5A63: mov eax, [ebp+08h]
007E5A66: and al, FEh
007E5A68: mov [ebp+08h], eax
007E5A6B: mov var_0C, 00000000h
007E5A72: mov eax, [ebp+08h]
007E5A75: mov eax, [eax]
007E5A77: push [ebp+08h]
007E5A7A: call [eax+04h]
007E5A7D: mov var_04, 00000001h
007E5A84: mov var_04, 00000002h
007E5A8B: push FFFFFFFFh
007E5A8D: call 00410A60h ; On Error ...
007E5A92: mov var_04, 00000003h
007E5A99: mov eax, [ebp+0Ch]
007E5A9C: cmp word ptr [eax], 0070h
007E5AA0: jnz 007E5DC2h
007E5AA6: mov var_04, 00000004h
007E5AAD: push 004412BCh
007E5AB2: push 00000000h
007E5AB4: push 00000007h
007E5AB6: mov eax, [ebp+08h]
007E5AB9: mov eax, [eax]
007E5ABB: push [ebp+08h]
007E5ABE: call [eax+00000324h]
007E5AC4: push eax
007E5AC5: lea eax, var_34
007E5AC8: push eax
007E5AC9: call 00410A84h ; Set (object)
007E5ACE: push eax
007E5ACF: lea eax, var_4C
007E5AD2: push eax
007E5AD3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E5AD8: add esp, 00000010h
007E5ADB: push eax
007E5ADC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E5AE1: push eax
007E5AE2: lea eax, var_38
007E5AE5: push eax
007E5AE6: call 00410A84h ; Set (object)
007E5AEB: mov var_00000084, eax
007E5AF1: lea eax, var_80
007E5AF4: push eax
007E5AF5: mov eax, var_00000084
007E5AFB: mov eax, [eax]
007E5AFD: push var_00000084
007E5B03: call [eax+1Ch]
007E5B06: fclex 
007E5B08: mov var_00000088, eax
007E5B0E: cmp var_00000088, 00000000h
007E5B15: jnl 7E5B37h
007E5B17: push 0000001Ch
007E5B19: push 004412BCh
007E5B1E: push var_00000084
007E5B24: push var_00000088
007E5B2A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E5B2F: mov var_000000CC, eax
007E5B35: jmp 7E5B3Eh
007E5B37: and var_000000CC, 00000000h
007E5B3E: xor eax, eax
007E5B40: cmp var_80, 00000000h
007E5B44: setz al
007E5B47: neg eax
007E5B49: mov var_0000008C, ax
007E5B50: lea eax, var_38
007E5B53: push eax
007E5B54: lea eax, var_34
007E5B57: push eax
007E5B58: push 00000002h
007E5B5A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E5B5F: add esp, 0000000Ch
007E5B62: lea ecx, var_4C
007E5B65: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E5B6A: movsx eax, word ptr var_0000008C
007E5B71: test eax, eax
007E5B73: jz 7E5B7Ah
007E5B75: jmp 007E5DC2h
007E5B7A: mov var_04, 00000007h
007E5B81: mov var_54, 00000001h
007E5B88: mov var_5C, 00000002h
007E5B8F: push 004412BCh
007E5B94: push 00000000h
007E5B96: push 00000007h
007E5B98: mov eax, [ebp+08h]
007E5B9B: mov eax, [eax]
007E5B9D: push [ebp+08h]
007E5BA0: call [eax+00000324h]
007E5BA6: push eax
007E5BA7: lea eax, var_34
007E5BAA: push eax
007E5BAB: call 00410A84h ; Set (object)
007E5BB0: push eax
007E5BB1: lea eax, var_4C
007E5BB4: push eax
007E5BB5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E5BBA: add esp, 00000010h
007E5BBD: push eax
007E5BBE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E5BC3: push eax
007E5BC4: lea eax, var_38
007E5BC7: push eax
007E5BC8: call 00410A84h ; Set (object)
007E5BCD: mov var_00000084, eax
007E5BD3: lea eax, var_80
007E5BD6: push eax
007E5BD7: mov eax, var_00000084
007E5BDD: mov eax, [eax]
007E5BDF: push var_00000084
007E5BE5: call [eax+1Ch]
007E5BE8: fclex 
007E5BEA: mov var_00000088, eax
007E5BF0: cmp var_00000088, 00000000h
007E5BF7: jnl 7E5C19h
007E5BF9: push 0000001Ch
007E5BFB: push 004412BCh
007E5C00: push var_00000084
007E5C06: push var_00000088
007E5C0C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E5C11: mov var_000000D0, eax
007E5C17: jmp 7E5C20h
007E5C19: and var_000000D0, 00000000h
007E5C20: mov eax, var_80
007E5C23: mov var_64, eax
007E5C26: mov var_6C, 00000003h
007E5C2D: mov var_74, 00000001h
007E5C34: mov var_7C, 00000002h
007E5C3B: lea eax, var_5C
007E5C3E: push eax
007E5C3F: lea eax, var_6C
007E5C42: push eax
007E5C43: lea eax, var_7C
007E5C46: push eax
007E5C47: lea eax, var_000000B0
007E5C4D: push eax
007E5C4E: lea eax, var_000000A0
007E5C54: push eax
007E5C55: lea eax, var_30
007E5C58: push eax
007E5C59: call 00410A3Ch ; For
007E5C5E: mov var_000000C8, eax
007E5C64: lea eax, var_38
007E5C67: push eax
007E5C68: lea eax, var_34
007E5C6B: push eax
007E5C6C: push 00000002h
007E5C6E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E5C73: add esp, 0000000Ch
007E5C76: lea ecx, var_4C
007E5C79: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E5C7E: jmp 007E5DB5h
007E5C83: mov var_04, 00000008h
007E5C8A: push 004412BCh
007E5C8F: push 00000000h
007E5C91: push 00000007h
007E5C93: mov eax, [ebp+08h]
007E5C96: mov eax, [eax]
007E5C98: push [ebp+08h]
007E5C9B: call [eax+00000324h]
007E5CA1: push eax
007E5CA2: lea eax, var_34
007E5CA5: push eax
007E5CA6: call 00410A84h ; Set (object)
007E5CAB: push eax
007E5CAC: lea eax, var_4C
007E5CAF: push eax
007E5CB0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E5CB5: add esp, 00000010h
007E5CB8: push eax
007E5CB9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E5CBE: push eax
007E5CBF: lea eax, var_38
007E5CC2: push eax
007E5CC3: call 00410A84h ; Set (object)
007E5CC8: mov var_00000084, eax
007E5CCE: lea eax, var_3C
007E5CD1: push eax
007E5CD2: lea eax, var_30
007E5CD5: push eax
007E5CD6: mov eax, var_00000084
007E5CDC: mov eax, [eax]
007E5CDE: push var_00000084
007E5CE4: call [eax+24h]
007E5CE7: fclex 
007E5CE9: mov var_00000088, eax
007E5CEF: cmp var_00000088, 00000000h
007E5CF6: jnl 7E5D18h
007E5CF8: push 00000024h
007E5CFA: push 004412BCh
007E5CFF: push var_00000084
007E5D05: push var_00000088
007E5D0B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E5D10: mov var_000000D4, eax
007E5D16: jmp 7E5D1Fh
007E5D18: and var_000000D4, 00000000h
007E5D1F: mov eax, var_3C
007E5D22: mov var_0000008C, eax
007E5D28: push FFFFFFFFh
007E5D2A: mov eax, var_0000008C
007E5D30: mov eax, [eax]
007E5D32: push var_0000008C
007E5D38: call [eax+60h]
007E5D3B: fclex 
007E5D3D: mov var_00000090, eax
007E5D43: cmp var_00000090, 00000000h
007E5D4A: jnl 7E5D6Ch
007E5D4C: push 00000060h
007E5D4E: push 004412DCh
007E5D53: push var_0000008C
007E5D59: push var_00000090
007E5D5F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E5D64: mov var_000000D8, eax
007E5D6A: jmp 7E5D73h
007E5D6C: and var_000000D8, 00000000h
007E5D73: lea eax, var_3C
007E5D76: push eax
007E5D77: lea eax, var_38
007E5D7A: push eax
007E5D7B: lea eax, var_34
007E5D7E: push eax
007E5D7F: push 00000003h
007E5D81: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E5D86: add esp, 00000010h
007E5D89: lea ecx, var_4C
007E5D8C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E5D91: mov var_04, 00000009h
007E5D98: lea eax, var_000000B0
007E5D9E: push eax
007E5D9F: lea eax, var_000000A0
007E5DA5: push eax
007E5DA6: lea eax, var_30
007E5DA9: push eax
007E5DAA: call 00410A36h ; Next
007E5DAF: mov var_000000C8, eax
007E5DB5: cmp var_000000C8, 00000000h
007E5DBC: jnz 007E5C83h
007E5DC2: mov var_10, 00000000h
007E5DC9: push 007E5E10h
007E5DCE: jmp 7E5DEFh
007E5DD0: lea eax, var_3C
007E5DD3: push eax
007E5DD4: lea eax, var_38
007E5DD7: push eax
007E5DD8: lea eax, var_34
007E5DDB: push eax
007E5DDC: push 00000003h
007E5DDE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E5DE3: add esp, 00000010h
007E5DE6: lea ecx, var_4C
007E5DE9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E5DEE: ret 
End Sub

Private sub lstFileMgrFiles__7E5E2F
007E5E2F: push ebp
007E5E30: mov ebp, esp
007E5E32: sub esp, 0000000Ch
007E5E35: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007E5E3A: mov eax, fs:[00h]
007E5E40: push eax
007E5E41: mov fs:[00000000h], esp
007E5E48: push 00000054h
007E5E4A: pop eax
007E5E4B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E5E50: push ebx
007E5E51: push esi
007E5E52: push edi
007E5E53: mov var_0C, esp
007E5E56: mov var_08, 00409A50h
007E5E5D: mov eax, [ebp+08h]
007E5E60: and eax, 00000001h
007E5E63: mov var_04, eax
007E5E66: mov eax, [ebp+08h]
007E5E69: and al, FEh
007E5E6B: mov [ebp+08h], eax
007E5E6E: mov eax, [ebp+08h]
007E5E71: mov eax, [eax]
007E5E73: push [ebp+08h]
007E5E76: call [eax+04h]
007E5E79: mov eax, [ebp+0Ch]
007E5E7C: cmp word ptr [eax], 0002h
007E5E80: jnz 007E5F5Ah
007E5E86: mov var_50, 80020004h
007E5E8D: mov var_58, 0000000Ah
007E5E94: mov var_40, 80020004h
007E5E9B: mov var_48, 0000000Ah
007E5EA2: mov var_30, 80020004h
007E5EA9: mov var_38, 0000000Ah
007E5EB0: mov var_20, 80020004h
007E5EB7: mov var_28, 0000000Ah
007E5EBE: push 00000010h
007E5EC0: pop eax
007E5EC1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E5EC6: lea esi, var_58
007E5EC9: mov edi, esp
007E5ECB: movsd 
007E5ECC: movsd 
007E5ECD: movsd 
007E5ECE: movsd 
007E5ECF: push 00000010h
007E5ED1: pop eax
007E5ED2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E5ED7: lea esi, var_48
007E5EDA: mov edi, esp
007E5EDC: movsd 
007E5EDD: movsd 
007E5EDE: movsd 
007E5EDF: movsd 
007E5EE0: push 00000010h
007E5EE2: pop eax
007E5EE3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E5EE8: lea esi, var_38
007E5EEB: mov edi, esp
007E5EED: movsd 
007E5EEE: movsd 
007E5EEF: movsd 
007E5EF0: movsd 
007E5EF1: push 00000010h
007E5EF3: pop eax
007E5EF4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E5EF9: lea esi, var_28
007E5EFC: mov edi, esp
007E5EFE: movsd 
007E5EFF: movsd 
007E5F00: movsd 
007E5F01: movsd 
007E5F02: mov eax, [ebp+08h]
007E5F05: mov eax, [eax]
007E5F07: push [ebp+08h]
007E5F0A: call [eax+00000310h]
007E5F10: push eax
007E5F11: lea eax, var_18
007E5F14: push eax
007E5F15: call 00410A84h ; Set (object)
007E5F1A: push eax
007E5F1B: mov eax, [ebp+08h]
007E5F1E: mov eax, [eax]
007E5F20: push [ebp+08h]
007E5F23: call [eax+000002BCh]
007E5F29: fclex 
007E5F2B: mov var_5C, eax
007E5F2E: cmp var_5C, 00000000h
007E5F32: jnl 7E5F4Eh
007E5F34: push 000002BCh
007E5F39: push 0044420Ch
007E5F3E: push [ebp+08h]
007E5F41: push var_5C
007E5F44: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E5F49: mov var_68, eax
007E5F4C: jmp 7E5F52h
007E5F4E: and var_68, 00000000h
007E5F52: lea ecx, var_18
007E5F55: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E5F5A: mov var_04, 00000000h
007E5F61: push 007E5F72h
007E5F66: jmp 7E5F71h
007E5F68: lea ecx, var_18
007E5F6B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E5F70: ret 
End Sub

Private sub lstFileMgrFiles__7E5F91
007E5F91: push ebp
007E5F92: mov ebp, esp
007E5F94: sub esp, 00000014h
007E5F97: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007E5F9C: mov eax, fs:[00h]
007E5FA2: push eax
007E5FA3: mov fs:[00000000h], esp
007E5FAA: mov eax, 000001D0h
007E5FAF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E5FB4: push ebx
007E5FB5: push esi
007E5FB6: push edi
007E5FB7: mov var_14, esp
007E5FBA: mov var_10, 00409A60h
007E5FC1: mov eax, [ebp+08h]
007E5FC4: and eax, 00000001h
007E5FC7: mov var_0C, eax
007E5FCA: mov eax, [ebp+08h]
007E5FCD: and al, FEh
007E5FCF: mov [ebp+08h], eax
007E5FD2: mov var_08, 00000000h
007E5FD9: mov eax, [ebp+08h]
007E5FDC: mov eax, [eax]
007E5FDE: push [ebp+08h]
007E5FE1: call [eax+04h]
007E5FE4: push 00000001h
007E5FE6: call 00410A60h ; On Error ...
007E5FEB: mov eax, [ebp+0Ch]
007E5FEE: cmp word ptr [eax], 0001h
007E5FF2: jnz 007E740Bh
007E5FF8: lea eax, var_28
007E5FFB: push eax
007E5FFC: mov eax, [ebp+08h]
007E5FFF: mov eax, [eax]
007E6001: push [ebp+08h]
007E6004: call [eax+000001C0h]
007E600A: fclex 
007E600C: mov var_000000E0, eax
007E6012: cmp var_000000E0, 00000000h
007E6019: jnl 7E603Bh
007E601B: push 000001C0h
007E6020: push 0044420Ch
007E6025: push [ebp+08h]
007E6028: push var_000000E0
007E602E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E6033: mov var_0000010C, eax
007E6039: jmp 7E6042h
007E603B: and var_0000010C, 00000000h
007E6042: push var_28
007E6045: call 004109DCh ; Val(arg_1)
007E604A: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E604F: dec eax
007E6050: mov var_000000E4, eax
007E6056: cmp var_000000E4, 0000FF4Bh
007E6060: jnb 7E606Bh
007E6062: and var_00000110, 00000000h
007E6069: jmp 7E6076h
007E606B: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E6070: mov var_00000110, eax
007E6076: mov eax, var_000000E4
007E607C: mov ecx, [008F2374h]
007E6082: cmp [ecx+eax*4], 00000000h
007E6086: jnz 007E61BCh
007E608C: lea eax, var_28
007E608F: push eax
007E6090: mov eax, [ebp+08h]
007E6093: mov eax, [eax]
007E6095: push [ebp+08h]
007E6098: call [eax+000001C0h]
007E609E: fclex 
007E60A0: mov var_000000E0, eax
007E60A6: cmp var_000000E0, 00000000h
007E60AD: jnl 7E60CFh
007E60AF: push 000001C0h
007E60B4: push 0044420Ch
007E60B9: push [ebp+08h]
007E60BC: push var_000000E0
007E60C2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E60C7: mov var_00000114, eax
007E60CD: jmp 7E60D6h
007E60CF: and var_00000114, 00000000h
007E60D6: push var_28
007E60D9: call 004109DCh ; Val(arg_1)
007E60DE: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E60E3: dec eax
007E60E4: mov var_000000E4, eax
007E60EA: cmp var_000000E4, 0000FF4Bh
007E60F4: jnb 7E60FFh
007E60F6: and var_00000118, 00000000h
007E60FD: jmp 7E610Ah
007E60FF: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E6104: mov var_00000118, eax
007E610A: mov eax, var_000000E4
007E6110: mov ecx, [008F2374h]
007E6116: lea eax, [ecx+eax*4]
007E6119: push eax
007E611A: push 0041DAA4h
007E611F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E6124: lea eax, var_28
007E6127: push eax
007E6128: mov eax, [ebp+08h]
007E612B: mov eax, [eax]
007E612D: push [ebp+08h]
007E6130: call [eax+000001C0h]
007E6136: fclex 
007E6138: mov var_000000E0, eax
007E613E: cmp var_000000E0, 00000000h
007E6145: jnl 7E6167h
007E6147: push 000001C0h
007E614C: push 0044420Ch
007E6151: push [ebp+08h]
007E6154: push var_000000E0
007E615A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E615F: mov var_0000011C, eax
007E6165: jmp 7E616Eh
007E6167: and var_0000011C, 00000000h
007E616E: push var_28
007E6171: call 004109DCh ; Val(arg_1)
007E6176: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E617B: dec eax
007E617C: mov var_000000E4, eax
007E6182: cmp var_000000E4, 0000FF4Bh
007E618C: jnb 7E6197h
007E618E: and var_00000120, 00000000h
007E6195: jmp 7E61A2h
007E6197: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E619C: mov var_00000120, eax
007E61A2: mov eax, var_000000E4
007E61A8: mov ecx, [008F2374h]
007E61AE: lea eax, [ecx+eax*4]
007E61B1: mov var_00000124, eax
007E61B7: jmp 007E624Fh
007E61BC: lea eax, var_28
007E61BF: push eax
007E61C0: mov eax, [ebp+08h]
007E61C3: mov eax, [eax]
007E61C5: push [ebp+08h]
007E61C8: call [eax+000001C0h]
007E61CE: fclex 
007E61D0: mov var_000000E0, eax
007E61D6: cmp var_000000E0, 00000000h
007E61DD: jnl 7E61FFh
007E61DF: push 000001C0h
007E61E4: push 0044420Ch
007E61E9: push [ebp+08h]
007E61EC: push var_000000E0
007E61F2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E61F7: mov var_00000128, eax
007E61FD: jmp 7E6206h
007E61FF: and var_00000128, 00000000h
007E6206: push var_28
007E6209: call 004109DCh ; Val(arg_1)
007E620E: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E6213: dec eax
007E6214: mov var_000000E4, eax
007E621A: cmp var_000000E4, 0000FF4Bh
007E6224: jnb 7E622Fh
007E6226: and var_0000012C, 00000000h
007E622D: jmp 7E623Ah
007E622F: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E6234: mov var_0000012C, eax
007E623A: mov eax, var_000000E4
007E6240: mov ecx, [008F2374h]
007E6246: lea eax, [ecx+eax*4]
007E6249: mov var_00000124, eax
007E624F: mov eax, var_00000124
007E6255: mov eax, [eax]
007E6257: mov ecx, var_00000124
007E625D: mov ecx, [ecx]
007E625F: mov ecx, [ecx]
007E6261: push eax
007E6262: call [ecx+00000304h]
007E6268: push eax
007E6269: lea eax, var_38
007E626C: push eax
007E626D: call 00410A84h ; Set (object)
007E6272: mov var_000000E8, eax
007E6278: lea eax, var_2C
007E627B: push eax
007E627C: mov eax, var_000000E8
007E6282: mov eax, [eax]
007E6284: push var_000000E8
007E628A: call [eax+000000A8h]
007E6290: fclex 
007E6292: mov var_000000EC, eax
007E6298: cmp var_000000EC, 00000000h
007E629F: jnl 7E62C4h
007E62A1: push 000000A8h
007E62A6: push 0044C944h
007E62AB: push var_000000E8
007E62B1: push var_000000EC
007E62B7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E62BC: mov var_00000130, eax
007E62C2: jmp 7E62CBh
007E62C4: and var_00000130, 00000000h
007E62CB: push var_2C
007E62CE: call 00410A0Ch ; msvbvm60.dll.__vbaI4Str
007E62D3: mov var_20, eax
007E62D6: lea eax, var_2C
007E62D9: push eax
007E62DA: lea eax, var_28
007E62DD: push eax
007E62DE: push 00000002h
007E62E0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E62E5: add esp, 0000000Ch
007E62E8: lea ecx, var_38
007E62EB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E62F0: lea eax, var_28
007E62F3: push eax
007E62F4: mov eax, [ebp+08h]
007E62F7: mov eax, [eax]
007E62F9: push [ebp+08h]
007E62FC: call [eax+000001C0h]
007E6302: fclex 
007E6304: mov var_000000E0, eax
007E630A: cmp var_000000E0, 00000000h
007E6311: jnl 7E6333h
007E6313: push 000001C0h
007E6318: push 0044420Ch
007E631D: push [ebp+08h]
007E6320: push var_000000E0
007E6326: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E632B: mov var_00000134, eax
007E6331: jmp 7E633Ah
007E6333: and var_00000134, 00000000h
007E633A: push var_28
007E633D: call 004109DCh ; Val(arg_1)
007E6342: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E6347: dec eax
007E6348: mov var_000000E4, eax
007E634E: cmp var_000000E4, 0000FF4Bh
007E6358: jnb 7E6363h
007E635A: and var_00000138, 00000000h
007E6361: jmp 7E636Eh
007E6363: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E6368: mov var_00000138, eax
007E636E: mov eax, var_000000E4
007E6374: mov ecx, [008F2374h]
007E637A: cmp [ecx+eax*4], 00000000h
007E637E: jnz 007E64B4h
007E6384: lea eax, var_28
007E6387: push eax
007E6388: mov eax, [ebp+08h]
007E638B: mov eax, [eax]
007E638D: push [ebp+08h]
007E6390: call [eax+000001C0h]
007E6396: fclex 
007E6398: mov var_000000E0, eax
007E639E: cmp var_000000E0, 00000000h
007E63A5: jnl 7E63C7h
007E63A7: push 000001C0h
007E63AC: push 0044420Ch
007E63B1: push [ebp+08h]
007E63B4: push var_000000E0
007E63BA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E63BF: mov var_0000013C, eax
007E63C5: jmp 7E63CEh
007E63C7: and var_0000013C, 00000000h
007E63CE: push var_28
007E63D1: call 004109DCh ; Val(arg_1)
007E63D6: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E63DB: dec eax
007E63DC: mov var_000000E4, eax
007E63E2: cmp var_000000E4, 0000FF4Bh
007E63EC: jnb 7E63F7h
007E63EE: and var_00000140, 00000000h
007E63F5: jmp 7E6402h
007E63F7: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E63FC: mov var_00000140, eax
007E6402: mov eax, var_000000E4
007E6408: mov ecx, [008F2374h]
007E640E: lea eax, [ecx+eax*4]
007E6411: push eax
007E6412: push 0041DAA4h
007E6417: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E641C: lea eax, var_28
007E641F: push eax
007E6420: mov eax, [ebp+08h]
007E6423: mov eax, [eax]
007E6425: push [ebp+08h]
007E6428: call [eax+000001C0h]
007E642E: fclex 
007E6430: mov var_000000E0, eax
007E6436: cmp var_000000E0, 00000000h
007E643D: jnl 7E645Fh
007E643F: push 000001C0h
007E6444: push 0044420Ch
007E6449: push [ebp+08h]
007E644C: push var_000000E0
007E6452: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E6457: mov var_00000144, eax
007E645D: jmp 7E6466h
007E645F: and var_00000144, 00000000h
007E6466: push var_28
007E6469: call 004109DCh ; Val(arg_1)
007E646E: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E6473: dec eax
007E6474: mov var_000000E4, eax
007E647A: cmp var_000000E4, 0000FF4Bh
007E6484: jnb 7E648Fh
007E6486: and var_00000148, 00000000h
007E648D: jmp 7E649Ah
007E648F: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E6494: mov var_00000148, eax
007E649A: mov eax, var_000000E4
007E64A0: mov ecx, [008F2374h]
007E64A6: lea eax, [ecx+eax*4]
007E64A9: mov var_0000014C, eax
007E64AF: jmp 007E6547h
007E64B4: lea eax, var_28
007E64B7: push eax
007E64B8: mov eax, [ebp+08h]
007E64BB: mov eax, [eax]
007E64BD: push [ebp+08h]
007E64C0: call [eax+000001C0h]
007E64C6: fclex 
007E64C8: mov var_000000E0, eax
007E64CE: cmp var_000000E0, 00000000h
007E64D5: jnl 7E64F7h
007E64D7: push 000001C0h
007E64DC: push 0044420Ch
007E64E1: push [ebp+08h]
007E64E4: push var_000000E0
007E64EA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E64EF: mov var_00000150, eax
007E64F5: jmp 7E64FEh
007E64F7: and var_00000150, 00000000h
007E64FE: push var_28
007E6501: call 004109DCh ; Val(arg_1)
007E6506: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E650B: dec eax
007E650C: mov var_000000E4, eax
007E6512: cmp var_000000E4, 0000FF4Bh
007E651C: jnb 7E6527h
007E651E: and var_00000154, 00000000h
007E6525: jmp 7E6532h
007E6527: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E652C: mov var_00000154, eax
007E6532: mov eax, var_000000E4
007E6538: mov ecx, [008F2374h]
007E653E: lea eax, [ecx+eax*4]
007E6541: mov var_0000014C, eax
007E6547: mov eax, var_0000014C
007E654D: mov eax, [eax]
007E654F: mov ecx, var_0000014C
007E6555: mov ecx, [ecx]
007E6557: mov ecx, [ecx]
007E6559: push eax
007E655A: call [ecx+00000300h]
007E6560: push eax
007E6561: lea eax, var_38
007E6564: push eax
007E6565: call 00410A84h ; Set (object)
007E656A: mov var_000000E8, eax
007E6570: lea eax, var_2C
007E6573: push eax
007E6574: mov eax, var_000000E8
007E657A: mov eax, [eax]
007E657C: push var_000000E8
007E6582: call [eax+000000A8h]
007E6588: fclex 
007E658A: mov var_000000EC, eax
007E6590: cmp var_000000EC, 00000000h
007E6597: jnl 7E65BCh
007E6599: push 000000A8h
007E659E: push 0044C944h
007E65A3: push var_000000E8
007E65A9: push var_000000EC
007E65AF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E65B4: mov var_00000158, eax
007E65BA: jmp 7E65C3h
007E65BC: and var_00000158, 00000000h
007E65C3: push var_2C
007E65C6: call 00410A0Ch ; msvbvm60.dll.__vbaI4Str
007E65CB: mov var_24, eax
007E65CE: lea eax, var_2C
007E65D1: push eax
007E65D2: lea eax, var_28
007E65D5: push eax
007E65D6: push 00000002h
007E65D8: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E65DD: add esp, 0000000Ch
007E65E0: lea ecx, var_38
007E65E3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E65E8: lea eax, var_28
007E65EB: push eax
007E65EC: mov eax, [ebp+08h]
007E65EF: mov eax, [eax]
007E65F1: push [ebp+08h]
007E65F4: call [eax+000001C0h]
007E65FA: fclex 
007E65FC: mov var_000000E0, eax
007E6602: cmp var_000000E0, 00000000h
007E6609: jnl 7E662Bh
007E660B: push 000001C0h
007E6610: push 0044420Ch
007E6615: push [ebp+08h]
007E6618: push var_000000E0
007E661E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E6623: mov var_0000015C, eax
007E6629: jmp 7E6632h
007E662B: and var_0000015C, 00000000h
007E6632: push var_28
007E6635: call 004109DCh ; Val(arg_1)
007E663A: fstp real8 ptr var_000000DC
007E6640: push 004412DCh
007E6645: push 00000000h
007E6647: push 0000000Dh
007E6649: mov eax, [ebp+08h]
007E664C: mov eax, [eax]
007E664E: push [ebp+08h]
007E6651: call [eax+00000324h]
007E6657: push eax
007E6658: lea eax, var_3C
007E665B: push eax
007E665C: call 00410A84h ; Set (object)
007E6661: push eax
007E6662: lea eax, var_6C
007E6665: push eax
007E6666: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E666B: add esp, 00000010h
007E666E: push eax
007E666F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E6674: push eax
007E6675: lea eax, var_40
007E6678: push eax
007E6679: call 00410A84h ; Set (object)
007E667E: mov var_000000E4, eax
007E6684: lea eax, var_000000D4
007E668A: push eax
007E668B: mov eax, var_000000E4
007E6691: mov eax, [eax]
007E6693: push var_000000E4
007E6699: call [eax+44h]
007E669C: fclex 
007E669E: mov var_000000E8, eax
007E66A4: cmp var_000000E8, 00000000h
007E66AB: jnl 7E66CDh
007E66AD: push 00000044h
007E66AF: push 004412DCh
007E66B4: push var_000000E4
007E66BA: push var_000000E8
007E66C0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E66C5: mov var_00000160, eax
007E66CB: jmp 7E66D4h
007E66CD: and var_00000160, 00000000h
007E66D4: push 00000000h
007E66D6: push 00000002h
007E66D8: push 00000001h
007E66DA: push 00000000h
007E66DC: lea eax, var_000000A0
007E66E2: push eax
007E66E3: push 00000010h
007E66E5: push 00000880h
007E66EA: call 00410946h ; ReDim
007E66EF: add esp, 0000001Ch
007E66F2: push 004412BCh
007E66F7: push 00000000h
007E66F9: push 00000007h
007E66FB: mov eax, [ebp+08h]
007E66FE: mov eax, [eax]
007E6700: push [ebp+08h]
007E6703: call [eax+00000324h]
007E6709: push eax
007E670A: lea eax, var_44
007E670D: push eax
007E670E: call 00410A84h ; Set (object)
007E6713: push eax
007E6714: lea eax, var_7C
007E6717: push eax
007E6718: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E671D: add esp, 00000010h
007E6720: push eax
007E6721: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E6726: push eax
007E6727: lea eax, var_48
007E672A: push eax
007E672B: call 00410A84h ; Set (object)
007E6730: mov var_000000EC, eax
007E6736: mov eax, var_000000D4
007E673C: mov var_00000084, eax
007E6742: mov var_0000008C, 00000003h
007E674C: lea eax, var_4C
007E674F: push eax
007E6750: lea eax, var_0000008C
007E6756: push eax
007E6757: mov eax, var_000000EC
007E675D: mov eax, [eax]
007E675F: push var_000000EC
007E6765: call [eax+24h]
007E6768: fclex 
007E676A: mov var_000000F0, eax
007E6770: cmp var_000000F0, 00000000h
007E6777: jnl 7E6799h
007E6779: push 00000024h
007E677B: push 004412BCh
007E6780: push var_000000EC
007E6786: push var_000000F0
007E678C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E6791: mov var_00000164, eax
007E6797: jmp 7E67A0h
007E6799: and var_00000164, 00000000h
007E67A0: mov eax, var_4C
007E67A3: mov var_000000F4, eax
007E67A9: lea eax, var_2C
007E67AC: push eax
007E67AD: mov eax, var_000000F4
007E67B3: mov eax, [eax]
007E67B5: push var_000000F4
007E67BB: call [eax+24h]
007E67BE: fclex 
007E67C0: mov var_000000F8, eax
007E67C6: cmp var_000000F8, 00000000h
007E67CD: jnl 7E67EFh
007E67CF: push 00000024h
007E67D1: push 004412DCh
007E67D6: push var_000000F4
007E67DC: push var_000000F8
007E67E2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E67E7: mov var_00000168, eax
007E67ED: jmp 7E67F6h
007E67EF: and var_00000168, 00000000h
007E67F6: push 00000000h
007E67F8: push 8001000Bh
007E67FD: mov eax, [ebp+08h]
007E6800: mov eax, [eax]
007E6802: push [ebp+08h]
007E6805: call [eax+00000324h]
007E680B: push eax
007E680C: lea eax, var_38
007E680F: push eax
007E6810: call 00410A84h ; Set (object)
007E6815: push eax
007E6816: lea eax, var_5C
007E6819: push eax
007E681A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E681F: add esp, 00000010h
007E6822: push eax
007E6823: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E6828: mov edx, eax
007E682A: lea ecx, var_30
007E682D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E6832: push eax
007E6833: push var_2C
007E6836: call 00410A18h ; &
007E683B: mov var_00000094, eax
007E6841: mov var_0000009C, 00000008h
007E684B: lea esi, var_0000009C
007E6851: push 00000000h
007E6853: push var_000000A0
007E6859: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E685E: mov ecx, eax
007E6860: mov edx, esi
007E6862: call 00410940h ; msvbvm60.dll.__vbaVarZero
007E6867: lea eax, var_20
007E686A: mov var_000000B8, eax
007E6870: mov var_000000C0, 00004003h
007E687A: lea esi, var_000000C0
007E6880: push 00000001h
007E6882: push var_000000A0
007E6888: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E688D: mov ecx, eax
007E688F: mov edx, esi
007E6891: call 00410940h ; msvbvm60.dll.__vbaVarZero
007E6896: lea eax, var_24
007E6899: mov var_000000C8, eax
007E689F: mov var_000000D0, 00004003h
007E68A9: lea esi, var_000000D0
007E68AF: push 00000002h
007E68B1: push var_000000A0
007E68B7: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E68BC: mov ecx, eax
007E68BE: mov edx, esi
007E68C0: call 00410940h ; msvbvm60.dll.__vbaVarZero
007E68C5: mov edx, 0043D8E4h ; x102
007E68CA: lea ecx, var_34
007E68CD: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007E68D2: lea eax, var_000000A0
007E68D8: push eax
007E68D9: lea eax, var_34
007E68DC: push eax
007E68DD: fld real8 ptr var_000000DC
007E68E3: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007E68E8: push eax
007E68E9: call 007A6910h
007E68EE: lea eax, var_000000A0
007E68F4: push eax
007E68F5: push 00000000h
007E68F7: call 00410934h ; Erase
007E68FC: lea eax, var_34
007E68FF: push eax
007E6900: lea eax, var_2C
007E6903: push eax
007E6904: lea eax, var_30
007E6907: push eax
007E6908: lea eax, var_28
007E690B: push eax
007E690C: push 00000004h
007E690E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E6913: add esp, 00000014h
007E6916: lea eax, var_4C
007E6919: push eax
007E691A: lea eax, var_48
007E691D: push eax
007E691E: lea eax, var_44
007E6921: push eax
007E6922: lea eax, var_40
007E6925: push eax
007E6926: lea eax, var_3C
007E6929: push eax
007E692A: lea eax, var_38
007E692D: push eax
007E692E: push 00000006h
007E6930: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E6935: add esp, 0000001Ch
007E6938: lea eax, var_0000008C
007E693E: push eax
007E693F: lea eax, var_7C
007E6942: push eax
007E6943: lea eax, var_6C
007E6946: push eax
007E6947: lea eax, var_5C
007E694A: push eax
007E694B: push 00000004h
007E694D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E6952: add esp, 00000014h
007E6955: lea eax, var_28
007E6958: push eax
007E6959: mov eax, [ebp+08h]
007E695C: mov eax, [eax]
007E695E: push [ebp+08h]
007E6961: call [eax+000001C0h]
007E6967: fclex 
007E6969: mov var_000000E0, eax
007E696F: cmp var_000000E0, 00000000h
007E6976: jnl 7E6998h
007E6978: push 000001C0h
007E697D: push 0044420Ch
007E6982: push [ebp+08h]
007E6985: push var_000000E0
007E698B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E6990: mov var_0000016C, eax
007E6996: jmp 7E699Fh
007E6998: and var_0000016C, 00000000h
007E699F: push var_28
007E69A2: call 004109DCh ; Val(arg_1)
007E69A7: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E69AC: dec eax
007E69AD: mov var_000000E4, eax
007E69B3: cmp var_000000E4, 0000FF4Bh
007E69BD: jnb 7E69C8h
007E69BF: and var_00000170, 00000000h
007E69C6: jmp 7E69D3h
007E69C8: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E69CD: mov var_00000170, eax
007E69D3: mov eax, var_000000E4
007E69D9: mov ecx, [008F2374h]
007E69DF: cmp [ecx+eax*4], 00000000h
007E69E3: jnz 007E6B19h
007E69E9: lea eax, var_28
007E69EC: push eax
007E69ED: mov eax, [ebp+08h]
007E69F0: mov eax, [eax]
007E69F2: push [ebp+08h]
007E69F5: call [eax+000001C0h]
007E69FB: fclex 
007E69FD: mov var_000000E0, eax
007E6A03: cmp var_000000E0, 00000000h
007E6A0A: jnl 7E6A2Ch
007E6A0C: push 000001C0h
007E6A11: push 0044420Ch
007E6A16: push [ebp+08h]
007E6A19: push var_000000E0
007E6A1F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E6A24: mov var_00000174, eax
007E6A2A: jmp 7E6A33h
007E6A2C: and var_00000174, 00000000h
007E6A33: push var_28
007E6A36: call 004109DCh ; Val(arg_1)
007E6A3B: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E6A40: dec eax
007E6A41: mov var_000000E4, eax
007E6A47: cmp var_000000E4, 0000FF4Bh
007E6A51: jnb 7E6A5Ch
007E6A53: and var_00000178, 00000000h
007E6A5A: jmp 7E6A67h
007E6A5C: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E6A61: mov var_00000178, eax
007E6A67: mov eax, var_000000E4
007E6A6D: mov ecx, [008F2374h]
007E6A73: lea eax, [ecx+eax*4]
007E6A76: push eax
007E6A77: push 0041DAA4h
007E6A7C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E6A81: lea eax, var_28
007E6A84: push eax
007E6A85: mov eax, [ebp+08h]
007E6A88: mov eax, [eax]
007E6A8A: push [ebp+08h]
007E6A8D: call [eax+000001C0h]
007E6A93: fclex 
007E6A95: mov var_000000E0, eax
007E6A9B: cmp var_000000E0, 00000000h
007E6AA2: jnl 7E6AC4h
007E6AA4: push 000001C0h
007E6AA9: push 0044420Ch
007E6AAE: push [ebp+08h]
007E6AB1: push var_000000E0
007E6AB7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E6ABC: mov var_0000017C, eax
007E6AC2: jmp 7E6ACBh
007E6AC4: and var_0000017C, 00000000h
007E6ACB: push var_28
007E6ACE: call 004109DCh ; Val(arg_1)
007E6AD3: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E6AD8: dec eax
007E6AD9: mov var_000000E4, eax
007E6ADF: cmp var_000000E4, 0000FF4Bh
007E6AE9: jnb 7E6AF4h
007E6AEB: and var_00000180, 00000000h
007E6AF2: jmp 7E6AFFh
007E6AF4: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E6AF9: mov var_00000180, eax
007E6AFF: mov eax, var_000000E4
007E6B05: mov ecx, [008F2374h]
007E6B0B: lea eax, [ecx+eax*4]
007E6B0E: mov var_00000184, eax
007E6B14: jmp 007E6BACh
007E6B19: lea eax, var_28
007E6B1C: push eax
007E6B1D: mov eax, [ebp+08h]
007E6B20: mov eax, [eax]
007E6B22: push [ebp+08h]
007E6B25: call [eax+000001C0h]
007E6B2B: fclex 
007E6B2D: mov var_000000E0, eax
007E6B33: cmp var_000000E0, 00000000h
007E6B3A: jnl 7E6B5Ch
007E6B3C: push 000001C0h
007E6B41: push 0044420Ch
007E6B46: push [ebp+08h]
007E6B49: push var_000000E0
007E6B4F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E6B54: mov var_00000188, eax
007E6B5A: jmp 7E6B63h
007E6B5C: and var_00000188, 00000000h
007E6B63: push var_28
007E6B66: call 004109DCh ; Val(arg_1)
007E6B6B: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E6B70: dec eax
007E6B71: mov var_000000E4, eax
007E6B77: cmp var_000000E4, 0000FF4Bh
007E6B81: jnb 7E6B8Ch
007E6B83: and var_0000018C, 00000000h
007E6B8A: jmp 7E6B97h
007E6B8C: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E6B91: mov var_0000018C, eax
007E6B97: mov eax, var_000000E4
007E6B9D: mov ecx, [008F2374h]
007E6BA3: lea eax, [ecx+eax*4]
007E6BA6: mov var_00000184, eax
007E6BAC: push 0044A87Ch
007E6BB1: push 00000000h
007E6BB3: push 00000003h
007E6BB5: mov eax, var_00000184
007E6BBB: mov eax, [eax]
007E6BBD: mov ecx, var_00000184
007E6BC3: mov ecx, [ecx]
007E6BC5: mov ecx, [ecx]
007E6BC7: push eax
007E6BC8: call [ecx+00000330h]
007E6BCE: push eax
007E6BCF: lea eax, var_38
007E6BD2: push eax
007E6BD3: call 00410A84h ; Set (object)
007E6BD8: push eax
007E6BD9: lea eax, var_5C
007E6BDC: push eax
007E6BDD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E6BE2: add esp, 00000010h
007E6BE5: push eax
007E6BE6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E6BEB: push eax
007E6BEC: lea eax, var_3C
007E6BEF: push eax
007E6BF0: call 00410A84h ; Set (object)
007E6BF5: mov var_000000E8, eax
007E6BFB: mov var_64, 00000001h
007E6C02: mov var_6C, 00000002h
007E6C09: lea eax, var_40
007E6C0C: push eax
007E6C0D: lea eax, var_6C
007E6C10: push eax
007E6C11: mov eax, var_000000E8
007E6C17: mov eax, [eax]
007E6C19: push var_000000E8
007E6C1F: call [eax+24h]
007E6C22: fclex 
007E6C24: mov var_000000EC, eax
007E6C2A: cmp var_000000EC, 00000000h
007E6C31: jnl 7E6C53h
007E6C33: push 00000024h
007E6C35: push 0044A87Ch
007E6C3A: push var_000000E8
007E6C40: push var_000000EC
007E6C46: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E6C4B: mov var_00000190, eax
007E6C51: jmp 7E6C5Ah
007E6C53: and var_00000190, 00000000h
007E6C5A: mov eax, var_40
007E6C5D: mov var_000000F0, eax
007E6C63: push 00450190h ; File: N/A
007E6C68: mov eax, var_000000F0
007E6C6E: mov eax, [eax]
007E6C70: push var_000000F0
007E6C76: call [eax+00000080h]
007E6C7C: fclex 
007E6C7E: mov var_000000F4, eax
007E6C84: cmp var_000000F4, 00000000h
007E6C8B: jnl 7E6CB0h
007E6C8D: push 00000080h
007E6C92: push 0044A88Ch
007E6C97: push var_000000F0
007E6C9D: push var_000000F4
007E6CA3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E6CA8: mov var_00000194, eax
007E6CAE: jmp 7E6CB7h
007E6CB0: and var_00000194, 00000000h
007E6CB7: lea ecx, var_28
007E6CBA: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E6CBF: lea eax, var_40
007E6CC2: push eax
007E6CC3: lea eax, var_3C
007E6CC6: push eax
007E6CC7: lea eax, var_38
007E6CCA: push eax
007E6CCB: push 00000003h
007E6CCD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E6CD2: add esp, 00000010h
007E6CD5: lea eax, var_6C
007E6CD8: push eax
007E6CD9: lea eax, var_5C
007E6CDC: push eax
007E6CDD: push 00000002h
007E6CDF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E6CE4: add esp, 0000000Ch
007E6CE7: lea eax, var_28
007E6CEA: push eax
007E6CEB: mov eax, [ebp+08h]
007E6CEE: mov eax, [eax]
007E6CF0: push [ebp+08h]
007E6CF3: call [eax+000001C0h]
007E6CF9: fclex 
007E6CFB: mov var_000000E0, eax
007E6D01: cmp var_000000E0, 00000000h
007E6D08: jnl 7E6D2Ah
007E6D0A: push 000001C0h
007E6D0F: push 0044420Ch
007E6D14: push [ebp+08h]
007E6D17: push var_000000E0
007E6D1D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E6D22: mov var_00000198, eax
007E6D28: jmp 7E6D31h
007E6D2A: and var_00000198, 00000000h
007E6D31: push var_28
007E6D34: call 004109DCh ; Val(arg_1)
007E6D39: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E6D3E: dec eax
007E6D3F: mov var_000000E4, eax
007E6D45: cmp var_000000E4, 0000FF4Bh
007E6D4F: jnb 7E6D5Ah
007E6D51: and var_0000019C, 00000000h
007E6D58: jmp 7E6D65h
007E6D5A: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E6D5F: mov var_0000019C, eax
007E6D65: mov eax, var_000000E4
007E6D6B: mov ecx, [008F2374h]
007E6D71: cmp [ecx+eax*4], 00000000h
007E6D75: jnz 007E6EABh
007E6D7B: lea eax, var_28
007E6D7E: push eax
007E6D7F: mov eax, [ebp+08h]
007E6D82: mov eax, [eax]
007E6D84: push [ebp+08h]
007E6D87: call [eax+000001C0h]
007E6D8D: fclex 
007E6D8F: mov var_000000E0, eax
007E6D95: cmp var_000000E0, 00000000h
007E6D9C: jnl 7E6DBEh
007E6D9E: push 000001C0h
007E6DA3: push 0044420Ch
007E6DA8: push [ebp+08h]
007E6DAB: push var_000000E0
007E6DB1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E6DB6: mov var_000001A0, eax
007E6DBC: jmp 7E6DC5h
007E6DBE: and var_000001A0, 00000000h
007E6DC5: push var_28
007E6DC8: call 004109DCh ; Val(arg_1)
007E6DCD: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E6DD2: dec eax
007E6DD3: mov var_000000E4, eax
007E6DD9: cmp var_000000E4, 0000FF4Bh
007E6DE3: jnb 7E6DEEh
007E6DE5: and var_000001A4, 00000000h
007E6DEC: jmp 7E6DF9h
007E6DEE: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E6DF3: mov var_000001A4, eax
007E6DF9: mov eax, var_000000E4
007E6DFF: mov ecx, [008F2374h]
007E6E05: lea eax, [ecx+eax*4]
007E6E08: push eax
007E6E09: push 0041DAA4h
007E6E0E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E6E13: lea eax, var_28
007E6E16: push eax
007E6E17: mov eax, [ebp+08h]
007E6E1A: mov eax, [eax]
007E6E1C: push [ebp+08h]
007E6E1F: call [eax+000001C0h]
007E6E25: fclex 
007E6E27: mov var_000000E0, eax
007E6E2D: cmp var_000000E0, 00000000h
007E6E34: jnl 7E6E56h
007E6E36: push 000001C0h
007E6E3B: push 0044420Ch
007E6E40: push [ebp+08h]
007E6E43: push var_000000E0
007E6E49: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E6E4E: mov var_000001A8, eax
007E6E54: jmp 7E6E5Dh
007E6E56: and var_000001A8, 00000000h
007E6E5D: push var_28
007E6E60: call 004109DCh ; Val(arg_1)
007E6E65: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E6E6A: dec eax
007E6E6B: mov var_000000E4, eax
007E6E71: cmp var_000000E4, 0000FF4Bh
007E6E7B: jnb 7E6E86h
007E6E7D: and var_000001AC, 00000000h
007E6E84: jmp 7E6E91h
007E6E86: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E6E8B: mov var_000001AC, eax
007E6E91: mov eax, var_000000E4
007E6E97: mov ecx, [008F2374h]
007E6E9D: lea eax, [ecx+eax*4]
007E6EA0: mov var_000001B0, eax
007E6EA6: jmp 007E6F3Eh
007E6EAB: lea eax, var_28
007E6EAE: push eax
007E6EAF: mov eax, [ebp+08h]
007E6EB2: mov eax, [eax]
007E6EB4: push [ebp+08h]
007E6EB7: call [eax+000001C0h]
007E6EBD: fclex 
007E6EBF: mov var_000000E0, eax
007E6EC5: cmp var_000000E0, 00000000h
007E6ECC: jnl 7E6EEEh
007E6ECE: push 000001C0h
007E6ED3: push 0044420Ch
007E6ED8: push [ebp+08h]
007E6EDB: push var_000000E0
007E6EE1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E6EE6: mov var_000001B4, eax
007E6EEC: jmp 7E6EF5h
007E6EEE: and var_000001B4, 00000000h
007E6EF5: push var_28
007E6EF8: call 004109DCh ; Val(arg_1)
007E6EFD: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E6F02: dec eax
007E6F03: mov var_000000E4, eax
007E6F09: cmp var_000000E4, 0000FF4Bh
007E6F13: jnb 7E6F1Eh
007E6F15: and var_000001B8, 00000000h
007E6F1C: jmp 7E6F29h
007E6F1E: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E6F23: mov var_000001B8, eax
007E6F29: mov eax, var_000000E4
007E6F2F: mov ecx, [008F2374h]
007E6F35: lea eax, [ecx+eax*4]
007E6F38: mov var_000001B0, eax
007E6F3E: push 0044A87Ch
007E6F43: push 00000000h
007E6F45: push 00000003h
007E6F47: mov eax, var_000001B0
007E6F4D: mov eax, [eax]
007E6F4F: mov ecx, var_000001B0
007E6F55: mov ecx, [ecx]
007E6F57: mov ecx, [ecx]
007E6F59: push eax
007E6F5A: call [ecx+00000330h]
007E6F60: push eax
007E6F61: lea eax, var_38
007E6F64: push eax
007E6F65: call 00410A84h ; Set (object)
007E6F6A: push eax
007E6F6B: lea eax, var_5C
007E6F6E: push eax
007E6F6F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E6F74: add esp, 00000010h
007E6F77: push eax
007E6F78: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E6F7D: push eax
007E6F7E: lea eax, var_3C
007E6F81: push eax
007E6F82: call 00410A84h ; Set (object)
007E6F87: mov var_000000E8, eax
007E6F8D: mov var_64, 00000002h
007E6F94: mov var_6C, 00000002h
007E6F9B: lea eax, var_40
007E6F9E: push eax
007E6F9F: lea eax, var_6C
007E6FA2: push eax
007E6FA3: mov eax, var_000000E8
007E6FA9: mov eax, [eax]
007E6FAB: push var_000000E8
007E6FB1: call [eax+24h]
007E6FB4: fclex 
007E6FB6: mov var_000000EC, eax
007E6FBC: cmp var_000000EC, 00000000h
007E6FC3: jnl 7E6FE5h
007E6FC5: push 00000024h
007E6FC7: push 0044A87Ch
007E6FCC: push var_000000E8
007E6FD2: push var_000000EC
007E6FD8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E6FDD: mov var_000001BC, eax
007E6FE3: jmp 7E6FECh
007E6FE5: and var_000001BC, 00000000h
007E6FEC: mov eax, var_40
007E6FEF: mov var_000000F0, eax
007E6FF5: push 00450034h ; Size: N/A
007E6FFA: mov eax, var_000000F0
007E7000: mov eax, [eax]
007E7002: push var_000000F0
007E7008: call [eax+00000080h]
007E700E: fclex 
007E7010: mov var_000000F4, eax
007E7016: cmp var_000000F4, 00000000h
007E701D: jnl 7E7042h
007E701F: push 00000080h
007E7024: push 0044A88Ch
007E7029: push var_000000F0
007E702F: push var_000000F4
007E7035: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E703A: mov var_000001C0, eax
007E7040: jmp 7E7049h
007E7042: and var_000001C0, 00000000h
007E7049: lea ecx, var_28
007E704C: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E7051: lea eax, var_40
007E7054: push eax
007E7055: lea eax, var_3C
007E7058: push eax
007E7059: lea eax, var_38
007E705C: push eax
007E705D: push 00000003h
007E705F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E7064: add esp, 00000010h
007E7067: lea eax, var_6C
007E706A: push eax
007E706B: lea eax, var_5C
007E706E: push eax
007E706F: push 00000002h
007E7071: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E7076: add esp, 0000000Ch
007E7079: lea eax, var_28
007E707C: push eax
007E707D: mov eax, [ebp+08h]
007E7080: mov eax, [eax]
007E7082: push [ebp+08h]
007E7085: call [eax+000001C0h]
007E708B: fclex 
007E708D: mov var_000000E0, eax
007E7093: cmp var_000000E0, 00000000h
007E709A: jnl 7E70BCh
007E709C: push 000001C0h
007E70A1: push 0044420Ch
007E70A6: push [ebp+08h]
007E70A9: push var_000000E0
007E70AF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E70B4: mov var_000001C4, eax
007E70BA: jmp 7E70C3h
007E70BC: and var_000001C4, 00000000h
007E70C3: push var_28
007E70C6: call 004109DCh ; Val(arg_1)
007E70CB: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E70D0: dec eax
007E70D1: mov var_000000E4, eax
007E70D7: cmp var_000000E4, 0000FF4Bh
007E70E1: jnb 7E70ECh
007E70E3: and var_000001C8, 00000000h
007E70EA: jmp 7E70F7h
007E70EC: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E70F1: mov var_000001C8, eax
007E70F7: mov eax, var_000000E4
007E70FD: mov ecx, [008F2374h]
007E7103: cmp [ecx+eax*4], 00000000h
007E7107: jnz 007E723Dh
007E710D: lea eax, var_28
007E7110: push eax
007E7111: mov eax, [ebp+08h]
007E7114: mov eax, [eax]
007E7116: push [ebp+08h]
007E7119: call [eax+000001C0h]
007E711F: fclex 
007E7121: mov var_000000E0, eax
007E7127: cmp var_000000E0, 00000000h
007E712E: jnl 7E7150h
007E7130: push 000001C0h
007E7135: push 0044420Ch
007E713A: push [ebp+08h]
007E713D: push var_000000E0
007E7143: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E7148: mov var_000001CC, eax
007E714E: jmp 7E7157h
007E7150: and var_000001CC, 00000000h
007E7157: push var_28
007E715A: call 004109DCh ; Val(arg_1)
007E715F: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E7164: dec eax
007E7165: mov var_000000E4, eax
007E716B: cmp var_000000E4, 0000FF4Bh
007E7175: jnb 7E7180h
007E7177: and var_000001D0, 00000000h
007E717E: jmp 7E718Bh
007E7180: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E7185: mov var_000001D0, eax
007E718B: mov eax, var_000000E4
007E7191: mov ecx, [008F2374h]
007E7197: lea eax, [ecx+eax*4]
007E719A: push eax
007E719B: push 0041DAA4h
007E71A0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E71A5: lea eax, var_28
007E71A8: push eax
007E71A9: mov eax, [ebp+08h]
007E71AC: mov eax, [eax]
007E71AE: push [ebp+08h]
007E71B1: call [eax+000001C0h]
007E71B7: fclex 
007E71B9: mov var_000000E0, eax
007E71BF: cmp var_000000E0, 00000000h
007E71C6: jnl 7E71E8h
007E71C8: push 000001C0h
007E71CD: push 0044420Ch
007E71D2: push [ebp+08h]
007E71D5: push var_000000E0
007E71DB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E71E0: mov var_000001D4, eax
007E71E6: jmp 7E71EFh
007E71E8: and var_000001D4, 00000000h
007E71EF: push var_28
007E71F2: call 004109DCh ; Val(arg_1)
007E71F7: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E71FC: dec eax
007E71FD: mov var_000000E4, eax
007E7203: cmp var_000000E4, 0000FF4Bh
007E720D: jnb 7E7218h
007E720F: and var_000001D8, 00000000h
007E7216: jmp 7E7223h
007E7218: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E721D: mov var_000001D8, eax
007E7223: mov eax, var_000000E4
007E7229: mov ecx, [008F2374h]
007E722F: lea eax, [ecx+eax*4]
007E7232: mov var_000001DC, eax
007E7238: jmp 007E72D0h
007E723D: lea eax, var_28
007E7240: push eax
007E7241: mov eax, [ebp+08h]
007E7244: mov eax, [eax]
007E7246: push [ebp+08h]
007E7249: call [eax+000001C0h]
007E724F: fclex 
007E7251: mov var_000000E0, eax
007E7257: cmp var_000000E0, 00000000h
007E725E: jnl 7E7280h
007E7260: push 000001C0h
007E7265: push 0044420Ch
007E726A: push [ebp+08h]
007E726D: push var_000000E0
007E7273: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E7278: mov var_000001E0, eax
007E727E: jmp 7E7287h
007E7280: and var_000001E0, 00000000h
007E7287: push var_28
007E728A: call 004109DCh ; Val(arg_1)
007E728F: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E7294: dec eax
007E7295: mov var_000000E4, eax
007E729B: cmp var_000000E4, 0000FF4Bh
007E72A5: jnb 7E72B0h
007E72A7: and var_000001E4, 00000000h
007E72AE: jmp 7E72BBh
007E72B0: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E72B5: mov var_000001E4, eax
007E72BB: mov eax, var_000000E4
007E72C1: mov ecx, [008F2374h]
007E72C7: lea eax, [ecx+eax*4]
007E72CA: mov var_000001DC, eax
007E72D0: push 0044A87Ch
007E72D5: push 00000000h
007E72D7: push 00000003h
007E72D9: mov eax, var_000001DC
007E72DF: mov eax, [eax]
007E72E1: mov ecx, var_000001DC
007E72E7: mov ecx, [ecx]
007E72E9: mov ecx, [ecx]
007E72EB: push eax
007E72EC: call [ecx+00000330h]
007E72F2: push eax
007E72F3: lea eax, var_38
007E72F6: push eax
007E72F7: call 00410A84h ; Set (object)
007E72FC: push eax
007E72FD: lea eax, var_5C
007E7300: push eax
007E7301: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E7306: add esp, 00000010h
007E7309: push eax
007E730A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E730F: push eax
007E7310: lea eax, var_3C
007E7313: push eax
007E7314: call 00410A84h ; Set (object)
007E7319: mov var_000000E8, eax
007E731F: mov var_64, 00000003h
007E7326: mov var_6C, 00000002h
007E732D: lea eax, var_40
007E7330: push eax
007E7331: lea eax, var_6C
007E7334: push eax
007E7335: mov eax, var_000000E8
007E733B: mov eax, [eax]
007E733D: push var_000000E8
007E7343: call [eax+24h]
007E7346: fclex 
007E7348: mov var_000000EC, eax
007E734E: cmp var_000000EC, 00000000h
007E7355: jnl 7E7377h
007E7357: push 00000024h
007E7359: push 0044A87Ch
007E735E: push var_000000E8
007E7364: push var_000000EC
007E736A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E736F: mov var_000001E8, eax
007E7375: jmp 7E737Eh
007E7377: and var_000001E8, 00000000h
007E737E: mov eax, var_40
007E7381: mov var_000000F0, eax
007E7387: push 004503B4h ; Progress: Loading...
007E738C: mov eax, var_000000F0
007E7392: mov eax, [eax]
007E7394: push var_000000F0
007E739A: call [eax+00000080h]
007E73A0: fclex 
007E73A2: mov var_000000F4, eax
007E73A8: cmp var_000000F4, 00000000h
007E73AF: jnl 7E73D4h
007E73B1: push 00000080h
007E73B6: push 0044A88Ch
007E73BB: push var_000000F0
007E73C1: push var_000000F4
007E73C7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E73CC: mov var_000001EC, eax
007E73D2: jmp 7E73DBh
007E73D4: and var_000001EC, 00000000h
007E73DB: lea ecx, var_28
007E73DE: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E73E3: lea eax, var_40
007E73E6: push eax
007E73E7: lea eax, var_3C
007E73EA: push eax
007E73EB: lea eax, var_38
007E73EE: push eax
007E73EF: push 00000003h
007E73F1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E73F6: add esp, 00000010h
007E73F9: lea eax, var_6C
007E73FC: push eax
007E73FD: lea eax, var_5C
007E7400: push eax
007E7401: push 00000002h
007E7403: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E7408: add esp, 0000000Ch
007E740B: call 004109C4h ; msvbvm60.dll.__vbaExitProc
007E7410: wait 
007E7411: push 007E7488h
007E7416: jmp 7E7487h
007E7418: lea eax, var_34
007E741B: push eax
007E741C: lea eax, var_30
007E741F: push eax
007E7420: lea eax, var_2C
007E7423: push eax
007E7424: lea eax, var_28
007E7427: push eax
007E7428: push 00000004h
007E742A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E742F: add esp, 00000014h
007E7432: lea eax, var_4C
007E7435: push eax
007E7436: lea eax, var_48
007E7439: push eax
007E743A: lea eax, var_44
007E743D: push eax
007E743E: lea eax, var_40
007E7441: push eax
007E7442: lea eax, var_3C
007E7445: push eax
007E7446: lea eax, var_38
007E7449: push eax
007E744A: push 00000006h
007E744C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E7451: add esp, 0000001Ch
007E7454: lea eax, var_0000009C
007E745A: push eax
007E745B: lea eax, var_0000008C
007E7461: push eax
007E7462: lea eax, var_7C
007E7465: push eax
007E7466: lea eax, var_6C
007E7469: push eax
007E746A: lea eax, var_5C
007E746D: push eax
007E746E: push 00000005h
007E7470: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E7475: add esp, 00000018h
007E7478: lea eax, var_000000A0
007E747E: push eax
007E747F: push 00000000h
007E7481: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
007E7486: ret 
End Sub

Private sub lstFileMgrFiles__7E282C
007E282C: push ebp
007E282D: mov ebp, esp
007E282F: sub esp, 00000014h
007E2832: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007E2837: mov eax, fs:[00h]
007E283D: push eax
007E283E: mov fs:[00000000h], esp
007E2845: mov eax, 00000394h
007E284A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E284F: push ebx
007E2850: push esi
007E2851: push edi
007E2852: mov var_14, esp
007E2855: mov var_10, 004099D8h
007E285C: mov eax, [ebp+08h]
007E285F: and eax, 00000001h
007E2862: mov var_0C, eax
007E2865: mov eax, [ebp+08h]
007E2868: and al, FEh
007E286A: mov [ebp+08h], eax
007E286D: mov var_08, 00000000h
007E2874: mov eax, [ebp+08h]
007E2877: mov eax, [eax]
007E2879: push [ebp+08h]
007E287C: call [eax+04h]
007E287F: push 00000001h
007E2881: call 00410A60h ; On Error ...
007E2886: lea eax, var_2C
007E2889: push eax
007E288A: mov eax, [ebp+08h]
007E288D: mov eax, [eax]
007E288F: push [ebp+08h]
007E2892: call [eax+000001C0h]
007E2898: fclex 
007E289A: mov var_00000160, eax
007E28A0: cmp var_00000160, 00000000h
007E28A7: jnl 7E28C9h
007E28A9: push 000001C0h
007E28AE: push 0044420Ch
007E28B3: push [ebp+08h]
007E28B6: push var_00000160
007E28BC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E28C1: mov var_0000018C, eax
007E28C7: jmp 7E28D0h
007E28C9: and var_0000018C, 00000000h
007E28D0: push var_2C
007E28D3: call 004109DCh ; Val(arg_1)
007E28D8: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E28DD: dec eax
007E28DE: mov var_00000164, eax
007E28E4: cmp var_00000164, 0000FF4Bh
007E28EE: jnb 7E28F9h
007E28F0: and var_00000190, 00000000h
007E28F7: jmp 7E2904h
007E28F9: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E28FE: mov var_00000190, eax
007E2904: mov eax, var_00000164
007E290A: mov ecx, [008F2374h]
007E2910: cmp [ecx+eax*4], 00000000h
007E2914: jnz 007E2A4Ah
007E291A: lea eax, var_2C
007E291D: push eax
007E291E: mov eax, [ebp+08h]
007E2921: mov eax, [eax]
007E2923: push [ebp+08h]
007E2926: call [eax+000001C0h]
007E292C: fclex 
007E292E: mov var_00000160, eax
007E2934: cmp var_00000160, 00000000h
007E293B: jnl 7E295Dh
007E293D: push 000001C0h
007E2942: push 0044420Ch
007E2947: push [ebp+08h]
007E294A: push var_00000160
007E2950: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E2955: mov var_00000194, eax
007E295B: jmp 7E2964h
007E295D: and var_00000194, 00000000h
007E2964: push var_2C
007E2967: call 004109DCh ; Val(arg_1)
007E296C: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E2971: dec eax
007E2972: mov var_00000164, eax
007E2978: cmp var_00000164, 0000FF4Bh
007E2982: jnb 7E298Dh
007E2984: and var_00000198, 00000000h
007E298B: jmp 7E2998h
007E298D: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E2992: mov var_00000198, eax
007E2998: mov eax, var_00000164
007E299E: mov ecx, [008F2374h]
007E29A4: lea eax, [ecx+eax*4]
007E29A7: push eax
007E29A8: push 0041DAA4h
007E29AD: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E29B2: lea eax, var_2C
007E29B5: push eax
007E29B6: mov eax, [ebp+08h]
007E29B9: mov eax, [eax]
007E29BB: push [ebp+08h]
007E29BE: call [eax+000001C0h]
007E29C4: fclex 
007E29C6: mov var_00000160, eax
007E29CC: cmp var_00000160, 00000000h
007E29D3: jnl 7E29F5h
007E29D5: push 000001C0h
007E29DA: push 0044420Ch
007E29DF: push [ebp+08h]
007E29E2: push var_00000160
007E29E8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E29ED: mov var_0000019C, eax
007E29F3: jmp 7E29FCh
007E29F5: and var_0000019C, 00000000h
007E29FC: push var_2C
007E29FF: call 004109DCh ; Val(arg_1)
007E2A04: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E2A09: dec eax
007E2A0A: mov var_00000164, eax
007E2A10: cmp var_00000164, 0000FF4Bh
007E2A1A: jnb 7E2A25h
007E2A1C: and var_000001A0, 00000000h
007E2A23: jmp 7E2A30h
007E2A25: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E2A2A: mov var_000001A0, eax
007E2A30: mov eax, var_00000164
007E2A36: mov ecx, [008F2374h]
007E2A3C: lea eax, [ecx+eax*4]
007E2A3F: mov var_000001A4, eax
007E2A45: jmp 007E2ADDh
007E2A4A: lea eax, var_2C
007E2A4D: push eax
007E2A4E: mov eax, [ebp+08h]
007E2A51: mov eax, [eax]
007E2A53: push [ebp+08h]
007E2A56: call [eax+000001C0h]
007E2A5C: fclex 
007E2A5E: mov var_00000160, eax
007E2A64: cmp var_00000160, 00000000h
007E2A6B: jnl 7E2A8Dh
007E2A6D: push 000001C0h
007E2A72: push 0044420Ch
007E2A77: push [ebp+08h]
007E2A7A: push var_00000160
007E2A80: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E2A85: mov var_000001A8, eax
007E2A8B: jmp 7E2A94h
007E2A8D: and var_000001A8, 00000000h
007E2A94: push var_2C
007E2A97: call 004109DCh ; Val(arg_1)
007E2A9C: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E2AA1: dec eax
007E2AA2: mov var_00000164, eax
007E2AA8: cmp var_00000164, 0000FF4Bh
007E2AB2: jnb 7E2ABDh
007E2AB4: and var_000001AC, 00000000h
007E2ABB: jmp 7E2AC8h
007E2ABD: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E2AC2: mov var_000001AC, eax
007E2AC8: mov eax, var_00000164
007E2ACE: mov ecx, [008F2374h]
007E2AD4: lea eax, [ecx+eax*4]
007E2AD7: mov var_000001A4, eax
007E2ADD: push 00447D44h
007E2AE2: mov eax, var_000001A4
007E2AE8: push [eax]
007E2AEA: call 00410A06h ; msvbvm60.dll.__vbaCastObj
007E2AEF: push eax
007E2AF0: lea eax, var_54
007E2AF3: push eax
007E2AF4: call 00410A84h ; Set (object)
007E2AF9: lea eax, var_54
007E2AFC: push eax
007E2AFD: call 007C4BE5h
007E2B02: mov var_00000150, ax
007E2B09: lea eax, var_2C
007E2B0C: push eax
007E2B0D: mov eax, [ebp+08h]
007E2B10: mov eax, [eax]
007E2B12: push [ebp+08h]
007E2B15: call [eax+000001C0h]
007E2B1B: fclex 
007E2B1D: mov var_00000168, eax
007E2B23: cmp var_00000168, 00000000h
007E2B2A: jnl 7E2B4Ch
007E2B2C: push 000001C0h
007E2B31: push 0044420Ch
007E2B36: push [ebp+08h]
007E2B39: push var_00000168
007E2B3F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E2B44: mov var_000001B0, eax
007E2B4A: jmp 7E2B53h
007E2B4C: and var_000001B0, 00000000h
007E2B53: push var_2C
007E2B56: call 004109DCh ; Val(arg_1)
007E2B5B: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E2B60: dec eax
007E2B61: mov var_0000016C, eax
007E2B67: cmp var_0000016C, 0000FF4Bh
007E2B71: jnb 7E2B7Ch
007E2B73: and var_000001B4, 00000000h
007E2B7A: jmp 7E2B87h
007E2B7C: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E2B81: mov var_000001B4, eax
007E2B87: push 00440400h
007E2B8C: push var_54
007E2B8F: call 00410A06h ; msvbvm60.dll.__vbaCastObj
007E2B94: push eax
007E2B95: mov eax, var_0000016C
007E2B9B: mov ecx, [008F2374h]
007E2BA1: lea eax, [ecx+eax*4]
007E2BA4: push eax
007E2BA5: call 00410A84h ; Set (object)
007E2BAA: mov ax, var_00000150
007E2BB1: mov var_20, ax
007E2BB5: lea ecx, var_2C
007E2BB8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E2BBD: lea ecx, var_54
007E2BC0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E2BC5: cmp word ptr [008F2430h], FFFFh
007E2BCD: jnz 007E3875h
007E2BD3: lea eax, var_30
007E2BD6: push eax
007E2BD7: mov eax, [ebp+08h]
007E2BDA: mov eax, [eax]
007E2BDC: push [ebp+08h]
007E2BDF: call [eax+000001C0h]
007E2BE5: fclex 
007E2BE7: mov var_00000164, eax
007E2BED: cmp var_00000164, 00000000h
007E2BF4: jnl 7E2C16h
007E2BF6: push 000001C0h
007E2BFB: push 0044420Ch
007E2C00: push [ebp+08h]
007E2C03: push var_00000164
007E2C09: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E2C0E: mov var_000001B8, eax
007E2C14: jmp 7E2C1Dh
007E2C16: and var_000001B8, 00000000h
007E2C1D: push var_30
007E2C20: call 004109DCh ; Val(arg_1)
007E2C25: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E2C2A: dec eax
007E2C2B: mov var_00000168, eax
007E2C31: cmp var_00000168, 0000FF4Bh
007E2C3B: jnb 7E2C46h
007E2C3D: and var_000001BC, 00000000h
007E2C44: jmp 7E2C51h
007E2C46: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E2C4B: mov var_000001BC, eax
007E2C51: mov eax, var_00000168
007E2C57: mov ecx, [008F2374h]
007E2C5D: cmp [ecx+eax*4], 00000000h
007E2C61: jnz 007E2D97h
007E2C67: lea eax, var_30
007E2C6A: push eax
007E2C6B: mov eax, [ebp+08h]
007E2C6E: mov eax, [eax]
007E2C70: push [ebp+08h]
007E2C73: call [eax+000001C0h]
007E2C79: fclex 
007E2C7B: mov var_00000164, eax
007E2C81: cmp var_00000164, 00000000h
007E2C88: jnl 7E2CAAh
007E2C8A: push 000001C0h
007E2C8F: push 0044420Ch
007E2C94: push [ebp+08h]
007E2C97: push var_00000164
007E2C9D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E2CA2: mov var_000001C0, eax
007E2CA8: jmp 7E2CB1h
007E2CAA: and var_000001C0, 00000000h
007E2CB1: push var_30
007E2CB4: call 004109DCh ; Val(arg_1)
007E2CB9: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E2CBE: dec eax
007E2CBF: mov var_00000168, eax
007E2CC5: cmp var_00000168, 0000FF4Bh
007E2CCF: jnb 7E2CDAh
007E2CD1: and var_000001C4, 00000000h
007E2CD8: jmp 7E2CE5h
007E2CDA: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E2CDF: mov var_000001C4, eax
007E2CE5: mov eax, var_00000168
007E2CEB: mov ecx, [008F2374h]
007E2CF1: lea eax, [ecx+eax*4]
007E2CF4: push eax
007E2CF5: push 0041DAA4h
007E2CFA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E2CFF: lea eax, var_30
007E2D02: push eax
007E2D03: mov eax, [ebp+08h]
007E2D06: mov eax, [eax]
007E2D08: push [ebp+08h]
007E2D0B: call [eax+000001C0h]
007E2D11: fclex 
007E2D13: mov var_00000164, eax
007E2D19: cmp var_00000164, 00000000h
007E2D20: jnl 7E2D42h
007E2D22: push 000001C0h
007E2D27: push 0044420Ch
007E2D2C: push [ebp+08h]
007E2D2F: push var_00000164
007E2D35: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E2D3A: mov var_000001C8, eax
007E2D40: jmp 7E2D49h
007E2D42: and var_000001C8, 00000000h
007E2D49: push var_30
007E2D4C: call 004109DCh ; Val(arg_1)
007E2D51: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E2D56: dec eax
007E2D57: mov var_00000168, eax
007E2D5D: cmp var_00000168, 0000FF4Bh
007E2D67: jnb 7E2D72h
007E2D69: and var_000001CC, 00000000h
007E2D70: jmp 7E2D7Dh
007E2D72: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E2D77: mov var_000001CC, eax
007E2D7D: mov eax, var_00000168
007E2D83: mov ecx, [008F2374h]
007E2D89: lea eax, [ecx+eax*4]
007E2D8C: mov var_000001D0, eax
007E2D92: jmp 007E2E2Ah
007E2D97: lea eax, var_30
007E2D9A: push eax
007E2D9B: mov eax, [ebp+08h]
007E2D9E: mov eax, [eax]
007E2DA0: push [ebp+08h]
007E2DA3: call [eax+000001C0h]
007E2DA9: fclex 
007E2DAB: mov var_00000164, eax
007E2DB1: cmp var_00000164, 00000000h
007E2DB8: jnl 7E2DDAh
007E2DBA: push 000001C0h
007E2DBF: push 0044420Ch
007E2DC4: push [ebp+08h]
007E2DC7: push var_00000164
007E2DCD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E2DD2: mov var_000001D4, eax
007E2DD8: jmp 7E2DE1h
007E2DDA: and var_000001D4, 00000000h
007E2DE1: push var_30
007E2DE4: call 004109DCh ; Val(arg_1)
007E2DE9: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E2DEE: dec eax
007E2DEF: mov var_00000168, eax
007E2DF5: cmp var_00000168, 0000FF4Bh
007E2DFF: jnb 7E2E0Ah
007E2E01: and var_000001D8, 00000000h
007E2E08: jmp 7E2E15h
007E2E0A: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E2E0F: mov var_000001D8, eax
007E2E15: mov eax, var_00000168
007E2E1B: mov ecx, [008F2374h]
007E2E21: lea eax, [ecx+eax*4]
007E2E24: mov var_000001D0, eax
007E2E2A: mov eax, var_000001D0
007E2E30: mov eax, [eax]
007E2E32: mov var_0000016C, eax
007E2E38: lea eax, var_2C
007E2E3B: push eax
007E2E3C: mov eax, [ebp+08h]
007E2E3F: mov eax, [eax]
007E2E41: push [ebp+08h]
007E2E44: call [eax+000001C0h]
007E2E4A: fclex 
007E2E4C: mov var_00000160, eax
007E2E52: cmp var_00000160, 00000000h
007E2E59: jnl 7E2E7Bh
007E2E5B: push 000001C0h
007E2E60: push 0044420Ch
007E2E65: push [ebp+08h]
007E2E68: push var_00000160
007E2E6E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E2E73: mov var_000001DC, eax
007E2E79: jmp 7E2E82h
007E2E7B: and var_000001DC, 00000000h
007E2E82: push var_2C
007E2E85: mov eax, var_0000016C
007E2E8B: mov eax, [eax]
007E2E8D: push var_0000016C
007E2E93: call [eax+000001C4h]
007E2E99: fclex 
007E2E9B: mov var_00000170, eax
007E2EA1: cmp var_00000170, 00000000h
007E2EA8: jnl 7E2ECDh
007E2EAA: push 000001C4h
007E2EAF: push 0044CE8Ch
007E2EB4: push var_0000016C
007E2EBA: push var_00000170
007E2EC0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E2EC5: mov var_000001E0, eax
007E2ECB: jmp 7E2ED4h
007E2ECD: and var_000001E0, 00000000h
007E2ED4: lea eax, var_2C
007E2ED7: push eax
007E2ED8: lea eax, var_30
007E2EDB: push eax
007E2EDC: push 00000002h
007E2EDE: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E2EE3: add esp, 0000000Ch
007E2EE6: lea eax, var_4C
007E2EE9: push eax
007E2EEA: mov eax, [ebp+08h]
007E2EED: mov eax, [eax]
007E2EEF: push [ebp+08h]
007E2EF2: call [eax+000001C0h]
007E2EF8: fclex 
007E2EFA: mov var_00000168, eax
007E2F00: cmp var_00000168, 00000000h
007E2F07: jnl 7E2F29h
007E2F09: push 000001C0h
007E2F0E: push 0044420Ch
007E2F13: push [ebp+08h]
007E2F16: push var_00000168
007E2F1C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E2F21: mov var_000001E4, eax
007E2F27: jmp 7E2F30h
007E2F29: and var_000001E4, 00000000h
007E2F30: push var_4C
007E2F33: call 004109DCh ; Val(arg_1)
007E2F38: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E2F3D: dec eax
007E2F3E: mov var_0000016C, eax
007E2F44: cmp var_0000016C, 0000FF4Bh
007E2F4E: jnb 7E2F59h
007E2F50: and var_000001E8, 00000000h
007E2F57: jmp 7E2F64h
007E2F59: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E2F5E: mov var_000001E8, eax
007E2F64: mov eax, var_0000016C
007E2F6A: mov ecx, [008F2374h]
007E2F70: cmp [ecx+eax*4], 00000000h
007E2F74: jnz 007E30AAh
007E2F7A: lea eax, var_4C
007E2F7D: push eax
007E2F7E: mov eax, [ebp+08h]
007E2F81: mov eax, [eax]
007E2F83: push [ebp+08h]
007E2F86: call [eax+000001C0h]
007E2F8C: fclex 
007E2F8E: mov var_00000168, eax
007E2F94: cmp var_00000168, 00000000h
007E2F9B: jnl 7E2FBDh
007E2F9D: push 000001C0h
007E2FA2: push 0044420Ch
007E2FA7: push [ebp+08h]
007E2FAA: push var_00000168
007E2FB0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E2FB5: mov var_000001EC, eax
007E2FBB: jmp 7E2FC4h
007E2FBD: and var_000001EC, 00000000h
007E2FC4: push var_4C
007E2FC7: call 004109DCh ; Val(arg_1)
007E2FCC: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E2FD1: dec eax
007E2FD2: mov var_0000016C, eax
007E2FD8: cmp var_0000016C, 0000FF4Bh
007E2FE2: jnb 7E2FEDh
007E2FE4: and var_000001F0, 00000000h
007E2FEB: jmp 7E2FF8h
007E2FED: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E2FF2: mov var_000001F0, eax
007E2FF8: mov eax, var_0000016C
007E2FFE: mov ecx, [008F2374h]
007E3004: lea eax, [ecx+eax*4]
007E3007: push eax
007E3008: push 0041DAA4h
007E300D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E3012: lea eax, var_4C
007E3015: push eax
007E3016: mov eax, [ebp+08h]
007E3019: mov eax, [eax]
007E301B: push [ebp+08h]
007E301E: call [eax+000001C0h]
007E3024: fclex 
007E3026: mov var_00000168, eax
007E302C: cmp var_00000168, 00000000h
007E3033: jnl 7E3055h
007E3035: push 000001C0h
007E303A: push 0044420Ch
007E303F: push [ebp+08h]
007E3042: push var_00000168
007E3048: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E304D: mov var_000001F4, eax
007E3053: jmp 7E305Ch
007E3055: and var_000001F4, 00000000h
007E305C: push var_4C
007E305F: call 004109DCh ; Val(arg_1)
007E3064: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E3069: dec eax
007E306A: mov var_0000016C, eax
007E3070: cmp var_0000016C, 0000FF4Bh
007E307A: jnb 7E3085h
007E307C: and var_000001F8, 00000000h
007E3083: jmp 7E3090h
007E3085: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E308A: mov var_000001F8, eax
007E3090: mov eax, var_0000016C
007E3096: mov ecx, [008F2374h]
007E309C: lea eax, [ecx+eax*4]
007E309F: mov var_000001FC, eax
007E30A5: jmp 007E313Dh
007E30AA: lea eax, var_4C
007E30AD: push eax
007E30AE: mov eax, [ebp+08h]
007E30B1: mov eax, [eax]
007E30B3: push [ebp+08h]
007E30B6: call [eax+000001C0h]
007E30BC: fclex 
007E30BE: mov var_00000168, eax
007E30C4: cmp var_00000168, 00000000h
007E30CB: jnl 7E30EDh
007E30CD: push 000001C0h
007E30D2: push 0044420Ch
007E30D7: push [ebp+08h]
007E30DA: push var_00000168
007E30E0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E30E5: mov var_00000200, eax
007E30EB: jmp 7E30F4h
007E30ED: and var_00000200, 00000000h
007E30F4: push var_4C
007E30F7: call 004109DCh ; Val(arg_1)
007E30FC: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E3101: dec eax
007E3102: mov var_0000016C, eax
007E3108: cmp var_0000016C, 0000FF4Bh
007E3112: jnb 7E311Dh
007E3114: and var_00000204, 00000000h
007E311B: jmp 7E3128h
007E311D: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E3122: mov var_00000204, eax
007E3128: mov eax, var_0000016C
007E312E: mov ecx, [008F2374h]
007E3134: lea eax, [ecx+eax*4]
007E3137: mov var_000001FC, eax
007E313D: mov eax, var_000001FC
007E3143: mov eax, [eax]
007E3145: mov var_00000170, eax
007E314B: mov var_00000104, 00000001h
007E3155: mov var_0000010C, 00000003h
007E315F: lea eax, var_2C
007E3162: push eax
007E3163: mov eax, [ebp+08h]
007E3166: mov eax, [eax]
007E3168: push [ebp+08h]
007E316B: call [eax+000001C0h]
007E3171: fclex 
007E3173: mov var_00000160, eax
007E3179: cmp var_00000160, 00000000h
007E3180: jnl 7E31A2h
007E3182: push 000001C0h
007E3187: push 0044420Ch
007E318C: push [ebp+08h]
007E318F: push var_00000160
007E3195: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E319A: mov var_00000208, eax
007E31A0: jmp 7E31A9h
007E31A2: and var_00000208, 00000000h
007E31A9: push var_2C
007E31AC: call 004109DCh ; Val(arg_1)
007E31B1: push ecx
007E31B2: push ecx
007E31B3: fstp real8 ptr [esp]
007E31B6: call 00410790h ; msvbvm60.dll.__vbaStrR8
007E31BB: mov edx, eax
007E31BD: lea ecx, var_30
007E31C0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E31C5: push eax
007E31C6: push 004417CCh ; sck
007E31CB: call 00410A18h ; &
007E31D0: mov var_80, eax
007E31D3: mov var_00000088, 00000008h
007E31DD: cmp [008F2010h], 00000000h
007E31E4: jnz 7E3201h
007E31E6: push 008F2010h
007E31EB: push 00433984h
007E31F0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E31F5: mov var_0000020C, 008F2010h
007E31FF: jmp 7E320Bh
007E3201: mov var_0000020C, 008F2010h
007E320B: mov var_00000134, 00000007h
007E3215: mov var_0000013C, 00000003h
007E321F: lea eax, var_3C
007E3222: push eax
007E3223: mov eax, [ebp+08h]
007E3226: mov eax, [eax]
007E3228: push [ebp+08h]
007E322B: call [eax+000001C0h]
007E3231: fclex 
007E3233: mov var_00000164, eax
007E3239: cmp var_00000164, 00000000h
007E3240: jnl 7E3262h
007E3242: push 000001C0h
007E3247: push 0044420Ch
007E324C: push [ebp+08h]
007E324F: push var_00000164
007E3255: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E325A: mov var_00000210, eax
007E3260: jmp 7E3269h
007E3262: and var_00000210, 00000000h
007E3269: push var_3C
007E326C: call 004109DCh ; Val(arg_1)
007E3271: push ecx
007E3272: push ecx
007E3273: fstp real8 ptr [esp]
007E3276: call 00410790h ; msvbvm60.dll.__vbaStrR8
007E327B: mov edx, eax
007E327D: lea ecx, var_40
007E3280: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E3285: push eax
007E3286: push 004417CCh ; sck
007E328B: call 00410A18h ; &
007E3290: mov var_000000C0, eax
007E3296: mov var_000000C8, 00000008h
007E32A0: cmp [008F2010h], 00000000h
007E32A7: jnz 7E32C4h
007E32A9: push 008F2010h
007E32AE: push 00433984h
007E32B3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E32B8: mov var_00000214, 008F2010h
007E32C2: jmp 7E32CEh
007E32C4: mov var_00000214, 008F2010h
007E32CE: push 00450168h ; Remote gallery -
007E32D3: push 00000010h
007E32D5: pop eax
007E32D6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E32DB: lea esi, var_0000010C
007E32E1: mov edi, esp
007E32E3: movsd 
007E32E4: movsd 
007E32E5: movsd 
007E32E6: movsd 
007E32E7: push 00000001h
007E32E9: push 00000010h
007E32EB: push 00440E58h
007E32F0: push 00000010h
007E32F2: pop eax
007E32F3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E32F8: lea esi, var_00000088
007E32FE: mov edi, esp
007E3300: movsd 
007E3301: movsd 
007E3302: movsd 
007E3303: movsd 
007E3304: push 00000001h
007E3306: push 00000000h
007E3308: push 00440E48h
007E330D: push 00000000h
007E330F: push 00000018h
007E3311: mov eax, var_0000020C
007E3317: mov eax, [eax]
007E3319: mov ecx, var_0000020C
007E331F: mov ecx, [ecx]
007E3321: mov ecx, [ecx]
007E3323: push eax
007E3324: call [ecx+0000054Ch]
007E332A: push eax
007E332B: lea eax, var_54
007E332E: push eax
007E332F: call 00410A84h ; Set (object)
007E3334: push eax
007E3335: lea eax, var_78
007E3338: push eax
007E3339: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E333E: add esp, 00000010h
007E3341: push eax
007E3342: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E3347: push eax
007E3348: lea eax, var_58
007E334B: push eax
007E334C: call 00410A84h ; Set (object)
007E3351: push eax
007E3352: lea eax, var_00000098
007E3358: push eax
007E3359: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E335E: add esp, 00000020h
007E3361: push eax
007E3362: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E3367: push eax
007E3368: lea eax, var_5C
007E336B: push eax
007E336C: call 00410A84h ; Set (object)
007E3371: push eax
007E3372: lea eax, var_000000A8
007E3378: push eax
007E3379: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E337E: add esp, 00000020h
007E3381: push eax
007E3382: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E3387: mov edx, eax
007E3389: lea ecx, var_34
007E338C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E3391: push eax
007E3392: call 00410A18h ; &
007E3397: mov edx, eax
007E3399: lea ecx, var_38
007E339C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E33A1: push eax
007E33A2: push 00441740h
007E33A7: call 00410A18h ; &
007E33AC: mov edx, eax
007E33AE: lea ecx, var_44
007E33B1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E33B6: push eax
007E33B7: push 00000010h
007E33B9: pop eax
007E33BA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E33BF: lea esi, var_0000013C
007E33C5: mov edi, esp
007E33C7: movsd 
007E33C8: movsd 
007E33C9: movsd 
007E33CA: movsd 
007E33CB: push 00000001h
007E33CD: push 00000010h
007E33CF: push 00440E58h
007E33D4: push 00000010h
007E33D6: pop eax
007E33D7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E33DC: lea esi, var_000000C8
007E33E2: mov edi, esp
007E33E4: movsd 
007E33E5: movsd 
007E33E6: movsd 
007E33E7: movsd 
007E33E8: push 00000001h
007E33EA: push 00000000h
007E33EC: push 00440E48h
007E33F1: push 00000000h
007E33F3: push 00000018h
007E33F5: mov eax, var_00000214
007E33FB: mov eax, [eax]
007E33FD: mov ecx, var_00000214
007E3403: mov ecx, [ecx]
007E3405: mov ecx, [ecx]
007E3407: push eax
007E3408: call [ecx+0000054Ch]
007E340E: push eax
007E340F: lea eax, var_60
007E3412: push eax
007E3413: call 00410A84h ; Set (object)
007E3418: push eax
007E3419: lea eax, var_000000B8
007E341F: push eax
007E3420: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E3425: add esp, 00000010h
007E3428: push eax
007E3429: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E342E: push eax
007E342F: lea eax, var_64
007E3432: push eax
007E3433: call 00410A84h ; Set (object)
007E3438: push eax
007E3439: lea eax, var_000000D8
007E343F: push eax
007E3440: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E3445: add esp, 00000020h
007E3448: push eax
007E3449: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E344E: push eax
007E344F: lea eax, var_68
007E3452: push eax
007E3453: call 00410A84h ; Set (object)
007E3458: push eax
007E3459: lea eax, var_000000E8
007E345F: push eax
007E3460: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E3465: add esp, 00000020h
007E3468: push eax
007E3469: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E346E: mov edx, eax
007E3470: lea ecx, var_48
007E3473: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E3478: push eax
007E3479: call 00410A18h ; &
007E347E: mov edx, eax
007E3480: lea ecx, var_50
007E3483: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E3488: push eax
007E3489: mov eax, var_00000170
007E348F: mov eax, [eax]
007E3491: push var_00000170
007E3497: call [eax+54h]
007E349A: fclex 
007E349C: mov var_00000174, eax
007E34A2: cmp var_00000174, 00000000h
007E34A9: jnl 7E34CBh
007E34AB: push 00000054h
007E34AD: push 0044CE8Ch
007E34B2: push var_00000170
007E34B8: push var_00000174
007E34BE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E34C3: mov var_00000218, eax
007E34C9: jmp 7E34D2h
007E34CB: and var_00000218, 00000000h
007E34D2: lea eax, var_50
007E34D5: push eax
007E34D6: lea eax, var_4C
007E34D9: push eax
007E34DA: lea eax, var_48
007E34DD: push eax
007E34DE: lea eax, var_44
007E34E1: push eax
007E34E2: lea eax, var_40
007E34E5: push eax
007E34E6: lea eax, var_3C
007E34E9: push eax
007E34EA: lea eax, var_38
007E34ED: push eax
007E34EE: lea eax, var_34
007E34F1: push eax
007E34F2: lea eax, var_30
007E34F5: push eax
007E34F6: lea eax, var_2C
007E34F9: push eax
007E34FA: push 0000000Ah
007E34FC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E3501: add esp, 0000002Ch
007E3504: lea eax, var_68
007E3507: push eax
007E3508: lea eax, var_64
007E350B: push eax
007E350C: lea eax, var_60
007E350F: push eax
007E3510: lea eax, var_5C
007E3513: push eax
007E3514: lea eax, var_58
007E3517: push eax
007E3518: lea eax, var_54
007E351B: push eax
007E351C: push 00000006h
007E351E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E3523: add esp, 0000001Ch
007E3526: lea eax, var_000000E8
007E352C: push eax
007E352D: lea eax, var_000000D8
007E3533: push eax
007E3534: lea eax, var_000000C8
007E353A: push eax
007E353B: lea eax, var_000000B8
007E3541: push eax
007E3542: lea eax, var_000000A8
007E3548: push eax
007E3549: lea eax, var_00000098
007E354F: push eax
007E3550: lea eax, var_00000088
007E3556: push eax
007E3557: lea eax, var_78
007E355A: push eax
007E355B: push 00000008h
007E355D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E3562: add esp, 00000024h
007E3565: lea eax, var_2C
007E3568: push eax
007E3569: mov eax, [ebp+08h]
007E356C: mov eax, [eax]
007E356E: push [ebp+08h]
007E3571: call [eax+000001C0h]
007E3577: fclex 
007E3579: mov var_00000160, eax
007E357F: cmp var_00000160, 00000000h
007E3586: jnl 7E35A8h
007E3588: push 000001C0h
007E358D: push 0044420Ch
007E3592: push [ebp+08h]
007E3595: push var_00000160
007E359B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E35A0: mov var_0000021C, eax
007E35A6: jmp 7E35AFh
007E35A8: and var_0000021C, 00000000h
007E35AF: push var_2C
007E35B2: call 004109DCh ; Val(arg_1)
007E35B7: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E35BC: dec eax
007E35BD: mov var_00000164, eax
007E35C3: cmp var_00000164, 0000FF4Bh
007E35CD: jnb 7E35D8h
007E35CF: and var_00000220, 00000000h
007E35D6: jmp 7E35E3h
007E35D8: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E35DD: mov var_00000220, eax
007E35E3: mov eax, var_00000164
007E35E9: mov ecx, [008F2374h]
007E35EF: cmp [ecx+eax*4], 00000000h
007E35F3: jnz 007E3729h
007E35F9: lea eax, var_2C
007E35FC: push eax
007E35FD: mov eax, [ebp+08h]
007E3600: mov eax, [eax]
007E3602: push [ebp+08h]
007E3605: call [eax+000001C0h]
007E360B: fclex 
007E360D: mov var_00000160, eax
007E3613: cmp var_00000160, 00000000h
007E361A: jnl 7E363Ch
007E361C: push 000001C0h
007E3621: push 0044420Ch
007E3626: push [ebp+08h]
007E3629: push var_00000160
007E362F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E3634: mov var_00000224, eax
007E363A: jmp 7E3643h
007E363C: and var_00000224, 00000000h
007E3643: push var_2C
007E3646: call 004109DCh ; Val(arg_1)
007E364B: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E3650: dec eax
007E3651: mov var_00000164, eax
007E3657: cmp var_00000164, 0000FF4Bh
007E3661: jnb 7E366Ch
007E3663: and var_00000228, 00000000h
007E366A: jmp 7E3677h
007E366C: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E3671: mov var_00000228, eax
007E3677: mov eax, var_00000164
007E367D: mov ecx, [008F2374h]
007E3683: lea eax, [ecx+eax*4]
007E3686: push eax
007E3687: push 0041DAA4h
007E368C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E3691: lea eax, var_2C
007E3694: push eax
007E3695: mov eax, [ebp+08h]
007E3698: mov eax, [eax]
007E369A: push [ebp+08h]
007E369D: call [eax+000001C0h]
007E36A3: fclex 
007E36A5: mov var_00000160, eax
007E36AB: cmp var_00000160, 00000000h
007E36B2: jnl 7E36D4h
007E36B4: push 000001C0h
007E36B9: push 0044420Ch
007E36BE: push [ebp+08h]
007E36C1: push var_00000160
007E36C7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E36CC: mov var_0000022C, eax
007E36D2: jmp 7E36DBh
007E36D4: and var_0000022C, 00000000h
007E36DB: push var_2C
007E36DE: call 004109DCh ; Val(arg_1)
007E36E3: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E36E8: dec eax
007E36E9: mov var_00000164, eax
007E36EF: cmp var_00000164, 0000FF4Bh
007E36F9: jnb 7E3704h
007E36FB: and var_00000230, 00000000h
007E3702: jmp 7E370Fh
007E3704: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E3709: mov var_00000230, eax
007E370F: mov eax, var_00000164
007E3715: mov ecx, [008F2374h]
007E371B: lea eax, [ecx+eax*4]
007E371E: mov var_00000234, eax
007E3724: jmp 007E37BCh
007E3729: lea eax, var_2C
007E372C: push eax
007E372D: mov eax, [ebp+08h]
007E3730: mov eax, [eax]
007E3732: push [ebp+08h]
007E3735: call [eax+000001C0h]
007E373B: fclex 
007E373D: mov var_00000160, eax
007E3743: cmp var_00000160, 00000000h
007E374A: jnl 7E376Ch
007E374C: push 000001C0h
007E3751: push 0044420Ch
007E3756: push [ebp+08h]
007E3759: push var_00000160
007E375F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E3764: mov var_00000238, eax
007E376A: jmp 7E3773h
007E376C: and var_00000238, 00000000h
007E3773: push var_2C
007E3776: call 004109DCh ; Val(arg_1)
007E377B: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E3780: dec eax
007E3781: mov var_00000164, eax
007E3787: cmp var_00000164, 0000FF4Bh
007E3791: jnb 7E379Ch
007E3793: and var_0000023C, 00000000h
007E379A: jmp 7E37A7h
007E379C: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E37A1: mov var_0000023C, eax
007E37A7: mov eax, var_00000164
007E37AD: mov ecx, [008F2374h]
007E37B3: lea eax, [ecx+eax*4]
007E37B6: mov var_00000234, eax
007E37BC: mov eax, var_00000234
007E37C2: mov eax, [eax]
007E37C4: mov var_00000168, eax
007E37CA: mov eax, [ebp+08h]
007E37CD: mov var_00000104, eax
007E37D3: mov var_0000010C, 00000009h
007E37DD: mov var_000000F4, 80020004h
007E37E7: mov var_000000FC, 0000000Ah
007E37F1: push 00000010h
007E37F3: pop eax
007E37F4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E37F9: lea esi, var_0000010C
007E37FF: mov edi, esp
007E3801: movsd 
007E3802: movsd 
007E3803: movsd 
007E3804: movsd 
007E3805: push 00000010h
007E3807: pop eax
007E3808: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E380D: lea esi, var_000000FC
007E3813: mov edi, esp
007E3815: movsd 
007E3816: movsd 
007E3817: movsd 
007E3818: movsd 
007E3819: mov eax, var_00000168
007E381F: mov eax, [eax]
007E3821: push var_00000168
007E3827: call [eax+000002B0h]
007E382D: fclex 
007E382F: mov var_0000016C, eax
007E3835: cmp var_0000016C, 00000000h
007E383C: jnl 7E3861h
007E383E: push 000002B0h
007E3843: push 0044CE8Ch
007E3848: push var_00000168
007E384E: push var_0000016C
007E3854: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E3859: mov var_00000240, eax
007E385F: jmp 7E3868h
007E3861: and var_00000240, 00000000h
007E3868: lea ecx, var_2C
007E386B: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E3870: jmp 007E4512h
007E3875: lea eax, var_30
007E3878: push eax
007E3879: mov eax, [ebp+08h]
007E387C: mov eax, [eax]
007E387E: push [ebp+08h]
007E3881: call [eax+000001C0h]
007E3887: fclex 
007E3889: mov var_00000164, eax
007E388F: cmp var_00000164, 00000000h
007E3896: jnl 7E38B8h
007E3898: push 000001C0h
007E389D: push 0044420Ch
007E38A2: push [ebp+08h]
007E38A5: push var_00000164
007E38AB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E38B0: mov var_00000244, eax
007E38B6: jmp 7E38BFh
007E38B8: and var_00000244, 00000000h
007E38BF: push var_30
007E38C2: call 004109DCh ; Val(arg_1)
007E38C7: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E38CC: dec eax
007E38CD: mov var_00000168, eax
007E38D3: cmp var_00000168, 0000FF4Bh
007E38DD: jnb 7E38E8h
007E38DF: and var_00000248, 00000000h
007E38E6: jmp 7E38F3h
007E38E8: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E38ED: mov var_00000248, eax
007E38F3: mov eax, var_00000168
007E38F9: mov ecx, [008F2374h]
007E38FF: cmp [ecx+eax*4], 00000000h
007E3903: jnz 007E3A39h
007E3909: lea eax, var_30
007E390C: push eax
007E390D: mov eax, [ebp+08h]
007E3910: mov eax, [eax]
007E3912: push [ebp+08h]
007E3915: call [eax+000001C0h]
007E391B: fclex 
007E391D: mov var_00000164, eax
007E3923: cmp var_00000164, 00000000h
007E392A: jnl 7E394Ch
007E392C: push 000001C0h
007E3931: push 0044420Ch
007E3936: push [ebp+08h]
007E3939: push var_00000164
007E393F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E3944: mov var_0000024C, eax
007E394A: jmp 7E3953h
007E394C: and var_0000024C, 00000000h
007E3953: push var_30
007E3956: call 004109DCh ; Val(arg_1)
007E395B: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E3960: dec eax
007E3961: mov var_00000168, eax
007E3967: cmp var_00000168, 0000FF4Bh
007E3971: jnb 7E397Ch
007E3973: and var_00000250, 00000000h
007E397A: jmp 7E3987h
007E397C: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E3981: mov var_00000250, eax
007E3987: mov eax, var_00000168
007E398D: mov ecx, [008F2374h]
007E3993: lea eax, [ecx+eax*4]
007E3996: push eax
007E3997: push 0041DAA4h
007E399C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E39A1: lea eax, var_30
007E39A4: push eax
007E39A5: mov eax, [ebp+08h]
007E39A8: mov eax, [eax]
007E39AA: push [ebp+08h]
007E39AD: call [eax+000001C0h]
007E39B3: fclex 
007E39B5: mov var_00000164, eax
007E39BB: cmp var_00000164, 00000000h
007E39C2: jnl 7E39E4h
007E39C4: push 000001C0h
007E39C9: push 0044420Ch
007E39CE: push [ebp+08h]
007E39D1: push var_00000164
007E39D7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E39DC: mov var_00000254, eax
007E39E2: jmp 7E39EBh
007E39E4: and var_00000254, 00000000h
007E39EB: push var_30
007E39EE: call 004109DCh ; Val(arg_1)
007E39F3: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E39F8: dec eax
007E39F9: mov var_00000168, eax
007E39FF: cmp var_00000168, 0000FF4Bh
007E3A09: jnb 7E3A14h
007E3A0B: and var_00000258, 00000000h
007E3A12: jmp 7E3A1Fh
007E3A14: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E3A19: mov var_00000258, eax
007E3A1F: mov eax, var_00000168
007E3A25: mov ecx, [008F2374h]
007E3A2B: lea eax, [ecx+eax*4]
007E3A2E: mov var_0000025C, eax
007E3A34: jmp 007E3ACCh
007E3A39: lea eax, var_30
007E3A3C: push eax
007E3A3D: mov eax, [ebp+08h]
007E3A40: mov eax, [eax]
007E3A42: push [ebp+08h]
007E3A45: call [eax+000001C0h]
007E3A4B: fclex 
007E3A4D: mov var_00000164, eax
007E3A53: cmp var_00000164, 00000000h
007E3A5A: jnl 7E3A7Ch
007E3A5C: push 000001C0h
007E3A61: push 0044420Ch
007E3A66: push [ebp+08h]
007E3A69: push var_00000164
007E3A6F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E3A74: mov var_00000260, eax
007E3A7A: jmp 7E3A83h
007E3A7C: and var_00000260, 00000000h
007E3A83: push var_30
007E3A86: call 004109DCh ; Val(arg_1)
007E3A8B: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E3A90: dec eax
007E3A91: mov var_00000168, eax
007E3A97: cmp var_00000168, 0000FF4Bh
007E3AA1: jnb 7E3AACh
007E3AA3: and var_00000264, 00000000h
007E3AAA: jmp 7E3AB7h
007E3AAC: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E3AB1: mov var_00000264, eax
007E3AB7: mov eax, var_00000168
007E3ABD: mov ecx, [008F2374h]
007E3AC3: lea eax, [ecx+eax*4]
007E3AC6: mov var_0000025C, eax
007E3ACC: mov eax, var_0000025C
007E3AD2: mov eax, [eax]
007E3AD4: mov var_0000016C, eax
007E3ADA: lea eax, var_2C
007E3ADD: push eax
007E3ADE: mov eax, [ebp+08h]
007E3AE1: mov eax, [eax]
007E3AE3: push [ebp+08h]
007E3AE6: call [eax+000001C0h]
007E3AEC: fclex 
007E3AEE: mov var_00000160, eax
007E3AF4: cmp var_00000160, 00000000h
007E3AFB: jnl 7E3B1Dh
007E3AFD: push 000001C0h
007E3B02: push 0044420Ch
007E3B07: push [ebp+08h]
007E3B0A: push var_00000160
007E3B10: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E3B15: mov var_00000268, eax
007E3B1B: jmp 7E3B24h
007E3B1D: and var_00000268, 00000000h
007E3B24: push var_2C
007E3B27: mov eax, var_0000016C
007E3B2D: mov eax, [eax]
007E3B2F: push var_0000016C
007E3B35: call [eax+000001C4h]
007E3B3B: fclex 
007E3B3D: mov var_00000170, eax
007E3B43: cmp var_00000170, 00000000h
007E3B4A: jnl 7E3B6Fh
007E3B4C: push 000001C4h
007E3B51: push 0044CE8Ch
007E3B56: push var_0000016C
007E3B5C: push var_00000170
007E3B62: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E3B67: mov var_0000026C, eax
007E3B6D: jmp 7E3B76h
007E3B6F: and var_0000026C, 00000000h
007E3B76: lea eax, var_2C
007E3B79: push eax
007E3B7A: lea eax, var_30
007E3B7D: push eax
007E3B7E: push 00000002h
007E3B80: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E3B85: add esp, 0000000Ch
007E3B88: lea eax, var_4C
007E3B8B: push eax
007E3B8C: mov eax, [ebp+08h]
007E3B8F: mov eax, [eax]
007E3B91: push [ebp+08h]
007E3B94: call [eax+000001C0h]
007E3B9A: fclex 
007E3B9C: mov var_00000168, eax
007E3BA2: cmp var_00000168, 00000000h
007E3BA9: jnl 7E3BCBh
007E3BAB: push 000001C0h
007E3BB0: push 0044420Ch
007E3BB5: push [ebp+08h]
007E3BB8: push var_00000168
007E3BBE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E3BC3: mov var_00000270, eax
007E3BC9: jmp 7E3BD2h
007E3BCB: and var_00000270, 00000000h
007E3BD2: push var_4C
007E3BD5: call 004109DCh ; Val(arg_1)
007E3BDA: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E3BDF: dec eax
007E3BE0: mov var_0000016C, eax
007E3BE6: cmp var_0000016C, 0000FF4Bh
007E3BF0: jnb 7E3BFBh
007E3BF2: and var_00000274, 00000000h
007E3BF9: jmp 7E3C06h
007E3BFB: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E3C00: mov var_00000274, eax
007E3C06: mov eax, var_0000016C
007E3C0C: mov ecx, [008F2374h]
007E3C12: cmp [ecx+eax*4], 00000000h
007E3C16: jnz 007E3D4Ch
007E3C1C: lea eax, var_4C
007E3C1F: push eax
007E3C20: mov eax, [ebp+08h]
007E3C23: mov eax, [eax]
007E3C25: push [ebp+08h]
007E3C28: call [eax+000001C0h]
007E3C2E: fclex 
007E3C30: mov var_00000168, eax
007E3C36: cmp var_00000168, 00000000h
007E3C3D: jnl 7E3C5Fh
007E3C3F: push 000001C0h
007E3C44: push 0044420Ch
007E3C49: push [ebp+08h]
007E3C4C: push var_00000168
007E3C52: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E3C57: mov var_00000278, eax
007E3C5D: jmp 7E3C66h
007E3C5F: and var_00000278, 00000000h
007E3C66: push var_4C
007E3C69: call 004109DCh ; Val(arg_1)
007E3C6E: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E3C73: dec eax
007E3C74: mov var_0000016C, eax
007E3C7A: cmp var_0000016C, 0000FF4Bh
007E3C84: jnb 7E3C8Fh
007E3C86: and var_0000027C, 00000000h
007E3C8D: jmp 7E3C9Ah
007E3C8F: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E3C94: mov var_0000027C, eax
007E3C9A: mov eax, var_0000016C
007E3CA0: mov ecx, [008F2374h]
007E3CA6: lea eax, [ecx+eax*4]
007E3CA9: push eax
007E3CAA: push 0041DAA4h
007E3CAF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E3CB4: lea eax, var_4C
007E3CB7: push eax
007E3CB8: mov eax, [ebp+08h]
007E3CBB: mov eax, [eax]
007E3CBD: push [ebp+08h]
007E3CC0: call [eax+000001C0h]
007E3CC6: fclex 
007E3CC8: mov var_00000168, eax
007E3CCE: cmp var_00000168, 00000000h
007E3CD5: jnl 7E3CF7h
007E3CD7: push 000001C0h
007E3CDC: push 0044420Ch
007E3CE1: push [ebp+08h]
007E3CE4: push var_00000168
007E3CEA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E3CEF: mov var_00000280, eax
007E3CF5: jmp 7E3CFEh
007E3CF7: and var_00000280, 00000000h
007E3CFE: push var_4C
007E3D01: call 004109DCh ; Val(arg_1)
007E3D06: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E3D0B: dec eax
007E3D0C: mov var_0000016C, eax
007E3D12: cmp var_0000016C, 0000FF4Bh
007E3D1C: jnb 7E3D27h
007E3D1E: and var_00000284, 00000000h
007E3D25: jmp 7E3D32h
007E3D27: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E3D2C: mov var_00000284, eax
007E3D32: mov eax, var_0000016C
007E3D38: mov ecx, [008F2374h]
007E3D3E: lea eax, [ecx+eax*4]
007E3D41: mov var_00000288, eax
007E3D47: jmp 007E3DDFh
007E3D4C: lea eax, var_4C
007E3D4F: push eax
007E3D50: mov eax, [ebp+08h]
007E3D53: mov eax, [eax]
007E3D55: push [ebp+08h]
007E3D58: call [eax+000001C0h]
007E3D5E: fclex 
007E3D60: mov var_00000168, eax
007E3D66: cmp var_00000168, 00000000h
007E3D6D: jnl 7E3D8Fh
007E3D6F: push 000001C0h
007E3D74: push 0044420Ch
007E3D79: push [ebp+08h]
007E3D7C: push var_00000168
007E3D82: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E3D87: mov var_0000028C, eax
007E3D8D: jmp 7E3D96h
007E3D8F: and var_0000028C, 00000000h
007E3D96: push var_4C
007E3D99: call 004109DCh ; Val(arg_1)
007E3D9E: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E3DA3: dec eax
007E3DA4: mov var_0000016C, eax
007E3DAA: cmp var_0000016C, 0000FF4Bh
007E3DB4: jnb 7E3DBFh
007E3DB6: and var_00000290, 00000000h
007E3DBD: jmp 7E3DCAh
007E3DBF: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E3DC4: mov var_00000290, eax
007E3DCA: mov eax, var_0000016C
007E3DD0: mov ecx, [008F2374h]
007E3DD6: lea eax, [ecx+eax*4]
007E3DD9: mov var_00000288, eax
007E3DDF: mov eax, var_00000288
007E3DE5: mov eax, [eax]
007E3DE7: mov var_00000170, eax
007E3DED: mov var_00000104, 00000001h
007E3DF7: mov var_0000010C, 00000003h
007E3E01: lea eax, var_2C
007E3E04: push eax
007E3E05: mov eax, [ebp+08h]
007E3E08: mov eax, [eax]
007E3E0A: push [ebp+08h]
007E3E0D: call [eax+000001C0h]
007E3E13: fclex 
007E3E15: mov var_00000160, eax
007E3E1B: cmp var_00000160, 00000000h
007E3E22: jnl 7E3E44h
007E3E24: push 000001C0h
007E3E29: push 0044420Ch
007E3E2E: push [ebp+08h]
007E3E31: push var_00000160
007E3E37: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E3E3C: mov var_00000294, eax
007E3E42: jmp 7E3E4Bh
007E3E44: and var_00000294, 00000000h
007E3E4B: push var_2C
007E3E4E: call 004109DCh ; Val(arg_1)
007E3E53: push ecx
007E3E54: push ecx
007E3E55: fstp real8 ptr [esp]
007E3E58: call 00410790h ; msvbvm60.dll.__vbaStrR8
007E3E5D: mov edx, eax
007E3E5F: lea ecx, var_30
007E3E62: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E3E67: push eax
007E3E68: push 004417CCh ; sck
007E3E6D: call 00410A18h ; &
007E3E72: mov var_80, eax
007E3E75: mov var_00000088, 00000008h
007E3E7F: cmp [008F2010h], 00000000h
007E3E86: jnz 7E3EA3h
007E3E88: push 008F2010h
007E3E8D: push 00433984h
007E3E92: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E3E97: mov var_00000298, 008F2010h
007E3EA1: jmp 7E3EADh
007E3EA3: mov var_00000298, 008F2010h
007E3EAD: mov var_00000134, 00000007h
007E3EB7: mov var_0000013C, 00000003h
007E3EC1: lea eax, var_3C
007E3EC4: push eax
007E3EC5: mov eax, [ebp+08h]
007E3EC8: mov eax, [eax]
007E3ECA: push [ebp+08h]
007E3ECD: call [eax+000001C0h]
007E3ED3: fclex 
007E3ED5: mov var_00000164, eax
007E3EDB: cmp var_00000164, 00000000h
007E3EE2: jnl 7E3F04h
007E3EE4: push 000001C0h
007E3EE9: push 0044420Ch
007E3EEE: push [ebp+08h]
007E3EF1: push var_00000164
007E3EF7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E3EFC: mov var_0000029C, eax
007E3F02: jmp 7E3F0Bh
007E3F04: and var_0000029C, 00000000h
007E3F0B: push var_3C
007E3F0E: call 004109DCh ; Val(arg_1)
007E3F13: push ecx
007E3F14: push ecx
007E3F15: fstp real8 ptr [esp]
007E3F18: call 00410790h ; msvbvm60.dll.__vbaStrR8
007E3F1D: mov edx, eax
007E3F1F: lea ecx, var_40
007E3F22: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E3F27: push eax
007E3F28: push 004417CCh ; sck
007E3F2D: call 00410A18h ; &
007E3F32: mov var_000000C0, eax
007E3F38: mov var_000000C8, 00000008h
007E3F42: cmp [008F2010h], 00000000h
007E3F49: jnz 7E3F66h
007E3F4B: push 008F2010h
007E3F50: push 00433984h
007E3F55: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E3F5A: mov var_000002A0, 008F2010h
007E3F64: jmp 7E3F70h
007E3F66: mov var_000002A0, 008F2010h
007E3F70: push 00450168h ; Remote gallery -
007E3F75: push 00000010h
007E3F77: pop eax
007E3F78: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E3F7D: lea esi, var_0000010C
007E3F83: mov edi, esp
007E3F85: movsd 
007E3F86: movsd 
007E3F87: movsd 
007E3F88: movsd 
007E3F89: push 00000001h
007E3F8B: push 00000010h
007E3F8D: push 00440E58h
007E3F92: push 00000010h
007E3F94: pop eax
007E3F95: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E3F9A: lea esi, var_00000088
007E3FA0: mov edi, esp
007E3FA2: movsd 
007E3FA3: movsd 
007E3FA4: movsd 
007E3FA5: movsd 
007E3FA6: push 00000001h
007E3FA8: push 00000000h
007E3FAA: push 00440E48h
007E3FAF: push 00000000h
007E3FB1: push 00000018h
007E3FB3: mov eax, var_00000298
007E3FB9: mov eax, [eax]
007E3FBB: mov ecx, var_00000298
007E3FC1: mov ecx, [ecx]
007E3FC3: mov ecx, [ecx]
007E3FC5: push eax
007E3FC6: call [ecx+00000550h]
007E3FCC: push eax
007E3FCD: lea eax, var_54
007E3FD0: push eax
007E3FD1: call 00410A84h ; Set (object)
007E3FD6: push eax
007E3FD7: lea eax, var_78
007E3FDA: push eax
007E3FDB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E3FE0: add esp, 00000010h
007E3FE3: push eax
007E3FE4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E3FE9: push eax
007E3FEA: lea eax, var_58
007E3FED: push eax
007E3FEE: call 00410A84h ; Set (object)
007E3FF3: push eax
007E3FF4: lea eax, var_00000098
007E3FFA: push eax
007E3FFB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E4000: add esp, 00000020h
007E4003: push eax
007E4004: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E4009: push eax
007E400A: lea eax, var_5C
007E400D: push eax
007E400E: call 00410A84h ; Set (object)
007E4013: push eax
007E4014: lea eax, var_000000A8
007E401A: push eax
007E401B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E4020: add esp, 00000020h
007E4023: push eax
007E4024: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E4029: mov edx, eax
007E402B: lea ecx, var_34
007E402E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E4033: push eax
007E4034: call 00410A18h ; &
007E4039: mov edx, eax
007E403B: lea ecx, var_38
007E403E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E4043: push eax
007E4044: push 00441740h
007E4049: call 00410A18h ; &
007E404E: mov edx, eax
007E4050: lea ecx, var_44
007E4053: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E4058: push eax
007E4059: push 00000010h
007E405B: pop eax
007E405C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E4061: lea esi, var_0000013C
007E4067: mov edi, esp
007E4069: movsd 
007E406A: movsd 
007E406B: movsd 
007E406C: movsd 
007E406D: push 00000001h
007E406F: push 00000010h
007E4071: push 00440E58h
007E4076: push 00000010h
007E4078: pop eax
007E4079: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E407E: lea esi, var_000000C8
007E4084: mov edi, esp
007E4086: movsd 
007E4087: movsd 
007E4088: movsd 
007E4089: movsd 
007E408A: push 00000001h
007E408C: push 00000000h
007E408E: push 00440E48h
007E4093: push 00000000h
007E4095: push 00000018h
007E4097: mov eax, var_000002A0
007E409D: mov eax, [eax]
007E409F: mov ecx, var_000002A0
007E40A5: mov ecx, [ecx]
007E40A7: mov ecx, [ecx]
007E40A9: push eax
007E40AA: call [ecx+00000550h]
007E40B0: push eax
007E40B1: lea eax, var_60
007E40B4: push eax
007E40B5: call 00410A84h ; Set (object)
007E40BA: push eax
007E40BB: lea eax, var_000000B8
007E40C1: push eax
007E40C2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E40C7: add esp, 00000010h
007E40CA: push eax
007E40CB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E40D0: push eax
007E40D1: lea eax, var_64
007E40D4: push eax
007E40D5: call 00410A84h ; Set (object)
007E40DA: push eax
007E40DB: lea eax, var_000000D8
007E40E1: push eax
007E40E2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E40E7: add esp, 00000020h
007E40EA: push eax
007E40EB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E40F0: push eax
007E40F1: lea eax, var_68
007E40F4: push eax
007E40F5: call 00410A84h ; Set (object)
007E40FA: push eax
007E40FB: lea eax, var_000000E8
007E4101: push eax
007E4102: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E4107: add esp, 00000020h
007E410A: push eax
007E410B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E4110: mov edx, eax
007E4112: lea ecx, var_48
007E4115: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E411A: push eax
007E411B: call 00410A18h ; &
007E4120: mov edx, eax
007E4122: lea ecx, var_50
007E4125: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E412A: push eax
007E412B: mov eax, var_00000170
007E4131: mov eax, [eax]
007E4133: push var_00000170
007E4139: call [eax+54h]
007E413C: fclex 
007E413E: mov var_00000174, eax
007E4144: cmp var_00000174, 00000000h
007E414B: jnl 7E416Dh
007E414D: push 00000054h
007E414F: push 0044CE8Ch
007E4154: push var_00000170
007E415A: push var_00000174
007E4160: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E4165: mov var_000002A4, eax
007E416B: jmp 7E4174h
007E416D: and var_000002A4, 00000000h
007E4174: lea eax, var_50
007E4177: push eax
007E4178: lea eax, var_4C
007E417B: push eax
007E417C: lea eax, var_48
007E417F: push eax
007E4180: lea eax, var_44
007E4183: push eax
007E4184: lea eax, var_40
007E4187: push eax
007E4188: lea eax, var_3C
007E418B: push eax
007E418C: lea eax, var_38
007E418F: push eax
007E4190: lea eax, var_34
007E4193: push eax
007E4194: lea eax, var_30
007E4197: push eax
007E4198: lea eax, var_2C
007E419B: push eax
007E419C: push 0000000Ah
007E419E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E41A3: add esp, 0000002Ch
007E41A6: lea eax, var_68
007E41A9: push eax
007E41AA: lea eax, var_64
007E41AD: push eax
007E41AE: lea eax, var_60
007E41B1: push eax
007E41B2: lea eax, var_5C
007E41B5: push eax
007E41B6: lea eax, var_58
007E41B9: push eax
007E41BA: lea eax, var_54
007E41BD: push eax
007E41BE: push 00000006h
007E41C0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E41C5: add esp, 0000001Ch
007E41C8: lea eax, var_000000E8
007E41CE: push eax
007E41CF: lea eax, var_000000D8
007E41D5: push eax
007E41D6: lea eax, var_000000C8
007E41DC: push eax
007E41DD: lea eax, var_000000B8
007E41E3: push eax
007E41E4: lea eax, var_000000A8
007E41EA: push eax
007E41EB: lea eax, var_00000098
007E41F1: push eax
007E41F2: lea eax, var_00000088
007E41F8: push eax
007E41F9: lea eax, var_78
007E41FC: push eax
007E41FD: push 00000008h
007E41FF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E4204: add esp, 00000024h
007E4207: lea eax, var_2C
007E420A: push eax
007E420B: mov eax, [ebp+08h]
007E420E: mov eax, [eax]
007E4210: push [ebp+08h]
007E4213: call [eax+000001C0h]
007E4219: fclex 
007E421B: mov var_00000160, eax
007E4221: cmp var_00000160, 00000000h
007E4228: jnl 7E424Ah
007E422A: push 000001C0h
007E422F: push 0044420Ch
007E4234: push [ebp+08h]
007E4237: push var_00000160
007E423D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E4242: mov var_000002A8, eax
007E4248: jmp 7E4251h
007E424A: and var_000002A8, 00000000h
007E4251: push var_2C
007E4254: call 004109DCh ; Val(arg_1)
007E4259: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E425E: dec eax
007E425F: mov var_00000164, eax
007E4265: cmp var_00000164, 0000FF4Bh
007E426F: jnb 7E427Ah
007E4271: and var_000002AC, 00000000h
007E4278: jmp 7E4285h
007E427A: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E427F: mov var_000002AC, eax
007E4285: mov eax, var_00000164
007E428B: mov ecx, [008F2374h]
007E4291: cmp [ecx+eax*4], 00000000h
007E4295: jnz 007E43CBh
007E429B: lea eax, var_2C
007E429E: push eax
007E429F: mov eax, [ebp+08h]
007E42A2: mov eax, [eax]
007E42A4: push [ebp+08h]
007E42A7: call [eax+000001C0h]
007E42AD: fclex 
007E42AF: mov var_00000160, eax
007E42B5: cmp var_00000160, 00000000h
007E42BC: jnl 7E42DEh
007E42BE: push 000001C0h
007E42C3: push 0044420Ch
007E42C8: push [ebp+08h]
007E42CB: push var_00000160
007E42D1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E42D6: mov var_000002B0, eax
007E42DC: jmp 7E42E5h
007E42DE: and var_000002B0, 00000000h
007E42E5: push var_2C
007E42E8: call 004109DCh ; Val(arg_1)
007E42ED: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E42F2: dec eax
007E42F3: mov var_00000164, eax
007E42F9: cmp var_00000164, 0000FF4Bh
007E4303: jnb 7E430Eh
007E4305: and var_000002B4, 00000000h
007E430C: jmp 7E4319h
007E430E: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E4313: mov var_000002B4, eax
007E4319: mov eax, var_00000164
007E431F: mov ecx, [008F2374h]
007E4325: lea eax, [ecx+eax*4]
007E4328: push eax
007E4329: push 0041DAA4h
007E432E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E4333: lea eax, var_2C
007E4336: push eax
007E4337: mov eax, [ebp+08h]
007E433A: mov eax, [eax]
007E433C: push [ebp+08h]
007E433F: call [eax+000001C0h]
007E4345: fclex 
007E4347: mov var_00000160, eax
007E434D: cmp var_00000160, 00000000h
007E4354: jnl 7E4376h
007E4356: push 000001C0h
007E435B: push 0044420Ch
007E4360: push [ebp+08h]
007E4363: push var_00000160
007E4369: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E436E: mov var_000002B8, eax
007E4374: jmp 7E437Dh
007E4376: and var_000002B8, 00000000h
007E437D: push var_2C
007E4380: call 004109DCh ; Val(arg_1)
007E4385: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E438A: dec eax
007E438B: mov var_00000164, eax
007E4391: cmp var_00000164, 0000FF4Bh
007E439B: jnb 7E43A6h
007E439D: and var_000002BC, 00000000h
007E43A4: jmp 7E43B1h
007E43A6: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E43AB: mov var_000002BC, eax
007E43B1: mov eax, var_00000164
007E43B7: mov ecx, [008F2374h]
007E43BD: lea eax, [ecx+eax*4]
007E43C0: mov var_000002C0, eax
007E43C6: jmp 007E445Eh
007E43CB: lea eax, var_2C
007E43CE: push eax
007E43CF: mov eax, [ebp+08h]
007E43D2: mov eax, [eax]
007E43D4: push [ebp+08h]
007E43D7: call [eax+000001C0h]
007E43DD: fclex 
007E43DF: mov var_00000160, eax
007E43E5: cmp var_00000160, 00000000h
007E43EC: jnl 7E440Eh
007E43EE: push 000001C0h
007E43F3: push 0044420Ch
007E43F8: push [ebp+08h]
007E43FB: push var_00000160
007E4401: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E4406: mov var_000002C4, eax
007E440C: jmp 7E4415h
007E440E: and var_000002C4, 00000000h
007E4415: push var_2C
007E4418: call 004109DCh ; Val(arg_1)
007E441D: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E4422: dec eax
007E4423: mov var_00000164, eax
007E4429: cmp var_00000164, 0000FF4Bh
007E4433: jnb 7E443Eh
007E4435: and var_000002C8, 00000000h
007E443C: jmp 7E4449h
007E443E: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E4443: mov var_000002C8, eax
007E4449: mov eax, var_00000164
007E444F: mov ecx, [008F2374h]
007E4455: lea eax, [ecx+eax*4]
007E4458: mov var_000002C0, eax
007E445E: mov eax, var_000002C0
007E4464: mov eax, [eax]
007E4466: mov var_00000168, eax
007E446C: mov eax, [ebp+08h]
007E446F: mov var_00000104, eax
007E4475: mov var_0000010C, 00000009h
007E447F: mov var_000000F4, 80020004h
007E4489: mov var_000000FC, 0000000Ah
007E4493: push 00000010h
007E4495: pop eax
007E4496: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E449B: lea esi, var_0000010C
007E44A1: mov edi, esp
007E44A3: movsd 
007E44A4: movsd 
007E44A5: movsd 
007E44A6: movsd 
007E44A7: push 00000010h
007E44A9: pop eax
007E44AA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E44AF: lea esi, var_000000FC
007E44B5: mov edi, esp
007E44B7: movsd 
007E44B8: movsd 
007E44B9: movsd 
007E44BA: movsd 
007E44BB: mov eax, var_00000168
007E44C1: mov eax, [eax]
007E44C3: push var_00000168
007E44C9: call [eax+000002B0h]
007E44CF: fclex 
007E44D1: mov var_0000016C, eax
007E44D7: cmp var_0000016C, 00000000h
007E44DE: jnl 7E4503h
007E44E0: push 000002B0h
007E44E5: push 0044CE8Ch
007E44EA: push var_00000168
007E44F0: push var_0000016C
007E44F6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E44FB: mov var_000002CC, eax
007E4501: jmp 7E450Ah
007E4503: and var_000002CC, 00000000h
007E450A: lea ecx, var_2C
007E450D: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E4512: movsx eax, word ptr var_20
007E4516: test eax, eax
007E4518: jnz 007E5958h
007E451E: lea eax, var_2C
007E4521: push eax
007E4522: mov eax, [ebp+08h]
007E4525: mov eax, [eax]
007E4527: push [ebp+08h]
007E452A: call [eax+000001C0h]
007E4530: fclex 
007E4532: mov var_00000160, eax
007E4538: cmp var_00000160, 00000000h
007E453F: jnl 7E4561h
007E4541: push 000001C0h
007E4546: push 0044420Ch
007E454B: push [ebp+08h]
007E454E: push var_00000160
007E4554: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E4559: mov var_000002D0, eax
007E455F: jmp 7E4568h
007E4561: and var_000002D0, 00000000h
007E4568: push var_2C
007E456B: call 004109DCh ; Val(arg_1)
007E4570: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E4575: dec eax
007E4576: mov var_00000164, eax
007E457C: cmp var_00000164, 0000FF4Bh
007E4586: jnb 7E4591h
007E4588: and var_000002D4, 00000000h
007E458F: jmp 7E459Ch
007E4591: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E4596: mov var_000002D4, eax
007E459C: mov eax, var_00000164
007E45A2: mov ecx, [008F2374h]
007E45A8: cmp [ecx+eax*4], 00000000h
007E45AC: jnz 007E46E2h
007E45B2: lea eax, var_2C
007E45B5: push eax
007E45B6: mov eax, [ebp+08h]
007E45B9: mov eax, [eax]
007E45BB: push [ebp+08h]
007E45BE: call [eax+000001C0h]
007E45C4: fclex 
007E45C6: mov var_00000160, eax
007E45CC: cmp var_00000160, 00000000h
007E45D3: jnl 7E45F5h
007E45D5: push 000001C0h
007E45DA: push 0044420Ch
007E45DF: push [ebp+08h]
007E45E2: push var_00000160
007E45E8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E45ED: mov var_000002D8, eax
007E45F3: jmp 7E45FCh
007E45F5: and var_000002D8, 00000000h
007E45FC: push var_2C
007E45FF: call 004109DCh ; Val(arg_1)
007E4604: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E4609: dec eax
007E460A: mov var_00000164, eax
007E4610: cmp var_00000164, 0000FF4Bh
007E461A: jnb 7E4625h
007E461C: and var_000002DC, 00000000h
007E4623: jmp 7E4630h
007E4625: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E462A: mov var_000002DC, eax
007E4630: mov eax, var_00000164
007E4636: mov ecx, [008F2374h]
007E463C: lea eax, [ecx+eax*4]
007E463F: push eax
007E4640: push 0041DAA4h
007E4645: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E464A: lea eax, var_2C
007E464D: push eax
007E464E: mov eax, [ebp+08h]
007E4651: mov eax, [eax]
007E4653: push [ebp+08h]
007E4656: call [eax+000001C0h]
007E465C: fclex 
007E465E: mov var_00000160, eax
007E4664: cmp var_00000160, 00000000h
007E466B: jnl 7E468Dh
007E466D: push 000001C0h
007E4672: push 0044420Ch
007E4677: push [ebp+08h]
007E467A: push var_00000160
007E4680: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E4685: mov var_000002E0, eax
007E468B: jmp 7E4694h
007E468D: and var_000002E0, 00000000h
007E4694: push var_2C
007E4697: call 004109DCh ; Val(arg_1)
007E469C: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E46A1: dec eax
007E46A2: mov var_00000164, eax
007E46A8: cmp var_00000164, 0000FF4Bh
007E46B2: jnb 7E46BDh
007E46B4: and var_000002E4, 00000000h
007E46BB: jmp 7E46C8h
007E46BD: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E46C2: mov var_000002E4, eax
007E46C8: mov eax, var_00000164
007E46CE: mov ecx, [008F2374h]
007E46D4: lea eax, [ecx+eax*4]
007E46D7: mov var_000002E8, eax
007E46DD: jmp 007E4775h
007E46E2: lea eax, var_2C
007E46E5: push eax
007E46E6: mov eax, [ebp+08h]
007E46E9: mov eax, [eax]
007E46EB: push [ebp+08h]
007E46EE: call [eax+000001C0h]
007E46F4: fclex 
007E46F6: mov var_00000160, eax
007E46FC: cmp var_00000160, 00000000h
007E4703: jnl 7E4725h
007E4705: push 000001C0h
007E470A: push 0044420Ch
007E470F: push [ebp+08h]
007E4712: push var_00000160
007E4718: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E471D: mov var_000002EC, eax
007E4723: jmp 7E472Ch
007E4725: and var_000002EC, 00000000h
007E472C: push var_2C
007E472F: call 004109DCh ; Val(arg_1)
007E4734: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E4739: dec eax
007E473A: mov var_00000164, eax
007E4740: cmp var_00000164, 0000FF4Bh
007E474A: jnb 7E4755h
007E474C: and var_000002F0, 00000000h
007E4753: jmp 7E4760h
007E4755: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E475A: mov var_000002F0, eax
007E4760: mov eax, var_00000164
007E4766: mov ecx, [008F2374h]
007E476C: lea eax, [ecx+eax*4]
007E476F: mov var_000002E8, eax
007E4775: mov eax, var_000002E8
007E477B: mov eax, [eax]
007E477D: mov ecx, var_000002E8
007E4783: mov ecx, [ecx]
007E4785: mov ecx, [ecx]
007E4787: push eax
007E4788: call [ecx+00000304h]
007E478E: push eax
007E478F: lea eax, var_54
007E4792: push eax
007E4793: call 00410A84h ; Set (object)
007E4798: mov var_00000168, eax
007E479E: lea eax, var_30
007E47A1: push eax
007E47A2: mov eax, var_00000168
007E47A8: mov eax, [eax]
007E47AA: push var_00000168
007E47B0: call [eax+000000A8h]
007E47B6: fclex 
007E47B8: mov var_0000016C, eax
007E47BE: cmp var_0000016C, 00000000h
007E47C5: jnl 7E47EAh
007E47C7: push 000000A8h
007E47CC: push 0044C944h
007E47D1: push var_00000168
007E47D7: push var_0000016C
007E47DD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E47E2: mov var_000002F4, eax
007E47E8: jmp 7E47F1h
007E47EA: and var_000002F4, 00000000h
007E47F1: push var_30
007E47F4: call 00410A0Ch ; msvbvm60.dll.__vbaI4Str
007E47F9: mov var_24, eax
007E47FC: lea eax, var_30
007E47FF: push eax
007E4800: lea eax, var_2C
007E4803: push eax
007E4804: push 00000002h
007E4806: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E480B: add esp, 0000000Ch
007E480E: lea ecx, var_54
007E4811: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E4816: lea eax, var_2C
007E4819: push eax
007E481A: mov eax, [ebp+08h]
007E481D: mov eax, [eax]
007E481F: push [ebp+08h]
007E4822: call [eax+000001C0h]
007E4828: fclex 
007E482A: mov var_00000160, eax
007E4830: cmp var_00000160, 00000000h
007E4837: jnl 7E4859h
007E4839: push 000001C0h
007E483E: push 0044420Ch
007E4843: push [ebp+08h]
007E4846: push var_00000160
007E484C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E4851: mov var_000002F8, eax
007E4857: jmp 7E4860h
007E4859: and var_000002F8, 00000000h
007E4860: push var_2C
007E4863: call 004109DCh ; Val(arg_1)
007E4868: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E486D: dec eax
007E486E: mov var_00000164, eax
007E4874: cmp var_00000164, 0000FF4Bh
007E487E: jnb 7E4889h
007E4880: and var_000002FC, 00000000h
007E4887: jmp 7E4894h
007E4889: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E488E: mov var_000002FC, eax
007E4894: mov eax, var_00000164
007E489A: mov ecx, [008F2374h]
007E48A0: cmp [ecx+eax*4], 00000000h
007E48A4: jnz 007E49DAh
007E48AA: lea eax, var_2C
007E48AD: push eax
007E48AE: mov eax, [ebp+08h]
007E48B1: mov eax, [eax]
007E48B3: push [ebp+08h]
007E48B6: call [eax+000001C0h]
007E48BC: fclex 
007E48BE: mov var_00000160, eax
007E48C4: cmp var_00000160, 00000000h
007E48CB: jnl 7E48EDh
007E48CD: push 000001C0h
007E48D2: push 0044420Ch
007E48D7: push [ebp+08h]
007E48DA: push var_00000160
007E48E0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E48E5: mov var_00000300, eax
007E48EB: jmp 7E48F4h
007E48ED: and var_00000300, 00000000h
007E48F4: push var_2C
007E48F7: call 004109DCh ; Val(arg_1)
007E48FC: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E4901: dec eax
007E4902: mov var_00000164, eax
007E4908: cmp var_00000164, 0000FF4Bh
007E4912: jnb 7E491Dh
007E4914: and var_00000304, 00000000h
007E491B: jmp 7E4928h
007E491D: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E4922: mov var_00000304, eax
007E4928: mov eax, var_00000164
007E492E: mov ecx, [008F2374h]
007E4934: lea eax, [ecx+eax*4]
007E4937: push eax
007E4938: push 0041DAA4h
007E493D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E4942: lea eax, var_2C
007E4945: push eax
007E4946: mov eax, [ebp+08h]
007E4949: mov eax, [eax]
007E494B: push [ebp+08h]
007E494E: call [eax+000001C0h]
007E4954: fclex 
007E4956: mov var_00000160, eax
007E495C: cmp var_00000160, 00000000h
007E4963: jnl 7E4985h
007E4965: push 000001C0h
007E496A: push 0044420Ch
007E496F: push [ebp+08h]
007E4972: push var_00000160
007E4978: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E497D: mov var_00000308, eax
007E4983: jmp 7E498Ch
007E4985: and var_00000308, 00000000h
007E498C: push var_2C
007E498F: call 004109DCh ; Val(arg_1)
007E4994: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E4999: dec eax
007E499A: mov var_00000164, eax
007E49A0: cmp var_00000164, 0000FF4Bh
007E49AA: jnb 7E49B5h
007E49AC: and var_0000030C, 00000000h
007E49B3: jmp 7E49C0h
007E49B5: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E49BA: mov var_0000030C, eax
007E49C0: mov eax, var_00000164
007E49C6: mov ecx, [008F2374h]
007E49CC: lea eax, [ecx+eax*4]
007E49CF: mov var_00000310, eax
007E49D5: jmp 007E4A6Dh
007E49DA: lea eax, var_2C
007E49DD: push eax
007E49DE: mov eax, [ebp+08h]
007E49E1: mov eax, [eax]
007E49E3: push [ebp+08h]
007E49E6: call [eax+000001C0h]
007E49EC: fclex 
007E49EE: mov var_00000160, eax
007E49F4: cmp var_00000160, 00000000h
007E49FB: jnl 7E4A1Dh
007E49FD: push 000001C0h
007E4A02: push 0044420Ch
007E4A07: push [ebp+08h]
007E4A0A: push var_00000160
007E4A10: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E4A15: mov var_00000314, eax
007E4A1B: jmp 7E4A24h
007E4A1D: and var_00000314, 00000000h
007E4A24: push var_2C
007E4A27: call 004109DCh ; Val(arg_1)
007E4A2C: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E4A31: dec eax
007E4A32: mov var_00000164, eax
007E4A38: cmp var_00000164, 0000FF4Bh
007E4A42: jnb 7E4A4Dh
007E4A44: and var_00000318, 00000000h
007E4A4B: jmp 7E4A58h
007E4A4D: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E4A52: mov var_00000318, eax
007E4A58: mov eax, var_00000164
007E4A5E: mov ecx, [008F2374h]
007E4A64: lea eax, [ecx+eax*4]
007E4A67: mov var_00000310, eax
007E4A6D: mov eax, var_00000310
007E4A73: mov eax, [eax]
007E4A75: mov ecx, var_00000310
007E4A7B: mov ecx, [ecx]
007E4A7D: mov ecx, [ecx]
007E4A7F: push eax
007E4A80: call [ecx+00000300h]
007E4A86: push eax
007E4A87: lea eax, var_54
007E4A8A: push eax
007E4A8B: call 00410A84h ; Set (object)
007E4A90: mov var_00000168, eax
007E4A96: lea eax, var_30
007E4A99: push eax
007E4A9A: mov eax, var_00000168
007E4AA0: mov eax, [eax]
007E4AA2: push var_00000168
007E4AA8: call [eax+000000A8h]
007E4AAE: fclex 
007E4AB0: mov var_0000016C, eax
007E4AB6: cmp var_0000016C, 00000000h
007E4ABD: jnl 7E4AE2h
007E4ABF: push 000000A8h
007E4AC4: push 0044C944h
007E4AC9: push var_00000168
007E4ACF: push var_0000016C
007E4AD5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E4ADA: mov var_0000031C, eax
007E4AE0: jmp 7E4AE9h
007E4AE2: and var_0000031C, 00000000h
007E4AE9: push var_30
007E4AEC: call 00410A0Ch ; msvbvm60.dll.__vbaI4Str
007E4AF1: mov var_28, eax
007E4AF4: lea eax, var_30
007E4AF7: push eax
007E4AF8: lea eax, var_2C
007E4AFB: push eax
007E4AFC: push 00000002h
007E4AFE: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E4B03: add esp, 0000000Ch
007E4B06: lea ecx, var_54
007E4B09: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E4B0E: lea eax, var_2C
007E4B11: push eax
007E4B12: mov eax, [ebp+08h]
007E4B15: mov eax, [eax]
007E4B17: push [ebp+08h]
007E4B1A: call [eax+000001C0h]
007E4B20: fclex 
007E4B22: mov var_00000160, eax
007E4B28: cmp var_00000160, 00000000h
007E4B2F: jnl 7E4B51h
007E4B31: push 000001C0h
007E4B36: push 0044420Ch
007E4B3B: push [ebp+08h]
007E4B3E: push var_00000160
007E4B44: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E4B49: mov var_00000320, eax
007E4B4F: jmp 7E4B58h
007E4B51: and var_00000320, 00000000h
007E4B58: push var_2C
007E4B5B: call 004109DCh ; Val(arg_1)
007E4B60: fstp real8 ptr var_0000015C
007E4B66: push 004412DCh
007E4B6B: push 00000000h
007E4B6D: push 0000000Dh
007E4B6F: mov eax, [ebp+08h]
007E4B72: mov eax, [eax]
007E4B74: push [ebp+08h]
007E4B77: call [eax+00000324h]
007E4B7D: push eax
007E4B7E: lea eax, var_58
007E4B81: push eax
007E4B82: call 00410A84h ; Set (object)
007E4B87: push eax
007E4B88: lea eax, var_00000088
007E4B8E: push eax
007E4B8F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E4B94: add esp, 00000010h
007E4B97: push eax
007E4B98: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E4B9D: push eax
007E4B9E: lea eax, var_5C
007E4BA1: push eax
007E4BA2: call 00410A84h ; Set (object)
007E4BA7: mov var_00000164, eax
007E4BAD: lea eax, var_00000154
007E4BB3: push eax
007E4BB4: mov eax, var_00000164
007E4BBA: mov eax, [eax]
007E4BBC: push var_00000164
007E4BC2: call [eax+44h]
007E4BC5: fclex 
007E4BC7: mov var_00000168, eax
007E4BCD: cmp var_00000168, 00000000h
007E4BD4: jnl 7E4BF6h
007E4BD6: push 00000044h
007E4BD8: push 004412DCh
007E4BDD: push var_00000164
007E4BE3: push var_00000168
007E4BE9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E4BEE: mov var_00000324, eax
007E4BF4: jmp 7E4BFDh
007E4BF6: and var_00000324, 00000000h
007E4BFD: push 00000000h
007E4BFF: push 00000002h
007E4C01: push 00000001h
007E4C03: push 00000000h
007E4C05: lea eax, var_000000EC
007E4C0B: push eax
007E4C0C: push 00000010h
007E4C0E: push 00000880h
007E4C13: call 00410946h ; ReDim
007E4C18: add esp, 0000001Ch
007E4C1B: push 004412BCh
007E4C20: push 00000000h
007E4C22: push 00000007h
007E4C24: mov eax, [ebp+08h]
007E4C27: mov eax, [eax]
007E4C29: push [ebp+08h]
007E4C2C: call [eax+00000324h]
007E4C32: push eax
007E4C33: lea eax, var_60
007E4C36: push eax
007E4C37: call 00410A84h ; Set (object)
007E4C3C: push eax
007E4C3D: lea eax, var_00000098
007E4C43: push eax
007E4C44: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E4C49: add esp, 00000010h
007E4C4C: push eax
007E4C4D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E4C52: push eax
007E4C53: lea eax, var_64
007E4C56: push eax
007E4C57: call 00410A84h ; Set (object)
007E4C5C: mov var_0000016C, eax
007E4C62: mov eax, var_00000154
007E4C68: mov var_000000A0, eax
007E4C6E: mov var_000000A8, 00000003h
007E4C78: lea eax, var_68
007E4C7B: push eax
007E4C7C: lea eax, var_000000A8
007E4C82: push eax
007E4C83: mov eax, var_0000016C
007E4C89: mov eax, [eax]
007E4C8B: push var_0000016C
007E4C91: call [eax+24h]
007E4C94: fclex 
007E4C96: mov var_00000170, eax
007E4C9C: cmp var_00000170, 00000000h
007E4CA3: jnl 7E4CC5h
007E4CA5: push 00000024h
007E4CA7: push 004412BCh
007E4CAC: push var_0000016C
007E4CB2: push var_00000170
007E4CB8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E4CBD: mov var_00000328, eax
007E4CC3: jmp 7E4CCCh
007E4CC5: and var_00000328, 00000000h
007E4CCC: mov eax, var_68
007E4CCF: mov var_00000174, eax
007E4CD5: lea eax, var_30
007E4CD8: push eax
007E4CD9: mov eax, var_00000174
007E4CDF: mov eax, [eax]
007E4CE1: push var_00000174
007E4CE7: call [eax+24h]
007E4CEA: fclex 
007E4CEC: mov var_00000178, eax
007E4CF2: cmp var_00000178, 00000000h
007E4CF9: jnl 7E4D1Bh
007E4CFB: push 00000024h
007E4CFD: push 004412DCh
007E4D02: push var_00000174
007E4D08: push var_00000178
007E4D0E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E4D13: mov var_0000032C, eax
007E4D19: jmp 7E4D22h
007E4D1B: and var_0000032C, 00000000h
007E4D22: push 00000000h
007E4D24: push 8001000Bh
007E4D29: mov eax, [ebp+08h]
007E4D2C: mov eax, [eax]
007E4D2E: push [ebp+08h]
007E4D31: call [eax+00000324h]
007E4D37: push eax
007E4D38: lea eax, var_54
007E4D3B: push eax
007E4D3C: call 00410A84h ; Set (object)
007E4D41: push eax
007E4D42: lea eax, var_78
007E4D45: push eax
007E4D46: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E4D4B: add esp, 00000010h
007E4D4E: push eax
007E4D4F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E4D54: mov edx, eax
007E4D56: lea ecx, var_34
007E4D59: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E4D5E: push eax
007E4D5F: push var_30
007E4D62: call 00410A18h ; &
007E4D67: mov var_000000B0, eax
007E4D6D: mov var_000000B8, 00000008h
007E4D77: lea esi, var_000000B8
007E4D7D: push 00000000h
007E4D7F: push var_000000EC
007E4D85: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E4D8A: mov ecx, eax
007E4D8C: mov edx, esi
007E4D8E: call 00410940h ; msvbvm60.dll.__vbaVarZero
007E4D93: lea eax, var_24
007E4D96: mov var_00000104, eax
007E4D9C: mov var_0000010C, 00004003h
007E4DA6: lea esi, var_0000010C
007E4DAC: push 00000001h
007E4DAE: push var_000000EC
007E4DB4: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E4DB9: mov ecx, eax
007E4DBB: mov edx, esi
007E4DBD: call 00410940h ; msvbvm60.dll.__vbaVarZero
007E4DC2: lea eax, var_28
007E4DC5: mov var_00000114, eax
007E4DCB: mov var_0000011C, 00004003h
007E4DD5: lea esi, var_0000011C
007E4DDB: push 00000002h
007E4DDD: push var_000000EC
007E4DE3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E4DE8: mov ecx, eax
007E4DEA: mov edx, esi
007E4DEC: call 00410940h ; msvbvm60.dll.__vbaVarZero
007E4DF1: mov edx, 0043D8E4h ; x102
007E4DF6: lea ecx, var_38
007E4DF9: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007E4DFE: lea eax, var_000000EC
007E4E04: push eax
007E4E05: lea eax, var_38
007E4E08: push eax
007E4E09: fld real8 ptr var_0000015C
007E4E0F: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007E4E14: push eax
007E4E15: call 007A6910h
007E4E1A: lea eax, var_000000EC
007E4E20: push eax
007E4E21: push 00000000h
007E4E23: call 00410934h ; Erase
007E4E28: lea eax, var_38
007E4E2B: push eax
007E4E2C: lea eax, var_30
007E4E2F: push eax
007E4E30: lea eax, var_34
007E4E33: push eax
007E4E34: lea eax, var_2C
007E4E37: push eax
007E4E38: push 00000004h
007E4E3A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E4E3F: add esp, 00000014h
007E4E42: lea eax, var_68
007E4E45: push eax
007E4E46: lea eax, var_64
007E4E49: push eax
007E4E4A: lea eax, var_60
007E4E4D: push eax
007E4E4E: lea eax, var_5C
007E4E51: push eax
007E4E52: lea eax, var_58
007E4E55: push eax
007E4E56: lea eax, var_54
007E4E59: push eax
007E4E5A: push 00000006h
007E4E5C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E4E61: add esp, 0000001Ch
007E4E64: lea eax, var_000000A8
007E4E6A: push eax
007E4E6B: lea eax, var_00000098
007E4E71: push eax
007E4E72: lea eax, var_00000088
007E4E78: push eax
007E4E79: lea eax, var_78
007E4E7C: push eax
007E4E7D: push 00000004h
007E4E7F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E4E84: add esp, 00000014h
007E4E87: lea eax, var_2C
007E4E8A: push eax
007E4E8B: mov eax, [ebp+08h]
007E4E8E: mov eax, [eax]
007E4E90: push [ebp+08h]
007E4E93: call [eax+000001C0h]
007E4E99: fclex 
007E4E9B: mov var_00000160, eax
007E4EA1: cmp var_00000160, 00000000h
007E4EA8: jnl 7E4ECAh
007E4EAA: push 000001C0h
007E4EAF: push 0044420Ch
007E4EB4: push [ebp+08h]
007E4EB7: push var_00000160
007E4EBD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E4EC2: mov var_00000330, eax
007E4EC8: jmp 7E4ED1h
007E4ECA: and var_00000330, 00000000h
007E4ED1: push var_2C
007E4ED4: call 004109DCh ; Val(arg_1)
007E4ED9: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E4EDE: dec eax
007E4EDF: mov var_00000164, eax
007E4EE5: cmp var_00000164, 0000FF4Bh
007E4EEF: jnb 7E4EFAh
007E4EF1: and var_00000334, 00000000h
007E4EF8: jmp 7E4F05h
007E4EFA: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E4EFF: mov var_00000334, eax
007E4F05: mov eax, var_00000164
007E4F0B: mov ecx, [008F2374h]
007E4F11: cmp [ecx+eax*4], 00000000h
007E4F15: jnz 007E504Bh
007E4F1B: lea eax, var_2C
007E4F1E: push eax
007E4F1F: mov eax, [ebp+08h]
007E4F22: mov eax, [eax]
007E4F24: push [ebp+08h]
007E4F27: call [eax+000001C0h]
007E4F2D: fclex 
007E4F2F: mov var_00000160, eax
007E4F35: cmp var_00000160, 00000000h
007E4F3C: jnl 7E4F5Eh
007E4F3E: push 000001C0h
007E4F43: push 0044420Ch
007E4F48: push [ebp+08h]
007E4F4B: push var_00000160
007E4F51: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E4F56: mov var_00000338, eax
007E4F5C: jmp 7E4F65h
007E4F5E: and var_00000338, 00000000h
007E4F65: push var_2C
007E4F68: call 004109DCh ; Val(arg_1)
007E4F6D: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E4F72: dec eax
007E4F73: mov var_00000164, eax
007E4F79: cmp var_00000164, 0000FF4Bh
007E4F83: jnb 7E4F8Eh
007E4F85: and var_0000033C, 00000000h
007E4F8C: jmp 7E4F99h
007E4F8E: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E4F93: mov var_0000033C, eax
007E4F99: mov eax, var_00000164
007E4F9F: mov ecx, [008F2374h]
007E4FA5: lea eax, [ecx+eax*4]
007E4FA8: push eax
007E4FA9: push 0041DAA4h
007E4FAE: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E4FB3: lea eax, var_2C
007E4FB6: push eax
007E4FB7: mov eax, [ebp+08h]
007E4FBA: mov eax, [eax]
007E4FBC: push [ebp+08h]
007E4FBF: call [eax+000001C0h]
007E4FC5: fclex 
007E4FC7: mov var_00000160, eax
007E4FCD: cmp var_00000160, 00000000h
007E4FD4: jnl 7E4FF6h
007E4FD6: push 000001C0h
007E4FDB: push 0044420Ch
007E4FE0: push [ebp+08h]
007E4FE3: push var_00000160
007E4FE9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E4FEE: mov var_00000340, eax
007E4FF4: jmp 7E4FFDh
007E4FF6: and var_00000340, 00000000h
007E4FFD: push var_2C
007E5000: call 004109DCh ; Val(arg_1)
007E5005: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E500A: dec eax
007E500B: mov var_00000164, eax
007E5011: cmp var_00000164, 0000FF4Bh
007E501B: jnb 7E5026h
007E501D: and var_00000344, 00000000h
007E5024: jmp 7E5031h
007E5026: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E502B: mov var_00000344, eax
007E5031: mov eax, var_00000164
007E5037: mov ecx, [008F2374h]
007E503D: lea eax, [ecx+eax*4]
007E5040: mov var_00000348, eax
007E5046: jmp 007E50DEh
007E504B: lea eax, var_2C
007E504E: push eax
007E504F: mov eax, [ebp+08h]
007E5052: mov eax, [eax]
007E5054: push [ebp+08h]
007E5057: call [eax+000001C0h]
007E505D: fclex 
007E505F: mov var_00000160, eax
007E5065: cmp var_00000160, 00000000h
007E506C: jnl 7E508Eh
007E506E: push 000001C0h
007E5073: push 0044420Ch
007E5078: push [ebp+08h]
007E507B: push var_00000160
007E5081: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E5086: mov var_0000034C, eax
007E508C: jmp 7E5095h
007E508E: and var_0000034C, 00000000h
007E5095: push var_2C
007E5098: call 004109DCh ; Val(arg_1)
007E509D: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E50A2: dec eax
007E50A3: mov var_00000164, eax
007E50A9: cmp var_00000164, 0000FF4Bh
007E50B3: jnb 7E50BEh
007E50B5: and var_00000350, 00000000h
007E50BC: jmp 7E50C9h
007E50BE: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E50C3: mov var_00000350, eax
007E50C9: mov eax, var_00000164
007E50CF: mov ecx, [008F2374h]
007E50D5: lea eax, [ecx+eax*4]
007E50D8: mov var_00000348, eax
007E50DE: push 0044A87Ch
007E50E3: push 00000000h
007E50E5: push 00000003h
007E50E7: mov eax, var_00000348
007E50ED: mov eax, [eax]
007E50EF: mov ecx, var_00000348
007E50F5: mov ecx, [ecx]
007E50F7: mov ecx, [ecx]
007E50F9: push eax
007E50FA: call [ecx+00000330h]
007E5100: push eax
007E5101: lea eax, var_54
007E5104: push eax
007E5105: call 00410A84h ; Set (object)
007E510A: push eax
007E510B: lea eax, var_78
007E510E: push eax
007E510F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E5114: add esp, 00000010h
007E5117: push eax
007E5118: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E511D: push eax
007E511E: lea eax, var_58
007E5121: push eax
007E5122: call 00410A84h ; Set (object)
007E5127: mov var_00000168, eax
007E512D: mov var_80, 00000001h
007E5134: mov var_00000088, 00000002h
007E513E: lea eax, var_5C
007E5141: push eax
007E5142: lea eax, var_00000088
007E5148: push eax
007E5149: mov eax, var_00000168
007E514F: mov eax, [eax]
007E5151: push var_00000168
007E5157: call [eax+24h]
007E515A: fclex 
007E515C: mov var_0000016C, eax
007E5162: cmp var_0000016C, 00000000h
007E5169: jnl 7E518Bh
007E516B: push 00000024h
007E516D: push 0044A87Ch
007E5172: push var_00000168
007E5178: push var_0000016C
007E517E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E5183: mov var_00000354, eax
007E5189: jmp 7E5192h
007E518B: and var_00000354, 00000000h
007E5192: mov eax, var_5C
007E5195: mov var_00000170, eax
007E519B: push 00450190h ; File: N/A
007E51A0: mov eax, var_00000170
007E51A6: mov eax, [eax]
007E51A8: push var_00000170
007E51AE: call [eax+00000080h]
007E51B4: fclex 
007E51B6: mov var_00000174, eax
007E51BC: cmp var_00000174, 00000000h
007E51C3: jnl 7E51E8h
007E51C5: push 00000080h
007E51CA: push 0044A88Ch
007E51CF: push var_00000170
007E51D5: push var_00000174
007E51DB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E51E0: mov var_00000358, eax
007E51E6: jmp 7E51EFh
007E51E8: and var_00000358, 00000000h
007E51EF: lea ecx, var_2C
007E51F2: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E51F7: lea eax, var_5C
007E51FA: push eax
007E51FB: lea eax, var_58
007E51FE: push eax
007E51FF: lea eax, var_54
007E5202: push eax
007E5203: push 00000003h
007E5205: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E520A: add esp, 00000010h
007E520D: lea eax, var_00000088
007E5213: push eax
007E5214: lea eax, var_78
007E5217: push eax
007E5218: push 00000002h
007E521A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E521F: add esp, 0000000Ch
007E5222: lea eax, var_2C
007E5225: push eax
007E5226: mov eax, [ebp+08h]
007E5229: mov eax, [eax]
007E522B: push [ebp+08h]
007E522E: call [eax+000001C0h]
007E5234: fclex 
007E5236: mov var_00000160, eax
007E523C: cmp var_00000160, 00000000h
007E5243: jnl 7E5265h
007E5245: push 000001C0h
007E524A: push 0044420Ch
007E524F: push [ebp+08h]
007E5252: push var_00000160
007E5258: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E525D: mov var_0000035C, eax
007E5263: jmp 7E526Ch
007E5265: and var_0000035C, 00000000h
007E526C: push var_2C
007E526F: call 004109DCh ; Val(arg_1)
007E5274: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E5279: dec eax
007E527A: mov var_00000164, eax
007E5280: cmp var_00000164, 0000FF4Bh
007E528A: jnb 7E5295h
007E528C: and var_00000360, 00000000h
007E5293: jmp 7E52A0h
007E5295: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E529A: mov var_00000360, eax
007E52A0: mov eax, var_00000164
007E52A6: mov ecx, [008F2374h]
007E52AC: cmp [ecx+eax*4], 00000000h
007E52B0: jnz 007E53E6h
007E52B6: lea eax, var_2C
007E52B9: push eax
007E52BA: mov eax, [ebp+08h]
007E52BD: mov eax, [eax]
007E52BF: push [ebp+08h]
007E52C2: call [eax+000001C0h]
007E52C8: fclex 
007E52CA: mov var_00000160, eax
007E52D0: cmp var_00000160, 00000000h
007E52D7: jnl 7E52F9h
007E52D9: push 000001C0h
007E52DE: push 0044420Ch
007E52E3: push [ebp+08h]
007E52E6: push var_00000160
007E52EC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E52F1: mov var_00000364, eax
007E52F7: jmp 7E5300h
007E52F9: and var_00000364, 00000000h
007E5300: push var_2C
007E5303: call 004109DCh ; Val(arg_1)
007E5308: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E530D: dec eax
007E530E: mov var_00000164, eax
007E5314: cmp var_00000164, 0000FF4Bh
007E531E: jnb 7E5329h
007E5320: and var_00000368, 00000000h
007E5327: jmp 7E5334h
007E5329: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E532E: mov var_00000368, eax
007E5334: mov eax, var_00000164
007E533A: mov ecx, [008F2374h]
007E5340: lea eax, [ecx+eax*4]
007E5343: push eax
007E5344: push 0041DAA4h
007E5349: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E534E: lea eax, var_2C
007E5351: push eax
007E5352: mov eax, [ebp+08h]
007E5355: mov eax, [eax]
007E5357: push [ebp+08h]
007E535A: call [eax+000001C0h]
007E5360: fclex 
007E5362: mov var_00000160, eax
007E5368: cmp var_00000160, 00000000h
007E536F: jnl 7E5391h
007E5371: push 000001C0h
007E5376: push 0044420Ch
007E537B: push [ebp+08h]
007E537E: push var_00000160
007E5384: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E5389: mov var_0000036C, eax
007E538F: jmp 7E5398h
007E5391: and var_0000036C, 00000000h
007E5398: push var_2C
007E539B: call 004109DCh ; Val(arg_1)
007E53A0: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E53A5: dec eax
007E53A6: mov var_00000164, eax
007E53AC: cmp var_00000164, 0000FF4Bh
007E53B6: jnb 7E53C1h
007E53B8: and var_00000370, 00000000h
007E53BF: jmp 7E53CCh
007E53C1: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E53C6: mov var_00000370, eax
007E53CC: mov eax, var_00000164
007E53D2: mov ecx, [008F2374h]
007E53D8: lea eax, [ecx+eax*4]
007E53DB: mov var_00000374, eax
007E53E1: jmp 007E5479h
007E53E6: lea eax, var_2C
007E53E9: push eax
007E53EA: mov eax, [ebp+08h]
007E53ED: mov eax, [eax]
007E53EF: push [ebp+08h]
007E53F2: call [eax+000001C0h]
007E53F8: fclex 
007E53FA: mov var_00000160, eax
007E5400: cmp var_00000160, 00000000h
007E5407: jnl 7E5429h
007E5409: push 000001C0h
007E540E: push 0044420Ch
007E5413: push [ebp+08h]
007E5416: push var_00000160
007E541C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E5421: mov var_00000378, eax
007E5427: jmp 7E5430h
007E5429: and var_00000378, 00000000h
007E5430: push var_2C
007E5433: call 004109DCh ; Val(arg_1)
007E5438: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E543D: dec eax
007E543E: mov var_00000164, eax
007E5444: cmp var_00000164, 0000FF4Bh
007E544E: jnb 7E5459h
007E5450: and var_0000037C, 00000000h
007E5457: jmp 7E5464h
007E5459: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E545E: mov var_0000037C, eax
007E5464: mov eax, var_00000164
007E546A: mov ecx, [008F2374h]
007E5470: lea eax, [ecx+eax*4]
007E5473: mov var_00000374, eax
007E5479: push 0044A87Ch
007E547E: push 00000000h
007E5480: push 00000003h
007E5482: mov eax, var_00000374
007E5488: mov eax, [eax]
007E548A: mov ecx, var_00000374
007E5490: mov ecx, [ecx]
007E5492: mov ecx, [ecx]
007E5494: push eax
007E5495: call [ecx+00000330h]
007E549B: push eax
007E549C: lea eax, var_54
007E549F: push eax
007E54A0: call 00410A84h ; Set (object)
007E54A5: push eax
007E54A6: lea eax, var_78
007E54A9: push eax
007E54AA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E54AF: add esp, 00000010h
007E54B2: push eax
007E54B3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E54B8: push eax
007E54B9: lea eax, var_58
007E54BC: push eax
007E54BD: call 00410A84h ; Set (object)
007E54C2: mov var_00000168, eax
007E54C8: mov var_80, 00000002h
007E54CF: mov var_00000088, 00000002h
007E54D9: lea eax, var_5C
007E54DC: push eax
007E54DD: lea eax, var_00000088
007E54E3: push eax
007E54E4: mov eax, var_00000168
007E54EA: mov eax, [eax]
007E54EC: push var_00000168
007E54F2: call [eax+24h]
007E54F5: fclex 
007E54F7: mov var_0000016C, eax
007E54FD: cmp var_0000016C, 00000000h
007E5504: jnl 7E5526h
007E5506: push 00000024h
007E5508: push 0044A87Ch
007E550D: push var_00000168
007E5513: push var_0000016C
007E5519: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E551E: mov var_00000380, eax
007E5524: jmp 7E552Dh
007E5526: and var_00000380, 00000000h
007E552D: mov eax, var_5C
007E5530: mov var_00000170, eax
007E5536: push 00450034h ; Size: N/A
007E553B: mov eax, var_00000170
007E5541: mov eax, [eax]
007E5543: push var_00000170
007E5549: call [eax+00000080h]
007E554F: fclex 
007E5551: mov var_00000174, eax
007E5557: cmp var_00000174, 00000000h
007E555E: jnl 7E5583h
007E5560: push 00000080h
007E5565: push 0044A88Ch
007E556A: push var_00000170
007E5570: push var_00000174
007E5576: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E557B: mov var_00000384, eax
007E5581: jmp 7E558Ah
007E5583: and var_00000384, 00000000h
007E558A: lea ecx, var_2C
007E558D: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E5592: lea eax, var_5C
007E5595: push eax
007E5596: lea eax, var_58
007E5599: push eax
007E559A: lea eax, var_54
007E559D: push eax
007E559E: push 00000003h
007E55A0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E55A5: add esp, 00000010h
007E55A8: lea eax, var_00000088
007E55AE: push eax
007E55AF: lea eax, var_78
007E55B2: push eax
007E55B3: push 00000002h
007E55B5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E55BA: add esp, 0000000Ch
007E55BD: lea eax, var_2C
007E55C0: push eax
007E55C1: mov eax, [ebp+08h]
007E55C4: mov eax, [eax]
007E55C6: push [ebp+08h]
007E55C9: call [eax+000001C0h]
007E55CF: fclex 
007E55D1: mov var_00000160, eax
007E55D7: cmp var_00000160, 00000000h
007E55DE: jnl 7E5600h
007E55E0: push 000001C0h
007E55E5: push 0044420Ch
007E55EA: push [ebp+08h]
007E55ED: push var_00000160
007E55F3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E55F8: mov var_00000388, eax
007E55FE: jmp 7E5607h
007E5600: and var_00000388, 00000000h
007E5607: push var_2C
007E560A: call 004109DCh ; Val(arg_1)
007E560F: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E5614: dec eax
007E5615: mov var_00000164, eax
007E561B: cmp var_00000164, 0000FF4Bh
007E5625: jnb 7E5630h
007E5627: and var_0000038C, 00000000h
007E562E: jmp 7E563Bh
007E5630: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E5635: mov var_0000038C, eax
007E563B: mov eax, var_00000164
007E5641: mov ecx, [008F2374h]
007E5647: cmp [ecx+eax*4], 00000000h
007E564B: jnz 007E5781h
007E5651: lea eax, var_2C
007E5654: push eax
007E5655: mov eax, [ebp+08h]
007E5658: mov eax, [eax]
007E565A: push [ebp+08h]
007E565D: call [eax+000001C0h]
007E5663: fclex 
007E5665: mov var_00000160, eax
007E566B: cmp var_00000160, 00000000h
007E5672: jnl 7E5694h
007E5674: push 000001C0h
007E5679: push 0044420Ch
007E567E: push [ebp+08h]
007E5681: push var_00000160
007E5687: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E568C: mov var_00000390, eax
007E5692: jmp 7E569Bh
007E5694: and var_00000390, 00000000h
007E569B: push var_2C
007E569E: call 004109DCh ; Val(arg_1)
007E56A3: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E56A8: dec eax
007E56A9: mov var_00000164, eax
007E56AF: cmp var_00000164, 0000FF4Bh
007E56B9: jnb 7E56C4h
007E56BB: and var_00000394, 00000000h
007E56C2: jmp 7E56CFh
007E56C4: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E56C9: mov var_00000394, eax
007E56CF: mov eax, var_00000164
007E56D5: mov ecx, [008F2374h]
007E56DB: lea eax, [ecx+eax*4]
007E56DE: push eax
007E56DF: push 0041DAA4h
007E56E4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E56E9: lea eax, var_2C
007E56EC: push eax
007E56ED: mov eax, [ebp+08h]
007E56F0: mov eax, [eax]
007E56F2: push [ebp+08h]
007E56F5: call [eax+000001C0h]
007E56FB: fclex 
007E56FD: mov var_00000160, eax
007E5703: cmp var_00000160, 00000000h
007E570A: jnl 7E572Ch
007E570C: push 000001C0h
007E5711: push 0044420Ch
007E5716: push [ebp+08h]
007E5719: push var_00000160
007E571F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E5724: mov var_00000398, eax
007E572A: jmp 7E5733h
007E572C: and var_00000398, 00000000h
007E5733: push var_2C
007E5736: call 004109DCh ; Val(arg_1)
007E573B: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E5740: dec eax
007E5741: mov var_00000164, eax
007E5747: cmp var_00000164, 0000FF4Bh
007E5751: jnb 7E575Ch
007E5753: and var_0000039C, 00000000h
007E575A: jmp 7E5767h
007E575C: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E5761: mov var_0000039C, eax
007E5767: mov eax, var_00000164
007E576D: mov ecx, [008F2374h]
007E5773: lea eax, [ecx+eax*4]
007E5776: mov var_000003A0, eax
007E577C: jmp 007E5814h
007E5781: lea eax, var_2C
007E5784: push eax
007E5785: mov eax, [ebp+08h]
007E5788: mov eax, [eax]
007E578A: push [ebp+08h]
007E578D: call [eax+000001C0h]
007E5793: fclex 
007E5795: mov var_00000160, eax
007E579B: cmp var_00000160, 00000000h
007E57A2: jnl 7E57C4h
007E57A4: push 000001C0h
007E57A9: push 0044420Ch
007E57AE: push [ebp+08h]
007E57B1: push var_00000160
007E57B7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E57BC: mov var_000003A4, eax
007E57C2: jmp 7E57CBh
007E57C4: and var_000003A4, 00000000h
007E57CB: push var_2C
007E57CE: call 004109DCh ; Val(arg_1)
007E57D3: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E57D8: dec eax
007E57D9: mov var_00000164, eax
007E57DF: cmp var_00000164, 0000FF4Bh
007E57E9: jnb 7E57F4h
007E57EB: and var_000003A8, 00000000h
007E57F2: jmp 7E57FFh
007E57F4: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E57F9: mov var_000003A8, eax
007E57FF: mov eax, var_00000164
007E5805: mov ecx, [008F2374h]
007E580B: lea eax, [ecx+eax*4]
007E580E: mov var_000003A0, eax
007E5814: push 0044A87Ch
007E5819: push 00000000h
007E581B: push 00000003h
007E581D: mov eax, var_000003A0
007E5823: mov eax, [eax]
007E5825: mov ecx, var_000003A0
007E582B: mov ecx, [ecx]
007E582D: mov ecx, [ecx]
007E582F: push eax
007E5830: call [ecx+00000330h]
007E5836: push eax
007E5837: lea eax, var_54
007E583A: push eax
007E583B: call 00410A84h ; Set (object)
007E5840: push eax
007E5841: lea eax, var_78
007E5844: push eax
007E5845: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E584A: add esp, 00000010h
007E584D: push eax
007E584E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E5853: push eax
007E5854: lea eax, var_58
007E5857: push eax
007E5858: call 00410A84h ; Set (object)
007E585D: mov var_00000168, eax
007E5863: mov var_80, 00000003h
007E586A: mov var_00000088, 00000002h
007E5874: lea eax, var_5C
007E5877: push eax
007E5878: lea eax, var_00000088
007E587E: push eax
007E587F: mov eax, var_00000168
007E5885: mov eax, [eax]
007E5887: push var_00000168
007E588D: call [eax+24h]
007E5890: fclex 
007E5892: mov var_0000016C, eax
007E5898: cmp var_0000016C, 00000000h
007E589F: jnl 7E58C1h
007E58A1: push 00000024h
007E58A3: push 0044A87Ch
007E58A8: push var_00000168
007E58AE: push var_0000016C
007E58B4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E58B9: mov var_000003AC, eax
007E58BF: jmp 7E58C8h
007E58C1: and var_000003AC, 00000000h
007E58C8: mov eax, var_5C
007E58CB: mov var_00000170, eax
007E58D1: push 004503B4h ; Progress: Loading...
007E58D6: mov eax, var_00000170
007E58DC: mov eax, [eax]
007E58DE: push var_00000170
007E58E4: call [eax+00000080h]
007E58EA: fclex 
007E58EC: mov var_00000174, eax
007E58F2: cmp var_00000174, 00000000h
007E58F9: jnl 7E591Eh
007E58FB: push 00000080h
007E5900: push 0044A88Ch
007E5905: push var_00000170
007E590B: push var_00000174
007E5911: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E5916: mov var_000003B0, eax
007E591C: jmp 7E5925h
007E591E: and var_000003B0, 00000000h
007E5925: lea ecx, var_2C
007E5928: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E592D: lea eax, var_5C
007E5930: push eax
007E5931: lea eax, var_58
007E5934: push eax
007E5935: lea eax, var_54
007E5938: push eax
007E5939: push 00000003h
007E593B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E5940: add esp, 00000010h
007E5943: lea eax, var_00000088
007E5949: push eax
007E594A: lea eax, var_78
007E594D: push eax
007E594E: push 00000002h
007E5950: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E5955: add esp, 0000000Ch
007E5958: call 004109C4h ; msvbvm60.dll.__vbaExitProc
007E595D: wait 
007E595E: push 007E5A0Bh
007E5963: jmp 007E5A0Ah
007E5968: lea eax, var_50
007E596B: push eax
007E596C: lea eax, var_4C
007E596F: push eax
007E5970: lea eax, var_48
007E5973: push eax
007E5974: lea eax, var_44
007E5977: push eax
007E5978: lea eax, var_40
007E597B: push eax
007E597C: lea eax, var_3C
007E597F: push eax
007E5980: lea eax, var_38
007E5983: push eax
007E5984: lea eax, var_34
007E5987: push eax
007E5988: lea eax, var_30
007E598B: push eax
007E598C: lea eax, var_2C
007E598F: push eax
007E5990: push 0000000Ah
007E5992: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E5997: add esp, 0000002Ch
007E599A: lea eax, var_68
007E599D: push eax
007E599E: lea eax, var_64
007E59A1: push eax
007E59A2: lea eax, var_60
007E59A5: push eax
007E59A6: lea eax, var_5C
007E59A9: push eax
007E59AA: lea eax, var_58
007E59AD: push eax
007E59AE: lea eax, var_54
007E59B1: push eax
007E59B2: push 00000006h
007E59B4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E59B9: add esp, 0000001Ch
007E59BC: lea eax, var_000000E8
007E59C2: push eax
007E59C3: lea eax, var_000000D8
007E59C9: push eax
007E59CA: lea eax, var_000000C8
007E59D0: push eax
007E59D1: lea eax, var_000000B8
007E59D7: push eax
007E59D8: lea eax, var_000000A8
007E59DE: push eax
007E59DF: lea eax, var_00000098
007E59E5: push eax
007E59E6: lea eax, var_00000088
007E59EC: push eax
007E59ED: lea eax, var_78
007E59F0: push eax
007E59F1: push 00000008h
007E59F3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E59F8: add esp, 00000024h
007E59FB: lea eax, var_000000EC
007E5A01: push eax
007E5A02: push 00000000h
007E5A04: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
007E5A09: ret 
End Sub

Private sub lstFileMgrFiles__7E74A7
007E74A7: push ebp
007E74A8: mov ebp, esp
007E74AA: sub esp, 0000000Ch
007E74AD: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007E74B2: mov eax, fs:[00h]
007E74B8: push eax
007E74B9: mov fs:[00000000h], esp
007E74C0: mov eax, 000000B4h
007E74C5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E74CA: push ebx
007E74CB: push esi
007E74CC: push edi
007E74CD: mov var_0C, esp
007E74D0: mov var_08, 00409A88h
007E74D7: mov eax, [ebp+08h]
007E74DA: and eax, 00000001h
007E74DD: mov var_04, eax
007E74E0: mov eax, [ebp+08h]
007E74E3: and al, FEh
007E74E5: mov [ebp+08h], eax
007E74E8: mov eax, [ebp+08h]
007E74EB: mov eax, [eax]
007E74ED: push [ebp+08h]
007E74F0: call [eax+04h]
007E74F3: mov eax, [ebp+0Ch]
007E74F6: mov eax, [eax]
007E74F8: mov var_00000098, eax
007E74FE: lea eax, var_20
007E7501: push eax
007E7502: mov eax, var_00000098
007E7508: mov eax, [eax]
007E750A: push var_00000098
007E7510: call [eax+2Ch]
007E7513: fclex 
007E7515: mov var_0000009C, eax
007E751B: cmp var_0000009C, 00000000h
007E7522: jnl 7E7544h
007E7524: push 0000002Ch
007E7526: push 004503E0h
007E752B: push var_00000098
007E7531: push var_0000009C
007E7537: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E753C: mov var_000000BC, eax
007E7542: jmp 7E754Bh
007E7544: and var_000000BC, 00000000h
007E754B: mov eax, var_20
007E754E: mov var_000000A0, eax
007E7554: lea eax, var_00000094
007E755A: push eax
007E755B: mov eax, var_000000A0
007E7561: mov eax, [eax]
007E7563: push var_000000A0
007E7569: call [eax+20h]
007E756C: fclex 
007E756E: mov var_000000A4, eax
007E7574: cmp var_000000A4, 00000000h
007E757B: jnl 7E759Dh
007E757D: push 00000020h
007E757F: push 004503F0h
007E7584: push var_000000A0
007E758A: push var_000000A4
007E7590: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E7595: mov var_000000C0, eax
007E759B: jmp 7E75A4h
007E759D: and var_000000C0, 00000000h
007E75A4: mov eax, var_00000094
007E75AA: mov var_000000AC, eax
007E75B0: mov var_000000A8, 00000001h
007E75BA: mov var_18, 00000001h
007E75C1: lea ecx, var_20
007E75C4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E75C9: jmp 7E75DDh
007E75CB: mov eax, var_18
007E75CE: add eax, var_000000A8
007E75D4: jo 007E777Bh
007E75DA: mov var_18, eax
007E75DD: mov eax, var_18
007E75E0: cmp eax, var_000000AC
007E75E6: jnle 007E7722h
007E75EC: mov var_58, 80020004h
007E75F3: mov var_60, 0000000Ah
007E75FA: mov var_48, 80020004h
007E7601: mov var_50, 0000000Ah
007E7608: mov var_38, 80020004h
007E760F: mov var_40, 0000000Ah
007E7616: mov eax, [ebp+0Ch]
007E7619: mov eax, [eax]
007E761B: mov var_00000098, eax
007E7621: lea eax, var_20
007E7624: push eax
007E7625: mov eax, var_00000098
007E762B: mov eax, [eax]
007E762D: push var_00000098
007E7633: call [eax+2Ch]
007E7636: fclex 
007E7638: mov var_0000009C, eax
007E763E: cmp var_0000009C, 00000000h
007E7645: jnl 7E7667h
007E7647: push 0000002Ch
007E7649: push 004503E0h
007E764E: push var_00000098
007E7654: push var_0000009C
007E765A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E765F: mov var_000000C4, eax
007E7665: jmp 7E766Eh
007E7667: and var_000000C4, 00000000h
007E766E: mov eax, var_20
007E7671: mov var_000000A0, eax
007E7677: lea eax, var_1C
007E767A: push eax
007E767B: push var_18
007E767E: mov eax, var_000000A0
007E7684: mov eax, [eax]
007E7686: push var_000000A0
007E768C: call [eax+1Ch]
007E768F: fclex 
007E7691: mov var_000000A4, eax
007E7697: cmp var_000000A4, 00000000h
007E769E: jnl 7E76C0h
007E76A0: push 0000001Ch
007E76A2: push 004503F0h
007E76A7: push var_000000A0
007E76AD: push var_000000A4
007E76B3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E76B8: mov var_000000C8, eax
007E76BE: jmp 7E76C7h
007E76C0: and var_000000C8, 00000000h
007E76C7: mov eax, var_1C
007E76CA: mov var_000000B8, eax
007E76D0: and var_1C, 00000000h
007E76D4: mov eax, var_000000B8
007E76DA: mov var_28, eax
007E76DD: mov var_30, 00000008h
007E76E4: lea eax, var_60
007E76E7: push eax
007E76E8: lea eax, var_50
007E76EB: push eax
007E76EC: lea eax, var_40
007E76EF: push eax
007E76F0: push 00000000h
007E76F2: lea eax, var_30
007E76F5: push eax
007E76F6: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007E76FB: lea ecx, var_20
007E76FE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E7703: lea eax, var_60
007E7706: push eax
007E7707: lea eax, var_50
007E770A: push eax
007E770B: lea eax, var_40
007E770E: push eax
007E770F: lea eax, var_30
007E7712: push eax
007E7713: push 00000004h
007E7715: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E771A: add esp, 00000014h
007E771D: jmp 007E75CBh
007E7722: mov var_04, 00000000h
007E7729: push 007E775Ch
007E772E: jmp 7E775Bh
007E7730: lea ecx, var_1C
007E7733: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007E7738: lea ecx, var_20
007E773B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E7740: lea eax, var_60
007E7743: push eax
007E7744: lea eax, var_50
007E7747: push eax
007E7748: lea eax, var_40
007E774B: push eax
007E774C: lea eax, var_30
007E774F: push eax
007E7750: push 00000004h
007E7752: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E7757: add esp, 00000014h
007E775A: ret 
End Sub

Private sub mnuDiskar__7E7780
007E7780: push ebp
007E7781: mov ebp, esp
007E7783: sub esp, 00000018h
007E7786: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007E778B: mov eax, fs:[00h]
007E7791: push eax
007E7792: mov fs:[00000000h], esp
007E7799: mov eax, 00000124h
007E779E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E77A3: push ebx
007E77A4: push esi
007E77A5: push edi
007E77A6: mov var_18, esp
007E77A9: mov var_14, 00409A98h
007E77B0: mov eax, [ebp+08h]
007E77B3: and eax, 00000001h
007E77B6: mov var_10, eax
007E77B9: mov eax, [ebp+08h]
007E77BC: and al, FEh
007E77BE: mov [ebp+08h], eax
007E77C1: mov var_0C, 00000000h
007E77C8: mov eax, [ebp+08h]
007E77CB: mov eax, [eax]
007E77CD: push [ebp+08h]
007E77D0: call [eax+04h]
007E77D3: mov var_04, 00000001h
007E77DA: mov var_04, 00000002h
007E77E1: push FFFFFFFFh
007E77E3: call 00410A60h ; On Error ...
007E77E8: mov var_04, 00000003h
007E77EF: mov eax, [ebp+0Ch]
007E77F2: mov ax, [eax]
007E77F5: mov var_000000F8, ax
007E77FC: movsx eax, word ptr var_000000F8
007E7803: mov var_00000118, eax
007E7809: cmp var_00000118, 00000000h
007E7810: jz 7E7836h
007E7812: cmp var_00000118, 00000001h
007E7819: jz 007E7A06h
007E781F: cmp var_00000118, 00000003h
007E7826: jz 007E7C13h
007E782C: jmp 007E8308h
007E7831: jmp 007E8308h
007E7836: mov var_04, 00000005h
007E783D: and var_00000098, 00000000h
007E7844: mov var_000000A0, 00000008h
007E784E: push 00000010h
007E7850: pop eax
007E7851: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E7856: lea esi, var_000000A0
007E785C: mov edi, esp
007E785E: movsd 
007E785F: movsd 
007E7860: movsd 
007E7861: movsd 
007E7862: push 8001000Bh
007E7867: mov eax, [ebp+08h]
007E786A: mov eax, [eax]
007E786C: push [ebp+08h]
007E786F: call [eax+00000324h]
007E7875: push eax
007E7876: lea eax, var_40
007E7879: push eax
007E787A: call 00410A84h ; Set (object)
007E787F: push eax
007E7880: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007E7885: lea ecx, var_40
007E7888: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E788D: mov var_04, 00000006h
007E7894: push 004412BCh
007E7899: push 00000000h
007E789B: push 00000007h
007E789D: mov eax, [ebp+08h]
007E78A0: mov eax, [eax]
007E78A2: push [ebp+08h]
007E78A5: call [eax+0000031Ch]
007E78AB: push eax
007E78AC: lea eax, var_40
007E78AF: push eax
007E78B0: call 00410A84h ; Set (object)
007E78B5: push eax
007E78B6: lea eax, var_5C
007E78B9: push eax
007E78BA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E78BF: add esp, 00000010h
007E78C2: push eax
007E78C3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E78C8: push eax
007E78C9: lea eax, var_44
007E78CC: push eax
007E78CD: call 00410A84h ; Set (object)
007E78D2: mov var_000000E4, eax
007E78D8: mov eax, var_000000E4
007E78DE: mov eax, [eax]
007E78E0: push var_000000E4
007E78E6: call [eax+2Ch]
007E78E9: fclex 
007E78EB: mov var_000000E8, eax
007E78F1: cmp var_000000E8, 00000000h
007E78F8: jnl 7E791Ah
007E78FA: push 0000002Ch
007E78FC: push 004412BCh
007E7901: push var_000000E4
007E7907: push var_000000E8
007E790D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E7912: mov var_0000011C, eax
007E7918: jmp 7E7921h
007E791A: and var_0000011C, 00000000h
007E7921: lea eax, var_44
007E7924: push eax
007E7925: lea eax, var_40
007E7928: push eax
007E7929: push 00000002h
007E792B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E7930: add esp, 0000000Ch
007E7933: lea ecx, var_5C
007E7936: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E793B: mov var_04, 00000007h
007E7942: lea eax, var_2C
007E7945: push eax
007E7946: mov eax, [ebp+08h]
007E7949: mov eax, [eax]
007E794B: push [ebp+08h]
007E794E: call [eax+000001C0h]
007E7954: fclex 
007E7956: mov var_000000E4, eax
007E795C: cmp var_000000E4, 00000000h
007E7963: jnl 7E7985h
007E7965: push 000001C0h
007E796A: push 0044420Ch
007E796F: push [ebp+08h]
007E7972: push var_000000E4
007E7978: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E797D: mov var_00000120, eax
007E7983: jmp 7E798Ch
007E7985: and var_00000120, 00000000h
007E798C: push var_2C
007E798F: call 004109DCh ; Val(arg_1)
007E7994: fstp real8 ptr var_000000E0
007E799A: push 00000000h
007E799C: push FFFFFFFFh
007E799E: push 00000000h
007E79A0: push 00000000h
007E79A2: lea eax, var_00000090
007E79A8: push eax
007E79A9: push 00000010h
007E79AB: push 00000880h
007E79B0: call 00410946h ; ReDim
007E79B5: add esp, 0000001Ch
007E79B8: mov edx, 0043D4D0h ; x16
007E79BD: lea ecx, var_30
007E79C0: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007E79C5: lea eax, var_00000090
007E79CB: push eax
007E79CC: lea eax, var_30
007E79CF: push eax
007E79D0: fld real8 ptr var_000000E0
007E79D6: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007E79DB: push eax
007E79DC: call 007A6910h
007E79E1: lea eax, var_00000090
007E79E7: push eax
007E79E8: push 00000000h
007E79EA: call 00410934h ; Erase
007E79EF: lea eax, var_30
007E79F2: push eax
007E79F3: lea eax, var_2C
007E79F6: push eax
007E79F7: push 00000002h
007E79F9: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E79FE: add esp, 0000000Ch
007E7A01: jmp 007E8308h
007E7A06: mov var_04, 00000009h
007E7A0D: lea eax, var_2C
007E7A10: push eax
007E7A11: mov eax, [ebp+08h]
007E7A14: mov eax, [eax]
007E7A16: push [ebp+08h]
007E7A19: call [eax+000001C0h]
007E7A1F: fclex 
007E7A21: mov var_000000E4, eax
007E7A27: cmp var_000000E4, 00000000h
007E7A2E: jnl 7E7A50h
007E7A30: push 000001C0h
007E7A35: push 0044420Ch
007E7A3A: push [ebp+08h]
007E7A3D: push var_000000E4
007E7A43: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E7A48: mov var_00000124, eax
007E7A4E: jmp 7E7A57h
007E7A50: and var_00000124, 00000000h
007E7A57: push var_2C
007E7A5A: call 004109DCh ; Val(arg_1)
007E7A5F: fstp real8 ptr var_000000E0
007E7A65: push 00000000h
007E7A67: push 00000000h
007E7A69: push 00000001h
007E7A6B: push 00000000h
007E7A6D: lea eax, var_00000090
007E7A73: push eax
007E7A74: push 00000010h
007E7A76: push 00000880h
007E7A7B: call 00410946h ; ReDim
007E7A80: add esp, 0000001Ch
007E7A83: push 004412DCh
007E7A88: push 00000000h
007E7A8A: push 0000000Dh
007E7A8C: mov eax, [ebp+08h]
007E7A8F: mov eax, [eax]
007E7A91: push [ebp+08h]
007E7A94: call [eax+0000031Ch]
007E7A9A: push eax
007E7A9B: lea eax, var_44
007E7A9E: push eax
007E7A9F: call 00410A84h ; Set (object)
007E7AA4: push eax
007E7AA5: lea eax, var_6C
007E7AA8: push eax
007E7AA9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E7AAE: add esp, 00000010h
007E7AB1: push eax
007E7AB2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E7AB7: push eax
007E7AB8: lea eax, var_48
007E7ABB: push eax
007E7ABC: call 00410A84h ; Set (object)
007E7AC1: mov var_000000E8, eax
007E7AC7: lea eax, var_30
007E7ACA: push eax
007E7ACB: mov eax, var_000000E8
007E7AD1: mov eax, [eax]
007E7AD3: push var_000000E8
007E7AD9: call [eax+24h]
007E7ADC: fclex 
007E7ADE: mov var_000000EC, eax
007E7AE4: cmp var_000000EC, 00000000h
007E7AEB: jnl 7E7B0Dh
007E7AED: push 00000024h
007E7AEF: push 004412DCh
007E7AF4: push var_000000E8
007E7AFA: push var_000000EC
007E7B00: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E7B05: mov var_00000128, eax
007E7B0B: jmp 7E7B14h
007E7B0D: and var_00000128, 00000000h
007E7B14: push 00000000h
007E7B16: push 8001000Bh
007E7B1B: mov eax, [ebp+08h]
007E7B1E: mov eax, [eax]
007E7B20: push [ebp+08h]
007E7B23: call [eax+00000324h]
007E7B29: push eax
007E7B2A: lea eax, var_40
007E7B2D: push eax
007E7B2E: call 00410A84h ; Set (object)
007E7B33: push eax
007E7B34: lea eax, var_5C
007E7B37: push eax
007E7B38: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E7B3D: add esp, 00000010h
007E7B40: push eax
007E7B41: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E7B46: mov edx, eax
007E7B48: lea ecx, var_34
007E7B4B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E7B50: push eax
007E7B51: push var_30
007E7B54: call 00410A18h ; &
007E7B59: mov edx, eax
007E7B5B: lea ecx, var_38
007E7B5E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E7B63: push eax
007E7B64: push 00441B28h
007E7B69: call 00410A18h ; &
007E7B6E: mov var_74, eax
007E7B71: mov var_7C, 00000008h
007E7B78: lea esi, var_7C
007E7B7B: push 00000000h
007E7B7D: push var_00000090
007E7B83: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E7B88: mov ecx, eax
007E7B8A: mov edx, esi
007E7B8C: call 00410940h ; msvbvm60.dll.__vbaVarZero
007E7B91: mov edx, 0043D8F4h ; x103
007E7B96: lea ecx, var_3C
007E7B99: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007E7B9E: lea eax, var_00000090
007E7BA4: push eax
007E7BA5: lea eax, var_3C
007E7BA8: push eax
007E7BA9: fld real8 ptr var_000000E0
007E7BAF: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007E7BB4: push eax
007E7BB5: call 007A6910h
007E7BBA: lea eax, var_00000090
007E7BC0: push eax
007E7BC1: push 00000000h
007E7BC3: call 00410934h ; Erase
007E7BC8: lea eax, var_3C
007E7BCB: push eax
007E7BCC: lea eax, var_38
007E7BCF: push eax
007E7BD0: lea eax, var_30
007E7BD3: push eax
007E7BD4: lea eax, var_34
007E7BD7: push eax
007E7BD8: lea eax, var_2C
007E7BDB: push eax
007E7BDC: push 00000005h
007E7BDE: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E7BE3: add esp, 00000018h
007E7BE6: lea eax, var_48
007E7BE9: push eax
007E7BEA: lea eax, var_44
007E7BED: push eax
007E7BEE: lea eax, var_40
007E7BF1: push eax
007E7BF2: push 00000003h
007E7BF4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E7BF9: add esp, 00000010h
007E7BFC: lea eax, var_6C
007E7BFF: push eax
007E7C00: lea eax, var_5C
007E7C03: push eax
007E7C04: push 00000002h
007E7C06: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E7C0B: add esp, 0000000Ch
007E7C0E: jmp 007E8308h
007E7C13: mov var_04, 0000000Bh
007E7C1A: mov var_00000084, 80020004h
007E7C24: mov var_0000008C, 0000000Ah
007E7C2E: mov var_74, 80020004h
007E7C35: mov var_7C, 0000000Ah
007E7C3C: mov var_64, 80020004h
007E7C43: mov var_6C, 0000000Ah
007E7C4A: mov var_00000098, 00450404h ; Do you really want delete the selected item(s)?
007E7C54: mov var_000000A0, 00000008h
007E7C5E: lea edx, var_000000A0
007E7C64: lea ecx, var_5C
007E7C67: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007E7C6C: lea eax, var_0000008C
007E7C72: push eax
007E7C73: lea eax, var_7C
007E7C76: push eax
007E7C77: lea eax, var_6C
007E7C7A: push eax
007E7C7B: push 00000034h
007E7C7D: lea eax, var_5C
007E7C80: push eax
007E7C81: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007E7C86: sub eax, 00000006h
007E7C89: neg eax
007E7C8B: sbb eax, eax
007E7C8D: inc eax
007E7C8E: neg eax
007E7C90: mov var_000000E4, ax
007E7C97: lea eax, var_0000008C
007E7C9D: push eax
007E7C9E: lea eax, var_7C
007E7CA1: push eax
007E7CA2: lea eax, var_6C
007E7CA5: push eax
007E7CA6: lea eax, var_5C
007E7CA9: push eax
007E7CAA: push 00000004h
007E7CAC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E7CB1: add esp, 00000014h
007E7CB4: movsx eax, word ptr var_000000E4
007E7CBB: test eax, eax
007E7CBD: jz 007E8308h
007E7CC3: mov var_04, 0000000Ch
007E7CCA: push 004412BCh
007E7CCF: push 00000000h
007E7CD1: push 00000007h
007E7CD3: mov eax, [ebp+08h]
007E7CD6: mov eax, [eax]
007E7CD8: push [ebp+08h]
007E7CDB: call [eax+0000031Ch]
007E7CE1: push eax
007E7CE2: lea eax, var_40
007E7CE5: push eax
007E7CE6: call 00410A84h ; Set (object)
007E7CEB: push eax
007E7CEC: lea eax, var_5C
007E7CEF: push eax
007E7CF0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E7CF5: add esp, 00000010h
007E7CF8: push eax
007E7CF9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E7CFE: push eax
007E7CFF: lea eax, var_44
007E7D02: push eax
007E7D03: call 00410A84h ; Set (object)
007E7D08: mov var_000000E4, eax
007E7D0E: lea eax, var_000000D8
007E7D14: push eax
007E7D15: mov eax, var_000000E4
007E7D1B: mov eax, [eax]
007E7D1D: push var_000000E4
007E7D23: call [eax+1Ch]
007E7D26: fclex 
007E7D28: mov var_000000E8, eax
007E7D2E: cmp var_000000E8, 00000000h
007E7D35: jnl 7E7D57h
007E7D37: push 0000001Ch
007E7D39: push 004412BCh
007E7D3E: push var_000000E4
007E7D44: push var_000000E8
007E7D4A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E7D4F: mov var_0000012C, eax
007E7D55: jmp 7E7D5Eh
007E7D57: and var_0000012C, 00000000h
007E7D5E: mov eax, var_000000D8
007E7D64: mov var_00000100, eax
007E7D6A: mov var_000000FC, 00000001h
007E7D74: mov var_24, 00000001h
007E7D7B: lea eax, var_44
007E7D7E: push eax
007E7D7F: lea eax, var_40
007E7D82: push eax
007E7D83: push 00000002h
007E7D85: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E7D8A: add esp, 0000000Ch
007E7D8D: lea ecx, var_5C
007E7D90: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E7D95: jmp 7E7DA9h
007E7D97: mov eax, var_24
007E7D9A: add eax, var_000000FC
007E7DA0: jo 007E83A3h
007E7DA6: mov var_24, eax
007E7DA9: mov eax, var_24
007E7DAC: cmp eax, var_00000100
007E7DB2: jnle 007E80D7h
007E7DB8: mov var_04, 0000000Dh
007E7DBF: push 004412BCh
007E7DC4: push 00000000h
007E7DC6: push 00000007h
007E7DC8: mov eax, [ebp+08h]
007E7DCB: mov eax, [eax]
007E7DCD: push [ebp+08h]
007E7DD0: call [eax+0000031Ch]
007E7DD6: push eax
007E7DD7: lea eax, var_40
007E7DDA: push eax
007E7DDB: call 00410A84h ; Set (object)
007E7DE0: push eax
007E7DE1: lea eax, var_5C
007E7DE4: push eax
007E7DE5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E7DEA: add esp, 00000010h
007E7DED: push eax
007E7DEE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E7DF3: push eax
007E7DF4: lea eax, var_44
007E7DF7: push eax
007E7DF8: call 00410A84h ; Set (object)
007E7DFD: mov var_000000E4, eax
007E7E03: lea eax, var_24
007E7E06: mov var_00000098, eax
007E7E0C: mov var_000000A0, 00004003h
007E7E16: lea eax, var_48
007E7E19: push eax
007E7E1A: lea eax, var_000000A0
007E7E20: push eax
007E7E21: mov eax, var_000000E4
007E7E27: mov eax, [eax]
007E7E29: push var_000000E4
007E7E2F: call [eax+24h]
007E7E32: fclex 
007E7E34: mov var_000000E8, eax
007E7E3A: cmp var_000000E8, 00000000h
007E7E41: jnl 7E7E63h
007E7E43: push 00000024h
007E7E45: push 004412BCh
007E7E4A: push var_000000E4
007E7E50: push var_000000E8
007E7E56: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E7E5B: mov var_00000130, eax
007E7E61: jmp 7E7E6Ah
007E7E63: and var_00000130, 00000000h
007E7E6A: mov eax, var_48
007E7E6D: mov var_000000EC, eax
007E7E73: lea eax, var_000000D4
007E7E79: push eax
007E7E7A: mov eax, var_000000EC
007E7E80: mov eax, [eax]
007E7E82: push var_000000EC
007E7E88: call [eax+5Ch]
007E7E8B: fclex 
007E7E8D: mov var_000000F0, eax
007E7E93: cmp var_000000F0, 00000000h
007E7E9A: jnl 7E7EBCh
007E7E9C: push 0000005Ch
007E7E9E: push 004412DCh
007E7EA3: push var_000000EC
007E7EA9: push var_000000F0
007E7EAF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E7EB4: mov var_00000134, eax
007E7EBA: jmp 7E7EC3h
007E7EBC: and var_00000134, 00000000h
007E7EC3: xor eax, eax
007E7EC5: cmp word ptr var_000000D4, FFFFh
007E7ECD: setz al
007E7ED0: neg eax
007E7ED2: mov var_000000F4, ax
007E7ED9: lea eax, var_48
007E7EDC: push eax
007E7EDD: lea eax, var_44
007E7EE0: push eax
007E7EE1: lea eax, var_40
007E7EE4: push eax
007E7EE5: push 00000003h
007E7EE7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E7EEC: add esp, 00000010h
007E7EEF: lea ecx, var_5C
007E7EF2: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E7EF7: movsx eax, word ptr var_000000F4
007E7EFE: test eax, eax
007E7F00: jz 007E80CBh
007E7F06: mov var_04, 0000000Eh
007E7F0D: push 004412BCh
007E7F12: push 00000000h
007E7F14: push 00000007h
007E7F16: mov eax, [ebp+08h]
007E7F19: mov eax, [eax]
007E7F1B: push [ebp+08h]
007E7F1E: call [eax+0000031Ch]
007E7F24: push eax
007E7F25: lea eax, var_44
007E7F28: push eax
007E7F29: call 00410A84h ; Set (object)
007E7F2E: push eax
007E7F2F: lea eax, var_6C
007E7F32: push eax
007E7F33: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E7F38: add esp, 00000010h
007E7F3B: push eax
007E7F3C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E7F41: push eax
007E7F42: lea eax, var_48
007E7F45: push eax
007E7F46: call 00410A84h ; Set (object)
007E7F4B: mov var_000000E4, eax
007E7F51: lea eax, var_24
007E7F54: mov var_00000098, eax
007E7F5A: mov var_000000A0, 00004003h
007E7F64: lea eax, var_4C
007E7F67: push eax
007E7F68: lea eax, var_000000A0
007E7F6E: push eax
007E7F6F: mov eax, var_000000E4
007E7F75: mov eax, [eax]
007E7F77: push var_000000E4
007E7F7D: call [eax+24h]
007E7F80: fclex 
007E7F82: mov var_000000E8, eax
007E7F88: cmp var_000000E8, 00000000h
007E7F8F: jnl 7E7FB1h
007E7F91: push 00000024h
007E7F93: push 004412BCh
007E7F98: push var_000000E4
007E7F9E: push var_000000E8
007E7FA4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E7FA9: mov var_00000138, eax
007E7FAF: jmp 7E7FB8h
007E7FB1: and var_00000138, 00000000h
007E7FB8: mov eax, var_4C
007E7FBB: mov var_000000EC, eax
007E7FC1: lea eax, var_30
007E7FC4: push eax
007E7FC5: mov eax, var_000000EC
007E7FCB: mov eax, [eax]
007E7FCD: push var_000000EC
007E7FD3: call [eax+24h]
007E7FD6: fclex 
007E7FD8: mov var_000000F0, eax
007E7FDE: cmp var_000000F0, 00000000h
007E7FE5: jnl 7E8007h
007E7FE7: push 00000024h
007E7FE9: push 004412DCh
007E7FEE: push var_000000EC
007E7FF4: push var_000000F0
007E7FFA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E7FFF: mov var_0000013C, eax
007E8005: jmp 7E800Eh
007E8007: and var_0000013C, 00000000h
007E800E: push var_28
007E8011: push 00000000h
007E8013: push 8001000Bh
007E8018: mov eax, [ebp+08h]
007E801B: mov eax, [eax]
007E801D: push [ebp+08h]
007E8020: call [eax+00000324h]
007E8026: push eax
007E8027: lea eax, var_40
007E802A: push eax
007E802B: call 00410A84h ; Set (object)
007E8030: push eax
007E8031: lea eax, var_5C
007E8034: push eax
007E8035: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E803A: add esp, 00000010h
007E803D: push eax
007E803E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E8043: mov edx, eax
007E8045: lea ecx, var_2C
007E8048: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E804D: push eax
007E804E: call 00410A18h ; &
007E8053: mov edx, eax
007E8055: lea ecx, var_34
007E8058: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E805D: push eax
007E805E: push var_30
007E8061: call 00410A18h ; &
007E8066: mov edx, eax
007E8068: lea ecx, var_38
007E806B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E8070: push eax
007E8071: push 004413D8h
007E8076: call 00410A18h ; &
007E807B: mov edx, eax
007E807D: lea ecx, var_28
007E8080: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E8085: lea eax, var_38
007E8088: push eax
007E8089: lea eax, var_30
007E808C: push eax
007E808D: lea eax, var_34
007E8090: push eax
007E8091: lea eax, var_2C
007E8094: push eax
007E8095: push 00000004h
007E8097: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E809C: add esp, 00000014h
007E809F: lea eax, var_4C
007E80A2: push eax
007E80A3: lea eax, var_48
007E80A6: push eax
007E80A7: lea eax, var_44
007E80AA: push eax
007E80AB: lea eax, var_40
007E80AE: push eax
007E80AF: push 00000004h
007E80B1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E80B6: add esp, 00000014h
007E80B9: lea eax, var_6C
007E80BC: push eax
007E80BD: lea eax, var_5C
007E80C0: push eax
007E80C1: push 00000002h
007E80C3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E80C8: add esp, 0000000Ch
007E80CB: mov var_04, 00000010h
007E80D2: jmp 007E7D97h
007E80D7: mov var_04, 00000011h
007E80DE: lea eax, var_2C
007E80E1: push eax
007E80E2: mov eax, [ebp+08h]
007E80E5: mov eax, [eax]
007E80E7: push [ebp+08h]
007E80EA: call [eax+000001C0h]
007E80F0: fclex 
007E80F2: mov var_000000E4, eax
007E80F8: cmp var_000000E4, 00000000h
007E80FF: jnl 7E8121h
007E8101: push 000001C0h
007E8106: push 0044420Ch
007E810B: push [ebp+08h]
007E810E: push var_000000E4
007E8114: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E8119: mov var_00000140, eax
007E811F: jmp 7E8128h
007E8121: and var_00000140, 00000000h
007E8128: push var_2C
007E812B: call 004109DCh ; Val(arg_1)
007E8130: fstp real8 ptr var_000000E0
007E8136: push 00000000h
007E8138: push 00000000h
007E813A: push 00000001h
007E813C: push 00000000h
007E813E: lea eax, var_00000090
007E8144: push eax
007E8145: push 00000010h
007E8147: push 00000880h
007E814C: call 00410946h ; ReDim
007E8151: add esp, 0000001Ch
007E8154: lea eax, var_28
007E8157: mov var_00000098, eax
007E815D: mov var_000000A0, 00004008h
007E8167: lea esi, var_000000A0
007E816D: push 00000000h
007E816F: push var_00000090
007E8175: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E817A: mov ecx, eax
007E817C: mov edx, esi
007E817E: call 00410940h ; msvbvm60.dll.__vbaVarZero
007E8183: mov edx, 0043DA60h ; x125
007E8188: lea ecx, var_30
007E818B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007E8190: lea eax, var_00000090
007E8196: push eax
007E8197: lea eax, var_30
007E819A: push eax
007E819B: fld real8 ptr var_000000E0
007E81A1: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007E81A6: push eax
007E81A7: call 007A6910h
007E81AC: lea eax, var_00000090
007E81B2: push eax
007E81B3: push 00000000h
007E81B5: call 00410934h ; Erase
007E81BA: lea eax, var_30
007E81BD: push eax
007E81BE: lea eax, var_2C
007E81C1: push eax
007E81C2: push 00000002h
007E81C4: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E81C9: add esp, 0000000Ch
007E81CC: mov var_04, 00000012h
007E81D3: push 000001F4h
007E81D8: call 007D98D8h
007E81DD: mov var_04, 00000013h
007E81E4: lea eax, var_2C
007E81E7: push eax
007E81E8: mov eax, [ebp+08h]
007E81EB: mov eax, [eax]
007E81ED: push [ebp+08h]
007E81F0: call [eax+000001C0h]
007E81F6: fclex 
007E81F8: mov var_000000E4, eax
007E81FE: cmp var_000000E4, 00000000h
007E8205: jnl 7E8227h
007E8207: push 000001C0h
007E820C: push 0044420Ch
007E8211: push [ebp+08h]
007E8214: push var_000000E4
007E821A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E821F: mov var_00000144, eax
007E8225: jmp 7E822Eh
007E8227: and var_00000144, 00000000h
007E822E: push var_2C
007E8231: call 004109DCh ; Val(arg_1)
007E8236: fstp real8 ptr var_000000E0
007E823C: push 00000000h
007E823E: push 00000000h
007E8240: push 00000001h
007E8242: push 00000000h
007E8244: lea eax, var_00000090
007E824A: push eax
007E824B: push 00000010h
007E824D: push 00000880h
007E8252: call 00410946h ; ReDim
007E8257: add esp, 0000001Ch
007E825A: push 00000000h
007E825C: push 8001000Bh
007E8261: mov eax, [ebp+08h]
007E8264: mov eax, [eax]
007E8266: push [ebp+08h]
007E8269: call [eax+00000324h]
007E826F: push eax
007E8270: lea eax, var_40
007E8273: push eax
007E8274: call 00410A84h ; Set (object)
007E8279: push eax
007E827A: lea eax, var_5C
007E827D: push eax
007E827E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E8283: add esp, 00000010h
007E8286: push eax
007E8287: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E828C: mov var_64, eax
007E828F: mov var_6C, 00000008h
007E8296: lea esi, var_6C
007E8299: push 00000000h
007E829B: push var_00000090
007E82A1: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E82A6: mov ecx, eax
007E82A8: mov edx, esi
007E82AA: call 00410940h ; msvbvm60.dll.__vbaVarZero
007E82AF: mov edx, 0043D4DCh ; x17
007E82B4: lea ecx, var_30
007E82B7: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007E82BC: lea eax, var_00000090
007E82C2: push eax
007E82C3: lea eax, var_30
007E82C6: push eax
007E82C7: fld real8 ptr var_000000E0
007E82CD: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007E82D2: push eax
007E82D3: call 007A6910h
007E82D8: lea eax, var_00000090
007E82DE: push eax
007E82DF: push 00000000h
007E82E1: call 00410934h ; Erase
007E82E6: lea eax, var_30
007E82E9: push eax
007E82EA: lea eax, var_2C
007E82ED: push eax
007E82EE: push 00000002h
007E82F0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E82F5: add esp, 0000000Ch
007E82F8: lea ecx, var_40
007E82FB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E8300: lea ecx, var_5C
007E8303: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E8308: mov var_10, 00000000h
007E830F: wait 
007E8310: push 007E8384h
007E8315: jmp 7E837Bh
007E8317: lea eax, var_3C
007E831A: push eax
007E831B: lea eax, var_38
007E831E: push eax
007E831F: lea eax, var_34
007E8322: push eax
007E8323: lea eax, var_30
007E8326: push eax
007E8327: lea eax, var_2C
007E832A: push eax
007E832B: push 00000005h
007E832D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E8332: add esp, 00000018h
007E8335: lea eax, var_4C
007E8338: push eax
007E8339: lea eax, var_48
007E833C: push eax
007E833D: lea eax, var_44
007E8340: push eax
007E8341: lea eax, var_40
007E8344: push eax
007E8345: push 00000004h
007E8347: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E834C: add esp, 00000014h
007E834F: lea eax, var_0000008C
007E8355: push eax
007E8356: lea eax, var_7C
007E8359: push eax
007E835A: lea eax, var_6C
007E835D: push eax
007E835E: lea eax, var_5C
007E8361: push eax
007E8362: push 00000004h
007E8364: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E8369: add esp, 00000014h
007E836C: lea eax, var_00000090
007E8372: push eax
007E8373: push 00000000h
007E8375: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
007E837A: ret 
End Sub

Private sub Form__7DFE06
007DFE06: push ebp
007DFE07: mov ebp, esp
007DFE09: sub esp, 00000018h
007DFE0C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007DFE11: mov eax, fs:[00h]
007DFE17: push eax
007DFE18: mov fs:[00000000h], esp
007DFE1F: mov eax, 000000DCh
007DFE24: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DFE29: push ebx
007DFE2A: push esi
007DFE2B: push edi
007DFE2C: mov var_18, esp
007DFE2F: mov var_14, 00409818h
007DFE36: mov eax, [ebp+08h]
007DFE39: and eax, 00000001h
007DFE3C: mov var_10, eax
007DFE3F: mov eax, [ebp+08h]
007DFE42: and al, FEh
007DFE44: mov [ebp+08h], eax
007DFE47: mov var_0C, 00000000h
007DFE4E: mov eax, [ebp+08h]
007DFE51: mov eax, [eax]
007DFE53: push [ebp+08h]
007DFE56: call [eax+04h]
007DFE59: mov var_04, 00000001h
007DFE60: mov var_04, 00000002h
007DFE67: push FFFFFFFFh
007DFE69: call 00410A60h ; On Error ...
007DFE6E: mov var_04, 00000003h
007DFE75: fld real4 ptr [00402BA8h]
007DFE7B: fstp real4 ptr var_54
007DFE7E: mov var_5C, 00000004h
007DFE85: mov var_74, 00000014h
007DFE8C: mov var_7C, 00000002h
007DFE93: push 00000000h
007DFE95: push 80010005h
007DFE9A: mov eax, [ebp+08h]
007DFE9D: mov eax, [eax]
007DFE9F: push [ebp+08h]
007DFEA2: call [eax+0000031Ch]
007DFEA8: push eax
007DFEA9: lea eax, var_24
007DFEAC: push eax
007DFEAD: call 00410A84h ; Set (object)
007DFEB2: push eax
007DFEB3: lea eax, var_3C
007DFEB6: push eax
007DFEB7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DFEBC: add esp, 00000010h
007DFEBF: push eax
007DFEC0: call 004107EAh ; msvbvm60.dll.__vbaR4Var
007DFEC5: fstp real4 ptr var_00000094
007DFECB: mov var_0000009C, 00000004h
007DFED5: lea eax, var_000000D0
007DFEDB: push eax
007DFEDC: mov eax, [ebp+08h]
007DFEDF: mov eax, [eax]
007DFEE1: push [ebp+08h]
007DFEE4: call [eax+00000088h]
007DFEEA: fclex 
007DFEEC: mov var_000000D8, eax
007DFEF2: cmp var_000000D8, 00000000h
007DFEF9: jnl 7DFF1Bh
007DFEFB: push 00000088h
007DFF00: push 0044420Ch
007DFF05: push [ebp+08h]
007DFF08: push var_000000D8
007DFF0E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DFF13: mov var_000000F4, eax
007DFF19: jmp 7DFF22h
007DFF1B: and var_000000F4, 00000000h
007DFF22: fld real4 ptr var_000000D0
007DFF28: fsub real4 ptr [0040984Ch]
007DFF2E: fstp real4 ptr var_000000B4
007DFF34: fstsw ax
007DFF36: test al, 0Dh
007DFF38: jnz 007E0242h
007DFF3E: mov var_000000BC, 00000004h
007DFF48: push 00000010h
007DFF4A: pop eax
007DFF4B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DFF50: lea esi, var_5C
007DFF53: mov edi, esp
007DFF55: movsd 
007DFF56: movsd 
007DFF57: movsd 
007DFF58: movsd 
007DFF59: push 00000010h
007DFF5B: pop eax
007DFF5C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DFF61: lea esi, var_7C
007DFF64: mov edi, esp
007DFF66: movsd 
007DFF67: movsd 
007DFF68: movsd 
007DFF69: movsd 
007DFF6A: push 00000010h
007DFF6C: pop eax
007DFF6D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DFF72: lea esi, var_0000009C
007DFF78: mov edi, esp
007DFF7A: movsd 
007DFF7B: movsd 
007DFF7C: movsd 
007DFF7D: movsd 
007DFF7E: push 00000010h
007DFF80: pop eax
007DFF81: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DFF86: lea esi, var_000000BC
007DFF8C: mov edi, esp
007DFF8E: movsd 
007DFF8F: movsd 
007DFF90: movsd 
007DFF91: movsd 
007DFF92: push 00000004h
007DFF94: push 80011002h
007DFF99: mov eax, [ebp+08h]
007DFF9C: mov eax, [eax]
007DFF9E: push [ebp+08h]
007DFFA1: call [eax+0000031Ch]
007DFFA7: push eax
007DFFA8: lea eax, var_28
007DFFAB: push eax
007DFFAC: call 00410A84h ; Set (object)
007DFFB1: push eax
007DFFB2: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
007DFFB7: add esp, 0000004Ch
007DFFBA: lea eax, var_28
007DFFBD: push eax
007DFFBE: lea eax, var_24
007DFFC1: push eax
007DFFC2: push 00000002h
007DFFC4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DFFC9: add esp, 0000000Ch
007DFFCC: lea ecx, var_3C
007DFFCF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007DFFD4: mov var_04, 00000004h
007DFFDB: push 00000000h
007DFFDD: push 80010005h
007DFFE2: mov eax, [ebp+08h]
007DFFE5: mov eax, [eax]
007DFFE7: push [ebp+08h]
007DFFEA: call [eax+0000031Ch]
007DFFF0: push eax
007DFFF1: lea eax, var_28
007DFFF4: push eax
007DFFF5: call 00410A84h ; Set (object)
007DFFFA: push eax
007DFFFB: lea eax, var_4C
007DFFFE: push eax
007DFFFF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E0004: add esp, 00000010h
007E0007: push 00000000h
007E0009: push 80010005h
007E000E: mov eax, [ebp+08h]
007E0011: mov eax, [eax]
007E0013: push [ebp+08h]
007E0016: call [eax+0000031Ch]
007E001C: push eax
007E001D: lea eax, var_24
007E0020: push eax
007E0021: call 00410A84h ; Set (object)
007E0026: push eax
007E0027: lea eax, var_3C
007E002A: push eax
007E002B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E0030: add esp, 00000010h
007E0033: push eax
007E0034: call 004107EAh ; msvbvm60.dll.__vbaR4Var
007E0039: fadd real4 ptr [00402BB4h]
007E003F: fstp real4 ptr var_54
007E0042: fstsw ax
007E0044: test al, 0Dh
007E0046: jnz 007E0242h
007E004C: mov var_5C, 00000004h
007E0053: mov var_74, 00000014h
007E005A: mov var_7C, 00000002h
007E0061: lea eax, var_000000D0
007E0067: push eax
007E0068: mov eax, [ebp+08h]
007E006B: mov eax, [eax]
007E006D: push [ebp+08h]
007E0070: call [eax+00000080h]
007E0076: fclex 
007E0078: mov var_000000D8, eax
007E007E: cmp var_000000D8, 00000000h
007E0085: jnl 7E00A7h
007E0087: push 00000080h
007E008C: push 0044420Ch
007E0091: push [ebp+08h]
007E0094: push var_000000D8
007E009A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E009F: mov var_000000F8, eax
007E00A5: jmp 7E00AEh
007E00A7: and var_000000F8, 00000000h
007E00AE: lea eax, var_4C
007E00B1: push eax
007E00B2: call 004107EAh ; msvbvm60.dll.__vbaR4Var
007E00B7: fsubr real4 ptr var_000000D0
007E00BD: fsub real4 ptr [00402BB8h]
007E00C3: fstp real4 ptr var_00000094
007E00C9: fstsw ax
007E00CB: test al, 0Dh
007E00CD: jnz 007E0242h
007E00D3: mov var_0000009C, 00000004h
007E00DD: lea eax, var_000000D4
007E00E3: push eax
007E00E4: mov eax, [ebp+08h]
007E00E7: mov eax, [eax]
007E00E9: push [ebp+08h]
007E00EC: call [eax+00000088h]
007E00F2: fclex 
007E00F4: mov var_000000DC, eax
007E00FA: cmp var_000000DC, 00000000h
007E0101: jnl 7E0123h
007E0103: push 00000088h
007E0108: push 0044420Ch
007E010D: push [ebp+08h]
007E0110: push var_000000DC
007E0116: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E011B: mov var_000000FC, eax
007E0121: jmp 7E012Ah
007E0123: and var_000000FC, 00000000h
007E012A: fld real4 ptr var_000000D4
007E0130: fsub real4 ptr [0040984Ch]
007E0136: fstp real4 ptr var_000000B4
007E013C: fstsw ax
007E013E: test al, 0Dh
007E0140: jnz 007E0242h
007E0146: mov var_000000BC, 00000004h
007E0150: push 00000010h
007E0152: pop eax
007E0153: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E0158: lea esi, var_5C
007E015B: mov edi, esp
007E015D: movsd 
007E015E: movsd 
007E015F: movsd 
007E0160: movsd 
007E0161: push 00000010h
007E0163: pop eax
007E0164: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E0169: lea esi, var_7C
007E016C: mov edi, esp
007E016E: movsd 
007E016F: movsd 
007E0170: movsd 
007E0171: movsd 
007E0172: push 00000010h
007E0174: pop eax
007E0175: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E017A: lea esi, var_0000009C
007E0180: mov edi, esp
007E0182: movsd 
007E0183: movsd 
007E0184: movsd 
007E0185: movsd 
007E0186: push 00000010h
007E0188: pop eax
007E0189: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E018E: lea esi, var_000000BC
007E0194: mov edi, esp
007E0196: movsd 
007E0197: movsd 
007E0198: movsd 
007E0199: movsd 
007E019A: push 00000004h
007E019C: push 80011002h
007E01A1: mov eax, [ebp+08h]
007E01A4: mov eax, [eax]
007E01A6: push [ebp+08h]
007E01A9: call [eax+00000324h]
007E01AF: push eax
007E01B0: lea eax, var_2C
007E01B3: push eax
007E01B4: call 00410A84h ; Set (object)
007E01B9: push eax
007E01BA: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
007E01BF: add esp, 0000004Ch
007E01C2: lea eax, var_2C
007E01C5: push eax
007E01C6: lea eax, var_28
007E01C9: push eax
007E01CA: lea eax, var_24
007E01CD: push eax
007E01CE: push 00000003h
007E01D0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E01D5: add esp, 00000010h
007E01D8: lea eax, var_4C
007E01DB: push eax
007E01DC: lea eax, var_3C
007E01DF: push eax
007E01E0: push 00000002h
007E01E2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E01E7: add esp, 0000000Ch
007E01EA: mov var_10, 00000000h
007E01F1: wait 
007E01F2: push 007E0223h
007E01F7: jmp 7E0222h
007E01F9: lea eax, var_2C
007E01FC: push eax
007E01FD: lea eax, var_28
007E0200: push eax
007E0201: lea eax, var_24
007E0204: push eax
007E0205: push 00000003h
007E0207: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E020C: add esp, 00000010h
007E020F: lea eax, var_4C
007E0212: push eax
007E0213: lea eax, var_3C
007E0216: push eax
007E0217: push 00000002h
007E0219: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E021E: add esp, 0000000Ch
007E0221: ret 
End Sub

Private sub Timer1__7EDE65
007EDE65: push ebp
007EDE66: mov ebp, esp
007EDE68: sub esp, 0000000Ch
007EDE6B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007EDE70: mov eax, fs:[00h]
007EDE76: push eax
007EDE77: mov fs:[00000000h], esp
007EDE7E: push 0000003Ch
007EDE80: pop eax
007EDE81: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EDE86: push ebx
007EDE87: push esi
007EDE88: push edi
007EDE89: mov var_0C, esp
007EDE8C: mov var_08, 00409C38h
007EDE93: mov eax, [ebp+08h]
007EDE96: and eax, 00000001h
007EDE99: mov var_04, eax
007EDE9C: mov eax, [ebp+08h]
007EDE9F: and al, FEh
007EDEA1: mov [ebp+08h], eax
007EDEA4: mov eax, [ebp+08h]
007EDEA7: mov eax, [eax]
007EDEA9: push [ebp+08h]
007EDEAC: call [eax+04h]
007EDEAF: cmp [008F2010h], 00000000h
007EDEB6: jnz 7EDED0h
007EDEB8: push 008F2010h
007EDEBD: push 00433984h
007EDEC2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EDEC7: mov var_40, 008F2010h
007EDECE: jmp 7EDED7h
007EDED0: mov var_40, 008F2010h
007EDED7: mov eax, var_40
007EDEDA: mov eax, [eax]
007EDEDC: mov ecx, var_40
007EDEDF: mov ecx, [ecx]
007EDEE1: mov ecx, [ecx]
007EDEE3: push eax
007EDEE4: call [ecx+00000380h]
007EDEEA: push eax
007EDEEB: lea eax, var_18
007EDEEE: push eax
007EDEEF: call 00410A84h ; Set (object)
007EDEF4: mov var_24, eax
007EDEF7: lea eax, var_1C
007EDEFA: push eax
007EDEFB: push 00000003h
007EDEFD: mov eax, var_24
007EDF00: mov eax, [eax]
007EDF02: push var_24
007EDF05: call [eax+40h]
007EDF08: fclex 
007EDF0A: mov var_28, eax
007EDF0D: cmp var_28, 00000000h
007EDF11: jnl 7EDF2Ah
007EDF13: push 00000040h
007EDF15: push 00440DE8h
007EDF1A: push var_24
007EDF1D: push var_28
007EDF20: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EDF25: mov var_44, eax
007EDF28: jmp 7EDF2Eh
007EDF2A: and var_44, 00000000h
007EDF2E: mov eax, var_1C
007EDF31: mov var_2C, eax
007EDF34: lea eax, var_20
007EDF37: push eax
007EDF38: mov eax, var_2C
007EDF3B: mov eax, [eax]
007EDF3D: push var_2C
007EDF40: call [eax+000000E0h]
007EDF46: fclex 
007EDF48: mov var_30, eax
007EDF4B: cmp var_30, 00000000h
007EDF4F: jnl 7EDF6Bh
007EDF51: push 000000E0h
007EDF56: push 00440DF8h
007EDF5B: push var_2C
007EDF5E: push var_30
007EDF61: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EDF66: mov var_48, eax
007EDF69: jmp 7EDF6Fh
007EDF6B: and var_48, 00000000h
007EDF6F: xor eax, eax
007EDF71: cmp word ptr var_20, 0001h
007EDF76: setz al
007EDF79: neg eax
007EDF7B: mov var_34, ax
007EDF7F: lea eax, var_1C
007EDF82: push eax
007EDF83: lea eax, var_18
007EDF86: push eax
007EDF87: push 00000002h
007EDF89: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EDF8E: add esp, 0000000Ch
007EDF91: movsx eax, word ptr var_34
007EDF95: test eax, eax
007EDF97: jz 7EDFD7h
007EDF99: and word ptr var_20, 0000h
007EDF9E: lea eax, var_20
007EDFA1: push eax
007EDFA2: mov eax, [ebp+08h]
007EDFA5: mov eax, [eax]
007EDFA7: push [ebp+08h]
007EDFAA: call [eax+0000072Ch]
007EDFB0: mov var_24, eax
007EDFB3: cmp var_24, 00000000h
007EDFB7: jnl 7EDFD3h
007EDFB9: push 0000072Ch
007EDFBE: push 00440310h
007EDFC3: push [ebp+08h]
007EDFC6: push var_24
007EDFC9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EDFCE: mov var_4C, eax
007EDFD1: jmp 7EDFD7h
007EDFD3: and var_4C, 00000000h
007EDFD7: mov eax, [ebp+08h]
007EDFDA: mov eax, [eax]
007EDFDC: push [ebp+08h]
007EDFDF: call [eax+00000300h]
007EDFE5: push eax
007EDFE6: lea eax, var_18
007EDFE9: push eax
007EDFEA: call 00410A84h ; Set (object)
007EDFEF: mov var_24, eax
007EDFF2: push 00000000h
007EDFF4: mov eax, var_24
007EDFF7: mov eax, [eax]
007EDFF9: push var_24
007EDFFC: call [eax+5Ch]
007EDFFF: fclex 
007EE001: mov var_28, eax
007EE004: cmp var_28, 00000000h
007EE008: jnl 7EE021h
007EE00A: push 0000005Ch
007EE00C: push 00447A20h
007EE011: push var_24
007EE014: push var_28
007EE017: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EE01C: mov var_50, eax
007EE01F: jmp 7EE025h
007EE021: and var_50, 00000000h
007EE025: lea ecx, var_18
007EE028: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EE02D: mov var_04, 00000000h
007EE034: push 007EE04Fh
007EE039: jmp 7EE04Eh
007EE03B: lea eax, var_1C
007EE03E: push eax
007EE03F: lea eax, var_18
007EE042: push eax
007EE043: push 00000002h
007EE045: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EE04A: add esp, 0000000Ch
007EE04D: ret 
End Sub

Private sub mnuFiler__7E83A8
007E83A8: push ebp
007E83A9: mov ebp, esp
007E83AB: sub esp, 00000018h
007E83AE: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007E83B3: mov eax, fs:[00h]
007E83B9: push eax
007E83BA: mov fs:[00000000h], esp
007E83C1: mov eax, 000004C0h
007E83C6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E83CB: push ebx
007E83CC: push esi
007E83CD: push edi
007E83CE: mov var_18, esp
007E83D1: mov var_14, 00409B10h
007E83D8: mov eax, [ebp+08h]
007E83DB: and eax, 00000001h
007E83DE: mov var_10, eax
007E83E1: mov eax, [ebp+08h]
007E83E4: and al, FEh
007E83E6: mov [ebp+08h], eax
007E83E9: mov var_0C, 00000000h
007E83F0: mov eax, [ebp+08h]
007E83F3: mov eax, [eax]
007E83F5: push [ebp+08h]
007E83F8: call [eax+04h]
007E83FB: mov var_04, 00000001h
007E8402: mov var_04, 00000002h
007E8409: push FFFFFFFFh
007E840B: call 00410A60h ; On Error ...
007E8410: mov var_04, 00000003h
007E8417: mov eax, [ebp+0Ch]
007E841A: mov ax, [eax]
007E841D: mov var_000001F4, ax
007E8424: movsx eax, word ptr var_000001F4
007E842B: mov var_00000214, eax
007E8431: cmp var_00000214, 0000000Fh
007E8438: jnbe 007EDCD8h
007E843E: mov eax, var_00000214
007E8444: jmp [eax*4+007EDE25h]
007E844B: jmp 007EDCD8h
007E8450: mov var_04, 00000005h
007E8457: push 004412BCh
007E845C: push 00000000h
007E845E: push 00000007h
007E8460: mov eax, [ebp+08h]
007E8463: mov eax, [eax]
007E8465: push [ebp+08h]
007E8468: call [eax+00000324h]
007E846E: push eax
007E846F: lea eax, var_00000088
007E8475: push eax
007E8476: call 00410A84h ; Set (object)
007E847B: push eax
007E847C: lea eax, var_000000B8
007E8482: push eax
007E8483: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E8488: add esp, 00000010h
007E848B: push eax
007E848C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E8491: push eax
007E8492: lea eax, var_0000008C
007E8498: push eax
007E8499: call 00410A84h ; Set (object)
007E849E: mov var_000001B0, eax
007E84A4: mov eax, var_000001B0
007E84AA: mov eax, [eax]
007E84AC: push var_000001B0
007E84B2: call [eax+2Ch]
007E84B5: fclex 
007E84B7: mov var_000001B4, eax
007E84BD: cmp var_000001B4, 00000000h
007E84C4: jnl 7E84E6h
007E84C6: push 0000002Ch
007E84C8: push 004412BCh
007E84CD: push var_000001B0
007E84D3: push var_000001B4
007E84D9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E84DE: mov var_00000218, eax
007E84E4: jmp 7E84EDh
007E84E6: and var_00000218, 00000000h
007E84ED: lea eax, var_0000008C
007E84F3: push eax
007E84F4: lea eax, var_00000088
007E84FA: push eax
007E84FB: push 00000002h
007E84FD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E8502: add esp, 0000000Ch
007E8505: lea ecx, var_000000B8
007E850B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E8510: mov var_04, 00000006h
007E8517: lea eax, var_4C
007E851A: push eax
007E851B: mov eax, [ebp+08h]
007E851E: mov eax, [eax]
007E8520: push [ebp+08h]
007E8523: call [eax+000001C0h]
007E8529: fclex 
007E852B: mov var_000001B0, eax
007E8531: cmp var_000001B0, 00000000h
007E8538: jnl 7E855Ah
007E853A: push 000001C0h
007E853F: push 0044420Ch
007E8544: push [ebp+08h]
007E8547: push var_000001B0
007E854D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E8552: mov var_0000021C, eax
007E8558: jmp 7E8561h
007E855A: and var_0000021C, 00000000h
007E8561: push var_4C
007E8564: call 004109DCh ; Val(arg_1)
007E8569: fstp real8 ptr var_000001AC
007E856F: push 00000000h
007E8571: push 00000000h
007E8573: push 00000001h
007E8575: push 00000000h
007E8577: lea eax, var_0000012C
007E857D: push eax
007E857E: push 00000010h
007E8580: push 00000880h
007E8585: call 00410946h ; ReDim
007E858A: add esp, 0000001Ch
007E858D: push 00000000h
007E858F: push 8001000Bh
007E8594: mov eax, [ebp+08h]
007E8597: mov eax, [eax]
007E8599: push [ebp+08h]
007E859C: call [eax+00000324h]
007E85A2: push eax
007E85A3: lea eax, var_00000088
007E85A9: push eax
007E85AA: call 00410A84h ; Set (object)
007E85AF: push eax
007E85B0: lea eax, var_000000B8
007E85B6: push eax
007E85B7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E85BC: add esp, 00000010h
007E85BF: push eax
007E85C0: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E85C5: mov var_000000C0, eax
007E85CB: mov var_000000C8, 00000008h
007E85D5: lea esi, var_000000C8
007E85DB: push 00000000h
007E85DD: push var_0000012C
007E85E3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E85E8: mov ecx, eax
007E85EA: mov edx, esi
007E85EC: call 00410940h ; msvbvm60.dll.__vbaVarZero
007E85F1: mov edx, 0043D4E8h ; x18
007E85F6: lea ecx, var_50
007E85F9: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007E85FE: lea eax, var_0000012C
007E8604: push eax
007E8605: lea eax, var_50
007E8608: push eax
007E8609: fld real8 ptr var_000001AC
007E860F: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007E8614: push eax
007E8615: call 007A6910h
007E861A: lea eax, var_0000012C
007E8620: push eax
007E8621: push 00000000h
007E8623: call 00410934h ; Erase
007E8628: lea eax, var_50
007E862B: push eax
007E862C: lea eax, var_4C
007E862F: push eax
007E8630: push 00000002h
007E8632: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E8637: add esp, 0000000Ch
007E863A: lea ecx, var_00000088
007E8640: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007E8645: lea ecx, var_000000B8
007E864B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E8650: jmp 007EDCD8h
007E8655: mov var_04, 00000008h
007E865C: cmp [008F2CCCh], 00000000h
007E8663: jnz 7E8680h
007E8665: push 008F2CCCh
007E866A: push 0041330Ch
007E866F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E8674: mov var_00000220, 008F2CCCh
007E867E: jmp 7E868Ah
007E8680: mov var_00000220, 008F2CCCh
007E868A: mov eax, var_00000220
007E8690: mov eax, [eax]
007E8692: mov var_000001CC, eax
007E8698: lea eax, var_4C
007E869B: push eax
007E869C: mov eax, [ebp+08h]
007E869F: mov eax, [eax]
007E86A1: push [ebp+08h]
007E86A4: call [eax+000001C0h]
007E86AA: fclex 
007E86AC: mov var_000001B0, eax
007E86B2: cmp var_000001B0, 00000000h
007E86B9: jnl 7E86DBh
007E86BB: push 000001C0h
007E86C0: push 0044420Ch
007E86C5: push [ebp+08h]
007E86C8: push var_000001B0
007E86CE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E86D3: mov var_00000224, eax
007E86D9: jmp 7E86E2h
007E86DB: and var_00000224, 00000000h
007E86E2: push 004412BCh
007E86E7: push 00000000h
007E86E9: push 00000007h
007E86EB: mov eax, [ebp+08h]
007E86EE: mov eax, [eax]
007E86F0: push [ebp+08h]
007E86F3: call [eax+00000324h]
007E86F9: push eax
007E86FA: lea eax, var_00000094
007E8700: push eax
007E8701: call 00410A84h ; Set (object)
007E8706: push eax
007E8707: lea eax, var_000000D8
007E870D: push eax
007E870E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E8713: add esp, 00000010h
007E8716: push eax
007E8717: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E871C: push eax
007E871D: lea eax, var_00000098
007E8723: push eax
007E8724: call 00410A84h ; Set (object)
007E8729: mov var_000001BC, eax
007E872F: push 004412DCh
007E8734: push 00000000h
007E8736: push 0000000Dh
007E8738: mov eax, [ebp+08h]
007E873B: mov eax, [eax]
007E873D: push [ebp+08h]
007E8740: call [eax+00000324h]
007E8746: push eax
007E8747: lea eax, var_0000008C
007E874D: push eax
007E874E: call 00410A84h ; Set (object)
007E8753: push eax
007E8754: lea eax, var_000000C8
007E875A: push eax
007E875B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E8760: add esp, 00000010h
007E8763: push eax
007E8764: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E8769: push eax
007E876A: lea eax, var_00000090
007E8770: push eax
007E8771: call 00410A84h ; Set (object)
007E8776: mov var_000001B4, eax
007E877C: lea eax, var_000001A4
007E8782: push eax
007E8783: mov eax, var_000001B4
007E8789: mov eax, [eax]
007E878B: push var_000001B4
007E8791: call [eax+44h]
007E8794: fclex 
007E8796: mov var_000001B8, eax
007E879C: cmp var_000001B8, 00000000h
007E87A3: jnl 7E87C5h
007E87A5: push 00000044h
007E87A7: push 004412DCh
007E87AC: push var_000001B4
007E87B2: push var_000001B8
007E87B8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E87BD: mov var_00000228, eax
007E87C3: jmp 7E87CCh
007E87C5: and var_00000228, 00000000h
007E87CC: mov eax, var_000001A4
007E87D2: mov var_000000E0, eax
007E87D8: mov var_000000E8, 00000003h
007E87E2: lea eax, var_0000009C
007E87E8: push eax
007E87E9: lea eax, var_000000E8
007E87EF: push eax
007E87F0: mov eax, var_000001BC
007E87F6: mov eax, [eax]
007E87F8: push var_000001BC
007E87FE: call [eax+24h]
007E8801: fclex 
007E8803: mov var_000001C0, eax
007E8809: cmp var_000001C0, 00000000h
007E8810: jnl 7E8832h
007E8812: push 00000024h
007E8814: push 004412BCh
007E8819: push var_000001BC
007E881F: push var_000001C0
007E8825: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E882A: mov var_0000022C, eax
007E8830: jmp 7E8839h
007E8832: and var_0000022C, 00000000h
007E8839: mov eax, var_0000009C
007E883F: mov var_000001C4, eax
007E8845: lea eax, var_58
007E8848: push eax
007E8849: mov eax, var_000001C4
007E884F: mov eax, [eax]
007E8851: push var_000001C4
007E8857: call [eax+24h]
007E885A: fclex 
007E885C: mov var_000001C8, eax
007E8862: cmp var_000001C8, 00000000h
007E8869: jnl 7E888Bh
007E886B: push 00000024h
007E886D: push 004412DCh
007E8872: push var_000001C4
007E8878: push var_000001C8
007E887E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E8883: mov var_00000230, eax
007E8889: jmp 7E8892h
007E888B: and var_00000230, 00000000h
007E8892: push var_4C
007E8895: push 004413D8h
007E889A: call 00410A18h ; &
007E889F: mov edx, eax
007E88A1: lea ecx, var_50
007E88A4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E88A9: push eax
007E88AA: push 00000000h
007E88AC: push 8001000Bh
007E88B1: mov eax, [ebp+08h]
007E88B4: mov eax, [eax]
007E88B6: push [ebp+08h]
007E88B9: call [eax+00000324h]
007E88BF: push eax
007E88C0: lea eax, var_00000088
007E88C6: push eax
007E88C7: call 00410A84h ; Set (object)
007E88CC: push eax
007E88CD: lea eax, var_000000B8
007E88D3: push eax
007E88D4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E88D9: add esp, 00000010h
007E88DC: push eax
007E88DD: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E88E2: mov edx, eax
007E88E4: lea ecx, var_54
007E88E7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E88EC: push eax
007E88ED: call 00410A18h ; &
007E88F2: mov edx, eax
007E88F4: lea ecx, var_5C
007E88F7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E88FC: push eax
007E88FD: push var_58
007E8900: call 00410A18h ; &
007E8905: mov edx, eax
007E8907: lea ecx, var_60
007E890A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E890F: push eax
007E8910: mov eax, var_000001CC
007E8916: mov eax, [eax]
007E8918: push var_000001CC
007E891E: call [eax+000001C4h]
007E8924: fclex 
007E8926: mov var_000001D0, eax
007E892C: cmp var_000001D0, 00000000h
007E8933: jnl 7E8958h
007E8935: push 000001C4h
007E893A: push 00450464h
007E893F: push var_000001CC
007E8945: push var_000001D0
007E894B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E8950: mov var_00000234, eax
007E8956: jmp 7E895Fh
007E8958: and var_00000234, 00000000h
007E895F: lea eax, var_60
007E8962: push eax
007E8963: lea eax, var_58
007E8966: push eax
007E8967: lea eax, var_5C
007E896A: push eax
007E896B: lea eax, var_54
007E896E: push eax
007E896F: lea eax, var_50
007E8972: push eax
007E8973: lea eax, var_4C
007E8976: push eax
007E8977: push 00000006h
007E8979: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E897E: add esp, 0000001Ch
007E8981: lea eax, var_0000009C
007E8987: push eax
007E8988: lea eax, var_00000098
007E898E: push eax
007E898F: lea eax, var_00000094
007E8995: push eax
007E8996: lea eax, var_00000090
007E899C: push eax
007E899D: lea eax, var_0000008C
007E89A3: push eax
007E89A4: lea eax, var_00000088
007E89AA: push eax
007E89AB: push 00000006h
007E89AD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E89B2: add esp, 0000001Ch
007E89B5: lea eax, var_000000E8
007E89BB: push eax
007E89BC: lea eax, var_000000D8
007E89C2: push eax
007E89C3: lea eax, var_000000C8
007E89C9: push eax
007E89CA: lea eax, var_000000B8
007E89D0: push eax
007E89D1: push 00000004h
007E89D3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E89D8: add esp, 00000014h
007E89DB: mov var_04, 00000009h
007E89E2: cmp [008F2CCCh], 00000000h
007E89E9: jnz 7E8A06h
007E89EB: push 008F2CCCh
007E89F0: push 0041330Ch
007E89F5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E89FA: mov var_00000238, 008F2CCCh
007E8A04: jmp 7E8A10h
007E8A06: mov var_00000238, 008F2CCCh
007E8A10: mov eax, var_00000238
007E8A16: mov eax, [eax]
007E8A18: mov var_000001C8, eax
007E8A1E: push 004412BCh
007E8A23: push 00000000h
007E8A25: push 00000007h
007E8A27: mov eax, [ebp+08h]
007E8A2A: mov eax, [eax]
007E8A2C: push [ebp+08h]
007E8A2F: call [eax+00000324h]
007E8A35: push eax
007E8A36: lea eax, var_00000090
007E8A3C: push eax
007E8A3D: call 00410A84h ; Set (object)
007E8A42: push eax
007E8A43: lea eax, var_000000C8
007E8A49: push eax
007E8A4A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E8A4F: add esp, 00000010h
007E8A52: push eax
007E8A53: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E8A58: push eax
007E8A59: lea eax, var_00000094
007E8A5F: push eax
007E8A60: call 00410A84h ; Set (object)
007E8A65: mov var_000001B8, eax
007E8A6B: push 004412DCh
007E8A70: push 00000000h
007E8A72: push 0000000Dh
007E8A74: mov eax, [ebp+08h]
007E8A77: mov eax, [eax]
007E8A79: push [ebp+08h]
007E8A7C: call [eax+00000324h]
007E8A82: push eax
007E8A83: lea eax, var_00000088
007E8A89: push eax
007E8A8A: call 00410A84h ; Set (object)
007E8A8F: push eax
007E8A90: lea eax, var_000000B8
007E8A96: push eax
007E8A97: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E8A9C: add esp, 00000010h
007E8A9F: push eax
007E8AA0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E8AA5: push eax
007E8AA6: lea eax, var_0000008C
007E8AAC: push eax
007E8AAD: call 00410A84h ; Set (object)
007E8AB2: mov var_000001B0, eax
007E8AB8: lea eax, var_000001A4
007E8ABE: push eax
007E8ABF: mov eax, var_000001B0
007E8AC5: mov eax, [eax]
007E8AC7: push var_000001B0
007E8ACD: call [eax+44h]
007E8AD0: fclex 
007E8AD2: mov var_000001B4, eax
007E8AD8: cmp var_000001B4, 00000000h
007E8ADF: jnl 7E8B01h
007E8AE1: push 00000044h
007E8AE3: push 004412DCh
007E8AE8: push var_000001B0
007E8AEE: push var_000001B4
007E8AF4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E8AF9: mov var_0000023C, eax
007E8AFF: jmp 7E8B08h
007E8B01: and var_0000023C, 00000000h
007E8B08: mov eax, var_000001A4
007E8B0E: mov var_000000D0, eax
007E8B14: mov var_000000D8, 00000003h
007E8B1E: lea eax, var_00000098
007E8B24: push eax
007E8B25: lea eax, var_000000D8
007E8B2B: push eax
007E8B2C: mov eax, var_000001B8
007E8B32: mov eax, [eax]
007E8B34: push var_000001B8
007E8B3A: call [eax+24h]
007E8B3D: fclex 
007E8B3F: mov var_000001BC, eax
007E8B45: cmp var_000001BC, 00000000h
007E8B4C: jnl 7E8B6Eh
007E8B4E: push 00000024h
007E8B50: push 004412BCh
007E8B55: push var_000001B8
007E8B5B: push var_000001BC
007E8B61: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E8B66: mov var_00000240, eax
007E8B6C: jmp 7E8B75h
007E8B6E: and var_00000240, 00000000h
007E8B75: mov eax, var_00000098
007E8B7B: mov var_000001C0, eax
007E8B81: lea eax, var_4C
007E8B84: push eax
007E8B85: mov eax, var_000001C0
007E8B8B: mov eax, [eax]
007E8B8D: push var_000001C0
007E8B93: call [eax+24h]
007E8B96: fclex 
007E8B98: mov var_000001C4, eax
007E8B9E: cmp var_000001C4, 00000000h
007E8BA5: jnl 7E8BC7h
007E8BA7: push 00000024h
007E8BA9: push 004412DCh
007E8BAE: push var_000001C0
007E8BB4: push var_000001C4
007E8BBA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E8BBF: mov var_00000244, eax
007E8BC5: jmp 7E8BCEh
007E8BC7: and var_00000244, 00000000h
007E8BCE: push 004504B8h ; File manager - Attributes for:
007E8BD3: push var_4C
007E8BD6: call 00410A18h ; &
007E8BDB: mov edx, eax
007E8BDD: lea ecx, var_50
007E8BE0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E8BE5: push eax
007E8BE6: mov eax, var_000001C8
007E8BEC: mov eax, [eax]
007E8BEE: push var_000001C8
007E8BF4: call [eax+54h]
007E8BF7: fclex 
007E8BF9: mov var_000001CC, eax
007E8BFF: cmp var_000001CC, 00000000h
007E8C06: jnl 7E8C28h
007E8C08: push 00000054h
007E8C0A: push 00450464h
007E8C0F: push var_000001C8
007E8C15: push var_000001CC
007E8C1B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E8C20: mov var_00000248, eax
007E8C26: jmp 7E8C2Fh
007E8C28: and var_00000248, 00000000h
007E8C2F: lea eax, var_50
007E8C32: push eax
007E8C33: lea eax, var_4C
007E8C36: push eax
007E8C37: push 00000002h
007E8C39: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E8C3E: add esp, 0000000Ch
007E8C41: lea eax, var_00000098
007E8C47: push eax
007E8C48: lea eax, var_00000094
007E8C4E: push eax
007E8C4F: lea eax, var_00000090
007E8C55: push eax
007E8C56: lea eax, var_0000008C
007E8C5C: push eax
007E8C5D: lea eax, var_00000088
007E8C63: push eax
007E8C64: push 00000005h
007E8C66: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E8C6B: add esp, 00000018h
007E8C6E: lea eax, var_000000D8
007E8C74: push eax
007E8C75: lea eax, var_000000C8
007E8C7B: push eax
007E8C7C: lea eax, var_000000B8
007E8C82: push eax
007E8C83: push 00000003h
007E8C85: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E8C8A: add esp, 00000010h
007E8C8D: mov var_04, 0000000Ah
007E8C94: cmp [008F2CCCh], 00000000h
007E8C9B: jnz 7E8CB8h
007E8C9D: push 008F2CCCh
007E8CA2: push 0041330Ch
007E8CA7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E8CAC: mov var_0000024C, 008F2CCCh
007E8CB6: jmp 7E8CC2h
007E8CB8: mov var_0000024C, 008F2CCCh
007E8CC2: mov eax, var_0000024C
007E8CC8: mov eax, [eax]
007E8CCA: mov var_000001B0, eax
007E8CD0: mov eax, [ebp+08h]
007E8CD3: mov var_00000144, eax
007E8CD9: mov var_0000014C, 00000009h
007E8CE3: mov var_00000134, 80020004h
007E8CED: mov var_0000013C, 0000000Ah
007E8CF7: push 00000010h
007E8CF9: pop eax
007E8CFA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E8CFF: lea esi, var_0000014C
007E8D05: mov edi, esp
007E8D07: movsd 
007E8D08: movsd 
007E8D09: movsd 
007E8D0A: movsd 
007E8D0B: push 00000010h
007E8D0D: pop eax
007E8D0E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E8D13: lea esi, var_0000013C
007E8D19: mov edi, esp
007E8D1B: movsd 
007E8D1C: movsd 
007E8D1D: movsd 
007E8D1E: movsd 
007E8D1F: mov eax, var_000001B0
007E8D25: mov eax, [eax]
007E8D27: push var_000001B0
007E8D2D: call [eax+000002B0h]
007E8D33: fclex 
007E8D35: mov var_000001B4, eax
007E8D3B: cmp var_000001B4, 00000000h
007E8D42: jnl 7E8D67h
007E8D44: push 000002B0h
007E8D49: push 00450464h
007E8D4E: push var_000001B0
007E8D54: push var_000001B4
007E8D5A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E8D5F: mov var_00000250, eax
007E8D65: jmp 7E8D6Eh
007E8D67: and var_00000250, 00000000h
007E8D6E: jmp 007EDCD8h
007E8D73: mov var_04, 0000000Ch
007E8D7A: mov var_00000110, 80020004h
007E8D84: mov var_00000118, 0000000Ah
007E8D8E: mov var_00000100, 80020004h
007E8D98: mov var_00000108, 0000000Ah
007E8DA2: mov var_000000F0, 80020004h
007E8DAC: mov var_000000F8, 0000000Ah
007E8DB6: mov var_000000E0, 80020004h
007E8DC0: mov var_000000E8, 0000000Ah
007E8DCA: mov var_000000D0, 80020004h
007E8DD4: mov var_000000D8, 0000000Ah
007E8DDE: mov var_00000144, 0045052Ch ; Rename file
007E8DE8: mov var_0000014C, 00000008h
007E8DF2: lea edx, var_0000014C
007E8DF8: lea ecx, var_000000C8
007E8DFE: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007E8E03: mov var_00000134, 004504FCh ; Enter a new filename
007E8E0D: mov var_0000013C, 00000008h
007E8E17: lea edx, var_0000013C
007E8E1D: lea ecx, var_000000B8
007E8E23: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007E8E28: lea eax, var_00000118
007E8E2E: push eax
007E8E2F: lea eax, var_00000108
007E8E35: push eax
007E8E36: lea eax, var_000000F8
007E8E3C: push eax
007E8E3D: lea eax, var_000000E8
007E8E43: push eax
007E8E44: lea eax, var_000000D8
007E8E4A: push eax
007E8E4B: lea eax, var_000000C8
007E8E51: push eax
007E8E52: lea eax, var_000000B8
007E8E58: push eax
007E8E59: call 00410994h ; InputBox
007E8E5E: mov edx, eax
007E8E60: lea ecx, var_34
007E8E63: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E8E68: lea eax, var_00000118
007E8E6E: push eax
007E8E6F: lea eax, var_00000108
007E8E75: push eax
007E8E76: lea eax, var_000000F8
007E8E7C: push eax
007E8E7D: lea eax, var_000000E8
007E8E83: push eax
007E8E84: lea eax, var_000000D8
007E8E8A: push eax
007E8E8B: lea eax, var_000000C8
007E8E91: push eax
007E8E92: lea eax, var_000000B8
007E8E98: push eax
007E8E99: push 00000007h
007E8E9B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E8EA0: add esp, 00000020h
007E8EA3: mov var_04, 0000000Dh
007E8EAA: push var_34
007E8EAD: push 00000000h
007E8EAF: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
007E8EB4: test eax, eax
007E8EB6: jz 007E91CDh
007E8EBC: mov var_04, 0000000Eh
007E8EC3: lea eax, var_4C
007E8EC6: push eax
007E8EC7: mov eax, [ebp+08h]
007E8ECA: mov eax, [eax]
007E8ECC: push [ebp+08h]
007E8ECF: call [eax+000001C0h]
007E8ED5: fclex 
007E8ED7: mov var_000001B0, eax
007E8EDD: cmp var_000001B0, 00000000h
007E8EE4: jnl 7E8F06h
007E8EE6: push 000001C0h
007E8EEB: push 0044420Ch
007E8EF0: push [ebp+08h]
007E8EF3: push var_000001B0
007E8EF9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E8EFE: mov var_00000254, eax
007E8F04: jmp 7E8F0Dh
007E8F06: and var_00000254, 00000000h
007E8F0D: push var_4C
007E8F10: call 004109DCh ; Val(arg_1)
007E8F15: fstp real8 ptr var_000001AC
007E8F1B: push 00000000h
007E8F1D: push 00000002h
007E8F1F: push 00000001h
007E8F21: push 00000000h
007E8F23: lea eax, var_0000012C
007E8F29: push eax
007E8F2A: push 00000010h
007E8F2C: push 00000880h
007E8F31: call 00410946h ; ReDim
007E8F36: add esp, 0000001Ch
007E8F39: push 004412DCh
007E8F3E: push 00000000h
007E8F40: push 0000000Dh
007E8F42: mov eax, [ebp+08h]
007E8F45: mov eax, [eax]
007E8F47: push [ebp+08h]
007E8F4A: call [eax+00000324h]
007E8F50: push eax
007E8F51: lea eax, var_0000008C
007E8F57: push eax
007E8F58: call 00410A84h ; Set (object)
007E8F5D: push eax
007E8F5E: lea eax, var_000000C8
007E8F64: push eax
007E8F65: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E8F6A: add esp, 00000010h
007E8F6D: push eax
007E8F6E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E8F73: push eax
007E8F74: lea eax, var_00000090
007E8F7A: push eax
007E8F7B: call 00410A84h ; Set (object)
007E8F80: mov var_000001B4, eax
007E8F86: lea eax, var_50
007E8F89: push eax
007E8F8A: mov eax, var_000001B4
007E8F90: mov eax, [eax]
007E8F92: push var_000001B4
007E8F98: call [eax+24h]
007E8F9B: fclex 
007E8F9D: mov var_000001B8, eax
007E8FA3: cmp var_000001B8, 00000000h
007E8FAA: jnl 7E8FCCh
007E8FAC: push 00000024h
007E8FAE: push 004412DCh
007E8FB3: push var_000001B4
007E8FB9: push var_000001B8
007E8FBF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E8FC4: mov var_00000258, eax
007E8FCA: jmp 7E8FD3h
007E8FCC: and var_00000258, 00000000h
007E8FD3: push 00000000h
007E8FD5: push 8001000Bh
007E8FDA: mov eax, [ebp+08h]
007E8FDD: mov eax, [eax]
007E8FDF: push [ebp+08h]
007E8FE2: call [eax+00000324h]
007E8FE8: push eax
007E8FE9: lea eax, var_00000088
007E8FEF: push eax
007E8FF0: call 00410A84h ; Set (object)
007E8FF5: push eax
007E8FF6: lea eax, var_000000B8
007E8FFC: push eax
007E8FFD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E9002: add esp, 00000010h
007E9005: push eax
007E9006: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E900B: mov edx, eax
007E900D: lea ecx, var_54
007E9010: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E9015: push eax
007E9016: push var_50
007E9019: call 00410A18h ; &
007E901E: mov var_000000F0, eax
007E9024: mov var_000000F8, 00000008h
007E902E: lea esi, var_000000F8
007E9034: push 00000000h
007E9036: push var_0000012C
007E903C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E9041: mov ecx, eax
007E9043: mov edx, esi
007E9045: call 00410940h ; msvbvm60.dll.__vbaVarZero
007E904A: push 00000000h
007E904C: push 8001000Bh
007E9051: mov eax, [ebp+08h]
007E9054: mov eax, [eax]
007E9056: push [ebp+08h]
007E9059: call [eax+00000324h]
007E905F: push eax
007E9060: lea eax, var_00000094
007E9066: push eax
007E9067: call 00410A84h ; Set (object)
007E906C: push eax
007E906D: lea eax, var_000000D8
007E9073: push eax
007E9074: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E9079: add esp, 00000010h
007E907C: push eax
007E907D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E9082: mov edx, eax
007E9084: lea ecx, var_58
007E9087: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E908C: push eax
007E908D: push var_34
007E9090: call 00410A18h ; &
007E9095: mov var_00000100, eax
007E909B: mov var_00000108, 00000008h
007E90A5: lea esi, var_00000108
007E90AB: push 00000001h
007E90AD: push var_0000012C
007E90B3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E90B8: mov ecx, eax
007E90BA: mov edx, esi
007E90BC: call 00410940h ; msvbvm60.dll.__vbaVarZero
007E90C1: push 00000000h
007E90C3: push 8001000Bh
007E90C8: mov eax, [ebp+08h]
007E90CB: mov eax, [eax]
007E90CD: push [ebp+08h]
007E90D0: call [eax+00000324h]
007E90D6: push eax
007E90D7: lea eax, var_00000098
007E90DD: push eax
007E90DE: call 00410A84h ; Set (object)
007E90E3: push eax
007E90E4: lea eax, var_000000E8
007E90EA: push eax
007E90EB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E90F0: add esp, 00000010h
007E90F3: push eax
007E90F4: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E90F9: mov var_00000110, eax
007E90FF: mov var_00000118, 00000008h
007E9109: lea esi, var_00000118
007E910F: push 00000002h
007E9111: push var_0000012C
007E9117: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007E911C: mov ecx, eax
007E911E: mov edx, esi
007E9120: call 00410940h ; msvbvm60.dll.__vbaVarZero
007E9125: mov edx, 0043DA10h ; x120
007E912A: lea ecx, var_5C
007E912D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007E9132: lea eax, var_0000012C
007E9138: push eax
007E9139: lea eax, var_5C
007E913C: push eax
007E913D: fld real8 ptr var_000001AC
007E9143: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007E9148: push eax
007E9149: call 007A6910h
007E914E: lea eax, var_0000012C
007E9154: push eax
007E9155: push 00000000h
007E9157: call 00410934h ; Erase
007E915C: lea eax, var_5C
007E915F: push eax
007E9160: lea eax, var_58
007E9163: push eax
007E9164: lea eax, var_50
007E9167: push eax
007E9168: lea eax, var_54
007E916B: push eax
007E916C: lea eax, var_4C
007E916F: push eax
007E9170: push 00000005h
007E9172: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E9177: add esp, 00000018h
007E917A: lea eax, var_00000098
007E9180: push eax
007E9181: lea eax, var_00000094
007E9187: push eax
007E9188: lea eax, var_00000090
007E918E: push eax
007E918F: lea eax, var_0000008C
007E9195: push eax
007E9196: lea eax, var_00000088
007E919C: push eax
007E919D: push 00000005h
007E919F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E91A4: add esp, 00000018h
007E91A7: lea eax, var_000000E8
007E91AD: push eax
007E91AE: lea eax, var_000000D8
007E91B4: push eax
007E91B5: lea eax, var_000000C8
007E91BB: push eax
007E91BC: lea eax, var_000000B8
007E91C2: push eax
007E91C3: push 00000004h
007E91C5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E91CA: add esp, 00000014h
007E91CD: jmp 007EDCD8h
007E91D2: mov var_04, 00000011h
007E91D9: lea eax, var_50
007E91DC: push eax
007E91DD: mov eax, [ebp+08h]
007E91E0: mov eax, [eax]
007E91E2: push [ebp+08h]
007E91E5: call [eax+000001C0h]
007E91EB: fclex 
007E91ED: mov var_000001B4, eax
007E91F3: cmp var_000001B4, 00000000h
007E91FA: jnl 7E921Ch
007E91FC: push 000001C0h
007E9201: push 0044420Ch
007E9206: push [ebp+08h]
007E9209: push var_000001B4
007E920F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E9214: mov var_0000025C, eax
007E921A: jmp 7E9223h
007E921C: and var_0000025C, 00000000h
007E9223: push var_50
007E9226: call 004109DCh ; Val(arg_1)
007E922B: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E9230: dec eax
007E9231: mov var_000001B8, eax
007E9237: cmp var_000001B8, 0000FF4Bh
007E9241: jnb 7E924Ch
007E9243: and var_00000260, 00000000h
007E924A: jmp 7E9257h
007E924C: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E9251: mov var_00000260, eax
007E9257: mov eax, var_000001B8
007E925D: mov ecx, [008F2234h]
007E9263: cmp [ecx+eax*4], 00000000h
007E9267: jnz 007E939Dh
007E926D: lea eax, var_50
007E9270: push eax
007E9271: mov eax, [ebp+08h]
007E9274: mov eax, [eax]
007E9276: push [ebp+08h]
007E9279: call [eax+000001C0h]
007E927F: fclex 
007E9281: mov var_000001B4, eax
007E9287: cmp var_000001B4, 00000000h
007E928E: jnl 7E92B0h
007E9290: push 000001C0h
007E9295: push 0044420Ch
007E929A: push [ebp+08h]
007E929D: push var_000001B4
007E92A3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E92A8: mov var_00000264, eax
007E92AE: jmp 7E92B7h
007E92B0: and var_00000264, 00000000h
007E92B7: push var_50
007E92BA: call 004109DCh ; Val(arg_1)
007E92BF: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E92C4: dec eax
007E92C5: mov var_000001B8, eax
007E92CB: cmp var_000001B8, 0000FF4Bh
007E92D5: jnb 7E92E0h
007E92D7: and var_00000268, 00000000h
007E92DE: jmp 7E92EBh
007E92E0: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E92E5: mov var_00000268, eax
007E92EB: mov eax, var_000001B8
007E92F1: mov ecx, [008F2234h]
007E92F7: lea eax, [ecx+eax*4]
007E92FA: push eax
007E92FB: push 00422664h
007E9300: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E9305: lea eax, var_50
007E9308: push eax
007E9309: mov eax, [ebp+08h]
007E930C: mov eax, [eax]
007E930E: push [ebp+08h]
007E9311: call [eax+000001C0h]
007E9317: fclex 
007E9319: mov var_000001B4, eax
007E931F: cmp var_000001B4, 00000000h
007E9326: jnl 7E9348h
007E9328: push 000001C0h
007E932D: push 0044420Ch
007E9332: push [ebp+08h]
007E9335: push var_000001B4
007E933B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E9340: mov var_0000026C, eax
007E9346: jmp 7E934Fh
007E9348: and var_0000026C, 00000000h
007E934F: push var_50
007E9352: call 004109DCh ; Val(arg_1)
007E9357: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E935C: dec eax
007E935D: mov var_000001B8, eax
007E9363: cmp var_000001B8, 0000FF4Bh
007E936D: jnb 7E9378h
007E936F: and var_00000270, 00000000h
007E9376: jmp 7E9383h
007E9378: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E937D: mov var_00000270, eax
007E9383: mov eax, var_000001B8
007E9389: mov ecx, [008F2234h]
007E938F: lea eax, [ecx+eax*4]
007E9392: mov var_00000274, eax
007E9398: jmp 007E9430h
007E939D: lea eax, var_50
007E93A0: push eax
007E93A1: mov eax, [ebp+08h]
007E93A4: mov eax, [eax]
007E93A6: push [ebp+08h]
007E93A9: call [eax+000001C0h]
007E93AF: fclex 
007E93B1: mov var_000001B4, eax
007E93B7: cmp var_000001B4, 00000000h
007E93BE: jnl 7E93E0h
007E93C0: push 000001C0h
007E93C5: push 0044420Ch
007E93CA: push [ebp+08h]
007E93CD: push var_000001B4
007E93D3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E93D8: mov var_00000278, eax
007E93DE: jmp 7E93E7h
007E93E0: and var_00000278, 00000000h
007E93E7: push var_50
007E93EA: call 004109DCh ; Val(arg_1)
007E93EF: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E93F4: dec eax
007E93F5: mov var_000001B8, eax
007E93FB: cmp var_000001B8, 0000FF4Bh
007E9405: jnb 7E9410h
007E9407: and var_0000027C, 00000000h
007E940E: jmp 7E941Bh
007E9410: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E9415: mov var_0000027C, eax
007E941B: mov eax, var_000001B8
007E9421: mov ecx, [008F2234h]
007E9427: lea eax, [ecx+eax*4]
007E942A: mov var_00000274, eax
007E9430: mov eax, var_00000274
007E9436: mov eax, [eax]
007E9438: mov var_000001BC, eax
007E943E: lea eax, var_4C
007E9441: push eax
007E9442: mov eax, [ebp+08h]
007E9445: mov eax, [eax]
007E9447: push [ebp+08h]
007E944A: call [eax+000001C0h]
007E9450: fclex 
007E9452: mov var_000001B0, eax
007E9458: cmp var_000001B0, 00000000h
007E945F: jnl 7E9481h
007E9461: push 000001C0h
007E9466: push 0044420Ch
007E946B: push [ebp+08h]
007E946E: push var_000001B0
007E9474: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E9479: mov var_00000280, eax
007E947F: jmp 7E9488h
007E9481: and var_00000280, 00000000h
007E9488: push var_4C
007E948B: mov eax, var_000001BC
007E9491: mov eax, [eax]
007E9493: push var_000001BC
007E9499: call [eax+000001C4h]
007E949F: fclex 
007E94A1: mov var_000001C0, eax
007E94A7: cmp var_000001C0, 00000000h
007E94AE: jnl 7E94D3h
007E94B0: push 000001C4h
007E94B5: push 00445034h
007E94BA: push var_000001BC
007E94C0: push var_000001C0
007E94C6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E94CB: mov var_00000284, eax
007E94D1: jmp 7E94DAh
007E94D3: and var_00000284, 00000000h
007E94DA: lea eax, var_4C
007E94DD: push eax
007E94DE: lea eax, var_50
007E94E1: push eax
007E94E2: push 00000002h
007E94E4: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E94E9: add esp, 0000000Ch
007E94EC: mov var_04, 00000012h
007E94F3: lea eax, var_6C
007E94F6: push eax
007E94F7: mov eax, [ebp+08h]
007E94FA: mov eax, [eax]
007E94FC: push [ebp+08h]
007E94FF: call [eax+000001C0h]
007E9505: fclex 
007E9507: mov var_000001B8, eax
007E950D: cmp var_000001B8, 00000000h
007E9514: jnl 7E9536h
007E9516: push 000001C0h
007E951B: push 0044420Ch
007E9520: push [ebp+08h]
007E9523: push var_000001B8
007E9529: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E952E: mov var_00000288, eax
007E9534: jmp 7E953Dh
007E9536: and var_00000288, 00000000h
007E953D: push var_6C
007E9540: call 004109DCh ; Val(arg_1)
007E9545: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E954A: dec eax
007E954B: mov var_000001BC, eax
007E9551: cmp var_000001BC, 0000FF4Bh
007E955B: jnb 7E9566h
007E955D: and var_0000028C, 00000000h
007E9564: jmp 7E9571h
007E9566: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E956B: mov var_0000028C, eax
007E9571: mov eax, var_000001BC
007E9577: mov ecx, [008F2234h]
007E957D: cmp [ecx+eax*4], 00000000h
007E9581: jnz 007E96B7h
007E9587: lea eax, var_6C
007E958A: push eax
007E958B: mov eax, [ebp+08h]
007E958E: mov eax, [eax]
007E9590: push [ebp+08h]
007E9593: call [eax+000001C0h]
007E9599: fclex 
007E959B: mov var_000001B8, eax
007E95A1: cmp var_000001B8, 00000000h
007E95A8: jnl 7E95CAh
007E95AA: push 000001C0h
007E95AF: push 0044420Ch
007E95B4: push [ebp+08h]
007E95B7: push var_000001B8
007E95BD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E95C2: mov var_00000290, eax
007E95C8: jmp 7E95D1h
007E95CA: and var_00000290, 00000000h
007E95D1: push var_6C
007E95D4: call 004109DCh ; Val(arg_1)
007E95D9: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E95DE: dec eax
007E95DF: mov var_000001BC, eax
007E95E5: cmp var_000001BC, 0000FF4Bh
007E95EF: jnb 7E95FAh
007E95F1: and var_00000294, 00000000h
007E95F8: jmp 7E9605h
007E95FA: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E95FF: mov var_00000294, eax
007E9605: mov eax, var_000001BC
007E960B: mov ecx, [008F2234h]
007E9611: lea eax, [ecx+eax*4]
007E9614: push eax
007E9615: push 00422664h
007E961A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E961F: lea eax, var_6C
007E9622: push eax
007E9623: mov eax, [ebp+08h]
007E9626: mov eax, [eax]
007E9628: push [ebp+08h]
007E962B: call [eax+000001C0h]
007E9631: fclex 
007E9633: mov var_000001B8, eax
007E9639: cmp var_000001B8, 00000000h
007E9640: jnl 7E9662h
007E9642: push 000001C0h
007E9647: push 0044420Ch
007E964C: push [ebp+08h]
007E964F: push var_000001B8
007E9655: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E965A: mov var_00000298, eax
007E9660: jmp 7E9669h
007E9662: and var_00000298, 00000000h
007E9669: push var_6C
007E966C: call 004109DCh ; Val(arg_1)
007E9671: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E9676: dec eax
007E9677: mov var_000001BC, eax
007E967D: cmp var_000001BC, 0000FF4Bh
007E9687: jnb 7E9692h
007E9689: and var_0000029C, 00000000h
007E9690: jmp 7E969Dh
007E9692: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E9697: mov var_0000029C, eax
007E969D: mov eax, var_000001BC
007E96A3: mov ecx, [008F2234h]
007E96A9: lea eax, [ecx+eax*4]
007E96AC: mov var_000002A0, eax
007E96B2: jmp 007E974Ah
007E96B7: lea eax, var_6C
007E96BA: push eax
007E96BB: mov eax, [ebp+08h]
007E96BE: mov eax, [eax]
007E96C0: push [ebp+08h]
007E96C3: call [eax+000001C0h]
007E96C9: fclex 
007E96CB: mov var_000001B8, eax
007E96D1: cmp var_000001B8, 00000000h
007E96D8: jnl 7E96FAh
007E96DA: push 000001C0h
007E96DF: push 0044420Ch
007E96E4: push [ebp+08h]
007E96E7: push var_000001B8
007E96ED: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E96F2: mov var_000002A4, eax
007E96F8: jmp 7E9701h
007E96FA: and var_000002A4, 00000000h
007E9701: push var_6C
007E9704: call 004109DCh ; Val(arg_1)
007E9709: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E970E: dec eax
007E970F: mov var_000001BC, eax
007E9715: cmp var_000001BC, 0000FF4Bh
007E971F: jnb 7E972Ah
007E9721: and var_000002A8, 00000000h
007E9728: jmp 7E9735h
007E972A: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E972F: mov var_000002A8, eax
007E9735: mov eax, var_000001BC
007E973B: mov ecx, [008F2234h]
007E9741: lea eax, [ecx+eax*4]
007E9744: mov var_000002A0, eax
007E974A: mov eax, var_000002A0
007E9750: mov eax, [eax]
007E9752: mov var_000001C0, eax
007E9758: mov var_00000144, 00000001h
007E9762: mov var_0000014C, 00000003h
007E976C: lea eax, var_4C
007E976F: push eax
007E9770: mov eax, [ebp+08h]
007E9773: mov eax, [eax]
007E9775: push [ebp+08h]
007E9778: call [eax+000001C0h]
007E977E: fclex 
007E9780: mov var_000001B0, eax
007E9786: cmp var_000001B0, 00000000h
007E978D: jnl 7E97AFh
007E978F: push 000001C0h
007E9794: push 0044420Ch
007E9799: push [ebp+08h]
007E979C: push var_000001B0
007E97A2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E97A7: mov var_000002AC, eax
007E97AD: jmp 7E97B6h
007E97AF: and var_000002AC, 00000000h
007E97B6: push var_4C
007E97B9: call 004109DCh ; Val(arg_1)
007E97BE: push ecx
007E97BF: push ecx
007E97C0: fstp real8 ptr [esp]
007E97C3: call 00410790h ; msvbvm60.dll.__vbaStrR8
007E97C8: mov edx, eax
007E97CA: lea ecx, var_50
007E97CD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E97D2: push eax
007E97D3: push 004417CCh ; sck
007E97D8: call 00410A18h ; &
007E97DD: mov var_000000C0, eax
007E97E3: mov var_000000C8, 00000008h
007E97ED: cmp [008F2010h], 00000000h
007E97F4: jnz 7E9811h
007E97F6: push 008F2010h
007E97FB: push 00433984h
007E9800: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E9805: mov var_000002B0, 008F2010h
007E980F: jmp 7E981Bh
007E9811: mov var_000002B0, 008F2010h
007E981B: mov var_00000174, 00000007h
007E9825: mov var_0000017C, 00000003h
007E982F: lea eax, var_5C
007E9832: push eax
007E9833: mov eax, [ebp+08h]
007E9836: mov eax, [eax]
007E9838: push [ebp+08h]
007E983B: call [eax+000001C0h]
007E9841: fclex 
007E9843: mov var_000001B4, eax
007E9849: cmp var_000001B4, 00000000h
007E9850: jnl 7E9872h
007E9852: push 000001C0h
007E9857: push 0044420Ch
007E985C: push [ebp+08h]
007E985F: push var_000001B4
007E9865: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E986A: mov var_000002B4, eax
007E9870: jmp 7E9879h
007E9872: and var_000002B4, 00000000h
007E9879: push var_5C
007E987C: call 004109DCh ; Val(arg_1)
007E9881: push ecx
007E9882: push ecx
007E9883: fstp real8 ptr [esp]
007E9886: call 00410790h ; msvbvm60.dll.__vbaStrR8
007E988B: mov edx, eax
007E988D: lea ecx, var_60
007E9890: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E9895: push eax
007E9896: push 004417CCh ; sck
007E989B: call 00410A18h ; &
007E98A0: mov var_00000100, eax
007E98A6: mov var_00000108, 00000008h
007E98B0: cmp [008F2010h], 00000000h
007E98B7: jnz 7E98D4h
007E98B9: push 008F2010h
007E98BE: push 00433984h
007E98C3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E98C8: mov var_000002B8, 008F2010h
007E98D2: jmp 7E98DEh
007E98D4: mov var_000002B8, 008F2010h
007E98DE: push 00450548h ; Search files -
007E98E3: push 00000010h
007E98E5: pop eax
007E98E6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E98EB: lea esi, var_0000014C
007E98F1: mov edi, esp
007E98F3: movsd 
007E98F4: movsd 
007E98F5: movsd 
007E98F6: movsd 
007E98F7: push 00000001h
007E98F9: push 00000010h
007E98FB: push 00440E58h
007E9900: push 00000010h
007E9902: pop eax
007E9903: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E9908: lea esi, var_000000C8
007E990E: mov edi, esp
007E9910: movsd 
007E9911: movsd 
007E9912: movsd 
007E9913: movsd 
007E9914: push 00000001h
007E9916: push 00000000h
007E9918: push 00440E48h
007E991D: push 00000000h
007E991F: push 00000018h
007E9921: mov eax, var_000002B0
007E9927: mov eax, [eax]
007E9929: mov ecx, var_000002B0
007E992F: mov ecx, [ecx]
007E9931: mov ecx, [ecx]
007E9933: push eax
007E9934: call [ecx+00000550h]
007E993A: push eax
007E993B: lea eax, var_00000088
007E9941: push eax
007E9942: call 00410A84h ; Set (object)
007E9947: push eax
007E9948: lea eax, var_000000B8
007E994E: push eax
007E994F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E9954: add esp, 00000010h
007E9957: push eax
007E9958: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E995D: push eax
007E995E: lea eax, var_0000008C
007E9964: push eax
007E9965: call 00410A84h ; Set (object)
007E996A: push eax
007E996B: lea eax, var_000000D8
007E9971: push eax
007E9972: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E9977: add esp, 00000020h
007E997A: push eax
007E997B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E9980: push eax
007E9981: lea eax, var_00000090
007E9987: push eax
007E9988: call 00410A84h ; Set (object)
007E998D: push eax
007E998E: lea eax, var_000000E8
007E9994: push eax
007E9995: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E999A: add esp, 00000020h
007E999D: push eax
007E999E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E99A3: mov edx, eax
007E99A5: lea ecx, var_54
007E99A8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E99AD: push eax
007E99AE: call 00410A18h ; &
007E99B3: mov edx, eax
007E99B5: lea ecx, var_58
007E99B8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E99BD: push eax
007E99BE: push 00441740h
007E99C3: call 00410A18h ; &
007E99C8: mov edx, eax
007E99CA: lea ecx, var_64
007E99CD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E99D2: push eax
007E99D3: push 00000010h
007E99D5: pop eax
007E99D6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E99DB: lea esi, var_0000017C
007E99E1: mov edi, esp
007E99E3: movsd 
007E99E4: movsd 
007E99E5: movsd 
007E99E6: movsd 
007E99E7: push 00000001h
007E99E9: push 00000010h
007E99EB: push 00440E58h
007E99F0: push 00000010h
007E99F2: pop eax
007E99F3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007E99F8: lea esi, var_00000108
007E99FE: mov edi, esp
007E9A00: movsd 
007E9A01: movsd 
007E9A02: movsd 
007E9A03: movsd 
007E9A04: push 00000001h
007E9A06: push 00000000h
007E9A08: push 00440E48h
007E9A0D: push 00000000h
007E9A0F: push 00000018h
007E9A11: mov eax, var_000002B8
007E9A17: mov eax, [eax]
007E9A19: mov ecx, var_000002B8
007E9A1F: mov ecx, [ecx]
007E9A21: mov ecx, [ecx]
007E9A23: push eax
007E9A24: call [ecx+00000550h]
007E9A2A: push eax
007E9A2B: lea eax, var_00000094
007E9A31: push eax
007E9A32: call 00410A84h ; Set (object)
007E9A37: push eax
007E9A38: lea eax, var_000000F8
007E9A3E: push eax
007E9A3F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E9A44: add esp, 00000010h
007E9A47: push eax
007E9A48: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E9A4D: push eax
007E9A4E: lea eax, var_00000098
007E9A54: push eax
007E9A55: call 00410A84h ; Set (object)
007E9A5A: push eax
007E9A5B: lea eax, var_00000118
007E9A61: push eax
007E9A62: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E9A67: add esp, 00000020h
007E9A6A: push eax
007E9A6B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007E9A70: push eax
007E9A71: lea eax, var_0000009C
007E9A77: push eax
007E9A78: call 00410A84h ; Set (object)
007E9A7D: push eax
007E9A7E: lea eax, var_00000128
007E9A84: push eax
007E9A85: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E9A8A: add esp, 00000020h
007E9A8D: push eax
007E9A8E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E9A93: mov edx, eax
007E9A95: lea ecx, var_68
007E9A98: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E9A9D: push eax
007E9A9E: call 00410A18h ; &
007E9AA3: mov edx, eax
007E9AA5: lea ecx, var_70
007E9AA8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E9AAD: push eax
007E9AAE: mov eax, var_000001C0
007E9AB4: mov eax, [eax]
007E9AB6: push var_000001C0
007E9ABC: call [eax+54h]
007E9ABF: fclex 
007E9AC1: mov var_000001C4, eax
007E9AC7: cmp var_000001C4, 00000000h
007E9ACE: jnl 7E9AF0h
007E9AD0: push 00000054h
007E9AD2: push 00445034h
007E9AD7: push var_000001C0
007E9ADD: push var_000001C4
007E9AE3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E9AE8: mov var_000002BC, eax
007E9AEE: jmp 7E9AF7h
007E9AF0: and var_000002BC, 00000000h
007E9AF7: lea eax, var_70
007E9AFA: push eax
007E9AFB: lea eax, var_6C
007E9AFE: push eax
007E9AFF: lea eax, var_68
007E9B02: push eax
007E9B03: lea eax, var_64
007E9B06: push eax
007E9B07: lea eax, var_60
007E9B0A: push eax
007E9B0B: lea eax, var_5C
007E9B0E: push eax
007E9B0F: lea eax, var_58
007E9B12: push eax
007E9B13: lea eax, var_54
007E9B16: push eax
007E9B17: lea eax, var_50
007E9B1A: push eax
007E9B1B: lea eax, var_4C
007E9B1E: push eax
007E9B1F: push 0000000Ah
007E9B21: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E9B26: add esp, 0000002Ch
007E9B29: lea eax, var_0000009C
007E9B2F: push eax
007E9B30: lea eax, var_00000098
007E9B36: push eax
007E9B37: lea eax, var_00000094
007E9B3D: push eax
007E9B3E: lea eax, var_00000090
007E9B44: push eax
007E9B45: lea eax, var_0000008C
007E9B4B: push eax
007E9B4C: lea eax, var_00000088
007E9B52: push eax
007E9B53: push 00000006h
007E9B55: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E9B5A: add esp, 0000001Ch
007E9B5D: lea eax, var_00000128
007E9B63: push eax
007E9B64: lea eax, var_00000118
007E9B6A: push eax
007E9B6B: lea eax, var_00000108
007E9B71: push eax
007E9B72: lea eax, var_000000F8
007E9B78: push eax
007E9B79: lea eax, var_000000E8
007E9B7F: push eax
007E9B80: lea eax, var_000000D8
007E9B86: push eax
007E9B87: lea eax, var_000000C8
007E9B8D: push eax
007E9B8E: lea eax, var_000000B8
007E9B94: push eax
007E9B95: push 00000008h
007E9B97: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007E9B9C: add esp, 00000024h
007E9B9F: mov var_04, 00000013h
007E9BA6: lea eax, var_4C
007E9BA9: push eax
007E9BAA: mov eax, [ebp+08h]
007E9BAD: mov eax, [eax]
007E9BAF: push [ebp+08h]
007E9BB2: call [eax+000001C0h]
007E9BB8: fclex 
007E9BBA: mov var_000001B0, eax
007E9BC0: cmp var_000001B0, 00000000h
007E9BC7: jnl 7E9BE9h
007E9BC9: push 000001C0h
007E9BCE: push 0044420Ch
007E9BD3: push [ebp+08h]
007E9BD6: push var_000001B0
007E9BDC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E9BE1: mov var_000002C0, eax
007E9BE7: jmp 7E9BF0h
007E9BE9: and var_000002C0, 00000000h
007E9BF0: push var_4C
007E9BF3: call 004109DCh ; Val(arg_1)
007E9BF8: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E9BFD: dec eax
007E9BFE: mov var_000001B4, eax
007E9C04: cmp var_000001B4, 0000FF4Bh
007E9C0E: jnb 7E9C19h
007E9C10: and var_000002C4, 00000000h
007E9C17: jmp 7E9C24h
007E9C19: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E9C1E: mov var_000002C4, eax
007E9C24: mov eax, var_000001B4
007E9C2A: mov ecx, [008F2234h]
007E9C30: cmp [ecx+eax*4], 00000000h
007E9C34: jnz 007E9D6Ah
007E9C3A: lea eax, var_4C
007E9C3D: push eax
007E9C3E: mov eax, [ebp+08h]
007E9C41: mov eax, [eax]
007E9C43: push [ebp+08h]
007E9C46: call [eax+000001C0h]
007E9C4C: fclex 
007E9C4E: mov var_000001B0, eax
007E9C54: cmp var_000001B0, 00000000h
007E9C5B: jnl 7E9C7Dh
007E9C5D: push 000001C0h
007E9C62: push 0044420Ch
007E9C67: push [ebp+08h]
007E9C6A: push var_000001B0
007E9C70: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E9C75: mov var_000002C8, eax
007E9C7B: jmp 7E9C84h
007E9C7D: and var_000002C8, 00000000h
007E9C84: push var_4C
007E9C87: call 004109DCh ; Val(arg_1)
007E9C8C: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E9C91: dec eax
007E9C92: mov var_000001B4, eax
007E9C98: cmp var_000001B4, 0000FF4Bh
007E9CA2: jnb 7E9CADh
007E9CA4: and var_000002CC, 00000000h
007E9CAB: jmp 7E9CB8h
007E9CAD: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E9CB2: mov var_000002CC, eax
007E9CB8: mov eax, var_000001B4
007E9CBE: mov ecx, [008F2234h]
007E9CC4: lea eax, [ecx+eax*4]
007E9CC7: push eax
007E9CC8: push 00422664h
007E9CCD: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007E9CD2: lea eax, var_4C
007E9CD5: push eax
007E9CD6: mov eax, [ebp+08h]
007E9CD9: mov eax, [eax]
007E9CDB: push [ebp+08h]
007E9CDE: call [eax+000001C0h]
007E9CE4: fclex 
007E9CE6: mov var_000001B0, eax
007E9CEC: cmp var_000001B0, 00000000h
007E9CF3: jnl 7E9D15h
007E9CF5: push 000001C0h
007E9CFA: push 0044420Ch
007E9CFF: push [ebp+08h]
007E9D02: push var_000001B0
007E9D08: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E9D0D: mov var_000002D0, eax
007E9D13: jmp 7E9D1Ch
007E9D15: and var_000002D0, 00000000h
007E9D1C: push var_4C
007E9D1F: call 004109DCh ; Val(arg_1)
007E9D24: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E9D29: dec eax
007E9D2A: mov var_000001B4, eax
007E9D30: cmp var_000001B4, 0000FF4Bh
007E9D3A: jnb 7E9D45h
007E9D3C: and var_000002D4, 00000000h
007E9D43: jmp 7E9D50h
007E9D45: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E9D4A: mov var_000002D4, eax
007E9D50: mov eax, var_000001B4
007E9D56: mov ecx, [008F2234h]
007E9D5C: lea eax, [ecx+eax*4]
007E9D5F: mov var_000002D8, eax
007E9D65: jmp 007E9DFDh
007E9D6A: lea eax, var_4C
007E9D6D: push eax
007E9D6E: mov eax, [ebp+08h]
007E9D71: mov eax, [eax]
007E9D73: push [ebp+08h]
007E9D76: call [eax+000001C0h]
007E9D7C: fclex 
007E9D7E: mov var_000001B0, eax
007E9D84: cmp var_000001B0, 00000000h
007E9D8B: jnl 7E9DADh
007E9D8D: push 000001C0h
007E9D92: push 0044420Ch
007E9D97: push [ebp+08h]
007E9D9A: push var_000001B0
007E9DA0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E9DA5: mov var_000002DC, eax
007E9DAB: jmp 7E9DB4h
007E9DAD: and var_000002DC, 00000000h
007E9DB4: push var_4C
007E9DB7: call 004109DCh ; Val(arg_1)
007E9DBC: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E9DC1: dec eax
007E9DC2: mov var_000001B4, eax
007E9DC8: cmp var_000001B4, 0000FF4Bh
007E9DD2: jnb 7E9DDDh
007E9DD4: and var_000002E0, 00000000h
007E9DDB: jmp 7E9DE8h
007E9DDD: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E9DE2: mov var_000002E0, eax
007E9DE8: mov eax, var_000001B4
007E9DEE: mov ecx, [008F2234h]
007E9DF4: lea eax, [ecx+eax*4]
007E9DF7: mov var_000002D8, eax
007E9DFD: mov eax, var_000002D8
007E9E03: mov eax, [eax]
007E9E05: mov ecx, var_000002D8
007E9E0B: mov ecx, [ecx]
007E9E0D: mov ecx, [ecx]
007E9E0F: push eax
007E9E10: call [ecx+00000314h]
007E9E16: push eax
007E9E17: lea eax, var_0000008C
007E9E1D: push eax
007E9E1E: call 00410A84h ; Set (object)
007E9E23: mov var_000001B8, eax
007E9E29: push 00000000h
007E9E2B: push 8001000Bh
007E9E30: mov eax, [ebp+08h]
007E9E33: mov eax, [eax]
007E9E35: push [ebp+08h]
007E9E38: call [eax+00000324h]
007E9E3E: push eax
007E9E3F: lea eax, var_00000088
007E9E45: push eax
007E9E46: call 00410A84h ; Set (object)
007E9E4B: push eax
007E9E4C: lea eax, var_000000B8
007E9E52: push eax
007E9E53: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007E9E58: add esp, 00000010h
007E9E5B: push eax
007E9E5C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007E9E61: mov edx, eax
007E9E63: lea ecx, var_50
007E9E66: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007E9E6B: push eax
007E9E6C: mov eax, var_000001B8
007E9E72: mov eax, [eax]
007E9E74: push var_000001B8
007E9E7A: call [eax+54h]
007E9E7D: fclex 
007E9E7F: mov var_000001BC, eax
007E9E85: cmp var_000001BC, 00000000h
007E9E8C: jnl 7E9EAEh
007E9E8E: push 00000054h
007E9E90: push 004425E4h
007E9E95: push var_000001B8
007E9E9B: push var_000001BC
007E9EA1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E9EA6: mov var_000002E4, eax
007E9EAC: jmp 7E9EB5h
007E9EAE: and var_000002E4, 00000000h
007E9EB5: lea eax, var_50
007E9EB8: push eax
007E9EB9: lea eax, var_4C
007E9EBC: push eax
007E9EBD: push 00000002h
007E9EBF: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007E9EC4: add esp, 0000000Ch
007E9EC7: lea eax, var_0000008C
007E9ECD: push eax
007E9ECE: lea eax, var_00000088
007E9ED4: push eax
007E9ED5: push 00000002h
007E9ED7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007E9EDC: add esp, 0000000Ch
007E9EDF: lea ecx, var_000000B8
007E9EE5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007E9EEA: mov var_04, 00000014h
007E9EF1: lea eax, var_4C
007E9EF4: push eax
007E9EF5: mov eax, [ebp+08h]
007E9EF8: mov eax, [eax]
007E9EFA: push [ebp+08h]
007E9EFD: call [eax+000001C0h]
007E9F03: fclex 
007E9F05: mov var_000001B0, eax
007E9F0B: cmp var_000001B0, 00000000h
007E9F12: jnl 7E9F34h
007E9F14: push 000001C0h
007E9F19: push 0044420Ch
007E9F1E: push [ebp+08h]
007E9F21: push var_000001B0
007E9F27: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E9F2C: mov var_000002E8, eax
007E9F32: jmp 7E9F3Bh
007E9F34: and var_000002E8, 00000000h
007E9F3B: push var_4C
007E9F3E: call 004109DCh ; Val(arg_1)
007E9F43: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E9F48: dec eax
007E9F49: mov var_000001B4, eax
007E9F4F: cmp var_000001B4, 0000FF4Bh
007E9F59: jnb 7E9F64h
007E9F5B: and var_000002EC, 00000000h
007E9F62: jmp 7E9F6Fh
007E9F64: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E9F69: mov var_000002EC, eax
007E9F6F: mov eax, var_000001B4
007E9F75: mov ecx, [008F2234h]
007E9F7B: cmp [ecx+eax*4], 00000000h
007E9F7F: jnz 007EA0B5h
007E9F85: lea eax, var_4C
007E9F88: push eax
007E9F89: mov eax, [ebp+08h]
007E9F8C: mov eax, [eax]
007E9F8E: push [ebp+08h]
007E9F91: call [eax+000001C0h]
007E9F97: fclex 
007E9F99: mov var_000001B0, eax
007E9F9F: cmp var_000001B0, 00000000h
007E9FA6: jnl 7E9FC8h
007E9FA8: push 000001C0h
007E9FAD: push 0044420Ch
007E9FB2: push [ebp+08h]
007E9FB5: push var_000001B0
007E9FBB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007E9FC0: mov var_000002F0, eax
007E9FC6: jmp 7E9FCFh
007E9FC8: and var_000002F0, 00000000h
007E9FCF: push var_4C
007E9FD2: call 004109DCh ; Val(arg_1)
007E9FD7: call 00410814h ; msvbvm60.dll.__vbaFpI4
007E9FDC: dec eax
007E9FDD: mov var_000001B4, eax
007E9FE3: cmp var_000001B4, 0000FF4Bh
007E9FED: jnb 7E9FF8h
007E9FEF: and var_000002F4, 00000000h
007E9FF6: jmp 7EA003h
007E9FF8: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007E9FFD: mov var_000002F4, eax
007EA003: mov eax, var_000001B4
007EA009: mov ecx, [008F2234h]
007EA00F: lea eax, [ecx+eax*4]
007EA012: push eax
007EA013: push 00422664h
007EA018: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EA01D: lea eax, var_4C
007EA020: push eax
007EA021: mov eax, [ebp+08h]
007EA024: mov eax, [eax]
007EA026: push [ebp+08h]
007EA029: call [eax+000001C0h]
007EA02F: fclex 
007EA031: mov var_000001B0, eax
007EA037: cmp var_000001B0, 00000000h
007EA03E: jnl 7EA060h
007EA040: push 000001C0h
007EA045: push 0044420Ch
007EA04A: push [ebp+08h]
007EA04D: push var_000001B0
007EA053: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EA058: mov var_000002F8, eax
007EA05E: jmp 7EA067h
007EA060: and var_000002F8, 00000000h
007EA067: push var_4C
007EA06A: call 004109DCh ; Val(arg_1)
007EA06F: call 00410814h ; msvbvm60.dll.__vbaFpI4
007EA074: dec eax
007EA075: mov var_000001B4, eax
007EA07B: cmp var_000001B4, 0000FF4Bh
007EA085: jnb 7EA090h
007EA087: and var_000002FC, 00000000h
007EA08E: jmp 7EA09Bh
007EA090: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007EA095: mov var_000002FC, eax
007EA09B: mov eax, var_000001B4
007EA0A1: mov ecx, [008F2234h]
007EA0A7: lea eax, [ecx+eax*4]
007EA0AA: mov var_00000300, eax
007EA0B0: jmp 007EA148h
007EA0B5: lea eax, var_4C
007EA0B8: push eax
007EA0B9: mov eax, [ebp+08h]
007EA0BC: mov eax, [eax]
007EA0BE: push [ebp+08h]
007EA0C1: call [eax+000001C0h]
007EA0C7: fclex 
007EA0C9: mov var_000001B0, eax
007EA0CF: cmp var_000001B0, 00000000h
007EA0D6: jnl 7EA0F8h
007EA0D8: push 000001C0h
007EA0DD: push 0044420Ch
007EA0E2: push [ebp+08h]
007EA0E5: push var_000001B0
007EA0EB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EA0F0: mov var_00000304, eax
007EA0F6: jmp 7EA0FFh
007EA0F8: and var_00000304, 00000000h
007EA0FF: push var_4C
007EA102: call 004109DCh ; Val(arg_1)
007EA107: call 00410814h ; msvbvm60.dll.__vbaFpI4
007EA10C: dec eax
007EA10D: mov var_000001B4, eax
007EA113: cmp var_000001B4, 0000FF4Bh
007EA11D: jnb 7EA128h
007EA11F: and var_00000308, 00000000h
007EA126: jmp 7EA133h
007EA128: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007EA12D: mov var_00000308, eax
007EA133: mov eax, var_000001B4
007EA139: mov ecx, [008F2234h]
007EA13F: lea eax, [ecx+eax*4]
007EA142: mov var_00000300, eax
007EA148: mov eax, var_00000300
007EA14E: mov eax, [eax]
007EA150: mov var_000001B8, eax
007EA156: mov var_00000144, 80020004h
007EA160: mov var_0000014C, 0000000Ah
007EA16A: mov var_00000134, 80020004h
007EA174: mov var_0000013C, 0000000Ah
007EA17E: push 00000010h
007EA180: pop eax
007EA181: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EA186: lea esi, var_0000014C
007EA18C: mov edi, esp
007EA18E: movsd 
007EA18F: movsd 
007EA190: movsd 
007EA191: movsd 
007EA192: push 00000010h
007EA194: pop eax
007EA195: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EA19A: lea esi, var_0000013C
007EA1A0: mov edi, esp
007EA1A2: movsd 
007EA1A3: movsd 
007EA1A4: movsd 
007EA1A5: movsd 
007EA1A6: mov eax, var_000001B8
007EA1AC: mov eax, [eax]
007EA1AE: push var_000001B8
007EA1B4: call [eax+000002B0h]
007EA1BA: fclex 
007EA1BC: mov var_000001BC, eax
007EA1C2: cmp var_000001BC, 00000000h
007EA1C9: jnl 7EA1EEh
007EA1CB: push 000002B0h
007EA1D0: push 00445034h
007EA1D5: push var_000001B8
007EA1DB: push var_000001BC
007EA1E1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EA1E6: mov var_0000030C, eax
007EA1EC: jmp 7EA1F5h
007EA1EE: and var_0000030C, 00000000h
007EA1F5: lea ecx, var_4C
007EA1F8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007EA1FD: jmp 007EDCD8h
007EA202: mov var_04, 00000016h
007EA209: cmp [008F26E4h], 00000000h
007EA210: jnz 7EA22Dh
007EA212: push 008F26E4h
007EA217: push 00426D8Ch
007EA21C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EA221: mov var_00000310, 008F26E4h
007EA22B: jmp 7EA237h
007EA22D: mov var_00000310, 008F26E4h
007EA237: mov eax, var_00000310
007EA23D: mov eax, [eax]
007EA23F: mov var_000001B4, eax
007EA245: lea eax, var_4C
007EA248: push eax
007EA249: mov eax, [ebp+08h]
007EA24C: mov eax, [eax]
007EA24E: push [ebp+08h]
007EA251: call [eax+000001C0h]
007EA257: fclex 
007EA259: mov var_000001B0, eax
007EA25F: cmp var_000001B0, 00000000h
007EA266: jnl 7EA288h
007EA268: push 000001C0h
007EA26D: push 0044420Ch
007EA272: push [ebp+08h]
007EA275: push var_000001B0
007EA27B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EA280: mov var_00000314, eax
007EA286: jmp 7EA28Fh
007EA288: and var_00000314, 00000000h
007EA28F: push var_4C
007EA292: mov eax, var_000001B4
007EA298: mov eax, [eax]
007EA29A: push var_000001B4
007EA2A0: call [eax+000001C4h]
007EA2A6: fclex 
007EA2A8: mov var_000001B8, eax
007EA2AE: cmp var_000001B8, 00000000h
007EA2B5: jnl 7EA2DAh
007EA2B7: push 000001C4h
007EA2BC: push 0044473Ch
007EA2C1: push var_000001B4
007EA2C7: push var_000001B8
007EA2CD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EA2D2: mov var_00000318, eax
007EA2D8: jmp 7EA2E1h
007EA2DA: and var_00000318, 00000000h
007EA2E1: lea ecx, var_4C
007EA2E4: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007EA2E9: mov var_04, 00000017h
007EA2F0: cmp [008F26E4h], 00000000h
007EA2F7: jnz 7EA314h
007EA2F9: push 008F26E4h
007EA2FE: push 00426D8Ch
007EA303: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EA308: mov var_0000031C, 008F26E4h
007EA312: jmp 7EA31Eh
007EA314: mov var_0000031C, 008F26E4h
007EA31E: mov eax, var_0000031C
007EA324: mov eax, [eax]
007EA326: mov var_000001B0, eax
007EA32C: mov var_00000144, 80020004h
007EA336: mov var_0000014C, 0000000Ah
007EA340: mov var_00000134, 80020004h
007EA34A: mov var_0000013C, 0000000Ah
007EA354: push 00000010h
007EA356: pop eax
007EA357: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EA35C: lea esi, var_0000014C
007EA362: mov edi, esp
007EA364: movsd 
007EA365: movsd 
007EA366: movsd 
007EA367: movsd 
007EA368: push 00000010h
007EA36A: pop eax
007EA36B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EA370: lea esi, var_0000013C
007EA376: mov edi, esp
007EA378: movsd 
007EA379: movsd 
007EA37A: movsd 
007EA37B: movsd 
007EA37C: mov eax, var_000001B0
007EA382: mov eax, [eax]
007EA384: push var_000001B0
007EA38A: call [eax+000002B0h]
007EA390: fclex 
007EA392: mov var_000001B4, eax
007EA398: cmp var_000001B4, 00000000h
007EA39F: jnl 7EA3C4h
007EA3A1: push 000002B0h
007EA3A6: push 0044473Ch
007EA3AB: push var_000001B0
007EA3B1: push var_000001B4
007EA3B7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EA3BC: mov var_00000320, eax
007EA3C2: jmp 7EA3CBh
007EA3C4: and var_00000320, 00000000h
007EA3CB: mov var_04, 00000018h
007EA3D2: cmp [008F26E4h], 00000000h
007EA3D9: jnz 7EA3F6h
007EA3DB: push 008F26E4h
007EA3E0: push 00426D8Ch
007EA3E5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EA3EA: mov var_00000324, 008F26E4h
007EA3F4: jmp 7EA400h
007EA3F6: mov var_00000324, 008F26E4h
007EA400: mov eax, var_00000324
007EA406: mov eax, [eax]
007EA408: mov ecx, var_00000324
007EA40E: mov ecx, [ecx]
007EA410: mov ecx, [ecx]
007EA412: push eax
007EA413: call [ecx+00000310h]
007EA419: push eax
007EA41A: lea eax, var_0000008C
007EA420: push eax
007EA421: call 00410A84h ; Set (object)
007EA426: mov var_000001B0, eax
007EA42C: push 00000000h
007EA42E: push 8001000Bh
007EA433: mov eax, [ebp+08h]
007EA436: mov eax, [eax]
007EA438: push [ebp+08h]
007EA43B: call [eax+00000324h]
007EA441: push eax
007EA442: lea eax, var_00000088
007EA448: push eax
007EA449: call 00410A84h ; Set (object)
007EA44E: push eax
007EA44F: lea eax, var_000000B8
007EA455: push eax
007EA456: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EA45B: add esp, 00000010h
007EA45E: push eax
007EA45F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007EA464: mov edx, eax
007EA466: lea ecx, var_4C
007EA469: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EA46E: push eax
007EA46F: mov eax, var_000001B0
007EA475: mov eax, [eax]
007EA477: push var_000001B0
007EA47D: call [eax+54h]
007EA480: fclex 
007EA482: mov var_000001B4, eax
007EA488: cmp var_000001B4, 00000000h
007EA48F: jnl 7EA4B1h
007EA491: push 00000054h
007EA493: push 004425E4h
007EA498: push var_000001B0
007EA49E: push var_000001B4
007EA4A4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EA4A9: mov var_00000328, eax
007EA4AF: jmp 7EA4B8h
007EA4B1: and var_00000328, 00000000h
007EA4B8: lea ecx, var_4C
007EA4BB: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007EA4C0: lea eax, var_0000008C
007EA4C6: push eax
007EA4C7: lea eax, var_00000088
007EA4CD: push eax
007EA4CE: push 00000002h
007EA4D0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EA4D5: add esp, 0000000Ch
007EA4D8: lea ecx, var_000000B8
007EA4DE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EA4E3: mov var_04, 00000019h
007EA4EA: and var_00000134, 00000000h
007EA4F1: mov var_0000013C, 0000000Bh
007EA4FB: cmp [008F26E4h], 00000000h
007EA502: jnz 7EA51Fh
007EA504: push 008F26E4h
007EA509: push 00426D8Ch
007EA50E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EA513: mov var_0000032C, 008F26E4h
007EA51D: jmp 7EA529h
007EA51F: mov var_0000032C, 008F26E4h
007EA529: push 00000010h
007EA52B: pop eax
007EA52C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EA531: lea esi, var_0000013C
007EA537: mov edi, esp
007EA539: movsd 
007EA53A: movsd 
007EA53B: movsd 
007EA53C: movsd 
007EA53D: push 8001000Dh
007EA542: mov eax, var_0000032C
007EA548: mov eax, [eax]
007EA54A: mov ecx, var_0000032C
007EA550: mov ecx, [ecx]
007EA552: mov ecx, [ecx]
007EA554: push eax
007EA555: call [ecx+00000334h]
007EA55B: push eax
007EA55C: lea eax, var_00000088
007EA562: push eax
007EA563: call 00410A84h ; Set (object)
007EA568: push eax
007EA569: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007EA56E: lea ecx, var_00000088
007EA574: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EA579: jmp 007EDCD8h
007EA57E: mov var_04, 0000001Bh
007EA585: cmp [008F2720h], 00000000h
007EA58C: jnz 7EA5A9h
007EA58E: push 008F2720h
007EA593: push 00420AACh
007EA598: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EA59D: mov var_00000330, 008F2720h
007EA5A7: jmp 7EA5B3h
007EA5A9: mov var_00000330, 008F2720h
007EA5B3: mov eax, var_00000330
007EA5B9: mov eax, [eax]
007EA5BB: mov var_000001B4, eax
007EA5C1: lea eax, var_4C
007EA5C4: push eax
007EA5C5: mov eax, [ebp+08h]
007EA5C8: mov eax, [eax]
007EA5CA: push [ebp+08h]
007EA5CD: call [eax+000001C0h]
007EA5D3: fclex 
007EA5D5: mov var_000001B0, eax
007EA5DB: cmp var_000001B0, 00000000h
007EA5E2: jnl 7EA604h
007EA5E4: push 000001C0h
007EA5E9: push 0044420Ch
007EA5EE: push [ebp+08h]
007EA5F1: push var_000001B0
007EA5F7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EA5FC: mov var_00000334, eax
007EA602: jmp 7EA60Bh
007EA604: and var_00000334, 00000000h
007EA60B: push var_4C
007EA60E: mov eax, var_000001B4
007EA614: mov eax, [eax]
007EA616: push var_000001B4
007EA61C: call [eax+000001C4h]
007EA622: fclex 
007EA624: mov var_000001B8, eax
007EA62A: cmp var_000001B8, 00000000h
007EA631: jnl 7EA656h
007EA633: push 000001C4h
007EA638: push 004449CCh
007EA63D: push var_000001B4
007EA643: push var_000001B8
007EA649: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EA64E: mov var_00000338, eax
007EA654: jmp 7EA65Dh
007EA656: and var_00000338, 00000000h
007EA65D: lea ecx, var_4C
007EA660: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007EA665: mov var_04, 0000001Ch
007EA66C: cmp [008F2720h], 00000000h
007EA673: jnz 7EA690h
007EA675: push 008F2720h
007EA67A: push 00420AACh
007EA67F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EA684: mov var_0000033C, 008F2720h
007EA68E: jmp 7EA69Ah
007EA690: mov var_0000033C, 008F2720h
007EA69A: mov eax, var_0000033C
007EA6A0: mov eax, [eax]
007EA6A2: mov var_000001B0, eax
007EA6A8: mov var_00000144, 80020004h
007EA6B2: mov var_0000014C, 0000000Ah
007EA6BC: mov var_00000134, 80020004h
007EA6C6: mov var_0000013C, 0000000Ah
007EA6D0: push 00000010h
007EA6D2: pop eax
007EA6D3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EA6D8: lea esi, var_0000014C
007EA6DE: mov edi, esp
007EA6E0: movsd 
007EA6E1: movsd 
007EA6E2: movsd 
007EA6E3: movsd 
007EA6E4: push 00000010h
007EA6E6: pop eax
007EA6E7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EA6EC: lea esi, var_0000013C
007EA6F2: mov edi, esp
007EA6F4: movsd 
007EA6F5: movsd 
007EA6F6: movsd 
007EA6F7: movsd 
007EA6F8: mov eax, var_000001B0
007EA6FE: mov eax, [eax]
007EA700: push var_000001B0
007EA706: call [eax+000002B0h]
007EA70C: fclex 
007EA70E: mov var_000001B4, eax
007EA714: cmp var_000001B4, 00000000h
007EA71B: jnl 7EA740h
007EA71D: push 000002B0h
007EA722: push 004449CCh
007EA727: push var_000001B0
007EA72D: push var_000001B4
007EA733: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EA738: mov var_00000340, eax
007EA73E: jmp 7EA747h
007EA740: and var_00000340, 00000000h
007EA747: mov var_04, 0000001Dh
007EA74E: cmp [008F2720h], 00000000h
007EA755: jnz 7EA772h
007EA757: push 008F2720h
007EA75C: push 00420AACh
007EA761: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EA766: mov var_00000344, 008F2720h
007EA770: jmp 7EA77Ch
007EA772: mov var_00000344, 008F2720h
007EA77C: mov eax, var_00000344
007EA782: mov eax, [eax]
007EA784: mov ecx, var_00000344
007EA78A: mov ecx, [ecx]
007EA78C: mov ecx, [ecx]
007EA78E: push eax
007EA78F: call [ecx+00000314h]
007EA795: push eax
007EA796: lea eax, var_0000008C
007EA79C: push eax
007EA79D: call 00410A84h ; Set (object)
007EA7A2: mov var_000001B0, eax
007EA7A8: push 00000000h
007EA7AA: push 8001000Bh
007EA7AF: mov eax, [ebp+08h]
007EA7B2: mov eax, [eax]
007EA7B4: push [ebp+08h]
007EA7B7: call [eax+00000324h]
007EA7BD: push eax
007EA7BE: lea eax, var_00000088
007EA7C4: push eax
007EA7C5: call 00410A84h ; Set (object)
007EA7CA: push eax
007EA7CB: lea eax, var_000000B8
007EA7D1: push eax
007EA7D2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EA7D7: add esp, 00000010h
007EA7DA: push eax
007EA7DB: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007EA7E0: mov edx, eax
007EA7E2: lea ecx, var_4C
007EA7E5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EA7EA: push eax
007EA7EB: mov eax, var_000001B0
007EA7F1: mov eax, [eax]
007EA7F3: push var_000001B0
007EA7F9: call [eax+54h]
007EA7FC: fclex 
007EA7FE: mov var_000001B4, eax
007EA804: cmp var_000001B4, 00000000h
007EA80B: jnl 7EA82Dh
007EA80D: push 00000054h
007EA80F: push 004425E4h
007EA814: push var_000001B0
007EA81A: push var_000001B4
007EA820: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EA825: mov var_00000348, eax
007EA82B: jmp 7EA834h
007EA82D: and var_00000348, 00000000h
007EA834: lea ecx, var_4C
007EA837: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007EA83C: lea eax, var_0000008C
007EA842: push eax
007EA843: lea eax, var_00000088
007EA849: push eax
007EA84A: push 00000002h
007EA84C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EA851: add esp, 0000000Ch
007EA854: lea ecx, var_000000B8
007EA85A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EA85F: mov var_04, 0000001Eh
007EA866: and var_00000134, 00000000h
007EA86D: mov var_0000013C, 0000000Bh
007EA877: cmp [008F2720h], 00000000h
007EA87E: jnz 7EA89Bh
007EA880: push 008F2720h
007EA885: push 00420AACh
007EA88A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EA88F: mov var_0000034C, 008F2720h
007EA899: jmp 7EA8A5h
007EA89B: mov var_0000034C, 008F2720h
007EA8A5: push 00000010h
007EA8A7: pop eax
007EA8A8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EA8AD: lea esi, var_0000013C
007EA8B3: mov edi, esp
007EA8B5: movsd 
007EA8B6: movsd 
007EA8B7: movsd 
007EA8B8: movsd 
007EA8B9: push 8001000Dh
007EA8BE: mov eax, var_0000034C
007EA8C4: mov eax, [eax]
007EA8C6: mov ecx, var_0000034C
007EA8CC: mov ecx, [ecx]
007EA8CE: mov ecx, [ecx]
007EA8D0: push eax
007EA8D1: call [ecx+0000032Ch]
007EA8D7: push eax
007EA8D8: lea eax, var_00000088
007EA8DE: push eax
007EA8DF: call 00410A84h ; Set (object)
007EA8E4: push eax
007EA8E5: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007EA8EA: lea ecx, var_00000088
007EA8F0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EA8F5: jmp 007EDCD8h
007EA8FA: mov var_04, 00000020h
007EA901: and word ptr [008F24F4h], 0000h
007EA909: mov var_04, 00000021h
007EA910: mov var_00000134, 00000001h
007EA91A: mov var_0000013C, 00000002h
007EA924: push 004412BCh
007EA929: push 00000000h
007EA92B: push 00000007h
007EA92D: mov eax, [ebp+08h]
007EA930: mov eax, [eax]
007EA932: push [ebp+08h]
007EA935: call [eax+00000324h]
007EA93B: push eax
007EA93C: lea eax, var_00000088
007EA942: push eax
007EA943: call 00410A84h ; Set (object)
007EA948: push eax
007EA949: lea eax, var_000000B8
007EA94F: push eax
007EA950: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EA955: add esp, 00000010h
007EA958: push eax
007EA959: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EA95E: push eax
007EA95F: lea eax, var_0000008C
007EA965: push eax
007EA966: call 00410A84h ; Set (object)
007EA96B: mov var_000001B0, eax
007EA971: lea eax, var_000001A4
007EA977: push eax
007EA978: mov eax, var_000001B0
007EA97E: mov eax, [eax]
007EA980: push var_000001B0
007EA986: call [eax+1Ch]
007EA989: fclex 
007EA98B: mov var_000001B4, eax
007EA991: cmp var_000001B4, 00000000h
007EA998: jnl 7EA9BAh
007EA99A: push 0000001Ch
007EA99C: push 004412BCh
007EA9A1: push var_000001B0
007EA9A7: push var_000001B4
007EA9AD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EA9B2: mov var_00000350, eax
007EA9B8: jmp 7EA9C1h
007EA9BA: and var_00000350, 00000000h
007EA9C1: mov eax, var_000001A4
007EA9C7: mov var_00000144, eax
007EA9CD: mov var_0000014C, 00000003h
007EA9D7: mov var_00000154, 00000001h
007EA9E1: mov var_0000015C, 00000002h
007EA9EB: lea eax, var_0000013C
007EA9F1: push eax
007EA9F2: lea eax, var_0000014C
007EA9F8: push eax
007EA9F9: lea eax, var_0000015C
007EA9FF: push eax
007EAA00: lea eax, var_000001F0
007EAA06: push eax
007EAA07: lea eax, var_000001E0
007EAA0D: push eax
007EAA0E: lea eax, var_30
007EAA11: push eax
007EAA12: call 00410A3Ch ; For
007EAA17: mov var_0000020C, eax
007EAA1D: lea eax, var_0000008C
007EAA23: push eax
007EAA24: lea eax, var_00000088
007EAA2A: push eax
007EAA2B: push 00000002h
007EAA2D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EAA32: add esp, 0000000Ch
007EAA35: lea ecx, var_000000B8
007EAA3B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EAA40: jmp 007EB085h
007EAA45: mov var_04, 00000022h
007EAA4C: push 004412BCh
007EAA51: push 00000000h
007EAA53: push 00000007h
007EAA55: mov eax, [ebp+08h]
007EAA58: mov eax, [eax]
007EAA5A: push [ebp+08h]
007EAA5D: call [eax+00000324h]
007EAA63: push eax
007EAA64: lea eax, var_00000088
007EAA6A: push eax
007EAA6B: call 00410A84h ; Set (object)
007EAA70: push eax
007EAA71: lea eax, var_000000B8
007EAA77: push eax
007EAA78: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EAA7D: add esp, 00000010h
007EAA80: push eax
007EAA81: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EAA86: push eax
007EAA87: lea eax, var_0000008C
007EAA8D: push eax
007EAA8E: call 00410A84h ; Set (object)
007EAA93: mov var_000001B0, eax
007EAA99: lea eax, var_00000090
007EAA9F: push eax
007EAAA0: lea eax, var_30
007EAAA3: push eax
007EAAA4: mov eax, var_000001B0
007EAAAA: mov eax, [eax]
007EAAAC: push var_000001B0
007EAAB2: call [eax+24h]
007EAAB5: fclex 
007EAAB7: mov var_000001B4, eax
007EAABD: cmp var_000001B4, 00000000h
007EAAC4: jnl 7EAAE6h
007EAAC6: push 00000024h
007EAAC8: push 004412BCh
007EAACD: push var_000001B0
007EAAD3: push var_000001B4
007EAAD9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EAADE: mov var_00000354, eax
007EAAE4: jmp 7EAAEDh
007EAAE6: and var_00000354, 00000000h
007EAAED: mov eax, var_00000090
007EAAF3: mov var_000001B8, eax
007EAAF9: lea eax, var_000001A0
007EAAFF: push eax
007EAB00: mov eax, var_000001B8
007EAB06: mov eax, [eax]
007EAB08: push var_000001B8
007EAB0E: call [eax+5Ch]
007EAB11: fclex 
007EAB13: mov var_000001BC, eax
007EAB19: cmp var_000001BC, 00000000h
007EAB20: jnl 7EAB42h
007EAB22: push 0000005Ch
007EAB24: push 004412DCh
007EAB29: push var_000001B8
007EAB2F: push var_000001BC
007EAB35: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EAB3A: mov var_00000358, eax
007EAB40: jmp 7EAB49h
007EAB42: and var_00000358, 00000000h
007EAB49: xor eax, eax
007EAB4B: cmp word ptr var_000001A0, FFFFh
007EAB53: setz al
007EAB56: neg eax
007EAB58: mov var_000001C0, ax
007EAB5F: lea eax, var_00000090
007EAB65: push eax
007EAB66: lea eax, var_0000008C
007EAB6C: push eax
007EAB6D: lea eax, var_00000088
007EAB73: push eax
007EAB74: push 00000003h
007EAB76: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EAB7B: add esp, 00000010h
007EAB7E: lea ecx, var_000000B8
007EAB84: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EAB89: movsx eax, word ptr var_000001C0
007EAB90: test eax, eax
007EAB92: jz 007EB061h
007EAB98: mov var_04, 00000023h
007EAB9F: mov var_00000144, 00000001h
007EABA9: mov var_0000014C, 00000002h
007EABB3: lea eax, var_30
007EABB6: mov var_00000134, eax
007EABBC: mov var_0000013C, 0000400Ch
007EABC6: push 00000010h
007EABC8: pop eax
007EABC9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EABCE: lea esi, var_0000014C
007EABD4: mov edi, esp
007EABD6: movsd 
007EABD7: movsd 
007EABD8: movsd 
007EABD9: movsd 
007EABDA: push 00000001h
007EABDC: push 0044C9A8h ; SubItems
007EABE1: push 00000010h
007EABE3: pop eax
007EABE4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EABE9: lea esi, var_0000013C
007EABEF: mov edi, esp
007EABF1: movsd 
007EABF2: movsd 
007EABF3: movsd 
007EABF4: movsd 
007EABF5: push 00000001h
007EABF7: push 0044FF94h ; ListItems
007EABFC: lea eax, var_48
007EABFF: push eax
007EAC00: lea eax, var_000000B8
007EAC06: push eax
007EAC07: call 00410748h ; msvbvm60.dll.__vbaVarLateMemCallLdRf
007EAC0C: add esp, 00000020h
007EAC0F: push eax
007EAC10: lea eax, var_000000C8
007EAC16: push eax
007EAC17: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
007EAC1C: add esp, 00000020h
007EAC1F: push eax
007EAC20: lea eax, var_4C
007EAC23: push eax
007EAC24: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
007EAC29: push eax
007EAC2A: call 004109DCh ; Val(arg_1)
007EAC2F: call 004109D6h ; msvbvm60.dll.__vbaFpR8
007EAC34: fcomp real8 ptr [00401770h]
007EAC3A: fstsw ax
007EAC3C: sahf 
007EAC3D: jbe 7EAC4Bh
007EAC3F: mov var_0000035C, 00000001h
007EAC49: jmp 7EAC52h
007EAC4B: and var_0000035C, 00000000h
007EAC52: mov eax, var_0000035C
007EAC58: neg eax
007EAC5A: mov var_000001B0, ax
007EAC61: lea ecx, var_4C
007EAC64: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007EAC69: lea eax, var_000000C8
007EAC6F: push eax
007EAC70: lea eax, var_000000B8
007EAC76: push eax
007EAC77: push 00000002h
007EAC79: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EAC7E: add esp, 0000000Ch
007EAC81: movsx eax, word ptr var_000001B0
007EAC88: test eax, eax
007EAC8A: jz 007EB061h
007EAC90: mov var_04, 00000024h
007EAC97: lea eax, var_4C
007EAC9A: push eax
007EAC9B: mov eax, [ebp+08h]
007EAC9E: mov eax, [eax]
007EACA0: push [ebp+08h]
007EACA3: call [eax+000001C0h]
007EACA9: fclex 
007EACAB: mov var_000001B0, eax
007EACB1: cmp var_000001B0, 00000000h
007EACB8: jnl 7EACDAh
007EACBA: push 000001C0h
007EACBF: push 0044420Ch
007EACC4: push [ebp+08h]
007EACC7: push var_000001B0
007EACCD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EACD2: mov var_00000360, eax
007EACD8: jmp 7EACE1h
007EACDA: and var_00000360, 00000000h
007EACE1: push var_4C
007EACE4: call 004109DCh ; Val(arg_1)
007EACE9: fstp real8 ptr var_000001AC
007EACEF: cmp [008F2010h], 00000000h
007EACF6: jnz 7EAD13h
007EACF8: push 008F2010h
007EACFD: push 00433984h
007EAD02: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EAD07: mov var_00000364, 008F2010h
007EAD11: jmp 7EAD1Dh
007EAD13: mov var_00000364, 008F2010h
007EAD1D: mov eax, var_00000364
007EAD23: mov eax, [eax]
007EAD25: mov ecx, var_00000364
007EAD2B: mov ecx, [ecx]
007EAD2D: mov ecx, [ecx]
007EAD2F: push eax
007EAD30: call [ecx+0000053Ch]
007EAD36: push eax
007EAD37: lea eax, var_000000A8
007EAD3D: push eax
007EAD3E: call 00410A84h ; Set (object)
007EAD43: push 00000000h
007EAD45: push 8001000Bh
007EAD4A: mov eax, [ebp+08h]
007EAD4D: mov eax, [eax]
007EAD4F: push [ebp+08h]
007EAD52: call [eax+00000324h]
007EAD58: push eax
007EAD59: lea eax, var_00000088
007EAD5F: push eax
007EAD60: call 00410A84h ; Set (object)
007EAD65: push eax
007EAD66: lea eax, var_000000B8
007EAD6C: push eax
007EAD6D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EAD72: add esp, 00000010h
007EAD75: push 004412BCh
007EAD7A: push 00000000h
007EAD7C: push 00000007h
007EAD7E: mov eax, [ebp+08h]
007EAD81: mov eax, [eax]
007EAD83: push [ebp+08h]
007EAD86: call [eax+00000324h]
007EAD8C: push eax
007EAD8D: lea eax, var_0000008C
007EAD93: push eax
007EAD94: call 00410A84h ; Set (object)
007EAD99: push eax
007EAD9A: lea eax, var_000000C8
007EADA0: push eax
007EADA1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EADA6: add esp, 00000010h
007EADA9: push eax
007EADAA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EADAF: push eax
007EADB0: lea eax, var_00000090
007EADB6: push eax
007EADB7: call 00410A84h ; Set (object)
007EADBC: mov var_000001B4, eax
007EADC2: lea eax, var_00000094
007EADC8: push eax
007EADC9: lea eax, var_30
007EADCC: push eax
007EADCD: mov eax, var_000001B4
007EADD3: mov eax, [eax]
007EADD5: push var_000001B4
007EADDB: call [eax+24h]
007EADDE: fclex 
007EADE0: mov var_000001B8, eax
007EADE6: cmp var_000001B8, 00000000h
007EADED: jnl 7EAE0Fh
007EADEF: push 00000024h
007EADF1: push 004412BCh
007EADF6: push var_000001B4
007EADFC: push var_000001B8
007EAE02: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EAE07: mov var_00000368, eax
007EAE0D: jmp 7EAE16h
007EAE0F: and var_00000368, 00000000h
007EAE16: mov eax, var_00000094
007EAE1C: mov var_000001BC, eax
007EAE22: lea eax, var_50
007EAE25: push eax
007EAE26: mov eax, var_000001BC
007EAE2C: mov eax, [eax]
007EAE2E: push var_000001BC
007EAE34: call [eax+24h]
007EAE37: fclex 
007EAE39: mov var_000001C0, eax
007EAE3F: cmp var_000001C0, 00000000h
007EAE46: jnl 7EAE68h
007EAE48: push 00000024h
007EAE4A: push 004412DCh
007EAE4F: push var_000001BC
007EAE55: push var_000001C0
007EAE5B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EAE60: mov var_0000036C, eax
007EAE66: jmp 7EAE6Fh
007EAE68: and var_0000036C, 00000000h
007EAE6F: push 004412BCh
007EAE74: push 00000000h
007EAE76: push 00000007h
007EAE78: mov eax, [ebp+08h]
007EAE7B: mov eax, [eax]
007EAE7D: push [ebp+08h]
007EAE80: call [eax+00000324h]
007EAE86: push eax
007EAE87: lea eax, var_00000098
007EAE8D: push eax
007EAE8E: call 00410A84h ; Set (object)
007EAE93: push eax
007EAE94: lea eax, var_000000D8
007EAE9A: push eax
007EAE9B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EAEA0: add esp, 00000010h
007EAEA3: push eax
007EAEA4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EAEA9: push eax
007EAEAA: lea eax, var_0000009C
007EAEB0: push eax
007EAEB1: call 00410A84h ; Set (object)
007EAEB6: mov var_000001C4, eax
007EAEBC: lea eax, var_000000A0
007EAEC2: push eax
007EAEC3: lea eax, var_30
007EAEC6: push eax
007EAEC7: mov eax, var_000001C4
007EAECD: mov eax, [eax]
007EAECF: push var_000001C4
007EAED5: call [eax+24h]
007EAED8: fclex 
007EAEDA: mov var_000001C8, eax
007EAEE0: cmp var_000001C8, 00000000h
007EAEE7: jnl 7EAF09h
007EAEE9: push 00000024h
007EAEEB: push 004412BCh
007EAEF0: push var_000001C4
007EAEF6: push var_000001C8
007EAEFC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EAF01: mov var_00000370, eax
007EAF07: jmp 7EAF10h
007EAF09: and var_00000370, 00000000h
007EAF10: mov eax, var_000000A0
007EAF16: mov var_000001CC, eax
007EAF1C: lea eax, var_58
007EAF1F: push eax
007EAF20: push 00000001h
007EAF22: mov eax, var_000001CC
007EAF28: mov eax, [eax]
007EAF2A: push var_000001CC
007EAF30: call [eax+00000084h]
007EAF36: fclex 
007EAF38: mov var_000001D0, eax
007EAF3E: cmp var_000001D0, 00000000h
007EAF45: jnl 7EAF6Ah
007EAF47: push 00000084h
007EAF4C: push 004412DCh
007EAF51: push var_000001CC
007EAF57: push var_000001D0
007EAF5D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EAF62: mov var_00000374, eax
007EAF68: jmp 7EAF71h
007EAF6A: and var_00000374, 00000000h
007EAF71: mov eax, var_000000A8
007EAF77: mov var_00000210, eax
007EAF7D: and var_000000A8, 00000000h
007EAF84: push var_00000210
007EAF8A: lea eax, var_000000A4
007EAF90: push eax
007EAF91: call 00410A84h ; Set (object)
007EAF96: push var_58
007EAF99: lea eax, var_000000B8
007EAF9F: push eax
007EAFA0: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007EAFA5: mov edx, eax
007EAFA7: lea ecx, var_54
007EAFAA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EAFAF: push eax
007EAFB0: push var_50
007EAFB3: call 00410A18h ; &
007EAFB8: mov edx, eax
007EAFBA: lea ecx, var_5C
007EAFBD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EAFC2: push eax
007EAFC3: lea eax, var_000000A4
007EAFC9: push eax
007EAFCA: fld real8 ptr var_000001AC
007EAFD0: call 00410814h ; msvbvm60.dll.__vbaFpI4
007EAFD5: push eax
007EAFD6: call 007C016Fh
007EAFDB: lea eax, var_58
007EAFDE: push eax
007EAFDF: lea eax, var_5C
007EAFE2: push eax
007EAFE3: lea eax, var_50
007EAFE6: push eax
007EAFE7: lea eax, var_54
007EAFEA: push eax
007EAFEB: lea eax, var_4C
007EAFEE: push eax
007EAFEF: push 00000005h
007EAFF1: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007EAFF6: add esp, 00000018h
007EAFF9: lea eax, var_000000A8
007EAFFF: push eax
007EB000: lea eax, var_000000A4
007EB006: push eax
007EB007: lea eax, var_000000A0
007EB00D: push eax
007EB00E: lea eax, var_0000009C
007EB014: push eax
007EB015: lea eax, var_00000098
007EB01B: push eax
007EB01C: lea eax, var_00000094
007EB022: push eax
007EB023: lea eax, var_00000090
007EB029: push eax
007EB02A: lea eax, var_0000008C
007EB030: push eax
007EB031: lea eax, var_00000088
007EB037: push eax
007EB038: push 00000009h
007EB03A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EB03F: add esp, 00000028h
007EB042: lea eax, var_000000D8
007EB048: push eax
007EB049: lea eax, var_000000C8
007EB04F: push eax
007EB050: lea eax, var_000000B8
007EB056: push eax
007EB057: push 00000003h
007EB059: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EB05E: add esp, 00000010h
007EB061: mov var_04, 00000027h
007EB068: lea eax, var_000001F0
007EB06E: push eax
007EB06F: lea eax, var_000001E0
007EB075: push eax
007EB076: lea eax, var_30
007EB079: push eax
007EB07A: call 00410A36h ; Next
007EB07F: mov var_0000020C, eax
007EB085: cmp var_0000020C, 00000000h
007EB08C: jnz 007EAA45h
007EB092: jmp 007EDCD8h
007EB097: mov var_04, 00000029h
007EB09E: mov edx, 00443C28h
007EB0A3: lea ecx, var_4C
007EB0A6: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007EB0AB: lea eax, var_4C
007EB0AE: push eax
007EB0AF: call 007A537Ch
007EB0B4: mov edx, eax
007EB0B6: lea ecx, var_38
007EB0B9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EB0BE: lea ecx, var_4C
007EB0C1: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007EB0C6: mov var_04, 0000002Ah
007EB0CD: push var_38
007EB0D0: push 00000000h
007EB0D2: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
007EB0D7: test eax, eax
007EB0D9: jnz 007EB195h
007EB0DF: mov var_04, 0000002Bh
007EB0E6: mov var_000000E0, 80020004h
007EB0F0: mov var_000000E8, 0000000Ah
007EB0FA: mov var_000000D0, 80020004h
007EB104: mov var_000000D8, 0000000Ah
007EB10E: mov var_000000C0, 80020004h
007EB118: mov var_000000C8, 0000000Ah
007EB122: mov var_00000134, 00448E6Ch ; Upload aborted by user
007EB12C: mov var_0000013C, 00000008h
007EB136: lea edx, var_0000013C
007EB13C: lea ecx, var_000000B8
007EB142: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007EB147: lea eax, var_000000E8
007EB14D: push eax
007EB14E: lea eax, var_000000D8
007EB154: push eax
007EB155: lea eax, var_000000C8
007EB15B: push eax
007EB15C: push 00000010h
007EB15E: lea eax, var_000000B8
007EB164: push eax
007EB165: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007EB16A: lea eax, var_000000E8
007EB170: push eax
007EB171: lea eax, var_000000D8
007EB177: push eax
007EB178: lea eax, var_000000C8
007EB17E: push eax
007EB17F: lea eax, var_000000B8
007EB185: push eax
007EB186: push 00000004h
007EB188: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EB18D: add esp, 00000014h
007EB190: jmp 007EDCD8h
007EB195: mov var_04, 0000002Eh
007EB19C: lea eax, var_4C
007EB19F: push eax
007EB1A0: mov eax, [ebp+08h]
007EB1A3: mov eax, [eax]
007EB1A5: push [ebp+08h]
007EB1A8: call [eax+000001C0h]
007EB1AE: fclex 
007EB1B0: mov var_000001B0, eax
007EB1B6: cmp var_000001B0, 00000000h
007EB1BD: jnl 7EB1DFh
007EB1BF: push 000001C0h
007EB1C4: push 0044420Ch
007EB1C9: push [ebp+08h]
007EB1CC: push var_000001B0
007EB1D2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EB1D7: mov var_00000378, eax
007EB1DD: jmp 7EB1E6h
007EB1DF: and var_00000378, 00000000h
007EB1E6: push var_4C
007EB1E9: call 004109DCh ; Val(arg_1)
007EB1EE: fstp real8 ptr var_000001AC
007EB1F4: push 00000000h
007EB1F6: push 00000001h
007EB1F8: push 00000001h
007EB1FA: push 00000000h
007EB1FC: lea eax, var_0000012C
007EB202: push eax
007EB203: push 00000010h
007EB205: push 00000880h
007EB20A: call 00410946h ; ReDim
007EB20F: add esp, 0000001Ch
007EB212: push 00000000h
007EB214: push 8001000Bh
007EB219: mov eax, [ebp+08h]
007EB21C: mov eax, [eax]
007EB21E: push [ebp+08h]
007EB221: call [eax+00000324h]
007EB227: push eax
007EB228: lea eax, var_00000088
007EB22E: push eax
007EB22F: call 00410A84h ; Set (object)
007EB234: push eax
007EB235: lea eax, var_000000B8
007EB23B: push eax
007EB23C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EB241: add esp, 00000010h
007EB244: push eax
007EB245: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007EB24A: mov var_000000C0, eax
007EB250: mov var_000000C8, 00000008h
007EB25A: lea esi, var_000000C8
007EB260: push 00000000h
007EB262: push var_0000012C
007EB268: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007EB26D: mov ecx, eax
007EB26F: mov edx, esi
007EB271: call 00410940h ; msvbvm60.dll.__vbaVarZero
007EB276: lea eax, var_38
007EB279: mov var_00000134, eax
007EB27F: mov var_0000013C, 00004008h
007EB289: lea esi, var_0000013C
007EB28F: push 00000001h
007EB291: push var_0000012C
007EB297: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007EB29C: mov ecx, eax
007EB29E: mov edx, esi
007EB2A0: call 00410940h ; msvbvm60.dll.__vbaVarZero
007EB2A5: mov edx, 0043D51Ch ; x22
007EB2AA: lea ecx, var_50
007EB2AD: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007EB2B2: lea eax, var_0000012C
007EB2B8: push eax
007EB2B9: lea eax, var_50
007EB2BC: push eax
007EB2BD: fld real8 ptr var_000001AC
007EB2C3: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007EB2C8: push eax
007EB2C9: call 007A6910h
007EB2CE: lea eax, var_0000012C
007EB2D4: push eax
007EB2D5: push 00000000h
007EB2D7: call 00410934h ; Erase
007EB2DC: lea eax, var_50
007EB2DF: push eax
007EB2E0: lea eax, var_4C
007EB2E3: push eax
007EB2E4: push 00000002h
007EB2E6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007EB2EB: add esp, 0000000Ch
007EB2EE: lea ecx, var_00000088
007EB2F4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EB2F9: lea ecx, var_000000B8
007EB2FF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EB304: jmp 007EDCD8h
007EB309: mov var_04, 00000030h
007EB310: lea eax, var_4C
007EB313: push eax
007EB314: mov eax, [ebp+08h]
007EB317: mov eax, [eax]
007EB319: push [ebp+08h]
007EB31C: call [eax+000001C0h]
007EB322: fclex 
007EB324: mov var_000001B0, eax
007EB32A: cmp var_000001B0, 00000000h
007EB331: jnl 7EB353h
007EB333: push 000001C0h
007EB338: push 0044420Ch
007EB33D: push [ebp+08h]
007EB340: push var_000001B0
007EB346: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EB34B: mov var_0000037C, eax
007EB351: jmp 7EB35Ah
007EB353: and var_0000037C, 00000000h
007EB35A: push var_4C
007EB35D: call 004109DCh ; Val(arg_1)
007EB362: fstp real8 ptr var_000001AC
007EB368: push 004412DCh
007EB36D: push 00000000h
007EB36F: push 0000000Dh
007EB371: mov eax, [ebp+08h]
007EB374: mov eax, [eax]
007EB376: push [ebp+08h]
007EB379: call [eax+00000324h]
007EB37F: push eax
007EB380: lea eax, var_0000008C
007EB386: push eax
007EB387: call 00410A84h ; Set (object)
007EB38C: push eax
007EB38D: lea eax, var_000000C8
007EB393: push eax
007EB394: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EB399: add esp, 00000010h
007EB39C: push eax
007EB39D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EB3A2: push eax
007EB3A3: lea eax, var_00000090
007EB3A9: push eax
007EB3AA: call 00410A84h ; Set (object)
007EB3AF: mov var_000001B4, eax
007EB3B5: lea eax, var_000001A4
007EB3BB: push eax
007EB3BC: mov eax, var_000001B4
007EB3C2: mov eax, [eax]
007EB3C4: push var_000001B4
007EB3CA: call [eax+44h]
007EB3CD: fclex 
007EB3CF: mov var_000001B8, eax
007EB3D5: cmp var_000001B8, 00000000h
007EB3DC: jnl 7EB3FEh
007EB3DE: push 00000044h
007EB3E0: push 004412DCh
007EB3E5: push var_000001B4
007EB3EB: push var_000001B8
007EB3F1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EB3F6: mov var_00000380, eax
007EB3FC: jmp 7EB405h
007EB3FE: and var_00000380, 00000000h
007EB405: push 00000000h
007EB407: push 00000000h
007EB409: push 00000001h
007EB40B: push 00000000h
007EB40D: lea eax, var_0000012C
007EB413: push eax
007EB414: push 00000010h
007EB416: push 00000880h
007EB41B: call 00410946h ; ReDim
007EB420: add esp, 0000001Ch
007EB423: push 004412BCh
007EB428: push 00000000h
007EB42A: push 00000007h
007EB42C: mov eax, [ebp+08h]
007EB42F: mov eax, [eax]
007EB431: push [ebp+08h]
007EB434: call [eax+00000324h]
007EB43A: push eax
007EB43B: lea eax, var_00000094
007EB441: push eax
007EB442: call 00410A84h ; Set (object)
007EB447: push eax
007EB448: lea eax, var_000000D8
007EB44E: push eax
007EB44F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EB454: add esp, 00000010h
007EB457: push eax
007EB458: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EB45D: push eax
007EB45E: lea eax, var_00000098
007EB464: push eax
007EB465: call 00410A84h ; Set (object)
007EB46A: mov var_000001BC, eax
007EB470: mov eax, var_000001A4
007EB476: mov var_000000E0, eax
007EB47C: mov var_000000E8, 00000003h
007EB486: lea eax, var_0000009C
007EB48C: push eax
007EB48D: lea eax, var_000000E8
007EB493: push eax
007EB494: mov eax, var_000001BC
007EB49A: mov eax, [eax]
007EB49C: push var_000001BC
007EB4A2: call [eax+24h]
007EB4A5: fclex 
007EB4A7: mov var_000001C0, eax
007EB4AD: cmp var_000001C0, 00000000h
007EB4B4: jnl 7EB4D6h
007EB4B6: push 00000024h
007EB4B8: push 004412BCh
007EB4BD: push var_000001BC
007EB4C3: push var_000001C0
007EB4C9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EB4CE: mov var_00000384, eax
007EB4D4: jmp 7EB4DDh
007EB4D6: and var_00000384, 00000000h
007EB4DD: mov eax, var_0000009C
007EB4E3: mov var_000001C4, eax
007EB4E9: lea eax, var_50
007EB4EC: push eax
007EB4ED: mov eax, var_000001C4
007EB4F3: mov eax, [eax]
007EB4F5: push var_000001C4
007EB4FB: call [eax+24h]
007EB4FE: fclex 
007EB500: mov var_000001C8, eax
007EB506: cmp var_000001C8, 00000000h
007EB50D: jnl 7EB52Fh
007EB50F: push 00000024h
007EB511: push 004412DCh
007EB516: push var_000001C4
007EB51C: push var_000001C8
007EB522: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EB527: mov var_00000388, eax
007EB52D: jmp 7EB536h
007EB52F: and var_00000388, 00000000h
007EB536: push 00000000h
007EB538: push 8001000Bh
007EB53D: mov eax, [ebp+08h]
007EB540: mov eax, [eax]
007EB542: push [ebp+08h]
007EB545: call [eax+00000324h]
007EB54B: push eax
007EB54C: lea eax, var_00000088
007EB552: push eax
007EB553: call 00410A84h ; Set (object)
007EB558: push eax
007EB559: lea eax, var_000000B8
007EB55F: push eax
007EB560: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EB565: add esp, 00000010h
007EB568: push eax
007EB569: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007EB56E: mov edx, eax
007EB570: lea ecx, var_54
007EB573: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EB578: push eax
007EB579: push var_50
007EB57C: call 00410A18h ; &
007EB581: mov var_000000F0, eax
007EB587: mov var_000000F8, 00000008h
007EB591: lea esi, var_000000F8
007EB597: push 00000000h
007EB599: push var_0000012C
007EB59F: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007EB5A4: mov ecx, eax
007EB5A6: mov edx, esi
007EB5A8: call 00410940h ; msvbvm60.dll.__vbaVarZero
007EB5AD: mov edx, 0043D504h ; x20
007EB5B2: lea ecx, var_58
007EB5B5: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007EB5BA: lea eax, var_0000012C
007EB5C0: push eax
007EB5C1: lea eax, var_58
007EB5C4: push eax
007EB5C5: fld real8 ptr var_000001AC
007EB5CB: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007EB5D0: push eax
007EB5D1: call 007A6910h
007EB5D6: lea eax, var_0000012C
007EB5DC: push eax
007EB5DD: push 00000000h
007EB5DF: call 00410934h ; Erase
007EB5E4: lea eax, var_58
007EB5E7: push eax
007EB5E8: lea eax, var_50
007EB5EB: push eax
007EB5EC: lea eax, var_54
007EB5EF: push eax
007EB5F0: lea eax, var_4C
007EB5F3: push eax
007EB5F4: push 00000004h
007EB5F6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007EB5FB: add esp, 00000014h
007EB5FE: lea eax, var_0000009C
007EB604: push eax
007EB605: lea eax, var_00000098
007EB60B: push eax
007EB60C: lea eax, var_00000094
007EB612: push eax
007EB613: lea eax, var_00000090
007EB619: push eax
007EB61A: lea eax, var_0000008C
007EB620: push eax
007EB621: lea eax, var_00000088
007EB627: push eax
007EB628: push 00000006h
007EB62A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EB62F: add esp, 0000001Ch
007EB632: lea eax, var_000000E8
007EB638: push eax
007EB639: lea eax, var_000000D8
007EB63F: push eax
007EB640: lea eax, var_000000C8
007EB646: push eax
007EB647: lea eax, var_000000B8
007EB64D: push eax
007EB64E: push 00000004h
007EB650: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EB655: add esp, 00000014h
007EB658: jmp 007EDCD8h
007EB65D: mov var_04, 00000032h
007EB664: lea eax, var_4C
007EB667: push eax
007EB668: mov eax, [ebp+08h]
007EB66B: mov eax, [eax]
007EB66D: push [ebp+08h]
007EB670: call [eax+000001C0h]
007EB676: fclex 
007EB678: mov var_000001B0, eax
007EB67E: cmp var_000001B0, 00000000h
007EB685: jnl 7EB6A7h
007EB687: push 000001C0h
007EB68C: push 0044420Ch
007EB691: push [ebp+08h]
007EB694: push var_000001B0
007EB69A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EB69F: mov var_0000038C, eax
007EB6A5: jmp 7EB6AEh
007EB6A7: and var_0000038C, 00000000h
007EB6AE: push var_4C
007EB6B1: call 004109DCh ; Val(arg_1)
007EB6B6: fstp real8 ptr var_000001AC
007EB6BC: push 004412DCh
007EB6C1: push 00000000h
007EB6C3: push 0000000Dh
007EB6C5: mov eax, [ebp+08h]
007EB6C8: mov eax, [eax]
007EB6CA: push [ebp+08h]
007EB6CD: call [eax+00000324h]
007EB6D3: push eax
007EB6D4: lea eax, var_0000008C
007EB6DA: push eax
007EB6DB: call 00410A84h ; Set (object)
007EB6E0: push eax
007EB6E1: lea eax, var_000000C8
007EB6E7: push eax
007EB6E8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EB6ED: add esp, 00000010h
007EB6F0: push eax
007EB6F1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EB6F6: push eax
007EB6F7: lea eax, var_00000090
007EB6FD: push eax
007EB6FE: call 00410A84h ; Set (object)
007EB703: mov var_000001B4, eax
007EB709: lea eax, var_000001A4
007EB70F: push eax
007EB710: mov eax, var_000001B4
007EB716: mov eax, [eax]
007EB718: push var_000001B4
007EB71E: call [eax+44h]
007EB721: fclex 
007EB723: mov var_000001B8, eax
007EB729: cmp var_000001B8, 00000000h
007EB730: jnl 7EB752h
007EB732: push 00000044h
007EB734: push 004412DCh
007EB739: push var_000001B4
007EB73F: push var_000001B8
007EB745: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EB74A: mov var_00000390, eax
007EB750: jmp 7EB759h
007EB752: and var_00000390, 00000000h
007EB759: push 00000000h
007EB75B: push 00000000h
007EB75D: push 00000001h
007EB75F: push 00000000h
007EB761: lea eax, var_0000012C
007EB767: push eax
007EB768: push 00000010h
007EB76A: push 00000880h
007EB76F: call 00410946h ; ReDim
007EB774: add esp, 0000001Ch
007EB777: push 004412BCh
007EB77C: push 00000000h
007EB77E: push 00000007h
007EB780: mov eax, [ebp+08h]
007EB783: mov eax, [eax]
007EB785: push [ebp+08h]
007EB788: call [eax+00000324h]
007EB78E: push eax
007EB78F: lea eax, var_00000094
007EB795: push eax
007EB796: call 00410A84h ; Set (object)
007EB79B: push eax
007EB79C: lea eax, var_000000D8
007EB7A2: push eax
007EB7A3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EB7A8: add esp, 00000010h
007EB7AB: push eax
007EB7AC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EB7B1: push eax
007EB7B2: lea eax, var_00000098
007EB7B8: push eax
007EB7B9: call 00410A84h ; Set (object)
007EB7BE: mov var_000001BC, eax
007EB7C4: mov eax, var_000001A4
007EB7CA: mov var_000000E0, eax
007EB7D0: mov var_000000E8, 00000003h
007EB7DA: lea eax, var_0000009C
007EB7E0: push eax
007EB7E1: lea eax, var_000000E8
007EB7E7: push eax
007EB7E8: mov eax, var_000001BC
007EB7EE: mov eax, [eax]
007EB7F0: push var_000001BC
007EB7F6: call [eax+24h]
007EB7F9: fclex 
007EB7FB: mov var_000001C0, eax
007EB801: cmp var_000001C0, 00000000h
007EB808: jnl 7EB82Ah
007EB80A: push 00000024h
007EB80C: push 004412BCh
007EB811: push var_000001BC
007EB817: push var_000001C0
007EB81D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EB822: mov var_00000394, eax
007EB828: jmp 7EB831h
007EB82A: and var_00000394, 00000000h
007EB831: mov eax, var_0000009C
007EB837: mov var_000001C4, eax
007EB83D: lea eax, var_50
007EB840: push eax
007EB841: mov eax, var_000001C4
007EB847: mov eax, [eax]
007EB849: push var_000001C4
007EB84F: call [eax+24h]
007EB852: fclex 
007EB854: mov var_000001C8, eax
007EB85A: cmp var_000001C8, 00000000h
007EB861: jnl 7EB883h
007EB863: push 00000024h
007EB865: push 004412DCh
007EB86A: push var_000001C4
007EB870: push var_000001C8
007EB876: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EB87B: mov var_00000398, eax
007EB881: jmp 7EB88Ah
007EB883: and var_00000398, 00000000h
007EB88A: push 00000000h
007EB88C: push 8001000Bh
007EB891: mov eax, [ebp+08h]
007EB894: mov eax, [eax]
007EB896: push [ebp+08h]
007EB899: call [eax+00000324h]
007EB89F: push eax
007EB8A0: lea eax, var_00000088
007EB8A6: push eax
007EB8A7: call 00410A84h ; Set (object)
007EB8AC: push eax
007EB8AD: lea eax, var_000000B8
007EB8B3: push eax
007EB8B4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EB8B9: add esp, 00000010h
007EB8BC: push eax
007EB8BD: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007EB8C2: mov edx, eax
007EB8C4: lea ecx, var_54
007EB8C7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EB8CC: push eax
007EB8CD: push var_50
007EB8D0: call 00410A18h ; &
007EB8D5: mov var_000000F0, eax
007EB8DB: mov var_000000F8, 00000008h
007EB8E5: lea esi, var_000000F8
007EB8EB: push 00000000h
007EB8ED: push var_0000012C
007EB8F3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007EB8F8: mov ecx, eax
007EB8FA: mov edx, esi
007EB8FC: call 00410940h ; msvbvm60.dll.__vbaVarZero
007EB901: mov edx, 0043D9D0h ; x116
007EB906: lea ecx, var_58
007EB909: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007EB90E: lea eax, var_0000012C
007EB914: push eax
007EB915: lea eax, var_58
007EB918: push eax
007EB919: fld real8 ptr var_000001AC
007EB91F: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007EB924: push eax
007EB925: call 007A6910h
007EB92A: lea eax, var_0000012C
007EB930: push eax
007EB931: push 00000000h
007EB933: call 00410934h ; Erase
007EB938: lea eax, var_58
007EB93B: push eax
007EB93C: lea eax, var_50
007EB93F: push eax
007EB940: lea eax, var_54
007EB943: push eax
007EB944: lea eax, var_4C
007EB947: push eax
007EB948: push 00000004h
007EB94A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007EB94F: add esp, 00000014h
007EB952: lea eax, var_0000009C
007EB958: push eax
007EB959: lea eax, var_00000098
007EB95F: push eax
007EB960: lea eax, var_00000094
007EB966: push eax
007EB967: lea eax, var_00000090
007EB96D: push eax
007EB96E: lea eax, var_0000008C
007EB974: push eax
007EB975: lea eax, var_00000088
007EB97B: push eax
007EB97C: push 00000006h
007EB97E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EB983: add esp, 0000001Ch
007EB986: lea eax, var_000000E8
007EB98C: push eax
007EB98D: lea eax, var_000000D8
007EB993: push eax
007EB994: lea eax, var_000000C8
007EB99A: push eax
007EB99B: lea eax, var_000000B8
007EB9A1: push eax
007EB9A2: push 00000004h
007EB9A4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EB9A9: add esp, 00000014h
007EB9AC: jmp 007EDCD8h
007EB9B1: mov var_04, 00000034h
007EB9B8: lea eax, var_4C
007EB9BB: push eax
007EB9BC: mov eax, [ebp+08h]
007EB9BF: mov eax, [eax]
007EB9C1: push [ebp+08h]
007EB9C4: call [eax+000001C0h]
007EB9CA: fclex 
007EB9CC: mov var_000001B0, eax
007EB9D2: cmp var_000001B0, 00000000h
007EB9D9: jnl 7EB9FBh
007EB9DB: push 000001C0h
007EB9E0: push 0044420Ch
007EB9E5: push [ebp+08h]
007EB9E8: push var_000001B0
007EB9EE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EB9F3: mov var_0000039C, eax
007EB9F9: jmp 7EBA02h
007EB9FB: and var_0000039C, 00000000h
007EBA02: push var_4C
007EBA05: call 004109DCh ; Val(arg_1)
007EBA0A: fstp real8 ptr var_000001AC
007EBA10: push 004412DCh
007EBA15: push 00000000h
007EBA17: push 0000000Dh
007EBA19: mov eax, [ebp+08h]
007EBA1C: mov eax, [eax]
007EBA1E: push [ebp+08h]
007EBA21: call [eax+00000324h]
007EBA27: push eax
007EBA28: lea eax, var_0000008C
007EBA2E: push eax
007EBA2F: call 00410A84h ; Set (object)
007EBA34: push eax
007EBA35: lea eax, var_000000C8
007EBA3B: push eax
007EBA3C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EBA41: add esp, 00000010h
007EBA44: push eax
007EBA45: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EBA4A: push eax
007EBA4B: lea eax, var_00000090
007EBA51: push eax
007EBA52: call 00410A84h ; Set (object)
007EBA57: mov var_000001B4, eax
007EBA5D: lea eax, var_000001A4
007EBA63: push eax
007EBA64: mov eax, var_000001B4
007EBA6A: mov eax, [eax]
007EBA6C: push var_000001B4
007EBA72: call [eax+44h]
007EBA75: fclex 
007EBA77: mov var_000001B8, eax
007EBA7D: cmp var_000001B8, 00000000h
007EBA84: jnl 7EBAA6h
007EBA86: push 00000044h
007EBA88: push 004412DCh
007EBA8D: push var_000001B4
007EBA93: push var_000001B8
007EBA99: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EBA9E: mov var_000003A0, eax
007EBAA4: jmp 7EBAADh
007EBAA6: and var_000003A0, 00000000h
007EBAAD: push 00000000h
007EBAAF: push 00000000h
007EBAB1: push 00000001h
007EBAB3: push 00000000h
007EBAB5: lea eax, var_0000012C
007EBABB: push eax
007EBABC: push 00000010h
007EBABE: push 00000880h
007EBAC3: call 00410946h ; ReDim
007EBAC8: add esp, 0000001Ch
007EBACB: push 004412BCh
007EBAD0: push 00000000h
007EBAD2: push 00000007h
007EBAD4: mov eax, [ebp+08h]
007EBAD7: mov eax, [eax]
007EBAD9: push [ebp+08h]
007EBADC: call [eax+00000324h]
007EBAE2: push eax
007EBAE3: lea eax, var_00000094
007EBAE9: push eax
007EBAEA: call 00410A84h ; Set (object)
007EBAEF: push eax
007EBAF0: lea eax, var_000000D8
007EBAF6: push eax
007EBAF7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EBAFC: add esp, 00000010h
007EBAFF: push eax
007EBB00: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EBB05: push eax
007EBB06: lea eax, var_00000098
007EBB0C: push eax
007EBB0D: call 00410A84h ; Set (object)
007EBB12: mov var_000001BC, eax
007EBB18: mov eax, var_000001A4
007EBB1E: mov var_000000E0, eax
007EBB24: mov var_000000E8, 00000003h
007EBB2E: lea eax, var_0000009C
007EBB34: push eax
007EBB35: lea eax, var_000000E8
007EBB3B: push eax
007EBB3C: mov eax, var_000001BC
007EBB42: mov eax, [eax]
007EBB44: push var_000001BC
007EBB4A: call [eax+24h]
007EBB4D: fclex 
007EBB4F: mov var_000001C0, eax
007EBB55: cmp var_000001C0, 00000000h
007EBB5C: jnl 7EBB7Eh
007EBB5E: push 00000024h
007EBB60: push 004412BCh
007EBB65: push var_000001BC
007EBB6B: push var_000001C0
007EBB71: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EBB76: mov var_000003A4, eax
007EBB7C: jmp 7EBB85h
007EBB7E: and var_000003A4, 00000000h
007EBB85: mov eax, var_0000009C
007EBB8B: mov var_000001C4, eax
007EBB91: lea eax, var_50
007EBB94: push eax
007EBB95: mov eax, var_000001C4
007EBB9B: mov eax, [eax]
007EBB9D: push var_000001C4
007EBBA3: call [eax+24h]
007EBBA6: fclex 
007EBBA8: mov var_000001C8, eax
007EBBAE: cmp var_000001C8, 00000000h
007EBBB5: jnl 7EBBD7h
007EBBB7: push 00000024h
007EBBB9: push 004412DCh
007EBBBE: push var_000001C4
007EBBC4: push var_000001C8
007EBBCA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EBBCF: mov var_000003A8, eax
007EBBD5: jmp 7EBBDEh
007EBBD7: and var_000003A8, 00000000h
007EBBDE: push 00000000h
007EBBE0: push 8001000Bh
007EBBE5: mov eax, [ebp+08h]
007EBBE8: mov eax, [eax]
007EBBEA: push [ebp+08h]
007EBBED: call [eax+00000324h]
007EBBF3: push eax
007EBBF4: lea eax, var_00000088
007EBBFA: push eax
007EBBFB: call 00410A84h ; Set (object)
007EBC00: push eax
007EBC01: lea eax, var_000000B8
007EBC07: push eax
007EBC08: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EBC0D: add esp, 00000010h
007EBC10: push eax
007EBC11: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007EBC16: mov edx, eax
007EBC18: lea ecx, var_54
007EBC1B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EBC20: push eax
007EBC21: push var_50
007EBC24: call 00410A18h ; &
007EBC29: mov var_000000F0, eax
007EBC2F: mov var_000000F8, 00000008h
007EBC39: lea esi, var_000000F8
007EBC3F: push 00000000h
007EBC41: push var_0000012C
007EBC47: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007EBC4C: mov ecx, eax
007EBC4E: mov edx, esi
007EBC50: call 00410940h ; msvbvm60.dll.__vbaVarZero
007EBC55: mov edx, 0043D510h ; x21
007EBC5A: lea ecx, var_58
007EBC5D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007EBC62: lea eax, var_0000012C
007EBC68: push eax
007EBC69: lea eax, var_58
007EBC6C: push eax
007EBC6D: fld real8 ptr var_000001AC
007EBC73: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007EBC78: push eax
007EBC79: call 007A6910h
007EBC7E: lea eax, var_0000012C
007EBC84: push eax
007EBC85: push 00000000h
007EBC87: call 00410934h ; Erase
007EBC8C: lea eax, var_58
007EBC8F: push eax
007EBC90: lea eax, var_50
007EBC93: push eax
007EBC94: lea eax, var_54
007EBC97: push eax
007EBC98: lea eax, var_4C
007EBC9B: push eax
007EBC9C: push 00000004h
007EBC9E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007EBCA3: add esp, 00000014h
007EBCA6: lea eax, var_0000009C
007EBCAC: push eax
007EBCAD: lea eax, var_00000098
007EBCB3: push eax
007EBCB4: lea eax, var_00000094
007EBCBA: push eax
007EBCBB: lea eax, var_00000090
007EBCC1: push eax
007EBCC2: lea eax, var_0000008C
007EBCC8: push eax
007EBCC9: lea eax, var_00000088
007EBCCF: push eax
007EBCD0: push 00000006h
007EBCD2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EBCD7: add esp, 0000001Ch
007EBCDA: lea eax, var_000000E8
007EBCE0: push eax
007EBCE1: lea eax, var_000000D8
007EBCE7: push eax
007EBCE8: lea eax, var_000000C8
007EBCEE: push eax
007EBCEF: lea eax, var_000000B8
007EBCF5: push eax
007EBCF6: push 00000004h
007EBCF8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EBCFD: add esp, 00000014h
007EBD00: jmp 007EDCD8h
007EBD05: mov var_04, 00000036h
007EBD0C: cmp word ptr [008F2430h], FFFFh
007EBD14: jnz 007ECA1Ch
007EBD1A: mov var_04, 00000037h
007EBD21: lea eax, var_50
007EBD24: push eax
007EBD25: mov eax, [ebp+08h]
007EBD28: mov eax, [eax]
007EBD2A: push [ebp+08h]
007EBD2D: call [eax+000001C0h]
007EBD33: fclex 
007EBD35: mov var_000001B4, eax
007EBD3B: cmp var_000001B4, 00000000h
007EBD42: jnl 7EBD64h
007EBD44: push 000001C0h
007EBD49: push 0044420Ch
007EBD4E: push [ebp+08h]
007EBD51: push var_000001B4
007EBD57: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EBD5C: mov var_000003AC, eax
007EBD62: jmp 7EBD6Bh
007EBD64: and var_000003AC, 00000000h
007EBD6B: push var_50
007EBD6E: call 004109DCh ; Val(arg_1)
007EBD73: call 00410814h ; msvbvm60.dll.__vbaFpI4
007EBD78: dec eax
007EBD79: mov var_000001B8, eax
007EBD7F: cmp var_000001B8, 0000FF4Bh
007EBD89: jnb 7EBD94h
007EBD8B: and var_000003B0, 00000000h
007EBD92: jmp 7EBD9Fh
007EBD94: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007EBD99: mov var_000003B0, eax
007EBD9F: mov eax, var_000001B8
007EBDA5: mov ecx, [008F2374h]
007EBDAB: cmp [ecx+eax*4], 00000000h
007EBDAF: jnz 007EBEE5h
007EBDB5: lea eax, var_50
007EBDB8: push eax
007EBDB9: mov eax, [ebp+08h]
007EBDBC: mov eax, [eax]
007EBDBE: push [ebp+08h]
007EBDC1: call [eax+000001C0h]
007EBDC7: fclex 
007EBDC9: mov var_000001B4, eax
007EBDCF: cmp var_000001B4, 00000000h
007EBDD6: jnl 7EBDF8h
007EBDD8: push 000001C0h
007EBDDD: push 0044420Ch
007EBDE2: push [ebp+08h]
007EBDE5: push var_000001B4
007EBDEB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EBDF0: mov var_000003B4, eax
007EBDF6: jmp 7EBDFFh
007EBDF8: and var_000003B4, 00000000h
007EBDFF: push var_50
007EBE02: call 004109DCh ; Val(arg_1)
007EBE07: call 00410814h ; msvbvm60.dll.__vbaFpI4
007EBE0C: dec eax
007EBE0D: mov var_000001B8, eax
007EBE13: cmp var_000001B8, 0000FF4Bh
007EBE1D: jnb 7EBE28h
007EBE1F: and var_000003B8, 00000000h
007EBE26: jmp 7EBE33h
007EBE28: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007EBE2D: mov var_000003B8, eax
007EBE33: mov eax, var_000001B8
007EBE39: mov ecx, [008F2374h]
007EBE3F: lea eax, [ecx+eax*4]
007EBE42: push eax
007EBE43: push 0041DAA4h
007EBE48: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EBE4D: lea eax, var_50
007EBE50: push eax
007EBE51: mov eax, [ebp+08h]
007EBE54: mov eax, [eax]
007EBE56: push [ebp+08h]
007EBE59: call [eax+000001C0h]
007EBE5F: fclex 
007EBE61: mov var_000001B4, eax
007EBE67: cmp var_000001B4, 00000000h
007EBE6E: jnl 7EBE90h
007EBE70: push 000001C0h
007EBE75: push 0044420Ch
007EBE7A: push [ebp+08h]
007EBE7D: push var_000001B4
007EBE83: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EBE88: mov var_000003BC, eax
007EBE8E: jmp 7EBE97h
007EBE90: and var_000003BC, 00000000h
007EBE97: push var_50
007EBE9A: call 004109DCh ; Val(arg_1)
007EBE9F: call 00410814h ; msvbvm60.dll.__vbaFpI4
007EBEA4: dec eax
007EBEA5: mov var_000001B8, eax
007EBEAB: cmp var_000001B8, 0000FF4Bh
007EBEB5: jnb 7EBEC0h
007EBEB7: and var_000003C0, 00000000h
007EBEBE: jmp 7EBECBh
007EBEC0: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007EBEC5: mov var_000003C0, eax
007EBECB: mov eax, var_000001B8
007EBED1: mov ecx, [008F2374h]
007EBED7: lea eax, [ecx+eax*4]
007EBEDA: mov var_000003C4, eax
007EBEE0: jmp 007EBF78h
007EBEE5: lea eax, var_50
007EBEE8: push eax
007EBEE9: mov eax, [ebp+08h]
007EBEEC: mov eax, [eax]
007EBEEE: push [ebp+08h]
007EBEF1: call [eax+000001C0h]
007EBEF7: fclex 
007EBEF9: mov var_000001B4, eax
007EBEFF: cmp var_000001B4, 00000000h
007EBF06: jnl 7EBF28h
007EBF08: push 000001C0h
007EBF0D: push 0044420Ch
007EBF12: push [ebp+08h]
007EBF15: push var_000001B4
007EBF1B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EBF20: mov var_000003C8, eax
007EBF26: jmp 7EBF2Fh
007EBF28: and var_000003C8, 00000000h
007EBF2F: push var_50
007EBF32: call 004109DCh ; Val(arg_1)
007EBF37: call 00410814h ; msvbvm60.dll.__vbaFpI4
007EBF3C: dec eax
007EBF3D: mov var_000001B8, eax
007EBF43: cmp var_000001B8, 0000FF4Bh
007EBF4D: jnb 7EBF58h
007EBF4F: and var_000003CC, 00000000h
007EBF56: jmp 7EBF63h
007EBF58: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007EBF5D: mov var_000003CC, eax
007EBF63: mov eax, var_000001B8
007EBF69: mov ecx, [008F2374h]
007EBF6F: lea eax, [ecx+eax*4]
007EBF72: mov var_000003C4, eax
007EBF78: mov eax, var_000003C4
007EBF7E: mov eax, [eax]
007EBF80: mov var_000001BC, eax
007EBF86: lea eax, var_4C
007EBF89: push eax
007EBF8A: mov eax, [ebp+08h]
007EBF8D: mov eax, [eax]
007EBF8F: push [ebp+08h]
007EBF92: call [eax+000001C0h]
007EBF98: fclex 
007EBF9A: mov var_000001B0, eax
007EBFA0: cmp var_000001B0, 00000000h
007EBFA7: jnl 7EBFC9h
007EBFA9: push 000001C0h
007EBFAE: push 0044420Ch
007EBFB3: push [ebp+08h]
007EBFB6: push var_000001B0
007EBFBC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EBFC1: mov var_000003D0, eax
007EBFC7: jmp 7EBFD0h
007EBFC9: and var_000003D0, 00000000h
007EBFD0: push var_4C
007EBFD3: call 004109DCh ; Val(arg_1)
007EBFD8: push ecx
007EBFD9: push ecx
007EBFDA: fstp real8 ptr [esp]
007EBFDD: call 00410790h ; msvbvm60.dll.__vbaStrR8
007EBFE2: mov edx, eax
007EBFE4: lea ecx, var_54
007EBFE7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EBFEC: push eax
007EBFED: mov eax, var_000001BC
007EBFF3: mov eax, [eax]
007EBFF5: push var_000001BC
007EBFFB: call [eax+000001C4h]
007EC001: fclex 
007EC003: mov var_000001C0, eax
007EC009: cmp var_000001C0, 00000000h
007EC010: jnl 7EC035h
007EC012: push 000001C4h
007EC017: push 0044CE8Ch
007EC01C: push var_000001BC
007EC022: push var_000001C0
007EC028: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EC02D: mov var_000003D4, eax
007EC033: jmp 7EC03Ch
007EC035: and var_000003D4, 00000000h
007EC03C: lea eax, var_54
007EC03F: push eax
007EC040: lea eax, var_50
007EC043: push eax
007EC044: lea eax, var_4C
007EC047: push eax
007EC048: push 00000003h
007EC04A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007EC04F: add esp, 00000010h
007EC052: mov var_04, 00000038h
007EC059: lea eax, var_6C
007EC05C: push eax
007EC05D: mov eax, [ebp+08h]
007EC060: mov eax, [eax]
007EC062: push [ebp+08h]
007EC065: call [eax+000001C0h]
007EC06B: fclex 
007EC06D: mov var_000001B8, eax
007EC073: cmp var_000001B8, 00000000h
007EC07A: jnl 7EC09Ch
007EC07C: push 000001C0h
007EC081: push 0044420Ch
007EC086: push [ebp+08h]
007EC089: push var_000001B8
007EC08F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EC094: mov var_000003D8, eax
007EC09A: jmp 7EC0A3h
007EC09C: and var_000003D8, 00000000h
007EC0A3: push var_6C
007EC0A6: call 004109DCh ; Val(arg_1)
007EC0AB: call 00410814h ; msvbvm60.dll.__vbaFpI4
007EC0B0: dec eax
007EC0B1: mov var_000001BC, eax
007EC0B7: cmp var_000001BC, 0000FF4Bh
007EC0C1: jnb 7EC0CCh
007EC0C3: and var_000003DC, 00000000h
007EC0CA: jmp 7EC0D7h
007EC0CC: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007EC0D1: mov var_000003DC, eax
007EC0D7: mov eax, var_000001BC
007EC0DD: mov ecx, [008F2374h]
007EC0E3: cmp [ecx+eax*4], 00000000h
007EC0E7: jnz 007EC21Dh
007EC0ED: lea eax, var_6C
007EC0F0: push eax
007EC0F1: mov eax, [ebp+08h]
007EC0F4: mov eax, [eax]
007EC0F6: push [ebp+08h]
007EC0F9: call [eax+000001C0h]
007EC0FF: fclex 
007EC101: mov var_000001B8, eax
007EC107: cmp var_000001B8, 00000000h
007EC10E: jnl 7EC130h
007EC110: push 000001C0h
007EC115: push 0044420Ch
007EC11A: push [ebp+08h]
007EC11D: push var_000001B8
007EC123: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EC128: mov var_000003E0, eax
007EC12E: jmp 7EC137h
007EC130: and var_000003E0, 00000000h
007EC137: push var_6C
007EC13A: call 004109DCh ; Val(arg_1)
007EC13F: call 00410814h ; msvbvm60.dll.__vbaFpI4
007EC144: dec eax
007EC145: mov var_000001BC, eax
007EC14B: cmp var_000001BC, 0000FF4Bh
007EC155: jnb 7EC160h
007EC157: and var_000003E4, 00000000h
007EC15E: jmp 7EC16Bh
007EC160: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007EC165: mov var_000003E4, eax
007EC16B: mov eax, var_000001BC
007EC171: mov ecx, [008F2374h]
007EC177: lea eax, [ecx+eax*4]
007EC17A: push eax
007EC17B: push 0041DAA4h
007EC180: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EC185: lea eax, var_6C
007EC188: push eax
007EC189: mov eax, [ebp+08h]
007EC18C: mov eax, [eax]
007EC18E: push [ebp+08h]
007EC191: call [eax+000001C0h]
007EC197: fclex 
007EC199: mov var_000001B8, eax
007EC19F: cmp var_000001B8, 00000000h
007EC1A6: jnl 7EC1C8h
007EC1A8: push 000001C0h
007EC1AD: push 0044420Ch
007EC1B2: push [ebp+08h]
007EC1B5: push var_000001B8
007EC1BB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EC1C0: mov var_000003E8, eax
007EC1C6: jmp 7EC1CFh
007EC1C8: and var_000003E8, 00000000h
007EC1CF: push var_6C
007EC1D2: call 004109DCh ; Val(arg_1)
007EC1D7: call 00410814h ; msvbvm60.dll.__vbaFpI4
007EC1DC: dec eax
007EC1DD: mov var_000001BC, eax
007EC1E3: cmp var_000001BC, 0000FF4Bh
007EC1ED: jnb 7EC1F8h
007EC1EF: and var_000003EC, 00000000h
007EC1F6: jmp 7EC203h
007EC1F8: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007EC1FD: mov var_000003EC, eax
007EC203: mov eax, var_000001BC
007EC209: mov ecx, [008F2374h]
007EC20F: lea eax, [ecx+eax*4]
007EC212: mov var_000003F0, eax
007EC218: jmp 007EC2B0h
007EC21D: lea eax, var_6C
007EC220: push eax
007EC221: mov eax, [ebp+08h]
007EC224: mov eax, [eax]
007EC226: push [ebp+08h]
007EC229: call [eax+000001C0h]
007EC22F: fclex 
007EC231: mov var_000001B8, eax
007EC237: cmp var_000001B8, 00000000h
007EC23E: jnl 7EC260h
007EC240: push 000001C0h
007EC245: push 0044420Ch
007EC24A: push [ebp+08h]
007EC24D: push var_000001B8
007EC253: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EC258: mov var_000003F4, eax
007EC25E: jmp 7EC267h
007EC260: and var_000003F4, 00000000h
007EC267: push var_6C
007EC26A: call 004109DCh ; Val(arg_1)
007EC26F: call 00410814h ; msvbvm60.dll.__vbaFpI4
007EC274: dec eax
007EC275: mov var_000001BC, eax
007EC27B: cmp var_000001BC, 0000FF4Bh
007EC285: jnb 7EC290h
007EC287: and var_000003F8, 00000000h
007EC28E: jmp 7EC29Bh
007EC290: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007EC295: mov var_000003F8, eax
007EC29B: mov eax, var_000001BC
007EC2A1: mov ecx, [008F2374h]
007EC2A7: lea eax, [ecx+eax*4]
007EC2AA: mov var_000003F0, eax
007EC2B0: mov eax, var_000003F0
007EC2B6: mov eax, [eax]
007EC2B8: mov var_000001C0, eax
007EC2BE: mov var_00000144, 00000001h
007EC2C8: mov var_0000014C, 00000003h
007EC2D2: lea eax, var_4C
007EC2D5: push eax
007EC2D6: mov eax, [ebp+08h]
007EC2D9: mov eax, [eax]
007EC2DB: push [ebp+08h]
007EC2DE: call [eax+000001C0h]
007EC2E4: fclex 
007EC2E6: mov var_000001B0, eax
007EC2EC: cmp var_000001B0, 00000000h
007EC2F3: jnl 7EC315h
007EC2F5: push 000001C0h
007EC2FA: push 0044420Ch
007EC2FF: push [ebp+08h]
007EC302: push var_000001B0
007EC308: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EC30D: mov var_000003FC, eax
007EC313: jmp 7EC31Ch
007EC315: and var_000003FC, 00000000h
007EC31C: push var_4C
007EC31F: call 004109DCh ; Val(arg_1)
007EC324: push ecx
007EC325: push ecx
007EC326: fstp real8 ptr [esp]
007EC329: call 00410790h ; msvbvm60.dll.__vbaStrR8
007EC32E: mov edx, eax
007EC330: lea ecx, var_50
007EC333: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EC338: push eax
007EC339: push 004417CCh ; sck
007EC33E: call 00410A18h ; &
007EC343: mov var_000000C0, eax
007EC349: mov var_000000C8, 00000008h
007EC353: cmp [008F2010h], 00000000h
007EC35A: jnz 7EC377h
007EC35C: push 008F2010h
007EC361: push 00433984h
007EC366: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EC36B: mov var_00000400, 008F2010h
007EC375: jmp 7EC381h
007EC377: mov var_00000400, 008F2010h
007EC381: mov var_00000174, 00000007h
007EC38B: mov var_0000017C, 00000003h
007EC395: lea eax, var_5C
007EC398: push eax
007EC399: mov eax, [ebp+08h]
007EC39C: mov eax, [eax]
007EC39E: push [ebp+08h]
007EC3A1: call [eax+000001C0h]
007EC3A7: fclex 
007EC3A9: mov var_000001B4, eax
007EC3AF: cmp var_000001B4, 00000000h
007EC3B6: jnl 7EC3D8h
007EC3B8: push 000001C0h
007EC3BD: push 0044420Ch
007EC3C2: push [ebp+08h]
007EC3C5: push var_000001B4
007EC3CB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EC3D0: mov var_00000404, eax
007EC3D6: jmp 7EC3DFh
007EC3D8: and var_00000404, 00000000h
007EC3DF: push var_5C
007EC3E2: call 004109DCh ; Val(arg_1)
007EC3E7: push ecx
007EC3E8: push ecx
007EC3E9: fstp real8 ptr [esp]
007EC3EC: call 00410790h ; msvbvm60.dll.__vbaStrR8
007EC3F1: mov edx, eax
007EC3F3: lea ecx, var_60
007EC3F6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EC3FB: push eax
007EC3FC: push 004417CCh ; sck
007EC401: call 00410A18h ; &
007EC406: mov var_00000100, eax
007EC40C: mov var_00000108, 00000008h
007EC416: cmp [008F2010h], 00000000h
007EC41D: jnz 7EC43Ah
007EC41F: push 008F2010h
007EC424: push 00433984h
007EC429: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EC42E: mov var_00000408, 008F2010h
007EC438: jmp 7EC444h
007EC43A: mov var_00000408, 008F2010h
007EC444: push 00450168h ; Remote gallery -
007EC449: push 00000010h
007EC44B: pop eax
007EC44C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EC451: lea esi, var_0000014C
007EC457: mov edi, esp
007EC459: movsd 
007EC45A: movsd 
007EC45B: movsd 
007EC45C: movsd 
007EC45D: push 00000001h
007EC45F: push 00000010h
007EC461: push 00440E58h
007EC466: push 00000010h
007EC468: pop eax
007EC469: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EC46E: lea esi, var_000000C8
007EC474: mov edi, esp
007EC476: movsd 
007EC477: movsd 
007EC478: movsd 
007EC479: movsd 
007EC47A: push 00000001h
007EC47C: push 00000000h
007EC47E: push 00440E48h
007EC483: push 00000000h
007EC485: push 00000018h
007EC487: mov eax, var_00000400
007EC48D: mov eax, [eax]
007EC48F: mov ecx, var_00000400
007EC495: mov ecx, [ecx]
007EC497: mov ecx, [ecx]
007EC499: push eax
007EC49A: call [ecx+0000054Ch]
007EC4A0: push eax
007EC4A1: lea eax, var_00000088
007EC4A7: push eax
007EC4A8: call 00410A84h ; Set (object)
007EC4AD: push eax
007EC4AE: lea eax, var_000000B8
007EC4B4: push eax
007EC4B5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EC4BA: add esp, 00000010h
007EC4BD: push eax
007EC4BE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EC4C3: push eax
007EC4C4: lea eax, var_0000008C
007EC4CA: push eax
007EC4CB: call 00410A84h ; Set (object)
007EC4D0: push eax
007EC4D1: lea eax, var_000000D8
007EC4D7: push eax
007EC4D8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EC4DD: add esp, 00000020h
007EC4E0: push eax
007EC4E1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EC4E6: push eax
007EC4E7: lea eax, var_00000090
007EC4ED: push eax
007EC4EE: call 00410A84h ; Set (object)
007EC4F3: push eax
007EC4F4: lea eax, var_000000E8
007EC4FA: push eax
007EC4FB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EC500: add esp, 00000020h
007EC503: push eax
007EC504: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007EC509: mov edx, eax
007EC50B: lea ecx, var_54
007EC50E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EC513: push eax
007EC514: call 00410A18h ; &
007EC519: mov edx, eax
007EC51B: lea ecx, var_58
007EC51E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EC523: push eax
007EC524: push 00441740h
007EC529: call 00410A18h ; &
007EC52E: mov edx, eax
007EC530: lea ecx, var_64
007EC533: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EC538: push eax
007EC539: push 00000010h
007EC53B: pop eax
007EC53C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EC541: lea esi, var_0000017C
007EC547: mov edi, esp
007EC549: movsd 
007EC54A: movsd 
007EC54B: movsd 
007EC54C: movsd 
007EC54D: push 00000001h
007EC54F: push 00000010h
007EC551: push 00440E58h
007EC556: push 00000010h
007EC558: pop eax
007EC559: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EC55E: lea esi, var_00000108
007EC564: mov edi, esp
007EC566: movsd 
007EC567: movsd 
007EC568: movsd 
007EC569: movsd 
007EC56A: push 00000001h
007EC56C: push 00000000h
007EC56E: push 00440E48h
007EC573: push 00000000h
007EC575: push 00000018h
007EC577: mov eax, var_00000408
007EC57D: mov eax, [eax]
007EC57F: mov ecx, var_00000408
007EC585: mov ecx, [ecx]
007EC587: mov ecx, [ecx]
007EC589: push eax
007EC58A: call [ecx+0000054Ch]
007EC590: push eax
007EC591: lea eax, var_00000094
007EC597: push eax
007EC598: call 00410A84h ; Set (object)
007EC59D: push eax
007EC59E: lea eax, var_000000F8
007EC5A4: push eax
007EC5A5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EC5AA: add esp, 00000010h
007EC5AD: push eax
007EC5AE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EC5B3: push eax
007EC5B4: lea eax, var_00000098
007EC5BA: push eax
007EC5BB: call 00410A84h ; Set (object)
007EC5C0: push eax
007EC5C1: lea eax, var_00000118
007EC5C7: push eax
007EC5C8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EC5CD: add esp, 00000020h
007EC5D0: push eax
007EC5D1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EC5D6: push eax
007EC5D7: lea eax, var_0000009C
007EC5DD: push eax
007EC5DE: call 00410A84h ; Set (object)
007EC5E3: push eax
007EC5E4: lea eax, var_00000128
007EC5EA: push eax
007EC5EB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EC5F0: add esp, 00000020h
007EC5F3: push eax
007EC5F4: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007EC5F9: mov edx, eax
007EC5FB: lea ecx, var_68
007EC5FE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EC603: push eax
007EC604: call 00410A18h ; &
007EC609: mov edx, eax
007EC60B: lea ecx, var_70
007EC60E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EC613: push eax
007EC614: mov eax, var_000001C0
007EC61A: mov eax, [eax]
007EC61C: push var_000001C0
007EC622: call [eax+54h]
007EC625: fclex 
007EC627: mov var_000001C4, eax
007EC62D: cmp var_000001C4, 00000000h
007EC634: jnl 7EC656h
007EC636: push 00000054h
007EC638: push 0044CE8Ch
007EC63D: push var_000001C0
007EC643: push var_000001C4
007EC649: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EC64E: mov var_0000040C, eax
007EC654: jmp 7EC65Dh
007EC656: and var_0000040C, 00000000h
007EC65D: lea eax, var_70
007EC660: push eax
007EC661: lea eax, var_6C
007EC664: push eax
007EC665: lea eax, var_68
007EC668: push eax
007EC669: lea eax, var_64
007EC66C: push eax
007EC66D: lea eax, var_60
007EC670: push eax
007EC671: lea eax, var_5C
007EC674: push eax
007EC675: lea eax, var_58
007EC678: push eax
007EC679: lea eax, var_54
007EC67C: push eax
007EC67D: lea eax, var_50
007EC680: push eax
007EC681: lea eax, var_4C
007EC684: push eax
007EC685: push 0000000Ah
007EC687: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007EC68C: add esp, 0000002Ch
007EC68F: lea eax, var_0000009C
007EC695: push eax
007EC696: lea eax, var_00000098
007EC69C: push eax
007EC69D: lea eax, var_00000094
007EC6A3: push eax
007EC6A4: lea eax, var_00000090
007EC6AA: push eax
007EC6AB: lea eax, var_0000008C
007EC6B1: push eax
007EC6B2: lea eax, var_00000088
007EC6B8: push eax
007EC6B9: push 00000006h
007EC6BB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EC6C0: add esp, 0000001Ch
007EC6C3: lea eax, var_00000128
007EC6C9: push eax
007EC6CA: lea eax, var_00000118
007EC6D0: push eax
007EC6D1: lea eax, var_00000108
007EC6D7: push eax
007EC6D8: lea eax, var_000000F8
007EC6DE: push eax
007EC6DF: lea eax, var_000000E8
007EC6E5: push eax
007EC6E6: lea eax, var_000000D8
007EC6EC: push eax
007EC6ED: lea eax, var_000000C8
007EC6F3: push eax
007EC6F4: lea eax, var_000000B8
007EC6FA: push eax
007EC6FB: push 00000008h
007EC6FD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EC702: add esp, 00000024h
007EC705: mov var_04, 00000039h
007EC70C: lea eax, var_4C
007EC70F: push eax
007EC710: mov eax, [ebp+08h]
007EC713: mov eax, [eax]
007EC715: push [ebp+08h]
007EC718: call [eax+000001C0h]
007EC71E: fclex 
007EC720: mov var_000001B0, eax
007EC726: cmp var_000001B0, 00000000h
007EC72D: jnl 7EC74Fh
007EC72F: push 000001C0h
007EC734: push 0044420Ch
007EC739: push [ebp+08h]
007EC73C: push var_000001B0
007EC742: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EC747: mov var_00000410, eax
007EC74D: jmp 7EC756h
007EC74F: and var_00000410, 00000000h
007EC756: push var_4C
007EC759: call 004109DCh ; Val(arg_1)
007EC75E: call 00410814h ; msvbvm60.dll.__vbaFpI4
007EC763: dec eax
007EC764: mov var_000001B4, eax
007EC76A: cmp var_000001B4, 0000FF4Bh
007EC774: jnb 7EC77Fh
007EC776: and var_00000414, 00000000h
007EC77D: jmp 7EC78Ah
007EC77F: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007EC784: mov var_00000414, eax
007EC78A: mov eax, var_000001B4
007EC790: mov ecx, [008F2374h]
007EC796: cmp [ecx+eax*4], 00000000h
007EC79A: jnz 007EC8D0h
007EC7A0: lea eax, var_4C
007EC7A3: push eax
007EC7A4: mov eax, [ebp+08h]
007EC7A7: mov eax, [eax]
007EC7A9: push [ebp+08h]
007EC7AC: call [eax+000001C0h]
007EC7B2: fclex 
007EC7B4: mov var_000001B0, eax
007EC7BA: cmp var_000001B0, 00000000h
007EC7C1: jnl 7EC7E3h
007EC7C3: push 000001C0h
007EC7C8: push 0044420Ch
007EC7CD: push [ebp+08h]
007EC7D0: push var_000001B0
007EC7D6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EC7DB: mov var_00000418, eax
007EC7E1: jmp 7EC7EAh
007EC7E3: and var_00000418, 00000000h
007EC7EA: push var_4C
007EC7ED: call 004109DCh ; Val(arg_1)
007EC7F2: call 00410814h ; msvbvm60.dll.__vbaFpI4
007EC7F7: dec eax
007EC7F8: mov var_000001B4, eax
007EC7FE: cmp var_000001B4, 0000FF4Bh
007EC808: jnb 7EC813h
007EC80A: and var_0000041C, 00000000h
007EC811: jmp 7EC81Eh
007EC813: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007EC818: mov var_0000041C, eax
007EC81E: mov eax, var_000001B4
007EC824: mov ecx, [008F2374h]
007EC82A: lea eax, [ecx+eax*4]
007EC82D: push eax
007EC82E: push 0041DAA4h
007EC833: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EC838: lea eax, var_4C
007EC83B: push eax
007EC83C: mov eax, [ebp+08h]
007EC83F: mov eax, [eax]
007EC841: push [ebp+08h]
007EC844: call [eax+000001C0h]
007EC84A: fclex 
007EC84C: mov var_000001B0, eax
007EC852: cmp var_000001B0, 00000000h
007EC859: jnl 7EC87Bh
007EC85B: push 000001C0h
007EC860: push 0044420Ch
007EC865: push [ebp+08h]
007EC868: push var_000001B0
007EC86E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EC873: mov var_00000420, eax
007EC879: jmp 7EC882h
007EC87B: and var_00000420, 00000000h
007EC882: push var_4C
007EC885: call 004109DCh ; Val(arg_1)
007EC88A: call 00410814h ; msvbvm60.dll.__vbaFpI4
007EC88F: dec eax
007EC890: mov var_000001B4, eax
007EC896: cmp var_000001B4, 0000FF4Bh
007EC8A0: jnb 7EC8ABh
007EC8A2: and var_00000424, 00000000h
007EC8A9: jmp 7EC8B6h
007EC8AB: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007EC8B0: mov var_00000424, eax
007EC8B6: mov eax, var_000001B4
007EC8BC: mov ecx, [008F2374h]
007EC8C2: lea eax, [ecx+eax*4]
007EC8C5: mov var_00000428, eax
007EC8CB: jmp 007EC963h
007EC8D0: lea eax, var_4C
007EC8D3: push eax
007EC8D4: mov eax, [ebp+08h]
007EC8D7: mov eax, [eax]
007EC8D9: push [ebp+08h]
007EC8DC: call [eax+000001C0h]
007EC8E2: fclex 
007EC8E4: mov var_000001B0, eax
007EC8EA: cmp var_000001B0, 00000000h
007EC8F1: jnl 7EC913h
007EC8F3: push 000001C0h
007EC8F8: push 0044420Ch
007EC8FD: push [ebp+08h]
007EC900: push var_000001B0
007EC906: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EC90B: mov var_0000042C, eax
007EC911: jmp 7EC91Ah
007EC913: and var_0000042C, 00000000h
007EC91A: push var_4C
007EC91D: call 004109DCh ; Val(arg_1)
007EC922: call 00410814h ; msvbvm60.dll.__vbaFpI4
007EC927: dec eax
007EC928: mov var_000001B4, eax
007EC92E: cmp var_000001B4, 0000FF4Bh
007EC938: jnb 7EC943h
007EC93A: and var_00000430, 00000000h
007EC941: jmp 7EC94Eh
007EC943: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007EC948: mov var_00000430, eax
007EC94E: mov eax, var_000001B4
007EC954: mov ecx, [008F2374h]
007EC95A: lea eax, [ecx+eax*4]
007EC95D: mov var_00000428, eax
007EC963: mov eax, var_00000428
007EC969: mov eax, [eax]
007EC96B: mov var_000001B8, eax
007EC971: mov eax, [ebp+08h]
007EC974: mov var_00000144, eax
007EC97A: mov var_0000014C, 00000009h
007EC984: mov var_00000134, 80020004h
007EC98E: mov var_0000013C, 0000000Ah
007EC998: push 00000010h
007EC99A: pop eax
007EC99B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EC9A0: lea esi, var_0000014C
007EC9A6: mov edi, esp
007EC9A8: movsd 
007EC9A9: movsd 
007EC9AA: movsd 
007EC9AB: movsd 
007EC9AC: push 00000010h
007EC9AE: pop eax
007EC9AF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EC9B4: lea esi, var_0000013C
007EC9BA: mov edi, esp
007EC9BC: movsd 
007EC9BD: movsd 
007EC9BE: movsd 
007EC9BF: movsd 
007EC9C0: mov eax, var_000001B8
007EC9C6: mov eax, [eax]
007EC9C8: push var_000001B8
007EC9CE: call [eax+000002B0h]
007EC9D4: fclex 
007EC9D6: mov var_000001BC, eax
007EC9DC: cmp var_000001BC, 00000000h
007EC9E3: jnl 7ECA08h
007EC9E5: push 000002B0h
007EC9EA: push 0044CE8Ch
007EC9EF: push var_000001B8
007EC9F5: push var_000001BC
007EC9FB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ECA00: mov var_00000434, eax
007ECA06: jmp 7ECA0Fh
007ECA08: and var_00000434, 00000000h
007ECA0F: lea ecx, var_4C
007ECA12: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007ECA17: jmp 007ED719h
007ECA1C: mov var_04, 0000003Bh
007ECA23: lea eax, var_50
007ECA26: push eax
007ECA27: mov eax, [ebp+08h]
007ECA2A: mov eax, [eax]
007ECA2C: push [ebp+08h]
007ECA2F: call [eax+000001C0h]
007ECA35: fclex 
007ECA37: mov var_000001B4, eax
007ECA3D: cmp var_000001B4, 00000000h
007ECA44: jnl 7ECA66h
007ECA46: push 000001C0h
007ECA4B: push 0044420Ch
007ECA50: push [ebp+08h]
007ECA53: push var_000001B4
007ECA59: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ECA5E: mov var_00000438, eax
007ECA64: jmp 7ECA6Dh
007ECA66: and var_00000438, 00000000h
007ECA6D: push var_50
007ECA70: call 004109DCh ; Val(arg_1)
007ECA75: call 00410814h ; msvbvm60.dll.__vbaFpI4
007ECA7A: dec eax
007ECA7B: mov var_000001B8, eax
007ECA81: cmp var_000001B8, 0000FF4Bh
007ECA8B: jnb 7ECA96h
007ECA8D: and var_0000043C, 00000000h
007ECA94: jmp 7ECAA1h
007ECA96: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007ECA9B: mov var_0000043C, eax
007ECAA1: mov eax, var_000001B8
007ECAA7: mov ecx, [008F2374h]
007ECAAD: cmp [ecx+eax*4], 00000000h
007ECAB1: jnz 007ECBE7h
007ECAB7: lea eax, var_50
007ECABA: push eax
007ECABB: mov eax, [ebp+08h]
007ECABE: mov eax, [eax]
007ECAC0: push [ebp+08h]
007ECAC3: call [eax+000001C0h]
007ECAC9: fclex 
007ECACB: mov var_000001B4, eax
007ECAD1: cmp var_000001B4, 00000000h
007ECAD8: jnl 7ECAFAh
007ECADA: push 000001C0h
007ECADF: push 0044420Ch
007ECAE4: push [ebp+08h]
007ECAE7: push var_000001B4
007ECAED: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ECAF2: mov var_00000440, eax
007ECAF8: jmp 7ECB01h
007ECAFA: and var_00000440, 00000000h
007ECB01: push var_50
007ECB04: call 004109DCh ; Val(arg_1)
007ECB09: call 00410814h ; msvbvm60.dll.__vbaFpI4
007ECB0E: dec eax
007ECB0F: mov var_000001B8, eax
007ECB15: cmp var_000001B8, 0000FF4Bh
007ECB1F: jnb 7ECB2Ah
007ECB21: and var_00000444, 00000000h
007ECB28: jmp 7ECB35h
007ECB2A: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007ECB2F: mov var_00000444, eax
007ECB35: mov eax, var_000001B8
007ECB3B: mov ecx, [008F2374h]
007ECB41: lea eax, [ecx+eax*4]
007ECB44: push eax
007ECB45: push 0041DAA4h
007ECB4A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007ECB4F: lea eax, var_50
007ECB52: push eax
007ECB53: mov eax, [ebp+08h]
007ECB56: mov eax, [eax]
007ECB58: push [ebp+08h]
007ECB5B: call [eax+000001C0h]
007ECB61: fclex 
007ECB63: mov var_000001B4, eax
007ECB69: cmp var_000001B4, 00000000h
007ECB70: jnl 7ECB92h
007ECB72: push 000001C0h
007ECB77: push 0044420Ch
007ECB7C: push [ebp+08h]
007ECB7F: push var_000001B4
007ECB85: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ECB8A: mov var_00000448, eax
007ECB90: jmp 7ECB99h
007ECB92: and var_00000448, 00000000h
007ECB99: push var_50
007ECB9C: call 004109DCh ; Val(arg_1)
007ECBA1: call 00410814h ; msvbvm60.dll.__vbaFpI4
007ECBA6: dec eax
007ECBA7: mov var_000001B8, eax
007ECBAD: cmp var_000001B8, 0000FF4Bh
007ECBB7: jnb 7ECBC2h
007ECBB9: and var_0000044C, 00000000h
007ECBC0: jmp 7ECBCDh
007ECBC2: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007ECBC7: mov var_0000044C, eax
007ECBCD: mov eax, var_000001B8
007ECBD3: mov ecx, [008F2374h]
007ECBD9: lea eax, [ecx+eax*4]
007ECBDC: mov var_00000450, eax
007ECBE2: jmp 007ECC7Ah
007ECBE7: lea eax, var_50
007ECBEA: push eax
007ECBEB: mov eax, [ebp+08h]
007ECBEE: mov eax, [eax]
007ECBF0: push [ebp+08h]
007ECBF3: call [eax+000001C0h]
007ECBF9: fclex 
007ECBFB: mov var_000001B4, eax
007ECC01: cmp var_000001B4, 00000000h
007ECC08: jnl 7ECC2Ah
007ECC0A: push 000001C0h
007ECC0F: push 0044420Ch
007ECC14: push [ebp+08h]
007ECC17: push var_000001B4
007ECC1D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ECC22: mov var_00000454, eax
007ECC28: jmp 7ECC31h
007ECC2A: and var_00000454, 00000000h
007ECC31: push var_50
007ECC34: call 004109DCh ; Val(arg_1)
007ECC39: call 00410814h ; msvbvm60.dll.__vbaFpI4
007ECC3E: dec eax
007ECC3F: mov var_000001B8, eax
007ECC45: cmp var_000001B8, 0000FF4Bh
007ECC4F: jnb 7ECC5Ah
007ECC51: and var_00000458, 00000000h
007ECC58: jmp 7ECC65h
007ECC5A: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007ECC5F: mov var_00000458, eax
007ECC65: mov eax, var_000001B8
007ECC6B: mov ecx, [008F2374h]
007ECC71: lea eax, [ecx+eax*4]
007ECC74: mov var_00000450, eax
007ECC7A: mov eax, var_00000450
007ECC80: mov eax, [eax]
007ECC82: mov var_000001BC, eax
007ECC88: lea eax, var_4C
007ECC8B: push eax
007ECC8C: mov eax, [ebp+08h]
007ECC8F: mov eax, [eax]
007ECC91: push [ebp+08h]
007ECC94: call [eax+000001C0h]
007ECC9A: fclex 
007ECC9C: mov var_000001B0, eax
007ECCA2: cmp var_000001B0, 00000000h
007ECCA9: jnl 7ECCCBh
007ECCAB: push 000001C0h
007ECCB0: push 0044420Ch
007ECCB5: push [ebp+08h]
007ECCB8: push var_000001B0
007ECCBE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ECCC3: mov var_0000045C, eax
007ECCC9: jmp 7ECCD2h
007ECCCB: and var_0000045C, 00000000h
007ECCD2: push var_4C
007ECCD5: call 004109DCh ; Val(arg_1)
007ECCDA: push ecx
007ECCDB: push ecx
007ECCDC: fstp real8 ptr [esp]
007ECCDF: call 00410790h ; msvbvm60.dll.__vbaStrR8
007ECCE4: mov edx, eax
007ECCE6: lea ecx, var_54
007ECCE9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007ECCEE: push eax
007ECCEF: mov eax, var_000001BC
007ECCF5: mov eax, [eax]
007ECCF7: push var_000001BC
007ECCFD: call [eax+000001C4h]
007ECD03: fclex 
007ECD05: mov var_000001C0, eax
007ECD0B: cmp var_000001C0, 00000000h
007ECD12: jnl 7ECD37h
007ECD14: push 000001C4h
007ECD19: push 0044CE8Ch
007ECD1E: push var_000001BC
007ECD24: push var_000001C0
007ECD2A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ECD2F: mov var_00000460, eax
007ECD35: jmp 7ECD3Eh
007ECD37: and var_00000460, 00000000h
007ECD3E: lea eax, var_54
007ECD41: push eax
007ECD42: lea eax, var_50
007ECD45: push eax
007ECD46: lea eax, var_4C
007ECD49: push eax
007ECD4A: push 00000003h
007ECD4C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007ECD51: add esp, 00000010h
007ECD54: mov var_04, 0000003Ch
007ECD5B: lea eax, var_6C
007ECD5E: push eax
007ECD5F: mov eax, [ebp+08h]
007ECD62: mov eax, [eax]
007ECD64: push [ebp+08h]
007ECD67: call [eax+000001C0h]
007ECD6D: fclex 
007ECD6F: mov var_000001B8, eax
007ECD75: cmp var_000001B8, 00000000h
007ECD7C: jnl 7ECD9Eh
007ECD7E: push 000001C0h
007ECD83: push 0044420Ch
007ECD88: push [ebp+08h]
007ECD8B: push var_000001B8
007ECD91: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ECD96: mov var_00000464, eax
007ECD9C: jmp 7ECDA5h
007ECD9E: and var_00000464, 00000000h
007ECDA5: push var_6C
007ECDA8: call 004109DCh ; Val(arg_1)
007ECDAD: call 00410814h ; msvbvm60.dll.__vbaFpI4
007ECDB2: dec eax
007ECDB3: mov var_000001BC, eax
007ECDB9: cmp var_000001BC, 0000FF4Bh
007ECDC3: jnb 7ECDCEh
007ECDC5: and var_00000468, 00000000h
007ECDCC: jmp 7ECDD9h
007ECDCE: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007ECDD3: mov var_00000468, eax
007ECDD9: mov eax, var_000001BC
007ECDDF: mov ecx, [008F2374h]
007ECDE5: cmp [ecx+eax*4], 00000000h
007ECDE9: jnz 007ECF1Fh
007ECDEF: lea eax, var_6C
007ECDF2: push eax
007ECDF3: mov eax, [ebp+08h]
007ECDF6: mov eax, [eax]
007ECDF8: push [ebp+08h]
007ECDFB: call [eax+000001C0h]
007ECE01: fclex 
007ECE03: mov var_000001B8, eax
007ECE09: cmp var_000001B8, 00000000h
007ECE10: jnl 7ECE32h
007ECE12: push 000001C0h
007ECE17: push 0044420Ch
007ECE1C: push [ebp+08h]
007ECE1F: push var_000001B8
007ECE25: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ECE2A: mov var_0000046C, eax
007ECE30: jmp 7ECE39h
007ECE32: and var_0000046C, 00000000h
007ECE39: push var_6C
007ECE3C: call 004109DCh ; Val(arg_1)
007ECE41: call 00410814h ; msvbvm60.dll.__vbaFpI4
007ECE46: dec eax
007ECE47: mov var_000001BC, eax
007ECE4D: cmp var_000001BC, 0000FF4Bh
007ECE57: jnb 7ECE62h
007ECE59: and var_00000470, 00000000h
007ECE60: jmp 7ECE6Dh
007ECE62: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007ECE67: mov var_00000470, eax
007ECE6D: mov eax, var_000001BC
007ECE73: mov ecx, [008F2374h]
007ECE79: lea eax, [ecx+eax*4]
007ECE7C: push eax
007ECE7D: push 0041DAA4h
007ECE82: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007ECE87: lea eax, var_6C
007ECE8A: push eax
007ECE8B: mov eax, [ebp+08h]
007ECE8E: mov eax, [eax]
007ECE90: push [ebp+08h]
007ECE93: call [eax+000001C0h]
007ECE99: fclex 
007ECE9B: mov var_000001B8, eax
007ECEA1: cmp var_000001B8, 00000000h
007ECEA8: jnl 7ECECAh
007ECEAA: push 000001C0h
007ECEAF: push 0044420Ch
007ECEB4: push [ebp+08h]
007ECEB7: push var_000001B8
007ECEBD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ECEC2: mov var_00000474, eax
007ECEC8: jmp 7ECED1h
007ECECA: and var_00000474, 00000000h
007ECED1: push var_6C
007ECED4: call 004109DCh ; Val(arg_1)
007ECED9: call 00410814h ; msvbvm60.dll.__vbaFpI4
007ECEDE: dec eax
007ECEDF: mov var_000001BC, eax
007ECEE5: cmp var_000001BC, 0000FF4Bh
007ECEEF: jnb 7ECEFAh
007ECEF1: and var_00000478, 00000000h
007ECEF8: jmp 7ECF05h
007ECEFA: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007ECEFF: mov var_00000478, eax
007ECF05: mov eax, var_000001BC
007ECF0B: mov ecx, [008F2374h]
007ECF11: lea eax, [ecx+eax*4]
007ECF14: mov var_0000047C, eax
007ECF1A: jmp 007ECFB2h
007ECF1F: lea eax, var_6C
007ECF22: push eax
007ECF23: mov eax, [ebp+08h]
007ECF26: mov eax, [eax]
007ECF28: push [ebp+08h]
007ECF2B: call [eax+000001C0h]
007ECF31: fclex 
007ECF33: mov var_000001B8, eax
007ECF39: cmp var_000001B8, 00000000h
007ECF40: jnl 7ECF62h
007ECF42: push 000001C0h
007ECF47: push 0044420Ch
007ECF4C: push [ebp+08h]
007ECF4F: push var_000001B8
007ECF55: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ECF5A: mov var_00000480, eax
007ECF60: jmp 7ECF69h
007ECF62: and var_00000480, 00000000h
007ECF69: push var_6C
007ECF6C: call 004109DCh ; Val(arg_1)
007ECF71: call 00410814h ; msvbvm60.dll.__vbaFpI4
007ECF76: dec eax
007ECF77: mov var_000001BC, eax
007ECF7D: cmp var_000001BC, 0000FF4Bh
007ECF87: jnb 7ECF92h
007ECF89: and var_00000484, 00000000h
007ECF90: jmp 7ECF9Dh
007ECF92: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007ECF97: mov var_00000484, eax
007ECF9D: mov eax, var_000001BC
007ECFA3: mov ecx, [008F2374h]
007ECFA9: lea eax, [ecx+eax*4]
007ECFAC: mov var_0000047C, eax
007ECFB2: mov eax, var_0000047C
007ECFB8: mov eax, [eax]
007ECFBA: mov var_000001C0, eax
007ECFC0: mov var_00000144, 00000001h
007ECFCA: mov var_0000014C, 00000003h
007ECFD4: lea eax, var_4C
007ECFD7: push eax
007ECFD8: mov eax, [ebp+08h]
007ECFDB: mov eax, [eax]
007ECFDD: push [ebp+08h]
007ECFE0: call [eax+000001C0h]
007ECFE6: fclex 
007ECFE8: mov var_000001B0, eax
007ECFEE: cmp var_000001B0, 00000000h
007ECFF5: jnl 7ED017h
007ECFF7: push 000001C0h
007ECFFC: push 0044420Ch
007ED001: push [ebp+08h]
007ED004: push var_000001B0
007ED00A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ED00F: mov var_00000488, eax
007ED015: jmp 7ED01Eh
007ED017: and var_00000488, 00000000h
007ED01E: push var_4C
007ED021: call 004109DCh ; Val(arg_1)
007ED026: push ecx
007ED027: push ecx
007ED028: fstp real8 ptr [esp]
007ED02B: call 00410790h ; msvbvm60.dll.__vbaStrR8
007ED030: mov edx, eax
007ED032: lea ecx, var_50
007ED035: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007ED03A: push eax
007ED03B: push 004417CCh ; sck
007ED040: call 00410A18h ; &
007ED045: mov var_000000C0, eax
007ED04B: mov var_000000C8, 00000008h
007ED055: cmp [008F2010h], 00000000h
007ED05C: jnz 7ED079h
007ED05E: push 008F2010h
007ED063: push 00433984h
007ED068: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007ED06D: mov var_0000048C, 008F2010h
007ED077: jmp 7ED083h
007ED079: mov var_0000048C, 008F2010h
007ED083: mov var_00000174, 00000007h
007ED08D: mov var_0000017C, 00000003h
007ED097: lea eax, var_5C
007ED09A: push eax
007ED09B: mov eax, [ebp+08h]
007ED09E: mov eax, [eax]
007ED0A0: push [ebp+08h]
007ED0A3: call [eax+000001C0h]
007ED0A9: fclex 
007ED0AB: mov var_000001B4, eax
007ED0B1: cmp var_000001B4, 00000000h
007ED0B8: jnl 7ED0DAh
007ED0BA: push 000001C0h
007ED0BF: push 0044420Ch
007ED0C4: push [ebp+08h]
007ED0C7: push var_000001B4
007ED0CD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ED0D2: mov var_00000490, eax
007ED0D8: jmp 7ED0E1h
007ED0DA: and var_00000490, 00000000h
007ED0E1: push var_5C
007ED0E4: call 004109DCh ; Val(arg_1)
007ED0E9: push ecx
007ED0EA: push ecx
007ED0EB: fstp real8 ptr [esp]
007ED0EE: call 00410790h ; msvbvm60.dll.__vbaStrR8
007ED0F3: mov edx, eax
007ED0F5: lea ecx, var_60
007ED0F8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007ED0FD: push eax
007ED0FE: push 004417CCh ; sck
007ED103: call 00410A18h ; &
007ED108: mov var_00000100, eax
007ED10E: mov var_00000108, 00000008h
007ED118: cmp [008F2010h], 00000000h
007ED11F: jnz 7ED13Ch
007ED121: push 008F2010h
007ED126: push 00433984h
007ED12B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007ED130: mov var_00000494, 008F2010h
007ED13A: jmp 7ED146h
007ED13C: mov var_00000494, 008F2010h
007ED146: push 00450168h ; Remote gallery -
007ED14B: push 00000010h
007ED14D: pop eax
007ED14E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007ED153: lea esi, var_0000014C
007ED159: mov edi, esp
007ED15B: movsd 
007ED15C: movsd 
007ED15D: movsd 
007ED15E: movsd 
007ED15F: push 00000001h
007ED161: push 00000010h
007ED163: push 00440E58h
007ED168: push 00000010h
007ED16A: pop eax
007ED16B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007ED170: lea esi, var_000000C8
007ED176: mov edi, esp
007ED178: movsd 
007ED179: movsd 
007ED17A: movsd 
007ED17B: movsd 
007ED17C: push 00000001h
007ED17E: push 00000000h
007ED180: push 00440E48h
007ED185: push 00000000h
007ED187: push 00000018h
007ED189: mov eax, var_0000048C
007ED18F: mov eax, [eax]
007ED191: mov ecx, var_0000048C
007ED197: mov ecx, [ecx]
007ED199: mov ecx, [ecx]
007ED19B: push eax
007ED19C: call [ecx+00000550h]
007ED1A2: push eax
007ED1A3: lea eax, var_00000088
007ED1A9: push eax
007ED1AA: call 00410A84h ; Set (object)
007ED1AF: push eax
007ED1B0: lea eax, var_000000B8
007ED1B6: push eax
007ED1B7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007ED1BC: add esp, 00000010h
007ED1BF: push eax
007ED1C0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007ED1C5: push eax
007ED1C6: lea eax, var_0000008C
007ED1CC: push eax
007ED1CD: call 00410A84h ; Set (object)
007ED1D2: push eax
007ED1D3: lea eax, var_000000D8
007ED1D9: push eax
007ED1DA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007ED1DF: add esp, 00000020h
007ED1E2: push eax
007ED1E3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007ED1E8: push eax
007ED1E9: lea eax, var_00000090
007ED1EF: push eax
007ED1F0: call 00410A84h ; Set (object)
007ED1F5: push eax
007ED1F6: lea eax, var_000000E8
007ED1FC: push eax
007ED1FD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007ED202: add esp, 00000020h
007ED205: push eax
007ED206: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007ED20B: mov edx, eax
007ED20D: lea ecx, var_54
007ED210: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007ED215: push eax
007ED216: call 00410A18h ; &
007ED21B: mov edx, eax
007ED21D: lea ecx, var_58
007ED220: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007ED225: push eax
007ED226: push 00441740h
007ED22B: call 00410A18h ; &
007ED230: mov edx, eax
007ED232: lea ecx, var_64
007ED235: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007ED23A: push eax
007ED23B: push 00000010h
007ED23D: pop eax
007ED23E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007ED243: lea esi, var_0000017C
007ED249: mov edi, esp
007ED24B: movsd 
007ED24C: movsd 
007ED24D: movsd 
007ED24E: movsd 
007ED24F: push 00000001h
007ED251: push 00000010h
007ED253: push 00440E58h
007ED258: push 00000010h
007ED25A: pop eax
007ED25B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007ED260: lea esi, var_00000108
007ED266: mov edi, esp
007ED268: movsd 
007ED269: movsd 
007ED26A: movsd 
007ED26B: movsd 
007ED26C: push 00000001h
007ED26E: push 00000000h
007ED270: push 00440E48h
007ED275: push 00000000h
007ED277: push 00000018h
007ED279: mov eax, var_00000494
007ED27F: mov eax, [eax]
007ED281: mov ecx, var_00000494
007ED287: mov ecx, [ecx]
007ED289: mov ecx, [ecx]
007ED28B: push eax
007ED28C: call [ecx+00000550h]
007ED292: push eax
007ED293: lea eax, var_00000094
007ED299: push eax
007ED29A: call 00410A84h ; Set (object)
007ED29F: push eax
007ED2A0: lea eax, var_000000F8
007ED2A6: push eax
007ED2A7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007ED2AC: add esp, 00000010h
007ED2AF: push eax
007ED2B0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007ED2B5: push eax
007ED2B6: lea eax, var_00000098
007ED2BC: push eax
007ED2BD: call 00410A84h ; Set (object)
007ED2C2: push eax
007ED2C3: lea eax, var_00000118
007ED2C9: push eax
007ED2CA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007ED2CF: add esp, 00000020h
007ED2D2: push eax
007ED2D3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007ED2D8: push eax
007ED2D9: lea eax, var_0000009C
007ED2DF: push eax
007ED2E0: call 00410A84h ; Set (object)
007ED2E5: push eax
007ED2E6: lea eax, var_00000128
007ED2EC: push eax
007ED2ED: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007ED2F2: add esp, 00000020h
007ED2F5: push eax
007ED2F6: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007ED2FB: mov edx, eax
007ED2FD: lea ecx, var_68
007ED300: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007ED305: push eax
007ED306: call 00410A18h ; &
007ED30B: mov edx, eax
007ED30D: lea ecx, var_70
007ED310: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007ED315: push eax
007ED316: mov eax, var_000001C0
007ED31C: mov eax, [eax]
007ED31E: push var_000001C0
007ED324: call [eax+54h]
007ED327: fclex 
007ED329: mov var_000001C4, eax
007ED32F: cmp var_000001C4, 00000000h
007ED336: jnl 7ED358h
007ED338: push 00000054h
007ED33A: push 0044CE8Ch
007ED33F: push var_000001C0
007ED345: push var_000001C4
007ED34B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ED350: mov var_00000498, eax
007ED356: jmp 7ED35Fh
007ED358: and var_00000498, 00000000h
007ED35F: lea eax, var_70
007ED362: push eax
007ED363: lea eax, var_6C
007ED366: push eax
007ED367: lea eax, var_68
007ED36A: push eax
007ED36B: lea eax, var_64
007ED36E: push eax
007ED36F: lea eax, var_60
007ED372: push eax
007ED373: lea eax, var_5C
007ED376: push eax
007ED377: lea eax, var_58
007ED37A: push eax
007ED37B: lea eax, var_54
007ED37E: push eax
007ED37F: lea eax, var_50
007ED382: push eax
007ED383: lea eax, var_4C
007ED386: push eax
007ED387: push 0000000Ah
007ED389: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007ED38E: add esp, 0000002Ch
007ED391: lea eax, var_0000009C
007ED397: push eax
007ED398: lea eax, var_00000098
007ED39E: push eax
007ED39F: lea eax, var_00000094
007ED3A5: push eax
007ED3A6: lea eax, var_00000090
007ED3AC: push eax
007ED3AD: lea eax, var_0000008C
007ED3B3: push eax
007ED3B4: lea eax, var_00000088
007ED3BA: push eax
007ED3BB: push 00000006h
007ED3BD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007ED3C2: add esp, 0000001Ch
007ED3C5: lea eax, var_00000128
007ED3CB: push eax
007ED3CC: lea eax, var_00000118
007ED3D2: push eax
007ED3D3: lea eax, var_00000108
007ED3D9: push eax
007ED3DA: lea eax, var_000000F8
007ED3E0: push eax
007ED3E1: lea eax, var_000000E8
007ED3E7: push eax
007ED3E8: lea eax, var_000000D8
007ED3EE: push eax
007ED3EF: lea eax, var_000000C8
007ED3F5: push eax
007ED3F6: lea eax, var_000000B8
007ED3FC: push eax
007ED3FD: push 00000008h
007ED3FF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007ED404: add esp, 00000024h
007ED407: mov var_04, 0000003Dh
007ED40E: lea eax, var_4C
007ED411: push eax
007ED412: mov eax, [ebp+08h]
007ED415: mov eax, [eax]
007ED417: push [ebp+08h]
007ED41A: call [eax+000001C0h]
007ED420: fclex 
007ED422: mov var_000001B0, eax
007ED428: cmp var_000001B0, 00000000h
007ED42F: jnl 7ED451h
007ED431: push 000001C0h
007ED436: push 0044420Ch
007ED43B: push [ebp+08h]
007ED43E: push var_000001B0
007ED444: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ED449: mov var_0000049C, eax
007ED44F: jmp 7ED458h
007ED451: and var_0000049C, 00000000h
007ED458: push var_4C
007ED45B: call 004109DCh ; Val(arg_1)
007ED460: call 00410814h ; msvbvm60.dll.__vbaFpI4
007ED465: dec eax
007ED466: mov var_000001B4, eax
007ED46C: cmp var_000001B4, 0000FF4Bh
007ED476: jnb 7ED481h
007ED478: and var_000004A0, 00000000h
007ED47F: jmp 7ED48Ch
007ED481: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007ED486: mov var_000004A0, eax
007ED48C: mov eax, var_000001B4
007ED492: mov ecx, [008F2374h]
007ED498: cmp [ecx+eax*4], 00000000h
007ED49C: jnz 007ED5D2h
007ED4A2: lea eax, var_4C
007ED4A5: push eax
007ED4A6: mov eax, [ebp+08h]
007ED4A9: mov eax, [eax]
007ED4AB: push [ebp+08h]
007ED4AE: call [eax+000001C0h]
007ED4B4: fclex 
007ED4B6: mov var_000001B0, eax
007ED4BC: cmp var_000001B0, 00000000h
007ED4C3: jnl 7ED4E5h
007ED4C5: push 000001C0h
007ED4CA: push 0044420Ch
007ED4CF: push [ebp+08h]
007ED4D2: push var_000001B0
007ED4D8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ED4DD: mov var_000004A4, eax
007ED4E3: jmp 7ED4ECh
007ED4E5: and var_000004A4, 00000000h
007ED4EC: push var_4C
007ED4EF: call 004109DCh ; Val(arg_1)
007ED4F4: call 00410814h ; msvbvm60.dll.__vbaFpI4
007ED4F9: dec eax
007ED4FA: mov var_000001B4, eax
007ED500: cmp var_000001B4, 0000FF4Bh
007ED50A: jnb 7ED515h
007ED50C: and var_000004A8, 00000000h
007ED513: jmp 7ED520h
007ED515: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007ED51A: mov var_000004A8, eax
007ED520: mov eax, var_000001B4
007ED526: mov ecx, [008F2374h]
007ED52C: lea eax, [ecx+eax*4]
007ED52F: push eax
007ED530: push 0041DAA4h
007ED535: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007ED53A: lea eax, var_4C
007ED53D: push eax
007ED53E: mov eax, [ebp+08h]
007ED541: mov eax, [eax]
007ED543: push [ebp+08h]
007ED546: call [eax+000001C0h]
007ED54C: fclex 
007ED54E: mov var_000001B0, eax
007ED554: cmp var_000001B0, 00000000h
007ED55B: jnl 7ED57Dh
007ED55D: push 000001C0h
007ED562: push 0044420Ch
007ED567: push [ebp+08h]
007ED56A: push var_000001B0
007ED570: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ED575: mov var_000004AC, eax
007ED57B: jmp 7ED584h
007ED57D: and var_000004AC, 00000000h
007ED584: push var_4C
007ED587: call 004109DCh ; Val(arg_1)
007ED58C: call 00410814h ; msvbvm60.dll.__vbaFpI4
007ED591: dec eax
007ED592: mov var_000001B4, eax
007ED598: cmp var_000001B4, 0000FF4Bh
007ED5A2: jnb 7ED5ADh
007ED5A4: and var_000004B0, 00000000h
007ED5AB: jmp 7ED5B8h
007ED5AD: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007ED5B2: mov var_000004B0, eax
007ED5B8: mov eax, var_000001B4
007ED5BE: mov ecx, [008F2374h]
007ED5C4: lea eax, [ecx+eax*4]
007ED5C7: mov var_000004B4, eax
007ED5CD: jmp 007ED665h
007ED5D2: lea eax, var_4C
007ED5D5: push eax
007ED5D6: mov eax, [ebp+08h]
007ED5D9: mov eax, [eax]
007ED5DB: push [ebp+08h]
007ED5DE: call [eax+000001C0h]
007ED5E4: fclex 
007ED5E6: mov var_000001B0, eax
007ED5EC: cmp var_000001B0, 00000000h
007ED5F3: jnl 7ED615h
007ED5F5: push 000001C0h
007ED5FA: push 0044420Ch
007ED5FF: push [ebp+08h]
007ED602: push var_000001B0
007ED608: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ED60D: mov var_000004B8, eax
007ED613: jmp 7ED61Ch
007ED615: and var_000004B8, 00000000h
007ED61C: push var_4C
007ED61F: call 004109DCh ; Val(arg_1)
007ED624: call 00410814h ; msvbvm60.dll.__vbaFpI4
007ED629: dec eax
007ED62A: mov var_000001B4, eax
007ED630: cmp var_000001B4, 0000FF4Bh
007ED63A: jnb 7ED645h
007ED63C: and var_000004BC, 00000000h
007ED643: jmp 7ED650h
007ED645: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
007ED64A: mov var_000004BC, eax
007ED650: mov eax, var_000001B4
007ED656: mov ecx, [008F2374h]
007ED65C: lea eax, [ecx+eax*4]
007ED65F: mov var_000004B4, eax
007ED665: mov eax, var_000004B4
007ED66B: mov eax, [eax]
007ED66D: mov var_000001B8, eax
007ED673: mov eax, [ebp+08h]
007ED676: mov var_00000144, eax
007ED67C: mov var_0000014C, 00000009h
007ED686: mov var_00000134, 80020004h
007ED690: mov var_0000013C, 0000000Ah
007ED69A: push 00000010h
007ED69C: pop eax
007ED69D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007ED6A2: lea esi, var_0000014C
007ED6A8: mov edi, esp
007ED6AA: movsd 
007ED6AB: movsd 
007ED6AC: movsd 
007ED6AD: movsd 
007ED6AE: push 00000010h
007ED6B0: pop eax
007ED6B1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007ED6B6: lea esi, var_0000013C
007ED6BC: mov edi, esp
007ED6BE: movsd 
007ED6BF: movsd 
007ED6C0: movsd 
007ED6C1: movsd 
007ED6C2: mov eax, var_000001B8
007ED6C8: mov eax, [eax]
007ED6CA: push var_000001B8
007ED6D0: call [eax+000002B0h]
007ED6D6: fclex 
007ED6D8: mov var_000001BC, eax
007ED6DE: cmp var_000001BC, 00000000h
007ED6E5: jnl 7ED70Ah
007ED6E7: push 000002B0h
007ED6EC: push 0044CE8Ch
007ED6F1: push var_000001B8
007ED6F7: push var_000001BC
007ED6FD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ED702: mov var_000004C0, eax
007ED708: jmp 7ED711h
007ED70A: and var_000004C0, 00000000h
007ED711: lea ecx, var_4C
007ED714: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007ED719: jmp 007EDCD8h
007ED71E: mov var_04, 00000040h
007ED725: lea eax, var_000001A4
007ED72B: push eax
007ED72C: mov eax, [ebp+08h]
007ED72F: mov eax, [eax]
007ED731: push [ebp+08h]
007ED734: call [eax+58h]
007ED737: fclex 
007ED739: mov var_000001B0, eax
007ED73F: cmp var_000001B0, 00000000h
007ED746: jnl 7ED765h
007ED748: push 00000058h
007ED74A: push 0044420Ch
007ED74F: push [ebp+08h]
007ED752: push var_000001B0
007ED758: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ED75D: mov var_000004C4, eax
007ED763: jmp 7ED76Ch
007ED765: and var_000004C4, 00000000h
007ED76C: cmp [008F529Ch], 00000000h
007ED773: jnz 7ED790h
007ED775: push 008F529Ch
007ED77A: push 00440F2Ch
007ED77F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007ED784: mov var_000004C8, 008F529Ch
007ED78E: jmp 7ED79Ah
007ED790: mov var_000004C8, 008F529Ch
007ED79A: mov eax, var_000004C8
007ED7A0: mov eax, [eax]
007ED7A2: mov var_000001B4, eax
007ED7A8: lea eax, var_00000088
007ED7AE: push eax
007ED7AF: mov eax, var_000001B4
007ED7B5: mov eax, [eax]
007ED7B7: push var_000001B4
007ED7BD: call [eax+14h]
007ED7C0: fclex 
007ED7C2: mov var_000001B8, eax
007ED7C8: cmp var_000001B8, 00000000h
007ED7CF: jnl 7ED7F1h
007ED7D1: push 00000014h
007ED7D3: push 00440F1Ch
007ED7D8: push var_000001B4
007ED7DE: push var_000001B8
007ED7E4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ED7E9: mov var_000004CC, eax
007ED7EF: jmp 7ED7F8h
007ED7F1: and var_000004CC, 00000000h
007ED7F8: mov eax, var_00000088
007ED7FE: mov var_000001BC, eax
007ED804: lea eax, var_4C
007ED807: push eax
007ED808: mov eax, var_000001BC
007ED80E: mov eax, [eax]
007ED810: push var_000001BC
007ED816: call [eax+50h]
007ED819: fclex 
007ED81B: mov var_000001C0, eax
007ED821: cmp var_000001C0, 00000000h
007ED828: jnl 7ED84Ah
007ED82A: push 00000050h
007ED82C: push 00440F3Ch
007ED831: push var_000001BC
007ED837: push var_000001C0
007ED83D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ED842: mov var_000004D0, eax
007ED848: jmp 7ED851h
007ED84A: and var_000004D0, 00000000h
007ED851: mov var_00000144, 00000007h
007ED85B: mov var_0000014C, 00000003h
007ED865: lea eax, var_50
007ED868: push eax
007ED869: mov eax, [ebp+08h]
007ED86C: mov eax, [eax]
007ED86E: push [ebp+08h]
007ED871: call [eax+000001C0h]
007ED877: fclex 
007ED879: mov var_000001C4, eax
007ED87F: cmp var_000001C4, 00000000h
007ED886: jnl 7ED8A8h
007ED888: push 000001C0h
007ED88D: push 0044420Ch
007ED892: push [ebp+08h]
007ED895: push var_000001C4
007ED89B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007ED8A0: mov var_000004D4, eax
007ED8A6: jmp 7ED8AFh
007ED8A8: and var_000004D4, 00000000h
007ED8AF: push var_50
007ED8B2: call 004109DCh ; Val(arg_1)
007ED8B7: push ecx
007ED8B8: push ecx
007ED8B9: fstp real8 ptr [esp]
007ED8BC: call 00410790h ; msvbvm60.dll.__vbaStrR8
007ED8C1: mov edx, eax
007ED8C3: lea ecx, var_54
007ED8C6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007ED8CB: push eax
007ED8CC: push 004417CCh ; sck
007ED8D1: call 00410A18h ; &
007ED8D6: mov var_000000C0, eax
007ED8DC: mov var_000000C8, 00000008h
007ED8E6: cmp [008F2010h], 00000000h
007ED8ED: jnz 7ED90Ah
007ED8EF: push 008F2010h
007ED8F4: push 00433984h
007ED8F9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007ED8FE: mov var_000004D8, 008F2010h
007ED908: jmp 7ED914h
007ED90A: mov var_000004D8, 008F2010h
007ED914: push 00000010h
007ED916: pop eax
007ED917: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007ED91C: lea esi, var_0000014C
007ED922: mov edi, esp
007ED924: movsd 
007ED925: movsd 
007ED926: movsd 
007ED927: movsd 
007ED928: push 00000001h
007ED92A: push 00000010h
007ED92C: push 00440E58h
007ED931: push 00000010h
007ED933: pop eax
007ED934: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007ED939: lea esi, var_000000C8
007ED93F: mov edi, esp
007ED941: movsd 
007ED942: movsd 
007ED943: movsd 
007ED944: movsd 
007ED945: push 00000001h
007ED947: push 00000000h
007ED949: push 00440E48h
007ED94E: push 00000000h
007ED950: push 00000018h
007ED952: mov eax, var_000004D8
007ED958: mov eax, [eax]
007ED95A: mov ecx, var_000004D8
007ED960: mov ecx, [ecx]
007ED962: mov ecx, [ecx]
007ED964: push eax
007ED965: call [ecx+00000550h]
007ED96B: push eax
007ED96C: lea eax, var_0000008C
007ED972: push eax
007ED973: call 00410A84h ; Set (object)
007ED978: push eax
007ED979: lea eax, var_000000B8
007ED97F: push eax
007ED980: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007ED985: add esp, 00000010h
007ED988: push eax
007ED989: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007ED98E: push eax
007ED98F: lea eax, var_00000090
007ED995: push eax
007ED996: call 00410A84h ; Set (object)
007ED99B: push eax
007ED99C: lea eax, var_000000D8
007ED9A2: push eax
007ED9A3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007ED9A8: add esp, 00000020h
007ED9AB: push eax
007ED9AC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007ED9B1: push eax
007ED9B2: lea eax, var_00000094
007ED9B8: push eax
007ED9B9: call 00410A84h ; Set (object)
007ED9BE: push eax
007ED9BF: lea eax, var_000000E8
007ED9C5: push eax
007ED9C6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007ED9CB: add esp, 00000020h
007ED9CE: mov var_00000174, 00000006h
007ED9D8: mov var_0000017C, 00000003h
007ED9E2: lea eax, var_64
007ED9E5: push eax
007ED9E6: mov eax, [ebp+08h]
007ED9E9: mov eax, [eax]
007ED9EB: push [ebp+08h]
007ED9EE: call [eax+000001C0h]
007ED9F4: fclex 
007ED9F6: mov var_000001C8, eax
007ED9FC: cmp var_000001C8, 00000000h
007EDA03: jnl 7EDA25h
007EDA05: push 000001C0h
007EDA0A: push 0044420Ch
007EDA0F: push [ebp+08h]
007EDA12: push var_000001C8
007EDA18: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EDA1D: mov var_000004DC, eax
007EDA23: jmp 7EDA2Ch
007EDA25: and var_000004DC, 00000000h
007EDA2C: push var_64
007EDA2F: call 004109DCh ; Val(arg_1)
007EDA34: push ecx
007EDA35: push ecx
007EDA36: fstp real8 ptr [esp]
007EDA39: call 00410790h ; msvbvm60.dll.__vbaStrR8
007EDA3E: mov edx, eax
007EDA40: lea ecx, var_68
007EDA43: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EDA48: push eax
007EDA49: push 004417CCh ; sck
007EDA4E: call 00410A18h ; &
007EDA53: mov var_00000100, eax
007EDA59: mov var_00000108, 00000008h
007EDA63: cmp [008F2010h], 00000000h
007EDA6A: jnz 7EDA87h
007EDA6C: push 008F2010h
007EDA71: push 00433984h
007EDA76: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007EDA7B: mov var_000004E0, 008F2010h
007EDA85: jmp 7EDA91h
007EDA87: mov var_000004E0, 008F2010h
007EDA91: push 00000010h
007EDA93: pop eax
007EDA94: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EDA99: lea esi, var_0000017C
007EDA9F: mov edi, esp
007EDAA1: movsd 
007EDAA2: movsd 
007EDAA3: movsd 
007EDAA4: movsd 
007EDAA5: push 00000001h
007EDAA7: push 00000010h
007EDAA9: push 00440E58h
007EDAAE: push 00000010h
007EDAB0: pop eax
007EDAB1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EDAB6: lea esi, var_00000108
007EDABC: mov edi, esp
007EDABE: movsd 
007EDABF: movsd 
007EDAC0: movsd 
007EDAC1: movsd 
007EDAC2: push 00000001h
007EDAC4: push 00000000h
007EDAC6: push 00440E48h
007EDACB: push 00000000h
007EDACD: push 00000018h
007EDACF: mov eax, var_000004E0
007EDAD5: mov eax, [eax]
007EDAD7: mov ecx, var_000004E0
007EDADD: mov ecx, [ecx]
007EDADF: mov ecx, [ecx]
007EDAE1: push eax
007EDAE2: call [ecx+00000550h]
007EDAE8: push eax
007EDAE9: lea eax, var_00000098
007EDAEF: push eax
007EDAF0: call 00410A84h ; Set (object)
007EDAF5: push eax
007EDAF6: lea eax, var_000000F8
007EDAFC: push eax
007EDAFD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EDB02: add esp, 00000010h
007EDB05: push eax
007EDB06: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EDB0B: push eax
007EDB0C: lea eax, var_0000009C
007EDB12: push eax
007EDB13: call 00410A84h ; Set (object)
007EDB18: push eax
007EDB19: lea eax, var_00000118
007EDB1F: push eax
007EDB20: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EDB25: add esp, 00000020h
007EDB28: push eax
007EDB29: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EDB2E: push eax
007EDB2F: lea eax, var_000000A0
007EDB35: push eax
007EDB36: call 00410A84h ; Set (object)
007EDB3B: push eax
007EDB3C: lea eax, var_00000128
007EDB42: push eax
007EDB43: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EDB48: add esp, 00000020h
007EDB4B: push 00000001h
007EDB4D: push 00442BFCh
007EDB52: lea eax, var_00000084
007EDB58: push eax
007EDB59: call 0041086Eh ; msvbvm60.dll.__vbaStrToAnsi
007EDB5E: push eax
007EDB5F: push 00442BFCh
007EDB64: lea eax, var_80
007EDB67: push eax
007EDB68: call 0041086Eh ; msvbvm60.dll.__vbaStrToAnsi
007EDB6D: push eax
007EDB6E: push var_4C
007EDB71: push 00449588h ; \Files\Downloads\
007EDB76: call 00410A18h ; &
007EDB7B: mov edx, eax
007EDB7D: lea ecx, var_58
007EDB80: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EDB85: push eax
007EDB86: lea eax, var_000000E8
007EDB8C: push eax
007EDB8D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007EDB92: mov edx, eax
007EDB94: lea ecx, var_5C
007EDB97: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EDB9C: push eax
007EDB9D: call 00410A18h ; &
007EDBA2: mov edx, eax
007EDBA4: lea ecx, var_60
007EDBA7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EDBAC: push eax
007EDBAD: push 004495B0h
007EDBB2: call 00410A18h ; &
007EDBB7: mov edx, eax
007EDBB9: lea ecx, var_6C
007EDBBC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EDBC1: push eax
007EDBC2: lea eax, var_00000128
007EDBC8: push eax
007EDBC9: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007EDBCE: mov edx, eax
007EDBD0: lea ecx, var_70
007EDBD3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EDBD8: push eax
007EDBD9: call 00410A18h ; &
007EDBDE: mov edx, eax
007EDBE0: lea ecx, var_78
007EDBE3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EDBE8: push eax
007EDBE9: lea eax, var_7C
007EDBEC: push eax
007EDBED: call 0041086Eh ; msvbvm60.dll.__vbaStrToAnsi
007EDBF2: push eax
007EDBF3: push 00449574h ; explore
007EDBF8: lea eax, var_74
007EDBFB: push eax
007EDBFC: call 0041086Eh ; msvbvm60.dll.__vbaStrToAnsi
007EDC01: push eax
007EDC02: push var_000001A4
007EDC08: call 0043F610h
007EDC0D: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
007EDC12: lea eax, var_00000084
007EDC18: push eax
007EDC19: lea eax, var_80
007EDC1C: push eax
007EDC1D: lea eax, var_7C
007EDC20: push eax
007EDC21: lea eax, var_78
007EDC24: push eax
007EDC25: lea eax, var_74
007EDC28: push eax
007EDC29: lea eax, var_70
007EDC2C: push eax
007EDC2D: lea eax, var_6C
007EDC30: push eax
007EDC31: lea eax, var_68
007EDC34: push eax
007EDC35: lea eax, var_64
007EDC38: push eax
007EDC39: lea eax, var_60
007EDC3C: push eax
007EDC3D: lea eax, var_5C
007EDC40: push eax
007EDC41: lea eax, var_58
007EDC44: push eax
007EDC45: lea eax, var_54
007EDC48: push eax
007EDC49: lea eax, var_50
007EDC4C: push eax
007EDC4D: lea eax, var_4C
007EDC50: push eax
007EDC51: push 0000000Fh
007EDC53: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007EDC58: add esp, 00000040h
007EDC5B: lea eax, var_000000A0
007EDC61: push eax
007EDC62: lea eax, var_0000009C
007EDC68: push eax
007EDC69: lea eax, var_00000098
007EDC6F: push eax
007EDC70: lea eax, var_00000094
007EDC76: push eax
007EDC77: lea eax, var_00000090
007EDC7D: push eax
007EDC7E: lea eax, var_0000008C
007EDC84: push eax
007EDC85: lea eax, var_00000088
007EDC8B: push eax
007EDC8C: push 00000007h
007EDC8E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EDC93: add esp, 00000020h
007EDC96: lea eax, var_00000128
007EDC9C: push eax
007EDC9D: lea eax, var_00000118
007EDCA3: push eax
007EDCA4: lea eax, var_00000108
007EDCAA: push eax
007EDCAB: lea eax, var_000000F8
007EDCB1: push eax
007EDCB2: lea eax, var_000000E8
007EDCB8: push eax
007EDCB9: lea eax, var_000000D8
007EDCBF: push eax
007EDCC0: lea eax, var_000000C8
007EDCC6: push eax
007EDCC7: lea eax, var_000000B8
007EDCCD: push eax
007EDCCE: push 00000008h
007EDCD0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EDCD5: add esp, 00000024h
007EDCD8: mov var_10, 00000000h
007EDCDF: wait 
007EDCE0: push 007EDE06h
007EDCE5: jmp 007EDDCDh
007EDCEA: lea eax, var_00000084
007EDCF0: push eax
007EDCF1: lea eax, var_80
007EDCF4: push eax
007EDCF5: lea eax, var_7C
007EDCF8: push eax
007EDCF9: lea eax, var_78
007EDCFC: push eax
007EDCFD: lea eax, var_74
007EDD00: push eax
007EDD01: lea eax, var_70
007EDD04: push eax
007EDD05: lea eax, var_6C
007EDD08: push eax
007EDD09: lea eax, var_68
007EDD0C: push eax
007EDD0D: lea eax, var_64
007EDD10: push eax
007EDD11: lea eax, var_60
007EDD14: push eax
007EDD15: lea eax, var_5C
007EDD18: push eax
007EDD19: lea eax, var_58
007EDD1C: push eax
007EDD1D: lea eax, var_54
007EDD20: push eax
007EDD21: lea eax, var_50
007EDD24: push eax
007EDD25: lea eax, var_4C
007EDD28: push eax
007EDD29: push 0000000Fh
007EDD2B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007EDD30: add esp, 00000040h
007EDD33: lea eax, var_000000A8
007EDD39: push eax
007EDD3A: lea eax, var_000000A4
007EDD40: push eax
007EDD41: lea eax, var_000000A0
007EDD47: push eax
007EDD48: lea eax, var_0000009C
007EDD4E: push eax
007EDD4F: lea eax, var_00000098
007EDD55: push eax
007EDD56: lea eax, var_00000094
007EDD5C: push eax
007EDD5D: lea eax, var_00000090
007EDD63: push eax
007EDD64: lea eax, var_0000008C
007EDD6A: push eax
007EDD6B: lea eax, var_00000088
007EDD71: push eax
007EDD72: push 00000009h
007EDD74: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EDD79: add esp, 00000028h
007EDD7C: lea eax, var_00000128
007EDD82: push eax
007EDD83: lea eax, var_00000118
007EDD89: push eax
007EDD8A: lea eax, var_00000108
007EDD90: push eax
007EDD91: lea eax, var_000000F8
007EDD97: push eax
007EDD98: lea eax, var_000000E8
007EDD9E: push eax
007EDD9F: lea eax, var_000000D8
007EDDA5: push eax
007EDDA6: lea eax, var_000000C8
007EDDAC: push eax
007EDDAD: lea eax, var_000000B8
007EDDB3: push eax
007EDDB4: push 00000008h
007EDDB6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EDDBB: add esp, 00000024h
007EDDBE: lea eax, var_0000012C
007EDDC4: push eax
007EDDC5: push 00000000h
007EDDC7: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
007EDDCC: ret 
End Sub

Private sub tmrFilemanager__7EE06E
007EE06E: push ebp
007EE06F: mov ebp, esp
007EE071: sub esp, 0000000Ch
007EE074: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007EE079: mov eax, fs:[00h]
007EE07F: push eax
007EE080: mov fs:[00000000h], esp
007EE087: mov eax, 000000B8h
007EE08C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007EE091: push ebx
007EE092: push esi
007EE093: push edi
007EE094: mov var_0C, esp
007EE097: mov var_08, 00409C48h
007EE09E: mov eax, [ebp+08h]
007EE0A1: and eax, 00000001h
007EE0A4: mov var_04, eax
007EE0A7: mov eax, [ebp+08h]
007EE0AA: and al, FEh
007EE0AC: mov [ebp+08h], eax
007EE0AF: mov eax, [ebp+08h]
007EE0B2: mov eax, [eax]
007EE0B4: push [ebp+08h]
007EE0B7: call [eax+04h]
007EE0BA: push 00000000h
007EE0BC: push 8001000Bh
007EE0C1: mov eax, [ebp+08h]
007EE0C4: mov eax, [eax]
007EE0C6: push [ebp+08h]
007EE0C9: call [eax+00000324h]
007EE0CF: push eax
007EE0D0: lea eax, var_20
007EE0D3: push eax
007EE0D4: call 00410A84h ; Set (object)
007EE0D9: push eax
007EE0DA: lea eax, var_40
007EE0DD: push eax
007EE0DE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EE0E3: add esp, 00000010h
007EE0E6: push eax
007EE0E7: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007EE0EC: mov edx, eax
007EE0EE: lea ecx, var_18
007EE0F1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EE0F6: push eax
007EE0F7: push 00000000h
007EE0F9: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
007EE0FE: neg eax
007EE100: sbb eax, eax
007EE102: neg eax
007EE104: neg eax
007EE106: mov var_78, ax
007EE10A: lea ecx, var_18
007EE10D: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007EE112: lea ecx, var_20
007EE115: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007EE11A: lea ecx, var_40
007EE11D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007EE122: movsx eax, word ptr var_78
007EE126: test eax, eax
007EE128: jz 007EE63Eh
007EE12E: push 0044A87Ch
007EE133: push 00000000h
007EE135: push 00000003h
007EE137: mov eax, [ebp+08h]
007EE13A: mov eax, [eax]
007EE13C: push [ebp+08h]
007EE13F: call [eax+00000320h]
007EE145: push eax
007EE146: lea eax, var_24
007EE149: push eax
007EE14A: call 00410A84h ; Set (object)
007EE14F: push eax
007EE150: lea eax, var_50
007EE153: push eax
007EE154: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EE159: add esp, 00000010h
007EE15C: push eax
007EE15D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EE162: push eax
007EE163: lea eax, var_28
007EE166: push eax
007EE167: call 00410A84h ; Set (object)
007EE16C: mov var_78, eax
007EE16F: mov var_58, 00000001h
007EE176: mov var_60, 00000002h
007EE17D: lea eax, var_2C
007EE180: push eax
007EE181: lea eax, var_60
007EE184: push eax
007EE185: mov eax, var_78
007EE188: mov eax, [eax]
007EE18A: push var_78
007EE18D: call [eax+24h]
007EE190: fclex 
007EE192: mov var_7C, eax
007EE195: cmp var_7C, 00000000h
007EE199: jnl 7EE1B5h
007EE19B: push 00000024h
007EE19D: push 0044A87Ch
007EE1A2: push var_78
007EE1A5: push var_7C
007EE1A8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EE1AD: mov var_00000098, eax
007EE1B3: jmp 7EE1BCh
007EE1B5: and var_00000098, 00000000h
007EE1BC: mov eax, var_2C
007EE1BF: mov var_80, eax
007EE1C2: push 00000000h
007EE1C4: push 8001000Bh
007EE1C9: mov eax, [ebp+08h]
007EE1CC: mov eax, [eax]
007EE1CE: push [ebp+08h]
007EE1D1: call [eax+00000324h]
007EE1D7: push eax
007EE1D8: lea eax, var_20
007EE1DB: push eax
007EE1DC: call 00410A84h ; Set (object)
007EE1E1: push eax
007EE1E2: lea eax, var_40
007EE1E5: push eax
007EE1E6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EE1EB: add esp, 00000010h
007EE1EE: push eax
007EE1EF: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007EE1F4: mov edx, eax
007EE1F6: lea ecx, var_18
007EE1F9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EE1FE: push eax
007EE1FF: mov eax, var_80
007EE202: mov eax, [eax]
007EE204: push var_80
007EE207: call [eax+00000080h]
007EE20D: fclex 
007EE20F: mov var_00000084, eax
007EE215: cmp var_00000084, 00000000h
007EE21C: jnl 7EE23Eh
007EE21E: push 00000080h
007EE223: push 0044A88Ch
007EE228: push var_80
007EE22B: push var_00000084
007EE231: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EE236: mov var_0000009C, eax
007EE23C: jmp 7EE245h
007EE23E: and var_0000009C, 00000000h
007EE245: lea ecx, var_18
007EE248: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007EE24D: lea eax, var_2C
007EE250: push eax
007EE251: lea eax, var_28
007EE254: push eax
007EE255: lea eax, var_24
007EE258: push eax
007EE259: lea eax, var_20
007EE25C: push eax
007EE25D: push 00000004h
007EE25F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EE264: add esp, 00000014h
007EE267: lea eax, var_60
007EE26A: push eax
007EE26B: lea eax, var_50
007EE26E: push eax
007EE26F: lea eax, var_40
007EE272: push eax
007EE273: push 00000003h
007EE275: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EE27A: add esp, 00000010h
007EE27D: push 0044A87Ch
007EE282: push 00000000h
007EE284: push 00000003h
007EE286: mov eax, [ebp+08h]
007EE289: mov eax, [eax]
007EE28B: push [ebp+08h]
007EE28E: call [eax+00000320h]
007EE294: push eax
007EE295: lea eax, var_28
007EE298: push eax
007EE299: call 00410A84h ; Set (object)
007EE29E: push eax
007EE29F: lea eax, var_50
007EE2A2: push eax
007EE2A3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EE2A8: add esp, 00000010h
007EE2AB: push eax
007EE2AC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EE2B1: push eax
007EE2B2: lea eax, var_2C
007EE2B5: push eax
007EE2B6: call 00410A84h ; Set (object)
007EE2BB: mov var_80, eax
007EE2BE: mov var_58, 00000002h
007EE2C5: mov var_60, 00000002h
007EE2CC: lea eax, var_30
007EE2CF: push eax
007EE2D0: lea eax, var_60
007EE2D3: push eax
007EE2D4: mov eax, var_80
007EE2D7: mov eax, [eax]
007EE2D9: push var_80
007EE2DC: call [eax+24h]
007EE2DF: fclex 
007EE2E1: mov var_00000084, eax
007EE2E7: cmp var_00000084, 00000000h
007EE2EE: jnl 7EE30Dh
007EE2F0: push 00000024h
007EE2F2: push 0044A87Ch
007EE2F7: push var_80
007EE2FA: push var_00000084
007EE300: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EE305: mov var_000000A0, eax
007EE30B: jmp 7EE314h
007EE30D: and var_000000A0, 00000000h
007EE314: mov eax, var_30
007EE317: mov var_00000088, eax
007EE31D: push 004412BCh
007EE322: push 00000000h
007EE324: push 00000007h
007EE326: mov eax, [ebp+08h]
007EE329: mov eax, [eax]
007EE32B: push [ebp+08h]
007EE32E: call [eax+0000031Ch]
007EE334: push eax
007EE335: lea eax, var_20
007EE338: push eax
007EE339: call 00410A84h ; Set (object)
007EE33E: push eax
007EE33F: lea eax, var_40
007EE342: push eax
007EE343: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EE348: add esp, 00000010h
007EE34B: push eax
007EE34C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EE351: push eax
007EE352: lea eax, var_24
007EE355: push eax
007EE356: call 00410A84h ; Set (object)
007EE35B: mov var_78, eax
007EE35E: lea eax, var_74
007EE361: push eax
007EE362: mov eax, var_78
007EE365: mov eax, [eax]
007EE367: push var_78
007EE36A: call [eax+1Ch]
007EE36D: fclex 
007EE36F: mov var_7C, eax
007EE372: cmp var_7C, 00000000h
007EE376: jnl 7EE392h
007EE378: push 0000001Ch
007EE37A: push 004412BCh
007EE37F: push var_78
007EE382: push var_7C
007EE385: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EE38A: mov var_000000A4, eax
007EE390: jmp 7EE399h
007EE392: and var_000000A4, 00000000h
007EE399: push 0044FFACh ; Dirs:
007EE39E: mov eax, var_74
007EE3A1: sub eax, 00000001h
007EE3A4: jo 007EE9C8h
007EE3AA: push eax
007EE3AB: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
007EE3B0: mov edx, eax
007EE3B2: lea ecx, var_18
007EE3B5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EE3BA: push eax
007EE3BB: call 00410A18h ; &
007EE3C0: mov edx, eax
007EE3C2: lea ecx, var_1C
007EE3C5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EE3CA: push eax
007EE3CB: mov eax, var_00000088
007EE3D1: mov eax, [eax]
007EE3D3: push var_00000088
007EE3D9: call [eax+00000080h]
007EE3DF: fclex 
007EE3E1: mov var_0000008C, eax
007EE3E7: cmp var_0000008C, 00000000h
007EE3EE: jnl 7EE413h
007EE3F0: push 00000080h
007EE3F5: push 0044A88Ch
007EE3FA: push var_00000088
007EE400: push var_0000008C
007EE406: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EE40B: mov var_000000A8, eax
007EE411: jmp 7EE41Ah
007EE413: and var_000000A8, 00000000h
007EE41A: lea eax, var_1C
007EE41D: push eax
007EE41E: lea eax, var_18
007EE421: push eax
007EE422: push 00000002h
007EE424: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007EE429: add esp, 0000000Ch
007EE42C: lea eax, var_30
007EE42F: push eax
007EE430: lea eax, var_2C
007EE433: push eax
007EE434: lea eax, var_28
007EE437: push eax
007EE438: lea eax, var_24
007EE43B: push eax
007EE43C: lea eax, var_20
007EE43F: push eax
007EE440: push 00000005h
007EE442: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EE447: add esp, 00000018h
007EE44A: lea eax, var_60
007EE44D: push eax
007EE44E: lea eax, var_50
007EE451: push eax
007EE452: lea eax, var_40
007EE455: push eax
007EE456: push 00000003h
007EE458: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EE45D: add esp, 00000010h
007EE460: push 0044A87Ch
007EE465: push 00000000h
007EE467: push 00000003h
007EE469: mov eax, [ebp+08h]
007EE46C: mov eax, [eax]
007EE46E: push [ebp+08h]
007EE471: call [eax+00000320h]
007EE477: push eax
007EE478: lea eax, var_28
007EE47B: push eax
007EE47C: call 00410A84h ; Set (object)
007EE481: push eax
007EE482: lea eax, var_50
007EE485: push eax
007EE486: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EE48B: add esp, 00000010h
007EE48E: push eax
007EE48F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EE494: push eax
007EE495: lea eax, var_2C
007EE498: push eax
007EE499: call 00410A84h ; Set (object)
007EE49E: mov var_80, eax
007EE4A1: mov var_58, 00000003h
007EE4A8: mov var_60, 00000002h
007EE4AF: lea eax, var_30
007EE4B2: push eax
007EE4B3: lea eax, var_60
007EE4B6: push eax
007EE4B7: mov eax, var_80
007EE4BA: mov eax, [eax]
007EE4BC: push var_80
007EE4BF: call [eax+24h]
007EE4C2: fclex 
007EE4C4: mov var_00000084, eax
007EE4CA: cmp var_00000084, 00000000h
007EE4D1: jnl 7EE4F0h
007EE4D3: push 00000024h
007EE4D5: push 0044A87Ch
007EE4DA: push var_80
007EE4DD: push var_00000084
007EE4E3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EE4E8: mov var_000000AC, eax
007EE4EE: jmp 7EE4F7h
007EE4F0: and var_000000AC, 00000000h
007EE4F7: mov eax, var_30
007EE4FA: mov var_00000088, eax
007EE500: push 004412BCh
007EE505: push 00000000h
007EE507: push 00000007h
007EE509: mov eax, [ebp+08h]
007EE50C: mov eax, [eax]
007EE50E: push [ebp+08h]
007EE511: call [eax+00000324h]
007EE517: push eax
007EE518: lea eax, var_20
007EE51B: push eax
007EE51C: call 00410A84h ; Set (object)
007EE521: push eax
007EE522: lea eax, var_40
007EE525: push eax
007EE526: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EE52B: add esp, 00000010h
007EE52E: push eax
007EE52F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EE534: push eax
007EE535: lea eax, var_24
007EE538: push eax
007EE539: call 00410A84h ; Set (object)
007EE53E: mov var_78, eax
007EE541: lea eax, var_74
007EE544: push eax
007EE545: mov eax, var_78
007EE548: mov eax, [eax]
007EE54A: push var_78
007EE54D: call [eax+1Ch]
007EE550: fclex 
007EE552: mov var_7C, eax
007EE555: cmp var_7C, 00000000h
007EE559: jnl 7EE575h
007EE55B: push 0000001Ch
007EE55D: push 004412BCh
007EE562: push var_78
007EE565: push var_7C
007EE568: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EE56D: mov var_000000B0, eax
007EE573: jmp 7EE57Ch
007EE575: and var_000000B0, 00000000h
007EE57C: push 0045057Ch ; Files:
007EE581: push var_74
007EE584: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
007EE589: mov edx, eax
007EE58B: lea ecx, var_18
007EE58E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EE593: push eax
007EE594: call 00410A18h ; &
007EE599: mov edx, eax
007EE59B: lea ecx, var_1C
007EE59E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007EE5A3: push eax
007EE5A4: mov eax, var_00000088
007EE5AA: mov eax, [eax]
007EE5AC: push var_00000088
007EE5B2: call [eax+00000080h]
007EE5B8: fclex 
007EE5BA: mov var_0000008C, eax
007EE5C0: cmp var_0000008C, 00000000h
007EE5C7: jnl 7EE5ECh
007EE5C9: push 00000080h
007EE5CE: push 0044A88Ch
007EE5D3: push var_00000088
007EE5D9: push var_0000008C
007EE5DF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EE5E4: mov var_000000B4, eax
007EE5EA: jmp 7EE5F3h
007EE5EC: and var_000000B4, 00000000h
007EE5F3: lea eax, var_1C
007EE5F6: push eax
007EE5F7: lea eax, var_18
007EE5FA: push eax
007EE5FB: push 00000002h
007EE5FD: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007EE602: add esp, 0000000Ch
007EE605: lea eax, var_30
007EE608: push eax
007EE609: lea eax, var_2C
007EE60C: push eax
007EE60D: lea eax, var_28
007EE610: push eax
007EE611: lea eax, var_24
007EE614: push eax
007EE615: lea eax, var_20
007EE618: push eax
007EE619: push 00000005h
007EE61B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EE620: add esp, 00000018h
007EE623: lea eax, var_60
007EE626: push eax
007EE627: lea eax, var_50
007EE62A: push eax
007EE62B: lea eax, var_40
007EE62E: push eax
007EE62F: push 00000003h
007EE631: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EE636: add esp, 00000010h
007EE639: jmp 007EE953h
007EE63E: push 0044A87Ch
007EE643: push 00000000h
007EE645: push 00000003h
007EE647: mov eax, [ebp+08h]
007EE64A: mov eax, [eax]
007EE64C: push [ebp+08h]
007EE64F: call [eax+00000320h]
007EE655: push eax
007EE656: lea eax, var_20
007EE659: push eax
007EE65A: call 00410A84h ; Set (object)
007EE65F: push eax
007EE660: lea eax, var_40
007EE663: push eax
007EE664: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EE669: add esp, 00000010h
007EE66C: push eax
007EE66D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EE672: push eax
007EE673: lea eax, var_24
007EE676: push eax
007EE677: call 00410A84h ; Set (object)
007EE67C: mov var_78, eax
007EE67F: mov var_48, 00000001h
007EE686: mov var_50, 00000002h
007EE68D: lea eax, var_28
007EE690: push eax
007EE691: lea eax, var_50
007EE694: push eax
007EE695: mov eax, var_78
007EE698: mov eax, [eax]
007EE69A: push var_78
007EE69D: call [eax+24h]
007EE6A0: fclex 
007EE6A2: mov var_7C, eax
007EE6A5: cmp var_7C, 00000000h
007EE6A9: jnl 7EE6C5h
007EE6AB: push 00000024h
007EE6AD: push 0044A87Ch
007EE6B2: push var_78
007EE6B5: push var_7C
007EE6B8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EE6BD: mov var_000000B8, eax
007EE6C3: jmp 7EE6CCh
007EE6C5: and var_000000B8, 00000000h
007EE6CC: mov eax, var_28
007EE6CF: mov var_80, eax
007EE6D2: push 00441194h ; N/A
007EE6D7: mov eax, var_80
007EE6DA: mov eax, [eax]
007EE6DC: push var_80
007EE6DF: call [eax+00000080h]
007EE6E5: fclex 
007EE6E7: mov var_00000084, eax
007EE6ED: cmp var_00000084, 00000000h
007EE6F4: jnl 7EE716h
007EE6F6: push 00000080h
007EE6FB: push 0044A88Ch
007EE700: push var_80
007EE703: push var_00000084
007EE709: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EE70E: mov var_000000BC, eax
007EE714: jmp 7EE71Dh
007EE716: and var_000000BC, 00000000h
007EE71D: lea eax, var_28
007EE720: push eax
007EE721: lea eax, var_24
007EE724: push eax
007EE725: lea eax, var_20
007EE728: push eax
007EE729: push 00000003h
007EE72B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EE730: add esp, 00000010h
007EE733: lea eax, var_50
007EE736: push eax
007EE737: lea eax, var_40
007EE73A: push eax
007EE73B: push 00000002h
007EE73D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EE742: add esp, 0000000Ch
007EE745: push 0044A87Ch
007EE74A: push 00000000h
007EE74C: push 00000003h
007EE74E: mov eax, [ebp+08h]
007EE751: mov eax, [eax]
007EE753: push [ebp+08h]
007EE756: call [eax+00000320h]
007EE75C: push eax
007EE75D: lea eax, var_20
007EE760: push eax
007EE761: call 00410A84h ; Set (object)
007EE766: push eax
007EE767: lea eax, var_40
007EE76A: push eax
007EE76B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EE770: add esp, 00000010h
007EE773: push eax
007EE774: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EE779: push eax
007EE77A: lea eax, var_24
007EE77D: push eax
007EE77E: call 00410A84h ; Set (object)
007EE783: mov var_78, eax
007EE786: mov var_48, 00000002h
007EE78D: mov var_50, 00000002h
007EE794: lea eax, var_28
007EE797: push eax
007EE798: lea eax, var_50
007EE79B: push eax
007EE79C: mov eax, var_78
007EE79F: mov eax, [eax]
007EE7A1: push var_78
007EE7A4: call [eax+24h]
007EE7A7: fclex 
007EE7A9: mov var_7C, eax
007EE7AC: cmp var_7C, 00000000h
007EE7B0: jnl 7EE7CCh
007EE7B2: push 00000024h
007EE7B4: push 0044A87Ch
007EE7B9: push var_78
007EE7BC: push var_7C
007EE7BF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EE7C4: mov var_000000C0, eax
007EE7CA: jmp 7EE7D3h
007EE7CC: and var_000000C0, 00000000h
007EE7D3: mov eax, var_28
007EE7D6: mov var_80, eax
007EE7D9: push 00450590h ; Dirs: 0
007EE7DE: mov eax, var_80
007EE7E1: mov eax, [eax]
007EE7E3: push var_80
007EE7E6: call [eax+00000080h]
007EE7EC: fclex 
007EE7EE: mov var_00000084, eax
007EE7F4: cmp var_00000084, 00000000h
007EE7FB: jnl 7EE81Dh
007EE7FD: push 00000080h
007EE802: push 0044A88Ch
007EE807: push var_80
007EE80A: push var_00000084
007EE810: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EE815: mov var_000000C4, eax
007EE81B: jmp 7EE824h
007EE81D: and var_000000C4, 00000000h
007EE824: lea eax, var_28
007EE827: push eax
007EE828: lea eax, var_24
007EE82B: push eax
007EE82C: lea eax, var_20
007EE82F: push eax
007EE830: push 00000003h
007EE832: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EE837: add esp, 00000010h
007EE83A: lea eax, var_50
007EE83D: push eax
007EE83E: lea eax, var_40
007EE841: push eax
007EE842: push 00000002h
007EE844: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EE849: add esp, 0000000Ch
007EE84C: push 0044A87Ch
007EE851: push 00000000h
007EE853: push 00000003h
007EE855: mov eax, [ebp+08h]
007EE858: mov eax, [eax]
007EE85A: push [ebp+08h]
007EE85D: call [eax+00000320h]
007EE863: push eax
007EE864: lea eax, var_20
007EE867: push eax
007EE868: call 00410A84h ; Set (object)
007EE86D: push eax
007EE86E: lea eax, var_40
007EE871: push eax
007EE872: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007EE877: add esp, 00000010h
007EE87A: push eax
007EE87B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007EE880: push eax
007EE881: lea eax, var_24
007EE884: push eax
007EE885: call 00410A84h ; Set (object)
007EE88A: mov var_78, eax
007EE88D: mov var_48, 00000003h
007EE894: mov var_50, 00000002h
007EE89B: lea eax, var_28
007EE89E: push eax
007EE89F: lea eax, var_50
007EE8A2: push eax
007EE8A3: mov eax, var_78
007EE8A6: mov eax, [eax]
007EE8A8: push var_78
007EE8AB: call [eax+24h]
007EE8AE: fclex 
007EE8B0: mov var_7C, eax
007EE8B3: cmp var_7C, 00000000h
007EE8B7: jnl 7EE8D3h
007EE8B9: push 00000024h
007EE8BB: push 0044A87Ch
007EE8C0: push var_78
007EE8C3: push var_7C
007EE8C6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EE8CB: mov var_000000C8, eax
007EE8D1: jmp 7EE8DAh
007EE8D3: and var_000000C8, 00000000h
007EE8DA: mov eax, var_28
007EE8DD: mov var_80, eax
007EE8E0: push 004505A4h ; Files: 0
007EE8E5: mov eax, var_80
007EE8E8: mov eax, [eax]
007EE8EA: push var_80
007EE8ED: call [eax+00000080h]
007EE8F3: fclex 
007EE8F5: mov var_00000084, eax
007EE8FB: cmp var_00000084, 00000000h
007EE902: jnl 7EE924h
007EE904: push 00000080h
007EE909: push 0044A88Ch
007EE90E: push var_80
007EE911: push var_00000084
007EE917: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007EE91C: mov var_000000CC, eax
007EE922: jmp 7EE92Bh
007EE924: and var_000000CC, 00000000h
007EE92B: lea eax, var_28
007EE92E: push eax
007EE92F: lea eax, var_24
007EE932: push eax
007EE933: lea eax, var_20
007EE936: push eax
007EE937: push 00000003h
007EE939: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EE93E: add esp, 00000010h
007EE941: lea eax, var_50
007EE944: push eax
007EE945: lea eax, var_40
007EE948: push eax
007EE949: push 00000002h
007EE94B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EE950: add esp, 0000000Ch
007EE953: mov var_04, 00000000h
007EE95A: push 007EE9A9h
007EE95F: jmp 7EE9A8h
007EE961: lea eax, var_1C
007EE964: push eax
007EE965: lea eax, var_18
007EE968: push eax
007EE969: push 00000002h
007EE96B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007EE970: add esp, 0000000Ch
007EE973: lea eax, var_30
007EE976: push eax
007EE977: lea eax, var_2C
007EE97A: push eax
007EE97B: lea eax, var_28
007EE97E: push eax
007EE97F: lea eax, var_24
007EE982: push eax
007EE983: lea eax, var_20
007EE986: push eax
007EE987: push 00000005h
007EE989: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007EE98E: add esp, 00000018h
007EE991: lea eax, var_60
007EE994: push eax
007EE995: lea eax, var_50
007EE998: push eax
007EE999: lea eax, var_40
007EE99C: push eax
007EE99D: push 00000003h
007EE99F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007EE9A4: add esp, 00000010h
007EE9A7: ret 
End Sub

Private sub unknown_7DFDFD
007DFDFD: push ebp
007DFDFE: mov ebp, esp
007DFE00: xor eax, eax
007DFE02: pop ebp
007DFE03: retn 0014h
End Sub

