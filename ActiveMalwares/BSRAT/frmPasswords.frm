VERSION 5.00
Begin VB.Form frmPasswords
  Caption = "Passwords"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 5 'Sizable ToolWindow
  'Icon = n/a
  LinkTopic = "Form1"
  MinButton = 0   'False
  ClientLeft = 60
  ClientTop = 330
  ClientWidth = 14235
  ClientHeight = 5970
  StartUpPosition = 1 'CenterOwner
  Begin XtremeSuiteControls.ListView lstPasswords
    Left = 0
    Top = 0
    Width = 14175
    Height = 5655
    TabIndex = 1
  End
  Begin VB.Timer tmrIsUserStupid
    Interval = 10000
    Left = 3120
    Top = 0
  End
  Begin MSComctlLib.StatusBar sbPasswords
    Left = 0
    Top = 5670
    Width = 14235
    Height = 300
    TabIndex = 0
  End
  Begin VB.Menu mnuMenuPws
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuListPasswords
      Index = 0
      Caption = "List passwords"
    End
    Begin VB.Menu mnuListPasswords
      Index = 1
      Caption = "List from all"
    End
    Begin VB.Menu mnuListPasswords
      Index = 2
      Caption = "-"
    End
    Begin VB.Menu mnuListPasswords
      Index = 3
      Caption = "Copy"
    End
    Begin VB.Menu mnuListPasswords
      Index = 4
      Caption = "Copy all"
    End
    Begin VB.Menu mnuListPasswords
      Index = 5
      Caption = "Save to file"
    End
  End
End

Attribute VB_Name = "frmPasswords"


Private sub mnuListPasswords__8052E3
008052E3: push ebp
008052E4: mov ebp, esp
008052E6: sub esp, 00000018h
008052E9: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008052EE: mov eax, fs:[00h]
008052F4: push eax
008052F5: mov fs:[00000000h], esp
008052FC: mov eax, 0000032Ch
00805301: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00805306: push ebx
00805307: push esi
00805308: push edi
00805309: mov var_18, esp
0080530C: mov var_14, 0040A448h
00805313: mov eax, [ebp+08h]
00805316: and eax, 00000001h
00805319: mov var_10, eax
0080531C: mov eax, [ebp+08h]
0080531F: and al, FEh
00805321: mov [ebp+08h], eax
00805324: mov var_0C, 00000000h
0080532B: mov eax, [ebp+08h]
0080532E: mov eax, [eax]
00805330: push [ebp+08h]
00805333: call [eax+04h]
00805336: mov var_04, 00000001h
0080533D: mov var_04, 00000002h
00805344: push FFFFFFFFh
00805346: call 00410A60h ; On Error ...
0080534B: mov var_04, 00000003h
00805352: mov eax, [ebp+0Ch]
00805355: mov ax, [eax]
00805358: mov var_000002E0, ax
0080535F: movsx eax, word ptr var_000002E0
00805366: mov var_00000304, eax
0080536C: cmp var_00000304, 00000000h
00805373: jz 8053B3h
00805375: cmp var_00000304, 00000001h
0080537C: jz 0080561Eh
00805382: cmp var_00000304, 00000003h
00805389: jz 0080598Fh
0080538F: cmp var_00000304, 00000004h
00805396: jz 00806084h
0080539C: cmp var_00000304, 00000005h
008053A3: jz 00806767h
008053A9: jmp 00806DFCh
008053AE: jmp 00806DFCh
008053B3: mov var_04, 00000005h
008053BA: push 00000000h
008053BC: push 00000003h
008053BE: push 00440E48h
008053C3: push 00000000h
008053C5: push 00000018h
008053C7: mov eax, [ebp+08h]
008053CA: mov eax, [eax]
008053CC: push [ebp+08h]
008053CF: call [eax+00000308h]
008053D5: push eax
008053D6: lea eax, var_60
008053D9: push eax
008053DA: call 00410A84h ; Set (object)
008053DF: push eax
008053E0: lea eax, var_000000AC
008053E6: push eax
008053E7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008053EC: add esp, 00000010h
008053EF: push eax
008053F0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008053F5: push eax
008053F6: lea eax, var_64
008053F9: push eax
008053FA: call 00410A84h ; Set (object)
008053FF: push eax
00805400: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00805405: add esp, 0000000Ch
00805408: lea eax, var_64
0080540B: push eax
0080540C: lea eax, var_60
0080540F: push eax
00805410: push 00000002h
00805412: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00805417: add esp, 0000000Ch
0080541A: lea ecx, var_000000AC
00805420: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00805425: mov var_04, 00000006h
0080542C: push 0044AD4Ch ; Status: Passwords collected:
00805431: push 00000000h
00805433: push 00000001h
00805435: push 00440E48h
0080543A: push 00000000h
0080543C: push 00000018h
0080543E: mov eax, [ebp+08h]
00805441: mov eax, [eax]
00805443: push [ebp+08h]
00805446: call [eax+00000308h]
0080544C: push eax
0080544D: lea eax, var_60
00805450: push eax
00805451: call 00410A84h ; Set (object)
00805456: push eax
00805457: lea eax, var_000000AC
0080545D: push eax
0080545E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805463: add esp, 00000010h
00805466: push eax
00805467: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080546C: push eax
0080546D: lea eax, var_64
00805470: push eax
00805471: call 00410A84h ; Set (object)
00805476: push eax
00805477: lea eax, var_000000BC
0080547D: push eax
0080547E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805483: add esp, 00000010h
00805486: push eax
00805487: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0080548C: push eax
0080548D: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
00805492: mov edx, eax
00805494: lea ecx, var_40
00805497: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080549C: push eax
0080549D: call 00410A18h ; &
008054A2: mov var_000000C4, eax
008054A8: mov var_000000CC, 00000008h
008054B2: push 00000010h
008054B4: pop eax
008054B5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008054BA: lea esi, var_000000CC
008054C0: mov edi, esp
008054C2: movsd 
008054C3: movsd 
008054C4: movsd 
008054C5: movsd 
008054C6: push 00000001h
008054C8: mov eax, [ebp+08h]
008054CB: mov eax, [eax]
008054CD: push [ebp+08h]
008054D0: call [eax+0000030Ch]
008054D6: push eax
008054D7: lea eax, var_68
008054DA: push eax
008054DB: call 00410A84h ; Set (object)
008054E0: push eax
008054E1: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008054E6: lea ecx, var_40
008054E9: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008054EE: lea eax, var_68
008054F1: push eax
008054F2: lea eax, var_64
008054F5: push eax
008054F6: lea eax, var_60
008054F9: push eax
008054FA: push 00000003h
008054FC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00805501: add esp, 00000010h
00805504: lea eax, var_000000CC
0080550A: push eax
0080550B: lea eax, var_000000BC
00805511: push eax
00805512: lea eax, var_000000AC
00805518: push eax
00805519: push 00000003h
0080551B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00805520: add esp, 00000010h
00805523: mov var_04, 00000007h
0080552A: lea eax, var_40
0080552D: push eax
0080552E: mov eax, [ebp+08h]
00805531: mov eax, [eax]
00805533: push [ebp+08h]
00805536: call [eax+000001C0h]
0080553C: fclex 
0080553E: mov var_00000270, eax
00805544: cmp var_00000270, 00000000h
0080554B: jnl 80556Dh
0080554D: push 000001C0h
00805552: push 00444CF8h
00805557: push [ebp+08h]
0080555A: push var_00000270
00805560: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00805565: mov var_00000308, eax
0080556B: jmp 805574h
0080556D: and var_00000308, 00000000h
00805574: push var_40
00805577: call 004109DCh ; Val(arg_1)
0080557C: fstp real8 ptr var_0000026C
00805582: push 00000000h
00805584: push 00000000h
00805586: push 00000001h
00805588: push 00000000h
0080558A: lea eax, var_00000190
00805590: push eax
00805591: push 00000010h
00805593: push 00000880h
00805598: call 00410946h ; ReDim
0080559D: add esp, 0000001Ch
008055A0: mov var_00000198, 00442930h
008055AA: mov var_000001A0, 00000008h
008055B4: lea esi, var_000001A0
008055BA: push 00000000h
008055BC: push var_00000190
008055C2: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008055C7: mov ecx, eax
008055C9: mov edx, esi
008055CB: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008055D0: mov edx, 0043D47Ch ; x9
008055D5: lea ecx, var_44
008055D8: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008055DD: lea eax, var_00000190
008055E3: push eax
008055E4: lea eax, var_44
008055E7: push eax
008055E8: fld real8 ptr var_0000026C
008055EE: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008055F3: push eax
008055F4: call 007A6910h
008055F9: lea eax, var_00000190
008055FF: push eax
00805600: push 00000000h
00805602: call 00410934h ; Erase
00805607: lea eax, var_44
0080560A: push eax
0080560B: lea eax, var_40
0080560E: push eax
0080560F: push 00000002h
00805611: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00805616: add esp, 0000000Ch
00805619: jmp 00806DFCh
0080561E: mov var_04, 00000009h
00805625: push 00000000h
00805627: push 00000003h
00805629: push 00440E48h
0080562E: push 00000000h
00805630: push 00000018h
00805632: mov eax, [ebp+08h]
00805635: mov eax, [eax]
00805637: push [ebp+08h]
0080563A: call [eax+00000308h]
00805640: push eax
00805641: lea eax, var_60
00805644: push eax
00805645: call 00410A84h ; Set (object)
0080564A: push eax
0080564B: lea eax, var_000000AC
00805651: push eax
00805652: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805657: add esp, 00000010h
0080565A: push eax
0080565B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00805660: push eax
00805661: lea eax, var_64
00805664: push eax
00805665: call 00410A84h ; Set (object)
0080566A: push eax
0080566B: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00805670: add esp, 0000000Ch
00805673: lea eax, var_64
00805676: push eax
00805677: lea eax, var_60
0080567A: push eax
0080567B: push 00000002h
0080567D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00805682: add esp, 0000000Ch
00805685: lea ecx, var_000000AC
0080568B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00805690: mov var_04, 0000000Ah
00805697: push 0044AD4Ch ; Status: Passwords collected:
0080569C: push 00000000h
0080569E: push 00000001h
008056A0: push 00440E48h
008056A5: push 00000000h
008056A7: push 00000018h
008056A9: mov eax, [ebp+08h]
008056AC: mov eax, [eax]
008056AE: push [ebp+08h]
008056B1: call [eax+00000308h]
008056B7: push eax
008056B8: lea eax, var_60
008056BB: push eax
008056BC: call 00410A84h ; Set (object)
008056C1: push eax
008056C2: lea eax, var_000000AC
008056C8: push eax
008056C9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008056CE: add esp, 00000010h
008056D1: push eax
008056D2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008056D7: push eax
008056D8: lea eax, var_64
008056DB: push eax
008056DC: call 00410A84h ; Set (object)
008056E1: push eax
008056E2: lea eax, var_000000BC
008056E8: push eax
008056E9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008056EE: add esp, 00000010h
008056F1: push eax
008056F2: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008056F7: push eax
008056F8: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008056FD: mov edx, eax
008056FF: lea ecx, var_40
00805702: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00805707: push eax
00805708: call 00410A18h ; &
0080570D: mov var_000000C4, eax
00805713: mov var_000000CC, 00000008h
0080571D: push 00000010h
0080571F: pop eax
00805720: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00805725: lea esi, var_000000CC
0080572B: mov edi, esp
0080572D: movsd 
0080572E: movsd 
0080572F: movsd 
00805730: movsd 
00805731: push 00000001h
00805733: mov eax, [ebp+08h]
00805736: mov eax, [eax]
00805738: push [ebp+08h]
0080573B: call [eax+0000030Ch]
00805741: push eax
00805742: lea eax, var_68
00805745: push eax
00805746: call 00410A84h ; Set (object)
0080574B: push eax
0080574C: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00805751: lea ecx, var_40
00805754: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00805759: lea eax, var_68
0080575C: push eax
0080575D: lea eax, var_64
00805760: push eax
00805761: lea eax, var_60
00805764: push eax
00805765: push 00000003h
00805767: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080576C: add esp, 00000010h
0080576F: lea eax, var_000000CC
00805775: push eax
00805776: lea eax, var_000000BC
0080577C: push eax
0080577D: lea eax, var_000000AC
00805783: push eax
00805784: push 00000003h
00805786: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080578B: add esp, 00000010h
0080578E: mov var_04, 0000000Bh
00805795: mov var_00000198, 00000001h
0080579F: mov var_000001A0, 00000002h
008057A9: cmp [008F2010h], 00000000h
008057B0: jnz 8057CDh
008057B2: push 008F2010h
008057B7: push 00433984h
008057BC: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008057C1: mov var_0000030C, 008F2010h
008057CB: jmp 8057D7h
008057CD: mov var_0000030C, 008F2010h
008057D7: mov eax, var_0000030C
008057DD: mov eax, [eax]
008057DF: mov ecx, var_0000030C
008057E5: mov ecx, [ecx]
008057E7: mov ecx, [ecx]
008057E9: push eax
008057EA: call [ecx+00000524h]
008057F0: push eax
008057F1: lea eax, var_60
008057F4: push eax
008057F5: call 00410A84h ; Set (object)
008057FA: mov var_00000270, eax
00805800: lea eax, var_00000264
00805806: push eax
00805807: mov eax, var_00000270
0080580D: mov eax, [eax]
0080580F: push var_00000270
00805815: call [eax+48h]
00805818: fclex 
0080581A: mov var_00000274, eax
00805820: cmp var_00000274, 00000000h
00805827: jnl 805849h
00805829: push 00000048h
0080582B: push 00440DE8h
00805830: push var_00000270
00805836: push var_00000274
0080583C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00805841: mov var_00000310, eax
00805847: jmp 805850h
00805849: and var_00000310, 00000000h
00805850: mov ax, var_00000264
00805857: mov var_000001A8, ax
0080585E: mov var_000001B0, 00000002h
00805868: mov var_000001B8, 00000001h
00805872: mov var_000001C0, 00000002h
0080587C: lea eax, var_000001A0
00805882: push eax
00805883: lea eax, var_000001B0
00805889: push eax
0080588A: lea eax, var_000001C0
00805890: push eax
00805891: lea eax, var_0000029C
00805897: push eax
00805898: lea eax, var_0000028C
0080589E: push eax
0080589F: lea eax, var_30
008058A2: push eax
008058A3: call 00410A3Ch ; For
008058A8: mov var_000002F8, eax
008058AE: lea ecx, var_60
008058B1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008058B6: jmp 0080597Dh
008058BB: mov var_04, 0000000Ch
008058C2: push 00000000h
008058C4: push 00000000h
008058C6: push 00000001h
008058C8: push 00000000h
008058CA: lea eax, var_00000190
008058D0: push eax
008058D1: push 00000010h
008058D3: push 00000880h
008058D8: call 00410946h ; ReDim
008058DD: add esp, 0000001Ch
008058E0: mov var_00000198, 00442930h
008058EA: mov var_000001A0, 00000008h
008058F4: lea esi, var_000001A0
008058FA: push 00000000h
008058FC: push var_00000190
00805902: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00805907: mov ecx, eax
00805909: mov edx, esi
0080590B: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
00805910: mov edx, 0043D47Ch ; x9
00805915: lea ecx, var_40
00805918: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080591D: lea eax, var_00000190
00805923: push eax
00805924: lea eax, var_40
00805927: push eax
00805928: lea eax, var_30
0080592B: push eax
0080592C: call 004109D0h ; msvbvm60.dll.__vbaI2Var
00805931: push eax
00805932: call 007A6910h
00805937: lea eax, var_00000190
0080593D: push eax
0080593E: push 00000000h
00805940: call 00410934h ; Erase
00805945: lea ecx, var_40
00805948: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0080594D: mov var_04, 0000000Dh
00805954: call 0041096Ah ; DoEvents
00805959: mov var_04, 0000000Eh
00805960: lea eax, var_0000029C
00805966: push eax
00805967: lea eax, var_0000028C
0080596D: push eax
0080596E: lea eax, var_30
00805971: push eax
00805972: call 00410A36h ; Next
00805977: mov var_000002F8, eax
0080597D: cmp var_000002F8, 00000000h
00805984: jnz 008058BBh
0080598A: jmp 00806DFCh
0080598F: mov var_04, 00000010h
00805996: cmp [008F529Ch], 00000000h
0080599D: jnz 8059BAh
0080599F: push 008F529Ch
008059A4: push 00440F2Ch
008059A9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008059AE: mov var_00000314, 008F529Ch
008059B8: jmp 8059C4h
008059BA: mov var_00000314, 008F529Ch
008059C4: mov eax, var_00000314
008059CA: mov eax, [eax]
008059CC: mov var_00000270, eax
008059D2: lea eax, var_60
008059D5: push eax
008059D6: mov eax, var_00000270
008059DC: mov eax, [eax]
008059DE: push var_00000270
008059E4: call [eax+1Ch]
008059E7: fclex 
008059E9: mov var_00000274, eax
008059EF: cmp var_00000274, 00000000h
008059F6: jnl 805A18h
008059F8: push 0000001Ch
008059FA: push 00440F1Ch
008059FF: push var_00000270
00805A05: push var_00000274
00805A0B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00805A10: mov var_00000318, eax
00805A16: jmp 805A1Fh
00805A18: and var_00000318, 00000000h
00805A1F: mov eax, var_60
00805A22: mov var_00000278, eax
00805A28: mov eax, var_00000278
00805A2E: mov eax, [eax]
00805A30: push var_00000278
00805A36: call [eax+50h]
00805A39: fclex 
00805A3B: mov var_0000027C, eax
00805A41: cmp var_0000027C, 00000000h
00805A48: jnl 805A6Ah
00805A4A: push 00000050h
00805A4C: push 00445554h
00805A51: push var_00000278
00805A57: push var_0000027C
00805A5D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00805A62: mov var_0000031C, eax
00805A68: jmp 805A71h
00805A6A: and var_0000031C, 00000000h
00805A71: lea ecx, var_60
00805A74: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00805A79: mov var_04, 00000011h
00805A80: cmp [008F529Ch], 00000000h
00805A87: jnz 805AA4h
00805A89: push 008F529Ch
00805A8E: push 00440F2Ch
00805A93: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00805A98: mov var_00000320, 008F529Ch
00805AA2: jmp 805AAEh
00805AA4: mov var_00000320, 008F529Ch
00805AAE: mov eax, var_00000320
00805AB4: mov eax, [eax]
00805AB6: mov var_00000270, eax
00805ABC: lea eax, var_0000009C
00805AC2: push eax
00805AC3: mov eax, var_00000270
00805AC9: mov eax, [eax]
00805ACB: push var_00000270
00805AD1: call [eax+1Ch]
00805AD4: fclex 
00805AD6: mov var_00000274, eax
00805ADC: cmp var_00000274, 00000000h
00805AE3: jnl 805B05h
00805AE5: push 0000001Ch
00805AE7: push 00440F1Ch
00805AEC: push var_00000270
00805AF2: push var_00000274
00805AF8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00805AFD: mov var_00000324, eax
00805B03: jmp 805B0Ch
00805B05: and var_00000324, 00000000h
00805B0C: mov eax, var_0000009C
00805B12: mov var_00000278, eax
00805B18: mov var_00000258, 80020004h
00805B22: mov var_00000260, 0000000Ah
00805B2C: mov var_000001B8, 00000001h
00805B36: mov var_000001C0, 00000003h
00805B40: push 00000000h
00805B42: push 00000008h
00805B44: push 00440E58h
00805B49: push 00000000h
00805B4B: push 00000017h
00805B4D: mov eax, [ebp+08h]
00805B50: mov eax, [eax]
00805B52: push [ebp+08h]
00805B55: call [eax+00000308h]
00805B5B: push eax
00805B5C: lea eax, var_60
00805B5F: push eax
00805B60: call 00410A84h ; Set (object)
00805B65: push eax
00805B66: lea eax, var_000000AC
00805B6C: push eax
00805B6D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805B72: add esp, 00000010h
00805B75: push eax
00805B76: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00805B7B: push eax
00805B7C: lea eax, var_64
00805B7F: push eax
00805B80: call 00410A84h ; Set (object)
00805B85: push eax
00805B86: lea eax, var_000000BC
00805B8C: push eax
00805B8D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805B92: add esp, 00000010h
00805B95: push eax
00805B96: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00805B9B: mov var_00000198, eax
00805BA1: mov var_000001A0, 00000003h
00805BAB: mov var_000001F8, 00000002h
00805BB5: mov var_00000200, 00000003h
00805BBF: push 00000000h
00805BC1: push 00000008h
00805BC3: push 00440E58h
00805BC8: push 00000000h
00805BCA: push 00000017h
00805BCC: mov eax, [ebp+08h]
00805BCF: mov eax, [eax]
00805BD1: push [ebp+08h]
00805BD4: call [eax+00000308h]
00805BDA: push eax
00805BDB: lea eax, var_74
00805BDE: push eax
00805BDF: call 00410A84h ; Set (object)
00805BE4: push eax
00805BE5: lea eax, var_000000FC
00805BEB: push eax
00805BEC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805BF1: add esp, 00000010h
00805BF4: push eax
00805BF5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00805BFA: push eax
00805BFB: lea eax, var_78
00805BFE: push eax
00805BFF: call 00410A84h ; Set (object)
00805C04: push eax
00805C05: lea eax, var_0000010C
00805C0B: push eax
00805C0C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805C11: add esp, 00000010h
00805C14: push eax
00805C15: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00805C1A: mov var_000001D8, eax
00805C20: mov var_000001E0, 00000003h
00805C2A: mov var_00000238, 00000003h
00805C34: mov var_00000240, 00000003h
00805C3E: push 00000000h
00805C40: push 00000008h
00805C42: push 00440E58h
00805C47: push 00000000h
00805C49: push 00000017h
00805C4B: mov eax, [ebp+08h]
00805C4E: mov eax, [eax]
00805C50: push [ebp+08h]
00805C53: call [eax+00000308h]
00805C59: push eax
00805C5A: lea eax, var_00000088
00805C60: push eax
00805C61: call 00410A84h ; Set (object)
00805C66: push eax
00805C67: lea eax, var_0000014C
00805C6D: push eax
00805C6E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805C73: add esp, 00000010h
00805C76: push eax
00805C77: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00805C7C: push eax
00805C7D: lea eax, var_0000008C
00805C83: push eax
00805C84: call 00410A84h ; Set (object)
00805C89: push eax
00805C8A: lea eax, var_0000015C
00805C90: push eax
00805C91: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805C96: add esp, 00000010h
00805C99: push eax
00805C9A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00805C9F: mov var_00000218, eax
00805CA5: mov var_00000220, 00000003h
00805CAF: push 00000010h
00805CB1: pop eax
00805CB2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00805CB7: lea esi, var_00000260
00805CBD: mov edi, esp
00805CBF: movsd 
00805CC0: movsd 
00805CC1: movsd 
00805CC2: movsd 
00805CC3: push 00000010h
00805CC5: pop eax
00805CC6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00805CCB: lea esi, var_000001C0
00805CD1: mov edi, esp
00805CD3: movsd 
00805CD4: movsd 
00805CD5: movsd 
00805CD6: movsd 
00805CD7: push 00000001h
00805CD9: push 00000010h
00805CDB: push 00440E58h
00805CE0: push 00000010h
00805CE2: pop eax
00805CE3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00805CE8: lea esi, var_000001A0
00805CEE: mov edi, esp
00805CF0: movsd 
00805CF1: movsd 
00805CF2: movsd 
00805CF3: movsd 
00805CF4: push 00000001h
00805CF6: push 00000000h
00805CF8: push 00440E48h
00805CFD: push 00000000h
00805CFF: push 00000018h
00805D01: mov eax, [ebp+08h]
00805D04: mov eax, [eax]
00805D06: push [ebp+08h]
00805D09: call [eax+00000308h]
00805D0F: push eax
00805D10: lea eax, var_68
00805D13: push eax
00805D14: call 00410A84h ; Set (object)
00805D19: push eax
00805D1A: lea eax, var_000000CC
00805D20: push eax
00805D21: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805D26: add esp, 00000010h
00805D29: push eax
00805D2A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00805D2F: push eax
00805D30: lea eax, var_6C
00805D33: push eax
00805D34: call 00410A84h ; Set (object)
00805D39: push eax
00805D3A: lea eax, var_000000DC
00805D40: push eax
00805D41: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805D46: add esp, 00000020h
00805D49: push eax
00805D4A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00805D4F: push eax
00805D50: lea eax, var_70
00805D53: push eax
00805D54: call 00410A84h ; Set (object)
00805D59: push eax
00805D5A: lea eax, var_000000EC
00805D60: push eax
00805D61: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805D66: add esp, 00000020h
00805D69: push eax
00805D6A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00805D6F: mov edx, eax
00805D71: lea ecx, var_40
00805D74: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00805D79: push eax
00805D7A: push 004412B8h
00805D7F: call 00410A18h ; &
00805D84: mov edx, eax
00805D86: lea ecx, var_44
00805D89: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00805D8E: push eax
00805D8F: push 00000010h
00805D91: pop eax
00805D92: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00805D97: lea esi, var_00000200
00805D9D: mov edi, esp
00805D9F: movsd 
00805DA0: movsd 
00805DA1: movsd 
00805DA2: movsd 
00805DA3: push 00000001h
00805DA5: push 00000010h
00805DA7: push 00440E58h
00805DAC: push 00000010h
00805DAE: pop eax
00805DAF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00805DB4: lea esi, var_000001E0
00805DBA: mov edi, esp
00805DBC: movsd 
00805DBD: movsd 
00805DBE: movsd 
00805DBF: movsd 
00805DC0: push 00000001h
00805DC2: push 00000000h
00805DC4: push 00440E48h
00805DC9: push 00000000h
00805DCB: push 00000018h
00805DCD: mov eax, [ebp+08h]
00805DD0: mov eax, [eax]
00805DD2: push [ebp+08h]
00805DD5: call [eax+00000308h]
00805DDB: push eax
00805DDC: lea eax, var_7C
00805DDF: push eax
00805DE0: call 00410A84h ; Set (object)
00805DE5: push eax
00805DE6: lea eax, var_0000011C
00805DEC: push eax
00805DED: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805DF2: add esp, 00000010h
00805DF5: push eax
00805DF6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00805DFB: push eax
00805DFC: lea eax, var_80
00805DFF: push eax
00805E00: call 00410A84h ; Set (object)
00805E05: push eax
00805E06: lea eax, var_0000012C
00805E0C: push eax
00805E0D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805E12: add esp, 00000020h
00805E15: push eax
00805E16: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00805E1B: push eax
00805E1C: lea eax, var_00000084
00805E22: push eax
00805E23: call 00410A84h ; Set (object)
00805E28: push eax
00805E29: lea eax, var_0000013C
00805E2F: push eax
00805E30: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805E35: add esp, 00000020h
00805E38: push eax
00805E39: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00805E3E: mov edx, eax
00805E40: lea ecx, var_48
00805E43: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00805E48: push eax
00805E49: call 00410A18h ; &
00805E4E: mov edx, eax
00805E50: lea ecx, var_4C
00805E53: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00805E58: push eax
00805E59: push 004412B8h
00805E5E: call 00410A18h ; &
00805E63: mov edx, eax
00805E65: lea ecx, var_50
00805E68: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00805E6D: push eax
00805E6E: push 00000010h
00805E70: pop eax
00805E71: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00805E76: lea esi, var_00000240
00805E7C: mov edi, esp
00805E7E: movsd 
00805E7F: movsd 
00805E80: movsd 
00805E81: movsd 
00805E82: push 00000001h
00805E84: push 00000010h
00805E86: push 00440E58h
00805E8B: push 00000010h
00805E8D: pop eax
00805E8E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00805E93: lea esi, var_00000220
00805E99: mov edi, esp
00805E9B: movsd 
00805E9C: movsd 
00805E9D: movsd 
00805E9E: movsd 
00805E9F: push 00000001h
00805EA1: push 00000000h
00805EA3: push 00440E48h
00805EA8: push 00000000h
00805EAA: push 00000018h
00805EAC: mov eax, [ebp+08h]
00805EAF: mov eax, [eax]
00805EB1: push [ebp+08h]
00805EB4: call [eax+00000308h]
00805EBA: push eax
00805EBB: lea eax, var_00000090
00805EC1: push eax
00805EC2: call 00410A84h ; Set (object)
00805EC7: push eax
00805EC8: lea eax, var_0000016C
00805ECE: push eax
00805ECF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805ED4: add esp, 00000010h
00805ED7: push eax
00805ED8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00805EDD: push eax
00805EDE: lea eax, var_00000094
00805EE4: push eax
00805EE5: call 00410A84h ; Set (object)
00805EEA: push eax
00805EEB: lea eax, var_0000017C
00805EF1: push eax
00805EF2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805EF7: add esp, 00000020h
00805EFA: push eax
00805EFB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00805F00: push eax
00805F01: lea eax, var_00000098
00805F07: push eax
00805F08: call 00410A84h ; Set (object)
00805F0D: push eax
00805F0E: lea eax, var_0000018C
00805F14: push eax
00805F15: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805F1A: add esp, 00000020h
00805F1D: push eax
00805F1E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00805F23: mov edx, eax
00805F25: lea ecx, var_54
00805F28: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00805F2D: push eax
00805F2E: call 00410A18h ; &
00805F33: mov edx, eax
00805F35: lea ecx, var_58
00805F38: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00805F3D: push eax
00805F3E: mov eax, var_00000278
00805F44: mov eax, [eax]
00805F46: push var_00000278
00805F4C: call [eax+60h]
00805F4F: fclex 
00805F51: mov var_0000027C, eax
00805F57: cmp var_0000027C, 00000000h
00805F5E: jnl 805F80h
00805F60: push 00000060h
00805F62: push 00445554h
00805F67: push var_00000278
00805F6D: push var_0000027C
00805F73: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00805F78: mov var_00000328, eax
00805F7E: jmp 805F87h
00805F80: and var_00000328, 00000000h
00805F87: lea eax, var_58
00805F8A: push eax
00805F8B: lea eax, var_54
00805F8E: push eax
00805F8F: lea eax, var_50
00805F92: push eax
00805F93: lea eax, var_4C
00805F96: push eax
00805F97: lea eax, var_48
00805F9A: push eax
00805F9B: lea eax, var_44
00805F9E: push eax
00805F9F: lea eax, var_40
00805FA2: push eax
00805FA3: push 00000007h
00805FA5: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00805FAA: add esp, 00000020h
00805FAD: lea eax, var_0000009C
00805FB3: push eax
00805FB4: lea eax, var_00000098
00805FBA: push eax
00805FBB: lea eax, var_00000094
00805FC1: push eax
00805FC2: lea eax, var_00000090
00805FC8: push eax
00805FC9: lea eax, var_0000008C
00805FCF: push eax
00805FD0: lea eax, var_00000088
00805FD6: push eax
00805FD7: lea eax, var_00000084
00805FDD: push eax
00805FDE: lea eax, var_80
00805FE1: push eax
00805FE2: lea eax, var_7C
00805FE5: push eax
00805FE6: lea eax, var_78
00805FE9: push eax
00805FEA: lea eax, var_74
00805FED: push eax
00805FEE: lea eax, var_70
00805FF1: push eax
00805FF2: lea eax, var_6C
00805FF5: push eax
00805FF6: lea eax, var_68
00805FF9: push eax
00805FFA: lea eax, var_64
00805FFD: push eax
00805FFE: lea eax, var_60
00806001: push eax
00806002: push 00000010h
00806004: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00806009: add esp, 00000044h
0080600C: lea eax, var_0000018C
00806012: push eax
00806013: lea eax, var_0000017C
00806019: push eax
0080601A: lea eax, var_0000016C
00806020: push eax
00806021: lea eax, var_0000015C
00806027: push eax
00806028: lea eax, var_0000014C
0080602E: push eax
0080602F: lea eax, var_0000013C
00806035: push eax
00806036: lea eax, var_0000012C
0080603C: push eax
0080603D: lea eax, var_0000011C
00806043: push eax
00806044: lea eax, var_0000010C
0080604A: push eax
0080604B: lea eax, var_000000FC
00806051: push eax
00806052: lea eax, var_000000EC
00806058: push eax
00806059: lea eax, var_000000DC
0080605F: push eax
00806060: lea eax, var_000000CC
00806066: push eax
00806067: lea eax, var_000000BC
0080606D: push eax
0080606E: lea eax, var_000000AC
00806074: push eax
00806075: push 0000000Fh
00806077: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080607C: add esp, 00000040h
0080607F: jmp 00806DFCh
00806084: mov var_04, 00000013h
0080608B: mov var_00000198, 00000001h
00806095: mov var_000001A0, 00000002h
0080609F: push 00000000h
008060A1: push 00000001h
008060A3: push 00440E48h
008060A8: push 00000000h
008060AA: push 00000018h
008060AC: mov eax, [ebp+08h]
008060AF: mov eax, [eax]
008060B1: push [ebp+08h]
008060B4: call [eax+00000308h]
008060BA: push eax
008060BB: lea eax, var_60
008060BE: push eax
008060BF: call 00410A84h ; Set (object)
008060C4: push eax
008060C5: lea eax, var_000000AC
008060CB: push eax
008060CC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008060D1: add esp, 00000010h
008060D4: push eax
008060D5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008060DA: push eax
008060DB: lea eax, var_64
008060DE: push eax
008060DF: call 00410A84h ; Set (object)
008060E4: push eax
008060E5: lea eax, var_000000BC
008060EB: push eax
008060EC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008060F1: add esp, 00000010h
008060F4: push eax
008060F5: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008060FA: mov var_000001A8, eax
00806100: mov var_000001B0, 00000003h
0080610A: mov var_000001B8, 00000001h
00806114: mov var_000001C0, 00000002h
0080611E: lea eax, var_000001A0
00806124: push eax
00806125: lea eax, var_000001B0
0080612B: push eax
0080612C: lea eax, var_000001C0
00806132: push eax
00806133: lea eax, var_000002BC
00806139: push eax
0080613A: lea eax, var_000002AC
00806140: push eax
00806141: lea eax, var_30
00806144: push eax
00806145: call 00410A3Ch ; For
0080614A: mov var_000002FC, eax
00806150: lea eax, var_64
00806153: push eax
00806154: lea eax, var_60
00806157: push eax
00806158: push 00000002h
0080615A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080615F: add esp, 0000000Ch
00806162: lea eax, var_000000BC
00806168: push eax
00806169: lea eax, var_000000AC
0080616F: push eax
00806170: push 00000002h
00806172: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00806177: add esp, 0000000Ch
0080617A: jmp 00806556h
0080617F: mov var_04, 00000014h
00806186: mov var_000001A8, 00000001h
00806190: mov var_000001B0, 00000003h
0080619A: lea eax, var_30
0080619D: mov var_00000198, eax
008061A3: mov var_000001A0, 0000400Ch
008061AD: mov var_000001D8, 00000002h
008061B7: mov var_000001E0, 00000003h
008061C1: lea eax, var_30
008061C4: mov var_000001C8, eax
008061CA: mov var_000001D0, 0000400Ch
008061D4: mov var_00000208, 00000003h
008061DE: mov var_00000210, 00000003h
008061E8: lea eax, var_30
008061EB: mov var_000001F8, eax
008061F1: mov var_00000200, 0000400Ch
008061FB: push var_38
008061FE: push 00000010h
00806200: pop eax
00806201: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00806206: lea esi, var_000001B0
0080620C: mov edi, esp
0080620E: movsd 
0080620F: movsd 
00806210: movsd 
00806211: movsd 
00806212: push 00000001h
00806214: push 00000010h
00806216: push 00440E58h
0080621B: push 00000010h
0080621D: pop eax
0080621E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00806223: lea esi, var_000001A0
00806229: mov edi, esp
0080622B: movsd 
0080622C: movsd 
0080622D: movsd 
0080622E: movsd 
0080622F: push 00000001h
00806231: push 00000000h
00806233: push 00440E48h
00806238: push 00000000h
0080623A: push 00000018h
0080623C: mov eax, [ebp+08h]
0080623F: mov eax, [eax]
00806241: push [ebp+08h]
00806244: call [eax+00000308h]
0080624A: push eax
0080624B: lea eax, var_60
0080624E: push eax
0080624F: call 00410A84h ; Set (object)
00806254: push eax
00806255: lea eax, var_000000AC
0080625B: push eax
0080625C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00806261: add esp, 00000010h
00806264: push eax
00806265: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080626A: push eax
0080626B: lea eax, var_64
0080626E: push eax
0080626F: call 00410A84h ; Set (object)
00806274: push eax
00806275: lea eax, var_000000BC
0080627B: push eax
0080627C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00806281: add esp, 00000020h
00806284: push eax
00806285: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080628A: push eax
0080628B: lea eax, var_68
0080628E: push eax
0080628F: call 00410A84h ; Set (object)
00806294: push eax
00806295: lea eax, var_000000CC
0080629B: push eax
0080629C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008062A1: add esp, 00000020h
008062A4: push eax
008062A5: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008062AA: mov edx, eax
008062AC: lea ecx, var_40
008062AF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008062B4: push eax
008062B5: call 00410A18h ; &
008062BA: mov edx, eax
008062BC: lea ecx, var_44
008062BF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008062C4: push eax
008062C5: push 004412B8h
008062CA: call 00410A18h ; &
008062CF: mov edx, eax
008062D1: lea ecx, var_48
008062D4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008062D9: push eax
008062DA: push 00000010h
008062DC: pop eax
008062DD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008062E2: lea esi, var_000001E0
008062E8: mov edi, esp
008062EA: movsd 
008062EB: movsd 
008062EC: movsd 
008062ED: movsd 
008062EE: push 00000001h
008062F0: push 00000010h
008062F2: push 00440E58h
008062F7: push 00000010h
008062F9: pop eax
008062FA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008062FF: lea esi, var_000001D0
00806305: mov edi, esp
00806307: movsd 
00806308: movsd 
00806309: movsd 
0080630A: movsd 
0080630B: push 00000001h
0080630D: push 00000000h
0080630F: push 00440E48h
00806314: push 00000000h
00806316: push 00000018h
00806318: mov eax, [ebp+08h]
0080631B: mov eax, [eax]
0080631D: push [ebp+08h]
00806320: call [eax+00000308h]
00806326: push eax
00806327: lea eax, var_6C
0080632A: push eax
0080632B: call 00410A84h ; Set (object)
00806330: push eax
00806331: lea eax, var_000000DC
00806337: push eax
00806338: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080633D: add esp, 00000010h
00806340: push eax
00806341: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00806346: push eax
00806347: lea eax, var_70
0080634A: push eax
0080634B: call 00410A84h ; Set (object)
00806350: push eax
00806351: lea eax, var_000000EC
00806357: push eax
00806358: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080635D: add esp, 00000020h
00806360: push eax
00806361: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00806366: push eax
00806367: lea eax, var_74
0080636A: push eax
0080636B: call 00410A84h ; Set (object)
00806370: push eax
00806371: lea eax, var_000000FC
00806377: push eax
00806378: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080637D: add esp, 00000020h
00806380: push eax
00806381: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00806386: mov edx, eax
00806388: lea ecx, var_4C
0080638B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00806390: push eax
00806391: call 00410A18h ; &
00806396: mov edx, eax
00806398: lea ecx, var_50
0080639B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008063A0: push eax
008063A1: push 004412B8h
008063A6: call 00410A18h ; &
008063AB: mov edx, eax
008063AD: lea ecx, var_54
008063B0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008063B5: push eax
008063B6: push 00000010h
008063B8: pop eax
008063B9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008063BE: lea esi, var_00000210
008063C4: mov edi, esp
008063C6: movsd 
008063C7: movsd 
008063C8: movsd 
008063C9: movsd 
008063CA: push 00000001h
008063CC: push 00000010h
008063CE: push 00440E58h
008063D3: push 00000010h
008063D5: pop eax
008063D6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008063DB: lea esi, var_00000200
008063E1: mov edi, esp
008063E3: movsd 
008063E4: movsd 
008063E5: movsd 
008063E6: movsd 
008063E7: push 00000001h
008063E9: push 00000000h
008063EB: push 00440E48h
008063F0: push 00000000h
008063F2: push 00000018h
008063F4: mov eax, [ebp+08h]
008063F7: mov eax, [eax]
008063F9: push [ebp+08h]
008063FC: call [eax+00000308h]
00806402: push eax
00806403: lea eax, var_78
00806406: push eax
00806407: call 00410A84h ; Set (object)
0080640C: push eax
0080640D: lea eax, var_0000010C
00806413: push eax
00806414: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00806419: add esp, 00000010h
0080641C: push eax
0080641D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00806422: push eax
00806423: lea eax, var_7C
00806426: push eax
00806427: call 00410A84h ; Set (object)
0080642C: push eax
0080642D: lea eax, var_0000011C
00806433: push eax
00806434: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00806439: add esp, 00000020h
0080643C: push eax
0080643D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00806442: push eax
00806443: lea eax, var_80
00806446: push eax
00806447: call 00410A84h ; Set (object)
0080644C: push eax
0080644D: lea eax, var_0000012C
00806453: push eax
00806454: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00806459: add esp, 00000020h
0080645C: push eax
0080645D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00806462: mov edx, eax
00806464: lea ecx, var_58
00806467: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080646C: push eax
0080646D: call 00410A18h ; &
00806472: mov edx, eax
00806474: lea ecx, var_5C
00806477: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080647C: push eax
0080647D: push 00441264h ; vbCrLf
00806482: call 00410A18h ; &
00806487: mov edx, eax
00806489: lea ecx, var_38
0080648C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00806491: lea eax, var_5C
00806494: push eax
00806495: lea eax, var_58
00806498: push eax
00806499: lea eax, var_54
0080649C: push eax
0080649D: lea eax, var_50
008064A0: push eax
008064A1: lea eax, var_4C
008064A4: push eax
008064A5: lea eax, var_48
008064A8: push eax
008064A9: lea eax, var_44
008064AC: push eax
008064AD: lea eax, var_40
008064B0: push eax
008064B1: push 00000008h
008064B3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008064B8: add esp, 00000024h
008064BB: lea eax, var_80
008064BE: push eax
008064BF: lea eax, var_7C
008064C2: push eax
008064C3: lea eax, var_78
008064C6: push eax
008064C7: lea eax, var_74
008064CA: push eax
008064CB: lea eax, var_70
008064CE: push eax
008064CF: lea eax, var_6C
008064D2: push eax
008064D3: lea eax, var_68
008064D6: push eax
008064D7: lea eax, var_64
008064DA: push eax
008064DB: lea eax, var_60
008064DE: push eax
008064DF: push 00000009h
008064E1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008064E6: add esp, 00000028h
008064E9: lea eax, var_0000012C
008064EF: push eax
008064F0: lea eax, var_0000011C
008064F6: push eax
008064F7: lea eax, var_0000010C
008064FD: push eax
008064FE: lea eax, var_000000FC
00806504: push eax
00806505: lea eax, var_000000EC
0080650B: push eax
0080650C: lea eax, var_000000DC
00806512: push eax
00806513: lea eax, var_000000CC
00806519: push eax
0080651A: lea eax, var_000000BC
00806520: push eax
00806521: lea eax, var_000000AC
00806527: push eax
00806528: push 00000009h
0080652A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080652F: add esp, 00000028h
00806532: mov var_04, 00000015h
00806539: lea eax, var_000002BC
0080653F: push eax
00806540: lea eax, var_000002AC
00806546: push eax
00806547: lea eax, var_30
0080654A: push eax
0080654B: call 00410A36h ; Next
00806550: mov var_000002FC, eax
00806556: cmp var_000002FC, 00000000h
0080655D: jnz 0080617Fh
00806563: mov var_04, 00000016h
0080656A: cmp [008F529Ch], 00000000h
00806571: jnz 80658Eh
00806573: push 008F529Ch
00806578: push 00440F2Ch
0080657D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00806582: mov var_0000032C, 008F529Ch
0080658C: jmp 806598h
0080658E: mov var_0000032C, 008F529Ch
00806598: mov eax, var_0000032C
0080659E: mov eax, [eax]
008065A0: mov var_00000270, eax
008065A6: lea eax, var_60
008065A9: push eax
008065AA: mov eax, var_00000270
008065B0: mov eax, [eax]
008065B2: push var_00000270
008065B8: call [eax+1Ch]
008065BB: fclex 
008065BD: mov var_00000274, eax
008065C3: cmp var_00000274, 00000000h
008065CA: jnl 8065ECh
008065CC: push 0000001Ch
008065CE: push 00440F1Ch
008065D3: push var_00000270
008065D9: push var_00000274
008065DF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008065E4: mov var_00000330, eax
008065EA: jmp 8065F3h
008065EC: and var_00000330, 00000000h
008065F3: mov eax, var_60
008065F6: mov var_00000278, eax
008065FC: mov eax, var_00000278
00806602: mov eax, [eax]
00806604: push var_00000278
0080660A: call [eax+50h]
0080660D: fclex 
0080660F: mov var_0000027C, eax
00806615: cmp var_0000027C, 00000000h
0080661C: jnl 80663Eh
0080661E: push 00000050h
00806620: push 00445554h
00806625: push var_00000278
0080662B: push var_0000027C
00806631: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00806636: mov var_00000334, eax
0080663C: jmp 806645h
0080663E: and var_00000334, 00000000h
00806645: lea ecx, var_60
00806648: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080664D: mov var_04, 00000017h
00806654: cmp [008F529Ch], 00000000h
0080665B: jnz 806678h
0080665D: push 008F529Ch
00806662: push 00440F2Ch
00806667: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080666C: mov var_00000338, 008F529Ch
00806676: jmp 806682h
00806678: mov var_00000338, 008F529Ch
00806682: mov eax, var_00000338
00806688: mov eax, [eax]
0080668A: mov var_00000270, eax
00806690: lea eax, var_60
00806693: push eax
00806694: mov eax, var_00000270
0080669A: mov eax, [eax]
0080669C: push var_00000270
008066A2: call [eax+1Ch]
008066A5: fclex 
008066A7: mov var_00000274, eax
008066AD: cmp var_00000274, 00000000h
008066B4: jnl 8066D6h
008066B6: push 0000001Ch
008066B8: push 00440F1Ch
008066BD: push var_00000270
008066C3: push var_00000274
008066C9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008066CE: mov var_0000033C, eax
008066D4: jmp 8066DDh
008066D6: and var_0000033C, 00000000h
008066DD: mov eax, var_60
008066E0: mov var_00000278, eax
008066E6: mov var_00000198, 80020004h
008066F0: mov var_000001A0, 0000000Ah
008066FA: push 00000010h
008066FC: pop eax
008066FD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00806702: lea esi, var_000001A0
00806708: mov edi, esp
0080670A: movsd 
0080670B: movsd 
0080670C: movsd 
0080670D: movsd 
0080670E: push var_38
00806711: mov eax, var_00000278
00806717: mov eax, [eax]
00806719: push var_00000278
0080671F: call [eax+60h]
00806722: fclex 
00806724: mov var_0000027C, eax
0080672A: cmp var_0000027C, 00000000h
00806731: jnl 806753h
00806733: push 00000060h
00806735: push 00445554h
0080673A: push var_00000278
00806740: push var_0000027C
00806746: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080674B: mov var_00000340, eax
00806751: jmp 80675Ah
00806753: and var_00000340, 00000000h
0080675A: lea ecx, var_60
0080675D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00806762: jmp 00806DFCh
00806767: mov var_04, 00000019h
0080676E: cmp [008F529Ch], 00000000h
00806775: jnz 806792h
00806777: push 008F529Ch
0080677C: push 00440F2Ch
00806781: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00806786: mov var_00000344, 008F529Ch
00806790: jmp 80679Ch
00806792: mov var_00000344, 008F529Ch
0080679C: mov eax, var_00000344
008067A2: mov eax, [eax]
008067A4: mov var_00000270, eax
008067AA: lea eax, var_60
008067AD: push eax
008067AE: mov eax, var_00000270
008067B4: mov eax, [eax]
008067B6: push var_00000270
008067BC: call [eax+14h]
008067BF: fclex 
008067C1: mov var_00000274, eax
008067C7: cmp var_00000274, 00000000h
008067CE: jnl 8067F0h
008067D0: push 00000014h
008067D2: push 00440F1Ch
008067D7: push var_00000270
008067DD: push var_00000274
008067E3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008067E8: mov var_00000348, eax
008067EE: jmp 8067F7h
008067F0: and var_00000348, 00000000h
008067F7: mov eax, var_60
008067FA: mov var_00000278, eax
00806800: lea eax, var_40
00806803: push eax
00806804: mov eax, var_00000278
0080680A: mov eax, [eax]
0080680C: push var_00000278
00806812: call [eax+50h]
00806815: fclex 
00806817: mov var_0000027C, eax
0080681D: cmp var_0000027C, 00000000h
00806824: jnl 806846h
00806826: push 00000050h
00806828: push 00440F3Ch
0080682D: push var_00000278
00806833: push var_0000027C
00806839: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080683E: mov var_0000034C, eax
00806844: jmp 80684Dh
00806846: and var_0000034C, 00000000h
0080684D: push 00000000h
0080684F: push 00000000h
00806851: push var_40
00806854: push 0044558Ch ; txt
00806859: push 00452FD0h ; Text Documents
0080685E: call 007CCC4Dh
00806863: mov edx, eax
00806865: lea ecx, var_3C
00806868: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080686D: lea ecx, var_40
00806870: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00806875: lea ecx, var_60
00806878: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080687D: mov var_04, 0000001Ah
00806884: push var_3C
00806887: push 00000000h
00806889: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0080688E: test eax, eax
00806890: jz 00806DFCh
00806896: mov var_04, 0000001Bh
0080689D: mov var_00000198, 00000001h
008068A7: mov var_000001A0, 00000002h
008068B1: push 00000000h
008068B3: push 00000001h
008068B5: push 00440E48h
008068BA: push 00000000h
008068BC: push 00000018h
008068BE: mov eax, [ebp+08h]
008068C1: mov eax, [eax]
008068C3: push [ebp+08h]
008068C6: call [eax+00000308h]
008068CC: push eax
008068CD: lea eax, var_60
008068D0: push eax
008068D1: call 00410A84h ; Set (object)
008068D6: push eax
008068D7: lea eax, var_000000AC
008068DD: push eax
008068DE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008068E3: add esp, 00000010h
008068E6: push eax
008068E7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008068EC: push eax
008068ED: lea eax, var_64
008068F0: push eax
008068F1: call 00410A84h ; Set (object)
008068F6: push eax
008068F7: lea eax, var_000000BC
008068FD: push eax
008068FE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00806903: add esp, 00000010h
00806906: push eax
00806907: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0080690C: mov var_000001A8, eax
00806912: mov var_000001B0, 00000003h
0080691C: mov var_000001B8, 00000001h
00806926: mov var_000001C0, 00000002h
00806930: lea eax, var_000001A0
00806936: push eax
00806937: lea eax, var_000001B0
0080693D: push eax
0080693E: lea eax, var_000001C0
00806944: push eax
00806945: lea eax, var_000002DC
0080694B: push eax
0080694C: lea eax, var_000002CC
00806952: push eax
00806953: lea eax, var_30
00806956: push eax
00806957: call 00410A3Ch ; For
0080695C: mov var_00000300, eax
00806962: lea eax, var_64
00806965: push eax
00806966: lea eax, var_60
00806969: push eax
0080696A: push 00000002h
0080696C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00806971: add esp, 0000000Ch
00806974: lea eax, var_000000BC
0080697A: push eax
0080697B: lea eax, var_000000AC
00806981: push eax
00806982: push 00000002h
00806984: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00806989: add esp, 0000000Ch
0080698C: jmp 00806D68h
00806991: mov var_04, 0000001Ch
00806998: mov var_000001A8, 00000001h
008069A2: mov var_000001B0, 00000003h
008069AC: lea eax, var_30
008069AF: mov var_00000198, eax
008069B5: mov var_000001A0, 0000400Ch
008069BF: mov var_000001D8, 00000002h
008069C9: mov var_000001E0, 00000003h
008069D3: lea eax, var_30
008069D6: mov var_000001C8, eax
008069DC: mov var_000001D0, 0000400Ch
008069E6: mov var_00000208, 00000003h
008069F0: mov var_00000210, 00000003h
008069FA: lea eax, var_30
008069FD: mov var_000001F8, eax
00806A03: mov var_00000200, 0000400Ch
00806A0D: push var_38
00806A10: push 00000010h
00806A12: pop eax
00806A13: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00806A18: lea esi, var_000001B0
00806A1E: mov edi, esp
00806A20: movsd 
00806A21: movsd 
00806A22: movsd 
00806A23: movsd 
00806A24: push 00000001h
00806A26: push 00000010h
00806A28: push 00440E58h
00806A2D: push 00000010h
00806A2F: pop eax
00806A30: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00806A35: lea esi, var_000001A0
00806A3B: mov edi, esp
00806A3D: movsd 
00806A3E: movsd 
00806A3F: movsd 
00806A40: movsd 
00806A41: push 00000001h
00806A43: push 00000000h
00806A45: push 00440E48h
00806A4A: push 00000000h
00806A4C: push 00000018h
00806A4E: mov eax, [ebp+08h]
00806A51: mov eax, [eax]
00806A53: push [ebp+08h]
00806A56: call [eax+00000308h]
00806A5C: push eax
00806A5D: lea eax, var_60
00806A60: push eax
00806A61: call 00410A84h ; Set (object)
00806A66: push eax
00806A67: lea eax, var_000000AC
00806A6D: push eax
00806A6E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00806A73: add esp, 00000010h
00806A76: push eax
00806A77: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00806A7C: push eax
00806A7D: lea eax, var_64
00806A80: push eax
00806A81: call 00410A84h ; Set (object)
00806A86: push eax
00806A87: lea eax, var_000000BC
00806A8D: push eax
00806A8E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00806A93: add esp, 00000020h
00806A96: push eax
00806A97: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00806A9C: push eax
00806A9D: lea eax, var_68
00806AA0: push eax
00806AA1: call 00410A84h ; Set (object)
00806AA6: push eax
00806AA7: lea eax, var_000000CC
00806AAD: push eax
00806AAE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00806AB3: add esp, 00000020h
00806AB6: push eax
00806AB7: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00806ABC: mov edx, eax
00806ABE: lea ecx, var_40
00806AC1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00806AC6: push eax
00806AC7: call 00410A18h ; &
00806ACC: mov edx, eax
00806ACE: lea ecx, var_44
00806AD1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00806AD6: push eax
00806AD7: push 004412B8h
00806ADC: call 00410A18h ; &
00806AE1: mov edx, eax
00806AE3: lea ecx, var_48
00806AE6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00806AEB: push eax
00806AEC: push 00000010h
00806AEE: pop eax
00806AEF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00806AF4: lea esi, var_000001E0
00806AFA: mov edi, esp
00806AFC: movsd 
00806AFD: movsd 
00806AFE: movsd 
00806AFF: movsd 
00806B00: push 00000001h
00806B02: push 00000010h
00806B04: push 00440E58h
00806B09: push 00000010h
00806B0B: pop eax
00806B0C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00806B11: lea esi, var_000001D0
00806B17: mov edi, esp
00806B19: movsd 
00806B1A: movsd 
00806B1B: movsd 
00806B1C: movsd 
00806B1D: push 00000001h
00806B1F: push 00000000h
00806B21: push 00440E48h
00806B26: push 00000000h
00806B28: push 00000018h
00806B2A: mov eax, [ebp+08h]
00806B2D: mov eax, [eax]
00806B2F: push [ebp+08h]
00806B32: call [eax+00000308h]
00806B38: push eax
00806B39: lea eax, var_6C
00806B3C: push eax
00806B3D: call 00410A84h ; Set (object)
00806B42: push eax
00806B43: lea eax, var_000000DC
00806B49: push eax
00806B4A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00806B4F: add esp, 00000010h
00806B52: push eax
00806B53: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00806B58: push eax
00806B59: lea eax, var_70
00806B5C: push eax
00806B5D: call 00410A84h ; Set (object)
00806B62: push eax
00806B63: lea eax, var_000000EC
00806B69: push eax
00806B6A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00806B6F: add esp, 00000020h
00806B72: push eax
00806B73: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00806B78: push eax
00806B79: lea eax, var_74
00806B7C: push eax
00806B7D: call 00410A84h ; Set (object)
00806B82: push eax
00806B83: lea eax, var_000000FC
00806B89: push eax
00806B8A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00806B8F: add esp, 00000020h
00806B92: push eax
00806B93: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00806B98: mov edx, eax
00806B9A: lea ecx, var_4C
00806B9D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00806BA2: push eax
00806BA3: call 00410A18h ; &
00806BA8: mov edx, eax
00806BAA: lea ecx, var_50
00806BAD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00806BB2: push eax
00806BB3: push 004412B8h
00806BB8: call 00410A18h ; &
00806BBD: mov edx, eax
00806BBF: lea ecx, var_54
00806BC2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00806BC7: push eax
00806BC8: push 00000010h
00806BCA: pop eax
00806BCB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00806BD0: lea esi, var_00000210
00806BD6: mov edi, esp
00806BD8: movsd 
00806BD9: movsd 
00806BDA: movsd 
00806BDB: movsd 
00806BDC: push 00000001h
00806BDE: push 00000010h
00806BE0: push 00440E58h
00806BE5: push 00000010h
00806BE7: pop eax
00806BE8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00806BED: lea esi, var_00000200
00806BF3: mov edi, esp
00806BF5: movsd 
00806BF6: movsd 
00806BF7: movsd 
00806BF8: movsd 
00806BF9: push 00000001h
00806BFB: push 00000000h
00806BFD: push 00440E48h
00806C02: push 00000000h
00806C04: push 00000018h
00806C06: mov eax, [ebp+08h]
00806C09: mov eax, [eax]
00806C0B: push [ebp+08h]
00806C0E: call [eax+00000308h]
00806C14: push eax
00806C15: lea eax, var_78
00806C18: push eax
00806C19: call 00410A84h ; Set (object)
00806C1E: push eax
00806C1F: lea eax, var_0000010C
00806C25: push eax
00806C26: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00806C2B: add esp, 00000010h
00806C2E: push eax
00806C2F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00806C34: push eax
00806C35: lea eax, var_7C
00806C38: push eax
00806C39: call 00410A84h ; Set (object)
00806C3E: push eax
00806C3F: lea eax, var_0000011C
00806C45: push eax
00806C46: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00806C4B: add esp, 00000020h
00806C4E: push eax
00806C4F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00806C54: push eax
00806C55: lea eax, var_80
00806C58: push eax
00806C59: call 00410A84h ; Set (object)
00806C5E: push eax
00806C5F: lea eax, var_0000012C
00806C65: push eax
00806C66: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00806C6B: add esp, 00000020h
00806C6E: push eax
00806C6F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00806C74: mov edx, eax
00806C76: lea ecx, var_58
00806C79: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00806C7E: push eax
00806C7F: call 00410A18h ; &
00806C84: mov edx, eax
00806C86: lea ecx, var_5C
00806C89: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00806C8E: push eax
00806C8F: push 00441264h ; vbCrLf
00806C94: call 00410A18h ; &
00806C99: mov edx, eax
00806C9B: lea ecx, var_38
00806C9E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00806CA3: lea eax, var_5C
00806CA6: push eax
00806CA7: lea eax, var_58
00806CAA: push eax
00806CAB: lea eax, var_54
00806CAE: push eax
00806CAF: lea eax, var_50
00806CB2: push eax
00806CB3: lea eax, var_4C
00806CB6: push eax
00806CB7: lea eax, var_48
00806CBA: push eax
00806CBB: lea eax, var_44
00806CBE: push eax
00806CBF: lea eax, var_40
00806CC2: push eax
00806CC3: push 00000008h
00806CC5: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00806CCA: add esp, 00000024h
00806CCD: lea eax, var_80
00806CD0: push eax
00806CD1: lea eax, var_7C
00806CD4: push eax
00806CD5: lea eax, var_78
00806CD8: push eax
00806CD9: lea eax, var_74
00806CDC: push eax
00806CDD: lea eax, var_70
00806CE0: push eax
00806CE1: lea eax, var_6C
00806CE4: push eax
00806CE5: lea eax, var_68
00806CE8: push eax
00806CE9: lea eax, var_64
00806CEC: push eax
00806CED: lea eax, var_60
00806CF0: push eax
00806CF1: push 00000009h
00806CF3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00806CF8: add esp, 00000028h
00806CFB: lea eax, var_0000012C
00806D01: push eax
00806D02: lea eax, var_0000011C
00806D08: push eax
00806D09: lea eax, var_0000010C
00806D0F: push eax
00806D10: lea eax, var_000000FC
00806D16: push eax
00806D17: lea eax, var_000000EC
00806D1D: push eax
00806D1E: lea eax, var_000000DC
00806D24: push eax
00806D25: lea eax, var_000000CC
00806D2B: push eax
00806D2C: lea eax, var_000000BC
00806D32: push eax
00806D33: lea eax, var_000000AC
00806D39: push eax
00806D3A: push 00000009h
00806D3C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00806D41: add esp, 00000028h
00806D44: mov var_04, 0000001Dh
00806D4B: lea eax, var_000002DC
00806D51: push eax
00806D52: lea eax, var_000002CC
00806D58: push eax
00806D59: lea eax, var_30
00806D5C: push eax
00806D5D: call 00410A36h ; Next
00806D62: mov var_00000300, eax
00806D68: cmp var_00000300, 00000000h
00806D6F: jnz 00806991h
00806D75: mov var_04, 0000001Eh
00806D7C: mov var_000000A4, 80020004h
00806D86: mov var_000000AC, 0000000Ah
00806D90: lea eax, var_000000AC
00806D96: push eax
00806D97: call 004108C2h ; FreeFile
00806D9C: movsx eax, ax
00806D9F: mov var_34, eax
00806DA2: lea ecx, var_000000AC
00806DA8: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00806DAD: mov var_04, 0000001Fh
00806DB4: push var_3C
00806DB7: mov ecx, var_34
00806DBA: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00806DBF: push eax
00806DC0: push FFFFFFFFh
00806DC2: push 00000220h
00806DC7: call 004108B6h ; Open #
00806DCC: mov var_04, 00000020h
00806DD3: mov ecx, var_34
00806DD6: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00806DDB: push eax
00806DDC: lea eax, var_38
00806DDF: push eax
00806DE0: push 00000000h
00806DE2: call 0041089Eh ; Put #
00806DE7: mov var_04, 00000021h
00806DEE: mov ecx, var_34
00806DF1: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00806DF6: push eax
00806DF7: call 00410898h ; Close #arg_1
00806DFC: mov var_10, 00000000h
00806E03: wait 
00806E04: push 00806F66h
00806E09: jmp 00806F19h
00806E0E: lea eax, var_5C
00806E11: push eax
00806E12: lea eax, var_58
00806E15: push eax
00806E16: lea eax, var_54
00806E19: push eax
00806E1A: lea eax, var_50
00806E1D: push eax
00806E1E: lea eax, var_4C
00806E21: push eax
00806E22: lea eax, var_48
00806E25: push eax
00806E26: lea eax, var_44
00806E29: push eax
00806E2A: lea eax, var_40
00806E2D: push eax
00806E2E: push 00000008h
00806E30: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00806E35: add esp, 00000024h
00806E38: lea eax, var_0000009C
00806E3E: push eax
00806E3F: lea eax, var_00000098
00806E45: push eax
00806E46: lea eax, var_00000094
00806E4C: push eax
00806E4D: lea eax, var_00000090
00806E53: push eax
00806E54: lea eax, var_0000008C
00806E5A: push eax
00806E5B: lea eax, var_00000088
00806E61: push eax
00806E62: lea eax, var_00000084
00806E68: push eax
00806E69: lea eax, var_80
00806E6C: push eax
00806E6D: lea eax, var_7C
00806E70: push eax
00806E71: lea eax, var_78
00806E74: push eax
00806E75: lea eax, var_74
00806E78: push eax
00806E79: lea eax, var_70
00806E7C: push eax
00806E7D: lea eax, var_6C
00806E80: push eax
00806E81: lea eax, var_68
00806E84: push eax
00806E85: lea eax, var_64
00806E88: push eax
00806E89: lea eax, var_60
00806E8C: push eax
00806E8D: push 00000010h
00806E8F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00806E94: add esp, 00000044h
00806E97: lea eax, var_0000018C
00806E9D: push eax
00806E9E: lea eax, var_0000017C
00806EA4: push eax
00806EA5: lea eax, var_0000016C
00806EAB: push eax
00806EAC: lea eax, var_0000015C
00806EB2: push eax
00806EB3: lea eax, var_0000014C
00806EB9: push eax
00806EBA: lea eax, var_0000013C
00806EC0: push eax
00806EC1: lea eax, var_0000012C
00806EC7: push eax
00806EC8: lea eax, var_0000011C
00806ECE: push eax
00806ECF: lea eax, var_0000010C
00806ED5: push eax
00806ED6: lea eax, var_000000FC
00806EDC: push eax
00806EDD: lea eax, var_000000EC
00806EE3: push eax
00806EE4: lea eax, var_000000DC
00806EEA: push eax
00806EEB: lea eax, var_000000CC
00806EF1: push eax
00806EF2: lea eax, var_000000BC
00806EF8: push eax
00806EF9: lea eax, var_000000AC
00806EFF: push eax
00806F00: push 0000000Fh
00806F02: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00806F07: add esp, 00000040h
00806F0A: lea eax, var_00000190
00806F10: push eax
00806F11: push 00000000h
00806F13: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
00806F18: ret 
End Sub

Private sub lstPasswords__805181
00805181: push ebp
00805182: mov ebp, esp
00805184: sub esp, 0000000Ch
00805187: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080518C: mov eax, fs:[00h]
00805192: push eax
00805193: mov fs:[00000000h], esp
0080519A: push 00000054h
0080519C: pop eax
0080519D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008051A2: push ebx
008051A3: push esi
008051A4: push edi
008051A5: mov var_0C, esp
008051A8: mov var_08, 0040A438h
008051AF: mov eax, [ebp+08h]
008051B2: and eax, 00000001h
008051B5: mov var_04, eax
008051B8: mov eax, [ebp+08h]
008051BB: and al, FEh
008051BD: mov [ebp+08h], eax
008051C0: mov eax, [ebp+08h]
008051C3: mov eax, [eax]
008051C5: push [ebp+08h]
008051C8: call [eax+04h]
008051CB: mov eax, [ebp+0Ch]
008051CE: cmp word ptr [eax], 0002h
008051D2: jnz 008052ACh
008051D8: mov var_50, 80020004h
008051DF: mov var_58, 0000000Ah
008051E6: mov var_40, 80020004h
008051ED: mov var_48, 0000000Ah
008051F4: mov var_30, 80020004h
008051FB: mov var_38, 0000000Ah
00805202: mov var_20, 80020004h
00805209: mov var_28, 0000000Ah
00805210: push 00000010h
00805212: pop eax
00805213: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00805218: lea esi, var_58
0080521B: mov edi, esp
0080521D: movsd 
0080521E: movsd 
0080521F: movsd 
00805220: movsd 
00805221: push 00000010h
00805223: pop eax
00805224: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00805229: lea esi, var_48
0080522C: mov edi, esp
0080522E: movsd 
0080522F: movsd 
00805230: movsd 
00805231: movsd 
00805232: push 00000010h
00805234: pop eax
00805235: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080523A: lea esi, var_38
0080523D: mov edi, esp
0080523F: movsd 
00805240: movsd 
00805241: movsd 
00805242: movsd 
00805243: push 00000010h
00805245: pop eax
00805246: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080524B: lea esi, var_28
0080524E: mov edi, esp
00805250: movsd 
00805251: movsd 
00805252: movsd 
00805253: movsd 
00805254: mov eax, [ebp+08h]
00805257: mov eax, [eax]
00805259: push [ebp+08h]
0080525C: call [eax+00000300h]
00805262: push eax
00805263: lea eax, var_18
00805266: push eax
00805267: call 00410A84h ; Set (object)
0080526C: push eax
0080526D: mov eax, [ebp+08h]
00805270: mov eax, [eax]
00805272: push [ebp+08h]
00805275: call [eax+000002BCh]
0080527B: fclex 
0080527D: mov var_5C, eax
00805280: cmp var_5C, 00000000h
00805284: jnl 8052A0h
00805286: push 000002BCh
0080528B: push 00444CF8h
00805290: push [ebp+08h]
00805293: push var_5C
00805296: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080529B: mov var_68, eax
0080529E: jmp 8052A4h
008052A0: and var_68, 00000000h
008052A4: lea ecx, var_18
008052A7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008052AC: mov var_04, 00000000h
008052B3: push 008052C4h
008052B8: jmp 8052C3h
008052BA: lea ecx, var_18
008052BD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008052C2: ret 
End Sub

Private sub lstPasswords__804DBF
00804DBF: push ebp
00804DC0: mov ebp, esp
00804DC2: sub esp, 0000000Ch
00804DC5: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00804DCA: mov eax, fs:[00h]
00804DD0: push eax
00804DD1: mov fs:[00000000h], esp
00804DD8: push 00000008h
00804DDA: pop eax
00804DDB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804DE0: push ebx
00804DE1: push esi
00804DE2: push edi
00804DE3: mov var_0C, esp
00804DE6: mov var_08, 0040A3E8h
00804DED: mov eax, [ebp+08h]
00804DF0: and eax, 00000001h
00804DF3: mov var_04, eax
00804DF6: mov eax, [ebp+08h]
00804DF9: and al, FEh
00804DFB: mov [ebp+08h], eax
00804DFE: mov eax, [ebp+08h]
00804E01: mov eax, [eax]
00804E03: push [ebp+08h]
00804E06: call [eax+04h]
00804E09: mov eax, [ebp+0Ch]
00804E0C: or word ptr [eax], FFFFh
00804E10: mov var_04, 00000000h
00804E17: mov eax, [ebp+08h]
00804E1A: mov eax, [eax]
00804E1C: push [ebp+08h]
00804E1F: call [eax+08h]
00804E22: mov eax, var_04
00804E25: mov ecx, var_14
00804E28: mov fs:[00000000h], ecx
00804E2F: pop edi
00804E30: pop esi
00804E31: pop ebx
00804E32: leave 
00804E33: retn 0008h
End Sub

Private sub lstPasswords__804E36
00804E36: push ebp
00804E37: mov ebp, esp
00804E39: sub esp, 00000018h
00804E3C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00804E41: mov eax, fs:[00h]
00804E47: push eax
00804E48: mov fs:[00000000h], esp
00804E4F: push 00000074h
00804E51: pop eax
00804E52: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804E57: push ebx
00804E58: push esi
00804E59: push edi
00804E5A: mov var_18, esp
00804E5D: mov var_14, 0040A3F0h
00804E64: mov eax, [ebp+08h]
00804E67: and eax, 00000001h
00804E6A: mov var_10, eax
00804E6D: mov eax, [ebp+08h]
00804E70: and al, FEh
00804E72: mov [ebp+08h], eax
00804E75: mov var_0C, 00000000h
00804E7C: mov eax, [ebp+08h]
00804E7F: mov eax, [eax]
00804E81: push [ebp+08h]
00804E84: call [eax+04h]
00804E87: mov var_04, 00000001h
00804E8E: push [ebp+0Ch]
00804E91: lea eax, var_24
00804E94: push eax
00804E95: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
00804E9A: mov var_04, 00000002h
00804EA1: push FFFFFFFFh
00804EA3: call 00410A60h ; On Error ...
00804EA8: mov var_04, 00000003h
00804EAF: push 00000000h
00804EB1: push 00000011h
00804EB3: mov eax, [ebp+08h]
00804EB6: mov eax, [eax]
00804EB8: push [ebp+08h]
00804EBB: call [eax+00000308h]
00804EC1: push eax
00804EC2: lea eax, var_28
00804EC5: push eax
00804EC6: call 00410A84h ; Set (object)
00804ECB: push eax
00804ECC: lea eax, var_3C
00804ECF: push eax
00804ED0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00804ED5: add esp, 00000010h
00804ED8: push eax
00804ED9: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00804EDE: mov si, ax
00804EE1: push 00000000h
00804EE3: push 00000005h
00804EE5: push var_24
00804EE8: lea eax, var_4C
00804EEB: push eax
00804EEC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00804EF1: add esp, 00000010h
00804EF4: push eax
00804EF5: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00804EFA: mov edi, eax
00804EFC: sub edi, 00000001h
00804EFF: jo 0080517Ch
00804F05: push 00000000h
00804F07: push 00000012h
00804F09: mov eax, [ebp+08h]
00804F0C: mov eax, [eax]
00804F0E: push [ebp+08h]
00804F11: call [eax+00000308h]
00804F17: push eax
00804F18: lea eax, var_2C
00804F1B: push eax
00804F1C: call 00410A84h ; Set (object)
00804F21: push eax
00804F22: lea eax, var_5C
00804F25: push eax
00804F26: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00804F2B: add esp, 00000010h
00804F2E: push eax
00804F2F: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00804F34: sub edi, eax
00804F36: neg edi
00804F38: sbb edi, edi
00804F3A: inc edi
00804F3B: neg edi
00804F3D: and si, di
00804F40: mov var_80, si
00804F44: lea eax, var_2C
00804F47: push eax
00804F48: lea eax, var_28
00804F4B: push eax
00804F4C: push 00000002h
00804F4E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00804F53: add esp, 0000000Ch
00804F56: lea eax, var_5C
00804F59: push eax
00804F5A: lea eax, var_4C
00804F5D: push eax
00804F5E: lea eax, var_3C
00804F61: push eax
00804F62: push 00000003h
00804F64: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00804F69: add esp, 00000010h
00804F6C: movsx eax, word ptr var_80
00804F70: test eax, eax
00804F72: jz 00805013h
00804F78: mov var_04, 00000004h
00804F7F: push 00000000h
00804F81: push 00000013h
00804F83: mov eax, [ebp+08h]
00804F86: mov eax, [eax]
00804F88: push [ebp+08h]
00804F8B: call [eax+00000308h]
00804F91: push eax
00804F92: lea eax, var_28
00804F95: push eax
00804F96: call 00410A84h ; Set (object)
00804F9B: push eax
00804F9C: lea eax, var_3C
00804F9F: push eax
00804FA0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00804FA5: add esp, 00000010h
00804FA8: push eax
00804FA9: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00804FAE: push 00000001h
00804FB0: pop ecx
00804FB1: sub ecx, eax
00804FB3: jo 0080517Ch
00804FB9: mov var_64, ecx
00804FBC: mov var_6C, 00000003h
00804FC3: push 00000010h
00804FC5: pop eax
00804FC6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804FCB: lea esi, var_6C
00804FCE: mov edi, esp
00804FD0: movsd 
00804FD1: movsd 
00804FD2: movsd 
00804FD3: movsd 
00804FD4: push 00000013h
00804FD6: mov eax, [ebp+08h]
00804FD9: mov eax, [eax]
00804FDB: push [ebp+08h]
00804FDE: call [eax+00000308h]
00804FE4: push eax
00804FE5: lea eax, var_2C
00804FE8: push eax
00804FE9: call 00410A84h ; Set (object)
00804FEE: push eax
00804FEF: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00804FF4: lea eax, var_2C
00804FF7: push eax
00804FF8: lea eax, var_28
00804FFB: push eax
00804FFC: push 00000002h
00804FFE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00805003: add esp, 0000000Ch
00805006: lea ecx, var_3C
00805009: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0080500E: jmp 008050D2h
00805013: mov var_04, 00000006h
0080501A: and var_64, 00000000h
0080501E: mov var_6C, 00000003h
00805025: push 00000010h
00805027: pop eax
00805028: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080502D: lea esi, var_6C
00805030: mov edi, esp
00805032: movsd 
00805033: movsd 
00805034: movsd 
00805035: movsd 
00805036: push 00000013h
00805038: mov eax, [ebp+08h]
0080503B: mov eax, [eax]
0080503D: push [ebp+08h]
00805040: call [eax+00000308h]
00805046: push eax
00805047: lea eax, var_28
0080504A: push eax
0080504B: call 00410A84h ; Set (object)
00805050: push eax
00805051: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00805056: lea ecx, var_28
00805059: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080505E: mov var_04, 00000007h
00805065: push 00000000h
00805067: push 00000005h
00805069: push var_24
0080506C: lea eax, var_3C
0080506F: push eax
00805070: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00805075: add esp, 00000010h
00805078: push eax
00805079: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0080507E: sub eax, 00000001h
00805081: jo 0080517Ch
00805087: mov var_64, eax
0080508A: mov var_6C, 00000003h
00805091: push 00000010h
00805093: pop eax
00805094: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00805099: lea esi, var_6C
0080509C: mov edi, esp
0080509E: movsd 
0080509F: movsd 
008050A0: movsd 
008050A1: movsd 
008050A2: push 00000012h
008050A4: mov eax, [ebp+08h]
008050A7: mov eax, [eax]
008050A9: push [ebp+08h]
008050AC: call [eax+00000308h]
008050B2: push eax
008050B3: lea eax, var_28
008050B6: push eax
008050B7: call 00410A84h ; Set (object)
008050BC: push eax
008050BD: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008050C2: lea ecx, var_28
008050C5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008050CA: lea ecx, var_3C
008050CD: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008050D2: mov var_04, 00000009h
008050D9: or var_64, FFFFFFFFh
008050DD: mov var_6C, 0000000Bh
008050E4: push 00000010h
008050E6: pop eax
008050E7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008050EC: lea esi, var_6C
008050EF: mov edi, esp
008050F1: movsd 
008050F2: movsd 
008050F3: movsd 
008050F4: movsd 
008050F5: push 00000011h
008050F7: mov eax, [ebp+08h]
008050FA: mov eax, [eax]
008050FC: push [ebp+08h]
008050FF: call [eax+00000308h]
00805105: push eax
00805106: lea eax, var_28
00805109: push eax
0080510A: call 00410A84h ; Set (object)
0080510F: push eax
00805110: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00805115: lea ecx, var_28
00805118: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080511D: mov var_10, 00000000h
00805124: push 0080515Dh
00805129: jmp 805154h
0080512B: lea eax, var_2C
0080512E: push eax
0080512F: lea eax, var_28
00805132: push eax
00805133: push 00000002h
00805135: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080513A: add esp, 0000000Ch
0080513D: lea eax, var_5C
00805140: push eax
00805141: lea eax, var_4C
00805144: push eax
00805145: lea eax, var_3C
00805148: push eax
00805149: push 00000003h
0080514B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00805150: add esp, 00000010h
00805153: ret 
End Sub

Private sub Form__80467E
0080467E: push ebp
0080467F: mov ebp, esp
00804681: sub esp, 0000000Ch
00804684: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00804689: mov eax, fs:[00h]
0080468F: push eax
00804690: mov fs:[00000000h], esp
00804697: mov eax, 000000A0h
0080469C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008046A1: push ebx
008046A2: push esi
008046A3: push edi
008046A4: mov var_0C, esp
008046A7: mov var_08, 0040A3A0h
008046AE: mov eax, [ebp+08h]
008046B1: and eax, 00000001h
008046B4: mov var_04, eax
008046B7: mov eax, [ebp+08h]
008046BA: and al, FEh
008046BC: mov [ebp+08h], eax
008046BF: mov eax, [ebp+08h]
008046C2: mov eax, [eax]
008046C4: push [ebp+08h]
008046C7: call [eax+04h]
008046CA: mov var_34, 80020004h
008046D1: mov var_3C, 0000000Ah
008046D8: mov var_54, 80020004h
008046DF: mov var_5C, 0000000Ah
008046E6: mov var_74, 00452914h ; Type
008046ED: mov var_7C, 00000008h
008046F4: mov var_00000094, 00000640h
008046FE: mov var_0000009C, 00000002h
00804708: push 00000010h
0080470A: pop eax
0080470B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804710: lea esi, var_3C
00804713: mov edi, esp
00804715: movsd 
00804716: movsd 
00804717: movsd 
00804718: movsd 
00804719: push 00000010h
0080471B: pop eax
0080471C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804721: lea esi, var_5C
00804724: mov edi, esp
00804726: movsd 
00804727: movsd 
00804728: movsd 
00804729: movsd 
0080472A: push 00000010h
0080472C: pop eax
0080472D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804732: lea esi, var_7C
00804735: mov edi, esp
00804737: movsd 
00804738: movsd 
00804739: movsd 
0080473A: movsd 
0080473B: push 00000010h
0080473D: pop eax
0080473E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804743: lea esi, var_0000009C
00804749: mov edi, esp
0080474B: movsd 
0080474C: movsd 
0080474D: movsd 
0080474E: movsd 
0080474F: push 00000004h
00804751: push 00000002h
00804753: push 00445534h
00804758: push 00000000h
0080475A: push 00000019h
0080475C: mov eax, [ebp+08h]
0080475F: mov eax, [eax]
00804761: push [ebp+08h]
00804764: call [eax+00000308h]
0080476A: push eax
0080476B: lea eax, var_18
0080476E: push eax
0080476F: call 00410A84h ; Set (object)
00804774: push eax
00804775: lea eax, var_2C
00804778: push eax
00804779: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080477E: add esp, 00000010h
00804781: push eax
00804782: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00804787: push eax
00804788: lea eax, var_1C
0080478B: push eax
0080478C: call 00410A84h ; Set (object)
00804791: push eax
00804792: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00804797: add esp, 0000004Ch
0080479A: lea eax, var_1C
0080479D: push eax
0080479E: lea eax, var_18
008047A1: push eax
008047A2: push 00000002h
008047A4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008047A9: add esp, 0000000Ch
008047AC: lea ecx, var_2C
008047AF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008047B4: mov var_34, 80020004h
008047BB: mov var_3C, 0000000Ah
008047C2: mov var_54, 80020004h
008047C9: mov var_5C, 0000000Ah
008047D0: mov var_74, 00452754h ; Data
008047D7: mov var_7C, 00000008h
008047DE: mov var_00000094, 00000BB8h
008047E8: mov var_0000009C, 00000002h
008047F2: push 00000010h
008047F4: pop eax
008047F5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008047FA: lea esi, var_3C
008047FD: mov edi, esp
008047FF: movsd 
00804800: movsd 
00804801: movsd 
00804802: movsd 
00804803: push 00000010h
00804805: pop eax
00804806: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080480B: lea esi, var_5C
0080480E: mov edi, esp
00804810: movsd 
00804811: movsd 
00804812: movsd 
00804813: movsd 
00804814: push 00000010h
00804816: pop eax
00804817: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080481C: lea esi, var_7C
0080481F: mov edi, esp
00804821: movsd 
00804822: movsd 
00804823: movsd 
00804824: movsd 
00804825: push 00000010h
00804827: pop eax
00804828: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080482D: lea esi, var_0000009C
00804833: mov edi, esp
00804835: movsd 
00804836: movsd 
00804837: movsd 
00804838: movsd 
00804839: push 00000004h
0080483B: push 00000002h
0080483D: push 00445534h
00804842: push 00000000h
00804844: push 00000019h
00804846: mov eax, [ebp+08h]
00804849: mov eax, [eax]
0080484B: push [ebp+08h]
0080484E: call [eax+00000308h]
00804854: push eax
00804855: lea eax, var_18
00804858: push eax
00804859: call 00410A84h ; Set (object)
0080485E: push eax
0080485F: lea eax, var_2C
00804862: push eax
00804863: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00804868: add esp, 00000010h
0080486B: push eax
0080486C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00804871: push eax
00804872: lea eax, var_1C
00804875: push eax
00804876: call 00410A84h ; Set (object)
0080487B: push eax
0080487C: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00804881: add esp, 0000004Ch
00804884: lea eax, var_1C
00804887: push eax
00804888: lea eax, var_18
0080488B: push eax
0080488C: push 00000002h
0080488E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00804893: add esp, 0000000Ch
00804896: lea ecx, var_2C
00804899: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0080489E: mov var_34, 80020004h
008048A5: mov var_3C, 0000000Ah
008048AC: mov var_54, 80020004h
008048B3: mov var_5C, 0000000Ah
008048BA: mov var_74, 00452FA8h ; Value1
008048C1: mov var_7C, 00000008h
008048C8: mov var_00000094, 00000CA8h
008048D2: mov var_0000009C, 00000002h
008048DC: push 00000010h
008048DE: pop eax
008048DF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008048E4: lea esi, var_3C
008048E7: mov edi, esp
008048E9: movsd 
008048EA: movsd 
008048EB: movsd 
008048EC: movsd 
008048ED: push 00000010h
008048EF: pop eax
008048F0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008048F5: lea esi, var_5C
008048F8: mov edi, esp
008048FA: movsd 
008048FB: movsd 
008048FC: movsd 
008048FD: movsd 
008048FE: push 00000010h
00804900: pop eax
00804901: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804906: lea esi, var_7C
00804909: mov edi, esp
0080490B: movsd 
0080490C: movsd 
0080490D: movsd 
0080490E: movsd 
0080490F: push 00000010h
00804911: pop eax
00804912: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804917: lea esi, var_0000009C
0080491D: mov edi, esp
0080491F: movsd 
00804920: movsd 
00804921: movsd 
00804922: movsd 
00804923: push 00000004h
00804925: push 00000002h
00804927: push 00445534h
0080492C: push 00000000h
0080492E: push 00000019h
00804930: mov eax, [ebp+08h]
00804933: mov eax, [eax]
00804935: push [ebp+08h]
00804938: call [eax+00000308h]
0080493E: push eax
0080493F: lea eax, var_18
00804942: push eax
00804943: call 00410A84h ; Set (object)
00804948: push eax
00804949: lea eax, var_2C
0080494C: push eax
0080494D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00804952: add esp, 00000010h
00804955: push eax
00804956: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080495B: push eax
0080495C: lea eax, var_1C
0080495F: push eax
00804960: call 00410A84h ; Set (object)
00804965: push eax
00804966: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0080496B: add esp, 0000004Ch
0080496E: lea eax, var_1C
00804971: push eax
00804972: lea eax, var_18
00804975: push eax
00804976: push 00000002h
00804978: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080497D: add esp, 0000000Ch
00804980: lea ecx, var_2C
00804983: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00804988: mov var_34, 80020004h
0080498F: mov var_3C, 0000000Ah
00804996: mov var_54, 80020004h
0080499D: mov var_5C, 0000000Ah
008049A4: mov var_74, 00452FBCh ; Value2
008049AB: mov var_7C, 00000008h
008049B2: mov var_00000094, 00000CA8h
008049BC: mov var_0000009C, 00000002h
008049C6: push 00000010h
008049C8: pop eax
008049C9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008049CE: lea esi, var_3C
008049D1: mov edi, esp
008049D3: movsd 
008049D4: movsd 
008049D5: movsd 
008049D6: movsd 
008049D7: push 00000010h
008049D9: pop eax
008049DA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008049DF: lea esi, var_5C
008049E2: mov edi, esp
008049E4: movsd 
008049E5: movsd 
008049E6: movsd 
008049E7: movsd 
008049E8: push 00000010h
008049EA: pop eax
008049EB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008049F0: lea esi, var_7C
008049F3: mov edi, esp
008049F5: movsd 
008049F6: movsd 
008049F7: movsd 
008049F8: movsd 
008049F9: push 00000010h
008049FB: pop eax
008049FC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804A01: lea esi, var_0000009C
00804A07: mov edi, esp
00804A09: movsd 
00804A0A: movsd 
00804A0B: movsd 
00804A0C: movsd 
00804A0D: push 00000004h
00804A0F: push 00000002h
00804A11: push 00445534h
00804A16: push 00000000h
00804A18: push 00000019h
00804A1A: mov eax, [ebp+08h]
00804A1D: mov eax, [eax]
00804A1F: push [ebp+08h]
00804A22: call [eax+00000308h]
00804A28: push eax
00804A29: lea eax, var_18
00804A2C: push eax
00804A2D: call 00410A84h ; Set (object)
00804A32: push eax
00804A33: lea eax, var_2C
00804A36: push eax
00804A37: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00804A3C: add esp, 00000010h
00804A3F: push eax
00804A40: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00804A45: push eax
00804A46: lea eax, var_1C
00804A49: push eax
00804A4A: call 00410A84h ; Set (object)
00804A4F: push eax
00804A50: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00804A55: add esp, 0000004Ch
00804A58: lea eax, var_1C
00804A5B: push eax
00804A5C: lea eax, var_18
00804A5F: push eax
00804A60: push 00000002h
00804A62: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00804A67: add esp, 0000000Ch
00804A6A: lea ecx, var_2C
00804A6D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00804A72: mov var_34, 80020004h
00804A79: mov var_3C, 0000000Ah
00804A80: mov var_54, 80020004h
00804A87: mov var_5C, 0000000Ah
00804A8E: mov var_74, 004468B4h ; Owner
00804A95: mov var_7C, 00000008h
00804A9C: mov var_00000094, 000009ECh
00804AA6: mov var_0000009C, 00000002h
00804AB0: push 00000010h
00804AB2: pop eax
00804AB3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804AB8: lea esi, var_3C
00804ABB: mov edi, esp
00804ABD: movsd 
00804ABE: movsd 
00804ABF: movsd 
00804AC0: movsd 
00804AC1: push 00000010h
00804AC3: pop eax
00804AC4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804AC9: lea esi, var_5C
00804ACC: mov edi, esp
00804ACE: movsd 
00804ACF: movsd 
00804AD0: movsd 
00804AD1: movsd 
00804AD2: push 00000010h
00804AD4: pop eax
00804AD5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804ADA: lea esi, var_7C
00804ADD: mov edi, esp
00804ADF: movsd 
00804AE0: movsd 
00804AE1: movsd 
00804AE2: movsd 
00804AE3: push 00000010h
00804AE5: pop eax
00804AE6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804AEB: lea esi, var_0000009C
00804AF1: mov edi, esp
00804AF3: movsd 
00804AF4: movsd 
00804AF5: movsd 
00804AF6: movsd 
00804AF7: push 00000004h
00804AF9: push 00000002h
00804AFB: push 00445534h
00804B00: push 00000000h
00804B02: push 00000019h
00804B04: mov eax, [ebp+08h]
00804B07: mov eax, [eax]
00804B09: push [ebp+08h]
00804B0C: call [eax+00000308h]
00804B12: push eax
00804B13: lea eax, var_18
00804B16: push eax
00804B17: call 00410A84h ; Set (object)
00804B1C: push eax
00804B1D: lea eax, var_2C
00804B20: push eax
00804B21: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00804B26: add esp, 00000010h
00804B29: push eax
00804B2A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00804B2F: push eax
00804B30: lea eax, var_1C
00804B33: push eax
00804B34: call 00410A84h ; Set (object)
00804B39: push eax
00804B3A: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00804B3F: add esp, 0000004Ch
00804B42: lea eax, var_1C
00804B45: push eax
00804B46: lea eax, var_18
00804B49: push eax
00804B4A: push 00000002h
00804B4C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00804B51: add esp, 0000000Ch
00804B54: lea ecx, var_2C
00804B57: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00804B5C: mov var_04, 00000000h
00804B63: push 00804B86h
00804B68: jmp 804B85h
00804B6A: lea eax, var_1C
00804B6D: push eax
00804B6E: lea eax, var_18
00804B71: push eax
00804B72: push 00000002h
00804B74: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00804B79: add esp, 0000000Ch
00804B7C: lea ecx, var_2C
00804B7F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00804B84: ret 
End Sub

Private sub Form__804BA5
00804BA5: push ebp
00804BA6: mov ebp, esp
00804BA8: sub esp, 00000018h
00804BAB: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00804BB0: mov eax, fs:[00h]
00804BB6: push eax
00804BB7: mov fs:[00000000h], esp
00804BBE: mov eax, 000000B0h
00804BC3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804BC8: push ebx
00804BC9: push esi
00804BCA: push edi
00804BCB: mov var_18, esp
00804BCE: mov var_14, 0040A3B0h
00804BD5: mov eax, [ebp+08h]
00804BD8: and eax, 00000001h
00804BDB: mov var_10, eax
00804BDE: mov eax, [ebp+08h]
00804BE1: and al, FEh
00804BE3: mov [ebp+08h], eax
00804BE6: mov var_0C, 00000000h
00804BED: mov eax, [ebp+08h]
00804BF0: mov eax, [eax]
00804BF2: push [ebp+08h]
00804BF5: call [eax+04h]
00804BF8: mov var_04, 00000001h
00804BFF: mov var_04, 00000002h
00804C06: push FFFFFFFFh
00804C08: call 00410A60h ; On Error ...
00804C0D: mov var_04, 00000003h
00804C14: fldz 
00804C16: fstp real4 ptr var_2C
00804C19: mov var_34, 00000004h
00804C20: and var_4C, 00000000h
00804C24: mov var_54, 00000002h
00804C2B: lea eax, var_000000A8
00804C31: push eax
00804C32: mov eax, [ebp+08h]
00804C35: mov eax, [eax]
00804C37: push [ebp+08h]
00804C3A: call [eax+00000080h]
00804C40: fclex 
00804C42: mov var_000000B0, eax
00804C48: cmp var_000000B0, 00000000h
00804C4F: jnl 804C71h
00804C51: push 00000080h
00804C56: push 00444CF8h
00804C5B: push [ebp+08h]
00804C5E: push var_000000B0
00804C64: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00804C69: mov var_000000CC, eax
00804C6F: jmp 804C78h
00804C71: and var_000000CC, 00000000h
00804C78: fld real4 ptr var_000000A8
00804C7E: fsub real4 ptr [00402BA4h]
00804C84: fstp real4 ptr var_6C
00804C87: fstsw ax
00804C89: test al, 0Dh
00804C8B: jnz 00804DBAh
00804C91: mov var_74, 00000004h
00804C98: lea eax, var_000000AC
00804C9E: push eax
00804C9F: mov eax, [ebp+08h]
00804CA2: mov eax, [eax]
00804CA4: push [ebp+08h]
00804CA7: call [eax+00000088h]
00804CAD: fclex 
00804CAF: mov var_000000B4, eax
00804CB5: cmp var_000000B4, 00000000h
00804CBC: jnl 804CDEh
00804CBE: push 00000088h
00804CC3: push 00444CF8h
00804CC8: push [ebp+08h]
00804CCB: push var_000000B4
00804CD1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00804CD6: mov var_000000D0, eax
00804CDC: jmp 804CE5h
00804CDE: and var_000000D0, 00000000h
00804CE5: fld real4 ptr var_000000AC
00804CEB: fsub real4 ptr [0040A3E0h]
00804CF1: fstp real4 ptr var_0000008C
00804CF7: fstsw ax
00804CF9: test al, 0Dh
00804CFB: jnz 00804DBAh
00804D01: mov var_00000094, 00000004h
00804D0B: push 00000010h
00804D0D: pop eax
00804D0E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804D13: lea esi, var_34
00804D16: mov edi, esp
00804D18: movsd 
00804D19: movsd 
00804D1A: movsd 
00804D1B: movsd 
00804D1C: push 00000010h
00804D1E: pop eax
00804D1F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804D24: lea esi, var_54
00804D27: mov edi, esp
00804D29: movsd 
00804D2A: movsd 
00804D2B: movsd 
00804D2C: movsd 
00804D2D: push 00000010h
00804D2F: pop eax
00804D30: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804D35: lea esi, var_74
00804D38: mov edi, esp
00804D3A: movsd 
00804D3B: movsd 
00804D3C: movsd 
00804D3D: movsd 
00804D3E: push 00000010h
00804D40: pop eax
00804D41: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00804D46: lea esi, var_00000094
00804D4C: mov edi, esp
00804D4E: movsd 
00804D4F: movsd 
00804D50: movsd 
00804D51: movsd 
00804D52: push 00000004h
00804D54: push 80011002h
00804D59: mov eax, [ebp+08h]
00804D5C: mov eax, [eax]
00804D5E: push [ebp+08h]
00804D61: call [eax+00000308h]
00804D67: push eax
00804D68: lea eax, var_24
00804D6B: push eax
00804D6C: call 00410A84h ; Set (object)
00804D71: push eax
00804D72: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00804D77: add esp, 0000004Ch
00804D7A: lea ecx, var_24
00804D7D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00804D82: mov var_10, 00000000h
00804D89: wait 
00804D8A: push 00804D9Bh
00804D8F: jmp 804D9Ah
00804D91: lea ecx, var_24
00804D94: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00804D99: ret 
End Sub

