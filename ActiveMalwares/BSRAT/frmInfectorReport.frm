VERSION 5.00
Begin VB.Form frmInfectorReport
  Caption = "Infector report"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmInfectorReport.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 13230
  ClientHeight = 6975
  StartUpPosition = 2 'CenterScreen
  Begin XtremeSuiteControls.ListView lstReport
    Left = 0
    Top = 0
    Width = 13215
    Height = 6975
    TabIndex = 0
  End
  Begin VB.Menu mnuReportMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuReport
      Index = 0
      Caption = "Copy"
    End
    Begin VB.Menu mnuReport
      Index = 1
      Caption = "Save to file"
    End
  End
End

Attribute VB_Name = "frmInfectorReport"


Private sub mnuReport__875078
00875078: push ebp
00875079: mov ebp, esp
0087507B: sub esp, 00000018h
0087507E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00875083: mov eax, fs:[00h]
00875089: push eax
0087508A: mov fs:[00000000h], esp
00875091: mov eax, 00000208h
00875096: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087509B: push ebx
0087509C: push esi
0087509D: push edi
0087509E: mov var_18, esp
008750A1: mov var_14, 0040D478h
008750A8: mov eax, [ebp+08h]
008750AB: and eax, 00000001h
008750AE: mov var_10, eax
008750B1: mov eax, [ebp+08h]
008750B4: and al, FEh
008750B6: mov [ebp+08h], eax
008750B9: mov var_0C, 00000000h
008750C0: mov eax, [ebp+08h]
008750C3: mov eax, [eax]
008750C5: push [ebp+08h]
008750C8: call [eax+04h]
008750CB: mov var_04, 00000001h
008750D2: mov var_04, 00000002h
008750D9: push FFFFFFFFh
008750DB: call 00410A60h ; On Error ...
008750E0: mov var_04, 00000003h
008750E7: mov eax, [ebp+0Ch]
008750EA: mov ax, [eax]
008750ED: mov var_000001F0, ax
008750F4: movsx eax, word ptr var_000001F0
008750FB: mov var_00000210, eax
00875101: cmp var_00000210, 00000000h
00875108: jz 875121h
0087510A: cmp var_00000210, 00000001h
00875111: jz 00875915h
00875117: jmp 00875EE5h
0087511C: jmp 00875EE5h
00875121: mov var_04, 00000005h
00875128: mov var_00000134, 00000001h
00875132: mov var_0000013C, 00000002h
0087513C: push 00000000h
0087513E: push 00000001h
00875140: push 00440E48h
00875145: push 00000000h
00875147: push 00000018h
00875149: mov eax, [ebp+08h]
0087514C: mov eax, [eax]
0087514E: push [ebp+08h]
00875151: call [eax+00000304h]
00875157: push eax
00875158: lea eax, var_7C
0087515B: push eax
0087515C: call 00410A84h ; Set (object)
00875161: push eax
00875162: lea eax, var_000000AC
00875168: push eax
00875169: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087516E: add esp, 00000010h
00875171: push eax
00875172: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00875177: push eax
00875178: lea eax, var_80
0087517B: push eax
0087517C: call 00410A84h ; Set (object)
00875181: push eax
00875182: lea eax, var_000000BC
00875188: push eax
00875189: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087518E: add esp, 00000010h
00875191: push eax
00875192: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00875197: mov var_00000144, eax
0087519D: mov var_0000014C, 00000003h
008751A7: mov var_00000154, 00000001h
008751B1: mov var_0000015C, 00000002h
008751BB: lea eax, var_0000013C
008751C1: push eax
008751C2: lea eax, var_0000014C
008751C8: push eax
008751C9: lea eax, var_0000015C
008751CF: push eax
008751D0: lea eax, var_000001CC
008751D6: push eax
008751D7: lea eax, var_000001BC
008751DD: push eax
008751DE: lea eax, var_30
008751E1: push eax
008751E2: call 00410A3Ch ; For
008751E7: mov var_00000208, eax
008751ED: lea eax, var_80
008751F0: push eax
008751F1: lea eax, var_7C
008751F4: push eax
008751F5: push 00000002h
008751F7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008751FC: add esp, 0000000Ch
008751FF: lea eax, var_000000BC
00875205: push eax
00875206: lea eax, var_000000AC
0087520C: push eax
0087520D: push 00000002h
0087520F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00875214: add esp, 0000000Ch
00875217: jmp 00875704h
0087521C: mov var_04, 00000006h
00875223: lea eax, var_30
00875226: mov var_00000134, eax
0087522C: mov var_0000013C, 0000400Ch
00875236: push 00000000h
00875238: push 00000004h
0087523A: push 00440E58h
0087523F: push 00000010h
00875241: pop eax
00875242: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00875247: lea esi, var_0000013C
0087524D: mov edi, esp
0087524F: movsd 
00875250: movsd 
00875251: movsd 
00875252: movsd 
00875253: push 00000001h
00875255: push 00000000h
00875257: push 00440E48h
0087525C: push 00000000h
0087525E: push 00000018h
00875260: mov eax, [ebp+08h]
00875263: mov eax, [eax]
00875265: push [ebp+08h]
00875268: call [eax+00000304h]
0087526E: push eax
0087526F: lea eax, var_7C
00875272: push eax
00875273: call 00410A84h ; Set (object)
00875278: push eax
00875279: lea eax, var_000000AC
0087527F: push eax
00875280: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00875285: add esp, 00000010h
00875288: push eax
00875289: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0087528E: push eax
0087528F: lea eax, var_80
00875292: push eax
00875293: call 00410A84h ; Set (object)
00875298: push eax
00875299: lea eax, var_000000BC
0087529F: push eax
008752A0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008752A5: add esp, 00000020h
008752A8: push eax
008752A9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008752AE: push eax
008752AF: lea eax, var_00000084
008752B5: push eax
008752B6: call 00410A84h ; Set (object)
008752BB: push eax
008752BC: lea eax, var_000000CC
008752C2: push eax
008752C3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008752C8: add esp, 00000010h
008752CB: push eax
008752CC: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008752D1: sub ax, FFFFh
008752D5: neg ax
008752D8: sbb eax, eax
008752DA: inc eax
008752DB: neg eax
008752DD: mov var_000001A0, ax
008752E4: lea eax, var_00000084
008752EA: push eax
008752EB: lea eax, var_80
008752EE: push eax
008752EF: lea eax, var_7C
008752F2: push eax
008752F3: push 00000003h
008752F5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008752FA: add esp, 00000010h
008752FD: lea eax, var_000000CC
00875303: push eax
00875304: lea eax, var_000000BC
0087530A: push eax
0087530B: lea eax, var_000000AC
00875311: push eax
00875312: push 00000003h
00875314: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00875319: add esp, 00000010h
0087531C: movsx eax, word ptr var_000001A0
00875323: test eax, eax
00875325: jz 008756E0h
0087532B: mov var_04, 00000007h
00875332: lea eax, var_30
00875335: mov var_00000134, eax
0087533B: mov var_0000013C, 0000400Ch
00875345: mov var_00000154, 00000001h
0087534F: mov var_0000015C, 00000003h
00875359: lea eax, var_30
0087535C: mov var_00000144, eax
00875362: mov var_0000014C, 0000400Ch
0087536C: mov var_00000184, 00000002h
00875376: mov var_0000018C, 00000003h
00875380: lea eax, var_30
00875383: mov var_00000174, eax
00875389: mov var_0000017C, 0000400Ch
00875393: push var_48
00875396: push 00000000h
00875398: push 00000000h
0087539A: push 00440E58h
0087539F: push 00000010h
008753A1: pop eax
008753A2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008753A7: lea esi, var_0000013C
008753AD: mov edi, esp
008753AF: movsd 
008753B0: movsd 
008753B1: movsd 
008753B2: movsd 
008753B3: push 00000001h
008753B5: push 00000000h
008753B7: push 00440E48h
008753BC: push 00000000h
008753BE: push 00000018h
008753C0: mov eax, [ebp+08h]
008753C3: mov eax, [eax]
008753C5: push [ebp+08h]
008753C8: call [eax+00000304h]
008753CE: push eax
008753CF: lea eax, var_7C
008753D2: push eax
008753D3: call 00410A84h ; Set (object)
008753D8: push eax
008753D9: lea eax, var_000000AC
008753DF: push eax
008753E0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008753E5: add esp, 00000010h
008753E8: push eax
008753E9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008753EE: push eax
008753EF: lea eax, var_80
008753F2: push eax
008753F3: call 00410A84h ; Set (object)
008753F8: push eax
008753F9: lea eax, var_000000BC
008753FF: push eax
00875400: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00875405: add esp, 00000020h
00875408: push eax
00875409: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0087540E: push eax
0087540F: lea eax, var_00000084
00875415: push eax
00875416: call 00410A84h ; Set (object)
0087541B: push eax
0087541C: lea eax, var_000000CC
00875422: push eax
00875423: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00875428: add esp, 00000010h
0087542B: push eax
0087542C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00875431: mov edx, eax
00875433: lea ecx, var_5C
00875436: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0087543B: push eax
0087543C: call 00410A18h ; &
00875441: mov edx, eax
00875443: lea ecx, var_60
00875446: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0087544B: push eax
0087544C: push 00445568h
00875451: call 00410A18h ; &
00875456: mov edx, eax
00875458: lea ecx, var_64
0087545B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00875460: push eax
00875461: push 00000010h
00875463: pop eax
00875464: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00875469: lea esi, var_0000015C
0087546F: mov edi, esp
00875471: movsd 
00875472: movsd 
00875473: movsd 
00875474: movsd 
00875475: push 00000001h
00875477: push 00000010h
00875479: push 00440E58h
0087547E: push 00000010h
00875480: pop eax
00875481: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00875486: lea esi, var_0000014C
0087548C: mov edi, esp
0087548E: movsd 
0087548F: movsd 
00875490: movsd 
00875491: movsd 
00875492: push 00000001h
00875494: push 00000000h
00875496: push 00440E48h
0087549B: push 00000000h
0087549D: push 00000018h
0087549F: mov eax, [ebp+08h]
008754A2: mov eax, [eax]
008754A4: push [ebp+08h]
008754A7: call [eax+00000304h]
008754AD: push eax
008754AE: lea eax, var_00000088
008754B4: push eax
008754B5: call 00410A84h ; Set (object)
008754BA: push eax
008754BB: lea eax, var_000000DC
008754C1: push eax
008754C2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008754C7: add esp, 00000010h
008754CA: push eax
008754CB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008754D0: push eax
008754D1: lea eax, var_0000008C
008754D7: push eax
008754D8: call 00410A84h ; Set (object)
008754DD: push eax
008754DE: lea eax, var_000000EC
008754E4: push eax
008754E5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008754EA: add esp, 00000020h
008754ED: push eax
008754EE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008754F3: push eax
008754F4: lea eax, var_00000090
008754FA: push eax
008754FB: call 00410A84h ; Set (object)
00875500: push eax
00875501: lea eax, var_000000FC
00875507: push eax
00875508: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087550D: add esp, 00000020h
00875510: push eax
00875511: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00875516: mov edx, eax
00875518: lea ecx, var_68
0087551B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00875520: push eax
00875521: call 00410A18h ; &
00875526: mov edx, eax
00875528: lea ecx, var_6C
0087552B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00875530: push eax
00875531: push 00445568h
00875536: call 00410A18h ; &
0087553B: mov edx, eax
0087553D: lea ecx, var_70
00875540: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00875545: push eax
00875546: push 00000010h
00875548: pop eax
00875549: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087554E: lea esi, var_0000018C
00875554: mov edi, esp
00875556: movsd 
00875557: movsd 
00875558: movsd 
00875559: movsd 
0087555A: push 00000001h
0087555C: push 00000010h
0087555E: push 00440E58h
00875563: push 00000010h
00875565: pop eax
00875566: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087556B: lea esi, var_0000017C
00875571: mov edi, esp
00875573: movsd 
00875574: movsd 
00875575: movsd 
00875576: movsd 
00875577: push 00000001h
00875579: push 00000000h
0087557B: push 00440E48h
00875580: push 00000000h
00875582: push 00000018h
00875584: mov eax, [ebp+08h]
00875587: mov eax, [eax]
00875589: push [ebp+08h]
0087558C: call [eax+00000304h]
00875592: push eax
00875593: lea eax, var_00000094
00875599: push eax
0087559A: call 00410A84h ; Set (object)
0087559F: push eax
008755A0: lea eax, var_0000010C
008755A6: push eax
008755A7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008755AC: add esp, 00000010h
008755AF: push eax
008755B0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008755B5: push eax
008755B6: lea eax, var_00000098
008755BC: push eax
008755BD: call 00410A84h ; Set (object)
008755C2: push eax
008755C3: lea eax, var_0000011C
008755C9: push eax
008755CA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008755CF: add esp, 00000020h
008755D2: push eax
008755D3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008755D8: push eax
008755D9: lea eax, var_0000009C
008755DF: push eax
008755E0: call 00410A84h ; Set (object)
008755E5: push eax
008755E6: lea eax, var_0000012C
008755EC: push eax
008755ED: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008755F2: add esp, 00000020h
008755F5: push eax
008755F6: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008755FB: mov edx, eax
008755FD: lea ecx, var_74
00875600: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00875605: push eax
00875606: call 00410A18h ; &
0087560B: mov edx, eax
0087560D: lea ecx, var_78
00875610: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00875615: push eax
00875616: push 00441264h ; vbCrLf
0087561B: call 00410A18h ; &
00875620: mov edx, eax
00875622: lea ecx, var_48
00875625: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0087562A: lea eax, var_78
0087562D: push eax
0087562E: lea eax, var_74
00875631: push eax
00875632: lea eax, var_70
00875635: push eax
00875636: lea eax, var_6C
00875639: push eax
0087563A: lea eax, var_68
0087563D: push eax
0087563E: lea eax, var_64
00875641: push eax
00875642: lea eax, var_60
00875645: push eax
00875646: lea eax, var_5C
00875649: push eax
0087564A: push 00000008h
0087564C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00875651: add esp, 00000024h
00875654: lea eax, var_0000009C
0087565A: push eax
0087565B: lea eax, var_00000098
00875661: push eax
00875662: lea eax, var_00000094
00875668: push eax
00875669: lea eax, var_00000090
0087566F: push eax
00875670: lea eax, var_0000008C
00875676: push eax
00875677: lea eax, var_00000088
0087567D: push eax
0087567E: lea eax, var_00000084
00875684: push eax
00875685: lea eax, var_80
00875688: push eax
00875689: lea eax, var_7C
0087568C: push eax
0087568D: push 00000009h
0087568F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00875694: add esp, 00000028h
00875697: lea eax, var_0000012C
0087569D: push eax
0087569E: lea eax, var_0000011C
008756A4: push eax
008756A5: lea eax, var_0000010C
008756AB: push eax
008756AC: lea eax, var_000000FC
008756B2: push eax
008756B3: lea eax, var_000000EC
008756B9: push eax
008756BA: lea eax, var_000000DC
008756C0: push eax
008756C1: lea eax, var_000000CC
008756C7: push eax
008756C8: lea eax, var_000000BC
008756CE: push eax
008756CF: lea eax, var_000000AC
008756D5: push eax
008756D6: push 00000009h
008756D8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008756DD: add esp, 00000028h
008756E0: mov var_04, 00000009h
008756E7: lea eax, var_000001CC
008756ED: push eax
008756EE: lea eax, var_000001BC
008756F4: push eax
008756F5: lea eax, var_30
008756F8: push eax
008756F9: call 00410A36h ; Next
008756FE: mov var_00000208, eax
00875704: cmp var_00000208, 00000000h
0087570B: jnz 0087521Ch
00875711: mov var_04, 0000000Ah
00875718: cmp [008F529Ch], 00000000h
0087571F: jnz 87573Ch
00875721: push 008F529Ch
00875726: push 00440F2Ch
0087572B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00875730: mov var_00000214, 008F529Ch
0087573A: jmp 875746h
0087573C: mov var_00000214, 008F529Ch
00875746: mov eax, var_00000214
0087574C: mov eax, [eax]
0087574E: mov var_000001A0, eax
00875754: lea eax, var_7C
00875757: push eax
00875758: mov eax, var_000001A0
0087575E: mov eax, [eax]
00875760: push var_000001A0
00875766: call [eax+1Ch]
00875769: fclex 
0087576B: mov var_000001A4, eax
00875771: cmp var_000001A4, 00000000h
00875778: jnl 87579Ah
0087577A: push 0000001Ch
0087577C: push 00440F1Ch
00875781: push var_000001A0
00875787: push var_000001A4
0087578D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00875792: mov var_00000218, eax
00875798: jmp 8757A1h
0087579A: and var_00000218, 00000000h
008757A1: mov eax, var_7C
008757A4: mov var_000001A8, eax
008757AA: mov eax, var_000001A8
008757B0: mov eax, [eax]
008757B2: push var_000001A8
008757B8: call [eax+50h]
008757BB: fclex 
008757BD: mov var_000001AC, eax
008757C3: cmp var_000001AC, 00000000h
008757CA: jnl 8757ECh
008757CC: push 00000050h
008757CE: push 00445554h
008757D3: push var_000001A8
008757D9: push var_000001AC
008757DF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008757E4: mov var_0000021C, eax
008757EA: jmp 8757F3h
008757EC: and var_0000021C, 00000000h
008757F3: lea ecx, var_7C
008757F6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008757FB: mov var_04, 0000000Bh
00875802: cmp [008F529Ch], 00000000h
00875809: jnz 875826h
0087580B: push 008F529Ch
00875810: push 00440F2Ch
00875815: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0087581A: mov var_00000220, 008F529Ch
00875824: jmp 875830h
00875826: mov var_00000220, 008F529Ch
00875830: mov eax, var_00000220
00875836: mov eax, [eax]
00875838: mov var_000001A0, eax
0087583E: lea eax, var_7C
00875841: push eax
00875842: mov eax, var_000001A0
00875848: mov eax, [eax]
0087584A: push var_000001A0
00875850: call [eax+1Ch]
00875853: fclex 
00875855: mov var_000001A4, eax
0087585B: cmp var_000001A4, 00000000h
00875862: jnl 875884h
00875864: push 0000001Ch
00875866: push 00440F1Ch
0087586B: push var_000001A0
00875871: push var_000001A4
00875877: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087587C: mov var_00000224, eax
00875882: jmp 87588Bh
00875884: and var_00000224, 00000000h
0087588B: mov eax, var_7C
0087588E: mov var_000001A8, eax
00875894: mov var_00000134, 80020004h
0087589E: mov var_0000013C, 0000000Ah
008758A8: push 00000010h
008758AA: pop eax
008758AB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008758B0: lea esi, var_0000013C
008758B6: mov edi, esp
008758B8: movsd 
008758B9: movsd 
008758BA: movsd 
008758BB: movsd 
008758BC: push var_48
008758BF: mov eax, var_000001A8
008758C5: mov eax, [eax]
008758C7: push var_000001A8
008758CD: call [eax+60h]
008758D0: fclex 
008758D2: mov var_000001AC, eax
008758D8: cmp var_000001AC, 00000000h
008758DF: jnl 875901h
008758E1: push 00000060h
008758E3: push 00445554h
008758E8: push var_000001A8
008758EE: push var_000001AC
008758F4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008758F9: mov var_00000228, eax
008758FF: jmp 875908h
00875901: and var_00000228, 00000000h
00875908: lea ecx, var_7C
0087590B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00875910: jmp 00875EE5h
00875915: mov var_04, 0000000Dh
0087591C: and var_00000134, 00000000h
00875923: mov var_0000013C, 00008008h
0087592D: lea eax, var_58
00875930: push eax
00875931: lea eax, var_0000013C
00875937: push eax
00875938: call 00410868h ; msvbvm60.dll.__vbaVarTstNe
0087593D: movsx eax, ax
00875940: test eax, eax
00875942: jz 00875EE5h
00875948: mov var_04, 0000000Eh
0087594F: mov var_00000134, 00000001h
00875959: mov var_0000013C, 00000002h
00875963: push 00000000h
00875965: push 00000001h
00875967: push 00440E48h
0087596C: push 00000000h
0087596E: push 00000018h
00875970: mov eax, [ebp+08h]
00875973: mov eax, [eax]
00875975: push [ebp+08h]
00875978: call [eax+00000304h]
0087597E: push eax
0087597F: lea eax, var_7C
00875982: push eax
00875983: call 00410A84h ; Set (object)
00875988: push eax
00875989: lea eax, var_000000AC
0087598F: push eax
00875990: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00875995: add esp, 00000010h
00875998: push eax
00875999: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0087599E: push eax
0087599F: lea eax, var_80
008759A2: push eax
008759A3: call 00410A84h ; Set (object)
008759A8: push eax
008759A9: lea eax, var_000000BC
008759AF: push eax
008759B0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008759B5: add esp, 00000010h
008759B8: push eax
008759B9: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008759BE: mov var_00000144, eax
008759C4: mov var_0000014C, 00000003h
008759CE: mov var_00000154, 00000001h
008759D8: mov var_0000015C, 00000002h
008759E2: lea eax, var_0000013C
008759E8: push eax
008759E9: lea eax, var_0000014C
008759EF: push eax
008759F0: lea eax, var_0000015C
008759F6: push eax
008759F7: lea eax, var_000001EC
008759FD: push eax
008759FE: lea eax, var_000001DC
00875A04: push eax
00875A05: lea eax, var_30
00875A08: push eax
00875A09: call 00410A3Ch ; For
00875A0E: mov var_0000020C, eax
00875A14: lea eax, var_80
00875A17: push eax
00875A18: lea eax, var_7C
00875A1B: push eax
00875A1C: push 00000002h
00875A1E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00875A23: add esp, 0000000Ch
00875A26: lea eax, var_000000BC
00875A2C: push eax
00875A2D: lea eax, var_000000AC
00875A33: push eax
00875A34: push 00000002h
00875A36: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00875A3B: add esp, 0000000Ch
00875A3E: jmp 00875E1Ch
00875A43: mov var_04, 0000000Fh
00875A4A: lea eax, var_30
00875A4D: mov var_00000134, eax
00875A53: mov var_0000013C, 0000400Ch
00875A5D: mov var_00000154, 00000001h
00875A67: mov var_0000015C, 00000003h
00875A71: lea eax, var_30
00875A74: mov var_00000144, eax
00875A7A: mov var_0000014C, 0000400Ch
00875A84: mov var_00000184, 00000002h
00875A8E: mov var_0000018C, 00000003h
00875A98: lea eax, var_30
00875A9B: mov var_00000174, eax
00875AA1: mov var_0000017C, 0000400Ch
00875AAB: push var_48
00875AAE: push 00000000h
00875AB0: push 00000000h
00875AB2: push 00440E58h
00875AB7: push 00000010h
00875AB9: pop eax
00875ABA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00875ABF: lea esi, var_0000013C
00875AC5: mov edi, esp
00875AC7: movsd 
00875AC8: movsd 
00875AC9: movsd 
00875ACA: movsd 
00875ACB: push 00000001h
00875ACD: push 00000000h
00875ACF: push 00440E48h
00875AD4: push 00000000h
00875AD6: push 00000018h
00875AD8: mov eax, [ebp+08h]
00875ADB: mov eax, [eax]
00875ADD: push [ebp+08h]
00875AE0: call [eax+00000304h]
00875AE6: push eax
00875AE7: lea eax, var_7C
00875AEA: push eax
00875AEB: call 00410A84h ; Set (object)
00875AF0: push eax
00875AF1: lea eax, var_000000AC
00875AF7: push eax
00875AF8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00875AFD: add esp, 00000010h
00875B00: push eax
00875B01: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00875B06: push eax
00875B07: lea eax, var_80
00875B0A: push eax
00875B0B: call 00410A84h ; Set (object)
00875B10: push eax
00875B11: lea eax, var_000000BC
00875B17: push eax
00875B18: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00875B1D: add esp, 00000020h
00875B20: push eax
00875B21: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00875B26: push eax
00875B27: lea eax, var_00000084
00875B2D: push eax
00875B2E: call 00410A84h ; Set (object)
00875B33: push eax
00875B34: lea eax, var_000000CC
00875B3A: push eax
00875B3B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00875B40: add esp, 00000010h
00875B43: push eax
00875B44: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00875B49: mov edx, eax
00875B4B: lea ecx, var_5C
00875B4E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00875B53: push eax
00875B54: call 00410A18h ; &
00875B59: mov edx, eax
00875B5B: lea ecx, var_60
00875B5E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00875B63: push eax
00875B64: push 00445568h
00875B69: call 00410A18h ; &
00875B6E: mov edx, eax
00875B70: lea ecx, var_64
00875B73: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00875B78: push eax
00875B79: push 00000010h
00875B7B: pop eax
00875B7C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00875B81: lea esi, var_0000015C
00875B87: mov edi, esp
00875B89: movsd 
00875B8A: movsd 
00875B8B: movsd 
00875B8C: movsd 
00875B8D: push 00000001h
00875B8F: push 00000010h
00875B91: push 00440E58h
00875B96: push 00000010h
00875B98: pop eax
00875B99: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00875B9E: lea esi, var_0000014C
00875BA4: mov edi, esp
00875BA6: movsd 
00875BA7: movsd 
00875BA8: movsd 
00875BA9: movsd 
00875BAA: push 00000001h
00875BAC: push 00000000h
00875BAE: push 00440E48h
00875BB3: push 00000000h
00875BB5: push 00000018h
00875BB7: mov eax, [ebp+08h]
00875BBA: mov eax, [eax]
00875BBC: push [ebp+08h]
00875BBF: call [eax+00000304h]
00875BC5: push eax
00875BC6: lea eax, var_00000088
00875BCC: push eax
00875BCD: call 00410A84h ; Set (object)
00875BD2: push eax
00875BD3: lea eax, var_000000DC
00875BD9: push eax
00875BDA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00875BDF: add esp, 00000010h
00875BE2: push eax
00875BE3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00875BE8: push eax
00875BE9: lea eax, var_0000008C
00875BEF: push eax
00875BF0: call 00410A84h ; Set (object)
00875BF5: push eax
00875BF6: lea eax, var_000000EC
00875BFC: push eax
00875BFD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00875C02: add esp, 00000020h
00875C05: push eax
00875C06: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00875C0B: push eax
00875C0C: lea eax, var_00000090
00875C12: push eax
00875C13: call 00410A84h ; Set (object)
00875C18: push eax
00875C19: lea eax, var_000000FC
00875C1F: push eax
00875C20: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00875C25: add esp, 00000020h
00875C28: push eax
00875C29: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00875C2E: mov edx, eax
00875C30: lea ecx, var_68
00875C33: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00875C38: push eax
00875C39: call 00410A18h ; &
00875C3E: mov edx, eax
00875C40: lea ecx, var_6C
00875C43: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00875C48: push eax
00875C49: push 00445568h
00875C4E: call 00410A18h ; &
00875C53: mov edx, eax
00875C55: lea ecx, var_70
00875C58: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00875C5D: push eax
00875C5E: push 00000010h
00875C60: pop eax
00875C61: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00875C66: lea esi, var_0000018C
00875C6C: mov edi, esp
00875C6E: movsd 
00875C6F: movsd 
00875C70: movsd 
00875C71: movsd 
00875C72: push 00000001h
00875C74: push 00000010h
00875C76: push 00440E58h
00875C7B: push 00000010h
00875C7D: pop eax
00875C7E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00875C83: lea esi, var_0000017C
00875C89: mov edi, esp
00875C8B: movsd 
00875C8C: movsd 
00875C8D: movsd 
00875C8E: movsd 
00875C8F: push 00000001h
00875C91: push 00000000h
00875C93: push 00440E48h
00875C98: push 00000000h
00875C9A: push 00000018h
00875C9C: mov eax, [ebp+08h]
00875C9F: mov eax, [eax]
00875CA1: push [ebp+08h]
00875CA4: call [eax+00000304h]
00875CAA: push eax
00875CAB: lea eax, var_00000094
00875CB1: push eax
00875CB2: call 00410A84h ; Set (object)
00875CB7: push eax
00875CB8: lea eax, var_0000010C
00875CBE: push eax
00875CBF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00875CC4: add esp, 00000010h
00875CC7: push eax
00875CC8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00875CCD: push eax
00875CCE: lea eax, var_00000098
00875CD4: push eax
00875CD5: call 00410A84h ; Set (object)
00875CDA: push eax
00875CDB: lea eax, var_0000011C
00875CE1: push eax
00875CE2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00875CE7: add esp, 00000020h
00875CEA: push eax
00875CEB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00875CF0: push eax
00875CF1: lea eax, var_0000009C
00875CF7: push eax
00875CF8: call 00410A84h ; Set (object)
00875CFD: push eax
00875CFE: lea eax, var_0000012C
00875D04: push eax
00875D05: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00875D0A: add esp, 00000020h
00875D0D: push eax
00875D0E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00875D13: mov edx, eax
00875D15: lea ecx, var_74
00875D18: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00875D1D: push eax
00875D1E: call 00410A18h ; &
00875D23: mov edx, eax
00875D25: lea ecx, var_78
00875D28: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00875D2D: push eax
00875D2E: push 00441264h ; vbCrLf
00875D33: call 00410A18h ; &
00875D38: mov edx, eax
00875D3A: lea ecx, var_48
00875D3D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00875D42: lea eax, var_78
00875D45: push eax
00875D46: lea eax, var_74
00875D49: push eax
00875D4A: lea eax, var_70
00875D4D: push eax
00875D4E: lea eax, var_6C
00875D51: push eax
00875D52: lea eax, var_68
00875D55: push eax
00875D56: lea eax, var_64
00875D59: push eax
00875D5A: lea eax, var_60
00875D5D: push eax
00875D5E: lea eax, var_5C
00875D61: push eax
00875D62: push 00000008h
00875D64: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00875D69: add esp, 00000024h
00875D6C: lea eax, var_0000009C
00875D72: push eax
00875D73: lea eax, var_00000098
00875D79: push eax
00875D7A: lea eax, var_00000094
00875D80: push eax
00875D81: lea eax, var_00000090
00875D87: push eax
00875D88: lea eax, var_0000008C
00875D8E: push eax
00875D8F: lea eax, var_00000088
00875D95: push eax
00875D96: lea eax, var_00000084
00875D9C: push eax
00875D9D: lea eax, var_80
00875DA0: push eax
00875DA1: lea eax, var_7C
00875DA4: push eax
00875DA5: push 00000009h
00875DA7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00875DAC: add esp, 00000028h
00875DAF: lea eax, var_0000012C
00875DB5: push eax
00875DB6: lea eax, var_0000011C
00875DBC: push eax
00875DBD: lea eax, var_0000010C
00875DC3: push eax
00875DC4: lea eax, var_000000FC
00875DCA: push eax
00875DCB: lea eax, var_000000EC
00875DD1: push eax
00875DD2: lea eax, var_000000DC
00875DD8: push eax
00875DD9: lea eax, var_000000CC
00875DDF: push eax
00875DE0: lea eax, var_000000BC
00875DE6: push eax
00875DE7: lea eax, var_000000AC
00875DED: push eax
00875DEE: push 00000009h
00875DF0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00875DF5: add esp, 00000028h
00875DF8: mov var_04, 00000010h
00875DFF: lea eax, var_000001EC
00875E05: push eax
00875E06: lea eax, var_000001DC
00875E0C: push eax
00875E0D: lea eax, var_30
00875E10: push eax
00875E11: call 00410A36h ; Next
00875E16: mov var_0000020C, eax
00875E1C: cmp var_0000020C, 00000000h
00875E23: jnz 00875A43h
00875E29: mov var_04, 00000011h
00875E30: mov var_000000A4, 80020004h
00875E3A: mov var_000000AC, 0000000Ah
00875E44: lea eax, var_000000AC
00875E4A: push eax
00875E4B: call 004108C2h ; FreeFile
00875E50: mov var_00000144, ax
00875E57: mov var_0000014C, 00000002h
00875E61: lea edx, var_0000014C
00875E67: lea ecx, var_40
00875E6A: call 00410922h ; msvbvm60.dll.__vbaVarMove
00875E6F: lea ecx, var_000000AC
00875E75: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00875E7A: mov var_04, 00000012h
00875E81: lea eax, var_58
00875E84: push eax
00875E85: call 00410862h ; msvbvm60.dll.__vbaStrVarCopy
00875E8A: mov edx, eax
00875E8C: lea ecx, var_5C
00875E8F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00875E94: push eax
00875E95: lea eax, var_40
00875E98: push eax
00875E99: call 004109D0h ; msvbvm60.dll.__vbaI2Var
00875E9E: push eax
00875E9F: push FFFFFFFFh
00875EA1: push 00000220h
00875EA6: call 004108B6h ; Open #
00875EAB: lea ecx, var_5C
00875EAE: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00875EB3: mov var_04, 00000013h
00875EBA: lea eax, var_40
00875EBD: push eax
00875EBE: call 004109D0h ; msvbvm60.dll.__vbaI2Var
00875EC3: push eax
00875EC4: lea eax, var_48
00875EC7: push eax
00875EC8: push 00000000h
00875ECA: call 0041089Eh ; Put #
00875ECF: mov var_04, 00000014h
00875ED6: lea eax, var_40
00875ED9: push eax
00875EDA: call 004109D0h ; msvbvm60.dll.__vbaI2Var
00875EDF: push eax
00875EE0: call 00410898h ; Close #arg_1
00875EE5: mov var_10, 00000000h
00875EEC: push 00875FF4h
00875EF1: jmp 00875FADh
00875EF6: lea eax, var_78
00875EF9: push eax
00875EFA: lea eax, var_74
00875EFD: push eax
00875EFE: lea eax, var_70
00875F01: push eax
00875F02: lea eax, var_6C
00875F05: push eax
00875F06: lea eax, var_68
00875F09: push eax
00875F0A: lea eax, var_64
00875F0D: push eax
00875F0E: lea eax, var_60
00875F11: push eax
00875F12: lea eax, var_5C
00875F15: push eax
00875F16: push 00000008h
00875F18: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00875F1D: add esp, 00000024h
00875F20: lea eax, var_0000009C
00875F26: push eax
00875F27: lea eax, var_00000098
00875F2D: push eax
00875F2E: lea eax, var_00000094
00875F34: push eax
00875F35: lea eax, var_00000090
00875F3B: push eax
00875F3C: lea eax, var_0000008C
00875F42: push eax
00875F43: lea eax, var_00000088
00875F49: push eax
00875F4A: lea eax, var_00000084
00875F50: push eax
00875F51: lea eax, var_80
00875F54: push eax
00875F55: lea eax, var_7C
00875F58: push eax
00875F59: push 00000009h
00875F5B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00875F60: add esp, 00000028h
00875F63: lea eax, var_0000012C
00875F69: push eax
00875F6A: lea eax, var_0000011C
00875F70: push eax
00875F71: lea eax, var_0000010C
00875F77: push eax
00875F78: lea eax, var_000000FC
00875F7E: push eax
00875F7F: lea eax, var_000000EC
00875F85: push eax
00875F86: lea eax, var_000000DC
00875F8C: push eax
00875F8D: lea eax, var_000000CC
00875F93: push eax
00875F94: lea eax, var_000000BC
00875F9A: push eax
00875F9B: lea eax, var_000000AC
00875FA1: push eax
00875FA2: push 00000009h
00875FA4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00875FA9: add esp, 00000028h
00875FAC: ret 
End Sub

Private sub Form__874932
00874932: push ebp
00874933: mov ebp, esp
00874935: sub esp, 0000000Ch
00874938: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0087493D: mov eax, fs:[00h]
00874943: push eax
00874944: mov fs:[00000000h], esp
0087494B: mov eax, 000000A0h
00874950: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874955: push ebx
00874956: push esi
00874957: push edi
00874958: mov var_0C, esp
0087495B: mov var_08, 0040D420h
00874962: mov eax, [ebp+08h]
00874965: and eax, 00000001h
00874968: mov var_04, eax
0087496B: mov eax, [ebp+08h]
0087496E: and al, FEh
00874970: mov [ebp+08h], eax
00874973: mov eax, [ebp+08h]
00874976: mov eax, [eax]
00874978: push [ebp+08h]
0087497B: call [eax+04h]
0087497E: mov var_34, 80020004h
00874985: mov var_3C, 0000000Ah
0087498C: mov var_54, 80020004h
00874993: mov var_5C, 0000000Ah
0087499A: mov var_74, 00446830h ; File
008749A1: mov var_7C, 00000008h
008749A8: mov var_00000094, 00002328h
008749B2: mov var_0000009C, 00000002h
008749BC: push 00000010h
008749BE: pop eax
008749BF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008749C4: lea esi, var_3C
008749C7: mov edi, esp
008749C9: movsd 
008749CA: movsd 
008749CB: movsd 
008749CC: movsd 
008749CD: push 00000010h
008749CF: pop eax
008749D0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008749D5: lea esi, var_5C
008749D8: mov edi, esp
008749DA: movsd 
008749DB: movsd 
008749DC: movsd 
008749DD: movsd 
008749DE: push 00000010h
008749E0: pop eax
008749E1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008749E6: lea esi, var_7C
008749E9: mov edi, esp
008749EB: movsd 
008749EC: movsd 
008749ED: movsd 
008749EE: movsd 
008749EF: push 00000010h
008749F1: pop eax
008749F2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008749F7: lea esi, var_0000009C
008749FD: mov edi, esp
008749FF: movsd 
00874A00: movsd 
00874A01: movsd 
00874A02: movsd 
00874A03: push 00000004h
00874A05: push 00000002h
00874A07: push 00445534h
00874A0C: push 00000000h
00874A0E: push 00000019h
00874A10: mov eax, [ebp+08h]
00874A13: mov eax, [eax]
00874A15: push [ebp+08h]
00874A18: call [eax+00000304h]
00874A1E: push eax
00874A1F: lea eax, var_18
00874A22: push eax
00874A23: call 00410A84h ; Set (object)
00874A28: push eax
00874A29: lea eax, var_2C
00874A2C: push eax
00874A2D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00874A32: add esp, 00000010h
00874A35: push eax
00874A36: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00874A3B: push eax
00874A3C: lea eax, var_1C
00874A3F: push eax
00874A40: call 00410A84h ; Set (object)
00874A45: push eax
00874A46: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00874A4B: add esp, 0000004Ch
00874A4E: lea eax, var_1C
00874A51: push eax
00874A52: lea eax, var_18
00874A55: push eax
00874A56: push 00000002h
00874A58: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00874A5D: add esp, 0000000Ch
00874A60: lea ecx, var_2C
00874A63: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00874A68: mov var_34, 80020004h
00874A6F: mov var_3C, 0000000Ah
00874A76: mov var_54, 80020004h
00874A7D: mov var_5C, 0000000Ah
00874A84: mov var_74, 00446840h ; Size
00874A8B: mov var_7C, 00000008h
00874A92: mov var_00000094, 000007D0h
00874A9C: mov var_0000009C, 00000002h
00874AA6: push 00000010h
00874AA8: pop eax
00874AA9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874AAE: lea esi, var_3C
00874AB1: mov edi, esp
00874AB3: movsd 
00874AB4: movsd 
00874AB5: movsd 
00874AB6: movsd 
00874AB7: push 00000010h
00874AB9: pop eax
00874ABA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874ABF: lea esi, var_5C
00874AC2: mov edi, esp
00874AC4: movsd 
00874AC5: movsd 
00874AC6: movsd 
00874AC7: movsd 
00874AC8: push 00000010h
00874ACA: pop eax
00874ACB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874AD0: lea esi, var_7C
00874AD3: mov edi, esp
00874AD5: movsd 
00874AD6: movsd 
00874AD7: movsd 
00874AD8: movsd 
00874AD9: push 00000010h
00874ADB: pop eax
00874ADC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874AE1: lea esi, var_0000009C
00874AE7: mov edi, esp
00874AE9: movsd 
00874AEA: movsd 
00874AEB: movsd 
00874AEC: movsd 
00874AED: push 00000004h
00874AEF: push 00000002h
00874AF1: push 00445534h
00874AF6: push 00000000h
00874AF8: push 00000019h
00874AFA: mov eax, [ebp+08h]
00874AFD: mov eax, [eax]
00874AFF: push [ebp+08h]
00874B02: call [eax+00000304h]
00874B08: push eax
00874B09: lea eax, var_18
00874B0C: push eax
00874B0D: call 00410A84h ; Set (object)
00874B12: push eax
00874B13: lea eax, var_2C
00874B16: push eax
00874B17: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00874B1C: add esp, 00000010h
00874B1F: push eax
00874B20: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00874B25: push eax
00874B26: lea eax, var_1C
00874B29: push eax
00874B2A: call 00410A84h ; Set (object)
00874B2F: push eax
00874B30: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00874B35: add esp, 0000004Ch
00874B38: lea eax, var_1C
00874B3B: push eax
00874B3C: lea eax, var_18
00874B3F: push eax
00874B40: push 00000002h
00874B42: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00874B47: add esp, 0000000Ch
00874B4A: lea ecx, var_2C
00874B4D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00874B52: mov var_34, 80020004h
00874B59: mov var_3C, 0000000Ah
00874B60: mov var_54, 80020004h
00874B67: mov var_5C, 0000000Ah
00874B6E: mov var_74, 004468A0h ; Status
00874B75: mov var_7C, 00000008h
00874B7C: mov var_00000094, 000007D0h
00874B86: mov var_0000009C, 00000002h
00874B90: push 00000010h
00874B92: pop eax
00874B93: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874B98: lea esi, var_3C
00874B9B: mov edi, esp
00874B9D: movsd 
00874B9E: movsd 
00874B9F: movsd 
00874BA0: movsd 
00874BA1: push 00000010h
00874BA3: pop eax
00874BA4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874BA9: lea esi, var_5C
00874BAC: mov edi, esp
00874BAE: movsd 
00874BAF: movsd 
00874BB0: movsd 
00874BB1: movsd 
00874BB2: push 00000010h
00874BB4: pop eax
00874BB5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874BBA: lea esi, var_7C
00874BBD: mov edi, esp
00874BBF: movsd 
00874BC0: movsd 
00874BC1: movsd 
00874BC2: movsd 
00874BC3: push 00000010h
00874BC5: pop eax
00874BC6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874BCB: lea esi, var_0000009C
00874BD1: mov edi, esp
00874BD3: movsd 
00874BD4: movsd 
00874BD5: movsd 
00874BD6: movsd 
00874BD7: push 00000004h
00874BD9: push 00000002h
00874BDB: push 00445534h
00874BE0: push 00000000h
00874BE2: push 00000019h
00874BE4: mov eax, [ebp+08h]
00874BE7: mov eax, [eax]
00874BE9: push [ebp+08h]
00874BEC: call [eax+00000304h]
00874BF2: push eax
00874BF3: lea eax, var_18
00874BF6: push eax
00874BF7: call 00410A84h ; Set (object)
00874BFC: push eax
00874BFD: lea eax, var_2C
00874C00: push eax
00874C01: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00874C06: add esp, 00000010h
00874C09: push eax
00874C0A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00874C0F: push eax
00874C10: lea eax, var_1C
00874C13: push eax
00874C14: call 00410A84h ; Set (object)
00874C19: push eax
00874C1A: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00874C1F: add esp, 0000004Ch
00874C22: lea eax, var_1C
00874C25: push eax
00874C26: lea eax, var_18
00874C29: push eax
00874C2A: push 00000002h
00874C2C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00874C31: add esp, 0000000Ch
00874C34: lea ecx, var_2C
00874C37: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00874C3C: mov var_04, 00000000h
00874C43: push 00874C66h
00874C48: jmp 874C65h
00874C4A: lea eax, var_1C
00874C4D: push eax
00874C4E: lea eax, var_18
00874C51: push eax
00874C52: push 00000002h
00874C54: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00874C59: add esp, 0000000Ch
00874C5C: lea ecx, var_2C
00874C5F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00874C64: ret 
End Sub

Private sub Form__874C85
00874C85: push ebp
00874C86: mov ebp, esp
00874C88: sub esp, 00000018h
00874C8B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00874C90: mov eax, fs:[00h]
00874C96: push eax
00874C97: mov fs:[00000000h], esp
00874C9E: mov eax, 000000B0h
00874CA3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874CA8: push ebx
00874CA9: push esi
00874CAA: push edi
00874CAB: mov var_18, esp
00874CAE: mov var_14, 0040D430h
00874CB5: mov eax, [ebp+08h]
00874CB8: and eax, 00000001h
00874CBB: mov var_10, eax
00874CBE: mov eax, [ebp+08h]
00874CC1: and al, FEh
00874CC3: mov [ebp+08h], eax
00874CC6: mov var_0C, 00000000h
00874CCD: mov eax, [ebp+08h]
00874CD0: mov eax, [eax]
00874CD2: push [ebp+08h]
00874CD5: call [eax+04h]
00874CD8: mov var_04, 00000001h
00874CDF: mov var_04, 00000002h
00874CE6: push FFFFFFFFh
00874CE8: call 00410A60h ; On Error ...
00874CED: mov var_04, 00000003h
00874CF4: fldz 
00874CF6: fstp real4 ptr var_2C
00874CF9: mov var_34, 00000004h
00874D00: and var_4C, 00000000h
00874D04: mov var_54, 00000002h
00874D0B: lea eax, var_000000A8
00874D11: push eax
00874D12: mov eax, [ebp+08h]
00874D15: mov eax, [eax]
00874D17: push [ebp+08h]
00874D1A: call [eax+00000080h]
00874D20: fclex 
00874D22: mov var_000000B0, eax
00874D28: cmp var_000000B0, 00000000h
00874D2F: jnl 874D51h
00874D31: push 00000080h
00874D36: push 00444A54h
00874D3B: push [ebp+08h]
00874D3E: push var_000000B0
00874D44: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00874D49: mov var_000000CC, eax
00874D4F: jmp 874D58h
00874D51: and var_000000CC, 00000000h
00874D58: fld real4 ptr var_000000A8
00874D5E: fsub real4 ptr [00402BA4h]
00874D64: fstp real4 ptr var_6C
00874D67: fstsw ax
00874D69: test al, 0Dh
00874D6B: jnz 00874E9Ah
00874D71: mov var_74, 00000004h
00874D78: lea eax, var_000000AC
00874D7E: push eax
00874D7F: mov eax, [ebp+08h]
00874D82: mov eax, [eax]
00874D84: push [ebp+08h]
00874D87: call [eax+00000088h]
00874D8D: fclex 
00874D8F: mov var_000000B4, eax
00874D95: cmp var_000000B4, 00000000h
00874D9C: jnl 874DBEh
00874D9E: push 00000088h
00874DA3: push 00444A54h
00874DA8: push [ebp+08h]
00874DAB: push var_000000B4
00874DB1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00874DB6: mov var_000000D0, eax
00874DBC: jmp 874DC5h
00874DBE: and var_000000D0, 00000000h
00874DC5: fld real4 ptr var_000000AC
00874DCB: fsub real4 ptr [00402BA4h]
00874DD1: fstp real4 ptr var_0000008C
00874DD7: fstsw ax
00874DD9: test al, 0Dh
00874DDB: jnz 00874E9Ah
00874DE1: mov var_00000094, 00000004h
00874DEB: push 00000010h
00874DED: pop eax
00874DEE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874DF3: lea esi, var_34
00874DF6: mov edi, esp
00874DF8: movsd 
00874DF9: movsd 
00874DFA: movsd 
00874DFB: movsd 
00874DFC: push 00000010h
00874DFE: pop eax
00874DFF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874E04: lea esi, var_54
00874E07: mov edi, esp
00874E09: movsd 
00874E0A: movsd 
00874E0B: movsd 
00874E0C: movsd 
00874E0D: push 00000010h
00874E0F: pop eax
00874E10: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874E15: lea esi, var_74
00874E18: mov edi, esp
00874E1A: movsd 
00874E1B: movsd 
00874E1C: movsd 
00874E1D: movsd 
00874E1E: push 00000010h
00874E20: pop eax
00874E21: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874E26: lea esi, var_00000094
00874E2C: mov edi, esp
00874E2E: movsd 
00874E2F: movsd 
00874E30: movsd 
00874E31: movsd 
00874E32: push 00000004h
00874E34: push 80011002h
00874E39: mov eax, [ebp+08h]
00874E3C: mov eax, [eax]
00874E3E: push [ebp+08h]
00874E41: call [eax+00000304h]
00874E47: push eax
00874E48: lea eax, var_24
00874E4B: push eax
00874E4C: call 00410A84h ; Set (object)
00874E51: push eax
00874E52: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00874E57: add esp, 0000004Ch
00874E5A: lea ecx, var_24
00874E5D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00874E62: mov var_10, 00000000h
00874E69: wait 
00874E6A: push 00874E7Bh
00874E6F: jmp 874E7Ah
00874E71: lea ecx, var_24
00874E74: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00874E79: ret 
End Sub

Private sub lstReport__874F16
00874F16: push ebp
00874F17: mov ebp, esp
00874F19: sub esp, 0000000Ch
00874F1C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00874F21: mov eax, fs:[00h]
00874F27: push eax
00874F28: mov fs:[00000000h], esp
00874F2F: push 00000054h
00874F31: pop eax
00874F32: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874F37: push ebx
00874F38: push esi
00874F39: push edi
00874F3A: mov var_0C, esp
00874F3D: mov var_08, 0040D468h
00874F44: mov eax, [ebp+08h]
00874F47: and eax, 00000001h
00874F4A: mov var_04, eax
00874F4D: mov eax, [ebp+08h]
00874F50: and al, FEh
00874F52: mov [ebp+08h], eax
00874F55: mov eax, [ebp+08h]
00874F58: mov eax, [eax]
00874F5A: push [ebp+08h]
00874F5D: call [eax+04h]
00874F60: mov eax, [ebp+0Ch]
00874F63: cmp word ptr [eax], 0002h
00874F67: jnz 00875041h
00874F6D: mov var_50, 80020004h
00874F74: mov var_58, 0000000Ah
00874F7B: mov var_40, 80020004h
00874F82: mov var_48, 0000000Ah
00874F89: mov var_30, 80020004h
00874F90: mov var_38, 0000000Ah
00874F97: mov var_20, 80020004h
00874F9E: mov var_28, 0000000Ah
00874FA5: push 00000010h
00874FA7: pop eax
00874FA8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874FAD: lea esi, var_58
00874FB0: mov edi, esp
00874FB2: movsd 
00874FB3: movsd 
00874FB4: movsd 
00874FB5: movsd 
00874FB6: push 00000010h
00874FB8: pop eax
00874FB9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874FBE: lea esi, var_48
00874FC1: mov edi, esp
00874FC3: movsd 
00874FC4: movsd 
00874FC5: movsd 
00874FC6: movsd 
00874FC7: push 00000010h
00874FC9: pop eax
00874FCA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874FCF: lea esi, var_38
00874FD2: mov edi, esp
00874FD4: movsd 
00874FD5: movsd 
00874FD6: movsd 
00874FD7: movsd 
00874FD8: push 00000010h
00874FDA: pop eax
00874FDB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874FE0: lea esi, var_28
00874FE3: mov edi, esp
00874FE5: movsd 
00874FE6: movsd 
00874FE7: movsd 
00874FE8: movsd 
00874FE9: mov eax, [ebp+08h]
00874FEC: mov eax, [eax]
00874FEE: push [ebp+08h]
00874FF1: call [eax+000002FCh]
00874FF7: push eax
00874FF8: lea eax, var_18
00874FFB: push eax
00874FFC: call 00410A84h ; Set (object)
00875001: push eax
00875002: mov eax, [ebp+08h]
00875005: mov eax, [eax]
00875007: push [ebp+08h]
0087500A: call [eax+000002BCh]
00875010: fclex 
00875012: mov var_5C, eax
00875015: cmp var_5C, 00000000h
00875019: jnl 875035h
0087501B: push 000002BCh
00875020: push 00444A54h
00875025: push [ebp+08h]
00875028: push var_5C
0087502B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00875030: mov var_68, eax
00875033: jmp 875039h
00875035: and var_68, 00000000h
00875039: lea ecx, var_18
0087503C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00875041: mov var_04, 00000000h
00875048: push 00875059h
0087504D: jmp 875058h
0087504F: lea ecx, var_18
00875052: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00875057: ret 
End Sub

Private sub lstReport__874E9F
00874E9F: push ebp
00874EA0: mov ebp, esp
00874EA2: sub esp, 0000000Ch
00874EA5: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00874EAA: mov eax, fs:[00h]
00874EB0: push eax
00874EB1: mov fs:[00000000h], esp
00874EB8: push 00000008h
00874EBA: pop eax
00874EBB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00874EC0: push ebx
00874EC1: push esi
00874EC2: push edi
00874EC3: mov var_0C, esp
00874EC6: mov var_08, 0040D460h
00874ECD: mov eax, [ebp+08h]
00874ED0: and eax, 00000001h
00874ED3: mov var_04, eax
00874ED6: mov eax, [ebp+08h]
00874ED9: and al, FEh
00874EDB: mov [ebp+08h], eax
00874EDE: mov eax, [ebp+08h]
00874EE1: mov eax, [eax]
00874EE3: push [ebp+08h]
00874EE6: call [eax+04h]
00874EE9: mov eax, [ebp+0Ch]
00874EEC: or word ptr [eax], FFFFh
00874EF0: mov var_04, 00000000h
00874EF7: mov eax, [ebp+08h]
00874EFA: mov eax, [eax]
00874EFC: push [ebp+08h]
00874EFF: call [eax+08h]
00874F02: mov eax, var_04
00874F05: mov ecx, var_14
00874F08: mov fs:[00000000h], ecx
00874F0F: pop edi
00874F10: pop esi
00874F11: pop ebx
00874F12: leave 
00874F13: retn 0008h
End Sub

