VERSION 5.00
Begin VB.Form frmChat
  Caption = "Chat"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmChat.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 8100
  ClientHeight = 7590
  StartUpPosition = 3 'Windows Default
  Begin RichTextLib.RichTextBox txtChat
    Left = 0
    Top = 6600
    Width = 8055
    Height = 975
    TabIndex = 1
  End
  Begin RichTextLib.RichTextBox txtMain
    Left = 0
    Top = 0
    Width = 8055
    Height = 6495
    TabIndex = 0
  End
End

Attribute VB_Name = "frmChat"


Private sub Form__872D7A
00872D7A: push ebp
00872D7B: mov ebp, esp
00872D7D: sub esp, 00000018h
00872D80: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00872D85: mov eax, fs:[00h]
00872D8B: push eax
00872D8C: mov fs:[00000000h], esp
00872D93: mov eax, 000000DCh
00872D98: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00872D9D: push ebx
00872D9E: push esi
00872D9F: push edi
00872DA0: mov var_18, esp
00872DA3: mov var_14, 0040D2D8h
00872DAA: mov eax, [ebp+08h]
00872DAD: and eax, 00000001h
00872DB0: mov var_10, eax
00872DB3: mov eax, [ebp+08h]
00872DB6: and al, FEh
00872DB8: mov [ebp+08h], eax
00872DBB: mov var_0C, 00000000h
00872DC2: mov eax, [ebp+08h]
00872DC5: mov eax, [eax]
00872DC7: push [ebp+08h]
00872DCA: call [eax+04h]
00872DCD: mov var_04, 00000001h
00872DD4: mov var_04, 00000002h
00872DDB: push FFFFFFFFh
00872DDD: call 00410A60h ; On Error ...
00872DE2: mov var_04, 00000003h
00872DE9: push 00000000h
00872DEB: push 80010006h
00872DF0: mov eax, [ebp+08h]
00872DF3: mov eax, [eax]
00872DF5: push [ebp+08h]
00872DF8: call [eax+000002FCh]
00872DFE: push eax
00872DFF: lea eax, var_24
00872E02: push eax
00872E03: call 00410A84h ; Set (object)
00872E08: push eax
00872E09: lea eax, var_3C
00872E0C: push eax
00872E0D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00872E12: add esp, 00000010h
00872E15: fldz 
00872E17: fstp real4 ptr var_54
00872E1A: mov var_5C, 00000004h
00872E21: and var_74, 00000000h
00872E25: mov var_7C, 00000002h
00872E2C: lea eax, var_000000D0
00872E32: push eax
00872E33: mov eax, [ebp+08h]
00872E36: mov eax, [eax]
00872E38: push [ebp+08h]
00872E3B: call [eax+00000080h]
00872E41: fclex 
00872E43: mov var_000000D8, eax
00872E49: cmp var_000000D8, 00000000h
00872E50: jnl 872E72h
00872E52: push 00000080h
00872E57: push 00443F08h
00872E5C: push [ebp+08h]
00872E5F: push var_000000D8
00872E65: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00872E6A: mov var_000000F4, eax
00872E70: jmp 872E79h
00872E72: and var_000000F4, 00000000h
00872E79: fld real4 ptr var_000000D0
00872E7F: fsub real4 ptr [00402BA4h]
00872E85: fstp real4 ptr var_00000094
00872E8B: fstsw ax
00872E8D: test al, 0Dh
00872E8F: jnz 008731ADh
00872E95: mov var_0000009C, 00000004h
00872E9F: lea eax, var_000000D4
00872EA5: push eax
00872EA6: mov eax, [ebp+08h]
00872EA9: mov eax, [eax]
00872EAB: push [ebp+08h]
00872EAE: call [eax+00000088h]
00872EB4: fclex 
00872EB6: mov var_000000DC, eax
00872EBC: cmp var_000000DC, 00000000h
00872EC3: jnl 872EE5h
00872EC5: push 00000088h
00872ECA: push 00443F08h
00872ECF: push [ebp+08h]
00872ED2: push var_000000DC
00872ED8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00872EDD: mov var_000000F8, eax
00872EE3: jmp 872EECh
00872EE5: and var_000000F8, 00000000h
00872EEC: lea eax, var_3C
00872EEF: push eax
00872EF0: call 004107EAh ; msvbvm60.dll.__vbaR4Var
00872EF5: fsubr real4 ptr var_000000D4
00872EFB: fsub real4 ptr [0040C470h]
00872F01: fstp real4 ptr var_000000B4
00872F07: fstsw ax
00872F09: test al, 0Dh
00872F0B: jnz 008731ADh
00872F11: mov var_000000BC, 00000004h
00872F1B: push 00000010h
00872F1D: pop eax
00872F1E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00872F23: lea esi, var_5C
00872F26: mov edi, esp
00872F28: movsd 
00872F29: movsd 
00872F2A: movsd 
00872F2B: movsd 
00872F2C: push 00000010h
00872F2E: pop eax
00872F2F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00872F34: lea esi, var_7C
00872F37: mov edi, esp
00872F39: movsd 
00872F3A: movsd 
00872F3B: movsd 
00872F3C: movsd 
00872F3D: push 00000010h
00872F3F: pop eax
00872F40: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00872F45: lea esi, var_0000009C
00872F4B: mov edi, esp
00872F4D: movsd 
00872F4E: movsd 
00872F4F: movsd 
00872F50: movsd 
00872F51: push 00000010h
00872F53: pop eax
00872F54: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00872F59: lea esi, var_000000BC
00872F5F: mov edi, esp
00872F61: movsd 
00872F62: movsd 
00872F63: movsd 
00872F64: movsd 
00872F65: push 00000004h
00872F67: push 80011002h
00872F6C: mov eax, [ebp+08h]
00872F6F: mov eax, [eax]
00872F71: push [ebp+08h]
00872F74: call [eax+00000300h]
00872F7A: push eax
00872F7B: lea eax, var_28
00872F7E: push eax
00872F7F: call 00410A84h ; Set (object)
00872F84: push eax
00872F85: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00872F8A: add esp, 0000004Ch
00872F8D: lea eax, var_28
00872F90: push eax
00872F91: lea eax, var_24
00872F94: push eax
00872F95: push 00000002h
00872F97: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00872F9C: add esp, 0000000Ch
00872F9F: lea ecx, var_3C
00872FA2: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00872FA7: mov var_04, 00000004h
00872FAE: fldz 
00872FB0: fstp real4 ptr var_54
00872FB3: mov var_5C, 00000004h
00872FBA: push 00000000h
00872FBC: push 80010006h
00872FC1: mov eax, [ebp+08h]
00872FC4: mov eax, [eax]
00872FC6: push [ebp+08h]
00872FC9: call [eax+00000300h]
00872FCF: push eax
00872FD0: lea eax, var_24
00872FD3: push eax
00872FD4: call 00410A84h ; Set (object)
00872FD9: push eax
00872FDA: lea eax, var_3C
00872FDD: push eax
00872FDE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00872FE3: add esp, 00000010h
00872FE6: push eax
00872FE7: call 004107EAh ; msvbvm60.dll.__vbaR4Var
00872FEC: fadd real4 ptr [0040C1B0h]
00872FF2: fstp real4 ptr var_74
00872FF5: fstsw ax
00872FF7: test al, 0Dh
00872FF9: jnz 008731ADh
00872FFF: mov var_7C, 00000004h
00873006: lea eax, var_000000D0
0087300C: push eax
0087300D: mov eax, [ebp+08h]
00873010: mov eax, [eax]
00873012: push [ebp+08h]
00873015: call [eax+00000080h]
0087301B: fclex 
0087301D: mov var_000000D8, eax
00873023: cmp var_000000D8, 00000000h
0087302A: jnl 87304Ch
0087302C: push 00000080h
00873031: push 00443F08h
00873036: push [ebp+08h]
00873039: push var_000000D8
0087303F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00873044: mov var_000000FC, eax
0087304A: jmp 873053h
0087304C: and var_000000FC, 00000000h
00873053: fld real4 ptr var_000000D0
00873059: fsub real4 ptr [00402BA4h]
0087305F: fstp real4 ptr var_00000094
00873065: fstsw ax
00873067: test al, 0Dh
00873069: jnz 008731ADh
0087306F: mov var_0000009C, 00000004h
00873079: push 00000000h
0087307B: push 80010006h
00873080: mov eax, [ebp+08h]
00873083: mov eax, [eax]
00873085: push [ebp+08h]
00873088: call [eax+000002FCh]
0087308E: push eax
0087308F: lea eax, var_28
00873092: push eax
00873093: call 00410A84h ; Set (object)
00873098: push eax
00873099: lea eax, var_4C
0087309C: push eax
0087309D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008730A2: add esp, 00000010h
008730A5: push eax
008730A6: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008730AB: fstp real4 ptr var_000000B4
008730B1: mov var_000000BC, 00000004h
008730BB: push 00000010h
008730BD: pop eax
008730BE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008730C3: lea esi, var_5C
008730C6: mov edi, esp
008730C8: movsd 
008730C9: movsd 
008730CA: movsd 
008730CB: movsd 
008730CC: push 00000010h
008730CE: pop eax
008730CF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008730D4: lea esi, var_7C
008730D7: mov edi, esp
008730D9: movsd 
008730DA: movsd 
008730DB: movsd 
008730DC: movsd 
008730DD: push 00000010h
008730DF: pop eax
008730E0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008730E5: lea esi, var_0000009C
008730EB: mov edi, esp
008730ED: movsd 
008730EE: movsd 
008730EF: movsd 
008730F0: movsd 
008730F1: push 00000010h
008730F3: pop eax
008730F4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008730F9: lea esi, var_000000BC
008730FF: mov edi, esp
00873101: movsd 
00873102: movsd 
00873103: movsd 
00873104: movsd 
00873105: push 00000004h
00873107: push 80011002h
0087310C: mov eax, [ebp+08h]
0087310F: mov eax, [eax]
00873111: push [ebp+08h]
00873114: call [eax+000002FCh]
0087311A: push eax
0087311B: lea eax, var_2C
0087311E: push eax
0087311F: call 00410A84h ; Set (object)
00873124: push eax
00873125: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0087312A: add esp, 0000004Ch
0087312D: lea eax, var_2C
00873130: push eax
00873131: lea eax, var_28
00873134: push eax
00873135: lea eax, var_24
00873138: push eax
00873139: push 00000003h
0087313B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00873140: add esp, 00000010h
00873143: lea eax, var_4C
00873146: push eax
00873147: lea eax, var_3C
0087314A: push eax
0087314B: push 00000002h
0087314D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00873152: add esp, 0000000Ch
00873155: mov var_10, 00000000h
0087315C: wait 
0087315D: push 0087318Eh
00873162: jmp 87318Dh
00873164: lea eax, var_2C
00873167: push eax
00873168: lea eax, var_28
0087316B: push eax
0087316C: lea eax, var_24
0087316F: push eax
00873170: push 00000003h
00873172: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00873177: add esp, 00000010h
0087317A: lea eax, var_4C
0087317D: push eax
0087317E: lea eax, var_3C
00873181: push eax
00873182: push 00000002h
00873184: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00873189: add esp, 0000000Ch
0087318C: ret 
End Sub

Private sub Form__8731B2
008731B2: push ebp
008731B3: mov ebp, esp
008731B5: sub esp, 0000000Ch
008731B8: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008731BD: mov eax, fs:[00h]
008731C3: push eax
008731C4: mov fs:[00000000h], esp
008731CB: push 00000054h
008731CD: pop eax
008731CE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008731D3: push ebx
008731D4: push esi
008731D5: push edi
008731D6: mov var_0C, esp
008731D9: mov var_08, 0040D310h
008731E0: mov eax, [ebp+08h]
008731E3: and eax, 00000001h
008731E6: mov var_04, eax
008731E9: mov eax, [ebp+08h]
008731EC: and al, FEh
008731EE: mov [ebp+08h], eax
008731F1: mov eax, [ebp+08h]
008731F4: mov eax, [eax]
008731F6: push [ebp+08h]
008731F9: call [eax+04h]
008731FC: lea eax, var_18
008731FF: push eax
00873200: mov eax, [ebp+08h]
00873203: mov eax, [eax]
00873205: push [ebp+08h]
00873208: call [eax+000001C0h]
0087320E: fclex 
00873210: mov var_5C, eax
00873213: cmp var_5C, 00000000h
00873217: jnl 873233h
00873219: push 000001C0h
0087321E: push 00443F08h
00873223: push [ebp+08h]
00873226: push var_5C
00873229: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087322E: mov var_68, eax
00873231: jmp 873237h
00873233: and var_68, 00000000h
00873237: push var_18
0087323A: call 004109DCh ; Val(arg_1)
0087323F: fstp real8 ptr var_58
00873242: push 00000000h
00873244: push 00000002h
00873246: push 00000001h
00873248: push 00000000h
0087324A: lea eax, var_20
0087324D: push eax
0087324E: push 00000010h
00873250: push 00000880h
00873255: call 00410946h ; ReDim
0087325A: add esp, 0000001Ch
0087325D: mov var_28, 00442930h
00873264: mov var_30, 00000008h
0087326B: lea esi, var_30
0087326E: push 00000000h
00873270: push var_20
00873273: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00873278: mov ecx, eax
0087327A: mov edx, esi
0087327C: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
00873281: mov var_38, 00442930h
00873288: mov var_40, 00000008h
0087328F: lea esi, var_40
00873292: push 00000001h
00873294: push var_20
00873297: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0087329C: mov ecx, eax
0087329E: mov edx, esi
008732A0: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008732A5: mov var_48, 00442930h
008732AC: mov var_50, 00000008h
008732B3: lea esi, var_50
008732B6: push 00000002h
008732B8: push var_20
008732BB: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008732C0: mov ecx, eax
008732C2: mov edx, esi
008732C4: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008732C9: mov edx, 0043D774h ; x72
008732CE: lea ecx, var_1C
008732D1: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008732D6: lea eax, var_20
008732D9: push eax
008732DA: lea eax, var_1C
008732DD: push eax
008732DE: fld real8 ptr var_58
008732E1: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008732E6: push eax
008732E7: call 007A6910h
008732EC: lea eax, var_20
008732EF: push eax
008732F0: push 00000000h
008732F2: call 00410934h ; Erase
008732F7: lea eax, var_1C
008732FA: push eax
008732FB: lea eax, var_18
008732FE: push eax
008732FF: push 00000002h
00873301: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00873306: add esp, 0000000Ch
00873309: mov var_04, 00000000h
00873310: wait 
00873311: push 00873337h
00873316: jmp 873336h
00873318: lea eax, var_1C
0087331B: push eax
0087331C: lea eax, var_18
0087331F: push eax
00873320: push 00000002h
00873322: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00873327: add esp, 0000000Ch
0087332A: lea eax, var_20
0087332D: push eax
0087332E: push 00000000h
00873330: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
00873335: ret 
End Sub

Private sub txtChat__873356
00873356: push ebp
00873357: mov ebp, esp
00873359: sub esp, 0000000Ch
0087335C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00873361: mov eax, fs:[00h]
00873367: push eax
00873368: mov fs:[00000000h], esp
0087336F: push 00000008h
00873371: pop eax
00873372: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00873377: push ebx
00873378: push esi
00873379: push edi
0087337A: mov var_0C, esp
0087337D: mov var_08, 0040D320h
00873384: mov eax, [ebp+08h]
00873387: and eax, 00000001h
0087338A: mov var_04, eax
0087338D: mov eax, [ebp+08h]
00873390: and al, FEh
00873392: mov [ebp+08h], eax
00873395: mov eax, [ebp+08h]
00873398: mov eax, [eax]
0087339A: push [ebp+08h]
0087339D: call [eax+04h]
008733A0: mov var_04, 00000000h
008733A7: mov eax, [ebp+08h]
008733AA: mov eax, [eax]
008733AC: push [ebp+08h]
008733AF: call [eax+08h]
008733B2: mov eax, var_04
008733B5: mov ecx, var_14
008733B8: mov fs:[00000000h], ecx
008733BF: pop edi
008733C0: pop esi
008733C1: pop ebx
008733C2: leave 
008733C3: retn 0004h
End Sub

Private sub txtChat__8733C6
008733C6: push ebp
008733C7: mov ebp, esp
008733C9: sub esp, 0000000Ch
008733CC: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008733D1: mov eax, fs:[00h]
008733D7: push eax
008733D8: mov fs:[00000000h], esp
008733DF: push 0000006Ch
008733E1: pop eax
008733E2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008733E7: push ebx
008733E8: push esi
008733E9: push edi
008733EA: mov var_0C, esp
008733ED: mov var_08, 0040D328h
008733F4: mov eax, [ebp+08h]
008733F7: and eax, 00000001h
008733FA: mov var_04, eax
008733FD: mov eax, [ebp+08h]
00873400: and al, FEh
00873402: mov [ebp+08h], eax
00873405: mov eax, [ebp+08h]
00873408: mov eax, [eax]
0087340A: push [ebp+08h]
0087340D: call [eax+04h]
00873410: mov eax, [ebp+0Ch]
00873413: movsx esi, word ptr [eax]
00873416: sub esi, 0000000Dh
00873419: neg esi
0087341B: sbb esi, esi
0087341D: inc esi
0087341E: neg esi
00873420: push 00000000h
00873422: push FFFFFDFBh
00873427: mov eax, [ebp+08h]
0087342A: mov eax, [eax]
0087342C: push [ebp+08h]
0087342F: call [eax+000002FCh]
00873435: push eax
00873436: lea eax, var_20
00873439: push eax
0087343A: call 00410A84h ; Set (object)
0087343F: push eax
00873440: lea eax, var_30
00873443: push eax
00873444: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00873449: add esp, 00000010h
0087344C: push eax
0087344D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00873452: mov edx, eax
00873454: lea ecx, var_18
00873457: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0087345C: push eax
0087345D: call 0041098Eh ; Len(arg_1)
00873462: xor ecx, ecx
00873464: test eax, eax
00873466: setnle cl
00873469: neg ecx
0087346B: and si, cx
0087346E: mov var_70, si
00873472: lea ecx, var_18
00873475: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0087347A: lea ecx, var_20
0087347D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00873482: lea ecx, var_30
00873485: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0087348A: movsx eax, word ptr var_70
0087348E: test eax, eax
00873490: jz 00873678h
00873496: lea eax, var_18
00873499: push eax
0087349A: mov eax, [ebp+08h]
0087349D: mov eax, [eax]
0087349F: push [ebp+08h]
008734A2: call [eax+000001C0h]
008734A8: fclex 
008734AA: mov var_70, eax
008734AD: cmp var_70, 00000000h
008734B1: jnl 8734CDh
008734B3: push 000001C0h
008734B8: push 00443F08h
008734BD: push [ebp+08h]
008734C0: push var_70
008734C3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008734C8: mov var_7C, eax
008734CB: jmp 8734D1h
008734CD: and var_7C, 00000000h
008734D1: push var_18
008734D4: call 004109DCh ; Val(arg_1)
008734D9: fstp real8 ptr var_6C
008734DC: push 00000000h
008734DE: push 00000002h
008734E0: push 00000001h
008734E2: push 00000000h
008734E4: lea eax, var_44
008734E7: push eax
008734E8: push 00000010h
008734EA: push 00000880h
008734EF: call 00410946h ; ReDim
008734F4: add esp, 0000001Ch
008734F7: push 00000000h
008734F9: push FFFFFDFBh
008734FE: mov eax, [ebp+08h]
00873501: mov eax, [eax]
00873503: push [ebp+08h]
00873506: call [eax+000002FCh]
0087350C: push eax
0087350D: lea eax, var_20
00873510: push eax
00873511: call 00410A84h ; Set (object)
00873516: push eax
00873517: lea eax, var_30
0087351A: push eax
0087351B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00873520: add esp, 00000010h
00873523: push eax
00873524: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00873529: mov var_38, eax
0087352C: mov var_40, 00000008h
00873533: lea esi, var_40
00873536: push 00000000h
00873538: push var_44
0087353B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00873540: mov ecx, eax
00873542: mov edx, esi
00873544: call 00410940h ; msvbvm60.dll.__vbaVarZero
00873549: mov eax, [ebp+08h]
0087354C: add eax, 00000034h
0087354F: mov var_4C, eax
00873552: mov var_54, 00004008h
00873559: lea esi, var_54
0087355C: push 00000001h
0087355E: push var_44
00873561: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00873566: mov ecx, eax
00873568: mov edx, esi
0087356A: call 00410940h ; msvbvm60.dll.__vbaVarZero
0087356F: mov eax, [ebp+08h]
00873572: add eax, 00000038h
00873575: mov var_5C, eax
00873578: mov var_64, 00004008h
0087357F: lea esi, var_64
00873582: push 00000002h
00873584: push var_44
00873587: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0087358C: mov ecx, eax
0087358E: mov edx, esi
00873590: call 00410940h ; msvbvm60.dll.__vbaVarZero
00873595: mov edx, 0043D774h ; x72
0087359A: lea ecx, var_1C
0087359D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008735A2: lea eax, var_44
008735A5: push eax
008735A6: lea eax, var_1C
008735A9: push eax
008735AA: fld real8 ptr var_6C
008735AD: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008735B2: push eax
008735B3: call 007A6910h
008735B8: lea eax, var_44
008735BB: push eax
008735BC: push 00000000h
008735BE: call 00410934h ; Erase
008735C3: lea eax, var_1C
008735C6: push eax
008735C7: lea eax, var_18
008735CA: push eax
008735CB: push 00000002h
008735CD: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008735D2: add esp, 0000000Ch
008735D5: lea ecx, var_20
008735D8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008735DD: lea ecx, var_30
008735E0: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008735E5: push 00000000h
008735E7: push FFFFFDFBh
008735EC: mov eax, [ebp+08h]
008735EF: mov eax, [eax]
008735F1: push [ebp+08h]
008735F4: call [eax+000002FCh]
008735FA: push eax
008735FB: lea eax, var_20
008735FE: push eax
008735FF: call 00410A84h ; Set (object)
00873604: push eax
00873605: lea eax, var_30
00873608: push eax
00873609: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087360E: add esp, 00000010h
00873611: mov eax, [ebp+08h]
00873614: push [eax+34h]
00873617: lea eax, var_30
0087361A: push eax
0087361B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00873620: mov edx, eax
00873622: lea ecx, var_18
00873625: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0087362A: push eax
0087362B: mov eax, [ebp+08h]
0087362E: mov eax, [eax]
00873630: push [ebp+08h]
00873633: call [eax+00000708h]
00873639: mov var_70, eax
0087363C: cmp var_70, 00000000h
00873640: jnl 87365Ch
00873642: push 00000708h
00873647: push 004403E0h
0087364C: push [ebp+08h]
0087364F: push var_70
00873652: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00873657: mov var_80, eax
0087365A: jmp 873660h
0087365C: and var_80, 00000000h
00873660: lea ecx, var_18
00873663: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00873668: lea ecx, var_20
0087366B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00873670: lea ecx, var_30
00873673: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00873678: mov var_04, 00000000h
0087367F: wait 
00873680: push 008736C0h
00873685: jmp 8736BFh
00873687: lea eax, var_1C
0087368A: push eax
0087368B: lea eax, var_18
0087368E: push eax
0087368F: push 00000002h
00873691: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00873696: add esp, 0000000Ch
00873699: lea ecx, var_20
0087369C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008736A1: lea eax, var_40
008736A4: push eax
008736A5: lea eax, var_30
008736A8: push eax
008736A9: push 00000002h
008736AB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008736B0: add esp, 0000000Ch
008736B3: lea eax, var_44
008736B6: push eax
008736B7: push 00000000h
008736B9: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008736BE: ret 
End Sub

Private sub txtChat__873AB3
00873AB3: push ebp
00873AB4: mov ebp, esp
00873AB6: sub esp, 0000000Ch
00873AB9: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00873ABE: mov eax, fs:[00h]
00873AC4: push eax
00873AC5: mov fs:[00000000h], esp
00873ACC: push 0000002Ch
00873ACE: pop eax
00873ACF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00873AD4: push ebx
00873AD5: push esi
00873AD6: push edi
00873AD7: mov var_0C, esp
00873ADA: mov var_08, 0040D348h
00873AE1: mov eax, [ebp+08h]
00873AE4: and eax, 00000001h
00873AE7: mov var_04, eax
00873AEA: mov eax, [ebp+08h]
00873AED: and al, FEh
00873AEF: mov [ebp+08h], eax
00873AF2: mov eax, [ebp+08h]
00873AF5: mov eax, [eax]
00873AF7: push [ebp+08h]
00873AFA: call [eax+04h]
00873AFD: mov eax, [ebp+0Ch]
00873B00: movsx eax, word ptr [eax]
00873B03: cmp eax, 0000000Dh
00873B06: jnz 873B4Fh
00873B08: and var_20, 00000000h
00873B0C: mov var_28, 00000008h
00873B13: push 00000010h
00873B15: pop eax
00873B16: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00873B1B: lea esi, var_28
00873B1E: mov edi, esp
00873B20: movsd 
00873B21: movsd 
00873B22: movsd 
00873B23: movsd 
00873B24: push FFFFFDFBh
00873B29: mov eax, [ebp+08h]
00873B2C: mov eax, [eax]
00873B2E: push [ebp+08h]
00873B31: call [eax+000002FCh]
00873B37: push eax
00873B38: lea eax, var_18
00873B3B: push eax
00873B3C: call 00410A84h ; Set (object)
00873B41: push eax
00873B42: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00873B47: lea ecx, var_18
00873B4A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00873B4F: mov var_04, 00000000h
00873B56: push 00873B67h
00873B5B: jmp 873B66h
00873B5D: lea ecx, var_18
00873B60: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00873B65: ret 
End Sub

Private sub unknown_8736DF
008736DF: push ebp
008736E0: mov ebp, esp
008736E2: sub esp, 0000000Ch
008736E5: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008736EA: mov eax, fs:[00h]
008736F0: push eax
008736F1: mov fs:[00000000h], esp
008736F8: mov eax, 00000128h
008736FD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00873702: push ebx
00873703: push esi
00873704: push edi
00873705: mov var_0C, esp
00873708: mov var_08, 0040D338h
0087370F: mov var_04, 00000000h
00873716: mov eax, [ebp+08h]
00873719: mov eax, [eax]
0087371B: push [ebp+08h]
0087371E: call [eax+04h]
00873721: mov edx, [ebp+0Ch]
00873724: lea ecx, var_1C
00873727: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0087372C: mov edx, [ebp+10h]
0087372F: lea ecx, var_18
00873732: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00873737: push 00000000h
00873739: push FFFFFDFBh
0087373E: mov eax, [ebp+08h]
00873741: mov eax, [eax]
00873743: push [ebp+08h]
00873746: call [eax+00000300h]
0087374C: push eax
0087374D: lea eax, var_30
00873750: push eax
00873751: call 00410A84h ; Set (object)
00873756: push eax
00873757: lea eax, var_44
0087375A: push eax
0087375B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00873760: add esp, 00000010h
00873763: push eax
00873764: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00873769: mov edx, eax
0087376B: lea ecx, var_20
0087376E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00873773: push eax
00873774: push var_18
00873777: call 00410A18h ; &
0087377C: mov edx, eax
0087377E: lea ecx, var_24
00873781: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00873786: push eax
00873787: push 004412B8h
0087378C: call 00410A18h ; &
00873791: mov edx, eax
00873793: lea ecx, var_28
00873796: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0087379B: push eax
0087379C: push 00445568h
008737A1: call 00410A18h ; &
008737A6: mov edx, eax
008737A8: lea ecx, var_2C
008737AB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008737B0: push eax
008737B1: push 004496E4h
008737B6: call 00410A18h ; &
008737BB: mov var_5C, eax
008737BE: mov var_64, 00000008h
008737C5: lea eax, var_54
008737C8: push eax
008737C9: call 00410BF2h ; Time 'arg_1
008737CE: mov var_000000DC, 004496F0h
008737D8: mov var_000000E4, 00000008h
008737E2: mov var_000000EC, 00441264h ; vbCrLf
008737EC: mov var_000000F4, 00000008h
008737F6: mov eax, var_1C
008737F9: mov var_000000FC, eax
008737FF: mov var_00000104, 00000008h
00873809: mov var_0000010C, 00441264h ; vbCrLf
00873813: mov var_00000114, 00000008h
0087381D: mov var_0000011C, 00441264h ; vbCrLf
00873827: mov var_00000124, 00000008h
00873831: lea eax, var_64
00873834: push eax
00873835: lea eax, var_54
00873838: push eax
00873839: lea eax, var_74
0087383C: push eax
0087383D: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00873842: push eax
00873843: lea eax, var_000000E4
00873849: push eax
0087384A: lea eax, var_00000084
00873850: push eax
00873851: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00873856: push eax
00873857: lea eax, var_000000F4
0087385D: push eax
0087385E: lea eax, var_00000094
00873864: push eax
00873865: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0087386A: push eax
0087386B: lea eax, var_00000104
00873871: push eax
00873872: lea eax, var_000000A4
00873878: push eax
00873879: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0087387E: push eax
0087387F: lea eax, var_00000114
00873885: push eax
00873886: lea eax, var_000000B4
0087388C: push eax
0087388D: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00873892: push eax
00873893: lea eax, var_00000124
00873899: push eax
0087389A: lea eax, var_000000C4
008738A0: push eax
008738A1: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008738A6: push eax
008738A7: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008738AC: mov var_000000CC, eax
008738B2: mov var_000000D4, 00000008h
008738BC: push 00000010h
008738BE: pop eax
008738BF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008738C4: lea esi, var_000000D4
008738CA: mov edi, esp
008738CC: movsd 
008738CD: movsd 
008738CE: movsd 
008738CF: movsd 
008738D0: push FFFFFDFBh
008738D5: mov eax, [ebp+08h]
008738D8: mov eax, [eax]
008738DA: push [ebp+08h]
008738DD: call [eax+00000300h]
008738E3: push eax
008738E4: lea eax, var_34
008738E7: push eax
008738E8: call 00410A84h ; Set (object)
008738ED: push eax
008738EE: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008738F3: lea eax, var_2C
008738F6: push eax
008738F7: lea eax, var_28
008738FA: push eax
008738FB: lea eax, var_24
008738FE: push eax
008738FF: lea eax, var_20
00873902: push eax
00873903: push 00000004h
00873905: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0087390A: add esp, 00000014h
0087390D: lea eax, var_34
00873910: push eax
00873911: lea eax, var_30
00873914: push eax
00873915: push 00000002h
00873917: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087391C: add esp, 0000000Ch
0087391F: lea eax, var_000000D4
00873925: push eax
00873926: lea eax, var_000000C4
0087392C: push eax
0087392D: lea eax, var_000000B4
00873933: push eax
00873934: lea eax, var_000000A4
0087393A: push eax
0087393B: lea eax, var_00000094
00873941: push eax
00873942: lea eax, var_00000084
00873948: push eax
00873949: lea eax, var_74
0087394C: push eax
0087394D: lea eax, var_54
00873950: push eax
00873951: lea eax, var_64
00873954: push eax
00873955: lea eax, var_44
00873958: push eax
00873959: push 0000000Ah
0087395B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00873960: add esp, 0000002Ch
00873963: push 00000000h
00873965: push FFFFFDFBh
0087396A: mov eax, [ebp+08h]
0087396D: mov eax, [eax]
0087396F: push [ebp+08h]
00873972: call [eax+00000300h]
00873978: push eax
00873979: lea eax, var_30
0087397C: push eax
0087397D: call 00410A84h ; Set (object)
00873982: push eax
00873983: lea eax, var_44
00873986: push eax
00873987: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087398C: add esp, 00000010h
0087398F: push eax
00873990: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00873995: mov edx, eax
00873997: lea ecx, var_20
0087399A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0087399F: push eax
008739A0: call 0041098Eh ; Len(arg_1)
008739A5: mov var_000000DC, eax
008739AB: mov var_000000E4, 00000003h
008739B5: push 00000010h
008739B7: pop eax
008739B8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008739BD: lea esi, var_000000E4
008739C3: mov edi, esp
008739C5: movsd 
008739C6: movsd 
008739C7: movsd 
008739C8: movsd 
008739C9: push 00000008h
008739CB: mov eax, [ebp+08h]
008739CE: mov eax, [eax]
008739D0: push [ebp+08h]
008739D3: call [eax+00000300h]
008739D9: push eax
008739DA: lea eax, var_34
008739DD: push eax
008739DE: call 00410A84h ; Set (object)
008739E3: push eax
008739E4: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008739E9: lea ecx, var_20
008739EC: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008739F1: lea eax, var_34
008739F4: push eax
008739F5: lea eax, var_30
008739F8: push eax
008739F9: push 00000002h
008739FB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00873A00: add esp, 0000000Ch
00873A03: lea ecx, var_44
00873A06: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00873A0B: push 00873A94h
00873A10: jmp 873A83h
00873A12: lea eax, var_2C
00873A15: push eax
00873A16: lea eax, var_28
00873A19: push eax
00873A1A: lea eax, var_24
00873A1D: push eax
00873A1E: lea eax, var_20
00873A21: push eax
00873A22: push 00000004h
00873A24: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00873A29: add esp, 00000014h
00873A2C: lea eax, var_34
00873A2F: push eax
00873A30: lea eax, var_30
00873A33: push eax
00873A34: push 00000002h
00873A36: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00873A3B: add esp, 0000000Ch
00873A3E: lea eax, var_000000D4
00873A44: push eax
00873A45: lea eax, var_000000C4
00873A4B: push eax
00873A4C: lea eax, var_000000B4
00873A52: push eax
00873A53: lea eax, var_000000A4
00873A59: push eax
00873A5A: lea eax, var_00000094
00873A60: push eax
00873A61: lea eax, var_00000084
00873A67: push eax
00873A68: lea eax, var_74
00873A6B: push eax
00873A6C: lea eax, var_64
00873A6F: push eax
00873A70: lea eax, var_54
00873A73: push eax
00873A74: lea eax, var_44
00873A77: push eax
00873A78: push 0000000Ah
00873A7A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00873A7F: add esp, 0000002Ch
00873A82: ret 
End Sub

