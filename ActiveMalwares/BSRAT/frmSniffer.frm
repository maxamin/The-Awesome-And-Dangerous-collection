VERSION 5.00
Begin VB.Form frmSniffer
  Caption = "Sniffer"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmSniffer.frx":0
  LinkTopic = "Form1"
  ClientLeft = 225
  ClientTop = 555
  ClientWidth = 13800
  ClientHeight = 7095
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame frmOptions
    Left = 0
    Top = 6240
    Width = 13815
    Height = 855
    TabIndex = 0
    Begin VB.CommandButton cmdStart
      Caption = "Start"
      Left = 12240
      Top = 360
      Width = 1335
      Height = 255
      Enabled = 0   'False
      TabIndex = 8
    End
    Begin VB.TextBox txtPorts
      Left = 8200
      Top = 360
      Width = 975
      Height = 285
      Text = "0"
      TabIndex = 7
      ToolTipText = "0 = All ports"
    End
    Begin VB.TextBox txtFilter
      Left = 5250
      Top = 360
      Width = 2175
      Height = 285
      TabIndex = 5
      ToolTipText = "Will only sniff for packets containing given string"
    End
    Begin VB.CommandButton cmdRefresh
      Caption = "Refresh"
      Left = 3120
      Top = 360
      Width = 975
      Height = 255
      TabIndex = 3
    End
    Begin VB.ComboBox cmbAdapters
      Style = 2
      Left = 900
      Top = 320
      Width = 2175
      Height = 315
      TabIndex = 1
    End
    Begin VB.Label lblPort
      Caption = "Port:"
      Left = 7800
      Top = 360
      Width = 375
      Height = 255
      TabIndex = 6
      ToolTipText = "0 = All ports"
    End
    Begin VB.Label lblFilter
      Caption = "Filter:"
      Left = 4800
      Top = 360
      Width = 495
      Height = 255
      TabIndex = 4
      ToolTipText = "Will only sniff for packets containing given string"
    End
    Begin VB.Label lblInterface
      Caption = "Interface:"
      Left = 120
      Top = 360
      Width = 855
      Height = 255
      TabIndex = 2
    End
  End
  Begin MSComctlLib.ListView lstCaptured
    Left = 0
    Top = 0
    Width = 13695
    Height = 6135
    TabIndex = 9
  End
  Begin VB.Menu mnuSnifferMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuSniffer
      Index = 0
      Caption = "Display data"
    End
    Begin VB.Menu mnuSniffer
      Index = 1
      Caption = "-"
    End
    Begin VB.Menu mnuSniffer
      Index = 2
      Caption = "Save"
      Begin VB.Menu mnuSnifferSave
        Index = 0
        Caption = "All"
      End
      Begin VB.Menu mnuSnifferSave
        Index = 1
        Caption = "Selected"
      End
    End
    Begin VB.Menu mnuSniffer
      Index = 3
      Caption = "Clear"
    End
  End
End

Attribute VB_Name = "frmSniffer"


Private sub mnuSniffer__820258
00820258: push ebp
00820259: mov ebp, esp
0082025B: sub esp, 00000014h
0082025E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00820263: mov eax, fs:[00h]
00820269: push eax
0082026A: mov fs:[00000000h], esp
00820271: mov eax, 0000039Ch
00820276: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082027B: push ebx
0082027C: push esi
0082027D: push edi
0082027E: mov var_14, esp
00820281: mov var_10, 0040B090h
00820288: mov eax, [ebp+08h]
0082028B: and eax, 00000001h
0082028E: mov var_0C, eax
00820291: mov eax, [ebp+08h]
00820294: and al, FEh
00820296: mov [ebp+08h], eax
00820299: mov var_08, 00000000h
008202A0: mov eax, [ebp+08h]
008202A3: mov eax, [eax]
008202A5: push [ebp+08h]
008202A8: call [eax+04h]
008202AB: push 00000001h
008202AD: call 00410A60h ; On Error ...
008202B2: mov eax, [ebp+0Ch]
008202B5: mov ax, [eax]
008202B8: mov var_00000344, ax
008202BF: movsx eax, word ptr var_00000344
008202C6: mov var_0000035C, eax
008202CC: cmp var_0000035C, 00000000h
008202D3: jz 8202E7h
008202D5: cmp var_0000035C, 00000003h
008202DC: jz 008212FDh
008202E2: jmp 008213B0h
008202E7: cmp [008F26D0h], 00000000h
008202EE: jnz 82030Bh
008202F0: push 008F26D0h
008202F5: push 004123D4h
008202FA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008202FF: mov var_00000360, 008F26D0h
00820309: jmp 820315h
0082030B: mov var_00000360, 008F26D0h
00820315: mov eax, var_00000360
0082031B: mov eax, [eax]
0082031D: mov var_000002B4, eax
00820323: mov eax, [ebp+08h]
00820326: mov var_00000250, eax
0082032C: mov var_00000258, 00000009h
00820336: mov var_00000240, 80020004h
00820340: mov var_00000248, 0000000Ah
0082034A: push 00000010h
0082034C: pop eax
0082034D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00820352: lea esi, var_00000258
00820358: mov edi, esp
0082035A: movsd 
0082035B: movsd 
0082035C: movsd 
0082035D: movsd 
0082035E: push 00000010h
00820360: pop eax
00820361: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00820366: lea esi, var_00000248
0082036C: mov edi, esp
0082036E: movsd 
0082036F: movsd 
00820370: movsd 
00820371: movsd 
00820372: mov eax, var_000002B4
00820378: mov eax, [eax]
0082037A: push var_000002B4
00820380: call [eax+000002B0h]
00820386: fclex 
00820388: mov var_000002B8, eax
0082038E: cmp var_000002B8, 00000000h
00820395: jnl 8203BAh
00820397: push 000002B0h
0082039C: push 004446F4h
008203A1: push var_000002B4
008203A7: push var_000002B8
008203AD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008203B2: mov var_00000364, eax
008203B8: jmp 8203C1h
008203BA: and var_00000364, 00000000h
008203C1: and var_00000240, 00000000h
008203C8: mov var_00000248, 00000008h
008203D2: cmp [008F26D0h], 00000000h
008203D9: jnz 8203F6h
008203DB: push 008F26D0h
008203E0: push 004123D4h
008203E5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008203EA: mov var_00000368, 008F26D0h
008203F4: jmp 820400h
008203F6: mov var_00000368, 008F26D0h
00820400: push 00000010h
00820402: pop eax
00820403: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00820408: lea esi, var_00000248
0082040E: mov edi, esp
00820410: movsd 
00820411: movsd 
00820412: movsd 
00820413: movsd 
00820414: push FFFFFDFBh
00820419: mov eax, var_00000368
0082041F: mov eax, [eax]
00820421: mov ecx, var_00000368
00820427: mov ecx, [ecx]
00820429: mov ecx, [ecx]
0082042B: push eax
0082042C: call [ecx+000002FCh]
00820432: push eax
00820433: lea eax, var_80
00820436: push eax
00820437: call 00410A84h ; Set (object)
0082043C: push eax
0082043D: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00820442: lea ecx, var_80
00820445: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0082044A: mov var_00000240, 00000001h
00820454: mov var_00000248, 00000002h
0082045E: push 004412BCh
00820463: push 00000000h
00820465: push 00000007h
00820467: mov eax, [ebp+08h]
0082046A: mov eax, [eax]
0082046C: push [ebp+08h]
0082046F: call [eax+0000032Ch]
00820475: push eax
00820476: lea eax, var_80
00820479: push eax
0082047A: call 00410A84h ; Set (object)
0082047F: push eax
00820480: lea eax, var_000000E8
00820486: push eax
00820487: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082048C: add esp, 00000010h
0082048F: push eax
00820490: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00820495: push eax
00820496: lea eax, var_00000084
0082049C: push eax
0082049D: call 00410A84h ; Set (object)
008204A2: mov var_000002B4, eax
008204A8: lea eax, var_000002B0
008204AE: push eax
008204AF: mov eax, var_000002B4
008204B5: mov eax, [eax]
008204B7: push var_000002B4
008204BD: call [eax+1Ch]
008204C0: fclex 
008204C2: mov var_000002B8, eax
008204C8: cmp var_000002B8, 00000000h
008204CF: jnl 8204F1h
008204D1: push 0000001Ch
008204D3: push 004412BCh
008204D8: push var_000002B4
008204DE: push var_000002B8
008204E4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008204E9: mov var_0000036C, eax
008204EF: jmp 8204F8h
008204F1: and var_0000036C, 00000000h
008204F8: mov eax, var_000002B0
008204FE: mov var_00000250, eax
00820504: mov var_00000258, 00000003h
0082050E: mov var_00000260, 00000001h
00820518: mov var_00000268, 00000002h
00820522: lea eax, var_00000248
00820528: push eax
00820529: lea eax, var_00000258
0082052F: push eax
00820530: lea eax, var_00000268
00820536: push eax
00820537: lea eax, var_00000340
0082053D: push eax
0082053E: lea eax, var_00000330
00820544: push eax
00820545: lea eax, var_2C
00820548: push eax
00820549: call 00410A3Ch ; For
0082054E: mov var_00000358, eax
00820554: lea eax, var_00000084
0082055A: push eax
0082055B: lea eax, var_80
0082055E: push eax
0082055F: push 00000002h
00820561: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00820566: add esp, 0000000Ch
00820569: lea ecx, var_000000E8
0082056F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00820574: jmp 008212EBh
00820579: push 004412BCh
0082057E: push 00000000h
00820580: push 00000007h
00820582: mov eax, [ebp+08h]
00820585: mov eax, [eax]
00820587: push [ebp+08h]
0082058A: call [eax+0000032Ch]
00820590: push eax
00820591: lea eax, var_80
00820594: push eax
00820595: call 00410A84h ; Set (object)
0082059A: push eax
0082059B: lea eax, var_000000E8
008205A1: push eax
008205A2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008205A7: add esp, 00000010h
008205AA: push eax
008205AB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008205B0: push eax
008205B1: lea eax, var_00000084
008205B7: push eax
008205B8: call 00410A84h ; Set (object)
008205BD: mov var_000002B4, eax
008205C3: lea eax, var_00000088
008205C9: push eax
008205CA: lea eax, var_2C
008205CD: push eax
008205CE: mov eax, var_000002B4
008205D4: mov eax, [eax]
008205D6: push var_000002B4
008205DC: call [eax+24h]
008205DF: fclex 
008205E1: mov var_000002B8, eax
008205E7: cmp var_000002B8, 00000000h
008205EE: jnl 820610h
008205F0: push 00000024h
008205F2: push 004412BCh
008205F7: push var_000002B4
008205FD: push var_000002B8
00820603: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00820608: mov var_00000370, eax
0082060E: jmp 820617h
00820610: and var_00000370, 00000000h
00820617: mov eax, var_00000088
0082061D: mov var_000002BC, eax
00820623: lea eax, var_000002AC
00820629: push eax
0082062A: mov eax, var_000002BC
00820630: mov eax, [eax]
00820632: push var_000002BC
00820638: call [eax+5Ch]
0082063B: fclex 
0082063D: mov var_000002C0, eax
00820643: cmp var_000002C0, 00000000h
0082064A: jnl 82066Ch
0082064C: push 0000005Ch
0082064E: push 004412DCh
00820653: push var_000002BC
00820659: push var_000002C0
0082065F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00820664: mov var_00000374, eax
0082066A: jmp 820673h
0082066C: and var_00000374, 00000000h
00820673: xor eax, eax
00820675: cmp word ptr var_000002AC, FFFFh
0082067D: setz al
00820680: neg eax
00820682: mov var_000002C4, ax
00820689: lea eax, var_00000088
0082068F: push eax
00820690: lea eax, var_00000084
00820696: push eax
00820697: lea eax, var_80
0082069A: push eax
0082069B: push 00000003h
0082069D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008206A2: add esp, 00000010h
008206A5: lea ecx, var_000000E8
008206AB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008206B0: movsx eax, word ptr var_000002C4
008206B7: test eax, eax
008206B9: jz 008212CEh
008206BF: cmp [008F26D0h], 00000000h
008206C6: jnz 8206E3h
008206C8: push 008F26D0h
008206CD: push 004123D4h
008206D2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008206D7: mov var_00000378, 008F26D0h
008206E1: jmp 8206EDh
008206E3: mov var_00000378, 008F26D0h
008206ED: push 004412BCh
008206F2: push 00000000h
008206F4: push 00000007h
008206F6: mov eax, [ebp+08h]
008206F9: mov eax, [eax]
008206FB: push [ebp+08h]
008206FE: call [eax+0000032Ch]
00820704: push eax
00820705: lea eax, var_00000084
0082070B: push eax
0082070C: call 00410A84h ; Set (object)
00820711: push eax
00820712: lea eax, var_000000F8
00820718: push eax
00820719: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082071E: add esp, 00000010h
00820721: push eax
00820722: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00820727: push eax
00820728: lea eax, var_00000088
0082072E: push eax
0082072F: call 00410A84h ; Set (object)
00820734: mov var_000002B4, eax
0082073A: lea eax, var_0000008C
00820740: push eax
00820741: lea eax, var_2C
00820744: push eax
00820745: mov eax, var_000002B4
0082074B: mov eax, [eax]
0082074D: push var_000002B4
00820753: call [eax+24h]
00820756: fclex 
00820758: mov var_000002B8, eax
0082075E: cmp var_000002B8, 00000000h
00820765: jnl 820787h
00820767: push 00000024h
00820769: push 004412BCh
0082076E: push var_000002B4
00820774: push var_000002B8
0082077A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082077F: mov var_0000037C, eax
00820785: jmp 82078Eh
00820787: and var_0000037C, 00000000h
0082078E: mov eax, var_0000008C
00820794: mov var_000002BC, eax
0082079A: lea eax, var_34
0082079D: push eax
0082079E: mov eax, var_000002BC
008207A4: mov eax, [eax]
008207A6: push var_000002BC
008207AC: call [eax+24h]
008207AF: fclex 
008207B1: mov var_000002C0, eax
008207B7: cmp var_000002C0, 00000000h
008207BE: jnl 8207E0h
008207C0: push 00000024h
008207C2: push 004412DCh
008207C7: push var_000002BC
008207CD: push var_000002C0
008207D3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008207D8: mov var_00000380, eax
008207DE: jmp 8207E7h
008207E0: and var_00000380, 00000000h
008207E7: push 004412BCh
008207EC: push 00000000h
008207EE: push 00000007h
008207F0: mov eax, [ebp+08h]
008207F3: mov eax, [eax]
008207F5: push [ebp+08h]
008207F8: call [eax+0000032Ch]
008207FE: push eax
008207FF: lea eax, var_00000090
00820805: push eax
00820806: call 00410A84h ; Set (object)
0082080B: push eax
0082080C: lea eax, var_00000108
00820812: push eax
00820813: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00820818: add esp, 00000010h
0082081B: push eax
0082081C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00820821: push eax
00820822: lea eax, var_00000094
00820828: push eax
00820829: call 00410A84h ; Set (object)
0082082E: mov var_000002C4, eax
00820834: lea eax, var_00000098
0082083A: push eax
0082083B: lea eax, var_2C
0082083E: push eax
0082083F: mov eax, var_000002C4
00820845: mov eax, [eax]
00820847: push var_000002C4
0082084D: call [eax+24h]
00820850: fclex 
00820852: mov var_000002C8, eax
00820858: cmp var_000002C8, 00000000h
0082085F: jnl 820881h
00820861: push 00000024h
00820863: push 004412BCh
00820868: push var_000002C4
0082086E: push var_000002C8
00820874: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00820879: mov var_00000384, eax
0082087F: jmp 820888h
00820881: and var_00000384, 00000000h
00820888: mov eax, var_00000098
0082088E: mov var_000002CC, eax
00820894: lea eax, var_44
00820897: push eax
00820898: push 00000001h
0082089A: mov eax, var_000002CC
008208A0: mov eax, [eax]
008208A2: push var_000002CC
008208A8: call [eax+00000084h]
008208AE: fclex 
008208B0: mov var_000002D0, eax
008208B6: cmp var_000002D0, 00000000h
008208BD: jnl 8208E2h
008208BF: push 00000084h
008208C4: push 004412DCh
008208C9: push var_000002CC
008208CF: push var_000002D0
008208D5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008208DA: mov var_00000388, eax
008208E0: jmp 8208E9h
008208E2: and var_00000388, 00000000h
008208E9: push 004412BCh
008208EE: push 00000000h
008208F0: push 00000007h
008208F2: mov eax, [ebp+08h]
008208F5: mov eax, [eax]
008208F7: push [ebp+08h]
008208FA: call [eax+0000032Ch]
00820900: push eax
00820901: lea eax, var_0000009C
00820907: push eax
00820908: call 00410A84h ; Set (object)
0082090D: push eax
0082090E: lea eax, var_00000118
00820914: push eax
00820915: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082091A: add esp, 00000010h
0082091D: push eax
0082091E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00820923: push eax
00820924: lea eax, var_000000A0
0082092A: push eax
0082092B: call 00410A84h ; Set (object)
00820930: mov var_000002D4, eax
00820936: lea eax, var_000000A4
0082093C: push eax
0082093D: lea eax, var_2C
00820940: push eax
00820941: mov eax, var_000002D4
00820947: mov eax, [eax]
00820949: push var_000002D4
0082094F: call [eax+24h]
00820952: fclex 
00820954: mov var_000002D8, eax
0082095A: cmp var_000002D8, 00000000h
00820961: jnl 820983h
00820963: push 00000024h
00820965: push 004412BCh
0082096A: push var_000002D4
00820970: push var_000002D8
00820976: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082097B: mov var_0000038C, eax
00820981: jmp 82098Ah
00820983: and var_0000038C, 00000000h
0082098A: mov eax, var_000000A4
00820990: mov var_000002DC, eax
00820996: lea eax, var_50
00820999: push eax
0082099A: push 00000002h
0082099C: mov eax, var_000002DC
008209A2: mov eax, [eax]
008209A4: push var_000002DC
008209AA: call [eax+00000084h]
008209B0: fclex 
008209B2: mov var_000002E0, eax
008209B8: cmp var_000002E0, 00000000h
008209BF: jnl 8209E4h
008209C1: push 00000084h
008209C6: push 004412DCh
008209CB: push var_000002DC
008209D1: push var_000002E0
008209D7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008209DC: mov var_00000390, eax
008209E2: jmp 8209EBh
008209E4: and var_00000390, 00000000h
008209EB: push 004412BCh
008209F0: push 00000000h
008209F2: push 00000007h
008209F4: mov eax, [ebp+08h]
008209F7: mov eax, [eax]
008209F9: push [ebp+08h]
008209FC: call [eax+0000032Ch]
00820A02: push eax
00820A03: lea eax, var_000000A8
00820A09: push eax
00820A0A: call 00410A84h ; Set (object)
00820A0F: push eax
00820A10: lea eax, var_00000128
00820A16: push eax
00820A17: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00820A1C: add esp, 00000010h
00820A1F: push eax
00820A20: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00820A25: push eax
00820A26: lea eax, var_000000AC
00820A2C: push eax
00820A2D: call 00410A84h ; Set (object)
00820A32: mov var_000002E4, eax
00820A38: lea eax, var_000000B0
00820A3E: push eax
00820A3F: lea eax, var_2C
00820A42: push eax
00820A43: mov eax, var_000002E4
00820A49: mov eax, [eax]
00820A4B: push var_000002E4
00820A51: call [eax+24h]
00820A54: fclex 
00820A56: mov var_000002E8, eax
00820A5C: cmp var_000002E8, 00000000h
00820A63: jnl 820A85h
00820A65: push 00000024h
00820A67: push 004412BCh
00820A6C: push var_000002E4
00820A72: push var_000002E8
00820A78: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00820A7D: mov var_00000394, eax
00820A83: jmp 820A8Ch
00820A85: and var_00000394, 00000000h
00820A8C: mov eax, var_000000B0
00820A92: mov var_000002EC, eax
00820A98: lea eax, var_60
00820A9B: push eax
00820A9C: push 00000003h
00820A9E: mov eax, var_000002EC
00820AA4: mov eax, [eax]
00820AA6: push var_000002EC
00820AAC: call [eax+00000084h]
00820AB2: fclex 
00820AB4: mov var_000002F0, eax
00820ABA: cmp var_000002F0, 00000000h
00820AC1: jnl 820AE6h
00820AC3: push 00000084h
00820AC8: push 004412DCh
00820ACD: push var_000002EC
00820AD3: push var_000002F0
00820AD9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00820ADE: mov var_00000398, eax
00820AE4: jmp 820AEDh
00820AE6: and var_00000398, 00000000h
00820AED: push 004412BCh
00820AF2: push 00000000h
00820AF4: push 00000007h
00820AF6: mov eax, [ebp+08h]
00820AF9: mov eax, [eax]
00820AFB: push [ebp+08h]
00820AFE: call [eax+0000032Ch]
00820B04: push eax
00820B05: lea eax, var_000000B4
00820B0B: push eax
00820B0C: call 00410A84h ; Set (object)
00820B11: push eax
00820B12: lea eax, var_00000138
00820B18: push eax
00820B19: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00820B1E: add esp, 00000010h
00820B21: push eax
00820B22: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00820B27: push eax
00820B28: lea eax, var_000000B8
00820B2E: push eax
00820B2F: call 00410A84h ; Set (object)
00820B34: mov var_000002F4, eax
00820B3A: lea eax, var_000000BC
00820B40: push eax
00820B41: lea eax, var_2C
00820B44: push eax
00820B45: mov eax, var_000002F4
00820B4B: mov eax, [eax]
00820B4D: push var_000002F4
00820B53: call [eax+24h]
00820B56: fclex 
00820B58: mov var_000002F8, eax
00820B5E: cmp var_000002F8, 00000000h
00820B65: jnl 820B87h
00820B67: push 00000024h
00820B69: push 004412BCh
00820B6E: push var_000002F4
00820B74: push var_000002F8
00820B7A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00820B7F: mov var_0000039C, eax
00820B85: jmp 820B8Eh
00820B87: and var_0000039C, 00000000h
00820B8E: mov eax, var_000000BC
00820B94: mov var_000002FC, eax
00820B9A: lea eax, var_6C
00820B9D: push eax
00820B9E: push 00000004h
00820BA0: mov eax, var_000002FC
00820BA6: mov eax, [eax]
00820BA8: push var_000002FC
00820BAE: call [eax+00000084h]
00820BB4: fclex 
00820BB6: mov var_00000300, eax
00820BBC: cmp var_00000300, 00000000h
00820BC3: jnl 820BE8h
00820BC5: push 00000084h
00820BCA: push 004412DCh
00820BCF: push var_000002FC
00820BD5: push var_00000300
00820BDB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00820BE0: mov var_000003A0, eax
00820BE6: jmp 820BEFh
00820BE8: and var_000003A0, 00000000h
00820BEF: push 00000000h
00820BF1: push FFFFFDFBh
00820BF6: mov eax, var_00000378
00820BFC: mov eax, [eax]
00820BFE: mov ecx, var_00000378
00820C04: mov ecx, [ecx]
00820C06: mov ecx, [ecx]
00820C08: push eax
00820C09: call [ecx+000002FCh]
00820C0F: push eax
00820C10: lea eax, var_80
00820C13: push eax
00820C14: call 00410A84h ; Set (object)
00820C19: push eax
00820C1A: lea eax, var_000000E8
00820C20: push eax
00820C21: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00820C26: add esp, 00000010h
00820C29: push eax
00820C2A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00820C2F: mov edx, eax
00820C31: lea ecx, var_30
00820C34: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00820C39: push eax
00820C3A: push 00453E18h ; Protocol:
00820C3F: call 00410A18h ; &
00820C44: mov edx, eax
00820C46: lea ecx, var_38
00820C49: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00820C4E: push eax
00820C4F: push var_34
00820C52: call 00410A18h ; &
00820C57: mov edx, eax
00820C59: lea ecx, var_3C
00820C5C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00820C61: push eax
00820C62: push 00441264h ; vbCrLf
00820C67: call 00410A18h ; &
00820C6C: mov edx, eax
00820C6E: lea ecx, var_40
00820C71: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00820C76: push eax
00820C77: push 00453E34h ; Source:
00820C7C: call 00410A18h ; &
00820C81: mov edx, eax
00820C83: lea ecx, var_48
00820C86: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00820C8B: push eax
00820C8C: push var_44
00820C8F: call 00410A18h ; &
00820C94: mov edx, eax
00820C96: lea ecx, var_4C
00820C99: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00820C9E: push eax
00820C9F: push 004412B8h
00820CA4: call 00410A18h ; &
00820CA9: mov edx, eax
00820CAB: lea ecx, var_54
00820CAE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00820CB3: push eax
00820CB4: push var_50
00820CB7: call 00410A18h ; &
00820CBC: mov edx, eax
00820CBE: lea ecx, var_58
00820CC1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00820CC6: push eax
00820CC7: push 00441264h ; vbCrLf
00820CCC: call 00410A18h ; &
00820CD1: mov edx, eax
00820CD3: lea ecx, var_5C
00820CD6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00820CDB: push eax
00820CDC: push 00453E4Ch ; Destination:
00820CE1: call 00410A18h ; &
00820CE6: mov edx, eax
00820CE8: lea ecx, var_64
00820CEB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00820CF0: push eax
00820CF1: push var_60
00820CF4: call 00410A18h ; &
00820CF9: mov edx, eax
00820CFB: lea ecx, var_68
00820CFE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00820D03: push eax
00820D04: push 004412B8h
00820D09: call 00410A18h ; &
00820D0E: mov edx, eax
00820D10: lea ecx, var_70
00820D13: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00820D18: push eax
00820D19: push var_6C
00820D1C: call 00410A18h ; &
00820D21: mov edx, eax
00820D23: lea ecx, var_74
00820D26: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00820D2B: push eax
00820D2C: push 00441264h ; vbCrLf
00820D31: call 00410A18h ; &
00820D36: mov edx, eax
00820D38: lea ecx, var_78
00820D3B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00820D40: push eax
00820D41: push 00453E6Ch ; Packet size:
00820D46: call 00410A18h ; &
00820D4B: mov var_00000170, eax
00820D51: mov var_00000178, 00000008h
00820D5B: push 004412BCh
00820D60: push 00000000h
00820D62: push 00000007h
00820D64: mov eax, [ebp+08h]
00820D67: mov eax, [eax]
00820D69: push [ebp+08h]
00820D6C: call [eax+0000032Ch]
00820D72: push eax
00820D73: lea eax, var_000000C0
00820D79: push eax
00820D7A: call 00410A84h ; Set (object)
00820D7F: push eax
00820D80: lea eax, var_00000148
00820D86: push eax
00820D87: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00820D8C: add esp, 00000010h
00820D8F: push eax
00820D90: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00820D95: push eax
00820D96: lea eax, var_000000C4
00820D9C: push eax
00820D9D: call 00410A84h ; Set (object)
00820DA2: mov var_00000304, eax
00820DA8: lea eax, var_000000C8
00820DAE: push eax
00820DAF: lea eax, var_2C
00820DB2: push eax
00820DB3: mov eax, var_00000304
00820DB9: mov eax, [eax]
00820DBB: push var_00000304
00820DC1: call [eax+24h]
00820DC4: fclex 
00820DC6: mov var_00000308, eax
00820DCC: cmp var_00000308, 00000000h
00820DD3: jnl 820DF5h
00820DD5: push 00000024h
00820DD7: push 004412BCh
00820DDC: push var_00000304
00820DE2: push var_00000308
00820DE8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00820DED: mov var_000003A4, eax
00820DF3: jmp 820DFCh
00820DF5: and var_000003A4, 00000000h
00820DFC: mov eax, var_000000C8
00820E02: mov var_0000030C, eax
00820E08: lea eax, var_00000158
00820E0E: push eax
00820E0F: mov eax, var_0000030C
00820E15: mov eax, [eax]
00820E17: push var_0000030C
00820E1D: call [eax+6Ch]
00820E20: fclex 
00820E22: mov var_00000310, eax
00820E28: cmp var_00000310, 00000000h
00820E2F: jnl 820E51h
00820E31: push 0000006Ch
00820E33: push 004412DCh
00820E38: push var_0000030C
00820E3E: push var_00000310
00820E44: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00820E49: mov var_000003A8, eax
00820E4F: jmp 820E58h
00820E51: and var_000003A8, 00000000h
00820E58: mov var_00000240, 00453E8Ch ; bytes
00820E62: mov var_00000248, 00000008h
00820E6C: mov var_00000250, 00441264h ; vbCrLf
00820E76: mov var_00000258, 00000008h
00820E80: mov var_00000260, 00453EA0h ; Data:
00820E8A: mov var_00000268, 00000008h
00820E94: mov var_00000270, 00441264h ; vbCrLf
00820E9E: mov var_00000278, 00000008h
00820EA8: push 004412BCh
00820EAD: push 00000000h
00820EAF: push 00000007h
00820EB1: mov eax, [ebp+08h]
00820EB4: mov eax, [eax]
00820EB6: push [ebp+08h]
00820EB9: call [eax+0000032Ch]
00820EBF: push eax
00820EC0: lea eax, var_000000CC
00820EC6: push eax
00820EC7: call 00410A84h ; Set (object)
00820ECC: push eax
00820ECD: lea eax, var_000001D8
00820ED3: push eax
00820ED4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00820ED9: add esp, 00000010h
00820EDC: push eax
00820EDD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00820EE2: push eax
00820EE3: lea eax, var_000000D0
00820EE9: push eax
00820EEA: call 00410A84h ; Set (object)
00820EEF: mov var_00000314, eax
00820EF5: lea eax, var_000000D4
00820EFB: push eax
00820EFC: lea eax, var_2C
00820EFF: push eax
00820F00: mov eax, var_00000314
00820F06: mov eax, [eax]
00820F08: push var_00000314
00820F0E: call [eax+24h]
00820F11: fclex 
00820F13: mov var_00000318, eax
00820F19: cmp var_00000318, 00000000h
00820F20: jnl 820F42h
00820F22: push 00000024h
00820F24: push 004412BCh
00820F29: push var_00000314
00820F2F: push var_00000318
00820F35: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00820F3A: mov var_000003AC, eax
00820F40: jmp 820F49h
00820F42: and var_000003AC, 00000000h
00820F49: mov eax, var_000000D4
00820F4F: mov var_0000031C, eax
00820F55: lea eax, var_000001E8
00820F5B: push eax
00820F5C: mov eax, var_0000031C
00820F62: mov eax, [eax]
00820F64: push var_0000031C
00820F6A: call [eax+6Ch]
00820F6D: fclex 
00820F6F: mov var_00000320, eax
00820F75: cmp var_00000320, 00000000h
00820F7C: jnl 820F9Eh
00820F7E: push 0000006Ch
00820F80: push 004412DCh
00820F85: push var_0000031C
00820F8B: push var_00000320
00820F91: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00820F96: mov var_000003B0, eax
00820F9C: jmp 820FA5h
00820F9E: and var_000003B0, 00000000h
00820FA5: lea eax, var_000001E8
00820FAB: push eax
00820FAC: lea eax, var_7C
00820FAF: push eax
00820FB0: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
00820FB5: push eax
00820FB6: call 007BBB4Ch
00820FBB: mov var_000001F0, eax
00820FC1: mov var_000001F8, 00000008h
00820FCB: mov var_00000280, 00441264h ; vbCrLf
00820FD5: mov var_00000288, 00000008h
00820FDF: mov var_00000290, 00441264h ; vbCrLf
00820FE9: mov var_00000298, 00000008h
00820FF3: lea eax, var_00000178
00820FF9: push eax
00820FFA: lea eax, var_00000158
00821000: push eax
00821001: lea eax, var_00000168
00821007: push eax
00821008: call 00410916h ; arg_1 = Len(arg_2)
0082100D: push eax
0082100E: lea eax, var_00000188
00821014: push eax
00821015: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0082101A: push eax
0082101B: lea eax, var_00000248
00821021: push eax
00821022: lea eax, var_00000198
00821028: push eax
00821029: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0082102E: push eax
0082102F: lea eax, var_00000258
00821035: push eax
00821036: lea eax, var_000001A8
0082103C: push eax
0082103D: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00821042: push eax
00821043: lea eax, var_00000268
00821049: push eax
0082104A: lea eax, var_000001B8
00821050: push eax
00821051: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00821056: push eax
00821057: lea eax, var_00000278
0082105D: push eax
0082105E: lea eax, var_000001C8
00821064: push eax
00821065: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0082106A: push eax
0082106B: lea eax, var_000001F8
00821071: push eax
00821072: lea eax, var_00000208
00821078: push eax
00821079: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0082107E: push eax
0082107F: lea eax, var_00000288
00821085: push eax
00821086: lea eax, var_00000218
0082108C: push eax
0082108D: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00821092: push eax
00821093: lea eax, var_00000298
00821099: push eax
0082109A: lea eax, var_00000228
008210A0: push eax
008210A1: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008210A6: push eax
008210A7: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008210AC: mov var_00000230, eax
008210B2: mov var_00000238, 00000008h
008210BC: cmp [008F26D0h], 00000000h
008210C3: jnz 8210E0h
008210C5: push 008F26D0h
008210CA: push 004123D4h
008210CF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008210D4: mov var_000003B4, 008F26D0h
008210DE: jmp 8210EAh
008210E0: mov var_000003B4, 008F26D0h
008210EA: push 00000010h
008210EC: pop eax
008210ED: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008210F2: lea esi, var_00000238
008210F8: mov edi, esp
008210FA: movsd 
008210FB: movsd 
008210FC: movsd 
008210FD: movsd 
008210FE: push FFFFFDFBh
00821103: mov eax, var_000003B4
00821109: mov eax, [eax]
0082110B: mov ecx, var_000003B4
00821111: mov ecx, [ecx]
00821113: mov ecx, [ecx]
00821115: push eax
00821116: call [ecx+000002FCh]
0082111C: push eax
0082111D: lea eax, var_000000D8
00821123: push eax
00821124: call 00410A84h ; Set (object)
00821129: push eax
0082112A: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0082112F: lea eax, var_7C
00821132: push eax
00821133: lea eax, var_78
00821136: push eax
00821137: lea eax, var_74
0082113A: push eax
0082113B: lea eax, var_6C
0082113E: push eax
0082113F: lea eax, var_70
00821142: push eax
00821143: lea eax, var_68
00821146: push eax
00821147: lea eax, var_60
0082114A: push eax
0082114B: lea eax, var_64
0082114E: push eax
0082114F: lea eax, var_5C
00821152: push eax
00821153: lea eax, var_58
00821156: push eax
00821157: lea eax, var_50
0082115A: push eax
0082115B: lea eax, var_54
0082115E: push eax
0082115F: lea eax, var_4C
00821162: push eax
00821163: lea eax, var_44
00821166: push eax
00821167: lea eax, var_48
0082116A: push eax
0082116B: lea eax, var_40
0082116E: push eax
0082116F: lea eax, var_3C
00821172: push eax
00821173: lea eax, var_34
00821176: push eax
00821177: lea eax, var_38
0082117A: push eax
0082117B: lea eax, var_30
0082117E: push eax
0082117F: push 00000014h
00821181: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00821186: add esp, 00000054h
00821189: lea eax, var_000000D8
0082118F: push eax
00821190: lea eax, var_000000D4
00821196: push eax
00821197: lea eax, var_000000D0
0082119D: push eax
0082119E: lea eax, var_000000CC
008211A4: push eax
008211A5: lea eax, var_000000C8
008211AB: push eax
008211AC: lea eax, var_000000C4
008211B2: push eax
008211B3: lea eax, var_000000C0
008211B9: push eax
008211BA: lea eax, var_000000BC
008211C0: push eax
008211C1: lea eax, var_000000B8
008211C7: push eax
008211C8: lea eax, var_000000B4
008211CE: push eax
008211CF: lea eax, var_000000B0
008211D5: push eax
008211D6: lea eax, var_000000AC
008211DC: push eax
008211DD: lea eax, var_000000A8
008211E3: push eax
008211E4: lea eax, var_000000A4
008211EA: push eax
008211EB: lea eax, var_000000A0
008211F1: push eax
008211F2: lea eax, var_0000009C
008211F8: push eax
008211F9: lea eax, var_00000098
008211FF: push eax
00821200: lea eax, var_00000094
00821206: push eax
00821207: lea eax, var_00000090
0082120D: push eax
0082120E: lea eax, var_0000008C
00821214: push eax
00821215: lea eax, var_00000088
0082121B: push eax
0082121C: lea eax, var_00000084
00821222: push eax
00821223: lea eax, var_80
00821226: push eax
00821227: push 00000017h
00821229: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082122E: add esp, 00000060h
00821231: lea eax, var_00000238
00821237: push eax
00821238: lea eax, var_00000228
0082123E: push eax
0082123F: lea eax, var_00000218
00821245: push eax
00821246: lea eax, var_00000208
0082124C: push eax
0082124D: lea eax, var_000001F8
00821253: push eax
00821254: lea eax, var_000001C8
0082125A: push eax
0082125B: lea eax, var_000001E8
00821261: push eax
00821262: lea eax, var_000001D8
00821268: push eax
00821269: lea eax, var_000001B8
0082126F: push eax
00821270: lea eax, var_000001A8
00821276: push eax
00821277: lea eax, var_00000198
0082127D: push eax
0082127E: lea eax, var_00000188
00821284: push eax
00821285: lea eax, var_00000178
0082128B: push eax
0082128C: lea eax, var_00000158
00821292: push eax
00821293: lea eax, var_00000148
00821299: push eax
0082129A: lea eax, var_00000138
008212A0: push eax
008212A1: lea eax, var_00000128
008212A7: push eax
008212A8: lea eax, var_00000118
008212AE: push eax
008212AF: lea eax, var_00000108
008212B5: push eax
008212B6: lea eax, var_000000F8
008212BC: push eax
008212BD: lea eax, var_000000E8
008212C3: push eax
008212C4: push 00000015h
008212C6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008212CB: add esp, 00000058h
008212CE: lea eax, var_00000340
008212D4: push eax
008212D5: lea eax, var_00000330
008212DB: push eax
008212DC: lea eax, var_2C
008212DF: push eax
008212E0: call 00410A36h ; Next
008212E5: mov var_00000358, eax
008212EB: cmp var_00000358, 00000000h
008212F2: jnz 00820579h
008212F8: jmp 008213B0h
008212FD: push 004412BCh
00821302: push 00000000h
00821304: push 00000007h
00821306: mov eax, [ebp+08h]
00821309: mov eax, [eax]
0082130B: push [ebp+08h]
0082130E: call [eax+0000032Ch]
00821314: push eax
00821315: lea eax, var_80
00821318: push eax
00821319: call 00410A84h ; Set (object)
0082131E: push eax
0082131F: lea eax, var_000000E8
00821325: push eax
00821326: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082132B: add esp, 00000010h
0082132E: push eax
0082132F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00821334: push eax
00821335: lea eax, var_00000084
0082133B: push eax
0082133C: call 00410A84h ; Set (object)
00821341: mov var_000002B4, eax
00821347: mov eax, var_000002B4
0082134D: mov eax, [eax]
0082134F: push var_000002B4
00821355: call [eax+2Ch]
00821358: fclex 
0082135A: mov var_000002B8, eax
00821360: cmp var_000002B8, 00000000h
00821367: jnl 821389h
00821369: push 0000002Ch
0082136B: push 004412BCh
00821370: push var_000002B4
00821376: push var_000002B8
0082137C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00821381: mov var_000003B8, eax
00821387: jmp 821390h
00821389: and var_000003B8, 00000000h
00821390: lea eax, var_00000084
00821396: push eax
00821397: lea eax, var_80
0082139A: push eax
0082139B: push 00000002h
0082139D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008213A2: add esp, 0000000Ch
008213A5: lea ecx, var_000000E8
008213AB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008213B0: call 004109C4h ; msvbvm60.dll.__vbaExitProc
008213B5: push 00821587h
008213BA: jmp 00821566h
008213BF: lea eax, var_7C
008213C2: push eax
008213C3: lea eax, var_78
008213C6: push eax
008213C7: lea eax, var_74
008213CA: push eax
008213CB: lea eax, var_70
008213CE: push eax
008213CF: lea eax, var_6C
008213D2: push eax
008213D3: lea eax, var_68
008213D6: push eax
008213D7: lea eax, var_64
008213DA: push eax
008213DB: lea eax, var_60
008213DE: push eax
008213DF: lea eax, var_5C
008213E2: push eax
008213E3: lea eax, var_58
008213E6: push eax
008213E7: lea eax, var_54
008213EA: push eax
008213EB: lea eax, var_50
008213EE: push eax
008213EF: lea eax, var_4C
008213F2: push eax
008213F3: lea eax, var_48
008213F6: push eax
008213F7: lea eax, var_44
008213FA: push eax
008213FB: lea eax, var_40
008213FE: push eax
008213FF: lea eax, var_3C
00821402: push eax
00821403: lea eax, var_38
00821406: push eax
00821407: lea eax, var_34
0082140A: push eax
0082140B: lea eax, var_30
0082140E: push eax
0082140F: push 00000014h
00821411: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00821416: add esp, 00000054h
00821419: lea eax, var_000000D8
0082141F: push eax
00821420: lea eax, var_000000D4
00821426: push eax
00821427: lea eax, var_000000D0
0082142D: push eax
0082142E: lea eax, var_000000CC
00821434: push eax
00821435: lea eax, var_000000C8
0082143B: push eax
0082143C: lea eax, var_000000C4
00821442: push eax
00821443: lea eax, var_000000C0
00821449: push eax
0082144A: lea eax, var_000000BC
00821450: push eax
00821451: lea eax, var_000000B8
00821457: push eax
00821458: lea eax, var_000000B4
0082145E: push eax
0082145F: lea eax, var_000000B0
00821465: push eax
00821466: lea eax, var_000000AC
0082146C: push eax
0082146D: lea eax, var_000000A8
00821473: push eax
00821474: lea eax, var_000000A4
0082147A: push eax
0082147B: lea eax, var_000000A0
00821481: push eax
00821482: lea eax, var_0000009C
00821488: push eax
00821489: lea eax, var_00000098
0082148F: push eax
00821490: lea eax, var_00000094
00821496: push eax
00821497: lea eax, var_00000090
0082149D: push eax
0082149E: lea eax, var_0000008C
008214A4: push eax
008214A5: lea eax, var_00000088
008214AB: push eax
008214AC: lea eax, var_00000084
008214B2: push eax
008214B3: lea eax, var_80
008214B6: push eax
008214B7: push 00000017h
008214B9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008214BE: add esp, 00000060h
008214C1: lea eax, var_00000238
008214C7: push eax
008214C8: lea eax, var_00000228
008214CE: push eax
008214CF: lea eax, var_00000218
008214D5: push eax
008214D6: lea eax, var_00000208
008214DC: push eax
008214DD: lea eax, var_000001F8
008214E3: push eax
008214E4: lea eax, var_000001E8
008214EA: push eax
008214EB: lea eax, var_000001D8
008214F1: push eax
008214F2: lea eax, var_000001C8
008214F8: push eax
008214F9: lea eax, var_000001B8
008214FF: push eax
00821500: lea eax, var_000001A8
00821506: push eax
00821507: lea eax, var_00000198
0082150D: push eax
0082150E: lea eax, var_00000188
00821514: push eax
00821515: lea eax, var_00000178
0082151B: push eax
0082151C: lea eax, var_00000168
00821522: push eax
00821523: lea eax, var_00000158
00821529: push eax
0082152A: lea eax, var_00000148
00821530: push eax
00821531: lea eax, var_00000138
00821537: push eax
00821538: lea eax, var_00000128
0082153E: push eax
0082153F: lea eax, var_00000118
00821545: push eax
00821546: lea eax, var_00000108
0082154C: push eax
0082154D: lea eax, var_000000F8
00821553: push eax
00821554: lea eax, var_000000E8
0082155A: push eax
0082155B: push 00000016h
0082155D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00821562: add esp, 0000005Ch
00821565: ret 
End Sub

Private sub Form__81C5A1
0081C5A1: push ebp
0081C5A2: mov ebp, esp
0081C5A4: sub esp, 0000000Ch
0081C5A7: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081C5AC: mov eax, fs:[00h]
0081C5B2: push eax
0081C5B3: mov fs:[00000000h], esp
0081C5BA: push 00000018h
0081C5BC: pop eax
0081C5BD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081C5C2: push ebx
0081C5C3: push esi
0081C5C4: push edi
0081C5C5: mov var_0C, esp
0081C5C8: mov var_08, 0040AF40h
0081C5CF: mov eax, [ebp+08h]
0081C5D2: and eax, 00000001h
0081C5D5: mov var_04, eax
0081C5D8: mov eax, [ebp+08h]
0081C5DB: and al, FEh
0081C5DD: mov [ebp+08h], eax
0081C5E0: mov eax, [ebp+08h]
0081C5E3: mov eax, [eax]
0081C5E5: push [ebp+08h]
0081C5E8: call [eax+04h]
0081C5EB: mov eax, [ebp+08h]
0081C5EE: mov eax, [eax]
0081C5F0: push [ebp+08h]
0081C5F3: call [eax+00000310h]
0081C5F9: push eax
0081C5FA: lea eax, var_18
0081C5FD: push eax
0081C5FE: call 00410A84h ; Set (object)
0081C603: mov var_1C, eax
0081C606: mov eax, var_1C
0081C609: mov eax, [eax]
0081C60B: push var_1C
0081C60E: call [eax+000001E8h]
0081C614: fclex 
0081C616: mov var_20, eax
0081C619: cmp var_20, 00000000h
0081C61D: jnl 81C639h
0081C61F: push 000001E8h
0081C624: push 0044C944h
0081C629: push var_1C
0081C62C: push var_20
0081C62F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081C634: mov var_2C, eax
0081C637: jmp 81C63Dh
0081C639: and var_2C, 00000000h
0081C63D: lea ecx, var_18
0081C640: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081C645: mov var_04, 00000000h
0081C64C: push 0081C65Dh
0081C651: jmp 81C65Ch
0081C653: lea ecx, var_18
0081C656: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081C65B: ret 
End Sub

Private sub Form__81C67C
0081C67C: push ebp
0081C67D: mov ebp, esp
0081C67F: sub esp, 00000018h
0081C682: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081C687: mov eax, fs:[00h]
0081C68D: push eax
0081C68E: mov fs:[00000000h], esp
0081C695: mov eax, 000000F4h
0081C69A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081C69F: push ebx
0081C6A0: push esi
0081C6A1: push edi
0081C6A2: mov var_18, esp
0081C6A5: mov var_14, 0040AF50h
0081C6AC: mov eax, [ebp+08h]
0081C6AF: and eax, 00000001h
0081C6B2: mov var_10, eax
0081C6B5: mov eax, [ebp+08h]
0081C6B8: and al, FEh
0081C6BA: mov [ebp+08h], eax
0081C6BD: mov var_0C, 00000000h
0081C6C4: mov eax, [ebp+08h]
0081C6C7: mov eax, [eax]
0081C6C9: push [ebp+08h]
0081C6CC: call [eax+04h]
0081C6CF: mov var_04, 00000001h
0081C6D6: mov var_04, 00000002h
0081C6DD: push FFFFFFFFh
0081C6DF: call 00410A60h ; On Error ...
0081C6E4: mov var_04, 00000003h
0081C6EB: mov eax, [ebp+08h]
0081C6EE: mov eax, [eax]
0081C6F0: push [ebp+08h]
0081C6F3: call [eax+000002FCh]
0081C6F9: push eax
0081C6FA: lea eax, var_24
0081C6FD: push eax
0081C6FE: call 00410A84h ; Set (object)
0081C703: mov var_000000CC, eax
0081C709: lea eax, var_000000C8
0081C70F: push eax
0081C710: mov eax, var_000000CC
0081C716: mov eax, [eax]
0081C718: push var_000000CC
0081C71E: call [eax+00000088h]
0081C724: fclex 
0081C726: mov var_000000D0, eax
0081C72C: cmp var_000000D0, 00000000h
0081C733: jnl 81C758h
0081C735: push 00000088h
0081C73A: push 00447A30h
0081C73F: push var_000000CC
0081C745: push var_000000D0
0081C74B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081C750: mov var_000000F8, eax
0081C756: jmp 81C75Fh
0081C758: and var_000000F8, 00000000h
0081C75F: fldz 
0081C761: fstp real4 ptr var_44
0081C764: mov var_4C, 00000004h
0081C76B: and var_64, 00000000h
0081C76F: mov var_6C, 00000002h
0081C776: lea eax, var_000000C0
0081C77C: push eax
0081C77D: mov eax, [ebp+08h]
0081C780: mov eax, [eax]
0081C782: push [ebp+08h]
0081C785: call [eax+00000080h]
0081C78B: fclex 
0081C78D: mov var_000000D4, eax
0081C793: cmp var_000000D4, 00000000h
0081C79A: jnl 81C7BCh
0081C79C: push 00000080h
0081C7A1: push 00445198h
0081C7A6: push [ebp+08h]
0081C7A9: push var_000000D4
0081C7AF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081C7B4: mov var_000000FC, eax
0081C7BA: jmp 81C7C3h
0081C7BC: and var_000000FC, 00000000h
0081C7C3: fld real4 ptr var_000000C0
0081C7C9: fsub real4 ptr [00402BB0h]
0081C7CF: fstp real4 ptr var_00000084
0081C7D5: fstsw ax
0081C7D7: test al, 0Dh
0081C7D9: jnz 0081CC4Bh
0081C7DF: mov var_0000008C, 00000004h
0081C7E9: lea eax, var_000000C4
0081C7EF: push eax
0081C7F0: mov eax, [ebp+08h]
0081C7F3: mov eax, [eax]
0081C7F5: push [ebp+08h]
0081C7F8: call [eax+00000088h]
0081C7FE: fclex 
0081C800: mov var_000000D8, eax
0081C806: cmp var_000000D8, 00000000h
0081C80D: jnl 81C82Fh
0081C80F: push 00000088h
0081C814: push 00445198h
0081C819: push [ebp+08h]
0081C81C: push var_000000D8
0081C822: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081C827: mov var_00000100, eax
0081C82D: jmp 81C836h
0081C82F: and var_00000100, 00000000h
0081C836: fld real4 ptr var_000000C4
0081C83C: fsub real4 ptr [00402B54h]
0081C842: fsub real4 ptr var_000000C8
0081C848: fstp real4 ptr var_000000A4
0081C84E: fstsw ax
0081C850: test al, 0Dh
0081C852: jnz 0081CC4Bh
0081C858: mov var_000000AC, 00000004h
0081C862: push 00000010h
0081C864: pop eax
0081C865: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081C86A: lea esi, var_4C
0081C86D: mov edi, esp
0081C86F: movsd 
0081C870: movsd 
0081C871: movsd 
0081C872: movsd 
0081C873: push 00000010h
0081C875: pop eax
0081C876: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081C87B: lea esi, var_6C
0081C87E: mov edi, esp
0081C880: movsd 
0081C881: movsd 
0081C882: movsd 
0081C883: movsd 
0081C884: push 00000010h
0081C886: pop eax
0081C887: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081C88C: lea esi, var_0000008C
0081C892: mov edi, esp
0081C894: movsd 
0081C895: movsd 
0081C896: movsd 
0081C897: movsd 
0081C898: push 00000010h
0081C89A: pop eax
0081C89B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081C8A0: lea esi, var_000000AC
0081C8A6: mov edi, esp
0081C8A8: movsd 
0081C8A9: movsd 
0081C8AA: movsd 
0081C8AB: movsd 
0081C8AC: push 00000004h
0081C8AE: push 80011002h
0081C8B3: mov eax, [ebp+08h]
0081C8B6: mov eax, [eax]
0081C8B8: push [ebp+08h]
0081C8BB: call [eax+0000032Ch]
0081C8C1: push eax
0081C8C2: lea eax, var_28
0081C8C5: push eax
0081C8C6: call 00410A84h ; Set (object)
0081C8CB: push eax
0081C8CC: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0081C8D1: add esp, 0000004Ch
0081C8D4: lea eax, var_28
0081C8D7: push eax
0081C8D8: lea eax, var_24
0081C8DB: push eax
0081C8DC: push 00000002h
0081C8DE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081C8E3: add esp, 0000000Ch
0081C8E6: mov var_04, 00000004h
0081C8ED: push 00000000h
0081C8EF: push 80010006h
0081C8F4: mov eax, [ebp+08h]
0081C8F7: mov eax, [eax]
0081C8F9: push [ebp+08h]
0081C8FC: call [eax+0000032Ch]
0081C902: push eax
0081C903: lea eax, var_24
0081C906: push eax
0081C907: call 00410A84h ; Set (object)
0081C90C: push eax
0081C90D: lea eax, var_3C
0081C910: push eax
0081C911: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081C916: add esp, 00000010h
0081C919: lea eax, var_000000C0
0081C91F: push eax
0081C920: mov eax, [ebp+08h]
0081C923: mov eax, [eax]
0081C925: push [ebp+08h]
0081C928: call [eax+00000080h]
0081C92E: fclex 
0081C930: mov var_000000CC, eax
0081C936: cmp var_000000CC, 00000000h
0081C93D: jnl 81C95Fh
0081C93F: push 00000080h
0081C944: push 00445198h
0081C949: push [ebp+08h]
0081C94C: push var_000000CC
0081C952: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081C957: mov var_00000104, eax
0081C95D: jmp 81C966h
0081C95F: and var_00000104, 00000000h
0081C966: mov eax, [ebp+08h]
0081C969: mov eax, [eax]
0081C96B: push [ebp+08h]
0081C96E: call [eax+000002FCh]
0081C974: push eax
0081C975: lea eax, var_28
0081C978: push eax
0081C979: call 00410A84h ; Set (object)
0081C97E: mov var_000000D0, eax
0081C984: mov var_64, 80020004h
0081C98B: mov var_6C, 0000000Ah
0081C992: fld real4 ptr var_000000C0
0081C998: fsub real4 ptr [00402BB0h]
0081C99E: fstp real4 ptr var_54
0081C9A1: fstsw ax
0081C9A3: test al, 0Dh
0081C9A5: jnz 0081CC4Bh
0081C9AB: mov var_5C, 00000004h
0081C9B2: lea eax, var_3C
0081C9B5: push eax
0081C9B6: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0081C9BB: fsub real4 ptr [00402B5Ch]
0081C9C1: fstp real4 ptr var_44
0081C9C4: fstsw ax
0081C9C6: test al, 0Dh
0081C9C8: jnz 0081CC4Bh
0081C9CE: mov var_4C, 00000004h
0081C9D5: push 00000010h
0081C9D7: pop eax
0081C9D8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081C9DD: lea esi, var_6C
0081C9E0: mov edi, esp
0081C9E2: movsd 
0081C9E3: movsd 
0081C9E4: movsd 
0081C9E5: movsd 
0081C9E6: push 00000010h
0081C9E8: pop eax
0081C9E9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081C9EE: lea esi, var_5C
0081C9F1: mov edi, esp
0081C9F3: movsd 
0081C9F4: movsd 
0081C9F5: movsd 
0081C9F6: movsd 
0081C9F7: push 00000010h
0081C9F9: pop eax
0081C9FA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081C9FF: lea esi, var_4C
0081CA02: mov edi, esp
0081CA04: movsd 
0081CA05: movsd 
0081CA06: movsd 
0081CA07: movsd 
0081CA08: fldz 
0081CA0A: push ecx
0081CA0B: fstp real4 ptr [esp]
0081CA0E: mov eax, var_000000D0
0081CA14: mov eax, [eax]
0081CA16: push var_000000D0
0081CA1C: call [eax+00000178h]
0081CA22: fclex 
0081CA24: mov var_000000D4, eax
0081CA2A: cmp var_000000D4, 00000000h
0081CA31: jnl 81CA56h
0081CA33: push 00000178h
0081CA38: push 00447A30h
0081CA3D: push var_000000D0
0081CA43: push var_000000D4
0081CA49: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081CA4E: mov var_00000108, eax
0081CA54: jmp 81CA5Dh
0081CA56: and var_00000108, 00000000h
0081CA5D: lea eax, var_28
0081CA60: push eax
0081CA61: lea eax, var_24
0081CA64: push eax
0081CA65: push 00000002h
0081CA67: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081CA6C: add esp, 0000000Ch
0081CA6F: lea ecx, var_3C
0081CA72: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081CA77: mov var_04, 00000005h
0081CA7E: mov eax, [ebp+08h]
0081CA81: mov eax, [eax]
0081CA83: push [ebp+08h]
0081CA86: call [eax+00000300h]
0081CA8C: push eax
0081CA8D: lea eax, var_28
0081CA90: push eax
0081CA91: call 00410A84h ; Set (object)
0081CA96: mov var_000000CC, eax
0081CA9C: lea eax, var_000000C4
0081CAA2: push eax
0081CAA3: mov eax, var_000000CC
0081CAA9: mov eax, [eax]
0081CAAB: push var_000000CC
0081CAB1: call [eax+78h]
0081CAB4: fclex 
0081CAB6: mov var_000000D0, eax
0081CABC: cmp var_000000D0, 00000000h
0081CAC3: jnl 81CAE5h
0081CAC5: push 00000078h
0081CAC7: push 0044CDB4h
0081CACC: push var_000000CC
0081CAD2: push var_000000D0
0081CAD8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081CADD: mov var_0000010C, eax
0081CAE3: jmp 81CAECh
0081CAE5: and var_0000010C, 00000000h
0081CAEC: mov eax, [ebp+08h]
0081CAEF: mov eax, [eax]
0081CAF1: push [ebp+08h]
0081CAF4: call [eax+00000300h]
0081CAFA: push eax
0081CAFB: lea eax, var_2C
0081CAFE: push eax
0081CAFF: call 00410A84h ; Set (object)
0081CB04: mov var_000000DC, eax
0081CB0A: mov eax, [ebp+08h]
0081CB0D: mov eax, [eax]
0081CB0F: push [ebp+08h]
0081CB12: call [eax+000002FCh]
0081CB18: push eax
0081CB19: lea eax, var_24
0081CB1C: push eax
0081CB1D: call 00410A84h ; Set (object)
0081CB22: mov var_000000D4, eax
0081CB28: lea eax, var_000000C0
0081CB2E: push eax
0081CB2F: mov eax, var_000000D4
0081CB35: mov eax, [eax]
0081CB37: push var_000000D4
0081CB3D: call [eax+00000080h]
0081CB43: fclex 
0081CB45: mov var_000000D8, eax
0081CB4B: cmp var_000000D8, 00000000h
0081CB52: jnl 81CB77h
0081CB54: push 00000080h
0081CB59: push 00447A30h
0081CB5E: push var_000000D4
0081CB64: push var_000000D8
0081CB6A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081CB6F: mov var_00000110, eax
0081CB75: jmp 81CB7Eh
0081CB77: and var_00000110, 00000000h
0081CB7E: fld real4 ptr var_000000C0
0081CB84: fsub real4 ptr [00402BA4h]
0081CB8A: fsub real4 ptr var_000000C4
0081CB90: fstsw ax
0081CB92: test al, 0Dh
0081CB94: jnz 0081CC4Bh
0081CB9A: push ecx
0081CB9B: fstp real4 ptr [esp]
0081CB9E: mov eax, var_000000DC
0081CBA4: mov eax, [eax]
0081CBA6: push var_000000DC
0081CBAC: call [eax+6Ch]
0081CBAF: fclex 
0081CBB1: mov var_000000E0, eax
0081CBB7: cmp var_000000E0, 00000000h
0081CBBE: jnl 81CBE0h
0081CBC0: push 0000006Ch
0081CBC2: push 0044CDB4h
0081CBC7: push var_000000DC
0081CBCD: push var_000000E0
0081CBD3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081CBD8: mov var_00000114, eax
0081CBDE: jmp 81CBE7h
0081CBE0: and var_00000114, 00000000h
0081CBE7: lea eax, var_2C
0081CBEA: push eax
0081CBEB: lea eax, var_28
0081CBEE: push eax
0081CBEF: lea eax, var_24
0081CBF2: push eax
0081CBF3: push 00000003h
0081CBF5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081CBFA: add esp, 00000010h
0081CBFD: mov var_10, 00000000h
0081CC04: wait 
0081CC05: push 0081CC2Ch
0081CC0A: jmp 81CC2Bh
0081CC0C: lea eax, var_2C
0081CC0F: push eax
0081CC10: lea eax, var_28
0081CC13: push eax
0081CC14: lea eax, var_24
0081CC17: push eax
0081CC18: push 00000003h
0081CC1A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081CC1F: add esp, 00000010h
0081CC22: lea ecx, var_3C
0081CC25: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081CC2A: ret 
End Sub

Private sub Form__81CC50
0081CC50: push ebp
0081CC51: mov ebp, esp
0081CC53: sub esp, 0000000Ch
0081CC56: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081CC5B: mov eax, fs:[00h]
0081CC61: push eax
0081CC62: mov fs:[00000000h], esp
0081CC69: push 00000034h
0081CC6B: pop eax
0081CC6C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081CC71: push ebx
0081CC72: push esi
0081CC73: push edi
0081CC74: mov var_0C, esp
0081CC77: mov var_08, 0040AF88h
0081CC7E: mov eax, [ebp+08h]
0081CC81: and eax, 00000001h
0081CC84: mov var_04, eax
0081CC87: mov eax, [ebp+08h]
0081CC8A: and al, FEh
0081CC8C: mov [ebp+08h], eax
0081CC8F: mov eax, [ebp+08h]
0081CC92: mov eax, [eax]
0081CC94: push [ebp+08h]
0081CC97: call [eax+04h]
0081CC9A: lea eax, var_18
0081CC9D: push eax
0081CC9E: mov eax, [ebp+08h]
0081CCA1: mov eax, [eax]
0081CCA3: push [ebp+08h]
0081CCA6: call [eax+000001C0h]
0081CCAC: fclex 
0081CCAE: mov var_3C, eax
0081CCB1: cmp var_3C, 00000000h
0081CCB5: jnl 81CCD1h
0081CCB7: push 000001C0h
0081CCBC: push 00445198h
0081CCC1: push [ebp+08h]
0081CCC4: push var_3C
0081CCC7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081CCCC: mov var_48, eax
0081CCCF: jmp 81CCD5h
0081CCD1: and var_48, 00000000h
0081CCD5: push var_18
0081CCD8: call 004109DCh ; Val(arg_1)
0081CCDD: fstp real8 ptr var_38
0081CCE0: push 00000000h
0081CCE2: push 00000000h
0081CCE4: push 00000001h
0081CCE6: push 00000000h
0081CCE8: lea eax, var_20
0081CCEB: push eax
0081CCEC: push 00000010h
0081CCEE: push 00000880h
0081CCF3: call 00410946h ; ReDim
0081CCF8: add esp, 0000001Ch
0081CCFB: mov var_28, 00442938h
0081CD02: mov var_30, 00000008h
0081CD09: lea esi, var_30
0081CD0C: push 00000000h
0081CD0E: push var_20
0081CD11: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0081CD16: mov ecx, eax
0081CD18: mov edx, esi
0081CD1A: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0081CD1F: mov edx, 0043D714h ; x64
0081CD24: lea ecx, var_1C
0081CD27: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081CD2C: lea eax, var_20
0081CD2F: push eax
0081CD30: lea eax, var_1C
0081CD33: push eax
0081CD34: fld real8 ptr var_38
0081CD37: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0081CD3C: push eax
0081CD3D: call 007A6910h
0081CD42: lea eax, var_20
0081CD45: push eax
0081CD46: push 00000000h
0081CD48: call 00410934h ; Erase
0081CD4D: lea eax, var_1C
0081CD50: push eax
0081CD51: lea eax, var_18
0081CD54: push eax
0081CD55: push 00000002h
0081CD57: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081CD5C: add esp, 0000000Ch
0081CD5F: mov var_04, 00000000h
0081CD66: wait 
0081CD67: push 0081CD8Dh
0081CD6C: jmp 81CD8Ch
0081CD6E: lea eax, var_1C
0081CD71: push eax
0081CD72: lea eax, var_18
0081CD75: push eax
0081CD76: push 00000002h
0081CD78: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081CD7D: add esp, 0000000Ch
0081CD80: lea eax, var_20
0081CD83: push eax
0081CD84: push 00000000h
0081CD86: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0081CD8B: ret 
End Sub

Private sub txtPorts__82357A
0082357A: push ebp
0082357B: mov ebp, esp
0082357D: sub esp, 00000018h
00823580: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00823585: mov eax, fs:[00h]
0082358B: push eax
0082358C: mov fs:[00000000h], esp
00823593: mov eax, 00000098h
00823598: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082359D: push ebx
0082359E: push esi
0082359F: push edi
008235A0: mov var_18, esp
008235A3: mov var_14, 0040B0E0h
008235AA: mov eax, [ebp+08h]
008235AD: and eax, 00000001h
008235B0: mov var_10, eax
008235B3: mov eax, [ebp+08h]
008235B6: and al, FEh
008235B8: mov [ebp+08h], eax
008235BB: mov var_0C, 00000000h
008235C2: mov eax, [ebp+08h]
008235C5: mov eax, [eax]
008235C7: push [ebp+08h]
008235CA: call [eax+04h]
008235CD: mov var_04, 00000001h
008235D4: mov var_04, 00000002h
008235DB: push FFFFFFFFh
008235DD: call 00410A60h ; On Error ...
008235E2: mov var_04, 00000003h
008235E9: mov eax, [ebp+08h]
008235EC: mov eax, [eax]
008235EE: push [ebp+08h]
008235F1: call [eax+00000304h]
008235F7: push eax
008235F8: lea eax, var_2C
008235FB: push eax
008235FC: call 00410A84h ; Set (object)
00823601: mov var_78, eax
00823604: lea eax, var_24
00823607: push eax
00823608: mov eax, var_78
0082360B: mov eax, [eax]
0082360D: push var_78
00823610: call [eax+000000A0h]
00823616: fclex 
00823618: mov var_7C, eax
0082361B: cmp var_7C, 00000000h
0082361F: jnl 82363Eh
00823621: push 000000A0h
00823626: push 00440E08h
0082362B: push var_78
0082362E: push var_7C
00823631: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00823636: mov var_000000A0, eax
0082363C: jmp 823645h
0082363E: and var_000000A0, 00000000h
00823645: mov eax, [ebp+08h]
00823648: mov eax, [eax]
0082364A: push [ebp+08h]
0082364D: call [eax+00000304h]
00823653: mov var_3C, eax
00823656: mov var_44, 00000009h
0082365D: push var_24
00823660: call 0041098Eh ; Len(arg_1)
00823665: xor ebx, ebx
00823667: test eax, eax
00823669: setnle bl
0082366C: neg ebx
0082366E: lea eax, var_44
00823671: push eax
00823672: call 004109EEh ; IsNumeric(arg_1)
00823677: neg ax
0082367A: sbb eax, eax
0082367C: inc eax
0082367D: neg eax
0082367F: and bx, ax
00823682: mov var_80, bx
00823686: lea ecx, var_24
00823689: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082368E: lea ecx, var_2C
00823691: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00823696: lea ecx, var_44
00823699: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082369E: movsx eax, word ptr var_80
008236A2: test eax, eax
008236A4: jz 0082381Dh
008236AA: mov var_04, 00000004h
008236B1: mov eax, [ebp+08h]
008236B4: mov eax, [eax]
008236B6: push [ebp+08h]
008236B9: call [eax+00000304h]
008236BF: push eax
008236C0: lea eax, var_34
008236C3: push eax
008236C4: call 00410A84h ; Set (object)
008236C9: mov eax, [ebp+08h]
008236CC: mov eax, [eax]
008236CE: push [ebp+08h]
008236D1: call [eax+00000304h]
008236D7: push eax
008236D8: lea eax, var_30
008236DB: push eax
008236DC: call 00410A84h ; Set (object)
008236E1: mov var_80, eax
008236E4: mov eax, [ebp+08h]
008236E7: mov eax, [eax]
008236E9: push [ebp+08h]
008236EC: call [eax+00000304h]
008236F2: push eax
008236F3: lea eax, var_2C
008236F6: push eax
008236F7: call 00410A84h ; Set (object)
008236FC: mov var_78, eax
008236FF: lea eax, var_24
00823702: push eax
00823703: mov eax, var_78
00823706: mov eax, [eax]
00823708: push var_78
0082370B: call [eax+000000A0h]
00823711: fclex 
00823713: mov var_7C, eax
00823716: cmp var_7C, 00000000h
0082371A: jnl 823739h
0082371C: push 000000A0h
00823721: push 00440E08h
00823726: push var_78
00823729: push var_7C
0082372C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00823731: mov var_000000A4, eax
00823737: jmp 823740h
00823739: and var_000000A4, 00000000h
00823740: push var_24
00823743: call 0041098Eh ; Len(arg_1)
00823748: sub eax, 00000001h
0082374B: jo 00823A51h
00823751: mov var_4C, eax
00823754: mov var_54, 00000003h
0082375B: mov eax, var_34
0082375E: mov var_0000009C, eax
00823764: and var_34, 00000000h
00823768: mov eax, var_0000009C
0082376E: mov var_3C, eax
00823771: mov var_44, 00000009h
00823778: lea eax, var_54
0082377B: push eax
0082377C: push 00000001h
0082377E: lea eax, var_44
00823781: push eax
00823782: lea eax, var_64
00823785: push eax
00823786: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
0082378B: lea eax, var_64
0082378E: push eax
0082378F: lea eax, var_28
00823792: push eax
00823793: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
00823798: push eax
00823799: mov eax, var_80
0082379C: mov eax, [eax]
0082379E: push var_80
008237A1: call [eax+000000A4h]
008237A7: fclex 
008237A9: mov var_00000084, eax
008237AF: cmp var_00000084, 00000000h
008237B6: jnl 8237D8h
008237B8: push 000000A4h
008237BD: push 00440E08h
008237C2: push var_80
008237C5: push var_00000084
008237CB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008237D0: mov var_000000A8, eax
008237D6: jmp 8237DFh
008237D8: and var_000000A8, 00000000h
008237DF: lea eax, var_28
008237E2: push eax
008237E3: lea eax, var_24
008237E6: push eax
008237E7: push 00000002h
008237E9: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008237EE: add esp, 0000000Ch
008237F1: lea eax, var_34
008237F4: push eax
008237F5: lea eax, var_30
008237F8: push eax
008237F9: lea eax, var_2C
008237FC: push eax
008237FD: push 00000003h
008237FF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00823804: add esp, 00000010h
00823807: lea eax, var_64
0082380A: push eax
0082380B: lea eax, var_54
0082380E: push eax
0082380F: lea eax, var_44
00823812: push eax
00823813: push 00000003h
00823815: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082381A: add esp, 00000010h
0082381D: mov var_04, 00000006h
00823824: mov var_3C, 80020004h
0082382B: mov var_44, 0000000Ah
00823832: lea eax, var_44
00823835: push eax
00823836: push 0044AED4h ; {End}
0082383B: call 00410736h ; SendKeys
00823840: lea ecx, var_44
00823843: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00823848: mov var_04, 00000007h
0082384F: mov eax, [ebp+08h]
00823852: mov eax, [eax]
00823854: push [ebp+08h]
00823857: call [eax+00000304h]
0082385D: push eax
0082385E: lea eax, var_2C
00823861: push eax
00823862: call 00410A84h ; Set (object)
00823867: mov var_78, eax
0082386A: push 00000005h
0082386C: mov eax, var_78
0082386F: mov eax, [eax]
00823871: push var_78
00823874: call [eax+00000174h]
0082387A: fclex 
0082387C: mov var_7C, eax
0082387F: cmp var_7C, 00000000h
00823883: jnl 8238A2h
00823885: push 00000174h
0082388A: push 00440E08h
0082388F: push var_78
00823892: push var_7C
00823895: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082389A: mov var_000000AC, eax
008238A0: jmp 8238A9h
008238A2: and var_000000AC, 00000000h
008238A9: lea ecx, var_2C
008238AC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008238B1: mov var_04, 00000008h
008238B8: mov eax, [ebp+08h]
008238BB: mov eax, [eax]
008238BD: push [ebp+08h]
008238C0: call [eax+00000304h]
008238C6: push eax
008238C7: lea eax, var_2C
008238CA: push eax
008238CB: call 00410A84h ; Set (object)
008238D0: mov var_78, eax
008238D3: lea eax, var_24
008238D6: push eax
008238D7: mov eax, var_78
008238DA: mov eax, [eax]
008238DC: push var_78
008238DF: call [eax+000000A0h]
008238E5: fclex 
008238E7: mov var_7C, eax
008238EA: cmp var_7C, 00000000h
008238EE: jnl 82390Dh
008238F0: push 000000A0h
008238F5: push 00440E08h
008238FA: push var_78
008238FD: push var_7C
00823900: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00823905: mov var_000000B0, eax
0082390B: jmp 823914h
0082390D: and var_000000B0, 00000000h
00823914: push var_24
00823917: call 00410754h ; msvbvm60.dll.__vbaR8Str
0082391C: fcomp real8 ptr [0040B130h]
00823922: fstsw ax
00823924: sahf 
00823925: jb 823933h
00823927: mov var_000000B4, 00000001h
00823931: jmp 82393Ah
00823933: and var_000000B4, 00000000h
0082393A: mov eax, var_000000B4
00823940: neg eax
00823942: mov var_80, ax
00823946: lea ecx, var_24
00823949: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0082394E: lea ecx, var_2C
00823951: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00823956: movsx eax, word ptr var_80
0082395A: test eax, eax
0082395C: jz 008239E3h
00823962: mov var_04, 00000009h
00823969: mov eax, [ebp+08h]
0082396C: mov eax, [eax]
0082396E: push [ebp+08h]
00823971: call [eax+00000304h]
00823977: push eax
00823978: lea eax, var_2C
0082397B: push eax
0082397C: call 00410A84h ; Set (object)
00823981: mov var_78, eax
00823984: push 00000000h
00823986: call 00410964h ; msvbvm60.dll.__vbaStrI2
0082398B: mov edx, eax
0082398D: lea ecx, var_24
00823990: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00823995: push eax
00823996: mov eax, var_78
00823999: mov eax, [eax]
0082399B: push var_78
0082399E: call [eax+000000A4h]
008239A4: fclex 
008239A6: mov var_7C, eax
008239A9: cmp var_7C, 00000000h
008239AD: jnl 8239CCh
008239AF: push 000000A4h
008239B4: push 00440E08h
008239B9: push var_78
008239BC: push var_7C
008239BF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008239C4: mov var_000000B8, eax
008239CA: jmp 8239D3h
008239CC: and var_000000B8, 00000000h
008239D3: lea ecx, var_24
008239D6: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008239DB: lea ecx, var_2C
008239DE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008239E3: mov var_10, 00000000h
008239EA: wait 
008239EB: push 00823A32h
008239F0: jmp 823A31h
008239F2: lea eax, var_28
008239F5: push eax
008239F6: lea eax, var_24
008239F9: push eax
008239FA: push 00000002h
008239FC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00823A01: add esp, 0000000Ch
00823A04: lea eax, var_34
00823A07: push eax
00823A08: lea eax, var_30
00823A0B: push eax
00823A0C: lea eax, var_2C
00823A0F: push eax
00823A10: push 00000003h
00823A12: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00823A17: add esp, 00000010h
00823A1A: lea eax, var_64
00823A1D: push eax
00823A1E: lea eax, var_54
00823A21: push eax
00823A22: lea eax, var_44
00823A25: push eax
00823A26: push 00000003h
00823A28: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00823A2D: add esp, 00000010h
00823A30: ret 
End Sub

Private sub cmdStart__81BF9D
0081BF9D: push ebp
0081BF9E: mov ebp, esp
0081BFA0: sub esp, 0000000Ch
0081BFA3: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081BFA8: mov eax, fs:[00h]
0081BFAE: push eax
0081BFAF: mov fs:[00000000h], esp
0081BFB6: mov eax, 000000D0h
0081BFBB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081BFC0: push ebx
0081BFC1: push esi
0081BFC2: push edi
0081BFC3: mov var_0C, esp
0081BFC6: mov var_08, 0040AF30h
0081BFCD: mov eax, [ebp+08h]
0081BFD0: and eax, 00000001h
0081BFD3: mov var_04, eax
0081BFD6: mov eax, [ebp+08h]
0081BFD9: and al, FEh
0081BFDB: mov [ebp+08h], eax
0081BFDE: mov eax, [ebp+08h]
0081BFE1: mov eax, [eax]
0081BFE3: push [ebp+08h]
0081BFE6: call [eax+04h]
0081BFE9: mov eax, [ebp+08h]
0081BFEC: mov eax, [eax]
0081BFEE: push [ebp+08h]
0081BFF1: call [eax+00000300h]
0081BFF7: push eax
0081BFF8: lea eax, var_24
0081BFFB: push eax
0081BFFC: call 00410A84h ; Set (object)
0081C001: mov var_000000B4, eax
0081C007: lea eax, var_18
0081C00A: push eax
0081C00B: mov eax, var_000000B4
0081C011: mov eax, [eax]
0081C013: push var_000000B4
0081C019: call [eax+50h]
0081C01C: fclex 
0081C01E: mov var_000000B8, eax
0081C024: cmp var_000000B8, 00000000h
0081C02B: jnl 81C04Dh
0081C02D: push 00000050h
0081C02F: push 0044CDB4h
0081C034: push var_000000B4
0081C03A: push var_000000B8
0081C040: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081C045: mov var_000000CC, eax
0081C04B: jmp 81C054h
0081C04D: and var_000000CC, 00000000h
0081C054: push var_18
0081C057: push 0044CE10h ; Start
0081C05C: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0081C061: neg eax
0081C063: sbb eax, eax
0081C065: inc eax
0081C066: neg eax
0081C068: mov var_000000BC, ax
0081C06F: lea ecx, var_18
0081C072: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0081C077: lea ecx, var_24
0081C07A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081C07F: movsx eax, word ptr var_000000BC
0081C086: test eax, eax
0081C088: jz 0081C3E0h
0081C08E: mov eax, [ebp+08h]
0081C091: mov eax, [eax]
0081C093: push [ebp+08h]
0081C096: call [eax+00000310h]
0081C09C: push eax
0081C09D: lea eax, var_24
0081C0A0: push eax
0081C0A1: call 00410A84h ; Set (object)
0081C0A6: mov var_000000B4, eax
0081C0AC: lea eax, var_18
0081C0AF: push eax
0081C0B0: mov eax, var_000000B4
0081C0B6: mov eax, [eax]
0081C0B8: push var_000000B4
0081C0BE: call [eax+000000A8h]
0081C0C4: fclex 
0081C0C6: mov var_000000B8, eax
0081C0CC: cmp var_000000B8, 00000000h
0081C0D3: jnl 81C0F8h
0081C0D5: push 000000A8h
0081C0DA: push 0044C944h
0081C0DF: push var_000000B4
0081C0E5: push var_000000B8
0081C0EB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081C0F0: mov var_000000D0, eax
0081C0F6: jmp 81C0FFh
0081C0F8: and var_000000D0, 00000000h
0081C0FF: push var_18
0081C102: push 00441194h ; N/A
0081C107: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0081C10C: neg eax
0081C10E: sbb eax, eax
0081C110: inc eax
0081C111: neg eax
0081C113: mov var_000000BC, ax
0081C11A: lea ecx, var_18
0081C11D: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0081C122: lea ecx, var_24
0081C125: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081C12A: movsx eax, word ptr var_000000BC
0081C131: test eax, eax
0081C133: jz 81C1A9h
0081C135: mov var_5C, 80020004h
0081C13C: mov var_64, 0000000Ah
0081C143: mov var_4C, 80020004h
0081C14A: mov var_54, 0000000Ah
0081C151: mov var_3C, 80020004h
0081C158: mov var_44, 0000000Ah
0081C15F: mov var_70, 00453C30h ; Unsupported interface!
0081C166: mov var_78, 00000008h
0081C16D: lea edx, var_78
0081C170: lea ecx, var_34
0081C173: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0081C178: lea eax, var_64
0081C17B: push eax
0081C17C: lea eax, var_54
0081C17F: push eax
0081C180: lea eax, var_44
0081C183: push eax
0081C184: push 00000030h
0081C186: lea eax, var_34
0081C189: push eax
0081C18A: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0081C18F: lea eax, var_64
0081C192: push eax
0081C193: lea eax, var_54
0081C196: push eax
0081C197: lea eax, var_44
0081C19A: push eax
0081C19B: lea eax, var_34
0081C19E: push eax
0081C19F: push 00000004h
0081C1A1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0081C1A6: add esp, 00000014h
0081C1A9: lea eax, var_18
0081C1AC: push eax
0081C1AD: mov eax, [ebp+08h]
0081C1B0: mov eax, [eax]
0081C1B2: push [ebp+08h]
0081C1B5: call [eax+000001C0h]
0081C1BB: fclex 
0081C1BD: mov var_000000B4, eax
0081C1C3: cmp var_000000B4, 00000000h
0081C1CA: jnl 81C1ECh
0081C1CC: push 000001C0h
0081C1D1: push 00445198h
0081C1D6: push [ebp+08h]
0081C1D9: push var_000000B4
0081C1DF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081C1E4: mov var_000000D4, eax
0081C1EA: jmp 81C1F3h
0081C1EC: and var_000000D4, 00000000h
0081C1F3: push var_18
0081C1F6: call 004109DCh ; Val(arg_1)
0081C1FB: fstp real8 ptr var_000000B0
0081C201: push 00000000h
0081C203: push 00000002h
0081C205: push 00000001h
0081C207: push 00000000h
0081C209: lea eax, var_68
0081C20C: push eax
0081C20D: push 00000010h
0081C20F: push 00000880h
0081C214: call 00410946h ; ReDim
0081C219: add esp, 0000001Ch
0081C21C: mov eax, [ebp+08h]
0081C21F: mov eax, [eax]
0081C221: push [ebp+08h]
0081C224: call [eax+00000310h]
0081C22A: push eax
0081C22B: lea eax, var_24
0081C22E: push eax
0081C22F: call 00410A84h ; Set (object)
0081C234: mov var_000000B8, eax
0081C23A: lea eax, var_1C
0081C23D: push eax
0081C23E: mov eax, var_000000B8
0081C244: mov eax, [eax]
0081C246: push var_000000B8
0081C24C: call [eax+000000A8h]
0081C252: fclex 
0081C254: mov var_000000BC, eax
0081C25A: cmp var_000000BC, 00000000h
0081C261: jnl 81C286h
0081C263: push 000000A8h
0081C268: push 0044C944h
0081C26D: push var_000000B8
0081C273: push var_000000BC
0081C279: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081C27E: mov var_000000D8, eax
0081C284: jmp 81C28Dh
0081C286: and var_000000D8, 00000000h
0081C28D: mov eax, var_1C
0081C290: mov var_000000C8, eax
0081C296: and var_1C, 00000000h
0081C29A: mov eax, var_000000C8
0081C2A0: mov var_2C, eax
0081C2A3: mov var_34, 00000008h
0081C2AA: lea esi, var_34
0081C2AD: push 00000000h
0081C2AF: push var_68
0081C2B2: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0081C2B7: mov ecx, eax
0081C2B9: mov edx, esi
0081C2BB: call 00410940h ; msvbvm60.dll.__vbaVarZero
0081C2C0: mov eax, [ebp+08h]
0081C2C3: mov eax, [eax]
0081C2C5: push [ebp+08h]
0081C2C8: call [eax+00000308h]
0081C2CE: mov var_3C, eax
0081C2D1: mov var_44, 00000009h
0081C2D8: lea esi, var_44
0081C2DB: push 00000001h
0081C2DD: push var_68
0081C2E0: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0081C2E5: mov ecx, eax
0081C2E7: mov edx, esi
0081C2E9: call 00410940h ; msvbvm60.dll.__vbaVarZero
0081C2EE: mov eax, [ebp+08h]
0081C2F1: mov eax, [eax]
0081C2F3: push [ebp+08h]
0081C2F6: call [eax+00000304h]
0081C2FC: mov var_4C, eax
0081C2FF: mov var_54, 00000009h
0081C306: lea esi, var_54
0081C309: push 00000002h
0081C30B: push var_68
0081C30E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0081C313: mov ecx, eax
0081C315: mov edx, esi
0081C317: call 00410940h ; msvbvm60.dll.__vbaVarZero
0081C31C: mov edx, 0043D708h ; x63
0081C321: lea ecx, var_20
0081C324: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081C329: lea eax, var_68
0081C32C: push eax
0081C32D: lea eax, var_20
0081C330: push eax
0081C331: fld real8 ptr var_000000B0
0081C337: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0081C33C: push eax
0081C33D: call 007A6910h
0081C342: lea eax, var_68
0081C345: push eax
0081C346: push 00000000h
0081C348: call 00410934h ; Erase
0081C34D: lea eax, var_20
0081C350: push eax
0081C351: lea eax, var_18
0081C354: push eax
0081C355: push 00000002h
0081C357: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081C35C: add esp, 0000000Ch
0081C35F: lea ecx, var_24
0081C362: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081C367: mov eax, [ebp+08h]
0081C36A: mov eax, [eax]
0081C36C: push [ebp+08h]
0081C36F: call [eax+00000300h]
0081C375: push eax
0081C376: lea eax, var_24
0081C379: push eax
0081C37A: call 00410A84h ; Set (object)
0081C37F: mov var_000000B4, eax
0081C385: push 004411ECh ; Stop
0081C38A: mov eax, var_000000B4
0081C390: mov eax, [eax]
0081C392: push var_000000B4
0081C398: call [eax+54h]
0081C39B: fclex 
0081C39D: mov var_000000B8, eax
0081C3A3: cmp var_000000B8, 00000000h
0081C3AA: jnl 81C3CCh
0081C3AC: push 00000054h
0081C3AE: push 0044CDB4h
0081C3B3: push var_000000B4
0081C3B9: push var_000000B8
0081C3BF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081C3C4: mov var_000000DC, eax
0081C3CA: jmp 81C3D3h
0081C3CC: and var_000000DC, 00000000h
0081C3D3: lea ecx, var_24
0081C3D6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081C3DB: jmp 0081C52Eh
0081C3E0: lea eax, var_18
0081C3E3: push eax
0081C3E4: mov eax, [ebp+08h]
0081C3E7: mov eax, [eax]
0081C3E9: push [ebp+08h]
0081C3EC: call [eax+000001C0h]
0081C3F2: fclex 
0081C3F4: mov var_000000B4, eax
0081C3FA: cmp var_000000B4, 00000000h
0081C401: jnl 81C423h
0081C403: push 000001C0h
0081C408: push 00445198h
0081C40D: push [ebp+08h]
0081C410: push var_000000B4
0081C416: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081C41B: mov var_000000E0, eax
0081C421: jmp 81C42Ah
0081C423: and var_000000E0, 00000000h
0081C42A: push var_18
0081C42D: call 004109DCh ; Val(arg_1)
0081C432: fstp real8 ptr var_000000B0
0081C438: push 00000000h
0081C43A: push 00000000h
0081C43C: push 00000001h
0081C43E: push 00000000h
0081C440: lea eax, var_68
0081C443: push eax
0081C444: push 00000010h
0081C446: push 00000880h
0081C44B: call 00410946h ; ReDim
0081C450: add esp, 0000001Ch
0081C453: mov var_70, 00442938h
0081C45A: mov var_78, 00000008h
0081C461: lea esi, var_78
0081C464: push 00000000h
0081C466: push var_68
0081C469: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0081C46E: mov ecx, eax
0081C470: mov edx, esi
0081C472: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0081C477: mov edx, 0043D714h ; x64
0081C47C: lea ecx, var_1C
0081C47F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081C484: lea eax, var_68
0081C487: push eax
0081C488: lea eax, var_1C
0081C48B: push eax
0081C48C: fld real8 ptr var_000000B0
0081C492: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0081C497: push eax
0081C498: call 007A6910h
0081C49D: lea eax, var_68
0081C4A0: push eax
0081C4A1: push 00000000h
0081C4A3: call 00410934h ; Erase
0081C4A8: lea eax, var_1C
0081C4AB: push eax
0081C4AC: lea eax, var_18
0081C4AF: push eax
0081C4B0: push 00000002h
0081C4B2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081C4B7: add esp, 0000000Ch
0081C4BA: mov eax, [ebp+08h]
0081C4BD: mov eax, [eax]
0081C4BF: push [ebp+08h]
0081C4C2: call [eax+00000300h]
0081C4C8: push eax
0081C4C9: lea eax, var_24
0081C4CC: push eax
0081C4CD: call 00410A84h ; Set (object)
0081C4D2: mov var_000000B4, eax
0081C4D8: push 0044CE10h ; Start
0081C4DD: mov eax, var_000000B4
0081C4E3: mov eax, [eax]
0081C4E5: push var_000000B4
0081C4EB: call [eax+54h]
0081C4EE: fclex 
0081C4F0: mov var_000000B8, eax
0081C4F6: cmp var_000000B8, 00000000h
0081C4FD: jnl 81C51Fh
0081C4FF: push 00000054h
0081C501: push 0044CDB4h
0081C506: push var_000000B4
0081C50C: push var_000000B8
0081C512: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081C517: mov var_000000E4, eax
0081C51D: jmp 81C526h
0081C51F: and var_000000E4, 00000000h
0081C526: lea ecx, var_24
0081C529: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081C52E: mov var_04, 00000000h
0081C535: wait 
0081C536: push 0081C582h
0081C53B: jmp 81C581h
0081C53D: lea eax, var_20
0081C540: push eax
0081C541: lea eax, var_1C
0081C544: push eax
0081C545: lea eax, var_18
0081C548: push eax
0081C549: push 00000003h
0081C54B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081C550: add esp, 00000010h
0081C553: lea ecx, var_24
0081C556: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081C55B: lea eax, var_64
0081C55E: push eax
0081C55F: lea eax, var_54
0081C562: push eax
0081C563: lea eax, var_44
0081C566: push eax
0081C567: lea eax, var_34
0081C56A: push eax
0081C56B: push 00000004h
0081C56D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0081C572: add esp, 00000014h
0081C575: lea eax, var_68
0081C578: push eax
0081C579: push 00000000h
0081C57B: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0081C580: ret 
End Sub

Private sub lstCaptured__81CDAC
0081CDAC: push ebp
0081CDAD: mov ebp, esp
0081CDAF: sub esp, 0000000Ch
0081CDB2: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081CDB7: mov eax, fs:[00h]
0081CDBD: push eax
0081CDBE: mov fs:[00000000h], esp
0081CDC5: push 00000008h
0081CDC7: pop eax
0081CDC8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081CDCD: push ebx
0081CDCE: push esi
0081CDCF: push edi
0081CDD0: mov var_0C, esp
0081CDD3: mov var_08, 0040AF98h
0081CDDA: mov eax, [ebp+08h]
0081CDDD: and eax, 00000001h
0081CDE0: mov var_04, eax
0081CDE3: mov eax, [ebp+08h]
0081CDE6: and al, FEh
0081CDE8: mov [ebp+08h], eax
0081CDEB: mov eax, [ebp+08h]
0081CDEE: mov eax, [eax]
0081CDF0: push [ebp+08h]
0081CDF3: call [eax+04h]
0081CDF6: mov eax, [ebp+0Ch]
0081CDF9: or word ptr [eax], FFFFh
0081CDFD: mov var_04, 00000000h
0081CE04: mov eax, [ebp+08h]
0081CE07: mov eax, [eax]
0081CE09: push [ebp+08h]
0081CE0C: call [eax+08h]
0081CE0F: mov eax, var_04
0081CE12: mov ecx, var_14
0081CE15: mov fs:[00000000h], ecx
0081CE1C: pop edi
0081CE1D: pop esi
0081CE1E: pop ebx
0081CE1F: leave 
0081CE20: retn 0008h
End Sub

Private sub lstCaptured__81CE23
0081CE23: push ebp
0081CE24: mov ebp, esp
0081CE26: sub esp, 00000018h
0081CE29: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081CE2E: mov eax, fs:[00h]
0081CE34: push eax
0081CE35: mov fs:[00000000h], esp
0081CE3C: mov eax, 0000008Ch
0081CE41: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081CE46: push ebx
0081CE47: push esi
0081CE48: push edi
0081CE49: mov var_18, esp
0081CE4C: mov var_14, 0040AFA0h
0081CE53: mov eax, [ebp+08h]
0081CE56: and eax, 00000001h
0081CE59: mov var_10, eax
0081CE5C: mov eax, [ebp+08h]
0081CE5F: and al, FEh
0081CE61: mov [ebp+08h], eax
0081CE64: mov var_0C, 00000000h
0081CE6B: mov eax, [ebp+08h]
0081CE6E: mov eax, [eax]
0081CE70: push [ebp+08h]
0081CE73: call [eax+04h]
0081CE76: mov var_04, 00000001h
0081CE7D: push [ebp+0Ch]
0081CE80: lea eax, var_24
0081CE83: push eax
0081CE84: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0081CE89: mov var_04, 00000002h
0081CE90: push FFFFFFFFh
0081CE92: call 00410A60h ; On Error ...
0081CE97: mov var_04, 00000003h
0081CE9E: lea eax, var_60
0081CEA1: push eax
0081CEA2: mov eax, var_24
0081CEA5: mov eax, [eax]
0081CEA7: push var_24
0081CEAA: call [eax+34h]
0081CEAD: fclex 
0081CEAF: mov var_6C, eax
0081CEB2: cmp var_6C, 00000000h
0081CEB6: jnl 81CED2h
0081CEB8: push 00000034h
0081CEBA: push 00450154h
0081CEBF: push var_24
0081CEC2: push var_6C
0081CEC5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081CECA: mov var_00000094, eax
0081CED0: jmp 81CED9h
0081CED2: and var_00000094, 00000000h
0081CED9: lea eax, var_64
0081CEDC: push eax
0081CEDD: mov eax, var_24
0081CEE0: mov eax, [eax]
0081CEE2: push var_24
0081CEE5: call [eax+34h]
0081CEE8: fclex 
0081CEEA: mov var_70, eax
0081CEED: cmp var_70, 00000000h
0081CEF1: jnl 81CF0Dh
0081CEF3: push 00000034h
0081CEF5: push 00450154h
0081CEFA: push var_24
0081CEFD: push var_70
0081CF00: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081CF05: mov var_00000098, eax
0081CF0B: jmp 81CF14h
0081CF0D: and var_00000098, 00000000h
0081CF14: lea eax, var_68
0081CF17: push eax
0081CF18: mov eax, var_24
0081CF1B: mov eax, [eax]
0081CF1D: push var_24
0081CF20: call [eax+34h]
0081CF23: fclex 
0081CF25: mov var_74, eax
0081CF28: cmp var_74, 00000000h
0081CF2C: jnl 81CF48h
0081CF2E: push 00000034h
0081CF30: push 00450154h
0081CF35: push var_24
0081CF38: push var_74
0081CF3B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081CF40: mov var_0000009C, eax
0081CF46: jmp 81CF4Fh
0081CF48: and var_0000009C, 00000000h
0081CF4F: xor eax, eax
0081CF51: cmp var_60, 00000003h
0081CF55: setnz al
0081CF58: xor ecx, ecx
0081CF5A: cmp var_64, 00000005h
0081CF5E: setnz cl
0081CF61: and eax, ecx
0081CF63: neg eax
0081CF65: sbb eax, eax
0081CF67: neg eax
0081CF69: xor ecx, ecx
0081CF6B: cmp var_68, 00000006h
0081CF6F: setnz cl
0081CF72: and eax, ecx
0081CF74: test eax, eax
0081CF76: jnz 0081D0F9h
0081CF7C: mov var_04, 00000004h
0081CF83: cmp word ptr [008F2404h], FFFFh
0081CF8B: jnz 0081D045h
0081CF91: mov var_04, 00000005h
0081CF98: mov eax, [ebp+08h]
0081CF9B: mov eax, [eax]
0081CF9D: push [ebp+08h]
0081CFA0: call [eax+0000032Ch]
0081CFA6: push eax
0081CFA7: lea eax, var_2C
0081CFAA: push eax
0081CFAB: call 00410A84h ; Set (object)
0081CFB0: lea eax, var_60
0081CFB3: push eax
0081CFB4: mov eax, var_24
0081CFB7: mov eax, [eax]
0081CFB9: push var_24
0081CFBC: call [eax+34h]
0081CFBF: fclex 
0081CFC1: mov var_6C, eax
0081CFC4: cmp var_6C, 00000000h
0081CFC8: jnl 81CFE4h
0081CFCA: push 00000034h
0081CFCC: push 00450154h
0081CFD1: push var_24
0081CFD4: push var_6C
0081CFD7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081CFDC: mov var_000000A0, eax
0081CFE2: jmp 81CFEBh
0081CFE4: and var_000000A0, 00000000h
0081CFEB: mov eax, var_2C
0081CFEE: mov var_0000008C, eax
0081CFF4: and var_2C, 00000000h
0081CFF8: push var_0000008C
0081CFFE: lea eax, var_28
0081D001: push eax
0081D002: call 00410A84h ; Set (object)
0081D007: push 00000000h
0081D009: mov eax, var_60
0081D00C: sub eax, 00000001h
0081D00F: jo 0081D49Ch
0081D015: push eax
0081D016: lea eax, var_28
0081D019: push eax
0081D01A: call 007BB47Fh
0081D01F: lea eax, var_2C
0081D022: push eax
0081D023: lea eax, var_28
0081D026: push eax
0081D027: push 00000002h
0081D029: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081D02E: add esp, 0000000Ch
0081D031: mov var_04, 00000006h
0081D038: and word ptr [008F2404h], 0000h
0081D040: jmp 0081D0F4h
0081D045: mov var_04, 00000008h
0081D04C: mov eax, [ebp+08h]
0081D04F: mov eax, [eax]
0081D051: push [ebp+08h]
0081D054: call [eax+0000032Ch]
0081D05A: push eax
0081D05B: lea eax, var_2C
0081D05E: push eax
0081D05F: call 00410A84h ; Set (object)
0081D064: lea eax, var_60
0081D067: push eax
0081D068: mov eax, var_24
0081D06B: mov eax, [eax]
0081D06D: push var_24
0081D070: call [eax+34h]
0081D073: fclex 
0081D075: mov var_6C, eax
0081D078: cmp var_6C, 00000000h
0081D07C: jnl 81D098h
0081D07E: push 00000034h
0081D080: push 00450154h
0081D085: push var_24
0081D088: push var_6C
0081D08B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081D090: mov var_000000A4, eax
0081D096: jmp 81D09Fh
0081D098: and var_000000A4, 00000000h
0081D09F: mov eax, var_2C
0081D0A2: mov var_00000090, eax
0081D0A8: and var_2C, 00000000h
0081D0AC: push var_00000090
0081D0B2: lea eax, var_28
0081D0B5: push eax
0081D0B6: call 00410A84h ; Set (object)
0081D0BB: push 00000001h
0081D0BD: mov eax, var_60
0081D0C0: sub eax, 00000001h
0081D0C3: jo 0081D49Ch
0081D0C9: push eax
0081D0CA: lea eax, var_28
0081D0CD: push eax
0081D0CE: call 007BB47Fh
0081D0D3: lea eax, var_2C
0081D0D6: push eax
0081D0D7: lea eax, var_28
0081D0DA: push eax
0081D0DB: push 00000002h
0081D0DD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081D0E2: add esp, 0000000Ch
0081D0E5: mov var_04, 00000009h
0081D0EC: or word ptr [008F2404h], FFFFh
0081D0F4: jmp 0081D44Bh
0081D0F9: mov var_04, 0000000Dh
0081D100: lea eax, var_60
0081D103: push eax
0081D104: mov eax, var_24
0081D107: mov eax, [eax]
0081D109: push var_24
0081D10C: call [eax+34h]
0081D10F: fclex 
0081D111: mov var_6C, eax
0081D114: cmp var_6C, 00000000h
0081D118: jnl 81D134h
0081D11A: push 00000034h
0081D11C: push 00450154h
0081D121: push var_24
0081D124: push var_6C
0081D127: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081D12C: mov var_000000A8, eax
0081D132: jmp 81D13Bh
0081D134: and var_000000A8, 00000000h
0081D13B: mov esi, var_60
0081D13E: sub esi, 00000001h
0081D141: jo 0081D49Ch
0081D147: push 00000000h
0081D149: push 00000010h
0081D14B: mov eax, [ebp+08h]
0081D14E: mov eax, [eax]
0081D150: push [ebp+08h]
0081D153: call [eax+0000032Ch]
0081D159: push eax
0081D15A: lea eax, var_28
0081D15D: push eax
0081D15E: call 00410A84h ; Set (object)
0081D163: push eax
0081D164: lea eax, var_3C
0081D167: push eax
0081D168: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081D16D: add esp, 00000010h
0081D170: push eax
0081D171: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0081D176: movsx eax, ax
0081D179: sub esi, eax
0081D17B: neg esi
0081D17D: sbb esi, esi
0081D17F: inc esi
0081D180: neg esi
0081D182: mov var_70, si
0081D186: lea ecx, var_28
0081D189: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081D18E: lea ecx, var_3C
0081D191: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081D196: movsx eax, word ptr var_70
0081D19A: test eax, eax
0081D19C: jz 0081D2D3h
0081D1A2: mov var_04, 0000000Eh
0081D1A9: push 00000000h
0081D1AB: push 00000011h
0081D1AD: mov eax, [ebp+08h]
0081D1B0: mov eax, [eax]
0081D1B2: push [ebp+08h]
0081D1B5: call [eax+0000032Ch]
0081D1BB: push eax
0081D1BC: lea eax, var_28
0081D1BF: push eax
0081D1C0: call 00410A84h ; Set (object)
0081D1C5: push eax
0081D1C6: lea eax, var_3C
0081D1C9: push eax
0081D1CA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081D1CF: add esp, 00000010h
0081D1D2: push eax
0081D1D3: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0081D1D8: push 00000001h
0081D1DA: pop ecx
0081D1DB: sub ecx, eax
0081D1DD: jo 0081D49Ch
0081D1E3: mov var_44, ecx
0081D1E6: mov var_4C, 00000003h
0081D1ED: push 00000010h
0081D1EF: pop eax
0081D1F0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081D1F5: lea esi, var_4C
0081D1F8: mov edi, esp
0081D1FA: movsd 
0081D1FB: movsd 
0081D1FC: movsd 
0081D1FD: movsd 
0081D1FE: push 00000011h
0081D200: mov eax, [ebp+08h]
0081D203: mov eax, [eax]
0081D205: push [ebp+08h]
0081D208: call [eax+0000032Ch]
0081D20E: push eax
0081D20F: lea eax, var_2C
0081D212: push eax
0081D213: call 00410A84h ; Set (object)
0081D218: push eax
0081D219: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081D21E: lea eax, var_2C
0081D221: push eax
0081D222: lea eax, var_28
0081D225: push eax
0081D226: push 00000002h
0081D228: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081D22D: add esp, 0000000Ch
0081D230: lea ecx, var_3C
0081D233: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081D238: mov var_04, 0000000Fh
0081D23F: or var_44, FFFFFFFFh
0081D243: mov var_4C, 0000000Bh
0081D24A: push 00000010h
0081D24C: pop eax
0081D24D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081D252: lea esi, var_4C
0081D255: mov edi, esp
0081D257: movsd 
0081D258: movsd 
0081D259: movsd 
0081D25A: movsd 
0081D25B: push 0000000Fh
0081D25D: mov eax, [ebp+08h]
0081D260: mov eax, [eax]
0081D262: push [ebp+08h]
0081D265: call [eax+0000032Ch]
0081D26B: push eax
0081D26C: lea eax, var_28
0081D26F: push eax
0081D270: call 00410A84h ; Set (object)
0081D275: push eax
0081D276: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081D27B: lea ecx, var_28
0081D27E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081D283: mov var_04, 00000010h
0081D28A: and var_44, 00000000h
0081D28E: mov var_4C, 0000000Bh
0081D295: push 00000010h
0081D297: pop eax
0081D298: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081D29D: lea esi, var_4C
0081D2A0: mov edi, esp
0081D2A2: movsd 
0081D2A3: movsd 
0081D2A4: movsd 
0081D2A5: movsd 
0081D2A6: push 0000000Fh
0081D2A8: mov eax, [ebp+08h]
0081D2AB: mov eax, [eax]
0081D2AD: push [ebp+08h]
0081D2B0: call [eax+0000032Ch]
0081D2B6: push eax
0081D2B7: lea eax, var_28
0081D2BA: push eax
0081D2BB: call 00410A84h ; Set (object)
0081D2C0: push eax
0081D2C1: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081D2C6: lea ecx, var_28
0081D2C9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081D2CE: jmp 0081D44Bh
0081D2D3: mov var_04, 00000012h
0081D2DA: and var_44, 00000000h
0081D2DE: mov var_4C, 00000003h
0081D2E5: push 00000010h
0081D2E7: pop eax
0081D2E8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081D2ED: lea esi, var_4C
0081D2F0: mov edi, esp
0081D2F2: movsd 
0081D2F3: movsd 
0081D2F4: movsd 
0081D2F5: movsd 
0081D2F6: push 00000011h
0081D2F8: mov eax, [ebp+08h]
0081D2FB: mov eax, [eax]
0081D2FD: push [ebp+08h]
0081D300: call [eax+0000032Ch]
0081D306: push eax
0081D307: lea eax, var_28
0081D30A: push eax
0081D30B: call 00410A84h ; Set (object)
0081D310: push eax
0081D311: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081D316: lea ecx, var_28
0081D319: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081D31E: mov var_04, 00000013h
0081D325: lea eax, var_60
0081D328: push eax
0081D329: mov eax, var_24
0081D32C: mov eax, [eax]
0081D32E: push var_24
0081D331: call [eax+34h]
0081D334: fclex 
0081D336: mov var_6C, eax
0081D339: cmp var_6C, 00000000h
0081D33D: jnl 81D359h
0081D33F: push 00000034h
0081D341: push 00450154h
0081D346: push var_24
0081D349: push var_6C
0081D34C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081D351: mov var_000000AC, eax
0081D357: jmp 81D360h
0081D359: and var_000000AC, 00000000h
0081D360: mov ecx, var_60
0081D363: sub ecx, 00000001h
0081D366: jo 0081D49Ch
0081D36C: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0081D371: mov var_44, ax
0081D375: mov var_4C, 00000002h
0081D37C: push 00000010h
0081D37E: pop eax
0081D37F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081D384: lea esi, var_4C
0081D387: mov edi, esp
0081D389: movsd 
0081D38A: movsd 
0081D38B: movsd 
0081D38C: movsd 
0081D38D: push 00000010h
0081D38F: mov eax, [ebp+08h]
0081D392: mov eax, [eax]
0081D394: push [ebp+08h]
0081D397: call [eax+0000032Ch]
0081D39D: push eax
0081D39E: lea eax, var_28
0081D3A1: push eax
0081D3A2: call 00410A84h ; Set (object)
0081D3A7: push eax
0081D3A8: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081D3AD: lea ecx, var_28
0081D3B0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081D3B5: mov var_04, 00000014h
0081D3BC: or var_44, FFFFFFFFh
0081D3C0: mov var_4C, 0000000Bh
0081D3C7: push 00000010h
0081D3C9: pop eax
0081D3CA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081D3CF: lea esi, var_4C
0081D3D2: mov edi, esp
0081D3D4: movsd 
0081D3D5: movsd 
0081D3D6: movsd 
0081D3D7: movsd 
0081D3D8: push 0000000Fh
0081D3DA: mov eax, [ebp+08h]
0081D3DD: mov eax, [eax]
0081D3DF: push [ebp+08h]
0081D3E2: call [eax+0000032Ch]
0081D3E8: push eax
0081D3E9: lea eax, var_28
0081D3EC: push eax
0081D3ED: call 00410A84h ; Set (object)
0081D3F2: push eax
0081D3F3: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081D3F8: lea ecx, var_28
0081D3FB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081D400: mov var_04, 00000015h
0081D407: and var_44, 00000000h
0081D40B: mov var_4C, 0000000Bh
0081D412: push 00000010h
0081D414: pop eax
0081D415: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081D41A: lea esi, var_4C
0081D41D: mov edi, esp
0081D41F: movsd 
0081D420: movsd 
0081D421: movsd 
0081D422: movsd 
0081D423: push 0000000Fh
0081D425: mov eax, [ebp+08h]
0081D428: mov eax, [eax]
0081D42A: push [ebp+08h]
0081D42D: call [eax+0000032Ch]
0081D433: push eax
0081D434: lea eax, var_28
0081D437: push eax
0081D438: call 00410A84h ; Set (object)
0081D43D: push eax
0081D43E: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081D443: lea ecx, var_28
0081D446: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081D44B: mov var_10, 00000000h
0081D452: push 0081D47Dh
0081D457: jmp 81D474h
0081D459: lea eax, var_2C
0081D45C: push eax
0081D45D: lea eax, var_28
0081D460: push eax
0081D461: push 00000002h
0081D463: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081D468: add esp, 0000000Ch
0081D46B: lea ecx, var_3C
0081D46E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081D473: ret 
End Sub

Private sub lstCaptured__81EADB
0081EADB: push ebp
0081EADC: mov ebp, esp
0081EADE: sub esp, 00000014h
0081EAE1: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081EAE6: mov eax, fs:[00h]
0081EAEC: push eax
0081EAED: mov fs:[00000000h], esp
0081EAF4: mov eax, 00000540h
0081EAF9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081EAFE: push ebx
0081EAFF: push esi
0081EB00: push edi
0081EB01: mov var_14, esp
0081EB04: mov var_10, 0040B058h
0081EB0B: mov eax, [ebp+08h]
0081EB0E: and eax, 00000001h
0081EB11: mov var_0C, eax
0081EB14: mov eax, [ebp+08h]
0081EB17: and al, FEh
0081EB19: mov [ebp+08h], eax
0081EB1C: mov var_08, 00000000h
0081EB23: mov eax, [ebp+08h]
0081EB26: mov eax, [eax]
0081EB28: push [ebp+08h]
0081EB2B: call [eax+04h]
0081EB2E: push 00000001h
0081EB30: call 00410A60h ; On Error ...
0081EB35: mov eax, [ebp+0Ch]
0081EB38: movsx eax, word ptr [eax]
0081EB3B: cmp eax, 0000000Dh
0081EB3E: jnz 0081FE62h
0081EB44: cmp [008F26D0h], 00000000h
0081EB4B: jnz 81EB68h
0081EB4D: push 008F26D0h
0081EB52: push 004123D4h
0081EB57: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0081EB5C: mov var_000004F8, 008F26D0h
0081EB66: jmp 81EB72h
0081EB68: mov var_000004F8, 008F26D0h
0081EB72: mov eax, var_000004F8
0081EB78: mov eax, [eax]
0081EB7A: mov var_00000440, eax
0081EB80: mov eax, [ebp+08h]
0081EB83: mov var_00000358, eax
0081EB89: mov var_00000360, 00000009h
0081EB93: mov var_00000348, 80020004h
0081EB9D: mov var_00000350, 0000000Ah
0081EBA7: push 00000010h
0081EBA9: pop eax
0081EBAA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081EBAF: lea esi, var_00000360
0081EBB5: mov edi, esp
0081EBB7: movsd 
0081EBB8: movsd 
0081EBB9: movsd 
0081EBBA: movsd 
0081EBBB: push 00000010h
0081EBBD: pop eax
0081EBBE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081EBC3: lea esi, var_00000350
0081EBC9: mov edi, esp
0081EBCB: movsd 
0081EBCC: movsd 
0081EBCD: movsd 
0081EBCE: movsd 
0081EBCF: mov eax, var_00000440
0081EBD5: mov eax, [eax]
0081EBD7: push var_00000440
0081EBDD: call [eax+000002B0h]
0081EBE3: fclex 
0081EBE5: mov var_00000444, eax
0081EBEB: cmp var_00000444, 00000000h
0081EBF2: jnl 81EC17h
0081EBF4: push 000002B0h
0081EBF9: push 004446F4h
0081EBFE: push var_00000440
0081EC04: push var_00000444
0081EC0A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081EC0F: mov var_000004FC, eax
0081EC15: jmp 81EC1Eh
0081EC17: and var_000004FC, 00000000h
0081EC1E: and var_00000348, 00000000h
0081EC25: mov var_00000350, 00000008h
0081EC2F: cmp [008F26D0h], 00000000h
0081EC36: jnz 81EC53h
0081EC38: push 008F26D0h
0081EC3D: push 004123D4h
0081EC42: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0081EC47: mov var_00000500, 008F26D0h
0081EC51: jmp 81EC5Dh
0081EC53: mov var_00000500, 008F26D0h
0081EC5D: push 00000010h
0081EC5F: pop eax
0081EC60: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081EC65: lea esi, var_00000350
0081EC6B: mov edi, esp
0081EC6D: movsd 
0081EC6E: movsd 
0081EC6F: movsd 
0081EC70: movsd 
0081EC71: push FFFFFDFBh
0081EC76: mov eax, var_00000500
0081EC7C: mov eax, [eax]
0081EC7E: mov ecx, var_00000500
0081EC84: mov ecx, [ecx]
0081EC86: mov ecx, [ecx]
0081EC88: push eax
0081EC89: call [ecx+000002FCh]
0081EC8F: push eax
0081EC90: lea eax, var_70
0081EC93: push eax
0081EC94: call 00410A84h ; Set (object)
0081EC99: push eax
0081EC9A: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081EC9F: lea ecx, var_70
0081ECA2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081ECA7: cmp [008F26D0h], 00000000h
0081ECAE: jnz 81ECCBh
0081ECB0: push 008F26D0h
0081ECB5: push 004123D4h
0081ECBA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0081ECBF: mov var_00000504, 008F26D0h
0081ECC9: jmp 81ECD5h
0081ECCB: mov var_00000504, 008F26D0h
0081ECD5: push 004412BCh
0081ECDA: push 00000000h
0081ECDC: push 00000007h
0081ECDE: mov eax, [ebp+08h]
0081ECE1: mov eax, [eax]
0081ECE3: push [ebp+08h]
0081ECE6: call [eax+0000032Ch]
0081ECEC: push eax
0081ECED: lea eax, var_7C
0081ECF0: push eax
0081ECF1: call 00410A84h ; Set (object)
0081ECF6: push eax
0081ECF7: lea eax, var_00000130
0081ECFD: push eax
0081ECFE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081ED03: add esp, 00000010h
0081ED06: push eax
0081ED07: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081ED0C: push eax
0081ED0D: lea eax, var_80
0081ED10: push eax
0081ED11: call 00410A84h ; Set (object)
0081ED16: mov var_00000448, eax
0081ED1C: push 004412DCh
0081ED21: push 00000000h
0081ED23: push 0000000Dh
0081ED25: mov eax, [ebp+08h]
0081ED28: mov eax, [eax]
0081ED2A: push [ebp+08h]
0081ED2D: call [eax+0000032Ch]
0081ED33: push eax
0081ED34: lea eax, var_74
0081ED37: push eax
0081ED38: call 00410A84h ; Set (object)
0081ED3D: push eax
0081ED3E: lea eax, var_00000120
0081ED44: push eax
0081ED45: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081ED4A: add esp, 00000010h
0081ED4D: push eax
0081ED4E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081ED53: push eax
0081ED54: lea eax, var_78
0081ED57: push eax
0081ED58: call 00410A84h ; Set (object)
0081ED5D: mov var_00000440, eax
0081ED63: lea eax, var_00000424
0081ED69: push eax
0081ED6A: mov eax, var_00000440
0081ED70: mov eax, [eax]
0081ED72: push var_00000440
0081ED78: call [eax+44h]
0081ED7B: fclex 
0081ED7D: mov var_00000444, eax
0081ED83: cmp var_00000444, 00000000h
0081ED8A: jnl 81EDACh
0081ED8C: push 00000044h
0081ED8E: push 004412DCh
0081ED93: push var_00000440
0081ED99: push var_00000444
0081ED9F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081EDA4: mov var_00000508, eax
0081EDAA: jmp 81EDB3h
0081EDAC: and var_00000508, 00000000h
0081EDB3: mov eax, var_00000424
0081EDB9: mov var_00000138, eax
0081EDBF: mov var_00000140, 00000003h
0081EDC9: lea eax, var_00000084
0081EDCF: push eax
0081EDD0: lea eax, var_00000140
0081EDD6: push eax
0081EDD7: mov eax, var_00000448
0081EDDD: mov eax, [eax]
0081EDDF: push var_00000448
0081EDE5: call [eax+24h]
0081EDE8: fclex 
0081EDEA: mov var_0000044C, eax
0081EDF0: cmp var_0000044C, 00000000h
0081EDF7: jnl 81EE19h
0081EDF9: push 00000024h
0081EDFB: push 004412BCh
0081EE00: push var_00000448
0081EE06: push var_0000044C
0081EE0C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081EE11: mov var_0000050C, eax
0081EE17: jmp 81EE20h
0081EE19: and var_0000050C, 00000000h
0081EE20: mov eax, var_00000084
0081EE26: mov var_00000450, eax
0081EE2C: lea eax, var_24
0081EE2F: push eax
0081EE30: mov eax, var_00000450
0081EE36: mov eax, [eax]
0081EE38: push var_00000450
0081EE3E: call [eax+24h]
0081EE41: fclex 
0081EE43: mov var_00000454, eax
0081EE49: cmp var_00000454, 00000000h
0081EE50: jnl 81EE72h
0081EE52: push 00000024h
0081EE54: push 004412DCh
0081EE59: push var_00000450
0081EE5F: push var_00000454
0081EE65: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081EE6A: mov var_00000510, eax
0081EE70: jmp 81EE79h
0081EE72: and var_00000510, 00000000h
0081EE79: push 004412BCh
0081EE7E: push 00000000h
0081EE80: push 00000007h
0081EE82: mov eax, [ebp+08h]
0081EE85: mov eax, [eax]
0081EE87: push [ebp+08h]
0081EE8A: call [eax+0000032Ch]
0081EE90: push eax
0081EE91: lea eax, var_00000090
0081EE97: push eax
0081EE98: call 00410A84h ; Set (object)
0081EE9D: push eax
0081EE9E: lea eax, var_00000160
0081EEA4: push eax
0081EEA5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081EEAA: add esp, 00000010h
0081EEAD: push eax
0081EEAE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081EEB3: push eax
0081EEB4: lea eax, var_00000094
0081EEBA: push eax
0081EEBB: call 00410A84h ; Set (object)
0081EEC0: mov var_00000460, eax
0081EEC6: push 004412DCh
0081EECB: push 00000000h
0081EECD: push 0000000Dh
0081EECF: mov eax, [ebp+08h]
0081EED2: mov eax, [eax]
0081EED4: push [ebp+08h]
0081EED7: call [eax+0000032Ch]
0081EEDD: push eax
0081EEDE: lea eax, var_00000088
0081EEE4: push eax
0081EEE5: call 00410A84h ; Set (object)
0081EEEA: push eax
0081EEEB: lea eax, var_00000150
0081EEF1: push eax
0081EEF2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081EEF7: add esp, 00000010h
0081EEFA: push eax
0081EEFB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081EF00: push eax
0081EF01: lea eax, var_0000008C
0081EF07: push eax
0081EF08: call 00410A84h ; Set (object)
0081EF0D: mov var_00000458, eax
0081EF13: lea eax, var_00000428
0081EF19: push eax
0081EF1A: mov eax, var_00000458
0081EF20: mov eax, [eax]
0081EF22: push var_00000458
0081EF28: call [eax+44h]
0081EF2B: fclex 
0081EF2D: mov var_0000045C, eax
0081EF33: cmp var_0000045C, 00000000h
0081EF3A: jnl 81EF5Ch
0081EF3C: push 00000044h
0081EF3E: push 004412DCh
0081EF43: push var_00000458
0081EF49: push var_0000045C
0081EF4F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081EF54: mov var_00000514, eax
0081EF5A: jmp 81EF63h
0081EF5C: and var_00000514, 00000000h
0081EF63: mov eax, var_00000428
0081EF69: mov var_00000168, eax
0081EF6F: mov var_00000170, 00000003h
0081EF79: lea eax, var_00000098
0081EF7F: push eax
0081EF80: lea eax, var_00000170
0081EF86: push eax
0081EF87: mov eax, var_00000460
0081EF8D: mov eax, [eax]
0081EF8F: push var_00000460
0081EF95: call [eax+24h]
0081EF98: fclex 
0081EF9A: mov var_00000464, eax
0081EFA0: cmp var_00000464, 00000000h
0081EFA7: jnl 81EFC9h
0081EFA9: push 00000024h
0081EFAB: push 004412BCh
0081EFB0: push var_00000460
0081EFB6: push var_00000464
0081EFBC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081EFC1: mov var_00000518, eax
0081EFC7: jmp 81EFD0h
0081EFC9: and var_00000518, 00000000h
0081EFD0: mov eax, var_00000098
0081EFD6: mov var_00000468, eax
0081EFDC: lea eax, var_34
0081EFDF: push eax
0081EFE0: push 00000001h
0081EFE2: mov eax, var_00000468
0081EFE8: mov eax, [eax]
0081EFEA: push var_00000468
0081EFF0: call [eax+00000084h]
0081EFF6: fclex 
0081EFF8: mov var_0000046C, eax
0081EFFE: cmp var_0000046C, 00000000h
0081F005: jnl 81F02Ah
0081F007: push 00000084h
0081F00C: push 004412DCh
0081F011: push var_00000468
0081F017: push var_0000046C
0081F01D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081F022: mov var_0000051C, eax
0081F028: jmp 81F031h
0081F02A: and var_0000051C, 00000000h
0081F031: push 004412BCh
0081F036: push 00000000h
0081F038: push 00000007h
0081F03A: mov eax, [ebp+08h]
0081F03D: mov eax, [eax]
0081F03F: push [ebp+08h]
0081F042: call [eax+0000032Ch]
0081F048: push eax
0081F049: lea eax, var_000000A4
0081F04F: push eax
0081F050: call 00410A84h ; Set (object)
0081F055: push eax
0081F056: lea eax, var_00000190
0081F05C: push eax
0081F05D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081F062: add esp, 00000010h
0081F065: push eax
0081F066: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081F06B: push eax
0081F06C: lea eax, var_000000A8
0081F072: push eax
0081F073: call 00410A84h ; Set (object)
0081F078: mov var_00000478, eax
0081F07E: push 004412DCh
0081F083: push 00000000h
0081F085: push 0000000Dh
0081F087: mov eax, [ebp+08h]
0081F08A: mov eax, [eax]
0081F08C: push [ebp+08h]
0081F08F: call [eax+0000032Ch]
0081F095: push eax
0081F096: lea eax, var_0000009C
0081F09C: push eax
0081F09D: call 00410A84h ; Set (object)
0081F0A2: push eax
0081F0A3: lea eax, var_00000180
0081F0A9: push eax
0081F0AA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081F0AF: add esp, 00000010h
0081F0B2: push eax
0081F0B3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081F0B8: push eax
0081F0B9: lea eax, var_000000A0
0081F0BF: push eax
0081F0C0: call 00410A84h ; Set (object)
0081F0C5: mov var_00000470, eax
0081F0CB: lea eax, var_0000042C
0081F0D1: push eax
0081F0D2: mov eax, var_00000470
0081F0D8: mov eax, [eax]
0081F0DA: push var_00000470
0081F0E0: call [eax+44h]
0081F0E3: fclex 
0081F0E5: mov var_00000474, eax
0081F0EB: cmp var_00000474, 00000000h
0081F0F2: jnl 81F114h
0081F0F4: push 00000044h
0081F0F6: push 004412DCh
0081F0FB: push var_00000470
0081F101: push var_00000474
0081F107: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081F10C: mov var_00000520, eax
0081F112: jmp 81F11Bh
0081F114: and var_00000520, 00000000h
0081F11B: mov eax, var_0000042C
0081F121: mov var_00000198, eax
0081F127: mov var_000001A0, 00000003h
0081F131: lea eax, var_000000AC
0081F137: push eax
0081F138: lea eax, var_000001A0
0081F13E: push eax
0081F13F: mov eax, var_00000478
0081F145: mov eax, [eax]
0081F147: push var_00000478
0081F14D: call [eax+24h]
0081F150: fclex 
0081F152: mov var_0000047C, eax
0081F158: cmp var_0000047C, 00000000h
0081F15F: jnl 81F181h
0081F161: push 00000024h
0081F163: push 004412BCh
0081F168: push var_00000478
0081F16E: push var_0000047C
0081F174: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081F179: mov var_00000524, eax
0081F17F: jmp 81F188h
0081F181: and var_00000524, 00000000h
0081F188: mov eax, var_000000AC
0081F18E: mov var_00000480, eax
0081F194: lea eax, var_40
0081F197: push eax
0081F198: push 00000002h
0081F19A: mov eax, var_00000480
0081F1A0: mov eax, [eax]
0081F1A2: push var_00000480
0081F1A8: call [eax+00000084h]
0081F1AE: fclex 
0081F1B0: mov var_00000484, eax
0081F1B6: cmp var_00000484, 00000000h
0081F1BD: jnl 81F1E2h
0081F1BF: push 00000084h
0081F1C4: push 004412DCh
0081F1C9: push var_00000480
0081F1CF: push var_00000484
0081F1D5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081F1DA: mov var_00000528, eax
0081F1E0: jmp 81F1E9h
0081F1E2: and var_00000528, 00000000h
0081F1E9: push 004412BCh
0081F1EE: push 00000000h
0081F1F0: push 00000007h
0081F1F2: mov eax, [ebp+08h]
0081F1F5: mov eax, [eax]
0081F1F7: push [ebp+08h]
0081F1FA: call [eax+0000032Ch]
0081F200: push eax
0081F201: lea eax, var_000000B8
0081F207: push eax
0081F208: call 00410A84h ; Set (object)
0081F20D: push eax
0081F20E: lea eax, var_000001C0
0081F214: push eax
0081F215: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081F21A: add esp, 00000010h
0081F21D: push eax
0081F21E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081F223: push eax
0081F224: lea eax, var_000000BC
0081F22A: push eax
0081F22B: call 00410A84h ; Set (object)
0081F230: mov var_00000490, eax
0081F236: push 004412DCh
0081F23B: push 00000000h
0081F23D: push 0000000Dh
0081F23F: mov eax, [ebp+08h]
0081F242: mov eax, [eax]
0081F244: push [ebp+08h]
0081F247: call [eax+0000032Ch]
0081F24D: push eax
0081F24E: lea eax, var_000000B0
0081F254: push eax
0081F255: call 00410A84h ; Set (object)
0081F25A: push eax
0081F25B: lea eax, var_000001B0
0081F261: push eax
0081F262: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081F267: add esp, 00000010h
0081F26A: push eax
0081F26B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081F270: push eax
0081F271: lea eax, var_000000B4
0081F277: push eax
0081F278: call 00410A84h ; Set (object)
0081F27D: mov var_00000488, eax
0081F283: lea eax, var_00000430
0081F289: push eax
0081F28A: mov eax, var_00000488
0081F290: mov eax, [eax]
0081F292: push var_00000488
0081F298: call [eax+44h]
0081F29B: fclex 
0081F29D: mov var_0000048C, eax
0081F2A3: cmp var_0000048C, 00000000h
0081F2AA: jnl 81F2CCh
0081F2AC: push 00000044h
0081F2AE: push 004412DCh
0081F2B3: push var_00000488
0081F2B9: push var_0000048C
0081F2BF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081F2C4: mov var_0000052C, eax
0081F2CA: jmp 81F2D3h
0081F2CC: and var_0000052C, 00000000h
0081F2D3: mov eax, var_00000430
0081F2D9: mov var_000001C8, eax
0081F2DF: mov var_000001D0, 00000003h
0081F2E9: lea eax, var_000000C0
0081F2EF: push eax
0081F2F0: lea eax, var_000001D0
0081F2F6: push eax
0081F2F7: mov eax, var_00000490
0081F2FD: mov eax, [eax]
0081F2FF: push var_00000490
0081F305: call [eax+24h]
0081F308: fclex 
0081F30A: mov var_00000494, eax
0081F310: cmp var_00000494, 00000000h
0081F317: jnl 81F339h
0081F319: push 00000024h
0081F31B: push 004412BCh
0081F320: push var_00000490
0081F326: push var_00000494
0081F32C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081F331: mov var_00000530, eax
0081F337: jmp 81F340h
0081F339: and var_00000530, 00000000h
0081F340: mov eax, var_000000C0
0081F346: mov var_00000498, eax
0081F34C: lea eax, var_50
0081F34F: push eax
0081F350: push 00000003h
0081F352: mov eax, var_00000498
0081F358: mov eax, [eax]
0081F35A: push var_00000498
0081F360: call [eax+00000084h]
0081F366: fclex 
0081F368: mov var_0000049C, eax
0081F36E: cmp var_0000049C, 00000000h
0081F375: jnl 81F39Ah
0081F377: push 00000084h
0081F37C: push 004412DCh
0081F381: push var_00000498
0081F387: push var_0000049C
0081F38D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081F392: mov var_00000534, eax
0081F398: jmp 81F3A1h
0081F39A: and var_00000534, 00000000h
0081F3A1: push 004412BCh
0081F3A6: push 00000000h
0081F3A8: push 00000007h
0081F3AA: mov eax, [ebp+08h]
0081F3AD: mov eax, [eax]
0081F3AF: push [ebp+08h]
0081F3B2: call [eax+0000032Ch]
0081F3B8: push eax
0081F3B9: lea eax, var_000000CC
0081F3BF: push eax
0081F3C0: call 00410A84h ; Set (object)
0081F3C5: push eax
0081F3C6: lea eax, var_000001F0
0081F3CC: push eax
0081F3CD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081F3D2: add esp, 00000010h
0081F3D5: push eax
0081F3D6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081F3DB: push eax
0081F3DC: lea eax, var_000000D0
0081F3E2: push eax
0081F3E3: call 00410A84h ; Set (object)
0081F3E8: mov var_000004A8, eax
0081F3EE: push 004412DCh
0081F3F3: push 00000000h
0081F3F5: push 0000000Dh
0081F3F7: mov eax, [ebp+08h]
0081F3FA: mov eax, [eax]
0081F3FC: push [ebp+08h]
0081F3FF: call [eax+0000032Ch]
0081F405: push eax
0081F406: lea eax, var_000000C4
0081F40C: push eax
0081F40D: call 00410A84h ; Set (object)
0081F412: push eax
0081F413: lea eax, var_000001E0
0081F419: push eax
0081F41A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081F41F: add esp, 00000010h
0081F422: push eax
0081F423: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081F428: push eax
0081F429: lea eax, var_000000C8
0081F42F: push eax
0081F430: call 00410A84h ; Set (object)
0081F435: mov var_000004A0, eax
0081F43B: lea eax, var_00000434
0081F441: push eax
0081F442: mov eax, var_000004A0
0081F448: mov eax, [eax]
0081F44A: push var_000004A0
0081F450: call [eax+44h]
0081F453: fclex 
0081F455: mov var_000004A4, eax
0081F45B: cmp var_000004A4, 00000000h
0081F462: jnl 81F484h
0081F464: push 00000044h
0081F466: push 004412DCh
0081F46B: push var_000004A0
0081F471: push var_000004A4
0081F477: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081F47C: mov var_00000538, eax
0081F482: jmp 81F48Bh
0081F484: and var_00000538, 00000000h
0081F48B: mov eax, var_00000434
0081F491: mov var_000001F8, eax
0081F497: mov var_00000200, 00000003h
0081F4A1: lea eax, var_000000D4
0081F4A7: push eax
0081F4A8: lea eax, var_00000200
0081F4AE: push eax
0081F4AF: mov eax, var_000004A8
0081F4B5: mov eax, [eax]
0081F4B7: push var_000004A8
0081F4BD: call [eax+24h]
0081F4C0: fclex 
0081F4C2: mov var_000004AC, eax
0081F4C8: cmp var_000004AC, 00000000h
0081F4CF: jnl 81F4F1h
0081F4D1: push 00000024h
0081F4D3: push 004412BCh
0081F4D8: push var_000004A8
0081F4DE: push var_000004AC
0081F4E4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081F4E9: mov var_0000053C, eax
0081F4EF: jmp 81F4F8h
0081F4F1: and var_0000053C, 00000000h
0081F4F8: mov eax, var_000000D4
0081F4FE: mov var_000004B0, eax
0081F504: lea eax, var_5C
0081F507: push eax
0081F508: push 00000004h
0081F50A: mov eax, var_000004B0
0081F510: mov eax, [eax]
0081F512: push var_000004B0
0081F518: call [eax+00000084h]
0081F51E: fclex 
0081F520: mov var_000004B4, eax
0081F526: cmp var_000004B4, 00000000h
0081F52D: jnl 81F552h
0081F52F: push 00000084h
0081F534: push 004412DCh
0081F539: push var_000004B0
0081F53F: push var_000004B4
0081F545: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081F54A: mov var_00000540, eax
0081F550: jmp 81F559h
0081F552: and var_00000540, 00000000h
0081F559: push 00000000h
0081F55B: push FFFFFDFBh
0081F560: mov eax, var_00000504
0081F566: mov eax, [eax]
0081F568: mov ecx, var_00000504
0081F56E: mov ecx, [ecx]
0081F570: mov ecx, [ecx]
0081F572: push eax
0081F573: call [ecx+000002FCh]
0081F579: push eax
0081F57A: lea eax, var_70
0081F57D: push eax
0081F57E: call 00410A84h ; Set (object)
0081F583: push eax
0081F584: lea eax, var_00000110
0081F58A: push eax
0081F58B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081F590: add esp, 00000010h
0081F593: push eax
0081F594: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0081F599: mov edx, eax
0081F59B: lea ecx, var_20
0081F59E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081F5A3: push eax
0081F5A4: push 00453E18h ; Protocol:
0081F5A9: call 00410A18h ; &
0081F5AE: mov edx, eax
0081F5B0: lea ecx, var_28
0081F5B3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081F5B8: push eax
0081F5B9: push var_24
0081F5BC: call 00410A18h ; &
0081F5C1: mov edx, eax
0081F5C3: lea ecx, var_2C
0081F5C6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081F5CB: push eax
0081F5CC: push 00441264h ; vbCrLf
0081F5D1: call 00410A18h ; &
0081F5D6: mov edx, eax
0081F5D8: lea ecx, var_30
0081F5DB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081F5E0: push eax
0081F5E1: push 00453E34h ; Source:
0081F5E6: call 00410A18h ; &
0081F5EB: mov edx, eax
0081F5ED: lea ecx, var_38
0081F5F0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081F5F5: push eax
0081F5F6: push var_34
0081F5F9: call 00410A18h ; &
0081F5FE: mov edx, eax
0081F600: lea ecx, var_3C
0081F603: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081F608: push eax
0081F609: push 004412B8h
0081F60E: call 00410A18h ; &
0081F613: mov edx, eax
0081F615: lea ecx, var_44
0081F618: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081F61D: push eax
0081F61E: push var_40
0081F621: call 00410A18h ; &
0081F626: mov edx, eax
0081F628: lea ecx, var_48
0081F62B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081F630: push eax
0081F631: push 00441264h ; vbCrLf
0081F636: call 00410A18h ; &
0081F63B: mov edx, eax
0081F63D: lea ecx, var_4C
0081F640: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081F645: push eax
0081F646: push 00453E4Ch ; Destination:
0081F64B: call 00410A18h ; &
0081F650: mov edx, eax
0081F652: lea ecx, var_54
0081F655: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081F65A: push eax
0081F65B: push var_50
0081F65E: call 00410A18h ; &
0081F663: mov edx, eax
0081F665: lea ecx, var_58
0081F668: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081F66D: push eax
0081F66E: push 004412B8h
0081F673: call 00410A18h ; &
0081F678: mov edx, eax
0081F67A: lea ecx, var_60
0081F67D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081F682: push eax
0081F683: push var_5C
0081F686: call 00410A18h ; &
0081F68B: mov edx, eax
0081F68D: lea ecx, var_64
0081F690: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081F695: push eax
0081F696: push 00441264h ; vbCrLf
0081F69B: call 00410A18h ; &
0081F6A0: mov edx, eax
0081F6A2: lea ecx, var_68
0081F6A5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081F6AA: push eax
0081F6AB: push 00453E6Ch ; Packet size:
0081F6B0: call 00410A18h ; &
0081F6B5: mov var_00000258, eax
0081F6BB: mov var_00000260, 00000008h
0081F6C5: push 004412BCh
0081F6CA: push 00000000h
0081F6CC: push 00000007h
0081F6CE: mov eax, [ebp+08h]
0081F6D1: mov eax, [eax]
0081F6D3: push [ebp+08h]
0081F6D6: call [eax+0000032Ch]
0081F6DC: push eax
0081F6DD: lea eax, var_000000E0
0081F6E3: push eax
0081F6E4: call 00410A84h ; Set (object)
0081F6E9: push eax
0081F6EA: lea eax, var_00000220
0081F6F0: push eax
0081F6F1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081F6F6: add esp, 00000010h
0081F6F9: push eax
0081F6FA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081F6FF: push eax
0081F700: lea eax, var_000000E4
0081F706: push eax
0081F707: call 00410A84h ; Set (object)
0081F70C: mov var_000004C0, eax
0081F712: push 004412DCh
0081F717: push 00000000h
0081F719: push 0000000Dh
0081F71B: mov eax, [ebp+08h]
0081F71E: mov eax, [eax]
0081F720: push [ebp+08h]
0081F723: call [eax+0000032Ch]
0081F729: push eax
0081F72A: lea eax, var_000000D8
0081F730: push eax
0081F731: call 00410A84h ; Set (object)
0081F736: push eax
0081F737: lea eax, var_00000210
0081F73D: push eax
0081F73E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081F743: add esp, 00000010h
0081F746: push eax
0081F747: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081F74C: push eax
0081F74D: lea eax, var_000000DC
0081F753: push eax
0081F754: call 00410A84h ; Set (object)
0081F759: mov var_000004B8, eax
0081F75F: lea eax, var_00000438
0081F765: push eax
0081F766: mov eax, var_000004B8
0081F76C: mov eax, [eax]
0081F76E: push var_000004B8
0081F774: call [eax+44h]
0081F777: fclex 
0081F779: mov var_000004BC, eax
0081F77F: cmp var_000004BC, 00000000h
0081F786: jnl 81F7A8h
0081F788: push 00000044h
0081F78A: push 004412DCh
0081F78F: push var_000004B8
0081F795: push var_000004BC
0081F79B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081F7A0: mov var_00000544, eax
0081F7A6: jmp 81F7AFh
0081F7A8: and var_00000544, 00000000h
0081F7AF: mov eax, var_00000438
0081F7B5: mov var_00000228, eax
0081F7BB: mov var_00000230, 00000003h
0081F7C5: lea eax, var_000000E8
0081F7CB: push eax
0081F7CC: lea eax, var_00000230
0081F7D2: push eax
0081F7D3: mov eax, var_000004C0
0081F7D9: mov eax, [eax]
0081F7DB: push var_000004C0
0081F7E1: call [eax+24h]
0081F7E4: fclex 
0081F7E6: mov var_000004C4, eax
0081F7EC: cmp var_000004C4, 00000000h
0081F7F3: jnl 81F815h
0081F7F5: push 00000024h
0081F7F7: push 004412BCh
0081F7FC: push var_000004C0
0081F802: push var_000004C4
0081F808: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081F80D: mov var_00000548, eax
0081F813: jmp 81F81Ch
0081F815: and var_00000548, 00000000h
0081F81C: mov eax, var_000000E8
0081F822: mov var_000004C8, eax
0081F828: lea eax, var_00000240
0081F82E: push eax
0081F82F: mov eax, var_000004C8
0081F835: mov eax, [eax]
0081F837: push var_000004C8
0081F83D: call [eax+6Ch]
0081F840: fclex 
0081F842: mov var_000004CC, eax
0081F848: cmp var_000004CC, 00000000h
0081F84F: jnl 81F871h
0081F851: push 0000006Ch
0081F853: push 004412DCh
0081F858: push var_000004C8
0081F85E: push var_000004CC
0081F864: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081F869: mov var_0000054C, eax
0081F86F: jmp 81F878h
0081F871: and var_0000054C, 00000000h
0081F878: mov var_000003A8, 00453E8Ch ; bytes
0081F882: mov var_000003B0, 00000008h
0081F88C: mov var_000003B8, 00441264h ; vbCrLf
0081F896: mov var_000003C0, 00000008h
0081F8A0: mov var_000003C8, 00453EA0h ; Data:
0081F8AA: mov var_000003D0, 00000008h
0081F8B4: mov var_000003D8, 00441264h ; vbCrLf
0081F8BE: mov var_000003E0, 00000008h
0081F8C8: push 004412BCh
0081F8CD: push 00000000h
0081F8CF: push 00000007h
0081F8D1: mov eax, [ebp+08h]
0081F8D4: mov eax, [eax]
0081F8D6: push [ebp+08h]
0081F8D9: call [eax+0000032Ch]
0081F8DF: push eax
0081F8E0: lea eax, var_000000F4
0081F8E6: push eax
0081F8E7: call 00410A84h ; Set (object)
0081F8EC: push eax
0081F8ED: lea eax, var_000002D0
0081F8F3: push eax
0081F8F4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081F8F9: add esp, 00000010h
0081F8FC: push eax
0081F8FD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081F902: push eax
0081F903: lea eax, var_000000F8
0081F909: push eax
0081F90A: call 00410A84h ; Set (object)
0081F90F: mov var_000004D8, eax
0081F915: push 004412DCh
0081F91A: push 00000000h
0081F91C: push 0000000Dh
0081F91E: mov eax, [ebp+08h]
0081F921: mov eax, [eax]
0081F923: push [ebp+08h]
0081F926: call [eax+0000032Ch]
0081F92C: push eax
0081F92D: lea eax, var_000000EC
0081F933: push eax
0081F934: call 00410A84h ; Set (object)
0081F939: push eax
0081F93A: lea eax, var_000002C0
0081F940: push eax
0081F941: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081F946: add esp, 00000010h
0081F949: push eax
0081F94A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081F94F: push eax
0081F950: lea eax, var_000000F0
0081F956: push eax
0081F957: call 00410A84h ; Set (object)
0081F95C: mov var_000004D0, eax
0081F962: lea eax, var_0000043C
0081F968: push eax
0081F969: mov eax, var_000004D0
0081F96F: mov eax, [eax]
0081F971: push var_000004D0
0081F977: call [eax+44h]
0081F97A: fclex 
0081F97C: mov var_000004D4, eax
0081F982: cmp var_000004D4, 00000000h
0081F989: jnl 81F9ABh
0081F98B: push 00000044h
0081F98D: push 004412DCh
0081F992: push var_000004D0
0081F998: push var_000004D4
0081F99E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081F9A3: mov var_00000550, eax
0081F9A9: jmp 81F9B2h
0081F9AB: and var_00000550, 00000000h
0081F9B2: mov eax, var_0000043C
0081F9B8: mov var_000002D8, eax
0081F9BE: mov var_000002E0, 00000003h
0081F9C8: lea eax, var_000000FC
0081F9CE: push eax
0081F9CF: lea eax, var_000002E0
0081F9D5: push eax
0081F9D6: mov eax, var_000004D8
0081F9DC: mov eax, [eax]
0081F9DE: push var_000004D8
0081F9E4: call [eax+24h]
0081F9E7: fclex 
0081F9E9: mov var_000004DC, eax
0081F9EF: cmp var_000004DC, 00000000h
0081F9F6: jnl 81FA18h
0081F9F8: push 00000024h
0081F9FA: push 004412BCh
0081F9FF: push var_000004D8
0081FA05: push var_000004DC
0081FA0B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081FA10: mov var_00000554, eax
0081FA16: jmp 81FA1Fh
0081FA18: and var_00000554, 00000000h
0081FA1F: mov eax, var_000000FC
0081FA25: mov var_000004E0, eax
0081FA2B: lea eax, var_000002F0
0081FA31: push eax
0081FA32: mov eax, var_000004E0
0081FA38: mov eax, [eax]
0081FA3A: push var_000004E0
0081FA40: call [eax+6Ch]
0081FA43: fclex 
0081FA45: mov var_000004E4, eax
0081FA4B: cmp var_000004E4, 00000000h
0081FA52: jnl 81FA74h
0081FA54: push 0000006Ch
0081FA56: push 004412DCh
0081FA5B: push var_000004E0
0081FA61: push var_000004E4
0081FA67: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081FA6C: mov var_00000558, eax
0081FA72: jmp 81FA7Bh
0081FA74: and var_00000558, 00000000h
0081FA7B: lea eax, var_000002F0
0081FA81: push eax
0081FA82: lea eax, var_6C
0081FA85: push eax
0081FA86: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
0081FA8B: push eax
0081FA8C: call 007BBB4Ch
0081FA91: mov var_000002F8, eax
0081FA97: mov var_00000300, 00000008h
0081FAA1: mov var_000003F8, 00441264h ; vbCrLf
0081FAAB: mov var_00000400, 00000008h
0081FAB5: mov var_00000408, 00441264h ; vbCrLf
0081FABF: mov var_00000410, 00000008h
0081FAC9: lea eax, var_00000260
0081FACF: push eax
0081FAD0: lea eax, var_00000240
0081FAD6: push eax
0081FAD7: lea eax, var_00000250
0081FADD: push eax
0081FADE: call 00410916h ; arg_1 = Len(arg_2)
0081FAE3: push eax
0081FAE4: lea eax, var_00000270
0081FAEA: push eax
0081FAEB: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0081FAF0: push eax
0081FAF1: lea eax, var_000003B0
0081FAF7: push eax
0081FAF8: lea eax, var_00000280
0081FAFE: push eax
0081FAFF: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0081FB04: push eax
0081FB05: lea eax, var_000003C0
0081FB0B: push eax
0081FB0C: lea eax, var_00000290
0081FB12: push eax
0081FB13: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0081FB18: push eax
0081FB19: lea eax, var_000003D0
0081FB1F: push eax
0081FB20: lea eax, var_000002A0
0081FB26: push eax
0081FB27: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0081FB2C: push eax
0081FB2D: lea eax, var_000003E0
0081FB33: push eax
0081FB34: lea eax, var_000002B0
0081FB3A: push eax
0081FB3B: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0081FB40: push eax
0081FB41: lea eax, var_00000300
0081FB47: push eax
0081FB48: lea eax, var_00000310
0081FB4E: push eax
0081FB4F: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0081FB54: push eax
0081FB55: lea eax, var_00000400
0081FB5B: push eax
0081FB5C: lea eax, var_00000320
0081FB62: push eax
0081FB63: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0081FB68: push eax
0081FB69: lea eax, var_00000410
0081FB6F: push eax
0081FB70: lea eax, var_00000330
0081FB76: push eax
0081FB77: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0081FB7C: push eax
0081FB7D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0081FB82: mov var_00000338, eax
0081FB88: mov var_00000340, 00000008h
0081FB92: cmp [008F26D0h], 00000000h
0081FB99: jnz 81FBB6h
0081FB9B: push 008F26D0h
0081FBA0: push 004123D4h
0081FBA5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0081FBAA: mov var_0000055C, 008F26D0h
0081FBB4: jmp 81FBC0h
0081FBB6: mov var_0000055C, 008F26D0h
0081FBC0: push 00000010h
0081FBC2: pop eax
0081FBC3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081FBC8: lea esi, var_00000340
0081FBCE: mov edi, esp
0081FBD0: movsd 
0081FBD1: movsd 
0081FBD2: movsd 
0081FBD3: movsd 
0081FBD4: push FFFFFDFBh
0081FBD9: mov eax, var_0000055C
0081FBDF: mov eax, [eax]
0081FBE1: mov ecx, var_0000055C
0081FBE7: mov ecx, [ecx]
0081FBE9: mov ecx, [ecx]
0081FBEB: push eax
0081FBEC: call [ecx+000002FCh]
0081FBF2: push eax
0081FBF3: lea eax, var_00000100
0081FBF9: push eax
0081FBFA: call 00410A84h ; Set (object)
0081FBFF: push eax
0081FC00: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081FC05: lea eax, var_6C
0081FC08: push eax
0081FC09: lea eax, var_68
0081FC0C: push eax
0081FC0D: lea eax, var_64
0081FC10: push eax
0081FC11: lea eax, var_5C
0081FC14: push eax
0081FC15: lea eax, var_60
0081FC18: push eax
0081FC19: lea eax, var_58
0081FC1C: push eax
0081FC1D: lea eax, var_50
0081FC20: push eax
0081FC21: lea eax, var_54
0081FC24: push eax
0081FC25: lea eax, var_4C
0081FC28: push eax
0081FC29: lea eax, var_48
0081FC2C: push eax
0081FC2D: lea eax, var_40
0081FC30: push eax
0081FC31: lea eax, var_44
0081FC34: push eax
0081FC35: lea eax, var_3C
0081FC38: push eax
0081FC39: lea eax, var_34
0081FC3C: push eax
0081FC3D: lea eax, var_38
0081FC40: push eax
0081FC41: lea eax, var_30
0081FC44: push eax
0081FC45: lea eax, var_2C
0081FC48: push eax
0081FC49: lea eax, var_24
0081FC4C: push eax
0081FC4D: lea eax, var_28
0081FC50: push eax
0081FC51: lea eax, var_20
0081FC54: push eax
0081FC55: push 00000014h
0081FC57: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081FC5C: add esp, 00000054h
0081FC5F: lea eax, var_000000E4
0081FC65: push eax
0081FC66: lea eax, var_000000E0
0081FC6C: push eax
0081FC6D: lea eax, var_000000DC
0081FC73: push eax
0081FC74: lea eax, var_000000D8
0081FC7A: push eax
0081FC7B: lea eax, var_000000D4
0081FC81: push eax
0081FC82: lea eax, var_000000D0
0081FC88: push eax
0081FC89: lea eax, var_000000CC
0081FC8F: push eax
0081FC90: lea eax, var_000000C8
0081FC96: push eax
0081FC97: lea eax, var_000000C4
0081FC9D: push eax
0081FC9E: lea eax, var_000000C0
0081FCA4: push eax
0081FCA5: lea eax, var_000000BC
0081FCAB: push eax
0081FCAC: lea eax, var_000000B8
0081FCB2: push eax
0081FCB3: lea eax, var_000000B4
0081FCB9: push eax
0081FCBA: lea eax, var_000000B0
0081FCC0: push eax
0081FCC1: lea eax, var_000000AC
0081FCC7: push eax
0081FCC8: lea eax, var_000000A8
0081FCCE: push eax
0081FCCF: lea eax, var_000000A4
0081FCD5: push eax
0081FCD6: lea eax, var_000000A0
0081FCDC: push eax
0081FCDD: lea eax, var_0000009C
0081FCE3: push eax
0081FCE4: lea eax, var_00000098
0081FCEA: push eax
0081FCEB: lea eax, var_00000094
0081FCF1: push eax
0081FCF2: lea eax, var_00000090
0081FCF8: push eax
0081FCF9: lea eax, var_0000008C
0081FCFF: push eax
0081FD00: lea eax, var_00000088
0081FD06: push eax
0081FD07: lea eax, var_00000084
0081FD0D: push eax
0081FD0E: lea eax, var_80
0081FD11: push eax
0081FD12: lea eax, var_7C
0081FD15: push eax
0081FD16: lea eax, var_78
0081FD19: push eax
0081FD1A: lea eax, var_74
0081FD1D: push eax
0081FD1E: lea eax, var_70
0081FD21: push eax
0081FD22: lea eax, var_00000100
0081FD28: push eax
0081FD29: lea eax, var_000000FC
0081FD2F: push eax
0081FD30: lea eax, var_000000F8
0081FD36: push eax
0081FD37: lea eax, var_000000F4
0081FD3D: push eax
0081FD3E: lea eax, var_000000F0
0081FD44: push eax
0081FD45: lea eax, var_000000EC
0081FD4B: push eax
0081FD4C: lea eax, var_000000E8
0081FD52: push eax
0081FD53: push 00000025h
0081FD55: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081FD5A: add esp, 00000098h
0081FD60: lea eax, var_000002B0
0081FD66: push eax
0081FD67: lea eax, var_000002F0
0081FD6D: push eax
0081FD6E: lea eax, var_000002E0
0081FD74: push eax
0081FD75: lea eax, var_000002D0
0081FD7B: push eax
0081FD7C: lea eax, var_000002C0
0081FD82: push eax
0081FD83: lea eax, var_000002A0
0081FD89: push eax
0081FD8A: lea eax, var_00000290
0081FD90: push eax
0081FD91: lea eax, var_00000280
0081FD97: push eax
0081FD98: lea eax, var_00000270
0081FD9E: push eax
0081FD9F: lea eax, var_00000260
0081FDA5: push eax
0081FDA6: lea eax, var_00000240
0081FDAC: push eax
0081FDAD: lea eax, var_00000230
0081FDB3: push eax
0081FDB4: lea eax, var_00000220
0081FDBA: push eax
0081FDBB: lea eax, var_00000210
0081FDC1: push eax
0081FDC2: lea eax, var_00000200
0081FDC8: push eax
0081FDC9: lea eax, var_000001F0
0081FDCF: push eax
0081FDD0: lea eax, var_000001E0
0081FDD6: push eax
0081FDD7: lea eax, var_000001D0
0081FDDD: push eax
0081FDDE: lea eax, var_000001C0
0081FDE4: push eax
0081FDE5: lea eax, var_000001B0
0081FDEB: push eax
0081FDEC: lea eax, var_000001A0
0081FDF2: push eax
0081FDF3: lea eax, var_00000190
0081FDF9: push eax
0081FDFA: lea eax, var_00000180
0081FE00: push eax
0081FE01: lea eax, var_00000170
0081FE07: push eax
0081FE08: lea eax, var_00000160
0081FE0E: push eax
0081FE0F: lea eax, var_00000150
0081FE15: push eax
0081FE16: lea eax, var_00000140
0081FE1C: push eax
0081FE1D: lea eax, var_00000130
0081FE23: push eax
0081FE24: lea eax, var_00000120
0081FE2A: push eax
0081FE2B: lea eax, var_00000110
0081FE31: push eax
0081FE32: lea eax, var_00000340
0081FE38: push eax
0081FE39: lea eax, var_00000330
0081FE3F: push eax
0081FE40: lea eax, var_00000320
0081FE46: push eax
0081FE47: lea eax, var_00000310
0081FE4D: push eax
0081FE4E: lea eax, var_00000300
0081FE54: push eax
0081FE55: push 00000023h
0081FE57: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0081FE5C: add esp, 00000090h
0081FE62: call 004109C4h ; msvbvm60.dll.__vbaExitProc
0081FE67: push 008200D7h
0081FE6C: jmp 008200D6h
0081FE71: lea eax, var_6C
0081FE74: push eax
0081FE75: lea eax, var_68
0081FE78: push eax
0081FE79: lea eax, var_64
0081FE7C: push eax
0081FE7D: lea eax, var_60
0081FE80: push eax
0081FE81: lea eax, var_5C
0081FE84: push eax
0081FE85: lea eax, var_58
0081FE88: push eax
0081FE89: lea eax, var_54
0081FE8C: push eax
0081FE8D: lea eax, var_50
0081FE90: push eax
0081FE91: lea eax, var_4C
0081FE94: push eax
0081FE95: lea eax, var_48
0081FE98: push eax
0081FE99: lea eax, var_44
0081FE9C: push eax
0081FE9D: lea eax, var_40
0081FEA0: push eax
0081FEA1: lea eax, var_3C
0081FEA4: push eax
0081FEA5: lea eax, var_38
0081FEA8: push eax
0081FEA9: lea eax, var_34
0081FEAC: push eax
0081FEAD: lea eax, var_30
0081FEB0: push eax
0081FEB1: lea eax, var_2C
0081FEB4: push eax
0081FEB5: lea eax, var_28
0081FEB8: push eax
0081FEB9: lea eax, var_24
0081FEBC: push eax
0081FEBD: lea eax, var_20
0081FEC0: push eax
0081FEC1: push 00000014h
0081FEC3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081FEC8: add esp, 00000054h
0081FECB: lea eax, var_00000100
0081FED1: push eax
0081FED2: lea eax, var_000000FC
0081FED8: push eax
0081FED9: lea eax, var_000000F8
0081FEDF: push eax
0081FEE0: lea eax, var_000000F4
0081FEE6: push eax
0081FEE7: lea eax, var_000000F0
0081FEED: push eax
0081FEEE: lea eax, var_000000EC
0081FEF4: push eax
0081FEF5: lea eax, var_000000E8
0081FEFB: push eax
0081FEFC: lea eax, var_000000E4
0081FF02: push eax
0081FF03: lea eax, var_000000E0
0081FF09: push eax
0081FF0A: lea eax, var_000000DC
0081FF10: push eax
0081FF11: lea eax, var_000000D8
0081FF17: push eax
0081FF18: lea eax, var_000000D4
0081FF1E: push eax
0081FF1F: lea eax, var_000000D0
0081FF25: push eax
0081FF26: lea eax, var_000000CC
0081FF2C: push eax
0081FF2D: lea eax, var_000000C8
0081FF33: push eax
0081FF34: lea eax, var_000000C4
0081FF3A: push eax
0081FF3B: lea eax, var_000000C0
0081FF41: push eax
0081FF42: lea eax, var_000000BC
0081FF48: push eax
0081FF49: lea eax, var_000000B8
0081FF4F: push eax
0081FF50: lea eax, var_000000B4
0081FF56: push eax
0081FF57: lea eax, var_000000B0
0081FF5D: push eax
0081FF5E: lea eax, var_000000AC
0081FF64: push eax
0081FF65: lea eax, var_000000A8
0081FF6B: push eax
0081FF6C: lea eax, var_000000A4
0081FF72: push eax
0081FF73: lea eax, var_000000A0
0081FF79: push eax
0081FF7A: lea eax, var_0000009C
0081FF80: push eax
0081FF81: lea eax, var_00000098
0081FF87: push eax
0081FF88: lea eax, var_00000094
0081FF8E: push eax
0081FF8F: lea eax, var_00000090
0081FF95: push eax
0081FF96: lea eax, var_0000008C
0081FF9C: push eax
0081FF9D: lea eax, var_00000088
0081FFA3: push eax
0081FFA4: lea eax, var_00000084
0081FFAA: push eax
0081FFAB: lea eax, var_80
0081FFAE: push eax
0081FFAF: lea eax, var_7C
0081FFB2: push eax
0081FFB3: lea eax, var_78
0081FFB6: push eax
0081FFB7: lea eax, var_74
0081FFBA: push eax
0081FFBB: lea eax, var_70
0081FFBE: push eax
0081FFBF: push 00000025h
0081FFC1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081FFC6: add esp, 00000098h
0081FFCC: lea eax, var_00000340
0081FFD2: push eax
0081FFD3: lea eax, var_00000330
0081FFD9: push eax
0081FFDA: lea eax, var_00000320
0081FFE0: push eax
0081FFE1: lea eax, var_00000310
0081FFE7: push eax
0081FFE8: lea eax, var_00000300
0081FFEE: push eax
0081FFEF: lea eax, var_000002F0
0081FFF5: push eax
0081FFF6: lea eax, var_000002E0
0081FFFC: push eax
0081FFFD: lea eax, var_000002D0
00820003: push eax
00820004: lea eax, var_000002C0
0082000A: push eax
0082000B: lea eax, var_000002B0
00820011: push eax
00820012: lea eax, var_000002A0
00820018: push eax
00820019: lea eax, var_00000290
0082001F: push eax
00820020: lea eax, var_00000280
00820026: push eax
00820027: lea eax, var_00000270
0082002D: push eax
0082002E: lea eax, var_00000260
00820034: push eax
00820035: lea eax, var_00000250
0082003B: push eax
0082003C: lea eax, var_00000240
00820042: push eax
00820043: lea eax, var_00000230
00820049: push eax
0082004A: lea eax, var_00000220
00820050: push eax
00820051: lea eax, var_00000210
00820057: push eax
00820058: lea eax, var_00000200
0082005E: push eax
0082005F: lea eax, var_000001F0
00820065: push eax
00820066: lea eax, var_000001E0
0082006C: push eax
0082006D: lea eax, var_000001D0
00820073: push eax
00820074: lea eax, var_000001C0
0082007A: push eax
0082007B: lea eax, var_000001B0
00820081: push eax
00820082: lea eax, var_000001A0
00820088: push eax
00820089: lea eax, var_00000190
0082008F: push eax
00820090: lea eax, var_00000180
00820096: push eax
00820097: lea eax, var_00000170
0082009D: push eax
0082009E: lea eax, var_00000160
008200A4: push eax
008200A5: lea eax, var_00000150
008200AB: push eax
008200AC: lea eax, var_00000140
008200B2: push eax
008200B3: lea eax, var_00000130
008200B9: push eax
008200BA: lea eax, var_00000120
008200C0: push eax
008200C1: lea eax, var_00000110
008200C7: push eax
008200C8: push 00000024h
008200CA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008200CF: add esp, 00000094h
008200D5: ret 
End Sub

Private sub lstCaptured__8200F6
008200F6: push ebp
008200F7: mov ebp, esp
008200F9: sub esp, 0000000Ch
008200FC: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00820101: mov eax, fs:[00h]
00820107: push eax
00820108: mov fs:[00000000h], esp
0082010F: push 00000054h
00820111: pop eax
00820112: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00820117: push ebx
00820118: push esi
00820119: push edi
0082011A: mov var_0C, esp
0082011D: mov var_08, 0040B080h
00820124: mov eax, [ebp+08h]
00820127: and eax, 00000001h
0082012A: mov var_04, eax
0082012D: mov eax, [ebp+08h]
00820130: and al, FEh
00820132: mov [ebp+08h], eax
00820135: mov eax, [ebp+08h]
00820138: mov eax, [eax]
0082013A: push [ebp+08h]
0082013D: call [eax+04h]
00820140: mov eax, [ebp+0Ch]
00820143: cmp word ptr [eax], 0002h
00820147: jnz 00820221h
0082014D: mov var_50, 80020004h
00820154: mov var_58, 0000000Ah
0082015B: mov var_40, 80020004h
00820162: mov var_48, 0000000Ah
00820169: mov var_30, 80020004h
00820170: mov var_38, 0000000Ah
00820177: mov var_20, 80020004h
0082017E: mov var_28, 0000000Ah
00820185: push 00000010h
00820187: pop eax
00820188: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082018D: lea esi, var_58
00820190: mov edi, esp
00820192: movsd 
00820193: movsd 
00820194: movsd 
00820195: movsd 
00820196: push 00000010h
00820198: pop eax
00820199: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0082019E: lea esi, var_48
008201A1: mov edi, esp
008201A3: movsd 
008201A4: movsd 
008201A5: movsd 
008201A6: movsd 
008201A7: push 00000010h
008201A9: pop eax
008201AA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008201AF: lea esi, var_38
008201B2: mov edi, esp
008201B4: movsd 
008201B5: movsd 
008201B6: movsd 
008201B7: movsd 
008201B8: push 00000010h
008201BA: pop eax
008201BB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008201C0: lea esi, var_28
008201C3: mov edi, esp
008201C5: movsd 
008201C6: movsd 
008201C7: movsd 
008201C8: movsd 
008201C9: mov eax, [ebp+08h]
008201CC: mov eax, [eax]
008201CE: push [ebp+08h]
008201D1: call [eax+00000320h]
008201D7: push eax
008201D8: lea eax, var_18
008201DB: push eax
008201DC: call 00410A84h ; Set (object)
008201E1: push eax
008201E2: mov eax, [ebp+08h]
008201E5: mov eax, [eax]
008201E7: push [ebp+08h]
008201EA: call [eax+000002BCh]
008201F0: fclex 
008201F2: mov var_5C, eax
008201F5: cmp var_5C, 00000000h
008201F9: jnl 820215h
008201FB: push 000002BCh
00820200: push 00445198h
00820205: push [ebp+08h]
00820208: push var_5C
0082020B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00820210: mov var_68, eax
00820213: jmp 820219h
00820215: and var_68, 00000000h
00820219: lea ecx, var_18
0082021C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00820221: mov var_04, 00000000h
00820228: push 00820239h
0082022D: jmp 820238h
0082022F: lea ecx, var_18
00820232: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00820237: ret 
End Sub

Private sub lstCaptured__81D4A1
0081D4A1: push ebp
0081D4A2: mov ebp, esp
0081D4A4: sub esp, 00000018h
0081D4A7: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081D4AC: mov eax, fs:[00h]
0081D4B2: push eax
0081D4B3: mov fs:[00000000h], esp
0081D4BA: mov eax, 00000544h
0081D4BF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081D4C4: push ebx
0081D4C5: push esi
0081D4C6: push edi
0081D4C7: mov var_18, esp
0081D4CA: mov var_14, 0040B020h
0081D4D1: mov eax, [ebp+08h]
0081D4D4: and eax, 00000001h
0081D4D7: mov var_10, eax
0081D4DA: mov eax, [ebp+08h]
0081D4DD: and al, FEh
0081D4DF: mov [ebp+08h], eax
0081D4E2: mov var_0C, 00000000h
0081D4E9: mov eax, [ebp+08h]
0081D4EC: mov eax, [eax]
0081D4EE: push [ebp+08h]
0081D4F1: call [eax+04h]
0081D4F4: mov var_04, 00000001h
0081D4FB: mov var_04, 00000002h
0081D502: push FFFFFFFFh
0081D504: call 00410A60h ; On Error ...
0081D509: mov var_04, 00000003h
0081D510: cmp [008F26D0h], 00000000h
0081D517: jnz 81D534h
0081D519: push 008F26D0h
0081D51E: push 004123D4h
0081D523: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0081D528: mov var_00000500, 008F26D0h
0081D532: jmp 81D53Eh
0081D534: mov var_00000500, 008F26D0h
0081D53E: mov eax, var_00000500
0081D544: mov eax, [eax]
0081D546: mov var_00000444, eax
0081D54C: mov eax, [ebp+08h]
0081D54F: mov var_0000035C, eax
0081D555: mov var_00000364, 00000009h
0081D55F: mov var_0000034C, 80020004h
0081D569: mov var_00000354, 0000000Ah
0081D573: push 00000010h
0081D575: pop eax
0081D576: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081D57B: lea esi, var_00000364
0081D581: mov edi, esp
0081D583: movsd 
0081D584: movsd 
0081D585: movsd 
0081D586: movsd 
0081D587: push 00000010h
0081D589: pop eax
0081D58A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081D58F: lea esi, var_00000354
0081D595: mov edi, esp
0081D597: movsd 
0081D598: movsd 
0081D599: movsd 
0081D59A: movsd 
0081D59B: mov eax, var_00000444
0081D5A1: mov eax, [eax]
0081D5A3: push var_00000444
0081D5A9: call [eax+000002B0h]
0081D5AF: fclex 
0081D5B1: mov var_00000448, eax
0081D5B7: cmp var_00000448, 00000000h
0081D5BE: jnl 81D5E3h
0081D5C0: push 000002B0h
0081D5C5: push 004446F4h
0081D5CA: push var_00000444
0081D5D0: push var_00000448
0081D5D6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081D5DB: mov var_00000504, eax
0081D5E1: jmp 81D5EAh
0081D5E3: and var_00000504, 00000000h
0081D5EA: mov var_04, 00000004h
0081D5F1: and var_0000034C, 00000000h
0081D5F8: mov var_00000354, 00000008h
0081D602: cmp [008F26D0h], 00000000h
0081D609: jnz 81D626h
0081D60B: push 008F26D0h
0081D610: push 004123D4h
0081D615: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0081D61A: mov var_00000508, 008F26D0h
0081D624: jmp 81D630h
0081D626: mov var_00000508, 008F26D0h
0081D630: push 00000010h
0081D632: pop eax
0081D633: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081D638: lea esi, var_00000354
0081D63E: mov edi, esp
0081D640: movsd 
0081D641: movsd 
0081D642: movsd 
0081D643: movsd 
0081D644: push FFFFFDFBh
0081D649: mov eax, var_00000508
0081D64F: mov eax, [eax]
0081D651: mov ecx, var_00000508
0081D657: mov ecx, [ecx]
0081D659: mov ecx, [ecx]
0081D65B: push eax
0081D65C: call [ecx+000002FCh]
0081D662: push eax
0081D663: lea eax, var_74
0081D666: push eax
0081D667: call 00410A84h ; Set (object)
0081D66C: push eax
0081D66D: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081D672: lea ecx, var_74
0081D675: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081D67A: mov var_04, 00000005h
0081D681: cmp [008F26D0h], 00000000h
0081D688: jnz 81D6A5h
0081D68A: push 008F26D0h
0081D68F: push 004123D4h
0081D694: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0081D699: mov var_0000050C, 008F26D0h
0081D6A3: jmp 81D6AFh
0081D6A5: mov var_0000050C, 008F26D0h
0081D6AF: push 004412BCh
0081D6B4: push 00000000h
0081D6B6: push 00000007h
0081D6B8: mov eax, [ebp+08h]
0081D6BB: mov eax, [eax]
0081D6BD: push [ebp+08h]
0081D6C0: call [eax+0000032Ch]
0081D6C6: push eax
0081D6C7: lea eax, var_80
0081D6CA: push eax
0081D6CB: call 00410A84h ; Set (object)
0081D6D0: push eax
0081D6D1: lea eax, var_00000134
0081D6D7: push eax
0081D6D8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081D6DD: add esp, 00000010h
0081D6E0: push eax
0081D6E1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081D6E6: push eax
0081D6E7: lea eax, var_00000084
0081D6ED: push eax
0081D6EE: call 00410A84h ; Set (object)
0081D6F3: mov var_0000044C, eax
0081D6F9: push 004412DCh
0081D6FE: push 00000000h
0081D700: push 0000000Dh
0081D702: mov eax, [ebp+08h]
0081D705: mov eax, [eax]
0081D707: push [ebp+08h]
0081D70A: call [eax+0000032Ch]
0081D710: push eax
0081D711: lea eax, var_78
0081D714: push eax
0081D715: call 00410A84h ; Set (object)
0081D71A: push eax
0081D71B: lea eax, var_00000124
0081D721: push eax
0081D722: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081D727: add esp, 00000010h
0081D72A: push eax
0081D72B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081D730: push eax
0081D731: lea eax, var_7C
0081D734: push eax
0081D735: call 00410A84h ; Set (object)
0081D73A: mov var_00000444, eax
0081D740: lea eax, var_00000428
0081D746: push eax
0081D747: mov eax, var_00000444
0081D74D: mov eax, [eax]
0081D74F: push var_00000444
0081D755: call [eax+44h]
0081D758: fclex 
0081D75A: mov var_00000448, eax
0081D760: cmp var_00000448, 00000000h
0081D767: jnl 81D789h
0081D769: push 00000044h
0081D76B: push 004412DCh
0081D770: push var_00000444
0081D776: push var_00000448
0081D77C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081D781: mov var_00000510, eax
0081D787: jmp 81D790h
0081D789: and var_00000510, 00000000h
0081D790: mov eax, var_00000428
0081D796: mov var_0000013C, eax
0081D79C: mov var_00000144, 00000003h
0081D7A6: lea eax, var_00000088
0081D7AC: push eax
0081D7AD: lea eax, var_00000144
0081D7B3: push eax
0081D7B4: mov eax, var_0000044C
0081D7BA: mov eax, [eax]
0081D7BC: push var_0000044C
0081D7C2: call [eax+24h]
0081D7C5: fclex 
0081D7C7: mov var_00000450, eax
0081D7CD: cmp var_00000450, 00000000h
0081D7D4: jnl 81D7F6h
0081D7D6: push 00000024h
0081D7D8: push 004412BCh
0081D7DD: push var_0000044C
0081D7E3: push var_00000450
0081D7E9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081D7EE: mov var_00000514, eax
0081D7F4: jmp 81D7FDh
0081D7F6: and var_00000514, 00000000h
0081D7FD: mov eax, var_00000088
0081D803: mov var_00000454, eax
0081D809: lea eax, var_28
0081D80C: push eax
0081D80D: mov eax, var_00000454
0081D813: mov eax, [eax]
0081D815: push var_00000454
0081D81B: call [eax+24h]
0081D81E: fclex 
0081D820: mov var_00000458, eax
0081D826: cmp var_00000458, 00000000h
0081D82D: jnl 81D84Fh
0081D82F: push 00000024h
0081D831: push 004412DCh
0081D836: push var_00000454
0081D83C: push var_00000458
0081D842: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081D847: mov var_00000518, eax
0081D84D: jmp 81D856h
0081D84F: and var_00000518, 00000000h
0081D856: push 004412BCh
0081D85B: push 00000000h
0081D85D: push 00000007h
0081D85F: mov eax, [ebp+08h]
0081D862: mov eax, [eax]
0081D864: push [ebp+08h]
0081D867: call [eax+0000032Ch]
0081D86D: push eax
0081D86E: lea eax, var_00000094
0081D874: push eax
0081D875: call 00410A84h ; Set (object)
0081D87A: push eax
0081D87B: lea eax, var_00000164
0081D881: push eax
0081D882: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081D887: add esp, 00000010h
0081D88A: push eax
0081D88B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081D890: push eax
0081D891: lea eax, var_00000098
0081D897: push eax
0081D898: call 00410A84h ; Set (object)
0081D89D: mov var_00000464, eax
0081D8A3: push 004412DCh
0081D8A8: push 00000000h
0081D8AA: push 0000000Dh
0081D8AC: mov eax, [ebp+08h]
0081D8AF: mov eax, [eax]
0081D8B1: push [ebp+08h]
0081D8B4: call [eax+0000032Ch]
0081D8BA: push eax
0081D8BB: lea eax, var_0000008C
0081D8C1: push eax
0081D8C2: call 00410A84h ; Set (object)
0081D8C7: push eax
0081D8C8: lea eax, var_00000154
0081D8CE: push eax
0081D8CF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081D8D4: add esp, 00000010h
0081D8D7: push eax
0081D8D8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081D8DD: push eax
0081D8DE: lea eax, var_00000090
0081D8E4: push eax
0081D8E5: call 00410A84h ; Set (object)
0081D8EA: mov var_0000045C, eax
0081D8F0: lea eax, var_0000042C
0081D8F6: push eax
0081D8F7: mov eax, var_0000045C
0081D8FD: mov eax, [eax]
0081D8FF: push var_0000045C
0081D905: call [eax+44h]
0081D908: fclex 
0081D90A: mov var_00000460, eax
0081D910: cmp var_00000460, 00000000h
0081D917: jnl 81D939h
0081D919: push 00000044h
0081D91B: push 004412DCh
0081D920: push var_0000045C
0081D926: push var_00000460
0081D92C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081D931: mov var_0000051C, eax
0081D937: jmp 81D940h
0081D939: and var_0000051C, 00000000h
0081D940: mov eax, var_0000042C
0081D946: mov var_0000016C, eax
0081D94C: mov var_00000174, 00000003h
0081D956: lea eax, var_0000009C
0081D95C: push eax
0081D95D: lea eax, var_00000174
0081D963: push eax
0081D964: mov eax, var_00000464
0081D96A: mov eax, [eax]
0081D96C: push var_00000464
0081D972: call [eax+24h]
0081D975: fclex 
0081D977: mov var_00000468, eax
0081D97D: cmp var_00000468, 00000000h
0081D984: jnl 81D9A6h
0081D986: push 00000024h
0081D988: push 004412BCh
0081D98D: push var_00000464
0081D993: push var_00000468
0081D999: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081D99E: mov var_00000520, eax
0081D9A4: jmp 81D9ADh
0081D9A6: and var_00000520, 00000000h
0081D9AD: mov eax, var_0000009C
0081D9B3: mov var_0000046C, eax
0081D9B9: lea eax, var_38
0081D9BC: push eax
0081D9BD: push 00000001h
0081D9BF: mov eax, var_0000046C
0081D9C5: mov eax, [eax]
0081D9C7: push var_0000046C
0081D9CD: call [eax+00000084h]
0081D9D3: fclex 
0081D9D5: mov var_00000470, eax
0081D9DB: cmp var_00000470, 00000000h
0081D9E2: jnl 81DA07h
0081D9E4: push 00000084h
0081D9E9: push 004412DCh
0081D9EE: push var_0000046C
0081D9F4: push var_00000470
0081D9FA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081D9FF: mov var_00000524, eax
0081DA05: jmp 81DA0Eh
0081DA07: and var_00000524, 00000000h
0081DA0E: push 004412BCh
0081DA13: push 00000000h
0081DA15: push 00000007h
0081DA17: mov eax, [ebp+08h]
0081DA1A: mov eax, [eax]
0081DA1C: push [ebp+08h]
0081DA1F: call [eax+0000032Ch]
0081DA25: push eax
0081DA26: lea eax, var_000000A8
0081DA2C: push eax
0081DA2D: call 00410A84h ; Set (object)
0081DA32: push eax
0081DA33: lea eax, var_00000194
0081DA39: push eax
0081DA3A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081DA3F: add esp, 00000010h
0081DA42: push eax
0081DA43: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081DA48: push eax
0081DA49: lea eax, var_000000AC
0081DA4F: push eax
0081DA50: call 00410A84h ; Set (object)
0081DA55: mov var_0000047C, eax
0081DA5B: push 004412DCh
0081DA60: push 00000000h
0081DA62: push 0000000Dh
0081DA64: mov eax, [ebp+08h]
0081DA67: mov eax, [eax]
0081DA69: push [ebp+08h]
0081DA6C: call [eax+0000032Ch]
0081DA72: push eax
0081DA73: lea eax, var_000000A0
0081DA79: push eax
0081DA7A: call 00410A84h ; Set (object)
0081DA7F: push eax
0081DA80: lea eax, var_00000184
0081DA86: push eax
0081DA87: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081DA8C: add esp, 00000010h
0081DA8F: push eax
0081DA90: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081DA95: push eax
0081DA96: lea eax, var_000000A4
0081DA9C: push eax
0081DA9D: call 00410A84h ; Set (object)
0081DAA2: mov var_00000474, eax
0081DAA8: lea eax, var_00000430
0081DAAE: push eax
0081DAAF: mov eax, var_00000474
0081DAB5: mov eax, [eax]
0081DAB7: push var_00000474
0081DABD: call [eax+44h]
0081DAC0: fclex 
0081DAC2: mov var_00000478, eax
0081DAC8: cmp var_00000478, 00000000h
0081DACF: jnl 81DAF1h
0081DAD1: push 00000044h
0081DAD3: push 004412DCh
0081DAD8: push var_00000474
0081DADE: push var_00000478
0081DAE4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081DAE9: mov var_00000528, eax
0081DAEF: jmp 81DAF8h
0081DAF1: and var_00000528, 00000000h
0081DAF8: mov eax, var_00000430
0081DAFE: mov var_0000019C, eax
0081DB04: mov var_000001A4, 00000003h
0081DB0E: lea eax, var_000000B0
0081DB14: push eax
0081DB15: lea eax, var_000001A4
0081DB1B: push eax
0081DB1C: mov eax, var_0000047C
0081DB22: mov eax, [eax]
0081DB24: push var_0000047C
0081DB2A: call [eax+24h]
0081DB2D: fclex 
0081DB2F: mov var_00000480, eax
0081DB35: cmp var_00000480, 00000000h
0081DB3C: jnl 81DB5Eh
0081DB3E: push 00000024h
0081DB40: push 004412BCh
0081DB45: push var_0000047C
0081DB4B: push var_00000480
0081DB51: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081DB56: mov var_0000052C, eax
0081DB5C: jmp 81DB65h
0081DB5E: and var_0000052C, 00000000h
0081DB65: mov eax, var_000000B0
0081DB6B: mov var_00000484, eax
0081DB71: lea eax, var_44
0081DB74: push eax
0081DB75: push 00000002h
0081DB77: mov eax, var_00000484
0081DB7D: mov eax, [eax]
0081DB7F: push var_00000484
0081DB85: call [eax+00000084h]
0081DB8B: fclex 
0081DB8D: mov var_00000488, eax
0081DB93: cmp var_00000488, 00000000h
0081DB9A: jnl 81DBBFh
0081DB9C: push 00000084h
0081DBA1: push 004412DCh
0081DBA6: push var_00000484
0081DBAC: push var_00000488
0081DBB2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081DBB7: mov var_00000530, eax
0081DBBD: jmp 81DBC6h
0081DBBF: and var_00000530, 00000000h
0081DBC6: push 004412BCh
0081DBCB: push 00000000h
0081DBCD: push 00000007h
0081DBCF: mov eax, [ebp+08h]
0081DBD2: mov eax, [eax]
0081DBD4: push [ebp+08h]
0081DBD7: call [eax+0000032Ch]
0081DBDD: push eax
0081DBDE: lea eax, var_000000BC
0081DBE4: push eax
0081DBE5: call 00410A84h ; Set (object)
0081DBEA: push eax
0081DBEB: lea eax, var_000001C4
0081DBF1: push eax
0081DBF2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081DBF7: add esp, 00000010h
0081DBFA: push eax
0081DBFB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081DC00: push eax
0081DC01: lea eax, var_000000C0
0081DC07: push eax
0081DC08: call 00410A84h ; Set (object)
0081DC0D: mov var_00000494, eax
0081DC13: push 004412DCh
0081DC18: push 00000000h
0081DC1A: push 0000000Dh
0081DC1C: mov eax, [ebp+08h]
0081DC1F: mov eax, [eax]
0081DC21: push [ebp+08h]
0081DC24: call [eax+0000032Ch]
0081DC2A: push eax
0081DC2B: lea eax, var_000000B4
0081DC31: push eax
0081DC32: call 00410A84h ; Set (object)
0081DC37: push eax
0081DC38: lea eax, var_000001B4
0081DC3E: push eax
0081DC3F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081DC44: add esp, 00000010h
0081DC47: push eax
0081DC48: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081DC4D: push eax
0081DC4E: lea eax, var_000000B8
0081DC54: push eax
0081DC55: call 00410A84h ; Set (object)
0081DC5A: mov var_0000048C, eax
0081DC60: lea eax, var_00000434
0081DC66: push eax
0081DC67: mov eax, var_0000048C
0081DC6D: mov eax, [eax]
0081DC6F: push var_0000048C
0081DC75: call [eax+44h]
0081DC78: fclex 
0081DC7A: mov var_00000490, eax
0081DC80: cmp var_00000490, 00000000h
0081DC87: jnl 81DCA9h
0081DC89: push 00000044h
0081DC8B: push 004412DCh
0081DC90: push var_0000048C
0081DC96: push var_00000490
0081DC9C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081DCA1: mov var_00000534, eax
0081DCA7: jmp 81DCB0h
0081DCA9: and var_00000534, 00000000h
0081DCB0: mov eax, var_00000434
0081DCB6: mov var_000001CC, eax
0081DCBC: mov var_000001D4, 00000003h
0081DCC6: lea eax, var_000000C4
0081DCCC: push eax
0081DCCD: lea eax, var_000001D4
0081DCD3: push eax
0081DCD4: mov eax, var_00000494
0081DCDA: mov eax, [eax]
0081DCDC: push var_00000494
0081DCE2: call [eax+24h]
0081DCE5: fclex 
0081DCE7: mov var_00000498, eax
0081DCED: cmp var_00000498, 00000000h
0081DCF4: jnl 81DD16h
0081DCF6: push 00000024h
0081DCF8: push 004412BCh
0081DCFD: push var_00000494
0081DD03: push var_00000498
0081DD09: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081DD0E: mov var_00000538, eax
0081DD14: jmp 81DD1Dh
0081DD16: and var_00000538, 00000000h
0081DD1D: mov eax, var_000000C4
0081DD23: mov var_0000049C, eax
0081DD29: lea eax, var_54
0081DD2C: push eax
0081DD2D: push 00000003h
0081DD2F: mov eax, var_0000049C
0081DD35: mov eax, [eax]
0081DD37: push var_0000049C
0081DD3D: call [eax+00000084h]
0081DD43: fclex 
0081DD45: mov var_000004A0, eax
0081DD4B: cmp var_000004A0, 00000000h
0081DD52: jnl 81DD77h
0081DD54: push 00000084h
0081DD59: push 004412DCh
0081DD5E: push var_0000049C
0081DD64: push var_000004A0
0081DD6A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081DD6F: mov var_0000053C, eax
0081DD75: jmp 81DD7Eh
0081DD77: and var_0000053C, 00000000h
0081DD7E: push 004412BCh
0081DD83: push 00000000h
0081DD85: push 00000007h
0081DD87: mov eax, [ebp+08h]
0081DD8A: mov eax, [eax]
0081DD8C: push [ebp+08h]
0081DD8F: call [eax+0000032Ch]
0081DD95: push eax
0081DD96: lea eax, var_000000D0
0081DD9C: push eax
0081DD9D: call 00410A84h ; Set (object)
0081DDA2: push eax
0081DDA3: lea eax, var_000001F4
0081DDA9: push eax
0081DDAA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081DDAF: add esp, 00000010h
0081DDB2: push eax
0081DDB3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081DDB8: push eax
0081DDB9: lea eax, var_000000D4
0081DDBF: push eax
0081DDC0: call 00410A84h ; Set (object)
0081DDC5: mov var_000004AC, eax
0081DDCB: push 004412DCh
0081DDD0: push 00000000h
0081DDD2: push 0000000Dh
0081DDD4: mov eax, [ebp+08h]
0081DDD7: mov eax, [eax]
0081DDD9: push [ebp+08h]
0081DDDC: call [eax+0000032Ch]
0081DDE2: push eax
0081DDE3: lea eax, var_000000C8
0081DDE9: push eax
0081DDEA: call 00410A84h ; Set (object)
0081DDEF: push eax
0081DDF0: lea eax, var_000001E4
0081DDF6: push eax
0081DDF7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081DDFC: add esp, 00000010h
0081DDFF: push eax
0081DE00: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081DE05: push eax
0081DE06: lea eax, var_000000CC
0081DE0C: push eax
0081DE0D: call 00410A84h ; Set (object)
0081DE12: mov var_000004A4, eax
0081DE18: lea eax, var_00000438
0081DE1E: push eax
0081DE1F: mov eax, var_000004A4
0081DE25: mov eax, [eax]
0081DE27: push var_000004A4
0081DE2D: call [eax+44h]
0081DE30: fclex 
0081DE32: mov var_000004A8, eax
0081DE38: cmp var_000004A8, 00000000h
0081DE3F: jnl 81DE61h
0081DE41: push 00000044h
0081DE43: push 004412DCh
0081DE48: push var_000004A4
0081DE4E: push var_000004A8
0081DE54: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081DE59: mov var_00000540, eax
0081DE5F: jmp 81DE68h
0081DE61: and var_00000540, 00000000h
0081DE68: mov eax, var_00000438
0081DE6E: mov var_000001FC, eax
0081DE74: mov var_00000204, 00000003h
0081DE7E: lea eax, var_000000D8
0081DE84: push eax
0081DE85: lea eax, var_00000204
0081DE8B: push eax
0081DE8C: mov eax, var_000004AC
0081DE92: mov eax, [eax]
0081DE94: push var_000004AC
0081DE9A: call [eax+24h]
0081DE9D: fclex 
0081DE9F: mov var_000004B0, eax
0081DEA5: cmp var_000004B0, 00000000h
0081DEAC: jnl 81DECEh
0081DEAE: push 00000024h
0081DEB0: push 004412BCh
0081DEB5: push var_000004AC
0081DEBB: push var_000004B0
0081DEC1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081DEC6: mov var_00000544, eax
0081DECC: jmp 81DED5h
0081DECE: and var_00000544, 00000000h
0081DED5: mov eax, var_000000D8
0081DEDB: mov var_000004B4, eax
0081DEE1: lea eax, var_60
0081DEE4: push eax
0081DEE5: push 00000004h
0081DEE7: mov eax, var_000004B4
0081DEED: mov eax, [eax]
0081DEEF: push var_000004B4
0081DEF5: call [eax+00000084h]
0081DEFB: fclex 
0081DEFD: mov var_000004B8, eax
0081DF03: cmp var_000004B8, 00000000h
0081DF0A: jnl 81DF2Fh
0081DF0C: push 00000084h
0081DF11: push 004412DCh
0081DF16: push var_000004B4
0081DF1C: push var_000004B8
0081DF22: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081DF27: mov var_00000548, eax
0081DF2D: jmp 81DF36h
0081DF2F: and var_00000548, 00000000h
0081DF36: push 00000000h
0081DF38: push FFFFFDFBh
0081DF3D: mov eax, var_0000050C
0081DF43: mov eax, [eax]
0081DF45: mov ecx, var_0000050C
0081DF4B: mov ecx, [ecx]
0081DF4D: mov ecx, [ecx]
0081DF4F: push eax
0081DF50: call [ecx+000002FCh]
0081DF56: push eax
0081DF57: lea eax, var_74
0081DF5A: push eax
0081DF5B: call 00410A84h ; Set (object)
0081DF60: push eax
0081DF61: lea eax, var_00000114
0081DF67: push eax
0081DF68: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081DF6D: add esp, 00000010h
0081DF70: push eax
0081DF71: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0081DF76: mov edx, eax
0081DF78: lea ecx, var_24
0081DF7B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081DF80: push eax
0081DF81: push 00453E18h ; Protocol:
0081DF86: call 00410A18h ; &
0081DF8B: mov edx, eax
0081DF8D: lea ecx, var_2C
0081DF90: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081DF95: push eax
0081DF96: push var_28
0081DF99: call 00410A18h ; &
0081DF9E: mov edx, eax
0081DFA0: lea ecx, var_30
0081DFA3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081DFA8: push eax
0081DFA9: push 00441264h ; vbCrLf
0081DFAE: call 00410A18h ; &
0081DFB3: mov edx, eax
0081DFB5: lea ecx, var_34
0081DFB8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081DFBD: push eax
0081DFBE: push 00453E34h ; Source:
0081DFC3: call 00410A18h ; &
0081DFC8: mov edx, eax
0081DFCA: lea ecx, var_3C
0081DFCD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081DFD2: push eax
0081DFD3: push var_38
0081DFD6: call 00410A18h ; &
0081DFDB: mov edx, eax
0081DFDD: lea ecx, var_40
0081DFE0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081DFE5: push eax
0081DFE6: push 004412B8h
0081DFEB: call 00410A18h ; &
0081DFF0: mov edx, eax
0081DFF2: lea ecx, var_48
0081DFF5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081DFFA: push eax
0081DFFB: push var_44
0081DFFE: call 00410A18h ; &
0081E003: mov edx, eax
0081E005: lea ecx, var_4C
0081E008: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081E00D: push eax
0081E00E: push 00441264h ; vbCrLf
0081E013: call 00410A18h ; &
0081E018: mov edx, eax
0081E01A: lea ecx, var_50
0081E01D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081E022: push eax
0081E023: push 00453E4Ch ; Destination:
0081E028: call 00410A18h ; &
0081E02D: mov edx, eax
0081E02F: lea ecx, var_58
0081E032: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081E037: push eax
0081E038: push var_54
0081E03B: call 00410A18h ; &
0081E040: mov edx, eax
0081E042: lea ecx, var_5C
0081E045: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081E04A: push eax
0081E04B: push 004412B8h
0081E050: call 00410A18h ; &
0081E055: mov edx, eax
0081E057: lea ecx, var_64
0081E05A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081E05F: push eax
0081E060: push var_60
0081E063: call 00410A18h ; &
0081E068: mov edx, eax
0081E06A: lea ecx, var_68
0081E06D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081E072: push eax
0081E073: push 00441264h ; vbCrLf
0081E078: call 00410A18h ; &
0081E07D: mov edx, eax
0081E07F: lea ecx, var_6C
0081E082: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081E087: push eax
0081E088: push 00453E6Ch ; Packet size:
0081E08D: call 00410A18h ; &
0081E092: mov var_0000025C, eax
0081E098: mov var_00000264, 00000008h
0081E0A2: push 004412BCh
0081E0A7: push 00000000h
0081E0A9: push 00000007h
0081E0AB: mov eax, [ebp+08h]
0081E0AE: mov eax, [eax]
0081E0B0: push [ebp+08h]
0081E0B3: call [eax+0000032Ch]
0081E0B9: push eax
0081E0BA: lea eax, var_000000E4
0081E0C0: push eax
0081E0C1: call 00410A84h ; Set (object)
0081E0C6: push eax
0081E0C7: lea eax, var_00000224
0081E0CD: push eax
0081E0CE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081E0D3: add esp, 00000010h
0081E0D6: push eax
0081E0D7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081E0DC: push eax
0081E0DD: lea eax, var_000000E8
0081E0E3: push eax
0081E0E4: call 00410A84h ; Set (object)
0081E0E9: mov var_000004C4, eax
0081E0EF: push 004412DCh
0081E0F4: push 00000000h
0081E0F6: push 0000000Dh
0081E0F8: mov eax, [ebp+08h]
0081E0FB: mov eax, [eax]
0081E0FD: push [ebp+08h]
0081E100: call [eax+0000032Ch]
0081E106: push eax
0081E107: lea eax, var_000000DC
0081E10D: push eax
0081E10E: call 00410A84h ; Set (object)
0081E113: push eax
0081E114: lea eax, var_00000214
0081E11A: push eax
0081E11B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081E120: add esp, 00000010h
0081E123: push eax
0081E124: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081E129: push eax
0081E12A: lea eax, var_000000E0
0081E130: push eax
0081E131: call 00410A84h ; Set (object)
0081E136: mov var_000004BC, eax
0081E13C: lea eax, var_0000043C
0081E142: push eax
0081E143: mov eax, var_000004BC
0081E149: mov eax, [eax]
0081E14B: push var_000004BC
0081E151: call [eax+44h]
0081E154: fclex 
0081E156: mov var_000004C0, eax
0081E15C: cmp var_000004C0, 00000000h
0081E163: jnl 81E185h
0081E165: push 00000044h
0081E167: push 004412DCh
0081E16C: push var_000004BC
0081E172: push var_000004C0
0081E178: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081E17D: mov var_0000054C, eax
0081E183: jmp 81E18Ch
0081E185: and var_0000054C, 00000000h
0081E18C: mov eax, var_0000043C
0081E192: mov var_0000022C, eax
0081E198: mov var_00000234, 00000003h
0081E1A2: lea eax, var_000000EC
0081E1A8: push eax
0081E1A9: lea eax, var_00000234
0081E1AF: push eax
0081E1B0: mov eax, var_000004C4
0081E1B6: mov eax, [eax]
0081E1B8: push var_000004C4
0081E1BE: call [eax+24h]
0081E1C1: fclex 
0081E1C3: mov var_000004C8, eax
0081E1C9: cmp var_000004C8, 00000000h
0081E1D0: jnl 81E1F2h
0081E1D2: push 00000024h
0081E1D4: push 004412BCh
0081E1D9: push var_000004C4
0081E1DF: push var_000004C8
0081E1E5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081E1EA: mov var_00000550, eax
0081E1F0: jmp 81E1F9h
0081E1F2: and var_00000550, 00000000h
0081E1F9: mov eax, var_000000EC
0081E1FF: mov var_000004CC, eax
0081E205: lea eax, var_00000244
0081E20B: push eax
0081E20C: mov eax, var_000004CC
0081E212: mov eax, [eax]
0081E214: push var_000004CC
0081E21A: call [eax+6Ch]
0081E21D: fclex 
0081E21F: mov var_000004D0, eax
0081E225: cmp var_000004D0, 00000000h
0081E22C: jnl 81E24Eh
0081E22E: push 0000006Ch
0081E230: push 004412DCh
0081E235: push var_000004CC
0081E23B: push var_000004D0
0081E241: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081E246: mov var_00000554, eax
0081E24C: jmp 81E255h
0081E24E: and var_00000554, 00000000h
0081E255: mov var_000003AC, 00453E8Ch ; bytes
0081E25F: mov var_000003B4, 00000008h
0081E269: mov var_000003BC, 00441264h ; vbCrLf
0081E273: mov var_000003C4, 00000008h
0081E27D: mov var_000003CC, 00453EA0h ; Data:
0081E287: mov var_000003D4, 00000008h
0081E291: mov var_000003DC, 00441264h ; vbCrLf
0081E29B: mov var_000003E4, 00000008h
0081E2A5: push 004412BCh
0081E2AA: push 00000000h
0081E2AC: push 00000007h
0081E2AE: mov eax, [ebp+08h]
0081E2B1: mov eax, [eax]
0081E2B3: push [ebp+08h]
0081E2B6: call [eax+0000032Ch]
0081E2BC: push eax
0081E2BD: lea eax, var_000000F8
0081E2C3: push eax
0081E2C4: call 00410A84h ; Set (object)
0081E2C9: push eax
0081E2CA: lea eax, var_000002D4
0081E2D0: push eax
0081E2D1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081E2D6: add esp, 00000010h
0081E2D9: push eax
0081E2DA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081E2DF: push eax
0081E2E0: lea eax, var_000000FC
0081E2E6: push eax
0081E2E7: call 00410A84h ; Set (object)
0081E2EC: mov var_000004DC, eax
0081E2F2: push 004412DCh
0081E2F7: push 00000000h
0081E2F9: push 0000000Dh
0081E2FB: mov eax, [ebp+08h]
0081E2FE: mov eax, [eax]
0081E300: push [ebp+08h]
0081E303: call [eax+0000032Ch]
0081E309: push eax
0081E30A: lea eax, var_000000F0
0081E310: push eax
0081E311: call 00410A84h ; Set (object)
0081E316: push eax
0081E317: lea eax, var_000002C4
0081E31D: push eax
0081E31E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0081E323: add esp, 00000010h
0081E326: push eax
0081E327: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0081E32C: push eax
0081E32D: lea eax, var_000000F4
0081E333: push eax
0081E334: call 00410A84h ; Set (object)
0081E339: mov var_000004D4, eax
0081E33F: lea eax, var_00000440
0081E345: push eax
0081E346: mov eax, var_000004D4
0081E34C: mov eax, [eax]
0081E34E: push var_000004D4
0081E354: call [eax+44h]
0081E357: fclex 
0081E359: mov var_000004D8, eax
0081E35F: cmp var_000004D8, 00000000h
0081E366: jnl 81E388h
0081E368: push 00000044h
0081E36A: push 004412DCh
0081E36F: push var_000004D4
0081E375: push var_000004D8
0081E37B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081E380: mov var_00000558, eax
0081E386: jmp 81E38Fh
0081E388: and var_00000558, 00000000h
0081E38F: mov eax, var_00000440
0081E395: mov var_000002DC, eax
0081E39B: mov var_000002E4, 00000003h
0081E3A5: lea eax, var_00000100
0081E3AB: push eax
0081E3AC: lea eax, var_000002E4
0081E3B2: push eax
0081E3B3: mov eax, var_000004DC
0081E3B9: mov eax, [eax]
0081E3BB: push var_000004DC
0081E3C1: call [eax+24h]
0081E3C4: fclex 
0081E3C6: mov var_000004E0, eax
0081E3CC: cmp var_000004E0, 00000000h
0081E3D3: jnl 81E3F5h
0081E3D5: push 00000024h
0081E3D7: push 004412BCh
0081E3DC: push var_000004DC
0081E3E2: push var_000004E0
0081E3E8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081E3ED: mov var_0000055C, eax
0081E3F3: jmp 81E3FCh
0081E3F5: and var_0000055C, 00000000h
0081E3FC: mov eax, var_00000100
0081E402: mov var_000004E4, eax
0081E408: lea eax, var_000002F4
0081E40E: push eax
0081E40F: mov eax, var_000004E4
0081E415: mov eax, [eax]
0081E417: push var_000004E4
0081E41D: call [eax+6Ch]
0081E420: fclex 
0081E422: mov var_000004E8, eax
0081E428: cmp var_000004E8, 00000000h
0081E42F: jnl 81E451h
0081E431: push 0000006Ch
0081E433: push 004412DCh
0081E438: push var_000004E4
0081E43E: push var_000004E8
0081E444: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081E449: mov var_00000560, eax
0081E44F: jmp 81E458h
0081E451: and var_00000560, 00000000h
0081E458: lea eax, var_000002F4
0081E45E: push eax
0081E45F: lea eax, var_70
0081E462: push eax
0081E463: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
0081E468: push eax
0081E469: call 007BBB4Ch
0081E46E: mov var_000002FC, eax
0081E474: mov var_00000304, 00000008h
0081E47E: mov var_000003FC, 00441264h ; vbCrLf
0081E488: mov var_00000404, 00000008h
0081E492: mov var_0000040C, 00441264h ; vbCrLf
0081E49C: mov var_00000414, 00000008h
0081E4A6: lea eax, var_00000264
0081E4AC: push eax
0081E4AD: lea eax, var_00000244
0081E4B3: push eax
0081E4B4: lea eax, var_00000254
0081E4BA: push eax
0081E4BB: call 00410916h ; arg_1 = Len(arg_2)
0081E4C0: push eax
0081E4C1: lea eax, var_00000274
0081E4C7: push eax
0081E4C8: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0081E4CD: push eax
0081E4CE: lea eax, var_000003B4
0081E4D4: push eax
0081E4D5: lea eax, var_00000284
0081E4DB: push eax
0081E4DC: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0081E4E1: push eax
0081E4E2: lea eax, var_000003C4
0081E4E8: push eax
0081E4E9: lea eax, var_00000294
0081E4EF: push eax
0081E4F0: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0081E4F5: push eax
0081E4F6: lea eax, var_000003D4
0081E4FC: push eax
0081E4FD: lea eax, var_000002A4
0081E503: push eax
0081E504: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0081E509: push eax
0081E50A: lea eax, var_000003E4
0081E510: push eax
0081E511: lea eax, var_000002B4
0081E517: push eax
0081E518: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0081E51D: push eax
0081E51E: lea eax, var_00000304
0081E524: push eax
0081E525: lea eax, var_00000314
0081E52B: push eax
0081E52C: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0081E531: push eax
0081E532: lea eax, var_00000404
0081E538: push eax
0081E539: lea eax, var_00000324
0081E53F: push eax
0081E540: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0081E545: push eax
0081E546: lea eax, var_00000414
0081E54C: push eax
0081E54D: lea eax, var_00000334
0081E553: push eax
0081E554: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0081E559: push eax
0081E55A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0081E55F: mov var_0000033C, eax
0081E565: mov var_00000344, 00000008h
0081E56F: cmp [008F26D0h], 00000000h
0081E576: jnz 81E593h
0081E578: push 008F26D0h
0081E57D: push 004123D4h
0081E582: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0081E587: mov var_00000564, 008F26D0h
0081E591: jmp 81E59Dh
0081E593: mov var_00000564, 008F26D0h
0081E59D: push 00000010h
0081E59F: pop eax
0081E5A0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081E5A5: lea esi, var_00000344
0081E5AB: mov edi, esp
0081E5AD: movsd 
0081E5AE: movsd 
0081E5AF: movsd 
0081E5B0: movsd 
0081E5B1: push FFFFFDFBh
0081E5B6: mov eax, var_00000564
0081E5BC: mov eax, [eax]
0081E5BE: mov ecx, var_00000564
0081E5C4: mov ecx, [ecx]
0081E5C6: mov ecx, [ecx]
0081E5C8: push eax
0081E5C9: call [ecx+000002FCh]
0081E5CF: push eax
0081E5D0: lea eax, var_00000104
0081E5D6: push eax
0081E5D7: call 00410A84h ; Set (object)
0081E5DC: push eax
0081E5DD: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081E5E2: lea eax, var_70
0081E5E5: push eax
0081E5E6: lea eax, var_6C
0081E5E9: push eax
0081E5EA: lea eax, var_68
0081E5ED: push eax
0081E5EE: lea eax, var_60
0081E5F1: push eax
0081E5F2: lea eax, var_64
0081E5F5: push eax
0081E5F6: lea eax, var_5C
0081E5F9: push eax
0081E5FA: lea eax, var_54
0081E5FD: push eax
0081E5FE: lea eax, var_58
0081E601: push eax
0081E602: lea eax, var_50
0081E605: push eax
0081E606: lea eax, var_4C
0081E609: push eax
0081E60A: lea eax, var_44
0081E60D: push eax
0081E60E: lea eax, var_48
0081E611: push eax
0081E612: lea eax, var_40
0081E615: push eax
0081E616: lea eax, var_38
0081E619: push eax
0081E61A: lea eax, var_3C
0081E61D: push eax
0081E61E: lea eax, var_34
0081E621: push eax
0081E622: lea eax, var_30
0081E625: push eax
0081E626: lea eax, var_28
0081E629: push eax
0081E62A: lea eax, var_2C
0081E62D: push eax
0081E62E: lea eax, var_24
0081E631: push eax
0081E632: push 00000014h
0081E634: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081E639: add esp, 00000054h
0081E63C: lea eax, var_000000E8
0081E642: push eax
0081E643: lea eax, var_000000E4
0081E649: push eax
0081E64A: lea eax, var_000000E0
0081E650: push eax
0081E651: lea eax, var_000000DC
0081E657: push eax
0081E658: lea eax, var_000000D8
0081E65E: push eax
0081E65F: lea eax, var_000000D4
0081E665: push eax
0081E666: lea eax, var_000000D0
0081E66C: push eax
0081E66D: lea eax, var_000000CC
0081E673: push eax
0081E674: lea eax, var_000000C8
0081E67A: push eax
0081E67B: lea eax, var_000000C4
0081E681: push eax
0081E682: lea eax, var_000000C0
0081E688: push eax
0081E689: lea eax, var_000000BC
0081E68F: push eax
0081E690: lea eax, var_000000B8
0081E696: push eax
0081E697: lea eax, var_000000B4
0081E69D: push eax
0081E69E: lea eax, var_000000B0
0081E6A4: push eax
0081E6A5: lea eax, var_000000AC
0081E6AB: push eax
0081E6AC: lea eax, var_000000A8
0081E6B2: push eax
0081E6B3: lea eax, var_000000A4
0081E6B9: push eax
0081E6BA: lea eax, var_000000A0
0081E6C0: push eax
0081E6C1: lea eax, var_0000009C
0081E6C7: push eax
0081E6C8: lea eax, var_00000098
0081E6CE: push eax
0081E6CF: lea eax, var_00000094
0081E6D5: push eax
0081E6D6: lea eax, var_00000090
0081E6DC: push eax
0081E6DD: lea eax, var_0000008C
0081E6E3: push eax
0081E6E4: lea eax, var_00000088
0081E6EA: push eax
0081E6EB: lea eax, var_00000084
0081E6F1: push eax
0081E6F2: lea eax, var_80
0081E6F5: push eax
0081E6F6: lea eax, var_7C
0081E6F9: push eax
0081E6FA: lea eax, var_78
0081E6FD: push eax
0081E6FE: lea eax, var_74
0081E701: push eax
0081E702: lea eax, var_00000104
0081E708: push eax
0081E709: lea eax, var_00000100
0081E70F: push eax
0081E710: lea eax, var_000000FC
0081E716: push eax
0081E717: lea eax, var_000000F8
0081E71D: push eax
0081E71E: lea eax, var_000000F4
0081E724: push eax
0081E725: lea eax, var_000000F0
0081E72B: push eax
0081E72C: lea eax, var_000000EC
0081E732: push eax
0081E733: push 00000025h
0081E735: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081E73A: add esp, 00000098h
0081E740: lea eax, var_000002B4
0081E746: push eax
0081E747: lea eax, var_000002F4
0081E74D: push eax
0081E74E: lea eax, var_000002E4
0081E754: push eax
0081E755: lea eax, var_000002D4
0081E75B: push eax
0081E75C: lea eax, var_000002C4
0081E762: push eax
0081E763: lea eax, var_000002A4
0081E769: push eax
0081E76A: lea eax, var_00000294
0081E770: push eax
0081E771: lea eax, var_00000284
0081E777: push eax
0081E778: lea eax, var_00000274
0081E77E: push eax
0081E77F: lea eax, var_00000264
0081E785: push eax
0081E786: lea eax, var_00000244
0081E78C: push eax
0081E78D: lea eax, var_00000234
0081E793: push eax
0081E794: lea eax, var_00000224
0081E79A: push eax
0081E79B: lea eax, var_00000214
0081E7A1: push eax
0081E7A2: lea eax, var_00000204
0081E7A8: push eax
0081E7A9: lea eax, var_000001F4
0081E7AF: push eax
0081E7B0: lea eax, var_000001E4
0081E7B6: push eax
0081E7B7: lea eax, var_000001D4
0081E7BD: push eax
0081E7BE: lea eax, var_000001C4
0081E7C4: push eax
0081E7C5: lea eax, var_000001B4
0081E7CB: push eax
0081E7CC: lea eax, var_000001A4
0081E7D2: push eax
0081E7D3: lea eax, var_00000194
0081E7D9: push eax
0081E7DA: lea eax, var_00000184
0081E7E0: push eax
0081E7E1: lea eax, var_00000174
0081E7E7: push eax
0081E7E8: lea eax, var_00000164
0081E7EE: push eax
0081E7EF: lea eax, var_00000154
0081E7F5: push eax
0081E7F6: lea eax, var_00000144
0081E7FC: push eax
0081E7FD: lea eax, var_00000134
0081E803: push eax
0081E804: lea eax, var_00000124
0081E80A: push eax
0081E80B: lea eax, var_00000114
0081E811: push eax
0081E812: lea eax, var_00000344
0081E818: push eax
0081E819: lea eax, var_00000334
0081E81F: push eax
0081E820: lea eax, var_00000324
0081E826: push eax
0081E827: lea eax, var_00000314
0081E82D: push eax
0081E82E: lea eax, var_00000304
0081E834: push eax
0081E835: push 00000023h
0081E837: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0081E83C: add esp, 00000090h
0081E842: mov var_10, 00000000h
0081E849: push 0081EABCh
0081E84E: jmp 0081EABBh
0081E853: lea eax, var_70
0081E856: push eax
0081E857: lea eax, var_6C
0081E85A: push eax
0081E85B: lea eax, var_68
0081E85E: push eax
0081E85F: lea eax, var_64
0081E862: push eax
0081E863: lea eax, var_60
0081E866: push eax
0081E867: lea eax, var_5C
0081E86A: push eax
0081E86B: lea eax, var_58
0081E86E: push eax
0081E86F: lea eax, var_54
0081E872: push eax
0081E873: lea eax, var_50
0081E876: push eax
0081E877: lea eax, var_4C
0081E87A: push eax
0081E87B: lea eax, var_48
0081E87E: push eax
0081E87F: lea eax, var_44
0081E882: push eax
0081E883: lea eax, var_40
0081E886: push eax
0081E887: lea eax, var_3C
0081E88A: push eax
0081E88B: lea eax, var_38
0081E88E: push eax
0081E88F: lea eax, var_34
0081E892: push eax
0081E893: lea eax, var_30
0081E896: push eax
0081E897: lea eax, var_2C
0081E89A: push eax
0081E89B: lea eax, var_28
0081E89E: push eax
0081E89F: lea eax, var_24
0081E8A2: push eax
0081E8A3: push 00000014h
0081E8A5: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081E8AA: add esp, 00000054h
0081E8AD: lea eax, var_00000104
0081E8B3: push eax
0081E8B4: lea eax, var_00000100
0081E8BA: push eax
0081E8BB: lea eax, var_000000FC
0081E8C1: push eax
0081E8C2: lea eax, var_000000F8
0081E8C8: push eax
0081E8C9: lea eax, var_000000F4
0081E8CF: push eax
0081E8D0: lea eax, var_000000F0
0081E8D6: push eax
0081E8D7: lea eax, var_000000EC
0081E8DD: push eax
0081E8DE: lea eax, var_000000E8
0081E8E4: push eax
0081E8E5: lea eax, var_000000E4
0081E8EB: push eax
0081E8EC: lea eax, var_000000E0
0081E8F2: push eax
0081E8F3: lea eax, var_000000DC
0081E8F9: push eax
0081E8FA: lea eax, var_000000D8
0081E900: push eax
0081E901: lea eax, var_000000D4
0081E907: push eax
0081E908: lea eax, var_000000D0
0081E90E: push eax
0081E90F: lea eax, var_000000CC
0081E915: push eax
0081E916: lea eax, var_000000C8
0081E91C: push eax
0081E91D: lea eax, var_000000C4
0081E923: push eax
0081E924: lea eax, var_000000C0
0081E92A: push eax
0081E92B: lea eax, var_000000BC
0081E931: push eax
0081E932: lea eax, var_000000B8
0081E938: push eax
0081E939: lea eax, var_000000B4
0081E93F: push eax
0081E940: lea eax, var_000000B0
0081E946: push eax
0081E947: lea eax, var_000000AC
0081E94D: push eax
0081E94E: lea eax, var_000000A8
0081E954: push eax
0081E955: lea eax, var_000000A4
0081E95B: push eax
0081E95C: lea eax, var_000000A0
0081E962: push eax
0081E963: lea eax, var_0000009C
0081E969: push eax
0081E96A: lea eax, var_00000098
0081E970: push eax
0081E971: lea eax, var_00000094
0081E977: push eax
0081E978: lea eax, var_00000090
0081E97E: push eax
0081E97F: lea eax, var_0000008C
0081E985: push eax
0081E986: lea eax, var_00000088
0081E98C: push eax
0081E98D: lea eax, var_00000084
0081E993: push eax
0081E994: lea eax, var_80
0081E997: push eax
0081E998: lea eax, var_7C
0081E99B: push eax
0081E99C: lea eax, var_78
0081E99F: push eax
0081E9A0: lea eax, var_74
0081E9A3: push eax
0081E9A4: push 00000025h
0081E9A6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081E9AB: add esp, 00000098h
0081E9B1: lea eax, var_00000344
0081E9B7: push eax
0081E9B8: lea eax, var_00000334
0081E9BE: push eax
0081E9BF: lea eax, var_00000324
0081E9C5: push eax
0081E9C6: lea eax, var_00000314
0081E9CC: push eax
0081E9CD: lea eax, var_00000304
0081E9D3: push eax
0081E9D4: lea eax, var_000002F4
0081E9DA: push eax
0081E9DB: lea eax, var_000002E4
0081E9E1: push eax
0081E9E2: lea eax, var_000002D4
0081E9E8: push eax
0081E9E9: lea eax, var_000002C4
0081E9EF: push eax
0081E9F0: lea eax, var_000002B4
0081E9F6: push eax
0081E9F7: lea eax, var_000002A4
0081E9FD: push eax
0081E9FE: lea eax, var_00000294
0081EA04: push eax
0081EA05: lea eax, var_00000284
0081EA0B: push eax
0081EA0C: lea eax, var_00000274
0081EA12: push eax
0081EA13: lea eax, var_00000264
0081EA19: push eax
0081EA1A: lea eax, var_00000254
0081EA20: push eax
0081EA21: lea eax, var_00000244
0081EA27: push eax
0081EA28: lea eax, var_00000234
0081EA2E: push eax
0081EA2F: lea eax, var_00000224
0081EA35: push eax
0081EA36: lea eax, var_00000214
0081EA3C: push eax
0081EA3D: lea eax, var_00000204
0081EA43: push eax
0081EA44: lea eax, var_000001F4
0081EA4A: push eax
0081EA4B: lea eax, var_000001E4
0081EA51: push eax
0081EA52: lea eax, var_000001D4
0081EA58: push eax
0081EA59: lea eax, var_000001C4
0081EA5F: push eax
0081EA60: lea eax, var_000001B4
0081EA66: push eax
0081EA67: lea eax, var_000001A4
0081EA6D: push eax
0081EA6E: lea eax, var_00000194
0081EA74: push eax
0081EA75: lea eax, var_00000184
0081EA7B: push eax
0081EA7C: lea eax, var_00000174
0081EA82: push eax
0081EA83: lea eax, var_00000164
0081EA89: push eax
0081EA8A: lea eax, var_00000154
0081EA90: push eax
0081EA91: lea eax, var_00000144
0081EA97: push eax
0081EA98: lea eax, var_00000134
0081EA9E: push eax
0081EA9F: lea eax, var_00000124
0081EAA5: push eax
0081EAA6: lea eax, var_00000114
0081EAAC: push eax
0081EAAD: push 00000024h
0081EAAF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0081EAB4: add esp, 00000094h
0081EABA: ret 
End Sub

Private sub mnuSnifferSave__8215A6
008215A6: push ebp
008215A7: mov ebp, esp
008215A9: sub esp, 00000014h
008215AC: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008215B1: mov eax, fs:[00h]
008215B7: push eax
008215B8: mov fs:[00000000h], esp
008215BF: mov eax, 000003CCh
008215C4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008215C9: push ebx
008215CA: push esi
008215CB: push edi
008215CC: mov var_14, esp
008215CF: mov var_10, 0040B0B8h
008215D6: mov eax, [ebp+08h]
008215D9: and eax, 00000001h
008215DC: mov var_0C, eax
008215DF: mov eax, [ebp+08h]
008215E2: and al, FEh
008215E4: mov [ebp+08h], eax
008215E7: mov var_08, 00000000h
008215EE: mov eax, [ebp+08h]
008215F1: mov eax, [eax]
008215F3: push [ebp+08h]
008215F6: call [eax+04h]
008215F9: push 00000001h
008215FB: call 00410A60h ; On Error ...
00821600: mov eax, [ebp+0Ch]
00821603: mov ax, [eax]
00821606: mov var_00000334, ax
0082160D: movsx eax, word ptr var_00000334
00821614: mov var_00000350, eax
0082161A: cmp var_00000350, 00000000h
00821621: jz 821635h
00821623: cmp var_00000350, 00000001h
0082162A: jz 00822437h
00821630: jmp 00823380h
00821635: cmp [008F529Ch], 00000000h
0082163C: jnz 821659h
0082163E: push 008F529Ch
00821643: push 00440F2Ch
00821648: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0082164D: mov var_00000354, 008F529Ch
00821657: jmp 821663h
00821659: mov var_00000354, 008F529Ch
00821663: mov eax, var_00000354
00821669: mov eax, [eax]
0082166B: mov var_00000284, eax
00821671: lea eax, var_00000088
00821677: push eax
00821678: mov eax, var_00000284
0082167E: mov eax, [eax]
00821680: push var_00000284
00821686: call [eax+14h]
00821689: fclex 
0082168B: mov var_00000288, eax
00821691: cmp var_00000288, 00000000h
00821698: jnl 8216BAh
0082169A: push 00000014h
0082169C: push 00440F1Ch
008216A1: push var_00000284
008216A7: push var_00000288
008216AD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008216B2: mov var_00000358, eax
008216B8: jmp 8216C1h
008216BA: and var_00000358, 00000000h
008216C1: mov eax, var_00000088
008216C7: mov var_0000028C, eax
008216CD: lea eax, var_3C
008216D0: push eax
008216D1: mov eax, var_0000028C
008216D7: mov eax, [eax]
008216D9: push var_0000028C
008216DF: call [eax+50h]
008216E2: fclex 
008216E4: mov var_00000290, eax
008216EA: cmp var_00000290, 00000000h
008216F1: jnl 821713h
008216F3: push 00000050h
008216F5: push 00440F3Ch
008216FA: push var_0000028C
00821700: push var_00000290
00821706: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082170B: mov var_0000035C, eax
00821711: jmp 82171Ah
00821713: and var_0000035C, 00000000h
0082171A: push 00000000h
0082171C: push 00000000h
0082171E: push var_3C
00821721: push 0044558Ch ; txt
00821726: push 00452FD0h ; Text Documents
0082172B: call 007CCC4Dh
00821730: mov edx, eax
00821732: lea ecx, var_38
00821735: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0082173A: lea ecx, var_3C
0082173D: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00821742: lea ecx, var_00000088
00821748: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0082174D: push var_38
00821750: push 00000000h
00821752: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00821757: test eax, eax
00821759: jz 00822432h
0082175F: mov var_00000220, 00000001h
00821769: mov var_00000228, 00000002h
00821773: push 004412BCh
00821778: push 00000000h
0082177A: push 00000007h
0082177C: mov eax, [ebp+08h]
0082177F: mov eax, [eax]
00821781: push [ebp+08h]
00821784: call [eax+0000032Ch]
0082178A: push eax
0082178B: lea eax, var_00000088
00821791: push eax
00821792: call 00410A84h ; Set (object)
00821797: push eax
00821798: lea eax, var_000000E8
0082179E: push eax
0082179F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008217A4: add esp, 00000010h
008217A7: push eax
008217A8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008217AD: push eax
008217AE: lea eax, var_0000008C
008217B4: push eax
008217B5: call 00410A84h ; Set (object)
008217BA: mov var_00000284, eax
008217C0: lea eax, var_00000280
008217C6: push eax
008217C7: mov eax, var_00000284
008217CD: mov eax, [eax]
008217CF: push var_00000284
008217D5: call [eax+1Ch]
008217D8: fclex 
008217DA: mov var_00000288, eax
008217E0: cmp var_00000288, 00000000h
008217E7: jnl 821809h
008217E9: push 0000001Ch
008217EB: push 004412BCh
008217F0: push var_00000284
008217F6: push var_00000288
008217FC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00821801: mov var_00000360, eax
00821807: jmp 821810h
00821809: and var_00000360, 00000000h
00821810: mov eax, var_00000280
00821816: mov var_00000230, eax
0082181C: mov var_00000238, 00000003h
00821826: mov var_00000240, 00000001h
00821830: mov var_00000248, 00000002h
0082183A: lea eax, var_00000228
00821840: push eax
00821841: lea eax, var_00000238
00821847: push eax
00821848: lea eax, var_00000248
0082184E: push eax
0082184F: lea eax, var_00000310
00821855: push eax
00821856: lea eax, var_00000300
0082185C: push eax
0082185D: lea eax, var_2C
00821860: push eax
00821861: call 00410A3Ch ; For
00821866: mov var_00000348, eax
0082186C: lea eax, var_0000008C
00821872: push eax
00821873: lea eax, var_00000088
00821879: push eax
0082187A: push 00000002h
0082187C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00821881: add esp, 0000000Ch
00821884: lea ecx, var_000000E8
0082188A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0082188F: jmp 008223BAh
00821894: push 004412BCh
00821899: push 00000000h
0082189B: push 00000007h
0082189D: mov eax, [ebp+08h]
008218A0: mov eax, [eax]
008218A2: push [ebp+08h]
008218A5: call [eax+0000032Ch]
008218AB: push eax
008218AC: lea eax, var_00000088
008218B2: push eax
008218B3: call 00410A84h ; Set (object)
008218B8: push eax
008218B9: lea eax, var_000000E8
008218BF: push eax
008218C0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008218C5: add esp, 00000010h
008218C8: push eax
008218C9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008218CE: push eax
008218CF: lea eax, var_0000008C
008218D5: push eax
008218D6: call 00410A84h ; Set (object)
008218DB: mov var_00000284, eax
008218E1: lea eax, var_00000090
008218E7: push eax
008218E8: lea eax, var_2C
008218EB: push eax
008218EC: mov eax, var_00000284
008218F2: mov eax, [eax]
008218F4: push var_00000284
008218FA: call [eax+24h]
008218FD: fclex 
008218FF: mov var_00000288, eax
00821905: cmp var_00000288, 00000000h
0082190C: jnl 82192Eh
0082190E: push 00000024h
00821910: push 004412BCh
00821915: push var_00000284
0082191B: push var_00000288
00821921: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00821926: mov var_00000364, eax
0082192C: jmp 821935h
0082192E: and var_00000364, 00000000h
00821935: mov eax, var_00000090
0082193B: mov var_0000028C, eax
00821941: lea eax, var_3C
00821944: push eax
00821945: mov eax, var_0000028C
0082194B: mov eax, [eax]
0082194D: push var_0000028C
00821953: call [eax+24h]
00821956: fclex 
00821958: mov var_00000290, eax
0082195E: cmp var_00000290, 00000000h
00821965: jnl 821987h
00821967: push 00000024h
00821969: push 004412DCh
0082196E: push var_0000028C
00821974: push var_00000290
0082197A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082197F: mov var_00000368, eax
00821985: jmp 82198Eh
00821987: and var_00000368, 00000000h
0082198E: push 004412BCh
00821993: push 00000000h
00821995: push 00000007h
00821997: mov eax, [ebp+08h]
0082199A: mov eax, [eax]
0082199C: push [ebp+08h]
0082199F: call [eax+0000032Ch]
008219A5: push eax
008219A6: lea eax, var_00000094
008219AC: push eax
008219AD: call 00410A84h ; Set (object)
008219B2: push eax
008219B3: lea eax, var_000000F8
008219B9: push eax
008219BA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008219BF: add esp, 00000010h
008219C2: push eax
008219C3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008219C8: push eax
008219C9: lea eax, var_00000098
008219CF: push eax
008219D0: call 00410A84h ; Set (object)
008219D5: mov var_00000294, eax
008219DB: lea eax, var_0000009C
008219E1: push eax
008219E2: lea eax, var_2C
008219E5: push eax
008219E6: mov eax, var_00000294
008219EC: mov eax, [eax]
008219EE: push var_00000294
008219F4: call [eax+24h]
008219F7: fclex 
008219F9: mov var_00000298, eax
008219FF: cmp var_00000298, 00000000h
00821A06: jnl 821A28h
00821A08: push 00000024h
00821A0A: push 004412BCh
00821A0F: push var_00000294
00821A15: push var_00000298
00821A1B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00821A20: mov var_0000036C, eax
00821A26: jmp 821A2Fh
00821A28: and var_0000036C, 00000000h
00821A2F: mov eax, var_0000009C
00821A35: mov var_0000029C, eax
00821A3B: lea eax, var_4C
00821A3E: push eax
00821A3F: push 00000001h
00821A41: mov eax, var_0000029C
00821A47: mov eax, [eax]
00821A49: push var_0000029C
00821A4F: call [eax+00000084h]
00821A55: fclex 
00821A57: mov var_000002A0, eax
00821A5D: cmp var_000002A0, 00000000h
00821A64: jnl 821A89h
00821A66: push 00000084h
00821A6B: push 004412DCh
00821A70: push var_0000029C
00821A76: push var_000002A0
00821A7C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00821A81: mov var_00000370, eax
00821A87: jmp 821A90h
00821A89: and var_00000370, 00000000h
00821A90: push 004412BCh
00821A95: push 00000000h
00821A97: push 00000007h
00821A99: mov eax, [ebp+08h]
00821A9C: mov eax, [eax]
00821A9E: push [ebp+08h]
00821AA1: call [eax+0000032Ch]
00821AA7: push eax
00821AA8: lea eax, var_000000A0
00821AAE: push eax
00821AAF: call 00410A84h ; Set (object)
00821AB4: push eax
00821AB5: lea eax, var_00000108
00821ABB: push eax
00821ABC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00821AC1: add esp, 00000010h
00821AC4: push eax
00821AC5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00821ACA: push eax
00821ACB: lea eax, var_000000A4
00821AD1: push eax
00821AD2: call 00410A84h ; Set (object)
00821AD7: mov var_000002A4, eax
00821ADD: lea eax, var_000000A8
00821AE3: push eax
00821AE4: lea eax, var_2C
00821AE7: push eax
00821AE8: mov eax, var_000002A4
00821AEE: mov eax, [eax]
00821AF0: push var_000002A4
00821AF6: call [eax+24h]
00821AF9: fclex 
00821AFB: mov var_000002A8, eax
00821B01: cmp var_000002A8, 00000000h
00821B08: jnl 821B2Ah
00821B0A: push 00000024h
00821B0C: push 004412BCh
00821B11: push var_000002A4
00821B17: push var_000002A8
00821B1D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00821B22: mov var_00000374, eax
00821B28: jmp 821B31h
00821B2A: and var_00000374, 00000000h
00821B31: mov eax, var_000000A8
00821B37: mov var_000002AC, eax
00821B3D: lea eax, var_58
00821B40: push eax
00821B41: push 00000002h
00821B43: mov eax, var_000002AC
00821B49: mov eax, [eax]
00821B4B: push var_000002AC
00821B51: call [eax+00000084h]
00821B57: fclex 
00821B59: mov var_000002B0, eax
00821B5F: cmp var_000002B0, 00000000h
00821B66: jnl 821B8Bh
00821B68: push 00000084h
00821B6D: push 004412DCh
00821B72: push var_000002AC
00821B78: push var_000002B0
00821B7E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00821B83: mov var_00000378, eax
00821B89: jmp 821B92h
00821B8B: and var_00000378, 00000000h
00821B92: push 004412BCh
00821B97: push 00000000h
00821B99: push 00000007h
00821B9B: mov eax, [ebp+08h]
00821B9E: mov eax, [eax]
00821BA0: push [ebp+08h]
00821BA3: call [eax+0000032Ch]
00821BA9: push eax
00821BAA: lea eax, var_000000AC
00821BB0: push eax
00821BB1: call 00410A84h ; Set (object)
00821BB6: push eax
00821BB7: lea eax, var_00000118
00821BBD: push eax
00821BBE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00821BC3: add esp, 00000010h
00821BC6: push eax
00821BC7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00821BCC: push eax
00821BCD: lea eax, var_000000B0
00821BD3: push eax
00821BD4: call 00410A84h ; Set (object)
00821BD9: mov var_000002B4, eax
00821BDF: lea eax, var_000000B4
00821BE5: push eax
00821BE6: lea eax, var_2C
00821BE9: push eax
00821BEA: mov eax, var_000002B4
00821BF0: mov eax, [eax]
00821BF2: push var_000002B4
00821BF8: call [eax+24h]
00821BFB: fclex 
00821BFD: mov var_000002B8, eax
00821C03: cmp var_000002B8, 00000000h
00821C0A: jnl 821C2Ch
00821C0C: push 00000024h
00821C0E: push 004412BCh
00821C13: push var_000002B4
00821C19: push var_000002B8
00821C1F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00821C24: mov var_0000037C, eax
00821C2A: jmp 821C33h
00821C2C: and var_0000037C, 00000000h
00821C33: mov eax, var_000000B4
00821C39: mov var_000002BC, eax
00821C3F: lea eax, var_68
00821C42: push eax
00821C43: push 00000003h
00821C45: mov eax, var_000002BC
00821C4B: mov eax, [eax]
00821C4D: push var_000002BC
00821C53: call [eax+00000084h]
00821C59: fclex 
00821C5B: mov var_000002C0, eax
00821C61: cmp var_000002C0, 00000000h
00821C68: jnl 821C8Dh
00821C6A: push 00000084h
00821C6F: push 004412DCh
00821C74: push var_000002BC
00821C7A: push var_000002C0
00821C80: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00821C85: mov var_00000380, eax
00821C8B: jmp 821C94h
00821C8D: and var_00000380, 00000000h
00821C94: push 004412BCh
00821C99: push 00000000h
00821C9B: push 00000007h
00821C9D: mov eax, [ebp+08h]
00821CA0: mov eax, [eax]
00821CA2: push [ebp+08h]
00821CA5: call [eax+0000032Ch]
00821CAB: push eax
00821CAC: lea eax, var_000000B8
00821CB2: push eax
00821CB3: call 00410A84h ; Set (object)
00821CB8: push eax
00821CB9: lea eax, var_00000128
00821CBF: push eax
00821CC0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00821CC5: add esp, 00000010h
00821CC8: push eax
00821CC9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00821CCE: push eax
00821CCF: lea eax, var_000000BC
00821CD5: push eax
00821CD6: call 00410A84h ; Set (object)
00821CDB: mov var_000002C4, eax
00821CE1: lea eax, var_000000C0
00821CE7: push eax
00821CE8: lea eax, var_2C
00821CEB: push eax
00821CEC: mov eax, var_000002C4
00821CF2: mov eax, [eax]
00821CF4: push var_000002C4
00821CFA: call [eax+24h]
00821CFD: fclex 
00821CFF: mov var_000002C8, eax
00821D05: cmp var_000002C8, 00000000h
00821D0C: jnl 821D2Eh
00821D0E: push 00000024h
00821D10: push 004412BCh
00821D15: push var_000002C4
00821D1B: push var_000002C8
00821D21: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00821D26: mov var_00000384, eax
00821D2C: jmp 821D35h
00821D2E: and var_00000384, 00000000h
00821D35: mov eax, var_000000C0
00821D3B: mov var_000002CC, eax
00821D41: lea eax, var_74
00821D44: push eax
00821D45: push 00000004h
00821D47: mov eax, var_000002CC
00821D4D: mov eax, [eax]
00821D4F: push var_000002CC
00821D55: call [eax+00000084h]
00821D5B: fclex 
00821D5D: mov var_000002D0, eax
00821D63: cmp var_000002D0, 00000000h
00821D6A: jnl 821D8Fh
00821D6C: push 00000084h
00821D71: push 004412DCh
00821D76: push var_000002CC
00821D7C: push var_000002D0
00821D82: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00821D87: mov var_00000388, eax
00821D8D: jmp 821D96h
00821D8F: and var_00000388, 00000000h
00821D96: push var_34
00821D99: push 00453E18h ; Protocol:
00821D9E: call 00410A18h ; &
00821DA3: mov edx, eax
00821DA5: lea ecx, var_40
00821DA8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00821DAD: push eax
00821DAE: push var_3C
00821DB1: call 00410A18h ; &
00821DB6: mov edx, eax
00821DB8: lea ecx, var_44
00821DBB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00821DC0: push eax
00821DC1: push 00441264h ; vbCrLf
00821DC6: call 00410A18h ; &
00821DCB: mov edx, eax
00821DCD: lea ecx, var_48
00821DD0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00821DD5: push eax
00821DD6: push 00453E34h ; Source:
00821DDB: call 00410A18h ; &
00821DE0: mov edx, eax
00821DE2: lea ecx, var_50
00821DE5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00821DEA: push eax
00821DEB: push var_4C
00821DEE: call 00410A18h ; &
00821DF3: mov edx, eax
00821DF5: lea ecx, var_54
00821DF8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00821DFD: push eax
00821DFE: push 004412B8h
00821E03: call 00410A18h ; &
00821E08: mov edx, eax
00821E0A: lea ecx, var_5C
00821E0D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00821E12: push eax
00821E13: push var_58
00821E16: call 00410A18h ; &
00821E1B: mov edx, eax
00821E1D: lea ecx, var_60
00821E20: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00821E25: push eax
00821E26: push 00441264h ; vbCrLf
00821E2B: call 00410A18h ; &
00821E30: mov edx, eax
00821E32: lea ecx, var_64
00821E35: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00821E3A: push eax
00821E3B: push 00453E4Ch ; Destination:
00821E40: call 00410A18h ; &
00821E45: mov edx, eax
00821E47: lea ecx, var_6C
00821E4A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00821E4F: push eax
00821E50: push var_68
00821E53: call 00410A18h ; &
00821E58: mov edx, eax
00821E5A: lea ecx, var_70
00821E5D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00821E62: push eax
00821E63: push 004412B8h
00821E68: call 00410A18h ; &
00821E6D: mov edx, eax
00821E6F: lea ecx, var_78
00821E72: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00821E77: push eax
00821E78: push var_74
00821E7B: call 00410A18h ; &
00821E80: mov edx, eax
00821E82: lea ecx, var_7C
00821E85: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00821E8A: push eax
00821E8B: push 00441264h ; vbCrLf
00821E90: call 00410A18h ; &
00821E95: mov edx, eax
00821E97: lea ecx, var_80
00821E9A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00821E9F: push eax
00821EA0: push 00453E6Ch ; Packet size:
00821EA5: call 00410A18h ; &
00821EAA: mov var_00000160, eax
00821EB0: mov var_00000168, 00000008h
00821EBA: push 004412BCh
00821EBF: push 00000000h
00821EC1: push 00000007h
00821EC3: mov eax, [ebp+08h]
00821EC6: mov eax, [eax]
00821EC8: push [ebp+08h]
00821ECB: call [eax+0000032Ch]
00821ED1: push eax
00821ED2: lea eax, var_000000C4
00821ED8: push eax
00821ED9: call 00410A84h ; Set (object)
00821EDE: push eax
00821EDF: lea eax, var_00000138
00821EE5: push eax
00821EE6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00821EEB: add esp, 00000010h
00821EEE: push eax
00821EEF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00821EF4: push eax
00821EF5: lea eax, var_000000C8
00821EFB: push eax
00821EFC: call 00410A84h ; Set (object)
00821F01: mov var_000002D4, eax
00821F07: lea eax, var_000000CC
00821F0D: push eax
00821F0E: lea eax, var_2C
00821F11: push eax
00821F12: mov eax, var_000002D4
00821F18: mov eax, [eax]
00821F1A: push var_000002D4
00821F20: call [eax+24h]
00821F23: fclex 
00821F25: mov var_000002D8, eax
00821F2B: cmp var_000002D8, 00000000h
00821F32: jnl 821F54h
00821F34: push 00000024h
00821F36: push 004412BCh
00821F3B: push var_000002D4
00821F41: push var_000002D8
00821F47: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00821F4C: mov var_0000038C, eax
00821F52: jmp 821F5Bh
00821F54: and var_0000038C, 00000000h
00821F5B: mov eax, var_000000CC
00821F61: mov var_000002DC, eax
00821F67: lea eax, var_00000148
00821F6D: push eax
00821F6E: mov eax, var_000002DC
00821F74: mov eax, [eax]
00821F76: push var_000002DC
00821F7C: call [eax+6Ch]
00821F7F: fclex 
00821F81: mov var_000002E0, eax
00821F87: cmp var_000002E0, 00000000h
00821F8E: jnl 821FB0h
00821F90: push 0000006Ch
00821F92: push 004412DCh
00821F97: push var_000002DC
00821F9D: push var_000002E0
00821FA3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00821FA8: mov var_00000390, eax
00821FAE: jmp 821FB7h
00821FB0: and var_00000390, 00000000h
00821FB7: mov var_00000220, 00453E8Ch ; bytes
00821FC1: mov var_00000228, 00000008h
00821FCB: mov var_00000230, 00441264h ; vbCrLf
00821FD5: mov var_00000238, 00000008h
00821FDF: mov var_00000240, 00453EA0h ; Data:
00821FE9: mov var_00000248, 00000008h
00821FF3: mov var_00000250, 00441264h ; vbCrLf
00821FFD: mov var_00000258, 00000008h
00822007: push 004412BCh
0082200C: push 00000000h
0082200E: push 00000007h
00822010: mov eax, [ebp+08h]
00822013: mov eax, [eax]
00822015: push [ebp+08h]
00822018: call [eax+0000032Ch]
0082201E: push eax
0082201F: lea eax, var_000000D0
00822025: push eax
00822026: call 00410A84h ; Set (object)
0082202B: push eax
0082202C: lea eax, var_000001C8
00822032: push eax
00822033: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00822038: add esp, 00000010h
0082203B: push eax
0082203C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00822041: push eax
00822042: lea eax, var_000000D4
00822048: push eax
00822049: call 00410A84h ; Set (object)
0082204E: mov var_000002E4, eax
00822054: lea eax, var_000000D8
0082205A: push eax
0082205B: lea eax, var_2C
0082205E: push eax
0082205F: mov eax, var_000002E4
00822065: mov eax, [eax]
00822067: push var_000002E4
0082206D: call [eax+24h]
00822070: fclex 
00822072: mov var_000002E8, eax
00822078: cmp var_000002E8, 00000000h
0082207F: jnl 8220A1h
00822081: push 00000024h
00822083: push 004412BCh
00822088: push var_000002E4
0082208E: push var_000002E8
00822094: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00822099: mov var_00000394, eax
0082209F: jmp 8220A8h
008220A1: and var_00000394, 00000000h
008220A8: mov eax, var_000000D8
008220AE: mov var_000002EC, eax
008220B4: lea eax, var_000001D8
008220BA: push eax
008220BB: mov eax, var_000002EC
008220C1: mov eax, [eax]
008220C3: push var_000002EC
008220C9: call [eax+6Ch]
008220CC: fclex 
008220CE: mov var_000002F0, eax
008220D4: cmp var_000002F0, 00000000h
008220DB: jnl 8220FDh
008220DD: push 0000006Ch
008220DF: push 004412DCh
008220E4: push var_000002EC
008220EA: push var_000002F0
008220F0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008220F5: mov var_00000398, eax
008220FB: jmp 822104h
008220FD: and var_00000398, 00000000h
00822104: lea eax, var_000001D8
0082210A: push eax
0082210B: lea eax, var_00000084
00822111: push eax
00822112: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
00822117: push eax
00822118: call 007BBB4Ch
0082211D: mov var_000001E0, eax
00822123: mov var_000001E8, 00000008h
0082212D: mov var_00000260, 00441264h ; vbCrLf
00822137: mov var_00000268, 00000008h
00822141: mov var_00000270, 00441264h ; vbCrLf
0082214B: mov var_00000278, 00000008h
00822155: lea eax, var_00000168
0082215B: push eax
0082215C: lea eax, var_00000148
00822162: push eax
00822163: lea eax, var_00000158
00822169: push eax
0082216A: call 00410916h ; arg_1 = Len(arg_2)
0082216F: push eax
00822170: lea eax, var_00000178
00822176: push eax
00822177: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0082217C: push eax
0082217D: lea eax, var_00000228
00822183: push eax
00822184: lea eax, var_00000188
0082218A: push eax
0082218B: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00822190: push eax
00822191: lea eax, var_00000238
00822197: push eax
00822198: lea eax, var_00000198
0082219E: push eax
0082219F: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008221A4: push eax
008221A5: lea eax, var_00000248
008221AB: push eax
008221AC: lea eax, var_000001A8
008221B2: push eax
008221B3: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008221B8: push eax
008221B9: lea eax, var_00000258
008221BF: push eax
008221C0: lea eax, var_000001B8
008221C6: push eax
008221C7: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008221CC: push eax
008221CD: lea eax, var_000001E8
008221D3: push eax
008221D4: lea eax, var_000001F8
008221DA: push eax
008221DB: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008221E0: push eax
008221E1: lea eax, var_00000268
008221E7: push eax
008221E8: lea eax, var_00000208
008221EE: push eax
008221EF: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008221F4: push eax
008221F5: lea eax, var_00000278
008221FB: push eax
008221FC: lea eax, var_00000218
00822202: push eax
00822203: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00822208: push eax
00822209: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082220E: mov edx, eax
00822210: lea ecx, var_34
00822213: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00822218: lea eax, var_00000084
0082221E: push eax
0082221F: lea eax, var_80
00822222: push eax
00822223: lea eax, var_7C
00822226: push eax
00822227: lea eax, var_74
0082222A: push eax
0082222B: lea eax, var_78
0082222E: push eax
0082222F: lea eax, var_70
00822232: push eax
00822233: lea eax, var_68
00822236: push eax
00822237: lea eax, var_6C
0082223A: push eax
0082223B: lea eax, var_64
0082223E: push eax
0082223F: lea eax, var_60
00822242: push eax
00822243: lea eax, var_58
00822246: push eax
00822247: lea eax, var_5C
0082224A: push eax
0082224B: lea eax, var_54
0082224E: push eax
0082224F: lea eax, var_4C
00822252: push eax
00822253: lea eax, var_50
00822256: push eax
00822257: lea eax, var_48
0082225A: push eax
0082225B: lea eax, var_44
0082225E: push eax
0082225F: lea eax, var_3C
00822262: push eax
00822263: lea eax, var_40
00822266: push eax
00822267: push 00000013h
00822269: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0082226E: add esp, 00000050h
00822271: lea eax, var_000000D8
00822277: push eax
00822278: lea eax, var_000000D4
0082227E: push eax
0082227F: lea eax, var_000000D0
00822285: push eax
00822286: lea eax, var_000000CC
0082228C: push eax
0082228D: lea eax, var_000000C8
00822293: push eax
00822294: lea eax, var_000000C4
0082229A: push eax
0082229B: lea eax, var_000000C0
008222A1: push eax
008222A2: lea eax, var_000000BC
008222A8: push eax
008222A9: lea eax, var_000000B8
008222AF: push eax
008222B0: lea eax, var_000000B4
008222B6: push eax
008222B7: lea eax, var_000000B0
008222BD: push eax
008222BE: lea eax, var_000000AC
008222C4: push eax
008222C5: lea eax, var_000000A8
008222CB: push eax
008222CC: lea eax, var_000000A4
008222D2: push eax
008222D3: lea eax, var_000000A0
008222D9: push eax
008222DA: lea eax, var_0000009C
008222E0: push eax
008222E1: lea eax, var_00000098
008222E7: push eax
008222E8: lea eax, var_00000094
008222EE: push eax
008222EF: lea eax, var_00000090
008222F5: push eax
008222F6: lea eax, var_0000008C
008222FC: push eax
008222FD: lea eax, var_00000088
00822303: push eax
00822304: push 00000015h
00822306: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0082230B: add esp, 00000058h
0082230E: lea eax, var_00000218
00822314: push eax
00822315: lea eax, var_00000208
0082231B: push eax
0082231C: lea eax, var_000001F8
00822322: push eax
00822323: lea eax, var_000001E8
00822329: push eax
0082232A: lea eax, var_000001B8
00822330: push eax
00822331: lea eax, var_000001D8
00822337: push eax
00822338: lea eax, var_000001C8
0082233E: push eax
0082233F: lea eax, var_000001A8
00822345: push eax
00822346: lea eax, var_00000198
0082234C: push eax
0082234D: lea eax, var_00000188
00822353: push eax
00822354: lea eax, var_00000178
0082235A: push eax
0082235B: lea eax, var_00000168
00822361: push eax
00822362: lea eax, var_00000148
00822368: push eax
00822369: lea eax, var_00000138
0082236F: push eax
00822370: lea eax, var_00000128
00822376: push eax
00822377: lea eax, var_00000118
0082237D: push eax
0082237E: lea eax, var_00000108
00822384: push eax
00822385: lea eax, var_000000F8
0082238B: push eax
0082238C: lea eax, var_000000E8
00822392: push eax
00822393: push 00000013h
00822395: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0082239A: add esp, 00000050h
0082239D: lea eax, var_00000310
008223A3: push eax
008223A4: lea eax, var_00000300
008223AA: push eax
008223AB: lea eax, var_2C
008223AE: push eax
008223AF: call 00410A36h ; Next
008223B4: mov var_00000348, eax
008223BA: cmp var_00000348, 00000000h
008223C1: jnz 00821894h
008223C7: mov var_000000E0, 80020004h
008223D1: mov var_000000E8, 0000000Ah
008223DB: lea eax, var_000000E8
008223E1: push eax
008223E2: call 004108C2h ; FreeFile
008223E7: movsx eax, ax
008223EA: mov var_30, eax
008223ED: lea ecx, var_000000E8
008223F3: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008223F8: push var_38
008223FB: mov ecx, var_30
008223FE: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00822403: push eax
00822404: push FFFFFFFFh
00822406: push 00000220h
0082240B: call 004108B6h ; Open #
00822410: mov ecx, var_30
00822413: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00822418: push eax
00822419: lea eax, var_34
0082241C: push eax
0082241D: push 00000000h
0082241F: call 0041089Eh ; Put #
00822424: mov ecx, var_30
00822427: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0082242C: push eax
0082242D: call 00410898h ; Close #arg_1
00822432: jmp 00823380h
00822437: cmp [008F529Ch], 00000000h
0082243E: jnz 82245Bh
00822440: push 008F529Ch
00822445: push 00440F2Ch
0082244A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0082244F: mov var_0000039C, 008F529Ch
00822459: jmp 822465h
0082245B: mov var_0000039C, 008F529Ch
00822465: mov eax, var_0000039C
0082246B: mov eax, [eax]
0082246D: mov var_00000284, eax
00822473: lea eax, var_00000088
00822479: push eax
0082247A: mov eax, var_00000284
00822480: mov eax, [eax]
00822482: push var_00000284
00822488: call [eax+14h]
0082248B: fclex 
0082248D: mov var_00000288, eax
00822493: cmp var_00000288, 00000000h
0082249A: jnl 8224BCh
0082249C: push 00000014h
0082249E: push 00440F1Ch
008224A3: push var_00000284
008224A9: push var_00000288
008224AF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008224B4: mov var_000003A0, eax
008224BA: jmp 8224C3h
008224BC: and var_000003A0, 00000000h
008224C3: mov eax, var_00000088
008224C9: mov var_0000028C, eax
008224CF: lea eax, var_3C
008224D2: push eax
008224D3: mov eax, var_0000028C
008224D9: mov eax, [eax]
008224DB: push var_0000028C
008224E1: call [eax+50h]
008224E4: fclex 
008224E6: mov var_00000290, eax
008224EC: cmp var_00000290, 00000000h
008224F3: jnl 822515h
008224F5: push 00000050h
008224F7: push 00440F3Ch
008224FC: push var_0000028C
00822502: push var_00000290
00822508: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082250D: mov var_000003A4, eax
00822513: jmp 82251Ch
00822515: and var_000003A4, 00000000h
0082251C: push 00000000h
0082251E: push 00000000h
00822520: push var_3C
00822523: push 0044558Ch ; txt
00822528: push 00452FD0h ; Text Documents
0082252D: call 007CCC4Dh
00822532: mov edx, eax
00822534: lea ecx, var_38
00822537: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0082253C: lea ecx, var_3C
0082253F: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00822544: lea ecx, var_00000088
0082254A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0082254F: push var_38
00822552: push 00000000h
00822554: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00822559: test eax, eax
0082255B: jz 00823380h
00822561: mov var_00000220, 00000001h
0082256B: mov var_00000228, 00000002h
00822575: push 004412BCh
0082257A: push 00000000h
0082257C: push 00000007h
0082257E: mov eax, [ebp+08h]
00822581: mov eax, [eax]
00822583: push [ebp+08h]
00822586: call [eax+0000032Ch]
0082258C: push eax
0082258D: lea eax, var_00000088
00822593: push eax
00822594: call 00410A84h ; Set (object)
00822599: push eax
0082259A: lea eax, var_000000E8
008225A0: push eax
008225A1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008225A6: add esp, 00000010h
008225A9: push eax
008225AA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008225AF: push eax
008225B0: lea eax, var_0000008C
008225B6: push eax
008225B7: call 00410A84h ; Set (object)
008225BC: mov var_00000284, eax
008225C2: lea eax, var_00000280
008225C8: push eax
008225C9: mov eax, var_00000284
008225CF: mov eax, [eax]
008225D1: push var_00000284
008225D7: call [eax+1Ch]
008225DA: fclex 
008225DC: mov var_00000288, eax
008225E2: cmp var_00000288, 00000000h
008225E9: jnl 82260Bh
008225EB: push 0000001Ch
008225ED: push 004412BCh
008225F2: push var_00000284
008225F8: push var_00000288
008225FE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00822603: mov var_000003A8, eax
00822609: jmp 822612h
0082260B: and var_000003A8, 00000000h
00822612: mov eax, var_00000280
00822618: mov var_00000230, eax
0082261E: mov var_00000238, 00000003h
00822628: mov var_00000240, 00000001h
00822632: mov var_00000248, 00000002h
0082263C: lea eax, var_00000228
00822642: push eax
00822643: lea eax, var_00000238
00822649: push eax
0082264A: lea eax, var_00000248
00822650: push eax
00822651: lea eax, var_00000330
00822657: push eax
00822658: lea eax, var_00000320
0082265E: push eax
0082265F: lea eax, var_2C
00822662: push eax
00822663: call 00410A3Ch ; For
00822668: mov var_0000034C, eax
0082266E: lea eax, var_0000008C
00822674: push eax
00822675: lea eax, var_00000088
0082267B: push eax
0082267C: push 00000002h
0082267E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00822683: add esp, 0000000Ch
00822686: lea ecx, var_000000E8
0082268C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00822691: jmp 00823308h
00822696: push 004412BCh
0082269B: push 00000000h
0082269D: push 00000007h
0082269F: mov eax, [ebp+08h]
008226A2: mov eax, [eax]
008226A4: push [ebp+08h]
008226A7: call [eax+0000032Ch]
008226AD: push eax
008226AE: lea eax, var_00000088
008226B4: push eax
008226B5: call 00410A84h ; Set (object)
008226BA: push eax
008226BB: lea eax, var_000000E8
008226C1: push eax
008226C2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008226C7: add esp, 00000010h
008226CA: push eax
008226CB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008226D0: push eax
008226D1: lea eax, var_0000008C
008226D7: push eax
008226D8: call 00410A84h ; Set (object)
008226DD: mov var_00000284, eax
008226E3: lea eax, var_00000090
008226E9: push eax
008226EA: lea eax, var_2C
008226ED: push eax
008226EE: mov eax, var_00000284
008226F4: mov eax, [eax]
008226F6: push var_00000284
008226FC: call [eax+24h]
008226FF: fclex 
00822701: mov var_00000288, eax
00822707: cmp var_00000288, 00000000h
0082270E: jnl 822730h
00822710: push 00000024h
00822712: push 004412BCh
00822717: push var_00000284
0082271D: push var_00000288
00822723: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00822728: mov var_000003AC, eax
0082272E: jmp 822737h
00822730: and var_000003AC, 00000000h
00822737: mov eax, var_00000090
0082273D: mov var_0000028C, eax
00822743: lea eax, var_0000027C
00822749: push eax
0082274A: mov eax, var_0000028C
00822750: mov eax, [eax]
00822752: push var_0000028C
00822758: call [eax+5Ch]
0082275B: fclex 
0082275D: mov var_00000290, eax
00822763: cmp var_00000290, 00000000h
0082276A: jnl 82278Ch
0082276C: push 0000005Ch
0082276E: push 004412DCh
00822773: push var_0000028C
00822779: push var_00000290
0082277F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00822784: mov var_000003B0, eax
0082278A: jmp 822793h
0082278C: and var_000003B0, 00000000h
00822793: xor eax, eax
00822795: cmp word ptr var_0000027C, FFFFh
0082279D: setz al
008227A0: neg eax
008227A2: mov var_00000294, ax
008227A9: lea eax, var_00000090
008227AF: push eax
008227B0: lea eax, var_0000008C
008227B6: push eax
008227B7: lea eax, var_00000088
008227BD: push eax
008227BE: push 00000003h
008227C0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008227C5: add esp, 00000010h
008227C8: lea ecx, var_000000E8
008227CE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008227D3: movsx eax, word ptr var_00000294
008227DA: test eax, eax
008227DC: jz 008232EBh
008227E2: push 004412BCh
008227E7: push 00000000h
008227E9: push 00000007h
008227EB: mov eax, [ebp+08h]
008227EE: mov eax, [eax]
008227F0: push [ebp+08h]
008227F3: call [eax+0000032Ch]
008227F9: push eax
008227FA: lea eax, var_00000088
00822800: push eax
00822801: call 00410A84h ; Set (object)
00822806: push eax
00822807: lea eax, var_000000E8
0082280D: push eax
0082280E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00822813: add esp, 00000010h
00822816: push eax
00822817: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0082281C: push eax
0082281D: lea eax, var_0000008C
00822823: push eax
00822824: call 00410A84h ; Set (object)
00822829: mov var_00000284, eax
0082282F: lea eax, var_00000090
00822835: push eax
00822836: lea eax, var_2C
00822839: push eax
0082283A: mov eax, var_00000284
00822840: mov eax, [eax]
00822842: push var_00000284
00822848: call [eax+24h]
0082284B: fclex 
0082284D: mov var_00000288, eax
00822853: cmp var_00000288, 00000000h
0082285A: jnl 82287Ch
0082285C: push 00000024h
0082285E: push 004412BCh
00822863: push var_00000284
00822869: push var_00000288
0082286F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00822874: mov var_000003B4, eax
0082287A: jmp 822883h
0082287C: and var_000003B4, 00000000h
00822883: mov eax, var_00000090
00822889: mov var_0000028C, eax
0082288F: lea eax, var_3C
00822892: push eax
00822893: mov eax, var_0000028C
00822899: mov eax, [eax]
0082289B: push var_0000028C
008228A1: call [eax+24h]
008228A4: fclex 
008228A6: mov var_00000290, eax
008228AC: cmp var_00000290, 00000000h
008228B3: jnl 8228D5h
008228B5: push 00000024h
008228B7: push 004412DCh
008228BC: push var_0000028C
008228C2: push var_00000290
008228C8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008228CD: mov var_000003B8, eax
008228D3: jmp 8228DCh
008228D5: and var_000003B8, 00000000h
008228DC: push 004412BCh
008228E1: push 00000000h
008228E3: push 00000007h
008228E5: mov eax, [ebp+08h]
008228E8: mov eax, [eax]
008228EA: push [ebp+08h]
008228ED: call [eax+0000032Ch]
008228F3: push eax
008228F4: lea eax, var_00000094
008228FA: push eax
008228FB: call 00410A84h ; Set (object)
00822900: push eax
00822901: lea eax, var_000000F8
00822907: push eax
00822908: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0082290D: add esp, 00000010h
00822910: push eax
00822911: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00822916: push eax
00822917: lea eax, var_00000098
0082291D: push eax
0082291E: call 00410A84h ; Set (object)
00822923: mov var_00000294, eax
00822929: lea eax, var_0000009C
0082292F: push eax
00822930: lea eax, var_2C
00822933: push eax
00822934: mov eax, var_00000294
0082293A: mov eax, [eax]
0082293C: push var_00000294
00822942: call [eax+24h]
00822945: fclex 
00822947: mov var_00000298, eax
0082294D: cmp var_00000298, 00000000h
00822954: jnl 822976h
00822956: push 00000024h
00822958: push 004412BCh
0082295D: push var_00000294
00822963: push var_00000298
00822969: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0082296E: mov var_000003BC, eax
00822974: jmp 82297Dh
00822976: and var_000003BC, 00000000h
0082297D: mov eax, var_0000009C
00822983: mov var_0000029C, eax
00822989: lea eax, var_4C
0082298C: push eax
0082298D: push 00000001h
0082298F: mov eax, var_0000029C
00822995: mov eax, [eax]
00822997: push var_0000029C
0082299D: call [eax+00000084h]
008229A3: fclex 
008229A5: mov var_000002A0, eax
008229AB: cmp var_000002A0, 00000000h
008229B2: jnl 8229D7h
008229B4: push 00000084h
008229B9: push 004412DCh
008229BE: push var_0000029C
008229C4: push var_000002A0
008229CA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008229CF: mov var_000003C0, eax
008229D5: jmp 8229DEh
008229D7: and var_000003C0, 00000000h
008229DE: push 004412BCh
008229E3: push 00000000h
008229E5: push 00000007h
008229E7: mov eax, [ebp+08h]
008229EA: mov eax, [eax]
008229EC: push [ebp+08h]
008229EF: call [eax+0000032Ch]
008229F5: push eax
008229F6: lea eax, var_000000A0
008229FC: push eax
008229FD: call 00410A84h ; Set (object)
00822A02: push eax
00822A03: lea eax, var_00000108
00822A09: push eax
00822A0A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00822A0F: add esp, 00000010h
00822A12: push eax
00822A13: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00822A18: push eax
00822A19: lea eax, var_000000A4
00822A1F: push eax
00822A20: call 00410A84h ; Set (object)
00822A25: mov var_000002A4, eax
00822A2B: lea eax, var_000000A8
00822A31: push eax
00822A32: lea eax, var_2C
00822A35: push eax
00822A36: mov eax, var_000002A4
00822A3C: mov eax, [eax]
00822A3E: push var_000002A4
00822A44: call [eax+24h]
00822A47: fclex 
00822A49: mov var_000002A8, eax
00822A4F: cmp var_000002A8, 00000000h
00822A56: jnl 822A78h
00822A58: push 00000024h
00822A5A: push 004412BCh
00822A5F: push var_000002A4
00822A65: push var_000002A8
00822A6B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00822A70: mov var_000003C4, eax
00822A76: jmp 822A7Fh
00822A78: and var_000003C4, 00000000h
00822A7F: mov eax, var_000000A8
00822A85: mov var_000002AC, eax
00822A8B: lea eax, var_58
00822A8E: push eax
00822A8F: push 00000002h
00822A91: mov eax, var_000002AC
00822A97: mov eax, [eax]
00822A99: push var_000002AC
00822A9F: call [eax+00000084h]
00822AA5: fclex 
00822AA7: mov var_000002B0, eax
00822AAD: cmp var_000002B0, 00000000h
00822AB4: jnl 822AD9h
00822AB6: push 00000084h
00822ABB: push 004412DCh
00822AC0: push var_000002AC
00822AC6: push var_000002B0
00822ACC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00822AD1: mov var_000003C8, eax
00822AD7: jmp 822AE0h
00822AD9: and var_000003C8, 00000000h
00822AE0: push 004412BCh
00822AE5: push 00000000h
00822AE7: push 00000007h
00822AE9: mov eax, [ebp+08h]
00822AEC: mov eax, [eax]
00822AEE: push [ebp+08h]
00822AF1: call [eax+0000032Ch]
00822AF7: push eax
00822AF8: lea eax, var_000000AC
00822AFE: push eax
00822AFF: call 00410A84h ; Set (object)
00822B04: push eax
00822B05: lea eax, var_00000118
00822B0B: push eax
00822B0C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00822B11: add esp, 00000010h
00822B14: push eax
00822B15: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00822B1A: push eax
00822B1B: lea eax, var_000000B0
00822B21: push eax
00822B22: call 00410A84h ; Set (object)
00822B27: mov var_000002B4, eax
00822B2D: lea eax, var_000000B4
00822B33: push eax
00822B34: lea eax, var_2C
00822B37: push eax
00822B38: mov eax, var_000002B4
00822B3E: mov eax, [eax]
00822B40: push var_000002B4
00822B46: call [eax+24h]
00822B49: fclex 
00822B4B: mov var_000002B8, eax
00822B51: cmp var_000002B8, 00000000h
00822B58: jnl 822B7Ah
00822B5A: push 00000024h
00822B5C: push 004412BCh
00822B61: push var_000002B4
00822B67: push var_000002B8
00822B6D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00822B72: mov var_000003CC, eax
00822B78: jmp 822B81h
00822B7A: and var_000003CC, 00000000h
00822B81: mov eax, var_000000B4
00822B87: mov var_000002BC, eax
00822B8D: lea eax, var_68
00822B90: push eax
00822B91: push 00000003h
00822B93: mov eax, var_000002BC
00822B99: mov eax, [eax]
00822B9B: push var_000002BC
00822BA1: call [eax+00000084h]
00822BA7: fclex 
00822BA9: mov var_000002C0, eax
00822BAF: cmp var_000002C0, 00000000h
00822BB6: jnl 822BDBh
00822BB8: push 00000084h
00822BBD: push 004412DCh
00822BC2: push var_000002BC
00822BC8: push var_000002C0
00822BCE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00822BD3: mov var_000003D0, eax
00822BD9: jmp 822BE2h
00822BDB: and var_000003D0, 00000000h
00822BE2: push 004412BCh
00822BE7: push 00000000h
00822BE9: push 00000007h
00822BEB: mov eax, [ebp+08h]
00822BEE: mov eax, [eax]
00822BF0: push [ebp+08h]
00822BF3: call [eax+0000032Ch]
00822BF9: push eax
00822BFA: lea eax, var_000000B8
00822C00: push eax
00822C01: call 00410A84h ; Set (object)
00822C06: push eax
00822C07: lea eax, var_00000128
00822C0D: push eax
00822C0E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00822C13: add esp, 00000010h
00822C16: push eax
00822C17: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00822C1C: push eax
00822C1D: lea eax, var_000000BC
00822C23: push eax
00822C24: call 00410A84h ; Set (object)
00822C29: mov var_000002C4, eax
00822C2F: lea eax, var_000000C0
00822C35: push eax
00822C36: lea eax, var_2C
00822C39: push eax
00822C3A: mov eax, var_000002C4
00822C40: mov eax, [eax]
00822C42: push var_000002C4
00822C48: call [eax+24h]
00822C4B: fclex 
00822C4D: mov var_000002C8, eax
00822C53: cmp var_000002C8, 00000000h
00822C5A: jnl 822C7Ch
00822C5C: push 00000024h
00822C5E: push 004412BCh
00822C63: push var_000002C4
00822C69: push var_000002C8
00822C6F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00822C74: mov var_000003D4, eax
00822C7A: jmp 822C83h
00822C7C: and var_000003D4, 00000000h
00822C83: mov eax, var_000000C0
00822C89: mov var_000002CC, eax
00822C8F: lea eax, var_74
00822C92: push eax
00822C93: push 00000004h
00822C95: mov eax, var_000002CC
00822C9B: mov eax, [eax]
00822C9D: push var_000002CC
00822CA3: call [eax+00000084h]
00822CA9: fclex 
00822CAB: mov var_000002D0, eax
00822CB1: cmp var_000002D0, 00000000h
00822CB8: jnl 822CDDh
00822CBA: push 00000084h
00822CBF: push 004412DCh
00822CC4: push var_000002CC
00822CCA: push var_000002D0
00822CD0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00822CD5: mov var_000003D8, eax
00822CDB: jmp 822CE4h
00822CDD: and var_000003D8, 00000000h
00822CE4: push var_34
00822CE7: push 00453E18h ; Protocol:
00822CEC: call 00410A18h ; &
00822CF1: mov edx, eax
00822CF3: lea ecx, var_40
00822CF6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00822CFB: push eax
00822CFC: push var_3C
00822CFF: call 00410A18h ; &
00822D04: mov edx, eax
00822D06: lea ecx, var_44
00822D09: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00822D0E: push eax
00822D0F: push 00441264h ; vbCrLf
00822D14: call 00410A18h ; &
00822D19: mov edx, eax
00822D1B: lea ecx, var_48
00822D1E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00822D23: push eax
00822D24: push 00453E34h ; Source:
00822D29: call 00410A18h ; &
00822D2E: mov edx, eax
00822D30: lea ecx, var_50
00822D33: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00822D38: push eax
00822D39: push var_4C
00822D3C: call 00410A18h ; &
00822D41: mov edx, eax
00822D43: lea ecx, var_54
00822D46: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00822D4B: push eax
00822D4C: push 004412B8h
00822D51: call 00410A18h ; &
00822D56: mov edx, eax
00822D58: lea ecx, var_5C
00822D5B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00822D60: push eax
00822D61: push var_58
00822D64: call 00410A18h ; &
00822D69: mov edx, eax
00822D6B: lea ecx, var_60
00822D6E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00822D73: push eax
00822D74: push 00441264h ; vbCrLf
00822D79: call 00410A18h ; &
00822D7E: mov edx, eax
00822D80: lea ecx, var_64
00822D83: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00822D88: push eax
00822D89: push 00453E4Ch ; Destination:
00822D8E: call 00410A18h ; &
00822D93: mov edx, eax
00822D95: lea ecx, var_6C
00822D98: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00822D9D: push eax
00822D9E: push var_68
00822DA1: call 00410A18h ; &
00822DA6: mov edx, eax
00822DA8: lea ecx, var_70
00822DAB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00822DB0: push eax
00822DB1: push 004412B8h
00822DB6: call 00410A18h ; &
00822DBB: mov edx, eax
00822DBD: lea ecx, var_78
00822DC0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00822DC5: push eax
00822DC6: push var_74
00822DC9: call 00410A18h ; &
00822DCE: mov edx, eax
00822DD0: lea ecx, var_7C
00822DD3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00822DD8: push eax
00822DD9: push 00441264h ; vbCrLf
00822DDE: call 00410A18h ; &
00822DE3: mov edx, eax
00822DE5: lea ecx, var_80
00822DE8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00822DED: push eax
00822DEE: push 00453E6Ch ; Packet size:
00822DF3: call 00410A18h ; &
00822DF8: mov var_00000160, eax
00822DFE: mov var_00000168, 00000008h
00822E08: push 004412BCh
00822E0D: push 00000000h
00822E0F: push 00000007h
00822E11: mov eax, [ebp+08h]
00822E14: mov eax, [eax]
00822E16: push [ebp+08h]
00822E19: call [eax+0000032Ch]
00822E1F: push eax
00822E20: lea eax, var_000000C4
00822E26: push eax
00822E27: call 00410A84h ; Set (object)
00822E2C: push eax
00822E2D: lea eax, var_00000138
00822E33: push eax
00822E34: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00822E39: add esp, 00000010h
00822E3C: push eax
00822E3D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00822E42: push eax
00822E43: lea eax, var_000000C8
00822E49: push eax
00822E4A: call 00410A84h ; Set (object)
00822E4F: mov var_000002D4, eax
00822E55: lea eax, var_000000CC
00822E5B: push eax
00822E5C: lea eax, var_2C
00822E5F: push eax
00822E60: mov eax, var_000002D4
00822E66: mov eax, [eax]
00822E68: push var_000002D4
00822E6E: call [eax+24h]
00822E71: fclex 
00822E73: mov var_000002D8, eax
00822E79: cmp var_000002D8, 00000000h
00822E80: jnl 822EA2h
00822E82: push 00000024h
00822E84: push 004412BCh
00822E89: push var_000002D4
00822E8F: push var_000002D8
00822E95: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00822E9A: mov var_000003DC, eax
00822EA0: jmp 822EA9h
00822EA2: and var_000003DC, 00000000h
00822EA9: mov eax, var_000000CC
00822EAF: mov var_000002DC, eax
00822EB5: lea eax, var_00000148
00822EBB: push eax
00822EBC: mov eax, var_000002DC
00822EC2: mov eax, [eax]
00822EC4: push var_000002DC
00822ECA: call [eax+6Ch]
00822ECD: fclex 
00822ECF: mov var_000002E0, eax
00822ED5: cmp var_000002E0, 00000000h
00822EDC: jnl 822EFEh
00822EDE: push 0000006Ch
00822EE0: push 004412DCh
00822EE5: push var_000002DC
00822EEB: push var_000002E0
00822EF1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00822EF6: mov var_000003E0, eax
00822EFC: jmp 822F05h
00822EFE: and var_000003E0, 00000000h
00822F05: mov var_00000220, 00453E8Ch ; bytes
00822F0F: mov var_00000228, 00000008h
00822F19: mov var_00000230, 00441264h ; vbCrLf
00822F23: mov var_00000238, 00000008h
00822F2D: mov var_00000240, 00453EA0h ; Data:
00822F37: mov var_00000248, 00000008h
00822F41: mov var_00000250, 00441264h ; vbCrLf
00822F4B: mov var_00000258, 00000008h
00822F55: push 004412BCh
00822F5A: push 00000000h
00822F5C: push 00000007h
00822F5E: mov eax, [ebp+08h]
00822F61: mov eax, [eax]
00822F63: push [ebp+08h]
00822F66: call [eax+0000032Ch]
00822F6C: push eax
00822F6D: lea eax, var_000000D0
00822F73: push eax
00822F74: call 00410A84h ; Set (object)
00822F79: push eax
00822F7A: lea eax, var_000001C8
00822F80: push eax
00822F81: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00822F86: add esp, 00000010h
00822F89: push eax
00822F8A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00822F8F: push eax
00822F90: lea eax, var_000000D4
00822F96: push eax
00822F97: call 00410A84h ; Set (object)
00822F9C: mov var_000002E4, eax
00822FA2: lea eax, var_000000D8
00822FA8: push eax
00822FA9: lea eax, var_2C
00822FAC: push eax
00822FAD: mov eax, var_000002E4
00822FB3: mov eax, [eax]
00822FB5: push var_000002E4
00822FBB: call [eax+24h]
00822FBE: fclex 
00822FC0: mov var_000002E8, eax
00822FC6: cmp var_000002E8, 00000000h
00822FCD: jnl 822FEFh
00822FCF: push 00000024h
00822FD1: push 004412BCh
00822FD6: push var_000002E4
00822FDC: push var_000002E8
00822FE2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00822FE7: mov var_000003E4, eax
00822FED: jmp 822FF6h
00822FEF: and var_000003E4, 00000000h
00822FF6: mov eax, var_000000D8
00822FFC: mov var_000002EC, eax
00823002: lea eax, var_000001D8
00823008: push eax
00823009: mov eax, var_000002EC
0082300F: mov eax, [eax]
00823011: push var_000002EC
00823017: call [eax+6Ch]
0082301A: fclex 
0082301C: mov var_000002F0, eax
00823022: cmp var_000002F0, 00000000h
00823029: jnl 82304Bh
0082302B: push 0000006Ch
0082302D: push 004412DCh
00823032: push var_000002EC
00823038: push var_000002F0
0082303E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00823043: mov var_000003E8, eax
00823049: jmp 823052h
0082304B: and var_000003E8, 00000000h
00823052: lea eax, var_000001D8
00823058: push eax
00823059: lea eax, var_00000084
0082305F: push eax
00823060: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
00823065: push eax
00823066: call 007BBB4Ch
0082306B: mov var_000001E0, eax
00823071: mov var_000001E8, 00000008h
0082307B: mov var_00000260, 00441264h ; vbCrLf
00823085: mov var_00000268, 00000008h
0082308F: mov var_00000270, 00441264h ; vbCrLf
00823099: mov var_00000278, 00000008h
008230A3: lea eax, var_00000168
008230A9: push eax
008230AA: lea eax, var_00000148
008230B0: push eax
008230B1: lea eax, var_00000158
008230B7: push eax
008230B8: call 00410916h ; arg_1 = Len(arg_2)
008230BD: push eax
008230BE: lea eax, var_00000178
008230C4: push eax
008230C5: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008230CA: push eax
008230CB: lea eax, var_00000228
008230D1: push eax
008230D2: lea eax, var_00000188
008230D8: push eax
008230D9: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008230DE: push eax
008230DF: lea eax, var_00000238
008230E5: push eax
008230E6: lea eax, var_00000198
008230EC: push eax
008230ED: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008230F2: push eax
008230F3: lea eax, var_00000248
008230F9: push eax
008230FA: lea eax, var_000001A8
00823100: push eax
00823101: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00823106: push eax
00823107: lea eax, var_00000258
0082310D: push eax
0082310E: lea eax, var_000001B8
00823114: push eax
00823115: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0082311A: push eax
0082311B: lea eax, var_000001E8
00823121: push eax
00823122: lea eax, var_000001F8
00823128: push eax
00823129: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0082312E: push eax
0082312F: lea eax, var_00000268
00823135: push eax
00823136: lea eax, var_00000208
0082313C: push eax
0082313D: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00823142: push eax
00823143: lea eax, var_00000278
00823149: push eax
0082314A: lea eax, var_00000218
00823150: push eax
00823151: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00823156: push eax
00823157: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0082315C: mov edx, eax
0082315E: lea ecx, var_34
00823161: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00823166: lea eax, var_00000084
0082316C: push eax
0082316D: lea eax, var_80
00823170: push eax
00823171: lea eax, var_7C
00823174: push eax
00823175: lea eax, var_74
00823178: push eax
00823179: lea eax, var_78
0082317C: push eax
0082317D: lea eax, var_70
00823180: push eax
00823181: lea eax, var_68
00823184: push eax
00823185: lea eax, var_6C
00823188: push eax
00823189: lea eax, var_64
0082318C: push eax
0082318D: lea eax, var_60
00823190: push eax
00823191: lea eax, var_58
00823194: push eax
00823195: lea eax, var_5C
00823198: push eax
00823199: lea eax, var_54
0082319C: push eax
0082319D: lea eax, var_4C
008231A0: push eax
008231A1: lea eax, var_50
008231A4: push eax
008231A5: lea eax, var_48
008231A8: push eax
008231A9: lea eax, var_44
008231AC: push eax
008231AD: lea eax, var_3C
008231B0: push eax
008231B1: lea eax, var_40
008231B4: push eax
008231B5: push 00000013h
008231B7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008231BC: add esp, 00000050h
008231BF: lea eax, var_000000D8
008231C5: push eax
008231C6: lea eax, var_000000D4
008231CC: push eax
008231CD: lea eax, var_000000D0
008231D3: push eax
008231D4: lea eax, var_000000CC
008231DA: push eax
008231DB: lea eax, var_000000C8
008231E1: push eax
008231E2: lea eax, var_000000C4
008231E8: push eax
008231E9: lea eax, var_000000C0
008231EF: push eax
008231F0: lea eax, var_000000BC
008231F6: push eax
008231F7: lea eax, var_000000B8
008231FD: push eax
008231FE: lea eax, var_000000B4
00823204: push eax
00823205: lea eax, var_000000B0
0082320B: push eax
0082320C: lea eax, var_000000AC
00823212: push eax
00823213: lea eax, var_000000A8
00823219: push eax
0082321A: lea eax, var_000000A4
00823220: push eax
00823221: lea eax, var_000000A0
00823227: push eax
00823228: lea eax, var_0000009C
0082322E: push eax
0082322F: lea eax, var_00000098
00823235: push eax
00823236: lea eax, var_00000094
0082323C: push eax
0082323D: lea eax, var_00000090
00823243: push eax
00823244: lea eax, var_0000008C
0082324A: push eax
0082324B: lea eax, var_00000088
00823251: push eax
00823252: push 00000015h
00823254: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00823259: add esp, 00000058h
0082325C: lea eax, var_00000218
00823262: push eax
00823263: lea eax, var_00000208
00823269: push eax
0082326A: lea eax, var_000001F8
00823270: push eax
00823271: lea eax, var_000001E8
00823277: push eax
00823278: lea eax, var_000001B8
0082327E: push eax
0082327F: lea eax, var_000001D8
00823285: push eax
00823286: lea eax, var_000001C8
0082328C: push eax
0082328D: lea eax, var_000001A8
00823293: push eax
00823294: lea eax, var_00000198
0082329A: push eax
0082329B: lea eax, var_00000188
008232A1: push eax
008232A2: lea eax, var_00000178
008232A8: push eax
008232A9: lea eax, var_00000168
008232AF: push eax
008232B0: lea eax, var_00000148
008232B6: push eax
008232B7: lea eax, var_00000138
008232BD: push eax
008232BE: lea eax, var_00000128
008232C4: push eax
008232C5: lea eax, var_00000118
008232CB: push eax
008232CC: lea eax, var_00000108
008232D2: push eax
008232D3: lea eax, var_000000F8
008232D9: push eax
008232DA: lea eax, var_000000E8
008232E0: push eax
008232E1: push 00000013h
008232E3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008232E8: add esp, 00000050h
008232EB: lea eax, var_00000330
008232F1: push eax
008232F2: lea eax, var_00000320
008232F8: push eax
008232F9: lea eax, var_2C
008232FC: push eax
008232FD: call 00410A36h ; Next
00823302: mov var_0000034C, eax
00823308: cmp var_0000034C, 00000000h
0082330F: jnz 00822696h
00823315: mov var_000000E0, 80020004h
0082331F: mov var_000000E8, 0000000Ah
00823329: lea eax, var_000000E8
0082332F: push eax
00823330: call 004108C2h ; FreeFile
00823335: movsx eax, ax
00823338: mov var_30, eax
0082333B: lea ecx, var_000000E8
00823341: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00823346: push var_38
00823349: mov ecx, var_30
0082334C: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00823351: push eax
00823352: push FFFFFFFFh
00823354: push 00000220h
00823359: call 004108B6h ; Open #
0082335E: mov ecx, var_30
00823361: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00823366: push eax
00823367: lea eax, var_34
0082336A: push eax
0082336B: push 00000000h
0082336D: call 0041089Eh ; Put #
00823372: mov ecx, var_30
00823375: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0082337A: push eax
0082337B: call 00410898h ; Close #arg_1
00823380: call 004109C4h ; msvbvm60.dll.__vbaExitProc
00823385: push 0082355Bh
0082338A: jmp 0082351Ch
0082338F: lea eax, var_00000084
00823395: push eax
00823396: lea eax, var_80
00823399: push eax
0082339A: lea eax, var_7C
0082339D: push eax
0082339E: lea eax, var_78
008233A1: push eax
008233A2: lea eax, var_74
008233A5: push eax
008233A6: lea eax, var_70
008233A9: push eax
008233AA: lea eax, var_6C
008233AD: push eax
008233AE: lea eax, var_68
008233B1: push eax
008233B2: lea eax, var_64
008233B5: push eax
008233B6: lea eax, var_60
008233B9: push eax
008233BA: lea eax, var_5C
008233BD: push eax
008233BE: lea eax, var_58
008233C1: push eax
008233C2: lea eax, var_54
008233C5: push eax
008233C6: lea eax, var_50
008233C9: push eax
008233CA: lea eax, var_4C
008233CD: push eax
008233CE: lea eax, var_48
008233D1: push eax
008233D2: lea eax, var_44
008233D5: push eax
008233D6: lea eax, var_40
008233D9: push eax
008233DA: lea eax, var_3C
008233DD: push eax
008233DE: push 00000013h
008233E0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008233E5: add esp, 00000050h
008233E8: lea eax, var_000000D8
008233EE: push eax
008233EF: lea eax, var_000000D4
008233F5: push eax
008233F6: lea eax, var_000000D0
008233FC: push eax
008233FD: lea eax, var_000000CC
00823403: push eax
00823404: lea eax, var_000000C8
0082340A: push eax
0082340B: lea eax, var_000000C4
00823411: push eax
00823412: lea eax, var_000000C0
00823418: push eax
00823419: lea eax, var_000000BC
0082341F: push eax
00823420: lea eax, var_000000B8
00823426: push eax
00823427: lea eax, var_000000B4
0082342D: push eax
0082342E: lea eax, var_000000B0
00823434: push eax
00823435: lea eax, var_000000AC
0082343B: push eax
0082343C: lea eax, var_000000A8
00823442: push eax
00823443: lea eax, var_000000A4
00823449: push eax
0082344A: lea eax, var_000000A0
00823450: push eax
00823451: lea eax, var_0000009C
00823457: push eax
00823458: lea eax, var_00000098
0082345E: push eax
0082345F: lea eax, var_00000094
00823465: push eax
00823466: lea eax, var_00000090
0082346C: push eax
0082346D: lea eax, var_0000008C
00823473: push eax
00823474: lea eax, var_00000088
0082347A: push eax
0082347B: push 00000015h
0082347D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00823482: add esp, 00000058h
00823485: lea eax, var_00000218
0082348B: push eax
0082348C: lea eax, var_00000208
00823492: push eax
00823493: lea eax, var_000001F8
00823499: push eax
0082349A: lea eax, var_000001E8
008234A0: push eax
008234A1: lea eax, var_000001D8
008234A7: push eax
008234A8: lea eax, var_000001C8
008234AE: push eax
008234AF: lea eax, var_000001B8
008234B5: push eax
008234B6: lea eax, var_000001A8
008234BC: push eax
008234BD: lea eax, var_00000198
008234C3: push eax
008234C4: lea eax, var_00000188
008234CA: push eax
008234CB: lea eax, var_00000178
008234D1: push eax
008234D2: lea eax, var_00000168
008234D8: push eax
008234D9: lea eax, var_00000158
008234DF: push eax
008234E0: lea eax, var_00000148
008234E6: push eax
008234E7: lea eax, var_00000138
008234ED: push eax
008234EE: lea eax, var_00000128
008234F4: push eax
008234F5: lea eax, var_00000118
008234FB: push eax
008234FC: lea eax, var_00000108
00823502: push eax
00823503: lea eax, var_000000F8
00823509: push eax
0082350A: lea eax, var_000000E8
00823510: push eax
00823511: push 00000014h
00823513: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00823518: add esp, 00000054h
0082351B: ret 
End Sub

Private sub cmdRefresh__81BD9C
0081BD9C: push ebp
0081BD9D: mov ebp, esp
0081BD9F: sub esp, 0000000Ch
0081BDA2: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081BDA7: mov eax, fs:[00h]
0081BDAD: push eax
0081BDAE: mov fs:[00000000h], esp
0081BDB5: mov eax, 000000A4h
0081BDBA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081BDBF: push ebx
0081BDC0: push esi
0081BDC1: push edi
0081BDC2: mov var_0C, esp
0081BDC5: mov var_08, 0040AF20h
0081BDCC: mov eax, [ebp+08h]
0081BDCF: and eax, 00000001h
0081BDD2: mov var_04, eax
0081BDD5: mov eax, [ebp+08h]
0081BDD8: and al, FEh
0081BDDA: mov [ebp+08h], eax
0081BDDD: mov eax, [ebp+08h]
0081BDE0: mov eax, [eax]
0081BDE2: push [ebp+08h]
0081BDE5: call [eax+04h]
0081BDE8: mov var_54, 80020004h
0081BDEF: mov var_5C, 0000000Ah
0081BDF6: mov var_44, 80020004h
0081BDFD: mov var_4C, 0000000Ah
0081BE04: mov var_34, 80020004h
0081BE0B: mov var_3C, 0000000Ah
0081BE12: mov var_68, 00453D64h ; If the server's network card does not support our sniffer, the bot will crash.
0081BE19: mov var_70, 00000008h
0081BE20: lea edx, var_70
0081BE23: lea ecx, var_2C
0081BE26: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0081BE2B: lea eax, var_5C
0081BE2E: push eax
0081BE2F: lea eax, var_4C
0081BE32: push eax
0081BE33: lea eax, var_3C
0081BE36: push eax
0081BE37: push 00000040h
0081BE39: lea eax, var_2C
0081BE3C: push eax
0081BE3D: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0081BE42: lea eax, var_5C
0081BE45: push eax
0081BE46: lea eax, var_4C
0081BE49: push eax
0081BE4A: lea eax, var_3C
0081BE4D: push eax
0081BE4E: lea eax, var_2C
0081BE51: push eax
0081BE52: push 00000004h
0081BE54: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0081BE59: add esp, 00000014h
0081BE5C: lea eax, var_18
0081BE5F: push eax
0081BE60: mov eax, [ebp+08h]
0081BE63: mov eax, [eax]
0081BE65: push [ebp+08h]
0081BE68: call [eax+000001C0h]
0081BE6E: fclex 
0081BE70: mov var_000000AC, eax
0081BE76: cmp var_000000AC, 00000000h
0081BE7D: jnl 81BE9Fh
0081BE7F: push 000001C0h
0081BE84: push 00445198h
0081BE89: push [ebp+08h]
0081BE8C: push var_000000AC
0081BE92: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081BE97: mov var_000000B8, eax
0081BE9D: jmp 81BEA6h
0081BE9F: and var_000000B8, 00000000h
0081BEA6: push var_18
0081BEA9: call 004109DCh ; Val(arg_1)
0081BEAE: fstp real8 ptr var_000000A8
0081BEB4: push 00000000h
0081BEB6: push 00000000h
0081BEB8: push 00000001h
0081BEBA: push 00000000h
0081BEBC: lea eax, var_60
0081BEBF: push eax
0081BEC0: push 00000010h
0081BEC2: push 00000880h
0081BEC7: call 00410946h ; ReDim
0081BECC: add esp, 0000001Ch
0081BECF: mov var_68, 00442938h
0081BED6: mov var_70, 00000008h
0081BEDD: lea esi, var_70
0081BEE0: push 00000000h
0081BEE2: push var_60
0081BEE5: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0081BEEA: mov ecx, eax
0081BEEC: mov edx, esi
0081BEEE: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0081BEF3: mov edx, 0043D6FCh ; x62
0081BEF8: lea ecx, var_1C
0081BEFB: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081BF00: lea eax, var_60
0081BF03: push eax
0081BF04: lea eax, var_1C
0081BF07: push eax
0081BF08: fld real8 ptr var_000000A8
0081BF0E: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0081BF13: push eax
0081BF14: call 007A6910h
0081BF19: lea eax, var_60
0081BF1C: push eax
0081BF1D: push 00000000h
0081BF1F: call 00410934h ; Erase
0081BF24: lea eax, var_1C
0081BF27: push eax
0081BF28: lea eax, var_18
0081BF2B: push eax
0081BF2C: push 00000002h
0081BF2E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081BF33: add esp, 0000000Ch
0081BF36: mov var_04, 00000000h
0081BF3D: wait 
0081BF3E: push 0081BF7Eh
0081BF43: jmp 81BF7Dh
0081BF45: lea eax, var_1C
0081BF48: push eax
0081BF49: lea eax, var_18
0081BF4C: push eax
0081BF4D: push 00000002h
0081BF4F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081BF54: add esp, 0000000Ch
0081BF57: lea eax, var_5C
0081BF5A: push eax
0081BF5B: lea eax, var_4C
0081BF5E: push eax
0081BF5F: lea eax, var_3C
0081BF62: push eax
0081BF63: lea eax, var_2C
0081BF66: push eax
0081BF67: push 00000004h
0081BF69: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0081BF6E: add esp, 00000014h
0081BF71: lea eax, var_60
0081BF74: push eax
0081BF75: push 00000000h
0081BF77: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0081BF7C: ret 
End Sub

