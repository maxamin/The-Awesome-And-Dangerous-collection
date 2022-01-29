VERSION 5.00
Begin VB.Form frmNetwork
  Caption = "Network statistics"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmNetwork.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 13725
  ClientHeight = 6660
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer Timer1
    Interval = 800
    Left = 12240
    Top = 0
  End
  Begin MSComctlLib.ListView lstNetwork
    Left = 0
    Top = 0
    Width = 13695
    Height = 6615
    TabIndex = 0
  End
  Begin VB.Menu mnuNetworkMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuNetwork
      Index = 0
      Caption = "Refresh"
    End
  End
End

Attribute VB_Name = "frmNetwork"


Private sub Form__81AFF6
0081AFF6: push ebp
0081AFF7: mov ebp, esp
0081AFF9: sub esp, 00000018h
0081AFFC: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081B001: mov eax, fs:[00h]
0081B007: push eax
0081B008: mov fs:[00000000h], esp
0081B00F: mov eax, 000000B0h
0081B014: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B019: push ebx
0081B01A: push esi
0081B01B: push edi
0081B01C: mov var_18, esp
0081B01F: mov var_14, 0040AE38h
0081B026: mov eax, [ebp+08h]
0081B029: and eax, 00000001h
0081B02C: mov var_10, eax
0081B02F: mov eax, [ebp+08h]
0081B032: and al, FEh
0081B034: mov [ebp+08h], eax
0081B037: mov var_0C, 00000000h
0081B03E: mov eax, [ebp+08h]
0081B041: mov eax, [eax]
0081B043: push [ebp+08h]
0081B046: call [eax+04h]
0081B049: mov var_04, 00000001h
0081B050: mov var_04, 00000002h
0081B057: push FFFFFFFFh
0081B059: call 00410A60h ; On Error ...
0081B05E: mov var_04, 00000003h
0081B065: fldz 
0081B067: fstp real4 ptr var_2C
0081B06A: mov var_34, 00000004h
0081B071: and var_4C, 00000000h
0081B075: mov var_54, 00000002h
0081B07C: lea eax, var_000000A8
0081B082: push eax
0081B083: mov eax, [ebp+08h]
0081B086: mov eax, [eax]
0081B088: push [ebp+08h]
0081B08B: call [eax+00000080h]
0081B091: fclex 
0081B093: mov var_000000B0, eax
0081B099: cmp var_000000B0, 00000000h
0081B0A0: jnl 81B0C2h
0081B0A2: push 00000080h
0081B0A7: push 00444B28h
0081B0AC: push [ebp+08h]
0081B0AF: push var_000000B0
0081B0B5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081B0BA: mov var_000000CC, eax
0081B0C0: jmp 81B0C9h
0081B0C2: and var_000000CC, 00000000h
0081B0C9: fld real4 ptr var_000000A8
0081B0CF: fsub real4 ptr [00402BB0h]
0081B0D5: fstp real4 ptr var_6C
0081B0D8: fstsw ax
0081B0DA: test al, 0Dh
0081B0DC: jnz 0081B20Bh
0081B0E2: mov var_74, 00000004h
0081B0E9: lea eax, var_000000AC
0081B0EF: push eax
0081B0F0: mov eax, [ebp+08h]
0081B0F3: mov eax, [eax]
0081B0F5: push [ebp+08h]
0081B0F8: call [eax+00000088h]
0081B0FE: fclex 
0081B100: mov var_000000B4, eax
0081B106: cmp var_000000B4, 00000000h
0081B10D: jnl 81B12Fh
0081B10F: push 00000088h
0081B114: push 00444B28h
0081B119: push [ebp+08h]
0081B11C: push var_000000B4
0081B122: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081B127: mov var_000000D0, eax
0081B12D: jmp 81B136h
0081B12F: and var_000000D0, 00000000h
0081B136: fld real4 ptr var_000000AC
0081B13C: fsub real4 ptr [00402B54h]
0081B142: fstp real4 ptr var_0000008C
0081B148: fstsw ax
0081B14A: test al, 0Dh
0081B14C: jnz 0081B20Bh
0081B152: mov var_00000094, 00000004h
0081B15C: push 00000010h
0081B15E: pop eax
0081B15F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B164: lea esi, var_34
0081B167: mov edi, esp
0081B169: movsd 
0081B16A: movsd 
0081B16B: movsd 
0081B16C: movsd 
0081B16D: push 00000010h
0081B16F: pop eax
0081B170: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B175: lea esi, var_54
0081B178: mov edi, esp
0081B17A: movsd 
0081B17B: movsd 
0081B17C: movsd 
0081B17D: movsd 
0081B17E: push 00000010h
0081B180: pop eax
0081B181: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B186: lea esi, var_74
0081B189: mov edi, esp
0081B18B: movsd 
0081B18C: movsd 
0081B18D: movsd 
0081B18E: movsd 
0081B18F: push 00000010h
0081B191: pop eax
0081B192: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B197: lea esi, var_00000094
0081B19D: mov edi, esp
0081B19F: movsd 
0081B1A0: movsd 
0081B1A1: movsd 
0081B1A2: movsd 
0081B1A3: push 00000004h
0081B1A5: push 80011002h
0081B1AA: mov eax, [ebp+08h]
0081B1AD: mov eax, [eax]
0081B1AF: push [ebp+08h]
0081B1B2: call [eax+00000308h]
0081B1B8: push eax
0081B1B9: lea eax, var_24
0081B1BC: push eax
0081B1BD: call 00410A84h ; Set (object)
0081B1C2: push eax
0081B1C3: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0081B1C8: add esp, 0000004Ch
0081B1CB: lea ecx, var_24
0081B1CE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081B1D3: mov var_10, 00000000h
0081B1DA: wait 
0081B1DB: push 0081B1ECh
0081B1E0: jmp 81B1EBh
0081B1E2: lea ecx, var_24
0081B1E5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081B1EA: ret 
End Sub

Private sub lstNetwork__81B210
0081B210: push ebp
0081B211: mov ebp, esp
0081B213: sub esp, 0000000Ch
0081B216: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081B21B: mov eax, fs:[00h]
0081B221: push eax
0081B222: mov fs:[00000000h], esp
0081B229: push 00000008h
0081B22B: pop eax
0081B22C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B231: push ebx
0081B232: push esi
0081B233: push edi
0081B234: mov var_0C, esp
0081B237: mov var_08, 0040AE68h
0081B23E: mov eax, [ebp+08h]
0081B241: and eax, 00000001h
0081B244: mov var_04, eax
0081B247: mov eax, [ebp+08h]
0081B24A: and al, FEh
0081B24C: mov [ebp+08h], eax
0081B24F: mov eax, [ebp+08h]
0081B252: mov eax, [eax]
0081B254: push [ebp+08h]
0081B257: call [eax+04h]
0081B25A: mov eax, [ebp+0Ch]
0081B25D: or word ptr [eax], FFFFh
0081B261: mov var_04, 00000000h
0081B268: mov eax, [ebp+08h]
0081B26B: mov eax, [eax]
0081B26D: push [ebp+08h]
0081B270: call [eax+08h]
0081B273: mov eax, var_04
0081B276: mov ecx, var_14
0081B279: mov fs:[00000000h], ecx
0081B280: pop edi
0081B281: pop esi
0081B282: pop ebx
0081B283: leave 
0081B284: retn 0008h
End Sub

Private sub lstNetwork__81B287
0081B287: push ebp
0081B288: mov ebp, esp
0081B28A: sub esp, 00000018h
0081B28D: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081B292: mov eax, fs:[00h]
0081B298: push eax
0081B299: mov fs:[00000000h], esp
0081B2A0: mov eax, 00000080h
0081B2A5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B2AA: push ebx
0081B2AB: push esi
0081B2AC: push edi
0081B2AD: mov var_18, esp
0081B2B0: mov var_14, 0040AE70h
0081B2B7: mov eax, [ebp+08h]
0081B2BA: and eax, 00000001h
0081B2BD: mov var_10, eax
0081B2C0: mov eax, [ebp+08h]
0081B2C3: and al, FEh
0081B2C5: mov [ebp+08h], eax
0081B2C8: mov var_0C, 00000000h
0081B2CF: mov eax, [ebp+08h]
0081B2D2: mov eax, [eax]
0081B2D4: push [ebp+08h]
0081B2D7: call [eax+04h]
0081B2DA: mov var_04, 00000001h
0081B2E1: push [ebp+0Ch]
0081B2E4: lea eax, var_24
0081B2E7: push eax
0081B2E8: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0081B2ED: mov var_04, 00000002h
0081B2F4: push FFFFFFFFh
0081B2F6: call 00410A60h ; On Error ...
0081B2FB: mov var_04, 00000003h
0081B302: lea eax, var_60
0081B305: push eax
0081B306: mov eax, var_24
0081B309: mov eax, [eax]
0081B30B: push var_24
0081B30E: call [eax+34h]
0081B311: fclex 
0081B313: mov var_68, eax
0081B316: cmp var_68, 00000000h
0081B31A: jnl 81B336h
0081B31C: push 00000034h
0081B31E: push 00450154h
0081B323: push var_24
0081B326: push var_68
0081B329: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081B32E: mov var_0000008C, eax
0081B334: jmp 81B33Dh
0081B336: and var_0000008C, 00000000h
0081B33D: lea eax, var_64
0081B340: push eax
0081B341: mov eax, var_24
0081B344: mov eax, [eax]
0081B346: push var_24
0081B349: call [eax+34h]
0081B34C: fclex 
0081B34E: mov var_6C, eax
0081B351: cmp var_6C, 00000000h
0081B355: jnl 81B371h
0081B357: push 00000034h
0081B359: push 00450154h
0081B35E: push var_24
0081B361: push var_6C
0081B364: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081B369: mov var_00000090, eax
0081B36F: jmp 81B378h
0081B371: and var_00000090, 00000000h
0081B378: xor eax, eax
0081B37A: cmp var_60, 00000002h
0081B37E: setnz al
0081B381: xor ecx, ecx
0081B383: cmp var_64, 00000004h
0081B387: setnz cl
0081B38A: and eax, ecx
0081B38C: test eax, eax
0081B38E: jnz 0081B511h
0081B394: mov var_04, 00000004h
0081B39B: cmp word ptr [008F2404h], FFFFh
0081B3A3: jnz 0081B45Dh
0081B3A9: mov var_04, 00000005h
0081B3B0: mov eax, [ebp+08h]
0081B3B3: mov eax, [eax]
0081B3B5: push [ebp+08h]
0081B3B8: call [eax+00000308h]
0081B3BE: push eax
0081B3BF: lea eax, var_2C
0081B3C2: push eax
0081B3C3: call 00410A84h ; Set (object)
0081B3C8: lea eax, var_60
0081B3CB: push eax
0081B3CC: mov eax, var_24
0081B3CF: mov eax, [eax]
0081B3D1: push var_24
0081B3D4: call [eax+34h]
0081B3D7: fclex 
0081B3D9: mov var_68, eax
0081B3DC: cmp var_68, 00000000h
0081B3E0: jnl 81B3FCh
0081B3E2: push 00000034h
0081B3E4: push 00450154h
0081B3E9: push var_24
0081B3EC: push var_68
0081B3EF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081B3F4: mov var_00000094, eax
0081B3FA: jmp 81B403h
0081B3FC: and var_00000094, 00000000h
0081B403: mov eax, var_2C
0081B406: mov var_00000084, eax
0081B40C: and var_2C, 00000000h
0081B410: push var_00000084
0081B416: lea eax, var_28
0081B419: push eax
0081B41A: call 00410A84h ; Set (object)
0081B41F: push 00000000h
0081B421: mov eax, var_60
0081B424: sub eax, 00000001h
0081B427: jo 0081B8B4h
0081B42D: push eax
0081B42E: lea eax, var_28
0081B431: push eax
0081B432: call 007BB47Fh
0081B437: lea eax, var_2C
0081B43A: push eax
0081B43B: lea eax, var_28
0081B43E: push eax
0081B43F: push 00000002h
0081B441: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081B446: add esp, 0000000Ch
0081B449: mov var_04, 00000006h
0081B450: and word ptr [008F2404h], 0000h
0081B458: jmp 0081B50Ch
0081B45D: mov var_04, 00000008h
0081B464: mov eax, [ebp+08h]
0081B467: mov eax, [eax]
0081B469: push [ebp+08h]
0081B46C: call [eax+00000308h]
0081B472: push eax
0081B473: lea eax, var_2C
0081B476: push eax
0081B477: call 00410A84h ; Set (object)
0081B47C: lea eax, var_60
0081B47F: push eax
0081B480: mov eax, var_24
0081B483: mov eax, [eax]
0081B485: push var_24
0081B488: call [eax+34h]
0081B48B: fclex 
0081B48D: mov var_68, eax
0081B490: cmp var_68, 00000000h
0081B494: jnl 81B4B0h
0081B496: push 00000034h
0081B498: push 00450154h
0081B49D: push var_24
0081B4A0: push var_68
0081B4A3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081B4A8: mov var_00000098, eax
0081B4AE: jmp 81B4B7h
0081B4B0: and var_00000098, 00000000h
0081B4B7: mov eax, var_2C
0081B4BA: mov var_00000088, eax
0081B4C0: and var_2C, 00000000h
0081B4C4: push var_00000088
0081B4CA: lea eax, var_28
0081B4CD: push eax
0081B4CE: call 00410A84h ; Set (object)
0081B4D3: push 00000001h
0081B4D5: mov eax, var_60
0081B4D8: sub eax, 00000001h
0081B4DB: jo 0081B8B4h
0081B4E1: push eax
0081B4E2: lea eax, var_28
0081B4E5: push eax
0081B4E6: call 007BB47Fh
0081B4EB: lea eax, var_2C
0081B4EE: push eax
0081B4EF: lea eax, var_28
0081B4F2: push eax
0081B4F3: push 00000002h
0081B4F5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081B4FA: add esp, 0000000Ch
0081B4FD: mov var_04, 00000009h
0081B504: or word ptr [008F2404h], FFFFh
0081B50C: jmp 0081B863h
0081B511: mov var_04, 0000000Dh
0081B518: lea eax, var_60
0081B51B: push eax
0081B51C: mov eax, var_24
0081B51F: mov eax, [eax]
0081B521: push var_24
0081B524: call [eax+34h]
0081B527: fclex 
0081B529: mov var_68, eax
0081B52C: cmp var_68, 00000000h
0081B530: jnl 81B54Ch
0081B532: push 00000034h
0081B534: push 00450154h
0081B539: push var_24
0081B53C: push var_68
0081B53F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081B544: mov var_0000009C, eax
0081B54A: jmp 81B553h
0081B54C: and var_0000009C, 00000000h
0081B553: mov esi, var_60
0081B556: sub esi, 00000001h
0081B559: jo 0081B8B4h
0081B55F: push 00000000h
0081B561: push 00000010h
0081B563: mov eax, [ebp+08h]
0081B566: mov eax, [eax]
0081B568: push [ebp+08h]
0081B56B: call [eax+00000308h]
0081B571: push eax
0081B572: lea eax, var_28
0081B575: push eax
0081B576: call 00410A84h ; Set (object)
0081B57B: push eax
0081B57C: lea eax, var_3C
0081B57F: push eax
0081B580: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081B585: add esp, 00000010h
0081B588: push eax
0081B589: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0081B58E: movsx eax, ax
0081B591: sub esi, eax
0081B593: neg esi
0081B595: sbb esi, esi
0081B597: inc esi
0081B598: neg esi
0081B59A: mov var_6C, si
0081B59E: lea ecx, var_28
0081B5A1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081B5A6: lea ecx, var_3C
0081B5A9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081B5AE: movsx eax, word ptr var_6C
0081B5B2: test eax, eax
0081B5B4: jz 0081B6EBh
0081B5BA: mov var_04, 0000000Eh
0081B5C1: push 00000000h
0081B5C3: push 00000011h
0081B5C5: mov eax, [ebp+08h]
0081B5C8: mov eax, [eax]
0081B5CA: push [ebp+08h]
0081B5CD: call [eax+00000308h]
0081B5D3: push eax
0081B5D4: lea eax, var_28
0081B5D7: push eax
0081B5D8: call 00410A84h ; Set (object)
0081B5DD: push eax
0081B5DE: lea eax, var_3C
0081B5E1: push eax
0081B5E2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081B5E7: add esp, 00000010h
0081B5EA: push eax
0081B5EB: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0081B5F0: push 00000001h
0081B5F2: pop ecx
0081B5F3: sub ecx, eax
0081B5F5: jo 0081B8B4h
0081B5FB: mov var_44, ecx
0081B5FE: mov var_4C, 00000003h
0081B605: push 00000010h
0081B607: pop eax
0081B608: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B60D: lea esi, var_4C
0081B610: mov edi, esp
0081B612: movsd 
0081B613: movsd 
0081B614: movsd 
0081B615: movsd 
0081B616: push 00000011h
0081B618: mov eax, [ebp+08h]
0081B61B: mov eax, [eax]
0081B61D: push [ebp+08h]
0081B620: call [eax+00000308h]
0081B626: push eax
0081B627: lea eax, var_2C
0081B62A: push eax
0081B62B: call 00410A84h ; Set (object)
0081B630: push eax
0081B631: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081B636: lea eax, var_2C
0081B639: push eax
0081B63A: lea eax, var_28
0081B63D: push eax
0081B63E: push 00000002h
0081B640: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081B645: add esp, 0000000Ch
0081B648: lea ecx, var_3C
0081B64B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081B650: mov var_04, 0000000Fh
0081B657: or var_44, FFFFFFFFh
0081B65B: mov var_4C, 0000000Bh
0081B662: push 00000010h
0081B664: pop eax
0081B665: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B66A: lea esi, var_4C
0081B66D: mov edi, esp
0081B66F: movsd 
0081B670: movsd 
0081B671: movsd 
0081B672: movsd 
0081B673: push 0000000Fh
0081B675: mov eax, [ebp+08h]
0081B678: mov eax, [eax]
0081B67A: push [ebp+08h]
0081B67D: call [eax+00000308h]
0081B683: push eax
0081B684: lea eax, var_28
0081B687: push eax
0081B688: call 00410A84h ; Set (object)
0081B68D: push eax
0081B68E: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081B693: lea ecx, var_28
0081B696: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081B69B: mov var_04, 00000010h
0081B6A2: and var_44, 00000000h
0081B6A6: mov var_4C, 0000000Bh
0081B6AD: push 00000010h
0081B6AF: pop eax
0081B6B0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B6B5: lea esi, var_4C
0081B6B8: mov edi, esp
0081B6BA: movsd 
0081B6BB: movsd 
0081B6BC: movsd 
0081B6BD: movsd 
0081B6BE: push 0000000Fh
0081B6C0: mov eax, [ebp+08h]
0081B6C3: mov eax, [eax]
0081B6C5: push [ebp+08h]
0081B6C8: call [eax+00000308h]
0081B6CE: push eax
0081B6CF: lea eax, var_28
0081B6D2: push eax
0081B6D3: call 00410A84h ; Set (object)
0081B6D8: push eax
0081B6D9: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081B6DE: lea ecx, var_28
0081B6E1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081B6E6: jmp 0081B863h
0081B6EB: mov var_04, 00000012h
0081B6F2: and var_44, 00000000h
0081B6F6: mov var_4C, 00000003h
0081B6FD: push 00000010h
0081B6FF: pop eax
0081B700: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B705: lea esi, var_4C
0081B708: mov edi, esp
0081B70A: movsd 
0081B70B: movsd 
0081B70C: movsd 
0081B70D: movsd 
0081B70E: push 00000011h
0081B710: mov eax, [ebp+08h]
0081B713: mov eax, [eax]
0081B715: push [ebp+08h]
0081B718: call [eax+00000308h]
0081B71E: push eax
0081B71F: lea eax, var_28
0081B722: push eax
0081B723: call 00410A84h ; Set (object)
0081B728: push eax
0081B729: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081B72E: lea ecx, var_28
0081B731: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081B736: mov var_04, 00000013h
0081B73D: lea eax, var_60
0081B740: push eax
0081B741: mov eax, var_24
0081B744: mov eax, [eax]
0081B746: push var_24
0081B749: call [eax+34h]
0081B74C: fclex 
0081B74E: mov var_68, eax
0081B751: cmp var_68, 00000000h
0081B755: jnl 81B771h
0081B757: push 00000034h
0081B759: push 00450154h
0081B75E: push var_24
0081B761: push var_68
0081B764: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081B769: mov var_000000A0, eax
0081B76F: jmp 81B778h
0081B771: and var_000000A0, 00000000h
0081B778: mov ecx, var_60
0081B77B: sub ecx, 00000001h
0081B77E: jo 0081B8B4h
0081B784: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0081B789: mov var_44, ax
0081B78D: mov var_4C, 00000002h
0081B794: push 00000010h
0081B796: pop eax
0081B797: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B79C: lea esi, var_4C
0081B79F: mov edi, esp
0081B7A1: movsd 
0081B7A2: movsd 
0081B7A3: movsd 
0081B7A4: movsd 
0081B7A5: push 00000010h
0081B7A7: mov eax, [ebp+08h]
0081B7AA: mov eax, [eax]
0081B7AC: push [ebp+08h]
0081B7AF: call [eax+00000308h]
0081B7B5: push eax
0081B7B6: lea eax, var_28
0081B7B9: push eax
0081B7BA: call 00410A84h ; Set (object)
0081B7BF: push eax
0081B7C0: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081B7C5: lea ecx, var_28
0081B7C8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081B7CD: mov var_04, 00000014h
0081B7D4: or var_44, FFFFFFFFh
0081B7D8: mov var_4C, 0000000Bh
0081B7DF: push 00000010h
0081B7E1: pop eax
0081B7E2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B7E7: lea esi, var_4C
0081B7EA: mov edi, esp
0081B7EC: movsd 
0081B7ED: movsd 
0081B7EE: movsd 
0081B7EF: movsd 
0081B7F0: push 0000000Fh
0081B7F2: mov eax, [ebp+08h]
0081B7F5: mov eax, [eax]
0081B7F7: push [ebp+08h]
0081B7FA: call [eax+00000308h]
0081B800: push eax
0081B801: lea eax, var_28
0081B804: push eax
0081B805: call 00410A84h ; Set (object)
0081B80A: push eax
0081B80B: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081B810: lea ecx, var_28
0081B813: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081B818: mov var_04, 00000015h
0081B81F: and var_44, 00000000h
0081B823: mov var_4C, 0000000Bh
0081B82A: push 00000010h
0081B82C: pop eax
0081B82D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B832: lea esi, var_4C
0081B835: mov edi, esp
0081B837: movsd 
0081B838: movsd 
0081B839: movsd 
0081B83A: movsd 
0081B83B: push 0000000Fh
0081B83D: mov eax, [ebp+08h]
0081B840: mov eax, [eax]
0081B842: push [ebp+08h]
0081B845: call [eax+00000308h]
0081B84B: push eax
0081B84C: lea eax, var_28
0081B84F: push eax
0081B850: call 00410A84h ; Set (object)
0081B855: push eax
0081B856: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081B85B: lea ecx, var_28
0081B85E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081B863: mov var_10, 00000000h
0081B86A: push 0081B895h
0081B86F: jmp 81B88Ch
0081B871: lea eax, var_2C
0081B874: push eax
0081B875: lea eax, var_28
0081B878: push eax
0081B879: push 00000002h
0081B87B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081B880: add esp, 0000000Ch
0081B883: lea ecx, var_3C
0081B886: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081B88B: ret 
End Sub

Private sub lstNetwork__81B8B9
0081B8B9: push ebp
0081B8BA: mov ebp, esp
0081B8BC: sub esp, 0000000Ch
0081B8BF: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081B8C4: mov eax, fs:[00h]
0081B8CA: push eax
0081B8CB: mov fs:[00000000h], esp
0081B8D2: push 00000054h
0081B8D4: pop eax
0081B8D5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B8DA: push ebx
0081B8DB: push esi
0081B8DC: push edi
0081B8DD: mov var_0C, esp
0081B8E0: mov var_08, 0040AEF0h
0081B8E7: mov eax, [ebp+08h]
0081B8EA: and eax, 00000001h
0081B8ED: mov var_04, eax
0081B8F0: mov eax, [ebp+08h]
0081B8F3: and al, FEh
0081B8F5: mov [ebp+08h], eax
0081B8F8: mov eax, [ebp+08h]
0081B8FB: mov eax, [eax]
0081B8FD: push [ebp+08h]
0081B900: call [eax+04h]
0081B903: mov eax, [ebp+0Ch]
0081B906: cmp word ptr [eax], 0002h
0081B90A: jnz 0081B9E4h
0081B910: mov var_50, 80020004h
0081B917: mov var_58, 0000000Ah
0081B91E: mov var_40, 80020004h
0081B925: mov var_48, 0000000Ah
0081B92C: mov var_30, 80020004h
0081B933: mov var_38, 0000000Ah
0081B93A: mov var_20, 80020004h
0081B941: mov var_28, 0000000Ah
0081B948: push 00000010h
0081B94A: pop eax
0081B94B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B950: lea esi, var_58
0081B953: mov edi, esp
0081B955: movsd 
0081B956: movsd 
0081B957: movsd 
0081B958: movsd 
0081B959: push 00000010h
0081B95B: pop eax
0081B95C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B961: lea esi, var_48
0081B964: mov edi, esp
0081B966: movsd 
0081B967: movsd 
0081B968: movsd 
0081B969: movsd 
0081B96A: push 00000010h
0081B96C: pop eax
0081B96D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B972: lea esi, var_38
0081B975: mov edi, esp
0081B977: movsd 
0081B978: movsd 
0081B979: movsd 
0081B97A: movsd 
0081B97B: push 00000010h
0081B97D: pop eax
0081B97E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081B983: lea esi, var_28
0081B986: mov edi, esp
0081B988: movsd 
0081B989: movsd 
0081B98A: movsd 
0081B98B: movsd 
0081B98C: mov eax, [ebp+08h]
0081B98F: mov eax, [eax]
0081B991: push [ebp+08h]
0081B994: call [eax+00000300h]
0081B99A: push eax
0081B99B: lea eax, var_18
0081B99E: push eax
0081B99F: call 00410A84h ; Set (object)
0081B9A4: push eax
0081B9A5: mov eax, [ebp+08h]
0081B9A8: mov eax, [eax]
0081B9AA: push [ebp+08h]
0081B9AD: call [eax+000002BCh]
0081B9B3: fclex 
0081B9B5: mov var_5C, eax
0081B9B8: cmp var_5C, 00000000h
0081B9BC: jnl 81B9D8h
0081B9BE: push 000002BCh
0081B9C3: push 00444B28h
0081B9C8: push [ebp+08h]
0081B9CB: push var_5C
0081B9CE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081B9D3: mov var_68, eax
0081B9D6: jmp 81B9DCh
0081B9D8: and var_68, 00000000h
0081B9DC: lea ecx, var_18
0081B9DF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081B9E4: mov var_04, 00000000h
0081B9EB: push 0081B9FCh
0081B9F0: jmp 81B9FBh
0081B9F2: lea ecx, var_18
0081B9F5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081B9FA: ret 
End Sub

Private sub Timer1__81BB93
0081BB93: push ebp
0081BB94: mov ebp, esp
0081BB96: sub esp, 0000000Ch
0081BB99: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081BB9E: mov eax, fs:[00h]
0081BBA4: push eax
0081BBA5: mov fs:[00000000h], esp
0081BBAC: push 0000003Ch
0081BBAE: pop eax
0081BBAF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081BBB4: push ebx
0081BBB5: push esi
0081BBB6: push edi
0081BBB7: mov var_0C, esp
0081BBBA: mov var_08, 0040AF10h
0081BBC1: mov eax, [ebp+08h]
0081BBC4: and eax, 00000001h
0081BBC7: mov var_04, eax
0081BBCA: mov eax, [ebp+08h]
0081BBCD: and al, FEh
0081BBCF: mov [ebp+08h], eax
0081BBD2: mov eax, [ebp+08h]
0081BBD5: mov eax, [eax]
0081BBD7: push [ebp+08h]
0081BBDA: call [eax+04h]
0081BBDD: cmp [008F2010h], 00000000h
0081BBE4: jnz 81BBFEh
0081BBE6: push 008F2010h
0081BBEB: push 00433984h
0081BBF0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0081BBF5: mov var_40, 008F2010h
0081BBFC: jmp 81BC05h
0081BBFE: mov var_40, 008F2010h
0081BC05: mov eax, var_40
0081BC08: mov eax, [eax]
0081BC0A: mov ecx, var_40
0081BC0D: mov ecx, [ecx]
0081BC0F: mov ecx, [ecx]
0081BC11: push eax
0081BC12: call [ecx+00000380h]
0081BC18: push eax
0081BC19: lea eax, var_18
0081BC1C: push eax
0081BC1D: call 00410A84h ; Set (object)
0081BC22: mov var_24, eax
0081BC25: lea eax, var_1C
0081BC28: push eax
0081BC29: push 00000003h
0081BC2B: mov eax, var_24
0081BC2E: mov eax, [eax]
0081BC30: push var_24
0081BC33: call [eax+40h]
0081BC36: fclex 
0081BC38: mov var_28, eax
0081BC3B: cmp var_28, 00000000h
0081BC3F: jnl 81BC58h
0081BC41: push 00000040h
0081BC43: push 00440DE8h
0081BC48: push var_24
0081BC4B: push var_28
0081BC4E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081BC53: mov var_44, eax
0081BC56: jmp 81BC5Ch
0081BC58: and var_44, 00000000h
0081BC5C: mov eax, var_1C
0081BC5F: mov var_2C, eax
0081BC62: lea eax, var_20
0081BC65: push eax
0081BC66: mov eax, var_2C
0081BC69: mov eax, [eax]
0081BC6B: push var_2C
0081BC6E: call [eax+000000E0h]
0081BC74: fclex 
0081BC76: mov var_30, eax
0081BC79: cmp var_30, 00000000h
0081BC7D: jnl 81BC99h
0081BC7F: push 000000E0h
0081BC84: push 00440DF8h
0081BC89: push var_2C
0081BC8C: push var_30
0081BC8F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081BC94: mov var_48, eax
0081BC97: jmp 81BC9Dh
0081BC99: and var_48, 00000000h
0081BC9D: xor eax, eax
0081BC9F: cmp word ptr var_20, 0001h
0081BCA4: setz al
0081BCA7: neg eax
0081BCA9: mov var_34, ax
0081BCAD: lea eax, var_1C
0081BCB0: push eax
0081BCB1: lea eax, var_18
0081BCB4: push eax
0081BCB5: push 00000002h
0081BCB7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081BCBC: add esp, 0000000Ch
0081BCBF: movsx eax, word ptr var_34
0081BCC3: test eax, eax
0081BCC5: jz 81BD05h
0081BCC7: and word ptr var_20, 0000h
0081BCCC: lea eax, var_20
0081BCCF: push eax
0081BCD0: mov eax, [ebp+08h]
0081BCD3: mov eax, [eax]
0081BCD5: push [ebp+08h]
0081BCD8: call [eax+00000708h]
0081BCDE: mov var_24, eax
0081BCE1: cmp var_24, 00000000h
0081BCE5: jnl 81BD01h
0081BCE7: push 00000708h
0081BCEC: push 00440330h
0081BCF1: push [ebp+08h]
0081BCF4: push var_24
0081BCF7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081BCFC: mov var_4C, eax
0081BCFF: jmp 81BD05h
0081BD01: and var_4C, 00000000h
0081BD05: mov eax, [ebp+08h]
0081BD08: mov eax, [eax]
0081BD0A: push [ebp+08h]
0081BD0D: call [eax+000002FCh]
0081BD13: push eax
0081BD14: lea eax, var_18
0081BD17: push eax
0081BD18: call 00410A84h ; Set (object)
0081BD1D: mov var_24, eax
0081BD20: push 00000000h
0081BD22: mov eax, var_24
0081BD25: mov eax, [eax]
0081BD27: push var_24
0081BD2A: call [eax+5Ch]
0081BD2D: fclex 
0081BD2F: mov var_28, eax
0081BD32: cmp var_28, 00000000h
0081BD36: jnl 81BD4Fh
0081BD38: push 0000005Ch
0081BD3A: push 00447A20h
0081BD3F: push var_24
0081BD42: push var_28
0081BD45: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081BD4A: mov var_50, eax
0081BD4D: jmp 81BD53h
0081BD4F: and var_50, 00000000h
0081BD53: lea ecx, var_18
0081BD56: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081BD5B: mov var_04, 00000000h
0081BD62: push 0081BD7Dh
0081BD67: jmp 81BD7Ch
0081BD69: lea eax, var_1C
0081BD6C: push eax
0081BD6D: lea eax, var_18
0081BD70: push eax
0081BD71: push 00000002h
0081BD73: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081BD78: add esp, 0000000Ch
0081BD7B: ret 
End Sub

Private sub mnuNetwork__81BA1B
0081BA1B: push ebp
0081BA1C: mov ebp, esp
0081BA1E: sub esp, 0000000Ch
0081BA21: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081BA26: mov eax, fs:[00h]
0081BA2C: push eax
0081BA2D: mov fs:[00000000h], esp
0081BA34: push 0000003Ch
0081BA36: pop eax
0081BA37: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081BA3C: push ebx
0081BA3D: push esi
0081BA3E: push edi
0081BA3F: mov var_0C, esp
0081BA42: mov var_08, 0040AF00h
0081BA49: mov eax, [ebp+08h]
0081BA4C: and eax, 00000001h
0081BA4F: mov var_04, eax
0081BA52: mov eax, [ebp+08h]
0081BA55: and al, FEh
0081BA57: mov [ebp+08h], eax
0081BA5A: mov eax, [ebp+08h]
0081BA5D: mov eax, [eax]
0081BA5F: push [ebp+08h]
0081BA62: call [eax+04h]
0081BA65: mov eax, [ebp+0Ch]
0081BA68: mov ax, [eax]
0081BA6B: mov var_40, ax
0081BA6F: movsx eax, word ptr var_40
0081BA73: mov var_4C, eax
0081BA76: cmp var_4C, 00000000h
0081BA7A: jz 81BA81h
0081BA7C: jmp 0081BB46h
0081BA81: lea eax, var_18
0081BA84: push eax
0081BA85: mov eax, [ebp+08h]
0081BA88: mov eax, [eax]
0081BA8A: push [ebp+08h]
0081BA8D: call [eax+000001C0h]
0081BA93: fclex 
0081BA95: mov var_3C, eax
0081BA98: cmp var_3C, 00000000h
0081BA9C: jnl 81BAB8h
0081BA9E: push 000001C0h
0081BAA3: push 00444B28h
0081BAA8: push [ebp+08h]
0081BAAB: push var_3C
0081BAAE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081BAB3: mov var_50, eax
0081BAB6: jmp 81BABCh
0081BAB8: and var_50, 00000000h
0081BABC: push var_18
0081BABF: call 004109DCh ; Val(arg_1)
0081BAC4: fstp real8 ptr var_38
0081BAC7: push 00000000h
0081BAC9: push 00000000h
0081BACB: push 00000001h
0081BACD: push 00000000h
0081BACF: lea eax, var_20
0081BAD2: push eax
0081BAD3: push 00000010h
0081BAD5: push 00000880h
0081BADA: call 00410946h ; ReDim
0081BADF: add esp, 0000001Ch
0081BAE2: mov var_28, 00442938h
0081BAE9: mov var_30, 00000008h
0081BAF0: lea esi, var_30
0081BAF3: push 00000000h
0081BAF5: push var_20
0081BAF8: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0081BAFD: mov ecx, eax
0081BAFF: mov edx, esi
0081BB01: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0081BB06: mov edx, 0043D6F0h ; x61
0081BB0B: lea ecx, var_1C
0081BB0E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081BB13: lea eax, var_20
0081BB16: push eax
0081BB17: lea eax, var_1C
0081BB1A: push eax
0081BB1B: fld real8 ptr var_38
0081BB1E: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0081BB23: push eax
0081BB24: call 007A6910h
0081BB29: lea eax, var_20
0081BB2C: push eax
0081BB2D: push 00000000h
0081BB2F: call 00410934h ; Erase
0081BB34: lea eax, var_1C
0081BB37: push eax
0081BB38: lea eax, var_18
0081BB3B: push eax
0081BB3C: push 00000002h
0081BB3E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081BB43: add esp, 0000000Ch
0081BB46: mov var_04, 00000000h
0081BB4D: wait 
0081BB4E: push 0081BB74h
0081BB53: jmp 81BB73h
0081BB55: lea eax, var_1C
0081BB58: push eax
0081BB59: lea eax, var_18
0081BB5C: push eax
0081BB5D: push 00000002h
0081BB5F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081BB64: add esp, 0000000Ch
0081BB67: lea eax, var_20
0081BB6A: push eax
0081BB6B: push 00000000h
0081BB6D: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0081BB72: ret 
End Sub

