VERSION 5.00
Begin VB.Form frmCharts
  Caption = "Chart statistics"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmCharts.frx":0
  LinkTopic = "Form1"
  ClientLeft = 225
  ClientTop = 555
  ClientWidth = 13155
  ClientHeight = 6555
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer tmrRefresh
    Enabled = 0   'False
    Interval = 5000
    Left = 12480
    Top = 0
  End
  Begin XtremeSuiteControls.TabControl tbCharts
    Left = 0
    Top = 0
    Width = 13095
    Height = 6495
    TabIndex = 0
    Begin bss_client.usrChart crtChart
      Index = 0
      Left = 120
      Top = 120
      Width = 12855
      Height = 6015
      TabIndex = 1
    End
    Begin bss_client.usrChart crtChart
      Index = 1
      Left = 32768
      Top = 61192
      Width = 65534
      Height = 120
    End
  End
  Begin VB.Menu mnuChartMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuChart
      Index = 0
      Caption = "Refresh"
    End
  End
End

Attribute VB_Name = "frmCharts"


Private sub mnuChart__84971A
0084971A: push ebp
0084971B: mov ebp, esp
0084971D: sub esp, 0000000Ch
00849720: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00849725: mov eax, fs:[00h]
0084972B: push eax
0084972C: mov fs:[00000000h], esp
00849733: push 00000010h
00849735: pop eax
00849736: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084973B: push ebx
0084973C: push esi
0084973D: push edi
0084973E: mov var_0C, esp
00849741: mov var_08, 0040C3E8h
00849748: mov eax, [ebp+08h]
0084974B: and eax, 00000001h
0084974E: mov var_04, eax
00849751: mov eax, [ebp+08h]
00849754: and al, FEh
00849756: mov [ebp+08h], eax
00849759: mov eax, [ebp+08h]
0084975C: mov eax, [eax]
0084975E: push [ebp+08h]
00849761: call [eax+04h]
00849764: mov eax, [ebp+0Ch]
00849767: mov ax, [eax]
0084976A: mov var_18, ax
0084976E: movsx eax, word ptr var_18
00849772: mov var_24, eax
00849775: cmp var_24, 00000000h
00849779: jz 84977Dh
0084977B: jmp 84978Bh
0084977D: mov eax, [ebp+08h]
00849780: mov eax, [eax]
00849782: push [ebp+08h]
00849785: call [eax+00000714h]
0084978B: mov var_04, 00000000h
00849792: mov eax, [ebp+08h]
00849795: mov eax, [eax]
00849797: push [ebp+08h]
0084979A: call [eax+08h]
0084979D: mov eax, var_04
008497A0: mov ecx, var_14
008497A3: mov fs:[00000000h], ecx
008497AA: pop edi
008497AB: pop esi
008497AC: pop ebx
008497AD: leave 
008497AE: retn 0008h
End Sub

Private sub tmrRefresh__849870
00849870: push ebp
00849871: mov ebp, esp
00849873: sub esp, 0000000Ch
00849876: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084987B: mov eax, fs:[00h]
00849881: push eax
00849882: mov fs:[00000000h], esp
00849889: push 00000008h
0084988B: pop eax
0084988C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00849891: push ebx
00849892: push esi
00849893: push edi
00849894: mov var_0C, esp
00849897: mov var_08, 0040C400h
0084989E: mov eax, [ebp+08h]
008498A1: and eax, 00000001h
008498A4: mov var_04, eax
008498A7: mov eax, [ebp+08h]
008498AA: and al, FEh
008498AC: mov [ebp+08h], eax
008498AF: mov eax, [ebp+08h]
008498B2: mov eax, [eax]
008498B4: push [ebp+08h]
008498B7: call [eax+04h]
008498BA: mov eax, [ebp+08h]
008498BD: mov eax, [eax]
008498BF: push [ebp+08h]
008498C2: call [eax+00000714h]
008498C8: mov var_04, 00000000h
008498CF: mov eax, [ebp+08h]
008498D2: mov eax, [eax]
008498D4: push [ebp+08h]
008498D7: call [eax+08h]
008498DA: mov eax, var_04
008498DD: mov ecx, var_14
008498E0: mov fs:[00000000h], ecx
008498E7: pop edi
008498E8: pop esi
008498E9: pop ebx
008498EA: leave 
008498EB: retn 0004h
End Sub

Private sub crtChart__848DED
00848DED: push ebp
00848DEE: mov ebp, esp
00848DF0: sub esp, 0000000Ch
00848DF3: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00848DF8: mov eax, fs:[00h]
00848DFE: push eax
00848DFF: mov fs:[00000000h], esp
00848E06: push 00000054h
00848E08: pop eax
00848E09: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00848E0E: push ebx
00848E0F: push esi
00848E10: push edi
00848E11: mov var_0C, esp
00848E14: mov var_08, 0040C380h
00848E1B: mov eax, [ebp+08h]
00848E1E: and eax, 00000001h
00848E21: mov var_04, eax
00848E24: mov eax, [ebp+08h]
00848E27: and al, FEh
00848E29: mov [ebp+08h], eax
00848E2C: mov eax, [ebp+08h]
00848E2F: mov eax, [eax]
00848E31: push [ebp+08h]
00848E34: call [eax+04h]
00848E37: mov eax, [ebp+10h]
00848E3A: cmp word ptr [eax], 0002h
00848E3E: jnz 00848F18h
00848E44: mov var_50, 80020004h
00848E4B: mov var_58, 0000000Ah
00848E52: mov var_40, 80020004h
00848E59: mov var_48, 0000000Ah
00848E60: mov var_30, 80020004h
00848E67: mov var_38, 0000000Ah
00848E6E: mov var_20, 80020004h
00848E75: mov var_28, 0000000Ah
00848E7C: push 00000010h
00848E7E: pop eax
00848E7F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00848E84: lea esi, var_58
00848E87: mov edi, esp
00848E89: movsd 
00848E8A: movsd 
00848E8B: movsd 
00848E8C: movsd 
00848E8D: push 00000010h
00848E8F: pop eax
00848E90: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00848E95: lea esi, var_48
00848E98: mov edi, esp
00848E9A: movsd 
00848E9B: movsd 
00848E9C: movsd 
00848E9D: movsd 
00848E9E: push 00000010h
00848EA0: pop eax
00848EA1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00848EA6: lea esi, var_38
00848EA9: mov edi, esp
00848EAB: movsd 
00848EAC: movsd 
00848EAD: movsd 
00848EAE: movsd 
00848EAF: push 00000010h
00848EB1: pop eax
00848EB2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00848EB7: lea esi, var_28
00848EBA: mov edi, esp
00848EBC: movsd 
00848EBD: movsd 
00848EBE: movsd 
00848EBF: movsd 
00848EC0: mov eax, [ebp+08h]
00848EC3: mov eax, [eax]
00848EC5: push [ebp+08h]
00848EC8: call [eax+00000304h]
00848ECE: push eax
00848ECF: lea eax, var_18
00848ED2: push eax
00848ED3: call 00410A84h ; Set (object)
00848ED8: push eax
00848ED9: mov eax, [ebp+08h]
00848EDC: mov eax, [eax]
00848EDE: push [ebp+08h]
00848EE1: call [eax+000002BCh]
00848EE7: fclex 
00848EE9: mov var_5C, eax
00848EEC: cmp var_5C, 00000000h
00848EF0: jnl 848F0Ch
00848EF2: push 000002BCh
00848EF7: push 00443E6Ch
00848EFC: push [ebp+08h]
00848EFF: push var_5C
00848F02: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00848F07: mov var_68, eax
00848F0A: jmp 848F10h
00848F0C: and var_68, 00000000h
00848F10: lea ecx, var_18
00848F13: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00848F18: mov var_04, 00000000h
00848F1F: push 00848F30h
00848F24: jmp 848F2Fh
00848F26: lea ecx, var_18
00848F29: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00848F2E: ret 
End Sub

Private sub tbCharts__8497B1
008497B1: push ebp
008497B2: mov ebp, esp
008497B4: sub esp, 0000000Ch
008497B7: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008497BC: mov eax, fs:[00h]
008497C2: push eax
008497C3: mov fs:[00000000h], esp
008497CA: push 00000014h
008497CC: pop eax
008497CD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008497D2: push ebx
008497D3: push esi
008497D4: push edi
008497D5: mov var_0C, esp
008497D8: mov var_08, 0040C3F0h
008497DF: mov eax, [ebp+08h]
008497E2: and eax, 00000001h
008497E5: mov var_04, eax
008497E8: mov eax, [ebp+08h]
008497EB: and al, FEh
008497ED: mov [ebp+08h], eax
008497F0: mov eax, [ebp+08h]
008497F3: mov eax, [eax]
008497F5: push [ebp+08h]
008497F8: call [eax+04h]
008497FB: push [ebp+0Ch]
008497FE: lea eax, var_18
00849801: push eax
00849802: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
00849807: mov eax, [ebp+08h]
0084980A: mov eax, [eax]
0084980C: push [ebp+08h]
0084980F: call [eax+00000700h]
00849815: mov var_1C, eax
00849818: cmp var_1C, 00000000h
0084981C: jnl 849838h
0084981E: push 00000700h
00849823: push 00443E9Ch
00849828: push [ebp+08h]
0084982B: push var_1C
0084982E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00849833: mov var_28, eax
00849836: jmp 84983Ch
00849838: and var_28, 00000000h
0084983C: mov var_04, 00000000h
00849843: push 00849851h
00849848: lea ecx, var_18
0084984B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00849850: ret 
End Sub

Private sub Form__848F4F
00848F4F: push ebp
00848F50: mov ebp, esp
00848F52: sub esp, 0000000Ch
00848F55: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00848F5A: mov eax, fs:[00h]
00848F60: push eax
00848F61: mov fs:[00000000h], esp
00848F68: push 00000060h
00848F6A: pop eax
00848F6B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00848F70: push ebx
00848F71: push esi
00848F72: push edi
00848F73: mov var_0C, esp
00848F76: mov var_08, 0040C390h
00848F7D: mov eax, [ebp+08h]
00848F80: and eax, 00000001h
00848F83: mov var_04, eax
00848F86: mov eax, [ebp+08h]
00848F89: and al, FEh
00848F8B: mov [ebp+08h], eax
00848F8E: mov eax, [ebp+08h]
00848F91: mov eax, [eax]
00848F93: push [ebp+08h]
00848F96: call [eax+04h]
00848F99: mov var_54, 00455088h ; Countries
00848FA0: mov var_5C, 00000008h
00848FA7: and var_34, 00000000h
00848FAB: mov var_3C, 00000003h
00848FB2: push 00000010h
00848FB4: pop eax
00848FB5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00848FBA: lea esi, var_5C
00848FBD: mov edi, esp
00848FBF: movsd 
00848FC0: movsd 
00848FC1: movsd 
00848FC2: movsd 
00848FC3: push 00000001h
00848FC5: push 004469F4h
00848FCA: push 00000010h
00848FCC: pop eax
00848FCD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00848FD2: lea esi, var_3C
00848FD5: mov edi, esp
00848FD7: movsd 
00848FD8: movsd 
00848FD9: movsd 
00848FDA: movsd 
00848FDB: push 00000001h
00848FDD: push 00000000h
00848FDF: mov eax, [ebp+08h]
00848FE2: mov eax, [eax]
00848FE4: push [ebp+08h]
00848FE7: call [eax+0000030Ch]
00848FED: push eax
00848FEE: lea eax, var_18
00848FF1: push eax
00848FF2: call 00410A84h ; Set (object)
00848FF7: push eax
00848FF8: lea eax, var_2C
00848FFB: push eax
00848FFC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00849001: add esp, 00000020h
00849004: push eax
00849005: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084900A: push eax
0084900B: lea eax, var_1C
0084900E: push eax
0084900F: call 00410A84h ; Set (object)
00849014: push eax
00849015: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0084901A: lea eax, var_1C
0084901D: push eax
0084901E: lea eax, var_18
00849021: push eax
00849022: push 00000002h
00849024: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00849029: add esp, 0000000Ch
0084902C: lea ecx, var_2C
0084902F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00849034: mov var_54, 004465CCh ; OS
0084903B: mov var_5C, 00000008h
00849042: mov var_34, 00000001h
00849049: mov var_3C, 00000003h
00849050: push 00000010h
00849052: pop eax
00849053: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00849058: lea esi, var_5C
0084905B: mov edi, esp
0084905D: movsd 
0084905E: movsd 
0084905F: movsd 
00849060: movsd 
00849061: push 00000001h
00849063: push 004469F4h
00849068: push 00000010h
0084906A: pop eax
0084906B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00849070: lea esi, var_3C
00849073: mov edi, esp
00849075: movsd 
00849076: movsd 
00849077: movsd 
00849078: movsd 
00849079: push 00000001h
0084907B: push 00000000h
0084907D: mov eax, [ebp+08h]
00849080: mov eax, [eax]
00849082: push [ebp+08h]
00849085: call [eax+0000030Ch]
0084908B: push eax
0084908C: lea eax, var_18
0084908F: push eax
00849090: call 00410A84h ; Set (object)
00849095: push eax
00849096: lea eax, var_2C
00849099: push eax
0084909A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084909F: add esp, 00000020h
008490A2: push eax
008490A3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008490A8: push eax
008490A9: lea eax, var_1C
008490AC: push eax
008490AD: call 00410A84h ; Set (object)
008490B2: push eax
008490B3: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008490B8: lea eax, var_1C
008490BB: push eax
008490BC: lea eax, var_18
008490BF: push eax
008490C0: push 00000002h
008490C2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008490C7: add esp, 0000000Ch
008490CA: lea ecx, var_2C
008490CD: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008490D2: mov var_04, 00000000h
008490D9: push 008490FCh
008490DE: jmp 8490FBh
008490E0: lea eax, var_1C
008490E3: push eax
008490E4: lea eax, var_18
008490E7: push eax
008490E8: push 00000002h
008490EA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008490EF: add esp, 0000000Ch
008490F2: lea ecx, var_2C
008490F5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008490FA: ret 
End Sub

Private sub Form__84911B
0084911B: push ebp
0084911C: mov ebp, esp
0084911E: sub esp, 00000018h
00849121: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00849126: mov eax, fs:[00h]
0084912C: push eax
0084912D: mov fs:[00000000h], esp
00849134: mov eax, 0000011Ch
00849139: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084913E: push ebx
0084913F: push esi
00849140: push edi
00849141: mov var_18, esp
00849144: mov var_14, 0040C3A0h
0084914B: mov eax, [ebp+08h]
0084914E: and eax, 00000001h
00849151: mov var_10, eax
00849154: mov eax, [ebp+08h]
00849157: and al, FEh
00849159: mov [ebp+08h], eax
0084915C: mov var_0C, 00000000h
00849163: mov eax, [ebp+08h]
00849166: mov eax, [eax]
00849168: push [ebp+08h]
0084916B: call [eax+04h]
0084916E: mov var_04, 00000001h
00849175: mov var_04, 00000002h
0084917C: push FFFFFFFFh
0084917E: call 00410A60h ; On Error ...
00849183: mov var_04, 00000003h
0084918A: fldz 
0084918C: fstp real4 ptr var_68
0084918F: mov var_70, 00000004h
00849196: and var_00000088, 00000000h
0084919D: mov var_00000090, 00000002h
008491A7: lea eax, var_000000E8
008491AD: push eax
008491AE: mov eax, [ebp+08h]
008491B1: mov eax, [eax]
008491B3: push [ebp+08h]
008491B6: call [eax+00000080h]
008491BC: fclex 
008491BE: mov var_000000F0, eax
008491C4: cmp var_000000F0, 00000000h
008491CB: jnl 8491EDh
008491CD: push 00000080h
008491D2: push 00443E6Ch
008491D7: push [ebp+08h]
008491DA: push var_000000F0
008491E0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008491E5: mov var_00000130, eax
008491EB: jmp 8491F4h
008491ED: and var_00000130, 00000000h
008491F4: fld real4 ptr var_000000E8
008491FA: fsub real4 ptr [00402BA4h]
00849200: fstp real4 ptr var_000000A8
00849206: fstsw ax
00849208: test al, 0Dh
0084920A: jnz 00849665h
00849210: mov var_000000B0, 00000004h
0084921A: lea eax, var_000000EC
00849220: push eax
00849221: mov eax, [ebp+08h]
00849224: mov eax, [eax]
00849226: push [ebp+08h]
00849229: call [eax+00000088h]
0084922F: fclex 
00849231: mov var_000000F4, eax
00849237: cmp var_000000F4, 00000000h
0084923E: jnl 849260h
00849240: push 00000088h
00849245: push 00443E6Ch
0084924A: push [ebp+08h]
0084924D: push var_000000F4
00849253: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00849258: mov var_00000134, eax
0084925E: jmp 849267h
00849260: and var_00000134, 00000000h
00849267: fld real4 ptr var_000000EC
0084926D: fsub real4 ptr [00402B98h]
00849273: fstp real4 ptr var_000000C8
00849279: fstsw ax
0084927B: test al, 0Dh
0084927D: jnz 00849665h
00849283: mov var_000000D0, 00000004h
0084928D: push 00000010h
0084928F: pop eax
00849290: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00849295: lea esi, var_70
00849298: mov edi, esp
0084929A: movsd 
0084929B: movsd 
0084929C: movsd 
0084929D: movsd 
0084929E: push 00000010h
008492A0: pop eax
008492A1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008492A6: lea esi, var_00000090
008492AC: mov edi, esp
008492AE: movsd 
008492AF: movsd 
008492B0: movsd 
008492B1: movsd 
008492B2: push 00000010h
008492B4: pop eax
008492B5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008492BA: lea esi, var_000000B0
008492C0: mov edi, esp
008492C2: movsd 
008492C3: movsd 
008492C4: movsd 
008492C5: movsd 
008492C6: push 00000010h
008492C8: pop eax
008492C9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008492CE: lea esi, var_000000D0
008492D4: mov edi, esp
008492D6: movsd 
008492D7: movsd 
008492D8: movsd 
008492D9: movsd 
008492DA: push 00000004h
008492DC: push 80011002h
008492E1: mov eax, [ebp+08h]
008492E4: mov eax, [eax]
008492E6: push [ebp+08h]
008492E9: call [eax+0000030Ch]
008492EF: push eax
008492F0: lea eax, var_34
008492F3: push eax
008492F4: call 00410A84h ; Set (object)
008492F9: push eax
008492FA: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008492FF: add esp, 0000004Ch
00849302: lea ecx, var_34
00849305: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084930A: mov var_04, 00000004h
00849311: mov var_68, 00000001h
00849318: mov var_70, 00000002h
0084931F: mov eax, [ebp+08h]
00849322: mov eax, [eax]
00849324: push [ebp+08h]
00849327: call [eax+00000300h]
0084932D: push eax
0084932E: lea eax, var_34
00849331: push eax
00849332: call 00410A84h ; Set (object)
00849337: mov var_000000F0, eax
0084933D: lea eax, var_000000E4
00849343: push eax
00849344: mov eax, var_000000F0
0084934A: mov eax, [eax]
0084934C: push var_000000F0
00849352: call [eax+48h]
00849355: fclex 
00849357: mov var_000000F4, eax
0084935D: cmp var_000000F4, 00000000h
00849364: jnl 849386h
00849366: push 00000048h
00849368: push 00440DE8h
0084936D: push var_000000F0
00849373: push var_000000F4
00849379: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084937E: mov var_00000138, eax
00849384: jmp 84938Dh
00849386: and var_00000138, 00000000h
0084938D: mov ax, var_000000E4
00849394: mov var_78, ax
00849398: mov var_80, 00000002h
0084939F: and var_00000088, 00000000h
008493A6: mov var_00000090, 00000002h
008493B0: lea eax, var_70
008493B3: push eax
008493B4: lea eax, var_80
008493B7: push eax
008493B8: lea eax, var_00000090
008493BE: push eax
008493BF: lea eax, var_00000114
008493C5: push eax
008493C6: lea eax, var_00000104
008493CC: push eax
008493CD: lea eax, var_30
008493D0: push eax
008493D1: call 00410A3Ch ; For
008493D6: mov var_0000012C, eax
008493DC: lea ecx, var_34
008493DF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008493E4: jmp 008495DCh
008493E9: mov var_04, 00000005h
008493F0: fld real4 ptr [00402BA4h]
008493F6: fstp real4 ptr var_68
008493F9: mov var_70, 00000004h
00849400: mov var_00000088, 00000078h
0084940A: mov var_00000090, 00000002h
00849414: push 00000000h
00849416: push 80010005h
0084941B: mov eax, [ebp+08h]
0084941E: mov eax, [eax]
00849420: push [ebp+08h]
00849423: call [eax+0000030Ch]
00849429: push eax
0084942A: lea eax, var_34
0084942D: push eax
0084942E: call 00410A84h ; Set (object)
00849433: push eax
00849434: lea eax, var_50
00849437: push eax
00849438: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084943D: add esp, 00000010h
00849440: push eax
00849441: call 004107EAh ; msvbvm60.dll.__vbaR4Var
00849446: fsub real4 ptr [00402BB0h]
0084944C: fstp real4 ptr var_000000A8
00849452: fstsw ax
00849454: test al, 0Dh
00849456: jnz 00849665h
0084945C: mov var_000000B0, 00000004h
00849466: push 00000000h
00849468: push 80010006h
0084946D: mov eax, [ebp+08h]
00849470: mov eax, [eax]
00849472: push [ebp+08h]
00849475: call [eax+0000030Ch]
0084947B: push eax
0084947C: lea eax, var_38
0084947F: push eax
00849480: call 00410A84h ; Set (object)
00849485: push eax
00849486: lea eax, var_60
00849489: push eax
0084948A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084948F: add esp, 00000010h
00849492: push eax
00849493: call 004107EAh ; msvbvm60.dll.__vbaR4Var
00849498: fsub real4 ptr [00402B54h]
0084949E: fstp real4 ptr var_000000C8
008494A4: fstsw ax
008494A6: test al, 0Dh
008494A8: jnz 00849665h
008494AE: mov var_000000D0, 00000004h
008494B8: mov eax, [ebp+08h]
008494BB: mov eax, [eax]
008494BD: push [ebp+08h]
008494C0: call [eax+00000300h]
008494C6: push eax
008494C7: lea eax, var_3C
008494CA: push eax
008494CB: call 00410A84h ; Set (object)
008494D0: mov var_000000F0, eax
008494D6: lea eax, var_40
008494D9: push eax
008494DA: lea eax, var_30
008494DD: push eax
008494DE: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008494E3: push eax
008494E4: mov eax, var_000000F0
008494EA: mov eax, [eax]
008494EC: push var_000000F0
008494F2: call [eax+40h]
008494F5: fclex 
008494F7: mov var_000000F4, eax
008494FD: cmp var_000000F4, 00000000h
00849504: jnl 849526h
00849506: push 00000040h
00849508: push 00440DE8h
0084950D: push var_000000F0
00849513: push var_000000F4
00849519: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084951E: mov var_0000013C, eax
00849524: jmp 84952Dh
00849526: and var_0000013C, 00000000h
0084952D: push 00000010h
0084952F: pop eax
00849530: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00849535: lea esi, var_70
00849538: mov edi, esp
0084953A: movsd 
0084953B: movsd 
0084953C: movsd 
0084953D: movsd 
0084953E: push 00000010h
00849540: pop eax
00849541: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00849546: lea esi, var_00000090
0084954C: mov edi, esp
0084954E: movsd 
0084954F: movsd 
00849550: movsd 
00849551: movsd 
00849552: push 00000010h
00849554: pop eax
00849555: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084955A: lea esi, var_000000B0
00849560: mov edi, esp
00849562: movsd 
00849563: movsd 
00849564: movsd 
00849565: movsd 
00849566: push 00000010h
00849568: pop eax
00849569: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084956E: lea esi, var_000000D0
00849574: mov edi, esp
00849576: movsd 
00849577: movsd 
00849578: movsd 
00849579: movsd 
0084957A: push 00000004h
0084957C: push 80011002h
00849581: push var_40
00849584: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00849589: add esp, 0000004Ch
0084958C: lea eax, var_40
0084958F: push eax
00849590: lea eax, var_3C
00849593: push eax
00849594: lea eax, var_38
00849597: push eax
00849598: lea eax, var_34
0084959B: push eax
0084959C: push 00000004h
0084959E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008495A3: add esp, 00000014h
008495A6: lea eax, var_60
008495A9: push eax
008495AA: lea eax, var_50
008495AD: push eax
008495AE: push 00000002h
008495B0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008495B5: add esp, 0000000Ch
008495B8: mov var_04, 00000006h
008495BF: lea eax, var_00000114
008495C5: push eax
008495C6: lea eax, var_00000104
008495CC: push eax
008495CD: lea eax, var_30
008495D0: push eax
008495D1: call 00410A36h ; Next
008495D6: mov var_0000012C, eax
008495DC: cmp var_0000012C, 00000000h
008495E3: jnz 008493E9h
008495E9: mov var_10, 00000000h
008495F0: wait 
008495F1: push 00849646h
008495F6: jmp 849625h
008495F8: lea eax, var_40
008495FB: push eax
008495FC: lea eax, var_3C
008495FF: push eax
00849600: lea eax, var_38
00849603: push eax
00849604: lea eax, var_34
00849607: push eax
00849608: push 00000004h
0084960A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084960F: add esp, 00000014h
00849612: lea eax, var_60
00849615: push eax
00849616: lea eax, var_50
00849619: push eax
0084961A: push 00000002h
0084961C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00849621: add esp, 0000000Ch
00849624: ret 
End Sub

Private sub Form__84966A
0084966A: push ebp
0084966B: mov ebp, esp
0084966D: sub esp, 0000000Ch
00849670: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00849675: mov eax, fs:[00h]
0084967B: push eax
0084967C: mov fs:[00000000h], esp
00849683: push 00000010h
00849685: pop eax
00849686: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084968B: push ebx
0084968C: push esi
0084968D: push edi
0084968E: mov var_0C, esp
00849691: mov var_08, 0040C3E0h
00849698: mov eax, [ebp+08h]
0084969B: and eax, 00000001h
0084969E: mov var_04, eax
008496A1: mov eax, [ebp+08h]
008496A4: and al, FEh
008496A6: mov [ebp+08h], eax
008496A9: mov eax, [ebp+08h]
008496AC: mov eax, [eax]
008496AE: push [ebp+08h]
008496B1: call [eax+04h]
008496B4: push 00000000h
008496B6: mov eax, [ebp+08h]
008496B9: mov eax, [eax]
008496BB: push [ebp+08h]
008496BE: call [eax+000001BCh]
008496C4: fclex 
008496C6: mov var_18, eax
008496C9: cmp var_18, 00000000h
008496CD: jnl 8496E9h
008496CF: push 000001BCh
008496D4: push 00443E6Ch
008496D9: push [ebp+08h]
008496DC: push var_18
008496DF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008496E4: mov var_24, eax
008496E7: jmp 8496EDh
008496E9: and var_24, 00000000h
008496ED: mov eax, [ebp+0Ch]
008496F0: or word ptr [eax], FFFFh
008496F4: mov var_04, 00000000h
008496FB: mov eax, [ebp+08h]
008496FE: mov eax, [eax]
00849700: push [ebp+08h]
00849703: call [eax+08h]
00849706: mov eax, var_04
00849709: mov ecx, var_14
0084970C: mov fs:[00000000h], ecx
00849713: pop edi
00849714: pop esi
00849715: pop ebx
00849716: leave 
00849717: retn 0008h
End Sub

Private sub unknown_8498EE
008498EE: push ebp
008498EF: mov ebp, esp
008498F1: push ecx
008498F2: push ecx
008498F3: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008498F8: mov eax, fs:[00h]
008498FE: push eax
008498FF: mov fs:[00000000h], esp
00849906: mov eax, 00000108h
0084990B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00849910: push ebx
00849911: push esi
00849912: push edi
00849913: mov var_08, esp
00849916: mov var_04, 0040C408h
0084991D: mov var_50, 00000001h
00849924: mov var_58, 00000002h
0084992B: cmp [008F2414h], 00000000h
00849932: jnz 84994Fh
00849934: push 008F2414h
00849939: push 00440E38h
0084993E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00849943: mov var_000000E4, 008F2414h
0084994D: jmp 849959h
0084994F: mov var_000000E4, 008F2414h
00849959: mov eax, var_000000E4
0084995F: mov eax, [eax]
00849961: mov var_80, eax
00849964: lea eax, var_7C
00849967: push eax
00849968: mov eax, var_80
0084996B: mov eax, [eax]
0084996D: push var_80
00849970: call [eax+24h]
00849973: fclex 
00849975: mov var_00000084, eax
0084997B: cmp var_00000084, 00000000h
00849982: jnl 8499A1h
00849984: push 00000024h
00849986: push 00440E28h
0084998B: push var_80
0084998E: push var_00000084
00849994: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00849999: mov var_000000E8, eax
0084999F: jmp 8499A8h
008499A1: and var_000000E8, 00000000h
008499A8: mov eax, var_7C
008499AB: mov var_60, eax
008499AE: mov var_68, 00000003h
008499B5: mov var_70, 00000001h
008499BC: mov var_78, 00000002h
008499C3: lea eax, var_58
008499C6: push eax
008499C7: lea eax, var_68
008499CA: push eax
008499CB: lea eax, var_78
008499CE: push eax
008499CF: lea eax, var_000000AC
008499D5: push eax
008499D6: lea eax, var_0000009C
008499DC: push eax
008499DD: lea eax, var_20
008499E0: push eax
008499E1: call 00410A3Ch ; For
008499E6: mov var_000000D4, eax
008499EC: jmp 00849C01h
008499F1: cmp [008F2414h], 00000000h
008499F8: jnz 849A15h
008499FA: push 008F2414h
008499FF: push 00440E38h
00849A04: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00849A09: mov var_000000EC, 008F2414h
00849A13: jmp 849A1Fh
00849A15: mov var_000000EC, 008F2414h
00849A1F: mov eax, var_000000EC
00849A25: mov eax, [eax]
00849A27: mov var_80, eax
00849A2A: lea eax, var_48
00849A2D: push eax
00849A2E: lea eax, var_20
00849A31: push eax
00849A32: mov eax, var_80
00849A35: mov eax, [eax]
00849A37: push var_80
00849A3A: call [eax+1Ch]
00849A3D: fclex 
00849A3F: mov var_00000084, eax
00849A45: cmp var_00000084, 00000000h
00849A4C: jnl 849A6Bh
00849A4E: push 0000001Ch
00849A50: push 00440E28h
00849A55: push var_80
00849A58: push var_00000084
00849A5E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00849A63: mov var_000000F0, eax
00849A69: jmp 849A72h
00849A6B: and var_000000F0, 00000000h
00849A72: mov eax, [ebp+08h]
00849A75: mov eax, [eax]
00849A77: push [ebp+08h]
00849A7A: call [eax+00000300h]
00849A80: push eax
00849A81: lea eax, var_28
00849A84: push eax
00849A85: call 00410A84h ; Set (object)
00849A8A: mov var_00000088, eax
00849A90: lea eax, var_2C
00849A93: push eax
00849A94: push 00000000h
00849A96: mov eax, var_00000088
00849A9C: mov eax, [eax]
00849A9E: push var_00000088
00849AA4: call [eax+40h]
00849AA7: fclex 
00849AA9: mov var_0000008C, eax
00849AAF: cmp var_0000008C, 00000000h
00849AB6: jnl 849AD8h
00849AB8: push 00000040h
00849ABA: push 00440DE8h
00849ABF: push var_00000088
00849AC5: push var_0000008C
00849ACB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00849AD0: mov var_000000F4, eax
00849AD6: jmp 849ADFh
00849AD8: and var_000000F4, 00000000h
00849ADF: cmp [008F2010h], 00000000h
00849AE6: jnz 849B03h
00849AE8: push 008F2010h
00849AED: push 00433984h
00849AF2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00849AF7: mov var_000000F8, 008F2010h
00849B01: jmp 849B0Dh
00849B03: mov var_000000F8, 008F2010h
00849B0D: mov eax, var_000000F8
00849B13: mov eax, [eax]
00849B15: mov ecx, var_000000F8
00849B1B: mov ecx, [ecx]
00849B1D: mov ecx, [ecx]
00849B1F: push eax
00849B20: call [ecx+00000550h]
00849B26: push eax
00849B27: lea eax, var_38
00849B2A: push eax
00849B2B: call 00410A84h ; Set (object)
00849B30: mov eax, var_38
00849B33: mov var_000000D8, eax
00849B39: and var_38, 00000000h
00849B3D: push var_000000D8
00849B43: lea eax, var_34
00849B46: push eax
00849B47: call 00410A84h ; Set (object)
00849B4C: cmp [008F2414h], 00000000h
00849B53: jnz 849B70h
00849B55: push 008F2414h
00849B5A: push 00440E38h
00849B5F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00849B64: mov var_000000FC, 008F2414h
00849B6E: jmp 849B7Ah
00849B70: mov var_000000FC, 008F2414h
00849B7A: push 0044BE64h
00849B7F: push var_2C
00849B82: call 00410A06h ; msvbvm60.dll.__vbaCastObj
00849B87: push eax
00849B88: lea eax, var_30
00849B8B: push eax
00849B8C: call 00410A84h ; Set (object)
00849B91: push FFFFFFFFh
00849B93: push 0000000Eh
00849B95: lea eax, var_34
00849B98: push eax
00849B99: push var_000000FC
00849B9F: lea eax, var_30
00849BA2: push eax
00849BA3: lea eax, var_48
00849BA6: push eax
00849BA7: lea eax, var_24
00849BAA: push eax
00849BAB: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
00849BB0: push eax
00849BB1: call 007BE911h
00849BB6: lea ecx, var_24
00849BB9: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00849BBE: lea eax, var_38
00849BC1: push eax
00849BC2: lea eax, var_34
00849BC5: push eax
00849BC6: lea eax, var_30
00849BC9: push eax
00849BCA: lea eax, var_2C
00849BCD: push eax
00849BCE: lea eax, var_28
00849BD1: push eax
00849BD2: push 00000005h
00849BD4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00849BD9: add esp, 00000018h
00849BDC: lea ecx, var_48
00849BDF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00849BE4: lea eax, var_000000AC
00849BEA: push eax
00849BEB: lea eax, var_0000009C
00849BF1: push eax
00849BF2: lea eax, var_20
00849BF5: push eax
00849BF6: call 00410A36h ; Next
00849BFB: mov var_000000D4, eax
00849C01: cmp var_000000D4, 00000000h
00849C08: jnz 008499F1h
00849C0E: mov var_50, 00000001h
00849C15: mov var_58, 00000002h
00849C1C: cmp [008F2418h], 00000000h
00849C23: jnz 849C40h
00849C25: push 008F2418h
00849C2A: push 00440E38h
00849C2F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00849C34: mov var_00000100, 008F2418h
00849C3E: jmp 849C4Ah
00849C40: mov var_00000100, 008F2418h
00849C4A: mov eax, var_00000100
00849C50: mov eax, [eax]
00849C52: mov var_80, eax
00849C55: lea eax, var_7C
00849C58: push eax
00849C59: mov eax, var_80
00849C5C: mov eax, [eax]
00849C5E: push var_80
00849C61: call [eax+24h]
00849C64: fclex 
00849C66: mov var_00000084, eax
00849C6C: cmp var_00000084, 00000000h
00849C73: jnl 849C92h
00849C75: push 00000024h
00849C77: push 00440E28h
00849C7C: push var_80
00849C7F: push var_00000084
00849C85: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00849C8A: mov var_00000104, eax
00849C90: jmp 849C99h
00849C92: and var_00000104, 00000000h
00849C99: mov eax, var_7C
00849C9C: mov var_60, eax
00849C9F: mov var_68, 00000003h
00849CA6: mov var_70, 00000001h
00849CAD: mov var_78, 00000002h
00849CB4: lea eax, var_58
00849CB7: push eax
00849CB8: lea eax, var_68
00849CBB: push eax
00849CBC: lea eax, var_78
00849CBF: push eax
00849CC0: lea eax, var_000000CC
00849CC6: push eax
00849CC7: lea eax, var_000000BC
00849CCD: push eax
00849CCE: lea eax, var_20
00849CD1: push eax
00849CD2: call 00410A3Ch ; For
00849CD7: mov var_000000DC, eax
00849CDD: jmp 00849EF2h
00849CE2: cmp [008F2418h], 00000000h
00849CE9: jnz 849D06h
00849CEB: push 008F2418h
00849CF0: push 00440E38h
00849CF5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00849CFA: mov var_00000108, 008F2418h
00849D04: jmp 849D10h
00849D06: mov var_00000108, 008F2418h
00849D10: mov eax, var_00000108
00849D16: mov eax, [eax]
00849D18: mov var_80, eax
00849D1B: lea eax, var_48
00849D1E: push eax
00849D1F: lea eax, var_20
00849D22: push eax
00849D23: mov eax, var_80
00849D26: mov eax, [eax]
00849D28: push var_80
00849D2B: call [eax+1Ch]
00849D2E: fclex 
00849D30: mov var_00000084, eax
00849D36: cmp var_00000084, 00000000h
00849D3D: jnl 849D5Ch
00849D3F: push 0000001Ch
00849D41: push 00440E28h
00849D46: push var_80
00849D49: push var_00000084
00849D4F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00849D54: mov var_0000010C, eax
00849D5A: jmp 849D63h
00849D5C: and var_0000010C, 00000000h
00849D63: mov eax, [ebp+08h]
00849D66: mov eax, [eax]
00849D68: push [ebp+08h]
00849D6B: call [eax+00000300h]
00849D71: push eax
00849D72: lea eax, var_28
00849D75: push eax
00849D76: call 00410A84h ; Set (object)
00849D7B: mov var_00000088, eax
00849D81: lea eax, var_2C
00849D84: push eax
00849D85: push 00000001h
00849D87: mov eax, var_00000088
00849D8D: mov eax, [eax]
00849D8F: push var_00000088
00849D95: call [eax+40h]
00849D98: fclex 
00849D9A: mov var_0000008C, eax
00849DA0: cmp var_0000008C, 00000000h
00849DA7: jnl 849DC9h
00849DA9: push 00000040h
00849DAB: push 00440DE8h
00849DB0: push var_00000088
00849DB6: push var_0000008C
00849DBC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00849DC1: mov var_00000110, eax
00849DC7: jmp 849DD0h
00849DC9: and var_00000110, 00000000h
00849DD0: cmp [008F2010h], 00000000h
00849DD7: jnz 849DF4h
00849DD9: push 008F2010h
00849DDE: push 00433984h
00849DE3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00849DE8: mov var_00000114, 008F2010h
00849DF2: jmp 849DFEh
00849DF4: mov var_00000114, 008F2010h
00849DFE: mov eax, var_00000114
00849E04: mov eax, [eax]
00849E06: mov ecx, var_00000114
00849E0C: mov ecx, [ecx]
00849E0E: mov ecx, [ecx]
00849E10: push eax
00849E11: call [ecx+00000550h]
00849E17: push eax
00849E18: lea eax, var_38
00849E1B: push eax
00849E1C: call 00410A84h ; Set (object)
00849E21: mov eax, var_38
00849E24: mov var_000000E0, eax
00849E2A: and var_38, 00000000h
00849E2E: push var_000000E0
00849E34: lea eax, var_34
00849E37: push eax
00849E38: call 00410A84h ; Set (object)
00849E3D: cmp [008F2418h], 00000000h
00849E44: jnz 849E61h
00849E46: push 008F2418h
00849E4B: push 00440E38h
00849E50: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00849E55: mov var_00000118, 008F2418h
00849E5F: jmp 849E6Bh
00849E61: mov var_00000118, 008F2418h
00849E6B: push 0044BE64h
00849E70: push var_2C
00849E73: call 00410A06h ; msvbvm60.dll.__vbaCastObj
00849E78: push eax
00849E79: lea eax, var_30
00849E7C: push eax
00849E7D: call 00410A84h ; Set (object)
00849E82: push FFFFFFFFh
00849E84: push 00000009h
00849E86: lea eax, var_34
00849E89: push eax
00849E8A: push var_00000118
00849E90: lea eax, var_30
00849E93: push eax
00849E94: lea eax, var_48
00849E97: push eax
00849E98: lea eax, var_24
00849E9B: push eax
00849E9C: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
00849EA1: push eax
00849EA2: call 007BE911h
00849EA7: lea ecx, var_24
00849EAA: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00849EAF: lea eax, var_38
00849EB2: push eax
00849EB3: lea eax, var_34
00849EB6: push eax
00849EB7: lea eax, var_30
00849EBA: push eax
00849EBB: lea eax, var_2C
00849EBE: push eax
00849EBF: lea eax, var_28
00849EC2: push eax
00849EC3: push 00000005h
00849EC5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00849ECA: add esp, 00000018h
00849ECD: lea ecx, var_48
00849ED0: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00849ED5: lea eax, var_000000CC
00849EDB: push eax
00849EDC: lea eax, var_000000BC
00849EE2: push eax
00849EE3: lea eax, var_20
00849EE6: push eax
00849EE7: call 00410A36h ; Next
00849EEC: mov var_000000DC, eax
00849EF2: cmp var_000000DC, 00000000h
00849EF9: jnz 00849CE2h
00849EFF: push 00849F64h
00849F04: jmp 849F35h
00849F06: lea ecx, var_24
00849F09: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00849F0E: lea eax, var_38
00849F11: push eax
00849F12: lea eax, var_34
00849F15: push eax
00849F16: lea eax, var_30
00849F19: push eax
00849F1A: lea eax, var_2C
00849F1D: push eax
00849F1E: lea eax, var_28
00849F21: push eax
00849F22: push 00000005h
00849F24: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00849F29: add esp, 00000018h
00849F2C: lea ecx, var_48
00849F2F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00849F34: ret 
End Sub

