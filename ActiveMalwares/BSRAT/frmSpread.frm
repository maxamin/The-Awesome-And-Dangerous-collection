VERSION 5.00
Begin VB.Form frmSpread
  Caption = "Spreader"
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
  ClientWidth = 5460
  ClientHeight = 1770
  StartUpPosition = 1 'CenterOwner
  Begin XtremeSuiteControls.RadioButton optIM
    Index = 0
    Left = 3600
    Top = 480
    Width = 615
    Height = 255
    TabIndex = 7
  End
  Begin XtremeSuiteControls.CheckBox chkUSB
    Left = 1200
    Top = 480
    Width = 1095
    Height = 255
    TabIndex = 5
  End
  Begin XtremeSuiteControls.PushButton cmdStoppa
    Left = 120
    Top = 1080
    Width = 1215
    Height = 495
    TabIndex = 3
  End
  Begin VB.TextBox txtIM
    Left = 1200
    Top = 120
    Width = 3495
    Height = 285
    Text = "Hello! Visit http://www.youtube.com"
    TabIndex = 1
    MaxLength = 120
  End
  Begin XtremeSuiteControls.PushButton cmdStarta
    Left = 4080
    Top = 1080
    Width = 1215
    Height = 495
    TabIndex = 4
  End
  Begin XtremeSuiteControls.CheckBox chkIM
    Left = 2400
    Top = 480
    Width = 1095
    Height = 255
    TabIndex = 6
  End
  Begin XtremeSuiteControls.RadioButton optIM
    Index = 1
    Left = 4320
    Top = 480
    Width = 1095
    Height = 255
    TabIndex = 8
  End
  Begin VB.Label lblStatus
    Caption = "Status: Waiting..."
    Left = 1560
    Top = 1200
    Width = 2295
    Height = 255
    TabIndex = 2
    BackStyle = 0 'Transparent
  End
  Begin VB.Label lblMeddelande
    Caption = "IM message:"
    Left = 120
    Top = 120
    Width = 1215
    Height = 255
    TabIndex = 0
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "frmSpread"


Private sub cmdStarta__7DCF94
007DCF94: push ebp
007DCF95: mov ebp, esp
007DCF97: sub esp, 00000018h
007DCF9A: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007DCF9F: mov eax, fs:[00h]
007DCFA5: push eax
007DCFA6: mov fs:[00000000h], esp
007DCFAD: mov eax, 00000154h
007DCFB2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DCFB7: push ebx
007DCFB8: push esi
007DCFB9: push edi
007DCFBA: mov var_18, esp
007DCFBD: mov var_14, 00409638h
007DCFC4: mov eax, [ebp+08h]
007DCFC7: and eax, 00000001h
007DCFCA: mov var_10, eax
007DCFCD: mov eax, [ebp+08h]
007DCFD0: and al, FEh
007DCFD2: mov [ebp+08h], eax
007DCFD5: mov var_0C, 00000000h
007DCFDC: mov eax, [ebp+08h]
007DCFDF: mov eax, [eax]
007DCFE1: push [ebp+08h]
007DCFE4: call [eax+04h]
007DCFE7: mov var_04, 00000001h
007DCFEE: mov var_04, 00000002h
007DCFF5: push FFFFFFFFh
007DCFF7: call 00410A60h ; On Error ...
007DCFFC: mov var_04, 00000003h
007DD003: mov eax, [ebp+08h]
007DD006: mov eax, [eax]
007DD008: push [ebp+08h]
007DD00B: call [eax+00000308h]
007DD011: push eax
007DD012: lea eax, var_40
007DD015: push eax
007DD016: call 00410A84h ; Set (object)
007DD01B: mov var_00000110, eax
007DD021: lea eax, var_44
007DD024: push eax
007DD025: push 00000000h
007DD027: mov eax, var_00000110
007DD02D: mov eax, [eax]
007DD02F: push var_00000110
007DD035: call [eax+40h]
007DD038: fclex 
007DD03A: mov var_00000114, eax
007DD040: cmp var_00000114, 00000000h
007DD047: jnl 7DD069h
007DD049: push 00000040h
007DD04B: push 00440DE8h
007DD050: push var_00000110
007DD056: push var_00000114
007DD05C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DD061: mov var_00000154, eax
007DD067: jmp 7DD070h
007DD069: and var_00000154, 00000000h
007DD070: push 00000000h
007DD072: push 00000000h
007DD074: push var_44
007DD077: lea eax, var_60
007DD07A: push eax
007DD07B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DD080: add esp, 00000010h
007DD083: push eax
007DD084: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007DD089: sub ax, FFFFh
007DD08D: neg ax
007DD090: sbb eax, eax
007DD092: inc eax
007DD093: neg eax
007DD095: mov var_00000118, ax
007DD09C: lea eax, var_44
007DD09F: push eax
007DD0A0: lea eax, var_40
007DD0A3: push eax
007DD0A4: push 00000002h
007DD0A6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DD0AB: add esp, 0000000Ch
007DD0AE: lea ecx, var_60
007DD0B1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007DD0B6: movsx eax, word ptr var_00000118
007DD0BD: test eax, eax
007DD0BF: jz 7DD0D9h
007DD0C1: mov var_04, 00000004h
007DD0C8: push 00000001h
007DD0CA: call 00410964h ; msvbvm60.dll.__vbaStrI2
007DD0CF: mov edx, eax
007DD0D1: lea ecx, var_34
007DD0D4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007DD0D9: mov var_04, 00000006h
007DD0E0: mov eax, [ebp+08h]
007DD0E3: mov eax, [eax]
007DD0E5: push [ebp+08h]
007DD0E8: call [eax+00000308h]
007DD0EE: push eax
007DD0EF: lea eax, var_40
007DD0F2: push eax
007DD0F3: call 00410A84h ; Set (object)
007DD0F8: mov var_00000110, eax
007DD0FE: lea eax, var_44
007DD101: push eax
007DD102: push 00000001h
007DD104: mov eax, var_00000110
007DD10A: mov eax, [eax]
007DD10C: push var_00000110
007DD112: call [eax+40h]
007DD115: fclex 
007DD117: mov var_00000114, eax
007DD11D: cmp var_00000114, 00000000h
007DD124: jnl 7DD146h
007DD126: push 00000040h
007DD128: push 00440DE8h
007DD12D: push var_00000110
007DD133: push var_00000114
007DD139: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DD13E: mov var_00000158, eax
007DD144: jmp 7DD14Dh
007DD146: and var_00000158, 00000000h
007DD14D: push 00000000h
007DD14F: push 00000000h
007DD151: push var_44
007DD154: lea eax, var_60
007DD157: push eax
007DD158: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DD15D: add esp, 00000010h
007DD160: push eax
007DD161: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007DD166: sub ax, FFFFh
007DD16A: neg ax
007DD16D: sbb eax, eax
007DD16F: inc eax
007DD170: neg eax
007DD172: mov var_00000118, ax
007DD179: lea eax, var_44
007DD17C: push eax
007DD17D: lea eax, var_40
007DD180: push eax
007DD181: push 00000002h
007DD183: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DD188: add esp, 0000000Ch
007DD18B: lea ecx, var_60
007DD18E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007DD193: movsx eax, word ptr var_00000118
007DD19A: test eax, eax
007DD19C: jz 7DD1B6h
007DD19E: mov var_04, 00000007h
007DD1A5: push 00000002h
007DD1A7: call 00410964h ; msvbvm60.dll.__vbaStrI2
007DD1AC: mov edx, eax
007DD1AE: lea ecx, var_34
007DD1B1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007DD1B6: mov var_04, 00000009h
007DD1BD: push 00000000h
007DD1BF: push 00000000h
007DD1C1: mov eax, [ebp+08h]
007DD1C4: mov eax, [eax]
007DD1C6: push [ebp+08h]
007DD1C9: call [eax+00000318h]
007DD1CF: push eax
007DD1D0: lea eax, var_40
007DD1D3: push eax
007DD1D4: call 00410A84h ; Set (object)
007DD1D9: push eax
007DD1DA: lea eax, var_60
007DD1DD: push eax
007DD1DE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DD1E3: add esp, 00000010h
007DD1E6: push eax
007DD1E7: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007DD1EC: neg eax
007DD1EE: sbb eax, eax
007DD1F0: inc eax
007DD1F1: neg eax
007DD1F3: mov var_00000110, ax
007DD1FA: lea ecx, var_40
007DD1FD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007DD202: lea ecx, var_60
007DD205: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007DD20A: movsx eax, word ptr var_00000110
007DD211: test eax, eax
007DD213: jz 7DD22Dh
007DD215: mov var_04, 0000000Ah
007DD21C: push 00000000h
007DD21E: call 00410964h ; msvbvm60.dll.__vbaStrI2
007DD223: mov edx, eax
007DD225: lea ecx, var_34
007DD228: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007DD22D: mov var_04, 0000000Ch
007DD234: mov eax, [ebp+08h]
007DD237: mov eax, [eax]
007DD239: push [ebp+08h]
007DD23C: call [eax+000002FCh]
007DD242: push eax
007DD243: lea eax, var_40
007DD246: push eax
007DD247: call 00410A84h ; Set (object)
007DD24C: mov var_00000110, eax
007DD252: lea eax, var_38
007DD255: push eax
007DD256: mov eax, var_00000110
007DD25C: mov eax, [eax]
007DD25E: push var_00000110
007DD264: call [eax+000000A0h]
007DD26A: fclex 
007DD26C: mov var_00000114, eax
007DD272: cmp var_00000114, 00000000h
007DD279: jnl 7DD29Eh
007DD27B: push 000000A0h
007DD280: push 00440E08h
007DD285: push var_00000110
007DD28B: push var_00000114
007DD291: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DD296: mov var_0000015C, eax
007DD29C: jmp 7DD2A5h
007DD29E: and var_0000015C, 00000000h
007DD2A5: push var_38
007DD2A8: push 00000000h
007DD2AA: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
007DD2AF: neg eax
007DD2B1: sbb eax, eax
007DD2B3: inc eax
007DD2B4: neg eax
007DD2B6: mov var_00000118, ax
007DD2BD: lea ecx, var_38
007DD2C0: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
007DD2C5: lea ecx, var_40
007DD2C8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007DD2CD: movsx eax, word ptr var_00000118
007DD2D4: test eax, eax
007DD2D6: jz 007DD371h
007DD2DC: mov var_04, 0000000Dh
007DD2E3: mov var_00000088, 80020004h
007DD2ED: mov var_00000090, 0000000Ah
007DD2F7: mov var_78, 80020004h
007DD2FE: mov var_80, 0000000Ah
007DD305: mov var_68, 80020004h
007DD30C: mov var_70, 0000000Ah
007DD313: mov var_000000BC, 004500ACh ; Invalid message
007DD31D: mov var_000000C4, 00000008h
007DD327: lea edx, var_000000C4
007DD32D: lea ecx, var_60
007DD330: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007DD335: lea eax, var_00000090
007DD33B: push eax
007DD33C: lea eax, var_80
007DD33F: push eax
007DD340: lea eax, var_70
007DD343: push eax
007DD344: push 00000010h
007DD346: lea eax, var_60
007DD349: push eax
007DD34A: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007DD34F: lea eax, var_00000090
007DD355: push eax
007DD356: lea eax, var_80
007DD359: push eax
007DD35A: lea eax, var_70
007DD35D: push eax
007DD35E: lea eax, var_60
007DD361: push eax
007DD362: push 00000004h
007DD364: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DD369: add esp, 00000014h
007DD36C: jmp 007DDE26h
007DD371: mov var_04, 00000010h
007DD378: push 00000000h
007DD37A: push 00000000h
007DD37C: mov eax, [ebp+08h]
007DD37F: mov eax, [eax]
007DD381: push [ebp+08h]
007DD384: call [eax+0000030Ch]
007DD38A: push eax
007DD38B: lea eax, var_40
007DD38E: push eax
007DD38F: call 00410A84h ; Set (object)
007DD394: push eax
007DD395: lea eax, var_60
007DD398: push eax
007DD399: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DD39E: add esp, 00000010h
007DD3A1: push eax
007DD3A2: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007DD3A7: mov esi, eax
007DD3A9: neg esi
007DD3AB: sbb esi, esi
007DD3AD: inc esi
007DD3AE: neg esi
007DD3B0: push 00000000h
007DD3B2: push 00000000h
007DD3B4: mov eax, [ebp+08h]
007DD3B7: mov eax, [eax]
007DD3B9: push [ebp+08h]
007DD3BC: call [eax+00000318h]
007DD3C2: push eax
007DD3C3: lea eax, var_44
007DD3C6: push eax
007DD3C7: call 00410A84h ; Set (object)
007DD3CC: push eax
007DD3CD: lea eax, var_70
007DD3D0: push eax
007DD3D1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DD3D6: add esp, 00000010h
007DD3D9: push eax
007DD3DA: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007DD3DF: neg eax
007DD3E1: sbb eax, eax
007DD3E3: inc eax
007DD3E4: neg eax
007DD3E6: and si, ax
007DD3E9: mov var_00000110, si
007DD3F0: lea eax, var_44
007DD3F3: push eax
007DD3F4: lea eax, var_40
007DD3F7: push eax
007DD3F8: push 00000002h
007DD3FA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DD3FF: add esp, 0000000Ch
007DD402: lea eax, var_70
007DD405: push eax
007DD406: lea eax, var_60
007DD409: push eax
007DD40A: push 00000002h
007DD40C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DD411: add esp, 0000000Ch
007DD414: movsx eax, word ptr var_00000110
007DD41B: test eax, eax
007DD41D: jz 007DD4B8h
007DD423: mov var_04, 00000011h
007DD42A: mov var_00000088, 80020004h
007DD434: mov var_00000090, 0000000Ah
007DD43E: mov var_78, 80020004h
007DD445: mov var_80, 0000000Ah
007DD44C: mov var_68, 80020004h
007DD453: mov var_70, 0000000Ah
007DD45A: mov var_000000BC, 004500D0h ; Please select a spreader
007DD464: mov var_000000C4, 00000008h
007DD46E: lea edx, var_000000C4
007DD474: lea ecx, var_60
007DD477: call 004109E2h ; msvbvm60.dll.__vbaVarDup
007DD47C: lea eax, var_00000090
007DD482: push eax
007DD483: lea eax, var_80
007DD486: push eax
007DD487: lea eax, var_70
007DD48A: push eax
007DD48B: push 00000010h
007DD48D: lea eax, var_60
007DD490: push eax
007DD491: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
007DD496: lea eax, var_00000090
007DD49C: push eax
007DD49D: lea eax, var_80
007DD4A0: push eax
007DD4A1: lea eax, var_70
007DD4A4: push eax
007DD4A5: lea eax, var_60
007DD4A8: push eax
007DD4A9: push 00000004h
007DD4AB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DD4B0: add esp, 00000014h
007DD4B3: jmp 007DDE26h
007DD4B8: mov var_04, 00000014h
007DD4BF: mov var_000000BC, 00000001h
007DD4C9: mov var_000000C4, 00000002h
007DD4D3: cmp [008F2010h], 00000000h
007DD4DA: jnz 7DD4F7h
007DD4DC: push 008F2010h
007DD4E1: push 00433984h
007DD4E6: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007DD4EB: mov var_00000160, 008F2010h
007DD4F5: jmp 7DD501h
007DD4F7: mov var_00000160, 008F2010h
007DD501: push 00000000h
007DD503: push 00000001h
007DD505: push 00440E48h
007DD50A: push 00000000h
007DD50C: push 00000018h
007DD50E: mov eax, var_00000160
007DD514: mov eax, [eax]
007DD516: mov ecx, var_00000160
007DD51C: mov ecx, [ecx]
007DD51E: mov ecx, [ecx]
007DD520: push eax
007DD521: call [ecx+00000550h]
007DD527: push eax
007DD528: lea eax, var_40
007DD52B: push eax
007DD52C: call 00410A84h ; Set (object)
007DD531: push eax
007DD532: lea eax, var_60
007DD535: push eax
007DD536: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DD53B: add esp, 00000010h
007DD53E: push eax
007DD53F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DD544: push eax
007DD545: lea eax, var_44
007DD548: push eax
007DD549: call 00410A84h ; Set (object)
007DD54E: push eax
007DD54F: lea eax, var_70
007DD552: push eax
007DD553: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DD558: add esp, 00000010h
007DD55B: push eax
007DD55C: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007DD561: mov var_000000CC, eax
007DD567: mov var_000000D4, 00000003h
007DD571: mov var_000000DC, 00000001h
007DD57B: mov var_000000E4, 00000002h
007DD585: lea eax, var_000000C4
007DD58B: push eax
007DD58C: lea eax, var_000000D4
007DD592: push eax
007DD593: lea eax, var_000000E4
007DD599: push eax
007DD59A: lea eax, var_00000138
007DD5A0: push eax
007DD5A1: lea eax, var_00000128
007DD5A7: push eax
007DD5A8: lea eax, var_30
007DD5AB: push eax
007DD5AC: call 00410A3Ch ; For
007DD5B1: mov var_00000150, eax
007DD5B7: lea eax, var_44
007DD5BA: push eax
007DD5BB: lea eax, var_40
007DD5BE: push eax
007DD5BF: push 00000002h
007DD5C1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DD5C6: add esp, 0000000Ch
007DD5C9: lea eax, var_70
007DD5CC: push eax
007DD5CD: lea eax, var_60
007DD5D0: push eax
007DD5D1: push 00000002h
007DD5D3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DD5D8: add esp, 0000000Ch
007DD5DB: jmp 007DDD9Eh
007DD5E0: mov var_04, 00000015h
007DD5E7: lea eax, var_30
007DD5EA: mov var_000000BC, eax
007DD5F0: mov var_000000C4, 0000400Ch
007DD5FA: cmp [008F2010h], 00000000h
007DD601: jnz 7DD61Eh
007DD603: push 008F2010h
007DD608: push 00433984h
007DD60D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007DD612: mov var_00000164, 008F2010h
007DD61C: jmp 7DD628h
007DD61E: mov var_00000164, 008F2010h
007DD628: push 00000000h
007DD62A: push 00000004h
007DD62C: push 00440E58h
007DD631: push 00000010h
007DD633: pop eax
007DD634: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DD639: lea esi, var_000000C4
007DD63F: mov edi, esp
007DD641: movsd 
007DD642: movsd 
007DD643: movsd 
007DD644: movsd 
007DD645: push 00000001h
007DD647: push 00000000h
007DD649: push 00440E48h
007DD64E: push 00000000h
007DD650: push 00000018h
007DD652: mov eax, var_00000164
007DD658: mov eax, [eax]
007DD65A: mov ecx, var_00000164
007DD660: mov ecx, [ecx]
007DD662: mov ecx, [ecx]
007DD664: push eax
007DD665: call [ecx+00000550h]
007DD66B: push eax
007DD66C: lea eax, var_40
007DD66F: push eax
007DD670: call 00410A84h ; Set (object)
007DD675: push eax
007DD676: lea eax, var_60
007DD679: push eax
007DD67A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DD67F: add esp, 00000010h
007DD682: push eax
007DD683: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DD688: push eax
007DD689: lea eax, var_44
007DD68C: push eax
007DD68D: call 00410A84h ; Set (object)
007DD692: push eax
007DD693: lea eax, var_70
007DD696: push eax
007DD697: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DD69C: add esp, 00000020h
007DD69F: push eax
007DD6A0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DD6A5: push eax
007DD6A6: lea eax, var_48
007DD6A9: push eax
007DD6AA: call 00410A84h ; Set (object)
007DD6AF: push eax
007DD6B0: lea eax, var_80
007DD6B3: push eax
007DD6B4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DD6B9: add esp, 00000010h
007DD6BC: push eax
007DD6BD: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007DD6C2: sub ax, FFFFh
007DD6C6: neg ax
007DD6C9: sbb eax, eax
007DD6CB: inc eax
007DD6CC: neg eax
007DD6CE: mov var_00000110, ax
007DD6D5: lea eax, var_48
007DD6D8: push eax
007DD6D9: lea eax, var_44
007DD6DC: push eax
007DD6DD: lea eax, var_40
007DD6E0: push eax
007DD6E1: push 00000003h
007DD6E3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DD6E8: add esp, 00000010h
007DD6EB: lea eax, var_80
007DD6EE: push eax
007DD6EF: lea eax, var_70
007DD6F2: push eax
007DD6F3: lea eax, var_60
007DD6F6: push eax
007DD6F7: push 00000003h
007DD6F9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DD6FE: add esp, 00000010h
007DD701: movsx eax, word ptr var_00000110
007DD708: test eax, eax
007DD70A: jz 007DDD7Ah
007DD710: mov var_04, 00000016h
007DD717: lea eax, var_30
007DD71A: mov var_000000BC, eax
007DD720: mov var_000000C4, 0000400Ch
007DD72A: cmp [008F2010h], 00000000h
007DD731: jnz 7DD74Eh
007DD733: push 008F2010h
007DD738: push 00433984h
007DD73D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007DD742: mov var_00000168, 008F2010h
007DD74C: jmp 7DD758h
007DD74E: mov var_00000168, 008F2010h
007DD758: push 00000000h
007DD75A: push 00000014h
007DD75C: push 00440E58h
007DD761: push 00000010h
007DD763: pop eax
007DD764: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DD769: lea esi, var_000000C4
007DD76F: mov edi, esp
007DD771: movsd 
007DD772: movsd 
007DD773: movsd 
007DD774: movsd 
007DD775: push 00000001h
007DD777: push 00000000h
007DD779: push 00440E48h
007DD77E: push 00000000h
007DD780: push 00000018h
007DD782: mov eax, var_00000168
007DD788: mov eax, [eax]
007DD78A: mov ecx, var_00000168
007DD790: mov ecx, [ecx]
007DD792: mov ecx, [ecx]
007DD794: push eax
007DD795: call [ecx+00000550h]
007DD79B: push eax
007DD79C: lea eax, var_40
007DD79F: push eax
007DD7A0: call 00410A84h ; Set (object)
007DD7A5: push eax
007DD7A6: lea eax, var_60
007DD7A9: push eax
007DD7AA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DD7AF: add esp, 00000010h
007DD7B2: push eax
007DD7B3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DD7B8: push eax
007DD7B9: lea eax, var_44
007DD7BC: push eax
007DD7BD: call 00410A84h ; Set (object)
007DD7C2: push eax
007DD7C3: lea eax, var_70
007DD7C6: push eax
007DD7C7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DD7CC: add esp, 00000020h
007DD7CF: push eax
007DD7D0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DD7D5: push eax
007DD7D6: lea eax, var_48
007DD7D9: push eax
007DD7DA: call 00410A84h ; Set (object)
007DD7DF: push eax
007DD7E0: lea eax, var_80
007DD7E3: push eax
007DD7E4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DD7E9: add esp, 00000010h
007DD7EC: push eax
007DD7ED: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007DD7F2: mov edx, eax
007DD7F4: lea ecx, var_38
007DD7F7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007DD7FC: push eax
007DD7FD: call 004109DCh ; Val(arg_1)
007DD802: fstp real8 ptr var_0000010C
007DD808: push 00000000h
007DD80A: push 00000004h
007DD80C: push 00000001h
007DD80E: push 00000000h
007DD810: lea eax, var_000000B4
007DD816: push eax
007DD817: push 00000010h
007DD819: push 00000880h
007DD81E: call 00410946h ; ReDim
007DD823: add esp, 0000001Ch
007DD826: mov var_000000CC, 00442938h
007DD830: mov var_000000D4, 00000008h
007DD83A: lea esi, var_000000D4
007DD840: push 00000000h
007DD842: push var_000000B4
007DD848: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007DD84D: mov ecx, eax
007DD84F: mov edx, esi
007DD851: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007DD856: push 00000000h
007DD858: push 00000000h
007DD85A: mov eax, [ebp+08h]
007DD85D: mov eax, [eax]
007DD85F: push [ebp+08h]
007DD862: call [eax+0000030Ch]
007DD868: push eax
007DD869: lea eax, var_4C
007DD86C: push eax
007DD86D: call 00410A84h ; Set (object)
007DD872: push eax
007DD873: lea eax, var_00000090
007DD879: push eax
007DD87A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DD87F: add esp, 00000010h
007DD882: push eax
007DD883: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007DD888: mov var_000000DC, eax
007DD88E: mov var_000000E4, 00000003h
007DD898: lea esi, var_000000E4
007DD89E: push 00000001h
007DD8A0: push var_000000B4
007DD8A6: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007DD8AB: mov ecx, eax
007DD8AD: mov edx, esi
007DD8AF: call 00410922h ; msvbvm60.dll.__vbaVarMove
007DD8B4: mov eax, [ebp+08h]
007DD8B7: mov eax, [eax]
007DD8B9: push [ebp+08h]
007DD8BC: call [eax+000002FCh]
007DD8C2: mov var_000000A8, eax
007DD8C8: mov var_000000B0, 00000009h
007DD8D2: lea esi, var_000000B0
007DD8D8: push 00000002h
007DD8DA: push var_000000B4
007DD8E0: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007DD8E5: mov ecx, eax
007DD8E7: mov edx, esi
007DD8E9: call 00410940h ; msvbvm60.dll.__vbaVarZero
007DD8EE: push 00000000h
007DD8F0: push 00000000h
007DD8F2: mov eax, [ebp+08h]
007DD8F5: mov eax, [eax]
007DD8F7: push [ebp+08h]
007DD8FA: call [eax+00000318h]
007DD900: push eax
007DD901: lea eax, var_50
007DD904: push eax
007DD905: call 00410A84h ; Set (object)
007DD90A: push eax
007DD90B: lea eax, var_000000A0
007DD911: push eax
007DD912: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DD917: add esp, 00000010h
007DD91A: push eax
007DD91B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007DD920: mov var_000000EC, eax
007DD926: mov var_000000F4, 00000003h
007DD930: lea esi, var_000000F4
007DD936: push 00000003h
007DD938: push var_000000B4
007DD93E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007DD943: mov ecx, eax
007DD945: mov edx, esi
007DD947: call 00410922h ; msvbvm60.dll.__vbaVarMove
007DD94C: lea eax, var_34
007DD94F: mov var_000000FC, eax
007DD955: mov var_00000104, 00004008h
007DD95F: lea esi, var_00000104
007DD965: push 00000004h
007DD967: push var_000000B4
007DD96D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007DD972: mov ecx, eax
007DD974: mov edx, esi
007DD976: call 00410940h ; msvbvm60.dll.__vbaVarZero
007DD97B: mov edx, 0043D41Ch ; x1
007DD980: lea ecx, var_3C
007DD983: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007DD988: lea eax, var_000000B4
007DD98E: push eax
007DD98F: lea eax, var_3C
007DD992: push eax
007DD993: fld real8 ptr var_0000010C
007DD999: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007DD99E: push eax
007DD99F: call 007A6910h
007DD9A4: lea eax, var_000000B4
007DD9AA: push eax
007DD9AB: push 00000000h
007DD9AD: call 00410934h ; Erase
007DD9B2: lea eax, var_3C
007DD9B5: push eax
007DD9B6: lea eax, var_38
007DD9B9: push eax
007DD9BA: push 00000002h
007DD9BC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007DD9C1: add esp, 0000000Ch
007DD9C4: lea eax, var_50
007DD9C7: push eax
007DD9C8: lea eax, var_4C
007DD9CB: push eax
007DD9CC: lea eax, var_48
007DD9CF: push eax
007DD9D0: lea eax, var_44
007DD9D3: push eax
007DD9D4: lea eax, var_40
007DD9D7: push eax
007DD9D8: push 00000005h
007DD9DA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DD9DF: add esp, 00000018h
007DD9E2: lea eax, var_000000A0
007DD9E8: push eax
007DD9E9: lea eax, var_00000090
007DD9EF: push eax
007DD9F0: lea eax, var_80
007DD9F3: push eax
007DD9F4: lea eax, var_70
007DD9F7: push eax
007DD9F8: lea eax, var_60
007DD9FB: push eax
007DD9FC: push 00000005h
007DD9FE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DDA03: add esp, 00000018h
007DDA06: mov var_04, 00000017h
007DDA0D: push 00000000h
007DDA0F: push 00000000h
007DDA11: mov eax, [ebp+08h]
007DDA14: mov eax, [eax]
007DDA16: push [ebp+08h]
007DDA19: call [eax+00000318h]
007DDA1F: push eax
007DDA20: lea eax, var_40
007DDA23: push eax
007DDA24: call 00410A84h ; Set (object)
007DDA29: push eax
007DDA2A: lea eax, var_60
007DDA2D: push eax
007DDA2E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DDA33: add esp, 00000010h
007DDA36: push eax
007DDA37: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007DDA3C: dec eax
007DDA3D: neg eax
007DDA3F: sbb eax, eax
007DDA41: inc eax
007DDA42: neg eax
007DDA44: mov var_00000110, ax
007DDA4B: lea ecx, var_40
007DDA4E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007DDA53: lea ecx, var_60
007DDA56: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007DDA5B: movsx eax, word ptr var_00000110
007DDA62: test eax, eax
007DDA64: jz 007DDBBAh
007DDA6A: mov var_04, 00000018h
007DDA71: mov var_000000CC, 00000004h
007DDA7B: mov var_000000D4, 00000003h
007DDA85: mov var_000000EC, 0044757Ch
007DDA8F: mov var_000000F4, 00000008h
007DDA99: lea eax, var_30
007DDA9C: mov var_000000BC, eax
007DDAA2: mov var_000000C4, 0000400Ch
007DDAAC: cmp [008F2010h], 00000000h
007DDAB3: jnz 7DDAD0h
007DDAB5: push 008F2010h
007DDABA: push 00433984h
007DDABF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007DDAC4: mov var_0000016C, 008F2010h
007DDACE: jmp 7DDADAh
007DDAD0: mov var_0000016C, 008F2010h
007DDADA: push 00000010h
007DDADC: pop eax
007DDADD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DDAE2: lea esi, var_000000D4
007DDAE8: mov edi, esp
007DDAEA: movsd 
007DDAEB: movsd 
007DDAEC: movsd 
007DDAED: movsd 
007DDAEE: push 00000010h
007DDAF0: pop eax
007DDAF1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DDAF6: lea esi, var_000000F4
007DDAFC: mov edi, esp
007DDAFE: movsd 
007DDAFF: movsd 
007DDB00: movsd 
007DDB01: movsd 
007DDB02: push 00000001h
007DDB04: push 00000010h
007DDB06: push 00440E58h
007DDB0B: push 00000010h
007DDB0D: pop eax
007DDB0E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DDB13: lea esi, var_000000C4
007DDB19: mov edi, esp
007DDB1B: movsd 
007DDB1C: movsd 
007DDB1D: movsd 
007DDB1E: movsd 
007DDB1F: push 00000001h
007DDB21: push 00000000h
007DDB23: push 00440E48h
007DDB28: push 00000000h
007DDB2A: push 00000018h
007DDB2C: mov eax, var_0000016C
007DDB32: mov eax, [eax]
007DDB34: mov ecx, var_0000016C
007DDB3A: mov ecx, [ecx]
007DDB3C: mov ecx, [ecx]
007DDB3E: push eax
007DDB3F: call [ecx+00000550h]
007DDB45: push eax
007DDB46: lea eax, var_40
007DDB49: push eax
007DDB4A: call 00410A84h ; Set (object)
007DDB4F: push eax
007DDB50: lea eax, var_60
007DDB53: push eax
007DDB54: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DDB59: add esp, 00000010h
007DDB5C: push eax
007DDB5D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DDB62: push eax
007DDB63: lea eax, var_44
007DDB66: push eax
007DDB67: call 00410A84h ; Set (object)
007DDB6C: push eax
007DDB6D: lea eax, var_70
007DDB70: push eax
007DDB71: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DDB76: add esp, 00000020h
007DDB79: push eax
007DDB7A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DDB7F: push eax
007DDB80: lea eax, var_48
007DDB83: push eax
007DDB84: call 00410A84h ; Set (object)
007DDB89: push eax
007DDB8A: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
007DDB8F: add esp, 0000002Ch
007DDB92: lea eax, var_48
007DDB95: push eax
007DDB96: lea eax, var_44
007DDB99: push eax
007DDB9A: lea eax, var_40
007DDB9D: push eax
007DDB9E: push 00000003h
007DDBA0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DDBA5: add esp, 00000010h
007DDBA8: lea eax, var_70
007DDBAB: push eax
007DDBAC: lea eax, var_60
007DDBAF: push eax
007DDBB0: push 00000002h
007DDBB2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DDBB7: add esp, 0000000Ch
007DDBBA: mov var_04, 0000001Ah
007DDBC1: push 00000000h
007DDBC3: push 00000000h
007DDBC5: mov eax, [ebp+08h]
007DDBC8: mov eax, [eax]
007DDBCA: push [ebp+08h]
007DDBCD: call [eax+0000030Ch]
007DDBD3: push eax
007DDBD4: lea eax, var_40
007DDBD7: push eax
007DDBD8: call 00410A84h ; Set (object)
007DDBDD: push eax
007DDBDE: lea eax, var_60
007DDBE1: push eax
007DDBE2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DDBE7: add esp, 00000010h
007DDBEA: push eax
007DDBEB: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007DDBF0: dec eax
007DDBF1: neg eax
007DDBF3: sbb eax, eax
007DDBF5: inc eax
007DDBF6: neg eax
007DDBF8: mov var_00000110, ax
007DDBFF: lea ecx, var_40
007DDC02: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007DDC07: lea ecx, var_60
007DDC0A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007DDC0F: movsx eax, word ptr var_00000110
007DDC16: test eax, eax
007DDC18: jz 007DDD6Eh
007DDC1E: mov var_04, 0000001Bh
007DDC25: mov var_000000CC, 00000005h
007DDC2F: mov var_000000D4, 00000003h
007DDC39: mov var_000000EC, 0044757Ch
007DDC43: mov var_000000F4, 00000008h
007DDC4D: lea eax, var_30
007DDC50: mov var_000000BC, eax
007DDC56: mov var_000000C4, 0000400Ch
007DDC60: cmp [008F2010h], 00000000h
007DDC67: jnz 7DDC84h
007DDC69: push 008F2010h
007DDC6E: push 00433984h
007DDC73: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007DDC78: mov var_00000170, 008F2010h
007DDC82: jmp 7DDC8Eh
007DDC84: mov var_00000170, 008F2010h
007DDC8E: push 00000010h
007DDC90: pop eax
007DDC91: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DDC96: lea esi, var_000000D4
007DDC9C: mov edi, esp
007DDC9E: movsd 
007DDC9F: movsd 
007DDCA0: movsd 
007DDCA1: movsd 
007DDCA2: push 00000010h
007DDCA4: pop eax
007DDCA5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DDCAA: lea esi, var_000000F4
007DDCB0: mov edi, esp
007DDCB2: movsd 
007DDCB3: movsd 
007DDCB4: movsd 
007DDCB5: movsd 
007DDCB6: push 00000001h
007DDCB8: push 00000010h
007DDCBA: push 00440E58h
007DDCBF: push 00000010h
007DDCC1: pop eax
007DDCC2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DDCC7: lea esi, var_000000C4
007DDCCD: mov edi, esp
007DDCCF: movsd 
007DDCD0: movsd 
007DDCD1: movsd 
007DDCD2: movsd 
007DDCD3: push 00000001h
007DDCD5: push 00000000h
007DDCD7: push 00440E48h
007DDCDC: push 00000000h
007DDCDE: push 00000018h
007DDCE0: mov eax, var_00000170
007DDCE6: mov eax, [eax]
007DDCE8: mov ecx, var_00000170
007DDCEE: mov ecx, [ecx]
007DDCF0: mov ecx, [ecx]
007DDCF2: push eax
007DDCF3: call [ecx+00000550h]
007DDCF9: push eax
007DDCFA: lea eax, var_40
007DDCFD: push eax
007DDCFE: call 00410A84h ; Set (object)
007DDD03: push eax
007DDD04: lea eax, var_60
007DDD07: push eax
007DDD08: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DDD0D: add esp, 00000010h
007DDD10: push eax
007DDD11: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DDD16: push eax
007DDD17: lea eax, var_44
007DDD1A: push eax
007DDD1B: call 00410A84h ; Set (object)
007DDD20: push eax
007DDD21: lea eax, var_70
007DDD24: push eax
007DDD25: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DDD2A: add esp, 00000020h
007DDD2D: push eax
007DDD2E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DDD33: push eax
007DDD34: lea eax, var_48
007DDD37: push eax
007DDD38: call 00410A84h ; Set (object)
007DDD3D: push eax
007DDD3E: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
007DDD43: add esp, 0000002Ch
007DDD46: lea eax, var_48
007DDD49: push eax
007DDD4A: lea eax, var_44
007DDD4D: push eax
007DDD4E: lea eax, var_40
007DDD51: push eax
007DDD52: push 00000003h
007DDD54: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DDD59: add esp, 00000010h
007DDD5C: lea eax, var_70
007DDD5F: push eax
007DDD60: lea eax, var_60
007DDD63: push eax
007DDD64: push 00000002h
007DDD66: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DDD6B: add esp, 0000000Ch
007DDD6E: mov var_04, 0000001Dh
007DDD75: call 0041096Ah ; DoEvents
007DDD7A: mov var_04, 0000001Fh
007DDD81: lea eax, var_00000138
007DDD87: push eax
007DDD88: lea eax, var_00000128
007DDD8E: push eax
007DDD8F: lea eax, var_30
007DDD92: push eax
007DDD93: call 00410A36h ; Next
007DDD98: mov var_00000150, eax
007DDD9E: cmp var_00000150, 00000000h
007DDDA5: jnz 007DD5E0h
007DDDAB: mov var_04, 00000020h
007DDDB2: mov eax, [ebp+08h]
007DDDB5: mov eax, [eax]
007DDDB7: push [ebp+08h]
007DDDBA: call [eax+00000300h]
007DDDC0: push eax
007DDDC1: lea eax, var_40
007DDDC4: push eax
007DDDC5: call 00410A84h ; Set (object)
007DDDCA: mov var_00000110, eax
007DDDD0: push 00448420h ; Status: Spreader activated
007DDDD5: mov eax, var_00000110
007DDDDB: mov eax, [eax]
007DDDDD: push var_00000110
007DDDE3: call [eax+54h]
007DDDE6: fclex 
007DDDE8: mov var_00000114, eax
007DDDEE: cmp var_00000114, 00000000h
007DDDF5: jnl 7DDE17h
007DDDF7: push 00000054h
007DDDF9: push 004425E4h
007DDDFE: push var_00000110
007DDE04: push var_00000114
007DDE0A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DDE0F: mov var_00000174, eax
007DDE15: jmp 7DDE1Eh
007DDE17: and var_00000174, 00000000h
007DDE1E: lea ecx, var_40
007DDE21: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007DDE26: mov var_10, 00000000h
007DDE2D: wait 
007DDE2E: push 007DDEC8h
007DDE33: jmp 7DDE9Fh
007DDE35: lea eax, var_3C
007DDE38: push eax
007DDE39: lea eax, var_38
007DDE3C: push eax
007DDE3D: push 00000002h
007DDE3F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007DDE44: add esp, 0000000Ch
007DDE47: lea eax, var_50
007DDE4A: push eax
007DDE4B: lea eax, var_4C
007DDE4E: push eax
007DDE4F: lea eax, var_48
007DDE52: push eax
007DDE53: lea eax, var_44
007DDE56: push eax
007DDE57: lea eax, var_40
007DDE5A: push eax
007DDE5B: push 00000005h
007DDE5D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DDE62: add esp, 00000018h
007DDE65: lea eax, var_000000B0
007DDE6B: push eax
007DDE6C: lea eax, var_000000A0
007DDE72: push eax
007DDE73: lea eax, var_00000090
007DDE79: push eax
007DDE7A: lea eax, var_80
007DDE7D: push eax
007DDE7E: lea eax, var_70
007DDE81: push eax
007DDE82: lea eax, var_60
007DDE85: push eax
007DDE86: push 00000006h
007DDE88: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DDE8D: add esp, 0000001Ch
007DDE90: lea eax, var_000000B4
007DDE96: push eax
007DDE97: push 00000000h
007DDE99: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
007DDE9E: ret 
End Sub

Private sub cmdStoppa__7DDEE7
007DDEE7: push ebp
007DDEE8: mov ebp, esp
007DDEEA: sub esp, 00000018h
007DDEED: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007DDEF2: mov eax, fs:[00h]
007DDEF8: push eax
007DDEF9: mov fs:[00000000h], esp
007DDF00: mov eax, 0000012Ch
007DDF05: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DDF0A: push ebx
007DDF0B: push esi
007DDF0C: push edi
007DDF0D: mov var_18, esp
007DDF10: mov var_14, 004096E0h
007DDF17: mov eax, [ebp+08h]
007DDF1A: and eax, 00000001h
007DDF1D: mov var_10, eax
007DDF20: mov eax, [ebp+08h]
007DDF23: and al, FEh
007DDF25: mov [ebp+08h], eax
007DDF28: mov var_0C, 00000000h
007DDF2F: mov eax, [ebp+08h]
007DDF32: mov eax, [eax]
007DDF34: push [ebp+08h]
007DDF37: call [eax+04h]
007DDF3A: mov var_04, 00000001h
007DDF41: mov var_04, 00000002h
007DDF48: push FFFFFFFFh
007DDF4A: call 00410A60h ; On Error ...
007DDF4F: mov var_04, 00000003h
007DDF56: mov var_000000A4, 00000001h
007DDF60: mov var_000000AC, 00000002h
007DDF6A: cmp [008F2010h], 00000000h
007DDF71: jnz 7DDF8Eh
007DDF73: push 008F2010h
007DDF78: push 00433984h
007DDF7D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007DDF82: mov var_00000138, 008F2010h
007DDF8C: jmp 7DDF98h
007DDF8E: mov var_00000138, 008F2010h
007DDF98: push 00000000h
007DDF9A: push 00000001h
007DDF9C: push 00440E48h
007DDFA1: push 00000000h
007DDFA3: push 00000018h
007DDFA5: mov eax, var_00000138
007DDFAB: mov eax, [eax]
007DDFAD: mov ecx, var_00000138
007DDFB3: mov ecx, [ecx]
007DDFB5: mov ecx, [ecx]
007DDFB7: push eax
007DDFB8: call [ecx+00000550h]
007DDFBE: push eax
007DDFBF: lea eax, var_3C
007DDFC2: push eax
007DDFC3: call 00410A84h ; Set (object)
007DDFC8: push eax
007DDFC9: lea eax, var_58
007DDFCC: push eax
007DDFCD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DDFD2: add esp, 00000010h
007DDFD5: push eax
007DDFD6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DDFDB: push eax
007DDFDC: lea eax, var_40
007DDFDF: push eax
007DDFE0: call 00410A84h ; Set (object)
007DDFE5: push eax
007DDFE6: lea eax, var_68
007DDFE9: push eax
007DDFEA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DDFEF: add esp, 00000010h
007DDFF2: push eax
007DDFF3: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007DDFF8: mov var_000000B4, eax
007DDFFE: mov var_000000BC, 00000003h
007DE008: mov var_000000C4, 00000001h
007DE012: mov var_000000CC, 00000002h
007DE01C: lea eax, var_000000AC
007DE022: push eax
007DE023: lea eax, var_000000BC
007DE029: push eax
007DE02A: lea eax, var_000000CC
007DE030: push eax
007DE031: lea eax, var_0000011C
007DE037: push eax
007DE038: lea eax, var_0000010C
007DE03E: push eax
007DE03F: lea eax, var_30
007DE042: push eax
007DE043: call 00410A3Ch ; For
007DE048: mov var_00000134, eax
007DE04E: lea eax, var_40
007DE051: push eax
007DE052: lea eax, var_3C
007DE055: push eax
007DE056: push 00000002h
007DE058: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DE05D: add esp, 0000000Ch
007DE060: lea eax, var_68
007DE063: push eax
007DE064: lea eax, var_58
007DE067: push eax
007DE068: push 00000002h
007DE06A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DE06F: add esp, 0000000Ch
007DE072: jmp 007DE6CFh
007DE077: mov var_04, 00000004h
007DE07E: lea eax, var_30
007DE081: mov var_000000A4, eax
007DE087: mov var_000000AC, 0000400Ch
007DE091: cmp [008F2010h], 00000000h
007DE098: jnz 7DE0B5h
007DE09A: push 008F2010h
007DE09F: push 00433984h
007DE0A4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007DE0A9: mov var_0000013C, 008F2010h
007DE0B3: jmp 7DE0BFh
007DE0B5: mov var_0000013C, 008F2010h
007DE0BF: push 00000000h
007DE0C1: push 00000004h
007DE0C3: push 00440E58h
007DE0C8: push 00000010h
007DE0CA: pop eax
007DE0CB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DE0D0: lea esi, var_000000AC
007DE0D6: mov edi, esp
007DE0D8: movsd 
007DE0D9: movsd 
007DE0DA: movsd 
007DE0DB: movsd 
007DE0DC: push 00000001h
007DE0DE: push 00000000h
007DE0E0: push 00440E48h
007DE0E5: push 00000000h
007DE0E7: push 00000018h
007DE0E9: mov eax, var_0000013C
007DE0EF: mov eax, [eax]
007DE0F1: mov ecx, var_0000013C
007DE0F7: mov ecx, [ecx]
007DE0F9: mov ecx, [ecx]
007DE0FB: push eax
007DE0FC: call [ecx+00000550h]
007DE102: push eax
007DE103: lea eax, var_3C
007DE106: push eax
007DE107: call 00410A84h ; Set (object)
007DE10C: push eax
007DE10D: lea eax, var_58
007DE110: push eax
007DE111: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DE116: add esp, 00000010h
007DE119: push eax
007DE11A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DE11F: push eax
007DE120: lea eax, var_40
007DE123: push eax
007DE124: call 00410A84h ; Set (object)
007DE129: push eax
007DE12A: lea eax, var_68
007DE12D: push eax
007DE12E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DE133: add esp, 00000020h
007DE136: push eax
007DE137: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DE13C: push eax
007DE13D: lea eax, var_44
007DE140: push eax
007DE141: call 00410A84h ; Set (object)
007DE146: push eax
007DE147: lea eax, var_78
007DE14A: push eax
007DE14B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DE150: add esp, 00000010h
007DE153: push eax
007DE154: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
007DE159: sub ax, FFFFh
007DE15D: neg ax
007DE160: sbb eax, eax
007DE162: inc eax
007DE163: neg eax
007DE165: mov var_000000F8, ax
007DE16C: lea eax, var_44
007DE16F: push eax
007DE170: lea eax, var_40
007DE173: push eax
007DE174: lea eax, var_3C
007DE177: push eax
007DE178: push 00000003h
007DE17A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DE17F: add esp, 00000010h
007DE182: lea eax, var_78
007DE185: push eax
007DE186: lea eax, var_68
007DE189: push eax
007DE18A: lea eax, var_58
007DE18D: push eax
007DE18E: push 00000003h
007DE190: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DE195: add esp, 00000010h
007DE198: movsx eax, word ptr var_000000F8
007DE19F: test eax, eax
007DE1A1: jz 007DE6ABh
007DE1A7: mov var_04, 00000005h
007DE1AE: lea eax, var_30
007DE1B1: mov var_000000A4, eax
007DE1B7: mov var_000000AC, 0000400Ch
007DE1C1: cmp [008F2010h], 00000000h
007DE1C8: jnz 7DE1E5h
007DE1CA: push 008F2010h
007DE1CF: push 00433984h
007DE1D4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007DE1D9: mov var_00000140, 008F2010h
007DE1E3: jmp 7DE1EFh
007DE1E5: mov var_00000140, 008F2010h
007DE1EF: push 00000000h
007DE1F1: push 00000014h
007DE1F3: push 00440E58h
007DE1F8: push 00000010h
007DE1FA: pop eax
007DE1FB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DE200: lea esi, var_000000AC
007DE206: mov edi, esp
007DE208: movsd 
007DE209: movsd 
007DE20A: movsd 
007DE20B: movsd 
007DE20C: push 00000001h
007DE20E: push 00000000h
007DE210: push 00440E48h
007DE215: push 00000000h
007DE217: push 00000018h
007DE219: mov eax, var_00000140
007DE21F: mov eax, [eax]
007DE221: mov ecx, var_00000140
007DE227: mov ecx, [ecx]
007DE229: mov ecx, [ecx]
007DE22B: push eax
007DE22C: call [ecx+00000550h]
007DE232: push eax
007DE233: lea eax, var_3C
007DE236: push eax
007DE237: call 00410A84h ; Set (object)
007DE23C: push eax
007DE23D: lea eax, var_58
007DE240: push eax
007DE241: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DE246: add esp, 00000010h
007DE249: push eax
007DE24A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DE24F: push eax
007DE250: lea eax, var_40
007DE253: push eax
007DE254: call 00410A84h ; Set (object)
007DE259: push eax
007DE25A: lea eax, var_68
007DE25D: push eax
007DE25E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DE263: add esp, 00000020h
007DE266: push eax
007DE267: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DE26C: push eax
007DE26D: lea eax, var_44
007DE270: push eax
007DE271: call 00410A84h ; Set (object)
007DE276: push eax
007DE277: lea eax, var_78
007DE27A: push eax
007DE27B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DE280: add esp, 00000010h
007DE283: push eax
007DE284: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
007DE289: mov edx, eax
007DE28B: lea ecx, var_34
007DE28E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
007DE293: push eax
007DE294: call 004109DCh ; Val(arg_1)
007DE299: fstp real8 ptr var_000000F4
007DE29F: push 00000000h
007DE2A1: push 00000002h
007DE2A3: push 00000001h
007DE2A5: push 00000000h
007DE2A7: lea eax, var_0000009C
007DE2AD: push eax
007DE2AE: push 00000010h
007DE2B0: push 00000880h
007DE2B5: call 00410946h ; ReDim
007DE2BA: add esp, 0000001Ch
007DE2BD: mov var_000000B4, 00442930h
007DE2C7: mov var_000000BC, 00000008h
007DE2D1: lea esi, var_000000BC
007DE2D7: push 00000000h
007DE2D9: push var_0000009C
007DE2DF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007DE2E4: mov ecx, eax
007DE2E6: mov edx, esi
007DE2E8: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
007DE2ED: push 00000000h
007DE2EF: push 00000000h
007DE2F1: mov eax, [ebp+08h]
007DE2F4: mov eax, [eax]
007DE2F6: push [ebp+08h]
007DE2F9: call [eax+0000030Ch]
007DE2FF: push eax
007DE300: lea eax, var_48
007DE303: push eax
007DE304: call 00410A84h ; Set (object)
007DE309: push eax
007DE30A: lea eax, var_00000088
007DE310: push eax
007DE311: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DE316: add esp, 00000010h
007DE319: push eax
007DE31A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007DE31F: mov var_000000C4, eax
007DE325: mov var_000000CC, 00000003h
007DE32F: lea esi, var_000000CC
007DE335: push 00000001h
007DE337: push var_0000009C
007DE33D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007DE342: mov ecx, eax
007DE344: mov edx, esi
007DE346: call 00410922h ; msvbvm60.dll.__vbaVarMove
007DE34B: mov eax, [ebp+08h]
007DE34E: mov eax, [eax]
007DE350: push [ebp+08h]
007DE353: call [eax+000002FCh]
007DE359: mov var_00000090, eax
007DE35F: mov var_00000098, 00000009h
007DE369: lea esi, var_00000098
007DE36F: push 00000002h
007DE371: push var_0000009C
007DE377: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
007DE37C: mov ecx, eax
007DE37E: mov edx, esi
007DE380: call 00410940h ; msvbvm60.dll.__vbaVarZero
007DE385: mov edx, 0043D41Ch ; x1
007DE38A: lea ecx, var_38
007DE38D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
007DE392: lea eax, var_0000009C
007DE398: push eax
007DE399: lea eax, var_38
007DE39C: push eax
007DE39D: fld real8 ptr var_000000F4
007DE3A3: call 004108E6h ; msvbvm60.dll.__vbaFpI2
007DE3A8: push eax
007DE3A9: call 007A6910h
007DE3AE: lea eax, var_0000009C
007DE3B4: push eax
007DE3B5: push 00000000h
007DE3B7: call 00410934h ; Erase
007DE3BC: lea eax, var_38
007DE3BF: push eax
007DE3C0: lea eax, var_34
007DE3C3: push eax
007DE3C4: push 00000002h
007DE3C6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007DE3CB: add esp, 0000000Ch
007DE3CE: lea eax, var_48
007DE3D1: push eax
007DE3D2: lea eax, var_44
007DE3D5: push eax
007DE3D6: lea eax, var_40
007DE3D9: push eax
007DE3DA: lea eax, var_3C
007DE3DD: push eax
007DE3DE: push 00000004h
007DE3E0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DE3E5: add esp, 00000014h
007DE3E8: lea eax, var_00000088
007DE3EE: push eax
007DE3EF: lea eax, var_78
007DE3F2: push eax
007DE3F3: lea eax, var_68
007DE3F6: push eax
007DE3F7: lea eax, var_58
007DE3FA: push eax
007DE3FB: push 00000004h
007DE3FD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DE402: add esp, 00000014h
007DE405: mov var_04, 00000006h
007DE40C: mov var_000000B4, 00000004h
007DE416: mov var_000000BC, 00000003h
007DE420: and var_000000D4, 00000000h
007DE427: mov var_000000DC, 00000008h
007DE431: lea eax, var_30
007DE434: mov var_000000A4, eax
007DE43A: mov var_000000AC, 0000400Ch
007DE444: cmp [008F2010h], 00000000h
007DE44B: jnz 7DE468h
007DE44D: push 008F2010h
007DE452: push 00433984h
007DE457: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007DE45C: mov var_00000144, 008F2010h
007DE466: jmp 7DE472h
007DE468: mov var_00000144, 008F2010h
007DE472: push 00000010h
007DE474: pop eax
007DE475: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DE47A: lea esi, var_000000BC
007DE480: mov edi, esp
007DE482: movsd 
007DE483: movsd 
007DE484: movsd 
007DE485: movsd 
007DE486: push 00000010h
007DE488: pop eax
007DE489: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DE48E: lea esi, var_000000DC
007DE494: mov edi, esp
007DE496: movsd 
007DE497: movsd 
007DE498: movsd 
007DE499: movsd 
007DE49A: push 00000001h
007DE49C: push 00000010h
007DE49E: push 00440E58h
007DE4A3: push 00000010h
007DE4A5: pop eax
007DE4A6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DE4AB: lea esi, var_000000AC
007DE4B1: mov edi, esp
007DE4B3: movsd 
007DE4B4: movsd 
007DE4B5: movsd 
007DE4B6: movsd 
007DE4B7: push 00000001h
007DE4B9: push 00000000h
007DE4BB: push 00440E48h
007DE4C0: push 00000000h
007DE4C2: push 00000018h
007DE4C4: mov eax, var_00000144
007DE4CA: mov eax, [eax]
007DE4CC: mov ecx, var_00000144
007DE4D2: mov ecx, [ecx]
007DE4D4: mov ecx, [ecx]
007DE4D6: push eax
007DE4D7: call [ecx+00000550h]
007DE4DD: push eax
007DE4DE: lea eax, var_3C
007DE4E1: push eax
007DE4E2: call 00410A84h ; Set (object)
007DE4E7: push eax
007DE4E8: lea eax, var_58
007DE4EB: push eax
007DE4EC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DE4F1: add esp, 00000010h
007DE4F4: push eax
007DE4F5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DE4FA: push eax
007DE4FB: lea eax, var_40
007DE4FE: push eax
007DE4FF: call 00410A84h ; Set (object)
007DE504: push eax
007DE505: lea eax, var_68
007DE508: push eax
007DE509: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DE50E: add esp, 00000020h
007DE511: push eax
007DE512: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DE517: push eax
007DE518: lea eax, var_44
007DE51B: push eax
007DE51C: call 00410A84h ; Set (object)
007DE521: push eax
007DE522: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
007DE527: add esp, 0000002Ch
007DE52A: lea eax, var_44
007DE52D: push eax
007DE52E: lea eax, var_40
007DE531: push eax
007DE532: lea eax, var_3C
007DE535: push eax
007DE536: push 00000003h
007DE538: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DE53D: add esp, 00000010h
007DE540: lea eax, var_68
007DE543: push eax
007DE544: lea eax, var_58
007DE547: push eax
007DE548: push 00000002h
007DE54A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DE54F: add esp, 0000000Ch
007DE552: mov var_04, 00000007h
007DE559: mov var_000000B4, 00000005h
007DE563: mov var_000000BC, 00000003h
007DE56D: and var_000000D4, 00000000h
007DE574: mov var_000000DC, 00000008h
007DE57E: lea eax, var_30
007DE581: mov var_000000A4, eax
007DE587: mov var_000000AC, 0000400Ch
007DE591: cmp [008F2010h], 00000000h
007DE598: jnz 7DE5B5h
007DE59A: push 008F2010h
007DE59F: push 00433984h
007DE5A4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
007DE5A9: mov var_00000148, 008F2010h
007DE5B3: jmp 7DE5BFh
007DE5B5: mov var_00000148, 008F2010h
007DE5BF: push 00000010h
007DE5C1: pop eax
007DE5C2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DE5C7: lea esi, var_000000BC
007DE5CD: mov edi, esp
007DE5CF: movsd 
007DE5D0: movsd 
007DE5D1: movsd 
007DE5D2: movsd 
007DE5D3: push 00000010h
007DE5D5: pop eax
007DE5D6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DE5DB: lea esi, var_000000DC
007DE5E1: mov edi, esp
007DE5E3: movsd 
007DE5E4: movsd 
007DE5E5: movsd 
007DE5E6: movsd 
007DE5E7: push 00000001h
007DE5E9: push 00000010h
007DE5EB: push 00440E58h
007DE5F0: push 00000010h
007DE5F2: pop eax
007DE5F3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DE5F8: lea esi, var_000000AC
007DE5FE: mov edi, esp
007DE600: movsd 
007DE601: movsd 
007DE602: movsd 
007DE603: movsd 
007DE604: push 00000001h
007DE606: push 00000000h
007DE608: push 00440E48h
007DE60D: push 00000000h
007DE60F: push 00000018h
007DE611: mov eax, var_00000148
007DE617: mov eax, [eax]
007DE619: mov ecx, var_00000148
007DE61F: mov ecx, [ecx]
007DE621: mov ecx, [ecx]
007DE623: push eax
007DE624: call [ecx+00000550h]
007DE62A: push eax
007DE62B: lea eax, var_3C
007DE62E: push eax
007DE62F: call 00410A84h ; Set (object)
007DE634: push eax
007DE635: lea eax, var_58
007DE638: push eax
007DE639: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DE63E: add esp, 00000010h
007DE641: push eax
007DE642: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DE647: push eax
007DE648: lea eax, var_40
007DE64B: push eax
007DE64C: call 00410A84h ; Set (object)
007DE651: push eax
007DE652: lea eax, var_68
007DE655: push eax
007DE656: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DE65B: add esp, 00000020h
007DE65E: push eax
007DE65F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
007DE664: push eax
007DE665: lea eax, var_44
007DE668: push eax
007DE669: call 00410A84h ; Set (object)
007DE66E: push eax
007DE66F: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
007DE674: add esp, 0000002Ch
007DE677: lea eax, var_44
007DE67A: push eax
007DE67B: lea eax, var_40
007DE67E: push eax
007DE67F: lea eax, var_3C
007DE682: push eax
007DE683: push 00000003h
007DE685: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DE68A: add esp, 00000010h
007DE68D: lea eax, var_68
007DE690: push eax
007DE691: lea eax, var_58
007DE694: push eax
007DE695: push 00000002h
007DE697: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DE69C: add esp, 0000000Ch
007DE69F: mov var_04, 00000008h
007DE6A6: call 0041096Ah ; DoEvents
007DE6AB: mov var_04, 0000000Ah
007DE6B2: lea eax, var_0000011C
007DE6B8: push eax
007DE6B9: lea eax, var_0000010C
007DE6BF: push eax
007DE6C0: lea eax, var_30
007DE6C3: push eax
007DE6C4: call 00410A36h ; Next
007DE6C9: mov var_00000134, eax
007DE6CF: cmp var_00000134, 00000000h
007DE6D6: jnz 007DE077h
007DE6DC: mov var_04, 0000000Bh
007DE6E3: mov eax, [ebp+08h]
007DE6E6: mov eax, [eax]
007DE6E8: push [ebp+08h]
007DE6EB: call [eax+00000300h]
007DE6F1: push eax
007DE6F2: lea eax, var_3C
007DE6F5: push eax
007DE6F6: call 00410A84h ; Set (object)
007DE6FB: mov var_000000F8, eax
007DE701: push 0044845Ch ; Status: Spreader disabled
007DE706: mov eax, var_000000F8
007DE70C: mov eax, [eax]
007DE70E: push var_000000F8
007DE714: call [eax+54h]
007DE717: fclex 
007DE719: mov var_000000FC, eax
007DE71F: cmp var_000000FC, 00000000h
007DE726: jnl 7DE748h
007DE728: push 00000054h
007DE72A: push 004425E4h
007DE72F: push var_000000F8
007DE735: push var_000000FC
007DE73B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DE740: mov var_0000014C, eax
007DE746: jmp 7DE74Fh
007DE748: and var_0000014C, 00000000h
007DE74F: lea ecx, var_3C
007DE752: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007DE757: mov var_10, 00000000h
007DE75E: wait 
007DE75F: push 007DE7E6h
007DE764: jmp 7DE7C5h
007DE766: lea eax, var_38
007DE769: push eax
007DE76A: lea eax, var_34
007DE76D: push eax
007DE76E: push 00000002h
007DE770: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
007DE775: add esp, 0000000Ch
007DE778: lea eax, var_48
007DE77B: push eax
007DE77C: lea eax, var_44
007DE77F: push eax
007DE780: lea eax, var_40
007DE783: push eax
007DE784: lea eax, var_3C
007DE787: push eax
007DE788: push 00000004h
007DE78A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DE78F: add esp, 00000014h
007DE792: lea eax, var_00000098
007DE798: push eax
007DE799: lea eax, var_00000088
007DE79F: push eax
007DE7A0: lea eax, var_78
007DE7A3: push eax
007DE7A4: lea eax, var_68
007DE7A7: push eax
007DE7A8: lea eax, var_58
007DE7AB: push eax
007DE7AC: push 00000005h
007DE7AE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
007DE7B3: add esp, 00000018h
007DE7B6: lea eax, var_0000009C
007DE7BC: push eax
007DE7BD: push 00000000h
007DE7BF: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
007DE7C4: ret 
End Sub

Private sub chkIM__7DCC71
007DCC71: push ebp
007DCC72: mov ebp, esp
007DCC74: sub esp, 0000000Ch
007DCC77: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
007DCC7C: mov eax, fs:[00h]
007DCC82: push eax
007DCC83: mov fs:[00000000h], esp
007DCC8A: push 00000058h
007DCC8C: pop eax
007DCC8D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DCC92: push ebx
007DCC93: push esi
007DCC94: push edi
007DCC95: mov var_0C, esp
007DCC98: mov var_08, 00409628h
007DCC9F: mov eax, [ebp+08h]
007DCCA2: and eax, 00000001h
007DCCA5: mov var_04, eax
007DCCA8: mov eax, [ebp+08h]
007DCCAB: and al, FEh
007DCCAD: mov [ebp+08h], eax
007DCCB0: mov eax, [ebp+08h]
007DCCB3: mov eax, [eax]
007DCCB5: push [ebp+08h]
007DCCB8: call [eax+04h]
007DCCBB: push 00000000h
007DCCBD: push 00000000h
007DCCBF: mov eax, [ebp+08h]
007DCCC2: mov eax, [eax]
007DCCC4: push [ebp+08h]
007DCCC7: call [eax+00000318h]
007DCCCD: push eax
007DCCCE: lea eax, var_18
007DCCD1: push eax
007DCCD2: call 00410A84h ; Set (object)
007DCCD7: push eax
007DCCD8: lea eax, var_2C
007DCCDB: push eax
007DCCDC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
007DCCE1: add esp, 00000010h
007DCCE4: push eax
007DCCE5: call 00410A90h ; msvbvm60.dll.__vbaI4Var
007DCCEA: dec eax
007DCCEB: neg eax
007DCCED: sbb eax, eax
007DCCEF: inc eax
007DCCF0: neg eax
007DCCF2: mov var_50, ax
007DCCF6: lea ecx, var_18
007DCCF9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
007DCCFE: lea ecx, var_2C
007DCD01: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007DCD06: movsx eax, word ptr var_50
007DCD0A: test eax, eax
007DCD0C: jz 007DCE31h
007DCD12: or var_34, FFFFFFFFh
007DCD16: mov var_3C, 0000000Bh
007DCD1D: mov eax, [ebp+08h]
007DCD20: mov eax, [eax]
007DCD22: push [ebp+08h]
007DCD25: call [eax+00000308h]
007DCD2B: push eax
007DCD2C: lea eax, var_18
007DCD2F: push eax
007DCD30: call 00410A84h ; Set (object)
007DCD35: mov var_50, eax
007DCD38: lea eax, var_1C
007DCD3B: push eax
007DCD3C: push 00000000h
007DCD3E: mov eax, var_50
007DCD41: mov eax, [eax]
007DCD43: push var_50
007DCD46: call [eax+40h]
007DCD49: fclex 
007DCD4B: mov var_54, eax
007DCD4E: cmp var_54, 00000000h
007DCD52: jnl 7DCD6Bh
007DCD54: push 00000040h
007DCD56: push 00440DE8h
007DCD5B: push var_50
007DCD5E: push var_54
007DCD61: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DCD66: mov var_60, eax
007DCD69: jmp 7DCD6Fh
007DCD6B: and var_60, 00000000h
007DCD6F: push 00000010h
007DCD71: pop eax
007DCD72: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DCD77: lea esi, var_3C
007DCD7A: mov edi, esp
007DCD7C: movsd 
007DCD7D: movsd 
007DCD7E: movsd 
007DCD7F: movsd 
007DCD80: push 8001000Dh
007DCD85: push var_1C
007DCD88: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007DCD8D: lea eax, var_1C
007DCD90: push eax
007DCD91: lea eax, var_18
007DCD94: push eax
007DCD95: push 00000002h
007DCD97: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DCD9C: add esp, 0000000Ch
007DCD9F: or var_34, FFFFFFFFh
007DCDA3: mov var_3C, 0000000Bh
007DCDAA: mov eax, [ebp+08h]
007DCDAD: mov eax, [eax]
007DCDAF: push [ebp+08h]
007DCDB2: call [eax+00000308h]
007DCDB8: push eax
007DCDB9: lea eax, var_18
007DCDBC: push eax
007DCDBD: call 00410A84h ; Set (object)
007DCDC2: mov var_50, eax
007DCDC5: lea eax, var_1C
007DCDC8: push eax
007DCDC9: push 00000001h
007DCDCB: mov eax, var_50
007DCDCE: mov eax, [eax]
007DCDD0: push var_50
007DCDD3: call [eax+40h]
007DCDD6: fclex 
007DCDD8: mov var_54, eax
007DCDDB: cmp var_54, 00000000h
007DCDDF: jnl 7DCDF8h
007DCDE1: push 00000040h
007DCDE3: push 00440DE8h
007DCDE8: push var_50
007DCDEB: push var_54
007DCDEE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DCDF3: mov var_64, eax
007DCDF6: jmp 7DCDFCh
007DCDF8: and var_64, 00000000h
007DCDFC: push 00000010h
007DCDFE: pop eax
007DCDFF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DCE04: lea esi, var_3C
007DCE07: mov edi, esp
007DCE09: movsd 
007DCE0A: movsd 
007DCE0B: movsd 
007DCE0C: movsd 
007DCE0D: push 8001000Dh
007DCE12: push var_1C
007DCE15: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007DCE1A: lea eax, var_1C
007DCE1D: push eax
007DCE1E: lea eax, var_18
007DCE21: push eax
007DCE22: push 00000002h
007DCE24: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DCE29: add esp, 0000000Ch
007DCE2C: jmp 007DCF4Bh
007DCE31: and var_34, 00000000h
007DCE35: mov var_3C, 0000000Bh
007DCE3C: mov eax, [ebp+08h]
007DCE3F: mov eax, [eax]
007DCE41: push [ebp+08h]
007DCE44: call [eax+00000308h]
007DCE4A: push eax
007DCE4B: lea eax, var_18
007DCE4E: push eax
007DCE4F: call 00410A84h ; Set (object)
007DCE54: mov var_50, eax
007DCE57: lea eax, var_1C
007DCE5A: push eax
007DCE5B: push 00000000h
007DCE5D: mov eax, var_50
007DCE60: mov eax, [eax]
007DCE62: push var_50
007DCE65: call [eax+40h]
007DCE68: fclex 
007DCE6A: mov var_54, eax
007DCE6D: cmp var_54, 00000000h
007DCE71: jnl 7DCE8Ah
007DCE73: push 00000040h
007DCE75: push 00440DE8h
007DCE7A: push var_50
007DCE7D: push var_54
007DCE80: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DCE85: mov var_68, eax
007DCE88: jmp 7DCE8Eh
007DCE8A: and var_68, 00000000h
007DCE8E: push 00000010h
007DCE90: pop eax
007DCE91: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DCE96: lea esi, var_3C
007DCE99: mov edi, esp
007DCE9B: movsd 
007DCE9C: movsd 
007DCE9D: movsd 
007DCE9E: movsd 
007DCE9F: push 8001000Dh
007DCEA4: push var_1C
007DCEA7: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007DCEAC: lea eax, var_1C
007DCEAF: push eax
007DCEB0: lea eax, var_18
007DCEB3: push eax
007DCEB4: push 00000002h
007DCEB6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DCEBB: add esp, 0000000Ch
007DCEBE: and var_34, 00000000h
007DCEC2: mov var_3C, 0000000Bh
007DCEC9: mov eax, [ebp+08h]
007DCECC: mov eax, [eax]
007DCECE: push [ebp+08h]
007DCED1: call [eax+00000308h]
007DCED7: push eax
007DCED8: lea eax, var_18
007DCEDB: push eax
007DCEDC: call 00410A84h ; Set (object)
007DCEE1: mov var_50, eax
007DCEE4: lea eax, var_1C
007DCEE7: push eax
007DCEE8: push 00000001h
007DCEEA: mov eax, var_50
007DCEED: mov eax, [eax]
007DCEEF: push var_50
007DCEF2: call [eax+40h]
007DCEF5: fclex 
007DCEF7: mov var_54, eax
007DCEFA: cmp var_54, 00000000h
007DCEFE: jnl 7DCF17h
007DCF00: push 00000040h
007DCF02: push 00440DE8h
007DCF07: push var_50
007DCF0A: push var_54
007DCF0D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
007DCF12: mov var_6C, eax
007DCF15: jmp 7DCF1Bh
007DCF17: and var_6C, 00000000h
007DCF1B: push 00000010h
007DCF1D: pop eax
007DCF1E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
007DCF23: lea esi, var_3C
007DCF26: mov edi, esp
007DCF28: movsd 
007DCF29: movsd 
007DCF2A: movsd 
007DCF2B: movsd 
007DCF2C: push 8001000Dh
007DCF31: push var_1C
007DCF34: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
007DCF39: lea eax, var_1C
007DCF3C: push eax
007DCF3D: lea eax, var_18
007DCF40: push eax
007DCF41: push 00000002h
007DCF43: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DCF48: add esp, 0000000Ch
007DCF4B: mov var_04, 00000000h
007DCF52: push 007DCF75h
007DCF57: jmp 7DCF74h
007DCF59: lea eax, var_1C
007DCF5C: push eax
007DCF5D: lea eax, var_18
007DCF60: push eax
007DCF61: push 00000002h
007DCF63: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
007DCF68: add esp, 0000000Ch
007DCF6B: lea ecx, var_2C
007DCF6E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
007DCF73: ret 
End Sub

