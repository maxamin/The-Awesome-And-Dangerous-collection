VERSION 5.00
Begin VB.Form frmRunescape
  Caption = "Runescape monitor"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmRunescape.frx":0
  LinkTopic = "Form1"
  ClientLeft = 165
  ClientTop = 255
  ClientWidth = 11565
  ClientHeight = 4125
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar sbStatus
    Left = 0
    Top = 3810
    Width = 11565
    Height = 315
    TabIndex = 0
  End
  Begin MSComctlLib.ListView lstLogs
    Left = 0
    Top = 0
    Width = 11535
    Height = 3735
    TabIndex = 1
  End
  Begin VB.Menu mnuKeyloggningMeny
    Visible = 0   'False
    Caption = "Keyloggning"
    Begin VB.Menu mnuKeyloggning
      Index = 0
      Caption = "Get logs"
      Begin VB.Menu mnuGetlog
        Index = 0
        Caption = "All servers"
      End
      Begin VB.Menu mnuGetlog
        Index = 1
        Caption = "-"
      End
      Begin VB.Menu mnuGetlog
        Index = 2
        Caption = "Selected servers"
      End
    End
    Begin VB.Menu mnuKeyloggning
      Index = 2
      Caption = "-"
    End
    Begin VB.Menu mnuKeyloggning
      Index = 3
      Caption = "Delete log"
      Begin VB.Menu mnuRensaLogg
        Index = 0
        Caption = "All servers"
      End
      Begin VB.Menu mnuRaderaLogg
        Index = 1
        Caption = "Selected servers"
      End
    End
    Begin VB.Menu mnuKeyloggning
      Index = 4
      Caption = "-"
    End
    Begin VB.Menu mnuKeyloggning
      Index = 5
      Caption = "Clean list"
    End
  End
End

Attribute VB_Name = "frmRunescape"


Private sub Form__8E0FB4
008E0FB4: push ebp
008E0FB5: mov ebp, esp
008E0FB7: sub esp, 00000018h
008E0FBA: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E0FBF: mov eax, fs:[00h]
008E0FC5: push eax
008E0FC6: mov fs:[00000000h], esp
008E0FCD: mov eax, 000000B0h
008E0FD2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E0FD7: push ebx
008E0FD8: push esi
008E0FD9: push edi
008E0FDA: mov var_18, esp
008E0FDD: mov var_14, 004101C8h
008E0FE4: mov eax, [ebp+08h]
008E0FE7: and eax, 00000001h
008E0FEA: mov var_10, eax
008E0FED: mov eax, [ebp+08h]
008E0FF0: and al, FEh
008E0FF2: mov [ebp+08h], eax
008E0FF5: mov var_0C, 00000000h
008E0FFC: mov eax, [ebp+08h]
008E0FFF: mov eax, [eax]
008E1001: push [ebp+08h]
008E1004: call [eax+04h]
008E1007: mov var_04, 00000001h
008E100E: mov var_04, 00000002h
008E1015: push FFFFFFFFh
008E1017: call 00410A60h ; On Error ...
008E101C: mov var_04, 00000003h
008E1023: fldz 
008E1025: fstp real4 ptr var_2C
008E1028: mov var_34, 00000004h
008E102F: and var_4C, 00000000h
008E1033: mov var_54, 00000002h
008E103A: lea eax, var_000000A8
008E1040: push eax
008E1041: mov eax, [ebp+08h]
008E1044: mov eax, [eax]
008E1046: push [ebp+08h]
008E1049: call [eax+00000080h]
008E104F: fclex 
008E1051: mov var_000000B0, eax
008E1057: cmp var_000000B0, 00000000h
008E105E: jnl 8E1080h
008E1060: push 00000080h
008E1065: push 00448888h
008E106A: push [ebp+08h]
008E106D: push var_000000B0
008E1073: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E1078: mov var_000000CC, eax
008E107E: jmp 8E1087h
008E1080: and var_000000CC, 00000000h
008E1087: fld real4 ptr var_000000A8
008E108D: fsub real4 ptr [00402B44h]
008E1093: fstp real4 ptr var_6C
008E1096: fstsw ax
008E1098: test al, 0Dh
008E109A: jnz 008E11C9h
008E10A0: mov var_74, 00000004h
008E10A7: lea eax, var_000000AC
008E10AD: push eax
008E10AE: mov eax, [ebp+08h]
008E10B1: mov eax, [eax]
008E10B3: push [ebp+08h]
008E10B6: call [eax+00000088h]
008E10BC: fclex 
008E10BE: mov var_000000B4, eax
008E10C4: cmp var_000000B4, 00000000h
008E10CB: jnl 8E10EDh
008E10CD: push 00000088h
008E10D2: push 00448888h
008E10D7: push [ebp+08h]
008E10DA: push var_000000B4
008E10E0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E10E5: mov var_000000D0, eax
008E10EB: jmp 8E10F4h
008E10ED: and var_000000D0, 00000000h
008E10F4: fld real4 ptr var_000000AC
008E10FA: fsub real4 ptr [00402B7Ch]
008E1100: fstp real4 ptr var_0000008C
008E1106: fstsw ax
008E1108: test al, 0Dh
008E110A: jnz 008E11C9h
008E1110: mov var_00000094, 00000004h
008E111A: push 00000010h
008E111C: pop eax
008E111D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E1122: lea esi, var_34
008E1125: mov edi, esp
008E1127: movsd 
008E1128: movsd 
008E1129: movsd 
008E112A: movsd 
008E112B: push 00000010h
008E112D: pop eax
008E112E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E1133: lea esi, var_54
008E1136: mov edi, esp
008E1138: movsd 
008E1139: movsd 
008E113A: movsd 
008E113B: movsd 
008E113C: push 00000010h
008E113E: pop eax
008E113F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E1144: lea esi, var_74
008E1147: mov edi, esp
008E1149: movsd 
008E114A: movsd 
008E114B: movsd 
008E114C: movsd 
008E114D: push 00000010h
008E114F: pop eax
008E1150: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E1155: lea esi, var_00000094
008E115B: mov edi, esp
008E115D: movsd 
008E115E: movsd 
008E115F: movsd 
008E1160: movsd 
008E1161: push 00000004h
008E1163: push 80011002h
008E1168: mov eax, [ebp+08h]
008E116B: mov eax, [eax]
008E116D: push [ebp+08h]
008E1170: call [eax+00000314h]
008E1176: push eax
008E1177: lea eax, var_24
008E117A: push eax
008E117B: call 00410A84h ; Set (object)
008E1180: push eax
008E1181: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008E1186: add esp, 0000004Ch
008E1189: lea ecx, var_24
008E118C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E1191: mov var_10, 00000000h
008E1198: wait 
008E1199: push 008E11AAh
008E119E: jmp 8E11A9h
008E11A0: lea ecx, var_24
008E11A3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E11A8: ret 
End Sub

Private sub lstLogs__8E11CE
008E11CE: push ebp
008E11CF: mov ebp, esp
008E11D1: sub esp, 0000000Ch
008E11D4: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E11D9: mov eax, fs:[00h]
008E11DF: push eax
008E11E0: mov fs:[00000000h], esp
008E11E7: push 00000008h
008E11E9: pop eax
008E11EA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E11EF: push ebx
008E11F0: push esi
008E11F1: push edi
008E11F2: mov var_0C, esp
008E11F5: mov var_08, 004101F8h
008E11FC: mov eax, [ebp+08h]
008E11FF: and eax, 00000001h
008E1202: mov var_04, eax
008E1205: mov eax, [ebp+08h]
008E1208: and al, FEh
008E120A: mov [ebp+08h], eax
008E120D: mov eax, [ebp+08h]
008E1210: mov eax, [eax]
008E1212: push [ebp+08h]
008E1215: call [eax+04h]
008E1218: mov eax, [ebp+0Ch]
008E121B: or word ptr [eax], FFFFh
008E121F: mov var_04, 00000000h
008E1226: mov eax, [ebp+08h]
008E1229: mov eax, [eax]
008E122B: push [ebp+08h]
008E122E: call [eax+08h]
008E1231: mov eax, var_04
008E1234: mov ecx, var_14
008E1237: mov fs:[00000000h], ecx
008E123E: pop edi
008E123F: pop esi
008E1240: pop ebx
008E1241: leave 
008E1242: retn 0008h
End Sub

Private sub lstLogs__8E1AD0
008E1AD0: push ebp
008E1AD1: mov ebp, esp
008E1AD3: sub esp, 00000018h
008E1AD6: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E1ADB: mov eax, fs:[00h]
008E1AE1: push eax
008E1AE2: mov fs:[00000000h], esp
008E1AE9: mov eax, 00000208h
008E1AEE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E1AF3: push ebx
008E1AF4: push esi
008E1AF5: push edi
008E1AF6: mov var_18, esp
008E1AF9: mov var_14, 00410210h
008E1B00: mov eax, [ebp+08h]
008E1B03: and eax, 00000001h
008E1B06: mov var_10, eax
008E1B09: mov eax, [ebp+08h]
008E1B0C: and al, FEh
008E1B0E: mov [ebp+08h], eax
008E1B11: mov var_0C, 00000000h
008E1B18: mov eax, [ebp+08h]
008E1B1B: mov eax, [eax]
008E1B1D: push [ebp+08h]
008E1B20: call [eax+04h]
008E1B23: mov var_04, 00000001h
008E1B2A: mov var_04, 00000002h
008E1B31: push FFFFFFFFh
008E1B33: call 00410A60h ; On Error ...
008E1B38: mov var_04, 00000003h
008E1B3F: mov eax, [ebp+0Ch]
008E1B42: cmp word ptr [eax], 000Dh
008E1B46: jnz 008E2285h
008E1B4C: mov var_04, 00000004h
008E1B53: lea eax, var_000001AC
008E1B59: push eax
008E1B5A: mov eax, [ebp+08h]
008E1B5D: mov eax, [eax]
008E1B5F: push [ebp+08h]
008E1B62: call [eax+58h]
008E1B65: fclex 
008E1B67: mov var_000001B8, eax
008E1B6D: cmp var_000001B8, 00000000h
008E1B74: jnl 8E1B93h
008E1B76: push 00000058h
008E1B78: push 00448888h
008E1B7D: push [ebp+08h]
008E1B80: push var_000001B8
008E1B86: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E1B8B: mov var_00000200, eax
008E1B91: jmp 8E1B9Ah
008E1B93: and var_00000200, 00000000h
008E1B9A: cmp [008F529Ch], 00000000h
008E1BA1: jnz 8E1BBEh
008E1BA3: push 008F529Ch
008E1BA8: push 00440F2Ch
008E1BAD: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E1BB2: mov var_00000204, 008F529Ch
008E1BBC: jmp 8E1BC8h
008E1BBE: mov var_00000204, 008F529Ch
008E1BC8: mov eax, var_00000204
008E1BCE: mov eax, [eax]
008E1BD0: mov var_000001BC, eax
008E1BD6: lea eax, var_68
008E1BD9: push eax
008E1BDA: mov eax, var_000001BC
008E1BE0: mov eax, [eax]
008E1BE2: push var_000001BC
008E1BE8: call [eax+14h]
008E1BEB: fclex 
008E1BED: mov var_000001C0, eax
008E1BF3: cmp var_000001C0, 00000000h
008E1BFA: jnl 8E1C1Ch
008E1BFC: push 00000014h
008E1BFE: push 00440F1Ch
008E1C03: push var_000001BC
008E1C09: push var_000001C0
008E1C0F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E1C14: mov var_00000208, eax
008E1C1A: jmp 8E1C23h
008E1C1C: and var_00000208, 00000000h
008E1C23: mov eax, var_68
008E1C26: mov var_000001C4, eax
008E1C2C: lea eax, var_24
008E1C2F: push eax
008E1C30: mov eax, var_000001C4
008E1C36: mov eax, [eax]
008E1C38: push var_000001C4
008E1C3E: call [eax+50h]
008E1C41: fclex 
008E1C43: mov var_000001C8, eax
008E1C49: cmp var_000001C8, 00000000h
008E1C50: jnl 8E1C72h
008E1C52: push 00000050h
008E1C54: push 00440F3Ch
008E1C59: push var_000001C4
008E1C5F: push var_000001C8
008E1C65: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E1C6A: mov var_0000020C, eax
008E1C70: jmp 8E1C79h
008E1C72: and var_0000020C, 00000000h
008E1C79: mov var_00000160, 00000007h
008E1C83: mov var_00000168, 00000003h
008E1C8D: push 004412DCh
008E1C92: push 00000000h
008E1C94: push 0000000Dh
008E1C96: mov eax, [ebp+08h]
008E1C99: mov eax, [eax]
008E1C9B: push [ebp+08h]
008E1C9E: call [eax+00000314h]
008E1CA4: push eax
008E1CA5: lea eax, var_6C
008E1CA8: push eax
008E1CA9: call 00410A84h ; Set (object)
008E1CAE: push eax
008E1CAF: lea eax, var_000000A8
008E1CB5: push eax
008E1CB6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E1CBB: add esp, 00000010h
008E1CBE: push eax
008E1CBF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E1CC4: push eax
008E1CC5: lea eax, var_70
008E1CC8: push eax
008E1CC9: call 00410A84h ; Set (object)
008E1CCE: mov var_000001CC, eax
008E1CD4: lea eax, var_28
008E1CD7: push eax
008E1CD8: mov eax, var_000001CC
008E1CDE: mov eax, [eax]
008E1CE0: push var_000001CC
008E1CE6: call [eax+4Ch]
008E1CE9: fclex 
008E1CEB: mov var_000001D0, eax
008E1CF1: cmp var_000001D0, 00000000h
008E1CF8: jnl 8E1D1Ah
008E1CFA: push 0000004Ch
008E1CFC: push 004412DCh
008E1D01: push var_000001CC
008E1D07: push var_000001D0
008E1D0D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E1D12: mov var_00000210, eax
008E1D18: jmp 8E1D21h
008E1D1A: and var_00000210, 00000000h
008E1D21: mov eax, var_28
008E1D24: mov var_000001F8, eax
008E1D2A: and var_28, 00000000h
008E1D2E: mov eax, var_000001F8
008E1D34: mov var_000000C0, eax
008E1D3A: mov var_000000C8, 00000008h
008E1D44: cmp [008F2010h], 00000000h
008E1D4B: jnz 8E1D68h
008E1D4D: push 008F2010h
008E1D52: push 00433984h
008E1D57: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E1D5C: mov var_00000214, 008F2010h
008E1D66: jmp 8E1D72h
008E1D68: mov var_00000214, 008F2010h
008E1D72: push 00000010h
008E1D74: pop eax
008E1D75: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E1D7A: lea esi, var_00000168
008E1D80: mov edi, esp
008E1D82: movsd 
008E1D83: movsd 
008E1D84: movsd 
008E1D85: movsd 
008E1D86: push 00000001h
008E1D88: push 00000010h
008E1D8A: push 00440E58h
008E1D8F: push 00000010h
008E1D91: pop eax
008E1D92: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E1D97: lea esi, var_000000C8
008E1D9D: mov edi, esp
008E1D9F: movsd 
008E1DA0: movsd 
008E1DA1: movsd 
008E1DA2: movsd 
008E1DA3: push 00000001h
008E1DA5: push 00000000h
008E1DA7: push 00440E48h
008E1DAC: push 00000000h
008E1DAE: push 00000018h
008E1DB0: mov eax, var_00000214
008E1DB6: mov eax, [eax]
008E1DB8: mov ecx, var_00000214
008E1DBE: mov ecx, [ecx]
008E1DC0: mov ecx, [ecx]
008E1DC2: push eax
008E1DC3: call [ecx+00000550h]
008E1DC9: push eax
008E1DCA: lea eax, var_74
008E1DCD: push eax
008E1DCE: call 00410A84h ; Set (object)
008E1DD3: push eax
008E1DD4: lea eax, var_000000B8
008E1DDA: push eax
008E1DDB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E1DE0: add esp, 00000010h
008E1DE3: push eax
008E1DE4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E1DE9: push eax
008E1DEA: lea eax, var_78
008E1DED: push eax
008E1DEE: call 00410A84h ; Set (object)
008E1DF3: push eax
008E1DF4: lea eax, var_000000D8
008E1DFA: push eax
008E1DFB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E1E00: add esp, 00000020h
008E1E03: push eax
008E1E04: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E1E09: push eax
008E1E0A: lea eax, var_7C
008E1E0D: push eax
008E1E0E: call 00410A84h ; Set (object)
008E1E13: push eax
008E1E14: lea eax, var_000000E8
008E1E1A: push eax
008E1E1B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E1E20: add esp, 00000020h
008E1E23: mov var_00000190, 00000006h
008E1E2D: mov var_00000198, 00000003h
008E1E37: push 004412DCh
008E1E3C: push 00000000h
008E1E3E: push 0000000Dh
008E1E40: mov eax, [ebp+08h]
008E1E43: mov eax, [eax]
008E1E45: push [ebp+08h]
008E1E48: call [eax+00000314h]
008E1E4E: push eax
008E1E4F: lea eax, var_80
008E1E52: push eax
008E1E53: call 00410A84h ; Set (object)
008E1E58: push eax
008E1E59: lea eax, var_000000F8
008E1E5F: push eax
008E1E60: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E1E65: add esp, 00000010h
008E1E68: push eax
008E1E69: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E1E6E: push eax
008E1E6F: lea eax, var_00000084
008E1E75: push eax
008E1E76: call 00410A84h ; Set (object)
008E1E7B: mov var_000001D4, eax
008E1E81: lea eax, var_38
008E1E84: push eax
008E1E85: mov eax, var_000001D4
008E1E8B: mov eax, [eax]
008E1E8D: push var_000001D4
008E1E93: call [eax+4Ch]
008E1E96: fclex 
008E1E98: mov var_000001D8, eax
008E1E9E: cmp var_000001D8, 00000000h
008E1EA5: jnl 8E1EC7h
008E1EA7: push 0000004Ch
008E1EA9: push 004412DCh
008E1EAE: push var_000001D4
008E1EB4: push var_000001D8
008E1EBA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E1EBF: mov var_00000218, eax
008E1EC5: jmp 8E1ECEh
008E1EC7: and var_00000218, 00000000h
008E1ECE: mov eax, var_38
008E1ED1: mov var_000001FC, eax
008E1ED7: and var_38, 00000000h
008E1EDB: mov eax, var_000001FC
008E1EE1: mov var_00000110, eax
008E1EE7: mov var_00000118, 00000008h
008E1EF1: cmp [008F2010h], 00000000h
008E1EF8: jnz 8E1F15h
008E1EFA: push 008F2010h
008E1EFF: push 00433984h
008E1F04: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E1F09: mov var_0000021C, 008F2010h
008E1F13: jmp 8E1F1Fh
008E1F15: mov var_0000021C, 008F2010h
008E1F1F: push 00000010h
008E1F21: pop eax
008E1F22: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E1F27: lea esi, var_00000198
008E1F2D: mov edi, esp
008E1F2F: movsd 
008E1F30: movsd 
008E1F31: movsd 
008E1F32: movsd 
008E1F33: push 00000001h
008E1F35: push 00000010h
008E1F37: push 00440E58h
008E1F3C: push 00000010h
008E1F3E: pop eax
008E1F3F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E1F44: lea esi, var_00000118
008E1F4A: mov edi, esp
008E1F4C: movsd 
008E1F4D: movsd 
008E1F4E: movsd 
008E1F4F: movsd 
008E1F50: push 00000001h
008E1F52: push 00000000h
008E1F54: push 00440E48h
008E1F59: push 00000000h
008E1F5B: push 00000018h
008E1F5D: mov eax, var_0000021C
008E1F63: mov eax, [eax]
008E1F65: mov ecx, var_0000021C
008E1F6B: mov ecx, [ecx]
008E1F6D: mov ecx, [ecx]
008E1F6F: push eax
008E1F70: call [ecx+00000550h]
008E1F76: push eax
008E1F77: lea eax, var_00000088
008E1F7D: push eax
008E1F7E: call 00410A84h ; Set (object)
008E1F83: push eax
008E1F84: lea eax, var_00000108
008E1F8A: push eax
008E1F8B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E1F90: add esp, 00000010h
008E1F93: push eax
008E1F94: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E1F99: push eax
008E1F9A: lea eax, var_0000008C
008E1FA0: push eax
008E1FA1: call 00410A84h ; Set (object)
008E1FA6: push eax
008E1FA7: lea eax, var_00000128
008E1FAD: push eax
008E1FAE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E1FB3: add esp, 00000020h
008E1FB6: push eax
008E1FB7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E1FBC: push eax
008E1FBD: lea eax, var_00000090
008E1FC3: push eax
008E1FC4: call 00410A84h ; Set (object)
008E1FC9: push eax
008E1FCA: lea eax, var_00000138
008E1FD0: push eax
008E1FD1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E1FD6: add esp, 00000020h
008E1FD9: push 004412DCh
008E1FDE: push 00000000h
008E1FE0: push 0000000Dh
008E1FE2: mov eax, [ebp+08h]
008E1FE5: mov eax, [eax]
008E1FE7: push [ebp+08h]
008E1FEA: call [eax+00000314h]
008E1FF0: push eax
008E1FF1: lea eax, var_00000094
008E1FF7: push eax
008E1FF8: call 00410A84h ; Set (object)
008E1FFD: push eax
008E1FFE: lea eax, var_00000148
008E2004: push eax
008E2005: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E200A: add esp, 00000010h
008E200D: push eax
008E200E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E2013: push eax
008E2014: lea eax, var_00000098
008E201A: push eax
008E201B: call 00410A84h ; Set (object)
008E2020: mov var_000001DC, eax
008E2026: lea eax, var_48
008E2029: push eax
008E202A: mov eax, var_000001DC
008E2030: mov eax, [eax]
008E2032: push var_000001DC
008E2038: call [eax+4Ch]
008E203B: fclex 
008E203D: mov var_000001E0, eax
008E2043: cmp var_000001E0, 00000000h
008E204A: jnl 8E206Ch
008E204C: push 0000004Ch
008E204E: push 004412DCh
008E2053: push var_000001DC
008E2059: push var_000001E0
008E205F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E2064: mov var_00000220, eax
008E206A: jmp 8E2073h
008E206C: and var_00000220, 00000000h
008E2073: push var_48
008E2076: call 004109DCh ; Val(arg_1)
008E207B: fstp real8 ptr var_000001B4
008E2081: push 00000001h
008E2083: push 00442BFCh
008E2088: lea eax, var_64
008E208B: push eax
008E208C: call 0041086Eh ; msvbvm60.dll.__vbaStrToAnsi
008E2091: push eax
008E2092: push 00442BFCh
008E2097: lea eax, var_60
008E209A: push eax
008E209B: call 0041086Eh ; msvbvm60.dll.__vbaStrToAnsi
008E20A0: push eax
008E20A1: push var_24
008E20A4: push 0044A6D4h ; \Runescape\
008E20A9: call 00410A18h ; &
008E20AE: mov edx, eax
008E20B0: lea ecx, var_2C
008E20B3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E20B8: push eax
008E20B9: lea eax, var_000000E8
008E20BF: push eax
008E20C0: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E20C5: mov edx, eax
008E20C7: lea ecx, var_30
008E20CA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E20CF: push eax
008E20D0: call 00410A18h ; &
008E20D5: mov edx, eax
008E20D7: lea ecx, var_34
008E20DA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E20DF: push eax
008E20E0: push 004495B0h
008E20E5: call 00410A18h ; &
008E20EA: mov edx, eax
008E20EC: lea ecx, var_3C
008E20EF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E20F4: push eax
008E20F5: lea eax, var_00000138
008E20FB: push eax
008E20FC: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E2101: mov edx, eax
008E2103: lea ecx, var_40
008E2106: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E210B: push eax
008E210C: call 00410A18h ; &
008E2111: mov edx, eax
008E2113: lea ecx, var_44
008E2116: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E211B: push eax
008E211C: push 0044A82Ch
008E2121: call 00410A18h ; &
008E2126: mov edx, eax
008E2128: lea ecx, var_4C
008E212B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E2130: push eax
008E2131: fld real8 ptr var_000001B4
008E2137: call 00410814h ; msvbvm60.dll.__vbaFpI4
008E213C: push eax
008E213D: push [008F2074h]
008E2143: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E2148: push [eax]
008E214A: call 00410A18h ; &
008E214F: mov edx, eax
008E2151: lea ecx, var_50
008E2154: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E2159: push eax
008E215A: push 0044A6F0h ; .jpg
008E215F: call 00410A18h ; &
008E2164: mov edx, eax
008E2166: lea ecx, var_58
008E2169: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E216E: push eax
008E216F: lea eax, var_5C
008E2172: push eax
008E2173: call 0041086Eh ; msvbvm60.dll.__vbaStrToAnsi
008E2178: push eax
008E2179: push 00445390h ; open
008E217E: lea eax, var_54
008E2181: push eax
008E2182: call 0041086Eh ; msvbvm60.dll.__vbaStrToAnsi
008E2187: push eax
008E2188: push var_000001AC
008E218E: call 0043F610h
008E2193: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
008E2198: lea eax, var_64
008E219B: push eax
008E219C: lea eax, var_60
008E219F: push eax
008E21A0: lea eax, var_5C
008E21A3: push eax
008E21A4: lea eax, var_58
008E21A7: push eax
008E21A8: lea eax, var_54
008E21AB: push eax
008E21AC: lea eax, var_50
008E21AF: push eax
008E21B0: lea eax, var_4C
008E21B3: push eax
008E21B4: lea eax, var_48
008E21B7: push eax
008E21B8: lea eax, var_44
008E21BB: push eax
008E21BC: lea eax, var_40
008E21BF: push eax
008E21C0: lea eax, var_3C
008E21C3: push eax
008E21C4: lea eax, var_34
008E21C7: push eax
008E21C8: lea eax, var_30
008E21CB: push eax
008E21CC: lea eax, var_2C
008E21CF: push eax
008E21D0: lea eax, var_24
008E21D3: push eax
008E21D4: push 0000000Fh
008E21D6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E21DB: add esp, 00000040h
008E21DE: lea eax, var_00000098
008E21E4: push eax
008E21E5: lea eax, var_00000094
008E21EB: push eax
008E21EC: lea eax, var_00000090
008E21F2: push eax
008E21F3: lea eax, var_0000008C
008E21F9: push eax
008E21FA: lea eax, var_00000088
008E2200: push eax
008E2201: lea eax, var_00000084
008E2207: push eax
008E2208: lea eax, var_80
008E220B: push eax
008E220C: lea eax, var_7C
008E220F: push eax
008E2210: lea eax, var_78
008E2213: push eax
008E2214: lea eax, var_74
008E2217: push eax
008E2218: lea eax, var_70
008E221B: push eax
008E221C: lea eax, var_6C
008E221F: push eax
008E2220: lea eax, var_68
008E2223: push eax
008E2224: push 0000000Dh
008E2226: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E222B: add esp, 00000038h
008E222E: lea eax, var_00000148
008E2234: push eax
008E2235: lea eax, var_00000138
008E223B: push eax
008E223C: lea eax, var_00000128
008E2242: push eax
008E2243: lea eax, var_00000118
008E2249: push eax
008E224A: lea eax, var_00000108
008E2250: push eax
008E2251: lea eax, var_000000F8
008E2257: push eax
008E2258: lea eax, var_000000E8
008E225E: push eax
008E225F: lea eax, var_000000D8
008E2265: push eax
008E2266: lea eax, var_000000C8
008E226C: push eax
008E226D: lea eax, var_000000B8
008E2273: push eax
008E2274: lea eax, var_000000A8
008E227A: push eax
008E227B: push 0000000Bh
008E227D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E2282: add esp, 00000030h
008E2285: mov var_04, 00000006h
008E228C: mov eax, [ebp+0Ch]
008E228F: cmp word ptr [eax], 001Bh
008E2293: jnz 008E233Ah
008E2299: mov var_04, 00000007h
008E22A0: cmp [008F529Ch], 00000000h
008E22A7: jnz 8E22C4h
008E22A9: push 008F529Ch
008E22AE: push 00440F2Ch
008E22B3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E22B8: mov var_00000224, 008F529Ch
008E22C2: jmp 8E22CEh
008E22C4: mov var_00000224, 008F529Ch
008E22CE: mov eax, var_00000224
008E22D4: mov eax, [eax]
008E22D6: mov var_000001B8, eax
008E22DC: push [ebp+08h]
008E22DF: lea eax, var_68
008E22E2: push eax
008E22E3: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008E22E8: push eax
008E22E9: mov eax, var_000001B8
008E22EF: mov eax, [eax]
008E22F1: push var_000001B8
008E22F7: call [eax+10h]
008E22FA: fclex 
008E22FC: mov var_000001BC, eax
008E2302: cmp var_000001BC, 00000000h
008E2309: jnl 8E232Bh
008E230B: push 00000010h
008E230D: push 00440F1Ch
008E2312: push var_000001B8
008E2318: push var_000001BC
008E231E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E2323: mov var_00000228, eax
008E2329: jmp 8E2332h
008E232B: and var_00000228, 00000000h
008E2332: lea ecx, var_68
008E2335: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E233A: mov var_10, 00000000h
008E2341: wait 
008E2342: push 008E2443h
008E2347: jmp 008E2442h
008E234C: lea eax, var_64
008E234F: push eax
008E2350: lea eax, var_60
008E2353: push eax
008E2354: lea eax, var_5C
008E2357: push eax
008E2358: lea eax, var_58
008E235B: push eax
008E235C: lea eax, var_54
008E235F: push eax
008E2360: lea eax, var_50
008E2363: push eax
008E2364: lea eax, var_4C
008E2367: push eax
008E2368: lea eax, var_48
008E236B: push eax
008E236C: lea eax, var_44
008E236F: push eax
008E2370: lea eax, var_40
008E2373: push eax
008E2374: lea eax, var_3C
008E2377: push eax
008E2378: lea eax, var_38
008E237B: push eax
008E237C: lea eax, var_34
008E237F: push eax
008E2380: lea eax, var_30
008E2383: push eax
008E2384: lea eax, var_2C
008E2387: push eax
008E2388: lea eax, var_28
008E238B: push eax
008E238C: lea eax, var_24
008E238F: push eax
008E2390: push 00000011h
008E2392: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E2397: add esp, 00000048h
008E239A: lea eax, var_00000098
008E23A0: push eax
008E23A1: lea eax, var_00000094
008E23A7: push eax
008E23A8: lea eax, var_00000090
008E23AE: push eax
008E23AF: lea eax, var_0000008C
008E23B5: push eax
008E23B6: lea eax, var_00000088
008E23BC: push eax
008E23BD: lea eax, var_00000084
008E23C3: push eax
008E23C4: lea eax, var_80
008E23C7: push eax
008E23C8: lea eax, var_7C
008E23CB: push eax
008E23CC: lea eax, var_78
008E23CF: push eax
008E23D0: lea eax, var_74
008E23D3: push eax
008E23D4: lea eax, var_70
008E23D7: push eax
008E23D8: lea eax, var_6C
008E23DB: push eax
008E23DC: lea eax, var_68
008E23DF: push eax
008E23E0: push 0000000Dh
008E23E2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E23E7: add esp, 00000038h
008E23EA: lea eax, var_00000148
008E23F0: push eax
008E23F1: lea eax, var_00000138
008E23F7: push eax
008E23F8: lea eax, var_00000128
008E23FE: push eax
008E23FF: lea eax, var_00000118
008E2405: push eax
008E2406: lea eax, var_00000108
008E240C: push eax
008E240D: lea eax, var_000000F8
008E2413: push eax
008E2414: lea eax, var_000000E8
008E241A: push eax
008E241B: lea eax, var_000000D8
008E2421: push eax
008E2422: lea eax, var_000000C8
008E2428: push eax
008E2429: lea eax, var_000000B8
008E242F: push eax
008E2430: lea eax, var_000000A8
008E2436: push eax
008E2437: push 0000000Bh
008E2439: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E243E: add esp, 00000030h
008E2441: ret 
End Sub

Private sub lstLogs__8E2462
008E2462: push ebp
008E2463: mov ebp, esp
008E2465: sub esp, 00000018h
008E2468: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E246D: mov eax, fs:[00h]
008E2473: push eax
008E2474: mov fs:[00000000h], esp
008E247B: push 00000060h
008E247D: pop eax
008E247E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E2483: push ebx
008E2484: push esi
008E2485: push edi
008E2486: mov var_18, esp
008E2489: mov var_14, 00410258h
008E2490: mov eax, [ebp+08h]
008E2493: and eax, 00000001h
008E2496: mov var_10, eax
008E2499: mov eax, [ebp+08h]
008E249C: and al, FEh
008E249E: mov [ebp+08h], eax
008E24A1: mov var_0C, 00000000h
008E24A8: mov eax, [ebp+08h]
008E24AB: mov eax, [eax]
008E24AD: push [ebp+08h]
008E24B0: call [eax+04h]
008E24B3: mov var_04, 00000001h
008E24BA: mov var_04, 00000002h
008E24C1: push FFFFFFFFh
008E24C3: call 00410A60h ; On Error ...
008E24C8: mov var_04, 00000003h
008E24CF: mov eax, [ebp+0Ch]
008E24D2: cmp word ptr [eax], 0002h
008E24D6: jnz 008E25B7h
008E24DC: mov var_04, 00000004h
008E24E3: mov var_5C, 80020004h
008E24EA: mov var_64, 0000000Ah
008E24F1: mov var_4C, 80020004h
008E24F8: mov var_54, 0000000Ah
008E24FF: mov var_3C, 80020004h
008E2506: mov var_44, 0000000Ah
008E250D: mov var_2C, 80020004h
008E2514: mov var_34, 0000000Ah
008E251B: push 00000010h
008E251D: pop eax
008E251E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E2523: lea esi, var_64
008E2526: mov edi, esp
008E2528: movsd 
008E2529: movsd 
008E252A: movsd 
008E252B: movsd 
008E252C: push 00000010h
008E252E: pop eax
008E252F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E2534: lea esi, var_54
008E2537: mov edi, esp
008E2539: movsd 
008E253A: movsd 
008E253B: movsd 
008E253C: movsd 
008E253D: push 00000010h
008E253F: pop eax
008E2540: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E2545: lea esi, var_44
008E2548: mov edi, esp
008E254A: movsd 
008E254B: movsd 
008E254C: movsd 
008E254D: movsd 
008E254E: push 00000010h
008E2550: pop eax
008E2551: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E2556: lea esi, var_34
008E2559: mov edi, esp
008E255B: movsd 
008E255C: movsd 
008E255D: movsd 
008E255E: movsd 
008E255F: mov eax, [ebp+08h]
008E2562: mov eax, [eax]
008E2564: push [ebp+08h]
008E2567: call [eax+000002FCh]
008E256D: push eax
008E256E: lea eax, var_24
008E2571: push eax
008E2572: call 00410A84h ; Set (object)
008E2577: push eax
008E2578: mov eax, [ebp+08h]
008E257B: mov eax, [eax]
008E257D: push [ebp+08h]
008E2580: call [eax+000002BCh]
008E2586: fclex 
008E2588: mov var_68, eax
008E258B: cmp var_68, 00000000h
008E258F: jnl 8E25ABh
008E2591: push 000002BCh
008E2596: push 00448888h
008E259B: push [ebp+08h]
008E259E: push var_68
008E25A1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E25A6: mov var_80, eax
008E25A9: jmp 8E25AFh
008E25AB: and var_80, 00000000h
008E25AF: lea ecx, var_24
008E25B2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E25B7: mov var_10, 00000000h
008E25BE: push 008E25CFh
008E25C3: jmp 8E25CEh
008E25C5: lea ecx, var_24
008E25C8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E25CD: ret 
End Sub

Private sub lstLogs__8E1245
008E1245: push ebp
008E1246: mov ebp, esp
008E1248: sub esp, 0000000Ch
008E124B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E1250: mov eax, fs:[00h]
008E1256: push eax
008E1257: mov fs:[00000000h], esp
008E125E: mov eax, 000001F4h
008E1263: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E1268: push ebx
008E1269: push esi
008E126A: push edi
008E126B: mov var_0C, esp
008E126E: mov var_08, 00410200h
008E1275: mov eax, [ebp+08h]
008E1278: and eax, 00000001h
008E127B: mov var_04, eax
008E127E: mov eax, [ebp+08h]
008E1281: and al, FEh
008E1283: mov [ebp+08h], eax
008E1286: mov eax, [ebp+08h]
008E1289: mov eax, [eax]
008E128B: push [ebp+08h]
008E128E: call [eax+04h]
008E1291: lea eax, var_000001A0
008E1297: push eax
008E1298: mov eax, [ebp+08h]
008E129B: mov eax, [eax]
008E129D: push [ebp+08h]
008E12A0: call [eax+58h]
008E12A3: fclex 
008E12A5: mov var_000001AC, eax
008E12AB: cmp var_000001AC, 00000000h
008E12B2: jnl 8E12D1h
008E12B4: push 00000058h
008E12B6: push 00448888h
008E12BB: push [ebp+08h]
008E12BE: push var_000001AC
008E12C4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E12C9: mov var_000001E8, eax
008E12CF: jmp 8E12D8h
008E12D1: and var_000001E8, 00000000h
008E12D8: cmp [008F529Ch], 00000000h
008E12DF: jnz 8E12FCh
008E12E1: push 008F529Ch
008E12E6: push 00440F2Ch
008E12EB: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E12F0: mov var_000001EC, 008F529Ch
008E12FA: jmp 8E1306h
008E12FC: mov var_000001EC, 008F529Ch
008E1306: mov eax, var_000001EC
008E130C: mov eax, [eax]
008E130E: mov var_000001B0, eax
008E1314: lea eax, var_5C
008E1317: push eax
008E1318: mov eax, var_000001B0
008E131E: mov eax, [eax]
008E1320: push var_000001B0
008E1326: call [eax+14h]
008E1329: fclex 
008E132B: mov var_000001B4, eax
008E1331: cmp var_000001B4, 00000000h
008E1338: jnl 8E135Ah
008E133A: push 00000014h
008E133C: push 00440F1Ch
008E1341: push var_000001B0
008E1347: push var_000001B4
008E134D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E1352: mov var_000001F0, eax
008E1358: jmp 8E1361h
008E135A: and var_000001F0, 00000000h
008E1361: mov eax, var_5C
008E1364: mov var_000001B8, eax
008E136A: lea eax, var_18
008E136D: push eax
008E136E: mov eax, var_000001B8
008E1374: mov eax, [eax]
008E1376: push var_000001B8
008E137C: call [eax+50h]
008E137F: fclex 
008E1381: mov var_000001BC, eax
008E1387: cmp var_000001BC, 00000000h
008E138E: jnl 8E13B0h
008E1390: push 00000050h
008E1392: push 00440F3Ch
008E1397: push var_000001B8
008E139D: push var_000001BC
008E13A3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E13A8: mov var_000001F4, eax
008E13AE: jmp 8E13B7h
008E13B0: and var_000001F4, 00000000h
008E13B7: mov var_00000154, 00000007h
008E13C1: mov var_0000015C, 00000003h
008E13CB: push 004412DCh
008E13D0: push 00000000h
008E13D2: push 0000000Dh
008E13D4: mov eax, [ebp+08h]
008E13D7: mov eax, [eax]
008E13D9: push [ebp+08h]
008E13DC: call [eax+00000314h]
008E13E2: push eax
008E13E3: lea eax, var_60
008E13E6: push eax
008E13E7: call 00410A84h ; Set (object)
008E13EC: push eax
008E13ED: lea eax, var_0000009C
008E13F3: push eax
008E13F4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E13F9: add esp, 00000010h
008E13FC: push eax
008E13FD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E1402: push eax
008E1403: lea eax, var_64
008E1406: push eax
008E1407: call 00410A84h ; Set (object)
008E140C: mov var_000001C0, eax
008E1412: lea eax, var_1C
008E1415: push eax
008E1416: mov eax, var_000001C0
008E141C: mov eax, [eax]
008E141E: push var_000001C0
008E1424: call [eax+4Ch]
008E1427: fclex 
008E1429: mov var_000001C4, eax
008E142F: cmp var_000001C4, 00000000h
008E1436: jnl 8E1458h
008E1438: push 0000004Ch
008E143A: push 004412DCh
008E143F: push var_000001C0
008E1445: push var_000001C4
008E144B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E1450: mov var_000001F8, eax
008E1456: jmp 8E145Fh
008E1458: and var_000001F8, 00000000h
008E145F: mov eax, var_1C
008E1462: mov var_000001E0, eax
008E1468: and var_1C, 00000000h
008E146C: mov eax, var_000001E0
008E1472: mov var_000000B4, eax
008E1478: mov var_000000BC, 00000008h
008E1482: cmp [008F2010h], 00000000h
008E1489: jnz 8E14A6h
008E148B: push 008F2010h
008E1490: push 00433984h
008E1495: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E149A: mov var_000001FC, 008F2010h
008E14A4: jmp 8E14B0h
008E14A6: mov var_000001FC, 008F2010h
008E14B0: push 00000010h
008E14B2: pop eax
008E14B3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E14B8: lea esi, var_0000015C
008E14BE: mov edi, esp
008E14C0: movsd 
008E14C1: movsd 
008E14C2: movsd 
008E14C3: movsd 
008E14C4: push 00000001h
008E14C6: push 00000010h
008E14C8: push 00440E58h
008E14CD: push 00000010h
008E14CF: pop eax
008E14D0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E14D5: lea esi, var_000000BC
008E14DB: mov edi, esp
008E14DD: movsd 
008E14DE: movsd 
008E14DF: movsd 
008E14E0: movsd 
008E14E1: push 00000001h
008E14E3: push 00000000h
008E14E5: push 00440E48h
008E14EA: push 00000000h
008E14EC: push 00000018h
008E14EE: mov eax, var_000001FC
008E14F4: mov eax, [eax]
008E14F6: mov ecx, var_000001FC
008E14FC: mov ecx, [ecx]
008E14FE: mov ecx, [ecx]
008E1500: push eax
008E1501: call [ecx+00000550h]
008E1507: push eax
008E1508: lea eax, var_68
008E150B: push eax
008E150C: call 00410A84h ; Set (object)
008E1511: push eax
008E1512: lea eax, var_000000AC
008E1518: push eax
008E1519: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E151E: add esp, 00000010h
008E1521: push eax
008E1522: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E1527: push eax
008E1528: lea eax, var_6C
008E152B: push eax
008E152C: call 00410A84h ; Set (object)
008E1531: push eax
008E1532: lea eax, var_000000CC
008E1538: push eax
008E1539: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E153E: add esp, 00000020h
008E1541: push eax
008E1542: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E1547: push eax
008E1548: lea eax, var_70
008E154B: push eax
008E154C: call 00410A84h ; Set (object)
008E1551: push eax
008E1552: lea eax, var_000000DC
008E1558: push eax
008E1559: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E155E: add esp, 00000020h
008E1561: mov var_00000184, 00000006h
008E156B: mov var_0000018C, 00000003h
008E1575: push 004412DCh
008E157A: push 00000000h
008E157C: push 0000000Dh
008E157E: mov eax, [ebp+08h]
008E1581: mov eax, [eax]
008E1583: push [ebp+08h]
008E1586: call [eax+00000314h]
008E158C: push eax
008E158D: lea eax, var_74
008E1590: push eax
008E1591: call 00410A84h ; Set (object)
008E1596: push eax
008E1597: lea eax, var_000000EC
008E159D: push eax
008E159E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E15A3: add esp, 00000010h
008E15A6: push eax
008E15A7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E15AC: push eax
008E15AD: lea eax, var_78
008E15B0: push eax
008E15B1: call 00410A84h ; Set (object)
008E15B6: mov var_000001C8, eax
008E15BC: lea eax, var_2C
008E15BF: push eax
008E15C0: mov eax, var_000001C8
008E15C6: mov eax, [eax]
008E15C8: push var_000001C8
008E15CE: call [eax+4Ch]
008E15D1: fclex 
008E15D3: mov var_000001CC, eax
008E15D9: cmp var_000001CC, 00000000h
008E15E0: jnl 8E1602h
008E15E2: push 0000004Ch
008E15E4: push 004412DCh
008E15E9: push var_000001C8
008E15EF: push var_000001CC
008E15F5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E15FA: mov var_00000200, eax
008E1600: jmp 8E1609h
008E1602: and var_00000200, 00000000h
008E1609: mov eax, var_2C
008E160C: mov var_000001E4, eax
008E1612: and var_2C, 00000000h
008E1616: mov eax, var_000001E4
008E161C: mov var_00000104, eax
008E1622: mov var_0000010C, 00000008h
008E162C: cmp [008F2010h], 00000000h
008E1633: jnz 8E1650h
008E1635: push 008F2010h
008E163A: push 00433984h
008E163F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E1644: mov var_00000204, 008F2010h
008E164E: jmp 8E165Ah
008E1650: mov var_00000204, 008F2010h
008E165A: push 00000010h
008E165C: pop eax
008E165D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E1662: lea esi, var_0000018C
008E1668: mov edi, esp
008E166A: movsd 
008E166B: movsd 
008E166C: movsd 
008E166D: movsd 
008E166E: push 00000001h
008E1670: push 00000010h
008E1672: push 00440E58h
008E1677: push 00000010h
008E1679: pop eax
008E167A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E167F: lea esi, var_0000010C
008E1685: mov edi, esp
008E1687: movsd 
008E1688: movsd 
008E1689: movsd 
008E168A: movsd 
008E168B: push 00000001h
008E168D: push 00000000h
008E168F: push 00440E48h
008E1694: push 00000000h
008E1696: push 00000018h
008E1698: mov eax, var_00000204
008E169E: mov eax, [eax]
008E16A0: mov ecx, var_00000204
008E16A6: mov ecx, [ecx]
008E16A8: mov ecx, [ecx]
008E16AA: push eax
008E16AB: call [ecx+00000550h]
008E16B1: push eax
008E16B2: lea eax, var_7C
008E16B5: push eax
008E16B6: call 00410A84h ; Set (object)
008E16BB: push eax
008E16BC: lea eax, var_000000FC
008E16C2: push eax
008E16C3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E16C8: add esp, 00000010h
008E16CB: push eax
008E16CC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E16D1: push eax
008E16D2: lea eax, var_80
008E16D5: push eax
008E16D6: call 00410A84h ; Set (object)
008E16DB: push eax
008E16DC: lea eax, var_0000011C
008E16E2: push eax
008E16E3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E16E8: add esp, 00000020h
008E16EB: push eax
008E16EC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E16F1: push eax
008E16F2: lea eax, var_00000084
008E16F8: push eax
008E16F9: call 00410A84h ; Set (object)
008E16FE: push eax
008E16FF: lea eax, var_0000012C
008E1705: push eax
008E1706: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E170B: add esp, 00000020h
008E170E: push 004412DCh
008E1713: push 00000000h
008E1715: push 0000000Dh
008E1717: mov eax, [ebp+08h]
008E171A: mov eax, [eax]
008E171C: push [ebp+08h]
008E171F: call [eax+00000314h]
008E1725: push eax
008E1726: lea eax, var_00000088
008E172C: push eax
008E172D: call 00410A84h ; Set (object)
008E1732: push eax
008E1733: lea eax, var_0000013C
008E1739: push eax
008E173A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E173F: add esp, 00000010h
008E1742: push eax
008E1743: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E1748: push eax
008E1749: lea eax, var_0000008C
008E174F: push eax
008E1750: call 00410A84h ; Set (object)
008E1755: mov var_000001D0, eax
008E175B: lea eax, var_3C
008E175E: push eax
008E175F: mov eax, var_000001D0
008E1765: mov eax, [eax]
008E1767: push var_000001D0
008E176D: call [eax+4Ch]
008E1770: fclex 
008E1772: mov var_000001D4, eax
008E1778: cmp var_000001D4, 00000000h
008E177F: jnl 8E17A1h
008E1781: push 0000004Ch
008E1783: push 004412DCh
008E1788: push var_000001D0
008E178E: push var_000001D4
008E1794: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E1799: mov var_00000208, eax
008E179F: jmp 8E17A8h
008E17A1: and var_00000208, 00000000h
008E17A8: push var_3C
008E17AB: call 004109DCh ; Val(arg_1)
008E17B0: fstp real8 ptr var_000001A8
008E17B6: push 00000001h
008E17B8: push 00442BFCh
008E17BD: lea eax, var_58
008E17C0: push eax
008E17C1: call 0041086Eh ; msvbvm60.dll.__vbaStrToAnsi
008E17C6: push eax
008E17C7: push 00442BFCh
008E17CC: lea eax, var_54
008E17CF: push eax
008E17D0: call 0041086Eh ; msvbvm60.dll.__vbaStrToAnsi
008E17D5: push eax
008E17D6: push var_18
008E17D9: push 0044A6D4h ; \Runescape\
008E17DE: call 00410A18h ; &
008E17E3: mov edx, eax
008E17E5: lea ecx, var_20
008E17E8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E17ED: push eax
008E17EE: lea eax, var_000000DC
008E17F4: push eax
008E17F5: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E17FA: mov edx, eax
008E17FC: lea ecx, var_24
008E17FF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E1804: push eax
008E1805: call 00410A18h ; &
008E180A: mov edx, eax
008E180C: lea ecx, var_28
008E180F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E1814: push eax
008E1815: push 004495B0h
008E181A: call 00410A18h ; &
008E181F: mov edx, eax
008E1821: lea ecx, var_30
008E1824: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E1829: push eax
008E182A: lea eax, var_0000012C
008E1830: push eax
008E1831: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E1836: mov edx, eax
008E1838: lea ecx, var_34
008E183B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E1840: push eax
008E1841: call 00410A18h ; &
008E1846: mov edx, eax
008E1848: lea ecx, var_38
008E184B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E1850: push eax
008E1851: push 0044A82Ch
008E1856: call 00410A18h ; &
008E185B: mov edx, eax
008E185D: lea ecx, var_40
008E1860: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E1865: push eax
008E1866: fld real8 ptr var_000001A8
008E186C: call 00410814h ; msvbvm60.dll.__vbaFpI4
008E1871: push eax
008E1872: push [008F2074h]
008E1878: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E187D: push [eax]
008E187F: call 00410A18h ; &
008E1884: mov edx, eax
008E1886: lea ecx, var_44
008E1889: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E188E: push eax
008E188F: push 0044A6F0h ; .jpg
008E1894: call 00410A18h ; &
008E1899: mov edx, eax
008E189B: lea ecx, var_4C
008E189E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E18A3: push eax
008E18A4: lea eax, var_50
008E18A7: push eax
008E18A8: call 0041086Eh ; msvbvm60.dll.__vbaStrToAnsi
008E18AD: push eax
008E18AE: push 00445390h ; open
008E18B3: lea eax, var_48
008E18B6: push eax
008E18B7: call 0041086Eh ; msvbvm60.dll.__vbaStrToAnsi
008E18BC: push eax
008E18BD: push var_000001A0
008E18C3: call 0043F610h
008E18C8: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
008E18CD: lea eax, var_58
008E18D0: push eax
008E18D1: lea eax, var_54
008E18D4: push eax
008E18D5: lea eax, var_50
008E18D8: push eax
008E18D9: lea eax, var_4C
008E18DC: push eax
008E18DD: lea eax, var_48
008E18E0: push eax
008E18E1: lea eax, var_44
008E18E4: push eax
008E18E5: lea eax, var_40
008E18E8: push eax
008E18E9: lea eax, var_3C
008E18EC: push eax
008E18ED: lea eax, var_38
008E18F0: push eax
008E18F1: lea eax, var_34
008E18F4: push eax
008E18F5: lea eax, var_30
008E18F8: push eax
008E18F9: lea eax, var_28
008E18FC: push eax
008E18FD: lea eax, var_24
008E1900: push eax
008E1901: lea eax, var_20
008E1904: push eax
008E1905: lea eax, var_18
008E1908: push eax
008E1909: push 0000000Fh
008E190B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E1910: add esp, 00000040h
008E1913: lea eax, var_0000008C
008E1919: push eax
008E191A: lea eax, var_00000088
008E1920: push eax
008E1921: lea eax, var_00000084
008E1927: push eax
008E1928: lea eax, var_80
008E192B: push eax
008E192C: lea eax, var_7C
008E192F: push eax
008E1930: lea eax, var_78
008E1933: push eax
008E1934: lea eax, var_74
008E1937: push eax
008E1938: lea eax, var_70
008E193B: push eax
008E193C: lea eax, var_6C
008E193F: push eax
008E1940: lea eax, var_68
008E1943: push eax
008E1944: lea eax, var_64
008E1947: push eax
008E1948: lea eax, var_60
008E194B: push eax
008E194C: lea eax, var_5C
008E194F: push eax
008E1950: push 0000000Dh
008E1952: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E1957: add esp, 00000038h
008E195A: lea eax, var_0000013C
008E1960: push eax
008E1961: lea eax, var_0000012C
008E1967: push eax
008E1968: lea eax, var_0000011C
008E196E: push eax
008E196F: lea eax, var_0000010C
008E1975: push eax
008E1976: lea eax, var_000000FC
008E197C: push eax
008E197D: lea eax, var_000000EC
008E1983: push eax
008E1984: lea eax, var_000000DC
008E198A: push eax
008E198B: lea eax, var_000000CC
008E1991: push eax
008E1992: lea eax, var_000000BC
008E1998: push eax
008E1999: lea eax, var_000000AC
008E199F: push eax
008E19A0: lea eax, var_0000009C
008E19A6: push eax
008E19A7: push 0000000Bh
008E19A9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E19AE: add esp, 00000030h
008E19B1: mov var_04, 00000000h
008E19B8: wait 
008E19B9: push 008E1AB1h
008E19BE: jmp 008E1AB0h
008E19C3: lea eax, var_58
008E19C6: push eax
008E19C7: lea eax, var_54
008E19CA: push eax
008E19CB: lea eax, var_50
008E19CE: push eax
008E19CF: lea eax, var_4C
008E19D2: push eax
008E19D3: lea eax, var_48
008E19D6: push eax
008E19D7: lea eax, var_44
008E19DA: push eax
008E19DB: lea eax, var_40
008E19DE: push eax
008E19DF: lea eax, var_3C
008E19E2: push eax
008E19E3: lea eax, var_38
008E19E6: push eax
008E19E7: lea eax, var_34
008E19EA: push eax
008E19EB: lea eax, var_30
008E19EE: push eax
008E19EF: lea eax, var_2C
008E19F2: push eax
008E19F3: lea eax, var_28
008E19F6: push eax
008E19F7: lea eax, var_24
008E19FA: push eax
008E19FB: lea eax, var_20
008E19FE: push eax
008E19FF: lea eax, var_1C
008E1A02: push eax
008E1A03: lea eax, var_18
008E1A06: push eax
008E1A07: push 00000011h
008E1A09: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E1A0E: add esp, 00000048h
008E1A11: lea eax, var_0000008C
008E1A17: push eax
008E1A18: lea eax, var_00000088
008E1A1E: push eax
008E1A1F: lea eax, var_00000084
008E1A25: push eax
008E1A26: lea eax, var_80
008E1A29: push eax
008E1A2A: lea eax, var_7C
008E1A2D: push eax
008E1A2E: lea eax, var_78
008E1A31: push eax
008E1A32: lea eax, var_74
008E1A35: push eax
008E1A36: lea eax, var_70
008E1A39: push eax
008E1A3A: lea eax, var_6C
008E1A3D: push eax
008E1A3E: lea eax, var_68
008E1A41: push eax
008E1A42: lea eax, var_64
008E1A45: push eax
008E1A46: lea eax, var_60
008E1A49: push eax
008E1A4A: lea eax, var_5C
008E1A4D: push eax
008E1A4E: push 0000000Dh
008E1A50: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E1A55: add esp, 00000038h
008E1A58: lea eax, var_0000013C
008E1A5E: push eax
008E1A5F: lea eax, var_0000012C
008E1A65: push eax
008E1A66: lea eax, var_0000011C
008E1A6C: push eax
008E1A6D: lea eax, var_0000010C
008E1A73: push eax
008E1A74: lea eax, var_000000FC
008E1A7A: push eax
008E1A7B: lea eax, var_000000EC
008E1A81: push eax
008E1A82: lea eax, var_000000DC
008E1A88: push eax
008E1A89: lea eax, var_000000CC
008E1A8F: push eax
008E1A90: lea eax, var_000000BC
008E1A96: push eax
008E1A97: lea eax, var_000000AC
008E1A9D: push eax
008E1A9E: lea eax, var_0000009C
008E1AA4: push eax
008E1AA5: push 0000000Bh
008E1AA7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E1AAC: add esp, 00000030h
008E1AAF: ret 
End Sub

Private sub mnuRensaLogg__8E32A6
008E32A6: push ebp
008E32A7: mov ebp, esp
008E32A9: sub esp, 0000000Ch
008E32AC: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E32B1: mov eax, fs:[00h]
008E32B7: push eax
008E32B8: mov fs:[00000000h], esp
008E32BF: mov eax, 00000128h
008E32C4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E32C9: push ebx
008E32CA: push esi
008E32CB: push edi
008E32CC: mov var_0C, esp
008E32CF: mov var_08, 00410368h
008E32D6: mov eax, [ebp+08h]
008E32D9: and eax, 00000001h
008E32DC: mov var_04, eax
008E32DF: mov eax, [ebp+08h]
008E32E2: and al, FEh
008E32E4: mov [ebp+08h], eax
008E32E7: mov eax, [ebp+08h]
008E32EA: mov eax, [eax]
008E32EC: push [ebp+08h]
008E32EF: call [eax+04h]
008E32F2: mov var_70, 80020004h
008E32F9: mov var_78, 0000000Ah
008E3300: mov var_60, 80020004h
008E3307: mov var_68, 0000000Ah
008E330E: mov var_50, 80020004h
008E3315: mov var_58, 0000000Ah
008E331C: mov var_00000084, 0044BCB4h ; Confirm erasing
008E3326: mov var_0000008C, 00000008h
008E3330: lea edx, var_0000008C
008E3336: lea ecx, var_48
008E3339: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008E333E: lea eax, var_78
008E3341: push eax
008E3342: lea eax, var_68
008E3345: push eax
008E3346: lea eax, var_58
008E3349: push eax
008E334A: push 00000034h
008E334C: lea eax, var_48
008E334F: push eax
008E3350: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008E3355: sub eax, 00000007h
008E3358: neg eax
008E335A: sbb eax, eax
008E335C: inc eax
008E335D: neg eax
008E335F: mov var_000000CC, ax
008E3366: lea eax, var_78
008E3369: push eax
008E336A: lea eax, var_68
008E336D: push eax
008E336E: lea eax, var_58
008E3371: push eax
008E3372: lea eax, var_48
008E3375: push eax
008E3376: push 00000004h
008E3378: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E337D: add esp, 00000014h
008E3380: movsx eax, word ptr var_000000CC
008E3387: test eax, eax
008E3389: jz 8E3390h
008E338B: jmp 008E39F1h
008E3390: mov eax, [ebp+0Ch]
008E3393: mov ax, [eax]
008E3396: mov var_00000114, ax
008E339D: movsx eax, word ptr var_00000114
008E33A4: mov var_00000128, eax
008E33AA: cmp var_00000128, 00000000h
008E33B1: jz 8E33C5h
008E33B3: cmp var_00000128, 00000002h
008E33BA: jz 008E35B7h
008E33C0: jmp 008E39F1h
008E33C5: push 00FF00FFh
008E33CA: push 0044BCD8h ; Delete log - All sockets
008E33CF: push 00461618h ; Runescape
008E33D4: push 00443C28h
008E33D9: call 0074FC42h
008E33DE: mov var_00000084, 00000001h
008E33E8: mov var_0000008C, 00000002h
008E33F2: cmp [008F2010h], 00000000h
008E33F9: jnz 8E3416h
008E33FB: push 008F2010h
008E3400: push 00433984h
008E3405: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E340A: mov var_0000012C, 008F2010h
008E3414: jmp 8E3420h
008E3416: mov var_0000012C, 008F2010h
008E3420: mov eax, var_0000012C
008E3426: mov eax, [eax]
008E3428: mov ecx, var_0000012C
008E342E: mov ecx, [ecx]
008E3430: mov ecx, [ecx]
008E3432: push eax
008E3433: call [ecx+00000524h]
008E3439: push eax
008E343A: lea eax, var_30
008E343D: push eax
008E343E: call 00410A84h ; Set (object)
008E3443: mov var_000000CC, eax
008E3449: lea eax, var_000000C0
008E344F: push eax
008E3450: mov eax, var_000000CC
008E3456: mov eax, [eax]
008E3458: push var_000000CC
008E345E: call [eax+48h]
008E3461: fclex 
008E3463: mov var_000000D0, eax
008E3469: cmp var_000000D0, 00000000h
008E3470: jnl 8E3492h
008E3472: push 00000048h
008E3474: push 00440DE8h
008E3479: push var_000000CC
008E347F: push var_000000D0
008E3485: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E348A: mov var_00000130, eax
008E3490: jmp 8E3499h
008E3492: and var_00000130, 00000000h
008E3499: mov ax, var_000000C0
008E34A0: mov var_00000094, ax
008E34A7: mov var_0000009C, 00000002h
008E34B1: mov var_000000A4, 00000001h
008E34BB: mov var_000000AC, 00000002h
008E34C5: lea eax, var_0000008C
008E34CB: push eax
008E34CC: lea eax, var_0000009C
008E34D2: push eax
008E34D3: lea eax, var_000000AC
008E34D9: push eax
008E34DA: lea eax, var_000000F0
008E34E0: push eax
008E34E1: lea eax, var_000000E0
008E34E7: push eax
008E34E8: lea eax, var_24
008E34EB: push eax
008E34EC: call 00410A3Ch ; For
008E34F1: mov var_00000120, eax
008E34F7: lea ecx, var_30
008E34FA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E34FF: jmp 008E35A5h
008E3504: push 00000000h
008E3506: push 00000000h
008E3508: push 00000001h
008E350A: push 00000000h
008E350C: lea eax, var_7C
008E350F: push eax
008E3510: push 00000010h
008E3512: push 00000880h
008E3517: call 00410946h ; ReDim
008E351C: add esp, 0000001Ch
008E351F: mov var_00000084, 00442930h
008E3529: mov var_0000008C, 00000008h
008E3533: lea esi, var_0000008C
008E3539: push 00000000h
008E353B: push var_7C
008E353E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E3543: mov ecx, eax
008E3545: mov edx, esi
008E3547: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008E354C: mov edx, 0043DAE0h ; x133
008E3551: lea ecx, var_28
008E3554: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E3559: lea eax, var_7C
008E355C: push eax
008E355D: lea eax, var_28
008E3560: push eax
008E3561: lea eax, var_24
008E3564: push eax
008E3565: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008E356A: push eax
008E356B: call 007A6910h
008E3570: lea eax, var_7C
008E3573: push eax
008E3574: push 00000000h
008E3576: call 00410934h ; Erase
008E357B: lea ecx, var_28
008E357E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008E3583: call 0041096Ah ; DoEvents
008E3588: lea eax, var_000000F0
008E358E: push eax
008E358F: lea eax, var_000000E0
008E3595: push eax
008E3596: lea eax, var_24
008E3599: push eax
008E359A: call 00410A36h ; Next
008E359F: mov var_00000120, eax
008E35A5: cmp var_00000120, 00000000h
008E35AC: jnz 008E3504h
008E35B2: jmp 008E39F1h
008E35B7: push 00FF00FFh
008E35BC: push 0044BC74h ; Delete log - Selected sockets
008E35C1: push 00461618h ; Runescape
008E35C6: push 00443C28h
008E35CB: call 0074FC42h
008E35D0: mov var_00000084, 00000001h
008E35DA: mov var_0000008C, 00000002h
008E35E4: cmp [008F2010h], 00000000h
008E35EB: jnz 8E3608h
008E35ED: push 008F2010h
008E35F2: push 00433984h
008E35F7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E35FC: mov var_00000134, 008F2010h
008E3606: jmp 8E3612h
008E3608: mov var_00000134, 008F2010h
008E3612: push 00000000h
008E3614: push 00000001h
008E3616: push 00440E48h
008E361B: push 00000000h
008E361D: push 00000018h
008E361F: mov eax, var_00000134
008E3625: mov eax, [eax]
008E3627: mov ecx, var_00000134
008E362D: mov ecx, [ecx]
008E362F: mov ecx, [ecx]
008E3631: push eax
008E3632: call [ecx+00000550h]
008E3638: push eax
008E3639: lea eax, var_30
008E363C: push eax
008E363D: call 00410A84h ; Set (object)
008E3642: push eax
008E3643: lea eax, var_48
008E3646: push eax
008E3647: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E364C: add esp, 00000010h
008E364F: push eax
008E3650: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E3655: push eax
008E3656: lea eax, var_34
008E3659: push eax
008E365A: call 00410A84h ; Set (object)
008E365F: push eax
008E3660: lea eax, var_58
008E3663: push eax
008E3664: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E3669: add esp, 00000010h
008E366C: push eax
008E366D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E3672: mov var_00000094, eax
008E3678: mov var_0000009C, 00000003h
008E3682: mov var_000000A4, 00000001h
008E368C: mov var_000000AC, 00000002h
008E3696: lea eax, var_0000008C
008E369C: push eax
008E369D: lea eax, var_0000009C
008E36A3: push eax
008E36A4: lea eax, var_000000AC
008E36AA: push eax
008E36AB: lea eax, var_00000110
008E36B1: push eax
008E36B2: lea eax, var_00000100
008E36B8: push eax
008E36B9: lea eax, var_24
008E36BC: push eax
008E36BD: call 00410A3Ch ; For
008E36C2: mov var_00000124, eax
008E36C8: lea eax, var_34
008E36CB: push eax
008E36CC: lea eax, var_30
008E36CF: push eax
008E36D0: push 00000002h
008E36D2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E36D7: add esp, 0000000Ch
008E36DA: lea eax, var_58
008E36DD: push eax
008E36DE: lea eax, var_48
008E36E1: push eax
008E36E2: push 00000002h
008E36E4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E36E9: add esp, 0000000Ch
008E36EC: jmp 008E39E4h
008E36F1: lea eax, var_24
008E36F4: mov var_00000084, eax
008E36FA: mov var_0000008C, 0000400Ch
008E3704: cmp [008F2010h], 00000000h
008E370B: jnz 8E3728h
008E370D: push 008F2010h
008E3712: push 00433984h
008E3717: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E371C: mov var_00000138, 008F2010h
008E3726: jmp 8E3732h
008E3728: mov var_00000138, 008F2010h
008E3732: push 00000000h
008E3734: push 00000004h
008E3736: push 00440E58h
008E373B: push 00000010h
008E373D: pop eax
008E373E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E3743: lea esi, var_0000008C
008E3749: mov edi, esp
008E374B: movsd 
008E374C: movsd 
008E374D: movsd 
008E374E: movsd 
008E374F: push 00000001h
008E3751: push 00000000h
008E3753: push 00440E48h
008E3758: push 00000000h
008E375A: push 00000018h
008E375C: mov eax, var_00000138
008E3762: mov eax, [eax]
008E3764: mov ecx, var_00000138
008E376A: mov ecx, [ecx]
008E376C: mov ecx, [ecx]
008E376E: push eax
008E376F: call [ecx+00000550h]
008E3775: push eax
008E3776: lea eax, var_30
008E3779: push eax
008E377A: call 00410A84h ; Set (object)
008E377F: push eax
008E3780: lea eax, var_48
008E3783: push eax
008E3784: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E3789: add esp, 00000010h
008E378C: push eax
008E378D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E3792: push eax
008E3793: lea eax, var_34
008E3796: push eax
008E3797: call 00410A84h ; Set (object)
008E379C: push eax
008E379D: lea eax, var_58
008E37A0: push eax
008E37A1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E37A6: add esp, 00000020h
008E37A9: push eax
008E37AA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E37AF: push eax
008E37B0: lea eax, var_38
008E37B3: push eax
008E37B4: call 00410A84h ; Set (object)
008E37B9: push eax
008E37BA: lea eax, var_68
008E37BD: push eax
008E37BE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E37C3: add esp, 00000010h
008E37C6: push eax
008E37C7: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008E37CC: sub ax, FFFFh
008E37D0: neg ax
008E37D3: sbb eax, eax
008E37D5: inc eax
008E37D6: neg eax
008E37D8: mov var_000000CC, ax
008E37DF: lea eax, var_38
008E37E2: push eax
008E37E3: lea eax, var_34
008E37E6: push eax
008E37E7: lea eax, var_30
008E37EA: push eax
008E37EB: push 00000003h
008E37ED: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E37F2: add esp, 00000010h
008E37F5: lea eax, var_68
008E37F8: push eax
008E37F9: lea eax, var_58
008E37FC: push eax
008E37FD: lea eax, var_48
008E3800: push eax
008E3801: push 00000003h
008E3803: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E3808: add esp, 00000010h
008E380B: movsx eax, word ptr var_000000CC
008E3812: test eax, eax
008E3814: jz 008E39C7h
008E381A: lea eax, var_24
008E381D: mov var_00000084, eax
008E3823: mov var_0000008C, 0000400Ch
008E382D: cmp [008F2010h], 00000000h
008E3834: jnz 8E3851h
008E3836: push 008F2010h
008E383B: push 00433984h
008E3840: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E3845: mov var_0000013C, 008F2010h
008E384F: jmp 8E385Bh
008E3851: mov var_0000013C, 008F2010h
008E385B: push 00000000h
008E385D: push 00000014h
008E385F: push 00440E58h
008E3864: push 00000010h
008E3866: pop eax
008E3867: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E386C: lea esi, var_0000008C
008E3872: mov edi, esp
008E3874: movsd 
008E3875: movsd 
008E3876: movsd 
008E3877: movsd 
008E3878: push 00000001h
008E387A: push 00000000h
008E387C: push 00440E48h
008E3881: push 00000000h
008E3883: push 00000018h
008E3885: mov eax, var_0000013C
008E388B: mov eax, [eax]
008E388D: mov ecx, var_0000013C
008E3893: mov ecx, [ecx]
008E3895: mov ecx, [ecx]
008E3897: push eax
008E3898: call [ecx+00000550h]
008E389E: push eax
008E389F: lea eax, var_30
008E38A2: push eax
008E38A3: call 00410A84h ; Set (object)
008E38A8: push eax
008E38A9: lea eax, var_48
008E38AC: push eax
008E38AD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E38B2: add esp, 00000010h
008E38B5: push eax
008E38B6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E38BB: push eax
008E38BC: lea eax, var_34
008E38BF: push eax
008E38C0: call 00410A84h ; Set (object)
008E38C5: push eax
008E38C6: lea eax, var_58
008E38C9: push eax
008E38CA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E38CF: add esp, 00000020h
008E38D2: push eax
008E38D3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E38D8: push eax
008E38D9: lea eax, var_38
008E38DC: push eax
008E38DD: call 00410A84h ; Set (object)
008E38E2: push eax
008E38E3: lea eax, var_68
008E38E6: push eax
008E38E7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E38EC: add esp, 00000010h
008E38EF: push eax
008E38F0: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E38F5: mov edx, eax
008E38F7: lea ecx, var_28
008E38FA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E38FF: push eax
008E3900: call 004109DCh ; Val(arg_1)
008E3905: fstp real8 ptr var_000000C8
008E390B: push 00000000h
008E390D: push 00000000h
008E390F: push 00000001h
008E3911: push 00000000h
008E3913: lea eax, var_7C
008E3916: push eax
008E3917: push 00000010h
008E3919: push 00000880h
008E391E: call 00410946h ; ReDim
008E3923: add esp, 0000001Ch
008E3926: mov var_00000094, 00442930h
008E3930: mov var_0000009C, 00000008h
008E393A: lea esi, var_0000009C
008E3940: push 00000000h
008E3942: push var_7C
008E3945: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E394A: mov ecx, eax
008E394C: mov edx, esi
008E394E: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008E3953: mov edx, 0043DAE0h ; x133
008E3958: lea ecx, var_2C
008E395B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E3960: lea eax, var_7C
008E3963: push eax
008E3964: lea eax, var_2C
008E3967: push eax
008E3968: fld real8 ptr var_000000C8
008E396E: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E3973: push eax
008E3974: call 007A6910h
008E3979: lea eax, var_7C
008E397C: push eax
008E397D: push 00000000h
008E397F: call 00410934h ; Erase
008E3984: lea eax, var_2C
008E3987: push eax
008E3988: lea eax, var_28
008E398B: push eax
008E398C: push 00000002h
008E398E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E3993: add esp, 0000000Ch
008E3996: lea eax, var_38
008E3999: push eax
008E399A: lea eax, var_34
008E399D: push eax
008E399E: lea eax, var_30
008E39A1: push eax
008E39A2: push 00000003h
008E39A4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E39A9: add esp, 00000010h
008E39AC: lea eax, var_68
008E39AF: push eax
008E39B0: lea eax, var_58
008E39B3: push eax
008E39B4: lea eax, var_48
008E39B7: push eax
008E39B8: push 00000003h
008E39BA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E39BF: add esp, 00000010h
008E39C2: call 0041096Ah ; DoEvents
008E39C7: lea eax, var_00000110
008E39CD: push eax
008E39CE: lea eax, var_00000100
008E39D4: push eax
008E39D5: lea eax, var_24
008E39D8: push eax
008E39D9: call 00410A36h ; Next
008E39DE: mov var_00000124, eax
008E39E4: cmp var_00000124, 00000000h
008E39EB: jnz 008E36F1h
008E39F1: mov var_04, 00000000h
008E39F8: wait 
008E39F9: push 008E3A7Dh
008E39FE: jmp 8E3A4Eh
008E3A00: lea eax, var_2C
008E3A03: push eax
008E3A04: lea eax, var_28
008E3A07: push eax
008E3A08: push 00000002h
008E3A0A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E3A0F: add esp, 0000000Ch
008E3A12: lea eax, var_38
008E3A15: push eax
008E3A16: lea eax, var_34
008E3A19: push eax
008E3A1A: lea eax, var_30
008E3A1D: push eax
008E3A1E: push 00000003h
008E3A20: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E3A25: add esp, 00000010h
008E3A28: lea eax, var_78
008E3A2B: push eax
008E3A2C: lea eax, var_68
008E3A2F: push eax
008E3A30: lea eax, var_58
008E3A33: push eax
008E3A34: lea eax, var_48
008E3A37: push eax
008E3A38: push 00000004h
008E3A3A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E3A3F: add esp, 00000014h
008E3A42: lea eax, var_7C
008E3A45: push eax
008E3A46: push 00000000h
008E3A48: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008E3A4D: ret 
End Sub

Private sub mnuGetlog__8E25EE
008E25EE: push ebp
008E25EF: mov ebp, esp
008E25F1: sub esp, 00000018h
008E25F4: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E25F9: mov eax, fs:[00h]
008E25FF: push eax
008E2600: mov fs:[00000000h], esp
008E2607: mov eax, 00000118h
008E260C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E2611: push ebx
008E2612: push esi
008E2613: push edi
008E2614: mov var_18, esp
008E2617: mov var_14, 00410290h
008E261E: mov eax, [ebp+08h]
008E2621: and eax, 00000001h
008E2624: mov var_10, eax
008E2627: mov eax, [ebp+08h]
008E262A: and al, FEh
008E262C: mov [ebp+08h], eax
008E262F: mov var_0C, 00000000h
008E2636: mov eax, [ebp+08h]
008E2639: mov eax, [eax]
008E263B: push [ebp+08h]
008E263E: call [eax+04h]
008E2641: mov var_04, 00000001h
008E2648: mov var_04, 00000002h
008E264F: push FFFFFFFFh
008E2651: call 00410A60h ; On Error ...
008E2656: mov var_04, 00000003h
008E265D: and [008F23B8h], 00000000h
008E2664: mov var_04, 00000004h
008E266B: fldz 
008E266D: fstp real8 ptr [008F23BCh]
008E2673: mov var_04, 00000005h
008E267A: fldz 
008E267C: fstp real8 ptr [008F23ACh]
008E2682: mov var_04, 00000006h
008E2689: lea eax, var_34
008E268C: push eax
008E268D: mov eax, [ebp+08h]
008E2690: mov eax, [eax]
008E2692: push [ebp+08h]
008E2695: call [eax+000001C0h]
008E269B: fclex 
008E269D: mov var_000000B8, eax
008E26A3: cmp var_000000B8, 00000000h
008E26AA: jnl 8E26CCh
008E26AC: push 000001C0h
008E26B1: push 00448888h
008E26B6: push [ebp+08h]
008E26B9: push var_000000B8
008E26BF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E26C4: mov var_00000120, eax
008E26CA: jmp 8E26D3h
008E26CC: and var_00000120, 00000000h
008E26D3: push var_34
008E26D6: call 004109DCh ; Val(arg_1)
008E26DB: call 00410814h ; msvbvm60.dll.__vbaFpI4
008E26E0: mov [8F23DCh], eax
008E26E5: lea ecx, var_34
008E26E8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008E26ED: mov var_04, 00000007h
008E26F4: mov eax, [ebp+0Ch]
008E26F7: mov ax, [eax]
008E26FA: mov var_00000100, ax
008E2701: movsx eax, word ptr var_00000100
008E2708: mov var_00000124, eax
008E270E: cmp var_00000124, 00000000h
008E2715: jz 8E272Eh
008E2717: cmp var_00000124, 00000002h
008E271E: jz 008E291Dh
008E2724: jmp 008E2D58h
008E2729: jmp 008E2D58h
008E272E: mov var_04, 00000009h
008E2735: mov var_80, 00000001h
008E273C: mov var_00000088, 00000002h
008E2746: cmp [008F2010h], 00000000h
008E274D: jnz 8E276Ah
008E274F: push 008F2010h
008E2754: push 00433984h
008E2759: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E275E: mov var_00000128, 008F2010h
008E2768: jmp 8E2774h
008E276A: mov var_00000128, 008F2010h
008E2774: mov eax, var_00000128
008E277A: mov eax, [eax]
008E277C: mov ecx, var_00000128
008E2782: mov ecx, [ecx]
008E2784: mov ecx, [ecx]
008E2786: push eax
008E2787: call [ecx+00000524h]
008E278D: push eax
008E278E: lea eax, var_3C
008E2791: push eax
008E2792: call 00410A84h ; Set (object)
008E2797: mov var_000000B8, eax
008E279D: lea eax, var_000000AC
008E27A3: push eax
008E27A4: mov eax, var_000000B8
008E27AA: mov eax, [eax]
008E27AC: push var_000000B8
008E27B2: call [eax+48h]
008E27B5: fclex 
008E27B7: mov var_000000BC, eax
008E27BD: cmp var_000000BC, 00000000h
008E27C4: jnl 8E27E6h
008E27C6: push 00000048h
008E27C8: push 00440DE8h
008E27CD: push var_000000B8
008E27D3: push var_000000BC
008E27D9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E27DE: mov var_0000012C, eax
008E27E4: jmp 8E27EDh
008E27E6: and var_0000012C, 00000000h
008E27ED: mov ax, var_000000AC
008E27F4: mov var_00000090, ax
008E27FB: mov var_00000098, 00000002h
008E2805: mov var_000000A0, 00000001h
008E280F: mov var_000000A8, 00000002h
008E2819: lea eax, var_00000088
008E281F: push eax
008E2820: lea eax, var_00000098
008E2826: push eax
008E2827: lea eax, var_000000A8
008E282D: push eax
008E282E: lea eax, var_000000DC
008E2834: push eax
008E2835: lea eax, var_000000CC
008E283B: push eax
008E283C: lea eax, var_30
008E283F: push eax
008E2840: call 00410A3Ch ; For
008E2845: mov var_00000118, eax
008E284B: lea ecx, var_3C
008E284E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E2853: jmp 008E290Bh
008E2858: mov var_04, 0000000Ah
008E285F: push 00000000h
008E2861: push 00000000h
008E2863: push 00000001h
008E2865: push 00000000h
008E2867: lea eax, var_78
008E286A: push eax
008E286B: push 00000010h
008E286D: push 00000880h
008E2872: call 00410946h ; ReDim
008E2877: add esp, 0000001Ch
008E287A: mov var_80, 00442930h
008E2881: mov var_00000088, 00000008h
008E288B: lea esi, var_00000088
008E2891: push 00000000h
008E2893: push var_78
008E2896: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E289B: mov ecx, eax
008E289D: mov edx, esi
008E289F: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008E28A4: mov edx, 0043DAD0h ; x132
008E28A9: lea ecx, var_34
008E28AC: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E28B1: lea eax, var_78
008E28B4: push eax
008E28B5: lea eax, var_34
008E28B8: push eax
008E28B9: lea eax, var_30
008E28BC: push eax
008E28BD: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008E28C2: push eax
008E28C3: call 007A6910h
008E28C8: lea eax, var_78
008E28CB: push eax
008E28CC: push 00000000h
008E28CE: call 00410934h ; Erase
008E28D3: lea ecx, var_34
008E28D6: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008E28DB: mov var_04, 0000000Bh
008E28E2: call 0041096Ah ; DoEvents
008E28E7: mov var_04, 0000000Ch
008E28EE: lea eax, var_000000DC
008E28F4: push eax
008E28F5: lea eax, var_000000CC
008E28FB: push eax
008E28FC: lea eax, var_30
008E28FF: push eax
008E2900: call 00410A36h ; Next
008E2905: mov var_00000118, eax
008E290B: cmp var_00000118, 00000000h
008E2912: jnz 008E2858h
008E2918: jmp 008E2D58h
008E291D: mov var_04, 0000000Eh
008E2924: mov var_80, 00000001h
008E292B: mov var_00000088, 00000002h
008E2935: cmp [008F2010h], 00000000h
008E293C: jnz 8E2959h
008E293E: push 008F2010h
008E2943: push 00433984h
008E2948: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E294D: mov var_00000130, 008F2010h
008E2957: jmp 8E2963h
008E2959: mov var_00000130, 008F2010h
008E2963: push 00000000h
008E2965: push 00000001h
008E2967: push 00440E48h
008E296C: push 00000000h
008E296E: push 00000018h
008E2970: mov eax, var_00000130
008E2976: mov eax, [eax]
008E2978: mov ecx, var_00000130
008E297E: mov ecx, [ecx]
008E2980: mov ecx, [ecx]
008E2982: push eax
008E2983: call [ecx+00000550h]
008E2989: push eax
008E298A: lea eax, var_3C
008E298D: push eax
008E298E: call 00410A84h ; Set (object)
008E2993: push eax
008E2994: lea eax, var_54
008E2997: push eax
008E2998: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E299D: add esp, 00000010h
008E29A0: push eax
008E29A1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E29A6: push eax
008E29A7: lea eax, var_40
008E29AA: push eax
008E29AB: call 00410A84h ; Set (object)
008E29B0: push eax
008E29B1: lea eax, var_64
008E29B4: push eax
008E29B5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E29BA: add esp, 00000010h
008E29BD: push eax
008E29BE: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E29C3: mov var_00000090, eax
008E29C9: mov var_00000098, 00000003h
008E29D3: mov var_000000A0, 00000001h
008E29DD: mov var_000000A8, 00000002h
008E29E7: lea eax, var_00000088
008E29ED: push eax
008E29EE: lea eax, var_00000098
008E29F4: push eax
008E29F5: lea eax, var_000000A8
008E29FB: push eax
008E29FC: lea eax, var_000000FC
008E2A02: push eax
008E2A03: lea eax, var_000000EC
008E2A09: push eax
008E2A0A: lea eax, var_30
008E2A0D: push eax
008E2A0E: call 00410A3Ch ; For
008E2A13: mov var_0000011C, eax
008E2A19: lea eax, var_40
008E2A1C: push eax
008E2A1D: lea eax, var_3C
008E2A20: push eax
008E2A21: push 00000002h
008E2A23: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E2A28: add esp, 0000000Ch
008E2A2B: lea eax, var_64
008E2A2E: push eax
008E2A2F: lea eax, var_54
008E2A32: push eax
008E2A33: push 00000002h
008E2A35: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E2A3A: add esp, 0000000Ch
008E2A3D: jmp 008E2D4Bh
008E2A42: mov var_04, 0000000Fh
008E2A49: lea eax, var_30
008E2A4C: mov var_80, eax
008E2A4F: mov var_00000088, 0000400Ch
008E2A59: cmp [008F2010h], 00000000h
008E2A60: jnz 8E2A7Dh
008E2A62: push 008F2010h
008E2A67: push 00433984h
008E2A6C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E2A71: mov var_00000134, 008F2010h
008E2A7B: jmp 8E2A87h
008E2A7D: mov var_00000134, 008F2010h
008E2A87: push 00000000h
008E2A89: push 00000004h
008E2A8B: push 00440E58h
008E2A90: push 00000010h
008E2A92: pop eax
008E2A93: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E2A98: lea esi, var_00000088
008E2A9E: mov edi, esp
008E2AA0: movsd 
008E2AA1: movsd 
008E2AA2: movsd 
008E2AA3: movsd 
008E2AA4: push 00000001h
008E2AA6: push 00000000h
008E2AA8: push 00440E48h
008E2AAD: push 00000000h
008E2AAF: push 00000018h
008E2AB1: mov eax, var_00000134
008E2AB7: mov eax, [eax]
008E2AB9: mov ecx, var_00000134
008E2ABF: mov ecx, [ecx]
008E2AC1: mov ecx, [ecx]
008E2AC3: push eax
008E2AC4: call [ecx+00000550h]
008E2ACA: push eax
008E2ACB: lea eax, var_3C
008E2ACE: push eax
008E2ACF: call 00410A84h ; Set (object)
008E2AD4: push eax
008E2AD5: lea eax, var_54
008E2AD8: push eax
008E2AD9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E2ADE: add esp, 00000010h
008E2AE1: push eax
008E2AE2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E2AE7: push eax
008E2AE8: lea eax, var_40
008E2AEB: push eax
008E2AEC: call 00410A84h ; Set (object)
008E2AF1: push eax
008E2AF2: lea eax, var_64
008E2AF5: push eax
008E2AF6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E2AFB: add esp, 00000020h
008E2AFE: push eax
008E2AFF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E2B04: push eax
008E2B05: lea eax, var_44
008E2B08: push eax
008E2B09: call 00410A84h ; Set (object)
008E2B0E: push eax
008E2B0F: lea eax, var_74
008E2B12: push eax
008E2B13: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E2B18: add esp, 00000010h
008E2B1B: push eax
008E2B1C: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008E2B21: sub ax, FFFFh
008E2B25: neg ax
008E2B28: sbb eax, eax
008E2B2A: inc eax
008E2B2B: neg eax
008E2B2D: mov var_000000B8, ax
008E2B34: lea eax, var_44
008E2B37: push eax
008E2B38: lea eax, var_40
008E2B3B: push eax
008E2B3C: lea eax, var_3C
008E2B3F: push eax
008E2B40: push 00000003h
008E2B42: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E2B47: add esp, 00000010h
008E2B4A: lea eax, var_74
008E2B4D: push eax
008E2B4E: lea eax, var_64
008E2B51: push eax
008E2B52: lea eax, var_54
008E2B55: push eax
008E2B56: push 00000003h
008E2B58: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E2B5D: add esp, 00000010h
008E2B60: movsx eax, word ptr var_000000B8
008E2B67: test eax, eax
008E2B69: jz 008E2D27h
008E2B6F: mov var_04, 00000010h
008E2B76: lea eax, var_30
008E2B79: mov var_80, eax
008E2B7C: mov var_00000088, 0000400Ch
008E2B86: cmp [008F2010h], 00000000h
008E2B8D: jnz 8E2BAAh
008E2B8F: push 008F2010h
008E2B94: push 00433984h
008E2B99: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E2B9E: mov var_00000138, 008F2010h
008E2BA8: jmp 8E2BB4h
008E2BAA: mov var_00000138, 008F2010h
008E2BB4: push 00000000h
008E2BB6: push 00000014h
008E2BB8: push 00440E58h
008E2BBD: push 00000010h
008E2BBF: pop eax
008E2BC0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E2BC5: lea esi, var_00000088
008E2BCB: mov edi, esp
008E2BCD: movsd 
008E2BCE: movsd 
008E2BCF: movsd 
008E2BD0: movsd 
008E2BD1: push 00000001h
008E2BD3: push 00000000h
008E2BD5: push 00440E48h
008E2BDA: push 00000000h
008E2BDC: push 00000018h
008E2BDE: mov eax, var_00000138
008E2BE4: mov eax, [eax]
008E2BE6: mov ecx, var_00000138
008E2BEC: mov ecx, [ecx]
008E2BEE: mov ecx, [ecx]
008E2BF0: push eax
008E2BF1: call [ecx+00000550h]
008E2BF7: push eax
008E2BF8: lea eax, var_3C
008E2BFB: push eax
008E2BFC: call 00410A84h ; Set (object)
008E2C01: push eax
008E2C02: lea eax, var_54
008E2C05: push eax
008E2C06: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E2C0B: add esp, 00000010h
008E2C0E: push eax
008E2C0F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E2C14: push eax
008E2C15: lea eax, var_40
008E2C18: push eax
008E2C19: call 00410A84h ; Set (object)
008E2C1E: push eax
008E2C1F: lea eax, var_64
008E2C22: push eax
008E2C23: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E2C28: add esp, 00000020h
008E2C2B: push eax
008E2C2C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E2C31: push eax
008E2C32: lea eax, var_44
008E2C35: push eax
008E2C36: call 00410A84h ; Set (object)
008E2C3B: push eax
008E2C3C: lea eax, var_74
008E2C3F: push eax
008E2C40: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E2C45: add esp, 00000010h
008E2C48: push eax
008E2C49: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E2C4E: mov edx, eax
008E2C50: lea ecx, var_34
008E2C53: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E2C58: push eax
008E2C59: call 004109DCh ; Val(arg_1)
008E2C5E: fstp real8 ptr var_000000B4
008E2C64: push 00000000h
008E2C66: push 00000000h
008E2C68: push 00000001h
008E2C6A: push 00000000h
008E2C6C: lea eax, var_78
008E2C6F: push eax
008E2C70: push 00000010h
008E2C72: push 00000880h
008E2C77: call 00410946h ; ReDim
008E2C7C: add esp, 0000001Ch
008E2C7F: mov var_00000090, 00442930h
008E2C89: mov var_00000098, 00000008h
008E2C93: lea esi, var_00000098
008E2C99: push 00000000h
008E2C9B: push var_78
008E2C9E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E2CA3: mov ecx, eax
008E2CA5: mov edx, esi
008E2CA7: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008E2CAC: mov edx, 0043DAD0h ; x132
008E2CB1: lea ecx, var_38
008E2CB4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E2CB9: lea eax, var_78
008E2CBC: push eax
008E2CBD: lea eax, var_38
008E2CC0: push eax
008E2CC1: fld real8 ptr var_000000B4
008E2CC7: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E2CCC: push eax
008E2CCD: call 007A6910h
008E2CD2: lea eax, var_78
008E2CD5: push eax
008E2CD6: push 00000000h
008E2CD8: call 00410934h ; Erase
008E2CDD: lea eax, var_38
008E2CE0: push eax
008E2CE1: lea eax, var_34
008E2CE4: push eax
008E2CE5: push 00000002h
008E2CE7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E2CEC: add esp, 0000000Ch
008E2CEF: lea eax, var_44
008E2CF2: push eax
008E2CF3: lea eax, var_40
008E2CF6: push eax
008E2CF7: lea eax, var_3C
008E2CFA: push eax
008E2CFB: push 00000003h
008E2CFD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E2D02: add esp, 00000010h
008E2D05: lea eax, var_74
008E2D08: push eax
008E2D09: lea eax, var_64
008E2D0C: push eax
008E2D0D: lea eax, var_54
008E2D10: push eax
008E2D11: push 00000003h
008E2D13: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E2D18: add esp, 00000010h
008E2D1B: mov var_04, 00000011h
008E2D22: call 0041096Ah ; DoEvents
008E2D27: mov var_04, 00000013h
008E2D2E: lea eax, var_000000FC
008E2D34: push eax
008E2D35: lea eax, var_000000EC
008E2D3B: push eax
008E2D3C: lea eax, var_30
008E2D3F: push eax
008E2D40: call 00410A36h ; Next
008E2D45: mov var_0000011C, eax
008E2D4B: cmp var_0000011C, 00000000h
008E2D52: jnz 008E2A42h
008E2D58: mov var_10, 00000000h
008E2D5F: wait 
008E2D60: push 008E2DE0h
008E2D65: jmp 8E2DB1h
008E2D67: lea eax, var_38
008E2D6A: push eax
008E2D6B: lea eax, var_34
008E2D6E: push eax
008E2D6F: push 00000002h
008E2D71: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E2D76: add esp, 0000000Ch
008E2D79: lea eax, var_44
008E2D7C: push eax
008E2D7D: lea eax, var_40
008E2D80: push eax
008E2D81: lea eax, var_3C
008E2D84: push eax
008E2D85: push 00000003h
008E2D87: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E2D8C: add esp, 00000010h
008E2D8F: lea eax, var_74
008E2D92: push eax
008E2D93: lea eax, var_64
008E2D96: push eax
008E2D97: lea eax, var_54
008E2D9A: push eax
008E2D9B: push 00000003h
008E2D9D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E2DA2: add esp, 00000010h
008E2DA5: lea eax, var_78
008E2DA8: push eax
008E2DA9: push 00000000h
008E2DAB: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008E2DB0: ret 
End Sub

Private sub mnuKeyloggning__8E2DFF
008E2DFF: push ebp
008E2E00: mov ebp, esp
008E2E02: sub esp, 00000018h
008E2E05: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E2E0A: mov eax, fs:[00h]
008E2E10: push eax
008E2E11: mov fs:[00000000h], esp
008E2E18: mov eax, 000000D8h
008E2E1D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E2E22: push ebx
008E2E23: push esi
008E2E24: push edi
008E2E25: mov var_18, esp
008E2E28: mov var_14, 00410308h
008E2E2F: mov eax, [ebp+08h]
008E2E32: and eax, 00000001h
008E2E35: mov var_10, eax
008E2E38: mov eax, [ebp+08h]
008E2E3B: and al, FEh
008E2E3D: mov [ebp+08h], eax
008E2E40: mov var_0C, 00000000h
008E2E47: mov eax, [ebp+08h]
008E2E4A: mov eax, [eax]
008E2E4C: push [ebp+08h]
008E2E4F: call [eax+04h]
008E2E52: mov var_04, 00000001h
008E2E59: mov var_04, 00000002h
008E2E60: push FFFFFFFFh
008E2E62: call 00410A60h ; On Error ...
008E2E67: mov var_04, 00000003h
008E2E6E: mov eax, [ebp+0Ch]
008E2E71: mov ax, [eax]
008E2E74: mov var_000000CC, ax
008E2E7B: movsx eax, word ptr var_000000CC
008E2E82: mov var_000000E8, eax
008E2E88: cmp var_000000E8, 00000005h
008E2E8F: jz 8E2E9Bh
008E2E91: jmp 008E3226h
008E2E96: jmp 008E3226h
008E2E9B: mov var_04, 00000006h
008E2EA2: mov var_68, 00000001h
008E2EA9: mov var_70, 00000002h
008E2EB0: push 004412BCh
008E2EB5: push 00000000h
008E2EB7: push 00000007h
008E2EB9: mov eax, [ebp+08h]
008E2EBC: mov eax, [eax]
008E2EBE: push [ebp+08h]
008E2EC1: call [eax+00000314h]
008E2EC7: push eax
008E2EC8: lea eax, var_38
008E2ECB: push eax
008E2ECC: call 00410A84h ; Set (object)
008E2ED1: push eax
008E2ED2: lea eax, var_50
008E2ED5: push eax
008E2ED6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E2EDB: add esp, 00000010h
008E2EDE: push eax
008E2EDF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E2EE4: push eax
008E2EE5: lea eax, var_3C
008E2EE8: push eax
008E2EE9: call 00410A84h ; Set (object)
008E2EEE: mov var_00000098, eax
008E2EF4: lea eax, var_00000094
008E2EFA: push eax
008E2EFB: mov eax, var_00000098
008E2F01: mov eax, [eax]
008E2F03: push var_00000098
008E2F09: call [eax+1Ch]
008E2F0C: fclex 
008E2F0E: mov var_0000009C, eax
008E2F14: cmp var_0000009C, 00000000h
008E2F1B: jnl 8E2F3Dh
008E2F1D: push 0000001Ch
008E2F1F: push 004412BCh
008E2F24: push var_00000098
008E2F2A: push var_0000009C
008E2F30: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E2F35: mov var_000000EC, eax
008E2F3B: jmp 8E2F44h
008E2F3D: and var_000000EC, 00000000h
008E2F44: mov eax, var_00000094
008E2F4A: mov var_78, eax
008E2F4D: mov var_80, 00000003h
008E2F54: mov var_00000088, 00000001h
008E2F5E: mov var_00000090, 00000002h
008E2F68: lea eax, var_70
008E2F6B: push eax
008E2F6C: lea eax, var_80
008E2F6F: push eax
008E2F70: lea eax, var_00000090
008E2F76: push eax
008E2F77: lea eax, var_000000C8
008E2F7D: push eax
008E2F7E: lea eax, var_000000B8
008E2F84: push eax
008E2F85: lea eax, var_30
008E2F88: push eax
008E2F89: call 00410A3Ch ; For
008E2F8E: mov var_000000E4, eax
008E2F94: lea eax, var_3C
008E2F97: push eax
008E2F98: lea eax, var_38
008E2F9B: push eax
008E2F9C: push 00000002h
008E2F9E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E2FA3: add esp, 0000000Ch
008E2FA6: lea ecx, var_50
008E2FA9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E2FAE: jmp 008E31EDh
008E2FB3: mov var_04, 00000007h
008E2FBA: push 004412BCh
008E2FBF: push 00000000h
008E2FC1: push 00000007h
008E2FC3: mov eax, [ebp+08h]
008E2FC6: mov eax, [eax]
008E2FC8: push [ebp+08h]
008E2FCB: call [eax+00000314h]
008E2FD1: push eax
008E2FD2: lea eax, var_38
008E2FD5: push eax
008E2FD6: call 00410A84h ; Set (object)
008E2FDB: push eax
008E2FDC: lea eax, var_50
008E2FDF: push eax
008E2FE0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E2FE5: add esp, 00000010h
008E2FE8: push eax
008E2FE9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E2FEE: push eax
008E2FEF: lea eax, var_3C
008E2FF2: push eax
008E2FF3: call 00410A84h ; Set (object)
008E2FF8: mov var_00000098, eax
008E2FFE: lea eax, var_40
008E3001: push eax
008E3002: lea eax, var_30
008E3005: push eax
008E3006: mov eax, var_00000098
008E300C: mov eax, [eax]
008E300E: push var_00000098
008E3014: call [eax+24h]
008E3017: fclex 
008E3019: mov var_0000009C, eax
008E301F: cmp var_0000009C, 00000000h
008E3026: jnl 8E3048h
008E3028: push 00000024h
008E302A: push 004412BCh
008E302F: push var_00000098
008E3035: push var_0000009C
008E303B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E3040: mov var_000000F0, eax
008E3046: jmp 8E304Fh
008E3048: and var_000000F0, 00000000h
008E304F: mov eax, var_40
008E3052: mov var_000000A0, eax
008E3058: lea eax, var_34
008E305B: push eax
008E305C: push 00000005h
008E305E: mov eax, var_000000A0
008E3064: mov eax, [eax]
008E3066: push var_000000A0
008E306C: call [eax+00000084h]
008E3072: fclex 
008E3074: mov var_000000A4, eax
008E307A: cmp var_000000A4, 00000000h
008E3081: jnl 8E30A6h
008E3083: push 00000084h
008E3088: push 004412DCh
008E308D: push var_000000A0
008E3093: push var_000000A4
008E3099: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E309E: mov var_000000F4, eax
008E30A4: jmp 8E30ADh
008E30A6: and var_000000F4, 00000000h
008E30AD: push var_34
008E30B0: push 0044BAE4h ; 100%
008E30B5: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008E30BA: neg eax
008E30BC: sbb eax, eax
008E30BE: inc eax
008E30BF: neg eax
008E30C1: mov var_000000A8, ax
008E30C8: lea ecx, var_34
008E30CB: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008E30D0: lea eax, var_40
008E30D3: push eax
008E30D4: lea eax, var_3C
008E30D7: push eax
008E30D8: lea eax, var_38
008E30DB: push eax
008E30DC: push 00000003h
008E30DE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E30E3: add esp, 00000010h
008E30E6: lea ecx, var_50
008E30E9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E30EE: movsx eax, word ptr var_000000A8
008E30F5: test eax, eax
008E30F7: jz 008E31C9h
008E30FD: mov var_04, 00000008h
008E3104: push 004412BCh
008E3109: push 00000000h
008E310B: push 00000007h
008E310D: mov eax, [ebp+08h]
008E3110: mov eax, [eax]
008E3112: push [ebp+08h]
008E3115: call [eax+00000314h]
008E311B: push eax
008E311C: lea eax, var_38
008E311F: push eax
008E3120: call 00410A84h ; Set (object)
008E3125: push eax
008E3126: lea eax, var_50
008E3129: push eax
008E312A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E312F: add esp, 00000010h
008E3132: push eax
008E3133: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E3138: push eax
008E3139: lea eax, var_3C
008E313C: push eax
008E313D: call 00410A84h ; Set (object)
008E3142: mov var_00000098, eax
008E3148: lea edx, var_30
008E314B: lea ecx, var_60
008E314E: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008E3153: lea eax, var_60
008E3156: push eax
008E3157: mov eax, var_00000098
008E315D: mov eax, [eax]
008E315F: push var_00000098
008E3165: call [eax+34h]
008E3168: fclex 
008E316A: mov var_0000009C, eax
008E3170: cmp var_0000009C, 00000000h
008E3177: jnl 8E3199h
008E3179: push 00000034h
008E317B: push 004412BCh
008E3180: push var_00000098
008E3186: push var_0000009C
008E318C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E3191: mov var_000000F8, eax
008E3197: jmp 8E31A0h
008E3199: and var_000000F8, 00000000h
008E31A0: lea eax, var_3C
008E31A3: push eax
008E31A4: lea eax, var_38
008E31A7: push eax
008E31A8: push 00000002h
008E31AA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E31AF: add esp, 0000000Ch
008E31B2: lea eax, var_60
008E31B5: push eax
008E31B6: lea eax, var_50
008E31B9: push eax
008E31BA: push 00000002h
008E31BC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E31C1: add esp, 0000000Ch
008E31C4: jmp 008E2E9Bh
008E31C9: mov var_04, 0000000Bh
008E31D0: lea eax, var_000000C8
008E31D6: push eax
008E31D7: lea eax, var_000000B8
008E31DD: push eax
008E31DE: lea eax, var_30
008E31E1: push eax
008E31E2: call 00410A36h ; Next
008E31E7: mov var_000000E4, eax
008E31ED: cmp var_000000E4, 00000000h
008E31F4: jnz 008E2FB3h
008E31FA: mov var_04, 0000000Ch
008E3201: and [008F23B8h], 00000000h
008E3208: mov var_04, 0000000Dh
008E320F: fldz 
008E3211: fstp real8 ptr [008F23BCh]
008E3217: mov var_04, 0000000Eh
008E321E: fldz 
008E3220: fstp real8 ptr [008F23ACh]
008E3226: mov var_10, 00000000h
008E322D: wait 
008E322E: push 008E3287h
008E3233: jmp 8E3266h
008E3235: lea ecx, var_34
008E3238: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008E323D: lea eax, var_40
008E3240: push eax
008E3241: lea eax, var_3C
008E3244: push eax
008E3245: lea eax, var_38
008E3248: push eax
008E3249: push 00000003h
008E324B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E3250: add esp, 00000010h
008E3253: lea eax, var_60
008E3256: push eax
008E3257: lea eax, var_50
008E325A: push eax
008E325B: push 00000002h
008E325D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E3262: add esp, 0000000Ch
008E3265: ret 
End Sub

