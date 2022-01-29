VERSION 5.00
Begin VB.Form frmADClicker
  Caption = "AD Clicker"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmADClicker.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 12765
  ClientHeight = 7905
  StartUpPosition = 1 'CenterOwner
  Begin XtremeSuiteControls.ListView lstAds
    Left = 0
    Top = 0
    Width = 12735
    Height = 6135
    TabIndex = 0
  End
  Begin XtremeSuiteControls.GroupBox gbCommands
    Left = 0
    Top = 6240
    Width = 12735
    Height = 1335
    TabIndex = 1
    Begin VB.TextBox txtTime
      Left = 7800
      Top = 480
      Width = 735
      Height = 285
      Text = "1"
      TabIndex = 16
      MaxLength = 3
    End
    Begin VB.TextBox txtPos
      Index = 3
      Left = 5880
      Top = 840
      Width = 735
      Height = 285
      Text = "0"
      TabIndex = 13
      MaxLength = 5
    End
    Begin VB.TextBox txtPos
      Index = 2
      Left = 3960
      Top = 840
      Width = 735
      Height = 285
      Text = "0"
      TabIndex = 11
      MaxLength = 5
    End
    Begin VB.TextBox txtPos
      Index = 1
      Left = 2040
      Top = 840
      Width = 735
      Height = 285
      Text = "0"
      TabIndex = 9
      MaxLength = 5
    End
    Begin VB.TextBox txtPos
      Index = 0
      Left = 600
      Top = 840
      Width = 735
      Height = 285
      Text = "0"
      TabIndex = 7
      MaxLength = 5
    End
    Begin VB.TextBox txtURL
      Left = 600
      Top = 480
      Width = 6015
      Height = 285
      Text = "http://example.com"
      TabIndex = 2
      MaxLength = 1024
    End
    Begin VB.Timer tmrInfo
      Interval = 100
      Left = 11040
      Top = 0
    End
    Begin XtremeSuiteControls.PushButton cmdSet
      Left = 11520
      Top = 840
      Width = 1095
      Height = 375
      TabIndex = 5
    End
    Begin XtremeSuiteControls.PushButton cmdADLocator
      Left = 11520
      Top = 360
      Width = 1095
      Height = 375
      TabIndex = 14
    End
    Begin VB.Label lblSettings
      Caption = "minutes (0 = instant)"
      Index = 6
      Left = 8640
      Top = 480
      Width = 2775
      Height = 255
      TabIndex = 17
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblSettings
      Caption = "Click within:"
      Index = 5
      Left = 6840
      Top = 480
      Width = 855
      Height = 255
      TabIndex = 15
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblSettings
      Caption = "Scroll Y:"
      Index = 4
      Left = 5160
      Top = 840
      Width = 615
      Height = 255
      TabIndex = 12
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblSettings
      Caption = "Scroll X:"
      Index = 3
      Left = 3240
      Top = 840
      Width = 615
      Height = 255
      TabIndex = 10
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblSettings
      Caption = "Y:"
      Index = 2
      Left = 1560
      Top = 840
      Width = 375
      Height = 255
      TabIndex = 8
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblSettings
      Caption = "X:"
      Index = 1
      Left = 120
      Top = 840
      Width = 375
      Height = 255
      TabIndex = 6
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblSettings
      Caption = "URL:"
      Index = 0
      Left = 120
      Top = 480
      Width = 375
      Height = 255
      TabIndex = 3
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
  End
  Begin MSComctlLib.StatusBar sbStatus
    Left = 0
    Top = 7590
    Width = 12765
    Height = 315
    TabIndex = 4
  End
  Begin VB.Menu mnuMenuAds
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuAds
      Index = 0
      Caption = "Copy"
      Begin VB.Menu mnuAdsCopy
        Index = 0
        Caption = "All"
      End
      Begin VB.Menu mnuAdsCopy
        Index = 1
        Caption = "Row"
      End
    End
    Begin VB.Menu mnuAds
      Index = 1
      Caption = "Save to file"
    End
    Begin VB.Menu mnuAds
      Index = 2
      Caption = "-"
    End
    Begin VB.Menu mnuAds
      Index = 3
      Caption = "Clear"
    End
  End
End

Attribute VB_Name = "frmADClicker"


Private sub mnuAdsCopy__8DEE7A
008DEE7A: push ebp
008DEE7B: mov ebp, esp
008DEE7D: sub esp, 00000018h
008DEE80: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008DEE85: mov eax, fs:[00h]
008DEE8B: push eax
008DEE8C: mov fs:[00000000h], esp
008DEE93: mov eax, 000001D0h
008DEE98: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DEE9D: push ebx
008DEE9E: push esi
008DEE9F: push edi
008DEEA0: mov var_18, esp
008DEEA3: mov var_14, 004100C8h
008DEEAA: mov eax, [ebp+08h]
008DEEAD: and eax, 00000001h
008DEEB0: mov var_10, eax
008DEEB3: mov eax, [ebp+08h]
008DEEB6: and al, FEh
008DEEB8: mov [ebp+08h], eax
008DEEBB: mov var_0C, 00000000h
008DEEC2: mov eax, [ebp+08h]
008DEEC5: mov eax, [eax]
008DEEC7: push [ebp+08h]
008DEECA: call [eax+04h]
008DEECD: mov var_04, 00000001h
008DEED4: mov var_04, 00000002h
008DEEDB: push FFFFFFFFh
008DEEDD: call 00410A60h ; On Error ...
008DEEE2: mov var_04, 00000003h
008DEEE9: mov eax, [ebp+0Ch]
008DEEEC: mov ax, [eax]
008DEEEF: mov var_000001A4, ax
008DEEF6: movsx eax, word ptr var_000001A4
008DEEFD: mov var_000001C0, eax
008DEF03: cmp var_000001C0, 00000000h
008DEF0A: jz 8DEF23h
008DEF0C: cmp var_000001C0, 00000001h
008DEF13: jz 008DF4A2h
008DEF19: jmp 008DF9A2h
008DEF1E: jmp 008DF9A2h
008DEF23: mov var_04, 00000005h
008DEF2A: mov var_00000118, 00000001h
008DEF34: mov var_00000120, 00000002h
008DEF3E: push 00000000h
008DEF40: push 00000001h
008DEF42: push 00440E48h
008DEF47: push 00000000h
008DEF49: push 00000018h
008DEF4B: mov eax, [ebp+08h]
008DEF4E: mov eax, [eax]
008DEF50: push [ebp+08h]
008DEF53: call [eax+0000031Ch]
008DEF59: push eax
008DEF5A: lea eax, var_4C
008DEF5D: push eax
008DEF5E: call 00410A84h ; Set (object)
008DEF63: push eax
008DEF64: lea eax, var_80
008DEF67: push eax
008DEF68: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DEF6D: add esp, 00000010h
008DEF70: push eax
008DEF71: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DEF76: push eax
008DEF77: lea eax, var_50
008DEF7A: push eax
008DEF7B: call 00410A84h ; Set (object)
008DEF80: push eax
008DEF81: lea eax, var_00000090
008DEF87: push eax
008DEF88: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DEF8D: add esp, 00000010h
008DEF90: push eax
008DEF91: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008DEF96: mov var_00000128, eax
008DEF9C: mov var_00000130, 00000003h
008DEFA6: mov var_00000138, 00000001h
008DEFB0: mov var_00000140, 00000002h
008DEFBA: lea eax, var_00000120
008DEFC0: push eax
008DEFC1: lea eax, var_00000130
008DEFC7: push eax
008DEFC8: lea eax, var_00000140
008DEFCE: push eax
008DEFCF: lea eax, var_000001A0
008DEFD5: push eax
008DEFD6: lea eax, var_00000190
008DEFDC: push eax
008DEFDD: lea eax, var_30
008DEFE0: push eax
008DEFE1: call 00410A3Ch ; For
008DEFE6: mov var_000001BC, eax
008DEFEC: lea eax, var_50
008DEFEF: push eax
008DEFF0: lea eax, var_4C
008DEFF3: push eax
008DEFF4: push 00000002h
008DEFF6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DEFFB: add esp, 0000000Ch
008DEFFE: lea eax, var_00000090
008DF004: push eax
008DF005: lea eax, var_80
008DF008: push eax
008DF009: push 00000002h
008DF00B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DF010: add esp, 0000000Ch
008DF013: jmp 008DF291h
008DF018: mov var_04, 00000006h
008DF01F: lea eax, var_30
008DF022: mov var_00000118, eax
008DF028: mov var_00000120, 0000400Ch
008DF032: mov var_00000138, 00000001h
008DF03C: mov var_00000140, 00000003h
008DF046: lea eax, var_30
008DF049: mov var_00000128, eax
008DF04F: mov var_00000130, 0000400Ch
008DF059: push var_34
008DF05C: push 00000000h
008DF05E: push 00000000h
008DF060: push 00440E58h
008DF065: push 00000010h
008DF067: pop eax
008DF068: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DF06D: lea esi, var_00000120
008DF073: mov edi, esp
008DF075: movsd 
008DF076: movsd 
008DF077: movsd 
008DF078: movsd 
008DF079: push 00000001h
008DF07B: push 00000000h
008DF07D: push 00440E48h
008DF082: push 00000000h
008DF084: push 00000018h
008DF086: mov eax, [ebp+08h]
008DF089: mov eax, [eax]
008DF08B: push [ebp+08h]
008DF08E: call [eax+0000031Ch]
008DF094: push eax
008DF095: lea eax, var_4C
008DF098: push eax
008DF099: call 00410A84h ; Set (object)
008DF09E: push eax
008DF09F: lea eax, var_80
008DF0A2: push eax
008DF0A3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DF0A8: add esp, 00000010h
008DF0AB: push eax
008DF0AC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DF0B1: push eax
008DF0B2: lea eax, var_50
008DF0B5: push eax
008DF0B6: call 00410A84h ; Set (object)
008DF0BB: push eax
008DF0BC: lea eax, var_00000090
008DF0C2: push eax
008DF0C3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DF0C8: add esp, 00000020h
008DF0CB: push eax
008DF0CC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DF0D1: push eax
008DF0D2: lea eax, var_54
008DF0D5: push eax
008DF0D6: call 00410A84h ; Set (object)
008DF0DB: push eax
008DF0DC: lea eax, var_000000A0
008DF0E2: push eax
008DF0E3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DF0E8: add esp, 00000010h
008DF0EB: push eax
008DF0EC: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008DF0F1: mov edx, eax
008DF0F3: lea ecx, var_38
008DF0F6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DF0FB: push eax
008DF0FC: call 00410A18h ; &
008DF101: mov edx, eax
008DF103: lea ecx, var_3C
008DF106: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DF10B: push eax
008DF10C: push 004412B8h
008DF111: call 00410A18h ; &
008DF116: mov edx, eax
008DF118: lea ecx, var_40
008DF11B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DF120: push eax
008DF121: push 00000010h
008DF123: pop eax
008DF124: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DF129: lea esi, var_00000140
008DF12F: mov edi, esp
008DF131: movsd 
008DF132: movsd 
008DF133: movsd 
008DF134: movsd 
008DF135: push 00000001h
008DF137: push 00000010h
008DF139: push 00440E58h
008DF13E: push 00000010h
008DF140: pop eax
008DF141: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DF146: lea esi, var_00000130
008DF14C: mov edi, esp
008DF14E: movsd 
008DF14F: movsd 
008DF150: movsd 
008DF151: movsd 
008DF152: push 00000001h
008DF154: push 00000000h
008DF156: push 00440E48h
008DF15B: push 00000000h
008DF15D: push 00000018h
008DF15F: mov eax, [ebp+08h]
008DF162: mov eax, [eax]
008DF164: push [ebp+08h]
008DF167: call [eax+0000031Ch]
008DF16D: push eax
008DF16E: lea eax, var_58
008DF171: push eax
008DF172: call 00410A84h ; Set (object)
008DF177: push eax
008DF178: lea eax, var_000000B0
008DF17E: push eax
008DF17F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DF184: add esp, 00000010h
008DF187: push eax
008DF188: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DF18D: push eax
008DF18E: lea eax, var_5C
008DF191: push eax
008DF192: call 00410A84h ; Set (object)
008DF197: push eax
008DF198: lea eax, var_000000C0
008DF19E: push eax
008DF19F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DF1A4: add esp, 00000020h
008DF1A7: push eax
008DF1A8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DF1AD: push eax
008DF1AE: lea eax, var_60
008DF1B1: push eax
008DF1B2: call 00410A84h ; Set (object)
008DF1B7: push eax
008DF1B8: lea eax, var_000000D0
008DF1BE: push eax
008DF1BF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DF1C4: add esp, 00000020h
008DF1C7: push eax
008DF1C8: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008DF1CD: mov edx, eax
008DF1CF: lea ecx, var_44
008DF1D2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DF1D7: push eax
008DF1D8: call 00410A18h ; &
008DF1DD: mov edx, eax
008DF1DF: lea ecx, var_48
008DF1E2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DF1E7: push eax
008DF1E8: push 00441264h ; vbCrLf
008DF1ED: call 00410A18h ; &
008DF1F2: mov edx, eax
008DF1F4: lea ecx, var_34
008DF1F7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DF1FC: lea eax, var_48
008DF1FF: push eax
008DF200: lea eax, var_44
008DF203: push eax
008DF204: lea eax, var_40
008DF207: push eax
008DF208: lea eax, var_3C
008DF20B: push eax
008DF20C: lea eax, var_38
008DF20F: push eax
008DF210: push 00000005h
008DF212: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008DF217: add esp, 00000018h
008DF21A: lea eax, var_60
008DF21D: push eax
008DF21E: lea eax, var_5C
008DF221: push eax
008DF222: lea eax, var_58
008DF225: push eax
008DF226: lea eax, var_54
008DF229: push eax
008DF22A: lea eax, var_50
008DF22D: push eax
008DF22E: lea eax, var_4C
008DF231: push eax
008DF232: push 00000006h
008DF234: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DF239: add esp, 0000001Ch
008DF23C: lea eax, var_000000D0
008DF242: push eax
008DF243: lea eax, var_000000C0
008DF249: push eax
008DF24A: lea eax, var_000000B0
008DF250: push eax
008DF251: lea eax, var_000000A0
008DF257: push eax
008DF258: lea eax, var_00000090
008DF25E: push eax
008DF25F: lea eax, var_80
008DF262: push eax
008DF263: push 00000006h
008DF265: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DF26A: add esp, 0000001Ch
008DF26D: mov var_04, 00000007h
008DF274: lea eax, var_000001A0
008DF27A: push eax
008DF27B: lea eax, var_00000190
008DF281: push eax
008DF282: lea eax, var_30
008DF285: push eax
008DF286: call 00410A36h ; Next
008DF28B: mov var_000001BC, eax
008DF291: cmp var_000001BC, 00000000h
008DF298: jnz 008DF018h
008DF29E: mov var_04, 00000008h
008DF2A5: cmp [008F529Ch], 00000000h
008DF2AC: jnz 8DF2C9h
008DF2AE: push 008F529Ch
008DF2B3: push 00440F2Ch
008DF2B8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DF2BD: mov var_000001C4, 008F529Ch
008DF2C7: jmp 8DF2D3h
008DF2C9: mov var_000001C4, 008F529Ch
008DF2D3: mov eax, var_000001C4
008DF2D9: mov eax, [eax]
008DF2DB: mov var_00000174, eax
008DF2E1: lea eax, var_4C
008DF2E4: push eax
008DF2E5: mov eax, var_00000174
008DF2EB: mov eax, [eax]
008DF2ED: push var_00000174
008DF2F3: call [eax+1Ch]
008DF2F6: fclex 
008DF2F8: mov var_00000178, eax
008DF2FE: cmp var_00000178, 00000000h
008DF305: jnl 8DF327h
008DF307: push 0000001Ch
008DF309: push 00440F1Ch
008DF30E: push var_00000174
008DF314: push var_00000178
008DF31A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DF31F: mov var_000001C8, eax
008DF325: jmp 8DF32Eh
008DF327: and var_000001C8, 00000000h
008DF32E: mov eax, var_4C
008DF331: mov var_0000017C, eax
008DF337: mov eax, var_0000017C
008DF33D: mov eax, [eax]
008DF33F: push var_0000017C
008DF345: call [eax+50h]
008DF348: fclex 
008DF34A: mov var_00000180, eax
008DF350: cmp var_00000180, 00000000h
008DF357: jnl 8DF379h
008DF359: push 00000050h
008DF35B: push 00445554h
008DF360: push var_0000017C
008DF366: push var_00000180
008DF36C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DF371: mov var_000001CC, eax
008DF377: jmp 8DF380h
008DF379: and var_000001CC, 00000000h
008DF380: lea ecx, var_4C
008DF383: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DF388: mov var_04, 00000009h
008DF38F: cmp [008F529Ch], 00000000h
008DF396: jnz 8DF3B3h
008DF398: push 008F529Ch
008DF39D: push 00440F2Ch
008DF3A2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DF3A7: mov var_000001D0, 008F529Ch
008DF3B1: jmp 8DF3BDh
008DF3B3: mov var_000001D0, 008F529Ch
008DF3BD: mov eax, var_000001D0
008DF3C3: mov eax, [eax]
008DF3C5: mov var_00000174, eax
008DF3CB: lea eax, var_4C
008DF3CE: push eax
008DF3CF: mov eax, var_00000174
008DF3D5: mov eax, [eax]
008DF3D7: push var_00000174
008DF3DD: call [eax+1Ch]
008DF3E0: fclex 
008DF3E2: mov var_00000178, eax
008DF3E8: cmp var_00000178, 00000000h
008DF3EF: jnl 8DF411h
008DF3F1: push 0000001Ch
008DF3F3: push 00440F1Ch
008DF3F8: push var_00000174
008DF3FE: push var_00000178
008DF404: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DF409: mov var_000001D4, eax
008DF40F: jmp 8DF418h
008DF411: and var_000001D4, 00000000h
008DF418: mov eax, var_4C
008DF41B: mov var_0000017C, eax
008DF421: mov var_00000118, 80020004h
008DF42B: mov var_00000120, 0000000Ah
008DF435: push 00000010h
008DF437: pop eax
008DF438: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DF43D: lea esi, var_00000120
008DF443: mov edi, esp
008DF445: movsd 
008DF446: movsd 
008DF447: movsd 
008DF448: movsd 
008DF449: push var_34
008DF44C: mov eax, var_0000017C
008DF452: mov eax, [eax]
008DF454: push var_0000017C
008DF45A: call [eax+60h]
008DF45D: fclex 
008DF45F: mov var_00000180, eax
008DF465: cmp var_00000180, 00000000h
008DF46C: jnl 8DF48Eh
008DF46E: push 00000060h
008DF470: push 00445554h
008DF475: push var_0000017C
008DF47B: push var_00000180
008DF481: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DF486: mov var_000001D8, eax
008DF48C: jmp 8DF495h
008DF48E: and var_000001D8, 00000000h
008DF495: lea ecx, var_4C
008DF498: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DF49D: jmp 008DF9A2h
008DF4A2: mov var_04, 0000000Bh
008DF4A9: push 00000000h
008DF4AB: push 00000008h
008DF4AD: push 00440E58h
008DF4B2: push 00000000h
008DF4B4: push 00000017h
008DF4B6: mov eax, [ebp+08h]
008DF4B9: mov eax, [eax]
008DF4BB: push [ebp+08h]
008DF4BE: call [eax+0000031Ch]
008DF4C4: push eax
008DF4C5: lea eax, var_4C
008DF4C8: push eax
008DF4C9: call 00410A84h ; Set (object)
008DF4CE: push eax
008DF4CF: lea eax, var_80
008DF4D2: push eax
008DF4D3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DF4D8: add esp, 00000010h
008DF4DB: push eax
008DF4DC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DF4E1: push eax
008DF4E2: lea eax, var_50
008DF4E5: push eax
008DF4E6: call 00410A84h ; Set (object)
008DF4EB: push eax
008DF4EC: lea eax, var_00000090
008DF4F2: push eax
008DF4F3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DF4F8: add esp, 00000010h
008DF4FB: push eax
008DF4FC: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008DF501: mov var_00000118, eax
008DF507: mov var_00000120, 00000003h
008DF511: mov var_00000158, 00000001h
008DF51B: mov var_00000160, 00000003h
008DF525: push 00000000h
008DF527: push 00000008h
008DF529: push 00440E58h
008DF52E: push 00000000h
008DF530: push 00000017h
008DF532: mov eax, [ebp+08h]
008DF535: mov eax, [eax]
008DF537: push [ebp+08h]
008DF53A: call [eax+0000031Ch]
008DF540: push eax
008DF541: lea eax, var_60
008DF544: push eax
008DF545: call 00410A84h ; Set (object)
008DF54A: push eax
008DF54B: lea eax, var_000000D0
008DF551: push eax
008DF552: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DF557: add esp, 00000010h
008DF55A: push eax
008DF55B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DF560: push eax
008DF561: lea eax, var_64
008DF564: push eax
008DF565: call 00410A84h ; Set (object)
008DF56A: push eax
008DF56B: lea eax, var_000000E0
008DF571: push eax
008DF572: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DF577: add esp, 00000010h
008DF57A: push eax
008DF57B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008DF580: mov var_00000138, eax
008DF586: mov var_00000140, 00000003h
008DF590: push 00000000h
008DF592: push 00000000h
008DF594: push 00440E58h
008DF599: push 00000010h
008DF59B: pop eax
008DF59C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DF5A1: lea esi, var_00000120
008DF5A7: mov edi, esp
008DF5A9: movsd 
008DF5AA: movsd 
008DF5AB: movsd 
008DF5AC: movsd 
008DF5AD: push 00000001h
008DF5AF: push 00000000h
008DF5B1: push 00440E48h
008DF5B6: push 00000000h
008DF5B8: push 00000018h
008DF5BA: mov eax, [ebp+08h]
008DF5BD: mov eax, [eax]
008DF5BF: push [ebp+08h]
008DF5C2: call [eax+0000031Ch]
008DF5C8: push eax
008DF5C9: lea eax, var_54
008DF5CC: push eax
008DF5CD: call 00410A84h ; Set (object)
008DF5D2: push eax
008DF5D3: lea eax, var_000000A0
008DF5D9: push eax
008DF5DA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DF5DF: add esp, 00000010h
008DF5E2: push eax
008DF5E3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DF5E8: push eax
008DF5E9: lea eax, var_58
008DF5EC: push eax
008DF5ED: call 00410A84h ; Set (object)
008DF5F2: push eax
008DF5F3: lea eax, var_000000B0
008DF5F9: push eax
008DF5FA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DF5FF: add esp, 00000020h
008DF602: push eax
008DF603: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DF608: push eax
008DF609: lea eax, var_5C
008DF60C: push eax
008DF60D: call 00410A84h ; Set (object)
008DF612: push eax
008DF613: lea eax, var_000000C0
008DF619: push eax
008DF61A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DF61F: add esp, 00000010h
008DF622: push eax
008DF623: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008DF628: mov edx, eax
008DF62A: lea ecx, var_38
008DF62D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DF632: push eax
008DF633: push 004412B8h
008DF638: call 00410A18h ; &
008DF63D: mov edx, eax
008DF63F: lea ecx, var_3C
008DF642: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DF647: push eax
008DF648: push 00000010h
008DF64A: pop eax
008DF64B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DF650: lea esi, var_00000160
008DF656: mov edi, esp
008DF658: movsd 
008DF659: movsd 
008DF65A: movsd 
008DF65B: movsd 
008DF65C: push 00000001h
008DF65E: push 00000010h
008DF660: push 00440E58h
008DF665: push 00000010h
008DF667: pop eax
008DF668: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DF66D: lea esi, var_00000140
008DF673: mov edi, esp
008DF675: movsd 
008DF676: movsd 
008DF677: movsd 
008DF678: movsd 
008DF679: push 00000001h
008DF67B: push 00000000h
008DF67D: push 00440E48h
008DF682: push 00000000h
008DF684: push 00000018h
008DF686: mov eax, [ebp+08h]
008DF689: mov eax, [eax]
008DF68B: push [ebp+08h]
008DF68E: call [eax+0000031Ch]
008DF694: push eax
008DF695: lea eax, var_68
008DF698: push eax
008DF699: call 00410A84h ; Set (object)
008DF69E: push eax
008DF69F: lea eax, var_000000F0
008DF6A5: push eax
008DF6A6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DF6AB: add esp, 00000010h
008DF6AE: push eax
008DF6AF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DF6B4: push eax
008DF6B5: lea eax, var_6C
008DF6B8: push eax
008DF6B9: call 00410A84h ; Set (object)
008DF6BE: push eax
008DF6BF: lea eax, var_00000100
008DF6C5: push eax
008DF6C6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DF6CB: add esp, 00000020h
008DF6CE: push eax
008DF6CF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DF6D4: push eax
008DF6D5: lea eax, var_70
008DF6D8: push eax
008DF6D9: call 00410A84h ; Set (object)
008DF6DE: push eax
008DF6DF: lea eax, var_00000110
008DF6E5: push eax
008DF6E6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DF6EB: add esp, 00000020h
008DF6EE: push eax
008DF6EF: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008DF6F4: mov edx, eax
008DF6F6: lea ecx, var_40
008DF6F9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DF6FE: push eax
008DF6FF: call 00410A18h ; &
008DF704: mov edx, eax
008DF706: lea ecx, var_34
008DF709: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DF70E: lea eax, var_40
008DF711: push eax
008DF712: lea eax, var_3C
008DF715: push eax
008DF716: lea eax, var_38
008DF719: push eax
008DF71A: push 00000003h
008DF71C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008DF721: add esp, 00000010h
008DF724: lea eax, var_70
008DF727: push eax
008DF728: lea eax, var_6C
008DF72B: push eax
008DF72C: lea eax, var_68
008DF72F: push eax
008DF730: lea eax, var_64
008DF733: push eax
008DF734: lea eax, var_60
008DF737: push eax
008DF738: lea eax, var_5C
008DF73B: push eax
008DF73C: lea eax, var_58
008DF73F: push eax
008DF740: lea eax, var_54
008DF743: push eax
008DF744: lea eax, var_50
008DF747: push eax
008DF748: lea eax, var_4C
008DF74B: push eax
008DF74C: push 0000000Ah
008DF74E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DF753: add esp, 0000002Ch
008DF756: lea eax, var_00000110
008DF75C: push eax
008DF75D: lea eax, var_00000100
008DF763: push eax
008DF764: lea eax, var_000000F0
008DF76A: push eax
008DF76B: lea eax, var_000000E0
008DF771: push eax
008DF772: lea eax, var_000000D0
008DF778: push eax
008DF779: lea eax, var_000000C0
008DF77F: push eax
008DF780: lea eax, var_000000B0
008DF786: push eax
008DF787: lea eax, var_000000A0
008DF78D: push eax
008DF78E: lea eax, var_00000090
008DF794: push eax
008DF795: lea eax, var_80
008DF798: push eax
008DF799: push 0000000Ah
008DF79B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DF7A0: add esp, 0000002Ch
008DF7A3: mov var_04, 0000000Ch
008DF7AA: cmp [008F529Ch], 00000000h
008DF7B1: jnz 8DF7CEh
008DF7B3: push 008F529Ch
008DF7B8: push 00440F2Ch
008DF7BD: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DF7C2: mov var_000001DC, 008F529Ch
008DF7CC: jmp 8DF7D8h
008DF7CE: mov var_000001DC, 008F529Ch
008DF7D8: mov eax, var_000001DC
008DF7DE: mov eax, [eax]
008DF7E0: mov var_00000174, eax
008DF7E6: lea eax, var_4C
008DF7E9: push eax
008DF7EA: mov eax, var_00000174
008DF7F0: mov eax, [eax]
008DF7F2: push var_00000174
008DF7F8: call [eax+1Ch]
008DF7FB: fclex 
008DF7FD: mov var_00000178, eax
008DF803: cmp var_00000178, 00000000h
008DF80A: jnl 8DF82Ch
008DF80C: push 0000001Ch
008DF80E: push 00440F1Ch
008DF813: push var_00000174
008DF819: push var_00000178
008DF81F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DF824: mov var_000001E0, eax
008DF82A: jmp 8DF833h
008DF82C: and var_000001E0, 00000000h
008DF833: mov eax, var_4C
008DF836: mov var_0000017C, eax
008DF83C: mov eax, var_0000017C
008DF842: mov eax, [eax]
008DF844: push var_0000017C
008DF84A: call [eax+50h]
008DF84D: fclex 
008DF84F: mov var_00000180, eax
008DF855: cmp var_00000180, 00000000h
008DF85C: jnl 8DF87Eh
008DF85E: push 00000050h
008DF860: push 00445554h
008DF865: push var_0000017C
008DF86B: push var_00000180
008DF871: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DF876: mov var_000001E4, eax
008DF87C: jmp 8DF885h
008DF87E: and var_000001E4, 00000000h
008DF885: lea ecx, var_4C
008DF888: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DF88D: mov var_04, 0000000Dh
008DF894: cmp [008F529Ch], 00000000h
008DF89B: jnz 8DF8B8h
008DF89D: push 008F529Ch
008DF8A2: push 00440F2Ch
008DF8A7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DF8AC: mov var_000001E8, 008F529Ch
008DF8B6: jmp 8DF8C2h
008DF8B8: mov var_000001E8, 008F529Ch
008DF8C2: mov eax, var_000001E8
008DF8C8: mov eax, [eax]
008DF8CA: mov var_00000174, eax
008DF8D0: lea eax, var_4C
008DF8D3: push eax
008DF8D4: mov eax, var_00000174
008DF8DA: mov eax, [eax]
008DF8DC: push var_00000174
008DF8E2: call [eax+1Ch]
008DF8E5: fclex 
008DF8E7: mov var_00000178, eax
008DF8ED: cmp var_00000178, 00000000h
008DF8F4: jnl 8DF916h
008DF8F6: push 0000001Ch
008DF8F8: push 00440F1Ch
008DF8FD: push var_00000174
008DF903: push var_00000178
008DF909: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DF90E: mov var_000001EC, eax
008DF914: jmp 8DF91Dh
008DF916: and var_000001EC, 00000000h
008DF91D: mov eax, var_4C
008DF920: mov var_0000017C, eax
008DF926: mov var_00000118, 80020004h
008DF930: mov var_00000120, 0000000Ah
008DF93A: push 00000010h
008DF93C: pop eax
008DF93D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DF942: lea esi, var_00000120
008DF948: mov edi, esp
008DF94A: movsd 
008DF94B: movsd 
008DF94C: movsd 
008DF94D: movsd 
008DF94E: push var_34
008DF951: mov eax, var_0000017C
008DF957: mov eax, [eax]
008DF959: push var_0000017C
008DF95F: call [eax+60h]
008DF962: fclex 
008DF964: mov var_00000180, eax
008DF96A: cmp var_00000180, 00000000h
008DF971: jnl 8DF993h
008DF973: push 00000060h
008DF975: push 00445554h
008DF97A: push var_0000017C
008DF980: push var_00000180
008DF986: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DF98B: mov var_000001F0, eax
008DF991: jmp 8DF99Ah
008DF993: and var_000001F0, 00000000h
008DF99A: lea ecx, var_4C
008DF99D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DF9A2: mov var_10, 00000000h
008DF9A9: push 008DFA7Ah
008DF9AE: jmp 008DFA51h
008DF9B3: lea eax, var_48
008DF9B6: push eax
008DF9B7: lea eax, var_44
008DF9BA: push eax
008DF9BB: lea eax, var_40
008DF9BE: push eax
008DF9BF: lea eax, var_3C
008DF9C2: push eax
008DF9C3: lea eax, var_38
008DF9C6: push eax
008DF9C7: push 00000005h
008DF9C9: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008DF9CE: add esp, 00000018h
008DF9D1: lea eax, var_70
008DF9D4: push eax
008DF9D5: lea eax, var_6C
008DF9D8: push eax
008DF9D9: lea eax, var_68
008DF9DC: push eax
008DF9DD: lea eax, var_64
008DF9E0: push eax
008DF9E1: lea eax, var_60
008DF9E4: push eax
008DF9E5: lea eax, var_5C
008DF9E8: push eax
008DF9E9: lea eax, var_58
008DF9EC: push eax
008DF9ED: lea eax, var_54
008DF9F0: push eax
008DF9F1: lea eax, var_50
008DF9F4: push eax
008DF9F5: lea eax, var_4C
008DF9F8: push eax
008DF9F9: push 0000000Ah
008DF9FB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DFA00: add esp, 0000002Ch
008DFA03: lea eax, var_00000110
008DFA09: push eax
008DFA0A: lea eax, var_00000100
008DFA10: push eax
008DFA11: lea eax, var_000000F0
008DFA17: push eax
008DFA18: lea eax, var_000000E0
008DFA1E: push eax
008DFA1F: lea eax, var_000000D0
008DFA25: push eax
008DFA26: lea eax, var_000000C0
008DFA2C: push eax
008DFA2D: lea eax, var_000000B0
008DFA33: push eax
008DFA34: lea eax, var_000000A0
008DFA3A: push eax
008DFA3B: lea eax, var_00000090
008DFA41: push eax
008DFA42: lea eax, var_80
008DFA45: push eax
008DFA46: push 0000000Ah
008DFA48: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DFA4D: add esp, 0000002Ch
008DFA50: ret 
End Sub

Private sub cmdADLocator__8DC28A
008DC28A: push ebp
008DC28B: mov ebp, esp
008DC28D: sub esp, 0000000Ch
008DC290: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008DC295: mov eax, fs:[00h]
008DC29B: push eax
008DC29C: mov fs:[00000000h], esp
008DC2A3: push 00000038h
008DC2A5: pop eax
008DC2A6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DC2AB: push ebx
008DC2AC: push esi
008DC2AD: push edi
008DC2AE: mov var_0C, esp
008DC2B1: mov var_08, 0040FF10h
008DC2B8: mov eax, [ebp+08h]
008DC2BB: and eax, 00000001h
008DC2BE: mov var_04, eax
008DC2C1: mov eax, [ebp+08h]
008DC2C4: and al, FEh
008DC2C6: mov [ebp+08h], eax
008DC2C9: mov eax, [ebp+08h]
008DC2CC: mov eax, [eax]
008DC2CE: push [ebp+08h]
008DC2D1: call [eax+04h]
008DC2D4: cmp [008F2DF8h], 00000000h
008DC2DB: jnz 8DC2F5h
008DC2DD: push 008F2DF8h
008DC2E2: push 0041A6E4h
008DC2E7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DC2EC: mov var_48, 008F2DF8h
008DC2F3: jmp 8DC2FCh
008DC2F5: mov var_48, 008F2DF8h
008DC2FC: mov eax, var_48
008DC2FF: mov eax, [eax]
008DC301: mov var_38, eax
008DC304: mov var_2C, 80020004h
008DC30B: mov var_34, 0000000Ah
008DC312: mov var_1C, 80020004h
008DC319: mov var_24, 0000000Ah
008DC320: push 00000010h
008DC322: pop eax
008DC323: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DC328: lea esi, var_34
008DC32B: mov edi, esp
008DC32D: movsd 
008DC32E: movsd 
008DC32F: movsd 
008DC330: movsd 
008DC331: push 00000010h
008DC333: pop eax
008DC334: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DC339: lea esi, var_24
008DC33C: mov edi, esp
008DC33E: movsd 
008DC33F: movsd 
008DC340: movsd 
008DC341: movsd 
008DC342: mov eax, var_38
008DC345: mov eax, [eax]
008DC347: push var_38
008DC34A: call [eax+000002B0h]
008DC350: fclex 
008DC352: mov var_3C, eax
008DC355: cmp var_3C, 00000000h
008DC359: jnl 8DC375h
008DC35B: push 000002B0h
008DC360: push 00461414h
008DC365: push var_38
008DC368: push var_3C
008DC36B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DC370: mov var_4C, eax
008DC373: jmp 8DC379h
008DC375: and var_4C, 00000000h
008DC379: mov var_04, 00000000h
008DC380: mov eax, [ebp+08h]
008DC383: mov eax, [eax]
008DC385: push [ebp+08h]
008DC388: call [eax+08h]
008DC38B: mov eax, var_04
008DC38E: mov ecx, var_14
008DC391: mov fs:[00000000h], ecx
008DC398: pop edi
008DC399: pop esi
008DC39A: pop ebx
008DC39B: leave 
008DC39C: retn 0004h
End Sub

Private sub Form__8DD859
008DD859: push ebp
008DD85A: mov ebp, esp
008DD85C: sub esp, 0000000Ch
008DD85F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008DD864: mov eax, fs:[00h]
008DD86A: push eax
008DD86B: mov fs:[00000000h], esp
008DD872: mov eax, 000000A0h
008DD877: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DD87C: push ebx
008DD87D: push esi
008DD87E: push edi
008DD87F: mov var_0C, esp
008DD882: mov var_08, 0040FFA0h
008DD889: mov eax, [ebp+08h]
008DD88C: and eax, 00000001h
008DD88F: mov var_04, eax
008DD892: mov eax, [ebp+08h]
008DD895: and al, FEh
008DD897: mov [ebp+08h], eax
008DD89A: mov eax, [ebp+08h]
008DD89D: mov eax, [eax]
008DD89F: push [ebp+08h]
008DD8A2: call [eax+04h]
008DD8A5: mov var_34, 80020004h
008DD8AC: mov var_3C, 0000000Ah
008DD8B3: mov var_54, 80020004h
008DD8BA: mov var_5C, 0000000Ah
008DD8C1: mov var_74, 00459C20h ; URL
008DD8C8: mov var_7C, 00000008h
008DD8CF: mov var_00000094, 00000DACh
008DD8D9: mov var_0000009C, 00000002h
008DD8E3: push 00000010h
008DD8E5: pop eax
008DD8E6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DD8EB: lea esi, var_3C
008DD8EE: mov edi, esp
008DD8F0: movsd 
008DD8F1: movsd 
008DD8F2: movsd 
008DD8F3: movsd 
008DD8F4: push 00000010h
008DD8F6: pop eax
008DD8F7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DD8FC: lea esi, var_5C
008DD8FF: mov edi, esp
008DD901: movsd 
008DD902: movsd 
008DD903: movsd 
008DD904: movsd 
008DD905: push 00000010h
008DD907: pop eax
008DD908: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DD90D: lea esi, var_7C
008DD910: mov edi, esp
008DD912: movsd 
008DD913: movsd 
008DD914: movsd 
008DD915: movsd 
008DD916: push 00000010h
008DD918: pop eax
008DD919: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DD91E: lea esi, var_0000009C
008DD924: mov edi, esp
008DD926: movsd 
008DD927: movsd 
008DD928: movsd 
008DD929: movsd 
008DD92A: push 00000004h
008DD92C: push 00000002h
008DD92E: push 00445534h
008DD933: push 00000000h
008DD935: push 00000019h
008DD937: mov eax, [ebp+08h]
008DD93A: mov eax, [eax]
008DD93C: push [ebp+08h]
008DD93F: call [eax+0000031Ch]
008DD945: push eax
008DD946: lea eax, var_18
008DD949: push eax
008DD94A: call 00410A84h ; Set (object)
008DD94F: push eax
008DD950: lea eax, var_2C
008DD953: push eax
008DD954: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DD959: add esp, 00000010h
008DD95C: push eax
008DD95D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DD962: push eax
008DD963: lea eax, var_1C
008DD966: push eax
008DD967: call 00410A84h ; Set (object)
008DD96C: push eax
008DD96D: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008DD972: add esp, 0000004Ch
008DD975: lea eax, var_1C
008DD978: push eax
008DD979: lea eax, var_18
008DD97C: push eax
008DD97D: push 00000002h
008DD97F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DD984: add esp, 0000000Ch
008DD987: lea ecx, var_2C
008DD98A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008DD98F: mov var_34, 80020004h
008DD996: mov var_3C, 0000000Ah
008DD99D: mov var_54, 80020004h
008DD9A4: mov var_5C, 0000000Ah
008DD9AB: mov var_74, 004468B4h ; Owner
008DD9B2: mov var_7C, 00000008h
008DD9B9: mov var_00000094, 00001B58h
008DD9C3: mov var_0000009C, 00000002h
008DD9CD: push 00000010h
008DD9CF: pop eax
008DD9D0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DD9D5: lea esi, var_3C
008DD9D8: mov edi, esp
008DD9DA: movsd 
008DD9DB: movsd 
008DD9DC: movsd 
008DD9DD: movsd 
008DD9DE: push 00000010h
008DD9E0: pop eax
008DD9E1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DD9E6: lea esi, var_5C
008DD9E9: mov edi, esp
008DD9EB: movsd 
008DD9EC: movsd 
008DD9ED: movsd 
008DD9EE: movsd 
008DD9EF: push 00000010h
008DD9F1: pop eax
008DD9F2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DD9F7: lea esi, var_7C
008DD9FA: mov edi, esp
008DD9FC: movsd 
008DD9FD: movsd 
008DD9FE: movsd 
008DD9FF: movsd 
008DDA00: push 00000010h
008DDA02: pop eax
008DDA03: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DDA08: lea esi, var_0000009C
008DDA0E: mov edi, esp
008DDA10: movsd 
008DDA11: movsd 
008DDA12: movsd 
008DDA13: movsd 
008DDA14: push 00000004h
008DDA16: push 00000002h
008DDA18: push 00445534h
008DDA1D: push 00000000h
008DDA1F: push 00000019h
008DDA21: mov eax, [ebp+08h]
008DDA24: mov eax, [eax]
008DDA26: push [ebp+08h]
008DDA29: call [eax+0000031Ch]
008DDA2F: push eax
008DDA30: lea eax, var_18
008DDA33: push eax
008DDA34: call 00410A84h ; Set (object)
008DDA39: push eax
008DDA3A: lea eax, var_2C
008DDA3D: push eax
008DDA3E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DDA43: add esp, 00000010h
008DDA46: push eax
008DDA47: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DDA4C: push eax
008DDA4D: lea eax, var_1C
008DDA50: push eax
008DDA51: call 00410A84h ; Set (object)
008DDA56: push eax
008DDA57: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008DDA5C: add esp, 0000004Ch
008DDA5F: lea eax, var_1C
008DDA62: push eax
008DDA63: lea eax, var_18
008DDA66: push eax
008DDA67: push 00000002h
008DDA69: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DDA6E: add esp, 0000000Ch
008DDA71: lea ecx, var_2C
008DDA74: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008DDA79: mov var_04, 00000000h
008DDA80: push 008DDAA3h
008DDA85: jmp 8DDAA2h
008DDA87: lea eax, var_1C
008DDA8A: push eax
008DDA8B: lea eax, var_18
008DDA8E: push eax
008DDA8F: push 00000002h
008DDA91: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DDA96: add esp, 0000000Ch
008DDA99: lea ecx, var_2C
008DDA9C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008DDAA1: ret 
End Sub

Private sub Form__8DDAC2
008DDAC2: push ebp
008DDAC3: mov ebp, esp
008DDAC5: sub esp, 00000018h
008DDAC8: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008DDACD: mov eax, fs:[00h]
008DDAD3: push eax
008DDAD4: mov fs:[00000000h], esp
008DDADB: mov eax, 00000150h
008DDAE0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DDAE5: push ebx
008DDAE6: push esi
008DDAE7: push edi
008DDAE8: mov var_18, esp
008DDAEB: mov var_14, 0040FFB0h
008DDAF2: mov eax, [ebp+08h]
008DDAF5: and eax, 00000001h
008DDAF8: mov var_10, eax
008DDAFB: mov eax, [ebp+08h]
008DDAFE: and al, FEh
008DDB00: mov [ebp+08h], eax
008DDB03: mov var_0C, 00000000h
008DDB0A: mov eax, [ebp+08h]
008DDB0D: mov eax, [eax]
008DDB0F: push [ebp+08h]
008DDB12: call [eax+04h]
008DDB15: mov var_04, 00000001h
008DDB1C: mov var_04, 00000002h
008DDB23: push FFFFFFFFh
008DDB25: call 00410A60h ; On Error ...
008DDB2A: mov var_04, 00000003h
008DDB31: push 00000000h
008DDB33: push 80010006h
008DDB38: mov eax, [ebp+08h]
008DDB3B: mov eax, [eax]
008DDB3D: push [ebp+08h]
008DDB40: call [eax+00000320h]
008DDB46: push eax
008DDB47: lea eax, var_34
008DDB4A: push eax
008DDB4B: call 00410A84h ; Set (object)
008DDB50: push eax
008DDB51: lea eax, var_4C
008DDB54: push eax
008DDB55: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DDB5A: add esp, 00000010h
008DDB5D: fldz 
008DDB5F: fstp real4 ptr var_000000C4
008DDB65: mov var_000000CC, 00000004h
008DDB6F: and var_000000E4, 00000000h
008DDB76: mov var_000000EC, 00000002h
008DDB80: lea eax, var_00000140
008DDB86: push eax
008DDB87: mov eax, [ebp+08h]
008DDB8A: mov eax, [eax]
008DDB8C: push [ebp+08h]
008DDB8F: call [eax+00000080h]
008DDB95: fclex 
008DDB97: mov var_00000148, eax
008DDB9D: cmp var_00000148, 00000000h
008DDBA4: jnl 8DDBC6h
008DDBA6: push 00000080h
008DDBAB: push 004487E0h
008DDBB0: push [ebp+08h]
008DDBB3: push var_00000148
008DDBB9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DDBBE: mov var_00000164, eax
008DDBC4: jmp 8DDBCDh
008DDBC6: and var_00000164, 00000000h
008DDBCD: fld real4 ptr var_00000140
008DDBD3: fsub real4 ptr [00402BA4h]
008DDBD9: fstp real4 ptr var_00000104
008DDBDF: fstsw ax
008DDBE1: test al, 0Dh
008DDBE3: jnz 008DE1ABh
008DDBE9: mov var_0000010C, 00000004h
008DDBF3: lea eax, var_00000144
008DDBF9: push eax
008DDBFA: mov eax, [ebp+08h]
008DDBFD: mov eax, [eax]
008DDBFF: push [ebp+08h]
008DDC02: call [eax+00000088h]
008DDC08: fclex 
008DDC0A: mov var_0000014C, eax
008DDC10: cmp var_0000014C, 00000000h
008DDC17: jnl 8DDC39h
008DDC19: push 00000088h
008DDC1E: push 004487E0h
008DDC23: push [ebp+08h]
008DDC26: push var_0000014C
008DDC2C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DDC31: mov var_00000168, eax
008DDC37: jmp 8DDC40h
008DDC39: and var_00000168, 00000000h
008DDC40: lea eax, var_4C
008DDC43: push eax
008DDC44: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008DDC49: fsubr real4 ptr var_00000144
008DDC4F: fsub real4 ptr [0040DF3Ch]
008DDC55: fstp real4 ptr var_00000124
008DDC5B: fstsw ax
008DDC5D: test al, 0Dh
008DDC5F: jnz 008DE1ABh
008DDC65: mov var_0000012C, 00000004h
008DDC6F: push 00000010h
008DDC71: pop eax
008DDC72: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DDC77: lea esi, var_000000CC
008DDC7D: mov edi, esp
008DDC7F: movsd 
008DDC80: movsd 
008DDC81: movsd 
008DDC82: movsd 
008DDC83: push 00000010h
008DDC85: pop eax
008DDC86: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DDC8B: lea esi, var_000000EC
008DDC91: mov edi, esp
008DDC93: movsd 
008DDC94: movsd 
008DDC95: movsd 
008DDC96: movsd 
008DDC97: push 00000010h
008DDC99: pop eax
008DDC9A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DDC9F: lea esi, var_0000010C
008DDCA5: mov edi, esp
008DDCA7: movsd 
008DDCA8: movsd 
008DDCA9: movsd 
008DDCAA: movsd 
008DDCAB: push 00000010h
008DDCAD: pop eax
008DDCAE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DDCB3: lea esi, var_0000012C
008DDCB9: mov edi, esp
008DDCBB: movsd 
008DDCBC: movsd 
008DDCBD: movsd 
008DDCBE: movsd 
008DDCBF: push 00000004h
008DDCC1: push 80011002h
008DDCC6: mov eax, [ebp+08h]
008DDCC9: mov eax, [eax]
008DDCCB: push [ebp+08h]
008DDCCE: call [eax+0000031Ch]
008DDCD4: push eax
008DDCD5: lea eax, var_38
008DDCD8: push eax
008DDCD9: call 00410A84h ; Set (object)
008DDCDE: push eax
008DDCDF: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008DDCE4: add esp, 0000004Ch
008DDCE7: lea eax, var_38
008DDCEA: push eax
008DDCEB: lea eax, var_34
008DDCEE: push eax
008DDCEF: push 00000002h
008DDCF1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DDCF6: add esp, 0000000Ch
008DDCF9: lea ecx, var_4C
008DDCFC: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008DDD01: mov var_04, 00000004h
008DDD08: push 00000000h
008DDD0A: push 80010006h
008DDD0F: mov eax, [ebp+08h]
008DDD12: mov eax, [eax]
008DDD14: push [ebp+08h]
008DDD17: call [eax+0000031Ch]
008DDD1D: push eax
008DDD1E: lea eax, var_38
008DDD21: push eax
008DDD22: call 00410A84h ; Set (object)
008DDD27: push eax
008DDD28: lea eax, var_5C
008DDD2B: push eax
008DDD2C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DDD31: add esp, 00000010h
008DDD34: fldz 
008DDD36: fstp real4 ptr var_000000C4
008DDD3C: mov var_000000CC, 00000004h
008DDD46: push 00000000h
008DDD48: push 80010004h
008DDD4D: mov eax, [ebp+08h]
008DDD50: mov eax, [eax]
008DDD52: push [ebp+08h]
008DDD55: call [eax+0000031Ch]
008DDD5B: push eax
008DDD5C: lea eax, var_34
008DDD5F: push eax
008DDD60: call 00410A84h ; Set (object)
008DDD65: push eax
008DDD66: lea eax, var_4C
008DDD69: push eax
008DDD6A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DDD6F: add esp, 00000010h
008DDD72: push eax
008DDD73: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008DDD78: fstp real4 ptr var_0000016C
008DDD7E: lea eax, var_5C
008DDD81: push eax
008DDD82: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008DDD87: fadd real4 ptr var_0000016C
008DDD8D: fadd real4 ptr [00402BA8h]
008DDD93: fstp real4 ptr var_000000E4
008DDD99: fstsw ax
008DDD9B: test al, 0Dh
008DDD9D: jnz 008DE1ABh
008DDDA3: mov var_000000EC, 00000004h
008DDDAD: lea eax, var_00000140
008DDDB3: push eax
008DDDB4: mov eax, [ebp+08h]
008DDDB7: mov eax, [eax]
008DDDB9: push [ebp+08h]
008DDDBC: call [eax+00000080h]
008DDDC2: fclex 
008DDDC4: mov var_00000148, eax
008DDDCA: cmp var_00000148, 00000000h
008DDDD1: jnl 8DDDF3h
008DDDD3: push 00000080h
008DDDD8: push 004487E0h
008DDDDD: push [ebp+08h]
008DDDE0: push var_00000148
008DDDE6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DDDEB: mov var_00000170, eax
008DDDF1: jmp 8DDDFAh
008DDDF3: and var_00000170, 00000000h
008DDDFA: fld real4 ptr var_00000140
008DDE00: fsub real4 ptr [00402BA4h]
008DDE06: fstp real4 ptr var_00000104
008DDE0C: fstsw ax
008DDE0E: test al, 0Dh
008DDE10: jnz 008DE1ABh
008DDE16: mov var_0000010C, 00000004h
008DDE20: push 00000010h
008DDE22: pop eax
008DDE23: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DDE28: lea esi, var_000000CC
008DDE2E: mov edi, esp
008DDE30: movsd 
008DDE31: movsd 
008DDE32: movsd 
008DDE33: movsd 
008DDE34: push 00000010h
008DDE36: pop eax
008DDE37: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DDE3C: lea esi, var_000000EC
008DDE42: mov edi, esp
008DDE44: movsd 
008DDE45: movsd 
008DDE46: movsd 
008DDE47: movsd 
008DDE48: push 00000010h
008DDE4A: pop eax
008DDE4B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DDE50: lea esi, var_0000010C
008DDE56: mov edi, esp
008DDE58: movsd 
008DDE59: movsd 
008DDE5A: movsd 
008DDE5B: movsd 
008DDE5C: push 00000003h
008DDE5E: push 80011001h
008DDE63: mov eax, [ebp+08h]
008DDE66: mov eax, [eax]
008DDE68: push [ebp+08h]
008DDE6B: call [eax+00000320h]
008DDE71: push eax
008DDE72: lea eax, var_3C
008DDE75: push eax
008DDE76: call 00410A84h ; Set (object)
008DDE7B: push eax
008DDE7C: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008DDE81: add esp, 0000003Ch
008DDE84: lea eax, var_3C
008DDE87: push eax
008DDE88: lea eax, var_38
008DDE8B: push eax
008DDE8C: lea eax, var_34
008DDE8F: push eax
008DDE90: push 00000003h
008DDE92: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DDE97: add esp, 00000010h
008DDE9A: lea eax, var_5C
008DDE9D: push eax
008DDE9E: lea eax, var_4C
008DDEA1: push eax
008DDEA2: push 00000002h
008DDEA4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DDEA9: add esp, 0000000Ch
008DDEAC: mov var_04, 00000005h
008DDEB3: push 00000000h
008DDEB5: push 80010005h
008DDEBA: mov eax, [ebp+08h]
008DDEBD: mov eax, [eax]
008DDEBF: push [ebp+08h]
008DDEC2: call [eax+00000320h]
008DDEC8: push eax
008DDEC9: lea eax, var_34
008DDECC: push eax
008DDECD: call 00410A84h ; Set (object)
008DDED2: push eax
008DDED3: lea eax, var_4C
008DDED6: push eax
008DDED7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DDEDC: add esp, 00000010h
008DDEDF: push eax
008DDEE0: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008DDEE5: fstp real4 ptr var_000000C4
008DDEEB: mov var_000000CC, 00000004h
008DDEF5: push 00000000h
008DDEF7: push 80010005h
008DDEFC: mov eax, [ebp+08h]
008DDEFF: mov eax, [eax]
008DDF01: push [ebp+08h]
008DDF04: call [eax+00000324h]
008DDF0A: push eax
008DDF0B: lea eax, var_38
008DDF0E: push eax
008DDF0F: call 00410A84h ; Set (object)
008DDF14: push eax
008DDF15: lea eax, var_7C
008DDF18: push eax
008DDF19: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DDF1E: add esp, 00000010h
008DDF21: push eax
008DDF22: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008DDF27: fstp real4 ptr var_000000D4
008DDF2D: mov var_000000DC, 00000004h
008DDF37: mov var_000000E4, 00000168h
008DDF41: mov var_000000EC, 00000002h
008DDF4B: push 00000000h
008DDF4D: push 00454C54h ; Left
008DDF52: lea eax, var_30
008DDF55: push eax
008DDF56: lea eax, var_000000AC
008DDF5C: push eax
008DDF5D: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
008DDF62: add esp, 00000010h
008DDF65: mov esi, eax
008DDF67: push 00000010h
008DDF69: pop eax
008DDF6A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DDF6F: mov edi, esp
008DDF71: movsd 
008DDF72: movsd 
008DDF73: movsd 
008DDF74: movsd 
008DDF75: push 00000000h
008DDF77: push 00447A54h ; Top
008DDF7C: lea eax, var_30
008DDF7F: push eax
008DDF80: lea eax, var_000000BC
008DDF86: push eax
008DDF87: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
008DDF8C: add esp, 00000010h
008DDF8F: mov esi, eax
008DDF91: push 00000010h
008DDF93: pop eax
008DDF94: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DDF99: mov edi, esp
008DDF9B: movsd 
008DDF9C: movsd 
008DDF9D: movsd 
008DDF9E: movsd 
008DDF9F: lea eax, var_000000CC
008DDFA5: push eax
008DDFA6: push 00000000h
008DDFA8: push 00454C54h ; Left
008DDFAD: lea eax, var_30
008DDFB0: push eax
008DDFB1: lea eax, var_5C
008DDFB4: push eax
008DDFB5: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
008DDFBA: add esp, 00000010h
008DDFBD: push eax
008DDFBE: lea eax, var_6C
008DDFC1: push eax
008DDFC2: call 004107DEh ; msvbvm60.dll.__vbaVarSub
008DDFC7: push eax
008DDFC8: lea eax, var_000000DC
008DDFCE: push eax
008DDFCF: lea eax, var_0000008C
008DDFD5: push eax
008DDFD6: call 004107DEh ; msvbvm60.dll.__vbaVarSub
008DDFDB: push eax
008DDFDC: lea eax, var_000000EC
008DDFE2: push eax
008DDFE3: lea eax, var_0000009C
008DDFE9: push eax
008DDFEA: call 004107DEh ; msvbvm60.dll.__vbaVarSub
008DDFEF: mov esi, eax
008DDFF1: push 00000010h
008DDFF3: pop eax
008DDFF4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DDFF9: mov edi, esp
008DDFFB: movsd 
008DDFFC: movsd 
008DDFFD: movsd 
008DDFFE: movsd 
008DDFFF: push 00000003h
008DE001: push 00447A5Ch ; Move
008DE006: lea eax, var_30
008DE009: push eax
008DE00A: call 004107D2h ; msvbvm60.dll.__vbaObjVar
008DE00F: push eax
008DE010: call 004107E4h ; msvbvm60.dll.__vbaLateMemCall
008DE015: add esp, 0000003Ch
008DE018: lea eax, var_38
008DE01B: push eax
008DE01C: lea eax, var_34
008DE01F: push eax
008DE020: push 00000002h
008DE022: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DE027: add esp, 0000000Ch
008DE02A: lea eax, var_000000BC
008DE030: push eax
008DE031: lea eax, var_000000AC
008DE037: push eax
008DE038: lea eax, var_7C
008DE03B: push eax
008DE03C: lea eax, var_5C
008DE03F: push eax
008DE040: lea eax, var_4C
008DE043: push eax
008DE044: push 00000005h
008DE046: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DE04B: add esp, 00000018h
008DE04E: mov var_04, 00000006h
008DE055: mov var_000000C4, 00000078h
008DE05F: mov var_000000CC, 00000002h
008DE069: push 00000000h
008DE06B: push 00454C54h ; Left
008DE070: lea eax, var_30
008DE073: push eax
008DE074: lea eax, var_4C
008DE077: push eax
008DE078: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
008DE07D: add esp, 00000010h
008DE080: push eax
008DE081: push 00000000h
008DE083: push 00447A48h ; Width
008DE088: lea eax, var_30
008DE08B: push eax
008DE08C: lea eax, var_5C
008DE08F: push eax
008DE090: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
008DE095: add esp, 00000010h
008DE098: push eax
008DE099: lea eax, var_6C
008DE09C: push eax
008DE09D: call 004107B4h ; msvbvm60.dll.__vbaVarAdd
008DE0A2: push eax
008DE0A3: lea eax, var_000000CC
008DE0A9: push eax
008DE0AA: lea eax, var_7C
008DE0AD: push eax
008DE0AE: call 004107B4h ; msvbvm60.dll.__vbaVarAdd
008DE0B3: push eax
008DE0B4: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008DE0B9: fstp real4 ptr var_000000D4
008DE0BF: mov var_000000DC, 00000004h
008DE0C9: push 00000010h
008DE0CB: pop eax
008DE0CC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DE0D1: lea esi, var_000000DC
008DE0D7: mov edi, esp
008DE0D9: movsd 
008DE0DA: movsd 
008DE0DB: movsd 
008DE0DC: movsd 
008DE0DD: push 00000001h
008DE0DF: push 80011002h
008DE0E4: mov eax, [ebp+08h]
008DE0E7: mov eax, [eax]
008DE0E9: push [ebp+08h]
008DE0EC: call [eax+00000324h]
008DE0F2: push eax
008DE0F3: lea eax, var_34
008DE0F6: push eax
008DE0F7: call 00410A84h ; Set (object)
008DE0FC: push eax
008DE0FD: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008DE102: add esp, 0000001Ch
008DE105: lea ecx, var_34
008DE108: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DE10D: lea eax, var_7C
008DE110: push eax
008DE111: lea eax, var_6C
008DE114: push eax
008DE115: lea eax, var_5C
008DE118: push eax
008DE119: lea eax, var_4C
008DE11C: push eax
008DE11D: push 00000004h
008DE11F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DE124: add esp, 00000014h
008DE127: mov var_10, 00000000h
008DE12E: wait 
008DE12F: push 008DE18Ch
008DE134: jmp 8DE183h
008DE136: lea eax, var_3C
008DE139: push eax
008DE13A: lea eax, var_38
008DE13D: push eax
008DE13E: lea eax, var_34
008DE141: push eax
008DE142: push 00000003h
008DE144: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DE149: add esp, 00000010h
008DE14C: lea eax, var_000000BC
008DE152: push eax
008DE153: lea eax, var_000000AC
008DE159: push eax
008DE15A: lea eax, var_0000009C
008DE160: push eax
008DE161: lea eax, var_0000008C
008DE167: push eax
008DE168: lea eax, var_7C
008DE16B: push eax
008DE16C: lea eax, var_6C
008DE16F: push eax
008DE170: lea eax, var_5C
008DE173: push eax
008DE174: lea eax, var_4C
008DE177: push eax
008DE178: push 00000008h
008DE17A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DE17F: add esp, 00000024h
008DE182: ret 
End Sub

Private sub lstAds__8DE60C
008DE60C: push ebp
008DE60D: mov ebp, esp
008DE60F: sub esp, 0000000Ch
008DE612: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008DE617: mov eax, fs:[00h]
008DE61D: push eax
008DE61E: mov fs:[00000000h], esp
008DE625: push 00000054h
008DE627: pop eax
008DE628: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DE62D: push ebx
008DE62E: push esi
008DE62F: push edi
008DE630: mov var_0C, esp
008DE633: mov var_08, 00410050h
008DE63A: mov eax, [ebp+08h]
008DE63D: and eax, 00000001h
008DE640: mov var_04, eax
008DE643: mov eax, [ebp+08h]
008DE646: and al, FEh
008DE648: mov [ebp+08h], eax
008DE64B: mov eax, [ebp+08h]
008DE64E: mov eax, [eax]
008DE650: push [ebp+08h]
008DE653: call [eax+04h]
008DE656: mov eax, [ebp+0Ch]
008DE659: cmp word ptr [eax], 0002h
008DE65D: jnz 008DE737h
008DE663: mov var_50, 80020004h
008DE66A: mov var_58, 0000000Ah
008DE671: mov var_40, 80020004h
008DE678: mov var_48, 0000000Ah
008DE67F: mov var_30, 80020004h
008DE686: mov var_38, 0000000Ah
008DE68D: mov var_20, 80020004h
008DE694: mov var_28, 0000000Ah
008DE69B: push 00000010h
008DE69D: pop eax
008DE69E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DE6A3: lea esi, var_58
008DE6A6: mov edi, esp
008DE6A8: movsd 
008DE6A9: movsd 
008DE6AA: movsd 
008DE6AB: movsd 
008DE6AC: push 00000010h
008DE6AE: pop eax
008DE6AF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DE6B4: lea esi, var_48
008DE6B7: mov edi, esp
008DE6B9: movsd 
008DE6BA: movsd 
008DE6BB: movsd 
008DE6BC: movsd 
008DE6BD: push 00000010h
008DE6BF: pop eax
008DE6C0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DE6C5: lea esi, var_38
008DE6C8: mov edi, esp
008DE6CA: movsd 
008DE6CB: movsd 
008DE6CC: movsd 
008DE6CD: movsd 
008DE6CE: push 00000010h
008DE6D0: pop eax
008DE6D1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DE6D6: lea esi, var_28
008DE6D9: mov edi, esp
008DE6DB: movsd 
008DE6DC: movsd 
008DE6DD: movsd 
008DE6DE: movsd 
008DE6DF: mov eax, [ebp+08h]
008DE6E2: mov eax, [eax]
008DE6E4: push [ebp+08h]
008DE6E7: call [eax+00000310h]
008DE6ED: push eax
008DE6EE: lea eax, var_18
008DE6F1: push eax
008DE6F2: call 00410A84h ; Set (object)
008DE6F7: push eax
008DE6F8: mov eax, [ebp+08h]
008DE6FB: mov eax, [eax]
008DE6FD: push [ebp+08h]
008DE700: call [eax+000002BCh]
008DE706: fclex 
008DE708: mov var_5C, eax
008DE70B: cmp var_5C, 00000000h
008DE70F: jnl 8DE72Bh
008DE711: push 000002BCh
008DE716: push 004487E0h
008DE71B: push [ebp+08h]
008DE71E: push var_5C
008DE721: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DE726: mov var_68, eax
008DE729: jmp 8DE72Fh
008DE72B: and var_68, 00000000h
008DE72F: lea ecx, var_18
008DE732: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DE737: mov var_04, 00000000h
008DE73E: push 008DE74Fh
008DE743: jmp 8DE74Eh
008DE745: lea ecx, var_18
008DE748: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DE74D: ret 
End Sub

Private sub lstAds__8DE1B0
008DE1B0: push ebp
008DE1B1: mov ebp, esp
008DE1B3: sub esp, 0000000Ch
008DE1B6: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008DE1BB: mov eax, fs:[00h]
008DE1C1: push eax
008DE1C2: mov fs:[00000000h], esp
008DE1C9: push 00000008h
008DE1CB: pop eax
008DE1CC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DE1D1: push ebx
008DE1D2: push esi
008DE1D3: push edi
008DE1D4: mov var_0C, esp
008DE1D7: mov var_08, 0040FFF0h
008DE1DE: mov eax, [ebp+08h]
008DE1E1: and eax, 00000001h
008DE1E4: mov var_04, eax
008DE1E7: mov eax, [ebp+08h]
008DE1EA: and al, FEh
008DE1EC: mov [ebp+08h], eax
008DE1EF: mov eax, [ebp+08h]
008DE1F2: mov eax, [eax]
008DE1F4: push [ebp+08h]
008DE1F7: call [eax+04h]
008DE1FA: mov eax, [ebp+0Ch]
008DE1FD: or word ptr [eax], FFFFh
008DE201: mov var_04, 00000000h
008DE208: mov eax, [ebp+08h]
008DE20B: mov eax, [eax]
008DE20D: push [ebp+08h]
008DE210: call [eax+08h]
008DE213: mov eax, var_04
008DE216: mov ecx, var_14
008DE219: mov fs:[00000000h], ecx
008DE220: pop edi
008DE221: pop esi
008DE222: pop ebx
008DE223: leave 
008DE224: retn 0008h
End Sub

Private sub lstAds__8DE227
008DE227: push ebp
008DE228: mov ebp, esp
008DE22A: sub esp, 00000018h
008DE22D: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008DE232: mov eax, fs:[00h]
008DE238: push eax
008DE239: mov fs:[00000000h], esp
008DE240: push 00000064h
008DE242: pop eax
008DE243: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DE248: push ebx
008DE249: push esi
008DE24A: push edi
008DE24B: mov var_18, esp
008DE24E: mov var_14, 0040FFF8h
008DE255: mov eax, [ebp+08h]
008DE258: and eax, 00000001h
008DE25B: mov var_10, eax
008DE25E: mov eax, [ebp+08h]
008DE261: and al, FEh
008DE263: mov [ebp+08h], eax
008DE266: mov var_0C, 00000000h
008DE26D: mov eax, [ebp+08h]
008DE270: mov eax, [eax]
008DE272: push [ebp+08h]
008DE275: call [eax+04h]
008DE278: mov var_04, 00000001h
008DE27F: push [ebp+0Ch]
008DE282: lea eax, var_24
008DE285: push eax
008DE286: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008DE28B: mov var_04, 00000002h
008DE292: push FFFFFFFFh
008DE294: call 00410A60h ; On Error ...
008DE299: mov var_04, 00000003h
008DE2A0: push 00000000h
008DE2A2: push 00000005h
008DE2A4: push var_24
008DE2A7: lea eax, var_3C
008DE2AA: push eax
008DE2AB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DE2B0: add esp, 00000010h
008DE2B3: push eax
008DE2B4: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008DE2B9: mov esi, eax
008DE2BB: sub esi, 00000001h
008DE2BE: jo 008DE607h
008DE2C4: push 00000000h
008DE2C6: push 00000012h
008DE2C8: mov eax, [ebp+08h]
008DE2CB: mov eax, [eax]
008DE2CD: push [ebp+08h]
008DE2D0: call [eax+0000031Ch]
008DE2D6: push eax
008DE2D7: lea eax, var_28
008DE2DA: push eax
008DE2DB: call 00410A84h ; Set (object)
008DE2E0: push eax
008DE2E1: lea eax, var_4C
008DE2E4: push eax
008DE2E5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DE2EA: add esp, 00000010h
008DE2ED: push eax
008DE2EE: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008DE2F3: sub esi, eax
008DE2F5: neg esi
008DE2F7: sbb esi, esi
008DE2F9: inc esi
008DE2FA: neg esi
008DE2FC: mov var_70, si
008DE300: lea ecx, var_28
008DE303: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DE308: lea eax, var_4C
008DE30B: push eax
008DE30C: lea eax, var_3C
008DE30F: push eax
008DE310: push 00000002h
008DE312: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DE317: add esp, 0000000Ch
008DE31A: movsx eax, word ptr var_70
008DE31E: test eax, eax
008DE320: jz 008DE457h
008DE326: mov var_04, 00000004h
008DE32D: push 00000000h
008DE32F: push 00000013h
008DE331: mov eax, [ebp+08h]
008DE334: mov eax, [eax]
008DE336: push [ebp+08h]
008DE339: call [eax+0000031Ch]
008DE33F: push eax
008DE340: lea eax, var_28
008DE343: push eax
008DE344: call 00410A84h ; Set (object)
008DE349: push eax
008DE34A: lea eax, var_3C
008DE34D: push eax
008DE34E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DE353: add esp, 00000010h
008DE356: push eax
008DE357: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008DE35C: push 00000001h
008DE35E: pop ecx
008DE35F: sub ecx, eax
008DE361: jo 008DE607h
008DE367: mov var_54, ecx
008DE36A: mov var_5C, 00000003h
008DE371: push 00000010h
008DE373: pop eax
008DE374: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DE379: lea esi, var_5C
008DE37C: mov edi, esp
008DE37E: movsd 
008DE37F: movsd 
008DE380: movsd 
008DE381: movsd 
008DE382: push 00000013h
008DE384: mov eax, [ebp+08h]
008DE387: mov eax, [eax]
008DE389: push [ebp+08h]
008DE38C: call [eax+0000031Ch]
008DE392: push eax
008DE393: lea eax, var_2C
008DE396: push eax
008DE397: call 00410A84h ; Set (object)
008DE39C: push eax
008DE39D: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008DE3A2: lea eax, var_2C
008DE3A5: push eax
008DE3A6: lea eax, var_28
008DE3A9: push eax
008DE3AA: push 00000002h
008DE3AC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DE3B1: add esp, 0000000Ch
008DE3B4: lea ecx, var_3C
008DE3B7: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008DE3BC: mov var_04, 00000005h
008DE3C3: or var_54, FFFFFFFFh
008DE3C7: mov var_5C, 0000000Bh
008DE3CE: push 00000010h
008DE3D0: pop eax
008DE3D1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DE3D6: lea esi, var_5C
008DE3D9: mov edi, esp
008DE3DB: movsd 
008DE3DC: movsd 
008DE3DD: movsd 
008DE3DE: movsd 
008DE3DF: push 00000011h
008DE3E1: mov eax, [ebp+08h]
008DE3E4: mov eax, [eax]
008DE3E6: push [ebp+08h]
008DE3E9: call [eax+0000031Ch]
008DE3EF: push eax
008DE3F0: lea eax, var_28
008DE3F3: push eax
008DE3F4: call 00410A84h ; Set (object)
008DE3F9: push eax
008DE3FA: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008DE3FF: lea ecx, var_28
008DE402: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DE407: mov var_04, 00000006h
008DE40E: and var_54, 00000000h
008DE412: mov var_5C, 0000000Bh
008DE419: push 00000010h
008DE41B: pop eax
008DE41C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DE421: lea esi, var_5C
008DE424: mov edi, esp
008DE426: movsd 
008DE427: movsd 
008DE428: movsd 
008DE429: movsd 
008DE42A: push 00000011h
008DE42C: mov eax, [ebp+08h]
008DE42F: mov eax, [eax]
008DE431: push [ebp+08h]
008DE434: call [eax+0000031Ch]
008DE43A: push eax
008DE43B: lea eax, var_28
008DE43E: push eax
008DE43F: call 00410A84h ; Set (object)
008DE444: push eax
008DE445: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008DE44A: lea ecx, var_28
008DE44D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DE452: jmp 008DE5ACh
008DE457: mov var_04, 00000008h
008DE45E: and var_54, 00000000h
008DE462: mov var_5C, 00000003h
008DE469: push 00000010h
008DE46B: pop eax
008DE46C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DE471: lea esi, var_5C
008DE474: mov edi, esp
008DE476: movsd 
008DE477: movsd 
008DE478: movsd 
008DE479: movsd 
008DE47A: push 00000013h
008DE47C: mov eax, [ebp+08h]
008DE47F: mov eax, [eax]
008DE481: push [ebp+08h]
008DE484: call [eax+0000031Ch]
008DE48A: push eax
008DE48B: lea eax, var_28
008DE48E: push eax
008DE48F: call 00410A84h ; Set (object)
008DE494: push eax
008DE495: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008DE49A: lea ecx, var_28
008DE49D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DE4A2: mov var_04, 00000009h
008DE4A9: push 00000000h
008DE4AB: push 00000005h
008DE4AD: push var_24
008DE4B0: lea eax, var_3C
008DE4B3: push eax
008DE4B4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DE4B9: add esp, 00000010h
008DE4BC: push eax
008DE4BD: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008DE4C2: sub eax, 00000001h
008DE4C5: jo 008DE607h
008DE4CB: mov var_54, eax
008DE4CE: mov var_5C, 00000003h
008DE4D5: push 00000010h
008DE4D7: pop eax
008DE4D8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DE4DD: lea esi, var_5C
008DE4E0: mov edi, esp
008DE4E2: movsd 
008DE4E3: movsd 
008DE4E4: movsd 
008DE4E5: movsd 
008DE4E6: push 00000012h
008DE4E8: mov eax, [ebp+08h]
008DE4EB: mov eax, [eax]
008DE4ED: push [ebp+08h]
008DE4F0: call [eax+0000031Ch]
008DE4F6: push eax
008DE4F7: lea eax, var_28
008DE4FA: push eax
008DE4FB: call 00410A84h ; Set (object)
008DE500: push eax
008DE501: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008DE506: lea ecx, var_28
008DE509: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DE50E: lea ecx, var_3C
008DE511: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008DE516: mov var_04, 0000000Ah
008DE51D: or var_54, FFFFFFFFh
008DE521: mov var_5C, 0000000Bh
008DE528: push 00000010h
008DE52A: pop eax
008DE52B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DE530: lea esi, var_5C
008DE533: mov edi, esp
008DE535: movsd 
008DE536: movsd 
008DE537: movsd 
008DE538: movsd 
008DE539: push 00000011h
008DE53B: mov eax, [ebp+08h]
008DE53E: mov eax, [eax]
008DE540: push [ebp+08h]
008DE543: call [eax+0000031Ch]
008DE549: push eax
008DE54A: lea eax, var_28
008DE54D: push eax
008DE54E: call 00410A84h ; Set (object)
008DE553: push eax
008DE554: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008DE559: lea ecx, var_28
008DE55C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DE561: mov var_04, 0000000Bh
008DE568: and var_54, 00000000h
008DE56C: mov var_5C, 0000000Bh
008DE573: push 00000010h
008DE575: pop eax
008DE576: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DE57B: lea esi, var_5C
008DE57E: mov edi, esp
008DE580: movsd 
008DE581: movsd 
008DE582: movsd 
008DE583: movsd 
008DE584: push 00000011h
008DE586: mov eax, [ebp+08h]
008DE589: mov eax, [eax]
008DE58B: push [ebp+08h]
008DE58E: call [eax+0000031Ch]
008DE594: push eax
008DE595: lea eax, var_28
008DE598: push eax
008DE599: call 00410A84h ; Set (object)
008DE59E: push eax
008DE59F: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008DE5A4: lea ecx, var_28
008DE5A7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DE5AC: mov var_10, 00000000h
008DE5B3: push 008DE5E8h
008DE5B8: jmp 8DE5DFh
008DE5BA: lea eax, var_2C
008DE5BD: push eax
008DE5BE: lea eax, var_28
008DE5C1: push eax
008DE5C2: push 00000002h
008DE5C4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DE5C9: add esp, 0000000Ch
008DE5CC: lea eax, var_4C
008DE5CF: push eax
008DE5D0: lea eax, var_3C
008DE5D3: push eax
008DE5D4: push 00000002h
008DE5D6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DE5DB: add esp, 0000000Ch
008DE5DE: ret 
End Sub

Private sub cmdSet__8DC39F
008DC39F: push ebp
008DC3A0: mov ebp, esp
008DC3A2: sub esp, 00000018h
008DC3A5: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008DC3AA: mov eax, fs:[00h]
008DC3B0: push eax
008DC3B1: mov fs:[00000000h], esp
008DC3B8: mov eax, 00000230h
008DC3BD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DC3C2: push ebx
008DC3C3: push esi
008DC3C4: push edi
008DC3C5: mov var_18, esp
008DC3C8: mov var_14, 0040FF18h
008DC3CF: mov eax, [ebp+08h]
008DC3D2: and eax, 00000001h
008DC3D5: mov var_10, eax
008DC3D8: mov eax, [ebp+08h]
008DC3DB: and al, FEh
008DC3DD: mov [ebp+08h], eax
008DC3E0: mov var_0C, 00000000h
008DC3E7: mov eax, [ebp+08h]
008DC3EA: mov eax, [eax]
008DC3EC: push [ebp+08h]
008DC3EF: call [eax+04h]
008DC3F2: mov var_04, 00000001h
008DC3F9: mov var_04, 00000002h
008DC400: push FFFFFFFFh
008DC402: call 00410A60h ; On Error ...
008DC407: mov var_04, 00000003h
008DC40E: mov eax, [ebp+08h]
008DC411: mov eax, [eax]
008DC413: push [ebp+08h]
008DC416: call [eax+00000304h]
008DC41C: push eax
008DC41D: lea eax, var_3C
008DC420: push eax
008DC421: call 00410A84h ; Set (object)
008DC426: mov var_00000148, eax
008DC42C: lea eax, var_34
008DC42F: push eax
008DC430: mov eax, var_00000148
008DC436: mov eax, [eax]
008DC438: push var_00000148
008DC43E: call [eax+000000A0h]
008DC444: fclex 
008DC446: mov var_0000014C, eax
008DC44C: cmp var_0000014C, 00000000h
008DC453: jnl 8DC478h
008DC455: push 000000A0h
008DC45A: push 00440E08h
008DC45F: push var_00000148
008DC465: push var_0000014C
008DC46B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DC470: mov var_00000208, eax
008DC476: jmp 8DC47Fh
008DC478: and var_00000208, 00000000h
008DC47F: push var_34
008DC482: call 0041098Eh ; Len(arg_1)
008DC487: neg eax
008DC489: sbb eax, eax
008DC48B: inc eax
008DC48C: neg eax
008DC48E: mov var_00000150, ax
008DC495: lea ecx, var_34
008DC498: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008DC49D: lea ecx, var_3C
008DC4A0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DC4A5: movsx eax, word ptr var_00000150
008DC4AC: test eax, eax
008DC4AE: jz 008DC55Eh
008DC4B4: mov var_04, 00000004h
008DC4BB: mov var_0000009C, 80020004h
008DC4C5: mov var_000000A4, 0000000Ah
008DC4CF: mov var_0000008C, 80020004h
008DC4D9: mov var_00000094, 0000000Ah
008DC4E3: mov var_7C, 80020004h
008DC4EA: mov var_00000084, 0000000Ah
008DC4F4: mov var_00000100, 004615ACh ; URL can't be empty!
008DC4FE: mov var_00000108, 00000008h
008DC508: lea edx, var_00000108
008DC50E: lea ecx, var_74
008DC511: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008DC516: lea eax, var_000000A4
008DC51C: push eax
008DC51D: lea eax, var_00000094
008DC523: push eax
008DC524: lea eax, var_00000084
008DC52A: push eax
008DC52B: push 00000030h
008DC52D: lea eax, var_74
008DC530: push eax
008DC531: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008DC536: lea eax, var_000000A4
008DC53C: push eax
008DC53D: lea eax, var_00000094
008DC543: push eax
008DC544: lea eax, var_00000084
008DC54A: push eax
008DC54B: lea eax, var_74
008DC54E: push eax
008DC54F: push 00000004h
008DC551: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DC556: add esp, 00000014h
008DC559: jmp 008DD74Eh
008DC55E: mov var_04, 00000007h
008DC565: mov var_00000100, 00000001h
008DC56F: mov var_00000108, 00000002h
008DC579: mov var_00000110, 00000001h
008DC583: mov var_00000118, 00000002h
008DC58D: mov eax, [ebp+08h]
008DC590: mov eax, [eax]
008DC592: push [ebp+08h]
008DC595: call [eax+00000300h]
008DC59B: push eax
008DC59C: lea eax, var_3C
008DC59F: push eax
008DC5A0: call 00410A84h ; Set (object)
008DC5A5: mov var_00000148, eax
008DC5AB: lea eax, var_0000013C
008DC5B1: push eax
008DC5B2: mov eax, var_00000148
008DC5B8: mov eax, [eax]
008DC5BA: push var_00000148
008DC5C0: call [eax+44h]
008DC5C3: fclex 
008DC5C5: mov var_0000014C, eax
008DC5CB: cmp var_0000014C, 00000000h
008DC5D2: jnl 8DC5F4h
008DC5D4: push 00000044h
008DC5D6: push 00440DE8h
008DC5DB: push var_00000148
008DC5E1: push var_0000014C
008DC5E7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DC5EC: mov var_0000020C, eax
008DC5F2: jmp 8DC5FBh
008DC5F4: and var_0000020C, 00000000h
008DC5FB: mov ax, var_0000013C
008DC602: mov var_00000120, ax
008DC609: mov var_00000128, 00000002h
008DC613: lea eax, var_00000108
008DC619: push eax
008DC61A: lea eax, var_00000118
008DC620: push eax
008DC621: lea eax, var_00000128
008DC627: push eax
008DC628: lea eax, var_00000184
008DC62E: push eax
008DC62F: lea eax, var_00000174
008DC635: push eax
008DC636: lea eax, var_30
008DC639: push eax
008DC63A: call 00410A3Ch ; For
008DC63F: mov var_000001DC, eax
008DC645: lea ecx, var_3C
008DC648: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DC64D: jmp 008DC85Bh
008DC652: mov var_04, 00000008h
008DC659: mov eax, [ebp+08h]
008DC65C: mov eax, [eax]
008DC65E: push [ebp+08h]
008DC661: call [eax+00000300h]
008DC667: push eax
008DC668: lea eax, var_3C
008DC66B: push eax
008DC66C: call 00410A84h ; Set (object)
008DC671: mov var_00000148, eax
008DC677: lea eax, var_40
008DC67A: push eax
008DC67B: lea eax, var_30
008DC67E: push eax
008DC67F: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008DC684: push eax
008DC685: mov eax, var_00000148
008DC68B: mov eax, [eax]
008DC68D: push var_00000148
008DC693: call [eax+40h]
008DC696: fclex 
008DC698: mov var_0000014C, eax
008DC69E: cmp var_0000014C, 00000000h
008DC6A5: jnl 8DC6C7h
008DC6A7: push 00000040h
008DC6A9: push 00440DE8h
008DC6AE: push var_00000148
008DC6B4: push var_0000014C
008DC6BA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DC6BF: mov var_00000210, eax
008DC6C5: jmp 8DC6CEh
008DC6C7: and var_00000210, 00000000h
008DC6CE: mov eax, var_40
008DC6D1: mov var_00000150, eax
008DC6D7: lea eax, var_34
008DC6DA: push eax
008DC6DB: mov eax, var_00000150
008DC6E1: mov eax, [eax]
008DC6E3: push var_00000150
008DC6E9: call [eax+000000A0h]
008DC6EF: fclex 
008DC6F1: mov var_00000154, eax
008DC6F7: cmp var_00000154, 00000000h
008DC6FE: jnl 8DC723h
008DC700: push 000000A0h
008DC705: push 00440E08h
008DC70A: push var_00000150
008DC710: push var_00000154
008DC716: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DC71B: mov var_00000214, eax
008DC721: jmp 8DC72Ah
008DC723: and var_00000214, 00000000h
008DC72A: push var_34
008DC72D: call 004109DCh ; Val(arg_1)
008DC732: call 004109D6h ; msvbvm60.dll.__vbaFpR8
008DC737: fcomp real8 ptr [00401770h]
008DC73D: fstsw ax
008DC73F: sahf 
008DC740: jnz 8DC74Eh
008DC742: mov var_00000218, 00000001h
008DC74C: jmp 8DC755h
008DC74E: and var_00000218, 00000000h
008DC755: mov eax, var_00000218
008DC75B: neg eax
008DC75D: mov var_00000158, ax
008DC764: lea ecx, var_34
008DC767: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008DC76C: lea eax, var_40
008DC76F: push eax
008DC770: lea eax, var_3C
008DC773: push eax
008DC774: push 00000002h
008DC776: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DC77B: add esp, 0000000Ch
008DC77E: movsx eax, word ptr var_00000158
008DC785: test eax, eax
008DC787: jz 008DC837h
008DC78D: mov var_04, 00000009h
008DC794: mov var_0000009C, 80020004h
008DC79E: mov var_000000A4, 0000000Ah
008DC7A8: mov var_0000008C, 80020004h
008DC7B2: mov var_00000094, 0000000Ah
008DC7BC: mov var_7C, 80020004h
008DC7C3: mov var_00000084, 0000000Ah
008DC7CD: mov var_00000100, 004615D8h ; Make sure no value equals 0!
008DC7D7: mov var_00000108, 00000008h
008DC7E1: lea edx, var_00000108
008DC7E7: lea ecx, var_74
008DC7EA: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008DC7EF: lea eax, var_000000A4
008DC7F5: push eax
008DC7F6: lea eax, var_00000094
008DC7FC: push eax
008DC7FD: lea eax, var_00000084
008DC803: push eax
008DC804: push 00000030h
008DC806: lea eax, var_74
008DC809: push eax
008DC80A: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008DC80F: lea eax, var_000000A4
008DC815: push eax
008DC816: lea eax, var_00000094
008DC81C: push eax
008DC81D: lea eax, var_00000084
008DC823: push eax
008DC824: lea eax, var_74
008DC827: push eax
008DC828: push 00000004h
008DC82A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DC82F: add esp, 00000014h
008DC832: jmp 008DD74Eh
008DC837: mov var_04, 0000000Ch
008DC83E: lea eax, var_00000184
008DC844: push eax
008DC845: lea eax, var_00000174
008DC84B: push eax
008DC84C: lea eax, var_30
008DC84F: push eax
008DC850: call 00410A36h ; Next
008DC855: mov var_000001DC, eax
008DC85B: cmp var_000001DC, 00000000h
008DC862: jnz 008DC652h
008DC868: mov var_04, 0000000Dh
008DC86F: cmp word ptr [008F2430h], FFFFh
008DC877: jnz 008DCFE8h
008DC87D: mov var_04, 0000000Eh
008DC884: mov var_00000100, 00000001h
008DC88E: mov var_00000108, 00000002h
008DC898: cmp [008F2010h], 00000000h
008DC89F: jnz 8DC8BCh
008DC8A1: push 008F2010h
008DC8A6: push 00433984h
008DC8AB: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DC8B0: mov var_0000021C, 008F2010h
008DC8BA: jmp 8DC8C6h
008DC8BC: mov var_0000021C, 008F2010h
008DC8C6: push 00000000h
008DC8C8: push 00000001h
008DC8CA: push 00440E48h
008DC8CF: push 00000000h
008DC8D1: push 00000018h
008DC8D3: mov eax, var_0000021C
008DC8D9: mov eax, [eax]
008DC8DB: mov ecx, var_0000021C
008DC8E1: mov ecx, [ecx]
008DC8E3: mov ecx, [ecx]
008DC8E5: push eax
008DC8E6: call [ecx+0000054Ch]
008DC8EC: push eax
008DC8ED: lea eax, var_3C
008DC8F0: push eax
008DC8F1: call 00410A84h ; Set (object)
008DC8F6: push eax
008DC8F7: lea eax, var_74
008DC8FA: push eax
008DC8FB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DC900: add esp, 00000010h
008DC903: push eax
008DC904: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DC909: push eax
008DC90A: lea eax, var_40
008DC90D: push eax
008DC90E: call 00410A84h ; Set (object)
008DC913: push eax
008DC914: lea eax, var_00000084
008DC91A: push eax
008DC91B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DC920: add esp, 00000010h
008DC923: push eax
008DC924: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008DC929: mov var_00000110, eax
008DC92F: mov var_00000118, 00000003h
008DC939: mov var_00000120, 00000001h
008DC943: mov var_00000128, 00000002h
008DC94D: lea eax, var_00000108
008DC953: push eax
008DC954: lea eax, var_00000118
008DC95A: push eax
008DC95B: lea eax, var_00000128
008DC961: push eax
008DC962: lea eax, var_000001A4
008DC968: push eax
008DC969: lea eax, var_00000194
008DC96F: push eax
008DC970: lea eax, var_30
008DC973: push eax
008DC974: call 00410A3Ch ; For
008DC979: mov var_000001E0, eax
008DC97F: lea eax, var_40
008DC982: push eax
008DC983: lea eax, var_3C
008DC986: push eax
008DC987: push 00000002h
008DC989: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DC98E: add esp, 0000000Ch
008DC991: lea eax, var_00000084
008DC997: push eax
008DC998: lea eax, var_74
008DC99B: push eax
008DC99C: push 00000002h
008DC99E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DC9A3: add esp, 0000000Ch
008DC9A6: jmp 008DCFD6h
008DC9AB: mov var_04, 0000000Fh
008DC9B2: lea eax, var_30
008DC9B5: mov var_00000100, eax
008DC9BB: mov var_00000108, 0000400Ch
008DC9C5: cmp [008F2010h], 00000000h
008DC9CC: jnz 8DC9E9h
008DC9CE: push 008F2010h
008DC9D3: push 00433984h
008DC9D8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DC9DD: mov var_00000220, 008F2010h
008DC9E7: jmp 8DC9F3h
008DC9E9: mov var_00000220, 008F2010h
008DC9F3: push 00000000h
008DC9F5: push 00000004h
008DC9F7: push 00440E58h
008DC9FC: push 00000010h
008DC9FE: pop eax
008DC9FF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DCA04: lea esi, var_00000108
008DCA0A: mov edi, esp
008DCA0C: movsd 
008DCA0D: movsd 
008DCA0E: movsd 
008DCA0F: movsd 
008DCA10: push 00000001h
008DCA12: push 00000000h
008DCA14: push 00440E48h
008DCA19: push 00000000h
008DCA1B: push 00000018h
008DCA1D: mov eax, var_00000220
008DCA23: mov eax, [eax]
008DCA25: mov ecx, var_00000220
008DCA2B: mov ecx, [ecx]
008DCA2D: mov ecx, [ecx]
008DCA2F: push eax
008DCA30: call [ecx+0000054Ch]
008DCA36: push eax
008DCA37: lea eax, var_3C
008DCA3A: push eax
008DCA3B: call 00410A84h ; Set (object)
008DCA40: push eax
008DCA41: lea eax, var_74
008DCA44: push eax
008DCA45: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DCA4A: add esp, 00000010h
008DCA4D: push eax
008DCA4E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DCA53: push eax
008DCA54: lea eax, var_40
008DCA57: push eax
008DCA58: call 00410A84h ; Set (object)
008DCA5D: push eax
008DCA5E: lea eax, var_00000084
008DCA64: push eax
008DCA65: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DCA6A: add esp, 00000020h
008DCA6D: push eax
008DCA6E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DCA73: push eax
008DCA74: lea eax, var_44
008DCA77: push eax
008DCA78: call 00410A84h ; Set (object)
008DCA7D: push eax
008DCA7E: lea eax, var_00000094
008DCA84: push eax
008DCA85: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DCA8A: add esp, 00000010h
008DCA8D: push eax
008DCA8E: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008DCA93: sub ax, FFFFh
008DCA97: neg ax
008DCA9A: sbb eax, eax
008DCA9C: inc eax
008DCA9D: neg eax
008DCA9F: mov var_00000148, ax
008DCAA6: lea eax, var_44
008DCAA9: push eax
008DCAAA: lea eax, var_40
008DCAAD: push eax
008DCAAE: lea eax, var_3C
008DCAB1: push eax
008DCAB2: push 00000003h
008DCAB4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DCAB9: add esp, 00000010h
008DCABC: lea eax, var_00000094
008DCAC2: push eax
008DCAC3: lea eax, var_00000084
008DCAC9: push eax
008DCACA: lea eax, var_74
008DCACD: push eax
008DCACE: push 00000003h
008DCAD0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DCAD5: add esp, 00000010h
008DCAD8: movsx eax, word ptr var_00000148
008DCADF: test eax, eax
008DCAE1: jz 008DCFB2h
008DCAE7: mov var_04, 00000010h
008DCAEE: lea eax, var_30
008DCAF1: mov var_00000100, eax
008DCAF7: mov var_00000108, 0000400Ch
008DCB01: cmp [008F2010h], 00000000h
008DCB08: jnz 8DCB25h
008DCB0A: push 008F2010h
008DCB0F: push 00433984h
008DCB14: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DCB19: mov var_00000224, 008F2010h
008DCB23: jmp 8DCB2Fh
008DCB25: mov var_00000224, 008F2010h
008DCB2F: push 00000000h
008DCB31: push 00000014h
008DCB33: push 00440E58h
008DCB38: push 00000010h
008DCB3A: pop eax
008DCB3B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DCB40: lea esi, var_00000108
008DCB46: mov edi, esp
008DCB48: movsd 
008DCB49: movsd 
008DCB4A: movsd 
008DCB4B: movsd 
008DCB4C: push 00000001h
008DCB4E: push 00000000h
008DCB50: push 00440E48h
008DCB55: push 00000000h
008DCB57: push 00000018h
008DCB59: mov eax, var_00000224
008DCB5F: mov eax, [eax]
008DCB61: mov ecx, var_00000224
008DCB67: mov ecx, [ecx]
008DCB69: mov ecx, [ecx]
008DCB6B: push eax
008DCB6C: call [ecx+0000054Ch]
008DCB72: push eax
008DCB73: lea eax, var_3C
008DCB76: push eax
008DCB77: call 00410A84h ; Set (object)
008DCB7C: push eax
008DCB7D: lea eax, var_74
008DCB80: push eax
008DCB81: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DCB86: add esp, 00000010h
008DCB89: push eax
008DCB8A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DCB8F: push eax
008DCB90: lea eax, var_40
008DCB93: push eax
008DCB94: call 00410A84h ; Set (object)
008DCB99: push eax
008DCB9A: lea eax, var_00000084
008DCBA0: push eax
008DCBA1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DCBA6: add esp, 00000020h
008DCBA9: push eax
008DCBAA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DCBAF: push eax
008DCBB0: lea eax, var_44
008DCBB3: push eax
008DCBB4: call 00410A84h ; Set (object)
008DCBB9: push eax
008DCBBA: lea eax, var_00000094
008DCBC0: push eax
008DCBC1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DCBC6: add esp, 00000010h
008DCBC9: push eax
008DCBCA: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008DCBCF: mov edx, eax
008DCBD1: lea ecx, var_34
008DCBD4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DCBD9: push eax
008DCBDA: call 004109DCh ; Val(arg_1)
008DCBDF: fstp real8 ptr var_00000144
008DCBE5: push 00000000h
008DCBE7: push 00000005h
008DCBE9: push 00000001h
008DCBEB: push 00000000h
008DCBED: lea eax, var_000000F8
008DCBF3: push eax
008DCBF4: push 00000010h
008DCBF6: push 00000880h
008DCBFB: call 00410946h ; ReDim
008DCC00: add esp, 0000001Ch
008DCC03: mov eax, [ebp+08h]
008DCC06: mov eax, [eax]
008DCC08: push [ebp+08h]
008DCC0B: call [eax+00000304h]
008DCC11: mov var_0000009C, eax
008DCC17: mov var_000000A4, 00000009h
008DCC21: lea esi, var_000000A4
008DCC27: push 00000000h
008DCC29: push var_000000F8
008DCC2F: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008DCC34: mov ecx, eax
008DCC36: mov edx, esi
008DCC38: call 00410940h ; msvbvm60.dll.__vbaVarZero
008DCC3D: mov eax, [ebp+08h]
008DCC40: mov eax, [eax]
008DCC42: push [ebp+08h]
008DCC45: call [eax+00000300h]
008DCC4B: push eax
008DCC4C: lea eax, var_48
008DCC4F: push eax
008DCC50: call 00410A84h ; Set (object)
008DCC55: mov var_00000148, eax
008DCC5B: lea eax, var_4C
008DCC5E: push eax
008DCC5F: push 00000000h
008DCC61: mov eax, var_00000148
008DCC67: mov eax, [eax]
008DCC69: push var_00000148
008DCC6F: call [eax+40h]
008DCC72: fclex 
008DCC74: mov var_0000014C, eax
008DCC7A: cmp var_0000014C, 00000000h
008DCC81: jnl 8DCCA3h
008DCC83: push 00000040h
008DCC85: push 00440DE8h
008DCC8A: push var_00000148
008DCC90: push var_0000014C
008DCC96: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DCC9B: mov var_00000228, eax
008DCCA1: jmp 8DCCAAh
008DCCA3: and var_00000228, 00000000h
008DCCAA: mov eax, var_4C
008DCCAD: mov var_000001E4, eax
008DCCB3: and var_4C, 00000000h
008DCCB7: mov eax, var_000001E4
008DCCBD: mov var_000000AC, eax
008DCCC3: mov var_000000B4, 00000009h
008DCCCD: lea esi, var_000000B4
008DCCD3: push 00000001h
008DCCD5: push var_000000F8
008DCCDB: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008DCCE0: mov ecx, eax
008DCCE2: mov edx, esi
008DCCE4: call 00410940h ; msvbvm60.dll.__vbaVarZero
008DCCE9: mov eax, [ebp+08h]
008DCCEC: mov eax, [eax]
008DCCEE: push [ebp+08h]
008DCCF1: call [eax+00000300h]
008DCCF7: push eax
008DCCF8: lea eax, var_50
008DCCFB: push eax
008DCCFC: call 00410A84h ; Set (object)
008DCD01: mov var_00000150, eax
008DCD07: lea eax, var_54
008DCD0A: push eax
008DCD0B: push 00000001h
008DCD0D: mov eax, var_00000150
008DCD13: mov eax, [eax]
008DCD15: push var_00000150
008DCD1B: call [eax+40h]
008DCD1E: fclex 
008DCD20: mov var_00000154, eax
008DCD26: cmp var_00000154, 00000000h
008DCD2D: jnl 8DCD4Fh
008DCD2F: push 00000040h
008DCD31: push 00440DE8h
008DCD36: push var_00000150
008DCD3C: push var_00000154
008DCD42: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DCD47: mov var_0000022C, eax
008DCD4D: jmp 8DCD56h
008DCD4F: and var_0000022C, 00000000h
008DCD56: mov eax, var_54
008DCD59: mov var_000001E8, eax
008DCD5F: and var_54, 00000000h
008DCD63: mov eax, var_000001E8
008DCD69: mov var_000000BC, eax
008DCD6F: mov var_000000C4, 00000009h
008DCD79: lea esi, var_000000C4
008DCD7F: push 00000002h
008DCD81: push var_000000F8
008DCD87: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008DCD8C: mov ecx, eax
008DCD8E: mov edx, esi
008DCD90: call 00410940h ; msvbvm60.dll.__vbaVarZero
008DCD95: mov eax, [ebp+08h]
008DCD98: mov eax, [eax]
008DCD9A: push [ebp+08h]
008DCD9D: call [eax+00000300h]
008DCDA3: push eax
008DCDA4: lea eax, var_58
008DCDA7: push eax
008DCDA8: call 00410A84h ; Set (object)
008DCDAD: mov var_00000158, eax
008DCDB3: lea eax, var_5C
008DCDB6: push eax
008DCDB7: push 00000002h
008DCDB9: mov eax, var_00000158
008DCDBF: mov eax, [eax]
008DCDC1: push var_00000158
008DCDC7: call [eax+40h]
008DCDCA: fclex 
008DCDCC: mov var_0000015C, eax
008DCDD2: cmp var_0000015C, 00000000h
008DCDD9: jnl 8DCDFBh
008DCDDB: push 00000040h
008DCDDD: push 00440DE8h
008DCDE2: push var_00000158
008DCDE8: push var_0000015C
008DCDEE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DCDF3: mov var_00000230, eax
008DCDF9: jmp 8DCE02h
008DCDFB: and var_00000230, 00000000h
008DCE02: mov eax, var_5C
008DCE05: mov var_000001EC, eax
008DCE0B: and var_5C, 00000000h
008DCE0F: mov eax, var_000001EC
008DCE15: mov var_000000CC, eax
008DCE1B: mov var_000000D4, 00000009h
008DCE25: lea esi, var_000000D4
008DCE2B: push 00000003h
008DCE2D: push var_000000F8
008DCE33: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008DCE38: mov ecx, eax
008DCE3A: mov edx, esi
008DCE3C: call 00410940h ; msvbvm60.dll.__vbaVarZero
008DCE41: mov eax, [ebp+08h]
008DCE44: mov eax, [eax]
008DCE46: push [ebp+08h]
008DCE49: call [eax+00000300h]
008DCE4F: push eax
008DCE50: lea eax, var_60
008DCE53: push eax
008DCE54: call 00410A84h ; Set (object)
008DCE59: mov var_00000160, eax
008DCE5F: lea eax, var_64
008DCE62: push eax
008DCE63: push 00000003h
008DCE65: mov eax, var_00000160
008DCE6B: mov eax, [eax]
008DCE6D: push var_00000160
008DCE73: call [eax+40h]
008DCE76: fclex 
008DCE78: mov var_00000164, eax
008DCE7E: cmp var_00000164, 00000000h
008DCE85: jnl 8DCEA7h
008DCE87: push 00000040h
008DCE89: push 00440DE8h
008DCE8E: push var_00000160
008DCE94: push var_00000164
008DCE9A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DCE9F: mov var_00000234, eax
008DCEA5: jmp 8DCEAEh
008DCEA7: and var_00000234, 00000000h
008DCEAE: mov eax, var_64
008DCEB1: mov var_000001F0, eax
008DCEB7: and var_64, 00000000h
008DCEBB: mov eax, var_000001F0
008DCEC1: mov var_000000DC, eax
008DCEC7: mov var_000000E4, 00000009h
008DCED1: lea esi, var_000000E4
008DCED7: push 00000004h
008DCED9: push var_000000F8
008DCEDF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008DCEE4: mov ecx, eax
008DCEE6: mov edx, esi
008DCEE8: call 00410940h ; msvbvm60.dll.__vbaVarZero
008DCEED: mov eax, [ebp+08h]
008DCEF0: mov eax, [eax]
008DCEF2: push [ebp+08h]
008DCEF5: call [eax+000002FCh]
008DCEFB: mov var_000000EC, eax
008DCF01: mov var_000000F4, 00000009h
008DCF0B: lea esi, var_000000F4
008DCF11: push 00000005h
008DCF13: push var_000000F8
008DCF19: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008DCF1E: mov ecx, eax
008DCF20: mov edx, esi
008DCF22: call 00410940h ; msvbvm60.dll.__vbaVarZero
008DCF27: mov edx, 0043DAC0h ; x131
008DCF2C: lea ecx, var_38
008DCF2F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008DCF34: lea eax, var_000000F8
008DCF3A: push eax
008DCF3B: lea eax, var_38
008DCF3E: push eax
008DCF3F: fld real8 ptr var_00000144
008DCF45: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008DCF4A: push eax
008DCF4B: call 007A6910h
008DCF50: lea eax, var_000000F8
008DCF56: push eax
008DCF57: push 00000000h
008DCF59: call 00410934h ; Erase
008DCF5E: lea eax, var_38
008DCF61: push eax
008DCF62: lea eax, var_34
008DCF65: push eax
008DCF66: push 00000002h
008DCF68: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008DCF6D: add esp, 0000000Ch
008DCF70: lea eax, var_60
008DCF73: push eax
008DCF74: lea eax, var_58
008DCF77: push eax
008DCF78: lea eax, var_50
008DCF7B: push eax
008DCF7C: lea eax, var_48
008DCF7F: push eax
008DCF80: lea eax, var_44
008DCF83: push eax
008DCF84: lea eax, var_40
008DCF87: push eax
008DCF88: lea eax, var_3C
008DCF8B: push eax
008DCF8C: push 00000007h
008DCF8E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DCF93: add esp, 00000020h
008DCF96: lea eax, var_00000094
008DCF9C: push eax
008DCF9D: lea eax, var_00000084
008DCFA3: push eax
008DCFA4: lea eax, var_74
008DCFA7: push eax
008DCFA8: push 00000003h
008DCFAA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DCFAF: add esp, 00000010h
008DCFB2: mov var_04, 00000012h
008DCFB9: lea eax, var_000001A4
008DCFBF: push eax
008DCFC0: lea eax, var_00000194
008DCFC6: push eax
008DCFC7: lea eax, var_30
008DCFCA: push eax
008DCFCB: call 00410A36h ; Next
008DCFD0: mov var_000001E0, eax
008DCFD6: cmp var_000001E0, 00000000h
008DCFDD: jnz 008DC9ABh
008DCFE3: jmp 008DD74Eh
008DCFE8: mov var_04, 00000014h
008DCFEF: mov var_00000100, 00000001h
008DCFF9: mov var_00000108, 00000002h
008DD003: cmp [008F2010h], 00000000h
008DD00A: jnz 8DD027h
008DD00C: push 008F2010h
008DD011: push 00433984h
008DD016: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DD01B: mov var_00000238, 008F2010h
008DD025: jmp 8DD031h
008DD027: mov var_00000238, 008F2010h
008DD031: push 00000000h
008DD033: push 00000001h
008DD035: push 00440E48h
008DD03A: push 00000000h
008DD03C: push 00000018h
008DD03E: mov eax, var_00000238
008DD044: mov eax, [eax]
008DD046: mov ecx, var_00000238
008DD04C: mov ecx, [ecx]
008DD04E: mov ecx, [ecx]
008DD050: push eax
008DD051: call [ecx+00000550h]
008DD057: push eax
008DD058: lea eax, var_3C
008DD05B: push eax
008DD05C: call 00410A84h ; Set (object)
008DD061: push eax
008DD062: lea eax, var_74
008DD065: push eax
008DD066: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DD06B: add esp, 00000010h
008DD06E: push eax
008DD06F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DD074: push eax
008DD075: lea eax, var_40
008DD078: push eax
008DD079: call 00410A84h ; Set (object)
008DD07E: push eax
008DD07F: lea eax, var_00000084
008DD085: push eax
008DD086: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DD08B: add esp, 00000010h
008DD08E: push eax
008DD08F: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008DD094: mov var_00000110, eax
008DD09A: mov var_00000118, 00000003h
008DD0A4: mov var_00000120, 00000001h
008DD0AE: mov var_00000128, 00000002h
008DD0B8: lea eax, var_00000108
008DD0BE: push eax
008DD0BF: lea eax, var_00000118
008DD0C5: push eax
008DD0C6: lea eax, var_00000128
008DD0CC: push eax
008DD0CD: lea eax, var_000001C4
008DD0D3: push eax
008DD0D4: lea eax, var_000001B4
008DD0DA: push eax
008DD0DB: lea eax, var_30
008DD0DE: push eax
008DD0DF: call 00410A3Ch ; For
008DD0E4: mov var_000001F4, eax
008DD0EA: lea eax, var_40
008DD0ED: push eax
008DD0EE: lea eax, var_3C
008DD0F1: push eax
008DD0F2: push 00000002h
008DD0F4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DD0F9: add esp, 0000000Ch
008DD0FC: lea eax, var_00000084
008DD102: push eax
008DD103: lea eax, var_74
008DD106: push eax
008DD107: push 00000002h
008DD109: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DD10E: add esp, 0000000Ch
008DD111: jmp 008DD741h
008DD116: mov var_04, 00000015h
008DD11D: lea eax, var_30
008DD120: mov var_00000100, eax
008DD126: mov var_00000108, 0000400Ch
008DD130: cmp [008F2010h], 00000000h
008DD137: jnz 8DD154h
008DD139: push 008F2010h
008DD13E: push 00433984h
008DD143: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DD148: mov var_0000023C, 008F2010h
008DD152: jmp 8DD15Eh
008DD154: mov var_0000023C, 008F2010h
008DD15E: push 00000000h
008DD160: push 00000004h
008DD162: push 00440E58h
008DD167: push 00000010h
008DD169: pop eax
008DD16A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DD16F: lea esi, var_00000108
008DD175: mov edi, esp
008DD177: movsd 
008DD178: movsd 
008DD179: movsd 
008DD17A: movsd 
008DD17B: push 00000001h
008DD17D: push 00000000h
008DD17F: push 00440E48h
008DD184: push 00000000h
008DD186: push 00000018h
008DD188: mov eax, var_0000023C
008DD18E: mov eax, [eax]
008DD190: mov ecx, var_0000023C
008DD196: mov ecx, [ecx]
008DD198: mov ecx, [ecx]
008DD19A: push eax
008DD19B: call [ecx+00000550h]
008DD1A1: push eax
008DD1A2: lea eax, var_3C
008DD1A5: push eax
008DD1A6: call 00410A84h ; Set (object)
008DD1AB: push eax
008DD1AC: lea eax, var_74
008DD1AF: push eax
008DD1B0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DD1B5: add esp, 00000010h
008DD1B8: push eax
008DD1B9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DD1BE: push eax
008DD1BF: lea eax, var_40
008DD1C2: push eax
008DD1C3: call 00410A84h ; Set (object)
008DD1C8: push eax
008DD1C9: lea eax, var_00000084
008DD1CF: push eax
008DD1D0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DD1D5: add esp, 00000020h
008DD1D8: push eax
008DD1D9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DD1DE: push eax
008DD1DF: lea eax, var_44
008DD1E2: push eax
008DD1E3: call 00410A84h ; Set (object)
008DD1E8: push eax
008DD1E9: lea eax, var_00000094
008DD1EF: push eax
008DD1F0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DD1F5: add esp, 00000010h
008DD1F8: push eax
008DD1F9: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008DD1FE: sub ax, FFFFh
008DD202: neg ax
008DD205: sbb eax, eax
008DD207: inc eax
008DD208: neg eax
008DD20A: mov var_00000148, ax
008DD211: lea eax, var_44
008DD214: push eax
008DD215: lea eax, var_40
008DD218: push eax
008DD219: lea eax, var_3C
008DD21C: push eax
008DD21D: push 00000003h
008DD21F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DD224: add esp, 00000010h
008DD227: lea eax, var_00000094
008DD22D: push eax
008DD22E: lea eax, var_00000084
008DD234: push eax
008DD235: lea eax, var_74
008DD238: push eax
008DD239: push 00000003h
008DD23B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DD240: add esp, 00000010h
008DD243: movsx eax, word ptr var_00000148
008DD24A: test eax, eax
008DD24C: jz 008DD71Dh
008DD252: mov var_04, 00000016h
008DD259: lea eax, var_30
008DD25C: mov var_00000100, eax
008DD262: mov var_00000108, 0000400Ch
008DD26C: cmp [008F2010h], 00000000h
008DD273: jnz 8DD290h
008DD275: push 008F2010h
008DD27A: push 00433984h
008DD27F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DD284: mov var_00000240, 008F2010h
008DD28E: jmp 8DD29Ah
008DD290: mov var_00000240, 008F2010h
008DD29A: push 00000000h
008DD29C: push 00000014h
008DD29E: push 00440E58h
008DD2A3: push 00000010h
008DD2A5: pop eax
008DD2A6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DD2AB: lea esi, var_00000108
008DD2B1: mov edi, esp
008DD2B3: movsd 
008DD2B4: movsd 
008DD2B5: movsd 
008DD2B6: movsd 
008DD2B7: push 00000001h
008DD2B9: push 00000000h
008DD2BB: push 00440E48h
008DD2C0: push 00000000h
008DD2C2: push 00000018h
008DD2C4: mov eax, var_00000240
008DD2CA: mov eax, [eax]
008DD2CC: mov ecx, var_00000240
008DD2D2: mov ecx, [ecx]
008DD2D4: mov ecx, [ecx]
008DD2D6: push eax
008DD2D7: call [ecx+00000550h]
008DD2DD: push eax
008DD2DE: lea eax, var_3C
008DD2E1: push eax
008DD2E2: call 00410A84h ; Set (object)
008DD2E7: push eax
008DD2E8: lea eax, var_74
008DD2EB: push eax
008DD2EC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DD2F1: add esp, 00000010h
008DD2F4: push eax
008DD2F5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DD2FA: push eax
008DD2FB: lea eax, var_40
008DD2FE: push eax
008DD2FF: call 00410A84h ; Set (object)
008DD304: push eax
008DD305: lea eax, var_00000084
008DD30B: push eax
008DD30C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DD311: add esp, 00000020h
008DD314: push eax
008DD315: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DD31A: push eax
008DD31B: lea eax, var_44
008DD31E: push eax
008DD31F: call 00410A84h ; Set (object)
008DD324: push eax
008DD325: lea eax, var_00000094
008DD32B: push eax
008DD32C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DD331: add esp, 00000010h
008DD334: push eax
008DD335: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008DD33A: mov edx, eax
008DD33C: lea ecx, var_34
008DD33F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DD344: push eax
008DD345: call 004109DCh ; Val(arg_1)
008DD34A: fstp real8 ptr var_00000144
008DD350: push 00000000h
008DD352: push 00000005h
008DD354: push 00000001h
008DD356: push 00000000h
008DD358: lea eax, var_000000F8
008DD35E: push eax
008DD35F: push 00000010h
008DD361: push 00000880h
008DD366: call 00410946h ; ReDim
008DD36B: add esp, 0000001Ch
008DD36E: mov eax, [ebp+08h]
008DD371: mov eax, [eax]
008DD373: push [ebp+08h]
008DD376: call [eax+00000304h]
008DD37C: mov var_0000009C, eax
008DD382: mov var_000000A4, 00000009h
008DD38C: lea esi, var_000000A4
008DD392: push 00000000h
008DD394: push var_000000F8
008DD39A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008DD39F: mov ecx, eax
008DD3A1: mov edx, esi
008DD3A3: call 00410940h ; msvbvm60.dll.__vbaVarZero
008DD3A8: mov eax, [ebp+08h]
008DD3AB: mov eax, [eax]
008DD3AD: push [ebp+08h]
008DD3B0: call [eax+00000300h]
008DD3B6: push eax
008DD3B7: lea eax, var_48
008DD3BA: push eax
008DD3BB: call 00410A84h ; Set (object)
008DD3C0: mov var_00000148, eax
008DD3C6: lea eax, var_4C
008DD3C9: push eax
008DD3CA: push 00000000h
008DD3CC: mov eax, var_00000148
008DD3D2: mov eax, [eax]
008DD3D4: push var_00000148
008DD3DA: call [eax+40h]
008DD3DD: fclex 
008DD3DF: mov var_0000014C, eax
008DD3E5: cmp var_0000014C, 00000000h
008DD3EC: jnl 8DD40Eh
008DD3EE: push 00000040h
008DD3F0: push 00440DE8h
008DD3F5: push var_00000148
008DD3FB: push var_0000014C
008DD401: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DD406: mov var_00000244, eax
008DD40C: jmp 8DD415h
008DD40E: and var_00000244, 00000000h
008DD415: mov eax, var_4C
008DD418: mov var_000001F8, eax
008DD41E: and var_4C, 00000000h
008DD422: mov eax, var_000001F8
008DD428: mov var_000000AC, eax
008DD42E: mov var_000000B4, 00000009h
008DD438: lea esi, var_000000B4
008DD43E: push 00000001h
008DD440: push var_000000F8
008DD446: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008DD44B: mov ecx, eax
008DD44D: mov edx, esi
008DD44F: call 00410940h ; msvbvm60.dll.__vbaVarZero
008DD454: mov eax, [ebp+08h]
008DD457: mov eax, [eax]
008DD459: push [ebp+08h]
008DD45C: call [eax+00000300h]
008DD462: push eax
008DD463: lea eax, var_50
008DD466: push eax
008DD467: call 00410A84h ; Set (object)
008DD46C: mov var_00000150, eax
008DD472: lea eax, var_54
008DD475: push eax
008DD476: push 00000001h
008DD478: mov eax, var_00000150
008DD47E: mov eax, [eax]
008DD480: push var_00000150
008DD486: call [eax+40h]
008DD489: fclex 
008DD48B: mov var_00000154, eax
008DD491: cmp var_00000154, 00000000h
008DD498: jnl 8DD4BAh
008DD49A: push 00000040h
008DD49C: push 00440DE8h
008DD4A1: push var_00000150
008DD4A7: push var_00000154
008DD4AD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DD4B2: mov var_00000248, eax
008DD4B8: jmp 8DD4C1h
008DD4BA: and var_00000248, 00000000h
008DD4C1: mov eax, var_54
008DD4C4: mov var_000001FC, eax
008DD4CA: and var_54, 00000000h
008DD4CE: mov eax, var_000001FC
008DD4D4: mov var_000000BC, eax
008DD4DA: mov var_000000C4, 00000009h
008DD4E4: lea esi, var_000000C4
008DD4EA: push 00000002h
008DD4EC: push var_000000F8
008DD4F2: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008DD4F7: mov ecx, eax
008DD4F9: mov edx, esi
008DD4FB: call 00410940h ; msvbvm60.dll.__vbaVarZero
008DD500: mov eax, [ebp+08h]
008DD503: mov eax, [eax]
008DD505: push [ebp+08h]
008DD508: call [eax+00000300h]
008DD50E: push eax
008DD50F: lea eax, var_58
008DD512: push eax
008DD513: call 00410A84h ; Set (object)
008DD518: mov var_00000158, eax
008DD51E: lea eax, var_5C
008DD521: push eax
008DD522: push 00000002h
008DD524: mov eax, var_00000158
008DD52A: mov eax, [eax]
008DD52C: push var_00000158
008DD532: call [eax+40h]
008DD535: fclex 
008DD537: mov var_0000015C, eax
008DD53D: cmp var_0000015C, 00000000h
008DD544: jnl 8DD566h
008DD546: push 00000040h
008DD548: push 00440DE8h
008DD54D: push var_00000158
008DD553: push var_0000015C
008DD559: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DD55E: mov var_0000024C, eax
008DD564: jmp 8DD56Dh
008DD566: and var_0000024C, 00000000h
008DD56D: mov eax, var_5C
008DD570: mov var_00000200, eax
008DD576: and var_5C, 00000000h
008DD57A: mov eax, var_00000200
008DD580: mov var_000000CC, eax
008DD586: mov var_000000D4, 00000009h
008DD590: lea esi, var_000000D4
008DD596: push 00000003h
008DD598: push var_000000F8
008DD59E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008DD5A3: mov ecx, eax
008DD5A5: mov edx, esi
008DD5A7: call 00410940h ; msvbvm60.dll.__vbaVarZero
008DD5AC: mov eax, [ebp+08h]
008DD5AF: mov eax, [eax]
008DD5B1: push [ebp+08h]
008DD5B4: call [eax+00000300h]
008DD5BA: push eax
008DD5BB: lea eax, var_60
008DD5BE: push eax
008DD5BF: call 00410A84h ; Set (object)
008DD5C4: mov var_00000160, eax
008DD5CA: lea eax, var_64
008DD5CD: push eax
008DD5CE: push 00000003h
008DD5D0: mov eax, var_00000160
008DD5D6: mov eax, [eax]
008DD5D8: push var_00000160
008DD5DE: call [eax+40h]
008DD5E1: fclex 
008DD5E3: mov var_00000164, eax
008DD5E9: cmp var_00000164, 00000000h
008DD5F0: jnl 8DD612h
008DD5F2: push 00000040h
008DD5F4: push 00440DE8h
008DD5F9: push var_00000160
008DD5FF: push var_00000164
008DD605: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DD60A: mov var_00000250, eax
008DD610: jmp 8DD619h
008DD612: and var_00000250, 00000000h
008DD619: mov eax, var_64
008DD61C: mov var_00000204, eax
008DD622: and var_64, 00000000h
008DD626: mov eax, var_00000204
008DD62C: mov var_000000DC, eax
008DD632: mov var_000000E4, 00000009h
008DD63C: lea esi, var_000000E4
008DD642: push 00000004h
008DD644: push var_000000F8
008DD64A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008DD64F: mov ecx, eax
008DD651: mov edx, esi
008DD653: call 00410940h ; msvbvm60.dll.__vbaVarZero
008DD658: mov eax, [ebp+08h]
008DD65B: mov eax, [eax]
008DD65D: push [ebp+08h]
008DD660: call [eax+000002FCh]
008DD666: mov var_000000EC, eax
008DD66C: mov var_000000F4, 00000009h
008DD676: lea esi, var_000000F4
008DD67C: push 00000005h
008DD67E: push var_000000F8
008DD684: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008DD689: mov ecx, eax
008DD68B: mov edx, esi
008DD68D: call 00410940h ; msvbvm60.dll.__vbaVarZero
008DD692: mov edx, 0043DAC0h ; x131
008DD697: lea ecx, var_38
008DD69A: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008DD69F: lea eax, var_000000F8
008DD6A5: push eax
008DD6A6: lea eax, var_38
008DD6A9: push eax
008DD6AA: fld real8 ptr var_00000144
008DD6B0: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008DD6B5: push eax
008DD6B6: call 007A6910h
008DD6BB: lea eax, var_000000F8
008DD6C1: push eax
008DD6C2: push 00000000h
008DD6C4: call 00410934h ; Erase
008DD6C9: lea eax, var_38
008DD6CC: push eax
008DD6CD: lea eax, var_34
008DD6D0: push eax
008DD6D1: push 00000002h
008DD6D3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008DD6D8: add esp, 0000000Ch
008DD6DB: lea eax, var_60
008DD6DE: push eax
008DD6DF: lea eax, var_58
008DD6E2: push eax
008DD6E3: lea eax, var_50
008DD6E6: push eax
008DD6E7: lea eax, var_48
008DD6EA: push eax
008DD6EB: lea eax, var_44
008DD6EE: push eax
008DD6EF: lea eax, var_40
008DD6F2: push eax
008DD6F3: lea eax, var_3C
008DD6F6: push eax
008DD6F7: push 00000007h
008DD6F9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DD6FE: add esp, 00000020h
008DD701: lea eax, var_00000094
008DD707: push eax
008DD708: lea eax, var_00000084
008DD70E: push eax
008DD70F: lea eax, var_74
008DD712: push eax
008DD713: push 00000003h
008DD715: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DD71A: add esp, 00000010h
008DD71D: mov var_04, 00000018h
008DD724: lea eax, var_000001C4
008DD72A: push eax
008DD72B: lea eax, var_000001B4
008DD731: push eax
008DD732: lea eax, var_30
008DD735: push eax
008DD736: call 00410A36h ; Next
008DD73B: mov var_000001F4, eax
008DD741: cmp var_000001F4, 00000000h
008DD748: jnz 008DD116h
008DD74E: mov var_10, 00000000h
008DD755: wait 
008DD756: push 008DD83Ah
008DD75B: jmp 008DD7FDh
008DD760: lea eax, var_38
008DD763: push eax
008DD764: lea eax, var_34
008DD767: push eax
008DD768: push 00000002h
008DD76A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008DD76F: add esp, 0000000Ch
008DD772: lea eax, var_64
008DD775: push eax
008DD776: lea eax, var_60
008DD779: push eax
008DD77A: lea eax, var_5C
008DD77D: push eax
008DD77E: lea eax, var_58
008DD781: push eax
008DD782: lea eax, var_54
008DD785: push eax
008DD786: lea eax, var_50
008DD789: push eax
008DD78A: lea eax, var_4C
008DD78D: push eax
008DD78E: lea eax, var_48
008DD791: push eax
008DD792: lea eax, var_44
008DD795: push eax
008DD796: lea eax, var_40
008DD799: push eax
008DD79A: lea eax, var_3C
008DD79D: push eax
008DD79E: push 0000000Bh
008DD7A0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DD7A5: add esp, 00000030h
008DD7A8: lea eax, var_000000F4
008DD7AE: push eax
008DD7AF: lea eax, var_000000E4
008DD7B5: push eax
008DD7B6: lea eax, var_000000D4
008DD7BC: push eax
008DD7BD: lea eax, var_000000C4
008DD7C3: push eax
008DD7C4: lea eax, var_000000B4
008DD7CA: push eax
008DD7CB: lea eax, var_000000A4
008DD7D1: push eax
008DD7D2: lea eax, var_00000094
008DD7D8: push eax
008DD7D9: lea eax, var_00000084
008DD7DF: push eax
008DD7E0: lea eax, var_74
008DD7E3: push eax
008DD7E4: push 00000009h
008DD7E6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DD7EB: add esp, 00000028h
008DD7EE: lea eax, var_000000F8
008DD7F4: push eax
008DD7F5: push 00000000h
008DD7F7: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008DD7FC: ret 
End Sub

Private sub txtPos__8E046D
008E046D: push ebp
008E046E: mov ebp, esp
008E0470: sub esp, 00000018h
008E0473: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E0478: mov eax, fs:[00h]
008E047E: push eax
008E047F: mov fs:[00000000h], esp
008E0486: mov eax, 000000CCh
008E048B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E0490: push ebx
008E0491: push esi
008E0492: push edi
008E0493: mov var_18, esp
008E0496: mov var_14, 00410138h
008E049D: mov eax, [ebp+08h]
008E04A0: and eax, 00000001h
008E04A3: mov var_10, eax
008E04A6: mov eax, [ebp+08h]
008E04A9: and al, FEh
008E04AB: mov [ebp+08h], eax
008E04AE: mov var_0C, 00000000h
008E04B5: mov eax, [ebp+08h]
008E04B8: mov eax, [eax]
008E04BA: push [ebp+08h]
008E04BD: call [eax+04h]
008E04C0: mov var_04, 00000001h
008E04C7: mov var_04, 00000002h
008E04CE: push FFFFFFFFh
008E04D0: call 00410A60h ; On Error ...
008E04D5: mov var_04, 00000003h
008E04DC: mov eax, [ebp+08h]
008E04DF: mov eax, [eax]
008E04E1: push [ebp+08h]
008E04E4: call [eax+00000300h]
008E04EA: push eax
008E04EB: lea eax, var_2C
008E04EE: push eax
008E04EF: call 00410A84h ; Set (object)
008E04F4: mov var_00000084, eax
008E04FA: lea eax, var_30
008E04FD: push eax
008E04FE: mov eax, [ebp+0Ch]
008E0501: mov ax, [eax]
008E0504: push eax
008E0505: mov eax, var_00000084
008E050B: mov eax, [eax]
008E050D: push var_00000084
008E0513: call [eax+40h]
008E0516: fclex 
008E0518: mov var_00000088, eax
008E051E: cmp var_00000088, 00000000h
008E0525: jnl 8E0547h
008E0527: push 00000040h
008E0529: push 00440DE8h
008E052E: push var_00000084
008E0534: push var_00000088
008E053A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E053F: mov var_000000C8, eax
008E0545: jmp 8E054Eh
008E0547: and var_000000C8, 00000000h
008E054E: mov eax, var_30
008E0551: mov var_0000008C, eax
008E0557: lea eax, var_24
008E055A: push eax
008E055B: mov eax, var_0000008C
008E0561: mov eax, [eax]
008E0563: push var_0000008C
008E0569: call [eax+000000A0h]
008E056F: fclex 
008E0571: mov var_00000090, eax
008E0577: cmp var_00000090, 00000000h
008E057E: jnl 8E05A3h
008E0580: push 000000A0h
008E0585: push 00440E08h
008E058A: push var_0000008C
008E0590: push var_00000090
008E0596: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E059B: mov var_000000CC, eax
008E05A1: jmp 8E05AAh
008E05A3: and var_000000CC, 00000000h
008E05AA: mov eax, [ebp+08h]
008E05AD: mov eax, [eax]
008E05AF: push [ebp+08h]
008E05B2: call [eax+00000300h]
008E05B8: push eax
008E05B9: lea eax, var_34
008E05BC: push eax
008E05BD: call 00410A84h ; Set (object)
008E05C2: mov var_00000094, eax
008E05C8: lea eax, var_38
008E05CB: push eax
008E05CC: mov eax, [ebp+0Ch]
008E05CF: mov ax, [eax]
008E05D2: push eax
008E05D3: mov eax, var_00000094
008E05D9: mov eax, [eax]
008E05DB: push var_00000094
008E05E1: call [eax+40h]
008E05E4: fclex 
008E05E6: mov var_00000098, eax
008E05EC: cmp var_00000098, 00000000h
008E05F3: jnl 8E0615h
008E05F5: push 00000040h
008E05F7: push 00440DE8h
008E05FC: push var_00000094
008E0602: push var_00000098
008E0608: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E060D: mov var_000000D0, eax
008E0613: jmp 8E061Ch
008E0615: and var_000000D0, 00000000h
008E061C: mov eax, var_38
008E061F: mov var_000000C0, eax
008E0625: and var_38, 00000000h
008E0629: mov eax, var_000000C0
008E062F: mov var_48, eax
008E0632: mov var_50, 00000009h
008E0639: push var_24
008E063C: call 0041098Eh ; Len(arg_1)
008E0641: xor ebx, ebx
008E0643: test eax, eax
008E0645: setnle bl
008E0648: neg ebx
008E064A: lea eax, var_50
008E064D: push eax
008E064E: call 004109EEh ; IsNumeric(arg_1)
008E0653: neg ax
008E0656: sbb eax, eax
008E0658: inc eax
008E0659: neg eax
008E065B: and bx, ax
008E065E: mov var_0000009C, bx
008E0665: lea ecx, var_24
008E0668: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008E066D: lea eax, var_34
008E0670: push eax
008E0671: lea eax, var_30
008E0674: push eax
008E0675: lea eax, var_2C
008E0678: push eax
008E0679: push 00000003h
008E067B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E0680: add esp, 00000010h
008E0683: lea ecx, var_50
008E0686: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E068B: movsx eax, word ptr var_0000009C
008E0692: test eax, eax
008E0694: jz 008E094Ah
008E069A: mov var_04, 00000004h
008E06A1: mov eax, [ebp+08h]
008E06A4: mov eax, [eax]
008E06A6: push [ebp+08h]
008E06A9: call [eax+00000300h]
008E06AF: push eax
008E06B0: lea eax, var_2C
008E06B3: push eax
008E06B4: call 00410A84h ; Set (object)
008E06B9: mov var_00000084, eax
008E06BF: lea eax, var_30
008E06C2: push eax
008E06C3: mov eax, [ebp+0Ch]
008E06C6: mov ax, [eax]
008E06C9: push eax
008E06CA: mov eax, var_00000084
008E06D0: mov eax, [eax]
008E06D2: push var_00000084
008E06D8: call [eax+40h]
008E06DB: fclex 
008E06DD: mov var_00000088, eax
008E06E3: cmp var_00000088, 00000000h
008E06EA: jnl 8E070Ch
008E06EC: push 00000040h
008E06EE: push 00440DE8h
008E06F3: push var_00000084
008E06F9: push var_00000088
008E06FF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E0704: mov var_000000D4, eax
008E070A: jmp 8E0713h
008E070C: and var_000000D4, 00000000h
008E0713: mov eax, [ebp+08h]
008E0716: mov eax, [eax]
008E0718: push [ebp+08h]
008E071B: call [eax+00000300h]
008E0721: push eax
008E0722: lea eax, var_3C
008E0725: push eax
008E0726: call 00410A84h ; Set (object)
008E072B: mov var_0000009C, eax
008E0731: lea eax, var_40
008E0734: push eax
008E0735: mov eax, [ebp+0Ch]
008E0738: mov ax, [eax]
008E073B: push eax
008E073C: mov eax, var_0000009C
008E0742: mov eax, [eax]
008E0744: push var_0000009C
008E074A: call [eax+40h]
008E074D: fclex 
008E074F: mov var_000000A0, eax
008E0755: cmp var_000000A0, 00000000h
008E075C: jnl 8E077Eh
008E075E: push 00000040h
008E0760: push 00440DE8h
008E0765: push var_0000009C
008E076B: push var_000000A0
008E0771: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E0776: mov var_000000D8, eax
008E077C: jmp 8E0785h
008E077E: and var_000000D8, 00000000h
008E0785: mov eax, var_40
008E0788: mov var_000000A4, eax
008E078E: mov eax, [ebp+08h]
008E0791: mov eax, [eax]
008E0793: push [ebp+08h]
008E0796: call [eax+00000300h]
008E079C: push eax
008E079D: lea eax, var_34
008E07A0: push eax
008E07A1: call 00410A84h ; Set (object)
008E07A6: mov var_0000008C, eax
008E07AC: lea eax, var_38
008E07AF: push eax
008E07B0: mov eax, [ebp+0Ch]
008E07B3: mov ax, [eax]
008E07B6: push eax
008E07B7: mov eax, var_0000008C
008E07BD: mov eax, [eax]
008E07BF: push var_0000008C
008E07C5: call [eax+40h]
008E07C8: fclex 
008E07CA: mov var_00000090, eax
008E07D0: cmp var_00000090, 00000000h
008E07D7: jnl 8E07F9h
008E07D9: push 00000040h
008E07DB: push 00440DE8h
008E07E0: push var_0000008C
008E07E6: push var_00000090
008E07EC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E07F1: mov var_000000DC, eax
008E07F7: jmp 8E0800h
008E07F9: and var_000000DC, 00000000h
008E0800: mov eax, var_38
008E0803: mov var_00000094, eax
008E0809: lea eax, var_24
008E080C: push eax
008E080D: mov eax, var_00000094
008E0813: mov eax, [eax]
008E0815: push var_00000094
008E081B: call [eax+000000A0h]
008E0821: fclex 
008E0823: mov var_00000098, eax
008E0829: cmp var_00000098, 00000000h
008E0830: jnl 8E0855h
008E0832: push 000000A0h
008E0837: push 00440E08h
008E083C: push var_00000094
008E0842: push var_00000098
008E0848: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E084D: mov var_000000E0, eax
008E0853: jmp 8E085Ch
008E0855: and var_000000E0, 00000000h
008E085C: push var_24
008E085F: call 0041098Eh ; Len(arg_1)
008E0864: sub eax, 00000001h
008E0867: jo 008E0AD3h
008E086D: mov var_58, eax
008E0870: mov var_60, 00000003h
008E0877: mov eax, var_30
008E087A: mov var_000000C4, eax
008E0880: and var_30, 00000000h
008E0884: mov eax, var_000000C4
008E088A: mov var_48, eax
008E088D: mov var_50, 00000009h
008E0894: lea eax, var_60
008E0897: push eax
008E0898: push 00000001h
008E089A: lea eax, var_50
008E089D: push eax
008E089E: lea eax, var_70
008E08A1: push eax
008E08A2: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
008E08A7: lea eax, var_70
008E08AA: push eax
008E08AB: lea eax, var_28
008E08AE: push eax
008E08AF: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008E08B4: push eax
008E08B5: mov eax, var_000000A4
008E08BB: mov eax, [eax]
008E08BD: push var_000000A4
008E08C3: call [eax+000000A4h]
008E08C9: fclex 
008E08CB: mov var_000000A8, eax
008E08D1: cmp var_000000A8, 00000000h
008E08D8: jnl 8E08FDh
008E08DA: push 000000A4h
008E08DF: push 00440E08h
008E08E4: push var_000000A4
008E08EA: push var_000000A8
008E08F0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E08F5: mov var_000000E4, eax
008E08FB: jmp 8E0904h
008E08FD: and var_000000E4, 00000000h
008E0904: lea eax, var_28
008E0907: push eax
008E0908: lea eax, var_24
008E090B: push eax
008E090C: push 00000002h
008E090E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E0913: add esp, 0000000Ch
008E0916: lea eax, var_40
008E0919: push eax
008E091A: lea eax, var_3C
008E091D: push eax
008E091E: lea eax, var_38
008E0921: push eax
008E0922: lea eax, var_34
008E0925: push eax
008E0926: lea eax, var_2C
008E0929: push eax
008E092A: push 00000005h
008E092C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E0931: add esp, 00000018h
008E0934: lea eax, var_70
008E0937: push eax
008E0938: lea eax, var_60
008E093B: push eax
008E093C: lea eax, var_50
008E093F: push eax
008E0940: push 00000003h
008E0942: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E0947: add esp, 00000010h
008E094A: mov var_04, 00000006h
008E0951: mov var_48, 80020004h
008E0958: mov var_50, 0000000Ah
008E095F: lea eax, var_50
008E0962: push eax
008E0963: push 0044AED4h ; {End}
008E0968: call 00410736h ; SendKeys
008E096D: lea ecx, var_50
008E0970: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E0975: mov var_04, 00000007h
008E097C: mov eax, [ebp+08h]
008E097F: mov eax, [eax]
008E0981: push [ebp+08h]
008E0984: call [eax+00000300h]
008E098A: push eax
008E098B: lea eax, var_2C
008E098E: push eax
008E098F: call 00410A84h ; Set (object)
008E0994: mov var_00000084, eax
008E099A: lea eax, var_30
008E099D: push eax
008E099E: mov eax, [ebp+0Ch]
008E09A1: mov ax, [eax]
008E09A4: push eax
008E09A5: mov eax, var_00000084
008E09AB: mov eax, [eax]
008E09AD: push var_00000084
008E09B3: call [eax+40h]
008E09B6: fclex 
008E09B8: mov var_00000088, eax
008E09BE: cmp var_00000088, 00000000h
008E09C5: jnl 8E09E7h
008E09C7: push 00000040h
008E09C9: push 00440DE8h
008E09CE: push var_00000084
008E09D4: push var_00000088
008E09DA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E09DF: mov var_000000E8, eax
008E09E5: jmp 8E09EEh
008E09E7: and var_000000E8, 00000000h
008E09EE: mov eax, var_30
008E09F1: mov var_0000008C, eax
008E09F7: push 00000005h
008E09F9: mov eax, var_0000008C
008E09FF: mov eax, [eax]
008E0A01: push var_0000008C
008E0A07: call [eax+00000174h]
008E0A0D: fclex 
008E0A0F: mov var_00000090, eax
008E0A15: cmp var_00000090, 00000000h
008E0A1C: jnl 8E0A41h
008E0A1E: push 00000174h
008E0A23: push 00440E08h
008E0A28: push var_0000008C
008E0A2E: push var_00000090
008E0A34: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E0A39: mov var_000000EC, eax
008E0A3F: jmp 8E0A48h
008E0A41: and var_000000EC, 00000000h
008E0A48: lea eax, var_30
008E0A4B: push eax
008E0A4C: lea eax, var_2C
008E0A4F: push eax
008E0A50: push 00000002h
008E0A52: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E0A57: add esp, 0000000Ch
008E0A5A: mov var_10, 00000000h
008E0A61: push 008E0AB4h
008E0A66: jmp 8E0AB3h
008E0A68: lea eax, var_28
008E0A6B: push eax
008E0A6C: lea eax, var_24
008E0A6F: push eax
008E0A70: push 00000002h
008E0A72: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E0A77: add esp, 0000000Ch
008E0A7A: lea eax, var_40
008E0A7D: push eax
008E0A7E: lea eax, var_3C
008E0A81: push eax
008E0A82: lea eax, var_38
008E0A85: push eax
008E0A86: lea eax, var_34
008E0A89: push eax
008E0A8A: lea eax, var_30
008E0A8D: push eax
008E0A8E: lea eax, var_2C
008E0A91: push eax
008E0A92: push 00000006h
008E0A94: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E0A99: add esp, 0000001Ch
008E0A9C: lea eax, var_70
008E0A9F: push eax
008E0AA0: lea eax, var_60
008E0AA3: push eax
008E0AA4: lea eax, var_50
008E0AA7: push eax
008E0AA8: push 00000003h
008E0AAA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E0AAF: add esp, 00000010h
008E0AB2: ret 
End Sub

Private sub txtTime__8E0AD8
008E0AD8: push ebp
008E0AD9: mov ebp, esp
008E0ADB: sub esp, 00000018h
008E0ADE: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E0AE3: mov eax, fs:[00h]
008E0AE9: push eax
008E0AEA: mov fs:[00000000h], esp
008E0AF1: mov eax, 00000098h
008E0AF6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E0AFB: push ebx
008E0AFC: push esi
008E0AFD: push edi
008E0AFE: mov var_18, esp
008E0B01: mov var_14, 00410178h
008E0B08: mov eax, [ebp+08h]
008E0B0B: and eax, 00000001h
008E0B0E: mov var_10, eax
008E0B11: mov eax, [ebp+08h]
008E0B14: and al, FEh
008E0B16: mov [ebp+08h], eax
008E0B19: mov var_0C, 00000000h
008E0B20: mov eax, [ebp+08h]
008E0B23: mov eax, [eax]
008E0B25: push [ebp+08h]
008E0B28: call [eax+04h]
008E0B2B: mov var_04, 00000001h
008E0B32: mov var_04, 00000002h
008E0B39: push FFFFFFFFh
008E0B3B: call 00410A60h ; On Error ...
008E0B40: mov var_04, 00000003h
008E0B47: mov eax, [ebp+08h]
008E0B4A: mov eax, [eax]
008E0B4C: push [ebp+08h]
008E0B4F: call [eax+000002FCh]
008E0B55: push eax
008E0B56: lea eax, var_2C
008E0B59: push eax
008E0B5A: call 00410A84h ; Set (object)
008E0B5F: mov var_78, eax
008E0B62: lea eax, var_24
008E0B65: push eax
008E0B66: mov eax, var_78
008E0B69: mov eax, [eax]
008E0B6B: push var_78
008E0B6E: call [eax+000000A0h]
008E0B74: fclex 
008E0B76: mov var_7C, eax
008E0B79: cmp var_7C, 00000000h
008E0B7D: jnl 8E0B9Ch
008E0B7F: push 000000A0h
008E0B84: push 00440E08h
008E0B89: push var_78
008E0B8C: push var_7C
008E0B8F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E0B94: mov var_000000A0, eax
008E0B9A: jmp 8E0BA3h
008E0B9C: and var_000000A0, 00000000h
008E0BA3: mov eax, [ebp+08h]
008E0BA6: mov eax, [eax]
008E0BA8: push [ebp+08h]
008E0BAB: call [eax+000002FCh]
008E0BB1: mov var_3C, eax
008E0BB4: mov var_44, 00000009h
008E0BBB: push var_24
008E0BBE: call 0041098Eh ; Len(arg_1)
008E0BC3: xor ebx, ebx
008E0BC5: test eax, eax
008E0BC7: setnle bl
008E0BCA: neg ebx
008E0BCC: lea eax, var_44
008E0BCF: push eax
008E0BD0: call 004109EEh ; IsNumeric(arg_1)
008E0BD5: neg ax
008E0BD8: sbb eax, eax
008E0BDA: inc eax
008E0BDB: neg eax
008E0BDD: and bx, ax
008E0BE0: mov var_80, bx
008E0BE4: lea ecx, var_24
008E0BE7: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008E0BEC: lea ecx, var_2C
008E0BEF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E0BF4: lea ecx, var_44
008E0BF7: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E0BFC: movsx eax, word ptr var_80
008E0C00: test eax, eax
008E0C02: jz 008E0D7Bh
008E0C08: mov var_04, 00000004h
008E0C0F: mov eax, [ebp+08h]
008E0C12: mov eax, [eax]
008E0C14: push [ebp+08h]
008E0C17: call [eax+000002FCh]
008E0C1D: push eax
008E0C1E: lea eax, var_34
008E0C21: push eax
008E0C22: call 00410A84h ; Set (object)
008E0C27: mov eax, [ebp+08h]
008E0C2A: mov eax, [eax]
008E0C2C: push [ebp+08h]
008E0C2F: call [eax+000002FCh]
008E0C35: push eax
008E0C36: lea eax, var_30
008E0C39: push eax
008E0C3A: call 00410A84h ; Set (object)
008E0C3F: mov var_80, eax
008E0C42: mov eax, [ebp+08h]
008E0C45: mov eax, [eax]
008E0C47: push [ebp+08h]
008E0C4A: call [eax+000002FCh]
008E0C50: push eax
008E0C51: lea eax, var_2C
008E0C54: push eax
008E0C55: call 00410A84h ; Set (object)
008E0C5A: mov var_78, eax
008E0C5D: lea eax, var_24
008E0C60: push eax
008E0C61: mov eax, var_78
008E0C64: mov eax, [eax]
008E0C66: push var_78
008E0C69: call [eax+000000A0h]
008E0C6F: fclex 
008E0C71: mov var_7C, eax
008E0C74: cmp var_7C, 00000000h
008E0C78: jnl 8E0C97h
008E0C7A: push 000000A0h
008E0C7F: push 00440E08h
008E0C84: push var_78
008E0C87: push var_7C
008E0C8A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E0C8F: mov var_000000A4, eax
008E0C95: jmp 8E0C9Eh
008E0C97: and var_000000A4, 00000000h
008E0C9E: push var_24
008E0CA1: call 0041098Eh ; Len(arg_1)
008E0CA6: sub eax, 00000001h
008E0CA9: jo 008E0FAFh
008E0CAF: mov var_4C, eax
008E0CB2: mov var_54, 00000003h
008E0CB9: mov eax, var_34
008E0CBC: mov var_0000009C, eax
008E0CC2: and var_34, 00000000h
008E0CC6: mov eax, var_0000009C
008E0CCC: mov var_3C, eax
008E0CCF: mov var_44, 00000009h
008E0CD6: lea eax, var_54
008E0CD9: push eax
008E0CDA: push 00000001h
008E0CDC: lea eax, var_44
008E0CDF: push eax
008E0CE0: lea eax, var_64
008E0CE3: push eax
008E0CE4: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
008E0CE9: lea eax, var_64
008E0CEC: push eax
008E0CED: lea eax, var_28
008E0CF0: push eax
008E0CF1: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008E0CF6: push eax
008E0CF7: mov eax, var_80
008E0CFA: mov eax, [eax]
008E0CFC: push var_80
008E0CFF: call [eax+000000A4h]
008E0D05: fclex 
008E0D07: mov var_00000084, eax
008E0D0D: cmp var_00000084, 00000000h
008E0D14: jnl 8E0D36h
008E0D16: push 000000A4h
008E0D1B: push 00440E08h
008E0D20: push var_80
008E0D23: push var_00000084
008E0D29: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E0D2E: mov var_000000A8, eax
008E0D34: jmp 8E0D3Dh
008E0D36: and var_000000A8, 00000000h
008E0D3D: lea eax, var_28
008E0D40: push eax
008E0D41: lea eax, var_24
008E0D44: push eax
008E0D45: push 00000002h
008E0D47: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E0D4C: add esp, 0000000Ch
008E0D4F: lea eax, var_34
008E0D52: push eax
008E0D53: lea eax, var_30
008E0D56: push eax
008E0D57: lea eax, var_2C
008E0D5A: push eax
008E0D5B: push 00000003h
008E0D5D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E0D62: add esp, 00000010h
008E0D65: lea eax, var_64
008E0D68: push eax
008E0D69: lea eax, var_54
008E0D6C: push eax
008E0D6D: lea eax, var_44
008E0D70: push eax
008E0D71: push 00000003h
008E0D73: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E0D78: add esp, 00000010h
008E0D7B: mov var_04, 00000006h
008E0D82: mov var_3C, 80020004h
008E0D89: mov var_44, 0000000Ah
008E0D90: lea eax, var_44
008E0D93: push eax
008E0D94: push 0044AED4h ; {End}
008E0D99: call 00410736h ; SendKeys
008E0D9E: lea ecx, var_44
008E0DA1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E0DA6: mov var_04, 00000007h
008E0DAD: mov eax, [ebp+08h]
008E0DB0: mov eax, [eax]
008E0DB2: push [ebp+08h]
008E0DB5: call [eax+000002FCh]
008E0DBB: push eax
008E0DBC: lea eax, var_2C
008E0DBF: push eax
008E0DC0: call 00410A84h ; Set (object)
008E0DC5: mov var_78, eax
008E0DC8: push 00000003h
008E0DCA: mov eax, var_78
008E0DCD: mov eax, [eax]
008E0DCF: push var_78
008E0DD2: call [eax+00000174h]
008E0DD8: fclex 
008E0DDA: mov var_7C, eax
008E0DDD: cmp var_7C, 00000000h
008E0DE1: jnl 8E0E00h
008E0DE3: push 00000174h
008E0DE8: push 00440E08h
008E0DED: push var_78
008E0DF0: push var_7C
008E0DF3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E0DF8: mov var_000000AC, eax
008E0DFE: jmp 8E0E07h
008E0E00: and var_000000AC, 00000000h
008E0E07: lea ecx, var_2C
008E0E0A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E0E0F: mov var_04, 00000008h
008E0E16: mov eax, [ebp+08h]
008E0E19: mov eax, [eax]
008E0E1B: push [ebp+08h]
008E0E1E: call [eax+000002FCh]
008E0E24: push eax
008E0E25: lea eax, var_2C
008E0E28: push eax
008E0E29: call 00410A84h ; Set (object)
008E0E2E: mov var_78, eax
008E0E31: lea eax, var_24
008E0E34: push eax
008E0E35: mov eax, var_78
008E0E38: mov eax, [eax]
008E0E3A: push var_78
008E0E3D: call [eax+000000A0h]
008E0E43: fclex 
008E0E45: mov var_7C, eax
008E0E48: cmp var_7C, 00000000h
008E0E4C: jnl 8E0E6Bh
008E0E4E: push 000000A0h
008E0E53: push 00440E08h
008E0E58: push var_78
008E0E5B: push var_7C
008E0E5E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E0E63: mov var_000000B0, eax
008E0E69: jmp 8E0E72h
008E0E6B: and var_000000B0, 00000000h
008E0E72: push var_24
008E0E75: call 00410754h ; msvbvm60.dll.__vbaR8Str
008E0E7A: fcomp real8 ptr [00404780h]
008E0E80: fstsw ax
008E0E82: sahf 
008E0E83: jb 8E0E91h
008E0E85: mov var_000000B4, 00000001h
008E0E8F: jmp 8E0E98h
008E0E91: and var_000000B4, 00000000h
008E0E98: mov eax, var_000000B4
008E0E9E: neg eax
008E0EA0: mov var_80, ax
008E0EA4: lea ecx, var_24
008E0EA7: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008E0EAC: lea ecx, var_2C
008E0EAF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E0EB4: movsx eax, word ptr var_80
008E0EB8: test eax, eax
008E0EBA: jz 008E0F41h
008E0EC0: mov var_04, 00000009h
008E0EC7: mov eax, [ebp+08h]
008E0ECA: mov eax, [eax]
008E0ECC: push [ebp+08h]
008E0ECF: call [eax+000002FCh]
008E0ED5: push eax
008E0ED6: lea eax, var_2C
008E0ED9: push eax
008E0EDA: call 00410A84h ; Set (object)
008E0EDF: mov var_78, eax
008E0EE2: push 00000000h
008E0EE4: call 00410964h ; msvbvm60.dll.__vbaStrI2
008E0EE9: mov edx, eax
008E0EEB: lea ecx, var_24
008E0EEE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E0EF3: push eax
008E0EF4: mov eax, var_78
008E0EF7: mov eax, [eax]
008E0EF9: push var_78
008E0EFC: call [eax+000000A4h]
008E0F02: fclex 
008E0F04: mov var_7C, eax
008E0F07: cmp var_7C, 00000000h
008E0F0B: jnl 8E0F2Ah
008E0F0D: push 000000A4h
008E0F12: push 00440E08h
008E0F17: push var_78
008E0F1A: push var_7C
008E0F1D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E0F22: mov var_000000B8, eax
008E0F28: jmp 8E0F31h
008E0F2A: and var_000000B8, 00000000h
008E0F31: lea ecx, var_24
008E0F34: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008E0F39: lea ecx, var_2C
008E0F3C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E0F41: mov var_10, 00000000h
008E0F48: wait 
008E0F49: push 008E0F90h
008E0F4E: jmp 8E0F8Fh
008E0F50: lea eax, var_28
008E0F53: push eax
008E0F54: lea eax, var_24
008E0F57: push eax
008E0F58: push 00000002h
008E0F5A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E0F5F: add esp, 0000000Ch
008E0F62: lea eax, var_34
008E0F65: push eax
008E0F66: lea eax, var_30
008E0F69: push eax
008E0F6A: lea eax, var_2C
008E0F6D: push eax
008E0F6E: push 00000003h
008E0F70: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E0F75: add esp, 00000010h
008E0F78: lea eax, var_64
008E0F7B: push eax
008E0F7C: lea eax, var_54
008E0F7F: push eax
008E0F80: lea eax, var_44
008E0F83: push eax
008E0F84: push 00000003h
008E0F86: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E0F8B: add esp, 00000010h
008E0F8E: ret 
End Sub

Private sub tmrInfo__8DFA99
008DFA99: push ebp
008DFA9A: mov ebp, esp
008DFA9C: sub esp, 0000000Ch
008DFA9F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008DFAA4: mov eax, fs:[00h]
008DFAAA: push eax
008DFAAB: mov fs:[00000000h], esp
008DFAB2: mov eax, 000000D4h
008DFAB7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DFABC: push ebx
008DFABD: push esi
008DFABE: push edi
008DFABF: mov var_0C, esp
008DFAC2: mov var_08, 00410128h
008DFAC9: mov eax, [ebp+08h]
008DFACC: and eax, 00000001h
008DFACF: mov var_04, eax
008DFAD2: mov eax, [ebp+08h]
008DFAD5: and al, FEh
008DFAD7: mov [ebp+08h], eax
008DFADA: mov eax, [ebp+08h]
008DFADD: mov eax, [eax]
008DFADF: push [ebp+08h]
008DFAE2: call [eax+04h]
008DFAE5: movsx eax, word ptr [8F2430h]
008DFAEC: test eax, eax
008DFAEE: jnz 008DFDECh
008DFAF4: cmp [008F2010h], 00000000h
008DFAFB: jnz 8DFB18h
008DFAFD: push 008F2010h
008DFB02: push 00433984h
008DFB07: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DFB0C: mov var_000000C4, 008F2010h
008DFB16: jmp 8DFB22h
008DFB18: mov var_000000C4, 008F2010h
008DFB22: push 00000000h
008DFB24: push 00000001h
008DFB26: push 00440E48h
008DFB2B: push 00000000h
008DFB2D: push 00000018h
008DFB2F: mov eax, var_000000C4
008DFB35: mov eax, [eax]
008DFB37: mov ecx, var_000000C4
008DFB3D: mov ecx, [ecx]
008DFB3F: mov ecx, [ecx]
008DFB41: push eax
008DFB42: call [ecx+00000550h]
008DFB48: push eax
008DFB49: lea eax, var_28
008DFB4C: push eax
008DFB4D: call 00410A84h ; Set (object)
008DFB52: push eax
008DFB53: lea eax, var_48
008DFB56: push eax
008DFB57: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DFB5C: add esp, 00000010h
008DFB5F: push eax
008DFB60: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DFB65: push eax
008DFB66: lea eax, var_2C
008DFB69: push eax
008DFB6A: call 00410A84h ; Set (object)
008DFB6F: push eax
008DFB70: lea eax, var_58
008DFB73: push eax
008DFB74: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DFB79: add esp, 00000010h
008DFB7C: push eax
008DFB7D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008DFB82: xor ecx, ecx
008DFB84: test eax, eax
008DFB86: setnle cl
008DFB89: neg ecx
008DFB8B: mov var_0000009C, cx
008DFB92: lea eax, var_2C
008DFB95: push eax
008DFB96: lea eax, var_28
008DFB99: push eax
008DFB9A: push 00000002h
008DFB9C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DFBA1: add esp, 0000000Ch
008DFBA4: lea eax, var_58
008DFBA7: push eax
008DFBA8: lea eax, var_48
008DFBAB: push eax
008DFBAC: push 00000002h
008DFBAE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DFBB3: add esp, 0000000Ch
008DFBB6: movsx eax, word ptr var_0000009C
008DFBBD: test eax, eax
008DFBBF: jz 008DFDE7h
008DFBC5: cmp [008F2010h], 00000000h
008DFBCC: jnz 8DFBE9h
008DFBCE: push 008F2010h
008DFBD3: push 00433984h
008DFBD8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DFBDD: mov var_000000C8, 008F2010h
008DFBE7: jmp 8DFBF3h
008DFBE9: mov var_000000C8, 008F2010h
008DFBF3: push 00000000h
008DFBF5: push 00000001h
008DFBF7: push 00440E48h
008DFBFC: push 00000000h
008DFBFE: push 00000018h
008DFC00: mov eax, var_000000C8
008DFC06: mov eax, [eax]
008DFC08: mov ecx, var_000000C8
008DFC0E: mov ecx, [ecx]
008DFC10: mov ecx, [ecx]
008DFC12: push eax
008DFC13: call [ecx+00000550h]
008DFC19: push eax
008DFC1A: lea eax, var_28
008DFC1D: push eax
008DFC1E: call 00410A84h ; Set (object)
008DFC23: push eax
008DFC24: lea eax, var_48
008DFC27: push eax
008DFC28: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DFC2D: add esp, 00000010h
008DFC30: push eax
008DFC31: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DFC36: push eax
008DFC37: lea eax, var_2C
008DFC3A: push eax
008DFC3B: call 00410A84h ; Set (object)
008DFC40: push eax
008DFC41: lea eax, var_58
008DFC44: push eax
008DFC45: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DFC4A: add esp, 00000010h
008DFC4D: push eax
008DFC4E: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008DFC53: mov var_000000B0, eax
008DFC59: mov var_000000AC, 00000001h
008DFC63: mov var_18, 00000001h
008DFC6A: lea eax, var_2C
008DFC6D: push eax
008DFC6E: lea eax, var_28
008DFC71: push eax
008DFC72: push 00000002h
008DFC74: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DFC79: add esp, 0000000Ch
008DFC7C: lea eax, var_58
008DFC7F: push eax
008DFC80: lea eax, var_48
008DFC83: push eax
008DFC84: push 00000002h
008DFC86: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DFC8B: add esp, 0000000Ch
008DFC8E: jmp 8DFCA2h
008DFC90: mov eax, var_18
008DFC93: add eax, var_000000AC
008DFC99: jo 008E0468h
008DFC9F: mov var_18, eax
008DFCA2: mov eax, var_18
008DFCA5: cmp eax, var_000000B0
008DFCAB: jnle 008DFDE7h
008DFCB1: mov eax, var_18
008DFCB4: mov var_80, eax
008DFCB7: mov var_00000088, 00000003h
008DFCC1: cmp [008F2010h], 00000000h
008DFCC8: jnz 8DFCE5h
008DFCCA: push 008F2010h
008DFCCF: push 00433984h
008DFCD4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DFCD9: mov var_000000CC, 008F2010h
008DFCE3: jmp 8DFCEFh
008DFCE5: mov var_000000CC, 008F2010h
008DFCEF: push 00000000h
008DFCF1: push 00000004h
008DFCF3: push 00440E58h
008DFCF8: push 00000010h
008DFCFA: pop eax
008DFCFB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DFD00: lea esi, var_00000088
008DFD06: mov edi, esp
008DFD08: movsd 
008DFD09: movsd 
008DFD0A: movsd 
008DFD0B: movsd 
008DFD0C: push 00000001h
008DFD0E: push 00000000h
008DFD10: push 00440E48h
008DFD15: push 00000000h
008DFD17: push 00000018h
008DFD19: mov eax, var_000000CC
008DFD1F: mov eax, [eax]
008DFD21: mov ecx, var_000000CC
008DFD27: mov ecx, [ecx]
008DFD29: mov ecx, [ecx]
008DFD2B: push eax
008DFD2C: call [ecx+00000550h]
008DFD32: push eax
008DFD33: lea eax, var_28
008DFD36: push eax
008DFD37: call 00410A84h ; Set (object)
008DFD3C: push eax
008DFD3D: lea eax, var_48
008DFD40: push eax
008DFD41: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DFD46: add esp, 00000010h
008DFD49: push eax
008DFD4A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DFD4F: push eax
008DFD50: lea eax, var_2C
008DFD53: push eax
008DFD54: call 00410A84h ; Set (object)
008DFD59: push eax
008DFD5A: lea eax, var_58
008DFD5D: push eax
008DFD5E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DFD63: add esp, 00000020h
008DFD66: push eax
008DFD67: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DFD6C: push eax
008DFD6D: lea eax, var_30
008DFD70: push eax
008DFD71: call 00410A84h ; Set (object)
008DFD76: push eax
008DFD77: lea eax, var_68
008DFD7A: push eax
008DFD7B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DFD80: add esp, 00000010h
008DFD83: push eax
008DFD84: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008DFD89: sub ax, FFFFh
008DFD8D: neg ax
008DFD90: sbb eax, eax
008DFD92: inc eax
008DFD93: neg eax
008DFD95: mov var_0000009C, ax
008DFD9C: lea eax, var_30
008DFD9F: push eax
008DFDA0: lea eax, var_2C
008DFDA3: push eax
008DFDA4: lea eax, var_28
008DFDA7: push eax
008DFDA8: push 00000003h
008DFDAA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DFDAF: add esp, 00000010h
008DFDB2: lea eax, var_68
008DFDB5: push eax
008DFDB6: lea eax, var_58
008DFDB9: push eax
008DFDBA: lea eax, var_48
008DFDBD: push eax
008DFDBE: push 00000003h
008DFDC0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DFDC5: add esp, 00000010h
008DFDC8: movsx eax, word ptr var_0000009C
008DFDCF: test eax, eax
008DFDD1: jz 8DFDE2h
008DFDD3: mov eax, var_1C
008DFDD6: add eax, 00000001h
008DFDD9: jo 008E0468h
008DFDDF: mov var_1C, eax
008DFDE2: jmp 008DFC90h
008DFDE7: jmp 008E00D2h
008DFDEC: cmp [008F2010h], 00000000h
008DFDF3: jnz 8DFE10h
008DFDF5: push 008F2010h
008DFDFA: push 00433984h
008DFDFF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DFE04: mov var_000000D0, 008F2010h
008DFE0E: jmp 8DFE1Ah
008DFE10: mov var_000000D0, 008F2010h
008DFE1A: and var_80, 00000000h
008DFE1E: mov var_00000088, 00008002h
008DFE28: push 00000000h
008DFE2A: push 0044A9C8h ; COUNT
008DFE2F: push 00000000h
008DFE31: push 0044A9B0h ; lstFiltered
008DFE36: mov eax, var_000000D0
008DFE3C: mov eax, [eax]
008DFE3E: mov ecx, var_000000D0
008DFE44: mov ecx, [ecx]
008DFE46: mov ecx, [ecx]
008DFE48: push eax
008DFE49: call [ecx+00000550h]
008DFE4F: push eax
008DFE50: lea eax, var_28
008DFE53: push eax
008DFE54: call 00410A84h ; Set (object)
008DFE59: push eax
008DFE5A: lea eax, var_48
008DFE5D: push eax
008DFE5E: call 00410742h ; msvbvm60.dll.__vbaLateMemCallLd
008DFE63: add esp, 00000010h
008DFE66: push eax
008DFE67: lea eax, var_58
008DFE6A: push eax
008DFE6B: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
008DFE70: add esp, 00000010h
008DFE73: push eax
008DFE74: lea eax, var_00000088
008DFE7A: push eax
008DFE7B: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
008DFE80: mov var_0000009C, ax
008DFE87: lea ecx, var_28
008DFE8A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DFE8F: lea eax, var_58
008DFE92: push eax
008DFE93: lea eax, var_48
008DFE96: push eax
008DFE97: push 00000002h
008DFE99: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DFE9E: add esp, 0000000Ch
008DFEA1: movsx eax, word ptr var_0000009C
008DFEA8: test eax, eax
008DFEAA: jz 008E00D2h
008DFEB0: cmp [008F2010h], 00000000h
008DFEB7: jnz 8DFED4h
008DFEB9: push 008F2010h
008DFEBE: push 00433984h
008DFEC3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DFEC8: mov var_000000D4, 008F2010h
008DFED2: jmp 8DFEDEh
008DFED4: mov var_000000D4, 008F2010h
008DFEDE: push 00000000h
008DFEE0: push 00000001h
008DFEE2: push 00440E48h
008DFEE7: push 00000000h
008DFEE9: push 00000018h
008DFEEB: mov eax, var_000000D4
008DFEF1: mov eax, [eax]
008DFEF3: mov ecx, var_000000D4
008DFEF9: mov ecx, [ecx]
008DFEFB: mov ecx, [ecx]
008DFEFD: push eax
008DFEFE: call [ecx+0000054Ch]
008DFF04: push eax
008DFF05: lea eax, var_28
008DFF08: push eax
008DFF09: call 00410A84h ; Set (object)
008DFF0E: push eax
008DFF0F: lea eax, var_48
008DFF12: push eax
008DFF13: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DFF18: add esp, 00000010h
008DFF1B: push eax
008DFF1C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DFF21: push eax
008DFF22: lea eax, var_2C
008DFF25: push eax
008DFF26: call 00410A84h ; Set (object)
008DFF2B: push eax
008DFF2C: lea eax, var_58
008DFF2F: push eax
008DFF30: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DFF35: add esp, 00000010h
008DFF38: push eax
008DFF39: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008DFF3E: mov var_000000B8, eax
008DFF44: mov var_000000B4, 00000001h
008DFF4E: mov var_18, 00000001h
008DFF55: lea eax, var_2C
008DFF58: push eax
008DFF59: lea eax, var_28
008DFF5C: push eax
008DFF5D: push 00000002h
008DFF5F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DFF64: add esp, 0000000Ch
008DFF67: lea eax, var_58
008DFF6A: push eax
008DFF6B: lea eax, var_48
008DFF6E: push eax
008DFF6F: push 00000002h
008DFF71: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DFF76: add esp, 0000000Ch
008DFF79: jmp 8DFF8Dh
008DFF7B: mov eax, var_18
008DFF7E: add eax, var_000000B4
008DFF84: jo 008E0468h
008DFF8A: mov var_18, eax
008DFF8D: mov eax, var_18
008DFF90: cmp eax, var_000000B8
008DFF96: jnle 008E00D2h
008DFF9C: mov eax, var_18
008DFF9F: mov var_80, eax
008DFFA2: mov var_00000088, 00000003h
008DFFAC: cmp [008F2010h], 00000000h
008DFFB3: jnz 8DFFD0h
008DFFB5: push 008F2010h
008DFFBA: push 00433984h
008DFFBF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DFFC4: mov var_000000D8, 008F2010h
008DFFCE: jmp 8DFFDAh
008DFFD0: mov var_000000D8, 008F2010h
008DFFDA: push 00000000h
008DFFDC: push 00000004h
008DFFDE: push 00440E58h
008DFFE3: push 00000010h
008DFFE5: pop eax
008DFFE6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DFFEB: lea esi, var_00000088
008DFFF1: mov edi, esp
008DFFF3: movsd 
008DFFF4: movsd 
008DFFF5: movsd 
008DFFF6: movsd 
008DFFF7: push 00000001h
008DFFF9: push 00000000h
008DFFFB: push 00440E48h
008E0000: push 00000000h
008E0002: push 00000018h
008E0004: mov eax, var_000000D8
008E000A: mov eax, [eax]
008E000C: mov ecx, var_000000D8
008E0012: mov ecx, [ecx]
008E0014: mov ecx, [ecx]
008E0016: push eax
008E0017: call [ecx+0000054Ch]
008E001D: push eax
008E001E: lea eax, var_28
008E0021: push eax
008E0022: call 00410A84h ; Set (object)
008E0027: push eax
008E0028: lea eax, var_48
008E002B: push eax
008E002C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E0031: add esp, 00000010h
008E0034: push eax
008E0035: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E003A: push eax
008E003B: lea eax, var_2C
008E003E: push eax
008E003F: call 00410A84h ; Set (object)
008E0044: push eax
008E0045: lea eax, var_58
008E0048: push eax
008E0049: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E004E: add esp, 00000020h
008E0051: push eax
008E0052: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E0057: push eax
008E0058: lea eax, var_30
008E005B: push eax
008E005C: call 00410A84h ; Set (object)
008E0061: push eax
008E0062: lea eax, var_68
008E0065: push eax
008E0066: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E006B: add esp, 00000010h
008E006E: push eax
008E006F: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008E0074: sub ax, FFFFh
008E0078: neg ax
008E007B: sbb eax, eax
008E007D: inc eax
008E007E: neg eax
008E0080: mov var_0000009C, ax
008E0087: lea eax, var_30
008E008A: push eax
008E008B: lea eax, var_2C
008E008E: push eax
008E008F: lea eax, var_28
008E0092: push eax
008E0093: push 00000003h
008E0095: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E009A: add esp, 00000010h
008E009D: lea eax, var_68
008E00A0: push eax
008E00A1: lea eax, var_58
008E00A4: push eax
008E00A5: lea eax, var_48
008E00A8: push eax
008E00A9: push 00000003h
008E00AB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E00B0: add esp, 00000010h
008E00B3: movsx eax, word ptr var_0000009C
008E00BA: test eax, eax
008E00BC: jz 8E00CDh
008E00BE: mov eax, var_1C
008E00C1: add eax, 00000001h
008E00C4: jo 008E0468h
008E00CA: mov var_1C, eax
008E00CD: jmp 008DFF7Bh
008E00D2: push 0044A87Ch
008E00D7: push 00000000h
008E00D9: push 00000003h
008E00DB: mov eax, [ebp+08h]
008E00DE: mov eax, [eax]
008E00E0: push [ebp+08h]
008E00E3: call [eax+0000032Ch]
008E00E9: push eax
008E00EA: lea eax, var_30
008E00ED: push eax
008E00EE: call 00410A84h ; Set (object)
008E00F3: push eax
008E00F4: lea eax, var_68
008E00F7: push eax
008E00F8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E00FD: add esp, 00000010h
008E0100: push eax
008E0101: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E0106: push eax
008E0107: lea eax, var_34
008E010A: push eax
008E010B: call 00410A84h ; Set (object)
008E0110: mov var_0000009C, eax
008E0116: mov var_70, 00000001h
008E011D: mov var_78, 00000002h
008E0124: lea eax, var_38
008E0127: push eax
008E0128: lea eax, var_78
008E012B: push eax
008E012C: mov eax, var_0000009C
008E0132: mov eax, [eax]
008E0134: push var_0000009C
008E013A: call [eax+24h]
008E013D: fclex 
008E013F: mov var_000000A0, eax
008E0145: cmp var_000000A0, 00000000h
008E014C: jnl 8E016Eh
008E014E: push 00000024h
008E0150: push 0044A87Ch
008E0155: push var_0000009C
008E015B: push var_000000A0
008E0161: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E0166: mov var_000000DC, eax
008E016C: jmp 8E0175h
008E016E: and var_000000DC, 00000000h
008E0175: mov eax, var_38
008E0178: mov var_000000A4, eax
008E017E: push 004599C0h ; Total:
008E0183: push 00000000h
008E0185: push 00000001h
008E0187: push 00440E48h
008E018C: push 00000000h
008E018E: push 00000018h
008E0190: mov eax, [ebp+08h]
008E0193: mov eax, [eax]
008E0195: push [ebp+08h]
008E0198: call [eax+0000031Ch]
008E019E: push eax
008E019F: lea eax, var_28
008E01A2: push eax
008E01A3: call 00410A84h ; Set (object)
008E01A8: push eax
008E01A9: lea eax, var_48
008E01AC: push eax
008E01AD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E01B2: add esp, 00000010h
008E01B5: push eax
008E01B6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E01BB: push eax
008E01BC: lea eax, var_2C
008E01BF: push eax
008E01C0: call 00410A84h ; Set (object)
008E01C5: push eax
008E01C6: lea eax, var_58
008E01C9: push eax
008E01CA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E01CF: add esp, 00000010h
008E01D2: push eax
008E01D3: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E01D8: push eax
008E01D9: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008E01DE: mov edx, eax
008E01E0: lea ecx, var_20
008E01E3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E01E8: push eax
008E01E9: call 00410A18h ; &
008E01EE: mov edx, eax
008E01F0: lea ecx, var_24
008E01F3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E01F8: push eax
008E01F9: mov eax, var_000000A4
008E01FF: mov eax, [eax]
008E0201: push var_000000A4
008E0207: call [eax+00000080h]
008E020D: fclex 
008E020F: mov var_000000A8, eax
008E0215: cmp var_000000A8, 00000000h
008E021C: jnl 8E0241h
008E021E: push 00000080h
008E0223: push 0044A88Ch
008E0228: push var_000000A4
008E022E: push var_000000A8
008E0234: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E0239: mov var_000000E0, eax
008E023F: jmp 8E0248h
008E0241: and var_000000E0, 00000000h
008E0248: lea eax, var_24
008E024B: push eax
008E024C: lea eax, var_20
008E024F: push eax
008E0250: push 00000002h
008E0252: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E0257: add esp, 0000000Ch
008E025A: lea eax, var_38
008E025D: push eax
008E025E: lea eax, var_34
008E0261: push eax
008E0262: lea eax, var_30
008E0265: push eax
008E0266: lea eax, var_2C
008E0269: push eax
008E026A: lea eax, var_28
008E026D: push eax
008E026E: push 00000005h
008E0270: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E0275: add esp, 00000018h
008E0278: lea eax, var_78
008E027B: push eax
008E027C: lea eax, var_68
008E027F: push eax
008E0280: lea eax, var_58
008E0283: push eax
008E0284: lea eax, var_48
008E0287: push eax
008E0288: push 00000004h
008E028A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E028F: add esp, 00000014h
008E0292: push 0044A87Ch
008E0297: push 00000000h
008E0299: push 00000003h
008E029B: mov eax, [ebp+08h]
008E029E: mov eax, [eax]
008E02A0: push [ebp+08h]
008E02A3: call [eax+0000032Ch]
008E02A9: push eax
008E02AA: lea eax, var_28
008E02AD: push eax
008E02AE: call 00410A84h ; Set (object)
008E02B3: push eax
008E02B4: lea eax, var_48
008E02B7: push eax
008E02B8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E02BD: add esp, 00000010h
008E02C0: push eax
008E02C1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E02C6: push eax
008E02C7: lea eax, var_2C
008E02CA: push eax
008E02CB: call 00410A84h ; Set (object)
008E02D0: mov var_0000009C, eax
008E02D6: mov var_50, 00000002h
008E02DD: mov var_58, 00000002h
008E02E4: lea eax, var_30
008E02E7: push eax
008E02E8: lea eax, var_58
008E02EB: push eax
008E02EC: mov eax, var_0000009C
008E02F2: mov eax, [eax]
008E02F4: push var_0000009C
008E02FA: call [eax+24h]
008E02FD: fclex 
008E02FF: mov var_000000A0, eax
008E0305: cmp var_000000A0, 00000000h
008E030C: jnl 8E032Eh
008E030E: push 00000024h
008E0310: push 0044A87Ch
008E0315: push var_0000009C
008E031B: push var_000000A0
008E0321: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E0326: mov var_000000E4, eax
008E032C: jmp 8E0335h
008E032E: and var_000000E4, 00000000h
008E0335: mov eax, var_30
008E0338: mov var_000000A4, eax
008E033E: push 00457C58h ; Selected bots:
008E0343: push var_1C
008E0346: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008E034B: mov edx, eax
008E034D: lea ecx, var_20
008E0350: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E0355: push eax
008E0356: call 00410A18h ; &
008E035B: mov edx, eax
008E035D: lea ecx, var_24
008E0360: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E0365: push eax
008E0366: mov eax, var_000000A4
008E036C: mov eax, [eax]
008E036E: push var_000000A4
008E0374: call [eax+00000080h]
008E037A: fclex 
008E037C: mov var_000000A8, eax
008E0382: cmp var_000000A8, 00000000h
008E0389: jnl 8E03AEh
008E038B: push 00000080h
008E0390: push 0044A88Ch
008E0395: push var_000000A4
008E039B: push var_000000A8
008E03A1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E03A6: mov var_000000E8, eax
008E03AC: jmp 8E03B5h
008E03AE: and var_000000E8, 00000000h
008E03B5: lea eax, var_24
008E03B8: push eax
008E03B9: lea eax, var_20
008E03BC: push eax
008E03BD: push 00000002h
008E03BF: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E03C4: add esp, 0000000Ch
008E03C7: lea eax, var_30
008E03CA: push eax
008E03CB: lea eax, var_2C
008E03CE: push eax
008E03CF: lea eax, var_28
008E03D2: push eax
008E03D3: push 00000003h
008E03D5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E03DA: add esp, 00000010h
008E03DD: lea eax, var_58
008E03E0: push eax
008E03E1: lea eax, var_48
008E03E4: push eax
008E03E5: push 00000002h
008E03E7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E03EC: add esp, 0000000Ch
008E03EF: mov var_04, 00000000h
008E03F6: push 008E0449h
008E03FB: jmp 8E0448h
008E03FD: lea eax, var_24
008E0400: push eax
008E0401: lea eax, var_20
008E0404: push eax
008E0405: push 00000002h
008E0407: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E040C: add esp, 0000000Ch
008E040F: lea eax, var_38
008E0412: push eax
008E0413: lea eax, var_34
008E0416: push eax
008E0417: lea eax, var_30
008E041A: push eax
008E041B: lea eax, var_2C
008E041E: push eax
008E041F: lea eax, var_28
008E0422: push eax
008E0423: push 00000005h
008E0425: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E042A: add esp, 00000018h
008E042D: lea eax, var_78
008E0430: push eax
008E0431: lea eax, var_68
008E0434: push eax
008E0435: lea eax, var_58
008E0438: push eax
008E0439: lea eax, var_48
008E043C: push eax
008E043D: push 00000004h
008E043F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E0444: add esp, 00000014h
008E0447: ret 
End Sub

Private sub mnuAds__8DE76E
008DE76E: push ebp
008DE76F: mov ebp, esp
008DE771: sub esp, 00000018h
008DE774: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008DE779: mov eax, fs:[00h]
008DE77F: push eax
008DE780: mov fs:[00000000h], esp
008DE787: mov eax, 00000144h
008DE78C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DE791: push ebx
008DE792: push esi
008DE793: push edi
008DE794: mov var_18, esp
008DE797: mov var_14, 00410060h
008DE79E: mov eax, [ebp+08h]
008DE7A1: and eax, 00000001h
008DE7A4: mov var_10, eax
008DE7A7: mov eax, [ebp+08h]
008DE7AA: and al, FEh
008DE7AC: mov [ebp+08h], eax
008DE7AF: mov var_0C, 00000000h
008DE7B6: mov eax, [ebp+08h]
008DE7B9: mov eax, [eax]
008DE7BB: push [ebp+08h]
008DE7BE: call [eax+04h]
008DE7C1: mov var_04, 00000001h
008DE7C8: mov var_04, 00000002h
008DE7CF: push FFFFFFFFh
008DE7D1: call 00410A60h ; On Error ...
008DE7D6: mov var_04, 00000003h
008DE7DD: mov eax, [ebp+0Ch]
008DE7E0: mov ax, [eax]
008DE7E3: mov var_0000013C, ax
008DE7EA: movsx eax, word ptr var_0000013C
008DE7F1: mov var_00000158, eax
008DE7F7: cmp var_00000158, 00000001h
008DE7FE: jz 8DE817h
008DE800: cmp var_00000158, 00000003h
008DE807: jz 008DED3Eh
008DE80D: jmp 008DEDAAh
008DE812: jmp 008DEDAAh
008DE817: mov var_04, 00000005h
008DE81E: cmp [008F529Ch], 00000000h
008DE825: jnz 8DE842h
008DE827: push 008F529Ch
008DE82C: push 00440F2Ch
008DE831: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DE836: mov var_0000015C, 008F529Ch
008DE840: jmp 8DE84Ch
008DE842: mov var_0000015C, 008F529Ch
008DE84C: mov eax, var_0000015C
008DE852: mov eax, [eax]
008DE854: mov var_0000010C, eax
008DE85A: lea eax, var_54
008DE85D: push eax
008DE85E: mov eax, var_0000010C
008DE864: mov eax, [eax]
008DE866: push var_0000010C
008DE86C: call [eax+14h]
008DE86F: fclex 
008DE871: mov var_00000110, eax
008DE877: cmp var_00000110, 00000000h
008DE87E: jnl 8DE8A0h
008DE880: push 00000014h
008DE882: push 00440F1Ch
008DE887: push var_0000010C
008DE88D: push var_00000110
008DE893: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DE898: mov var_00000160, eax
008DE89E: jmp 8DE8A7h
008DE8A0: and var_00000160, 00000000h
008DE8A7: mov eax, var_54
008DE8AA: mov var_00000114, eax
008DE8B0: lea eax, var_40
008DE8B3: push eax
008DE8B4: mov eax, var_00000114
008DE8BA: mov eax, [eax]
008DE8BC: push var_00000114
008DE8C2: call [eax+50h]
008DE8C5: fclex 
008DE8C7: mov var_00000118, eax
008DE8CD: cmp var_00000118, 00000000h
008DE8D4: jnl 8DE8F6h
008DE8D6: push 00000050h
008DE8D8: push 00440F3Ch
008DE8DD: push var_00000114
008DE8E3: push var_00000118
008DE8E9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DE8EE: mov var_00000164, eax
008DE8F4: jmp 8DE8FDh
008DE8F6: and var_00000164, 00000000h
008DE8FD: push 00000000h
008DE8FF: push 00000000h
008DE901: push var_40
008DE904: push 0044558Ch ; txt
008DE909: push 00452FD0h ; Text Documents
008DE90E: call 007CCC4Dh
008DE913: mov edx, eax
008DE915: lea ecx, var_3C
008DE918: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DE91D: lea ecx, var_40
008DE920: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008DE925: lea ecx, var_54
008DE928: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DE92D: mov var_04, 00000006h
008DE934: push var_3C
008DE937: push 00000000h
008DE939: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008DE93E: test eax, eax
008DE940: jz 008DED3Ch
008DE946: mov var_04, 00000007h
008DE94D: mov var_000000D0, 00000001h
008DE957: mov var_000000D8, 00000002h
008DE961: push 00000000h
008DE963: push 00000001h
008DE965: push 00440E48h
008DE96A: push 00000000h
008DE96C: push 00000018h
008DE96E: mov eax, [ebp+08h]
008DE971: mov eax, [eax]
008DE973: push [ebp+08h]
008DE976: call [eax+0000031Ch]
008DE97C: push eax
008DE97D: lea eax, var_54
008DE980: push eax
008DE981: call 00410A84h ; Set (object)
008DE986: push eax
008DE987: lea eax, var_78
008DE98A: push eax
008DE98B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DE990: add esp, 00000010h
008DE993: push eax
008DE994: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DE999: push eax
008DE99A: lea eax, var_58
008DE99D: push eax
008DE99E: call 00410A84h ; Set (object)
008DE9A3: push eax
008DE9A4: lea eax, var_00000088
008DE9AA: push eax
008DE9AB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DE9B0: add esp, 00000010h
008DE9B3: push eax
008DE9B4: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008DE9B9: mov var_000000E0, eax
008DE9BF: mov var_000000E8, 00000003h
008DE9C9: mov var_000000F0, 00000001h
008DE9D3: mov var_000000F8, 00000002h
008DE9DD: lea eax, var_000000D8
008DE9E3: push eax
008DE9E4: lea eax, var_000000E8
008DE9EA: push eax
008DE9EB: lea eax, var_000000F8
008DE9F1: push eax
008DE9F2: lea eax, var_00000138
008DE9F8: push eax
008DE9F9: lea eax, var_00000128
008DE9FF: push eax
008DEA00: lea eax, var_30
008DEA03: push eax
008DEA04: call 00410A3Ch ; For
008DEA09: mov var_00000154, eax
008DEA0F: lea eax, var_58
008DEA12: push eax
008DEA13: lea eax, var_54
008DEA16: push eax
008DEA17: push 00000002h
008DEA19: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DEA1E: add esp, 0000000Ch
008DEA21: lea eax, var_00000088
008DEA27: push eax
008DEA28: lea eax, var_78
008DEA2B: push eax
008DEA2C: push 00000002h
008DEA2E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DEA33: add esp, 0000000Ch
008DEA36: jmp 008DECB4h
008DEA3B: mov var_04, 00000008h
008DEA42: lea eax, var_30
008DEA45: mov var_000000D0, eax
008DEA4B: mov var_000000D8, 0000400Ch
008DEA55: mov var_000000F0, 00000001h
008DEA5F: mov var_000000F8, 00000003h
008DEA69: lea eax, var_30
008DEA6C: mov var_000000E0, eax
008DEA72: mov var_000000E8, 0000400Ch
008DEA7C: push var_38
008DEA7F: push 00000000h
008DEA81: push 00000000h
008DEA83: push 00440E58h
008DEA88: push 00000010h
008DEA8A: pop eax
008DEA8B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DEA90: lea esi, var_000000D8
008DEA96: mov edi, esp
008DEA98: movsd 
008DEA99: movsd 
008DEA9A: movsd 
008DEA9B: movsd 
008DEA9C: push 00000001h
008DEA9E: push 00000000h
008DEAA0: push 00440E48h
008DEAA5: push 00000000h
008DEAA7: push 00000018h
008DEAA9: mov eax, [ebp+08h]
008DEAAC: mov eax, [eax]
008DEAAE: push [ebp+08h]
008DEAB1: call [eax+0000031Ch]
008DEAB7: push eax
008DEAB8: lea eax, var_54
008DEABB: push eax
008DEABC: call 00410A84h ; Set (object)
008DEAC1: push eax
008DEAC2: lea eax, var_78
008DEAC5: push eax
008DEAC6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DEACB: add esp, 00000010h
008DEACE: push eax
008DEACF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DEAD4: push eax
008DEAD5: lea eax, var_58
008DEAD8: push eax
008DEAD9: call 00410A84h ; Set (object)
008DEADE: push eax
008DEADF: lea eax, var_00000088
008DEAE5: push eax
008DEAE6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DEAEB: add esp, 00000020h
008DEAEE: push eax
008DEAEF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DEAF4: push eax
008DEAF5: lea eax, var_5C
008DEAF8: push eax
008DEAF9: call 00410A84h ; Set (object)
008DEAFE: push eax
008DEAFF: lea eax, var_00000098
008DEB05: push eax
008DEB06: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DEB0B: add esp, 00000010h
008DEB0E: push eax
008DEB0F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008DEB14: mov edx, eax
008DEB16: lea ecx, var_40
008DEB19: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DEB1E: push eax
008DEB1F: call 00410A18h ; &
008DEB24: mov edx, eax
008DEB26: lea ecx, var_44
008DEB29: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DEB2E: push eax
008DEB2F: push 004412B8h
008DEB34: call 00410A18h ; &
008DEB39: mov edx, eax
008DEB3B: lea ecx, var_48
008DEB3E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DEB43: push eax
008DEB44: push 00000010h
008DEB46: pop eax
008DEB47: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DEB4C: lea esi, var_000000F8
008DEB52: mov edi, esp
008DEB54: movsd 
008DEB55: movsd 
008DEB56: movsd 
008DEB57: movsd 
008DEB58: push 00000001h
008DEB5A: push 00000010h
008DEB5C: push 00440E58h
008DEB61: push 00000010h
008DEB63: pop eax
008DEB64: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DEB69: lea esi, var_000000E8
008DEB6F: mov edi, esp
008DEB71: movsd 
008DEB72: movsd 
008DEB73: movsd 
008DEB74: movsd 
008DEB75: push 00000001h
008DEB77: push 00000000h
008DEB79: push 00440E48h
008DEB7E: push 00000000h
008DEB80: push 00000018h
008DEB82: mov eax, [ebp+08h]
008DEB85: mov eax, [eax]
008DEB87: push [ebp+08h]
008DEB8A: call [eax+0000031Ch]
008DEB90: push eax
008DEB91: lea eax, var_60
008DEB94: push eax
008DEB95: call 00410A84h ; Set (object)
008DEB9A: push eax
008DEB9B: lea eax, var_000000A8
008DEBA1: push eax
008DEBA2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DEBA7: add esp, 00000010h
008DEBAA: push eax
008DEBAB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DEBB0: push eax
008DEBB1: lea eax, var_64
008DEBB4: push eax
008DEBB5: call 00410A84h ; Set (object)
008DEBBA: push eax
008DEBBB: lea eax, var_000000B8
008DEBC1: push eax
008DEBC2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DEBC7: add esp, 00000020h
008DEBCA: push eax
008DEBCB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DEBD0: push eax
008DEBD1: lea eax, var_68
008DEBD4: push eax
008DEBD5: call 00410A84h ; Set (object)
008DEBDA: push eax
008DEBDB: lea eax, var_000000C8
008DEBE1: push eax
008DEBE2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DEBE7: add esp, 00000020h
008DEBEA: push eax
008DEBEB: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008DEBF0: mov edx, eax
008DEBF2: lea ecx, var_4C
008DEBF5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DEBFA: push eax
008DEBFB: call 00410A18h ; &
008DEC00: mov edx, eax
008DEC02: lea ecx, var_50
008DEC05: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DEC0A: push eax
008DEC0B: push 00441264h ; vbCrLf
008DEC10: call 00410A18h ; &
008DEC15: mov edx, eax
008DEC17: lea ecx, var_38
008DEC1A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DEC1F: lea eax, var_50
008DEC22: push eax
008DEC23: lea eax, var_4C
008DEC26: push eax
008DEC27: lea eax, var_48
008DEC2A: push eax
008DEC2B: lea eax, var_44
008DEC2E: push eax
008DEC2F: lea eax, var_40
008DEC32: push eax
008DEC33: push 00000005h
008DEC35: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008DEC3A: add esp, 00000018h
008DEC3D: lea eax, var_68
008DEC40: push eax
008DEC41: lea eax, var_64
008DEC44: push eax
008DEC45: lea eax, var_60
008DEC48: push eax
008DEC49: lea eax, var_5C
008DEC4C: push eax
008DEC4D: lea eax, var_58
008DEC50: push eax
008DEC51: lea eax, var_54
008DEC54: push eax
008DEC55: push 00000006h
008DEC57: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DEC5C: add esp, 0000001Ch
008DEC5F: lea eax, var_000000C8
008DEC65: push eax
008DEC66: lea eax, var_000000B8
008DEC6C: push eax
008DEC6D: lea eax, var_000000A8
008DEC73: push eax
008DEC74: lea eax, var_00000098
008DEC7A: push eax
008DEC7B: lea eax, var_00000088
008DEC81: push eax
008DEC82: lea eax, var_78
008DEC85: push eax
008DEC86: push 00000006h
008DEC88: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DEC8D: add esp, 0000001Ch
008DEC90: mov var_04, 00000009h
008DEC97: lea eax, var_00000138
008DEC9D: push eax
008DEC9E: lea eax, var_00000128
008DECA4: push eax
008DECA5: lea eax, var_30
008DECA8: push eax
008DECA9: call 00410A36h ; Next
008DECAE: mov var_00000154, eax
008DECB4: cmp var_00000154, 00000000h
008DECBB: jnz 008DEA3Bh
008DECC1: mov var_04, 0000000Ah
008DECC8: mov var_70, 80020004h
008DECCF: mov var_78, 0000000Ah
008DECD6: lea eax, var_78
008DECD9: push eax
008DECDA: call 004108C2h ; FreeFile
008DECDF: movsx eax, ax
008DECE2: mov var_34, eax
008DECE5: lea ecx, var_78
008DECE8: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008DECED: mov var_04, 0000000Bh
008DECF4: push var_3C
008DECF7: mov ecx, var_34
008DECFA: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008DECFF: push eax
008DED00: push FFFFFFFFh
008DED02: push 00000220h
008DED07: call 004108B6h ; Open #
008DED0C: mov var_04, 0000000Ch
008DED13: mov ecx, var_34
008DED16: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008DED1B: push eax
008DED1C: lea eax, var_38
008DED1F: push eax
008DED20: push 00000000h
008DED22: call 0041089Eh ; Put #
008DED27: mov var_04, 0000000Dh
008DED2E: mov ecx, var_34
008DED31: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008DED36: push eax
008DED37: call 00410898h ; Close #arg_1
008DED3C: jmp 8DEDAAh
008DED3E: mov var_04, 00000010h
008DED45: push 00000000h
008DED47: push 00000003h
008DED49: push 00440E48h
008DED4E: push 00000000h
008DED50: push 00000018h
008DED52: mov eax, [ebp+08h]
008DED55: mov eax, [eax]
008DED57: push [ebp+08h]
008DED5A: call [eax+0000031Ch]
008DED60: push eax
008DED61: lea eax, var_54
008DED64: push eax
008DED65: call 00410A84h ; Set (object)
008DED6A: push eax
008DED6B: lea eax, var_78
008DED6E: push eax
008DED6F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DED74: add esp, 00000010h
008DED77: push eax
008DED78: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008DED7D: push eax
008DED7E: lea eax, var_58
008DED81: push eax
008DED82: call 00410A84h ; Set (object)
008DED87: push eax
008DED88: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008DED8D: add esp, 0000000Ch
008DED90: lea eax, var_58
008DED93: push eax
008DED94: lea eax, var_54
008DED97: push eax
008DED98: push 00000002h
008DED9A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DED9F: add esp, 0000000Ch
008DEDA2: lea ecx, var_78
008DEDA5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008DEDAA: mov var_10, 00000000h
008DEDB1: push 008DEE5Bh
008DEDB6: jmp 8DEE2Ah
008DEDB8: lea eax, var_50
008DEDBB: push eax
008DEDBC: lea eax, var_4C
008DEDBF: push eax
008DEDC0: lea eax, var_48
008DEDC3: push eax
008DEDC4: lea eax, var_44
008DEDC7: push eax
008DEDC8: lea eax, var_40
008DEDCB: push eax
008DEDCC: push 00000005h
008DEDCE: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008DEDD3: add esp, 00000018h
008DEDD6: lea eax, var_68
008DEDD9: push eax
008DEDDA: lea eax, var_64
008DEDDD: push eax
008DEDDE: lea eax, var_60
008DEDE1: push eax
008DEDE2: lea eax, var_5C
008DEDE5: push eax
008DEDE6: lea eax, var_58
008DEDE9: push eax
008DEDEA: lea eax, var_54
008DEDED: push eax
008DEDEE: push 00000006h
008DEDF0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DEDF5: add esp, 0000001Ch
008DEDF8: lea eax, var_000000C8
008DEDFE: push eax
008DEDFF: lea eax, var_000000B8
008DEE05: push eax
008DEE06: lea eax, var_000000A8
008DEE0C: push eax
008DEE0D: lea eax, var_00000098
008DEE13: push eax
008DEE14: lea eax, var_00000088
008DEE1A: push eax
008DEE1B: lea eax, var_78
008DEE1E: push eax
008DEE1F: push 00000006h
008DEE21: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DEE26: add esp, 0000001Ch
008DEE29: ret 
End Sub

