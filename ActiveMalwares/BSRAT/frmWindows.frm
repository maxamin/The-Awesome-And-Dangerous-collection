VERSION 5.00
Begin VB.Form frmWindows
  Caption = "Window manager"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmWindows.frx":0
  LinkTopic = "Form1"
  ClientLeft = 225
  ClientTop = 255
  ClientWidth = 13710
  ClientHeight = 6645
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer Timer1
    Interval = 1000
    Left = 10680
    Top = 0
  End
  Begin MSComctlLib.ListView lstWnds
    Left = 0
    Top = 0
    Width = 13695
    Height = 6615
    TabIndex = 0
  End
  Begin VB.Menu mnuWindowsMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuWindows
      Index = 0
      Caption = "Refresh"
    End
    Begin VB.Menu mnuWindows
      Index = 1
      Caption = "-"
    End
    Begin VB.Menu mnuWindows
      Index = 2
      Caption = "Minimize"
    End
    Begin VB.Menu mnuWindows
      Index = 3
      Caption = "Maximize"
    End
    Begin VB.Menu mnuWindows
      Index = 4
      Caption = "Restore"
    End
    Begin VB.Menu mnuWindows
      Index = 5
      Caption = "Hide"
    End
    Begin VB.Menu mnuWindows
      Index = 6
      Caption = "Show"
    End
    Begin VB.Menu mnuWindows
      Index = 7
      Caption = "Close"
    End
    Begin VB.Menu mnuWindows
      Index = 8
      Caption = "-"
    End
    Begin VB.Menu mnuWindows
      Index = 9
      Caption = "Screen capture"
    End
    Begin VB.Menu mnuWindows
      Index = 10
      Caption = "Send keys"
    End
  End
End

Attribute VB_Name = "frmWindows"


Private sub Form__8A5162
008A5162: push ebp
008A5163: mov ebp, esp
008A5165: sub esp, 00000018h
008A5168: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008A516D: mov eax, fs:[00h]
008A5173: push eax
008A5174: mov fs:[00000000h], esp
008A517B: mov eax, 000000B0h
008A5180: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A5185: push ebx
008A5186: push esi
008A5187: push edi
008A5188: mov var_18, esp
008A518B: mov var_14, 0040E4F8h
008A5192: mov eax, [ebp+08h]
008A5195: and eax, 00000001h
008A5198: mov var_10, eax
008A519B: mov eax, [ebp+08h]
008A519E: and al, FEh
008A51A0: mov [ebp+08h], eax
008A51A3: mov var_0C, 00000000h
008A51AA: mov eax, [ebp+08h]
008A51AD: mov eax, [eax]
008A51AF: push [ebp+08h]
008A51B2: call [eax+04h]
008A51B5: mov var_04, 00000001h
008A51BC: mov var_04, 00000002h
008A51C3: push FFFFFFFFh
008A51C5: call 00410A60h ; On Error ...
008A51CA: mov var_04, 00000003h
008A51D1: fldz 
008A51D3: fstp real4 ptr var_2C
008A51D6: mov var_34, 00000004h
008A51DD: and var_4C, 00000000h
008A51E1: mov var_54, 00000002h
008A51E8: lea eax, var_000000A8
008A51EE: push eax
008A51EF: mov eax, [ebp+08h]
008A51F2: mov eax, [eax]
008A51F4: push [ebp+08h]
008A51F7: call [eax+00000080h]
008A51FD: fclex 
008A51FF: mov var_000000B0, eax
008A5205: cmp var_000000B0, 00000000h
008A520C: jnl 8A522Eh
008A520E: push 00000080h
008A5213: push 00449324h
008A5218: push [ebp+08h]
008A521B: push var_000000B0
008A5221: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A5226: mov var_000000CC, eax
008A522C: jmp 8A5235h
008A522E: and var_000000CC, 00000000h
008A5235: fld real4 ptr var_000000A8
008A523B: fsub real4 ptr [00402BB0h]
008A5241: fstp real4 ptr var_6C
008A5244: fstsw ax
008A5246: test al, 0Dh
008A5248: jnz 008A5377h
008A524E: mov var_74, 00000004h
008A5255: lea eax, var_000000AC
008A525B: push eax
008A525C: mov eax, [ebp+08h]
008A525F: mov eax, [eax]
008A5261: push [ebp+08h]
008A5264: call [eax+00000088h]
008A526A: fclex 
008A526C: mov var_000000B4, eax
008A5272: cmp var_000000B4, 00000000h
008A5279: jnl 8A529Bh
008A527B: push 00000088h
008A5280: push 00449324h
008A5285: push [ebp+08h]
008A5288: push var_000000B4
008A528E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A5293: mov var_000000D0, eax
008A5299: jmp 8A52A2h
008A529B: and var_000000D0, 00000000h
008A52A2: fld real4 ptr var_000000AC
008A52A8: fsub real4 ptr [00402B54h]
008A52AE: fstp real4 ptr var_0000008C
008A52B4: fstsw ax
008A52B6: test al, 0Dh
008A52B8: jnz 008A5377h
008A52BE: mov var_00000094, 00000004h
008A52C8: push 00000010h
008A52CA: pop eax
008A52CB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A52D0: lea esi, var_34
008A52D3: mov edi, esp
008A52D5: movsd 
008A52D6: movsd 
008A52D7: movsd 
008A52D8: movsd 
008A52D9: push 00000010h
008A52DB: pop eax
008A52DC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A52E1: lea esi, var_54
008A52E4: mov edi, esp
008A52E6: movsd 
008A52E7: movsd 
008A52E8: movsd 
008A52E9: movsd 
008A52EA: push 00000010h
008A52EC: pop eax
008A52ED: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A52F2: lea esi, var_74
008A52F5: mov edi, esp
008A52F7: movsd 
008A52F8: movsd 
008A52F9: movsd 
008A52FA: movsd 
008A52FB: push 00000010h
008A52FD: pop eax
008A52FE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A5303: lea esi, var_00000094
008A5309: mov edi, esp
008A530B: movsd 
008A530C: movsd 
008A530D: movsd 
008A530E: movsd 
008A530F: push 00000004h
008A5311: push 80011002h
008A5316: mov eax, [ebp+08h]
008A5319: mov eax, [eax]
008A531B: push [ebp+08h]
008A531E: call [eax+00000308h]
008A5324: push eax
008A5325: lea eax, var_24
008A5328: push eax
008A5329: call 00410A84h ; Set (object)
008A532E: push eax
008A532F: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008A5334: add esp, 0000004Ch
008A5337: lea ecx, var_24
008A533A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008A533F: mov var_10, 00000000h
008A5346: wait 
008A5347: push 008A5358h
008A534C: jmp 8A5357h
008A534E: lea ecx, var_24
008A5351: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008A5356: ret 
End Sub

Private sub mnuWindows__8A5B32
008A5B32: push ebp
008A5B33: mov ebp, esp
008A5B35: sub esp, 00000014h
008A5B38: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008A5B3D: mov eax, fs:[00h]
008A5B43: push eax
008A5B44: mov fs:[00000000h], esp
008A5B4B: mov eax, 00000264h
008A5B50: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A5B55: push ebx
008A5B56: push esi
008A5B57: push edi
008A5B58: mov var_14, esp
008A5B5B: mov var_10, 0040E5C0h
008A5B62: mov eax, [ebp+08h]
008A5B65: and eax, 00000001h
008A5B68: mov var_0C, eax
008A5B6B: mov eax, [ebp+08h]
008A5B6E: and al, FEh
008A5B70: mov [ebp+08h], eax
008A5B73: mov var_08, 00000000h
008A5B7A: mov eax, [ebp+08h]
008A5B7D: mov eax, [eax]
008A5B7F: push [ebp+08h]
008A5B82: call [eax+04h]
008A5B85: push 00000001h
008A5B87: call 00410A60h ; On Error ...
008A5B8C: mov eax, [ebp+0Ch]
008A5B8F: mov ax, [eax]
008A5B92: mov var_00000178, ax
008A5B99: movsx eax, word ptr var_00000178
008A5BA0: mov var_0000018C, eax
008A5BA6: cmp var_0000018C, 0000000Ah
008A5BAD: jnbe 008A7B2Bh
008A5BB3: mov eax, var_0000018C
008A5BB9: jmp [eax*4+008A7C02h]
008A5BC0: lea eax, var_24
008A5BC3: push eax
008A5BC4: mov eax, [ebp+08h]
008A5BC7: mov eax, [eax]
008A5BC9: push [ebp+08h]
008A5BCC: call [eax+000001C0h]
008A5BD2: fclex 
008A5BD4: mov var_00000160, eax
008A5BDA: cmp var_00000160, 00000000h
008A5BE1: jnl 8A5C03h
008A5BE3: push 000001C0h
008A5BE8: push 00449324h
008A5BED: push [ebp+08h]
008A5BF0: push var_00000160
008A5BF6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A5BFB: mov var_00000190, eax
008A5C01: jmp 8A5C0Ah
008A5C03: and var_00000190, 00000000h
008A5C0A: push var_24
008A5C0D: call 004109DCh ; Val(arg_1)
008A5C12: fstp real8 ptr var_0000015C
008A5C18: push 00000000h
008A5C1A: push 00000000h
008A5C1C: push 00000001h
008A5C1E: push 00000000h
008A5C20: lea eax, var_000000E4
008A5C26: push eax
008A5C27: push 00000010h
008A5C29: push 00000880h
008A5C2E: call 00410946h ; ReDim
008A5C33: add esp, 0000001Ch
008A5C36: mov var_000000EC, 00442930h
008A5C40: mov var_000000F4, 00000008h
008A5C4A: lea esi, var_000000F4
008A5C50: push 00000000h
008A5C52: push var_000000E4
008A5C58: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A5C5D: mov ecx, eax
008A5C5F: mov edx, esi
008A5C61: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008A5C66: mov edx, 0043D924h ; x106
008A5C6B: lea ecx, var_28
008A5C6E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008A5C73: lea eax, var_000000E4
008A5C79: push eax
008A5C7A: lea eax, var_28
008A5C7D: push eax
008A5C7E: fld real8 ptr var_0000015C
008A5C84: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008A5C89: push eax
008A5C8A: call 007A6910h
008A5C8F: lea eax, var_000000E4
008A5C95: push eax
008A5C96: push 00000000h
008A5C98: call 00410934h ; Erase
008A5C9D: lea eax, var_28
008A5CA0: push eax
008A5CA1: lea eax, var_24
008A5CA4: push eax
008A5CA5: push 00000002h
008A5CA7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A5CAC: add esp, 0000000Ch
008A5CAF: jmp 008A7B2Bh
008A5CB4: lea eax, var_24
008A5CB7: push eax
008A5CB8: mov eax, [ebp+08h]
008A5CBB: mov eax, [eax]
008A5CBD: push [ebp+08h]
008A5CC0: call [eax+000001C0h]
008A5CC6: fclex 
008A5CC8: mov var_00000160, eax
008A5CCE: cmp var_00000160, 00000000h
008A5CD5: jnl 8A5CF7h
008A5CD7: push 000001C0h
008A5CDC: push 00449324h
008A5CE1: push [ebp+08h]
008A5CE4: push var_00000160
008A5CEA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A5CEF: mov var_00000194, eax
008A5CF5: jmp 8A5CFEh
008A5CF7: and var_00000194, 00000000h
008A5CFE: push var_24
008A5D01: call 004109DCh ; Val(arg_1)
008A5D06: fstp real8 ptr var_0000015C
008A5D0C: push 00000000h
008A5D0E: push 00000001h
008A5D10: push 00000001h
008A5D12: push 00000000h
008A5D14: lea eax, var_000000E4
008A5D1A: push eax
008A5D1B: push 00000010h
008A5D1D: push 00000880h
008A5D22: call 00410946h ; ReDim
008A5D27: add esp, 0000001Ch
008A5D2A: mov var_000000EC, 00442938h
008A5D34: mov var_000000F4, 00000008h
008A5D3E: lea esi, var_000000F4
008A5D44: push 00000000h
008A5D46: push var_000000E4
008A5D4C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A5D51: mov ecx, eax
008A5D53: mov edx, esi
008A5D55: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008A5D5A: push 004412DCh
008A5D5F: push 00000000h
008A5D61: push 0000000Dh
008A5D63: mov eax, [ebp+08h]
008A5D66: mov eax, [eax]
008A5D68: push [ebp+08h]
008A5D6B: call [eax+00000308h]
008A5D71: push eax
008A5D72: lea eax, var_4C
008A5D75: push eax
008A5D76: call 00410A84h ; Set (object)
008A5D7B: push eax
008A5D7C: lea eax, var_70
008A5D7F: push eax
008A5D80: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A5D85: add esp, 00000010h
008A5D88: push eax
008A5D89: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A5D8E: push eax
008A5D8F: lea eax, var_50
008A5D92: push eax
008A5D93: call 00410A84h ; Set (object)
008A5D98: mov var_00000164, eax
008A5D9E: lea eax, var_28
008A5DA1: push eax
008A5DA2: mov eax, var_00000164
008A5DA8: mov eax, [eax]
008A5DAA: push var_00000164
008A5DB0: call [eax+24h]
008A5DB3: fclex 
008A5DB5: mov var_00000168, eax
008A5DBB: cmp var_00000168, 00000000h
008A5DC2: jnl 8A5DE4h
008A5DC4: push 00000024h
008A5DC6: push 004412DCh
008A5DCB: push var_00000164
008A5DD1: push var_00000168
008A5DD7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A5DDC: mov var_00000198, eax
008A5DE2: jmp 8A5DEBh
008A5DE4: and var_00000198, 00000000h
008A5DEB: push var_28
008A5DEE: call 004109DCh ; Val(arg_1)
008A5DF3: fstp real8 ptr var_000000FC
008A5DF9: mov var_00000104, 00000005h
008A5E03: lea esi, var_00000104
008A5E09: push 00000001h
008A5E0B: push var_000000E4
008A5E11: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A5E16: mov ecx, eax
008A5E18: mov edx, esi
008A5E1A: call 00410922h ; msvbvm60.dll.__vbaVarMove
008A5E1F: mov edx, 0043D924h ; x106
008A5E24: lea ecx, var_2C
008A5E27: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008A5E2C: lea eax, var_000000E4
008A5E32: push eax
008A5E33: lea eax, var_2C
008A5E36: push eax
008A5E37: fld real8 ptr var_0000015C
008A5E3D: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008A5E42: push eax
008A5E43: call 007A6910h
008A5E48: lea eax, var_000000E4
008A5E4E: push eax
008A5E4F: push 00000000h
008A5E51: call 00410934h ; Erase
008A5E56: lea eax, var_2C
008A5E59: push eax
008A5E5A: lea eax, var_28
008A5E5D: push eax
008A5E5E: lea eax, var_24
008A5E61: push eax
008A5E62: push 00000003h
008A5E64: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A5E69: add esp, 00000010h
008A5E6C: lea eax, var_50
008A5E6F: push eax
008A5E70: lea eax, var_4C
008A5E73: push eax
008A5E74: push 00000002h
008A5E76: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A5E7B: add esp, 0000000Ch
008A5E7E: lea ecx, var_70
008A5E81: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A5E86: jmp 008A7B2Bh
008A5E8B: lea eax, var_24
008A5E8E: push eax
008A5E8F: mov eax, [ebp+08h]
008A5E92: mov eax, [eax]
008A5E94: push [ebp+08h]
008A5E97: call [eax+000001C0h]
008A5E9D: fclex 
008A5E9F: mov var_00000160, eax
008A5EA5: cmp var_00000160, 00000000h
008A5EAC: jnl 8A5ECEh
008A5EAE: push 000001C0h
008A5EB3: push 00449324h
008A5EB8: push [ebp+08h]
008A5EBB: push var_00000160
008A5EC1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A5EC6: mov var_0000019C, eax
008A5ECC: jmp 8A5ED5h
008A5ECE: and var_0000019C, 00000000h
008A5ED5: push var_24
008A5ED8: call 004109DCh ; Val(arg_1)
008A5EDD: fstp real8 ptr var_0000015C
008A5EE3: push 00000000h
008A5EE5: push 00000001h
008A5EE7: push 00000001h
008A5EE9: push 00000000h
008A5EEB: lea eax, var_000000E4
008A5EF1: push eax
008A5EF2: push 00000010h
008A5EF4: push 00000880h
008A5EF9: call 00410946h ; ReDim
008A5EFE: add esp, 0000001Ch
008A5F01: mov var_000000EC, 00447594h
008A5F0B: mov var_000000F4, 00000008h
008A5F15: lea esi, var_000000F4
008A5F1B: push 00000000h
008A5F1D: push var_000000E4
008A5F23: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A5F28: mov ecx, eax
008A5F2A: mov edx, esi
008A5F2C: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008A5F31: push 004412DCh
008A5F36: push 00000000h
008A5F38: push 0000000Dh
008A5F3A: mov eax, [ebp+08h]
008A5F3D: mov eax, [eax]
008A5F3F: push [ebp+08h]
008A5F42: call [eax+00000308h]
008A5F48: push eax
008A5F49: lea eax, var_4C
008A5F4C: push eax
008A5F4D: call 00410A84h ; Set (object)
008A5F52: push eax
008A5F53: lea eax, var_70
008A5F56: push eax
008A5F57: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A5F5C: add esp, 00000010h
008A5F5F: push eax
008A5F60: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A5F65: push eax
008A5F66: lea eax, var_50
008A5F69: push eax
008A5F6A: call 00410A84h ; Set (object)
008A5F6F: mov var_00000164, eax
008A5F75: lea eax, var_28
008A5F78: push eax
008A5F79: mov eax, var_00000164
008A5F7F: mov eax, [eax]
008A5F81: push var_00000164
008A5F87: call [eax+24h]
008A5F8A: fclex 
008A5F8C: mov var_00000168, eax
008A5F92: cmp var_00000168, 00000000h
008A5F99: jnl 8A5FBBh
008A5F9B: push 00000024h
008A5F9D: push 004412DCh
008A5FA2: push var_00000164
008A5FA8: push var_00000168
008A5FAE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A5FB3: mov var_000001A0, eax
008A5FB9: jmp 8A5FC2h
008A5FBB: and var_000001A0, 00000000h
008A5FC2: push var_28
008A5FC5: call 004109DCh ; Val(arg_1)
008A5FCA: fstp real8 ptr var_000000FC
008A5FD0: mov var_00000104, 00000005h
008A5FDA: lea esi, var_00000104
008A5FE0: push 00000001h
008A5FE2: push var_000000E4
008A5FE8: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A5FED: mov ecx, eax
008A5FEF: mov edx, esi
008A5FF1: call 00410922h ; msvbvm60.dll.__vbaVarMove
008A5FF6: mov edx, 0043D924h ; x106
008A5FFB: lea ecx, var_2C
008A5FFE: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008A6003: lea eax, var_000000E4
008A6009: push eax
008A600A: lea eax, var_2C
008A600D: push eax
008A600E: fld real8 ptr var_0000015C
008A6014: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008A6019: push eax
008A601A: call 007A6910h
008A601F: lea eax, var_000000E4
008A6025: push eax
008A6026: push 00000000h
008A6028: call 00410934h ; Erase
008A602D: lea eax, var_2C
008A6030: push eax
008A6031: lea eax, var_28
008A6034: push eax
008A6035: lea eax, var_24
008A6038: push eax
008A6039: push 00000003h
008A603B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A6040: add esp, 00000010h
008A6043: lea eax, var_50
008A6046: push eax
008A6047: lea eax, var_4C
008A604A: push eax
008A604B: push 00000002h
008A604D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A6052: add esp, 0000000Ch
008A6055: lea ecx, var_70
008A6058: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A605D: jmp 008A7B2Bh
008A6062: lea eax, var_24
008A6065: push eax
008A6066: mov eax, [ebp+08h]
008A6069: mov eax, [eax]
008A606B: push [ebp+08h]
008A606E: call [eax+000001C0h]
008A6074: fclex 
008A6076: mov var_00000160, eax
008A607C: cmp var_00000160, 00000000h
008A6083: jnl 8A60A5h
008A6085: push 000001C0h
008A608A: push 00449324h
008A608F: push [ebp+08h]
008A6092: push var_00000160
008A6098: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A609D: mov var_000001A4, eax
008A60A3: jmp 8A60ACh
008A60A5: and var_000001A4, 00000000h
008A60AC: push var_24
008A60AF: call 004109DCh ; Val(arg_1)
008A60B4: fstp real8 ptr var_0000015C
008A60BA: push 00000000h
008A60BC: push 00000001h
008A60BE: push 00000001h
008A60C0: push 00000000h
008A60C2: lea eax, var_000000E4
008A60C8: push eax
008A60C9: push 00000010h
008A60CB: push 00000880h
008A60D0: call 00410946h ; ReDim
008A60D5: add esp, 0000001Ch
008A60D8: mov var_000000EC, 0044759Ch
008A60E2: mov var_000000F4, 00000008h
008A60EC: lea esi, var_000000F4
008A60F2: push 00000000h
008A60F4: push var_000000E4
008A60FA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A60FF: mov ecx, eax
008A6101: mov edx, esi
008A6103: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008A6108: push 004412DCh
008A610D: push 00000000h
008A610F: push 0000000Dh
008A6111: mov eax, [ebp+08h]
008A6114: mov eax, [eax]
008A6116: push [ebp+08h]
008A6119: call [eax+00000308h]
008A611F: push eax
008A6120: lea eax, var_4C
008A6123: push eax
008A6124: call 00410A84h ; Set (object)
008A6129: push eax
008A612A: lea eax, var_70
008A612D: push eax
008A612E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A6133: add esp, 00000010h
008A6136: push eax
008A6137: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A613C: push eax
008A613D: lea eax, var_50
008A6140: push eax
008A6141: call 00410A84h ; Set (object)
008A6146: mov var_00000164, eax
008A614C: lea eax, var_28
008A614F: push eax
008A6150: mov eax, var_00000164
008A6156: mov eax, [eax]
008A6158: push var_00000164
008A615E: call [eax+24h]
008A6161: fclex 
008A6163: mov var_00000168, eax
008A6169: cmp var_00000168, 00000000h
008A6170: jnl 8A6192h
008A6172: push 00000024h
008A6174: push 004412DCh
008A6179: push var_00000164
008A617F: push var_00000168
008A6185: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A618A: mov var_000001A8, eax
008A6190: jmp 8A6199h
008A6192: and var_000001A8, 00000000h
008A6199: push var_28
008A619C: call 004109DCh ; Val(arg_1)
008A61A1: fstp real8 ptr var_000000FC
008A61A7: mov var_00000104, 00000005h
008A61B1: lea esi, var_00000104
008A61B7: push 00000001h
008A61B9: push var_000000E4
008A61BF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A61C4: mov ecx, eax
008A61C6: mov edx, esi
008A61C8: call 00410922h ; msvbvm60.dll.__vbaVarMove
008A61CD: mov edx, 0043D924h ; x106
008A61D2: lea ecx, var_2C
008A61D5: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008A61DA: lea eax, var_000000E4
008A61E0: push eax
008A61E1: lea eax, var_2C
008A61E4: push eax
008A61E5: fld real8 ptr var_0000015C
008A61EB: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008A61F0: push eax
008A61F1: call 007A6910h
008A61F6: lea eax, var_000000E4
008A61FC: push eax
008A61FD: push 00000000h
008A61FF: call 00410934h ; Erase
008A6204: lea eax, var_2C
008A6207: push eax
008A6208: lea eax, var_28
008A620B: push eax
008A620C: lea eax, var_24
008A620F: push eax
008A6210: push 00000003h
008A6212: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A6217: add esp, 00000010h
008A621A: lea eax, var_50
008A621D: push eax
008A621E: lea eax, var_4C
008A6221: push eax
008A6222: push 00000002h
008A6224: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A6229: add esp, 0000000Ch
008A622C: lea ecx, var_70
008A622F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A6234: jmp 008A7B2Bh
008A6239: lea eax, var_24
008A623C: push eax
008A623D: mov eax, [ebp+08h]
008A6240: mov eax, [eax]
008A6242: push [ebp+08h]
008A6245: call [eax+000001C0h]
008A624B: fclex 
008A624D: mov var_00000160, eax
008A6253: cmp var_00000160, 00000000h
008A625A: jnl 8A627Ch
008A625C: push 000001C0h
008A6261: push 00449324h
008A6266: push [ebp+08h]
008A6269: push var_00000160
008A626F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A6274: mov var_000001AC, eax
008A627A: jmp 8A6283h
008A627C: and var_000001AC, 00000000h
008A6283: push var_24
008A6286: call 004109DCh ; Val(arg_1)
008A628B: fstp real8 ptr var_0000015C
008A6291: push 00000000h
008A6293: push 00000001h
008A6295: push 00000001h
008A6297: push 00000000h
008A6299: lea eax, var_000000E4
008A629F: push eax
008A62A0: push 00000010h
008A62A2: push 00000880h
008A62A7: call 00410946h ; ReDim
008A62AC: add esp, 0000001Ch
008A62AF: mov var_000000EC, 004475A4h
008A62B9: mov var_000000F4, 00000008h
008A62C3: lea esi, var_000000F4
008A62C9: push 00000000h
008A62CB: push var_000000E4
008A62D1: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A62D6: mov ecx, eax
008A62D8: mov edx, esi
008A62DA: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008A62DF: push 004412DCh
008A62E4: push 00000000h
008A62E6: push 0000000Dh
008A62E8: mov eax, [ebp+08h]
008A62EB: mov eax, [eax]
008A62ED: push [ebp+08h]
008A62F0: call [eax+00000308h]
008A62F6: push eax
008A62F7: lea eax, var_4C
008A62FA: push eax
008A62FB: call 00410A84h ; Set (object)
008A6300: push eax
008A6301: lea eax, var_70
008A6304: push eax
008A6305: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A630A: add esp, 00000010h
008A630D: push eax
008A630E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A6313: push eax
008A6314: lea eax, var_50
008A6317: push eax
008A6318: call 00410A84h ; Set (object)
008A631D: mov var_00000164, eax
008A6323: lea eax, var_28
008A6326: push eax
008A6327: mov eax, var_00000164
008A632D: mov eax, [eax]
008A632F: push var_00000164
008A6335: call [eax+24h]
008A6338: fclex 
008A633A: mov var_00000168, eax
008A6340: cmp var_00000168, 00000000h
008A6347: jnl 8A6369h
008A6349: push 00000024h
008A634B: push 004412DCh
008A6350: push var_00000164
008A6356: push var_00000168
008A635C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A6361: mov var_000001B0, eax
008A6367: jmp 8A6370h
008A6369: and var_000001B0, 00000000h
008A6370: push var_28
008A6373: call 004109DCh ; Val(arg_1)
008A6378: fstp real8 ptr var_000000FC
008A637E: mov var_00000104, 00000005h
008A6388: lea esi, var_00000104
008A638E: push 00000001h
008A6390: push var_000000E4
008A6396: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A639B: mov ecx, eax
008A639D: mov edx, esi
008A639F: call 00410922h ; msvbvm60.dll.__vbaVarMove
008A63A4: mov edx, 0043D924h ; x106
008A63A9: lea ecx, var_2C
008A63AC: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008A63B1: lea eax, var_000000E4
008A63B7: push eax
008A63B8: lea eax, var_2C
008A63BB: push eax
008A63BC: fld real8 ptr var_0000015C
008A63C2: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008A63C7: push eax
008A63C8: call 007A6910h
008A63CD: lea eax, var_000000E4
008A63D3: push eax
008A63D4: push 00000000h
008A63D6: call 00410934h ; Erase
008A63DB: lea eax, var_2C
008A63DE: push eax
008A63DF: lea eax, var_28
008A63E2: push eax
008A63E3: lea eax, var_24
008A63E6: push eax
008A63E7: push 00000003h
008A63E9: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A63EE: add esp, 00000010h
008A63F1: lea eax, var_50
008A63F4: push eax
008A63F5: lea eax, var_4C
008A63F8: push eax
008A63F9: push 00000002h
008A63FB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A6400: add esp, 0000000Ch
008A6403: lea ecx, var_70
008A6406: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A640B: jmp 008A7B2Bh
008A6410: lea eax, var_24
008A6413: push eax
008A6414: mov eax, [ebp+08h]
008A6417: mov eax, [eax]
008A6419: push [ebp+08h]
008A641C: call [eax+000001C0h]
008A6422: fclex 
008A6424: mov var_00000160, eax
008A642A: cmp var_00000160, 00000000h
008A6431: jnl 8A6453h
008A6433: push 000001C0h
008A6438: push 00449324h
008A643D: push [ebp+08h]
008A6440: push var_00000160
008A6446: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A644B: mov var_000001B4, eax
008A6451: jmp 8A645Ah
008A6453: and var_000001B4, 00000000h
008A645A: push var_24
008A645D: call 004109DCh ; Val(arg_1)
008A6462: fstp real8 ptr var_0000015C
008A6468: push 00000000h
008A646A: push 00000001h
008A646C: push 00000001h
008A646E: push 00000000h
008A6470: lea eax, var_000000E4
008A6476: push eax
008A6477: push 00000010h
008A6479: push 00000880h
008A647E: call 00410946h ; ReDim
008A6483: add esp, 0000001Ch
008A6486: mov var_000000EC, 004475ACh
008A6490: mov var_000000F4, 00000008h
008A649A: lea esi, var_000000F4
008A64A0: push 00000000h
008A64A2: push var_000000E4
008A64A8: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A64AD: mov ecx, eax
008A64AF: mov edx, esi
008A64B1: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008A64B6: push 004412DCh
008A64BB: push 00000000h
008A64BD: push 0000000Dh
008A64BF: mov eax, [ebp+08h]
008A64C2: mov eax, [eax]
008A64C4: push [ebp+08h]
008A64C7: call [eax+00000308h]
008A64CD: push eax
008A64CE: lea eax, var_4C
008A64D1: push eax
008A64D2: call 00410A84h ; Set (object)
008A64D7: push eax
008A64D8: lea eax, var_70
008A64DB: push eax
008A64DC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A64E1: add esp, 00000010h
008A64E4: push eax
008A64E5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A64EA: push eax
008A64EB: lea eax, var_50
008A64EE: push eax
008A64EF: call 00410A84h ; Set (object)
008A64F4: mov var_00000164, eax
008A64FA: lea eax, var_28
008A64FD: push eax
008A64FE: mov eax, var_00000164
008A6504: mov eax, [eax]
008A6506: push var_00000164
008A650C: call [eax+24h]
008A650F: fclex 
008A6511: mov var_00000168, eax
008A6517: cmp var_00000168, 00000000h
008A651E: jnl 8A6540h
008A6520: push 00000024h
008A6522: push 004412DCh
008A6527: push var_00000164
008A652D: push var_00000168
008A6533: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A6538: mov var_000001B8, eax
008A653E: jmp 8A6547h
008A6540: and var_000001B8, 00000000h
008A6547: push var_28
008A654A: call 004109DCh ; Val(arg_1)
008A654F: fstp real8 ptr var_000000FC
008A6555: mov var_00000104, 00000005h
008A655F: lea esi, var_00000104
008A6565: push 00000001h
008A6567: push var_000000E4
008A656D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A6572: mov ecx, eax
008A6574: mov edx, esi
008A6576: call 00410922h ; msvbvm60.dll.__vbaVarMove
008A657B: mov edx, 0043D924h ; x106
008A6580: lea ecx, var_2C
008A6583: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008A6588: lea eax, var_000000E4
008A658E: push eax
008A658F: lea eax, var_2C
008A6592: push eax
008A6593: fld real8 ptr var_0000015C
008A6599: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008A659E: push eax
008A659F: call 007A6910h
008A65A4: lea eax, var_000000E4
008A65AA: push eax
008A65AB: push 00000000h
008A65AD: call 00410934h ; Erase
008A65B2: lea eax, var_2C
008A65B5: push eax
008A65B6: lea eax, var_28
008A65B9: push eax
008A65BA: lea eax, var_24
008A65BD: push eax
008A65BE: push 00000003h
008A65C0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A65C5: add esp, 00000010h
008A65C8: lea eax, var_50
008A65CB: push eax
008A65CC: lea eax, var_4C
008A65CF: push eax
008A65D0: push 00000002h
008A65D2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A65D7: add esp, 0000000Ch
008A65DA: lea ecx, var_70
008A65DD: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A65E2: jmp 008A7B2Bh
008A65E7: lea eax, var_24
008A65EA: push eax
008A65EB: mov eax, [ebp+08h]
008A65EE: mov eax, [eax]
008A65F0: push [ebp+08h]
008A65F3: call [eax+000001C0h]
008A65F9: fclex 
008A65FB: mov var_00000160, eax
008A6601: cmp var_00000160, 00000000h
008A6608: jnl 8A662Ah
008A660A: push 000001C0h
008A660F: push 00449324h
008A6614: push [ebp+08h]
008A6617: push var_00000160
008A661D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A6622: mov var_000001BC, eax
008A6628: jmp 8A6631h
008A662A: and var_000001BC, 00000000h
008A6631: push var_24
008A6634: call 004109DCh ; Val(arg_1)
008A6639: fstp real8 ptr var_0000015C
008A663F: push 00000000h
008A6641: push 00000001h
008A6643: push 00000001h
008A6645: push 00000000h
008A6647: lea eax, var_000000E4
008A664D: push eax
008A664E: push 00000010h
008A6650: push 00000880h
008A6655: call 00410946h ; ReDim
008A665A: add esp, 0000001Ch
008A665D: mov var_000000EC, 0044738Ch
008A6667: mov var_000000F4, 00000008h
008A6671: lea esi, var_000000F4
008A6677: push 00000000h
008A6679: push var_000000E4
008A667F: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A6684: mov ecx, eax
008A6686: mov edx, esi
008A6688: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008A668D: push 004412DCh
008A6692: push 00000000h
008A6694: push 0000000Dh
008A6696: mov eax, [ebp+08h]
008A6699: mov eax, [eax]
008A669B: push [ebp+08h]
008A669E: call [eax+00000308h]
008A66A4: push eax
008A66A5: lea eax, var_4C
008A66A8: push eax
008A66A9: call 00410A84h ; Set (object)
008A66AE: push eax
008A66AF: lea eax, var_70
008A66B2: push eax
008A66B3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A66B8: add esp, 00000010h
008A66BB: push eax
008A66BC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A66C1: push eax
008A66C2: lea eax, var_50
008A66C5: push eax
008A66C6: call 00410A84h ; Set (object)
008A66CB: mov var_00000164, eax
008A66D1: lea eax, var_28
008A66D4: push eax
008A66D5: mov eax, var_00000164
008A66DB: mov eax, [eax]
008A66DD: push var_00000164
008A66E3: call [eax+24h]
008A66E6: fclex 
008A66E8: mov var_00000168, eax
008A66EE: cmp var_00000168, 00000000h
008A66F5: jnl 8A6717h
008A66F7: push 00000024h
008A66F9: push 004412DCh
008A66FE: push var_00000164
008A6704: push var_00000168
008A670A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A670F: mov var_000001C0, eax
008A6715: jmp 8A671Eh
008A6717: and var_000001C0, 00000000h
008A671E: push var_28
008A6721: call 004109DCh ; Val(arg_1)
008A6726: fstp real8 ptr var_000000FC
008A672C: mov var_00000104, 00000005h
008A6736: lea esi, var_00000104
008A673C: push 00000001h
008A673E: push var_000000E4
008A6744: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A6749: mov ecx, eax
008A674B: mov edx, esi
008A674D: call 00410922h ; msvbvm60.dll.__vbaVarMove
008A6752: mov edx, 0043D924h ; x106
008A6757: lea ecx, var_2C
008A675A: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008A675F: lea eax, var_000000E4
008A6765: push eax
008A6766: lea eax, var_2C
008A6769: push eax
008A676A: fld real8 ptr var_0000015C
008A6770: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008A6775: push eax
008A6776: call 007A6910h
008A677B: lea eax, var_000000E4
008A6781: push eax
008A6782: push 00000000h
008A6784: call 00410934h ; Erase
008A6789: lea eax, var_2C
008A678C: push eax
008A678D: lea eax, var_28
008A6790: push eax
008A6791: lea eax, var_24
008A6794: push eax
008A6795: push 00000003h
008A6797: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A679C: add esp, 00000010h
008A679F: lea eax, var_50
008A67A2: push eax
008A67A3: lea eax, var_4C
008A67A6: push eax
008A67A7: push 00000002h
008A67A9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A67AE: add esp, 0000000Ch
008A67B1: lea ecx, var_70
008A67B4: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A67B9: jmp 008A7B2Bh
008A67BE: lea eax, var_28
008A67C1: push eax
008A67C2: mov eax, [ebp+08h]
008A67C5: mov eax, [eax]
008A67C7: push [ebp+08h]
008A67CA: call [eax+000001C0h]
008A67D0: fclex 
008A67D2: mov var_00000164, eax
008A67D8: cmp var_00000164, 00000000h
008A67DF: jnl 8A6801h
008A67E1: push 000001C0h
008A67E6: push 00449324h
008A67EB: push [ebp+08h]
008A67EE: push var_00000164
008A67F4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A67F9: mov var_000001C4, eax
008A67FF: jmp 8A6808h
008A6801: and var_000001C4, 00000000h
008A6808: push var_28
008A680B: call 004109DCh ; Val(arg_1)
008A6810: call 00410814h ; msvbvm60.dll.__vbaFpI4
008A6815: dec eax
008A6816: mov var_00000168, eax
008A681C: cmp var_00000168, 0000FF4Bh
008A6826: jnb 8A6831h
008A6828: and var_000001C8, 00000000h
008A682F: jmp 8A683Ch
008A6831: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008A6836: mov var_000001C8, eax
008A683C: mov eax, var_00000168
008A6842: mov ecx, [008F21E4h]
008A6848: cmp [ecx+eax*4], 00000000h
008A684C: jnz 008A6982h
008A6852: lea eax, var_28
008A6855: push eax
008A6856: mov eax, [ebp+08h]
008A6859: mov eax, [eax]
008A685B: push [ebp+08h]
008A685E: call [eax+000001C0h]
008A6864: fclex 
008A6866: mov var_00000164, eax
008A686C: cmp var_00000164, 00000000h
008A6873: jnl 8A6895h
008A6875: push 000001C0h
008A687A: push 00449324h
008A687F: push [ebp+08h]
008A6882: push var_00000164
008A6888: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A688D: mov var_000001CC, eax
008A6893: jmp 8A689Ch
008A6895: and var_000001CC, 00000000h
008A689C: push var_28
008A689F: call 004109DCh ; Val(arg_1)
008A68A4: call 00410814h ; msvbvm60.dll.__vbaFpI4
008A68A9: dec eax
008A68AA: mov var_00000168, eax
008A68B0: cmp var_00000168, 0000FF4Bh
008A68BA: jnb 8A68C5h
008A68BC: and var_000001D0, 00000000h
008A68C3: jmp 8A68D0h
008A68C5: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008A68CA: mov var_000001D0, eax
008A68D0: mov eax, var_00000168
008A68D6: mov ecx, [008F21E4h]
008A68DC: lea eax, [ecx+eax*4]
008A68DF: push eax
008A68E0: push 00425DECh
008A68E5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A68EA: lea eax, var_28
008A68ED: push eax
008A68EE: mov eax, [ebp+08h]
008A68F1: mov eax, [eax]
008A68F3: push [ebp+08h]
008A68F6: call [eax+000001C0h]
008A68FC: fclex 
008A68FE: mov var_00000164, eax
008A6904: cmp var_00000164, 00000000h
008A690B: jnl 8A692Dh
008A690D: push 000001C0h
008A6912: push 00449324h
008A6917: push [ebp+08h]
008A691A: push var_00000164
008A6920: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A6925: mov var_000001D4, eax
008A692B: jmp 8A6934h
008A692D: and var_000001D4, 00000000h
008A6934: push var_28
008A6937: call 004109DCh ; Val(arg_1)
008A693C: call 00410814h ; msvbvm60.dll.__vbaFpI4
008A6941: dec eax
008A6942: mov var_00000168, eax
008A6948: cmp var_00000168, 0000FF4Bh
008A6952: jnb 8A695Dh
008A6954: and var_000001D8, 00000000h
008A695B: jmp 8A6968h
008A695D: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008A6962: mov var_000001D8, eax
008A6968: mov eax, var_00000168
008A696E: mov ecx, [008F21E4h]
008A6974: lea eax, [ecx+eax*4]
008A6977: mov var_000001DC, eax
008A697D: jmp 008A6A15h
008A6982: lea eax, var_28
008A6985: push eax
008A6986: mov eax, [ebp+08h]
008A6989: mov eax, [eax]
008A698B: push [ebp+08h]
008A698E: call [eax+000001C0h]
008A6994: fclex 
008A6996: mov var_00000164, eax
008A699C: cmp var_00000164, 00000000h
008A69A3: jnl 8A69C5h
008A69A5: push 000001C0h
008A69AA: push 00449324h
008A69AF: push [ebp+08h]
008A69B2: push var_00000164
008A69B8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A69BD: mov var_000001E0, eax
008A69C3: jmp 8A69CCh
008A69C5: and var_000001E0, 00000000h
008A69CC: push var_28
008A69CF: call 004109DCh ; Val(arg_1)
008A69D4: call 00410814h ; msvbvm60.dll.__vbaFpI4
008A69D9: dec eax
008A69DA: mov var_00000168, eax
008A69E0: cmp var_00000168, 0000FF4Bh
008A69EA: jnb 8A69F5h
008A69EC: and var_000001E4, 00000000h
008A69F3: jmp 8A6A00h
008A69F5: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008A69FA: mov var_000001E4, eax
008A6A00: mov eax, var_00000168
008A6A06: mov ecx, [008F21E4h]
008A6A0C: lea eax, [ecx+eax*4]
008A6A0F: mov var_000001DC, eax
008A6A15: mov eax, var_000001DC
008A6A1B: mov eax, [eax]
008A6A1D: mov var_0000016C, eax
008A6A23: lea eax, var_24
008A6A26: push eax
008A6A27: mov eax, [ebp+08h]
008A6A2A: mov eax, [eax]
008A6A2C: push [ebp+08h]
008A6A2F: call [eax+000001C0h]
008A6A35: fclex 
008A6A37: mov var_00000160, eax
008A6A3D: cmp var_00000160, 00000000h
008A6A44: jnl 8A6A66h
008A6A46: push 000001C0h
008A6A4B: push 00449324h
008A6A50: push [ebp+08h]
008A6A53: push var_00000160
008A6A59: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A6A5E: mov var_000001E8, eax
008A6A64: jmp 8A6A6Dh
008A6A66: and var_000001E8, 00000000h
008A6A6D: push var_24
008A6A70: call 004109DCh ; Val(arg_1)
008A6A75: push ecx
008A6A76: push ecx
008A6A77: fstp real8 ptr [esp]
008A6A7A: call 00410790h ; msvbvm60.dll.__vbaStrR8
008A6A7F: mov edx, eax
008A6A81: lea ecx, var_2C
008A6A84: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A6A89: push eax
008A6A8A: mov eax, var_0000016C
008A6A90: mov eax, [eax]
008A6A92: push var_0000016C
008A6A98: call [eax+000001C4h]
008A6A9E: fclex 
008A6AA0: mov var_00000170, eax
008A6AA6: cmp var_00000170, 00000000h
008A6AAD: jnl 8A6AD2h
008A6AAF: push 000001C4h
008A6AB4: push 00444EC0h
008A6AB9: push var_0000016C
008A6ABF: push var_00000170
008A6AC5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A6ACA: mov var_000001EC, eax
008A6AD0: jmp 8A6AD9h
008A6AD2: and var_000001EC, 00000000h
008A6AD9: lea eax, var_2C
008A6ADC: push eax
008A6ADD: lea eax, var_28
008A6AE0: push eax
008A6AE1: lea eax, var_24
008A6AE4: push eax
008A6AE5: push 00000003h
008A6AE7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A6AEC: add esp, 00000010h
008A6AEF: lea eax, var_28
008A6AF2: push eax
008A6AF3: mov eax, [ebp+08h]
008A6AF6: mov eax, [eax]
008A6AF8: push [ebp+08h]
008A6AFB: call [eax+000001C0h]
008A6B01: fclex 
008A6B03: mov var_00000168, eax
008A6B09: cmp var_00000168, 00000000h
008A6B10: jnl 8A6B32h
008A6B12: push 000001C0h
008A6B17: push 00449324h
008A6B1C: push [ebp+08h]
008A6B1F: push var_00000168
008A6B25: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A6B2A: mov var_000001F0, eax
008A6B30: jmp 8A6B39h
008A6B32: and var_000001F0, 00000000h
008A6B39: push var_28
008A6B3C: call 004109DCh ; Val(arg_1)
008A6B41: call 00410814h ; msvbvm60.dll.__vbaFpI4
008A6B46: dec eax
008A6B47: mov var_0000016C, eax
008A6B4D: cmp var_0000016C, 0000FF4Bh
008A6B57: jnb 8A6B62h
008A6B59: and var_000001F4, 00000000h
008A6B60: jmp 8A6B6Dh
008A6B62: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008A6B67: mov var_000001F4, eax
008A6B6D: mov eax, var_0000016C
008A6B73: mov ecx, [008F21E4h]
008A6B79: cmp [ecx+eax*4], 00000000h
008A6B7D: jnz 008A6CB3h
008A6B83: lea eax, var_28
008A6B86: push eax
008A6B87: mov eax, [ebp+08h]
008A6B8A: mov eax, [eax]
008A6B8C: push [ebp+08h]
008A6B8F: call [eax+000001C0h]
008A6B95: fclex 
008A6B97: mov var_00000168, eax
008A6B9D: cmp var_00000168, 00000000h
008A6BA4: jnl 8A6BC6h
008A6BA6: push 000001C0h
008A6BAB: push 00449324h
008A6BB0: push [ebp+08h]
008A6BB3: push var_00000168
008A6BB9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A6BBE: mov var_000001F8, eax
008A6BC4: jmp 8A6BCDh
008A6BC6: and var_000001F8, 00000000h
008A6BCD: push var_28
008A6BD0: call 004109DCh ; Val(arg_1)
008A6BD5: call 00410814h ; msvbvm60.dll.__vbaFpI4
008A6BDA: dec eax
008A6BDB: mov var_0000016C, eax
008A6BE1: cmp var_0000016C, 0000FF4Bh
008A6BEB: jnb 8A6BF6h
008A6BED: and var_000001FC, 00000000h
008A6BF4: jmp 8A6C01h
008A6BF6: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008A6BFB: mov var_000001FC, eax
008A6C01: mov eax, var_0000016C
008A6C07: mov ecx, [008F21E4h]
008A6C0D: lea eax, [ecx+eax*4]
008A6C10: push eax
008A6C11: push 00425DECh
008A6C16: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A6C1B: lea eax, var_28
008A6C1E: push eax
008A6C1F: mov eax, [ebp+08h]
008A6C22: mov eax, [eax]
008A6C24: push [ebp+08h]
008A6C27: call [eax+000001C0h]
008A6C2D: fclex 
008A6C2F: mov var_00000168, eax
008A6C35: cmp var_00000168, 00000000h
008A6C3C: jnl 8A6C5Eh
008A6C3E: push 000001C0h
008A6C43: push 00449324h
008A6C48: push [ebp+08h]
008A6C4B: push var_00000168
008A6C51: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A6C56: mov var_00000200, eax
008A6C5C: jmp 8A6C65h
008A6C5E: and var_00000200, 00000000h
008A6C65: push var_28
008A6C68: call 004109DCh ; Val(arg_1)
008A6C6D: call 00410814h ; msvbvm60.dll.__vbaFpI4
008A6C72: dec eax
008A6C73: mov var_0000016C, eax
008A6C79: cmp var_0000016C, 0000FF4Bh
008A6C83: jnb 8A6C8Eh
008A6C85: and var_00000204, 00000000h
008A6C8C: jmp 8A6C99h
008A6C8E: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008A6C93: mov var_00000204, eax
008A6C99: mov eax, var_0000016C
008A6C9F: mov ecx, [008F21E4h]
008A6CA5: lea eax, [ecx+eax*4]
008A6CA8: mov var_00000208, eax
008A6CAE: jmp 008A6D46h
008A6CB3: lea eax, var_28
008A6CB6: push eax
008A6CB7: mov eax, [ebp+08h]
008A6CBA: mov eax, [eax]
008A6CBC: push [ebp+08h]
008A6CBF: call [eax+000001C0h]
008A6CC5: fclex 
008A6CC7: mov var_00000168, eax
008A6CCD: cmp var_00000168, 00000000h
008A6CD4: jnl 8A6CF6h
008A6CD6: push 000001C0h
008A6CDB: push 00449324h
008A6CE0: push [ebp+08h]
008A6CE3: push var_00000168
008A6CE9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A6CEE: mov var_0000020C, eax
008A6CF4: jmp 8A6CFDh
008A6CF6: and var_0000020C, 00000000h
008A6CFD: push var_28
008A6D00: call 004109DCh ; Val(arg_1)
008A6D05: call 00410814h ; msvbvm60.dll.__vbaFpI4
008A6D0A: dec eax
008A6D0B: mov var_0000016C, eax
008A6D11: cmp var_0000016C, 0000FF4Bh
008A6D1B: jnb 8A6D26h
008A6D1D: and var_00000210, 00000000h
008A6D24: jmp 8A6D31h
008A6D26: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008A6D2B: mov var_00000210, eax
008A6D31: mov eax, var_0000016C
008A6D37: mov ecx, [008F21E4h]
008A6D3D: lea eax, [ecx+eax*4]
008A6D40: mov var_00000208, eax
008A6D46: mov eax, var_00000208
008A6D4C: mov eax, [eax]
008A6D4E: mov ecx, var_00000208
008A6D54: mov ecx, [ecx]
008A6D56: mov ecx, [ecx]
008A6D58: push eax
008A6D59: call [ecx+00000324h]
008A6D5F: push eax
008A6D60: lea eax, var_54
008A6D63: push eax
008A6D64: call 00410A84h ; Set (object)
008A6D69: mov var_00000170, eax
008A6D6F: push 004412DCh
008A6D74: push 00000000h
008A6D76: push 0000000Dh
008A6D78: mov eax, [ebp+08h]
008A6D7B: mov eax, [eax]
008A6D7D: push [ebp+08h]
008A6D80: call [eax+00000308h]
008A6D86: push eax
008A6D87: lea eax, var_4C
008A6D8A: push eax
008A6D8B: call 00410A84h ; Set (object)
008A6D90: push eax
008A6D91: lea eax, var_70
008A6D94: push eax
008A6D95: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A6D9A: add esp, 00000010h
008A6D9D: push eax
008A6D9E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A6DA3: push eax
008A6DA4: lea eax, var_50
008A6DA7: push eax
008A6DA8: call 00410A84h ; Set (object)
008A6DAD: mov var_00000160, eax
008A6DB3: lea eax, var_24
008A6DB6: push eax
008A6DB7: mov eax, var_00000160
008A6DBD: mov eax, [eax]
008A6DBF: push var_00000160
008A6DC5: call [eax+24h]
008A6DC8: fclex 
008A6DCA: mov var_00000164, eax
008A6DD0: cmp var_00000164, 00000000h
008A6DD7: jnl 8A6DF9h
008A6DD9: push 00000024h
008A6DDB: push 004412DCh
008A6DE0: push var_00000160
008A6DE6: push var_00000164
008A6DEC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A6DF1: mov var_00000214, eax
008A6DF7: jmp 8A6E00h
008A6DF9: and var_00000214, 00000000h
008A6E00: push var_24
008A6E03: call 004109DCh ; Val(arg_1)
008A6E08: push ecx
008A6E09: push ecx
008A6E0A: fstp real8 ptr [esp]
008A6E0D: call 00410790h ; msvbvm60.dll.__vbaStrR8
008A6E12: mov edx, eax
008A6E14: lea ecx, var_2C
008A6E17: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A6E1C: push eax
008A6E1D: mov eax, var_00000170
008A6E23: mov eax, [eax]
008A6E25: push var_00000170
008A6E2B: call [eax+000001BCh]
008A6E31: fclex 
008A6E33: mov var_00000174, eax
008A6E39: cmp var_00000174, 00000000h
008A6E40: jnl 8A6E65h
008A6E42: push 000001BCh
008A6E47: push 00440EDCh
008A6E4C: push var_00000170
008A6E52: push var_00000174
008A6E58: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A6E5D: mov var_00000218, eax
008A6E63: jmp 8A6E6Ch
008A6E65: and var_00000218, 00000000h
008A6E6C: lea eax, var_2C
008A6E6F: push eax
008A6E70: lea eax, var_28
008A6E73: push eax
008A6E74: lea eax, var_24
008A6E77: push eax
008A6E78: push 00000003h
008A6E7A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A6E7F: add esp, 00000010h
008A6E82: lea eax, var_54
008A6E85: push eax
008A6E86: lea eax, var_50
008A6E89: push eax
008A6E8A: lea eax, var_4C
008A6E8D: push eax
008A6E8E: push 00000003h
008A6E90: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A6E95: add esp, 00000010h
008A6E98: lea ecx, var_70
008A6E9B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A6EA0: lea eax, var_44
008A6EA3: push eax
008A6EA4: mov eax, [ebp+08h]
008A6EA7: mov eax, [eax]
008A6EA9: push [ebp+08h]
008A6EAC: call [eax+000001C0h]
008A6EB2: fclex 
008A6EB4: mov var_00000168, eax
008A6EBA: cmp var_00000168, 00000000h
008A6EC1: jnl 8A6EE3h
008A6EC3: push 000001C0h
008A6EC8: push 00449324h
008A6ECD: push [ebp+08h]
008A6ED0: push var_00000168
008A6ED6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A6EDB: mov var_0000021C, eax
008A6EE1: jmp 8A6EEAh
008A6EE3: and var_0000021C, 00000000h
008A6EEA: push var_44
008A6EED: call 004109DCh ; Val(arg_1)
008A6EF2: call 00410814h ; msvbvm60.dll.__vbaFpI4
008A6EF7: dec eax
008A6EF8: mov var_0000016C, eax
008A6EFE: cmp var_0000016C, 0000FF4Bh
008A6F08: jnb 8A6F13h
008A6F0A: and var_00000220, 00000000h
008A6F11: jmp 8A6F1Eh
008A6F13: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008A6F18: mov var_00000220, eax
008A6F1E: mov eax, var_0000016C
008A6F24: mov ecx, [008F21E4h]
008A6F2A: cmp [ecx+eax*4], 00000000h
008A6F2E: jnz 008A7064h
008A6F34: lea eax, var_44
008A6F37: push eax
008A6F38: mov eax, [ebp+08h]
008A6F3B: mov eax, [eax]
008A6F3D: push [ebp+08h]
008A6F40: call [eax+000001C0h]
008A6F46: fclex 
008A6F48: mov var_00000168, eax
008A6F4E: cmp var_00000168, 00000000h
008A6F55: jnl 8A6F77h
008A6F57: push 000001C0h
008A6F5C: push 00449324h
008A6F61: push [ebp+08h]
008A6F64: push var_00000168
008A6F6A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A6F6F: mov var_00000224, eax
008A6F75: jmp 8A6F7Eh
008A6F77: and var_00000224, 00000000h
008A6F7E: push var_44
008A6F81: call 004109DCh ; Val(arg_1)
008A6F86: call 00410814h ; msvbvm60.dll.__vbaFpI4
008A6F8B: dec eax
008A6F8C: mov var_0000016C, eax
008A6F92: cmp var_0000016C, 0000FF4Bh
008A6F9C: jnb 8A6FA7h
008A6F9E: and var_00000228, 00000000h
008A6FA5: jmp 8A6FB2h
008A6FA7: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008A6FAC: mov var_00000228, eax
008A6FB2: mov eax, var_0000016C
008A6FB8: mov ecx, [008F21E4h]
008A6FBE: lea eax, [ecx+eax*4]
008A6FC1: push eax
008A6FC2: push 00425DECh
008A6FC7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A6FCC: lea eax, var_44
008A6FCF: push eax
008A6FD0: mov eax, [ebp+08h]
008A6FD3: mov eax, [eax]
008A6FD5: push [ebp+08h]
008A6FD8: call [eax+000001C0h]
008A6FDE: fclex 
008A6FE0: mov var_00000168, eax
008A6FE6: cmp var_00000168, 00000000h
008A6FED: jnl 8A700Fh
008A6FEF: push 000001C0h
008A6FF4: push 00449324h
008A6FF9: push [ebp+08h]
008A6FFC: push var_00000168
008A7002: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A7007: mov var_0000022C, eax
008A700D: jmp 8A7016h
008A700F: and var_0000022C, 00000000h
008A7016: push var_44
008A7019: call 004109DCh ; Val(arg_1)
008A701E: call 00410814h ; msvbvm60.dll.__vbaFpI4
008A7023: dec eax
008A7024: mov var_0000016C, eax
008A702A: cmp var_0000016C, 0000FF4Bh
008A7034: jnb 8A703Fh
008A7036: and var_00000230, 00000000h
008A703D: jmp 8A704Ah
008A703F: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008A7044: mov var_00000230, eax
008A704A: mov eax, var_0000016C
008A7050: mov ecx, [008F21E4h]
008A7056: lea eax, [ecx+eax*4]
008A7059: mov var_00000234, eax
008A705F: jmp 008A70F7h
008A7064: lea eax, var_44
008A7067: push eax
008A7068: mov eax, [ebp+08h]
008A706B: mov eax, [eax]
008A706D: push [ebp+08h]
008A7070: call [eax+000001C0h]
008A7076: fclex 
008A7078: mov var_00000168, eax
008A707E: cmp var_00000168, 00000000h
008A7085: jnl 8A70A7h
008A7087: push 000001C0h
008A708C: push 00449324h
008A7091: push [ebp+08h]
008A7094: push var_00000168
008A709A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A709F: mov var_00000238, eax
008A70A5: jmp 8A70AEh
008A70A7: and var_00000238, 00000000h
008A70AE: push var_44
008A70B1: call 004109DCh ; Val(arg_1)
008A70B6: call 00410814h ; msvbvm60.dll.__vbaFpI4
008A70BB: dec eax
008A70BC: mov var_0000016C, eax
008A70C2: cmp var_0000016C, 0000FF4Bh
008A70CC: jnb 8A70D7h
008A70CE: and var_0000023C, 00000000h
008A70D5: jmp 8A70E2h
008A70D7: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008A70DC: mov var_0000023C, eax
008A70E2: mov eax, var_0000016C
008A70E8: mov ecx, [008F21E4h]
008A70EE: lea eax, [ecx+eax*4]
008A70F1: mov var_00000234, eax
008A70F7: mov eax, var_00000234
008A70FD: mov eax, [eax]
008A70FF: mov var_00000170, eax
008A7105: mov var_000000FC, 00000001h
008A710F: mov var_00000104, 00000003h
008A7119: lea eax, var_24
008A711C: push eax
008A711D: mov eax, [ebp+08h]
008A7120: mov eax, [eax]
008A7122: push [ebp+08h]
008A7125: call [eax+000001C0h]
008A712B: fclex 
008A712D: mov var_00000160, eax
008A7133: cmp var_00000160, 00000000h
008A713A: jnl 8A715Ch
008A713C: push 000001C0h
008A7141: push 00449324h
008A7146: push [ebp+08h]
008A7149: push var_00000160
008A714F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A7154: mov var_00000240, eax
008A715A: jmp 8A7163h
008A715C: and var_00000240, 00000000h
008A7163: push var_24
008A7166: call 004109DCh ; Val(arg_1)
008A716B: push ecx
008A716C: push ecx
008A716D: fstp real8 ptr [esp]
008A7170: call 00410790h ; msvbvm60.dll.__vbaStrR8
008A7175: mov edx, eax
008A7177: lea ecx, var_28
008A717A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A717F: push eax
008A7180: push 004417CCh ; sck
008A7185: call 00410A18h ; &
008A718A: mov var_78, eax
008A718D: mov var_80, 00000008h
008A7194: cmp [008F2010h], 00000000h
008A719B: jnz 8A71B8h
008A719D: push 008F2010h
008A71A2: push 00433984h
008A71A7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A71AC: mov var_00000244, 008F2010h
008A71B6: jmp 8A71C2h
008A71B8: mov var_00000244, 008F2010h
008A71C2: mov var_0000012C, 00000007h
008A71CC: mov var_00000134, 00000003h
008A71D6: lea eax, var_34
008A71D9: push eax
008A71DA: mov eax, [ebp+08h]
008A71DD: mov eax, [eax]
008A71DF: push [ebp+08h]
008A71E2: call [eax+000001C0h]
008A71E8: fclex 
008A71EA: mov var_00000164, eax
008A71F0: cmp var_00000164, 00000000h
008A71F7: jnl 8A7219h
008A71F9: push 000001C0h
008A71FE: push 00449324h
008A7203: push [ebp+08h]
008A7206: push var_00000164
008A720C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A7211: mov var_00000248, eax
008A7217: jmp 8A7220h
008A7219: and var_00000248, 00000000h
008A7220: push var_34
008A7223: call 004109DCh ; Val(arg_1)
008A7228: push ecx
008A7229: push ecx
008A722A: fstp real8 ptr [esp]
008A722D: call 00410790h ; msvbvm60.dll.__vbaStrR8
008A7232: mov edx, eax
008A7234: lea ecx, var_38
008A7237: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A723C: push eax
008A723D: push 004417CCh ; sck
008A7242: call 00410A18h ; &
008A7247: mov var_000000B8, eax
008A724D: mov var_000000C0, 00000008h
008A7257: cmp [008F2010h], 00000000h
008A725E: jnz 8A727Bh
008A7260: push 008F2010h
008A7265: push 00433984h
008A726A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A726F: mov var_0000024C, 008F2010h
008A7279: jmp 8A7285h
008A727B: mov var_0000024C, 008F2010h
008A7285: push 00449164h ; Screenshot manager -
008A728A: push 00000010h
008A728C: pop eax
008A728D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A7292: lea esi, var_00000104
008A7298: mov edi, esp
008A729A: movsd 
008A729B: movsd 
008A729C: movsd 
008A729D: movsd 
008A729E: push 00000001h
008A72A0: push 00000010h
008A72A2: push 00440E58h
008A72A7: push 00000010h
008A72A9: pop eax
008A72AA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A72AF: lea esi, var_80
008A72B2: mov edi, esp
008A72B4: movsd 
008A72B5: movsd 
008A72B6: movsd 
008A72B7: movsd 
008A72B8: push 00000001h
008A72BA: push 00000000h
008A72BC: push 00440E48h
008A72C1: push 00000000h
008A72C3: push 00000018h
008A72C5: mov eax, var_00000244
008A72CB: mov eax, [eax]
008A72CD: mov ecx, var_00000244
008A72D3: mov ecx, [ecx]
008A72D5: mov ecx, [ecx]
008A72D7: push eax
008A72D8: call [ecx+00000550h]
008A72DE: push eax
008A72DF: lea eax, var_4C
008A72E2: push eax
008A72E3: call 00410A84h ; Set (object)
008A72E8: push eax
008A72E9: lea eax, var_70
008A72EC: push eax
008A72ED: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A72F2: add esp, 00000010h
008A72F5: push eax
008A72F6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A72FB: push eax
008A72FC: lea eax, var_50
008A72FF: push eax
008A7300: call 00410A84h ; Set (object)
008A7305: push eax
008A7306: lea eax, var_00000090
008A730C: push eax
008A730D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A7312: add esp, 00000020h
008A7315: push eax
008A7316: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A731B: push eax
008A731C: lea eax, var_54
008A731F: push eax
008A7320: call 00410A84h ; Set (object)
008A7325: push eax
008A7326: lea eax, var_000000A0
008A732C: push eax
008A732D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A7332: add esp, 00000020h
008A7335: push eax
008A7336: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008A733B: mov edx, eax
008A733D: lea ecx, var_2C
008A7340: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A7345: push eax
008A7346: call 00410A18h ; &
008A734B: mov edx, eax
008A734D: lea ecx, var_30
008A7350: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A7355: push eax
008A7356: push 00441740h
008A735B: call 00410A18h ; &
008A7360: mov edx, eax
008A7362: lea ecx, var_3C
008A7365: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A736A: push eax
008A736B: push 00000010h
008A736D: pop eax
008A736E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A7373: lea esi, var_00000134
008A7379: mov edi, esp
008A737B: movsd 
008A737C: movsd 
008A737D: movsd 
008A737E: movsd 
008A737F: push 00000001h
008A7381: push 00000010h
008A7383: push 00440E58h
008A7388: push 00000010h
008A738A: pop eax
008A738B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A7390: lea esi, var_000000C0
008A7396: mov edi, esp
008A7398: movsd 
008A7399: movsd 
008A739A: movsd 
008A739B: movsd 
008A739C: push 00000001h
008A739E: push 00000000h
008A73A0: push 00440E48h
008A73A5: push 00000000h
008A73A7: push 00000018h
008A73A9: mov eax, var_0000024C
008A73AF: mov eax, [eax]
008A73B1: mov ecx, var_0000024C
008A73B7: mov ecx, [ecx]
008A73B9: mov ecx, [ecx]
008A73BB: push eax
008A73BC: call [ecx+00000550h]
008A73C2: push eax
008A73C3: lea eax, var_58
008A73C6: push eax
008A73C7: call 00410A84h ; Set (object)
008A73CC: push eax
008A73CD: lea eax, var_000000B0
008A73D3: push eax
008A73D4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A73D9: add esp, 00000010h
008A73DC: push eax
008A73DD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A73E2: push eax
008A73E3: lea eax, var_5C
008A73E6: push eax
008A73E7: call 00410A84h ; Set (object)
008A73EC: push eax
008A73ED: lea eax, var_000000D0
008A73F3: push eax
008A73F4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A73F9: add esp, 00000020h
008A73FC: push eax
008A73FD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A7402: push eax
008A7403: lea eax, var_60
008A7406: push eax
008A7407: call 00410A84h ; Set (object)
008A740C: push eax
008A740D: lea eax, var_000000E0
008A7413: push eax
008A7414: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A7419: add esp, 00000020h
008A741C: push eax
008A741D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008A7422: mov edx, eax
008A7424: lea ecx, var_40
008A7427: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A742C: push eax
008A742D: call 00410A18h ; &
008A7432: mov edx, eax
008A7434: lea ecx, var_48
008A7437: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A743C: push eax
008A743D: mov eax, var_00000170
008A7443: mov eax, [eax]
008A7445: push var_00000170
008A744B: call [eax+54h]
008A744E: fclex 
008A7450: mov var_00000174, eax
008A7456: cmp var_00000174, 00000000h
008A745D: jnl 8A747Fh
008A745F: push 00000054h
008A7461: push 00444EC0h
008A7466: push var_00000170
008A746C: push var_00000174
008A7472: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A7477: mov var_00000250, eax
008A747D: jmp 8A7486h
008A747F: and var_00000250, 00000000h
008A7486: lea eax, var_48
008A7489: push eax
008A748A: lea eax, var_44
008A748D: push eax
008A748E: lea eax, var_40
008A7491: push eax
008A7492: lea eax, var_3C
008A7495: push eax
008A7496: lea eax, var_38
008A7499: push eax
008A749A: lea eax, var_34
008A749D: push eax
008A749E: lea eax, var_30
008A74A1: push eax
008A74A2: lea eax, var_2C
008A74A5: push eax
008A74A6: lea eax, var_28
008A74A9: push eax
008A74AA: lea eax, var_24
008A74AD: push eax
008A74AE: push 0000000Ah
008A74B0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A74B5: add esp, 0000002Ch
008A74B8: lea eax, var_60
008A74BB: push eax
008A74BC: lea eax, var_5C
008A74BF: push eax
008A74C0: lea eax, var_58
008A74C3: push eax
008A74C4: lea eax, var_54
008A74C7: push eax
008A74C8: lea eax, var_50
008A74CB: push eax
008A74CC: lea eax, var_4C
008A74CF: push eax
008A74D0: push 00000006h
008A74D2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A74D7: add esp, 0000001Ch
008A74DA: lea eax, var_000000E0
008A74E0: push eax
008A74E1: lea eax, var_000000D0
008A74E7: push eax
008A74E8: lea eax, var_000000C0
008A74EE: push eax
008A74EF: lea eax, var_000000B0
008A74F5: push eax
008A74F6: lea eax, var_000000A0
008A74FC: push eax
008A74FD: lea eax, var_00000090
008A7503: push eax
008A7504: lea eax, var_80
008A7507: push eax
008A7508: lea eax, var_70
008A750B: push eax
008A750C: push 00000008h
008A750E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A7513: add esp, 00000024h
008A7516: lea eax, var_24
008A7519: push eax
008A751A: mov eax, [ebp+08h]
008A751D: mov eax, [eax]
008A751F: push [ebp+08h]
008A7522: call [eax+000001C0h]
008A7528: fclex 
008A752A: mov var_00000160, eax
008A7530: cmp var_00000160, 00000000h
008A7537: jnl 8A7559h
008A7539: push 000001C0h
008A753E: push 00449324h
008A7543: push [ebp+08h]
008A7546: push var_00000160
008A754C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A7551: mov var_00000254, eax
008A7557: jmp 8A7560h
008A7559: and var_00000254, 00000000h
008A7560: push var_24
008A7563: call 004109DCh ; Val(arg_1)
008A7568: call 00410814h ; msvbvm60.dll.__vbaFpI4
008A756D: dec eax
008A756E: mov var_00000164, eax
008A7574: cmp var_00000164, 0000FF4Bh
008A757E: jnb 8A7589h
008A7580: and var_00000258, 00000000h
008A7587: jmp 8A7594h
008A7589: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008A758E: mov var_00000258, eax
008A7594: mov eax, var_00000164
008A759A: mov ecx, [008F21E4h]
008A75A0: cmp [ecx+eax*4], 00000000h
008A75A4: jnz 008A76DAh
008A75AA: lea eax, var_24
008A75AD: push eax
008A75AE: mov eax, [ebp+08h]
008A75B1: mov eax, [eax]
008A75B3: push [ebp+08h]
008A75B6: call [eax+000001C0h]
008A75BC: fclex 
008A75BE: mov var_00000160, eax
008A75C4: cmp var_00000160, 00000000h
008A75CB: jnl 8A75EDh
008A75CD: push 000001C0h
008A75D2: push 00449324h
008A75D7: push [ebp+08h]
008A75DA: push var_00000160
008A75E0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A75E5: mov var_0000025C, eax
008A75EB: jmp 8A75F4h
008A75ED: and var_0000025C, 00000000h
008A75F4: push var_24
008A75F7: call 004109DCh ; Val(arg_1)
008A75FC: call 00410814h ; msvbvm60.dll.__vbaFpI4
008A7601: dec eax
008A7602: mov var_00000164, eax
008A7608: cmp var_00000164, 0000FF4Bh
008A7612: jnb 8A761Dh
008A7614: and var_00000260, 00000000h
008A761B: jmp 8A7628h
008A761D: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008A7622: mov var_00000260, eax
008A7628: mov eax, var_00000164
008A762E: mov ecx, [008F21E4h]
008A7634: lea eax, [ecx+eax*4]
008A7637: push eax
008A7638: push 00425DECh
008A763D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A7642: lea eax, var_24
008A7645: push eax
008A7646: mov eax, [ebp+08h]
008A7649: mov eax, [eax]
008A764B: push [ebp+08h]
008A764E: call [eax+000001C0h]
008A7654: fclex 
008A7656: mov var_00000160, eax
008A765C: cmp var_00000160, 00000000h
008A7663: jnl 8A7685h
008A7665: push 000001C0h
008A766A: push 00449324h
008A766F: push [ebp+08h]
008A7672: push var_00000160
008A7678: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A767D: mov var_00000264, eax
008A7683: jmp 8A768Ch
008A7685: and var_00000264, 00000000h
008A768C: push var_24
008A768F: call 004109DCh ; Val(arg_1)
008A7694: call 00410814h ; msvbvm60.dll.__vbaFpI4
008A7699: dec eax
008A769A: mov var_00000164, eax
008A76A0: cmp var_00000164, 0000FF4Bh
008A76AA: jnb 8A76B5h
008A76AC: and var_00000268, 00000000h
008A76B3: jmp 8A76C0h
008A76B5: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008A76BA: mov var_00000268, eax
008A76C0: mov eax, var_00000164
008A76C6: mov ecx, [008F21E4h]
008A76CC: lea eax, [ecx+eax*4]
008A76CF: mov var_0000026C, eax
008A76D5: jmp 008A776Dh
008A76DA: lea eax, var_24
008A76DD: push eax
008A76DE: mov eax, [ebp+08h]
008A76E1: mov eax, [eax]
008A76E3: push [ebp+08h]
008A76E6: call [eax+000001C0h]
008A76EC: fclex 
008A76EE: mov var_00000160, eax
008A76F4: cmp var_00000160, 00000000h
008A76FB: jnl 8A771Dh
008A76FD: push 000001C0h
008A7702: push 00449324h
008A7707: push [ebp+08h]
008A770A: push var_00000160
008A7710: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A7715: mov var_00000270, eax
008A771B: jmp 8A7724h
008A771D: and var_00000270, 00000000h
008A7724: push var_24
008A7727: call 004109DCh ; Val(arg_1)
008A772C: call 00410814h ; msvbvm60.dll.__vbaFpI4
008A7731: dec eax
008A7732: mov var_00000164, eax
008A7738: cmp var_00000164, 0000FF4Bh
008A7742: jnb 8A774Dh
008A7744: and var_00000274, 00000000h
008A774B: jmp 8A7758h
008A774D: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008A7752: mov var_00000274, eax
008A7758: mov eax, var_00000164
008A775E: mov ecx, [008F21E4h]
008A7764: lea eax, [ecx+eax*4]
008A7767: mov var_0000026C, eax
008A776D: mov eax, var_0000026C
008A7773: mov eax, [eax]
008A7775: mov var_00000168, eax
008A777B: mov var_000000FC, 80020004h
008A7785: mov var_00000104, 0000000Ah
008A778F: mov var_000000EC, 80020004h
008A7799: mov var_000000F4, 0000000Ah
008A77A3: push 00000010h
008A77A5: pop eax
008A77A6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A77AB: lea esi, var_00000104
008A77B1: mov edi, esp
008A77B3: movsd 
008A77B4: movsd 
008A77B5: movsd 
008A77B6: movsd 
008A77B7: push 00000010h
008A77B9: pop eax
008A77BA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A77BF: lea esi, var_000000F4
008A77C5: mov edi, esp
008A77C7: movsd 
008A77C8: movsd 
008A77C9: movsd 
008A77CA: movsd 
008A77CB: mov eax, var_00000168
008A77D1: mov eax, [eax]
008A77D3: push var_00000168
008A77D9: call [eax+000002B0h]
008A77DF: fclex 
008A77E1: mov var_0000016C, eax
008A77E7: cmp var_0000016C, 00000000h
008A77EE: jnl 8A7813h
008A77F0: push 000002B0h
008A77F5: push 00444EC0h
008A77FA: push var_00000168
008A7800: push var_0000016C
008A7806: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A780B: mov var_00000278, eax
008A7811: jmp 8A781Ah
008A7813: and var_00000278, 00000000h
008A781A: lea ecx, var_24
008A781D: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008A7822: jmp 008A7B2Bh
008A7827: mov var_000000C8, 80020004h
008A7831: mov var_000000D0, 0000000Ah
008A783B: mov var_000000B8, 80020004h
008A7845: mov var_000000C0, 0000000Ah
008A784F: mov var_000000A8, 80020004h
008A7859: mov var_000000B0, 0000000Ah
008A7863: mov var_00000098, 80020004h
008A786D: mov var_000000A0, 0000000Ah
008A7877: mov var_00000088, 80020004h
008A7881: mov var_00000090, 0000000Ah
008A788B: mov var_78, 80020004h
008A7892: mov var_80, 0000000Ah
008A7899: mov var_000000EC, 00459B28h ; Enter a message to send to the chosen window. Note: For Enter, use {ENTER}
008A78A3: mov var_000000F4, 00000008h
008A78AD: lea edx, var_000000F4
008A78B3: lea ecx, var_70
008A78B6: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008A78BB: lea eax, var_000000D0
008A78C1: push eax
008A78C2: lea eax, var_000000C0
008A78C8: push eax
008A78C9: lea eax, var_000000B0
008A78CF: push eax
008A78D0: lea eax, var_000000A0
008A78D6: push eax
008A78D7: lea eax, var_00000090
008A78DD: push eax
008A78DE: lea eax, var_80
008A78E1: push eax
008A78E2: lea eax, var_70
008A78E5: push eax
008A78E6: call 00410994h ; InputBox
008A78EB: mov edx, eax
008A78ED: lea ecx, var_20
008A78F0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A78F5: lea eax, var_000000D0
008A78FB: push eax
008A78FC: lea eax, var_000000C0
008A7902: push eax
008A7903: lea eax, var_000000B0
008A7909: push eax
008A790A: lea eax, var_000000A0
008A7910: push eax
008A7911: lea eax, var_00000090
008A7917: push eax
008A7918: lea eax, var_80
008A791B: push eax
008A791C: lea eax, var_70
008A791F: push eax
008A7920: push 00000007h
008A7922: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A7927: add esp, 00000020h
008A792A: lea eax, var_24
008A792D: push eax
008A792E: mov eax, [ebp+08h]
008A7931: mov eax, [eax]
008A7933: push [ebp+08h]
008A7936: call [eax+000001C0h]
008A793C: fclex 
008A793E: mov var_00000160, eax
008A7944: cmp var_00000160, 00000000h
008A794B: jnl 8A796Dh
008A794D: push 000001C0h
008A7952: push 00449324h
008A7957: push [ebp+08h]
008A795A: push var_00000160
008A7960: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A7965: mov var_0000027C, eax
008A796B: jmp 8A7974h
008A796D: and var_0000027C, 00000000h
008A7974: push var_24
008A7977: call 004109DCh ; Val(arg_1)
008A797C: fstp real8 ptr var_0000015C
008A7982: push 00000000h
008A7984: push 00000002h
008A7986: push 00000001h
008A7988: push 00000000h
008A798A: lea eax, var_000000E4
008A7990: push eax
008A7991: push 00000010h
008A7993: push 00000880h
008A7998: call 00410946h ; ReDim
008A799D: add esp, 0000001Ch
008A79A0: mov var_000000EC, 00447394h
008A79AA: mov var_000000F4, 00000008h
008A79B4: lea esi, var_000000F4
008A79BA: push 00000000h
008A79BC: push var_000000E4
008A79C2: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A79C7: mov ecx, eax
008A79C9: mov edx, esi
008A79CB: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008A79D0: push 004412DCh
008A79D5: push 00000000h
008A79D7: push 0000000Dh
008A79D9: mov eax, [ebp+08h]
008A79DC: mov eax, [eax]
008A79DE: push [ebp+08h]
008A79E1: call [eax+00000308h]
008A79E7: push eax
008A79E8: lea eax, var_4C
008A79EB: push eax
008A79EC: call 00410A84h ; Set (object)
008A79F1: push eax
008A79F2: lea eax, var_70
008A79F5: push eax
008A79F6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A79FB: add esp, 00000010h
008A79FE: push eax
008A79FF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A7A04: push eax
008A7A05: lea eax, var_50
008A7A08: push eax
008A7A09: call 00410A84h ; Set (object)
008A7A0E: mov var_00000164, eax
008A7A14: lea eax, var_28
008A7A17: push eax
008A7A18: mov eax, var_00000164
008A7A1E: mov eax, [eax]
008A7A20: push var_00000164
008A7A26: call [eax+24h]
008A7A29: fclex 
008A7A2B: mov var_00000168, eax
008A7A31: cmp var_00000168, 00000000h
008A7A38: jnl 8A7A5Ah
008A7A3A: push 00000024h
008A7A3C: push 004412DCh
008A7A41: push var_00000164
008A7A47: push var_00000168
008A7A4D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A7A52: mov var_00000280, eax
008A7A58: jmp 8A7A61h
008A7A5A: and var_00000280, 00000000h
008A7A61: push var_28
008A7A64: call 004109DCh ; Val(arg_1)
008A7A69: fstp real8 ptr var_000000FC
008A7A6F: mov var_00000104, 00000005h
008A7A79: lea esi, var_00000104
008A7A7F: push 00000001h
008A7A81: push var_000000E4
008A7A87: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A7A8C: mov ecx, eax
008A7A8E: mov edx, esi
008A7A90: call 00410922h ; msvbvm60.dll.__vbaVarMove
008A7A95: lea eax, var_20
008A7A98: mov var_0000010C, eax
008A7A9E: mov var_00000114, 00004008h
008A7AA8: lea esi, var_00000114
008A7AAE: push 00000002h
008A7AB0: push var_000000E4
008A7AB6: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A7ABB: mov ecx, eax
008A7ABD: mov edx, esi
008A7ABF: call 00410940h ; msvbvm60.dll.__vbaVarZero
008A7AC4: mov edx, 0043D924h ; x106
008A7AC9: lea ecx, var_2C
008A7ACC: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008A7AD1: lea eax, var_000000E4
008A7AD7: push eax
008A7AD8: lea eax, var_2C
008A7ADB: push eax
008A7ADC: fld real8 ptr var_0000015C
008A7AE2: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008A7AE7: push eax
008A7AE8: call 007A6910h
008A7AED: lea eax, var_000000E4
008A7AF3: push eax
008A7AF4: push 00000000h
008A7AF6: call 00410934h ; Erase
008A7AFB: lea eax, var_2C
008A7AFE: push eax
008A7AFF: lea eax, var_28
008A7B02: push eax
008A7B03: lea eax, var_24
008A7B06: push eax
008A7B07: push 00000003h
008A7B09: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A7B0E: add esp, 00000010h
008A7B11: lea eax, var_50
008A7B14: push eax
008A7B15: lea eax, var_4C
008A7B18: push eax
008A7B19: push 00000002h
008A7B1B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A7B20: add esp, 0000000Ch
008A7B23: lea ecx, var_70
008A7B26: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A7B2B: call 004109C4h ; msvbvm60.dll.__vbaExitProc
008A7B30: wait 
008A7B31: push 008A7BE3h
008A7B36: jmp 008A7BDAh
008A7B3B: lea eax, var_48
008A7B3E: push eax
008A7B3F: lea eax, var_44
008A7B42: push eax
008A7B43: lea eax, var_40
008A7B46: push eax
008A7B47: lea eax, var_3C
008A7B4A: push eax
008A7B4B: lea eax, var_38
008A7B4E: push eax
008A7B4F: lea eax, var_34
008A7B52: push eax
008A7B53: lea eax, var_30
008A7B56: push eax
008A7B57: lea eax, var_2C
008A7B5A: push eax
008A7B5B: lea eax, var_28
008A7B5E: push eax
008A7B5F: lea eax, var_24
008A7B62: push eax
008A7B63: push 0000000Ah
008A7B65: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A7B6A: add esp, 0000002Ch
008A7B6D: lea eax, var_60
008A7B70: push eax
008A7B71: lea eax, var_5C
008A7B74: push eax
008A7B75: lea eax, var_58
008A7B78: push eax
008A7B79: lea eax, var_54
008A7B7C: push eax
008A7B7D: lea eax, var_50
008A7B80: push eax
008A7B81: lea eax, var_4C
008A7B84: push eax
008A7B85: push 00000006h
008A7B87: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A7B8C: add esp, 0000001Ch
008A7B8F: lea eax, var_000000E0
008A7B95: push eax
008A7B96: lea eax, var_000000D0
008A7B9C: push eax
008A7B9D: lea eax, var_000000C0
008A7BA3: push eax
008A7BA4: lea eax, var_000000B0
008A7BAA: push eax
008A7BAB: lea eax, var_000000A0
008A7BB1: push eax
008A7BB2: lea eax, var_00000090
008A7BB8: push eax
008A7BB9: lea eax, var_80
008A7BBC: push eax
008A7BBD: lea eax, var_70
008A7BC0: push eax
008A7BC1: push 00000008h
008A7BC3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A7BC8: add esp, 00000024h
008A7BCB: lea eax, var_000000E4
008A7BD1: push eax
008A7BD2: push 00000000h
008A7BD4: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008A7BD9: ret 
End Sub

Private sub lstWnds__8A537C
008A537C: push ebp
008A537D: mov ebp, esp
008A537F: sub esp, 0000000Ch
008A5382: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008A5387: mov eax, fs:[00h]
008A538D: push eax
008A538E: mov fs:[00000000h], esp
008A5395: push 00000008h
008A5397: pop eax
008A5398: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A539D: push ebx
008A539E: push esi
008A539F: push edi
008A53A0: mov var_0C, esp
008A53A3: mov var_08, 0040E528h
008A53AA: mov eax, [ebp+08h]
008A53AD: and eax, 00000001h
008A53B0: mov var_04, eax
008A53B3: mov eax, [ebp+08h]
008A53B6: and al, FEh
008A53B8: mov [ebp+08h], eax
008A53BB: mov eax, [ebp+08h]
008A53BE: mov eax, [eax]
008A53C0: push [ebp+08h]
008A53C3: call [eax+04h]
008A53C6: mov eax, [ebp+0Ch]
008A53C9: or word ptr [eax], FFFFh
008A53CD: mov var_04, 00000000h
008A53D4: mov eax, [ebp+08h]
008A53D7: mov eax, [eax]
008A53D9: push [ebp+08h]
008A53DC: call [eax+08h]
008A53DF: mov eax, var_04
008A53E2: mov ecx, var_14
008A53E5: mov fs:[00000000h], ecx
008A53EC: pop edi
008A53ED: pop esi
008A53EE: pop ebx
008A53EF: leave 
008A53F0: retn 0008h
End Sub

Private sub lstWnds__8A53F3
008A53F3: push ebp
008A53F4: mov ebp, esp
008A53F6: sub esp, 00000018h
008A53F9: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008A53FE: mov eax, fs:[00h]
008A5404: push eax
008A5405: mov fs:[00000000h], esp
008A540C: push 00000078h
008A540E: pop eax
008A540F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A5414: push ebx
008A5415: push esi
008A5416: push edi
008A5417: mov var_18, esp
008A541A: mov var_14, 0040E530h
008A5421: mov eax, [ebp+08h]
008A5424: and eax, 00000001h
008A5427: mov var_10, eax
008A542A: mov eax, [ebp+08h]
008A542D: and al, FEh
008A542F: mov [ebp+08h], eax
008A5432: mov var_0C, 00000000h
008A5439: mov eax, [ebp+08h]
008A543C: mov eax, [eax]
008A543E: push [ebp+08h]
008A5441: call [eax+04h]
008A5444: mov var_04, 00000001h
008A544B: push [ebp+0Ch]
008A544E: lea eax, var_24
008A5451: push eax
008A5452: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008A5457: mov var_04, 00000002h
008A545E: push FFFFFFFFh
008A5460: call 00410A60h ; On Error ...
008A5465: mov var_04, 00000003h
008A546C: lea eax, var_60
008A546F: push eax
008A5470: mov eax, var_24
008A5473: mov eax, [eax]
008A5475: push var_24
008A5478: call [eax+34h]
008A547B: fclex 
008A547D: mov var_64, eax
008A5480: cmp var_64, 00000000h
008A5484: jnl 8A54A0h
008A5486: push 00000034h
008A5488: push 00450154h
008A548D: push var_24
008A5490: push var_64
008A5493: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A5498: mov var_00000088, eax
008A549E: jmp 8A54A7h
008A54A0: and var_00000088, 00000000h
008A54A7: cmp var_60, 00000001h
008A54AB: jnz 008A5628h
008A54B1: mov var_04, 00000004h
008A54B8: cmp word ptr [008F2404h], FFFFh
008A54C0: jnz 008A5574h
008A54C6: mov var_04, 00000005h
008A54CD: mov eax, [ebp+08h]
008A54D0: mov eax, [eax]
008A54D2: push [ebp+08h]
008A54D5: call [eax+00000308h]
008A54DB: push eax
008A54DC: lea eax, var_2C
008A54DF: push eax
008A54E0: call 00410A84h ; Set (object)
008A54E5: lea eax, var_60
008A54E8: push eax
008A54E9: mov eax, var_24
008A54EC: mov eax, [eax]
008A54EE: push var_24
008A54F1: call [eax+34h]
008A54F4: fclex 
008A54F6: mov var_64, eax
008A54F9: cmp var_64, 00000000h
008A54FD: jnl 8A5519h
008A54FF: push 00000034h
008A5501: push 00450154h
008A5506: push var_24
008A5509: push var_64
008A550C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A5511: mov var_0000008C, eax
008A5517: jmp 8A5520h
008A5519: and var_0000008C, 00000000h
008A5520: mov eax, var_2C
008A5523: mov var_80, eax
008A5526: and var_2C, 00000000h
008A552A: push var_80
008A552D: lea eax, var_28
008A5530: push eax
008A5531: call 00410A84h ; Set (object)
008A5536: push 00000000h
008A5538: mov eax, var_60
008A553B: sub eax, 00000001h
008A553E: jo 008A59CBh
008A5544: push eax
008A5545: lea eax, var_28
008A5548: push eax
008A5549: call 007BB47Fh
008A554E: lea eax, var_2C
008A5551: push eax
008A5552: lea eax, var_28
008A5555: push eax
008A5556: push 00000002h
008A5558: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A555D: add esp, 0000000Ch
008A5560: mov var_04, 00000006h
008A5567: and word ptr [008F2404h], 0000h
008A556F: jmp 008A5623h
008A5574: mov var_04, 00000008h
008A557B: mov eax, [ebp+08h]
008A557E: mov eax, [eax]
008A5580: push [ebp+08h]
008A5583: call [eax+00000308h]
008A5589: push eax
008A558A: lea eax, var_2C
008A558D: push eax
008A558E: call 00410A84h ; Set (object)
008A5593: lea eax, var_60
008A5596: push eax
008A5597: mov eax, var_24
008A559A: mov eax, [eax]
008A559C: push var_24
008A559F: call [eax+34h]
008A55A2: fclex 
008A55A4: mov var_64, eax
008A55A7: cmp var_64, 00000000h
008A55AB: jnl 8A55C7h
008A55AD: push 00000034h
008A55AF: push 00450154h
008A55B4: push var_24
008A55B7: push var_64
008A55BA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A55BF: mov var_00000090, eax
008A55C5: jmp 8A55CEh
008A55C7: and var_00000090, 00000000h
008A55CE: mov eax, var_2C
008A55D1: mov var_00000084, eax
008A55D7: and var_2C, 00000000h
008A55DB: push var_00000084
008A55E1: lea eax, var_28
008A55E4: push eax
008A55E5: call 00410A84h ; Set (object)
008A55EA: push 00000001h
008A55EC: mov eax, var_60
008A55EF: sub eax, 00000001h
008A55F2: jo 008A59CBh
008A55F8: push eax
008A55F9: lea eax, var_28
008A55FC: push eax
008A55FD: call 007BB47Fh
008A5602: lea eax, var_2C
008A5605: push eax
008A5606: lea eax, var_28
008A5609: push eax
008A560A: push 00000002h
008A560C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A5611: add esp, 0000000Ch
008A5614: mov var_04, 00000009h
008A561B: or word ptr [008F2404h], FFFFh
008A5623: jmp 008A597Ah
008A5628: mov var_04, 0000000Dh
008A562F: lea eax, var_60
008A5632: push eax
008A5633: mov eax, var_24
008A5636: mov eax, [eax]
008A5638: push var_24
008A563B: call [eax+34h]
008A563E: fclex 
008A5640: mov var_64, eax
008A5643: cmp var_64, 00000000h
008A5647: jnl 8A5663h
008A5649: push 00000034h
008A564B: push 00450154h
008A5650: push var_24
008A5653: push var_64
008A5656: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A565B: mov var_00000094, eax
008A5661: jmp 8A566Ah
008A5663: and var_00000094, 00000000h
008A566A: mov esi, var_60
008A566D: sub esi, 00000001h
008A5670: jo 008A59CBh
008A5676: push 00000000h
008A5678: push 00000010h
008A567A: mov eax, [ebp+08h]
008A567D: mov eax, [eax]
008A567F: push [ebp+08h]
008A5682: call [eax+00000308h]
008A5688: push eax
008A5689: lea eax, var_28
008A568C: push eax
008A568D: call 00410A84h ; Set (object)
008A5692: push eax
008A5693: lea eax, var_3C
008A5696: push eax
008A5697: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A569C: add esp, 00000010h
008A569F: push eax
008A56A0: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008A56A5: movsx eax, ax
008A56A8: sub esi, eax
008A56AA: neg esi
008A56AC: sbb esi, esi
008A56AE: inc esi
008A56AF: neg esi
008A56B1: mov var_68, si
008A56B5: lea ecx, var_28
008A56B8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008A56BD: lea ecx, var_3C
008A56C0: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A56C5: movsx eax, word ptr var_68
008A56C9: test eax, eax
008A56CB: jz 008A5802h
008A56D1: mov var_04, 0000000Eh
008A56D8: push 00000000h
008A56DA: push 00000011h
008A56DC: mov eax, [ebp+08h]
008A56DF: mov eax, [eax]
008A56E1: push [ebp+08h]
008A56E4: call [eax+00000308h]
008A56EA: push eax
008A56EB: lea eax, var_28
008A56EE: push eax
008A56EF: call 00410A84h ; Set (object)
008A56F4: push eax
008A56F5: lea eax, var_3C
008A56F8: push eax
008A56F9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A56FE: add esp, 00000010h
008A5701: push eax
008A5702: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A5707: push 00000001h
008A5709: pop ecx
008A570A: sub ecx, eax
008A570C: jo 008A59CBh
008A5712: mov var_44, ecx
008A5715: mov var_4C, 00000003h
008A571C: push 00000010h
008A571E: pop eax
008A571F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A5724: lea esi, var_4C
008A5727: mov edi, esp
008A5729: movsd 
008A572A: movsd 
008A572B: movsd 
008A572C: movsd 
008A572D: push 00000011h
008A572F: mov eax, [ebp+08h]
008A5732: mov eax, [eax]
008A5734: push [ebp+08h]
008A5737: call [eax+00000308h]
008A573D: push eax
008A573E: lea eax, var_2C
008A5741: push eax
008A5742: call 00410A84h ; Set (object)
008A5747: push eax
008A5748: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008A574D: lea eax, var_2C
008A5750: push eax
008A5751: lea eax, var_28
008A5754: push eax
008A5755: push 00000002h
008A5757: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A575C: add esp, 0000000Ch
008A575F: lea ecx, var_3C
008A5762: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A5767: mov var_04, 0000000Fh
008A576E: or var_44, FFFFFFFFh
008A5772: mov var_4C, 0000000Bh
008A5779: push 00000010h
008A577B: pop eax
008A577C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A5781: lea esi, var_4C
008A5784: mov edi, esp
008A5786: movsd 
008A5787: movsd 
008A5788: movsd 
008A5789: movsd 
008A578A: push 0000000Fh
008A578C: mov eax, [ebp+08h]
008A578F: mov eax, [eax]
008A5791: push [ebp+08h]
008A5794: call [eax+00000308h]
008A579A: push eax
008A579B: lea eax, var_28
008A579E: push eax
008A579F: call 00410A84h ; Set (object)
008A57A4: push eax
008A57A5: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008A57AA: lea ecx, var_28
008A57AD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008A57B2: mov var_04, 00000010h
008A57B9: and var_44, 00000000h
008A57BD: mov var_4C, 0000000Bh
008A57C4: push 00000010h
008A57C6: pop eax
008A57C7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A57CC: lea esi, var_4C
008A57CF: mov edi, esp
008A57D1: movsd 
008A57D2: movsd 
008A57D3: movsd 
008A57D4: movsd 
008A57D5: push 0000000Fh
008A57D7: mov eax, [ebp+08h]
008A57DA: mov eax, [eax]
008A57DC: push [ebp+08h]
008A57DF: call [eax+00000308h]
008A57E5: push eax
008A57E6: lea eax, var_28
008A57E9: push eax
008A57EA: call 00410A84h ; Set (object)
008A57EF: push eax
008A57F0: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008A57F5: lea ecx, var_28
008A57F8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008A57FD: jmp 008A597Ah
008A5802: mov var_04, 00000012h
008A5809: and var_44, 00000000h
008A580D: mov var_4C, 00000003h
008A5814: push 00000010h
008A5816: pop eax
008A5817: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A581C: lea esi, var_4C
008A581F: mov edi, esp
008A5821: movsd 
008A5822: movsd 
008A5823: movsd 
008A5824: movsd 
008A5825: push 00000011h
008A5827: mov eax, [ebp+08h]
008A582A: mov eax, [eax]
008A582C: push [ebp+08h]
008A582F: call [eax+00000308h]
008A5835: push eax
008A5836: lea eax, var_28
008A5839: push eax
008A583A: call 00410A84h ; Set (object)
008A583F: push eax
008A5840: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008A5845: lea ecx, var_28
008A5848: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008A584D: mov var_04, 00000013h
008A5854: lea eax, var_60
008A5857: push eax
008A5858: mov eax, var_24
008A585B: mov eax, [eax]
008A585D: push var_24
008A5860: call [eax+34h]
008A5863: fclex 
008A5865: mov var_64, eax
008A5868: cmp var_64, 00000000h
008A586C: jnl 8A5888h
008A586E: push 00000034h
008A5870: push 00450154h
008A5875: push var_24
008A5878: push var_64
008A587B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A5880: mov var_00000098, eax
008A5886: jmp 8A588Fh
008A5888: and var_00000098, 00000000h
008A588F: mov ecx, var_60
008A5892: sub ecx, 00000001h
008A5895: jo 008A59CBh
008A589B: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008A58A0: mov var_44, ax
008A58A4: mov var_4C, 00000002h
008A58AB: push 00000010h
008A58AD: pop eax
008A58AE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A58B3: lea esi, var_4C
008A58B6: mov edi, esp
008A58B8: movsd 
008A58B9: movsd 
008A58BA: movsd 
008A58BB: movsd 
008A58BC: push 00000010h
008A58BE: mov eax, [ebp+08h]
008A58C1: mov eax, [eax]
008A58C3: push [ebp+08h]
008A58C6: call [eax+00000308h]
008A58CC: push eax
008A58CD: lea eax, var_28
008A58D0: push eax
008A58D1: call 00410A84h ; Set (object)
008A58D6: push eax
008A58D7: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008A58DC: lea ecx, var_28
008A58DF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008A58E4: mov var_04, 00000014h
008A58EB: or var_44, FFFFFFFFh
008A58EF: mov var_4C, 0000000Bh
008A58F6: push 00000010h
008A58F8: pop eax
008A58F9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A58FE: lea esi, var_4C
008A5901: mov edi, esp
008A5903: movsd 
008A5904: movsd 
008A5905: movsd 
008A5906: movsd 
008A5907: push 0000000Fh
008A5909: mov eax, [ebp+08h]
008A590C: mov eax, [eax]
008A590E: push [ebp+08h]
008A5911: call [eax+00000308h]
008A5917: push eax
008A5918: lea eax, var_28
008A591B: push eax
008A591C: call 00410A84h ; Set (object)
008A5921: push eax
008A5922: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008A5927: lea ecx, var_28
008A592A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008A592F: mov var_04, 00000015h
008A5936: and var_44, 00000000h
008A593A: mov var_4C, 0000000Bh
008A5941: push 00000010h
008A5943: pop eax
008A5944: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A5949: lea esi, var_4C
008A594C: mov edi, esp
008A594E: movsd 
008A594F: movsd 
008A5950: movsd 
008A5951: movsd 
008A5952: push 0000000Fh
008A5954: mov eax, [ebp+08h]
008A5957: mov eax, [eax]
008A5959: push [ebp+08h]
008A595C: call [eax+00000308h]
008A5962: push eax
008A5963: lea eax, var_28
008A5966: push eax
008A5967: call 00410A84h ; Set (object)
008A596C: push eax
008A596D: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008A5972: lea ecx, var_28
008A5975: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008A597A: mov var_10, 00000000h
008A5981: push 008A59ACh
008A5986: jmp 8A59A3h
008A5988: lea eax, var_2C
008A598B: push eax
008A598C: lea eax, var_28
008A598F: push eax
008A5990: push 00000002h
008A5992: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A5997: add esp, 0000000Ch
008A599A: lea ecx, var_3C
008A599D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A59A2: ret 
End Sub

Private sub lstWnds__8A59D0
008A59D0: push ebp
008A59D1: mov ebp, esp
008A59D3: sub esp, 0000000Ch
008A59D6: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008A59DB: mov eax, fs:[00h]
008A59E1: push eax
008A59E2: mov fs:[00000000h], esp
008A59E9: push 00000054h
008A59EB: pop eax
008A59EC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A59F1: push ebx
008A59F2: push esi
008A59F3: push edi
008A59F4: mov var_0C, esp
008A59F7: mov var_08, 0040E5B0h
008A59FE: mov eax, [ebp+08h]
008A5A01: and eax, 00000001h
008A5A04: mov var_04, eax
008A5A07: mov eax, [ebp+08h]
008A5A0A: and al, FEh
008A5A0C: mov [ebp+08h], eax
008A5A0F: mov eax, [ebp+08h]
008A5A12: mov eax, [eax]
008A5A14: push [ebp+08h]
008A5A17: call [eax+04h]
008A5A1A: mov eax, [ebp+0Ch]
008A5A1D: cmp word ptr [eax], 0002h
008A5A21: jnz 008A5AFBh
008A5A27: mov var_50, 80020004h
008A5A2E: mov var_58, 0000000Ah
008A5A35: mov var_40, 80020004h
008A5A3C: mov var_48, 0000000Ah
008A5A43: mov var_30, 80020004h
008A5A4A: mov var_38, 0000000Ah
008A5A51: mov var_20, 80020004h
008A5A58: mov var_28, 0000000Ah
008A5A5F: push 00000010h
008A5A61: pop eax
008A5A62: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A5A67: lea esi, var_58
008A5A6A: mov edi, esp
008A5A6C: movsd 
008A5A6D: movsd 
008A5A6E: movsd 
008A5A6F: movsd 
008A5A70: push 00000010h
008A5A72: pop eax
008A5A73: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A5A78: lea esi, var_48
008A5A7B: mov edi, esp
008A5A7D: movsd 
008A5A7E: movsd 
008A5A7F: movsd 
008A5A80: movsd 
008A5A81: push 00000010h
008A5A83: pop eax
008A5A84: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A5A89: lea esi, var_38
008A5A8C: mov edi, esp
008A5A8E: movsd 
008A5A8F: movsd 
008A5A90: movsd 
008A5A91: movsd 
008A5A92: push 00000010h
008A5A94: pop eax
008A5A95: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A5A9A: lea esi, var_28
008A5A9D: mov edi, esp
008A5A9F: movsd 
008A5AA0: movsd 
008A5AA1: movsd 
008A5AA2: movsd 
008A5AA3: mov eax, [ebp+08h]
008A5AA6: mov eax, [eax]
008A5AA8: push [ebp+08h]
008A5AAB: call [eax+00000300h]
008A5AB1: push eax
008A5AB2: lea eax, var_18
008A5AB5: push eax
008A5AB6: call 00410A84h ; Set (object)
008A5ABB: push eax
008A5ABC: mov eax, [ebp+08h]
008A5ABF: mov eax, [eax]
008A5AC1: push [ebp+08h]
008A5AC4: call [eax+000002BCh]
008A5ACA: fclex 
008A5ACC: mov var_5C, eax
008A5ACF: cmp var_5C, 00000000h
008A5AD3: jnl 8A5AEFh
008A5AD5: push 000002BCh
008A5ADA: push 00449324h
008A5ADF: push [ebp+08h]
008A5AE2: push var_5C
008A5AE5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A5AEA: mov var_68, eax
008A5AED: jmp 8A5AF3h
008A5AEF: and var_68, 00000000h
008A5AF3: lea ecx, var_18
008A5AF6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008A5AFB: mov var_04, 00000000h
008A5B02: push 008A5B13h
008A5B07: jmp 8A5B12h
008A5B09: lea ecx, var_18
008A5B0C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008A5B11: ret 
End Sub

Private sub Timer1__8A7C2E
008A7C2E: push ebp
008A7C2F: mov ebp, esp
008A7C31: sub esp, 0000000Ch
008A7C34: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008A7C39: mov eax, fs:[00h]
008A7C3F: push eax
008A7C40: mov fs:[00000000h], esp
008A7C47: push 0000003Ch
008A7C49: pop eax
008A7C4A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A7C4F: push ebx
008A7C50: push esi
008A7C51: push edi
008A7C52: mov var_0C, esp
008A7C55: mov var_08, 0040E5E8h
008A7C5C: mov eax, [ebp+08h]
008A7C5F: and eax, 00000001h
008A7C62: mov var_04, eax
008A7C65: mov eax, [ebp+08h]
008A7C68: and al, FEh
008A7C6A: mov [ebp+08h], eax
008A7C6D: mov eax, [ebp+08h]
008A7C70: mov eax, [eax]
008A7C72: push [ebp+08h]
008A7C75: call [eax+04h]
008A7C78: cmp [008F2010h], 00000000h
008A7C7F: jnz 8A7C99h
008A7C81: push 008F2010h
008A7C86: push 00433984h
008A7C8B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A7C90: mov var_40, 008F2010h
008A7C97: jmp 8A7CA0h
008A7C99: mov var_40, 008F2010h
008A7CA0: mov eax, var_40
008A7CA3: mov eax, [eax]
008A7CA5: mov ecx, var_40
008A7CA8: mov ecx, [ecx]
008A7CAA: mov ecx, [ecx]
008A7CAC: push eax
008A7CAD: call [ecx+00000380h]
008A7CB3: push eax
008A7CB4: lea eax, var_18
008A7CB7: push eax
008A7CB8: call 00410A84h ; Set (object)
008A7CBD: mov var_24, eax
008A7CC0: lea eax, var_1C
008A7CC3: push eax
008A7CC4: push 00000003h
008A7CC6: mov eax, var_24
008A7CC9: mov eax, [eax]
008A7CCB: push var_24
008A7CCE: call [eax+40h]
008A7CD1: fclex 
008A7CD3: mov var_28, eax
008A7CD6: cmp var_28, 00000000h
008A7CDA: jnl 8A7CF3h
008A7CDC: push 00000040h
008A7CDE: push 00440DE8h
008A7CE3: push var_24
008A7CE6: push var_28
008A7CE9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A7CEE: mov var_44, eax
008A7CF1: jmp 8A7CF7h
008A7CF3: and var_44, 00000000h
008A7CF7: mov eax, var_1C
008A7CFA: mov var_2C, eax
008A7CFD: lea eax, var_20
008A7D00: push eax
008A7D01: mov eax, var_2C
008A7D04: mov eax, [eax]
008A7D06: push var_2C
008A7D09: call [eax+000000E0h]
008A7D0F: fclex 
008A7D11: mov var_30, eax
008A7D14: cmp var_30, 00000000h
008A7D18: jnl 8A7D34h
008A7D1A: push 000000E0h
008A7D1F: push 00440DF8h
008A7D24: push var_2C
008A7D27: push var_30
008A7D2A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A7D2F: mov var_48, eax
008A7D32: jmp 8A7D38h
008A7D34: and var_48, 00000000h
008A7D38: xor eax, eax
008A7D3A: cmp word ptr var_20, 0001h
008A7D3F: setz al
008A7D42: neg eax
008A7D44: mov var_34, ax
008A7D48: lea eax, var_1C
008A7D4B: push eax
008A7D4C: lea eax, var_18
008A7D4F: push eax
008A7D50: push 00000002h
008A7D52: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A7D57: add esp, 0000000Ch
008A7D5A: movsx eax, word ptr var_34
008A7D5E: test eax, eax
008A7D60: jz 8A7DA0h
008A7D62: and word ptr var_20, 0000h
008A7D67: lea eax, var_20
008A7D6A: push eax
008A7D6B: mov eax, [ebp+08h]
008A7D6E: mov eax, [eax]
008A7D70: push [ebp+08h]
008A7D73: call [eax+00000708h]
008A7D79: mov var_24, eax
008A7D7C: cmp var_24, 00000000h
008A7D80: jnl 8A7D9Ch
008A7D82: push 00000708h
008A7D87: push 00440410h
008A7D8C: push [ebp+08h]
008A7D8F: push var_24
008A7D92: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A7D97: mov var_4C, eax
008A7D9A: jmp 8A7DA0h
008A7D9C: and var_4C, 00000000h
008A7DA0: mov eax, [ebp+08h]
008A7DA3: mov eax, [eax]
008A7DA5: push [ebp+08h]
008A7DA8: call [eax+000002FCh]
008A7DAE: push eax
008A7DAF: lea eax, var_18
008A7DB2: push eax
008A7DB3: call 00410A84h ; Set (object)
008A7DB8: mov var_24, eax
008A7DBB: push 00000000h
008A7DBD: mov eax, var_24
008A7DC0: mov eax, [eax]
008A7DC2: push var_24
008A7DC5: call [eax+5Ch]
008A7DC8: fclex 
008A7DCA: mov var_28, eax
008A7DCD: cmp var_28, 00000000h
008A7DD1: jnl 8A7DEAh
008A7DD3: push 0000005Ch
008A7DD5: push 00447A20h
008A7DDA: push var_24
008A7DDD: push var_28
008A7DE0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A7DE5: mov var_50, eax
008A7DE8: jmp 8A7DEEh
008A7DEA: and var_50, 00000000h
008A7DEE: lea ecx, var_18
008A7DF1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008A7DF6: mov var_04, 00000000h
008A7DFD: push 008A7E18h
008A7E02: jmp 8A7E17h
008A7E04: lea eax, var_1C
008A7E07: push eax
008A7E08: lea eax, var_18
008A7E0B: push eax
008A7E0C: push 00000002h
008A7E0E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A7E13: add esp, 0000000Ch
008A7E16: ret 
End Sub

