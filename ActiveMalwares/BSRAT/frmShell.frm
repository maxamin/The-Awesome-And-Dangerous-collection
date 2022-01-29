VERSION 5.00
Begin VB.Form frmShell
  Caption = "Shell"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 5 'Sizable ToolWindow
  'Icon = n/a
  LinkTopic = "Form1"
  MinButton = 0   'False
  ClientLeft = 60
  ClientTop = 330
  ClientWidth = 10455
  ClientHeight = 4920
  StartUpPosition = 1 'CenterOwner
  Begin RichTextLib.RichTextBox txtShell
    Left = 0
    Top = 0
    Width = 10455
    Height = 4905
    TabIndex = 0
  End
End

Attribute VB_Name = "frmShell"


Private sub txtShell__80303F
0080303F: push ebp
00803040: mov ebp, esp
00803042: sub esp, 0000000Ch
00803045: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080304A: mov eax, fs:[00h]
00803050: push eax
00803051: mov fs:[00000000h], esp
00803058: push 00000058h
0080305A: pop eax
0080305B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00803060: push ebx
00803061: push esi
00803062: push edi
00803063: mov var_0C, esp
00803066: mov var_08, 0040A2D0h
0080306D: mov eax, [ebp+08h]
00803070: and eax, 00000001h
00803073: mov var_04, eax
00803076: mov eax, [ebp+08h]
00803079: and al, FEh
0080307B: mov [ebp+08h], eax
0080307E: mov eax, [ebp+08h]
00803081: mov eax, [eax]
00803083: push [ebp+08h]
00803086: call [eax+04h]
00803089: push 00000000h
0080308B: push 00000016h
0080308D: mov eax, [ebp+08h]
00803090: mov eax, [eax]
00803092: push [ebp+08h]
00803095: call [eax+000002FCh]
0080309B: push eax
0080309C: lea eax, var_1C
0080309F: push eax
008030A0: call 00410A84h ; Set (object)
008030A5: push eax
008030A6: lea eax, var_30
008030A9: push eax
008030AA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008030AF: add esp, 00000010h
008030B2: push eax
008030B3: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008030B8: neg ax
008030BB: sbb eax, eax
008030BD: inc eax
008030BE: neg eax
008030C0: mov var_64, ax
008030C4: lea ecx, var_1C
008030C7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008030CC: lea ecx, var_30
008030CF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008030D4: movsx eax, word ptr var_64
008030D8: test eax, eax
008030DA: jz 0080317Fh
008030E0: push 00000000h
008030E2: push FFFFFDFBh
008030E7: mov eax, [ebp+08h]
008030EA: mov eax, [eax]
008030EC: push [ebp+08h]
008030EF: call [eax+000002FCh]
008030F5: push eax
008030F6: lea eax, var_1C
008030F9: push eax
008030FA: call 00410A84h ; Set (object)
008030FF: push eax
00803100: lea eax, var_30
00803103: push eax
00803104: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00803109: add esp, 00000010h
0080310C: push eax
0080310D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00803112: mov edx, eax
00803114: lea ecx, var_18
00803117: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080311C: push eax
0080311D: call 0041098Eh ; Len(arg_1)
00803122: mov var_48, eax
00803125: mov var_50, 00000003h
0080312C: push 00000010h
0080312E: pop eax
0080312F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00803134: lea esi, var_50
00803137: mov edi, esp
00803139: movsd 
0080313A: movsd 
0080313B: movsd 
0080313C: movsd 
0080313D: push 00000008h
0080313F: mov eax, [ebp+08h]
00803142: mov eax, [eax]
00803144: push [ebp+08h]
00803147: call [eax+000002FCh]
0080314D: push eax
0080314E: lea eax, var_20
00803151: push eax
00803152: call 00410A84h ; Set (object)
00803157: push eax
00803158: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0080315D: lea ecx, var_18
00803160: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00803165: lea eax, var_20
00803168: push eax
00803169: lea eax, var_1C
0080316C: push eax
0080316D: push 00000002h
0080316F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00803174: add esp, 0000000Ch
00803177: lea ecx, var_30
0080317A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0080317F: mov eax, [ebp+0Ch]
00803182: xor ebx, ebx
00803184: cmp word ptr [eax], 0008h
00803188: setz bl
0080318B: neg ebx
0080318D: push 00000000h
0080318F: push 8001000Bh
00803194: mov eax, [ebp+08h]
00803197: mov eax, [eax]
00803199: push [ebp+08h]
0080319C: call [eax+000002FCh]
008031A2: push eax
008031A3: lea eax, var_1C
008031A6: push eax
008031A7: call 00410A84h ; Set (object)
008031AC: push eax
008031AD: lea eax, var_30
008031B0: push eax
008031B1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008031B6: add esp, 00000010h
008031B9: push eax
008031BA: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008031BF: mov edx, eax
008031C1: lea ecx, var_18
008031C4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008031C9: push eax
008031CA: call 0041098Eh ; Len(arg_1)
008031CF: xor ecx, ecx
008031D1: test eax, eax
008031D3: setle cl
008031D6: neg ecx
008031D8: and bx, cx
008031DB: mov var_64, bx
008031DF: lea ecx, var_18
008031E2: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008031E7: lea ecx, var_1C
008031EA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008031EF: lea ecx, var_30
008031F2: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008031F7: movsx eax, word ptr var_64
008031FB: test eax, eax
008031FD: jz 00803297h
00803203: push 00000000h
00803205: push FFFFFDFBh
0080320A: mov eax, [ebp+08h]
0080320D: mov eax, [eax]
0080320F: push [ebp+08h]
00803212: call [eax+000002FCh]
00803218: push eax
00803219: lea eax, var_1C
0080321C: push eax
0080321D: call 00410A84h ; Set (object)
00803222: push eax
00803223: lea eax, var_30
00803226: push eax
00803227: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080322C: add esp, 00000010h
0080322F: push eax
00803230: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00803235: mov var_38, eax
00803238: mov var_40, 00000008h
0080323F: push 00000010h
00803241: pop eax
00803242: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00803247: lea esi, var_40
0080324A: mov edi, esp
0080324C: movsd 
0080324D: movsd 
0080324E: movsd 
0080324F: movsd 
00803250: push FFFFFDFBh
00803255: mov eax, [ebp+08h]
00803258: mov eax, [eax]
0080325A: push [ebp+08h]
0080325D: call [eax+000002FCh]
00803263: push eax
00803264: lea eax, var_20
00803267: push eax
00803268: call 00410A84h ; Set (object)
0080326D: push eax
0080326E: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00803273: lea eax, var_20
00803276: push eax
00803277: lea eax, var_1C
0080327A: push eax
0080327B: push 00000002h
0080327D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00803282: add esp, 0000000Ch
00803285: lea eax, var_40
00803288: push eax
00803289: lea eax, var_30
0080328C: push eax
0080328D: push 00000002h
0080328F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00803294: add esp, 0000000Ch
00803297: mov var_04, 00000000h
0080329E: push 008032D3h
008032A3: jmp 8032D2h
008032A5: lea ecx, var_18
008032A8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008032AD: lea eax, var_20
008032B0: push eax
008032B1: lea eax, var_1C
008032B4: push eax
008032B5: push 00000002h
008032B7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008032BC: add esp, 0000000Ch
008032BF: lea eax, var_40
008032C2: push eax
008032C3: lea eax, var_30
008032C6: push eax
008032C7: push 00000002h
008032C9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008032CE: add esp, 0000000Ch
008032D1: ret 
End Sub

Private sub txtShell__803DD4
00803DD4: push ebp
00803DD5: mov ebp, esp
00803DD7: sub esp, 0000000Ch
00803DDA: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00803DDF: mov eax, fs:[00h]
00803DE5: push eax
00803DE6: mov fs:[00000000h], esp
00803DED: mov eax, 0000008Ch
00803DF2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00803DF7: push ebx
00803DF8: push esi
00803DF9: push edi
00803DFA: mov var_0C, esp
00803DFD: mov var_08, 0040A380h
00803E04: mov eax, [ebp+08h]
00803E07: and eax, 00000001h
00803E0A: mov var_04, eax
00803E0D: mov eax, [ebp+08h]
00803E10: and al, FEh
00803E12: mov [ebp+08h], eax
00803E15: mov eax, [ebp+08h]
00803E18: mov eax, [eax]
00803E1A: push [ebp+08h]
00803E1D: call [eax+04h]
00803E20: push 00000000h
00803E22: push 00000016h
00803E24: mov eax, [ebp+08h]
00803E27: mov eax, [eax]
00803E29: push [ebp+08h]
00803E2C: call [eax+000002FCh]
00803E32: push eax
00803E33: lea eax, var_1C
00803E36: push eax
00803E37: call 00410A84h ; Set (object)
00803E3C: push eax
00803E3D: lea eax, var_34
00803E40: push eax
00803E41: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00803E46: add esp, 00000010h
00803E49: push eax
00803E4A: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00803E4F: neg ax
00803E52: sbb eax, eax
00803E54: inc eax
00803E55: neg eax
00803E57: mov var_00000098, ax
00803E5E: lea ecx, var_1C
00803E61: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00803E66: lea ecx, var_34
00803E69: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00803E6E: movsx eax, word ptr var_00000098
00803E75: test eax, eax
00803E77: jz 00803F22h
00803E7D: push 00000000h
00803E7F: push FFFFFDFBh
00803E84: mov eax, [ebp+08h]
00803E87: mov eax, [eax]
00803E89: push [ebp+08h]
00803E8C: call [eax+000002FCh]
00803E92: push eax
00803E93: lea eax, var_1C
00803E96: push eax
00803E97: call 00410A84h ; Set (object)
00803E9C: push eax
00803E9D: lea eax, var_34
00803EA0: push eax
00803EA1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00803EA6: add esp, 00000010h
00803EA9: push eax
00803EAA: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00803EAF: mov edx, eax
00803EB1: lea ecx, var_18
00803EB4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00803EB9: push eax
00803EBA: call 0041098Eh ; Len(arg_1)
00803EBF: mov var_7C, eax
00803EC2: mov var_00000084, 00000003h
00803ECC: push 00000010h
00803ECE: pop eax
00803ECF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00803ED4: lea esi, var_00000084
00803EDA: mov edi, esp
00803EDC: movsd 
00803EDD: movsd 
00803EDE: movsd 
00803EDF: movsd 
00803EE0: push 00000008h
00803EE2: mov eax, [ebp+08h]
00803EE5: mov eax, [eax]
00803EE7: push [ebp+08h]
00803EEA: call [eax+000002FCh]
00803EF0: push eax
00803EF1: lea eax, var_20
00803EF4: push eax
00803EF5: call 00410A84h ; Set (object)
00803EFA: push eax
00803EFB: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00803F00: lea ecx, var_18
00803F03: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00803F08: lea eax, var_20
00803F0B: push eax
00803F0C: lea eax, var_1C
00803F0F: push eax
00803F10: push 00000002h
00803F12: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00803F17: add esp, 0000000Ch
00803F1A: lea ecx, var_34
00803F1D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00803F22: push 00000000h
00803F24: push FFFFFDFBh
00803F29: mov eax, [ebp+08h]
00803F2C: mov eax, [eax]
00803F2E: push [ebp+08h]
00803F31: call [eax+000002FCh]
00803F37: push eax
00803F38: lea eax, var_1C
00803F3B: push eax
00803F3C: call 00410A84h ; Set (object)
00803F41: push eax
00803F42: lea eax, var_34
00803F45: push eax
00803F46: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00803F4B: add esp, 00000010h
00803F4E: lea eax, var_34
00803F51: push eax
00803F52: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00803F57: mov var_3C, eax
00803F5A: mov var_44, 00000008h
00803F61: push 00000001h
00803F63: lea eax, var_44
00803F66: push eax
00803F67: lea eax, var_54
00803F6A: push eax
00803F6B: call 00410778h ; Left(arg_1, arg_2)
00803F70: lea eax, var_54
00803F73: push eax
00803F74: lea eax, var_18
00803F77: push eax
00803F78: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
00803F7D: push eax
00803F7E: call 00410BE0h ; Asc(arg_1)
00803F83: sub ax, 000Dh
00803F87: neg ax
00803F8A: sbb eax, eax
00803F8C: inc eax
00803F8D: neg eax
00803F8F: mov var_00000098, ax
00803F96: lea ecx, var_18
00803F99: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00803F9E: lea ecx, var_1C
00803FA1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00803FA6: lea eax, var_54
00803FA9: push eax
00803FAA: lea eax, var_44
00803FAD: push eax
00803FAE: lea eax, var_34
00803FB1: push eax
00803FB2: push 00000003h
00803FB4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00803FB9: add esp, 00000010h
00803FBC: movsx eax, word ptr var_00000098
00803FC3: test eax, eax
00803FC5: jz 0080418Bh
00803FCB: push 00000000h
00803FCD: push FFFFFDFBh
00803FD2: mov eax, [ebp+08h]
00803FD5: mov eax, [eax]
00803FD7: push [ebp+08h]
00803FDA: call [eax+000002FCh]
00803FE0: push eax
00803FE1: lea eax, var_1C
00803FE4: push eax
00803FE5: call 00410A84h ; Set (object)
00803FEA: push eax
00803FEB: lea eax, var_34
00803FEE: push eax
00803FEF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00803FF4: add esp, 00000010h
00803FF7: lea eax, var_34
00803FFA: push eax
00803FFB: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00804000: mov var_4C, eax
00804003: mov var_54, 00000008h
0080400A: push 00000000h
0080400C: push FFFFFDFBh
00804011: mov eax, [ebp+08h]
00804014: mov eax, [eax]
00804016: push [ebp+08h]
00804019: call [eax+000002FCh]
0080401F: push eax
00804020: lea eax, var_20
00804023: push eax
00804024: call 00410A84h ; Set (object)
00804029: push eax
0080402A: lea eax, var_44
0080402D: push eax
0080402E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00804033: add esp, 00000010h
00804036: push eax
00804037: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0080403C: mov edx, eax
0080403E: lea ecx, var_18
00804041: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00804046: push eax
00804047: call 0041098Eh ; Len(arg_1)
0080404C: sub eax, 00000002h
0080404F: jo 008041F6h
00804055: push eax
00804056: lea eax, var_54
00804059: push eax
0080405A: lea eax, var_64
0080405D: push eax
0080405E: call 004108D4h ; Right(arg_1, arg_2)
00804063: lea eax, var_64
00804066: push eax
00804067: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0080406C: mov var_6C, eax
0080406F: mov var_74, 00000008h
00804076: push 00000010h
00804078: pop eax
00804079: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080407E: lea esi, var_74
00804081: mov edi, esp
00804083: movsd 
00804084: movsd 
00804085: movsd 
00804086: movsd 
00804087: push FFFFFDFBh
0080408C: mov eax, [ebp+08h]
0080408F: mov eax, [eax]
00804091: push [ebp+08h]
00804094: call [eax+000002FCh]
0080409A: push eax
0080409B: lea eax, var_24
0080409E: push eax
0080409F: call 00410A84h ; Set (object)
008040A4: push eax
008040A5: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008040AA: lea ecx, var_18
008040AD: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008040B2: lea eax, var_24
008040B5: push eax
008040B6: lea eax, var_20
008040B9: push eax
008040BA: lea eax, var_1C
008040BD: push eax
008040BE: push 00000003h
008040C0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008040C5: add esp, 00000010h
008040C8: lea eax, var_74
008040CB: push eax
008040CC: lea eax, var_64
008040CF: push eax
008040D0: lea eax, var_54
008040D3: push eax
008040D4: lea eax, var_44
008040D7: push eax
008040D8: lea eax, var_34
008040DB: push eax
008040DC: push 00000005h
008040DE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008040E3: add esp, 00000018h
008040E6: push 00000000h
008040E8: push FFFFFDFBh
008040ED: mov eax, [ebp+08h]
008040F0: mov eax, [eax]
008040F2: push [ebp+08h]
008040F5: call [eax+000002FCh]
008040FB: push eax
008040FC: lea eax, var_1C
008040FF: push eax
00804100: call 00410A84h ; Set (object)
00804105: push eax
00804106: lea eax, var_34
00804109: push eax
0080410A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080410F: add esp, 00000010h
00804112: push eax
00804113: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00804118: mov edx, eax
0080411A: lea ecx, var_18
0080411D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00804122: push eax
00804123: call 0041098Eh ; Len(arg_1)
00804128: mov var_7C, eax
0080412B: mov var_00000084, 00000003h
00804135: push 00000010h
00804137: pop eax
00804138: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080413D: lea esi, var_00000084
00804143: mov edi, esp
00804145: movsd 
00804146: movsd 
00804147: movsd 
00804148: movsd 
00804149: push 00000008h
0080414B: mov eax, [ebp+08h]
0080414E: mov eax, [eax]
00804150: push [ebp+08h]
00804153: call [eax+000002FCh]
00804159: push eax
0080415A: lea eax, var_20
0080415D: push eax
0080415E: call 00410A84h ; Set (object)
00804163: push eax
00804164: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00804169: lea ecx, var_18
0080416C: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00804171: lea eax, var_20
00804174: push eax
00804175: lea eax, var_1C
00804178: push eax
00804179: push 00000002h
0080417B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00804180: add esp, 0000000Ch
00804183: lea ecx, var_34
00804186: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0080418B: mov var_04, 00000000h
00804192: push 008041D7h
00804197: jmp 8041D6h
00804199: lea ecx, var_18
0080419C: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008041A1: lea eax, var_24
008041A4: push eax
008041A5: lea eax, var_20
008041A8: push eax
008041A9: lea eax, var_1C
008041AC: push eax
008041AD: push 00000003h
008041AF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008041B4: add esp, 00000010h
008041B7: lea eax, var_74
008041BA: push eax
008041BB: lea eax, var_64
008041BE: push eax
008041BF: lea eax, var_54
008041C2: push eax
008041C3: lea eax, var_44
008041C6: push eax
008041C7: lea eax, var_34
008041CA: push eax
008041CB: push 00000005h
008041CD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008041D2: add esp, 00000018h
008041D5: ret 
End Sub

Private sub txtShell__8032F2
008032F2: push ebp
008032F3: mov ebp, esp
008032F5: sub esp, 00000018h
008032F8: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008032FD: mov eax, fs:[00h]
00803303: push eax
00803304: mov fs:[00000000h], esp
0080330B: mov eax, 000000D8h
00803310: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00803315: push ebx
00803316: push esi
00803317: push edi
00803318: mov var_18, esp
0080331B: mov var_14, 0040A2E0h
00803322: mov eax, [ebp+08h]
00803325: and eax, 00000001h
00803328: mov var_10, eax
0080332B: mov eax, [ebp+08h]
0080332E: and al, FEh
00803330: mov [ebp+08h], eax
00803333: mov var_0C, 00000000h
0080333A: mov eax, [ebp+08h]
0080333D: mov eax, [eax]
0080333F: push [ebp+08h]
00803342: call [eax+04h]
00803345: mov var_04, 00000001h
0080334C: mov var_04, 00000002h
00803353: push FFFFFFFFh
00803355: call 00410A60h ; On Error ...
0080335A: mov var_04, 00000003h
00803361: mov eax, [ebp+0Ch]
00803364: cmp word ptr [eax], 0016h
00803368: jnz 0080353Eh
0080336E: mov var_04, 00000004h
00803375: cmp [008F529Ch], 00000000h
0080337C: jnz 803399h
0080337E: push 008F529Ch
00803383: push 00440F2Ch
00803388: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080338D: mov var_000000E8, 008F529Ch
00803397: jmp 8033A3h
00803399: mov var_000000E8, 008F529Ch
008033A3: mov eax, var_000000E8
008033A9: mov eax, [eax]
008033AB: mov var_000000C4, eax
008033B1: lea eax, var_30
008033B4: push eax
008033B5: mov eax, var_000000C4
008033BB: mov eax, [eax]
008033BD: push var_000000C4
008033C3: call [eax+1Ch]
008033C6: fclex 
008033C8: mov var_000000C8, eax
008033CE: cmp var_000000C8, 00000000h
008033D5: jnl 8033F7h
008033D7: push 0000001Ch
008033D9: push 00440F1Ch
008033DE: push var_000000C4
008033E4: push var_000000C8
008033EA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008033EF: mov var_000000EC, eax
008033F5: jmp 8033FEh
008033F7: and var_000000EC, 00000000h
008033FE: mov eax, var_30
00803401: mov var_000000CC, eax
00803407: mov var_000000A0, 80020004h
00803411: mov var_000000A8, 0000000Ah
0080341B: lea eax, var_24
0080341E: push eax
0080341F: push 00000010h
00803421: pop eax
00803422: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00803427: lea esi, var_000000A8
0080342D: mov edi, esp
0080342F: movsd 
00803430: movsd 
00803431: movsd 
00803432: movsd 
00803433: mov eax, var_000000CC
00803439: mov eax, [eax]
0080343B: push var_000000CC
00803441: call [eax+5Ch]
00803444: fclex 
00803446: mov var_000000D0, eax
0080344C: cmp var_000000D0, 00000000h
00803453: jnl 803475h
00803455: push 0000005Ch
00803457: push 00445554h
0080345C: push var_000000CC
00803462: push var_000000D0
00803468: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080346D: mov var_000000F0, eax
00803473: jmp 80347Ch
00803475: and var_000000F0, 00000000h
0080347C: push 00000000h
0080347E: push 8001000Bh
00803483: mov eax, [ebp+08h]
00803486: mov eax, [eax]
00803488: push [ebp+08h]
0080348B: call [eax+000002FCh]
00803491: push eax
00803492: lea eax, var_2C
00803495: push eax
00803496: call 00410A84h ; Set (object)
0080349B: push eax
0080349C: lea eax, var_44
0080349F: push eax
008034A0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008034A5: add esp, 00000010h
008034A8: push eax
008034A9: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008034AE: mov edx, eax
008034B0: lea ecx, var_28
008034B3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008034B8: push eax
008034B9: push var_24
008034BC: call 00410A18h ; &
008034C1: mov var_4C, eax
008034C4: mov var_54, 00000008h
008034CB: push 00000010h
008034CD: pop eax
008034CE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008034D3: lea esi, var_54
008034D6: mov edi, esp
008034D8: movsd 
008034D9: movsd 
008034DA: movsd 
008034DB: movsd 
008034DC: push 8001000Bh
008034E1: mov eax, [ebp+08h]
008034E4: mov eax, [eax]
008034E6: push [ebp+08h]
008034E9: call [eax+000002FCh]
008034EF: push eax
008034F0: lea eax, var_34
008034F3: push eax
008034F4: call 00410A84h ; Set (object)
008034F9: push eax
008034FA: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008034FF: lea eax, var_24
00803502: push eax
00803503: lea eax, var_28
00803506: push eax
00803507: push 00000002h
00803509: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080350E: add esp, 0000000Ch
00803511: lea eax, var_34
00803514: push eax
00803515: lea eax, var_30
00803518: push eax
00803519: lea eax, var_2C
0080351C: push eax
0080351D: push 00000003h
0080351F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00803524: add esp, 00000010h
00803527: lea eax, var_54
0080352A: push eax
0080352B: lea eax, var_44
0080352E: push eax
0080352F: push 00000002h
00803531: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00803536: add esp, 0000000Ch
00803539: jmp 00803D41h
0080353E: mov var_04, 00000007h
00803545: mov eax, [ebp+0Ch]
00803548: xor ecx, ecx
0080354A: cmp word ptr [eax], 007Fh
0080354E: setz cl
00803551: mov eax, [ebp+0Ch]
00803554: xor edx, edx
00803556: cmp word ptr [eax], 0001h
0080355A: setz dl
0080355D: and ecx, edx
0080355F: neg ecx
00803561: sbb ecx, ecx
00803563: neg ecx
00803565: mov eax, [ebp+0Ch]
00803568: xor edx, edx
0080356A: cmp word ptr [eax], 001Ah
0080356E: setnz dl
00803571: and ecx, edx
00803573: test ecx, ecx
00803575: jnz 8035CBh
00803577: mov var_04, 00000008h
0080357E: and var_000000A0, 00000000h
00803585: mov var_000000A8, 0000000Bh
0080358F: push 00000010h
00803591: pop eax
00803592: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00803597: lea esi, var_000000A8
0080359D: mov edi, esp
0080359F: movsd 
008035A0: movsd 
008035A1: movsd 
008035A2: movsd 
008035A3: push 00000016h
008035A5: mov eax, [ebp+08h]
008035A8: mov eax, [eax]
008035AA: push [ebp+08h]
008035AD: call [eax+000002FCh]
008035B3: push eax
008035B4: lea eax, var_2C
008035B7: push eax
008035B8: call 00410A84h ; Set (object)
008035BD: push eax
008035BE: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008035C3: lea ecx, var_2C
008035C6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008035CB: mov var_04, 0000000Ah
008035D2: push 00000000h
008035D4: push 00000016h
008035D6: mov eax, [ebp+08h]
008035D9: mov eax, [eax]
008035DB: push [ebp+08h]
008035DE: call [eax+000002FCh]
008035E4: push eax
008035E5: lea eax, var_2C
008035E8: push eax
008035E9: call 00410A84h ; Set (object)
008035EE: push eax
008035EF: lea eax, var_44
008035F2: push eax
008035F3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008035F8: add esp, 00000010h
008035FB: push eax
008035FC: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00803601: sub ax, FFFFh
00803605: neg ax
00803608: sbb eax, eax
0080360A: inc eax
0080360B: neg eax
0080360D: mov var_000000C4, ax
00803614: lea ecx, var_2C
00803617: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080361C: lea ecx, var_44
0080361F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00803624: movsx eax, word ptr var_000000C4
0080362B: test eax, eax
0080362D: jz 803634h
0080362F: jmp 00803D41h
00803634: mov var_04, 0000000Dh
0080363B: push 00000000h
0080363D: push FFFFFDFBh
00803642: mov eax, [ebp+08h]
00803645: mov eax, [eax]
00803647: push [ebp+08h]
0080364A: call [eax+000002FCh]
00803650: push eax
00803651: lea eax, var_2C
00803654: push eax
00803655: call 00410A84h ; Set (object)
0080365A: push eax
0080365B: lea eax, var_44
0080365E: push eax
0080365F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00803664: add esp, 00000010h
00803667: push eax
00803668: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0080366D: mov edx, eax
0080366F: lea ecx, var_24
00803672: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00803677: push eax
00803678: call 0041098Eh ; Len(arg_1)
0080367D: mov var_000000A0, eax
00803683: mov var_000000A8, 00000003h
0080368D: push 00000010h
0080368F: pop eax
00803690: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00803695: lea esi, var_000000A8
0080369B: mov edi, esp
0080369D: movsd 
0080369E: movsd 
0080369F: movsd 
008036A0: movsd 
008036A1: push 00000008h
008036A3: mov eax, [ebp+08h]
008036A6: mov eax, [eax]
008036A8: push [ebp+08h]
008036AB: call [eax+000002FCh]
008036B1: push eax
008036B2: lea eax, var_30
008036B5: push eax
008036B6: call 00410A84h ; Set (object)
008036BB: push eax
008036BC: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008036C1: lea ecx, var_24
008036C4: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008036C9: lea eax, var_30
008036CC: push eax
008036CD: lea eax, var_2C
008036D0: push eax
008036D1: push 00000002h
008036D3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008036D8: add esp, 0000000Ch
008036DB: lea ecx, var_44
008036DE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008036E3: mov var_04, 0000000Eh
008036EA: mov eax, [ebp+0Ch]
008036ED: xor ecx, ecx
008036EF: cmp word ptr [eax], 007Fh
008036F3: setnz cl
008036F6: mov eax, [ebp+0Ch]
008036F9: xor edx, edx
008036FB: cmp word ptr [eax], 0001h
008036FF: setnz dl
00803702: and ecx, edx
00803704: neg ecx
00803706: sbb ecx, ecx
00803708: neg ecx
0080370A: mov eax, [ebp+0Ch]
0080370D: xor edx, edx
0080370F: cmp word ptr [eax], 001Ah
00803713: setnz dl
00803716: and ecx, edx
00803718: test ecx, ecx
0080371A: jnz 803770h
0080371C: mov var_04, 0000000Fh
00803723: or var_000000A0, FFFFFFFFh
0080372A: mov var_000000A8, 0000000Bh
00803734: push 00000010h
00803736: pop eax
00803737: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080373C: lea esi, var_000000A8
00803742: mov edi, esp
00803744: movsd 
00803745: movsd 
00803746: movsd 
00803747: movsd 
00803748: push 00000016h
0080374A: mov eax, [ebp+08h]
0080374D: mov eax, [eax]
0080374F: push [ebp+08h]
00803752: call [eax+000002FCh]
00803758: push eax
00803759: lea eax, var_2C
0080375C: push eax
0080375D: call 00410A84h ; Set (object)
00803762: push eax
00803763: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00803768: lea ecx, var_2C
0080376B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00803770: mov var_04, 00000011h
00803777: mov eax, [ebp+0Ch]
0080377A: xor ebx, ebx
0080377C: cmp word ptr [eax], 0008h
00803780: setz bl
00803783: neg ebx
00803785: mov eax, [ebp+0Ch]
00803788: xor ecx, ecx
0080378A: cmp word ptr [eax], 007Fh
0080378E: setz cl
00803791: neg ecx
00803793: or bx, cx
00803796: mov eax, [ebp+0Ch]
00803799: mov var_000000F2, bx
008037A0: xor ebx, ebx
008037A2: cmp word ptr [eax], 001Ah
008037A6: setz bl
008037A9: neg ebx
008037AB: push 00000000h
008037AD: push 8001000Bh
008037B2: mov eax, [ebp+08h]
008037B5: mov eax, [eax]
008037B7: push [ebp+08h]
008037BA: call [eax+000002FCh]
008037C0: push eax
008037C1: lea eax, var_2C
008037C4: push eax
008037C5: call 00410A84h ; Set (object)
008037CA: push eax
008037CB: lea eax, var_44
008037CE: push eax
008037CF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008037D4: add esp, 00000010h
008037D7: push eax
008037D8: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008037DD: mov edx, eax
008037DF: lea ecx, var_24
008037E2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008037E7: push eax
008037E8: call 0041098Eh ; Len(arg_1)
008037ED: xor ecx, ecx
008037EF: test eax, eax
008037F1: setnle cl
008037F4: neg ecx
008037F6: and bx, cx
008037F9: mov ax, var_000000F2
00803800: or ax, bx
00803803: mov var_000000C4, ax
0080380A: lea ecx, var_24
0080380D: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00803812: lea ecx, var_2C
00803815: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080381A: lea ecx, var_44
0080381D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00803822: movsx eax, word ptr var_000000C4
00803829: test eax, eax
0080382B: jz 00803985h
00803831: mov var_04, 00000012h
00803838: push 00000000h
0080383A: push 8001000Bh
0080383F: mov eax, [ebp+08h]
00803842: mov eax, [eax]
00803844: push [ebp+08h]
00803847: call [eax+000002FCh]
0080384D: push eax
0080384E: lea eax, var_2C
00803851: push eax
00803852: call 00410A84h ; Set (object)
00803857: push eax
00803858: lea eax, var_44
0080385B: push eax
0080385C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00803861: add esp, 00000010h
00803864: push 00000000h
00803866: push 8001000Bh
0080386B: mov eax, [ebp+08h]
0080386E: mov eax, [eax]
00803870: push [ebp+08h]
00803873: call [eax+000002FCh]
00803879: push eax
0080387A: lea eax, var_30
0080387D: push eax
0080387E: call 00410A84h ; Set (object)
00803883: push eax
00803884: lea eax, var_54
00803887: push eax
00803888: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080388D: add esp, 00000010h
00803890: push eax
00803891: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00803896: mov edx, eax
00803898: lea ecx, var_24
0080389B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008038A0: push eax
008038A1: call 0041098Eh ; Len(arg_1)
008038A6: sub eax, 00000001h
008038A9: jo 00803DCFh
008038AF: mov var_6C, eax
008038B2: mov var_74, 00000003h
008038B9: lea eax, var_44
008038BC: push eax
008038BD: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008038C2: mov var_5C, eax
008038C5: mov var_64, 00000008h
008038CC: lea eax, var_74
008038CF: push eax
008038D0: push 00000001h
008038D2: lea eax, var_64
008038D5: push eax
008038D6: lea eax, var_00000084
008038DC: push eax
008038DD: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
008038E2: lea eax, var_00000084
008038E8: push eax
008038E9: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008038EE: mov var_0000008C, eax
008038F4: mov var_00000094, 00000008h
008038FE: push 00000010h
00803900: pop eax
00803901: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00803906: lea esi, var_00000094
0080390C: mov edi, esp
0080390E: movsd 
0080390F: movsd 
00803910: movsd 
00803911: movsd 
00803912: push 8001000Bh
00803917: mov eax, [ebp+08h]
0080391A: mov eax, [eax]
0080391C: push [ebp+08h]
0080391F: call [eax+000002FCh]
00803925: push eax
00803926: lea eax, var_34
00803929: push eax
0080392A: call 00410A84h ; Set (object)
0080392F: push eax
00803930: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00803935: lea ecx, var_24
00803938: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0080393D: lea eax, var_34
00803940: push eax
00803941: lea eax, var_30
00803944: push eax
00803945: lea eax, var_2C
00803948: push eax
00803949: push 00000003h
0080394B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00803950: add esp, 00000010h
00803953: lea eax, var_00000094
00803959: push eax
0080395A: lea eax, var_00000084
00803960: push eax
00803961: lea eax, var_74
00803964: push eax
00803965: lea eax, var_64
00803968: push eax
00803969: lea eax, var_54
0080396C: push eax
0080396D: lea eax, var_44
00803970: push eax
00803971: push 00000006h
00803973: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00803978: add esp, 0000001Ch
0080397B: jmp 00803D41h
00803980: jmp 00803A47h
00803985: mov var_04, 00000014h
0080398C: mov eax, [ebp+0Ch]
0080398F: xor ebx, ebx
00803991: cmp word ptr [eax], 0008h
00803995: setz bl
00803998: neg ebx
0080399A: mov eax, [ebp+0Ch]
0080399D: xor ecx, ecx
0080399F: cmp word ptr [eax], 007Fh
008039A3: setz cl
008039A6: neg ecx
008039A8: or bx, cx
008039AB: mov eax, [ebp+0Ch]
008039AE: mov var_000000F4, bx
008039B5: xor ebx, ebx
008039B7: cmp word ptr [eax], 001Ah
008039BB: setz bl
008039BE: neg ebx
008039C0: push 00000000h
008039C2: push 8001000Bh
008039C7: mov eax, [ebp+08h]
008039CA: mov eax, [eax]
008039CC: push [ebp+08h]
008039CF: call [eax+000002FCh]
008039D5: push eax
008039D6: lea eax, var_2C
008039D9: push eax
008039DA: call 00410A84h ; Set (object)
008039DF: push eax
008039E0: lea eax, var_44
008039E3: push eax
008039E4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008039E9: add esp, 00000010h
008039EC: push eax
008039ED: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008039F2: mov edx, eax
008039F4: lea ecx, var_24
008039F7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008039FC: push eax
008039FD: call 0041098Eh ; Len(arg_1)
00803A02: xor ecx, ecx
00803A04: test eax, eax
00803A06: setle cl
00803A09: neg ecx
00803A0B: and bx, cx
00803A0E: mov ax, var_000000F4
00803A15: or ax, bx
00803A18: mov var_000000C4, ax
00803A1F: lea ecx, var_24
00803A22: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00803A27: lea ecx, var_2C
00803A2A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00803A2F: lea ecx, var_44
00803A32: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00803A37: movsx eax, word ptr var_000000C4
00803A3E: test eax, eax
00803A40: jz 803A47h
00803A42: jmp 00803D41h
00803A47: mov var_04, 00000017h
00803A4E: mov eax, [ebp+0Ch]
00803A51: cmp word ptr [eax], 000Dh
00803A55: jnz 00803C0Fh
00803A5B: mov var_04, 00000018h
00803A62: lea eax, var_24
00803A65: push eax
00803A66: mov eax, [ebp+08h]
00803A69: mov eax, [eax]
00803A6B: push [ebp+08h]
00803A6E: call [eax+000001C0h]
00803A74: fclex 
00803A76: mov var_000000C4, eax
00803A7C: cmp var_000000C4, 00000000h
00803A83: jnl 803AA5h
00803A85: push 000001C0h
00803A8A: push 0044515Ch
00803A8F: push [ebp+08h]
00803A92: push var_000000C4
00803A98: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00803A9D: mov var_000000F8, eax
00803AA3: jmp 803AACh
00803AA5: and var_000000F8, 00000000h
00803AAC: push var_24
00803AAF: call 004109DCh ; Val(arg_1)
00803AB4: fstp real8 ptr var_000000C0
00803ABA: push 00000000h
00803ABC: push 00000001h
00803ABE: push 00000001h
00803AC0: push 00000000h
00803AC2: lea eax, var_00000098
00803AC8: push eax
00803AC9: push 00000010h
00803ACB: push 00000880h
00803AD0: call 00410946h ; ReDim
00803AD5: add esp, 0000001Ch
00803AD8: mov var_000000A0, 00442938h
00803AE2: mov var_000000A8, 00000008h
00803AEC: lea esi, var_000000A8
00803AF2: push 00000000h
00803AF4: push var_00000098
00803AFA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00803AFF: mov ecx, eax
00803B01: mov edx, esi
00803B03: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
00803B08: push 00000000h
00803B0A: push 8001000Bh
00803B0F: mov eax, [ebp+08h]
00803B12: mov eax, [eax]
00803B14: push [ebp+08h]
00803B17: call [eax+000002FCh]
00803B1D: push eax
00803B1E: lea eax, var_2C
00803B21: push eax
00803B22: call 00410A84h ; Set (object)
00803B27: push eax
00803B28: lea eax, var_44
00803B2B: push eax
00803B2C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00803B31: add esp, 00000010h
00803B34: push eax
00803B35: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00803B3A: mov var_4C, eax
00803B3D: mov var_54, 00000008h
00803B44: lea esi, var_54
00803B47: push 00000001h
00803B49: push var_00000098
00803B4F: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00803B54: mov ecx, eax
00803B56: mov edx, esi
00803B58: call 00410940h ; msvbvm60.dll.__vbaVarZero
00803B5D: mov edx, 0043D470h ; x8
00803B62: lea ecx, var_28
00803B65: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00803B6A: lea eax, var_00000098
00803B70: push eax
00803B71: lea eax, var_28
00803B74: push eax
00803B75: fld real8 ptr var_000000C0
00803B7B: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00803B80: push eax
00803B81: call 007A6910h
00803B86: lea eax, var_00000098
00803B8C: push eax
00803B8D: push 00000000h
00803B8F: call 00410934h ; Erase
00803B94: lea eax, var_28
00803B97: push eax
00803B98: lea eax, var_24
00803B9B: push eax
00803B9C: push 00000002h
00803B9E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00803BA3: add esp, 0000000Ch
00803BA6: lea ecx, var_2C
00803BA9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00803BAE: lea ecx, var_44
00803BB1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00803BB6: mov var_04, 00000019h
00803BBD: or var_000000A0, FFFFFFFFh
00803BC4: mov var_000000A8, 0000000Bh
00803BCE: push 00000010h
00803BD0: pop eax
00803BD1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00803BD6: lea esi, var_000000A8
00803BDC: mov edi, esp
00803BDE: movsd 
00803BDF: movsd 
00803BE0: movsd 
00803BE1: movsd 
00803BE2: push 00000016h
00803BE4: mov eax, [ebp+08h]
00803BE7: mov eax, [eax]
00803BE9: push [ebp+08h]
00803BEC: call [eax+000002FCh]
00803BF2: push eax
00803BF3: lea eax, var_2C
00803BF6: push eax
00803BF7: call 00410A84h ; Set (object)
00803BFC: push eax
00803BFD: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00803C02: lea ecx, var_2C
00803C05: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00803C0A: jmp 00803D41h
00803C0F: mov var_04, 0000001Ch
00803C16: mov eax, [ebp+0Ch]
00803C19: xor ecx, ecx
00803C1B: cmp word ptr [eax], 0008h
00803C1F: setz cl
00803C22: mov eax, [ebp+0Ch]
00803C25: xor edx, edx
00803C27: cmp word ptr [eax], 007Fh
00803C2B: setz dl
00803C2E: and ecx, edx
00803C30: neg ecx
00803C32: sbb ecx, ecx
00803C34: neg ecx
00803C36: mov eax, [ebp+0Ch]
00803C39: xor edx, edx
00803C3B: cmp word ptr [eax], 0001h
00803C3F: setz dl
00803C42: and ecx, edx
00803C44: neg ecx
00803C46: sbb ecx, ecx
00803C48: neg ecx
00803C4A: mov eax, [ebp+0Ch]
00803C4D: xor edx, edx
00803C4F: cmp word ptr [eax], 001Ah
00803C53: setz dl
00803C56: and ecx, edx
00803C58: test ecx, ecx
00803C5A: jnz 00803D41h
00803C60: mov var_04, 0000001Dh
00803C67: push 00000000h
00803C69: push 8001000Bh
00803C6E: mov eax, [ebp+08h]
00803C71: mov eax, [eax]
00803C73: push [ebp+08h]
00803C76: call [eax+000002FCh]
00803C7C: push eax
00803C7D: lea eax, var_2C
00803C80: push eax
00803C81: call 00410A84h ; Set (object)
00803C86: push eax
00803C87: lea eax, var_44
00803C8A: push eax
00803C8B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00803C90: add esp, 00000010h
00803C93: push eax
00803C94: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00803C99: mov var_5C, eax
00803C9C: mov var_64, 00000008h
00803CA3: mov eax, [ebp+0Ch]
00803CA6: movsx eax, word ptr [eax]
00803CA9: push eax
00803CAA: lea eax, var_54
00803CAD: push eax
00803CAE: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
00803CB3: lea eax, var_64
00803CB6: push eax
00803CB7: lea eax, var_54
00803CBA: push eax
00803CBB: lea eax, var_74
00803CBE: push eax
00803CBF: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00803CC4: push eax
00803CC5: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00803CCA: mov var_7C, eax
00803CCD: mov var_00000084, 00000008h
00803CD7: push 00000010h
00803CD9: pop eax
00803CDA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00803CDF: lea esi, var_00000084
00803CE5: mov edi, esp
00803CE7: movsd 
00803CE8: movsd 
00803CE9: movsd 
00803CEA: movsd 
00803CEB: push 8001000Bh
00803CF0: mov eax, [ebp+08h]
00803CF3: mov eax, [eax]
00803CF5: push [ebp+08h]
00803CF8: call [eax+000002FCh]
00803CFE: push eax
00803CFF: lea eax, var_30
00803D02: push eax
00803D03: call 00410A84h ; Set (object)
00803D08: push eax
00803D09: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00803D0E: lea eax, var_30
00803D11: push eax
00803D12: lea eax, var_2C
00803D15: push eax
00803D16: push 00000002h
00803D18: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00803D1D: add esp, 0000000Ch
00803D20: lea eax, var_00000084
00803D26: push eax
00803D27: lea eax, var_74
00803D2A: push eax
00803D2B: lea eax, var_54
00803D2E: push eax
00803D2F: lea eax, var_64
00803D32: push eax
00803D33: lea eax, var_44
00803D36: push eax
00803D37: push 00000005h
00803D39: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00803D3E: add esp, 00000018h
00803D41: mov var_10, 00000000h
00803D48: wait 
00803D49: push 00803DB0h
00803D4E: jmp 803DAFh
00803D50: lea eax, var_28
00803D53: push eax
00803D54: lea eax, var_24
00803D57: push eax
00803D58: push 00000002h
00803D5A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00803D5F: add esp, 0000000Ch
00803D62: lea eax, var_34
00803D65: push eax
00803D66: lea eax, var_30
00803D69: push eax
00803D6A: lea eax, var_2C
00803D6D: push eax
00803D6E: push 00000003h
00803D70: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00803D75: add esp, 00000010h
00803D78: lea eax, var_00000094
00803D7E: push eax
00803D7F: lea eax, var_00000084
00803D85: push eax
00803D86: lea eax, var_74
00803D89: push eax
00803D8A: lea eax, var_64
00803D8D: push eax
00803D8E: lea eax, var_54
00803D91: push eax
00803D92: lea eax, var_44
00803D95: push eax
00803D96: push 00000006h
00803D98: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00803D9D: add esp, 0000001Ch
00803DA0: lea eax, var_00000098
00803DA6: push eax
00803DA7: push 00000000h
00803DA9: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
00803DAE: ret 
End Sub

Private sub txtShell__8041FB
008041FB: push ebp
008041FC: mov ebp, esp
008041FE: sub esp, 0000000Ch
00804201: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00804206: mov eax, fs:[00h]
0080420C: push eax
0080420D: mov fs:[00000000h], esp
00804214: mov eax, 00000084h
00804219: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080421E: push ebx
0080421F: push esi
00804220: push edi
00804221: mov var_0C, esp
00804224: mov var_08, 0040A390h
0080422B: mov eax, [ebp+08h]
0080422E: and eax, 00000001h
00804231: mov var_04, eax
00804234: mov eax, [ebp+08h]
00804237: and al, FEh
00804239: mov [ebp+08h], eax
0080423C: mov eax, [ebp+08h]
0080423F: mov eax, [eax]
00804241: push [ebp+08h]
00804244: call [eax+04h]
00804247: mov eax, [ebp+0Ch]
0080424A: cmp word ptr [eax], 0002h
0080424E: jnz 00804615h
00804254: cmp [008F529Ch], 00000000h
0080425B: jnz 804278h
0080425D: push 008F529Ch
00804262: push 00440F2Ch
00804267: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080426C: mov var_00000084, 008F529Ch
00804276: jmp 804282h
00804278: mov var_00000084, 008F529Ch
00804282: mov eax, var_00000084
00804288: mov eax, [eax]
0080428A: mov var_6C, eax
0080428D: lea eax, var_24
00804290: push eax
00804291: mov eax, var_6C
00804294: mov eax, [eax]
00804296: push var_6C
00804299: call [eax+1Ch]
0080429C: fclex 
0080429E: mov var_70, eax
008042A1: cmp var_70, 00000000h
008042A5: jnl 8042C1h
008042A7: push 0000001Ch
008042A9: push 00440F1Ch
008042AE: push var_6C
008042B1: push var_70
008042B4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008042B9: mov var_00000088, eax
008042BF: jmp 8042C8h
008042C1: and var_00000088, 00000000h
008042C8: mov eax, var_24
008042CB: mov var_74, eax
008042CE: mov var_50, 80020004h
008042D5: mov var_58, 0000000Ah
008042DC: lea eax, var_18
008042DF: push eax
008042E0: push 00000010h
008042E2: pop eax
008042E3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008042E8: lea esi, var_58
008042EB: mov edi, esp
008042ED: movsd 
008042EE: movsd 
008042EF: movsd 
008042F0: movsd 
008042F1: mov eax, var_74
008042F4: mov eax, [eax]
008042F6: push var_74
008042F9: call [eax+5Ch]
008042FC: fclex 
008042FE: mov var_78, eax
00804301: cmp var_78, 00000000h
00804305: jnl 804321h
00804307: push 0000005Ch
00804309: push 00445554h
0080430E: push var_74
00804311: push var_78
00804314: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00804319: mov var_0000008C, eax
0080431F: jmp 804328h
00804321: and var_0000008C, 00000000h
00804328: push 00000000h
0080432A: push FFFFFDFBh
0080432F: mov eax, [ebp+08h]
00804332: mov eax, [eax]
00804334: push [ebp+08h]
00804337: call [eax+000002FCh]
0080433D: push eax
0080433E: lea eax, var_20
00804341: push eax
00804342: call 00410A84h ; Set (object)
00804347: push eax
00804348: lea eax, var_38
0080434B: push eax
0080434C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00804351: add esp, 00000010h
00804354: push eax
00804355: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0080435A: mov edx, eax
0080435C: lea ecx, var_1C
0080435F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00804364: push eax
00804365: push var_18
00804368: call 00410A18h ; &
0080436D: mov var_40, eax
00804370: mov var_48, 00000008h
00804377: push 00000010h
00804379: pop eax
0080437A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080437F: lea esi, var_48
00804382: mov edi, esp
00804384: movsd 
00804385: movsd 
00804386: movsd 
00804387: movsd 
00804388: push FFFFFDFBh
0080438D: mov eax, [ebp+08h]
00804390: mov eax, [eax]
00804392: push [ebp+08h]
00804395: call [eax+000002FCh]
0080439B: push eax
0080439C: lea eax, var_28
0080439F: push eax
008043A0: call 00410A84h ; Set (object)
008043A5: push eax
008043A6: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008043AB: lea eax, var_18
008043AE: push eax
008043AF: lea eax, var_1C
008043B2: push eax
008043B3: push 00000002h
008043B5: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008043BA: add esp, 0000000Ch
008043BD: lea eax, var_28
008043C0: push eax
008043C1: lea eax, var_24
008043C4: push eax
008043C5: lea eax, var_20
008043C8: push eax
008043C9: push 00000003h
008043CB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008043D0: add esp, 00000010h
008043D3: lea eax, var_48
008043D6: push eax
008043D7: lea eax, var_38
008043DA: push eax
008043DB: push 00000002h
008043DD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008043E2: add esp, 0000000Ch
008043E5: cmp [008F529Ch], 00000000h
008043EC: jnz 804409h
008043EE: push 008F529Ch
008043F3: push 00440F2Ch
008043F8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008043FD: mov var_00000090, 008F529Ch
00804407: jmp 804413h
00804409: mov var_00000090, 008F529Ch
00804413: mov eax, var_00000090
00804419: mov eax, [eax]
0080441B: mov var_6C, eax
0080441E: lea eax, var_24
00804421: push eax
00804422: mov eax, var_6C
00804425: mov eax, [eax]
00804427: push var_6C
0080442A: call [eax+1Ch]
0080442D: fclex 
0080442F: mov var_70, eax
00804432: cmp var_70, 00000000h
00804436: jnl 804452h
00804438: push 0000001Ch
0080443A: push 00440F1Ch
0080443F: push var_6C
00804442: push var_70
00804445: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080444A: mov var_00000094, eax
00804450: jmp 804459h
00804452: and var_00000094, 00000000h
00804459: mov eax, var_24
0080445C: mov var_74, eax
0080445F: mov var_50, 80020004h
00804466: mov var_58, 0000000Ah
0080446D: lea eax, var_18
00804470: push eax
00804471: push 00000010h
00804473: pop eax
00804474: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804479: lea esi, var_58
0080447C: mov edi, esp
0080447E: movsd 
0080447F: movsd 
00804480: movsd 
00804481: movsd 
00804482: mov eax, var_74
00804485: mov eax, [eax]
00804487: push var_74
0080448A: call [eax+5Ch]
0080448D: fclex 
0080448F: mov var_78, eax
00804492: cmp var_78, 00000000h
00804496: jnl 8044B2h
00804498: push 0000005Ch
0080449A: push 00445554h
0080449F: push var_74
008044A2: push var_78
008044A5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008044AA: mov var_00000098, eax
008044B0: jmp 8044B9h
008044B2: and var_00000098, 00000000h
008044B9: push 00000000h
008044BB: push 8001000Bh
008044C0: mov eax, [ebp+08h]
008044C3: mov eax, [eax]
008044C5: push [ebp+08h]
008044C8: call [eax+000002FCh]
008044CE: push eax
008044CF: lea eax, var_20
008044D2: push eax
008044D3: call 00410A84h ; Set (object)
008044D8: push eax
008044D9: lea eax, var_38
008044DC: push eax
008044DD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008044E2: add esp, 00000010h
008044E5: push eax
008044E6: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008044EB: mov edx, eax
008044ED: lea ecx, var_1C
008044F0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008044F5: push eax
008044F6: push var_18
008044F9: call 00410A18h ; &
008044FE: mov var_40, eax
00804501: mov var_48, 00000008h
00804508: push 00000010h
0080450A: pop eax
0080450B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804510: lea esi, var_48
00804513: mov edi, esp
00804515: movsd 
00804516: movsd 
00804517: movsd 
00804518: movsd 
00804519: push 8001000Bh
0080451E: mov eax, [ebp+08h]
00804521: mov eax, [eax]
00804523: push [ebp+08h]
00804526: call [eax+000002FCh]
0080452C: push eax
0080452D: lea eax, var_28
00804530: push eax
00804531: call 00410A84h ; Set (object)
00804536: push eax
00804537: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0080453C: lea eax, var_18
0080453F: push eax
00804540: lea eax, var_1C
00804543: push eax
00804544: push 00000002h
00804546: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080454B: add esp, 0000000Ch
0080454E: lea eax, var_28
00804551: push eax
00804552: lea eax, var_24
00804555: push eax
00804556: lea eax, var_20
00804559: push eax
0080455A: push 00000003h
0080455C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00804561: add esp, 00000010h
00804564: lea eax, var_48
00804567: push eax
00804568: lea eax, var_38
0080456B: push eax
0080456C: push 00000002h
0080456E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00804573: add esp, 0000000Ch
00804576: push 00000000h
00804578: push FFFFFDFBh
0080457D: mov eax, [ebp+08h]
00804580: mov eax, [eax]
00804582: push [ebp+08h]
00804585: call [eax+000002FCh]
0080458B: push eax
0080458C: lea eax, var_20
0080458F: push eax
00804590: call 00410A84h ; Set (object)
00804595: push eax
00804596: lea eax, var_38
00804599: push eax
0080459A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080459F: add esp, 00000010h
008045A2: push eax
008045A3: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008045A8: mov edx, eax
008045AA: lea ecx, var_18
008045AD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008045B2: push eax
008045B3: call 0041098Eh ; Len(arg_1)
008045B8: mov var_50, eax
008045BB: mov var_58, 00000003h
008045C2: push 00000010h
008045C4: pop eax
008045C5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008045CA: lea esi, var_58
008045CD: mov edi, esp
008045CF: movsd 
008045D0: movsd 
008045D1: movsd 
008045D2: movsd 
008045D3: push 00000008h
008045D5: mov eax, [ebp+08h]
008045D8: mov eax, [eax]
008045DA: push [ebp+08h]
008045DD: call [eax+000002FCh]
008045E3: push eax
008045E4: lea eax, var_24
008045E7: push eax
008045E8: call 00410A84h ; Set (object)
008045ED: push eax
008045EE: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008045F3: lea ecx, var_18
008045F6: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008045FB: lea eax, var_24
008045FE: push eax
008045FF: lea eax, var_20
00804602: push eax
00804603: push 00000002h
00804605: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080460A: add esp, 0000000Ch
0080460D: lea ecx, var_38
00804610: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00804615: mov var_04, 00000000h
0080461C: push 0080465Fh
00804621: jmp 80465Eh
00804623: lea eax, var_1C
00804626: push eax
00804627: lea eax, var_18
0080462A: push eax
0080462B: push 00000002h
0080462D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00804632: add esp, 0000000Ch
00804635: lea eax, var_28
00804638: push eax
00804639: lea eax, var_24
0080463C: push eax
0080463D: lea eax, var_20
00804640: push eax
00804641: push 00000003h
00804643: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00804648: add esp, 00000010h
0080464B: lea eax, var_48
0080464E: push eax
0080464F: lea eax, var_38
00804652: push eax
00804653: push 00000002h
00804655: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080465A: add esp, 0000000Ch
0080465D: ret 
End Sub

Private sub Form__802E25
00802E25: push ebp
00802E26: mov ebp, esp
00802E28: sub esp, 00000018h
00802E2B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00802E30: mov eax, fs:[00h]
00802E36: push eax
00802E37: mov fs:[00000000h], esp
00802E3E: mov eax, 000000B0h
00802E43: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00802E48: push ebx
00802E49: push esi
00802E4A: push edi
00802E4B: mov var_18, esp
00802E4E: mov var_14, 0040A2A0h
00802E55: mov eax, [ebp+08h]
00802E58: and eax, 00000001h
00802E5B: mov var_10, eax
00802E5E: mov eax, [ebp+08h]
00802E61: and al, FEh
00802E63: mov [ebp+08h], eax
00802E66: mov var_0C, 00000000h
00802E6D: mov eax, [ebp+08h]
00802E70: mov eax, [eax]
00802E72: push [ebp+08h]
00802E75: call [eax+04h]
00802E78: mov var_04, 00000001h
00802E7F: mov var_04, 00000002h
00802E86: push FFFFFFFFh
00802E88: call 00410A60h ; On Error ...
00802E8D: mov var_04, 00000003h
00802E94: fldz 
00802E96: fstp real4 ptr var_2C
00802E99: mov var_34, 00000004h
00802EA0: and var_4C, 00000000h
00802EA4: mov var_54, 00000002h
00802EAB: lea eax, var_000000A8
00802EB1: push eax
00802EB2: mov eax, [ebp+08h]
00802EB5: mov eax, [eax]
00802EB7: push [ebp+08h]
00802EBA: call [eax+00000080h]
00802EC0: fclex 
00802EC2: mov var_000000B0, eax
00802EC8: cmp var_000000B0, 00000000h
00802ECF: jnl 802EF1h
00802ED1: push 00000080h
00802ED6: push 0044515Ch
00802EDB: push [ebp+08h]
00802EDE: push var_000000B0
00802EE4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00802EE9: mov var_000000CC, eax
00802EEF: jmp 802EF8h
00802EF1: and var_000000CC, 00000000h
00802EF8: fld real4 ptr var_000000A8
00802EFE: fsub real4 ptr [00402BA4h]
00802F04: fstp real4 ptr var_6C
00802F07: fstsw ax
00802F09: test al, 0Dh
00802F0B: jnz 0080303Ah
00802F11: mov var_74, 00000004h
00802F18: lea eax, var_000000AC
00802F1E: push eax
00802F1F: mov eax, [ebp+08h]
00802F22: mov eax, [eax]
00802F24: push [ebp+08h]
00802F27: call [eax+00000088h]
00802F2D: fclex 
00802F2F: mov var_000000B4, eax
00802F35: cmp var_000000B4, 00000000h
00802F3C: jnl 802F5Eh
00802F3E: push 00000088h
00802F43: push 0044515Ch
00802F48: push [ebp+08h]
00802F4B: push var_000000B4
00802F51: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00802F56: mov var_000000D0, eax
00802F5C: jmp 802F65h
00802F5E: and var_000000D0, 00000000h
00802F65: fld real4 ptr var_000000AC
00802F6B: fsub real4 ptr [00402BA4h]
00802F71: fstp real4 ptr var_0000008C
00802F77: fstsw ax
00802F79: test al, 0Dh
00802F7B: jnz 0080303Ah
00802F81: mov var_00000094, 00000004h
00802F8B: push 00000010h
00802F8D: pop eax
00802F8E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00802F93: lea esi, var_34
00802F96: mov edi, esp
00802F98: movsd 
00802F99: movsd 
00802F9A: movsd 
00802F9B: movsd 
00802F9C: push 00000010h
00802F9E: pop eax
00802F9F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00802FA4: lea esi, var_54
00802FA7: mov edi, esp
00802FA9: movsd 
00802FAA: movsd 
00802FAB: movsd 
00802FAC: movsd 
00802FAD: push 00000010h
00802FAF: pop eax
00802FB0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00802FB5: lea esi, var_74
00802FB8: mov edi, esp
00802FBA: movsd 
00802FBB: movsd 
00802FBC: movsd 
00802FBD: movsd 
00802FBE: push 00000010h
00802FC0: pop eax
00802FC1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00802FC6: lea esi, var_00000094
00802FCC: mov edi, esp
00802FCE: movsd 
00802FCF: movsd 
00802FD0: movsd 
00802FD1: movsd 
00802FD2: push 00000004h
00802FD4: push 80011002h
00802FD9: mov eax, [ebp+08h]
00802FDC: mov eax, [eax]
00802FDE: push [ebp+08h]
00802FE1: call [eax+000002FCh]
00802FE7: push eax
00802FE8: lea eax, var_24
00802FEB: push eax
00802FEC: call 00410A84h ; Set (object)
00802FF1: push eax
00802FF2: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00802FF7: add esp, 0000004Ch
00802FFA: lea ecx, var_24
00802FFD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00803002: mov var_10, 00000000h
00803009: wait 
0080300A: push 0080301Bh
0080300F: jmp 80301Ah
00803011: lea ecx, var_24
00803014: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00803019: ret 
End Sub

