VERSION 5.00
Begin VB.Form frmReverseRelay
  Caption = "Reverse relay"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmReverseRelay.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 13020
  ClientHeight = 7335
  StartUpPosition = 3 'Windows Default
  Begin XtremeSuiteControls.ListView lstHistory
    Left = 0
    Top = 0
    Width = 12975
    Height = 5775
    TabIndex = 0
  End
  Begin MSWinsockLib.Winsock wsRemote
    Index = 0
  End
  Begin MSWinsockLib.Winsock wsBrowser
    Index = 0
  End
  Begin XtremeSuiteControls.GroupBox gbOptions
    Left = 0
    Top = 5880
    Width = 12975
    Height = 1095
    TabIndex = 1
    Begin VB.TextBox txtPortDaemon
      Left = 1320
      Top = 720
      Width = 855
      Height = 285
      Text = "4547"
      TabIndex = 6
      MaxLength = 5
    End
    Begin VB.TextBox txtPortBrowser
      Left = 1320
      Top = 360
      Width = 855
      Height = 285
      Text = "4546"
      TabIndex = 4
      MaxLength = 5
    End
    Begin XtremeSuiteControls.PushButton cmdListen
      Left = 11760
      Top = 600
      Width = 1095
      Height = 375
      TabIndex = 7
    End
    Begin XtremeSuiteControls.PushButton cmdHelp
      Left = 10560
      Top = 600
      Width = 1095
      Height = 375
      TabIndex = 8
    End
    Begin VB.Label lblProxy
      Caption = "Daemon port:"
      Index = 1
      Left = 240
      Top = 720
      Width = 975
      Height = 255
      TabIndex = 5
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblProxy
      Caption = "Browser port:"
      Index = 0
      Left = 240
      Top = 360
      Width = 975
      Height = 255
      TabIndex = 2
      Alignment = 1 'Right Justify
    End
  End
  Begin MSComctlLib.StatusBar sbReverseRelay
    Left = 0
    Top = 7035
    Width = 13020
    Height = 300
    TabIndex = 3
  End
  Begin VB.Menu mnuRevMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuRev
      Index = 0
      Caption = "Clear"
    End
  End
End

Attribute VB_Name = "frmReverseRelay"


Private sub lstHistory__8CA277
008CA277: push ebp
008CA278: mov ebp, esp
008CA27A: sub esp, 0000000Ch
008CA27D: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CA282: mov eax, fs:[00h]
008CA288: push eax
008CA289: mov fs:[00000000h], esp
008CA290: push 00000054h
008CA292: pop eax
008CA293: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CA298: push ebx
008CA299: push esi
008CA29A: push edi
008CA29B: mov var_0C, esp
008CA29E: mov var_08, 0040F6A8h
008CA2A5: mov eax, [ebp+08h]
008CA2A8: and eax, 00000001h
008CA2AB: mov var_04, eax
008CA2AE: mov eax, [ebp+08h]
008CA2B1: and al, FEh
008CA2B3: mov [ebp+08h], eax
008CA2B6: mov eax, [ebp+08h]
008CA2B9: mov eax, [eax]
008CA2BB: push [ebp+08h]
008CA2BE: call [eax+04h]
008CA2C1: mov eax, [ebp+0Ch]
008CA2C4: cmp word ptr [eax], 0002h
008CA2C8: jnz 008CA3A2h
008CA2CE: mov var_50, 80020004h
008CA2D5: mov var_58, 0000000Ah
008CA2DC: mov var_40, 80020004h
008CA2E3: mov var_48, 0000000Ah
008CA2EA: mov var_30, 80020004h
008CA2F1: mov var_38, 0000000Ah
008CA2F8: mov var_20, 80020004h
008CA2FF: mov var_28, 0000000Ah
008CA306: push 00000010h
008CA308: pop eax
008CA309: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CA30E: lea esi, var_58
008CA311: mov edi, esp
008CA313: movsd 
008CA314: movsd 
008CA315: movsd 
008CA316: movsd 
008CA317: push 00000010h
008CA319: pop eax
008CA31A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CA31F: lea esi, var_48
008CA322: mov edi, esp
008CA324: movsd 
008CA325: movsd 
008CA326: movsd 
008CA327: movsd 
008CA328: push 00000010h
008CA32A: pop eax
008CA32B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CA330: lea esi, var_38
008CA333: mov edi, esp
008CA335: movsd 
008CA336: movsd 
008CA337: movsd 
008CA338: movsd 
008CA339: push 00000010h
008CA33B: pop eax
008CA33C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CA341: lea esi, var_28
008CA344: mov edi, esp
008CA346: movsd 
008CA347: movsd 
008CA348: movsd 
008CA349: movsd 
008CA34A: mov eax, [ebp+08h]
008CA34D: mov eax, [eax]
008CA34F: push [ebp+08h]
008CA352: call [eax+00000308h]
008CA358: push eax
008CA359: lea eax, var_18
008CA35C: push eax
008CA35D: call 00410A84h ; Set (object)
008CA362: push eax
008CA363: mov eax, [ebp+08h]
008CA366: mov eax, [eax]
008CA368: push [ebp+08h]
008CA36B: call [eax+000002BCh]
008CA371: fclex 
008CA373: mov var_5C, eax
008CA376: cmp var_5C, 00000000h
008CA37A: jnl 8CA396h
008CA37C: push 000002BCh
008CA381: push 00448B3Ch
008CA386: push [ebp+08h]
008CA389: push var_5C
008CA38C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CA391: mov var_68, eax
008CA394: jmp 8CA39Ah
008CA396: and var_68, 00000000h
008CA39A: lea ecx, var_18
008CA39D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008CA3A2: mov var_04, 00000000h
008CA3A9: push 008CA3BAh
008CA3AE: jmp 8CA3B9h
008CA3B0: lea ecx, var_18
008CA3B3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008CA3B8: ret 
End Sub

Private sub lstHistory__8CA200
008CA200: push ebp
008CA201: mov ebp, esp
008CA203: sub esp, 0000000Ch
008CA206: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CA20B: mov eax, fs:[00h]
008CA211: push eax
008CA212: mov fs:[00000000h], esp
008CA219: push 00000008h
008CA21B: pop eax
008CA21C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CA221: push ebx
008CA222: push esi
008CA223: push edi
008CA224: mov var_0C, esp
008CA227: mov var_08, 0040F6A0h
008CA22E: mov eax, [ebp+08h]
008CA231: and eax, 00000001h
008CA234: mov var_04, eax
008CA237: mov eax, [ebp+08h]
008CA23A: and al, FEh
008CA23C: mov [ebp+08h], eax
008CA23F: mov eax, [ebp+08h]
008CA242: mov eax, [eax]
008CA244: push [ebp+08h]
008CA247: call [eax+04h]
008CA24A: mov eax, [ebp+0Ch]
008CA24D: or word ptr [eax], FFFFh
008CA251: mov var_04, 00000000h
008CA258: mov eax, [ebp+08h]
008CA25B: mov eax, [eax]
008CA25D: push [ebp+08h]
008CA260: call [eax+08h]
008CA263: mov eax, var_04
008CA266: mov ecx, var_14
008CA269: mov fs:[00000000h], ecx
008CA270: pop edi
008CA271: pop esi
008CA272: pop ebx
008CA273: leave 
008CA274: retn 0008h
End Sub

Private sub mnuRev__8CAF7C
008CAF7C: push ebp
008CAF7D: mov ebp, esp
008CAF7F: sub esp, 0000000Ch
008CAF82: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CAF87: mov eax, fs:[00h]
008CAF8D: push eax
008CAF8E: mov fs:[00000000h], esp
008CAF95: push 00000028h
008CAF97: pop eax
008CAF98: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CAF9D: push ebx
008CAF9E: push esi
008CAF9F: push edi
008CAFA0: mov var_0C, esp
008CAFA3: mov var_08, 0040F6C8h
008CAFAA: mov eax, [ebp+08h]
008CAFAD: and eax, 00000001h
008CAFB0: mov var_04, eax
008CAFB3: mov eax, [ebp+08h]
008CAFB6: and al, FEh
008CAFB8: mov [ebp+08h], eax
008CAFBB: mov eax, [ebp+08h]
008CAFBE: mov eax, [eax]
008CAFC0: push [ebp+08h]
008CAFC3: call [eax+04h]
008CAFC6: mov eax, [ebp+0Ch]
008CAFC9: mov ax, [eax]
008CAFCC: mov var_30, ax
008CAFD0: movsx eax, word ptr var_30
008CAFD4: mov var_3C, eax
008CAFD7: cmp var_3C, 00000000h
008CAFDB: jz 8CAFDFh
008CAFDD: jmp 8CB044h
008CAFDF: push 00000000h
008CAFE1: push 00000003h
008CAFE3: push 00440E48h
008CAFE8: push 00000000h
008CAFEA: push 00000018h
008CAFEC: mov eax, [ebp+08h]
008CAFEF: mov eax, [eax]
008CAFF1: push [ebp+08h]
008CAFF4: call [eax+00000310h]
008CAFFA: push eax
008CAFFB: lea eax, var_18
008CAFFE: push eax
008CAFFF: call 00410A84h ; Set (object)
008CB004: push eax
008CB005: lea eax, var_2C
008CB008: push eax
008CB009: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CB00E: add esp, 00000010h
008CB011: push eax
008CB012: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CB017: push eax
008CB018: lea eax, var_1C
008CB01B: push eax
008CB01C: call 00410A84h ; Set (object)
008CB021: push eax
008CB022: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CB027: add esp, 0000000Ch
008CB02A: lea eax, var_1C
008CB02D: push eax
008CB02E: lea eax, var_18
008CB031: push eax
008CB032: push 00000002h
008CB034: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CB039: add esp, 0000000Ch
008CB03C: lea ecx, var_2C
008CB03F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008CB044: mov var_04, 00000000h
008CB04B: push 008CB06Eh
008CB050: jmp 8CB06Dh
008CB052: lea eax, var_1C
008CB055: push eax
008CB056: lea eax, var_18
008CB059: push eax
008CB05A: push 00000002h
008CB05C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CB061: add esp, 0000000Ch
008CB064: lea ecx, var_2C
008CB067: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008CB06C: ret 
End Sub

Private sub cmdHelp__8C6D0A
008C6D0A: push ebp
008C6D0B: mov ebp, esp
008C6D0D: sub esp, 0000000Ch
008C6D10: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008C6D15: mov eax, fs:[00h]
008C6D1B: push eax
008C6D1C: mov fs:[00000000h], esp
008C6D23: push 00000038h
008C6D25: pop eax
008C6D26: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C6D2B: push ebx
008C6D2C: push esi
008C6D2D: push edi
008C6D2E: mov var_0C, esp
008C6D31: mov var_08, 0040F600h
008C6D38: mov eax, [ebp+08h]
008C6D3B: and eax, 00000001h
008C6D3E: mov var_04, eax
008C6D41: mov eax, [ebp+08h]
008C6D44: and al, FEh
008C6D46: mov [ebp+08h], eax
008C6D49: mov eax, [ebp+08h]
008C6D4C: mov eax, [eax]
008C6D4E: push [ebp+08h]
008C6D51: call [eax+04h]
008C6D54: cmp [008F2DD0h], 00000000h
008C6D5B: jnz 8C6D75h
008C6D5D: push 008F2DD0h
008C6D62: push 00412E6Ch
008C6D67: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C6D6C: mov var_48, 008F2DD0h
008C6D73: jmp 8C6D7Ch
008C6D75: mov var_48, 008F2DD0h
008C6D7C: mov eax, var_48
008C6D7F: mov eax, [eax]
008C6D81: mov var_38, eax
008C6D84: mov eax, [ebp+08h]
008C6D87: mov var_2C, eax
008C6D8A: mov var_34, 00000009h
008C6D91: mov var_1C, 80020004h
008C6D98: mov var_24, 0000000Ah
008C6D9F: push 00000010h
008C6DA1: pop eax
008C6DA2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C6DA7: lea esi, var_34
008C6DAA: mov edi, esp
008C6DAC: movsd 
008C6DAD: movsd 
008C6DAE: movsd 
008C6DAF: movsd 
008C6DB0: push 00000010h
008C6DB2: pop eax
008C6DB3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C6DB8: lea esi, var_24
008C6DBB: mov edi, esp
008C6DBD: movsd 
008C6DBE: movsd 
008C6DBF: movsd 
008C6DC0: movsd 
008C6DC1: mov eax, var_38
008C6DC4: mov eax, [eax]
008C6DC6: push var_38
008C6DC9: call [eax+000002B0h]
008C6DCF: fclex 
008C6DD1: mov var_3C, eax
008C6DD4: cmp var_3C, 00000000h
008C6DD8: jnl 8C6DF4h
008C6DDA: push 000002B0h
008C6DDF: push 00460AB4h
008C6DE4: push var_38
008C6DE7: push var_3C
008C6DEA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C6DEF: mov var_4C, eax
008C6DF2: jmp 8C6DF8h
008C6DF4: and var_4C, 00000000h
008C6DF8: mov var_04, 00000000h
008C6DFF: mov eax, [ebp+08h]
008C6E02: mov eax, [eax]
008C6E04: push [ebp+08h]
008C6E07: call [eax+08h]
008C6E0A: mov eax, var_04
008C6E0D: mov ecx, var_14
008C6E10: mov fs:[00000000h], ecx
008C6E17: pop edi
008C6E18: pop esi
008C6E19: pop ebx
008C6E1A: leave 
008C6E1B: retn 0004h
End Sub

Private sub Form__8C9216
008C9216: push ebp
008C9217: mov ebp, esp
008C9219: sub esp, 0000000Ch
008C921C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008C9221: mov eax, fs:[00h]
008C9227: push eax
008C9228: mov fs:[00000000h], esp
008C922F: mov eax, 000000B8h
008C9234: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9239: push ebx
008C923A: push esi
008C923B: push edi
008C923C: mov var_0C, esp
008C923F: mov var_08, 0040F640h
008C9246: mov eax, [ebp+08h]
008C9249: and eax, 00000001h
008C924C: mov var_04, eax
008C924F: mov eax, [ebp+08h]
008C9252: and al, FEh
008C9254: mov [ebp+08h], eax
008C9257: mov eax, [ebp+08h]
008C925A: mov eax, [eax]
008C925C: push [ebp+08h]
008C925F: call [eax+04h]
008C9262: mov var_3C, 80020004h
008C9269: mov var_44, 0000000Ah
008C9270: push 00000010h
008C9272: pop eax
008C9273: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9278: lea esi, var_44
008C927B: mov edi, esp
008C927D: movsd 
008C927E: movsd 
008C927F: movsd 
008C9280: movsd 
008C9281: push 004607DCh ; bport
008C9286: push 00460C94h ; reverse-relay
008C928B: push 00445984h ; bssnet
008C9290: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008C9295: mov edx, eax
008C9297: lea ecx, var_1C
008C929A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C929F: mov var_3C, 80020004h
008C92A6: mov var_44, 0000000Ah
008C92AD: push 00000010h
008C92AF: pop eax
008C92B0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C92B5: lea esi, var_44
008C92B8: mov edi, esp
008C92BA: movsd 
008C92BB: movsd 
008C92BC: movsd 
008C92BD: movsd 
008C92BE: push 004607ECh ; dport
008C92C3: push 00460C94h ; reverse-relay
008C92C8: push 00445984h ; bssnet
008C92CD: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008C92D2: mov edx, eax
008C92D4: lea ecx, var_18
008C92D7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C92DC: push var_1C
008C92DF: push 00000000h
008C92E1: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008C92E6: test eax, eax
008C92E8: jz 8C9362h
008C92EA: mov eax, [ebp+08h]
008C92ED: mov eax, [eax]
008C92EF: push [ebp+08h]
008C92F2: call [eax+00000300h]
008C92F8: push eax
008C92F9: lea eax, var_20
008C92FC: push eax
008C92FD: call 00410A84h ; Set (object)
008C9302: mov var_000000B8, eax
008C9308: push var_1C
008C930B: mov eax, var_000000B8
008C9311: mov eax, [eax]
008C9313: push var_000000B8
008C9319: call [eax+000000A4h]
008C931F: fclex 
008C9321: mov var_000000BC, eax
008C9327: cmp var_000000BC, 00000000h
008C932E: jnl 8C9353h
008C9330: push 000000A4h
008C9335: push 00440E08h
008C933A: push var_000000B8
008C9340: push var_000000BC
008C9346: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C934B: mov var_000000C8, eax
008C9351: jmp 8C935Ah
008C9353: and var_000000C8, 00000000h
008C935A: lea ecx, var_20
008C935D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C9362: push var_18
008C9365: push 00000000h
008C9367: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008C936C: test eax, eax
008C936E: jz 8C93E8h
008C9370: mov eax, [ebp+08h]
008C9373: mov eax, [eax]
008C9375: push [ebp+08h]
008C9378: call [eax+000002FCh]
008C937E: push eax
008C937F: lea eax, var_20
008C9382: push eax
008C9383: call 00410A84h ; Set (object)
008C9388: mov var_000000B8, eax
008C938E: push var_18
008C9391: mov eax, var_000000B8
008C9397: mov eax, [eax]
008C9399: push var_000000B8
008C939F: call [eax+000000A4h]
008C93A5: fclex 
008C93A7: mov var_000000BC, eax
008C93AD: cmp var_000000BC, 00000000h
008C93B4: jnl 8C93D9h
008C93B6: push 000000A4h
008C93BB: push 00440E08h
008C93C0: push var_000000B8
008C93C6: push var_000000BC
008C93CC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C93D1: mov var_000000CC, eax
008C93D7: jmp 8C93E0h
008C93D9: and var_000000CC, 00000000h
008C93E0: lea ecx, var_20
008C93E3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C93E8: mov var_3C, 80020004h
008C93EF: mov var_44, 0000000Ah
008C93F6: mov var_5C, 80020004h
008C93FD: mov var_64, 0000000Ah
008C9404: mov var_7C, 00460614h ; Socket
008C940B: mov var_00000084, 00000008h
008C9415: mov var_0000009C, 000005DCh
008C941F: mov var_000000A4, 00000002h
008C9429: push 00000010h
008C942B: pop eax
008C942C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9431: lea esi, var_44
008C9434: mov edi, esp
008C9436: movsd 
008C9437: movsd 
008C9438: movsd 
008C9439: movsd 
008C943A: push 00000010h
008C943C: pop eax
008C943D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9442: lea esi, var_64
008C9445: mov edi, esp
008C9447: movsd 
008C9448: movsd 
008C9449: movsd 
008C944A: movsd 
008C944B: push 00000010h
008C944D: pop eax
008C944E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9453: lea esi, var_00000084
008C9459: mov edi, esp
008C945B: movsd 
008C945C: movsd 
008C945D: movsd 
008C945E: movsd 
008C945F: push 00000010h
008C9461: pop eax
008C9462: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9467: lea esi, var_000000A4
008C946D: mov edi, esp
008C946F: movsd 
008C9470: movsd 
008C9471: movsd 
008C9472: movsd 
008C9473: push 00000004h
008C9475: push 00000002h
008C9477: push 00445534h
008C947C: push 00000000h
008C947E: push 00000019h
008C9480: mov eax, [ebp+08h]
008C9483: mov eax, [eax]
008C9485: push [ebp+08h]
008C9488: call [eax+00000310h]
008C948E: push eax
008C948F: lea eax, var_20
008C9492: push eax
008C9493: call 00410A84h ; Set (object)
008C9498: push eax
008C9499: lea eax, var_34
008C949C: push eax
008C949D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C94A2: add esp, 00000010h
008C94A5: push eax
008C94A6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C94AB: push eax
008C94AC: lea eax, var_24
008C94AF: push eax
008C94B0: call 00410A84h ; Set (object)
008C94B5: push eax
008C94B6: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C94BB: add esp, 0000004Ch
008C94BE: lea eax, var_24
008C94C1: push eax
008C94C2: lea eax, var_20
008C94C5: push eax
008C94C6: push 00000002h
008C94C8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C94CD: add esp, 0000000Ch
008C94D0: lea ecx, var_34
008C94D3: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C94D8: mov var_3C, 80020004h
008C94DF: mov var_44, 0000000Ah
008C94E6: mov var_5C, 80020004h
008C94ED: mov var_64, 0000000Ah
008C94F4: mov var_7C, 004468C4h ; Event
008C94FB: mov var_00000084, 00000008h
008C9505: mov var_0000009C, 00001388h
008C950F: mov var_000000A4, 00000002h
008C9519: push 00000010h
008C951B: pop eax
008C951C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9521: lea esi, var_44
008C9524: mov edi, esp
008C9526: movsd 
008C9527: movsd 
008C9528: movsd 
008C9529: movsd 
008C952A: push 00000010h
008C952C: pop eax
008C952D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9532: lea esi, var_64
008C9535: mov edi, esp
008C9537: movsd 
008C9538: movsd 
008C9539: movsd 
008C953A: movsd 
008C953B: push 00000010h
008C953D: pop eax
008C953E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9543: lea esi, var_00000084
008C9549: mov edi, esp
008C954B: movsd 
008C954C: movsd 
008C954D: movsd 
008C954E: movsd 
008C954F: push 00000010h
008C9551: pop eax
008C9552: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9557: lea esi, var_000000A4
008C955D: mov edi, esp
008C955F: movsd 
008C9560: movsd 
008C9561: movsd 
008C9562: movsd 
008C9563: push 00000004h
008C9565: push 00000002h
008C9567: push 00445534h
008C956C: push 00000000h
008C956E: push 00000019h
008C9570: mov eax, [ebp+08h]
008C9573: mov eax, [eax]
008C9575: push [ebp+08h]
008C9578: call [eax+00000310h]
008C957E: push eax
008C957F: lea eax, var_20
008C9582: push eax
008C9583: call 00410A84h ; Set (object)
008C9588: push eax
008C9589: lea eax, var_34
008C958C: push eax
008C958D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C9592: add esp, 00000010h
008C9595: push eax
008C9596: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C959B: push eax
008C959C: lea eax, var_24
008C959F: push eax
008C95A0: call 00410A84h ; Set (object)
008C95A5: push eax
008C95A6: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C95AB: add esp, 0000004Ch
008C95AE: lea eax, var_24
008C95B1: push eax
008C95B2: lea eax, var_20
008C95B5: push eax
008C95B6: push 00000002h
008C95B8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C95BD: add esp, 0000000Ch
008C95C0: lea ecx, var_34
008C95C3: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C95C8: mov var_3C, 80020004h
008C95CF: mov var_44, 0000000Ah
008C95D6: mov var_5C, 80020004h
008C95DD: mov var_64, 0000000Ah
008C95E4: mov var_7C, 00446840h ; Size
008C95EB: mov var_00000084, 00000008h
008C95F5: mov var_0000009C, 000007D0h
008C95FF: mov var_000000A4, 00000002h
008C9609: push 00000010h
008C960B: pop eax
008C960C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9611: lea esi, var_44
008C9614: mov edi, esp
008C9616: movsd 
008C9617: movsd 
008C9618: movsd 
008C9619: movsd 
008C961A: push 00000010h
008C961C: pop eax
008C961D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9622: lea esi, var_64
008C9625: mov edi, esp
008C9627: movsd 
008C9628: movsd 
008C9629: movsd 
008C962A: movsd 
008C962B: push 00000010h
008C962D: pop eax
008C962E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9633: lea esi, var_00000084
008C9639: mov edi, esp
008C963B: movsd 
008C963C: movsd 
008C963D: movsd 
008C963E: movsd 
008C963F: push 00000010h
008C9641: pop eax
008C9642: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9647: lea esi, var_000000A4
008C964D: mov edi, esp
008C964F: movsd 
008C9650: movsd 
008C9651: movsd 
008C9652: movsd 
008C9653: push 00000004h
008C9655: push 00000002h
008C9657: push 00445534h
008C965C: push 00000000h
008C965E: push 00000019h
008C9660: mov eax, [ebp+08h]
008C9663: mov eax, [eax]
008C9665: push [ebp+08h]
008C9668: call [eax+00000310h]
008C966E: push eax
008C966F: lea eax, var_20
008C9672: push eax
008C9673: call 00410A84h ; Set (object)
008C9678: push eax
008C9679: lea eax, var_34
008C967C: push eax
008C967D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C9682: add esp, 00000010h
008C9685: push eax
008C9686: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C968B: push eax
008C968C: lea eax, var_24
008C968F: push eax
008C9690: call 00410A84h ; Set (object)
008C9695: push eax
008C9696: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C969B: add esp, 0000004Ch
008C969E: lea eax, var_24
008C96A1: push eax
008C96A2: lea eax, var_20
008C96A5: push eax
008C96A6: push 00000002h
008C96A8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C96AD: add esp, 0000000Ch
008C96B0: lea ecx, var_34
008C96B3: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C96B8: mov var_04, 00000000h
008C96BF: push 008C96F2h
008C96C4: jmp 8C96E1h
008C96C6: lea eax, var_24
008C96C9: push eax
008C96CA: lea eax, var_20
008C96CD: push eax
008C96CE: push 00000002h
008C96D0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C96D5: add esp, 0000000Ch
008C96D8: lea ecx, var_34
008C96DB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C96E0: ret 
End Sub

Private sub Form__8C9711
008C9711: push ebp
008C9712: mov ebp, esp
008C9714: sub esp, 00000018h
008C9717: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008C971C: mov eax, fs:[00h]
008C9722: push eax
008C9723: mov fs:[00000000h], esp
008C972A: mov eax, 00000140h
008C972F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9734: push ebx
008C9735: push esi
008C9736: push edi
008C9737: mov var_18, esp
008C973A: mov var_14, 0040F650h
008C9741: mov eax, [ebp+08h]
008C9744: and eax, 00000001h
008C9747: mov var_10, eax
008C974A: mov eax, [ebp+08h]
008C974D: and al, FEh
008C974F: mov [ebp+08h], eax
008C9752: mov var_0C, 00000000h
008C9759: mov eax, [ebp+08h]
008C975C: mov eax, [eax]
008C975E: push [ebp+08h]
008C9761: call [eax+04h]
008C9764: mov var_04, 00000001h
008C976B: mov var_04, 00000002h
008C9772: push FFFFFFFFh
008C9774: call 00410A60h ; On Error ...
008C9779: mov var_04, 00000003h
008C9780: push 00000000h
008C9782: push 80010006h
008C9787: mov eax, [ebp+08h]
008C978A: mov eax, [eax]
008C978C: push [ebp+08h]
008C978F: call [eax+0000031Ch]
008C9795: push eax
008C9796: lea eax, var_24
008C9799: push eax
008C979A: call 00410A84h ; Set (object)
008C979F: push eax
008C97A0: lea eax, var_4C
008C97A3: push eax
008C97A4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C97A9: add esp, 00000010h
008C97AC: push 00000000h
008C97AE: push 80010006h
008C97B3: mov eax, [ebp+08h]
008C97B6: mov eax, [eax]
008C97B8: push [ebp+08h]
008C97BB: call [eax+00000328h]
008C97C1: push eax
008C97C2: lea eax, var_28
008C97C5: push eax
008C97C6: call 00410A84h ; Set (object)
008C97CB: push eax
008C97CC: lea eax, var_5C
008C97CF: push eax
008C97D0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C97D5: add esp, 00000010h
008C97D8: fld real4 ptr [00402BA8h]
008C97DE: fstp real4 ptr var_000000A4
008C97E4: mov var_000000AC, 00000004h
008C97EE: mov var_000000C4, 00000014h
008C97F8: mov var_000000CC, 00000002h
008C9802: lea eax, var_00000120
008C9808: push eax
008C9809: mov eax, [ebp+08h]
008C980C: mov eax, [eax]
008C980E: push [ebp+08h]
008C9811: call [eax+00000080h]
008C9817: fclex 
008C9819: mov var_00000128, eax
008C981F: cmp var_00000128, 00000000h
008C9826: jnl 8C9848h
008C9828: push 00000080h
008C982D: push 00448B3Ch
008C9832: push [ebp+08h]
008C9835: push var_00000128
008C983B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C9840: mov var_00000144, eax
008C9846: jmp 8C984Fh
008C9848: and var_00000144, 00000000h
008C984F: fld real4 ptr var_00000120
008C9855: fsub real4 ptr [0040C5CCh]
008C985B: fstp real4 ptr var_000000E4
008C9861: fstsw ax
008C9863: test al, 0Dh
008C9865: jnz 008CA078h
008C986B: mov var_000000EC, 00000004h
008C9875: lea eax, var_00000124
008C987B: push eax
008C987C: mov eax, [ebp+08h]
008C987F: mov eax, [eax]
008C9881: push [ebp+08h]
008C9884: call [eax+00000088h]
008C988A: fclex 
008C988C: mov var_0000012C, eax
008C9892: cmp var_0000012C, 00000000h
008C9899: jnl 8C98BBh
008C989B: push 00000088h
008C98A0: push 00448B3Ch
008C98A5: push [ebp+08h]
008C98A8: push var_0000012C
008C98AE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C98B3: mov var_00000148, eax
008C98B9: jmp 8C98C2h
008C98BB: and var_00000148, 00000000h
008C98C2: lea eax, var_4C
008C98C5: push eax
008C98C6: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C98CB: fsubr real4 ptr var_00000124
008C98D1: fstsw ax
008C98D3: test al, 0Dh
008C98D5: jnz 008CA078h
008C98DB: fstp real4 ptr var_0000014C
008C98E1: lea eax, var_5C
008C98E4: push eax
008C98E5: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C98EA: fsubr real4 ptr var_0000014C
008C98F0: fsub real4 ptr [0040C470h]
008C98F6: fstp real4 ptr var_00000104
008C98FC: fstsw ax
008C98FE: test al, 0Dh
008C9900: jnz 008CA078h
008C9906: mov var_0000010C, 00000004h
008C9910: push 00000010h
008C9912: pop eax
008C9913: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9918: lea esi, var_000000AC
008C991E: mov edi, esp
008C9920: movsd 
008C9921: movsd 
008C9922: movsd 
008C9923: movsd 
008C9924: push 00000010h
008C9926: pop eax
008C9927: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C992C: lea esi, var_000000CC
008C9932: mov edi, esp
008C9934: movsd 
008C9935: movsd 
008C9936: movsd 
008C9937: movsd 
008C9938: push 00000010h
008C993A: pop eax
008C993B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9940: lea esi, var_000000EC
008C9946: mov edi, esp
008C9948: movsd 
008C9949: movsd 
008C994A: movsd 
008C994B: movsd 
008C994C: push 00000010h
008C994E: pop eax
008C994F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9954: lea esi, var_0000010C
008C995A: mov edi, esp
008C995C: movsd 
008C995D: movsd 
008C995E: movsd 
008C995F: movsd 
008C9960: push 00000004h
008C9962: push 80011002h
008C9967: mov eax, [ebp+08h]
008C996A: mov eax, [eax]
008C996C: push [ebp+08h]
008C996F: call [eax+00000310h]
008C9975: push eax
008C9976: lea eax, var_2C
008C9979: push eax
008C997A: call 00410A84h ; Set (object)
008C997F: push eax
008C9980: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C9985: add esp, 0000004Ch
008C9988: lea eax, var_2C
008C998B: push eax
008C998C: lea eax, var_28
008C998F: push eax
008C9990: lea eax, var_24
008C9993: push eax
008C9994: push 00000003h
008C9996: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C999B: add esp, 00000010h
008C999E: lea eax, var_5C
008C99A1: push eax
008C99A2: lea eax, var_4C
008C99A5: push eax
008C99A6: push 00000002h
008C99A8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C99AD: add esp, 0000000Ch
008C99B0: mov var_04, 00000004h
008C99B7: fld real4 ptr [00402BA8h]
008C99BD: fstp real4 ptr var_000000A4
008C99C3: mov var_000000AC, 00000004h
008C99CD: push 00000000h
008C99CF: push 80010006h
008C99D4: mov eax, [ebp+08h]
008C99D7: mov eax, [eax]
008C99D9: push [ebp+08h]
008C99DC: call [eax+00000310h]
008C99E2: push eax
008C99E3: lea eax, var_24
008C99E6: push eax
008C99E7: call 00410A84h ; Set (object)
008C99EC: push eax
008C99ED: lea eax, var_4C
008C99F0: push eax
008C99F1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C99F6: add esp, 00000010h
008C99F9: push eax
008C99FA: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C99FF: fstp real4 ptr var_000000C4
008C9A05: mov var_000000CC, 00000004h
008C9A0F: lea eax, var_00000120
008C9A15: push eax
008C9A16: mov eax, [ebp+08h]
008C9A19: mov eax, [eax]
008C9A1B: push [ebp+08h]
008C9A1E: call [eax+00000080h]
008C9A24: fclex 
008C9A26: mov var_00000128, eax
008C9A2C: cmp var_00000128, 00000000h
008C9A33: jnl 8C9A55h
008C9A35: push 00000080h
008C9A3A: push 00448B3Ch
008C9A3F: push [ebp+08h]
008C9A42: push var_00000128
008C9A48: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C9A4D: mov var_00000150, eax
008C9A53: jmp 8C9A5Ch
008C9A55: and var_00000150, 00000000h
008C9A5C: fld real4 ptr var_00000120
008C9A62: fsub real4 ptr [0040C5CCh]
008C9A68: fstp real4 ptr var_000000E4
008C9A6E: fstsw ax
008C9A70: test al, 0Dh
008C9A72: jnz 008CA078h
008C9A78: mov var_000000EC, 00000004h
008C9A82: push 00000010h
008C9A84: pop eax
008C9A85: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9A8A: lea esi, var_000000AC
008C9A90: mov edi, esp
008C9A92: movsd 
008C9A93: movsd 
008C9A94: movsd 
008C9A95: movsd 
008C9A96: push 00000010h
008C9A98: pop eax
008C9A99: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9A9E: lea esi, var_000000CC
008C9AA4: mov edi, esp
008C9AA6: movsd 
008C9AA7: movsd 
008C9AA8: movsd 
008C9AA9: movsd 
008C9AAA: push 00000010h
008C9AAC: pop eax
008C9AAD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9AB2: lea esi, var_000000EC
008C9AB8: mov edi, esp
008C9ABA: movsd 
008C9ABB: movsd 
008C9ABC: movsd 
008C9ABD: movsd 
008C9ABE: push 00000003h
008C9AC0: push 80011001h
008C9AC5: mov eax, [ebp+08h]
008C9AC8: mov eax, [eax]
008C9ACA: push [ebp+08h]
008C9ACD: call [eax+0000031Ch]
008C9AD3: push eax
008C9AD4: lea eax, var_28
008C9AD7: push eax
008C9AD8: call 00410A84h ; Set (object)
008C9ADD: push eax
008C9ADE: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C9AE3: add esp, 0000003Ch
008C9AE6: lea eax, var_28
008C9AE9: push eax
008C9AEA: lea eax, var_24
008C9AED: push eax
008C9AEE: push 00000002h
008C9AF0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C9AF5: add esp, 0000000Ch
008C9AF8: lea ecx, var_4C
008C9AFB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C9B00: mov var_04, 00000005h
008C9B07: push 00000000h
008C9B09: push 80010005h
008C9B0E: mov eax, [ebp+08h]
008C9B11: mov eax, [eax]
008C9B13: push [ebp+08h]
008C9B16: call [eax+00000320h]
008C9B1C: push eax
008C9B1D: lea eax, var_28
008C9B20: push eax
008C9B21: call 00410A84h ; Set (object)
008C9B26: push eax
008C9B27: lea eax, var_5C
008C9B2A: push eax
008C9B2B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C9B30: add esp, 00000010h
008C9B33: push 00000000h
008C9B35: push 80010006h
008C9B3A: mov eax, [ebp+08h]
008C9B3D: mov eax, [eax]
008C9B3F: push [ebp+08h]
008C9B42: call [eax+00000320h]
008C9B48: push eax
008C9B49: lea eax, var_30
008C9B4C: push eax
008C9B4D: call 00410A84h ; Set (object)
008C9B52: push eax
008C9B53: lea eax, var_7C
008C9B56: push eax
008C9B57: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C9B5C: add esp, 00000010h
008C9B5F: push 00000000h
008C9B61: push 80010005h
008C9B66: mov eax, [ebp+08h]
008C9B69: mov eax, [eax]
008C9B6B: push [ebp+08h]
008C9B6E: call [eax+0000031Ch]
008C9B74: push eax
008C9B75: lea eax, var_24
008C9B78: push eax
008C9B79: call 00410A84h ; Set (object)
008C9B7E: push eax
008C9B7F: lea eax, var_4C
008C9B82: push eax
008C9B83: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C9B88: add esp, 00000010h
008C9B8B: push eax
008C9B8C: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C9B91: fstp real4 ptr var_00000154
008C9B97: lea eax, var_5C
008C9B9A: push eax
008C9B9B: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C9BA0: fsubr real4 ptr var_00000154
008C9BA6: fsub real4 ptr [00402BA4h]
008C9BAC: fstp real4 ptr var_000000A4
008C9BB2: fstsw ax
008C9BB4: test al, 0Dh
008C9BB6: jnz 008CA078h
008C9BBC: mov var_000000AC, 00000004h
008C9BC6: push 00000000h
008C9BC8: push 80010006h
008C9BCD: mov eax, [ebp+08h]
008C9BD0: mov eax, [eax]
008C9BD2: push [ebp+08h]
008C9BD5: call [eax+0000031Ch]
008C9BDB: push eax
008C9BDC: lea eax, var_2C
008C9BDF: push eax
008C9BE0: call 00410A84h ; Set (object)
008C9BE5: push eax
008C9BE6: lea eax, var_6C
008C9BE9: push eax
008C9BEA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C9BEF: add esp, 00000010h
008C9BF2: push eax
008C9BF3: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C9BF8: fstp real4 ptr var_00000158
008C9BFE: lea eax, var_7C
008C9C01: push eax
008C9C02: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C9C07: fsubr real4 ptr var_00000158
008C9C0D: fsub real4 ptr [00402BA4h]
008C9C13: fstp real4 ptr var_000000C4
008C9C19: fstsw ax
008C9C1B: test al, 0Dh
008C9C1D: jnz 008CA078h
008C9C23: mov var_000000CC, 00000004h
008C9C2D: push 00000000h
008C9C2F: push 80010005h
008C9C34: mov eax, [ebp+08h]
008C9C37: mov eax, [eax]
008C9C39: push [ebp+08h]
008C9C3C: call [eax+00000320h]
008C9C42: push eax
008C9C43: lea eax, var_34
008C9C46: push eax
008C9C47: call 00410A84h ; Set (object)
008C9C4C: push eax
008C9C4D: lea eax, var_0000008C
008C9C53: push eax
008C9C54: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C9C59: add esp, 00000010h
008C9C5C: push eax
008C9C5D: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C9C62: fstp real4 ptr var_000000E4
008C9C68: mov var_000000EC, 00000004h
008C9C72: push 00000000h
008C9C74: push 80010006h
008C9C79: mov eax, [ebp+08h]
008C9C7C: mov eax, [eax]
008C9C7E: push [ebp+08h]
008C9C81: call [eax+00000320h]
008C9C87: push eax
008C9C88: lea eax, var_38
008C9C8B: push eax
008C9C8C: call 00410A84h ; Set (object)
008C9C91: push eax
008C9C92: lea eax, var_0000009C
008C9C98: push eax
008C9C99: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C9C9E: add esp, 00000010h
008C9CA1: push eax
008C9CA2: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C9CA7: fstp real4 ptr var_00000104
008C9CAD: mov var_0000010C, 00000004h
008C9CB7: push 00000010h
008C9CB9: pop eax
008C9CBA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9CBF: lea esi, var_000000AC
008C9CC5: mov edi, esp
008C9CC7: movsd 
008C9CC8: movsd 
008C9CC9: movsd 
008C9CCA: movsd 
008C9CCB: push 00000010h
008C9CCD: pop eax
008C9CCE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9CD3: lea esi, var_000000CC
008C9CD9: mov edi, esp
008C9CDB: movsd 
008C9CDC: movsd 
008C9CDD: movsd 
008C9CDE: movsd 
008C9CDF: push 00000010h
008C9CE1: pop eax
008C9CE2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9CE7: lea esi, var_000000EC
008C9CED: mov edi, esp
008C9CEF: movsd 
008C9CF0: movsd 
008C9CF1: movsd 
008C9CF2: movsd 
008C9CF3: push 00000010h
008C9CF5: pop eax
008C9CF6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9CFB: lea esi, var_0000010C
008C9D01: mov edi, esp
008C9D03: movsd 
008C9D04: movsd 
008C9D05: movsd 
008C9D06: movsd 
008C9D07: push 00000004h
008C9D09: push 80011002h
008C9D0E: mov eax, [ebp+08h]
008C9D11: mov eax, [eax]
008C9D13: push [ebp+08h]
008C9D16: call [eax+00000320h]
008C9D1C: push eax
008C9D1D: lea eax, var_3C
008C9D20: push eax
008C9D21: call 00410A84h ; Set (object)
008C9D26: push eax
008C9D27: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C9D2C: add esp, 0000004Ch
008C9D2F: lea eax, var_3C
008C9D32: push eax
008C9D33: lea eax, var_38
008C9D36: push eax
008C9D37: lea eax, var_34
008C9D3A: push eax
008C9D3B: lea eax, var_30
008C9D3E: push eax
008C9D3F: lea eax, var_2C
008C9D42: push eax
008C9D43: lea eax, var_28
008C9D46: push eax
008C9D47: lea eax, var_24
008C9D4A: push eax
008C9D4B: push 00000007h
008C9D4D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C9D52: add esp, 00000020h
008C9D55: lea eax, var_0000009C
008C9D5B: push eax
008C9D5C: lea eax, var_0000008C
008C9D62: push eax
008C9D63: lea eax, var_7C
008C9D66: push eax
008C9D67: lea eax, var_6C
008C9D6A: push eax
008C9D6B: lea eax, var_5C
008C9D6E: push eax
008C9D6F: lea eax, var_4C
008C9D72: push eax
008C9D73: push 00000006h
008C9D75: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C9D7A: add esp, 0000001Ch
008C9D7D: mov var_04, 00000006h
008C9D84: push 00000000h
008C9D86: push 80010005h
008C9D8B: mov eax, [ebp+08h]
008C9D8E: mov eax, [eax]
008C9D90: push [ebp+08h]
008C9D93: call [eax+00000320h]
008C9D99: push eax
008C9D9A: lea eax, var_28
008C9D9D: push eax
008C9D9E: call 00410A84h ; Set (object)
008C9DA3: push eax
008C9DA4: lea eax, var_5C
008C9DA7: push eax
008C9DA8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C9DAD: add esp, 00000010h
008C9DB0: push 00000000h
008C9DB2: push 80010006h
008C9DB7: mov eax, [ebp+08h]
008C9DBA: mov eax, [eax]
008C9DBC: push [ebp+08h]
008C9DBF: call [eax+00000324h]
008C9DC5: push eax
008C9DC6: lea eax, var_30
008C9DC9: push eax
008C9DCA: call 00410A84h ; Set (object)
008C9DCF: push eax
008C9DD0: lea eax, var_7C
008C9DD3: push eax
008C9DD4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C9DD9: add esp, 00000010h
008C9DDC: push 00000000h
008C9DDE: push 80010003h
008C9DE3: mov eax, [ebp+08h]
008C9DE6: mov eax, [eax]
008C9DE8: push [ebp+08h]
008C9DEB: call [eax+00000320h]
008C9DF1: push eax
008C9DF2: lea eax, var_24
008C9DF5: push eax
008C9DF6: call 00410A84h ; Set (object)
008C9DFB: push eax
008C9DFC: lea eax, var_4C
008C9DFF: push eax
008C9E00: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C9E05: add esp, 00000010h
008C9E08: push eax
008C9E09: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C9E0E: fstp real4 ptr var_0000015C
008C9E14: lea eax, var_5C
008C9E17: push eax
008C9E18: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C9E1D: fsubr real4 ptr var_0000015C
008C9E23: fsub real4 ptr [00402BA4h]
008C9E29: fstp real4 ptr var_000000A4
008C9E2F: fstsw ax
008C9E31: test al, 0Dh
008C9E33: jnz 008CA078h
008C9E39: mov var_000000AC, 00000004h
008C9E43: push 00000000h
008C9E45: push 80010006h
008C9E4A: mov eax, [ebp+08h]
008C9E4D: mov eax, [eax]
008C9E4F: push [ebp+08h]
008C9E52: call [eax+0000031Ch]
008C9E58: push eax
008C9E59: lea eax, var_2C
008C9E5C: push eax
008C9E5D: call 00410A84h ; Set (object)
008C9E62: push eax
008C9E63: lea eax, var_6C
008C9E66: push eax
008C9E67: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C9E6C: add esp, 00000010h
008C9E6F: push eax
008C9E70: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C9E75: fstp real4 ptr var_00000160
008C9E7B: lea eax, var_7C
008C9E7E: push eax
008C9E7F: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C9E84: fsubr real4 ptr var_00000160
008C9E8A: fsub real4 ptr [00402BA4h]
008C9E90: fstp real4 ptr var_000000C4
008C9E96: fstsw ax
008C9E98: test al, 0Dh
008C9E9A: jnz 008CA078h
008C9EA0: mov var_000000CC, 00000004h
008C9EAA: push 00000000h
008C9EAC: push 80010005h
008C9EB1: mov eax, [ebp+08h]
008C9EB4: mov eax, [eax]
008C9EB6: push [ebp+08h]
008C9EB9: call [eax+00000324h]
008C9EBF: push eax
008C9EC0: lea eax, var_34
008C9EC3: push eax
008C9EC4: call 00410A84h ; Set (object)
008C9EC9: push eax
008C9ECA: lea eax, var_0000008C
008C9ED0: push eax
008C9ED1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C9ED6: add esp, 00000010h
008C9ED9: push eax
008C9EDA: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C9EDF: fstp real4 ptr var_000000E4
008C9EE5: mov var_000000EC, 00000004h
008C9EEF: push 00000000h
008C9EF1: push 80010006h
008C9EF6: mov eax, [ebp+08h]
008C9EF9: mov eax, [eax]
008C9EFB: push [ebp+08h]
008C9EFE: call [eax+00000324h]
008C9F04: push eax
008C9F05: lea eax, var_38
008C9F08: push eax
008C9F09: call 00410A84h ; Set (object)
008C9F0E: push eax
008C9F0F: lea eax, var_0000009C
008C9F15: push eax
008C9F16: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C9F1B: add esp, 00000010h
008C9F1E: push eax
008C9F1F: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C9F24: fstp real4 ptr var_00000104
008C9F2A: mov var_0000010C, 00000004h
008C9F34: push 00000010h
008C9F36: pop eax
008C9F37: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9F3C: lea esi, var_000000AC
008C9F42: mov edi, esp
008C9F44: movsd 
008C9F45: movsd 
008C9F46: movsd 
008C9F47: movsd 
008C9F48: push 00000010h
008C9F4A: pop eax
008C9F4B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9F50: lea esi, var_000000CC
008C9F56: mov edi, esp
008C9F58: movsd 
008C9F59: movsd 
008C9F5A: movsd 
008C9F5B: movsd 
008C9F5C: push 00000010h
008C9F5E: pop eax
008C9F5F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9F64: lea esi, var_000000EC
008C9F6A: mov edi, esp
008C9F6C: movsd 
008C9F6D: movsd 
008C9F6E: movsd 
008C9F6F: movsd 
008C9F70: push 00000010h
008C9F72: pop eax
008C9F73: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9F78: lea esi, var_0000010C
008C9F7E: mov edi, esp
008C9F80: movsd 
008C9F81: movsd 
008C9F82: movsd 
008C9F83: movsd 
008C9F84: push 00000004h
008C9F86: push 80011002h
008C9F8B: mov eax, [ebp+08h]
008C9F8E: mov eax, [eax]
008C9F90: push [ebp+08h]
008C9F93: call [eax+00000324h]
008C9F99: push eax
008C9F9A: lea eax, var_3C
008C9F9D: push eax
008C9F9E: call 00410A84h ; Set (object)
008C9FA3: push eax
008C9FA4: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C9FA9: add esp, 0000004Ch
008C9FAC: lea eax, var_3C
008C9FAF: push eax
008C9FB0: lea eax, var_38
008C9FB3: push eax
008C9FB4: lea eax, var_34
008C9FB7: push eax
008C9FB8: lea eax, var_30
008C9FBB: push eax
008C9FBC: lea eax, var_2C
008C9FBF: push eax
008C9FC0: lea eax, var_28
008C9FC3: push eax
008C9FC4: lea eax, var_24
008C9FC7: push eax
008C9FC8: push 00000007h
008C9FCA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C9FCF: add esp, 00000020h
008C9FD2: lea eax, var_0000009C
008C9FD8: push eax
008C9FD9: lea eax, var_0000008C
008C9FDF: push eax
008C9FE0: lea eax, var_7C
008C9FE3: push eax
008C9FE4: lea eax, var_6C
008C9FE7: push eax
008C9FE8: lea eax, var_5C
008C9FEB: push eax
008C9FEC: lea eax, var_4C
008C9FEF: push eax
008C9FF0: push 00000006h
008C9FF2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C9FF7: add esp, 0000001Ch
008C9FFA: mov var_10, 00000000h
008CA001: wait 
008CA002: push 008CA059h
008CA007: jmp 8CA058h
008CA009: lea eax, var_3C
008CA00C: push eax
008CA00D: lea eax, var_38
008CA010: push eax
008CA011: lea eax, var_34
008CA014: push eax
008CA015: lea eax, var_30
008CA018: push eax
008CA019: lea eax, var_2C
008CA01C: push eax
008CA01D: lea eax, var_28
008CA020: push eax
008CA021: lea eax, var_24
008CA024: push eax
008CA025: push 00000007h
008CA027: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CA02C: add esp, 00000020h
008CA02F: lea eax, var_0000009C
008CA035: push eax
008CA036: lea eax, var_0000008C
008CA03C: push eax
008CA03D: lea eax, var_7C
008CA040: push eax
008CA041: lea eax, var_6C
008CA044: push eax
008CA045: lea eax, var_5C
008CA048: push eax
008CA049: lea eax, var_4C
008CA04C: push eax
008CA04D: push 00000006h
008CA04F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CA054: add esp, 0000001Ch
008CA057: ret 
End Sub

Private sub Form__8CA07D
008CA07D: push ebp
008CA07E: mov ebp, esp
008CA080: sub esp, 0000000Ch
008CA083: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CA088: mov eax, fs:[00h]
008CA08E: push eax
008CA08F: mov fs:[00000000h], esp
008CA096: push 00000020h
008CA098: pop eax
008CA099: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CA09E: push ebx
008CA09F: push esi
008CA0A0: push edi
008CA0A1: mov var_0C, esp
008CA0A4: mov var_08, 0040F690h
008CA0AB: mov eax, [ebp+08h]
008CA0AE: and eax, 00000001h
008CA0B1: mov var_04, eax
008CA0B4: mov eax, [ebp+08h]
008CA0B7: and al, FEh
008CA0B9: mov [ebp+08h], eax
008CA0BC: mov eax, [ebp+08h]
008CA0BF: mov eax, [eax]
008CA0C1: push [ebp+08h]
008CA0C4: call [eax+04h]
008CA0C7: mov eax, [ebp+08h]
008CA0CA: mov eax, [eax]
008CA0CC: push [ebp+08h]
008CA0CF: call [eax+00000300h]
008CA0D5: push eax
008CA0D6: lea eax, var_1C
008CA0D9: push eax
008CA0DA: call 00410A84h ; Set (object)
008CA0DF: mov var_20, eax
008CA0E2: lea eax, var_18
008CA0E5: push eax
008CA0E6: mov eax, var_20
008CA0E9: mov eax, [eax]
008CA0EB: push var_20
008CA0EE: call [eax+000000A0h]
008CA0F4: fclex 
008CA0F6: mov var_24, eax
008CA0F9: cmp var_24, 00000000h
008CA0FD: jnl 8CA119h
008CA0FF: push 000000A0h
008CA104: push 00440E08h
008CA109: push var_20
008CA10C: push var_24
008CA10F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CA114: mov var_30, eax
008CA117: jmp 8CA11Dh
008CA119: and var_30, 00000000h
008CA11D: push var_18
008CA120: push 004607DCh ; bport
008CA125: push 00460C94h ; reverse-relay
008CA12A: push 00445984h ; bssnet
008CA12F: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008CA134: lea ecx, var_18
008CA137: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008CA13C: lea ecx, var_1C
008CA13F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008CA144: mov eax, [ebp+08h]
008CA147: mov eax, [eax]
008CA149: push [ebp+08h]
008CA14C: call [eax+000002FCh]
008CA152: push eax
008CA153: lea eax, var_1C
008CA156: push eax
008CA157: call 00410A84h ; Set (object)
008CA15C: mov var_20, eax
008CA15F: lea eax, var_18
008CA162: push eax
008CA163: mov eax, var_20
008CA166: mov eax, [eax]
008CA168: push var_20
008CA16B: call [eax+000000A0h]
008CA171: fclex 
008CA173: mov var_24, eax
008CA176: cmp var_24, 00000000h
008CA17A: jnl 8CA196h
008CA17C: push 000000A0h
008CA181: push 00440E08h
008CA186: push var_20
008CA189: push var_24
008CA18C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CA191: mov var_34, eax
008CA194: jmp 8CA19Ah
008CA196: and var_34, 00000000h
008CA19A: push var_18
008CA19D: push 004607ECh ; dport
008CA1A2: push 00460C94h ; reverse-relay
008CA1A7: push 00445984h ; bssnet
008CA1AC: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008CA1B1: lea ecx, var_18
008CA1B4: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008CA1B9: lea ecx, var_1C
008CA1BC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008CA1C1: mov var_04, 00000000h
008CA1C8: push 008CA1E1h
008CA1CD: jmp 8CA1E0h
008CA1CF: lea ecx, var_18
008CA1D2: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008CA1D7: lea ecx, var_1C
008CA1DA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008CA1DF: ret 
End Sub

Private sub cmdListen__8C6E1E
008C6E1E: push ebp
008C6E1F: mov ebp, esp
008C6E21: sub esp, 00000014h
008C6E24: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008C6E29: mov eax, fs:[00h]
008C6E2F: push eax
008C6E30: mov fs:[00000000h], esp
008C6E37: mov eax, 00000270h
008C6E3C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C6E41: push ebx
008C6E42: push esi
008C6E43: push edi
008C6E44: mov var_14, esp
008C6E47: mov var_10, 0040F608h
008C6E4E: mov eax, [ebp+08h]
008C6E51: and eax, 00000001h
008C6E54: mov var_0C, eax
008C6E57: mov eax, [ebp+08h]
008C6E5A: and al, FEh
008C6E5C: mov [ebp+08h], eax
008C6E5F: mov var_08, 00000000h
008C6E66: mov eax, [ebp+08h]
008C6E69: mov eax, [eax]
008C6E6B: push [ebp+08h]
008C6E6E: call [eax+04h]
008C6E71: push 00000001h
008C6E73: call 00410A60h ; On Error ...
008C6E78: push 00000000h
008C6E7A: push FFFFFDFAh
008C6E7F: mov eax, [ebp+08h]
008C6E82: mov eax, [eax]
008C6E84: push [ebp+08h]
008C6E87: call [eax+00000320h]
008C6E8D: push eax
008C6E8E: lea eax, var_54
008C6E91: push eax
008C6E92: call 00410A84h ; Set (object)
008C6E97: push eax
008C6E98: lea eax, var_0000008C
008C6E9E: push eax
008C6E9F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C6EA4: add esp, 00000010h
008C6EA7: push eax
008C6EA8: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C6EAD: mov edx, eax
008C6EAF: lea ecx, var_20
008C6EB2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C6EB7: push eax
008C6EB8: push 00441068h ; Activate
008C6EBD: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008C6EC2: neg eax
008C6EC4: sbb eax, eax
008C6EC6: inc eax
008C6EC7: neg eax
008C6EC9: mov var_000001AC, ax
008C6ED0: lea ecx, var_20
008C6ED3: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008C6ED8: lea ecx, var_54
008C6EDB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C6EE0: lea ecx, var_0000008C
008C6EE6: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C6EEB: movsx eax, word ptr var_000001AC
008C6EF2: test eax, eax
008C6EF4: jz 008C80AEh
008C6EFA: mov eax, [ebp+08h]
008C6EFD: mov eax, [eax]
008C6EFF: push [ebp+08h]
008C6F02: call [eax+000002FCh]
008C6F08: push eax
008C6F09: lea eax, var_58
008C6F0C: push eax
008C6F0D: call 00410A84h ; Set (object)
008C6F12: mov var_000001AC, eax
008C6F18: lea eax, var_24
008C6F1B: push eax
008C6F1C: mov eax, var_000001AC
008C6F22: mov eax, [eax]
008C6F24: push var_000001AC
008C6F2A: call [eax+000000A0h]
008C6F30: fclex 
008C6F32: mov var_000001B0, eax
008C6F38: cmp var_000001B0, 00000000h
008C6F3F: jnl 8C6F64h
008C6F41: push 000000A0h
008C6F46: push 00440E08h
008C6F4B: push var_000001AC
008C6F51: push var_000001B0
008C6F57: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C6F5C: mov var_000001E4, eax
008C6F62: jmp 8C6F6Bh
008C6F64: and var_000001E4, 00000000h
008C6F6B: push var_24
008C6F6E: call 004109DCh ; Val(arg_1)
008C6F73: fstp real8 ptr var_000001A8
008C6F79: mov eax, [ebp+08h]
008C6F7C: mov eax, [eax]
008C6F7E: push [ebp+08h]
008C6F81: call [eax+00000300h]
008C6F87: push eax
008C6F88: lea eax, var_54
008C6F8B: push eax
008C6F8C: call 00410A84h ; Set (object)
008C6F91: mov var_000001B4, eax
008C6F97: lea eax, var_20
008C6F9A: push eax
008C6F9B: mov eax, var_000001B4
008C6FA1: mov eax, [eax]
008C6FA3: push var_000001B4
008C6FA9: call [eax+000000A0h]
008C6FAF: fclex 
008C6FB1: mov var_000001B8, eax
008C6FB7: cmp var_000001B8, 00000000h
008C6FBE: jnl 8C6FE3h
008C6FC0: push 000000A0h
008C6FC5: push 00440E08h
008C6FCA: push var_000001B4
008C6FD0: push var_000001B8
008C6FD6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C6FDB: mov var_000001E8, eax
008C6FE1: jmp 8C6FEAh
008C6FE3: and var_000001E8, 00000000h
008C6FEA: push var_20
008C6FED: call 004109DCh ; Val(arg_1)
008C6FF2: call 004109D6h ; msvbvm60.dll.__vbaFpR8
008C6FF7: fstp real8 ptr var_000001F0
008C6FFD: fld real8 ptr var_000001A8
008C7003: call 004109D6h ; msvbvm60.dll.__vbaFpR8
008C7008: fcomp real8 ptr var_000001F0
008C700E: fstsw ax
008C7010: sahf 
008C7011: jnz 8C701Fh
008C7013: mov var_000001F4, 00000001h
008C701D: jmp 8C7026h
008C701F: and var_000001F4, 00000000h
008C7026: mov eax, var_000001F4
008C702C: neg eax
008C702E: mov var_000001BC, ax
008C7035: lea eax, var_24
008C7038: push eax
008C7039: lea eax, var_20
008C703C: push eax
008C703D: push 00000002h
008C703F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C7044: add esp, 0000000Ch
008C7047: lea eax, var_58
008C704A: push eax
008C704B: lea eax, var_54
008C704E: push eax
008C704F: push 00000002h
008C7051: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C7056: add esp, 0000000Ch
008C7059: movsx eax, word ptr var_000001BC
008C7060: test eax, eax
008C7062: jz 008C7117h
008C7068: mov var_000000B4, 80020004h
008C7072: mov var_000000BC, 0000000Ah
008C707C: mov var_000000A4, 80020004h
008C7086: mov var_000000AC, 0000000Ah
008C7090: mov var_00000094, 80020004h
008C709A: mov var_0000009C, 0000000Ah
008C70A4: mov var_00000134, 00460AE8h ; Ports must not be equal!
008C70AE: mov var_0000013C, 00000008h
008C70B8: lea edx, var_0000013C
008C70BE: lea ecx, var_0000008C
008C70C4: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008C70C9: lea eax, var_000000BC
008C70CF: push eax
008C70D0: lea eax, var_000000AC
008C70D6: push eax
008C70D7: lea eax, var_0000009C
008C70DD: push eax
008C70DE: push 00000010h
008C70E0: lea eax, var_0000008C
008C70E6: push eax
008C70E7: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008C70EC: lea eax, var_000000BC
008C70F2: push eax
008C70F3: lea eax, var_000000AC
008C70F9: push eax
008C70FA: lea eax, var_0000009C
008C7100: push eax
008C7101: lea eax, var_0000008C
008C7107: push eax
008C7108: push 00000004h
008C710A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C710F: add esp, 00000014h
008C7112: jmp 008C8C7Ah
008C7117: mov eax, [ebp+08h]
008C711A: mov eax, [eax]
008C711C: push [ebp+08h]
008C711F: call [eax+00000300h]
008C7125: mov var_00000084, eax
008C712B: mov var_0000008C, 00000009h
008C7135: mov eax, [ebp+08h]
008C7138: mov eax, [eax]
008C713A: push [ebp+08h]
008C713D: call [eax+000002FCh]
008C7143: mov var_00000094, eax
008C7149: mov var_0000009C, 00000009h
008C7153: lea eax, var_0000008C
008C7159: push eax
008C715A: call 004109EEh ; IsNumeric(arg_1)
008C715F: mov si, ax
008C7162: neg si
008C7165: sbb esi, esi
008C7167: inc esi
008C7168: neg esi
008C716A: lea eax, var_0000009C
008C7170: push eax
008C7171: call 004109EEh ; IsNumeric(arg_1)
008C7176: neg ax
008C7179: sbb eax, eax
008C717B: inc eax
008C717C: neg eax
008C717E: or si, ax
008C7181: mov var_000001AC, si
008C7188: lea eax, var_0000009C
008C718E: push eax
008C718F: lea eax, var_0000008C
008C7195: push eax
008C7196: push 00000002h
008C7198: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C719D: add esp, 0000000Ch
008C71A0: movsx eax, word ptr var_000001AC
008C71A7: test eax, eax
008C71A9: jz 008C725Eh
008C71AF: mov var_000000B4, 80020004h
008C71B9: mov var_000000BC, 0000000Ah
008C71C3: mov var_000000A4, 80020004h
008C71CD: mov var_000000AC, 0000000Ah
008C71D7: mov var_00000094, 80020004h
008C71E1: mov var_0000009C, 0000000Ah
008C71EB: mov var_00000134, 00460B20h ; Ports must be numeric!
008C71F5: mov var_0000013C, 00000008h
008C71FF: lea edx, var_0000013C
008C7205: lea ecx, var_0000008C
008C720B: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008C7210: lea eax, var_000000BC
008C7216: push eax
008C7217: lea eax, var_000000AC
008C721D: push eax
008C721E: lea eax, var_0000009C
008C7224: push eax
008C7225: push 00000010h
008C7227: lea eax, var_0000008C
008C722D: push eax
008C722E: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008C7233: lea eax, var_000000BC
008C7239: push eax
008C723A: lea eax, var_000000AC
008C7240: push eax
008C7241: lea eax, var_0000009C
008C7247: push eax
008C7248: lea eax, var_0000008C
008C724E: push eax
008C724F: push 00000004h
008C7251: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C7256: add esp, 00000014h
008C7259: jmp 008C8C7Ah
008C725E: mov eax, [ebp+08h]
008C7261: mov eax, [eax]
008C7263: push [ebp+08h]
008C7266: call [eax+00000318h]
008C726C: push eax
008C726D: lea eax, var_54
008C7270: push eax
008C7271: call 00410A84h ; Set (object)
008C7276: mov var_000001AC, eax
008C727C: lea eax, var_58
008C727F: push eax
008C7280: push 00000000h
008C7282: mov eax, var_000001AC
008C7288: mov eax, [eax]
008C728A: push var_000001AC
008C7290: call [eax+40h]
008C7293: fclex 
008C7295: mov var_000001B0, eax
008C729B: cmp var_000001B0, 00000000h
008C72A2: jnl 8C72C4h
008C72A4: push 00000040h
008C72A6: push 00440DE8h
008C72AB: push var_000001AC
008C72B1: push var_000001B0
008C72B7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C72BC: mov var_000001F8, eax
008C72C2: jmp 8C72CBh
008C72C4: and var_000001F8, 00000000h
008C72CB: push 00000000h
008C72CD: push 00000046h
008C72CF: push var_58
008C72D2: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C72D7: add esp, 0000000Ch
008C72DA: lea eax, var_58
008C72DD: push eax
008C72DE: lea eax, var_54
008C72E1: push eax
008C72E2: push 00000002h
008C72E4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C72E9: add esp, 0000000Ch
008C72EC: mov eax, [ebp+08h]
008C72EF: mov eax, [eax]
008C72F1: push [ebp+08h]
008C72F4: call [eax+00000300h]
008C72FA: push eax
008C72FB: lea eax, var_54
008C72FE: push eax
008C72FF: call 00410A84h ; Set (object)
008C7304: mov var_000001B4, eax
008C730A: lea eax, var_20
008C730D: push eax
008C730E: mov eax, var_000001B4
008C7314: mov eax, [eax]
008C7316: push var_000001B4
008C731C: call [eax+000000A0h]
008C7322: fclex 
008C7324: mov var_000001B8, eax
008C732A: cmp var_000001B8, 00000000h
008C7331: jnl 8C7356h
008C7333: push 000000A0h
008C7338: push 00440E08h
008C733D: push var_000001B4
008C7343: push var_000001B8
008C7349: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C734E: mov var_000001FC, eax
008C7354: jmp 8C735Dh
008C7356: and var_000001FC, 00000000h
008C735D: push var_20
008C7360: call 004109DCh ; Val(arg_1)
008C7365: call 00410814h ; msvbvm60.dll.__vbaFpI4
008C736A: mov var_00000134, eax
008C7370: mov var_0000013C, 00000003h
008C737A: mov eax, [ebp+08h]
008C737D: mov eax, [eax]
008C737F: push [ebp+08h]
008C7382: call [eax+00000318h]
008C7388: push eax
008C7389: lea eax, var_58
008C738C: push eax
008C738D: call 00410A84h ; Set (object)
008C7392: mov var_000001AC, eax
008C7398: lea eax, var_5C
008C739B: push eax
008C739C: push 00000000h
008C739E: mov eax, var_000001AC
008C73A4: mov eax, [eax]
008C73A6: push var_000001AC
008C73AC: call [eax+40h]
008C73AF: fclex 
008C73B1: mov var_000001B0, eax
008C73B7: cmp var_000001B0, 00000000h
008C73BE: jnl 8C73E0h
008C73C0: push 00000040h
008C73C2: push 00440DE8h
008C73C7: push var_000001AC
008C73CD: push var_000001B0
008C73D3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C73D8: mov var_00000200, eax
008C73DE: jmp 8C73E7h
008C73E0: and var_00000200, 00000000h
008C73E7: push 00000010h
008C73E9: pop eax
008C73EA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C73EF: lea esi, var_0000013C
008C73F5: mov edi, esp
008C73F7: movsd 
008C73F8: movsd 
008C73F9: movsd 
008C73FA: movsd 
008C73FB: push 00000002h
008C73FD: push var_5C
008C7400: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008C7405: lea ecx, var_20
008C7408: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008C740D: lea eax, var_5C
008C7410: push eax
008C7411: lea eax, var_58
008C7414: push eax
008C7415: lea eax, var_54
008C7418: push eax
008C7419: push 00000003h
008C741B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C7420: add esp, 00000010h
008C7423: mov eax, [ebp+08h]
008C7426: mov eax, [eax]
008C7428: push [ebp+08h]
008C742B: call [eax+00000318h]
008C7431: push eax
008C7432: lea eax, var_54
008C7435: push eax
008C7436: call 00410A84h ; Set (object)
008C743B: mov var_000001AC, eax
008C7441: lea eax, var_58
008C7444: push eax
008C7445: push 00000000h
008C7447: mov eax, var_000001AC
008C744D: mov eax, [eax]
008C744F: push var_000001AC
008C7455: call [eax+40h]
008C7458: fclex 
008C745A: mov var_000001B0, eax
008C7460: cmp var_000001B0, 00000000h
008C7467: jnl 8C7489h
008C7469: push 00000040h
008C746B: push 00440DE8h
008C7470: push var_000001AC
008C7476: push var_000001B0
008C747C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C7481: mov var_00000204, eax
008C7487: jmp 8C7490h
008C7489: and var_00000204, 00000000h
008C7490: push 00000000h
008C7492: push 00000041h
008C7494: push var_58
008C7497: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C749C: add esp, 0000000Ch
008C749F: lea eax, var_58
008C74A2: push eax
008C74A3: lea eax, var_54
008C74A6: push eax
008C74A7: push 00000002h
008C74A9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C74AE: add esp, 0000000Ch
008C74B1: mov eax, [ebp+08h]
008C74B4: mov eax, [eax]
008C74B6: push [ebp+08h]
008C74B9: call [eax+00000314h]
008C74BF: push eax
008C74C0: lea eax, var_54
008C74C3: push eax
008C74C4: call 00410A84h ; Set (object)
008C74C9: mov var_000001AC, eax
008C74CF: lea eax, var_58
008C74D2: push eax
008C74D3: push 00000000h
008C74D5: mov eax, var_000001AC
008C74DB: mov eax, [eax]
008C74DD: push var_000001AC
008C74E3: call [eax+40h]
008C74E6: fclex 
008C74E8: mov var_000001B0, eax
008C74EE: cmp var_000001B0, 00000000h
008C74F5: jnl 8C7517h
008C74F7: push 00000040h
008C74F9: push 00440DE8h
008C74FE: push var_000001AC
008C7504: push var_000001B0
008C750A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C750F: mov var_00000208, eax
008C7515: jmp 8C751Eh
008C7517: and var_00000208, 00000000h
008C751E: push 00000000h
008C7520: push 00000046h
008C7522: push var_58
008C7525: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C752A: add esp, 0000000Ch
008C752D: lea eax, var_58
008C7530: push eax
008C7531: lea eax, var_54
008C7534: push eax
008C7535: push 00000002h
008C7537: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C753C: add esp, 0000000Ch
008C753F: mov eax, [ebp+08h]
008C7542: mov eax, [eax]
008C7544: push [ebp+08h]
008C7547: call [eax+000002FCh]
008C754D: push eax
008C754E: lea eax, var_54
008C7551: push eax
008C7552: call 00410A84h ; Set (object)
008C7557: mov var_000001B4, eax
008C755D: lea eax, var_20
008C7560: push eax
008C7561: mov eax, var_000001B4
008C7567: mov eax, [eax]
008C7569: push var_000001B4
008C756F: call [eax+000000A0h]
008C7575: fclex 
008C7577: mov var_000001B8, eax
008C757D: cmp var_000001B8, 00000000h
008C7584: jnl 8C75A9h
008C7586: push 000000A0h
008C758B: push 00440E08h
008C7590: push var_000001B4
008C7596: push var_000001B8
008C759C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C75A1: mov var_0000020C, eax
008C75A7: jmp 8C75B0h
008C75A9: and var_0000020C, 00000000h
008C75B0: push var_20
008C75B3: call 004109DCh ; Val(arg_1)
008C75B8: call 00410814h ; msvbvm60.dll.__vbaFpI4
008C75BD: mov var_00000134, eax
008C75C3: mov var_0000013C, 00000003h
008C75CD: mov eax, [ebp+08h]
008C75D0: mov eax, [eax]
008C75D2: push [ebp+08h]
008C75D5: call [eax+00000314h]
008C75DB: push eax
008C75DC: lea eax, var_58
008C75DF: push eax
008C75E0: call 00410A84h ; Set (object)
008C75E5: mov var_000001AC, eax
008C75EB: lea eax, var_5C
008C75EE: push eax
008C75EF: push 00000000h
008C75F1: mov eax, var_000001AC
008C75F7: mov eax, [eax]
008C75F9: push var_000001AC
008C75FF: call [eax+40h]
008C7602: fclex 
008C7604: mov var_000001B0, eax
008C760A: cmp var_000001B0, 00000000h
008C7611: jnl 8C7633h
008C7613: push 00000040h
008C7615: push 00440DE8h
008C761A: push var_000001AC
008C7620: push var_000001B0
008C7626: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C762B: mov var_00000210, eax
008C7631: jmp 8C763Ah
008C7633: and var_00000210, 00000000h
008C763A: push 00000010h
008C763C: pop eax
008C763D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C7642: lea esi, var_0000013C
008C7648: mov edi, esp
008C764A: movsd 
008C764B: movsd 
008C764C: movsd 
008C764D: movsd 
008C764E: push 00000002h
008C7650: push var_5C
008C7653: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008C7658: lea ecx, var_20
008C765B: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008C7660: lea eax, var_5C
008C7663: push eax
008C7664: lea eax, var_58
008C7667: push eax
008C7668: lea eax, var_54
008C766B: push eax
008C766C: push 00000003h
008C766E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C7673: add esp, 00000010h
008C7676: mov eax, [ebp+08h]
008C7679: mov eax, [eax]
008C767B: push [ebp+08h]
008C767E: call [eax+00000314h]
008C7684: push eax
008C7685: lea eax, var_54
008C7688: push eax
008C7689: call 00410A84h ; Set (object)
008C768E: mov var_000001AC, eax
008C7694: lea eax, var_58
008C7697: push eax
008C7698: push 00000000h
008C769A: mov eax, var_000001AC
008C76A0: mov eax, [eax]
008C76A2: push var_000001AC
008C76A8: call [eax+40h]
008C76AB: fclex 
008C76AD: mov var_000001B0, eax
008C76B3: cmp var_000001B0, 00000000h
008C76BA: jnl 8C76DCh
008C76BC: push 00000040h
008C76BE: push 00440DE8h
008C76C3: push var_000001AC
008C76C9: push var_000001B0
008C76CF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C76D4: mov var_00000214, eax
008C76DA: jmp 8C76E3h
008C76DC: and var_00000214, 00000000h
008C76E3: push 00000000h
008C76E5: push 00000041h
008C76E7: push var_58
008C76EA: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C76EF: add esp, 0000000Ch
008C76F2: lea eax, var_58
008C76F5: push eax
008C76F6: lea eax, var_54
008C76F9: push eax
008C76FA: push 00000002h
008C76FC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C7701: add esp, 0000000Ch
008C7704: push 0044A87Ch
008C7709: push 00000000h
008C770B: push 00000003h
008C770D: mov eax, [ebp+08h]
008C7710: mov eax, [eax]
008C7712: push [ebp+08h]
008C7715: call [eax+00000328h]
008C771B: push eax
008C771C: lea eax, var_54
008C771F: push eax
008C7720: call 00410A84h ; Set (object)
008C7725: push eax
008C7726: lea eax, var_0000008C
008C772C: push eax
008C772D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C7732: add esp, 00000010h
008C7735: push eax
008C7736: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C773B: push eax
008C773C: lea eax, var_58
008C773F: push eax
008C7740: call 00410A84h ; Set (object)
008C7745: mov var_000001AC, eax
008C774B: mov var_00000094, 00000001h
008C7755: mov var_0000009C, 00000002h
008C775F: lea eax, var_5C
008C7762: push eax
008C7763: lea eax, var_0000009C
008C7769: push eax
008C776A: mov eax, var_000001AC
008C7770: mov eax, [eax]
008C7772: push var_000001AC
008C7778: call [eax+24h]
008C777B: fclex 
008C777D: mov var_000001B0, eax
008C7783: cmp var_000001B0, 00000000h
008C778A: jnl 8C77ACh
008C778C: push 00000024h
008C778E: push 0044A87Ch
008C7793: push var_000001AC
008C7799: push var_000001B0
008C779F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C77A4: mov var_00000218, eax
008C77AA: jmp 8C77B3h
008C77AC: and var_00000218, 00000000h
008C77B3: mov eax, var_5C
008C77B6: mov var_000001B4, eax
008C77BC: push 00460B54h ; Status: Waiting...
008C77C1: mov eax, var_000001B4
008C77C7: mov eax, [eax]
008C77C9: push var_000001B4
008C77CF: call [eax+20h]
008C77D2: fclex 
008C77D4: mov var_000001B8, eax
008C77DA: cmp var_000001B8, 00000000h
008C77E1: jnl 8C7803h
008C77E3: push 00000020h
008C77E5: push 0044A88Ch
008C77EA: push var_000001B4
008C77F0: push var_000001B8
008C77F6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C77FB: mov var_0000021C, eax
008C7801: jmp 8C780Ah
008C7803: and var_0000021C, 00000000h
008C780A: lea eax, var_5C
008C780D: push eax
008C780E: lea eax, var_58
008C7811: push eax
008C7812: lea eax, var_54
008C7815: push eax
008C7816: push 00000003h
008C7818: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C781D: add esp, 00000010h
008C7820: lea eax, var_0000009C
008C7826: push eax
008C7827: lea eax, var_0000008C
008C782D: push eax
008C782E: push 00000002h
008C7830: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C7835: add esp, 0000000Ch
008C7838: lea eax, var_20
008C783B: push eax
008C783C: mov eax, [ebp+08h]
008C783F: mov eax, [eax]
008C7841: push [ebp+08h]
008C7844: call [eax+000001C0h]
008C784A: fclex 
008C784C: mov var_000001AC, eax
008C7852: cmp var_000001AC, 00000000h
008C7859: jnl 8C787Bh
008C785B: push 000001C0h
008C7860: push 00448B3Ch
008C7865: push [ebp+08h]
008C7868: push var_000001AC
008C786E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C7873: mov var_00000220, eax
008C7879: jmp 8C7882h
008C787B: and var_00000220, 00000000h
008C7882: push var_20
008C7885: call 004109DCh ; Val(arg_1)
008C788A: fstp real8 ptr var_000001A8
008C7890: push 0044A87Ch
008C7895: push 00000000h
008C7897: push 00000003h
008C7899: mov eax, [ebp+08h]
008C789C: mov eax, [eax]
008C789E: push [ebp+08h]
008C78A1: call [eax+00000328h]
008C78A7: push eax
008C78A8: lea eax, var_74
008C78AB: push eax
008C78AC: call 00410A84h ; Set (object)
008C78B1: push eax
008C78B2: lea eax, var_0000011C
008C78B8: push eax
008C78B9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C78BE: add esp, 00000010h
008C78C1: push eax
008C78C2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C78C7: push eax
008C78C8: lea eax, var_78
008C78CB: push eax
008C78CC: call 00410A84h ; Set (object)
008C78D1: mov var_000001C0, eax
008C78D7: mov var_00000124, 00000003h
008C78E1: mov var_0000012C, 00000002h
008C78EB: lea eax, var_7C
008C78EE: push eax
008C78EF: lea eax, var_0000012C
008C78F5: push eax
008C78F6: mov eax, var_000001C0
008C78FC: mov eax, [eax]
008C78FE: push var_000001C0
008C7904: call [eax+24h]
008C7907: fclex 
008C7909: mov var_000001C4, eax
008C790F: cmp var_000001C4, 00000000h
008C7916: jnl 8C7938h
008C7918: push 00000024h
008C791A: push 0044A87Ch
008C791F: push var_000001C0
008C7925: push var_000001C4
008C792B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C7930: mov var_00000224, eax
008C7936: jmp 8C793Fh
008C7938: and var_00000224, 00000000h
008C793F: mov eax, var_7C
008C7942: mov var_000001C8, eax
008C7948: cmp [008F2010h], 00000000h
008C794F: jnz 8C796Ch
008C7951: push 008F2010h
008C7956: push 00433984h
008C795B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C7960: mov var_00000228, 008F2010h
008C796A: jmp 8C7976h
008C796C: mov var_00000228, 008F2010h
008C7976: mov eax, var_00000228
008C797C: mov eax, [eax]
008C797E: mov ecx, var_00000228
008C7984: mov ecx, [ecx]
008C7986: mov ecx, [ecx]
008C7988: push eax
008C7989: call [ecx+00000524h]
008C798F: push eax
008C7990: lea eax, var_54
008C7993: push eax
008C7994: call 00410A84h ; Set (object)
008C7999: mov var_000001B0, eax
008C799F: lea eax, var_58
008C79A2: push eax
008C79A3: fld real8 ptr var_000001A8
008C79A9: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008C79AE: push eax
008C79AF: mov eax, var_000001B0
008C79B5: mov eax, [eax]
008C79B7: push var_000001B0
008C79BD: call [eax+40h]
008C79C0: fclex 
008C79C2: mov var_000001B4, eax
008C79C8: cmp var_000001B4, 00000000h
008C79CF: jnl 8C79F1h
008C79D1: push 00000040h
008C79D3: push 00440DE8h
008C79D8: push var_000001B0
008C79DE: push var_000001B4
008C79E4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C79E9: mov var_0000022C, eax
008C79EF: jmp 8C79F8h
008C79F1: and var_0000022C, 00000000h
008C79F8: mov var_00000144, 00000007h
008C7A02: mov var_0000014C, 00000003h
008C7A0C: lea eax, var_2C
008C7A0F: push eax
008C7A10: mov eax, [ebp+08h]
008C7A13: mov eax, [eax]
008C7A15: push [ebp+08h]
008C7A18: call [eax+000001C0h]
008C7A1E: fclex 
008C7A20: mov var_000001B8, eax
008C7A26: cmp var_000001B8, 00000000h
008C7A2D: jnl 8C7A4Fh
008C7A2F: push 000001C0h
008C7A34: push 00448B3Ch
008C7A39: push [ebp+08h]
008C7A3C: push var_000001B8
008C7A42: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C7A47: mov var_00000230, eax
008C7A4D: jmp 8C7A56h
008C7A4F: and var_00000230, 00000000h
008C7A56: push var_2C
008C7A59: call 004109DCh ; Val(arg_1)
008C7A5E: push ecx
008C7A5F: push ecx
008C7A60: fstp real8 ptr [esp]
008C7A63: call 00410790h ; msvbvm60.dll.__vbaStrR8
008C7A68: mov edx, eax
008C7A6A: lea ecx, var_30
008C7A6D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C7A72: push eax
008C7A73: push 004417CCh ; sck
008C7A78: call 00410A18h ; &
008C7A7D: mov var_000000A4, eax
008C7A83: mov var_000000AC, 00000008h
008C7A8D: cmp [008F2010h], 00000000h
008C7A94: jnz 8C7AB1h
008C7A96: push 008F2010h
008C7A9B: push 00433984h
008C7AA0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C7AA5: mov var_00000234, 008F2010h
008C7AAF: jmp 8C7ABBh
008C7AB1: mov var_00000234, 008F2010h
008C7ABB: mov var_00000174, 00000006h
008C7AC5: mov var_0000017C, 00000003h
008C7ACF: lea eax, var_40
008C7AD2: push eax
008C7AD3: mov eax, [ebp+08h]
008C7AD6: mov eax, [eax]
008C7AD8: push [ebp+08h]
008C7ADB: call [eax+000001C0h]
008C7AE1: fclex 
008C7AE3: mov var_000001BC, eax
008C7AE9: cmp var_000001BC, 00000000h
008C7AF0: jnl 8C7B12h
008C7AF2: push 000001C0h
008C7AF7: push 00448B3Ch
008C7AFC: push [ebp+08h]
008C7AFF: push var_000001BC
008C7B05: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C7B0A: mov var_00000238, eax
008C7B10: jmp 8C7B19h
008C7B12: and var_00000238, 00000000h
008C7B19: push var_40
008C7B1C: call 004109DCh ; Val(arg_1)
008C7B21: push ecx
008C7B22: push ecx
008C7B23: fstp real8 ptr [esp]
008C7B26: call 00410790h ; msvbvm60.dll.__vbaStrR8
008C7B2B: mov edx, eax
008C7B2D: lea ecx, var_44
008C7B30: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C7B35: push eax
008C7B36: push 004417CCh ; sck
008C7B3B: call 00410A18h ; &
008C7B40: mov var_000000E4, eax
008C7B46: mov var_000000EC, 00000008h
008C7B50: cmp [008F2010h], 00000000h
008C7B57: jnz 8C7B74h
008C7B59: push 008F2010h
008C7B5E: push 00433984h
008C7B63: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C7B68: mov var_0000023C, 008F2010h
008C7B72: jmp 8C7B7Eh
008C7B74: mov var_0000023C, 008F2010h
008C7B7E: push 00460B80h ; Remote user:
008C7B83: push 00000000h
008C7B85: push 00000004h
008C7B87: push var_58
008C7B8A: lea eax, var_0000008C
008C7B90: push eax
008C7B91: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C7B96: add esp, 00000010h
008C7B99: push eax
008C7B9A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C7B9F: mov edx, eax
008C7BA1: lea ecx, var_24
008C7BA4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C7BA9: push eax
008C7BAA: call 00410A18h ; &
008C7BAF: mov edx, eax
008C7BB1: lea ecx, var_28
008C7BB4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C7BB9: push eax
008C7BBA: push 00441740h
008C7BBF: call 00410A18h ; &
008C7BC4: mov edx, eax
008C7BC6: lea ecx, var_34
008C7BC9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C7BCE: push eax
008C7BCF: push 00000010h
008C7BD1: pop eax
008C7BD2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C7BD7: lea esi, var_0000014C
008C7BDD: mov edi, esp
008C7BDF: movsd 
008C7BE0: movsd 
008C7BE1: movsd 
008C7BE2: movsd 
008C7BE3: push 00000001h
008C7BE5: push 00000010h
008C7BE7: push 00440E58h
008C7BEC: push 00000010h
008C7BEE: pop eax
008C7BEF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C7BF4: lea esi, var_000000AC
008C7BFA: mov edi, esp
008C7BFC: movsd 
008C7BFD: movsd 
008C7BFE: movsd 
008C7BFF: movsd 
008C7C00: push 00000001h
008C7C02: push 00000000h
008C7C04: push 00440E48h
008C7C09: push 00000000h
008C7C0B: push 00000018h
008C7C0D: mov eax, var_00000234
008C7C13: mov eax, [eax]
008C7C15: mov ecx, var_00000234
008C7C1B: mov ecx, [ecx]
008C7C1D: mov ecx, [ecx]
008C7C1F: push eax
008C7C20: call [ecx+00000550h]
008C7C26: push eax
008C7C27: lea eax, var_5C
008C7C2A: push eax
008C7C2B: call 00410A84h ; Set (object)
008C7C30: push eax
008C7C31: lea eax, var_0000009C
008C7C37: push eax
008C7C38: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C7C3D: add esp, 00000010h
008C7C40: push eax
008C7C41: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C7C46: push eax
008C7C47: lea eax, var_60
008C7C4A: push eax
008C7C4B: call 00410A84h ; Set (object)
008C7C50: push eax
008C7C51: lea eax, var_000000BC
008C7C57: push eax
008C7C58: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C7C5D: add esp, 00000020h
008C7C60: push eax
008C7C61: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C7C66: push eax
008C7C67: lea eax, var_64
008C7C6A: push eax
008C7C6B: call 00410A84h ; Set (object)
008C7C70: push eax
008C7C71: lea eax, var_000000CC
008C7C77: push eax
008C7C78: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C7C7D: add esp, 00000020h
008C7C80: push eax
008C7C81: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C7C86: mov edx, eax
008C7C88: lea ecx, var_38
008C7C8B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C7C90: push eax
008C7C91: call 00410A18h ; &
008C7C96: mov edx, eax
008C7C98: lea ecx, var_3C
008C7C9B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C7CA0: push eax
008C7CA1: push 004495B0h
008C7CA6: call 00410A18h ; &
008C7CAB: mov edx, eax
008C7CAD: lea ecx, var_48
008C7CB0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C7CB5: push eax
008C7CB6: push 00000010h
008C7CB8: pop eax
008C7CB9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C7CBE: lea esi, var_0000017C
008C7CC4: mov edi, esp
008C7CC6: movsd 
008C7CC7: movsd 
008C7CC8: movsd 
008C7CC9: movsd 
008C7CCA: push 00000001h
008C7CCC: push 00000010h
008C7CCE: push 00440E58h
008C7CD3: push 00000010h
008C7CD5: pop eax
008C7CD6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C7CDB: lea esi, var_000000EC
008C7CE1: mov edi, esp
008C7CE3: movsd 
008C7CE4: movsd 
008C7CE5: movsd 
008C7CE6: movsd 
008C7CE7: push 00000001h
008C7CE9: push 00000000h
008C7CEB: push 00440E48h
008C7CF0: push 00000000h
008C7CF2: push 00000018h
008C7CF4: mov eax, var_0000023C
008C7CFA: mov eax, [eax]
008C7CFC: mov ecx, var_0000023C
008C7D02: mov ecx, [ecx]
008C7D04: mov ecx, [ecx]
008C7D06: push eax
008C7D07: call [ecx+00000550h]
008C7D0D: push eax
008C7D0E: lea eax, var_68
008C7D11: push eax
008C7D12: call 00410A84h ; Set (object)
008C7D17: push eax
008C7D18: lea eax, var_000000DC
008C7D1E: push eax
008C7D1F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C7D24: add esp, 00000010h
008C7D27: push eax
008C7D28: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C7D2D: push eax
008C7D2E: lea eax, var_6C
008C7D31: push eax
008C7D32: call 00410A84h ; Set (object)
008C7D37: push eax
008C7D38: lea eax, var_000000FC
008C7D3E: push eax
008C7D3F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C7D44: add esp, 00000020h
008C7D47: push eax
008C7D48: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C7D4D: push eax
008C7D4E: lea eax, var_70
008C7D51: push eax
008C7D52: call 00410A84h ; Set (object)
008C7D57: push eax
008C7D58: lea eax, var_0000010C
008C7D5E: push eax
008C7D5F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C7D64: add esp, 00000020h
008C7D67: push eax
008C7D68: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C7D6D: mov edx, eax
008C7D6F: lea ecx, var_4C
008C7D72: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C7D77: push eax
008C7D78: call 00410A18h ; &
008C7D7D: mov edx, eax
008C7D7F: lea ecx, var_50
008C7D82: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C7D87: push eax
008C7D88: mov eax, var_000001C8
008C7D8E: mov eax, [eax]
008C7D90: push var_000001C8
008C7D96: call [eax+20h]
008C7D99: fclex 
008C7D9B: mov var_000001CC, eax
008C7DA1: cmp var_000001CC, 00000000h
008C7DA8: jnl 8C7DCAh
008C7DAA: push 00000020h
008C7DAC: push 0044A88Ch
008C7DB1: push var_000001C8
008C7DB7: push var_000001CC
008C7DBD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C7DC2: mov var_00000240, eax
008C7DC8: jmp 8C7DD1h
008C7DCA: and var_00000240, 00000000h
008C7DD1: lea eax, var_50
008C7DD4: push eax
008C7DD5: lea eax, var_4C
008C7DD8: push eax
008C7DD9: lea eax, var_48
008C7DDC: push eax
008C7DDD: lea eax, var_44
008C7DE0: push eax
008C7DE1: lea eax, var_40
008C7DE4: push eax
008C7DE5: lea eax, var_3C
008C7DE8: push eax
008C7DE9: lea eax, var_38
008C7DEC: push eax
008C7DED: lea eax, var_34
008C7DF0: push eax
008C7DF1: lea eax, var_30
008C7DF4: push eax
008C7DF5: lea eax, var_2C
008C7DF8: push eax
008C7DF9: lea eax, var_28
008C7DFC: push eax
008C7DFD: lea eax, var_24
008C7E00: push eax
008C7E01: lea eax, var_20
008C7E04: push eax
008C7E05: push 0000000Dh
008C7E07: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C7E0C: add esp, 00000038h
008C7E0F: lea eax, var_7C
008C7E12: push eax
008C7E13: lea eax, var_78
008C7E16: push eax
008C7E17: lea eax, var_74
008C7E1A: push eax
008C7E1B: lea eax, var_70
008C7E1E: push eax
008C7E1F: lea eax, var_6C
008C7E22: push eax
008C7E23: lea eax, var_68
008C7E26: push eax
008C7E27: lea eax, var_64
008C7E2A: push eax
008C7E2B: lea eax, var_60
008C7E2E: push eax
008C7E2F: lea eax, var_5C
008C7E32: push eax
008C7E33: lea eax, var_58
008C7E36: push eax
008C7E37: lea eax, var_54
008C7E3A: push eax
008C7E3B: push 0000000Bh
008C7E3D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C7E42: add esp, 00000030h
008C7E45: lea eax, var_0000012C
008C7E4B: push eax
008C7E4C: lea eax, var_0000011C
008C7E52: push eax
008C7E53: lea eax, var_0000010C
008C7E59: push eax
008C7E5A: lea eax, var_000000FC
008C7E60: push eax
008C7E61: lea eax, var_000000EC
008C7E67: push eax
008C7E68: lea eax, var_000000DC
008C7E6E: push eax
008C7E6F: lea eax, var_000000CC
008C7E75: push eax
008C7E76: lea eax, var_000000BC
008C7E7C: push eax
008C7E7D: lea eax, var_000000AC
008C7E83: push eax
008C7E84: lea eax, var_0000009C
008C7E8A: push eax
008C7E8B: lea eax, var_0000008C
008C7E91: push eax
008C7E92: push 0000000Bh
008C7E94: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C7E99: add esp, 00000030h
008C7E9C: mov var_00000134, 004411ECh ; Stop
008C7EA6: mov var_0000013C, 00000008h
008C7EB0: push 00000010h
008C7EB2: pop eax
008C7EB3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C7EB8: lea esi, var_0000013C
008C7EBE: mov edi, esp
008C7EC0: movsd 
008C7EC1: movsd 
008C7EC2: movsd 
008C7EC3: movsd 
008C7EC4: push FFFFFDFAh
008C7EC9: mov eax, [ebp+08h]
008C7ECC: mov eax, [eax]
008C7ECE: push [ebp+08h]
008C7ED1: call [eax+00000320h]
008C7ED7: push eax
008C7ED8: lea eax, var_54
008C7EDB: push eax
008C7EDC: call 00410A84h ; Set (object)
008C7EE1: push eax
008C7EE2: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008C7EE7: lea ecx, var_54
008C7EEA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C7EEF: mov eax, [ebp+08h]
008C7EF2: mov eax, [eax]
008C7EF4: push [ebp+08h]
008C7EF7: call [eax+00000300h]
008C7EFD: push eax
008C7EFE: lea eax, var_54
008C7F01: push eax
008C7F02: call 00410A84h ; Set (object)
008C7F07: mov var_000001AC, eax
008C7F0D: lea eax, var_20
008C7F10: push eax
008C7F11: mov eax, var_000001AC
008C7F17: mov eax, [eax]
008C7F19: push var_000001AC
008C7F1F: call [eax+000000A0h]
008C7F25: fclex 
008C7F27: mov var_000001B0, eax
008C7F2D: cmp var_000001B0, 00000000h
008C7F34: jnl 8C7F59h
008C7F36: push 000000A0h
008C7F3B: push 00440E08h
008C7F40: push var_000001AC
008C7F46: push var_000001B0
008C7F4C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C7F51: mov var_00000244, eax
008C7F57: jmp 8C7F60h
008C7F59: and var_00000244, 00000000h
008C7F60: and var_000001A0, 00000000h
008C7F67: lea eax, var_000001A0
008C7F6D: push eax
008C7F6E: push 00460BB4h ; Socket activated [
008C7F73: push var_20
008C7F76: call 00410A18h ; &
008C7F7B: mov edx, eax
008C7F7D: lea ecx, var_24
008C7F80: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C7F85: push eax
008C7F86: push 004496F0h
008C7F8B: call 00410A18h ; &
008C7F90: mov edx, eax
008C7F92: lea ecx, var_28
008C7F95: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C7F9A: push eax
008C7F9B: push 00460BA0h ; Browser
008C7FA0: mov eax, [ebp+08h]
008C7FA3: mov eax, [eax]
008C7FA5: push [ebp+08h]
008C7FA8: call [eax+00000700h]
008C7FAE: lea eax, var_28
008C7FB1: push eax
008C7FB2: lea eax, var_24
008C7FB5: push eax
008C7FB6: lea eax, var_20
008C7FB9: push eax
008C7FBA: push 00000003h
008C7FBC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C7FC1: add esp, 00000010h
008C7FC4: lea ecx, var_54
008C7FC7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C7FCC: mov eax, [ebp+08h]
008C7FCF: mov eax, [eax]
008C7FD1: push [ebp+08h]
008C7FD4: call [eax+000002FCh]
008C7FDA: push eax
008C7FDB: lea eax, var_54
008C7FDE: push eax
008C7FDF: call 00410A84h ; Set (object)
008C7FE4: mov var_000001AC, eax
008C7FEA: lea eax, var_20
008C7FED: push eax
008C7FEE: mov eax, var_000001AC
008C7FF4: mov eax, [eax]
008C7FF6: push var_000001AC
008C7FFC: call [eax+000000A0h]
008C8002: fclex 
008C8004: mov var_000001B0, eax
008C800A: cmp var_000001B0, 00000000h
008C8011: jnl 8C8036h
008C8013: push 000000A0h
008C8018: push 00440E08h
008C801D: push var_000001AC
008C8023: push var_000001B0
008C8029: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C802E: mov var_00000248, eax
008C8034: jmp 8C803Dh
008C8036: and var_00000248, 00000000h
008C803D: and var_000001A0, 00000000h
008C8044: lea eax, var_000001A0
008C804A: push eax
008C804B: push 00460BB4h ; Socket activated [
008C8050: push var_20
008C8053: call 00410A18h ; &
008C8058: mov edx, eax
008C805A: lea ecx, var_24
008C805D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C8062: push eax
008C8063: push 004496F0h
008C8068: call 00410A18h ; &
008C806D: mov edx, eax
008C806F: lea ecx, var_28
008C8072: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C8077: push eax
008C8078: push 00460BE0h ; Daemon
008C807D: mov eax, [ebp+08h]
008C8080: mov eax, [eax]
008C8082: push [ebp+08h]
008C8085: call [eax+00000700h]
008C808B: lea eax, var_28
008C808E: push eax
008C808F: lea eax, var_24
008C8092: push eax
008C8093: lea eax, var_20
008C8096: push eax
008C8097: push 00000003h
008C8099: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C809E: add esp, 00000010h
008C80A1: lea ecx, var_54
008C80A4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C80A9: jmp 008C8658h
008C80AE: mov eax, [ebp+08h]
008C80B1: mov eax, [eax]
008C80B3: push [ebp+08h]
008C80B6: call [eax+00000318h]
008C80BC: push eax
008C80BD: lea eax, var_54
008C80C0: push eax
008C80C1: call 00410A84h ; Set (object)
008C80C6: mov var_000001AC, eax
008C80CC: lea eax, var_58
008C80CF: push eax
008C80D0: push 00000000h
008C80D2: mov eax, var_000001AC
008C80D8: mov eax, [eax]
008C80DA: push var_000001AC
008C80E0: call [eax+40h]
008C80E3: fclex 
008C80E5: mov var_000001B0, eax
008C80EB: cmp var_000001B0, 00000000h
008C80F2: jnl 8C8114h
008C80F4: push 00000040h
008C80F6: push 00440DE8h
008C80FB: push var_000001AC
008C8101: push var_000001B0
008C8107: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C810C: mov var_0000024C, eax
008C8112: jmp 8C811Bh
008C8114: and var_0000024C, 00000000h
008C811B: push 00000000h
008C811D: push 00000046h
008C811F: push var_58
008C8122: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C8127: add esp, 0000000Ch
008C812A: lea eax, var_58
008C812D: push eax
008C812E: lea eax, var_54
008C8131: push eax
008C8132: push 00000002h
008C8134: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C8139: add esp, 0000000Ch
008C813C: mov eax, [ebp+08h]
008C813F: mov eax, [eax]
008C8141: push [ebp+08h]
008C8144: call [eax+00000314h]
008C814A: push eax
008C814B: lea eax, var_54
008C814E: push eax
008C814F: call 00410A84h ; Set (object)
008C8154: mov var_000001AC, eax
008C815A: lea eax, var_58
008C815D: push eax
008C815E: push 00000000h
008C8160: mov eax, var_000001AC
008C8166: mov eax, [eax]
008C8168: push var_000001AC
008C816E: call [eax+40h]
008C8171: fclex 
008C8173: mov var_000001B0, eax
008C8179: cmp var_000001B0, 00000000h
008C8180: jnl 8C81A2h
008C8182: push 00000040h
008C8184: push 00440DE8h
008C8189: push var_000001AC
008C818F: push var_000001B0
008C8195: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C819A: mov var_00000250, eax
008C81A0: jmp 8C81A9h
008C81A2: and var_00000250, 00000000h
008C81A9: push 00000000h
008C81AB: push 00000046h
008C81AD: push var_58
008C81B0: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C81B5: add esp, 0000000Ch
008C81B8: lea eax, var_58
008C81BB: push eax
008C81BC: lea eax, var_54
008C81BF: push eax
008C81C0: push 00000002h
008C81C2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C81C7: add esp, 0000000Ch
008C81CA: mov var_00000134, 00441068h ; Activate
008C81D4: mov var_0000013C, 00000008h
008C81DE: push 00000010h
008C81E0: pop eax
008C81E1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C81E6: lea esi, var_0000013C
008C81EC: mov edi, esp
008C81EE: movsd 
008C81EF: movsd 
008C81F0: movsd 
008C81F1: movsd 
008C81F2: push FFFFFDFAh
008C81F7: mov eax, [ebp+08h]
008C81FA: mov eax, [eax]
008C81FC: push [ebp+08h]
008C81FF: call [eax+00000320h]
008C8205: push eax
008C8206: lea eax, var_54
008C8209: push eax
008C820A: call 00410A84h ; Set (object)
008C820F: push eax
008C8210: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008C8215: lea ecx, var_54
008C8218: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C821D: push 0044A87Ch
008C8222: push 00000000h
008C8224: push 00000003h
008C8226: mov eax, [ebp+08h]
008C8229: mov eax, [eax]
008C822B: push [ebp+08h]
008C822E: call [eax+00000328h]
008C8234: push eax
008C8235: lea eax, var_54
008C8238: push eax
008C8239: call 00410A84h ; Set (object)
008C823E: push eax
008C823F: lea eax, var_0000008C
008C8245: push eax
008C8246: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C824B: add esp, 00000010h
008C824E: push eax
008C824F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C8254: push eax
008C8255: lea eax, var_58
008C8258: push eax
008C8259: call 00410A84h ; Set (object)
008C825E: mov var_000001AC, eax
008C8264: mov var_00000094, 00000001h
008C826E: mov var_0000009C, 00000002h
008C8278: lea eax, var_5C
008C827B: push eax
008C827C: lea eax, var_0000009C
008C8282: push eax
008C8283: mov eax, var_000001AC
008C8289: mov eax, [eax]
008C828B: push var_000001AC
008C8291: call [eax+24h]
008C8294: fclex 
008C8296: mov var_000001B0, eax
008C829C: cmp var_000001B0, 00000000h
008C82A3: jnl 8C82C5h
008C82A5: push 00000024h
008C82A7: push 0044A87Ch
008C82AC: push var_000001AC
008C82B2: push var_000001B0
008C82B8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C82BD: mov var_00000254, eax
008C82C3: jmp 8C82CCh
008C82C5: and var_00000254, 00000000h
008C82CC: mov eax, var_5C
008C82CF: mov var_000001B4, eax
008C82D5: push 00460BF4h ; Status: Not listening
008C82DA: mov eax, var_000001B4
008C82E0: mov eax, [eax]
008C82E2: push var_000001B4
008C82E8: call [eax+20h]
008C82EB: fclex 
008C82ED: mov var_000001B8, eax
008C82F3: cmp var_000001B8, 00000000h
008C82FA: jnl 8C831Ch
008C82FC: push 00000020h
008C82FE: push 0044A88Ch
008C8303: push var_000001B4
008C8309: push var_000001B8
008C830F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C8314: mov var_00000258, eax
008C831A: jmp 8C8323h
008C831C: and var_00000258, 00000000h
008C8323: lea eax, var_5C
008C8326: push eax
008C8327: lea eax, var_58
008C832A: push eax
008C832B: lea eax, var_54
008C832E: push eax
008C832F: push 00000003h
008C8331: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C8336: add esp, 00000010h
008C8339: lea eax, var_0000009C
008C833F: push eax
008C8340: lea eax, var_0000008C
008C8346: push eax
008C8347: push 00000002h
008C8349: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C834E: add esp, 0000000Ch
008C8351: push 0044A87Ch
008C8356: push 00000000h
008C8358: push 00000003h
008C835A: mov eax, [ebp+08h]
008C835D: mov eax, [eax]
008C835F: push [ebp+08h]
008C8362: call [eax+00000328h]
008C8368: push eax
008C8369: lea eax, var_54
008C836C: push eax
008C836D: call 00410A84h ; Set (object)
008C8372: push eax
008C8373: lea eax, var_0000008C
008C8379: push eax
008C837A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C837F: add esp, 00000010h
008C8382: push eax
008C8383: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C8388: push eax
008C8389: lea eax, var_58
008C838C: push eax
008C838D: call 00410A84h ; Set (object)
008C8392: mov var_000001AC, eax
008C8398: mov var_00000094, 00000002h
008C83A2: mov var_0000009C, 00000002h
008C83AC: lea eax, var_5C
008C83AF: push eax
008C83B0: lea eax, var_0000009C
008C83B6: push eax
008C83B7: mov eax, var_000001AC
008C83BD: mov eax, [eax]
008C83BF: push var_000001AC
008C83C5: call [eax+24h]
008C83C8: fclex 
008C83CA: mov var_000001B0, eax
008C83D0: cmp var_000001B0, 00000000h
008C83D7: jnl 8C83F9h
008C83D9: push 00000024h
008C83DB: push 0044A87Ch
008C83E0: push var_000001AC
008C83E6: push var_000001B0
008C83EC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C83F1: mov var_0000025C, eax
008C83F7: jmp 8C8400h
008C83F9: and var_0000025C, 00000000h
008C8400: mov eax, var_5C
008C8403: mov var_000001B4, eax
008C8409: push 00460C24h ; Remote IP: N/A
008C840E: mov eax, var_000001B4
008C8414: mov eax, [eax]
008C8416: push var_000001B4
008C841C: call [eax+20h]
008C841F: fclex 
008C8421: mov var_000001B8, eax
008C8427: cmp var_000001B8, 00000000h
008C842E: jnl 8C8450h
008C8430: push 00000020h
008C8432: push 0044A88Ch
008C8437: push var_000001B4
008C843D: push var_000001B8
008C8443: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C8448: mov var_00000260, eax
008C844E: jmp 8C8457h
008C8450: and var_00000260, 00000000h
008C8457: lea eax, var_5C
008C845A: push eax
008C845B: lea eax, var_58
008C845E: push eax
008C845F: lea eax, var_54
008C8462: push eax
008C8463: push 00000003h
008C8465: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C846A: add esp, 00000010h
008C846D: lea eax, var_0000009C
008C8473: push eax
008C8474: lea eax, var_0000008C
008C847A: push eax
008C847B: push 00000002h
008C847D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C8482: add esp, 0000000Ch
008C8485: push 0044A87Ch
008C848A: push 00000000h
008C848C: push 00000003h
008C848E: mov eax, [ebp+08h]
008C8491: mov eax, [eax]
008C8493: push [ebp+08h]
008C8496: call [eax+00000328h]
008C849C: push eax
008C849D: lea eax, var_54
008C84A0: push eax
008C84A1: call 00410A84h ; Set (object)
008C84A6: push eax
008C84A7: lea eax, var_0000008C
008C84AD: push eax
008C84AE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C84B3: add esp, 00000010h
008C84B6: push eax
008C84B7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C84BC: push eax
008C84BD: lea eax, var_58
008C84C0: push eax
008C84C1: call 00410A84h ; Set (object)
008C84C6: mov var_000001AC, eax
008C84CC: mov var_00000094, 00000003h
008C84D6: mov var_0000009C, 00000002h
008C84E0: lea eax, var_5C
008C84E3: push eax
008C84E4: lea eax, var_0000009C
008C84EA: push eax
008C84EB: mov eax, var_000001AC
008C84F1: mov eax, [eax]
008C84F3: push var_000001AC
008C84F9: call [eax+24h]
008C84FC: fclex 
008C84FE: mov var_000001B0, eax
008C8504: cmp var_000001B0, 00000000h
008C850B: jnl 8C852Dh
008C850D: push 00000024h
008C850F: push 0044A87Ch
008C8514: push var_000001AC
008C851A: push var_000001B0
008C8520: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C8525: mov var_00000264, eax
008C852B: jmp 8C8534h
008C852D: and var_00000264, 00000000h
008C8534: mov eax, var_5C
008C8537: mov var_000001B4, eax
008C853D: push 00460C48h ; Remote user: N/A
008C8542: mov eax, var_000001B4
008C8548: mov eax, [eax]
008C854A: push var_000001B4
008C8550: call [eax+20h]
008C8553: fclex 
008C8555: mov var_000001B8, eax
008C855B: cmp var_000001B8, 00000000h
008C8562: jnl 8C8584h
008C8564: push 00000020h
008C8566: push 0044A88Ch
008C856B: push var_000001B4
008C8571: push var_000001B8
008C8577: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C857C: mov var_00000268, eax
008C8582: jmp 8C858Bh
008C8584: and var_00000268, 00000000h
008C858B: lea eax, var_5C
008C858E: push eax
008C858F: lea eax, var_58
008C8592: push eax
008C8593: lea eax, var_54
008C8596: push eax
008C8597: push 00000003h
008C8599: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C859E: add esp, 00000010h
008C85A1: lea eax, var_0000009C
008C85A7: push eax
008C85A8: lea eax, var_0000008C
008C85AE: push eax
008C85AF: push 00000002h
008C85B1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C85B6: add esp, 0000000Ch
008C85B9: mov var_00000134, 00441068h ; Activate
008C85C3: mov var_0000013C, 00000008h
008C85CD: push 00000010h
008C85CF: pop eax
008C85D0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C85D5: lea esi, var_0000013C
008C85DB: mov edi, esp
008C85DD: movsd 
008C85DE: movsd 
008C85DF: movsd 
008C85E0: movsd 
008C85E1: push FFFFFDFAh
008C85E6: mov eax, [ebp+08h]
008C85E9: mov eax, [eax]
008C85EB: push [ebp+08h]
008C85EE: call [eax+00000320h]
008C85F4: push eax
008C85F5: lea eax, var_54
008C85F8: push eax
008C85F9: call 00410A84h ; Set (object)
008C85FE: push eax
008C85FF: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008C8604: lea ecx, var_54
008C8607: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C860C: and var_000001A0, 00000000h
008C8613: lea eax, var_000001A0
008C8619: push eax
008C861A: push 00460C70h ; Socket disabled
008C861F: push 00460BA0h ; Browser
008C8624: mov eax, [ebp+08h]
008C8627: mov eax, [eax]
008C8629: push [ebp+08h]
008C862C: call [eax+00000700h]
008C8632: and var_000001A0, 00000000h
008C8639: lea eax, var_000001A0
008C863F: push eax
008C8640: push 00460C70h ; Socket disabled
008C8645: push 00460BE0h ; Daemon
008C864A: mov eax, [ebp+08h]
008C864D: mov eax, [eax]
008C864F: push [ebp+08h]
008C8652: call [eax+00000700h]
008C8658: jmp 008C8C7Ah
008C865D: mov eax, [ebp+08h]
008C8660: mov eax, [eax]
008C8662: push [ebp+08h]
008C8665: call [eax+00000318h]
008C866B: push eax
008C866C: lea eax, var_54
008C866F: push eax
008C8670: call 00410A84h ; Set (object)
008C8675: mov var_000001AC, eax
008C867B: lea eax, var_58
008C867E: push eax
008C867F: push 00000000h
008C8681: mov eax, var_000001AC
008C8687: mov eax, [eax]
008C8689: push var_000001AC
008C868F: call [eax+40h]
008C8692: fclex 
008C8694: mov var_000001B0, eax
008C869A: cmp var_000001B0, 00000000h
008C86A1: jnl 8C86C3h
008C86A3: push 00000040h
008C86A5: push 00440DE8h
008C86AA: push var_000001AC
008C86B0: push var_000001B0
008C86B6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C86BB: mov var_0000026C, eax
008C86C1: jmp 8C86CAh
008C86C3: and var_0000026C, 00000000h
008C86CA: push 00000000h
008C86CC: push 00000046h
008C86CE: push var_58
008C86D1: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C86D6: add esp, 0000000Ch
008C86D9: lea eax, var_58
008C86DC: push eax
008C86DD: lea eax, var_54
008C86E0: push eax
008C86E1: push 00000002h
008C86E3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C86E8: add esp, 0000000Ch
008C86EB: mov eax, [ebp+08h]
008C86EE: mov eax, [eax]
008C86F0: push [ebp+08h]
008C86F3: call [eax+00000314h]
008C86F9: push eax
008C86FA: lea eax, var_54
008C86FD: push eax
008C86FE: call 00410A84h ; Set (object)
008C8703: mov var_000001AC, eax
008C8709: lea eax, var_58
008C870C: push eax
008C870D: push 00000000h
008C870F: mov eax, var_000001AC
008C8715: mov eax, [eax]
008C8717: push var_000001AC
008C871D: call [eax+40h]
008C8720: fclex 
008C8722: mov var_000001B0, eax
008C8728: cmp var_000001B0, 00000000h
008C872F: jnl 8C8751h
008C8731: push 00000040h
008C8733: push 00440DE8h
008C8738: push var_000001AC
008C873E: push var_000001B0
008C8744: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C8749: mov var_00000270, eax
008C874F: jmp 8C8758h
008C8751: and var_00000270, 00000000h
008C8758: push 00000000h
008C875A: push 00000046h
008C875C: push var_58
008C875F: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C8764: add esp, 0000000Ch
008C8767: lea eax, var_58
008C876A: push eax
008C876B: lea eax, var_54
008C876E: push eax
008C876F: push 00000002h
008C8771: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C8776: add esp, 0000000Ch
008C8779: mov var_00000134, 00441068h ; Activate
008C8783: mov var_0000013C, 00000008h
008C878D: push 00000010h
008C878F: pop eax
008C8790: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C8795: lea esi, var_0000013C
008C879B: mov edi, esp
008C879D: movsd 
008C879E: movsd 
008C879F: movsd 
008C87A0: movsd 
008C87A1: push FFFFFDFAh
008C87A6: mov eax, [ebp+08h]
008C87A9: mov eax, [eax]
008C87AB: push [ebp+08h]
008C87AE: call [eax+00000320h]
008C87B4: push eax
008C87B5: lea eax, var_54
008C87B8: push eax
008C87B9: call 00410A84h ; Set (object)
008C87BE: push eax
008C87BF: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008C87C4: lea ecx, var_54
008C87C7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C87CC: push 0044A87Ch
008C87D1: push 00000000h
008C87D3: push 00000003h
008C87D5: mov eax, [ebp+08h]
008C87D8: mov eax, [eax]
008C87DA: push [ebp+08h]
008C87DD: call [eax+00000328h]
008C87E3: push eax
008C87E4: lea eax, var_54
008C87E7: push eax
008C87E8: call 00410A84h ; Set (object)
008C87ED: push eax
008C87EE: lea eax, var_0000008C
008C87F4: push eax
008C87F5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C87FA: add esp, 00000010h
008C87FD: push eax
008C87FE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C8803: push eax
008C8804: lea eax, var_58
008C8807: push eax
008C8808: call 00410A84h ; Set (object)
008C880D: mov var_000001AC, eax
008C8813: mov var_00000094, 00000001h
008C881D: mov var_0000009C, 00000002h
008C8827: lea eax, var_5C
008C882A: push eax
008C882B: lea eax, var_0000009C
008C8831: push eax
008C8832: mov eax, var_000001AC
008C8838: mov eax, [eax]
008C883A: push var_000001AC
008C8840: call [eax+24h]
008C8843: fclex 
008C8845: mov var_000001B0, eax
008C884B: cmp var_000001B0, 00000000h
008C8852: jnl 8C8874h
008C8854: push 00000024h
008C8856: push 0044A87Ch
008C885B: push var_000001AC
008C8861: push var_000001B0
008C8867: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C886C: mov var_00000274, eax
008C8872: jmp 8C887Bh
008C8874: and var_00000274, 00000000h
008C887B: mov eax, var_5C
008C887E: mov var_000001B4, eax
008C8884: push 00460BF4h ; Status: Not listening
008C8889: mov eax, var_000001B4
008C888F: mov eax, [eax]
008C8891: push var_000001B4
008C8897: call [eax+20h]
008C889A: fclex 
008C889C: mov var_000001B8, eax
008C88A2: cmp var_000001B8, 00000000h
008C88A9: jnl 8C88CBh
008C88AB: push 00000020h
008C88AD: push 0044A88Ch
008C88B2: push var_000001B4
008C88B8: push var_000001B8
008C88BE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C88C3: mov var_00000278, eax
008C88C9: jmp 8C88D2h
008C88CB: and var_00000278, 00000000h
008C88D2: lea eax, var_5C
008C88D5: push eax
008C88D6: lea eax, var_58
008C88D9: push eax
008C88DA: lea eax, var_54
008C88DD: push eax
008C88DE: push 00000003h
008C88E0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C88E5: add esp, 00000010h
008C88E8: lea eax, var_0000009C
008C88EE: push eax
008C88EF: lea eax, var_0000008C
008C88F5: push eax
008C88F6: push 00000002h
008C88F8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C88FD: add esp, 0000000Ch
008C8900: push 0044A87Ch
008C8905: push 00000000h
008C8907: push 00000003h
008C8909: mov eax, [ebp+08h]
008C890C: mov eax, [eax]
008C890E: push [ebp+08h]
008C8911: call [eax+00000328h]
008C8917: push eax
008C8918: lea eax, var_54
008C891B: push eax
008C891C: call 00410A84h ; Set (object)
008C8921: push eax
008C8922: lea eax, var_0000008C
008C8928: push eax
008C8929: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C892E: add esp, 00000010h
008C8931: push eax
008C8932: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C8937: push eax
008C8938: lea eax, var_58
008C893B: push eax
008C893C: call 00410A84h ; Set (object)
008C8941: mov var_000001AC, eax
008C8947: mov var_00000094, 00000002h
008C8951: mov var_0000009C, 00000002h
008C895B: lea eax, var_5C
008C895E: push eax
008C895F: lea eax, var_0000009C
008C8965: push eax
008C8966: mov eax, var_000001AC
008C896C: mov eax, [eax]
008C896E: push var_000001AC
008C8974: call [eax+24h]
008C8977: fclex 
008C8979: mov var_000001B0, eax
008C897F: cmp var_000001B0, 00000000h
008C8986: jnl 8C89A8h
008C8988: push 00000024h
008C898A: push 0044A87Ch
008C898F: push var_000001AC
008C8995: push var_000001B0
008C899B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C89A0: mov var_0000027C, eax
008C89A6: jmp 8C89AFh
008C89A8: and var_0000027C, 00000000h
008C89AF: mov eax, var_5C
008C89B2: mov var_000001B4, eax
008C89B8: push 00460C24h ; Remote IP: N/A
008C89BD: mov eax, var_000001B4
008C89C3: mov eax, [eax]
008C89C5: push var_000001B4
008C89CB: call [eax+20h]
008C89CE: fclex 
008C89D0: mov var_000001B8, eax
008C89D6: cmp var_000001B8, 00000000h
008C89DD: jnl 8C89FFh
008C89DF: push 00000020h
008C89E1: push 0044A88Ch
008C89E6: push var_000001B4
008C89EC: push var_000001B8
008C89F2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C89F7: mov var_00000280, eax
008C89FD: jmp 8C8A06h
008C89FF: and var_00000280, 00000000h
008C8A06: lea eax, var_5C
008C8A09: push eax
008C8A0A: lea eax, var_58
008C8A0D: push eax
008C8A0E: lea eax, var_54
008C8A11: push eax
008C8A12: push 00000003h
008C8A14: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C8A19: add esp, 00000010h
008C8A1C: lea eax, var_0000009C
008C8A22: push eax
008C8A23: lea eax, var_0000008C
008C8A29: push eax
008C8A2A: push 00000002h
008C8A2C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C8A31: add esp, 0000000Ch
008C8A34: push 0044A87Ch
008C8A39: push 00000000h
008C8A3B: push 00000003h
008C8A3D: mov eax, [ebp+08h]
008C8A40: mov eax, [eax]
008C8A42: push [ebp+08h]
008C8A45: call [eax+00000328h]
008C8A4B: push eax
008C8A4C: lea eax, var_54
008C8A4F: push eax
008C8A50: call 00410A84h ; Set (object)
008C8A55: push eax
008C8A56: lea eax, var_0000008C
008C8A5C: push eax
008C8A5D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C8A62: add esp, 00000010h
008C8A65: push eax
008C8A66: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C8A6B: push eax
008C8A6C: lea eax, var_58
008C8A6F: push eax
008C8A70: call 00410A84h ; Set (object)
008C8A75: mov var_000001AC, eax
008C8A7B: mov var_00000094, 00000003h
008C8A85: mov var_0000009C, 00000002h
008C8A8F: lea eax, var_5C
008C8A92: push eax
008C8A93: lea eax, var_0000009C
008C8A99: push eax
008C8A9A: mov eax, var_000001AC
008C8AA0: mov eax, [eax]
008C8AA2: push var_000001AC
008C8AA8: call [eax+24h]
008C8AAB: fclex 
008C8AAD: mov var_000001B0, eax
008C8AB3: cmp var_000001B0, 00000000h
008C8ABA: jnl 8C8ADCh
008C8ABC: push 00000024h
008C8ABE: push 0044A87Ch
008C8AC3: push var_000001AC
008C8AC9: push var_000001B0
008C8ACF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C8AD4: mov var_00000284, eax
008C8ADA: jmp 8C8AE3h
008C8ADC: and var_00000284, 00000000h
008C8AE3: mov eax, var_5C
008C8AE6: mov var_000001B4, eax
008C8AEC: push 00460C48h ; Remote user: N/A
008C8AF1: mov eax, var_000001B4
008C8AF7: mov eax, [eax]
008C8AF9: push var_000001B4
008C8AFF: call [eax+20h]
008C8B02: fclex 
008C8B04: mov var_000001B8, eax
008C8B0A: cmp var_000001B8, 00000000h
008C8B11: jnl 8C8B33h
008C8B13: push 00000020h
008C8B15: push 0044A88Ch
008C8B1A: push var_000001B4
008C8B20: push var_000001B8
008C8B26: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C8B2B: mov var_00000288, eax
008C8B31: jmp 8C8B3Ah
008C8B33: and var_00000288, 00000000h
008C8B3A: lea eax, var_5C
008C8B3D: push eax
008C8B3E: lea eax, var_58
008C8B41: push eax
008C8B42: lea eax, var_54
008C8B45: push eax
008C8B46: push 00000003h
008C8B48: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C8B4D: add esp, 00000010h
008C8B50: lea eax, var_0000009C
008C8B56: push eax
008C8B57: lea eax, var_0000008C
008C8B5D: push eax
008C8B5E: push 00000002h
008C8B60: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C8B65: add esp, 0000000Ch
008C8B68: call 004109CAh ; Err
008C8B6D: push eax
008C8B6E: lea eax, var_54
008C8B71: push eax
008C8B72: call 00410A84h ; Set (object)
008C8B77: mov var_000001AC, eax
008C8B7D: lea eax, var_20
008C8B80: push eax
008C8B81: mov eax, var_000001AC
008C8B87: mov eax, [eax]
008C8B89: push var_000001AC
008C8B8F: call [eax+2Ch]
008C8B92: fclex 
008C8B94: mov var_000001B0, eax
008C8B9A: cmp var_000001B0, 00000000h
008C8BA1: jnl 8C8BC3h
008C8BA3: push 0000002Ch
008C8BA5: push 00441298h
008C8BAA: push var_000001AC
008C8BB0: push var_000001B0
008C8BB6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C8BBB: mov var_0000028C, eax
008C8BC1: jmp 8C8BCAh
008C8BC3: and var_0000028C, 00000000h
008C8BCA: mov var_000000B4, 80020004h
008C8BD4: mov var_000000BC, 0000000Ah
008C8BDE: mov var_000000A4, 80020004h
008C8BE8: mov var_000000AC, 0000000Ah
008C8BF2: mov var_00000094, 80020004h
008C8BFC: mov var_0000009C, 0000000Ah
008C8C06: mov eax, var_20
008C8C09: mov var_000001E0, eax
008C8C0F: and var_20, 00000000h
008C8C13: mov eax, var_000001E0
008C8C19: mov var_00000084, eax
008C8C1F: mov var_0000008C, 00000008h
008C8C29: lea eax, var_000000BC
008C8C2F: push eax
008C8C30: lea eax, var_000000AC
008C8C36: push eax
008C8C37: lea eax, var_0000009C
008C8C3D: push eax
008C8C3E: push 00000010h
008C8C40: lea eax, var_0000008C
008C8C46: push eax
008C8C47: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008C8C4C: lea ecx, var_54
008C8C4F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C8C54: lea eax, var_000000BC
008C8C5A: push eax
008C8C5B: lea eax, var_000000AC
008C8C61: push eax
008C8C62: lea eax, var_0000009C
008C8C68: push eax
008C8C69: lea eax, var_0000008C
008C8C6F: push eax
008C8C70: push 00000004h
008C8C72: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C8C77: add esp, 00000014h
008C8C7A: call 004109C4h ; msvbvm60.dll.__vbaExitProc
008C8C7F: wait 
008C8C80: push 008C8D57h
008C8C85: jmp 008C8D56h
008C8C8A: lea eax, var_50
008C8C8D: push eax
008C8C8E: lea eax, var_4C
008C8C91: push eax
008C8C92: lea eax, var_48
008C8C95: push eax
008C8C96: lea eax, var_44
008C8C99: push eax
008C8C9A: lea eax, var_40
008C8C9D: push eax
008C8C9E: lea eax, var_3C
008C8CA1: push eax
008C8CA2: lea eax, var_38
008C8CA5: push eax
008C8CA6: lea eax, var_34
008C8CA9: push eax
008C8CAA: lea eax, var_30
008C8CAD: push eax
008C8CAE: lea eax, var_2C
008C8CB1: push eax
008C8CB2: lea eax, var_28
008C8CB5: push eax
008C8CB6: lea eax, var_24
008C8CB9: push eax
008C8CBA: lea eax, var_20
008C8CBD: push eax
008C8CBE: push 0000000Dh
008C8CC0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C8CC5: add esp, 00000038h
008C8CC8: lea eax, var_7C
008C8CCB: push eax
008C8CCC: lea eax, var_78
008C8CCF: push eax
008C8CD0: lea eax, var_74
008C8CD3: push eax
008C8CD4: lea eax, var_70
008C8CD7: push eax
008C8CD8: lea eax, var_6C
008C8CDB: push eax
008C8CDC: lea eax, var_68
008C8CDF: push eax
008C8CE0: lea eax, var_64
008C8CE3: push eax
008C8CE4: lea eax, var_60
008C8CE7: push eax
008C8CE8: lea eax, var_5C
008C8CEB: push eax
008C8CEC: lea eax, var_58
008C8CEF: push eax
008C8CF0: lea eax, var_54
008C8CF3: push eax
008C8CF4: push 0000000Bh
008C8CF6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C8CFB: add esp, 00000030h
008C8CFE: lea eax, var_0000012C
008C8D04: push eax
008C8D05: lea eax, var_0000011C
008C8D0B: push eax
008C8D0C: lea eax, var_0000010C
008C8D12: push eax
008C8D13: lea eax, var_000000FC
008C8D19: push eax
008C8D1A: lea eax, var_000000EC
008C8D20: push eax
008C8D21: lea eax, var_000000DC
008C8D27: push eax
008C8D28: lea eax, var_000000CC
008C8D2E: push eax
008C8D2F: lea eax, var_000000BC
008C8D35: push eax
008C8D36: lea eax, var_000000AC
008C8D3C: push eax
008C8D3D: lea eax, var_0000009C
008C8D43: push eax
008C8D44: lea eax, var_0000008C
008C8D4A: push eax
008C8D4B: push 0000000Bh
008C8D4D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C8D52: add esp, 00000030h
008C8D55: ret 
End Sub

Private sub wsRemote__8CD20E
008CD20E: push ebp
008CD20F: mov ebp, esp
008CD211: sub esp, 00000018h
008CD214: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CD219: mov eax, fs:[00h]
008CD21F: push eax
008CD220: mov fs:[00000000h], esp
008CD227: push 00000034h
008CD229: pop eax
008CD22A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CD22F: push ebx
008CD230: push esi
008CD231: push edi
008CD232: mov var_18, esp
008CD235: mov var_14, 0040F8C8h
008CD23C: mov eax, [ebp+08h]
008CD23F: and eax, 00000001h
008CD242: mov var_10, eax
008CD245: mov eax, [ebp+08h]
008CD248: and al, FEh
008CD24A: mov [ebp+08h], eax
008CD24D: mov var_0C, 00000000h
008CD254: mov eax, [ebp+08h]
008CD257: mov eax, [eax]
008CD259: push [ebp+08h]
008CD25C: call [eax+04h]
008CD25F: mov var_04, 00000001h
008CD266: mov edx, [ebp+1Ch]
008CD269: lea ecx, var_28
008CD26C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008CD271: mov edx, [ebp+20h]
008CD274: lea ecx, var_24
008CD277: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008CD27C: mov var_04, 00000002h
008CD283: push FFFFFFFFh
008CD285: call 00410A60h ; On Error ...
008CD28A: mov var_04, 00000003h
008CD291: mov eax, [ebp+0Ch]
008CD294: movsx eax, word ptr [eax]
008CD297: test eax, eax
008CD299: jz 008CD39Dh
008CD29F: mov var_04, 00000004h
008CD2A6: mov eax, [ebp+08h]
008CD2A9: mov eax, [eax]
008CD2AB: push [ebp+08h]
008CD2AE: call [eax+00000314h]
008CD2B4: push eax
008CD2B5: lea eax, var_2C
008CD2B8: push eax
008CD2B9: call 00410A84h ; Set (object)
008CD2BE: mov var_34, eax
008CD2C1: lea eax, var_30
008CD2C4: push eax
008CD2C5: mov eax, [ebp+0Ch]
008CD2C8: mov ax, [eax]
008CD2CB: push eax
008CD2CC: mov eax, var_34
008CD2CF: mov eax, [eax]
008CD2D1: push var_34
008CD2D4: call [eax+40h]
008CD2D7: fclex 
008CD2D9: mov var_38, eax
008CD2DC: cmp var_38, 00000000h
008CD2E0: jnl 8CD2F9h
008CD2E2: push 00000040h
008CD2E4: push 00440DE8h
008CD2E9: push var_34
008CD2EC: push var_38
008CD2EF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CD2F4: mov var_50, eax
008CD2F7: jmp 8CD2FDh
008CD2F9: and var_50, 00000000h
008CD2FD: push 00000000h
008CD2FF: push 00000046h
008CD301: push var_30
008CD304: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CD309: add esp, 0000000Ch
008CD30C: lea eax, var_30
008CD30F: push eax
008CD310: lea eax, var_2C
008CD313: push eax
008CD314: push 00000002h
008CD316: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CD31B: add esp, 0000000Ch
008CD31E: mov var_04, 00000005h
008CD325: mov eax, [ebp+08h]
008CD328: mov eax, [eax]
008CD32A: push [ebp+08h]
008CD32D: call [eax+00000318h]
008CD333: push eax
008CD334: lea eax, var_2C
008CD337: push eax
008CD338: call 00410A84h ; Set (object)
008CD33D: mov var_34, eax
008CD340: lea eax, var_30
008CD343: push eax
008CD344: mov eax, [ebp+0Ch]
008CD347: mov ax, [eax]
008CD34A: push eax
008CD34B: mov eax, var_34
008CD34E: mov eax, [eax]
008CD350: push var_34
008CD353: call [eax+40h]
008CD356: fclex 
008CD358: mov var_38, eax
008CD35B: cmp var_38, 00000000h
008CD35F: jnl 8CD378h
008CD361: push 00000040h
008CD363: push 00440DE8h
008CD368: push var_34
008CD36B: push var_38
008CD36E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CD373: mov var_54, eax
008CD376: jmp 8CD37Ch
008CD378: and var_54, 00000000h
008CD37C: push 00000000h
008CD37E: push 00000046h
008CD380: push var_30
008CD383: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CD388: add esp, 0000000Ch
008CD38B: lea eax, var_30
008CD38E: push eax
008CD38F: lea eax, var_2C
008CD392: push eax
008CD393: push 00000002h
008CD395: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CD39A: add esp, 0000000Ch
008CD39D: mov var_10, 00000000h
008CD3A4: push 008CD3CFh
008CD3A9: jmp 8CD3BEh
008CD3AB: lea eax, var_30
008CD3AE: push eax
008CD3AF: lea eax, var_2C
008CD3B2: push eax
008CD3B3: push 00000002h
008CD3B5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CD3BA: add esp, 0000000Ch
008CD3BD: ret 
End Sub

Private sub wsRemote__8CCDC9
008CCDC9: push ebp
008CCDCA: mov ebp, esp
008CCDCC: sub esp, 00000018h
008CCDCF: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CCDD4: mov eax, fs:[00h]
008CCDDA: push eax
008CCDDB: mov fs:[00000000h], esp
008CCDE2: mov eax, 000000B0h
008CCDE7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CCDEC: push ebx
008CCDED: push esi
008CCDEE: push edi
008CCDEF: mov var_18, esp
008CCDF2: mov var_14, 0040F890h
008CCDF9: mov eax, [ebp+08h]
008CCDFC: and eax, 00000001h
008CCDFF: mov var_10, eax
008CCE02: mov eax, [ebp+08h]
008CCE05: and al, FEh
008CCE07: mov [ebp+08h], eax
008CCE0A: mov var_0C, 00000000h
008CCE11: mov eax, [ebp+08h]
008CCE14: mov eax, [eax]
008CCE16: push [ebp+08h]
008CCE19: call [eax+04h]
008CCE1C: mov var_04, 00000001h
008CCE23: mov var_04, 00000002h
008CCE2A: push FFFFFFFFh
008CCE2C: call 00410A60h ; On Error ...
008CCE31: mov var_04, 00000003h
008CCE38: lea eax, var_24
008CCE3B: mov var_78, eax
008CCE3E: mov var_80, 00006011h
008CCE45: mov eax, [ebp+08h]
008CCE48: mov eax, [eax]
008CCE4A: push [ebp+08h]
008CCE4D: call [eax+00000314h]
008CCE53: push eax
008CCE54: lea eax, var_30
008CCE57: push eax
008CCE58: call 00410A84h ; Set (object)
008CCE5D: mov var_00000094, eax
008CCE63: lea eax, var_34
008CCE66: push eax
008CCE67: mov eax, [ebp+0Ch]
008CCE6A: mov ax, [eax]
008CCE6D: push eax
008CCE6E: mov eax, var_00000094
008CCE74: mov eax, [eax]
008CCE76: push var_00000094
008CCE7C: call [eax+40h]
008CCE7F: fclex 
008CCE81: mov var_00000098, eax
008CCE87: cmp var_00000098, 00000000h
008CCE8E: jnl 8CCEB0h
008CCE90: push 00000040h
008CCE92: push 00440DE8h
008CCE97: push var_00000094
008CCE9D: push var_00000098
008CCEA3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CCEA8: mov var_000000C0, eax
008CCEAE: jmp 8CCEB7h
008CCEB0: and var_000000C0, 00000000h
008CCEB7: push 00000010h
008CCEB9: pop eax
008CCEBA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CCEBF: lea esi, var_80
008CCEC2: mov edi, esp
008CCEC4: movsd 
008CCEC5: movsd 
008CCEC6: movsd 
008CCEC7: movsd 
008CCEC8: push 00000001h
008CCECA: push 00000044h
008CCECC: push var_34
008CCECF: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CCED4: add esp, 0000001Ch
008CCED7: lea eax, var_34
008CCEDA: push eax
008CCEDB: lea eax, var_30
008CCEDE: push eax
008CCEDF: push 00000002h
008CCEE1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CCEE6: add esp, 0000000Ch
008CCEE9: mov var_04, 00000004h
008CCEF0: mov eax, var_24
008CCEF3: mov var_78, eax
008CCEF6: mov var_80, 00002011h
008CCEFD: mov eax, [ebp+08h]
008CCF00: mov eax, [eax]
008CCF02: push [ebp+08h]
008CCF05: call [eax+00000318h]
008CCF0B: push eax
008CCF0C: lea eax, var_30
008CCF0F: push eax
008CCF10: call 00410A84h ; Set (object)
008CCF15: mov var_00000094, eax
008CCF1B: lea eax, var_34
008CCF1E: push eax
008CCF1F: mov eax, [ebp+0Ch]
008CCF22: mov ax, [eax]
008CCF25: push eax
008CCF26: mov eax, var_00000094
008CCF2C: mov eax, [eax]
008CCF2E: push var_00000094
008CCF34: call [eax+40h]
008CCF37: fclex 
008CCF39: mov var_00000098, eax
008CCF3F: cmp var_00000098, 00000000h
008CCF46: jnl 8CCF68h
008CCF48: push 00000040h
008CCF4A: push 00440DE8h
008CCF4F: push var_00000094
008CCF55: push var_00000098
008CCF5B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CCF60: mov var_000000C4, eax
008CCF66: jmp 8CCF6Fh
008CCF68: and var_000000C4, 00000000h
008CCF6F: push 00000010h
008CCF71: pop eax
008CCF72: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CCF77: lea esi, var_80
008CCF7A: mov edi, esp
008CCF7C: movsd 
008CCF7D: movsd 
008CCF7E: movsd 
008CCF7F: movsd 
008CCF80: push 00000001h
008CCF82: push 00000043h
008CCF84: push var_34
008CCF87: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CCF8C: add esp, 0000001Ch
008CCF8F: lea eax, var_34
008CCF92: push eax
008CCF93: lea eax, var_30
008CCF96: push eax
008CCF97: push 00000002h
008CCF99: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CCF9E: add esp, 0000000Ch
008CCFA1: mov var_04, 00000005h
008CCFA8: push 0044A87Ch
008CCFAD: push 00000000h
008CCFAF: push 00000003h
008CCFB1: mov eax, [ebp+08h]
008CCFB4: mov eax, [eax]
008CCFB6: push [ebp+08h]
008CCFB9: call [eax+00000328h]
008CCFBF: push eax
008CCFC0: lea eax, var_38
008CCFC3: push eax
008CCFC4: call 00410A84h ; Set (object)
008CCFC9: push eax
008CCFCA: lea eax, var_60
008CCFCD: push eax
008CCFCE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CCFD3: add esp, 00000010h
008CCFD6: push eax
008CCFD7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CCFDC: push eax
008CCFDD: lea eax, var_3C
008CCFE0: push eax
008CCFE1: call 00410A84h ; Set (object)
008CCFE6: mov var_0000009C, eax
008CCFEC: mov var_68, 00000002h
008CCFF3: mov var_70, 00000002h
008CCFFA: lea eax, var_40
008CCFFD: push eax
008CCFFE: lea eax, var_70
008CD001: push eax
008CD002: mov eax, var_0000009C
008CD008: mov eax, [eax]
008CD00A: push var_0000009C
008CD010: call [eax+24h]
008CD013: fclex 
008CD015: mov var_000000A0, eax
008CD01B: cmp var_000000A0, 00000000h
008CD022: jnl 8CD044h
008CD024: push 00000024h
008CD026: push 0044A87Ch
008CD02B: push var_0000009C
008CD031: push var_000000A0
008CD037: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CD03C: mov var_000000C8, eax
008CD042: jmp 8CD04Bh
008CD044: and var_000000C8, 00000000h
008CD04B: mov eax, var_40
008CD04E: mov var_000000A4, eax
008CD054: mov eax, [ebp+08h]
008CD057: mov eax, [eax]
008CD059: push [ebp+08h]
008CD05C: call [eax+00000318h]
008CD062: push eax
008CD063: lea eax, var_30
008CD066: push eax
008CD067: call 00410A84h ; Set (object)
008CD06C: mov var_00000094, eax
008CD072: lea eax, var_34
008CD075: push eax
008CD076: mov eax, [ebp+0Ch]
008CD079: mov ax, [eax]
008CD07C: push eax
008CD07D: mov eax, var_00000094
008CD083: mov eax, [eax]
008CD085: push var_00000094
008CD08B: call [eax+40h]
008CD08E: fclex 
008CD090: mov var_00000098, eax
008CD096: cmp var_00000098, 00000000h
008CD09D: jnl 8CD0BFh
008CD09F: push 00000040h
008CD0A1: push 00440DE8h
008CD0A6: push var_00000094
008CD0AC: push var_00000098
008CD0B2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CD0B7: mov var_000000CC, eax
008CD0BD: jmp 8CD0C6h
008CD0BF: and var_000000CC, 00000000h
008CD0C6: push 00460D14h ; Remote IP:
008CD0CB: push 00000000h
008CD0CD: push 00000004h
008CD0CF: push var_34
008CD0D2: lea eax, var_50
008CD0D5: push eax
008CD0D6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CD0DB: add esp, 00000010h
008CD0DE: push eax
008CD0DF: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CD0E4: mov edx, eax
008CD0E6: lea ecx, var_28
008CD0E9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CD0EE: push eax
008CD0EF: call 00410A18h ; &
008CD0F4: mov edx, eax
008CD0F6: lea ecx, var_2C
008CD0F9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CD0FE: push eax
008CD0FF: mov eax, var_000000A4
008CD105: mov eax, [eax]
008CD107: push var_000000A4
008CD10D: call [eax+20h]
008CD110: fclex 
008CD112: mov var_000000A8, eax
008CD118: cmp var_000000A8, 00000000h
008CD11F: jnl 8CD141h
008CD121: push 00000020h
008CD123: push 0044A88Ch
008CD128: push var_000000A4
008CD12E: push var_000000A8
008CD134: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CD139: mov var_000000D0, eax
008CD13F: jmp 8CD148h
008CD141: and var_000000D0, 00000000h
008CD148: lea eax, var_2C
008CD14B: push eax
008CD14C: lea eax, var_28
008CD14F: push eax
008CD150: push 00000002h
008CD152: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CD157: add esp, 0000000Ch
008CD15A: lea eax, var_40
008CD15D: push eax
008CD15E: lea eax, var_3C
008CD161: push eax
008CD162: lea eax, var_38
008CD165: push eax
008CD166: lea eax, var_34
008CD169: push eax
008CD16A: lea eax, var_30
008CD16D: push eax
008CD16E: push 00000005h
008CD170: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CD175: add esp, 00000018h
008CD178: lea eax, var_70
008CD17B: push eax
008CD17C: lea eax, var_60
008CD17F: push eax
008CD180: lea eax, var_50
008CD183: push eax
008CD184: push 00000003h
008CD186: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CD18B: add esp, 00000010h
008CD18E: mov var_10, 00000000h
008CD195: push 008CD1EFh
008CD19A: jmp 8CD1E3h
008CD19C: lea eax, var_2C
008CD19F: push eax
008CD1A0: lea eax, var_28
008CD1A3: push eax
008CD1A4: push 00000002h
008CD1A6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CD1AB: add esp, 0000000Ch
008CD1AE: lea eax, var_40
008CD1B1: push eax
008CD1B2: lea eax, var_3C
008CD1B5: push eax
008CD1B6: lea eax, var_38
008CD1B9: push eax
008CD1BA: lea eax, var_34
008CD1BD: push eax
008CD1BE: lea eax, var_30
008CD1C1: push eax
008CD1C2: push 00000005h
008CD1C4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CD1C9: add esp, 00000018h
008CD1CC: lea eax, var_70
008CD1CF: push eax
008CD1D0: lea eax, var_60
008CD1D3: push eax
008CD1D4: lea eax, var_50
008CD1D7: push eax
008CD1D8: push 00000003h
008CD1DA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CD1DF: add esp, 00000010h
008CD1E2: ret 
End Sub

Private sub wsRemote__8CC45E
008CC45E: push ebp
008CC45F: mov ebp, esp
008CC461: sub esp, 0000000Ch
008CC464: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CC469: mov eax, fs:[00h]
008CC46F: push eax
008CC470: mov fs:[00000000h], esp
008CC477: mov eax, 000000D4h
008CC47C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CC481: push ebx
008CC482: push esi
008CC483: push edi
008CC484: mov var_0C, esp
008CC487: mov var_08, 0040F880h
008CC48E: mov eax, [ebp+08h]
008CC491: and eax, 00000001h
008CC494: mov var_04, eax
008CC497: mov eax, [ebp+08h]
008CC49A: and al, FEh
008CC49C: mov [ebp+08h], eax
008CC49F: mov eax, [ebp+08h]
008CC4A2: mov eax, [eax]
008CC4A4: push [ebp+08h]
008CC4A7: call [eax+04h]
008CC4AA: mov eax, [ebp+08h]
008CC4AD: mov eax, [eax]
008CC4AF: push [ebp+08h]
008CC4B2: call [eax+00000314h]
008CC4B8: push eax
008CC4B9: lea eax, var_2C
008CC4BC: push eax
008CC4BD: call 00410A84h ; Set (object)
008CC4C2: mov var_00000088, eax
008CC4C8: lea eax, var_80
008CC4CB: push eax
008CC4CC: mov eax, var_00000088
008CC4D2: mov eax, [eax]
008CC4D4: push var_00000088
008CC4DA: call [eax+48h]
008CC4DD: fclex 
008CC4DF: mov var_0000008C, eax
008CC4E5: cmp var_0000008C, 00000000h
008CC4EC: jnl 8CC50Eh
008CC4EE: push 00000048h
008CC4F0: push 00440DE8h
008CC4F5: push var_00000088
008CC4FB: push var_0000008C
008CC501: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CC506: mov var_000000B4, eax
008CC50C: jmp 8CC515h
008CC50E: and var_000000B4, 00000000h
008CC515: movsx eax, word ptr var_80
008CC519: mov var_000000A4, eax
008CC51F: mov var_000000A0, 00000001h
008CC529: mov var_18, 00000001h
008CC530: lea ecx, var_2C
008CC533: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008CC538: jmp 8CC54Ch
008CC53A: mov eax, var_18
008CC53D: add eax, var_000000A0
008CC543: jo 008CCDC4h
008CC549: mov var_18, eax
008CC54C: mov eax, var_18
008CC54F: cmp eax, var_000000A4
008CC555: jnle 008CC62Eh
008CC55B: mov eax, [ebp+08h]
008CC55E: mov eax, [eax]
008CC560: push [ebp+08h]
008CC563: call [eax+00000314h]
008CC569: push eax
008CC56A: lea eax, var_2C
008CC56D: push eax
008CC56E: call 00410A84h ; Set (object)
008CC573: mov var_00000088, eax
008CC579: lea eax, var_30
008CC57C: push eax
008CC57D: mov ecx, var_18
008CC580: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008CC585: push eax
008CC586: mov eax, var_00000088
008CC58C: mov eax, [eax]
008CC58E: push var_00000088
008CC594: call [eax+40h]
008CC597: fclex 
008CC599: mov var_0000008C, eax
008CC59F: cmp var_0000008C, 00000000h
008CC5A6: jnl 8CC5C8h
008CC5A8: push 00000040h
008CC5AA: push 00440DE8h
008CC5AF: push var_00000088
008CC5B5: push var_0000008C
008CC5BB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CC5C0: mov var_000000B8, eax
008CC5C6: jmp 8CC5CFh
008CC5C8: and var_000000B8, 00000000h
008CC5CF: push 00000000h
008CC5D1: push 00000008h
008CC5D3: push var_30
008CC5D6: lea eax, var_4C
008CC5D9: push eax
008CC5DA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CC5DF: add esp, 00000010h
008CC5E2: push eax
008CC5E3: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008CC5E8: movsx eax, ax
008CC5EB: xor ecx, ecx
008CC5ED: cmp eax, 00000007h
008CC5F0: setnz cl
008CC5F3: neg ecx
008CC5F5: mov var_00000090, cx
008CC5FC: lea eax, var_30
008CC5FF: push eax
008CC600: lea eax, var_2C
008CC603: push eax
008CC604: push 00000002h
008CC606: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CC60B: add esp, 0000000Ch
008CC60E: lea ecx, var_4C
008CC611: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008CC616: movsx eax, word ptr var_00000090
008CC61D: test eax, eax
008CC61F: jz 8CC629h
008CC621: mov eax, var_18
008CC624: mov var_1C, eax
008CC627: jmp 8CC62Eh
008CC629: jmp 008CC53Ah
008CC62E: cmp var_1C, 00000000h
008CC632: jnz 008CC7E7h
008CC638: mov eax, [ebp+08h]
008CC63B: mov eax, [eax]
008CC63D: push [ebp+08h]
008CC640: call [eax+00000314h]
008CC646: push eax
008CC647: lea eax, var_2C
008CC64A: push eax
008CC64B: call 00410A84h ; Set (object)
008CC650: mov var_00000088, eax
008CC656: lea eax, var_80
008CC659: push eax
008CC65A: mov eax, var_00000088
008CC660: mov eax, [eax]
008CC662: push var_00000088
008CC668: call [eax+48h]
008CC66B: fclex 
008CC66D: mov var_0000008C, eax
008CC673: cmp var_0000008C, 00000000h
008CC67A: jnl 8CC69Ch
008CC67C: push 00000048h
008CC67E: push 00440DE8h
008CC683: push var_00000088
008CC689: push var_0000008C
008CC68F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CC694: mov var_000000BC, eax
008CC69A: jmp 8CC6A3h
008CC69C: and var_000000BC, 00000000h
008CC6A3: mov ax, var_80
008CC6A7: add ax, 0001h
008CC6AB: jo 008CCDC4h
008CC6B1: movsx eax, ax
008CC6B4: mov var_1C, eax
008CC6B7: lea ecx, var_2C
008CC6BA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008CC6BF: cmp [008F529Ch], 00000000h
008CC6C6: jnz 8CC6E3h
008CC6C8: push 008F529Ch
008CC6CD: push 00440F2Ch
008CC6D2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008CC6D7: mov var_000000C0, 008F529Ch
008CC6E1: jmp 8CC6EDh
008CC6E3: mov var_000000C0, 008F529Ch
008CC6ED: mov eax, var_000000C0
008CC6F3: mov eax, [eax]
008CC6F5: mov var_00000090, eax
008CC6FB: mov eax, [ebp+08h]
008CC6FE: mov eax, [eax]
008CC700: push [ebp+08h]
008CC703: call [eax+00000314h]
008CC709: push eax
008CC70A: lea eax, var_2C
008CC70D: push eax
008CC70E: call 00410A84h ; Set (object)
008CC713: mov var_00000088, eax
008CC719: lea eax, var_30
008CC71C: push eax
008CC71D: mov ecx, var_1C
008CC720: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008CC725: push eax
008CC726: mov eax, var_00000088
008CC72C: mov eax, [eax]
008CC72E: push var_00000088
008CC734: call [eax+40h]
008CC737: fclex 
008CC739: mov var_0000008C, eax
008CC73F: cmp var_0000008C, 00000000h
008CC746: jnl 8CC768h
008CC748: push 00000040h
008CC74A: push 00440DE8h
008CC74F: push var_00000088
008CC755: push var_0000008C
008CC75B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CC760: mov var_000000C4, eax
008CC766: jmp 8CC76Fh
008CC768: and var_000000C4, 00000000h
008CC76F: mov eax, var_30
008CC772: mov var_000000B0, eax
008CC778: and var_30, 00000000h
008CC77C: push var_000000B0
008CC782: lea eax, var_34
008CC785: push eax
008CC786: call 00410A84h ; Set (object)
008CC78B: push eax
008CC78C: mov eax, var_00000090
008CC792: mov eax, [eax]
008CC794: push var_00000090
008CC79A: call [eax+0Ch]
008CC79D: fclex 
008CC79F: mov var_00000094, eax
008CC7A5: cmp var_00000094, 00000000h
008CC7AC: jnl 8CC7CEh
008CC7AE: push 0000000Ch
008CC7B0: push 00440F1Ch
008CC7B5: push var_00000090
008CC7BB: push var_00000094
008CC7C1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CC7C6: mov var_000000C8, eax
008CC7CC: jmp 8CC7D5h
008CC7CE: and var_000000C8, 00000000h
008CC7D5: lea eax, var_34
008CC7D8: push eax
008CC7D9: lea eax, var_2C
008CC7DC: push eax
008CC7DD: push 00000002h
008CC7DF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CC7E4: add esp, 0000000Ch
008CC7E7: mov eax, [ebp+08h]
008CC7EA: mov eax, [eax]
008CC7EC: push [ebp+08h]
008CC7EF: call [eax+00000314h]
008CC7F5: push eax
008CC7F6: lea eax, var_2C
008CC7F9: push eax
008CC7FA: call 00410A84h ; Set (object)
008CC7FF: mov var_00000088, eax
008CC805: lea eax, var_30
008CC808: push eax
008CC809: mov ecx, var_1C
008CC80C: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008CC811: push eax
008CC812: mov eax, var_00000088
008CC818: mov eax, [eax]
008CC81A: push var_00000088
008CC820: call [eax+40h]
008CC823: fclex 
008CC825: mov var_0000008C, eax
008CC82B: cmp var_0000008C, 00000000h
008CC832: jnl 8CC854h
008CC834: push 00000040h
008CC836: push 00440DE8h
008CC83B: push var_00000088
008CC841: push var_0000008C
008CC847: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CC84C: mov var_000000CC, eax
008CC852: jmp 8CC85Bh
008CC854: and var_000000CC, 00000000h
008CC85B: push 00000000h
008CC85D: push 00000046h
008CC85F: push var_30
008CC862: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CC867: add esp, 0000000Ch
008CC86A: lea eax, var_30
008CC86D: push eax
008CC86E: lea eax, var_2C
008CC871: push eax
008CC872: push 00000002h
008CC874: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CC879: add esp, 0000000Ch
008CC87C: lea eax, [ebp+10h]
008CC87F: mov var_74, eax
008CC882: mov var_7C, 00004003h
008CC889: mov eax, [ebp+08h]
008CC88C: mov eax, [eax]
008CC88E: push [ebp+08h]
008CC891: call [eax+00000314h]
008CC897: push eax
008CC898: lea eax, var_2C
008CC89B: push eax
008CC89C: call 00410A84h ; Set (object)
008CC8A1: mov var_00000088, eax
008CC8A7: lea eax, var_30
008CC8AA: push eax
008CC8AB: mov ecx, var_1C
008CC8AE: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008CC8B3: push eax
008CC8B4: mov eax, var_00000088
008CC8BA: mov eax, [eax]
008CC8BC: push var_00000088
008CC8C2: call [eax+40h]
008CC8C5: fclex 
008CC8C7: mov var_0000008C, eax
008CC8CD: cmp var_0000008C, 00000000h
008CC8D4: jnl 8CC8F6h
008CC8D6: push 00000040h
008CC8D8: push 00440DE8h
008CC8DD: push var_00000088
008CC8E3: push var_0000008C
008CC8E9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CC8EE: mov var_000000D0, eax
008CC8F4: jmp 8CC8FDh
008CC8F6: and var_000000D0, 00000000h
008CC8FD: push 00000010h
008CC8FF: pop eax
008CC900: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CC905: lea esi, var_7C
008CC908: mov edi, esp
008CC90A: movsd 
008CC90B: movsd 
008CC90C: movsd 
008CC90D: movsd 
008CC90E: push 00000001h
008CC910: push 00000042h
008CC912: push var_30
008CC915: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CC91A: add esp, 0000001Ch
008CC91D: lea eax, var_30
008CC920: push eax
008CC921: lea eax, var_2C
008CC924: push eax
008CC925: push 00000002h
008CC927: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CC92C: add esp, 0000000Ch
008CC92F: push 0044A87Ch
008CC934: push 00000000h
008CC936: push 00000003h
008CC938: mov eax, [ebp+08h]
008CC93B: mov eax, [eax]
008CC93D: push [ebp+08h]
008CC940: call [eax+00000328h]
008CC946: push eax
008CC947: lea eax, var_2C
008CC94A: push eax
008CC94B: call 00410A84h ; Set (object)
008CC950: push eax
008CC951: lea eax, var_4C
008CC954: push eax
008CC955: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CC95A: add esp, 00000010h
008CC95D: push eax
008CC95E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CC963: push eax
008CC964: lea eax, var_30
008CC967: push eax
008CC968: call 00410A84h ; Set (object)
008CC96D: mov var_00000088, eax
008CC973: mov var_54, 00000001h
008CC97A: mov var_5C, 00000002h
008CC981: lea eax, var_34
008CC984: push eax
008CC985: lea eax, var_5C
008CC988: push eax
008CC989: mov eax, var_00000088
008CC98F: mov eax, [eax]
008CC991: push var_00000088
008CC997: call [eax+24h]
008CC99A: fclex 
008CC99C: mov var_0000008C, eax
008CC9A2: cmp var_0000008C, 00000000h
008CC9A9: jnl 8CC9CBh
008CC9AB: push 00000024h
008CC9AD: push 0044A87Ch
008CC9B2: push var_00000088
008CC9B8: push var_0000008C
008CC9BE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CC9C3: mov var_000000D4, eax
008CC9C9: jmp 8CC9D2h
008CC9CB: and var_000000D4, 00000000h
008CC9D2: mov eax, var_34
008CC9D5: mov var_00000090, eax
008CC9DB: push 00460CE8h ; Status: Connected!
008CC9E0: mov eax, var_00000090
008CC9E6: mov eax, [eax]
008CC9E8: push var_00000090
008CC9EE: call [eax+20h]
008CC9F1: fclex 
008CC9F3: mov var_00000094, eax
008CC9F9: cmp var_00000094, 00000000h
008CCA00: jnl 8CCA22h
008CCA02: push 00000020h
008CCA04: push 0044A88Ch
008CCA09: push var_00000090
008CCA0F: push var_00000094
008CCA15: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CCA1A: mov var_000000D8, eax
008CCA20: jmp 8CCA29h
008CCA22: and var_000000D8, 00000000h
008CCA29: lea eax, var_34
008CCA2C: push eax
008CCA2D: lea eax, var_30
008CCA30: push eax
008CCA31: lea eax, var_2C
008CCA34: push eax
008CCA35: push 00000003h
008CCA37: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CCA3C: add esp, 00000010h
008CCA3F: lea eax, var_5C
008CCA42: push eax
008CCA43: lea eax, var_4C
008CCA46: push eax
008CCA47: push 00000002h
008CCA49: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CCA4E: add esp, 0000000Ch
008CCA51: push 0044A87Ch
008CCA56: push 00000000h
008CCA58: push 00000003h
008CCA5A: mov eax, [ebp+08h]
008CCA5D: mov eax, [eax]
008CCA5F: push [ebp+08h]
008CCA62: call [eax+00000328h]
008CCA68: push eax
008CCA69: lea eax, var_34
008CCA6C: push eax
008CCA6D: call 00410A84h ; Set (object)
008CCA72: push eax
008CCA73: lea eax, var_5C
008CCA76: push eax
008CCA77: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CCA7C: add esp, 00000010h
008CCA7F: push eax
008CCA80: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CCA85: push eax
008CCA86: lea eax, var_38
008CCA89: push eax
008CCA8A: call 00410A84h ; Set (object)
008CCA8F: mov var_00000090, eax
008CCA95: mov var_64, 00000002h
008CCA9C: mov var_6C, 00000002h
008CCAA3: lea eax, var_3C
008CCAA6: push eax
008CCAA7: lea eax, var_6C
008CCAAA: push eax
008CCAAB: mov eax, var_00000090
008CCAB1: mov eax, [eax]
008CCAB3: push var_00000090
008CCAB9: call [eax+24h]
008CCABC: fclex 
008CCABE: mov var_00000094, eax
008CCAC4: cmp var_00000094, 00000000h
008CCACB: jnl 8CCAEDh
008CCACD: push 00000024h
008CCACF: push 0044A87Ch
008CCAD4: push var_00000090
008CCADA: push var_00000094
008CCAE0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CCAE5: mov var_000000DC, eax
008CCAEB: jmp 8CCAF4h
008CCAED: and var_000000DC, 00000000h
008CCAF4: mov eax, var_3C
008CCAF7: mov var_00000098, eax
008CCAFD: mov eax, [ebp+08h]
008CCB00: mov eax, [eax]
008CCB02: push [ebp+08h]
008CCB05: call [eax+00000318h]
008CCB0B: push eax
008CCB0C: lea eax, var_2C
008CCB0F: push eax
008CCB10: call 00410A84h ; Set (object)
008CCB15: mov var_00000088, eax
008CCB1B: lea eax, var_30
008CCB1E: push eax
008CCB1F: mov eax, [ebp+0Ch]
008CCB22: mov ax, [eax]
008CCB25: push eax
008CCB26: mov eax, var_00000088
008CCB2C: mov eax, [eax]
008CCB2E: push var_00000088
008CCB34: call [eax+40h]
008CCB37: fclex 
008CCB39: mov var_0000008C, eax
008CCB3F: cmp var_0000008C, 00000000h
008CCB46: jnl 8CCB68h
008CCB48: push 00000040h
008CCB4A: push 00440DE8h
008CCB4F: push var_00000088
008CCB55: push var_0000008C
008CCB5B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CCB60: mov var_000000E0, eax
008CCB66: jmp 8CCB6Fh
008CCB68: and var_000000E0, 00000000h
008CCB6F: push 00460D14h ; Remote IP:
008CCB74: push 00000000h
008CCB76: push 00000004h
008CCB78: push var_30
008CCB7B: lea eax, var_4C
008CCB7E: push eax
008CCB7F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CCB84: add esp, 00000010h
008CCB87: push eax
008CCB88: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CCB8D: mov edx, eax
008CCB8F: lea ecx, var_20
008CCB92: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CCB97: push eax
008CCB98: call 00410A18h ; &
008CCB9D: mov edx, eax
008CCB9F: lea ecx, var_24
008CCBA2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CCBA7: push eax
008CCBA8: mov eax, var_00000098
008CCBAE: mov eax, [eax]
008CCBB0: push var_00000098
008CCBB6: call [eax+20h]
008CCBB9: fclex 
008CCBBB: mov var_0000009C, eax
008CCBC1: cmp var_0000009C, 00000000h
008CCBC8: jnl 8CCBEAh
008CCBCA: push 00000020h
008CCBCC: push 0044A88Ch
008CCBD1: push var_00000098
008CCBD7: push var_0000009C
008CCBDD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CCBE2: mov var_000000E4, eax
008CCBE8: jmp 8CCBF1h
008CCBEA: and var_000000E4, 00000000h
008CCBF1: lea eax, var_24
008CCBF4: push eax
008CCBF5: lea eax, var_20
008CCBF8: push eax
008CCBF9: push 00000002h
008CCBFB: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CCC00: add esp, 0000000Ch
008CCC03: lea eax, var_3C
008CCC06: push eax
008CCC07: lea eax, var_38
008CCC0A: push eax
008CCC0B: lea eax, var_34
008CCC0E: push eax
008CCC0F: lea eax, var_30
008CCC12: push eax
008CCC13: lea eax, var_2C
008CCC16: push eax
008CCC17: push 00000005h
008CCC19: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CCC1E: add esp, 00000018h
008CCC21: lea eax, var_6C
008CCC24: push eax
008CCC25: lea eax, var_5C
008CCC28: push eax
008CCC29: lea eax, var_4C
008CCC2C: push eax
008CCC2D: push 00000003h
008CCC2F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CCC34: add esp, 00000010h
008CCC37: mov eax, [ebp+08h]
008CCC3A: mov eax, [eax]
008CCC3C: push [ebp+08h]
008CCC3F: call [eax+00000318h]
008CCC45: push eax
008CCC46: lea eax, var_2C
008CCC49: push eax
008CCC4A: call 00410A84h ; Set (object)
008CCC4F: mov var_00000088, eax
008CCC55: lea eax, var_30
008CCC58: push eax
008CCC59: mov eax, [ebp+0Ch]
008CCC5C: mov ax, [eax]
008CCC5F: push eax
008CCC60: mov eax, var_00000088
008CCC66: mov eax, [eax]
008CCC68: push var_00000088
008CCC6E: call [eax+40h]
008CCC71: fclex 
008CCC73: mov var_0000008C, eax
008CCC79: cmp var_0000008C, 00000000h
008CCC80: jnl 8CCCA2h
008CCC82: push 00000040h
008CCC84: push 00440DE8h
008CCC89: push var_00000088
008CCC8F: push var_0000008C
008CCC95: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CCC9A: mov var_000000E8, eax
008CCCA0: jmp 8CCCA9h
008CCCA2: and var_000000E8, 00000000h
008CCCA9: push 00000000h
008CCCAB: push 00000004h
008CCCAD: push var_30
008CCCB0: lea eax, var_4C
008CCCB3: push eax
008CCCB4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CCCB9: add esp, 00000010h
008CCCBC: and var_00000084, 00000000h
008CCCC3: lea eax, var_00000084
008CCCC9: push eax
008CCCCA: push 00460D30h ; New connection [
008CCCCF: lea eax, var_4C
008CCCD2: push eax
008CCCD3: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CCCD8: mov edx, eax
008CCCDA: lea ecx, var_20
008CCCDD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CCCE2: push eax
008CCCE3: call 00410A18h ; &
008CCCE8: mov edx, eax
008CCCEA: lea ecx, var_24
008CCCED: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CCCF2: push eax
008CCCF3: push 004496F0h
008CCCF8: call 00410A18h ; &
008CCCFD: mov edx, eax
008CCCFF: lea ecx, var_28
008CCD02: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CCD07: push eax
008CCD08: push 00460BE0h ; Daemon
008CCD0D: mov eax, [ebp+08h]
008CCD10: mov eax, [eax]
008CCD12: push [ebp+08h]
008CCD15: call [eax+00000700h]
008CCD1B: lea eax, var_28
008CCD1E: push eax
008CCD1F: lea eax, var_24
008CCD22: push eax
008CCD23: lea eax, var_20
008CCD26: push eax
008CCD27: push 00000003h
008CCD29: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CCD2E: add esp, 00000010h
008CCD31: lea eax, var_30
008CCD34: push eax
008CCD35: lea eax, var_2C
008CCD38: push eax
008CCD39: push 00000002h
008CCD3B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CCD40: add esp, 0000000Ch
008CCD43: lea ecx, var_4C
008CCD46: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008CCD4B: mov var_04, 00000000h
008CCD52: push 008CCDA5h
008CCD57: jmp 8CCDA4h
008CCD59: lea eax, var_28
008CCD5C: push eax
008CCD5D: lea eax, var_24
008CCD60: push eax
008CCD61: lea eax, var_20
008CCD64: push eax
008CCD65: push 00000003h
008CCD67: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CCD6C: add esp, 00000010h
008CCD6F: lea eax, var_3C
008CCD72: push eax
008CCD73: lea eax, var_38
008CCD76: push eax
008CCD77: lea eax, var_34
008CCD7A: push eax
008CCD7B: lea eax, var_30
008CCD7E: push eax
008CCD7F: lea eax, var_2C
008CCD82: push eax
008CCD83: push 00000005h
008CCD85: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CCD8A: add esp, 00000018h
008CCD8D: lea eax, var_6C
008CCD90: push eax
008CCD91: lea eax, var_5C
008CCD94: push eax
008CCD95: lea eax, var_4C
008CCD98: push eax
008CCD99: push 00000003h
008CCD9B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CCDA0: add esp, 00000010h
008CCDA3: ret 
End Sub

Private sub wsRemote__8CC2A4
008CC2A4: push ebp
008CC2A5: mov ebp, esp
008CC2A7: sub esp, 00000018h
008CC2AA: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CC2AF: mov eax, fs:[00h]
008CC2B5: push eax
008CC2B6: mov fs:[00000000h], esp
008CC2BD: push 0000002Ch
008CC2BF: pop eax
008CC2C0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CC2C5: push ebx
008CC2C6: push esi
008CC2C7: push edi
008CC2C8: mov var_18, esp
008CC2CB: mov var_14, 0040F840h
008CC2D2: mov eax, [ebp+08h]
008CC2D5: and eax, 00000001h
008CC2D8: mov var_10, eax
008CC2DB: mov eax, [ebp+08h]
008CC2DE: and al, FEh
008CC2E0: mov [ebp+08h], eax
008CC2E3: mov var_0C, 00000000h
008CC2EA: mov eax, [ebp+08h]
008CC2ED: mov eax, [eax]
008CC2EF: push [ebp+08h]
008CC2F2: call [eax+04h]
008CC2F5: mov var_04, 00000001h
008CC2FC: mov var_04, 00000002h
008CC303: push FFFFFFFFh
008CC305: call 00410A60h ; On Error ...
008CC30A: mov var_04, 00000003h
008CC311: mov eax, [ebp+0Ch]
008CC314: movsx eax, word ptr [eax]
008CC317: test eax, eax
008CC319: jz 008CC41Dh
008CC31F: mov var_04, 00000004h
008CC326: mov eax, [ebp+08h]
008CC329: mov eax, [eax]
008CC32B: push [ebp+08h]
008CC32E: call [eax+00000314h]
008CC334: push eax
008CC335: lea eax, var_24
008CC338: push eax
008CC339: call 00410A84h ; Set (object)
008CC33E: mov var_2C, eax
008CC341: lea eax, var_28
008CC344: push eax
008CC345: mov eax, [ebp+0Ch]
008CC348: mov ax, [eax]
008CC34B: push eax
008CC34C: mov eax, var_2C
008CC34F: mov eax, [eax]
008CC351: push var_2C
008CC354: call [eax+40h]
008CC357: fclex 
008CC359: mov var_30, eax
008CC35C: cmp var_30, 00000000h
008CC360: jnl 8CC379h
008CC362: push 00000040h
008CC364: push 00440DE8h
008CC369: push var_2C
008CC36C: push var_30
008CC36F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CC374: mov var_48, eax
008CC377: jmp 8CC37Dh
008CC379: and var_48, 00000000h
008CC37D: push 00000000h
008CC37F: push 00000046h
008CC381: push var_28
008CC384: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CC389: add esp, 0000000Ch
008CC38C: lea eax, var_28
008CC38F: push eax
008CC390: lea eax, var_24
008CC393: push eax
008CC394: push 00000002h
008CC396: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CC39B: add esp, 0000000Ch
008CC39E: mov var_04, 00000005h
008CC3A5: mov eax, [ebp+08h]
008CC3A8: mov eax, [eax]
008CC3AA: push [ebp+08h]
008CC3AD: call [eax+00000318h]
008CC3B3: push eax
008CC3B4: lea eax, var_24
008CC3B7: push eax
008CC3B8: call 00410A84h ; Set (object)
008CC3BD: mov var_2C, eax
008CC3C0: lea eax, var_28
008CC3C3: push eax
008CC3C4: mov eax, [ebp+0Ch]
008CC3C7: mov ax, [eax]
008CC3CA: push eax
008CC3CB: mov eax, var_2C
008CC3CE: mov eax, [eax]
008CC3D0: push var_2C
008CC3D3: call [eax+40h]
008CC3D6: fclex 
008CC3D8: mov var_30, eax
008CC3DB: cmp var_30, 00000000h
008CC3DF: jnl 8CC3F8h
008CC3E1: push 00000040h
008CC3E3: push 00440DE8h
008CC3E8: push var_2C
008CC3EB: push var_30
008CC3EE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CC3F3: mov var_4C, eax
008CC3F6: jmp 8CC3FCh
008CC3F8: and var_4C, 00000000h
008CC3FC: push 00000000h
008CC3FE: push 00000046h
008CC400: push var_28
008CC403: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CC408: add esp, 0000000Ch
008CC40B: lea eax, var_28
008CC40E: push eax
008CC40F: lea eax, var_24
008CC412: push eax
008CC413: push 00000002h
008CC415: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CC41A: add esp, 0000000Ch
008CC41D: mov var_10, 00000000h
008CC424: push 008CC43Fh
008CC429: jmp 8CC43Eh
008CC42B: lea eax, var_28
008CC42E: push eax
008CC42F: lea eax, var_24
008CC432: push eax
008CC433: push 00000002h
008CC435: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CC43A: add esp, 0000000Ch
008CC43D: ret 
End Sub

Private sub wsBrowser__8CC0C4
008CC0C4: push ebp
008CC0C5: mov ebp, esp
008CC0C7: sub esp, 00000018h
008CC0CA: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CC0CF: mov eax, fs:[00h]
008CC0D5: push eax
008CC0D6: mov fs:[00000000h], esp
008CC0DD: push 00000034h
008CC0DF: pop eax
008CC0E0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CC0E5: push ebx
008CC0E6: push esi
008CC0E7: push edi
008CC0E8: mov var_18, esp
008CC0EB: mov var_14, 0040F800h
008CC0F2: mov eax, [ebp+08h]
008CC0F5: and eax, 00000001h
008CC0F8: mov var_10, eax
008CC0FB: mov eax, [ebp+08h]
008CC0FE: and al, FEh
008CC100: mov [ebp+08h], eax
008CC103: mov var_0C, 00000000h
008CC10A: mov eax, [ebp+08h]
008CC10D: mov eax, [eax]
008CC10F: push [ebp+08h]
008CC112: call [eax+04h]
008CC115: mov var_04, 00000001h
008CC11C: mov edx, [ebp+1Ch]
008CC11F: lea ecx, var_28
008CC122: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008CC127: mov edx, [ebp+20h]
008CC12A: lea ecx, var_24
008CC12D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008CC132: mov var_04, 00000002h
008CC139: push FFFFFFFFh
008CC13B: call 00410A60h ; On Error ...
008CC140: mov var_04, 00000003h
008CC147: mov eax, [ebp+0Ch]
008CC14A: movsx eax, word ptr [eax]
008CC14D: test eax, eax
008CC14F: jz 008CC253h
008CC155: mov var_04, 00000004h
008CC15C: mov eax, [ebp+08h]
008CC15F: mov eax, [eax]
008CC161: push [ebp+08h]
008CC164: call [eax+00000318h]
008CC16A: push eax
008CC16B: lea eax, var_2C
008CC16E: push eax
008CC16F: call 00410A84h ; Set (object)
008CC174: mov var_34, eax
008CC177: lea eax, var_30
008CC17A: push eax
008CC17B: mov eax, [ebp+0Ch]
008CC17E: mov ax, [eax]
008CC181: push eax
008CC182: mov eax, var_34
008CC185: mov eax, [eax]
008CC187: push var_34
008CC18A: call [eax+40h]
008CC18D: fclex 
008CC18F: mov var_38, eax
008CC192: cmp var_38, 00000000h
008CC196: jnl 8CC1AFh
008CC198: push 00000040h
008CC19A: push 00440DE8h
008CC19F: push var_34
008CC1A2: push var_38
008CC1A5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CC1AA: mov var_50, eax
008CC1AD: jmp 8CC1B3h
008CC1AF: and var_50, 00000000h
008CC1B3: push 00000000h
008CC1B5: push 00000046h
008CC1B7: push var_30
008CC1BA: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CC1BF: add esp, 0000000Ch
008CC1C2: lea eax, var_30
008CC1C5: push eax
008CC1C6: lea eax, var_2C
008CC1C9: push eax
008CC1CA: push 00000002h
008CC1CC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CC1D1: add esp, 0000000Ch
008CC1D4: mov var_04, 00000005h
008CC1DB: mov eax, [ebp+08h]
008CC1DE: mov eax, [eax]
008CC1E0: push [ebp+08h]
008CC1E3: call [eax+00000314h]
008CC1E9: push eax
008CC1EA: lea eax, var_2C
008CC1ED: push eax
008CC1EE: call 00410A84h ; Set (object)
008CC1F3: mov var_34, eax
008CC1F6: lea eax, var_30
008CC1F9: push eax
008CC1FA: mov eax, [ebp+0Ch]
008CC1FD: mov ax, [eax]
008CC200: push eax
008CC201: mov eax, var_34
008CC204: mov eax, [eax]
008CC206: push var_34
008CC209: call [eax+40h]
008CC20C: fclex 
008CC20E: mov var_38, eax
008CC211: cmp var_38, 00000000h
008CC215: jnl 8CC22Eh
008CC217: push 00000040h
008CC219: push 00440DE8h
008CC21E: push var_34
008CC221: push var_38
008CC224: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CC229: mov var_54, eax
008CC22C: jmp 8CC232h
008CC22E: and var_54, 00000000h
008CC232: push 00000000h
008CC234: push 00000046h
008CC236: push var_30
008CC239: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CC23E: add esp, 0000000Ch
008CC241: lea eax, var_30
008CC244: push eax
008CC245: lea eax, var_2C
008CC248: push eax
008CC249: push 00000002h
008CC24B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CC250: add esp, 0000000Ch
008CC253: mov var_10, 00000000h
008CC25A: push 008CC285h
008CC25F: jmp 8CC274h
008CC261: lea eax, var_30
008CC264: push eax
008CC265: lea eax, var_2C
008CC268: push eax
008CC269: push 00000002h
008CC26B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CC270: add esp, 0000000Ch
008CC273: ret 
End Sub

Private sub wsBrowser__8CB8BC
008CB8BC: push ebp
008CB8BD: mov ebp, esp
008CB8BF: sub esp, 00000018h
008CB8C2: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CB8C7: mov eax, fs:[00h]
008CB8CD: push eax
008CB8CE: mov fs:[00000000h], esp
008CB8D5: mov eax, 00000108h
008CB8DA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CB8DF: push ebx
008CB8E0: push esi
008CB8E1: push edi
008CB8E2: mov var_18, esp
008CB8E5: mov var_14, 0040F780h
008CB8EC: mov eax, [ebp+08h]
008CB8EF: and eax, 00000001h
008CB8F2: mov var_10, eax
008CB8F5: mov eax, [ebp+08h]
008CB8F8: and al, FEh
008CB8FA: mov [ebp+08h], eax
008CB8FD: mov var_0C, 00000000h
008CB904: mov eax, [ebp+08h]
008CB907: mov eax, [eax]
008CB909: push [ebp+08h]
008CB90C: call [eax+04h]
008CB90F: mov var_04, 00000001h
008CB916: mov var_04, 00000002h
008CB91D: push FFFFFFFFh
008CB91F: call 00410A60h ; On Error ...
008CB924: mov var_04, 00000003h
008CB92B: lea eax, var_24
008CB92E: mov var_000000E0, eax
008CB934: mov var_000000E8, 00006011h
008CB93E: mov eax, [ebp+08h]
008CB941: mov eax, [eax]
008CB943: push [ebp+08h]
008CB946: call [eax+00000318h]
008CB94C: push eax
008CB94D: lea eax, var_64
008CB950: push eax
008CB951: call 00410A84h ; Set (object)
008CB956: mov var_00000100, eax
008CB95C: lea eax, var_68
008CB95F: push eax
008CB960: mov eax, [ebp+0Ch]
008CB963: mov ax, [eax]
008CB966: push eax
008CB967: mov eax, var_00000100
008CB96D: mov eax, [eax]
008CB96F: push var_00000100
008CB975: call [eax+40h]
008CB978: fclex 
008CB97A: mov var_00000104, eax
008CB980: cmp var_00000104, 00000000h
008CB987: jnl 8CB9A9h
008CB989: push 00000040h
008CB98B: push 00440DE8h
008CB990: push var_00000100
008CB996: push var_00000104
008CB99C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CB9A1: mov var_00000120, eax
008CB9A7: jmp 8CB9B0h
008CB9A9: and var_00000120, 00000000h
008CB9B0: push 00000010h
008CB9B2: pop eax
008CB9B3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CB9B8: lea esi, var_000000E8
008CB9BE: mov edi, esp
008CB9C0: movsd 
008CB9C1: movsd 
008CB9C2: movsd 
008CB9C3: movsd 
008CB9C4: push 00000001h
008CB9C6: push 00000044h
008CB9C8: push var_68
008CB9CB: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CB9D0: add esp, 0000001Ch
008CB9D3: lea eax, var_68
008CB9D6: push eax
008CB9D7: lea eax, var_64
008CB9DA: push eax
008CB9DB: push 00000002h
008CB9DD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CB9E2: add esp, 0000000Ch
008CB9E5: mov var_04, 00000004h
008CB9EC: push 00000000h
008CB9EE: push var_24
008CB9F1: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008CB9F6: movzx eax, byte ptr [eax]
008CB9F9: push eax
008CB9FA: lea eax, var_78
008CB9FD: push eax
008CB9FE: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
008CBA03: push 00000004h
008CBA05: lea eax, var_00000088
008CBA0B: push eax
008CBA0C: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
008CBA11: push 00000001h
008CBA13: push var_24
008CBA16: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008CBA1B: movzx eax, byte ptr [eax]
008CBA1E: push eax
008CBA1F: lea eax, var_000000A8
008CBA25: push eax
008CBA26: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
008CBA2B: push 00000001h
008CBA2D: lea eax, var_000000B8
008CBA33: push eax
008CBA34: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
008CBA39: lea eax, var_78
008CBA3C: push eax
008CBA3D: lea eax, var_00000088
008CBA43: push eax
008CBA44: lea eax, var_00000098
008CBA4A: push eax
008CBA4B: call 00410766h ; msvbvm60.dll.__vbaVarCmpEq
008CBA50: push eax
008CBA51: lea eax, var_000000A8
008CBA57: push eax
008CBA58: lea eax, var_000000B8
008CBA5E: push eax
008CBA5F: lea eax, var_000000C8
008CBA65: push eax
008CBA66: call 00410766h ; msvbvm60.dll.__vbaVarCmpEq
008CBA6B: push eax
008CBA6C: lea eax, var_000000D8
008CBA72: push eax
008CBA73: call 0041090Ah ; And
008CBA78: push eax
008CBA79: call 00410910h ; msvbvm60.dll.__vbaBoolVarNull
008CBA7E: mov var_00000100, ax
008CBA85: lea eax, var_000000B8
008CBA8B: push eax
008CBA8C: lea eax, var_000000A8
008CBA92: push eax
008CBA93: lea eax, var_00000088
008CBA99: push eax
008CBA9A: lea eax, var_78
008CBA9D: push eax
008CBA9E: push 00000004h
008CBAA0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CBAA5: add esp, 00000014h
008CBAA8: movsx eax, word ptr var_00000100
008CBAAF: test eax, eax
008CBAB1: jz 008CBCE7h
008CBAB7: mov var_04, 00000005h
008CBABE: lea eax, var_000000FC
008CBAC4: push eax
008CBAC5: push 00000002h
008CBAC7: push var_24
008CBACA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008CBACF: mov al, [eax]
008CBAD1: push eax
008CBAD2: call 004108ECh ; msvbvm60.dll.__vbaStrUI1
008CBAD7: mov edx, eax
008CBAD9: lea ecx, var_2C
008CBADC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBAE1: push eax
008CBAE2: push 00000003h
008CBAE4: push var_24
008CBAE7: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008CBAEC: mov al, [eax]
008CBAEE: push eax
008CBAEF: call 004108ECh ; msvbvm60.dll.__vbaStrUI1
008CBAF4: mov edx, eax
008CBAF6: lea ecx, var_30
008CBAF9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBAFE: push eax
008CBAFF: call 00410A18h ; &
008CBB04: mov edx, eax
008CBB06: lea ecx, var_34
008CBB09: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBB0E: push eax
008CBB0F: mov eax, [ebp+08h]
008CBB12: mov eax, [eax]
008CBB14: push [ebp+08h]
008CBB17: call [eax+0000072Ch]
008CBB1D: mov eax, var_000000FC
008CBB23: mov var_28, eax
008CBB26: lea eax, var_34
008CBB29: push eax
008CBB2A: lea eax, var_30
008CBB2D: push eax
008CBB2E: lea eax, var_2C
008CBB31: push eax
008CBB32: push 00000003h
008CBB34: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CBB39: add esp, 00000010h
008CBB3C: mov var_04, 00000006h
008CBB43: cmp var_28, 00000000h
008CBB47: jz 008CBCE7h
008CBB4D: mov var_04, 00000007h
008CBB54: and var_000000FC, 00000000h
008CBB5B: lea eax, var_000000FC
008CBB61: push eax
008CBB62: push 00460CB8h ; Outgoing connection:
008CBB67: push 00000004h
008CBB69: push var_24
008CBB6C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008CBB71: mov al, [eax]
008CBB73: push eax
008CBB74: call 004108ECh ; msvbvm60.dll.__vbaStrUI1
008CBB79: mov edx, eax
008CBB7B: lea ecx, var_2C
008CBB7E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBB83: push eax
008CBB84: call 00410A18h ; &
008CBB89: mov edx, eax
008CBB8B: lea ecx, var_30
008CBB8E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBB93: push eax
008CBB94: push 00445638h
008CBB99: call 00410A18h ; &
008CBB9E: mov edx, eax
008CBBA0: lea ecx, var_34
008CBBA3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBBA8: push eax
008CBBA9: push 00000005h
008CBBAB: push var_24
008CBBAE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008CBBB3: mov al, [eax]
008CBBB5: push eax
008CBBB6: call 004108ECh ; msvbvm60.dll.__vbaStrUI1
008CBBBB: mov edx, eax
008CBBBD: lea ecx, var_38
008CBBC0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBBC5: push eax
008CBBC6: call 00410A18h ; &
008CBBCB: mov edx, eax
008CBBCD: lea ecx, var_3C
008CBBD0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBBD5: push eax
008CBBD6: push 00445638h
008CBBDB: call 00410A18h ; &
008CBBE0: mov edx, eax
008CBBE2: lea ecx, var_40
008CBBE5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBBEA: push eax
008CBBEB: push 00000006h
008CBBED: push var_24
008CBBF0: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008CBBF5: mov al, [eax]
008CBBF7: push eax
008CBBF8: call 004108ECh ; msvbvm60.dll.__vbaStrUI1
008CBBFD: mov edx, eax
008CBBFF: lea ecx, var_44
008CBC02: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBC07: push eax
008CBC08: call 00410A18h ; &
008CBC0D: mov edx, eax
008CBC0F: lea ecx, var_48
008CBC12: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBC17: push eax
008CBC18: push 00445638h
008CBC1D: call 00410A18h ; &
008CBC22: mov edx, eax
008CBC24: lea ecx, var_4C
008CBC27: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBC2C: push eax
008CBC2D: push 00000007h
008CBC2F: push var_24
008CBC32: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008CBC37: mov al, [eax]
008CBC39: push eax
008CBC3A: call 004108ECh ; msvbvm60.dll.__vbaStrUI1
008CBC3F: mov edx, eax
008CBC41: lea ecx, var_50
008CBC44: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBC49: push eax
008CBC4A: call 00410A18h ; &
008CBC4F: mov edx, eax
008CBC51: lea ecx, var_54
008CBC54: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBC59: push eax
008CBC5A: push 004412B8h
008CBC5F: call 00410A18h ; &
008CBC64: mov edx, eax
008CBC66: lea ecx, var_58
008CBC69: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBC6E: push eax
008CBC6F: push var_28
008CBC72: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008CBC77: mov edx, eax
008CBC79: lea ecx, var_5C
008CBC7C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBC81: push eax
008CBC82: call 00410A18h ; &
008CBC87: mov edx, eax
008CBC89: lea ecx, var_60
008CBC8C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CBC91: push eax
008CBC92: push 00460BA0h ; Browser
008CBC97: mov eax, [ebp+08h]
008CBC9A: mov eax, [eax]
008CBC9C: push [ebp+08h]
008CBC9F: call [eax+00000700h]
008CBCA5: lea eax, var_60
008CBCA8: push eax
008CBCA9: lea eax, var_5C
008CBCAC: push eax
008CBCAD: lea eax, var_58
008CBCB0: push eax
008CBCB1: lea eax, var_54
008CBCB4: push eax
008CBCB5: lea eax, var_50
008CBCB8: push eax
008CBCB9: lea eax, var_4C
008CBCBC: push eax
008CBCBD: lea eax, var_48
008CBCC0: push eax
008CBCC1: lea eax, var_44
008CBCC4: push eax
008CBCC5: lea eax, var_40
008CBCC8: push eax
008CBCC9: lea eax, var_3C
008CBCCC: push eax
008CBCCD: lea eax, var_38
008CBCD0: push eax
008CBCD1: lea eax, var_34
008CBCD4: push eax
008CBCD5: lea eax, var_30
008CBCD8: push eax
008CBCD9: lea eax, var_2C
008CBCDC: push eax
008CBCDD: push 0000000Eh
008CBCDF: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CBCE4: add esp, 0000003Ch
008CBCE7: mov var_04, 0000000Ah
008CBCEE: mov eax, [ebp+08h]
008CBCF1: mov eax, [eax]
008CBCF3: push [ebp+08h]
008CBCF6: call [eax+00000314h]
008CBCFC: push eax
008CBCFD: lea eax, var_64
008CBD00: push eax
008CBD01: call 00410A84h ; Set (object)
008CBD06: mov var_00000100, eax
008CBD0C: lea eax, var_68
008CBD0F: push eax
008CBD10: mov eax, [ebp+0Ch]
008CBD13: mov ax, [eax]
008CBD16: push eax
008CBD17: mov eax, var_00000100
008CBD1D: mov eax, [eax]
008CBD1F: push var_00000100
008CBD25: call [eax+40h]
008CBD28: fclex 
008CBD2A: mov var_00000104, eax
008CBD30: cmp var_00000104, 00000000h
008CBD37: jnl 8CBD59h
008CBD39: push 00000040h
008CBD3B: push 00440DE8h
008CBD40: push var_00000100
008CBD46: push var_00000104
008CBD4C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CBD51: mov var_00000124, eax
008CBD57: jmp 8CBD60h
008CBD59: and var_00000124, 00000000h
008CBD60: push 00000000h
008CBD62: push 00000008h
008CBD64: push var_68
008CBD67: lea eax, var_78
008CBD6A: push eax
008CBD6B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CBD70: add esp, 00000010h
008CBD73: push eax
008CBD74: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008CBD79: xor ecx, ecx
008CBD7B: cmp ax, 0007h
008CBD7F: setnz cl
008CBD82: neg ecx
008CBD84: mov var_00000108, cx
008CBD8B: lea eax, var_68
008CBD8E: push eax
008CBD8F: lea eax, var_64
008CBD92: push eax
008CBD93: push 00000002h
008CBD95: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CBD9A: add esp, 0000000Ch
008CBD9D: lea ecx, var_78
008CBDA0: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008CBDA5: movsx eax, word ptr var_00000108
008CBDAC: test eax, eax
008CBDAE: jz 8CBDC1h
008CBDB0: mov var_04, 0000000Bh
008CBDB7: call 0041096Ah ; DoEvents
008CBDBC: jmp 008CBCE7h
008CBDC1: mov var_04, 0000000Dh
008CBDC8: mov eax, var_24
008CBDCB: mov var_000000E0, eax
008CBDD1: mov var_000000E8, 00002011h
008CBDDB: mov eax, [ebp+08h]
008CBDDE: mov eax, [eax]
008CBDE0: push [ebp+08h]
008CBDE3: call [eax+00000314h]
008CBDE9: push eax
008CBDEA: lea eax, var_64
008CBDED: push eax
008CBDEE: call 00410A84h ; Set (object)
008CBDF3: mov var_00000100, eax
008CBDF9: lea eax, var_68
008CBDFC: push eax
008CBDFD: mov eax, [ebp+0Ch]
008CBE00: mov ax, [eax]
008CBE03: push eax
008CBE04: mov eax, var_00000100
008CBE0A: mov eax, [eax]
008CBE0C: push var_00000100
008CBE12: call [eax+40h]
008CBE15: fclex 
008CBE17: mov var_00000104, eax
008CBE1D: cmp var_00000104, 00000000h
008CBE24: jnl 8CBE46h
008CBE26: push 00000040h
008CBE28: push 00440DE8h
008CBE2D: push var_00000100
008CBE33: push var_00000104
008CBE39: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CBE3E: mov var_00000128, eax
008CBE44: jmp 8CBE4Dh
008CBE46: and var_00000128, 00000000h
008CBE4D: push 00000010h
008CBE4F: pop eax
008CBE50: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CBE55: lea esi, var_000000E8
008CBE5B: mov edi, esp
008CBE5D: movsd 
008CBE5E: movsd 
008CBE5F: movsd 
008CBE60: movsd 
008CBE61: push 00000001h
008CBE63: push 00000043h
008CBE65: push var_68
008CBE68: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CBE6D: add esp, 0000001Ch
008CBE70: lea eax, var_68
008CBE73: push eax
008CBE74: lea eax, var_64
008CBE77: push eax
008CBE78: push 00000002h
008CBE7A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CBE7F: add esp, 0000000Ch
008CBE82: mov var_10, 00000000h
008CBE89: push 008CBF2Ch
008CBE8E: jmp 008CBF20h
008CBE93: lea eax, var_60
008CBE96: push eax
008CBE97: lea eax, var_5C
008CBE9A: push eax
008CBE9B: lea eax, var_58
008CBE9E: push eax
008CBE9F: lea eax, var_54
008CBEA2: push eax
008CBEA3: lea eax, var_50
008CBEA6: push eax
008CBEA7: lea eax, var_4C
008CBEAA: push eax
008CBEAB: lea eax, var_48
008CBEAE: push eax
008CBEAF: lea eax, var_44
008CBEB2: push eax
008CBEB3: lea eax, var_40
008CBEB6: push eax
008CBEB7: lea eax, var_3C
008CBEBA: push eax
008CBEBB: lea eax, var_38
008CBEBE: push eax
008CBEBF: lea eax, var_34
008CBEC2: push eax
008CBEC3: lea eax, var_30
008CBEC6: push eax
008CBEC7: lea eax, var_2C
008CBECA: push eax
008CBECB: push 0000000Eh
008CBECD: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CBED2: add esp, 0000003Ch
008CBED5: lea eax, var_68
008CBED8: push eax
008CBED9: lea eax, var_64
008CBEDC: push eax
008CBEDD: push 00000002h
008CBEDF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CBEE4: add esp, 0000000Ch
008CBEE7: lea eax, var_000000D8
008CBEED: push eax
008CBEEE: lea eax, var_000000C8
008CBEF4: push eax
008CBEF5: lea eax, var_000000B8
008CBEFB: push eax
008CBEFC: lea eax, var_000000A8
008CBF02: push eax
008CBF03: lea eax, var_00000098
008CBF09: push eax
008CBF0A: lea eax, var_00000088
008CBF10: push eax
008CBF11: lea eax, var_78
008CBF14: push eax
008CBF15: push 00000007h
008CBF17: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CBF1C: add esp, 00000020h
008CBF1F: ret 
End Sub

Private sub wsBrowser__8CB247
008CB247: push ebp
008CB248: mov ebp, esp
008CB24A: sub esp, 00000018h
008CB24D: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CB252: mov eax, fs:[00h]
008CB258: push eax
008CB259: mov fs:[00000000h], esp
008CB260: mov eax, 000000ACh
008CB265: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CB26A: push ebx
008CB26B: push esi
008CB26C: push edi
008CB26D: mov var_18, esp
008CB270: mov var_14, 0040F718h
008CB277: mov eax, [ebp+08h]
008CB27A: and eax, 00000001h
008CB27D: mov var_10, eax
008CB280: mov eax, [ebp+08h]
008CB283: and al, FEh
008CB285: mov [ebp+08h], eax
008CB288: mov var_0C, 00000000h
008CB28F: mov eax, [ebp+08h]
008CB292: mov eax, [eax]
008CB294: push [ebp+08h]
008CB297: call [eax+04h]
008CB29A: mov var_04, 00000001h
008CB2A1: mov var_04, 00000002h
008CB2A8: push FFFFFFFFh
008CB2AA: call 00410A60h ; On Error ...
008CB2AF: mov var_04, 00000003h
008CB2B6: mov eax, [ebp+08h]
008CB2B9: mov eax, [eax]
008CB2BB: push [ebp+08h]
008CB2BE: call [eax+00000318h]
008CB2C4: push eax
008CB2C5: lea eax, var_38
008CB2C8: push eax
008CB2C9: call 00410A84h ; Set (object)
008CB2CE: mov var_78, eax
008CB2D1: lea eax, var_68
008CB2D4: push eax
008CB2D5: mov eax, var_78
008CB2D8: mov eax, [eax]
008CB2DA: push var_78
008CB2DD: call [eax+48h]
008CB2E0: fclex 
008CB2E2: mov var_7C, eax
008CB2E5: cmp var_7C, 00000000h
008CB2E9: jnl 8CB305h
008CB2EB: push 00000048h
008CB2ED: push 00440DE8h
008CB2F2: push var_78
008CB2F5: push var_7C
008CB2F8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CB2FD: mov var_000000A8, eax
008CB303: jmp 8CB30Ch
008CB305: and var_000000A8, 00000000h
008CB30C: movsx eax, word ptr var_68
008CB310: mov var_0000008C, eax
008CB316: mov var_00000088, 00000001h
008CB320: mov var_24, 00000001h
008CB327: lea ecx, var_38
008CB32A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008CB32F: jmp 8CB343h
008CB331: mov eax, var_24
008CB334: add eax, var_00000088
008CB33A: jo 008CB8B7h
008CB340: mov var_24, eax
008CB343: mov eax, var_24
008CB346: cmp eax, var_0000008C
008CB34C: jnle 008CB41Fh
008CB352: mov var_04, 00000004h
008CB359: mov eax, [ebp+08h]
008CB35C: mov eax, [eax]
008CB35E: push [ebp+08h]
008CB361: call [eax+00000318h]
008CB367: push eax
008CB368: lea eax, var_38
008CB36B: push eax
008CB36C: call 00410A84h ; Set (object)
008CB371: mov var_78, eax
008CB374: lea eax, var_3C
008CB377: push eax
008CB378: mov ecx, var_24
008CB37B: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008CB380: push eax
008CB381: mov eax, var_78
008CB384: mov eax, [eax]
008CB386: push var_78
008CB389: call [eax+40h]
008CB38C: fclex 
008CB38E: mov var_7C, eax
008CB391: cmp var_7C, 00000000h
008CB395: jnl 8CB3B1h
008CB397: push 00000040h
008CB399: push 00440DE8h
008CB39E: push var_78
008CB3A1: push var_7C
008CB3A4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CB3A9: mov var_000000AC, eax
008CB3AF: jmp 8CB3B8h
008CB3B1: and var_000000AC, 00000000h
008CB3B8: push 00000000h
008CB3BA: push 00000008h
008CB3BC: push var_3C
008CB3BF: lea eax, var_50
008CB3C2: push eax
008CB3C3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CB3C8: add esp, 00000010h
008CB3CB: push eax
008CB3CC: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008CB3D1: movsx eax, ax
008CB3D4: xor ecx, ecx
008CB3D6: cmp eax, 00000007h
008CB3D9: setnz cl
008CB3DC: neg ecx
008CB3DE: mov var_80, cx
008CB3E2: lea eax, var_3C
008CB3E5: push eax
008CB3E6: lea eax, var_38
008CB3E9: push eax
008CB3EA: push 00000002h
008CB3EC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CB3F1: add esp, 0000000Ch
008CB3F4: lea ecx, var_50
008CB3F7: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008CB3FC: movsx eax, word ptr var_80
008CB400: test eax, eax
008CB402: jz 8CB413h
008CB404: mov var_04, 00000005h
008CB40B: mov eax, var_24
008CB40E: mov var_28, eax
008CB411: jmp 8CB41Fh
008CB413: mov var_04, 00000008h
008CB41A: jmp 008CB331h
008CB41F: mov var_04, 00000009h
008CB426: cmp var_28, 00000000h
008CB42A: jnz 008CB5B7h
008CB430: mov var_04, 0000000Ah
008CB437: mov eax, [ebp+08h]
008CB43A: mov eax, [eax]
008CB43C: push [ebp+08h]
008CB43F: call [eax+00000318h]
008CB445: push eax
008CB446: lea eax, var_38
008CB449: push eax
008CB44A: call 00410A84h ; Set (object)
008CB44F: mov var_78, eax
008CB452: lea eax, var_68
008CB455: push eax
008CB456: mov eax, var_78
008CB459: mov eax, [eax]
008CB45B: push var_78
008CB45E: call [eax+48h]
008CB461: fclex 
008CB463: mov var_7C, eax
008CB466: cmp var_7C, 00000000h
008CB46A: jnl 8CB486h
008CB46C: push 00000048h
008CB46E: push 00440DE8h
008CB473: push var_78
008CB476: push var_7C
008CB479: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CB47E: mov var_000000B0, eax
008CB484: jmp 8CB48Dh
008CB486: and var_000000B0, 00000000h
008CB48D: mov ax, var_68
008CB491: add ax, 0001h
008CB495: jo 008CB8B7h
008CB49B: movsx eax, ax
008CB49E: mov var_28, eax
008CB4A1: lea ecx, var_38
008CB4A4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008CB4A9: mov var_04, 0000000Bh
008CB4B0: cmp [008F529Ch], 00000000h
008CB4B7: jnz 8CB4D4h
008CB4B9: push 008F529Ch
008CB4BE: push 00440F2Ch
008CB4C3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008CB4C8: mov var_000000B4, 008F529Ch
008CB4D2: jmp 8CB4DEh
008CB4D4: mov var_000000B4, 008F529Ch
008CB4DE: mov eax, var_000000B4
008CB4E4: mov eax, [eax]
008CB4E6: mov var_80, eax
008CB4E9: mov eax, [ebp+08h]
008CB4EC: mov eax, [eax]
008CB4EE: push [ebp+08h]
008CB4F1: call [eax+00000318h]
008CB4F7: push eax
008CB4F8: lea eax, var_38
008CB4FB: push eax
008CB4FC: call 00410A84h ; Set (object)
008CB501: mov var_78, eax
008CB504: lea eax, var_3C
008CB507: push eax
008CB508: mov ecx, var_28
008CB50B: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008CB510: push eax
008CB511: mov eax, var_78
008CB514: mov eax, [eax]
008CB516: push var_78
008CB519: call [eax+40h]
008CB51C: fclex 
008CB51E: mov var_7C, eax
008CB521: cmp var_7C, 00000000h
008CB525: jnl 8CB541h
008CB527: push 00000040h
008CB529: push 00440DE8h
008CB52E: push var_78
008CB531: push var_7C
008CB534: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CB539: mov var_000000B8, eax
008CB53F: jmp 8CB548h
008CB541: and var_000000B8, 00000000h
008CB548: mov eax, var_3C
008CB54B: mov var_000000A4, eax
008CB551: and var_3C, 00000000h
008CB555: push var_000000A4
008CB55B: lea eax, var_40
008CB55E: push eax
008CB55F: call 00410A84h ; Set (object)
008CB564: push eax
008CB565: mov eax, var_80
008CB568: mov eax, [eax]
008CB56A: push var_80
008CB56D: call [eax+0Ch]
008CB570: fclex 
008CB572: mov var_00000084, eax
008CB578: cmp var_00000084, 00000000h
008CB57F: jnl 8CB59Eh
008CB581: push 0000000Ch
008CB583: push 00440F1Ch
008CB588: push var_80
008CB58B: push var_00000084
008CB591: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CB596: mov var_000000BC, eax
008CB59C: jmp 8CB5A5h
008CB59E: and var_000000BC, 00000000h
008CB5A5: lea eax, var_40
008CB5A8: push eax
008CB5A9: lea eax, var_38
008CB5AC: push eax
008CB5AD: push 00000002h
008CB5AF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CB5B4: add esp, 0000000Ch
008CB5B7: mov var_04, 0000000Dh
008CB5BE: mov eax, [ebp+08h]
008CB5C1: mov eax, [eax]
008CB5C3: push [ebp+08h]
008CB5C6: call [eax+00000318h]
008CB5CC: push eax
008CB5CD: lea eax, var_38
008CB5D0: push eax
008CB5D1: call 00410A84h ; Set (object)
008CB5D6: mov var_78, eax
008CB5D9: lea eax, var_3C
008CB5DC: push eax
008CB5DD: mov ecx, var_28
008CB5E0: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008CB5E5: push eax
008CB5E6: mov eax, var_78
008CB5E9: mov eax, [eax]
008CB5EB: push var_78
008CB5EE: call [eax+40h]
008CB5F1: fclex 
008CB5F3: mov var_7C, eax
008CB5F6: cmp var_7C, 00000000h
008CB5FA: jnl 8CB616h
008CB5FC: push 00000040h
008CB5FE: push 00440DE8h
008CB603: push var_78
008CB606: push var_7C
008CB609: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CB60E: mov var_000000C0, eax
008CB614: jmp 8CB61Dh
008CB616: and var_000000C0, 00000000h
008CB61D: push 00000000h
008CB61F: push 00000046h
008CB621: push var_3C
008CB624: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CB629: add esp, 0000000Ch
008CB62C: lea eax, var_3C
008CB62F: push eax
008CB630: lea eax, var_38
008CB633: push eax
008CB634: push 00000002h
008CB636: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CB63B: add esp, 0000000Ch
008CB63E: mov var_04, 0000000Eh
008CB645: lea eax, [ebp+10h]
008CB648: mov var_5C, eax
008CB64B: mov var_64, 00004003h
008CB652: mov eax, [ebp+08h]
008CB655: mov eax, [eax]
008CB657: push [ebp+08h]
008CB65A: call [eax+00000318h]
008CB660: push eax
008CB661: lea eax, var_38
008CB664: push eax
008CB665: call 00410A84h ; Set (object)
008CB66A: mov var_78, eax
008CB66D: lea eax, var_3C
008CB670: push eax
008CB671: mov ecx, var_28
008CB674: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008CB679: push eax
008CB67A: mov eax, var_78
008CB67D: mov eax, [eax]
008CB67F: push var_78
008CB682: call [eax+40h]
008CB685: fclex 
008CB687: mov var_7C, eax
008CB68A: cmp var_7C, 00000000h
008CB68E: jnl 8CB6AAh
008CB690: push 00000040h
008CB692: push 00440DE8h
008CB697: push var_78
008CB69A: push var_7C
008CB69D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CB6A2: mov var_000000C4, eax
008CB6A8: jmp 8CB6B1h
008CB6AA: and var_000000C4, 00000000h
008CB6B1: push 00000010h
008CB6B3: pop eax
008CB6B4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CB6B9: lea esi, var_64
008CB6BC: mov edi, esp
008CB6BE: movsd 
008CB6BF: movsd 
008CB6C0: movsd 
008CB6C1: movsd 
008CB6C2: push 00000001h
008CB6C4: push 00000042h
008CB6C6: push var_3C
008CB6C9: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CB6CE: add esp, 0000001Ch
008CB6D1: lea eax, var_3C
008CB6D4: push eax
008CB6D5: lea eax, var_38
008CB6D8: push eax
008CB6D9: push 00000002h
008CB6DB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CB6E0: add esp, 0000000Ch
008CB6E3: mov var_04, 0000000Fh
008CB6EA: lea eax, var_2C
008CB6ED: push eax
008CB6EE: mov eax, [ebp+08h]
008CB6F1: mov eax, [eax]
008CB6F3: push [ebp+08h]
008CB6F6: call [eax+000001C0h]
008CB6FC: fclex 
008CB6FE: mov var_78, eax
008CB701: cmp var_78, 00000000h
008CB705: jnl 8CB724h
008CB707: push 000001C0h
008CB70C: push 00448B3Ch
008CB711: push [ebp+08h]
008CB714: push var_78
008CB717: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CB71C: mov var_000000C8, eax
008CB722: jmp 8CB72Bh
008CB724: and var_000000C8, 00000000h
008CB72B: push var_2C
008CB72E: call 004109DCh ; Val(arg_1)
008CB733: fstp real8 ptr var_74
008CB736: push 00000000h
008CB738: push 00000000h
008CB73A: push 00000001h
008CB73C: push 00000000h
008CB73E: lea eax, var_54
008CB741: push eax
008CB742: push 00000010h
008CB744: push 00000880h
008CB749: call 00410946h ; ReDim
008CB74E: add esp, 0000001Ch
008CB751: mov eax, [ebp+08h]
008CB754: mov eax, [eax]
008CB756: push [ebp+08h]
008CB759: call [eax+000002FCh]
008CB75F: push eax
008CB760: lea eax, var_38
008CB763: push eax
008CB764: call 00410A84h ; Set (object)
008CB769: mov var_7C, eax
008CB76C: lea eax, var_30
008CB76F: push eax
008CB770: mov eax, var_7C
008CB773: mov eax, [eax]
008CB775: push var_7C
008CB778: call [eax+000000A0h]
008CB77E: fclex 
008CB780: mov var_80, eax
008CB783: cmp var_80, 00000000h
008CB787: jnl 8CB7A6h
008CB789: push 000000A0h
008CB78E: push 00440E08h
008CB793: push var_7C
008CB796: push var_80
008CB799: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CB79E: mov var_000000CC, eax
008CB7A4: jmp 8CB7ADh
008CB7A6: and var_000000CC, 00000000h
008CB7AD: push var_30
008CB7B0: call 004109DCh ; Val(arg_1)
008CB7B5: fstp real8 ptr var_5C
008CB7B8: mov var_64, 00000005h
008CB7BF: lea esi, var_64
008CB7C2: push 00000000h
008CB7C4: push var_54
008CB7C7: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008CB7CC: mov ecx, eax
008CB7CE: mov edx, esi
008CB7D0: call 00410922h ; msvbvm60.dll.__vbaVarMove
008CB7D5: mov edx, 0043DA00h ; x119
008CB7DA: lea ecx, var_34
008CB7DD: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008CB7E2: lea eax, var_54
008CB7E5: push eax
008CB7E6: lea eax, var_34
008CB7E9: push eax
008CB7EA: fld real8 ptr var_74
008CB7ED: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008CB7F2: push eax
008CB7F3: call 007A6910h
008CB7F8: lea eax, var_54
008CB7FB: push eax
008CB7FC: push 00000000h
008CB7FE: call 00410934h ; Erase
008CB803: lea eax, var_34
008CB806: push eax
008CB807: lea eax, var_30
008CB80A: push eax
008CB80B: lea eax, var_2C
008CB80E: push eax
008CB80F: push 00000003h
008CB811: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CB816: add esp, 00000010h
008CB819: lea ecx, var_38
008CB81C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008CB821: mov var_04, 00000010h
008CB828: and var_6C, 00000000h
008CB82C: lea eax, var_6C
008CB82F: push eax
008CB830: push 00457EB8h ; New connection
008CB835: push 00460BA0h ; Browser
008CB83A: mov eax, [ebp+08h]
008CB83D: mov eax, [eax]
008CB83F: push [ebp+08h]
008CB842: call [eax+00000700h]
008CB848: mov var_10, 00000000h
008CB84F: wait 
008CB850: push 008CB898h
008CB855: jmp 8CB897h
008CB857: lea eax, var_34
008CB85A: push eax
008CB85B: lea eax, var_30
008CB85E: push eax
008CB85F: lea eax, var_2C
008CB862: push eax
008CB863: push 00000003h
008CB865: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CB86A: add esp, 00000010h
008CB86D: lea eax, var_40
008CB870: push eax
008CB871: lea eax, var_3C
008CB874: push eax
008CB875: lea eax, var_38
008CB878: push eax
008CB879: push 00000003h
008CB87B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CB880: add esp, 00000010h
008CB883: lea ecx, var_50
008CB886: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008CB88B: lea eax, var_54
008CB88E: push eax
008CB88F: push 00000000h
008CB891: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008CB896: ret 
End Sub

Private sub wsBrowser__8CB08D
008CB08D: push ebp
008CB08E: mov ebp, esp
008CB090: sub esp, 00000018h
008CB093: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CB098: mov eax, fs:[00h]
008CB09E: push eax
008CB09F: mov fs:[00000000h], esp
008CB0A6: push 0000002Ch
008CB0A8: pop eax
008CB0A9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CB0AE: push ebx
008CB0AF: push esi
008CB0B0: push edi
008CB0B1: mov var_18, esp
008CB0B4: mov var_14, 0040F6D8h
008CB0BB: mov eax, [ebp+08h]
008CB0BE: and eax, 00000001h
008CB0C1: mov var_10, eax
008CB0C4: mov eax, [ebp+08h]
008CB0C7: and al, FEh
008CB0C9: mov [ebp+08h], eax
008CB0CC: mov var_0C, 00000000h
008CB0D3: mov eax, [ebp+08h]
008CB0D6: mov eax, [eax]
008CB0D8: push [ebp+08h]
008CB0DB: call [eax+04h]
008CB0DE: mov var_04, 00000001h
008CB0E5: mov var_04, 00000002h
008CB0EC: push FFFFFFFFh
008CB0EE: call 00410A60h ; On Error ...
008CB0F3: mov var_04, 00000003h
008CB0FA: mov eax, [ebp+0Ch]
008CB0FD: movsx eax, word ptr [eax]
008CB100: test eax, eax
008CB102: jz 008CB206h
008CB108: mov var_04, 00000004h
008CB10F: mov eax, [ebp+08h]
008CB112: mov eax, [eax]
008CB114: push [ebp+08h]
008CB117: call [eax+00000318h]
008CB11D: push eax
008CB11E: lea eax, var_24
008CB121: push eax
008CB122: call 00410A84h ; Set (object)
008CB127: mov var_2C, eax
008CB12A: lea eax, var_28
008CB12D: push eax
008CB12E: mov eax, [ebp+0Ch]
008CB131: mov ax, [eax]
008CB134: push eax
008CB135: mov eax, var_2C
008CB138: mov eax, [eax]
008CB13A: push var_2C
008CB13D: call [eax+40h]
008CB140: fclex 
008CB142: mov var_30, eax
008CB145: cmp var_30, 00000000h
008CB149: jnl 8CB162h
008CB14B: push 00000040h
008CB14D: push 00440DE8h
008CB152: push var_2C
008CB155: push var_30
008CB158: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CB15D: mov var_48, eax
008CB160: jmp 8CB166h
008CB162: and var_48, 00000000h
008CB166: push 00000000h
008CB168: push 00000046h
008CB16A: push var_28
008CB16D: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CB172: add esp, 0000000Ch
008CB175: lea eax, var_28
008CB178: push eax
008CB179: lea eax, var_24
008CB17C: push eax
008CB17D: push 00000002h
008CB17F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CB184: add esp, 0000000Ch
008CB187: mov var_04, 00000005h
008CB18E: mov eax, [ebp+08h]
008CB191: mov eax, [eax]
008CB193: push [ebp+08h]
008CB196: call [eax+00000314h]
008CB19C: push eax
008CB19D: lea eax, var_24
008CB1A0: push eax
008CB1A1: call 00410A84h ; Set (object)
008CB1A6: mov var_2C, eax
008CB1A9: lea eax, var_28
008CB1AC: push eax
008CB1AD: mov eax, [ebp+0Ch]
008CB1B0: mov ax, [eax]
008CB1B3: push eax
008CB1B4: mov eax, var_2C
008CB1B7: mov eax, [eax]
008CB1B9: push var_2C
008CB1BC: call [eax+40h]
008CB1BF: fclex 
008CB1C1: mov var_30, eax
008CB1C4: cmp var_30, 00000000h
008CB1C8: jnl 8CB1E1h
008CB1CA: push 00000040h
008CB1CC: push 00440DE8h
008CB1D1: push var_2C
008CB1D4: push var_30
008CB1D7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CB1DC: mov var_4C, eax
008CB1DF: jmp 8CB1E5h
008CB1E1: and var_4C, 00000000h
008CB1E5: push 00000000h
008CB1E7: push 00000046h
008CB1E9: push var_28
008CB1EC: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CB1F1: add esp, 0000000Ch
008CB1F4: lea eax, var_28
008CB1F7: push eax
008CB1F8: lea eax, var_24
008CB1FB: push eax
008CB1FC: push 00000002h
008CB1FE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CB203: add esp, 0000000Ch
008CB206: mov var_10, 00000000h
008CB20D: push 008CB228h
008CB212: jmp 8CB227h
008CB214: lea eax, var_28
008CB217: push eax
008CB218: lea eax, var_24
008CB21B: push eax
008CB21C: push 00000002h
008CB21E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CB223: add esp, 0000000Ch
008CB226: ret 
End Sub

Private sub unknown_8C8D76
008C8D76: push ebp
008C8D77: mov ebp, esp
008C8D79: push ecx
008C8D7A: push ecx
008C8D7B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008C8D80: mov eax, fs:[00h]
008C8D86: push eax
008C8D87: mov fs:[00000000h], esp
008C8D8E: mov eax, 000000B8h
008C8D93: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C8D98: push ebx
008C8D99: push esi
008C8D9A: push edi
008C8D9B: mov var_08, esp
008C8D9E: mov var_04, 0040F630h
008C8DA5: mov edx, [ebp+0Ch]
008C8DA8: lea ecx, var_1C
008C8DAB: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008C8DB0: mov edx, [ebp+10h]
008C8DB3: lea ecx, var_14
008C8DB6: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008C8DBB: push 00000000h
008C8DBD: push 00000001h
008C8DBF: push 00440E48h
008C8DC4: push 00000000h
008C8DC6: push 00000018h
008C8DC8: mov eax, [ebp+08h]
008C8DCB: mov eax, [eax]
008C8DCD: push [ebp+08h]
008C8DD0: call [eax+00000310h]
008C8DD6: push eax
008C8DD7: lea eax, var_24
008C8DDA: push eax
008C8DDB: call 00410A84h ; Set (object)
008C8DE0: push eax
008C8DE1: lea eax, var_3C
008C8DE4: push eax
008C8DE5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C8DEA: add esp, 00000010h
008C8DED: push eax
008C8DEE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C8DF3: push eax
008C8DF4: lea eax, var_28
008C8DF7: push eax
008C8DF8: call 00410A84h ; Set (object)
008C8DFD: push eax
008C8DFE: lea eax, var_4C
008C8E01: push eax
008C8E02: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C8E07: add esp, 00000010h
008C8E0A: push eax
008C8E0B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C8E10: add eax, 00000001h
008C8E13: jo 008C9211h
008C8E19: mov var_18, eax
008C8E1C: lea eax, var_28
008C8E1F: push eax
008C8E20: lea eax, var_24
008C8E23: push eax
008C8E24: push 00000002h
008C8E26: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C8E2B: add esp, 0000000Ch
008C8E2E: lea eax, var_4C
008C8E31: push eax
008C8E32: lea eax, var_3C
008C8E35: push eax
008C8E36: push 00000002h
008C8E38: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C8E3D: add esp, 0000000Ch
008C8E40: mov var_74, 80020004h
008C8E47: mov var_7C, 0000000Ah
008C8E4E: push var_18
008C8E51: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008C8E56: mov edx, eax
008C8E58: lea ecx, var_20
008C8E5B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C8E60: push eax
008C8E61: push 004412D0h
008C8E66: call 00410A18h ; &
008C8E6B: mov var_44, eax
008C8E6E: mov var_4C, 00000008h
008C8E75: mov eax, var_1C
008C8E78: mov var_000000A4, eax
008C8E7E: mov var_000000AC, 00000008h
008C8E88: push 00000010h
008C8E8A: pop eax
008C8E8B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C8E90: lea esi, var_7C
008C8E93: mov edi, esp
008C8E95: movsd 
008C8E96: movsd 
008C8E97: movsd 
008C8E98: movsd 
008C8E99: push 00000010h
008C8E9B: pop eax
008C8E9C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C8EA1: lea esi, var_4C
008C8EA4: mov edi, esp
008C8EA6: movsd 
008C8EA7: movsd 
008C8EA8: movsd 
008C8EA9: movsd 
008C8EAA: push 00000010h
008C8EAC: pop eax
008C8EAD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C8EB2: lea esi, var_000000AC
008C8EB8: mov edi, esp
008C8EBA: movsd 
008C8EBB: movsd 
008C8EBC: movsd 
008C8EBD: movsd 
008C8EBE: push 00000003h
008C8EC0: push 00000002h
008C8EC2: push 00440E48h
008C8EC7: push 00000000h
008C8EC9: push 00000018h
008C8ECB: mov eax, [ebp+08h]
008C8ECE: mov eax, [eax]
008C8ED0: push [ebp+08h]
008C8ED3: call [eax+00000310h]
008C8ED9: push eax
008C8EDA: lea eax, var_24
008C8EDD: push eax
008C8EDE: call 00410A84h ; Set (object)
008C8EE3: push eax
008C8EE4: lea eax, var_3C
008C8EE7: push eax
008C8EE8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C8EED: add esp, 00000010h
008C8EF0: push eax
008C8EF1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C8EF6: push eax
008C8EF7: lea eax, var_28
008C8EFA: push eax
008C8EFB: call 00410A84h ; Set (object)
008C8F00: push eax
008C8F01: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C8F06: add esp, 0000003Ch
008C8F09: lea ecx, var_20
008C8F0C: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008C8F11: lea eax, var_28
008C8F14: push eax
008C8F15: lea eax, var_24
008C8F18: push eax
008C8F19: push 00000002h
008C8F1B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C8F20: add esp, 0000000Ch
008C8F23: lea eax, var_4C
008C8F26: push eax
008C8F27: lea eax, var_3C
008C8F2A: push eax
008C8F2B: push 00000002h
008C8F2D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C8F32: add esp, 0000000Ch
008C8F35: mov var_00000084, 00000001h
008C8F3F: mov var_0000008C, 00000003h
008C8F49: lea eax, var_14
008C8F4C: mov var_000000A4, eax
008C8F52: mov var_000000AC, 00004008h
008C8F5C: push var_18
008C8F5F: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008C8F64: mov edx, eax
008C8F66: lea ecx, var_20
008C8F69: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C8F6E: push eax
008C8F6F: push 004412D0h
008C8F74: call 00410A18h ; &
008C8F79: mov var_44, eax
008C8F7C: mov var_4C, 00000008h
008C8F83: push 00000010h
008C8F85: pop eax
008C8F86: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C8F8B: lea esi, var_0000008C
008C8F91: mov edi, esp
008C8F93: movsd 
008C8F94: movsd 
008C8F95: movsd 
008C8F96: movsd 
008C8F97: push 00000010h
008C8F99: pop eax
008C8F9A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C8F9F: lea esi, var_000000AC
008C8FA5: mov edi, esp
008C8FA7: movsd 
008C8FA8: movsd 
008C8FA9: movsd 
008C8FAA: movsd 
008C8FAB: push 00000001h
008C8FAD: push 00000010h
008C8FAF: push 00440E58h
008C8FB4: push 00000010h
008C8FB6: pop eax
008C8FB7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C8FBC: lea esi, var_4C
008C8FBF: mov edi, esp
008C8FC1: movsd 
008C8FC2: movsd 
008C8FC3: movsd 
008C8FC4: movsd 
008C8FC5: push 00000001h
008C8FC7: push 00000000h
008C8FC9: push 00440E48h
008C8FCE: push 00000000h
008C8FD0: push 00000018h
008C8FD2: mov eax, [ebp+08h]
008C8FD5: mov eax, [eax]
008C8FD7: push [ebp+08h]
008C8FDA: call [eax+00000310h]
008C8FE0: push eax
008C8FE1: lea eax, var_24
008C8FE4: push eax
008C8FE5: call 00410A84h ; Set (object)
008C8FEA: push eax
008C8FEB: lea eax, var_3C
008C8FEE: push eax
008C8FEF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C8FF4: add esp, 00000010h
008C8FF7: push eax
008C8FF8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C8FFD: push eax
008C8FFE: lea eax, var_28
008C9001: push eax
008C9002: call 00410A84h ; Set (object)
008C9007: push eax
008C9008: lea eax, var_5C
008C900B: push eax
008C900C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C9011: add esp, 00000020h
008C9014: push eax
008C9015: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C901A: push eax
008C901B: lea eax, var_2C
008C901E: push eax
008C901F: call 00410A84h ; Set (object)
008C9024: push eax
008C9025: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
008C902A: add esp, 0000002Ch
008C902D: lea ecx, var_20
008C9030: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008C9035: lea eax, var_2C
008C9038: push eax
008C9039: lea eax, var_28
008C903C: push eax
008C903D: lea eax, var_24
008C9040: push eax
008C9041: push 00000003h
008C9043: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C9048: add esp, 00000010h
008C904B: lea eax, var_5C
008C904E: push eax
008C904F: lea eax, var_4C
008C9052: push eax
008C9053: lea eax, var_3C
008C9056: push eax
008C9057: push 00000003h
008C9059: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C905E: add esp, 00000010h
008C9061: mov eax, [ebp+14h]
008C9064: cmp [eax], 00000000h
008C9067: jz 008C91ACh
008C906D: mov var_00000084, 00000002h
008C9077: mov var_0000008C, 00000003h
008C9081: mov eax, [ebp+14h]
008C9084: fild dword ptr [eax]
008C9086: fstp real8 ptr var_000000C8
008C908C: fld real8 ptr var_000000C8
008C9092: push ecx
008C9093: push ecx
008C9094: fstp real8 ptr [esp]
008C9097: call 007BC10Ah
008C909C: mov var_64, eax
008C909F: mov var_6C, 00000008h
008C90A6: push var_18
008C90A9: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008C90AE: mov edx, eax
008C90B0: lea ecx, var_20
008C90B3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C90B8: push eax
008C90B9: push 004412D0h
008C90BE: call 00410A18h ; &
008C90C3: mov var_44, eax
008C90C6: mov var_4C, 00000008h
008C90CD: push 00000010h
008C90CF: pop eax
008C90D0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C90D5: lea esi, var_0000008C
008C90DB: mov edi, esp
008C90DD: movsd 
008C90DE: movsd 
008C90DF: movsd 
008C90E0: movsd 
008C90E1: push 00000010h
008C90E3: pop eax
008C90E4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C90E9: lea esi, var_6C
008C90EC: mov edi, esp
008C90EE: movsd 
008C90EF: movsd 
008C90F0: movsd 
008C90F1: movsd 
008C90F2: push 00000001h
008C90F4: push 00000010h
008C90F6: push 00440E58h
008C90FB: push 00000010h
008C90FD: pop eax
008C90FE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C9103: lea esi, var_4C
008C9106: mov edi, esp
008C9108: movsd 
008C9109: movsd 
008C910A: movsd 
008C910B: movsd 
008C910C: push 00000001h
008C910E: push 00000000h
008C9110: push 00440E48h
008C9115: push 00000000h
008C9117: push 00000018h
008C9119: mov eax, [ebp+08h]
008C911C: mov eax, [eax]
008C911E: push [ebp+08h]
008C9121: call [eax+00000310h]
008C9127: push eax
008C9128: lea eax, var_24
008C912B: push eax
008C912C: call 00410A84h ; Set (object)
008C9131: push eax
008C9132: lea eax, var_3C
008C9135: push eax
008C9136: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C913B: add esp, 00000010h
008C913E: push eax
008C913F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C9144: push eax
008C9145: lea eax, var_28
008C9148: push eax
008C9149: call 00410A84h ; Set (object)
008C914E: push eax
008C914F: lea eax, var_5C
008C9152: push eax
008C9153: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C9158: add esp, 00000020h
008C915B: push eax
008C915C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C9161: push eax
008C9162: lea eax, var_2C
008C9165: push eax
008C9166: call 00410A84h ; Set (object)
008C916B: push eax
008C916C: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
008C9171: add esp, 0000002Ch
008C9174: lea ecx, var_20
008C9177: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008C917C: lea eax, var_2C
008C917F: push eax
008C9180: lea eax, var_28
008C9183: push eax
008C9184: lea eax, var_24
008C9187: push eax
008C9188: push 00000003h
008C918A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C918F: add esp, 00000010h
008C9192: lea eax, var_6C
008C9195: push eax
008C9196: lea eax, var_5C
008C9199: push eax
008C919A: lea eax, var_4C
008C919D: push eax
008C919E: lea eax, var_3C
008C91A1: push eax
008C91A2: push 00000004h
008C91A4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C91A9: add esp, 00000014h
008C91AC: wait 
008C91AD: push 008C91FEh
008C91B2: jmp 8C91EDh
008C91B4: lea ecx, var_20
008C91B7: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008C91BC: lea eax, var_2C
008C91BF: push eax
008C91C0: lea eax, var_28
008C91C3: push eax
008C91C4: lea eax, var_24
008C91C7: push eax
008C91C8: push 00000003h
008C91CA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C91CF: add esp, 00000010h
008C91D2: lea eax, var_6C
008C91D5: push eax
008C91D6: lea eax, var_5C
008C91D9: push eax
008C91DA: lea eax, var_4C
008C91DD: push eax
008C91DE: lea eax, var_3C
008C91E1: push eax
008C91E2: push 00000004h
008C91E4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C91E9: add esp, 00000014h
008C91EC: ret 
End Sub

Private sub unknown_8CA3D9
008CA3D9: push ebp
008CA3DA: mov ebp, esp
008CA3DC: push ecx
008CA3DD: push ecx
008CA3DE: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CA3E3: mov eax, fs:[00h]
008CA3E9: push eax
008CA3EA: mov fs:[00000000h], esp
008CA3F1: mov eax, 00000134h
008CA3F6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CA3FB: push ebx
008CA3FC: push esi
008CA3FD: push edi
008CA3FE: mov var_08, esp
008CA401: mov var_04, 0040F6B8h
008CA408: mov eax, [ebp+0Ch]
008CA40B: mov ax, [eax]
008CA40E: mov var_00000120, ax
008CA415: movsx eax, word ptr var_00000120
008CA41C: mov var_00000130, eax
008CA422: cmp var_00000130, 00000000h
008CA429: jz 8CA44Ah
008CA42B: cmp var_00000130, 00000002h
008CA432: jz 008CAA73h
008CA438: cmp var_00000130, 00000003h
008CA43F: jz 008CAC9Fh
008CA445: jmp 008CAEC6h
008CA44A: mov var_000000B8, 00000001h
008CA454: mov var_000000C0, 00000002h
008CA45E: push 00000000h
008CA460: push 00000001h
008CA462: push 00440E48h
008CA467: push 00000000h
008CA469: push 00000018h
008CA46B: mov eax, [ebp+08h]
008CA46E: mov eax, [eax]
008CA470: push [ebp+08h]
008CA473: call [eax+00000310h]
008CA479: push eax
008CA47A: lea eax, var_30
008CA47D: push eax
008CA47E: call 00410A84h ; Set (object)
008CA483: push eax
008CA484: lea eax, var_5C
008CA487: push eax
008CA488: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CA48D: add esp, 00000010h
008CA490: push eax
008CA491: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CA496: push eax
008CA497: lea eax, var_34
008CA49A: push eax
008CA49B: call 00410A84h ; Set (object)
008CA4A0: push eax
008CA4A1: lea eax, var_6C
008CA4A4: push eax
008CA4A5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CA4AA: add esp, 00000010h
008CA4AD: push eax
008CA4AE: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008CA4B3: mov var_000000C8, eax
008CA4B9: mov var_000000D0, 00000003h
008CA4C3: mov var_000000D8, 00000001h
008CA4CD: mov var_000000E0, 00000002h
008CA4D7: lea eax, var_000000C0
008CA4DD: push eax
008CA4DE: lea eax, var_000000D0
008CA4E4: push eax
008CA4E5: lea eax, var_000000E0
008CA4EB: push eax
008CA4EC: lea eax, var_0000011C
008CA4F2: push eax
008CA4F3: lea eax, var_0000010C
008CA4F9: push eax
008CA4FA: lea eax, var_20
008CA4FD: push eax
008CA4FE: call 00410A3Ch ; For
008CA503: mov var_00000128, eax
008CA509: lea eax, var_34
008CA50C: push eax
008CA50D: lea eax, var_30
008CA510: push eax
008CA511: push 00000002h
008CA513: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CA518: add esp, 0000000Ch
008CA51B: lea eax, var_6C
008CA51E: push eax
008CA51F: lea eax, var_5C
008CA522: push eax
008CA523: push 00000002h
008CA525: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CA52A: add esp, 0000000Ch
008CA52D: jmp 008CAA61h
008CA532: lea eax, var_20
008CA535: mov var_000000B8, eax
008CA53B: mov var_000000C0, 0000400Ch
008CA545: push 00000000h
008CA547: push 00000004h
008CA549: push 00440E58h
008CA54E: push 00000010h
008CA550: pop eax
008CA551: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CA556: lea esi, var_000000C0
008CA55C: mov edi, esp
008CA55E: movsd 
008CA55F: movsd 
008CA560: movsd 
008CA561: movsd 
008CA562: push 00000001h
008CA564: push 00000000h
008CA566: push 00440E48h
008CA56B: push 00000000h
008CA56D: push 00000018h
008CA56F: mov eax, [ebp+08h]
008CA572: mov eax, [eax]
008CA574: push [ebp+08h]
008CA577: call [eax+00000310h]
008CA57D: push eax
008CA57E: lea eax, var_30
008CA581: push eax
008CA582: call 00410A84h ; Set (object)
008CA587: push eax
008CA588: lea eax, var_5C
008CA58B: push eax
008CA58C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CA591: add esp, 00000010h
008CA594: push eax
008CA595: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CA59A: push eax
008CA59B: lea eax, var_34
008CA59E: push eax
008CA59F: call 00410A84h ; Set (object)
008CA5A4: push eax
008CA5A5: lea eax, var_6C
008CA5A8: push eax
008CA5A9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CA5AE: add esp, 00000020h
008CA5B1: push eax
008CA5B2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CA5B7: push eax
008CA5B8: lea eax, var_38
008CA5BB: push eax
008CA5BC: call 00410A84h ; Set (object)
008CA5C1: push eax
008CA5C2: lea eax, var_7C
008CA5C5: push eax
008CA5C6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CA5CB: add esp, 00000010h
008CA5CE: push eax
008CA5CF: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008CA5D4: sub ax, FFFFh
008CA5D8: neg ax
008CA5DB: sbb eax, eax
008CA5DD: inc eax
008CA5DE: neg eax
008CA5E0: mov var_000000FC, ax
008CA5E7: lea eax, var_38
008CA5EA: push eax
008CA5EB: lea eax, var_34
008CA5EE: push eax
008CA5EF: lea eax, var_30
008CA5F2: push eax
008CA5F3: push 00000003h
008CA5F5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CA5FA: add esp, 00000010h
008CA5FD: lea eax, var_7C
008CA600: push eax
008CA601: lea eax, var_6C
008CA604: push eax
008CA605: lea eax, var_5C
008CA608: push eax
008CA609: push 00000003h
008CA60B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CA610: add esp, 00000010h
008CA613: movsx eax, word ptr var_000000FC
008CA61A: test eax, eax
008CA61C: jz 008CAA44h
008CA622: mov var_000000C8, 00000001h
008CA62C: mov var_000000D0, 00000003h
008CA636: lea eax, var_20
008CA639: mov var_000000B8, eax
008CA63F: mov var_000000C0, 0000400Ch
008CA649: push 00000010h
008CA64B: pop eax
008CA64C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CA651: lea esi, var_000000D0
008CA657: mov edi, esp
008CA659: movsd 
008CA65A: movsd 
008CA65B: movsd 
008CA65C: movsd 
008CA65D: push 00000001h
008CA65F: push 00000010h
008CA661: push 00440E58h
008CA666: push 00000010h
008CA668: pop eax
008CA669: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CA66E: lea esi, var_000000C0
008CA674: mov edi, esp
008CA676: movsd 
008CA677: movsd 
008CA678: movsd 
008CA679: movsd 
008CA67A: push 00000001h
008CA67C: push 00000000h
008CA67E: push 00440E48h
008CA683: push 00000000h
008CA685: push 00000018h
008CA687: mov eax, [ebp+08h]
008CA68A: mov eax, [eax]
008CA68C: push [ebp+08h]
008CA68F: call [eax+00000310h]
008CA695: push eax
008CA696: lea eax, var_30
008CA699: push eax
008CA69A: call 00410A84h ; Set (object)
008CA69F: push eax
008CA6A0: lea eax, var_5C
008CA6A3: push eax
008CA6A4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CA6A9: add esp, 00000010h
008CA6AC: push eax
008CA6AD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CA6B2: push eax
008CA6B3: lea eax, var_34
008CA6B6: push eax
008CA6B7: call 00410A84h ; Set (object)
008CA6BC: push eax
008CA6BD: lea eax, var_6C
008CA6C0: push eax
008CA6C1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CA6C6: add esp, 00000020h
008CA6C9: push eax
008CA6CA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CA6CF: push eax
008CA6D0: lea eax, var_38
008CA6D3: push eax
008CA6D4: call 00410A84h ; Set (object)
008CA6D9: push eax
008CA6DA: lea eax, var_7C
008CA6DD: push eax
008CA6DE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CA6E3: add esp, 00000020h
008CA6E6: push eax
008CA6E7: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CA6EC: mov edx, eax
008CA6EE: lea ecx, var_24
008CA6F1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CA6F6: push eax
008CA6F7: call 004109DCh ; Val(arg_1)
008CA6FC: call 004109D6h ; msvbvm60.dll.__vbaFpR8
008CA701: fcomp real8 ptr [00401770h]
008CA707: fstsw ax
008CA709: sahf 
008CA70A: jbe 8CA718h
008CA70C: mov var_00000134, 00000001h
008CA716: jmp 8CA71Fh
008CA718: and var_00000134, 00000000h
008CA71F: mov eax, var_00000134
008CA725: neg eax
008CA727: mov var_000000FC, ax
008CA72E: lea ecx, var_24
008CA731: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008CA736: lea eax, var_38
008CA739: push eax
008CA73A: lea eax, var_34
008CA73D: push eax
008CA73E: lea eax, var_30
008CA741: push eax
008CA742: push 00000003h
008CA744: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CA749: add esp, 00000010h
008CA74C: lea eax, var_7C
008CA74F: push eax
008CA750: lea eax, var_6C
008CA753: push eax
008CA754: lea eax, var_5C
008CA757: push eax
008CA758: push 00000003h
008CA75A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CA75F: add esp, 00000010h
008CA762: movsx eax, word ptr var_000000FC
008CA769: test eax, eax
008CA76B: jz 008CAA44h
008CA771: lea eax, var_24
008CA774: push eax
008CA775: mov eax, [ebp+08h]
008CA778: mov eax, [eax]
008CA77A: push [ebp+08h]
008CA77D: call [eax+000001C0h]
008CA783: fclex 
008CA785: mov var_000000FC, eax
008CA78B: cmp var_000000FC, 00000000h
008CA792: jnl 8CA7B4h
008CA794: push 000001C0h
008CA799: push 00448B3Ch
008CA79E: push [ebp+08h]
008CA7A1: push var_000000FC
008CA7A7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CA7AC: mov var_00000138, eax
008CA7B2: jmp 8CA7BBh
008CA7B4: and var_00000138, 00000000h
008CA7BB: push var_24
008CA7BE: call 004109DCh ; Val(arg_1)
008CA7C3: fstp real8 ptr var_000000F8
008CA7C9: cmp [008F2010h], 00000000h
008CA7D0: jnz 8CA7EDh
008CA7D2: push 008F2010h
008CA7D7: push 00433984h
008CA7DC: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008CA7E1: mov var_0000013C, 008F2010h
008CA7EB: jmp 8CA7F7h
008CA7ED: mov var_0000013C, 008F2010h
008CA7F7: mov eax, var_0000013C
008CA7FD: mov eax, [eax]
008CA7FF: mov ecx, var_0000013C
008CA805: mov ecx, [ecx]
008CA807: mov ecx, [ecx]
008CA809: push eax
008CA80A: call [ecx+0000053Ch]
008CA810: push eax
008CA811: lea eax, var_4C
008CA814: push eax
008CA815: call 00410A84h ; Set (object)
008CA81A: lea eax, var_20
008CA81D: mov var_000000B8, eax
008CA823: mov var_000000C0, 0000400Ch
008CA82D: push 00000000h
008CA82F: push 00000000h
008CA831: push 00440E58h
008CA836: push 00000010h
008CA838: pop eax
008CA839: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CA83E: lea esi, var_000000C0
008CA844: mov edi, esp
008CA846: movsd 
008CA847: movsd 
008CA848: movsd 
008CA849: movsd 
008CA84A: push 00000001h
008CA84C: push 00000000h
008CA84E: push 00440E48h
008CA853: push 00000000h
008CA855: push 00000018h
008CA857: mov eax, [ebp+08h]
008CA85A: mov eax, [eax]
008CA85C: push [ebp+08h]
008CA85F: call [eax+00000310h]
008CA865: push eax
008CA866: lea eax, var_30
008CA869: push eax
008CA86A: call 00410A84h ; Set (object)
008CA86F: push eax
008CA870: lea eax, var_5C
008CA873: push eax
008CA874: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CA879: add esp, 00000010h
008CA87C: push eax
008CA87D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CA882: push eax
008CA883: lea eax, var_34
008CA886: push eax
008CA887: call 00410A84h ; Set (object)
008CA88C: push eax
008CA88D: lea eax, var_6C
008CA890: push eax
008CA891: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CA896: add esp, 00000020h
008CA899: push eax
008CA89A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CA89F: push eax
008CA8A0: lea eax, var_38
008CA8A3: push eax
008CA8A4: call 00410A84h ; Set (object)
008CA8A9: push eax
008CA8AA: lea eax, var_7C
008CA8AD: push eax
008CA8AE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CA8B3: add esp, 00000010h
008CA8B6: mov var_000000D8, 00000001h
008CA8C0: mov var_000000E0, 00000003h
008CA8CA: lea eax, var_20
008CA8CD: mov var_000000C8, eax
008CA8D3: mov var_000000D0, 0000400Ch
008CA8DD: mov eax, var_4C
008CA8E0: mov var_0000012C, eax
008CA8E6: and var_4C, 00000000h
008CA8EA: push var_0000012C
008CA8F0: lea eax, var_48
008CA8F3: push eax
008CA8F4: call 00410A84h ; Set (object)
008CA8F9: push 00000010h
008CA8FB: pop eax
008CA8FC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CA901: lea esi, var_000000E0
008CA907: mov edi, esp
008CA909: movsd 
008CA90A: movsd 
008CA90B: movsd 
008CA90C: movsd 
008CA90D: push 00000001h
008CA90F: push 00000010h
008CA911: push 00440E58h
008CA916: push 00000010h
008CA918: pop eax
008CA919: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CA91E: lea esi, var_000000D0
008CA924: mov edi, esp
008CA926: movsd 
008CA927: movsd 
008CA928: movsd 
008CA929: movsd 
008CA92A: push 00000001h
008CA92C: push 00000000h
008CA92E: push 00440E48h
008CA933: push 00000000h
008CA935: push 00000018h
008CA937: mov eax, [ebp+08h]
008CA93A: mov eax, [eax]
008CA93C: push [ebp+08h]
008CA93F: call [eax+00000310h]
008CA945: push eax
008CA946: lea eax, var_3C
008CA949: push eax
008CA94A: call 00410A84h ; Set (object)
008CA94F: push eax
008CA950: lea eax, var_0000008C
008CA956: push eax
008CA957: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CA95C: add esp, 00000010h
008CA95F: push eax
008CA960: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CA965: push eax
008CA966: lea eax, var_40
008CA969: push eax
008CA96A: call 00410A84h ; Set (object)
008CA96F: push eax
008CA970: lea eax, var_0000009C
008CA976: push eax
008CA977: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CA97C: add esp, 00000020h
008CA97F: push eax
008CA980: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CA985: push eax
008CA986: lea eax, var_44
008CA989: push eax
008CA98A: call 00410A84h ; Set (object)
008CA98F: push eax
008CA990: lea eax, var_000000AC
008CA996: push eax
008CA997: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CA99C: add esp, 00000020h
008CA99F: push eax
008CA9A0: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CA9A5: mov edx, eax
008CA9A7: lea ecx, var_2C
008CA9AA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CA9AF: push eax
008CA9B0: lea eax, var_7C
008CA9B3: push eax
008CA9B4: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CA9B9: mov edx, eax
008CA9BB: lea ecx, var_28
008CA9BE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CA9C3: push eax
008CA9C4: lea eax, var_48
008CA9C7: push eax
008CA9C8: fld real8 ptr var_000000F8
008CA9CE: call 00410814h ; msvbvm60.dll.__vbaFpI4
008CA9D3: push eax
008CA9D4: call 007C016Fh
008CA9D9: lea eax, var_2C
008CA9DC: push eax
008CA9DD: lea eax, var_28
008CA9E0: push eax
008CA9E1: lea eax, var_24
008CA9E4: push eax
008CA9E5: push 00000003h
008CA9E7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CA9EC: add esp, 00000010h
008CA9EF: lea eax, var_4C
008CA9F2: push eax
008CA9F3: lea eax, var_48
008CA9F6: push eax
008CA9F7: lea eax, var_44
008CA9FA: push eax
008CA9FB: lea eax, var_40
008CA9FE: push eax
008CA9FF: lea eax, var_3C
008CAA02: push eax
008CAA03: lea eax, var_38
008CAA06: push eax
008CAA07: lea eax, var_34
008CAA0A: push eax
008CAA0B: lea eax, var_30
008CAA0E: push eax
008CAA0F: push 00000008h
008CAA11: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CAA16: add esp, 00000024h
008CAA19: lea eax, var_000000AC
008CAA1F: push eax
008CAA20: lea eax, var_0000009C
008CAA26: push eax
008CAA27: lea eax, var_0000008C
008CAA2D: push eax
008CAA2E: lea eax, var_7C
008CAA31: push eax
008CAA32: lea eax, var_6C
008CAA35: push eax
008CAA36: lea eax, var_5C
008CAA39: push eax
008CAA3A: push 00000006h
008CAA3C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CAA41: add esp, 0000001Ch
008CAA44: lea eax, var_0000011C
008CAA4A: push eax
008CAA4B: lea eax, var_0000010C
008CAA51: push eax
008CAA52: lea eax, var_20
008CAA55: push eax
008CAA56: call 00410A36h ; Next
008CAA5B: mov var_00000128, eax
008CAA61: cmp var_00000128, 00000000h
008CAA68: jnz 008CA532h
008CAA6E: jmp 008CAEC6h
008CAA73: lea eax, var_24
008CAA76: push eax
008CAA77: mov eax, [ebp+08h]
008CAA7A: mov eax, [eax]
008CAA7C: push [ebp+08h]
008CAA7F: call [eax+000001C0h]
008CAA85: fclex 
008CAA87: mov var_000000FC, eax
008CAA8D: cmp var_000000FC, 00000000h
008CAA94: jnl 8CAAB6h
008CAA96: push 000001C0h
008CAA9B: push 00448B3Ch
008CAAA0: push [ebp+08h]
008CAAA3: push var_000000FC
008CAAA9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CAAAE: mov var_00000140, eax
008CAAB4: jmp 8CAABDh
008CAAB6: and var_00000140, 00000000h
008CAABD: push var_24
008CAAC0: call 004109DCh ; Val(arg_1)
008CAAC5: fstp real8 ptr var_000000F8
008CAACB: push 00000000h
008CAACD: push 00000000h
008CAACF: push 00000001h
008CAAD1: push 00000000h
008CAAD3: lea eax, var_000000B0
008CAAD9: push eax
008CAADA: push 00000010h
008CAADC: push 00000880h
008CAAE1: call 00410946h ; ReDim
008CAAE6: add esp, 0000001Ch
008CAAE9: push 00000000h
008CAAEB: push 00000008h
008CAAED: push 00440E58h
008CAAF2: push 00000000h
008CAAF4: push 00000017h
008CAAF6: mov eax, [ebp+08h]
008CAAF9: mov eax, [eax]
008CAAFB: push [ebp+08h]
008CAAFE: call [eax+00000310h]
008CAB04: push eax
008CAB05: lea eax, var_30
008CAB08: push eax
008CAB09: call 00410A84h ; Set (object)
008CAB0E: push eax
008CAB0F: lea eax, var_5C
008CAB12: push eax
008CAB13: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CAB18: add esp, 00000010h
008CAB1B: push eax
008CAB1C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CAB21: push eax
008CAB22: lea eax, var_34
008CAB25: push eax
008CAB26: call 00410A84h ; Set (object)
008CAB2B: push eax
008CAB2C: lea eax, var_6C
008CAB2F: push eax
008CAB30: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CAB35: add esp, 00000010h
008CAB38: push eax
008CAB39: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008CAB3E: mov var_000000B8, eax
008CAB44: mov var_000000C0, 00000003h
008CAB4E: push 00000000h
008CAB50: push 00000000h
008CAB52: push 00440E58h
008CAB57: push 00000010h
008CAB59: pop eax
008CAB5A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CAB5F: lea esi, var_000000C0
008CAB65: mov edi, esp
008CAB67: movsd 
008CAB68: movsd 
008CAB69: movsd 
008CAB6A: movsd 
008CAB6B: push 00000001h
008CAB6D: push 00000000h
008CAB6F: push 00440E48h
008CAB74: push 00000000h
008CAB76: push 00000018h
008CAB78: mov eax, [ebp+08h]
008CAB7B: mov eax, [eax]
008CAB7D: push [ebp+08h]
008CAB80: call [eax+00000310h]
008CAB86: push eax
008CAB87: lea eax, var_38
008CAB8A: push eax
008CAB8B: call 00410A84h ; Set (object)
008CAB90: push eax
008CAB91: lea eax, var_7C
008CAB94: push eax
008CAB95: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CAB9A: add esp, 00000010h
008CAB9D: push eax
008CAB9E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CABA3: push eax
008CABA4: lea eax, var_3C
008CABA7: push eax
008CABA8: call 00410A84h ; Set (object)
008CABAD: push eax
008CABAE: lea eax, var_0000008C
008CABB4: push eax
008CABB5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CABBA: add esp, 00000020h
008CABBD: push eax
008CABBE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CABC3: push eax
008CABC4: lea eax, var_40
008CABC7: push eax
008CABC8: call 00410A84h ; Set (object)
008CABCD: push eax
008CABCE: lea eax, var_0000009C
008CABD4: push eax
008CABD5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CABDA: add esp, 00000010h
008CABDD: push eax
008CABDE: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CABE3: mov var_000000A4, eax
008CABE9: mov var_000000AC, 00000008h
008CABF3: lea esi, var_000000AC
008CABF9: push 00000000h
008CABFB: push var_000000B0
008CAC01: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008CAC06: mov ecx, eax
008CAC08: mov edx, esi
008CAC0A: call 00410940h ; msvbvm60.dll.__vbaVarZero
008CAC0F: mov edx, 0043D504h ; x20
008CAC14: lea ecx, var_28
008CAC17: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008CAC1C: lea eax, var_000000B0
008CAC22: push eax
008CAC23: lea eax, var_28
008CAC26: push eax
008CAC27: fld real8 ptr var_000000F8
008CAC2D: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008CAC32: push eax
008CAC33: call 007A6910h
008CAC38: lea eax, var_000000B0
008CAC3E: push eax
008CAC3F: push 00000000h
008CAC41: call 00410934h ; Erase
008CAC46: lea eax, var_28
008CAC49: push eax
008CAC4A: lea eax, var_24
008CAC4D: push eax
008CAC4E: push 00000002h
008CAC50: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CAC55: add esp, 0000000Ch
008CAC58: lea eax, var_40
008CAC5B: push eax
008CAC5C: lea eax, var_3C
008CAC5F: push eax
008CAC60: lea eax, var_38
008CAC63: push eax
008CAC64: lea eax, var_34
008CAC67: push eax
008CAC68: lea eax, var_30
008CAC6B: push eax
008CAC6C: push 00000005h
008CAC6E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CAC73: add esp, 00000018h
008CAC76: lea eax, var_0000009C
008CAC7C: push eax
008CAC7D: lea eax, var_0000008C
008CAC83: push eax
008CAC84: lea eax, var_7C
008CAC87: push eax
008CAC88: lea eax, var_6C
008CAC8B: push eax
008CAC8C: lea eax, var_5C
008CAC8F: push eax
008CAC90: push 00000005h
008CAC92: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CAC97: add esp, 00000018h
008CAC9A: jmp 008CAEC6h
008CAC9F: lea eax, var_24
008CACA2: push eax
008CACA3: mov eax, [ebp+08h]
008CACA6: mov eax, [eax]
008CACA8: push [ebp+08h]
008CACAB: call [eax+000001C0h]
008CACB1: fclex 
008CACB3: mov var_000000FC, eax
008CACB9: cmp var_000000FC, 00000000h
008CACC0: jnl 8CACE2h
008CACC2: push 000001C0h
008CACC7: push 00448B3Ch
008CACCC: push [ebp+08h]
008CACCF: push var_000000FC
008CACD5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CACDA: mov var_00000144, eax
008CACE0: jmp 8CACE9h
008CACE2: and var_00000144, 00000000h
008CACE9: push var_24
008CACEC: call 004109DCh ; Val(arg_1)
008CACF1: fstp real8 ptr var_000000F8
008CACF7: push 00000000h
008CACF9: push 00000000h
008CACFB: push 00000001h
008CACFD: push 00000000h
008CACFF: lea eax, var_000000B0
008CAD05: push eax
008CAD06: push 00000010h
008CAD08: push 00000880h
008CAD0D: call 00410946h ; ReDim
008CAD12: add esp, 0000001Ch
008CAD15: push 00000000h
008CAD17: push 00000008h
008CAD19: push 00440E58h
008CAD1E: push 00000000h
008CAD20: push 00000017h
008CAD22: mov eax, [ebp+08h]
008CAD25: mov eax, [eax]
008CAD27: push [ebp+08h]
008CAD2A: call [eax+00000310h]
008CAD30: push eax
008CAD31: lea eax, var_30
008CAD34: push eax
008CAD35: call 00410A84h ; Set (object)
008CAD3A: push eax
008CAD3B: lea eax, var_5C
008CAD3E: push eax
008CAD3F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CAD44: add esp, 00000010h
008CAD47: push eax
008CAD48: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CAD4D: push eax
008CAD4E: lea eax, var_34
008CAD51: push eax
008CAD52: call 00410A84h ; Set (object)
008CAD57: push eax
008CAD58: lea eax, var_6C
008CAD5B: push eax
008CAD5C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CAD61: add esp, 00000010h
008CAD64: push eax
008CAD65: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008CAD6A: mov var_000000B8, eax
008CAD70: mov var_000000C0, 00000003h
008CAD7A: push 00000000h
008CAD7C: push 00000000h
008CAD7E: push 00440E58h
008CAD83: push 00000010h
008CAD85: pop eax
008CAD86: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CAD8B: lea esi, var_000000C0
008CAD91: mov edi, esp
008CAD93: movsd 
008CAD94: movsd 
008CAD95: movsd 
008CAD96: movsd 
008CAD97: push 00000001h
008CAD99: push 00000000h
008CAD9B: push 00440E48h
008CADA0: push 00000000h
008CADA2: push 00000018h
008CADA4: mov eax, [ebp+08h]
008CADA7: mov eax, [eax]
008CADA9: push [ebp+08h]
008CADAC: call [eax+00000310h]
008CADB2: push eax
008CADB3: lea eax, var_38
008CADB6: push eax
008CADB7: call 00410A84h ; Set (object)
008CADBC: push eax
008CADBD: lea eax, var_7C
008CADC0: push eax
008CADC1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CADC6: add esp, 00000010h
008CADC9: push eax
008CADCA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CADCF: push eax
008CADD0: lea eax, var_3C
008CADD3: push eax
008CADD4: call 00410A84h ; Set (object)
008CADD9: push eax
008CADDA: lea eax, var_0000008C
008CADE0: push eax
008CADE1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CADE6: add esp, 00000020h
008CADE9: push eax
008CADEA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CADEF: push eax
008CADF0: lea eax, var_40
008CADF3: push eax
008CADF4: call 00410A84h ; Set (object)
008CADF9: push eax
008CADFA: lea eax, var_0000009C
008CAE00: push eax
008CAE01: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CAE06: add esp, 00000010h
008CAE09: push eax
008CAE0A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CAE0F: mov var_000000A4, eax
008CAE15: mov var_000000AC, 00000008h
008CAE1F: lea esi, var_000000AC
008CAE25: push 00000000h
008CAE27: push var_000000B0
008CAE2D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008CAE32: mov ecx, eax
008CAE34: mov edx, esi
008CAE36: call 00410940h ; msvbvm60.dll.__vbaVarZero
008CAE3B: mov edx, 0043D510h ; x21
008CAE40: lea ecx, var_28
008CAE43: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008CAE48: lea eax, var_000000B0
008CAE4E: push eax
008CAE4F: lea eax, var_28
008CAE52: push eax
008CAE53: fld real8 ptr var_000000F8
008CAE59: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008CAE5E: push eax
008CAE5F: call 007A6910h
008CAE64: lea eax, var_000000B0
008CAE6A: push eax
008CAE6B: push 00000000h
008CAE6D: call 00410934h ; Erase
008CAE72: lea eax, var_28
008CAE75: push eax
008CAE76: lea eax, var_24
008CAE79: push eax
008CAE7A: push 00000002h
008CAE7C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CAE81: add esp, 0000000Ch
008CAE84: lea eax, var_40
008CAE87: push eax
008CAE88: lea eax, var_3C
008CAE8B: push eax
008CAE8C: lea eax, var_38
008CAE8F: push eax
008CAE90: lea eax, var_34
008CAE93: push eax
008CAE94: lea eax, var_30
008CAE97: push eax
008CAE98: push 00000005h
008CAE9A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CAE9F: add esp, 00000018h
008CAEA2: lea eax, var_0000009C
008CAEA8: push eax
008CAEA9: lea eax, var_0000008C
008CAEAF: push eax
008CAEB0: lea eax, var_7C
008CAEB3: push eax
008CAEB4: lea eax, var_6C
008CAEB7: push eax
008CAEB8: lea eax, var_5C
008CAEBB: push eax
008CAEBC: push 00000005h
008CAEBE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CAEC3: add esp, 00000018h
008CAEC6: wait 
008CAEC7: push 008CAF69h
008CAECC: jmp 8CAF48h
008CAECE: lea eax, var_2C
008CAED1: push eax
008CAED2: lea eax, var_28
008CAED5: push eax
008CAED6: lea eax, var_24
008CAED9: push eax
008CAEDA: push 00000003h
008CAEDC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CAEE1: add esp, 00000010h
008CAEE4: lea eax, var_4C
008CAEE7: push eax
008CAEE8: lea eax, var_48
008CAEEB: push eax
008CAEEC: lea eax, var_44
008CAEEF: push eax
008CAEF0: lea eax, var_40
008CAEF3: push eax
008CAEF4: lea eax, var_3C
008CAEF7: push eax
008CAEF8: lea eax, var_38
008CAEFB: push eax
008CAEFC: lea eax, var_34
008CAEFF: push eax
008CAF00: lea eax, var_30
008CAF03: push eax
008CAF04: push 00000008h
008CAF06: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CAF0B: add esp, 00000024h
008CAF0E: lea eax, var_000000AC
008CAF14: push eax
008CAF15: lea eax, var_0000009C
008CAF1B: push eax
008CAF1C: lea eax, var_0000008C
008CAF22: push eax
008CAF23: lea eax, var_7C
008CAF26: push eax
008CAF27: lea eax, var_6C
008CAF2A: push eax
008CAF2B: lea eax, var_5C
008CAF2E: push eax
008CAF2F: push 00000006h
008CAF31: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CAF36: add esp, 0000001Ch
008CAF39: lea eax, var_000000B0
008CAF3F: push eax
008CAF40: push 00000000h
008CAF42: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008CAF47: ret 
End Sub

Private sub unknown_8CBF4B
008CBF4B: push ebp
008CBF4C: mov ebp, esp
008CBF4E: sub esp, 00000014h
008CBF51: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CBF56: mov eax, fs:[00h]
008CBF5C: push eax
008CBF5D: mov fs:[00000000h], esp
008CBF64: push 00000064h
008CBF66: pop eax
008CBF67: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CBF6C: push ebx
008CBF6D: push esi
008CBF6E: push edi
008CBF6F: mov var_14, esp
008CBF72: mov var_10, 0040F7D8h
008CBF79: mov var_0C, 00000000h
008CBF80: mov var_08, 00000000h
008CBF87: mov edx, [ebp+0Ch]
008CBF8A: lea ecx, var_24
008CBF8D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008CBF92: push 00000001h
008CBF94: call 00410A60h ; On Error ...
008CBF99: mov var_38, 00000001h
008CBFA0: mov var_40, 00000002h
008CBFA7: lea eax, var_24
008CBFAA: mov var_58, eax
008CBFAD: mov var_60, 00004008h
008CBFB4: lea eax, var_40
008CBFB7: push eax
008CBFB8: push 00000001h
008CBFBA: lea eax, var_60
008CBFBD: push eax
008CBFBE: lea eax, var_50
008CBFC1: push eax
008CBFC2: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
008CBFC7: lea eax, var_50
008CBFCA: push eax
008CBFCB: lea eax, var_30
008CBFCE: push eax
008CBFCF: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008CBFD4: push eax
008CBFD5: call 00410BE0h ; Asc(arg_1)
008CBFDA: movsx eax, ax
008CBFDD: mov var_20, eax
008CBFE0: lea ecx, var_30
008CBFE3: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008CBFE8: lea eax, var_50
008CBFEB: push eax
008CBFEC: lea eax, var_40
008CBFEF: push eax
008CBFF0: push 00000002h
008CBFF2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CBFF7: add esp, 0000000Ch
008CBFFA: mov var_38, 00000001h
008CC001: mov var_40, 00000002h
008CC008: lea eax, var_24
008CC00B: mov var_58, eax
008CC00E: mov var_60, 00004008h
008CC015: lea eax, var_40
008CC018: push eax
008CC019: push 00000002h
008CC01B: lea eax, var_60
008CC01E: push eax
008CC01F: lea eax, var_50
008CC022: push eax
008CC023: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
008CC028: lea eax, var_50
008CC02B: push eax
008CC02C: lea eax, var_30
008CC02F: push eax
008CC030: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008CC035: push eax
008CC036: call 00410BE0h ; Asc(arg_1)
008CC03B: movsx eax, ax
008CC03E: mov var_28, eax
008CC041: lea ecx, var_30
008CC044: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008CC049: lea eax, var_50
008CC04C: push eax
008CC04D: lea eax, var_40
008CC050: push eax
008CC051: push 00000002h
008CC053: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CC058: add esp, 0000000Ch
008CC05B: mov eax, var_20
008CC05E: imul eax, 00000100h
008CC064: jo 8CC0BFh
008CC066: add eax, var_28
008CC069: jo 8CC0BFh
008CC06B: mov var_2C, eax
008CC06E: jmp 8CC074h
008CC070: and var_2C, 00000000h
008CC074: call 004109C4h ; msvbvm60.dll.__vbaExitProc
008CC079: push 008CC0A4h
008CC07E: jmp 8CC09Bh
008CC080: lea ecx, var_30
008CC083: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008CC088: lea eax, var_50
008CC08B: push eax
008CC08C: lea eax, var_40
008CC08F: push eax
008CC090: push 00000002h
008CC092: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CC097: add esp, 0000000Ch
008CC09A: ret 
End Sub

