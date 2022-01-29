VERSION 5.00
Begin VB.Form frmWebcam
  Caption = "Webcam"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmWebcam.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 10605
  ClientHeight = 6315
  StartUpPosition = 3 'Windows Default
  Begin VB.PictureBox imgWebCam
    ForeColor = &H80000008&
    Left = 120
    Top = 120
    Width = 10455
    Height = 5295
    TabIndex = 6
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    Appearance = 0 'Flat
    Begin VB.Timer tmrScreenCap
      Enabled = 0   'False
      Left = 120
      Top = 0
    End
    Begin VB.Timer tmrFullscreen
      Enabled = 0   'False
      Interval = 1
      Left = 600
      Top = 0
    End
    Begin VB.Timer tmrScrCapMouse
      Interval = 500
      Left = 1080
      Top = 0
    End
    Begin VB.Timer tmrCountdown
      Enabled = 0   'False
      Interval = 1
      Left = 2040
      Top = 0
    End
    Begin VB.Timer tmrFPS
      Interval = 1000
      Left = 1560
      Top = 0
    End
    Begin VB.Timer tmrScreenKey
      Enabled = 0   'False
      Interval = 250
      Left = 2520
      Top = 0
    End
    Begin VB.Timer tmrAutoStart
      Enabled = 0   'False
      Interval = 1500
      Left = 600
      Top = 0
    End
    Begin VB.FileListBox flWebs
      Left = 8400
      Top = 120
      Width = 1095
      Height = 870
      Visible = 0   'False
      TabIndex = 7
    End
    Begin VB.Timer tmrWC
      Enabled = 0   'False
      Interval = 1
      Left = 120
      Top = 0
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 5400
    Width = 10455
    Height = 855
    TabIndex = 0
    Begin VB.ComboBox cmbSize
      Style = 2
      Left = 3240
      Top = 480
      Width = 975
      Height = 315
      TabIndex = 11
      List = "frmWebcam.frx":8E79
      ItemData = "frmWebcam.frx":8E87
    End
    Begin VB.ComboBox cmbInterface
      Style = 2
      Left = 5280
      Top = 480
      Width = 5055
      Height = 315
      TabIndex = 9
    End
    Begin XtremeSuiteControls.ProgressBar pbWebcam
      Left = 1395
      Top = 195
      Width = 8175
      Height = 210
      TabIndex = 4
    End
    Begin MSComctlLib.Slider sldQuality
      Left = 720
      Top = 520
      Width = 1935
      Height = 255
      TabIndex = 1
    End
    Begin XtremeSuiteControls.PushButton cmdActivate
      Left = 120
      Top = 200
      Width = 1095
      Height = 255
      TabIndex = 3
    End
    Begin XtremeSuiteControls.CheckBox chkWebcamSave
      Left = 9720
      Top = 165
      Width = 615
      Height = 255
      TabIndex = 5
    End
    Begin VB.Label lblWebcam
      Caption = "Size:"
      Index = 2
      Left = 2760
      Top = 480
      Width = 375
      Height = 255
      TabIndex = 10
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblWebcam
      Caption = "Interface:"
      Index = 1
      Left = 4440
      Top = 540
      Width = 735
      Height = 255
      TabIndex = 8
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblWebcam
      Caption = "Quality:"
      Index = 0
      Left = 120
      Top = 540
      Width = 615
      Height = 255
      TabIndex = 2
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
  End
End

Attribute VB_Name = "frmWebcam"


Private sub Form__80BD6A
0080BD6A: push ebp
0080BD6B: mov ebp, esp
0080BD6D: sub esp, 0000000Ch
0080BD70: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080BD75: mov eax, fs:[00h]
0080BD7B: push eax
0080BD7C: mov fs:[00000000h], esp
0080BD83: push 0000004Ch
0080BD85: pop eax
0080BD86: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080BD8B: push ebx
0080BD8C: push esi
0080BD8D: push edi
0080BD8E: mov var_0C, esp
0080BD91: mov var_08, 0040A618h
0080BD98: mov eax, [ebp+08h]
0080BD9B: and eax, 00000001h
0080BD9E: mov var_04, eax
0080BDA1: mov eax, [ebp+08h]
0080BDA4: and al, FEh
0080BDA6: mov [ebp+08h], eax
0080BDA9: mov eax, [ebp+08h]
0080BDAC: mov eax, [eax]
0080BDAE: push [ebp+08h]
0080BDB1: call [eax+04h]
0080BDB4: mov var_24, 80020004h
0080BDBB: mov var_2C, 0000000Ah
0080BDC2: push 00000010h
0080BDC4: pop eax
0080BDC5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080BDCA: lea esi, var_2C
0080BDCD: mov edi, esp
0080BDCF: movsd 
0080BDD0: movsd 
0080BDD1: movsd 
0080BDD2: movsd 
0080BDD3: push 0045329Ch ; quality
0080BDD8: push 00453288h ; webcam
0080BDDD: push 00445984h ; bssnet
0080BDE2: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
0080BDE7: mov edx, eax
0080BDE9: lea ecx, var_18
0080BDEC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080BDF1: push eax
0080BDF2: call 004109DCh ; Val(arg_1)
0080BDF7: call 00410814h ; msvbvm60.dll.__vbaFpI4
0080BDFC: mov var_34, eax
0080BDFF: mov var_3C, 00000003h
0080BE06: push 00000010h
0080BE08: pop eax
0080BE09: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080BE0E: lea esi, var_3C
0080BE11: mov edi, esp
0080BE13: movsd 
0080BE14: movsd 
0080BE15: movsd 
0080BE16: movsd 
0080BE17: push 0000000Bh
0080BE19: mov eax, [ebp+08h]
0080BE1C: mov eax, [eax]
0080BE1E: push [ebp+08h]
0080BE21: call [eax+00000338h]
0080BE27: push eax
0080BE28: lea eax, var_1C
0080BE2B: push eax
0080BE2C: call 00410A84h ; Set (object)
0080BE31: push eax
0080BE32: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0080BE37: lea ecx, var_18
0080BE3A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0080BE3F: lea ecx, var_1C
0080BE42: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080BE47: mov var_24, 80020004h
0080BE4E: mov var_2C, 0000000Ah
0080BE55: push 00000010h
0080BE57: pop eax
0080BE58: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080BE5D: lea esi, var_2C
0080BE60: mov edi, esp
0080BE62: movsd 
0080BE63: movsd 
0080BE64: movsd 
0080BE65: movsd 
0080BE66: push 004532B0h ; save
0080BE6B: push 00453288h ; webcam
0080BE70: push 00445984h ; bssnet
0080BE75: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
0080BE7A: mov edx, eax
0080BE7C: lea ecx, var_18
0080BE7F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080BE84: push eax
0080BE85: call 004109DCh ; Val(arg_1)
0080BE8A: fstp real8 ptr var_34
0080BE8D: mov var_3C, 00000005h
0080BE94: push 00000010h
0080BE96: pop eax
0080BE97: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080BE9C: lea esi, var_3C
0080BE9F: mov edi, esp
0080BEA1: movsd 
0080BEA2: movsd 
0080BEA3: movsd 
0080BEA4: movsd 
0080BEA5: push 00000000h
0080BEA7: mov eax, [ebp+08h]
0080BEAA: mov eax, [eax]
0080BEAC: push [ebp+08h]
0080BEAF: call [eax+00000340h]
0080BEB5: push eax
0080BEB6: lea eax, var_1C
0080BEB9: push eax
0080BEBA: call 00410A84h ; Set (object)
0080BEBF: push eax
0080BEC0: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0080BEC5: lea ecx, var_18
0080BEC8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0080BECD: lea ecx, var_1C
0080BED0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080BED5: mov eax, [ebp+08h]
0080BED8: mov eax, [eax]
0080BEDA: push [ebp+08h]
0080BEDD: call [eax+00000328h]
0080BEE3: push eax
0080BEE4: lea eax, var_1C
0080BEE7: push eax
0080BEE8: call 00410A84h ; Set (object)
0080BEED: mov var_50, eax
0080BEF0: push 00453140h ; 320
0080BEF5: mov eax, var_50
0080BEF8: mov eax, [eax]
0080BEFA: push var_50
0080BEFD: call [eax+000000ACh]
0080BF03: fclex 
0080BF05: mov var_54, eax
0080BF08: cmp var_54, 00000000h
0080BF0C: jnl 80BF28h
0080BF0E: push 000000ACh
0080BF13: push 0044C944h
0080BF18: push var_50
0080BF1B: push var_54
0080BF1E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080BF23: mov var_60, eax
0080BF26: jmp 80BF2Ch
0080BF28: and var_60, 00000000h
0080BF2C: lea ecx, var_1C
0080BF2F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080BF34: mov var_04, 00000000h
0080BF3B: wait 
0080BF3C: push 0080BF55h
0080BF41: jmp 80BF54h
0080BF43: lea ecx, var_18
0080BF46: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0080BF4B: lea ecx, var_1C
0080BF4E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080BF53: ret 
End Sub

Private sub Form__80C299
0080C299: push ebp
0080C29A: mov ebp, esp
0080C29C: sub esp, 00000018h
0080C29F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080C2A4: mov eax, fs:[00h]
0080C2AA: push eax
0080C2AB: mov fs:[00000000h], esp
0080C2B2: mov eax, 000000E0h
0080C2B7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080C2BC: push ebx
0080C2BD: push esi
0080C2BE: push edi
0080C2BF: mov var_18, esp
0080C2C2: mov var_14, 0040A638h
0080C2C9: mov eax, [ebp+08h]
0080C2CC: and eax, 00000001h
0080C2CF: mov var_10, eax
0080C2D2: mov eax, [ebp+08h]
0080C2D5: and al, FEh
0080C2D7: mov [ebp+08h], eax
0080C2DA: mov var_0C, 00000000h
0080C2E1: mov eax, [ebp+08h]
0080C2E4: mov eax, [eax]
0080C2E6: push [ebp+08h]
0080C2E9: call [eax+04h]
0080C2EC: mov var_04, 00000001h
0080C2F3: mov var_04, 00000002h
0080C2FA: push FFFFFFFFh
0080C2FC: call 00410A60h ; On Error ...
0080C301: mov var_04, 00000003h
0080C308: lea eax, var_000000A0
0080C30E: push eax
0080C30F: mov eax, [ebp+08h]
0080C312: mov eax, [eax]
0080C314: push [ebp+08h]
0080C317: call [eax+00000080h]
0080C31D: fclex 
0080C31F: mov var_000000AC, eax
0080C325: cmp var_000000AC, 00000000h
0080C32C: jnl 80C34Eh
0080C32E: push 00000080h
0080C333: push 00448BFCh
0080C338: push [ebp+08h]
0080C33B: push var_000000AC
0080C341: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080C346: mov var_000000D8, eax
0080C34C: jmp 80C355h
0080C34E: and var_000000D8, 00000000h
0080C355: mov eax, [ebp+08h]
0080C358: mov eax, [eax]
0080C35A: push [ebp+08h]
0080C35D: call [eax+00000324h]
0080C363: push eax
0080C364: lea eax, var_24
0080C367: push eax
0080C368: call 00410A84h ; Set (object)
0080C36D: mov var_000000B0, eax
0080C373: lea eax, var_000000A8
0080C379: push eax
0080C37A: mov eax, var_000000B0
0080C380: mov eax, [eax]
0080C382: push var_000000B0
0080C388: call [eax+00000088h]
0080C38E: fclex 
0080C390: mov var_000000B4, eax
0080C396: cmp var_000000B4, 00000000h
0080C39D: jnl 80C3C2h
0080C39F: push 00000088h
0080C3A4: push 00447A30h
0080C3A9: push var_000000B0
0080C3AF: push var_000000B4
0080C3B5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080C3BA: mov var_000000DC, eax
0080C3C0: jmp 80C3C9h
0080C3C2: and var_000000DC, 00000000h
0080C3C9: mov eax, [ebp+08h]
0080C3CC: mov eax, [eax]
0080C3CE: push [ebp+08h]
0080C3D1: call [eax+000002FCh]
0080C3D7: push eax
0080C3D8: lea eax, var_28
0080C3DB: push eax
0080C3DC: call 00410A84h ; Set (object)
0080C3E1: mov var_000000BC, eax
0080C3E7: lea eax, var_000000A4
0080C3ED: push eax
0080C3EE: mov eax, [ebp+08h]
0080C3F1: mov eax, [eax]
0080C3F3: push [ebp+08h]
0080C3F6: call [eax+00000088h]
0080C3FC: fclex 
0080C3FE: mov var_000000B8, eax
0080C404: cmp var_000000B8, 00000000h
0080C40B: jnl 80C42Dh
0080C40D: push 00000088h
0080C412: push 00448BFCh
0080C417: push [ebp+08h]
0080C41A: push var_000000B8
0080C420: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080C425: mov var_000000E0, eax
0080C42B: jmp 80C434h
0080C42D: and var_000000E0, 00000000h
0080C434: fld real4 ptr var_000000A4
0080C43A: fsub real4 ptr var_000000A8
0080C440: fsub real4 ptr [0040A688h]
0080C446: fstp real4 ptr var_64
0080C449: fstsw ax
0080C44B: test al, 0Dh
0080C44D: jnz 0080CA90h
0080C453: mov var_6C, 00000004h
0080C45A: fld real4 ptr var_000000A0
0080C460: fsub real4 ptr [00402B7Ch]
0080C466: fstp real4 ptr var_54
0080C469: fstsw ax
0080C46B: test al, 0Dh
0080C46D: jnz 0080CA90h
0080C473: mov var_5C, 00000004h
0080C47A: and var_44, 00000000h
0080C47E: mov var_4C, 00000002h
0080C485: push 00000010h
0080C487: pop eax
0080C488: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080C48D: lea esi, var_6C
0080C490: mov edi, esp
0080C492: movsd 
0080C493: movsd 
0080C494: movsd 
0080C495: movsd 
0080C496: push 00000010h
0080C498: pop eax
0080C499: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080C49E: lea esi, var_5C
0080C4A1: mov edi, esp
0080C4A3: movsd 
0080C4A4: movsd 
0080C4A5: movsd 
0080C4A6: movsd 
0080C4A7: push 00000010h
0080C4A9: pop eax
0080C4AA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080C4AF: lea esi, var_4C
0080C4B2: mov edi, esp
0080C4B4: movsd 
0080C4B5: movsd 
0080C4B6: movsd 
0080C4B7: movsd 
0080C4B8: fldz 
0080C4BA: push ecx
0080C4BB: fstp real4 ptr [esp]
0080C4BE: mov eax, var_000000BC
0080C4C4: mov eax, [eax]
0080C4C6: push var_000000BC
0080C4CC: call [eax+00000268h]
0080C4D2: fclex 
0080C4D4: mov var_000000C0, eax
0080C4DA: cmp var_000000C0, 00000000h
0080C4E1: jnl 80C506h
0080C4E3: push 00000268h
0080C4E8: push 00440EDCh
0080C4ED: push var_000000BC
0080C4F3: push var_000000C0
0080C4F9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080C4FE: mov var_000000E4, eax
0080C504: jmp 80C50Dh
0080C506: and var_000000E4, 00000000h
0080C50D: lea eax, var_28
0080C510: push eax
0080C511: lea eax, var_24
0080C514: push eax
0080C515: push 00000002h
0080C517: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080C51C: add esp, 0000000Ch
0080C51F: mov var_04, 00000004h
0080C526: mov eax, [ebp+08h]
0080C529: mov eax, [eax]
0080C52B: push [ebp+08h]
0080C52E: call [eax+000002FCh]
0080C534: push eax
0080C535: lea eax, var_24
0080C538: push eax
0080C539: call 00410A84h ; Set (object)
0080C53E: mov var_000000AC, eax
0080C544: lea eax, var_000000A0
0080C54A: push eax
0080C54B: mov eax, var_000000AC
0080C551: mov eax, [eax]
0080C553: push var_000000AC
0080C559: call [eax+00000088h]
0080C55F: fclex 
0080C561: mov var_000000B0, eax
0080C567: cmp var_000000B0, 00000000h
0080C56E: jnl 80C593h
0080C570: push 00000088h
0080C575: push 00440EDCh
0080C57A: push var_000000AC
0080C580: push var_000000B0
0080C586: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080C58B: mov var_000000E8, eax
0080C591: jmp 80C59Ah
0080C593: and var_000000E8, 00000000h
0080C59A: lea eax, var_000000A4
0080C5A0: push eax
0080C5A1: mov eax, [ebp+08h]
0080C5A4: mov eax, [eax]
0080C5A6: push [ebp+08h]
0080C5A9: call [eax+00000080h]
0080C5AF: fclex 
0080C5B1: mov var_000000B4, eax
0080C5B7: cmp var_000000B4, 00000000h
0080C5BE: jnl 80C5E0h
0080C5C0: push 00000080h
0080C5C5: push 00448BFCh
0080C5CA: push [ebp+08h]
0080C5CD: push var_000000B4
0080C5D3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080C5D8: mov var_000000EC, eax
0080C5DE: jmp 80C5E7h
0080C5E0: and var_000000EC, 00000000h
0080C5E7: mov eax, [ebp+08h]
0080C5EA: mov eax, [eax]
0080C5EC: push [ebp+08h]
0080C5EF: call [eax+00000324h]
0080C5F5: push eax
0080C5F6: lea eax, var_28
0080C5F9: push eax
0080C5FA: call 00410A84h ; Set (object)
0080C5FF: mov var_000000B8, eax
0080C605: mov var_64, 80020004h
0080C60C: mov var_6C, 0000000Ah
0080C613: fld real4 ptr var_000000A4
0080C619: fsub real4 ptr [00402B7Ch]
0080C61F: fstp real4 ptr var_54
0080C622: fstsw ax
0080C624: test al, 0Dh
0080C626: jnz 0080CA90h
0080C62C: mov var_5C, 00000004h
0080C633: fld real4 ptr var_000000A0
0080C639: fstp real4 ptr var_44
0080C63C: mov var_4C, 00000004h
0080C643: push 00000010h
0080C645: pop eax
0080C646: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080C64B: lea esi, var_6C
0080C64E: mov edi, esp
0080C650: movsd 
0080C651: movsd 
0080C652: movsd 
0080C653: movsd 
0080C654: push 00000010h
0080C656: pop eax
0080C657: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080C65C: lea esi, var_5C
0080C65F: mov edi, esp
0080C661: movsd 
0080C662: movsd 
0080C663: movsd 
0080C664: movsd 
0080C665: push 00000010h
0080C667: pop eax
0080C668: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080C66D: lea esi, var_4C
0080C670: mov edi, esp
0080C672: movsd 
0080C673: movsd 
0080C674: movsd 
0080C675: movsd 
0080C676: fldz 
0080C678: push ecx
0080C679: fstp real4 ptr [esp]
0080C67C: mov eax, var_000000B8
0080C682: mov eax, [eax]
0080C684: push var_000000B8
0080C68A: call [eax+00000178h]
0080C690: fclex 
0080C692: mov var_000000BC, eax
0080C698: cmp var_000000BC, 00000000h
0080C69F: jnl 80C6C4h
0080C6A1: push 00000178h
0080C6A6: push 00447A30h
0080C6AB: push var_000000B8
0080C6B1: push var_000000BC
0080C6B7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080C6BC: mov var_000000F0, eax
0080C6C2: jmp 80C6CBh
0080C6C4: and var_000000F0, 00000000h
0080C6CB: lea eax, var_28
0080C6CE: push eax
0080C6CF: lea eax, var_24
0080C6D2: push eax
0080C6D3: push 00000002h
0080C6D5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080C6DA: add esp, 0000000Ch
0080C6DD: mov var_04, 00000005h
0080C6E4: fld real4 ptr [0040A684h]
0080C6EA: fstp real4 ptr var_44
0080C6ED: mov var_4C, 00000004h
0080C6F4: mov var_64, 000000C3h
0080C6FB: mov var_6C, 00000002h
0080C702: mov eax, [ebp+08h]
0080C705: mov eax, [eax]
0080C707: push [ebp+08h]
0080C70A: call [eax+00000324h]
0080C710: push eax
0080C711: lea eax, var_24
0080C714: push eax
0080C715: call 00410A84h ; Set (object)
0080C71A: mov var_000000AC, eax
0080C720: lea eax, var_000000A0
0080C726: push eax
0080C727: mov eax, var_000000AC
0080C72D: mov eax, [eax]
0080C72F: push var_000000AC
0080C735: call [eax+00000080h]
0080C73B: fclex 
0080C73D: mov var_000000B0, eax
0080C743: cmp var_000000B0, 00000000h
0080C74A: jnl 80C76Fh
0080C74C: push 00000080h
0080C751: push 00447A30h
0080C756: push var_000000AC
0080C75C: push var_000000B0
0080C762: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080C767: mov var_000000F4, eax
0080C76D: jmp 80C776h
0080C76F: and var_000000F4, 00000000h
0080C776: fld real4 ptr var_000000A0
0080C77C: fsub real4 ptr [0040A680h]
0080C782: fstp real4 ptr var_00000084
0080C788: fstsw ax
0080C78A: test al, 0Dh
0080C78C: jnz 0080CA90h
0080C792: mov var_0000008C, 00000004h
0080C79C: push 00000010h
0080C79E: pop eax
0080C79F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080C7A4: lea esi, var_4C
0080C7A7: mov edi, esp
0080C7A9: movsd 
0080C7AA: movsd 
0080C7AB: movsd 
0080C7AC: movsd 
0080C7AD: push 00000010h
0080C7AF: pop eax
0080C7B0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080C7B5: lea esi, var_6C
0080C7B8: mov edi, esp
0080C7BA: movsd 
0080C7BB: movsd 
0080C7BC: movsd 
0080C7BD: movsd 
0080C7BE: push 00000010h
0080C7C0: pop eax
0080C7C1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080C7C6: lea esi, var_0000008C
0080C7CC: mov edi, esp
0080C7CE: movsd 
0080C7CF: movsd 
0080C7D0: movsd 
0080C7D1: movsd 
0080C7D2: push 00000003h
0080C7D4: push 80011002h
0080C7D9: mov eax, [ebp+08h]
0080C7DC: mov eax, [eax]
0080C7DE: push [ebp+08h]
0080C7E1: call [eax+00000334h]
0080C7E7: push eax
0080C7E8: lea eax, var_28
0080C7EB: push eax
0080C7EC: call 00410A84h ; Set (object)
0080C7F1: push eax
0080C7F2: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0080C7F7: add esp, 0000003Ch
0080C7FA: lea eax, var_28
0080C7FD: push eax
0080C7FE: lea eax, var_24
0080C801: push eax
0080C802: push 00000002h
0080C804: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080C809: add esp, 0000000Ch
0080C80C: mov var_04, 00000006h
0080C813: push 00000000h
0080C815: push 80010005h
0080C81A: mov eax, [ebp+08h]
0080C81D: mov eax, [eax]
0080C81F: push [ebp+08h]
0080C822: call [eax+00000340h]
0080C828: push eax
0080C829: lea eax, var_28
0080C82C: push eax
0080C82D: call 00410A84h ; Set (object)
0080C832: push eax
0080C833: lea eax, var_3C
0080C836: push eax
0080C837: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080C83C: add esp, 00000010h
0080C83F: mov eax, [ebp+08h]
0080C842: mov eax, [eax]
0080C844: push [ebp+08h]
0080C847: call [eax+00000324h]
0080C84D: push eax
0080C84E: lea eax, var_24
0080C851: push eax
0080C852: call 00410A84h ; Set (object)
0080C857: mov var_000000AC, eax
0080C85D: lea eax, var_000000A0
0080C863: push eax
0080C864: mov eax, var_000000AC
0080C86A: mov eax, [eax]
0080C86C: push var_000000AC
0080C872: call [eax+00000080h]
0080C878: fclex 
0080C87A: mov var_000000B0, eax
0080C880: cmp var_000000B0, 00000000h
0080C887: jnl 80C8ACh
0080C889: push 00000080h
0080C88E: push 00447A30h
0080C893: push var_000000AC
0080C899: push var_000000B0
0080C89F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080C8A4: mov var_000000F8, eax
0080C8AA: jmp 80C8B3h
0080C8AC: and var_000000F8, 00000000h
0080C8B3: lea eax, var_3C
0080C8B6: push eax
0080C8B7: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0080C8BC: fsubr real4 ptr var_000000A0
0080C8C2: fsub real4 ptr [0040A67Ch]
0080C8C8: fstp real4 ptr var_44
0080C8CB: fstsw ax
0080C8CD: test al, 0Dh
0080C8CF: jnz 0080CA90h
0080C8D5: mov var_4C, 00000004h
0080C8DC: push 00000010h
0080C8DE: pop eax
0080C8DF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080C8E4: lea esi, var_4C
0080C8E7: mov edi, esp
0080C8E9: movsd 
0080C8EA: movsd 
0080C8EB: movsd 
0080C8EC: movsd 
0080C8ED: push 80010003h
0080C8F2: mov eax, [ebp+08h]
0080C8F5: mov eax, [eax]
0080C8F7: push [ebp+08h]
0080C8FA: call [eax+00000340h]
0080C900: push eax
0080C901: lea eax, var_2C
0080C904: push eax
0080C905: call 00410A84h ; Set (object)
0080C90A: push eax
0080C90B: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0080C910: lea eax, var_2C
0080C913: push eax
0080C914: lea eax, var_28
0080C917: push eax
0080C918: lea eax, var_24
0080C91B: push eax
0080C91C: push 00000003h
0080C91E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080C923: add esp, 00000010h
0080C926: lea ecx, var_3C
0080C929: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0080C92E: mov var_04, 00000007h
0080C935: mov eax, [ebp+08h]
0080C938: mov eax, [eax]
0080C93A: push [ebp+08h]
0080C93D: call [eax+0000032Ch]
0080C943: push eax
0080C944: lea eax, var_28
0080C947: push eax
0080C948: call 00410A84h ; Set (object)
0080C94D: mov var_000000B4, eax
0080C953: mov eax, [ebp+08h]
0080C956: mov eax, [eax]
0080C958: push [ebp+08h]
0080C95B: call [eax+00000324h]
0080C961: push eax
0080C962: lea eax, var_24
0080C965: push eax
0080C966: call 00410A84h ; Set (object)
0080C96B: mov var_000000AC, eax
0080C971: lea eax, var_000000A0
0080C977: push eax
0080C978: mov eax, var_000000AC
0080C97E: mov eax, [eax]
0080C980: push var_000000AC
0080C986: call [eax+00000080h]
0080C98C: fclex 
0080C98E: mov var_000000B0, eax
0080C994: cmp var_000000B0, 00000000h
0080C99B: jnl 80C9C0h
0080C99D: push 00000080h
0080C9A2: push 00447A30h
0080C9A7: push var_000000AC
0080C9AD: push var_000000B0
0080C9B3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080C9B8: mov var_000000FC, eax
0080C9BE: jmp 80C9C7h
0080C9C0: and var_000000FC, 00000000h
0080C9C7: fld real4 ptr var_000000A0
0080C9CD: fsub real4 ptr [0040A678h]
0080C9D3: fstsw ax
0080C9D5: test al, 0Dh
0080C9D7: jnz 0080CA90h
0080C9DD: push ecx
0080C9DE: fstp real4 ptr [esp]
0080C9E1: mov eax, var_000000B4
0080C9E7: mov eax, [eax]
0080C9E9: push var_000000B4
0080C9EF: call [eax+00000084h]
0080C9F5: fclex 
0080C9F7: mov var_000000B8, eax
0080C9FD: cmp var_000000B8, 00000000h
0080CA04: jnl 80CA29h
0080CA06: push 00000084h
0080CA0B: push 0044C944h
0080CA10: push var_000000B4
0080CA16: push var_000000B8
0080CA1C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080CA21: mov var_00000100, eax
0080CA27: jmp 80CA30h
0080CA29: and var_00000100, 00000000h
0080CA30: lea eax, var_28
0080CA33: push eax
0080CA34: lea eax, var_24
0080CA37: push eax
0080CA38: push 00000002h
0080CA3A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080CA3F: add esp, 0000000Ch
0080CA42: mov var_10, 00000000h
0080CA49: wait 
0080CA4A: push 0080CA71h
0080CA4F: jmp 80CA70h
0080CA51: lea eax, var_2C
0080CA54: push eax
0080CA55: lea eax, var_28
0080CA58: push eax
0080CA59: lea eax, var_24
0080CA5C: push eax
0080CA5D: push 00000003h
0080CA5F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080CA64: add esp, 00000010h
0080CA67: lea ecx, var_3C
0080CA6A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0080CA6F: ret 
End Sub

Private sub Form__80CCDA
0080CCDA: push ebp
0080CCDB: mov ebp, esp
0080CCDD: sub esp, 0000000Ch
0080CCE0: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080CCE5: mov eax, fs:[00h]
0080CCEB: push eax
0080CCEC: mov fs:[00000000h], esp
0080CCF3: push 0000005Ch
0080CCF5: pop eax
0080CCF6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080CCFB: push ebx
0080CCFC: push esi
0080CCFD: push edi
0080CCFE: mov var_0C, esp
0080CD01: mov var_08, 0040A6A0h
0080CD08: mov eax, [ebp+08h]
0080CD0B: and eax, 00000001h
0080CD0E: mov var_04, eax
0080CD11: mov eax, [ebp+08h]
0080CD14: and al, FEh
0080CD16: mov [ebp+08h], eax
0080CD19: mov eax, [ebp+08h]
0080CD1C: mov eax, [eax]
0080CD1E: push [ebp+08h]
0080CD21: call [eax+04h]
0080CD24: lea eax, var_18
0080CD27: push eax
0080CD28: mov eax, [ebp+08h]
0080CD2B: mov eax, [eax]
0080CD2D: push [ebp+08h]
0080CD30: call [eax+000001C0h]
0080CD36: fclex 
0080CD38: mov var_54, eax
0080CD3B: cmp var_54, 00000000h
0080CD3F: jnl 80CD5Bh
0080CD41: push 000001C0h
0080CD46: push 00448BFCh
0080CD4B: push [ebp+08h]
0080CD4E: push var_54
0080CD51: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080CD56: mov var_64, eax
0080CD59: jmp 80CD5Fh
0080CD5B: and var_64, 00000000h
0080CD5F: push var_18
0080CD62: call 004109DCh ; Val(arg_1)
0080CD67: fstp real8 ptr var_50
0080CD6A: push 00000000h
0080CD6C: push 00000001h
0080CD6E: push 00000001h
0080CD70: push 00000000h
0080CD72: lea eax, var_28
0080CD75: push eax
0080CD76: push 00000010h
0080CD78: push 00000880h
0080CD7D: call 00410946h ; ReDim
0080CD82: add esp, 0000001Ch
0080CD85: lea eax, var_1C
0080CD88: push eax
0080CD89: mov eax, [ebp+08h]
0080CD8C: mov eax, [eax]
0080CD8E: push [ebp+08h]
0080CD91: call [eax+000001C0h]
0080CD97: fclex 
0080CD99: mov var_58, eax
0080CD9C: cmp var_58, 00000000h
0080CDA0: jnl 80CDBCh
0080CDA2: push 000001C0h
0080CDA7: push 00448BFCh
0080CDAC: push [ebp+08h]
0080CDAF: push var_58
0080CDB2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080CDB7: mov var_68, eax
0080CDBA: jmp 80CDC0h
0080CDBC: and var_68, 00000000h
0080CDC0: push var_1C
0080CDC3: call 004109DCh ; Val(arg_1)
0080CDC8: fstp real8 ptr var_30
0080CDCB: mov var_38, 00000005h
0080CDD2: lea esi, var_38
0080CDD5: push 00000000h
0080CDD7: push var_28
0080CDDA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080CDDF: mov ecx, eax
0080CDE1: mov edx, esi
0080CDE3: call 00410922h ; msvbvm60.dll.__vbaVarMove
0080CDE8: mov var_40, 00442930h
0080CDEF: mov var_48, 00000008h
0080CDF6: lea esi, var_48
0080CDF9: push 00000001h
0080CDFB: push var_28
0080CDFE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080CE03: mov ecx, eax
0080CE05: mov edx, esi
0080CE07: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0080CE0C: mov edx, 0043D57Ch ; x30
0080CE11: lea ecx, var_20
0080CE14: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080CE19: lea eax, var_28
0080CE1C: push eax
0080CE1D: lea eax, var_20
0080CE20: push eax
0080CE21: fld real8 ptr var_50
0080CE24: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0080CE29: push eax
0080CE2A: call 007A6910h
0080CE2F: lea eax, var_28
0080CE32: push eax
0080CE33: push 00000000h
0080CE35: call 00410934h ; Erase
0080CE3A: lea eax, var_20
0080CE3D: push eax
0080CE3E: lea eax, var_1C
0080CE41: push eax
0080CE42: lea eax, var_18
0080CE45: push eax
0080CE46: push 00000003h
0080CE48: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080CE4D: add esp, 00000010h
0080CE50: cmp [008F529Ch], 00000000h
0080CE57: jnz 80CE71h
0080CE59: push 008F529Ch
0080CE5E: push 00440F2Ch
0080CE63: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080CE68: mov var_6C, 008F529Ch
0080CE6F: jmp 80CE78h
0080CE71: mov var_6C, 008F529Ch
0080CE78: mov eax, var_6C
0080CE7B: mov eax, [eax]
0080CE7D: mov var_54, eax
0080CE80: push [ebp+08h]
0080CE83: lea eax, var_24
0080CE86: push eax
0080CE87: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0080CE8C: push eax
0080CE8D: mov eax, var_54
0080CE90: mov eax, [eax]
0080CE92: push var_54
0080CE95: call [eax+10h]
0080CE98: fclex 
0080CE9A: mov var_58, eax
0080CE9D: cmp var_58, 00000000h
0080CEA1: jnl 80CEBAh
0080CEA3: push 00000010h
0080CEA5: push 00440F1Ch
0080CEAA: push var_54
0080CEAD: push var_58
0080CEB0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080CEB5: mov var_70, eax
0080CEB8: jmp 80CEBEh
0080CEBA: and var_70, 00000000h
0080CEBE: lea ecx, var_24
0080CEC1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080CEC6: mov var_04, 00000000h
0080CECD: wait 
0080CECE: push 0080CF00h
0080CED3: jmp 80CEFFh
0080CED5: lea eax, var_20
0080CED8: push eax
0080CED9: lea eax, var_1C
0080CEDC: push eax
0080CEDD: lea eax, var_18
0080CEE0: push eax
0080CEE1: push 00000003h
0080CEE3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080CEE8: add esp, 00000010h
0080CEEB: lea ecx, var_24
0080CEEE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080CEF3: lea eax, var_28
0080CEF6: push eax
0080CEF7: push 00000000h
0080CEF9: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0080CEFE: ret 
End Sub

Private sub Form__80BF74
0080BF74: push ebp
0080BF75: mov ebp, esp
0080BF77: sub esp, 0000000Ch
0080BF7A: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080BF7F: mov eax, fs:[00h]
0080BF85: push eax
0080BF86: mov fs:[00000000h], esp
0080BF8D: push 0000006Ch
0080BF8F: pop eax
0080BF90: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080BF95: push ebx
0080BF96: push esi
0080BF97: push edi
0080BF98: mov var_0C, esp
0080BF9B: mov var_08, 0040A628h
0080BFA2: mov eax, [ebp+08h]
0080BFA5: and eax, 00000001h
0080BFA8: mov var_04, eax
0080BFAB: mov eax, [ebp+08h]
0080BFAE: and al, FEh
0080BFB0: mov [ebp+08h], eax
0080BFB3: mov eax, [ebp+08h]
0080BFB6: mov eax, [eax]
0080BFB8: push [ebp+08h]
0080BFBB: call [eax+04h]
0080BFBE: lea eax, var_18
0080BFC1: push eax
0080BFC2: mov eax, [ebp+08h]
0080BFC5: mov eax, [eax]
0080BFC7: push [ebp+08h]
0080BFCA: call [eax+000001C0h]
0080BFD0: fclex 
0080BFD2: mov var_64, eax
0080BFD5: cmp var_64, 00000000h
0080BFD9: jnl 80BFF5h
0080BFDB: push 000001C0h
0080BFE0: push 00448BFCh
0080BFE5: push [ebp+08h]
0080BFE8: push var_64
0080BFEB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080BFF0: mov var_74, eax
0080BFF3: jmp 80BFF9h
0080BFF5: and var_74, 00000000h
0080BFF9: push var_18
0080BFFC: call 004109DCh ; Val(arg_1)
0080C001: fstp real8 ptr var_60
0080C004: push 00000000h
0080C006: push 00000001h
0080C008: push 00000001h
0080C00A: push 00000000h
0080C00C: lea eax, var_38
0080C00F: push eax
0080C010: push 00000010h
0080C012: push 00000880h
0080C017: call 00410946h ; ReDim
0080C01C: add esp, 0000001Ch
0080C01F: lea eax, var_1C
0080C022: push eax
0080C023: mov eax, [ebp+08h]
0080C026: mov eax, [eax]
0080C028: push [ebp+08h]
0080C02B: call [eax+000001C0h]
0080C031: fclex 
0080C033: mov var_68, eax
0080C036: cmp var_68, 00000000h
0080C03A: jnl 80C056h
0080C03C: push 000001C0h
0080C041: push 00448BFCh
0080C046: push [ebp+08h]
0080C049: push var_68
0080C04C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080C051: mov var_78, eax
0080C054: jmp 80C05Ah
0080C056: and var_78, 00000000h
0080C05A: push var_1C
0080C05D: call 004109DCh ; Val(arg_1)
0080C062: fstp real8 ptr var_40
0080C065: mov var_48, 00000005h
0080C06C: lea esi, var_48
0080C06F: push 00000000h
0080C071: push var_38
0080C074: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080C079: mov ecx, eax
0080C07B: mov edx, esi
0080C07D: call 00410922h ; msvbvm60.dll.__vbaVarMove
0080C082: mov var_50, 00442930h
0080C089: mov var_58, 00000008h
0080C090: lea esi, var_58
0080C093: push 00000001h
0080C095: push var_38
0080C098: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080C09D: mov ecx, eax
0080C09F: mov edx, esi
0080C0A1: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0080C0A6: mov edx, 0043D57Ch ; x30
0080C0AB: lea ecx, var_20
0080C0AE: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080C0B3: lea eax, var_38
0080C0B6: push eax
0080C0B7: lea eax, var_20
0080C0BA: push eax
0080C0BB: fld real8 ptr var_60
0080C0BE: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0080C0C3: push eax
0080C0C4: call 007A6910h
0080C0C9: lea eax, var_38
0080C0CC: push eax
0080C0CD: push 00000000h
0080C0CF: call 00410934h ; Erase
0080C0D4: lea eax, var_20
0080C0D7: push eax
0080C0D8: lea eax, var_1C
0080C0DB: push eax
0080C0DC: lea eax, var_18
0080C0DF: push eax
0080C0E0: push 00000003h
0080C0E2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080C0E7: add esp, 00000010h
0080C0EA: push 00000000h
0080C0EC: push 0000000Bh
0080C0EE: mov eax, [ebp+08h]
0080C0F1: mov eax, [eax]
0080C0F3: push [ebp+08h]
0080C0F6: call [eax+00000338h]
0080C0FC: push eax
0080C0FD: lea eax, var_24
0080C100: push eax
0080C101: call 00410A84h ; Set (object)
0080C106: push eax
0080C107: lea eax, var_34
0080C10A: push eax
0080C10B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080C110: add esp, 00000010h
0080C113: push eax
0080C114: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0080C119: push eax
0080C11A: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0080C11F: mov edx, eax
0080C121: lea ecx, var_18
0080C124: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080C129: push eax
0080C12A: push 0045329Ch ; quality
0080C12F: push 00453288h ; webcam
0080C134: push 00445984h ; bssnet
0080C139: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
0080C13E: lea ecx, var_18
0080C141: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0080C146: lea ecx, var_24
0080C149: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080C14E: lea ecx, var_34
0080C151: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0080C156: push 00000000h
0080C158: push 00000000h
0080C15A: mov eax, [ebp+08h]
0080C15D: mov eax, [eax]
0080C15F: push [ebp+08h]
0080C162: call [eax+00000340h]
0080C168: push eax
0080C169: lea eax, var_24
0080C16C: push eax
0080C16D: call 00410A84h ; Set (object)
0080C172: push eax
0080C173: lea eax, var_34
0080C176: push eax
0080C177: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080C17C: add esp, 00000010h
0080C17F: push eax
0080C180: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0080C185: push eax
0080C186: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0080C18B: mov edx, eax
0080C18D: lea ecx, var_18
0080C190: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080C195: push eax
0080C196: push 004532B0h ; save
0080C19B: push 00453288h ; webcam
0080C1A0: push 00445984h ; bssnet
0080C1A5: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
0080C1AA: lea ecx, var_18
0080C1AD: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0080C1B2: lea ecx, var_24
0080C1B5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080C1BA: lea ecx, var_34
0080C1BD: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0080C1C2: cmp [008F529Ch], 00000000h
0080C1C9: jnz 80C1E3h
0080C1CB: push 008F529Ch
0080C1D0: push 00440F2Ch
0080C1D5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080C1DA: mov var_7C, 008F529Ch
0080C1E1: jmp 80C1EAh
0080C1E3: mov var_7C, 008F529Ch
0080C1EA: mov eax, var_7C
0080C1ED: mov eax, [eax]
0080C1EF: mov var_64, eax
0080C1F2: push [ebp+08h]
0080C1F5: lea eax, var_24
0080C1F8: push eax
0080C1F9: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0080C1FE: push eax
0080C1FF: mov eax, var_64
0080C202: mov eax, [eax]
0080C204: push var_64
0080C207: call [eax+10h]
0080C20A: fclex 
0080C20C: mov var_68, eax
0080C20F: cmp var_68, 00000000h
0080C213: jnl 80C22Ch
0080C215: push 00000010h
0080C217: push 00440F1Ch
0080C21C: push var_64
0080C21F: push var_68
0080C222: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080C227: mov var_80, eax
0080C22A: jmp 80C230h
0080C22C: and var_80, 00000000h
0080C230: lea ecx, var_24
0080C233: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080C238: mov var_04, 00000000h
0080C23F: wait 
0080C240: push 0080C27Ah
0080C245: jmp 80C279h
0080C247: lea eax, var_20
0080C24A: push eax
0080C24B: lea eax, var_1C
0080C24E: push eax
0080C24F: lea eax, var_18
0080C252: push eax
0080C253: push 00000003h
0080C255: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080C25A: add esp, 00000010h
0080C25D: lea ecx, var_24
0080C260: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080C265: lea ecx, var_34
0080C268: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0080C26D: lea eax, var_38
0080C270: push eax
0080C271: push 00000000h
0080C273: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0080C278: ret 
End Sub

Private sub Form__80CA95
0080CA95: push ebp
0080CA96: mov ebp, esp
0080CA98: sub esp, 0000000Ch
0080CA9B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080CAA0: mov eax, fs:[00h]
0080CAA6: push eax
0080CAA7: mov fs:[00000000h], esp
0080CAAE: push 0000005Ch
0080CAB0: pop eax
0080CAB1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080CAB6: push ebx
0080CAB7: push esi
0080CAB8: push edi
0080CAB9: mov var_0C, esp
0080CABC: mov var_08, 0040A690h
0080CAC3: mov eax, [ebp+08h]
0080CAC6: and eax, 00000001h
0080CAC9: mov var_04, eax
0080CACC: mov eax, [ebp+08h]
0080CACF: and al, FEh
0080CAD1: mov [ebp+08h], eax
0080CAD4: mov eax, [ebp+08h]
0080CAD7: mov eax, [eax]
0080CAD9: push [ebp+08h]
0080CADC: call [eax+04h]
0080CADF: lea eax, var_18
0080CAE2: push eax
0080CAE3: mov eax, [ebp+08h]
0080CAE6: mov eax, [eax]
0080CAE8: push [ebp+08h]
0080CAEB: call [eax+000001C0h]
0080CAF1: fclex 
0080CAF3: mov var_54, eax
0080CAF6: cmp var_54, 00000000h
0080CAFA: jnl 80CB16h
0080CAFC: push 000001C0h
0080CB01: push 00448BFCh
0080CB06: push [ebp+08h]
0080CB09: push var_54
0080CB0C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080CB11: mov var_64, eax
0080CB14: jmp 80CB1Ah
0080CB16: and var_64, 00000000h
0080CB1A: push var_18
0080CB1D: call 004109DCh ; Val(arg_1)
0080CB22: fstp real8 ptr var_50
0080CB25: push 00000000h
0080CB27: push 00000001h
0080CB29: push 00000001h
0080CB2B: push 00000000h
0080CB2D: lea eax, var_28
0080CB30: push eax
0080CB31: push 00000010h
0080CB33: push 00000880h
0080CB38: call 00410946h ; ReDim
0080CB3D: add esp, 0000001Ch
0080CB40: lea eax, var_1C
0080CB43: push eax
0080CB44: mov eax, [ebp+08h]
0080CB47: mov eax, [eax]
0080CB49: push [ebp+08h]
0080CB4C: call [eax+000001C0h]
0080CB52: fclex 
0080CB54: mov var_58, eax
0080CB57: cmp var_58, 00000000h
0080CB5B: jnl 80CB77h
0080CB5D: push 000001C0h
0080CB62: push 00448BFCh
0080CB67: push [ebp+08h]
0080CB6A: push var_58
0080CB6D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080CB72: mov var_68, eax
0080CB75: jmp 80CB7Bh
0080CB77: and var_68, 00000000h
0080CB7B: push var_1C
0080CB7E: call 004109DCh ; Val(arg_1)
0080CB83: fstp real8 ptr var_30
0080CB86: mov var_38, 00000005h
0080CB8D: lea esi, var_38
0080CB90: push 00000000h
0080CB92: push var_28
0080CB95: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080CB9A: mov ecx, eax
0080CB9C: mov edx, esi
0080CB9E: call 00410922h ; msvbvm60.dll.__vbaVarMove
0080CBA3: mov var_40, 00442930h
0080CBAA: mov var_48, 00000008h
0080CBB1: lea esi, var_48
0080CBB4: push 00000001h
0080CBB6: push var_28
0080CBB9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080CBBE: mov ecx, eax
0080CBC0: mov edx, esi
0080CBC2: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0080CBC7: mov edx, 0043D57Ch ; x30
0080CBCC: lea ecx, var_20
0080CBCF: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080CBD4: lea eax, var_28
0080CBD7: push eax
0080CBD8: lea eax, var_20
0080CBDB: push eax
0080CBDC: fld real8 ptr var_50
0080CBDF: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0080CBE4: push eax
0080CBE5: call 007A6910h
0080CBEA: lea eax, var_28
0080CBED: push eax
0080CBEE: push 00000000h
0080CBF0: call 00410934h ; Erase
0080CBF5: lea eax, var_20
0080CBF8: push eax
0080CBF9: lea eax, var_1C
0080CBFC: push eax
0080CBFD: lea eax, var_18
0080CC00: push eax
0080CC01: push 00000003h
0080CC03: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080CC08: add esp, 00000010h
0080CC0B: cmp [008F529Ch], 00000000h
0080CC12: jnz 80CC2Ch
0080CC14: push 008F529Ch
0080CC19: push 00440F2Ch
0080CC1E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080CC23: mov var_6C, 008F529Ch
0080CC2A: jmp 80CC33h
0080CC2C: mov var_6C, 008F529Ch
0080CC33: mov eax, var_6C
0080CC36: mov eax, [eax]
0080CC38: mov var_54, eax
0080CC3B: push [ebp+08h]
0080CC3E: lea eax, var_24
0080CC41: push eax
0080CC42: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0080CC47: push eax
0080CC48: mov eax, var_54
0080CC4B: mov eax, [eax]
0080CC4D: push var_54
0080CC50: call [eax+10h]
0080CC53: fclex 
0080CC55: mov var_58, eax
0080CC58: cmp var_58, 00000000h
0080CC5C: jnl 80CC75h
0080CC5E: push 00000010h
0080CC60: push 00440F1Ch
0080CC65: push var_54
0080CC68: push var_58
0080CC6B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080CC70: mov var_70, eax
0080CC73: jmp 80CC79h
0080CC75: and var_70, 00000000h
0080CC79: lea ecx, var_24
0080CC7C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080CC81: mov var_04, 00000000h
0080CC88: wait 
0080CC89: push 0080CCBBh
0080CC8E: jmp 80CCBAh
0080CC90: lea eax, var_20
0080CC93: push eax
0080CC94: lea eax, var_1C
0080CC97: push eax
0080CC98: lea eax, var_18
0080CC9B: push eax
0080CC9C: push 00000003h
0080CC9E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080CCA3: add esp, 00000010h
0080CCA6: lea ecx, var_24
0080CCA9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080CCAE: lea eax, var_28
0080CCB1: push eax
0080CCB2: push 00000000h
0080CCB4: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0080CCB9: ret 
End Sub

Private sub cmdActivate__80B40E
0080B40E: push ebp
0080B40F: mov ebp, esp
0080B411: sub esp, 00000018h
0080B414: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080B419: mov eax, fs:[00h]
0080B41F: push eax
0080B420: mov fs:[00000000h], esp
0080B427: mov eax, 00000128h
0080B42C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080B431: push ebx
0080B432: push esi
0080B433: push edi
0080B434: mov var_18, esp
0080B437: mov var_14, 0040A5B8h
0080B43E: mov eax, [ebp+08h]
0080B441: and eax, 00000001h
0080B444: mov var_10, eax
0080B447: mov eax, [ebp+08h]
0080B44A: and al, FEh
0080B44C: mov [ebp+08h], eax
0080B44F: mov var_0C, 00000000h
0080B456: mov eax, [ebp+08h]
0080B459: mov eax, [eax]
0080B45B: push [ebp+08h]
0080B45E: call [eax+04h]
0080B461: mov var_04, 00000001h
0080B468: mov var_04, 00000002h
0080B46F: push FFFFFFFFh
0080B471: call 00410A60h ; On Error ...
0080B476: mov var_04, 00000003h
0080B47D: push 00000000h
0080B47F: push FFFFFDFAh
0080B484: mov eax, [ebp+08h]
0080B487: mov eax, [eax]
0080B489: push [ebp+08h]
0080B48C: call [eax+0000033Ch]
0080B492: push eax
0080B493: lea eax, var_38
0080B496: push eax
0080B497: call 00410A84h ; Set (object)
0080B49C: push eax
0080B49D: lea eax, var_4C
0080B4A0: push eax
0080B4A1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080B4A6: add esp, 00000010h
0080B4A9: push eax
0080B4AA: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0080B4AF: mov edx, eax
0080B4B1: lea ecx, var_24
0080B4B4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080B4B9: push eax
0080B4BA: push 00441068h ; Activate
0080B4BF: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0080B4C4: neg eax
0080B4C6: sbb eax, eax
0080B4C8: inc eax
0080B4C9: neg eax
0080B4CB: mov var_000000EC, ax
0080B4D2: lea ecx, var_24
0080B4D5: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0080B4DA: lea ecx, var_38
0080B4DD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080B4E2: lea ecx, var_4C
0080B4E5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0080B4EA: movsx eax, word ptr var_000000EC
0080B4F1: test eax, eax
0080B4F3: jz 0080BA13h
0080B4F9: mov var_04, 00000004h
0080B500: lea eax, var_24
0080B503: push eax
0080B504: mov eax, [ebp+08h]
0080B507: mov eax, [eax]
0080B509: push [ebp+08h]
0080B50C: call [eax+000001C0h]
0080B512: fclex 
0080B514: mov var_000000EC, eax
0080B51A: cmp var_000000EC, 00000000h
0080B521: jnl 80B543h
0080B523: push 000001C0h
0080B528: push 00448BFCh
0080B52D: push [ebp+08h]
0080B530: push var_000000EC
0080B536: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080B53B: mov var_00000120, eax
0080B541: jmp 80B54Ah
0080B543: and var_00000120, 00000000h
0080B54A: push var_24
0080B54D: call 004109DCh ; Val(arg_1)
0080B552: fstp real8 ptr var_000000E8
0080B558: mov eax, [ebp+08h]
0080B55B: mov eax, [eax]
0080B55D: push [ebp+08h]
0080B560: call [eax+0000032Ch]
0080B566: push eax
0080B567: lea eax, var_38
0080B56A: push eax
0080B56B: call 00410A84h ; Set (object)
0080B570: mov var_000000F0, eax
0080B576: lea eax, var_2C
0080B579: push eax
0080B57A: mov eax, var_000000F0
0080B580: mov eax, [eax]
0080B582: push var_000000F0
0080B588: call [eax+000000A8h]
0080B58E: fclex 
0080B590: mov var_000000F4, eax
0080B596: cmp var_000000F4, 00000000h
0080B59D: jnl 80B5C2h
0080B59F: push 000000A8h
0080B5A4: push 0044C944h
0080B5A9: push var_000000F0
0080B5AF: push var_000000F4
0080B5B5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080B5BA: mov var_00000124, eax
0080B5C0: jmp 80B5C9h
0080B5C2: and var_00000124, 00000000h
0080B5C9: push 00000000h
0080B5CB: push 00000003h
0080B5CD: push 00000001h
0080B5CF: push 00000000h
0080B5D1: lea eax, var_80
0080B5D4: push eax
0080B5D5: push 00000010h
0080B5D7: push 00000880h
0080B5DC: call 00410946h ; ReDim
0080B5E1: add esp, 0000001Ch
0080B5E4: lea eax, var_28
0080B5E7: push eax
0080B5E8: mov eax, [ebp+08h]
0080B5EB: mov eax, [eax]
0080B5ED: push [ebp+08h]
0080B5F0: call [eax+000001C0h]
0080B5F6: fclex 
0080B5F8: mov var_000000F8, eax
0080B5FE: cmp var_000000F8, 00000000h
0080B605: jnl 80B627h
0080B607: push 000001C0h
0080B60C: push 00448BFCh
0080B611: push [ebp+08h]
0080B614: push var_000000F8
0080B61A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080B61F: mov var_00000128, eax
0080B625: jmp 80B62Eh
0080B627: and var_00000128, 00000000h
0080B62E: push var_28
0080B631: call 004109DCh ; Val(arg_1)
0080B636: fstp real8 ptr var_000000B8
0080B63C: mov var_000000C0, 00000005h
0080B646: lea esi, var_000000C0
0080B64C: push 00000000h
0080B64E: push var_80
0080B651: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080B656: mov ecx, eax
0080B658: mov edx, esi
0080B65A: call 00410922h ; msvbvm60.dll.__vbaVarMove
0080B65F: mov var_000000C8, 00442938h
0080B669: mov var_000000D0, 00000008h
0080B673: lea esi, var_000000D0
0080B679: push 00000001h
0080B67B: push var_80
0080B67E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080B683: mov ecx, eax
0080B685: mov edx, esi
0080B687: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0080B68C: and var_00000098, 00000000h
0080B693: mov var_000000A0, 00000002h
0080B69D: mov var_00000088, 00449920h
0080B6A7: mov var_00000090, 00000008h
0080B6B1: lea edx, var_00000090
0080B6B7: lea ecx, var_4C
0080B6BA: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0080B6BF: push 00000000h
0080B6C1: push 00000002h
0080B6C3: lea eax, var_4C
0080B6C6: push eax
0080B6C7: push var_2C
0080B6CA: lea eax, var_5C
0080B6CD: push eax
0080B6CE: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
0080B6D3: push 00000010h
0080B6D5: pop eax
0080B6D6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080B6DB: lea esi, var_000000A0
0080B6E1: mov edi, esp
0080B6E3: movsd 
0080B6E4: movsd 
0080B6E5: movsd 
0080B6E6: movsd 
0080B6E7: push 00000001h
0080B6E9: lea eax, var_5C
0080B6EC: push eax
0080B6ED: lea eax, var_6C
0080B6F0: push eax
0080B6F1: call 00410802h ; msvbvm60.dll.__vbaVarIndexLoadRef
0080B6F6: add esp, 0000001Ch
0080B6F9: mov var_000000FC, eax
0080B6FF: mov eax, var_000000FC
0080B705: mov eax, [eax]
0080B707: and eax, 00004000h
0080B70C: test eax, eax
0080B70E: jz 80B71Eh
0080B710: mov eax, var_000000FC
0080B716: mov var_0000012C, eax
0080B71C: jmp 80B740h
0080B71E: mov eax, var_000000FC
0080B724: mov var_000000D8, eax
0080B72A: mov var_000000E0, 0000400Ch
0080B734: lea eax, var_000000E0
0080B73A: mov var_0000012C, eax
0080B740: mov esi, var_0000012C
0080B746: push 00000002h
0080B748: push var_80
0080B74B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080B750: mov ecx, eax
0080B752: mov edx, esi
0080B754: call 00410940h ; msvbvm60.dll.__vbaVarZero
0080B759: mov eax, [ebp+08h]
0080B75C: mov eax, [eax]
0080B75E: push [ebp+08h]
0080B761: call [eax+00000328h]
0080B767: push eax
0080B768: lea eax, var_3C
0080B76B: push eax
0080B76C: call 00410A84h ; Set (object)
0080B771: mov var_00000100, eax
0080B777: lea eax, var_30
0080B77A: push eax
0080B77B: mov eax, var_00000100
0080B781: mov eax, [eax]
0080B783: push var_00000100
0080B789: call [eax+000000A8h]
0080B78F: fclex 
0080B791: mov var_00000104, eax
0080B797: cmp var_00000104, 00000000h
0080B79E: jnl 80B7C3h
0080B7A0: push 000000A8h
0080B7A5: push 0044C944h
0080B7AA: push var_00000100
0080B7B0: push var_00000104
0080B7B6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080B7BB: mov var_00000130, eax
0080B7C1: jmp 80B7CAh
0080B7C3: and var_00000130, 00000000h
0080B7CA: mov eax, var_30
0080B7CD: mov var_0000011C, eax
0080B7D3: and var_30, 00000000h
0080B7D7: mov eax, var_0000011C
0080B7DD: mov var_74, eax
0080B7E0: mov var_7C, 00000008h
0080B7E7: lea esi, var_7C
0080B7EA: push 00000003h
0080B7EC: push var_80
0080B7EF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080B7F4: mov ecx, eax
0080B7F6: mov edx, esi
0080B7F8: call 00410940h ; msvbvm60.dll.__vbaVarZero
0080B7FD: mov edx, 0043D57Ch ; x30
0080B802: lea ecx, var_34
0080B805: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080B80A: lea eax, var_80
0080B80D: push eax
0080B80E: lea eax, var_34
0080B811: push eax
0080B812: fld real8 ptr var_000000E8
0080B818: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0080B81D: push eax
0080B81E: call 007A6910h
0080B823: lea eax, var_80
0080B826: push eax
0080B827: push 00000000h
0080B829: call 00410934h ; Erase
0080B82E: lea eax, var_34
0080B831: push eax
0080B832: lea eax, var_2C
0080B835: push eax
0080B836: lea eax, var_28
0080B839: push eax
0080B83A: lea eax, var_24
0080B83D: push eax
0080B83E: push 00000004h
0080B840: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080B845: add esp, 00000014h
0080B848: lea eax, var_3C
0080B84B: push eax
0080B84C: lea eax, var_38
0080B84F: push eax
0080B850: push 00000002h
0080B852: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080B857: add esp, 0000000Ch
0080B85A: lea eax, var_6C
0080B85D: push eax
0080B85E: lea eax, var_5C
0080B861: push eax
0080B862: lea eax, var_4C
0080B865: push eax
0080B866: push 00000003h
0080B868: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080B86D: add esp, 00000010h
0080B870: mov var_04, 00000005h
0080B877: and var_00000088, 00000000h
0080B87E: mov var_00000090, 00000002h
0080B888: push 00000010h
0080B88A: pop eax
0080B88B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080B890: lea esi, var_00000090
0080B896: mov edi, esp
0080B898: movsd 
0080B899: movsd 
0080B89A: movsd 
0080B89B: movsd 
0080B89C: push 00000000h
0080B89E: mov eax, [ebp+08h]
0080B8A1: mov eax, [eax]
0080B8A3: push [ebp+08h]
0080B8A6: call [eax+00000334h]
0080B8AC: push eax
0080B8AD: lea eax, var_38
0080B8B0: push eax
0080B8B1: call 00410A84h ; Set (object)
0080B8B6: push eax
0080B8B7: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0080B8BC: lea ecx, var_38
0080B8BF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080B8C4: mov var_04, 00000006h
0080B8CB: mov eax, [ebp+08h]
0080B8CE: mov eax, [eax]
0080B8D0: push [ebp+08h]
0080B8D3: call [eax+00000320h]
0080B8D9: push eax
0080B8DA: lea eax, var_38
0080B8DD: push eax
0080B8DE: call 00410A84h ; Set (object)
0080B8E3: mov var_000000EC, eax
0080B8E9: push 00000000h
0080B8EB: mov eax, var_000000EC
0080B8F1: mov eax, [eax]
0080B8F3: push var_000000EC
0080B8F9: call [eax+74h]
0080B8FC: fclex 
0080B8FE: mov var_000000F0, eax
0080B904: cmp var_000000F0, 00000000h
0080B90B: jnl 80B92Dh
0080B90D: push 00000074h
0080B90F: push 00447A20h
0080B914: push var_000000EC
0080B91A: push var_000000F0
0080B920: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080B925: mov var_00000134, eax
0080B92B: jmp 80B934h
0080B92D: and var_00000134, 00000000h
0080B934: lea ecx, var_38
0080B937: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080B93C: mov var_04, 00000007h
0080B943: mov eax, [ebp+08h]
0080B946: mov eax, [eax]
0080B948: push [ebp+08h]
0080B94B: call [eax+00000320h]
0080B951: push eax
0080B952: lea eax, var_38
0080B955: push eax
0080B956: call 00410A84h ; Set (object)
0080B95B: mov var_000000EC, eax
0080B961: push FFFFFFFFh
0080B963: mov eax, var_000000EC
0080B969: mov eax, [eax]
0080B96B: push var_000000EC
0080B971: call [eax+5Ch]
0080B974: fclex 
0080B976: mov var_000000F0, eax
0080B97C: cmp var_000000F0, 00000000h
0080B983: jnl 80B9A5h
0080B985: push 0000005Ch
0080B987: push 00447A20h
0080B98C: push var_000000EC
0080B992: push var_000000F0
0080B998: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080B99D: mov var_00000138, eax
0080B9A3: jmp 80B9ACh
0080B9A5: and var_00000138, 00000000h
0080B9AC: lea ecx, var_38
0080B9AF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080B9B4: mov var_04, 00000008h
0080B9BB: mov var_00000088, 0044D1E4h ; Deactivate
0080B9C5: mov var_00000090, 00000008h
0080B9CF: push 00000010h
0080B9D1: pop eax
0080B9D2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080B9D7: lea esi, var_00000090
0080B9DD: mov edi, esp
0080B9DF: movsd 
0080B9E0: movsd 
0080B9E1: movsd 
0080B9E2: movsd 
0080B9E3: push FFFFFDFAh
0080B9E8: mov eax, [ebp+08h]
0080B9EB: mov eax, [eax]
0080B9ED: push [ebp+08h]
0080B9F0: call [eax+0000033Ch]
0080B9F6: push eax
0080B9F7: lea eax, var_38
0080B9FA: push eax
0080B9FB: call 00410A84h ; Set (object)
0080BA00: push eax
0080BA01: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0080BA06: lea ecx, var_38
0080BA09: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080BA0E: jmp 0080BCE5h
0080BA13: mov var_04, 0000000Ah
0080BA1A: mov eax, [ebp+08h]
0080BA1D: mov eax, [eax]
0080BA1F: push [ebp+08h]
0080BA22: call [eax+000002FCh]
0080BA28: push eax
0080BA29: lea eax, var_3C
0080BA2C: push eax
0080BA2D: call 00410A84h ; Set (object)
0080BA32: mov var_000000EC, eax
0080BA38: push 0043F0E8h
0080BA3D: push 00000000h
0080BA3F: call 00410A06h ; msvbvm60.dll.__vbaCastObj
0080BA44: push eax
0080BA45: lea eax, var_38
0080BA48: push eax
0080BA49: call 00410A84h ; Set (object)
0080BA4E: push eax
0080BA4F: mov eax, var_000000EC
0080BA55: mov eax, [eax]
0080BA57: push var_000000EC
0080BA5D: call [eax+64h]
0080BA60: fclex 
0080BA62: mov var_000000F0, eax
0080BA68: cmp var_000000F0, 00000000h
0080BA6F: jnl 80BA91h
0080BA71: push 00000064h
0080BA73: push 00440EDCh
0080BA78: push var_000000EC
0080BA7E: push var_000000F0
0080BA84: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080BA89: mov var_0000013C, eax
0080BA8F: jmp 80BA98h
0080BA91: and var_0000013C, 00000000h
0080BA98: lea eax, var_3C
0080BA9B: push eax
0080BA9C: lea eax, var_38
0080BA9F: push eax
0080BAA0: push 00000002h
0080BAA2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080BAA7: add esp, 0000000Ch
0080BAAA: mov var_04, 0000000Bh
0080BAB1: mov eax, [ebp+08h]
0080BAB4: mov eax, [eax]
0080BAB6: push [ebp+08h]
0080BAB9: call [eax+00000320h]
0080BABF: push eax
0080BAC0: lea eax, var_38
0080BAC3: push eax
0080BAC4: call 00410A84h ; Set (object)
0080BAC9: mov var_000000EC, eax
0080BACF: push 00000000h
0080BAD1: mov eax, var_000000EC
0080BAD7: mov eax, [eax]
0080BAD9: push var_000000EC
0080BADF: call [eax+5Ch]
0080BAE2: fclex 
0080BAE4: mov var_000000F0, eax
0080BAEA: cmp var_000000F0, 00000000h
0080BAF1: jnl 80BB13h
0080BAF3: push 0000005Ch
0080BAF5: push 00447A20h
0080BAFA: push var_000000EC
0080BB00: push var_000000F0
0080BB06: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080BB0B: mov var_00000140, eax
0080BB11: jmp 80BB1Ah
0080BB13: and var_00000140, 00000000h
0080BB1A: lea ecx, var_38
0080BB1D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080BB22: mov var_04, 0000000Ch
0080BB29: lea eax, var_24
0080BB2C: push eax
0080BB2D: mov eax, [ebp+08h]
0080BB30: mov eax, [eax]
0080BB32: push [ebp+08h]
0080BB35: call [eax+000001C0h]
0080BB3B: fclex 
0080BB3D: mov var_000000EC, eax
0080BB43: cmp var_000000EC, 00000000h
0080BB4A: jnl 80BB6Ch
0080BB4C: push 000001C0h
0080BB51: push 00448BFCh
0080BB56: push [ebp+08h]
0080BB59: push var_000000EC
0080BB5F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080BB64: mov var_00000144, eax
0080BB6A: jmp 80BB73h
0080BB6C: and var_00000144, 00000000h
0080BB73: push var_24
0080BB76: call 004109DCh ; Val(arg_1)
0080BB7B: fstp real8 ptr var_000000E8
0080BB81: push 00000000h
0080BB83: push 00000001h
0080BB85: push 00000001h
0080BB87: push 00000000h
0080BB89: lea eax, var_80
0080BB8C: push eax
0080BB8D: push 00000010h
0080BB8F: push 00000880h
0080BB94: call 00410946h ; ReDim
0080BB99: add esp, 0000001Ch
0080BB9C: lea eax, var_28
0080BB9F: push eax
0080BBA0: mov eax, [ebp+08h]
0080BBA3: mov eax, [eax]
0080BBA5: push [ebp+08h]
0080BBA8: call [eax+000001C0h]
0080BBAE: fclex 
0080BBB0: mov var_000000F0, eax
0080BBB6: cmp var_000000F0, 00000000h
0080BBBD: jnl 80BBDFh
0080BBBF: push 000001C0h
0080BBC4: push 00448BFCh
0080BBC9: push [ebp+08h]
0080BBCC: push var_000000F0
0080BBD2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080BBD7: mov var_00000148, eax
0080BBDD: jmp 80BBE6h
0080BBDF: and var_00000148, 00000000h
0080BBE6: push var_28
0080BBE9: call 004109DCh ; Val(arg_1)
0080BBEE: fstp real8 ptr var_00000088
0080BBF4: mov var_00000090, 00000005h
0080BBFE: lea esi, var_00000090
0080BC04: push 00000000h
0080BC06: push var_80
0080BC09: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080BC0E: mov ecx, eax
0080BC10: mov edx, esi
0080BC12: call 00410922h ; msvbvm60.dll.__vbaVarMove
0080BC17: mov var_00000098, 00442930h
0080BC21: mov var_000000A0, 00000008h
0080BC2B: lea esi, var_000000A0
0080BC31: push 00000001h
0080BC33: push var_80
0080BC36: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080BC3B: mov ecx, eax
0080BC3D: mov edx, esi
0080BC3F: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0080BC44: mov edx, 0043D57Ch ; x30
0080BC49: lea ecx, var_2C
0080BC4C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080BC51: lea eax, var_80
0080BC54: push eax
0080BC55: lea eax, var_2C
0080BC58: push eax
0080BC59: fld real8 ptr var_000000E8
0080BC5F: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0080BC64: push eax
0080BC65: call 007A6910h
0080BC6A: lea eax, var_80
0080BC6D: push eax
0080BC6E: push 00000000h
0080BC70: call 00410934h ; Erase
0080BC75: lea eax, var_2C
0080BC78: push eax
0080BC79: lea eax, var_28
0080BC7C: push eax
0080BC7D: lea eax, var_24
0080BC80: push eax
0080BC81: push 00000003h
0080BC83: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080BC88: add esp, 00000010h
0080BC8B: mov var_04, 0000000Dh
0080BC92: mov var_00000088, 00441068h ; Activate
0080BC9C: mov var_00000090, 00000008h
0080BCA6: push 00000010h
0080BCA8: pop eax
0080BCA9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080BCAE: lea esi, var_00000090
0080BCB4: mov edi, esp
0080BCB6: movsd 
0080BCB7: movsd 
0080BCB8: movsd 
0080BCB9: movsd 
0080BCBA: push FFFFFDFAh
0080BCBF: mov eax, [ebp+08h]
0080BCC2: mov eax, [eax]
0080BCC4: push [ebp+08h]
0080BCC7: call [eax+0000033Ch]
0080BCCD: push eax
0080BCCE: lea eax, var_38
0080BCD1: push eax
0080BCD2: call 00410A84h ; Set (object)
0080BCD7: push eax
0080BCD8: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0080BCDD: lea ecx, var_38
0080BCE0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080BCE5: mov var_10, 00000000h
0080BCEC: wait 
0080BCED: push 0080BD4Bh
0080BCF2: jmp 80BD4Ah
0080BCF4: lea eax, var_34
0080BCF7: push eax
0080BCF8: lea eax, var_30
0080BCFB: push eax
0080BCFC: lea eax, var_2C
0080BCFF: push eax
0080BD00: lea eax, var_28
0080BD03: push eax
0080BD04: lea eax, var_24
0080BD07: push eax
0080BD08: push 00000005h
0080BD0A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080BD0F: add esp, 00000018h
0080BD12: lea eax, var_3C
0080BD15: push eax
0080BD16: lea eax, var_38
0080BD19: push eax
0080BD1A: push 00000002h
0080BD1C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080BD21: add esp, 0000000Ch
0080BD24: lea eax, var_7C
0080BD27: push eax
0080BD28: lea eax, var_6C
0080BD2B: push eax
0080BD2C: lea eax, var_5C
0080BD2F: push eax
0080BD30: lea eax, var_4C
0080BD33: push eax
0080BD34: push 00000004h
0080BD36: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080BD3B: add esp, 00000014h
0080BD3E: lea eax, var_80
0080BD41: push eax
0080BD42: push 00000000h
0080BD44: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0080BD49: ret 
End Sub

Private sub tmrAutoStart__80CF1F
0080CF1F: push ebp
0080CF20: mov ebp, esp
0080CF22: sub esp, 0000000Ch
0080CF25: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080CF2A: mov eax, fs:[00h]
0080CF30: push eax
0080CF31: mov fs:[00000000h], esp
0080CF38: push 0000003Ch
0080CF3A: pop eax
0080CF3B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080CF40: push ebx
0080CF41: push esi
0080CF42: push edi
0080CF43: mov var_0C, esp
0080CF46: mov var_08, 0040A6B0h
0080CF4D: mov eax, [ebp+08h]
0080CF50: and eax, 00000001h
0080CF53: mov var_04, eax
0080CF56: mov eax, [ebp+08h]
0080CF59: and al, FEh
0080CF5B: mov [ebp+08h], eax
0080CF5E: mov eax, [ebp+08h]
0080CF61: mov eax, [eax]
0080CF63: push [ebp+08h]
0080CF66: call [eax+04h]
0080CF69: cmp [008F2010h], 00000000h
0080CF70: jnz 80CF8Ah
0080CF72: push 008F2010h
0080CF77: push 00433984h
0080CF7C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080CF81: mov var_40, 008F2010h
0080CF88: jmp 80CF91h
0080CF8A: mov var_40, 008F2010h
0080CF91: mov eax, var_40
0080CF94: mov eax, [eax]
0080CF96: mov ecx, var_40
0080CF99: mov ecx, [ecx]
0080CF9B: mov ecx, [ecx]
0080CF9D: push eax
0080CF9E: call [ecx+00000380h]
0080CFA4: push eax
0080CFA5: lea eax, var_18
0080CFA8: push eax
0080CFA9: call 00410A84h ; Set (object)
0080CFAE: mov var_24, eax
0080CFB1: lea eax, var_1C
0080CFB4: push eax
0080CFB5: push 00000003h
0080CFB7: mov eax, var_24
0080CFBA: mov eax, [eax]
0080CFBC: push var_24
0080CFBF: call [eax+40h]
0080CFC2: fclex 
0080CFC4: mov var_28, eax
0080CFC7: cmp var_28, 00000000h
0080CFCB: jnl 80CFE4h
0080CFCD: push 00000040h
0080CFCF: push 00440DE8h
0080CFD4: push var_24
0080CFD7: push var_28
0080CFDA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080CFDF: mov var_44, eax
0080CFE2: jmp 80CFE8h
0080CFE4: and var_44, 00000000h
0080CFE8: mov eax, var_1C
0080CFEB: mov var_2C, eax
0080CFEE: lea eax, var_20
0080CFF1: push eax
0080CFF2: mov eax, var_2C
0080CFF5: mov eax, [eax]
0080CFF7: push var_2C
0080CFFA: call [eax+000000E0h]
0080D000: fclex 
0080D002: mov var_30, eax
0080D005: cmp var_30, 00000000h
0080D009: jnl 80D025h
0080D00B: push 000000E0h
0080D010: push 00440DF8h
0080D015: push var_2C
0080D018: push var_30
0080D01B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080D020: mov var_48, eax
0080D023: jmp 80D029h
0080D025: and var_48, 00000000h
0080D029: xor eax, eax
0080D02B: cmp word ptr var_20, 0001h
0080D030: setz al
0080D033: neg eax
0080D035: mov var_34, ax
0080D039: lea eax, var_1C
0080D03C: push eax
0080D03D: lea eax, var_18
0080D040: push eax
0080D041: push 00000002h
0080D043: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080D048: add esp, 0000000Ch
0080D04B: movsx eax, word ptr var_34
0080D04F: test eax, eax
0080D051: jz 80D088h
0080D053: mov eax, [ebp+08h]
0080D056: mov eax, [eax]
0080D058: push [ebp+08h]
0080D05B: call [eax+000006F8h]
0080D061: mov var_24, eax
0080D064: cmp var_24, 00000000h
0080D068: jnl 80D084h
0080D06A: push 000006F8h
0080D06F: push 004403C0h
0080D074: push [ebp+08h]
0080D077: push var_24
0080D07A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080D07F: mov var_4C, eax
0080D082: jmp 80D088h
0080D084: and var_4C, 00000000h
0080D088: mov eax, [ebp+08h]
0080D08B: mov eax, [eax]
0080D08D: push [ebp+08h]
0080D090: call [eax+00000318h]
0080D096: push eax
0080D097: lea eax, var_18
0080D09A: push eax
0080D09B: call 00410A84h ; Set (object)
0080D0A0: mov var_24, eax
0080D0A3: push 00000000h
0080D0A5: mov eax, var_24
0080D0A8: mov eax, [eax]
0080D0AA: push var_24
0080D0AD: call [eax+5Ch]
0080D0B0: fclex 
0080D0B2: mov var_28, eax
0080D0B5: cmp var_28, 00000000h
0080D0B9: jnl 80D0D2h
0080D0BB: push 0000005Ch
0080D0BD: push 00447A20h
0080D0C2: push var_24
0080D0C5: push var_28
0080D0C8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080D0CD: mov var_50, eax
0080D0D0: jmp 80D0D6h
0080D0D2: and var_50, 00000000h
0080D0D6: lea ecx, var_18
0080D0D9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080D0DE: mov var_04, 00000000h
0080D0E5: push 0080D100h
0080D0EA: jmp 80D0FFh
0080D0EC: lea eax, var_1C
0080D0EF: push eax
0080D0F0: lea eax, var_18
0080D0F3: push eax
0080D0F4: push 00000002h
0080D0F6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080D0FB: add esp, 0000000Ch
0080D0FE: ret 
End Sub

Private sub tmrWC__80D11F
0080D11F: push ebp
0080D120: mov ebp, esp
0080D122: sub esp, 0000000Ch
0080D125: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080D12A: mov eax, fs:[00h]
0080D130: push eax
0080D131: mov fs:[00000000h], esp
0080D138: mov eax, 00000094h
0080D13D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080D142: push ebx
0080D143: push esi
0080D144: push edi
0080D145: mov var_0C, esp
0080D148: mov var_08, 0040A6C0h
0080D14F: mov eax, [ebp+08h]
0080D152: and eax, 00000001h
0080D155: mov var_04, eax
0080D158: mov eax, [ebp+08h]
0080D15B: and al, FEh
0080D15D: mov [ebp+08h], eax
0080D160: mov eax, [ebp+08h]
0080D163: mov eax, [eax]
0080D165: push [ebp+08h]
0080D168: call [eax+04h]
0080D16B: push 00000000h
0080D16D: push 8001000Dh
0080D172: mov eax, [ebp+08h]
0080D175: mov eax, [eax]
0080D177: push [ebp+08h]
0080D17A: call [eax+0000033Ch]
0080D180: push eax
0080D181: lea eax, var_24
0080D184: push eax
0080D185: call 00410A84h ; Set (object)
0080D18A: push eax
0080D18B: lea eax, var_34
0080D18E: push eax
0080D18F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080D194: add esp, 00000010h
0080D197: push eax
0080D198: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0080D19D: neg ax
0080D1A0: sbb eax, eax
0080D1A2: inc eax
0080D1A3: neg eax
0080D1A5: mov var_00000084, ax
0080D1AC: lea ecx, var_24
0080D1AF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080D1B4: lea ecx, var_34
0080D1B7: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0080D1BC: movsx eax, word ptr var_00000084
0080D1C3: test eax, eax
0080D1C5: jz 80D1CCh
0080D1C7: jmp 0080D4F6h
0080D1CC: mov eax, [ebp+08h]
0080D1CF: mov eax, [eax]
0080D1D1: push [ebp+08h]
0080D1D4: call [eax+00000320h]
0080D1DA: push eax
0080D1DB: lea eax, var_24
0080D1DE: push eax
0080D1DF: call 00410A84h ; Set (object)
0080D1E4: mov var_00000084, eax
0080D1EA: lea eax, var_18
0080D1ED: push eax
0080D1EE: mov eax, var_00000084
0080D1F4: mov eax, [eax]
0080D1F6: push var_00000084
0080D1FC: call [eax+70h]
0080D1FF: fclex 
0080D201: mov var_00000088, eax
0080D207: cmp var_00000088, 00000000h
0080D20E: jnl 80D230h
0080D210: push 00000070h
0080D212: push 00447A20h
0080D217: push var_00000084
0080D21D: push var_00000088
0080D223: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080D228: mov var_00000098, eax
0080D22E: jmp 80D237h
0080D230: and var_00000098, 00000000h
0080D237: push var_18
0080D23A: push 00442938h
0080D23F: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0080D244: neg eax
0080D246: sbb eax, eax
0080D248: neg eax
0080D24A: neg eax
0080D24C: mov var_0000008C, ax
0080D253: lea ecx, var_18
0080D256: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0080D25B: lea ecx, var_24
0080D25E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080D263: movsx eax, word ptr var_0000008C
0080D26A: test eax, eax
0080D26C: jz 0080D4F6h
0080D272: mov eax, [ebp+08h]
0080D275: mov eax, [eax]
0080D277: push [ebp+08h]
0080D27A: call [eax+00000320h]
0080D280: push eax
0080D281: lea eax, var_24
0080D284: push eax
0080D285: call 00410A84h ; Set (object)
0080D28A: mov var_00000084, eax
0080D290: push 00442938h
0080D295: mov eax, var_00000084
0080D29B: mov eax, [eax]
0080D29D: push var_00000084
0080D2A3: call [eax+74h]
0080D2A6: fclex 
0080D2A8: mov var_00000088, eax
0080D2AE: cmp var_00000088, 00000000h
0080D2B5: jnl 80D2D7h
0080D2B7: push 00000074h
0080D2B9: push 00447A20h
0080D2BE: push var_00000084
0080D2C4: push var_00000088
0080D2CA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080D2CF: mov var_0000009C, eax
0080D2D5: jmp 80D2DEh
0080D2D7: and var_0000009C, 00000000h
0080D2DE: lea ecx, var_24
0080D2E1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080D2E6: lea eax, var_18
0080D2E9: push eax
0080D2EA: mov eax, [ebp+08h]
0080D2ED: mov eax, [eax]
0080D2EF: push [ebp+08h]
0080D2F2: call [eax+000001C0h]
0080D2F8: fclex 
0080D2FA: mov var_00000084, eax
0080D300: cmp var_00000084, 00000000h
0080D307: jnl 80D329h
0080D309: push 000001C0h
0080D30E: push 00448BFCh
0080D313: push [ebp+08h]
0080D316: push var_00000084
0080D31C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080D321: mov var_000000A0, eax
0080D327: jmp 80D330h
0080D329: and var_000000A0, 00000000h
0080D330: push var_18
0080D333: call 004109DCh ; Val(arg_1)
0080D338: fstp real8 ptr var_80
0080D33B: push 00000000h
0080D33D: push 00000003h
0080D33F: push 00000001h
0080D341: push 00000000h
0080D343: lea eax, var_48
0080D346: push eax
0080D347: push 00000010h
0080D349: push 00000880h
0080D34E: call 00410946h ; ReDim
0080D353: add esp, 0000001Ch
0080D356: lea eax, var_1C
0080D359: push eax
0080D35A: mov eax, [ebp+08h]
0080D35D: mov eax, [eax]
0080D35F: push [ebp+08h]
0080D362: call [eax+000001C0h]
0080D368: fclex 
0080D36A: mov var_00000088, eax
0080D370: cmp var_00000088, 00000000h
0080D377: jnl 80D399h
0080D379: push 000001C0h
0080D37E: push 00448BFCh
0080D383: push [ebp+08h]
0080D386: push var_00000088
0080D38C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080D391: mov var_000000A4, eax
0080D397: jmp 80D3A0h
0080D399: and var_000000A4, 00000000h
0080D3A0: push var_1C
0080D3A3: call 004109DCh ; Val(arg_1)
0080D3A8: fstp real8 ptr var_50
0080D3AB: mov var_58, 00000005h
0080D3B2: lea esi, var_58
0080D3B5: push 00000000h
0080D3B7: push var_48
0080D3BA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080D3BF: mov ecx, eax
0080D3C1: mov edx, esi
0080D3C3: call 00410922h ; msvbvm60.dll.__vbaVarMove
0080D3C8: mov var_60, 00447594h
0080D3CF: mov var_68, 00000008h
0080D3D6: lea esi, var_68
0080D3D9: push 00000001h
0080D3DB: push var_48
0080D3DE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080D3E3: mov ecx, eax
0080D3E5: mov edx, esi
0080D3E7: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0080D3EC: push 00000000h
0080D3EE: push 0000000Bh
0080D3F0: mov eax, [ebp+08h]
0080D3F3: mov eax, [eax]
0080D3F5: push [ebp+08h]
0080D3F8: call [eax+00000338h]
0080D3FE: push eax
0080D3FF: lea eax, var_24
0080D402: push eax
0080D403: call 00410A84h ; Set (object)
0080D408: push eax
0080D409: lea eax, var_34
0080D40C: push eax
0080D40D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080D412: add esp, 00000010h
0080D415: push eax
0080D416: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0080D41B: mov var_70, eax
0080D41E: mov var_78, 00000003h
0080D425: lea esi, var_78
0080D428: push 00000002h
0080D42A: push var_48
0080D42D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080D432: mov ecx, eax
0080D434: mov edx, esi
0080D436: call 00410922h ; msvbvm60.dll.__vbaVarMove
0080D43B: cmp [008F2010h], 00000000h
0080D442: jnz 80D45Fh
0080D444: push 008F2010h
0080D449: push 00433984h
0080D44E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080D453: mov var_000000A8, 008F2010h
0080D45D: jmp 80D469h
0080D45F: mov var_000000A8, 008F2010h
0080D469: mov eax, var_000000A8
0080D46F: mov eax, [eax]
0080D471: mov ecx, var_000000A8
0080D477: mov ecx, [ecx]
0080D479: mov ecx, [ecx]
0080D47B: push eax
0080D47C: call [ecx+0000036Ch]
0080D482: mov var_3C, eax
0080D485: mov var_44, 00000009h
0080D48C: lea esi, var_44
0080D48F: push 00000003h
0080D491: push var_48
0080D494: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080D499: mov ecx, eax
0080D49B: mov edx, esi
0080D49D: call 00410940h ; msvbvm60.dll.__vbaVarZero
0080D4A2: mov edx, 0043D57Ch ; x30
0080D4A7: lea ecx, var_20
0080D4AA: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080D4AF: lea eax, var_48
0080D4B2: push eax
0080D4B3: lea eax, var_20
0080D4B6: push eax
0080D4B7: fld real8 ptr var_80
0080D4BA: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0080D4BF: push eax
0080D4C0: call 007A6910h
0080D4C5: lea eax, var_48
0080D4C8: push eax
0080D4C9: push 00000000h
0080D4CB: call 00410934h ; Erase
0080D4D0: lea eax, var_20
0080D4D3: push eax
0080D4D4: lea eax, var_1C
0080D4D7: push eax
0080D4D8: lea eax, var_18
0080D4DB: push eax
0080D4DC: push 00000003h
0080D4DE: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080D4E3: add esp, 00000010h
0080D4E6: lea ecx, var_24
0080D4E9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080D4EE: lea ecx, var_34
0080D4F1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0080D4F6: mov var_04, 00000000h
0080D4FD: wait 
0080D4FE: push 0080D542h
0080D503: jmp 80D541h
0080D505: lea eax, var_20
0080D508: push eax
0080D509: lea eax, var_1C
0080D50C: push eax
0080D50D: lea eax, var_18
0080D510: push eax
0080D511: push 00000003h
0080D513: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080D518: add esp, 00000010h
0080D51B: lea ecx, var_24
0080D51E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080D523: lea eax, var_44
0080D526: push eax
0080D527: lea eax, var_34
0080D52A: push eax
0080D52B: push 00000002h
0080D52D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080D532: add esp, 0000000Ch
0080D535: lea eax, var_48
0080D538: push eax
0080D539: push 00000000h
0080D53B: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0080D540: ret 
End Sub

