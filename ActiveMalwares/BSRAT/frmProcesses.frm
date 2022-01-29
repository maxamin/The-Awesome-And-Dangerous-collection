VERSION 5.00
Begin VB.Form frmProcesses
  Caption = "Process manager"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmProcesses.frx":0
  LinkTopic = "Form1"
  ClientLeft = 225
  ClientTop = 555
  ClientWidth = 13725
  ClientHeight = 6645
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer Timer1
    Interval = 800
    Left = 8400
    Top = 0
  End
  Begin MSComctlLib.ListView lstProc
    Left = 0
    Top = 0
    Width = 13695
    Height = 6615
    TabIndex = 0
  End
  Begin VB.Menu mnuProcessMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu MnuProcesses
      Index = 0
      Caption = "Refresh"
    End
    Begin VB.Menu MnuProcesses
      Index = 1
      Caption = "-"
    End
    Begin VB.Menu MnuProcesses
      Index = 2
      Caption = "Resume"
    End
    Begin VB.Menu MnuProcesses
      Index = 3
      Caption = "Suspend"
    End
    Begin VB.Menu MnuProcesses
      Index = 4
      Caption = "-"
    End
    Begin VB.Menu MnuProcesses
      Index = 5
      Caption = "Kill"
    End
  End
End

Attribute VB_Name = "frmProcesses"


Private sub Form__817CB2
00817CB2: push ebp
00817CB3: mov ebp, esp
00817CB5: sub esp, 0000000Ch
00817CB8: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00817CBD: mov eax, fs:[00h]
00817CC3: push eax
00817CC4: mov fs:[00000000h], esp
00817CCB: push 00000038h
00817CCD: pop eax
00817CCE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00817CD3: push ebx
00817CD4: push esi
00817CD5: push edi
00817CD6: mov var_0C, esp
00817CD9: mov var_08, 0040AC80h
00817CE0: mov eax, [ebp+08h]
00817CE3: and eax, 00000001h
00817CE6: mov var_04, eax
00817CE9: mov eax, [ebp+08h]
00817CEC: and al, FEh
00817CEE: mov [ebp+08h], eax
00817CF1: mov eax, [ebp+08h]
00817CF4: mov eax, [eax]
00817CF6: push [ebp+08h]
00817CF9: call [eax+04h]
00817CFC: cmp [008F2010h], 00000000h
00817D03: jnz 817D1Dh
00817D05: push 008F2010h
00817D0A: push 00433984h
00817D0F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00817D14: mov var_40, 008F2010h
00817D1B: jmp 817D24h
00817D1D: mov var_40, 008F2010h
00817D24: mov eax, var_40
00817D27: mov eax, [eax]
00817D29: mov ecx, var_40
00817D2C: mov ecx, [ecx]
00817D2E: mov ecx, [ecx]
00817D30: push eax
00817D31: call [ecx+00000380h]
00817D37: push eax
00817D38: lea eax, var_18
00817D3B: push eax
00817D3C: call 00410A84h ; Set (object)
00817D41: mov var_24, eax
00817D44: lea eax, var_1C
00817D47: push eax
00817D48: push 00000003h
00817D4A: mov eax, var_24
00817D4D: mov eax, [eax]
00817D4F: push var_24
00817D52: call [eax+40h]
00817D55: fclex 
00817D57: mov var_28, eax
00817D5A: cmp var_28, 00000000h
00817D5E: jnl 817D77h
00817D60: push 00000040h
00817D62: push 00440DE8h
00817D67: push var_24
00817D6A: push var_28
00817D6D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00817D72: mov var_44, eax
00817D75: jmp 817D7Bh
00817D77: and var_44, 00000000h
00817D7B: mov eax, var_1C
00817D7E: mov var_2C, eax
00817D81: lea eax, var_20
00817D84: push eax
00817D85: mov eax, var_2C
00817D88: mov eax, [eax]
00817D8A: push var_2C
00817D8D: call [eax+000000E0h]
00817D93: fclex 
00817D95: mov var_30, eax
00817D98: cmp var_30, 00000000h
00817D9C: jnl 817DB8h
00817D9E: push 000000E0h
00817DA3: push 00440DF8h
00817DA8: push var_2C
00817DAB: push var_30
00817DAE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00817DB3: mov var_48, eax
00817DB6: jmp 817DBCh
00817DB8: and var_48, 00000000h
00817DBC: xor eax, eax
00817DBE: cmp word ptr var_20, 0001h
00817DC3: setz al
00817DC6: neg eax
00817DC8: mov var_34, ax
00817DCC: lea eax, var_1C
00817DCF: push eax
00817DD0: lea eax, var_18
00817DD3: push eax
00817DD4: push 00000002h
00817DD6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00817DDB: add esp, 0000000Ch
00817DDE: movsx eax, word ptr var_34
00817DE2: test eax, eax
00817DE4: jz 817E24h
00817DE6: and word ptr var_20, 0000h
00817DEB: lea eax, var_20
00817DEE: push eax
00817DEF: mov eax, [ebp+08h]
00817DF2: mov eax, [eax]
00817DF4: push [ebp+08h]
00817DF7: call [eax+0000070Ch]
00817DFD: mov var_24, eax
00817E00: cmp var_24, 00000000h
00817E04: jnl 817E20h
00817E06: push 0000070Ch
00817E0B: push 00440350h
00817E10: push [ebp+08h]
00817E13: push var_24
00817E16: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00817E1B: mov var_4C, eax
00817E1E: jmp 817E24h
00817E20: and var_4C, 00000000h
00817E24: mov var_04, 00000000h
00817E2B: push 00817E46h
00817E30: jmp 817E45h
00817E32: lea eax, var_1C
00817E35: push eax
00817E36: lea eax, var_18
00817E39: push eax
00817E3A: push 00000002h
00817E3C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00817E41: add esp, 0000000Ch
00817E44: ret 
End Sub

Private sub Form__817E65
00817E65: push ebp
00817E66: mov ebp, esp
00817E68: sub esp, 00000018h
00817E6B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00817E70: mov eax, fs:[00h]
00817E76: push eax
00817E77: mov fs:[00000000h], esp
00817E7E: mov eax, 000000B0h
00817E83: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00817E88: push ebx
00817E89: push esi
00817E8A: push edi
00817E8B: mov var_18, esp
00817E8E: mov var_14, 0040AC90h
00817E95: mov eax, [ebp+08h]
00817E98: and eax, 00000001h
00817E9B: mov var_10, eax
00817E9E: mov eax, [ebp+08h]
00817EA1: and al, FEh
00817EA3: mov [ebp+08h], eax
00817EA6: mov var_0C, 00000000h
00817EAD: mov eax, [ebp+08h]
00817EB0: mov eax, [eax]
00817EB2: push [ebp+08h]
00817EB5: call [eax+04h]
00817EB8: mov var_04, 00000001h
00817EBF: mov var_04, 00000002h
00817EC6: push FFFFFFFFh
00817EC8: call 00410A60h ; On Error ...
00817ECD: mov var_04, 00000003h
00817ED4: fldz 
00817ED6: fstp real4 ptr var_2C
00817ED9: mov var_34, 00000004h
00817EE0: and var_4C, 00000000h
00817EE4: mov var_54, 00000002h
00817EEB: lea eax, var_000000A8
00817EF1: push eax
00817EF2: mov eax, [ebp+08h]
00817EF5: mov eax, [eax]
00817EF7: push [ebp+08h]
00817EFA: call [eax+00000080h]
00817F00: fclex 
00817F02: mov var_000000B0, eax
00817F08: cmp var_000000B0, 00000000h
00817F0F: jnl 817F31h
00817F11: push 00000080h
00817F16: push 00444D84h
00817F1B: push [ebp+08h]
00817F1E: push var_000000B0
00817F24: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00817F29: mov var_000000CC, eax
00817F2F: jmp 817F38h
00817F31: and var_000000CC, 00000000h
00817F38: fld real4 ptr var_000000A8
00817F3E: fsub real4 ptr [00402BB0h]
00817F44: fstp real4 ptr var_6C
00817F47: fstsw ax
00817F49: test al, 0Dh
00817F4B: jnz 0081807Ah
00817F51: mov var_74, 00000004h
00817F58: lea eax, var_000000AC
00817F5E: push eax
00817F5F: mov eax, [ebp+08h]
00817F62: mov eax, [eax]
00817F64: push [ebp+08h]
00817F67: call [eax+00000088h]
00817F6D: fclex 
00817F6F: mov var_000000B4, eax
00817F75: cmp var_000000B4, 00000000h
00817F7C: jnl 817F9Eh
00817F7E: push 00000088h
00817F83: push 00444D84h
00817F88: push [ebp+08h]
00817F8B: push var_000000B4
00817F91: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00817F96: mov var_000000D0, eax
00817F9C: jmp 817FA5h
00817F9E: and var_000000D0, 00000000h
00817FA5: fld real4 ptr var_000000AC
00817FAB: fsub real4 ptr [00402B54h]
00817FB1: fstp real4 ptr var_0000008C
00817FB7: fstsw ax
00817FB9: test al, 0Dh
00817FBB: jnz 0081807Ah
00817FC1: mov var_00000094, 00000004h
00817FCB: push 00000010h
00817FCD: pop eax
00817FCE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00817FD3: lea esi, var_34
00817FD6: mov edi, esp
00817FD8: movsd 
00817FD9: movsd 
00817FDA: movsd 
00817FDB: movsd 
00817FDC: push 00000010h
00817FDE: pop eax
00817FDF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00817FE4: lea esi, var_54
00817FE7: mov edi, esp
00817FE9: movsd 
00817FEA: movsd 
00817FEB: movsd 
00817FEC: movsd 
00817FED: push 00000010h
00817FEF: pop eax
00817FF0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00817FF5: lea esi, var_74
00817FF8: mov edi, esp
00817FFA: movsd 
00817FFB: movsd 
00817FFC: movsd 
00817FFD: movsd 
00817FFE: push 00000010h
00818000: pop eax
00818001: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00818006: lea esi, var_00000094
0081800C: mov edi, esp
0081800E: movsd 
0081800F: movsd 
00818010: movsd 
00818011: movsd 
00818012: push 00000004h
00818014: push 80011002h
00818019: mov eax, [ebp+08h]
0081801C: mov eax, [eax]
0081801E: push [ebp+08h]
00818021: call [eax+00000308h]
00818027: push eax
00818028: lea eax, var_24
0081802B: push eax
0081802C: call 00410A84h ; Set (object)
00818031: push eax
00818032: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00818037: add esp, 0000004Ch
0081803A: lea ecx, var_24
0081803D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00818042: mov var_10, 00000000h
00818049: wait 
0081804A: push 0081805Bh
0081804F: jmp 81805Ah
00818051: lea ecx, var_24
00818054: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00818059: ret 
End Sub

Private sub MnuProcesses__81888A
0081888A: push ebp
0081888B: mov ebp, esp
0081888D: sub esp, 0000000Ch
00818890: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00818895: mov eax, fs:[00h]
0081889B: push eax
0081889C: mov fs:[00000000h], esp
008188A3: mov eax, 0000015Ch
008188A8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008188AD: push ebx
008188AE: push esi
008188AF: push edi
008188B0: mov var_0C, esp
008188B3: mov var_08, 0040AD58h
008188BA: mov eax, [ebp+08h]
008188BD: and eax, 00000001h
008188C0: mov var_04, eax
008188C3: mov eax, [ebp+08h]
008188C6: and al, FEh
008188C8: mov [ebp+08h], eax
008188CB: mov eax, [ebp+08h]
008188CE: mov eax, [eax]
008188D0: push [ebp+08h]
008188D3: call [eax+04h]
008188D6: mov eax, [ebp+0Ch]
008188D9: mov ax, [eax]
008188DC: mov var_0000010C, ax
008188E3: movsx eax, word ptr var_0000010C
008188EA: mov var_00000124, eax
008188F0: cmp var_00000124, 00000000h
008188F7: jz 818925h
008188F9: cmp var_00000124, 00000002h
00818900: jz 00818A04h
00818906: cmp var_00000124, 00000003h
0081890D: jz 00818EB6h
00818913: cmp var_00000124, 00000005h
0081891A: jz 00819368h
00818920: jmp 00819815h
00818925: lea eax, var_2C
00818928: push eax
00818929: mov eax, [ebp+08h]
0081892C: mov eax, [eax]
0081892E: push [ebp+08h]
00818931: call [eax+000001C0h]
00818937: fclex 
00818939: mov var_00000098, eax
0081893F: cmp var_00000098, 00000000h
00818946: jnl 818968h
00818948: push 000001C0h
0081894D: push 00444D84h
00818952: push [ebp+08h]
00818955: push var_00000098
0081895B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00818960: mov var_00000128, eax
00818966: jmp 81896Fh
00818968: and var_00000128, 00000000h
0081896F: push var_2C
00818972: call 004109DCh ; Val(arg_1)
00818977: fstp real8 ptr var_00000094
0081897D: push 00000000h
0081897F: push 00000000h
00818981: push 00000001h
00818983: push 00000000h
00818985: lea eax, var_54
00818988: push eax
00818989: push 00000010h
0081898B: push 00000880h
00818990: call 00410946h ; ReDim
00818995: add esp, 0000001Ch
00818998: mov var_5C, 00442938h
0081899F: mov var_64, 00000008h
008189A6: lea esi, var_64
008189A9: push 00000000h
008189AB: push var_54
008189AE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008189B3: mov ecx, eax
008189B5: mov edx, esi
008189B7: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008189BC: mov edx, 0043D69Ch ; x54
008189C1: lea ecx, var_30
008189C4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008189C9: lea eax, var_54
008189CC: push eax
008189CD: lea eax, var_30
008189D0: push eax
008189D1: fld real8 ptr var_00000094
008189D7: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008189DC: push eax
008189DD: call 007A6910h
008189E2: lea eax, var_54
008189E5: push eax
008189E6: push 00000000h
008189E8: call 00410934h ; Erase
008189ED: lea eax, var_30
008189F0: push eax
008189F1: lea eax, var_2C
008189F4: push eax
008189F5: push 00000002h
008189F7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008189FC: add esp, 0000000Ch
008189FF: jmp 00819815h
00818A04: mov var_5C, 00000001h
00818A0B: mov var_64, 00000002h
00818A12: push 004412BCh
00818A17: push 00000000h
00818A19: push 00000007h
00818A1B: mov eax, [ebp+08h]
00818A1E: mov eax, [eax]
00818A20: push [ebp+08h]
00818A23: call [eax+00000308h]
00818A29: push eax
00818A2A: lea eax, var_38
00818A2D: push eax
00818A2E: call 00410A84h ; Set (object)
00818A33: push eax
00818A34: lea eax, var_50
00818A37: push eax
00818A38: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00818A3D: add esp, 00000010h
00818A40: push eax
00818A41: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00818A46: push eax
00818A47: lea eax, var_3C
00818A4A: push eax
00818A4B: call 00410A84h ; Set (object)
00818A50: mov var_00000098, eax
00818A56: lea eax, var_0000008C
00818A5C: push eax
00818A5D: mov eax, var_00000098
00818A63: mov eax, [eax]
00818A65: push var_00000098
00818A6B: call [eax+1Ch]
00818A6E: fclex 
00818A70: mov var_0000009C, eax
00818A76: cmp var_0000009C, 00000000h
00818A7D: jnl 818A9Fh
00818A7F: push 0000001Ch
00818A81: push 004412BCh
00818A86: push var_00000098
00818A8C: push var_0000009C
00818A92: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00818A97: mov var_0000012C, eax
00818A9D: jmp 818AA6h
00818A9F: and var_0000012C, 00000000h
00818AA6: mov eax, var_0000008C
00818AAC: mov var_6C, eax
00818AAF: mov var_74, 00000003h
00818AB6: mov var_7C, 00000001h
00818ABD: mov var_00000084, 00000002h
00818AC7: lea eax, var_64
00818ACA: push eax
00818ACB: lea eax, var_74
00818ACE: push eax
00818ACF: lea eax, var_00000084
00818AD5: push eax
00818AD6: lea eax, var_000000C8
00818ADC: push eax
00818ADD: lea eax, var_000000B8
00818AE3: push eax
00818AE4: lea eax, var_24
00818AE7: push eax
00818AE8: call 00410A3Ch ; For
00818AED: mov var_00000118, eax
00818AF3: lea eax, var_3C
00818AF6: push eax
00818AF7: lea eax, var_38
00818AFA: push eax
00818AFB: push 00000002h
00818AFD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00818B02: add esp, 0000000Ch
00818B05: lea ecx, var_50
00818B08: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00818B0D: jmp 00818DCBh
00818B12: push 004412BCh
00818B17: push 00000000h
00818B19: push 00000007h
00818B1B: mov eax, [ebp+08h]
00818B1E: mov eax, [eax]
00818B20: push [ebp+08h]
00818B23: call [eax+00000308h]
00818B29: push eax
00818B2A: lea eax, var_38
00818B2D: push eax
00818B2E: call 00410A84h ; Set (object)
00818B33: push eax
00818B34: lea eax, var_50
00818B37: push eax
00818B38: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00818B3D: add esp, 00000010h
00818B40: push eax
00818B41: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00818B46: push eax
00818B47: lea eax, var_3C
00818B4A: push eax
00818B4B: call 00410A84h ; Set (object)
00818B50: mov var_00000098, eax
00818B56: lea eax, var_40
00818B59: push eax
00818B5A: lea eax, var_24
00818B5D: push eax
00818B5E: mov eax, var_00000098
00818B64: mov eax, [eax]
00818B66: push var_00000098
00818B6C: call [eax+24h]
00818B6F: fclex 
00818B71: mov var_0000009C, eax
00818B77: cmp var_0000009C, 00000000h
00818B7E: jnl 818BA0h
00818B80: push 00000024h
00818B82: push 004412BCh
00818B87: push var_00000098
00818B8D: push var_0000009C
00818B93: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00818B98: mov var_00000130, eax
00818B9E: jmp 818BA7h
00818BA0: and var_00000130, 00000000h
00818BA7: mov eax, var_40
00818BAA: mov var_000000A0, eax
00818BB0: lea eax, var_00000088
00818BB6: push eax
00818BB7: mov eax, var_000000A0
00818BBD: mov eax, [eax]
00818BBF: push var_000000A0
00818BC5: call [eax+5Ch]
00818BC8: fclex 
00818BCA: mov var_000000A4, eax
00818BD0: cmp var_000000A4, 00000000h
00818BD7: jnl 818BF9h
00818BD9: push 0000005Ch
00818BDB: push 004412DCh
00818BE0: push var_000000A0
00818BE6: push var_000000A4
00818BEC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00818BF1: mov var_00000134, eax
00818BF7: jmp 818C00h
00818BF9: and var_00000134, 00000000h
00818C00: xor eax, eax
00818C02: cmp word ptr var_00000088, FFFFh
00818C0A: setz al
00818C0D: neg eax
00818C0F: mov var_000000A8, ax
00818C16: lea eax, var_40
00818C19: push eax
00818C1A: lea eax, var_3C
00818C1D: push eax
00818C1E: lea eax, var_38
00818C21: push eax
00818C22: push 00000003h
00818C24: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00818C29: add esp, 00000010h
00818C2C: lea ecx, var_50
00818C2F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00818C34: movsx eax, word ptr var_000000A8
00818C3B: test eax, eax
00818C3D: jz 00818DAEh
00818C43: push 004412BCh
00818C48: push 00000000h
00818C4A: push 00000007h
00818C4C: mov eax, [ebp+08h]
00818C4F: mov eax, [eax]
00818C51: push [ebp+08h]
00818C54: call [eax+00000308h]
00818C5A: push eax
00818C5B: lea eax, var_38
00818C5E: push eax
00818C5F: call 00410A84h ; Set (object)
00818C64: push eax
00818C65: lea eax, var_50
00818C68: push eax
00818C69: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00818C6E: add esp, 00000010h
00818C71: push eax
00818C72: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00818C77: push eax
00818C78: lea eax, var_3C
00818C7B: push eax
00818C7C: call 00410A84h ; Set (object)
00818C81: mov var_00000098, eax
00818C87: lea eax, var_40
00818C8A: push eax
00818C8B: lea eax, var_24
00818C8E: push eax
00818C8F: mov eax, var_00000098
00818C95: mov eax, [eax]
00818C97: push var_00000098
00818C9D: call [eax+24h]
00818CA0: fclex 
00818CA2: mov var_0000009C, eax
00818CA8: cmp var_0000009C, 00000000h
00818CAF: jnl 818CD1h
00818CB1: push 00000024h
00818CB3: push 004412BCh
00818CB8: push var_00000098
00818CBE: push var_0000009C
00818CC4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00818CC9: mov var_00000138, eax
00818CCF: jmp 818CD8h
00818CD1: and var_00000138, 00000000h
00818CD8: mov eax, var_40
00818CDB: mov var_000000A0, eax
00818CE1: lea eax, var_2C
00818CE4: push eax
00818CE5: push 00000002h
00818CE7: mov eax, var_000000A0
00818CED: mov eax, [eax]
00818CEF: push var_000000A0
00818CF5: call [eax+00000084h]
00818CFB: fclex 
00818CFD: mov var_000000A4, eax
00818D03: cmp var_000000A4, 00000000h
00818D0A: jnl 818D2Fh
00818D0C: push 00000084h
00818D11: push 004412DCh
00818D16: push var_000000A0
00818D1C: push var_000000A4
00818D22: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00818D27: mov var_0000013C, eax
00818D2D: jmp 818D36h
00818D2F: and var_0000013C, 00000000h
00818D36: push var_28
00818D39: push var_2C
00818D3C: call 004109DCh ; Val(arg_1)
00818D41: push ecx
00818D42: push ecx
00818D43: fstp real8 ptr [esp]
00818D46: call 00410790h ; msvbvm60.dll.__vbaStrR8
00818D4B: mov edx, eax
00818D4D: lea ecx, var_30
00818D50: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00818D55: push eax
00818D56: call 00410A18h ; &
00818D5B: mov edx, eax
00818D5D: lea ecx, var_34
00818D60: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00818D65: push eax
00818D66: push 004413D8h
00818D6B: call 00410A18h ; &
00818D70: mov edx, eax
00818D72: lea ecx, var_28
00818D75: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00818D7A: lea eax, var_34
00818D7D: push eax
00818D7E: lea eax, var_30
00818D81: push eax
00818D82: lea eax, var_2C
00818D85: push eax
00818D86: push 00000003h
00818D88: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00818D8D: add esp, 00000010h
00818D90: lea eax, var_40
00818D93: push eax
00818D94: lea eax, var_3C
00818D97: push eax
00818D98: lea eax, var_38
00818D9B: push eax
00818D9C: push 00000003h
00818D9E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00818DA3: add esp, 00000010h
00818DA6: lea ecx, var_50
00818DA9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00818DAE: lea eax, var_000000C8
00818DB4: push eax
00818DB5: lea eax, var_000000B8
00818DBB: push eax
00818DBC: lea eax, var_24
00818DBF: push eax
00818DC0: call 00410A36h ; Next
00818DC5: mov var_00000118, eax
00818DCB: cmp var_00000118, 00000000h
00818DD2: jnz 00818B12h
00818DD8: lea eax, var_2C
00818DDB: push eax
00818DDC: mov eax, [ebp+08h]
00818DDF: mov eax, [eax]
00818DE1: push [ebp+08h]
00818DE4: call [eax+000001C0h]
00818DEA: fclex 
00818DEC: mov var_00000098, eax
00818DF2: cmp var_00000098, 00000000h
00818DF9: jnl 818E1Bh
00818DFB: push 000001C0h
00818E00: push 00444D84h
00818E05: push [ebp+08h]
00818E08: push var_00000098
00818E0E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00818E13: mov var_00000140, eax
00818E19: jmp 818E22h
00818E1B: and var_00000140, 00000000h
00818E22: push var_2C
00818E25: call 004109DCh ; Val(arg_1)
00818E2A: fstp real8 ptr var_00000094
00818E30: push 00000000h
00818E32: push 00000000h
00818E34: push 00000001h
00818E36: push 00000000h
00818E38: lea eax, var_54
00818E3B: push eax
00818E3C: push 00000010h
00818E3E: push 00000880h
00818E43: call 00410946h ; ReDim
00818E48: add esp, 0000001Ch
00818E4B: lea eax, var_28
00818E4E: mov var_5C, eax
00818E51: mov var_64, 00004008h
00818E58: lea esi, var_64
00818E5B: push 00000000h
00818E5D: push var_54
00818E60: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00818E65: mov ecx, eax
00818E67: mov edx, esi
00818E69: call 00410940h ; msvbvm60.dll.__vbaVarZero
00818E6E: mov edx, 0043D6A8h ; x55
00818E73: lea ecx, var_30
00818E76: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00818E7B: lea eax, var_54
00818E7E: push eax
00818E7F: lea eax, var_30
00818E82: push eax
00818E83: fld real8 ptr var_00000094
00818E89: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00818E8E: push eax
00818E8F: call 007A6910h
00818E94: lea eax, var_54
00818E97: push eax
00818E98: push 00000000h
00818E9A: call 00410934h ; Erase
00818E9F: lea eax, var_30
00818EA2: push eax
00818EA3: lea eax, var_2C
00818EA6: push eax
00818EA7: push 00000002h
00818EA9: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00818EAE: add esp, 0000000Ch
00818EB1: jmp 00819815h
00818EB6: mov var_5C, 00000001h
00818EBD: mov var_64, 00000002h
00818EC4: push 004412BCh
00818EC9: push 00000000h
00818ECB: push 00000007h
00818ECD: mov eax, [ebp+08h]
00818ED0: mov eax, [eax]
00818ED2: push [ebp+08h]
00818ED5: call [eax+00000308h]
00818EDB: push eax
00818EDC: lea eax, var_38
00818EDF: push eax
00818EE0: call 00410A84h ; Set (object)
00818EE5: push eax
00818EE6: lea eax, var_50
00818EE9: push eax
00818EEA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00818EEF: add esp, 00000010h
00818EF2: push eax
00818EF3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00818EF8: push eax
00818EF9: lea eax, var_3C
00818EFC: push eax
00818EFD: call 00410A84h ; Set (object)
00818F02: mov var_00000098, eax
00818F08: lea eax, var_0000008C
00818F0E: push eax
00818F0F: mov eax, var_00000098
00818F15: mov eax, [eax]
00818F17: push var_00000098
00818F1D: call [eax+1Ch]
00818F20: fclex 
00818F22: mov var_0000009C, eax
00818F28: cmp var_0000009C, 00000000h
00818F2F: jnl 818F51h
00818F31: push 0000001Ch
00818F33: push 004412BCh
00818F38: push var_00000098
00818F3E: push var_0000009C
00818F44: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00818F49: mov var_00000144, eax
00818F4F: jmp 818F58h
00818F51: and var_00000144, 00000000h
00818F58: mov eax, var_0000008C
00818F5E: mov var_6C, eax
00818F61: mov var_74, 00000003h
00818F68: mov var_7C, 00000001h
00818F6F: mov var_00000084, 00000002h
00818F79: lea eax, var_64
00818F7C: push eax
00818F7D: lea eax, var_74
00818F80: push eax
00818F81: lea eax, var_00000084
00818F87: push eax
00818F88: lea eax, var_000000E8
00818F8E: push eax
00818F8F: lea eax, var_000000D8
00818F95: push eax
00818F96: lea eax, var_24
00818F99: push eax
00818F9A: call 00410A3Ch ; For
00818F9F: mov var_0000011C, eax
00818FA5: lea eax, var_3C
00818FA8: push eax
00818FA9: lea eax, var_38
00818FAC: push eax
00818FAD: push 00000002h
00818FAF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00818FB4: add esp, 0000000Ch
00818FB7: lea ecx, var_50
00818FBA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00818FBF: jmp 0081927Dh
00818FC4: push 004412BCh
00818FC9: push 00000000h
00818FCB: push 00000007h
00818FCD: mov eax, [ebp+08h]
00818FD0: mov eax, [eax]
00818FD2: push [ebp+08h]
00818FD5: call [eax+00000308h]
00818FDB: push eax
00818FDC: lea eax, var_38
00818FDF: push eax
00818FE0: call 00410A84h ; Set (object)
00818FE5: push eax
00818FE6: lea eax, var_50
00818FE9: push eax
00818FEA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00818FEF: add esp, 00000010h
00818FF2: push eax
00818FF3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00818FF8: push eax
00818FF9: lea eax, var_3C
00818FFC: push eax
00818FFD: call 00410A84h ; Set (object)
00819002: mov var_00000098, eax
00819008: lea eax, var_40
0081900B: push eax
0081900C: lea eax, var_24
0081900F: push eax
00819010: mov eax, var_00000098
00819016: mov eax, [eax]
00819018: push var_00000098
0081901E: call [eax+24h]
00819021: fclex 
00819023: mov var_0000009C, eax
00819029: cmp var_0000009C, 00000000h
00819030: jnl 819052h
00819032: push 00000024h
00819034: push 004412BCh
00819039: push var_00000098
0081903F: push var_0000009C
00819045: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081904A: mov var_00000148, eax
00819050: jmp 819059h
00819052: and var_00000148, 00000000h
00819059: mov eax, var_40
0081905C: mov var_000000A0, eax
00819062: lea eax, var_00000088
00819068: push eax
00819069: mov eax, var_000000A0
0081906F: mov eax, [eax]
00819071: push var_000000A0
00819077: call [eax+5Ch]
0081907A: fclex 
0081907C: mov var_000000A4, eax
00819082: cmp var_000000A4, 00000000h
00819089: jnl 8190ABh
0081908B: push 0000005Ch
0081908D: push 004412DCh
00819092: push var_000000A0
00819098: push var_000000A4
0081909E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008190A3: mov var_0000014C, eax
008190A9: jmp 8190B2h
008190AB: and var_0000014C, 00000000h
008190B2: xor eax, eax
008190B4: cmp word ptr var_00000088, FFFFh
008190BC: setz al
008190BF: neg eax
008190C1: mov var_000000A8, ax
008190C8: lea eax, var_40
008190CB: push eax
008190CC: lea eax, var_3C
008190CF: push eax
008190D0: lea eax, var_38
008190D3: push eax
008190D4: push 00000003h
008190D6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008190DB: add esp, 00000010h
008190DE: lea ecx, var_50
008190E1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008190E6: movsx eax, word ptr var_000000A8
008190ED: test eax, eax
008190EF: jz 00819260h
008190F5: push 004412BCh
008190FA: push 00000000h
008190FC: push 00000007h
008190FE: mov eax, [ebp+08h]
00819101: mov eax, [eax]
00819103: push [ebp+08h]
00819106: call [eax+00000308h]
0081910C: push eax
0081910D: lea eax, var_38
00819110: push eax
00819111: call 00410A84h ; Set (object)
00819116: push eax
00819117: lea eax, var_50
0081911A: push eax
0081911B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00819120: add esp, 00000010h
00819123: push eax
00819124: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00819129: push eax
0081912A: lea eax, var_3C
0081912D: push eax
0081912E: call 00410A84h ; Set (object)
00819133: mov var_00000098, eax
00819139: lea eax, var_40
0081913C: push eax
0081913D: lea eax, var_24
00819140: push eax
00819141: mov eax, var_00000098
00819147: mov eax, [eax]
00819149: push var_00000098
0081914F: call [eax+24h]
00819152: fclex 
00819154: mov var_0000009C, eax
0081915A: cmp var_0000009C, 00000000h
00819161: jnl 819183h
00819163: push 00000024h
00819165: push 004412BCh
0081916A: push var_00000098
00819170: push var_0000009C
00819176: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081917B: mov var_00000150, eax
00819181: jmp 81918Ah
00819183: and var_00000150, 00000000h
0081918A: mov eax, var_40
0081918D: mov var_000000A0, eax
00819193: lea eax, var_2C
00819196: push eax
00819197: push 00000002h
00819199: mov eax, var_000000A0
0081919F: mov eax, [eax]
008191A1: push var_000000A0
008191A7: call [eax+00000084h]
008191AD: fclex 
008191AF: mov var_000000A4, eax
008191B5: cmp var_000000A4, 00000000h
008191BC: jnl 8191E1h
008191BE: push 00000084h
008191C3: push 004412DCh
008191C8: push var_000000A0
008191CE: push var_000000A4
008191D4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008191D9: mov var_00000154, eax
008191DF: jmp 8191E8h
008191E1: and var_00000154, 00000000h
008191E8: push var_28
008191EB: push var_2C
008191EE: call 004109DCh ; Val(arg_1)
008191F3: push ecx
008191F4: push ecx
008191F5: fstp real8 ptr [esp]
008191F8: call 00410790h ; msvbvm60.dll.__vbaStrR8
008191FD: mov edx, eax
008191FF: lea ecx, var_30
00819202: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00819207: push eax
00819208: call 00410A18h ; &
0081920D: mov edx, eax
0081920F: lea ecx, var_34
00819212: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00819217: push eax
00819218: push 004413D8h
0081921D: call 00410A18h ; &
00819222: mov edx, eax
00819224: lea ecx, var_28
00819227: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081922C: lea eax, var_34
0081922F: push eax
00819230: lea eax, var_30
00819233: push eax
00819234: lea eax, var_2C
00819237: push eax
00819238: push 00000003h
0081923A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081923F: add esp, 00000010h
00819242: lea eax, var_40
00819245: push eax
00819246: lea eax, var_3C
00819249: push eax
0081924A: lea eax, var_38
0081924D: push eax
0081924E: push 00000003h
00819250: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00819255: add esp, 00000010h
00819258: lea ecx, var_50
0081925B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00819260: lea eax, var_000000E8
00819266: push eax
00819267: lea eax, var_000000D8
0081926D: push eax
0081926E: lea eax, var_24
00819271: push eax
00819272: call 00410A36h ; Next
00819277: mov var_0000011C, eax
0081927D: cmp var_0000011C, 00000000h
00819284: jnz 00818FC4h
0081928A: lea eax, var_2C
0081928D: push eax
0081928E: mov eax, [ebp+08h]
00819291: mov eax, [eax]
00819293: push [ebp+08h]
00819296: call [eax+000001C0h]
0081929C: fclex 
0081929E: mov var_00000098, eax
008192A4: cmp var_00000098, 00000000h
008192AB: jnl 8192CDh
008192AD: push 000001C0h
008192B2: push 00444D84h
008192B7: push [ebp+08h]
008192BA: push var_00000098
008192C0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008192C5: mov var_00000158, eax
008192CB: jmp 8192D4h
008192CD: and var_00000158, 00000000h
008192D4: push var_2C
008192D7: call 004109DCh ; Val(arg_1)
008192DC: fstp real8 ptr var_00000094
008192E2: push 00000000h
008192E4: push 00000000h
008192E6: push 00000001h
008192E8: push 00000000h
008192EA: lea eax, var_54
008192ED: push eax
008192EE: push 00000010h
008192F0: push 00000880h
008192F5: call 00410946h ; ReDim
008192FA: add esp, 0000001Ch
008192FD: lea eax, var_28
00819300: mov var_5C, eax
00819303: mov var_64, 00004008h
0081930A: lea esi, var_64
0081930D: push 00000000h
0081930F: push var_54
00819312: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00819317: mov ecx, eax
00819319: mov edx, esi
0081931B: call 00410940h ; msvbvm60.dll.__vbaVarZero
00819320: mov edx, 0043D6B4h ; x56
00819325: lea ecx, var_30
00819328: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081932D: lea eax, var_54
00819330: push eax
00819331: lea eax, var_30
00819334: push eax
00819335: fld real8 ptr var_00000094
0081933B: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00819340: push eax
00819341: call 007A6910h
00819346: lea eax, var_54
00819349: push eax
0081934A: push 00000000h
0081934C: call 00410934h ; Erase
00819351: lea eax, var_30
00819354: push eax
00819355: lea eax, var_2C
00819358: push eax
00819359: push 00000002h
0081935B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00819360: add esp, 0000000Ch
00819363: jmp 00819815h
00819368: mov var_5C, 00000001h
0081936F: mov var_64, 00000002h
00819376: push 004412BCh
0081937B: push 00000000h
0081937D: push 00000007h
0081937F: mov eax, [ebp+08h]
00819382: mov eax, [eax]
00819384: push [ebp+08h]
00819387: call [eax+00000308h]
0081938D: push eax
0081938E: lea eax, var_38
00819391: push eax
00819392: call 00410A84h ; Set (object)
00819397: push eax
00819398: lea eax, var_50
0081939B: push eax
0081939C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008193A1: add esp, 00000010h
008193A4: push eax
008193A5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008193AA: push eax
008193AB: lea eax, var_3C
008193AE: push eax
008193AF: call 00410A84h ; Set (object)
008193B4: mov var_00000098, eax
008193BA: lea eax, var_0000008C
008193C0: push eax
008193C1: mov eax, var_00000098
008193C7: mov eax, [eax]
008193C9: push var_00000098
008193CF: call [eax+1Ch]
008193D2: fclex 
008193D4: mov var_0000009C, eax
008193DA: cmp var_0000009C, 00000000h
008193E1: jnl 819403h
008193E3: push 0000001Ch
008193E5: push 004412BCh
008193EA: push var_00000098
008193F0: push var_0000009C
008193F6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008193FB: mov var_0000015C, eax
00819401: jmp 81940Ah
00819403: and var_0000015C, 00000000h
0081940A: mov eax, var_0000008C
00819410: mov var_6C, eax
00819413: mov var_74, 00000003h
0081941A: mov var_7C, 00000001h
00819421: mov var_00000084, 00000002h
0081942B: lea eax, var_64
0081942E: push eax
0081942F: lea eax, var_74
00819432: push eax
00819433: lea eax, var_00000084
00819439: push eax
0081943A: lea eax, var_00000108
00819440: push eax
00819441: lea eax, var_000000F8
00819447: push eax
00819448: lea eax, var_24
0081944B: push eax
0081944C: call 00410A3Ch ; For
00819451: mov var_00000120, eax
00819457: lea eax, var_3C
0081945A: push eax
0081945B: lea eax, var_38
0081945E: push eax
0081945F: push 00000002h
00819461: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00819466: add esp, 0000000Ch
00819469: lea ecx, var_50
0081946C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00819471: jmp 0081972Fh
00819476: push 004412BCh
0081947B: push 00000000h
0081947D: push 00000007h
0081947F: mov eax, [ebp+08h]
00819482: mov eax, [eax]
00819484: push [ebp+08h]
00819487: call [eax+00000308h]
0081948D: push eax
0081948E: lea eax, var_38
00819491: push eax
00819492: call 00410A84h ; Set (object)
00819497: push eax
00819498: lea eax, var_50
0081949B: push eax
0081949C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008194A1: add esp, 00000010h
008194A4: push eax
008194A5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008194AA: push eax
008194AB: lea eax, var_3C
008194AE: push eax
008194AF: call 00410A84h ; Set (object)
008194B4: mov var_00000098, eax
008194BA: lea eax, var_40
008194BD: push eax
008194BE: lea eax, var_24
008194C1: push eax
008194C2: mov eax, var_00000098
008194C8: mov eax, [eax]
008194CA: push var_00000098
008194D0: call [eax+24h]
008194D3: fclex 
008194D5: mov var_0000009C, eax
008194DB: cmp var_0000009C, 00000000h
008194E2: jnl 819504h
008194E4: push 00000024h
008194E6: push 004412BCh
008194EB: push var_00000098
008194F1: push var_0000009C
008194F7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008194FC: mov var_00000160, eax
00819502: jmp 81950Bh
00819504: and var_00000160, 00000000h
0081950B: mov eax, var_40
0081950E: mov var_000000A0, eax
00819514: lea eax, var_00000088
0081951A: push eax
0081951B: mov eax, var_000000A0
00819521: mov eax, [eax]
00819523: push var_000000A0
00819529: call [eax+5Ch]
0081952C: fclex 
0081952E: mov var_000000A4, eax
00819534: cmp var_000000A4, 00000000h
0081953B: jnl 81955Dh
0081953D: push 0000005Ch
0081953F: push 004412DCh
00819544: push var_000000A0
0081954A: push var_000000A4
00819550: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00819555: mov var_00000164, eax
0081955B: jmp 819564h
0081955D: and var_00000164, 00000000h
00819564: xor eax, eax
00819566: cmp word ptr var_00000088, FFFFh
0081956E: setz al
00819571: neg eax
00819573: mov var_000000A8, ax
0081957A: lea eax, var_40
0081957D: push eax
0081957E: lea eax, var_3C
00819581: push eax
00819582: lea eax, var_38
00819585: push eax
00819586: push 00000003h
00819588: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081958D: add esp, 00000010h
00819590: lea ecx, var_50
00819593: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00819598: movsx eax, word ptr var_000000A8
0081959F: test eax, eax
008195A1: jz 00819712h
008195A7: push 004412BCh
008195AC: push 00000000h
008195AE: push 00000007h
008195B0: mov eax, [ebp+08h]
008195B3: mov eax, [eax]
008195B5: push [ebp+08h]
008195B8: call [eax+00000308h]
008195BE: push eax
008195BF: lea eax, var_38
008195C2: push eax
008195C3: call 00410A84h ; Set (object)
008195C8: push eax
008195C9: lea eax, var_50
008195CC: push eax
008195CD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008195D2: add esp, 00000010h
008195D5: push eax
008195D6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008195DB: push eax
008195DC: lea eax, var_3C
008195DF: push eax
008195E0: call 00410A84h ; Set (object)
008195E5: mov var_00000098, eax
008195EB: lea eax, var_40
008195EE: push eax
008195EF: lea eax, var_24
008195F2: push eax
008195F3: mov eax, var_00000098
008195F9: mov eax, [eax]
008195FB: push var_00000098
00819601: call [eax+24h]
00819604: fclex 
00819606: mov var_0000009C, eax
0081960C: cmp var_0000009C, 00000000h
00819613: jnl 819635h
00819615: push 00000024h
00819617: push 004412BCh
0081961C: push var_00000098
00819622: push var_0000009C
00819628: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081962D: mov var_00000168, eax
00819633: jmp 81963Ch
00819635: and var_00000168, 00000000h
0081963C: mov eax, var_40
0081963F: mov var_000000A0, eax
00819645: lea eax, var_2C
00819648: push eax
00819649: push 00000002h
0081964B: mov eax, var_000000A0
00819651: mov eax, [eax]
00819653: push var_000000A0
00819659: call [eax+00000084h]
0081965F: fclex 
00819661: mov var_000000A4, eax
00819667: cmp var_000000A4, 00000000h
0081966E: jnl 819693h
00819670: push 00000084h
00819675: push 004412DCh
0081967A: push var_000000A0
00819680: push var_000000A4
00819686: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081968B: mov var_0000016C, eax
00819691: jmp 81969Ah
00819693: and var_0000016C, 00000000h
0081969A: push var_28
0081969D: push var_2C
008196A0: call 004109DCh ; Val(arg_1)
008196A5: push ecx
008196A6: push ecx
008196A7: fstp real8 ptr [esp]
008196AA: call 00410790h ; msvbvm60.dll.__vbaStrR8
008196AF: mov edx, eax
008196B1: lea ecx, var_30
008196B4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008196B9: push eax
008196BA: call 00410A18h ; &
008196BF: mov edx, eax
008196C1: lea ecx, var_34
008196C4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008196C9: push eax
008196CA: push 004413D8h
008196CF: call 00410A18h ; &
008196D4: mov edx, eax
008196D6: lea ecx, var_28
008196D9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008196DE: lea eax, var_34
008196E1: push eax
008196E2: lea eax, var_30
008196E5: push eax
008196E6: lea eax, var_2C
008196E9: push eax
008196EA: push 00000003h
008196EC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008196F1: add esp, 00000010h
008196F4: lea eax, var_40
008196F7: push eax
008196F8: lea eax, var_3C
008196FB: push eax
008196FC: lea eax, var_38
008196FF: push eax
00819700: push 00000003h
00819702: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00819707: add esp, 00000010h
0081970A: lea ecx, var_50
0081970D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00819712: lea eax, var_00000108
00819718: push eax
00819719: lea eax, var_000000F8
0081971F: push eax
00819720: lea eax, var_24
00819723: push eax
00819724: call 00410A36h ; Next
00819729: mov var_00000120, eax
0081972F: cmp var_00000120, 00000000h
00819736: jnz 00819476h
0081973C: lea eax, var_2C
0081973F: push eax
00819740: mov eax, [ebp+08h]
00819743: mov eax, [eax]
00819745: push [ebp+08h]
00819748: call [eax+000001C0h]
0081974E: fclex 
00819750: mov var_00000098, eax
00819756: cmp var_00000098, 00000000h
0081975D: jnl 81977Fh
0081975F: push 000001C0h
00819764: push 00444D84h
00819769: push [ebp+08h]
0081976C: push var_00000098
00819772: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00819777: mov var_00000170, eax
0081977D: jmp 819786h
0081977F: and var_00000170, 00000000h
00819786: push var_2C
00819789: call 004109DCh ; Val(arg_1)
0081978E: fstp real8 ptr var_00000094
00819794: push 00000000h
00819796: push 00000000h
00819798: push 00000001h
0081979A: push 00000000h
0081979C: lea eax, var_54
0081979F: push eax
008197A0: push 00000010h
008197A2: push 00000880h
008197A7: call 00410946h ; ReDim
008197AC: add esp, 0000001Ch
008197AF: lea eax, var_28
008197B2: mov var_5C, eax
008197B5: mov var_64, 00004008h
008197BC: lea esi, var_64
008197BF: push 00000000h
008197C1: push var_54
008197C4: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008197C9: mov ecx, eax
008197CB: mov edx, esi
008197CD: call 00410940h ; msvbvm60.dll.__vbaVarZero
008197D2: mov edx, 0043D6C0h ; x57
008197D7: lea ecx, var_30
008197DA: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008197DF: lea eax, var_54
008197E2: push eax
008197E3: lea eax, var_30
008197E6: push eax
008197E7: fld real8 ptr var_00000094
008197ED: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008197F2: push eax
008197F3: call 007A6910h
008197F8: lea eax, var_54
008197FB: push eax
008197FC: push 00000000h
008197FE: call 00410934h ; Erase
00819803: lea eax, var_30
00819806: push eax
00819807: lea eax, var_2C
0081980A: push eax
0081980B: push 00000002h
0081980D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00819812: add esp, 0000000Ch
00819815: mov var_04, 00000000h
0081981C: wait 
0081981D: push 008198A9h
00819822: jmp 819864h
00819824: lea eax, var_34
00819827: push eax
00819828: lea eax, var_30
0081982B: push eax
0081982C: lea eax, var_2C
0081982F: push eax
00819830: push 00000003h
00819832: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00819837: add esp, 00000010h
0081983A: lea eax, var_40
0081983D: push eax
0081983E: lea eax, var_3C
00819841: push eax
00819842: lea eax, var_38
00819845: push eax
00819846: push 00000003h
00819848: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081984D: add esp, 00000010h
00819850: lea ecx, var_50
00819853: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00819858: lea eax, var_54
0081985B: push eax
0081985C: push 00000000h
0081985E: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
00819863: ret 
End Sub

Private sub Timer1__8198C8
008198C8: push ebp
008198C9: mov ebp, esp
008198CB: sub esp, 0000000Ch
008198CE: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008198D3: mov eax, fs:[00h]
008198D9: push eax
008198DA: mov fs:[00000000h], esp
008198E1: push 0000003Ch
008198E3: pop eax
008198E4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008198E9: push ebx
008198EA: push esi
008198EB: push edi
008198EC: mov var_0C, esp
008198EF: mov var_08, 0040AD68h
008198F6: mov eax, [ebp+08h]
008198F9: and eax, 00000001h
008198FC: mov var_04, eax
008198FF: mov eax, [ebp+08h]
00819902: and al, FEh
00819904: mov [ebp+08h], eax
00819907: mov eax, [ebp+08h]
0081990A: mov eax, [eax]
0081990C: push [ebp+08h]
0081990F: call [eax+04h]
00819912: cmp [008F2010h], 00000000h
00819919: jnz 819933h
0081991B: push 008F2010h
00819920: push 00433984h
00819925: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0081992A: mov var_40, 008F2010h
00819931: jmp 81993Ah
00819933: mov var_40, 008F2010h
0081993A: mov eax, var_40
0081993D: mov eax, [eax]
0081993F: mov ecx, var_40
00819942: mov ecx, [ecx]
00819944: mov ecx, [ecx]
00819946: push eax
00819947: call [ecx+00000380h]
0081994D: push eax
0081994E: lea eax, var_18
00819951: push eax
00819952: call 00410A84h ; Set (object)
00819957: mov var_24, eax
0081995A: lea eax, var_1C
0081995D: push eax
0081995E: push 00000003h
00819960: mov eax, var_24
00819963: mov eax, [eax]
00819965: push var_24
00819968: call [eax+40h]
0081996B: fclex 
0081996D: mov var_28, eax
00819970: cmp var_28, 00000000h
00819974: jnl 81998Dh
00819976: push 00000040h
00819978: push 00440DE8h
0081997D: push var_24
00819980: push var_28
00819983: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00819988: mov var_44, eax
0081998B: jmp 819991h
0081998D: and var_44, 00000000h
00819991: mov eax, var_1C
00819994: mov var_2C, eax
00819997: lea eax, var_20
0081999A: push eax
0081999B: mov eax, var_2C
0081999E: mov eax, [eax]
008199A0: push var_2C
008199A3: call [eax+000000E0h]
008199A9: fclex 
008199AB: mov var_30, eax
008199AE: cmp var_30, 00000000h
008199B2: jnl 8199CEh
008199B4: push 000000E0h
008199B9: push 00440DF8h
008199BE: push var_2C
008199C1: push var_30
008199C4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008199C9: mov var_48, eax
008199CC: jmp 8199D2h
008199CE: and var_48, 00000000h
008199D2: xor eax, eax
008199D4: cmp word ptr var_20, 0001h
008199D9: setz al
008199DC: neg eax
008199DE: mov var_34, ax
008199E2: lea eax, var_1C
008199E5: push eax
008199E6: lea eax, var_18
008199E9: push eax
008199EA: push 00000002h
008199EC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008199F1: add esp, 0000000Ch
008199F4: movsx eax, word ptr var_34
008199F8: test eax, eax
008199FA: jz 819A3Ah
008199FC: and word ptr var_20, 0000h
00819A01: lea eax, var_20
00819A04: push eax
00819A05: mov eax, [ebp+08h]
00819A08: mov eax, [eax]
00819A0A: push [ebp+08h]
00819A0D: call [eax+0000070Ch]
00819A13: mov var_24, eax
00819A16: cmp var_24, 00000000h
00819A1A: jnl 819A36h
00819A1C: push 0000070Ch
00819A21: push 00440350h
00819A26: push [ebp+08h]
00819A29: push var_24
00819A2C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00819A31: mov var_4C, eax
00819A34: jmp 819A3Ah
00819A36: and var_4C, 00000000h
00819A3A: mov eax, [ebp+08h]
00819A3D: mov eax, [eax]
00819A3F: push [ebp+08h]
00819A42: call [eax+000002FCh]
00819A48: push eax
00819A49: lea eax, var_18
00819A4C: push eax
00819A4D: call 00410A84h ; Set (object)
00819A52: mov var_24, eax
00819A55: push 00000000h
00819A57: mov eax, var_24
00819A5A: mov eax, [eax]
00819A5C: push var_24
00819A5F: call [eax+5Ch]
00819A62: fclex 
00819A64: mov var_28, eax
00819A67: cmp var_28, 00000000h
00819A6B: jnl 819A84h
00819A6D: push 0000005Ch
00819A6F: push 00447A20h
00819A74: push var_24
00819A77: push var_28
00819A7A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00819A7F: mov var_50, eax
00819A82: jmp 819A88h
00819A84: and var_50, 00000000h
00819A88: lea ecx, var_18
00819A8B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00819A90: mov var_04, 00000000h
00819A97: push 00819AB2h
00819A9C: jmp 819AB1h
00819A9E: lea eax, var_1C
00819AA1: push eax
00819AA2: lea eax, var_18
00819AA5: push eax
00819AA6: push 00000002h
00819AA8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00819AAD: add esp, 0000000Ch
00819AB0: ret 
End Sub

Private sub lstProc__81807F
0081807F: push ebp
00818080: mov ebp, esp
00818082: sub esp, 0000000Ch
00818085: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081808A: mov eax, fs:[00h]
00818090: push eax
00818091: mov fs:[00000000h], esp
00818098: push 00000008h
0081809A: pop eax
0081809B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008180A0: push ebx
008180A1: push esi
008180A2: push edi
008180A3: mov var_0C, esp
008180A6: mov var_08, 0040ACC0h
008180AD: mov eax, [ebp+08h]
008180B0: and eax, 00000001h
008180B3: mov var_04, eax
008180B6: mov eax, [ebp+08h]
008180B9: and al, FEh
008180BB: mov [ebp+08h], eax
008180BE: mov eax, [ebp+08h]
008180C1: mov eax, [eax]
008180C3: push [ebp+08h]
008180C6: call [eax+04h]
008180C9: mov eax, [ebp+0Ch]
008180CC: or word ptr [eax], FFFFh
008180D0: mov var_04, 00000000h
008180D7: mov eax, [ebp+08h]
008180DA: mov eax, [eax]
008180DC: push [ebp+08h]
008180DF: call [eax+08h]
008180E2: mov eax, var_04
008180E5: mov ecx, var_14
008180E8: mov fs:[00000000h], ecx
008180EF: pop edi
008180F0: pop esi
008180F1: pop ebx
008180F2: leave 
008180F3: retn 0008h
End Sub

Private sub lstProc__8180F6
008180F6: push ebp
008180F7: mov ebp, esp
008180F9: sub esp, 00000018h
008180FC: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00818101: mov eax, fs:[00h]
00818107: push eax
00818108: mov fs:[00000000h], esp
0081810F: mov eax, 00000080h
00818114: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00818119: push ebx
0081811A: push esi
0081811B: push edi
0081811C: mov var_18, esp
0081811F: mov var_14, 0040ACC8h
00818126: mov eax, [ebp+08h]
00818129: and eax, 00000001h
0081812C: mov var_10, eax
0081812F: mov eax, [ebp+08h]
00818132: and al, FEh
00818134: mov [ebp+08h], eax
00818137: mov var_0C, 00000000h
0081813E: mov eax, [ebp+08h]
00818141: mov eax, [eax]
00818143: push [ebp+08h]
00818146: call [eax+04h]
00818149: mov var_04, 00000001h
00818150: push [ebp+0Ch]
00818153: lea eax, var_24
00818156: push eax
00818157: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0081815C: mov var_04, 00000002h
00818163: push FFFFFFFFh
00818165: call 00410A60h ; On Error ...
0081816A: mov var_04, 00000003h
00818171: lea eax, var_60
00818174: push eax
00818175: mov eax, var_24
00818178: mov eax, [eax]
0081817A: push var_24
0081817D: call [eax+34h]
00818180: fclex 
00818182: mov var_68, eax
00818185: cmp var_68, 00000000h
00818189: jnl 8181A5h
0081818B: push 00000034h
0081818D: push 00450154h
00818192: push var_24
00818195: push var_68
00818198: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081819D: mov var_0000008C, eax
008181A3: jmp 8181ACh
008181A5: and var_0000008C, 00000000h
008181AC: lea eax, var_64
008181AF: push eax
008181B0: mov eax, var_24
008181B3: mov eax, [eax]
008181B5: push var_24
008181B8: call [eax+34h]
008181BB: fclex 
008181BD: mov var_6C, eax
008181C0: cmp var_6C, 00000000h
008181C4: jnl 8181E0h
008181C6: push 00000034h
008181C8: push 00450154h
008181CD: push var_24
008181D0: push var_6C
008181D3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008181D8: mov var_00000090, eax
008181DE: jmp 8181E7h
008181E0: and var_00000090, 00000000h
008181E7: xor eax, eax
008181E9: cmp var_60, 00000003h
008181ED: setnz al
008181F0: xor ecx, ecx
008181F2: cmp var_64, 00000004h
008181F6: setnz cl
008181F9: and eax, ecx
008181FB: test eax, eax
008181FD: jnz 00818380h
00818203: mov var_04, 00000004h
0081820A: cmp word ptr [008F2404h], FFFFh
00818212: jnz 008182CCh
00818218: mov var_04, 00000005h
0081821F: mov eax, [ebp+08h]
00818222: mov eax, [eax]
00818224: push [ebp+08h]
00818227: call [eax+00000308h]
0081822D: push eax
0081822E: lea eax, var_2C
00818231: push eax
00818232: call 00410A84h ; Set (object)
00818237: lea eax, var_60
0081823A: push eax
0081823B: mov eax, var_24
0081823E: mov eax, [eax]
00818240: push var_24
00818243: call [eax+34h]
00818246: fclex 
00818248: mov var_68, eax
0081824B: cmp var_68, 00000000h
0081824F: jnl 81826Bh
00818251: push 00000034h
00818253: push 00450154h
00818258: push var_24
0081825B: push var_68
0081825E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00818263: mov var_00000094, eax
00818269: jmp 818272h
0081826B: and var_00000094, 00000000h
00818272: mov eax, var_2C
00818275: mov var_00000084, eax
0081827B: and var_2C, 00000000h
0081827F: push var_00000084
00818285: lea eax, var_28
00818288: push eax
00818289: call 00410A84h ; Set (object)
0081828E: push 00000000h
00818290: mov eax, var_60
00818293: sub eax, 00000001h
00818296: jo 00818723h
0081829C: push eax
0081829D: lea eax, var_28
008182A0: push eax
008182A1: call 007BB47Fh
008182A6: lea eax, var_2C
008182A9: push eax
008182AA: lea eax, var_28
008182AD: push eax
008182AE: push 00000002h
008182B0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008182B5: add esp, 0000000Ch
008182B8: mov var_04, 00000006h
008182BF: and word ptr [008F2404h], 0000h
008182C7: jmp 0081837Bh
008182CC: mov var_04, 00000008h
008182D3: mov eax, [ebp+08h]
008182D6: mov eax, [eax]
008182D8: push [ebp+08h]
008182DB: call [eax+00000308h]
008182E1: push eax
008182E2: lea eax, var_2C
008182E5: push eax
008182E6: call 00410A84h ; Set (object)
008182EB: lea eax, var_60
008182EE: push eax
008182EF: mov eax, var_24
008182F2: mov eax, [eax]
008182F4: push var_24
008182F7: call [eax+34h]
008182FA: fclex 
008182FC: mov var_68, eax
008182FF: cmp var_68, 00000000h
00818303: jnl 81831Fh
00818305: push 00000034h
00818307: push 00450154h
0081830C: push var_24
0081830F: push var_68
00818312: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00818317: mov var_00000098, eax
0081831D: jmp 818326h
0081831F: and var_00000098, 00000000h
00818326: mov eax, var_2C
00818329: mov var_00000088, eax
0081832F: and var_2C, 00000000h
00818333: push var_00000088
00818339: lea eax, var_28
0081833C: push eax
0081833D: call 00410A84h ; Set (object)
00818342: push 00000001h
00818344: mov eax, var_60
00818347: sub eax, 00000001h
0081834A: jo 00818723h
00818350: push eax
00818351: lea eax, var_28
00818354: push eax
00818355: call 007BB47Fh
0081835A: lea eax, var_2C
0081835D: push eax
0081835E: lea eax, var_28
00818361: push eax
00818362: push 00000002h
00818364: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00818369: add esp, 0000000Ch
0081836C: mov var_04, 00000009h
00818373: or word ptr [008F2404h], FFFFh
0081837B: jmp 008186D2h
00818380: mov var_04, 0000000Dh
00818387: lea eax, var_60
0081838A: push eax
0081838B: mov eax, var_24
0081838E: mov eax, [eax]
00818390: push var_24
00818393: call [eax+34h]
00818396: fclex 
00818398: mov var_68, eax
0081839B: cmp var_68, 00000000h
0081839F: jnl 8183BBh
008183A1: push 00000034h
008183A3: push 00450154h
008183A8: push var_24
008183AB: push var_68
008183AE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008183B3: mov var_0000009C, eax
008183B9: jmp 8183C2h
008183BB: and var_0000009C, 00000000h
008183C2: mov esi, var_60
008183C5: sub esi, 00000001h
008183C8: jo 00818723h
008183CE: push 00000000h
008183D0: push 00000010h
008183D2: mov eax, [ebp+08h]
008183D5: mov eax, [eax]
008183D7: push [ebp+08h]
008183DA: call [eax+00000308h]
008183E0: push eax
008183E1: lea eax, var_28
008183E4: push eax
008183E5: call 00410A84h ; Set (object)
008183EA: push eax
008183EB: lea eax, var_3C
008183EE: push eax
008183EF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008183F4: add esp, 00000010h
008183F7: push eax
008183F8: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008183FD: movsx eax, ax
00818400: sub esi, eax
00818402: neg esi
00818404: sbb esi, esi
00818406: inc esi
00818407: neg esi
00818409: mov var_6C, si
0081840D: lea ecx, var_28
00818410: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00818415: lea ecx, var_3C
00818418: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081841D: movsx eax, word ptr var_6C
00818421: test eax, eax
00818423: jz 0081855Ah
00818429: mov var_04, 0000000Eh
00818430: push 00000000h
00818432: push 00000011h
00818434: mov eax, [ebp+08h]
00818437: mov eax, [eax]
00818439: push [ebp+08h]
0081843C: call [eax+00000308h]
00818442: push eax
00818443: lea eax, var_28
00818446: push eax
00818447: call 00410A84h ; Set (object)
0081844C: push eax
0081844D: lea eax, var_3C
00818450: push eax
00818451: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00818456: add esp, 00000010h
00818459: push eax
0081845A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0081845F: push 00000001h
00818461: pop ecx
00818462: sub ecx, eax
00818464: jo 00818723h
0081846A: mov var_44, ecx
0081846D: mov var_4C, 00000003h
00818474: push 00000010h
00818476: pop eax
00818477: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081847C: lea esi, var_4C
0081847F: mov edi, esp
00818481: movsd 
00818482: movsd 
00818483: movsd 
00818484: movsd 
00818485: push 00000011h
00818487: mov eax, [ebp+08h]
0081848A: mov eax, [eax]
0081848C: push [ebp+08h]
0081848F: call [eax+00000308h]
00818495: push eax
00818496: lea eax, var_2C
00818499: push eax
0081849A: call 00410A84h ; Set (object)
0081849F: push eax
008184A0: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008184A5: lea eax, var_2C
008184A8: push eax
008184A9: lea eax, var_28
008184AC: push eax
008184AD: push 00000002h
008184AF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008184B4: add esp, 0000000Ch
008184B7: lea ecx, var_3C
008184BA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008184BF: mov var_04, 0000000Fh
008184C6: or var_44, FFFFFFFFh
008184CA: mov var_4C, 0000000Bh
008184D1: push 00000010h
008184D3: pop eax
008184D4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008184D9: lea esi, var_4C
008184DC: mov edi, esp
008184DE: movsd 
008184DF: movsd 
008184E0: movsd 
008184E1: movsd 
008184E2: push 0000000Fh
008184E4: mov eax, [ebp+08h]
008184E7: mov eax, [eax]
008184E9: push [ebp+08h]
008184EC: call [eax+00000308h]
008184F2: push eax
008184F3: lea eax, var_28
008184F6: push eax
008184F7: call 00410A84h ; Set (object)
008184FC: push eax
008184FD: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00818502: lea ecx, var_28
00818505: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081850A: mov var_04, 00000010h
00818511: and var_44, 00000000h
00818515: mov var_4C, 0000000Bh
0081851C: push 00000010h
0081851E: pop eax
0081851F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00818524: lea esi, var_4C
00818527: mov edi, esp
00818529: movsd 
0081852A: movsd 
0081852B: movsd 
0081852C: movsd 
0081852D: push 0000000Fh
0081852F: mov eax, [ebp+08h]
00818532: mov eax, [eax]
00818534: push [ebp+08h]
00818537: call [eax+00000308h]
0081853D: push eax
0081853E: lea eax, var_28
00818541: push eax
00818542: call 00410A84h ; Set (object)
00818547: push eax
00818548: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081854D: lea ecx, var_28
00818550: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00818555: jmp 008186D2h
0081855A: mov var_04, 00000012h
00818561: and var_44, 00000000h
00818565: mov var_4C, 00000003h
0081856C: push 00000010h
0081856E: pop eax
0081856F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00818574: lea esi, var_4C
00818577: mov edi, esp
00818579: movsd 
0081857A: movsd 
0081857B: movsd 
0081857C: movsd 
0081857D: push 00000011h
0081857F: mov eax, [ebp+08h]
00818582: mov eax, [eax]
00818584: push [ebp+08h]
00818587: call [eax+00000308h]
0081858D: push eax
0081858E: lea eax, var_28
00818591: push eax
00818592: call 00410A84h ; Set (object)
00818597: push eax
00818598: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081859D: lea ecx, var_28
008185A0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008185A5: mov var_04, 00000013h
008185AC: lea eax, var_60
008185AF: push eax
008185B0: mov eax, var_24
008185B3: mov eax, [eax]
008185B5: push var_24
008185B8: call [eax+34h]
008185BB: fclex 
008185BD: mov var_68, eax
008185C0: cmp var_68, 00000000h
008185C4: jnl 8185E0h
008185C6: push 00000034h
008185C8: push 00450154h
008185CD: push var_24
008185D0: push var_68
008185D3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008185D8: mov var_000000A0, eax
008185DE: jmp 8185E7h
008185E0: and var_000000A0, 00000000h
008185E7: mov ecx, var_60
008185EA: sub ecx, 00000001h
008185ED: jo 00818723h
008185F3: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008185F8: mov var_44, ax
008185FC: mov var_4C, 00000002h
00818603: push 00000010h
00818605: pop eax
00818606: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081860B: lea esi, var_4C
0081860E: mov edi, esp
00818610: movsd 
00818611: movsd 
00818612: movsd 
00818613: movsd 
00818614: push 00000010h
00818616: mov eax, [ebp+08h]
00818619: mov eax, [eax]
0081861B: push [ebp+08h]
0081861E: call [eax+00000308h]
00818624: push eax
00818625: lea eax, var_28
00818628: push eax
00818629: call 00410A84h ; Set (object)
0081862E: push eax
0081862F: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00818634: lea ecx, var_28
00818637: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081863C: mov var_04, 00000014h
00818643: or var_44, FFFFFFFFh
00818647: mov var_4C, 0000000Bh
0081864E: push 00000010h
00818650: pop eax
00818651: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00818656: lea esi, var_4C
00818659: mov edi, esp
0081865B: movsd 
0081865C: movsd 
0081865D: movsd 
0081865E: movsd 
0081865F: push 0000000Fh
00818661: mov eax, [ebp+08h]
00818664: mov eax, [eax]
00818666: push [ebp+08h]
00818669: call [eax+00000308h]
0081866F: push eax
00818670: lea eax, var_28
00818673: push eax
00818674: call 00410A84h ; Set (object)
00818679: push eax
0081867A: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081867F: lea ecx, var_28
00818682: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00818687: mov var_04, 00000015h
0081868E: and var_44, 00000000h
00818692: mov var_4C, 0000000Bh
00818699: push 00000010h
0081869B: pop eax
0081869C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008186A1: lea esi, var_4C
008186A4: mov edi, esp
008186A6: movsd 
008186A7: movsd 
008186A8: movsd 
008186A9: movsd 
008186AA: push 0000000Fh
008186AC: mov eax, [ebp+08h]
008186AF: mov eax, [eax]
008186B1: push [ebp+08h]
008186B4: call [eax+00000308h]
008186BA: push eax
008186BB: lea eax, var_28
008186BE: push eax
008186BF: call 00410A84h ; Set (object)
008186C4: push eax
008186C5: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008186CA: lea ecx, var_28
008186CD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008186D2: mov var_10, 00000000h
008186D9: push 00818704h
008186DE: jmp 8186FBh
008186E0: lea eax, var_2C
008186E3: push eax
008186E4: lea eax, var_28
008186E7: push eax
008186E8: push 00000002h
008186EA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008186EF: add esp, 0000000Ch
008186F2: lea ecx, var_3C
008186F5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008186FA: ret 
End Sub

Private sub lstProc__818728
00818728: push ebp
00818729: mov ebp, esp
0081872B: sub esp, 0000000Ch
0081872E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00818733: mov eax, fs:[00h]
00818739: push eax
0081873A: mov fs:[00000000h], esp
00818741: push 00000054h
00818743: pop eax
00818744: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00818749: push ebx
0081874A: push esi
0081874B: push edi
0081874C: mov var_0C, esp
0081874F: mov var_08, 0040AD48h
00818756: mov eax, [ebp+08h]
00818759: and eax, 00000001h
0081875C: mov var_04, eax
0081875F: mov eax, [ebp+08h]
00818762: and al, FEh
00818764: mov [ebp+08h], eax
00818767: mov eax, [ebp+08h]
0081876A: mov eax, [eax]
0081876C: push [ebp+08h]
0081876F: call [eax+04h]
00818772: mov eax, [ebp+0Ch]
00818775: cmp word ptr [eax], 0002h
00818779: jnz 00818853h
0081877F: mov var_50, 80020004h
00818786: mov var_58, 0000000Ah
0081878D: mov var_40, 80020004h
00818794: mov var_48, 0000000Ah
0081879B: mov var_30, 80020004h
008187A2: mov var_38, 0000000Ah
008187A9: mov var_20, 80020004h
008187B0: mov var_28, 0000000Ah
008187B7: push 00000010h
008187B9: pop eax
008187BA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008187BF: lea esi, var_58
008187C2: mov edi, esp
008187C4: movsd 
008187C5: movsd 
008187C6: movsd 
008187C7: movsd 
008187C8: push 00000010h
008187CA: pop eax
008187CB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008187D0: lea esi, var_48
008187D3: mov edi, esp
008187D5: movsd 
008187D6: movsd 
008187D7: movsd 
008187D8: movsd 
008187D9: push 00000010h
008187DB: pop eax
008187DC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008187E1: lea esi, var_38
008187E4: mov edi, esp
008187E6: movsd 
008187E7: movsd 
008187E8: movsd 
008187E9: movsd 
008187EA: push 00000010h
008187EC: pop eax
008187ED: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008187F2: lea esi, var_28
008187F5: mov edi, esp
008187F7: movsd 
008187F8: movsd 
008187F9: movsd 
008187FA: movsd 
008187FB: mov eax, [ebp+08h]
008187FE: mov eax, [eax]
00818800: push [ebp+08h]
00818803: call [eax+00000300h]
00818809: push eax
0081880A: lea eax, var_18
0081880D: push eax
0081880E: call 00410A84h ; Set (object)
00818813: push eax
00818814: mov eax, [ebp+08h]
00818817: mov eax, [eax]
00818819: push [ebp+08h]
0081881C: call [eax+000002BCh]
00818822: fclex 
00818824: mov var_5C, eax
00818827: cmp var_5C, 00000000h
0081882B: jnl 818847h
0081882D: push 000002BCh
00818832: push 00444D84h
00818837: push [ebp+08h]
0081883A: push var_5C
0081883D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00818842: mov var_68, eax
00818845: jmp 81884Bh
00818847: and var_68, 00000000h
0081884B: lea ecx, var_18
0081884E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00818853: mov var_04, 00000000h
0081885A: push 0081886Bh
0081885F: jmp 81886Ah
00818861: lea ecx, var_18
00818864: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00818869: ret 
End Sub

