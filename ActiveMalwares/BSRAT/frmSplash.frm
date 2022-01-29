VERSION 5.00
Begin VB.Form frmSplash
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Picture = "frmSplash.frx":0
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  Visible = 0   'False
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 4740
  ClientHeight = 2325
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin VB.Timer tmrFade
    Interval = 10
    Left = 1080
    Top = 0
  End
  Begin VB.Timer tmrStatus
    Interval = 300
    Left = 600
    Top = 0
  End
  Begin VB.Timer tmrFocus
    Interval = 50
    Left = 120
    Top = 0
  End
  Begin VB.Label lblStatus
    Caption = "Loading..."
    Left = 1800
    Top = 1920
    Width = 2415
    Height = 375
    TabIndex = 0
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13,5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmSplash"


Private sub tmrStatus__8D8F30
008D8F30: push ebp
008D8F31: mov ebp, esp
008D8F33: sub esp, 0000000Ch
008D8F36: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D8F3B: mov eax, fs:[00h]
008D8F41: push eax
008D8F42: mov fs:[00000000h], esp
008D8F49: push 00000034h
008D8F4B: pop eax
008D8F4C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D8F51: push ebx
008D8F52: push esi
008D8F53: push edi
008D8F54: mov var_0C, esp
008D8F57: mov var_08, 0040FE28h
008D8F5E: mov eax, [ebp+08h]
008D8F61: and eax, 00000001h
008D8F64: mov var_04, eax
008D8F67: mov eax, [ebp+08h]
008D8F6A: and al, FEh
008D8F6C: mov [ebp+08h], eax
008D8F6F: mov eax, [ebp+08h]
008D8F72: mov eax, [eax]
008D8F74: push [ebp+08h]
008D8F77: call [eax+04h]
008D8F7A: mov eax, [ebp+08h]
008D8F7D: mov eax, [eax]
008D8F7F: push [ebp+08h]
008D8F82: call [eax+00000308h]
008D8F88: push eax
008D8F89: lea eax, var_1C
008D8F8C: push eax
008D8F8D: call 00410A84h ; Set (object)
008D8F92: mov var_20, eax
008D8F95: lea eax, var_18
008D8F98: push eax
008D8F99: mov eax, var_20
008D8F9C: mov eax, [eax]
008D8F9E: push var_20
008D8FA1: call [eax+50h]
008D8FA4: fclex 
008D8FA6: mov var_24, eax
008D8FA9: cmp var_24, 00000000h
008D8FAD: jnl 8D8FC6h
008D8FAF: push 00000050h
008D8FB1: push 004425E4h
008D8FB6: push var_20
008D8FB9: push var_24
008D8FBC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8FC1: mov var_38, eax
008D8FC4: jmp 8D8FCAh
008D8FC6: and var_38, 00000000h
008D8FCA: mov eax, var_18
008D8FCD: mov var_34, eax
008D8FD0: and var_18, 00000000h
008D8FD4: mov edx, var_34
008D8FD7: lea ecx, var_28
008D8FDA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D8FDF: lea ecx, var_1C
008D8FE2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D8FE7: push var_28
008D8FEA: push 00461404h ; Loading
008D8FEF: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008D8FF4: test eax, eax
008D8FF6: jnz 8D9056h
008D8FF8: mov eax, [ebp+08h]
008D8FFB: mov eax, [eax]
008D8FFD: push [ebp+08h]
008D9000: call [eax+00000308h]
008D9006: push eax
008D9007: lea eax, var_1C
008D900A: push eax
008D900B: call 00410A84h ; Set (object)
008D9010: mov var_20, eax
008D9013: push 00461208h ; Loading.
008D9018: mov eax, var_20
008D901B: mov eax, [eax]
008D901D: push var_20
008D9020: call [eax+54h]
008D9023: fclex 
008D9025: mov var_24, eax
008D9028: cmp var_24, 00000000h
008D902C: jnl 8D9045h
008D902E: push 00000054h
008D9030: push 004425E4h
008D9035: push var_20
008D9038: push var_24
008D903B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D9040: mov var_3C, eax
008D9043: jmp 8D9049h
008D9045: and var_3C, 00000000h
008D9049: lea ecx, var_1C
008D904C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D9051: jmp 008D919Bh
008D9056: push var_28
008D9059: push 00461208h ; Loading.
008D905E: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008D9063: test eax, eax
008D9065: jnz 8D90C5h
008D9067: mov eax, [ebp+08h]
008D906A: mov eax, [eax]
008D906C: push [ebp+08h]
008D906F: call [eax+00000308h]
008D9075: push eax
008D9076: lea eax, var_1C
008D9079: push eax
008D907A: call 00410A84h ; Set (object)
008D907F: mov var_20, eax
008D9082: push 00461220h ; Loading..
008D9087: mov eax, var_20
008D908A: mov eax, [eax]
008D908C: push var_20
008D908F: call [eax+54h]
008D9092: fclex 
008D9094: mov var_24, eax
008D9097: cmp var_24, 00000000h
008D909B: jnl 8D90B4h
008D909D: push 00000054h
008D909F: push 004425E4h
008D90A4: push var_20
008D90A7: push var_24
008D90AA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D90AF: mov var_40, eax
008D90B2: jmp 8D90B8h
008D90B4: and var_40, 00000000h
008D90B8: lea ecx, var_1C
008D90BB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D90C0: jmp 008D919Bh
008D90C5: push var_28
008D90C8: push 00461220h ; Loading..
008D90CD: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008D90D2: test eax, eax
008D90D4: jnz 8D9131h
008D90D6: mov eax, [ebp+08h]
008D90D9: mov eax, [eax]
008D90DB: push [ebp+08h]
008D90DE: call [eax+00000308h]
008D90E4: push eax
008D90E5: lea eax, var_1C
008D90E8: push eax
008D90E9: call 00410A84h ; Set (object)
008D90EE: mov var_20, eax
008D90F1: push 00461238h ; Loading...
008D90F6: mov eax, var_20
008D90F9: mov eax, [eax]
008D90FB: push var_20
008D90FE: call [eax+54h]
008D9101: fclex 
008D9103: mov var_24, eax
008D9106: cmp var_24, 00000000h
008D910A: jnl 8D9123h
008D910C: push 00000054h
008D910E: push 004425E4h
008D9113: push var_20
008D9116: push var_24
008D9119: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D911E: mov var_44, eax
008D9121: jmp 8D9127h
008D9123: and var_44, 00000000h
008D9127: lea ecx, var_1C
008D912A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D912F: jmp 8D919Bh
008D9131: push var_28
008D9134: push 00461238h ; Loading...
008D9139: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008D913E: test eax, eax
008D9140: jnz 8D919Bh
008D9142: mov eax, [ebp+08h]
008D9145: mov eax, [eax]
008D9147: push [ebp+08h]
008D914A: call [eax+00000308h]
008D9150: push eax
008D9151: lea eax, var_1C
008D9154: push eax
008D9155: call 00410A84h ; Set (object)
008D915A: mov var_20, eax
008D915D: push 00461404h ; Loading
008D9162: mov eax, var_20
008D9165: mov eax, [eax]
008D9167: push var_20
008D916A: call [eax+54h]
008D916D: fclex 
008D916F: mov var_24, eax
008D9172: cmp var_24, 00000000h
008D9176: jnl 8D918Fh
008D9178: push 00000054h
008D917A: push 004425E4h
008D917F: push var_20
008D9182: push var_24
008D9185: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D918A: mov var_48, eax
008D918D: jmp 8D9193h
008D918F: and var_48, 00000000h
008D9193: lea ecx, var_1C
008D9196: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D919B: mov var_04, 00000000h
008D91A2: push 008D91C3h
008D91A7: jmp 8D91BAh
008D91A9: lea ecx, var_18
008D91AC: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008D91B1: lea ecx, var_1C
008D91B4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D91B9: ret 
End Sub

Private sub tmrFocus__8D8E72
008D8E72: push ebp
008D8E73: mov ebp, esp
008D8E75: sub esp, 0000000Ch
008D8E78: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D8E7D: mov eax, fs:[00h]
008D8E83: push eax
008D8E84: mov fs:[00000000h], esp
008D8E8B: push 00000014h
008D8E8D: pop eax
008D8E8E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D8E93: push ebx
008D8E94: push esi
008D8E95: push edi
008D8E96: mov var_0C, esp
008D8E99: mov var_08, 0040FE20h
008D8EA0: mov eax, [ebp+08h]
008D8EA3: and eax, 00000001h
008D8EA6: mov var_04, eax
008D8EA9: mov eax, [ebp+08h]
008D8EAC: and al, FEh
008D8EAE: mov [ebp+08h], eax
008D8EB1: mov eax, [ebp+08h]
008D8EB4: mov eax, [eax]
008D8EB6: push [ebp+08h]
008D8EB9: call [eax+04h]
008D8EBC: lea eax, var_18
008D8EBF: push eax
008D8EC0: mov eax, [ebp+08h]
008D8EC3: mov eax, [eax]
008D8EC5: push [ebp+08h]
008D8EC8: call [eax+58h]
008D8ECB: fclex 
008D8ECD: mov var_1C, eax
008D8ED0: cmp var_1C, 00000000h
008D8ED4: jnl 8D8EEDh
008D8ED6: push 00000058h
008D8ED8: push 0044D864h
008D8EDD: push [ebp+08h]
008D8EE0: push var_1C
008D8EE3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8EE8: mov var_28, eax
008D8EEB: jmp 8D8EF1h
008D8EED: and var_28, 00000000h
008D8EF1: push 00000003h
008D8EF3: push 00000000h
008D8EF5: push 00000000h
008D8EF7: push 00000000h
008D8EF9: push 00000000h
008D8EFB: push FFFFFFFFh
008D8EFD: push var_18
008D8F00: call 0043EF48h
008D8F05: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
008D8F0A: mov var_04, 00000000h
008D8F11: mov eax, [ebp+08h]
008D8F14: mov eax, [eax]
008D8F16: push [ebp+08h]
008D8F19: call [eax+08h]
008D8F1C: mov eax, var_04
008D8F1F: mov ecx, var_14
008D8F22: mov fs:[00000000h], ecx
008D8F29: pop edi
008D8F2A: pop esi
008D8F2B: pop ebx
008D8F2C: leave 
008D8F2D: retn 0004h
End Sub

Private sub lblStatus__8D89C6
008D89C6: push ebp
008D89C7: mov ebp, esp
008D89C9: sub esp, 0000000Ch
008D89CC: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D89D1: mov eax, fs:[00h]
008D89D7: push eax
008D89D8: mov fs:[00000000h], esp
008D89DF: push 00000010h
008D89E1: pop eax
008D89E2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D89E7: push ebx
008D89E8: push esi
008D89E9: push edi
008D89EA: mov var_0C, esp
008D89ED: mov var_08, 0040FE00h
008D89F4: mov eax, [ebp+08h]
008D89F7: and eax, 00000001h
008D89FA: mov var_04, eax
008D89FD: mov eax, [ebp+08h]
008D8A00: and al, FEh
008D8A02: mov [ebp+08h], eax
008D8A05: mov eax, [ebp+08h]
008D8A08: mov eax, [eax]
008D8A0A: push [ebp+08h]
008D8A0D: call [eax+04h]
008D8A10: mov eax, [ebp+08h]
008D8A13: mov eax, [eax]
008D8A15: push [ebp+08h]
008D8A18: call [eax+000002B4h]
008D8A1E: fclex 
008D8A20: mov var_18, eax
008D8A23: cmp var_18, 00000000h
008D8A27: jnl 8D8A43h
008D8A29: push 000002B4h
008D8A2E: push 0044D864h
008D8A33: push [ebp+08h]
008D8A36: push var_18
008D8A39: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8A3E: mov var_24, eax
008D8A41: jmp 8D8A47h
008D8A43: and var_24, 00000000h
008D8A47: mov var_04, 00000000h
008D8A4E: mov eax, [ebp+08h]
008D8A51: mov eax, [eax]
008D8A53: push [ebp+08h]
008D8A56: call [eax+08h]
008D8A59: mov eax, var_04
008D8A5C: mov ecx, var_14
008D8A5F: mov fs:[00000000h], ecx
008D8A66: pop edi
008D8A67: pop esi
008D8A68: pop ebx
008D8A69: leave 
008D8A6A: retn 0004h
End Sub

Private sub tmrFade__8D8A6D
008D8A6D: push ebp
008D8A6E: mov ebp, esp
008D8A70: sub esp, 0000000Ch
008D8A73: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D8A78: mov eax, fs:[00h]
008D8A7E: push eax
008D8A7F: mov fs:[00000000h], esp
008D8A86: push 00000064h
008D8A88: pop eax
008D8A89: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D8A8E: push ebx
008D8A8F: push esi
008D8A90: push edi
008D8A91: mov var_0C, esp
008D8A94: mov var_08, 0040FE10h
008D8A9B: mov eax, [ebp+08h]
008D8A9E: and eax, 00000001h
008D8AA1: mov var_04, eax
008D8AA4: mov eax, [ebp+08h]
008D8AA7: and al, FEh
008D8AA9: mov [ebp+08h], eax
008D8AAC: mov eax, [ebp+08h]
008D8AAF: mov eax, [eax]
008D8AB1: push [ebp+08h]
008D8AB4: call [eax+04h]
008D8AB7: mov eax, [ebp+08h]
008D8ABA: mov eax, [eax]
008D8ABC: push [ebp+08h]
008D8ABF: call [eax+000002FCh]
008D8AC5: push eax
008D8AC6: lea eax, var_24
008D8AC9: push eax
008D8ACA: call 00410A84h ; Set (object)
008D8ACF: mov var_44, eax
008D8AD2: mov eax, [ebp+08h]
008D8AD5: mov eax, [eax]
008D8AD7: push [ebp+08h]
008D8ADA: call [eax+000002FCh]
008D8AE0: push eax
008D8AE1: lea eax, var_20
008D8AE4: push eax
008D8AE5: call 00410A84h ; Set (object)
008D8AEA: mov var_3C, eax
008D8AED: lea eax, var_18
008D8AF0: push eax
008D8AF1: mov eax, var_3C
008D8AF4: mov eax, [eax]
008D8AF6: push var_3C
008D8AF9: call [eax+70h]
008D8AFC: fclex 
008D8AFE: mov var_40, eax
008D8B01: cmp var_40, 00000000h
008D8B05: jnl 8D8B1Eh
008D8B07: push 00000070h
008D8B09: push 00447A20h
008D8B0E: push var_3C
008D8B11: push var_40
008D8B14: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8B19: mov var_54, eax
008D8B1C: jmp 8D8B22h
008D8B1E: and var_54, 00000000h
008D8B22: push var_18
008D8B25: call 004109DCh ; Val(arg_1)
008D8B2A: fadd real8 ptr [00401758h]
008D8B30: fstsw ax
008D8B32: test al, 0Dh
008D8B34: jnz 008D8E6Dh
008D8B3A: push ecx
008D8B3B: push ecx
008D8B3C: fstp real8 ptr [esp]
008D8B3F: call 00410790h ; msvbvm60.dll.__vbaStrR8
008D8B44: mov edx, eax
008D8B46: lea ecx, var_1C
008D8B49: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D8B4E: push eax
008D8B4F: mov eax, var_44
008D8B52: mov eax, [eax]
008D8B54: push var_44
008D8B57: call [eax+74h]
008D8B5A: fclex 
008D8B5C: mov var_48, eax
008D8B5F: cmp var_48, 00000000h
008D8B63: jnl 8D8B7Ch
008D8B65: push 00000074h
008D8B67: push 00447A20h
008D8B6C: push var_44
008D8B6F: push var_48
008D8B72: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8B77: mov var_58, eax
008D8B7A: jmp 8D8B80h
008D8B7C: and var_58, 00000000h
008D8B80: lea eax, var_1C
008D8B83: push eax
008D8B84: lea eax, var_18
008D8B87: push eax
008D8B88: push 00000002h
008D8B8A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D8B8F: add esp, 0000000Ch
008D8B92: lea eax, var_24
008D8B95: push eax
008D8B96: lea eax, var_20
008D8B99: push eax
008D8B9A: push 00000002h
008D8B9C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D8BA1: add esp, 0000000Ch
008D8BA4: lea eax, var_28
008D8BA7: push eax
008D8BA8: mov eax, [ebp+08h]
008D8BAB: mov eax, [eax]
008D8BAD: push [ebp+08h]
008D8BB0: call [eax+58h]
008D8BB3: fclex 
008D8BB5: mov var_3C, eax
008D8BB8: cmp var_3C, 00000000h
008D8BBC: jnl 8D8BD5h
008D8BBE: push 00000058h
008D8BC0: push 0044D864h
008D8BC5: push [ebp+08h]
008D8BC8: push var_3C
008D8BCB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8BD0: mov var_5C, eax
008D8BD3: jmp 8D8BD9h
008D8BD5: and var_5C, 00000000h
008D8BD9: lea eax, var_2C
008D8BDC: push eax
008D8BDD: mov eax, [ebp+08h]
008D8BE0: mov eax, [eax]
008D8BE2: push [ebp+08h]
008D8BE5: call [eax+58h]
008D8BE8: fclex 
008D8BEA: mov var_40, eax
008D8BED: cmp var_40, 00000000h
008D8BF1: jnl 8D8C0Ah
008D8BF3: push 00000058h
008D8BF5: push 0044D864h
008D8BFA: push [ebp+08h]
008D8BFD: push var_40
008D8C00: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8C05: mov var_60, eax
008D8C08: jmp 8D8C0Eh
008D8C0A: and var_60, 00000000h
008D8C0E: push FFFFFFECh
008D8C10: push var_2C
008D8C13: call 00447CBCh
008D8C18: mov var_30, eax
008D8C1B: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
008D8C20: mov eax, var_30
008D8C23: or eax, 00080000h
008D8C28: push eax
008D8C29: push FFFFFFECh
008D8C2B: push var_28
008D8C2E: call 00440104h
008D8C33: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
008D8C38: lea eax, var_28
008D8C3B: push eax
008D8C3C: mov eax, [ebp+08h]
008D8C3F: mov eax, [eax]
008D8C41: push [ebp+08h]
008D8C44: call [eax+58h]
008D8C47: fclex 
008D8C49: mov var_3C, eax
008D8C4C: cmp var_3C, 00000000h
008D8C50: jnl 8D8C69h
008D8C52: push 00000058h
008D8C54: push 0044D864h
008D8C59: push [ebp+08h]
008D8C5C: push var_3C
008D8C5F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8C64: mov var_64, eax
008D8C67: jmp 8D8C6Dh
008D8C69: and var_64, 00000000h
008D8C6D: mov eax, [ebp+08h]
008D8C70: mov eax, [eax]
008D8C72: push [ebp+08h]
008D8C75: call [eax+000002FCh]
008D8C7B: push eax
008D8C7C: lea eax, var_20
008D8C7F: push eax
008D8C80: call 00410A84h ; Set (object)
008D8C85: mov var_40, eax
008D8C88: lea eax, var_18
008D8C8B: push eax
008D8C8C: mov eax, var_40
008D8C8F: mov eax, [eax]
008D8C91: push var_40
008D8C94: call [eax+70h]
008D8C97: fclex 
008D8C99: mov var_44, eax
008D8C9C: cmp var_44, 00000000h
008D8CA0: jnl 8D8CB9h
008D8CA2: push 00000070h
008D8CA4: push 00447A20h
008D8CA9: push var_40
008D8CAC: push var_44
008D8CAF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8CB4: mov var_68, eax
008D8CB7: jmp 8D8CBDh
008D8CB9: and var_68, 00000000h
008D8CBD: push var_18
008D8CC0: call 004109DCh ; Val(arg_1)
008D8CC5: fstp real8 ptr var_38
008D8CC8: push 00000002h
008D8CCA: fld real8 ptr var_38
008D8CCD: call 00410C16h ; msvbvm60.dll.__vbaFpUI1
008D8CD2: push eax
008D8CD3: xor cx, cx
008D8CD6: call 00410928h ; msvbvm60.dll.__vbaUI1I2
008D8CDB: push eax
008D8CDC: push var_28
008D8CDF: call 00447D1Ch
008D8CE4: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
008D8CE9: lea ecx, var_18
008D8CEC: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008D8CF1: lea ecx, var_20
008D8CF4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D8CF9: push FFFFFFFFh
008D8CFB: mov eax, [ebp+08h]
008D8CFE: mov eax, [eax]
008D8D00: push [ebp+08h]
008D8D03: call [eax+000001BCh]
008D8D09: fclex 
008D8D0B: mov var_3C, eax
008D8D0E: cmp var_3C, 00000000h
008D8D12: jnl 8D8D2Eh
008D8D14: push 000001BCh
008D8D19: push 0044D864h
008D8D1E: push [ebp+08h]
008D8D21: push var_3C
008D8D24: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8D29: mov var_6C, eax
008D8D2C: jmp 8D8D32h
008D8D2E: and var_6C, 00000000h
008D8D32: mov eax, [ebp+08h]
008D8D35: mov eax, [eax]
008D8D37: push [ebp+08h]
008D8D3A: call [eax+000002FCh]
008D8D40: push eax
008D8D41: lea eax, var_20
008D8D44: push eax
008D8D45: call 00410A84h ; Set (object)
008D8D4A: mov var_3C, eax
008D8D4D: lea eax, var_18
008D8D50: push eax
008D8D51: mov eax, var_3C
008D8D54: mov eax, [eax]
008D8D56: push var_3C
008D8D59: call [eax+70h]
008D8D5C: fclex 
008D8D5E: mov var_40, eax
008D8D61: cmp var_40, 00000000h
008D8D65: jnl 8D8D7Eh
008D8D67: push 00000070h
008D8D69: push 00447A20h
008D8D6E: push var_3C
008D8D71: push var_40
008D8D74: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8D79: mov var_70, eax
008D8D7C: jmp 8D8D82h
008D8D7E: and var_70, 00000000h
008D8D82: push var_18
008D8D85: call 00410754h ; msvbvm60.dll.__vbaR8Str
008D8D8A: fcomp real8 ptr [0040FE08h]
008D8D90: fstsw ax
008D8D92: sahf 
008D8D93: jnz 8D8D9Eh
008D8D95: mov var_74, 00000001h
008D8D9C: jmp 8D8DA2h
008D8D9E: and var_74, 00000000h
008D8DA2: mov eax, var_74
008D8DA5: neg eax
008D8DA7: mov var_44, ax
008D8DAB: lea ecx, var_18
008D8DAE: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008D8DB3: lea ecx, var_20
008D8DB6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D8DBB: movsx eax, word ptr var_44
008D8DBF: test eax, eax
008D8DC1: jz 8D8E19h
008D8DC3: mov eax, [ebp+08h]
008D8DC6: mov eax, [eax]
008D8DC8: push [ebp+08h]
008D8DCB: call [eax+000002FCh]
008D8DD1: push eax
008D8DD2: lea eax, var_20
008D8DD5: push eax
008D8DD6: call 00410A84h ; Set (object)
008D8DDB: mov var_3C, eax
008D8DDE: push 00000000h
008D8DE0: mov eax, var_3C
008D8DE3: mov eax, [eax]
008D8DE5: push var_3C
008D8DE8: call [eax+5Ch]
008D8DEB: fclex 
008D8DED: mov var_40, eax
008D8DF0: cmp var_40, 00000000h
008D8DF4: jnl 8D8E0Dh
008D8DF6: push 0000005Ch
008D8DF8: push 00447A20h
008D8DFD: push var_3C
008D8E00: push var_40
008D8E03: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8E08: mov var_78, eax
008D8E0B: jmp 8D8E11h
008D8E0D: and var_78, 00000000h
008D8E11: lea ecx, var_20
008D8E14: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D8E19: mov var_04, 00000000h
008D8E20: wait 
008D8E21: push 008D8E4Eh
008D8E26: jmp 8D8E4Dh
008D8E28: lea eax, var_1C
008D8E2B: push eax
008D8E2C: lea eax, var_18
008D8E2F: push eax
008D8E30: push 00000002h
008D8E32: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D8E37: add esp, 0000000Ch
008D8E3A: lea eax, var_24
008D8E3D: push eax
008D8E3E: lea eax, var_20
008D8E41: push eax
008D8E42: push 00000002h
008D8E44: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D8E49: add esp, 0000000Ch
008D8E4C: ret 
End Sub

Private sub Form__8D878C
008D878C: push ebp
008D878D: mov ebp, esp
008D878F: sub esp, 0000000Ch
008D8792: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D8797: mov eax, fs:[00h]
008D879D: push eax
008D879E: mov fs:[00000000h], esp
008D87A5: push 0000002Ch
008D87A7: pop eax
008D87A8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D87AD: push ebx
008D87AE: push esi
008D87AF: push edi
008D87B0: mov var_0C, esp
008D87B3: mov var_08, 0040FDF0h
008D87BA: mov eax, [ebp+08h]
008D87BD: and eax, 00000001h
008D87C0: mov var_04, eax
008D87C3: mov eax, [ebp+08h]
008D87C6: and al, FEh
008D87C8: mov [ebp+08h], eax
008D87CB: mov eax, [ebp+08h]
008D87CE: mov eax, [eax]
008D87D0: push [ebp+08h]
008D87D3: call [eax+04h]
008D87D6: push 00000000h
008D87D8: mov eax, [ebp+08h]
008D87DB: mov eax, [eax]
008D87DD: push [ebp+08h]
008D87E0: call [eax+000001BCh]
008D87E6: fclex 
008D87E8: mov var_24, eax
008D87EB: cmp var_24, 00000000h
008D87EF: jnl 8D880Bh
008D87F1: push 000001BCh
008D87F6: push 0044D864h
008D87FB: push [ebp+08h]
008D87FE: push var_24
008D8801: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8806: mov var_34, eax
008D8809: jmp 8D880Fh
008D880B: and var_34, 00000000h
008D880F: lea eax, var_18
008D8812: push eax
008D8813: mov eax, [ebp+08h]
008D8816: mov eax, [eax]
008D8818: push [ebp+08h]
008D881B: call [eax+58h]
008D881E: fclex 
008D8820: mov var_24, eax
008D8823: cmp var_24, 00000000h
008D8827: jnl 8D8840h
008D8829: push 00000058h
008D882B: push 0044D864h
008D8830: push [ebp+08h]
008D8833: push var_24
008D8836: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D883B: mov var_38, eax
008D883E: jmp 8D8844h
008D8840: and var_38, 00000000h
008D8844: lea eax, var_1C
008D8847: push eax
008D8848: mov eax, [ebp+08h]
008D884B: mov eax, [eax]
008D884D: push [ebp+08h]
008D8850: call [eax+58h]
008D8853: fclex 
008D8855: mov var_28, eax
008D8858: cmp var_28, 00000000h
008D885C: jnl 8D8875h
008D885E: push 00000058h
008D8860: push 0044D864h
008D8865: push [ebp+08h]
008D8868: push var_28
008D886B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8870: mov var_3C, eax
008D8873: jmp 8D8879h
008D8875: and var_3C, 00000000h
008D8879: push FFFFFFECh
008D887B: push var_1C
008D887E: call 00447CBCh
008D8883: mov var_20, eax
008D8886: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
008D888B: mov eax, var_20
008D888E: or eax, 00080000h
008D8893: push eax
008D8894: push FFFFFFECh
008D8896: push var_18
008D8899: call 00440104h
008D889E: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
008D88A3: lea eax, var_18
008D88A6: push eax
008D88A7: mov eax, [ebp+08h]
008D88AA: mov eax, [eax]
008D88AC: push [ebp+08h]
008D88AF: call [eax+58h]
008D88B2: fclex 
008D88B4: mov var_24, eax
008D88B7: cmp var_24, 00000000h
008D88BB: jnl 8D88D4h
008D88BD: push 00000058h
008D88BF: push 0044D864h
008D88C4: push [ebp+08h]
008D88C7: push var_24
008D88CA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D88CF: mov var_40, eax
008D88D2: jmp 8D88D8h
008D88D4: and var_40, 00000000h
008D88D8: push 00000002h
008D88DA: xor cx, cx
008D88DD: call 00410928h ; msvbvm60.dll.__vbaUI1I2
008D88E2: push eax
008D88E3: xor cx, cx
008D88E6: call 00410928h ; msvbvm60.dll.__vbaUI1I2
008D88EB: push eax
008D88EC: push var_18
008D88EF: call 00447D1Ch
008D88F4: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
008D88F9: mov var_04, 00000000h
008D8900: mov eax, [ebp+08h]
008D8903: mov eax, [eax]
008D8905: push [ebp+08h]
008D8908: call [eax+08h]
008D890B: mov eax, var_04
008D890E: mov ecx, var_14
008D8911: mov fs:[00000000h], ecx
008D8918: pop edi
008D8919: pop esi
008D891A: pop ebx
008D891B: leave 
008D891C: retn 0004h
End Sub

Private sub Form__8D891F
008D891F: push ebp
008D8920: mov ebp, esp
008D8922: sub esp, 0000000Ch
008D8925: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D892A: mov eax, fs:[00h]
008D8930: push eax
008D8931: mov fs:[00000000h], esp
008D8938: push 00000010h
008D893A: pop eax
008D893B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D8940: push ebx
008D8941: push esi
008D8942: push edi
008D8943: mov var_0C, esp
008D8946: mov var_08, 0040FDF8h
008D894D: mov eax, [ebp+08h]
008D8950: and eax, 00000001h
008D8953: mov var_04, eax
008D8956: mov eax, [ebp+08h]
008D8959: and al, FEh
008D895B: mov [ebp+08h], eax
008D895E: mov eax, [ebp+08h]
008D8961: mov eax, [eax]
008D8963: push [ebp+08h]
008D8966: call [eax+04h]
008D8969: mov eax, [ebp+08h]
008D896C: mov eax, [eax]
008D896E: push [ebp+08h]
008D8971: call [eax+000002B4h]
008D8977: fclex 
008D8979: mov var_18, eax
008D897C: cmp var_18, 00000000h
008D8980: jnl 8D899Ch
008D8982: push 000002B4h
008D8987: push 0044D864h
008D898C: push [ebp+08h]
008D898F: push var_18
008D8992: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8997: mov var_24, eax
008D899A: jmp 8D89A0h
008D899C: and var_24, 00000000h
008D89A0: mov var_04, 00000000h
008D89A7: mov eax, [ebp+08h]
008D89AA: mov eax, [eax]
008D89AC: push [ebp+08h]
008D89AF: call [eax+08h]
008D89B2: mov eax, var_04
008D89B5: mov ecx, var_14
008D89B8: mov fs:[00000000h], ecx
008D89BF: pop edi
008D89C0: pop esi
008D89C1: pop ebx
008D89C2: leave 
008D89C3: retn 0014h
End Sub

