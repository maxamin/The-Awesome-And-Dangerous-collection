VERSION 5.00
Begin VB.Form frmADSettings
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 11325
  ClientHeight = 5700
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin VB.Frame frmPos
    Left = 1800
    Top = 4920
    Width = 7815
    Height = 375
    TabIndex = 4
    BorderStyle = 0 'None
    Begin VB.CommandButton cmdReady
      Caption = "Ready"
      Left = 6720
      Top = 60
      Width = 975
      Height = 255
      TabIndex = 9
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblPos
      Caption = "X: n/a"
      Index = 0
      Left = 120
      Top = 120
      Width = 1695
      Height = 255
      TabIndex = 8
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblPos
      Caption = "Y: n/a"
      Index = 1
      Left = 1800
      Top = 120
      Width = 1695
      Height = 255
      TabIndex = 7
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblPos
      Caption = "Scroll X: n/a"
      Index = 2
      Left = 3480
      Top = 120
      Width = 1695
      Height = 255
      TabIndex = 6
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblPos
      Caption = "Scroll Y: n/a"
      Index = 3
      Left = 5160
      Top = 120
      Width = 1695
      Height = 255
      TabIndex = 5
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame frmTutorial
    Caption = "Setup tutorial"
    Left = 0
    Top = 0
    Width = 11055
    Height = 3615
    TabIndex = 1
    Begin VB.CommandButton cmdOK
      Caption = "OK"
      Left = 10200
      Top = 3240
      Width = 735
      Height = 255
      TabIndex = 3
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblInfo
      Caption = "Note: For best performance and accuracy, it's recommended that the selected banner is located as much as possible to the upper left corner, where both Scroll X and Scroll Y equals 0."
      Index = 1
      Left = 240
      Top = 3000
      Width = 9855
      Height = 495
      TabIndex = 10
    End
    Begin VB.Label lblInfo
      Caption = "The ads locator is designed to help you locate position of banners or almost any type of advertising material.               All you need to do is follow the steps listed below:                                                                                                                                                                                                                                                                                                                                                                                 1. Insert the target website upon request from the locator.                                                                                                                           2. Once the page has finished loading, pick one banner to work on, preferably as big image/flash as possible.                  3. Place the mouse pointer as central on the banner as possible.                                                                                                           4. Without moving the mouse away from the banner, look at the values on the buttom of your screen and remember those values."
      Index = 0
      Left = 240
      Top = 360
      Width = 10455
      Height = 2055
      TabIndex = 2
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Timer tmrMousePos
    Interval = 10
    Left = 5760
    Top = 0
  End
  Begin SHDocVwCtl.WebBrowser wbAds
    Left = 0
    Top = 0
    Width = 11295
    Height = 5655
    TabIndex = 0
  End
End

Attribute VB_Name = "frmADSettings"


Private sub cmdOK__8DA51A
008DA51A: push ebp
008DA51B: mov ebp, esp
008DA51D: sub esp, 0000000Ch
008DA520: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008DA525: mov eax, fs:[00h]
008DA52B: push eax
008DA52C: mov fs:[00000000h], esp
008DA533: push 00000008h
008DA535: pop eax
008DA536: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DA53B: push ebx
008DA53C: push esi
008DA53D: push edi
008DA53E: mov var_0C, esp
008DA541: mov var_08, 0040FE80h
008DA548: mov eax, [ebp+08h]
008DA54B: and eax, 00000001h
008DA54E: mov var_04, eax
008DA551: mov eax, [ebp+08h]
008DA554: and al, FEh
008DA556: mov [ebp+08h], eax
008DA559: mov eax, [ebp+08h]
008DA55C: mov eax, [eax]
008DA55E: push [ebp+08h]
008DA561: call [eax+04h]
008DA564: mov eax, [ebp+08h]
008DA567: mov eax, [eax]
008DA569: push [ebp+08h]
008DA56C: call [eax+00000704h]
008DA572: mov var_04, 00000000h
008DA579: mov eax, [ebp+08h]
008DA57C: mov eax, [eax]
008DA57E: push [ebp+08h]
008DA581: call [eax+08h]
008DA584: mov eax, var_04
008DA587: mov ecx, var_14
008DA58A: mov fs:[00000000h], ecx
008DA591: pop edi
008DA592: pop esi
008DA593: pop ebx
008DA594: leave 
008DA595: retn 0004h
End Sub

Private sub cmdReady__8DA598
008DA598: push ebp
008DA599: mov ebp, esp
008DA59B: sub esp, 0000000Ch
008DA59E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008DA5A3: mov eax, fs:[00h]
008DA5A9: push eax
008DA5AA: mov fs:[00000000h], esp
008DA5B1: push 0000001Ch
008DA5B3: pop eax
008DA5B4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DA5B9: push ebx
008DA5BA: push esi
008DA5BB: push edi
008DA5BC: mov var_0C, esp
008DA5BF: mov var_08, 0040FE88h
008DA5C6: mov eax, [ebp+08h]
008DA5C9: and eax, 00000001h
008DA5CC: mov var_04, eax
008DA5CF: mov eax, [ebp+08h]
008DA5D2: and al, FEh
008DA5D4: mov [ebp+08h], eax
008DA5D7: mov eax, [ebp+08h]
008DA5DA: mov eax, [eax]
008DA5DC: push [ebp+08h]
008DA5DF: call [eax+04h]
008DA5E2: cmp [008F529Ch], 00000000h
008DA5E9: jnz 8DA603h
008DA5EB: push 008F529Ch
008DA5F0: push 00440F2Ch
008DA5F5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DA5FA: mov var_2C, 008F529Ch
008DA601: jmp 8DA60Ah
008DA603: mov var_2C, 008F529Ch
008DA60A: mov eax, var_2C
008DA60D: mov eax, [eax]
008DA60F: mov var_1C, eax
008DA612: push [ebp+08h]
008DA615: lea eax, var_18
008DA618: push eax
008DA619: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008DA61E: push eax
008DA61F: mov eax, var_1C
008DA622: mov eax, [eax]
008DA624: push var_1C
008DA627: call [eax+10h]
008DA62A: fclex 
008DA62C: mov var_20, eax
008DA62F: cmp var_20, 00000000h
008DA633: jnl 8DA64Ch
008DA635: push 00000010h
008DA637: push 00440F1Ch
008DA63C: push var_1C
008DA63F: push var_20
008DA642: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DA647: mov var_30, eax
008DA64A: jmp 8DA650h
008DA64C: and var_30, 00000000h
008DA650: lea ecx, var_18
008DA653: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DA658: mov var_04, 00000000h
008DA65F: push 008DA670h
008DA664: jmp 8DA66Fh
008DA666: lea ecx, var_18
008DA669: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DA66E: ret 
End Sub

Private sub Form__8DA68F
008DA68F: push ebp
008DA690: mov ebp, esp
008DA692: sub esp, 0000000Ch
008DA695: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008DA69A: mov eax, fs:[00h]
008DA6A0: push eax
008DA6A1: mov fs:[00000000h], esp
008DA6A8: mov eax, 00000140h
008DA6AD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DA6B2: push ebx
008DA6B3: push esi
008DA6B4: push edi
008DA6B5: mov var_0C, esp
008DA6B8: mov var_08, 0040FE98h
008DA6BF: mov eax, [ebp+08h]
008DA6C2: and eax, 00000001h
008DA6C5: mov var_04, eax
008DA6C8: mov eax, [ebp+08h]
008DA6CB: and al, FEh
008DA6CD: mov [ebp+08h], eax
008DA6D0: mov eax, [ebp+08h]
008DA6D3: mov eax, [eax]
008DA6D5: push [ebp+08h]
008DA6D8: call [eax+04h]
008DA6DB: mov var_64, 80020004h
008DA6E2: mov var_6C, 0000000Ah
008DA6E9: mov var_54, 80020004h
008DA6F0: mov var_5C, 0000000Ah
008DA6F7: mov var_44, 80020004h
008DA6FE: mov var_4C, 0000000Ah
008DA705: mov var_74, 0046145Ch ; Show tutorial before proceeding? (RECOMMENDED)
008DA70C: mov var_7C, 00000008h
008DA713: lea edx, var_7C
008DA716: lea ecx, var_3C
008DA719: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008DA71E: lea eax, var_6C
008DA721: push eax
008DA722: lea eax, var_5C
008DA725: push eax
008DA726: lea eax, var_4C
008DA729: push eax
008DA72A: push 00000034h
008DA72C: lea eax, var_3C
008DA72F: push eax
008DA730: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008DA735: sub eax, 00000006h
008DA738: neg eax
008DA73A: sbb eax, eax
008DA73C: inc eax
008DA73D: neg eax
008DA73F: mov var_000000C8, ax
008DA746: lea eax, var_6C
008DA749: push eax
008DA74A: lea eax, var_5C
008DA74D: push eax
008DA74E: lea eax, var_4C
008DA751: push eax
008DA752: lea eax, var_3C
008DA755: push eax
008DA756: push 00000004h
008DA758: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DA75D: add esp, 00000014h
008DA760: movsx eax, word ptr var_000000C8
008DA767: test eax, eax
008DA769: jz 008DAF6Dh
008DA76F: cmp [008F529Ch], 00000000h
008DA776: jnz 8DA793h
008DA778: push 008F529Ch
008DA77D: push 00440F2Ch
008DA782: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DA787: mov var_00000114, 008F529Ch
008DA791: jmp 8DA79Dh
008DA793: mov var_00000114, 008F529Ch
008DA79D: mov eax, var_00000114
008DA7A3: mov eax, [eax]
008DA7A5: mov var_000000C8, eax
008DA7AB: lea eax, var_18
008DA7AE: push eax
008DA7AF: mov eax, var_000000C8
008DA7B5: mov eax, [eax]
008DA7B7: push var_000000C8
008DA7BD: call [eax+18h]
008DA7C0: fclex 
008DA7C2: mov var_000000CC, eax
008DA7C8: cmp var_000000CC, 00000000h
008DA7CF: jnl 8DA7F1h
008DA7D1: push 00000018h
008DA7D3: push 00440F1Ch
008DA7D8: push var_000000C8
008DA7DE: push var_000000CC
008DA7E4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DA7E9: mov var_00000118, eax
008DA7EF: jmp 8DA7F8h
008DA7F1: and var_00000118, 00000000h
008DA7F8: mov eax, var_18
008DA7FB: mov var_000000D0, eax
008DA801: lea eax, var_000000B0
008DA807: push eax
008DA808: mov eax, var_000000D0
008DA80E: mov eax, [eax]
008DA810: push var_000000D0
008DA816: call [eax+00000098h]
008DA81C: fclex 
008DA81E: mov var_000000D4, eax
008DA824: cmp var_000000D4, 00000000h
008DA82B: jnl 8DA850h
008DA82D: push 00000098h
008DA832: push 0044C888h
008DA837: push var_000000D0
008DA83D: push var_000000D4
008DA843: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DA848: mov var_0000011C, eax
008DA84E: jmp 8DA857h
008DA850: and var_0000011C, 00000000h
008DA857: mov eax, [ebp+08h]
008DA85A: mov eax, [eax]
008DA85C: push [ebp+08h]
008DA85F: call [eax+00000308h]
008DA865: push eax
008DA866: lea eax, var_1C
008DA869: push eax
008DA86A: call 00410A84h ; Set (object)
008DA86F: mov var_000000D8, eax
008DA875: lea eax, var_000000B4
008DA87B: push eax
008DA87C: mov eax, var_000000D8
008DA882: mov eax, [eax]
008DA884: push var_000000D8
008DA88A: call [eax+00000080h]
008DA890: fclex 
008DA892: mov var_000000DC, eax
008DA898: cmp var_000000DC, 00000000h
008DA89F: jnl 8DA8C4h
008DA8A1: push 00000080h
008DA8A6: push 00447A30h
008DA8AB: push var_000000D8
008DA8B1: push var_000000DC
008DA8B7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DA8BC: mov var_00000120, eax
008DA8C2: jmp 8DA8CBh
008DA8C4: and var_00000120, 00000000h
008DA8CB: cmp [008F529Ch], 00000000h
008DA8D2: jnz 8DA8EFh
008DA8D4: push 008F529Ch
008DA8D9: push 00440F2Ch
008DA8DE: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DA8E3: mov var_00000124, 008F529Ch
008DA8ED: jmp 8DA8F9h
008DA8EF: mov var_00000124, 008F529Ch
008DA8F9: mov eax, var_00000124
008DA8FF: mov eax, [eax]
008DA901: mov var_000000E0, eax
008DA907: lea eax, var_20
008DA90A: push eax
008DA90B: mov eax, var_000000E0
008DA911: mov eax, [eax]
008DA913: push var_000000E0
008DA919: call [eax+18h]
008DA91C: fclex 
008DA91E: mov var_000000E4, eax
008DA924: cmp var_000000E4, 00000000h
008DA92B: jnl 8DA94Dh
008DA92D: push 00000018h
008DA92F: push 00440F1Ch
008DA934: push var_000000E0
008DA93A: push var_000000E4
008DA940: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DA945: mov var_00000128, eax
008DA94B: jmp 8DA954h
008DA94D: and var_00000128, 00000000h
008DA954: mov eax, var_20
008DA957: mov var_000000E8, eax
008DA95D: lea eax, var_000000B8
008DA963: push eax
008DA964: mov eax, var_000000E8
008DA96A: mov eax, [eax]
008DA96C: push var_000000E8
008DA972: call [eax+50h]
008DA975: fclex 
008DA977: mov var_000000EC, eax
008DA97D: cmp var_000000EC, 00000000h
008DA984: jnl 8DA9A6h
008DA986: push 00000050h
008DA988: push 0044C888h
008DA98D: push var_000000E8
008DA993: push var_000000EC
008DA999: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DA99E: mov var_0000012C, eax
008DA9A4: jmp 8DA9ADh
008DA9A6: and var_0000012C, 00000000h
008DA9AD: mov eax, [ebp+08h]
008DA9B0: mov eax, [eax]
008DA9B2: push [ebp+08h]
008DA9B5: call [eax+00000308h]
008DA9BB: push eax
008DA9BC: lea eax, var_24
008DA9BF: push eax
008DA9C0: call 00410A84h ; Set (object)
008DA9C5: mov var_000000F0, eax
008DA9CB: lea eax, var_000000BC
008DA9D1: push eax
008DA9D2: mov eax, var_000000F0
008DA9D8: mov eax, [eax]
008DA9DA: push var_000000F0
008DA9E0: call [eax+00000088h]
008DA9E6: fclex 
008DA9E8: mov var_000000F4, eax
008DA9EE: cmp var_000000F4, 00000000h
008DA9F5: jnl 8DAA1Ah
008DA9F7: push 00000088h
008DA9FC: push 00447A30h
008DAA01: push var_000000F0
008DAA07: push var_000000F4
008DAA0D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DAA12: mov var_00000130, eax
008DAA18: jmp 8DAA21h
008DAA1A: and var_00000130, 00000000h
008DAA21: mov eax, [ebp+08h]
008DAA24: mov eax, [eax]
008DAA26: push [ebp+08h]
008DAA29: call [eax+00000308h]
008DAA2F: push eax
008DAA30: lea eax, var_28
008DAA33: push eax
008DAA34: call 00410A84h ; Set (object)
008DAA39: mov var_000000F8, eax
008DAA3F: lea eax, var_000000C0
008DAA45: push eax
008DAA46: mov eax, var_000000F8
008DAA4C: mov eax, [eax]
008DAA4E: push var_000000F8
008DAA54: call [eax+00000080h]
008DAA5A: fclex 
008DAA5C: mov var_000000FC, eax
008DAA62: cmp var_000000FC, 00000000h
008DAA69: jnl 8DAA8Eh
008DAA6B: push 00000080h
008DAA70: push 00447A30h
008DAA75: push var_000000F8
008DAA7B: push var_000000FC
008DAA81: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DAA86: mov var_00000134, eax
008DAA8C: jmp 8DAA95h
008DAA8E: and var_00000134, 00000000h
008DAA95: mov eax, [ebp+08h]
008DAA98: mov eax, [eax]
008DAA9A: push [ebp+08h]
008DAA9D: call [eax+00000308h]
008DAAA3: push eax
008DAAA4: lea eax, var_2C
008DAAA7: push eax
008DAAA8: call 00410A84h ; Set (object)
008DAAAD: mov var_00000100, eax
008DAAB3: lea eax, var_000000C4
008DAAB9: push eax
008DAABA: mov eax, var_00000100
008DAAC0: mov eax, [eax]
008DAAC2: push var_00000100
008DAAC8: call [eax+00000088h]
008DAACE: fclex 
008DAAD0: mov var_00000104, eax
008DAAD6: cmp var_00000104, 00000000h
008DAADD: jnl 8DAB02h
008DAADF: push 00000088h
008DAAE4: push 00447A30h
008DAAE9: push var_00000100
008DAAEF: push var_00000104
008DAAF5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DAAFA: mov var_00000138, eax
008DAB00: jmp 8DAB09h
008DAB02: and var_00000138, 00000000h
008DAB09: fld real4 ptr var_000000C4
008DAB0F: fstp real4 ptr var_00000094
008DAB15: mov var_0000009C, 00000004h
008DAB1F: fld real4 ptr var_000000C0
008DAB25: fstp real4 ptr var_00000084
008DAB2B: mov var_0000008C, 00000004h
008DAB35: fld real4 ptr var_000000B8
008DAB3B: cmp [008F2000h], 00000000h
008DAB42: jnz 8DAB4Ch
008DAB44: fdiv real4 ptr [00402B64h]
008DAB4A: jmp 8DAB57h
008DAB4C: push [00402B64h]
008DAB52: call 004106B8h ; msvbvm60.dll._adj_fdiv_m32
008DAB57: fld real4 ptr var_000000BC
008DAB5D: cmp [008F2000h], 00000000h
008DAB64: jnz 8DAB6Eh
008DAB66: fdiv real4 ptr [00402B64h]
008DAB6C: jmp 8DAB79h
008DAB6E: push [00402B64h]
008DAB74: call 004106B8h ; msvbvm60.dll._adj_fdiv_m32
008DAB79: fsubp st(1), st(0)
008DAB7B: fstp real4 ptr var_74
008DAB7E: fstsw ax
008DAB80: test al, 0Dh
008DAB82: jnz 008DAFE7h
008DAB88: mov var_7C, 00000004h
008DAB8F: push 00000010h
008DAB91: pop eax
008DAB92: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DAB97: lea esi, var_0000009C
008DAB9D: mov edi, esp
008DAB9F: movsd 
008DABA0: movsd 
008DABA1: movsd 
008DABA2: movsd 
008DABA3: push 00000010h
008DABA5: pop eax
008DABA6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DABAB: lea esi, var_0000008C
008DABB1: mov edi, esp
008DABB3: movsd 
008DABB4: movsd 
008DABB5: movsd 
008DABB6: movsd 
008DABB7: push 00000010h
008DABB9: pop eax
008DABBA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DABBF: lea esi, var_7C
008DABC2: mov edi, esp
008DABC4: movsd 
008DABC5: movsd 
008DABC6: movsd 
008DABC7: movsd 
008DABC8: fld real4 ptr var_000000B0
008DABCE: cmp [008F2000h], 00000000h
008DABD5: jnz 8DABDFh
008DABD7: fdiv real4 ptr [00402B64h]
008DABDD: jmp 8DABEAh
008DABDF: push [00402B64h]
008DABE5: call 004106B8h ; msvbvm60.dll._adj_fdiv_m32
008DABEA: fld real4 ptr var_000000B4
008DABF0: cmp [008F2000h], 00000000h
008DABF7: jnz 8DAC01h
008DABF9: fdiv real4 ptr [00402B64h]
008DABFF: jmp 8DAC0Ch
008DAC01: push [00402B64h]
008DAC07: call 004106B8h ; msvbvm60.dll._adj_fdiv_m32
008DAC0C: fsubp st(1), st(0)
008DAC0E: fstsw ax
008DAC10: test al, 0Dh
008DAC12: jnz 008DAFE7h
008DAC18: push ecx
008DAC19: fstp real4 ptr [esp]
008DAC1C: mov eax, [ebp+08h]
008DAC1F: mov eax, [eax]
008DAC21: push [ebp+08h]
008DAC24: call [eax+000002A4h]
008DAC2A: fclex 
008DAC2C: mov var_00000108, eax
008DAC32: cmp var_00000108, 00000000h
008DAC39: jnl 8DAC5Bh
008DAC3B: push 000002A4h
008DAC40: push 00461414h
008DAC45: push [ebp+08h]
008DAC48: push var_00000108
008DAC4E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DAC53: mov var_0000013C, eax
008DAC59: jmp 8DAC62h
008DAC5B: and var_0000013C, 00000000h
008DAC62: lea eax, var_2C
008DAC65: push eax
008DAC66: lea eax, var_28
008DAC69: push eax
008DAC6A: lea eax, var_24
008DAC6D: push eax
008DAC6E: lea eax, var_20
008DAC71: push eax
008DAC72: lea eax, var_1C
008DAC75: push eax
008DAC76: lea eax, var_18
008DAC79: push eax
008DAC7A: push 00000006h
008DAC7C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DAC81: add esp, 0000001Ch
008DAC84: and var_74, 00000000h
008DAC88: mov var_7C, 0000000Bh
008DAC8F: push 00000010h
008DAC91: pop eax
008DAC92: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DAC97: lea esi, var_7C
008DAC9A: mov edi, esp
008DAC9C: movsd 
008DAC9D: movsd 
008DAC9E: movsd 
008DAC9F: movsd 
008DACA0: push 80010007h
008DACA5: mov eax, [ebp+08h]
008DACA8: mov eax, [eax]
008DACAA: push [ebp+08h]
008DACAD: call [eax+00000318h]
008DACB3: push eax
008DACB4: lea eax, var_18
008DACB7: push eax
008DACB8: call 00410A84h ; Set (object)
008DACBD: push eax
008DACBE: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008DACC3: lea ecx, var_18
008DACC6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DACCB: mov eax, [ebp+08h]
008DACCE: mov eax, [eax]
008DACD0: push [ebp+08h]
008DACD3: call [eax+00000304h]
008DACD9: push eax
008DACDA: lea eax, var_18
008DACDD: push eax
008DACDE: call 00410A84h ; Set (object)
008DACE3: mov var_000000C8, eax
008DACE9: lea eax, var_1C
008DACEC: push eax
008DACED: push 00000000h
008DACEF: mov eax, var_000000C8
008DACF5: mov eax, [eax]
008DACF7: push var_000000C8
008DACFD: call [eax+40h]
008DAD00: fclex 
008DAD02: mov var_000000CC, eax
008DAD08: cmp var_000000CC, 00000000h
008DAD0F: jnl 8DAD31h
008DAD11: push 00000040h
008DAD13: push 00440DE8h
008DAD18: push var_000000C8
008DAD1E: push var_000000CC
008DAD24: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DAD29: mov var_00000140, eax
008DAD2F: jmp 8DAD38h
008DAD31: and var_00000140, 00000000h
008DAD38: mov eax, var_1C
008DAD3B: mov var_000000D0, eax
008DAD41: push 00000000h
008DAD43: mov eax, var_000000D0
008DAD49: mov eax, [eax]
008DAD4B: push var_000000D0
008DAD51: call [eax+0000009Ch]
008DAD57: fclex 
008DAD59: mov var_000000D4, eax
008DAD5F: cmp var_000000D4, 00000000h
008DAD66: jnl 8DAD8Bh
008DAD68: push 0000009Ch
008DAD6D: push 004425E4h
008DAD72: push var_000000D0
008DAD78: push var_000000D4
008DAD7E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DAD83: mov var_00000144, eax
008DAD89: jmp 8DAD92h
008DAD8B: and var_00000144, 00000000h
008DAD92: lea eax, var_1C
008DAD95: push eax
008DAD96: lea eax, var_18
008DAD99: push eax
008DAD9A: push 00000002h
008DAD9C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DADA1: add esp, 0000000Ch
008DADA4: mov eax, [ebp+08h]
008DADA7: mov eax, [eax]
008DADA9: push [ebp+08h]
008DADAC: call [eax+00000304h]
008DADB2: push eax
008DADB3: lea eax, var_18
008DADB6: push eax
008DADB7: call 00410A84h ; Set (object)
008DADBC: mov var_000000C8, eax
008DADC2: lea eax, var_1C
008DADC5: push eax
008DADC6: push 00000001h
008DADC8: mov eax, var_000000C8
008DADCE: mov eax, [eax]
008DADD0: push var_000000C8
008DADD6: call [eax+40h]
008DADD9: fclex 
008DADDB: mov var_000000CC, eax
008DADE1: cmp var_000000CC, 00000000h
008DADE8: jnl 8DAE0Ah
008DADEA: push 00000040h
008DADEC: push 00440DE8h
008DADF1: push var_000000C8
008DADF7: push var_000000CC
008DADFD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DAE02: mov var_00000148, eax
008DAE08: jmp 8DAE11h
008DAE0A: and var_00000148, 00000000h
008DAE11: mov eax, var_1C
008DAE14: mov var_000000D0, eax
008DAE1A: push 00000000h
008DAE1C: mov eax, var_000000D0
008DAE22: mov eax, [eax]
008DAE24: push var_000000D0
008DAE2A: call [eax+0000009Ch]
008DAE30: fclex 
008DAE32: mov var_000000D4, eax
008DAE38: cmp var_000000D4, 00000000h
008DAE3F: jnl 8DAE64h
008DAE41: push 0000009Ch
008DAE46: push 004425E4h
008DAE4B: push var_000000D0
008DAE51: push var_000000D4
008DAE57: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DAE5C: mov var_0000014C, eax
008DAE62: jmp 8DAE6Bh
008DAE64: and var_0000014C, 00000000h
008DAE6B: lea eax, var_1C
008DAE6E: push eax
008DAE6F: lea eax, var_18
008DAE72: push eax
008DAE73: push 00000002h
008DAE75: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DAE7A: add esp, 0000000Ch
008DAE7D: mov eax, [ebp+08h]
008DAE80: mov eax, [eax]
008DAE82: push [ebp+08h]
008DAE85: call [eax+00000300h]
008DAE8B: push eax
008DAE8C: lea eax, var_18
008DAE8F: push eax
008DAE90: call 00410A84h ; Set (object)
008DAE95: mov var_000000C8, eax
008DAE9B: push 00000000h
008DAE9D: mov eax, var_000000C8
008DAEA3: mov eax, [eax]
008DAEA5: push var_000000C8
008DAEAB: call [eax+00000094h]
008DAEB1: fclex 
008DAEB3: mov var_000000CC, eax
008DAEB9: cmp var_000000CC, 00000000h
008DAEC0: jnl 8DAEE5h
008DAEC2: push 00000094h
008DAEC7: push 0044CDB4h
008DAECC: push var_000000C8
008DAED2: push var_000000CC
008DAED8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DAEDD: mov var_00000150, eax
008DAEE3: jmp 8DAEECh
008DAEE5: and var_00000150, 00000000h
008DAEEC: lea ecx, var_18
008DAEEF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DAEF4: mov eax, [ebp+08h]
008DAEF7: mov eax, [eax]
008DAEF9: push [ebp+08h]
008DAEFC: call [eax+000002FCh]
008DAF02: push eax
008DAF03: lea eax, var_18
008DAF06: push eax
008DAF07: call 00410A84h ; Set (object)
008DAF0C: mov var_000000C8, eax
008DAF12: push 00000000h
008DAF14: mov eax, var_000000C8
008DAF1A: mov eax, [eax]
008DAF1C: push var_000000C8
008DAF22: call [eax+0000009Ch]
008DAF28: fclex 
008DAF2A: mov var_000000CC, eax
008DAF30: cmp var_000000CC, 00000000h
008DAF37: jnl 8DAF5Ch
008DAF39: push 0000009Ch
008DAF3E: push 00447A30h
008DAF43: push var_000000C8
008DAF49: push var_000000CC
008DAF4F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DAF54: mov var_00000154, eax
008DAF5A: jmp 8DAF63h
008DAF5C: and var_00000154, 00000000h
008DAF63: lea ecx, var_18
008DAF66: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DAF6B: jmp 8DAF7Bh
008DAF6D: mov eax, [ebp+08h]
008DAF70: mov eax, [eax]
008DAF72: push [ebp+08h]
008DAF75: call [eax+00000704h]
008DAF7B: mov var_04, 00000000h
008DAF82: wait 
008DAF83: push 008DAFC8h
008DAF88: jmp 8DAFC7h
008DAF8A: lea eax, var_2C
008DAF8D: push eax
008DAF8E: lea eax, var_28
008DAF91: push eax
008DAF92: lea eax, var_24
008DAF95: push eax
008DAF96: lea eax, var_20
008DAF99: push eax
008DAF9A: lea eax, var_1C
008DAF9D: push eax
008DAF9E: lea eax, var_18
008DAFA1: push eax
008DAFA2: push 00000006h
008DAFA4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DAFA9: add esp, 0000001Ch
008DAFAC: lea eax, var_6C
008DAFAF: push eax
008DAFB0: lea eax, var_5C
008DAFB3: push eax
008DAFB4: lea eax, var_4C
008DAFB7: push eax
008DAFB8: lea eax, var_3C
008DAFBB: push eax
008DAFBC: push 00000004h
008DAFBE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DAFC3: add esp, 00000014h
008DAFC6: ret 
End Sub

Private sub Form__8DB8D1
008DB8D1: push ebp
008DB8D2: mov ebp, esp
008DB8D4: sub esp, 0000000Ch
008DB8D7: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008DB8DC: mov eax, fs:[00h]
008DB8E2: push eax
008DB8E3: mov fs:[00000000h], esp
008DB8EA: mov eax, 000000C0h
008DB8EF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DB8F4: push ebx
008DB8F5: push esi
008DB8F6: push edi
008DB8F7: mov var_0C, esp
008DB8FA: mov var_08, 0040FEC0h
008DB901: mov eax, [ebp+08h]
008DB904: and eax, 00000001h
008DB907: mov var_04, eax
008DB90A: mov eax, [ebp+08h]
008DB90D: and al, FEh
008DB90F: mov [ebp+08h], eax
008DB912: mov eax, [ebp+08h]
008DB915: mov eax, [eax]
008DB917: push [ebp+08h]
008DB91A: call [eax+04h]
008DB91D: fldz 
008DB91F: fstp real4 ptr var_24
008DB922: mov var_2C, 00000004h
008DB929: and var_44, 00000000h
008DB92D: mov var_4C, 00000002h
008DB934: lea eax, var_000000A0
008DB93A: push eax
008DB93B: mov eax, [ebp+08h]
008DB93E: mov eax, [eax]
008DB940: push [ebp+08h]
008DB943: call [eax+00000080h]
008DB949: fclex 
008DB94B: mov var_000000A8, eax
008DB951: cmp var_000000A8, 00000000h
008DB958: jnl 8DB97Ah
008DB95A: push 00000080h
008DB95F: push 00461414h
008DB964: push [ebp+08h]
008DB967: push var_000000A8
008DB96D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DB972: mov var_000000C4, eax
008DB978: jmp 8DB981h
008DB97A: and var_000000C4, 00000000h
008DB981: fld real4 ptr var_000000A0
008DB987: fstp real4 ptr var_64
008DB98A: mov var_6C, 00000004h
008DB991: lea eax, var_000000A4
008DB997: push eax
008DB998: mov eax, [ebp+08h]
008DB99B: mov eax, [eax]
008DB99D: push [ebp+08h]
008DB9A0: call [eax+00000088h]
008DB9A6: fclex 
008DB9A8: mov var_000000AC, eax
008DB9AE: cmp var_000000AC, 00000000h
008DB9B5: jnl 8DB9D7h
008DB9B7: push 00000088h
008DB9BC: push 00461414h
008DB9C1: push [ebp+08h]
008DB9C4: push var_000000AC
008DB9CA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DB9CF: mov var_000000C8, eax
008DB9D5: jmp 8DB9DEh
008DB9D7: and var_000000C8, 00000000h
008DB9DE: fld real4 ptr var_000000A4
008DB9E4: fstp real4 ptr var_00000084
008DB9EA: mov var_0000008C, 00000004h
008DB9F4: push 00000010h
008DB9F6: pop eax
008DB9F7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DB9FC: lea esi, var_2C
008DB9FF: mov edi, esp
008DBA01: movsd 
008DBA02: movsd 
008DBA03: movsd 
008DBA04: movsd 
008DBA05: push 00000010h
008DBA07: pop eax
008DBA08: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DBA0D: lea esi, var_4C
008DBA10: mov edi, esp
008DBA12: movsd 
008DBA13: movsd 
008DBA14: movsd 
008DBA15: movsd 
008DBA16: push 00000010h
008DBA18: pop eax
008DBA19: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DBA1E: lea esi, var_6C
008DBA21: mov edi, esp
008DBA23: movsd 
008DBA24: movsd 
008DBA25: movsd 
008DBA26: movsd 
008DBA27: push 00000010h
008DBA29: pop eax
008DBA2A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DBA2F: lea esi, var_0000008C
008DBA35: mov edi, esp
008DBA37: movsd 
008DBA38: movsd 
008DBA39: movsd 
008DBA3A: movsd 
008DBA3B: push 00000004h
008DBA3D: push 80011002h
008DBA42: mov eax, [ebp+08h]
008DBA45: mov eax, [eax]
008DBA47: push [ebp+08h]
008DBA4A: call [eax+00000318h]
008DBA50: push eax
008DBA51: lea eax, var_18
008DBA54: push eax
008DBA55: call 00410A84h ; Set (object)
008DBA5A: push eax
008DBA5B: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008DBA60: add esp, 0000004Ch
008DBA63: lea ecx, var_18
008DBA66: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DBA6B: lea eax, var_000000A0
008DBA71: push eax
008DBA72: mov eax, [ebp+08h]
008DBA75: mov eax, [eax]
008DBA77: push [ebp+08h]
008DBA7A: call [eax+00000088h]
008DBA80: fclex 
008DBA82: mov var_000000A8, eax
008DBA88: cmp var_000000A8, 00000000h
008DBA8F: jnl 8DBAB1h
008DBA91: push 00000088h
008DBA96: push 00461414h
008DBA9B: push [ebp+08h]
008DBA9E: push var_000000A8
008DBAA4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DBAA9: mov var_000000CC, eax
008DBAAF: jmp 8DBAB8h
008DBAB1: and var_000000CC, 00000000h
008DBAB8: mov eax, [ebp+08h]
008DBABB: mov eax, [eax]
008DBABD: push [ebp+08h]
008DBAC0: call [eax+000002FCh]
008DBAC6: push eax
008DBAC7: lea eax, var_18
008DBACA: push eax
008DBACB: call 00410A84h ; Set (object)
008DBAD0: mov var_000000AC, eax
008DBAD6: lea eax, var_000000A4
008DBADC: push eax
008DBADD: mov eax, var_000000AC
008DBAE3: mov eax, [eax]
008DBAE5: push var_000000AC
008DBAEB: call [eax+00000088h]
008DBAF1: fclex 
008DBAF3: mov var_000000B0, eax
008DBAF9: cmp var_000000B0, 00000000h
008DBB00: jnl 8DBB25h
008DBB02: push 00000088h
008DBB07: push 00447A30h
008DBB0C: push var_000000AC
008DBB12: push var_000000B0
008DBB18: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DBB1D: mov var_000000D0, eax
008DBB23: jmp 8DBB2Ch
008DBB25: and var_000000D0, 00000000h
008DBB2C: mov eax, [ebp+08h]
008DBB2F: mov eax, [eax]
008DBB31: push [ebp+08h]
008DBB34: call [eax+000002FCh]
008DBB3A: push eax
008DBB3B: lea eax, var_1C
008DBB3E: push eax
008DBB3F: call 00410A84h ; Set (object)
008DBB44: mov var_000000B4, eax
008DBB4A: mov var_44, 80020004h
008DBB51: mov var_4C, 0000000Ah
008DBB58: mov var_34, 80020004h
008DBB5F: mov var_3C, 0000000Ah
008DBB66: fld real4 ptr var_000000A0
008DBB6C: fsub real4 ptr var_000000A4
008DBB72: fsub real4 ptr [0040FEB8h]
008DBB78: fstp real4 ptr var_24
008DBB7B: fstsw ax
008DBB7D: test al, 0Dh
008DBB7F: jnz 008DBC6Ch
008DBB85: mov var_2C, 00000004h
008DBB8C: push 00000010h
008DBB8E: pop eax
008DBB8F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DBB94: lea esi, var_4C
008DBB97: mov edi, esp
008DBB99: movsd 
008DBB9A: movsd 
008DBB9B: movsd 
008DBB9C: movsd 
008DBB9D: push 00000010h
008DBB9F: pop eax
008DBBA0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DBBA5: lea esi, var_3C
008DBBA8: mov edi, esp
008DBBAA: movsd 
008DBBAB: movsd 
008DBBAC: movsd 
008DBBAD: movsd 
008DBBAE: push 00000010h
008DBBB0: pop eax
008DBBB1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DBBB6: lea esi, var_2C
008DBBB9: mov edi, esp
008DBBBB: movsd 
008DBBBC: movsd 
008DBBBD: movsd 
008DBBBE: movsd 
008DBBBF: fld real4 ptr [0040C814h]
008DBBC5: push ecx
008DBBC6: fstp real4 ptr [esp]
008DBBC9: mov eax, var_000000B4
008DBBCF: mov eax, [eax]
008DBBD1: push var_000000B4
008DBBD7: call [eax+00000178h]
008DBBDD: fclex 
008DBBDF: mov var_000000B8, eax
008DBBE5: cmp var_000000B8, 00000000h
008DBBEC: jnl 8DBC11h
008DBBEE: push 00000178h
008DBBF3: push 00447A30h
008DBBF8: push var_000000B4
008DBBFE: push var_000000B8
008DBC04: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DBC09: mov var_000000D4, eax
008DBC0F: jmp 8DBC18h
008DBC11: and var_000000D4, 00000000h
008DBC18: lea eax, var_1C
008DBC1B: push eax
008DBC1C: lea eax, var_18
008DBC1F: push eax
008DBC20: push 00000002h
008DBC22: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DBC27: add esp, 0000000Ch
008DBC2A: mov var_04, 00000000h
008DBC31: wait 
008DBC32: push 008DBC4Dh
008DBC37: jmp 8DBC4Ch
008DBC39: lea eax, var_1C
008DBC3C: push eax
008DBC3D: lea eax, var_18
008DBC40: push eax
008DBC41: push 00000002h
008DBC43: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DBC48: add esp, 0000000Ch
008DBC4B: ret 
End Sub

Private sub tmrMousePos__8DBC71
008DBC71: push ebp
008DBC72: mov ebp, esp
008DBC74: sub esp, 00000018h
008DBC77: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008DBC7C: mov eax, fs:[00h]
008DBC82: push eax
008DBC83: mov fs:[00000000h], esp
008DBC8A: mov eax, 000000A8h
008DBC8F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DBC94: push ebx
008DBC95: push esi
008DBC96: push edi
008DBC97: mov var_18, esp
008DBC9A: mov var_14, 0040FED0h
008DBCA1: mov eax, [ebp+08h]
008DBCA4: and eax, 00000001h
008DBCA7: mov var_10, eax
008DBCAA: mov eax, [ebp+08h]
008DBCAD: and al, FEh
008DBCAF: mov [ebp+08h], eax
008DBCB2: mov var_0C, 00000000h
008DBCB9: mov eax, [ebp+08h]
008DBCBC: mov eax, [eax]
008DBCBE: push [ebp+08h]
008DBCC1: call [eax+04h]
008DBCC4: mov var_04, 00000001h
008DBCCB: mov var_04, 00000002h
008DBCD2: push FFFFFFFFh
008DBCD4: call 00410A60h ; On Error ...
008DBCD9: mov var_04, 00000003h
008DBCE0: mov eax, [ebp+08h]
008DBCE3: add eax, 00000034h
008DBCE6: push eax
008DBCE7: call 0046143Ch
008DBCEC: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
008DBCF1: mov var_04, 00000004h
008DBCF8: mov eax, [ebp+08h]
008DBCFB: mov eax, [eax]
008DBCFD: push [ebp+08h]
008DBD00: call [eax+00000304h]
008DBD06: push eax
008DBD07: lea eax, var_2C
008DBD0A: push eax
008DBD0B: call 00410A84h ; Set (object)
008DBD10: mov var_00000088, eax
008DBD16: lea eax, var_30
008DBD19: push eax
008DBD1A: push 00000000h
008DBD1C: mov eax, var_00000088
008DBD22: mov eax, [eax]
008DBD24: push var_00000088
008DBD2A: call [eax+40h]
008DBD2D: fclex 
008DBD2F: mov var_0000008C, eax
008DBD35: cmp var_0000008C, 00000000h
008DBD3C: jnl 8DBD5Eh
008DBD3E: push 00000040h
008DBD40: push 00440DE8h
008DBD45: push var_00000088
008DBD4B: push var_0000008C
008DBD51: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DBD56: mov var_000000AC, eax
008DBD5C: jmp 8DBD65h
008DBD5E: and var_000000AC, 00000000h
008DBD65: mov eax, var_30
008DBD68: mov var_00000090, eax
008DBD6E: push 00461510h ; X:
008DBD73: mov eax, [ebp+08h]
008DBD76: push [eax+34h]
008DBD79: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008DBD7E: mov edx, eax
008DBD80: lea ecx, var_24
008DBD83: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DBD88: push eax
008DBD89: call 00410A18h ; &
008DBD8E: mov edx, eax
008DBD90: lea ecx, var_28
008DBD93: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DBD98: push eax
008DBD99: mov eax, var_00000090
008DBD9F: mov eax, [eax]
008DBDA1: push var_00000090
008DBDA7: call [eax+54h]
008DBDAA: fclex 
008DBDAC: mov var_00000094, eax
008DBDB2: cmp var_00000094, 00000000h
008DBDB9: jnl 8DBDDBh
008DBDBB: push 00000054h
008DBDBD: push 004425E4h
008DBDC2: push var_00000090
008DBDC8: push var_00000094
008DBDCE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DBDD3: mov var_000000B0, eax
008DBDD9: jmp 8DBDE2h
008DBDDB: and var_000000B0, 00000000h
008DBDE2: lea eax, var_28
008DBDE5: push eax
008DBDE6: lea eax, var_24
008DBDE9: push eax
008DBDEA: push 00000002h
008DBDEC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008DBDF1: add esp, 0000000Ch
008DBDF4: lea eax, var_30
008DBDF7: push eax
008DBDF8: lea eax, var_2C
008DBDFB: push eax
008DBDFC: push 00000002h
008DBDFE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DBE03: add esp, 0000000Ch
008DBE06: mov var_04, 00000005h
008DBE0D: mov eax, [ebp+08h]
008DBE10: mov eax, [eax]
008DBE12: push [ebp+08h]
008DBE15: call [eax+00000304h]
008DBE1B: push eax
008DBE1C: lea eax, var_2C
008DBE1F: push eax
008DBE20: call 00410A84h ; Set (object)
008DBE25: mov var_00000088, eax
008DBE2B: lea eax, var_30
008DBE2E: push eax
008DBE2F: push 00000001h
008DBE31: mov eax, var_00000088
008DBE37: mov eax, [eax]
008DBE39: push var_00000088
008DBE3F: call [eax+40h]
008DBE42: fclex 
008DBE44: mov var_0000008C, eax
008DBE4A: cmp var_0000008C, 00000000h
008DBE51: jnl 8DBE73h
008DBE53: push 00000040h
008DBE55: push 00440DE8h
008DBE5A: push var_00000088
008DBE60: push var_0000008C
008DBE66: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DBE6B: mov var_000000B4, eax
008DBE71: jmp 8DBE7Ah
008DBE73: and var_000000B4, 00000000h
008DBE7A: mov eax, var_30
008DBE7D: mov var_00000090, eax
008DBE83: push 0046151Ch ; Y:
008DBE88: mov eax, [ebp+08h]
008DBE8B: push [eax+38h]
008DBE8E: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008DBE93: mov edx, eax
008DBE95: lea ecx, var_24
008DBE98: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DBE9D: push eax
008DBE9E: call 00410A18h ; &
008DBEA3: mov edx, eax
008DBEA5: lea ecx, var_28
008DBEA8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DBEAD: push eax
008DBEAE: mov eax, var_00000090
008DBEB4: mov eax, [eax]
008DBEB6: push var_00000090
008DBEBC: call [eax+54h]
008DBEBF: fclex 
008DBEC1: mov var_00000094, eax
008DBEC7: cmp var_00000094, 00000000h
008DBECE: jnl 8DBEF0h
008DBED0: push 00000054h
008DBED2: push 004425E4h
008DBED7: push var_00000090
008DBEDD: push var_00000094
008DBEE3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DBEE8: mov var_000000B8, eax
008DBEEE: jmp 8DBEF7h
008DBEF0: and var_000000B8, 00000000h
008DBEF7: lea eax, var_28
008DBEFA: push eax
008DBEFB: lea eax, var_24
008DBEFE: push eax
008DBEFF: push 00000002h
008DBF01: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008DBF06: add esp, 0000000Ch
008DBF09: lea eax, var_30
008DBF0C: push eax
008DBF0D: lea eax, var_2C
008DBF10: push eax
008DBF11: push 00000002h
008DBF13: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DBF18: add esp, 0000000Ch
008DBF1B: mov var_04, 00000006h
008DBF22: mov eax, [ebp+08h]
008DBF25: mov eax, [eax]
008DBF27: push [ebp+08h]
008DBF2A: call [eax+00000304h]
008DBF30: push eax
008DBF31: lea eax, var_30
008DBF34: push eax
008DBF35: call 00410A84h ; Set (object)
008DBF3A: mov var_00000088, eax
008DBF40: lea eax, var_34
008DBF43: push eax
008DBF44: push 00000002h
008DBF46: mov eax, var_00000088
008DBF4C: mov eax, [eax]
008DBF4E: push var_00000088
008DBF54: call [eax+40h]
008DBF57: fclex 
008DBF59: mov var_0000008C, eax
008DBF5F: cmp var_0000008C, 00000000h
008DBF66: jnl 8DBF88h
008DBF68: push 00000040h
008DBF6A: push 00440DE8h
008DBF6F: push var_00000088
008DBF75: push var_0000008C
008DBF7B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DBF80: mov var_000000BC, eax
008DBF86: jmp 8DBF8Fh
008DBF88: and var_000000BC, 00000000h
008DBF8F: mov eax, var_34
008DBF92: mov var_00000090, eax
008DBF98: mov var_7C, 00461528h ; Scroll X:
008DBF9F: mov var_00000084, 00000008h
008DBFA9: lea eax, var_00000084
008DBFAF: push eax
008DBFB0: push 00000000h
008DBFB2: push 00461560h ; scrollLeft
008DBFB7: push 00000000h
008DBFB9: push 00461540h ; documentElement
008DBFBE: push 00000000h
008DBFC0: push 000000CBh
008DBFC5: mov eax, [ebp+08h]
008DBFC8: mov eax, [eax]
008DBFCA: push [ebp+08h]
008DBFCD: call [eax+00000318h]
008DBFD3: push eax
008DBFD4: lea eax, var_2C
008DBFD7: push eax
008DBFD8: call 00410A84h ; Set (object)
008DBFDD: push eax
008DBFDE: lea eax, var_44
008DBFE1: push eax
008DBFE2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DBFE7: add esp, 00000010h
008DBFEA: push eax
008DBFEB: lea eax, var_54
008DBFEE: push eax
008DBFEF: call 00410748h ; msvbvm60.dll.__vbaVarLateMemCallLdRf
008DBFF4: add esp, 00000010h
008DBFF7: push eax
008DBFF8: lea eax, var_64
008DBFFB: push eax
008DBFFC: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
008DC001: add esp, 00000010h
008DC004: push eax
008DC005: lea eax, var_74
008DC008: push eax
008DC009: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008DC00E: push eax
008DC00F: lea eax, var_24
008DC012: push eax
008DC013: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008DC018: push eax
008DC019: mov eax, var_00000090
008DC01F: mov eax, [eax]
008DC021: push var_00000090
008DC027: call [eax+54h]
008DC02A: fclex 
008DC02C: mov var_00000094, eax
008DC032: cmp var_00000094, 00000000h
008DC039: jnl 8DC05Bh
008DC03B: push 00000054h
008DC03D: push 004425E4h
008DC042: push var_00000090
008DC048: push var_00000094
008DC04E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DC053: mov var_000000C0, eax
008DC059: jmp 8DC062h
008DC05B: and var_000000C0, 00000000h
008DC062: lea ecx, var_24
008DC065: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008DC06A: lea eax, var_34
008DC06D: push eax
008DC06E: lea eax, var_30
008DC071: push eax
008DC072: lea eax, var_2C
008DC075: push eax
008DC076: push 00000003h
008DC078: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DC07D: add esp, 00000010h
008DC080: lea eax, var_74
008DC083: push eax
008DC084: lea eax, var_64
008DC087: push eax
008DC088: lea eax, var_54
008DC08B: push eax
008DC08C: lea eax, var_44
008DC08F: push eax
008DC090: push 00000004h
008DC092: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DC097: add esp, 00000014h
008DC09A: mov var_04, 00000007h
008DC0A1: mov eax, [ebp+08h]
008DC0A4: mov eax, [eax]
008DC0A6: push [ebp+08h]
008DC0A9: call [eax+00000304h]
008DC0AF: push eax
008DC0B0: lea eax, var_30
008DC0B3: push eax
008DC0B4: call 00410A84h ; Set (object)
008DC0B9: mov var_00000088, eax
008DC0BF: lea eax, var_34
008DC0C2: push eax
008DC0C3: push 00000003h
008DC0C5: mov eax, var_00000088
008DC0CB: mov eax, [eax]
008DC0CD: push var_00000088
008DC0D3: call [eax+40h]
008DC0D6: fclex 
008DC0D8: mov var_0000008C, eax
008DC0DE: cmp var_0000008C, 00000000h
008DC0E5: jnl 8DC107h
008DC0E7: push 00000040h
008DC0E9: push 00440DE8h
008DC0EE: push var_00000088
008DC0F4: push var_0000008C
008DC0FA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DC0FF: mov var_000000C4, eax
008DC105: jmp 8DC10Eh
008DC107: and var_000000C4, 00000000h
008DC10E: mov eax, var_34
008DC111: mov var_00000090, eax
008DC117: mov var_7C, 0046157Ch ; Scroll Y:
008DC11E: mov var_00000084, 00000008h
008DC128: lea eax, var_00000084
008DC12E: push eax
008DC12F: push 00000000h
008DC131: push 00461594h ; scrollTop
008DC136: push 00000000h
008DC138: push 00461540h ; documentElement
008DC13D: push 00000000h
008DC13F: push 000000CBh
008DC144: mov eax, [ebp+08h]
008DC147: mov eax, [eax]
008DC149: push [ebp+08h]
008DC14C: call [eax+00000318h]
008DC152: push eax
008DC153: lea eax, var_2C
008DC156: push eax
008DC157: call 00410A84h ; Set (object)
008DC15C: push eax
008DC15D: lea eax, var_44
008DC160: push eax
008DC161: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008DC166: add esp, 00000010h
008DC169: push eax
008DC16A: lea eax, var_54
008DC16D: push eax
008DC16E: call 00410748h ; msvbvm60.dll.__vbaVarLateMemCallLdRf
008DC173: add esp, 00000010h
008DC176: push eax
008DC177: lea eax, var_64
008DC17A: push eax
008DC17B: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
008DC180: add esp, 00000010h
008DC183: push eax
008DC184: lea eax, var_74
008DC187: push eax
008DC188: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008DC18D: push eax
008DC18E: lea eax, var_24
008DC191: push eax
008DC192: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008DC197: push eax
008DC198: mov eax, var_00000090
008DC19E: mov eax, [eax]
008DC1A0: push var_00000090
008DC1A6: call [eax+54h]
008DC1A9: fclex 
008DC1AB: mov var_00000094, eax
008DC1B1: cmp var_00000094, 00000000h
008DC1B8: jnl 8DC1DAh
008DC1BA: push 00000054h
008DC1BC: push 004425E4h
008DC1C1: push var_00000090
008DC1C7: push var_00000094
008DC1CD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DC1D2: mov var_000000C8, eax
008DC1D8: jmp 8DC1E1h
008DC1DA: and var_000000C8, 00000000h
008DC1E1: lea ecx, var_24
008DC1E4: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008DC1E9: lea eax, var_34
008DC1EC: push eax
008DC1ED: lea eax, var_30
008DC1F0: push eax
008DC1F1: lea eax, var_2C
008DC1F4: push eax
008DC1F5: push 00000003h
008DC1F7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DC1FC: add esp, 00000010h
008DC1FF: lea eax, var_74
008DC202: push eax
008DC203: lea eax, var_64
008DC206: push eax
008DC207: lea eax, var_54
008DC20A: push eax
008DC20B: lea eax, var_44
008DC20E: push eax
008DC20F: push 00000004h
008DC211: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DC216: add esp, 00000014h
008DC219: mov var_10, 00000000h
008DC220: push 008DC26Bh
008DC225: jmp 8DC26Ah
008DC227: lea eax, var_28
008DC22A: push eax
008DC22B: lea eax, var_24
008DC22E: push eax
008DC22F: push 00000002h
008DC231: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008DC236: add esp, 0000000Ch
008DC239: lea eax, var_34
008DC23C: push eax
008DC23D: lea eax, var_30
008DC240: push eax
008DC241: lea eax, var_2C
008DC244: push eax
008DC245: push 00000003h
008DC247: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DC24C: add esp, 00000010h
008DC24F: lea eax, var_74
008DC252: push eax
008DC253: lea eax, var_64
008DC256: push eax
008DC257: lea eax, var_54
008DC25A: push eax
008DC25B: lea eax, var_44
008DC25E: push eax
008DC25F: push 00000004h
008DC261: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DC266: add esp, 00000014h
008DC269: ret 
End Sub

Private sub unknown_8DAFEC
008DAFEC: push ebp
008DAFED: mov ebp, esp
008DAFEF: push ecx
008DAFF0: push ecx
008DAFF1: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008DAFF6: mov eax, fs:[00h]
008DAFFC: push eax
008DAFFD: mov fs:[00000000h], esp
008DB004: mov eax, 0000015Ch
008DB009: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DB00E: push ebx
008DB00F: push esi
008DB010: push edi
008DB011: mov var_08, esp
008DB014: mov var_04, 0040FEA8h
008DB01B: mov var_00000084, 80020004h
008DB025: mov var_0000008C, 0000000Ah
008DB02F: mov var_74, 80020004h
008DB036: mov var_7C, 0000000Ah
008DB03D: mov var_64, 80020004h
008DB044: mov var_6C, 0000000Ah
008DB04B: mov var_54, 80020004h
008DB052: mov var_5C, 0000000Ah
008DB059: mov var_44, 80020004h
008DB060: mov var_4C, 0000000Ah
008DB067: mov var_34, 80020004h
008DB06E: mov var_3C, 0000000Ah
008DB075: mov var_00000094, 004614C0h ; Enter the URL to the target web site
008DB07F: mov var_0000009C, 00000008h
008DB089: lea edx, var_0000009C
008DB08F: lea ecx, var_2C
008DB092: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008DB097: lea eax, var_0000008C
008DB09D: push eax
008DB09E: lea eax, var_7C
008DB0A1: push eax
008DB0A2: lea eax, var_6C
008DB0A5: push eax
008DB0A6: lea eax, var_5C
008DB0A9: push eax
008DB0AA: lea eax, var_4C
008DB0AD: push eax
008DB0AE: lea eax, var_3C
008DB0B1: push eax
008DB0B2: lea eax, var_2C
008DB0B5: push eax
008DB0B6: call 00410994h ; InputBox
008DB0BB: mov edx, eax
008DB0BD: lea ecx, var_14
008DB0C0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008DB0C5: lea eax, var_0000008C
008DB0CB: push eax
008DB0CC: lea eax, var_7C
008DB0CF: push eax
008DB0D0: lea eax, var_6C
008DB0D3: push eax
008DB0D4: lea eax, var_5C
008DB0D7: push eax
008DB0D8: lea eax, var_4C
008DB0DB: push eax
008DB0DC: lea eax, var_3C
008DB0DF: push eax
008DB0E0: lea eax, var_2C
008DB0E3: push eax
008DB0E4: push 00000007h
008DB0E6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DB0EB: add esp, 00000020h
008DB0EE: push var_14
008DB0F1: push 00000000h
008DB0F3: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008DB0F8: test eax, eax
008DB0FA: jnz 008DB19Ah
008DB100: cmp [008F529Ch], 00000000h
008DB107: jnz 8DB124h
008DB109: push 008F529Ch
008DB10E: push 00440F2Ch
008DB113: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DB118: mov var_00000130, 008F529Ch
008DB122: jmp 8DB12Eh
008DB124: mov var_00000130, 008F529Ch
008DB12E: mov eax, var_00000130
008DB134: mov eax, [eax]
008DB136: mov var_00000108, eax
008DB13C: push [ebp+08h]
008DB13F: lea eax, var_18
008DB142: push eax
008DB143: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008DB148: push eax
008DB149: mov eax, var_00000108
008DB14F: mov eax, [eax]
008DB151: push var_00000108
008DB157: call [eax+10h]
008DB15A: fclex 
008DB15C: mov var_0000010C, eax
008DB162: cmp var_0000010C, 00000000h
008DB169: jnl 8DB18Bh
008DB16B: push 00000010h
008DB16D: push 00440F1Ch
008DB172: push var_00000108
008DB178: push var_0000010C
008DB17E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DB183: mov var_00000134, eax
008DB189: jmp 8DB192h
008DB18B: and var_00000134, 00000000h
008DB192: lea ecx, var_18
008DB195: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DB19A: mov eax, [ebp+08h]
008DB19D: mov eax, [eax]
008DB19F: push [ebp+08h]
008DB1A2: call [eax+00000308h]
008DB1A8: push eax
008DB1A9: lea eax, var_18
008DB1AC: push eax
008DB1AD: call 00410A84h ; Set (object)
008DB1B2: mov var_00000108, eax
008DB1B8: push 00000000h
008DB1BA: mov eax, var_00000108
008DB1C0: mov eax, [eax]
008DB1C2: push var_00000108
008DB1C8: call [eax+0000009Ch]
008DB1CE: fclex 
008DB1D0: mov var_0000010C, eax
008DB1D6: cmp var_0000010C, 00000000h
008DB1DD: jnl 8DB202h
008DB1DF: push 0000009Ch
008DB1E4: push 00447A30h
008DB1E9: push var_00000108
008DB1EF: push var_0000010C
008DB1F5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DB1FA: mov var_00000138, eax
008DB200: jmp 8DB209h
008DB202: and var_00000138, 00000000h
008DB209: lea ecx, var_18
008DB20C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DB211: or var_00000094, FFFFFFFFh
008DB218: mov var_0000009C, 0000000Bh
008DB222: push 00000010h
008DB224: pop eax
008DB225: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DB22A: lea esi, var_0000009C
008DB230: mov edi, esp
008DB232: movsd 
008DB233: movsd 
008DB234: movsd 
008DB235: movsd 
008DB236: push 80010007h
008DB23B: mov eax, [ebp+08h]
008DB23E: mov eax, [eax]
008DB240: push [ebp+08h]
008DB243: call [eax+00000318h]
008DB249: push eax
008DB24A: lea eax, var_18
008DB24D: push eax
008DB24E: call 00410A84h ; Set (object)
008DB253: push eax
008DB254: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008DB259: lea ecx, var_18
008DB25C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DB261: mov eax, [ebp+08h]
008DB264: mov eax, [eax]
008DB266: push [ebp+08h]
008DB269: call [eax+00000304h]
008DB26F: push eax
008DB270: lea eax, var_18
008DB273: push eax
008DB274: call 00410A84h ; Set (object)
008DB279: mov var_00000108, eax
008DB27F: lea eax, var_1C
008DB282: push eax
008DB283: push 00000000h
008DB285: mov eax, var_00000108
008DB28B: mov eax, [eax]
008DB28D: push var_00000108
008DB293: call [eax+40h]
008DB296: fclex 
008DB298: mov var_0000010C, eax
008DB29E: cmp var_0000010C, 00000000h
008DB2A5: jnl 8DB2C7h
008DB2A7: push 00000040h
008DB2A9: push 00440DE8h
008DB2AE: push var_00000108
008DB2B4: push var_0000010C
008DB2BA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DB2BF: mov var_0000013C, eax
008DB2C5: jmp 8DB2CEh
008DB2C7: and var_0000013C, 00000000h
008DB2CE: mov eax, var_1C
008DB2D1: mov var_00000110, eax
008DB2D7: push FFFFFFFFh
008DB2D9: mov eax, var_00000110
008DB2DF: mov eax, [eax]
008DB2E1: push var_00000110
008DB2E7: call [eax+0000009Ch]
008DB2ED: fclex 
008DB2EF: mov var_00000114, eax
008DB2F5: cmp var_00000114, 00000000h
008DB2FC: jnl 8DB321h
008DB2FE: push 0000009Ch
008DB303: push 004425E4h
008DB308: push var_00000110
008DB30E: push var_00000114
008DB314: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DB319: mov var_00000140, eax
008DB31F: jmp 8DB328h
008DB321: and var_00000140, 00000000h
008DB328: lea eax, var_1C
008DB32B: push eax
008DB32C: lea eax, var_18
008DB32F: push eax
008DB330: push 00000002h
008DB332: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DB337: add esp, 0000000Ch
008DB33A: mov eax, [ebp+08h]
008DB33D: mov eax, [eax]
008DB33F: push [ebp+08h]
008DB342: call [eax+00000304h]
008DB348: push eax
008DB349: lea eax, var_18
008DB34C: push eax
008DB34D: call 00410A84h ; Set (object)
008DB352: mov var_00000108, eax
008DB358: lea eax, var_1C
008DB35B: push eax
008DB35C: push 00000001h
008DB35E: mov eax, var_00000108
008DB364: mov eax, [eax]
008DB366: push var_00000108
008DB36C: call [eax+40h]
008DB36F: fclex 
008DB371: mov var_0000010C, eax
008DB377: cmp var_0000010C, 00000000h
008DB37E: jnl 8DB3A0h
008DB380: push 00000040h
008DB382: push 00440DE8h
008DB387: push var_00000108
008DB38D: push var_0000010C
008DB393: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DB398: mov var_00000144, eax
008DB39E: jmp 8DB3A7h
008DB3A0: and var_00000144, 00000000h
008DB3A7: mov eax, var_1C
008DB3AA: mov var_00000110, eax
008DB3B0: push FFFFFFFFh
008DB3B2: mov eax, var_00000110
008DB3B8: mov eax, [eax]
008DB3BA: push var_00000110
008DB3C0: call [eax+0000009Ch]
008DB3C6: fclex 
008DB3C8: mov var_00000114, eax
008DB3CE: cmp var_00000114, 00000000h
008DB3D5: jnl 8DB3FAh
008DB3D7: push 0000009Ch
008DB3DC: push 004425E4h
008DB3E1: push var_00000110
008DB3E7: push var_00000114
008DB3ED: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DB3F2: mov var_00000148, eax
008DB3F8: jmp 8DB401h
008DB3FA: and var_00000148, 00000000h
008DB401: lea eax, var_1C
008DB404: push eax
008DB405: lea eax, var_18
008DB408: push eax
008DB409: push 00000002h
008DB40B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DB410: add esp, 0000000Ch
008DB413: mov eax, [ebp+08h]
008DB416: mov eax, [eax]
008DB418: push [ebp+08h]
008DB41B: call [eax+00000300h]
008DB421: push eax
008DB422: lea eax, var_18
008DB425: push eax
008DB426: call 00410A84h ; Set (object)
008DB42B: mov var_00000108, eax
008DB431: push FFFFFFFFh
008DB433: mov eax, var_00000108
008DB439: mov eax, [eax]
008DB43B: push var_00000108
008DB441: call [eax+00000094h]
008DB447: fclex 
008DB449: mov var_0000010C, eax
008DB44F: cmp var_0000010C, 00000000h
008DB456: jnl 8DB47Bh
008DB458: push 00000094h
008DB45D: push 0044CDB4h
008DB462: push var_00000108
008DB468: push var_0000010C
008DB46E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DB473: mov var_0000014C, eax
008DB479: jmp 8DB482h
008DB47B: and var_0000014C, 00000000h
008DB482: lea ecx, var_18
008DB485: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DB48A: mov eax, [ebp+08h]
008DB48D: mov eax, [eax]
008DB48F: push [ebp+08h]
008DB492: call [eax+000002FCh]
008DB498: push eax
008DB499: lea eax, var_18
008DB49C: push eax
008DB49D: call 00410A84h ; Set (object)
008DB4A2: mov var_00000108, eax
008DB4A8: push FFFFFFFFh
008DB4AA: mov eax, var_00000108
008DB4B0: mov eax, [eax]
008DB4B2: push var_00000108
008DB4B8: call [eax+0000009Ch]
008DB4BE: fclex 
008DB4C0: mov var_0000010C, eax
008DB4C6: cmp var_0000010C, 00000000h
008DB4CD: jnl 8DB4F2h
008DB4CF: push 0000009Ch
008DB4D4: push 00447A30h
008DB4D9: push var_00000108
008DB4DF: push var_0000010C
008DB4E5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DB4EA: mov var_00000150, eax
008DB4F0: jmp 8DB4F9h
008DB4F2: and var_00000150, 00000000h
008DB4F9: lea ecx, var_18
008DB4FC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DB501: or var_00000094, FFFFFFFFh
008DB508: mov var_0000009C, 0000000Bh
008DB512: push 00000010h
008DB514: pop eax
008DB515: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DB51A: lea esi, var_0000009C
008DB520: mov edi, esp
008DB522: movsd 
008DB523: movsd 
008DB524: movsd 
008DB525: movsd 
008DB526: push 00000227h
008DB52B: mov eax, [ebp+08h]
008DB52E: mov eax, [eax]
008DB530: push [ebp+08h]
008DB533: call [eax+00000318h]
008DB539: push eax
008DB53A: lea eax, var_18
008DB53D: push eax
008DB53E: call 00410A84h ; Set (object)
008DB543: push eax
008DB544: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008DB549: lea ecx, var_18
008DB54C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DB551: lea eax, var_14
008DB554: mov var_00000094, eax
008DB55A: mov var_0000009C, 00004008h
008DB564: push 00000010h
008DB566: pop eax
008DB567: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DB56C: lea esi, var_0000009C
008DB572: mov edi, esp
008DB574: movsd 
008DB575: movsd 
008DB576: movsd 
008DB577: movsd 
008DB578: push 00000001h
008DB57A: push 00000068h
008DB57C: mov eax, [ebp+08h]
008DB57F: mov eax, [eax]
008DB581: push [ebp+08h]
008DB584: call [eax+00000318h]
008DB58A: push eax
008DB58B: lea eax, var_18
008DB58E: push eax
008DB58F: call 00410A84h ; Set (object)
008DB594: push eax
008DB595: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008DB59A: add esp, 0000001Ch
008DB59D: lea ecx, var_18
008DB5A0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008DB5A5: cmp [008F529Ch], 00000000h
008DB5AC: jnz 8DB5C9h
008DB5AE: push 008F529Ch
008DB5B3: push 00440F2Ch
008DB5B8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DB5BD: mov var_00000154, 008F529Ch
008DB5C7: jmp 8DB5D3h
008DB5C9: mov var_00000154, 008F529Ch
008DB5D3: mov eax, var_00000154
008DB5D9: mov eax, [eax]
008DB5DB: mov var_00000108, eax
008DB5E1: lea eax, var_18
008DB5E4: push eax
008DB5E5: mov eax, var_00000108
008DB5EB: mov eax, [eax]
008DB5ED: push var_00000108
008DB5F3: call [eax+18h]
008DB5F6: fclex 
008DB5F8: mov var_0000010C, eax
008DB5FE: cmp var_0000010C, 00000000h
008DB605: jnl 8DB627h
008DB607: push 00000018h
008DB609: push 00440F1Ch
008DB60E: push var_00000108
008DB614: push var_0000010C
008DB61A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DB61F: mov var_00000158, eax
008DB625: jmp 8DB62Eh
008DB627: and var_00000158, 00000000h
008DB62E: mov eax, var_18
008DB631: mov var_00000110, eax
008DB637: lea eax, var_00000100
008DB63D: push eax
008DB63E: mov eax, var_00000110
008DB644: mov eax, [eax]
008DB646: push var_00000110
008DB64C: call [eax+00000080h]
008DB652: fclex 
008DB654: mov var_00000114, eax
008DB65A: cmp var_00000114, 00000000h
008DB661: jnl 8DB686h
008DB663: push 00000080h
008DB668: push 0044C888h
008DB66D: push var_00000110
008DB673: push var_00000114
008DB679: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DB67E: mov var_0000015C, eax
008DB684: jmp 8DB68Dh
008DB686: and var_0000015C, 00000000h
008DB68D: cmp [008F529Ch], 00000000h
008DB694: jnz 8DB6B1h
008DB696: push 008F529Ch
008DB69B: push 00440F2Ch
008DB6A0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008DB6A5: mov var_00000160, 008F529Ch
008DB6AF: jmp 8DB6BBh
008DB6B1: mov var_00000160, 008F529Ch
008DB6BB: mov eax, var_00000160
008DB6C1: mov eax, [eax]
008DB6C3: mov var_00000118, eax
008DB6C9: lea eax, var_1C
008DB6CC: push eax
008DB6CD: mov eax, var_00000118
008DB6D3: mov eax, [eax]
008DB6D5: push var_00000118
008DB6DB: call [eax+18h]
008DB6DE: fclex 
008DB6E0: mov var_0000011C, eax
008DB6E6: cmp var_0000011C, 00000000h
008DB6ED: jnl 8DB70Fh
008DB6EF: push 00000018h
008DB6F1: push 00440F1Ch
008DB6F6: push var_00000118
008DB6FC: push var_0000011C
008DB702: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DB707: mov var_00000164, eax
008DB70D: jmp 8DB716h
008DB70F: and var_00000164, 00000000h
008DB716: mov eax, var_1C
008DB719: mov var_00000120, eax
008DB71F: lea eax, var_00000104
008DB725: push eax
008DB726: mov eax, var_00000120
008DB72C: mov eax, [eax]
008DB72E: push var_00000120
008DB734: call [eax+00000088h]
008DB73A: fclex 
008DB73C: mov var_00000124, eax
008DB742: cmp var_00000124, 00000000h
008DB749: jnl 8DB76Eh
008DB74B: push 00000088h
008DB750: push 0044C888h
008DB755: push var_00000120
008DB75B: push var_00000124
008DB761: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DB766: mov var_00000168, eax
008DB76C: jmp 8DB775h
008DB76E: and var_00000168, 00000000h
008DB775: fld real4 ptr [00402B54h]
008DB77B: fmul real4 ptr var_00000104
008DB781: fstp real4 ptr var_000000B4
008DB787: fstsw ax
008DB789: test al, 0Dh
008DB78B: jnz 008DB8CCh
008DB791: mov var_000000BC, 00000004h
008DB79B: fld real4 ptr [0040A1D0h]
008DB7A1: fmul real4 ptr var_00000100
008DB7A7: fstp real4 ptr var_000000A4
008DB7AD: fstsw ax
008DB7AF: test al, 0Dh
008DB7B1: jnz 008DB8CCh
008DB7B7: mov var_000000AC, 00000004h
008DB7C1: and var_00000094, 00000000h
008DB7C8: mov var_0000009C, 00000002h
008DB7D2: push 00000010h
008DB7D4: pop eax
008DB7D5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DB7DA: lea esi, var_000000BC
008DB7E0: mov edi, esp
008DB7E2: movsd 
008DB7E3: movsd 
008DB7E4: movsd 
008DB7E5: movsd 
008DB7E6: push 00000010h
008DB7E8: pop eax
008DB7E9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DB7EE: lea esi, var_000000AC
008DB7F4: mov edi, esp
008DB7F6: movsd 
008DB7F7: movsd 
008DB7F8: movsd 
008DB7F9: movsd 
008DB7FA: push 00000010h
008DB7FC: pop eax
008DB7FD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008DB802: lea esi, var_0000009C
008DB808: mov edi, esp
008DB80A: movsd 
008DB80B: movsd 
008DB80C: movsd 
008DB80D: movsd 
008DB80E: fldz 
008DB810: push ecx
008DB811: fstp real4 ptr [esp]
008DB814: mov eax, [ebp+08h]
008DB817: mov eax, [eax]
008DB819: push [ebp+08h]
008DB81C: call [eax+000002A4h]
008DB822: fclex 
008DB824: mov var_00000128, eax
008DB82A: cmp var_00000128, 00000000h
008DB831: jnl 8DB853h
008DB833: push 000002A4h
008DB838: push 00461414h
008DB83D: push [ebp+08h]
008DB840: push var_00000128
008DB846: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008DB84B: mov var_0000016C, eax
008DB851: jmp 8DB85Ah
008DB853: and var_0000016C, 00000000h
008DB85A: lea eax, var_1C
008DB85D: push eax
008DB85E: lea eax, var_18
008DB861: push eax
008DB862: push 00000002h
008DB864: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DB869: add esp, 0000000Ch
008DB86C: wait 
008DB86D: push 008DB8B9h
008DB872: jmp 8DB8B0h
008DB874: lea eax, var_1C
008DB877: push eax
008DB878: lea eax, var_18
008DB87B: push eax
008DB87C: push 00000002h
008DB87E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008DB883: add esp, 0000000Ch
008DB886: lea eax, var_0000008C
008DB88C: push eax
008DB88D: lea eax, var_7C
008DB890: push eax
008DB891: lea eax, var_6C
008DB894: push eax
008DB895: lea eax, var_5C
008DB898: push eax
008DB899: lea eax, var_4C
008DB89C: push eax
008DB89D: lea eax, var_3C
008DB8A0: push eax
008DB8A1: lea eax, var_2C
008DB8A4: push eax
008DB8A5: push 00000007h
008DB8A7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008DB8AC: add esp, 00000020h
008DB8AF: ret 
End Sub

