VERSION 5.00
Begin VB.Form frmWeb
  Caption = "Website visitor"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 4 'Fixed ToolWindow
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 315
  ClientWidth = 3495
  ClientHeight = 1290
  StartUpPosition = 1 'CenterOwner
  Begin XtremeSuiteControls.PushButton Command1
    Left = 120
    Top = 840
    Width = 3255
    Height = 375
    TabIndex = 3
  End
  Begin VB.TextBox txtCount
    Left = 2640
    Top = 480
    Width = 615
    Height = 285
    Text = "1"
    TabIndex = 2
    MaxLength = 3
  End
  Begin VB.TextBox txtURL
    Left = 120
    Top = 120
    Width = 3255
    Height = 285
    Text = "http://"
    TabIndex = 0
  End
  Begin VB.Label Label1
    Caption = "Open Hidden How many times?"
    Left = 120
    Top = 525
    Width = 2415
    Height = 255
    TabIndex = 1
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "frmWeb"


Private sub Command1__80D561
0080D561: push ebp
0080D562: mov ebp, esp
0080D564: sub esp, 00000018h
0080D567: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080D56C: mov eax, fs:[00h]
0080D572: push eax
0080D573: mov fs:[00000000h], esp
0080D57A: mov eax, 00000128h
0080D57F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080D584: push ebx
0080D585: push esi
0080D586: push edi
0080D587: mov var_18, esp
0080D58A: mov var_14, 0040A6D0h
0080D591: mov eax, [ebp+08h]
0080D594: and eax, 00000001h
0080D597: mov var_10, eax
0080D59A: mov eax, [ebp+08h]
0080D59D: and al, FEh
0080D59F: mov [ebp+08h], eax
0080D5A2: mov var_0C, 00000000h
0080D5A9: mov eax, [ebp+08h]
0080D5AC: mov eax, [eax]
0080D5AE: push [ebp+08h]
0080D5B1: call [eax+04h]
0080D5B4: mov var_04, 00000001h
0080D5BB: mov var_04, 00000002h
0080D5C2: push FFFFFFFFh
0080D5C4: call 00410A60h ; On Error ...
0080D5C9: mov var_04, 00000003h
0080D5D0: cmp word ptr [008F2430h], FFFFh
0080D5D8: jnz 0080DA74h
0080D5DE: mov var_04, 00000004h
0080D5E5: mov var_000000A0, 00000001h
0080D5EF: mov var_000000A8, 00000002h
0080D5F9: cmp [008F2010h], 00000000h
0080D600: jnz 80D61Dh
0080D602: push 008F2010h
0080D607: push 00433984h
0080D60C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080D611: mov var_00000134, 008F2010h
0080D61B: jmp 80D627h
0080D61D: mov var_00000134, 008F2010h
0080D627: push 00000000h
0080D629: push 00000001h
0080D62B: push 00440E48h
0080D630: push 00000000h
0080D632: push 00000018h
0080D634: mov eax, var_00000134
0080D63A: mov eax, [eax]
0080D63C: mov ecx, var_00000134
0080D642: mov ecx, [ecx]
0080D644: mov ecx, [ecx]
0080D646: push eax
0080D647: call [ecx+0000054Ch]
0080D64D: push eax
0080D64E: lea eax, var_3C
0080D651: push eax
0080D652: call 00410A84h ; Set (object)
0080D657: push eax
0080D658: lea eax, var_54
0080D65B: push eax
0080D65C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080D661: add esp, 00000010h
0080D664: push eax
0080D665: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080D66A: push eax
0080D66B: lea eax, var_40
0080D66E: push eax
0080D66F: call 00410A84h ; Set (object)
0080D674: push eax
0080D675: lea eax, var_64
0080D678: push eax
0080D679: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080D67E: add esp, 00000010h
0080D681: push eax
0080D682: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0080D687: mov var_000000B0, eax
0080D68D: mov var_000000B8, 00000003h
0080D697: mov var_000000C0, 00000001h
0080D6A1: mov var_000000C8, 00000002h
0080D6AB: lea eax, var_000000A8
0080D6B1: push eax
0080D6B2: lea eax, var_000000B8
0080D6B8: push eax
0080D6B9: lea eax, var_000000C8
0080D6BF: push eax
0080D6C0: lea eax, var_000000F4
0080D6C6: push eax
0080D6C7: lea eax, var_000000E4
0080D6CD: push eax
0080D6CE: lea eax, var_30
0080D6D1: push eax
0080D6D2: call 00410A3Ch ; For
0080D6D7: mov var_0000012C, eax
0080D6DD: lea eax, var_40
0080D6E0: push eax
0080D6E1: lea eax, var_3C
0080D6E4: push eax
0080D6E5: push 00000002h
0080D6E7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080D6EC: add esp, 0000000Ch
0080D6EF: lea eax, var_64
0080D6F2: push eax
0080D6F3: lea eax, var_54
0080D6F6: push eax
0080D6F7: push 00000002h
0080D6F9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080D6FE: add esp, 0000000Ch
0080D701: jmp 0080DA62h
0080D706: mov var_04, 00000005h
0080D70D: lea eax, var_30
0080D710: mov var_000000A0, eax
0080D716: mov var_000000A8, 0000400Ch
0080D720: cmp [008F2010h], 00000000h
0080D727: jnz 80D744h
0080D729: push 008F2010h
0080D72E: push 00433984h
0080D733: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080D738: mov var_00000138, 008F2010h
0080D742: jmp 80D74Eh
0080D744: mov var_00000138, 008F2010h
0080D74E: push 00000000h
0080D750: push 00000004h
0080D752: push 00440E58h
0080D757: push 00000010h
0080D759: pop eax
0080D75A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080D75F: lea esi, var_000000A8
0080D765: mov edi, esp
0080D767: movsd 
0080D768: movsd 
0080D769: movsd 
0080D76A: movsd 
0080D76B: push 00000001h
0080D76D: push 00000000h
0080D76F: push 00440E48h
0080D774: push 00000000h
0080D776: push 00000018h
0080D778: mov eax, var_00000138
0080D77E: mov eax, [eax]
0080D780: mov ecx, var_00000138
0080D786: mov ecx, [ecx]
0080D788: mov ecx, [ecx]
0080D78A: push eax
0080D78B: call [ecx+0000054Ch]
0080D791: push eax
0080D792: lea eax, var_3C
0080D795: push eax
0080D796: call 00410A84h ; Set (object)
0080D79B: push eax
0080D79C: lea eax, var_54
0080D79F: push eax
0080D7A0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080D7A5: add esp, 00000010h
0080D7A8: push eax
0080D7A9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080D7AE: push eax
0080D7AF: lea eax, var_40
0080D7B2: push eax
0080D7B3: call 00410A84h ; Set (object)
0080D7B8: push eax
0080D7B9: lea eax, var_64
0080D7BC: push eax
0080D7BD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080D7C2: add esp, 00000020h
0080D7C5: push eax
0080D7C6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080D7CB: push eax
0080D7CC: lea eax, var_44
0080D7CF: push eax
0080D7D0: call 00410A84h ; Set (object)
0080D7D5: push eax
0080D7D6: lea eax, var_74
0080D7D9: push eax
0080D7DA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080D7DF: add esp, 00000010h
0080D7E2: push eax
0080D7E3: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0080D7E8: sub ax, FFFFh
0080D7EC: neg ax
0080D7EF: sbb eax, eax
0080D7F1: inc eax
0080D7F2: neg eax
0080D7F4: mov var_000000D4, ax
0080D7FB: lea eax, var_44
0080D7FE: push eax
0080D7FF: lea eax, var_40
0080D802: push eax
0080D803: lea eax, var_3C
0080D806: push eax
0080D807: push 00000003h
0080D809: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080D80E: add esp, 00000010h
0080D811: lea eax, var_74
0080D814: push eax
0080D815: lea eax, var_64
0080D818: push eax
0080D819: lea eax, var_54
0080D81C: push eax
0080D81D: push 00000003h
0080D81F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080D824: add esp, 00000010h
0080D827: movsx eax, word ptr var_000000D4
0080D82E: test eax, eax
0080D830: jz 0080DA3Eh
0080D836: mov var_04, 00000006h
0080D83D: lea eax, var_30
0080D840: mov var_000000A0, eax
0080D846: mov var_000000A8, 0000400Ch
0080D850: cmp [008F2010h], 00000000h
0080D857: jnz 80D874h
0080D859: push 008F2010h
0080D85E: push 00433984h
0080D863: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080D868: mov var_0000013C, 008F2010h
0080D872: jmp 80D87Eh
0080D874: mov var_0000013C, 008F2010h
0080D87E: push 00000000h
0080D880: push 00000014h
0080D882: push 00440E58h
0080D887: push 00000010h
0080D889: pop eax
0080D88A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080D88F: lea esi, var_000000A8
0080D895: mov edi, esp
0080D897: movsd 
0080D898: movsd 
0080D899: movsd 
0080D89A: movsd 
0080D89B: push 00000001h
0080D89D: push 00000000h
0080D89F: push 00440E48h
0080D8A4: push 00000000h
0080D8A6: push 00000018h
0080D8A8: mov eax, var_0000013C
0080D8AE: mov eax, [eax]
0080D8B0: mov ecx, var_0000013C
0080D8B6: mov ecx, [ecx]
0080D8B8: mov ecx, [ecx]
0080D8BA: push eax
0080D8BB: call [ecx+0000054Ch]
0080D8C1: push eax
0080D8C2: lea eax, var_3C
0080D8C5: push eax
0080D8C6: call 00410A84h ; Set (object)
0080D8CB: push eax
0080D8CC: lea eax, var_54
0080D8CF: push eax
0080D8D0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080D8D5: add esp, 00000010h
0080D8D8: push eax
0080D8D9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080D8DE: push eax
0080D8DF: lea eax, var_40
0080D8E2: push eax
0080D8E3: call 00410A84h ; Set (object)
0080D8E8: push eax
0080D8E9: lea eax, var_64
0080D8EC: push eax
0080D8ED: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080D8F2: add esp, 00000020h
0080D8F5: push eax
0080D8F6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080D8FB: push eax
0080D8FC: lea eax, var_44
0080D8FF: push eax
0080D900: call 00410A84h ; Set (object)
0080D905: push eax
0080D906: lea eax, var_74
0080D909: push eax
0080D90A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080D90F: add esp, 00000010h
0080D912: push eax
0080D913: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0080D918: mov edx, eax
0080D91A: lea ecx, var_34
0080D91D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080D922: push eax
0080D923: call 004109DCh ; Val(arg_1)
0080D928: fstp real8 ptr var_000000D0
0080D92E: push 00000000h
0080D930: push 00000001h
0080D932: push 00000001h
0080D934: push 00000000h
0080D936: lea eax, var_00000098
0080D93C: push eax
0080D93D: push 00000010h
0080D93F: push 00000880h
0080D944: call 00410946h ; ReDim
0080D949: add esp, 0000001Ch
0080D94C: mov eax, [ebp+08h]
0080D94F: mov eax, [eax]
0080D951: push [ebp+08h]
0080D954: call [eax+00000300h]
0080D95A: mov var_7C, eax
0080D95D: mov var_00000084, 00000009h
0080D967: lea esi, var_00000084
0080D96D: push 00000000h
0080D96F: push var_00000098
0080D975: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080D97A: mov ecx, eax
0080D97C: mov edx, esi
0080D97E: call 00410940h ; msvbvm60.dll.__vbaVarZero
0080D983: mov eax, [ebp+08h]
0080D986: mov eax, [eax]
0080D988: push [ebp+08h]
0080D98B: call [eax+000002FCh]
0080D991: mov var_0000008C, eax
0080D997: mov var_00000094, 00000009h
0080D9A1: lea esi, var_00000094
0080D9A7: push 00000001h
0080D9A9: push var_00000098
0080D9AF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080D9B4: mov ecx, eax
0080D9B6: mov edx, esi
0080D9B8: call 00410940h ; msvbvm60.dll.__vbaVarZero
0080D9BD: mov edx, 0043D5ACh ; x34
0080D9C2: lea ecx, var_38
0080D9C5: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080D9CA: lea eax, var_00000098
0080D9D0: push eax
0080D9D1: lea eax, var_38
0080D9D4: push eax
0080D9D5: fld real8 ptr var_000000D0
0080D9DB: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0080D9E0: push eax
0080D9E1: call 007A6910h
0080D9E6: lea eax, var_00000098
0080D9EC: push eax
0080D9ED: push 00000000h
0080D9EF: call 00410934h ; Erase
0080D9F4: lea eax, var_38
0080D9F7: push eax
0080D9F8: lea eax, var_34
0080D9FB: push eax
0080D9FC: push 00000002h
0080D9FE: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080DA03: add esp, 0000000Ch
0080DA06: lea eax, var_44
0080DA09: push eax
0080DA0A: lea eax, var_40
0080DA0D: push eax
0080DA0E: lea eax, var_3C
0080DA11: push eax
0080DA12: push 00000003h
0080DA14: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080DA19: add esp, 00000010h
0080DA1C: lea eax, var_74
0080DA1F: push eax
0080DA20: lea eax, var_64
0080DA23: push eax
0080DA24: lea eax, var_54
0080DA27: push eax
0080DA28: push 00000003h
0080DA2A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080DA2F: add esp, 00000010h
0080DA32: mov var_04, 00000007h
0080DA39: call 0041096Ah ; DoEvents
0080DA3E: mov var_04, 00000009h
0080DA45: lea eax, var_000000F4
0080DA4B: push eax
0080DA4C: lea eax, var_000000E4
0080DA52: push eax
0080DA53: lea eax, var_30
0080DA56: push eax
0080DA57: call 00410A36h ; Next
0080DA5C: mov var_0000012C, eax
0080DA62: cmp var_0000012C, 00000000h
0080DA69: jnz 0080D706h
0080DA6F: jmp 0080DF05h
0080DA74: mov var_04, 0000000Bh
0080DA7B: mov var_000000A0, 00000001h
0080DA85: mov var_000000A8, 00000002h
0080DA8F: cmp [008F2010h], 00000000h
0080DA96: jnz 80DAB3h
0080DA98: push 008F2010h
0080DA9D: push 00433984h
0080DAA2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080DAA7: mov var_00000140, 008F2010h
0080DAB1: jmp 80DABDh
0080DAB3: mov var_00000140, 008F2010h
0080DABD: push 00000000h
0080DABF: push 00000001h
0080DAC1: push 00440E48h
0080DAC6: push 00000000h
0080DAC8: push 00000018h
0080DACA: mov eax, var_00000140
0080DAD0: mov eax, [eax]
0080DAD2: mov ecx, var_00000140
0080DAD8: mov ecx, [ecx]
0080DADA: mov ecx, [ecx]
0080DADC: push eax
0080DADD: call [ecx+00000550h]
0080DAE3: push eax
0080DAE4: lea eax, var_3C
0080DAE7: push eax
0080DAE8: call 00410A84h ; Set (object)
0080DAED: push eax
0080DAEE: lea eax, var_54
0080DAF1: push eax
0080DAF2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080DAF7: add esp, 00000010h
0080DAFA: push eax
0080DAFB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080DB00: push eax
0080DB01: lea eax, var_40
0080DB04: push eax
0080DB05: call 00410A84h ; Set (object)
0080DB0A: push eax
0080DB0B: lea eax, var_64
0080DB0E: push eax
0080DB0F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080DB14: add esp, 00000010h
0080DB17: push eax
0080DB18: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0080DB1D: mov var_000000B0, eax
0080DB23: mov var_000000B8, 00000003h
0080DB2D: mov var_000000C0, 00000001h
0080DB37: mov var_000000C8, 00000002h
0080DB41: lea eax, var_000000A8
0080DB47: push eax
0080DB48: lea eax, var_000000B8
0080DB4E: push eax
0080DB4F: lea eax, var_000000C8
0080DB55: push eax
0080DB56: lea eax, var_00000114
0080DB5C: push eax
0080DB5D: lea eax, var_00000104
0080DB63: push eax
0080DB64: lea eax, var_30
0080DB67: push eax
0080DB68: call 00410A3Ch ; For
0080DB6D: mov var_00000130, eax
0080DB73: lea eax, var_40
0080DB76: push eax
0080DB77: lea eax, var_3C
0080DB7A: push eax
0080DB7B: push 00000002h
0080DB7D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080DB82: add esp, 0000000Ch
0080DB85: lea eax, var_64
0080DB88: push eax
0080DB89: lea eax, var_54
0080DB8C: push eax
0080DB8D: push 00000002h
0080DB8F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080DB94: add esp, 0000000Ch
0080DB97: jmp 0080DEF8h
0080DB9C: mov var_04, 0000000Ch
0080DBA3: lea eax, var_30
0080DBA6: mov var_000000A0, eax
0080DBAC: mov var_000000A8, 0000400Ch
0080DBB6: cmp [008F2010h], 00000000h
0080DBBD: jnz 80DBDAh
0080DBBF: push 008F2010h
0080DBC4: push 00433984h
0080DBC9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080DBCE: mov var_00000144, 008F2010h
0080DBD8: jmp 80DBE4h
0080DBDA: mov var_00000144, 008F2010h
0080DBE4: push 00000000h
0080DBE6: push 00000004h
0080DBE8: push 00440E58h
0080DBED: push 00000010h
0080DBEF: pop eax
0080DBF0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080DBF5: lea esi, var_000000A8
0080DBFB: mov edi, esp
0080DBFD: movsd 
0080DBFE: movsd 
0080DBFF: movsd 
0080DC00: movsd 
0080DC01: push 00000001h
0080DC03: push 00000000h
0080DC05: push 00440E48h
0080DC0A: push 00000000h
0080DC0C: push 00000018h
0080DC0E: mov eax, var_00000144
0080DC14: mov eax, [eax]
0080DC16: mov ecx, var_00000144
0080DC1C: mov ecx, [ecx]
0080DC1E: mov ecx, [ecx]
0080DC20: push eax
0080DC21: call [ecx+00000550h]
0080DC27: push eax
0080DC28: lea eax, var_3C
0080DC2B: push eax
0080DC2C: call 00410A84h ; Set (object)
0080DC31: push eax
0080DC32: lea eax, var_54
0080DC35: push eax
0080DC36: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080DC3B: add esp, 00000010h
0080DC3E: push eax
0080DC3F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080DC44: push eax
0080DC45: lea eax, var_40
0080DC48: push eax
0080DC49: call 00410A84h ; Set (object)
0080DC4E: push eax
0080DC4F: lea eax, var_64
0080DC52: push eax
0080DC53: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080DC58: add esp, 00000020h
0080DC5B: push eax
0080DC5C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080DC61: push eax
0080DC62: lea eax, var_44
0080DC65: push eax
0080DC66: call 00410A84h ; Set (object)
0080DC6B: push eax
0080DC6C: lea eax, var_74
0080DC6F: push eax
0080DC70: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080DC75: add esp, 00000010h
0080DC78: push eax
0080DC79: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0080DC7E: sub ax, FFFFh
0080DC82: neg ax
0080DC85: sbb eax, eax
0080DC87: inc eax
0080DC88: neg eax
0080DC8A: mov var_000000D4, ax
0080DC91: lea eax, var_44
0080DC94: push eax
0080DC95: lea eax, var_40
0080DC98: push eax
0080DC99: lea eax, var_3C
0080DC9C: push eax
0080DC9D: push 00000003h
0080DC9F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080DCA4: add esp, 00000010h
0080DCA7: lea eax, var_74
0080DCAA: push eax
0080DCAB: lea eax, var_64
0080DCAE: push eax
0080DCAF: lea eax, var_54
0080DCB2: push eax
0080DCB3: push 00000003h
0080DCB5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080DCBA: add esp, 00000010h
0080DCBD: movsx eax, word ptr var_000000D4
0080DCC4: test eax, eax
0080DCC6: jz 0080DED4h
0080DCCC: mov var_04, 0000000Dh
0080DCD3: lea eax, var_30
0080DCD6: mov var_000000A0, eax
0080DCDC: mov var_000000A8, 0000400Ch
0080DCE6: cmp [008F2010h], 00000000h
0080DCED: jnz 80DD0Ah
0080DCEF: push 008F2010h
0080DCF4: push 00433984h
0080DCF9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080DCFE: mov var_00000148, 008F2010h
0080DD08: jmp 80DD14h
0080DD0A: mov var_00000148, 008F2010h
0080DD14: push 00000000h
0080DD16: push 00000014h
0080DD18: push 00440E58h
0080DD1D: push 00000010h
0080DD1F: pop eax
0080DD20: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080DD25: lea esi, var_000000A8
0080DD2B: mov edi, esp
0080DD2D: movsd 
0080DD2E: movsd 
0080DD2F: movsd 
0080DD30: movsd 
0080DD31: push 00000001h
0080DD33: push 00000000h
0080DD35: push 00440E48h
0080DD3A: push 00000000h
0080DD3C: push 00000018h
0080DD3E: mov eax, var_00000148
0080DD44: mov eax, [eax]
0080DD46: mov ecx, var_00000148
0080DD4C: mov ecx, [ecx]
0080DD4E: mov ecx, [ecx]
0080DD50: push eax
0080DD51: call [ecx+00000550h]
0080DD57: push eax
0080DD58: lea eax, var_3C
0080DD5B: push eax
0080DD5C: call 00410A84h ; Set (object)
0080DD61: push eax
0080DD62: lea eax, var_54
0080DD65: push eax
0080DD66: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080DD6B: add esp, 00000010h
0080DD6E: push eax
0080DD6F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080DD74: push eax
0080DD75: lea eax, var_40
0080DD78: push eax
0080DD79: call 00410A84h ; Set (object)
0080DD7E: push eax
0080DD7F: lea eax, var_64
0080DD82: push eax
0080DD83: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080DD88: add esp, 00000020h
0080DD8B: push eax
0080DD8C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080DD91: push eax
0080DD92: lea eax, var_44
0080DD95: push eax
0080DD96: call 00410A84h ; Set (object)
0080DD9B: push eax
0080DD9C: lea eax, var_74
0080DD9F: push eax
0080DDA0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080DDA5: add esp, 00000010h
0080DDA8: push eax
0080DDA9: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0080DDAE: mov edx, eax
0080DDB0: lea ecx, var_34
0080DDB3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080DDB8: push eax
0080DDB9: call 004109DCh ; Val(arg_1)
0080DDBE: fstp real8 ptr var_000000D0
0080DDC4: push 00000000h
0080DDC6: push 00000001h
0080DDC8: push 00000001h
0080DDCA: push 00000000h
0080DDCC: lea eax, var_00000098
0080DDD2: push eax
0080DDD3: push 00000010h
0080DDD5: push 00000880h
0080DDDA: call 00410946h ; ReDim
0080DDDF: add esp, 0000001Ch
0080DDE2: mov eax, [ebp+08h]
0080DDE5: mov eax, [eax]
0080DDE7: push [ebp+08h]
0080DDEA: call [eax+00000300h]
0080DDF0: mov var_7C, eax
0080DDF3: mov var_00000084, 00000009h
0080DDFD: lea esi, var_00000084
0080DE03: push 00000000h
0080DE05: push var_00000098
0080DE0B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080DE10: mov ecx, eax
0080DE12: mov edx, esi
0080DE14: call 00410940h ; msvbvm60.dll.__vbaVarZero
0080DE19: mov eax, [ebp+08h]
0080DE1C: mov eax, [eax]
0080DE1E: push [ebp+08h]
0080DE21: call [eax+000002FCh]
0080DE27: mov var_0000008C, eax
0080DE2D: mov var_00000094, 00000009h
0080DE37: lea esi, var_00000094
0080DE3D: push 00000001h
0080DE3F: push var_00000098
0080DE45: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080DE4A: mov ecx, eax
0080DE4C: mov edx, esi
0080DE4E: call 00410940h ; msvbvm60.dll.__vbaVarZero
0080DE53: mov edx, 0043D5ACh ; x34
0080DE58: lea ecx, var_38
0080DE5B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080DE60: lea eax, var_00000098
0080DE66: push eax
0080DE67: lea eax, var_38
0080DE6A: push eax
0080DE6B: fld real8 ptr var_000000D0
0080DE71: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0080DE76: push eax
0080DE77: call 007A6910h
0080DE7C: lea eax, var_00000098
0080DE82: push eax
0080DE83: push 00000000h
0080DE85: call 00410934h ; Erase
0080DE8A: lea eax, var_38
0080DE8D: push eax
0080DE8E: lea eax, var_34
0080DE91: push eax
0080DE92: push 00000002h
0080DE94: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080DE99: add esp, 0000000Ch
0080DE9C: lea eax, var_44
0080DE9F: push eax
0080DEA0: lea eax, var_40
0080DEA3: push eax
0080DEA4: lea eax, var_3C
0080DEA7: push eax
0080DEA8: push 00000003h
0080DEAA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080DEAF: add esp, 00000010h
0080DEB2: lea eax, var_74
0080DEB5: push eax
0080DEB6: lea eax, var_64
0080DEB9: push eax
0080DEBA: lea eax, var_54
0080DEBD: push eax
0080DEBE: push 00000003h
0080DEC0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080DEC5: add esp, 00000010h
0080DEC8: mov var_04, 0000000Eh
0080DECF: call 0041096Ah ; DoEvents
0080DED4: mov var_04, 00000010h
0080DEDB: lea eax, var_00000114
0080DEE1: push eax
0080DEE2: lea eax, var_00000104
0080DEE8: push eax
0080DEE9: lea eax, var_30
0080DEEC: push eax
0080DEED: call 00410A36h ; Next
0080DEF2: mov var_00000130, eax
0080DEF8: cmp var_00000130, 00000000h
0080DEFF: jnz 0080DB9Ch
0080DF05: mov var_10, 00000000h
0080DF0C: wait 
0080DF0D: push 0080DF9Eh
0080DF12: jmp 80DF6Fh
0080DF14: lea eax, var_38
0080DF17: push eax
0080DF18: lea eax, var_34
0080DF1B: push eax
0080DF1C: push 00000002h
0080DF1E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080DF23: add esp, 0000000Ch
0080DF26: lea eax, var_44
0080DF29: push eax
0080DF2A: lea eax, var_40
0080DF2D: push eax
0080DF2E: lea eax, var_3C
0080DF31: push eax
0080DF32: push 00000003h
0080DF34: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080DF39: add esp, 00000010h
0080DF3C: lea eax, var_00000094
0080DF42: push eax
0080DF43: lea eax, var_00000084
0080DF49: push eax
0080DF4A: lea eax, var_74
0080DF4D: push eax
0080DF4E: lea eax, var_64
0080DF51: push eax
0080DF52: lea eax, var_54
0080DF55: push eax
0080DF56: push 00000005h
0080DF58: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080DF5D: add esp, 00000018h
0080DF60: lea eax, var_00000098
0080DF66: push eax
0080DF67: push 00000000h
0080DF69: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0080DF6E: ret 
End Sub

