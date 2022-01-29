VERSION 5.00
Begin VB.Form frmChatConvo
  Caption = "%Username - Conversation"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmChatConvo.frx":0
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 5895
  ClientHeight = 6750
  BeginProperty Font
    Name = "Arial"
    Size = 8,25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin RichTextLib.RichTextBox txtChat
    Left = 0
    Top = 6240
    Width = 5895
    Height = 495
    TabIndex = 0
  End
  Begin RichTextLib.RichTextBox txtMain
    Left = 0
    Top = 0
    Width = 5895
    Height = 6255
    TabIndex = 1
  End
  Begin VB.Line lnChat
    X1 = 0
    Y1 = 6240
    X2 = 5880
    Y2 = 6240
  End
  Begin VB.Image imgBack
    Picture = "frmChatConvo.frx":8E79
    Left = 0
    Top = 65176
    Width = 5850
    Height = 6765
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin VB.Menu mnuConvoMenu
    Visible = 0   'False
    Caption = "Convo"
    Begin VB.Menu mnuConvo
      Index = 0
      Caption = "Save log"
    End
    Begin VB.Menu mnuConvo
      Index = 1
      Caption = "-"
    End
    Begin VB.Menu mnuConvo
      Index = 2
      Caption = "Clear"
    End
  End
End

Attribute VB_Name = "frmChatConvo"


Private sub txtChat__85EEEA
0085EEEA: push ebp
0085EEEB: mov ebp, esp
0085EEED: sub esp, 0000000Ch
0085EEF0: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085EEF5: mov eax, fs:[00h]
0085EEFB: push eax
0085EEFC: mov fs:[00000000h], esp
0085EF03: mov eax, 00000098h
0085EF08: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085EF0D: push ebx
0085EF0E: push esi
0085EF0F: push edi
0085EF10: mov var_0C, esp
0085EF13: mov var_08, 0040CDD0h
0085EF1A: mov eax, [ebp+08h]
0085EF1D: and eax, 00000001h
0085EF20: mov var_04, eax
0085EF23: mov eax, [ebp+08h]
0085EF26: and al, FEh
0085EF28: mov [ebp+08h], eax
0085EF2B: mov eax, [ebp+08h]
0085EF2E: mov eax, [eax]
0085EF30: push [ebp+08h]
0085EF33: call [eax+04h]
0085EF36: mov eax, [ebp+0Ch]
0085EF39: cmp word ptr [eax], 000Dh
0085EF3D: jnz 0085F49Ah
0085EF43: push 00000000h
0085EF45: push FFFFFDFBh
0085EF4A: mov eax, [ebp+08h]
0085EF4D: mov eax, [eax]
0085EF4F: push [ebp+08h]
0085EF52: call [eax+0000030Ch]
0085EF58: push eax
0085EF59: lea eax, var_20
0085EF5C: push eax
0085EF5D: call 00410A84h ; Set (object)
0085EF62: push eax
0085EF63: lea eax, var_38
0085EF66: push eax
0085EF67: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085EF6C: add esp, 00000010h
0085EF6F: push eax
0085EF70: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085EF75: mov edx, eax
0085EF77: lea ecx, var_18
0085EF7A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085EF7F: mov esi, eax
0085EF81: push [008F2048h]
0085EF87: push 00000001h
0085EF89: call 00410886h ; UBound
0085EF8E: push eax
0085EF8F: push [008F2048h]
0085EF95: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085EF9A: mov ecx, eax
0085EF9C: mov edx, esi
0085EF9E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085EFA3: lea ecx, var_18
0085EFA6: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085EFAB: lea ecx, var_20
0085EFAE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085EFB3: lea ecx, var_38
0085EFB6: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085EFBB: push 00000001h
0085EFBD: push [008F2048h]
0085EFC3: push 00000001h
0085EFC5: call 00410886h ; UBound
0085EFCA: add eax, 00000001h
0085EFCD: jo 0085F5FEh
0085EFD3: push eax
0085EFD4: push 00000001h
0085EFD6: push 00000008h
0085EFD8: push 008F2048h
0085EFDD: push 00000004h
0085EFDF: push 00000180h
0085EFE4: call 0041078Ah ; ReDim Preserve
0085EFE9: add esp, 0000001Ch
0085EFEC: push 00000000h
0085EFEE: push FFFFFDFBh
0085EFF3: mov eax, [ebp+08h]
0085EFF6: mov eax, [eax]
0085EFF8: push [ebp+08h]
0085EFFB: call [eax+0000030Ch]
0085F001: push eax
0085F002: lea eax, var_20
0085F005: push eax
0085F006: call 00410A84h ; Set (object)
0085F00B: push eax
0085F00C: lea eax, var_38
0085F00F: push eax
0085F010: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085F015: add esp, 00000010h
0085F018: push 00000000h
0085F01A: push FFFFFFFFh
0085F01C: push 00000001h
0085F01E: push 00000000h
0085F020: push 00441264h ; vbCrLf
0085F025: lea eax, var_38
0085F028: push eax
0085F029: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085F02E: mov edx, eax
0085F030: lea ecx, var_18
0085F033: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085F038: push eax
0085F039: call 00410988h ; Replace(arg_1, arg_2, arg_3, arg_4, arg_5, arg_6)
0085F03E: mov var_40, eax
0085F041: mov var_48, 00000008h
0085F048: push 00000010h
0085F04A: pop eax
0085F04B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085F050: lea esi, var_48
0085F053: mov edi, esp
0085F055: movsd 
0085F056: movsd 
0085F057: movsd 
0085F058: movsd 
0085F059: push FFFFFDFBh
0085F05E: mov eax, [ebp+08h]
0085F061: mov eax, [eax]
0085F063: push [ebp+08h]
0085F066: call [eax+0000030Ch]
0085F06C: push eax
0085F06D: lea eax, var_24
0085F070: push eax
0085F071: call 00410A84h ; Set (object)
0085F076: push eax
0085F077: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0085F07C: lea ecx, var_18
0085F07F: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085F084: lea eax, var_24
0085F087: push eax
0085F088: lea eax, var_20
0085F08B: push eax
0085F08C: push 00000002h
0085F08E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085F093: add esp, 0000000Ch
0085F096: lea eax, var_48
0085F099: push eax
0085F09A: lea eax, var_38
0085F09D: push eax
0085F09E: push 00000002h
0085F0A0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085F0A5: add esp, 0000000Ch
0085F0A8: push 00000000h
0085F0AA: push FFFFFDFBh
0085F0AF: mov eax, [ebp+08h]
0085F0B2: mov eax, [eax]
0085F0B4: push [ebp+08h]
0085F0B7: call [eax+0000030Ch]
0085F0BD: push eax
0085F0BE: lea eax, var_20
0085F0C1: push eax
0085F0C2: call 00410A84h ; Set (object)
0085F0C7: push eax
0085F0C8: lea eax, var_38
0085F0CB: push eax
0085F0CC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085F0D1: add esp, 00000010h
0085F0D4: push eax
0085F0D5: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085F0DA: mov edx, eax
0085F0DC: lea ecx, var_18
0085F0DF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085F0E4: push eax
0085F0E5: call 0041098Eh ; Len(arg_1)
0085F0EA: xor ecx, ecx
0085F0EC: cmp eax, 00000001h
0085F0EF: setnle cl
0085F0F2: neg ecx
0085F0F4: mov var_80, cx
0085F0F8: lea ecx, var_18
0085F0FB: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085F100: lea ecx, var_20
0085F103: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085F108: lea ecx, var_38
0085F10B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085F110: movsx eax, word ptr var_80
0085F114: test eax, eax
0085F116: jz 0085F49Ah
0085F11C: push 00000000h
0085F11E: push FFFFFDFBh
0085F123: mov eax, [ebp+08h]
0085F126: mov eax, [eax]
0085F128: push [ebp+08h]
0085F12B: call [eax+0000030Ch]
0085F131: push eax
0085F132: lea eax, var_20
0085F135: push eax
0085F136: call 00410A84h ; Set (object)
0085F13B: push eax
0085F13C: lea eax, var_38
0085F13F: push eax
0085F140: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085F145: add esp, 00000010h
0085F148: mov eax, [ebp+08h]
0085F14B: mov eax, [eax]
0085F14D: push [ebp+08h]
0085F150: call [eax+00000310h]
0085F156: push eax
0085F157: lea eax, var_24
0085F15A: push eax
0085F15B: call 00410A84h ; Set (object)
0085F160: lea eax, var_24
0085F163: push eax
0085F164: push 00449920h
0085F169: lea eax, var_38
0085F16C: push eax
0085F16D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085F172: mov edx, eax
0085F174: lea ecx, var_18
0085F177: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085F17C: push eax
0085F17D: call 00410A18h ; &
0085F182: mov edx, eax
0085F184: lea ecx, var_1C
0085F187: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085F18C: push eax
0085F18D: push [008F2044h]
0085F193: call 007D19F1h
0085F198: lea eax, var_1C
0085F19B: push eax
0085F19C: lea eax, var_18
0085F19F: push eax
0085F1A0: push 00000002h
0085F1A2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0085F1A7: add esp, 0000000Ch
0085F1AA: lea eax, var_24
0085F1AD: push eax
0085F1AE: lea eax, var_20
0085F1B1: push eax
0085F1B2: push 00000002h
0085F1B4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085F1B9: add esp, 0000000Ch
0085F1BC: lea ecx, var_38
0085F1BF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085F1C4: cmp [008F2AC8h], 00000000h
0085F1CB: jnz 85F1E8h
0085F1CD: push 008F2AC8h
0085F1D2: push 0041D3CCh
0085F1D7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0085F1DC: mov var_00000098, 008F2AC8h
0085F1E6: jmp 85F1F2h
0085F1E8: mov var_00000098, 008F2AC8h
0085F1F2: mov eax, var_00000098
0085F1F8: mov eax, [eax]
0085F1FA: mov ecx, var_00000098
0085F200: mov ecx, [ecx]
0085F202: mov ecx, [ecx]
0085F204: push eax
0085F205: call [ecx+00000318h]
0085F20B: push eax
0085F20C: lea eax, var_28
0085F20F: push eax
0085F210: call 00410A84h ; Set (object)
0085F215: push 00000000h
0085F217: push 00000002h
0085F219: push 00000001h
0085F21B: push 00000000h
0085F21D: lea eax, var_5C
0085F220: push eax
0085F221: push 00000010h
0085F223: push 00000880h
0085F228: call 00410946h ; ReDim
0085F22D: add esp, 0000001Ch
0085F230: lea eax, var_18
0085F233: push eax
0085F234: mov eax, [ebp+08h]
0085F237: mov eax, [eax]
0085F239: push [ebp+08h]
0085F23C: call [eax+000001C0h]
0085F242: fclex 
0085F244: mov var_80, eax
0085F247: cmp var_80, 00000000h
0085F24B: jnl 85F26Ah
0085F24D: push 000001C0h
0085F252: push 0044E17Ch
0085F257: push [ebp+08h]
0085F25A: push var_80
0085F25D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085F262: mov var_0000009C, eax
0085F268: jmp 85F271h
0085F26A: and var_0000009C, 00000000h
0085F271: mov eax, var_18
0085F274: mov var_00000090, eax
0085F27A: and var_18, 00000000h
0085F27E: mov eax, var_00000090
0085F284: mov var_40, eax
0085F287: mov var_48, 00000008h
0085F28E: lea esi, var_48
0085F291: push 00000000h
0085F293: push var_5C
0085F296: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085F29B: mov ecx, eax
0085F29D: mov edx, esi
0085F29F: call 00410940h ; msvbvm60.dll.__vbaVarZero
0085F2A4: mov var_64, 008F2044h
0085F2AB: mov var_6C, 00004008h
0085F2B2: lea esi, var_6C
0085F2B5: push 00000001h
0085F2B7: push var_5C
0085F2BA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085F2BF: mov ecx, eax
0085F2C1: mov edx, esi
0085F2C3: call 00410940h ; msvbvm60.dll.__vbaVarZero
0085F2C8: push 00000000h
0085F2CA: push FFFFFDFBh
0085F2CF: mov eax, [ebp+08h]
0085F2D2: mov eax, [eax]
0085F2D4: push [ebp+08h]
0085F2D7: call [eax+0000030Ch]
0085F2DD: push eax
0085F2DE: lea eax, var_20
0085F2E1: push eax
0085F2E2: call 00410A84h ; Set (object)
0085F2E7: push eax
0085F2E8: lea eax, var_38
0085F2EB: push eax
0085F2EC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085F2F1: add esp, 00000010h
0085F2F4: push eax
0085F2F5: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085F2FA: mov var_50, eax
0085F2FD: mov var_58, 00000008h
0085F304: lea esi, var_58
0085F307: push 00000002h
0085F309: push var_5C
0085F30C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0085F311: mov ecx, eax
0085F313: mov edx, esi
0085F315: call 00410940h ; msvbvm60.dll.__vbaVarZero
0085F31A: mov eax, var_28
0085F31D: mov var_00000094, eax
0085F323: and var_28, 00000000h
0085F327: push var_00000094
0085F32D: lea eax, var_24
0085F330: push eax
0085F331: call 00410A84h ; Set (object)
0085F336: lea eax, var_5C
0085F339: push eax
0085F33A: push FFFFFFFFh
0085F33C: push 00000003h
0085F33E: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0085F343: mov edx, eax
0085F345: lea ecx, var_1C
0085F348: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085F34D: push eax
0085F34E: lea eax, var_24
0085F351: push eax
0085F352: push FFFFFFFFh
0085F354: call 007A00C2h
0085F359: lea eax, var_5C
0085F35C: push eax
0085F35D: push 00000000h
0085F35F: call 00410934h ; Erase
0085F364: lea ecx, var_1C
0085F367: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085F36C: lea eax, var_28
0085F36F: push eax
0085F370: lea eax, var_24
0085F373: push eax
0085F374: lea eax, var_20
0085F377: push eax
0085F378: push 00000003h
0085F37A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085F37F: add esp, 00000010h
0085F382: lea ecx, var_38
0085F385: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085F38A: lea eax, var_18
0085F38D: push eax
0085F38E: mov eax, [ebp+08h]
0085F391: mov eax, [eax]
0085F393: push [ebp+08h]
0085F396: call [eax+000001C0h]
0085F39C: fclex 
0085F39E: mov var_80, eax
0085F3A1: cmp var_80, 00000000h
0085F3A5: jnl 85F3C4h
0085F3A7: push 000001C0h
0085F3AC: push 0044E17Ch
0085F3B1: push [ebp+08h]
0085F3B4: push var_80
0085F3B7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085F3BC: mov var_000000A0, eax
0085F3C2: jmp 85F3CBh
0085F3C4: and var_000000A0, 00000000h
0085F3CB: push var_18
0085F3CE: call 007CE128h
0085F3D3: push eax
0085F3D4: call 007CE04Fh
0085F3D9: lea ecx, var_18
0085F3DC: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085F3E1: push [008F2048h]
0085F3E7: push 00000001h
0085F3E9: call 00410886h ; UBound
0085F3EE: mov ecx, eax
0085F3F0: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0085F3F5: mov [204Ch], ax
0085F3F9: pop [eax]
0085F3FB: push 00000000h
0085F3FD: push FFFFFDFBh
0085F402: mov eax, [ebp+08h]
0085F405: mov eax, [eax]
0085F407: push [ebp+08h]
0085F40A: call [eax+00000310h]
0085F410: push eax
0085F411: lea eax, var_20
0085F414: push eax
0085F415: call 00410A84h ; Set (object)
0085F41A: push eax
0085F41B: lea eax, var_38
0085F41E: push eax
0085F41F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085F424: add esp, 00000010h
0085F427: push eax
0085F428: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085F42D: mov edx, eax
0085F42F: lea ecx, var_18
0085F432: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085F437: push eax
0085F438: call 0041098Eh ; Len(arg_1)
0085F43D: mov var_64, eax
0085F440: mov var_6C, 00000003h
0085F447: push 00000010h
0085F449: pop eax
0085F44A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085F44F: lea esi, var_6C
0085F452: mov edi, esp
0085F454: movsd 
0085F455: movsd 
0085F456: movsd 
0085F457: movsd 
0085F458: push 00000005h
0085F45A: mov eax, [ebp+08h]
0085F45D: mov eax, [eax]
0085F45F: push [ebp+08h]
0085F462: call [eax+00000310h]
0085F468: push eax
0085F469: lea eax, var_24
0085F46C: push eax
0085F46D: call 00410A84h ; Set (object)
0085F472: push eax
0085F473: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0085F478: lea ecx, var_18
0085F47B: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085F480: lea eax, var_24
0085F483: push eax
0085F484: lea eax, var_20
0085F487: push eax
0085F488: push 00000002h
0085F48A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085F48F: add esp, 0000000Ch
0085F492: lea ecx, var_38
0085F495: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085F49A: mov eax, [ebp+0Ch]
0085F49D: cmp word ptr [eax], 001Bh
0085F4A1: jnz 0085F586h
0085F4A7: cmp [008F529Ch], 00000000h
0085F4AE: jnz 85F4CBh
0085F4B0: push 008F529Ch
0085F4B5: push 00440F2Ch
0085F4BA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0085F4BF: mov var_000000A4, 008F529Ch
0085F4C9: jmp 85F4D5h
0085F4CB: mov var_000000A4, 008F529Ch
0085F4D5: mov eax, var_000000A4
0085F4DB: mov eax, [eax]
0085F4DD: mov var_80, eax
0085F4E0: push [ebp+08h]
0085F4E3: lea eax, var_20
0085F4E6: push eax
0085F4E7: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0085F4EC: push eax
0085F4ED: mov eax, var_80
0085F4F0: mov eax, [eax]
0085F4F2: push var_80
0085F4F5: call [eax+10h]
0085F4F8: fclex 
0085F4FA: mov var_00000084, eax
0085F500: cmp var_00000084, 00000000h
0085F507: jnl 85F526h
0085F509: push 00000010h
0085F50B: push 00440F1Ch
0085F510: push var_80
0085F513: push var_00000084
0085F519: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085F51E: mov var_000000A8, eax
0085F524: jmp 85F52Dh
0085F526: and var_000000A8, 00000000h
0085F52D: lea ecx, var_20
0085F530: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085F535: lea eax, var_18
0085F538: push eax
0085F539: mov eax, [ebp+08h]
0085F53C: mov eax, [eax]
0085F53E: push [ebp+08h]
0085F541: call [eax+000001C0h]
0085F547: fclex 
0085F549: mov var_80, eax
0085F54C: cmp var_80, 00000000h
0085F550: jnl 85F56Fh
0085F552: push 000001C0h
0085F557: push 0044E17Ch
0085F55C: push [ebp+08h]
0085F55F: push var_80
0085F562: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085F567: mov var_000000AC, eax
0085F56D: jmp 85F576h
0085F56F: and var_000000AC, 00000000h
0085F576: push var_18
0085F579: call 007CDB9Ah
0085F57E: lea ecx, var_18
0085F581: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085F586: mov var_04, 00000000h
0085F58D: push 0085F5DFh
0085F592: jmp 85F5DEh
0085F594: lea eax, var_1C
0085F597: push eax
0085F598: lea eax, var_18
0085F59B: push eax
0085F59C: push 00000002h
0085F59E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0085F5A3: add esp, 0000000Ch
0085F5A6: lea eax, var_28
0085F5A9: push eax
0085F5AA: lea eax, var_24
0085F5AD: push eax
0085F5AE: lea eax, var_20
0085F5B1: push eax
0085F5B2: push 00000003h
0085F5B4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085F5B9: add esp, 00000010h
0085F5BC: lea eax, var_58
0085F5BF: push eax
0085F5C0: lea eax, var_48
0085F5C3: push eax
0085F5C4: lea eax, var_38
0085F5C7: push eax
0085F5C8: push 00000003h
0085F5CA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085F5CF: add esp, 00000010h
0085F5D2: lea eax, var_5C
0085F5D5: push eax
0085F5D6: push 00000000h
0085F5D8: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0085F5DD: ret 
End Sub

Private sub txtChat__85F603
0085F603: push ebp
0085F604: mov ebp, esp
0085F606: sub esp, 0000000Ch
0085F609: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085F60E: mov eax, fs:[00h]
0085F614: push eax
0085F615: mov fs:[00000000h], esp
0085F61C: push 0000002Ch
0085F61E: pop eax
0085F61F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085F624: push ebx
0085F625: push esi
0085F626: push edi
0085F627: mov var_0C, esp
0085F62A: mov var_08, 0040CDE0h
0085F631: mov eax, [ebp+08h]
0085F634: and eax, 00000001h
0085F637: mov var_04, eax
0085F63A: mov eax, [ebp+08h]
0085F63D: and al, FEh
0085F63F: mov [ebp+08h], eax
0085F642: mov eax, [ebp+08h]
0085F645: mov eax, [eax]
0085F647: push [ebp+08h]
0085F64A: call [eax+04h]
0085F64D: mov eax, [ebp+0Ch]
0085F650: cmp word ptr [eax], 000Dh
0085F654: jnz 85F69Dh
0085F656: and var_20, 00000000h
0085F65A: mov var_28, 00000008h
0085F661: push 00000010h
0085F663: pop eax
0085F664: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085F669: lea esi, var_28
0085F66C: mov edi, esp
0085F66E: movsd 
0085F66F: movsd 
0085F670: movsd 
0085F671: movsd 
0085F672: push FFFFFDFBh
0085F677: mov eax, [ebp+08h]
0085F67A: mov eax, [eax]
0085F67C: push [ebp+08h]
0085F67F: call [eax+0000030Ch]
0085F685: push eax
0085F686: lea eax, var_18
0085F689: push eax
0085F68A: call 00410A84h ; Set (object)
0085F68F: push eax
0085F690: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0085F695: lea ecx, var_18
0085F698: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085F69D: mov var_04, 00000000h
0085F6A4: push 0085F6B5h
0085F6A9: jmp 85F6B4h
0085F6AB: lea ecx, var_18
0085F6AE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085F6B3: ret 
End Sub

Private sub Form__85E9D5
0085E9D5: push ebp
0085E9D6: mov ebp, esp
0085E9D8: sub esp, 0000000Ch
0085E9DB: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085E9E0: mov eax, fs:[00h]
0085E9E6: push eax
0085E9E7: mov fs:[00000000h], esp
0085E9EE: push 0000001Ch
0085E9F0: pop eax
0085E9F1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085E9F6: push ebx
0085E9F7: push esi
0085E9F8: push edi
0085E9F9: mov var_0C, esp
0085E9FC: mov var_08, 0040CDB0h
0085EA03: mov eax, [ebp+08h]
0085EA06: and eax, 00000001h
0085EA09: mov var_04, eax
0085EA0C: mov eax, [ebp+08h]
0085EA0F: and al, FEh
0085EA11: mov [ebp+08h], eax
0085EA14: mov eax, [ebp+08h]
0085EA17: mov eax, [eax]
0085EA19: push [ebp+08h]
0085EA1C: call [eax+04h]
0085EA1F: push 00000000h
0085EA21: push FFFFFDFDh
0085EA26: mov eax, [ebp+08h]
0085EA29: mov eax, [eax]
0085EA2B: push [ebp+08h]
0085EA2E: call [eax+00000310h]
0085EA34: push eax
0085EA35: lea eax, var_18
0085EA38: push eax
0085EA39: call 00410A84h ; Set (object)
0085EA3E: push eax
0085EA3F: lea eax, var_28
0085EA42: push eax
0085EA43: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085EA48: add esp, 00000010h
0085EA4B: push 00000020h
0085EA4D: push FFFFFFECh
0085EA4F: lea eax, var_28
0085EA52: push eax
0085EA53: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0085EA58: push eax
0085EA59: call 00440104h
0085EA5E: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
0085EA63: lea ecx, var_18
0085EA66: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085EA6B: lea ecx, var_28
0085EA6E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085EA73: push 00000000h
0085EA75: push FFFFFDFDh
0085EA7A: mov eax, [ebp+08h]
0085EA7D: mov eax, [eax]
0085EA7F: push [ebp+08h]
0085EA82: call [eax+0000030Ch]
0085EA88: push eax
0085EA89: lea eax, var_18
0085EA8C: push eax
0085EA8D: call 00410A84h ; Set (object)
0085EA92: push eax
0085EA93: lea eax, var_28
0085EA96: push eax
0085EA97: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085EA9C: add esp, 00000010h
0085EA9F: push 00000020h
0085EAA1: push FFFFFFECh
0085EAA3: lea eax, var_28
0085EAA6: push eax
0085EAA7: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0085EAAC: push eax
0085EAAD: call 00440104h
0085EAB2: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
0085EAB7: lea ecx, var_18
0085EABA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085EABF: lea ecx, var_28
0085EAC2: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085EAC7: mov var_04, 00000000h
0085EACE: push 0085EAE7h
0085EAD3: jmp 85EAE6h
0085EAD5: lea ecx, var_18
0085EAD8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085EADD: lea ecx, var_28
0085EAE0: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085EAE5: ret 
End Sub

Private sub Form__85F96F
0085F96F: push ebp
0085F970: mov ebp, esp
0085F972: sub esp, 00000018h
0085F975: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085F97A: mov eax, fs:[00h]
0085F980: push eax
0085F981: mov fs:[00000000h], esp
0085F988: mov eax, 00000120h
0085F98D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085F992: push ebx
0085F993: push esi
0085F994: push edi
0085F995: mov var_18, esp
0085F998: mov var_14, 0040CE10h
0085F99F: mov eax, [ebp+08h]
0085F9A2: and eax, 00000001h
0085F9A5: mov var_10, eax
0085F9A8: mov eax, [ebp+08h]
0085F9AB: and al, FEh
0085F9AD: mov [ebp+08h], eax
0085F9B0: mov var_0C, 00000000h
0085F9B7: mov eax, [ebp+08h]
0085F9BA: mov eax, [eax]
0085F9BC: push [ebp+08h]
0085F9BF: call [eax+04h]
0085F9C2: mov var_04, 00000001h
0085F9C9: mov var_04, 00000002h
0085F9D0: push FFFFFFFFh
0085F9D2: call 00410A60h ; On Error ...
0085F9D7: mov var_04, 00000003h
0085F9DE: lea eax, var_000000D4
0085F9E4: push eax
0085F9E5: mov eax, [ebp+08h]
0085F9E8: mov eax, [eax]
0085F9EA: push [ebp+08h]
0085F9ED: call [eax+00000098h]
0085F9F3: fclex 
0085F9F5: mov var_000000E0, eax
0085F9FB: cmp var_000000E0, 00000000h
0085FA02: jnl 85FA24h
0085FA04: push 00000098h
0085FA09: push 0044E17Ch
0085FA0E: push [ebp+08h]
0085FA11: push var_000000E0
0085FA17: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085FA1C: mov var_00000104, eax
0085FA22: jmp 85FA2Bh
0085FA24: and var_00000104, 00000000h
0085FA2B: movsx eax, word ptr var_000000D4
0085FA32: cmp eax, 00000001h
0085FA35: jnz 85FA9Ah
0085FA37: mov var_04, 00000004h
0085FA3E: lea eax, var_24
0085FA41: push eax
0085FA42: mov eax, [ebp+08h]
0085FA45: mov eax, [eax]
0085FA47: push [ebp+08h]
0085FA4A: call [eax+000001C0h]
0085FA50: fclex 
0085FA52: mov var_000000E0, eax
0085FA58: cmp var_000000E0, 00000000h
0085FA5F: jnl 85FA81h
0085FA61: push 000001C0h
0085FA66: push 0044E17Ch
0085FA6B: push [ebp+08h]
0085FA6E: push var_000000E0
0085FA74: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085FA79: mov var_00000108, eax
0085FA7F: jmp 85FA88h
0085FA81: and var_00000108, 00000000h
0085FA88: push var_24
0085FA8B: call 007CD85Bh
0085FA90: lea ecx, var_24
0085FA93: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085FA98: jmp 85FAFBh
0085FA9A: mov var_04, 00000006h
0085FAA1: lea eax, var_24
0085FAA4: push eax
0085FAA5: mov eax, [ebp+08h]
0085FAA8: mov eax, [eax]
0085FAAA: push [ebp+08h]
0085FAAD: call [eax+000001C0h]
0085FAB3: fclex 
0085FAB5: mov var_000000E0, eax
0085FABB: cmp var_000000E0, 00000000h
0085FAC2: jnl 85FAE4h
0085FAC4: push 000001C0h
0085FAC9: push 0044E17Ch
0085FACE: push [ebp+08h]
0085FAD1: push var_000000E0
0085FAD7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085FADC: mov var_0000010C, eax
0085FAE2: jmp 85FAEBh
0085FAE4: and var_0000010C, 00000000h
0085FAEB: push var_24
0085FAEE: call 007CD51Ch
0085FAF3: lea ecx, var_24
0085FAF6: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085FAFB: mov var_04, 00000008h
0085FB02: lea eax, var_24
0085FB05: push eax
0085FB06: mov eax, [ebp+08h]
0085FB09: mov eax, [eax]
0085FB0B: push [ebp+08h]
0085FB0E: call [eax+000001C0h]
0085FB14: fclex 
0085FB16: mov var_000000E0, eax
0085FB1C: cmp var_000000E0, 00000000h
0085FB23: jnl 85FB45h
0085FB25: push 000001C0h
0085FB2A: push 0044E17Ch
0085FB2F: push [ebp+08h]
0085FB32: push var_000000E0
0085FB38: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085FB3D: mov var_00000110, eax
0085FB43: jmp 85FB4Ch
0085FB45: and var_00000110, 00000000h
0085FB4C: push var_24
0085FB4F: call 007CE128h
0085FB54: push eax
0085FB55: call 007CE04Fh
0085FB5A: lea ecx, var_24
0085FB5D: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085FB62: mov var_04, 00000009h
0085FB69: lea eax, var_000000D8
0085FB6F: push eax
0085FB70: mov eax, [ebp+08h]
0085FB73: mov eax, [eax]
0085FB75: push [ebp+08h]
0085FB78: call [eax+00000080h]
0085FB7E: fclex 
0085FB80: mov var_000000E0, eax
0085FB86: cmp var_000000E0, 00000000h
0085FB8D: jnl 85FBAFh
0085FB8F: push 00000080h
0085FB94: push 0044E17Ch
0085FB99: push [ebp+08h]
0085FB9C: push var_000000E0
0085FBA2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085FBA7: mov var_00000114, eax
0085FBAD: jmp 85FBB6h
0085FBAF: and var_00000114, 00000000h
0085FBB6: mov eax, [ebp+08h]
0085FBB9: mov eax, [eax]
0085FBBB: push [ebp+08h]
0085FBBE: call [eax+00000300h]
0085FBC4: push eax
0085FBC5: lea eax, var_28
0085FBC8: push eax
0085FBC9: call 00410A84h ; Set (object)
0085FBCE: mov var_000000E8, eax
0085FBD4: lea eax, var_000000DC
0085FBDA: push eax
0085FBDB: mov eax, [ebp+08h]
0085FBDE: mov eax, [eax]
0085FBE0: push [ebp+08h]
0085FBE3: call [eax+00000088h]
0085FBE9: fclex 
0085FBEB: mov var_000000E4, eax
0085FBF1: cmp var_000000E4, 00000000h
0085FBF8: jnl 85FC1Ah
0085FBFA: push 00000088h
0085FBFF: push 0044E17Ch
0085FC04: push [ebp+08h]
0085FC07: push var_000000E4
0085FC0D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085FC12: mov var_00000118, eax
0085FC18: jmp 85FC21h
0085FC1A: and var_00000118, 00000000h
0085FC21: fld real4 ptr var_000000DC
0085FC27: fstp real4 ptr var_78
0085FC2A: mov var_80, 00000004h
0085FC31: fld real4 ptr var_000000D8
0085FC37: fstp real4 ptr var_68
0085FC3A: mov var_70, 00000004h
0085FC41: and var_58, 00000000h
0085FC45: mov var_60, 00000002h
0085FC4C: push 00000010h
0085FC4E: pop eax
0085FC4F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085FC54: lea esi, var_80
0085FC57: mov edi, esp
0085FC59: movsd 
0085FC5A: movsd 
0085FC5B: movsd 
0085FC5C: movsd 
0085FC5D: push 00000010h
0085FC5F: pop eax
0085FC60: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085FC65: lea esi, var_70
0085FC68: mov edi, esp
0085FC6A: movsd 
0085FC6B: movsd 
0085FC6C: movsd 
0085FC6D: movsd 
0085FC6E: push 00000010h
0085FC70: pop eax
0085FC71: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085FC76: lea esi, var_60
0085FC79: mov edi, esp
0085FC7B: movsd 
0085FC7C: movsd 
0085FC7D: movsd 
0085FC7E: movsd 
0085FC7F: fldz 
0085FC81: push ecx
0085FC82: fstp real4 ptr [esp]
0085FC85: mov eax, var_000000E8
0085FC8B: mov eax, [eax]
0085FC8D: push var_000000E8
0085FC93: call [eax+00000130h]
0085FC99: fclex 
0085FC9B: mov var_000000EC, eax
0085FCA1: cmp var_000000EC, 00000000h
0085FCA8: jnl 85FCCDh
0085FCAA: push 00000130h
0085FCAF: push 00440DCCh
0085FCB4: push var_000000E8
0085FCBA: push var_000000EC
0085FCC0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085FCC5: mov var_0000011C, eax
0085FCCB: jmp 85FCD4h
0085FCCD: and var_0000011C, 00000000h
0085FCD4: lea ecx, var_28
0085FCD7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085FCDC: mov var_04, 0000000Ah
0085FCE3: push 00000000h
0085FCE5: push 80010006h
0085FCEA: mov eax, [ebp+08h]
0085FCED: mov eax, [eax]
0085FCEF: push [ebp+08h]
0085FCF2: call [eax+0000030Ch]
0085FCF8: push eax
0085FCF9: lea eax, var_28
0085FCFC: push eax
0085FCFD: call 00410A84h ; Set (object)
0085FD02: push eax
0085FD03: lea eax, var_40
0085FD06: push eax
0085FD07: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085FD0C: add esp, 00000010h
0085FD0F: push 00000000h
0085FD11: push 80010006h
0085FD16: mov eax, [ebp+08h]
0085FD19: mov eax, [eax]
0085FD1B: push [ebp+08h]
0085FD1E: call [eax+0000030Ch]
0085FD24: push eax
0085FD25: lea eax, var_2C
0085FD28: push eax
0085FD29: call 00410A84h ; Set (object)
0085FD2E: push eax
0085FD2F: lea eax, var_50
0085FD32: push eax
0085FD33: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085FD38: add esp, 00000010h
0085FD3B: fldz 
0085FD3D: fstp real4 ptr var_58
0085FD40: mov var_60, 00000004h
0085FD47: and var_78, 00000000h
0085FD4B: mov var_80, 00000002h
0085FD52: lea eax, var_000000D8
0085FD58: push eax
0085FD59: mov eax, [ebp+08h]
0085FD5C: mov eax, [eax]
0085FD5E: push [ebp+08h]
0085FD61: call [eax+00000080h]
0085FD67: fclex 
0085FD69: mov var_000000E0, eax
0085FD6F: cmp var_000000E0, 00000000h
0085FD76: jnl 85FD98h
0085FD78: push 00000080h
0085FD7D: push 0044E17Ch
0085FD82: push [ebp+08h]
0085FD85: push var_000000E0
0085FD8B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085FD90: mov var_00000120, eax
0085FD96: jmp 85FD9Fh
0085FD98: and var_00000120, 00000000h
0085FD9F: fld real4 ptr var_000000D8
0085FDA5: fsub real4 ptr [0040C1ACh]
0085FDAB: fstp real4 ptr var_00000098
0085FDB1: fstsw ax
0085FDB3: test al, 0Dh
0085FDB5: jnz 00860353h
0085FDBB: mov var_000000A0, 00000004h
0085FDC5: lea eax, var_000000DC
0085FDCB: push eax
0085FDCC: mov eax, [ebp+08h]
0085FDCF: mov eax, [eax]
0085FDD1: push [ebp+08h]
0085FDD4: call [eax+00000088h]
0085FDDA: fclex 
0085FDDC: mov var_000000E4, eax
0085FDE2: cmp var_000000E4, 00000000h
0085FDE9: jnl 85FE0Bh
0085FDEB: push 00000088h
0085FDF0: push 0044E17Ch
0085FDF5: push [ebp+08h]
0085FDF8: push var_000000E4
0085FDFE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085FE03: mov var_00000124, eax
0085FE09: jmp 85FE12h
0085FE0B: and var_00000124, 00000000h
0085FE12: lea eax, var_40
0085FE15: push eax
0085FE16: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0085FE1B: fsubr real4 ptr var_000000DC
0085FE21: fstsw ax
0085FE23: test al, 0Dh
0085FE25: jnz 00860353h
0085FE2B: fstp real4 ptr var_00000128
0085FE31: lea eax, var_50
0085FE34: push eax
0085FE35: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0085FE3A: fsubr real4 ptr var_00000128
0085FE40: fstp real4 ptr var_000000B8
0085FE46: fstsw ax
0085FE48: test al, 0Dh
0085FE4A: jnz 00860353h
0085FE50: mov var_000000C0, 00000004h
0085FE5A: push 00000010h
0085FE5C: pop eax
0085FE5D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085FE62: lea esi, var_60
0085FE65: mov edi, esp
0085FE67: movsd 
0085FE68: movsd 
0085FE69: movsd 
0085FE6A: movsd 
0085FE6B: push 00000010h
0085FE6D: pop eax
0085FE6E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085FE73: lea esi, var_80
0085FE76: mov edi, esp
0085FE78: movsd 
0085FE79: movsd 
0085FE7A: movsd 
0085FE7B: movsd 
0085FE7C: push 00000010h
0085FE7E: pop eax
0085FE7F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085FE84: lea esi, var_000000A0
0085FE8A: mov edi, esp
0085FE8C: movsd 
0085FE8D: movsd 
0085FE8E: movsd 
0085FE8F: movsd 
0085FE90: push 00000010h
0085FE92: pop eax
0085FE93: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085FE98: lea esi, var_000000C0
0085FE9E: mov edi, esp
0085FEA0: movsd 
0085FEA1: movsd 
0085FEA2: movsd 
0085FEA3: movsd 
0085FEA4: push 00000004h
0085FEA6: push 80011002h
0085FEAB: mov eax, [ebp+08h]
0085FEAE: mov eax, [eax]
0085FEB0: push [ebp+08h]
0085FEB3: call [eax+00000310h]
0085FEB9: push eax
0085FEBA: lea eax, var_30
0085FEBD: push eax
0085FEBE: call 00410A84h ; Set (object)
0085FEC3: push eax
0085FEC4: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085FEC9: add esp, 0000004Ch
0085FECC: lea eax, var_30
0085FECF: push eax
0085FED0: lea eax, var_2C
0085FED3: push eax
0085FED4: lea eax, var_28
0085FED7: push eax
0085FED8: push 00000003h
0085FEDA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085FEDF: add esp, 00000010h
0085FEE2: lea eax, var_50
0085FEE5: push eax
0085FEE6: lea eax, var_40
0085FEE9: push eax
0085FEEA: push 00000002h
0085FEEC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085FEF1: add esp, 0000000Ch
0085FEF4: mov var_04, 0000000Bh
0085FEFB: fldz 
0085FEFD: fstp real4 ptr var_58
0085FF00: mov var_60, 00000004h
0085FF07: push 00000000h
0085FF09: push 80010006h
0085FF0E: mov eax, [ebp+08h]
0085FF11: mov eax, [eax]
0085FF13: push [ebp+08h]
0085FF16: call [eax+00000310h]
0085FF1C: push eax
0085FF1D: lea eax, var_28
0085FF20: push eax
0085FF21: call 00410A84h ; Set (object)
0085FF26: push eax
0085FF27: lea eax, var_40
0085FF2A: push eax
0085FF2B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085FF30: add esp, 00000010h
0085FF33: push eax
0085FF34: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0085FF39: fstp real4 ptr var_78
0085FF3C: mov var_80, 00000004h
0085FF43: lea eax, var_000000D8
0085FF49: push eax
0085FF4A: mov eax, [ebp+08h]
0085FF4D: mov eax, [eax]
0085FF4F: push [ebp+08h]
0085FF52: call [eax+00000080h]
0085FF58: fclex 
0085FF5A: mov var_000000E0, eax
0085FF60: cmp var_000000E0, 00000000h
0085FF67: jnl 85FF89h
0085FF69: push 00000080h
0085FF6E: push 0044E17Ch
0085FF73: push [ebp+08h]
0085FF76: push var_000000E0
0085FF7C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085FF81: mov var_0000012C, eax
0085FF87: jmp 85FF90h
0085FF89: and var_0000012C, 00000000h
0085FF90: fld real4 ptr var_000000D8
0085FF96: fsub real4 ptr [00402BA4h]
0085FF9C: fstp real4 ptr var_00000098
0085FFA2: fstsw ax
0085FFA4: test al, 0Dh
0085FFA6: jnz 00860353h
0085FFAC: mov var_000000A0, 00000004h
0085FFB6: push 00000010h
0085FFB8: pop eax
0085FFB9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085FFBE: lea esi, var_60
0085FFC1: mov edi, esp
0085FFC3: movsd 
0085FFC4: movsd 
0085FFC5: movsd 
0085FFC6: movsd 
0085FFC7: push 00000010h
0085FFC9: pop eax
0085FFCA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085FFCF: lea esi, var_80
0085FFD2: mov edi, esp
0085FFD4: movsd 
0085FFD5: movsd 
0085FFD6: movsd 
0085FFD7: movsd 
0085FFD8: push 00000010h
0085FFDA: pop eax
0085FFDB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085FFE0: lea esi, var_000000A0
0085FFE6: mov edi, esp
0085FFE8: movsd 
0085FFE9: movsd 
0085FFEA: movsd 
0085FFEB: movsd 
0085FFEC: push 00000003h
0085FFEE: push 80011002h
0085FFF3: mov eax, [ebp+08h]
0085FFF6: mov eax, [eax]
0085FFF8: push [ebp+08h]
0085FFFB: call [eax+0000030Ch]
00860001: push eax
00860002: lea eax, var_2C
00860005: push eax
00860006: call 00410A84h ; Set (object)
0086000B: push eax
0086000C: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00860011: add esp, 0000003Ch
00860014: lea eax, var_2C
00860017: push eax
00860018: lea eax, var_28
0086001B: push eax
0086001C: push 00000002h
0086001E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00860023: add esp, 0000000Ch
00860026: lea ecx, var_40
00860029: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0086002E: mov var_04, 0000000Ch
00860035: mov eax, [ebp+08h]
00860038: mov eax, [eax]
0086003A: push [ebp+08h]
0086003D: call [eax+000002FCh]
00860043: push eax
00860044: lea eax, var_28
00860047: push eax
00860048: call 00410A84h ; Set (object)
0086004D: mov var_000000E0, eax
00860053: fldz 
00860055: push ecx
00860056: fstp real4 ptr [esp]
00860059: mov eax, var_000000E0
0086005F: mov eax, [eax]
00860061: push var_000000E0
00860067: call [eax+64h]
0086006A: fclex 
0086006C: mov var_000000E4, eax
00860072: cmp var_000000E4, 00000000h
00860079: jnl 86009Bh
0086007B: push 00000064h
0086007D: push 00456A8Ch
00860082: push var_000000E0
00860088: push var_000000E4
0086008E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00860093: mov var_00000130, eax
00860099: jmp 8600A2h
0086009B: and var_00000130, 00000000h
008600A2: lea ecx, var_28
008600A5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008600AA: mov var_04, 0000000Dh
008600B1: mov eax, [ebp+08h]
008600B4: mov eax, [eax]
008600B6: push [ebp+08h]
008600B9: call [eax+000002FCh]
008600BF: push eax
008600C0: lea eax, var_28
008600C3: push eax
008600C4: call 00410A84h ; Set (object)
008600C9: mov var_000000E4, eax
008600CF: lea eax, var_000000D8
008600D5: push eax
008600D6: mov eax, [ebp+08h]
008600D9: mov eax, [eax]
008600DB: push [ebp+08h]
008600DE: call [eax+00000080h]
008600E4: fclex 
008600E6: mov var_000000E0, eax
008600EC: cmp var_000000E0, 00000000h
008600F3: jnl 860115h
008600F5: push 00000080h
008600FA: push 0044E17Ch
008600FF: push [ebp+08h]
00860102: push var_000000E0
00860108: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086010D: mov var_00000134, eax
00860113: jmp 86011Ch
00860115: and var_00000134, 00000000h
0086011C: fld real4 ptr var_000000D8
00860122: push ecx
00860123: fstp real4 ptr [esp]
00860126: mov eax, var_000000E4
0086012C: mov eax, [eax]
0086012E: push var_000000E4
00860134: call [eax+74h]
00860137: fclex 
00860139: mov var_000000E8, eax
0086013F: cmp var_000000E8, 00000000h
00860146: jnl 860168h
00860148: push 00000074h
0086014A: push 00456A8Ch
0086014F: push var_000000E4
00860155: push var_000000E8
0086015B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00860160: mov var_00000138, eax
00860166: jmp 86016Fh
00860168: and var_00000138, 00000000h
0086016F: lea ecx, var_28
00860172: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00860177: mov var_04, 0000000Eh
0086017E: mov eax, [ebp+08h]
00860181: mov eax, [eax]
00860183: push [ebp+08h]
00860186: call [eax+000002FCh]
0086018C: push eax
0086018D: lea eax, var_2C
00860190: push eax
00860191: call 00410A84h ; Set (object)
00860196: mov var_000000E0, eax
0086019C: push 00000000h
0086019E: push 80010004h
008601A3: mov eax, [ebp+08h]
008601A6: mov eax, [eax]
008601A8: push [ebp+08h]
008601AB: call [eax+0000030Ch]
008601B1: push eax
008601B2: lea eax, var_28
008601B5: push eax
008601B6: call 00410A84h ; Set (object)
008601BB: push eax
008601BC: lea eax, var_40
008601BF: push eax
008601C0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008601C5: add esp, 00000010h
008601C8: push eax
008601C9: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008601CE: push ecx
008601CF: fstp real4 ptr [esp]
008601D2: mov eax, var_000000E0
008601D8: mov eax, [eax]
008601DA: push var_000000E0
008601E0: call [eax+6Ch]
008601E3: fclex 
008601E5: mov var_000000E4, eax
008601EB: cmp var_000000E4, 00000000h
008601F2: jnl 860214h
008601F4: push 0000006Ch
008601F6: push 00456A8Ch
008601FB: push var_000000E0
00860201: push var_000000E4
00860207: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086020C: mov var_0000013C, eax
00860212: jmp 86021Bh
00860214: and var_0000013C, 00000000h
0086021B: lea eax, var_2C
0086021E: push eax
0086021F: lea eax, var_28
00860222: push eax
00860223: push 00000002h
00860225: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086022A: add esp, 0000000Ch
0086022D: lea ecx, var_40
00860230: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00860235: mov var_04, 0000000Fh
0086023C: mov eax, [ebp+08h]
0086023F: mov eax, [eax]
00860241: push [ebp+08h]
00860244: call [eax+000002FCh]
0086024A: push eax
0086024B: lea eax, var_2C
0086024E: push eax
0086024F: call 00410A84h ; Set (object)
00860254: mov var_000000E0, eax
0086025A: push 00000000h
0086025C: push 80010004h
00860261: mov eax, [ebp+08h]
00860264: mov eax, [eax]
00860266: push [ebp+08h]
00860269: call [eax+0000030Ch]
0086026F: push eax
00860270: lea eax, var_28
00860273: push eax
00860274: call 00410A84h ; Set (object)
00860279: push eax
0086027A: lea eax, var_40
0086027D: push eax
0086027E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00860283: add esp, 00000010h
00860286: push eax
00860287: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0086028C: push ecx
0086028D: fstp real4 ptr [esp]
00860290: mov eax, var_000000E0
00860296: mov eax, [eax]
00860298: push var_000000E0
0086029E: call [eax+7Ch]
008602A1: fclex 
008602A3: mov var_000000E4, eax
008602A9: cmp var_000000E4, 00000000h
008602B0: jnl 8602D2h
008602B2: push 0000007Ch
008602B4: push 00456A8Ch
008602B9: push var_000000E0
008602BF: push var_000000E4
008602C5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008602CA: mov var_00000140, eax
008602D0: jmp 8602D9h
008602D2: and var_00000140, 00000000h
008602D9: lea eax, var_2C
008602DC: push eax
008602DD: lea eax, var_28
008602E0: push eax
008602E1: push 00000002h
008602E3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008602E8: add esp, 0000000Ch
008602EB: lea ecx, var_40
008602EE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008602F3: mov var_10, 00000000h
008602FA: wait 
008602FB: push 00860334h
00860300: jmp 860333h
00860302: lea ecx, var_24
00860305: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0086030A: lea eax, var_30
0086030D: push eax
0086030E: lea eax, var_2C
00860311: push eax
00860312: lea eax, var_28
00860315: push eax
00860316: push 00000003h
00860318: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0086031D: add esp, 00000010h
00860320: lea eax, var_50
00860323: push eax
00860324: lea eax, var_40
00860327: push eax
00860328: push 00000002h
0086032A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0086032F: add esp, 0000000Ch
00860332: ret 
End Sub

Private sub Form__860358
00860358: push ebp
00860359: mov ebp, esp
0086035B: sub esp, 0000000Ch
0086035E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00860363: mov eax, fs:[00h]
00860369: push eax
0086036A: mov fs:[00000000h], esp
00860371: push 00000014h
00860373: pop eax
00860374: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00860379: push ebx
0086037A: push esi
0086037B: push edi
0086037C: mov var_0C, esp
0086037F: mov var_08, 0040CE70h
00860386: mov eax, [ebp+08h]
00860389: and eax, 00000001h
0086038C: mov var_04, eax
0086038F: mov eax, [ebp+08h]
00860392: and al, FEh
00860394: mov [ebp+08h], eax
00860397: mov eax, [ebp+08h]
0086039A: mov eax, [eax]
0086039C: push [ebp+08h]
0086039F: call [eax+04h]
008603A2: lea eax, var_18
008603A5: push eax
008603A6: mov eax, [ebp+08h]
008603A9: mov eax, [eax]
008603AB: push [ebp+08h]
008603AE: call [eax+000001C0h]
008603B4: fclex 
008603B6: mov var_1C, eax
008603B9: cmp var_1C, 00000000h
008603BD: jnl 8603D9h
008603BF: push 000001C0h
008603C4: push 0044E17Ch
008603C9: push [ebp+08h]
008603CC: push var_1C
008603CF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008603D4: mov var_28, eax
008603D7: jmp 8603DDh
008603D9: and var_28, 00000000h
008603DD: push var_18
008603E0: call 007CDB9Ah
008603E5: lea ecx, var_18
008603E8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008603ED: mov var_04, 00000000h
008603F4: push 00860405h
008603F9: jmp 860404h
008603FB: lea ecx, var_18
008603FE: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00860403: ret 
End Sub

Private sub mnuConvo__85EB06
0085EB06: push ebp
0085EB07: mov ebp, esp
0085EB09: sub esp, 0000000Ch
0085EB0C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085EB11: mov eax, fs:[00h]
0085EB17: push eax
0085EB18: mov fs:[00000000h], esp
0085EB1F: mov eax, 000000B8h
0085EB24: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085EB29: push ebx
0085EB2A: push esi
0085EB2B: push edi
0085EB2C: mov var_0C, esp
0085EB2F: mov var_08, 0040CDC0h
0085EB36: mov eax, [ebp+08h]
0085EB39: and eax, 00000001h
0085EB3C: mov var_04, eax
0085EB3F: mov eax, [ebp+08h]
0085EB42: and al, FEh
0085EB44: mov [ebp+08h], eax
0085EB47: mov eax, [ebp+08h]
0085EB4A: mov eax, [eax]
0085EB4C: push [ebp+08h]
0085EB4F: call [eax+04h]
0085EB52: mov eax, [ebp+0Ch]
0085EB55: mov ax, [eax]
0085EB58: mov var_000000B0, ax
0085EB5F: movsx eax, word ptr var_000000B0
0085EB66: mov var_000000C0, eax
0085EB6C: cmp var_000000C0, 00000000h
0085EB73: jz 85EB87h
0085EB75: cmp var_000000C0, 00000002h
0085EB7C: jz 0085EE34h
0085EB82: jmp 0085EE7Bh
0085EB87: cmp [008F529Ch], 00000000h
0085EB8E: jnz 85EBABh
0085EB90: push 008F529Ch
0085EB95: push 00440F2Ch
0085EB9A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0085EB9F: mov var_000000C4, 008F529Ch
0085EBA9: jmp 85EBB5h
0085EBAB: mov var_000000C4, 008F529Ch
0085EBB5: mov eax, var_000000C4
0085EBBB: mov eax, [eax]
0085EBBD: mov var_000000A0, eax
0085EBC3: lea eax, var_28
0085EBC6: push eax
0085EBC7: mov eax, var_000000A0
0085EBCD: mov eax, [eax]
0085EBCF: push var_000000A0
0085EBD5: call [eax+14h]
0085EBD8: fclex 
0085EBDA: mov var_000000A4, eax
0085EBE0: cmp var_000000A4, 00000000h
0085EBE7: jnl 85EC09h
0085EBE9: push 00000014h
0085EBEB: push 00440F1Ch
0085EBF0: push var_000000A0
0085EBF6: push var_000000A4
0085EBFC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085EC01: mov var_000000C8, eax
0085EC07: jmp 85EC10h
0085EC09: and var_000000C8, 00000000h
0085EC10: mov eax, var_28
0085EC13: mov var_000000A8, eax
0085EC19: lea eax, var_1C
0085EC1C: push eax
0085EC1D: mov eax, var_000000A8
0085EC23: mov eax, [eax]
0085EC25: push var_000000A8
0085EC2B: call [eax+50h]
0085EC2E: fclex 
0085EC30: mov var_000000AC, eax
0085EC36: cmp var_000000AC, 00000000h
0085EC3D: jnl 85EC5Fh
0085EC3F: push 00000050h
0085EC41: push 00440F3Ch
0085EC46: push var_000000A8
0085EC4C: push var_000000AC
0085EC52: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085EC57: mov var_000000CC, eax
0085EC5D: jmp 85EC66h
0085EC5F: and var_000000CC, 00000000h
0085EC66: push 00000000h
0085EC68: push 00000000h
0085EC6A: push var_1C
0085EC6D: push 00000000h
0085EC6F: push 00442BFCh
0085EC74: call 007CCC4Dh
0085EC79: mov edx, eax
0085EC7B: lea ecx, var_18
0085EC7E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085EC83: lea ecx, var_1C
0085EC86: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085EC8B: lea ecx, var_28
0085EC8E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085EC93: and word ptr var_0000009C, 0000h
0085EC9B: mov edx, 00445AC4h ; frmMain
0085ECA0: lea ecx, var_20
0085ECA3: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085ECA8: mov edx, 00445A90h ; 10012C02021D0E13092812
0085ECAD: lea ecx, var_1C
0085ECB0: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085ECB5: lea eax, var_0000009C
0085ECBB: push eax
0085ECBC: lea eax, var_20
0085ECBF: push eax
0085ECC0: lea eax, var_1C
0085ECC3: push eax
0085ECC4: call 007AA622h
0085ECC9: mov edx, eax
0085ECCB: lea ecx, var_24
0085ECCE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085ECD3: mov var_60, 80020004h
0085ECDA: mov var_68, 0000000Ah
0085ECE1: mov var_50, 80020004h
0085ECE8: mov var_58, 0000000Ah
0085ECEF: mov eax, var_24
0085ECF2: mov var_000000BC, eax
0085ECF8: and var_24, 00000000h
0085ECFC: mov eax, var_000000BC
0085ED02: mov var_40, eax
0085ED05: mov var_48, 00000008h
0085ED0C: mov var_70, 004569A4h ; Save in rich text format?
0085ED13: mov var_78, 00000008h
0085ED1A: lea edx, var_78
0085ED1D: lea ecx, var_38
0085ED20: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085ED25: lea eax, var_68
0085ED28: push eax
0085ED29: lea eax, var_58
0085ED2C: push eax
0085ED2D: lea eax, var_48
0085ED30: push eax
0085ED31: push 00000004h
0085ED33: lea eax, var_38
0085ED36: push eax
0085ED37: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0085ED3C: sub eax, 00000006h
0085ED3F: neg eax
0085ED41: sbb eax, eax
0085ED43: inc eax
0085ED44: neg eax
0085ED46: mov var_000000A0, ax
0085ED4D: lea eax, var_24
0085ED50: push eax
0085ED51: lea eax, var_20
0085ED54: push eax
0085ED55: lea eax, var_1C
0085ED58: push eax
0085ED59: push 00000003h
0085ED5B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0085ED60: add esp, 00000010h
0085ED63: lea eax, var_68
0085ED66: push eax
0085ED67: lea eax, var_58
0085ED6A: push eax
0085ED6B: lea eax, var_48
0085ED6E: push eax
0085ED6F: lea eax, var_38
0085ED72: push eax
0085ED73: push 00000004h
0085ED75: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085ED7A: add esp, 00000014h
0085ED7D: movsx eax, word ptr var_000000A0
0085ED84: test eax, eax
0085ED86: jz 85EDD5h
0085ED88: lea eax, var_18
0085ED8B: mov var_70, eax
0085ED8E: mov var_78, 00004008h
0085ED95: push 00000010h
0085ED97: pop eax
0085ED98: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085ED9D: lea esi, var_78
0085EDA0: mov edi, esp
0085EDA2: movsd 
0085EDA3: movsd 
0085EDA4: movsd 
0085EDA5: movsd 
0085EDA6: push 00000001h
0085EDA8: push 00000026h
0085EDAA: mov eax, [ebp+08h]
0085EDAD: mov eax, [eax]
0085EDAF: push [ebp+08h]
0085EDB2: call [eax+00000310h]
0085EDB8: push eax
0085EDB9: lea eax, var_28
0085EDBC: push eax
0085EDBD: call 00410A84h ; Set (object)
0085EDC2: push eax
0085EDC3: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0085EDC8: add esp, 0000001Ch
0085EDCB: lea ecx, var_28
0085EDCE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085EDD3: jmp 85EE32h
0085EDD5: push 00000000h
0085EDD7: push FFFFFDFBh
0085EDDC: mov eax, [ebp+08h]
0085EDDF: mov eax, [eax]
0085EDE1: push [ebp+08h]
0085EDE4: call [eax+00000310h]
0085EDEA: push eax
0085EDEB: lea eax, var_28
0085EDEE: push eax
0085EDEF: call 00410A84h ; Set (object)
0085EDF4: push eax
0085EDF5: lea eax, var_38
0085EDF8: push eax
0085EDF9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085EDFE: add esp, 00000010h
0085EE01: push eax
0085EE02: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085EE07: mov edx, eax
0085EE09: lea ecx, var_1C
0085EE0C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085EE11: push eax
0085EE12: push var_18
0085EE15: call 007D2577h
0085EE1A: lea ecx, var_1C
0085EE1D: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085EE22: lea ecx, var_28
0085EE25: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085EE2A: lea ecx, var_38
0085EE2D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085EE32: jmp 85EE7Bh
0085EE34: and var_70, 00000000h
0085EE38: mov var_78, 00000008h
0085EE3F: push 00000010h
0085EE41: pop eax
0085EE42: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085EE47: lea esi, var_78
0085EE4A: mov edi, esp
0085EE4C: movsd 
0085EE4D: movsd 
0085EE4E: movsd 
0085EE4F: movsd 
0085EE50: push FFFFFDFBh
0085EE55: mov eax, [ebp+08h]
0085EE58: mov eax, [eax]
0085EE5A: push [ebp+08h]
0085EE5D: call [eax+00000310h]
0085EE63: push eax
0085EE64: lea eax, var_28
0085EE67: push eax
0085EE68: call 00410A84h ; Set (object)
0085EE6D: push eax
0085EE6E: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0085EE73: lea ecx, var_28
0085EE76: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085EE7B: mov var_04, 00000000h
0085EE82: push 0085EECBh
0085EE87: jmp 85EEC2h
0085EE89: lea eax, var_24
0085EE8C: push eax
0085EE8D: lea eax, var_20
0085EE90: push eax
0085EE91: lea eax, var_1C
0085EE94: push eax
0085EE95: push 00000003h
0085EE97: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0085EE9C: add esp, 00000010h
0085EE9F: lea ecx, var_28
0085EEA2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085EEA7: lea eax, var_68
0085EEAA: push eax
0085EEAB: lea eax, var_58
0085EEAE: push eax
0085EEAF: lea eax, var_48
0085EEB2: push eax
0085EEB3: lea eax, var_38
0085EEB6: push eax
0085EEB7: push 00000004h
0085EEB9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085EEBE: add esp, 00000014h
0085EEC1: ret 
End Sub

Private sub txtMain__85F6D4
0085F6D4: push ebp
0085F6D5: mov ebp, esp
0085F6D7: sub esp, 0000000Ch
0085F6DA: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085F6DF: mov eax, fs:[00h]
0085F6E5: push eax
0085F6E6: mov fs:[00000000h], esp
0085F6ED: push 00000044h
0085F6EF: pop eax
0085F6F0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085F6F5: push ebx
0085F6F6: push esi
0085F6F7: push edi
0085F6F8: mov var_0C, esp
0085F6FB: mov var_08, 0040CDF0h
0085F702: mov eax, [ebp+08h]
0085F705: and eax, 00000001h
0085F708: mov var_04, eax
0085F70B: mov eax, [ebp+08h]
0085F70E: and al, FEh
0085F710: mov [ebp+08h], eax
0085F713: mov eax, [ebp+08h]
0085F716: mov eax, [eax]
0085F718: push [ebp+08h]
0085F71B: call [eax+04h]
0085F71E: push 00000000h
0085F720: push 00000000h
0085F722: mov eax, [ebp+08h]
0085F725: mov eax, [eax]
0085F727: push [ebp+08h]
0085F72A: call [eax+00000310h]
0085F730: push eax
0085F731: lea eax, var_1C
0085F734: push eax
0085F735: call 00410A84h ; Set (object)
0085F73A: push eax
0085F73B: lea eax, var_2C
0085F73E: push eax
0085F73F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085F744: add esp, 00000010h
0085F747: push eax
0085F748: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085F74D: mov edx, eax
0085F74F: lea ecx, var_18
0085F752: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085F757: push eax
0085F758: call 0041098Eh ; Len(arg_1)
0085F75D: xor ecx, ecx
0085F75F: cmp eax, 00008000h
0085F764: setnle cl
0085F767: neg ecx
0085F769: mov var_50, cx
0085F76D: lea ecx, var_18
0085F770: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085F775: lea ecx, var_1C
0085F778: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085F77D: lea ecx, var_2C
0085F780: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085F785: movsx eax, word ptr var_50
0085F789: test eax, eax
0085F78B: jz 85F7D1h
0085F78D: and var_34, 00000000h
0085F791: mov var_3C, 00000008h
0085F798: push 00000010h
0085F79A: pop eax
0085F79B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085F7A0: lea esi, var_3C
0085F7A3: mov edi, esp
0085F7A5: movsd 
0085F7A6: movsd 
0085F7A7: movsd 
0085F7A8: movsd 
0085F7A9: push 00000000h
0085F7AB: mov eax, [ebp+08h]
0085F7AE: mov eax, [eax]
0085F7B0: push [ebp+08h]
0085F7B3: call [eax+00000310h]
0085F7B9: push eax
0085F7BA: lea eax, var_1C
0085F7BD: push eax
0085F7BE: call 00410A84h ; Set (object)
0085F7C3: push eax
0085F7C4: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0085F7C9: lea ecx, var_1C
0085F7CC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085F7D1: mov var_04, 00000000h
0085F7D8: push 0085F7F9h
0085F7DD: jmp 85F7F8h
0085F7DF: lea ecx, var_18
0085F7E2: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085F7E7: lea ecx, var_1C
0085F7EA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085F7EF: lea ecx, var_2C
0085F7F2: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085F7F7: ret 
End Sub

Private sub txtMain__85F818
0085F818: push ebp
0085F819: mov ebp, esp
0085F81B: sub esp, 0000000Ch
0085F81E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0085F823: mov eax, fs:[00h]
0085F829: push eax
0085F82A: mov fs:[00000000h], esp
0085F831: push 00000024h
0085F833: pop eax
0085F834: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085F839: push ebx
0085F83A: push esi
0085F83B: push edi
0085F83C: mov var_0C, esp
0085F83F: mov var_08, 0040CE00h
0085F846: mov eax, [ebp+08h]
0085F849: and eax, 00000001h
0085F84C: mov var_04, eax
0085F84F: mov eax, [ebp+08h]
0085F852: and al, FEh
0085F854: mov [ebp+08h], eax
0085F857: mov eax, [ebp+08h]
0085F85A: mov eax, [eax]
0085F85C: push [ebp+08h]
0085F85F: call [eax+04h]
0085F862: mov eax, [ebp+0Ch]
0085F865: cmp word ptr [eax], 001Bh
0085F869: jnz 0085F930h
0085F86F: lea eax, var_18
0085F872: push eax
0085F873: mov eax, [ebp+08h]
0085F876: mov eax, [eax]
0085F878: push [ebp+08h]
0085F87B: call [eax+000001C0h]
0085F881: fclex 
0085F883: mov var_20, eax
0085F886: cmp var_20, 00000000h
0085F88A: jnl 85F8A6h
0085F88C: push 000001C0h
0085F891: push 0044E17Ch
0085F896: push [ebp+08h]
0085F899: push var_20
0085F89C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085F8A1: mov var_30, eax
0085F8A4: jmp 85F8AAh
0085F8A6: and var_30, 00000000h
0085F8AA: push var_18
0085F8AD: call 007CDB9Ah
0085F8B2: lea ecx, var_18
0085F8B5: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085F8BA: cmp [008F529Ch], 00000000h
0085F8C1: jnz 85F8DBh
0085F8C3: push 008F529Ch
0085F8C8: push 00440F2Ch
0085F8CD: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0085F8D2: mov var_34, 008F529Ch
0085F8D9: jmp 85F8E2h
0085F8DB: mov var_34, 008F529Ch
0085F8E2: mov eax, var_34
0085F8E5: mov eax, [eax]
0085F8E7: mov var_20, eax
0085F8EA: push [ebp+08h]
0085F8ED: lea eax, var_1C
0085F8F0: push eax
0085F8F1: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0085F8F6: push eax
0085F8F7: mov eax, var_20
0085F8FA: mov eax, [eax]
0085F8FC: push var_20
0085F8FF: call [eax+10h]
0085F902: fclex 
0085F904: mov var_24, eax
0085F907: cmp var_24, 00000000h
0085F90B: jnl 85F924h
0085F90D: push 00000010h
0085F90F: push 00440F1Ch
0085F914: push var_20
0085F917: push var_24
0085F91A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085F91F: mov var_38, eax
0085F922: jmp 85F928h
0085F924: and var_38, 00000000h
0085F928: lea ecx, var_1C
0085F92B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085F930: mov var_04, 00000000h
0085F937: push 0085F950h
0085F93C: jmp 85F94Fh
0085F93E: lea ecx, var_18
0085F941: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085F946: lea ecx, var_1C
0085F949: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085F94E: ret 
End Sub

Private sub txtMain__860424
00860424: push ebp
00860425: mov ebp, esp
00860427: sub esp, 0000000Ch
0086042A: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0086042F: mov eax, fs:[00h]
00860435: push eax
00860436: mov fs:[00000000h], esp
0086043D: push 00000054h
0086043F: pop eax
00860440: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00860445: push ebx
00860446: push esi
00860447: push edi
00860448: mov var_0C, esp
0086044B: mov var_08, 0040CE80h
00860452: mov eax, [ebp+08h]
00860455: and eax, 00000001h
00860458: mov var_04, eax
0086045B: mov eax, [ebp+08h]
0086045E: and al, FEh
00860460: mov [ebp+08h], eax
00860463: mov eax, [ebp+08h]
00860466: mov eax, [eax]
00860468: push [ebp+08h]
0086046B: call [eax+04h]
0086046E: mov eax, [ebp+0Ch]
00860471: cmp word ptr [eax], 0002h
00860475: jnz 0086054Fh
0086047B: mov var_50, 80020004h
00860482: mov var_58, 0000000Ah
00860489: mov var_40, 80020004h
00860490: mov var_48, 0000000Ah
00860497: mov var_30, 80020004h
0086049E: mov var_38, 0000000Ah
008604A5: mov var_20, 80020004h
008604AC: mov var_28, 0000000Ah
008604B3: push 00000010h
008604B5: pop eax
008604B6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008604BB: lea esi, var_58
008604BE: mov edi, esp
008604C0: movsd 
008604C1: movsd 
008604C2: movsd 
008604C3: movsd 
008604C4: push 00000010h
008604C6: pop eax
008604C7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008604CC: lea esi, var_48
008604CF: mov edi, esp
008604D1: movsd 
008604D2: movsd 
008604D3: movsd 
008604D4: movsd 
008604D5: push 00000010h
008604D7: pop eax
008604D8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008604DD: lea esi, var_38
008604E0: mov edi, esp
008604E2: movsd 
008604E3: movsd 
008604E4: movsd 
008604E5: movsd 
008604E6: push 00000010h
008604E8: pop eax
008604E9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008604EE: lea esi, var_28
008604F1: mov edi, esp
008604F3: movsd 
008604F4: movsd 
008604F5: movsd 
008604F6: movsd 
008604F7: mov eax, [ebp+08h]
008604FA: mov eax, [eax]
008604FC: push [ebp+08h]
008604FF: call [eax+00000304h]
00860505: push eax
00860506: lea eax, var_18
00860509: push eax
0086050A: call 00410A84h ; Set (object)
0086050F: push eax
00860510: mov eax, [ebp+08h]
00860513: mov eax, [eax]
00860515: push [ebp+08h]
00860518: call [eax+000002BCh]
0086051E: fclex 
00860520: mov var_5C, eax
00860523: cmp var_5C, 00000000h
00860527: jnl 860543h
00860529: push 000002BCh
0086052E: push 0044E17Ch
00860533: push [ebp+08h]
00860536: push var_5C
00860539: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0086053E: mov var_68, eax
00860541: jmp 860547h
00860543: and var_68, 00000000h
00860547: lea ecx, var_18
0086054A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0086054F: mov var_04, 00000000h
00860556: push 00860567h
0086055B: jmp 860566h
0086055D: lea ecx, var_18
00860560: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00860565: ret 
End Sub

Private sub unknown_8B29DD
008B29DD: push ebp
008B29DE: mov ebp, esp
008B29E0: xor eax, eax
008B29E2: pop ebp
008B29E3: retn 0004h
End Sub

