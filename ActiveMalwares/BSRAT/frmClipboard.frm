VERSION 5.00
Begin VB.Form frmClipboard
  Caption = "Clipboard manager"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmClipboard.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 13245
  ClientHeight = 7005
  StartUpPosition = 2 'CenterScreen
  Begin XtremeSuiteControls.ListView lstClipboard
    Left = 0
    Top = 0
    Width = 13215
    Height = 5655
    TabIndex = 0
  End
  Begin XtremeSuiteControls.GroupBox gbClipboard
    Left = 0
    Top = 5760
    Width = 13215
    Height = 1215
    TabIndex = 1
    Begin VB.TextBox txtClipboard
      Left = 120
      Top = 240
      Width = 10815
      Height = 855
      TabIndex = 4
      MultiLine = -1  'True
      ScrollBars = 2
    End
    Begin VB.Timer tmrInfo
      Interval = 1000
      Left = 12720
      Top = 0
    End
    Begin VB.Label lblInfoSel
      Caption = "N/A"
      Index = 1
      Left = 12360
      Top = 240
      Width = 735
      Height = 255
      TabIndex = 3
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblInfoSel
      Caption = "Selected targets:"
      Index = 0
      Left = 10920
      Top = 240
      Width = 1335
      Height = 255
      TabIndex = 2
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
  End
  Begin VB.Menu mnuClipboardMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuClipboard
      Index = 0
      Caption = "View data"
    End
    Begin VB.Menu mnuClipboard
      Index = 1
      Caption = "-"
    End
    Begin VB.Menu mnuClipboard
      Index = 2
      Caption = "Retrieve"
    End
    Begin VB.Menu mnuClipboard
      Index = 3
      Caption = "Set"
    End
    Begin VB.Menu mnuClipboard
      Index = 4
      Caption = "-"
    End
    Begin VB.Menu mnuClipboard
      Index = 5
      Caption = "Clear"
    End
  End
End

Attribute VB_Name = "frmClipboard"


Private sub Form__8D17EB
008D17EB: push ebp
008D17EC: mov ebp, esp
008D17EE: sub esp, 0000000Ch
008D17F1: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D17F6: mov eax, fs:[00h]
008D17FC: push eax
008D17FD: mov fs:[00000000h], esp
008D1804: mov eax, 000000A0h
008D1809: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D180E: push ebx
008D180F: push esi
008D1810: push edi
008D1811: mov var_0C, esp
008D1814: mov var_08, 0040FA30h
008D181B: mov eax, [ebp+08h]
008D181E: and eax, 00000001h
008D1821: mov var_04, eax
008D1824: mov eax, [ebp+08h]
008D1827: and al, FEh
008D1829: mov [ebp+08h], eax
008D182C: mov eax, [ebp+08h]
008D182F: mov eax, [eax]
008D1831: push [ebp+08h]
008D1834: call [eax+04h]
008D1837: mov var_34, 80020004h
008D183E: mov var_3C, 0000000Ah
008D1845: mov var_54, 80020004h
008D184C: mov var_5C, 0000000Ah
008D1853: mov var_74, 00446714h ; ID
008D185A: mov var_7C, 00000008h
008D1861: mov var_00000094, 00000384h
008D186B: mov var_0000009C, 00000002h
008D1875: push 00000010h
008D1877: pop eax
008D1878: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D187D: lea esi, var_3C
008D1880: mov edi, esp
008D1882: movsd 
008D1883: movsd 
008D1884: movsd 
008D1885: movsd 
008D1886: push 00000010h
008D1888: pop eax
008D1889: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D188E: lea esi, var_5C
008D1891: mov edi, esp
008D1893: movsd 
008D1894: movsd 
008D1895: movsd 
008D1896: movsd 
008D1897: push 00000010h
008D1899: pop eax
008D189A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D189F: lea esi, var_7C
008D18A2: mov edi, esp
008D18A4: movsd 
008D18A5: movsd 
008D18A6: movsd 
008D18A7: movsd 
008D18A8: push 00000010h
008D18AA: pop eax
008D18AB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D18B0: lea esi, var_0000009C
008D18B6: mov edi, esp
008D18B8: movsd 
008D18B9: movsd 
008D18BA: movsd 
008D18BB: movsd 
008D18BC: push 00000004h
008D18BE: push 00000002h
008D18C0: push 00445534h
008D18C5: push 00000000h
008D18C7: push 00000019h
008D18C9: mov eax, [ebp+08h]
008D18CC: mov eax, [eax]
008D18CE: push [ebp+08h]
008D18D1: call [eax+00000310h]
008D18D7: push eax
008D18D8: lea eax, var_18
008D18DB: push eax
008D18DC: call 00410A84h ; Set (object)
008D18E1: push eax
008D18E2: lea eax, var_2C
008D18E5: push eax
008D18E6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D18EB: add esp, 00000010h
008D18EE: push eax
008D18EF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D18F4: push eax
008D18F5: lea eax, var_1C
008D18F8: push eax
008D18F9: call 00410A84h ; Set (object)
008D18FE: push eax
008D18FF: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D1904: add esp, 0000004Ch
008D1907: lea eax, var_1C
008D190A: push eax
008D190B: lea eax, var_18
008D190E: push eax
008D190F: push 00000002h
008D1911: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D1916: add esp, 0000000Ch
008D1919: lea ecx, var_2C
008D191C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D1921: mov var_34, 80020004h
008D1928: mov var_3C, 0000000Ah
008D192F: mov var_54, 80020004h
008D1936: mov var_5C, 0000000Ah
008D193D: mov var_74, 00446720h ; WAN
008D1944: mov var_7C, 00000008h
008D194B: mov var_00000094, 00000708h
008D1955: mov var_0000009C, 00000002h
008D195F: push 00000010h
008D1961: pop eax
008D1962: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1967: lea esi, var_3C
008D196A: mov edi, esp
008D196C: movsd 
008D196D: movsd 
008D196E: movsd 
008D196F: movsd 
008D1970: push 00000010h
008D1972: pop eax
008D1973: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1978: lea esi, var_5C
008D197B: mov edi, esp
008D197D: movsd 
008D197E: movsd 
008D197F: movsd 
008D1980: movsd 
008D1981: push 00000010h
008D1983: pop eax
008D1984: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1989: lea esi, var_7C
008D198C: mov edi, esp
008D198E: movsd 
008D198F: movsd 
008D1990: movsd 
008D1991: movsd 
008D1992: push 00000010h
008D1994: pop eax
008D1995: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D199A: lea esi, var_0000009C
008D19A0: mov edi, esp
008D19A2: movsd 
008D19A3: movsd 
008D19A4: movsd 
008D19A5: movsd 
008D19A6: push 00000004h
008D19A8: push 00000002h
008D19AA: push 00445534h
008D19AF: push 00000000h
008D19B1: push 00000019h
008D19B3: mov eax, [ebp+08h]
008D19B6: mov eax, [eax]
008D19B8: push [ebp+08h]
008D19BB: call [eax+00000310h]
008D19C1: push eax
008D19C2: lea eax, var_18
008D19C5: push eax
008D19C6: call 00410A84h ; Set (object)
008D19CB: push eax
008D19CC: lea eax, var_2C
008D19CF: push eax
008D19D0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D19D5: add esp, 00000010h
008D19D8: push eax
008D19D9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D19DE: push eax
008D19DF: lea eax, var_1C
008D19E2: push eax
008D19E3: call 00410A84h ; Set (object)
008D19E8: push eax
008D19E9: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D19EE: add esp, 0000004Ch
008D19F1: lea eax, var_1C
008D19F4: push eax
008D19F5: lea eax, var_18
008D19F8: push eax
008D19F9: push 00000002h
008D19FB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D1A00: add esp, 0000000Ch
008D1A03: lea ecx, var_2C
008D1A06: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D1A0B: mov var_34, 80020004h
008D1A12: mov var_3C, 0000000Ah
008D1A19: mov var_54, 80020004h
008D1A20: mov var_5C, 0000000Ah
008D1A27: mov var_74, 0044672Ch ; LAN
008D1A2E: mov var_7C, 00000008h
008D1A35: mov var_00000094, 00000708h
008D1A3F: mov var_0000009C, 00000002h
008D1A49: push 00000010h
008D1A4B: pop eax
008D1A4C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1A51: lea esi, var_3C
008D1A54: mov edi, esp
008D1A56: movsd 
008D1A57: movsd 
008D1A58: movsd 
008D1A59: movsd 
008D1A5A: push 00000010h
008D1A5C: pop eax
008D1A5D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1A62: lea esi, var_5C
008D1A65: mov edi, esp
008D1A67: movsd 
008D1A68: movsd 
008D1A69: movsd 
008D1A6A: movsd 
008D1A6B: push 00000010h
008D1A6D: pop eax
008D1A6E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1A73: lea esi, var_7C
008D1A76: mov edi, esp
008D1A78: movsd 
008D1A79: movsd 
008D1A7A: movsd 
008D1A7B: movsd 
008D1A7C: push 00000010h
008D1A7E: pop eax
008D1A7F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1A84: lea esi, var_0000009C
008D1A8A: mov edi, esp
008D1A8C: movsd 
008D1A8D: movsd 
008D1A8E: movsd 
008D1A8F: movsd 
008D1A90: push 00000004h
008D1A92: push 00000002h
008D1A94: push 00445534h
008D1A99: push 00000000h
008D1A9B: push 00000019h
008D1A9D: mov eax, [ebp+08h]
008D1AA0: mov eax, [eax]
008D1AA2: push [ebp+08h]
008D1AA5: call [eax+00000310h]
008D1AAB: push eax
008D1AAC: lea eax, var_18
008D1AAF: push eax
008D1AB0: call 00410A84h ; Set (object)
008D1AB5: push eax
008D1AB6: lea eax, var_2C
008D1AB9: push eax
008D1ABA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D1ABF: add esp, 00000010h
008D1AC2: push eax
008D1AC3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D1AC8: push eax
008D1AC9: lea eax, var_1C
008D1ACC: push eax
008D1ACD: call 00410A84h ; Set (object)
008D1AD2: push eax
008D1AD3: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D1AD8: add esp, 0000004Ch
008D1ADB: lea eax, var_1C
008D1ADE: push eax
008D1ADF: lea eax, var_18
008D1AE2: push eax
008D1AE3: push 00000002h
008D1AE5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D1AEA: add esp, 0000000Ch
008D1AED: lea ecx, var_2C
008D1AF0: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D1AF5: mov var_34, 80020004h
008D1AFC: mov var_3C, 0000000Ah
008D1B03: mov var_54, 80020004h
008D1B0A: mov var_5C, 0000000Ah
008D1B11: mov var_74, 00446744h ; Username
008D1B18: mov var_7C, 00000008h
008D1B1F: mov var_00000094, 00000708h
008D1B29: mov var_0000009C, 00000002h
008D1B33: push 00000010h
008D1B35: pop eax
008D1B36: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1B3B: lea esi, var_3C
008D1B3E: mov edi, esp
008D1B40: movsd 
008D1B41: movsd 
008D1B42: movsd 
008D1B43: movsd 
008D1B44: push 00000010h
008D1B46: pop eax
008D1B47: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1B4C: lea esi, var_5C
008D1B4F: mov edi, esp
008D1B51: movsd 
008D1B52: movsd 
008D1B53: movsd 
008D1B54: movsd 
008D1B55: push 00000010h
008D1B57: pop eax
008D1B58: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1B5D: lea esi, var_7C
008D1B60: mov edi, esp
008D1B62: movsd 
008D1B63: movsd 
008D1B64: movsd 
008D1B65: movsd 
008D1B66: push 00000010h
008D1B68: pop eax
008D1B69: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1B6E: lea esi, var_0000009C
008D1B74: mov edi, esp
008D1B76: movsd 
008D1B77: movsd 
008D1B78: movsd 
008D1B79: movsd 
008D1B7A: push 00000004h
008D1B7C: push 00000002h
008D1B7E: push 00445534h
008D1B83: push 00000000h
008D1B85: push 00000019h
008D1B87: mov eax, [ebp+08h]
008D1B8A: mov eax, [eax]
008D1B8C: push [ebp+08h]
008D1B8F: call [eax+00000310h]
008D1B95: push eax
008D1B96: lea eax, var_18
008D1B99: push eax
008D1B9A: call 00410A84h ; Set (object)
008D1B9F: push eax
008D1BA0: lea eax, var_2C
008D1BA3: push eax
008D1BA4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D1BA9: add esp, 00000010h
008D1BAC: push eax
008D1BAD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D1BB2: push eax
008D1BB3: lea eax, var_1C
008D1BB6: push eax
008D1BB7: call 00410A84h ; Set (object)
008D1BBC: push eax
008D1BBD: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D1BC2: add esp, 0000004Ch
008D1BC5: lea eax, var_1C
008D1BC8: push eax
008D1BC9: lea eax, var_18
008D1BCC: push eax
008D1BCD: push 00000002h
008D1BCF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D1BD4: add esp, 0000000Ch
008D1BD7: lea ecx, var_2C
008D1BDA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D1BDF: mov var_34, 80020004h
008D1BE6: mov var_3C, 0000000Ah
008D1BED: mov var_54, 80020004h
008D1BF4: mov var_5C, 0000000Ah
008D1BFB: mov var_74, 0044675Ch ; Comp.Name
008D1C02: mov var_7C, 00000008h
008D1C09: mov var_00000094, 00000708h
008D1C13: mov var_0000009C, 00000002h
008D1C1D: push 00000010h
008D1C1F: pop eax
008D1C20: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1C25: lea esi, var_3C
008D1C28: mov edi, esp
008D1C2A: movsd 
008D1C2B: movsd 
008D1C2C: movsd 
008D1C2D: movsd 
008D1C2E: push 00000010h
008D1C30: pop eax
008D1C31: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1C36: lea esi, var_5C
008D1C39: mov edi, esp
008D1C3B: movsd 
008D1C3C: movsd 
008D1C3D: movsd 
008D1C3E: movsd 
008D1C3F: push 00000010h
008D1C41: pop eax
008D1C42: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1C47: lea esi, var_7C
008D1C4A: mov edi, esp
008D1C4C: movsd 
008D1C4D: movsd 
008D1C4E: movsd 
008D1C4F: movsd 
008D1C50: push 00000010h
008D1C52: pop eax
008D1C53: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1C58: lea esi, var_0000009C
008D1C5E: mov edi, esp
008D1C60: movsd 
008D1C61: movsd 
008D1C62: movsd 
008D1C63: movsd 
008D1C64: push 00000004h
008D1C66: push 00000002h
008D1C68: push 00445534h
008D1C6D: push 00000000h
008D1C6F: push 00000019h
008D1C71: mov eax, [ebp+08h]
008D1C74: mov eax, [eax]
008D1C76: push [ebp+08h]
008D1C79: call [eax+00000310h]
008D1C7F: push eax
008D1C80: lea eax, var_18
008D1C83: push eax
008D1C84: call 00410A84h ; Set (object)
008D1C89: push eax
008D1C8A: lea eax, var_2C
008D1C8D: push eax
008D1C8E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D1C93: add esp, 00000010h
008D1C96: push eax
008D1C97: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D1C9C: push eax
008D1C9D: lea eax, var_1C
008D1CA0: push eax
008D1CA1: call 00410A84h ; Set (object)
008D1CA6: push eax
008D1CA7: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D1CAC: add esp, 0000004Ch
008D1CAF: lea eax, var_1C
008D1CB2: push eax
008D1CB3: lea eax, var_18
008D1CB6: push eax
008D1CB7: push 00000002h
008D1CB9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D1CBE: add esp, 0000000Ch
008D1CC1: lea ecx, var_2C
008D1CC4: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D1CC9: mov var_34, 80020004h
008D1CD0: mov var_3C, 0000000Ah
008D1CD7: mov var_54, 80020004h
008D1CDE: mov var_5C, 0000000Ah
008D1CE5: mov var_74, 00461378h ; Clipboard
008D1CEC: mov var_7C, 00000008h
008D1CF3: mov var_00000094, 00001194h
008D1CFD: mov var_0000009C, 00000002h
008D1D07: push 00000010h
008D1D09: pop eax
008D1D0A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1D0F: lea esi, var_3C
008D1D12: mov edi, esp
008D1D14: movsd 
008D1D15: movsd 
008D1D16: movsd 
008D1D17: movsd 
008D1D18: push 00000010h
008D1D1A: pop eax
008D1D1B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1D20: lea esi, var_5C
008D1D23: mov edi, esp
008D1D25: movsd 
008D1D26: movsd 
008D1D27: movsd 
008D1D28: movsd 
008D1D29: push 00000010h
008D1D2B: pop eax
008D1D2C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1D31: lea esi, var_7C
008D1D34: mov edi, esp
008D1D36: movsd 
008D1D37: movsd 
008D1D38: movsd 
008D1D39: movsd 
008D1D3A: push 00000010h
008D1D3C: pop eax
008D1D3D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1D42: lea esi, var_0000009C
008D1D48: mov edi, esp
008D1D4A: movsd 
008D1D4B: movsd 
008D1D4C: movsd 
008D1D4D: movsd 
008D1D4E: push 00000004h
008D1D50: push 00000002h
008D1D52: push 00445534h
008D1D57: push 00000000h
008D1D59: push 00000019h
008D1D5B: mov eax, [ebp+08h]
008D1D5E: mov eax, [eax]
008D1D60: push [ebp+08h]
008D1D63: call [eax+00000310h]
008D1D69: push eax
008D1D6A: lea eax, var_18
008D1D6D: push eax
008D1D6E: call 00410A84h ; Set (object)
008D1D73: push eax
008D1D74: lea eax, var_2C
008D1D77: push eax
008D1D78: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D1D7D: add esp, 00000010h
008D1D80: push eax
008D1D81: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D1D86: push eax
008D1D87: lea eax, var_1C
008D1D8A: push eax
008D1D8B: call 00410A84h ; Set (object)
008D1D90: push eax
008D1D91: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D1D96: add esp, 0000004Ch
008D1D99: lea eax, var_1C
008D1D9C: push eax
008D1D9D: lea eax, var_18
008D1DA0: push eax
008D1DA1: push 00000002h
008D1DA3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D1DA8: add esp, 0000000Ch
008D1DAB: lea ecx, var_2C
008D1DAE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D1DB3: mov var_04, 00000000h
008D1DBA: push 008D1DDDh
008D1DBF: jmp 8D1DDCh
008D1DC1: lea eax, var_1C
008D1DC4: push eax
008D1DC5: lea eax, var_18
008D1DC8: push eax
008D1DC9: push 00000002h
008D1DCB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D1DD0: add esp, 0000000Ch
008D1DD3: lea ecx, var_2C
008D1DD6: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D1DDB: ret 
End Sub

Private sub Form__8D1DFC
008D1DFC: push ebp
008D1DFD: mov ebp, esp
008D1DFF: sub esp, 00000018h
008D1E02: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D1E07: mov eax, fs:[00h]
008D1E0D: push eax
008D1E0E: mov fs:[00000000h], esp
008D1E15: mov eax, 000000F4h
008D1E1A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1E1F: push ebx
008D1E20: push esi
008D1E21: push edi
008D1E22: mov var_18, esp
008D1E25: mov var_14, 0040FA40h
008D1E2C: mov eax, [ebp+08h]
008D1E2F: and eax, 00000001h
008D1E32: mov var_10, eax
008D1E35: mov eax, [ebp+08h]
008D1E38: and al, FEh
008D1E3A: mov [ebp+08h], eax
008D1E3D: mov var_0C, 00000000h
008D1E44: mov eax, [ebp+08h]
008D1E47: mov eax, [eax]
008D1E49: push [ebp+08h]
008D1E4C: call [eax+04h]
008D1E4F: mov var_04, 00000001h
008D1E56: mov var_04, 00000002h
008D1E5D: push FFFFFFFFh
008D1E5F: call 00410A60h ; On Error ...
008D1E64: mov var_04, 00000003h
008D1E6B: push 00000000h
008D1E6D: push 80010006h
008D1E72: mov eax, [ebp+08h]
008D1E75: mov eax, [eax]
008D1E77: push [ebp+08h]
008D1E7A: call [eax+00000314h]
008D1E80: push eax
008D1E81: lea eax, var_24
008D1E84: push eax
008D1E85: call 00410A84h ; Set (object)
008D1E8A: push eax
008D1E8B: lea eax, var_40
008D1E8E: push eax
008D1E8F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D1E94: add esp, 00000010h
008D1E97: fldz 
008D1E99: fstp real4 ptr var_68
008D1E9C: mov var_70, 00000004h
008D1EA3: and var_00000088, 00000000h
008D1EAA: mov var_00000090, 00000002h
008D1EB4: lea eax, var_000000E4
008D1EBA: push eax
008D1EBB: mov eax, [ebp+08h]
008D1EBE: mov eax, [eax]
008D1EC0: push [ebp+08h]
008D1EC3: call [eax+00000080h]
008D1EC9: fclex 
008D1ECB: mov var_000000EC, eax
008D1ED1: cmp var_000000EC, 00000000h
008D1ED8: jnl 8D1EFAh
008D1EDA: push 00000080h
008D1EDF: push 00448170h
008D1EE4: push [ebp+08h]
008D1EE7: push var_000000EC
008D1EED: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D1EF2: mov var_00000108, eax
008D1EF8: jmp 8D1F01h
008D1EFA: and var_00000108, 00000000h
008D1F01: fld real4 ptr var_000000E4
008D1F07: fsub real4 ptr [00402B7Ch]
008D1F0D: fstp real4 ptr var_000000A8
008D1F13: fstsw ax
008D1F15: test al, 0Dh
008D1F17: jnz 008D2292h
008D1F1D: mov var_000000B0, 00000004h
008D1F27: lea eax, var_000000E8
008D1F2D: push eax
008D1F2E: mov eax, [ebp+08h]
008D1F31: mov eax, [eax]
008D1F33: push [ebp+08h]
008D1F36: call [eax+00000088h]
008D1F3C: fclex 
008D1F3E: mov var_000000F0, eax
008D1F44: cmp var_000000F0, 00000000h
008D1F4B: jnl 8D1F6Dh
008D1F4D: push 00000088h
008D1F52: push 00448170h
008D1F57: push [ebp+08h]
008D1F5A: push var_000000F0
008D1F60: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D1F65: mov var_0000010C, eax
008D1F6B: jmp 8D1F74h
008D1F6D: and var_0000010C, 00000000h
008D1F74: lea eax, var_40
008D1F77: push eax
008D1F78: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008D1F7D: fsubr real4 ptr var_000000E8
008D1F83: fsub real4 ptr [00402B70h]
008D1F89: fstp real4 ptr var_000000C8
008D1F8F: fstsw ax
008D1F91: test al, 0Dh
008D1F93: jnz 008D2292h
008D1F99: mov var_000000D0, 00000004h
008D1FA3: push 00000010h
008D1FA5: pop eax
008D1FA6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1FAB: lea esi, var_70
008D1FAE: mov edi, esp
008D1FB0: movsd 
008D1FB1: movsd 
008D1FB2: movsd 
008D1FB3: movsd 
008D1FB4: push 00000010h
008D1FB6: pop eax
008D1FB7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1FBC: lea esi, var_00000090
008D1FC2: mov edi, esp
008D1FC4: movsd 
008D1FC5: movsd 
008D1FC6: movsd 
008D1FC7: movsd 
008D1FC8: push 00000010h
008D1FCA: pop eax
008D1FCB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1FD0: lea esi, var_000000B0
008D1FD6: mov edi, esp
008D1FD8: movsd 
008D1FD9: movsd 
008D1FDA: movsd 
008D1FDB: movsd 
008D1FDC: push 00000010h
008D1FDE: pop eax
008D1FDF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D1FE4: lea esi, var_000000D0
008D1FEA: mov edi, esp
008D1FEC: movsd 
008D1FED: movsd 
008D1FEE: movsd 
008D1FEF: movsd 
008D1FF0: push 00000004h
008D1FF2: push 80011002h
008D1FF7: mov eax, [ebp+08h]
008D1FFA: mov eax, [eax]
008D1FFC: push [ebp+08h]
008D1FFF: call [eax+00000310h]
008D2005: push eax
008D2006: lea eax, var_28
008D2009: push eax
008D200A: call 00410A84h ; Set (object)
008D200F: push eax
008D2010: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D2015: add esp, 0000004Ch
008D2018: lea eax, var_28
008D201B: push eax
008D201C: lea eax, var_24
008D201F: push eax
008D2020: push 00000002h
008D2022: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D2027: add esp, 0000000Ch
008D202A: lea ecx, var_40
008D202D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D2032: mov var_04, 00000004h
008D2039: push 00000000h
008D203B: push 80010006h
008D2040: mov eax, [ebp+08h]
008D2043: mov eax, [eax]
008D2045: push [ebp+08h]
008D2048: call [eax+00000310h]
008D204E: push eax
008D204F: lea eax, var_28
008D2052: push eax
008D2053: call 00410A84h ; Set (object)
008D2058: push eax
008D2059: lea eax, var_50
008D205C: push eax
008D205D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2062: add esp, 00000010h
008D2065: fldz 
008D2067: fstp real4 ptr var_68
008D206A: mov var_70, 00000004h
008D2071: push 00000000h
008D2073: push 80010004h
008D2078: mov eax, [ebp+08h]
008D207B: mov eax, [eax]
008D207D: push [ebp+08h]
008D2080: call [eax+00000310h]
008D2086: push eax
008D2087: lea eax, var_24
008D208A: push eax
008D208B: call 00410A84h ; Set (object)
008D2090: push eax
008D2091: lea eax, var_40
008D2094: push eax
008D2095: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D209A: add esp, 00000010h
008D209D: push eax
008D209E: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008D20A3: fstp real4 ptr var_00000110
008D20A9: lea eax, var_50
008D20AC: push eax
008D20AD: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008D20B2: fadd real4 ptr var_00000110
008D20B8: fadd real4 ptr [00402BA8h]
008D20BE: fstp real4 ptr var_00000088
008D20C4: fstsw ax
008D20C6: test al, 0Dh
008D20C8: jnz 008D2292h
008D20CE: mov var_00000090, 00000004h
008D20D8: lea eax, var_000000E4
008D20DE: push eax
008D20DF: mov eax, [ebp+08h]
008D20E2: mov eax, [eax]
008D20E4: push [ebp+08h]
008D20E7: call [eax+00000080h]
008D20ED: fclex 
008D20EF: mov var_000000EC, eax
008D20F5: cmp var_000000EC, 00000000h
008D20FC: jnl 8D211Eh
008D20FE: push 00000080h
008D2103: push 00448170h
008D2108: push [ebp+08h]
008D210B: push var_000000EC
008D2111: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D2116: mov var_00000114, eax
008D211C: jmp 8D2125h
008D211E: and var_00000114, 00000000h
008D2125: fld real4 ptr var_000000E4
008D212B: fsub real4 ptr [00402B7Ch]
008D2131: fstp real4 ptr var_000000A8
008D2137: fstsw ax
008D2139: test al, 0Dh
008D213B: jnz 008D2292h
008D2141: mov var_000000B0, 00000004h
008D214B: push 00000000h
008D214D: push 80010006h
008D2152: mov eax, [ebp+08h]
008D2155: mov eax, [eax]
008D2157: push [ebp+08h]
008D215A: call [eax+00000314h]
008D2160: push eax
008D2161: lea eax, var_2C
008D2164: push eax
008D2165: call 00410A84h ; Set (object)
008D216A: push eax
008D216B: lea eax, var_60
008D216E: push eax
008D216F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2174: add esp, 00000010h
008D2177: push eax
008D2178: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008D217D: fstp real4 ptr var_000000C8
008D2183: mov var_000000D0, 00000004h
008D218D: push 00000010h
008D218F: pop eax
008D2190: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D2195: lea esi, var_70
008D2198: mov edi, esp
008D219A: movsd 
008D219B: movsd 
008D219C: movsd 
008D219D: movsd 
008D219E: push 00000010h
008D21A0: pop eax
008D21A1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D21A6: lea esi, var_00000090
008D21AC: mov edi, esp
008D21AE: movsd 
008D21AF: movsd 
008D21B0: movsd 
008D21B1: movsd 
008D21B2: push 00000010h
008D21B4: pop eax
008D21B5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D21BA: lea esi, var_000000B0
008D21C0: mov edi, esp
008D21C2: movsd 
008D21C3: movsd 
008D21C4: movsd 
008D21C5: movsd 
008D21C6: push 00000010h
008D21C8: pop eax
008D21C9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D21CE: lea esi, var_000000D0
008D21D4: mov edi, esp
008D21D6: movsd 
008D21D7: movsd 
008D21D8: movsd 
008D21D9: movsd 
008D21DA: push 00000004h
008D21DC: push 80011001h
008D21E1: mov eax, [ebp+08h]
008D21E4: mov eax, [eax]
008D21E6: push [ebp+08h]
008D21E9: call [eax+00000314h]
008D21EF: push eax
008D21F0: lea eax, var_30
008D21F3: push eax
008D21F4: call 00410A84h ; Set (object)
008D21F9: push eax
008D21FA: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D21FF: add esp, 0000004Ch
008D2202: lea eax, var_30
008D2205: push eax
008D2206: lea eax, var_2C
008D2209: push eax
008D220A: lea eax, var_28
008D220D: push eax
008D220E: lea eax, var_24
008D2211: push eax
008D2212: push 00000004h
008D2214: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D2219: add esp, 00000014h
008D221C: lea eax, var_60
008D221F: push eax
008D2220: lea eax, var_50
008D2223: push eax
008D2224: lea eax, var_40
008D2227: push eax
008D2228: push 00000003h
008D222A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D222F: add esp, 00000010h
008D2232: mov var_10, 00000000h
008D2239: wait 
008D223A: push 008D2273h
008D223F: jmp 8D2272h
008D2241: lea eax, var_30
008D2244: push eax
008D2245: lea eax, var_2C
008D2248: push eax
008D2249: lea eax, var_28
008D224C: push eax
008D224D: lea eax, var_24
008D2250: push eax
008D2251: push 00000004h
008D2253: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D2258: add esp, 00000014h
008D225B: lea eax, var_60
008D225E: push eax
008D225F: lea eax, var_50
008D2262: push eax
008D2263: lea eax, var_40
008D2266: push eax
008D2267: push 00000003h
008D2269: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D226E: add esp, 00000010h
008D2271: ret 
End Sub

Private sub lstClipboard__8D386A
008D386A: push ebp
008D386B: mov ebp, esp
008D386D: sub esp, 0000000Ch
008D3870: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D3875: mov eax, fs:[00h]
008D387B: push eax
008D387C: mov fs:[00000000h], esp
008D3883: push 00000054h
008D3885: pop eax
008D3886: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D388B: push ebx
008D388C: push esi
008D388D: push edi
008D388E: mov var_0C, esp
008D3891: mov var_08, 0040FB68h
008D3898: mov eax, [ebp+08h]
008D389B: and eax, 00000001h
008D389E: mov var_04, eax
008D38A1: mov eax, [ebp+08h]
008D38A4: and al, FEh
008D38A6: mov [ebp+08h], eax
008D38A9: mov eax, [ebp+08h]
008D38AC: mov eax, [eax]
008D38AE: push [ebp+08h]
008D38B1: call [eax+04h]
008D38B4: mov eax, [ebp+0Ch]
008D38B7: cmp word ptr [eax], 0002h
008D38BB: jnz 008D3995h
008D38C1: mov var_50, 80020004h
008D38C8: mov var_58, 0000000Ah
008D38CF: mov var_40, 80020004h
008D38D6: mov var_48, 0000000Ah
008D38DD: mov var_30, 80020004h
008D38E4: mov var_38, 0000000Ah
008D38EB: mov var_20, 80020004h
008D38F2: mov var_28, 0000000Ah
008D38F9: push 00000010h
008D38FB: pop eax
008D38FC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D3901: lea esi, var_58
008D3904: mov edi, esp
008D3906: movsd 
008D3907: movsd 
008D3908: movsd 
008D3909: movsd 
008D390A: push 00000010h
008D390C: pop eax
008D390D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D3912: lea esi, var_48
008D3915: mov edi, esp
008D3917: movsd 
008D3918: movsd 
008D3919: movsd 
008D391A: movsd 
008D391B: push 00000010h
008D391D: pop eax
008D391E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D3923: lea esi, var_38
008D3926: mov edi, esp
008D3928: movsd 
008D3929: movsd 
008D392A: movsd 
008D392B: movsd 
008D392C: push 00000010h
008D392E: pop eax
008D392F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D3934: lea esi, var_28
008D3937: mov edi, esp
008D3939: movsd 
008D393A: movsd 
008D393B: movsd 
008D393C: movsd 
008D393D: mov eax, [ebp+08h]
008D3940: mov eax, [eax]
008D3942: push [ebp+08h]
008D3945: call [eax+00000308h]
008D394B: push eax
008D394C: lea eax, var_18
008D394F: push eax
008D3950: call 00410A84h ; Set (object)
008D3955: push eax
008D3956: mov eax, [ebp+08h]
008D3959: mov eax, [eax]
008D395B: push [ebp+08h]
008D395E: call [eax+000002BCh]
008D3964: fclex 
008D3966: mov var_5C, eax
008D3969: cmp var_5C, 00000000h
008D396D: jnl 8D3989h
008D396F: push 000002BCh
008D3974: push 00448170h
008D3979: push [ebp+08h]
008D397C: push var_5C
008D397F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D3984: mov var_68, eax
008D3987: jmp 8D398Dh
008D3989: and var_68, 00000000h
008D398D: lea ecx, var_18
008D3990: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D3995: mov var_04, 00000000h
008D399C: push 008D39ADh
008D39A1: jmp 8D39ACh
008D39A3: lea ecx, var_18
008D39A6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D39AB: ret 
End Sub

Private sub lstClipboard__8D230E
008D230E: push ebp
008D230F: mov ebp, esp
008D2311: sub esp, 00000018h
008D2314: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D2319: mov eax, fs:[00h]
008D231F: push eax
008D2320: mov fs:[00000000h], esp
008D2327: mov eax, 00000088h
008D232C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D2331: push ebx
008D2332: push esi
008D2333: push edi
008D2334: mov var_18, esp
008D2337: mov var_14, 0040FA80h
008D233E: mov eax, [ebp+08h]
008D2341: and eax, 00000001h
008D2344: mov var_10, eax
008D2347: mov eax, [ebp+08h]
008D234A: and al, FEh
008D234C: mov [ebp+08h], eax
008D234F: mov var_0C, 00000000h
008D2356: mov eax, [ebp+08h]
008D2359: mov eax, [eax]
008D235B: push [ebp+08h]
008D235E: call [eax+04h]
008D2361: mov var_04, 00000001h
008D2368: mov var_04, 00000002h
008D236F: push FFFFFFFFh
008D2371: call 00410A60h ; On Error ...
008D2376: mov var_04, 00000003h
008D237D: push 00000000h
008D237F: push 00000001h
008D2381: push 00440E58h
008D2386: push 00000000h
008D2388: push 00000017h
008D238A: mov eax, [ebp+08h]
008D238D: mov eax, [eax]
008D238F: push [ebp+08h]
008D2392: call [eax+00000310h]
008D2398: push eax
008D2399: lea eax, var_28
008D239C: push eax
008D239D: call 00410A84h ; Set (object)
008D23A2: push eax
008D23A3: lea eax, var_3C
008D23A6: push eax
008D23A7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D23AC: add esp, 00000010h
008D23AF: push eax
008D23B0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D23B5: push eax
008D23B6: lea eax, var_2C
008D23B9: push eax
008D23BA: call 00410A84h ; Set (object)
008D23BF: push eax
008D23C0: lea eax, var_4C
008D23C3: push eax
008D23C4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D23C9: add esp, 00000010h
008D23CC: push eax
008D23CD: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D23D2: mov edx, eax
008D23D4: lea ecx, var_24
008D23D7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D23DC: lea eax, var_2C
008D23DF: push eax
008D23E0: lea eax, var_28
008D23E3: push eax
008D23E4: push 00000002h
008D23E6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D23EB: add esp, 0000000Ch
008D23EE: lea eax, var_4C
008D23F1: push eax
008D23F2: lea eax, var_3C
008D23F5: push eax
008D23F6: push 00000002h
008D23F8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D23FD: add esp, 0000000Ch
008D2400: mov var_04, 00000004h
008D2407: and var_64, 00000000h
008D240B: mov var_6C, 00008008h
008D2412: push 00000000h
008D2414: push 00000001h
008D2416: push 00440E58h
008D241B: push 00000000h
008D241D: push 00000017h
008D241F: mov eax, [ebp+08h]
008D2422: mov eax, [eax]
008D2424: push [ebp+08h]
008D2427: call [eax+00000310h]
008D242D: push eax
008D242E: lea eax, var_28
008D2431: push eax
008D2432: call 00410A84h ; Set (object)
008D2437: push eax
008D2438: lea eax, var_3C
008D243B: push eax
008D243C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2441: add esp, 00000010h
008D2444: push eax
008D2445: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D244A: push eax
008D244B: lea eax, var_2C
008D244E: push eax
008D244F: call 00410A84h ; Set (object)
008D2454: push eax
008D2455: lea eax, var_4C
008D2458: push eax
008D2459: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D245E: add esp, 00000010h
008D2461: push eax
008D2462: lea eax, var_6C
008D2465: push eax
008D2466: call 00410868h ; msvbvm60.dll.__vbaVarTstNe
008D246B: mov var_80, ax
008D246F: lea eax, var_2C
008D2472: push eax
008D2473: lea eax, var_28
008D2476: push eax
008D2477: push 00000002h
008D2479: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D247E: add esp, 0000000Ch
008D2481: lea eax, var_4C
008D2484: push eax
008D2485: lea eax, var_3C
008D2488: push eax
008D2489: push 00000002h
008D248B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D2490: add esp, 0000000Ch
008D2493: movsx eax, word ptr var_80
008D2497: test eax, eax
008D2499: jz 008D260Eh
008D249F: mov var_04, 00000005h
008D24A6: cmp [008F2DE4h], 00000000h
008D24AD: jnz 8D24CAh
008D24AF: push 008F2DE4h
008D24B4: push 004119F4h
008D24B9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D24BE: mov var_0000009C, 008F2DE4h
008D24C8: jmp 8D24D4h
008D24CA: mov var_0000009C, 008F2DE4h
008D24D4: mov eax, var_0000009C
008D24DA: mov eax, [eax]
008D24DC: mov var_80, eax
008D24DF: mov eax, [ebp+08h]
008D24E2: mov var_74, eax
008D24E5: mov var_7C, 00000009h
008D24EC: mov var_64, 80020004h
008D24F3: mov var_6C, 0000000Ah
008D24FA: push 00000010h
008D24FC: pop eax
008D24FD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D2502: lea esi, var_7C
008D2505: mov edi, esp
008D2507: movsd 
008D2508: movsd 
008D2509: movsd 
008D250A: movsd 
008D250B: push 00000010h
008D250D: pop eax
008D250E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D2513: lea esi, var_6C
008D2516: mov edi, esp
008D2518: movsd 
008D2519: movsd 
008D251A: movsd 
008D251B: movsd 
008D251C: mov eax, var_80
008D251F: mov eax, [eax]
008D2521: push var_80
008D2524: call [eax+000002B0h]
008D252A: fclex 
008D252C: mov var_00000084, eax
008D2532: cmp var_00000084, 00000000h
008D2539: jnl 8D255Bh
008D253B: push 000002B0h
008D2540: push 0046138Ch
008D2545: push var_80
008D2548: push var_00000084
008D254E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D2553: mov var_000000A0, eax
008D2559: jmp 8D2562h
008D255B: and var_000000A0, 00000000h
008D2562: mov var_04, 00000006h
008D2569: cmp [008F2DE4h], 00000000h
008D2570: jnz 8D258Dh
008D2572: push 008F2DE4h
008D2577: push 004119F4h
008D257C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D2581: mov var_000000A4, 008F2DE4h
008D258B: jmp 8D2597h
008D258D: mov var_000000A4, 008F2DE4h
008D2597: mov eax, var_000000A4
008D259D: mov eax, [eax]
008D259F: mov ecx, var_000000A4
008D25A5: mov ecx, [ecx]
008D25A7: mov ecx, [ecx]
008D25A9: push eax
008D25AA: call [ecx+000002FCh]
008D25B0: push eax
008D25B1: lea eax, var_28
008D25B4: push eax
008D25B5: call 00410A84h ; Set (object)
008D25BA: mov var_80, eax
008D25BD: push var_24
008D25C0: mov eax, var_80
008D25C3: mov eax, [eax]
008D25C5: push var_80
008D25C8: call [eax+000000A4h]
008D25CE: fclex 
008D25D0: mov var_00000084, eax
008D25D6: cmp var_00000084, 00000000h
008D25DD: jnl 8D25FFh
008D25DF: push 000000A4h
008D25E4: push 00440E08h
008D25E9: push var_80
008D25EC: push var_00000084
008D25F2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D25F7: mov var_000000A8, eax
008D25FD: jmp 8D2606h
008D25FF: and var_000000A8, 00000000h
008D2606: lea ecx, var_28
008D2609: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D260E: mov var_10, 00000000h
008D2615: push 008D264Eh
008D261A: jmp 8D2645h
008D261C: lea eax, var_2C
008D261F: push eax
008D2620: lea eax, var_28
008D2623: push eax
008D2624: push 00000002h
008D2626: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D262B: add esp, 0000000Ch
008D262E: lea eax, var_5C
008D2631: push eax
008D2632: lea eax, var_4C
008D2635: push eax
008D2636: lea eax, var_3C
008D2639: push eax
008D263A: push 00000003h
008D263C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D2641: add esp, 00000010h
008D2644: ret 
End Sub

Private sub lstClipboard__8D2297
008D2297: push ebp
008D2298: mov ebp, esp
008D229A: sub esp, 0000000Ch
008D229D: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D22A2: mov eax, fs:[00h]
008D22A8: push eax
008D22A9: mov fs:[00000000h], esp
008D22B0: push 00000008h
008D22B2: pop eax
008D22B3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D22B8: push ebx
008D22B9: push esi
008D22BA: push edi
008D22BB: mov var_0C, esp
008D22BE: mov var_08, 0040FA78h
008D22C5: mov eax, [ebp+08h]
008D22C8: and eax, 00000001h
008D22CB: mov var_04, eax
008D22CE: mov eax, [ebp+08h]
008D22D1: and al, FEh
008D22D3: mov [ebp+08h], eax
008D22D6: mov eax, [ebp+08h]
008D22D9: mov eax, [eax]
008D22DB: push [ebp+08h]
008D22DE: call [eax+04h]
008D22E1: mov eax, [ebp+0Ch]
008D22E4: or word ptr [eax], FFFFh
008D22E8: mov var_04, 00000000h
008D22EF: mov eax, [ebp+08h]
008D22F2: mov eax, [eax]
008D22F4: push [ebp+08h]
008D22F7: call [eax+08h]
008D22FA: mov eax, var_04
008D22FD: mov ecx, var_14
008D2300: mov fs:[00000000h], ecx
008D2307: pop edi
008D2308: pop esi
008D2309: pop ebx
008D230A: leave 
008D230B: retn 0008h
End Sub

Private sub mnuClipboard__8D266D
008D266D: push ebp
008D266E: mov ebp, esp
008D2670: sub esp, 00000018h
008D2673: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D2678: mov eax, fs:[00h]
008D267E: push eax
008D267F: mov fs:[00000000h], esp
008D2686: mov eax, 00000168h
008D268B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D2690: push ebx
008D2691: push esi
008D2692: push edi
008D2693: mov var_18, esp
008D2696: mov var_14, 0040FAC0h
008D269D: mov eax, [ebp+08h]
008D26A0: and eax, 00000001h
008D26A3: mov var_10, eax
008D26A6: mov eax, [ebp+08h]
008D26A9: and al, FEh
008D26AB: mov [ebp+08h], eax
008D26AE: mov var_0C, 00000000h
008D26B5: mov eax, [ebp+08h]
008D26B8: mov eax, [eax]
008D26BA: push [ebp+08h]
008D26BD: call [eax+04h]
008D26C0: mov var_04, 00000001h
008D26C7: mov var_04, 00000002h
008D26CE: push FFFFFFFFh
008D26D0: call 00410A60h ; On Error ...
008D26D5: mov var_04, 00000003h
008D26DC: mov eax, [ebp+0Ch]
008D26DF: mov ax, [eax]
008D26E2: mov var_00000130, ax
008D26E9: movsx eax, word ptr var_00000130
008D26F0: mov var_00000154, eax
008D26F6: cmp var_00000154, 00000000h
008D26FD: jz 8D2730h
008D26FF: cmp var_00000154, 00000002h
008D2706: jz 008D2A06h
008D270C: cmp var_00000154, 00000003h
008D2713: jz 008D2EC7h
008D2719: cmp var_00000154, 00000005h
008D2720: jz 008D3353h
008D2726: jmp 008D37A3h
008D272B: jmp 008D37A3h
008D2730: mov var_04, 00000005h
008D2737: push 00000000h
008D2739: push 00000001h
008D273B: push 00440E58h
008D2740: push 00000000h
008D2742: push 00000017h
008D2744: mov eax, [ebp+08h]
008D2747: mov eax, [eax]
008D2749: push [ebp+08h]
008D274C: call [eax+00000310h]
008D2752: push eax
008D2753: lea eax, var_40
008D2756: push eax
008D2757: call 00410A84h ; Set (object)
008D275C: push eax
008D275D: lea eax, var_58
008D2760: push eax
008D2761: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2766: add esp, 00000010h
008D2769: push eax
008D276A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D276F: push eax
008D2770: lea eax, var_44
008D2773: push eax
008D2774: call 00410A84h ; Set (object)
008D2779: push eax
008D277A: lea eax, var_68
008D277D: push eax
008D277E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2783: add esp, 00000010h
008D2786: push eax
008D2787: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D278C: mov edx, eax
008D278E: lea ecx, var_34
008D2791: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D2796: lea eax, var_44
008D2799: push eax
008D279A: lea eax, var_40
008D279D: push eax
008D279E: push 00000002h
008D27A0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D27A5: add esp, 0000000Ch
008D27A8: lea eax, var_68
008D27AB: push eax
008D27AC: lea eax, var_58
008D27AF: push eax
008D27B0: push 00000002h
008D27B2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D27B7: add esp, 0000000Ch
008D27BA: mov var_04, 00000006h
008D27C1: and var_00000094, 00000000h
008D27C8: mov var_0000009C, 00008008h
008D27D2: push 00000000h
008D27D4: push 00000001h
008D27D6: push 00440E58h
008D27DB: push 00000000h
008D27DD: push 00000017h
008D27DF: mov eax, [ebp+08h]
008D27E2: mov eax, [eax]
008D27E4: push [ebp+08h]
008D27E7: call [eax+00000310h]
008D27ED: push eax
008D27EE: lea eax, var_40
008D27F1: push eax
008D27F2: call 00410A84h ; Set (object)
008D27F7: push eax
008D27F8: lea eax, var_58
008D27FB: push eax
008D27FC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2801: add esp, 00000010h
008D2804: push eax
008D2805: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D280A: push eax
008D280B: lea eax, var_44
008D280E: push eax
008D280F: call 00410A84h ; Set (object)
008D2814: push eax
008D2815: lea eax, var_68
008D2818: push eax
008D2819: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D281E: add esp, 00000010h
008D2821: push eax
008D2822: lea eax, var_0000009C
008D2828: push eax
008D2829: call 00410868h ; msvbvm60.dll.__vbaVarTstNe
008D282E: mov var_000000C8, ax
008D2835: lea eax, var_44
008D2838: push eax
008D2839: lea eax, var_40
008D283C: push eax
008D283D: push 00000002h
008D283F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D2844: add esp, 0000000Ch
008D2847: lea eax, var_68
008D284A: push eax
008D284B: lea eax, var_58
008D284E: push eax
008D284F: push 00000002h
008D2851: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D2856: add esp, 0000000Ch
008D2859: movsx eax, word ptr var_000000C8
008D2860: test eax, eax
008D2862: jz 008D2A01h
008D2868: mov var_04, 00000007h
008D286F: cmp [008F2DE4h], 00000000h
008D2876: jnz 8D2893h
008D2878: push 008F2DE4h
008D287D: push 004119F4h
008D2882: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D2887: mov var_00000158, 008F2DE4h
008D2891: jmp 8D289Dh
008D2893: mov var_00000158, 008F2DE4h
008D289D: mov eax, var_00000158
008D28A3: mov eax, [eax]
008D28A5: mov var_000000C8, eax
008D28AB: mov eax, [ebp+08h]
008D28AE: mov var_000000A4, eax
008D28B4: mov var_000000AC, 00000009h
008D28BE: mov var_00000094, 80020004h
008D28C8: mov var_0000009C, 0000000Ah
008D28D2: push 00000010h
008D28D4: pop eax
008D28D5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D28DA: lea esi, var_000000AC
008D28E0: mov edi, esp
008D28E2: movsd 
008D28E3: movsd 
008D28E4: movsd 
008D28E5: movsd 
008D28E6: push 00000010h
008D28E8: pop eax
008D28E9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D28EE: lea esi, var_0000009C
008D28F4: mov edi, esp
008D28F6: movsd 
008D28F7: movsd 
008D28F8: movsd 
008D28F9: movsd 
008D28FA: mov eax, var_000000C8
008D2900: mov eax, [eax]
008D2902: push var_000000C8
008D2908: call [eax+000002B0h]
008D290E: fclex 
008D2910: mov var_000000CC, eax
008D2916: cmp var_000000CC, 00000000h
008D291D: jnl 8D2942h
008D291F: push 000002B0h
008D2924: push 0046138Ch
008D2929: push var_000000C8
008D292F: push var_000000CC
008D2935: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D293A: mov var_0000015C, eax
008D2940: jmp 8D2949h
008D2942: and var_0000015C, 00000000h
008D2949: mov var_04, 00000008h
008D2950: cmp [008F2DE4h], 00000000h
008D2957: jnz 8D2974h
008D2959: push 008F2DE4h
008D295E: push 004119F4h
008D2963: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D2968: mov var_00000160, 008F2DE4h
008D2972: jmp 8D297Eh
008D2974: mov var_00000160, 008F2DE4h
008D297E: mov eax, var_00000160
008D2984: mov eax, [eax]
008D2986: mov ecx, var_00000160
008D298C: mov ecx, [ecx]
008D298E: mov ecx, [ecx]
008D2990: push eax
008D2991: call [ecx+000002FCh]
008D2997: push eax
008D2998: lea eax, var_40
008D299B: push eax
008D299C: call 00410A84h ; Set (object)
008D29A1: mov var_000000C8, eax
008D29A7: push var_34
008D29AA: mov eax, var_000000C8
008D29B0: mov eax, [eax]
008D29B2: push var_000000C8
008D29B8: call [eax+000000A4h]
008D29BE: fclex 
008D29C0: mov var_000000CC, eax
008D29C6: cmp var_000000CC, 00000000h
008D29CD: jnl 8D29F2h
008D29CF: push 000000A4h
008D29D4: push 00440E08h
008D29D9: push var_000000C8
008D29DF: push var_000000CC
008D29E5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D29EA: mov var_00000164, eax
008D29F0: jmp 8D29F9h
008D29F2: and var_00000164, 00000000h
008D29F9: lea ecx, var_40
008D29FC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D2A01: jmp 008D37A3h
008D2A06: mov var_04, 0000000Bh
008D2A0D: push 00000000h
008D2A0F: push 00000003h
008D2A11: push 00440E48h
008D2A16: push 00000000h
008D2A18: push 00000018h
008D2A1A: mov eax, [ebp+08h]
008D2A1D: mov eax, [eax]
008D2A1F: push [ebp+08h]
008D2A22: call [eax+00000310h]
008D2A28: push eax
008D2A29: lea eax, var_40
008D2A2C: push eax
008D2A2D: call 00410A84h ; Set (object)
008D2A32: push eax
008D2A33: lea eax, var_58
008D2A36: push eax
008D2A37: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2A3C: add esp, 00000010h
008D2A3F: push eax
008D2A40: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D2A45: push eax
008D2A46: lea eax, var_44
008D2A49: push eax
008D2A4A: call 00410A84h ; Set (object)
008D2A4F: push eax
008D2A50: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D2A55: add esp, 0000000Ch
008D2A58: lea eax, var_44
008D2A5B: push eax
008D2A5C: lea eax, var_40
008D2A5F: push eax
008D2A60: push 00000002h
008D2A62: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D2A67: add esp, 0000000Ch
008D2A6A: lea ecx, var_58
008D2A6D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D2A72: mov var_04, 0000000Ch
008D2A79: mov var_00000094, 00000001h
008D2A83: mov var_0000009C, 00000002h
008D2A8D: cmp [008F2010h], 00000000h
008D2A94: jnz 8D2AB1h
008D2A96: push 008F2010h
008D2A9B: push 00433984h
008D2AA0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D2AA5: mov var_00000168, 008F2010h
008D2AAF: jmp 8D2ABBh
008D2AB1: mov var_00000168, 008F2010h
008D2ABB: push 00000000h
008D2ABD: push 00000001h
008D2ABF: push 00440E48h
008D2AC4: push 00000000h
008D2AC6: push 00000018h
008D2AC8: mov eax, var_00000168
008D2ACE: mov eax, [eax]
008D2AD0: mov ecx, var_00000168
008D2AD6: mov ecx, [ecx]
008D2AD8: mov ecx, [ecx]
008D2ADA: push eax
008D2ADB: call [ecx+00000550h]
008D2AE1: push eax
008D2AE2: lea eax, var_40
008D2AE5: push eax
008D2AE6: call 00410A84h ; Set (object)
008D2AEB: push eax
008D2AEC: lea eax, var_58
008D2AEF: push eax
008D2AF0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2AF5: add esp, 00000010h
008D2AF8: push eax
008D2AF9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D2AFE: push eax
008D2AFF: lea eax, var_44
008D2B02: push eax
008D2B03: call 00410A84h ; Set (object)
008D2B08: push eax
008D2B09: lea eax, var_68
008D2B0C: push eax
008D2B0D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2B12: add esp, 00000010h
008D2B15: push eax
008D2B16: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D2B1B: mov var_000000A4, eax
008D2B21: mov var_000000AC, 00000003h
008D2B2B: mov var_000000B4, 00000001h
008D2B35: mov var_000000BC, 00000002h
008D2B3F: lea eax, var_0000009C
008D2B45: push eax
008D2B46: lea eax, var_000000AC
008D2B4C: push eax
008D2B4D: lea eax, var_000000BC
008D2B53: push eax
008D2B54: lea eax, var_000000EC
008D2B5A: push eax
008D2B5B: lea eax, var_000000DC
008D2B61: push eax
008D2B62: lea eax, var_30
008D2B65: push eax
008D2B66: call 00410A3Ch ; For
008D2B6B: mov var_00000148, eax
008D2B71: lea eax, var_44
008D2B74: push eax
008D2B75: lea eax, var_40
008D2B78: push eax
008D2B79: push 00000002h
008D2B7B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D2B80: add esp, 0000000Ch
008D2B83: lea eax, var_68
008D2B86: push eax
008D2B87: lea eax, var_58
008D2B8A: push eax
008D2B8B: push 00000002h
008D2B8D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D2B92: add esp, 0000000Ch
008D2B95: jmp 008D2EB5h
008D2B9A: mov var_04, 0000000Dh
008D2BA1: lea eax, var_30
008D2BA4: mov var_00000094, eax
008D2BAA: mov var_0000009C, 0000400Ch
008D2BB4: cmp [008F2010h], 00000000h
008D2BBB: jnz 8D2BD8h
008D2BBD: push 008F2010h
008D2BC2: push 00433984h
008D2BC7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D2BCC: mov var_0000016C, 008F2010h
008D2BD6: jmp 8D2BE2h
008D2BD8: mov var_0000016C, 008F2010h
008D2BE2: push 00000000h
008D2BE4: push 00000004h
008D2BE6: push 00440E58h
008D2BEB: push 00000010h
008D2BED: pop eax
008D2BEE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D2BF3: lea esi, var_0000009C
008D2BF9: mov edi, esp
008D2BFB: movsd 
008D2BFC: movsd 
008D2BFD: movsd 
008D2BFE: movsd 
008D2BFF: push 00000001h
008D2C01: push 00000000h
008D2C03: push 00440E48h
008D2C08: push 00000000h
008D2C0A: push 00000018h
008D2C0C: mov eax, var_0000016C
008D2C12: mov eax, [eax]
008D2C14: mov ecx, var_0000016C
008D2C1A: mov ecx, [ecx]
008D2C1C: mov ecx, [ecx]
008D2C1E: push eax
008D2C1F: call [ecx+00000550h]
008D2C25: push eax
008D2C26: lea eax, var_40
008D2C29: push eax
008D2C2A: call 00410A84h ; Set (object)
008D2C2F: push eax
008D2C30: lea eax, var_58
008D2C33: push eax
008D2C34: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2C39: add esp, 00000010h
008D2C3C: push eax
008D2C3D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D2C42: push eax
008D2C43: lea eax, var_44
008D2C46: push eax
008D2C47: call 00410A84h ; Set (object)
008D2C4C: push eax
008D2C4D: lea eax, var_68
008D2C50: push eax
008D2C51: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2C56: add esp, 00000020h
008D2C59: push eax
008D2C5A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D2C5F: push eax
008D2C60: lea eax, var_48
008D2C63: push eax
008D2C64: call 00410A84h ; Set (object)
008D2C69: push eax
008D2C6A: lea eax, var_78
008D2C6D: push eax
008D2C6E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2C73: add esp, 00000010h
008D2C76: push eax
008D2C77: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008D2C7C: sub ax, FFFFh
008D2C80: neg ax
008D2C83: sbb eax, eax
008D2C85: inc eax
008D2C86: neg eax
008D2C88: mov var_000000C8, ax
008D2C8F: lea eax, var_48
008D2C92: push eax
008D2C93: lea eax, var_44
008D2C96: push eax
008D2C97: lea eax, var_40
008D2C9A: push eax
008D2C9B: push 00000003h
008D2C9D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D2CA2: add esp, 00000010h
008D2CA5: lea eax, var_78
008D2CA8: push eax
008D2CA9: lea eax, var_68
008D2CAC: push eax
008D2CAD: lea eax, var_58
008D2CB0: push eax
008D2CB1: push 00000003h
008D2CB3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D2CB8: add esp, 00000010h
008D2CBB: movsx eax, word ptr var_000000C8
008D2CC2: test eax, eax
008D2CC4: jz 008D2E91h
008D2CCA: mov var_04, 0000000Eh
008D2CD1: lea eax, var_30
008D2CD4: mov var_00000094, eax
008D2CDA: mov var_0000009C, 0000400Ch
008D2CE4: cmp [008F2010h], 00000000h
008D2CEB: jnz 8D2D08h
008D2CED: push 008F2010h
008D2CF2: push 00433984h
008D2CF7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D2CFC: mov var_00000170, 008F2010h
008D2D06: jmp 8D2D12h
008D2D08: mov var_00000170, 008F2010h
008D2D12: push 00000000h
008D2D14: push 00000014h
008D2D16: push 00440E58h
008D2D1B: push 00000010h
008D2D1D: pop eax
008D2D1E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D2D23: lea esi, var_0000009C
008D2D29: mov edi, esp
008D2D2B: movsd 
008D2D2C: movsd 
008D2D2D: movsd 
008D2D2E: movsd 
008D2D2F: push 00000001h
008D2D31: push 00000000h
008D2D33: push 00440E48h
008D2D38: push 00000000h
008D2D3A: push 00000018h
008D2D3C: mov eax, var_00000170
008D2D42: mov eax, [eax]
008D2D44: mov ecx, var_00000170
008D2D4A: mov ecx, [ecx]
008D2D4C: mov ecx, [ecx]
008D2D4E: push eax
008D2D4F: call [ecx+00000550h]
008D2D55: push eax
008D2D56: lea eax, var_40
008D2D59: push eax
008D2D5A: call 00410A84h ; Set (object)
008D2D5F: push eax
008D2D60: lea eax, var_58
008D2D63: push eax
008D2D64: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2D69: add esp, 00000010h
008D2D6C: push eax
008D2D6D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D2D72: push eax
008D2D73: lea eax, var_44
008D2D76: push eax
008D2D77: call 00410A84h ; Set (object)
008D2D7C: push eax
008D2D7D: lea eax, var_68
008D2D80: push eax
008D2D81: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2D86: add esp, 00000020h
008D2D89: push eax
008D2D8A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D2D8F: push eax
008D2D90: lea eax, var_48
008D2D93: push eax
008D2D94: call 00410A84h ; Set (object)
008D2D99: push eax
008D2D9A: lea eax, var_78
008D2D9D: push eax
008D2D9E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2DA3: add esp, 00000010h
008D2DA6: push eax
008D2DA7: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D2DAC: mov edx, eax
008D2DAE: lea ecx, var_38
008D2DB1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D2DB6: push eax
008D2DB7: call 004109DCh ; Val(arg_1)
008D2DBC: fstp real8 ptr var_000000C4
008D2DC2: push 00000000h
008D2DC4: push 00000000h
008D2DC6: push 00000001h
008D2DC8: push 00000000h
008D2DCA: lea eax, var_0000008C
008D2DD0: push eax
008D2DD1: push 00000010h
008D2DD3: push 00000880h
008D2DD8: call 00410946h ; ReDim
008D2DDD: add esp, 0000001Ch
008D2DE0: mov var_000000A4, 00442930h
008D2DEA: mov var_000000AC, 00000008h
008D2DF4: lea esi, var_000000AC
008D2DFA: push 00000000h
008D2DFC: push var_0000008C
008D2E02: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008D2E07: mov ecx, eax
008D2E09: mov edx, esi
008D2E0B: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008D2E10: mov edx, 0043DA40h ; x123
008D2E15: lea ecx, var_3C
008D2E18: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008D2E1D: lea eax, var_0000008C
008D2E23: push eax
008D2E24: lea eax, var_3C
008D2E27: push eax
008D2E28: fld real8 ptr var_000000C4
008D2E2E: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008D2E33: push eax
008D2E34: call 007A6910h
008D2E39: lea eax, var_0000008C
008D2E3F: push eax
008D2E40: push 00000000h
008D2E42: call 00410934h ; Erase
008D2E47: lea eax, var_3C
008D2E4A: push eax
008D2E4B: lea eax, var_38
008D2E4E: push eax
008D2E4F: push 00000002h
008D2E51: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D2E56: add esp, 0000000Ch
008D2E59: lea eax, var_48
008D2E5C: push eax
008D2E5D: lea eax, var_44
008D2E60: push eax
008D2E61: lea eax, var_40
008D2E64: push eax
008D2E65: push 00000003h
008D2E67: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D2E6C: add esp, 00000010h
008D2E6F: lea eax, var_78
008D2E72: push eax
008D2E73: lea eax, var_68
008D2E76: push eax
008D2E77: lea eax, var_58
008D2E7A: push eax
008D2E7B: push 00000003h
008D2E7D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D2E82: add esp, 00000010h
008D2E85: mov var_04, 0000000Fh
008D2E8C: call 0041096Ah ; DoEvents
008D2E91: mov var_04, 00000011h
008D2E98: lea eax, var_000000EC
008D2E9E: push eax
008D2E9F: lea eax, var_000000DC
008D2EA5: push eax
008D2EA6: lea eax, var_30
008D2EA9: push eax
008D2EAA: call 00410A36h ; Next
008D2EAF: mov var_00000148, eax
008D2EB5: cmp var_00000148, 00000000h
008D2EBC: jnz 008D2B9Ah
008D2EC2: jmp 008D37A3h
008D2EC7: mov var_04, 00000013h
008D2ECE: mov var_00000094, 00000001h
008D2ED8: mov var_0000009C, 00000002h
008D2EE2: cmp [008F2010h], 00000000h
008D2EE9: jnz 8D2F06h
008D2EEB: push 008F2010h
008D2EF0: push 00433984h
008D2EF5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D2EFA: mov var_00000174, 008F2010h
008D2F04: jmp 8D2F10h
008D2F06: mov var_00000174, 008F2010h
008D2F10: push 00000000h
008D2F12: push 00000001h
008D2F14: push 00440E48h
008D2F19: push 00000000h
008D2F1B: push 00000018h
008D2F1D: mov eax, var_00000174
008D2F23: mov eax, [eax]
008D2F25: mov ecx, var_00000174
008D2F2B: mov ecx, [ecx]
008D2F2D: mov ecx, [ecx]
008D2F2F: push eax
008D2F30: call [ecx+00000550h]
008D2F36: push eax
008D2F37: lea eax, var_40
008D2F3A: push eax
008D2F3B: call 00410A84h ; Set (object)
008D2F40: push eax
008D2F41: lea eax, var_58
008D2F44: push eax
008D2F45: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2F4A: add esp, 00000010h
008D2F4D: push eax
008D2F4E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D2F53: push eax
008D2F54: lea eax, var_44
008D2F57: push eax
008D2F58: call 00410A84h ; Set (object)
008D2F5D: push eax
008D2F5E: lea eax, var_68
008D2F61: push eax
008D2F62: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D2F67: add esp, 00000010h
008D2F6A: push eax
008D2F6B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D2F70: mov var_000000A4, eax
008D2F76: mov var_000000AC, 00000003h
008D2F80: mov var_000000B4, 00000001h
008D2F8A: mov var_000000BC, 00000002h
008D2F94: lea eax, var_0000009C
008D2F9A: push eax
008D2F9B: lea eax, var_000000AC
008D2FA1: push eax
008D2FA2: lea eax, var_000000BC
008D2FA8: push eax
008D2FA9: lea eax, var_0000010C
008D2FAF: push eax
008D2FB0: lea eax, var_000000FC
008D2FB6: push eax
008D2FB7: lea eax, var_30
008D2FBA: push eax
008D2FBB: call 00410A3Ch ; For
008D2FC0: mov var_0000014C, eax
008D2FC6: lea eax, var_44
008D2FC9: push eax
008D2FCA: lea eax, var_40
008D2FCD: push eax
008D2FCE: push 00000002h
008D2FD0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D2FD5: add esp, 0000000Ch
008D2FD8: lea eax, var_68
008D2FDB: push eax
008D2FDC: lea eax, var_58
008D2FDF: push eax
008D2FE0: push 00000002h
008D2FE2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D2FE7: add esp, 0000000Ch
008D2FEA: jmp 008D3341h
008D2FEF: mov var_04, 00000014h
008D2FF6: lea eax, var_30
008D2FF9: mov var_00000094, eax
008D2FFF: mov var_0000009C, 0000400Ch
008D3009: cmp [008F2010h], 00000000h
008D3010: jnz 8D302Dh
008D3012: push 008F2010h
008D3017: push 00433984h
008D301C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D3021: mov var_00000178, 008F2010h
008D302B: jmp 8D3037h
008D302D: mov var_00000178, 008F2010h
008D3037: push 00000000h
008D3039: push 00000004h
008D303B: push 00440E58h
008D3040: push 00000010h
008D3042: pop eax
008D3043: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D3048: lea esi, var_0000009C
008D304E: mov edi, esp
008D3050: movsd 
008D3051: movsd 
008D3052: movsd 
008D3053: movsd 
008D3054: push 00000001h
008D3056: push 00000000h
008D3058: push 00440E48h
008D305D: push 00000000h
008D305F: push 00000018h
008D3061: mov eax, var_00000178
008D3067: mov eax, [eax]
008D3069: mov ecx, var_00000178
008D306F: mov ecx, [ecx]
008D3071: mov ecx, [ecx]
008D3073: push eax
008D3074: call [ecx+00000550h]
008D307A: push eax
008D307B: lea eax, var_40
008D307E: push eax
008D307F: call 00410A84h ; Set (object)
008D3084: push eax
008D3085: lea eax, var_58
008D3088: push eax
008D3089: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D308E: add esp, 00000010h
008D3091: push eax
008D3092: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D3097: push eax
008D3098: lea eax, var_44
008D309B: push eax
008D309C: call 00410A84h ; Set (object)
008D30A1: push eax
008D30A2: lea eax, var_68
008D30A5: push eax
008D30A6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D30AB: add esp, 00000020h
008D30AE: push eax
008D30AF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D30B4: push eax
008D30B5: lea eax, var_48
008D30B8: push eax
008D30B9: call 00410A84h ; Set (object)
008D30BE: push eax
008D30BF: lea eax, var_78
008D30C2: push eax
008D30C3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D30C8: add esp, 00000010h
008D30CB: push eax
008D30CC: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008D30D1: sub ax, FFFFh
008D30D5: neg ax
008D30D8: sbb eax, eax
008D30DA: inc eax
008D30DB: neg eax
008D30DD: mov var_000000C8, ax
008D30E4: lea eax, var_48
008D30E7: push eax
008D30E8: lea eax, var_44
008D30EB: push eax
008D30EC: lea eax, var_40
008D30EF: push eax
008D30F0: push 00000003h
008D30F2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D30F7: add esp, 00000010h
008D30FA: lea eax, var_78
008D30FD: push eax
008D30FE: lea eax, var_68
008D3101: push eax
008D3102: lea eax, var_58
008D3105: push eax
008D3106: push 00000003h
008D3108: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D310D: add esp, 00000010h
008D3110: movsx eax, word ptr var_000000C8
008D3117: test eax, eax
008D3119: jz 008D331Dh
008D311F: mov var_04, 00000015h
008D3126: lea eax, var_30
008D3129: mov var_00000094, eax
008D312F: mov var_0000009C, 0000400Ch
008D3139: cmp [008F2010h], 00000000h
008D3140: jnz 8D315Dh
008D3142: push 008F2010h
008D3147: push 00433984h
008D314C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D3151: mov var_0000017C, 008F2010h
008D315B: jmp 8D3167h
008D315D: mov var_0000017C, 008F2010h
008D3167: push 00000000h
008D3169: push 00000014h
008D316B: push 00440E58h
008D3170: push 00000010h
008D3172: pop eax
008D3173: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D3178: lea esi, var_0000009C
008D317E: mov edi, esp
008D3180: movsd 
008D3181: movsd 
008D3182: movsd 
008D3183: movsd 
008D3184: push 00000001h
008D3186: push 00000000h
008D3188: push 00440E48h
008D318D: push 00000000h
008D318F: push 00000018h
008D3191: mov eax, var_0000017C
008D3197: mov eax, [eax]
008D3199: mov ecx, var_0000017C
008D319F: mov ecx, [ecx]
008D31A1: mov ecx, [ecx]
008D31A3: push eax
008D31A4: call [ecx+00000550h]
008D31AA: push eax
008D31AB: lea eax, var_40
008D31AE: push eax
008D31AF: call 00410A84h ; Set (object)
008D31B4: push eax
008D31B5: lea eax, var_58
008D31B8: push eax
008D31B9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D31BE: add esp, 00000010h
008D31C1: push eax
008D31C2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D31C7: push eax
008D31C8: lea eax, var_44
008D31CB: push eax
008D31CC: call 00410A84h ; Set (object)
008D31D1: push eax
008D31D2: lea eax, var_68
008D31D5: push eax
008D31D6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D31DB: add esp, 00000020h
008D31DE: push eax
008D31DF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D31E4: push eax
008D31E5: lea eax, var_48
008D31E8: push eax
008D31E9: call 00410A84h ; Set (object)
008D31EE: push eax
008D31EF: lea eax, var_78
008D31F2: push eax
008D31F3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D31F8: add esp, 00000010h
008D31FB: push eax
008D31FC: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D3201: mov edx, eax
008D3203: lea ecx, var_38
008D3206: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D320B: push eax
008D320C: call 004109DCh ; Val(arg_1)
008D3211: fstp real8 ptr var_000000C4
008D3217: push 00000000h
008D3219: push 00000001h
008D321B: push 00000001h
008D321D: push 00000000h
008D321F: lea eax, var_0000008C
008D3225: push eax
008D3226: push 00000010h
008D3228: push 00000880h
008D322D: call 00410946h ; ReDim
008D3232: add esp, 0000001Ch
008D3235: mov var_000000A4, 00442938h
008D323F: mov var_000000AC, 00000008h
008D3249: lea esi, var_000000AC
008D324F: push 00000000h
008D3251: push var_0000008C
008D3257: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008D325C: mov ecx, eax
008D325E: mov edx, esi
008D3260: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008D3265: mov eax, [ebp+08h]
008D3268: mov eax, [eax]
008D326A: push [ebp+08h]
008D326D: call [eax+000002FCh]
008D3273: mov var_80, eax
008D3276: mov var_00000088, 00000009h
008D3280: lea esi, var_00000088
008D3286: push 00000001h
008D3288: push var_0000008C
008D328E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008D3293: mov ecx, eax
008D3295: mov edx, esi
008D3297: call 00410940h ; msvbvm60.dll.__vbaVarZero
008D329C: mov edx, 0043DA40h ; x123
008D32A1: lea ecx, var_3C
008D32A4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008D32A9: lea eax, var_0000008C
008D32AF: push eax
008D32B0: lea eax, var_3C
008D32B3: push eax
008D32B4: fld real8 ptr var_000000C4
008D32BA: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008D32BF: push eax
008D32C0: call 007A6910h
008D32C5: lea eax, var_0000008C
008D32CB: push eax
008D32CC: push 00000000h
008D32CE: call 00410934h ; Erase
008D32D3: lea eax, var_3C
008D32D6: push eax
008D32D7: lea eax, var_38
008D32DA: push eax
008D32DB: push 00000002h
008D32DD: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D32E2: add esp, 0000000Ch
008D32E5: lea eax, var_48
008D32E8: push eax
008D32E9: lea eax, var_44
008D32EC: push eax
008D32ED: lea eax, var_40
008D32F0: push eax
008D32F1: push 00000003h
008D32F3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D32F8: add esp, 00000010h
008D32FB: lea eax, var_78
008D32FE: push eax
008D32FF: lea eax, var_68
008D3302: push eax
008D3303: lea eax, var_58
008D3306: push eax
008D3307: push 00000003h
008D3309: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D330E: add esp, 00000010h
008D3311: mov var_04, 00000016h
008D3318: call 0041096Ah ; DoEvents
008D331D: mov var_04, 00000018h
008D3324: lea eax, var_0000010C
008D332A: push eax
008D332B: lea eax, var_000000FC
008D3331: push eax
008D3332: lea eax, var_30
008D3335: push eax
008D3336: call 00410A36h ; Next
008D333B: mov var_0000014C, eax
008D3341: cmp var_0000014C, 00000000h
008D3348: jnz 008D2FEFh
008D334E: jmp 008D37A3h
008D3353: mov var_04, 0000001Ah
008D335A: mov var_00000094, 00000001h
008D3364: mov var_0000009C, 00000002h
008D336E: cmp [008F2010h], 00000000h
008D3375: jnz 8D3392h
008D3377: push 008F2010h
008D337C: push 00433984h
008D3381: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D3386: mov var_00000180, 008F2010h
008D3390: jmp 8D339Ch
008D3392: mov var_00000180, 008F2010h
008D339C: push 00000000h
008D339E: push 00000001h
008D33A0: push 00440E48h
008D33A5: push 00000000h
008D33A7: push 00000018h
008D33A9: mov eax, var_00000180
008D33AF: mov eax, [eax]
008D33B1: mov ecx, var_00000180
008D33B7: mov ecx, [ecx]
008D33B9: mov ecx, [ecx]
008D33BB: push eax
008D33BC: call [ecx+00000550h]
008D33C2: push eax
008D33C3: lea eax, var_40
008D33C6: push eax
008D33C7: call 00410A84h ; Set (object)
008D33CC: push eax
008D33CD: lea eax, var_58
008D33D0: push eax
008D33D1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D33D6: add esp, 00000010h
008D33D9: push eax
008D33DA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D33DF: push eax
008D33E0: lea eax, var_44
008D33E3: push eax
008D33E4: call 00410A84h ; Set (object)
008D33E9: push eax
008D33EA: lea eax, var_68
008D33ED: push eax
008D33EE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D33F3: add esp, 00000010h
008D33F6: push eax
008D33F7: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D33FC: mov var_000000A4, eax
008D3402: mov var_000000AC, 00000003h
008D340C: mov var_000000B4, 00000001h
008D3416: mov var_000000BC, 00000002h
008D3420: lea eax, var_0000009C
008D3426: push eax
008D3427: lea eax, var_000000AC
008D342D: push eax
008D342E: lea eax, var_000000BC
008D3434: push eax
008D3435: lea eax, var_0000012C
008D343B: push eax
008D343C: lea eax, var_0000011C
008D3442: push eax
008D3443: lea eax, var_30
008D3446: push eax
008D3447: call 00410A3Ch ; For
008D344C: mov var_00000150, eax
008D3452: lea eax, var_44
008D3455: push eax
008D3456: lea eax, var_40
008D3459: push eax
008D345A: push 00000002h
008D345C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D3461: add esp, 0000000Ch
008D3464: lea eax, var_68
008D3467: push eax
008D3468: lea eax, var_58
008D346B: push eax
008D346C: push 00000002h
008D346E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D3473: add esp, 0000000Ch
008D3476: jmp 008D3796h
008D347B: mov var_04, 0000001Bh
008D3482: lea eax, var_30
008D3485: mov var_00000094, eax
008D348B: mov var_0000009C, 0000400Ch
008D3495: cmp [008F2010h], 00000000h
008D349C: jnz 8D34B9h
008D349E: push 008F2010h
008D34A3: push 00433984h
008D34A8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D34AD: mov var_00000184, 008F2010h
008D34B7: jmp 8D34C3h
008D34B9: mov var_00000184, 008F2010h
008D34C3: push 00000000h
008D34C5: push 00000004h
008D34C7: push 00440E58h
008D34CC: push 00000010h
008D34CE: pop eax
008D34CF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D34D4: lea esi, var_0000009C
008D34DA: mov edi, esp
008D34DC: movsd 
008D34DD: movsd 
008D34DE: movsd 
008D34DF: movsd 
008D34E0: push 00000001h
008D34E2: push 00000000h
008D34E4: push 00440E48h
008D34E9: push 00000000h
008D34EB: push 00000018h
008D34ED: mov eax, var_00000184
008D34F3: mov eax, [eax]
008D34F5: mov ecx, var_00000184
008D34FB: mov ecx, [ecx]
008D34FD: mov ecx, [ecx]
008D34FF: push eax
008D3500: call [ecx+00000550h]
008D3506: push eax
008D3507: lea eax, var_40
008D350A: push eax
008D350B: call 00410A84h ; Set (object)
008D3510: push eax
008D3511: lea eax, var_58
008D3514: push eax
008D3515: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D351A: add esp, 00000010h
008D351D: push eax
008D351E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D3523: push eax
008D3524: lea eax, var_44
008D3527: push eax
008D3528: call 00410A84h ; Set (object)
008D352D: push eax
008D352E: lea eax, var_68
008D3531: push eax
008D3532: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D3537: add esp, 00000020h
008D353A: push eax
008D353B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D3540: push eax
008D3541: lea eax, var_48
008D3544: push eax
008D3545: call 00410A84h ; Set (object)
008D354A: push eax
008D354B: lea eax, var_78
008D354E: push eax
008D354F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D3554: add esp, 00000010h
008D3557: push eax
008D3558: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008D355D: sub ax, FFFFh
008D3561: neg ax
008D3564: sbb eax, eax
008D3566: inc eax
008D3567: neg eax
008D3569: mov var_000000C8, ax
008D3570: lea eax, var_48
008D3573: push eax
008D3574: lea eax, var_44
008D3577: push eax
008D3578: lea eax, var_40
008D357B: push eax
008D357C: push 00000003h
008D357E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D3583: add esp, 00000010h
008D3586: lea eax, var_78
008D3589: push eax
008D358A: lea eax, var_68
008D358D: push eax
008D358E: lea eax, var_58
008D3591: push eax
008D3592: push 00000003h
008D3594: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D3599: add esp, 00000010h
008D359C: movsx eax, word ptr var_000000C8
008D35A3: test eax, eax
008D35A5: jz 008D3772h
008D35AB: mov var_04, 0000001Ch
008D35B2: lea eax, var_30
008D35B5: mov var_00000094, eax
008D35BB: mov var_0000009C, 0000400Ch
008D35C5: cmp [008F2010h], 00000000h
008D35CC: jnz 8D35E9h
008D35CE: push 008F2010h
008D35D3: push 00433984h
008D35D8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D35DD: mov var_00000188, 008F2010h
008D35E7: jmp 8D35F3h
008D35E9: mov var_00000188, 008F2010h
008D35F3: push 00000000h
008D35F5: push 00000014h
008D35F7: push 00440E58h
008D35FC: push 00000010h
008D35FE: pop eax
008D35FF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D3604: lea esi, var_0000009C
008D360A: mov edi, esp
008D360C: movsd 
008D360D: movsd 
008D360E: movsd 
008D360F: movsd 
008D3610: push 00000001h
008D3612: push 00000000h
008D3614: push 00440E48h
008D3619: push 00000000h
008D361B: push 00000018h
008D361D: mov eax, var_00000188
008D3623: mov eax, [eax]
008D3625: mov ecx, var_00000188
008D362B: mov ecx, [ecx]
008D362D: mov ecx, [ecx]
008D362F: push eax
008D3630: call [ecx+00000550h]
008D3636: push eax
008D3637: lea eax, var_40
008D363A: push eax
008D363B: call 00410A84h ; Set (object)
008D3640: push eax
008D3641: lea eax, var_58
008D3644: push eax
008D3645: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D364A: add esp, 00000010h
008D364D: push eax
008D364E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D3653: push eax
008D3654: lea eax, var_44
008D3657: push eax
008D3658: call 00410A84h ; Set (object)
008D365D: push eax
008D365E: lea eax, var_68
008D3661: push eax
008D3662: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D3667: add esp, 00000020h
008D366A: push eax
008D366B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D3670: push eax
008D3671: lea eax, var_48
008D3674: push eax
008D3675: call 00410A84h ; Set (object)
008D367A: push eax
008D367B: lea eax, var_78
008D367E: push eax
008D367F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D3684: add esp, 00000010h
008D3687: push eax
008D3688: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D368D: mov edx, eax
008D368F: lea ecx, var_38
008D3692: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D3697: push eax
008D3698: call 004109DCh ; Val(arg_1)
008D369D: fstp real8 ptr var_000000C4
008D36A3: push 00000000h
008D36A5: push 00000000h
008D36A7: push 00000001h
008D36A9: push 00000000h
008D36AB: lea eax, var_0000008C
008D36B1: push eax
008D36B2: push 00000010h
008D36B4: push 00000880h
008D36B9: call 00410946h ; ReDim
008D36BE: add esp, 0000001Ch
008D36C1: mov var_000000A4, 00447594h
008D36CB: mov var_000000AC, 00000008h
008D36D5: lea esi, var_000000AC
008D36DB: push 00000000h
008D36DD: push var_0000008C
008D36E3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008D36E8: mov ecx, eax
008D36EA: mov edx, esi
008D36EC: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008D36F1: mov edx, 0043DA40h ; x123
008D36F6: lea ecx, var_3C
008D36F9: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008D36FE: lea eax, var_0000008C
008D3704: push eax
008D3705: lea eax, var_3C
008D3708: push eax
008D3709: fld real8 ptr var_000000C4
008D370F: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008D3714: push eax
008D3715: call 007A6910h
008D371A: lea eax, var_0000008C
008D3720: push eax
008D3721: push 00000000h
008D3723: call 00410934h ; Erase
008D3728: lea eax, var_3C
008D372B: push eax
008D372C: lea eax, var_38
008D372F: push eax
008D3730: push 00000002h
008D3732: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D3737: add esp, 0000000Ch
008D373A: lea eax, var_48
008D373D: push eax
008D373E: lea eax, var_44
008D3741: push eax
008D3742: lea eax, var_40
008D3745: push eax
008D3746: push 00000003h
008D3748: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D374D: add esp, 00000010h
008D3750: lea eax, var_78
008D3753: push eax
008D3754: lea eax, var_68
008D3757: push eax
008D3758: lea eax, var_58
008D375B: push eax
008D375C: push 00000003h
008D375E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D3763: add esp, 00000010h
008D3766: mov var_04, 0000001Dh
008D376D: call 0041096Ah ; DoEvents
008D3772: mov var_04, 0000001Fh
008D3779: lea eax, var_0000012C
008D377F: push eax
008D3780: lea eax, var_0000011C
008D3786: push eax
008D3787: lea eax, var_30
008D378A: push eax
008D378B: call 00410A36h ; Next
008D3790: mov var_00000150, eax
008D3796: cmp var_00000150, 00000000h
008D379D: jnz 008D347Bh
008D37A3: mov var_10, 00000000h
008D37AA: wait 
008D37AB: push 008D384Bh
008D37B0: jmp 8D3806h
008D37B2: lea eax, var_3C
008D37B5: push eax
008D37B6: lea eax, var_38
008D37B9: push eax
008D37BA: push 00000002h
008D37BC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D37C1: add esp, 0000000Ch
008D37C4: lea eax, var_48
008D37C7: push eax
008D37C8: lea eax, var_44
008D37CB: push eax
008D37CC: lea eax, var_40
008D37CF: push eax
008D37D0: push 00000003h
008D37D2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D37D7: add esp, 00000010h
008D37DA: lea eax, var_00000088
008D37E0: push eax
008D37E1: lea eax, var_78
008D37E4: push eax
008D37E5: lea eax, var_68
008D37E8: push eax
008D37E9: lea eax, var_58
008D37EC: push eax
008D37ED: push 00000004h
008D37EF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D37F4: add esp, 00000014h
008D37F7: lea eax, var_0000008C
008D37FD: push eax
008D37FE: push 00000000h
008D3800: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008D3805: ret 
End Sub

Private sub tmrInfo__8D39CC
008D39CC: push ebp
008D39CD: mov ebp, esp
008D39CF: sub esp, 0000000Ch
008D39D2: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D39D7: mov eax, fs:[00h]
008D39DD: push eax
008D39DE: mov fs:[00000000h], esp
008D39E5: mov eax, 000000B0h
008D39EA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D39EF: push ebx
008D39F0: push esi
008D39F1: push edi
008D39F2: mov var_0C, esp
008D39F5: mov var_08, 0040FB78h
008D39FC: mov eax, [ebp+08h]
008D39FF: and eax, 00000001h
008D3A02: mov var_04, eax
008D3A05: mov eax, [ebp+08h]
008D3A08: and al, FEh
008D3A0A: mov [ebp+08h], eax
008D3A0D: mov eax, [ebp+08h]
008D3A10: mov eax, [eax]
008D3A12: push [ebp+08h]
008D3A15: call [eax+04h]
008D3A18: movsx eax, word ptr [8F2430h]
008D3A1F: test eax, eax
008D3A21: jnz 008D3D0Dh
008D3A27: cmp [008F2010h], 00000000h
008D3A2E: jnz 8D3A4Bh
008D3A30: push 008F2010h
008D3A35: push 00433984h
008D3A3A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D3A3F: mov var_000000A8, 008F2010h
008D3A49: jmp 8D3A55h
008D3A4B: mov var_000000A8, 008F2010h
008D3A55: push 00000000h
008D3A57: push 00000001h
008D3A59: push 00440E48h
008D3A5E: push 00000000h
008D3A60: push 00000018h
008D3A62: mov eax, var_000000A8
008D3A68: mov eax, [eax]
008D3A6A: mov ecx, var_000000A8
008D3A70: mov ecx, [ecx]
008D3A72: mov ecx, [ecx]
008D3A74: push eax
008D3A75: call [ecx+00000550h]
008D3A7B: push eax
008D3A7C: lea eax, var_24
008D3A7F: push eax
008D3A80: call 00410A84h ; Set (object)
008D3A85: push eax
008D3A86: lea eax, var_3C
008D3A89: push eax
008D3A8A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D3A8F: add esp, 00000010h
008D3A92: push eax
008D3A93: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D3A98: push eax
008D3A99: lea eax, var_28
008D3A9C: push eax
008D3A9D: call 00410A84h ; Set (object)
008D3AA2: push eax
008D3AA3: lea eax, var_4C
008D3AA6: push eax
008D3AA7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D3AAC: add esp, 00000010h
008D3AAF: push eax
008D3AB0: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D3AB5: xor ecx, ecx
008D3AB7: test eax, eax
008D3AB9: setnle cl
008D3ABC: neg ecx
008D3ABE: mov var_80, cx
008D3AC2: lea eax, var_28
008D3AC5: push eax
008D3AC6: lea eax, var_24
008D3AC9: push eax
008D3ACA: push 00000002h
008D3ACC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D3AD1: add esp, 0000000Ch
008D3AD4: lea eax, var_4C
008D3AD7: push eax
008D3AD8: lea eax, var_3C
008D3ADB: push eax
008D3ADC: push 00000002h
008D3ADE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D3AE3: add esp, 0000000Ch
008D3AE6: movsx eax, word ptr var_80
008D3AEA: test eax, eax
008D3AEC: jz 008D3D08h
008D3AF2: cmp [008F2010h], 00000000h
008D3AF9: jnz 8D3B16h
008D3AFB: push 008F2010h
008D3B00: push 00433984h
008D3B05: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D3B0A: mov var_000000AC, 008F2010h
008D3B14: jmp 8D3B20h
008D3B16: mov var_000000AC, 008F2010h
008D3B20: push 00000000h
008D3B22: push 00000001h
008D3B24: push 00440E48h
008D3B29: push 00000000h
008D3B2B: push 00000018h
008D3B2D: mov eax, var_000000AC
008D3B33: mov eax, [eax]
008D3B35: mov ecx, var_000000AC
008D3B3B: mov ecx, [ecx]
008D3B3D: mov ecx, [ecx]
008D3B3F: push eax
008D3B40: call [ecx+00000550h]
008D3B46: push eax
008D3B47: lea eax, var_24
008D3B4A: push eax
008D3B4B: call 00410A84h ; Set (object)
008D3B50: push eax
008D3B51: lea eax, var_3C
008D3B54: push eax
008D3B55: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D3B5A: add esp, 00000010h
008D3B5D: push eax
008D3B5E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D3B63: push eax
008D3B64: lea eax, var_28
008D3B67: push eax
008D3B68: call 00410A84h ; Set (object)
008D3B6D: push eax
008D3B6E: lea eax, var_4C
008D3B71: push eax
008D3B72: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D3B77: add esp, 00000010h
008D3B7A: push eax
008D3B7B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D3B80: mov var_00000094, eax
008D3B86: mov var_00000090, 00000001h
008D3B90: mov var_18, 00000001h
008D3B97: lea eax, var_28
008D3B9A: push eax
008D3B9B: lea eax, var_24
008D3B9E: push eax
008D3B9F: push 00000002h
008D3BA1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D3BA6: add esp, 0000000Ch
008D3BA9: lea eax, var_4C
008D3BAC: push eax
008D3BAD: lea eax, var_3C
008D3BB0: push eax
008D3BB1: push 00000002h
008D3BB3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D3BB8: add esp, 0000000Ch
008D3BBB: jmp 8D3BCFh
008D3BBD: mov eax, var_18
008D3BC0: add eax, var_00000090
008D3BC6: jo 008D411Eh
008D3BCC: mov var_18, eax
008D3BCF: mov eax, var_18
008D3BD2: cmp eax, var_00000094
008D3BD8: jnle 008D3D08h
008D3BDE: mov eax, var_18
008D3BE1: mov var_64, eax
008D3BE4: mov var_6C, 00000003h
008D3BEB: cmp [008F2010h], 00000000h
008D3BF2: jnz 8D3C0Fh
008D3BF4: push 008F2010h
008D3BF9: push 00433984h
008D3BFE: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D3C03: mov var_000000B0, 008F2010h
008D3C0D: jmp 8D3C19h
008D3C0F: mov var_000000B0, 008F2010h
008D3C19: push 00000000h
008D3C1B: push 00000004h
008D3C1D: push 00440E58h
008D3C22: push 00000010h
008D3C24: pop eax
008D3C25: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D3C2A: lea esi, var_6C
008D3C2D: mov edi, esp
008D3C2F: movsd 
008D3C30: movsd 
008D3C31: movsd 
008D3C32: movsd 
008D3C33: push 00000001h
008D3C35: push 00000000h
008D3C37: push 00440E48h
008D3C3C: push 00000000h
008D3C3E: push 00000018h
008D3C40: mov eax, var_000000B0
008D3C46: mov eax, [eax]
008D3C48: mov ecx, var_000000B0
008D3C4E: mov ecx, [ecx]
008D3C50: mov ecx, [ecx]
008D3C52: push eax
008D3C53: call [ecx+00000550h]
008D3C59: push eax
008D3C5A: lea eax, var_24
008D3C5D: push eax
008D3C5E: call 00410A84h ; Set (object)
008D3C63: push eax
008D3C64: lea eax, var_3C
008D3C67: push eax
008D3C68: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D3C6D: add esp, 00000010h
008D3C70: push eax
008D3C71: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D3C76: push eax
008D3C77: lea eax, var_28
008D3C7A: push eax
008D3C7B: call 00410A84h ; Set (object)
008D3C80: push eax
008D3C81: lea eax, var_4C
008D3C84: push eax
008D3C85: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D3C8A: add esp, 00000020h
008D3C8D: push eax
008D3C8E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D3C93: push eax
008D3C94: lea eax, var_2C
008D3C97: push eax
008D3C98: call 00410A84h ; Set (object)
008D3C9D: push eax
008D3C9E: lea eax, var_5C
008D3CA1: push eax
008D3CA2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D3CA7: add esp, 00000010h
008D3CAA: push eax
008D3CAB: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008D3CB0: sub ax, FFFFh
008D3CB4: neg ax
008D3CB7: sbb eax, eax
008D3CB9: inc eax
008D3CBA: neg eax
008D3CBC: mov var_80, ax
008D3CC0: lea eax, var_2C
008D3CC3: push eax
008D3CC4: lea eax, var_28
008D3CC7: push eax
008D3CC8: lea eax, var_24
008D3CCB: push eax
008D3CCC: push 00000003h
008D3CCE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D3CD3: add esp, 00000010h
008D3CD6: lea eax, var_5C
008D3CD9: push eax
008D3CDA: lea eax, var_4C
008D3CDD: push eax
008D3CDE: lea eax, var_3C
008D3CE1: push eax
008D3CE2: push 00000003h
008D3CE4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D3CE9: add esp, 00000010h
008D3CEC: movsx eax, word ptr var_80
008D3CF0: test eax, eax
008D3CF2: jz 8D3D03h
008D3CF4: mov eax, var_1C
008D3CF7: add eax, 00000001h
008D3CFA: jo 008D411Eh
008D3D00: mov var_1C, eax
008D3D03: jmp 008D3BBDh
008D3D08: jmp 008D3FDBh
008D3D0D: cmp [008F2010h], 00000000h
008D3D14: jnz 8D3D31h
008D3D16: push 008F2010h
008D3D1B: push 00433984h
008D3D20: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D3D25: mov var_000000B4, 008F2010h
008D3D2F: jmp 8D3D3Bh
008D3D31: mov var_000000B4, 008F2010h
008D3D3B: and var_64, 00000000h
008D3D3F: mov var_6C, 00008002h
008D3D46: push 00000000h
008D3D48: push 0044A9C8h ; COUNT
008D3D4D: push 00000000h
008D3D4F: push 0044A9B0h ; lstFiltered
008D3D54: mov eax, var_000000B4
008D3D5A: mov eax, [eax]
008D3D5C: mov ecx, var_000000B4
008D3D62: mov ecx, [ecx]
008D3D64: mov ecx, [ecx]
008D3D66: push eax
008D3D67: call [ecx+00000550h]
008D3D6D: push eax
008D3D6E: lea eax, var_24
008D3D71: push eax
008D3D72: call 00410A84h ; Set (object)
008D3D77: push eax
008D3D78: lea eax, var_3C
008D3D7B: push eax
008D3D7C: call 00410742h ; msvbvm60.dll.__vbaLateMemCallLd
008D3D81: add esp, 00000010h
008D3D84: push eax
008D3D85: lea eax, var_4C
008D3D88: push eax
008D3D89: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
008D3D8E: add esp, 00000010h
008D3D91: push eax
008D3D92: lea eax, var_6C
008D3D95: push eax
008D3D96: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
008D3D9B: mov var_80, ax
008D3D9F: lea ecx, var_24
008D3DA2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D3DA7: lea eax, var_4C
008D3DAA: push eax
008D3DAB: lea eax, var_3C
008D3DAE: push eax
008D3DAF: push 00000002h
008D3DB1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D3DB6: add esp, 0000000Ch
008D3DB9: movsx eax, word ptr var_80
008D3DBD: test eax, eax
008D3DBF: jz 008D3FDBh
008D3DC5: cmp [008F2010h], 00000000h
008D3DCC: jnz 8D3DE9h
008D3DCE: push 008F2010h
008D3DD3: push 00433984h
008D3DD8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D3DDD: mov var_000000B8, 008F2010h
008D3DE7: jmp 8D3DF3h
008D3DE9: mov var_000000B8, 008F2010h
008D3DF3: push 00000000h
008D3DF5: push 00000001h
008D3DF7: push 00440E48h
008D3DFC: push 00000000h
008D3DFE: push 00000018h
008D3E00: mov eax, var_000000B8
008D3E06: mov eax, [eax]
008D3E08: mov ecx, var_000000B8
008D3E0E: mov ecx, [ecx]
008D3E10: mov ecx, [ecx]
008D3E12: push eax
008D3E13: call [ecx+0000054Ch]
008D3E19: push eax
008D3E1A: lea eax, var_24
008D3E1D: push eax
008D3E1E: call 00410A84h ; Set (object)
008D3E23: push eax
008D3E24: lea eax, var_3C
008D3E27: push eax
008D3E28: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D3E2D: add esp, 00000010h
008D3E30: push eax
008D3E31: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D3E36: push eax
008D3E37: lea eax, var_28
008D3E3A: push eax
008D3E3B: call 00410A84h ; Set (object)
008D3E40: push eax
008D3E41: lea eax, var_4C
008D3E44: push eax
008D3E45: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D3E4A: add esp, 00000010h
008D3E4D: push eax
008D3E4E: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D3E53: mov var_0000009C, eax
008D3E59: mov var_00000098, 00000001h
008D3E63: mov var_18, 00000001h
008D3E6A: lea eax, var_28
008D3E6D: push eax
008D3E6E: lea eax, var_24
008D3E71: push eax
008D3E72: push 00000002h
008D3E74: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D3E79: add esp, 0000000Ch
008D3E7C: lea eax, var_4C
008D3E7F: push eax
008D3E80: lea eax, var_3C
008D3E83: push eax
008D3E84: push 00000002h
008D3E86: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D3E8B: add esp, 0000000Ch
008D3E8E: jmp 8D3EA2h
008D3E90: mov eax, var_18
008D3E93: add eax, var_00000098
008D3E99: jo 008D411Eh
008D3E9F: mov var_18, eax
008D3EA2: mov eax, var_18
008D3EA5: cmp eax, var_0000009C
008D3EAB: jnle 008D3FDBh
008D3EB1: mov eax, var_18
008D3EB4: mov var_64, eax
008D3EB7: mov var_6C, 00000003h
008D3EBE: cmp [008F2010h], 00000000h
008D3EC5: jnz 8D3EE2h
008D3EC7: push 008F2010h
008D3ECC: push 00433984h
008D3ED1: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D3ED6: mov var_000000BC, 008F2010h
008D3EE0: jmp 8D3EECh
008D3EE2: mov var_000000BC, 008F2010h
008D3EEC: push 00000000h
008D3EEE: push 00000004h
008D3EF0: push 00440E58h
008D3EF5: push 00000010h
008D3EF7: pop eax
008D3EF8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D3EFD: lea esi, var_6C
008D3F00: mov edi, esp
008D3F02: movsd 
008D3F03: movsd 
008D3F04: movsd 
008D3F05: movsd 
008D3F06: push 00000001h
008D3F08: push 00000000h
008D3F0A: push 00440E48h
008D3F0F: push 00000000h
008D3F11: push 00000018h
008D3F13: mov eax, var_000000BC
008D3F19: mov eax, [eax]
008D3F1B: mov ecx, var_000000BC
008D3F21: mov ecx, [ecx]
008D3F23: mov ecx, [ecx]
008D3F25: push eax
008D3F26: call [ecx+0000054Ch]
008D3F2C: push eax
008D3F2D: lea eax, var_24
008D3F30: push eax
008D3F31: call 00410A84h ; Set (object)
008D3F36: push eax
008D3F37: lea eax, var_3C
008D3F3A: push eax
008D3F3B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D3F40: add esp, 00000010h
008D3F43: push eax
008D3F44: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D3F49: push eax
008D3F4A: lea eax, var_28
008D3F4D: push eax
008D3F4E: call 00410A84h ; Set (object)
008D3F53: push eax
008D3F54: lea eax, var_4C
008D3F57: push eax
008D3F58: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D3F5D: add esp, 00000020h
008D3F60: push eax
008D3F61: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D3F66: push eax
008D3F67: lea eax, var_2C
008D3F6A: push eax
008D3F6B: call 00410A84h ; Set (object)
008D3F70: push eax
008D3F71: lea eax, var_5C
008D3F74: push eax
008D3F75: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D3F7A: add esp, 00000010h
008D3F7D: push eax
008D3F7E: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008D3F83: sub ax, FFFFh
008D3F87: neg ax
008D3F8A: sbb eax, eax
008D3F8C: inc eax
008D3F8D: neg eax
008D3F8F: mov var_80, ax
008D3F93: lea eax, var_2C
008D3F96: push eax
008D3F97: lea eax, var_28
008D3F9A: push eax
008D3F9B: lea eax, var_24
008D3F9E: push eax
008D3F9F: push 00000003h
008D3FA1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D3FA6: add esp, 00000010h
008D3FA9: lea eax, var_5C
008D3FAC: push eax
008D3FAD: lea eax, var_4C
008D3FB0: push eax
008D3FB1: lea eax, var_3C
008D3FB4: push eax
008D3FB5: push 00000003h
008D3FB7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D3FBC: add esp, 00000010h
008D3FBF: movsx eax, word ptr var_80
008D3FC3: test eax, eax
008D3FC5: jz 8D3FD6h
008D3FC7: mov eax, var_1C
008D3FCA: add eax, 00000001h
008D3FCD: jo 008D411Eh
008D3FD3: mov var_1C, eax
008D3FD6: jmp 008D3E90h
008D3FDB: mov eax, [ebp+08h]
008D3FDE: mov eax, [eax]
008D3FE0: push [ebp+08h]
008D3FE3: call [eax+00000304h]
008D3FE9: push eax
008D3FEA: lea eax, var_24
008D3FED: push eax
008D3FEE: call 00410A84h ; Set (object)
008D3FF3: mov var_80, eax
008D3FF6: lea eax, var_28
008D3FF9: push eax
008D3FFA: push 00000001h
008D3FFC: mov eax, var_80
008D3FFF: mov eax, [eax]
008D4001: push var_80
008D4004: call [eax+40h]
008D4007: fclex 
008D4009: mov var_00000084, eax
008D400F: cmp var_00000084, 00000000h
008D4016: jnl 8D4035h
008D4018: push 00000040h
008D401A: push 00440DE8h
008D401F: push var_80
008D4022: push var_00000084
008D4028: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D402D: mov var_000000C0, eax
008D4033: jmp 8D403Ch
008D4035: and var_000000C0, 00000000h
008D403C: mov eax, var_28
008D403F: mov var_00000088, eax
008D4045: push var_1C
008D4048: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008D404D: mov edx, eax
008D404F: lea ecx, var_20
008D4052: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D4057: push eax
008D4058: mov eax, var_00000088
008D405E: mov eax, [eax]
008D4060: push var_00000088
008D4066: call [eax+54h]
008D4069: fclex 
008D406B: mov var_0000008C, eax
008D4071: cmp var_0000008C, 00000000h
008D4078: jnl 8D409Ah
008D407A: push 00000054h
008D407C: push 004425E4h
008D4081: push var_00000088
008D4087: push var_0000008C
008D408D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D4092: mov var_000000C4, eax
008D4098: jmp 8D40A1h
008D409A: and var_000000C4, 00000000h
008D40A1: lea ecx, var_20
008D40A4: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008D40A9: lea eax, var_28
008D40AC: push eax
008D40AD: lea eax, var_24
008D40B0: push eax
008D40B1: push 00000002h
008D40B3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D40B8: add esp, 0000000Ch
008D40BB: mov var_04, 00000000h
008D40C2: push 008D40FFh
008D40C7: jmp 8D40FEh
008D40C9: lea ecx, var_20
008D40CC: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008D40D1: lea eax, var_2C
008D40D4: push eax
008D40D5: lea eax, var_28
008D40D8: push eax
008D40D9: lea eax, var_24
008D40DC: push eax
008D40DD: push 00000003h
008D40DF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D40E4: add esp, 00000010h
008D40E7: lea eax, var_5C
008D40EA: push eax
008D40EB: lea eax, var_4C
008D40EE: push eax
008D40EF: lea eax, var_3C
008D40F2: push eax
008D40F3: push 00000003h
008D40F5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D40FA: add esp, 00000010h
008D40FD: ret 
End Sub

