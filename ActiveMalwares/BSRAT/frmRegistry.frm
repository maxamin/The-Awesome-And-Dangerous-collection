VERSION 5.00
Begin VB.Form frmRegistry
  Caption = "Registry manager"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmRegistry.frx":0
  LinkTopic = "Form1"
  ClientLeft = 225
  ClientTop = 555
  ClientWidth = 14220
  ClientHeight = 6435
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer Timer1
    Interval = 800
    Left = 13680
    Top = 0
  End
  Begin MSComctlLib.ImageList imgReg
  End
  Begin VB.ComboBox cmbRegFolders
    Style = 2
    Left = 120
    Top = 120
    Width = 3135
    Height = 315
    TabIndex = 0
    List = "frmRegistry.frx":8E79
    ItemData = "frmRegistry.frx":8ED8
  End
  Begin MSComctlLib.ListView lstKeys
    Left = 120
    Top = 480
    Width = 3135
    Height = 5895
    TabIndex = 1
  End
  Begin MSComctlLib.ListView lstValues
    Left = 3360
    Top = 480
    Width = 10815
    Height = 5895
    TabIndex = 2
  End
  Begin VB.Label lblPath
    Caption = "Computer\"
    ForeColor = &HFF0000&
    Left = 3375
    Top = 120
    Width = 10800
    Height = 255
    TabIndex = 3
    Tag = "TFFT"
    BackStyle = 0 'Transparent
  End
  Begin VB.Menu mnuRegMenu
    Visible = 0   'False
    Caption = "Edit"
    Begin VB.Menu mnuReg
      Index = 0
      Caption = "Refresh"
    End
    Begin VB.Menu mnuReg
      Index = 1
      Caption = "-"
    End
    Begin VB.Menu mnuReg
      Index = 2
      Caption = "New key"
    End
    Begin VB.Menu mnuReg
      Index = 3
      Caption = "New value"
    End
    Begin VB.Menu mnuReg
      Index = 4
      Caption = "-"
    End
    Begin VB.Menu mnuReg
      Index = 5
      Caption = "Delete key"
    End
    Begin VB.Menu mnuReg
      Index = 6
      Caption = "Delete value"
    End
  End
End

Attribute VB_Name = "frmRegistry"


Private sub Form__81502B
0081502B: push ebp
0081502C: mov ebp, esp
0081502E: sub esp, 0000000Ch
00815031: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00815036: mov eax, fs:[00h]
0081503C: push eax
0081503D: mov fs:[00000000h], esp
00815044: push 0000002Ch
00815046: pop eax
00815047: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081504C: push ebx
0081504D: push esi
0081504E: push edi
0081504F: mov var_0C, esp
00815052: mov var_08, 0040AB70h
00815059: mov eax, [ebp+08h]
0081505C: and eax, 00000001h
0081505F: mov var_04, eax
00815062: mov eax, [ebp+08h]
00815065: and al, FEh
00815067: mov [ebp+08h], eax
0081506A: mov eax, [ebp+08h]
0081506D: mov eax, [eax]
0081506F: push [ebp+08h]
00815072: call [eax+04h]
00815075: mov eax, [ebp+08h]
00815078: mov eax, [eax]
0081507A: push [ebp+08h]
0081507D: call [eax+00000310h]
00815083: mov var_20, eax
00815086: mov var_28, 00000009h
0081508D: push 00000010h
0081508F: pop eax
00815090: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00815095: lea esi, var_28
00815098: mov edi, esp
0081509A: movsd 
0081509B: movsd 
0081509C: movsd 
0081509D: movsd 
0081509E: push 0000000Eh
008150A0: mov eax, [ebp+08h]
008150A3: mov eax, [eax]
008150A5: push [ebp+08h]
008150A8: call [eax+00000314h]
008150AE: push eax
008150AF: lea eax, var_18
008150B2: push eax
008150B3: call 00410A84h ; Set (object)
008150B8: push eax
008150B9: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008150BE: lea ecx, var_18
008150C1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008150C6: lea ecx, var_28
008150C9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008150CE: mov eax, [ebp+08h]
008150D1: mov eax, [eax]
008150D3: push [ebp+08h]
008150D6: call [eax+00000310h]
008150DC: mov var_20, eax
008150DF: mov var_28, 00000009h
008150E6: push 00000010h
008150E8: pop eax
008150E9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008150EE: lea esi, var_28
008150F1: mov edi, esp
008150F3: movsd 
008150F4: movsd 
008150F5: movsd 
008150F6: movsd 
008150F7: push 0000000Eh
008150F9: mov eax, [ebp+08h]
008150FC: mov eax, [eax]
008150FE: push [ebp+08h]
00815101: call [eax+00000318h]
00815107: push eax
00815108: lea eax, var_18
0081510B: push eax
0081510C: call 00410A84h ; Set (object)
00815111: push eax
00815112: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00815117: lea ecx, var_18
0081511A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081511F: lea ecx, var_28
00815122: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00815127: mov var_04, 00000000h
0081512E: push 00815147h
00815133: jmp 815146h
00815135: lea ecx, var_18
00815138: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081513D: lea ecx, var_28
00815140: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00815145: ret 
End Sub

Private sub Form__815166
00815166: push ebp
00815167: mov ebp, esp
00815169: sub esp, 00000018h
0081516C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00815171: mov eax, fs:[00h]
00815177: push eax
00815178: mov fs:[00000000h], esp
0081517F: mov eax, 00000148h
00815184: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00815189: push ebx
0081518A: push esi
0081518B: push edi
0081518C: mov var_18, esp
0081518F: mov var_14, 0040AB80h
00815196: mov eax, [ebp+08h]
00815199: and eax, 00000001h
0081519C: mov var_10, eax
0081519F: mov eax, [ebp+08h]
008151A2: and al, FEh
008151A4: mov [ebp+08h], eax
008151A7: mov var_0C, 00000000h
008151AE: mov eax, [ebp+08h]
008151B1: mov eax, [eax]
008151B3: push [ebp+08h]
008151B6: call [eax+04h]
008151B9: mov var_04, 00000001h
008151C0: mov var_04, 00000002h
008151C7: push FFFFFFFFh
008151C9: call 00410A60h ; On Error ...
008151CE: mov var_04, 00000003h
008151D5: mov eax, [ebp+08h]
008151D8: mov eax, [eax]
008151DA: push [ebp+08h]
008151DD: call [eax+00000300h]
008151E3: push eax
008151E4: lea eax, var_24
008151E7: push eax
008151E8: call 00410A84h ; Set (object)
008151ED: mov var_00000110, eax
008151F3: mov var_000000A0, 80020004h
008151FD: mov var_000000A8, 0000000Ah
00815207: mov var_00000090, 80020004h
00815211: mov var_00000098, 0000000Ah
0081521B: mov var_80, 00000028h
00815222: mov var_00000088, 00000002h
0081522C: push 00000010h
0081522E: pop eax
0081522F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00815234: lea esi, var_000000A8
0081523A: mov edi, esp
0081523C: movsd 
0081523D: movsd 
0081523E: movsd 
0081523F: movsd 
00815240: push 00000010h
00815242: pop eax
00815243: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00815248: lea esi, var_00000098
0081524E: mov edi, esp
00815250: movsd 
00815251: movsd 
00815252: movsd 
00815253: movsd 
00815254: push 00000010h
00815256: pop eax
00815257: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081525C: lea esi, var_00000088
00815262: mov edi, esp
00815264: movsd 
00815265: movsd 
00815266: movsd 
00815267: movsd 
00815268: fld real4 ptr [00402B44h]
0081526E: push ecx
0081526F: fstp real4 ptr [esp]
00815272: mov eax, var_00000110
00815278: mov eax, [eax]
0081527A: push var_00000110
00815280: call [eax+00000204h]
00815286: fclex 
00815288: mov var_00000114, eax
0081528E: cmp var_00000114, 00000000h
00815295: jnl 8152BAh
00815297: push 00000204h
0081529C: push 0044C944h
008152A1: push var_00000110
008152A7: push var_00000114
008152AD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008152B2: mov var_00000148, eax
008152B8: jmp 8152C1h
008152BA: and var_00000148, 00000000h
008152C1: lea ecx, var_24
008152C4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008152C9: mov var_04, 00000004h
008152D0: mov eax, [ebp+08h]
008152D3: mov eax, [eax]
008152D5: push [ebp+08h]
008152D8: call [eax+00000300h]
008152DE: push eax
008152DF: lea eax, var_28
008152E2: push eax
008152E3: call 00410A84h ; Set (object)
008152E8: mov var_00000110, eax
008152EE: lea eax, var_00000100
008152F4: push eax
008152F5: mov eax, var_00000110
008152FB: mov eax, [eax]
008152FD: push var_00000110
00815303: call [eax+00000088h]
00815309: fclex 
0081530B: mov var_00000114, eax
00815311: cmp var_00000114, 00000000h
00815318: jnl 81533Dh
0081531A: push 00000088h
0081531F: push 0044C944h
00815324: push var_00000110
0081532A: push var_00000114
00815330: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00815335: mov var_0000014C, eax
0081533B: jmp 815344h
0081533D: and var_0000014C, 00000000h
00815344: mov eax, [ebp+08h]
00815347: mov eax, [eax]
00815349: push [ebp+08h]
0081534C: call [eax+00000300h]
00815352: push eax
00815353: lea eax, var_30
00815356: push eax
00815357: call 00410A84h ; Set (object)
0081535C: mov var_00000118, eax
00815362: lea eax, var_00000108
00815368: push eax
00815369: mov eax, var_00000118
0081536F: mov eax, [eax]
00815371: push var_00000118
00815377: call [eax+78h]
0081537A: fclex 
0081537C: mov var_0000011C, eax
00815382: cmp var_0000011C, 00000000h
00815389: jnl 8153ABh
0081538B: push 00000078h
0081538D: push 0044C944h
00815392: push var_00000118
00815398: push var_0000011C
0081539E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008153A3: mov var_00000150, eax
008153A9: jmp 8153B2h
008153AB: and var_00000150, 00000000h
008153B2: mov eax, [ebp+08h]
008153B5: mov eax, [eax]
008153B7: push [ebp+08h]
008153BA: call [eax+00000300h]
008153C0: push eax
008153C1: lea eax, var_34
008153C4: push eax
008153C5: call 00410A84h ; Set (object)
008153CA: mov var_00000120, eax
008153D0: lea eax, var_0000010C
008153D6: push eax
008153D7: mov eax, var_00000120
008153DD: mov eax, [eax]
008153DF: push var_00000120
008153E5: call [eax+00000088h]
008153EB: fclex 
008153ED: mov var_00000124, eax
008153F3: cmp var_00000124, 00000000h
008153FA: jnl 81541Fh
008153FC: push 00000088h
00815401: push 0044C944h
00815406: push var_00000120
0081540C: push var_00000124
00815412: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00815417: mov var_00000154, eax
0081541D: jmp 815426h
0081541F: and var_00000154, 00000000h
00815426: fld real4 ptr [00402B44h]
0081542C: fstp real4 ptr var_80
0081542F: mov var_00000088, 00000004h
00815439: mov eax, [ebp+08h]
0081543C: mov eax, [eax]
0081543E: push [ebp+08h]
00815441: call [eax+00000300h]
00815447: push eax
00815448: lea eax, var_24
0081544B: push eax
0081544C: call 00410A84h ; Set (object)
00815451: mov var_00000128, eax
00815457: lea eax, var_000000FC
0081545D: push eax
0081545E: mov eax, var_00000128
00815464: mov eax, [eax]
00815466: push var_00000128
0081546C: call [eax+78h]
0081546F: fclex 
00815471: mov var_0000012C, eax
00815477: cmp var_0000012C, 00000000h
0081547E: jnl 8154A0h
00815480: push 00000078h
00815482: push 0044C944h
00815487: push var_00000128
0081548D: push var_0000012C
00815493: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00815498: mov var_00000158, eax
0081549E: jmp 8154A7h
008154A0: and var_00000158, 00000000h
008154A7: fld real4 ptr var_000000FC
008154AD: fadd real4 ptr var_00000100
008154B3: fadd real4 ptr [00402B5Ch]
008154B9: fstp real4 ptr var_000000A0
008154BF: fstsw ax
008154C1: test al, 0Dh
008154C3: jnz 00815A5Dh
008154C9: mov var_000000A8, 00000004h
008154D3: push 00000000h
008154D5: push 80010005h
008154DA: mov eax, [ebp+08h]
008154DD: mov eax, [eax]
008154DF: push [ebp+08h]
008154E2: call [eax+00000314h]
008154E8: push eax
008154E9: lea eax, var_2C
008154EC: push eax
008154ED: call 00410A84h ; Set (object)
008154F2: push eax
008154F3: lea eax, var_48
008154F6: push eax
008154F7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008154FC: add esp, 00000010h
008154FF: push eax
00815500: call 004107EAh ; msvbvm60.dll.__vbaR4Var
00815505: fstp real4 ptr var_000000C0
0081550B: mov var_000000C8, 00000004h
00815515: lea eax, var_00000104
0081551B: push eax
0081551C: mov eax, [ebp+08h]
0081551F: mov eax, [eax]
00815521: push [ebp+08h]
00815524: call [eax+00000088h]
0081552A: fclex 
0081552C: mov var_00000130, eax
00815532: cmp var_00000130, 00000000h
00815539: jnl 81555Bh
0081553B: push 00000088h
00815540: push 00444DDCh
00815545: push [ebp+08h]
00815548: push var_00000130
0081554E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00815553: mov var_0000015C, eax
00815559: jmp 815562h
0081555B: and var_0000015C, 00000000h
00815562: fld real4 ptr var_00000104
00815568: fsub real4 ptr var_00000108
0081556E: fsub real4 ptr var_0000010C
00815574: fsub real4 ptr [0040ABC0h]
0081557A: fstp real4 ptr var_000000E0
00815580: fstsw ax
00815582: test al, 0Dh
00815584: jnz 00815A5Dh
0081558A: mov var_000000E8, 00000004h
00815594: push 00000010h
00815596: pop eax
00815597: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081559C: lea esi, var_00000088
008155A2: mov edi, esp
008155A4: movsd 
008155A5: movsd 
008155A6: movsd 
008155A7: movsd 
008155A8: push 00000010h
008155AA: pop eax
008155AB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008155B0: lea esi, var_000000A8
008155B6: mov edi, esp
008155B8: movsd 
008155B9: movsd 
008155BA: movsd 
008155BB: movsd 
008155BC: push 00000010h
008155BE: pop eax
008155BF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008155C4: lea esi, var_000000C8
008155CA: mov edi, esp
008155CC: movsd 
008155CD: movsd 
008155CE: movsd 
008155CF: movsd 
008155D0: push 00000010h
008155D2: pop eax
008155D3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008155D8: lea esi, var_000000E8
008155DE: mov edi, esp
008155E0: movsd 
008155E1: movsd 
008155E2: movsd 
008155E3: movsd 
008155E4: push 00000004h
008155E6: push 80011002h
008155EB: mov eax, [ebp+08h]
008155EE: mov eax, [eax]
008155F0: push [ebp+08h]
008155F3: call [eax+00000314h]
008155F9: push eax
008155FA: lea eax, var_38
008155FD: push eax
008155FE: call 00410A84h ; Set (object)
00815603: push eax
00815604: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00815609: add esp, 0000004Ch
0081560C: lea eax, var_38
0081560F: push eax
00815610: lea eax, var_34
00815613: push eax
00815614: lea eax, var_30
00815617: push eax
00815618: lea eax, var_2C
0081561B: push eax
0081561C: lea eax, var_28
0081561F: push eax
00815620: lea eax, var_24
00815623: push eax
00815624: push 00000006h
00815626: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081562B: add esp, 0000001Ch
0081562E: lea ecx, var_48
00815631: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00815636: mov var_04, 00000005h
0081563D: push 00000000h
0081563F: push 80010005h
00815644: mov eax, [ebp+08h]
00815647: mov eax, [eax]
00815649: push [ebp+08h]
0081564C: call [eax+00000314h]
00815652: push eax
00815653: lea eax, var_2C
00815656: push eax
00815657: call 00410A84h ; Set (object)
0081565C: push eax
0081565D: lea eax, var_68
00815660: push eax
00815661: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00815666: add esp, 00000010h
00815669: push 00000000h
0081566B: push 80010005h
00815670: mov eax, [ebp+08h]
00815673: mov eax, [eax]
00815675: push [ebp+08h]
00815678: call [eax+00000314h]
0081567E: push eax
0081567F: lea eax, var_24
00815682: push eax
00815683: call 00410A84h ; Set (object)
00815688: push eax
00815689: lea eax, var_48
0081568C: push eax
0081568D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00815692: add esp, 00000010h
00815695: push eax
00815696: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0081569B: fadd real4 ptr [00402BA4h]
008156A1: fstp real4 ptr var_80
008156A4: fstsw ax
008156A6: test al, 0Dh
008156A8: jnz 00815A5Dh
008156AE: mov var_00000088, 00000004h
008156B8: push 00000000h
008156BA: push 80010004h
008156BF: mov eax, [ebp+08h]
008156C2: mov eax, [eax]
008156C4: push [ebp+08h]
008156C7: call [eax+00000314h]
008156CD: push eax
008156CE: lea eax, var_28
008156D1: push eax
008156D2: call 00410A84h ; Set (object)
008156D7: push eax
008156D8: lea eax, var_58
008156DB: push eax
008156DC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008156E1: add esp, 00000010h
008156E4: push eax
008156E5: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008156EA: fstp real4 ptr var_000000A0
008156F0: mov var_000000A8, 00000004h
008156FA: lea eax, var_000000FC
00815700: push eax
00815701: mov eax, [ebp+08h]
00815704: mov eax, [eax]
00815706: push [ebp+08h]
00815709: call [eax+00000080h]
0081570F: fclex 
00815711: mov var_00000110, eax
00815717: cmp var_00000110, 00000000h
0081571E: jnl 815740h
00815720: push 00000080h
00815725: push 00444DDCh
0081572A: push [ebp+08h]
0081572D: push var_00000110
00815733: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00815738: mov var_00000160, eax
0081573E: jmp 815747h
00815740: and var_00000160, 00000000h
00815747: lea eax, var_68
0081574A: push eax
0081574B: call 004107EAh ; msvbvm60.dll.__vbaR4Var
00815750: fsubr real4 ptr var_000000FC
00815756: fsub real4 ptr [0040ABBCh]
0081575C: fstp real4 ptr var_000000C0
00815762: fstsw ax
00815764: test al, 0Dh
00815766: jnz 00815A5Dh
0081576C: mov var_000000C8, 00000004h
00815776: push 00000000h
00815778: push 80010006h
0081577D: mov eax, [ebp+08h]
00815780: mov eax, [eax]
00815782: push [ebp+08h]
00815785: call [eax+00000314h]
0081578B: push eax
0081578C: lea eax, var_30
0081578F: push eax
00815790: call 00410A84h ; Set (object)
00815795: push eax
00815796: lea eax, var_78
00815799: push eax
0081579A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081579F: add esp, 00000010h
008157A2: push eax
008157A3: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008157A8: fstp real4 ptr var_000000E0
008157AE: mov var_000000E8, 00000004h
008157B8: push 00000010h
008157BA: pop eax
008157BB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008157C0: lea esi, var_00000088
008157C6: mov edi, esp
008157C8: movsd 
008157C9: movsd 
008157CA: movsd 
008157CB: movsd 
008157CC: push 00000010h
008157CE: pop eax
008157CF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008157D4: lea esi, var_000000A8
008157DA: mov edi, esp
008157DC: movsd 
008157DD: movsd 
008157DE: movsd 
008157DF: movsd 
008157E0: push 00000010h
008157E2: pop eax
008157E3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008157E8: lea esi, var_000000C8
008157EE: mov edi, esp
008157F0: movsd 
008157F1: movsd 
008157F2: movsd 
008157F3: movsd 
008157F4: push 00000010h
008157F6: pop eax
008157F7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008157FC: lea esi, var_000000E8
00815802: mov edi, esp
00815804: movsd 
00815805: movsd 
00815806: movsd 
00815807: movsd 
00815808: push 00000004h
0081580A: push 80011002h
0081580F: mov eax, [ebp+08h]
00815812: mov eax, [eax]
00815814: push [ebp+08h]
00815817: call [eax+00000318h]
0081581D: push eax
0081581E: lea eax, var_34
00815821: push eax
00815822: call 00410A84h ; Set (object)
00815827: push eax
00815828: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0081582D: add esp, 0000004Ch
00815830: lea eax, var_34
00815833: push eax
00815834: lea eax, var_30
00815837: push eax
00815838: lea eax, var_2C
0081583B: push eax
0081583C: lea eax, var_28
0081583F: push eax
00815840: lea eax, var_24
00815843: push eax
00815844: push 00000005h
00815846: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081584B: add esp, 00000018h
0081584E: lea eax, var_78
00815851: push eax
00815852: lea eax, var_68
00815855: push eax
00815856: lea eax, var_58
00815859: push eax
0081585A: lea eax, var_48
0081585D: push eax
0081585E: push 00000004h
00815860: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00815865: add esp, 00000014h
00815868: mov var_04, 00000006h
0081586F: mov eax, [ebp+08h]
00815872: mov eax, [eax]
00815874: push [ebp+08h]
00815877: call [eax+00000300h]
0081587D: push eax
0081587E: lea eax, var_24
00815881: push eax
00815882: call 00410A84h ; Set (object)
00815887: mov var_00000110, eax
0081588D: lea eax, var_000000FC
00815893: push eax
00815894: mov eax, var_00000110
0081589A: mov eax, [eax]
0081589C: push var_00000110
008158A2: call [eax+00000080h]
008158A8: fclex 
008158AA: mov var_00000114, eax
008158B0: cmp var_00000114, 00000000h
008158B7: jnl 8158DCh
008158B9: push 00000080h
008158BE: push 0044C944h
008158C3: push var_00000110
008158C9: push var_00000114
008158CF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008158D4: mov var_00000164, eax
008158DA: jmp 8158E3h
008158DC: and var_00000164, 00000000h
008158E3: mov eax, [ebp+08h]
008158E6: mov eax, [eax]
008158E8: push [ebp+08h]
008158EB: call [eax+00000304h]
008158F1: push eax
008158F2: lea eax, var_28
008158F5: push eax
008158F6: call 00410A84h ; Set (object)
008158FB: mov var_00000118, eax
00815901: mov var_000000A0, 80020004h
0081590B: mov var_000000A8, 0000000Ah
00815915: mov var_00000090, 80020004h
0081591F: mov var_00000098, 0000000Ah
00815929: mov var_80, 00000050h
00815930: mov var_00000088, 00000002h
0081593A: push 00000010h
0081593C: pop eax
0081593D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00815942: lea esi, var_000000A8
00815948: mov edi, esp
0081594A: movsd 
0081594B: movsd 
0081594C: movsd 
0081594D: movsd 
0081594E: push 00000010h
00815950: pop eax
00815951: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00815956: lea esi, var_00000098
0081595C: mov edi, esp
0081595E: movsd 
0081595F: movsd 
00815960: movsd 
00815961: movsd 
00815962: push 00000010h
00815964: pop eax
00815965: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081596A: lea esi, var_00000088
00815970: mov edi, esp
00815972: movsd 
00815973: movsd 
00815974: movsd 
00815975: movsd 
00815976: fld real4 ptr var_000000FC
0081597C: fadd real4 ptr [00402BA4h]
00815982: fstsw ax
00815984: test al, 0Dh
00815986: jnz 00815A5Dh
0081598C: push ecx
0081598D: fstp real4 ptr [esp]
00815990: mov eax, var_00000118
00815996: mov eax, [eax]
00815998: push var_00000118
0081599E: call [eax+000001D0h]
008159A4: fclex 
008159A6: mov var_0000011C, eax
008159AC: cmp var_0000011C, 00000000h
008159B3: jnl 8159D8h
008159B5: push 000001D0h
008159BA: push 004425E4h
008159BF: push var_00000118
008159C5: push var_0000011C
008159CB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008159D0: mov var_00000168, eax
008159D6: jmp 8159DFh
008159D8: and var_00000168, 00000000h
008159DF: lea eax, var_28
008159E2: push eax
008159E3: lea eax, var_24
008159E6: push eax
008159E7: push 00000002h
008159E9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008159EE: add esp, 0000000Ch
008159F1: mov var_10, 00000000h
008159F8: wait 
008159F9: push 00815A3Eh
008159FE: jmp 815A3Dh
00815A00: lea eax, var_38
00815A03: push eax
00815A04: lea eax, var_34
00815A07: push eax
00815A08: lea eax, var_30
00815A0B: push eax
00815A0C: lea eax, var_2C
00815A0F: push eax
00815A10: lea eax, var_28
00815A13: push eax
00815A14: lea eax, var_24
00815A17: push eax
00815A18: push 00000006h
00815A1A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00815A1F: add esp, 0000001Ch
00815A22: lea eax, var_78
00815A25: push eax
00815A26: lea eax, var_68
00815A29: push eax
00815A2A: lea eax, var_58
00815A2D: push eax
00815A2E: lea eax, var_48
00815A31: push eax
00815A32: push 00000004h
00815A34: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00815A39: add esp, 00000014h
00815A3C: ret 
End Sub

Private sub Timer1__817AA9
00817AA9: push ebp
00817AAA: mov ebp, esp
00817AAC: sub esp, 0000000Ch
00817AAF: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00817AB4: mov eax, fs:[00h]
00817ABA: push eax
00817ABB: mov fs:[00000000h], esp
00817AC2: push 0000003Ch
00817AC4: pop eax
00817AC5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00817ACA: push ebx
00817ACB: push esi
00817ACC: push edi
00817ACD: mov var_0C, esp
00817AD0: mov var_08, 0040AC70h
00817AD7: mov eax, [ebp+08h]
00817ADA: and eax, 00000001h
00817ADD: mov var_04, eax
00817AE0: mov eax, [ebp+08h]
00817AE3: and al, FEh
00817AE5: mov [ebp+08h], eax
00817AE8: mov eax, [ebp+08h]
00817AEB: mov eax, [eax]
00817AED: push [ebp+08h]
00817AF0: call [eax+04h]
00817AF3: cmp [008F2010h], 00000000h
00817AFA: jnz 817B14h
00817AFC: push 008F2010h
00817B01: push 00433984h
00817B06: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00817B0B: mov var_40, 008F2010h
00817B12: jmp 817B1Bh
00817B14: mov var_40, 008F2010h
00817B1B: mov eax, var_40
00817B1E: mov eax, [eax]
00817B20: mov ecx, var_40
00817B23: mov ecx, [ecx]
00817B25: mov ecx, [ecx]
00817B27: push eax
00817B28: call [ecx+00000380h]
00817B2E: push eax
00817B2F: lea eax, var_18
00817B32: push eax
00817B33: call 00410A84h ; Set (object)
00817B38: mov var_24, eax
00817B3B: lea eax, var_1C
00817B3E: push eax
00817B3F: push 00000003h
00817B41: mov eax, var_24
00817B44: mov eax, [eax]
00817B46: push var_24
00817B49: call [eax+40h]
00817B4C: fclex 
00817B4E: mov var_28, eax
00817B51: cmp var_28, 00000000h
00817B55: jnl 817B6Eh
00817B57: push 00000040h
00817B59: push 00440DE8h
00817B5E: push var_24
00817B61: push var_28
00817B64: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00817B69: mov var_44, eax
00817B6C: jmp 817B72h
00817B6E: and var_44, 00000000h
00817B72: mov eax, var_1C
00817B75: mov var_2C, eax
00817B78: lea eax, var_20
00817B7B: push eax
00817B7C: mov eax, var_2C
00817B7F: mov eax, [eax]
00817B81: push var_2C
00817B84: call [eax+000000E0h]
00817B8A: fclex 
00817B8C: mov var_30, eax
00817B8F: cmp var_30, 00000000h
00817B93: jnl 817BAFh
00817B95: push 000000E0h
00817B9A: push 00440DF8h
00817B9F: push var_2C
00817BA2: push var_30
00817BA5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00817BAA: mov var_48, eax
00817BAD: jmp 817BB3h
00817BAF: and var_48, 00000000h
00817BB3: xor eax, eax
00817BB5: cmp word ptr var_20, 0001h
00817BBA: setz al
00817BBD: neg eax
00817BBF: mov var_34, ax
00817BC3: lea eax, var_1C
00817BC6: push eax
00817BC7: lea eax, var_18
00817BCA: push eax
00817BCB: push 00000002h
00817BCD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00817BD2: add esp, 0000000Ch
00817BD5: movsx eax, word ptr var_34
00817BD9: test eax, eax
00817BDB: jz 817C1Bh
00817BDD: and word ptr var_20, 0000h
00817BE2: lea eax, var_20
00817BE5: push eax
00817BE6: mov eax, [ebp+08h]
00817BE9: mov eax, [eax]
00817BEB: push [ebp+08h]
00817BEE: call [eax+0000071Ch]
00817BF4: mov var_24, eax
00817BF7: cmp var_24, 00000000h
00817BFB: jnl 817C17h
00817BFD: push 0000071Ch
00817C02: push 00440360h
00817C07: push [ebp+08h]
00817C0A: push var_24
00817C0D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00817C12: mov var_4C, eax
00817C15: jmp 817C1Bh
00817C17: and var_4C, 00000000h
00817C1B: mov eax, [ebp+08h]
00817C1E: mov eax, [eax]
00817C20: push [ebp+08h]
00817C23: call [eax+000002FCh]
00817C29: push eax
00817C2A: lea eax, var_18
00817C2D: push eax
00817C2E: call 00410A84h ; Set (object)
00817C33: mov var_24, eax
00817C36: push 00000000h
00817C38: mov eax, var_24
00817C3B: mov eax, [eax]
00817C3D: push var_24
00817C40: call [eax+5Ch]
00817C43: fclex 
00817C45: mov var_28, eax
00817C48: cmp var_28, 00000000h
00817C4C: jnl 817C65h
00817C4E: push 0000005Ch
00817C50: push 00447A20h
00817C55: push var_24
00817C58: push var_28
00817C5B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00817C60: mov var_50, eax
00817C63: jmp 817C69h
00817C65: and var_50, 00000000h
00817C69: lea ecx, var_18
00817C6C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00817C71: mov var_04, 00000000h
00817C78: push 00817C93h
00817C7D: jmp 817C92h
00817C7F: lea eax, var_1C
00817C82: push eax
00817C83: lea eax, var_18
00817C86: push eax
00817C87: push 00000002h
00817C89: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00817C8E: add esp, 0000000Ch
00817C91: ret 
End Sub

Private sub lstValues__8162DE
008162DE: push ebp
008162DF: mov ebp, esp
008162E1: sub esp, 0000000Ch
008162E4: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008162E9: mov eax, fs:[00h]
008162EF: push eax
008162F0: mov fs:[00000000h], esp
008162F7: push 00000008h
008162F9: pop eax
008162FA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008162FF: push ebx
00816300: push esi
00816301: push edi
00816302: mov var_0C, esp
00816305: mov var_08, 0040ABF0h
0081630C: mov eax, [ebp+08h]
0081630F: and eax, 00000001h
00816312: mov var_04, eax
00816315: mov eax, [ebp+08h]
00816318: and al, FEh
0081631A: mov [ebp+08h], eax
0081631D: mov eax, [ebp+08h]
00816320: mov eax, [eax]
00816322: push [ebp+08h]
00816325: call [eax+04h]
00816328: mov eax, [ebp+0Ch]
0081632B: or word ptr [eax], FFFFh
0081632F: mov var_04, 00000000h
00816336: mov eax, [ebp+08h]
00816339: mov eax, [eax]
0081633B: push [ebp+08h]
0081633E: call [eax+08h]
00816341: mov eax, var_04
00816344: mov ecx, var_14
00816347: mov fs:[00000000h], ecx
0081634E: pop edi
0081634F: pop esi
00816350: pop ebx
00816351: leave 
00816352: retn 0008h
End Sub

Private sub lstValues__816355
00816355: push ebp
00816356: mov ebp, esp
00816358: sub esp, 00000018h
0081635B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00816360: mov eax, fs:[00h]
00816366: push eax
00816367: mov fs:[00000000h], esp
0081636E: push 00000064h
00816370: pop eax
00816371: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00816376: push ebx
00816377: push esi
00816378: push edi
00816379: mov var_18, esp
0081637C: mov var_14, 0040ABF8h
00816383: mov eax, [ebp+08h]
00816386: and eax, 00000001h
00816389: mov var_10, eax
0081638C: mov eax, [ebp+08h]
0081638F: and al, FEh
00816391: mov [ebp+08h], eax
00816394: mov var_0C, 00000000h
0081639B: mov eax, [ebp+08h]
0081639E: mov eax, [eax]
008163A0: push [ebp+08h]
008163A3: call [eax+04h]
008163A6: mov var_04, 00000001h
008163AD: push [ebp+0Ch]
008163B0: lea eax, var_24
008163B3: push eax
008163B4: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008163B9: mov var_04, 00000002h
008163C0: push FFFFFFFFh
008163C2: call 00410A60h ; On Error ...
008163C7: mov var_04, 00000003h
008163CE: lea eax, var_60
008163D1: push eax
008163D2: mov eax, var_24
008163D5: mov eax, [eax]
008163D7: push var_24
008163DA: call [eax+34h]
008163DD: fclex 
008163DF: mov var_64, eax
008163E2: cmp var_64, 00000000h
008163E6: jnl 8163FFh
008163E8: push 00000034h
008163EA: push 00450154h
008163EF: push var_24
008163F2: push var_64
008163F5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008163FA: mov var_80, eax
008163FD: jmp 816403h
008163FF: and var_80, 00000000h
00816403: mov esi, var_60
00816406: sub esi, 00000001h
00816409: jo 00816764h
0081640F: push 00000000h
00816411: push 00000010h
00816413: mov eax, [ebp+08h]
00816416: mov eax, [eax]
00816418: push [ebp+08h]
0081641B: call [eax+00000318h]
00816421: push eax
00816422: lea eax, var_28
00816425: push eax
00816426: call 00410A84h ; Set (object)
0081642B: push eax
0081642C: lea eax, var_3C
0081642F: push eax
00816430: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00816435: add esp, 00000010h
00816438: push eax
00816439: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0081643E: movsx eax, ax
00816441: sub esi, eax
00816443: neg esi
00816445: sbb esi, esi
00816447: inc esi
00816448: neg esi
0081644A: mov var_68, si
0081644E: lea ecx, var_28
00816451: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00816456: lea ecx, var_3C
00816459: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081645E: movsx eax, word ptr var_68
00816462: test eax, eax
00816464: jz 0081659Bh
0081646A: mov var_04, 00000004h
00816471: push 00000000h
00816473: push 00000011h
00816475: mov eax, [ebp+08h]
00816478: mov eax, [eax]
0081647A: push [ebp+08h]
0081647D: call [eax+00000318h]
00816483: push eax
00816484: lea eax, var_28
00816487: push eax
00816488: call 00410A84h ; Set (object)
0081648D: push eax
0081648E: lea eax, var_3C
00816491: push eax
00816492: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00816497: add esp, 00000010h
0081649A: push eax
0081649B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008164A0: push 00000001h
008164A2: pop ecx
008164A3: sub ecx, eax
008164A5: jo 00816764h
008164AB: mov var_44, ecx
008164AE: mov var_4C, 00000003h
008164B5: push 00000010h
008164B7: pop eax
008164B8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008164BD: lea esi, var_4C
008164C0: mov edi, esp
008164C2: movsd 
008164C3: movsd 
008164C4: movsd 
008164C5: movsd 
008164C6: push 00000011h
008164C8: mov eax, [ebp+08h]
008164CB: mov eax, [eax]
008164CD: push [ebp+08h]
008164D0: call [eax+00000318h]
008164D6: push eax
008164D7: lea eax, var_2C
008164DA: push eax
008164DB: call 00410A84h ; Set (object)
008164E0: push eax
008164E1: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008164E6: lea eax, var_2C
008164E9: push eax
008164EA: lea eax, var_28
008164ED: push eax
008164EE: push 00000002h
008164F0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008164F5: add esp, 0000000Ch
008164F8: lea ecx, var_3C
008164FB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00816500: mov var_04, 00000005h
00816507: or var_44, FFFFFFFFh
0081650B: mov var_4C, 0000000Bh
00816512: push 00000010h
00816514: pop eax
00816515: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081651A: lea esi, var_4C
0081651D: mov edi, esp
0081651F: movsd 
00816520: movsd 
00816521: movsd 
00816522: movsd 
00816523: push 0000000Fh
00816525: mov eax, [ebp+08h]
00816528: mov eax, [eax]
0081652A: push [ebp+08h]
0081652D: call [eax+00000318h]
00816533: push eax
00816534: lea eax, var_28
00816537: push eax
00816538: call 00410A84h ; Set (object)
0081653D: push eax
0081653E: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00816543: lea ecx, var_28
00816546: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081654B: mov var_04, 00000006h
00816552: and var_44, 00000000h
00816556: mov var_4C, 0000000Bh
0081655D: push 00000010h
0081655F: pop eax
00816560: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00816565: lea esi, var_4C
00816568: mov edi, esp
0081656A: movsd 
0081656B: movsd 
0081656C: movsd 
0081656D: movsd 
0081656E: push 0000000Fh
00816570: mov eax, [ebp+08h]
00816573: mov eax, [eax]
00816575: push [ebp+08h]
00816578: call [eax+00000318h]
0081657E: push eax
0081657F: lea eax, var_28
00816582: push eax
00816583: call 00410A84h ; Set (object)
00816588: push eax
00816589: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081658E: lea ecx, var_28
00816591: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00816596: jmp 00816713h
0081659B: mov var_04, 00000008h
008165A2: and var_44, 00000000h
008165A6: mov var_4C, 00000003h
008165AD: push 00000010h
008165AF: pop eax
008165B0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008165B5: lea esi, var_4C
008165B8: mov edi, esp
008165BA: movsd 
008165BB: movsd 
008165BC: movsd 
008165BD: movsd 
008165BE: push 00000011h
008165C0: mov eax, [ebp+08h]
008165C3: mov eax, [eax]
008165C5: push [ebp+08h]
008165C8: call [eax+00000318h]
008165CE: push eax
008165CF: lea eax, var_28
008165D2: push eax
008165D3: call 00410A84h ; Set (object)
008165D8: push eax
008165D9: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008165DE: lea ecx, var_28
008165E1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008165E6: mov var_04, 00000009h
008165ED: lea eax, var_60
008165F0: push eax
008165F1: mov eax, var_24
008165F4: mov eax, [eax]
008165F6: push var_24
008165F9: call [eax+34h]
008165FC: fclex 
008165FE: mov var_64, eax
00816601: cmp var_64, 00000000h
00816605: jnl 816621h
00816607: push 00000034h
00816609: push 00450154h
0081660E: push var_24
00816611: push var_64
00816614: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00816619: mov var_00000084, eax
0081661F: jmp 816628h
00816621: and var_00000084, 00000000h
00816628: mov ecx, var_60
0081662B: sub ecx, 00000001h
0081662E: jo 00816764h
00816634: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00816639: mov var_44, ax
0081663D: mov var_4C, 00000002h
00816644: push 00000010h
00816646: pop eax
00816647: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081664C: lea esi, var_4C
0081664F: mov edi, esp
00816651: movsd 
00816652: movsd 
00816653: movsd 
00816654: movsd 
00816655: push 00000010h
00816657: mov eax, [ebp+08h]
0081665A: mov eax, [eax]
0081665C: push [ebp+08h]
0081665F: call [eax+00000318h]
00816665: push eax
00816666: lea eax, var_28
00816669: push eax
0081666A: call 00410A84h ; Set (object)
0081666F: push eax
00816670: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00816675: lea ecx, var_28
00816678: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081667D: mov var_04, 0000000Ah
00816684: or var_44, FFFFFFFFh
00816688: mov var_4C, 0000000Bh
0081668F: push 00000010h
00816691: pop eax
00816692: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00816697: lea esi, var_4C
0081669A: mov edi, esp
0081669C: movsd 
0081669D: movsd 
0081669E: movsd 
0081669F: movsd 
008166A0: push 0000000Fh
008166A2: mov eax, [ebp+08h]
008166A5: mov eax, [eax]
008166A7: push [ebp+08h]
008166AA: call [eax+00000318h]
008166B0: push eax
008166B1: lea eax, var_28
008166B4: push eax
008166B5: call 00410A84h ; Set (object)
008166BA: push eax
008166BB: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008166C0: lea ecx, var_28
008166C3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008166C8: mov var_04, 0000000Bh
008166CF: and var_44, 00000000h
008166D3: mov var_4C, 0000000Bh
008166DA: push 00000010h
008166DC: pop eax
008166DD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008166E2: lea esi, var_4C
008166E5: mov edi, esp
008166E7: movsd 
008166E8: movsd 
008166E9: movsd 
008166EA: movsd 
008166EB: push 0000000Fh
008166ED: mov eax, [ebp+08h]
008166F0: mov eax, [eax]
008166F2: push [ebp+08h]
008166F5: call [eax+00000318h]
008166FB: push eax
008166FC: lea eax, var_28
008166FF: push eax
00816700: call 00410A84h ; Set (object)
00816705: push eax
00816706: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081670B: lea ecx, var_28
0081670E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00816713: mov var_10, 00000000h
0081671A: push 00816745h
0081671F: jmp 81673Ch
00816721: lea eax, var_2C
00816724: push eax
00816725: lea eax, var_28
00816728: push eax
00816729: push 00000002h
0081672B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00816730: add esp, 0000000Ch
00816733: lea ecx, var_3C
00816736: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081673B: ret 
End Sub

Private sub lstValues__816769
00816769: push ebp
0081676A: mov ebp, esp
0081676C: sub esp, 0000000Ch
0081676F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00816774: mov eax, fs:[00h]
0081677A: push eax
0081677B: mov fs:[00000000h], esp
00816782: push 00000054h
00816784: pop eax
00816785: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081678A: push ebx
0081678B: push esi
0081678C: push edi
0081678D: mov var_0C, esp
00816790: mov var_08, 0040AC50h
00816797: mov eax, [ebp+08h]
0081679A: and eax, 00000001h
0081679D: mov var_04, eax
008167A0: mov eax, [ebp+08h]
008167A3: and al, FEh
008167A5: mov [ebp+08h], eax
008167A8: mov eax, [ebp+08h]
008167AB: mov eax, [eax]
008167AD: push [ebp+08h]
008167B0: call [eax+04h]
008167B3: mov eax, [ebp+0Ch]
008167B6: cmp word ptr [eax], 0002h
008167BA: jnz 00816894h
008167C0: mov var_50, 80020004h
008167C7: mov var_58, 0000000Ah
008167CE: mov var_40, 80020004h
008167D5: mov var_48, 0000000Ah
008167DC: mov var_30, 80020004h
008167E3: mov var_38, 0000000Ah
008167EA: mov var_20, 80020004h
008167F1: mov var_28, 0000000Ah
008167F8: push 00000010h
008167FA: pop eax
008167FB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00816800: lea esi, var_58
00816803: mov edi, esp
00816805: movsd 
00816806: movsd 
00816807: movsd 
00816808: movsd 
00816809: push 00000010h
0081680B: pop eax
0081680C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00816811: lea esi, var_48
00816814: mov edi, esp
00816816: movsd 
00816817: movsd 
00816818: movsd 
00816819: movsd 
0081681A: push 00000010h
0081681C: pop eax
0081681D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00816822: lea esi, var_38
00816825: mov edi, esp
00816827: movsd 
00816828: movsd 
00816829: movsd 
0081682A: movsd 
0081682B: push 00000010h
0081682D: pop eax
0081682E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00816833: lea esi, var_28
00816836: mov edi, esp
00816838: movsd 
00816839: movsd 
0081683A: movsd 
0081683B: movsd 
0081683C: mov eax, [ebp+08h]
0081683F: mov eax, [eax]
00816841: push [ebp+08h]
00816844: call [eax+00000308h]
0081684A: push eax
0081684B: lea eax, var_18
0081684E: push eax
0081684F: call 00410A84h ; Set (object)
00816854: push eax
00816855: mov eax, [ebp+08h]
00816858: mov eax, [eax]
0081685A: push [ebp+08h]
0081685D: call [eax+000002BCh]
00816863: fclex 
00816865: mov var_5C, eax
00816868: cmp var_5C, 00000000h
0081686C: jnl 816888h
0081686E: push 000002BCh
00816873: push 00444DDCh
00816878: push [ebp+08h]
0081687B: push var_5C
0081687E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00816883: mov var_68, eax
00816886: jmp 81688Ch
00816888: and var_68, 00000000h
0081688C: lea ecx, var_18
0081688F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00816894: mov var_04, 00000000h
0081689B: push 008168ACh
008168A0: jmp 8168ABh
008168A2: lea ecx, var_18
008168A5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008168AA: ret 
End Sub

Private sub lstKeys__815A62
00815A62: push ebp
00815A63: mov ebp, esp
00815A65: sub esp, 0000000Ch
00815A68: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00815A6D: mov eax, fs:[00h]
00815A73: push eax
00815A74: mov fs:[00000000h], esp
00815A7B: push 00000008h
00815A7D: pop eax
00815A7E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00815A83: push ebx
00815A84: push esi
00815A85: push edi
00815A86: mov var_0C, esp
00815A89: mov var_08, 0040ABC8h
00815A90: mov eax, [ebp+08h]
00815A93: and eax, 00000001h
00815A96: mov var_04, eax
00815A99: mov eax, [ebp+08h]
00815A9C: and al, FEh
00815A9E: mov [ebp+08h], eax
00815AA1: mov eax, [ebp+08h]
00815AA4: mov eax, [eax]
00815AA6: push [ebp+08h]
00815AA9: call [eax+04h]
00815AAC: mov eax, [ebp+0Ch]
00815AAF: or word ptr [eax], FFFFh
00815AB3: mov var_04, 00000000h
00815ABA: mov eax, [ebp+08h]
00815ABD: mov eax, [eax]
00815ABF: push [ebp+08h]
00815AC2: call [eax+08h]
00815AC5: mov eax, var_04
00815AC8: mov ecx, var_14
00815ACB: mov fs:[00000000h], ecx
00815AD2: pop edi
00815AD3: pop esi
00815AD4: pop ebx
00815AD5: leave 
00815AD6: retn 0008h
End Sub

Private sub lstKeys__81617C
0081617C: push ebp
0081617D: mov ebp, esp
0081617F: sub esp, 0000000Ch
00816182: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00816187: mov eax, fs:[00h]
0081618D: push eax
0081618E: mov fs:[00000000h], esp
00816195: push 00000054h
00816197: pop eax
00816198: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081619D: push ebx
0081619E: push esi
0081619F: push edi
008161A0: mov var_0C, esp
008161A3: mov var_08, 0040ABE0h
008161AA: mov eax, [ebp+08h]
008161AD: and eax, 00000001h
008161B0: mov var_04, eax
008161B3: mov eax, [ebp+08h]
008161B6: and al, FEh
008161B8: mov [ebp+08h], eax
008161BB: mov eax, [ebp+08h]
008161BE: mov eax, [eax]
008161C0: push [ebp+08h]
008161C3: call [eax+04h]
008161C6: mov eax, [ebp+0Ch]
008161C9: cmp word ptr [eax], 0002h
008161CD: jnz 008162A7h
008161D3: mov var_50, 80020004h
008161DA: mov var_58, 0000000Ah
008161E1: mov var_40, 80020004h
008161E8: mov var_48, 0000000Ah
008161EF: mov var_30, 80020004h
008161F6: mov var_38, 0000000Ah
008161FD: mov var_20, 80020004h
00816204: mov var_28, 0000000Ah
0081620B: push 00000010h
0081620D: pop eax
0081620E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00816213: lea esi, var_58
00816216: mov edi, esp
00816218: movsd 
00816219: movsd 
0081621A: movsd 
0081621B: movsd 
0081621C: push 00000010h
0081621E: pop eax
0081621F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00816224: lea esi, var_48
00816227: mov edi, esp
00816229: movsd 
0081622A: movsd 
0081622B: movsd 
0081622C: movsd 
0081622D: push 00000010h
0081622F: pop eax
00816230: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00816235: lea esi, var_38
00816238: mov edi, esp
0081623A: movsd 
0081623B: movsd 
0081623C: movsd 
0081623D: movsd 
0081623E: push 00000010h
00816240: pop eax
00816241: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00816246: lea esi, var_28
00816249: mov edi, esp
0081624B: movsd 
0081624C: movsd 
0081624D: movsd 
0081624E: movsd 
0081624F: mov eax, [ebp+08h]
00816252: mov eax, [eax]
00816254: push [ebp+08h]
00816257: call [eax+00000308h]
0081625D: push eax
0081625E: lea eax, var_18
00816261: push eax
00816262: call 00410A84h ; Set (object)
00816267: push eax
00816268: mov eax, [ebp+08h]
0081626B: mov eax, [eax]
0081626D: push [ebp+08h]
00816270: call [eax+000002BCh]
00816276: fclex 
00816278: mov var_5C, eax
0081627B: cmp var_5C, 00000000h
0081627F: jnl 81629Bh
00816281: push 000002BCh
00816286: push 00444DDCh
0081628B: push [ebp+08h]
0081628E: push var_5C
00816291: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00816296: mov var_68, eax
00816299: jmp 81629Fh
0081629B: and var_68, 00000000h
0081629F: lea ecx, var_18
008162A2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008162A7: mov var_04, 00000000h
008162AE: push 008162BFh
008162B3: jmp 8162BEh
008162B5: lea ecx, var_18
008162B8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008162BD: ret 
End Sub

Private sub lstKeys__815AD9
00815AD9: push ebp
00815ADA: mov ebp, esp
00815ADC: sub esp, 0000000Ch
00815ADF: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00815AE4: mov eax, fs:[00h]
00815AEA: push eax
00815AEB: mov fs:[00000000h], esp
00815AF2: mov eax, 00000090h
00815AF7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00815AFC: push ebx
00815AFD: push esi
00815AFE: push edi
00815AFF: mov var_0C, esp
00815B02: mov var_08, 0040ABD0h
00815B09: mov eax, [ebp+08h]
00815B0C: and eax, 00000001h
00815B0F: mov var_04, eax
00815B12: mov eax, [ebp+08h]
00815B15: and al, FEh
00815B17: mov [ebp+08h], eax
00815B1A: mov eax, [ebp+08h]
00815B1D: mov eax, [eax]
00815B1F: push [ebp+08h]
00815B22: call [eax+04h]
00815B25: push 00000000h
00815B27: push 004412DCh
00815B2C: push 00000000h
00815B2E: push 0000000Dh
00815B30: mov eax, [ebp+08h]
00815B33: mov eax, [eax]
00815B35: push [ebp+08h]
00815B38: call [eax+00000314h]
00815B3E: push eax
00815B3F: lea eax, var_2C
00815B42: push eax
00815B43: call 00410A84h ; Set (object)
00815B48: push eax
00815B49: lea eax, var_40
00815B4C: push eax
00815B4D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00815B52: add esp, 00000010h
00815B55: push eax
00815B56: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00815B5B: push eax
00815B5C: lea eax, var_30
00815B5F: push eax
00815B60: call 00410A84h ; Set (object)
00815B65: push eax
00815B66: call 00410C46h ; msvbvm60.dll.__vbaObjIs
00815B6B: not ax
00815B6E: mov var_74, ax
00815B72: lea eax, var_30
00815B75: push eax
00815B76: lea eax, var_2C
00815B79: push eax
00815B7A: push 00000002h
00815B7C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00815B81: add esp, 0000000Ch
00815B84: lea ecx, var_40
00815B87: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00815B8C: movsx eax, word ptr var_74
00815B90: test eax, eax
00815B92: jz 00816108h
00815B98: push 004412DCh
00815B9D: push 00000000h
00815B9F: push 0000000Dh
00815BA1: mov eax, [ebp+08h]
00815BA4: mov eax, [eax]
00815BA6: push [ebp+08h]
00815BA9: call [eax+00000314h]
00815BAF: push eax
00815BB0: lea eax, var_2C
00815BB3: push eax
00815BB4: call 00410A84h ; Set (object)
00815BB9: push eax
00815BBA: lea eax, var_40
00815BBD: push eax
00815BBE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00815BC3: add esp, 00000010h
00815BC6: push eax
00815BC7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00815BCC: push eax
00815BCD: lea eax, var_30
00815BD0: push eax
00815BD1: call 00410A84h ; Set (object)
00815BD6: mov var_74, eax
00815BD9: lea eax, var_1C
00815BDC: push eax
00815BDD: mov eax, var_74
00815BE0: mov eax, [eax]
00815BE2: push var_74
00815BE5: call [eax+24h]
00815BE8: fclex 
00815BEA: mov var_78, eax
00815BED: cmp var_78, 00000000h
00815BF1: jnl 815C0Dh
00815BF3: push 00000024h
00815BF5: push 004412DCh
00815BFA: push var_74
00815BFD: push var_78
00815C00: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00815C05: mov var_0000008C, eax
00815C0B: jmp 815C14h
00815C0D: and var_0000008C, 00000000h
00815C14: push var_1C
00815C17: push 0044C254h ; ...
00815C1C: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00815C21: neg eax
00815C23: sbb eax, eax
00815C25: inc eax
00815C26: neg eax
00815C28: mov var_7C, ax
00815C2C: lea ecx, var_1C
00815C2F: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00815C34: lea eax, var_30
00815C37: push eax
00815C38: lea eax, var_2C
00815C3B: push eax
00815C3C: push 00000002h
00815C3E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00815C43: add esp, 0000000Ch
00815C46: lea ecx, var_40
00815C49: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00815C4E: movsx eax, word ptr var_7C
00815C52: test eax, eax
00815C54: jz 00815CE1h
00815C5A: push 00000000h
00815C5C: push FFFFFFFFh
00815C5E: push 00441B28h
00815C63: push [008F2408h]
00815C69: call 00410C04h ; InStrRev
00815C6E: mov ecx, eax
00815C70: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00815C75: mov var_18, ax
00815C79: movsx eax, word ptr var_18
00815C7D: test eax, eax
00815C7F: jnz 815C92h
00815C81: mov edx, 00442BFCh
00815C86: mov ecx, 008F2408h
00815C8B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00815C90: jmp 815CDCh
00815C92: mov var_4C, 008F2408h
00815C99: mov var_54, 00004008h
00815CA0: mov ax, var_18
00815CA4: sub ax, 0001h
00815CA8: jo 00816177h
00815CAE: movsx eax, ax
00815CB1: push eax
00815CB2: lea eax, var_54
00815CB5: push eax
00815CB6: lea eax, var_40
00815CB9: push eax
00815CBA: call 00410778h ; Left(arg_1, arg_2)
00815CBF: lea eax, var_40
00815CC2: push eax
00815CC3: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00815CC8: mov edx, eax
00815CCA: mov ecx, 008F2408h
00815CCF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00815CD4: lea ecx, var_40
00815CD7: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00815CDC: jmp 00815E8Dh
00815CE1: push [008F2408h]
00815CE7: push 00442BFCh
00815CEC: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00815CF1: test eax, eax
00815CF3: jnz 00815DB6h
00815CF9: push 004412DCh
00815CFE: push 00000000h
00815D00: push 0000000Dh
00815D02: mov eax, [ebp+08h]
00815D05: mov eax, [eax]
00815D07: push [ebp+08h]
00815D0A: call [eax+00000314h]
00815D10: push eax
00815D11: lea eax, var_2C
00815D14: push eax
00815D15: call 00410A84h ; Set (object)
00815D1A: push eax
00815D1B: lea eax, var_40
00815D1E: push eax
00815D1F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00815D24: add esp, 00000010h
00815D27: push eax
00815D28: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00815D2D: push eax
00815D2E: lea eax, var_30
00815D31: push eax
00815D32: call 00410A84h ; Set (object)
00815D37: mov var_74, eax
00815D3A: lea eax, var_1C
00815D3D: push eax
00815D3E: mov eax, var_74
00815D41: mov eax, [eax]
00815D43: push var_74
00815D46: call [eax+24h]
00815D49: fclex 
00815D4B: mov var_78, eax
00815D4E: cmp var_78, 00000000h
00815D52: jnl 815D6Eh
00815D54: push 00000024h
00815D56: push 004412DCh
00815D5B: push var_74
00815D5E: push var_78
00815D61: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00815D66: mov var_00000090, eax
00815D6C: jmp 815D75h
00815D6E: and var_00000090, 00000000h
00815D75: push [008F2408h]
00815D7B: push var_1C
00815D7E: call 00410A18h ; &
00815D83: mov edx, eax
00815D85: mov ecx, 008F2408h
00815D8A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00815D8F: lea ecx, var_1C
00815D92: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00815D97: lea eax, var_30
00815D9A: push eax
00815D9B: lea eax, var_2C
00815D9E: push eax
00815D9F: push 00000002h
00815DA1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00815DA6: add esp, 0000000Ch
00815DA9: lea ecx, var_40
00815DAC: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00815DB1: jmp 00815E8Dh
00815DB6: push 004412DCh
00815DBB: push 00000000h
00815DBD: push 0000000Dh
00815DBF: mov eax, [ebp+08h]
00815DC2: mov eax, [eax]
00815DC4: push [ebp+08h]
00815DC7: call [eax+00000314h]
00815DCD: push eax
00815DCE: lea eax, var_2C
00815DD1: push eax
00815DD2: call 00410A84h ; Set (object)
00815DD7: push eax
00815DD8: lea eax, var_40
00815DDB: push eax
00815DDC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00815DE1: add esp, 00000010h
00815DE4: push eax
00815DE5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00815DEA: push eax
00815DEB: lea eax, var_30
00815DEE: push eax
00815DEF: call 00410A84h ; Set (object)
00815DF4: mov var_74, eax
00815DF7: lea eax, var_1C
00815DFA: push eax
00815DFB: mov eax, var_74
00815DFE: mov eax, [eax]
00815E00: push var_74
00815E03: call [eax+24h]
00815E06: fclex 
00815E08: mov var_78, eax
00815E0B: cmp var_78, 00000000h
00815E0F: jnl 815E2Bh
00815E11: push 00000024h
00815E13: push 004412DCh
00815E18: push var_74
00815E1B: push var_78
00815E1E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00815E23: mov var_00000094, eax
00815E29: jmp 815E32h
00815E2B: and var_00000094, 00000000h
00815E32: push [008F2408h]
00815E38: push 00441B28h
00815E3D: call 00410A18h ; &
00815E42: mov edx, eax
00815E44: lea ecx, var_20
00815E47: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00815E4C: push eax
00815E4D: push var_1C
00815E50: call 00410A18h ; &
00815E55: mov edx, eax
00815E57: mov ecx, 008F2408h
00815E5C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00815E61: lea eax, var_1C
00815E64: push eax
00815E65: lea eax, var_20
00815E68: push eax
00815E69: push 00000002h
00815E6B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00815E70: add esp, 0000000Ch
00815E73: lea eax, var_30
00815E76: push eax
00815E77: lea eax, var_2C
00815E7A: push eax
00815E7B: push 00000002h
00815E7D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00815E82: add esp, 0000000Ch
00815E85: lea ecx, var_40
00815E88: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00815E8D: mov eax, [ebp+08h]
00815E90: mov eax, [eax]
00815E92: push [ebp+08h]
00815E95: call [eax+00000304h]
00815E9B: push eax
00815E9C: lea eax, var_30
00815E9F: push eax
00815EA0: call 00410A84h ; Set (object)
00815EA5: mov var_7C, eax
00815EA8: mov eax, [ebp+08h]
00815EAB: mov eax, [eax]
00815EAD: push [ebp+08h]
00815EB0: call [eax+00000300h]
00815EB6: push eax
00815EB7: lea eax, var_2C
00815EBA: push eax
00815EBB: call 00410A84h ; Set (object)
00815EC0: mov var_74, eax
00815EC3: lea eax, var_1C
00815EC6: push eax
00815EC7: mov eax, var_74
00815ECA: mov eax, [eax]
00815ECC: push var_74
00815ECF: call [eax+000000A8h]
00815ED5: fclex 
00815ED7: mov var_78, eax
00815EDA: cmp var_78, 00000000h
00815EDE: jnl 815EFDh
00815EE0: push 000000A8h
00815EE5: push 0044C944h
00815EEA: push var_74
00815EED: push var_78
00815EF0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00815EF5: mov var_00000098, eax
00815EFB: jmp 815F04h
00815EFD: and var_00000098, 00000000h
00815F04: push 00453B58h ; Computer\
00815F09: push var_1C
00815F0C: call 00410A18h ; &
00815F11: mov edx, eax
00815F13: lea ecx, var_20
00815F16: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00815F1B: push eax
00815F1C: push 00441B28h
00815F21: call 00410A18h ; &
00815F26: mov edx, eax
00815F28: lea ecx, var_24
00815F2B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00815F30: push eax
00815F31: push [008F2408h]
00815F37: call 00410A18h ; &
00815F3C: mov edx, eax
00815F3E: lea ecx, var_28
00815F41: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00815F46: push eax
00815F47: mov eax, var_7C
00815F4A: mov eax, [eax]
00815F4C: push var_7C
00815F4F: call [eax+54h]
00815F52: fclex 
00815F54: mov var_80, eax
00815F57: cmp var_80, 00000000h
00815F5B: jnl 815F77h
00815F5D: push 00000054h
00815F5F: push 004425E4h
00815F64: push var_7C
00815F67: push var_80
00815F6A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00815F6F: mov var_0000009C, eax
00815F75: jmp 815F7Eh
00815F77: and var_0000009C, 00000000h
00815F7E: lea eax, var_28
00815F81: push eax
00815F82: lea eax, var_24
00815F85: push eax
00815F86: lea eax, var_20
00815F89: push eax
00815F8A: lea eax, var_1C
00815F8D: push eax
00815F8E: push 00000004h
00815F90: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00815F95: add esp, 00000014h
00815F98: lea eax, var_30
00815F9B: push eax
00815F9C: lea eax, var_2C
00815F9F: push eax
00815FA0: push 00000002h
00815FA2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00815FA7: add esp, 0000000Ch
00815FAA: lea eax, var_1C
00815FAD: push eax
00815FAE: mov eax, [ebp+08h]
00815FB1: mov eax, [eax]
00815FB3: push [ebp+08h]
00815FB6: call [eax+000001C0h]
00815FBC: fclex 
00815FBE: mov var_74, eax
00815FC1: cmp var_74, 00000000h
00815FC5: jnl 815FE4h
00815FC7: push 000001C0h
00815FCC: push 00444DDCh
00815FD1: push [ebp+08h]
00815FD4: push var_74
00815FD7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00815FDC: mov var_000000A0, eax
00815FE2: jmp 815FEBh
00815FE4: and var_000000A0, 00000000h
00815FEB: push var_1C
00815FEE: call 004109DCh ; Val(arg_1)
00815FF3: fstp real8 ptr var_70
00815FF6: push 00000000h
00815FF8: push 00000001h
00815FFA: push 00000001h
00815FFC: push 00000000h
00815FFE: lea eax, var_44
00816001: push eax
00816002: push 00000010h
00816004: push 00000880h
00816009: call 00410946h ; ReDim
0081600E: add esp, 0000001Ch
00816011: mov eax, [ebp+08h]
00816014: mov eax, [eax]
00816016: push [ebp+08h]
00816019: call [eax+00000300h]
0081601F: push eax
00816020: lea eax, var_2C
00816023: push eax
00816024: call 00410A84h ; Set (object)
00816029: mov var_78, eax
0081602C: lea eax, var_68
0081602F: push eax
00816030: mov eax, var_78
00816033: mov eax, [eax]
00816035: push var_78
00816038: call [eax+000000F0h]
0081603E: fclex 
00816040: mov var_7C, eax
00816043: cmp var_7C, 00000000h
00816047: jnl 816066h
00816049: push 000000F0h
0081604E: push 0044C944h
00816053: push var_78
00816056: push var_7C
00816059: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081605E: mov var_000000A4, eax
00816064: jmp 81606Dh
00816066: and var_000000A4, 00000000h
0081606D: mov ax, var_68
00816071: add ax, 0001h
00816075: jo 00816177h
0081607B: mov var_4C, ax
0081607F: mov var_54, 00000002h
00816086: lea esi, var_54
00816089: push 00000000h
0081608B: push var_44
0081608E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00816093: mov ecx, eax
00816095: mov edx, esi
00816097: call 00410922h ; msvbvm60.dll.__vbaVarMove
0081609C: mov var_5C, 008F2408h
008160A3: mov var_64, 00004008h
008160AA: lea esi, var_64
008160AD: push 00000001h
008160AF: push var_44
008160B2: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008160B7: mov ecx, eax
008160B9: mov edx, esi
008160BB: call 00410940h ; msvbvm60.dll.__vbaVarZero
008160C0: mov edx, 0043D588h ; x31
008160C5: lea ecx, var_20
008160C8: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008160CD: lea eax, var_44
008160D0: push eax
008160D1: lea eax, var_20
008160D4: push eax
008160D5: fld real8 ptr var_70
008160D8: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008160DD: push eax
008160DE: call 007A6910h
008160E3: lea eax, var_44
008160E6: push eax
008160E7: push 00000000h
008160E9: call 00410934h ; Erase
008160EE: lea eax, var_20
008160F1: push eax
008160F2: lea eax, var_1C
008160F5: push eax
008160F6: push 00000002h
008160F8: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008160FD: add esp, 0000000Ch
00816100: lea ecx, var_2C
00816103: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00816108: mov var_04, 00000000h
0081610F: wait 
00816110: push 00816158h
00816115: jmp 816157h
00816117: lea eax, var_28
0081611A: push eax
0081611B: lea eax, var_24
0081611E: push eax
0081611F: lea eax, var_20
00816122: push eax
00816123: lea eax, var_1C
00816126: push eax
00816127: push 00000004h
00816129: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081612E: add esp, 00000014h
00816131: lea eax, var_30
00816134: push eax
00816135: lea eax, var_2C
00816138: push eax
00816139: push 00000002h
0081613B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00816140: add esp, 0000000Ch
00816143: lea ecx, var_40
00816146: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081614B: lea eax, var_44
0081614E: push eax
0081614F: push 00000000h
00816151: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
00816156: ret 
End Sub

Private sub cmbRegFolders__814D3E
00814D3E: push ebp
00814D3F: mov ebp, esp
00814D41: sub esp, 0000000Ch
00814D44: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00814D49: mov eax, fs:[00h]
00814D4F: push eax
00814D50: mov fs:[00000000h], esp
00814D57: push 00000068h
00814D59: pop eax
00814D5A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00814D5F: push ebx
00814D60: push esi
00814D61: push edi
00814D62: mov var_0C, esp
00814D65: mov var_08, 0040AB60h
00814D6C: mov eax, [ebp+08h]
00814D6F: and eax, 00000001h
00814D72: mov var_04, eax
00814D75: mov eax, [ebp+08h]
00814D78: and al, FEh
00814D7A: mov [ebp+08h], eax
00814D7D: mov eax, [ebp+08h]
00814D80: mov eax, [eax]
00814D82: push [ebp+08h]
00814D85: call [eax+04h]
00814D88: mov eax, [ebp+08h]
00814D8B: mov eax, [eax]
00814D8D: push [ebp+08h]
00814D90: call [eax+00000304h]
00814D96: push eax
00814D97: lea eax, var_24
00814D9A: push eax
00814D9B: call 00410A84h ; Set (object)
00814DA0: mov var_60, eax
00814DA3: mov eax, [ebp+08h]
00814DA6: mov eax, [eax]
00814DA8: push [ebp+08h]
00814DAB: call [eax+00000300h]
00814DB1: push eax
00814DB2: lea eax, var_20
00814DB5: push eax
00814DB6: call 00410A84h ; Set (object)
00814DBB: mov var_58, eax
00814DBE: lea eax, var_18
00814DC1: push eax
00814DC2: mov eax, var_58
00814DC5: mov eax, [eax]
00814DC7: push var_58
00814DCA: call [eax+000000A8h]
00814DD0: fclex 
00814DD2: mov var_5C, eax
00814DD5: cmp var_5C, 00000000h
00814DD9: jnl 814DF5h
00814DDB: push 000000A8h
00814DE0: push 0044C944h
00814DE5: push var_58
00814DE8: push var_5C
00814DEB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00814DF0: mov var_70, eax
00814DF3: jmp 814DF9h
00814DF5: and var_70, 00000000h
00814DF9: push 00453B58h ; Computer\
00814DFE: push var_18
00814E01: call 00410A18h ; &
00814E06: mov edx, eax
00814E08: lea ecx, var_1C
00814E0B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00814E10: push eax
00814E11: mov eax, var_60
00814E14: mov eax, [eax]
00814E16: push var_60
00814E19: call [eax+54h]
00814E1C: fclex 
00814E1E: mov var_64, eax
00814E21: cmp var_64, 00000000h
00814E25: jnl 814E3Eh
00814E27: push 00000054h
00814E29: push 004425E4h
00814E2E: push var_60
00814E31: push var_64
00814E34: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00814E39: mov var_74, eax
00814E3C: jmp 814E42h
00814E3E: and var_74, 00000000h
00814E42: lea eax, var_1C
00814E45: push eax
00814E46: lea eax, var_18
00814E49: push eax
00814E4A: push 00000002h
00814E4C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00814E51: add esp, 0000000Ch
00814E54: lea eax, var_24
00814E57: push eax
00814E58: lea eax, var_20
00814E5B: push eax
00814E5C: push 00000002h
00814E5E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00814E63: add esp, 0000000Ch
00814E66: mov edx, 00442BFCh
00814E6B: mov ecx, 008F2408h
00814E70: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00814E75: lea eax, var_18
00814E78: push eax
00814E79: mov eax, [ebp+08h]
00814E7C: mov eax, [eax]
00814E7E: push [ebp+08h]
00814E81: call [eax+000001C0h]
00814E87: fclex 
00814E89: mov var_58, eax
00814E8C: cmp var_58, 00000000h
00814E90: jnl 814EACh
00814E92: push 000001C0h
00814E97: push 00444DDCh
00814E9C: push [ebp+08h]
00814E9F: push var_58
00814EA2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00814EA7: mov var_78, eax
00814EAA: jmp 814EB0h
00814EAC: and var_78, 00000000h
00814EB0: push var_18
00814EB3: call 004109DCh ; Val(arg_1)
00814EB8: fstp real8 ptr var_54
00814EBB: push 00000000h
00814EBD: push 00000001h
00814EBF: push 00000001h
00814EC1: push 00000000h
00814EC3: lea eax, var_28
00814EC6: push eax
00814EC7: push 00000010h
00814EC9: push 00000880h
00814ECE: call 00410946h ; ReDim
00814ED3: add esp, 0000001Ch
00814ED6: mov eax, [ebp+08h]
00814ED9: mov eax, [eax]
00814EDB: push [ebp+08h]
00814EDE: call [eax+00000300h]
00814EE4: push eax
00814EE5: lea eax, var_20
00814EE8: push eax
00814EE9: call 00410A84h ; Set (object)
00814EEE: mov var_5C, eax
00814EF1: lea eax, var_4C
00814EF4: push eax
00814EF5: mov eax, var_5C
00814EF8: mov eax, [eax]
00814EFA: push var_5C
00814EFD: call [eax+000000F0h]
00814F03: fclex 
00814F05: mov var_60, eax
00814F08: cmp var_60, 00000000h
00814F0C: jnl 814F28h
00814F0E: push 000000F0h
00814F13: push 0044C944h
00814F18: push var_5C
00814F1B: push var_60
00814F1E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00814F23: mov var_7C, eax
00814F26: jmp 814F2Ch
00814F28: and var_7C, 00000000h
00814F2C: mov ax, var_4C
00814F30: add ax, 0001h
00814F34: jo 00815026h
00814F3A: mov var_30, ax
00814F3E: mov var_38, 00000002h
00814F45: lea esi, var_38
00814F48: push 00000000h
00814F4A: push var_28
00814F4D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00814F52: mov ecx, eax
00814F54: mov edx, esi
00814F56: call 00410922h ; msvbvm60.dll.__vbaVarMove
00814F5B: mov var_40, 008F2408h
00814F62: mov var_48, 00004008h
00814F69: lea esi, var_48
00814F6C: push 00000001h
00814F6E: push var_28
00814F71: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00814F76: mov ecx, eax
00814F78: mov edx, esi
00814F7A: call 00410940h ; msvbvm60.dll.__vbaVarZero
00814F7F: mov edx, 0043D588h ; x31
00814F84: lea ecx, var_1C
00814F87: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00814F8C: lea eax, var_28
00814F8F: push eax
00814F90: lea eax, var_1C
00814F93: push eax
00814F94: fld real8 ptr var_54
00814F97: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00814F9C: push eax
00814F9D: call 007A6910h
00814FA2: lea eax, var_28
00814FA5: push eax
00814FA6: push 00000000h
00814FA8: call 00410934h ; Erase
00814FAD: lea eax, var_1C
00814FB0: push eax
00814FB1: lea eax, var_18
00814FB4: push eax
00814FB5: push 00000002h
00814FB7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00814FBC: add esp, 0000000Ch
00814FBF: lea ecx, var_20
00814FC2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00814FC7: mov var_04, 00000000h
00814FCE: wait 
00814FCF: push 00815007h
00814FD4: jmp 815006h
00814FD6: lea eax, var_1C
00814FD9: push eax
00814FDA: lea eax, var_18
00814FDD: push eax
00814FDE: push 00000002h
00814FE0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00814FE5: add esp, 0000000Ch
00814FE8: lea eax, var_24
00814FEB: push eax
00814FEC: lea eax, var_20
00814FEF: push eax
00814FF0: push 00000002h
00814FF2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00814FF7: add esp, 0000000Ch
00814FFA: lea eax, var_28
00814FFD: push eax
00814FFE: push 00000000h
00815000: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
00815005: ret 
End Sub

Private sub mnuReg__8168CB
008168CB: push ebp
008168CC: mov ebp, esp
008168CE: sub esp, 0000000Ch
008168D1: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008168D6: mov eax, fs:[00h]
008168DC: push eax
008168DD: mov fs:[00000000h], esp
008168E4: mov eax, 00000174h
008168E9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008168EE: push ebx
008168EF: push esi
008168F0: push edi
008168F1: mov var_0C, esp
008168F4: mov var_08, 0040AC60h
008168FB: mov eax, [ebp+08h]
008168FE: and eax, 00000001h
00816901: mov var_04, eax
00816904: mov eax, [ebp+08h]
00816907: and al, FEh
00816909: mov [ebp+08h], eax
0081690C: mov eax, [ebp+08h]
0081690F: mov eax, [eax]
00816911: push [ebp+08h]
00816914: call [eax+04h]
00816917: mov eax, [ebp+0Ch]
0081691A: mov ax, [eax]
0081691D: mov var_0000012C, ax
00816924: movsx eax, word ptr var_0000012C
0081692B: mov var_0000014C, eax
00816931: cmp var_0000014C, 00000000h
00816938: jz 816973h
0081693A: cmp var_0000014C, 00000002h
00816941: jz 00816B21h
00816947: cmp var_0000014C, 00000003h
0081694E: jz 00816E7Ch
00816954: cmp var_0000014C, 00000005h
0081695B: jz 00817350h
00816961: cmp var_0000014C, 00000006h
00816968: jz 008176A8h
0081696E: jmp 008179FBh
00816973: lea eax, var_20
00816976: push eax
00816977: mov eax, [ebp+08h]
0081697A: mov eax, [eax]
0081697C: push [ebp+08h]
0081697F: call [eax+000001C0h]
00816985: fclex 
00816987: mov var_00000118, eax
0081698D: cmp var_00000118, 00000000h
00816994: jnl 8169B6h
00816996: push 000001C0h
0081699B: push 00444DDCh
008169A0: push [ebp+08h]
008169A3: push var_00000118
008169A9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008169AE: mov var_00000150, eax
008169B4: jmp 8169BDh
008169B6: and var_00000150, 00000000h
008169BD: push var_20
008169C0: call 004109DCh ; Val(arg_1)
008169C5: fstp real8 ptr var_00000114
008169CB: push 00000000h
008169CD: push 00000001h
008169CF: push 00000001h
008169D1: push 00000000h
008169D3: lea eax, var_000000A8
008169D9: push eax
008169DA: push 00000010h
008169DC: push 00000880h
008169E1: call 00410946h ; ReDim
008169E6: add esp, 0000001Ch
008169E9: mov eax, [ebp+08h]
008169EC: mov eax, [eax]
008169EE: push [ebp+08h]
008169F1: call [eax+00000300h]
008169F7: push eax
008169F8: lea eax, var_2C
008169FB: push eax
008169FC: call 00410A84h ; Set (object)
00816A01: mov var_0000011C, eax
00816A07: lea eax, var_0000010C
00816A0D: push eax
00816A0E: mov eax, var_0000011C
00816A14: mov eax, [eax]
00816A16: push var_0000011C
00816A1C: call [eax+000000F0h]
00816A22: fclex 
00816A24: mov var_00000120, eax
00816A2A: cmp var_00000120, 00000000h
00816A31: jnl 816A56h
00816A33: push 000000F0h
00816A38: push 0044C944h
00816A3D: push var_0000011C
00816A43: push var_00000120
00816A49: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00816A4E: mov var_00000154, eax
00816A54: jmp 816A5Dh
00816A56: and var_00000154, 00000000h
00816A5D: mov ax, var_0000010C
00816A64: add ax, 0001h
00816A68: jo 00817AA4h
00816A6E: mov var_000000B0, ax
00816A75: mov var_000000B8, 00000002h
00816A7F: lea esi, var_000000B8
00816A85: push 00000000h
00816A87: push var_000000A8
00816A8D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00816A92: mov ecx, eax
00816A94: mov edx, esi
00816A96: call 00410922h ; msvbvm60.dll.__vbaVarMove
00816A9B: mov var_000000C0, 008F2408h
00816AA5: mov var_000000C8, 00004008h
00816AAF: lea esi, var_000000C8
00816AB5: push 00000001h
00816AB7: push var_000000A8
00816ABD: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00816AC2: mov ecx, eax
00816AC4: mov edx, esi
00816AC6: call 00410940h ; msvbvm60.dll.__vbaVarZero
00816ACB: mov edx, 0043D588h ; x31
00816AD0: lea ecx, var_24
00816AD3: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00816AD8: lea eax, var_000000A8
00816ADE: push eax
00816ADF: lea eax, var_24
00816AE2: push eax
00816AE3: fld real8 ptr var_00000114
00816AE9: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00816AEE: push eax
00816AEF: call 007A6910h
00816AF4: lea eax, var_000000A8
00816AFA: push eax
00816AFB: push 00000000h
00816AFD: call 00410934h ; Erase
00816B02: lea eax, var_24
00816B05: push eax
00816B06: lea eax, var_20
00816B09: push eax
00816B0A: push 00000002h
00816B0C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00816B11: add esp, 0000000Ch
00816B14: lea ecx, var_2C
00816B17: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00816B1C: jmp 008179FBh
00816B21: lea eax, var_20
00816B24: push eax
00816B25: mov eax, [ebp+08h]
00816B28: mov eax, [eax]
00816B2A: push [ebp+08h]
00816B2D: call [eax+50h]
00816B30: fclex 
00816B32: mov var_00000118, eax
00816B38: cmp var_00000118, 00000000h
00816B3F: jnl 816B5Eh
00816B41: push 00000050h
00816B43: push 00444DDCh
00816B48: push [ebp+08h]
00816B4B: push var_00000118
00816B51: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00816B56: mov var_00000158, eax
00816B5C: jmp 816B65h
00816B5E: and var_00000158, 00000000h
00816B65: mov var_0000009C, 80020004h
00816B6F: mov var_000000A4, 0000000Ah
00816B79: mov var_0000008C, 80020004h
00816B83: mov var_00000094, 0000000Ah
00816B8D: mov var_7C, 80020004h
00816B94: mov var_00000084, 0000000Ah
00816B9E: mov var_6C, 80020004h
00816BA5: mov var_74, 0000000Ah
00816BAC: mov var_5C, 80020004h
00816BB3: mov var_64, 0000000Ah
00816BBA: mov eax, var_20
00816BBD: mov var_00000138, eax
00816BC3: and var_20, 00000000h
00816BC7: mov eax, var_00000138
00816BCD: mov var_4C, eax
00816BD0: mov var_54, 00000008h
00816BD7: mov var_000000B0, 00453B70h ; Enter a new key name
00816BE1: mov var_000000B8, 00000008h
00816BEB: lea edx, var_000000B8
00816BF1: lea ecx, var_44
00816BF4: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00816BF9: lea eax, var_000000A4
00816BFF: push eax
00816C00: lea eax, var_00000094
00816C06: push eax
00816C07: lea eax, var_00000084
00816C0D: push eax
00816C0E: lea eax, var_74
00816C11: push eax
00816C12: lea eax, var_64
00816C15: push eax
00816C16: lea eax, var_54
00816C19: push eax
00816C1A: lea eax, var_44
00816C1D: push eax
00816C1E: call 00410994h ; InputBox
00816C23: mov edx, eax
00816C25: lea ecx, var_1C
00816C28: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00816C2D: lea eax, var_000000A4
00816C33: push eax
00816C34: lea eax, var_00000094
00816C3A: push eax
00816C3B: lea eax, var_00000084
00816C41: push eax
00816C42: lea eax, var_74
00816C45: push eax
00816C46: lea eax, var_64
00816C49: push eax
00816C4A: lea eax, var_54
00816C4D: push eax
00816C4E: lea eax, var_44
00816C51: push eax
00816C52: push 00000007h
00816C54: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00816C59: add esp, 00000020h
00816C5C: push var_1C
00816C5F: push 00000000h
00816C61: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00816C66: test eax, eax
00816C68: jnz 816C6Fh
00816C6A: jmp 008179FBh
00816C6F: lea eax, var_20
00816C72: push eax
00816C73: mov eax, [ebp+08h]
00816C76: mov eax, [eax]
00816C78: push [ebp+08h]
00816C7B: call [eax+000001C0h]
00816C81: fclex 
00816C83: mov var_00000118, eax
00816C89: cmp var_00000118, 00000000h
00816C90: jnl 816CB2h
00816C92: push 000001C0h
00816C97: push 00444DDCh
00816C9C: push [ebp+08h]
00816C9F: push var_00000118
00816CA5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00816CAA: mov var_0000015C, eax
00816CB0: jmp 816CB9h
00816CB2: and var_0000015C, 00000000h
00816CB9: push var_20
00816CBC: call 004109DCh ; Val(arg_1)
00816CC1: fstp real8 ptr var_00000114
00816CC7: push 00000000h
00816CC9: push 00000003h
00816CCB: push 00000001h
00816CCD: push 00000000h
00816CCF: lea eax, var_000000A8
00816CD5: push eax
00816CD6: push 00000010h
00816CD8: push 00000880h
00816CDD: call 00410946h ; ReDim
00816CE2: add esp, 0000001Ch
00816CE5: mov var_000000B0, 00453BA0h ; nkey
00816CEF: mov var_000000B8, 00000008h
00816CF9: lea esi, var_000000B8
00816CFF: push 00000000h
00816D01: push var_000000A8
00816D07: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00816D0C: mov ecx, eax
00816D0E: mov edx, esi
00816D10: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
00816D15: mov eax, [ebp+08h]
00816D18: mov eax, [eax]
00816D1A: push [ebp+08h]
00816D1D: call [eax+00000300h]
00816D23: push eax
00816D24: lea eax, var_2C
00816D27: push eax
00816D28: call 00410A84h ; Set (object)
00816D2D: mov var_0000011C, eax
00816D33: lea eax, var_0000010C
00816D39: push eax
00816D3A: mov eax, var_0000011C
00816D40: mov eax, [eax]
00816D42: push var_0000011C
00816D48: call [eax+000000F0h]
00816D4E: fclex 
00816D50: mov var_00000120, eax
00816D56: cmp var_00000120, 00000000h
00816D5D: jnl 816D82h
00816D5F: push 000000F0h
00816D64: push 0044C944h
00816D69: push var_0000011C
00816D6F: push var_00000120
00816D75: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00816D7A: mov var_00000160, eax
00816D80: jmp 816D89h
00816D82: and var_00000160, 00000000h
00816D89: mov ax, var_0000010C
00816D90: add ax, 0001h
00816D94: jo 00817AA4h
00816D9A: mov var_000000C0, ax
00816DA1: mov var_000000C8, 00000002h
00816DAB: lea esi, var_000000C8
00816DB1: push 00000001h
00816DB3: push var_000000A8
00816DB9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00816DBE: mov ecx, eax
00816DC0: mov edx, esi
00816DC2: call 00410922h ; msvbvm60.dll.__vbaVarMove
00816DC7: mov var_000000D0, 008F2408h
00816DD1: mov var_000000D8, 00004008h
00816DDB: lea esi, var_000000D8
00816DE1: push 00000002h
00816DE3: push var_000000A8
00816DE9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00816DEE: mov ecx, eax
00816DF0: mov edx, esi
00816DF2: call 00410940h ; msvbvm60.dll.__vbaVarZero
00816DF7: lea eax, var_1C
00816DFA: mov var_000000E0, eax
00816E00: mov var_000000E8, 00004008h
00816E0A: lea esi, var_000000E8
00816E10: push 00000003h
00816E12: push var_000000A8
00816E18: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00816E1D: mov ecx, eax
00816E1F: mov edx, esi
00816E21: call 00410940h ; msvbvm60.dll.__vbaVarZero
00816E26: mov edx, 0043D5A0h ; x33
00816E2B: lea ecx, var_24
00816E2E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00816E33: lea eax, var_000000A8
00816E39: push eax
00816E3A: lea eax, var_24
00816E3D: push eax
00816E3E: fld real8 ptr var_00000114
00816E44: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00816E49: push eax
00816E4A: call 007A6910h
00816E4F: lea eax, var_000000A8
00816E55: push eax
00816E56: push 00000000h
00816E58: call 00410934h ; Erase
00816E5D: lea eax, var_24
00816E60: push eax
00816E61: lea eax, var_20
00816E64: push eax
00816E65: push 00000002h
00816E67: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00816E6C: add esp, 0000000Ch
00816E6F: lea ecx, var_2C
00816E72: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00816E77: jmp 008179FBh
00816E7C: lea eax, var_20
00816E7F: push eax
00816E80: mov eax, [ebp+08h]
00816E83: mov eax, [eax]
00816E85: push [ebp+08h]
00816E88: call [eax+50h]
00816E8B: fclex 
00816E8D: mov var_00000118, eax
00816E93: cmp var_00000118, 00000000h
00816E9A: jnl 816EB9h
00816E9C: push 00000050h
00816E9E: push 00444DDCh
00816EA3: push [ebp+08h]
00816EA6: push var_00000118
00816EAC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00816EB1: mov var_00000164, eax
00816EB7: jmp 816EC0h
00816EB9: and var_00000164, 00000000h
00816EC0: mov var_0000009C, 80020004h
00816ECA: mov var_000000A4, 0000000Ah
00816ED4: mov var_0000008C, 80020004h
00816EDE: mov var_00000094, 0000000Ah
00816EE8: mov var_7C, 80020004h
00816EEF: mov var_00000084, 0000000Ah
00816EF9: mov var_6C, 80020004h
00816F00: mov var_74, 0000000Ah
00816F07: mov var_5C, 80020004h
00816F0E: mov var_64, 0000000Ah
00816F15: mov eax, var_20
00816F18: mov var_0000013C, eax
00816F1E: and var_20, 00000000h
00816F22: mov eax, var_0000013C
00816F28: mov var_4C, eax
00816F2B: mov var_54, 00000008h
00816F32: mov var_000000B0, 00453BB0h ; Enter a new string value
00816F3C: mov var_000000B8, 00000008h
00816F46: lea edx, var_000000B8
00816F4C: lea ecx, var_44
00816F4F: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00816F54: lea eax, var_000000A4
00816F5A: push eax
00816F5B: lea eax, var_00000094
00816F61: push eax
00816F62: lea eax, var_00000084
00816F68: push eax
00816F69: lea eax, var_74
00816F6C: push eax
00816F6D: lea eax, var_64
00816F70: push eax
00816F71: lea eax, var_54
00816F74: push eax
00816F75: lea eax, var_44
00816F78: push eax
00816F79: call 00410994h ; InputBox
00816F7E: mov edx, eax
00816F80: lea ecx, var_1C
00816F83: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00816F88: lea eax, var_000000A4
00816F8E: push eax
00816F8F: lea eax, var_00000094
00816F95: push eax
00816F96: lea eax, var_00000084
00816F9C: push eax
00816F9D: lea eax, var_74
00816FA0: push eax
00816FA1: lea eax, var_64
00816FA4: push eax
00816FA5: lea eax, var_54
00816FA8: push eax
00816FA9: lea eax, var_44
00816FAC: push eax
00816FAD: push 00000007h
00816FAF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00816FB4: add esp, 00000020h
00816FB7: lea eax, var_20
00816FBA: push eax
00816FBB: mov eax, [ebp+08h]
00816FBE: mov eax, [eax]
00816FC0: push [ebp+08h]
00816FC3: call [eax+50h]
00816FC6: fclex 
00816FC8: mov var_00000118, eax
00816FCE: cmp var_00000118, 00000000h
00816FD5: jnl 816FF4h
00816FD7: push 00000050h
00816FD9: push 00444DDCh
00816FDE: push [ebp+08h]
00816FE1: push var_00000118
00816FE7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00816FEC: mov var_00000168, eax
00816FF2: jmp 816FFBh
00816FF4: and var_00000168, 00000000h
00816FFB: mov var_0000009C, 80020004h
00817005: mov var_000000A4, 0000000Ah
0081700F: mov var_0000008C, 80020004h
00817019: mov var_00000094, 0000000Ah
00817023: mov var_7C, 80020004h
0081702A: mov var_00000084, 0000000Ah
00817034: mov var_6C, 80020004h
0081703B: mov var_74, 0000000Ah
00817042: mov var_5C, 80020004h
00817049: mov var_64, 0000000Ah
00817050: mov eax, var_20
00817053: mov var_00000140, eax
00817059: and var_20, 00000000h
0081705D: mov eax, var_00000140
00817063: mov var_4C, eax
00817066: mov var_54, 00000008h
0081706D: push 00453BE8h ; Enter data content for:
00817072: push var_1C
00817075: call 00410A18h ; &
0081707A: mov var_3C, eax
0081707D: mov var_44, 00000008h
00817084: lea eax, var_000000A4
0081708A: push eax
0081708B: lea eax, var_00000094
00817091: push eax
00817092: lea eax, var_00000084
00817098: push eax
00817099: lea eax, var_74
0081709C: push eax
0081709D: lea eax, var_64
008170A0: push eax
008170A1: lea eax, var_54
008170A4: push eax
008170A5: lea eax, var_44
008170A8: push eax
008170A9: call 00410994h ; InputBox
008170AE: mov edx, eax
008170B0: lea ecx, var_18
008170B3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008170B8: lea eax, var_000000A4
008170BE: push eax
008170BF: lea eax, var_00000094
008170C5: push eax
008170C6: lea eax, var_00000084
008170CC: push eax
008170CD: lea eax, var_74
008170D0: push eax
008170D1: lea eax, var_64
008170D4: push eax
008170D5: lea eax, var_54
008170D8: push eax
008170D9: lea eax, var_44
008170DC: push eax
008170DD: push 00000007h
008170DF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008170E4: add esp, 00000020h
008170E7: push var_1C
008170EA: push 00000000h
008170EC: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008170F1: mov esi, eax
008170F3: neg esi
008170F5: sbb esi, esi
008170F7: neg esi
008170F9: push var_18
008170FC: push 00000000h
008170FE: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00817103: neg eax
00817105: sbb eax, eax
00817107: neg eax
00817109: and esi, eax
0081710B: test esi, esi
0081710D: jnz 817114h
0081710F: jmp 008179FBh
00817114: lea eax, var_20
00817117: push eax
00817118: mov eax, [ebp+08h]
0081711B: mov eax, [eax]
0081711D: push [ebp+08h]
00817120: call [eax+000001C0h]
00817126: fclex 
00817128: mov var_00000118, eax
0081712E: cmp var_00000118, 00000000h
00817135: jnl 817157h
00817137: push 000001C0h
0081713C: push 00444DDCh
00817141: push [ebp+08h]
00817144: push var_00000118
0081714A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081714F: mov var_0000016C, eax
00817155: jmp 81715Eh
00817157: and var_0000016C, 00000000h
0081715E: push var_20
00817161: call 004109DCh ; Val(arg_1)
00817166: fstp real8 ptr var_00000114
0081716C: push 00000000h
0081716E: push 00000004h
00817170: push 00000001h
00817172: push 00000000h
00817174: lea eax, var_000000A8
0081717A: push eax
0081717B: push 00000010h
0081717D: push 00000880h
00817182: call 00410946h ; ReDim
00817187: add esp, 0000001Ch
0081718A: mov var_000000B0, 00453C20h ; nval
00817194: mov var_000000B8, 00000008h
0081719E: lea esi, var_000000B8
008171A4: push 00000000h
008171A6: push var_000000A8
008171AC: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008171B1: mov ecx, eax
008171B3: mov edx, esi
008171B5: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008171BA: mov eax, [ebp+08h]
008171BD: mov eax, [eax]
008171BF: push [ebp+08h]
008171C2: call [eax+00000300h]
008171C8: push eax
008171C9: lea eax, var_2C
008171CC: push eax
008171CD: call 00410A84h ; Set (object)
008171D2: mov var_0000011C, eax
008171D8: lea eax, var_0000010C
008171DE: push eax
008171DF: mov eax, var_0000011C
008171E5: mov eax, [eax]
008171E7: push var_0000011C
008171ED: call [eax+000000F0h]
008171F3: fclex 
008171F5: mov var_00000120, eax
008171FB: cmp var_00000120, 00000000h
00817202: jnl 817227h
00817204: push 000000F0h
00817209: push 0044C944h
0081720E: push var_0000011C
00817214: push var_00000120
0081721A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081721F: mov var_00000170, eax
00817225: jmp 81722Eh
00817227: and var_00000170, 00000000h
0081722E: mov ax, var_0000010C
00817235: add ax, 0001h
00817239: jo 00817AA4h
0081723F: mov var_000000C0, ax
00817246: mov var_000000C8, 00000002h
00817250: lea esi, var_000000C8
00817256: push 00000001h
00817258: push var_000000A8
0081725E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00817263: mov ecx, eax
00817265: mov edx, esi
00817267: call 00410922h ; msvbvm60.dll.__vbaVarMove
0081726C: mov var_000000D0, 008F2408h
00817276: mov var_000000D8, 00004008h
00817280: lea esi, var_000000D8
00817286: push 00000002h
00817288: push var_000000A8
0081728E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00817293: mov ecx, eax
00817295: mov edx, esi
00817297: call 00410940h ; msvbvm60.dll.__vbaVarZero
0081729C: lea eax, var_1C
0081729F: mov var_000000E0, eax
008172A5: mov var_000000E8, 00004008h
008172AF: lea esi, var_000000E8
008172B5: push 00000003h
008172B7: push var_000000A8
008172BD: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008172C2: mov ecx, eax
008172C4: mov edx, esi
008172C6: call 00410940h ; msvbvm60.dll.__vbaVarZero
008172CB: lea eax, var_18
008172CE: mov var_000000F0, eax
008172D4: mov var_000000F8, 00004008h
008172DE: lea esi, var_000000F8
008172E4: push 00000004h
008172E6: push var_000000A8
008172EC: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008172F1: mov ecx, eax
008172F3: mov edx, esi
008172F5: call 00410940h ; msvbvm60.dll.__vbaVarZero
008172FA: mov edx, 0043D5A0h ; x33
008172FF: lea ecx, var_24
00817302: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00817307: lea eax, var_000000A8
0081730D: push eax
0081730E: lea eax, var_24
00817311: push eax
00817312: fld real8 ptr var_00000114
00817318: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0081731D: push eax
0081731E: call 007A6910h
00817323: lea eax, var_000000A8
00817329: push eax
0081732A: push 00000000h
0081732C: call 00410934h ; Erase
00817331: lea eax, var_24
00817334: push eax
00817335: lea eax, var_20
00817338: push eax
00817339: push 00000002h
0081733B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00817340: add esp, 0000000Ch
00817343: lea ecx, var_2C
00817346: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081734B: jmp 008179FBh
00817350: mov var_6C, 80020004h
00817357: mov var_74, 0000000Ah
0081735E: mov var_5C, 80020004h
00817365: mov var_64, 0000000Ah
0081736C: mov var_4C, 80020004h
00817373: mov var_54, 0000000Ah
0081737A: mov var_000000B0, 00453C74h ; Do you really want to delete the current key?
00817384: mov var_000000B8, 00000008h
0081738E: lea edx, var_000000B8
00817394: lea ecx, var_44
00817397: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0081739C: lea eax, var_74
0081739F: push eax
008173A0: lea eax, var_64
008173A3: push eax
008173A4: lea eax, var_54
008173A7: push eax
008173A8: push 00000034h
008173AA: lea eax, var_44
008173AD: push eax
008173AE: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008173B3: sub eax, 00000006h
008173B6: neg eax
008173B8: sbb eax, eax
008173BA: inc eax
008173BB: neg eax
008173BD: mov var_00000118, ax
008173C4: lea eax, var_74
008173C7: push eax
008173C8: lea eax, var_64
008173CB: push eax
008173CC: lea eax, var_54
008173CF: push eax
008173D0: lea eax, var_44
008173D3: push eax
008173D4: push 00000004h
008173D6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008173DB: add esp, 00000014h
008173DE: movsx eax, word ptr var_00000118
008173E5: test eax, eax
008173E7: jz 008176A3h
008173ED: lea eax, var_20
008173F0: push eax
008173F1: mov eax, [ebp+08h]
008173F4: mov eax, [eax]
008173F6: push [ebp+08h]
008173F9: call [eax+000001C0h]
008173FF: fclex 
00817401: mov var_00000118, eax
00817407: cmp var_00000118, 00000000h
0081740E: jnl 817430h
00817410: push 000001C0h
00817415: push 00444DDCh
0081741A: push [ebp+08h]
0081741D: push var_00000118
00817423: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00817428: mov var_00000174, eax
0081742E: jmp 817437h
00817430: and var_00000174, 00000000h
00817437: push var_20
0081743A: call 004109DCh ; Val(arg_1)
0081743F: fstp real8 ptr var_00000114
00817445: push 00000000h
00817447: push 00000003h
00817449: push 00000001h
0081744B: push 00000000h
0081744D: lea eax, var_000000A8
00817453: push eax
00817454: push 00000010h
00817456: push 00000880h
0081745B: call 00410946h ; ReDim
00817460: add esp, 0000001Ch
00817463: mov var_000000B0, 00453CD4h ; dkey
0081746D: mov var_000000B8, 00000008h
00817477: lea esi, var_000000B8
0081747D: push 00000000h
0081747F: push var_000000A8
00817485: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0081748A: mov ecx, eax
0081748C: mov edx, esi
0081748E: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
00817493: mov eax, [ebp+08h]
00817496: mov eax, [eax]
00817498: push [ebp+08h]
0081749B: call [eax+00000300h]
008174A1: push eax
008174A2: lea eax, var_2C
008174A5: push eax
008174A6: call 00410A84h ; Set (object)
008174AB: mov var_0000011C, eax
008174B1: lea eax, var_0000010C
008174B7: push eax
008174B8: mov eax, var_0000011C
008174BE: mov eax, [eax]
008174C0: push var_0000011C
008174C6: call [eax+000000F0h]
008174CC: fclex 
008174CE: mov var_00000120, eax
008174D4: cmp var_00000120, 00000000h
008174DB: jnl 817500h
008174DD: push 000000F0h
008174E2: push 0044C944h
008174E7: push var_0000011C
008174ED: push var_00000120
008174F3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008174F8: mov var_00000178, eax
008174FE: jmp 817507h
00817500: and var_00000178, 00000000h
00817507: mov ax, var_0000010C
0081750E: add ax, 0001h
00817512: jo 00817AA4h
00817518: mov var_000000C0, ax
0081751F: mov var_000000C8, 00000002h
00817529: lea esi, var_000000C8
0081752F: push 00000001h
00817531: push var_000000A8
00817537: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0081753C: mov ecx, eax
0081753E: mov edx, esi
00817540: call 00410922h ; msvbvm60.dll.__vbaVarMove
00817545: mov var_000000D0, 008F2408h
0081754F: mov var_000000D8, 00004008h
00817559: lea esi, var_000000D8
0081755F: push 00000002h
00817561: push var_000000A8
00817567: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0081756C: mov ecx, eax
0081756E: mov edx, esi
00817570: call 00410940h ; msvbvm60.dll.__vbaVarZero
00817575: push 004412DCh
0081757A: push 00000000h
0081757C: push 0000000Dh
0081757E: mov eax, [ebp+08h]
00817581: mov eax, [eax]
00817583: push [ebp+08h]
00817586: call [eax+00000314h]
0081758C: push eax
0081758D: lea eax, var_30
00817590: push eax
00817591: call 00410A84h ; Set (object)
00817596: push eax
00817597: lea eax, var_44
0081759A: push eax
0081759B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008175A0: add esp, 00000010h
008175A3: push eax
008175A4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008175A9: push eax
008175AA: lea eax, var_34
008175AD: push eax
008175AE: call 00410A84h ; Set (object)
008175B3: mov var_00000124, eax
008175B9: lea eax, var_24
008175BC: push eax
008175BD: mov eax, var_00000124
008175C3: mov eax, [eax]
008175C5: push var_00000124
008175CB: call [eax+24h]
008175CE: fclex 
008175D0: mov var_00000128, eax
008175D6: cmp var_00000128, 00000000h
008175DD: jnl 8175FFh
008175DF: push 00000024h
008175E1: push 004412DCh
008175E6: push var_00000124
008175EC: push var_00000128
008175F2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008175F7: mov var_0000017C, eax
008175FD: jmp 817606h
008175FF: and var_0000017C, 00000000h
00817606: mov eax, var_24
00817609: mov var_00000144, eax
0081760F: and var_24, 00000000h
00817613: mov eax, var_00000144
00817619: mov var_4C, eax
0081761C: mov var_54, 00000008h
00817623: lea esi, var_54
00817626: push 00000003h
00817628: push var_000000A8
0081762E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00817633: mov ecx, eax
00817635: mov edx, esi
00817637: call 00410940h ; msvbvm60.dll.__vbaVarZero
0081763C: mov edx, 0043D5A0h ; x33
00817641: lea ecx, var_28
00817644: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00817649: lea eax, var_000000A8
0081764F: push eax
00817650: lea eax, var_28
00817653: push eax
00817654: fld real8 ptr var_00000114
0081765A: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0081765F: push eax
00817660: call 007A6910h
00817665: lea eax, var_000000A8
0081766B: push eax
0081766C: push 00000000h
0081766E: call 00410934h ; Erase
00817673: lea eax, var_28
00817676: push eax
00817677: lea eax, var_20
0081767A: push eax
0081767B: push 00000002h
0081767D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00817682: add esp, 0000000Ch
00817685: lea eax, var_34
00817688: push eax
00817689: lea eax, var_30
0081768C: push eax
0081768D: lea eax, var_2C
00817690: push eax
00817691: push 00000003h
00817693: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00817698: add esp, 00000010h
0081769B: lea ecx, var_44
0081769E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008176A3: jmp 008179FBh
008176A8: mov var_6C, 80020004h
008176AF: mov var_74, 0000000Ah
008176B6: mov var_5C, 80020004h
008176BD: mov var_64, 0000000Ah
008176C4: mov var_4C, 80020004h
008176CB: mov var_54, 0000000Ah
008176D2: mov var_000000B0, 00453CE4h ; Do you really want to delete the current value?
008176DC: mov var_000000B8, 00000008h
008176E6: lea edx, var_000000B8
008176EC: lea ecx, var_44
008176EF: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008176F4: lea eax, var_74
008176F7: push eax
008176F8: lea eax, var_64
008176FB: push eax
008176FC: lea eax, var_54
008176FF: push eax
00817700: push 00000034h
00817702: lea eax, var_44
00817705: push eax
00817706: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0081770B: sub eax, 00000006h
0081770E: neg eax
00817710: sbb eax, eax
00817712: inc eax
00817713: neg eax
00817715: mov var_00000118, ax
0081771C: lea eax, var_74
0081771F: push eax
00817720: lea eax, var_64
00817723: push eax
00817724: lea eax, var_54
00817727: push eax
00817728: lea eax, var_44
0081772B: push eax
0081772C: push 00000004h
0081772E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00817733: add esp, 00000014h
00817736: movsx eax, word ptr var_00000118
0081773D: test eax, eax
0081773F: jz 008179FBh
00817745: lea eax, var_20
00817748: push eax
00817749: mov eax, [ebp+08h]
0081774C: mov eax, [eax]
0081774E: push [ebp+08h]
00817751: call [eax+000001C0h]
00817757: fclex 
00817759: mov var_00000118, eax
0081775F: cmp var_00000118, 00000000h
00817766: jnl 817788h
00817768: push 000001C0h
0081776D: push 00444DDCh
00817772: push [ebp+08h]
00817775: push var_00000118
0081777B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00817780: mov var_00000180, eax
00817786: jmp 81778Fh
00817788: and var_00000180, 00000000h
0081778F: push var_20
00817792: call 004109DCh ; Val(arg_1)
00817797: fstp real8 ptr var_00000114
0081779D: push 00000000h
0081779F: push 00000003h
008177A1: push 00000001h
008177A3: push 00000000h
008177A5: lea eax, var_000000A8
008177AB: push eax
008177AC: push 00000010h
008177AE: push 00000880h
008177B3: call 00410946h ; ReDim
008177B8: add esp, 0000001Ch
008177BB: mov var_000000B0, 00453D48h ; dval
008177C5: mov var_000000B8, 00000008h
008177CF: lea esi, var_000000B8
008177D5: push 00000000h
008177D7: push var_000000A8
008177DD: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008177E2: mov ecx, eax
008177E4: mov edx, esi
008177E6: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008177EB: mov eax, [ebp+08h]
008177EE: mov eax, [eax]
008177F0: push [ebp+08h]
008177F3: call [eax+00000300h]
008177F9: push eax
008177FA: lea eax, var_2C
008177FD: push eax
008177FE: call 00410A84h ; Set (object)
00817803: mov var_0000011C, eax
00817809: lea eax, var_0000010C
0081780F: push eax
00817810: mov eax, var_0000011C
00817816: mov eax, [eax]
00817818: push var_0000011C
0081781E: call [eax+000000F0h]
00817824: fclex 
00817826: mov var_00000120, eax
0081782C: cmp var_00000120, 00000000h
00817833: jnl 817858h
00817835: push 000000F0h
0081783A: push 0044C944h
0081783F: push var_0000011C
00817845: push var_00000120
0081784B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00817850: mov var_00000184, eax
00817856: jmp 81785Fh
00817858: and var_00000184, 00000000h
0081785F: mov ax, var_0000010C
00817866: add ax, 0001h
0081786A: jo 00817AA4h
00817870: mov var_000000C0, ax
00817877: mov var_000000C8, 00000002h
00817881: lea esi, var_000000C8
00817887: push 00000001h
00817889: push var_000000A8
0081788F: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00817894: mov ecx, eax
00817896: mov edx, esi
00817898: call 00410922h ; msvbvm60.dll.__vbaVarMove
0081789D: mov var_000000D0, 008F2408h
008178A7: mov var_000000D8, 00004008h
008178B1: lea esi, var_000000D8
008178B7: push 00000002h
008178B9: push var_000000A8
008178BF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008178C4: mov ecx, eax
008178C6: mov edx, esi
008178C8: call 00410940h ; msvbvm60.dll.__vbaVarZero
008178CD: push 004412DCh
008178D2: push 00000000h
008178D4: push 0000000Dh
008178D6: mov eax, [ebp+08h]
008178D9: mov eax, [eax]
008178DB: push [ebp+08h]
008178DE: call [eax+00000318h]
008178E4: push eax
008178E5: lea eax, var_30
008178E8: push eax
008178E9: call 00410A84h ; Set (object)
008178EE: push eax
008178EF: lea eax, var_44
008178F2: push eax
008178F3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008178F8: add esp, 00000010h
008178FB: push eax
008178FC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00817901: push eax
00817902: lea eax, var_34
00817905: push eax
00817906: call 00410A84h ; Set (object)
0081790B: mov var_00000124, eax
00817911: lea eax, var_24
00817914: push eax
00817915: mov eax, var_00000124
0081791B: mov eax, [eax]
0081791D: push var_00000124
00817923: call [eax+24h]
00817926: fclex 
00817928: mov var_00000128, eax
0081792E: cmp var_00000128, 00000000h
00817935: jnl 817957h
00817937: push 00000024h
00817939: push 004412DCh
0081793E: push var_00000124
00817944: push var_00000128
0081794A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081794F: mov var_00000188, eax
00817955: jmp 81795Eh
00817957: and var_00000188, 00000000h
0081795E: mov eax, var_24
00817961: mov var_00000148, eax
00817967: and var_24, 00000000h
0081796B: mov eax, var_00000148
00817971: mov var_4C, eax
00817974: mov var_54, 00000008h
0081797B: lea esi, var_54
0081797E: push 00000003h
00817980: push var_000000A8
00817986: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0081798B: mov ecx, eax
0081798D: mov edx, esi
0081798F: call 00410940h ; msvbvm60.dll.__vbaVarZero
00817994: mov edx, 0043D5A0h ; x33
00817999: lea ecx, var_28
0081799C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008179A1: lea eax, var_000000A8
008179A7: push eax
008179A8: lea eax, var_28
008179AB: push eax
008179AC: fld real8 ptr var_00000114
008179B2: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008179B7: push eax
008179B8: call 007A6910h
008179BD: lea eax, var_000000A8
008179C3: push eax
008179C4: push 00000000h
008179C6: call 00410934h ; Erase
008179CB: lea eax, var_28
008179CE: push eax
008179CF: lea eax, var_20
008179D2: push eax
008179D3: push 00000002h
008179D5: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008179DA: add esp, 0000000Ch
008179DD: lea eax, var_34
008179E0: push eax
008179E1: lea eax, var_30
008179E4: push eax
008179E5: lea eax, var_2C
008179E8: push eax
008179E9: push 00000003h
008179EB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008179F0: add esp, 00000010h
008179F3: lea ecx, var_44
008179F6: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008179FB: mov var_04, 00000000h
00817A02: wait 
00817A03: push 00817A85h
00817A08: jmp 817A74h
00817A0A: lea eax, var_28
00817A0D: push eax
00817A0E: lea eax, var_24
00817A11: push eax
00817A12: lea eax, var_20
00817A15: push eax
00817A16: push 00000003h
00817A18: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00817A1D: add esp, 00000010h
00817A20: lea eax, var_34
00817A23: push eax
00817A24: lea eax, var_30
00817A27: push eax
00817A28: lea eax, var_2C
00817A2B: push eax
00817A2C: push 00000003h
00817A2E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00817A33: add esp, 00000010h
00817A36: lea eax, var_000000A4
00817A3C: push eax
00817A3D: lea eax, var_00000094
00817A43: push eax
00817A44: lea eax, var_00000084
00817A4A: push eax
00817A4B: lea eax, var_74
00817A4E: push eax
00817A4F: lea eax, var_64
00817A52: push eax
00817A53: lea eax, var_54
00817A56: push eax
00817A57: lea eax, var_44
00817A5A: push eax
00817A5B: push 00000007h
00817A5D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00817A62: add esp, 00000020h
00817A65: lea eax, var_000000A8
00817A6B: push eax
00817A6C: push 00000000h
00817A6E: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
00817A73: ret 
End Sub

