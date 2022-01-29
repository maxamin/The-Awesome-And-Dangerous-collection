VERSION 5.00
Begin VB.Form frmAttributes
  Caption = "File manager - Attributes for:"
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
  ClientWidth = 4155
  ClientHeight = 1425
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin VB.CheckBox chkAttributes
    Caption = "Directory"
    Index = 5
    Left = 2640
    Top = 600
    Width = 1215
    Height = 255
    TabIndex = 5
  End
  Begin VB.CheckBox chkAttributes
    Caption = "System"
    Index = 4
    Left = 2640
    Top = 120
    Width = 1215
    Height = 255
    TabIndex = 4
  End
  Begin VB.CheckBox chkAttributes
    Caption = "Read only"
    Index = 3
    Left = 1320
    Top = 600
    Width = 1215
    Height = 255
    TabIndex = 3
  End
  Begin VB.CheckBox chkAttributes
    Caption = "Normal"
    Index = 2
    Left = 1320
    Top = 120
    Width = 975
    Height = 255
    TabIndex = 2
  End
  Begin VB.CheckBox chkAttributes
    Caption = "Hidden"
    Index = 1
    Left = 120
    Top = 600
    Width = 975
    Height = 255
    TabIndex = 1
  End
  Begin VB.CheckBox chkAttributes
    Caption = "Archive"
    Index = 0
    Left = 120
    Top = 120
    Width = 975
    Height = 255
    TabIndex = 0
  End
  Begin XtremeSuiteControls.PushButton cmdSet
    Index = 0
    Left = 1560
    Top = 1080
    Width = 975
    Height = 300
    TabIndex = 6
  End
End

Attribute VB_Name = "frmAttributes"


Private sub cmdSet__8BABBF
008BABBF: push ebp
008BABC0: mov ebp, esp
008BABC2: sub esp, 0000000Ch
008BABC5: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008BABCA: mov eax, fs:[00h]
008BABD0: push eax
008BABD1: mov fs:[00000000h], esp
008BABD8: mov eax, 00000178h
008BABDD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008BABE2: push ebx
008BABE3: push esi
008BABE4: push edi
008BABE5: mov var_0C, esp
008BABE8: mov var_08, 0040EE00h
008BABEF: mov eax, [ebp+08h]
008BABF2: and eax, 00000001h
008BABF5: mov var_04, eax
008BABF8: mov eax, [ebp+08h]
008BABFB: and al, FEh
008BABFD: mov [ebp+08h], eax
008BAC00: mov eax, [ebp+08h]
008BAC03: mov eax, [eax]
008BAC05: push [ebp+08h]
008BAC08: call [eax+04h]
008BAC0B: mov var_000000AC, 00000001h
008BAC15: mov var_000000B4, 00000002h
008BAC1F: mov eax, [ebp+08h]
008BAC22: mov eax, [eax]
008BAC24: push [ebp+08h]
008BAC27: call [eax+000002FCh]
008BAC2D: push eax
008BAC2E: lea eax, var_40
008BAC31: push eax
008BAC32: call 00410A84h ; Set (object)
008BAC37: mov var_00000140, eax
008BAC3D: lea eax, var_0000012C
008BAC43: push eax
008BAC44: mov eax, var_00000140
008BAC4A: mov eax, [eax]
008BAC4C: push var_00000140
008BAC52: call [eax+48h]
008BAC55: fclex 
008BAC57: mov var_00000144, eax
008BAC5D: cmp var_00000144, 00000000h
008BAC64: jnl 8BAC86h
008BAC66: push 00000048h
008BAC68: push 00440DE8h
008BAC6D: push var_00000140
008BAC73: push var_00000144
008BAC79: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008BAC7E: mov var_00000174, eax
008BAC84: jmp 8BAC8Dh
008BAC86: and var_00000174, 00000000h
008BAC8D: mov ax, var_0000012C
008BAC94: mov var_000000BC, ax
008BAC9B: mov var_000000C4, 00000002h
008BACA5: mov eax, [ebp+08h]
008BACA8: mov eax, [eax]
008BACAA: push [ebp+08h]
008BACAD: call [eax+000002FCh]
008BACB3: push eax
008BACB4: lea eax, var_3C
008BACB7: push eax
008BACB8: call 00410A84h ; Set (object)
008BACBD: mov var_00000138, eax
008BACC3: lea eax, var_00000128
008BACC9: push eax
008BACCA: mov eax, var_00000138
008BACD0: mov eax, [eax]
008BACD2: push var_00000138
008BACD8: call [eax+44h]
008BACDB: fclex 
008BACDD: mov var_0000013C, eax
008BACE3: cmp var_0000013C, 00000000h
008BACEA: jnl 8BAD0Ch
008BACEC: push 00000044h
008BACEE: push 00440DE8h
008BACF3: push var_00000138
008BACF9: push var_0000013C
008BACFF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008BAD04: mov var_00000178, eax
008BAD0A: jmp 8BAD13h
008BAD0C: and var_00000178, 00000000h
008BAD13: mov ax, var_00000128
008BAD1A: mov var_000000CC, ax
008BAD21: mov var_000000D4, 00000002h
008BAD2B: lea eax, var_000000B4
008BAD31: push eax
008BAD32: lea eax, var_000000C4
008BAD38: push eax
008BAD39: lea eax, var_000000D4
008BAD3F: push eax
008BAD40: lea eax, var_00000164
008BAD46: push eax
008BAD47: lea eax, var_00000154
008BAD4D: push eax
008BAD4E: lea eax, var_24
008BAD51: push eax
008BAD52: call 00410A3Ch ; For
008BAD57: mov var_00000170, eax
008BAD5D: lea eax, var_40
008BAD60: push eax
008BAD61: lea eax, var_3C
008BAD64: push eax
008BAD65: push 00000002h
008BAD67: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008BAD6C: add esp, 0000000Ch
008BAD6F: jmp 008BAEC6h
008BAD74: mov eax, [ebp+08h]
008BAD77: mov eax, [eax]
008BAD79: push [ebp+08h]
008BAD7C: call [eax+000002FCh]
008BAD82: push eax
008BAD83: lea eax, var_3C
008BAD86: push eax
008BAD87: call 00410A84h ; Set (object)
008BAD8C: mov var_00000138, eax
008BAD92: lea eax, var_40
008BAD95: push eax
008BAD96: lea eax, var_24
008BAD99: push eax
008BAD9A: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008BAD9F: push eax
008BADA0: mov eax, var_00000138
008BADA6: mov eax, [eax]
008BADA8: push var_00000138
008BADAE: call [eax+40h]
008BADB1: fclex 
008BADB3: mov var_0000013C, eax
008BADB9: cmp var_0000013C, 00000000h
008BADC0: jnl 8BADE2h
008BADC2: push 00000040h
008BADC4: push 00440DE8h
008BADC9: push var_00000138
008BADCF: push var_0000013C
008BADD5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008BADDA: mov var_0000017C, eax
008BADE0: jmp 8BADE9h
008BADE2: and var_0000017C, 00000000h
008BADE9: mov eax, var_40
008BADEC: mov var_00000140, eax
008BADF2: lea eax, var_00000128
008BADF8: push eax
008BADF9: mov eax, var_00000140
008BADFF: mov eax, [eax]
008BAE01: push var_00000140
008BAE07: call [eax+000000E0h]
008BAE0D: fclex 
008BAE0F: mov var_00000144, eax
008BAE15: cmp var_00000144, 00000000h
008BAE1C: jnl 8BAE41h
008BAE1E: push 000000E0h
008BAE23: push 00440DF8h
008BAE28: push var_00000140
008BAE2E: push var_00000144
008BAE34: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008BAE39: mov var_00000180, eax
008BAE3F: jmp 8BAE48h
008BAE41: and var_00000180, 00000000h
008BAE48: push var_28
008BAE4B: push var_00000128
008BAE51: call 00410964h ; msvbvm60.dll.__vbaStrI2
008BAE56: mov edx, eax
008BAE58: lea ecx, var_2C
008BAE5B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BAE60: push eax
008BAE61: call 00410A18h ; &
008BAE66: mov edx, eax
008BAE68: lea ecx, var_30
008BAE6B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BAE70: push eax
008BAE71: push 004413D8h
008BAE76: call 00410A18h ; &
008BAE7B: mov edx, eax
008BAE7D: lea ecx, var_28
008BAE80: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BAE85: lea eax, var_30
008BAE88: push eax
008BAE89: lea eax, var_2C
008BAE8C: push eax
008BAE8D: push 00000002h
008BAE8F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008BAE94: add esp, 0000000Ch
008BAE97: lea eax, var_40
008BAE9A: push eax
008BAE9B: lea eax, var_3C
008BAE9E: push eax
008BAE9F: push 00000002h
008BAEA1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008BAEA6: add esp, 0000000Ch
008BAEA9: lea eax, var_00000164
008BAEAF: push eax
008BAEB0: lea eax, var_00000154
008BAEB6: push eax
008BAEB7: lea eax, var_24
008BAEBA: push eax
008BAEBB: call 00410A36h ; Next
008BAEC0: mov var_00000170, eax
008BAEC6: cmp var_00000170, 00000000h
008BAECD: jnz 008BAD74h
008BAED3: lea eax, var_2C
008BAED6: push eax
008BAED7: mov eax, [ebp+08h]
008BAEDA: mov eax, [eax]
008BAEDC: push [ebp+08h]
008BAEDF: call [eax+000001C0h]
008BAEE5: fclex 
008BAEE7: mov var_00000138, eax
008BAEED: cmp var_00000138, 00000000h
008BAEF4: jnl 8BAF16h
008BAEF6: push 000001C0h
008BAEFB: push 00450464h
008BAF00: push [ebp+08h]
008BAF03: push var_00000138
008BAF09: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008BAF0E: mov var_00000184, eax
008BAF14: jmp 8BAF1Dh
008BAF16: and var_00000184, 00000000h
008BAF1D: and var_000000BC, 00000000h
008BAF24: mov var_000000C4, 00000002h
008BAF2E: mov var_000000AC, 004413D8h
008BAF38: mov var_000000B4, 00000008h
008BAF42: lea edx, var_000000B4
008BAF48: lea ecx, var_50
008BAF4B: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008BAF50: push 00000000h
008BAF52: push FFFFFFFFh
008BAF54: lea eax, var_50
008BAF57: push eax
008BAF58: push var_2C
008BAF5B: lea eax, var_60
008BAF5E: push eax
008BAF5F: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
008BAF64: push 00000010h
008BAF66: pop eax
008BAF67: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008BAF6C: lea esi, var_000000C4
008BAF72: mov edi, esp
008BAF74: movsd 
008BAF75: movsd 
008BAF76: movsd 
008BAF77: movsd 
008BAF78: push 00000001h
008BAF7A: lea eax, var_60
008BAF7D: push eax
008BAF7E: lea eax, var_70
008BAF81: push eax
008BAF82: call 00410952h ; msvbvm60.dll.__vbaVarIndexLoad
008BAF87: add esp, 0000001Ch
008BAF8A: push eax
008BAF8B: lea eax, var_30
008BAF8E: push eax
008BAF8F: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008BAF94: push eax
008BAF95: call 004109DCh ; Val(arg_1)
008BAF9A: fstp real8 ptr var_00000134
008BAFA0: lea eax, var_34
008BAFA3: push eax
008BAFA4: mov eax, [ebp+08h]
008BAFA7: mov eax, [eax]
008BAFA9: push [ebp+08h]
008BAFAC: call [eax+000001C0h]
008BAFB2: fclex 
008BAFB4: mov var_0000013C, eax
008BAFBA: cmp var_0000013C, 00000000h
008BAFC1: jnl 8BAFE3h
008BAFC3: push 000001C0h
008BAFC8: push 00450464h
008BAFCD: push [ebp+08h]
008BAFD0: push var_0000013C
008BAFD6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008BAFDB: mov var_00000188, eax
008BAFE1: jmp 8BAFEAh
008BAFE3: and var_00000188, 00000000h
008BAFEA: push 00000000h
008BAFEC: push 00000001h
008BAFEE: push 00000001h
008BAFF0: push 00000000h
008BAFF2: lea eax, var_000000A4
008BAFF8: push eax
008BAFF9: push 00000010h
008BAFFB: push 00000880h
008BB000: call 00410946h ; ReDim
008BB005: add esp, 0000001Ch
008BB008: mov var_000000EC, 00000001h
008BB012: mov var_000000F4, 00000002h
008BB01C: mov var_000000DC, 004413D8h
008BB026: mov var_000000E4, 00000008h
008BB030: lea edx, var_000000E4
008BB036: lea ecx, var_80
008BB039: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008BB03E: push 00000000h
008BB040: push FFFFFFFFh
008BB042: lea eax, var_80
008BB045: push eax
008BB046: push var_34
008BB049: lea eax, var_00000090
008BB04F: push eax
008BB050: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
008BB055: push 00000010h
008BB057: pop eax
008BB058: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008BB05D: lea esi, var_000000F4
008BB063: mov edi, esp
008BB065: movsd 
008BB066: movsd 
008BB067: movsd 
008BB068: movsd 
008BB069: push 00000001h
008BB06B: lea eax, var_00000090
008BB071: push eax
008BB072: lea eax, var_000000A0
008BB078: push eax
008BB079: call 00410802h ; msvbvm60.dll.__vbaVarIndexLoadRef
008BB07E: add esp, 0000001Ch
008BB081: mov var_00000140, eax
008BB087: mov eax, var_00000140
008BB08D: mov eax, [eax]
008BB08F: and eax, 00004000h
008BB094: test eax, eax
008BB096: jz 8BB0A6h
008BB098: mov eax, var_00000140
008BB09E: mov var_0000018C, eax
008BB0A4: jmp 8BB0C8h
008BB0A6: mov eax, var_00000140
008BB0AC: mov var_0000010C, eax
008BB0B2: mov var_00000114, 0000400Ch
008BB0BC: lea eax, var_00000114
008BB0C2: mov var_0000018C, eax
008BB0C8: mov esi, var_0000018C
008BB0CE: push 00000000h
008BB0D0: push var_000000A4
008BB0D6: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008BB0DB: mov ecx, eax
008BB0DD: mov edx, esi
008BB0DF: call 00410940h ; msvbvm60.dll.__vbaVarZero
008BB0E4: lea eax, var_28
008BB0E7: mov var_0000011C, eax
008BB0ED: mov var_00000124, 00004008h
008BB0F7: lea esi, var_00000124
008BB0FD: push 00000001h
008BB0FF: push var_000000A4
008BB105: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008BB10A: mov ecx, eax
008BB10C: mov edx, esi
008BB10E: call 00410940h ; msvbvm60.dll.__vbaVarZero
008BB113: mov edx, 0043D9E0h ; x117
008BB118: lea ecx, var_38
008BB11B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008BB120: lea eax, var_000000A4
008BB126: push eax
008BB127: lea eax, var_38
008BB12A: push eax
008BB12B: fld real8 ptr var_00000134
008BB131: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008BB136: push eax
008BB137: call 007A6910h
008BB13C: lea eax, var_000000A4
008BB142: push eax
008BB143: push 00000000h
008BB145: call 00410934h ; Erase
008BB14A: lea eax, var_38
008BB14D: push eax
008BB14E: lea eax, var_34
008BB151: push eax
008BB152: lea eax, var_30
008BB155: push eax
008BB156: lea eax, var_2C
008BB159: push eax
008BB15A: push 00000004h
008BB15C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008BB161: add esp, 00000014h
008BB164: lea eax, var_000000A0
008BB16A: push eax
008BB16B: lea eax, var_00000090
008BB171: push eax
008BB172: lea eax, var_80
008BB175: push eax
008BB176: lea eax, var_70
008BB179: push eax
008BB17A: lea eax, var_60
008BB17D: push eax
008BB17E: lea eax, var_50
008BB181: push eax
008BB182: push 00000006h
008BB184: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008BB189: add esp, 0000001Ch
008BB18C: mov var_04, 00000000h
008BB193: wait 
008BB194: push 008BB227h
008BB199: jmp 8BB1FEh
008BB19B: lea eax, var_38
008BB19E: push eax
008BB19F: lea eax, var_34
008BB1A2: push eax
008BB1A3: lea eax, var_30
008BB1A6: push eax
008BB1A7: lea eax, var_2C
008BB1AA: push eax
008BB1AB: push 00000004h
008BB1AD: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008BB1B2: add esp, 00000014h
008BB1B5: lea eax, var_40
008BB1B8: push eax
008BB1B9: lea eax, var_3C
008BB1BC: push eax
008BB1BD: push 00000002h
008BB1BF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008BB1C4: add esp, 0000000Ch
008BB1C7: lea eax, var_000000A0
008BB1CD: push eax
008BB1CE: lea eax, var_00000090
008BB1D4: push eax
008BB1D5: lea eax, var_80
008BB1D8: push eax
008BB1D9: lea eax, var_70
008BB1DC: push eax
008BB1DD: lea eax, var_60
008BB1E0: push eax
008BB1E1: lea eax, var_50
008BB1E4: push eax
008BB1E5: push 00000006h
008BB1E7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008BB1EC: add esp, 0000001Ch
008BB1EF: lea eax, var_000000A4
008BB1F5: push eax
008BB1F6: push 00000000h
008BB1F8: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008BB1FD: ret 
End Sub

