VERSION 5.00
Begin VB.Form frmServices
  Caption = "Service manager"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmServices.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 13725
  ClientHeight = 6645
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer Timer1
    Interval = 800
    Left = 13200
    Top = 0
  End
  Begin MSComctlLib.ListView lstServices
    Left = 0
    Top = 0
    Width = 13695
    Height = 6615
    TabIndex = 0
  End
  Begin VB.Menu mnuServiceMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuServices
      Index = 0
      Caption = "Refresh"
    End
    Begin VB.Menu mnuServices
      Index = 1
      Caption = "-"
    End
    Begin VB.Menu mnuServices
      Index = 2
      Caption = "Start"
    End
    Begin VB.Menu mnuServices
      Index = 3
      Caption = "Stop"
    End
  End
End

Attribute VB_Name = "frmServices"


Private sub mnuServices__81A2D8
0081A2D8: push ebp
0081A2D9: mov ebp, esp
0081A2DB: sub esp, 0000000Ch
0081A2DE: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081A2E3: mov eax, fs:[00h]
0081A2E9: push eax
0081A2EA: mov fs:[00000000h], esp
0081A2F1: mov eax, 0000011Ch
0081A2F6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081A2FB: push ebx
0081A2FC: push esi
0081A2FD: push edi
0081A2FE: mov var_0C, esp
0081A301: mov var_08, 0040AE18h
0081A308: mov eax, [ebp+08h]
0081A30B: and eax, 00000001h
0081A30E: mov var_04, eax
0081A311: mov eax, [ebp+08h]
0081A314: and al, FEh
0081A316: mov [ebp+08h], eax
0081A319: mov eax, [ebp+08h]
0081A31C: mov eax, [eax]
0081A31E: push [ebp+08h]
0081A321: call [eax+04h]
0081A324: mov eax, [ebp+0Ch]
0081A327: mov ax, [eax]
0081A32A: mov var_000000E8, ax
0081A331: movsx eax, word ptr var_000000E8
0081A338: mov var_000000FC, eax
0081A33E: cmp var_000000FC, 00000000h
0081A345: jz 81A366h
0081A347: cmp var_000000FC, 00000002h
0081A34E: jz 0081A445h
0081A354: cmp var_000000FC, 00000003h
0081A35B: jz 0081A8CBh
0081A361: jmp 0081AD4Ch
0081A366: lea eax, var_2C
0081A369: push eax
0081A36A: mov eax, [ebp+08h]
0081A36D: mov eax, [eax]
0081A36F: push [ebp+08h]
0081A372: call [eax+000001C0h]
0081A378: fclex 
0081A37A: mov var_00000094, eax
0081A380: cmp var_00000094, 00000000h
0081A387: jnl 81A3A9h
0081A389: push 000001C0h
0081A38E: push 00445104h
0081A393: push [ebp+08h]
0081A396: push var_00000094
0081A39C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081A3A1: mov var_00000100, eax
0081A3A7: jmp 81A3B0h
0081A3A9: and var_00000100, 00000000h
0081A3B0: push var_2C
0081A3B3: call 004109DCh ; Val(arg_1)
0081A3B8: fstp real8 ptr var_00000090
0081A3BE: push 00000000h
0081A3C0: push 00000000h
0081A3C2: push 00000001h
0081A3C4: push 00000000h
0081A3C6: lea eax, var_50
0081A3C9: push eax
0081A3CA: push 00000010h
0081A3CC: push 00000880h
0081A3D1: call 00410946h ; ReDim
0081A3D6: add esp, 0000001Ch
0081A3D9: mov var_58, 00442938h
0081A3E0: mov var_60, 00000008h
0081A3E7: lea esi, var_60
0081A3EA: push 00000000h
0081A3EC: push var_50
0081A3EF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0081A3F4: mov ecx, eax
0081A3F6: mov edx, esi
0081A3F8: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0081A3FD: mov edx, 0043D6CCh ; x58
0081A402: lea ecx, var_30
0081A405: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081A40A: lea eax, var_50
0081A40D: push eax
0081A40E: lea eax, var_30
0081A411: push eax
0081A412: fld real8 ptr var_00000090
0081A418: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0081A41D: push eax
0081A41E: call 007A6910h
0081A423: lea eax, var_50
0081A426: push eax
0081A427: push 00000000h
0081A429: call 00410934h ; Erase
0081A42E: lea eax, var_30
0081A431: push eax
0081A432: lea eax, var_2C
0081A435: push eax
0081A436: push 00000002h
0081A438: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081A43D: add esp, 0000000Ch
0081A440: jmp 0081AD4Ch
0081A445: mov var_58, 00000001h
0081A44C: mov var_60, 00000002h
0081A453: push 004412BCh
0081A458: push 00000000h
0081A45A: push 00000007h
0081A45C: mov eax, [ebp+08h]
0081A45F: mov eax, [eax]
0081A461: push [ebp+08h]
0081A464: call [eax+00000308h]
0081A46A: push eax
0081A46B: lea eax, var_34
0081A46E: push eax
0081A46F: call 00410A84h ; Set (object)
0081A474: push eax
0081A475: lea eax, var_4C
0081A478: push eax
0081A479: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081A47E: add esp, 00000010h
0081A481: push eax
0081A482: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081A487: push eax
0081A488: lea eax, var_38
0081A48B: push eax
0081A48C: call 00410A84h ; Set (object)
0081A491: mov var_00000094, eax
0081A497: lea eax, var_00000088
0081A49D: push eax
0081A49E: mov eax, var_00000094
0081A4A4: mov eax, [eax]
0081A4A6: push var_00000094
0081A4AC: call [eax+1Ch]
0081A4AF: fclex 
0081A4B1: mov var_00000098, eax
0081A4B7: cmp var_00000098, 00000000h
0081A4BE: jnl 81A4E0h
0081A4C0: push 0000001Ch
0081A4C2: push 004412BCh
0081A4C7: push var_00000094
0081A4CD: push var_00000098
0081A4D3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081A4D8: mov var_00000104, eax
0081A4DE: jmp 81A4E7h
0081A4E0: and var_00000104, 00000000h
0081A4E7: mov eax, var_00000088
0081A4ED: mov var_68, eax
0081A4F0: mov var_70, 00000003h
0081A4F7: mov var_78, 00000001h
0081A4FE: mov var_80, 00000002h
0081A505: lea eax, var_60
0081A508: push eax
0081A509: lea eax, var_70
0081A50C: push eax
0081A50D: lea eax, var_80
0081A510: push eax
0081A511: lea eax, var_000000C4
0081A517: push eax
0081A518: lea eax, var_000000B4
0081A51E: push eax
0081A51F: lea eax, var_24
0081A522: push eax
0081A523: call 00410A3Ch ; For
0081A528: mov var_000000F4, eax
0081A52E: lea eax, var_38
0081A531: push eax
0081A532: lea eax, var_34
0081A535: push eax
0081A536: push 00000002h
0081A538: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081A53D: add esp, 0000000Ch
0081A540: lea ecx, var_4C
0081A543: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081A548: jmp 0081A7E0h
0081A54D: push 004412BCh
0081A552: push 00000000h
0081A554: push 00000007h
0081A556: mov eax, [ebp+08h]
0081A559: mov eax, [eax]
0081A55B: push [ebp+08h]
0081A55E: call [eax+00000308h]
0081A564: push eax
0081A565: lea eax, var_34
0081A568: push eax
0081A569: call 00410A84h ; Set (object)
0081A56E: push eax
0081A56F: lea eax, var_4C
0081A572: push eax
0081A573: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081A578: add esp, 00000010h
0081A57B: push eax
0081A57C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081A581: push eax
0081A582: lea eax, var_38
0081A585: push eax
0081A586: call 00410A84h ; Set (object)
0081A58B: mov var_00000094, eax
0081A591: lea eax, var_3C
0081A594: push eax
0081A595: lea eax, var_24
0081A598: push eax
0081A599: mov eax, var_00000094
0081A59F: mov eax, [eax]
0081A5A1: push var_00000094
0081A5A7: call [eax+24h]
0081A5AA: fclex 
0081A5AC: mov var_00000098, eax
0081A5B2: cmp var_00000098, 00000000h
0081A5B9: jnl 81A5DBh
0081A5BB: push 00000024h
0081A5BD: push 004412BCh
0081A5C2: push var_00000094
0081A5C8: push var_00000098
0081A5CE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081A5D3: mov var_00000108, eax
0081A5D9: jmp 81A5E2h
0081A5DB: and var_00000108, 00000000h
0081A5E2: mov eax, var_3C
0081A5E5: mov var_0000009C, eax
0081A5EB: lea eax, var_00000084
0081A5F1: push eax
0081A5F2: mov eax, var_0000009C
0081A5F8: mov eax, [eax]
0081A5FA: push var_0000009C
0081A600: call [eax+5Ch]
0081A603: fclex 
0081A605: mov var_000000A0, eax
0081A60B: cmp var_000000A0, 00000000h
0081A612: jnl 81A634h
0081A614: push 0000005Ch
0081A616: push 004412DCh
0081A61B: push var_0000009C
0081A621: push var_000000A0
0081A627: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081A62C: mov var_0000010C, eax
0081A632: jmp 81A63Bh
0081A634: and var_0000010C, 00000000h
0081A63B: xor eax, eax
0081A63D: cmp word ptr var_00000084, FFFFh
0081A645: setz al
0081A648: neg eax
0081A64A: mov var_000000A4, ax
0081A651: lea eax, var_3C
0081A654: push eax
0081A655: lea eax, var_38
0081A658: push eax
0081A659: lea eax, var_34
0081A65C: push eax
0081A65D: push 00000003h
0081A65F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081A664: add esp, 00000010h
0081A667: lea ecx, var_4C
0081A66A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081A66F: movsx eax, word ptr var_000000A4
0081A676: test eax, eax
0081A678: jz 0081A7C3h
0081A67E: push 004412BCh
0081A683: push 00000000h
0081A685: push 00000007h
0081A687: mov eax, [ebp+08h]
0081A68A: mov eax, [eax]
0081A68C: push [ebp+08h]
0081A68F: call [eax+00000308h]
0081A695: push eax
0081A696: lea eax, var_34
0081A699: push eax
0081A69A: call 00410A84h ; Set (object)
0081A69F: push eax
0081A6A0: lea eax, var_4C
0081A6A3: push eax
0081A6A4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081A6A9: add esp, 00000010h
0081A6AC: push eax
0081A6AD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081A6B2: push eax
0081A6B3: lea eax, var_38
0081A6B6: push eax
0081A6B7: call 00410A84h ; Set (object)
0081A6BC: mov var_00000094, eax
0081A6C2: lea eax, var_3C
0081A6C5: push eax
0081A6C6: lea eax, var_24
0081A6C9: push eax
0081A6CA: mov eax, var_00000094
0081A6D0: mov eax, [eax]
0081A6D2: push var_00000094
0081A6D8: call [eax+24h]
0081A6DB: fclex 
0081A6DD: mov var_00000098, eax
0081A6E3: cmp var_00000098, 00000000h
0081A6EA: jnl 81A70Ch
0081A6EC: push 00000024h
0081A6EE: push 004412BCh
0081A6F3: push var_00000094
0081A6F9: push var_00000098
0081A6FF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081A704: mov var_00000110, eax
0081A70A: jmp 81A713h
0081A70C: and var_00000110, 00000000h
0081A713: mov eax, var_3C
0081A716: mov var_0000009C, eax
0081A71C: lea eax, var_2C
0081A71F: push eax
0081A720: mov eax, var_0000009C
0081A726: mov eax, [eax]
0081A728: push var_0000009C
0081A72E: call [eax+24h]
0081A731: fclex 
0081A733: mov var_000000A0, eax
0081A739: cmp var_000000A0, 00000000h
0081A740: jnl 81A762h
0081A742: push 00000024h
0081A744: push 004412DCh
0081A749: push var_0000009C
0081A74F: push var_000000A0
0081A755: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081A75A: mov var_00000114, eax
0081A760: jmp 81A769h
0081A762: and var_00000114, 00000000h
0081A769: push var_28
0081A76C: push var_2C
0081A76F: call 00410A18h ; &
0081A774: mov edx, eax
0081A776: lea ecx, var_30
0081A779: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081A77E: push eax
0081A77F: push 004413D8h
0081A784: call 00410A18h ; &
0081A789: mov edx, eax
0081A78B: lea ecx, var_28
0081A78E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081A793: lea eax, var_30
0081A796: push eax
0081A797: lea eax, var_2C
0081A79A: push eax
0081A79B: push 00000002h
0081A79D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081A7A2: add esp, 0000000Ch
0081A7A5: lea eax, var_3C
0081A7A8: push eax
0081A7A9: lea eax, var_38
0081A7AC: push eax
0081A7AD: lea eax, var_34
0081A7B0: push eax
0081A7B1: push 00000003h
0081A7B3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081A7B8: add esp, 00000010h
0081A7BB: lea ecx, var_4C
0081A7BE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081A7C3: lea eax, var_000000C4
0081A7C9: push eax
0081A7CA: lea eax, var_000000B4
0081A7D0: push eax
0081A7D1: lea eax, var_24
0081A7D4: push eax
0081A7D5: call 00410A36h ; Next
0081A7DA: mov var_000000F4, eax
0081A7E0: cmp var_000000F4, 00000000h
0081A7E7: jnz 0081A54Dh
0081A7ED: lea eax, var_2C
0081A7F0: push eax
0081A7F1: mov eax, [ebp+08h]
0081A7F4: mov eax, [eax]
0081A7F6: push [ebp+08h]
0081A7F9: call [eax+000001C0h]
0081A7FF: fclex 
0081A801: mov var_00000094, eax
0081A807: cmp var_00000094, 00000000h
0081A80E: jnl 81A830h
0081A810: push 000001C0h
0081A815: push 00445104h
0081A81A: push [ebp+08h]
0081A81D: push var_00000094
0081A823: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081A828: mov var_00000118, eax
0081A82E: jmp 81A837h
0081A830: and var_00000118, 00000000h
0081A837: push var_2C
0081A83A: call 004109DCh ; Val(arg_1)
0081A83F: fstp real8 ptr var_00000090
0081A845: push 00000000h
0081A847: push 00000000h
0081A849: push 00000001h
0081A84B: push 00000000h
0081A84D: lea eax, var_50
0081A850: push eax
0081A851: push 00000010h
0081A853: push 00000880h
0081A858: call 00410946h ; ReDim
0081A85D: add esp, 0000001Ch
0081A860: lea eax, var_28
0081A863: mov var_58, eax
0081A866: mov var_60, 00004008h
0081A86D: lea esi, var_60
0081A870: push 00000000h
0081A872: push var_50
0081A875: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0081A87A: mov ecx, eax
0081A87C: mov edx, esi
0081A87E: call 00410940h ; msvbvm60.dll.__vbaVarZero
0081A883: mov edx, 0043D6D8h ; x59
0081A888: lea ecx, var_30
0081A88B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081A890: lea eax, var_50
0081A893: push eax
0081A894: lea eax, var_30
0081A897: push eax
0081A898: fld real8 ptr var_00000090
0081A89E: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0081A8A3: push eax
0081A8A4: call 007A6910h
0081A8A9: lea eax, var_50
0081A8AC: push eax
0081A8AD: push 00000000h
0081A8AF: call 00410934h ; Erase
0081A8B4: lea eax, var_30
0081A8B7: push eax
0081A8B8: lea eax, var_2C
0081A8BB: push eax
0081A8BC: push 00000002h
0081A8BE: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081A8C3: add esp, 0000000Ch
0081A8C6: jmp 0081AD4Ch
0081A8CB: mov var_58, 00000001h
0081A8D2: mov var_60, 00000002h
0081A8D9: push 004412BCh
0081A8DE: push 00000000h
0081A8E0: push 00000007h
0081A8E2: mov eax, [ebp+08h]
0081A8E5: mov eax, [eax]
0081A8E7: push [ebp+08h]
0081A8EA: call [eax+00000308h]
0081A8F0: push eax
0081A8F1: lea eax, var_34
0081A8F4: push eax
0081A8F5: call 00410A84h ; Set (object)
0081A8FA: push eax
0081A8FB: lea eax, var_4C
0081A8FE: push eax
0081A8FF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081A904: add esp, 00000010h
0081A907: push eax
0081A908: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081A90D: push eax
0081A90E: lea eax, var_38
0081A911: push eax
0081A912: call 00410A84h ; Set (object)
0081A917: mov var_00000094, eax
0081A91D: lea eax, var_00000088
0081A923: push eax
0081A924: mov eax, var_00000094
0081A92A: mov eax, [eax]
0081A92C: push var_00000094
0081A932: call [eax+1Ch]
0081A935: fclex 
0081A937: mov var_00000098, eax
0081A93D: cmp var_00000098, 00000000h
0081A944: jnl 81A966h
0081A946: push 0000001Ch
0081A948: push 004412BCh
0081A94D: push var_00000094
0081A953: push var_00000098
0081A959: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081A95E: mov var_0000011C, eax
0081A964: jmp 81A96Dh
0081A966: and var_0000011C, 00000000h
0081A96D: mov eax, var_00000088
0081A973: mov var_68, eax
0081A976: mov var_70, 00000003h
0081A97D: mov var_78, 00000001h
0081A984: mov var_80, 00000002h
0081A98B: lea eax, var_60
0081A98E: push eax
0081A98F: lea eax, var_70
0081A992: push eax
0081A993: lea eax, var_80
0081A996: push eax
0081A997: lea eax, var_000000E4
0081A99D: push eax
0081A99E: lea eax, var_000000D4
0081A9A4: push eax
0081A9A5: lea eax, var_24
0081A9A8: push eax
0081A9A9: call 00410A3Ch ; For
0081A9AE: mov var_000000F8, eax
0081A9B4: lea eax, var_38
0081A9B7: push eax
0081A9B8: lea eax, var_34
0081A9BB: push eax
0081A9BC: push 00000002h
0081A9BE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081A9C3: add esp, 0000000Ch
0081A9C6: lea ecx, var_4C
0081A9C9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081A9CE: jmp 0081AC66h
0081A9D3: push 004412BCh
0081A9D8: push 00000000h
0081A9DA: push 00000007h
0081A9DC: mov eax, [ebp+08h]
0081A9DF: mov eax, [eax]
0081A9E1: push [ebp+08h]
0081A9E4: call [eax+00000308h]
0081A9EA: push eax
0081A9EB: lea eax, var_34
0081A9EE: push eax
0081A9EF: call 00410A84h ; Set (object)
0081A9F4: push eax
0081A9F5: lea eax, var_4C
0081A9F8: push eax
0081A9F9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081A9FE: add esp, 00000010h
0081AA01: push eax
0081AA02: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081AA07: push eax
0081AA08: lea eax, var_38
0081AA0B: push eax
0081AA0C: call 00410A84h ; Set (object)
0081AA11: mov var_00000094, eax
0081AA17: lea eax, var_3C
0081AA1A: push eax
0081AA1B: lea eax, var_24
0081AA1E: push eax
0081AA1F: mov eax, var_00000094
0081AA25: mov eax, [eax]
0081AA27: push var_00000094
0081AA2D: call [eax+24h]
0081AA30: fclex 
0081AA32: mov var_00000098, eax
0081AA38: cmp var_00000098, 00000000h
0081AA3F: jnl 81AA61h
0081AA41: push 00000024h
0081AA43: push 004412BCh
0081AA48: push var_00000094
0081AA4E: push var_00000098
0081AA54: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081AA59: mov var_00000120, eax
0081AA5F: jmp 81AA68h
0081AA61: and var_00000120, 00000000h
0081AA68: mov eax, var_3C
0081AA6B: mov var_0000009C, eax
0081AA71: lea eax, var_00000084
0081AA77: push eax
0081AA78: mov eax, var_0000009C
0081AA7E: mov eax, [eax]
0081AA80: push var_0000009C
0081AA86: call [eax+5Ch]
0081AA89: fclex 
0081AA8B: mov var_000000A0, eax
0081AA91: cmp var_000000A0, 00000000h
0081AA98: jnl 81AABAh
0081AA9A: push 0000005Ch
0081AA9C: push 004412DCh
0081AAA1: push var_0000009C
0081AAA7: push var_000000A0
0081AAAD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081AAB2: mov var_00000124, eax
0081AAB8: jmp 81AAC1h
0081AABA: and var_00000124, 00000000h
0081AAC1: xor eax, eax
0081AAC3: cmp word ptr var_00000084, FFFFh
0081AACB: setz al
0081AACE: neg eax
0081AAD0: mov var_000000A4, ax
0081AAD7: lea eax, var_3C
0081AADA: push eax
0081AADB: lea eax, var_38
0081AADE: push eax
0081AADF: lea eax, var_34
0081AAE2: push eax
0081AAE3: push 00000003h
0081AAE5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081AAEA: add esp, 00000010h
0081AAED: lea ecx, var_4C
0081AAF0: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081AAF5: movsx eax, word ptr var_000000A4
0081AAFC: test eax, eax
0081AAFE: jz 0081AC49h
0081AB04: push 004412BCh
0081AB09: push 00000000h
0081AB0B: push 00000007h
0081AB0D: mov eax, [ebp+08h]
0081AB10: mov eax, [eax]
0081AB12: push [ebp+08h]
0081AB15: call [eax+00000308h]
0081AB1B: push eax
0081AB1C: lea eax, var_34
0081AB1F: push eax
0081AB20: call 00410A84h ; Set (object)
0081AB25: push eax
0081AB26: lea eax, var_4C
0081AB29: push eax
0081AB2A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081AB2F: add esp, 00000010h
0081AB32: push eax
0081AB33: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081AB38: push eax
0081AB39: lea eax, var_38
0081AB3C: push eax
0081AB3D: call 00410A84h ; Set (object)
0081AB42: mov var_00000094, eax
0081AB48: lea eax, var_3C
0081AB4B: push eax
0081AB4C: lea eax, var_24
0081AB4F: push eax
0081AB50: mov eax, var_00000094
0081AB56: mov eax, [eax]
0081AB58: push var_00000094
0081AB5E: call [eax+24h]
0081AB61: fclex 
0081AB63: mov var_00000098, eax
0081AB69: cmp var_00000098, 00000000h
0081AB70: jnl 81AB92h
0081AB72: push 00000024h
0081AB74: push 004412BCh
0081AB79: push var_00000094
0081AB7F: push var_00000098
0081AB85: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081AB8A: mov var_00000128, eax
0081AB90: jmp 81AB99h
0081AB92: and var_00000128, 00000000h
0081AB99: mov eax, var_3C
0081AB9C: mov var_0000009C, eax
0081ABA2: lea eax, var_2C
0081ABA5: push eax
0081ABA6: mov eax, var_0000009C
0081ABAC: mov eax, [eax]
0081ABAE: push var_0000009C
0081ABB4: call [eax+24h]
0081ABB7: fclex 
0081ABB9: mov var_000000A0, eax
0081ABBF: cmp var_000000A0, 00000000h
0081ABC6: jnl 81ABE8h
0081ABC8: push 00000024h
0081ABCA: push 004412DCh
0081ABCF: push var_0000009C
0081ABD5: push var_000000A0
0081ABDB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081ABE0: mov var_0000012C, eax
0081ABE6: jmp 81ABEFh
0081ABE8: and var_0000012C, 00000000h
0081ABEF: push var_28
0081ABF2: push var_2C
0081ABF5: call 00410A18h ; &
0081ABFA: mov edx, eax
0081ABFC: lea ecx, var_30
0081ABFF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081AC04: push eax
0081AC05: push 004413D8h
0081AC0A: call 00410A18h ; &
0081AC0F: mov edx, eax
0081AC11: lea ecx, var_28
0081AC14: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081AC19: lea eax, var_30
0081AC1C: push eax
0081AC1D: lea eax, var_2C
0081AC20: push eax
0081AC21: push 00000002h
0081AC23: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081AC28: add esp, 0000000Ch
0081AC2B: lea eax, var_3C
0081AC2E: push eax
0081AC2F: lea eax, var_38
0081AC32: push eax
0081AC33: lea eax, var_34
0081AC36: push eax
0081AC37: push 00000003h
0081AC39: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081AC3E: add esp, 00000010h
0081AC41: lea ecx, var_4C
0081AC44: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081AC49: lea eax, var_000000E4
0081AC4F: push eax
0081AC50: lea eax, var_000000D4
0081AC56: push eax
0081AC57: lea eax, var_24
0081AC5A: push eax
0081AC5B: call 00410A36h ; Next
0081AC60: mov var_000000F8, eax
0081AC66: cmp var_000000F8, 00000000h
0081AC6D: jnz 0081A9D3h
0081AC73: lea eax, var_2C
0081AC76: push eax
0081AC77: mov eax, [ebp+08h]
0081AC7A: mov eax, [eax]
0081AC7C: push [ebp+08h]
0081AC7F: call [eax+000001C0h]
0081AC85: fclex 
0081AC87: mov var_00000094, eax
0081AC8D: cmp var_00000094, 00000000h
0081AC94: jnl 81ACB6h
0081AC96: push 000001C0h
0081AC9B: push 00445104h
0081ACA0: push [ebp+08h]
0081ACA3: push var_00000094
0081ACA9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081ACAE: mov var_00000130, eax
0081ACB4: jmp 81ACBDh
0081ACB6: and var_00000130, 00000000h
0081ACBD: push var_2C
0081ACC0: call 004109DCh ; Val(arg_1)
0081ACC5: fstp real8 ptr var_00000090
0081ACCB: push 00000000h
0081ACCD: push 00000000h
0081ACCF: push 00000001h
0081ACD1: push 00000000h
0081ACD3: lea eax, var_50
0081ACD6: push eax
0081ACD7: push 00000010h
0081ACD9: push 00000880h
0081ACDE: call 00410946h ; ReDim
0081ACE3: add esp, 0000001Ch
0081ACE6: lea eax, var_28
0081ACE9: mov var_58, eax
0081ACEC: mov var_60, 00004008h
0081ACF3: lea esi, var_60
0081ACF6: push 00000000h
0081ACF8: push var_50
0081ACFB: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0081AD00: mov ecx, eax
0081AD02: mov edx, esi
0081AD04: call 00410940h ; msvbvm60.dll.__vbaVarZero
0081AD09: mov edx, 0043D6E4h ; x60
0081AD0E: lea ecx, var_30
0081AD11: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081AD16: lea eax, var_50
0081AD19: push eax
0081AD1A: lea eax, var_30
0081AD1D: push eax
0081AD1E: fld real8 ptr var_00000090
0081AD24: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0081AD29: push eax
0081AD2A: call 007A6910h
0081AD2F: lea eax, var_50
0081AD32: push eax
0081AD33: push 00000000h
0081AD35: call 00410934h ; Erase
0081AD3A: lea eax, var_30
0081AD3D: push eax
0081AD3E: lea eax, var_2C
0081AD41: push eax
0081AD42: push 00000002h
0081AD44: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081AD49: add esp, 0000000Ch
0081AD4C: mov var_04, 00000000h
0081AD53: wait 
0081AD54: push 0081ADCEh
0081AD59: jmp 81AD97h
0081AD5B: lea eax, var_30
0081AD5E: push eax
0081AD5F: lea eax, var_2C
0081AD62: push eax
0081AD63: push 00000002h
0081AD65: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081AD6A: add esp, 0000000Ch
0081AD6D: lea eax, var_3C
0081AD70: push eax
0081AD71: lea eax, var_38
0081AD74: push eax
0081AD75: lea eax, var_34
0081AD78: push eax
0081AD79: push 00000003h
0081AD7B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081AD80: add esp, 00000010h
0081AD83: lea ecx, var_4C
0081AD86: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081AD8B: lea eax, var_50
0081AD8E: push eax
0081AD8F: push 00000000h
0081AD91: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0081AD96: ret 
End Sub

Private sub lstServices__819CEB
00819CEB: push ebp
00819CEC: mov ebp, esp
00819CEE: sub esp, 0000000Ch
00819CF1: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00819CF6: mov eax, fs:[00h]
00819CFC: push eax
00819CFD: mov fs:[00000000h], esp
00819D04: push 00000008h
00819D06: pop eax
00819D07: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00819D0C: push ebx
00819D0D: push esi
00819D0E: push edi
00819D0F: mov var_0C, esp
00819D12: mov var_08, 0040ADA8h
00819D19: mov eax, [ebp+08h]
00819D1C: and eax, 00000001h
00819D1F: mov var_04, eax
00819D22: mov eax, [ebp+08h]
00819D25: and al, FEh
00819D27: mov [ebp+08h], eax
00819D2A: mov eax, [ebp+08h]
00819D2D: mov eax, [eax]
00819D2F: push [ebp+08h]
00819D32: call [eax+04h]
00819D35: mov eax, [ebp+0Ch]
00819D38: or word ptr [eax], FFFFh
00819D3C: mov var_04, 00000000h
00819D43: mov eax, [ebp+08h]
00819D46: mov eax, [eax]
00819D48: push [ebp+08h]
00819D4B: call [eax+08h]
00819D4E: mov eax, var_04
00819D51: mov ecx, var_14
00819D54: mov fs:[00000000h], ecx
00819D5B: pop edi
00819D5C: pop esi
00819D5D: pop ebx
00819D5E: leave 
00819D5F: retn 0008h
End Sub

Private sub lstServices__819D62
00819D62: push ebp
00819D63: mov ebp, esp
00819D65: sub esp, 00000018h
00819D68: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00819D6D: mov eax, fs:[00h]
00819D73: push eax
00819D74: mov fs:[00000000h], esp
00819D7B: push 00000064h
00819D7D: pop eax
00819D7E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00819D83: push ebx
00819D84: push esi
00819D85: push edi
00819D86: mov var_18, esp
00819D89: mov var_14, 0040ADB0h
00819D90: mov eax, [ebp+08h]
00819D93: and eax, 00000001h
00819D96: mov var_10, eax
00819D99: mov eax, [ebp+08h]
00819D9C: and al, FEh
00819D9E: mov [ebp+08h], eax
00819DA1: mov var_0C, 00000000h
00819DA8: mov eax, [ebp+08h]
00819DAB: mov eax, [eax]
00819DAD: push [ebp+08h]
00819DB0: call [eax+04h]
00819DB3: mov var_04, 00000001h
00819DBA: push [ebp+0Ch]
00819DBD: lea eax, var_24
00819DC0: push eax
00819DC1: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
00819DC6: mov var_04, 00000002h
00819DCD: push FFFFFFFFh
00819DCF: call 00410A60h ; On Error ...
00819DD4: mov var_04, 00000003h
00819DDB: lea eax, var_60
00819DDE: push eax
00819DDF: mov eax, var_24
00819DE2: mov eax, [eax]
00819DE4: push var_24
00819DE7: call [eax+34h]
00819DEA: fclex 
00819DEC: mov var_64, eax
00819DEF: cmp var_64, 00000000h
00819DF3: jnl 819E0Ch
00819DF5: push 00000034h
00819DF7: push 00450154h
00819DFC: push var_24
00819DFF: push var_64
00819E02: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00819E07: mov var_80, eax
00819E0A: jmp 819E10h
00819E0C: and var_80, 00000000h
00819E10: mov esi, var_60
00819E13: sub esi, 00000001h
00819E16: jo 0081A171h
00819E1C: push 00000000h
00819E1E: push 00000010h
00819E20: mov eax, [ebp+08h]
00819E23: mov eax, [eax]
00819E25: push [ebp+08h]
00819E28: call [eax+00000308h]
00819E2E: push eax
00819E2F: lea eax, var_28
00819E32: push eax
00819E33: call 00410A84h ; Set (object)
00819E38: push eax
00819E39: lea eax, var_3C
00819E3C: push eax
00819E3D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00819E42: add esp, 00000010h
00819E45: push eax
00819E46: call 004109D0h ; msvbvm60.dll.__vbaI2Var
00819E4B: movsx eax, ax
00819E4E: sub esi, eax
00819E50: neg esi
00819E52: sbb esi, esi
00819E54: inc esi
00819E55: neg esi
00819E57: mov var_68, si
00819E5B: lea ecx, var_28
00819E5E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00819E63: lea ecx, var_3C
00819E66: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00819E6B: movsx eax, word ptr var_68
00819E6F: test eax, eax
00819E71: jz 00819FA8h
00819E77: mov var_04, 00000004h
00819E7E: push 00000000h
00819E80: push 00000011h
00819E82: mov eax, [ebp+08h]
00819E85: mov eax, [eax]
00819E87: push [ebp+08h]
00819E8A: call [eax+00000308h]
00819E90: push eax
00819E91: lea eax, var_28
00819E94: push eax
00819E95: call 00410A84h ; Set (object)
00819E9A: push eax
00819E9B: lea eax, var_3C
00819E9E: push eax
00819E9F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00819EA4: add esp, 00000010h
00819EA7: push eax
00819EA8: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00819EAD: push 00000001h
00819EAF: pop ecx
00819EB0: sub ecx, eax
00819EB2: jo 0081A171h
00819EB8: mov var_44, ecx
00819EBB: mov var_4C, 00000003h
00819EC2: push 00000010h
00819EC4: pop eax
00819EC5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00819ECA: lea esi, var_4C
00819ECD: mov edi, esp
00819ECF: movsd 
00819ED0: movsd 
00819ED1: movsd 
00819ED2: movsd 
00819ED3: push 00000011h
00819ED5: mov eax, [ebp+08h]
00819ED8: mov eax, [eax]
00819EDA: push [ebp+08h]
00819EDD: call [eax+00000308h]
00819EE3: push eax
00819EE4: lea eax, var_2C
00819EE7: push eax
00819EE8: call 00410A84h ; Set (object)
00819EED: push eax
00819EEE: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00819EF3: lea eax, var_2C
00819EF6: push eax
00819EF7: lea eax, var_28
00819EFA: push eax
00819EFB: push 00000002h
00819EFD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00819F02: add esp, 0000000Ch
00819F05: lea ecx, var_3C
00819F08: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00819F0D: mov var_04, 00000005h
00819F14: or var_44, FFFFFFFFh
00819F18: mov var_4C, 0000000Bh
00819F1F: push 00000010h
00819F21: pop eax
00819F22: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00819F27: lea esi, var_4C
00819F2A: mov edi, esp
00819F2C: movsd 
00819F2D: movsd 
00819F2E: movsd 
00819F2F: movsd 
00819F30: push 0000000Fh
00819F32: mov eax, [ebp+08h]
00819F35: mov eax, [eax]
00819F37: push [ebp+08h]
00819F3A: call [eax+00000308h]
00819F40: push eax
00819F41: lea eax, var_28
00819F44: push eax
00819F45: call 00410A84h ; Set (object)
00819F4A: push eax
00819F4B: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00819F50: lea ecx, var_28
00819F53: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00819F58: mov var_04, 00000006h
00819F5F: and var_44, 00000000h
00819F63: mov var_4C, 0000000Bh
00819F6A: push 00000010h
00819F6C: pop eax
00819F6D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00819F72: lea esi, var_4C
00819F75: mov edi, esp
00819F77: movsd 
00819F78: movsd 
00819F79: movsd 
00819F7A: movsd 
00819F7B: push 0000000Fh
00819F7D: mov eax, [ebp+08h]
00819F80: mov eax, [eax]
00819F82: push [ebp+08h]
00819F85: call [eax+00000308h]
00819F8B: push eax
00819F8C: lea eax, var_28
00819F8F: push eax
00819F90: call 00410A84h ; Set (object)
00819F95: push eax
00819F96: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00819F9B: lea ecx, var_28
00819F9E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00819FA3: jmp 0081A120h
00819FA8: mov var_04, 00000008h
00819FAF: and var_44, 00000000h
00819FB3: mov var_4C, 00000003h
00819FBA: push 00000010h
00819FBC: pop eax
00819FBD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00819FC2: lea esi, var_4C
00819FC5: mov edi, esp
00819FC7: movsd 
00819FC8: movsd 
00819FC9: movsd 
00819FCA: movsd 
00819FCB: push 00000011h
00819FCD: mov eax, [ebp+08h]
00819FD0: mov eax, [eax]
00819FD2: push [ebp+08h]
00819FD5: call [eax+00000308h]
00819FDB: push eax
00819FDC: lea eax, var_28
00819FDF: push eax
00819FE0: call 00410A84h ; Set (object)
00819FE5: push eax
00819FE6: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00819FEB: lea ecx, var_28
00819FEE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00819FF3: mov var_04, 00000009h
00819FFA: lea eax, var_60
00819FFD: push eax
00819FFE: mov eax, var_24
0081A001: mov eax, [eax]
0081A003: push var_24
0081A006: call [eax+34h]
0081A009: fclex 
0081A00B: mov var_64, eax
0081A00E: cmp var_64, 00000000h
0081A012: jnl 81A02Eh
0081A014: push 00000034h
0081A016: push 00450154h
0081A01B: push var_24
0081A01E: push var_64
0081A021: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081A026: mov var_00000084, eax
0081A02C: jmp 81A035h
0081A02E: and var_00000084, 00000000h
0081A035: mov ecx, var_60
0081A038: sub ecx, 00000001h
0081A03B: jo 0081A171h
0081A041: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0081A046: mov var_44, ax
0081A04A: mov var_4C, 00000002h
0081A051: push 00000010h
0081A053: pop eax
0081A054: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081A059: lea esi, var_4C
0081A05C: mov edi, esp
0081A05E: movsd 
0081A05F: movsd 
0081A060: movsd 
0081A061: movsd 
0081A062: push 00000010h
0081A064: mov eax, [ebp+08h]
0081A067: mov eax, [eax]
0081A069: push [ebp+08h]
0081A06C: call [eax+00000308h]
0081A072: push eax
0081A073: lea eax, var_28
0081A076: push eax
0081A077: call 00410A84h ; Set (object)
0081A07C: push eax
0081A07D: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081A082: lea ecx, var_28
0081A085: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081A08A: mov var_04, 0000000Ah
0081A091: or var_44, FFFFFFFFh
0081A095: mov var_4C, 0000000Bh
0081A09C: push 00000010h
0081A09E: pop eax
0081A09F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081A0A4: lea esi, var_4C
0081A0A7: mov edi, esp
0081A0A9: movsd 
0081A0AA: movsd 
0081A0AB: movsd 
0081A0AC: movsd 
0081A0AD: push 0000000Fh
0081A0AF: mov eax, [ebp+08h]
0081A0B2: mov eax, [eax]
0081A0B4: push [ebp+08h]
0081A0B7: call [eax+00000308h]
0081A0BD: push eax
0081A0BE: lea eax, var_28
0081A0C1: push eax
0081A0C2: call 00410A84h ; Set (object)
0081A0C7: push eax
0081A0C8: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081A0CD: lea ecx, var_28
0081A0D0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081A0D5: mov var_04, 0000000Bh
0081A0DC: and var_44, 00000000h
0081A0E0: mov var_4C, 0000000Bh
0081A0E7: push 00000010h
0081A0E9: pop eax
0081A0EA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081A0EF: lea esi, var_4C
0081A0F2: mov edi, esp
0081A0F4: movsd 
0081A0F5: movsd 
0081A0F6: movsd 
0081A0F7: movsd 
0081A0F8: push 0000000Fh
0081A0FA: mov eax, [ebp+08h]
0081A0FD: mov eax, [eax]
0081A0FF: push [ebp+08h]
0081A102: call [eax+00000308h]
0081A108: push eax
0081A109: lea eax, var_28
0081A10C: push eax
0081A10D: call 00410A84h ; Set (object)
0081A112: push eax
0081A113: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081A118: lea ecx, var_28
0081A11B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081A120: mov var_10, 00000000h
0081A127: push 0081A152h
0081A12C: jmp 81A149h
0081A12E: lea eax, var_2C
0081A131: push eax
0081A132: lea eax, var_28
0081A135: push eax
0081A136: push 00000002h
0081A138: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081A13D: add esp, 0000000Ch
0081A140: lea ecx, var_3C
0081A143: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081A148: ret 
End Sub

Private sub lstServices__81A176
0081A176: push ebp
0081A177: mov ebp, esp
0081A179: sub esp, 0000000Ch
0081A17C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081A181: mov eax, fs:[00h]
0081A187: push eax
0081A188: mov fs:[00000000h], esp
0081A18F: push 00000054h
0081A191: pop eax
0081A192: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081A197: push ebx
0081A198: push esi
0081A199: push edi
0081A19A: mov var_0C, esp
0081A19D: mov var_08, 0040AE08h
0081A1A4: mov eax, [ebp+08h]
0081A1A7: and eax, 00000001h
0081A1AA: mov var_04, eax
0081A1AD: mov eax, [ebp+08h]
0081A1B0: and al, FEh
0081A1B2: mov [ebp+08h], eax
0081A1B5: mov eax, [ebp+08h]
0081A1B8: mov eax, [eax]
0081A1BA: push [ebp+08h]
0081A1BD: call [eax+04h]
0081A1C0: mov eax, [ebp+0Ch]
0081A1C3: cmp word ptr [eax], 0002h
0081A1C7: jnz 0081A2A1h
0081A1CD: mov var_50, 80020004h
0081A1D4: mov var_58, 0000000Ah
0081A1DB: mov var_40, 80020004h
0081A1E2: mov var_48, 0000000Ah
0081A1E9: mov var_30, 80020004h
0081A1F0: mov var_38, 0000000Ah
0081A1F7: mov var_20, 80020004h
0081A1FE: mov var_28, 0000000Ah
0081A205: push 00000010h
0081A207: pop eax
0081A208: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081A20D: lea esi, var_58
0081A210: mov edi, esp
0081A212: movsd 
0081A213: movsd 
0081A214: movsd 
0081A215: movsd 
0081A216: push 00000010h
0081A218: pop eax
0081A219: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081A21E: lea esi, var_48
0081A221: mov edi, esp
0081A223: movsd 
0081A224: movsd 
0081A225: movsd 
0081A226: movsd 
0081A227: push 00000010h
0081A229: pop eax
0081A22A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081A22F: lea esi, var_38
0081A232: mov edi, esp
0081A234: movsd 
0081A235: movsd 
0081A236: movsd 
0081A237: movsd 
0081A238: push 00000010h
0081A23A: pop eax
0081A23B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081A240: lea esi, var_28
0081A243: mov edi, esp
0081A245: movsd 
0081A246: movsd 
0081A247: movsd 
0081A248: movsd 
0081A249: mov eax, [ebp+08h]
0081A24C: mov eax, [eax]
0081A24E: push [ebp+08h]
0081A251: call [eax+00000300h]
0081A257: push eax
0081A258: lea eax, var_18
0081A25B: push eax
0081A25C: call 00410A84h ; Set (object)
0081A261: push eax
0081A262: mov eax, [ebp+08h]
0081A265: mov eax, [eax]
0081A267: push [ebp+08h]
0081A26A: call [eax+000002BCh]
0081A270: fclex 
0081A272: mov var_5C, eax
0081A275: cmp var_5C, 00000000h
0081A279: jnl 81A295h
0081A27B: push 000002BCh
0081A280: push 00445104h
0081A285: push [ebp+08h]
0081A288: push var_5C
0081A28B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081A290: mov var_68, eax
0081A293: jmp 81A299h
0081A295: and var_68, 00000000h
0081A299: lea ecx, var_18
0081A29C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081A2A1: mov var_04, 00000000h
0081A2A8: push 0081A2B9h
0081A2AD: jmp 81A2B8h
0081A2AF: lea ecx, var_18
0081A2B2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081A2B7: ret 
End Sub

Private sub Timer1__81ADED
0081ADED: push ebp
0081ADEE: mov ebp, esp
0081ADF0: sub esp, 0000000Ch
0081ADF3: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081ADF8: mov eax, fs:[00h]
0081ADFE: push eax
0081ADFF: mov fs:[00000000h], esp
0081AE06: push 0000003Ch
0081AE08: pop eax
0081AE09: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081AE0E: push ebx
0081AE0F: push esi
0081AE10: push edi
0081AE11: mov var_0C, esp
0081AE14: mov var_08, 0040AE28h
0081AE1B: mov eax, [ebp+08h]
0081AE1E: and eax, 00000001h
0081AE21: mov var_04, eax
0081AE24: mov eax, [ebp+08h]
0081AE27: and al, FEh
0081AE29: mov [ebp+08h], eax
0081AE2C: mov eax, [ebp+08h]
0081AE2F: mov eax, [eax]
0081AE31: push [ebp+08h]
0081AE34: call [eax+04h]
0081AE37: cmp [008F2010h], 00000000h
0081AE3E: jnz 81AE58h
0081AE40: push 008F2010h
0081AE45: push 00433984h
0081AE4A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0081AE4F: mov var_40, 008F2010h
0081AE56: jmp 81AE5Fh
0081AE58: mov var_40, 008F2010h
0081AE5F: mov eax, var_40
0081AE62: mov eax, [eax]
0081AE64: mov ecx, var_40
0081AE67: mov ecx, [ecx]
0081AE69: mov ecx, [ecx]
0081AE6B: push eax
0081AE6C: call [ecx+00000380h]
0081AE72: push eax
0081AE73: lea eax, var_18
0081AE76: push eax
0081AE77: call 00410A84h ; Set (object)
0081AE7C: mov var_24, eax
0081AE7F: lea eax, var_1C
0081AE82: push eax
0081AE83: push 00000003h
0081AE85: mov eax, var_24
0081AE88: mov eax, [eax]
0081AE8A: push var_24
0081AE8D: call [eax+40h]
0081AE90: fclex 
0081AE92: mov var_28, eax
0081AE95: cmp var_28, 00000000h
0081AE99: jnl 81AEB2h
0081AE9B: push 00000040h
0081AE9D: push 00440DE8h
0081AEA2: push var_24
0081AEA5: push var_28
0081AEA8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081AEAD: mov var_44, eax
0081AEB0: jmp 81AEB6h
0081AEB2: and var_44, 00000000h
0081AEB6: mov eax, var_1C
0081AEB9: mov var_2C, eax
0081AEBC: lea eax, var_20
0081AEBF: push eax
0081AEC0: mov eax, var_2C
0081AEC3: mov eax, [eax]
0081AEC5: push var_2C
0081AEC8: call [eax+000000E0h]
0081AECE: fclex 
0081AED0: mov var_30, eax
0081AED3: cmp var_30, 00000000h
0081AED7: jnl 81AEF3h
0081AED9: push 000000E0h
0081AEDE: push 00440DF8h
0081AEE3: push var_2C
0081AEE6: push var_30
0081AEE9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081AEEE: mov var_48, eax
0081AEF1: jmp 81AEF7h
0081AEF3: and var_48, 00000000h
0081AEF7: xor eax, eax
0081AEF9: cmp word ptr var_20, 0001h
0081AEFE: setz al
0081AF01: neg eax
0081AF03: mov var_34, ax
0081AF07: lea eax, var_1C
0081AF0A: push eax
0081AF0B: lea eax, var_18
0081AF0E: push eax
0081AF0F: push 00000002h
0081AF11: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081AF16: add esp, 0000000Ch
0081AF19: movsx eax, word ptr var_34
0081AF1D: test eax, eax
0081AF1F: jz 81AF5Fh
0081AF21: and word ptr var_20, 0000h
0081AF26: lea eax, var_20
0081AF29: push eax
0081AF2A: mov eax, [ebp+08h]
0081AF2D: mov eax, [eax]
0081AF2F: push [ebp+08h]
0081AF32: call [eax+00000708h]
0081AF38: mov var_24, eax
0081AF3B: cmp var_24, 00000000h
0081AF3F: jnl 81AF5Bh
0081AF41: push 00000708h
0081AF46: push 00440390h
0081AF4B: push [ebp+08h]
0081AF4E: push var_24
0081AF51: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081AF56: mov var_4C, eax
0081AF59: jmp 81AF5Fh
0081AF5B: and var_4C, 00000000h
0081AF5F: mov eax, [ebp+08h]
0081AF62: mov eax, [eax]
0081AF64: push [ebp+08h]
0081AF67: call [eax+000002FCh]
0081AF6D: push eax
0081AF6E: lea eax, var_18
0081AF71: push eax
0081AF72: call 00410A84h ; Set (object)
0081AF77: mov var_24, eax
0081AF7A: push 00000000h
0081AF7C: mov eax, var_24
0081AF7F: mov eax, [eax]
0081AF81: push var_24
0081AF84: call [eax+5Ch]
0081AF87: fclex 
0081AF89: mov var_28, eax
0081AF8C: cmp var_28, 00000000h
0081AF90: jnl 81AFA9h
0081AF92: push 0000005Ch
0081AF94: push 00447A20h
0081AF99: push var_24
0081AF9C: push var_28
0081AF9F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081AFA4: mov var_50, eax
0081AFA7: jmp 81AFADh
0081AFA9: and var_50, 00000000h
0081AFAD: lea ecx, var_18
0081AFB0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081AFB5: mov var_04, 00000000h
0081AFBC: push 0081AFD7h
0081AFC1: jmp 81AFD6h
0081AFC3: lea eax, var_1C
0081AFC6: push eax
0081AFC7: lea eax, var_18
0081AFCA: push eax
0081AFCB: push 00000002h
0081AFCD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081AFD2: add esp, 0000000Ch
0081AFD5: ret 
End Sub

Private sub Form__819AD1
00819AD1: push ebp
00819AD2: mov ebp, esp
00819AD4: sub esp, 00000018h
00819AD7: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00819ADC: mov eax, fs:[00h]
00819AE2: push eax
00819AE3: mov fs:[00000000h], esp
00819AEA: mov eax, 000000B0h
00819AEF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00819AF4: push ebx
00819AF5: push esi
00819AF6: push edi
00819AF7: mov var_18, esp
00819AFA: mov var_14, 0040AD78h
00819B01: mov eax, [ebp+08h]
00819B04: and eax, 00000001h
00819B07: mov var_10, eax
00819B0A: mov eax, [ebp+08h]
00819B0D: and al, FEh
00819B0F: mov [ebp+08h], eax
00819B12: mov var_0C, 00000000h
00819B19: mov eax, [ebp+08h]
00819B1C: mov eax, [eax]
00819B1E: push [ebp+08h]
00819B21: call [eax+04h]
00819B24: mov var_04, 00000001h
00819B2B: mov var_04, 00000002h
00819B32: push FFFFFFFFh
00819B34: call 00410A60h ; On Error ...
00819B39: mov var_04, 00000003h
00819B40: fldz 
00819B42: fstp real4 ptr var_2C
00819B45: mov var_34, 00000004h
00819B4C: and var_4C, 00000000h
00819B50: mov var_54, 00000002h
00819B57: lea eax, var_000000A8
00819B5D: push eax
00819B5E: mov eax, [ebp+08h]
00819B61: mov eax, [eax]
00819B63: push [ebp+08h]
00819B66: call [eax+00000080h]
00819B6C: fclex 
00819B6E: mov var_000000B0, eax
00819B74: cmp var_000000B0, 00000000h
00819B7B: jnl 819B9Dh
00819B7D: push 00000080h
00819B82: push 00445104h
00819B87: push [ebp+08h]
00819B8A: push var_000000B0
00819B90: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00819B95: mov var_000000CC, eax
00819B9B: jmp 819BA4h
00819B9D: and var_000000CC, 00000000h
00819BA4: fld real4 ptr var_000000A8
00819BAA: fsub real4 ptr [00402BB0h]
00819BB0: fstp real4 ptr var_6C
00819BB3: fstsw ax
00819BB5: test al, 0Dh
00819BB7: jnz 00819CE6h
00819BBD: mov var_74, 00000004h
00819BC4: lea eax, var_000000AC
00819BCA: push eax
00819BCB: mov eax, [ebp+08h]
00819BCE: mov eax, [eax]
00819BD0: push [ebp+08h]
00819BD3: call [eax+00000088h]
00819BD9: fclex 
00819BDB: mov var_000000B4, eax
00819BE1: cmp var_000000B4, 00000000h
00819BE8: jnl 819C0Ah
00819BEA: push 00000088h
00819BEF: push 00445104h
00819BF4: push [ebp+08h]
00819BF7: push var_000000B4
00819BFD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00819C02: mov var_000000D0, eax
00819C08: jmp 819C11h
00819C0A: and var_000000D0, 00000000h
00819C11: fld real4 ptr var_000000AC
00819C17: fsub real4 ptr [00402B54h]
00819C1D: fstp real4 ptr var_0000008C
00819C23: fstsw ax
00819C25: test al, 0Dh
00819C27: jnz 00819CE6h
00819C2D: mov var_00000094, 00000004h
00819C37: push 00000010h
00819C39: pop eax
00819C3A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00819C3F: lea esi, var_34
00819C42: mov edi, esp
00819C44: movsd 
00819C45: movsd 
00819C46: movsd 
00819C47: movsd 
00819C48: push 00000010h
00819C4A: pop eax
00819C4B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00819C50: lea esi, var_54
00819C53: mov edi, esp
00819C55: movsd 
00819C56: movsd 
00819C57: movsd 
00819C58: movsd 
00819C59: push 00000010h
00819C5B: pop eax
00819C5C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00819C61: lea esi, var_74
00819C64: mov edi, esp
00819C66: movsd 
00819C67: movsd 
00819C68: movsd 
00819C69: movsd 
00819C6A: push 00000010h
00819C6C: pop eax
00819C6D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00819C72: lea esi, var_00000094
00819C78: mov edi, esp
00819C7A: movsd 
00819C7B: movsd 
00819C7C: movsd 
00819C7D: movsd 
00819C7E: push 00000004h
00819C80: push 80011002h
00819C85: mov eax, [ebp+08h]
00819C88: mov eax, [eax]
00819C8A: push [ebp+08h]
00819C8D: call [eax+00000308h]
00819C93: push eax
00819C94: lea eax, var_24
00819C97: push eax
00819C98: call 00410A84h ; Set (object)
00819C9D: push eax
00819C9E: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00819CA3: add esp, 0000004Ch
00819CA6: lea ecx, var_24
00819CA9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00819CAE: mov var_10, 00000000h
00819CB5: wait 
00819CB6: push 00819CC7h
00819CBB: jmp 819CC6h
00819CBD: lea ecx, var_24
00819CC0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00819CC5: ret 
End Sub

