VERSION 5.00
Begin VB.Form frmSafeSocketHelp
  Caption = "Help - Safe socket"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 5 'Sizable ToolWindow
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 120
  ClientTop = 390
  ClientWidth = 8415
  ClientHeight = 8535
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox txtMain
    Left = 0
    Top = 0
    Width = 8415
    Height = 8535
    TabIndex = 0
    MultiLine = -1  'True
    ScrollBars = 2
    Locked = -1  'True
  End
End

Attribute VB_Name = "frmSafeSocketHelp"


Private sub Form__88666A
0088666A: push ebp
0088666B: mov ebp, esp
0088666D: sub esp, 0000000Ch
00886670: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00886675: mov eax, fs:[00h]
0088667B: push eax
0088667C: mov fs:[00000000h], esp
00886683: mov eax, 000000F8h
00886688: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088668D: push ebx
0088668E: push esi
0088668F: push edi
00886690: mov var_0C, esp
00886693: mov var_08, 0040DCD0h
0088669A: mov eax, [ebp+08h]
0088669D: and eax, 00000001h
008866A0: mov var_04, eax
008866A3: mov eax, [ebp+08h]
008866A6: and al, FEh
008866A8: mov [ebp+08h], eax
008866AB: mov eax, [ebp+08h]
008866AE: mov eax, [eax]
008866B0: push [ebp+08h]
008866B3: call [eax+04h]
008866B6: mov eax, [ebp+08h]
008866B9: mov eax, [eax]
008866BB: push [ebp+08h]
008866BE: call [eax+000002FCh]
008866C4: push eax
008866C5: lea eax, var_000000F8
008866CB: push eax
008866CC: call 00410A84h ; Set (object)
008866D1: mov var_000000FC, eax
008866D7: push 00457D00h ; The value should be set and match your system performance and internet connection speed.
008866DC: push 00441264h ; vbCrLf
008866E1: call 00410A18h ; &
008866E6: mov edx, eax
008866E8: lea ecx, var_18
008866EB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008866F0: push eax
008866F1: push 00441264h ; vbCrLf
008866F6: call 00410A18h ; &
008866FB: mov edx, eax
008866FD: lea ecx, var_1C
00886700: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886705: push eax
00886706: push 00457DB8h ; Recommended settings:
0088670B: call 00410A18h ; &
00886710: mov edx, eax
00886712: lea ecx, var_20
00886715: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088671A: push eax
0088671B: push 00441264h ; vbCrLf
00886720: call 00410A18h ; &
00886725: mov edx, eax
00886727: lea ecx, var_24
0088672A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088672F: push eax
00886730: push 00457DE8h ; RAM: 512 - 2048 MB
00886735: call 00410A18h ; &
0088673A: mov edx, eax
0088673C: lea ecx, var_28
0088673F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886744: push eax
00886745: push 00441264h ; vbCrLf
0088674A: call 00410A18h ; &
0088674F: mov edx, eax
00886751: lea ecx, var_2C
00886754: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886759: push eax
0088675A: push 00457E14h ; CPU: 1200 - 2100 MHz
0088675F: call 00410A18h ; &
00886764: mov edx, eax
00886766: lea ecx, var_30
00886769: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088676E: push eax
0088676F: push 00441264h ; vbCrLf
00886774: call 00410A18h ; &
00886779: mov edx, eax
0088677B: lea ecx, var_34
0088677E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886783: push eax
00886784: push 00457E44h ; Dlink: 0.5 - 2 Mbit/s
00886789: call 00410A18h ; &
0088678E: mov edx, eax
00886790: lea ecx, var_38
00886793: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886798: push eax
00886799: push 00441264h ; vbCrLf
0088679E: call 00410A18h ; &
008867A3: mov edx, eax
008867A5: lea ecx, var_3C
008867A8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008867AD: push eax
008867AE: push 00457E74h ; Ulink: 0.5 - 1 Mbit/s
008867B3: call 00410A18h ; &
008867B8: mov edx, eax
008867BA: lea ecx, var_40
008867BD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008867C2: push eax
008867C3: push 00441264h ; vbCrLf
008867C8: call 00410A18h ; &
008867CD: mov edx, eax
008867CF: lea ecx, var_44
008867D2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008867D7: push eax
008867D8: push 00457EA4h ; Use: 15
008867DD: call 00410A18h ; &
008867E2: mov edx, eax
008867E4: lea ecx, var_48
008867E7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008867EC: push eax
008867ED: push 00441264h ; vbCrLf
008867F2: call 00410A18h ; &
008867F7: mov edx, eax
008867F9: lea ecx, var_4C
008867FC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886801: push eax
00886802: push 00441264h ; vbCrLf
00886807: call 00410A18h ; &
0088680C: mov edx, eax
0088680E: lea ecx, var_50
00886811: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886816: push eax
00886817: push 00457CACh ; RAM: 2048 - 4096 MB
0088681C: call 00410A18h ; &
00886821: mov edx, eax
00886823: lea ecx, var_54
00886826: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088682B: push eax
0088682C: push 00441264h ; vbCrLf
00886831: call 00410A18h ; &
00886836: mov edx, eax
00886838: lea ecx, var_58
0088683B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886840: push eax
00886841: push 00457EE0h ; CPU: 2100 - 2600 MHz
00886846: call 00410A18h ; &
0088684B: mov edx, eax
0088684D: lea ecx, var_5C
00886850: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886855: push eax
00886856: push 00441264h ; vbCrLf
0088685B: call 00410A18h ; &
00886860: mov edx, eax
00886862: lea ecx, var_60
00886865: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088686A: push eax
0088686B: push 00457F10h ; Dlink: 2 - 6 Mbit/s
00886870: call 00410A18h ; &
00886875: mov edx, eax
00886877: lea ecx, var_64
0088687A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088687F: push eax
00886880: push 00441264h ; vbCrLf
00886885: call 00410A18h ; &
0088688A: mov edx, eax
0088688C: lea ecx, var_68
0088688F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886894: push eax
00886895: push 00457F3Ch ; Ulink: 1 - 4 Mbit/s
0088689A: call 00410A18h ; &
0088689F: mov edx, eax
008868A1: lea ecx, var_6C
008868A4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008868A9: push eax
008868AA: push 00441264h ; vbCrLf
008868AF: call 00410A18h ; &
008868B4: mov edx, eax
008868B6: lea ecx, var_70
008868B9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008868BE: push eax
008868BF: push 00457F68h ; Use: 25
008868C4: call 00410A18h ; &
008868C9: mov edx, eax
008868CB: lea ecx, var_74
008868CE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008868D3: push eax
008868D4: push 00441264h ; vbCrLf
008868D9: call 00410A18h ; &
008868DE: mov edx, eax
008868E0: lea ecx, var_78
008868E3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008868E8: push eax
008868E9: push 00441264h ; vbCrLf
008868EE: call 00410A18h ; &
008868F3: mov edx, eax
008868F5: lea ecx, var_7C
008868F8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008868FD: push eax
008868FE: push 00457F7Ch ; RAM: > 4096 MB
00886903: call 00410A18h ; &
00886908: mov edx, eax
0088690A: lea ecx, var_80
0088690D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886912: push eax
00886913: push 00441264h ; vbCrLf
00886918: call 00410A18h ; &
0088691D: mov edx, eax
0088691F: lea ecx, var_00000084
00886925: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088692A: push eax
0088692B: push 00457FA0h ; CPU: > 2600 MHz
00886930: call 00410A18h ; &
00886935: mov edx, eax
00886937: lea ecx, var_00000088
0088693D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886942: push eax
00886943: push 00441264h ; vbCrLf
00886948: call 00410A18h ; &
0088694D: mov edx, eax
0088694F: lea ecx, var_0000008C
00886955: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088695A: push eax
0088695B: push 00457FC4h ; Dlink: > 6 Mbit/s
00886960: call 00410A18h ; &
00886965: mov edx, eax
00886967: lea ecx, var_00000090
0088696D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886972: push eax
00886973: push 00441264h ; vbCrLf
00886978: call 00410A18h ; &
0088697D: mov edx, eax
0088697F: lea ecx, var_00000094
00886985: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088698A: push eax
0088698B: push 00457FECh ; Ulink: > 4 Mbit/s
00886990: call 00410A18h ; &
00886995: mov edx, eax
00886997: lea ecx, var_00000098
0088699D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008869A2: push eax
008869A3: push 00441264h ; vbCrLf
008869A8: call 00410A18h ; &
008869AD: mov edx, eax
008869AF: lea ecx, var_0000009C
008869B5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008869BA: push eax
008869BB: push 00458014h ; Use: 45-50
008869C0: call 00410A18h ; &
008869C5: mov edx, eax
008869C7: lea ecx, var_000000A0
008869CD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008869D2: push eax
008869D3: push 00441264h ; vbCrLf
008869D8: call 00410A18h ; &
008869DD: mov edx, eax
008869DF: lea ecx, var_000000A4
008869E5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008869EA: push eax
008869EB: push 00441264h ; vbCrLf
008869F0: call 00410A18h ; &
008869F5: mov edx, eax
008869F7: lea ecx, var_000000A8
008869FD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886A02: push eax
00886A03: push 00458030h ; Advantages:
00886A08: call 00410A18h ; &
00886A0D: mov edx, eax
00886A0F: lea ecx, var_000000AC
00886A15: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886A1A: push eax
00886A1B: push 00441264h ; vbCrLf
00886A20: call 00410A18h ; &
00886A25: mov edx, eax
00886A27: lea ecx, var_000000B0
00886A2D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886A32: push eax
00886A33: push 004580A0h ; 1. Protects Blackshades NET from being attacked by common TCP-based DDoS attacks.
00886A38: call 00410A18h ; &
00886A3D: mov edx, eax
00886A3F: lea ecx, var_000000B4
00886A45: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886A4A: push eax
00886A4B: push 00441264h ; vbCrLf
00886A50: call 00410A18h ; &
00886A55: mov edx, eax
00886A57: lea ecx, var_000000B8
00886A5D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886A62: push eax
00886A63: push 00458148h ; 2. Perfect choice for slow computers and/or slow internet connection speed.
00886A68: call 00410A18h ; &
00886A6D: mov edx, eax
00886A6F: lea ecx, var_000000BC
00886A75: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886A7A: push eax
00886A7B: push 00441264h ; vbCrLf
00886A80: call 00410A18h ; &
00886A85: mov edx, eax
00886A87: lea ecx, var_000000C0
00886A8D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886A92: push eax
00886A93: push 00441264h ; vbCrLf
00886A98: call 00410A18h ; &
00886A9D: mov edx, eax
00886A9F: lea ecx, var_000000C4
00886AA5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886AAA: push eax
00886AAB: push 004581E4h ; Disadvantages:
00886AB0: call 00410A18h ; &
00886AB5: mov edx, eax
00886AB7: lea ecx, var_000000C8
00886ABD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886AC2: push eax
00886AC3: push 00441264h ; vbCrLf
00886AC8: call 00410A18h ; &
00886ACD: mov edx, eax
00886ACF: lea ecx, var_000000CC
00886AD5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886ADA: push eax
00886ADB: push 00458208h ; 1. Slower when loading bots during startup
00886AE0: call 00410A18h ; &
00886AE5: mov edx, eax
00886AE7: lea ecx, var_000000D0
00886AED: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886AF2: push eax
00886AF3: push 00441264h ; vbCrLf
00886AF8: call 00410A18h ; &
00886AFD: mov edx, eax
00886AFF: lea ecx, var_000000D4
00886B05: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886B0A: push eax
00886B0B: push 00441264h ; vbCrLf
00886B10: call 00410A18h ; &
00886B15: mov edx, eax
00886B17: lea ecx, var_000000D8
00886B1D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886B22: push eax
00886B23: push 00458264h ; Note:
00886B28: call 00410A18h ; &
00886B2D: mov edx, eax
00886B2F: lea ecx, var_000000DC
00886B35: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886B3A: push eax
00886B3B: push 00441264h ; vbCrLf
00886B40: call 00410A18h ; &
00886B45: mov edx, eax
00886B47: lea ecx, var_000000E0
00886B4D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886B52: push eax
00886B53: push 00458274h ; If you wish to not use the safe socket, then simply set the value to 0.
00886B58: call 00410A18h ; &
00886B5D: mov edx, eax
00886B5F: lea ecx, var_000000E4
00886B65: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886B6A: push eax
00886B6B: push 00441264h ; vbCrLf
00886B70: call 00410A18h ; &
00886B75: mov edx, eax
00886B77: lea ecx, var_000000E8
00886B7D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886B82: push eax
00886B83: push 00458308h ; For extremely slow internet connection speed, you can set the value to s (not multi-threaded).
00886B88: call 00410A18h ; &
00886B8D: mov edx, eax
00886B8F: lea ecx, var_000000EC
00886B95: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886B9A: push eax
00886B9B: push 00441264h ; vbCrLf
00886BA0: call 00410A18h ; &
00886BA5: mov edx, eax
00886BA7: lea ecx, var_000000F0
00886BAD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886BB2: push eax
00886BB3: push 004583CCh ; That option will load one connection at time.
00886BB8: call 00410A18h ; &
00886BBD: mov edx, eax
00886BBF: lea ecx, var_000000F4
00886BC5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00886BCA: push eax
00886BCB: mov eax, var_000000FC
00886BD1: mov eax, [eax]
00886BD3: push var_000000FC
00886BD9: call [eax+000000A4h]
00886BDF: fclex 
00886BE1: mov var_00000100, eax
00886BE7: cmp var_00000100, 00000000h
00886BEE: jnl 886C13h
00886BF0: push 000000A4h
00886BF5: push 00440E08h
00886BFA: push var_000000FC
00886C00: push var_00000100
00886C06: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00886C0B: mov var_0000010C, eax
00886C11: jmp 886C1Ah
00886C13: and var_0000010C, 00000000h
00886C1A: lea eax, var_0000008C
00886C20: push eax
00886C21: lea eax, var_00000088
00886C27: push eax
00886C28: lea eax, var_00000084
00886C2E: push eax
00886C2F: lea eax, var_80
00886C32: push eax
00886C33: lea eax, var_7C
00886C36: push eax
00886C37: lea eax, var_78
00886C3A: push eax
00886C3B: lea eax, var_74
00886C3E: push eax
00886C3F: lea eax, var_70
00886C42: push eax
00886C43: lea eax, var_6C
00886C46: push eax
00886C47: lea eax, var_68
00886C4A: push eax
00886C4B: lea eax, var_64
00886C4E: push eax
00886C4F: lea eax, var_60
00886C52: push eax
00886C53: lea eax, var_5C
00886C56: push eax
00886C57: lea eax, var_58
00886C5A: push eax
00886C5B: lea eax, var_54
00886C5E: push eax
00886C5F: lea eax, var_50
00886C62: push eax
00886C63: lea eax, var_4C
00886C66: push eax
00886C67: lea eax, var_48
00886C6A: push eax
00886C6B: lea eax, var_44
00886C6E: push eax
00886C6F: lea eax, var_40
00886C72: push eax
00886C73: lea eax, var_3C
00886C76: push eax
00886C77: lea eax, var_38
00886C7A: push eax
00886C7B: lea eax, var_34
00886C7E: push eax
00886C7F: lea eax, var_30
00886C82: push eax
00886C83: lea eax, var_2C
00886C86: push eax
00886C87: lea eax, var_28
00886C8A: push eax
00886C8B: lea eax, var_24
00886C8E: push eax
00886C8F: lea eax, var_20
00886C92: push eax
00886C93: lea eax, var_1C
00886C96: push eax
00886C97: lea eax, var_18
00886C9A: push eax
00886C9B: lea eax, var_000000F4
00886CA1: push eax
00886CA2: lea eax, var_000000F0
00886CA8: push eax
00886CA9: lea eax, var_000000EC
00886CAF: push eax
00886CB0: lea eax, var_000000E8
00886CB6: push eax
00886CB7: lea eax, var_000000E4
00886CBD: push eax
00886CBE: lea eax, var_000000E0
00886CC4: push eax
00886CC5: lea eax, var_000000DC
00886CCB: push eax
00886CCC: lea eax, var_000000D8
00886CD2: push eax
00886CD3: lea eax, var_000000D4
00886CD9: push eax
00886CDA: lea eax, var_000000D0
00886CE0: push eax
00886CE1: lea eax, var_000000CC
00886CE7: push eax
00886CE8: lea eax, var_000000C8
00886CEE: push eax
00886CEF: lea eax, var_000000C4
00886CF5: push eax
00886CF6: lea eax, var_000000C0
00886CFC: push eax
00886CFD: lea eax, var_000000BC
00886D03: push eax
00886D04: lea eax, var_000000B8
00886D0A: push eax
00886D0B: lea eax, var_000000B4
00886D11: push eax
00886D12: lea eax, var_000000B0
00886D18: push eax
00886D19: lea eax, var_000000AC
00886D1F: push eax
00886D20: lea eax, var_000000A8
00886D26: push eax
00886D27: lea eax, var_000000A4
00886D2D: push eax
00886D2E: lea eax, var_000000A0
00886D34: push eax
00886D35: lea eax, var_0000009C
00886D3B: push eax
00886D3C: lea eax, var_00000098
00886D42: push eax
00886D43: lea eax, var_00000094
00886D49: push eax
00886D4A: lea eax, var_00000090
00886D50: push eax
00886D51: push 00000038h
00886D53: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00886D58: add esp, 000000E4h
00886D5E: lea ecx, var_000000F8
00886D64: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00886D69: mov var_04, 00000000h
00886D70: push 00886ECBh
00886D75: jmp 00886ECAh
00886D7A: lea eax, var_000000F4
00886D80: push eax
00886D81: lea eax, var_000000F0
00886D87: push eax
00886D88: lea eax, var_000000EC
00886D8E: push eax
00886D8F: lea eax, var_000000E8
00886D95: push eax
00886D96: lea eax, var_000000E4
00886D9C: push eax
00886D9D: lea eax, var_000000E0
00886DA3: push eax
00886DA4: lea eax, var_000000DC
00886DAA: push eax
00886DAB: lea eax, var_000000D8
00886DB1: push eax
00886DB2: lea eax, var_000000D4
00886DB8: push eax
00886DB9: lea eax, var_000000D0
00886DBF: push eax
00886DC0: lea eax, var_000000CC
00886DC6: push eax
00886DC7: lea eax, var_000000C8
00886DCD: push eax
00886DCE: lea eax, var_000000C4
00886DD4: push eax
00886DD5: lea eax, var_000000C0
00886DDB: push eax
00886DDC: lea eax, var_000000BC
00886DE2: push eax
00886DE3: lea eax, var_000000B8
00886DE9: push eax
00886DEA: lea eax, var_000000B4
00886DF0: push eax
00886DF1: lea eax, var_000000B0
00886DF7: push eax
00886DF8: lea eax, var_000000AC
00886DFE: push eax
00886DFF: lea eax, var_000000A8
00886E05: push eax
00886E06: lea eax, var_000000A4
00886E0C: push eax
00886E0D: lea eax, var_000000A0
00886E13: push eax
00886E14: lea eax, var_0000009C
00886E1A: push eax
00886E1B: lea eax, var_00000098
00886E21: push eax
00886E22: lea eax, var_00000094
00886E28: push eax
00886E29: lea eax, var_00000090
00886E2F: push eax
00886E30: lea eax, var_0000008C
00886E36: push eax
00886E37: lea eax, var_00000088
00886E3D: push eax
00886E3E: lea eax, var_00000084
00886E44: push eax
00886E45: lea eax, var_80
00886E48: push eax
00886E49: lea eax, var_7C
00886E4C: push eax
00886E4D: lea eax, var_78
00886E50: push eax
00886E51: lea eax, var_74
00886E54: push eax
00886E55: lea eax, var_70
00886E58: push eax
00886E59: lea eax, var_6C
00886E5C: push eax
00886E5D: lea eax, var_68
00886E60: push eax
00886E61: lea eax, var_64
00886E64: push eax
00886E65: lea eax, var_60
00886E68: push eax
00886E69: lea eax, var_5C
00886E6C: push eax
00886E6D: lea eax, var_58
00886E70: push eax
00886E71: lea eax, var_54
00886E74: push eax
00886E75: lea eax, var_50
00886E78: push eax
00886E79: lea eax, var_4C
00886E7C: push eax
00886E7D: lea eax, var_48
00886E80: push eax
00886E81: lea eax, var_44
00886E84: push eax
00886E85: lea eax, var_40
00886E88: push eax
00886E89: lea eax, var_3C
00886E8C: push eax
00886E8D: lea eax, var_38
00886E90: push eax
00886E91: lea eax, var_34
00886E94: push eax
00886E95: lea eax, var_30
00886E98: push eax
00886E99: lea eax, var_2C
00886E9C: push eax
00886E9D: lea eax, var_28
00886EA0: push eax
00886EA1: lea eax, var_24
00886EA4: push eax
00886EA5: lea eax, var_20
00886EA8: push eax
00886EA9: lea eax, var_1C
00886EAC: push eax
00886EAD: lea eax, var_18
00886EB0: push eax
00886EB1: push 00000038h
00886EB3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00886EB8: add esp, 000000E4h
00886EBE: lea ecx, var_000000F8
00886EC4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00886EC9: ret 
End Sub

Private sub Form__886EEA
00886EEA: push ebp
00886EEB: mov ebp, esp
00886EED: sub esp, 00000018h
00886EF0: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00886EF5: mov eax, fs:[00h]
00886EFB: push eax
00886EFC: mov fs:[00000000h], esp
00886F03: push 0000006Ch
00886F05: pop eax
00886F06: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00886F0B: push ebx
00886F0C: push esi
00886F0D: push edi
00886F0E: mov var_18, esp
00886F11: mov var_14, 0040DCE0h
00886F18: mov eax, [ebp+08h]
00886F1B: and eax, 00000001h
00886F1E: mov var_10, eax
00886F21: mov eax, [ebp+08h]
00886F24: and al, FEh
00886F26: mov [ebp+08h], eax
00886F29: mov var_0C, 00000000h
00886F30: mov eax, [ebp+08h]
00886F33: mov eax, [eax]
00886F35: push [ebp+08h]
00886F38: call [eax+04h]
00886F3B: mov var_04, 00000001h
00886F42: mov var_04, 00000002h
00886F49: push FFFFFFFFh
00886F4B: call 00410A60h ; On Error ...
00886F50: mov var_04, 00000003h
00886F57: lea eax, var_58
00886F5A: push eax
00886F5B: mov eax, [ebp+08h]
00886F5E: mov eax, [eax]
00886F60: push [ebp+08h]
00886F63: call [eax+00000080h]
00886F69: fclex 
00886F6B: mov var_60, eax
00886F6E: cmp var_60, 00000000h
00886F72: jnl 886F91h
00886F74: push 00000080h
00886F79: push 00442F88h
00886F7E: push [ebp+08h]
00886F81: push var_60
00886F84: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00886F89: mov var_00000084, eax
00886F8F: jmp 886F98h
00886F91: and var_00000084, 00000000h
00886F98: mov eax, [ebp+08h]
00886F9B: mov eax, [eax]
00886F9D: push [ebp+08h]
00886FA0: call [eax+000002FCh]
00886FA6: push eax
00886FA7: lea eax, var_24
00886FAA: push eax
00886FAB: call 00410A84h ; Set (object)
00886FB0: mov var_68, eax
00886FB3: lea eax, var_5C
00886FB6: push eax
00886FB7: mov eax, [ebp+08h]
00886FBA: mov eax, [eax]
00886FBC: push [ebp+08h]
00886FBF: call [eax+00000088h]
00886FC5: fclex 
00886FC7: mov var_64, eax
00886FCA: cmp var_64, 00000000h
00886FCE: jnl 886FEDh
00886FD0: push 00000088h
00886FD5: push 00442F88h
00886FDA: push [ebp+08h]
00886FDD: push var_64
00886FE0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00886FE5: mov var_00000088, eax
00886FEB: jmp 886FF4h
00886FED: and var_00000088, 00000000h
00886FF4: fld real4 ptr var_5C
00886FF7: fstp real4 ptr var_4C
00886FFA: mov var_54, 00000004h
00887001: fld real4 ptr var_58
00887004: fsub real4 ptr [00402BA4h]
0088700A: fstp real4 ptr var_3C
0088700D: fstsw ax
0088700F: test al, 0Dh
00887011: jnz 008870DFh
00887017: mov var_44, 00000004h
0088701E: and var_2C, 00000000h
00887022: mov var_34, 00000002h
00887029: push 00000010h
0088702B: pop eax
0088702C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887031: lea esi, var_54
00887034: mov edi, esp
00887036: movsd 
00887037: movsd 
00887038: movsd 
00887039: movsd 
0088703A: push 00000010h
0088703C: pop eax
0088703D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887042: lea esi, var_44
00887045: mov edi, esp
00887047: movsd 
00887048: movsd 
00887049: movsd 
0088704A: movsd 
0088704B: push 00000010h
0088704D: pop eax
0088704E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887053: lea esi, var_34
00887056: mov edi, esp
00887058: movsd 
00887059: movsd 
0088705A: movsd 
0088705B: movsd 
0088705C: fldz 
0088705E: push ecx
0088705F: fstp real4 ptr [esp]
00887062: mov eax, var_68
00887065: mov eax, [eax]
00887067: push var_68
0088706A: call [eax+00000224h]
00887070: fclex 
00887072: mov var_6C, eax
00887075: cmp var_6C, 00000000h
00887079: jnl 887098h
0088707B: push 00000224h
00887080: push 00440E08h
00887085: push var_68
00887088: push var_6C
0088708B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00887090: mov var_0000008C, eax
00887096: jmp 88709Fh
00887098: and var_0000008C, 00000000h
0088709F: lea ecx, var_24
008870A2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008870A7: mov var_10, 00000000h
008870AE: wait 
008870AF: push 008870C0h
008870B4: jmp 8870BFh
008870B6: lea ecx, var_24
008870B9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008870BE: ret 
End Sub

