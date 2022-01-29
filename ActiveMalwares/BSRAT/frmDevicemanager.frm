VERSION 5.00
Begin VB.Form frmDevicemanager
  Caption = "Device manager"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmDevicemanager.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 9165
  ClientHeight = 7170
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer Timer1
    Interval = 800
    Left = 8640
    Top = 0
  End
  Begin MSComctlLib.ImageList imgDevice
  End
  Begin MSComctlLib.TreeView tvDevices
    Left = 0
    Top = 0
    Width = 9135
    Height = 7095
    TabIndex = 0
  End
  Begin VB.Menu mnuDeviceMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuDevice
      Index = 0
      Caption = "Refresh"
    End
  End
End

Attribute VB_Name = "frmDevicemanager"


Private sub tvDevices__859327
00859327: push ebp
00859328: mov ebp, esp
0085932A: sub esp, 0000000Ch
0085932D: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00859332: mov eax, fs:[00h]
00859338: push eax
00859339: mov fs:[00000000h], esp
00859340: push 00000054h
00859342: pop eax
00859343: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00859348: push ebx
00859349: push esi
0085934A: push edi
0085934B: mov var_0C, esp
0085934E: mov var_08, 0040CA30h
00859355: mov eax, [ebp+08h]
00859358: and eax, 00000001h
0085935B: mov var_04, eax
0085935E: mov eax, [ebp+08h]
00859361: and al, FEh
00859363: mov [ebp+08h], eax
00859366: mov eax, [ebp+08h]
00859369: mov eax, [eax]
0085936B: push [ebp+08h]
0085936E: call [eax+04h]
00859371: mov eax, [ebp+0Ch]
00859374: cmp word ptr [eax], 0002h
00859378: jnz 00859452h
0085937E: mov var_50, 80020004h
00859385: mov var_58, 0000000Ah
0085938C: mov var_40, 80020004h
00859393: mov var_48, 0000000Ah
0085939A: mov var_30, 80020004h
008593A1: mov var_38, 0000000Ah
008593A8: mov var_20, 80020004h
008593AF: mov var_28, 0000000Ah
008593B6: push 00000010h
008593B8: pop eax
008593B9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008593BE: lea esi, var_58
008593C1: mov edi, esp
008593C3: movsd 
008593C4: movsd 
008593C5: movsd 
008593C6: movsd 
008593C7: push 00000010h
008593C9: pop eax
008593CA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008593CF: lea esi, var_48
008593D2: mov edi, esp
008593D4: movsd 
008593D5: movsd 
008593D6: movsd 
008593D7: movsd 
008593D8: push 00000010h
008593DA: pop eax
008593DB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008593E0: lea esi, var_38
008593E3: mov edi, esp
008593E5: movsd 
008593E6: movsd 
008593E7: movsd 
008593E8: movsd 
008593E9: push 00000010h
008593EB: pop eax
008593EC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008593F1: lea esi, var_28
008593F4: mov edi, esp
008593F6: movsd 
008593F7: movsd 
008593F8: movsd 
008593F9: movsd 
008593FA: mov eax, [ebp+08h]
008593FD: mov eax, [eax]
008593FF: push [ebp+08h]
00859402: call [eax+00000300h]
00859408: push eax
00859409: lea eax, var_18
0085940C: push eax
0085940D: call 00410A84h ; Set (object)
00859412: push eax
00859413: mov eax, [ebp+08h]
00859416: mov eax, [eax]
00859418: push [ebp+08h]
0085941B: call [eax+000002BCh]
00859421: fclex 
00859423: mov var_5C, eax
00859426: cmp var_5C, 00000000h
0085942A: jnl 859446h
0085942C: push 000002BCh
00859431: push 00443FF8h
00859436: push [ebp+08h]
00859439: push var_5C
0085943C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00859441: mov var_68, eax
00859444: jmp 85944Ah
00859446: and var_68, 00000000h
0085944A: lea ecx, var_18
0085944D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00859452: mov var_04, 00000000h
00859459: push 0085946Ah
0085945E: jmp 859469h
00859460: lea ecx, var_18
00859463: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00859468: ret 
End Sub

Private sub mnuDevice__858F71
00858F71: push ebp
00858F72: mov ebp, esp
00858F74: sub esp, 0000000Ch
00858F77: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00858F7C: mov eax, fs:[00h]
00858F82: push eax
00858F83: mov fs:[00000000h], esp
00858F8A: push 00000040h
00858F8C: pop eax
00858F8D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00858F92: push ebx
00858F93: push esi
00858F94: push edi
00858F95: mov var_0C, esp
00858F98: mov var_08, 0040CA10h
00858F9F: mov eax, [ebp+08h]
00858FA2: and eax, 00000001h
00858FA5: mov var_04, eax
00858FA8: mov eax, [ebp+08h]
00858FAB: and al, FEh
00858FAD: mov [ebp+08h], eax
00858FB0: mov eax, [ebp+08h]
00858FB3: mov eax, [eax]
00858FB5: push [ebp+08h]
00858FB8: call [eax+04h]
00858FBB: mov eax, [ebp+0Ch]
00858FBE: mov ax, [eax]
00858FC1: mov var_40, ax
00858FC5: movsx eax, word ptr var_40
00858FC9: mov var_4C, eax
00858FCC: cmp var_4C, 00000000h
00858FD0: jz 858FD7h
00858FD2: jmp 008590D1h
00858FD7: mov eax, [ebp+08h]
00858FDA: mov eax, [eax]
00858FDC: push [ebp+08h]
00858FDF: call [eax+000006F8h]
00858FE5: mov var_3C, eax
00858FE8: cmp var_3C, 00000000h
00858FEC: jnl 859008h
00858FEE: push 000006F8h
00858FF3: push 00440340h
00858FF8: push [ebp+08h]
00858FFB: push var_3C
00858FFE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00859003: mov var_50, eax
00859006: jmp 85900Ch
00859008: and var_50, 00000000h
0085900C: lea eax, var_18
0085900F: push eax
00859010: mov eax, [ebp+08h]
00859013: mov eax, [eax]
00859015: push [ebp+08h]
00859018: call [eax+000001C0h]
0085901E: fclex 
00859020: mov var_3C, eax
00859023: cmp var_3C, 00000000h
00859027: jnl 859043h
00859029: push 000001C0h
0085902E: push 00443FF8h
00859033: push [ebp+08h]
00859036: push var_3C
00859039: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085903E: mov var_54, eax
00859041: jmp 859047h
00859043: and var_54, 00000000h
00859047: push var_18
0085904A: call 004109DCh ; Val(arg_1)
0085904F: fstp real8 ptr var_38
00859052: push 00000000h
00859054: push 00000000h
00859056: push 00000001h
00859058: push 00000000h
0085905A: lea eax, var_20
0085905D: push eax
0085905E: push 00000010h
00859060: push 00000880h
00859065: call 00410946h ; ReDim
0085906A: add esp, 0000001Ch
0085906D: mov var_28, 00442938h
00859074: mov var_30, 00000008h
0085907B: lea esi, var_30
0085907E: push 00000000h
00859080: push var_20
00859083: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00859088: mov ecx, eax
0085908A: mov edx, esi
0085908C: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
00859091: mov edx, 0043D768h ; x71
00859096: lea ecx, var_1C
00859099: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0085909E: lea eax, var_20
008590A1: push eax
008590A2: lea eax, var_1C
008590A5: push eax
008590A6: fld real8 ptr var_38
008590A9: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008590AE: push eax
008590AF: call 007A6910h
008590B4: lea eax, var_20
008590B7: push eax
008590B8: push 00000000h
008590BA: call 00410934h ; Erase
008590BF: lea eax, var_1C
008590C2: push eax
008590C3: lea eax, var_18
008590C6: push eax
008590C7: push 00000002h
008590C9: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008590CE: add esp, 0000000Ch
008590D1: mov var_04, 00000000h
008590D8: wait 
008590D9: push 008590FFh
008590DE: jmp 8590FEh
008590E0: lea eax, var_1C
008590E3: push eax
008590E4: lea eax, var_18
008590E7: push eax
008590E8: push 00000002h
008590EA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008590EF: add esp, 0000000Ch
008590F2: lea eax, var_20
008590F5: push eax
008590F6: push 00000000h
008590F8: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008590FD: ret 
End Sub

Private sub Timer1__85911E
0085911E: push ebp
0085911F: mov ebp, esp
00859121: sub esp, 0000000Ch
00859124: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00859129: mov eax, fs:[00h]
0085912F: push eax
00859130: mov fs:[00000000h], esp
00859137: push 0000003Ch
00859139: pop eax
0085913A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085913F: push ebx
00859140: push esi
00859141: push edi
00859142: mov var_0C, esp
00859145: mov var_08, 0040CA20h
0085914C: mov eax, [ebp+08h]
0085914F: and eax, 00000001h
00859152: mov var_04, eax
00859155: mov eax, [ebp+08h]
00859158: and al, FEh
0085915A: mov [ebp+08h], eax
0085915D: mov eax, [ebp+08h]
00859160: mov eax, [eax]
00859162: push [ebp+08h]
00859165: call [eax+04h]
00859168: cmp [008F2010h], 00000000h
0085916F: jnz 859189h
00859171: push 008F2010h
00859176: push 00433984h
0085917B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00859180: mov var_40, 008F2010h
00859187: jmp 859190h
00859189: mov var_40, 008F2010h
00859190: mov eax, var_40
00859193: mov eax, [eax]
00859195: mov ecx, var_40
00859198: mov ecx, [ecx]
0085919A: mov ecx, [ecx]
0085919C: push eax
0085919D: call [ecx+00000380h]
008591A3: push eax
008591A4: lea eax, var_18
008591A7: push eax
008591A8: call 00410A84h ; Set (object)
008591AD: mov var_24, eax
008591B0: lea eax, var_1C
008591B3: push eax
008591B4: push 00000003h
008591B6: mov eax, var_24
008591B9: mov eax, [eax]
008591BB: push var_24
008591BE: call [eax+40h]
008591C1: fclex 
008591C3: mov var_28, eax
008591C6: cmp var_28, 00000000h
008591CA: jnl 8591E3h
008591CC: push 00000040h
008591CE: push 00440DE8h
008591D3: push var_24
008591D6: push var_28
008591D9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008591DE: mov var_44, eax
008591E1: jmp 8591E7h
008591E3: and var_44, 00000000h
008591E7: mov eax, var_1C
008591EA: mov var_2C, eax
008591ED: lea eax, var_20
008591F0: push eax
008591F1: mov eax, var_2C
008591F4: mov eax, [eax]
008591F6: push var_2C
008591F9: call [eax+000000E0h]
008591FF: fclex 
00859201: mov var_30, eax
00859204: cmp var_30, 00000000h
00859208: jnl 859224h
0085920A: push 000000E0h
0085920F: push 00440DF8h
00859214: push var_2C
00859217: push var_30
0085921A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085921F: mov var_48, eax
00859222: jmp 859228h
00859224: and var_48, 00000000h
00859228: xor eax, eax
0085922A: cmp word ptr var_20, 0001h
0085922F: setz al
00859232: neg eax
00859234: mov var_34, ax
00859238: lea eax, var_1C
0085923B: push eax
0085923C: lea eax, var_18
0085923F: push eax
00859240: push 00000002h
00859242: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00859247: add esp, 0000000Ch
0085924A: movsx eax, word ptr var_34
0085924E: test eax, eax
00859250: jz 859290h
00859252: and word ptr var_20, 0000h
00859257: lea eax, var_20
0085925A: push eax
0085925B: mov eax, [ebp+08h]
0085925E: mov eax, [eax]
00859260: push [ebp+08h]
00859263: call [eax+00000704h]
00859269: mov var_24, eax
0085926C: cmp var_24, 00000000h
00859270: jnl 85928Ch
00859272: push 00000704h
00859277: push 00440340h
0085927C: push [ebp+08h]
0085927F: push var_24
00859282: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00859287: mov var_4C, eax
0085928A: jmp 859290h
0085928C: and var_4C, 00000000h
00859290: mov eax, [ebp+08h]
00859293: mov eax, [eax]
00859295: push [ebp+08h]
00859298: call [eax+000002FCh]
0085929E: push eax
0085929F: lea eax, var_18
008592A2: push eax
008592A3: call 00410A84h ; Set (object)
008592A8: mov var_24, eax
008592AB: push 00000000h
008592AD: mov eax, var_24
008592B0: mov eax, [eax]
008592B2: push var_24
008592B5: call [eax+5Ch]
008592B8: fclex 
008592BA: mov var_28, eax
008592BD: cmp var_28, 00000000h
008592C1: jnl 8592DAh
008592C3: push 0000005Ch
008592C5: push 00447A20h
008592CA: push var_24
008592CD: push var_28
008592D0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008592D5: mov var_50, eax
008592D8: jmp 8592DEh
008592DA: and var_50, 00000000h
008592DE: lea ecx, var_18
008592E1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008592E6: mov var_04, 00000000h
008592ED: push 00859308h
008592F2: jmp 859307h
008592F4: lea eax, var_1C
008592F7: push eax
008592F8: lea eax, var_18
008592FB: push eax
008592FC: push 00000002h
008592FE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00859303: add esp, 0000000Ch
00859306: ret 
End Sub

Private sub Form__858CC2
00858CC2: push ebp
00858CC3: mov ebp, esp
00858CC5: sub esp, 0000000Ch
00858CC8: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00858CCD: mov eax, fs:[00h]
00858CD3: push eax
00858CD4: mov fs:[00000000h], esp
00858CDB: push 00000010h
00858CDD: pop eax
00858CDE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00858CE3: push ebx
00858CE4: push esi
00858CE5: push edi
00858CE6: mov var_0C, esp
00858CE9: mov var_08, 0040C9D8h
00858CF0: mov eax, [ebp+08h]
00858CF3: and eax, 00000001h
00858CF6: mov var_04, eax
00858CF9: mov eax, [ebp+08h]
00858CFC: and al, FEh
00858CFE: mov [ebp+08h], eax
00858D01: mov eax, [ebp+08h]
00858D04: mov eax, [eax]
00858D06: push [ebp+08h]
00858D09: call [eax+04h]
00858D0C: mov eax, [ebp+08h]
00858D0F: mov eax, [eax]
00858D11: push [ebp+08h]
00858D14: call [eax+000006F8h]
00858D1A: mov var_18, eax
00858D1D: cmp var_18, 00000000h
00858D21: jnl 858D3Dh
00858D23: push 000006F8h
00858D28: push 00440340h
00858D2D: push [ebp+08h]
00858D30: push var_18
00858D33: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00858D38: mov var_24, eax
00858D3B: jmp 858D41h
00858D3D: and var_24, 00000000h
00858D41: mov var_04, 00000000h
00858D48: mov eax, [ebp+08h]
00858D4B: mov eax, [eax]
00858D4D: push [ebp+08h]
00858D50: call [eax+08h]
00858D53: mov eax, var_04
00858D56: mov ecx, var_14
00858D59: mov fs:[00000000h], ecx
00858D60: pop edi
00858D61: pop esi
00858D62: pop ebx
00858D63: leave 
00858D64: retn 0004h
End Sub

Private sub Form__858D67
00858D67: push ebp
00858D68: mov ebp, esp
00858D6A: sub esp, 00000018h
00858D6D: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00858D72: mov eax, fs:[00h]
00858D78: push eax
00858D79: mov fs:[00000000h], esp
00858D80: mov eax, 000000B0h
00858D85: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00858D8A: push ebx
00858D8B: push esi
00858D8C: push edi
00858D8D: mov var_18, esp
00858D90: mov var_14, 0040C9E0h
00858D97: mov eax, [ebp+08h]
00858D9A: and eax, 00000001h
00858D9D: mov var_10, eax
00858DA0: mov eax, [ebp+08h]
00858DA3: and al, FEh
00858DA5: mov [ebp+08h], eax
00858DA8: mov var_0C, 00000000h
00858DAF: mov eax, [ebp+08h]
00858DB2: mov eax, [eax]
00858DB4: push [ebp+08h]
00858DB7: call [eax+04h]
00858DBA: mov var_04, 00000001h
00858DC1: mov var_04, 00000002h
00858DC8: push FFFFFFFFh
00858DCA: call 00410A60h ; On Error ...
00858DCF: mov var_04, 00000003h
00858DD6: fldz 
00858DD8: fstp real4 ptr var_2C
00858DDB: mov var_34, 00000004h
00858DE2: and var_4C, 00000000h
00858DE6: mov var_54, 00000002h
00858DED: lea eax, var_000000A8
00858DF3: push eax
00858DF4: mov eax, [ebp+08h]
00858DF7: mov eax, [eax]
00858DF9: push [ebp+08h]
00858DFC: call [eax+00000080h]
00858E02: fclex 
00858E04: mov var_000000B0, eax
00858E0A: cmp var_000000B0, 00000000h
00858E11: jnl 858E33h
00858E13: push 00000080h
00858E18: push 00443FF8h
00858E1D: push [ebp+08h]
00858E20: push var_000000B0
00858E26: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00858E2B: mov var_000000CC, eax
00858E31: jmp 858E3Ah
00858E33: and var_000000CC, 00000000h
00858E3A: fld real4 ptr var_000000A8
00858E40: fstp real4 ptr var_6C
00858E43: mov var_74, 00000004h
00858E4A: lea eax, var_000000AC
00858E50: push eax
00858E51: mov eax, [ebp+08h]
00858E54: mov eax, [eax]
00858E56: push [ebp+08h]
00858E59: call [eax+00000088h]
00858E5F: fclex 
00858E61: mov var_000000B4, eax
00858E67: cmp var_000000B4, 00000000h
00858E6E: jnl 858E90h
00858E70: push 00000088h
00858E75: push 00443FF8h
00858E7A: push [ebp+08h]
00858E7D: push var_000000B4
00858E83: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00858E88: mov var_000000D0, eax
00858E8E: jmp 858E97h
00858E90: and var_000000D0, 00000000h
00858E97: fld real4 ptr var_000000AC
00858E9D: fsub real4 ptr [00402B54h]
00858EA3: fstp real4 ptr var_0000008C
00858EA9: fstsw ax
00858EAB: test al, 0Dh
00858EAD: jnz 00858F6Ch
00858EB3: mov var_00000094, 00000004h
00858EBD: push 00000010h
00858EBF: pop eax
00858EC0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00858EC5: lea esi, var_34
00858EC8: mov edi, esp
00858ECA: movsd 
00858ECB: movsd 
00858ECC: movsd 
00858ECD: movsd 
00858ECE: push 00000010h
00858ED0: pop eax
00858ED1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00858ED6: lea esi, var_54
00858ED9: mov edi, esp
00858EDB: movsd 
00858EDC: movsd 
00858EDD: movsd 
00858EDE: movsd 
00858EDF: push 00000010h
00858EE1: pop eax
00858EE2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00858EE7: lea esi, var_74
00858EEA: mov edi, esp
00858EEC: movsd 
00858EED: movsd 
00858EEE: movsd 
00858EEF: movsd 
00858EF0: push 00000010h
00858EF2: pop eax
00858EF3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00858EF8: lea esi, var_00000094
00858EFE: mov edi, esp
00858F00: movsd 
00858F01: movsd 
00858F02: movsd 
00858F03: movsd 
00858F04: push 00000004h
00858F06: push 80011002h
00858F0B: mov eax, [ebp+08h]
00858F0E: mov eax, [eax]
00858F10: push [ebp+08h]
00858F13: call [eax+0000030Ch]
00858F19: push eax
00858F1A: lea eax, var_24
00858F1D: push eax
00858F1E: call 00410A84h ; Set (object)
00858F23: push eax
00858F24: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00858F29: add esp, 0000004Ch
00858F2C: lea ecx, var_24
00858F2F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00858F34: mov var_10, 00000000h
00858F3B: wait 
00858F3C: push 00858F4Dh
00858F41: jmp 858F4Ch
00858F43: lea ecx, var_24
00858F46: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00858F4B: ret 
End Sub

Private sub unknown_859489
00859489: push ebp
0085948A: mov ebp, esp
0085948C: sub esp, 0000000Ch
0085948F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00859494: mov eax, fs:[00h]
0085949A: push eax
0085949B: mov fs:[00000000h], esp
008594A2: mov eax, 0000012Ch
008594A7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008594AC: push ebx
008594AD: push esi
008594AE: push edi
008594AF: mov var_0C, esp
008594B2: mov var_08, 0040CA40h
008594B9: mov var_04, 00000000h
008594C0: mov eax, [ebp+08h]
008594C3: mov eax, [eax]
008594C5: push [ebp+08h]
008594C8: call [eax+04h]
008594CB: mov eax, [ebp+08h]
008594CE: mov eax, [eax]
008594D0: push [ebp+08h]
008594D3: call [eax+00000308h]
008594D9: mov var_28, eax
008594DC: mov var_30, 00000009h
008594E3: push 00000010h
008594E5: pop eax
008594E6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008594EB: lea esi, var_30
008594EE: mov edi, esp
008594F0: movsd 
008594F1: movsd 
008594F2: movsd 
008594F3: movsd 
008594F4: push 00000003h
008594F6: mov eax, [ebp+08h]
008594F9: mov eax, [eax]
008594FB: push [ebp+08h]
008594FE: call [eax+0000030Ch]
00859504: push eax
00859505: lea eax, var_18
00859508: push eax
00859509: call 00410A84h ; Set (object)
0085950E: push eax
0085950F: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00859514: lea ecx, var_18
00859517: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085951C: lea ecx, var_30
0085951F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00859524: push 0044CDA4h
00859529: push 00000000h
0085952B: push 00000009h
0085952D: mov eax, [ebp+08h]
00859530: mov eax, [eax]
00859532: push [ebp+08h]
00859535: call [eax+0000030Ch]
0085953B: push eax
0085953C: lea eax, var_18
0085953F: push eax
00859540: call 00410A84h ; Set (object)
00859545: push eax
00859546: lea eax, var_30
00859549: push eax
0085954A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085954F: add esp, 00000010h
00859552: push eax
00859553: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00859558: push eax
00859559: lea eax, var_1C
0085955C: push eax
0085955D: call 00410A84h ; Set (object)
00859562: mov var_000000F4, eax
00859568: mov eax, var_000000F4
0085956E: mov eax, [eax]
00859570: push var_000000F4
00859576: call [eax+30h]
00859579: fclex 
0085957B: mov var_000000F8, eax
00859581: cmp var_000000F8, 00000000h
00859588: jnl 8595AAh
0085958A: push 00000030h
0085958C: push 0044CDA4h
00859591: push var_000000F4
00859597: push var_000000F8
0085959D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008595A2: mov var_00000104, eax
008595A8: jmp 8595B1h
008595AA: and var_00000104, 00000000h
008595B1: lea eax, var_1C
008595B4: push eax
008595B5: lea eax, var_18
008595B8: push eax
008595B9: push 00000002h
008595BB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008595C0: add esp, 0000000Ch
008595C3: lea ecx, var_30
008595C6: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008595CB: push 0044CDA4h
008595D0: push 00000000h
008595D2: push 00000009h
008595D4: mov eax, [ebp+08h]
008595D7: mov eax, [eax]
008595D9: push [ebp+08h]
008595DC: call [eax+0000030Ch]
008595E2: push eax
008595E3: lea eax, var_18
008595E6: push eax
008595E7: call 00410A84h ; Set (object)
008595EC: push eax
008595ED: lea eax, var_30
008595F0: push eax
008595F1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008595F6: add esp, 00000010h
008595F9: push eax
008595FA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008595FF: push eax
00859600: lea eax, var_1C
00859603: push eax
00859604: call 00410A84h ; Set (object)
00859609: mov var_000000F4, eax
0085960F: mov var_00000088, 80020004h
00859619: mov var_00000090, 0000000Ah
00859623: mov var_78, 00000001h
0085962A: mov var_80, 00000002h
00859631: mov var_000000C8, 00456808h ; Computer
0085963B: mov var_000000D0, 00000008h
00859645: lea edx, var_000000D0
0085964B: lea ecx, var_70
0085964E: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00859653: mov var_000000B8, 004567FCh ; a0
0085965D: mov var_000000C0, 00000008h
00859667: lea edx, var_000000C0
0085966D: lea ecx, var_60
00859670: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00859675: mov var_48, 80020004h
0085967C: mov var_50, 0000000Ah
00859683: mov var_38, 80020004h
0085968A: mov var_40, 0000000Ah
00859691: lea eax, var_20
00859694: push eax
00859695: lea eax, var_00000090
0085969B: push eax
0085969C: lea eax, var_80
0085969F: push eax
008596A0: lea eax, var_70
008596A3: push eax
008596A4: lea eax, var_60
008596A7: push eax
008596A8: lea eax, var_50
008596AB: push eax
008596AC: lea eax, var_40
008596AF: push eax
008596B0: mov eax, var_000000F4
008596B6: mov eax, [eax]
008596B8: push var_000000F4
008596BE: call [eax+2Ch]
008596C1: fclex 
008596C3: mov var_000000F8, eax
008596C9: cmp var_000000F8, 00000000h
008596D0: jnl 8596F2h
008596D2: push 0000002Ch
008596D4: push 0044CDA4h
008596D9: push var_000000F4
008596DF: push var_000000F8
008596E5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008596EA: mov var_00000108, eax
008596F0: jmp 8596F9h
008596F2: and var_00000108, 00000000h
008596F9: lea eax, var_20
008596FC: push eax
008596FD: lea eax, var_1C
00859700: push eax
00859701: lea eax, var_18
00859704: push eax
00859705: push 00000003h
00859707: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085970C: add esp, 00000010h
0085970F: lea eax, var_00000090
00859715: push eax
00859716: lea eax, var_80
00859719: push eax
0085971A: lea eax, var_70
0085971D: push eax
0085971E: lea eax, var_60
00859721: push eax
00859722: lea eax, var_50
00859725: push eax
00859726: lea eax, var_40
00859729: push eax
0085972A: lea eax, var_30
0085972D: push eax
0085972E: push 00000007h
00859730: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00859735: add esp, 00000020h
00859738: push 0044CDA4h
0085973D: push 00000000h
0085973F: push 00000009h
00859741: mov eax, [ebp+08h]
00859744: mov eax, [eax]
00859746: push [ebp+08h]
00859749: call [eax+0000030Ch]
0085974F: push eax
00859750: lea eax, var_18
00859753: push eax
00859754: call 00410A84h ; Set (object)
00859759: push eax
0085975A: lea eax, var_30
0085975D: push eax
0085975E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00859763: add esp, 00000010h
00859766: push eax
00859767: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085976C: push eax
0085976D: lea eax, var_1C
00859770: push eax
00859771: call 00410A84h ; Set (object)
00859776: mov var_000000F4, eax
0085977C: mov var_00000088, 80020004h
00859786: mov var_00000090, 0000000Ah
00859790: mov var_78, 00000002h
00859797: mov var_80, 00000002h
0085979E: mov var_000000C8, 0045682Ch ; Modem
008597A8: mov var_000000D0, 00000008h
008597B2: lea edx, var_000000D0
008597B8: lea ecx, var_70
008597BB: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008597C0: mov var_000000B8, 00456820h ; a1
008597CA: mov var_000000C0, 00000008h
008597D4: lea edx, var_000000C0
008597DA: lea ecx, var_60
008597DD: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008597E2: mov var_48, 80020004h
008597E9: mov var_50, 0000000Ah
008597F0: mov var_38, 80020004h
008597F7: mov var_40, 0000000Ah
008597FE: lea eax, var_20
00859801: push eax
00859802: lea eax, var_00000090
00859808: push eax
00859809: lea eax, var_80
0085980C: push eax
0085980D: lea eax, var_70
00859810: push eax
00859811: lea eax, var_60
00859814: push eax
00859815: lea eax, var_50
00859818: push eax
00859819: lea eax, var_40
0085981C: push eax
0085981D: mov eax, var_000000F4
00859823: mov eax, [eax]
00859825: push var_000000F4
0085982B: call [eax+2Ch]
0085982E: fclex 
00859830: mov var_000000F8, eax
00859836: cmp var_000000F8, 00000000h
0085983D: jnl 85985Fh
0085983F: push 0000002Ch
00859841: push 0044CDA4h
00859846: push var_000000F4
0085984C: push var_000000F8
00859852: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00859857: mov var_0000010C, eax
0085985D: jmp 859866h
0085985F: and var_0000010C, 00000000h
00859866: lea eax, var_20
00859869: push eax
0085986A: lea eax, var_1C
0085986D: push eax
0085986E: lea eax, var_18
00859871: push eax
00859872: push 00000003h
00859874: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00859879: add esp, 00000010h
0085987C: lea eax, var_00000090
00859882: push eax
00859883: lea eax, var_80
00859886: push eax
00859887: lea eax, var_70
0085988A: push eax
0085988B: lea eax, var_60
0085988E: push eax
0085988F: lea eax, var_50
00859892: push eax
00859893: lea eax, var_40
00859896: push eax
00859897: lea eax, var_30
0085989A: push eax
0085989B: push 00000007h
0085989D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008598A2: add esp, 00000020h
008598A5: push 0044CDA4h
008598AA: push 00000000h
008598AC: push 00000009h
008598AE: mov eax, [ebp+08h]
008598B1: mov eax, [eax]
008598B3: push [ebp+08h]
008598B6: call [eax+0000030Ch]
008598BC: push eax
008598BD: lea eax, var_18
008598C0: push eax
008598C1: call 00410A84h ; Set (object)
008598C6: push eax
008598C7: lea eax, var_30
008598CA: push eax
008598CB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008598D0: add esp, 00000010h
008598D3: push eax
008598D4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008598D9: push eax
008598DA: lea eax, var_1C
008598DD: push eax
008598DE: call 00410A84h ; Set (object)
008598E3: mov var_000000F4, eax
008598E9: mov var_00000088, 80020004h
008598F3: mov var_00000090, 0000000Ah
008598FD: mov var_78, 00000003h
00859904: mov var_80, 00000002h
0085990B: mov var_000000C8, 00456848h ; Soundcard
00859915: mov var_000000D0, 00000008h
0085991F: lea edx, var_000000D0
00859925: lea ecx, var_70
00859928: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085992D: mov var_000000B8, 0045683Ch ; a2
00859937: mov var_000000C0, 00000008h
00859941: lea edx, var_000000C0
00859947: lea ecx, var_60
0085994A: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085994F: mov var_48, 80020004h
00859956: mov var_50, 0000000Ah
0085995D: mov var_38, 80020004h
00859964: mov var_40, 0000000Ah
0085996B: lea eax, var_20
0085996E: push eax
0085996F: lea eax, var_00000090
00859975: push eax
00859976: lea eax, var_80
00859979: push eax
0085997A: lea eax, var_70
0085997D: push eax
0085997E: lea eax, var_60
00859981: push eax
00859982: lea eax, var_50
00859985: push eax
00859986: lea eax, var_40
00859989: push eax
0085998A: mov eax, var_000000F4
00859990: mov eax, [eax]
00859992: push var_000000F4
00859998: call [eax+2Ch]
0085999B: fclex 
0085999D: mov var_000000F8, eax
008599A3: cmp var_000000F8, 00000000h
008599AA: jnl 8599CCh
008599AC: push 0000002Ch
008599AE: push 0044CDA4h
008599B3: push var_000000F4
008599B9: push var_000000F8
008599BF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008599C4: mov var_00000110, eax
008599CA: jmp 8599D3h
008599CC: and var_00000110, 00000000h
008599D3: lea eax, var_20
008599D6: push eax
008599D7: lea eax, var_1C
008599DA: push eax
008599DB: lea eax, var_18
008599DE: push eax
008599DF: push 00000003h
008599E1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008599E6: add esp, 00000010h
008599E9: lea eax, var_00000090
008599EF: push eax
008599F0: lea eax, var_80
008599F3: push eax
008599F4: lea eax, var_70
008599F7: push eax
008599F8: lea eax, var_60
008599FB: push eax
008599FC: lea eax, var_50
008599FF: push eax
00859A00: lea eax, var_40
00859A03: push eax
00859A04: lea eax, var_30
00859A07: push eax
00859A08: push 00000007h
00859A0A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00859A0F: add esp, 00000020h
00859A12: push 0044CDA4h
00859A17: push 00000000h
00859A19: push 00000009h
00859A1B: mov eax, [ebp+08h]
00859A1E: mov eax, [eax]
00859A20: push [ebp+08h]
00859A23: call [eax+0000030Ch]
00859A29: push eax
00859A2A: lea eax, var_18
00859A2D: push eax
00859A2E: call 00410A84h ; Set (object)
00859A33: push eax
00859A34: lea eax, var_30
00859A37: push eax
00859A38: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00859A3D: add esp, 00000010h
00859A40: push eax
00859A41: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00859A46: push eax
00859A47: lea eax, var_1C
00859A4A: push eax
00859A4B: call 00410A84h ; Set (object)
00859A50: mov var_000000F4, eax
00859A56: mov var_00000088, 80020004h
00859A60: mov var_00000090, 0000000Ah
00859A6A: mov var_78, 00000004h
00859A71: mov var_80, 00000002h
00859A78: mov var_000000C8, 0045686Ch ; Videocard
00859A82: mov var_000000D0, 00000008h
00859A8C: lea edx, var_000000D0
00859A92: lea ecx, var_70
00859A95: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00859A9A: mov var_000000B8, 00456860h ; a3
00859AA4: mov var_000000C0, 00000008h
00859AAE: lea edx, var_000000C0
00859AB4: lea ecx, var_60
00859AB7: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00859ABC: mov var_48, 80020004h
00859AC3: mov var_50, 0000000Ah
00859ACA: mov var_38, 80020004h
00859AD1: mov var_40, 0000000Ah
00859AD8: lea eax, var_20
00859ADB: push eax
00859ADC: lea eax, var_00000090
00859AE2: push eax
00859AE3: lea eax, var_80
00859AE6: push eax
00859AE7: lea eax, var_70
00859AEA: push eax
00859AEB: lea eax, var_60
00859AEE: push eax
00859AEF: lea eax, var_50
00859AF2: push eax
00859AF3: lea eax, var_40
00859AF6: push eax
00859AF7: mov eax, var_000000F4
00859AFD: mov eax, [eax]
00859AFF: push var_000000F4
00859B05: call [eax+2Ch]
00859B08: fclex 
00859B0A: mov var_000000F8, eax
00859B10: cmp var_000000F8, 00000000h
00859B17: jnl 859B39h
00859B19: push 0000002Ch
00859B1B: push 0044CDA4h
00859B20: push var_000000F4
00859B26: push var_000000F8
00859B2C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00859B31: mov var_00000114, eax
00859B37: jmp 859B40h
00859B39: and var_00000114, 00000000h
00859B40: lea eax, var_20
00859B43: push eax
00859B44: lea eax, var_1C
00859B47: push eax
00859B48: lea eax, var_18
00859B4B: push eax
00859B4C: push 00000003h
00859B4E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00859B53: add esp, 00000010h
00859B56: lea eax, var_00000090
00859B5C: push eax
00859B5D: lea eax, var_80
00859B60: push eax
00859B61: lea eax, var_70
00859B64: push eax
00859B65: lea eax, var_60
00859B68: push eax
00859B69: lea eax, var_50
00859B6C: push eax
00859B6D: lea eax, var_40
00859B70: push eax
00859B71: lea eax, var_30
00859B74: push eax
00859B75: push 00000007h
00859B77: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00859B7C: add esp, 00000020h
00859B7F: push 0044CDA4h
00859B84: push 00000000h
00859B86: push 00000009h
00859B88: mov eax, [ebp+08h]
00859B8B: mov eax, [eax]
00859B8D: push [ebp+08h]
00859B90: call [eax+0000030Ch]
00859B96: push eax
00859B97: lea eax, var_18
00859B9A: push eax
00859B9B: call 00410A84h ; Set (object)
00859BA0: push eax
00859BA1: lea eax, var_30
00859BA4: push eax
00859BA5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00859BAA: add esp, 00000010h
00859BAD: push eax
00859BAE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00859BB3: push eax
00859BB4: lea eax, var_1C
00859BB7: push eax
00859BB8: call 00410A84h ; Set (object)
00859BBD: mov var_000000F4, eax
00859BC3: mov var_00000088, 80020004h
00859BCD: mov var_00000090, 0000000Ah
00859BD7: mov var_78, 00000005h
00859BDE: mov var_80, 00000002h
00859BE5: mov var_000000C8, 00456890h ; Monitor
00859BEF: mov var_000000D0, 00000008h
00859BF9: lea edx, var_000000D0
00859BFF: lea ecx, var_70
00859C02: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00859C07: mov var_000000B8, 00456884h ; a4
00859C11: mov var_000000C0, 00000008h
00859C1B: lea edx, var_000000C0
00859C21: lea ecx, var_60
00859C24: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00859C29: mov var_48, 80020004h
00859C30: mov var_50, 0000000Ah
00859C37: mov var_38, 80020004h
00859C3E: mov var_40, 0000000Ah
00859C45: lea eax, var_20
00859C48: push eax
00859C49: lea eax, var_00000090
00859C4F: push eax
00859C50: lea eax, var_80
00859C53: push eax
00859C54: lea eax, var_70
00859C57: push eax
00859C58: lea eax, var_60
00859C5B: push eax
00859C5C: lea eax, var_50
00859C5F: push eax
00859C60: lea eax, var_40
00859C63: push eax
00859C64: mov eax, var_000000F4
00859C6A: mov eax, [eax]
00859C6C: push var_000000F4
00859C72: call [eax+2Ch]
00859C75: fclex 
00859C77: mov var_000000F8, eax
00859C7D: cmp var_000000F8, 00000000h
00859C84: jnl 859CA6h
00859C86: push 0000002Ch
00859C88: push 0044CDA4h
00859C8D: push var_000000F4
00859C93: push var_000000F8
00859C99: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00859C9E: mov var_00000118, eax
00859CA4: jmp 859CADh
00859CA6: and var_00000118, 00000000h
00859CAD: lea eax, var_20
00859CB0: push eax
00859CB1: lea eax, var_1C
00859CB4: push eax
00859CB5: lea eax, var_18
00859CB8: push eax
00859CB9: push 00000003h
00859CBB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00859CC0: add esp, 00000010h
00859CC3: lea eax, var_00000090
00859CC9: push eax
00859CCA: lea eax, var_80
00859CCD: push eax
00859CCE: lea eax, var_70
00859CD1: push eax
00859CD2: lea eax, var_60
00859CD5: push eax
00859CD6: lea eax, var_50
00859CD9: push eax
00859CDA: lea eax, var_40
00859CDD: push eax
00859CDE: lea eax, var_30
00859CE1: push eax
00859CE2: push 00000007h
00859CE4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00859CE9: add esp, 00000020h
00859CEC: push 0044CDA4h
00859CF1: push 00000000h
00859CF3: push 00000009h
00859CF5: mov eax, [ebp+08h]
00859CF8: mov eax, [eax]
00859CFA: push [ebp+08h]
00859CFD: call [eax+0000030Ch]
00859D03: push eax
00859D04: lea eax, var_18
00859D07: push eax
00859D08: call 00410A84h ; Set (object)
00859D0D: push eax
00859D0E: lea eax, var_30
00859D11: push eax
00859D12: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00859D17: add esp, 00000010h
00859D1A: push eax
00859D1B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00859D20: push eax
00859D21: lea eax, var_1C
00859D24: push eax
00859D25: call 00410A84h ; Set (object)
00859D2A: mov var_000000F4, eax
00859D30: mov var_00000088, 80020004h
00859D3A: mov var_00000090, 0000000Ah
00859D44: mov var_78, 00000006h
00859D4B: mov var_80, 00000002h
00859D52: mov var_000000C8, 004568B0h ; IDE ATA-/ATAPI
00859D5C: mov var_000000D0, 00000008h
00859D66: lea edx, var_000000D0
00859D6C: lea ecx, var_70
00859D6F: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00859D74: mov var_000000B8, 004568A4h ; a5
00859D7E: mov var_000000C0, 00000008h
00859D88: lea edx, var_000000C0
00859D8E: lea ecx, var_60
00859D91: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00859D96: mov var_48, 80020004h
00859D9D: mov var_50, 0000000Ah
00859DA4: mov var_38, 80020004h
00859DAB: mov var_40, 0000000Ah
00859DB2: lea eax, var_20
00859DB5: push eax
00859DB6: lea eax, var_00000090
00859DBC: push eax
00859DBD: lea eax, var_80
00859DC0: push eax
00859DC1: lea eax, var_70
00859DC4: push eax
00859DC5: lea eax, var_60
00859DC8: push eax
00859DC9: lea eax, var_50
00859DCC: push eax
00859DCD: lea eax, var_40
00859DD0: push eax
00859DD1: mov eax, var_000000F4
00859DD7: mov eax, [eax]
00859DD9: push var_000000F4
00859DDF: call [eax+2Ch]
00859DE2: fclex 
00859DE4: mov var_000000F8, eax
00859DEA: cmp var_000000F8, 00000000h
00859DF1: jnl 859E13h
00859DF3: push 0000002Ch
00859DF5: push 0044CDA4h
00859DFA: push var_000000F4
00859E00: push var_000000F8
00859E06: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00859E0B: mov var_0000011C, eax
00859E11: jmp 859E1Ah
00859E13: and var_0000011C, 00000000h
00859E1A: lea eax, var_20
00859E1D: push eax
00859E1E: lea eax, var_1C
00859E21: push eax
00859E22: lea eax, var_18
00859E25: push eax
00859E26: push 00000003h
00859E28: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00859E2D: add esp, 00000010h
00859E30: lea eax, var_00000090
00859E36: push eax
00859E37: lea eax, var_80
00859E3A: push eax
00859E3B: lea eax, var_70
00859E3E: push eax
00859E3F: lea eax, var_60
00859E42: push eax
00859E43: lea eax, var_50
00859E46: push eax
00859E47: lea eax, var_40
00859E4A: push eax
00859E4B: lea eax, var_30
00859E4E: push eax
00859E4F: push 00000007h
00859E51: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00859E56: add esp, 00000020h
00859E59: push 0044CDA4h
00859E5E: push 00000000h
00859E60: push 00000009h
00859E62: mov eax, [ebp+08h]
00859E65: mov eax, [eax]
00859E67: push [ebp+08h]
00859E6A: call [eax+0000030Ch]
00859E70: push eax
00859E71: lea eax, var_18
00859E74: push eax
00859E75: call 00410A84h ; Set (object)
00859E7A: push eax
00859E7B: lea eax, var_30
00859E7E: push eax
00859E7F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00859E84: add esp, 00000010h
00859E87: push eax
00859E88: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00859E8D: push eax
00859E8E: lea eax, var_1C
00859E91: push eax
00859E92: call 00410A84h ; Set (object)
00859E97: mov var_000000F4, eax
00859E9D: mov var_00000088, 80020004h
00859EA7: mov var_00000090, 0000000Ah
00859EB1: mov var_78, 00000007h
00859EB8: mov var_80, 00000002h
00859EBF: mov var_000000C8, 004568E0h ; IEEE 1394
00859EC9: mov var_000000D0, 00000008h
00859ED3: lea edx, var_000000D0
00859ED9: lea ecx, var_70
00859EDC: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00859EE1: mov var_000000B8, 004568D4h ; a6
00859EEB: mov var_000000C0, 00000008h
00859EF5: lea edx, var_000000C0
00859EFB: lea ecx, var_60
00859EFE: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00859F03: mov var_48, 80020004h
00859F0A: mov var_50, 0000000Ah
00859F11: mov var_38, 80020004h
00859F18: mov var_40, 0000000Ah
00859F1F: lea eax, var_20
00859F22: push eax
00859F23: lea eax, var_00000090
00859F29: push eax
00859F2A: lea eax, var_80
00859F2D: push eax
00859F2E: lea eax, var_70
00859F31: push eax
00859F32: lea eax, var_60
00859F35: push eax
00859F36: lea eax, var_50
00859F39: push eax
00859F3A: lea eax, var_40
00859F3D: push eax
00859F3E: mov eax, var_000000F4
00859F44: mov eax, [eax]
00859F46: push var_000000F4
00859F4C: call [eax+2Ch]
00859F4F: fclex 
00859F51: mov var_000000F8, eax
00859F57: cmp var_000000F8, 00000000h
00859F5E: jnl 859F80h
00859F60: push 0000002Ch
00859F62: push 0044CDA4h
00859F67: push var_000000F4
00859F6D: push var_000000F8
00859F73: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00859F78: mov var_00000120, eax
00859F7E: jmp 859F87h
00859F80: and var_00000120, 00000000h
00859F87: lea eax, var_20
00859F8A: push eax
00859F8B: lea eax, var_1C
00859F8E: push eax
00859F8F: lea eax, var_18
00859F92: push eax
00859F93: push 00000003h
00859F95: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00859F9A: add esp, 00000010h
00859F9D: lea eax, var_00000090
00859FA3: push eax
00859FA4: lea eax, var_80
00859FA7: push eax
00859FA8: lea eax, var_70
00859FAB: push eax
00859FAC: lea eax, var_60
00859FAF: push eax
00859FB0: lea eax, var_50
00859FB3: push eax
00859FB4: lea eax, var_40
00859FB7: push eax
00859FB8: lea eax, var_30
00859FBB: push eax
00859FBC: push 00000007h
00859FBE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00859FC3: add esp, 00000020h
00859FC6: push 0044CDA4h
00859FCB: push 00000000h
00859FCD: push 00000009h
00859FCF: mov eax, [ebp+08h]
00859FD2: mov eax, [eax]
00859FD4: push [ebp+08h]
00859FD7: call [eax+0000030Ch]
00859FDD: push eax
00859FDE: lea eax, var_18
00859FE1: push eax
00859FE2: call 00410A84h ; Set (object)
00859FE7: push eax
00859FE8: lea eax, var_30
00859FEB: push eax
00859FEC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00859FF1: add esp, 00000010h
00859FF4: push eax
00859FF5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00859FFA: push eax
00859FFB: lea eax, var_1C
00859FFE: push eax
00859FFF: call 00410A84h ; Set (object)
0085A004: mov var_000000F4, eax
0085A00A: mov var_00000088, 80020004h
0085A014: mov var_00000090, 0000000Ah
0085A01E: mov var_78, 00000008h
0085A025: mov var_80, 00000002h
0085A02C: mov var_000000C8, 0045671Ch ; Pointing device
0085A036: mov var_000000D0, 00000008h
0085A040: lea edx, var_000000D0
0085A046: lea ecx, var_70
0085A049: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085A04E: mov var_000000B8, 00456548h ; a7
0085A058: mov var_000000C0, 00000008h
0085A062: lea edx, var_000000C0
0085A068: lea ecx, var_60
0085A06B: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085A070: mov var_48, 80020004h
0085A077: mov var_50, 0000000Ah
0085A07E: mov var_38, 80020004h
0085A085: mov var_40, 0000000Ah
0085A08C: lea eax, var_20
0085A08F: push eax
0085A090: lea eax, var_00000090
0085A096: push eax
0085A097: lea eax, var_80
0085A09A: push eax
0085A09B: lea eax, var_70
0085A09E: push eax
0085A09F: lea eax, var_60
0085A0A2: push eax
0085A0A3: lea eax, var_50
0085A0A6: push eax
0085A0A7: lea eax, var_40
0085A0AA: push eax
0085A0AB: mov eax, var_000000F4
0085A0B1: mov eax, [eax]
0085A0B3: push var_000000F4
0085A0B9: call [eax+2Ch]
0085A0BC: fclex 
0085A0BE: mov var_000000F8, eax
0085A0C4: cmp var_000000F8, 00000000h
0085A0CB: jnl 85A0EDh
0085A0CD: push 0000002Ch
0085A0CF: push 0044CDA4h
0085A0D4: push var_000000F4
0085A0DA: push var_000000F8
0085A0E0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085A0E5: mov var_00000124, eax
0085A0EB: jmp 85A0F4h
0085A0ED: and var_00000124, 00000000h
0085A0F4: lea eax, var_20
0085A0F7: push eax
0085A0F8: lea eax, var_1C
0085A0FB: push eax
0085A0FC: lea eax, var_18
0085A0FF: push eax
0085A100: push 00000003h
0085A102: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085A107: add esp, 00000010h
0085A10A: lea eax, var_00000090
0085A110: push eax
0085A111: lea eax, var_80
0085A114: push eax
0085A115: lea eax, var_70
0085A118: push eax
0085A119: lea eax, var_60
0085A11C: push eax
0085A11D: lea eax, var_50
0085A120: push eax
0085A121: lea eax, var_40
0085A124: push eax
0085A125: lea eax, var_30
0085A128: push eax
0085A129: push 00000007h
0085A12B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085A130: add esp, 00000020h
0085A133: push 0044CDA4h
0085A138: push 00000000h
0085A13A: push 00000009h
0085A13C: mov eax, [ebp+08h]
0085A13F: mov eax, [eax]
0085A141: push [ebp+08h]
0085A144: call [eax+0000030Ch]
0085A14A: push eax
0085A14B: lea eax, var_18
0085A14E: push eax
0085A14F: call 00410A84h ; Set (object)
0085A154: push eax
0085A155: lea eax, var_30
0085A158: push eax
0085A159: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085A15E: add esp, 00000010h
0085A161: push eax
0085A162: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085A167: push eax
0085A168: lea eax, var_1C
0085A16B: push eax
0085A16C: call 00410A84h ; Set (object)
0085A171: mov var_000000F4, eax
0085A177: mov var_00000088, 80020004h
0085A181: mov var_00000090, 0000000Ah
0085A18B: mov var_78, 00000009h
0085A192: mov var_80, 00000002h
0085A199: mov var_000000C8, 0045615Ch ; DVD/CD-ROM
0085A1A3: mov var_000000D0, 00000008h
0085A1AD: lea edx, var_000000D0
0085A1B3: lea ecx, var_70
0085A1B6: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085A1BB: mov var_000000B8, 00456150h ; a8
0085A1C5: mov var_000000C0, 00000008h
0085A1CF: lea edx, var_000000C0
0085A1D5: lea ecx, var_60
0085A1D8: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085A1DD: mov var_48, 80020004h
0085A1E4: mov var_50, 0000000Ah
0085A1EB: mov var_38, 80020004h
0085A1F2: mov var_40, 0000000Ah
0085A1F9: lea eax, var_20
0085A1FC: push eax
0085A1FD: lea eax, var_00000090
0085A203: push eax
0085A204: lea eax, var_80
0085A207: push eax
0085A208: lea eax, var_70
0085A20B: push eax
0085A20C: lea eax, var_60
0085A20F: push eax
0085A210: lea eax, var_50
0085A213: push eax
0085A214: lea eax, var_40
0085A217: push eax
0085A218: mov eax, var_000000F4
0085A21E: mov eax, [eax]
0085A220: push var_000000F4
0085A226: call [eax+2Ch]
0085A229: fclex 
0085A22B: mov var_000000F8, eax
0085A231: cmp var_000000F8, 00000000h
0085A238: jnl 85A25Ah
0085A23A: push 0000002Ch
0085A23C: push 0044CDA4h
0085A241: push var_000000F4
0085A247: push var_000000F8
0085A24D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085A252: mov var_00000128, eax
0085A258: jmp 85A261h
0085A25A: and var_00000128, 00000000h
0085A261: lea eax, var_20
0085A264: push eax
0085A265: lea eax, var_1C
0085A268: push eax
0085A269: lea eax, var_18
0085A26C: push eax
0085A26D: push 00000003h
0085A26F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085A274: add esp, 00000010h
0085A277: lea eax, var_00000090
0085A27D: push eax
0085A27E: lea eax, var_80
0085A281: push eax
0085A282: lea eax, var_70
0085A285: push eax
0085A286: lea eax, var_60
0085A289: push eax
0085A28A: lea eax, var_50
0085A28D: push eax
0085A28E: lea eax, var_40
0085A291: push eax
0085A292: lea eax, var_30
0085A295: push eax
0085A296: push 00000007h
0085A298: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085A29D: add esp, 00000020h
0085A2A0: push 0044CDA4h
0085A2A5: push 00000000h
0085A2A7: push 00000009h
0085A2A9: mov eax, [ebp+08h]
0085A2AC: mov eax, [eax]
0085A2AE: push [ebp+08h]
0085A2B1: call [eax+0000030Ch]
0085A2B7: push eax
0085A2B8: lea eax, var_18
0085A2BB: push eax
0085A2BC: call 00410A84h ; Set (object)
0085A2C1: push eax
0085A2C2: lea eax, var_30
0085A2C5: push eax
0085A2C6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085A2CB: add esp, 00000010h
0085A2CE: push eax
0085A2CF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085A2D4: push eax
0085A2D5: lea eax, var_1C
0085A2D8: push eax
0085A2D9: call 00410A84h ; Set (object)
0085A2DE: mov var_000000F4, eax
0085A2E4: mov var_00000088, 80020004h
0085A2EE: mov var_00000090, 0000000Ah
0085A2F8: mov var_78, 0000000Ah
0085A2FF: mov var_80, 00000002h
0085A306: mov var_000000C8, 00455C08h ; Disk drives
0085A310: mov var_000000D0, 00000008h
0085A31A: lea edx, var_000000D0
0085A320: lea ecx, var_70
0085A323: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085A328: mov var_000000B8, 00456178h ; a9
0085A332: mov var_000000C0, 00000008h
0085A33C: lea edx, var_000000C0
0085A342: lea ecx, var_60
0085A345: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085A34A: mov var_48, 80020004h
0085A351: mov var_50, 0000000Ah
0085A358: mov var_38, 80020004h
0085A35F: mov var_40, 0000000Ah
0085A366: lea eax, var_20
0085A369: push eax
0085A36A: lea eax, var_00000090
0085A370: push eax
0085A371: lea eax, var_80
0085A374: push eax
0085A375: lea eax, var_70
0085A378: push eax
0085A379: lea eax, var_60
0085A37C: push eax
0085A37D: lea eax, var_50
0085A380: push eax
0085A381: lea eax, var_40
0085A384: push eax
0085A385: mov eax, var_000000F4
0085A38B: mov eax, [eax]
0085A38D: push var_000000F4
0085A393: call [eax+2Ch]
0085A396: fclex 
0085A398: mov var_000000F8, eax
0085A39E: cmp var_000000F8, 00000000h
0085A3A5: jnl 85A3C7h
0085A3A7: push 0000002Ch
0085A3A9: push 0044CDA4h
0085A3AE: push var_000000F4
0085A3B4: push var_000000F8
0085A3BA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085A3BF: mov var_0000012C, eax
0085A3C5: jmp 85A3CEh
0085A3C7: and var_0000012C, 00000000h
0085A3CE: lea eax, var_20
0085A3D1: push eax
0085A3D2: lea eax, var_1C
0085A3D5: push eax
0085A3D6: lea eax, var_18
0085A3D9: push eax
0085A3DA: push 00000003h
0085A3DC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085A3E1: add esp, 00000010h
0085A3E4: lea eax, var_00000090
0085A3EA: push eax
0085A3EB: lea eax, var_80
0085A3EE: push eax
0085A3EF: lea eax, var_70
0085A3F2: push eax
0085A3F3: lea eax, var_60
0085A3F6: push eax
0085A3F7: lea eax, var_50
0085A3FA: push eax
0085A3FB: lea eax, var_40
0085A3FE: push eax
0085A3FF: lea eax, var_30
0085A402: push eax
0085A403: push 00000007h
0085A405: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085A40A: add esp, 00000020h
0085A40D: push 0044CDA4h
0085A412: push 00000000h
0085A414: push 00000009h
0085A416: mov eax, [ebp+08h]
0085A419: mov eax, [eax]
0085A41B: push [ebp+08h]
0085A41E: call [eax+0000030Ch]
0085A424: push eax
0085A425: lea eax, var_18
0085A428: push eax
0085A429: call 00410A84h ; Set (object)
0085A42E: push eax
0085A42F: lea eax, var_30
0085A432: push eax
0085A433: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085A438: add esp, 00000010h
0085A43B: push eax
0085A43C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085A441: push eax
0085A442: lea eax, var_1C
0085A445: push eax
0085A446: call 00410A84h ; Set (object)
0085A44B: mov var_000000F4, eax
0085A451: mov var_00000088, 80020004h
0085A45B: mov var_00000090, 0000000Ah
0085A465: mov var_78, 0000000Bh
0085A46C: mov var_80, 00000002h
0085A473: mov var_000000C8, 004568F8h ; Keyboards
0085A47D: mov var_000000D0, 00000008h
0085A487: lea edx, var_000000D0
0085A48D: lea ecx, var_70
0085A490: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085A495: mov var_000000B8, 00455C24h ; a10
0085A49F: mov var_000000C0, 00000008h
0085A4A9: lea edx, var_000000C0
0085A4AF: lea ecx, var_60
0085A4B2: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085A4B7: mov var_48, 80020004h
0085A4BE: mov var_50, 0000000Ah
0085A4C5: mov var_38, 80020004h
0085A4CC: mov var_40, 0000000Ah
0085A4D3: lea eax, var_20
0085A4D6: push eax
0085A4D7: lea eax, var_00000090
0085A4DD: push eax
0085A4DE: lea eax, var_80
0085A4E1: push eax
0085A4E2: lea eax, var_70
0085A4E5: push eax
0085A4E6: lea eax, var_60
0085A4E9: push eax
0085A4EA: lea eax, var_50
0085A4ED: push eax
0085A4EE: lea eax, var_40
0085A4F1: push eax
0085A4F2: mov eax, var_000000F4
0085A4F8: mov eax, [eax]
0085A4FA: push var_000000F4
0085A500: call [eax+2Ch]
0085A503: fclex 
0085A505: mov var_000000F8, eax
0085A50B: cmp var_000000F8, 00000000h
0085A512: jnl 85A534h
0085A514: push 0000002Ch
0085A516: push 0044CDA4h
0085A51B: push var_000000F4
0085A521: push var_000000F8
0085A527: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085A52C: mov var_00000130, eax
0085A532: jmp 85A53Bh
0085A534: and var_00000130, 00000000h
0085A53B: lea eax, var_20
0085A53E: push eax
0085A53F: lea eax, var_1C
0085A542: push eax
0085A543: lea eax, var_18
0085A546: push eax
0085A547: push 00000003h
0085A549: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085A54E: add esp, 00000010h
0085A551: lea eax, var_00000090
0085A557: push eax
0085A558: lea eax, var_80
0085A55B: push eax
0085A55C: lea eax, var_70
0085A55F: push eax
0085A560: lea eax, var_60
0085A563: push eax
0085A564: lea eax, var_50
0085A567: push eax
0085A568: lea eax, var_40
0085A56B: push eax
0085A56C: lea eax, var_30
0085A56F: push eax
0085A570: push 00000007h
0085A572: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085A577: add esp, 00000020h
0085A57A: push 0044CDA4h
0085A57F: push 00000000h
0085A581: push 00000009h
0085A583: mov eax, [ebp+08h]
0085A586: mov eax, [eax]
0085A588: push [ebp+08h]
0085A58B: call [eax+0000030Ch]
0085A591: push eax
0085A592: lea eax, var_18
0085A595: push eax
0085A596: call 00410A84h ; Set (object)
0085A59B: push eax
0085A59C: lea eax, var_30
0085A59F: push eax
0085A5A0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085A5A5: add esp, 00000010h
0085A5A8: push eax
0085A5A9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085A5AE: push eax
0085A5AF: lea eax, var_1C
0085A5B2: push eax
0085A5B3: call 00410A84h ; Set (object)
0085A5B8: mov var_000000F4, eax
0085A5BE: mov var_00000088, 80020004h
0085A5C8: mov var_00000090, 0000000Ah
0085A5D2: mov var_78, 0000000Ch
0085A5D9: mov var_80, 00000002h
0085A5E0: mov var_000000C8, 0045691Ch ; USB Device
0085A5EA: mov var_000000D0, 00000008h
0085A5F4: lea edx, var_000000D0
0085A5FA: lea ecx, var_70
0085A5FD: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085A602: mov var_000000B8, 00456910h ; a11
0085A60C: mov var_000000C0, 00000008h
0085A616: lea edx, var_000000C0
0085A61C: lea ecx, var_60
0085A61F: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085A624: mov var_48, 80020004h
0085A62B: mov var_50, 0000000Ah
0085A632: mov var_38, 80020004h
0085A639: mov var_40, 0000000Ah
0085A640: lea eax, var_20
0085A643: push eax
0085A644: lea eax, var_00000090
0085A64A: push eax
0085A64B: lea eax, var_80
0085A64E: push eax
0085A64F: lea eax, var_70
0085A652: push eax
0085A653: lea eax, var_60
0085A656: push eax
0085A657: lea eax, var_50
0085A65A: push eax
0085A65B: lea eax, var_40
0085A65E: push eax
0085A65F: mov eax, var_000000F4
0085A665: mov eax, [eax]
0085A667: push var_000000F4
0085A66D: call [eax+2Ch]
0085A670: fclex 
0085A672: mov var_000000F8, eax
0085A678: cmp var_000000F8, 00000000h
0085A67F: jnl 85A6A1h
0085A681: push 0000002Ch
0085A683: push 0044CDA4h
0085A688: push var_000000F4
0085A68E: push var_000000F8
0085A694: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085A699: mov var_00000134, eax
0085A69F: jmp 85A6A8h
0085A6A1: and var_00000134, 00000000h
0085A6A8: lea eax, var_20
0085A6AB: push eax
0085A6AC: lea eax, var_1C
0085A6AF: push eax
0085A6B0: lea eax, var_18
0085A6B3: push eax
0085A6B4: push 00000003h
0085A6B6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085A6BB: add esp, 00000010h
0085A6BE: lea eax, var_00000090
0085A6C4: push eax
0085A6C5: lea eax, var_80
0085A6C8: push eax
0085A6C9: lea eax, var_70
0085A6CC: push eax
0085A6CD: lea eax, var_60
0085A6D0: push eax
0085A6D1: lea eax, var_50
0085A6D4: push eax
0085A6D5: lea eax, var_40
0085A6D8: push eax
0085A6D9: lea eax, var_30
0085A6DC: push eax
0085A6DD: push 00000007h
0085A6DF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085A6E4: add esp, 00000020h
0085A6E7: push 0044CDA4h
0085A6EC: push 00000000h
0085A6EE: push 00000009h
0085A6F0: mov eax, [ebp+08h]
0085A6F3: mov eax, [eax]
0085A6F5: push [ebp+08h]
0085A6F8: call [eax+0000030Ch]
0085A6FE: push eax
0085A6FF: lea eax, var_18
0085A702: push eax
0085A703: call 00410A84h ; Set (object)
0085A708: push eax
0085A709: lea eax, var_30
0085A70C: push eax
0085A70D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085A712: add esp, 00000010h
0085A715: push eax
0085A716: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085A71B: push eax
0085A71C: lea eax, var_1C
0085A71F: push eax
0085A720: call 00410A84h ; Set (object)
0085A725: mov var_000000F4, eax
0085A72B: mov var_00000088, 80020004h
0085A735: mov var_00000090, 0000000Ah
0085A73F: mov var_78, 0000000Dh
0085A746: mov var_80, 00000002h
0085A74D: mov var_000000C8, 00456944h ; Processor
0085A757: mov var_000000D0, 00000008h
0085A761: lea edx, var_000000D0
0085A767: lea ecx, var_70
0085A76A: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085A76F: mov var_000000B8, 00456938h ; a12
0085A779: mov var_000000C0, 00000008h
0085A783: lea edx, var_000000C0
0085A789: lea ecx, var_60
0085A78C: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085A791: mov var_48, 80020004h
0085A798: mov var_50, 0000000Ah
0085A79F: mov var_38, 80020004h
0085A7A6: mov var_40, 0000000Ah
0085A7AD: lea eax, var_20
0085A7B0: push eax
0085A7B1: lea eax, var_00000090
0085A7B7: push eax
0085A7B8: lea eax, var_80
0085A7BB: push eax
0085A7BC: lea eax, var_70
0085A7BF: push eax
0085A7C0: lea eax, var_60
0085A7C3: push eax
0085A7C4: lea eax, var_50
0085A7C7: push eax
0085A7C8: lea eax, var_40
0085A7CB: push eax
0085A7CC: mov eax, var_000000F4
0085A7D2: mov eax, [eax]
0085A7D4: push var_000000F4
0085A7DA: call [eax+2Ch]
0085A7DD: fclex 
0085A7DF: mov var_000000F8, eax
0085A7E5: cmp var_000000F8, 00000000h
0085A7EC: jnl 85A80Eh
0085A7EE: push 0000002Ch
0085A7F0: push 0044CDA4h
0085A7F5: push var_000000F4
0085A7FB: push var_000000F8
0085A801: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085A806: mov var_00000138, eax
0085A80C: jmp 85A815h
0085A80E: and var_00000138, 00000000h
0085A815: lea eax, var_20
0085A818: push eax
0085A819: lea eax, var_1C
0085A81C: push eax
0085A81D: lea eax, var_18
0085A820: push eax
0085A821: push 00000003h
0085A823: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085A828: add esp, 00000010h
0085A82B: lea eax, var_00000090
0085A831: push eax
0085A832: lea eax, var_80
0085A835: push eax
0085A836: lea eax, var_70
0085A839: push eax
0085A83A: lea eax, var_60
0085A83D: push eax
0085A83E: lea eax, var_50
0085A841: push eax
0085A842: lea eax, var_40
0085A845: push eax
0085A846: lea eax, var_30
0085A849: push eax
0085A84A: push 00000007h
0085A84C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085A851: add esp, 00000020h
0085A854: push 0044CDA4h
0085A859: push 00000000h
0085A85B: push 00000009h
0085A85D: mov eax, [ebp+08h]
0085A860: mov eax, [eax]
0085A862: push [ebp+08h]
0085A865: call [eax+0000030Ch]
0085A86B: push eax
0085A86C: lea eax, var_18
0085A86F: push eax
0085A870: call 00410A84h ; Set (object)
0085A875: push eax
0085A876: lea eax, var_30
0085A879: push eax
0085A87A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085A87F: add esp, 00000010h
0085A882: push eax
0085A883: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085A888: push eax
0085A889: lea eax, var_1C
0085A88C: push eax
0085A88D: call 00410A84h ; Set (object)
0085A892: mov var_000000F4, eax
0085A898: mov var_00000088, 80020004h
0085A8A2: mov var_00000090, 0000000Ah
0085A8AC: mov var_78, 0000000Eh
0085A8B3: mov var_80, 00000002h
0085A8BA: mov var_000000C8, 00456968h ; Networkcard
0085A8C4: mov var_000000D0, 00000008h
0085A8CE: lea edx, var_000000D0
0085A8D4: lea ecx, var_70
0085A8D7: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085A8DC: mov var_000000B8, 0045695Ch ; a13
0085A8E6: mov var_000000C0, 00000008h
0085A8F0: lea edx, var_000000C0
0085A8F6: lea ecx, var_60
0085A8F9: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085A8FE: mov var_48, 80020004h
0085A905: mov var_50, 0000000Ah
0085A90C: mov var_38, 80020004h
0085A913: mov var_40, 0000000Ah
0085A91A: lea eax, var_20
0085A91D: push eax
0085A91E: lea eax, var_00000090
0085A924: push eax
0085A925: lea eax, var_80
0085A928: push eax
0085A929: lea eax, var_70
0085A92C: push eax
0085A92D: lea eax, var_60
0085A930: push eax
0085A931: lea eax, var_50
0085A934: push eax
0085A935: lea eax, var_40
0085A938: push eax
0085A939: mov eax, var_000000F4
0085A93F: mov eax, [eax]
0085A941: push var_000000F4
0085A947: call [eax+2Ch]
0085A94A: fclex 
0085A94C: mov var_000000F8, eax
0085A952: cmp var_000000F8, 00000000h
0085A959: jnl 85A97Bh
0085A95B: push 0000002Ch
0085A95D: push 0044CDA4h
0085A962: push var_000000F4
0085A968: push var_000000F8
0085A96E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085A973: mov var_0000013C, eax
0085A979: jmp 85A982h
0085A97B: and var_0000013C, 00000000h
0085A982: lea eax, var_20
0085A985: push eax
0085A986: lea eax, var_1C
0085A989: push eax
0085A98A: lea eax, var_18
0085A98D: push eax
0085A98E: push 00000003h
0085A990: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085A995: add esp, 00000010h
0085A998: lea eax, var_00000090
0085A99E: push eax
0085A99F: lea eax, var_80
0085A9A2: push eax
0085A9A3: lea eax, var_70
0085A9A6: push eax
0085A9A7: lea eax, var_60
0085A9AA: push eax
0085A9AB: lea eax, var_50
0085A9AE: push eax
0085A9AF: lea eax, var_40
0085A9B2: push eax
0085A9B3: lea eax, var_30
0085A9B6: push eax
0085A9B7: push 00000007h
0085A9B9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085A9BE: add esp, 00000020h
0085A9C1: push 0044CDA4h
0085A9C6: push 00000000h
0085A9C8: push 00000009h
0085A9CA: mov eax, [ebp+08h]
0085A9CD: mov eax, [eax]
0085A9CF: push [ebp+08h]
0085A9D2: call [eax+0000030Ch]
0085A9D8: push eax
0085A9D9: lea eax, var_18
0085A9DC: push eax
0085A9DD: call 00410A84h ; Set (object)
0085A9E2: push eax
0085A9E3: lea eax, var_30
0085A9E6: push eax
0085A9E7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085A9EC: add esp, 00000010h
0085A9EF: push eax
0085A9F0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085A9F5: push eax
0085A9F6: lea eax, var_1C
0085A9F9: push eax
0085A9FA: call 00410A84h ; Set (object)
0085A9FF: mov var_000000F4, eax
0085AA05: mov var_00000088, 80020004h
0085AA0F: mov var_00000090, 0000000Ah
0085AA19: mov var_78, 0000000Fh
0085AA20: mov var_80, 00000002h
0085AA27: mov var_000000C8, 00456990h ; Battery
0085AA31: mov var_000000D0, 00000008h
0085AA3B: lea edx, var_000000D0
0085AA41: lea ecx, var_70
0085AA44: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085AA49: mov var_000000B8, 00456984h ; a14
0085AA53: mov var_000000C0, 00000008h
0085AA5D: lea edx, var_000000C0
0085AA63: lea ecx, var_60
0085AA66: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0085AA6B: mov var_48, 80020004h
0085AA72: mov var_50, 0000000Ah
0085AA79: mov var_38, 80020004h
0085AA80: mov var_40, 0000000Ah
0085AA87: lea eax, var_20
0085AA8A: push eax
0085AA8B: lea eax, var_00000090
0085AA91: push eax
0085AA92: lea eax, var_80
0085AA95: push eax
0085AA96: lea eax, var_70
0085AA99: push eax
0085AA9A: lea eax, var_60
0085AA9D: push eax
0085AA9E: lea eax, var_50
0085AAA1: push eax
0085AAA2: lea eax, var_40
0085AAA5: push eax
0085AAA6: mov eax, var_000000F4
0085AAAC: mov eax, [eax]
0085AAAE: push var_000000F4
0085AAB4: call [eax+2Ch]
0085AAB7: fclex 
0085AAB9: mov var_000000F8, eax
0085AABF: cmp var_000000F8, 00000000h
0085AAC6: jnl 85AAE8h
0085AAC8: push 0000002Ch
0085AACA: push 0044CDA4h
0085AACF: push var_000000F4
0085AAD5: push var_000000F8
0085AADB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085AAE0: mov var_00000140, eax
0085AAE6: jmp 85AAEFh
0085AAE8: and var_00000140, 00000000h
0085AAEF: lea eax, var_20
0085AAF2: push eax
0085AAF3: lea eax, var_1C
0085AAF6: push eax
0085AAF7: lea eax, var_18
0085AAFA: push eax
0085AAFB: push 00000003h
0085AAFD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085AB02: add esp, 00000010h
0085AB05: lea eax, var_00000090
0085AB0B: push eax
0085AB0C: lea eax, var_80
0085AB0F: push eax
0085AB10: lea eax, var_70
0085AB13: push eax
0085AB14: lea eax, var_60
0085AB17: push eax
0085AB18: lea eax, var_50
0085AB1B: push eax
0085AB1C: lea eax, var_40
0085AB1F: push eax
0085AB20: lea eax, var_30
0085AB23: push eax
0085AB24: push 00000007h
0085AB26: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085AB2B: add esp, 00000020h
0085AB2E: push 0085AB76h
0085AB33: jmp 85AB75h
0085AB35: lea eax, var_20
0085AB38: push eax
0085AB39: lea eax, var_1C
0085AB3C: push eax
0085AB3D: lea eax, var_18
0085AB40: push eax
0085AB41: push 00000003h
0085AB43: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085AB48: add esp, 00000010h
0085AB4B: lea eax, var_00000090
0085AB51: push eax
0085AB52: lea eax, var_80
0085AB55: push eax
0085AB56: lea eax, var_70
0085AB59: push eax
0085AB5A: lea eax, var_60
0085AB5D: push eax
0085AB5E: lea eax, var_50
0085AB61: push eax
0085AB62: lea eax, var_40
0085AB65: push eax
0085AB66: lea eax, var_30
0085AB69: push eax
0085AB6A: push 00000007h
0085AB6C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085AB71: add esp, 00000020h
0085AB74: ret 
End Sub

