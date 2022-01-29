VERSION 5.00
Begin VB.Form frmAudioCap
  Caption = "Audio capture"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmAudioCap.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 12555
  ClientHeight = 6180
  StartUpPosition = 3 'Windows Default
  Begin VB.Timer tmrAuto
    Enabled = 0   'False
    Interval = 1
    Left = 240
    Top = 0
  End
  Begin XtremeSuiteControls.GroupBox gbStreams
    Left = 2640
    Top = 0
    Width = 9855
    Height = 6135
    TabIndex = 10
    Begin XtremeSuiteControls.ListView lstStreams
      Left = 120
      Top = 240
      Width = 9615
      Height = 5775
      TabIndex = 15
    End
  End
  Begin XtremeSuiteControls.GroupBox gbSettings
    Left = 120
    Top = 0
    Width = 2415
    Height = 6135
    TabIndex = 0
    Begin VB.Timer Timer1
      Interval = 1200
      Left = 1080
      Top = 0
    End
    Begin XtremeSuiteControls.PushButton cmdStart
      Left = 1080
      Top = 5640
      Width = 1215
      Height = 375
      TabIndex = 14
    End
    Begin XtremeSuiteControls.ComboBox cmbChannels
      Left = 1080
      Top = 315
      Width = 1095
      Height = 315
      TabStop = 0   'False
      TabIndex = 4
    End
    Begin XtremeSuiteControls.ComboBox cmbBits
      Left = 1080
      Top = 705
      Width = 1095
      Height = 315
      TabStop = 0   'False
      TabIndex = 5
    End
    Begin XtremeSuiteControls.CheckBox chkSave
      Left = 120
      Top = 3000
      Width = 1335
      Height = 255
      TabIndex = 11
    End
    Begin VB.TextBox txtMaxStreams
      Left = 120
      Top = 3360
      Width = 615
      Height = 285
      Enabled = 0   'False
      Text = "0"
      TabIndex = 12
      MaxLength = 4
    End
    Begin XtremeSuiteControls.ComboBox cmbLength
      Left = 1080
      Top = 1560
      Width = 615
      Height = 315
      TabStop = 0   'False
      TabIndex = 8
    End
    Begin XtremeSuiteControls.ComboBox cmbSamples
      Left = 1080
      Top = 1080
      Width = 1095
      Height = 315
      TabStop = 0   'False
      TabIndex = 6
    End
    Begin XtremeSuiteControls.CheckBox chkAuto
      Left = 120
      Top = 2280
      Width = 1335
      Height = 255
      TabIndex = 16
    End
    Begin XtremeSuiteControls.CheckBox chkPlay
      Left = 120
      Top = 2640
      Width = 2175
      Height = 255
      TabIndex = 17
    End
    Begin VB.Label lblSettings
      Caption = "Bits:"
      Index = 1
      Left = 120
      Top = 720
      Width = 735
      Height = 255
      TabIndex = 2
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblSettings
      Caption = "Channel:"
      Index = 0
      Left = 120
      Top = 360
      Width = 735
      Height = 255
      TabIndex = 1
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblSettings
      Caption = "(0 = Unlimited)"
      Index = 6
      Left = 840
      Top = 3390
      Width = 1455
      Height = 255
      TabIndex = 13
    End
    Begin VB.Label lblSettings
      Caption = "sec"
      Index = 4
      Left = 1800
      Top = 1600
      Width = 375
      Height = 255
      TabIndex = 9
    End
    Begin VB.Label lblSettings
      Caption = "Length:"
      Index = 3
      Left = 120
      Top = 1560
      Width = 735
      Height = 255
      TabIndex = 7
      Alignment = 1 'Right Justify
    End
    Begin VB.Label lblSettings
      Caption = "Samples:"
      Index = 2
      Left = 120
      Top = 1080
      Width = 735
      Height = 255
      TabIndex = 3
      Alignment = 1 'Right Justify
    End
  End
  Begin VB.Menu mnuAudioMenu
    Visible = 0   'False
    Caption = "Audio"
    Begin VB.Menu mnuAudio
      Index = 0
      Caption = "Play"
    End
    Begin VB.Menu mnuAudio
      Index = 1
      Caption = "-"
    End
    Begin VB.Menu mnuAudio
      Index = 2
      Caption = "Save stream"
    End
    Begin VB.Menu mnuAudio
      Index = 3
      Caption = "Clear"
    End
  End
End

Attribute VB_Name = "frmAudioCap"


Private sub txtMaxStreams__851606
00851606: push ebp
00851607: mov ebp, esp
00851609: sub esp, 00000018h
0085160C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00851611: mov eax, fs:[00h]
00851617: push eax
00851618: mov fs:[00000000h], esp
0085161F: mov eax, 00000088h
00851624: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00851629: push ebx
0085162A: push esi
0085162B: push edi
0085162C: mov var_18, esp
0085162F: mov var_14, 0040C718h
00851636: mov eax, [ebp+08h]
00851639: and eax, 00000001h
0085163C: mov var_10, eax
0085163F: mov eax, [ebp+08h]
00851642: and al, FEh
00851644: mov [ebp+08h], eax
00851647: mov var_0C, 00000000h
0085164E: mov eax, [ebp+08h]
00851651: mov eax, [eax]
00851653: push [ebp+08h]
00851656: call [eax+04h]
00851659: mov var_04, 00000001h
00851660: mov var_04, 00000002h
00851667: push FFFFFFFFh
00851669: call 00410A60h ; On Error ...
0085166E: mov var_04, 00000003h
00851675: mov eax, [ebp+08h]
00851678: mov eax, [eax]
0085167A: push [ebp+08h]
0085167D: call [eax+00000304h]
00851683: push eax
00851684: lea eax, var_2C
00851687: push eax
00851688: call 00410A84h ; Set (object)
0085168D: mov var_78, eax
00851690: lea eax, var_24
00851693: push eax
00851694: mov eax, var_78
00851697: mov eax, [eax]
00851699: push var_78
0085169C: call [eax+000000A0h]
008516A2: fclex 
008516A4: mov var_7C, eax
008516A7: cmp var_7C, 00000000h
008516AB: jnl 8516CAh
008516AD: push 000000A0h
008516B2: push 00440E08h
008516B7: push var_78
008516BA: push var_7C
008516BD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008516C2: mov var_000000A0, eax
008516C8: jmp 8516D1h
008516CA: and var_000000A0, 00000000h
008516D1: mov eax, [ebp+08h]
008516D4: mov eax, [eax]
008516D6: push [ebp+08h]
008516D9: call [eax+00000304h]
008516DF: mov var_3C, eax
008516E2: mov var_44, 00000009h
008516E9: push var_24
008516EC: call 0041098Eh ; Len(arg_1)
008516F1: xor ebx, ebx
008516F3: test eax, eax
008516F5: setnle bl
008516F8: neg ebx
008516FA: lea eax, var_44
008516FD: push eax
008516FE: call 004109EEh ; IsNumeric(arg_1)
00851703: neg ax
00851706: sbb eax, eax
00851708: inc eax
00851709: neg eax
0085170B: and bx, ax
0085170E: mov var_80, bx
00851712: lea ecx, var_24
00851715: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0085171A: lea ecx, var_2C
0085171D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00851722: lea ecx, var_44
00851725: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0085172A: movsx eax, word ptr var_80
0085172E: test eax, eax
00851730: jz 008518A9h
00851736: mov var_04, 00000004h
0085173D: mov eax, [ebp+08h]
00851740: mov eax, [eax]
00851742: push [ebp+08h]
00851745: call [eax+00000304h]
0085174B: push eax
0085174C: lea eax, var_34
0085174F: push eax
00851750: call 00410A84h ; Set (object)
00851755: mov eax, [ebp+08h]
00851758: mov eax, [eax]
0085175A: push [ebp+08h]
0085175D: call [eax+00000304h]
00851763: push eax
00851764: lea eax, var_30
00851767: push eax
00851768: call 00410A84h ; Set (object)
0085176D: mov var_80, eax
00851770: mov eax, [ebp+08h]
00851773: mov eax, [eax]
00851775: push [ebp+08h]
00851778: call [eax+00000304h]
0085177E: push eax
0085177F: lea eax, var_2C
00851782: push eax
00851783: call 00410A84h ; Set (object)
00851788: mov var_78, eax
0085178B: lea eax, var_24
0085178E: push eax
0085178F: mov eax, var_78
00851792: mov eax, [eax]
00851794: push var_78
00851797: call [eax+000000A0h]
0085179D: fclex 
0085179F: mov var_7C, eax
008517A2: cmp var_7C, 00000000h
008517A6: jnl 8517C5h
008517A8: push 000000A0h
008517AD: push 00440E08h
008517B2: push var_78
008517B5: push var_7C
008517B8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008517BD: mov var_000000A4, eax
008517C3: jmp 8517CCh
008517C5: and var_000000A4, 00000000h
008517CC: push var_24
008517CF: call 0041098Eh ; Len(arg_1)
008517D4: sub eax, 00000001h
008517D7: jo 00851941h
008517DD: mov var_4C, eax
008517E0: mov var_54, 00000003h
008517E7: mov eax, var_34
008517EA: mov var_0000009C, eax
008517F0: and var_34, 00000000h
008517F4: mov eax, var_0000009C
008517FA: mov var_3C, eax
008517FD: mov var_44, 00000009h
00851804: lea eax, var_54
00851807: push eax
00851808: push 00000001h
0085180A: lea eax, var_44
0085180D: push eax
0085180E: lea eax, var_64
00851811: push eax
00851812: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
00851817: lea eax, var_64
0085181A: push eax
0085181B: lea eax, var_28
0085181E: push eax
0085181F: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
00851824: push eax
00851825: mov eax, var_80
00851828: mov eax, [eax]
0085182A: push var_80
0085182D: call [eax+000000A4h]
00851833: fclex 
00851835: mov var_00000084, eax
0085183B: cmp var_00000084, 00000000h
00851842: jnl 851864h
00851844: push 000000A4h
00851849: push 00440E08h
0085184E: push var_80
00851851: push var_00000084
00851857: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085185C: mov var_000000A8, eax
00851862: jmp 85186Bh
00851864: and var_000000A8, 00000000h
0085186B: lea eax, var_28
0085186E: push eax
0085186F: lea eax, var_24
00851872: push eax
00851873: push 00000002h
00851875: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0085187A: add esp, 0000000Ch
0085187D: lea eax, var_34
00851880: push eax
00851881: lea eax, var_30
00851884: push eax
00851885: lea eax, var_2C
00851888: push eax
00851889: push 00000003h
0085188B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00851890: add esp, 00000010h
00851893: lea eax, var_64
00851896: push eax
00851897: lea eax, var_54
0085189A: push eax
0085189B: lea eax, var_44
0085189E: push eax
0085189F: push 00000003h
008518A1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008518A6: add esp, 00000010h
008518A9: mov var_04, 00000006h
008518B0: mov var_3C, 80020004h
008518B7: mov var_44, 0000000Ah
008518BE: lea eax, var_44
008518C1: push eax
008518C2: push 0044AED4h ; {End}
008518C7: call 00410736h ; SendKeys
008518CC: lea ecx, var_44
008518CF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008518D4: mov var_10, 00000000h
008518DB: push 00851922h
008518E0: jmp 851921h
008518E2: lea eax, var_28
008518E5: push eax
008518E6: lea eax, var_24
008518E9: push eax
008518EA: push 00000002h
008518EC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008518F1: add esp, 0000000Ch
008518F4: lea eax, var_34
008518F7: push eax
008518F8: lea eax, var_30
008518FB: push eax
008518FC: lea eax, var_2C
008518FF: push eax
00851900: push 00000003h
00851902: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00851907: add esp, 00000010h
0085190A: lea eax, var_64
0085190D: push eax
0085190E: lea eax, var_54
00851911: push eax
00851912: lea eax, var_44
00851915: push eax
00851916: push 00000003h
00851918: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0085191D: add esp, 00000010h
00851920: ret 
End Sub

Private sub Timer1__850AF3
00850AF3: push ebp
00850AF4: mov ebp, esp
00850AF6: sub esp, 0000000Ch
00850AF9: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00850AFE: mov eax, fs:[00h]
00850B04: push eax
00850B05: mov fs:[00000000h], esp
00850B0C: push 0000003Ch
00850B0E: pop eax
00850B0F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00850B14: push ebx
00850B15: push esi
00850B16: push edi
00850B17: mov var_0C, esp
00850B1A: mov var_08, 0040C6F8h
00850B21: mov eax, [ebp+08h]
00850B24: and eax, 00000001h
00850B27: mov var_04, eax
00850B2A: mov eax, [ebp+08h]
00850B2D: and al, FEh
00850B2F: mov [ebp+08h], eax
00850B32: mov eax, [ebp+08h]
00850B35: mov eax, [eax]
00850B37: push [ebp+08h]
00850B3A: call [eax+04h]
00850B3D: cmp [008F2010h], 00000000h
00850B44: jnz 850B5Eh
00850B46: push 008F2010h
00850B4B: push 00433984h
00850B50: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00850B55: mov var_40, 008F2010h
00850B5C: jmp 850B65h
00850B5E: mov var_40, 008F2010h
00850B65: mov eax, var_40
00850B68: mov eax, [eax]
00850B6A: mov ecx, var_40
00850B6D: mov ecx, [ecx]
00850B6F: mov ecx, [ecx]
00850B71: push eax
00850B72: call [ecx+00000380h]
00850B78: push eax
00850B79: lea eax, var_18
00850B7C: push eax
00850B7D: call 00410A84h ; Set (object)
00850B82: mov var_24, eax
00850B85: lea eax, var_1C
00850B88: push eax
00850B89: push 00000003h
00850B8B: mov eax, var_24
00850B8E: mov eax, [eax]
00850B90: push var_24
00850B93: call [eax+40h]
00850B96: fclex 
00850B98: mov var_28, eax
00850B9B: cmp var_28, 00000000h
00850B9F: jnl 850BB8h
00850BA1: push 00000040h
00850BA3: push 00440DE8h
00850BA8: push var_24
00850BAB: push var_28
00850BAE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00850BB3: mov var_44, eax
00850BB6: jmp 850BBCh
00850BB8: and var_44, 00000000h
00850BBC: mov eax, var_1C
00850BBF: mov var_2C, eax
00850BC2: lea eax, var_20
00850BC5: push eax
00850BC6: mov eax, var_2C
00850BC9: mov eax, [eax]
00850BCB: push var_2C
00850BCE: call [eax+000000E0h]
00850BD4: fclex 
00850BD6: mov var_30, eax
00850BD9: cmp var_30, 00000000h
00850BDD: jnl 850BF9h
00850BDF: push 000000E0h
00850BE4: push 00440DF8h
00850BE9: push var_2C
00850BEC: push var_30
00850BEF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00850BF4: mov var_48, eax
00850BF7: jmp 850BFDh
00850BF9: and var_48, 00000000h
00850BFD: xor eax, eax
00850BFF: cmp word ptr var_20, 0001h
00850C04: setz al
00850C07: neg eax
00850C09: mov var_34, ax
00850C0D: lea eax, var_1C
00850C10: push eax
00850C11: lea eax, var_18
00850C14: push eax
00850C15: push 00000002h
00850C17: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00850C1C: add esp, 0000000Ch
00850C1F: movsx eax, word ptr var_34
00850C23: test eax, eax
00850C25: jz 850C5Ch
00850C27: mov eax, [ebp+08h]
00850C2A: mov eax, [eax]
00850C2C: push [ebp+08h]
00850C2F: call [eax+00000700h]
00850C35: mov var_24, eax
00850C38: cmp var_24, 00000000h
00850C3C: jnl 850C58h
00850C3E: push 00000700h
00850C43: push 004403D0h
00850C48: push [ebp+08h]
00850C4B: push var_24
00850C4E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00850C53: mov var_4C, eax
00850C56: jmp 850C5Ch
00850C58: and var_4C, 00000000h
00850C5C: mov eax, [ebp+08h]
00850C5F: mov eax, [eax]
00850C61: push [ebp+08h]
00850C64: call [eax+00000300h]
00850C6A: push eax
00850C6B: lea eax, var_18
00850C6E: push eax
00850C6F: call 00410A84h ; Set (object)
00850C74: mov var_24, eax
00850C77: push 00000000h
00850C79: mov eax, var_24
00850C7C: mov eax, [eax]
00850C7E: push var_24
00850C81: call [eax+5Ch]
00850C84: fclex 
00850C86: mov var_28, eax
00850C89: cmp var_28, 00000000h
00850C8D: jnl 850CA6h
00850C8F: push 0000005Ch
00850C91: push 00447A20h
00850C96: push var_24
00850C99: push var_28
00850C9C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00850CA1: mov var_50, eax
00850CA4: jmp 850CAAh
00850CA6: and var_50, 00000000h
00850CAA: lea ecx, var_18
00850CAD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00850CB2: mov var_04, 00000000h
00850CB9: push 00850CD4h
00850CBE: jmp 850CD3h
00850CC0: lea eax, var_1C
00850CC3: push eax
00850CC4: lea eax, var_18
00850CC7: push eax
00850CC8: push 00000002h
00850CCA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00850CCF: add esp, 0000000Ch
00850CD2: ret 
End Sub

Private sub tmrAuto__850CF3
00850CF3: push ebp
00850CF4: mov ebp, esp
00850CF6: sub esp, 0000000Ch
00850CF9: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00850CFE: mov eax, fs:[00h]
00850D04: push eax
00850D05: mov fs:[00000000h], esp
00850D0C: mov eax, 00000118h
00850D11: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00850D16: push ebx
00850D17: push esi
00850D18: push edi
00850D19: mov var_0C, esp
00850D1C: mov var_08, 0040C708h
00850D23: mov eax, [ebp+08h]
00850D26: and eax, 00000001h
00850D29: mov var_04, eax
00850D2C: mov eax, [ebp+08h]
00850D2F: and al, FEh
00850D31: mov [ebp+08h], eax
00850D34: mov eax, [ebp+08h]
00850D37: mov eax, [eax]
00850D39: push [ebp+08h]
00850D3C: call [eax+04h]
00850D3F: push 00000000h
00850D41: push FFFFFDFAh
00850D46: mov eax, [ebp+08h]
00850D49: mov eax, [eax]
00850D4B: push [ebp+08h]
00850D4E: call [eax+00000320h]
00850D54: push eax
00850D55: lea eax, var_24
00850D58: push eax
00850D59: call 00410A84h ; Set (object)
00850D5E: push eax
00850D5F: lea eax, var_40
00850D62: push eax
00850D63: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00850D68: add esp, 00000010h
00850D6B: push eax
00850D6C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00850D71: mov edx, eax
00850D73: lea ecx, var_18
00850D76: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00850D7B: push eax
00850D7C: push 004411ECh ; Stop
00850D81: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00850D86: neg eax
00850D88: sbb eax, eax
00850D8A: inc eax
00850D8B: neg eax
00850D8D: mov var_000000E0, ax
00850D94: lea ecx, var_18
00850D97: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00850D9C: lea ecx, var_24
00850D9F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00850DA4: lea ecx, var_40
00850DA7: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00850DAC: movsx eax, word ptr var_000000E0
00850DB3: test eax, eax
00850DB5: jz 00851560h
00850DBB: mov eax, [ebp+08h]
00850DBE: mov eax, [eax]
00850DC0: push [ebp+08h]
00850DC3: call [eax+000002FCh]
00850DC9: push eax
00850DCA: lea eax, var_24
00850DCD: push eax
00850DCE: call 00410A84h ; Set (object)
00850DD3: mov var_000000E0, eax
00850DD9: lea eax, var_18
00850DDC: push eax
00850DDD: mov eax, var_000000E0
00850DE3: mov eax, [eax]
00850DE5: push var_000000E0
00850DEB: call [eax+70h]
00850DEE: fclex 
00850DF0: mov var_000000E4, eax
00850DF6: cmp var_000000E4, 00000000h
00850DFD: jnl 850E1Fh
00850DFF: push 00000070h
00850E01: push 00447A20h
00850E06: push var_000000E0
00850E0C: push var_000000E4
00850E12: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00850E17: mov var_000000FC, eax
00850E1D: jmp 850E26h
00850E1F: and var_000000FC, 00000000h
00850E26: push var_18
00850E29: push 00442930h
00850E2E: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00850E33: neg eax
00850E35: sbb eax, eax
00850E37: inc eax
00850E38: neg eax
00850E3A: mov var_000000E8, ax
00850E41: lea ecx, var_18
00850E44: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00850E49: lea ecx, var_24
00850E4C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00850E51: movsx eax, word ptr var_000000E8
00850E58: test eax, eax
00850E5A: jz 00851560h
00850E60: push 00000000h
00850E62: push 00000000h
00850E64: mov eax, [ebp+08h]
00850E67: mov eax, [eax]
00850E69: push [ebp+08h]
00850E6C: call [eax+0000032Ch]
00850E72: push eax
00850E73: lea eax, var_24
00850E76: push eax
00850E77: call 00410A84h ; Set (object)
00850E7C: push eax
00850E7D: lea eax, var_40
00850E80: push eax
00850E81: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00850E86: add esp, 00000010h
00850E89: push eax
00850E8A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00850E8F: dec eax
00850E90: neg eax
00850E92: sbb eax, eax
00850E94: inc eax
00850E95: neg eax
00850E97: mov var_000000E0, ax
00850E9E: lea ecx, var_24
00850EA1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00850EA6: lea ecx, var_40
00850EA9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00850EAE: movsx eax, word ptr var_000000E0
00850EB5: test eax, eax
00850EB7: jz 00851198h
00850EBD: mov eax, [ebp+08h]
00850EC0: mov eax, [eax]
00850EC2: push [ebp+08h]
00850EC5: call [eax+00000304h]
00850ECB: push eax
00850ECC: lea eax, var_30
00850ECF: push eax
00850ED0: call 00410A84h ; Set (object)
00850ED5: mov var_000000E0, eax
00850EDB: lea eax, var_1C
00850EDE: push eax
00850EDF: mov eax, var_000000E0
00850EE5: mov eax, [eax]
00850EE7: push var_000000E0
00850EED: call [eax+000000A0h]
00850EF3: fclex 
00850EF5: mov var_000000E4, eax
00850EFB: cmp var_000000E4, 00000000h
00850F02: jnl 850F27h
00850F04: push 000000A0h
00850F09: push 00440E08h
00850F0E: push var_000000E0
00850F14: push var_000000E4
00850F1A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00850F1F: mov var_00000100, eax
00850F25: jmp 850F2Eh
00850F27: and var_00000100, 00000000h
00850F2E: push var_1C
00850F31: call 004109DCh ; Val(arg_1)
00850F36: fstp real8 ptr var_000000DC
00850F3C: mov eax, [ebp+08h]
00850F3F: mov eax, [eax]
00850F41: push [ebp+08h]
00850F44: call [eax+00000304h]
00850F4A: push eax
00850F4B: lea eax, var_24
00850F4E: push eax
00850F4F: call 00410A84h ; Set (object)
00850F54: mov var_000000E8, eax
00850F5A: lea eax, var_18
00850F5D: push eax
00850F5E: mov eax, var_000000E8
00850F64: mov eax, [eax]
00850F66: push var_000000E8
00850F6C: call [eax+000000A0h]
00850F72: fclex 
00850F74: mov var_000000EC, eax
00850F7A: cmp var_000000EC, 00000000h
00850F81: jnl 850FA6h
00850F83: push 000000A0h
00850F88: push 00440E08h
00850F8D: push var_000000E8
00850F93: push var_000000EC
00850F99: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00850F9E: mov var_00000104, eax
00850FA4: jmp 850FADh
00850FA6: and var_00000104, 00000000h
00850FAD: push var_18
00850FB0: call 004109DCh ; Val(arg_1)
00850FB5: call 004109D6h ; msvbvm60.dll.__vbaFpR8
00850FBA: fcomp real8 ptr [00401770h]
00850FC0: fstsw ax
00850FC2: sahf 
00850FC3: jbe 850FD1h
00850FC5: mov var_00000108, 00000001h
00850FCF: jmp 850FD8h
00850FD1: and var_00000108, 00000000h
00850FD8: push 00000000h
00850FDA: push 00000001h
00850FDC: push 00440E48h
00850FE1: push 00000000h
00850FE3: push 00000018h
00850FE5: mov eax, [ebp+08h]
00850FE8: mov eax, [eax]
00850FEA: push [ebp+08h]
00850FED: call [eax+00000318h]
00850FF3: push eax
00850FF4: lea eax, var_28
00850FF7: push eax
00850FF8: call 00410A84h ; Set (object)
00850FFD: push eax
00850FFE: lea eax, var_40
00851001: push eax
00851002: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00851007: add esp, 00000010h
0085100A: push eax
0085100B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00851010: push eax
00851011: lea eax, var_2C
00851014: push eax
00851015: call 00410A84h ; Set (object)
0085101A: push eax
0085101B: lea eax, var_50
0085101E: push eax
0085101F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00851024: add esp, 00000010h
00851027: push eax
00851028: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0085102D: mov var_0000010C, eax
00851033: fild dword ptr var_0000010C
00851039: fstp real8 ptr var_00000114
0085103F: fld real8 ptr var_000000DC
00851045: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0085104A: fcomp real8 ptr var_00000114
00851050: fstsw ax
00851052: sahf 
00851053: jnbe 851061h
00851055: mov var_00000118, 00000001h
0085105F: jmp 851068h
00851061: and var_00000118, 00000000h
00851068: mov eax, var_00000108
0085106E: neg eax
00851070: mov ecx, var_00000118
00851076: neg ecx
00851078: and ax, cx
0085107B: mov var_000000F0, ax
00851082: lea eax, var_1C
00851085: push eax
00851086: lea eax, var_18
00851089: push eax
0085108A: push 00000002h
0085108C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00851091: add esp, 0000000Ch
00851094: lea eax, var_30
00851097: push eax
00851098: lea eax, var_2C
0085109B: push eax
0085109C: lea eax, var_28
0085109F: push eax
008510A0: lea eax, var_24
008510A3: push eax
008510A4: push 00000004h
008510A6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008510AB: add esp, 00000014h
008510AE: lea eax, var_50
008510B1: push eax
008510B2: lea eax, var_40
008510B5: push eax
008510B6: push 00000002h
008510B8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008510BD: add esp, 0000000Ch
008510C0: movsx eax, word ptr var_000000F0
008510C7: test eax, eax
008510C9: jz 00851198h
008510CF: mov eax, [ebp+08h]
008510D2: mov eax, [eax]
008510D4: push [ebp+08h]
008510D7: call [eax+000002FCh]
008510DD: push eax
008510DE: lea eax, var_24
008510E1: push eax
008510E2: call 00410A84h ; Set (object)
008510E7: mov var_000000E0, eax
008510ED: push 00000000h
008510EF: mov eax, var_000000E0
008510F5: mov eax, [eax]
008510F7: push var_000000E0
008510FD: call [eax+5Ch]
00851100: fclex 
00851102: mov var_000000E4, eax
00851108: cmp var_000000E4, 00000000h
0085110F: jnl 851131h
00851111: push 0000005Ch
00851113: push 00447A20h
00851118: push var_000000E0
0085111E: push var_000000E4
00851124: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00851129: mov var_0000011C, eax
0085112F: jmp 851138h
00851131: and var_0000011C, 00000000h
00851138: lea ecx, var_24
0085113B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00851140: mov var_000000BC, 0044CE10h ; Start
0085114A: mov var_000000C4, 00000008h
00851154: push 00000010h
00851156: pop eax
00851157: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0085115C: lea esi, var_000000C4
00851162: mov edi, esp
00851164: movsd 
00851165: movsd 
00851166: movsd 
00851167: movsd 
00851168: push FFFFFDFAh
0085116D: mov eax, [ebp+08h]
00851170: mov eax, [eax]
00851172: push [ebp+08h]
00851175: call [eax+00000320h]
0085117B: push eax
0085117C: lea eax, var_24
0085117F: push eax
00851180: call 00410A84h ; Set (object)
00851185: push eax
00851186: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0085118B: lea ecx, var_24
0085118E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00851193: jmp 00851560h
00851198: lea eax, var_18
0085119B: push eax
0085119C: mov eax, [ebp+08h]
0085119F: mov eax, [eax]
008511A1: push [ebp+08h]
008511A4: call [eax+000001C0h]
008511AA: fclex 
008511AC: mov var_000000E0, eax
008511B2: cmp var_000000E0, 00000000h
008511B9: jnl 8511DBh
008511BB: push 000001C0h
008511C0: push 00443D28h
008511C5: push [ebp+08h]
008511C8: push var_000000E0
008511CE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008511D3: mov var_00000120, eax
008511D9: jmp 8511E2h
008511DB: and var_00000120, 00000000h
008511E2: push var_18
008511E5: call 004109DCh ; Val(arg_1)
008511EA: fstp real8 ptr var_000000DC
008511F0: push 00000000h
008511F2: push 00000005h
008511F4: push 00000001h
008511F6: push 00000000h
008511F8: lea eax, var_000000B4
008511FE: push eax
008511FF: push 00000010h
00851201: push 00000880h
00851206: call 00410946h ; ReDim
0085120B: add esp, 0000001Ch
0085120E: lea eax, var_1C
00851211: push eax
00851212: mov eax, [ebp+08h]
00851215: mov eax, [eax]
00851217: push [ebp+08h]
0085121A: call [eax+000001C0h]
00851220: fclex 
00851222: mov var_000000E4, eax
00851228: cmp var_000000E4, 00000000h
0085122F: jnl 851251h
00851231: push 000001C0h
00851236: push 00443D28h
0085123B: push [ebp+08h]
0085123E: push var_000000E4
00851244: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00851249: mov var_00000124, eax
0085124F: jmp 851258h
00851251: and var_00000124, 00000000h
00851258: push var_1C
0085125B: call 004109DCh ; Val(arg_1)
00851260: fstp real8 ptr var_000000BC
00851266: mov var_000000C4, 00000005h
00851270: lea esi, var_000000C4
00851276: push 00000000h
00851278: push var_000000B4
0085127E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00851283: mov ecx, eax
00851285: mov edx, esi
00851287: call 00410922h ; msvbvm60.dll.__vbaVarMove
0085128C: cmp [008F2010h], 00000000h
00851293: jnz 8512B0h
00851295: push 008F2010h
0085129A: push 00433984h
0085129F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008512A4: mov var_00000128, 008F2010h
008512AE: jmp 8512BAh
008512B0: mov var_00000128, 008F2010h
008512BA: mov eax, var_00000128
008512C0: mov eax, [eax]
008512C2: mov ecx, var_00000128
008512C8: mov ecx, [ecx]
008512CA: mov ecx, [ecx]
008512CC: push eax
008512CD: call [ecx+0000036Ch]
008512D3: mov var_78, eax
008512D6: mov var_80, 00000009h
008512DD: lea esi, var_80
008512E0: push 00000001h
008512E2: push var_000000B4
008512E8: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008512ED: mov ecx, eax
008512EF: mov edx, esi
008512F1: call 00410940h ; msvbvm60.dll.__vbaVarZero
008512F6: push 00000000h
008512F8: push 0000000Fh
008512FA: mov eax, [ebp+08h]
008512FD: mov eax, [eax]
008512FF: push [ebp+08h]
00851302: call [eax+00000324h]
00851308: push eax
00851309: lea eax, var_24
0085130C: push eax
0085130D: call 00410A84h ; Set (object)
00851312: push eax
00851313: lea eax, var_40
00851316: push eax
00851317: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0085131C: add esp, 00000010h
0085131F: push eax
00851320: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00851325: add eax, 00000001h
00851328: jo 00851601h
0085132E: mov var_000000CC, eax
00851334: mov var_000000D4, 00000003h
0085133E: lea esi, var_000000D4
00851344: push 00000002h
00851346: push var_000000B4
0085134C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00851351: mov ecx, eax
00851353: mov edx, esi
00851355: call 00410922h ; msvbvm60.dll.__vbaVarMove
0085135A: push 00000000h
0085135C: push 00000000h
0085135E: mov eax, [ebp+08h]
00851361: mov eax, [eax]
00851363: push [ebp+08h]
00851366: call [eax+00000328h]
0085136C: push eax
0085136D: lea eax, var_28
00851370: push eax
00851371: call 00410A84h ; Set (object)
00851376: push eax
00851377: lea eax, var_50
0085137A: push eax
0085137B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00851380: add esp, 00000010h
00851383: push eax
00851384: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00851389: mov var_00000088, eax
0085138F: mov var_00000090, 00000008h
00851399: lea esi, var_00000090
0085139F: push 00000003h
008513A1: push var_000000B4
008513A7: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008513AC: mov ecx, eax
008513AE: mov edx, esi
008513B0: call 00410940h ; msvbvm60.dll.__vbaVarZero
008513B5: push 00000000h
008513B7: push 00000000h
008513B9: mov eax, [ebp+08h]
008513BC: mov eax, [eax]
008513BE: push [ebp+08h]
008513C1: call [eax+00000334h]
008513C7: push eax
008513C8: lea eax, var_2C
008513CB: push eax
008513CC: call 00410A84h ; Set (object)
008513D1: push eax
008513D2: lea eax, var_60
008513D5: push eax
008513D6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008513DB: add esp, 00000010h
008513DE: push eax
008513DF: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008513E4: mov var_00000098, eax
008513EA: mov var_000000A0, 00000008h
008513F4: lea esi, var_000000A0
008513FA: push 00000004h
008513FC: push var_000000B4
00851402: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00851407: mov ecx, eax
00851409: mov edx, esi
0085140B: call 00410940h ; msvbvm60.dll.__vbaVarZero
00851410: push 00000000h
00851412: push 00000000h
00851414: mov eax, [ebp+08h]
00851417: mov eax, [eax]
00851419: push [ebp+08h]
0085141C: call [eax+00000330h]
00851422: push eax
00851423: lea eax, var_30
00851426: push eax
00851427: call 00410A84h ; Set (object)
0085142C: push eax
0085142D: lea eax, var_70
00851430: push eax
00851431: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00851436: add esp, 00000010h
00851439: push eax
0085143A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0085143F: mov var_000000A8, eax
00851445: mov var_000000B0, 00000008h
0085144F: lea esi, var_000000B0
00851455: push 00000005h
00851457: push var_000000B4
0085145D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00851462: mov ecx, eax
00851464: mov edx, esi
00851466: call 00410940h ; msvbvm60.dll.__vbaVarZero
0085146B: mov edx, 0043D750h ; x69
00851470: lea ecx, var_20
00851473: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00851478: lea eax, var_000000B4
0085147E: push eax
0085147F: lea eax, var_20
00851482: push eax
00851483: fld real8 ptr var_000000DC
00851489: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0085148E: push eax
0085148F: call 007A6910h
00851494: lea eax, var_000000B4
0085149A: push eax
0085149B: push 00000000h
0085149D: call 00410934h ; Erase
008514A2: lea eax, var_20
008514A5: push eax
008514A6: lea eax, var_1C
008514A9: push eax
008514AA: lea eax, var_18
008514AD: push eax
008514AE: push 00000003h
008514B0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008514B5: add esp, 00000010h
008514B8: lea eax, var_30
008514BB: push eax
008514BC: lea eax, var_2C
008514BF: push eax
008514C0: lea eax, var_28
008514C3: push eax
008514C4: lea eax, var_24
008514C7: push eax
008514C8: push 00000004h
008514CA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008514CF: add esp, 00000014h
008514D2: lea eax, var_70
008514D5: push eax
008514D6: lea eax, var_60
008514D9: push eax
008514DA: lea eax, var_50
008514DD: push eax
008514DE: lea eax, var_40
008514E1: push eax
008514E2: push 00000004h
008514E4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008514E9: add esp, 00000014h
008514EC: mov eax, [ebp+08h]
008514EF: mov eax, [eax]
008514F1: push [ebp+08h]
008514F4: call [eax+000002FCh]
008514FA: push eax
008514FB: lea eax, var_24
008514FE: push eax
008514FF: call 00410A84h ; Set (object)
00851504: mov var_000000E0, eax
0085150A: push 00442938h
0085150F: mov eax, var_000000E0
00851515: mov eax, [eax]
00851517: push var_000000E0
0085151D: call [eax+74h]
00851520: fclex 
00851522: mov var_000000E4, eax
00851528: cmp var_000000E4, 00000000h
0085152F: jnl 851551h
00851531: push 00000074h
00851533: push 00447A20h
00851538: push var_000000E0
0085153E: push var_000000E4
00851544: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00851549: mov var_0000012C, eax
0085154F: jmp 851558h
00851551: and var_0000012C, 00000000h
00851558: lea ecx, var_24
0085155B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00851560: mov var_04, 00000000h
00851567: wait 
00851568: push 008515E2h
0085156D: jmp 8515E1h
0085156F: lea eax, var_20
00851572: push eax
00851573: lea eax, var_1C
00851576: push eax
00851577: lea eax, var_18
0085157A: push eax
0085157B: push 00000003h
0085157D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00851582: add esp, 00000010h
00851585: lea eax, var_30
00851588: push eax
00851589: lea eax, var_2C
0085158C: push eax
0085158D: lea eax, var_28
00851590: push eax
00851591: lea eax, var_24
00851594: push eax
00851595: push 00000004h
00851597: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0085159C: add esp, 00000014h
0085159F: lea eax, var_000000B0
008515A5: push eax
008515A6: lea eax, var_000000A0
008515AC: push eax
008515AD: lea eax, var_00000090
008515B3: push eax
008515B4: lea eax, var_80
008515B7: push eax
008515B8: lea eax, var_70
008515BB: push eax
008515BC: lea eax, var_60
008515BF: push eax
008515C0: lea eax, var_50
008515C3: push eax
008515C4: lea eax, var_40
008515C7: push eax
008515C8: push 00000008h
008515CA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008515CF: add esp, 00000024h
008515D2: lea eax, var_000000B4
008515D8: push eax
008515D9: push 00000000h
008515DB: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008515E0: ret 
End Sub

Private sub lstStreams__84F0D2
0084F0D2: push ebp
0084F0D3: mov ebp, esp
0084F0D5: sub esp, 00000018h
0084F0D8: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084F0DD: mov eax, fs:[00h]
0084F0E3: push eax
0084F0E4: mov fs:[00000000h], esp
0084F0EB: mov eax, 000000BCh
0084F0F0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084F0F5: push ebx
0084F0F6: push esi
0084F0F7: push edi
0084F0F8: mov var_18, esp
0084F0FB: mov var_14, 0040C608h
0084F102: mov eax, [ebp+08h]
0084F105: and eax, 00000001h
0084F108: mov var_10, eax
0084F10B: mov eax, [ebp+08h]
0084F10E: and al, FEh
0084F110: mov [ebp+08h], eax
0084F113: mov var_0C, 00000000h
0084F11A: mov eax, [ebp+08h]
0084F11D: mov eax, [eax]
0084F11F: push [ebp+08h]
0084F122: call [eax+04h]
0084F125: mov var_04, 00000001h
0084F12C: mov var_04, 00000002h
0084F133: push FFFFFFFFh
0084F135: call 00410A60h ; On Error ...
0084F13A: mov var_04, 00000003h
0084F141: mov eax, [ebp+0Ch]
0084F144: cmp word ptr [eax], 0070h
0084F148: jnz 0084F3E1h
0084F14E: mov var_04, 00000004h
0084F155: push 00000000h
0084F157: push 00000001h
0084F159: push 00440E48h
0084F15E: push 00000000h
0084F160: push 00000018h
0084F162: mov eax, [ebp+08h]
0084F165: mov eax, [eax]
0084F167: push [ebp+08h]
0084F16A: call [eax+00000318h]
0084F170: push eax
0084F171: lea eax, var_48
0084F174: push eax
0084F175: call 00410A84h ; Set (object)
0084F17A: push eax
0084F17B: lea eax, var_60
0084F17E: push eax
0084F17F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084F184: add esp, 00000010h
0084F187: push eax
0084F188: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084F18D: push eax
0084F18E: lea eax, var_4C
0084F191: push eax
0084F192: call 00410A84h ; Set (object)
0084F197: push eax
0084F198: lea eax, var_70
0084F19B: push eax
0084F19C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084F1A1: add esp, 00000010h
0084F1A4: push eax
0084F1A5: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084F1AA: neg eax
0084F1AC: sbb eax, eax
0084F1AE: inc eax
0084F1AF: neg eax
0084F1B1: mov var_000000A4, ax
0084F1B8: lea eax, var_4C
0084F1BB: push eax
0084F1BC: lea eax, var_48
0084F1BF: push eax
0084F1C0: push 00000002h
0084F1C2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084F1C7: add esp, 0000000Ch
0084F1CA: lea eax, var_70
0084F1CD: push eax
0084F1CE: lea eax, var_60
0084F1D1: push eax
0084F1D2: push 00000002h
0084F1D4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084F1D9: add esp, 0000000Ch
0084F1DC: movsx eax, word ptr var_000000A4
0084F1E3: test eax, eax
0084F1E5: jz 84F1ECh
0084F1E7: jmp 0084F4F6h
0084F1EC: mov var_04, 00000007h
0084F1F3: mov var_78, 00000001h
0084F1FA: mov var_80, 00000002h
0084F201: push 00000000h
0084F203: push 00000001h
0084F205: push 00440E48h
0084F20A: push 00000000h
0084F20C: push 00000018h
0084F20E: mov eax, [ebp+08h]
0084F211: mov eax, [eax]
0084F213: push [ebp+08h]
0084F216: call [eax+00000318h]
0084F21C: push eax
0084F21D: lea eax, var_48
0084F220: push eax
0084F221: call 00410A84h ; Set (object)
0084F226: push eax
0084F227: lea eax, var_60
0084F22A: push eax
0084F22B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084F230: add esp, 00000010h
0084F233: push eax
0084F234: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084F239: push eax
0084F23A: lea eax, var_4C
0084F23D: push eax
0084F23E: call 00410A84h ; Set (object)
0084F243: push eax
0084F244: lea eax, var_70
0084F247: push eax
0084F248: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084F24D: add esp, 00000010h
0084F250: push eax
0084F251: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084F256: mov var_00000088, eax
0084F25C: mov var_00000090, 00000003h
0084F266: mov var_00000098, 00000001h
0084F270: mov var_000000A0, 00000002h
0084F27A: lea eax, var_80
0084F27D: push eax
0084F27E: lea eax, var_00000090
0084F284: push eax
0084F285: lea eax, var_000000A0
0084F28B: push eax
0084F28C: lea eax, var_000000C4
0084F292: push eax
0084F293: lea eax, var_000000B4
0084F299: push eax
0084F29A: lea eax, var_30
0084F29D: push eax
0084F29E: call 00410A3Ch ; For
0084F2A3: mov var_000000DC, eax
0084F2A9: lea eax, var_4C
0084F2AC: push eax
0084F2AD: lea eax, var_48
0084F2B0: push eax
0084F2B1: push 00000002h
0084F2B3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084F2B8: add esp, 0000000Ch
0084F2BB: lea eax, var_70
0084F2BE: push eax
0084F2BF: lea eax, var_60
0084F2C2: push eax
0084F2C3: push 00000002h
0084F2C5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084F2CA: add esp, 0000000Ch
0084F2CD: jmp 0084F3D4h
0084F2D2: mov var_04, 00000008h
0084F2D9: or var_00000088, FFFFFFFFh
0084F2E0: mov var_00000090, 0000000Bh
0084F2EA: lea eax, var_30
0084F2ED: mov var_78, eax
0084F2F0: mov var_80, 0000400Ch
0084F2F7: push 00000010h
0084F2F9: pop eax
0084F2FA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084F2FF: lea esi, var_00000090
0084F305: mov edi, esp
0084F307: movsd 
0084F308: movsd 
0084F309: movsd 
0084F30A: movsd 
0084F30B: push 00000004h
0084F30D: push 00440E58h
0084F312: push 00000010h
0084F314: pop eax
0084F315: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084F31A: lea esi, var_80
0084F31D: mov edi, esp
0084F31F: movsd 
0084F320: movsd 
0084F321: movsd 
0084F322: movsd 
0084F323: push 00000001h
0084F325: push 00000000h
0084F327: push 00440E48h
0084F32C: push 00000000h
0084F32E: push 00000018h
0084F330: mov eax, [ebp+08h]
0084F333: mov eax, [eax]
0084F335: push [ebp+08h]
0084F338: call [eax+00000318h]
0084F33E: push eax
0084F33F: lea eax, var_48
0084F342: push eax
0084F343: call 00410A84h ; Set (object)
0084F348: push eax
0084F349: lea eax, var_60
0084F34C: push eax
0084F34D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084F352: add esp, 00000010h
0084F355: push eax
0084F356: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084F35B: push eax
0084F35C: lea eax, var_4C
0084F35F: push eax
0084F360: call 00410A84h ; Set (object)
0084F365: push eax
0084F366: lea eax, var_70
0084F369: push eax
0084F36A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084F36F: add esp, 00000020h
0084F372: push eax
0084F373: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084F378: push eax
0084F379: lea eax, var_50
0084F37C: push eax
0084F37D: call 00410A84h ; Set (object)
0084F382: push eax
0084F383: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0084F388: lea eax, var_50
0084F38B: push eax
0084F38C: lea eax, var_4C
0084F38F: push eax
0084F390: lea eax, var_48
0084F393: push eax
0084F394: push 00000003h
0084F396: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084F39B: add esp, 00000010h
0084F39E: lea eax, var_70
0084F3A1: push eax
0084F3A2: lea eax, var_60
0084F3A5: push eax
0084F3A6: push 00000002h
0084F3A8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084F3AD: add esp, 0000000Ch
0084F3B0: mov var_04, 00000009h
0084F3B7: lea eax, var_000000C4
0084F3BD: push eax
0084F3BE: lea eax, var_000000B4
0084F3C4: push eax
0084F3C5: lea eax, var_30
0084F3C8: push eax
0084F3C9: call 00410A36h ; Next
0084F3CE: mov var_000000DC, eax
0084F3D4: cmp var_000000DC, 00000000h
0084F3DB: jnz 0084F2D2h
0084F3E1: mov var_04, 0000000Bh
0084F3E8: mov eax, [ebp+0Ch]
0084F3EB: cmp word ptr [eax], 000Dh
0084F3EF: jnz 0084F4F6h
0084F3F5: mov var_04, 0000000Ch
0084F3FC: call 007D274Eh
0084F401: mov edx, eax
0084F403: lea ecx, var_34
0084F406: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084F40B: push eax
0084F40C: push 00441B28h
0084F411: call 00410A18h ; &
0084F416: mov edx, eax
0084F418: lea ecx, var_38
0084F41B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084F420: push eax
0084F421: push 00000000h
0084F423: push 00000008h
0084F425: push 00440E58h
0084F42A: push 00000000h
0084F42C: push 00000017h
0084F42E: mov eax, [ebp+08h]
0084F431: mov eax, [eax]
0084F433: push [ebp+08h]
0084F436: call [eax+00000318h]
0084F43C: push eax
0084F43D: lea eax, var_48
0084F440: push eax
0084F441: call 00410A84h ; Set (object)
0084F446: push eax
0084F447: lea eax, var_60
0084F44A: push eax
0084F44B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084F450: add esp, 00000010h
0084F453: push eax
0084F454: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084F459: push eax
0084F45A: lea eax, var_4C
0084F45D: push eax
0084F45E: call 00410A84h ; Set (object)
0084F463: push eax
0084F464: lea eax, var_70
0084F467: push eax
0084F468: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084F46D: add esp, 00000010h
0084F470: push eax
0084F471: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084F476: push eax
0084F477: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0084F47C: mov edx, eax
0084F47E: lea ecx, var_3C
0084F481: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084F486: push eax
0084F487: call 00410A18h ; &
0084F48C: mov edx, eax
0084F48E: lea ecx, var_40
0084F491: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084F496: push eax
0084F497: push 0044D3C8h ; ac.wav
0084F49C: call 00410A18h ; &
0084F4A1: mov edx, eax
0084F4A3: lea ecx, var_44
0084F4A6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084F4AB: lea eax, var_44
0084F4AE: push eax
0084F4AF: call 007C4A46h
0084F4B4: lea eax, var_44
0084F4B7: push eax
0084F4B8: lea eax, var_40
0084F4BB: push eax
0084F4BC: lea eax, var_3C
0084F4BF: push eax
0084F4C0: lea eax, var_38
0084F4C3: push eax
0084F4C4: lea eax, var_34
0084F4C7: push eax
0084F4C8: push 00000005h
0084F4CA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084F4CF: add esp, 00000018h
0084F4D2: lea eax, var_4C
0084F4D5: push eax
0084F4D6: lea eax, var_48
0084F4D9: push eax
0084F4DA: push 00000002h
0084F4DC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084F4E1: add esp, 0000000Ch
0084F4E4: lea eax, var_70
0084F4E7: push eax
0084F4E8: lea eax, var_60
0084F4EB: push eax
0084F4EC: push 00000002h
0084F4EE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084F4F3: add esp, 0000000Ch
0084F4F6: mov var_10, 00000000h
0084F4FD: push 0084F56Ch
0084F502: jmp 84F54Bh
0084F504: lea eax, var_44
0084F507: push eax
0084F508: lea eax, var_40
0084F50B: push eax
0084F50C: lea eax, var_3C
0084F50F: push eax
0084F510: lea eax, var_38
0084F513: push eax
0084F514: lea eax, var_34
0084F517: push eax
0084F518: push 00000005h
0084F51A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084F51F: add esp, 00000018h
0084F522: lea eax, var_50
0084F525: push eax
0084F526: lea eax, var_4C
0084F529: push eax
0084F52A: lea eax, var_48
0084F52D: push eax
0084F52E: push 00000003h
0084F530: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084F535: add esp, 00000010h
0084F538: lea eax, var_70
0084F53B: push eax
0084F53C: lea eax, var_60
0084F53F: push eax
0084F540: push 00000002h
0084F542: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084F547: add esp, 0000000Ch
0084F54A: ret 
End Sub

Private sub lstStreams__84F58B
0084F58B: push ebp
0084F58C: mov ebp, esp
0084F58E: sub esp, 0000000Ch
0084F591: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084F596: mov eax, fs:[00h]
0084F59C: push eax
0084F59D: mov fs:[00000000h], esp
0084F5A4: push 00000054h
0084F5A6: pop eax
0084F5A7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084F5AC: push ebx
0084F5AD: push esi
0084F5AE: push edi
0084F5AF: mov var_0C, esp
0084F5B2: mov var_08, 0040C660h
0084F5B9: mov eax, [ebp+08h]
0084F5BC: and eax, 00000001h
0084F5BF: mov var_04, eax
0084F5C2: mov eax, [ebp+08h]
0084F5C5: and al, FEh
0084F5C7: mov [ebp+08h], eax
0084F5CA: mov eax, [ebp+08h]
0084F5CD: mov eax, [eax]
0084F5CF: push [ebp+08h]
0084F5D2: call [eax+04h]
0084F5D5: mov eax, [ebp+0Ch]
0084F5D8: cmp word ptr [eax], 0002h
0084F5DC: jnz 0084F6B6h
0084F5E2: mov var_50, 80020004h
0084F5E9: mov var_58, 0000000Ah
0084F5F0: mov var_40, 80020004h
0084F5F7: mov var_48, 0000000Ah
0084F5FE: mov var_30, 80020004h
0084F605: mov var_38, 0000000Ah
0084F60C: mov var_20, 80020004h
0084F613: mov var_28, 0000000Ah
0084F61A: push 00000010h
0084F61C: pop eax
0084F61D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084F622: lea esi, var_58
0084F625: mov edi, esp
0084F627: movsd 
0084F628: movsd 
0084F629: movsd 
0084F62A: movsd 
0084F62B: push 00000010h
0084F62D: pop eax
0084F62E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084F633: lea esi, var_48
0084F636: mov edi, esp
0084F638: movsd 
0084F639: movsd 
0084F63A: movsd 
0084F63B: movsd 
0084F63C: push 00000010h
0084F63E: pop eax
0084F63F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084F644: lea esi, var_38
0084F647: mov edi, esp
0084F649: movsd 
0084F64A: movsd 
0084F64B: movsd 
0084F64C: movsd 
0084F64D: push 00000010h
0084F64F: pop eax
0084F650: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084F655: lea esi, var_28
0084F658: mov edi, esp
0084F65A: movsd 
0084F65B: movsd 
0084F65C: movsd 
0084F65D: movsd 
0084F65E: mov eax, [ebp+08h]
0084F661: mov eax, [eax]
0084F663: push [ebp+08h]
0084F666: call [eax+0000030Ch]
0084F66C: push eax
0084F66D: lea eax, var_18
0084F670: push eax
0084F671: call 00410A84h ; Set (object)
0084F676: push eax
0084F677: mov eax, [ebp+08h]
0084F67A: mov eax, [eax]
0084F67C: push [ebp+08h]
0084F67F: call [eax+000002BCh]
0084F685: fclex 
0084F687: mov var_5C, eax
0084F68A: cmp var_5C, 00000000h
0084F68E: jnl 84F6AAh
0084F690: push 000002BCh
0084F695: push 00443D28h
0084F69A: push [ebp+08h]
0084F69D: push var_5C
0084F6A0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084F6A5: mov var_68, eax
0084F6A8: jmp 84F6AEh
0084F6AA: and var_68, 00000000h
0084F6AE: lea ecx, var_18
0084F6B1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084F6B6: mov var_04, 00000000h
0084F6BD: push 0084F6CEh
0084F6C2: jmp 84F6CDh
0084F6C4: lea ecx, var_18
0084F6C7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084F6CC: ret 
End Sub

Private sub lstStreams__84EEFA
0084EEFA: push ebp
0084EEFB: mov ebp, esp
0084EEFD: sub esp, 00000018h
0084EF00: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084EF05: mov eax, fs:[00h]
0084EF0B: push eax
0084EF0C: mov fs:[00000000h], esp
0084EF13: push 00000050h
0084EF15: pop eax
0084EF16: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084EF1B: push ebx
0084EF1C: push esi
0084EF1D: push edi
0084EF1E: mov var_18, esp
0084EF21: mov var_14, 0040C5D8h
0084EF28: mov eax, [ebp+08h]
0084EF2B: and eax, 00000001h
0084EF2E: mov var_10, eax
0084EF31: mov eax, [ebp+08h]
0084EF34: and al, FEh
0084EF36: mov [ebp+08h], eax
0084EF39: mov var_0C, 00000000h
0084EF40: mov eax, [ebp+08h]
0084EF43: mov eax, [eax]
0084EF45: push [ebp+08h]
0084EF48: call [eax+04h]
0084EF4B: mov var_04, 00000001h
0084EF52: mov var_04, 00000002h
0084EF59: push FFFFFFFFh
0084EF5B: call 00410A60h ; On Error ...
0084EF60: mov var_04, 00000003h
0084EF67: call 007D274Eh
0084EF6C: mov edx, eax
0084EF6E: lea ecx, var_24
0084EF71: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084EF76: push eax
0084EF77: push 00441B28h
0084EF7C: call 00410A18h ; &
0084EF81: mov edx, eax
0084EF83: lea ecx, var_28
0084EF86: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084EF8B: push eax
0084EF8C: push 00000000h
0084EF8E: push 00000008h
0084EF90: push 00440E58h
0084EF95: push 00000000h
0084EF97: push 00000017h
0084EF99: mov eax, [ebp+08h]
0084EF9C: mov eax, [eax]
0084EF9E: push [ebp+08h]
0084EFA1: call [eax+00000318h]
0084EFA7: push eax
0084EFA8: lea eax, var_38
0084EFAB: push eax
0084EFAC: call 00410A84h ; Set (object)
0084EFB1: push eax
0084EFB2: lea eax, var_4C
0084EFB5: push eax
0084EFB6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084EFBB: add esp, 00000010h
0084EFBE: push eax
0084EFBF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084EFC4: push eax
0084EFC5: lea eax, var_3C
0084EFC8: push eax
0084EFC9: call 00410A84h ; Set (object)
0084EFCE: push eax
0084EFCF: lea eax, var_5C
0084EFD2: push eax
0084EFD3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084EFD8: add esp, 00000010h
0084EFDB: push eax
0084EFDC: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084EFE1: push eax
0084EFE2: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0084EFE7: mov edx, eax
0084EFE9: lea ecx, var_2C
0084EFEC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084EFF1: push eax
0084EFF2: call 00410A18h ; &
0084EFF7: mov edx, eax
0084EFF9: lea ecx, var_30
0084EFFC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084F001: push eax
0084F002: push 0044D3C8h ; ac.wav
0084F007: call 00410A18h ; &
0084F00C: mov edx, eax
0084F00E: lea ecx, var_34
0084F011: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084F016: lea eax, var_34
0084F019: push eax
0084F01A: call 007C4A46h
0084F01F: lea eax, var_34
0084F022: push eax
0084F023: lea eax, var_30
0084F026: push eax
0084F027: lea eax, var_2C
0084F02A: push eax
0084F02B: lea eax, var_28
0084F02E: push eax
0084F02F: lea eax, var_24
0084F032: push eax
0084F033: push 00000005h
0084F035: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084F03A: add esp, 00000018h
0084F03D: lea eax, var_3C
0084F040: push eax
0084F041: lea eax, var_38
0084F044: push eax
0084F045: push 00000002h
0084F047: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084F04C: add esp, 0000000Ch
0084F04F: lea eax, var_5C
0084F052: push eax
0084F053: lea eax, var_4C
0084F056: push eax
0084F057: push 00000002h
0084F059: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084F05E: add esp, 0000000Ch
0084F061: mov var_10, 00000000h
0084F068: push 0084F0B3h
0084F06D: jmp 84F0B2h
0084F06F: lea eax, var_34
0084F072: push eax
0084F073: lea eax, var_30
0084F076: push eax
0084F077: lea eax, var_2C
0084F07A: push eax
0084F07B: lea eax, var_28
0084F07E: push eax
0084F07F: lea eax, var_24
0084F082: push eax
0084F083: push 00000005h
0084F085: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084F08A: add esp, 00000018h
0084F08D: lea eax, var_3C
0084F090: push eax
0084F091: lea eax, var_38
0084F094: push eax
0084F095: push 00000002h
0084F097: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084F09C: add esp, 0000000Ch
0084F09F: lea eax, var_5C
0084F0A2: push eax
0084F0A3: lea eax, var_4C
0084F0A6: push eax
0084F0A7: push 00000002h
0084F0A9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084F0AE: add esp, 0000000Ch
0084F0B1: ret 
End Sub

Private sub lstStreams__84EE83
0084EE83: push ebp
0084EE84: mov ebp, esp
0084EE86: sub esp, 0000000Ch
0084EE89: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084EE8E: mov eax, fs:[00h]
0084EE94: push eax
0084EE95: mov fs:[00000000h], esp
0084EE9C: push 00000008h
0084EE9E: pop eax
0084EE9F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084EEA4: push ebx
0084EEA5: push esi
0084EEA6: push edi
0084EEA7: mov var_0C, esp
0084EEAA: mov var_08, 0040C5D0h
0084EEB1: mov eax, [ebp+08h]
0084EEB4: and eax, 00000001h
0084EEB7: mov var_04, eax
0084EEBA: mov eax, [ebp+08h]
0084EEBD: and al, FEh
0084EEBF: mov [ebp+08h], eax
0084EEC2: mov eax, [ebp+08h]
0084EEC5: mov eax, [eax]
0084EEC7: push [ebp+08h]
0084EECA: call [eax+04h]
0084EECD: mov eax, [ebp+0Ch]
0084EED0: or word ptr [eax], FFFFh
0084EED4: mov var_04, 00000000h
0084EEDB: mov eax, [ebp+08h]
0084EEDE: mov eax, [eax]
0084EEE0: push [ebp+08h]
0084EEE3: call [eax+08h]
0084EEE6: mov eax, var_04
0084EEE9: mov ecx, var_14
0084EEEC: mov fs:[00000000h], ecx
0084EEF3: pop edi
0084EEF4: pop esi
0084EEF5: pop ebx
0084EEF6: leave 
0084EEF7: retn 0008h
End Sub

Private sub chkAuto__84D223
0084D223: push ebp
0084D224: mov ebp, esp
0084D226: sub esp, 0000000Ch
0084D229: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084D22E: mov eax, fs:[00h]
0084D234: push eax
0084D235: mov fs:[00000000h], esp
0084D23C: push 0000002Ch
0084D23E: pop eax
0084D23F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084D244: push ebx
0084D245: push esi
0084D246: push edi
0084D247: mov var_0C, esp
0084D24A: mov var_08, 0040C508h
0084D251: mov eax, [ebp+08h]
0084D254: and eax, 00000001h
0084D257: mov var_04, eax
0084D25A: mov eax, [ebp+08h]
0084D25D: and al, FEh
0084D25F: mov [ebp+08h], eax
0084D262: mov eax, [ebp+08h]
0084D265: mov eax, [eax]
0084D267: push [ebp+08h]
0084D26A: call [eax+04h]
0084D26D: push 00000000h
0084D26F: push 00000000h
0084D271: mov eax, [ebp+08h]
0084D274: mov eax, [eax]
0084D276: push [ebp+08h]
0084D279: call [eax+00000338h]
0084D27F: push eax
0084D280: lea eax, var_18
0084D283: push eax
0084D284: call 00410A84h ; Set (object)
0084D289: push eax
0084D28A: lea eax, var_28
0084D28D: push eax
0084D28E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084D293: add esp, 00000010h
0084D296: push eax
0084D297: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084D29C: dec eax
0084D29D: neg eax
0084D29F: sbb eax, eax
0084D2A1: inc eax
0084D2A2: neg eax
0084D2A4: mov var_2C, ax
0084D2A8: lea ecx, var_18
0084D2AB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084D2B0: lea ecx, var_28
0084D2B3: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084D2B8: movsx eax, word ptr var_2C
0084D2BC: test eax, eax
0084D2BE: jz 84D316h
0084D2C0: mov eax, [ebp+08h]
0084D2C3: mov eax, [eax]
0084D2C5: push [ebp+08h]
0084D2C8: call [eax+000002FCh]
0084D2CE: push eax
0084D2CF: lea eax, var_18
0084D2D2: push eax
0084D2D3: call 00410A84h ; Set (object)
0084D2D8: mov var_2C, eax
0084D2DB: push FFFFFFFFh
0084D2DD: mov eax, var_2C
0084D2E0: mov eax, [eax]
0084D2E2: push var_2C
0084D2E5: call [eax+5Ch]
0084D2E8: fclex 
0084D2EA: mov var_30, eax
0084D2ED: cmp var_30, 00000000h
0084D2F1: jnl 84D30Ah
0084D2F3: push 0000005Ch
0084D2F5: push 00447A20h
0084D2FA: push var_2C
0084D2FD: push var_30
0084D300: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084D305: mov var_3C, eax
0084D308: jmp 84D30Eh
0084D30A: and var_3C, 00000000h
0084D30E: lea ecx, var_18
0084D311: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084D316: push 00000000h
0084D318: push 00000000h
0084D31A: mov eax, [ebp+08h]
0084D31D: mov eax, [eax]
0084D31F: push [ebp+08h]
0084D322: call [eax+00000338h]
0084D328: push eax
0084D329: lea eax, var_18
0084D32C: push eax
0084D32D: call 00410A84h ; Set (object)
0084D332: push eax
0084D333: lea eax, var_28
0084D336: push eax
0084D337: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084D33C: add esp, 00000010h
0084D33F: push eax
0084D340: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084D345: neg eax
0084D347: sbb eax, eax
0084D349: inc eax
0084D34A: neg eax
0084D34C: mov var_2C, ax
0084D350: lea ecx, var_18
0084D353: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084D358: lea ecx, var_28
0084D35B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084D360: movsx eax, word ptr var_2C
0084D364: test eax, eax
0084D366: jz 84D3BEh
0084D368: mov eax, [ebp+08h]
0084D36B: mov eax, [eax]
0084D36D: push [ebp+08h]
0084D370: call [eax+000002FCh]
0084D376: push eax
0084D377: lea eax, var_18
0084D37A: push eax
0084D37B: call 00410A84h ; Set (object)
0084D380: mov var_2C, eax
0084D383: push 00000000h
0084D385: mov eax, var_2C
0084D388: mov eax, [eax]
0084D38A: push var_2C
0084D38D: call [eax+5Ch]
0084D390: fclex 
0084D392: mov var_30, eax
0084D395: cmp var_30, 00000000h
0084D399: jnl 84D3B2h
0084D39B: push 0000005Ch
0084D39D: push 00447A20h
0084D3A2: push var_2C
0084D3A5: push var_30
0084D3A8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084D3AD: mov var_40, eax
0084D3B0: jmp 84D3B6h
0084D3B2: and var_40, 00000000h
0084D3B6: lea ecx, var_18
0084D3B9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084D3BE: mov var_04, 00000000h
0084D3C5: push 0084D3DEh
0084D3CA: jmp 84D3DDh
0084D3CC: lea ecx, var_18
0084D3CF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084D3D4: lea ecx, var_28
0084D3D7: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084D3DC: ret 
End Sub

Private sub chkSave__84D3FD
0084D3FD: push ebp
0084D3FE: mov ebp, esp
0084D400: sub esp, 0000000Ch
0084D403: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084D408: mov eax, fs:[00h]
0084D40E: push eax
0084D40F: mov fs:[00000000h], esp
0084D416: push 0000002Ch
0084D418: pop eax
0084D419: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084D41E: push ebx
0084D41F: push esi
0084D420: push edi
0084D421: mov var_0C, esp
0084D424: mov var_08, 0040C518h
0084D42B: mov eax, [ebp+08h]
0084D42E: and eax, 00000001h
0084D431: mov var_04, eax
0084D434: mov eax, [ebp+08h]
0084D437: and al, FEh
0084D439: mov [ebp+08h], eax
0084D43C: mov eax, [ebp+08h]
0084D43F: mov eax, [eax]
0084D441: push [ebp+08h]
0084D444: call [eax+04h]
0084D447: push 00000000h
0084D449: push 00000000h
0084D44B: mov eax, [ebp+08h]
0084D44E: mov eax, [eax]
0084D450: push [ebp+08h]
0084D453: call [eax+0000032Ch]
0084D459: push eax
0084D45A: lea eax, var_18
0084D45D: push eax
0084D45E: call 00410A84h ; Set (object)
0084D463: push eax
0084D464: lea eax, var_28
0084D467: push eax
0084D468: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084D46D: add esp, 00000010h
0084D470: push eax
0084D471: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084D476: dec eax
0084D477: neg eax
0084D479: sbb eax, eax
0084D47B: inc eax
0084D47C: neg eax
0084D47E: mov var_2C, ax
0084D482: lea ecx, var_18
0084D485: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084D48A: lea ecx, var_28
0084D48D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084D492: movsx eax, word ptr var_2C
0084D496: test eax, eax
0084D498: jz 84D4F6h
0084D49A: mov eax, [ebp+08h]
0084D49D: mov eax, [eax]
0084D49F: push [ebp+08h]
0084D4A2: call [eax+00000304h]
0084D4A8: push eax
0084D4A9: lea eax, var_18
0084D4AC: push eax
0084D4AD: call 00410A84h ; Set (object)
0084D4B2: mov var_2C, eax
0084D4B5: push FFFFFFFFh
0084D4B7: mov eax, var_2C
0084D4BA: mov eax, [eax]
0084D4BC: push var_2C
0084D4BF: call [eax+0000008Ch]
0084D4C5: fclex 
0084D4C7: mov var_30, eax
0084D4CA: cmp var_30, 00000000h
0084D4CE: jnl 84D4EAh
0084D4D0: push 0000008Ch
0084D4D5: push 00440E08h
0084D4DA: push var_2C
0084D4DD: push var_30
0084D4E0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084D4E5: mov var_3C, eax
0084D4E8: jmp 84D4EEh
0084D4EA: and var_3C, 00000000h
0084D4EE: lea ecx, var_18
0084D4F1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084D4F6: push 00000000h
0084D4F8: push 00000000h
0084D4FA: mov eax, [ebp+08h]
0084D4FD: mov eax, [eax]
0084D4FF: push [ebp+08h]
0084D502: call [eax+0000032Ch]
0084D508: push eax
0084D509: lea eax, var_18
0084D50C: push eax
0084D50D: call 00410A84h ; Set (object)
0084D512: push eax
0084D513: lea eax, var_28
0084D516: push eax
0084D517: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084D51C: add esp, 00000010h
0084D51F: push eax
0084D520: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084D525: neg eax
0084D527: sbb eax, eax
0084D529: inc eax
0084D52A: neg eax
0084D52C: mov var_2C, ax
0084D530: lea ecx, var_18
0084D533: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084D538: lea ecx, var_28
0084D53B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084D540: movsx eax, word ptr var_2C
0084D544: test eax, eax
0084D546: jz 84D5A4h
0084D548: mov eax, [ebp+08h]
0084D54B: mov eax, [eax]
0084D54D: push [ebp+08h]
0084D550: call [eax+00000304h]
0084D556: push eax
0084D557: lea eax, var_18
0084D55A: push eax
0084D55B: call 00410A84h ; Set (object)
0084D560: mov var_2C, eax
0084D563: push 00000000h
0084D565: mov eax, var_2C
0084D568: mov eax, [eax]
0084D56A: push var_2C
0084D56D: call [eax+0000008Ch]
0084D573: fclex 
0084D575: mov var_30, eax
0084D578: cmp var_30, 00000000h
0084D57C: jnl 84D598h
0084D57E: push 0000008Ch
0084D583: push 00440E08h
0084D588: push var_2C
0084D58B: push var_30
0084D58E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084D593: mov var_40, eax
0084D596: jmp 84D59Ch
0084D598: and var_40, 00000000h
0084D59C: lea ecx, var_18
0084D59F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084D5A4: mov var_04, 00000000h
0084D5AB: push 0084D5C4h
0084D5B0: jmp 84D5C3h
0084D5B2: lea ecx, var_18
0084D5B5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084D5BA: lea ecx, var_28
0084D5BD: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084D5C2: ret 
End Sub

Private sub cmdStart__84D5E3
0084D5E3: push ebp
0084D5E4: mov ebp, esp
0084D5E6: sub esp, 00000018h
0084D5E9: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084D5EE: mov eax, fs:[00h]
0084D5F4: push eax
0084D5F5: mov fs:[00000000h], esp
0084D5FC: mov eax, 000000F8h
0084D601: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084D606: push ebx
0084D607: push esi
0084D608: push edi
0084D609: mov var_18, esp
0084D60C: mov var_14, 0040C528h
0084D613: mov eax, [ebp+08h]
0084D616: and eax, 00000001h
0084D619: mov var_10, eax
0084D61C: mov eax, [ebp+08h]
0084D61F: and al, FEh
0084D621: mov [ebp+08h], eax
0084D624: mov var_0C, 00000000h
0084D62B: mov eax, [ebp+08h]
0084D62E: mov eax, [eax]
0084D630: push [ebp+08h]
0084D633: call [eax+04h]
0084D636: mov var_04, 00000001h
0084D63D: mov var_04, 00000002h
0084D644: push FFFFFFFFh
0084D646: call 00410A60h ; On Error ...
0084D64B: mov var_04, 00000003h
0084D652: push 00000000h
0084D654: push FFFFFDFAh
0084D659: mov eax, [ebp+08h]
0084D65C: mov eax, [eax]
0084D65E: push [ebp+08h]
0084D661: call [eax+00000320h]
0084D667: push eax
0084D668: lea eax, var_30
0084D66B: push eax
0084D66C: call 00410A84h ; Set (object)
0084D671: push eax
0084D672: lea eax, var_4C
0084D675: push eax
0084D676: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084D67B: add esp, 00000010h
0084D67E: push eax
0084D67F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0084D684: mov edx, eax
0084D686: lea ecx, var_24
0084D689: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084D68E: push eax
0084D68F: push 0044CE10h ; Start
0084D694: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0084D699: neg eax
0084D69B: sbb eax, eax
0084D69D: inc eax
0084D69E: neg eax
0084D6A0: mov var_000000EC, ax
0084D6A7: lea ecx, var_24
0084D6AA: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0084D6AF: lea ecx, var_30
0084D6B2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084D6B7: lea ecx, var_4C
0084D6BA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084D6BF: movsx eax, word ptr var_000000EC
0084D6C6: test eax, eax
0084D6C8: jz 0084DBE1h
0084D6CE: mov var_04, 00000004h
0084D6D5: lea eax, var_24
0084D6D8: push eax
0084D6D9: mov eax, [ebp+08h]
0084D6DC: mov eax, [eax]
0084D6DE: push [ebp+08h]
0084D6E1: call [eax+000001C0h]
0084D6E7: fclex 
0084D6E9: mov var_000000EC, eax
0084D6EF: cmp var_000000EC, 00000000h
0084D6F6: jnl 84D718h
0084D6F8: push 000001C0h
0084D6FD: push 00443D28h
0084D702: push [ebp+08h]
0084D705: push var_000000EC
0084D70B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084D710: mov var_00000108, eax
0084D716: jmp 84D71Fh
0084D718: and var_00000108, 00000000h
0084D71F: push var_24
0084D722: call 004109DCh ; Val(arg_1)
0084D727: fstp real8 ptr var_000000E8
0084D72D: push 00000000h
0084D72F: push 00000005h
0084D731: push 00000001h
0084D733: push 00000000h
0084D735: lea eax, var_000000C0
0084D73B: push eax
0084D73C: push 00000010h
0084D73E: push 00000880h
0084D743: call 00410946h ; ReDim
0084D748: add esp, 0000001Ch
0084D74B: lea eax, var_28
0084D74E: push eax
0084D74F: mov eax, [ebp+08h]
0084D752: mov eax, [eax]
0084D754: push [ebp+08h]
0084D757: call [eax+000001C0h]
0084D75D: fclex 
0084D75F: mov var_000000F0, eax
0084D765: cmp var_000000F0, 00000000h
0084D76C: jnl 84D78Eh
0084D76E: push 000001C0h
0084D773: push 00443D28h
0084D778: push [ebp+08h]
0084D77B: push var_000000F0
0084D781: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084D786: mov var_0000010C, eax
0084D78C: jmp 84D795h
0084D78E: and var_0000010C, 00000000h
0084D795: push var_28
0084D798: call 004109DCh ; Val(arg_1)
0084D79D: fstp real8 ptr var_000000C8
0084D7A3: mov var_000000D0, 00000005h
0084D7AD: lea esi, var_000000D0
0084D7B3: push 00000000h
0084D7B5: push var_000000C0
0084D7BB: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0084D7C0: mov ecx, eax
0084D7C2: mov edx, esi
0084D7C4: call 00410922h ; msvbvm60.dll.__vbaVarMove
0084D7C9: cmp [008F2010h], 00000000h
0084D7D0: jnz 84D7EDh
0084D7D2: push 008F2010h
0084D7D7: push 00433984h
0084D7DC: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0084D7E1: mov var_00000110, 008F2010h
0084D7EB: jmp 84D7F7h
0084D7ED: mov var_00000110, 008F2010h
0084D7F7: mov eax, var_00000110
0084D7FD: mov eax, [eax]
0084D7FF: mov ecx, var_00000110
0084D805: mov ecx, [ecx]
0084D807: mov ecx, [ecx]
0084D809: push eax
0084D80A: call [ecx+0000036Ch]
0084D810: mov var_00000084, eax
0084D816: mov var_0000008C, 00000009h
0084D820: lea esi, var_0000008C
0084D826: push 00000001h
0084D828: push var_000000C0
0084D82E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0084D833: mov ecx, eax
0084D835: mov edx, esi
0084D837: call 00410940h ; msvbvm60.dll.__vbaVarZero
0084D83C: push 00000000h
0084D83E: push 0000000Fh
0084D840: mov eax, [ebp+08h]
0084D843: mov eax, [eax]
0084D845: push [ebp+08h]
0084D848: call [eax+00000324h]
0084D84E: push eax
0084D84F: lea eax, var_30
0084D852: push eax
0084D853: call 00410A84h ; Set (object)
0084D858: push eax
0084D859: lea eax, var_4C
0084D85C: push eax
0084D85D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084D862: add esp, 00000010h
0084D865: push eax
0084D866: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084D86B: add eax, 00000001h
0084D86E: jo 0084DCDFh
0084D874: mov var_000000D8, eax
0084D87A: mov var_000000E0, 00000003h
0084D884: lea esi, var_000000E0
0084D88A: push 00000002h
0084D88C: push var_000000C0
0084D892: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0084D897: mov ecx, eax
0084D899: mov edx, esi
0084D89B: call 00410922h ; msvbvm60.dll.__vbaVarMove
0084D8A0: push 00000000h
0084D8A2: push 00000000h
0084D8A4: mov eax, [ebp+08h]
0084D8A7: mov eax, [eax]
0084D8A9: push [ebp+08h]
0084D8AC: call [eax+00000328h]
0084D8B2: push eax
0084D8B3: lea eax, var_34
0084D8B6: push eax
0084D8B7: call 00410A84h ; Set (object)
0084D8BC: push eax
0084D8BD: lea eax, var_5C
0084D8C0: push eax
0084D8C1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084D8C6: add esp, 00000010h
0084D8C9: push eax
0084D8CA: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0084D8CF: mov var_00000094, eax
0084D8D5: mov var_0000009C, 00000008h
0084D8DF: lea esi, var_0000009C
0084D8E5: push 00000003h
0084D8E7: push var_000000C0
0084D8ED: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0084D8F2: mov ecx, eax
0084D8F4: mov edx, esi
0084D8F6: call 00410940h ; msvbvm60.dll.__vbaVarZero
0084D8FB: push 00000000h
0084D8FD: push 00000000h
0084D8FF: mov eax, [ebp+08h]
0084D902: mov eax, [eax]
0084D904: push [ebp+08h]
0084D907: call [eax+00000334h]
0084D90D: push eax
0084D90E: lea eax, var_38
0084D911: push eax
0084D912: call 00410A84h ; Set (object)
0084D917: push eax
0084D918: lea eax, var_6C
0084D91B: push eax
0084D91C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084D921: add esp, 00000010h
0084D924: push eax
0084D925: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0084D92A: mov var_000000A4, eax
0084D930: mov var_000000AC, 00000008h
0084D93A: lea esi, var_000000AC
0084D940: push 00000004h
0084D942: push var_000000C0
0084D948: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0084D94D: mov ecx, eax
0084D94F: mov edx, esi
0084D951: call 00410940h ; msvbvm60.dll.__vbaVarZero
0084D956: push 00000000h
0084D958: push 00000000h
0084D95A: mov eax, [ebp+08h]
0084D95D: mov eax, [eax]
0084D95F: push [ebp+08h]
0084D962: call [eax+00000330h]
0084D968: push eax
0084D969: lea eax, var_3C
0084D96C: push eax
0084D96D: call 00410A84h ; Set (object)
0084D972: push eax
0084D973: lea eax, var_7C
0084D976: push eax
0084D977: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084D97C: add esp, 00000010h
0084D97F: push eax
0084D980: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0084D985: mov var_000000B4, eax
0084D98B: mov var_000000BC, 00000008h
0084D995: lea esi, var_000000BC
0084D99B: push 00000005h
0084D99D: push var_000000C0
0084D9A3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0084D9A8: mov ecx, eax
0084D9AA: mov edx, esi
0084D9AC: call 00410940h ; msvbvm60.dll.__vbaVarZero
0084D9B1: mov edx, 0043D750h ; x69
0084D9B6: lea ecx, var_2C
0084D9B9: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0084D9BE: lea eax, var_000000C0
0084D9C4: push eax
0084D9C5: lea eax, var_2C
0084D9C8: push eax
0084D9C9: fld real8 ptr var_000000E8
0084D9CF: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0084D9D4: push eax
0084D9D5: call 007A6910h
0084D9DA: lea eax, var_000000C0
0084D9E0: push eax
0084D9E1: push 00000000h
0084D9E3: call 00410934h ; Erase
0084D9E8: lea eax, var_2C
0084D9EB: push eax
0084D9EC: lea eax, var_28
0084D9EF: push eax
0084D9F0: lea eax, var_24
0084D9F3: push eax
0084D9F4: push 00000003h
0084D9F6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084D9FB: add esp, 00000010h
0084D9FE: lea eax, var_3C
0084DA01: push eax
0084DA02: lea eax, var_38
0084DA05: push eax
0084DA06: lea eax, var_34
0084DA09: push eax
0084DA0A: lea eax, var_30
0084DA0D: push eax
0084DA0E: push 00000004h
0084DA10: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084DA15: add esp, 00000014h
0084DA18: lea eax, var_7C
0084DA1B: push eax
0084DA1C: lea eax, var_6C
0084DA1F: push eax
0084DA20: lea eax, var_5C
0084DA23: push eax
0084DA24: lea eax, var_4C
0084DA27: push eax
0084DA28: push 00000004h
0084DA2A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084DA2F: add esp, 00000014h
0084DA32: mov var_04, 00000005h
0084DA39: mov eax, [ebp+08h]
0084DA3C: mov eax, [eax]
0084DA3E: push [ebp+08h]
0084DA41: call [eax+000002FCh]
0084DA47: push eax
0084DA48: lea eax, var_30
0084DA4B: push eax
0084DA4C: call 00410A84h ; Set (object)
0084DA51: mov var_000000EC, eax
0084DA57: push 00442930h
0084DA5C: mov eax, var_000000EC
0084DA62: mov eax, [eax]
0084DA64: push var_000000EC
0084DA6A: call [eax+74h]
0084DA6D: fclex 
0084DA6F: mov var_000000F0, eax
0084DA75: cmp var_000000F0, 00000000h
0084DA7C: jnl 84DA9Eh
0084DA7E: push 00000074h
0084DA80: push 00447A20h
0084DA85: push var_000000EC
0084DA8B: push var_000000F0
0084DA91: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084DA96: mov var_00000114, eax
0084DA9C: jmp 84DAA5h
0084DA9E: and var_00000114, 00000000h
0084DAA5: lea ecx, var_30
0084DAA8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084DAAD: mov var_04, 00000006h
0084DAB4: push 00000000h
0084DAB6: push 00000000h
0084DAB8: mov eax, [ebp+08h]
0084DABB: mov eax, [eax]
0084DABD: push [ebp+08h]
0084DAC0: call [eax+00000338h]
0084DAC6: push eax
0084DAC7: lea eax, var_30
0084DACA: push eax
0084DACB: call 00410A84h ; Set (object)
0084DAD0: push eax
0084DAD1: lea eax, var_4C
0084DAD4: push eax
0084DAD5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084DADA: add esp, 00000010h
0084DADD: push eax
0084DADE: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084DAE3: dec eax
0084DAE4: neg eax
0084DAE6: sbb eax, eax
0084DAE8: inc eax
0084DAE9: neg eax
0084DAEB: mov var_000000EC, ax
0084DAF2: lea ecx, var_30
0084DAF5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084DAFA: lea ecx, var_4C
0084DAFD: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084DB02: movsx eax, word ptr var_000000EC
0084DB09: test eax, eax
0084DB0B: jz 84DB85h
0084DB0D: mov var_04, 00000007h
0084DB14: mov eax, [ebp+08h]
0084DB17: mov eax, [eax]
0084DB19: push [ebp+08h]
0084DB1C: call [eax+000002FCh]
0084DB22: push eax
0084DB23: lea eax, var_30
0084DB26: push eax
0084DB27: call 00410A84h ; Set (object)
0084DB2C: mov var_000000EC, eax
0084DB32: push FFFFFFFFh
0084DB34: mov eax, var_000000EC
0084DB3A: mov eax, [eax]
0084DB3C: push var_000000EC
0084DB42: call [eax+5Ch]
0084DB45: fclex 
0084DB47: mov var_000000F0, eax
0084DB4D: cmp var_000000F0, 00000000h
0084DB54: jnl 84DB76h
0084DB56: push 0000005Ch
0084DB58: push 00447A20h
0084DB5D: push var_000000EC
0084DB63: push var_000000F0
0084DB69: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084DB6E: mov var_00000118, eax
0084DB74: jmp 84DB7Dh
0084DB76: and var_00000118, 00000000h
0084DB7D: lea ecx, var_30
0084DB80: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084DB85: mov var_04, 00000009h
0084DB8C: mov var_000000C8, 004411ECh ; Stop
0084DB96: mov var_000000D0, 00000008h
0084DBA0: push 00000010h
0084DBA2: pop eax
0084DBA3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084DBA8: lea esi, var_000000D0
0084DBAE: mov edi, esp
0084DBB0: movsd 
0084DBB1: movsd 
0084DBB2: movsd 
0084DBB3: movsd 
0084DBB4: push FFFFFDFAh
0084DBB9: mov eax, [ebp+08h]
0084DBBC: mov eax, [eax]
0084DBBE: push [ebp+08h]
0084DBC1: call [eax+00000320h]
0084DBC7: push eax
0084DBC8: lea eax, var_30
0084DBCB: push eax
0084DBCC: call 00410A84h ; Set (object)
0084DBD1: push eax
0084DBD2: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0084DBD7: lea ecx, var_30
0084DBDA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084DBDF: jmp 84DC3Bh
0084DBE1: mov var_04, 0000000Bh
0084DBE8: mov var_000000C8, 0044CE10h ; Start
0084DBF2: mov var_000000D0, 00000008h
0084DBFC: push 00000010h
0084DBFE: pop eax
0084DBFF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084DC04: lea esi, var_000000D0
0084DC0A: mov edi, esp
0084DC0C: movsd 
0084DC0D: movsd 
0084DC0E: movsd 
0084DC0F: movsd 
0084DC10: push FFFFFDFAh
0084DC15: mov eax, [ebp+08h]
0084DC18: mov eax, [eax]
0084DC1A: push [ebp+08h]
0084DC1D: call [eax+00000320h]
0084DC23: push eax
0084DC24: lea eax, var_30
0084DC27: push eax
0084DC28: call 00410A84h ; Set (object)
0084DC2D: push eax
0084DC2E: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0084DC33: lea ecx, var_30
0084DC36: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084DC3B: mov var_10, 00000000h
0084DC42: wait 
0084DC43: push 0084DCC0h
0084DC48: jmp 84DCBFh
0084DC4A: lea eax, var_2C
0084DC4D: push eax
0084DC4E: lea eax, var_28
0084DC51: push eax
0084DC52: lea eax, var_24
0084DC55: push eax
0084DC56: push 00000003h
0084DC58: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084DC5D: add esp, 00000010h
0084DC60: lea eax, var_3C
0084DC63: push eax
0084DC64: lea eax, var_38
0084DC67: push eax
0084DC68: lea eax, var_34
0084DC6B: push eax
0084DC6C: lea eax, var_30
0084DC6F: push eax
0084DC70: push 00000004h
0084DC72: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084DC77: add esp, 00000014h
0084DC7A: lea eax, var_000000BC
0084DC80: push eax
0084DC81: lea eax, var_000000AC
0084DC87: push eax
0084DC88: lea eax, var_0000009C
0084DC8E: push eax
0084DC8F: lea eax, var_0000008C
0084DC95: push eax
0084DC96: lea eax, var_7C
0084DC99: push eax
0084DC9A: lea eax, var_6C
0084DC9D: push eax
0084DC9E: lea eax, var_5C
0084DCA1: push eax
0084DCA2: lea eax, var_4C
0084DCA5: push eax
0084DCA6: push 00000008h
0084DCA8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084DCAD: add esp, 00000024h
0084DCB0: lea eax, var_000000C0
0084DCB6: push eax
0084DCB7: push 00000000h
0084DCB9: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0084DCBE: ret 
End Sub

Private sub Form__84DCE4
0084DCE4: push ebp
0084DCE5: mov ebp, esp
0084DCE7: sub esp, 0000000Ch
0084DCEA: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084DCEF: mov eax, fs:[00h]
0084DCF5: push eax
0084DCF6: mov fs:[00000000h], esp
0084DCFD: mov eax, 000000D4h
0084DD02: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084DD07: push ebx
0084DD08: push esi
0084DD09: push edi
0084DD0A: mov var_0C, esp
0084DD0D: mov var_08, 0040C580h
0084DD14: mov eax, [ebp+08h]
0084DD17: and eax, 00000001h
0084DD1A: mov var_04, eax
0084DD1D: mov eax, [ebp+08h]
0084DD20: and al, FEh
0084DD22: mov [ebp+08h], eax
0084DD25: mov eax, [ebp+08h]
0084DD28: mov eax, [eax]
0084DD2A: push [ebp+08h]
0084DD2D: call [eax+04h]
0084DD30: mov var_44, 0045525Ch ; Mono
0084DD37: mov var_4C, 00000008h
0084DD3E: push 00000010h
0084DD40: pop eax
0084DD41: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084DD46: lea esi, var_4C
0084DD49: mov edi, esp
0084DD4B: movsd 
0084DD4C: movsd 
0084DD4D: movsd 
0084DD4E: movsd 
0084DD4F: push 00000001h
0084DD51: push 0000000Dh
0084DD53: mov eax, [ebp+08h]
0084DD56: mov eax, [eax]
0084DD58: push [ebp+08h]
0084DD5B: call [eax+00000324h]
0084DD61: push eax
0084DD62: lea eax, var_28
0084DD65: push eax
0084DD66: call 00410A84h ; Set (object)
0084DD6B: push eax
0084DD6C: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084DD71: add esp, 0000001Ch
0084DD74: lea ecx, var_28
0084DD77: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084DD7C: mov var_44, 0045526Ch ; Stereo
0084DD83: mov var_4C, 00000008h
0084DD8A: push 00000010h
0084DD8C: pop eax
0084DD8D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084DD92: lea esi, var_4C
0084DD95: mov edi, esp
0084DD97: movsd 
0084DD98: movsd 
0084DD99: movsd 
0084DD9A: movsd 
0084DD9B: push 00000001h
0084DD9D: push 0000000Dh
0084DD9F: mov eax, [ebp+08h]
0084DDA2: mov eax, [eax]
0084DDA4: push [ebp+08h]
0084DDA7: call [eax+00000324h]
0084DDAD: push eax
0084DDAE: lea eax, var_28
0084DDB1: push eax
0084DDB2: call 00410A84h ; Set (object)
0084DDB7: push eax
0084DDB8: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084DDBD: add esp, 0000001Ch
0084DDC0: lea ecx, var_28
0084DDC3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084DDC8: mov var_44, 0045526Ch ; Stereo
0084DDCF: mov var_4C, 00000008h
0084DDD6: push 00000010h
0084DDD8: pop eax
0084DDD9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084DDDE: lea esi, var_4C
0084DDE1: mov edi, esp
0084DDE3: movsd 
0084DDE4: movsd 
0084DDE5: movsd 
0084DDE6: movsd 
0084DDE7: push 00000000h
0084DDE9: mov eax, [ebp+08h]
0084DDEC: mov eax, [eax]
0084DDEE: push [ebp+08h]
0084DDF1: call [eax+00000324h]
0084DDF7: push eax
0084DDF8: lea eax, var_28
0084DDFB: push eax
0084DDFC: call 00410A84h ; Set (object)
0084DE01: push eax
0084DE02: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0084DE07: lea ecx, var_28
0084DE0A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084DE0F: mov var_44, 0044739Ch
0084DE16: mov var_4C, 00000008h
0084DE1D: push 00000010h
0084DE1F: pop eax
0084DE20: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084DE25: lea esi, var_4C
0084DE28: mov edi, esp
0084DE2A: movsd 
0084DE2B: movsd 
0084DE2C: movsd 
0084DE2D: movsd 
0084DE2E: push 00000001h
0084DE30: push 0000000Dh
0084DE32: mov eax, [ebp+08h]
0084DE35: mov eax, [eax]
0084DE37: push [ebp+08h]
0084DE3A: call [eax+00000328h]
0084DE40: push eax
0084DE41: lea eax, var_28
0084DE44: push eax
0084DE45: call 00410A84h ; Set (object)
0084DE4A: push eax
0084DE4B: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084DE50: add esp, 0000001Ch
0084DE53: lea ecx, var_28
0084DE56: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084DE5B: mov var_44, 00455280h ; 16
0084DE62: mov var_4C, 00000008h
0084DE69: push 00000010h
0084DE6B: pop eax
0084DE6C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084DE71: lea esi, var_4C
0084DE74: mov edi, esp
0084DE76: movsd 
0084DE77: movsd 
0084DE78: movsd 
0084DE79: movsd 
0084DE7A: push 00000001h
0084DE7C: push 0000000Dh
0084DE7E: mov eax, [ebp+08h]
0084DE81: mov eax, [eax]
0084DE83: push [ebp+08h]
0084DE86: call [eax+00000328h]
0084DE8C: push eax
0084DE8D: lea eax, var_28
0084DE90: push eax
0084DE91: call 00410A84h ; Set (object)
0084DE96: push eax
0084DE97: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084DE9C: add esp, 0000001Ch
0084DE9F: lea ecx, var_28
0084DEA2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084DEA7: mov var_44, 0044739Ch
0084DEAE: mov var_4C, 00000008h
0084DEB5: push 00000010h
0084DEB7: pop eax
0084DEB8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084DEBD: lea esi, var_4C
0084DEC0: mov edi, esp
0084DEC2: movsd 
0084DEC3: movsd 
0084DEC4: movsd 
0084DEC5: movsd 
0084DEC6: push 00000000h
0084DEC8: mov eax, [ebp+08h]
0084DECB: mov eax, [eax]
0084DECD: push [ebp+08h]
0084DED0: call [eax+00000328h]
0084DED6: push eax
0084DED7: lea eax, var_28
0084DEDA: push eax
0084DEDB: call 00410A84h ; Set (object)
0084DEE0: push eax
0084DEE1: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0084DEE6: lea ecx, var_28
0084DEE9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084DEEE: mov var_44, 0045528Ch ; 41000
0084DEF5: mov var_4C, 00000008h
0084DEFC: push 00000010h
0084DEFE: pop eax
0084DEFF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084DF04: lea esi, var_4C
0084DF07: mov edi, esp
0084DF09: movsd 
0084DF0A: movsd 
0084DF0B: movsd 
0084DF0C: movsd 
0084DF0D: push 00000001h
0084DF0F: push 0000000Dh
0084DF11: mov eax, [ebp+08h]
0084DF14: mov eax, [eax]
0084DF16: push [ebp+08h]
0084DF19: call [eax+00000334h]
0084DF1F: push eax
0084DF20: lea eax, var_28
0084DF23: push eax
0084DF24: call 00410A84h ; Set (object)
0084DF29: push eax
0084DF2A: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084DF2F: add esp, 0000001Ch
0084DF32: lea ecx, var_28
0084DF35: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084DF3A: mov var_44, 0045529Ch ; 22050
0084DF41: mov var_4C, 00000008h
0084DF48: push 00000010h
0084DF4A: pop eax
0084DF4B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084DF50: lea esi, var_4C
0084DF53: mov edi, esp
0084DF55: movsd 
0084DF56: movsd 
0084DF57: movsd 
0084DF58: movsd 
0084DF59: push 00000001h
0084DF5B: push 0000000Dh
0084DF5D: mov eax, [ebp+08h]
0084DF60: mov eax, [eax]
0084DF62: push [ebp+08h]
0084DF65: call [eax+00000334h]
0084DF6B: push eax
0084DF6C: lea eax, var_28
0084DF6F: push eax
0084DF70: call 00410A84h ; Set (object)
0084DF75: push eax
0084DF76: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084DF7B: add esp, 0000001Ch
0084DF7E: lea ecx, var_28
0084DF81: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084DF86: mov var_44, 0045503Ch ; 11025
0084DF8D: mov var_4C, 00000008h
0084DF94: push 00000010h
0084DF96: pop eax
0084DF97: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084DF9C: lea esi, var_4C
0084DF9F: mov edi, esp
0084DFA1: movsd 
0084DFA2: movsd 
0084DFA3: movsd 
0084DFA4: movsd 
0084DFA5: push 00000001h
0084DFA7: push 0000000Dh
0084DFA9: mov eax, [ebp+08h]
0084DFAC: mov eax, [eax]
0084DFAE: push [ebp+08h]
0084DFB1: call [eax+00000334h]
0084DFB7: push eax
0084DFB8: lea eax, var_28
0084DFBB: push eax
0084DFBC: call 00410A84h ; Set (object)
0084DFC1: push eax
0084DFC2: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084DFC7: add esp, 0000001Ch
0084DFCA: lea ecx, var_28
0084DFCD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084DFD2: mov var_44, 00454EBCh ; 8000
0084DFD9: mov var_4C, 00000008h
0084DFE0: push 00000010h
0084DFE2: pop eax
0084DFE3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084DFE8: lea esi, var_4C
0084DFEB: mov edi, esp
0084DFED: movsd 
0084DFEE: movsd 
0084DFEF: movsd 
0084DFF0: movsd 
0084DFF1: push 00000001h
0084DFF3: push 0000000Dh
0084DFF5: mov eax, [ebp+08h]
0084DFF8: mov eax, [eax]
0084DFFA: push [ebp+08h]
0084DFFD: call [eax+00000334h]
0084E003: push eax
0084E004: lea eax, var_28
0084E007: push eax
0084E008: call 00410A84h ; Set (object)
0084E00D: push eax
0084E00E: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084E013: add esp, 0000001Ch
0084E016: lea ecx, var_28
0084E019: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084E01E: mov var_44, 00454EBCh ; 8000
0084E025: mov var_4C, 00000008h
0084E02C: push 00000010h
0084E02E: pop eax
0084E02F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E034: lea esi, var_4C
0084E037: mov edi, esp
0084E039: movsd 
0084E03A: movsd 
0084E03B: movsd 
0084E03C: movsd 
0084E03D: push 00000000h
0084E03F: mov eax, [ebp+08h]
0084E042: mov eax, [eax]
0084E044: push [ebp+08h]
0084E047: call [eax+00000334h]
0084E04D: push eax
0084E04E: lea eax, var_28
0084E051: push eax
0084E052: call 00410A84h ; Set (object)
0084E057: push eax
0084E058: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0084E05D: lea ecx, var_28
0084E060: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084E065: mov var_44, 80020004h
0084E06C: mov var_4C, 0000000Ah
0084E073: mov var_64, 80020004h
0084E07A: mov var_6C, 0000000Ah
0084E081: mov var_00000084, 00446714h ; ID
0084E08B: mov var_0000008C, 00000008h
0084E095: mov var_000000A4, 00000320h
0084E09F: mov var_000000AC, 00000002h
0084E0A9: push 00000010h
0084E0AB: pop eax
0084E0AC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E0B1: lea esi, var_4C
0084E0B4: mov edi, esp
0084E0B6: movsd 
0084E0B7: movsd 
0084E0B8: movsd 
0084E0B9: movsd 
0084E0BA: push 00000010h
0084E0BC: pop eax
0084E0BD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E0C2: lea esi, var_6C
0084E0C5: mov edi, esp
0084E0C7: movsd 
0084E0C8: movsd 
0084E0C9: movsd 
0084E0CA: movsd 
0084E0CB: push 00000010h
0084E0CD: pop eax
0084E0CE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E0D3: lea esi, var_0000008C
0084E0D9: mov edi, esp
0084E0DB: movsd 
0084E0DC: movsd 
0084E0DD: movsd 
0084E0DE: movsd 
0084E0DF: push 00000010h
0084E0E1: pop eax
0084E0E2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E0E7: lea esi, var_000000AC
0084E0ED: mov edi, esp
0084E0EF: movsd 
0084E0F0: movsd 
0084E0F1: movsd 
0084E0F2: movsd 
0084E0F3: push 00000004h
0084E0F5: push 00000002h
0084E0F7: push 00445534h
0084E0FC: push 00000000h
0084E0FE: push 00000019h
0084E100: mov eax, [ebp+08h]
0084E103: mov eax, [eax]
0084E105: push [ebp+08h]
0084E108: call [eax+00000318h]
0084E10E: push eax
0084E10F: lea eax, var_28
0084E112: push eax
0084E113: call 00410A84h ; Set (object)
0084E118: push eax
0084E119: lea eax, var_3C
0084E11C: push eax
0084E11D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084E122: add esp, 00000010h
0084E125: push eax
0084E126: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084E12B: push eax
0084E12C: lea eax, var_2C
0084E12F: push eax
0084E130: call 00410A84h ; Set (object)
0084E135: push eax
0084E136: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084E13B: add esp, 0000004Ch
0084E13E: lea eax, var_2C
0084E141: push eax
0084E142: lea eax, var_28
0084E145: push eax
0084E146: push 00000002h
0084E148: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084E14D: add esp, 0000000Ch
0084E150: lea ecx, var_3C
0084E153: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084E158: mov var_44, 80020004h
0084E15F: mov var_4C, 0000000Ah
0084E166: mov var_64, 80020004h
0084E16D: mov var_6C, 0000000Ah
0084E174: mov var_00000084, 00446840h ; Size
0084E17E: mov var_0000008C, 00000008h
0084E188: mov var_000000A4, 000007D0h
0084E192: mov var_000000AC, 00000002h
0084E19C: push 00000010h
0084E19E: pop eax
0084E19F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E1A4: lea esi, var_4C
0084E1A7: mov edi, esp
0084E1A9: movsd 
0084E1AA: movsd 
0084E1AB: movsd 
0084E1AC: movsd 
0084E1AD: push 00000010h
0084E1AF: pop eax
0084E1B0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E1B5: lea esi, var_6C
0084E1B8: mov edi, esp
0084E1BA: movsd 
0084E1BB: movsd 
0084E1BC: movsd 
0084E1BD: movsd 
0084E1BE: push 00000010h
0084E1C0: pop eax
0084E1C1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E1C6: lea esi, var_0000008C
0084E1CC: mov edi, esp
0084E1CE: movsd 
0084E1CF: movsd 
0084E1D0: movsd 
0084E1D1: movsd 
0084E1D2: push 00000010h
0084E1D4: pop eax
0084E1D5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E1DA: lea esi, var_000000AC
0084E1E0: mov edi, esp
0084E1E2: movsd 
0084E1E3: movsd 
0084E1E4: movsd 
0084E1E5: movsd 
0084E1E6: push 00000004h
0084E1E8: push 00000002h
0084E1EA: push 00445534h
0084E1EF: push 00000000h
0084E1F1: push 00000019h
0084E1F3: mov eax, [ebp+08h]
0084E1F6: mov eax, [eax]
0084E1F8: push [ebp+08h]
0084E1FB: call [eax+00000318h]
0084E201: push eax
0084E202: lea eax, var_28
0084E205: push eax
0084E206: call 00410A84h ; Set (object)
0084E20B: push eax
0084E20C: lea eax, var_3C
0084E20F: push eax
0084E210: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084E215: add esp, 00000010h
0084E218: push eax
0084E219: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084E21E: push eax
0084E21F: lea eax, var_2C
0084E222: push eax
0084E223: call 00410A84h ; Set (object)
0084E228: push eax
0084E229: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084E22E: add esp, 0000004Ch
0084E231: lea eax, var_2C
0084E234: push eax
0084E235: lea eax, var_28
0084E238: push eax
0084E239: push 00000002h
0084E23B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084E240: add esp, 0000000Ch
0084E243: lea ecx, var_3C
0084E246: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084E24B: mov var_44, 80020004h
0084E252: mov var_4C, 0000000Ah
0084E259: mov var_64, 80020004h
0084E260: mov var_6C, 0000000Ah
0084E267: mov var_00000084, 004552ACh ; Length
0084E271: mov var_0000008C, 00000008h
0084E27B: mov var_000000A4, 000007D0h
0084E285: mov var_000000AC, 00000002h
0084E28F: push 00000010h
0084E291: pop eax
0084E292: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E297: lea esi, var_4C
0084E29A: mov edi, esp
0084E29C: movsd 
0084E29D: movsd 
0084E29E: movsd 
0084E29F: movsd 
0084E2A0: push 00000010h
0084E2A2: pop eax
0084E2A3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E2A8: lea esi, var_6C
0084E2AB: mov edi, esp
0084E2AD: movsd 
0084E2AE: movsd 
0084E2AF: movsd 
0084E2B0: movsd 
0084E2B1: push 00000010h
0084E2B3: pop eax
0084E2B4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E2B9: lea esi, var_0000008C
0084E2BF: mov edi, esp
0084E2C1: movsd 
0084E2C2: movsd 
0084E2C3: movsd 
0084E2C4: movsd 
0084E2C5: push 00000010h
0084E2C7: pop eax
0084E2C8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E2CD: lea esi, var_000000AC
0084E2D3: mov edi, esp
0084E2D5: movsd 
0084E2D6: movsd 
0084E2D7: movsd 
0084E2D8: movsd 
0084E2D9: push 00000004h
0084E2DB: push 00000002h
0084E2DD: push 00445534h
0084E2E2: push 00000000h
0084E2E4: push 00000019h
0084E2E6: mov eax, [ebp+08h]
0084E2E9: mov eax, [eax]
0084E2EB: push [ebp+08h]
0084E2EE: call [eax+00000318h]
0084E2F4: push eax
0084E2F5: lea eax, var_28
0084E2F8: push eax
0084E2F9: call 00410A84h ; Set (object)
0084E2FE: push eax
0084E2FF: lea eax, var_3C
0084E302: push eax
0084E303: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084E308: add esp, 00000010h
0084E30B: push eax
0084E30C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084E311: push eax
0084E312: lea eax, var_2C
0084E315: push eax
0084E316: call 00410A84h ; Set (object)
0084E31B: push eax
0084E31C: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084E321: add esp, 0000004Ch
0084E324: lea eax, var_2C
0084E327: push eax
0084E328: lea eax, var_28
0084E32B: push eax
0084E32C: push 00000002h
0084E32E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084E333: add esp, 0000000Ch
0084E336: lea ecx, var_3C
0084E339: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084E33E: mov var_44, 80020004h
0084E345: mov var_4C, 0000000Ah
0084E34C: mov var_64, 80020004h
0084E353: mov var_6C, 0000000Ah
0084E35A: mov var_00000084, 004552C0h ; Received
0084E364: mov var_0000008C, 00000008h
0084E36E: mov var_000000A4, 00000DACh
0084E378: mov var_000000AC, 00000002h
0084E382: push 00000010h
0084E384: pop eax
0084E385: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E38A: lea esi, var_4C
0084E38D: mov edi, esp
0084E38F: movsd 
0084E390: movsd 
0084E391: movsd 
0084E392: movsd 
0084E393: push 00000010h
0084E395: pop eax
0084E396: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E39B: lea esi, var_6C
0084E39E: mov edi, esp
0084E3A0: movsd 
0084E3A1: movsd 
0084E3A2: movsd 
0084E3A3: movsd 
0084E3A4: push 00000010h
0084E3A6: pop eax
0084E3A7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E3AC: lea esi, var_0000008C
0084E3B2: mov edi, esp
0084E3B4: movsd 
0084E3B5: movsd 
0084E3B6: movsd 
0084E3B7: movsd 
0084E3B8: push 00000010h
0084E3BA: pop eax
0084E3BB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E3C0: lea esi, var_000000AC
0084E3C6: mov edi, esp
0084E3C8: movsd 
0084E3C9: movsd 
0084E3CA: movsd 
0084E3CB: movsd 
0084E3CC: push 00000004h
0084E3CE: push 00000002h
0084E3D0: push 00445534h
0084E3D5: push 00000000h
0084E3D7: push 00000019h
0084E3D9: mov eax, [ebp+08h]
0084E3DC: mov eax, [eax]
0084E3DE: push [ebp+08h]
0084E3E1: call [eax+00000318h]
0084E3E7: push eax
0084E3E8: lea eax, var_28
0084E3EB: push eax
0084E3EC: call 00410A84h ; Set (object)
0084E3F1: push eax
0084E3F2: lea eax, var_3C
0084E3F5: push eax
0084E3F6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084E3FB: add esp, 00000010h
0084E3FE: push eax
0084E3FF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084E404: push eax
0084E405: lea eax, var_2C
0084E408: push eax
0084E409: call 00410A84h ; Set (object)
0084E40E: push eax
0084E40F: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084E414: add esp, 0000004Ch
0084E417: lea eax, var_2C
0084E41A: push eax
0084E41B: lea eax, var_28
0084E41E: push eax
0084E41F: push 00000002h
0084E421: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084E426: add esp, 0000000Ch
0084E429: lea ecx, var_3C
0084E42C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084E431: mov var_44, 00000001h
0084E438: mov var_4C, 00000002h
0084E43F: mov var_54, 0000000Ah
0084E446: mov var_5C, 00000002h
0084E44D: mov var_64, 00000001h
0084E454: mov var_6C, 00000002h
0084E45B: lea eax, var_4C
0084E45E: push eax
0084E45F: lea eax, var_5C
0084E462: push eax
0084E463: lea eax, var_6C
0084E466: push eax
0084E467: lea eax, var_000000DC
0084E46D: push eax
0084E46E: lea eax, var_000000CC
0084E474: push eax
0084E475: lea eax, var_24
0084E478: push eax
0084E479: call 00410A3Ch ; For
0084E47E: mov var_000000E8, eax
0084E484: jmp 84E4FCh
0084E486: lea eax, var_24
0084E489: push eax
0084E48A: call 00410862h ; msvbvm60.dll.__vbaStrVarCopy
0084E48F: mov var_34, eax
0084E492: mov var_3C, 00000008h
0084E499: push 00000010h
0084E49B: pop eax
0084E49C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E4A1: lea esi, var_3C
0084E4A4: mov edi, esp
0084E4A6: movsd 
0084E4A7: movsd 
0084E4A8: movsd 
0084E4A9: movsd 
0084E4AA: push 00000001h
0084E4AC: push 0000000Dh
0084E4AE: mov eax, [ebp+08h]
0084E4B1: mov eax, [eax]
0084E4B3: push [ebp+08h]
0084E4B6: call [eax+00000330h]
0084E4BC: push eax
0084E4BD: lea eax, var_28
0084E4C0: push eax
0084E4C1: call 00410A84h ; Set (object)
0084E4C6: push eax
0084E4C7: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084E4CC: add esp, 0000001Ch
0084E4CF: lea ecx, var_28
0084E4D2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084E4D7: lea ecx, var_3C
0084E4DA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084E4DF: lea eax, var_000000DC
0084E4E5: push eax
0084E4E6: lea eax, var_000000CC
0084E4EC: push eax
0084E4ED: lea eax, var_24
0084E4F0: push eax
0084E4F1: call 00410A36h ; Next
0084E4F6: mov var_000000E8, eax
0084E4FC: cmp var_000000E8, 00000000h
0084E503: jnz 84E486h
0084E505: mov var_44, 00447594h
0084E50C: mov var_4C, 00000008h
0084E513: push 00000010h
0084E515: pop eax
0084E516: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E51B: lea esi, var_4C
0084E51E: mov edi, esp
0084E520: movsd 
0084E521: movsd 
0084E522: movsd 
0084E523: movsd 
0084E524: push 00000000h
0084E526: mov eax, [ebp+08h]
0084E529: mov eax, [eax]
0084E52B: push [ebp+08h]
0084E52E: call [eax+00000330h]
0084E534: push eax
0084E535: lea eax, var_28
0084E538: push eax
0084E539: call 00410A84h ; Set (object)
0084E53E: push eax
0084E53F: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0084E544: lea ecx, var_28
0084E547: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084E54C: mov var_04, 00000000h
0084E553: push 0084E596h
0084E558: jmp 84E575h
0084E55A: lea eax, var_2C
0084E55D: push eax
0084E55E: lea eax, var_28
0084E561: push eax
0084E562: push 00000002h
0084E564: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084E569: add esp, 0000000Ch
0084E56C: lea ecx, var_3C
0084E56F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0084E574: ret 
End Sub

Private sub Form__84E5B5
0084E5B5: push ebp
0084E5B6: mov ebp, esp
0084E5B8: sub esp, 00000018h
0084E5BB: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084E5C0: mov eax, fs:[00h]
0084E5C6: push eax
0084E5C7: mov fs:[00000000h], esp
0084E5CE: mov eax, 00000120h
0084E5D3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E5D8: push ebx
0084E5D9: push esi
0084E5DA: push edi
0084E5DB: mov var_18, esp
0084E5DE: mov var_14, 0040C590h
0084E5E5: mov eax, [ebp+08h]
0084E5E8: and eax, 00000001h
0084E5EB: mov var_10, eax
0084E5EE: mov eax, [ebp+08h]
0084E5F1: and al, FEh
0084E5F3: mov [ebp+08h], eax
0084E5F6: mov var_0C, 00000000h
0084E5FD: mov eax, [ebp+08h]
0084E600: mov eax, [eax]
0084E602: push [ebp+08h]
0084E605: call [eax+04h]
0084E608: mov var_04, 00000001h
0084E60F: mov var_04, 00000002h
0084E616: push FFFFFFFFh
0084E618: call 00410A60h ; On Error ...
0084E61D: mov var_04, 00000003h
0084E624: fld real4 ptr [00402BA8h]
0084E62A: fstp real4 ptr var_00000090
0084E630: mov var_00000098, 00000004h
0084E63A: push 00000000h
0084E63C: push 80010004h
0084E641: mov eax, [ebp+08h]
0084E644: mov eax, [eax]
0084E646: push [ebp+08h]
0084E649: call [eax+0000031Ch]
0084E64F: push eax
0084E650: lea eax, var_24
0084E653: push eax
0084E654: call 00410A84h ; Set (object)
0084E659: push eax
0084E65A: lea eax, var_48
0084E65D: push eax
0084E65E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084E663: add esp, 00000010h
0084E666: push eax
0084E667: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084E66C: fstp real4 ptr var_000000B0
0084E672: mov var_000000B8, 00000004h
0084E67C: push 00000000h
0084E67E: push 80010005h
0084E683: mov eax, [ebp+08h]
0084E686: mov eax, [eax]
0084E688: push [ebp+08h]
0084E68B: call [eax+0000031Ch]
0084E691: push eax
0084E692: lea eax, var_28
0084E695: push eax
0084E696: call 00410A84h ; Set (object)
0084E69B: push eax
0084E69C: lea eax, var_58
0084E69F: push eax
0084E6A0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084E6A5: add esp, 00000010h
0084E6A8: push eax
0084E6A9: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084E6AE: fstp real4 ptr var_000000D0
0084E6B4: mov var_000000D8, 00000004h
0084E6BE: lea eax, var_0000010C
0084E6C4: push eax
0084E6C5: mov eax, [ebp+08h]
0084E6C8: mov eax, [eax]
0084E6CA: push [ebp+08h]
0084E6CD: call [eax+00000088h]
0084E6D3: fclex 
0084E6D5: mov var_00000114, eax
0084E6DB: cmp var_00000114, 00000000h
0084E6E2: jnl 84E704h
0084E6E4: push 00000088h
0084E6E9: push 00443D28h
0084E6EE: push [ebp+08h]
0084E6F1: push var_00000114
0084E6F7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084E6FC: mov var_00000130, eax
0084E702: jmp 84E70Bh
0084E704: and var_00000130, 00000000h
0084E70B: fld real4 ptr var_0000010C
0084E711: fsub real4 ptr [0040C470h]
0084E717: fstp real4 ptr var_000000F0
0084E71D: fstsw ax
0084E71F: test al, 0Dh
0084E721: jnz 0084EE7Eh
0084E727: mov var_000000F8, 00000004h
0084E731: push 00000010h
0084E733: pop eax
0084E734: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E739: lea esi, var_00000098
0084E73F: mov edi, esp
0084E741: movsd 
0084E742: movsd 
0084E743: movsd 
0084E744: movsd 
0084E745: push 00000010h
0084E747: pop eax
0084E748: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E74D: lea esi, var_000000B8
0084E753: mov edi, esp
0084E755: movsd 
0084E756: movsd 
0084E757: movsd 
0084E758: movsd 
0084E759: push 00000010h
0084E75B: pop eax
0084E75C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E761: lea esi, var_000000D8
0084E767: mov edi, esp
0084E769: movsd 
0084E76A: movsd 
0084E76B: movsd 
0084E76C: movsd 
0084E76D: push 00000010h
0084E76F: pop eax
0084E770: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E775: lea esi, var_000000F8
0084E77B: mov edi, esp
0084E77D: movsd 
0084E77E: movsd 
0084E77F: movsd 
0084E780: movsd 
0084E781: push 00000004h
0084E783: push 80011001h
0084E788: mov eax, [ebp+08h]
0084E78B: mov eax, [eax]
0084E78D: push [ebp+08h]
0084E790: call [eax+0000031Ch]
0084E796: push eax
0084E797: lea eax, var_2C
0084E79A: push eax
0084E79B: call 00410A84h ; Set (object)
0084E7A0: push eax
0084E7A1: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084E7A6: add esp, 0000004Ch
0084E7A9: lea eax, var_2C
0084E7AC: push eax
0084E7AD: lea eax, var_28
0084E7B0: push eax
0084E7B1: lea eax, var_24
0084E7B4: push eax
0084E7B5: push 00000003h
0084E7B7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084E7BC: add esp, 00000010h
0084E7BF: lea eax, var_58
0084E7C2: push eax
0084E7C3: lea eax, var_48
0084E7C6: push eax
0084E7C7: push 00000002h
0084E7C9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084E7CE: add esp, 0000000Ch
0084E7D1: mov var_04, 00000004h
0084E7D8: push 00000000h
0084E7DA: push 80010005h
0084E7DF: mov eax, [ebp+08h]
0084E7E2: mov eax, [eax]
0084E7E4: push [ebp+08h]
0084E7E7: call [eax+0000031Ch]
0084E7ED: push eax
0084E7EE: lea eax, var_28
0084E7F1: push eax
0084E7F2: call 00410A84h ; Set (object)
0084E7F7: push eax
0084E7F8: lea eax, var_58
0084E7FB: push eax
0084E7FC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084E801: add esp, 00000010h
0084E804: push 00000000h
0084E806: push 80010003h
0084E80B: mov eax, [ebp+08h]
0084E80E: mov eax, [eax]
0084E810: push [ebp+08h]
0084E813: call [eax+00000314h]
0084E819: push eax
0084E81A: lea eax, var_30
0084E81D: push eax
0084E81E: call 00410A84h ; Set (object)
0084E823: push eax
0084E824: lea eax, var_78
0084E827: push eax
0084E828: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084E82D: add esp, 00000010h
0084E830: push 00000000h
0084E832: push 80010003h
0084E837: mov eax, [ebp+08h]
0084E83A: mov eax, [eax]
0084E83C: push [ebp+08h]
0084E83F: call [eax+0000031Ch]
0084E845: push eax
0084E846: lea eax, var_24
0084E849: push eax
0084E84A: call 00410A84h ; Set (object)
0084E84F: push eax
0084E850: lea eax, var_48
0084E853: push eax
0084E854: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084E859: add esp, 00000010h
0084E85C: push eax
0084E85D: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084E862: fstp real4 ptr var_00000134
0084E868: lea eax, var_58
0084E86B: push eax
0084E86C: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084E871: fadd real4 ptr var_00000134
0084E877: fadd real4 ptr [00402BA4h]
0084E87D: fstp real4 ptr var_00000090
0084E883: fstsw ax
0084E885: test al, 0Dh
0084E887: jnz 0084EE7Eh
0084E88D: mov var_00000098, 00000004h
0084E897: push 00000000h
0084E899: push 80010004h
0084E89E: mov eax, [ebp+08h]
0084E8A1: mov eax, [eax]
0084E8A3: push [ebp+08h]
0084E8A6: call [eax+0000031Ch]
0084E8AC: push eax
0084E8AD: lea eax, var_2C
0084E8B0: push eax
0084E8B1: call 00410A84h ; Set (object)
0084E8B6: push eax
0084E8B7: lea eax, var_68
0084E8BA: push eax
0084E8BB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084E8C0: add esp, 00000010h
0084E8C3: push eax
0084E8C4: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084E8C9: fstp real4 ptr var_000000B0
0084E8CF: mov var_000000B8, 00000004h
0084E8D9: lea eax, var_0000010C
0084E8DF: push eax
0084E8E0: mov eax, [ebp+08h]
0084E8E3: mov eax, [eax]
0084E8E5: push [ebp+08h]
0084E8E8: call [eax+00000080h]
0084E8EE: fclex 
0084E8F0: mov var_00000114, eax
0084E8F6: cmp var_00000114, 00000000h
0084E8FD: jnl 84E91Fh
0084E8FF: push 00000080h
0084E904: push 00443D28h
0084E909: push [ebp+08h]
0084E90C: push var_00000114
0084E912: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084E917: mov var_00000138, eax
0084E91D: jmp 84E926h
0084E91F: and var_00000138, 00000000h
0084E926: lea eax, var_78
0084E929: push eax
0084E92A: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084E92F: fsubr real4 ptr var_0000010C
0084E935: fsub real4 ptr [00402BA4h]
0084E93B: fstp real4 ptr var_000000D0
0084E941: fstsw ax
0084E943: test al, 0Dh
0084E945: jnz 0084EE7Eh
0084E94B: mov var_000000D8, 00000004h
0084E955: lea eax, var_00000110
0084E95B: push eax
0084E95C: mov eax, [ebp+08h]
0084E95F: mov eax, [eax]
0084E961: push [ebp+08h]
0084E964: call [eax+00000088h]
0084E96A: fclex 
0084E96C: mov var_00000118, eax
0084E972: cmp var_00000118, 00000000h
0084E979: jnl 84E99Bh
0084E97B: push 00000088h
0084E980: push 00443D28h
0084E985: push [ebp+08h]
0084E988: push var_00000118
0084E98E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084E993: mov var_0000013C, eax
0084E999: jmp 84E9A2h
0084E99B: and var_0000013C, 00000000h
0084E9A2: fld real4 ptr var_00000110
0084E9A8: fsub real4 ptr [0040C470h]
0084E9AE: fstp real4 ptr var_000000F0
0084E9B4: fstsw ax
0084E9B6: test al, 0Dh
0084E9B8: jnz 0084EE7Eh
0084E9BE: mov var_000000F8, 00000004h
0084E9C8: push 00000010h
0084E9CA: pop eax
0084E9CB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E9D0: lea esi, var_00000098
0084E9D6: mov edi, esp
0084E9D8: movsd 
0084E9D9: movsd 
0084E9DA: movsd 
0084E9DB: movsd 
0084E9DC: push 00000010h
0084E9DE: pop eax
0084E9DF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E9E4: lea esi, var_000000B8
0084E9EA: mov edi, esp
0084E9EC: movsd 
0084E9ED: movsd 
0084E9EE: movsd 
0084E9EF: movsd 
0084E9F0: push 00000010h
0084E9F2: pop eax
0084E9F3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084E9F8: lea esi, var_000000D8
0084E9FE: mov edi, esp
0084EA00: movsd 
0084EA01: movsd 
0084EA02: movsd 
0084EA03: movsd 
0084EA04: push 00000010h
0084EA06: pop eax
0084EA07: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084EA0C: lea esi, var_000000F8
0084EA12: mov edi, esp
0084EA14: movsd 
0084EA15: movsd 
0084EA16: movsd 
0084EA17: movsd 
0084EA18: push 00000004h
0084EA1A: push 80011001h
0084EA1F: mov eax, [ebp+08h]
0084EA22: mov eax, [eax]
0084EA24: push [ebp+08h]
0084EA27: call [eax+00000314h]
0084EA2D: push eax
0084EA2E: lea eax, var_34
0084EA31: push eax
0084EA32: call 00410A84h ; Set (object)
0084EA37: push eax
0084EA38: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084EA3D: add esp, 0000004Ch
0084EA40: lea eax, var_34
0084EA43: push eax
0084EA44: lea eax, var_30
0084EA47: push eax
0084EA48: lea eax, var_2C
0084EA4B: push eax
0084EA4C: lea eax, var_28
0084EA4F: push eax
0084EA50: lea eax, var_24
0084EA53: push eax
0084EA54: push 00000005h
0084EA56: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084EA5B: add esp, 00000018h
0084EA5E: lea eax, var_78
0084EA61: push eax
0084EA62: lea eax, var_68
0084EA65: push eax
0084EA66: lea eax, var_58
0084EA69: push eax
0084EA6A: lea eax, var_48
0084EA6D: push eax
0084EA6E: push 00000004h
0084EA70: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084EA75: add esp, 00000014h
0084EA78: mov var_04, 00000005h
0084EA7F: fld real4 ptr [00402B44h]
0084EA85: fstp real4 ptr var_00000090
0084EA8B: mov var_00000098, 00000004h
0084EA95: mov var_000000B0, 000000F0h
0084EA9F: mov var_000000B8, 00000002h
0084EAA9: push 00000000h
0084EAAB: push 80010005h
0084EAB0: mov eax, [ebp+08h]
0084EAB3: mov eax, [eax]
0084EAB5: push [ebp+08h]
0084EAB8: call [eax+00000314h]
0084EABE: push eax
0084EABF: lea eax, var_24
0084EAC2: push eax
0084EAC3: call 00410A84h ; Set (object)
0084EAC8: push eax
0084EAC9: lea eax, var_48
0084EACC: push eax
0084EACD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084EAD2: add esp, 00000010h
0084EAD5: push eax
0084EAD6: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084EADB: fsub real4 ptr [00402BB4h]
0084EAE1: fstp real4 ptr var_000000D0
0084EAE7: fstsw ax
0084EAE9: test al, 0Dh
0084EAEB: jnz 0084EE7Eh
0084EAF1: mov var_000000D8, 00000004h
0084EAFB: push 00000000h
0084EAFD: push 80010006h
0084EB02: mov eax, [ebp+08h]
0084EB05: mov eax, [eax]
0084EB07: push [ebp+08h]
0084EB0A: call [eax+00000314h]
0084EB10: push eax
0084EB11: lea eax, var_28
0084EB14: push eax
0084EB15: call 00410A84h ; Set (object)
0084EB1A: push eax
0084EB1B: lea eax, var_58
0084EB1E: push eax
0084EB1F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084EB24: add esp, 00000010h
0084EB27: push eax
0084EB28: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084EB2D: fsub real4 ptr [0040C5CCh]
0084EB33: fstp real4 ptr var_000000F0
0084EB39: fstsw ax
0084EB3B: test al, 0Dh
0084EB3D: jnz 0084EE7Eh
0084EB43: mov var_000000F8, 00000004h
0084EB4D: push 00000010h
0084EB4F: pop eax
0084EB50: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084EB55: lea esi, var_00000098
0084EB5B: mov edi, esp
0084EB5D: movsd 
0084EB5E: movsd 
0084EB5F: movsd 
0084EB60: movsd 
0084EB61: push 00000010h
0084EB63: pop eax
0084EB64: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084EB69: lea esi, var_000000B8
0084EB6F: mov edi, esp
0084EB71: movsd 
0084EB72: movsd 
0084EB73: movsd 
0084EB74: movsd 
0084EB75: push 00000010h
0084EB77: pop eax
0084EB78: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084EB7D: lea esi, var_000000D8
0084EB83: mov edi, esp
0084EB85: movsd 
0084EB86: movsd 
0084EB87: movsd 
0084EB88: movsd 
0084EB89: push 00000010h
0084EB8B: pop eax
0084EB8C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084EB91: lea esi, var_000000F8
0084EB97: mov edi, esp
0084EB99: movsd 
0084EB9A: movsd 
0084EB9B: movsd 
0084EB9C: movsd 
0084EB9D: push 00000004h
0084EB9F: push 80011002h
0084EBA4: mov eax, [ebp+08h]
0084EBA7: mov eax, [eax]
0084EBA9: push [ebp+08h]
0084EBAC: call [eax+00000318h]
0084EBB2: push eax
0084EBB3: lea eax, var_2C
0084EBB6: push eax
0084EBB7: call 00410A84h ; Set (object)
0084EBBC: push eax
0084EBBD: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084EBC2: add esp, 0000004Ch
0084EBC5: lea eax, var_2C
0084EBC8: push eax
0084EBC9: lea eax, var_28
0084EBCC: push eax
0084EBCD: lea eax, var_24
0084EBD0: push eax
0084EBD1: push 00000003h
0084EBD3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084EBD8: add esp, 00000010h
0084EBDB: lea eax, var_58
0084EBDE: push eax
0084EBDF: lea eax, var_48
0084EBE2: push eax
0084EBE3: push 00000002h
0084EBE5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084EBEA: add esp, 0000000Ch
0084EBED: mov var_04, 00000006h
0084EBF4: push 00000000h
0084EBF6: push 80010006h
0084EBFB: mov eax, [ebp+08h]
0084EBFE: mov eax, [eax]
0084EC00: push [ebp+08h]
0084EC03: call [eax+00000320h]
0084EC09: push eax
0084EC0A: lea eax, var_2C
0084EC0D: push eax
0084EC0E: call 00410A84h ; Set (object)
0084EC13: push eax
0084EC14: lea eax, var_68
0084EC17: push eax
0084EC18: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084EC1D: add esp, 00000010h
0084EC20: push 00000000h
0084EC22: push 80010003h
0084EC27: mov eax, [ebp+08h]
0084EC2A: mov eax, [eax]
0084EC2C: push [ebp+08h]
0084EC2F: call [eax+00000320h]
0084EC35: push eax
0084EC36: lea eax, var_24
0084EC39: push eax
0084EC3A: call 00410A84h ; Set (object)
0084EC3F: push eax
0084EC40: lea eax, var_48
0084EC43: push eax
0084EC44: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084EC49: add esp, 00000010h
0084EC4C: push eax
0084EC4D: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084EC52: fstp real4 ptr var_00000090
0084EC58: mov var_00000098, 00000004h
0084EC62: push 00000000h
0084EC64: push 80010006h
0084EC69: mov eax, [ebp+08h]
0084EC6C: mov eax, [eax]
0084EC6E: push [ebp+08h]
0084EC71: call [eax+0000031Ch]
0084EC77: push eax
0084EC78: lea eax, var_28
0084EC7B: push eax
0084EC7C: call 00410A84h ; Set (object)
0084EC81: push eax
0084EC82: lea eax, var_58
0084EC85: push eax
0084EC86: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084EC8B: add esp, 00000010h
0084EC8E: push eax
0084EC8F: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084EC94: fstp real4 ptr var_00000140
0084EC9A: lea eax, var_68
0084EC9D: push eax
0084EC9E: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084ECA3: fsubr real4 ptr var_00000140
0084ECA9: fsub real4 ptr [00402BA4h]
0084ECAF: fstp real4 ptr var_000000B0
0084ECB5: fstsw ax
0084ECB7: test al, 0Dh
0084ECB9: jnz 0084EE7Eh
0084ECBF: mov var_000000B8, 00000004h
0084ECC9: push 00000000h
0084ECCB: push 80010005h
0084ECD0: mov eax, [ebp+08h]
0084ECD3: mov eax, [eax]
0084ECD5: push [ebp+08h]
0084ECD8: call [eax+00000320h]
0084ECDE: push eax
0084ECDF: lea eax, var_30
0084ECE2: push eax
0084ECE3: call 00410A84h ; Set (object)
0084ECE8: push eax
0084ECE9: lea eax, var_78
0084ECEC: push eax
0084ECED: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084ECF2: add esp, 00000010h
0084ECF5: push eax
0084ECF6: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084ECFB: fstp real4 ptr var_000000D0
0084ED01: mov var_000000D8, 00000004h
0084ED0B: push 00000000h
0084ED0D: push 80010006h
0084ED12: mov eax, [ebp+08h]
0084ED15: mov eax, [eax]
0084ED17: push [ebp+08h]
0084ED1A: call [eax+00000320h]
0084ED20: push eax
0084ED21: lea eax, var_34
0084ED24: push eax
0084ED25: call 00410A84h ; Set (object)
0084ED2A: push eax
0084ED2B: lea eax, var_00000088
0084ED31: push eax
0084ED32: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084ED37: add esp, 00000010h
0084ED3A: push eax
0084ED3B: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0084ED40: fstp real4 ptr var_000000F0
0084ED46: mov var_000000F8, 00000004h
0084ED50: push 00000010h
0084ED52: pop eax
0084ED53: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084ED58: lea esi, var_00000098
0084ED5E: mov edi, esp
0084ED60: movsd 
0084ED61: movsd 
0084ED62: movsd 
0084ED63: movsd 
0084ED64: push 00000010h
0084ED66: pop eax
0084ED67: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084ED6C: lea esi, var_000000B8
0084ED72: mov edi, esp
0084ED74: movsd 
0084ED75: movsd 
0084ED76: movsd 
0084ED77: movsd 
0084ED78: push 00000010h
0084ED7A: pop eax
0084ED7B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084ED80: lea esi, var_000000D8
0084ED86: mov edi, esp
0084ED88: movsd 
0084ED89: movsd 
0084ED8A: movsd 
0084ED8B: movsd 
0084ED8C: push 00000010h
0084ED8E: pop eax
0084ED8F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084ED94: lea esi, var_000000F8
0084ED9A: mov edi, esp
0084ED9C: movsd 
0084ED9D: movsd 
0084ED9E: movsd 
0084ED9F: movsd 
0084EDA0: push 00000004h
0084EDA2: push 80011002h
0084EDA7: mov eax, [ebp+08h]
0084EDAA: mov eax, [eax]
0084EDAC: push [ebp+08h]
0084EDAF: call [eax+00000320h]
0084EDB5: push eax
0084EDB6: lea eax, var_38
0084EDB9: push eax
0084EDBA: call 00410A84h ; Set (object)
0084EDBF: push eax
0084EDC0: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0084EDC5: add esp, 0000004Ch
0084EDC8: lea eax, var_38
0084EDCB: push eax
0084EDCC: lea eax, var_34
0084EDCF: push eax
0084EDD0: lea eax, var_30
0084EDD3: push eax
0084EDD4: lea eax, var_2C
0084EDD7: push eax
0084EDD8: lea eax, var_28
0084EDDB: push eax
0084EDDC: lea eax, var_24
0084EDDF: push eax
0084EDE0: push 00000006h
0084EDE2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084EDE7: add esp, 0000001Ch
0084EDEA: lea eax, var_00000088
0084EDF0: push eax
0084EDF1: lea eax, var_78
0084EDF4: push eax
0084EDF5: lea eax, var_68
0084EDF8: push eax
0084EDF9: lea eax, var_58
0084EDFC: push eax
0084EDFD: lea eax, var_48
0084EE00: push eax
0084EE01: push 00000005h
0084EE03: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084EE08: add esp, 00000018h
0084EE0B: mov var_10, 00000000h
0084EE12: wait 
0084EE13: push 0084EE5Fh
0084EE18: jmp 84EE5Eh
0084EE1A: lea eax, var_38
0084EE1D: push eax
0084EE1E: lea eax, var_34
0084EE21: push eax
0084EE22: lea eax, var_30
0084EE25: push eax
0084EE26: lea eax, var_2C
0084EE29: push eax
0084EE2A: lea eax, var_28
0084EE2D: push eax
0084EE2E: lea eax, var_24
0084EE31: push eax
0084EE32: push 00000006h
0084EE34: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084EE39: add esp, 0000001Ch
0084EE3C: lea eax, var_00000088
0084EE42: push eax
0084EE43: lea eax, var_78
0084EE46: push eax
0084EE47: lea eax, var_68
0084EE4A: push eax
0084EE4B: lea eax, var_58
0084EE4E: push eax
0084EE4F: lea eax, var_48
0084EE52: push eax
0084EE53: push 00000005h
0084EE55: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084EE5A: add esp, 00000018h
0084EE5D: ret 
End Sub

Private sub mnuAudio__84F6ED
0084F6ED: push ebp
0084F6EE: mov ebp, esp
0084F6F0: sub esp, 00000018h
0084F6F3: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0084F6F8: mov eax, fs:[00h]
0084F6FE: push eax
0084F6FF: mov fs:[00000000h], esp
0084F706: mov eax, 00000224h
0084F70B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084F710: push ebx
0084F711: push esi
0084F712: push edi
0084F713: mov var_18, esp
0084F716: mov var_14, 0040C670h
0084F71D: mov eax, [ebp+08h]
0084F720: and eax, 00000001h
0084F723: mov var_10, eax
0084F726: mov eax, [ebp+08h]
0084F729: and al, FEh
0084F72B: mov [ebp+08h], eax
0084F72E: mov var_0C, 00000000h
0084F735: mov eax, [ebp+08h]
0084F738: mov eax, [eax]
0084F73A: push [ebp+08h]
0084F73D: call [eax+04h]
0084F740: mov var_04, 00000001h
0084F747: mov var_04, 00000002h
0084F74E: push FFFFFFFFh
0084F750: call 00410A60h ; On Error ...
0084F755: mov var_04, 00000003h
0084F75C: mov var_00000140, 00000007h
0084F766: mov var_00000148, 00000003h
0084F770: lea eax, var_38
0084F773: push eax
0084F774: mov eax, [ebp+08h]
0084F777: mov eax, [eax]
0084F779: push [ebp+08h]
0084F77C: call [eax+000001C0h]
0084F782: fclex 
0084F784: mov var_0000018C, eax
0084F78A: cmp var_0000018C, 00000000h
0084F791: jnl 84F7B3h
0084F793: push 000001C0h
0084F798: push 00443D28h
0084F79D: push [ebp+08h]
0084F7A0: push var_0000018C
0084F7A6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084F7AB: mov var_000001E0, eax
0084F7B1: jmp 84F7BAh
0084F7B3: and var_000001E0, 00000000h
0084F7BA: push var_38
0084F7BD: call 004109DCh ; Val(arg_1)
0084F7C2: push ecx
0084F7C3: push ecx
0084F7C4: fstp real8 ptr [esp]
0084F7C7: call 00410790h ; msvbvm60.dll.__vbaStrR8
0084F7CC: mov edx, eax
0084F7CE: lea ecx, var_3C
0084F7D1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084F7D6: push eax
0084F7D7: push 004417CCh ; sck
0084F7DC: call 00410A18h ; &
0084F7E1: mov var_80, eax
0084F7E4: mov var_00000088, 00000008h
0084F7EE: cmp [008F2010h], 00000000h
0084F7F5: jnz 84F812h
0084F7F7: push 008F2010h
0084F7FC: push 00433984h
0084F801: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0084F806: mov var_000001E4, 008F2010h
0084F810: jmp 84F81Ch
0084F812: mov var_000001E4, 008F2010h
0084F81C: mov var_00000170, 00000006h
0084F826: mov var_00000178, 00000003h
0084F830: lea eax, var_44
0084F833: push eax
0084F834: mov eax, [ebp+08h]
0084F837: mov eax, [eax]
0084F839: push [ebp+08h]
0084F83C: call [eax+000001C0h]
0084F842: fclex 
0084F844: mov var_00000190, eax
0084F84A: cmp var_00000190, 00000000h
0084F851: jnl 84F873h
0084F853: push 000001C0h
0084F858: push 00443D28h
0084F85D: push [ebp+08h]
0084F860: push var_00000190
0084F866: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084F86B: mov var_000001E8, eax
0084F871: jmp 84F87Ah
0084F873: and var_000001E8, 00000000h
0084F87A: push var_44
0084F87D: call 004109DCh ; Val(arg_1)
0084F882: push ecx
0084F883: push ecx
0084F884: fstp real8 ptr [esp]
0084F887: call 00410790h ; msvbvm60.dll.__vbaStrR8
0084F88C: mov edx, eax
0084F88E: lea ecx, var_48
0084F891: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084F896: push eax
0084F897: push 004417CCh ; sck
0084F89C: call 00410A18h ; &
0084F8A1: mov var_000000C0, eax
0084F8A7: mov var_000000C8, 00000008h
0084F8B1: cmp [008F2010h], 00000000h
0084F8B8: jnz 84F8D5h
0084F8BA: push 008F2010h
0084F8BF: push 00433984h
0084F8C4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0084F8C9: mov var_000001EC, 008F2010h
0084F8D3: jmp 84F8DFh
0084F8D5: mov var_000001EC, 008F2010h
0084F8DF: push 00000010h
0084F8E1: pop eax
0084F8E2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084F8E7: lea esi, var_00000148
0084F8ED: mov edi, esp
0084F8EF: movsd 
0084F8F0: movsd 
0084F8F1: movsd 
0084F8F2: movsd 
0084F8F3: push 00000001h
0084F8F5: push 00000010h
0084F8F7: push 00440E58h
0084F8FC: push 00000010h
0084F8FE: pop eax
0084F8FF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084F904: lea esi, var_00000088
0084F90A: mov edi, esp
0084F90C: movsd 
0084F90D: movsd 
0084F90E: movsd 
0084F90F: movsd 
0084F910: push 00000001h
0084F912: push 00000000h
0084F914: push 00440E48h
0084F919: push 00000000h
0084F91B: push 00000018h
0084F91D: mov eax, var_000001E4
0084F923: mov eax, [eax]
0084F925: mov ecx, var_000001E4
0084F92B: mov ecx, [ecx]
0084F92D: mov ecx, [ecx]
0084F92F: push eax
0084F930: call [ecx+00000550h]
0084F936: push eax
0084F937: lea eax, var_54
0084F93A: push eax
0084F93B: call 00410A84h ; Set (object)
0084F940: push eax
0084F941: lea eax, var_78
0084F944: push eax
0084F945: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084F94A: add esp, 00000010h
0084F94D: push eax
0084F94E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084F953: push eax
0084F954: lea eax, var_58
0084F957: push eax
0084F958: call 00410A84h ; Set (object)
0084F95D: push eax
0084F95E: lea eax, var_00000098
0084F964: push eax
0084F965: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084F96A: add esp, 00000020h
0084F96D: push eax
0084F96E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084F973: push eax
0084F974: lea eax, var_5C
0084F977: push eax
0084F978: call 00410A84h ; Set (object)
0084F97D: push eax
0084F97E: lea eax, var_000000A8
0084F984: push eax
0084F985: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084F98A: add esp, 00000020h
0084F98D: push eax
0084F98E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0084F993: mov edx, eax
0084F995: lea ecx, var_40
0084F998: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084F99D: push eax
0084F99E: push 004495B0h
0084F9A3: call 00410A18h ; &
0084F9A8: mov edx, eax
0084F9AA: lea ecx, var_4C
0084F9AD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084F9B2: push eax
0084F9B3: push 00000010h
0084F9B5: pop eax
0084F9B6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084F9BB: lea esi, var_00000178
0084F9C1: mov edi, esp
0084F9C3: movsd 
0084F9C4: movsd 
0084F9C5: movsd 
0084F9C6: movsd 
0084F9C7: push 00000001h
0084F9C9: push 00000010h
0084F9CB: push 00440E58h
0084F9D0: push 00000010h
0084F9D2: pop eax
0084F9D3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084F9D8: lea esi, var_000000C8
0084F9DE: mov edi, esp
0084F9E0: movsd 
0084F9E1: movsd 
0084F9E2: movsd 
0084F9E3: movsd 
0084F9E4: push 00000001h
0084F9E6: push 00000000h
0084F9E8: push 00440E48h
0084F9ED: push 00000000h
0084F9EF: push 00000018h
0084F9F1: mov eax, var_000001EC
0084F9F7: mov eax, [eax]
0084F9F9: mov ecx, var_000001EC
0084F9FF: mov ecx, [ecx]
0084FA01: mov ecx, [ecx]
0084FA03: push eax
0084FA04: call [ecx+00000550h]
0084FA0A: push eax
0084FA0B: lea eax, var_60
0084FA0E: push eax
0084FA0F: call 00410A84h ; Set (object)
0084FA14: push eax
0084FA15: lea eax, var_000000B8
0084FA1B: push eax
0084FA1C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084FA21: add esp, 00000010h
0084FA24: push eax
0084FA25: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084FA2A: push eax
0084FA2B: lea eax, var_64
0084FA2E: push eax
0084FA2F: call 00410A84h ; Set (object)
0084FA34: push eax
0084FA35: lea eax, var_000000D8
0084FA3B: push eax
0084FA3C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084FA41: add esp, 00000020h
0084FA44: push eax
0084FA45: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084FA4A: push eax
0084FA4B: lea eax, var_68
0084FA4E: push eax
0084FA4F: call 00410A84h ; Set (object)
0084FA54: push eax
0084FA55: lea eax, var_000000E8
0084FA5B: push eax
0084FA5C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084FA61: add esp, 00000020h
0084FA64: push eax
0084FA65: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0084FA6A: mov edx, eax
0084FA6C: lea ecx, var_50
0084FA6F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084FA74: push eax
0084FA75: call 00410A18h ; &
0084FA7A: mov edx, eax
0084FA7C: lea ecx, var_34
0084FA7F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084FA84: lea eax, var_50
0084FA87: push eax
0084FA88: lea eax, var_4C
0084FA8B: push eax
0084FA8C: lea eax, var_48
0084FA8F: push eax
0084FA90: lea eax, var_44
0084FA93: push eax
0084FA94: lea eax, var_40
0084FA97: push eax
0084FA98: lea eax, var_3C
0084FA9B: push eax
0084FA9C: lea eax, var_38
0084FA9F: push eax
0084FAA0: push 00000007h
0084FAA2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084FAA7: add esp, 00000020h
0084FAAA: lea eax, var_68
0084FAAD: push eax
0084FAAE: lea eax, var_64
0084FAB1: push eax
0084FAB2: lea eax, var_60
0084FAB5: push eax
0084FAB6: lea eax, var_5C
0084FAB9: push eax
0084FABA: lea eax, var_58
0084FABD: push eax
0084FABE: lea eax, var_54
0084FAC1: push eax
0084FAC2: push 00000006h
0084FAC4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084FAC9: add esp, 0000001Ch
0084FACC: lea eax, var_000000E8
0084FAD2: push eax
0084FAD3: lea eax, var_000000D8
0084FAD9: push eax
0084FADA: lea eax, var_000000C8
0084FAE0: push eax
0084FAE1: lea eax, var_000000B8
0084FAE7: push eax
0084FAE8: lea eax, var_000000A8
0084FAEE: push eax
0084FAEF: lea eax, var_00000098
0084FAF5: push eax
0084FAF6: lea eax, var_00000088
0084FAFC: push eax
0084FAFD: lea eax, var_78
0084FB00: push eax
0084FB01: push 00000008h
0084FB03: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084FB08: add esp, 00000024h
0084FB0B: mov var_04, 00000004h
0084FB12: mov eax, [ebp+0Ch]
0084FB15: mov ax, [eax]
0084FB18: mov var_000001C0, ax
0084FB1F: movsx eax, word ptr var_000001C0
0084FB26: mov var_000001F0, eax
0084FB2C: cmp var_000001F0, 00000000h
0084FB33: jz 84FB59h
0084FB35: cmp var_000001F0, 00000002h
0084FB3C: jz 0084FC65h
0084FB42: cmp var_000001F0, 00000003h
0084FB49: jz 00850989h
0084FB4F: jmp 008509F5h
0084FB54: jmp 008509F5h
0084FB59: mov var_04, 00000006h
0084FB60: call 007D274Eh
0084FB65: mov edx, eax
0084FB67: lea ecx, var_38
0084FB6A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084FB6F: push eax
0084FB70: push 00441B28h
0084FB75: call 00410A18h ; &
0084FB7A: mov edx, eax
0084FB7C: lea ecx, var_3C
0084FB7F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084FB84: push eax
0084FB85: push 00000000h
0084FB87: push 00000008h
0084FB89: push 00440E58h
0084FB8E: push 00000000h
0084FB90: push 00000017h
0084FB92: mov eax, [ebp+08h]
0084FB95: mov eax, [eax]
0084FB97: push [ebp+08h]
0084FB9A: call [eax+00000318h]
0084FBA0: push eax
0084FBA1: lea eax, var_54
0084FBA4: push eax
0084FBA5: call 00410A84h ; Set (object)
0084FBAA: push eax
0084FBAB: lea eax, var_78
0084FBAE: push eax
0084FBAF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084FBB4: add esp, 00000010h
0084FBB7: push eax
0084FBB8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084FBBD: push eax
0084FBBE: lea eax, var_58
0084FBC1: push eax
0084FBC2: call 00410A84h ; Set (object)
0084FBC7: push eax
0084FBC8: lea eax, var_00000088
0084FBCE: push eax
0084FBCF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084FBD4: add esp, 00000010h
0084FBD7: push eax
0084FBD8: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084FBDD: push eax
0084FBDE: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0084FBE3: mov edx, eax
0084FBE5: lea ecx, var_40
0084FBE8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084FBED: push eax
0084FBEE: call 00410A18h ; &
0084FBF3: mov edx, eax
0084FBF5: lea ecx, var_44
0084FBF8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084FBFD: push eax
0084FBFE: push 0044D3C8h ; ac.wav
0084FC03: call 00410A18h ; &
0084FC08: mov edx, eax
0084FC0A: lea ecx, var_48
0084FC0D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084FC12: lea eax, var_48
0084FC15: push eax
0084FC16: call 007C4A46h
0084FC1B: lea eax, var_48
0084FC1E: push eax
0084FC1F: lea eax, var_44
0084FC22: push eax
0084FC23: lea eax, var_40
0084FC26: push eax
0084FC27: lea eax, var_3C
0084FC2A: push eax
0084FC2B: lea eax, var_38
0084FC2E: push eax
0084FC2F: push 00000005h
0084FC31: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084FC36: add esp, 00000018h
0084FC39: lea eax, var_58
0084FC3C: push eax
0084FC3D: lea eax, var_54
0084FC40: push eax
0084FC41: push 00000002h
0084FC43: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084FC48: add esp, 0000000Ch
0084FC4B: lea eax, var_00000088
0084FC51: push eax
0084FC52: lea eax, var_78
0084FC55: push eax
0084FC56: push 00000002h
0084FC58: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084FC5D: add esp, 0000000Ch
0084FC60: jmp 008509F5h
0084FC65: mov var_04, 00000008h
0084FC6C: mov var_00000130, 00000001h
0084FC76: mov var_00000138, 00000002h
0084FC80: push 00000000h
0084FC82: push 00000001h
0084FC84: push 00440E48h
0084FC89: push 00000000h
0084FC8B: push 00000018h
0084FC8D: mov eax, [ebp+08h]
0084FC90: mov eax, [eax]
0084FC92: push [ebp+08h]
0084FC95: call [eax+00000318h]
0084FC9B: push eax
0084FC9C: lea eax, var_54
0084FC9F: push eax
0084FCA0: call 00410A84h ; Set (object)
0084FCA5: push eax
0084FCA6: lea eax, var_78
0084FCA9: push eax
0084FCAA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084FCAF: add esp, 00000010h
0084FCB2: push eax
0084FCB3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084FCB8: push eax
0084FCB9: lea eax, var_58
0084FCBC: push eax
0084FCBD: call 00410A84h ; Set (object)
0084FCC2: push eax
0084FCC3: lea eax, var_00000088
0084FCC9: push eax
0084FCCA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084FCCF: add esp, 00000010h
0084FCD2: push eax
0084FCD3: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0084FCD8: mov var_00000140, eax
0084FCDE: mov var_00000148, 00000003h
0084FCE8: mov var_00000150, 00000001h
0084FCF2: mov var_00000158, 00000002h
0084FCFC: lea eax, var_00000138
0084FD02: push eax
0084FD03: lea eax, var_00000148
0084FD09: push eax
0084FD0A: lea eax, var_00000158
0084FD10: push eax
0084FD11: lea eax, var_000001BC
0084FD17: push eax
0084FD18: lea eax, var_000001AC
0084FD1E: push eax
0084FD1F: lea eax, var_30
0084FD22: push eax
0084FD23: call 00410A3Ch ; For
0084FD28: mov var_000001D8, eax
0084FD2E: lea eax, var_58
0084FD31: push eax
0084FD32: lea eax, var_54
0084FD35: push eax
0084FD36: push 00000002h
0084FD38: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084FD3D: add esp, 0000000Ch
0084FD40: lea eax, var_00000088
0084FD46: push eax
0084FD47: lea eax, var_78
0084FD4A: push eax
0084FD4B: push 00000002h
0084FD4D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084FD52: add esp, 0000000Ch
0084FD55: jmp 0085097Ah
0084FD5A: mov var_04, 00000009h
0084FD61: lea eax, var_30
0084FD64: mov var_00000130, eax
0084FD6A: mov var_00000138, 0000400Ch
0084FD74: push 00000000h
0084FD76: push 00000004h
0084FD78: push 00440E58h
0084FD7D: push 00000010h
0084FD7F: pop eax
0084FD80: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0084FD85: lea esi, var_00000138
0084FD8B: mov edi, esp
0084FD8D: movsd 
0084FD8E: movsd 
0084FD8F: movsd 
0084FD90: movsd 
0084FD91: push 00000001h
0084FD93: push 00000000h
0084FD95: push 00440E48h
0084FD9A: push 00000000h
0084FD9C: push 00000018h
0084FD9E: mov eax, [ebp+08h]
0084FDA1: mov eax, [eax]
0084FDA3: push [ebp+08h]
0084FDA6: call [eax+00000318h]
0084FDAC: push eax
0084FDAD: lea eax, var_54
0084FDB0: push eax
0084FDB1: call 00410A84h ; Set (object)
0084FDB6: push eax
0084FDB7: lea eax, var_78
0084FDBA: push eax
0084FDBB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084FDC0: add esp, 00000010h
0084FDC3: push eax
0084FDC4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084FDC9: push eax
0084FDCA: lea eax, var_58
0084FDCD: push eax
0084FDCE: call 00410A84h ; Set (object)
0084FDD3: push eax
0084FDD4: lea eax, var_00000088
0084FDDA: push eax
0084FDDB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084FDE0: add esp, 00000020h
0084FDE3: push eax
0084FDE4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0084FDE9: push eax
0084FDEA: lea eax, var_5C
0084FDED: push eax
0084FDEE: call 00410A84h ; Set (object)
0084FDF3: push eax
0084FDF4: lea eax, var_00000098
0084FDFA: push eax
0084FDFB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0084FE00: add esp, 00000010h
0084FE03: push eax
0084FE04: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0084FE09: sub ax, FFFFh
0084FE0D: neg ax
0084FE10: sbb eax, eax
0084FE12: inc eax
0084FE13: neg eax
0084FE15: mov var_0000018C, ax
0084FE1C: lea eax, var_5C
0084FE1F: push eax
0084FE20: lea eax, var_58
0084FE23: push eax
0084FE24: lea eax, var_54
0084FE27: push eax
0084FE28: push 00000003h
0084FE2A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0084FE2F: add esp, 00000010h
0084FE32: lea eax, var_00000098
0084FE38: push eax
0084FE39: lea eax, var_00000088
0084FE3F: push eax
0084FE40: lea eax, var_78
0084FE43: push eax
0084FE44: push 00000003h
0084FE46: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0084FE4B: add esp, 00000010h
0084FE4E: movsx eax, word ptr var_0000018C
0084FE55: test eax, eax
0084FE57: jz 00850956h
0084FE5D: mov var_04, 0000000Ah
0084FE64: cmp [008F529Ch], 00000000h
0084FE6B: jnz 84FE88h
0084FE6D: push 008F529Ch
0084FE72: push 00440F2Ch
0084FE77: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0084FE7C: mov var_000001F4, 008F529Ch
0084FE86: jmp 84FE92h
0084FE88: mov var_000001F4, 008F529Ch
0084FE92: mov eax, var_000001F4
0084FE98: mov eax, [eax]
0084FE9A: mov var_0000018C, eax
0084FEA0: lea eax, var_54
0084FEA3: push eax
0084FEA4: mov eax, var_0000018C
0084FEAA: mov eax, [eax]
0084FEAC: push var_0000018C
0084FEB2: call [eax+14h]
0084FEB5: fclex 
0084FEB7: mov var_00000190, eax
0084FEBD: cmp var_00000190, 00000000h
0084FEC4: jnl 84FEE6h
0084FEC6: push 00000014h
0084FEC8: push 00440F1Ch
0084FECD: push var_0000018C
0084FED3: push var_00000190
0084FED9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084FEDE: mov var_000001F8, eax
0084FEE4: jmp 84FEEDh
0084FEE6: and var_000001F8, 00000000h
0084FEED: mov eax, var_54
0084FEF0: mov var_00000194, eax
0084FEF6: lea eax, var_38
0084FEF9: push eax
0084FEFA: mov eax, var_00000194
0084FF00: mov eax, [eax]
0084FF02: push var_00000194
0084FF08: call [eax+50h]
0084FF0B: fclex 
0084FF0D: mov var_00000198, eax
0084FF13: cmp var_00000198, 00000000h
0084FF1A: jnl 84FF3Ch
0084FF1C: push 00000050h
0084FF1E: push 00440F3Ch
0084FF23: push var_00000194
0084FF29: push var_00000198
0084FF2F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0084FF34: mov var_000001FC, eax
0084FF3A: jmp 84FF43h
0084FF3C: and var_000001FC, 00000000h
0084FF43: push var_38
0084FF46: push 0044ADB8h ; \Files
0084FF4B: call 00410A18h ; &
0084FF50: mov edx, eax
0084FF52: lea ecx, var_3C
0084FF55: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0084FF5A: lea eax, var_3C
0084FF5D: push eax
0084FF5E: call 0075079Ah
0084FF63: neg ax
0084FF66: sbb eax, eax
0084FF68: inc eax
0084FF69: neg eax
0084FF6B: mov var_0000019C, ax
0084FF72: lea eax, var_3C
0084FF75: push eax
0084FF76: lea eax, var_38
0084FF79: push eax
0084FF7A: push 00000002h
0084FF7C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0084FF81: add esp, 0000000Ch
0084FF84: lea ecx, var_54
0084FF87: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0084FF8C: movsx eax, word ptr var_0000019C
0084FF93: test eax, eax
0084FF95: jz 008500B8h
0084FF9B: mov var_04, 0000000Bh
0084FFA2: cmp [008F529Ch], 00000000h
0084FFA9: jnz 84FFC6h
0084FFAB: push 008F529Ch
0084FFB0: push 00440F2Ch
0084FFB5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0084FFBA: mov var_00000200, 008F529Ch
0084FFC4: jmp 84FFD0h
0084FFC6: mov var_00000200, 008F529Ch
0084FFD0: mov eax, var_00000200
0084FFD6: mov eax, [eax]
0084FFD8: mov var_0000018C, eax
0084FFDE: lea eax, var_54
0084FFE1: push eax
0084FFE2: mov eax, var_0000018C
0084FFE8: mov eax, [eax]
0084FFEA: push var_0000018C
0084FFF0: call [eax+14h]
0084FFF3: fclex 
0084FFF5: mov var_00000190, eax
0084FFFB: cmp var_00000190, 00000000h
00850002: jnl 850024h
00850004: push 00000014h
00850006: push 00440F1Ch
0085000B: push var_0000018C
00850011: push var_00000190
00850017: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085001C: mov var_00000204, eax
00850022: jmp 85002Bh
00850024: and var_00000204, 00000000h
0085002B: mov eax, var_54
0085002E: mov var_00000194, eax
00850034: lea eax, var_38
00850037: push eax
00850038: mov eax, var_00000194
0085003E: mov eax, [eax]
00850040: push var_00000194
00850046: call [eax+50h]
00850049: fclex 
0085004B: mov var_00000198, eax
00850051: cmp var_00000198, 00000000h
00850058: jnl 85007Ah
0085005A: push 00000050h
0085005C: push 00440F3Ch
00850061: push var_00000194
00850067: push var_00000198
0085006D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00850072: mov var_00000208, eax
00850078: jmp 850081h
0085007A: and var_00000208, 00000000h
00850081: push var_38
00850084: push 0044ADB8h ; \Files
00850089: call 00410A18h ; &
0085008E: mov edx, eax
00850090: lea ecx, var_3C
00850093: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00850098: push eax
00850099: call 00410850h ; MkDir(arg_1)
0085009E: lea eax, var_3C
008500A1: push eax
008500A2: lea eax, var_38
008500A5: push eax
008500A6: push 00000002h
008500A8: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008500AD: add esp, 0000000Ch
008500B0: lea ecx, var_54
008500B3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008500B8: mov var_04, 0000000Dh
008500BF: cmp [008F529Ch], 00000000h
008500C6: jnz 8500E3h
008500C8: push 008F529Ch
008500CD: push 00440F2Ch
008500D2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008500D7: mov var_0000020C, 008F529Ch
008500E1: jmp 8500EDh
008500E3: mov var_0000020C, 008F529Ch
008500ED: mov eax, var_0000020C
008500F3: mov eax, [eax]
008500F5: mov var_0000018C, eax
008500FB: lea eax, var_54
008500FE: push eax
008500FF: mov eax, var_0000018C
00850105: mov eax, [eax]
00850107: push var_0000018C
0085010D: call [eax+14h]
00850110: fclex 
00850112: mov var_00000190, eax
00850118: cmp var_00000190, 00000000h
0085011F: jnl 850141h
00850121: push 00000014h
00850123: push 00440F1Ch
00850128: push var_0000018C
0085012E: push var_00000190
00850134: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00850139: mov var_00000210, eax
0085013F: jmp 850148h
00850141: and var_00000210, 00000000h
00850148: mov eax, var_54
0085014B: mov var_00000194, eax
00850151: lea eax, var_38
00850154: push eax
00850155: mov eax, var_00000194
0085015B: mov eax, [eax]
0085015D: push var_00000194
00850163: call [eax+50h]
00850166: fclex 
00850168: mov var_00000198, eax
0085016E: cmp var_00000198, 00000000h
00850175: jnl 850197h
00850177: push 00000050h
00850179: push 00440F3Ch
0085017E: push var_00000194
00850184: push var_00000198
0085018A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085018F: mov var_00000214, eax
00850195: jmp 85019Eh
00850197: and var_00000214, 00000000h
0085019E: push var_38
008501A1: push 0044D3DCh ; \Files\Audio
008501A6: call 00410A18h ; &
008501AB: mov edx, eax
008501AD: lea ecx, var_3C
008501B0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008501B5: lea eax, var_3C
008501B8: push eax
008501B9: call 0075079Ah
008501BE: neg ax
008501C1: sbb eax, eax
008501C3: inc eax
008501C4: neg eax
008501C6: mov var_0000019C, ax
008501CD: lea eax, var_3C
008501D0: push eax
008501D1: lea eax, var_38
008501D4: push eax
008501D5: push 00000002h
008501D7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008501DC: add esp, 0000000Ch
008501DF: lea ecx, var_54
008501E2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008501E7: movsx eax, word ptr var_0000019C
008501EE: test eax, eax
008501F0: jz 00850313h
008501F6: mov var_04, 0000000Eh
008501FD: cmp [008F529Ch], 00000000h
00850204: jnz 850221h
00850206: push 008F529Ch
0085020B: push 00440F2Ch
00850210: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00850215: mov var_00000218, 008F529Ch
0085021F: jmp 85022Bh
00850221: mov var_00000218, 008F529Ch
0085022B: mov eax, var_00000218
00850231: mov eax, [eax]
00850233: mov var_0000018C, eax
00850239: lea eax, var_54
0085023C: push eax
0085023D: mov eax, var_0000018C
00850243: mov eax, [eax]
00850245: push var_0000018C
0085024B: call [eax+14h]
0085024E: fclex 
00850250: mov var_00000190, eax
00850256: cmp var_00000190, 00000000h
0085025D: jnl 85027Fh
0085025F: push 00000014h
00850261: push 00440F1Ch
00850266: push var_0000018C
0085026C: push var_00000190
00850272: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00850277: mov var_0000021C, eax
0085027D: jmp 850286h
0085027F: and var_0000021C, 00000000h
00850286: mov eax, var_54
00850289: mov var_00000194, eax
0085028F: lea eax, var_38
00850292: push eax
00850293: mov eax, var_00000194
00850299: mov eax, [eax]
0085029B: push var_00000194
008502A1: call [eax+50h]
008502A4: fclex 
008502A6: mov var_00000198, eax
008502AC: cmp var_00000198, 00000000h
008502B3: jnl 8502D5h
008502B5: push 00000050h
008502B7: push 00440F3Ch
008502BC: push var_00000194
008502C2: push var_00000198
008502C8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008502CD: mov var_00000220, eax
008502D3: jmp 8502DCh
008502D5: and var_00000220, 00000000h
008502DC: push var_38
008502DF: push 0044D3DCh ; \Files\Audio
008502E4: call 00410A18h ; &
008502E9: mov edx, eax
008502EB: lea ecx, var_3C
008502EE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008502F3: push eax
008502F4: call 00410850h ; MkDir(arg_1)
008502F9: lea eax, var_3C
008502FC: push eax
008502FD: lea eax, var_38
00850300: push eax
00850301: push 00000002h
00850303: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00850308: add esp, 0000000Ch
0085030B: lea ecx, var_54
0085030E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00850313: mov var_04, 00000010h
0085031A: cmp [008F529Ch], 00000000h
00850321: jnz 85033Eh
00850323: push 008F529Ch
00850328: push 00440F2Ch
0085032D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00850332: mov var_00000224, 008F529Ch
0085033C: jmp 850348h
0085033E: mov var_00000224, 008F529Ch
00850348: mov eax, var_00000224
0085034E: mov eax, [eax]
00850350: mov var_0000018C, eax
00850356: lea eax, var_54
00850359: push eax
0085035A: mov eax, var_0000018C
00850360: mov eax, [eax]
00850362: push var_0000018C
00850368: call [eax+14h]
0085036B: fclex 
0085036D: mov var_00000190, eax
00850373: cmp var_00000190, 00000000h
0085037A: jnl 85039Ch
0085037C: push 00000014h
0085037E: push 00440F1Ch
00850383: push var_0000018C
00850389: push var_00000190
0085038F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00850394: mov var_00000228, eax
0085039A: jmp 8503A3h
0085039C: and var_00000228, 00000000h
008503A3: mov eax, var_54
008503A6: mov var_00000194, eax
008503AC: lea eax, var_38
008503AF: push eax
008503B0: mov eax, var_00000194
008503B6: mov eax, [eax]
008503B8: push var_00000194
008503BE: call [eax+50h]
008503C1: fclex 
008503C3: mov var_00000198, eax
008503C9: cmp var_00000198, 00000000h
008503D0: jnl 8503F2h
008503D2: push 00000050h
008503D4: push 00440F3Ch
008503D9: push var_00000194
008503DF: push var_00000198
008503E5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008503EA: mov var_0000022C, eax
008503F0: jmp 8503F9h
008503F2: and var_0000022C, 00000000h
008503F9: push var_38
008503FC: push 0044D3FCh ; \Files\Audio\
00850401: call 00410A18h ; &
00850406: mov edx, eax
00850408: lea ecx, var_3C
0085040B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00850410: push eax
00850411: push var_34
00850414: call 00410A18h ; &
00850419: mov edx, eax
0085041B: lea ecx, var_40
0085041E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00850423: lea eax, var_40
00850426: push eax
00850427: call 0075079Ah
0085042C: neg ax
0085042F: sbb eax, eax
00850431: inc eax
00850432: neg eax
00850434: mov var_0000019C, ax
0085043B: lea eax, var_40
0085043E: push eax
0085043F: lea eax, var_3C
00850442: push eax
00850443: lea eax, var_38
00850446: push eax
00850447: push 00000003h
00850449: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0085044E: add esp, 00000010h
00850451: lea ecx, var_54
00850454: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00850459: movsx eax, word ptr var_0000019C
00850460: test eax, eax
00850462: jz 0085059Ch
00850468: mov var_04, 00000011h
0085046F: cmp [008F529Ch], 00000000h
00850476: jnz 850493h
00850478: push 008F529Ch
0085047D: push 00440F2Ch
00850482: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00850487: mov var_00000230, 008F529Ch
00850491: jmp 85049Dh
00850493: mov var_00000230, 008F529Ch
0085049D: mov eax, var_00000230
008504A3: mov eax, [eax]
008504A5: mov var_0000018C, eax
008504AB: lea eax, var_54
008504AE: push eax
008504AF: mov eax, var_0000018C
008504B5: mov eax, [eax]
008504B7: push var_0000018C
008504BD: call [eax+14h]
008504C0: fclex 
008504C2: mov var_00000190, eax
008504C8: cmp var_00000190, 00000000h
008504CF: jnl 8504F1h
008504D1: push 00000014h
008504D3: push 00440F1Ch
008504D8: push var_0000018C
008504DE: push var_00000190
008504E4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008504E9: mov var_00000234, eax
008504EF: jmp 8504F8h
008504F1: and var_00000234, 00000000h
008504F8: mov eax, var_54
008504FB: mov var_00000194, eax
00850501: lea eax, var_38
00850504: push eax
00850505: mov eax, var_00000194
0085050B: mov eax, [eax]
0085050D: push var_00000194
00850513: call [eax+50h]
00850516: fclex 
00850518: mov var_00000198, eax
0085051E: cmp var_00000198, 00000000h
00850525: jnl 850547h
00850527: push 00000050h
00850529: push 00440F3Ch
0085052E: push var_00000194
00850534: push var_00000198
0085053A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085053F: mov var_00000238, eax
00850545: jmp 85054Eh
00850547: and var_00000238, 00000000h
0085054E: push var_38
00850551: push 0044D3FCh ; \Files\Audio\
00850556: call 00410A18h ; &
0085055B: mov edx, eax
0085055D: lea ecx, var_3C
00850560: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00850565: push eax
00850566: push var_34
00850569: call 00410A18h ; &
0085056E: mov edx, eax
00850570: lea ecx, var_40
00850573: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00850578: push eax
00850579: call 00410850h ; MkDir(arg_1)
0085057E: lea eax, var_40
00850581: push eax
00850582: lea eax, var_3C
00850585: push eax
00850586: lea eax, var_38
00850589: push eax
0085058A: push 00000003h
0085058C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00850591: add esp, 00000010h
00850594: lea ecx, var_54
00850597: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0085059C: mov var_04, 00000013h
008505A3: call 007D274Eh
008505A8: mov edx, eax
008505AA: lea ecx, var_50
008505AD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008505B2: cmp [008F529Ch], 00000000h
008505B9: jnz 8505D6h
008505BB: push 008F529Ch
008505C0: push 00440F2Ch
008505C5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008505CA: mov var_0000023C, 008F529Ch
008505D4: jmp 8505E0h
008505D6: mov var_0000023C, 008F529Ch
008505E0: mov eax, var_0000023C
008505E6: mov eax, [eax]
008505E8: mov var_0000018C, eax
008505EE: lea eax, var_54
008505F1: push eax
008505F2: mov eax, var_0000018C
008505F8: mov eax, [eax]
008505FA: push var_0000018C
00850600: call [eax+14h]
00850603: fclex 
00850605: mov var_00000190, eax
0085060B: cmp var_00000190, 00000000h
00850612: jnl 850634h
00850614: push 00000014h
00850616: push 00440F1Ch
0085061B: push var_0000018C
00850621: push var_00000190
00850627: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0085062C: mov var_00000240, eax
00850632: jmp 85063Bh
00850634: and var_00000240, 00000000h
0085063B: mov eax, var_54
0085063E: mov var_00000194, eax
00850644: lea eax, var_3C
00850647: push eax
00850648: mov eax, var_00000194
0085064E: mov eax, [eax]
00850650: push var_00000194
00850656: call [eax+50h]
00850659: fclex 
0085065B: mov var_00000198, eax
00850661: cmp var_00000198, 00000000h
00850668: jnl 85068Ah
0085066A: push 00000050h
0085066C: push 00440F3Ch
00850671: push var_00000194
00850677: push var_00000198
0085067D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00850682: mov var_00000244, eax
00850688: jmp 850691h
0085068A: and var_00000244, 00000000h
00850691: push var_3C
00850694: push 0044D3FCh ; \Files\Audio\
00850699: call 00410A18h ; &
0085069E: mov edx, eax
008506A0: lea ecx, var_40
008506A3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008506A8: push eax
008506A9: push var_34
008506AC: call 00410A18h ; &
008506B1: mov edx, eax
008506B3: lea ecx, var_44
008506B6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008506BB: push eax
008506BC: push 0044D41Ch ; \stream(
008506C1: call 00410A18h ; &
008506C6: mov var_000000A0, eax
008506CC: mov var_000000A8, 00000008h
008506D6: mov var_00000140, 0044D434h ; ) [
008506E0: mov var_00000148, 00000008h
008506EA: mov var_00000160, 00000003h
008506F4: mov var_00000168, 00000003h
008506FE: lea eax, var_30
00850701: mov var_00000150, eax
00850707: mov var_00000158, 0000400Ch
00850711: push 00000010h
00850713: pop eax
00850714: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00850719: lea esi, var_00000168
0085071F: mov edi, esp
00850721: movsd 
00850722: movsd 
00850723: movsd 
00850724: movsd 
00850725: push 00000001h
00850727: push 00000010h
00850729: push 00440E58h
0085072E: push 00000010h
00850730: pop eax
00850731: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00850736: lea esi, var_00000158
0085073C: mov edi, esp
0085073E: movsd 
0085073F: movsd 
00850740: movsd 
00850741: movsd 
00850742: push 00000001h
00850744: push 00000000h
00850746: push 00440E48h
0085074B: push 00000000h
0085074D: push 00000018h
0085074F: mov eax, [ebp+08h]
00850752: mov eax, [eax]
00850754: push [ebp+08h]
00850757: call [eax+00000318h]
0085075D: push eax
0085075E: lea eax, var_58
00850761: push eax
00850762: call 00410A84h ; Set (object)
00850767: push eax
00850768: lea eax, var_000000D8
0085076E: push eax
0085076F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00850774: add esp, 00000010h
00850777: push eax
00850778: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085077D: push eax
0085077E: lea eax, var_5C
00850781: push eax
00850782: call 00410A84h ; Set (object)
00850787: push eax
00850788: lea eax, var_000000E8
0085078E: push eax
0085078F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00850794: add esp, 00000020h
00850797: push eax
00850798: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0085079D: push eax
0085079E: lea eax, var_60
008507A1: push eax
008507A2: call 00410A84h ; Set (object)
008507A7: push eax
008507A8: lea eax, var_000000F8
008507AE: push eax
008507AF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008507B4: add esp, 00000020h
008507B7: push eax
008507B8: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008507BD: mov var_00000100, eax
008507C3: mov var_00000108, 00000008h
008507CD: mov var_00000180, 0044D440h ; ].wav
008507D7: mov var_00000188, 00000008h
008507E1: mov eax, var_50
008507E4: mov var_000001DC, eax
008507EA: and var_50, 00000000h
008507EE: mov edx, var_000001DC
008507F4: lea ecx, var_38
008507F7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008507FC: push eax
008507FD: push 00441B28h
00850802: call 00410A18h ; &
00850807: mov var_70, eax
0085080A: mov var_78, 00000008h
00850811: mov var_00000130, 0044D3C8h ; ac.wav
0085081B: mov var_00000138, 00000008h
00850825: lea eax, var_000000A8
0085082B: push eax
0085082C: lea eax, var_30
0085082F: push eax
00850830: lea eax, var_000000B8
00850836: push eax
00850837: call 004109F4h ; msvbvm60.dll.__vbaVarCat
0085083C: push eax
0085083D: lea eax, var_00000148
00850843: push eax
00850844: lea eax, var_000000C8
0085084A: push eax
0085084B: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00850850: push eax
00850851: lea eax, var_00000108
00850857: push eax
00850858: lea eax, var_00000118
0085085E: push eax
0085085F: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00850864: push eax
00850865: lea eax, var_00000188
0085086B: push eax
0085086C: lea eax, var_00000128
00850872: push eax
00850873: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00850878: push eax
00850879: lea eax, var_4C
0085087C: push eax
0085087D: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
00850882: push eax
00850883: lea eax, var_78
00850886: push eax
00850887: lea eax, var_30
0085088A: push eax
0085088B: lea eax, var_00000088
00850891: push eax
00850892: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00850897: push eax
00850898: lea eax, var_00000138
0085089E: push eax
0085089F: lea eax, var_00000098
008508A5: push eax
008508A6: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008508AB: push eax
008508AC: lea eax, var_48
008508AF: push eax
008508B0: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008508B5: push eax
008508B6: call 004108BCh ; FileCopy
008508BB: lea eax, var_50
008508BE: push eax
008508BF: lea eax, var_4C
008508C2: push eax
008508C3: lea eax, var_48
008508C6: push eax
008508C7: lea eax, var_44
008508CA: push eax
008508CB: lea eax, var_40
008508CE: push eax
008508CF: lea eax, var_3C
008508D2: push eax
008508D3: lea eax, var_38
008508D6: push eax
008508D7: push 00000007h
008508D9: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008508DE: add esp, 00000020h
008508E1: lea eax, var_60
008508E4: push eax
008508E5: lea eax, var_5C
008508E8: push eax
008508E9: lea eax, var_58
008508EC: push eax
008508ED: lea eax, var_54
008508F0: push eax
008508F1: push 00000004h
008508F3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008508F8: add esp, 00000014h
008508FB: lea eax, var_00000128
00850901: push eax
00850902: lea eax, var_00000098
00850908: push eax
00850909: lea eax, var_00000118
0085090F: push eax
00850910: lea eax, var_00000108
00850916: push eax
00850917: lea eax, var_000000C8
0085091D: push eax
0085091E: lea eax, var_000000F8
00850924: push eax
00850925: lea eax, var_000000E8
0085092B: push eax
0085092C: lea eax, var_000000D8
00850932: push eax
00850933: lea eax, var_000000B8
00850939: push eax
0085093A: lea eax, var_000000A8
00850940: push eax
00850941: lea eax, var_00000088
00850947: push eax
00850948: lea eax, var_78
0085094B: push eax
0085094C: push 0000000Ch
0085094E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00850953: add esp, 00000034h
00850956: mov var_04, 00000015h
0085095D: lea eax, var_000001BC
00850963: push eax
00850964: lea eax, var_000001AC
0085096A: push eax
0085096B: lea eax, var_30
0085096E: push eax
0085096F: call 00410A36h ; Next
00850974: mov var_000001D8, eax
0085097A: cmp var_000001D8, 00000000h
00850981: jnz 0084FD5Ah
00850987: jmp 8509F5h
00850989: mov var_04, 00000017h
00850990: push 00000000h
00850992: push 00000003h
00850994: push 00440E48h
00850999: push 00000000h
0085099B: push 00000018h
0085099D: mov eax, [ebp+08h]
008509A0: mov eax, [eax]
008509A2: push [ebp+08h]
008509A5: call [eax+00000318h]
008509AB: push eax
008509AC: lea eax, var_54
008509AF: push eax
008509B0: call 00410A84h ; Set (object)
008509B5: push eax
008509B6: lea eax, var_78
008509B9: push eax
008509BA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008509BF: add esp, 00000010h
008509C2: push eax
008509C3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008509C8: push eax
008509C9: lea eax, var_58
008509CC: push eax
008509CD: call 00410A84h ; Set (object)
008509D2: push eax
008509D3: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008509D8: add esp, 0000000Ch
008509DB: lea eax, var_58
008509DE: push eax
008509DF: lea eax, var_54
008509E2: push eax
008509E3: push 00000002h
008509E5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008509EA: add esp, 0000000Ch
008509ED: lea ecx, var_78
008509F0: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008509F5: mov var_10, 00000000h
008509FC: wait 
008509FD: push 00850AD4h
00850A02: jmp 00850AABh
00850A07: lea eax, var_50
00850A0A: push eax
00850A0B: lea eax, var_4C
00850A0E: push eax
00850A0F: lea eax, var_48
00850A12: push eax
00850A13: lea eax, var_44
00850A16: push eax
00850A17: lea eax, var_40
00850A1A: push eax
00850A1B: lea eax, var_3C
00850A1E: push eax
00850A1F: lea eax, var_38
00850A22: push eax
00850A23: push 00000007h
00850A25: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00850A2A: add esp, 00000020h
00850A2D: lea eax, var_68
00850A30: push eax
00850A31: lea eax, var_64
00850A34: push eax
00850A35: lea eax, var_60
00850A38: push eax
00850A39: lea eax, var_5C
00850A3C: push eax
00850A3D: lea eax, var_58
00850A40: push eax
00850A41: lea eax, var_54
00850A44: push eax
00850A45: push 00000006h
00850A47: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00850A4C: add esp, 0000001Ch
00850A4F: lea eax, var_00000128
00850A55: push eax
00850A56: lea eax, var_00000118
00850A5C: push eax
00850A5D: lea eax, var_00000108
00850A63: push eax
00850A64: lea eax, var_000000F8
00850A6A: push eax
00850A6B: lea eax, var_000000E8
00850A71: push eax
00850A72: lea eax, var_000000D8
00850A78: push eax
00850A79: lea eax, var_000000C8
00850A7F: push eax
00850A80: lea eax, var_000000B8
00850A86: push eax
00850A87: lea eax, var_000000A8
00850A8D: push eax
00850A8E: lea eax, var_00000098
00850A94: push eax
00850A95: lea eax, var_00000088
00850A9B: push eax
00850A9C: lea eax, var_78
00850A9F: push eax
00850AA0: push 0000000Ch
00850AA2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00850AA7: add esp, 00000034h
00850AAA: ret 
End Sub

