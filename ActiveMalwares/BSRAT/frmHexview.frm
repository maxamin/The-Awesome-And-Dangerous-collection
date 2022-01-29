VERSION 5.00
Begin VB.Form frmHexview
  Caption = "Hex display"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmHexview.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 13200
  ClientHeight = 6735
  StartUpPosition = 2 'CenterScreen
  Begin RichTextLib.RichTextBox txtHex
    Left = 0
    Top = 0
    Width = 13215
    Height = 6735
    TabIndex = 0
  End
End

Attribute VB_Name = "frmHexview"


Private sub txtHex__823C70
00823C70: push ebp
00823C71: mov ebp, esp
00823C73: sub esp, 0000000Ch
00823C76: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00823C7B: mov eax, fs:[00h]
00823C81: push eax
00823C82: mov fs:[00000000h], esp
00823C89: push 0000001Ch
00823C8B: pop eax
00823C8C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00823C91: push ebx
00823C92: push esi
00823C93: push edi
00823C94: mov var_0C, esp
00823C97: mov var_08, 0040B168h
00823C9E: mov eax, [ebp+08h]
00823CA1: and eax, 00000001h
00823CA4: mov var_04, eax
00823CA7: mov eax, [ebp+08h]
00823CAA: and al, FEh
00823CAC: mov [ebp+08h], eax
00823CAF: mov eax, [ebp+08h]
00823CB2: mov eax, [eax]
00823CB4: push [ebp+08h]
00823CB7: call [eax+04h]
00823CBA: mov eax, [ebp+0Ch]
00823CBD: movsx eax, word ptr [eax]
00823CC0: cmp eax, 0000001Bh
00823CC3: jnz 823D3Bh
00823CC5: cmp [008F529Ch], 00000000h
00823CCC: jnz 823CE6h
00823CCE: push 008F529Ch
00823CD3: push 00440F2Ch
00823CD8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00823CDD: mov var_2C, 008F529Ch
00823CE4: jmp 823CEDh
00823CE6: mov var_2C, 008F529Ch
00823CED: mov eax, var_2C
00823CF0: mov eax, [eax]
00823CF2: mov var_1C, eax
00823CF5: push [ebp+08h]
00823CF8: lea eax, var_18
00823CFB: push eax
00823CFC: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
00823D01: push eax
00823D02: mov eax, var_1C
00823D05: mov eax, [eax]
00823D07: push var_1C
00823D0A: call [eax+10h]
00823D0D: fclex 
00823D0F: mov var_20, eax
00823D12: cmp var_20, 00000000h
00823D16: jnl 823D2Fh
00823D18: push 00000010h
00823D1A: push 00440F1Ch
00823D1F: push var_1C
00823D22: push var_20
00823D25: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00823D2A: mov var_30, eax
00823D2D: jmp 823D33h
00823D2F: and var_30, 00000000h
00823D33: lea ecx, var_18
00823D36: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00823D3B: mov var_04, 00000000h
00823D42: push 00823D53h
00823D47: jmp 823D52h
00823D49: lea ecx, var_18
00823D4C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00823D51: ret 
End Sub

Private sub Form__823A56
00823A56: push ebp
00823A57: mov ebp, esp
00823A59: sub esp, 00000018h
00823A5C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00823A61: mov eax, fs:[00h]
00823A67: push eax
00823A68: mov fs:[00000000h], esp
00823A6F: mov eax, 000000B0h
00823A74: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00823A79: push ebx
00823A7A: push esi
00823A7B: push edi
00823A7C: mov var_18, esp
00823A7F: mov var_14, 0040B138h
00823A86: mov eax, [ebp+08h]
00823A89: and eax, 00000001h
00823A8C: mov var_10, eax
00823A8F: mov eax, [ebp+08h]
00823A92: and al, FEh
00823A94: mov [ebp+08h], eax
00823A97: mov var_0C, 00000000h
00823A9E: mov eax, [ebp+08h]
00823AA1: mov eax, [eax]
00823AA3: push [ebp+08h]
00823AA6: call [eax+04h]
00823AA9: mov var_04, 00000001h
00823AB0: mov var_04, 00000002h
00823AB7: push FFFFFFFFh
00823AB9: call 00410A60h ; On Error ...
00823ABE: mov var_04, 00000003h
00823AC5: fldz 
00823AC7: fstp real4 ptr var_2C
00823ACA: mov var_34, 00000004h
00823AD1: and var_4C, 00000000h
00823AD5: mov var_54, 00000002h
00823ADC: lea eax, var_000000A8
00823AE2: push eax
00823AE3: mov eax, [ebp+08h]
00823AE6: mov eax, [eax]
00823AE8: push [ebp+08h]
00823AEB: call [eax+00000080h]
00823AF1: fclex 
00823AF3: mov var_000000B0, eax
00823AF9: cmp var_000000B0, 00000000h
00823B00: jnl 823B22h
00823B02: push 00000080h
00823B07: push 004446F4h
00823B0C: push [ebp+08h]
00823B0F: push var_000000B0
00823B15: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00823B1A: mov var_000000CC, eax
00823B20: jmp 823B29h
00823B22: and var_000000CC, 00000000h
00823B29: fld real4 ptr var_000000A8
00823B2F: fsub real4 ptr [00402BB0h]
00823B35: fstp real4 ptr var_6C
00823B38: fstsw ax
00823B3A: test al, 0Dh
00823B3C: jnz 00823C6Bh
00823B42: mov var_74, 00000004h
00823B49: lea eax, var_000000AC
00823B4F: push eax
00823B50: mov eax, [ebp+08h]
00823B53: mov eax, [eax]
00823B55: push [ebp+08h]
00823B58: call [eax+00000088h]
00823B5E: fclex 
00823B60: mov var_000000B4, eax
00823B66: cmp var_000000B4, 00000000h
00823B6D: jnl 823B8Fh
00823B6F: push 00000088h
00823B74: push 004446F4h
00823B79: push [ebp+08h]
00823B7C: push var_000000B4
00823B82: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00823B87: mov var_000000D0, eax
00823B8D: jmp 823B96h
00823B8F: and var_000000D0, 00000000h
00823B96: fld real4 ptr var_000000AC
00823B9C: fsub real4 ptr [00402B54h]
00823BA2: fstp real4 ptr var_0000008C
00823BA8: fstsw ax
00823BAA: test al, 0Dh
00823BAC: jnz 00823C6Bh
00823BB2: mov var_00000094, 00000004h
00823BBC: push 00000010h
00823BBE: pop eax
00823BBF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00823BC4: lea esi, var_34
00823BC7: mov edi, esp
00823BC9: movsd 
00823BCA: movsd 
00823BCB: movsd 
00823BCC: movsd 
00823BCD: push 00000010h
00823BCF: pop eax
00823BD0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00823BD5: lea esi, var_54
00823BD8: mov edi, esp
00823BDA: movsd 
00823BDB: movsd 
00823BDC: movsd 
00823BDD: movsd 
00823BDE: push 00000010h
00823BE0: pop eax
00823BE1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00823BE6: lea esi, var_74
00823BE9: mov edi, esp
00823BEB: movsd 
00823BEC: movsd 
00823BED: movsd 
00823BEE: movsd 
00823BEF: push 00000010h
00823BF1: pop eax
00823BF2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00823BF7: lea esi, var_00000094
00823BFD: mov edi, esp
00823BFF: movsd 
00823C00: movsd 
00823C01: movsd 
00823C02: movsd 
00823C03: push 00000004h
00823C05: push 80011002h
00823C0A: mov eax, [ebp+08h]
00823C0D: mov eax, [eax]
00823C0F: push [ebp+08h]
00823C12: call [eax+000002FCh]
00823C18: push eax
00823C19: lea eax, var_24
00823C1C: push eax
00823C1D: call 00410A84h ; Set (object)
00823C22: push eax
00823C23: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00823C28: add esp, 0000004Ch
00823C2B: lea ecx, var_24
00823C2E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00823C33: mov var_10, 00000000h
00823C3A: wait 
00823C3B: push 00823C4Ch
00823C40: jmp 823C4Bh
00823C42: lea ecx, var_24
00823C45: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00823C4A: ret 
End Sub

