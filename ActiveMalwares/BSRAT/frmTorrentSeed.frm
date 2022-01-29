VERSION 5.00
Begin VB.Form frmTorrentSeed
  Caption = "Torrent seeder"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmTorrentSeed.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 13260
  ClientHeight = 6900
  StartUpPosition = 3 'Windows Default
  Begin XtremeSuiteControls.ListView lstReport
    Left = 0
    Top = 0
    Width = 13215
    Height = 5655
    TabIndex = 0
  End
  Begin XtremeSuiteControls.GroupBox gbTorrent
    Left = 0
    Top = 5760
    Width = 13215
    Height = 1095
    TabIndex = 1
    Begin VB.TextBox txtURL
      Left = 1560
      Top = 700
      Width = 8535
      Height = 285
      Text = "http://site.com/file.torrent"
      TabIndex = 6
    End
    Begin VB.Timer tmrInfo
      Enabled = 0   'False
      Interval = 1000
      Left = 12720
      Top = 0
    End
    Begin XtremeSuiteControls.PushButton cmdStart
      Left = 11880
      Top = 600
      Width = 1215
      Height = 375
      TabIndex = 2
    End
    Begin XtremeSuiteControls.PushButton cmdInfo
      Left = 120
      Top = 240
      Width = 855
      Height = 285
      TabIndex = 7
    End
    Begin VB.Label lblHijacker
      Caption = "URL to torrent file:"
      Index = 14
      Left = 120
      Top = 700
      Width = 1335
      Height = 255
      TabIndex = 5
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblInfoSel
      Caption = "N/A"
      Index = 1
      Left = 12360
      Top = 240
      Width = 735
      Height = 255
      TabIndex = 4
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblInfoSel
      Caption = "Selected targets:"
      Index = 0
      Left = 10920
      Top = 240
      Width = 1335
      Height = 255
      TabIndex = 3
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
  End
  Begin VB.Menu mnuSeederMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuSeeder
      Index = 0
      Caption = "Clear finished"
    End
    Begin VB.Menu mnuSeeder
      Index = 1
      Caption = "-"
    End
    Begin VB.Menu mnuSeeder
      Index = 2
      Caption = "Copy"
    End
    Begin VB.Menu mnuSeeder
      Index = 3
      Caption = "Save to file"
    End
    Begin VB.Menu mnuSeeder
      Index = 4
      Caption = "-"
    End
    Begin VB.Menu mnuSeeder
      Index = 5
      Caption = "Clear all"
    End
  End
End

Attribute VB_Name = "frmTorrentSeed"


Private sub lstReport__88C7B7
0088C7B7: push ebp
0088C7B8: mov ebp, esp
0088C7BA: sub esp, 0000000Ch
0088C7BD: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0088C7C2: mov eax, fs:[00h]
0088C7C8: push eax
0088C7C9: mov fs:[00000000h], esp
0088C7D0: push 00000054h
0088C7D2: pop eax
0088C7D3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C7D8: push ebx
0088C7D9: push esi
0088C7DA: push edi
0088C7DB: mov var_0C, esp
0088C7DE: mov var_08, 0040DDD0h
0088C7E5: mov eax, [ebp+08h]
0088C7E8: and eax, 00000001h
0088C7EB: mov var_04, eax
0088C7EE: mov eax, [ebp+08h]
0088C7F1: and al, FEh
0088C7F3: mov [ebp+08h], eax
0088C7F6: mov eax, [ebp+08h]
0088C7F9: mov eax, [eax]
0088C7FB: push [ebp+08h]
0088C7FE: call [eax+04h]
0088C801: mov eax, [ebp+0Ch]
0088C804: cmp word ptr [eax], 0002h
0088C808: jnz 0088C8E2h
0088C80E: mov var_50, 80020004h
0088C815: mov var_58, 0000000Ah
0088C81C: mov var_40, 80020004h
0088C823: mov var_48, 0000000Ah
0088C82A: mov var_30, 80020004h
0088C831: mov var_38, 0000000Ah
0088C838: mov var_20, 80020004h
0088C83F: mov var_28, 0000000Ah
0088C846: push 00000010h
0088C848: pop eax
0088C849: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C84E: lea esi, var_58
0088C851: mov edi, esp
0088C853: movsd 
0088C854: movsd 
0088C855: movsd 
0088C856: movsd 
0088C857: push 00000010h
0088C859: pop eax
0088C85A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C85F: lea esi, var_48
0088C862: mov edi, esp
0088C864: movsd 
0088C865: movsd 
0088C866: movsd 
0088C867: movsd 
0088C868: push 00000010h
0088C86A: pop eax
0088C86B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C870: lea esi, var_38
0088C873: mov edi, esp
0088C875: movsd 
0088C876: movsd 
0088C877: movsd 
0088C878: movsd 
0088C879: push 00000010h
0088C87B: pop eax
0088C87C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C881: lea esi, var_28
0088C884: mov edi, esp
0088C886: movsd 
0088C887: movsd 
0088C888: movsd 
0088C889: movsd 
0088C88A: mov eax, [ebp+08h]
0088C88D: mov eax, [eax]
0088C88F: push [ebp+08h]
0088C892: call [eax+0000030Ch]
0088C898: push eax
0088C899: lea eax, var_18
0088C89C: push eax
0088C89D: call 00410A84h ; Set (object)
0088C8A2: push eax
0088C8A3: mov eax, [ebp+08h]
0088C8A6: mov eax, [eax]
0088C8A8: push [ebp+08h]
0088C8AB: call [eax+000002BCh]
0088C8B1: fclex 
0088C8B3: mov var_5C, eax
0088C8B6: cmp var_5C, 00000000h
0088C8BA: jnl 88C8D6h
0088C8BC: push 000002BCh
0088C8C1: push 004452D0h
0088C8C6: push [ebp+08h]
0088C8C9: push var_5C
0088C8CC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088C8D1: mov var_68, eax
0088C8D4: jmp 88C8DAh
0088C8D6: and var_68, 00000000h
0088C8DA: lea ecx, var_18
0088C8DD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0088C8E2: mov var_04, 00000000h
0088C8E9: push 0088C8FAh
0088C8EE: jmp 88C8F9h
0088C8F0: lea ecx, var_18
0088C8F3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0088C8F8: ret 
End Sub

Private sub lstReport__88C740
0088C740: push ebp
0088C741: mov ebp, esp
0088C743: sub esp, 0000000Ch
0088C746: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0088C74B: mov eax, fs:[00h]
0088C751: push eax
0088C752: mov fs:[00000000h], esp
0088C759: push 00000008h
0088C75B: pop eax
0088C75C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C761: push ebx
0088C762: push esi
0088C763: push edi
0088C764: mov var_0C, esp
0088C767: mov var_08, 0040DDC8h
0088C76E: mov eax, [ebp+08h]
0088C771: and eax, 00000001h
0088C774: mov var_04, eax
0088C777: mov eax, [ebp+08h]
0088C77A: and al, FEh
0088C77C: mov [ebp+08h], eax
0088C77F: mov eax, [ebp+08h]
0088C782: mov eax, [eax]
0088C784: push [ebp+08h]
0088C787: call [eax+04h]
0088C78A: mov eax, [ebp+0Ch]
0088C78D: or word ptr [eax], FFFFh
0088C791: mov var_04, 00000000h
0088C798: mov eax, [ebp+08h]
0088C79B: mov eax, [eax]
0088C79D: push [ebp+08h]
0088C7A0: call [eax+08h]
0088C7A3: mov eax, var_04
0088C7A6: mov ecx, var_14
0088C7A9: mov fs:[00000000h], ecx
0088C7B0: pop edi
0088C7B1: pop esi
0088C7B2: pop ebx
0088C7B3: leave 
0088C7B4: retn 0008h
End Sub

Private sub tmrInfo__88E9A3
0088E9A3: push ebp
0088E9A4: mov ebp, esp
0088E9A6: sub esp, 0000000Ch
0088E9A9: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0088E9AE: mov eax, fs:[00h]
0088E9B4: push eax
0088E9B5: mov fs:[00000000h], esp
0088E9BC: mov eax, 000000B0h
0088E9C1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088E9C6: push ebx
0088E9C7: push esi
0088E9C8: push edi
0088E9C9: mov var_0C, esp
0088E9CC: mov var_08, 0040DE88h
0088E9D3: mov eax, [ebp+08h]
0088E9D6: and eax, 00000001h
0088E9D9: mov var_04, eax
0088E9DC: mov eax, [ebp+08h]
0088E9DF: and al, FEh
0088E9E1: mov [ebp+08h], eax
0088E9E4: mov eax, [ebp+08h]
0088E9E7: mov eax, [eax]
0088E9E9: push [ebp+08h]
0088E9EC: call [eax+04h]
0088E9EF: movsx eax, word ptr [8F2430h]
0088E9F6: test eax, eax
0088E9F8: jnz 0088ECE4h
0088E9FE: cmp [008F2010h], 00000000h
0088EA05: jnz 88EA22h
0088EA07: push 008F2010h
0088EA0C: push 00433984h
0088EA11: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088EA16: mov var_000000A8, 008F2010h
0088EA20: jmp 88EA2Ch
0088EA22: mov var_000000A8, 008F2010h
0088EA2C: push 00000000h
0088EA2E: push 00000001h
0088EA30: push 00440E48h
0088EA35: push 00000000h
0088EA37: push 00000018h
0088EA39: mov eax, var_000000A8
0088EA3F: mov eax, [eax]
0088EA41: mov ecx, var_000000A8
0088EA47: mov ecx, [ecx]
0088EA49: mov ecx, [ecx]
0088EA4B: push eax
0088EA4C: call [ecx+00000550h]
0088EA52: push eax
0088EA53: lea eax, var_24
0088EA56: push eax
0088EA57: call 00410A84h ; Set (object)
0088EA5C: push eax
0088EA5D: lea eax, var_3C
0088EA60: push eax
0088EA61: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088EA66: add esp, 00000010h
0088EA69: push eax
0088EA6A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088EA6F: push eax
0088EA70: lea eax, var_28
0088EA73: push eax
0088EA74: call 00410A84h ; Set (object)
0088EA79: push eax
0088EA7A: lea eax, var_4C
0088EA7D: push eax
0088EA7E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088EA83: add esp, 00000010h
0088EA86: push eax
0088EA87: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0088EA8C: xor ecx, ecx
0088EA8E: test eax, eax
0088EA90: setnle cl
0088EA93: neg ecx
0088EA95: mov var_80, cx
0088EA99: lea eax, var_28
0088EA9C: push eax
0088EA9D: lea eax, var_24
0088EAA0: push eax
0088EAA1: push 00000002h
0088EAA3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088EAA8: add esp, 0000000Ch
0088EAAB: lea eax, var_4C
0088EAAE: push eax
0088EAAF: lea eax, var_3C
0088EAB2: push eax
0088EAB3: push 00000002h
0088EAB5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088EABA: add esp, 0000000Ch
0088EABD: movsx eax, word ptr var_80
0088EAC1: test eax, eax
0088EAC3: jz 0088ECDFh
0088EAC9: cmp [008F2010h], 00000000h
0088EAD0: jnz 88EAEDh
0088EAD2: push 008F2010h
0088EAD7: push 00433984h
0088EADC: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088EAE1: mov var_000000AC, 008F2010h
0088EAEB: jmp 88EAF7h
0088EAED: mov var_000000AC, 008F2010h
0088EAF7: push 00000000h
0088EAF9: push 00000001h
0088EAFB: push 00440E48h
0088EB00: push 00000000h
0088EB02: push 00000018h
0088EB04: mov eax, var_000000AC
0088EB0A: mov eax, [eax]
0088EB0C: mov ecx, var_000000AC
0088EB12: mov ecx, [ecx]
0088EB14: mov ecx, [ecx]
0088EB16: push eax
0088EB17: call [ecx+00000550h]
0088EB1D: push eax
0088EB1E: lea eax, var_24
0088EB21: push eax
0088EB22: call 00410A84h ; Set (object)
0088EB27: push eax
0088EB28: lea eax, var_3C
0088EB2B: push eax
0088EB2C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088EB31: add esp, 00000010h
0088EB34: push eax
0088EB35: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088EB3A: push eax
0088EB3B: lea eax, var_28
0088EB3E: push eax
0088EB3F: call 00410A84h ; Set (object)
0088EB44: push eax
0088EB45: lea eax, var_4C
0088EB48: push eax
0088EB49: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088EB4E: add esp, 00000010h
0088EB51: push eax
0088EB52: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0088EB57: mov var_00000094, eax
0088EB5D: mov var_00000090, 00000001h
0088EB67: mov var_18, 00000001h
0088EB6E: lea eax, var_28
0088EB71: push eax
0088EB72: lea eax, var_24
0088EB75: push eax
0088EB76: push 00000002h
0088EB78: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088EB7D: add esp, 0000000Ch
0088EB80: lea eax, var_4C
0088EB83: push eax
0088EB84: lea eax, var_3C
0088EB87: push eax
0088EB88: push 00000002h
0088EB8A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088EB8F: add esp, 0000000Ch
0088EB92: jmp 88EBA6h
0088EB94: mov eax, var_18
0088EB97: add eax, var_00000090
0088EB9D: jo 0088F0F5h
0088EBA3: mov var_18, eax
0088EBA6: mov eax, var_18
0088EBA9: cmp eax, var_00000094
0088EBAF: jnle 0088ECDFh
0088EBB5: mov eax, var_18
0088EBB8: mov var_64, eax
0088EBBB: mov var_6C, 00000003h
0088EBC2: cmp [008F2010h], 00000000h
0088EBC9: jnz 88EBE6h
0088EBCB: push 008F2010h
0088EBD0: push 00433984h
0088EBD5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088EBDA: mov var_000000B0, 008F2010h
0088EBE4: jmp 88EBF0h
0088EBE6: mov var_000000B0, 008F2010h
0088EBF0: push 00000000h
0088EBF2: push 00000004h
0088EBF4: push 00440E58h
0088EBF9: push 00000010h
0088EBFB: pop eax
0088EBFC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088EC01: lea esi, var_6C
0088EC04: mov edi, esp
0088EC06: movsd 
0088EC07: movsd 
0088EC08: movsd 
0088EC09: movsd 
0088EC0A: push 00000001h
0088EC0C: push 00000000h
0088EC0E: push 00440E48h
0088EC13: push 00000000h
0088EC15: push 00000018h
0088EC17: mov eax, var_000000B0
0088EC1D: mov eax, [eax]
0088EC1F: mov ecx, var_000000B0
0088EC25: mov ecx, [ecx]
0088EC27: mov ecx, [ecx]
0088EC29: push eax
0088EC2A: call [ecx+00000550h]
0088EC30: push eax
0088EC31: lea eax, var_24
0088EC34: push eax
0088EC35: call 00410A84h ; Set (object)
0088EC3A: push eax
0088EC3B: lea eax, var_3C
0088EC3E: push eax
0088EC3F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088EC44: add esp, 00000010h
0088EC47: push eax
0088EC48: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088EC4D: push eax
0088EC4E: lea eax, var_28
0088EC51: push eax
0088EC52: call 00410A84h ; Set (object)
0088EC57: push eax
0088EC58: lea eax, var_4C
0088EC5B: push eax
0088EC5C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088EC61: add esp, 00000020h
0088EC64: push eax
0088EC65: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088EC6A: push eax
0088EC6B: lea eax, var_2C
0088EC6E: push eax
0088EC6F: call 00410A84h ; Set (object)
0088EC74: push eax
0088EC75: lea eax, var_5C
0088EC78: push eax
0088EC79: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088EC7E: add esp, 00000010h
0088EC81: push eax
0088EC82: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0088EC87: sub ax, FFFFh
0088EC8B: neg ax
0088EC8E: sbb eax, eax
0088EC90: inc eax
0088EC91: neg eax
0088EC93: mov var_80, ax
0088EC97: lea eax, var_2C
0088EC9A: push eax
0088EC9B: lea eax, var_28
0088EC9E: push eax
0088EC9F: lea eax, var_24
0088ECA2: push eax
0088ECA3: push 00000003h
0088ECA5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088ECAA: add esp, 00000010h
0088ECAD: lea eax, var_5C
0088ECB0: push eax
0088ECB1: lea eax, var_4C
0088ECB4: push eax
0088ECB5: lea eax, var_3C
0088ECB8: push eax
0088ECB9: push 00000003h
0088ECBB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088ECC0: add esp, 00000010h
0088ECC3: movsx eax, word ptr var_80
0088ECC7: test eax, eax
0088ECC9: jz 88ECDAh
0088ECCB: mov eax, var_1C
0088ECCE: add eax, 00000001h
0088ECD1: jo 0088F0F5h
0088ECD7: mov var_1C, eax
0088ECDA: jmp 0088EB94h
0088ECDF: jmp 0088EFB2h
0088ECE4: cmp [008F2010h], 00000000h
0088ECEB: jnz 88ED08h
0088ECED: push 008F2010h
0088ECF2: push 00433984h
0088ECF7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088ECFC: mov var_000000B4, 008F2010h
0088ED06: jmp 88ED12h
0088ED08: mov var_000000B4, 008F2010h
0088ED12: and var_64, 00000000h
0088ED16: mov var_6C, 00008002h
0088ED1D: push 00000000h
0088ED1F: push 0044A9C8h ; COUNT
0088ED24: push 00000000h
0088ED26: push 0044A9B0h ; lstFiltered
0088ED2B: mov eax, var_000000B4
0088ED31: mov eax, [eax]
0088ED33: mov ecx, var_000000B4
0088ED39: mov ecx, [ecx]
0088ED3B: mov ecx, [ecx]
0088ED3D: push eax
0088ED3E: call [ecx+00000550h]
0088ED44: push eax
0088ED45: lea eax, var_24
0088ED48: push eax
0088ED49: call 00410A84h ; Set (object)
0088ED4E: push eax
0088ED4F: lea eax, var_3C
0088ED52: push eax
0088ED53: call 00410742h ; msvbvm60.dll.__vbaLateMemCallLd
0088ED58: add esp, 00000010h
0088ED5B: push eax
0088ED5C: lea eax, var_4C
0088ED5F: push eax
0088ED60: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
0088ED65: add esp, 00000010h
0088ED68: push eax
0088ED69: lea eax, var_6C
0088ED6C: push eax
0088ED6D: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
0088ED72: mov var_80, ax
0088ED76: lea ecx, var_24
0088ED79: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0088ED7E: lea eax, var_4C
0088ED81: push eax
0088ED82: lea eax, var_3C
0088ED85: push eax
0088ED86: push 00000002h
0088ED88: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088ED8D: add esp, 0000000Ch
0088ED90: movsx eax, word ptr var_80
0088ED94: test eax, eax
0088ED96: jz 0088EFB2h
0088ED9C: cmp [008F2010h], 00000000h
0088EDA3: jnz 88EDC0h
0088EDA5: push 008F2010h
0088EDAA: push 00433984h
0088EDAF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088EDB4: mov var_000000B8, 008F2010h
0088EDBE: jmp 88EDCAh
0088EDC0: mov var_000000B8, 008F2010h
0088EDCA: push 00000000h
0088EDCC: push 00000001h
0088EDCE: push 00440E48h
0088EDD3: push 00000000h
0088EDD5: push 00000018h
0088EDD7: mov eax, var_000000B8
0088EDDD: mov eax, [eax]
0088EDDF: mov ecx, var_000000B8
0088EDE5: mov ecx, [ecx]
0088EDE7: mov ecx, [ecx]
0088EDE9: push eax
0088EDEA: call [ecx+0000054Ch]
0088EDF0: push eax
0088EDF1: lea eax, var_24
0088EDF4: push eax
0088EDF5: call 00410A84h ; Set (object)
0088EDFA: push eax
0088EDFB: lea eax, var_3C
0088EDFE: push eax
0088EDFF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088EE04: add esp, 00000010h
0088EE07: push eax
0088EE08: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088EE0D: push eax
0088EE0E: lea eax, var_28
0088EE11: push eax
0088EE12: call 00410A84h ; Set (object)
0088EE17: push eax
0088EE18: lea eax, var_4C
0088EE1B: push eax
0088EE1C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088EE21: add esp, 00000010h
0088EE24: push eax
0088EE25: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0088EE2A: mov var_0000009C, eax
0088EE30: mov var_00000098, 00000001h
0088EE3A: mov var_18, 00000001h
0088EE41: lea eax, var_28
0088EE44: push eax
0088EE45: lea eax, var_24
0088EE48: push eax
0088EE49: push 00000002h
0088EE4B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088EE50: add esp, 0000000Ch
0088EE53: lea eax, var_4C
0088EE56: push eax
0088EE57: lea eax, var_3C
0088EE5A: push eax
0088EE5B: push 00000002h
0088EE5D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088EE62: add esp, 0000000Ch
0088EE65: jmp 88EE79h
0088EE67: mov eax, var_18
0088EE6A: add eax, var_00000098
0088EE70: jo 0088F0F5h
0088EE76: mov var_18, eax
0088EE79: mov eax, var_18
0088EE7C: cmp eax, var_0000009C
0088EE82: jnle 0088EFB2h
0088EE88: mov eax, var_18
0088EE8B: mov var_64, eax
0088EE8E: mov var_6C, 00000003h
0088EE95: cmp [008F2010h], 00000000h
0088EE9C: jnz 88EEB9h
0088EE9E: push 008F2010h
0088EEA3: push 00433984h
0088EEA8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088EEAD: mov var_000000BC, 008F2010h
0088EEB7: jmp 88EEC3h
0088EEB9: mov var_000000BC, 008F2010h
0088EEC3: push 00000000h
0088EEC5: push 00000004h
0088EEC7: push 00440E58h
0088EECC: push 00000010h
0088EECE: pop eax
0088EECF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088EED4: lea esi, var_6C
0088EED7: mov edi, esp
0088EED9: movsd 
0088EEDA: movsd 
0088EEDB: movsd 
0088EEDC: movsd 
0088EEDD: push 00000001h
0088EEDF: push 00000000h
0088EEE1: push 00440E48h
0088EEE6: push 00000000h
0088EEE8: push 00000018h
0088EEEA: mov eax, var_000000BC
0088EEF0: mov eax, [eax]
0088EEF2: mov ecx, var_000000BC
0088EEF8: mov ecx, [ecx]
0088EEFA: mov ecx, [ecx]
0088EEFC: push eax
0088EEFD: call [ecx+0000054Ch]
0088EF03: push eax
0088EF04: lea eax, var_24
0088EF07: push eax
0088EF08: call 00410A84h ; Set (object)
0088EF0D: push eax
0088EF0E: lea eax, var_3C
0088EF11: push eax
0088EF12: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088EF17: add esp, 00000010h
0088EF1A: push eax
0088EF1B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088EF20: push eax
0088EF21: lea eax, var_28
0088EF24: push eax
0088EF25: call 00410A84h ; Set (object)
0088EF2A: push eax
0088EF2B: lea eax, var_4C
0088EF2E: push eax
0088EF2F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088EF34: add esp, 00000020h
0088EF37: push eax
0088EF38: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088EF3D: push eax
0088EF3E: lea eax, var_2C
0088EF41: push eax
0088EF42: call 00410A84h ; Set (object)
0088EF47: push eax
0088EF48: lea eax, var_5C
0088EF4B: push eax
0088EF4C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088EF51: add esp, 00000010h
0088EF54: push eax
0088EF55: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0088EF5A: sub ax, FFFFh
0088EF5E: neg ax
0088EF61: sbb eax, eax
0088EF63: inc eax
0088EF64: neg eax
0088EF66: mov var_80, ax
0088EF6A: lea eax, var_2C
0088EF6D: push eax
0088EF6E: lea eax, var_28
0088EF71: push eax
0088EF72: lea eax, var_24
0088EF75: push eax
0088EF76: push 00000003h
0088EF78: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088EF7D: add esp, 00000010h
0088EF80: lea eax, var_5C
0088EF83: push eax
0088EF84: lea eax, var_4C
0088EF87: push eax
0088EF88: lea eax, var_3C
0088EF8B: push eax
0088EF8C: push 00000003h
0088EF8E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088EF93: add esp, 00000010h
0088EF96: movsx eax, word ptr var_80
0088EF9A: test eax, eax
0088EF9C: jz 88EFADh
0088EF9E: mov eax, var_1C
0088EFA1: add eax, 00000001h
0088EFA4: jo 0088F0F5h
0088EFAA: mov var_1C, eax
0088EFAD: jmp 0088EE67h
0088EFB2: mov eax, [ebp+08h]
0088EFB5: mov eax, [eax]
0088EFB7: push [ebp+08h]
0088EFBA: call [eax+00000308h]
0088EFC0: push eax
0088EFC1: lea eax, var_24
0088EFC4: push eax
0088EFC5: call 00410A84h ; Set (object)
0088EFCA: mov var_80, eax
0088EFCD: lea eax, var_28
0088EFD0: push eax
0088EFD1: push 00000001h
0088EFD3: mov eax, var_80
0088EFD6: mov eax, [eax]
0088EFD8: push var_80
0088EFDB: call [eax+40h]
0088EFDE: fclex 
0088EFE0: mov var_00000084, eax
0088EFE6: cmp var_00000084, 00000000h
0088EFED: jnl 88F00Ch
0088EFEF: push 00000040h
0088EFF1: push 00440DE8h
0088EFF6: push var_80
0088EFF9: push var_00000084
0088EFFF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088F004: mov var_000000C0, eax
0088F00A: jmp 88F013h
0088F00C: and var_000000C0, 00000000h
0088F013: mov eax, var_28
0088F016: mov var_00000088, eax
0088F01C: push var_1C
0088F01F: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0088F024: mov edx, eax
0088F026: lea ecx, var_20
0088F029: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088F02E: push eax
0088F02F: mov eax, var_00000088
0088F035: mov eax, [eax]
0088F037: push var_00000088
0088F03D: call [eax+54h]
0088F040: fclex 
0088F042: mov var_0000008C, eax
0088F048: cmp var_0000008C, 00000000h
0088F04F: jnl 88F071h
0088F051: push 00000054h
0088F053: push 004425E4h
0088F058: push var_00000088
0088F05E: push var_0000008C
0088F064: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088F069: mov var_000000C4, eax
0088F06F: jmp 88F078h
0088F071: and var_000000C4, 00000000h
0088F078: lea ecx, var_20
0088F07B: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0088F080: lea eax, var_28
0088F083: push eax
0088F084: lea eax, var_24
0088F087: push eax
0088F088: push 00000002h
0088F08A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088F08F: add esp, 0000000Ch
0088F092: mov var_04, 00000000h
0088F099: push 0088F0D6h
0088F09E: jmp 88F0D5h
0088F0A0: lea ecx, var_20
0088F0A3: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0088F0A8: lea eax, var_2C
0088F0AB: push eax
0088F0AC: lea eax, var_28
0088F0AF: push eax
0088F0B0: lea eax, var_24
0088F0B3: push eax
0088F0B4: push 00000003h
0088F0B6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088F0BB: add esp, 00000010h
0088F0BE: lea eax, var_5C
0088F0C1: push eax
0088F0C2: lea eax, var_4C
0088F0C5: push eax
0088F0C6: lea eax, var_3C
0088F0C9: push eax
0088F0CA: push 00000003h
0088F0CC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088F0D1: add esp, 00000010h
0088F0D4: ret 
End Sub

Private sub mnuSeeder__88C919
0088C919: push ebp
0088C91A: mov ebp, esp
0088C91C: sub esp, 00000018h
0088C91F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0088C924: mov eax, fs:[00h]
0088C92A: push eax
0088C92B: mov fs:[00000000h], esp
0088C932: mov eax, 00000418h
0088C937: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C93C: push ebx
0088C93D: push esi
0088C93E: push edi
0088C93F: mov var_18, esp
0088C942: mov var_14, 0040DDE0h
0088C949: mov eax, [ebp+08h]
0088C94C: and eax, 00000001h
0088C94F: mov var_10, eax
0088C952: mov eax, [ebp+08h]
0088C955: and al, FEh
0088C957: mov [ebp+08h], eax
0088C95A: mov var_0C, 00000000h
0088C961: mov eax, [ebp+08h]
0088C964: mov eax, [eax]
0088C966: push [ebp+08h]
0088C969: call [eax+04h]
0088C96C: mov var_04, 00000001h
0088C973: mov var_04, 00000002h
0088C97A: push FFFFFFFFh
0088C97C: call 00410A60h ; On Error ...
0088C981: mov var_04, 00000003h
0088C988: mov eax, [ebp+0Ch]
0088C98B: mov ax, [eax]
0088C98E: mov var_000003F0, ax
0088C995: movsx eax, word ptr var_000003F0
0088C99C: mov var_00000414, eax
0088C9A2: cmp var_00000414, 00000000h
0088C9A9: jz 88C9DCh
0088C9AB: cmp var_00000414, 00000002h
0088C9B2: jz 0088CD1Eh
0088C9B8: cmp var_00000414, 00000003h
0088C9BF: jz 0088DA8Ch
0088C9C5: cmp var_00000414, 00000005h
0088C9CC: jz 0088E6EDh
0088C9D2: jmp 0088E76Bh
0088C9D7: jmp 0088E76Bh
0088C9DC: mov var_04, 00000006h
0088C9E3: mov var_00000254, 00000001h
0088C9ED: mov var_0000025C, 00000002h
0088C9F7: push 00000000h
0088C9F9: push 00000001h
0088C9FB: push 00440E48h
0088CA00: push 00000000h
0088CA02: push 00000018h
0088CA04: mov eax, [ebp+08h]
0088CA07: mov eax, [eax]
0088CA09: push [ebp+08h]
0088CA0C: call [eax+00000314h]
0088CA12: push eax
0088CA13: lea eax, var_000000AC
0088CA19: push eax
0088CA1A: call 00410A84h ; Set (object)
0088CA1F: push eax
0088CA20: lea eax, var_0000010C
0088CA26: push eax
0088CA27: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088CA2C: add esp, 00000010h
0088CA2F: push eax
0088CA30: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088CA35: push eax
0088CA36: lea eax, var_000000B0
0088CA3C: push eax
0088CA3D: call 00410A84h ; Set (object)
0088CA42: push eax
0088CA43: lea eax, var_0000011C
0088CA49: push eax
0088CA4A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088CA4F: add esp, 00000010h
0088CA52: push eax
0088CA53: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0088CA58: mov var_00000264, eax
0088CA5E: mov var_0000026C, 00000003h
0088CA68: mov var_00000274, 00000001h
0088CA72: mov var_0000027C, 00000002h
0088CA7C: lea eax, var_0000025C
0088CA82: push eax
0088CA83: lea eax, var_0000026C
0088CA89: push eax
0088CA8A: lea eax, var_0000027C
0088CA90: push eax
0088CA91: lea eax, var_000003AC
0088CA97: push eax
0088CA98: lea eax, var_0000039C
0088CA9E: push eax
0088CA9F: lea eax, var_30
0088CAA2: push eax
0088CAA3: call 00410A3Ch ; For
0088CAA8: mov var_00000408, eax
0088CAAE: lea eax, var_000000B0
0088CAB4: push eax
0088CAB5: lea eax, var_000000AC
0088CABB: push eax
0088CABC: push 00000002h
0088CABE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088CAC3: add esp, 0000000Ch
0088CAC6: lea eax, var_0000011C
0088CACC: push eax
0088CACD: lea eax, var_0000010C
0088CAD3: push eax
0088CAD4: push 00000002h
0088CAD6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088CADB: add esp, 0000000Ch
0088CADE: jmp 0088CD0Ch
0088CAE3: mov var_04, 00000007h
0088CAEA: mov var_00000264, 00000006h
0088CAF4: mov var_0000026C, 00000003h
0088CAFE: lea eax, var_30
0088CB01: mov var_00000254, eax
0088CB07: mov var_0000025C, 0000400Ch
0088CB11: push 00000010h
0088CB13: pop eax
0088CB14: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088CB19: lea esi, var_0000026C
0088CB1F: mov edi, esp
0088CB21: movsd 
0088CB22: movsd 
0088CB23: movsd 
0088CB24: movsd 
0088CB25: push 00000001h
0088CB27: push 00000010h
0088CB29: push 00440E58h
0088CB2E: push 00000010h
0088CB30: pop eax
0088CB31: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088CB36: lea esi, var_0000025C
0088CB3C: mov edi, esp
0088CB3E: movsd 
0088CB3F: movsd 
0088CB40: movsd 
0088CB41: movsd 
0088CB42: push 00000001h
0088CB44: push 00000000h
0088CB46: push 00440E48h
0088CB4B: push 00000000h
0088CB4D: push 00000018h
0088CB4F: mov eax, [ebp+08h]
0088CB52: mov eax, [eax]
0088CB54: push [ebp+08h]
0088CB57: call [eax+00000314h]
0088CB5D: push eax
0088CB5E: lea eax, var_000000AC
0088CB64: push eax
0088CB65: call 00410A84h ; Set (object)
0088CB6A: push eax
0088CB6B: lea eax, var_0000010C
0088CB71: push eax
0088CB72: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088CB77: add esp, 00000010h
0088CB7A: push eax
0088CB7B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088CB80: push eax
0088CB81: lea eax, var_000000B0
0088CB87: push eax
0088CB88: call 00410A84h ; Set (object)
0088CB8D: push eax
0088CB8E: lea eax, var_0000011C
0088CB94: push eax
0088CB95: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088CB9A: add esp, 00000020h
0088CB9D: push eax
0088CB9E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088CBA3: push eax
0088CBA4: lea eax, var_000000B4
0088CBAA: push eax
0088CBAB: call 00410A84h ; Set (object)
0088CBB0: push eax
0088CBB1: lea eax, var_0000012C
0088CBB7: push eax
0088CBB8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088CBBD: add esp, 00000020h
0088CBC0: push eax
0088CBC1: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088CBC6: mov edx, eax
0088CBC8: lea ecx, var_5C
0088CBCB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088CBD0: push eax
0088CBD1: push 0044A8E0h ; OK
0088CBD6: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0088CBDB: neg eax
0088CBDD: sbb eax, eax
0088CBDF: inc eax
0088CBE0: neg eax
0088CBE2: mov var_00000380, ax
0088CBE9: lea ecx, var_5C
0088CBEC: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0088CBF1: lea eax, var_000000B4
0088CBF7: push eax
0088CBF8: lea eax, var_000000B0
0088CBFE: push eax
0088CBFF: lea eax, var_000000AC
0088CC05: push eax
0088CC06: push 00000003h
0088CC08: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088CC0D: add esp, 00000010h
0088CC10: lea eax, var_0000012C
0088CC16: push eax
0088CC17: lea eax, var_0000011C
0088CC1D: push eax
0088CC1E: lea eax, var_0000010C
0088CC24: push eax
0088CC25: push 00000003h
0088CC27: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088CC2C: add esp, 00000010h
0088CC2F: movsx eax, word ptr var_00000380
0088CC36: test eax, eax
0088CC38: jz 0088CCE8h
0088CC3E: mov var_04, 00000008h
0088CC45: lea eax, var_30
0088CC48: mov var_00000254, eax
0088CC4E: mov var_0000025C, 0000400Ch
0088CC58: push 00000010h
0088CC5A: pop eax
0088CC5B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088CC60: lea esi, var_0000025C
0088CC66: mov edi, esp
0088CC68: movsd 
0088CC69: movsd 
0088CC6A: movsd 
0088CC6B: movsd 
0088CC6C: push 00000001h
0088CC6E: push 00000004h
0088CC70: push 00440E48h
0088CC75: push 00000000h
0088CC77: push 00000018h
0088CC79: mov eax, [ebp+08h]
0088CC7C: mov eax, [eax]
0088CC7E: push [ebp+08h]
0088CC81: call [eax+00000314h]
0088CC87: push eax
0088CC88: lea eax, var_000000AC
0088CC8E: push eax
0088CC8F: call 00410A84h ; Set (object)
0088CC94: push eax
0088CC95: lea eax, var_0000010C
0088CC9B: push eax
0088CC9C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088CCA1: add esp, 00000010h
0088CCA4: push eax
0088CCA5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088CCAA: push eax
0088CCAB: lea eax, var_000000B0
0088CCB1: push eax
0088CCB2: call 00410A84h ; Set (object)
0088CCB7: push eax
0088CCB8: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0088CCBD: add esp, 0000001Ch
0088CCC0: lea eax, var_000000B0
0088CCC6: push eax
0088CCC7: lea eax, var_000000AC
0088CCCD: push eax
0088CCCE: push 00000002h
0088CCD0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088CCD5: add esp, 0000000Ch
0088CCD8: lea ecx, var_0000010C
0088CCDE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0088CCE3: jmp 0088C9DCh
0088CCE8: mov var_04, 0000000Bh
0088CCEF: lea eax, var_000003AC
0088CCF5: push eax
0088CCF6: lea eax, var_0000039C
0088CCFC: push eax
0088CCFD: lea eax, var_30
0088CD00: push eax
0088CD01: call 00410A36h ; Next
0088CD06: mov var_00000408, eax
0088CD0C: cmp var_00000408, 00000000h
0088CD13: jnz 0088CAE3h
0088CD19: jmp 0088E76Bh
0088CD1E: mov var_04, 0000000Dh
0088CD25: mov var_00000254, 00000001h
0088CD2F: mov var_0000025C, 00000002h
0088CD39: push 00000000h
0088CD3B: push 00000001h
0088CD3D: push 00440E48h
0088CD42: push 00000000h
0088CD44: push 00000018h
0088CD46: mov eax, [ebp+08h]
0088CD49: mov eax, [eax]
0088CD4B: push [ebp+08h]
0088CD4E: call [eax+00000314h]
0088CD54: push eax
0088CD55: lea eax, var_000000AC
0088CD5B: push eax
0088CD5C: call 00410A84h ; Set (object)
0088CD61: push eax
0088CD62: lea eax, var_0000010C
0088CD68: push eax
0088CD69: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088CD6E: add esp, 00000010h
0088CD71: push eax
0088CD72: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088CD77: push eax
0088CD78: lea eax, var_000000B0
0088CD7E: push eax
0088CD7F: call 00410A84h ; Set (object)
0088CD84: push eax
0088CD85: lea eax, var_0000011C
0088CD8B: push eax
0088CD8C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088CD91: add esp, 00000010h
0088CD94: push eax
0088CD95: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0088CD9A: mov var_00000264, eax
0088CDA0: mov var_0000026C, 00000003h
0088CDAA: mov var_00000274, 00000001h
0088CDB4: mov var_0000027C, 00000002h
0088CDBE: lea eax, var_0000025C
0088CDC4: push eax
0088CDC5: lea eax, var_0000026C
0088CDCB: push eax
0088CDCC: lea eax, var_0000027C
0088CDD2: push eax
0088CDD3: lea eax, var_000003CC
0088CDD9: push eax
0088CDDA: lea eax, var_000003BC
0088CDE0: push eax
0088CDE1: lea eax, var_30
0088CDE4: push eax
0088CDE5: call 00410A3Ch ; For
0088CDEA: mov var_0000040C, eax
0088CDF0: lea eax, var_000000B0
0088CDF6: push eax
0088CDF7: lea eax, var_000000AC
0088CDFD: push eax
0088CDFE: push 00000002h
0088CE00: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088CE05: add esp, 0000000Ch
0088CE08: lea eax, var_0000011C
0088CE0E: push eax
0088CE0F: lea eax, var_0000010C
0088CE15: push eax
0088CE16: push 00000002h
0088CE18: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088CE1D: add esp, 0000000Ch
0088CE20: jmp 0088D869h
0088CE25: mov var_04, 0000000Eh
0088CE2C: lea eax, var_30
0088CE2F: mov var_00000254, eax
0088CE35: mov var_0000025C, 0000400Ch
0088CE3F: push 00000000h
0088CE41: push 00000004h
0088CE43: push 00440E58h
0088CE48: push 00000010h
0088CE4A: pop eax
0088CE4B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088CE50: lea esi, var_0000025C
0088CE56: mov edi, esp
0088CE58: movsd 
0088CE59: movsd 
0088CE5A: movsd 
0088CE5B: movsd 
0088CE5C: push 00000001h
0088CE5E: push 00000000h
0088CE60: push 00440E48h
0088CE65: push 00000000h
0088CE67: push 00000018h
0088CE69: mov eax, [ebp+08h]
0088CE6C: mov eax, [eax]
0088CE6E: push [ebp+08h]
0088CE71: call [eax+00000314h]
0088CE77: push eax
0088CE78: lea eax, var_000000AC
0088CE7E: push eax
0088CE7F: call 00410A84h ; Set (object)
0088CE84: push eax
0088CE85: lea eax, var_0000010C
0088CE8B: push eax
0088CE8C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088CE91: add esp, 00000010h
0088CE94: push eax
0088CE95: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088CE9A: push eax
0088CE9B: lea eax, var_000000B0
0088CEA1: push eax
0088CEA2: call 00410A84h ; Set (object)
0088CEA7: push eax
0088CEA8: lea eax, var_0000011C
0088CEAE: push eax
0088CEAF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088CEB4: add esp, 00000020h
0088CEB7: push eax
0088CEB8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088CEBD: push eax
0088CEBE: lea eax, var_000000B4
0088CEC4: push eax
0088CEC5: call 00410A84h ; Set (object)
0088CECA: push eax
0088CECB: lea eax, var_0000012C
0088CED1: push eax
0088CED2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088CED7: add esp, 00000010h
0088CEDA: push eax
0088CEDB: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0088CEE0: sub ax, FFFFh
0088CEE4: neg ax
0088CEE7: sbb eax, eax
0088CEE9: inc eax
0088CEEA: neg eax
0088CEEC: mov var_00000380, ax
0088CEF3: lea eax, var_000000B4
0088CEF9: push eax
0088CEFA: lea eax, var_000000B0
0088CF00: push eax
0088CF01: lea eax, var_000000AC
0088CF07: push eax
0088CF08: push 00000003h
0088CF0A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088CF0F: add esp, 00000010h
0088CF12: lea eax, var_0000012C
0088CF18: push eax
0088CF19: lea eax, var_0000011C
0088CF1F: push eax
0088CF20: lea eax, var_0000010C
0088CF26: push eax
0088CF27: push 00000003h
0088CF29: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088CF2E: add esp, 00000010h
0088CF31: movsx eax, word ptr var_00000380
0088CF38: test eax, eax
0088CF3A: jz 0088D845h
0088CF40: mov var_04, 0000000Fh
0088CF47: lea eax, var_30
0088CF4A: mov var_00000254, eax
0088CF50: mov var_0000025C, 0000400Ch
0088CF5A: mov var_00000274, 00000001h
0088CF64: mov var_0000027C, 00000003h
0088CF6E: lea eax, var_30
0088CF71: mov var_00000264, eax
0088CF77: mov var_0000026C, 0000400Ch
0088CF81: mov var_000002A4, 00000002h
0088CF8B: mov var_000002AC, 00000003h
0088CF95: lea eax, var_30
0088CF98: mov var_00000294, eax
0088CF9E: mov var_0000029C, 0000400Ch
0088CFA8: mov var_000002D4, 00000003h
0088CFB2: mov var_000002DC, 00000003h
0088CFBC: lea eax, var_30
0088CFBF: mov var_000002C4, eax
0088CFC5: mov var_000002CC, 0000400Ch
0088CFCF: mov var_00000304, 00000004h
0088CFD9: mov var_0000030C, 00000003h
0088CFE3: lea eax, var_30
0088CFE6: mov var_000002F4, eax
0088CFEC: mov var_000002FC, 0000400Ch
0088CFF6: mov var_00000334, 00000005h
0088D000: mov var_0000033C, 00000003h
0088D00A: lea eax, var_30
0088D00D: mov var_00000324, eax
0088D013: mov var_0000032C, 0000400Ch
0088D01D: mov var_00000364, 00000006h
0088D027: mov var_0000036C, 00000003h
0088D031: lea eax, var_30
0088D034: mov var_00000354, eax
0088D03A: mov var_0000035C, 0000400Ch
0088D044: push var_44
0088D047: push 00000000h
0088D049: push 00000000h
0088D04B: push 00440E58h
0088D050: push 00000010h
0088D052: pop eax
0088D053: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088D058: lea esi, var_0000025C
0088D05E: mov edi, esp
0088D060: movsd 
0088D061: movsd 
0088D062: movsd 
0088D063: movsd 
0088D064: push 00000001h
0088D066: push 00000000h
0088D068: push 00440E48h
0088D06D: push 00000000h
0088D06F: push 00000018h
0088D071: mov eax, [ebp+08h]
0088D074: mov eax, [eax]
0088D076: push [ebp+08h]
0088D079: call [eax+00000314h]
0088D07F: push eax
0088D080: lea eax, var_000000AC
0088D086: push eax
0088D087: call 00410A84h ; Set (object)
0088D08C: push eax
0088D08D: lea eax, var_0000010C
0088D093: push eax
0088D094: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D099: add esp, 00000010h
0088D09C: push eax
0088D09D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088D0A2: push eax
0088D0A3: lea eax, var_000000B0
0088D0A9: push eax
0088D0AA: call 00410A84h ; Set (object)
0088D0AF: push eax
0088D0B0: lea eax, var_0000011C
0088D0B6: push eax
0088D0B7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D0BC: add esp, 00000020h
0088D0BF: push eax
0088D0C0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088D0C5: push eax
0088D0C6: lea eax, var_000000B4
0088D0CC: push eax
0088D0CD: call 00410A84h ; Set (object)
0088D0D2: push eax
0088D0D3: lea eax, var_0000012C
0088D0D9: push eax
0088D0DA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D0DF: add esp, 00000010h
0088D0E2: push eax
0088D0E3: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088D0E8: mov edx, eax
0088D0EA: lea ecx, var_5C
0088D0ED: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D0F2: push eax
0088D0F3: call 00410A18h ; &
0088D0F8: mov edx, eax
0088D0FA: lea ecx, var_60
0088D0FD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D102: push eax
0088D103: push 00445568h
0088D108: call 00410A18h ; &
0088D10D: mov edx, eax
0088D10F: lea ecx, var_64
0088D112: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D117: push eax
0088D118: push 00000010h
0088D11A: pop eax
0088D11B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088D120: lea esi, var_0000027C
0088D126: mov edi, esp
0088D128: movsd 
0088D129: movsd 
0088D12A: movsd 
0088D12B: movsd 
0088D12C: push 00000001h
0088D12E: push 00000010h
0088D130: push 00440E58h
0088D135: push 00000010h
0088D137: pop eax
0088D138: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088D13D: lea esi, var_0000026C
0088D143: mov edi, esp
0088D145: movsd 
0088D146: movsd 
0088D147: movsd 
0088D148: movsd 
0088D149: push 00000001h
0088D14B: push 00000000h
0088D14D: push 00440E48h
0088D152: push 00000000h
0088D154: push 00000018h
0088D156: mov eax, [ebp+08h]
0088D159: mov eax, [eax]
0088D15B: push [ebp+08h]
0088D15E: call [eax+00000314h]
0088D164: push eax
0088D165: lea eax, var_000000B8
0088D16B: push eax
0088D16C: call 00410A84h ; Set (object)
0088D171: push eax
0088D172: lea eax, var_0000013C
0088D178: push eax
0088D179: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D17E: add esp, 00000010h
0088D181: push eax
0088D182: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088D187: push eax
0088D188: lea eax, var_000000BC
0088D18E: push eax
0088D18F: call 00410A84h ; Set (object)
0088D194: push eax
0088D195: lea eax, var_0000014C
0088D19B: push eax
0088D19C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D1A1: add esp, 00000020h
0088D1A4: push eax
0088D1A5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088D1AA: push eax
0088D1AB: lea eax, var_000000C0
0088D1B1: push eax
0088D1B2: call 00410A84h ; Set (object)
0088D1B7: push eax
0088D1B8: lea eax, var_0000015C
0088D1BE: push eax
0088D1BF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D1C4: add esp, 00000020h
0088D1C7: push eax
0088D1C8: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088D1CD: mov edx, eax
0088D1CF: lea ecx, var_68
0088D1D2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D1D7: push eax
0088D1D8: call 00410A18h ; &
0088D1DD: mov edx, eax
0088D1DF: lea ecx, var_6C
0088D1E2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D1E7: push eax
0088D1E8: push 00445568h
0088D1ED: call 00410A18h ; &
0088D1F2: mov edx, eax
0088D1F4: lea ecx, var_70
0088D1F7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D1FC: push eax
0088D1FD: push 00000010h
0088D1FF: pop eax
0088D200: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088D205: lea esi, var_000002AC
0088D20B: mov edi, esp
0088D20D: movsd 
0088D20E: movsd 
0088D20F: movsd 
0088D210: movsd 
0088D211: push 00000001h
0088D213: push 00000010h
0088D215: push 00440E58h
0088D21A: push 00000010h
0088D21C: pop eax
0088D21D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088D222: lea esi, var_0000029C
0088D228: mov edi, esp
0088D22A: movsd 
0088D22B: movsd 
0088D22C: movsd 
0088D22D: movsd 
0088D22E: push 00000001h
0088D230: push 00000000h
0088D232: push 00440E48h
0088D237: push 00000000h
0088D239: push 00000018h
0088D23B: mov eax, [ebp+08h]
0088D23E: mov eax, [eax]
0088D240: push [ebp+08h]
0088D243: call [eax+00000314h]
0088D249: push eax
0088D24A: lea eax, var_000000C4
0088D250: push eax
0088D251: call 00410A84h ; Set (object)
0088D256: push eax
0088D257: lea eax, var_0000016C
0088D25D: push eax
0088D25E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D263: add esp, 00000010h
0088D266: push eax
0088D267: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088D26C: push eax
0088D26D: lea eax, var_000000C8
0088D273: push eax
0088D274: call 00410A84h ; Set (object)
0088D279: push eax
0088D27A: lea eax, var_0000017C
0088D280: push eax
0088D281: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D286: add esp, 00000020h
0088D289: push eax
0088D28A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088D28F: push eax
0088D290: lea eax, var_000000CC
0088D296: push eax
0088D297: call 00410A84h ; Set (object)
0088D29C: push eax
0088D29D: lea eax, var_0000018C
0088D2A3: push eax
0088D2A4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D2A9: add esp, 00000020h
0088D2AC: push eax
0088D2AD: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088D2B2: mov edx, eax
0088D2B4: lea ecx, var_74
0088D2B7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D2BC: push eax
0088D2BD: call 00410A18h ; &
0088D2C2: mov edx, eax
0088D2C4: lea ecx, var_78
0088D2C7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D2CC: push eax
0088D2CD: push 00445568h
0088D2D2: call 00410A18h ; &
0088D2D7: mov edx, eax
0088D2D9: lea ecx, var_7C
0088D2DC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D2E1: push eax
0088D2E2: push 00000010h
0088D2E4: pop eax
0088D2E5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088D2EA: lea esi, var_000002DC
0088D2F0: mov edi, esp
0088D2F2: movsd 
0088D2F3: movsd 
0088D2F4: movsd 
0088D2F5: movsd 
0088D2F6: push 00000001h
0088D2F8: push 00000010h
0088D2FA: push 00440E58h
0088D2FF: push 00000010h
0088D301: pop eax
0088D302: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088D307: lea esi, var_000002CC
0088D30D: mov edi, esp
0088D30F: movsd 
0088D310: movsd 
0088D311: movsd 
0088D312: movsd 
0088D313: push 00000001h
0088D315: push 00000000h
0088D317: push 00440E48h
0088D31C: push 00000000h
0088D31E: push 00000018h
0088D320: mov eax, [ebp+08h]
0088D323: mov eax, [eax]
0088D325: push [ebp+08h]
0088D328: call [eax+00000314h]
0088D32E: push eax
0088D32F: lea eax, var_000000D0
0088D335: push eax
0088D336: call 00410A84h ; Set (object)
0088D33B: push eax
0088D33C: lea eax, var_0000019C
0088D342: push eax
0088D343: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D348: add esp, 00000010h
0088D34B: push eax
0088D34C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088D351: push eax
0088D352: lea eax, var_000000D4
0088D358: push eax
0088D359: call 00410A84h ; Set (object)
0088D35E: push eax
0088D35F: lea eax, var_000001AC
0088D365: push eax
0088D366: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D36B: add esp, 00000020h
0088D36E: push eax
0088D36F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088D374: push eax
0088D375: lea eax, var_000000D8
0088D37B: push eax
0088D37C: call 00410A84h ; Set (object)
0088D381: push eax
0088D382: lea eax, var_000001BC
0088D388: push eax
0088D389: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D38E: add esp, 00000020h
0088D391: push eax
0088D392: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088D397: mov edx, eax
0088D399: lea ecx, var_80
0088D39C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D3A1: push eax
0088D3A2: call 00410A18h ; &
0088D3A7: mov edx, eax
0088D3A9: lea ecx, var_00000084
0088D3AF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D3B4: push eax
0088D3B5: push 00445568h
0088D3BA: call 00410A18h ; &
0088D3BF: mov edx, eax
0088D3C1: lea ecx, var_00000088
0088D3C7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D3CC: push eax
0088D3CD: push 00000010h
0088D3CF: pop eax
0088D3D0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088D3D5: lea esi, var_0000030C
0088D3DB: mov edi, esp
0088D3DD: movsd 
0088D3DE: movsd 
0088D3DF: movsd 
0088D3E0: movsd 
0088D3E1: push 00000001h
0088D3E3: push 00000010h
0088D3E5: push 00440E58h
0088D3EA: push 00000010h
0088D3EC: pop eax
0088D3ED: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088D3F2: lea esi, var_000002FC
0088D3F8: mov edi, esp
0088D3FA: movsd 
0088D3FB: movsd 
0088D3FC: movsd 
0088D3FD: movsd 
0088D3FE: push 00000001h
0088D400: push 00000000h
0088D402: push 00440E48h
0088D407: push 00000000h
0088D409: push 00000018h
0088D40B: mov eax, [ebp+08h]
0088D40E: mov eax, [eax]
0088D410: push [ebp+08h]
0088D413: call [eax+00000314h]
0088D419: push eax
0088D41A: lea eax, var_000000DC
0088D420: push eax
0088D421: call 00410A84h ; Set (object)
0088D426: push eax
0088D427: lea eax, var_000001CC
0088D42D: push eax
0088D42E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D433: add esp, 00000010h
0088D436: push eax
0088D437: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088D43C: push eax
0088D43D: lea eax, var_000000E0
0088D443: push eax
0088D444: call 00410A84h ; Set (object)
0088D449: push eax
0088D44A: lea eax, var_000001DC
0088D450: push eax
0088D451: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D456: add esp, 00000020h
0088D459: push eax
0088D45A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088D45F: push eax
0088D460: lea eax, var_000000E4
0088D466: push eax
0088D467: call 00410A84h ; Set (object)
0088D46C: push eax
0088D46D: lea eax, var_000001EC
0088D473: push eax
0088D474: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D479: add esp, 00000020h
0088D47C: push eax
0088D47D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088D482: mov edx, eax
0088D484: lea ecx, var_0000008C
0088D48A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D48F: push eax
0088D490: call 00410A18h ; &
0088D495: mov edx, eax
0088D497: lea ecx, var_00000090
0088D49D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D4A2: push eax
0088D4A3: push 00445568h
0088D4A8: call 00410A18h ; &
0088D4AD: mov edx, eax
0088D4AF: lea ecx, var_00000094
0088D4B5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D4BA: push eax
0088D4BB: push 00000010h
0088D4BD: pop eax
0088D4BE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088D4C3: lea esi, var_0000033C
0088D4C9: mov edi, esp
0088D4CB: movsd 
0088D4CC: movsd 
0088D4CD: movsd 
0088D4CE: movsd 
0088D4CF: push 00000001h
0088D4D1: push 00000010h
0088D4D3: push 00440E58h
0088D4D8: push 00000010h
0088D4DA: pop eax
0088D4DB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088D4E0: lea esi, var_0000032C
0088D4E6: mov edi, esp
0088D4E8: movsd 
0088D4E9: movsd 
0088D4EA: movsd 
0088D4EB: movsd 
0088D4EC: push 00000001h
0088D4EE: push 00000000h
0088D4F0: push 00440E48h
0088D4F5: push 00000000h
0088D4F7: push 00000018h
0088D4F9: mov eax, [ebp+08h]
0088D4FC: mov eax, [eax]
0088D4FE: push [ebp+08h]
0088D501: call [eax+00000314h]
0088D507: push eax
0088D508: lea eax, var_000000E8
0088D50E: push eax
0088D50F: call 00410A84h ; Set (object)
0088D514: push eax
0088D515: lea eax, var_000001FC
0088D51B: push eax
0088D51C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D521: add esp, 00000010h
0088D524: push eax
0088D525: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088D52A: push eax
0088D52B: lea eax, var_000000EC
0088D531: push eax
0088D532: call 00410A84h ; Set (object)
0088D537: push eax
0088D538: lea eax, var_0000020C
0088D53E: push eax
0088D53F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D544: add esp, 00000020h
0088D547: push eax
0088D548: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088D54D: push eax
0088D54E: lea eax, var_000000F0
0088D554: push eax
0088D555: call 00410A84h ; Set (object)
0088D55A: push eax
0088D55B: lea eax, var_0000021C
0088D561: push eax
0088D562: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D567: add esp, 00000020h
0088D56A: push eax
0088D56B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088D570: mov edx, eax
0088D572: lea ecx, var_00000098
0088D578: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D57D: push eax
0088D57E: call 00410A18h ; &
0088D583: mov edx, eax
0088D585: lea ecx, var_0000009C
0088D58B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D590: push eax
0088D591: push 00445568h
0088D596: call 00410A18h ; &
0088D59B: mov edx, eax
0088D59D: lea ecx, var_000000A0
0088D5A3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D5A8: push eax
0088D5A9: push 00000010h
0088D5AB: pop eax
0088D5AC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088D5B1: lea esi, var_0000036C
0088D5B7: mov edi, esp
0088D5B9: movsd 
0088D5BA: movsd 
0088D5BB: movsd 
0088D5BC: movsd 
0088D5BD: push 00000001h
0088D5BF: push 00000010h
0088D5C1: push 00440E58h
0088D5C6: push 00000010h
0088D5C8: pop eax
0088D5C9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088D5CE: lea esi, var_0000035C
0088D5D4: mov edi, esp
0088D5D6: movsd 
0088D5D7: movsd 
0088D5D8: movsd 
0088D5D9: movsd 
0088D5DA: push 00000001h
0088D5DC: push 00000000h
0088D5DE: push 00440E48h
0088D5E3: push 00000000h
0088D5E5: push 00000018h
0088D5E7: mov eax, [ebp+08h]
0088D5EA: mov eax, [eax]
0088D5EC: push [ebp+08h]
0088D5EF: call [eax+00000314h]
0088D5F5: push eax
0088D5F6: lea eax, var_000000F4
0088D5FC: push eax
0088D5FD: call 00410A84h ; Set (object)
0088D602: push eax
0088D603: lea eax, var_0000022C
0088D609: push eax
0088D60A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D60F: add esp, 00000010h
0088D612: push eax
0088D613: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088D618: push eax
0088D619: lea eax, var_000000F8
0088D61F: push eax
0088D620: call 00410A84h ; Set (object)
0088D625: push eax
0088D626: lea eax, var_0000023C
0088D62C: push eax
0088D62D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D632: add esp, 00000020h
0088D635: push eax
0088D636: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088D63B: push eax
0088D63C: lea eax, var_000000FC
0088D642: push eax
0088D643: call 00410A84h ; Set (object)
0088D648: push eax
0088D649: lea eax, var_0000024C
0088D64F: push eax
0088D650: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088D655: add esp, 00000020h
0088D658: push eax
0088D659: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088D65E: mov edx, eax
0088D660: lea ecx, var_000000A4
0088D666: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D66B: push eax
0088D66C: call 00410A18h ; &
0088D671: mov edx, eax
0088D673: lea ecx, var_000000A8
0088D679: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D67E: push eax
0088D67F: push 00441264h ; vbCrLf
0088D684: call 00410A18h ; &
0088D689: mov edx, eax
0088D68B: lea ecx, var_44
0088D68E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088D693: lea eax, var_000000A8
0088D699: push eax
0088D69A: lea eax, var_000000A4
0088D6A0: push eax
0088D6A1: lea eax, var_000000A0
0088D6A7: push eax
0088D6A8: lea eax, var_0000009C
0088D6AE: push eax
0088D6AF: lea eax, var_00000098
0088D6B5: push eax
0088D6B6: lea eax, var_00000094
0088D6BC: push eax
0088D6BD: lea eax, var_00000090
0088D6C3: push eax
0088D6C4: lea eax, var_0000008C
0088D6CA: push eax
0088D6CB: lea eax, var_00000088
0088D6D1: push eax
0088D6D2: lea eax, var_00000084
0088D6D8: push eax
0088D6D9: lea eax, var_80
0088D6DC: push eax
0088D6DD: lea eax, var_7C
0088D6E0: push eax
0088D6E1: lea eax, var_78
0088D6E4: push eax
0088D6E5: lea eax, var_74
0088D6E8: push eax
0088D6E9: lea eax, var_70
0088D6EC: push eax
0088D6ED: lea eax, var_6C
0088D6F0: push eax
0088D6F1: lea eax, var_68
0088D6F4: push eax
0088D6F5: lea eax, var_64
0088D6F8: push eax
0088D6F9: lea eax, var_60
0088D6FC: push eax
0088D6FD: lea eax, var_5C
0088D700: push eax
0088D701: push 00000014h
0088D703: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0088D708: add esp, 00000054h
0088D70B: lea eax, var_000000FC
0088D711: push eax
0088D712: lea eax, var_000000F8
0088D718: push eax
0088D719: lea eax, var_000000F4
0088D71F: push eax
0088D720: lea eax, var_000000F0
0088D726: push eax
0088D727: lea eax, var_000000EC
0088D72D: push eax
0088D72E: lea eax, var_000000E8
0088D734: push eax
0088D735: lea eax, var_000000E4
0088D73B: push eax
0088D73C: lea eax, var_000000E0
0088D742: push eax
0088D743: lea eax, var_000000DC
0088D749: push eax
0088D74A: lea eax, var_000000D8
0088D750: push eax
0088D751: lea eax, var_000000D4
0088D757: push eax
0088D758: lea eax, var_000000D0
0088D75E: push eax
0088D75F: lea eax, var_000000CC
0088D765: push eax
0088D766: lea eax, var_000000C8
0088D76C: push eax
0088D76D: lea eax, var_000000C4
0088D773: push eax
0088D774: lea eax, var_000000C0
0088D77A: push eax
0088D77B: lea eax, var_000000BC
0088D781: push eax
0088D782: lea eax, var_000000B8
0088D788: push eax
0088D789: lea eax, var_000000B4
0088D78F: push eax
0088D790: lea eax, var_000000B0
0088D796: push eax
0088D797: lea eax, var_000000AC
0088D79D: push eax
0088D79E: push 00000015h
0088D7A0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088D7A5: add esp, 00000058h
0088D7A8: lea eax, var_0000024C
0088D7AE: push eax
0088D7AF: lea eax, var_0000023C
0088D7B5: push eax
0088D7B6: lea eax, var_0000022C
0088D7BC: push eax
0088D7BD: lea eax, var_0000021C
0088D7C3: push eax
0088D7C4: lea eax, var_0000020C
0088D7CA: push eax
0088D7CB: lea eax, var_000001FC
0088D7D1: push eax
0088D7D2: lea eax, var_000001EC
0088D7D8: push eax
0088D7D9: lea eax, var_000001DC
0088D7DF: push eax
0088D7E0: lea eax, var_000001CC
0088D7E6: push eax
0088D7E7: lea eax, var_000001BC
0088D7ED: push eax
0088D7EE: lea eax, var_000001AC
0088D7F4: push eax
0088D7F5: lea eax, var_0000019C
0088D7FB: push eax
0088D7FC: lea eax, var_0000018C
0088D802: push eax
0088D803: lea eax, var_0000017C
0088D809: push eax
0088D80A: lea eax, var_0000016C
0088D810: push eax
0088D811: lea eax, var_0000015C
0088D817: push eax
0088D818: lea eax, var_0000014C
0088D81E: push eax
0088D81F: lea eax, var_0000013C
0088D825: push eax
0088D826: lea eax, var_0000012C
0088D82C: push eax
0088D82D: lea eax, var_0000011C
0088D833: push eax
0088D834: lea eax, var_0000010C
0088D83A: push eax
0088D83B: push 00000015h
0088D83D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088D842: add esp, 00000058h
0088D845: mov var_04, 00000011h
0088D84C: lea eax, var_000003CC
0088D852: push eax
0088D853: lea eax, var_000003BC
0088D859: push eax
0088D85A: lea eax, var_30
0088D85D: push eax
0088D85E: call 00410A36h ; Next
0088D863: mov var_0000040C, eax
0088D869: cmp var_0000040C, 00000000h
0088D870: jnz 0088CE25h
0088D876: mov var_04, 00000012h
0088D87D: cmp [008F529Ch], 00000000h
0088D884: jnz 88D8A1h
0088D886: push 008F529Ch
0088D88B: push 00440F2Ch
0088D890: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088D895: mov var_00000418, 008F529Ch
0088D89F: jmp 88D8ABh
0088D8A1: mov var_00000418, 008F529Ch
0088D8AB: mov eax, var_00000418
0088D8B1: mov eax, [eax]
0088D8B3: mov var_00000380, eax
0088D8B9: lea eax, var_000000AC
0088D8BF: push eax
0088D8C0: mov eax, var_00000380
0088D8C6: mov eax, [eax]
0088D8C8: push var_00000380
0088D8CE: call [eax+1Ch]
0088D8D1: fclex 
0088D8D3: mov var_00000384, eax
0088D8D9: cmp var_00000384, 00000000h
0088D8E0: jnl 88D902h
0088D8E2: push 0000001Ch
0088D8E4: push 00440F1Ch
0088D8E9: push var_00000380
0088D8EF: push var_00000384
0088D8F5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088D8FA: mov var_0000041C, eax
0088D900: jmp 88D909h
0088D902: and var_0000041C, 00000000h
0088D909: mov eax, var_000000AC
0088D90F: mov var_00000388, eax
0088D915: mov eax, var_00000388
0088D91B: mov eax, [eax]
0088D91D: push var_00000388
0088D923: call [eax+50h]
0088D926: fclex 
0088D928: mov var_0000038C, eax
0088D92E: cmp var_0000038C, 00000000h
0088D935: jnl 88D957h
0088D937: push 00000050h
0088D939: push 00445554h
0088D93E: push var_00000388
0088D944: push var_0000038C
0088D94A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088D94F: mov var_00000420, eax
0088D955: jmp 88D95Eh
0088D957: and var_00000420, 00000000h
0088D95E: lea ecx, var_000000AC
0088D964: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0088D969: mov var_04, 00000013h
0088D970: cmp [008F529Ch], 00000000h
0088D977: jnz 88D994h
0088D979: push 008F529Ch
0088D97E: push 00440F2Ch
0088D983: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088D988: mov var_00000424, 008F529Ch
0088D992: jmp 88D99Eh
0088D994: mov var_00000424, 008F529Ch
0088D99E: mov eax, var_00000424
0088D9A4: mov eax, [eax]
0088D9A6: mov var_00000380, eax
0088D9AC: lea eax, var_000000AC
0088D9B2: push eax
0088D9B3: mov eax, var_00000380
0088D9B9: mov eax, [eax]
0088D9BB: push var_00000380
0088D9C1: call [eax+1Ch]
0088D9C4: fclex 
0088D9C6: mov var_00000384, eax
0088D9CC: cmp var_00000384, 00000000h
0088D9D3: jnl 88D9F5h
0088D9D5: push 0000001Ch
0088D9D7: push 00440F1Ch
0088D9DC: push var_00000380
0088D9E2: push var_00000384
0088D9E8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088D9ED: mov var_00000428, eax
0088D9F3: jmp 88D9FCh
0088D9F5: and var_00000428, 00000000h
0088D9FC: mov eax, var_000000AC
0088DA02: mov var_00000388, eax
0088DA08: mov var_00000254, 80020004h
0088DA12: mov var_0000025C, 0000000Ah
0088DA1C: push 00000010h
0088DA1E: pop eax
0088DA1F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088DA24: lea esi, var_0000025C
0088DA2A: mov edi, esp
0088DA2C: movsd 
0088DA2D: movsd 
0088DA2E: movsd 
0088DA2F: movsd 
0088DA30: push var_44
0088DA33: mov eax, var_00000388
0088DA39: mov eax, [eax]
0088DA3B: push var_00000388
0088DA41: call [eax+60h]
0088DA44: fclex 
0088DA46: mov var_0000038C, eax
0088DA4C: cmp var_0000038C, 00000000h
0088DA53: jnl 88DA75h
0088DA55: push 00000060h
0088DA57: push 00445554h
0088DA5C: push var_00000388
0088DA62: push var_0000038C
0088DA68: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088DA6D: mov var_0000042C, eax
0088DA73: jmp 88DA7Ch
0088DA75: and var_0000042C, 00000000h
0088DA7C: lea ecx, var_000000AC
0088DA82: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0088DA87: jmp 0088E76Bh
0088DA8C: mov var_04, 00000015h
0088DA93: cmp [008F529Ch], 00000000h
0088DA9A: jnz 88DAB7h
0088DA9C: push 008F529Ch
0088DAA1: push 00440F2Ch
0088DAA6: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088DAAB: mov var_00000430, 008F529Ch
0088DAB5: jmp 88DAC1h
0088DAB7: mov var_00000430, 008F529Ch
0088DAC1: mov eax, var_00000430
0088DAC7: mov eax, [eax]
0088DAC9: mov var_00000380, eax
0088DACF: lea eax, var_000000AC
0088DAD5: push eax
0088DAD6: mov eax, var_00000380
0088DADC: mov eax, [eax]
0088DADE: push var_00000380
0088DAE4: call [eax+14h]
0088DAE7: fclex 
0088DAE9: mov var_00000384, eax
0088DAEF: cmp var_00000384, 00000000h
0088DAF6: jnl 88DB18h
0088DAF8: push 00000014h
0088DAFA: push 00440F1Ch
0088DAFF: push var_00000380
0088DB05: push var_00000384
0088DB0B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088DB10: mov var_00000434, eax
0088DB16: jmp 88DB1Fh
0088DB18: and var_00000434, 00000000h
0088DB1F: mov eax, var_000000AC
0088DB25: mov var_00000388, eax
0088DB2B: lea eax, var_5C
0088DB2E: push eax
0088DB2F: mov eax, var_00000388
0088DB35: mov eax, [eax]
0088DB37: push var_00000388
0088DB3D: call [eax+50h]
0088DB40: fclex 
0088DB42: mov var_0000038C, eax
0088DB48: cmp var_0000038C, 00000000h
0088DB4F: jnl 88DB71h
0088DB51: push 00000050h
0088DB53: push 00440F3Ch
0088DB58: push var_00000388
0088DB5E: push var_0000038C
0088DB64: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088DB69: mov var_00000438, eax
0088DB6F: jmp 88DB78h
0088DB71: and var_00000438, 00000000h
0088DB78: push 00000000h
0088DB7A: push 00000000h
0088DB7C: push var_5C
0088DB7F: push 0044558Ch ; txt
0088DB84: push 00452FD0h ; Text Documents
0088DB89: call 007CCC4Dh
0088DB8E: mov var_00000104, eax
0088DB94: mov var_0000010C, 00000008h
0088DB9E: lea edx, var_0000010C
0088DBA4: lea ecx, var_58
0088DBA7: call 00410922h ; msvbvm60.dll.__vbaVarMove
0088DBAC: lea ecx, var_5C
0088DBAF: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0088DBB4: lea ecx, var_000000AC
0088DBBA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0088DBBF: mov var_04, 00000016h
0088DBC6: and var_00000254, 00000000h
0088DBCD: mov var_0000025C, 00008008h
0088DBD7: lea eax, var_58
0088DBDA: push eax
0088DBDB: lea eax, var_0000025C
0088DBE1: push eax
0088DBE2: call 00410868h ; msvbvm60.dll.__vbaVarTstNe
0088DBE7: movsx eax, ax
0088DBEA: test eax, eax
0088DBEC: jz 0088E6EBh
0088DBF2: mov var_04, 00000017h
0088DBF9: mov var_00000254, 00000001h
0088DC03: mov var_0000025C, 00000002h
0088DC0D: push 00000000h
0088DC0F: push 00000001h
0088DC11: push 00440E48h
0088DC16: push 00000000h
0088DC18: push 00000018h
0088DC1A: mov eax, [ebp+08h]
0088DC1D: mov eax, [eax]
0088DC1F: push [ebp+08h]
0088DC22: call [eax+00000314h]
0088DC28: push eax
0088DC29: lea eax, var_000000AC
0088DC2F: push eax
0088DC30: call 00410A84h ; Set (object)
0088DC35: push eax
0088DC36: lea eax, var_0000010C
0088DC3C: push eax
0088DC3D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088DC42: add esp, 00000010h
0088DC45: push eax
0088DC46: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088DC4B: push eax
0088DC4C: lea eax, var_000000B0
0088DC52: push eax
0088DC53: call 00410A84h ; Set (object)
0088DC58: push eax
0088DC59: lea eax, var_0000011C
0088DC5F: push eax
0088DC60: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088DC65: add esp, 00000010h
0088DC68: push eax
0088DC69: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0088DC6E: mov var_00000264, eax
0088DC74: mov var_0000026C, 00000003h
0088DC7E: mov var_00000274, 00000001h
0088DC88: mov var_0000027C, 00000002h
0088DC92: lea eax, var_0000025C
0088DC98: push eax
0088DC99: lea eax, var_0000026C
0088DC9F: push eax
0088DCA0: lea eax, var_0000027C
0088DCA6: push eax
0088DCA7: lea eax, var_000003EC
0088DCAD: push eax
0088DCAE: lea eax, var_000003DC
0088DCB4: push eax
0088DCB5: lea eax, var_30
0088DCB8: push eax
0088DCB9: call 00410A3Ch ; For
0088DCBE: mov var_00000410, eax
0088DCC4: lea eax, var_000000B0
0088DCCA: push eax
0088DCCB: lea eax, var_000000AC
0088DCD1: push eax
0088DCD2: push 00000002h
0088DCD4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088DCD9: add esp, 0000000Ch
0088DCDC: lea eax, var_0000011C
0088DCE2: push eax
0088DCE3: lea eax, var_0000010C
0088DCE9: push eax
0088DCEA: push 00000002h
0088DCEC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088DCF1: add esp, 0000000Ch
0088DCF4: jmp 0088E622h
0088DCF9: mov var_04, 00000018h
0088DD00: lea eax, var_30
0088DD03: mov var_00000254, eax
0088DD09: mov var_0000025C, 0000400Ch
0088DD13: mov var_00000274, 00000001h
0088DD1D: mov var_0000027C, 00000003h
0088DD27: lea eax, var_30
0088DD2A: mov var_00000264, eax
0088DD30: mov var_0000026C, 0000400Ch
0088DD3A: mov var_000002A4, 00000002h
0088DD44: mov var_000002AC, 00000003h
0088DD4E: lea eax, var_30
0088DD51: mov var_00000294, eax
0088DD57: mov var_0000029C, 0000400Ch
0088DD61: mov var_000002D4, 00000003h
0088DD6B: mov var_000002DC, 00000003h
0088DD75: lea eax, var_30
0088DD78: mov var_000002C4, eax
0088DD7E: mov var_000002CC, 0000400Ch
0088DD88: mov var_00000304, 00000004h
0088DD92: mov var_0000030C, 00000003h
0088DD9C: lea eax, var_30
0088DD9F: mov var_000002F4, eax
0088DDA5: mov var_000002FC, 0000400Ch
0088DDAF: mov var_00000334, 00000005h
0088DDB9: mov var_0000033C, 00000003h
0088DDC3: lea eax, var_30
0088DDC6: mov var_00000324, eax
0088DDCC: mov var_0000032C, 0000400Ch
0088DDD6: mov var_00000364, 00000006h
0088DDE0: mov var_0000036C, 00000003h
0088DDEA: lea eax, var_30
0088DDED: mov var_00000354, eax
0088DDF3: mov var_0000035C, 0000400Ch
0088DDFD: push var_44
0088DE00: push 00000000h
0088DE02: push 00000000h
0088DE04: push 00440E58h
0088DE09: push 00000010h
0088DE0B: pop eax
0088DE0C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088DE11: lea esi, var_0000025C
0088DE17: mov edi, esp
0088DE19: movsd 
0088DE1A: movsd 
0088DE1B: movsd 
0088DE1C: movsd 
0088DE1D: push 00000001h
0088DE1F: push 00000000h
0088DE21: push 00440E48h
0088DE26: push 00000000h
0088DE28: push 00000018h
0088DE2A: mov eax, [ebp+08h]
0088DE2D: mov eax, [eax]
0088DE2F: push [ebp+08h]
0088DE32: call [eax+00000314h]
0088DE38: push eax
0088DE39: lea eax, var_000000AC
0088DE3F: push eax
0088DE40: call 00410A84h ; Set (object)
0088DE45: push eax
0088DE46: lea eax, var_0000010C
0088DE4C: push eax
0088DE4D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088DE52: add esp, 00000010h
0088DE55: push eax
0088DE56: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088DE5B: push eax
0088DE5C: lea eax, var_000000B0
0088DE62: push eax
0088DE63: call 00410A84h ; Set (object)
0088DE68: push eax
0088DE69: lea eax, var_0000011C
0088DE6F: push eax
0088DE70: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088DE75: add esp, 00000020h
0088DE78: push eax
0088DE79: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088DE7E: push eax
0088DE7F: lea eax, var_000000B4
0088DE85: push eax
0088DE86: call 00410A84h ; Set (object)
0088DE8B: push eax
0088DE8C: lea eax, var_0000012C
0088DE92: push eax
0088DE93: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088DE98: add esp, 00000010h
0088DE9B: push eax
0088DE9C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088DEA1: mov edx, eax
0088DEA3: lea ecx, var_5C
0088DEA6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088DEAB: push eax
0088DEAC: call 00410A18h ; &
0088DEB1: mov edx, eax
0088DEB3: lea ecx, var_60
0088DEB6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088DEBB: push eax
0088DEBC: push 00445568h
0088DEC1: call 00410A18h ; &
0088DEC6: mov edx, eax
0088DEC8: lea ecx, var_64
0088DECB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088DED0: push eax
0088DED1: push 00000010h
0088DED3: pop eax
0088DED4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088DED9: lea esi, var_0000027C
0088DEDF: mov edi, esp
0088DEE1: movsd 
0088DEE2: movsd 
0088DEE3: movsd 
0088DEE4: movsd 
0088DEE5: push 00000001h
0088DEE7: push 00000010h
0088DEE9: push 00440E58h
0088DEEE: push 00000010h
0088DEF0: pop eax
0088DEF1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088DEF6: lea esi, var_0000026C
0088DEFC: mov edi, esp
0088DEFE: movsd 
0088DEFF: movsd 
0088DF00: movsd 
0088DF01: movsd 
0088DF02: push 00000001h
0088DF04: push 00000000h
0088DF06: push 00440E48h
0088DF0B: push 00000000h
0088DF0D: push 00000018h
0088DF0F: mov eax, [ebp+08h]
0088DF12: mov eax, [eax]
0088DF14: push [ebp+08h]
0088DF17: call [eax+00000314h]
0088DF1D: push eax
0088DF1E: lea eax, var_000000B8
0088DF24: push eax
0088DF25: call 00410A84h ; Set (object)
0088DF2A: push eax
0088DF2B: lea eax, var_0000013C
0088DF31: push eax
0088DF32: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088DF37: add esp, 00000010h
0088DF3A: push eax
0088DF3B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088DF40: push eax
0088DF41: lea eax, var_000000BC
0088DF47: push eax
0088DF48: call 00410A84h ; Set (object)
0088DF4D: push eax
0088DF4E: lea eax, var_0000014C
0088DF54: push eax
0088DF55: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088DF5A: add esp, 00000020h
0088DF5D: push eax
0088DF5E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088DF63: push eax
0088DF64: lea eax, var_000000C0
0088DF6A: push eax
0088DF6B: call 00410A84h ; Set (object)
0088DF70: push eax
0088DF71: lea eax, var_0000015C
0088DF77: push eax
0088DF78: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088DF7D: add esp, 00000020h
0088DF80: push eax
0088DF81: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088DF86: mov edx, eax
0088DF88: lea ecx, var_68
0088DF8B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088DF90: push eax
0088DF91: call 00410A18h ; &
0088DF96: mov edx, eax
0088DF98: lea ecx, var_6C
0088DF9B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088DFA0: push eax
0088DFA1: push 00445568h
0088DFA6: call 00410A18h ; &
0088DFAB: mov edx, eax
0088DFAD: lea ecx, var_70
0088DFB0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088DFB5: push eax
0088DFB6: push 00000010h
0088DFB8: pop eax
0088DFB9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088DFBE: lea esi, var_000002AC
0088DFC4: mov edi, esp
0088DFC6: movsd 
0088DFC7: movsd 
0088DFC8: movsd 
0088DFC9: movsd 
0088DFCA: push 00000001h
0088DFCC: push 00000010h
0088DFCE: push 00440E58h
0088DFD3: push 00000010h
0088DFD5: pop eax
0088DFD6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088DFDB: lea esi, var_0000029C
0088DFE1: mov edi, esp
0088DFE3: movsd 
0088DFE4: movsd 
0088DFE5: movsd 
0088DFE6: movsd 
0088DFE7: push 00000001h
0088DFE9: push 00000000h
0088DFEB: push 00440E48h
0088DFF0: push 00000000h
0088DFF2: push 00000018h
0088DFF4: mov eax, [ebp+08h]
0088DFF7: mov eax, [eax]
0088DFF9: push [ebp+08h]
0088DFFC: call [eax+00000314h]
0088E002: push eax
0088E003: lea eax, var_000000C4
0088E009: push eax
0088E00A: call 00410A84h ; Set (object)
0088E00F: push eax
0088E010: lea eax, var_0000016C
0088E016: push eax
0088E017: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088E01C: add esp, 00000010h
0088E01F: push eax
0088E020: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088E025: push eax
0088E026: lea eax, var_000000C8
0088E02C: push eax
0088E02D: call 00410A84h ; Set (object)
0088E032: push eax
0088E033: lea eax, var_0000017C
0088E039: push eax
0088E03A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088E03F: add esp, 00000020h
0088E042: push eax
0088E043: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088E048: push eax
0088E049: lea eax, var_000000CC
0088E04F: push eax
0088E050: call 00410A84h ; Set (object)
0088E055: push eax
0088E056: lea eax, var_0000018C
0088E05C: push eax
0088E05D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088E062: add esp, 00000020h
0088E065: push eax
0088E066: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088E06B: mov edx, eax
0088E06D: lea ecx, var_74
0088E070: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088E075: push eax
0088E076: call 00410A18h ; &
0088E07B: mov edx, eax
0088E07D: lea ecx, var_78
0088E080: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088E085: push eax
0088E086: push 00445568h
0088E08B: call 00410A18h ; &
0088E090: mov edx, eax
0088E092: lea ecx, var_7C
0088E095: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088E09A: push eax
0088E09B: push 00000010h
0088E09D: pop eax
0088E09E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088E0A3: lea esi, var_000002DC
0088E0A9: mov edi, esp
0088E0AB: movsd 
0088E0AC: movsd 
0088E0AD: movsd 
0088E0AE: movsd 
0088E0AF: push 00000001h
0088E0B1: push 00000010h
0088E0B3: push 00440E58h
0088E0B8: push 00000010h
0088E0BA: pop eax
0088E0BB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088E0C0: lea esi, var_000002CC
0088E0C6: mov edi, esp
0088E0C8: movsd 
0088E0C9: movsd 
0088E0CA: movsd 
0088E0CB: movsd 
0088E0CC: push 00000001h
0088E0CE: push 00000000h
0088E0D0: push 00440E48h
0088E0D5: push 00000000h
0088E0D7: push 00000018h
0088E0D9: mov eax, [ebp+08h]
0088E0DC: mov eax, [eax]
0088E0DE: push [ebp+08h]
0088E0E1: call [eax+00000314h]
0088E0E7: push eax
0088E0E8: lea eax, var_000000D0
0088E0EE: push eax
0088E0EF: call 00410A84h ; Set (object)
0088E0F4: push eax
0088E0F5: lea eax, var_0000019C
0088E0FB: push eax
0088E0FC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088E101: add esp, 00000010h
0088E104: push eax
0088E105: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088E10A: push eax
0088E10B: lea eax, var_000000D4
0088E111: push eax
0088E112: call 00410A84h ; Set (object)
0088E117: push eax
0088E118: lea eax, var_000001AC
0088E11E: push eax
0088E11F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088E124: add esp, 00000020h
0088E127: push eax
0088E128: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088E12D: push eax
0088E12E: lea eax, var_000000D8
0088E134: push eax
0088E135: call 00410A84h ; Set (object)
0088E13A: push eax
0088E13B: lea eax, var_000001BC
0088E141: push eax
0088E142: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088E147: add esp, 00000020h
0088E14A: push eax
0088E14B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088E150: mov edx, eax
0088E152: lea ecx, var_80
0088E155: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088E15A: push eax
0088E15B: call 00410A18h ; &
0088E160: mov edx, eax
0088E162: lea ecx, var_00000084
0088E168: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088E16D: push eax
0088E16E: push 00445568h
0088E173: call 00410A18h ; &
0088E178: mov edx, eax
0088E17A: lea ecx, var_00000088
0088E180: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088E185: push eax
0088E186: push 00000010h
0088E188: pop eax
0088E189: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088E18E: lea esi, var_0000030C
0088E194: mov edi, esp
0088E196: movsd 
0088E197: movsd 
0088E198: movsd 
0088E199: movsd 
0088E19A: push 00000001h
0088E19C: push 00000010h
0088E19E: push 00440E58h
0088E1A3: push 00000010h
0088E1A5: pop eax
0088E1A6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088E1AB: lea esi, var_000002FC
0088E1B1: mov edi, esp
0088E1B3: movsd 
0088E1B4: movsd 
0088E1B5: movsd 
0088E1B6: movsd 
0088E1B7: push 00000001h
0088E1B9: push 00000000h
0088E1BB: push 00440E48h
0088E1C0: push 00000000h
0088E1C2: push 00000018h
0088E1C4: mov eax, [ebp+08h]
0088E1C7: mov eax, [eax]
0088E1C9: push [ebp+08h]
0088E1CC: call [eax+00000314h]
0088E1D2: push eax
0088E1D3: lea eax, var_000000DC
0088E1D9: push eax
0088E1DA: call 00410A84h ; Set (object)
0088E1DF: push eax
0088E1E0: lea eax, var_000001CC
0088E1E6: push eax
0088E1E7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088E1EC: add esp, 00000010h
0088E1EF: push eax
0088E1F0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088E1F5: push eax
0088E1F6: lea eax, var_000000E0
0088E1FC: push eax
0088E1FD: call 00410A84h ; Set (object)
0088E202: push eax
0088E203: lea eax, var_000001DC
0088E209: push eax
0088E20A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088E20F: add esp, 00000020h
0088E212: push eax
0088E213: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088E218: push eax
0088E219: lea eax, var_000000E4
0088E21F: push eax
0088E220: call 00410A84h ; Set (object)
0088E225: push eax
0088E226: lea eax, var_000001EC
0088E22C: push eax
0088E22D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088E232: add esp, 00000020h
0088E235: push eax
0088E236: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088E23B: mov edx, eax
0088E23D: lea ecx, var_0000008C
0088E243: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088E248: push eax
0088E249: call 00410A18h ; &
0088E24E: mov edx, eax
0088E250: lea ecx, var_00000090
0088E256: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088E25B: push eax
0088E25C: push 00445568h
0088E261: call 00410A18h ; &
0088E266: mov edx, eax
0088E268: lea ecx, var_00000094
0088E26E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088E273: push eax
0088E274: push 00000010h
0088E276: pop eax
0088E277: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088E27C: lea esi, var_0000033C
0088E282: mov edi, esp
0088E284: movsd 
0088E285: movsd 
0088E286: movsd 
0088E287: movsd 
0088E288: push 00000001h
0088E28A: push 00000010h
0088E28C: push 00440E58h
0088E291: push 00000010h
0088E293: pop eax
0088E294: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088E299: lea esi, var_0000032C
0088E29F: mov edi, esp
0088E2A1: movsd 
0088E2A2: movsd 
0088E2A3: movsd 
0088E2A4: movsd 
0088E2A5: push 00000001h
0088E2A7: push 00000000h
0088E2A9: push 00440E48h
0088E2AE: push 00000000h
0088E2B0: push 00000018h
0088E2B2: mov eax, [ebp+08h]
0088E2B5: mov eax, [eax]
0088E2B7: push [ebp+08h]
0088E2BA: call [eax+00000314h]
0088E2C0: push eax
0088E2C1: lea eax, var_000000E8
0088E2C7: push eax
0088E2C8: call 00410A84h ; Set (object)
0088E2CD: push eax
0088E2CE: lea eax, var_000001FC
0088E2D4: push eax
0088E2D5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088E2DA: add esp, 00000010h
0088E2DD: push eax
0088E2DE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088E2E3: push eax
0088E2E4: lea eax, var_000000EC
0088E2EA: push eax
0088E2EB: call 00410A84h ; Set (object)
0088E2F0: push eax
0088E2F1: lea eax, var_0000020C
0088E2F7: push eax
0088E2F8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088E2FD: add esp, 00000020h
0088E300: push eax
0088E301: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088E306: push eax
0088E307: lea eax, var_000000F0
0088E30D: push eax
0088E30E: call 00410A84h ; Set (object)
0088E313: push eax
0088E314: lea eax, var_0000021C
0088E31A: push eax
0088E31B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088E320: add esp, 00000020h
0088E323: push eax
0088E324: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088E329: mov edx, eax
0088E32B: lea ecx, var_00000098
0088E331: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088E336: push eax
0088E337: call 00410A18h ; &
0088E33C: mov edx, eax
0088E33E: lea ecx, var_0000009C
0088E344: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088E349: push eax
0088E34A: push 00445568h
0088E34F: call 00410A18h ; &
0088E354: mov edx, eax
0088E356: lea ecx, var_000000A0
0088E35C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088E361: push eax
0088E362: push 00000010h
0088E364: pop eax
0088E365: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088E36A: lea esi, var_0000036C
0088E370: mov edi, esp
0088E372: movsd 
0088E373: movsd 
0088E374: movsd 
0088E375: movsd 
0088E376: push 00000001h
0088E378: push 00000010h
0088E37A: push 00440E58h
0088E37F: push 00000010h
0088E381: pop eax
0088E382: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088E387: lea esi, var_0000035C
0088E38D: mov edi, esp
0088E38F: movsd 
0088E390: movsd 
0088E391: movsd 
0088E392: movsd 
0088E393: push 00000001h
0088E395: push 00000000h
0088E397: push 00440E48h
0088E39C: push 00000000h
0088E39E: push 00000018h
0088E3A0: mov eax, [ebp+08h]
0088E3A3: mov eax, [eax]
0088E3A5: push [ebp+08h]
0088E3A8: call [eax+00000314h]
0088E3AE: push eax
0088E3AF: lea eax, var_000000F4
0088E3B5: push eax
0088E3B6: call 00410A84h ; Set (object)
0088E3BB: push eax
0088E3BC: lea eax, var_0000022C
0088E3C2: push eax
0088E3C3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088E3C8: add esp, 00000010h
0088E3CB: push eax
0088E3CC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088E3D1: push eax
0088E3D2: lea eax, var_000000F8
0088E3D8: push eax
0088E3D9: call 00410A84h ; Set (object)
0088E3DE: push eax
0088E3DF: lea eax, var_0000023C
0088E3E5: push eax
0088E3E6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088E3EB: add esp, 00000020h
0088E3EE: push eax
0088E3EF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088E3F4: push eax
0088E3F5: lea eax, var_000000FC
0088E3FB: push eax
0088E3FC: call 00410A84h ; Set (object)
0088E401: push eax
0088E402: lea eax, var_0000024C
0088E408: push eax
0088E409: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088E40E: add esp, 00000020h
0088E411: push eax
0088E412: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088E417: mov edx, eax
0088E419: lea ecx, var_000000A4
0088E41F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088E424: push eax
0088E425: call 00410A18h ; &
0088E42A: mov edx, eax
0088E42C: lea ecx, var_000000A8
0088E432: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088E437: push eax
0088E438: push 00441264h ; vbCrLf
0088E43D: call 00410A18h ; &
0088E442: mov edx, eax
0088E444: lea ecx, var_44
0088E447: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088E44C: lea eax, var_000000A8
0088E452: push eax
0088E453: lea eax, var_000000A4
0088E459: push eax
0088E45A: lea eax, var_000000A0
0088E460: push eax
0088E461: lea eax, var_0000009C
0088E467: push eax
0088E468: lea eax, var_00000098
0088E46E: push eax
0088E46F: lea eax, var_00000094
0088E475: push eax
0088E476: lea eax, var_00000090
0088E47C: push eax
0088E47D: lea eax, var_0000008C
0088E483: push eax
0088E484: lea eax, var_00000088
0088E48A: push eax
0088E48B: lea eax, var_00000084
0088E491: push eax
0088E492: lea eax, var_80
0088E495: push eax
0088E496: lea eax, var_7C
0088E499: push eax
0088E49A: lea eax, var_78
0088E49D: push eax
0088E49E: lea eax, var_74
0088E4A1: push eax
0088E4A2: lea eax, var_70
0088E4A5: push eax
0088E4A6: lea eax, var_6C
0088E4A9: push eax
0088E4AA: lea eax, var_68
0088E4AD: push eax
0088E4AE: lea eax, var_64
0088E4B1: push eax
0088E4B2: lea eax, var_60
0088E4B5: push eax
0088E4B6: lea eax, var_5C
0088E4B9: push eax
0088E4BA: push 00000014h
0088E4BC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0088E4C1: add esp, 00000054h
0088E4C4: lea eax, var_000000FC
0088E4CA: push eax
0088E4CB: lea eax, var_000000F8
0088E4D1: push eax
0088E4D2: lea eax, var_000000F4
0088E4D8: push eax
0088E4D9: lea eax, var_000000F0
0088E4DF: push eax
0088E4E0: lea eax, var_000000EC
0088E4E6: push eax
0088E4E7: lea eax, var_000000E8
0088E4ED: push eax
0088E4EE: lea eax, var_000000E4
0088E4F4: push eax
0088E4F5: lea eax, var_000000E0
0088E4FB: push eax
0088E4FC: lea eax, var_000000DC
0088E502: push eax
0088E503: lea eax, var_000000D8
0088E509: push eax
0088E50A: lea eax, var_000000D4
0088E510: push eax
0088E511: lea eax, var_000000D0
0088E517: push eax
0088E518: lea eax, var_000000CC
0088E51E: push eax
0088E51F: lea eax, var_000000C8
0088E525: push eax
0088E526: lea eax, var_000000C4
0088E52C: push eax
0088E52D: lea eax, var_000000C0
0088E533: push eax
0088E534: lea eax, var_000000BC
0088E53A: push eax
0088E53B: lea eax, var_000000B8
0088E541: push eax
0088E542: lea eax, var_000000B4
0088E548: push eax
0088E549: lea eax, var_000000B0
0088E54F: push eax
0088E550: lea eax, var_000000AC
0088E556: push eax
0088E557: push 00000015h
0088E559: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088E55E: add esp, 00000058h
0088E561: lea eax, var_0000024C
0088E567: push eax
0088E568: lea eax, var_0000023C
0088E56E: push eax
0088E56F: lea eax, var_0000022C
0088E575: push eax
0088E576: lea eax, var_0000021C
0088E57C: push eax
0088E57D: lea eax, var_0000020C
0088E583: push eax
0088E584: lea eax, var_000001FC
0088E58A: push eax
0088E58B: lea eax, var_000001EC
0088E591: push eax
0088E592: lea eax, var_000001DC
0088E598: push eax
0088E599: lea eax, var_000001CC
0088E59F: push eax
0088E5A0: lea eax, var_000001BC
0088E5A6: push eax
0088E5A7: lea eax, var_000001AC
0088E5AD: push eax
0088E5AE: lea eax, var_0000019C
0088E5B4: push eax
0088E5B5: lea eax, var_0000018C
0088E5BB: push eax
0088E5BC: lea eax, var_0000017C
0088E5C2: push eax
0088E5C3: lea eax, var_0000016C
0088E5C9: push eax
0088E5CA: lea eax, var_0000015C
0088E5D0: push eax
0088E5D1: lea eax, var_0000014C
0088E5D7: push eax
0088E5D8: lea eax, var_0000013C
0088E5DE: push eax
0088E5DF: lea eax, var_0000012C
0088E5E5: push eax
0088E5E6: lea eax, var_0000011C
0088E5EC: push eax
0088E5ED: lea eax, var_0000010C
0088E5F3: push eax
0088E5F4: push 00000015h
0088E5F6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088E5FB: add esp, 00000058h
0088E5FE: mov var_04, 00000019h
0088E605: lea eax, var_000003EC
0088E60B: push eax
0088E60C: lea eax, var_000003DC
0088E612: push eax
0088E613: lea eax, var_30
0088E616: push eax
0088E617: call 00410A36h ; Next
0088E61C: mov var_00000410, eax
0088E622: cmp var_00000410, 00000000h
0088E629: jnz 0088DCF9h
0088E62F: mov var_04, 0000001Ah
0088E636: mov var_00000104, 80020004h
0088E640: mov var_0000010C, 0000000Ah
0088E64A: lea eax, var_0000010C
0088E650: push eax
0088E651: call 004108C2h ; FreeFile
0088E656: mov var_00000264, ax
0088E65D: mov var_0000026C, 00000002h
0088E667: lea edx, var_0000026C
0088E66D: lea ecx, var_40
0088E670: call 00410922h ; msvbvm60.dll.__vbaVarMove
0088E675: lea ecx, var_0000010C
0088E67B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0088E680: mov var_04, 0000001Bh
0088E687: lea eax, var_58
0088E68A: push eax
0088E68B: call 00410862h ; msvbvm60.dll.__vbaStrVarCopy
0088E690: mov edx, eax
0088E692: lea ecx, var_5C
0088E695: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088E69A: push eax
0088E69B: lea eax, var_40
0088E69E: push eax
0088E69F: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0088E6A4: push eax
0088E6A5: push FFFFFFFFh
0088E6A7: push 00000220h
0088E6AC: call 004108B6h ; Open #
0088E6B1: lea ecx, var_5C
0088E6B4: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0088E6B9: mov var_04, 0000001Ch
0088E6C0: lea eax, var_40
0088E6C3: push eax
0088E6C4: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0088E6C9: push eax
0088E6CA: lea eax, var_44
0088E6CD: push eax
0088E6CE: push 00000000h
0088E6D0: call 0041089Eh ; Put #
0088E6D5: mov var_04, 0000001Dh
0088E6DC: lea eax, var_40
0088E6DF: push eax
0088E6E0: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0088E6E5: push eax
0088E6E6: call 00410898h ; Close #arg_1
0088E6EB: jmp 88E66Bh
0088E6ED: mov var_04, 00000020h
0088E6F4: push 00000000h
0088E6F6: push 00000003h
0088E6F8: push 00440E48h
0088E6FD: push 00000000h
0088E6FF: push 00000018h
0088E701: mov eax, [ebp+08h]
0088E704: mov eax, [eax]
0088E706: push [ebp+08h]
0088E709: call [eax+00000314h]
0088E70F: push eax
0088E710: lea eax, var_000000AC
0088E716: push eax
0088E717: call 00410A84h ; Set (object)
0088E71C: push eax
0088E71D: lea eax, var_0000010C
0088E723: push eax
0088E724: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088E729: add esp, 00000010h
0088E72C: push eax
0088E72D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088E732: push eax
0088E733: lea eax, var_000000B0
0088E739: push eax
0088E73A: call 00410A84h ; Set (object)
0088E73F: push eax
0088E740: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0088E745: add esp, 0000000Ch
0088E748: lea eax, var_000000B0
0088E74E: push eax
0088E74F: lea eax, var_000000AC
0088E755: push eax
0088E756: push 00000002h
0088E758: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088E75D: add esp, 0000000Ch
0088E760: lea ecx, var_0000010C
0088E766: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0088E76B: mov var_10, 00000000h
0088E772: push 0088E984h
0088E777: jmp 0088E92Fh
0088E77C: lea eax, var_000000A8
0088E782: push eax
0088E783: lea eax, var_000000A4
0088E789: push eax
0088E78A: lea eax, var_000000A0
0088E790: push eax
0088E791: lea eax, var_0000009C
0088E797: push eax
0088E798: lea eax, var_00000098
0088E79E: push eax
0088E79F: lea eax, var_00000094
0088E7A5: push eax
0088E7A6: lea eax, var_00000090
0088E7AC: push eax
0088E7AD: lea eax, var_0000008C
0088E7B3: push eax
0088E7B4: lea eax, var_00000088
0088E7BA: push eax
0088E7BB: lea eax, var_00000084
0088E7C1: push eax
0088E7C2: lea eax, var_80
0088E7C5: push eax
0088E7C6: lea eax, var_7C
0088E7C9: push eax
0088E7CA: lea eax, var_78
0088E7CD: push eax
0088E7CE: lea eax, var_74
0088E7D1: push eax
0088E7D2: lea eax, var_70
0088E7D5: push eax
0088E7D6: lea eax, var_6C
0088E7D9: push eax
0088E7DA: lea eax, var_68
0088E7DD: push eax
0088E7DE: lea eax, var_64
0088E7E1: push eax
0088E7E2: lea eax, var_60
0088E7E5: push eax
0088E7E6: lea eax, var_5C
0088E7E9: push eax
0088E7EA: push 00000014h
0088E7EC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0088E7F1: add esp, 00000054h
0088E7F4: lea eax, var_000000FC
0088E7FA: push eax
0088E7FB: lea eax, var_000000F8
0088E801: push eax
0088E802: lea eax, var_000000F4
0088E808: push eax
0088E809: lea eax, var_000000F0
0088E80F: push eax
0088E810: lea eax, var_000000EC
0088E816: push eax
0088E817: lea eax, var_000000E8
0088E81D: push eax
0088E81E: lea eax, var_000000E4
0088E824: push eax
0088E825: lea eax, var_000000E0
0088E82B: push eax
0088E82C: lea eax, var_000000DC
0088E832: push eax
0088E833: lea eax, var_000000D8
0088E839: push eax
0088E83A: lea eax, var_000000D4
0088E840: push eax
0088E841: lea eax, var_000000D0
0088E847: push eax
0088E848: lea eax, var_000000CC
0088E84E: push eax
0088E84F: lea eax, var_000000C8
0088E855: push eax
0088E856: lea eax, var_000000C4
0088E85C: push eax
0088E85D: lea eax, var_000000C0
0088E863: push eax
0088E864: lea eax, var_000000BC
0088E86A: push eax
0088E86B: lea eax, var_000000B8
0088E871: push eax
0088E872: lea eax, var_000000B4
0088E878: push eax
0088E879: lea eax, var_000000B0
0088E87F: push eax
0088E880: lea eax, var_000000AC
0088E886: push eax
0088E887: push 00000015h
0088E889: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088E88E: add esp, 00000058h
0088E891: lea eax, var_0000024C
0088E897: push eax
0088E898: lea eax, var_0000023C
0088E89E: push eax
0088E89F: lea eax, var_0000022C
0088E8A5: push eax
0088E8A6: lea eax, var_0000021C
0088E8AC: push eax
0088E8AD: lea eax, var_0000020C
0088E8B3: push eax
0088E8B4: lea eax, var_000001FC
0088E8BA: push eax
0088E8BB: lea eax, var_000001EC
0088E8C1: push eax
0088E8C2: lea eax, var_000001DC
0088E8C8: push eax
0088E8C9: lea eax, var_000001CC
0088E8CF: push eax
0088E8D0: lea eax, var_000001BC
0088E8D6: push eax
0088E8D7: lea eax, var_000001AC
0088E8DD: push eax
0088E8DE: lea eax, var_0000019C
0088E8E4: push eax
0088E8E5: lea eax, var_0000018C
0088E8EB: push eax
0088E8EC: lea eax, var_0000017C
0088E8F2: push eax
0088E8F3: lea eax, var_0000016C
0088E8F9: push eax
0088E8FA: lea eax, var_0000015C
0088E900: push eax
0088E901: lea eax, var_0000014C
0088E907: push eax
0088E908: lea eax, var_0000013C
0088E90E: push eax
0088E90F: lea eax, var_0000012C
0088E915: push eax
0088E916: lea eax, var_0000011C
0088E91C: push eax
0088E91D: lea eax, var_0000010C
0088E923: push eax
0088E924: push 00000015h
0088E926: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088E92B: add esp, 00000058h
0088E92E: ret 
End Sub

Private sub cmdInfo__8883C4
008883C4: push ebp
008883C5: mov ebp, esp
008883C7: sub esp, 0000000Ch
008883CA: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008883CF: mov eax, fs:[00h]
008883D5: push eax
008883D6: mov fs:[00000000h], esp
008883DD: push 0000007Ch
008883DF: pop eax
008883E0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008883E5: push ebx
008883E6: push esi
008883E7: push edi
008883E8: mov var_0C, esp
008883EB: mov var_08, 0040DD60h
008883F2: mov eax, [ebp+08h]
008883F5: and eax, 00000001h
008883F8: mov var_04, eax
008883FB: mov eax, [ebp+08h]
008883FE: and al, FEh
00888400: mov [ebp+08h], eax
00888403: mov eax, [ebp+08h]
00888406: mov eax, [eax]
00888408: push [ebp+08h]
0088840B: call [eax+04h]
0088840E: mov var_50, 80020004h
00888415: mov var_58, 0000000Ah
0088841C: mov var_40, 80020004h
00888423: mov var_48, 0000000Ah
0088842A: mov var_30, 80020004h
00888431: mov var_38, 0000000Ah
00888438: push 0045939Ch ; This feature will download a given torrent file on your bots, then finally seed it.
0088843D: push 00441264h ; vbCrLf
00888442: call 00410A18h ; &
00888447: mov edx, eax
00888449: lea ecx, var_18
0088844C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00888451: push eax
00888452: push 00459448h ; Currently supported clients: uTorrent, BitTorrent, Azerus/Vuze, LimeWire
00888457: call 00410A18h ; &
0088845C: mov var_20, eax
0088845F: mov var_28, 00000008h
00888466: lea eax, var_58
00888469: push eax
0088846A: lea eax, var_48
0088846D: push eax
0088846E: lea eax, var_38
00888471: push eax
00888472: push 00000040h
00888474: lea eax, var_28
00888477: push eax
00888478: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0088847D: lea ecx, var_18
00888480: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00888485: lea eax, var_58
00888488: push eax
00888489: lea eax, var_48
0088848C: push eax
0088848D: lea eax, var_38
00888490: push eax
00888491: lea eax, var_28
00888494: push eax
00888495: push 00000004h
00888497: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088849C: add esp, 00000014h
0088849F: mov var_04, 00000000h
008884A6: push 008884D1h
008884AB: jmp 8884D0h
008884AD: lea ecx, var_18
008884B0: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008884B5: lea eax, var_58
008884B8: push eax
008884B9: lea eax, var_48
008884BC: push eax
008884BD: lea eax, var_38
008884C0: push eax
008884C1: lea eax, var_28
008884C4: push eax
008884C5: push 00000004h
008884C7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008884CC: add esp, 00000014h
008884CF: ret 
End Sub

Private sub cmdStart__8884F0
008884F0: push ebp
008884F1: mov ebp, esp
008884F3: sub esp, 0000000Ch
008884F6: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008884FB: mov eax, fs:[00h]
00888501: push eax
00888502: mov fs:[00000000h], esp
00888509: mov eax, 00000254h
0088850E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888513: push ebx
00888514: push esi
00888515: push edi
00888516: mov var_0C, esp
00888519: mov var_08, 0040DD70h
00888520: mov eax, [ebp+08h]
00888523: and eax, 00000001h
00888526: mov var_04, eax
00888529: mov eax, [ebp+08h]
0088852C: and al, FEh
0088852E: mov [ebp+08h], eax
00888531: mov eax, [ebp+08h]
00888534: mov eax, [eax]
00888536: push [ebp+08h]
00888539: call [eax+04h]
0088853C: mov eax, [ebp+08h]
0088853F: mov eax, [eax]
00888541: push [ebp+08h]
00888544: call [eax+000002FCh]
0088854A: push eax
0088854B: lea eax, var_40
0088854E: push eax
0088854F: call 00410A84h ; Set (object)
00888554: mov var_0000018C, eax
0088855A: lea eax, var_38
0088855D: push eax
0088855E: mov eax, var_0000018C
00888564: mov eax, [eax]
00888566: push var_0000018C
0088856C: call [eax+000000A0h]
00888572: fclex 
00888574: mov var_00000190, eax
0088857A: cmp var_00000190, 00000000h
00888581: jnl 8885A6h
00888583: push 000000A0h
00888588: push 00440E08h
0088858D: push var_0000018C
00888593: push var_00000190
00888599: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088859E: mov var_000001F0, eax
008885A4: jmp 8885ADh
008885A6: and var_000001F0, 00000000h
008885AD: push var_38
008885B0: call 0041098Eh ; Len(arg_1)
008885B5: xor ecx, ecx
008885B7: cmp eax, 0000000Ah
008885BA: setl cl
008885BD: neg ecx
008885BF: mov var_00000194, cx
008885C6: lea ecx, var_38
008885C9: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008885CE: lea ecx, var_40
008885D1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008885D6: movsx eax, word ptr var_00000194
008885DD: test eax, eax
008885DF: jz 0088867Fh
008885E5: mov var_00000094, 80020004h
008885EF: mov var_0000009C, 0000000Ah
008885F9: mov var_00000084, 80020004h
00888603: mov var_0000008C, 0000000Ah
0088860D: mov var_74, 80020004h
00888614: mov var_7C, 0000000Ah
0088861B: mov var_00000108, 004594E0h ; Invalid torrent URL
00888625: mov var_00000110, 00000008h
0088862F: lea edx, var_00000110
00888635: lea ecx, var_6C
00888638: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0088863D: lea eax, var_0000009C
00888643: push eax
00888644: lea eax, var_0000008C
0088864A: push eax
0088864B: lea eax, var_7C
0088864E: push eax
0088864F: push 00000030h
00888651: lea eax, var_6C
00888654: push eax
00888655: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0088865A: lea eax, var_0000009C
00888660: push eax
00888661: lea eax, var_0000008C
00888667: push eax
00888668: lea eax, var_7C
0088866B: push eax
0088866C: lea eax, var_6C
0088866F: push eax
00888670: push 00000004h
00888672: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00888677: add esp, 00000014h
0088867A: jmp 0088B831h
0088867F: mov eax, [ebp+08h]
00888682: mov eax, [eax]
00888684: push [ebp+08h]
00888687: call [eax+000002FCh]
0088868D: mov var_64, eax
00888690: mov var_6C, 00000009h
00888697: mov var_00000108, 0045950Ch ; .torrent
008886A1: mov var_00000110, 00000008h
008886AB: and var_00000118, 00000000h
008886B2: mov var_00000120, 00008002h
008886BC: push 00000001h
008886BE: lea eax, var_6C
008886C1: push eax
008886C2: lea eax, var_00000110
008886C8: push eax
008886C9: push 00000000h
008886CB: lea eax, var_7C
008886CE: push eax
008886CF: call 0041083Eh ; InStr
008886D4: push eax
008886D5: lea eax, var_00000120
008886DB: push eax
008886DC: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
008886E1: mov var_0000018C, ax
008886E8: lea eax, var_7C
008886EB: push eax
008886EC: lea eax, var_6C
008886EF: push eax
008886F0: push 00000002h
008886F2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008886F7: add esp, 0000000Ch
008886FA: movsx eax, word ptr var_0000018C
00888701: test eax, eax
00888703: jz 008887A3h
00888709: mov var_00000094, 80020004h
00888713: mov var_0000009C, 0000000Ah
0088871D: mov var_00000084, 80020004h
00888727: mov var_0000008C, 0000000Ah
00888731: mov var_74, 80020004h
00888738: mov var_7C, 0000000Ah
0088873F: mov var_00000108, 00459524h ; Invalid torrent URL, it should end in .torrent
00888749: mov var_00000110, 00000008h
00888753: lea edx, var_00000110
00888759: lea ecx, var_6C
0088875C: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00888761: lea eax, var_0000009C
00888767: push eax
00888768: lea eax, var_0000008C
0088876E: push eax
0088876F: lea eax, var_7C
00888772: push eax
00888773: push 00000010h
00888775: lea eax, var_6C
00888778: push eax
00888779: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0088877E: lea eax, var_0000009C
00888784: push eax
00888785: lea eax, var_0000008C
0088878B: push eax
0088878C: lea eax, var_7C
0088878F: push eax
00888790: lea eax, var_6C
00888793: push eax
00888794: push 00000004h
00888796: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088879B: add esp, 00000014h
0088879E: jmp 0088B831h
008887A3: push 00000000h
008887A5: push 00000003h
008887A7: push 00440E48h
008887AC: push 00000000h
008887AE: push 00000018h
008887B0: mov eax, [ebp+08h]
008887B3: mov eax, [eax]
008887B5: push [ebp+08h]
008887B8: call [eax+00000314h]
008887BE: push eax
008887BF: lea eax, var_40
008887C2: push eax
008887C3: call 00410A84h ; Set (object)
008887C8: push eax
008887C9: lea eax, var_6C
008887CC: push eax
008887CD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008887D2: add esp, 00000010h
008887D5: push eax
008887D6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008887DB: push eax
008887DC: lea eax, var_44
008887DF: push eax
008887E0: call 00410A84h ; Set (object)
008887E5: push eax
008887E6: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008887EB: add esp, 0000000Ch
008887EE: lea eax, var_44
008887F1: push eax
008887F2: lea eax, var_40
008887F5: push eax
008887F6: push 00000002h
008887F8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008887FD: add esp, 0000000Ch
00888800: lea ecx, var_6C
00888803: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00888808: cmp word ptr [008F2430h], FFFFh
00888810: jnz 0088A026h
00888816: mov var_00000108, 00000001h
00888820: mov var_00000110, 00000002h
0088882A: cmp [008F2010h], 00000000h
00888831: jnz 88884Eh
00888833: push 008F2010h
00888838: push 00433984h
0088883D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00888842: mov var_000001F4, 008F2010h
0088884C: jmp 888858h
0088884E: mov var_000001F4, 008F2010h
00888858: push 00000000h
0088885A: push 00000001h
0088885C: push 00440E48h
00888861: push 00000000h
00888863: push 00000018h
00888865: mov eax, var_000001F4
0088886B: mov eax, [eax]
0088886D: mov ecx, var_000001F4
00888873: mov ecx, [ecx]
00888875: mov ecx, [ecx]
00888877: push eax
00888878: call [ecx+0000054Ch]
0088887E: push eax
0088887F: lea eax, var_40
00888882: push eax
00888883: call 00410A84h ; Set (object)
00888888: push eax
00888889: lea eax, var_6C
0088888C: push eax
0088888D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888892: add esp, 00000010h
00888895: push eax
00888896: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088889B: push eax
0088889C: lea eax, var_44
0088889F: push eax
008888A0: call 00410A84h ; Set (object)
008888A5: push eax
008888A6: lea eax, var_7C
008888A9: push eax
008888AA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008888AF: add esp, 00000010h
008888B2: push eax
008888B3: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008888B8: mov var_00000118, eax
008888BE: mov var_00000120, 00000003h
008888C8: mov var_00000128, 00000001h
008888D2: mov var_00000130, 00000002h
008888DC: lea eax, var_00000110
008888E2: push eax
008888E3: lea eax, var_00000120
008888E9: push eax
008888EA: lea eax, var_00000130
008888F0: push eax
008888F1: lea eax, var_000001BC
008888F7: push eax
008888F8: lea eax, var_000001AC
008888FE: push eax
008888FF: lea eax, var_24
00888902: push eax
00888903: call 00410A3Ch ; For
00888908: mov var_000001E8, eax
0088890E: lea eax, var_44
00888911: push eax
00888912: lea eax, var_40
00888915: push eax
00888916: push 00000002h
00888918: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088891D: add esp, 0000000Ch
00888920: lea eax, var_7C
00888923: push eax
00888924: lea eax, var_6C
00888927: push eax
00888928: push 00000002h
0088892A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088892F: add esp, 0000000Ch
00888932: jmp 0088A014h
00888937: lea eax, var_24
0088893A: mov var_00000108, eax
00888940: mov var_00000110, 0000400Ch
0088894A: cmp [008F2010h], 00000000h
00888951: jnz 88896Eh
00888953: push 008F2010h
00888958: push 00433984h
0088895D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00888962: mov var_000001F8, 008F2010h
0088896C: jmp 888978h
0088896E: mov var_000001F8, 008F2010h
00888978: push 00000000h
0088897A: push 00000004h
0088897C: push 00440E58h
00888981: push 00000010h
00888983: pop eax
00888984: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888989: lea esi, var_00000110
0088898F: mov edi, esp
00888991: movsd 
00888992: movsd 
00888993: movsd 
00888994: movsd 
00888995: push 00000001h
00888997: push 00000000h
00888999: push 00440E48h
0088899E: push 00000000h
008889A0: push 00000018h
008889A2: mov eax, var_000001F8
008889A8: mov eax, [eax]
008889AA: mov ecx, var_000001F8
008889B0: mov ecx, [ecx]
008889B2: mov ecx, [ecx]
008889B4: push eax
008889B5: call [ecx+0000054Ch]
008889BB: push eax
008889BC: lea eax, var_40
008889BF: push eax
008889C0: call 00410A84h ; Set (object)
008889C5: push eax
008889C6: lea eax, var_6C
008889C9: push eax
008889CA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008889CF: add esp, 00000010h
008889D2: push eax
008889D3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008889D8: push eax
008889D9: lea eax, var_44
008889DC: push eax
008889DD: call 00410A84h ; Set (object)
008889E2: push eax
008889E3: lea eax, var_7C
008889E6: push eax
008889E7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008889EC: add esp, 00000020h
008889EF: push eax
008889F0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008889F5: push eax
008889F6: lea eax, var_48
008889F9: push eax
008889FA: call 00410A84h ; Set (object)
008889FF: push eax
00888A00: lea eax, var_0000008C
00888A06: push eax
00888A07: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888A0C: add esp, 00000010h
00888A0F: push eax
00888A10: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00888A15: sub ax, FFFFh
00888A19: neg ax
00888A1C: sbb eax, eax
00888A1E: inc eax
00888A1F: neg eax
00888A21: mov var_0000018C, ax
00888A28: lea eax, var_48
00888A2B: push eax
00888A2C: lea eax, var_44
00888A2F: push eax
00888A30: lea eax, var_40
00888A33: push eax
00888A34: push 00000003h
00888A36: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00888A3B: add esp, 00000010h
00888A3E: lea eax, var_0000008C
00888A44: push eax
00888A45: lea eax, var_7C
00888A48: push eax
00888A49: lea eax, var_6C
00888A4C: push eax
00888A4D: push 00000003h
00888A4F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00888A54: add esp, 00000010h
00888A57: movsx eax, word ptr var_0000018C
00888A5E: test eax, eax
00888A60: jz 00889FF7h
00888A66: mov eax, [ebp+08h]
00888A69: mov eax, [eax]
00888A6B: push [ebp+08h]
00888A6E: call [eax+00000314h]
00888A74: push eax
00888A75: lea eax, var_00000198
00888A7B: push eax
00888A7C: call 00410A84h ; Set (object)
00888A81: mov var_00000128, 80020004h
00888A8B: mov var_00000130, 0000000Ah
00888A95: lea eax, var_24
00888A98: mov var_00000108, eax
00888A9E: mov var_00000110, 0000400Ch
00888AA8: cmp [008F2010h], 00000000h
00888AAF: jnz 888ACCh
00888AB1: push 008F2010h
00888AB6: push 00433984h
00888ABB: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00888AC0: mov var_000001FC, 008F2010h
00888ACA: jmp 888AD6h
00888ACC: mov var_000001FC, 008F2010h
00888AD6: push 00000000h
00888AD8: push 00000014h
00888ADA: push 00440E58h
00888ADF: push 00000010h
00888AE1: pop eax
00888AE2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888AE7: lea esi, var_00000110
00888AED: mov edi, esp
00888AEF: movsd 
00888AF0: movsd 
00888AF1: movsd 
00888AF2: movsd 
00888AF3: push 00000001h
00888AF5: push 00000000h
00888AF7: push 00440E48h
00888AFC: push 00000000h
00888AFE: push 00000018h
00888B00: mov eax, var_000001FC
00888B06: mov eax, [eax]
00888B08: mov ecx, var_000001FC
00888B0E: mov ecx, [ecx]
00888B10: mov ecx, [ecx]
00888B12: push eax
00888B13: call [ecx+0000054Ch]
00888B19: push eax
00888B1A: lea eax, var_40
00888B1D: push eax
00888B1E: call 00410A84h ; Set (object)
00888B23: push eax
00888B24: lea eax, var_6C
00888B27: push eax
00888B28: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888B2D: add esp, 00000010h
00888B30: push eax
00888B31: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00888B36: push eax
00888B37: lea eax, var_44
00888B3A: push eax
00888B3B: call 00410A84h ; Set (object)
00888B40: push eax
00888B41: lea eax, var_7C
00888B44: push eax
00888B45: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888B4A: add esp, 00000020h
00888B4D: push eax
00888B4E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00888B53: push eax
00888B54: lea eax, var_48
00888B57: push eax
00888B58: call 00410A84h ; Set (object)
00888B5D: push eax
00888B5E: lea eax, var_0000008C
00888B64: push eax
00888B65: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888B6A: add esp, 00000010h
00888B6D: push eax
00888B6E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00888B73: mov var_000000D4, eax
00888B79: mov var_000000DC, 00000008h
00888B83: lea eax, var_24
00888B86: mov var_00000118, eax
00888B8C: mov var_00000120, 0000400Ch
00888B96: cmp [008F2010h], 00000000h
00888B9D: jnz 888BBAh
00888B9F: push 008F2010h
00888BA4: push 00433984h
00888BA9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00888BAE: mov var_00000200, 008F2010h
00888BB8: jmp 888BC4h
00888BBA: mov var_00000200, 008F2010h
00888BC4: push 00000000h
00888BC6: push 00000000h
00888BC8: push 00440E58h
00888BCD: push 00000010h
00888BCF: pop eax
00888BD0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888BD5: lea esi, var_00000120
00888BDB: mov edi, esp
00888BDD: movsd 
00888BDE: movsd 
00888BDF: movsd 
00888BE0: movsd 
00888BE1: push 00000001h
00888BE3: push 00000000h
00888BE5: push 00440E48h
00888BEA: push 00000000h
00888BEC: push 00000018h
00888BEE: mov eax, var_00000200
00888BF4: mov eax, [eax]
00888BF6: mov ecx, var_00000200
00888BFC: mov ecx, [ecx]
00888BFE: mov ecx, [ecx]
00888C00: push eax
00888C01: call [ecx+0000054Ch]
00888C07: push eax
00888C08: lea eax, var_4C
00888C0B: push eax
00888C0C: call 00410A84h ; Set (object)
00888C11: push eax
00888C12: lea eax, var_0000009C
00888C18: push eax
00888C19: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888C1E: add esp, 00000010h
00888C21: push eax
00888C22: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00888C27: push eax
00888C28: lea eax, var_50
00888C2B: push eax
00888C2C: call 00410A84h ; Set (object)
00888C31: push eax
00888C32: lea eax, var_000000AC
00888C38: push eax
00888C39: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888C3E: add esp, 00000020h
00888C41: push eax
00888C42: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00888C47: push eax
00888C48: lea eax, var_54
00888C4B: push eax
00888C4C: call 00410A84h ; Set (object)
00888C51: push eax
00888C52: lea eax, var_000000BC
00888C58: push eax
00888C59: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888C5E: add esp, 00000010h
00888C61: push eax
00888C62: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00888C67: mov var_000000E4, eax
00888C6D: mov var_000000EC, 00000008h
00888C77: push 00000010h
00888C79: pop eax
00888C7A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888C7F: lea esi, var_00000130
00888C85: mov edi, esp
00888C87: movsd 
00888C88: movsd 
00888C89: movsd 
00888C8A: movsd 
00888C8B: push 00000010h
00888C8D: pop eax
00888C8E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888C93: lea esi, var_000000DC
00888C99: mov edi, esp
00888C9B: movsd 
00888C9C: movsd 
00888C9D: movsd 
00888C9E: movsd 
00888C9F: push 00000010h
00888CA1: pop eax
00888CA2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888CA7: lea esi, var_000000EC
00888CAD: mov edi, esp
00888CAF: movsd 
00888CB0: movsd 
00888CB1: movsd 
00888CB2: movsd 
00888CB3: push 00000003h
00888CB5: push 00000002h
00888CB7: push 00440E48h
00888CBC: push 00000000h
00888CBE: push 00000018h
00888CC0: push var_00000198
00888CC6: lea eax, var_000000CC
00888CCC: push eax
00888CCD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888CD2: add esp, 00000010h
00888CD5: push eax
00888CD6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00888CDB: push eax
00888CDC: lea eax, var_58
00888CDF: push eax
00888CE0: call 00410A84h ; Set (object)
00888CE5: push eax
00888CE6: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00888CEB: add esp, 0000003Ch
00888CEE: lea eax, var_58
00888CF1: push eax
00888CF2: lea eax, var_54
00888CF5: push eax
00888CF6: lea eax, var_50
00888CF9: push eax
00888CFA: lea eax, var_4C
00888CFD: push eax
00888CFE: lea eax, var_48
00888D01: push eax
00888D02: lea eax, var_44
00888D05: push eax
00888D06: lea eax, var_40
00888D09: push eax
00888D0A: push 00000007h
00888D0C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00888D11: add esp, 00000020h
00888D14: lea eax, var_000000EC
00888D1A: push eax
00888D1B: lea eax, var_000000DC
00888D21: push eax
00888D22: lea eax, var_000000CC
00888D28: push eax
00888D29: lea eax, var_000000BC
00888D2F: push eax
00888D30: lea eax, var_000000AC
00888D36: push eax
00888D37: lea eax, var_0000009C
00888D3D: push eax
00888D3E: lea eax, var_0000008C
00888D44: push eax
00888D45: lea eax, var_7C
00888D48: push eax
00888D49: lea eax, var_6C
00888D4C: push eax
00888D4D: push 00000009h
00888D4F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00888D54: add esp, 00000028h
00888D57: mov var_00000158, 00000001h
00888D61: mov var_00000160, 00000003h
00888D6B: mov var_00000118, 00000001h
00888D75: mov var_00000120, 00000003h
00888D7F: lea eax, var_24
00888D82: mov var_00000108, eax
00888D88: mov var_00000110, 0000400Ch
00888D92: cmp [008F2010h], 00000000h
00888D99: jnz 888DB6h
00888D9B: push 008F2010h
00888DA0: push 00433984h
00888DA5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00888DAA: mov var_00000204, 008F2010h
00888DB4: jmp 888DC0h
00888DB6: mov var_00000204, 008F2010h
00888DC0: push 00000010h
00888DC2: pop eax
00888DC3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888DC8: lea esi, var_00000120
00888DCE: mov edi, esp
00888DD0: movsd 
00888DD1: movsd 
00888DD2: movsd 
00888DD3: movsd 
00888DD4: push 00000001h
00888DD6: push 00000010h
00888DD8: push 00440E58h
00888DDD: push 00000010h
00888DDF: pop eax
00888DE0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888DE5: lea esi, var_00000110
00888DEB: mov edi, esp
00888DED: movsd 
00888DEE: movsd 
00888DEF: movsd 
00888DF0: movsd 
00888DF1: push 00000001h
00888DF3: push 00000000h
00888DF5: push 00440E48h
00888DFA: push 00000000h
00888DFC: push 00000018h
00888DFE: mov eax, var_00000204
00888E04: mov eax, [eax]
00888E06: mov ecx, var_00000204
00888E0C: mov ecx, [ecx]
00888E0E: mov ecx, [ecx]
00888E10: push eax
00888E11: call [ecx+0000054Ch]
00888E17: push eax
00888E18: lea eax, var_40
00888E1B: push eax
00888E1C: call 00410A84h ; Set (object)
00888E21: push eax
00888E22: lea eax, var_6C
00888E25: push eax
00888E26: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888E2B: add esp, 00000010h
00888E2E: push eax
00888E2F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00888E34: push eax
00888E35: lea eax, var_44
00888E38: push eax
00888E39: call 00410A84h ; Set (object)
00888E3E: push eax
00888E3F: lea eax, var_7C
00888E42: push eax
00888E43: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888E48: add esp, 00000020h
00888E4B: push eax
00888E4C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00888E51: push eax
00888E52: lea eax, var_48
00888E55: push eax
00888E56: call 00410A84h ; Set (object)
00888E5B: push eax
00888E5C: lea eax, var_0000008C
00888E62: push eax
00888E63: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888E68: add esp, 00000020h
00888E6B: push eax
00888E6C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00888E71: mov var_000000F4, eax
00888E77: mov var_000000FC, 00000008h
00888E81: lea eax, var_24
00888E84: mov var_00000138, eax
00888E8A: mov var_00000140, 0000400Ch
00888E94: cmp [008F2010h], 00000000h
00888E9B: jnz 888EB8h
00888E9D: push 008F2010h
00888EA2: push 00433984h
00888EA7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00888EAC: mov var_00000208, 008F2010h
00888EB6: jmp 888EC2h
00888EB8: mov var_00000208, 008F2010h
00888EC2: push 00000000h
00888EC4: push 00000014h
00888EC6: push 00440E58h
00888ECB: push 00000010h
00888ECD: pop eax
00888ECE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888ED3: lea esi, var_00000140
00888ED9: mov edi, esp
00888EDB: movsd 
00888EDC: movsd 
00888EDD: movsd 
00888EDE: movsd 
00888EDF: push 00000001h
00888EE1: push 00000000h
00888EE3: push 00440E48h
00888EE8: push 00000000h
00888EEA: push 00000018h
00888EEC: mov eax, var_00000208
00888EF2: mov eax, [eax]
00888EF4: mov ecx, var_00000208
00888EFA: mov ecx, [ecx]
00888EFC: mov ecx, [ecx]
00888EFE: push eax
00888EFF: call [ecx+0000054Ch]
00888F05: push eax
00888F06: lea eax, var_4C
00888F09: push eax
00888F0A: call 00410A84h ; Set (object)
00888F0F: push eax
00888F10: lea eax, var_0000009C
00888F16: push eax
00888F17: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888F1C: add esp, 00000010h
00888F1F: push eax
00888F20: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00888F25: push eax
00888F26: lea eax, var_50
00888F29: push eax
00888F2A: call 00410A84h ; Set (object)
00888F2F: push eax
00888F30: lea eax, var_000000AC
00888F36: push eax
00888F37: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888F3C: add esp, 00000020h
00888F3F: push eax
00888F40: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00888F45: push eax
00888F46: lea eax, var_54
00888F49: push eax
00888F4A: call 00410A84h ; Set (object)
00888F4F: push eax
00888F50: lea eax, var_000000BC
00888F56: push eax
00888F57: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888F5C: add esp, 00000010h
00888F5F: push eax
00888F60: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00888F65: mov var_000000D4, eax
00888F6B: mov var_000000DC, 00000008h
00888F75: push 00000010h
00888F77: pop eax
00888F78: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888F7D: lea esi, var_00000160
00888F83: mov edi, esp
00888F85: movsd 
00888F86: movsd 
00888F87: movsd 
00888F88: movsd 
00888F89: push 00000010h
00888F8B: pop eax
00888F8C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888F91: lea esi, var_000000FC
00888F97: mov edi, esp
00888F99: movsd 
00888F9A: movsd 
00888F9B: movsd 
00888F9C: movsd 
00888F9D: push 00000001h
00888F9F: push 00000010h
00888FA1: push 00440E58h
00888FA6: push 00000010h
00888FA8: pop eax
00888FA9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888FAE: lea esi, var_000000DC
00888FB4: mov edi, esp
00888FB6: movsd 
00888FB7: movsd 
00888FB8: movsd 
00888FB9: movsd 
00888FBA: push 00000001h
00888FBC: push 00000000h
00888FBE: push 00440E48h
00888FC3: push 00000000h
00888FC5: push 00000018h
00888FC7: push var_00000198
00888FCD: lea eax, var_000000CC
00888FD3: push eax
00888FD4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888FD9: add esp, 00000010h
00888FDC: push eax
00888FDD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00888FE2: push eax
00888FE3: lea eax, var_58
00888FE6: push eax
00888FE7: call 00410A84h ; Set (object)
00888FEC: push eax
00888FED: lea eax, var_000000EC
00888FF3: push eax
00888FF4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888FF9: add esp, 00000020h
00888FFC: push eax
00888FFD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889002: push eax
00889003: lea eax, var_5C
00889006: push eax
00889007: call 00410A84h ; Set (object)
0088900C: push eax
0088900D: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
00889012: add esp, 0000002Ch
00889015: lea eax, var_5C
00889018: push eax
00889019: lea eax, var_58
0088901C: push eax
0088901D: lea eax, var_54
00889020: push eax
00889021: lea eax, var_50
00889024: push eax
00889025: lea eax, var_4C
00889028: push eax
00889029: lea eax, var_48
0088902C: push eax
0088902D: lea eax, var_44
00889030: push eax
00889031: lea eax, var_40
00889034: push eax
00889035: push 00000008h
00889037: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088903C: add esp, 00000024h
0088903F: lea eax, var_000000FC
00889045: push eax
00889046: lea eax, var_000000EC
0088904C: push eax
0088904D: lea eax, var_000000DC
00889053: push eax
00889054: lea eax, var_000000CC
0088905A: push eax
0088905B: lea eax, var_000000BC
00889061: push eax
00889062: lea eax, var_000000AC
00889068: push eax
00889069: lea eax, var_0000009C
0088906F: push eax
00889070: lea eax, var_0000008C
00889076: push eax
00889077: lea eax, var_7C
0088907A: push eax
0088907B: lea eax, var_6C
0088907E: push eax
0088907F: push 0000000Ah
00889081: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00889086: add esp, 0000002Ch
00889089: mov var_00000158, 00000002h
00889093: mov var_00000160, 00000003h
0088909D: mov var_00000118, 00000002h
008890A7: mov var_00000120, 00000003h
008890B1: lea eax, var_24
008890B4: mov var_00000108, eax
008890BA: mov var_00000110, 0000400Ch
008890C4: cmp [008F2010h], 00000000h
008890CB: jnz 8890E8h
008890CD: push 008F2010h
008890D2: push 00433984h
008890D7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008890DC: mov var_0000020C, 008F2010h
008890E6: jmp 8890F2h
008890E8: mov var_0000020C, 008F2010h
008890F2: push 00000010h
008890F4: pop eax
008890F5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008890FA: lea esi, var_00000120
00889100: mov edi, esp
00889102: movsd 
00889103: movsd 
00889104: movsd 
00889105: movsd 
00889106: push 00000001h
00889108: push 00000010h
0088910A: push 00440E58h
0088910F: push 00000010h
00889111: pop eax
00889112: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889117: lea esi, var_00000110
0088911D: mov edi, esp
0088911F: movsd 
00889120: movsd 
00889121: movsd 
00889122: movsd 
00889123: push 00000001h
00889125: push 00000000h
00889127: push 00440E48h
0088912C: push 00000000h
0088912E: push 00000018h
00889130: mov eax, var_0000020C
00889136: mov eax, [eax]
00889138: mov ecx, var_0000020C
0088913E: mov ecx, [ecx]
00889140: mov ecx, [ecx]
00889142: push eax
00889143: call [ecx+0000054Ch]
00889149: push eax
0088914A: lea eax, var_40
0088914D: push eax
0088914E: call 00410A84h ; Set (object)
00889153: push eax
00889154: lea eax, var_6C
00889157: push eax
00889158: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088915D: add esp, 00000010h
00889160: push eax
00889161: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889166: push eax
00889167: lea eax, var_44
0088916A: push eax
0088916B: call 00410A84h ; Set (object)
00889170: push eax
00889171: lea eax, var_7C
00889174: push eax
00889175: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088917A: add esp, 00000020h
0088917D: push eax
0088917E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889183: push eax
00889184: lea eax, var_48
00889187: push eax
00889188: call 00410A84h ; Set (object)
0088918D: push eax
0088918E: lea eax, var_0000008C
00889194: push eax
00889195: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088919A: add esp, 00000020h
0088919D: push eax
0088919E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008891A3: mov var_000000F4, eax
008891A9: mov var_000000FC, 00000008h
008891B3: lea eax, var_24
008891B6: mov var_00000138, eax
008891BC: mov var_00000140, 0000400Ch
008891C6: cmp [008F2010h], 00000000h
008891CD: jnz 8891EAh
008891CF: push 008F2010h
008891D4: push 00433984h
008891D9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008891DE: mov var_00000210, 008F2010h
008891E8: jmp 8891F4h
008891EA: mov var_00000210, 008F2010h
008891F4: push 00000000h
008891F6: push 00000014h
008891F8: push 00440E58h
008891FD: push 00000010h
008891FF: pop eax
00889200: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889205: lea esi, var_00000140
0088920B: mov edi, esp
0088920D: movsd 
0088920E: movsd 
0088920F: movsd 
00889210: movsd 
00889211: push 00000001h
00889213: push 00000000h
00889215: push 00440E48h
0088921A: push 00000000h
0088921C: push 00000018h
0088921E: mov eax, var_00000210
00889224: mov eax, [eax]
00889226: mov ecx, var_00000210
0088922C: mov ecx, [ecx]
0088922E: mov ecx, [ecx]
00889230: push eax
00889231: call [ecx+0000054Ch]
00889237: push eax
00889238: lea eax, var_4C
0088923B: push eax
0088923C: call 00410A84h ; Set (object)
00889241: push eax
00889242: lea eax, var_0000009C
00889248: push eax
00889249: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088924E: add esp, 00000010h
00889251: push eax
00889252: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889257: push eax
00889258: lea eax, var_50
0088925B: push eax
0088925C: call 00410A84h ; Set (object)
00889261: push eax
00889262: lea eax, var_000000AC
00889268: push eax
00889269: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088926E: add esp, 00000020h
00889271: push eax
00889272: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889277: push eax
00889278: lea eax, var_54
0088927B: push eax
0088927C: call 00410A84h ; Set (object)
00889281: push eax
00889282: lea eax, var_000000BC
00889288: push eax
00889289: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088928E: add esp, 00000010h
00889291: push eax
00889292: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00889297: mov var_000000D4, eax
0088929D: mov var_000000DC, 00000008h
008892A7: push 00000010h
008892A9: pop eax
008892AA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008892AF: lea esi, var_00000160
008892B5: mov edi, esp
008892B7: movsd 
008892B8: movsd 
008892B9: movsd 
008892BA: movsd 
008892BB: push 00000010h
008892BD: pop eax
008892BE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008892C3: lea esi, var_000000FC
008892C9: mov edi, esp
008892CB: movsd 
008892CC: movsd 
008892CD: movsd 
008892CE: movsd 
008892CF: push 00000001h
008892D1: push 00000010h
008892D3: push 00440E58h
008892D8: push 00000010h
008892DA: pop eax
008892DB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008892E0: lea esi, var_000000DC
008892E6: mov edi, esp
008892E8: movsd 
008892E9: movsd 
008892EA: movsd 
008892EB: movsd 
008892EC: push 00000001h
008892EE: push 00000000h
008892F0: push 00440E48h
008892F5: push 00000000h
008892F7: push 00000018h
008892F9: push var_00000198
008892FF: lea eax, var_000000CC
00889305: push eax
00889306: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088930B: add esp, 00000010h
0088930E: push eax
0088930F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889314: push eax
00889315: lea eax, var_58
00889318: push eax
00889319: call 00410A84h ; Set (object)
0088931E: push eax
0088931F: lea eax, var_000000EC
00889325: push eax
00889326: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088932B: add esp, 00000020h
0088932E: push eax
0088932F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889334: push eax
00889335: lea eax, var_5C
00889338: push eax
00889339: call 00410A84h ; Set (object)
0088933E: push eax
0088933F: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
00889344: add esp, 0000002Ch
00889347: lea eax, var_5C
0088934A: push eax
0088934B: lea eax, var_58
0088934E: push eax
0088934F: lea eax, var_54
00889352: push eax
00889353: lea eax, var_50
00889356: push eax
00889357: lea eax, var_4C
0088935A: push eax
0088935B: lea eax, var_48
0088935E: push eax
0088935F: lea eax, var_44
00889362: push eax
00889363: lea eax, var_40
00889366: push eax
00889367: push 00000008h
00889369: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088936E: add esp, 00000024h
00889371: lea eax, var_000000FC
00889377: push eax
00889378: lea eax, var_000000EC
0088937E: push eax
0088937F: lea eax, var_000000DC
00889385: push eax
00889386: lea eax, var_000000CC
0088938C: push eax
0088938D: lea eax, var_000000BC
00889393: push eax
00889394: lea eax, var_000000AC
0088939A: push eax
0088939B: lea eax, var_0000009C
008893A1: push eax
008893A2: lea eax, var_0000008C
008893A8: push eax
008893A9: lea eax, var_7C
008893AC: push eax
008893AD: lea eax, var_6C
008893B0: push eax
008893B1: push 0000000Ah
008893B3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008893B8: add esp, 0000002Ch
008893BB: mov var_00000158, 00000003h
008893C5: mov var_00000160, 00000003h
008893CF: mov var_00000118, 00000006h
008893D9: mov var_00000120, 00000003h
008893E3: lea eax, var_24
008893E6: mov var_00000108, eax
008893EC: mov var_00000110, 0000400Ch
008893F6: cmp [008F2010h], 00000000h
008893FD: jnz 88941Ah
008893FF: push 008F2010h
00889404: push 00433984h
00889409: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088940E: mov var_00000214, 008F2010h
00889418: jmp 889424h
0088941A: mov var_00000214, 008F2010h
00889424: push 00000010h
00889426: pop eax
00889427: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088942C: lea esi, var_00000120
00889432: mov edi, esp
00889434: movsd 
00889435: movsd 
00889436: movsd 
00889437: movsd 
00889438: push 00000001h
0088943A: push 00000010h
0088943C: push 00440E58h
00889441: push 00000010h
00889443: pop eax
00889444: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889449: lea esi, var_00000110
0088944F: mov edi, esp
00889451: movsd 
00889452: movsd 
00889453: movsd 
00889454: movsd 
00889455: push 00000001h
00889457: push 00000000h
00889459: push 00440E48h
0088945E: push 00000000h
00889460: push 00000018h
00889462: mov eax, var_00000214
00889468: mov eax, [eax]
0088946A: mov ecx, var_00000214
00889470: mov ecx, [ecx]
00889472: mov ecx, [ecx]
00889474: push eax
00889475: call [ecx+0000054Ch]
0088947B: push eax
0088947C: lea eax, var_40
0088947F: push eax
00889480: call 00410A84h ; Set (object)
00889485: push eax
00889486: lea eax, var_6C
00889489: push eax
0088948A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088948F: add esp, 00000010h
00889492: push eax
00889493: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889498: push eax
00889499: lea eax, var_44
0088949C: push eax
0088949D: call 00410A84h ; Set (object)
008894A2: push eax
008894A3: lea eax, var_7C
008894A6: push eax
008894A7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008894AC: add esp, 00000020h
008894AF: push eax
008894B0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008894B5: push eax
008894B6: lea eax, var_48
008894B9: push eax
008894BA: call 00410A84h ; Set (object)
008894BF: push eax
008894C0: lea eax, var_0000008C
008894C6: push eax
008894C7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008894CC: add esp, 00000020h
008894CF: push eax
008894D0: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008894D5: mov var_000000F4, eax
008894DB: mov var_000000FC, 00000008h
008894E5: lea eax, var_24
008894E8: mov var_00000138, eax
008894EE: mov var_00000140, 0000400Ch
008894F8: cmp [008F2010h], 00000000h
008894FF: jnz 88951Ch
00889501: push 008F2010h
00889506: push 00433984h
0088950B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00889510: mov var_00000218, 008F2010h
0088951A: jmp 889526h
0088951C: mov var_00000218, 008F2010h
00889526: push 00000000h
00889528: push 00000014h
0088952A: push 00440E58h
0088952F: push 00000010h
00889531: pop eax
00889532: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889537: lea esi, var_00000140
0088953D: mov edi, esp
0088953F: movsd 
00889540: movsd 
00889541: movsd 
00889542: movsd 
00889543: push 00000001h
00889545: push 00000000h
00889547: push 00440E48h
0088954C: push 00000000h
0088954E: push 00000018h
00889550: mov eax, var_00000218
00889556: mov eax, [eax]
00889558: mov ecx, var_00000218
0088955E: mov ecx, [ecx]
00889560: mov ecx, [ecx]
00889562: push eax
00889563: call [ecx+0000054Ch]
00889569: push eax
0088956A: lea eax, var_4C
0088956D: push eax
0088956E: call 00410A84h ; Set (object)
00889573: push eax
00889574: lea eax, var_0000009C
0088957A: push eax
0088957B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00889580: add esp, 00000010h
00889583: push eax
00889584: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889589: push eax
0088958A: lea eax, var_50
0088958D: push eax
0088958E: call 00410A84h ; Set (object)
00889593: push eax
00889594: lea eax, var_000000AC
0088959A: push eax
0088959B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008895A0: add esp, 00000020h
008895A3: push eax
008895A4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008895A9: push eax
008895AA: lea eax, var_54
008895AD: push eax
008895AE: call 00410A84h ; Set (object)
008895B3: push eax
008895B4: lea eax, var_000000BC
008895BA: push eax
008895BB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008895C0: add esp, 00000010h
008895C3: push eax
008895C4: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008895C9: mov var_000000D4, eax
008895CF: mov var_000000DC, 00000008h
008895D9: push 00000010h
008895DB: pop eax
008895DC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008895E1: lea esi, var_00000160
008895E7: mov edi, esp
008895E9: movsd 
008895EA: movsd 
008895EB: movsd 
008895EC: movsd 
008895ED: push 00000010h
008895EF: pop eax
008895F0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008895F5: lea esi, var_000000FC
008895FB: mov edi, esp
008895FD: movsd 
008895FE: movsd 
008895FF: movsd 
00889600: movsd 
00889601: push 00000001h
00889603: push 00000010h
00889605: push 00440E58h
0088960A: push 00000010h
0088960C: pop eax
0088960D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889612: lea esi, var_000000DC
00889618: mov edi, esp
0088961A: movsd 
0088961B: movsd 
0088961C: movsd 
0088961D: movsd 
0088961E: push 00000001h
00889620: push 00000000h
00889622: push 00440E48h
00889627: push 00000000h
00889629: push 00000018h
0088962B: push var_00000198
00889631: lea eax, var_000000CC
00889637: push eax
00889638: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088963D: add esp, 00000010h
00889640: push eax
00889641: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889646: push eax
00889647: lea eax, var_58
0088964A: push eax
0088964B: call 00410A84h ; Set (object)
00889650: push eax
00889651: lea eax, var_000000EC
00889657: push eax
00889658: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088965D: add esp, 00000020h
00889660: push eax
00889661: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889666: push eax
00889667: lea eax, var_5C
0088966A: push eax
0088966B: call 00410A84h ; Set (object)
00889670: push eax
00889671: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
00889676: add esp, 0000002Ch
00889679: lea eax, var_5C
0088967C: push eax
0088967D: lea eax, var_58
00889680: push eax
00889681: lea eax, var_54
00889684: push eax
00889685: lea eax, var_50
00889688: push eax
00889689: lea eax, var_4C
0088968C: push eax
0088968D: lea eax, var_48
00889690: push eax
00889691: lea eax, var_44
00889694: push eax
00889695: lea eax, var_40
00889698: push eax
00889699: push 00000008h
0088969B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008896A0: add esp, 00000024h
008896A3: lea eax, var_000000FC
008896A9: push eax
008896AA: lea eax, var_000000EC
008896B0: push eax
008896B1: lea eax, var_000000DC
008896B7: push eax
008896B8: lea eax, var_000000CC
008896BE: push eax
008896BF: lea eax, var_000000BC
008896C5: push eax
008896C6: lea eax, var_000000AC
008896CC: push eax
008896CD: lea eax, var_0000009C
008896D3: push eax
008896D4: lea eax, var_0000008C
008896DA: push eax
008896DB: lea eax, var_7C
008896DE: push eax
008896DF: lea eax, var_6C
008896E2: push eax
008896E3: push 0000000Ah
008896E5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008896EA: add esp, 0000002Ch
008896ED: mov var_00000158, 00000004h
008896F7: mov var_00000160, 00000003h
00889701: mov var_00000118, 00000007h
0088970B: mov var_00000120, 00000003h
00889715: lea eax, var_24
00889718: mov var_00000108, eax
0088971E: mov var_00000110, 0000400Ch
00889728: cmp [008F2010h], 00000000h
0088972F: jnz 88974Ch
00889731: push 008F2010h
00889736: push 00433984h
0088973B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00889740: mov var_0000021C, 008F2010h
0088974A: jmp 889756h
0088974C: mov var_0000021C, 008F2010h
00889756: push 00000010h
00889758: pop eax
00889759: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088975E: lea esi, var_00000120
00889764: mov edi, esp
00889766: movsd 
00889767: movsd 
00889768: movsd 
00889769: movsd 
0088976A: push 00000001h
0088976C: push 00000010h
0088976E: push 00440E58h
00889773: push 00000010h
00889775: pop eax
00889776: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088977B: lea esi, var_00000110
00889781: mov edi, esp
00889783: movsd 
00889784: movsd 
00889785: movsd 
00889786: movsd 
00889787: push 00000001h
00889789: push 00000000h
0088978B: push 00440E48h
00889790: push 00000000h
00889792: push 00000018h
00889794: mov eax, var_0000021C
0088979A: mov eax, [eax]
0088979C: mov ecx, var_0000021C
008897A2: mov ecx, [ecx]
008897A4: mov ecx, [ecx]
008897A6: push eax
008897A7: call [ecx+0000054Ch]
008897AD: push eax
008897AE: lea eax, var_40
008897B1: push eax
008897B2: call 00410A84h ; Set (object)
008897B7: push eax
008897B8: lea eax, var_6C
008897BB: push eax
008897BC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008897C1: add esp, 00000010h
008897C4: push eax
008897C5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008897CA: push eax
008897CB: lea eax, var_44
008897CE: push eax
008897CF: call 00410A84h ; Set (object)
008897D4: push eax
008897D5: lea eax, var_7C
008897D8: push eax
008897D9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008897DE: add esp, 00000020h
008897E1: push eax
008897E2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008897E7: push eax
008897E8: lea eax, var_48
008897EB: push eax
008897EC: call 00410A84h ; Set (object)
008897F1: push eax
008897F2: lea eax, var_0000008C
008897F8: push eax
008897F9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008897FE: add esp, 00000020h
00889801: push eax
00889802: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00889807: mov var_000000F4, eax
0088980D: mov var_000000FC, 00000008h
00889817: lea eax, var_24
0088981A: mov var_00000138, eax
00889820: mov var_00000140, 0000400Ch
0088982A: cmp [008F2010h], 00000000h
00889831: jnz 88984Eh
00889833: push 008F2010h
00889838: push 00433984h
0088983D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00889842: mov var_00000220, 008F2010h
0088984C: jmp 889858h
0088984E: mov var_00000220, 008F2010h
00889858: push 00000000h
0088985A: push 00000014h
0088985C: push 00440E58h
00889861: push 00000010h
00889863: pop eax
00889864: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889869: lea esi, var_00000140
0088986F: mov edi, esp
00889871: movsd 
00889872: movsd 
00889873: movsd 
00889874: movsd 
00889875: push 00000001h
00889877: push 00000000h
00889879: push 00440E48h
0088987E: push 00000000h
00889880: push 00000018h
00889882: mov eax, var_00000220
00889888: mov eax, [eax]
0088988A: mov ecx, var_00000220
00889890: mov ecx, [ecx]
00889892: mov ecx, [ecx]
00889894: push eax
00889895: call [ecx+0000054Ch]
0088989B: push eax
0088989C: lea eax, var_4C
0088989F: push eax
008898A0: call 00410A84h ; Set (object)
008898A5: push eax
008898A6: lea eax, var_0000009C
008898AC: push eax
008898AD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008898B2: add esp, 00000010h
008898B5: push eax
008898B6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008898BB: push eax
008898BC: lea eax, var_50
008898BF: push eax
008898C0: call 00410A84h ; Set (object)
008898C5: push eax
008898C6: lea eax, var_000000AC
008898CC: push eax
008898CD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008898D2: add esp, 00000020h
008898D5: push eax
008898D6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008898DB: push eax
008898DC: lea eax, var_54
008898DF: push eax
008898E0: call 00410A84h ; Set (object)
008898E5: push eax
008898E6: lea eax, var_000000BC
008898EC: push eax
008898ED: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008898F2: add esp, 00000010h
008898F5: push eax
008898F6: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008898FB: mov var_000000D4, eax
00889901: mov var_000000DC, 00000008h
0088990B: push 00000010h
0088990D: pop eax
0088990E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889913: lea esi, var_00000160
00889919: mov edi, esp
0088991B: movsd 
0088991C: movsd 
0088991D: movsd 
0088991E: movsd 
0088991F: push 00000010h
00889921: pop eax
00889922: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889927: lea esi, var_000000FC
0088992D: mov edi, esp
0088992F: movsd 
00889930: movsd 
00889931: movsd 
00889932: movsd 
00889933: push 00000001h
00889935: push 00000010h
00889937: push 00440E58h
0088993C: push 00000010h
0088993E: pop eax
0088993F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889944: lea esi, var_000000DC
0088994A: mov edi, esp
0088994C: movsd 
0088994D: movsd 
0088994E: movsd 
0088994F: movsd 
00889950: push 00000001h
00889952: push 00000000h
00889954: push 00440E48h
00889959: push 00000000h
0088995B: push 00000018h
0088995D: push var_00000198
00889963: lea eax, var_000000CC
00889969: push eax
0088996A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088996F: add esp, 00000010h
00889972: push eax
00889973: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889978: push eax
00889979: lea eax, var_58
0088997C: push eax
0088997D: call 00410A84h ; Set (object)
00889982: push eax
00889983: lea eax, var_000000EC
00889989: push eax
0088998A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088998F: add esp, 00000020h
00889992: push eax
00889993: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889998: push eax
00889999: lea eax, var_5C
0088999C: push eax
0088999D: call 00410A84h ; Set (object)
008899A2: push eax
008899A3: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
008899A8: add esp, 0000002Ch
008899AB: lea eax, var_5C
008899AE: push eax
008899AF: lea eax, var_58
008899B2: push eax
008899B3: lea eax, var_54
008899B6: push eax
008899B7: lea eax, var_50
008899BA: push eax
008899BB: lea eax, var_4C
008899BE: push eax
008899BF: lea eax, var_48
008899C2: push eax
008899C3: lea eax, var_44
008899C6: push eax
008899C7: lea eax, var_40
008899CA: push eax
008899CB: push 00000008h
008899CD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008899D2: add esp, 00000024h
008899D5: lea eax, var_000000FC
008899DB: push eax
008899DC: lea eax, var_000000EC
008899E2: push eax
008899E3: lea eax, var_000000DC
008899E9: push eax
008899EA: lea eax, var_000000CC
008899F0: push eax
008899F1: lea eax, var_000000BC
008899F7: push eax
008899F8: lea eax, var_000000AC
008899FE: push eax
008899FF: lea eax, var_0000009C
00889A05: push eax
00889A06: lea eax, var_0000008C
00889A0C: push eax
00889A0D: lea eax, var_7C
00889A10: push eax
00889A11: lea eax, var_6C
00889A14: push eax
00889A15: push 0000000Ah
00889A17: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00889A1C: add esp, 0000002Ch
00889A1F: mov var_00000128, 00000005h
00889A29: mov var_00000130, 00000003h
00889A33: and var_00000148, 00000000h
00889A3A: mov var_00000150, 00000008h
00889A44: lea eax, var_24
00889A47: mov var_00000108, eax
00889A4D: mov var_00000110, 0000400Ch
00889A57: cmp [008F2010h], 00000000h
00889A5E: jnz 889A7Bh
00889A60: push 008F2010h
00889A65: push 00433984h
00889A6A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00889A6F: mov var_00000224, 008F2010h
00889A79: jmp 889A85h
00889A7B: mov var_00000224, 008F2010h
00889A85: push 00000000h
00889A87: push 00000014h
00889A89: push 00440E58h
00889A8E: push 00000010h
00889A90: pop eax
00889A91: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889A96: lea esi, var_00000110
00889A9C: mov edi, esp
00889A9E: movsd 
00889A9F: movsd 
00889AA0: movsd 
00889AA1: movsd 
00889AA2: push 00000001h
00889AA4: push 00000000h
00889AA6: push 00440E48h
00889AAB: push 00000000h
00889AAD: push 00000018h
00889AAF: mov eax, var_00000224
00889AB5: mov eax, [eax]
00889AB7: mov ecx, var_00000224
00889ABD: mov ecx, [ecx]
00889ABF: mov ecx, [ecx]
00889AC1: push eax
00889AC2: call [ecx+00000550h]
00889AC8: push eax
00889AC9: lea eax, var_40
00889ACC: push eax
00889ACD: call 00410A84h ; Set (object)
00889AD2: push eax
00889AD3: lea eax, var_6C
00889AD6: push eax
00889AD7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00889ADC: add esp, 00000010h
00889ADF: push eax
00889AE0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889AE5: push eax
00889AE6: lea eax, var_44
00889AE9: push eax
00889AEA: call 00410A84h ; Set (object)
00889AEF: push eax
00889AF0: lea eax, var_7C
00889AF3: push eax
00889AF4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00889AF9: add esp, 00000020h
00889AFC: push eax
00889AFD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889B02: push eax
00889B03: lea eax, var_48
00889B06: push eax
00889B07: call 00410A84h ; Set (object)
00889B0C: push eax
00889B0D: lea eax, var_0000008C
00889B13: push eax
00889B14: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00889B19: add esp, 00000010h
00889B1C: push eax
00889B1D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00889B22: mov var_000000A4, eax
00889B28: mov var_000000AC, 00000008h
00889B32: push 00000010h
00889B34: pop eax
00889B35: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889B3A: lea esi, var_00000130
00889B40: mov edi, esp
00889B42: movsd 
00889B43: movsd 
00889B44: movsd 
00889B45: movsd 
00889B46: push 00000010h
00889B48: pop eax
00889B49: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889B4E: lea esi, var_00000150
00889B54: mov edi, esp
00889B56: movsd 
00889B57: movsd 
00889B58: movsd 
00889B59: movsd 
00889B5A: push 00000001h
00889B5C: push 00000010h
00889B5E: push 00440E58h
00889B63: push 00000010h
00889B65: pop eax
00889B66: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889B6B: lea esi, var_000000AC
00889B71: mov edi, esp
00889B73: movsd 
00889B74: movsd 
00889B75: movsd 
00889B76: movsd 
00889B77: push 00000001h
00889B79: push 00000000h
00889B7B: push 00440E48h
00889B80: push 00000000h
00889B82: push 00000018h
00889B84: push var_00000198
00889B8A: lea eax, var_0000009C
00889B90: push eax
00889B91: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00889B96: add esp, 00000010h
00889B99: push eax
00889B9A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889B9F: push eax
00889BA0: lea eax, var_4C
00889BA3: push eax
00889BA4: call 00410A84h ; Set (object)
00889BA9: push eax
00889BAA: lea eax, var_000000BC
00889BB0: push eax
00889BB1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00889BB6: add esp, 00000020h
00889BB9: push eax
00889BBA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889BBF: push eax
00889BC0: lea eax, var_50
00889BC3: push eax
00889BC4: call 00410A84h ; Set (object)
00889BC9: push eax
00889BCA: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
00889BCF: add esp, 0000002Ch
00889BD2: lea eax, var_50
00889BD5: push eax
00889BD6: lea eax, var_4C
00889BD9: push eax
00889BDA: lea eax, var_48
00889BDD: push eax
00889BDE: lea eax, var_44
00889BE1: push eax
00889BE2: lea eax, var_40
00889BE5: push eax
00889BE6: push 00000005h
00889BE8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00889BED: add esp, 00000018h
00889BF0: lea eax, var_000000BC
00889BF6: push eax
00889BF7: lea eax, var_000000AC
00889BFD: push eax
00889BFE: lea eax, var_0000009C
00889C04: push eax
00889C05: lea eax, var_0000008C
00889C0B: push eax
00889C0C: lea eax, var_7C
00889C0F: push eax
00889C10: lea eax, var_6C
00889C13: push eax
00889C14: push 00000006h
00889C16: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00889C1B: add esp, 0000001Ch
00889C1E: mov var_00000128, 00000006h
00889C28: mov var_00000130, 00000003h
00889C32: mov var_00000148, 0044176Ch ; Waiting...
00889C3C: mov var_00000150, 00000008h
00889C46: lea eax, var_24
00889C49: mov var_00000108, eax
00889C4F: mov var_00000110, 0000400Ch
00889C59: cmp [008F2010h], 00000000h
00889C60: jnz 889C7Dh
00889C62: push 008F2010h
00889C67: push 00433984h
00889C6C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00889C71: mov var_00000228, 008F2010h
00889C7B: jmp 889C87h
00889C7D: mov var_00000228, 008F2010h
00889C87: push 00000000h
00889C89: push 00000014h
00889C8B: push 00440E58h
00889C90: push 00000010h
00889C92: pop eax
00889C93: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889C98: lea esi, var_00000110
00889C9E: mov edi, esp
00889CA0: movsd 
00889CA1: movsd 
00889CA2: movsd 
00889CA3: movsd 
00889CA4: push 00000001h
00889CA6: push 00000000h
00889CA8: push 00440E48h
00889CAD: push 00000000h
00889CAF: push 00000018h
00889CB1: mov eax, var_00000228
00889CB7: mov eax, [eax]
00889CB9: mov ecx, var_00000228
00889CBF: mov ecx, [ecx]
00889CC1: mov ecx, [ecx]
00889CC3: push eax
00889CC4: call [ecx+00000550h]
00889CCA: push eax
00889CCB: lea eax, var_40
00889CCE: push eax
00889CCF: call 00410A84h ; Set (object)
00889CD4: push eax
00889CD5: lea eax, var_6C
00889CD8: push eax
00889CD9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00889CDE: add esp, 00000010h
00889CE1: push eax
00889CE2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889CE7: push eax
00889CE8: lea eax, var_44
00889CEB: push eax
00889CEC: call 00410A84h ; Set (object)
00889CF1: push eax
00889CF2: lea eax, var_7C
00889CF5: push eax
00889CF6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00889CFB: add esp, 00000020h
00889CFE: push eax
00889CFF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889D04: push eax
00889D05: lea eax, var_48
00889D08: push eax
00889D09: call 00410A84h ; Set (object)
00889D0E: push eax
00889D0F: lea eax, var_0000008C
00889D15: push eax
00889D16: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00889D1B: add esp, 00000010h
00889D1E: push eax
00889D1F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00889D24: mov var_000000A4, eax
00889D2A: mov var_000000AC, 00000008h
00889D34: push 00000010h
00889D36: pop eax
00889D37: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889D3C: lea esi, var_00000130
00889D42: mov edi, esp
00889D44: movsd 
00889D45: movsd 
00889D46: movsd 
00889D47: movsd 
00889D48: push 00000010h
00889D4A: pop eax
00889D4B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889D50: lea esi, var_00000150
00889D56: mov edi, esp
00889D58: movsd 
00889D59: movsd 
00889D5A: movsd 
00889D5B: movsd 
00889D5C: push 00000001h
00889D5E: push 00000010h
00889D60: push 00440E58h
00889D65: push 00000010h
00889D67: pop eax
00889D68: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889D6D: lea esi, var_000000AC
00889D73: mov edi, esp
00889D75: movsd 
00889D76: movsd 
00889D77: movsd 
00889D78: movsd 
00889D79: push 00000001h
00889D7B: push 00000000h
00889D7D: push 00440E48h
00889D82: push 00000000h
00889D84: push 00000018h
00889D86: push var_00000198
00889D8C: lea eax, var_0000009C
00889D92: push eax
00889D93: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00889D98: add esp, 00000010h
00889D9B: push eax
00889D9C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889DA1: push eax
00889DA2: lea eax, var_4C
00889DA5: push eax
00889DA6: call 00410A84h ; Set (object)
00889DAB: push eax
00889DAC: lea eax, var_000000BC
00889DB2: push eax
00889DB3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00889DB8: add esp, 00000020h
00889DBB: push eax
00889DBC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889DC1: push eax
00889DC2: lea eax, var_50
00889DC5: push eax
00889DC6: call 00410A84h ; Set (object)
00889DCB: push eax
00889DCC: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
00889DD1: add esp, 0000002Ch
00889DD4: lea eax, var_50
00889DD7: push eax
00889DD8: lea eax, var_4C
00889DDB: push eax
00889DDC: lea eax, var_48
00889DDF: push eax
00889DE0: lea eax, var_44
00889DE3: push eax
00889DE4: lea eax, var_40
00889DE7: push eax
00889DE8: push 00000005h
00889DEA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00889DEF: add esp, 00000018h
00889DF2: lea eax, var_000000BC
00889DF8: push eax
00889DF9: lea eax, var_000000AC
00889DFF: push eax
00889E00: lea eax, var_0000009C
00889E06: push eax
00889E07: lea eax, var_0000008C
00889E0D: push eax
00889E0E: lea eax, var_7C
00889E11: push eax
00889E12: lea eax, var_6C
00889E15: push eax
00889E16: push 00000006h
00889E18: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00889E1D: add esp, 0000001Ch
00889E20: push 00000000h
00889E22: lea eax, var_00000198
00889E28: push eax
00889E29: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
00889E2E: lea eax, var_24
00889E31: mov var_00000108, eax
00889E37: mov var_00000110, 0000400Ch
00889E41: cmp [008F2010h], 00000000h
00889E48: jnz 889E65h
00889E4A: push 008F2010h
00889E4F: push 00433984h
00889E54: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00889E59: mov var_0000022C, 008F2010h
00889E63: jmp 889E6Fh
00889E65: mov var_0000022C, 008F2010h
00889E6F: push 00000000h
00889E71: push 00000014h
00889E73: push 00440E58h
00889E78: push 00000010h
00889E7A: pop eax
00889E7B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00889E80: lea esi, var_00000110
00889E86: mov edi, esp
00889E88: movsd 
00889E89: movsd 
00889E8A: movsd 
00889E8B: movsd 
00889E8C: push 00000001h
00889E8E: push 00000000h
00889E90: push 00440E48h
00889E95: push 00000000h
00889E97: push 00000018h
00889E99: mov eax, var_0000022C
00889E9F: mov eax, [eax]
00889EA1: mov ecx, var_0000022C
00889EA7: mov ecx, [ecx]
00889EA9: mov ecx, [ecx]
00889EAB: push eax
00889EAC: call [ecx+0000054Ch]
00889EB2: push eax
00889EB3: lea eax, var_40
00889EB6: push eax
00889EB7: call 00410A84h ; Set (object)
00889EBC: push eax
00889EBD: lea eax, var_6C
00889EC0: push eax
00889EC1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00889EC6: add esp, 00000010h
00889EC9: push eax
00889ECA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889ECF: push eax
00889ED0: lea eax, var_44
00889ED3: push eax
00889ED4: call 00410A84h ; Set (object)
00889ED9: push eax
00889EDA: lea eax, var_7C
00889EDD: push eax
00889EDE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00889EE3: add esp, 00000020h
00889EE6: push eax
00889EE7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00889EEC: push eax
00889EED: lea eax, var_48
00889EF0: push eax
00889EF1: call 00410A84h ; Set (object)
00889EF6: push eax
00889EF7: lea eax, var_0000008C
00889EFD: push eax
00889EFE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00889F03: add esp, 00000010h
00889F06: push eax
00889F07: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00889F0C: mov edx, eax
00889F0E: lea ecx, var_38
00889F11: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00889F16: push eax
00889F17: call 004109DCh ; Val(arg_1)
00889F1C: fstp real8 ptr var_00000188
00889F22: push 00000000h
00889F24: push 00000000h
00889F26: push 00000001h
00889F28: push 00000000h
00889F2A: lea eax, var_00000100
00889F30: push eax
00889F31: push 00000010h
00889F33: push 00000880h
00889F38: call 00410946h ; ReDim
00889F3D: add esp, 0000001Ch
00889F40: mov eax, [ebp+08h]
00889F43: mov eax, [eax]
00889F45: push [ebp+08h]
00889F48: call [eax+000002FCh]
00889F4E: mov var_00000094, eax
00889F54: mov var_0000009C, 00000009h
00889F5E: lea esi, var_0000009C
00889F64: push 00000000h
00889F66: push var_00000100
00889F6C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00889F71: mov ecx, eax
00889F73: mov edx, esi
00889F75: call 00410940h ; msvbvm60.dll.__vbaVarZero
00889F7A: mov edx, 0043D7E0h ; x81
00889F7F: lea ecx, var_3C
00889F82: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00889F87: lea eax, var_00000100
00889F8D: push eax
00889F8E: lea eax, var_3C
00889F91: push eax
00889F92: fld real8 ptr var_00000188
00889F98: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00889F9D: push eax
00889F9E: call 007A6910h
00889FA3: lea eax, var_00000100
00889FA9: push eax
00889FAA: push 00000000h
00889FAC: call 00410934h ; Erase
00889FB1: lea eax, var_3C
00889FB4: push eax
00889FB5: lea eax, var_38
00889FB8: push eax
00889FB9: push 00000002h
00889FBB: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00889FC0: add esp, 0000000Ch
00889FC3: lea eax, var_48
00889FC6: push eax
00889FC7: lea eax, var_44
00889FCA: push eax
00889FCB: lea eax, var_40
00889FCE: push eax
00889FCF: push 00000003h
00889FD1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00889FD6: add esp, 00000010h
00889FD9: lea eax, var_0000008C
00889FDF: push eax
00889FE0: lea eax, var_7C
00889FE3: push eax
00889FE4: lea eax, var_6C
00889FE7: push eax
00889FE8: push 00000003h
00889FEA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00889FEF: add esp, 00000010h
00889FF2: call 0041096Ah ; DoEvents
00889FF7: lea eax, var_000001BC
00889FFD: push eax
00889FFE: lea eax, var_000001AC
0088A004: push eax
0088A005: lea eax, var_24
0088A008: push eax
0088A009: call 00410A36h ; Next
0088A00E: mov var_000001E8, eax
0088A014: cmp var_000001E8, 00000000h
0088A01B: jnz 00888937h
0088A021: jmp 0088B831h
0088A026: mov var_00000108, 00000001h
0088A030: mov var_00000110, 00000002h
0088A03A: cmp [008F2010h], 00000000h
0088A041: jnz 88A05Eh
0088A043: push 008F2010h
0088A048: push 00433984h
0088A04D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088A052: mov var_00000230, 008F2010h
0088A05C: jmp 88A068h
0088A05E: mov var_00000230, 008F2010h
0088A068: push 00000000h
0088A06A: push 00000001h
0088A06C: push 00440E48h
0088A071: push 00000000h
0088A073: push 00000018h
0088A075: mov eax, var_00000230
0088A07B: mov eax, [eax]
0088A07D: mov ecx, var_00000230
0088A083: mov ecx, [ecx]
0088A085: mov ecx, [ecx]
0088A087: push eax
0088A088: call [ecx+00000550h]
0088A08E: push eax
0088A08F: lea eax, var_40
0088A092: push eax
0088A093: call 00410A84h ; Set (object)
0088A098: push eax
0088A099: lea eax, var_6C
0088A09C: push eax
0088A09D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A0A2: add esp, 00000010h
0088A0A5: push eax
0088A0A6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088A0AB: push eax
0088A0AC: lea eax, var_44
0088A0AF: push eax
0088A0B0: call 00410A84h ; Set (object)
0088A0B5: push eax
0088A0B6: lea eax, var_7C
0088A0B9: push eax
0088A0BA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A0BF: add esp, 00000010h
0088A0C2: push eax
0088A0C3: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0088A0C8: mov var_00000118, eax
0088A0CE: mov var_00000120, 00000003h
0088A0D8: mov var_00000128, 00000001h
0088A0E2: mov var_00000130, 00000002h
0088A0EC: lea eax, var_00000110
0088A0F2: push eax
0088A0F3: lea eax, var_00000120
0088A0F9: push eax
0088A0FA: lea eax, var_00000130
0088A100: push eax
0088A101: lea eax, var_000001DC
0088A107: push eax
0088A108: lea eax, var_000001CC
0088A10E: push eax
0088A10F: lea eax, var_24
0088A112: push eax
0088A113: call 00410A3Ch ; For
0088A118: mov var_000001EC, eax
0088A11E: lea eax, var_44
0088A121: push eax
0088A122: lea eax, var_40
0088A125: push eax
0088A126: push 00000002h
0088A128: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088A12D: add esp, 0000000Ch
0088A130: lea eax, var_7C
0088A133: push eax
0088A134: lea eax, var_6C
0088A137: push eax
0088A138: push 00000002h
0088A13A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088A13F: add esp, 0000000Ch
0088A142: jmp 0088B824h
0088A147: lea eax, var_24
0088A14A: mov var_00000108, eax
0088A150: mov var_00000110, 0000400Ch
0088A15A: cmp [008F2010h], 00000000h
0088A161: jnz 88A17Eh
0088A163: push 008F2010h
0088A168: push 00433984h
0088A16D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088A172: mov var_00000234, 008F2010h
0088A17C: jmp 88A188h
0088A17E: mov var_00000234, 008F2010h
0088A188: push 00000000h
0088A18A: push 00000004h
0088A18C: push 00440E58h
0088A191: push 00000010h
0088A193: pop eax
0088A194: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088A199: lea esi, var_00000110
0088A19F: mov edi, esp
0088A1A1: movsd 
0088A1A2: movsd 
0088A1A3: movsd 
0088A1A4: movsd 
0088A1A5: push 00000001h
0088A1A7: push 00000000h
0088A1A9: push 00440E48h
0088A1AE: push 00000000h
0088A1B0: push 00000018h
0088A1B2: mov eax, var_00000234
0088A1B8: mov eax, [eax]
0088A1BA: mov ecx, var_00000234
0088A1C0: mov ecx, [ecx]
0088A1C2: mov ecx, [ecx]
0088A1C4: push eax
0088A1C5: call [ecx+00000550h]
0088A1CB: push eax
0088A1CC: lea eax, var_40
0088A1CF: push eax
0088A1D0: call 00410A84h ; Set (object)
0088A1D5: push eax
0088A1D6: lea eax, var_6C
0088A1D9: push eax
0088A1DA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A1DF: add esp, 00000010h
0088A1E2: push eax
0088A1E3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088A1E8: push eax
0088A1E9: lea eax, var_44
0088A1EC: push eax
0088A1ED: call 00410A84h ; Set (object)
0088A1F2: push eax
0088A1F3: lea eax, var_7C
0088A1F6: push eax
0088A1F7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A1FC: add esp, 00000020h
0088A1FF: push eax
0088A200: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088A205: push eax
0088A206: lea eax, var_48
0088A209: push eax
0088A20A: call 00410A84h ; Set (object)
0088A20F: push eax
0088A210: lea eax, var_0000008C
0088A216: push eax
0088A217: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A21C: add esp, 00000010h
0088A21F: push eax
0088A220: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0088A225: sub ax, FFFFh
0088A229: neg ax
0088A22C: sbb eax, eax
0088A22E: inc eax
0088A22F: neg eax
0088A231: mov var_0000018C, ax
0088A238: lea eax, var_48
0088A23B: push eax
0088A23C: lea eax, var_44
0088A23F: push eax
0088A240: lea eax, var_40
0088A243: push eax
0088A244: push 00000003h
0088A246: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088A24B: add esp, 00000010h
0088A24E: lea eax, var_0000008C
0088A254: push eax
0088A255: lea eax, var_7C
0088A258: push eax
0088A259: lea eax, var_6C
0088A25C: push eax
0088A25D: push 00000003h
0088A25F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088A264: add esp, 00000010h
0088A267: movsx eax, word ptr var_0000018C
0088A26E: test eax, eax
0088A270: jz 0088B807h
0088A276: mov eax, [ebp+08h]
0088A279: mov eax, [eax]
0088A27B: push [ebp+08h]
0088A27E: call [eax+00000314h]
0088A284: push eax
0088A285: lea eax, var_0000019C
0088A28B: push eax
0088A28C: call 00410A84h ; Set (object)
0088A291: mov var_00000128, 80020004h
0088A29B: mov var_00000130, 0000000Ah
0088A2A5: lea eax, var_24
0088A2A8: mov var_00000108, eax
0088A2AE: mov var_00000110, 0000400Ch
0088A2B8: cmp [008F2010h], 00000000h
0088A2BF: jnz 88A2DCh
0088A2C1: push 008F2010h
0088A2C6: push 00433984h
0088A2CB: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088A2D0: mov var_00000238, 008F2010h
0088A2DA: jmp 88A2E6h
0088A2DC: mov var_00000238, 008F2010h
0088A2E6: push 00000000h
0088A2E8: push 00000014h
0088A2EA: push 00440E58h
0088A2EF: push 00000010h
0088A2F1: pop eax
0088A2F2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088A2F7: lea esi, var_00000110
0088A2FD: mov edi, esp
0088A2FF: movsd 
0088A300: movsd 
0088A301: movsd 
0088A302: movsd 
0088A303: push 00000001h
0088A305: push 00000000h
0088A307: push 00440E48h
0088A30C: push 00000000h
0088A30E: push 00000018h
0088A310: mov eax, var_00000238
0088A316: mov eax, [eax]
0088A318: mov ecx, var_00000238
0088A31E: mov ecx, [ecx]
0088A320: mov ecx, [ecx]
0088A322: push eax
0088A323: call [ecx+00000550h]
0088A329: push eax
0088A32A: lea eax, var_40
0088A32D: push eax
0088A32E: call 00410A84h ; Set (object)
0088A333: push eax
0088A334: lea eax, var_6C
0088A337: push eax
0088A338: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A33D: add esp, 00000010h
0088A340: push eax
0088A341: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088A346: push eax
0088A347: lea eax, var_44
0088A34A: push eax
0088A34B: call 00410A84h ; Set (object)
0088A350: push eax
0088A351: lea eax, var_7C
0088A354: push eax
0088A355: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A35A: add esp, 00000020h
0088A35D: push eax
0088A35E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088A363: push eax
0088A364: lea eax, var_48
0088A367: push eax
0088A368: call 00410A84h ; Set (object)
0088A36D: push eax
0088A36E: lea eax, var_0000008C
0088A374: push eax
0088A375: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A37A: add esp, 00000010h
0088A37D: push eax
0088A37E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088A383: mov var_000000D4, eax
0088A389: mov var_000000DC, 00000008h
0088A393: lea eax, var_24
0088A396: mov var_00000118, eax
0088A39C: mov var_00000120, 0000400Ch
0088A3A6: cmp [008F2010h], 00000000h
0088A3AD: jnz 88A3CAh
0088A3AF: push 008F2010h
0088A3B4: push 00433984h
0088A3B9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088A3BE: mov var_0000023C, 008F2010h
0088A3C8: jmp 88A3D4h
0088A3CA: mov var_0000023C, 008F2010h
0088A3D4: push 00000000h
0088A3D6: push 00000000h
0088A3D8: push 00440E58h
0088A3DD: push 00000010h
0088A3DF: pop eax
0088A3E0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088A3E5: lea esi, var_00000120
0088A3EB: mov edi, esp
0088A3ED: movsd 
0088A3EE: movsd 
0088A3EF: movsd 
0088A3F0: movsd 
0088A3F1: push 00000001h
0088A3F3: push 00000000h
0088A3F5: push 00440E48h
0088A3FA: push 00000000h
0088A3FC: push 00000018h
0088A3FE: mov eax, var_0000023C
0088A404: mov eax, [eax]
0088A406: mov ecx, var_0000023C
0088A40C: mov ecx, [ecx]
0088A40E: mov ecx, [ecx]
0088A410: push eax
0088A411: call [ecx+00000550h]
0088A417: push eax
0088A418: lea eax, var_4C
0088A41B: push eax
0088A41C: call 00410A84h ; Set (object)
0088A421: push eax
0088A422: lea eax, var_0000009C
0088A428: push eax
0088A429: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A42E: add esp, 00000010h
0088A431: push eax
0088A432: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088A437: push eax
0088A438: lea eax, var_50
0088A43B: push eax
0088A43C: call 00410A84h ; Set (object)
0088A441: push eax
0088A442: lea eax, var_000000AC
0088A448: push eax
0088A449: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A44E: add esp, 00000020h
0088A451: push eax
0088A452: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088A457: push eax
0088A458: lea eax, var_54
0088A45B: push eax
0088A45C: call 00410A84h ; Set (object)
0088A461: push eax
0088A462: lea eax, var_000000BC
0088A468: push eax
0088A469: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A46E: add esp, 00000010h
0088A471: push eax
0088A472: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088A477: mov var_000000E4, eax
0088A47D: mov var_000000EC, 00000008h
0088A487: push 00000010h
0088A489: pop eax
0088A48A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088A48F: lea esi, var_00000130
0088A495: mov edi, esp
0088A497: movsd 
0088A498: movsd 
0088A499: movsd 
0088A49A: movsd 
0088A49B: push 00000010h
0088A49D: pop eax
0088A49E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088A4A3: lea esi, var_000000DC
0088A4A9: mov edi, esp
0088A4AB: movsd 
0088A4AC: movsd 
0088A4AD: movsd 
0088A4AE: movsd 
0088A4AF: push 00000010h
0088A4B1: pop eax
0088A4B2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088A4B7: lea esi, var_000000EC
0088A4BD: mov edi, esp
0088A4BF: movsd 
0088A4C0: movsd 
0088A4C1: movsd 
0088A4C2: movsd 
0088A4C3: push 00000003h
0088A4C5: push 00000002h
0088A4C7: push 00440E48h
0088A4CC: push 00000000h
0088A4CE: push 00000018h
0088A4D0: push var_0000019C
0088A4D6: lea eax, var_000000CC
0088A4DC: push eax
0088A4DD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A4E2: add esp, 00000010h
0088A4E5: push eax
0088A4E6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088A4EB: push eax
0088A4EC: lea eax, var_58
0088A4EF: push eax
0088A4F0: call 00410A84h ; Set (object)
0088A4F5: push eax
0088A4F6: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0088A4FB: add esp, 0000003Ch
0088A4FE: lea eax, var_58
0088A501: push eax
0088A502: lea eax, var_54
0088A505: push eax
0088A506: lea eax, var_50
0088A509: push eax
0088A50A: lea eax, var_4C
0088A50D: push eax
0088A50E: lea eax, var_48
0088A511: push eax
0088A512: lea eax, var_44
0088A515: push eax
0088A516: lea eax, var_40
0088A519: push eax
0088A51A: push 00000007h
0088A51C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088A521: add esp, 00000020h
0088A524: lea eax, var_000000EC
0088A52A: push eax
0088A52B: lea eax, var_000000DC
0088A531: push eax
0088A532: lea eax, var_000000CC
0088A538: push eax
0088A539: lea eax, var_000000BC
0088A53F: push eax
0088A540: lea eax, var_000000AC
0088A546: push eax
0088A547: lea eax, var_0000009C
0088A54D: push eax
0088A54E: lea eax, var_0000008C
0088A554: push eax
0088A555: lea eax, var_7C
0088A558: push eax
0088A559: lea eax, var_6C
0088A55C: push eax
0088A55D: push 00000009h
0088A55F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088A564: add esp, 00000028h
0088A567: mov var_00000158, 00000001h
0088A571: mov var_00000160, 00000003h
0088A57B: mov var_00000118, 00000001h
0088A585: mov var_00000120, 00000003h
0088A58F: lea eax, var_24
0088A592: mov var_00000108, eax
0088A598: mov var_00000110, 0000400Ch
0088A5A2: cmp [008F2010h], 00000000h
0088A5A9: jnz 88A5C6h
0088A5AB: push 008F2010h
0088A5B0: push 00433984h
0088A5B5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088A5BA: mov var_00000240, 008F2010h
0088A5C4: jmp 88A5D0h
0088A5C6: mov var_00000240, 008F2010h
0088A5D0: push 00000010h
0088A5D2: pop eax
0088A5D3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088A5D8: lea esi, var_00000120
0088A5DE: mov edi, esp
0088A5E0: movsd 
0088A5E1: movsd 
0088A5E2: movsd 
0088A5E3: movsd 
0088A5E4: push 00000001h
0088A5E6: push 00000010h
0088A5E8: push 00440E58h
0088A5ED: push 00000010h
0088A5EF: pop eax
0088A5F0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088A5F5: lea esi, var_00000110
0088A5FB: mov edi, esp
0088A5FD: movsd 
0088A5FE: movsd 
0088A5FF: movsd 
0088A600: movsd 
0088A601: push 00000001h
0088A603: push 00000000h
0088A605: push 00440E48h
0088A60A: push 00000000h
0088A60C: push 00000018h
0088A60E: mov eax, var_00000240
0088A614: mov eax, [eax]
0088A616: mov ecx, var_00000240
0088A61C: mov ecx, [ecx]
0088A61E: mov ecx, [ecx]
0088A620: push eax
0088A621: call [ecx+00000550h]
0088A627: push eax
0088A628: lea eax, var_40
0088A62B: push eax
0088A62C: call 00410A84h ; Set (object)
0088A631: push eax
0088A632: lea eax, var_6C
0088A635: push eax
0088A636: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A63B: add esp, 00000010h
0088A63E: push eax
0088A63F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088A644: push eax
0088A645: lea eax, var_44
0088A648: push eax
0088A649: call 00410A84h ; Set (object)
0088A64E: push eax
0088A64F: lea eax, var_7C
0088A652: push eax
0088A653: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A658: add esp, 00000020h
0088A65B: push eax
0088A65C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088A661: push eax
0088A662: lea eax, var_48
0088A665: push eax
0088A666: call 00410A84h ; Set (object)
0088A66B: push eax
0088A66C: lea eax, var_0000008C
0088A672: push eax
0088A673: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A678: add esp, 00000020h
0088A67B: push eax
0088A67C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088A681: mov var_000000F4, eax
0088A687: mov var_000000FC, 00000008h
0088A691: lea eax, var_24
0088A694: mov var_00000138, eax
0088A69A: mov var_00000140, 0000400Ch
0088A6A4: cmp [008F2010h], 00000000h
0088A6AB: jnz 88A6C8h
0088A6AD: push 008F2010h
0088A6B2: push 00433984h
0088A6B7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088A6BC: mov var_00000244, 008F2010h
0088A6C6: jmp 88A6D2h
0088A6C8: mov var_00000244, 008F2010h
0088A6D2: push 00000000h
0088A6D4: push 00000014h
0088A6D6: push 00440E58h
0088A6DB: push 00000010h
0088A6DD: pop eax
0088A6DE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088A6E3: lea esi, var_00000140
0088A6E9: mov edi, esp
0088A6EB: movsd 
0088A6EC: movsd 
0088A6ED: movsd 
0088A6EE: movsd 
0088A6EF: push 00000001h
0088A6F1: push 00000000h
0088A6F3: push 00440E48h
0088A6F8: push 00000000h
0088A6FA: push 00000018h
0088A6FC: mov eax, var_00000244
0088A702: mov eax, [eax]
0088A704: mov ecx, var_00000244
0088A70A: mov ecx, [ecx]
0088A70C: mov ecx, [ecx]
0088A70E: push eax
0088A70F: call [ecx+00000550h]
0088A715: push eax
0088A716: lea eax, var_4C
0088A719: push eax
0088A71A: call 00410A84h ; Set (object)
0088A71F: push eax
0088A720: lea eax, var_0000009C
0088A726: push eax
0088A727: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A72C: add esp, 00000010h
0088A72F: push eax
0088A730: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088A735: push eax
0088A736: lea eax, var_50
0088A739: push eax
0088A73A: call 00410A84h ; Set (object)
0088A73F: push eax
0088A740: lea eax, var_000000AC
0088A746: push eax
0088A747: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A74C: add esp, 00000020h
0088A74F: push eax
0088A750: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088A755: push eax
0088A756: lea eax, var_54
0088A759: push eax
0088A75A: call 00410A84h ; Set (object)
0088A75F: push eax
0088A760: lea eax, var_000000BC
0088A766: push eax
0088A767: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A76C: add esp, 00000010h
0088A76F: push eax
0088A770: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088A775: mov var_000000D4, eax
0088A77B: mov var_000000DC, 00000008h
0088A785: push 00000010h
0088A787: pop eax
0088A788: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088A78D: lea esi, var_00000160
0088A793: mov edi, esp
0088A795: movsd 
0088A796: movsd 
0088A797: movsd 
0088A798: movsd 
0088A799: push 00000010h
0088A79B: pop eax
0088A79C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088A7A1: lea esi, var_000000FC
0088A7A7: mov edi, esp
0088A7A9: movsd 
0088A7AA: movsd 
0088A7AB: movsd 
0088A7AC: movsd 
0088A7AD: push 00000001h
0088A7AF: push 00000010h
0088A7B1: push 00440E58h
0088A7B6: push 00000010h
0088A7B8: pop eax
0088A7B9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088A7BE: lea esi, var_000000DC
0088A7C4: mov edi, esp
0088A7C6: movsd 
0088A7C7: movsd 
0088A7C8: movsd 
0088A7C9: movsd 
0088A7CA: push 00000001h
0088A7CC: push 00000000h
0088A7CE: push 00440E48h
0088A7D3: push 00000000h
0088A7D5: push 00000018h
0088A7D7: push var_0000019C
0088A7DD: lea eax, var_000000CC
0088A7E3: push eax
0088A7E4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A7E9: add esp, 00000010h
0088A7EC: push eax
0088A7ED: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088A7F2: push eax
0088A7F3: lea eax, var_58
0088A7F6: push eax
0088A7F7: call 00410A84h ; Set (object)
0088A7FC: push eax
0088A7FD: lea eax, var_000000EC
0088A803: push eax
0088A804: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A809: add esp, 00000020h
0088A80C: push eax
0088A80D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088A812: push eax
0088A813: lea eax, var_5C
0088A816: push eax
0088A817: call 00410A84h ; Set (object)
0088A81C: push eax
0088A81D: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
0088A822: add esp, 0000002Ch
0088A825: lea eax, var_5C
0088A828: push eax
0088A829: lea eax, var_58
0088A82C: push eax
0088A82D: lea eax, var_54
0088A830: push eax
0088A831: lea eax, var_50
0088A834: push eax
0088A835: lea eax, var_4C
0088A838: push eax
0088A839: lea eax, var_48
0088A83C: push eax
0088A83D: lea eax, var_44
0088A840: push eax
0088A841: lea eax, var_40
0088A844: push eax
0088A845: push 00000008h
0088A847: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088A84C: add esp, 00000024h
0088A84F: lea eax, var_000000FC
0088A855: push eax
0088A856: lea eax, var_000000EC
0088A85C: push eax
0088A85D: lea eax, var_000000DC
0088A863: push eax
0088A864: lea eax, var_000000CC
0088A86A: push eax
0088A86B: lea eax, var_000000BC
0088A871: push eax
0088A872: lea eax, var_000000AC
0088A878: push eax
0088A879: lea eax, var_0000009C
0088A87F: push eax
0088A880: lea eax, var_0000008C
0088A886: push eax
0088A887: lea eax, var_7C
0088A88A: push eax
0088A88B: lea eax, var_6C
0088A88E: push eax
0088A88F: push 0000000Ah
0088A891: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088A896: add esp, 0000002Ch
0088A899: mov var_00000158, 00000002h
0088A8A3: mov var_00000160, 00000003h
0088A8AD: mov var_00000118, 00000002h
0088A8B7: mov var_00000120, 00000003h
0088A8C1: lea eax, var_24
0088A8C4: mov var_00000108, eax
0088A8CA: mov var_00000110, 0000400Ch
0088A8D4: cmp [008F2010h], 00000000h
0088A8DB: jnz 88A8F8h
0088A8DD: push 008F2010h
0088A8E2: push 00433984h
0088A8E7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088A8EC: mov var_00000248, 008F2010h
0088A8F6: jmp 88A902h
0088A8F8: mov var_00000248, 008F2010h
0088A902: push 00000010h
0088A904: pop eax
0088A905: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088A90A: lea esi, var_00000120
0088A910: mov edi, esp
0088A912: movsd 
0088A913: movsd 
0088A914: movsd 
0088A915: movsd 
0088A916: push 00000001h
0088A918: push 00000010h
0088A91A: push 00440E58h
0088A91F: push 00000010h
0088A921: pop eax
0088A922: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088A927: lea esi, var_00000110
0088A92D: mov edi, esp
0088A92F: movsd 
0088A930: movsd 
0088A931: movsd 
0088A932: movsd 
0088A933: push 00000001h
0088A935: push 00000000h
0088A937: push 00440E48h
0088A93C: push 00000000h
0088A93E: push 00000018h
0088A940: mov eax, var_00000248
0088A946: mov eax, [eax]
0088A948: mov ecx, var_00000248
0088A94E: mov ecx, [ecx]
0088A950: mov ecx, [ecx]
0088A952: push eax
0088A953: call [ecx+00000550h]
0088A959: push eax
0088A95A: lea eax, var_40
0088A95D: push eax
0088A95E: call 00410A84h ; Set (object)
0088A963: push eax
0088A964: lea eax, var_6C
0088A967: push eax
0088A968: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A96D: add esp, 00000010h
0088A970: push eax
0088A971: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088A976: push eax
0088A977: lea eax, var_44
0088A97A: push eax
0088A97B: call 00410A84h ; Set (object)
0088A980: push eax
0088A981: lea eax, var_7C
0088A984: push eax
0088A985: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A98A: add esp, 00000020h
0088A98D: push eax
0088A98E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088A993: push eax
0088A994: lea eax, var_48
0088A997: push eax
0088A998: call 00410A84h ; Set (object)
0088A99D: push eax
0088A99E: lea eax, var_0000008C
0088A9A4: push eax
0088A9A5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088A9AA: add esp, 00000020h
0088A9AD: push eax
0088A9AE: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088A9B3: mov var_000000F4, eax
0088A9B9: mov var_000000FC, 00000008h
0088A9C3: lea eax, var_24
0088A9C6: mov var_00000138, eax
0088A9CC: mov var_00000140, 0000400Ch
0088A9D6: cmp [008F2010h], 00000000h
0088A9DD: jnz 88A9FAh
0088A9DF: push 008F2010h
0088A9E4: push 00433984h
0088A9E9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088A9EE: mov var_0000024C, 008F2010h
0088A9F8: jmp 88AA04h
0088A9FA: mov var_0000024C, 008F2010h
0088AA04: push 00000000h
0088AA06: push 00000014h
0088AA08: push 00440E58h
0088AA0D: push 00000010h
0088AA0F: pop eax
0088AA10: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088AA15: lea esi, var_00000140
0088AA1B: mov edi, esp
0088AA1D: movsd 
0088AA1E: movsd 
0088AA1F: movsd 
0088AA20: movsd 
0088AA21: push 00000001h
0088AA23: push 00000000h
0088AA25: push 00440E48h
0088AA2A: push 00000000h
0088AA2C: push 00000018h
0088AA2E: mov eax, var_0000024C
0088AA34: mov eax, [eax]
0088AA36: mov ecx, var_0000024C
0088AA3C: mov ecx, [ecx]
0088AA3E: mov ecx, [ecx]
0088AA40: push eax
0088AA41: call [ecx+00000550h]
0088AA47: push eax
0088AA48: lea eax, var_4C
0088AA4B: push eax
0088AA4C: call 00410A84h ; Set (object)
0088AA51: push eax
0088AA52: lea eax, var_0000009C
0088AA58: push eax
0088AA59: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088AA5E: add esp, 00000010h
0088AA61: push eax
0088AA62: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088AA67: push eax
0088AA68: lea eax, var_50
0088AA6B: push eax
0088AA6C: call 00410A84h ; Set (object)
0088AA71: push eax
0088AA72: lea eax, var_000000AC
0088AA78: push eax
0088AA79: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088AA7E: add esp, 00000020h
0088AA81: push eax
0088AA82: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088AA87: push eax
0088AA88: lea eax, var_54
0088AA8B: push eax
0088AA8C: call 00410A84h ; Set (object)
0088AA91: push eax
0088AA92: lea eax, var_000000BC
0088AA98: push eax
0088AA99: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088AA9E: add esp, 00000010h
0088AAA1: push eax
0088AAA2: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088AAA7: mov var_000000D4, eax
0088AAAD: mov var_000000DC, 00000008h
0088AAB7: push 00000010h
0088AAB9: pop eax
0088AABA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088AABF: lea esi, var_00000160
0088AAC5: mov edi, esp
0088AAC7: movsd 
0088AAC8: movsd 
0088AAC9: movsd 
0088AACA: movsd 
0088AACB: push 00000010h
0088AACD: pop eax
0088AACE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088AAD3: lea esi, var_000000FC
0088AAD9: mov edi, esp
0088AADB: movsd 
0088AADC: movsd 
0088AADD: movsd 
0088AADE: movsd 
0088AADF: push 00000001h
0088AAE1: push 00000010h
0088AAE3: push 00440E58h
0088AAE8: push 00000010h
0088AAEA: pop eax
0088AAEB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088AAF0: lea esi, var_000000DC
0088AAF6: mov edi, esp
0088AAF8: movsd 
0088AAF9: movsd 
0088AAFA: movsd 
0088AAFB: movsd 
0088AAFC: push 00000001h
0088AAFE: push 00000000h
0088AB00: push 00440E48h
0088AB05: push 00000000h
0088AB07: push 00000018h
0088AB09: push var_0000019C
0088AB0F: lea eax, var_000000CC
0088AB15: push eax
0088AB16: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088AB1B: add esp, 00000010h
0088AB1E: push eax
0088AB1F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088AB24: push eax
0088AB25: lea eax, var_58
0088AB28: push eax
0088AB29: call 00410A84h ; Set (object)
0088AB2E: push eax
0088AB2F: lea eax, var_000000EC
0088AB35: push eax
0088AB36: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088AB3B: add esp, 00000020h
0088AB3E: push eax
0088AB3F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088AB44: push eax
0088AB45: lea eax, var_5C
0088AB48: push eax
0088AB49: call 00410A84h ; Set (object)
0088AB4E: push eax
0088AB4F: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
0088AB54: add esp, 0000002Ch
0088AB57: lea eax, var_5C
0088AB5A: push eax
0088AB5B: lea eax, var_58
0088AB5E: push eax
0088AB5F: lea eax, var_54
0088AB62: push eax
0088AB63: lea eax, var_50
0088AB66: push eax
0088AB67: lea eax, var_4C
0088AB6A: push eax
0088AB6B: lea eax, var_48
0088AB6E: push eax
0088AB6F: lea eax, var_44
0088AB72: push eax
0088AB73: lea eax, var_40
0088AB76: push eax
0088AB77: push 00000008h
0088AB79: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088AB7E: add esp, 00000024h
0088AB81: lea eax, var_000000FC
0088AB87: push eax
0088AB88: lea eax, var_000000EC
0088AB8E: push eax
0088AB8F: lea eax, var_000000DC
0088AB95: push eax
0088AB96: lea eax, var_000000CC
0088AB9C: push eax
0088AB9D: lea eax, var_000000BC
0088ABA3: push eax
0088ABA4: lea eax, var_000000AC
0088ABAA: push eax
0088ABAB: lea eax, var_0000009C
0088ABB1: push eax
0088ABB2: lea eax, var_0000008C
0088ABB8: push eax
0088ABB9: lea eax, var_7C
0088ABBC: push eax
0088ABBD: lea eax, var_6C
0088ABC0: push eax
0088ABC1: push 0000000Ah
0088ABC3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088ABC8: add esp, 0000002Ch
0088ABCB: mov var_00000158, 00000003h
0088ABD5: mov var_00000160, 00000003h
0088ABDF: mov var_00000118, 00000006h
0088ABE9: mov var_00000120, 00000003h
0088ABF3: lea eax, var_24
0088ABF6: mov var_00000108, eax
0088ABFC: mov var_00000110, 0000400Ch
0088AC06: cmp [008F2010h], 00000000h
0088AC0D: jnz 88AC2Ah
0088AC0F: push 008F2010h
0088AC14: push 00433984h
0088AC19: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088AC1E: mov var_00000250, 008F2010h
0088AC28: jmp 88AC34h
0088AC2A: mov var_00000250, 008F2010h
0088AC34: push 00000010h
0088AC36: pop eax
0088AC37: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088AC3C: lea esi, var_00000120
0088AC42: mov edi, esp
0088AC44: movsd 
0088AC45: movsd 
0088AC46: movsd 
0088AC47: movsd 
0088AC48: push 00000001h
0088AC4A: push 00000010h
0088AC4C: push 00440E58h
0088AC51: push 00000010h
0088AC53: pop eax
0088AC54: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088AC59: lea esi, var_00000110
0088AC5F: mov edi, esp
0088AC61: movsd 
0088AC62: movsd 
0088AC63: movsd 
0088AC64: movsd 
0088AC65: push 00000001h
0088AC67: push 00000000h
0088AC69: push 00440E48h
0088AC6E: push 00000000h
0088AC70: push 00000018h
0088AC72: mov eax, var_00000250
0088AC78: mov eax, [eax]
0088AC7A: mov ecx, var_00000250
0088AC80: mov ecx, [ecx]
0088AC82: mov ecx, [ecx]
0088AC84: push eax
0088AC85: call [ecx+00000550h]
0088AC8B: push eax
0088AC8C: lea eax, var_40
0088AC8F: push eax
0088AC90: call 00410A84h ; Set (object)
0088AC95: push eax
0088AC96: lea eax, var_6C
0088AC99: push eax
0088AC9A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088AC9F: add esp, 00000010h
0088ACA2: push eax
0088ACA3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088ACA8: push eax
0088ACA9: lea eax, var_44
0088ACAC: push eax
0088ACAD: call 00410A84h ; Set (object)
0088ACB2: push eax
0088ACB3: lea eax, var_7C
0088ACB6: push eax
0088ACB7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088ACBC: add esp, 00000020h
0088ACBF: push eax
0088ACC0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088ACC5: push eax
0088ACC6: lea eax, var_48
0088ACC9: push eax
0088ACCA: call 00410A84h ; Set (object)
0088ACCF: push eax
0088ACD0: lea eax, var_0000008C
0088ACD6: push eax
0088ACD7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088ACDC: add esp, 00000020h
0088ACDF: push eax
0088ACE0: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088ACE5: mov var_000000F4, eax
0088ACEB: mov var_000000FC, 00000008h
0088ACF5: lea eax, var_24
0088ACF8: mov var_00000138, eax
0088ACFE: mov var_00000140, 0000400Ch
0088AD08: cmp [008F2010h], 00000000h
0088AD0F: jnz 88AD2Ch
0088AD11: push 008F2010h
0088AD16: push 00433984h
0088AD1B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088AD20: mov var_00000254, 008F2010h
0088AD2A: jmp 88AD36h
0088AD2C: mov var_00000254, 008F2010h
0088AD36: push 00000000h
0088AD38: push 00000014h
0088AD3A: push 00440E58h
0088AD3F: push 00000010h
0088AD41: pop eax
0088AD42: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088AD47: lea esi, var_00000140
0088AD4D: mov edi, esp
0088AD4F: movsd 
0088AD50: movsd 
0088AD51: movsd 
0088AD52: movsd 
0088AD53: push 00000001h
0088AD55: push 00000000h
0088AD57: push 00440E48h
0088AD5C: push 00000000h
0088AD5E: push 00000018h
0088AD60: mov eax, var_00000254
0088AD66: mov eax, [eax]
0088AD68: mov ecx, var_00000254
0088AD6E: mov ecx, [ecx]
0088AD70: mov ecx, [ecx]
0088AD72: push eax
0088AD73: call [ecx+00000550h]
0088AD79: push eax
0088AD7A: lea eax, var_4C
0088AD7D: push eax
0088AD7E: call 00410A84h ; Set (object)
0088AD83: push eax
0088AD84: lea eax, var_0000009C
0088AD8A: push eax
0088AD8B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088AD90: add esp, 00000010h
0088AD93: push eax
0088AD94: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088AD99: push eax
0088AD9A: lea eax, var_50
0088AD9D: push eax
0088AD9E: call 00410A84h ; Set (object)
0088ADA3: push eax
0088ADA4: lea eax, var_000000AC
0088ADAA: push eax
0088ADAB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088ADB0: add esp, 00000020h
0088ADB3: push eax
0088ADB4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088ADB9: push eax
0088ADBA: lea eax, var_54
0088ADBD: push eax
0088ADBE: call 00410A84h ; Set (object)
0088ADC3: push eax
0088ADC4: lea eax, var_000000BC
0088ADCA: push eax
0088ADCB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088ADD0: add esp, 00000010h
0088ADD3: push eax
0088ADD4: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088ADD9: mov var_000000D4, eax
0088ADDF: mov var_000000DC, 00000008h
0088ADE9: push 00000010h
0088ADEB: pop eax
0088ADEC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088ADF1: lea esi, var_00000160
0088ADF7: mov edi, esp
0088ADF9: movsd 
0088ADFA: movsd 
0088ADFB: movsd 
0088ADFC: movsd 
0088ADFD: push 00000010h
0088ADFF: pop eax
0088AE00: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088AE05: lea esi, var_000000FC
0088AE0B: mov edi, esp
0088AE0D: movsd 
0088AE0E: movsd 
0088AE0F: movsd 
0088AE10: movsd 
0088AE11: push 00000001h
0088AE13: push 00000010h
0088AE15: push 00440E58h
0088AE1A: push 00000010h
0088AE1C: pop eax
0088AE1D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088AE22: lea esi, var_000000DC
0088AE28: mov edi, esp
0088AE2A: movsd 
0088AE2B: movsd 
0088AE2C: movsd 
0088AE2D: movsd 
0088AE2E: push 00000001h
0088AE30: push 00000000h
0088AE32: push 00440E48h
0088AE37: push 00000000h
0088AE39: push 00000018h
0088AE3B: push var_0000019C
0088AE41: lea eax, var_000000CC
0088AE47: push eax
0088AE48: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088AE4D: add esp, 00000010h
0088AE50: push eax
0088AE51: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088AE56: push eax
0088AE57: lea eax, var_58
0088AE5A: push eax
0088AE5B: call 00410A84h ; Set (object)
0088AE60: push eax
0088AE61: lea eax, var_000000EC
0088AE67: push eax
0088AE68: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088AE6D: add esp, 00000020h
0088AE70: push eax
0088AE71: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088AE76: push eax
0088AE77: lea eax, var_5C
0088AE7A: push eax
0088AE7B: call 00410A84h ; Set (object)
0088AE80: push eax
0088AE81: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
0088AE86: add esp, 0000002Ch
0088AE89: lea eax, var_5C
0088AE8C: push eax
0088AE8D: lea eax, var_58
0088AE90: push eax
0088AE91: lea eax, var_54
0088AE94: push eax
0088AE95: lea eax, var_50
0088AE98: push eax
0088AE99: lea eax, var_4C
0088AE9C: push eax
0088AE9D: lea eax, var_48
0088AEA0: push eax
0088AEA1: lea eax, var_44
0088AEA4: push eax
0088AEA5: lea eax, var_40
0088AEA8: push eax
0088AEA9: push 00000008h
0088AEAB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088AEB0: add esp, 00000024h
0088AEB3: lea eax, var_000000FC
0088AEB9: push eax
0088AEBA: lea eax, var_000000EC
0088AEC0: push eax
0088AEC1: lea eax, var_000000DC
0088AEC7: push eax
0088AEC8: lea eax, var_000000CC
0088AECE: push eax
0088AECF: lea eax, var_000000BC
0088AED5: push eax
0088AED6: lea eax, var_000000AC
0088AEDC: push eax
0088AEDD: lea eax, var_0000009C
0088AEE3: push eax
0088AEE4: lea eax, var_0000008C
0088AEEA: push eax
0088AEEB: lea eax, var_7C
0088AEEE: push eax
0088AEEF: lea eax, var_6C
0088AEF2: push eax
0088AEF3: push 0000000Ah
0088AEF5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088AEFA: add esp, 0000002Ch
0088AEFD: mov var_00000158, 00000004h
0088AF07: mov var_00000160, 00000003h
0088AF11: mov var_00000118, 00000007h
0088AF1B: mov var_00000120, 00000003h
0088AF25: lea eax, var_24
0088AF28: mov var_00000108, eax
0088AF2E: mov var_00000110, 0000400Ch
0088AF38: cmp [008F2010h], 00000000h
0088AF3F: jnz 88AF5Ch
0088AF41: push 008F2010h
0088AF46: push 00433984h
0088AF4B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088AF50: mov var_00000258, 008F2010h
0088AF5A: jmp 88AF66h
0088AF5C: mov var_00000258, 008F2010h
0088AF66: push 00000010h
0088AF68: pop eax
0088AF69: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088AF6E: lea esi, var_00000120
0088AF74: mov edi, esp
0088AF76: movsd 
0088AF77: movsd 
0088AF78: movsd 
0088AF79: movsd 
0088AF7A: push 00000001h
0088AF7C: push 00000010h
0088AF7E: push 00440E58h
0088AF83: push 00000010h
0088AF85: pop eax
0088AF86: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088AF8B: lea esi, var_00000110
0088AF91: mov edi, esp
0088AF93: movsd 
0088AF94: movsd 
0088AF95: movsd 
0088AF96: movsd 
0088AF97: push 00000001h
0088AF99: push 00000000h
0088AF9B: push 00440E48h
0088AFA0: push 00000000h
0088AFA2: push 00000018h
0088AFA4: mov eax, var_00000258
0088AFAA: mov eax, [eax]
0088AFAC: mov ecx, var_00000258
0088AFB2: mov ecx, [ecx]
0088AFB4: mov ecx, [ecx]
0088AFB6: push eax
0088AFB7: call [ecx+00000550h]
0088AFBD: push eax
0088AFBE: lea eax, var_40
0088AFC1: push eax
0088AFC2: call 00410A84h ; Set (object)
0088AFC7: push eax
0088AFC8: lea eax, var_6C
0088AFCB: push eax
0088AFCC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088AFD1: add esp, 00000010h
0088AFD4: push eax
0088AFD5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088AFDA: push eax
0088AFDB: lea eax, var_44
0088AFDE: push eax
0088AFDF: call 00410A84h ; Set (object)
0088AFE4: push eax
0088AFE5: lea eax, var_7C
0088AFE8: push eax
0088AFE9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088AFEE: add esp, 00000020h
0088AFF1: push eax
0088AFF2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088AFF7: push eax
0088AFF8: lea eax, var_48
0088AFFB: push eax
0088AFFC: call 00410A84h ; Set (object)
0088B001: push eax
0088B002: lea eax, var_0000008C
0088B008: push eax
0088B009: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B00E: add esp, 00000020h
0088B011: push eax
0088B012: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088B017: mov var_000000F4, eax
0088B01D: mov var_000000FC, 00000008h
0088B027: lea eax, var_24
0088B02A: mov var_00000138, eax
0088B030: mov var_00000140, 0000400Ch
0088B03A: cmp [008F2010h], 00000000h
0088B041: jnz 88B05Eh
0088B043: push 008F2010h
0088B048: push 00433984h
0088B04D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088B052: mov var_0000025C, 008F2010h
0088B05C: jmp 88B068h
0088B05E: mov var_0000025C, 008F2010h
0088B068: push 00000000h
0088B06A: push 00000014h
0088B06C: push 00440E58h
0088B071: push 00000010h
0088B073: pop eax
0088B074: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088B079: lea esi, var_00000140
0088B07F: mov edi, esp
0088B081: movsd 
0088B082: movsd 
0088B083: movsd 
0088B084: movsd 
0088B085: push 00000001h
0088B087: push 00000000h
0088B089: push 00440E48h
0088B08E: push 00000000h
0088B090: push 00000018h
0088B092: mov eax, var_0000025C
0088B098: mov eax, [eax]
0088B09A: mov ecx, var_0000025C
0088B0A0: mov ecx, [ecx]
0088B0A2: mov ecx, [ecx]
0088B0A4: push eax
0088B0A5: call [ecx+00000550h]
0088B0AB: push eax
0088B0AC: lea eax, var_4C
0088B0AF: push eax
0088B0B0: call 00410A84h ; Set (object)
0088B0B5: push eax
0088B0B6: lea eax, var_0000009C
0088B0BC: push eax
0088B0BD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B0C2: add esp, 00000010h
0088B0C5: push eax
0088B0C6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088B0CB: push eax
0088B0CC: lea eax, var_50
0088B0CF: push eax
0088B0D0: call 00410A84h ; Set (object)
0088B0D5: push eax
0088B0D6: lea eax, var_000000AC
0088B0DC: push eax
0088B0DD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B0E2: add esp, 00000020h
0088B0E5: push eax
0088B0E6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088B0EB: push eax
0088B0EC: lea eax, var_54
0088B0EF: push eax
0088B0F0: call 00410A84h ; Set (object)
0088B0F5: push eax
0088B0F6: lea eax, var_000000BC
0088B0FC: push eax
0088B0FD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B102: add esp, 00000010h
0088B105: push eax
0088B106: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088B10B: mov var_000000D4, eax
0088B111: mov var_000000DC, 00000008h
0088B11B: push 00000010h
0088B11D: pop eax
0088B11E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088B123: lea esi, var_00000160
0088B129: mov edi, esp
0088B12B: movsd 
0088B12C: movsd 
0088B12D: movsd 
0088B12E: movsd 
0088B12F: push 00000010h
0088B131: pop eax
0088B132: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088B137: lea esi, var_000000FC
0088B13D: mov edi, esp
0088B13F: movsd 
0088B140: movsd 
0088B141: movsd 
0088B142: movsd 
0088B143: push 00000001h
0088B145: push 00000010h
0088B147: push 00440E58h
0088B14C: push 00000010h
0088B14E: pop eax
0088B14F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088B154: lea esi, var_000000DC
0088B15A: mov edi, esp
0088B15C: movsd 
0088B15D: movsd 
0088B15E: movsd 
0088B15F: movsd 
0088B160: push 00000001h
0088B162: push 00000000h
0088B164: push 00440E48h
0088B169: push 00000000h
0088B16B: push 00000018h
0088B16D: push var_0000019C
0088B173: lea eax, var_000000CC
0088B179: push eax
0088B17A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B17F: add esp, 00000010h
0088B182: push eax
0088B183: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088B188: push eax
0088B189: lea eax, var_58
0088B18C: push eax
0088B18D: call 00410A84h ; Set (object)
0088B192: push eax
0088B193: lea eax, var_000000EC
0088B199: push eax
0088B19A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B19F: add esp, 00000020h
0088B1A2: push eax
0088B1A3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088B1A8: push eax
0088B1A9: lea eax, var_5C
0088B1AC: push eax
0088B1AD: call 00410A84h ; Set (object)
0088B1B2: push eax
0088B1B3: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
0088B1B8: add esp, 0000002Ch
0088B1BB: lea eax, var_5C
0088B1BE: push eax
0088B1BF: lea eax, var_58
0088B1C2: push eax
0088B1C3: lea eax, var_54
0088B1C6: push eax
0088B1C7: lea eax, var_50
0088B1CA: push eax
0088B1CB: lea eax, var_4C
0088B1CE: push eax
0088B1CF: lea eax, var_48
0088B1D2: push eax
0088B1D3: lea eax, var_44
0088B1D6: push eax
0088B1D7: lea eax, var_40
0088B1DA: push eax
0088B1DB: push 00000008h
0088B1DD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088B1E2: add esp, 00000024h
0088B1E5: lea eax, var_000000FC
0088B1EB: push eax
0088B1EC: lea eax, var_000000EC
0088B1F2: push eax
0088B1F3: lea eax, var_000000DC
0088B1F9: push eax
0088B1FA: lea eax, var_000000CC
0088B200: push eax
0088B201: lea eax, var_000000BC
0088B207: push eax
0088B208: lea eax, var_000000AC
0088B20E: push eax
0088B20F: lea eax, var_0000009C
0088B215: push eax
0088B216: lea eax, var_0000008C
0088B21C: push eax
0088B21D: lea eax, var_7C
0088B220: push eax
0088B221: lea eax, var_6C
0088B224: push eax
0088B225: push 0000000Ah
0088B227: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088B22C: add esp, 0000002Ch
0088B22F: mov var_00000128, 00000005h
0088B239: mov var_00000130, 00000003h
0088B243: and var_00000148, 00000000h
0088B24A: mov var_00000150, 00000008h
0088B254: lea eax, var_24
0088B257: mov var_00000108, eax
0088B25D: mov var_00000110, 0000400Ch
0088B267: cmp [008F2010h], 00000000h
0088B26E: jnz 88B28Bh
0088B270: push 008F2010h
0088B275: push 00433984h
0088B27A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088B27F: mov var_00000260, 008F2010h
0088B289: jmp 88B295h
0088B28B: mov var_00000260, 008F2010h
0088B295: push 00000000h
0088B297: push 00000014h
0088B299: push 00440E58h
0088B29E: push 00000010h
0088B2A0: pop eax
0088B2A1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088B2A6: lea esi, var_00000110
0088B2AC: mov edi, esp
0088B2AE: movsd 
0088B2AF: movsd 
0088B2B0: movsd 
0088B2B1: movsd 
0088B2B2: push 00000001h
0088B2B4: push 00000000h
0088B2B6: push 00440E48h
0088B2BB: push 00000000h
0088B2BD: push 00000018h
0088B2BF: mov eax, var_00000260
0088B2C5: mov eax, [eax]
0088B2C7: mov ecx, var_00000260
0088B2CD: mov ecx, [ecx]
0088B2CF: mov ecx, [ecx]
0088B2D1: push eax
0088B2D2: call [ecx+00000550h]
0088B2D8: push eax
0088B2D9: lea eax, var_40
0088B2DC: push eax
0088B2DD: call 00410A84h ; Set (object)
0088B2E2: push eax
0088B2E3: lea eax, var_6C
0088B2E6: push eax
0088B2E7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B2EC: add esp, 00000010h
0088B2EF: push eax
0088B2F0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088B2F5: push eax
0088B2F6: lea eax, var_44
0088B2F9: push eax
0088B2FA: call 00410A84h ; Set (object)
0088B2FF: push eax
0088B300: lea eax, var_7C
0088B303: push eax
0088B304: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B309: add esp, 00000020h
0088B30C: push eax
0088B30D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088B312: push eax
0088B313: lea eax, var_48
0088B316: push eax
0088B317: call 00410A84h ; Set (object)
0088B31C: push eax
0088B31D: lea eax, var_0000008C
0088B323: push eax
0088B324: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B329: add esp, 00000010h
0088B32C: push eax
0088B32D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088B332: mov var_000000A4, eax
0088B338: mov var_000000AC, 00000008h
0088B342: push 00000010h
0088B344: pop eax
0088B345: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088B34A: lea esi, var_00000130
0088B350: mov edi, esp
0088B352: movsd 
0088B353: movsd 
0088B354: movsd 
0088B355: movsd 
0088B356: push 00000010h
0088B358: pop eax
0088B359: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088B35E: lea esi, var_00000150
0088B364: mov edi, esp
0088B366: movsd 
0088B367: movsd 
0088B368: movsd 
0088B369: movsd 
0088B36A: push 00000001h
0088B36C: push 00000010h
0088B36E: push 00440E58h
0088B373: push 00000010h
0088B375: pop eax
0088B376: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088B37B: lea esi, var_000000AC
0088B381: mov edi, esp
0088B383: movsd 
0088B384: movsd 
0088B385: movsd 
0088B386: movsd 
0088B387: push 00000001h
0088B389: push 00000000h
0088B38B: push 00440E48h
0088B390: push 00000000h
0088B392: push 00000018h
0088B394: push var_0000019C
0088B39A: lea eax, var_0000009C
0088B3A0: push eax
0088B3A1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B3A6: add esp, 00000010h
0088B3A9: push eax
0088B3AA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088B3AF: push eax
0088B3B0: lea eax, var_4C
0088B3B3: push eax
0088B3B4: call 00410A84h ; Set (object)
0088B3B9: push eax
0088B3BA: lea eax, var_000000BC
0088B3C0: push eax
0088B3C1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B3C6: add esp, 00000020h
0088B3C9: push eax
0088B3CA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088B3CF: push eax
0088B3D0: lea eax, var_50
0088B3D3: push eax
0088B3D4: call 00410A84h ; Set (object)
0088B3D9: push eax
0088B3DA: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
0088B3DF: add esp, 0000002Ch
0088B3E2: lea eax, var_50
0088B3E5: push eax
0088B3E6: lea eax, var_4C
0088B3E9: push eax
0088B3EA: lea eax, var_48
0088B3ED: push eax
0088B3EE: lea eax, var_44
0088B3F1: push eax
0088B3F2: lea eax, var_40
0088B3F5: push eax
0088B3F6: push 00000005h
0088B3F8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088B3FD: add esp, 00000018h
0088B400: lea eax, var_000000BC
0088B406: push eax
0088B407: lea eax, var_000000AC
0088B40D: push eax
0088B40E: lea eax, var_0000009C
0088B414: push eax
0088B415: lea eax, var_0000008C
0088B41B: push eax
0088B41C: lea eax, var_7C
0088B41F: push eax
0088B420: lea eax, var_6C
0088B423: push eax
0088B424: push 00000006h
0088B426: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088B42B: add esp, 0000001Ch
0088B42E: mov var_00000128, 00000006h
0088B438: mov var_00000130, 00000003h
0088B442: mov var_00000148, 0044176Ch ; Waiting...
0088B44C: mov var_00000150, 00000008h
0088B456: lea eax, var_24
0088B459: mov var_00000108, eax
0088B45F: mov var_00000110, 0000400Ch
0088B469: cmp [008F2010h], 00000000h
0088B470: jnz 88B48Dh
0088B472: push 008F2010h
0088B477: push 00433984h
0088B47C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088B481: mov var_00000264, 008F2010h
0088B48B: jmp 88B497h
0088B48D: mov var_00000264, 008F2010h
0088B497: push 00000000h
0088B499: push 00000014h
0088B49B: push 00440E58h
0088B4A0: push 00000010h
0088B4A2: pop eax
0088B4A3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088B4A8: lea esi, var_00000110
0088B4AE: mov edi, esp
0088B4B0: movsd 
0088B4B1: movsd 
0088B4B2: movsd 
0088B4B3: movsd 
0088B4B4: push 00000001h
0088B4B6: push 00000000h
0088B4B8: push 00440E48h
0088B4BD: push 00000000h
0088B4BF: push 00000018h
0088B4C1: mov eax, var_00000264
0088B4C7: mov eax, [eax]
0088B4C9: mov ecx, var_00000264
0088B4CF: mov ecx, [ecx]
0088B4D1: mov ecx, [ecx]
0088B4D3: push eax
0088B4D4: call [ecx+00000550h]
0088B4DA: push eax
0088B4DB: lea eax, var_40
0088B4DE: push eax
0088B4DF: call 00410A84h ; Set (object)
0088B4E4: push eax
0088B4E5: lea eax, var_6C
0088B4E8: push eax
0088B4E9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B4EE: add esp, 00000010h
0088B4F1: push eax
0088B4F2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088B4F7: push eax
0088B4F8: lea eax, var_44
0088B4FB: push eax
0088B4FC: call 00410A84h ; Set (object)
0088B501: push eax
0088B502: lea eax, var_7C
0088B505: push eax
0088B506: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B50B: add esp, 00000020h
0088B50E: push eax
0088B50F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088B514: push eax
0088B515: lea eax, var_48
0088B518: push eax
0088B519: call 00410A84h ; Set (object)
0088B51E: push eax
0088B51F: lea eax, var_0000008C
0088B525: push eax
0088B526: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B52B: add esp, 00000010h
0088B52E: push eax
0088B52F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088B534: mov var_000000A4, eax
0088B53A: mov var_000000AC, 00000008h
0088B544: push 00000010h
0088B546: pop eax
0088B547: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088B54C: lea esi, var_00000130
0088B552: mov edi, esp
0088B554: movsd 
0088B555: movsd 
0088B556: movsd 
0088B557: movsd 
0088B558: push 00000010h
0088B55A: pop eax
0088B55B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088B560: lea esi, var_00000150
0088B566: mov edi, esp
0088B568: movsd 
0088B569: movsd 
0088B56A: movsd 
0088B56B: movsd 
0088B56C: push 00000001h
0088B56E: push 00000010h
0088B570: push 00440E58h
0088B575: push 00000010h
0088B577: pop eax
0088B578: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088B57D: lea esi, var_000000AC
0088B583: mov edi, esp
0088B585: movsd 
0088B586: movsd 
0088B587: movsd 
0088B588: movsd 
0088B589: push 00000001h
0088B58B: push 00000000h
0088B58D: push 00440E48h
0088B592: push 00000000h
0088B594: push 00000018h
0088B596: push var_0000019C
0088B59C: lea eax, var_0000009C
0088B5A2: push eax
0088B5A3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B5A8: add esp, 00000010h
0088B5AB: push eax
0088B5AC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088B5B1: push eax
0088B5B2: lea eax, var_4C
0088B5B5: push eax
0088B5B6: call 00410A84h ; Set (object)
0088B5BB: push eax
0088B5BC: lea eax, var_000000BC
0088B5C2: push eax
0088B5C3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B5C8: add esp, 00000020h
0088B5CB: push eax
0088B5CC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088B5D1: push eax
0088B5D2: lea eax, var_50
0088B5D5: push eax
0088B5D6: call 00410A84h ; Set (object)
0088B5DB: push eax
0088B5DC: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
0088B5E1: add esp, 0000002Ch
0088B5E4: lea eax, var_50
0088B5E7: push eax
0088B5E8: lea eax, var_4C
0088B5EB: push eax
0088B5EC: lea eax, var_48
0088B5EF: push eax
0088B5F0: lea eax, var_44
0088B5F3: push eax
0088B5F4: lea eax, var_40
0088B5F7: push eax
0088B5F8: push 00000005h
0088B5FA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088B5FF: add esp, 00000018h
0088B602: lea eax, var_000000BC
0088B608: push eax
0088B609: lea eax, var_000000AC
0088B60F: push eax
0088B610: lea eax, var_0000009C
0088B616: push eax
0088B617: lea eax, var_0000008C
0088B61D: push eax
0088B61E: lea eax, var_7C
0088B621: push eax
0088B622: lea eax, var_6C
0088B625: push eax
0088B626: push 00000006h
0088B628: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088B62D: add esp, 0000001Ch
0088B630: push 00000000h
0088B632: lea eax, var_0000019C
0088B638: push eax
0088B639: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0088B63E: lea eax, var_24
0088B641: mov var_00000108, eax
0088B647: mov var_00000110, 0000400Ch
0088B651: cmp [008F2010h], 00000000h
0088B658: jnz 88B675h
0088B65A: push 008F2010h
0088B65F: push 00433984h
0088B664: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088B669: mov var_00000268, 008F2010h
0088B673: jmp 88B67Fh
0088B675: mov var_00000268, 008F2010h
0088B67F: push 00000000h
0088B681: push 00000014h
0088B683: push 00440E58h
0088B688: push 00000010h
0088B68A: pop eax
0088B68B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088B690: lea esi, var_00000110
0088B696: mov edi, esp
0088B698: movsd 
0088B699: movsd 
0088B69A: movsd 
0088B69B: movsd 
0088B69C: push 00000001h
0088B69E: push 00000000h
0088B6A0: push 00440E48h
0088B6A5: push 00000000h
0088B6A7: push 00000018h
0088B6A9: mov eax, var_00000268
0088B6AF: mov eax, [eax]
0088B6B1: mov ecx, var_00000268
0088B6B7: mov ecx, [ecx]
0088B6B9: mov ecx, [ecx]
0088B6BB: push eax
0088B6BC: call [ecx+00000550h]
0088B6C2: push eax
0088B6C3: lea eax, var_40
0088B6C6: push eax
0088B6C7: call 00410A84h ; Set (object)
0088B6CC: push eax
0088B6CD: lea eax, var_6C
0088B6D0: push eax
0088B6D1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B6D6: add esp, 00000010h
0088B6D9: push eax
0088B6DA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088B6DF: push eax
0088B6E0: lea eax, var_44
0088B6E3: push eax
0088B6E4: call 00410A84h ; Set (object)
0088B6E9: push eax
0088B6EA: lea eax, var_7C
0088B6ED: push eax
0088B6EE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B6F3: add esp, 00000020h
0088B6F6: push eax
0088B6F7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088B6FC: push eax
0088B6FD: lea eax, var_48
0088B700: push eax
0088B701: call 00410A84h ; Set (object)
0088B706: push eax
0088B707: lea eax, var_0000008C
0088B70D: push eax
0088B70E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B713: add esp, 00000010h
0088B716: push eax
0088B717: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088B71C: mov edx, eax
0088B71E: lea ecx, var_38
0088B721: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088B726: push eax
0088B727: call 004109DCh ; Val(arg_1)
0088B72C: fstp real8 ptr var_00000188
0088B732: push 00000000h
0088B734: push 00000000h
0088B736: push 00000001h
0088B738: push 00000000h
0088B73A: lea eax, var_00000100
0088B740: push eax
0088B741: push 00000010h
0088B743: push 00000880h
0088B748: call 00410946h ; ReDim
0088B74D: add esp, 0000001Ch
0088B750: mov eax, [ebp+08h]
0088B753: mov eax, [eax]
0088B755: push [ebp+08h]
0088B758: call [eax+000002FCh]
0088B75E: mov var_00000094, eax
0088B764: mov var_0000009C, 00000009h
0088B76E: lea esi, var_0000009C
0088B774: push 00000000h
0088B776: push var_00000100
0088B77C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0088B781: mov ecx, eax
0088B783: mov edx, esi
0088B785: call 00410940h ; msvbvm60.dll.__vbaVarZero
0088B78A: mov edx, 0043D7E0h ; x81
0088B78F: lea ecx, var_3C
0088B792: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0088B797: lea eax, var_00000100
0088B79D: push eax
0088B79E: lea eax, var_3C
0088B7A1: push eax
0088B7A2: fld real8 ptr var_00000188
0088B7A8: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0088B7AD: push eax
0088B7AE: call 007A6910h
0088B7B3: lea eax, var_00000100
0088B7B9: push eax
0088B7BA: push 00000000h
0088B7BC: call 00410934h ; Erase
0088B7C1: lea eax, var_3C
0088B7C4: push eax
0088B7C5: lea eax, var_38
0088B7C8: push eax
0088B7C9: push 00000002h
0088B7CB: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0088B7D0: add esp, 0000000Ch
0088B7D3: lea eax, var_48
0088B7D6: push eax
0088B7D7: lea eax, var_44
0088B7DA: push eax
0088B7DB: lea eax, var_40
0088B7DE: push eax
0088B7DF: push 00000003h
0088B7E1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088B7E6: add esp, 00000010h
0088B7E9: lea eax, var_0000008C
0088B7EF: push eax
0088B7F0: lea eax, var_7C
0088B7F3: push eax
0088B7F4: lea eax, var_6C
0088B7F7: push eax
0088B7F8: push 00000003h
0088B7FA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088B7FF: add esp, 00000010h
0088B802: call 0041096Ah ; DoEvents
0088B807: lea eax, var_000001DC
0088B80D: push eax
0088B80E: lea eax, var_000001CC
0088B814: push eax
0088B815: lea eax, var_24
0088B818: push eax
0088B819: call 00410A36h ; Next
0088B81E: mov var_000001EC, eax
0088B824: cmp var_000001EC, 00000000h
0088B82B: jnz 0088A147h
0088B831: mov var_04, 00000000h
0088B838: wait 
0088B839: push 0088B927h
0088B83E: jmp 0088B8D8h
0088B843: lea eax, var_3C
0088B846: push eax
0088B847: lea eax, var_38
0088B84A: push eax
0088B84B: push 00000002h
0088B84D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0088B852: add esp, 0000000Ch
0088B855: lea eax, var_5C
0088B858: push eax
0088B859: lea eax, var_58
0088B85C: push eax
0088B85D: lea eax, var_54
0088B860: push eax
0088B861: lea eax, var_50
0088B864: push eax
0088B865: lea eax, var_4C
0088B868: push eax
0088B869: lea eax, var_48
0088B86C: push eax
0088B86D: lea eax, var_44
0088B870: push eax
0088B871: lea eax, var_40
0088B874: push eax
0088B875: push 00000008h
0088B877: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088B87C: add esp, 00000024h
0088B87F: lea eax, var_000000FC
0088B885: push eax
0088B886: lea eax, var_000000EC
0088B88C: push eax
0088B88D: lea eax, var_000000DC
0088B893: push eax
0088B894: lea eax, var_000000CC
0088B89A: push eax
0088B89B: lea eax, var_000000BC
0088B8A1: push eax
0088B8A2: lea eax, var_000000AC
0088B8A8: push eax
0088B8A9: lea eax, var_0000009C
0088B8AF: push eax
0088B8B0: lea eax, var_0000008C
0088B8B6: push eax
0088B8B7: lea eax, var_7C
0088B8BA: push eax
0088B8BB: lea eax, var_6C
0088B8BE: push eax
0088B8BF: push 0000000Ah
0088B8C1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088B8C6: add esp, 0000002Ch
0088B8C9: lea eax, var_00000100
0088B8CF: push eax
0088B8D0: push 00000000h
0088B8D2: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0088B8D7: ret 
End Sub

Private sub Form__887CC9
00887CC9: push ebp
00887CCA: mov ebp, esp
00887CCC: sub esp, 0000000Ch
00887CCF: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00887CD4: mov eax, fs:[00h]
00887CDA: push eax
00887CDB: mov fs:[00000000h], esp
00887CE2: mov eax, 000000A0h
00887CE7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887CEC: push ebx
00887CED: push esi
00887CEE: push edi
00887CEF: mov var_0C, esp
00887CF2: mov var_08, 0040DD50h
00887CF9: mov eax, [ebp+08h]
00887CFC: and eax, 00000001h
00887CFF: mov var_04, eax
00887D02: mov eax, [ebp+08h]
00887D05: and al, FEh
00887D07: mov [ebp+08h], eax
00887D0A: mov eax, [ebp+08h]
00887D0D: mov eax, [eax]
00887D0F: push [ebp+08h]
00887D12: call [eax+04h]
00887D15: mov var_34, 80020004h
00887D1C: mov var_3C, 0000000Ah
00887D23: mov var_54, 80020004h
00887D2A: mov var_5C, 0000000Ah
00887D31: mov var_74, 00446714h ; ID
00887D38: mov var_7C, 00000008h
00887D3F: mov var_00000094, 00000384h
00887D49: mov var_0000009C, 00000002h
00887D53: push 00000010h
00887D55: pop eax
00887D56: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887D5B: lea esi, var_3C
00887D5E: mov edi, esp
00887D60: movsd 
00887D61: movsd 
00887D62: movsd 
00887D63: movsd 
00887D64: push 00000010h
00887D66: pop eax
00887D67: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887D6C: lea esi, var_5C
00887D6F: mov edi, esp
00887D71: movsd 
00887D72: movsd 
00887D73: movsd 
00887D74: movsd 
00887D75: push 00000010h
00887D77: pop eax
00887D78: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887D7D: lea esi, var_7C
00887D80: mov edi, esp
00887D82: movsd 
00887D83: movsd 
00887D84: movsd 
00887D85: movsd 
00887D86: push 00000010h
00887D88: pop eax
00887D89: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887D8E: lea esi, var_0000009C
00887D94: mov edi, esp
00887D96: movsd 
00887D97: movsd 
00887D98: movsd 
00887D99: movsd 
00887D9A: push 00000004h
00887D9C: push 00000002h
00887D9E: push 00445534h
00887DA3: push 00000000h
00887DA5: push 00000019h
00887DA7: mov eax, [ebp+08h]
00887DAA: mov eax, [eax]
00887DAC: push [ebp+08h]
00887DAF: call [eax+00000314h]
00887DB5: push eax
00887DB6: lea eax, var_18
00887DB9: push eax
00887DBA: call 00410A84h ; Set (object)
00887DBF: push eax
00887DC0: lea eax, var_2C
00887DC3: push eax
00887DC4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00887DC9: add esp, 00000010h
00887DCC: push eax
00887DCD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00887DD2: push eax
00887DD3: lea eax, var_1C
00887DD6: push eax
00887DD7: call 00410A84h ; Set (object)
00887DDC: push eax
00887DDD: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00887DE2: add esp, 0000004Ch
00887DE5: lea eax, var_1C
00887DE8: push eax
00887DE9: lea eax, var_18
00887DEC: push eax
00887DED: push 00000002h
00887DEF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00887DF4: add esp, 0000000Ch
00887DF7: lea ecx, var_2C
00887DFA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00887DFF: mov var_34, 80020004h
00887E06: mov var_3C, 0000000Ah
00887E0D: mov var_54, 80020004h
00887E14: mov var_5C, 0000000Ah
00887E1B: mov var_74, 00446720h ; WAN
00887E22: mov var_7C, 00000008h
00887E29: mov var_00000094, 000007D0h
00887E33: mov var_0000009C, 00000002h
00887E3D: push 00000010h
00887E3F: pop eax
00887E40: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887E45: lea esi, var_3C
00887E48: mov edi, esp
00887E4A: movsd 
00887E4B: movsd 
00887E4C: movsd 
00887E4D: movsd 
00887E4E: push 00000010h
00887E50: pop eax
00887E51: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887E56: lea esi, var_5C
00887E59: mov edi, esp
00887E5B: movsd 
00887E5C: movsd 
00887E5D: movsd 
00887E5E: movsd 
00887E5F: push 00000010h
00887E61: pop eax
00887E62: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887E67: lea esi, var_7C
00887E6A: mov edi, esp
00887E6C: movsd 
00887E6D: movsd 
00887E6E: movsd 
00887E6F: movsd 
00887E70: push 00000010h
00887E72: pop eax
00887E73: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887E78: lea esi, var_0000009C
00887E7E: mov edi, esp
00887E80: movsd 
00887E81: movsd 
00887E82: movsd 
00887E83: movsd 
00887E84: push 00000004h
00887E86: push 00000002h
00887E88: push 00445534h
00887E8D: push 00000000h
00887E8F: push 00000019h
00887E91: mov eax, [ebp+08h]
00887E94: mov eax, [eax]
00887E96: push [ebp+08h]
00887E99: call [eax+00000314h]
00887E9F: push eax
00887EA0: lea eax, var_18
00887EA3: push eax
00887EA4: call 00410A84h ; Set (object)
00887EA9: push eax
00887EAA: lea eax, var_2C
00887EAD: push eax
00887EAE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00887EB3: add esp, 00000010h
00887EB6: push eax
00887EB7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00887EBC: push eax
00887EBD: lea eax, var_1C
00887EC0: push eax
00887EC1: call 00410A84h ; Set (object)
00887EC6: push eax
00887EC7: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00887ECC: add esp, 0000004Ch
00887ECF: lea eax, var_1C
00887ED2: push eax
00887ED3: lea eax, var_18
00887ED6: push eax
00887ED7: push 00000002h
00887ED9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00887EDE: add esp, 0000000Ch
00887EE1: lea ecx, var_2C
00887EE4: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00887EE9: mov var_34, 80020004h
00887EF0: mov var_3C, 0000000Ah
00887EF7: mov var_54, 80020004h
00887EFE: mov var_5C, 0000000Ah
00887F05: mov var_74, 0044672Ch ; LAN
00887F0C: mov var_7C, 00000008h
00887F13: mov var_00000094, 000007D0h
00887F1D: mov var_0000009C, 00000002h
00887F27: push 00000010h
00887F29: pop eax
00887F2A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887F2F: lea esi, var_3C
00887F32: mov edi, esp
00887F34: movsd 
00887F35: movsd 
00887F36: movsd 
00887F37: movsd 
00887F38: push 00000010h
00887F3A: pop eax
00887F3B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887F40: lea esi, var_5C
00887F43: mov edi, esp
00887F45: movsd 
00887F46: movsd 
00887F47: movsd 
00887F48: movsd 
00887F49: push 00000010h
00887F4B: pop eax
00887F4C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887F51: lea esi, var_7C
00887F54: mov edi, esp
00887F56: movsd 
00887F57: movsd 
00887F58: movsd 
00887F59: movsd 
00887F5A: push 00000010h
00887F5C: pop eax
00887F5D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00887F62: lea esi, var_0000009C
00887F68: mov edi, esp
00887F6A: movsd 
00887F6B: movsd 
00887F6C: movsd 
00887F6D: movsd 
00887F6E: push 00000004h
00887F70: push 00000002h
00887F72: push 00445534h
00887F77: push 00000000h
00887F79: push 00000019h
00887F7B: mov eax, [ebp+08h]
00887F7E: mov eax, [eax]
00887F80: push [ebp+08h]
00887F83: call [eax+00000314h]
00887F89: push eax
00887F8A: lea eax, var_18
00887F8D: push eax
00887F8E: call 00410A84h ; Set (object)
00887F93: push eax
00887F94: lea eax, var_2C
00887F97: push eax
00887F98: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00887F9D: add esp, 00000010h
00887FA0: push eax
00887FA1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00887FA6: push eax
00887FA7: lea eax, var_1C
00887FAA: push eax
00887FAB: call 00410A84h ; Set (object)
00887FB0: push eax
00887FB1: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00887FB6: add esp, 0000004Ch
00887FB9: lea eax, var_1C
00887FBC: push eax
00887FBD: lea eax, var_18
00887FC0: push eax
00887FC1: push 00000002h
00887FC3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00887FC8: add esp, 0000000Ch
00887FCB: lea ecx, var_2C
00887FCE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00887FD3: mov var_34, 80020004h
00887FDA: mov var_3C, 0000000Ah
00887FE1: mov var_54, 80020004h
00887FE8: mov var_5C, 0000000Ah
00887FEF: mov var_74, 00446744h ; Username
00887FF6: mov var_7C, 00000008h
00887FFD: mov var_00000094, 000007D0h
00888007: mov var_0000009C, 00000002h
00888011: push 00000010h
00888013: pop eax
00888014: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888019: lea esi, var_3C
0088801C: mov edi, esp
0088801E: movsd 
0088801F: movsd 
00888020: movsd 
00888021: movsd 
00888022: push 00000010h
00888024: pop eax
00888025: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088802A: lea esi, var_5C
0088802D: mov edi, esp
0088802F: movsd 
00888030: movsd 
00888031: movsd 
00888032: movsd 
00888033: push 00000010h
00888035: pop eax
00888036: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088803B: lea esi, var_7C
0088803E: mov edi, esp
00888040: movsd 
00888041: movsd 
00888042: movsd 
00888043: movsd 
00888044: push 00000010h
00888046: pop eax
00888047: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088804C: lea esi, var_0000009C
00888052: mov edi, esp
00888054: movsd 
00888055: movsd 
00888056: movsd 
00888057: movsd 
00888058: push 00000004h
0088805A: push 00000002h
0088805C: push 00445534h
00888061: push 00000000h
00888063: push 00000019h
00888065: mov eax, [ebp+08h]
00888068: mov eax, [eax]
0088806A: push [ebp+08h]
0088806D: call [eax+00000314h]
00888073: push eax
00888074: lea eax, var_18
00888077: push eax
00888078: call 00410A84h ; Set (object)
0088807D: push eax
0088807E: lea eax, var_2C
00888081: push eax
00888082: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888087: add esp, 00000010h
0088808A: push eax
0088808B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00888090: push eax
00888091: lea eax, var_1C
00888094: push eax
00888095: call 00410A84h ; Set (object)
0088809A: push eax
0088809B: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008880A0: add esp, 0000004Ch
008880A3: lea eax, var_1C
008880A6: push eax
008880A7: lea eax, var_18
008880AA: push eax
008880AB: push 00000002h
008880AD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008880B2: add esp, 0000000Ch
008880B5: lea ecx, var_2C
008880B8: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008880BD: mov var_34, 80020004h
008880C4: mov var_3C, 0000000Ah
008880CB: mov var_54, 80020004h
008880D2: mov var_5C, 0000000Ah
008880D9: mov var_74, 0044675Ch ; Comp.Name
008880E0: mov var_7C, 00000008h
008880E7: mov var_00000094, 000007D0h
008880F1: mov var_0000009C, 00000002h
008880FB: push 00000010h
008880FD: pop eax
008880FE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888103: lea esi, var_3C
00888106: mov edi, esp
00888108: movsd 
00888109: movsd 
0088810A: movsd 
0088810B: movsd 
0088810C: push 00000010h
0088810E: pop eax
0088810F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888114: lea esi, var_5C
00888117: mov edi, esp
00888119: movsd 
0088811A: movsd 
0088811B: movsd 
0088811C: movsd 
0088811D: push 00000010h
0088811F: pop eax
00888120: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888125: lea esi, var_7C
00888128: mov edi, esp
0088812A: movsd 
0088812B: movsd 
0088812C: movsd 
0088812D: movsd 
0088812E: push 00000010h
00888130: pop eax
00888131: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888136: lea esi, var_0000009C
0088813C: mov edi, esp
0088813E: movsd 
0088813F: movsd 
00888140: movsd 
00888141: movsd 
00888142: push 00000004h
00888144: push 00000002h
00888146: push 00445534h
0088814B: push 00000000h
0088814D: push 00000019h
0088814F: mov eax, [ebp+08h]
00888152: mov eax, [eax]
00888154: push [ebp+08h]
00888157: call [eax+00000314h]
0088815D: push eax
0088815E: lea eax, var_18
00888161: push eax
00888162: call 00410A84h ; Set (object)
00888167: push eax
00888168: lea eax, var_2C
0088816B: push eax
0088816C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888171: add esp, 00000010h
00888174: push eax
00888175: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088817A: push eax
0088817B: lea eax, var_1C
0088817E: push eax
0088817F: call 00410A84h ; Set (object)
00888184: push eax
00888185: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0088818A: add esp, 0000004Ch
0088818D: lea eax, var_1C
00888190: push eax
00888191: lea eax, var_18
00888194: push eax
00888195: push 00000002h
00888197: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088819C: add esp, 0000000Ch
0088819F: lea ecx, var_2C
008881A2: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008881A7: mov var_34, 80020004h
008881AE: mov var_3C, 0000000Ah
008881B5: mov var_54, 80020004h
008881BC: mov var_5C, 0000000Ah
008881C3: mov var_74, 0045931Ch ; Client
008881CA: mov var_7C, 00000008h
008881D1: mov var_00000094, 000007D0h
008881DB: mov var_0000009C, 00000002h
008881E5: push 00000010h
008881E7: pop eax
008881E8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008881ED: lea esi, var_3C
008881F0: mov edi, esp
008881F2: movsd 
008881F3: movsd 
008881F4: movsd 
008881F5: movsd 
008881F6: push 00000010h
008881F8: pop eax
008881F9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008881FE: lea esi, var_5C
00888201: mov edi, esp
00888203: movsd 
00888204: movsd 
00888205: movsd 
00888206: movsd 
00888207: push 00000010h
00888209: pop eax
0088820A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088820F: lea esi, var_7C
00888212: mov edi, esp
00888214: movsd 
00888215: movsd 
00888216: movsd 
00888217: movsd 
00888218: push 00000010h
0088821A: pop eax
0088821B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00888220: lea esi, var_0000009C
00888226: mov edi, esp
00888228: movsd 
00888229: movsd 
0088822A: movsd 
0088822B: movsd 
0088822C: push 00000004h
0088822E: push 00000002h
00888230: push 00445534h
00888235: push 00000000h
00888237: push 00000019h
00888239: mov eax, [ebp+08h]
0088823C: mov eax, [eax]
0088823E: push [ebp+08h]
00888241: call [eax+00000314h]
00888247: push eax
00888248: lea eax, var_18
0088824B: push eax
0088824C: call 00410A84h ; Set (object)
00888251: push eax
00888252: lea eax, var_2C
00888255: push eax
00888256: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088825B: add esp, 00000010h
0088825E: push eax
0088825F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00888264: push eax
00888265: lea eax, var_1C
00888268: push eax
00888269: call 00410A84h ; Set (object)
0088826E: push eax
0088826F: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00888274: add esp, 0000004Ch
00888277: lea eax, var_1C
0088827A: push eax
0088827B: lea eax, var_18
0088827E: push eax
0088827F: push 00000002h
00888281: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00888286: add esp, 0000000Ch
00888289: lea ecx, var_2C
0088828C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00888291: mov var_34, 80020004h
00888298: mov var_3C, 0000000Ah
0088829F: mov var_54, 80020004h
008882A6: mov var_5C, 0000000Ah
008882AD: mov var_74, 004468A0h ; Status
008882B4: mov var_7C, 00000008h
008882BB: mov var_00000094, 000005DCh
008882C5: mov var_0000009C, 00000002h
008882CF: push 00000010h
008882D1: pop eax
008882D2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008882D7: lea esi, var_3C
008882DA: mov edi, esp
008882DC: movsd 
008882DD: movsd 
008882DE: movsd 
008882DF: movsd 
008882E0: push 00000010h
008882E2: pop eax
008882E3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008882E8: lea esi, var_5C
008882EB: mov edi, esp
008882ED: movsd 
008882EE: movsd 
008882EF: movsd 
008882F0: movsd 
008882F1: push 00000010h
008882F3: pop eax
008882F4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008882F9: lea esi, var_7C
008882FC: mov edi, esp
008882FE: movsd 
008882FF: movsd 
00888300: movsd 
00888301: movsd 
00888302: push 00000010h
00888304: pop eax
00888305: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088830A: lea esi, var_0000009C
00888310: mov edi, esp
00888312: movsd 
00888313: movsd 
00888314: movsd 
00888315: movsd 
00888316: push 00000004h
00888318: push 00000002h
0088831A: push 00445534h
0088831F: push 00000000h
00888321: push 00000019h
00888323: mov eax, [ebp+08h]
00888326: mov eax, [eax]
00888328: push [ebp+08h]
0088832B: call [eax+00000314h]
00888331: push eax
00888332: lea eax, var_18
00888335: push eax
00888336: call 00410A84h ; Set (object)
0088833B: push eax
0088833C: lea eax, var_2C
0088833F: push eax
00888340: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00888345: add esp, 00000010h
00888348: push eax
00888349: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088834E: push eax
0088834F: lea eax, var_1C
00888352: push eax
00888353: call 00410A84h ; Set (object)
00888358: push eax
00888359: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0088835E: add esp, 0000004Ch
00888361: lea eax, var_1C
00888364: push eax
00888365: lea eax, var_18
00888368: push eax
00888369: push 00000002h
0088836B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00888370: add esp, 0000000Ch
00888373: lea ecx, var_2C
00888376: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0088837B: mov var_04, 00000000h
00888382: push 008883A5h
00888387: jmp 8883A4h
00888389: lea eax, var_1C
0088838C: push eax
0088838D: lea eax, var_18
00888390: push eax
00888391: push 00000002h
00888393: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00888398: add esp, 0000000Ch
0088839B: lea ecx, var_2C
0088839E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008883A3: ret 
End Sub

Private sub Form__88C15D
0088C15D: push ebp
0088C15E: mov ebp, esp
0088C160: sub esp, 00000018h
0088C163: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0088C168: mov eax, fs:[00h]
0088C16E: push eax
0088C16F: mov fs:[00000000h], esp
0088C176: mov eax, 000000FCh
0088C17B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C180: push ebx
0088C181: push esi
0088C182: push edi
0088C183: mov var_18, esp
0088C186: mov var_14, 0040DD90h
0088C18D: mov eax, [ebp+08h]
0088C190: and eax, 00000001h
0088C193: mov var_10, eax
0088C196: mov eax, [ebp+08h]
0088C199: and al, FEh
0088C19B: mov [ebp+08h], eax
0088C19E: mov var_0C, 00000000h
0088C1A5: mov eax, [ebp+08h]
0088C1A8: mov eax, [eax]
0088C1AA: push [ebp+08h]
0088C1AD: call [eax+04h]
0088C1B0: mov var_04, 00000001h
0088C1B7: mov var_04, 00000002h
0088C1BE: push FFFFFFFFh
0088C1C0: call 00410A60h ; On Error ...
0088C1C5: mov var_04, 00000003h
0088C1CC: push 00000000h
0088C1CE: push 80010006h
0088C1D3: mov eax, [ebp+08h]
0088C1D6: mov eax, [eax]
0088C1D8: push [ebp+08h]
0088C1DB: call [eax+00000318h]
0088C1E1: push eax
0088C1E2: lea eax, var_24
0088C1E5: push eax
0088C1E6: call 00410A84h ; Set (object)
0088C1EB: push eax
0088C1EC: lea eax, var_40
0088C1EF: push eax
0088C1F0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088C1F5: add esp, 00000010h
0088C1F8: fldz 
0088C1FA: fstp real4 ptr var_68
0088C1FD: mov var_70, 00000004h
0088C204: and var_00000088, 00000000h
0088C20B: mov var_00000090, 00000002h
0088C215: lea eax, var_000000E4
0088C21B: push eax
0088C21C: mov eax, [ebp+08h]
0088C21F: mov eax, [eax]
0088C221: push [ebp+08h]
0088C224: call [eax+00000080h]
0088C22A: fclex 
0088C22C: mov var_000000EC, eax
0088C232: cmp var_000000EC, 00000000h
0088C239: jnl 88C25Bh
0088C23B: push 00000080h
0088C240: push 004452D0h
0088C245: push [ebp+08h]
0088C248: push var_000000EC
0088C24E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088C253: mov var_00000108, eax
0088C259: jmp 88C262h
0088C25B: and var_00000108, 00000000h
0088C262: fld real4 ptr var_000000E4
0088C268: fsub real4 ptr [00402B7Ch]
0088C26E: fstp real4 ptr var_000000A8
0088C274: fstsw ax
0088C276: test al, 0Dh
0088C278: jnz 0088C73Bh
0088C27E: mov var_000000B0, 00000004h
0088C288: lea eax, var_000000E8
0088C28E: push eax
0088C28F: mov eax, [ebp+08h]
0088C292: mov eax, [eax]
0088C294: push [ebp+08h]
0088C297: call [eax+00000088h]
0088C29D: fclex 
0088C29F: mov var_000000F0, eax
0088C2A5: cmp var_000000F0, 00000000h
0088C2AC: jnl 88C2CEh
0088C2AE: push 00000088h
0088C2B3: push 004452D0h
0088C2B8: push [ebp+08h]
0088C2BB: push var_000000F0
0088C2C1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088C2C6: mov var_0000010C, eax
0088C2CC: jmp 88C2D5h
0088C2CE: and var_0000010C, 00000000h
0088C2D5: lea eax, var_40
0088C2D8: push eax
0088C2D9: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0088C2DE: fsubr real4 ptr var_000000E8
0088C2E4: fsub real4 ptr [00402B70h]
0088C2EA: fstp real4 ptr var_000000C8
0088C2F0: fstsw ax
0088C2F2: test al, 0Dh
0088C2F4: jnz 0088C73Bh
0088C2FA: mov var_000000D0, 00000004h
0088C304: push 00000010h
0088C306: pop eax
0088C307: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C30C: lea esi, var_70
0088C30F: mov edi, esp
0088C311: movsd 
0088C312: movsd 
0088C313: movsd 
0088C314: movsd 
0088C315: push 00000010h
0088C317: pop eax
0088C318: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C31D: lea esi, var_00000090
0088C323: mov edi, esp
0088C325: movsd 
0088C326: movsd 
0088C327: movsd 
0088C328: movsd 
0088C329: push 00000010h
0088C32B: pop eax
0088C32C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C331: lea esi, var_000000B0
0088C337: mov edi, esp
0088C339: movsd 
0088C33A: movsd 
0088C33B: movsd 
0088C33C: movsd 
0088C33D: push 00000010h
0088C33F: pop eax
0088C340: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C345: lea esi, var_000000D0
0088C34B: mov edi, esp
0088C34D: movsd 
0088C34E: movsd 
0088C34F: movsd 
0088C350: movsd 
0088C351: push 00000004h
0088C353: push 80011002h
0088C358: mov eax, [ebp+08h]
0088C35B: mov eax, [eax]
0088C35D: push [ebp+08h]
0088C360: call [eax+00000314h]
0088C366: push eax
0088C367: lea eax, var_28
0088C36A: push eax
0088C36B: call 00410A84h ; Set (object)
0088C370: push eax
0088C371: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0088C376: add esp, 0000004Ch
0088C379: lea eax, var_28
0088C37C: push eax
0088C37D: lea eax, var_24
0088C380: push eax
0088C381: push 00000002h
0088C383: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088C388: add esp, 0000000Ch
0088C38B: lea ecx, var_40
0088C38E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0088C393: mov var_04, 00000004h
0088C39A: push 00000000h
0088C39C: push 80010006h
0088C3A1: mov eax, [ebp+08h]
0088C3A4: mov eax, [eax]
0088C3A6: push [ebp+08h]
0088C3A9: call [eax+00000314h]
0088C3AF: push eax
0088C3B0: lea eax, var_28
0088C3B3: push eax
0088C3B4: call 00410A84h ; Set (object)
0088C3B9: push eax
0088C3BA: lea eax, var_50
0088C3BD: push eax
0088C3BE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088C3C3: add esp, 00000010h
0088C3C6: fldz 
0088C3C8: fstp real4 ptr var_68
0088C3CB: mov var_70, 00000004h
0088C3D2: push 00000000h
0088C3D4: push 80010004h
0088C3D9: mov eax, [ebp+08h]
0088C3DC: mov eax, [eax]
0088C3DE: push [ebp+08h]
0088C3E1: call [eax+00000314h]
0088C3E7: push eax
0088C3E8: lea eax, var_24
0088C3EB: push eax
0088C3EC: call 00410A84h ; Set (object)
0088C3F1: push eax
0088C3F2: lea eax, var_40
0088C3F5: push eax
0088C3F6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088C3FB: add esp, 00000010h
0088C3FE: push eax
0088C3FF: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0088C404: fstp real4 ptr var_00000110
0088C40A: lea eax, var_50
0088C40D: push eax
0088C40E: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0088C413: fadd real4 ptr var_00000110
0088C419: fadd real4 ptr [00402BA8h]
0088C41F: fstp real4 ptr var_00000088
0088C425: fstsw ax
0088C427: test al, 0Dh
0088C429: jnz 0088C73Bh
0088C42F: mov var_00000090, 00000004h
0088C439: lea eax, var_000000E4
0088C43F: push eax
0088C440: mov eax, [ebp+08h]
0088C443: mov eax, [eax]
0088C445: push [ebp+08h]
0088C448: call [eax+00000080h]
0088C44E: fclex 
0088C450: mov var_000000EC, eax
0088C456: cmp var_000000EC, 00000000h
0088C45D: jnl 88C47Fh
0088C45F: push 00000080h
0088C464: push 004452D0h
0088C469: push [ebp+08h]
0088C46C: push var_000000EC
0088C472: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088C477: mov var_00000114, eax
0088C47D: jmp 88C486h
0088C47F: and var_00000114, 00000000h
0088C486: fld real4 ptr var_000000E4
0088C48C: fsub real4 ptr [00402B7Ch]
0088C492: fstp real4 ptr var_000000A8
0088C498: fstsw ax
0088C49A: test al, 0Dh
0088C49C: jnz 0088C73Bh
0088C4A2: mov var_000000B0, 00000004h
0088C4AC: push 00000000h
0088C4AE: push 80010006h
0088C4B3: mov eax, [ebp+08h]
0088C4B6: mov eax, [eax]
0088C4B8: push [ebp+08h]
0088C4BB: call [eax+00000318h]
0088C4C1: push eax
0088C4C2: lea eax, var_2C
0088C4C5: push eax
0088C4C6: call 00410A84h ; Set (object)
0088C4CB: push eax
0088C4CC: lea eax, var_60
0088C4CF: push eax
0088C4D0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088C4D5: add esp, 00000010h
0088C4D8: push eax
0088C4D9: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0088C4DE: fstp real4 ptr var_000000C8
0088C4E4: mov var_000000D0, 00000004h
0088C4EE: push 00000010h
0088C4F0: pop eax
0088C4F1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C4F6: lea esi, var_70
0088C4F9: mov edi, esp
0088C4FB: movsd 
0088C4FC: movsd 
0088C4FD: movsd 
0088C4FE: movsd 
0088C4FF: push 00000010h
0088C501: pop eax
0088C502: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C507: lea esi, var_00000090
0088C50D: mov edi, esp
0088C50F: movsd 
0088C510: movsd 
0088C511: movsd 
0088C512: movsd 
0088C513: push 00000010h
0088C515: pop eax
0088C516: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C51B: lea esi, var_000000B0
0088C521: mov edi, esp
0088C523: movsd 
0088C524: movsd 
0088C525: movsd 
0088C526: movsd 
0088C527: push 00000010h
0088C529: pop eax
0088C52A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C52F: lea esi, var_000000D0
0088C535: mov edi, esp
0088C537: movsd 
0088C538: movsd 
0088C539: movsd 
0088C53A: movsd 
0088C53B: push 00000004h
0088C53D: push 80011001h
0088C542: mov eax, [ebp+08h]
0088C545: mov eax, [eax]
0088C547: push [ebp+08h]
0088C54A: call [eax+00000318h]
0088C550: push eax
0088C551: lea eax, var_30
0088C554: push eax
0088C555: call 00410A84h ; Set (object)
0088C55A: push eax
0088C55B: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0088C560: add esp, 0000004Ch
0088C563: lea eax, var_30
0088C566: push eax
0088C567: lea eax, var_2C
0088C56A: push eax
0088C56B: lea eax, var_28
0088C56E: push eax
0088C56F: lea eax, var_24
0088C572: push eax
0088C573: push 00000004h
0088C575: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088C57A: add esp, 00000014h
0088C57D: lea eax, var_60
0088C580: push eax
0088C581: lea eax, var_50
0088C584: push eax
0088C585: lea eax, var_40
0088C588: push eax
0088C589: push 00000003h
0088C58B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088C590: add esp, 00000010h
0088C593: mov var_04, 00000005h
0088C59A: push 00000000h
0088C59C: push 80010005h
0088C5A1: mov eax, [ebp+08h]
0088C5A4: mov eax, [eax]
0088C5A6: push [ebp+08h]
0088C5A9: call [eax+00000318h]
0088C5AF: push eax
0088C5B0: lea eax, var_28
0088C5B3: push eax
0088C5B4: call 00410A84h ; Set (object)
0088C5B9: push eax
0088C5BA: lea eax, var_50
0088C5BD: push eax
0088C5BE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088C5C3: add esp, 00000010h
0088C5C6: push 00000000h
0088C5C8: push 80010005h
0088C5CD: mov eax, [ebp+08h]
0088C5D0: mov eax, [eax]
0088C5D2: push [ebp+08h]
0088C5D5: call [eax+0000031Ch]
0088C5DB: push eax
0088C5DC: lea eax, var_2C
0088C5DF: push eax
0088C5E0: call 00410A84h ; Set (object)
0088C5E5: push eax
0088C5E6: lea eax, var_60
0088C5E9: push eax
0088C5EA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088C5EF: add esp, 00000010h
0088C5F2: push 00000000h
0088C5F4: push 80010003h
0088C5F9: mov eax, [ebp+08h]
0088C5FC: mov eax, [eax]
0088C5FE: push [ebp+08h]
0088C601: call [eax+00000318h]
0088C607: push eax
0088C608: lea eax, var_24
0088C60B: push eax
0088C60C: call 00410A84h ; Set (object)
0088C611: push eax
0088C612: lea eax, var_40
0088C615: push eax
0088C616: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088C61B: add esp, 00000010h
0088C61E: push eax
0088C61F: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0088C624: fstp real4 ptr var_00000118
0088C62A: lea eax, var_50
0088C62D: push eax
0088C62E: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0088C633: fadd real4 ptr var_00000118
0088C639: fstsw ax
0088C63B: test al, 0Dh
0088C63D: jnz 0088C73Bh
0088C643: fstp real4 ptr var_0000011C
0088C649: lea eax, var_60
0088C64C: push eax
0088C64D: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0088C652: fsubr real4 ptr var_0000011C
0088C658: fsub real4 ptr [00402BA4h]
0088C65E: fstp real4 ptr var_68
0088C661: fstsw ax
0088C663: test al, 0Dh
0088C665: jnz 0088C73Bh
0088C66B: mov var_70, 00000004h
0088C672: push 00000010h
0088C674: pop eax
0088C675: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088C67A: lea esi, var_70
0088C67D: mov edi, esp
0088C67F: movsd 
0088C680: movsd 
0088C681: movsd 
0088C682: movsd 
0088C683: push 00000001h
0088C685: push 80011002h
0088C68A: mov eax, [ebp+08h]
0088C68D: mov eax, [eax]
0088C68F: push [ebp+08h]
0088C692: call [eax+0000031Ch]
0088C698: push eax
0088C699: lea eax, var_30
0088C69C: push eax
0088C69D: call 00410A84h ; Set (object)
0088C6A2: push eax
0088C6A3: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0088C6A8: add esp, 0000001Ch
0088C6AB: lea eax, var_30
0088C6AE: push eax
0088C6AF: lea eax, var_2C
0088C6B2: push eax
0088C6B3: lea eax, var_28
0088C6B6: push eax
0088C6B7: lea eax, var_24
0088C6BA: push eax
0088C6BB: push 00000004h
0088C6BD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088C6C2: add esp, 00000014h
0088C6C5: lea eax, var_60
0088C6C8: push eax
0088C6C9: lea eax, var_50
0088C6CC: push eax
0088C6CD: lea eax, var_40
0088C6D0: push eax
0088C6D1: push 00000003h
0088C6D3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088C6D8: add esp, 00000010h
0088C6DB: mov var_10, 00000000h
0088C6E2: wait 
0088C6E3: push 0088C71Ch
0088C6E8: jmp 88C71Bh
0088C6EA: lea eax, var_30
0088C6ED: push eax
0088C6EE: lea eax, var_2C
0088C6F1: push eax
0088C6F2: lea eax, var_28
0088C6F5: push eax
0088C6F6: lea eax, var_24
0088C6F9: push eax
0088C6FA: push 00000004h
0088C6FC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088C701: add esp, 00000014h
0088C704: lea eax, var_60
0088C707: push eax
0088C708: lea eax, var_50
0088C70B: push eax
0088C70C: lea eax, var_40
0088C70F: push eax
0088C710: push 00000003h
0088C712: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088C717: add esp, 00000010h
0088C71A: ret 
End Sub

Private sub unknown_88B946
0088B946: push ebp
0088B947: mov ebp, esp
0088B949: push ecx
0088B94A: push ecx
0088B94B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0088B950: mov eax, fs:[00h]
0088B956: push eax
0088B957: mov fs:[00000000h], esp
0088B95E: mov eax, 000000B4h
0088B963: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088B968: push ebx
0088B969: push esi
0088B96A: push edi
0088B96B: mov var_08, esp
0088B96E: mov var_04, 0040DD80h
0088B975: cmp word ptr [008F2430h], FFFFh
0088B97D: jnz 0088BD3Dh
0088B983: cmp [008F2010h], 00000000h
0088B98A: jnz 88B9A7h
0088B98C: push 008F2010h
0088B991: push 00433984h
0088B996: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088B99B: mov var_000000B0, 008F2010h
0088B9A5: jmp 88B9B1h
0088B9A7: mov var_000000B0, 008F2010h
0088B9B1: push 00000000h
0088B9B3: push 00000001h
0088B9B5: push 00440E48h
0088B9BA: push 00000000h
0088B9BC: push 00000018h
0088B9BE: mov eax, var_000000B0
0088B9C4: mov eax, [eax]
0088B9C6: mov ecx, var_000000B0
0088B9CC: mov ecx, [ecx]
0088B9CE: mov ecx, [ecx]
0088B9D0: push eax
0088B9D1: call [ecx+0000054Ch]
0088B9D7: push eax
0088B9D8: lea eax, var_20
0088B9DB: push eax
0088B9DC: call 00410A84h ; Set (object)
0088B9E1: push eax
0088B9E2: lea eax, var_38
0088B9E5: push eax
0088B9E6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088B9EB: add esp, 00000010h
0088B9EE: push eax
0088B9EF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088B9F4: push eax
0088B9F5: lea eax, var_24
0088B9F8: push eax
0088B9F9: call 00410A84h ; Set (object)
0088B9FE: push eax
0088B9FF: lea eax, var_48
0088BA02: push eax
0088BA03: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088BA08: add esp, 00000010h
0088BA0B: push eax
0088BA0C: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0088BA11: mov var_000000A0, eax
0088BA17: mov var_0000009C, 00000001h
0088BA21: mov var_14, 00000001h
0088BA28: lea eax, var_24
0088BA2B: push eax
0088BA2C: lea eax, var_20
0088BA2F: push eax
0088BA30: push 00000002h
0088BA32: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088BA37: add esp, 0000000Ch
0088BA3A: lea eax, var_48
0088BA3D: push eax
0088BA3E: lea eax, var_38
0088BA41: push eax
0088BA42: push 00000002h
0088BA44: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088BA49: add esp, 0000000Ch
0088BA4C: jmp 88BA60h
0088BA4E: mov eax, var_14
0088BA51: add eax, var_0000009C
0088BA57: jo 0088C158h
0088BA5D: mov var_14, eax
0088BA60: mov eax, var_14
0088BA63: cmp eax, var_000000A0
0088BA69: jnle 0088BD38h
0088BA6F: mov eax, var_14
0088BA72: mov var_64, eax
0088BA75: mov var_6C, 00000003h
0088BA7C: cmp [008F2010h], 00000000h
0088BA83: jnz 88BAA0h
0088BA85: push 008F2010h
0088BA8A: push 00433984h
0088BA8F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088BA94: mov var_000000B4, 008F2010h
0088BA9E: jmp 88BAAAh
0088BAA0: mov var_000000B4, 008F2010h
0088BAAA: push 00000000h
0088BAAC: push 00000004h
0088BAAE: push 00440E58h
0088BAB3: push 00000010h
0088BAB5: pop eax
0088BAB6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088BABB: lea esi, var_6C
0088BABE: mov edi, esp
0088BAC0: movsd 
0088BAC1: movsd 
0088BAC2: movsd 
0088BAC3: movsd 
0088BAC4: push 00000001h
0088BAC6: push 00000000h
0088BAC8: push 00440E48h
0088BACD: push 00000000h
0088BACF: push 00000018h
0088BAD1: mov eax, var_000000B4
0088BAD7: mov eax, [eax]
0088BAD9: mov ecx, var_000000B4
0088BADF: mov ecx, [ecx]
0088BAE1: mov ecx, [ecx]
0088BAE3: push eax
0088BAE4: call [ecx+0000054Ch]
0088BAEA: push eax
0088BAEB: lea eax, var_20
0088BAEE: push eax
0088BAEF: call 00410A84h ; Set (object)
0088BAF4: push eax
0088BAF5: lea eax, var_38
0088BAF8: push eax
0088BAF9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088BAFE: add esp, 00000010h
0088BB01: push eax
0088BB02: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088BB07: push eax
0088BB08: lea eax, var_24
0088BB0B: push eax
0088BB0C: call 00410A84h ; Set (object)
0088BB11: push eax
0088BB12: lea eax, var_48
0088BB15: push eax
0088BB16: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088BB1B: add esp, 00000020h
0088BB1E: push eax
0088BB1F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088BB24: push eax
0088BB25: lea eax, var_28
0088BB28: push eax
0088BB29: call 00410A84h ; Set (object)
0088BB2E: push eax
0088BB2F: lea eax, var_58
0088BB32: push eax
0088BB33: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088BB38: add esp, 00000010h
0088BB3B: push eax
0088BB3C: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0088BB41: sub ax, FFFFh
0088BB45: neg ax
0088BB48: sbb eax, eax
0088BB4A: inc eax
0088BB4B: neg eax
0088BB4D: mov var_00000098, ax
0088BB54: lea eax, var_28
0088BB57: push eax
0088BB58: lea eax, var_24
0088BB5B: push eax
0088BB5C: lea eax, var_20
0088BB5F: push eax
0088BB60: push 00000003h
0088BB62: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088BB67: add esp, 00000010h
0088BB6A: lea eax, var_58
0088BB6D: push eax
0088BB6E: lea eax, var_48
0088BB71: push eax
0088BB72: lea eax, var_38
0088BB75: push eax
0088BB76: push 00000003h
0088BB78: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088BB7D: add esp, 00000010h
0088BB80: movsx eax, word ptr var_00000098
0088BB87: test eax, eax
0088BB89: jz 0088BD33h
0088BB8F: mov eax, var_14
0088BB92: mov var_64, eax
0088BB95: mov var_6C, 00000003h
0088BB9C: cmp [008F2010h], 00000000h
0088BBA3: jnz 88BBC0h
0088BBA5: push 008F2010h
0088BBAA: push 00433984h
0088BBAF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088BBB4: mov var_000000B8, 008F2010h
0088BBBE: jmp 88BBCAh
0088BBC0: mov var_000000B8, 008F2010h
0088BBCA: push 00000000h
0088BBCC: push 00000014h
0088BBCE: push 00440E58h
0088BBD3: push 00000010h
0088BBD5: pop eax
0088BBD6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088BBDB: lea esi, var_6C
0088BBDE: mov edi, esp
0088BBE0: movsd 
0088BBE1: movsd 
0088BBE2: movsd 
0088BBE3: movsd 
0088BBE4: push 00000001h
0088BBE6: push 00000000h
0088BBE8: push 00440E48h
0088BBED: push 00000000h
0088BBEF: push 00000018h
0088BBF1: mov eax, var_000000B8
0088BBF7: mov eax, [eax]
0088BBF9: mov ecx, var_000000B8
0088BBFF: mov ecx, [ecx]
0088BC01: mov ecx, [ecx]
0088BC03: push eax
0088BC04: call [ecx+0000054Ch]
0088BC0A: push eax
0088BC0B: lea eax, var_20
0088BC0E: push eax
0088BC0F: call 00410A84h ; Set (object)
0088BC14: push eax
0088BC15: lea eax, var_38
0088BC18: push eax
0088BC19: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088BC1E: add esp, 00000010h
0088BC21: push eax
0088BC22: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088BC27: push eax
0088BC28: lea eax, var_24
0088BC2B: push eax
0088BC2C: call 00410A84h ; Set (object)
0088BC31: push eax
0088BC32: lea eax, var_48
0088BC35: push eax
0088BC36: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088BC3B: add esp, 00000020h
0088BC3E: push eax
0088BC3F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088BC44: push eax
0088BC45: lea eax, var_28
0088BC48: push eax
0088BC49: call 00410A84h ; Set (object)
0088BC4E: push eax
0088BC4F: lea eax, var_58
0088BC52: push eax
0088BC53: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088BC58: add esp, 00000010h
0088BC5B: push eax
0088BC5C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088BC61: mov edx, eax
0088BC63: lea ecx, var_18
0088BC66: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088BC6B: push eax
0088BC6C: call 004109DCh ; Val(arg_1)
0088BC71: fstp real8 ptr var_00000094
0088BC77: push 00000000h
0088BC79: push 00000000h
0088BC7B: push 00000001h
0088BC7D: push 00000000h
0088BC7F: lea eax, var_5C
0088BC82: push eax
0088BC83: push 00000010h
0088BC85: push 00000880h
0088BC8A: call 00410946h ; ReDim
0088BC8F: add esp, 0000001Ch
0088BC92: mov var_00000084, 00442930h
0088BC9C: mov var_0000008C, 00000008h
0088BCA6: lea esi, var_0000008C
0088BCAC: push 00000000h
0088BCAE: push var_5C
0088BCB1: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0088BCB6: mov ecx, eax
0088BCB8: mov edx, esi
0088BCBA: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0088BCBF: mov edx, 0043D7C8h ; x79
0088BCC4: lea ecx, var_1C
0088BCC7: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0088BCCC: lea eax, var_5C
0088BCCF: push eax
0088BCD0: lea eax, var_1C
0088BCD3: push eax
0088BCD4: fld real8 ptr var_00000094
0088BCDA: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0088BCDF: push eax
0088BCE0: call 007A6910h
0088BCE5: lea eax, var_5C
0088BCE8: push eax
0088BCE9: push 00000000h
0088BCEB: call 00410934h ; Erase
0088BCF0: lea eax, var_1C
0088BCF3: push eax
0088BCF4: lea eax, var_18
0088BCF7: push eax
0088BCF8: push 00000002h
0088BCFA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0088BCFF: add esp, 0000000Ch
0088BD02: lea eax, var_28
0088BD05: push eax
0088BD06: lea eax, var_24
0088BD09: push eax
0088BD0A: lea eax, var_20
0088BD0D: push eax
0088BD0E: push 00000003h
0088BD10: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088BD15: add esp, 00000010h
0088BD18: lea eax, var_58
0088BD1B: push eax
0088BD1C: lea eax, var_48
0088BD1F: push eax
0088BD20: lea eax, var_38
0088BD23: push eax
0088BD24: push 00000003h
0088BD26: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088BD2B: add esp, 00000010h
0088BD2E: call 0041096Ah ; DoEvents
0088BD33: jmp 0088BA4Eh
0088BD38: jmp 0088C0F2h
0088BD3D: cmp [008F2010h], 00000000h
0088BD44: jnz 88BD61h
0088BD46: push 008F2010h
0088BD4B: push 00433984h
0088BD50: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088BD55: mov var_000000BC, 008F2010h
0088BD5F: jmp 88BD6Bh
0088BD61: mov var_000000BC, 008F2010h
0088BD6B: push 00000000h
0088BD6D: push 00000001h
0088BD6F: push 00440E48h
0088BD74: push 00000000h
0088BD76: push 00000018h
0088BD78: mov eax, var_000000BC
0088BD7E: mov eax, [eax]
0088BD80: mov ecx, var_000000BC
0088BD86: mov ecx, [ecx]
0088BD88: mov ecx, [ecx]
0088BD8A: push eax
0088BD8B: call [ecx+00000550h]
0088BD91: push eax
0088BD92: lea eax, var_20
0088BD95: push eax
0088BD96: call 00410A84h ; Set (object)
0088BD9B: push eax
0088BD9C: lea eax, var_38
0088BD9F: push eax
0088BDA0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088BDA5: add esp, 00000010h
0088BDA8: push eax
0088BDA9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088BDAE: push eax
0088BDAF: lea eax, var_24
0088BDB2: push eax
0088BDB3: call 00410A84h ; Set (object)
0088BDB8: push eax
0088BDB9: lea eax, var_48
0088BDBC: push eax
0088BDBD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088BDC2: add esp, 00000010h
0088BDC5: push eax
0088BDC6: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0088BDCB: mov var_000000A8, eax
0088BDD1: mov var_000000A4, 00000001h
0088BDDB: mov var_14, 00000001h
0088BDE2: lea eax, var_24
0088BDE5: push eax
0088BDE6: lea eax, var_20
0088BDE9: push eax
0088BDEA: push 00000002h
0088BDEC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088BDF1: add esp, 0000000Ch
0088BDF4: lea eax, var_48
0088BDF7: push eax
0088BDF8: lea eax, var_38
0088BDFB: push eax
0088BDFC: push 00000002h
0088BDFE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088BE03: add esp, 0000000Ch
0088BE06: jmp 88BE1Ah
0088BE08: mov eax, var_14
0088BE0B: add eax, var_000000A4
0088BE11: jo 0088C158h
0088BE17: mov var_14, eax
0088BE1A: mov eax, var_14
0088BE1D: cmp eax, var_000000A8
0088BE23: jnle 0088C0F2h
0088BE29: mov eax, var_14
0088BE2C: mov var_64, eax
0088BE2F: mov var_6C, 00000003h
0088BE36: cmp [008F2010h], 00000000h
0088BE3D: jnz 88BE5Ah
0088BE3F: push 008F2010h
0088BE44: push 00433984h
0088BE49: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088BE4E: mov var_000000C0, 008F2010h
0088BE58: jmp 88BE64h
0088BE5A: mov var_000000C0, 008F2010h
0088BE64: push 00000000h
0088BE66: push 00000004h
0088BE68: push 00440E58h
0088BE6D: push 00000010h
0088BE6F: pop eax
0088BE70: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088BE75: lea esi, var_6C
0088BE78: mov edi, esp
0088BE7A: movsd 
0088BE7B: movsd 
0088BE7C: movsd 
0088BE7D: movsd 
0088BE7E: push 00000001h
0088BE80: push 00000000h
0088BE82: push 00440E48h
0088BE87: push 00000000h
0088BE89: push 00000018h
0088BE8B: mov eax, var_000000C0
0088BE91: mov eax, [eax]
0088BE93: mov ecx, var_000000C0
0088BE99: mov ecx, [ecx]
0088BE9B: mov ecx, [ecx]
0088BE9D: push eax
0088BE9E: call [ecx+00000550h]
0088BEA4: push eax
0088BEA5: lea eax, var_20
0088BEA8: push eax
0088BEA9: call 00410A84h ; Set (object)
0088BEAE: push eax
0088BEAF: lea eax, var_38
0088BEB2: push eax
0088BEB3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088BEB8: add esp, 00000010h
0088BEBB: push eax
0088BEBC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088BEC1: push eax
0088BEC2: lea eax, var_24
0088BEC5: push eax
0088BEC6: call 00410A84h ; Set (object)
0088BECB: push eax
0088BECC: lea eax, var_48
0088BECF: push eax
0088BED0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088BED5: add esp, 00000020h
0088BED8: push eax
0088BED9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088BEDE: push eax
0088BEDF: lea eax, var_28
0088BEE2: push eax
0088BEE3: call 00410A84h ; Set (object)
0088BEE8: push eax
0088BEE9: lea eax, var_58
0088BEEC: push eax
0088BEED: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088BEF2: add esp, 00000010h
0088BEF5: push eax
0088BEF6: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0088BEFB: sub ax, FFFFh
0088BEFF: neg ax
0088BF02: sbb eax, eax
0088BF04: inc eax
0088BF05: neg eax
0088BF07: mov var_00000098, ax
0088BF0E: lea eax, var_28
0088BF11: push eax
0088BF12: lea eax, var_24
0088BF15: push eax
0088BF16: lea eax, var_20
0088BF19: push eax
0088BF1A: push 00000003h
0088BF1C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088BF21: add esp, 00000010h
0088BF24: lea eax, var_58
0088BF27: push eax
0088BF28: lea eax, var_48
0088BF2B: push eax
0088BF2C: lea eax, var_38
0088BF2F: push eax
0088BF30: push 00000003h
0088BF32: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088BF37: add esp, 00000010h
0088BF3A: movsx eax, word ptr var_00000098
0088BF41: test eax, eax
0088BF43: jz 0088C0EDh
0088BF49: mov eax, var_14
0088BF4C: mov var_64, eax
0088BF4F: mov var_6C, 00000003h
0088BF56: cmp [008F2010h], 00000000h
0088BF5D: jnz 88BF7Ah
0088BF5F: push 008F2010h
0088BF64: push 00433984h
0088BF69: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088BF6E: mov var_000000C4, 008F2010h
0088BF78: jmp 88BF84h
0088BF7A: mov var_000000C4, 008F2010h
0088BF84: push 00000000h
0088BF86: push 00000014h
0088BF88: push 00440E58h
0088BF8D: push 00000010h
0088BF8F: pop eax
0088BF90: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088BF95: lea esi, var_6C
0088BF98: mov edi, esp
0088BF9A: movsd 
0088BF9B: movsd 
0088BF9C: movsd 
0088BF9D: movsd 
0088BF9E: push 00000001h
0088BFA0: push 00000000h
0088BFA2: push 00440E48h
0088BFA7: push 00000000h
0088BFA9: push 00000018h
0088BFAB: mov eax, var_000000C4
0088BFB1: mov eax, [eax]
0088BFB3: mov ecx, var_000000C4
0088BFB9: mov ecx, [ecx]
0088BFBB: mov ecx, [ecx]
0088BFBD: push eax
0088BFBE: call [ecx+00000550h]
0088BFC4: push eax
0088BFC5: lea eax, var_20
0088BFC8: push eax
0088BFC9: call 00410A84h ; Set (object)
0088BFCE: push eax
0088BFCF: lea eax, var_38
0088BFD2: push eax
0088BFD3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088BFD8: add esp, 00000010h
0088BFDB: push eax
0088BFDC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088BFE1: push eax
0088BFE2: lea eax, var_24
0088BFE5: push eax
0088BFE6: call 00410A84h ; Set (object)
0088BFEB: push eax
0088BFEC: lea eax, var_48
0088BFEF: push eax
0088BFF0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088BFF5: add esp, 00000020h
0088BFF8: push eax
0088BFF9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088BFFE: push eax
0088BFFF: lea eax, var_28
0088C002: push eax
0088C003: call 00410A84h ; Set (object)
0088C008: push eax
0088C009: lea eax, var_58
0088C00C: push eax
0088C00D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088C012: add esp, 00000010h
0088C015: push eax
0088C016: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088C01B: mov edx, eax
0088C01D: lea ecx, var_18
0088C020: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088C025: push eax
0088C026: call 004109DCh ; Val(arg_1)
0088C02B: fstp real8 ptr var_00000094
0088C031: push 00000000h
0088C033: push 00000000h
0088C035: push 00000001h
0088C037: push 00000000h
0088C039: lea eax, var_5C
0088C03C: push eax
0088C03D: push 00000010h
0088C03F: push 00000880h
0088C044: call 00410946h ; ReDim
0088C049: add esp, 0000001Ch
0088C04C: mov var_00000084, 00442930h
0088C056: mov var_0000008C, 00000008h
0088C060: lea esi, var_0000008C
0088C066: push 00000000h
0088C068: push var_5C
0088C06B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0088C070: mov ecx, eax
0088C072: mov edx, esi
0088C074: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0088C079: mov edx, 0043D7C8h ; x79
0088C07E: lea ecx, var_1C
0088C081: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0088C086: lea eax, var_5C
0088C089: push eax
0088C08A: lea eax, var_1C
0088C08D: push eax
0088C08E: fld real8 ptr var_00000094
0088C094: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0088C099: push eax
0088C09A: call 007A6910h
0088C09F: lea eax, var_5C
0088C0A2: push eax
0088C0A3: push 00000000h
0088C0A5: call 00410934h ; Erase
0088C0AA: lea eax, var_1C
0088C0AD: push eax
0088C0AE: lea eax, var_18
0088C0B1: push eax
0088C0B2: push 00000002h
0088C0B4: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0088C0B9: add esp, 0000000Ch
0088C0BC: lea eax, var_28
0088C0BF: push eax
0088C0C0: lea eax, var_24
0088C0C3: push eax
0088C0C4: lea eax, var_20
0088C0C7: push eax
0088C0C8: push 00000003h
0088C0CA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088C0CF: add esp, 00000010h
0088C0D2: lea eax, var_58
0088C0D5: push eax
0088C0D6: lea eax, var_48
0088C0D9: push eax
0088C0DA: lea eax, var_38
0088C0DD: push eax
0088C0DE: push 00000003h
0088C0E0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088C0E5: add esp, 00000010h
0088C0E8: call 0041096Ah ; DoEvents
0088C0ED: jmp 0088BE08h
0088C0F2: wait 
0088C0F3: push 0088C145h
0088C0F8: jmp 88C144h
0088C0FA: lea eax, var_1C
0088C0FD: push eax
0088C0FE: lea eax, var_18
0088C101: push eax
0088C102: push 00000002h
0088C104: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0088C109: add esp, 0000000Ch
0088C10C: lea eax, var_28
0088C10F: push eax
0088C110: lea eax, var_24
0088C113: push eax
0088C114: lea eax, var_20
0088C117: push eax
0088C118: push 00000003h
0088C11A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088C11F: add esp, 00000010h
0088C122: lea eax, var_58
0088C125: push eax
0088C126: lea eax, var_48
0088C129: push eax
0088C12A: lea eax, var_38
0088C12D: push eax
0088C12E: push 00000003h
0088C130: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088C135: add esp, 00000010h
0088C138: lea eax, var_5C
0088C13B: push eax
0088C13C: push 00000000h
0088C13E: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0088C143: ret 
End Sub

