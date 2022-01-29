VERSION 5.00
Begin VB.Form frmScreenshot
  Caption = "Screenshot"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 5 'Sizable ToolWindow
  LinkTopic = "Form1"
  MinButton = 0   'False
  ClientLeft = 60
  ClientTop = 330
  ClientWidth = 12390
  ClientHeight = 6765
  StartUpPosition = 3 'Windows Default
  Begin VB.Frame frmScreenPanel
    Caption = "Panel"
    ForeColor = &H80000008&
    Left = 60
    Top = 6000
    Width = 12255
    Height = 735
    TabIndex = 3
    Appearance = 0 'Flat
    BorderStyle = 0 'None
    Begin VB.VScrollBar scrScreenInterval
      Left = 3480
      Top = 80
      Width = 255
      Height = 255
      TabIndex = 12
      Min = 30000
      Max = 0
      SmallChange = 100
      Value = 232
      Top = 3343359
    End
    Begin VB.TextBox txtScreenInterval
      Left = 2760
      Top = 80
      Width = 735
      Height = 285
      Text = "100"
      TabIndex = 11
      MaxLength = 5
    End
    Begin VB.ComboBox cmbScreenSize
      Style = 2
      Left = 4200
      Top = 45
      Width = 855
      Height = 315
      TabIndex = 10
      List = "frmScreenshot.frx":0
      ItemData = "frmScreenshot.frx":33
    End
    Begin VB.ComboBox cmbScreenBits
      Style = 2
      Left = 5520
      Top = 45
      Width = 855
      Height = 315
      TabIndex = 9
      List = "frmScreenshot.frx":5B
      ItemData = "frmScreenshot.frx":6C
    End
    Begin VB.ComboBox cmbScreenQuality
      Style = 2
      Left = 7080
      Top = 45
      Width = 855
      Height = 315
      TabIndex = 4
      List = "frmScreenshot.frx":7C
      ItemData = "frmScreenshot.frx":A9
    End
    Begin XtremeSuiteControls.CheckBox chkScreenKeyboard
      Left = 9360
      Top = 60
      Width = 975
      Height = 255
      TabIndex = 5
    End
    Begin XtremeSuiteControls.PushButton cmdScreencapHide
      Left = 12000
      Top = 60
      Width = 255
      Height = 255
      TabIndex = 6
    End
    Begin XtremeSuiteControls.PushButton cmdScreenSingel
      Left = 1080
      Top = 90
      Width = 975
      Height = 255
      TabIndex = 7
    End
    Begin XtremeSuiteControls.PushButton cmdScreenStart
      Left = 0
      Top = 90
      Width = 975
      Height = 255
      TabIndex = 8
    End
    Begin XtremeSuiteControls.CheckBox chkScreenMouse
      Left = 10440
      Top = 60
      Width = 735
      Height = 255
      TabIndex = 13
    End
    Begin XtremeSuiteControls.ProgressBar pbScreenshot
      Left = 0
      Top = 420
      Width = 12255
      Height = 210
      TabIndex = 14
    End
    Begin XtremeSuiteControls.CheckBox chkScreenSave
      Left = 11280
      Top = 60
      Width = 615
      Height = 255
      TabIndex = 15
    End
    Begin XtremeSuiteControls.CheckBox chkScreenGrayscale
      Left = 8280
      Top = 60
      Width = 975
      Height = 255
      TabIndex = 16
    End
    Begin VB.Label Label3
      Caption = "Interval:"
      Left = 2160
      Top = 105
      Width = 615
      Height = 255
      TabIndex = 20
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label1
      Caption = "Bits:"
      Left = 5160
      Top = 105
      Width = 345
      Height = 255
      TabIndex = 19
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label4
      Caption = "Size:"
      Left = 3840
      Top = 105
      Width = 375
      Height = 255
      TabIndex = 18
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label2
      Caption = "Quality:"
      Left = 6480
      Top = 105
      Width = 585
      Height = 255
      TabIndex = 17
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
  End
  Begin VB.PictureBox imgScreenCap
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 12375
    Height = 5895
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    Appearance = 0 'Flat
    Begin VB.Timer tmrScreenKey
      Enabled = 0   'False
      Interval = 250
      Left = 2520
      Top = 0
    End
    Begin VB.Timer tmrFPS
      Interval = 1000
      Left = 1560
      Top = 0
    End
    Begin VB.Timer tmrCountdown
      Enabled = 0   'False
      Interval = 1
      Left = 2040
      Top = 0
    End
    Begin VB.Timer tmrScrCapMouse
      Interval = 500
      Left = 1080
      Top = 0
    End
    Begin VB.Timer tmrFullscreen
      Enabled = 0   'False
      Interval = 1
      Left = 600
      Top = 0
    End
    Begin VB.Timer tmrScreenCap
      Enabled = 0   'False
      Left = 120
      Top = 0
    End
    Begin VB.Timer Timer1
      Interval = 250
      Left = 600
      Top = 0
    End
    Begin VB.FileListBox flCaps
      Left = 11040
      Top = 600
      Width = 1095
      Height = 1650
      Visible = 0   'False
      TabIndex = 1
    End
    Begin VB.Timer tmrSS
      Enabled = 0   'False
      Left = 120
      Top = 0
    End
    Begin XtremeSuiteControls.PushButton cmdScreencapShow
      Left = 11760
      Top = 120
      Width = 375
      Height = 255
      Visible = 0   'False
      TabIndex = 2
    End
  End
End

Attribute VB_Name = "frmScreenshot"


Private sub cmdScreenStart__8AD960
008AD960: push ebp
008AD961: mov ebp, esp
008AD963: sub esp, 0000000Ch
008AD966: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008AD96B: mov eax, fs:[00h]
008AD971: push eax
008AD972: mov fs:[00000000h], esp
008AD979: mov eax, 000001B0h
008AD97E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AD983: push ebx
008AD984: push esi
008AD985: push edi
008AD986: mov var_0C, esp
008AD989: mov var_08, 0040E8C8h
008AD990: mov eax, [ebp+08h]
008AD993: and eax, 00000001h
008AD996: mov var_04, eax
008AD999: mov eax, [ebp+08h]
008AD99C: and al, FEh
008AD99E: mov [ebp+08h], eax
008AD9A1: mov eax, [ebp+08h]
008AD9A4: mov eax, [eax]
008AD9A6: push [ebp+08h]
008AD9A9: call [eax+04h]
008AD9AC: push 00000000h
008AD9AE: push FFFFFDFAh
008AD9B3: mov eax, [ebp+08h]
008AD9B6: mov eax, [eax]
008AD9B8: push [ebp+08h]
008AD9BB: call [eax+00000358h]
008AD9C1: push eax
008AD9C2: lea eax, var_30
008AD9C5: push eax
008AD9C6: call 00410A84h ; Set (object)
008AD9CB: push eax
008AD9CC: lea eax, var_4C
008AD9CF: push eax
008AD9D0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AD9D5: add esp, 00000010h
008AD9D8: push eax
008AD9D9: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008AD9DE: mov edx, eax
008AD9E0: lea ecx, var_28
008AD9E3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AD9E8: push eax
008AD9E9: push 0044CE10h ; Start
008AD9EE: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008AD9F3: neg eax
008AD9F5: sbb eax, eax
008AD9F7: inc eax
008AD9F8: neg eax
008AD9FA: mov var_00000134, ax
008ADA01: lea ecx, var_28
008ADA04: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008ADA09: lea ecx, var_30
008ADA0C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ADA11: lea ecx, var_4C
008ADA14: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008ADA19: movsx eax, word ptr var_00000134
008ADA20: test eax, eax
008ADA22: jz 008ADC41h
008ADA28: mov eax, [ebp+08h]
008ADA2B: mov eax, [eax]
008ADA2D: push [ebp+08h]
008ADA30: call [eax+00000348h]
008ADA36: push eax
008ADA37: lea eax, var_34
008ADA3A: push eax
008ADA3B: call 00410A84h ; Set (object)
008ADA40: mov var_0000013C, eax
008ADA46: mov eax, [ebp+08h]
008ADA49: mov eax, [eax]
008ADA4B: push [ebp+08h]
008ADA4E: call [eax+00000304h]
008ADA54: push eax
008ADA55: lea eax, var_30
008ADA58: push eax
008ADA59: call 00410A84h ; Set (object)
008ADA5E: mov var_00000134, eax
008ADA64: lea eax, var_28
008ADA67: push eax
008ADA68: mov eax, var_00000134
008ADA6E: mov eax, [eax]
008ADA70: push var_00000134
008ADA76: call [eax+000000A0h]
008ADA7C: fclex 
008ADA7E: mov var_00000138, eax
008ADA84: cmp var_00000138, 00000000h
008ADA8B: jnl 8ADAB0h
008ADA8D: push 000000A0h
008ADA92: push 00440E08h
008ADA97: push var_00000134
008ADA9D: push var_00000138
008ADAA3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ADAA8: mov var_00000178, eax
008ADAAE: jmp 8ADAB7h
008ADAB0: and var_00000178, 00000000h
008ADAB7: push var_28
008ADABA: call 004109DCh ; Val(arg_1)
008ADABF: call 00410814h ; msvbvm60.dll.__vbaFpI4
008ADAC4: push eax
008ADAC5: mov eax, var_0000013C
008ADACB: mov eax, [eax]
008ADACD: push var_0000013C
008ADAD3: call [eax+64h]
008ADAD6: fclex 
008ADAD8: mov var_00000140, eax
008ADADE: cmp var_00000140, 00000000h
008ADAE5: jnl 8ADB07h
008ADAE7: push 00000064h
008ADAE9: push 00447A20h
008ADAEE: push var_0000013C
008ADAF4: push var_00000140
008ADAFA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ADAFF: mov var_0000017C, eax
008ADB05: jmp 8ADB0Eh
008ADB07: and var_0000017C, 00000000h
008ADB0E: lea ecx, var_28
008ADB11: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008ADB16: lea eax, var_34
008ADB19: push eax
008ADB1A: lea eax, var_30
008ADB1D: push eax
008ADB1E: push 00000002h
008ADB20: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008ADB25: add esp, 0000000Ch
008ADB28: mov eax, [ebp+08h]
008ADB2B: mov eax, [eax]
008ADB2D: push [ebp+08h]
008ADB30: call [eax+00000348h]
008ADB36: push eax
008ADB37: lea eax, var_30
008ADB3A: push eax
008ADB3B: call 00410A84h ; Set (object)
008ADB40: mov var_00000134, eax
008ADB46: push FFFFFFFFh
008ADB48: mov eax, var_00000134
008ADB4E: mov eax, [eax]
008ADB50: push var_00000134
008ADB56: call [eax+5Ch]
008ADB59: fclex 
008ADB5B: mov var_00000138, eax
008ADB61: cmp var_00000138, 00000000h
008ADB68: jnl 8ADB8Ah
008ADB6A: push 0000005Ch
008ADB6C: push 00447A20h
008ADB71: push var_00000134
008ADB77: push var_00000138
008ADB7D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ADB82: mov var_00000180, eax
008ADB88: jmp 8ADB91h
008ADB8A: and var_00000180, 00000000h
008ADB91: lea ecx, var_30
008ADB94: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ADB99: mov var_000000E4, 004411ECh ; Stop
008ADBA3: mov var_000000EC, 00000008h
008ADBAD: push 00000010h
008ADBAF: pop eax
008ADBB0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ADBB5: lea esi, var_000000EC
008ADBBB: mov edi, esp
008ADBBD: movsd 
008ADBBE: movsd 
008ADBBF: movsd 
008ADBC0: movsd 
008ADBC1: push FFFFFDFAh
008ADBC6: mov eax, [ebp+08h]
008ADBC9: mov eax, [eax]
008ADBCB: push [ebp+08h]
008ADBCE: call [eax+00000358h]
008ADBD4: push eax
008ADBD5: lea eax, var_30
008ADBD8: push eax
008ADBD9: call 00410A84h ; Set (object)
008ADBDE: push eax
008ADBDF: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008ADBE4: lea ecx, var_30
008ADBE7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ADBEC: and var_000000E4, 00000000h
008ADBF3: mov var_000000EC, 0000000Bh
008ADBFD: push 00000010h
008ADBFF: pop eax
008ADC00: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ADC05: lea esi, var_000000EC
008ADC0B: mov edi, esp
008ADC0D: movsd 
008ADC0E: movsd 
008ADC0F: movsd 
008ADC10: movsd 
008ADC11: push 8001000Dh
008ADC16: mov eax, [ebp+08h]
008ADC19: mov eax, [eax]
008ADC1B: push [ebp+08h]
008ADC1E: call [eax+00000354h]
008ADC24: push eax
008ADC25: lea eax, var_30
008ADC28: push eax
008ADC29: call 00410A84h ; Set (object)
008ADC2E: push eax
008ADC2F: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008ADC34: lea ecx, var_30
008ADC37: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ADC3C: jmp 008AE52Dh
008ADC41: mov eax, [ebp+08h]
008ADC44: mov eax, [eax]
008ADC46: push [ebp+08h]
008ADC49: call [eax+00000348h]
008ADC4F: push eax
008ADC50: lea eax, var_30
008ADC53: push eax
008ADC54: call 00410A84h ; Set (object)
008ADC59: mov var_00000134, eax
008ADC5F: push 00000000h
008ADC61: mov eax, var_00000134
008ADC67: mov eax, [eax]
008ADC69: push var_00000134
008ADC6F: call [eax+5Ch]
008ADC72: fclex 
008ADC74: mov var_00000138, eax
008ADC7A: cmp var_00000138, 00000000h
008ADC81: jnl 8ADCA3h
008ADC83: push 0000005Ch
008ADC85: push 00447A20h
008ADC8A: push var_00000134
008ADC90: push var_00000138
008ADC96: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ADC9B: mov var_00000184, eax
008ADCA1: jmp 8ADCAAh
008ADCA3: and var_00000184, 00000000h
008ADCAA: lea ecx, var_30
008ADCAD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ADCB2: mov eax, [ebp+08h]
008ADCB5: mov eax, [eax]
008ADCB7: push [ebp+08h]
008ADCBA: call [eax+00000348h]
008ADCC0: push eax
008ADCC1: lea eax, var_30
008ADCC4: push eax
008ADCC5: call 00410A84h ; Set (object)
008ADCCA: mov var_00000134, eax
008ADCD0: push 00000000h
008ADCD2: mov eax, var_00000134
008ADCD8: mov eax, [eax]
008ADCDA: push var_00000134
008ADCE0: call [eax+74h]
008ADCE3: fclex 
008ADCE5: mov var_00000138, eax
008ADCEB: cmp var_00000138, 00000000h
008ADCF2: jnl 8ADD14h
008ADCF4: push 00000074h
008ADCF6: push 00447A20h
008ADCFB: push var_00000134
008ADD01: push var_00000138
008ADD07: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ADD0C: mov var_00000188, eax
008ADD12: jmp 8ADD1Bh
008ADD14: and var_00000188, 00000000h
008ADD1B: lea ecx, var_30
008ADD1E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ADD23: mov eax, [ebp+08h]
008ADD26: mov eax, [eax]
008ADD28: push [ebp+08h]
008ADD2B: call [eax+00000324h]
008ADD31: push eax
008ADD32: lea eax, var_30
008ADD35: push eax
008ADD36: call 00410A84h ; Set (object)
008ADD3B: mov var_00000134, eax
008ADD41: push 00000000h
008ADD43: mov eax, var_00000134
008ADD49: mov eax, [eax]
008ADD4B: push var_00000134
008ADD51: call [eax+000001BCh]
008ADD57: fclex 
008ADD59: mov var_00000138, eax
008ADD5F: cmp var_00000138, 00000000h
008ADD66: jnl 8ADD8Bh
008ADD68: push 000001BCh
008ADD6D: push 00440EDCh
008ADD72: push var_00000134
008ADD78: push var_00000138
008ADD7E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ADD83: mov var_0000018C, eax
008ADD89: jmp 8ADD92h
008ADD8B: and var_0000018C, 00000000h
008ADD92: lea ecx, var_30
008ADD95: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ADD9A: mov var_000000E4, 0044CE10h ; Start
008ADDA4: mov var_000000EC, 00000008h
008ADDAE: push 00000010h
008ADDB0: pop eax
008ADDB1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ADDB6: lea esi, var_000000EC
008ADDBC: mov edi, esp
008ADDBE: movsd 
008ADDBF: movsd 
008ADDC0: movsd 
008ADDC1: movsd 
008ADDC2: push FFFFFDFAh
008ADDC7: mov eax, [ebp+08h]
008ADDCA: mov eax, [eax]
008ADDCC: push [ebp+08h]
008ADDCF: call [eax+00000358h]
008ADDD5: push eax
008ADDD6: lea eax, var_30
008ADDD9: push eax
008ADDDA: call 00410A84h ; Set (object)
008ADDDF: push eax
008ADDE0: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008ADDE5: lea ecx, var_30
008ADDE8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ADDED: or var_000000E4, FFFFFFFFh
008ADDF4: mov var_000000EC, 0000000Bh
008ADDFE: push 00000010h
008ADE00: pop eax
008ADE01: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ADE06: lea esi, var_000000EC
008ADE0C: mov edi, esp
008ADE0E: movsd 
008ADE0F: movsd 
008ADE10: movsd 
008ADE11: movsd 
008ADE12: push 8001000Dh
008ADE17: mov eax, [ebp+08h]
008ADE1A: mov eax, [eax]
008ADE1C: push [ebp+08h]
008ADE1F: call [eax+00000354h]
008ADE25: push eax
008ADE26: lea eax, var_30
008ADE29: push eax
008ADE2A: call 00410A84h ; Set (object)
008ADE2F: push eax
008ADE30: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008ADE35: lea ecx, var_30
008ADE38: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ADE3D: mov var_000000E4, 00000001h
008ADE47: mov var_000000EC, 00000002h
008ADE51: cmp [008F2010h], 00000000h
008ADE58: jnz 8ADE75h
008ADE5A: push 008F2010h
008ADE5F: push 00433984h
008ADE64: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008ADE69: mov var_00000190, 008F2010h
008ADE73: jmp 8ADE7Fh
008ADE75: mov var_00000190, 008F2010h
008ADE7F: mov eax, var_00000190
008ADE85: mov eax, [eax]
008ADE87: mov ecx, var_00000190
008ADE8D: mov ecx, [ecx]
008ADE8F: mov ecx, [ecx]
008ADE91: push eax
008ADE92: call [ecx+00000528h]
008ADE98: push eax
008ADE99: lea eax, var_30
008ADE9C: push eax
008ADE9D: call 00410A84h ; Set (object)
008ADEA2: mov var_00000134, eax
008ADEA8: lea eax, var_00000130
008ADEAE: push eax
008ADEAF: mov eax, var_00000134
008ADEB5: mov eax, [eax]
008ADEB7: push var_00000134
008ADEBD: call [eax+48h]
008ADEC0: fclex 
008ADEC2: mov var_00000138, eax
008ADEC8: cmp var_00000138, 00000000h
008ADECF: jnl 8ADEF1h
008ADED1: push 00000048h
008ADED3: push 00440DE8h
008ADED8: push var_00000134
008ADEDE: push var_00000138
008ADEE4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ADEE9: mov var_00000194, eax
008ADEEF: jmp 8ADEF8h
008ADEF1: and var_00000194, 00000000h
008ADEF8: mov ax, var_00000130
008ADEFF: mov var_000000F4, ax
008ADF06: mov var_000000FC, 00000002h
008ADF10: mov var_00000104, 00000001h
008ADF1A: mov var_0000010C, 00000002h
008ADF24: lea eax, var_000000EC
008ADF2A: push eax
008ADF2B: lea eax, var_000000FC
008ADF31: push eax
008ADF32: lea eax, var_0000010C
008ADF38: push eax
008ADF39: lea eax, var_00000168
008ADF3F: push eax
008ADF40: lea eax, var_00000158
008ADF46: push eax
008ADF47: lea eax, var_24
008ADF4A: push eax
008ADF4B: call 00410A3Ch ; For
008ADF50: mov var_00000174, eax
008ADF56: lea ecx, var_30
008ADF59: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ADF5E: jmp 008AE520h
008ADF63: cmp [008F2010h], 00000000h
008ADF6A: jnz 8ADF87h
008ADF6C: push 008F2010h
008ADF71: push 00433984h
008ADF76: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008ADF7B: mov var_00000198, 008F2010h
008ADF85: jmp 8ADF91h
008ADF87: mov var_00000198, 008F2010h
008ADF91: mov eax, var_00000198
008ADF97: mov eax, [eax]
008ADF99: mov ecx, var_00000198
008ADF9F: mov ecx, [ecx]
008ADFA1: mov ecx, [ecx]
008ADFA3: push eax
008ADFA4: call [ecx+00000528h]
008ADFAA: push eax
008ADFAB: lea eax, var_30
008ADFAE: push eax
008ADFAF: call 00410A84h ; Set (object)
008ADFB4: mov var_00000134, eax
008ADFBA: lea eax, var_34
008ADFBD: push eax
008ADFBE: lea eax, var_24
008ADFC1: push eax
008ADFC2: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008ADFC7: push eax
008ADFC8: mov eax, var_00000134
008ADFCE: mov eax, [eax]
008ADFD0: push var_00000134
008ADFD6: call [eax+40h]
008ADFD9: fclex 
008ADFDB: mov var_00000138, eax
008ADFE1: cmp var_00000138, 00000000h
008ADFE8: jnl 8AE00Ah
008ADFEA: push 00000040h
008ADFEC: push 00440DE8h
008ADFF1: push var_00000134
008ADFF7: push var_00000138
008ADFFD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AE002: mov var_0000019C, eax
008AE008: jmp 8AE011h
008AE00A: and var_0000019C, 00000000h
008AE011: push 00000000h
008AE013: push 8001000Bh
008AE018: push var_34
008AE01B: lea eax, var_4C
008AE01E: push eax
008AE01F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AE024: add esp, 00000010h
008AE027: mov var_000000E4, 004413D8h
008AE031: mov var_000000EC, 00000008h
008AE03B: lea edx, var_000000EC
008AE041: lea ecx, var_5C
008AE044: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008AE049: push 00000000h
008AE04B: push FFFFFFFFh
008AE04D: lea eax, var_5C
008AE050: push eax
008AE051: lea eax, var_4C
008AE054: push eax
008AE055: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008AE05A: mov edx, eax
008AE05C: lea ecx, var_28
008AE05F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AE064: push eax
008AE065: lea eax, var_6C
008AE068: push eax
008AE069: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
008AE06E: lea eax, var_6C
008AE071: push eax
008AE072: call 00410784h ; msvbvm60.dll.__vbaRefVarAry
008AE077: push [eax]
008AE079: push 00000001h
008AE07B: call 00410886h ; UBound
008AE080: dec eax
008AE081: neg eax
008AE083: sbb eax, eax
008AE085: inc eax
008AE086: neg eax
008AE088: mov var_0000013C, ax
008AE08F: lea ecx, var_28
008AE092: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008AE097: lea eax, var_34
008AE09A: push eax
008AE09B: lea eax, var_30
008AE09E: push eax
008AE09F: push 00000002h
008AE0A1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AE0A6: add esp, 0000000Ch
008AE0A9: lea eax, var_6C
008AE0AC: push eax
008AE0AD: lea eax, var_5C
008AE0B0: push eax
008AE0B1: lea eax, var_4C
008AE0B4: push eax
008AE0B5: push 00000003h
008AE0B7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AE0BC: add esp, 00000010h
008AE0BF: movsx eax, word ptr var_0000013C
008AE0C6: test eax, eax
008AE0C8: jz 008AE503h
008AE0CE: cmp [008F2010h], 00000000h
008AE0D5: jnz 8AE0F2h
008AE0D7: push 008F2010h
008AE0DC: push 00433984h
008AE0E1: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008AE0E6: mov var_000001A0, 008F2010h
008AE0F0: jmp 8AE0FCh
008AE0F2: mov var_000001A0, 008F2010h
008AE0FC: mov eax, var_000001A0
008AE102: mov eax, [eax]
008AE104: mov ecx, var_000001A0
008AE10A: mov ecx, [ecx]
008AE10C: mov ecx, [ecx]
008AE10E: push eax
008AE10F: call [ecx+00000528h]
008AE115: push eax
008AE116: lea eax, var_30
008AE119: push eax
008AE11A: call 00410A84h ; Set (object)
008AE11F: mov var_00000134, eax
008AE125: lea eax, var_34
008AE128: push eax
008AE129: lea eax, var_24
008AE12C: push eax
008AE12D: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008AE132: push eax
008AE133: mov eax, var_00000134
008AE139: mov eax, [eax]
008AE13B: push var_00000134
008AE141: call [eax+40h]
008AE144: fclex 
008AE146: mov var_00000138, eax
008AE14C: cmp var_00000138, 00000000h
008AE153: jnl 8AE175h
008AE155: push 00000040h
008AE157: push 00440DE8h
008AE15C: push var_00000134
008AE162: push var_00000138
008AE168: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AE16D: mov var_000001A4, eax
008AE173: jmp 8AE17Ch
008AE175: and var_000001A4, 00000000h
008AE17C: push 00000000h
008AE17E: push 8001000Bh
008AE183: push var_34
008AE186: lea eax, var_4C
008AE189: push eax
008AE18A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AE18F: add esp, 00000010h
008AE192: cmp [008F2010h], 00000000h
008AE199: jnz 8AE1B6h
008AE19B: push 008F2010h
008AE1A0: push 00433984h
008AE1A5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008AE1AA: mov var_000001A8, 008F2010h
008AE1B4: jmp 8AE1C0h
008AE1B6: mov var_000001A8, 008F2010h
008AE1C0: mov eax, var_000001A8
008AE1C6: mov eax, [eax]
008AE1C8: mov ecx, var_000001A8
008AE1CE: mov ecx, [ecx]
008AE1D0: mov ecx, [ecx]
008AE1D2: push eax
008AE1D3: call [ecx+00000528h]
008AE1D9: push eax
008AE1DA: lea eax, var_38
008AE1DD: push eax
008AE1DE: call 00410A84h ; Set (object)
008AE1E3: mov var_0000013C, eax
008AE1E9: lea eax, var_3C
008AE1EC: push eax
008AE1ED: lea eax, var_24
008AE1F0: push eax
008AE1F1: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008AE1F6: push eax
008AE1F7: mov eax, var_0000013C
008AE1FD: mov eax, [eax]
008AE1FF: push var_0000013C
008AE205: call [eax+40h]
008AE208: fclex 
008AE20A: mov var_00000140, eax
008AE210: cmp var_00000140, 00000000h
008AE217: jnl 8AE239h
008AE219: push 00000040h
008AE21B: push 00440DE8h
008AE220: push var_0000013C
008AE226: push var_00000140
008AE22C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AE231: mov var_000001AC, eax
008AE237: jmp 8AE240h
008AE239: and var_000001AC, 00000000h
008AE240: push 00000000h
008AE242: push 8001000Bh
008AE247: push var_3C
008AE24A: lea eax, var_0000008C
008AE250: push eax
008AE251: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AE256: add esp, 00000010h
008AE259: lea eax, var_4C
008AE25C: push eax
008AE25D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008AE262: mov var_54, eax
008AE265: mov var_5C, 00000008h
008AE26C: push 00000002h
008AE26E: lea eax, var_5C
008AE271: push eax
008AE272: lea eax, var_6C
008AE275: push eax
008AE276: call 00410778h ; Left(arg_1, arg_2)
008AE27B: mov var_000000E4, 004496D8h ; SS
008AE285: mov var_000000EC, 00008008h
008AE28F: mov var_00000104, 00000001h
008AE299: mov var_0000010C, 00000002h
008AE2A3: mov var_000000F4, 004413D8h
008AE2AD: mov var_000000FC, 00000008h
008AE2B7: lea edx, var_000000FC
008AE2BD: lea ecx, var_0000009C
008AE2C3: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008AE2C8: push 00000000h
008AE2CA: push FFFFFFFFh
008AE2CC: lea eax, var_0000009C
008AE2D2: push eax
008AE2D3: lea eax, var_0000008C
008AE2D9: push eax
008AE2DA: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008AE2DF: mov edx, eax
008AE2E1: lea ecx, var_28
008AE2E4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AE2E9: push eax
008AE2EA: lea eax, var_000000AC
008AE2F0: push eax
008AE2F1: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
008AE2F6: lea eax, var_2C
008AE2F9: push eax
008AE2FA: mov eax, [ebp+08h]
008AE2FD: mov eax, [eax]
008AE2FF: push [ebp+08h]
008AE302: call [eax+000001C0h]
008AE308: fclex 
008AE30A: mov var_00000144, eax
008AE310: cmp var_00000144, 00000000h
008AE317: jnl 8AE339h
008AE319: push 000001C0h
008AE31E: push 00444EC0h
008AE323: push [ebp+08h]
008AE326: push var_00000144
008AE32C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AE331: mov var_000001B0, eax
008AE337: jmp 8AE340h
008AE339: and var_000001B0, 00000000h
008AE340: push var_2C
008AE343: call 004109DCh ; Val(arg_1)
008AE348: fstp real8 ptr var_00000124
008AE34E: mov var_0000012C, 00008005h
008AE358: lea eax, var_6C
008AE35B: push eax
008AE35C: lea eax, var_000000EC
008AE362: push eax
008AE363: lea eax, var_7C
008AE366: push eax
008AE367: call 00410766h ; msvbvm60.dll.__vbaVarCmpEq
008AE36C: push eax
008AE36D: push 00000010h
008AE36F: pop eax
008AE370: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AE375: lea esi, var_0000010C
008AE37B: mov edi, esp
008AE37D: movsd 
008AE37E: movsd 
008AE37F: movsd 
008AE380: movsd 
008AE381: push 00000001h
008AE383: lea eax, var_000000AC
008AE389: push eax
008AE38A: lea eax, var_000000BC
008AE390: push eax
008AE391: call 00410952h ; msvbvm60.dll.__vbaVarIndexLoad
008AE396: add esp, 0000001Ch
008AE399: push eax
008AE39A: lea eax, var_0000012C
008AE3A0: push eax
008AE3A1: lea eax, var_000000CC
008AE3A7: push eax
008AE3A8: call 00410766h ; msvbvm60.dll.__vbaVarCmpEq
008AE3AD: push eax
008AE3AE: lea eax, var_000000DC
008AE3B4: push eax
008AE3B5: call 0041090Ah ; And
008AE3BA: push eax
008AE3BB: call 00410910h ; msvbvm60.dll.__vbaBoolVarNull
008AE3C0: mov var_00000148, ax
008AE3C7: lea eax, var_2C
008AE3CA: push eax
008AE3CB: lea eax, var_28
008AE3CE: push eax
008AE3CF: push 00000002h
008AE3D1: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AE3D6: add esp, 0000000Ch
008AE3D9: lea eax, var_3C
008AE3DC: push eax
008AE3DD: lea eax, var_38
008AE3E0: push eax
008AE3E1: lea eax, var_34
008AE3E4: push eax
008AE3E5: lea eax, var_30
008AE3E8: push eax
008AE3E9: push 00000004h
008AE3EB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AE3F0: add esp, 00000014h
008AE3F3: lea eax, var_000000BC
008AE3F9: push eax
008AE3FA: lea eax, var_000000AC
008AE400: push eax
008AE401: lea eax, var_0000009C
008AE407: push eax
008AE408: lea eax, var_0000008C
008AE40E: push eax
008AE40F: lea eax, var_6C
008AE412: push eax
008AE413: lea eax, var_5C
008AE416: push eax
008AE417: lea eax, var_4C
008AE41A: push eax
008AE41B: push 00000007h
008AE41D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AE422: add esp, 00000020h
008AE425: movsx eax, word ptr var_00000148
008AE42C: test eax, eax
008AE42E: jz 008AE503h
008AE434: cmp [008F2010h], 00000000h
008AE43B: jnz 8AE458h
008AE43D: push 008F2010h
008AE442: push 00433984h
008AE447: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008AE44C: mov var_000001B4, 008F2010h
008AE456: jmp 8AE462h
008AE458: mov var_000001B4, 008F2010h
008AE462: mov eax, var_000001B4
008AE468: mov eax, [eax]
008AE46A: mov ecx, var_000001B4
008AE470: mov ecx, [ecx]
008AE472: mov ecx, [ecx]
008AE474: push eax
008AE475: call [ecx+00000528h]
008AE47B: push eax
008AE47C: lea eax, var_30
008AE47F: push eax
008AE480: call 00410A84h ; Set (object)
008AE485: mov var_00000134, eax
008AE48B: lea eax, var_34
008AE48E: push eax
008AE48F: lea eax, var_24
008AE492: push eax
008AE493: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008AE498: push eax
008AE499: mov eax, var_00000134
008AE49F: mov eax, [eax]
008AE4A1: push var_00000134
008AE4A7: call [eax+40h]
008AE4AA: fclex 
008AE4AC: mov var_00000138, eax
008AE4B2: cmp var_00000138, 00000000h
008AE4B9: jnl 8AE4DBh
008AE4BB: push 00000040h
008AE4BD: push 00440DE8h
008AE4C2: push var_00000134
008AE4C8: push var_00000138
008AE4CE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AE4D3: mov var_000001B8, eax
008AE4D9: jmp 8AE4E2h
008AE4DB: and var_000001B8, 00000000h
008AE4E2: push 00000000h
008AE4E4: push 00000046h
008AE4E6: push var_34
008AE4E9: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008AE4EE: add esp, 0000000Ch
008AE4F1: lea eax, var_34
008AE4F4: push eax
008AE4F5: lea eax, var_30
008AE4F8: push eax
008AE4F9: push 00000002h
008AE4FB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AE500: add esp, 0000000Ch
008AE503: lea eax, var_00000168
008AE509: push eax
008AE50A: lea eax, var_00000158
008AE510: push eax
008AE511: lea eax, var_24
008AE514: push eax
008AE515: call 00410A36h ; Next
008AE51A: mov var_00000174, eax
008AE520: cmp var_00000174, 00000000h
008AE527: jnz 008ADF63h
008AE52D: mov eax, [ebp+08h]
008AE530: mov eax, [eax]
008AE532: push [ebp+08h]
008AE535: call [eax+00000308h]
008AE53B: push eax
008AE53C: lea eax, var_30
008AE53F: push eax
008AE540: call 00410A84h ; Set (object)
008AE545: mov var_00000134, eax
008AE54B: lea eax, var_00000130
008AE551: push eax
008AE552: mov eax, var_00000134
008AE558: mov eax, [eax]
008AE55A: push var_00000134
008AE560: call [eax+000000F0h]
008AE566: fclex 
008AE568: mov var_00000138, eax
008AE56E: cmp var_00000138, 00000000h
008AE575: jnl 8AE59Ah
008AE577: push 000000F0h
008AE57C: push 0044C944h
008AE581: push var_00000134
008AE587: push var_00000138
008AE58D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AE592: mov var_000001BC, eax
008AE598: jmp 8AE5A1h
008AE59A: and var_000001BC, 00000000h
008AE5A1: push var_00000130
008AE5A7: call 00410964h ; msvbvm60.dll.__vbaStrI2
008AE5AC: mov edx, eax
008AE5AE: lea ecx, var_28
008AE5B1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AE5B6: push eax
008AE5B7: call 004109DCh ; Val(arg_1)
008AE5BC: push ecx
008AE5BD: push ecx
008AE5BE: fstp real8 ptr [esp]
008AE5C1: call 00410790h ; msvbvm60.dll.__vbaStrR8
008AE5C6: mov edx, eax
008AE5C8: lea ecx, var_2C
008AE5CB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AE5D0: push eax
008AE5D1: push 00459C40h ; screensize
008AE5D6: push 00459C2Ch ; screen
008AE5DB: push 00445984h ; bssnet
008AE5E0: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008AE5E5: lea eax, var_2C
008AE5E8: push eax
008AE5E9: lea eax, var_28
008AE5EC: push eax
008AE5ED: push 00000002h
008AE5EF: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AE5F4: add esp, 0000000Ch
008AE5F7: lea ecx, var_30
008AE5FA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AE5FF: mov eax, [ebp+08h]
008AE602: mov eax, [eax]
008AE604: push [ebp+08h]
008AE607: call [eax+0000030Ch]
008AE60D: push eax
008AE60E: lea eax, var_30
008AE611: push eax
008AE612: call 00410A84h ; Set (object)
008AE617: mov var_00000134, eax
008AE61D: lea eax, var_00000130
008AE623: push eax
008AE624: mov eax, var_00000134
008AE62A: mov eax, [eax]
008AE62C: push var_00000134
008AE632: call [eax+000000F0h]
008AE638: fclex 
008AE63A: mov var_00000138, eax
008AE640: cmp var_00000138, 00000000h
008AE647: jnl 8AE66Ch
008AE649: push 000000F0h
008AE64E: push 0044C944h
008AE653: push var_00000134
008AE659: push var_00000138
008AE65F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AE664: mov var_000001C0, eax
008AE66A: jmp 8AE673h
008AE66C: and var_000001C0, 00000000h
008AE673: push var_00000130
008AE679: call 00410964h ; msvbvm60.dll.__vbaStrI2
008AE67E: mov edx, eax
008AE680: lea ecx, var_28
008AE683: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AE688: push eax
008AE689: call 004109DCh ; Val(arg_1)
008AE68E: push ecx
008AE68F: push ecx
008AE690: fstp real8 ptr [esp]
008AE693: call 00410790h ; msvbvm60.dll.__vbaStrR8
008AE698: mov edx, eax
008AE69A: lea ecx, var_2C
008AE69D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AE6A2: push eax
008AE6A3: push 00459C5Ch ; bitsize
008AE6A8: push 00459C2Ch ; screen
008AE6AD: push 00445984h ; bssnet
008AE6B2: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008AE6B7: lea eax, var_2C
008AE6BA: push eax
008AE6BB: lea eax, var_28
008AE6BE: push eax
008AE6BF: push 00000002h
008AE6C1: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AE6C6: add esp, 0000000Ch
008AE6C9: lea ecx, var_30
008AE6CC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AE6D1: mov eax, [ebp+08h]
008AE6D4: mov eax, [eax]
008AE6D6: push [ebp+08h]
008AE6D9: call [eax+00000310h]
008AE6DF: push eax
008AE6E0: lea eax, var_30
008AE6E3: push eax
008AE6E4: call 00410A84h ; Set (object)
008AE6E9: mov var_00000134, eax
008AE6EF: lea eax, var_00000130
008AE6F5: push eax
008AE6F6: mov eax, var_00000134
008AE6FC: mov eax, [eax]
008AE6FE: push var_00000134
008AE704: call [eax+000000F0h]
008AE70A: fclex 
008AE70C: mov var_00000138, eax
008AE712: cmp var_00000138, 00000000h
008AE719: jnl 8AE73Eh
008AE71B: push 000000F0h
008AE720: push 0044C944h
008AE725: push var_00000134
008AE72B: push var_00000138
008AE731: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AE736: mov var_000001C4, eax
008AE73C: jmp 8AE745h
008AE73E: and var_000001C4, 00000000h
008AE745: push var_00000130
008AE74B: call 00410964h ; msvbvm60.dll.__vbaStrI2
008AE750: mov edx, eax
008AE752: lea ecx, var_28
008AE755: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AE75A: push eax
008AE75B: call 004109DCh ; Val(arg_1)
008AE760: push ecx
008AE761: push ecx
008AE762: fstp real8 ptr [esp]
008AE765: call 00410790h ; msvbvm60.dll.__vbaStrR8
008AE76A: mov edx, eax
008AE76C: lea ecx, var_2C
008AE76F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AE774: push eax
008AE775: push 0045329Ch ; quality
008AE77A: push 00459C2Ch ; screen
008AE77F: push 00445984h ; bssnet
008AE784: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008AE789: lea eax, var_2C
008AE78C: push eax
008AE78D: lea eax, var_28
008AE790: push eax
008AE791: push 00000002h
008AE793: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AE798: add esp, 0000000Ch
008AE79B: lea ecx, var_30
008AE79E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AE7A3: push 00000000h
008AE7A5: push 00000000h
008AE7A7: mov eax, [ebp+08h]
008AE7AA: mov eax, [eax]
008AE7AC: push [ebp+08h]
008AE7AF: call [eax+0000034Ch]
008AE7B5: push eax
008AE7B6: lea eax, var_30
008AE7B9: push eax
008AE7BA: call 00410A84h ; Set (object)
008AE7BF: push eax
008AE7C0: lea eax, var_4C
008AE7C3: push eax
008AE7C4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AE7C9: add esp, 00000010h
008AE7CC: push eax
008AE7CD: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008AE7D2: push eax
008AE7D3: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008AE7D8: mov edx, eax
008AE7DA: lea ecx, var_28
008AE7DD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AE7E2: push eax
008AE7E3: call 004109DCh ; Val(arg_1)
008AE7E8: push ecx
008AE7E9: push ecx
008AE7EA: fstp real8 ptr [esp]
008AE7ED: call 00410790h ; msvbvm60.dll.__vbaStrR8
008AE7F2: mov edx, eax
008AE7F4: lea ecx, var_2C
008AE7F7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AE7FC: push eax
008AE7FD: push 00459C70h ; kybrd
008AE802: push 00459C2Ch ; screen
008AE807: push 00445984h ; bssnet
008AE80C: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008AE811: lea eax, var_2C
008AE814: push eax
008AE815: lea eax, var_28
008AE818: push eax
008AE819: push 00000002h
008AE81B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AE820: add esp, 0000000Ch
008AE823: lea ecx, var_30
008AE826: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AE82B: lea ecx, var_4C
008AE82E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008AE833: push 00000000h
008AE835: push 00000000h
008AE837: mov eax, [ebp+08h]
008AE83A: mov eax, [eax]
008AE83C: push [ebp+08h]
008AE83F: call [eax+0000035Ch]
008AE845: push eax
008AE846: lea eax, var_30
008AE849: push eax
008AE84A: call 00410A84h ; Set (object)
008AE84F: push eax
008AE850: lea eax, var_4C
008AE853: push eax
008AE854: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AE859: add esp, 00000010h
008AE85C: push eax
008AE85D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008AE862: push eax
008AE863: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008AE868: mov edx, eax
008AE86A: lea ecx, var_28
008AE86D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AE872: push eax
008AE873: call 004109DCh ; Val(arg_1)
008AE878: push ecx
008AE879: push ecx
008AE87A: fstp real8 ptr [esp]
008AE87D: call 00410790h ; msvbvm60.dll.__vbaStrR8
008AE882: mov edx, eax
008AE884: lea ecx, var_2C
008AE887: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AE88C: push eax
008AE88D: push 00459C80h ; mse
008AE892: push 00459C2Ch ; screen
008AE897: push 00445984h ; bssnet
008AE89C: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008AE8A1: lea eax, var_2C
008AE8A4: push eax
008AE8A5: lea eax, var_28
008AE8A8: push eax
008AE8A9: push 00000002h
008AE8AB: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AE8B0: add esp, 0000000Ch
008AE8B3: lea ecx, var_30
008AE8B6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AE8BB: lea ecx, var_4C
008AE8BE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008AE8C3: push 00000000h
008AE8C5: push 00000000h
008AE8C7: mov eax, [ebp+08h]
008AE8CA: mov eax, [eax]
008AE8CC: push [ebp+08h]
008AE8CF: call [eax+00000364h]
008AE8D5: push eax
008AE8D6: lea eax, var_30
008AE8D9: push eax
008AE8DA: call 00410A84h ; Set (object)
008AE8DF: push eax
008AE8E0: lea eax, var_4C
008AE8E3: push eax
008AE8E4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AE8E9: add esp, 00000010h
008AE8EC: push eax
008AE8ED: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008AE8F2: push eax
008AE8F3: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008AE8F8: mov edx, eax
008AE8FA: lea ecx, var_28
008AE8FD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AE902: push eax
008AE903: call 004109DCh ; Val(arg_1)
008AE908: push ecx
008AE909: push ecx
008AE90A: fstp real8 ptr [esp]
008AE90D: call 00410790h ; msvbvm60.dll.__vbaStrR8
008AE912: mov edx, eax
008AE914: lea ecx, var_2C
008AE917: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AE91C: push eax
008AE91D: push 00459C8Ch ; sve
008AE922: push 00459C2Ch ; screen
008AE927: push 00445984h ; bssnet
008AE92C: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008AE931: lea eax, var_2C
008AE934: push eax
008AE935: lea eax, var_28
008AE938: push eax
008AE939: push 00000002h
008AE93B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AE940: add esp, 0000000Ch
008AE943: lea ecx, var_30
008AE946: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AE94B: lea ecx, var_4C
008AE94E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008AE953: mov var_04, 00000000h
008AE95A: wait 
008AE95B: push 008AE9F4h
008AE960: jmp 8AE9D3h
008AE962: lea eax, var_2C
008AE965: push eax
008AE966: lea eax, var_28
008AE969: push eax
008AE96A: push 00000002h
008AE96C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AE971: add esp, 0000000Ch
008AE974: lea eax, var_3C
008AE977: push eax
008AE978: lea eax, var_38
008AE97B: push eax
008AE97C: lea eax, var_34
008AE97F: push eax
008AE980: lea eax, var_30
008AE983: push eax
008AE984: push 00000004h
008AE986: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AE98B: add esp, 00000014h
008AE98E: lea eax, var_000000DC
008AE994: push eax
008AE995: lea eax, var_000000CC
008AE99B: push eax
008AE99C: lea eax, var_000000BC
008AE9A2: push eax
008AE9A3: lea eax, var_000000AC
008AE9A9: push eax
008AE9AA: lea eax, var_0000009C
008AE9B0: push eax
008AE9B1: lea eax, var_0000008C
008AE9B7: push eax
008AE9B8: lea eax, var_7C
008AE9BB: push eax
008AE9BC: lea eax, var_6C
008AE9BF: push eax
008AE9C0: lea eax, var_5C
008AE9C3: push eax
008AE9C4: lea eax, var_4C
008AE9C7: push eax
008AE9C8: push 0000000Ah
008AE9CA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AE9CF: add esp, 0000002Ch
008AE9D2: ret 
End Sub

Private sub txtScreenInterval__8B2784
008B2784: push ebp
008B2785: mov ebp, esp
008B2787: sub esp, 0000000Ch
008B278A: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B278F: mov eax, fs:[00h]
008B2795: push eax
008B2796: mov fs:[00000000h], esp
008B279D: push 00000038h
008B279F: pop eax
008B27A0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B27A5: push ebx
008B27A6: push esi
008B27A7: push edi
008B27A8: mov var_0C, esp
008B27AB: mov var_08, 0040EA78h
008B27B2: mov eax, [ebp+08h]
008B27B5: and eax, 00000001h
008B27B8: mov var_04, eax
008B27BB: mov eax, [ebp+08h]
008B27BE: and al, FEh
008B27C0: mov [ebp+08h], eax
008B27C3: mov eax, [ebp+08h]
008B27C6: mov eax, [eax]
008B27C8: push [ebp+08h]
008B27CB: call [eax+04h]
008B27CE: mov eax, [ebp+08h]
008B27D1: mov eax, [eax]
008B27D3: push [ebp+08h]
008B27D6: call [eax+00000304h]
008B27DC: push eax
008B27DD: lea eax, var_1C
008B27E0: push eax
008B27E1: call 00410A84h ; Set (object)
008B27E6: mov var_24, eax
008B27E9: lea eax, var_18
008B27EC: push eax
008B27ED: mov eax, var_24
008B27F0: mov eax, [eax]
008B27F2: push var_24
008B27F5: call [eax+000000A0h]
008B27FB: fclex 
008B27FD: mov var_28, eax
008B2800: cmp var_28, 00000000h
008B2804: jnl 8B2820h
008B2806: push 000000A0h
008B280B: push 00440E08h
008B2810: push var_24
008B2813: push var_28
008B2816: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B281B: mov var_3C, eax
008B281E: jmp 8B2824h
008B2820: and var_3C, 00000000h
008B2824: push var_18
008B2827: call 004109DCh ; Val(arg_1)
008B282C: call 004109D6h ; msvbvm60.dll.__vbaFpR8
008B2831: fcomp real8 ptr [0040EA70h]
008B2837: fstsw ax
008B2839: sahf 
008B283A: jbe 8B2845h
008B283C: mov var_40, 00000001h
008B2843: jmp 8B2849h
008B2845: and var_40, 00000000h
008B2849: mov eax, var_40
008B284C: neg eax
008B284E: mov var_2C, ax
008B2852: lea ecx, var_18
008B2855: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008B285A: lea ecx, var_1C
008B285D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B2862: movsx eax, word ptr var_2C
008B2866: test eax, eax
008B2868: jz 8B28C9h
008B286A: mov eax, [ebp+08h]
008B286D: mov eax, [eax]
008B286F: push [ebp+08h]
008B2872: call [eax+00000304h]
008B2878: push eax
008B2879: lea eax, var_1C
008B287C: push eax
008B287D: call 00410A84h ; Set (object)
008B2882: mov var_24, eax
008B2885: push 00459CD4h ; 30000
008B288A: mov eax, var_24
008B288D: mov eax, [eax]
008B288F: push var_24
008B2892: call [eax+000000A4h]
008B2898: fclex 
008B289A: mov var_28, eax
008B289D: cmp var_28, 00000000h
008B28A1: jnl 8B28BDh
008B28A3: push 000000A4h
008B28A8: push 00440E08h
008B28AD: push var_24
008B28B0: push var_28
008B28B3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B28B8: mov var_44, eax
008B28BB: jmp 8B28C1h
008B28BD: and var_44, 00000000h
008B28C1: lea ecx, var_1C
008B28C4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B28C9: mov eax, [ebp+08h]
008B28CC: mov eax, [eax]
008B28CE: push [ebp+08h]
008B28D1: call [eax+00000348h]
008B28D7: push eax
008B28D8: lea eax, var_20
008B28DB: push eax
008B28DC: call 00410A84h ; Set (object)
008B28E1: mov var_2C, eax
008B28E4: mov eax, [ebp+08h]
008B28E7: mov eax, [eax]
008B28E9: push [ebp+08h]
008B28EC: call [eax+00000304h]
008B28F2: push eax
008B28F3: lea eax, var_1C
008B28F6: push eax
008B28F7: call 00410A84h ; Set (object)
008B28FC: mov var_24, eax
008B28FF: lea eax, var_18
008B2902: push eax
008B2903: mov eax, var_24
008B2906: mov eax, [eax]
008B2908: push var_24
008B290B: call [eax+000000A0h]
008B2911: fclex 
008B2913: mov var_28, eax
008B2916: cmp var_28, 00000000h
008B291A: jnl 8B2936h
008B291C: push 000000A0h
008B2921: push 00440E08h
008B2926: push var_24
008B2929: push var_28
008B292C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B2931: mov var_48, eax
008B2934: jmp 8B293Ah
008B2936: and var_48, 00000000h
008B293A: push var_18
008B293D: call 004109DCh ; Val(arg_1)
008B2942: call 00410814h ; msvbvm60.dll.__vbaFpI4
008B2947: push eax
008B2948: mov eax, var_2C
008B294B: mov eax, [eax]
008B294D: push var_2C
008B2950: call [eax+64h]
008B2953: fclex 
008B2955: mov var_30, eax
008B2958: cmp var_30, 00000000h
008B295C: jnl 8B2975h
008B295E: push 00000064h
008B2960: push 00447A20h
008B2965: push var_2C
008B2968: push var_30
008B296B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B2970: mov var_4C, eax
008B2973: jmp 8B2979h
008B2975: and var_4C, 00000000h
008B2979: lea ecx, var_18
008B297C: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008B2981: lea eax, var_20
008B2984: push eax
008B2985: lea eax, var_1C
008B2988: push eax
008B2989: push 00000002h
008B298B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B2990: add esp, 0000000Ch
008B2993: mov var_04, 00000000h
008B299A: wait 
008B299B: push 008B29BEh
008B29A0: jmp 8B29BDh
008B29A2: lea ecx, var_18
008B29A5: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008B29AA: lea eax, var_20
008B29AD: push eax
008B29AE: lea eax, var_1C
008B29B1: push eax
008B29B2: push 00000002h
008B29B4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B29B9: add esp, 0000000Ch
008B29BC: ret 
End Sub

Private sub cmdScreencapHide__8ACE75
008ACE75: push ebp
008ACE76: mov ebp, esp
008ACE78: sub esp, 0000000Ch
008ACE7B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008ACE80: mov eax, fs:[00h]
008ACE86: push eax
008ACE87: mov fs:[00000000h], esp
008ACE8E: push 0000004Ch
008ACE90: pop eax
008ACE91: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ACE96: push ebx
008ACE97: push esi
008ACE98: push edi
008ACE99: mov var_0C, esp
008ACE9C: mov var_08, 0040E898h
008ACEA3: mov eax, [ebp+08h]
008ACEA6: and eax, 00000001h
008ACEA9: mov var_04, eax
008ACEAC: mov eax, [ebp+08h]
008ACEAF: and al, FEh
008ACEB1: mov [ebp+08h], eax
008ACEB4: mov eax, [ebp+08h]
008ACEB7: mov eax, [eax]
008ACEB9: push [ebp+08h]
008ACEBC: call [eax+04h]
008ACEBF: or var_20, FFFFFFFFh
008ACEC3: mov var_28, 0000000Bh
008ACECA: push 00000010h
008ACECC: pop eax
008ACECD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ACED2: lea esi, var_28
008ACED5: mov edi, esp
008ACED7: movsd 
008ACED8: movsd 
008ACED9: movsd 
008ACEDA: movsd 
008ACEDB: push 80010007h
008ACEE0: mov eax, [ebp+08h]
008ACEE3: mov eax, [eax]
008ACEE5: push [ebp+08h]
008ACEE8: call [eax+0000036Ch]
008ACEEE: push eax
008ACEEF: lea eax, var_18
008ACEF2: push eax
008ACEF3: call 00410A84h ; Set (object)
008ACEF8: push eax
008ACEF9: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008ACEFE: lea ecx, var_18
008ACF01: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ACF06: mov eax, [ebp+08h]
008ACF09: mov eax, [eax]
008ACF0B: push [ebp+08h]
008ACF0E: call [eax+000002FCh]
008ACF14: push eax
008ACF15: lea eax, var_18
008ACF18: push eax
008ACF19: call 00410A84h ; Set (object)
008ACF1E: mov var_40, eax
008ACF21: push 00000000h
008ACF23: mov eax, var_40
008ACF26: mov eax, [eax]
008ACF28: push var_40
008ACF2B: call [eax+0000009Ch]
008ACF31: fclex 
008ACF33: mov var_44, eax
008ACF36: cmp var_44, 00000000h
008ACF3A: jnl 8ACF56h
008ACF3C: push 0000009Ch
008ACF41: push 00447A30h
008ACF46: push var_40
008ACF49: push var_44
008ACF4C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ACF51: mov var_50, eax
008ACF54: jmp 8ACF5Ah
008ACF56: and var_50, 00000000h
008ACF5A: lea ecx, var_18
008ACF5D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ACF62: mov eax, [ebp+08h]
008ACF65: mov eax, [eax]
008ACF67: push [ebp+08h]
008ACF6A: call [eax+00000324h]
008ACF70: push eax
008ACF71: lea eax, var_18
008ACF74: push eax
008ACF75: call 00410A84h ; Set (object)
008ACF7A: mov var_40, eax
008ACF7D: lea eax, var_3C
008ACF80: push eax
008ACF81: mov eax, var_40
008ACF84: mov eax, [eax]
008ACF86: push var_40
008ACF89: call [eax+00000088h]
008ACF8F: fclex 
008ACF91: mov var_44, eax
008ACF94: cmp var_44, 00000000h
008ACF98: jnl 8ACFB4h
008ACF9A: push 00000088h
008ACF9F: push 00440EDCh
008ACFA4: push var_40
008ACFA7: push var_44
008ACFAA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ACFAF: mov var_54, eax
008ACFB2: jmp 8ACFB8h
008ACFB4: and var_54, 00000000h
008ACFB8: fld real4 ptr var_3C
008ACFBB: fadd real4 ptr [0040E890h]
008ACFC1: fstsw ax
008ACFC3: test al, 0Dh
008ACFC5: jnz 008AD103h
008ACFCB: call 00410814h ; msvbvm60.dll.__vbaFpI4
008ACFD0: mov ecx, [ebp+08h]
008ACFD3: mov [ecx+34h], eax
008ACFD6: lea ecx, var_18
008ACFD9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ACFDE: mov eax, [ebp+08h]
008ACFE1: or word ptr [eax+38h], FFFFh
008ACFE6: mov eax, [ebp+08h]
008ACFE9: mov eax, [eax]
008ACFEB: push [ebp+08h]
008ACFEE: call [eax+00000338h]
008ACFF4: push eax
008ACFF5: lea eax, var_18
008ACFF8: push eax
008ACFF9: call 00410A84h ; Set (object)
008ACFFE: mov var_40, eax
008AD001: push FFFFFFFFh
008AD003: mov eax, var_40
008AD006: mov eax, [eax]
008AD008: push var_40
008AD00B: call [eax+5Ch]
008AD00E: fclex 
008AD010: mov var_44, eax
008AD013: cmp var_44, 00000000h
008AD017: jnl 8AD030h
008AD019: push 0000005Ch
008AD01B: push 00447A20h
008AD020: push var_40
008AD023: push var_44
008AD026: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AD02B: mov var_58, eax
008AD02E: jmp 8AD034h
008AD030: and var_58, 00000000h
008AD034: lea ecx, var_18
008AD037: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AD03C: mov eax, [ebp+08h]
008AD03F: mov eax, [eax]
008AD041: push [ebp+08h]
008AD044: call [eax+00000324h]
008AD04A: push eax
008AD04B: lea eax, var_18
008AD04E: push eax
008AD04F: call 00410A84h ; Set (object)
008AD054: mov var_40, eax
008AD057: mov eax, var_40
008AD05A: mov eax, [eax]
008AD05C: push var_40
008AD05F: call [eax+0000026Ch]
008AD065: fclex 
008AD067: mov var_44, eax
008AD06A: cmp var_44, 00000000h
008AD06E: jnl 8AD08Ah
008AD070: push 0000026Ch
008AD075: push 00440EDCh
008AD07A: push var_40
008AD07D: push var_44
008AD080: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AD085: mov var_5C, eax
008AD088: jmp 8AD08Eh
008AD08A: and var_5C, 00000000h
008AD08E: lea ecx, var_18
008AD091: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AD096: mov eax, [ebp+08h]
008AD099: mov eax, [eax]
008AD09B: push [ebp+08h]
008AD09E: call [eax+0000070Ch]
008AD0A4: mov var_40, eax
008AD0A7: cmp var_40, 00000000h
008AD0AB: jnl 8AD0C7h
008AD0AD: push 0000070Ch
008AD0B2: push 004401B0h
008AD0B7: push [ebp+08h]
008AD0BA: push var_40
008AD0BD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AD0C2: mov var_60, eax
008AD0C5: jmp 8AD0CBh
008AD0C7: and var_60, 00000000h
008AD0CB: mov var_04, 00000000h
008AD0D2: wait 
008AD0D3: push 008AD0E4h
008AD0D8: jmp 8AD0E3h
008AD0DA: lea ecx, var_18
008AD0DD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AD0E2: ret 
End Sub

Private sub imgScreenCap__8B09E4
008B09E4: push ebp
008B09E5: mov ebp, esp
008B09E7: sub esp, 0000000Ch
008B09EA: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B09EF: mov eax, fs:[00h]
008B09F5: push eax
008B09F6: mov fs:[00000000h], esp
008B09FD: mov eax, 000000BCh
008B0A02: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B0A07: push ebx
008B0A08: push esi
008B0A09: push edi
008B0A0A: mov var_0C, esp
008B0A0D: mov var_08, 0040E9F0h
008B0A14: mov eax, [ebp+08h]
008B0A17: and eax, 00000001h
008B0A1A: mov var_04, eax
008B0A1D: mov eax, [ebp+08h]
008B0A20: and al, FEh
008B0A22: mov [ebp+08h], eax
008B0A25: mov eax, [ebp+08h]
008B0A28: mov eax, [eax]
008B0A2A: push [ebp+08h]
008B0A2D: call [eax+04h]
008B0A30: push 00000000h
008B0A32: push 00000000h
008B0A34: mov eax, [ebp+08h]
008B0A37: mov eax, [eax]
008B0A39: push [ebp+08h]
008B0A3C: call [eax+0000035Ch]
008B0A42: push eax
008B0A43: lea eax, var_20
008B0A46: push eax
008B0A47: call 00410A84h ; Set (object)
008B0A4C: push eax
008B0A4D: lea eax, var_44
008B0A50: push eax
008B0A51: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B0A56: add esp, 00000010h
008B0A59: push eax
008B0A5A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008B0A5F: dec eax
008B0A60: neg eax
008B0A62: sbb eax, eax
008B0A64: inc eax
008B0A65: neg eax
008B0A67: mov var_000000A4, ax
008B0A6E: lea ecx, var_20
008B0A71: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B0A76: lea ecx, var_44
008B0A79: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B0A7E: movsx eax, word ptr var_000000A4
008B0A85: test eax, eax
008B0A87: jz 008B0D7Dh
008B0A8D: lea eax, var_18
008B0A90: push eax
008B0A91: mov eax, [ebp+08h]
008B0A94: mov eax, [eax]
008B0A96: push [ebp+08h]
008B0A99: call [eax+000001C0h]
008B0A9F: fclex 
008B0AA1: mov var_000000A4, eax
008B0AA7: cmp var_000000A4, 00000000h
008B0AAE: jnl 8B0AD0h
008B0AB0: push 000001C0h
008B0AB5: push 00444EC0h
008B0ABA: push [ebp+08h]
008B0ABD: push var_000000A4
008B0AC3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B0AC8: mov var_000000C8, eax
008B0ACE: jmp 8B0AD7h
008B0AD0: and var_000000C8, 00000000h
008B0AD7: push var_18
008B0ADA: call 004109DCh ; Val(arg_1)
008B0ADF: fstp real8 ptr var_000000A0
008B0AE5: mov eax, [ebp+08h]
008B0AE8: mov eax, [eax]
008B0AEA: push [ebp+08h]
008B0AED: call [eax+00000324h]
008B0AF3: push eax
008B0AF4: lea eax, var_30
008B0AF7: push eax
008B0AF8: call 00410A84h ; Set (object)
008B0AFD: mov eax, [ebp+08h]
008B0B00: mov eax, [eax]
008B0B02: push [ebp+08h]
008B0B05: call [eax+00000324h]
008B0B0B: push eax
008B0B0C: lea eax, var_20
008B0B0F: push eax
008B0B10: call 00410A84h ; Set (object)
008B0B15: mov var_000000A8, eax
008B0B1B: lea eax, var_0000008C
008B0B21: push eax
008B0B22: mov eax, var_000000A8
008B0B28: mov eax, [eax]
008B0B2A: push var_000000A8
008B0B30: call [eax+000000E8h]
008B0B36: fclex 
008B0B38: mov var_000000AC, eax
008B0B3E: cmp var_000000AC, 00000000h
008B0B45: jnl 8B0B6Ah
008B0B47: push 000000E8h
008B0B4C: push 00440EDCh
008B0B51: push var_000000A8
008B0B57: push var_000000AC
008B0B5D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B0B62: mov var_000000CC, eax
008B0B68: jmp 8B0B71h
008B0B6A: and var_000000CC, 00000000h
008B0B71: mov eax, [ebp+08h]
008B0B74: mov eax, [eax]
008B0B76: push [ebp+08h]
008B0B79: call [eax+00000324h]
008B0B7F: push eax
008B0B80: lea eax, var_34
008B0B83: push eax
008B0B84: call 00410A84h ; Set (object)
008B0B89: mov eax, [ebp+08h]
008B0B8C: mov eax, [eax]
008B0B8E: push [ebp+08h]
008B0B91: call [eax+00000324h]
008B0B97: push eax
008B0B98: lea eax, var_28
008B0B9B: push eax
008B0B9C: call 00410A84h ; Set (object)
008B0BA1: mov var_000000B0, eax
008B0BA7: lea eax, var_00000094
008B0BAD: push eax
008B0BAE: mov eax, var_000000B0
008B0BB4: mov eax, [eax]
008B0BB6: push var_000000B0
008B0BBC: call [eax+000000E8h]
008B0BC2: fclex 
008B0BC4: mov var_000000B4, eax
008B0BCA: cmp var_000000B4, 00000000h
008B0BD1: jnl 8B0BF6h
008B0BD3: push 000000E8h
008B0BD8: push 00440EDCh
008B0BDD: push var_000000B0
008B0BE3: push var_000000B4
008B0BE9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B0BEE: mov var_000000D0, eax
008B0BF4: jmp 8B0BFDh
008B0BF6: and var_000000D0, 00000000h
008B0BFD: push 00000000h
008B0BFF: push 00000003h
008B0C01: push 00000001h
008B0C03: push 00000000h
008B0C05: lea eax, var_48
008B0C08: push eax
008B0C09: push 00000010h
008B0C0B: push 00000880h
008B0C10: call 00410946h ; ReDim
008B0C15: add esp, 0000001Ch
008B0C18: fld real4 ptr var_0000008C
008B0C1E: fstp real4 ptr var_00000090
008B0C24: mov eax, var_30
008B0C27: mov var_000000C0, eax
008B0C2D: and var_30, 00000000h
008B0C31: push var_000000C0
008B0C37: lea eax, var_24
008B0C3A: push eax
008B0C3B: call 00410A84h ; Set (object)
008B0C40: lea eax, var_00000090
008B0C46: push eax
008B0C47: lea eax, var_24
008B0C4A: push eax
008B0C4B: call 007A5FECh
008B0C50: mov var_50, eax
008B0C53: mov var_58, 00000003h
008B0C5A: lea esi, var_58
008B0C5D: push 00000000h
008B0C5F: push var_48
008B0C62: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B0C67: mov ecx, eax
008B0C69: mov edx, esi
008B0C6B: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B0C70: fld real4 ptr var_00000094
008B0C76: fstp real4 ptr var_00000098
008B0C7C: mov eax, var_34
008B0C7F: mov var_000000C4, eax
008B0C85: and var_34, 00000000h
008B0C89: push var_000000C4
008B0C8F: lea eax, var_2C
008B0C92: push eax
008B0C93: call 00410A84h ; Set (object)
008B0C98: lea eax, var_00000098
008B0C9E: push eax
008B0C9F: lea eax, var_2C
008B0CA2: push eax
008B0CA3: call 007A629Fh
008B0CA8: mov var_60, eax
008B0CAB: mov var_68, 00000003h
008B0CB2: lea esi, var_68
008B0CB5: push 00000001h
008B0CB7: push var_48
008B0CBA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B0CBF: mov ecx, eax
008B0CC1: mov edx, esi
008B0CC3: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B0CC8: call 007A654Ch
008B0CCD: mov var_70, eax
008B0CD0: mov var_78, 00000003h
008B0CD7: lea esi, var_78
008B0CDA: push 00000002h
008B0CDC: push var_48
008B0CDF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B0CE4: mov ecx, eax
008B0CE6: mov edx, esi
008B0CE8: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B0CED: call 007A6731h
008B0CF2: mov var_80, eax
008B0CF5: mov var_00000088, 00000003h
008B0CFF: lea esi, var_00000088
008B0D05: push 00000003h
008B0D07: push var_48
008B0D0A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B0D0F: mov ecx, eax
008B0D11: mov edx, esi
008B0D13: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B0D18: mov edx, 0043D4B8h ; x14
008B0D1D: lea ecx, var_1C
008B0D20: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008B0D25: lea eax, var_48
008B0D28: push eax
008B0D29: lea eax, var_1C
008B0D2C: push eax
008B0D2D: fld real8 ptr var_000000A0
008B0D33: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008B0D38: push eax
008B0D39: call 007A6910h
008B0D3E: lea eax, var_48
008B0D41: push eax
008B0D42: push 00000000h
008B0D44: call 00410934h ; Erase
008B0D49: lea eax, var_1C
008B0D4C: push eax
008B0D4D: lea eax, var_18
008B0D50: push eax
008B0D51: push 00000002h
008B0D53: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B0D58: add esp, 0000000Ch
008B0D5B: lea eax, var_34
008B0D5E: push eax
008B0D5F: lea eax, var_30
008B0D62: push eax
008B0D63: lea eax, var_2C
008B0D66: push eax
008B0D67: lea eax, var_28
008B0D6A: push eax
008B0D6B: lea eax, var_24
008B0D6E: push eax
008B0D6F: lea eax, var_20
008B0D72: push eax
008B0D73: push 00000006h
008B0D75: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B0D7A: add esp, 0000001Ch
008B0D7D: mov var_04, 00000000h
008B0D84: wait 
008B0D85: push 008B0DD5h
008B0D8A: jmp 8B0DD4h
008B0D8C: lea eax, var_1C
008B0D8F: push eax
008B0D90: lea eax, var_18
008B0D93: push eax
008B0D94: push 00000002h
008B0D96: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B0D9B: add esp, 0000000Ch
008B0D9E: lea eax, var_34
008B0DA1: push eax
008B0DA2: lea eax, var_30
008B0DA5: push eax
008B0DA6: lea eax, var_2C
008B0DA9: push eax
008B0DAA: lea eax, var_28
008B0DAD: push eax
008B0DAE: lea eax, var_24
008B0DB1: push eax
008B0DB2: lea eax, var_20
008B0DB5: push eax
008B0DB6: push 00000006h
008B0DB8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B0DBD: add esp, 0000001Ch
008B0DC0: lea ecx, var_44
008B0DC3: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B0DC8: lea eax, var_48
008B0DCB: push eax
008B0DCC: push 00000000h
008B0DCE: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008B0DD3: ret 
End Sub

Private sub imgScreenCap__8B0DF4
008B0DF4: push ebp
008B0DF5: mov ebp, esp
008B0DF7: sub esp, 0000000Ch
008B0DFA: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B0DFF: mov eax, fs:[00h]
008B0E05: push eax
008B0E06: mov fs:[00000000h], esp
008B0E0D: push 00000038h
008B0E0F: pop eax
008B0E10: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B0E15: push ebx
008B0E16: push esi
008B0E17: push edi
008B0E18: mov var_0C, esp
008B0E1B: mov var_08, 0040EA00h
008B0E22: mov eax, [ebp+08h]
008B0E25: and eax, 00000001h
008B0E28: mov var_04, eax
008B0E2B: mov eax, [ebp+08h]
008B0E2E: and al, FEh
008B0E30: mov [ebp+08h], eax
008B0E33: mov eax, [ebp+08h]
008B0E36: mov eax, [eax]
008B0E38: push [ebp+08h]
008B0E3B: call [eax+04h]
008B0E3E: push 00000000h
008B0E40: push 00000000h
008B0E42: mov eax, [ebp+08h]
008B0E45: mov eax, [eax]
008B0E47: push [ebp+08h]
008B0E4A: call [eax+0000034Ch]
008B0E50: push eax
008B0E51: lea eax, var_20
008B0E54: push eax
008B0E55: call 00410A84h ; Set (object)
008B0E5A: push eax
008B0E5B: lea eax, var_30
008B0E5E: push eax
008B0E5F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B0E64: add esp, 00000010h
008B0E67: push eax
008B0E68: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008B0E6D: dec eax
008B0E6E: neg eax
008B0E70: sbb eax, eax
008B0E72: inc eax
008B0E73: neg eax
008B0E75: mov var_40, ax
008B0E79: lea ecx, var_20
008B0E7C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B0E81: lea ecx, var_30
008B0E84: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B0E89: movsx eax, word ptr var_40
008B0E8D: test eax, eax
008B0E8F: jz 008B0F5Ch
008B0E95: lea eax, var_18
008B0E98: push eax
008B0E99: mov eax, [ebp+08h]
008B0E9C: mov eax, [eax]
008B0E9E: push [ebp+08h]
008B0EA1: call [eax+000001C0h]
008B0EA7: fclex 
008B0EA9: mov var_40, eax
008B0EAC: cmp var_40, 00000000h
008B0EB0: jnl 8B0ECCh
008B0EB2: push 000001C0h
008B0EB7: push 00444EC0h
008B0EBC: push [ebp+08h]
008B0EBF: push var_40
008B0EC2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B0EC7: mov var_4C, eax
008B0ECA: jmp 8B0ED0h
008B0ECC: and var_4C, 00000000h
008B0ED0: push var_18
008B0ED3: call 004109DCh ; Val(arg_1)
008B0ED8: fstp real8 ptr var_3C
008B0EDB: push 00000000h
008B0EDD: push 00000000h
008B0EDF: push 00000001h
008B0EE1: push 00000000h
008B0EE3: lea eax, var_34
008B0EE6: push eax
008B0EE7: push 00000010h
008B0EE9: push 00000880h
008B0EEE: call 00410946h ; ReDim
008B0EF3: add esp, 0000001Ch
008B0EF6: mov eax, [ebp+0Ch]
008B0EF9: movsx eax, word ptr [eax]
008B0EFC: push eax
008B0EFD: lea eax, var_30
008B0F00: push eax
008B0F01: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
008B0F06: lea esi, var_30
008B0F09: push 00000000h
008B0F0B: push var_34
008B0F0E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B0F13: mov ecx, eax
008B0F15: mov edx, esi
008B0F17: call 00410940h ; msvbvm60.dll.__vbaVarZero
008B0F1C: mov edx, 0043D4C4h ; x15
008B0F21: lea ecx, var_1C
008B0F24: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008B0F29: lea eax, var_34
008B0F2C: push eax
008B0F2D: lea eax, var_1C
008B0F30: push eax
008B0F31: fld real8 ptr var_3C
008B0F34: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008B0F39: push eax
008B0F3A: call 007A6910h
008B0F3F: lea eax, var_34
008B0F42: push eax
008B0F43: push 00000000h
008B0F45: call 00410934h ; Erase
008B0F4A: lea eax, var_1C
008B0F4D: push eax
008B0F4E: lea eax, var_18
008B0F51: push eax
008B0F52: push 00000002h
008B0F54: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B0F59: add esp, 0000000Ch
008B0F5C: mov var_04, 00000000h
008B0F63: wait 
008B0F64: push 008B0F9Ah
008B0F69: jmp 8B0F99h
008B0F6B: lea eax, var_1C
008B0F6E: push eax
008B0F6F: lea eax, var_18
008B0F72: push eax
008B0F73: push 00000002h
008B0F75: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B0F7A: add esp, 0000000Ch
008B0F7D: lea ecx, var_20
008B0F80: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B0F85: lea ecx, var_30
008B0F88: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B0F8D: lea eax, var_34
008B0F90: push eax
008B0F91: push 00000000h
008B0F93: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008B0F98: ret 
End Sub

Private sub imgScreenCap__8B0FB9
008B0FB9: push ebp
008B0FBA: mov ebp, esp
008B0FBC: sub esp, 0000000Ch
008B0FBF: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B0FC4: mov eax, fs:[00h]
008B0FCA: push eax
008B0FCB: mov fs:[00000000h], esp
008B0FD2: mov eax, 000000B8h
008B0FD7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B0FDC: push ebx
008B0FDD: push esi
008B0FDE: push edi
008B0FDF: mov var_0C, esp
008B0FE2: mov var_08, 0040EA10h
008B0FE9: mov eax, [ebp+08h]
008B0FEC: and eax, 00000001h
008B0FEF: mov var_04, eax
008B0FF2: mov eax, [ebp+08h]
008B0FF5: and al, FEh
008B0FF7: mov [ebp+08h], eax
008B0FFA: mov eax, [ebp+08h]
008B0FFD: mov eax, [eax]
008B0FFF: push [ebp+08h]
008B1002: call [eax+04h]
008B1005: push 00000000h
008B1007: push 00000000h
008B1009: mov eax, [ebp+08h]
008B100C: mov eax, [eax]
008B100E: push [ebp+08h]
008B1011: call [eax+0000035Ch]
008B1017: push eax
008B1018: lea eax, var_20
008B101B: push eax
008B101C: call 00410A84h ; Set (object)
008B1021: push eax
008B1022: lea eax, var_3C
008B1025: push eax
008B1026: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B102B: add esp, 00000010h
008B102E: push eax
008B102F: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008B1034: dec eax
008B1035: neg eax
008B1037: sbb eax, eax
008B1039: inc eax
008B103A: neg eax
008B103C: mov var_000000AC, ax
008B1043: lea ecx, var_20
008B1046: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B104B: lea ecx, var_3C
008B104E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B1053: movsx eax, word ptr var_000000AC
008B105A: test eax, eax
008B105C: jz 008B1393h
008B1062: lea eax, var_18
008B1065: push eax
008B1066: mov eax, [ebp+08h]
008B1069: mov eax, [eax]
008B106B: push [ebp+08h]
008B106E: call [eax+000001C0h]
008B1074: fclex 
008B1076: mov var_000000AC, eax
008B107C: cmp var_000000AC, 00000000h
008B1083: jnl 8B10A5h
008B1085: push 000001C0h
008B108A: push 00444EC0h
008B108F: push [ebp+08h]
008B1092: push var_000000AC
008B1098: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B109D: mov var_000000C4, eax
008B10A3: jmp 8B10ACh
008B10A5: and var_000000C4, 00000000h
008B10AC: push var_18
008B10AF: call 004109DCh ; Val(arg_1)
008B10B4: fstp real8 ptr var_000000A8
008B10BA: mov eax, [ebp+08h]
008B10BD: mov eax, [eax]
008B10BF: push [ebp+08h]
008B10C2: call [eax+00000324h]
008B10C8: push eax
008B10C9: lea eax, var_28
008B10CC: push eax
008B10CD: call 00410A84h ; Set (object)
008B10D2: mov eax, [ebp+08h]
008B10D5: mov eax, [eax]
008B10D7: push [ebp+08h]
008B10DA: call [eax+00000324h]
008B10E0: push eax
008B10E1: lea eax, var_2C
008B10E4: push eax
008B10E5: call 00410A84h ; Set (object)
008B10EA: push 00000000h
008B10EC: push 00000005h
008B10EE: push 00000001h
008B10F0: push 00000000h
008B10F2: lea eax, var_40
008B10F5: push eax
008B10F6: push 00000010h
008B10F8: push 00000880h
008B10FD: call 00410946h ; ReDim
008B1102: add esp, 0000001Ch
008B1105: mov eax, [ebp+0Ch]
008B1108: mov var_48, eax
008B110B: mov var_50, 00004002h
008B1112: lea esi, var_50
008B1115: push 00000000h
008B1117: push var_40
008B111A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B111F: mov ecx, eax
008B1121: mov edx, esi
008B1123: call 00410940h ; msvbvm60.dll.__vbaVarZero
008B1128: mov eax, var_28
008B112B: mov var_000000BC, eax
008B1131: and var_28, 00000000h
008B1135: push var_000000BC
008B113B: lea eax, var_20
008B113E: push eax
008B113F: call 00410A84h ; Set (object)
008B1144: push [ebp+14h]
008B1147: lea eax, var_20
008B114A: push eax
008B114B: call 007A5FECh
008B1150: mov var_58, eax
008B1153: mov var_60, 00000003h
008B115A: lea esi, var_60
008B115D: push 00000001h
008B115F: push var_40
008B1162: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B1167: mov ecx, eax
008B1169: mov edx, esi
008B116B: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B1170: mov eax, var_2C
008B1173: mov var_000000C0, eax
008B1179: and var_2C, 00000000h
008B117D: push var_000000C0
008B1183: lea eax, var_24
008B1186: push eax
008B1187: call 00410A84h ; Set (object)
008B118C: push [ebp+18h]
008B118F: lea eax, var_24
008B1192: push eax
008B1193: call 007A629Fh
008B1198: mov var_68, eax
008B119B: mov var_70, 00000003h
008B11A2: lea esi, var_70
008B11A5: push 00000002h
008B11A7: push var_40
008B11AA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B11AF: mov ecx, eax
008B11B1: mov edx, esi
008B11B3: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B11B8: call 007A654Ch
008B11BD: mov var_78, eax
008B11C0: mov var_80, 00000003h
008B11C7: lea esi, var_80
008B11CA: push 00000003h
008B11CC: push var_40
008B11CF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B11D4: mov ecx, eax
008B11D6: mov edx, esi
008B11D8: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B11DD: call 007A6731h
008B11E2: mov var_00000088, eax
008B11E8: mov var_00000090, 00000003h
008B11F2: lea esi, var_00000090
008B11F8: push 00000004h
008B11FA: push var_40
008B11FD: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B1202: mov ecx, eax
008B1204: mov edx, esi
008B1206: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B120B: and var_00000098, 00000000h
008B1212: mov var_000000A0, 00000002h
008B121C: lea esi, var_000000A0
008B1222: push 00000005h
008B1224: push var_40
008B1227: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B122C: mov ecx, eax
008B122E: mov edx, esi
008B1230: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B1235: mov edx, 0043D4ACh ; x13
008B123A: lea ecx, var_1C
008B123D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008B1242: lea eax, var_40
008B1245: push eax
008B1246: lea eax, var_1C
008B1249: push eax
008B124A: fld real8 ptr var_000000A8
008B1250: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008B1255: push eax
008B1256: call 007A6910h
008B125B: lea eax, var_40
008B125E: push eax
008B125F: push 00000000h
008B1261: call 00410934h ; Erase
008B1266: lea eax, var_1C
008B1269: push eax
008B126A: lea eax, var_18
008B126D: push eax
008B126E: push 00000002h
008B1270: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B1275: add esp, 0000000Ch
008B1278: lea eax, var_2C
008B127B: push eax
008B127C: lea eax, var_28
008B127F: push eax
008B1280: lea eax, var_24
008B1283: push eax
008B1284: lea eax, var_20
008B1287: push eax
008B1288: push 00000004h
008B128A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B128F: add esp, 00000014h
008B1292: call 0041096Ah ; DoEvents
008B1297: mov eax, [ebp+08h]
008B129A: mov eax, [eax]
008B129C: push [ebp+08h]
008B129F: call [eax+00000324h]
008B12A5: push eax
008B12A6: lea eax, var_20
008B12A9: push eax
008B12AA: call 00410A84h ; Set (object)
008B12AF: mov var_000000AC, eax
008B12B5: mov eax, [ebp+14h]
008B12B8: fld real4 ptr [eax]
008B12BA: push ecx
008B12BB: fstp real4 ptr [esp]
008B12BE: mov eax, var_000000AC
008B12C4: mov eax, [eax]
008B12C6: push var_000000AC
008B12CC: call [eax+000000ECh]
008B12D2: fclex 
008B12D4: mov var_000000B0, eax
008B12DA: cmp var_000000B0, 00000000h
008B12E1: jnl 8B1306h
008B12E3: push 000000ECh
008B12E8: push 00440EDCh
008B12ED: push var_000000AC
008B12F3: push var_000000B0
008B12F9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B12FE: mov var_000000C8, eax
008B1304: jmp 8B130Dh
008B1306: and var_000000C8, 00000000h
008B130D: lea ecx, var_20
008B1310: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B1315: mov eax, [ebp+08h]
008B1318: mov eax, [eax]
008B131A: push [ebp+08h]
008B131D: call [eax+00000324h]
008B1323: push eax
008B1324: lea eax, var_20
008B1327: push eax
008B1328: call 00410A84h ; Set (object)
008B132D: mov var_000000AC, eax
008B1333: mov eax, [ebp+18h]
008B1336: fld real4 ptr [eax]
008B1338: push ecx
008B1339: fstp real4 ptr [esp]
008B133C: mov eax, var_000000AC
008B1342: mov eax, [eax]
008B1344: push var_000000AC
008B134A: call [eax+000000F4h]
008B1350: fclex 
008B1352: mov var_000000B0, eax
008B1358: cmp var_000000B0, 00000000h
008B135F: jnl 8B1384h
008B1361: push 000000F4h
008B1366: push 00440EDCh
008B136B: push var_000000AC
008B1371: push var_000000B0
008B1377: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B137C: mov var_000000CC, eax
008B1382: jmp 8B138Bh
008B1384: and var_000000CC, 00000000h
008B138B: lea ecx, var_20
008B138E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B1393: mov var_04, 00000000h
008B139A: wait 
008B139B: push 008B13E3h
008B13A0: jmp 8B13E2h
008B13A2: lea eax, var_1C
008B13A5: push eax
008B13A6: lea eax, var_18
008B13A9: push eax
008B13AA: push 00000002h
008B13AC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B13B1: add esp, 0000000Ch
008B13B4: lea eax, var_2C
008B13B7: push eax
008B13B8: lea eax, var_28
008B13BB: push eax
008B13BC: lea eax, var_24
008B13BF: push eax
008B13C0: lea eax, var_20
008B13C3: push eax
008B13C4: push 00000004h
008B13C6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B13CB: add esp, 00000014h
008B13CE: lea ecx, var_3C
008B13D1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B13D6: lea eax, var_40
008B13D9: push eax
008B13DA: push 00000000h
008B13DC: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008B13E1: ret 
End Sub

Private sub imgScreenCap__8B1402
008B1402: push ebp
008B1403: mov ebp, esp
008B1405: sub esp, 0000000Ch
008B1408: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B140D: mov eax, fs:[00h]
008B1413: push eax
008B1414: mov fs:[00000000h], esp
008B141B: mov eax, 000000B8h
008B1420: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B1425: push ebx
008B1426: push esi
008B1427: push edi
008B1428: mov var_0C, esp
008B142B: mov var_08, 0040EA20h
008B1432: mov eax, [ebp+08h]
008B1435: and eax, 00000001h
008B1438: mov var_04, eax
008B143B: mov eax, [ebp+08h]
008B143E: and al, FEh
008B1440: mov [ebp+08h], eax
008B1443: mov eax, [ebp+08h]
008B1446: mov eax, [eax]
008B1448: push [ebp+08h]
008B144B: call [eax+04h]
008B144E: push 00000000h
008B1450: push 00000000h
008B1452: mov eax, [ebp+08h]
008B1455: mov eax, [eax]
008B1457: push [ebp+08h]
008B145A: call [eax+0000035Ch]
008B1460: push eax
008B1461: lea eax, var_20
008B1464: push eax
008B1465: call 00410A84h ; Set (object)
008B146A: push eax
008B146B: lea eax, var_3C
008B146E: push eax
008B146F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B1474: add esp, 00000010h
008B1477: push eax
008B1478: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008B147D: dec eax
008B147E: neg eax
008B1480: sbb eax, eax
008B1482: inc eax
008B1483: neg eax
008B1485: mov var_000000AC, ax
008B148C: lea ecx, var_20
008B148F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B1494: lea ecx, var_3C
008B1497: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B149C: movsx eax, word ptr var_000000AC
008B14A3: test eax, eax
008B14A5: jz 008B17DFh
008B14AB: lea eax, var_18
008B14AE: push eax
008B14AF: mov eax, [ebp+08h]
008B14B2: mov eax, [eax]
008B14B4: push [ebp+08h]
008B14B7: call [eax+000001C0h]
008B14BD: fclex 
008B14BF: mov var_000000AC, eax
008B14C5: cmp var_000000AC, 00000000h
008B14CC: jnl 8B14EEh
008B14CE: push 000001C0h
008B14D3: push 00444EC0h
008B14D8: push [ebp+08h]
008B14DB: push var_000000AC
008B14E1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B14E6: mov var_000000C4, eax
008B14EC: jmp 8B14F5h
008B14EE: and var_000000C4, 00000000h
008B14F5: push var_18
008B14F8: call 004109DCh ; Val(arg_1)
008B14FD: fstp real8 ptr var_000000A8
008B1503: mov eax, [ebp+08h]
008B1506: mov eax, [eax]
008B1508: push [ebp+08h]
008B150B: call [eax+00000324h]
008B1511: push eax
008B1512: lea eax, var_28
008B1515: push eax
008B1516: call 00410A84h ; Set (object)
008B151B: mov eax, [ebp+08h]
008B151E: mov eax, [eax]
008B1520: push [ebp+08h]
008B1523: call [eax+00000324h]
008B1529: push eax
008B152A: lea eax, var_2C
008B152D: push eax
008B152E: call 00410A84h ; Set (object)
008B1533: push 00000000h
008B1535: push 00000005h
008B1537: push 00000001h
008B1539: push 00000000h
008B153B: lea eax, var_40
008B153E: push eax
008B153F: push 00000010h
008B1541: push 00000880h
008B1546: call 00410946h ; ReDim
008B154B: add esp, 0000001Ch
008B154E: mov eax, [ebp+0Ch]
008B1551: mov var_48, eax
008B1554: mov var_50, 00004002h
008B155B: lea esi, var_50
008B155E: push 00000000h
008B1560: push var_40
008B1563: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B1568: mov ecx, eax
008B156A: mov edx, esi
008B156C: call 00410940h ; msvbvm60.dll.__vbaVarZero
008B1571: mov eax, var_28
008B1574: mov var_000000BC, eax
008B157A: and var_28, 00000000h
008B157E: push var_000000BC
008B1584: lea eax, var_20
008B1587: push eax
008B1588: call 00410A84h ; Set (object)
008B158D: push [ebp+14h]
008B1590: lea eax, var_20
008B1593: push eax
008B1594: call 007A5FECh
008B1599: mov var_58, eax
008B159C: mov var_60, 00000003h
008B15A3: lea esi, var_60
008B15A6: push 00000001h
008B15A8: push var_40
008B15AB: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B15B0: mov ecx, eax
008B15B2: mov edx, esi
008B15B4: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B15B9: mov eax, var_2C
008B15BC: mov var_000000C0, eax
008B15C2: and var_2C, 00000000h
008B15C6: push var_000000C0
008B15CC: lea eax, var_24
008B15CF: push eax
008B15D0: call 00410A84h ; Set (object)
008B15D5: push [ebp+18h]
008B15D8: lea eax, var_24
008B15DB: push eax
008B15DC: call 007A629Fh
008B15E1: mov var_68, eax
008B15E4: mov var_70, 00000003h
008B15EB: lea esi, var_70
008B15EE: push 00000002h
008B15F0: push var_40
008B15F3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B15F8: mov ecx, eax
008B15FA: mov edx, esi
008B15FC: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B1601: call 007A654Ch
008B1606: mov var_78, eax
008B1609: mov var_80, 00000003h
008B1610: lea esi, var_80
008B1613: push 00000003h
008B1615: push var_40
008B1618: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B161D: mov ecx, eax
008B161F: mov edx, esi
008B1621: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B1626: call 007A6731h
008B162B: mov var_00000088, eax
008B1631: mov var_00000090, 00000003h
008B163B: lea esi, var_00000090
008B1641: push 00000004h
008B1643: push var_40
008B1646: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B164B: mov ecx, eax
008B164D: mov edx, esi
008B164F: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B1654: mov var_00000098, 00000001h
008B165E: mov var_000000A0, 00000002h
008B1668: lea esi, var_000000A0
008B166E: push 00000005h
008B1670: push var_40
008B1673: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B1678: mov ecx, eax
008B167A: mov edx, esi
008B167C: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B1681: mov edx, 0043D4ACh ; x13
008B1686: lea ecx, var_1C
008B1689: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008B168E: lea eax, var_40
008B1691: push eax
008B1692: lea eax, var_1C
008B1695: push eax
008B1696: fld real8 ptr var_000000A8
008B169C: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008B16A1: push eax
008B16A2: call 007A6910h
008B16A7: lea eax, var_40
008B16AA: push eax
008B16AB: push 00000000h
008B16AD: call 00410934h ; Erase
008B16B2: lea eax, var_1C
008B16B5: push eax
008B16B6: lea eax, var_18
008B16B9: push eax
008B16BA: push 00000002h
008B16BC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B16C1: add esp, 0000000Ch
008B16C4: lea eax, var_2C
008B16C7: push eax
008B16C8: lea eax, var_28
008B16CB: push eax
008B16CC: lea eax, var_24
008B16CF: push eax
008B16D0: lea eax, var_20
008B16D3: push eax
008B16D4: push 00000004h
008B16D6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B16DB: add esp, 00000014h
008B16DE: call 0041096Ah ; DoEvents
008B16E3: mov eax, [ebp+08h]
008B16E6: mov eax, [eax]
008B16E8: push [ebp+08h]
008B16EB: call [eax+00000324h]
008B16F1: push eax
008B16F2: lea eax, var_20
008B16F5: push eax
008B16F6: call 00410A84h ; Set (object)
008B16FB: mov var_000000AC, eax
008B1701: mov eax, [ebp+14h]
008B1704: fld real4 ptr [eax]
008B1706: push ecx
008B1707: fstp real4 ptr [esp]
008B170A: mov eax, var_000000AC
008B1710: mov eax, [eax]
008B1712: push var_000000AC
008B1718: call [eax+000000ECh]
008B171E: fclex 
008B1720: mov var_000000B0, eax
008B1726: cmp var_000000B0, 00000000h
008B172D: jnl 8B1752h
008B172F: push 000000ECh
008B1734: push 00440EDCh
008B1739: push var_000000AC
008B173F: push var_000000B0
008B1745: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B174A: mov var_000000C8, eax
008B1750: jmp 8B1759h
008B1752: and var_000000C8, 00000000h
008B1759: lea ecx, var_20
008B175C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B1761: mov eax, [ebp+08h]
008B1764: mov eax, [eax]
008B1766: push [ebp+08h]
008B1769: call [eax+00000324h]
008B176F: push eax
008B1770: lea eax, var_20
008B1773: push eax
008B1774: call 00410A84h ; Set (object)
008B1779: mov var_000000AC, eax
008B177F: mov eax, [ebp+18h]
008B1782: fld real4 ptr [eax]
008B1784: push ecx
008B1785: fstp real4 ptr [esp]
008B1788: mov eax, var_000000AC
008B178E: mov eax, [eax]
008B1790: push var_000000AC
008B1796: call [eax+000000F4h]
008B179C: fclex 
008B179E: mov var_000000B0, eax
008B17A4: cmp var_000000B0, 00000000h
008B17AB: jnl 8B17D0h
008B17AD: push 000000F4h
008B17B2: push 00440EDCh
008B17B7: push var_000000AC
008B17BD: push var_000000B0
008B17C3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B17C8: mov var_000000CC, eax
008B17CE: jmp 8B17D7h
008B17D0: and var_000000CC, 00000000h
008B17D7: lea ecx, var_20
008B17DA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B17DF: mov var_04, 00000000h
008B17E6: wait 
008B17E7: push 008B182Fh
008B17EC: jmp 8B182Eh
008B17EE: lea eax, var_1C
008B17F1: push eax
008B17F2: lea eax, var_18
008B17F5: push eax
008B17F6: push 00000002h
008B17F8: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B17FD: add esp, 0000000Ch
008B1800: lea eax, var_2C
008B1803: push eax
008B1804: lea eax, var_28
008B1807: push eax
008B1808: lea eax, var_24
008B180B: push eax
008B180C: lea eax, var_20
008B180F: push eax
008B1810: push 00000004h
008B1812: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B1817: add esp, 00000014h
008B181A: lea ecx, var_3C
008B181D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B1822: lea eax, var_40
008B1825: push eax
008B1826: push 00000000h
008B1828: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008B182D: ret 
End Sub

Private sub scrScreenInterval__8B184E
008B184E: push ebp
008B184F: mov ebp, esp
008B1851: sub esp, 0000000Ch
008B1854: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B1859: mov eax, fs:[00h]
008B185F: push eax
008B1860: mov fs:[00000000h], esp
008B1867: push 00000030h
008B1869: pop eax
008B186A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B186F: push ebx
008B1870: push esi
008B1871: push edi
008B1872: mov var_0C, esp
008B1875: mov var_08, 0040EA30h
008B187C: mov eax, [ebp+08h]
008B187F: and eax, 00000001h
008B1882: mov var_04, eax
008B1885: mov eax, [ebp+08h]
008B1888: and al, FEh
008B188A: mov [ebp+08h], eax
008B188D: mov eax, [ebp+08h]
008B1890: mov eax, [eax]
008B1892: push [ebp+08h]
008B1895: call [eax+04h]
008B1898: mov eax, [ebp+08h]
008B189B: mov eax, [eax]
008B189D: push [ebp+08h]
008B18A0: call [eax+00000304h]
008B18A6: push eax
008B18A7: lea eax, var_20
008B18AA: push eax
008B18AB: call 00410A84h ; Set (object)
008B18B0: mov var_30, eax
008B18B3: mov eax, [ebp+08h]
008B18B6: mov eax, [eax]
008B18B8: push [ebp+08h]
008B18BB: call [eax+00000300h]
008B18C1: push eax
008B18C2: lea eax, var_1C
008B18C5: push eax
008B18C6: call 00410A84h ; Set (object)
008B18CB: mov var_28, eax
008B18CE: lea eax, var_24
008B18D1: push eax
008B18D2: mov eax, var_28
008B18D5: mov eax, [eax]
008B18D7: push var_28
008B18DA: call [eax+000000B8h]
008B18E0: fclex 
008B18E2: mov var_2C, eax
008B18E5: cmp var_2C, 00000000h
008B18E9: jnl 8B1905h
008B18EB: push 000000B8h
008B18F0: push 00457C34h
008B18F5: push var_28
008B18F8: push var_2C
008B18FB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B1900: mov var_40, eax
008B1903: jmp 8B1909h
008B1905: and var_40, 00000000h
008B1909: push var_24
008B190C: call 00410964h ; msvbvm60.dll.__vbaStrI2
008B1911: mov edx, eax
008B1913: lea ecx, var_18
008B1916: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B191B: push eax
008B191C: mov eax, var_30
008B191F: mov eax, [eax]
008B1921: push var_30
008B1924: call [eax+000000A4h]
008B192A: fclex 
008B192C: mov var_34, eax
008B192F: cmp var_34, 00000000h
008B1933: jnl 8B194Fh
008B1935: push 000000A4h
008B193A: push 00440E08h
008B193F: push var_30
008B1942: push var_34
008B1945: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B194A: mov var_44, eax
008B194D: jmp 8B1953h
008B194F: and var_44, 00000000h
008B1953: lea ecx, var_18
008B1956: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008B195B: lea eax, var_20
008B195E: push eax
008B195F: lea eax, var_1C
008B1962: push eax
008B1963: push 00000002h
008B1965: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B196A: add esp, 0000000Ch
008B196D: mov var_04, 00000000h
008B1974: push 008B1997h
008B1979: jmp 8B1996h
008B197B: lea ecx, var_18
008B197E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008B1983: lea eax, var_20
008B1986: push eax
008B1987: lea eax, var_1C
008B198A: push eax
008B198B: push 00000002h
008B198D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B1992: add esp, 0000000Ch
008B1995: ret 
End Sub

Private sub Timer1__8B19B6
008B19B6: push ebp
008B19B7: mov ebp, esp
008B19B9: sub esp, 0000000Ch
008B19BC: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B19C1: mov eax, fs:[00h]
008B19C7: push eax
008B19C8: mov fs:[00000000h], esp
008B19CF: push 0000003Ch
008B19D1: pop eax
008B19D2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B19D7: push ebx
008B19D8: push esi
008B19D9: push edi
008B19DA: mov var_0C, esp
008B19DD: mov var_08, 0040EA40h
008B19E4: mov eax, [ebp+08h]
008B19E7: and eax, 00000001h
008B19EA: mov var_04, eax
008B19ED: mov eax, [ebp+08h]
008B19F0: and al, FEh
008B19F2: mov [ebp+08h], eax
008B19F5: mov eax, [ebp+08h]
008B19F8: mov eax, [eax]
008B19FA: push [ebp+08h]
008B19FD: call [eax+04h]
008B1A00: cmp [008F2010h], 00000000h
008B1A07: jnz 8B1A21h
008B1A09: push 008F2010h
008B1A0E: push 00433984h
008B1A13: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B1A18: mov var_40, 008F2010h
008B1A1F: jmp 8B1A28h
008B1A21: mov var_40, 008F2010h
008B1A28: mov eax, var_40
008B1A2B: mov eax, [eax]
008B1A2D: mov ecx, var_40
008B1A30: mov ecx, [ecx]
008B1A32: mov ecx, [ecx]
008B1A34: push eax
008B1A35: call [ecx+00000380h]
008B1A3B: push eax
008B1A3C: lea eax, var_18
008B1A3F: push eax
008B1A40: call 00410A84h ; Set (object)
008B1A45: mov var_24, eax
008B1A48: lea eax, var_1C
008B1A4B: push eax
008B1A4C: push 00000003h
008B1A4E: mov eax, var_24
008B1A51: mov eax, [eax]
008B1A53: push var_24
008B1A56: call [eax+40h]
008B1A59: fclex 
008B1A5B: mov var_28, eax
008B1A5E: cmp var_28, 00000000h
008B1A62: jnl 8B1A7Bh
008B1A64: push 00000040h
008B1A66: push 00440DE8h
008B1A6B: push var_24
008B1A6E: push var_28
008B1A71: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B1A76: mov var_44, eax
008B1A79: jmp 8B1A7Fh
008B1A7B: and var_44, 00000000h
008B1A7F: mov eax, var_1C
008B1A82: mov var_2C, eax
008B1A85: lea eax, var_20
008B1A88: push eax
008B1A89: mov eax, var_2C
008B1A8C: mov eax, [eax]
008B1A8E: push var_2C
008B1A91: call [eax+000000E0h]
008B1A97: fclex 
008B1A99: mov var_30, eax
008B1A9C: cmp var_30, 00000000h
008B1AA0: jnl 8B1ABCh
008B1AA2: push 000000E0h
008B1AA7: push 00440DF8h
008B1AAC: push var_2C
008B1AAF: push var_30
008B1AB2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B1AB7: mov var_48, eax
008B1ABA: jmp 8B1AC0h
008B1ABC: and var_48, 00000000h
008B1AC0: xor eax, eax
008B1AC2: cmp word ptr var_20, 0001h
008B1AC7: setz al
008B1ACA: neg eax
008B1ACC: mov var_34, ax
008B1AD0: lea eax, var_1C
008B1AD3: push eax
008B1AD4: lea eax, var_18
008B1AD7: push eax
008B1AD8: push 00000002h
008B1ADA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B1ADF: add esp, 0000000Ch
008B1AE2: movsx eax, word ptr var_34
008B1AE6: test eax, eax
008B1AE8: jz 8B1B1Fh
008B1AEA: mov eax, [ebp+08h]
008B1AED: mov eax, [eax]
008B1AEF: push [ebp+08h]
008B1AF2: call [eax+00000704h]
008B1AF8: mov var_24, eax
008B1AFB: cmp var_24, 00000000h
008B1AFF: jnl 8B1B1Bh
008B1B01: push 00000704h
008B1B06: push 004401B0h
008B1B0B: push [ebp+08h]
008B1B0E: push var_24
008B1B11: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B1B16: mov var_4C, eax
008B1B19: jmp 8B1B1Fh
008B1B1B: and var_4C, 00000000h
008B1B1F: mov eax, [ebp+08h]
008B1B22: mov eax, [eax]
008B1B24: push [ebp+08h]
008B1B27: call [eax+00000340h]
008B1B2D: push eax
008B1B2E: lea eax, var_18
008B1B31: push eax
008B1B32: call 00410A84h ; Set (object)
008B1B37: mov var_24, eax
008B1B3A: push 00000000h
008B1B3C: mov eax, var_24
008B1B3F: mov eax, [eax]
008B1B41: push var_24
008B1B44: call [eax+5Ch]
008B1B47: fclex 
008B1B49: mov var_28, eax
008B1B4C: cmp var_28, 00000000h
008B1B50: jnl 8B1B69h
008B1B52: push 0000005Ch
008B1B54: push 00447A20h
008B1B59: push var_24
008B1B5C: push var_28
008B1B5F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B1B64: mov var_50, eax
008B1B67: jmp 8B1B6Dh
008B1B69: and var_50, 00000000h
008B1B6D: lea ecx, var_18
008B1B70: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B1B75: mov var_04, 00000000h
008B1B7C: push 008B1B97h
008B1B81: jmp 8B1B96h
008B1B83: lea eax, var_1C
008B1B86: push eax
008B1B87: lea eax, var_18
008B1B8A: push eax
008B1B8B: push 00000002h
008B1B8D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B1B92: add esp, 0000000Ch
008B1B95: ret 
End Sub

Private sub cmdScreenSingel__8AD39B
008AD39B: push ebp
008AD39C: mov ebp, esp
008AD39E: sub esp, 0000000Ch
008AD3A1: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008AD3A6: mov eax, fs:[00h]
008AD3AC: push eax
008AD3AD: mov fs:[00000000h], esp
008AD3B4: mov eax, 00000104h
008AD3B9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AD3BE: push ebx
008AD3BF: push esi
008AD3C0: push edi
008AD3C1: mov var_0C, esp
008AD3C4: mov var_08, 0040E8B8h
008AD3CB: mov eax, [ebp+08h]
008AD3CE: and eax, 00000001h
008AD3D1: mov var_04, eax
008AD3D4: mov eax, [ebp+08h]
008AD3D7: and al, FEh
008AD3D9: mov [ebp+08h], eax
008AD3DC: mov eax, [ebp+08h]
008AD3DF: mov eax, [eax]
008AD3E1: push [ebp+08h]
008AD3E4: call [eax+04h]
008AD3E7: mov eax, [ebp+08h]
008AD3EA: mov eax, [eax]
008AD3EC: push [ebp+08h]
008AD3EF: call [eax+00000348h]
008AD3F5: push eax
008AD3F6: lea eax, var_34
008AD3F9: push eax
008AD3FA: call 00410A84h ; Set (object)
008AD3FF: mov var_000000C4, eax
008AD405: push 00442938h
008AD40A: mov eax, var_000000C4
008AD410: mov eax, [eax]
008AD412: push var_000000C4
008AD418: call [eax+74h]
008AD41B: fclex 
008AD41D: mov var_000000C8, eax
008AD423: cmp var_000000C8, 00000000h
008AD42A: jnl 8AD44Ch
008AD42C: push 00000074h
008AD42E: push 00447A20h
008AD433: push var_000000C4
008AD439: push var_000000C8
008AD43F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AD444: mov var_00000100, eax
008AD44A: jmp 8AD453h
008AD44C: and var_00000100, 00000000h
008AD453: lea ecx, var_34
008AD456: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AD45B: lea eax, var_18
008AD45E: push eax
008AD45F: mov eax, [ebp+08h]
008AD462: mov eax, [eax]
008AD464: push [ebp+08h]
008AD467: call [eax+000001C0h]
008AD46D: fclex 
008AD46F: mov var_000000C4, eax
008AD475: cmp var_000000C4, 00000000h
008AD47C: jnl 8AD49Eh
008AD47E: push 000001C0h
008AD483: push 00444EC0h
008AD488: push [ebp+08h]
008AD48B: push var_000000C4
008AD491: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AD496: mov var_00000104, eax
008AD49C: jmp 8AD4A5h
008AD49E: and var_00000104, 00000000h
008AD4A5: push var_18
008AD4A8: call 004109DCh ; Val(arg_1)
008AD4AD: fstp real8 ptr var_000000C0
008AD4B3: push 00000000h
008AD4B5: push 00000005h
008AD4B7: push 00000001h
008AD4B9: push 00000000h
008AD4BB: lea eax, var_00000088
008AD4C1: push eax
008AD4C2: push 00000010h
008AD4C4: push 00000880h
008AD4C9: call 00410946h ; ReDim
008AD4CE: add esp, 0000001Ch
008AD4D1: lea eax, var_1C
008AD4D4: push eax
008AD4D5: mov eax, [ebp+08h]
008AD4D8: mov eax, [eax]
008AD4DA: push [ebp+08h]
008AD4DD: call [eax+000001C0h]
008AD4E3: fclex 
008AD4E5: mov var_000000C8, eax
008AD4EB: cmp var_000000C8, 00000000h
008AD4F2: jnl 8AD514h
008AD4F4: push 000001C0h
008AD4F9: push 00444EC0h
008AD4FE: push [ebp+08h]
008AD501: push var_000000C8
008AD507: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AD50C: mov var_00000108, eax
008AD512: jmp 8AD51Bh
008AD514: and var_00000108, 00000000h
008AD51B: push var_1C
008AD51E: call 004109DCh ; Val(arg_1)
008AD523: fstp real8 ptr var_00000090
008AD529: mov var_00000098, 00000005h
008AD533: lea esi, var_00000098
008AD539: push 00000000h
008AD53B: push var_00000088
008AD541: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008AD546: mov ecx, eax
008AD548: mov edx, esi
008AD54A: call 00410922h ; msvbvm60.dll.__vbaVarMove
008AD54F: mov eax, [ebp+08h]
008AD552: mov eax, [eax]
008AD554: push [ebp+08h]
008AD557: call [eax+00000308h]
008AD55D: push eax
008AD55E: lea eax, var_34
008AD561: push eax
008AD562: call 00410A84h ; Set (object)
008AD567: mov var_000000CC, eax
008AD56D: lea eax, var_20
008AD570: push eax
008AD571: mov eax, var_000000CC
008AD577: mov eax, [eax]
008AD579: push var_000000CC
008AD57F: call [eax+000000A8h]
008AD585: fclex 
008AD587: mov var_000000D0, eax
008AD58D: cmp var_000000D0, 00000000h
008AD594: jnl 8AD5B9h
008AD596: push 000000A8h
008AD59B: push 0044C944h
008AD5A0: push var_000000CC
008AD5A6: push var_000000D0
008AD5AC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AD5B1: mov var_0000010C, eax
008AD5B7: jmp 8AD5C0h
008AD5B9: and var_0000010C, 00000000h
008AD5C0: mov eax, var_20
008AD5C3: mov var_000000F4, eax
008AD5C9: and var_20, 00000000h
008AD5CD: mov eax, var_000000F4
008AD5D3: mov var_5C, eax
008AD5D6: mov var_64, 00000008h
008AD5DD: lea esi, var_64
008AD5E0: push 00000001h
008AD5E2: push var_00000088
008AD5E8: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008AD5ED: mov ecx, eax
008AD5EF: mov edx, esi
008AD5F1: call 00410940h ; msvbvm60.dll.__vbaVarZero
008AD5F6: mov eax, [ebp+08h]
008AD5F9: mov eax, [eax]
008AD5FB: push [ebp+08h]
008AD5FE: call [eax+0000030Ch]
008AD604: push eax
008AD605: lea eax, var_38
008AD608: push eax
008AD609: call 00410A84h ; Set (object)
008AD60E: mov var_000000D4, eax
008AD614: lea eax, var_24
008AD617: push eax
008AD618: mov eax, var_000000D4
008AD61E: mov eax, [eax]
008AD620: push var_000000D4
008AD626: call [eax+000000A8h]
008AD62C: fclex 
008AD62E: mov var_000000D8, eax
008AD634: cmp var_000000D8, 00000000h
008AD63B: jnl 8AD660h
008AD63D: push 000000A8h
008AD642: push 0044C944h
008AD647: push var_000000D4
008AD64D: push var_000000D8
008AD653: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AD658: mov var_00000110, eax
008AD65E: jmp 8AD667h
008AD660: and var_00000110, 00000000h
008AD667: mov eax, var_24
008AD66A: mov var_000000F8, eax
008AD670: and var_24, 00000000h
008AD674: mov eax, var_000000F8
008AD67A: mov var_6C, eax
008AD67D: mov var_74, 00000008h
008AD684: lea esi, var_74
008AD687: push 00000002h
008AD689: push var_00000088
008AD68F: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008AD694: mov ecx, eax
008AD696: mov edx, esi
008AD698: call 00410940h ; msvbvm60.dll.__vbaVarZero
008AD69D: push 00000000h
008AD69F: push 00000000h
008AD6A1: mov eax, [ebp+08h]
008AD6A4: mov eax, [eax]
008AD6A6: push [ebp+08h]
008AD6A9: call [eax+00000368h]
008AD6AF: push eax
008AD6B0: lea eax, var_3C
008AD6B3: push eax
008AD6B4: call 00410A84h ; Set (object)
008AD6B9: push eax
008AD6BA: lea eax, var_54
008AD6BD: push eax
008AD6BE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AD6C3: add esp, 00000010h
008AD6C6: push eax
008AD6C7: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008AD6CC: mov var_000000A0, eax
008AD6D2: mov var_000000A8, 00000003h
008AD6DC: lea esi, var_000000A8
008AD6E2: push 00000003h
008AD6E4: push var_00000088
008AD6EA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008AD6EF: mov ecx, eax
008AD6F1: mov edx, esi
008AD6F3: call 00410922h ; msvbvm60.dll.__vbaVarMove
008AD6F8: mov eax, [ebp+08h]
008AD6FB: mov eax, [eax]
008AD6FD: push [ebp+08h]
008AD700: call [eax+00000310h]
008AD706: push eax
008AD707: lea eax, var_40
008AD70A: push eax
008AD70B: call 00410A84h ; Set (object)
008AD710: mov var_000000DC, eax
008AD716: lea eax, var_28
008AD719: push eax
008AD71A: mov eax, var_000000DC
008AD720: mov eax, [eax]
008AD722: push var_000000DC
008AD728: call [eax+000000A8h]
008AD72E: fclex 
008AD730: mov var_000000E0, eax
008AD736: cmp var_000000E0, 00000000h
008AD73D: jnl 8AD762h
008AD73F: push 000000A8h
008AD744: push 0044C944h
008AD749: push var_000000DC
008AD74F: push var_000000E0
008AD755: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AD75A: mov var_00000114, eax
008AD760: jmp 8AD769h
008AD762: and var_00000114, 00000000h
008AD769: mov eax, var_28
008AD76C: mov var_000000FC, eax
008AD772: and var_28, 00000000h
008AD776: mov eax, var_000000FC
008AD77C: mov var_7C, eax
008AD77F: mov var_00000084, 00000008h
008AD789: lea esi, var_00000084
008AD78F: push 00000004h
008AD791: push var_00000088
008AD797: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008AD79C: mov ecx, eax
008AD79E: mov edx, esi
008AD7A0: call 00410940h ; msvbvm60.dll.__vbaVarZero
008AD7A5: mov eax, [ebp+08h]
008AD7A8: mov eax, [eax]
008AD7AA: push [ebp+08h]
008AD7AD: call [eax+00000324h]
008AD7B3: push eax
008AD7B4: lea eax, var_44
008AD7B7: push eax
008AD7B8: call 00410A84h ; Set (object)
008AD7BD: mov var_000000E4, eax
008AD7C3: lea eax, var_2C
008AD7C6: push eax
008AD7C7: mov eax, var_000000E4
008AD7CD: mov eax, [eax]
008AD7CF: push var_000000E4
008AD7D5: call [eax+000001B8h]
008AD7DB: fclex 
008AD7DD: mov var_000000E8, eax
008AD7E3: cmp var_000000E8, 00000000h
008AD7EA: jnl 8AD80Fh
008AD7EC: push 000001B8h
008AD7F1: push 00440EDCh
008AD7F6: push var_000000E4
008AD7FC: push var_000000E8
008AD802: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AD807: mov var_00000118, eax
008AD80D: jmp 8AD816h
008AD80F: and var_00000118, 00000000h
008AD816: push var_2C
008AD819: call 004109DCh ; Val(arg_1)
008AD81E: fstp real8 ptr var_000000B0
008AD824: mov var_000000B8, 00000005h
008AD82E: lea esi, var_000000B8
008AD834: push 00000005h
008AD836: push var_00000088
008AD83C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008AD841: mov ecx, eax
008AD843: mov edx, esi
008AD845: call 00410922h ; msvbvm60.dll.__vbaVarMove
008AD84A: mov edx, 0043D4A0h ; x12
008AD84F: lea ecx, var_30
008AD852: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008AD857: lea eax, var_00000088
008AD85D: push eax
008AD85E: lea eax, var_30
008AD861: push eax
008AD862: fld real8 ptr var_000000C0
008AD868: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008AD86D: push eax
008AD86E: call 007A6910h
008AD873: lea eax, var_00000088
008AD879: push eax
008AD87A: push 00000000h
008AD87C: call 00410934h ; Erase
008AD881: lea eax, var_30
008AD884: push eax
008AD885: lea eax, var_2C
008AD888: push eax
008AD889: lea eax, var_1C
008AD88C: push eax
008AD88D: lea eax, var_18
008AD890: push eax
008AD891: push 00000004h
008AD893: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AD898: add esp, 00000014h
008AD89B: lea eax, var_44
008AD89E: push eax
008AD89F: lea eax, var_40
008AD8A2: push eax
008AD8A3: lea eax, var_3C
008AD8A6: push eax
008AD8A7: lea eax, var_38
008AD8AA: push eax
008AD8AB: lea eax, var_34
008AD8AE: push eax
008AD8AF: push 00000005h
008AD8B1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AD8B6: add esp, 00000018h
008AD8B9: lea ecx, var_54
008AD8BC: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008AD8C1: mov var_04, 00000000h
008AD8C8: wait 
008AD8C9: push 008AD941h
008AD8CE: jmp 8AD940h
008AD8D0: lea eax, var_30
008AD8D3: push eax
008AD8D4: lea eax, var_2C
008AD8D7: push eax
008AD8D8: lea eax, var_28
008AD8DB: push eax
008AD8DC: lea eax, var_24
008AD8DF: push eax
008AD8E0: lea eax, var_20
008AD8E3: push eax
008AD8E4: lea eax, var_1C
008AD8E7: push eax
008AD8E8: lea eax, var_18
008AD8EB: push eax
008AD8EC: push 00000007h
008AD8EE: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AD8F3: add esp, 00000020h
008AD8F6: lea eax, var_44
008AD8F9: push eax
008AD8FA: lea eax, var_40
008AD8FD: push eax
008AD8FE: lea eax, var_3C
008AD901: push eax
008AD902: lea eax, var_38
008AD905: push eax
008AD906: lea eax, var_34
008AD909: push eax
008AD90A: push 00000005h
008AD90C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AD911: add esp, 00000018h
008AD914: lea eax, var_00000084
008AD91A: push eax
008AD91B: lea eax, var_74
008AD91E: push eax
008AD91F: lea eax, var_64
008AD922: push eax
008AD923: lea eax, var_54
008AD926: push eax
008AD927: push 00000004h
008AD929: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AD92E: add esp, 00000014h
008AD931: lea eax, var_00000088
008AD937: push eax
008AD938: push 00000000h
008AD93A: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008AD93F: ret 
End Sub

Private sub tmrSS__8B2119
008B2119: push ebp
008B211A: mov ebp, esp
008B211C: sub esp, 0000000Ch
008B211F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B2124: mov eax, fs:[00h]
008B212A: push eax
008B212B: mov fs:[00000000h], esp
008B2132: mov eax, 00000108h
008B2137: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B213C: push ebx
008B213D: push esi
008B213E: push edi
008B213F: mov var_0C, esp
008B2142: mov var_08, 0040EA60h
008B2149: mov eax, [ebp+08h]
008B214C: and eax, 00000001h
008B214F: mov var_04, eax
008B2152: mov eax, [ebp+08h]
008B2155: and al, FEh
008B2157: mov [ebp+08h], eax
008B215A: mov eax, [ebp+08h]
008B215D: mov eax, [eax]
008B215F: push [ebp+08h]
008B2162: call [eax+04h]
008B2165: mov eax, [ebp+08h]
008B2168: mov eax, [eax]
008B216A: push [ebp+08h]
008B216D: call [eax+00000348h]
008B2173: push eax
008B2174: lea eax, var_34
008B2177: push eax
008B2178: call 00410A84h ; Set (object)
008B217D: mov var_000000C4, eax
008B2183: lea eax, var_18
008B2186: push eax
008B2187: mov eax, var_000000C4
008B218D: mov eax, [eax]
008B218F: push var_000000C4
008B2195: call [eax+70h]
008B2198: fclex 
008B219A: mov var_000000C8, eax
008B21A0: cmp var_000000C8, 00000000h
008B21A7: jnl 8B21C9h
008B21A9: push 00000070h
008B21AB: push 00447A20h
008B21B0: push var_000000C4
008B21B6: push var_000000C8
008B21BC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B21C1: mov var_00000100, eax
008B21C7: jmp 8B21D0h
008B21C9: and var_00000100, 00000000h
008B21D0: push var_18
008B21D3: push 00442938h
008B21D8: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008B21DD: neg eax
008B21DF: sbb eax, eax
008B21E1: neg eax
008B21E3: neg eax
008B21E5: mov var_000000CC, ax
008B21EC: lea ecx, var_18
008B21EF: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008B21F4: lea ecx, var_34
008B21F7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B21FC: movsx eax, word ptr var_000000CC
008B2203: test eax, eax
008B2205: jz 008B26E5h
008B220B: mov eax, [ebp+08h]
008B220E: mov eax, [eax]
008B2210: push [ebp+08h]
008B2213: call [eax+00000348h]
008B2219: push eax
008B221A: lea eax, var_34
008B221D: push eax
008B221E: call 00410A84h ; Set (object)
008B2223: mov var_000000C4, eax
008B2229: push 00442938h
008B222E: mov eax, var_000000C4
008B2234: mov eax, [eax]
008B2236: push var_000000C4
008B223C: call [eax+74h]
008B223F: fclex 
008B2241: mov var_000000C8, eax
008B2247: cmp var_000000C8, 00000000h
008B224E: jnl 8B2270h
008B2250: push 00000074h
008B2252: push 00447A20h
008B2257: push var_000000C4
008B225D: push var_000000C8
008B2263: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B2268: mov var_00000104, eax
008B226E: jmp 8B2277h
008B2270: and var_00000104, 00000000h
008B2277: lea ecx, var_34
008B227A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B227F: lea eax, var_18
008B2282: push eax
008B2283: mov eax, [ebp+08h]
008B2286: mov eax, [eax]
008B2288: push [ebp+08h]
008B228B: call [eax+000001C0h]
008B2291: fclex 
008B2293: mov var_000000C4, eax
008B2299: cmp var_000000C4, 00000000h
008B22A0: jnl 8B22C2h
008B22A2: push 000001C0h
008B22A7: push 00444EC0h
008B22AC: push [ebp+08h]
008B22AF: push var_000000C4
008B22B5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B22BA: mov var_00000108, eax
008B22C0: jmp 8B22C9h
008B22C2: and var_00000108, 00000000h
008B22C9: push var_18
008B22CC: call 004109DCh ; Val(arg_1)
008B22D1: fstp real8 ptr var_000000C0
008B22D7: push 00000000h
008B22D9: push 00000005h
008B22DB: push 00000001h
008B22DD: push 00000000h
008B22DF: lea eax, var_00000088
008B22E5: push eax
008B22E6: push 00000010h
008B22E8: push 00000880h
008B22ED: call 00410946h ; ReDim
008B22F2: add esp, 0000001Ch
008B22F5: lea eax, var_1C
008B22F8: push eax
008B22F9: mov eax, [ebp+08h]
008B22FC: mov eax, [eax]
008B22FE: push [ebp+08h]
008B2301: call [eax+000001C0h]
008B2307: fclex 
008B2309: mov var_000000C8, eax
008B230F: cmp var_000000C8, 00000000h
008B2316: jnl 8B2338h
008B2318: push 000001C0h
008B231D: push 00444EC0h
008B2322: push [ebp+08h]
008B2325: push var_000000C8
008B232B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B2330: mov var_0000010C, eax
008B2336: jmp 8B233Fh
008B2338: and var_0000010C, 00000000h
008B233F: push var_1C
008B2342: call 004109DCh ; Val(arg_1)
008B2347: fstp real8 ptr var_00000090
008B234D: mov var_00000098, 00000005h
008B2357: lea esi, var_00000098
008B235D: push 00000000h
008B235F: push var_00000088
008B2365: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B236A: mov ecx, eax
008B236C: mov edx, esi
008B236E: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B2373: mov eax, [ebp+08h]
008B2376: mov eax, [eax]
008B2378: push [ebp+08h]
008B237B: call [eax+00000308h]
008B2381: push eax
008B2382: lea eax, var_34
008B2385: push eax
008B2386: call 00410A84h ; Set (object)
008B238B: mov var_000000CC, eax
008B2391: lea eax, var_20
008B2394: push eax
008B2395: mov eax, var_000000CC
008B239B: mov eax, [eax]
008B239D: push var_000000CC
008B23A3: call [eax+000000A8h]
008B23A9: fclex 
008B23AB: mov var_000000D0, eax
008B23B1: cmp var_000000D0, 00000000h
008B23B8: jnl 8B23DDh
008B23BA: push 000000A8h
008B23BF: push 0044C944h
008B23C4: push var_000000CC
008B23CA: push var_000000D0
008B23D0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B23D5: mov var_00000110, eax
008B23DB: jmp 8B23E4h
008B23DD: and var_00000110, 00000000h
008B23E4: mov eax, var_20
008B23E7: mov var_000000F4, eax
008B23ED: and var_20, 00000000h
008B23F1: mov eax, var_000000F4
008B23F7: mov var_5C, eax
008B23FA: mov var_64, 00000008h
008B2401: lea esi, var_64
008B2404: push 00000001h
008B2406: push var_00000088
008B240C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B2411: mov ecx, eax
008B2413: mov edx, esi
008B2415: call 00410940h ; msvbvm60.dll.__vbaVarZero
008B241A: mov eax, [ebp+08h]
008B241D: mov eax, [eax]
008B241F: push [ebp+08h]
008B2422: call [eax+0000030Ch]
008B2428: push eax
008B2429: lea eax, var_38
008B242C: push eax
008B242D: call 00410A84h ; Set (object)
008B2432: mov var_000000D4, eax
008B2438: lea eax, var_24
008B243B: push eax
008B243C: mov eax, var_000000D4
008B2442: mov eax, [eax]
008B2444: push var_000000D4
008B244A: call [eax+000000A8h]
008B2450: fclex 
008B2452: mov var_000000D8, eax
008B2458: cmp var_000000D8, 00000000h
008B245F: jnl 8B2484h
008B2461: push 000000A8h
008B2466: push 0044C944h
008B246B: push var_000000D4
008B2471: push var_000000D8
008B2477: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B247C: mov var_00000114, eax
008B2482: jmp 8B248Bh
008B2484: and var_00000114, 00000000h
008B248B: mov eax, var_24
008B248E: mov var_000000F8, eax
008B2494: and var_24, 00000000h
008B2498: mov eax, var_000000F8
008B249E: mov var_6C, eax
008B24A1: mov var_74, 00000008h
008B24A8: lea esi, var_74
008B24AB: push 00000002h
008B24AD: push var_00000088
008B24B3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B24B8: mov ecx, eax
008B24BA: mov edx, esi
008B24BC: call 00410940h ; msvbvm60.dll.__vbaVarZero
008B24C1: push 00000000h
008B24C3: push 00000000h
008B24C5: mov eax, [ebp+08h]
008B24C8: mov eax, [eax]
008B24CA: push [ebp+08h]
008B24CD: call [eax+00000368h]
008B24D3: push eax
008B24D4: lea eax, var_3C
008B24D7: push eax
008B24D8: call 00410A84h ; Set (object)
008B24DD: push eax
008B24DE: lea eax, var_54
008B24E1: push eax
008B24E2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B24E7: add esp, 00000010h
008B24EA: push eax
008B24EB: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008B24F0: mov var_000000A0, eax
008B24F6: mov var_000000A8, 00000003h
008B2500: lea esi, var_000000A8
008B2506: push 00000003h
008B2508: push var_00000088
008B250E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B2513: mov ecx, eax
008B2515: mov edx, esi
008B2517: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B251C: mov eax, [ebp+08h]
008B251F: mov eax, [eax]
008B2521: push [ebp+08h]
008B2524: call [eax+00000310h]
008B252A: push eax
008B252B: lea eax, var_40
008B252E: push eax
008B252F: call 00410A84h ; Set (object)
008B2534: mov var_000000DC, eax
008B253A: lea eax, var_28
008B253D: push eax
008B253E: mov eax, var_000000DC
008B2544: mov eax, [eax]
008B2546: push var_000000DC
008B254C: call [eax+000000A8h]
008B2552: fclex 
008B2554: mov var_000000E0, eax
008B255A: cmp var_000000E0, 00000000h
008B2561: jnl 8B2586h
008B2563: push 000000A8h
008B2568: push 0044C944h
008B256D: push var_000000DC
008B2573: push var_000000E0
008B2579: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B257E: mov var_00000118, eax
008B2584: jmp 8B258Dh
008B2586: and var_00000118, 00000000h
008B258D: mov eax, var_28
008B2590: mov var_000000FC, eax
008B2596: and var_28, 00000000h
008B259A: mov eax, var_000000FC
008B25A0: mov var_7C, eax
008B25A3: mov var_00000084, 00000008h
008B25AD: lea esi, var_00000084
008B25B3: push 00000004h
008B25B5: push var_00000088
008B25BB: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B25C0: mov ecx, eax
008B25C2: mov edx, esi
008B25C4: call 00410940h ; msvbvm60.dll.__vbaVarZero
008B25C9: mov eax, [ebp+08h]
008B25CC: mov eax, [eax]
008B25CE: push [ebp+08h]
008B25D1: call [eax+00000324h]
008B25D7: push eax
008B25D8: lea eax, var_44
008B25DB: push eax
008B25DC: call 00410A84h ; Set (object)
008B25E1: mov var_000000E4, eax
008B25E7: lea eax, var_2C
008B25EA: push eax
008B25EB: mov eax, var_000000E4
008B25F1: mov eax, [eax]
008B25F3: push var_000000E4
008B25F9: call [eax+000001B8h]
008B25FF: fclex 
008B2601: mov var_000000E8, eax
008B2607: cmp var_000000E8, 00000000h
008B260E: jnl 8B2633h
008B2610: push 000001B8h
008B2615: push 00440EDCh
008B261A: push var_000000E4
008B2620: push var_000000E8
008B2626: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B262B: mov var_0000011C, eax
008B2631: jmp 8B263Ah
008B2633: and var_0000011C, 00000000h
008B263A: push var_2C
008B263D: call 004109DCh ; Val(arg_1)
008B2642: fstp real8 ptr var_000000B0
008B2648: mov var_000000B8, 00000005h
008B2652: lea esi, var_000000B8
008B2658: push 00000005h
008B265A: push var_00000088
008B2660: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B2665: mov ecx, eax
008B2667: mov edx, esi
008B2669: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B266E: mov edx, 0043D4A0h ; x12
008B2673: lea ecx, var_30
008B2676: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008B267B: lea eax, var_00000088
008B2681: push eax
008B2682: lea eax, var_30
008B2685: push eax
008B2686: fld real8 ptr var_000000C0
008B268C: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008B2691: push eax
008B2692: call 007A6910h
008B2697: lea eax, var_00000088
008B269D: push eax
008B269E: push 00000000h
008B26A0: call 00410934h ; Erase
008B26A5: lea eax, var_30
008B26A8: push eax
008B26A9: lea eax, var_2C
008B26AC: push eax
008B26AD: lea eax, var_1C
008B26B0: push eax
008B26B1: lea eax, var_18
008B26B4: push eax
008B26B5: push 00000004h
008B26B7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B26BC: add esp, 00000014h
008B26BF: lea eax, var_44
008B26C2: push eax
008B26C3: lea eax, var_40
008B26C6: push eax
008B26C7: lea eax, var_3C
008B26CA: push eax
008B26CB: lea eax, var_38
008B26CE: push eax
008B26CF: lea eax, var_34
008B26D2: push eax
008B26D3: push 00000005h
008B26D5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B26DA: add esp, 00000018h
008B26DD: lea ecx, var_54
008B26E0: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B26E5: mov var_04, 00000000h
008B26EC: wait 
008B26ED: push 008B2765h
008B26F2: jmp 8B2764h
008B26F4: lea eax, var_30
008B26F7: push eax
008B26F8: lea eax, var_2C
008B26FB: push eax
008B26FC: lea eax, var_28
008B26FF: push eax
008B2700: lea eax, var_24
008B2703: push eax
008B2704: lea eax, var_20
008B2707: push eax
008B2708: lea eax, var_1C
008B270B: push eax
008B270C: lea eax, var_18
008B270F: push eax
008B2710: push 00000007h
008B2712: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B2717: add esp, 00000020h
008B271A: lea eax, var_44
008B271D: push eax
008B271E: lea eax, var_40
008B2721: push eax
008B2722: lea eax, var_3C
008B2725: push eax
008B2726: lea eax, var_38
008B2729: push eax
008B272A: lea eax, var_34
008B272D: push eax
008B272E: push 00000005h
008B2730: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B2735: add esp, 00000018h
008B2738: lea eax, var_00000084
008B273E: push eax
008B273F: lea eax, var_74
008B2742: push eax
008B2743: lea eax, var_64
008B2746: push eax
008B2747: lea eax, var_54
008B274A: push eax
008B274B: push 00000004h
008B274D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B2752: add esp, 00000014h
008B2755: lea eax, var_00000088
008B275B: push eax
008B275C: push 00000000h
008B275E: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008B2763: ret 
End Sub

Private sub Form__8AEA13
008AEA13: push ebp
008AEA14: mov ebp, esp
008AEA16: sub esp, 00000018h
008AEA19: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008AEA1E: mov eax, fs:[00h]
008AEA24: push eax
008AEA25: mov fs:[00000000h], esp
008AEA2C: mov eax, 00000108h
008AEA31: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AEA36: push ebx
008AEA37: push esi
008AEA38: push edi
008AEA39: mov var_18, esp
008AEA3C: mov var_14, 0040E8D8h
008AEA43: mov eax, [ebp+08h]
008AEA46: and eax, 00000001h
008AEA49: mov var_10, eax
008AEA4C: mov eax, [ebp+08h]
008AEA4F: and al, FEh
008AEA51: mov [ebp+08h], eax
008AEA54: mov var_0C, 00000000h
008AEA5B: mov eax, [ebp+08h]
008AEA5E: mov eax, [eax]
008AEA60: push [ebp+08h]
008AEA63: call [eax+04h]
008AEA66: mov var_04, 00000001h
008AEA6D: mov var_04, 00000002h
008AEA74: push FFFFFFFFh
008AEA76: call 00410A60h ; On Error ...
008AEA7B: mov var_04, 00000003h
008AEA82: mov eax, [ebp+08h]
008AEA85: mov eax, [eax]
008AEA87: push [ebp+08h]
008AEA8A: call [eax+00000310h]
008AEA90: push eax
008AEA91: lea eax, var_30
008AEA94: push eax
008AEA95: call 00410A84h ; Set (object)
008AEA9A: mov var_000000D0, eax
008AEAA0: push 00459C98h ; 100
008AEAA5: mov eax, var_000000D0
008AEAAB: mov eax, [eax]
008AEAAD: push var_000000D0
008AEAB3: call [eax+000000ACh]
008AEAB9: fclex 
008AEABB: mov var_000000D4, eax
008AEAC1: cmp var_000000D4, 00000000h
008AEAC8: jnl 8AEAEDh
008AEACA: push 000000ACh
008AEACF: push 0044C944h
008AEAD4: push var_000000D0
008AEADA: push var_000000D4
008AEAE0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AEAE5: mov var_000000F4, eax
008AEAEB: jmp 8AEAF4h
008AEAED: and var_000000F4, 00000000h
008AEAF4: lea ecx, var_30
008AEAF7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AEAFC: mov var_04, 00000004h
008AEB03: mov var_7C, 80020004h
008AEB0A: mov var_00000084, 0000000Ah
008AEB14: push 00000010h
008AEB16: pop eax
008AEB17: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AEB1C: lea esi, var_00000084
008AEB22: mov edi, esp
008AEB24: movsd 
008AEB25: movsd 
008AEB26: movsd 
008AEB27: movsd 
008AEB28: push 00459C40h ; screensize
008AEB2D: push 00459C2Ch ; screen
008AEB32: push 00445984h ; bssnet
008AEB37: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008AEB3C: mov edx, eax
008AEB3E: lea ecx, var_28
008AEB41: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AEB46: push eax
008AEB47: call 004109DCh ; Val(arg_1)
008AEB4C: fstp real8 ptr var_000000CC
008AEB52: mov eax, [ebp+08h]
008AEB55: mov eax, [eax]
008AEB57: push [ebp+08h]
008AEB5A: call [eax+00000308h]
008AEB60: push eax
008AEB61: lea eax, var_34
008AEB64: push eax
008AEB65: call 00410A84h ; Set (object)
008AEB6A: mov var_000000D8, eax
008AEB70: mov eax, [ebp+08h]
008AEB73: mov eax, [eax]
008AEB75: push [ebp+08h]
008AEB78: call [eax+00000308h]
008AEB7E: push eax
008AEB7F: lea eax, var_30
008AEB82: push eax
008AEB83: call 00410A84h ; Set (object)
008AEB88: mov var_000000D0, eax
008AEB8E: lea eax, var_2C
008AEB91: push eax
008AEB92: fld real8 ptr var_000000CC
008AEB98: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008AEB9D: push eax
008AEB9E: mov eax, var_000000D0
008AEBA4: mov eax, [eax]
008AEBA6: push var_000000D0
008AEBAC: call [eax+000000F8h]
008AEBB2: fclex 
008AEBB4: mov var_000000D4, eax
008AEBBA: cmp var_000000D4, 00000000h
008AEBC1: jnl 8AEBE6h
008AEBC3: push 000000F8h
008AEBC8: push 0044C944h
008AEBCD: push var_000000D0
008AEBD3: push var_000000D4
008AEBD9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AEBDE: mov var_000000F8, eax
008AEBE4: jmp 8AEBEDh
008AEBE6: and var_000000F8, 00000000h
008AEBED: push var_2C
008AEBF0: mov eax, var_000000D8
008AEBF6: mov eax, [eax]
008AEBF8: push var_000000D8
008AEBFE: call [eax+000000ACh]
008AEC04: fclex 
008AEC06: mov var_000000DC, eax
008AEC0C: cmp var_000000DC, 00000000h
008AEC13: jnl 8AEC38h
008AEC15: push 000000ACh
008AEC1A: push 0044C944h
008AEC1F: push var_000000D8
008AEC25: push var_000000DC
008AEC2B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AEC30: mov var_000000FC, eax
008AEC36: jmp 8AEC3Fh
008AEC38: and var_000000FC, 00000000h
008AEC3F: lea eax, var_2C
008AEC42: push eax
008AEC43: lea eax, var_28
008AEC46: push eax
008AEC47: push 00000002h
008AEC49: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AEC4E: add esp, 0000000Ch
008AEC51: lea eax, var_34
008AEC54: push eax
008AEC55: lea eax, var_30
008AEC58: push eax
008AEC59: push 00000002h
008AEC5B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AEC60: add esp, 0000000Ch
008AEC63: mov var_04, 00000005h
008AEC6A: mov var_7C, 80020004h
008AEC71: mov var_00000084, 0000000Ah
008AEC7B: push 00000010h
008AEC7D: pop eax
008AEC7E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AEC83: lea esi, var_00000084
008AEC89: mov edi, esp
008AEC8B: movsd 
008AEC8C: movsd 
008AEC8D: movsd 
008AEC8E: movsd 
008AEC8F: push 00459C5Ch ; bitsize
008AEC94: push 00459C2Ch ; screen
008AEC99: push 00445984h ; bssnet
008AEC9E: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008AECA3: mov edx, eax
008AECA5: lea ecx, var_28
008AECA8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AECAD: push eax
008AECAE: call 004109DCh ; Val(arg_1)
008AECB3: fstp real8 ptr var_000000CC
008AECB9: mov eax, [ebp+08h]
008AECBC: mov eax, [eax]
008AECBE: push [ebp+08h]
008AECC1: call [eax+0000030Ch]
008AECC7: push eax
008AECC8: lea eax, var_34
008AECCB: push eax
008AECCC: call 00410A84h ; Set (object)
008AECD1: mov var_000000D8, eax
008AECD7: mov eax, [ebp+08h]
008AECDA: mov eax, [eax]
008AECDC: push [ebp+08h]
008AECDF: call [eax+0000030Ch]
008AECE5: push eax
008AECE6: lea eax, var_30
008AECE9: push eax
008AECEA: call 00410A84h ; Set (object)
008AECEF: mov var_000000D0, eax
008AECF5: lea eax, var_2C
008AECF8: push eax
008AECF9: fld real8 ptr var_000000CC
008AECFF: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008AED04: push eax
008AED05: mov eax, var_000000D0
008AED0B: mov eax, [eax]
008AED0D: push var_000000D0
008AED13: call [eax+000000F8h]
008AED19: fclex 
008AED1B: mov var_000000D4, eax
008AED21: cmp var_000000D4, 00000000h
008AED28: jnl 8AED4Dh
008AED2A: push 000000F8h
008AED2F: push 0044C944h
008AED34: push var_000000D0
008AED3A: push var_000000D4
008AED40: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AED45: mov var_00000100, eax
008AED4B: jmp 8AED54h
008AED4D: and var_00000100, 00000000h
008AED54: push var_2C
008AED57: mov eax, var_000000D8
008AED5D: mov eax, [eax]
008AED5F: push var_000000D8
008AED65: call [eax+000000ACh]
008AED6B: fclex 
008AED6D: mov var_000000DC, eax
008AED73: cmp var_000000DC, 00000000h
008AED7A: jnl 8AED9Fh
008AED7C: push 000000ACh
008AED81: push 0044C944h
008AED86: push var_000000D8
008AED8C: push var_000000DC
008AED92: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AED97: mov var_00000104, eax
008AED9D: jmp 8AEDA6h
008AED9F: and var_00000104, 00000000h
008AEDA6: lea eax, var_2C
008AEDA9: push eax
008AEDAA: lea eax, var_28
008AEDAD: push eax
008AEDAE: push 00000002h
008AEDB0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AEDB5: add esp, 0000000Ch
008AEDB8: lea eax, var_34
008AEDBB: push eax
008AEDBC: lea eax, var_30
008AEDBF: push eax
008AEDC0: push 00000002h
008AEDC2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AEDC7: add esp, 0000000Ch
008AEDCA: mov var_04, 00000006h
008AEDD1: mov var_7C, 80020004h
008AEDD8: mov var_00000084, 0000000Ah
008AEDE2: push 00000010h
008AEDE4: pop eax
008AEDE5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AEDEA: lea esi, var_00000084
008AEDF0: mov edi, esp
008AEDF2: movsd 
008AEDF3: movsd 
008AEDF4: movsd 
008AEDF5: movsd 
008AEDF6: push 0045329Ch ; quality
008AEDFB: push 00459C2Ch ; screen
008AEE00: push 00445984h ; bssnet
008AEE05: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008AEE0A: mov edx, eax
008AEE0C: lea ecx, var_28
008AEE0F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AEE14: push eax
008AEE15: call 004109DCh ; Val(arg_1)
008AEE1A: fstp real8 ptr var_000000CC
008AEE20: mov eax, [ebp+08h]
008AEE23: mov eax, [eax]
008AEE25: push [ebp+08h]
008AEE28: call [eax+00000310h]
008AEE2E: push eax
008AEE2F: lea eax, var_34
008AEE32: push eax
008AEE33: call 00410A84h ; Set (object)
008AEE38: mov var_000000D8, eax
008AEE3E: mov eax, [ebp+08h]
008AEE41: mov eax, [eax]
008AEE43: push [ebp+08h]
008AEE46: call [eax+00000310h]
008AEE4C: push eax
008AEE4D: lea eax, var_30
008AEE50: push eax
008AEE51: call 00410A84h ; Set (object)
008AEE56: mov var_000000D0, eax
008AEE5C: lea eax, var_2C
008AEE5F: push eax
008AEE60: fld real8 ptr var_000000CC
008AEE66: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008AEE6B: push eax
008AEE6C: mov eax, var_000000D0
008AEE72: mov eax, [eax]
008AEE74: push var_000000D0
008AEE7A: call [eax+000000F8h]
008AEE80: fclex 
008AEE82: mov var_000000D4, eax
008AEE88: cmp var_000000D4, 00000000h
008AEE8F: jnl 8AEEB4h
008AEE91: push 000000F8h
008AEE96: push 0044C944h
008AEE9B: push var_000000D0
008AEEA1: push var_000000D4
008AEEA7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AEEAC: mov var_00000108, eax
008AEEB2: jmp 8AEEBBh
008AEEB4: and var_00000108, 00000000h
008AEEBB: push var_2C
008AEEBE: mov eax, var_000000D8
008AEEC4: mov eax, [eax]
008AEEC6: push var_000000D8
008AEECC: call [eax+000000ACh]
008AEED2: fclex 
008AEED4: mov var_000000DC, eax
008AEEDA: cmp var_000000DC, 00000000h
008AEEE1: jnl 8AEF06h
008AEEE3: push 000000ACh
008AEEE8: push 0044C944h
008AEEED: push var_000000D8
008AEEF3: push var_000000DC
008AEEF9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AEEFE: mov var_0000010C, eax
008AEF04: jmp 8AEF0Dh
008AEF06: and var_0000010C, 00000000h
008AEF0D: lea eax, var_2C
008AEF10: push eax
008AEF11: lea eax, var_28
008AEF14: push eax
008AEF15: push 00000002h
008AEF17: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AEF1C: add esp, 0000000Ch
008AEF1F: lea eax, var_34
008AEF22: push eax
008AEF23: lea eax, var_30
008AEF26: push eax
008AEF27: push 00000002h
008AEF29: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AEF2E: add esp, 0000000Ch
008AEF31: mov var_04, 00000007h
008AEF38: mov var_7C, 80020004h
008AEF3F: mov var_00000084, 0000000Ah
008AEF49: push 00000010h
008AEF4B: pop eax
008AEF4C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AEF51: lea esi, var_00000084
008AEF57: mov edi, esp
008AEF59: movsd 
008AEF5A: movsd 
008AEF5B: movsd 
008AEF5C: movsd 
008AEF5D: push 00459C70h ; kybrd
008AEF62: push 00459C2Ch ; screen
008AEF67: push 00445984h ; bssnet
008AEF6C: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008AEF71: mov edx, eax
008AEF73: lea ecx, var_28
008AEF76: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AEF7B: push eax
008AEF7C: call 004109DCh ; Val(arg_1)
008AEF81: fstp real8 ptr var_0000008C
008AEF87: mov var_00000094, 00000005h
008AEF91: push 00000010h
008AEF93: pop eax
008AEF94: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AEF99: lea esi, var_00000094
008AEF9F: mov edi, esp
008AEFA1: movsd 
008AEFA2: movsd 
008AEFA3: movsd 
008AEFA4: movsd 
008AEFA5: push 00000000h
008AEFA7: mov eax, [ebp+08h]
008AEFAA: mov eax, [eax]
008AEFAC: push [ebp+08h]
008AEFAF: call [eax+0000034Ch]
008AEFB5: push eax
008AEFB6: lea eax, var_30
008AEFB9: push eax
008AEFBA: call 00410A84h ; Set (object)
008AEFBF: push eax
008AEFC0: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008AEFC5: lea ecx, var_28
008AEFC8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008AEFCD: lea ecx, var_30
008AEFD0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AEFD5: mov var_04, 00000008h
008AEFDC: mov var_7C, 80020004h
008AEFE3: mov var_00000084, 0000000Ah
008AEFED: push 00000010h
008AEFEF: pop eax
008AEFF0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AEFF5: lea esi, var_00000084
008AEFFB: mov edi, esp
008AEFFD: movsd 
008AEFFE: movsd 
008AEFFF: movsd 
008AF000: movsd 
008AF001: push 00459C80h ; mse
008AF006: push 00459C2Ch ; screen
008AF00B: push 00445984h ; bssnet
008AF010: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008AF015: mov edx, eax
008AF017: lea ecx, var_28
008AF01A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AF01F: push eax
008AF020: call 004109DCh ; Val(arg_1)
008AF025: fstp real8 ptr var_0000008C
008AF02B: mov var_00000094, 00000005h
008AF035: push 00000010h
008AF037: pop eax
008AF038: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AF03D: lea esi, var_00000094
008AF043: mov edi, esp
008AF045: movsd 
008AF046: movsd 
008AF047: movsd 
008AF048: movsd 
008AF049: push 00000000h
008AF04B: mov eax, [ebp+08h]
008AF04E: mov eax, [eax]
008AF050: push [ebp+08h]
008AF053: call [eax+0000035Ch]
008AF059: push eax
008AF05A: lea eax, var_30
008AF05D: push eax
008AF05E: call 00410A84h ; Set (object)
008AF063: push eax
008AF064: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008AF069: lea ecx, var_28
008AF06C: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008AF071: lea ecx, var_30
008AF074: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AF079: mov var_04, 00000009h
008AF080: mov var_7C, 80020004h
008AF087: mov var_00000084, 0000000Ah
008AF091: push 00000010h
008AF093: pop eax
008AF094: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AF099: lea esi, var_00000084
008AF09F: mov edi, esp
008AF0A1: movsd 
008AF0A2: movsd 
008AF0A3: movsd 
008AF0A4: movsd 
008AF0A5: push 00459C8Ch ; sve
008AF0AA: push 00459C2Ch ; screen
008AF0AF: push 00445984h ; bssnet
008AF0B4: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008AF0B9: mov edx, eax
008AF0BB: lea ecx, var_28
008AF0BE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AF0C3: push eax
008AF0C4: call 004109DCh ; Val(arg_1)
008AF0C9: fstp real8 ptr var_0000008C
008AF0CF: mov var_00000094, 00000005h
008AF0D9: push 00000010h
008AF0DB: pop eax
008AF0DC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AF0E1: lea esi, var_00000094
008AF0E7: mov edi, esp
008AF0E9: movsd 
008AF0EA: movsd 
008AF0EB: movsd 
008AF0EC: movsd 
008AF0ED: push 00000000h
008AF0EF: mov eax, [ebp+08h]
008AF0F2: mov eax, [eax]
008AF0F4: push [ebp+08h]
008AF0F7: call [eax+00000364h]
008AF0FD: push eax
008AF0FE: lea eax, var_30
008AF101: push eax
008AF102: call 00410A84h ; Set (object)
008AF107: push eax
008AF108: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008AF10D: lea ecx, var_28
008AF110: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008AF115: lea ecx, var_30
008AF118: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AF11D: mov var_04, 0000000Ah
008AF124: mov var_7C, 80020004h
008AF12B: mov var_00000084, 0000000Ah
008AF135: push 00000010h
008AF137: pop eax
008AF138: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AF13D: lea esi, var_00000084
008AF143: mov edi, esp
008AF145: movsd 
008AF146: movsd 
008AF147: movsd 
008AF148: movsd 
008AF149: push 00459CA4h ; screencap
008AF14E: push 00446C3Ch ; settings
008AF153: push 00445984h ; bssnet
008AF158: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008AF15D: mov edx, eax
008AF15F: lea ecx, var_24
008AF162: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AF167: mov var_04, 0000000Bh
008AF16E: push var_24
008AF171: push 00000000h
008AF173: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008AF178: test eax, eax
008AF17A: jz 008AFC5Bh
008AF180: mov var_04, 0000000Ch
008AF187: mov eax, [ebp+08h]
008AF18A: mov eax, [eax]
008AF18C: push [ebp+08h]
008AF18F: call [eax+00000304h]
008AF195: push eax
008AF196: lea eax, var_30
008AF199: push eax
008AF19A: call 00410A84h ; Set (object)
008AF19F: mov var_000000D0, eax
008AF1A5: and var_0000008C, 00000000h
008AF1AC: mov var_00000094, 00000002h
008AF1B6: mov var_7C, 004413D8h
008AF1BD: mov var_00000084, 00000008h
008AF1C7: lea edx, var_00000084
008AF1CD: lea ecx, var_44
008AF1D0: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008AF1D5: push 00000000h
008AF1D7: push FFFFFFFFh
008AF1D9: lea eax, var_44
008AF1DC: push eax
008AF1DD: push var_24
008AF1E0: lea eax, var_54
008AF1E3: push eax
008AF1E4: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
008AF1E9: push 00000010h
008AF1EB: pop eax
008AF1EC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AF1F1: lea esi, var_00000094
008AF1F7: mov edi, esp
008AF1F9: movsd 
008AF1FA: movsd 
008AF1FB: movsd 
008AF1FC: movsd 
008AF1FD: push 00000001h
008AF1FF: lea eax, var_54
008AF202: push eax
008AF203: lea eax, var_64
008AF206: push eax
008AF207: call 00410952h ; msvbvm60.dll.__vbaVarIndexLoad
008AF20C: add esp, 0000001Ch
008AF20F: push eax
008AF210: lea eax, var_28
008AF213: push eax
008AF214: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008AF219: push eax
008AF21A: mov eax, var_000000D0
008AF220: mov eax, [eax]
008AF222: push var_000000D0
008AF228: call [eax+000000A4h]
008AF22E: fclex 
008AF230: mov var_000000D4, eax
008AF236: cmp var_000000D4, 00000000h
008AF23D: jnl 8AF262h
008AF23F: push 000000A4h
008AF244: push 00440E08h
008AF249: push var_000000D0
008AF24F: push var_000000D4
008AF255: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AF25A: mov var_00000110, eax
008AF260: jmp 8AF269h
008AF262: and var_00000110, 00000000h
008AF269: lea ecx, var_28
008AF26C: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008AF271: lea ecx, var_30
008AF274: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AF279: lea eax, var_64
008AF27C: push eax
008AF27D: lea eax, var_54
008AF280: push eax
008AF281: lea eax, var_44
008AF284: push eax
008AF285: push 00000003h
008AF287: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AF28C: add esp, 00000010h
008AF28F: mov var_04, 0000000Dh
008AF296: mov var_0000008C, 00000001h
008AF2A0: mov var_00000094, 00000002h
008AF2AA: mov var_7C, 004413D8h
008AF2B1: mov var_00000084, 00000008h
008AF2BB: lea edx, var_00000084
008AF2C1: lea ecx, var_44
008AF2C4: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008AF2C9: push 00000000h
008AF2CB: push FFFFFFFFh
008AF2CD: lea eax, var_44
008AF2D0: push eax
008AF2D1: push var_24
008AF2D4: lea eax, var_54
008AF2D7: push eax
008AF2D8: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
008AF2DD: and var_000000AC, 00000000h
008AF2E4: mov var_000000B4, 00008008h
008AF2EE: push 00000010h
008AF2F0: pop eax
008AF2F1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AF2F6: lea esi, var_00000094
008AF2FC: mov edi, esp
008AF2FE: movsd 
008AF2FF: movsd 
008AF300: movsd 
008AF301: movsd 
008AF302: push 00000001h
008AF304: lea eax, var_54
008AF307: push eax
008AF308: lea eax, var_64
008AF30B: push eax
008AF30C: call 00410952h ; msvbvm60.dll.__vbaVarIndexLoad
008AF311: add esp, 0000001Ch
008AF314: push eax
008AF315: lea eax, var_000000B4
008AF31B: push eax
008AF31C: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
008AF321: mov var_000000D0, ax
008AF328: lea eax, var_64
008AF32B: push eax
008AF32C: lea eax, var_54
008AF32F: push eax
008AF330: lea eax, var_44
008AF333: push eax
008AF334: push 00000003h
008AF336: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AF33B: add esp, 00000010h
008AF33E: movsx eax, word ptr var_000000D0
008AF345: test eax, eax
008AF347: jz 008AF3D3h
008AF34D: mov var_04, 0000000Eh
008AF354: mov eax, [ebp+08h]
008AF357: mov eax, [eax]
008AF359: push [ebp+08h]
008AF35C: call [eax+00000308h]
008AF362: push eax
008AF363: lea eax, var_30
008AF366: push eax
008AF367: call 00410A84h ; Set (object)
008AF36C: mov var_000000D0, eax
008AF372: push 00459CBCh ; 70
008AF377: mov eax, var_000000D0
008AF37D: mov eax, [eax]
008AF37F: push var_000000D0
008AF385: call [eax+000000ACh]
008AF38B: fclex 
008AF38D: mov var_000000D4, eax
008AF393: cmp var_000000D4, 00000000h
008AF39A: jnl 8AF3BFh
008AF39C: push 000000ACh
008AF3A1: push 0044C944h
008AF3A6: push var_000000D0
008AF3AC: push var_000000D4
008AF3B2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AF3B7: mov var_00000114, eax
008AF3BD: jmp 8AF3C6h
008AF3BF: and var_00000114, 00000000h
008AF3C6: lea ecx, var_30
008AF3C9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AF3CE: jmp 008AF4E5h
008AF3D3: mov var_04, 00000010h
008AF3DA: mov eax, [ebp+08h]
008AF3DD: mov eax, [eax]
008AF3DF: push [ebp+08h]
008AF3E2: call [eax+00000308h]
008AF3E8: push eax
008AF3E9: lea eax, var_30
008AF3EC: push eax
008AF3ED: call 00410A84h ; Set (object)
008AF3F2: mov var_000000D0, eax
008AF3F8: mov var_0000008C, 00000001h
008AF402: mov var_00000094, 00000002h
008AF40C: mov var_7C, 004413D8h
008AF413: mov var_00000084, 00000008h
008AF41D: lea edx, var_00000084
008AF423: lea ecx, var_44
008AF426: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008AF42B: push 00000000h
008AF42D: push FFFFFFFFh
008AF42F: lea eax, var_44
008AF432: push eax
008AF433: push var_24
008AF436: lea eax, var_54
008AF439: push eax
008AF43A: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
008AF43F: push 00000010h
008AF441: pop eax
008AF442: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AF447: lea esi, var_00000094
008AF44D: mov edi, esp
008AF44F: movsd 
008AF450: movsd 
008AF451: movsd 
008AF452: movsd 
008AF453: push 00000001h
008AF455: lea eax, var_54
008AF458: push eax
008AF459: lea eax, var_64
008AF45C: push eax
008AF45D: call 00410952h ; msvbvm60.dll.__vbaVarIndexLoad
008AF462: add esp, 0000001Ch
008AF465: push eax
008AF466: lea eax, var_28
008AF469: push eax
008AF46A: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008AF46F: push eax
008AF470: mov eax, var_000000D0
008AF476: mov eax, [eax]
008AF478: push var_000000D0
008AF47E: call [eax+000000ACh]
008AF484: fclex 
008AF486: mov var_000000D4, eax
008AF48C: cmp var_000000D4, 00000000h
008AF493: jnl 8AF4B8h
008AF495: push 000000ACh
008AF49A: push 0044C944h
008AF49F: push var_000000D0
008AF4A5: push var_000000D4
008AF4AB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AF4B0: mov var_00000118, eax
008AF4B6: jmp 8AF4BFh
008AF4B8: and var_00000118, 00000000h
008AF4BF: lea ecx, var_28
008AF4C2: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008AF4C7: lea ecx, var_30
008AF4CA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AF4CF: lea eax, var_64
008AF4D2: push eax
008AF4D3: lea eax, var_54
008AF4D6: push eax
008AF4D7: lea eax, var_44
008AF4DA: push eax
008AF4DB: push 00000003h
008AF4DD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AF4E2: add esp, 00000010h
008AF4E5: mov var_04, 00000012h
008AF4EC: mov var_0000008C, 00000002h
008AF4F6: mov var_00000094, 00000002h
008AF500: mov var_7C, 004413D8h
008AF507: mov var_00000084, 00000008h
008AF511: lea edx, var_00000084
008AF517: lea ecx, var_44
008AF51A: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008AF51F: push 00000000h
008AF521: push FFFFFFFFh
008AF523: lea eax, var_44
008AF526: push eax
008AF527: push var_24
008AF52A: lea eax, var_54
008AF52D: push eax
008AF52E: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
008AF533: and var_000000AC, 00000000h
008AF53A: mov var_000000B4, 00008008h
008AF544: push 00000010h
008AF546: pop eax
008AF547: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AF54C: lea esi, var_00000094
008AF552: mov edi, esp
008AF554: movsd 
008AF555: movsd 
008AF556: movsd 
008AF557: movsd 
008AF558: push 00000001h
008AF55A: lea eax, var_54
008AF55D: push eax
008AF55E: lea eax, var_64
008AF561: push eax
008AF562: call 00410952h ; msvbvm60.dll.__vbaVarIndexLoad
008AF567: add esp, 0000001Ch
008AF56A: push eax
008AF56B: lea eax, var_000000B4
008AF571: push eax
008AF572: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
008AF577: mov var_000000D0, ax
008AF57E: lea eax, var_64
008AF581: push eax
008AF582: lea eax, var_54
008AF585: push eax
008AF586: lea eax, var_44
008AF589: push eax
008AF58A: push 00000003h
008AF58C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AF591: add esp, 00000010h
008AF594: movsx eax, word ptr var_000000D0
008AF59B: test eax, eax
008AF59D: jz 008AF629h
008AF5A3: mov var_04, 00000013h
008AF5AA: mov eax, [ebp+08h]
008AF5AD: mov eax, [eax]
008AF5AF: push [ebp+08h]
008AF5B2: call [eax+0000030Ch]
008AF5B8: push eax
008AF5B9: lea eax, var_30
008AF5BC: push eax
008AF5BD: call 00410A84h ; Set (object)
008AF5C2: mov var_000000D0, eax
008AF5C8: push 00459CC8h ; 24
008AF5CD: mov eax, var_000000D0
008AF5D3: mov eax, [eax]
008AF5D5: push var_000000D0
008AF5DB: call [eax+000000ACh]
008AF5E1: fclex 
008AF5E3: mov var_000000D4, eax
008AF5E9: cmp var_000000D4, 00000000h
008AF5F0: jnl 8AF615h
008AF5F2: push 000000ACh
008AF5F7: push 0044C944h
008AF5FC: push var_000000D0
008AF602: push var_000000D4
008AF608: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AF60D: mov var_0000011C, eax
008AF613: jmp 8AF61Ch
008AF615: and var_0000011C, 00000000h
008AF61C: lea ecx, var_30
008AF61F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AF624: jmp 008AF73Bh
008AF629: mov var_04, 00000015h
008AF630: mov eax, [ebp+08h]
008AF633: mov eax, [eax]
008AF635: push [ebp+08h]
008AF638: call [eax+0000030Ch]
008AF63E: push eax
008AF63F: lea eax, var_30
008AF642: push eax
008AF643: call 00410A84h ; Set (object)
008AF648: mov var_000000D0, eax
008AF64E: mov var_0000008C, 00000002h
008AF658: mov var_00000094, 00000002h
008AF662: mov var_7C, 004413D8h
008AF669: mov var_00000084, 00000008h
008AF673: lea edx, var_00000084
008AF679: lea ecx, var_44
008AF67C: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008AF681: push 00000000h
008AF683: push FFFFFFFFh
008AF685: lea eax, var_44
008AF688: push eax
008AF689: push var_24
008AF68C: lea eax, var_54
008AF68F: push eax
008AF690: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
008AF695: push 00000010h
008AF697: pop eax
008AF698: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AF69D: lea esi, var_00000094
008AF6A3: mov edi, esp
008AF6A5: movsd 
008AF6A6: movsd 
008AF6A7: movsd 
008AF6A8: movsd 
008AF6A9: push 00000001h
008AF6AB: lea eax, var_54
008AF6AE: push eax
008AF6AF: lea eax, var_64
008AF6B2: push eax
008AF6B3: call 00410952h ; msvbvm60.dll.__vbaVarIndexLoad
008AF6B8: add esp, 0000001Ch
008AF6BB: push eax
008AF6BC: lea eax, var_28
008AF6BF: push eax
008AF6C0: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008AF6C5: push eax
008AF6C6: mov eax, var_000000D0
008AF6CC: mov eax, [eax]
008AF6CE: push var_000000D0
008AF6D4: call [eax+000000ACh]
008AF6DA: fclex 
008AF6DC: mov var_000000D4, eax
008AF6E2: cmp var_000000D4, 00000000h
008AF6E9: jnl 8AF70Eh
008AF6EB: push 000000ACh
008AF6F0: push 0044C944h
008AF6F5: push var_000000D0
008AF6FB: push var_000000D4
008AF701: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AF706: mov var_00000120, eax
008AF70C: jmp 8AF715h
008AF70E: and var_00000120, 00000000h
008AF715: lea ecx, var_28
008AF718: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008AF71D: lea ecx, var_30
008AF720: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AF725: lea eax, var_64
008AF728: push eax
008AF729: lea eax, var_54
008AF72C: push eax
008AF72D: lea eax, var_44
008AF730: push eax
008AF731: push 00000003h
008AF733: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AF738: add esp, 00000010h
008AF73B: mov var_04, 00000017h
008AF742: mov var_0000008C, 00000003h
008AF74C: mov var_00000094, 00000002h
008AF756: mov var_7C, 004413D8h
008AF75D: mov var_00000084, 00000008h
008AF767: lea edx, var_00000084
008AF76D: lea ecx, var_44
008AF770: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008AF775: push 00000000h
008AF777: push FFFFFFFFh
008AF779: lea eax, var_44
008AF77C: push eax
008AF77D: push var_24
008AF780: lea eax, var_54
008AF783: push eax
008AF784: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
008AF789: and var_000000AC, 00000000h
008AF790: mov var_000000B4, 00008008h
008AF79A: push 00000010h
008AF79C: pop eax
008AF79D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AF7A2: lea esi, var_00000094
008AF7A8: mov edi, esp
008AF7AA: movsd 
008AF7AB: movsd 
008AF7AC: movsd 
008AF7AD: movsd 
008AF7AE: push 00000001h
008AF7B0: lea eax, var_54
008AF7B3: push eax
008AF7B4: lea eax, var_64
008AF7B7: push eax
008AF7B8: call 00410952h ; msvbvm60.dll.__vbaVarIndexLoad
008AF7BD: add esp, 0000001Ch
008AF7C0: push eax
008AF7C1: lea eax, var_000000B4
008AF7C7: push eax
008AF7C8: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
008AF7CD: mov var_000000D0, ax
008AF7D4: lea eax, var_64
008AF7D7: push eax
008AF7D8: lea eax, var_54
008AF7DB: push eax
008AF7DC: lea eax, var_44
008AF7DF: push eax
008AF7E0: push 00000003h
008AF7E2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AF7E7: add esp, 00000010h
008AF7EA: movsx eax, word ptr var_000000D0
008AF7F1: test eax, eax
008AF7F3: jz 008AF87Fh
008AF7F9: mov var_04, 00000018h
008AF800: mov eax, [ebp+08h]
008AF803: mov eax, [eax]
008AF805: push [ebp+08h]
008AF808: call [eax+00000310h]
008AF80E: push eax
008AF80F: lea eax, var_30
008AF812: push eax
008AF813: call 00410A84h ; Set (object)
008AF818: mov var_000000D0, eax
008AF81E: push 00453EF0h ; 30
008AF823: mov eax, var_000000D0
008AF829: mov eax, [eax]
008AF82B: push var_000000D0
008AF831: call [eax+000000ACh]
008AF837: fclex 
008AF839: mov var_000000D4, eax
008AF83F: cmp var_000000D4, 00000000h
008AF846: jnl 8AF86Bh
008AF848: push 000000ACh
008AF84D: push 0044C944h
008AF852: push var_000000D0
008AF858: push var_000000D4
008AF85E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AF863: mov var_00000124, eax
008AF869: jmp 8AF872h
008AF86B: and var_00000124, 00000000h
008AF872: lea ecx, var_30
008AF875: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AF87A: jmp 008AF991h
008AF87F: mov var_04, 0000001Ah
008AF886: mov eax, [ebp+08h]
008AF889: mov eax, [eax]
008AF88B: push [ebp+08h]
008AF88E: call [eax+00000310h]
008AF894: push eax
008AF895: lea eax, var_30
008AF898: push eax
008AF899: call 00410A84h ; Set (object)
008AF89E: mov var_000000D0, eax
008AF8A4: mov var_0000008C, 00000003h
008AF8AE: mov var_00000094, 00000002h
008AF8B8: mov var_7C, 004413D8h
008AF8BF: mov var_00000084, 00000008h
008AF8C9: lea edx, var_00000084
008AF8CF: lea ecx, var_44
008AF8D2: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008AF8D7: push 00000000h
008AF8D9: push FFFFFFFFh
008AF8DB: lea eax, var_44
008AF8DE: push eax
008AF8DF: push var_24
008AF8E2: lea eax, var_54
008AF8E5: push eax
008AF8E6: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
008AF8EB: push 00000010h
008AF8ED: pop eax
008AF8EE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AF8F3: lea esi, var_00000094
008AF8F9: mov edi, esp
008AF8FB: movsd 
008AF8FC: movsd 
008AF8FD: movsd 
008AF8FE: movsd 
008AF8FF: push 00000001h
008AF901: lea eax, var_54
008AF904: push eax
008AF905: lea eax, var_64
008AF908: push eax
008AF909: call 00410952h ; msvbvm60.dll.__vbaVarIndexLoad
008AF90E: add esp, 0000001Ch
008AF911: push eax
008AF912: lea eax, var_28
008AF915: push eax
008AF916: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008AF91B: push eax
008AF91C: mov eax, var_000000D0
008AF922: mov eax, [eax]
008AF924: push var_000000D0
008AF92A: call [eax+000000ACh]
008AF930: fclex 
008AF932: mov var_000000D4, eax
008AF938: cmp var_000000D4, 00000000h
008AF93F: jnl 8AF964h
008AF941: push 000000ACh
008AF946: push 0044C944h
008AF94B: push var_000000D0
008AF951: push var_000000D4
008AF957: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AF95C: mov var_00000128, eax
008AF962: jmp 8AF96Bh
008AF964: and var_00000128, 00000000h
008AF96B: lea ecx, var_28
008AF96E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008AF973: lea ecx, var_30
008AF976: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AF97B: lea eax, var_64
008AF97E: push eax
008AF97F: lea eax, var_54
008AF982: push eax
008AF983: lea eax, var_44
008AF986: push eax
008AF987: push 00000003h
008AF989: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AF98E: add esp, 00000010h
008AF991: mov var_04, 0000001Ch
008AF998: mov var_0000008C, 00000004h
008AF9A2: mov var_00000094, 00000002h
008AF9AC: mov var_7C, 004413D8h
008AF9B3: mov var_00000084, 00000008h
008AF9BD: lea edx, var_00000084
008AF9C3: lea ecx, var_44
008AF9C6: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008AF9CB: push 00000000h
008AF9CD: push FFFFFFFFh
008AF9CF: lea eax, var_44
008AF9D2: push eax
008AF9D3: push var_24
008AF9D6: lea eax, var_54
008AF9D9: push eax
008AF9DA: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
008AF9DF: push 00000010h
008AF9E1: pop eax
008AF9E2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AF9E7: lea esi, var_00000094
008AF9ED: mov edi, esp
008AF9EF: movsd 
008AF9F0: movsd 
008AF9F1: movsd 
008AF9F2: movsd 
008AF9F3: push 00000001h
008AF9F5: lea eax, var_54
008AF9F8: push eax
008AF9F9: lea eax, var_64
008AF9FC: push eax
008AF9FD: call 00410952h ; msvbvm60.dll.__vbaVarIndexLoad
008AFA02: add esp, 0000001Ch
008AFA05: push eax
008AFA06: lea eax, var_28
008AFA09: push eax
008AFA0A: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008AFA0F: push eax
008AFA10: call 004109DCh ; Val(arg_1)
008AFA15: fstp real8 ptr var_000000AC
008AFA1B: mov var_000000B4, 00000005h
008AFA25: push 00000010h
008AFA27: pop eax
008AFA28: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AFA2D: lea esi, var_000000B4
008AFA33: mov edi, esp
008AFA35: movsd 
008AFA36: movsd 
008AFA37: movsd 
008AFA38: movsd 
008AFA39: push 00000000h
008AFA3B: mov eax, [ebp+08h]
008AFA3E: mov eax, [eax]
008AFA40: push [ebp+08h]
008AFA43: call [eax+00000368h]
008AFA49: push eax
008AFA4A: lea eax, var_30
008AFA4D: push eax
008AFA4E: call 00410A84h ; Set (object)
008AFA53: push eax
008AFA54: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008AFA59: lea ecx, var_28
008AFA5C: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008AFA61: lea ecx, var_30
008AFA64: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AFA69: lea eax, var_64
008AFA6C: push eax
008AFA6D: lea eax, var_54
008AFA70: push eax
008AFA71: lea eax, var_44
008AFA74: push eax
008AFA75: push 00000003h
008AFA77: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AFA7C: add esp, 00000010h
008AFA7F: mov var_04, 0000001Dh
008AFA86: mov var_0000008C, 00000005h
008AFA90: mov var_00000094, 00000002h
008AFA9A: mov var_7C, 004413D8h
008AFAA1: mov var_00000084, 00000008h
008AFAAB: lea edx, var_00000084
008AFAB1: lea ecx, var_44
008AFAB4: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008AFAB9: push 00000000h
008AFABB: push FFFFFFFFh
008AFABD: lea eax, var_44
008AFAC0: push eax
008AFAC1: push var_24
008AFAC4: lea eax, var_54
008AFAC7: push eax
008AFAC8: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
008AFACD: push 00000010h
008AFACF: pop eax
008AFAD0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AFAD5: lea esi, var_00000094
008AFADB: mov edi, esp
008AFADD: movsd 
008AFADE: movsd 
008AFADF: movsd 
008AFAE0: movsd 
008AFAE1: push 00000001h
008AFAE3: lea eax, var_54
008AFAE6: push eax
008AFAE7: lea eax, var_64
008AFAEA: push eax
008AFAEB: call 00410952h ; msvbvm60.dll.__vbaVarIndexLoad
008AFAF0: add esp, 0000001Ch
008AFAF3: push eax
008AFAF4: lea eax, var_28
008AFAF7: push eax
008AFAF8: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008AFAFD: push eax
008AFAFE: call 004109DCh ; Val(arg_1)
008AFB03: fstp real8 ptr var_000000AC
008AFB09: mov var_000000B4, 00000005h
008AFB13: push 00000010h
008AFB15: pop eax
008AFB16: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AFB1B: lea esi, var_000000B4
008AFB21: mov edi, esp
008AFB23: movsd 
008AFB24: movsd 
008AFB25: movsd 
008AFB26: movsd 
008AFB27: push 00000000h
008AFB29: mov eax, [ebp+08h]
008AFB2C: mov eax, [eax]
008AFB2E: push [ebp+08h]
008AFB31: call [eax+0000035Ch]
008AFB37: push eax
008AFB38: lea eax, var_30
008AFB3B: push eax
008AFB3C: call 00410A84h ; Set (object)
008AFB41: push eax
008AFB42: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008AFB47: lea ecx, var_28
008AFB4A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008AFB4F: lea ecx, var_30
008AFB52: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AFB57: lea eax, var_64
008AFB5A: push eax
008AFB5B: lea eax, var_54
008AFB5E: push eax
008AFB5F: lea eax, var_44
008AFB62: push eax
008AFB63: push 00000003h
008AFB65: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AFB6A: add esp, 00000010h
008AFB6D: mov var_04, 0000001Eh
008AFB74: mov var_0000008C, 00000006h
008AFB7E: mov var_00000094, 00000002h
008AFB88: mov var_7C, 004413D8h
008AFB8F: mov var_00000084, 00000008h
008AFB99: lea edx, var_00000084
008AFB9F: lea ecx, var_44
008AFBA2: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008AFBA7: push 00000000h
008AFBA9: push FFFFFFFFh
008AFBAB: lea eax, var_44
008AFBAE: push eax
008AFBAF: push var_24
008AFBB2: lea eax, var_54
008AFBB5: push eax
008AFBB6: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
008AFBBB: push 00000010h
008AFBBD: pop eax
008AFBBE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AFBC3: lea esi, var_00000094
008AFBC9: mov edi, esp
008AFBCB: movsd 
008AFBCC: movsd 
008AFBCD: movsd 
008AFBCE: movsd 
008AFBCF: push 00000001h
008AFBD1: lea eax, var_54
008AFBD4: push eax
008AFBD5: lea eax, var_64
008AFBD8: push eax
008AFBD9: call 00410952h ; msvbvm60.dll.__vbaVarIndexLoad
008AFBDE: add esp, 0000001Ch
008AFBE1: push eax
008AFBE2: lea eax, var_28
008AFBE5: push eax
008AFBE6: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008AFBEB: push eax
008AFBEC: call 004109DCh ; Val(arg_1)
008AFBF1: fstp real8 ptr var_000000AC
008AFBF7: mov var_000000B4, 00000005h
008AFC01: push 00000010h
008AFC03: pop eax
008AFC04: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AFC09: lea esi, var_000000B4
008AFC0F: mov edi, esp
008AFC11: movsd 
008AFC12: movsd 
008AFC13: movsd 
008AFC14: movsd 
008AFC15: push 00000000h
008AFC17: mov eax, [ebp+08h]
008AFC1A: mov eax, [eax]
008AFC1C: push [ebp+08h]
008AFC1F: call [eax+00000364h]
008AFC25: push eax
008AFC26: lea eax, var_30
008AFC29: push eax
008AFC2A: call 00410A84h ; Set (object)
008AFC2F: push eax
008AFC30: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008AFC35: lea ecx, var_28
008AFC38: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008AFC3D: lea ecx, var_30
008AFC40: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AFC45: lea eax, var_64
008AFC48: push eax
008AFC49: lea eax, var_54
008AFC4C: push eax
008AFC4D: lea eax, var_44
008AFC50: push eax
008AFC51: push 00000003h
008AFC53: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AFC58: add esp, 00000010h
008AFC5B: mov var_10, 00000000h
008AFC62: wait 
008AFC63: push 008AFCB2h
008AFC68: jmp 8AFCA9h
008AFC6A: lea eax, var_2C
008AFC6D: push eax
008AFC6E: lea eax, var_28
008AFC71: push eax
008AFC72: push 00000002h
008AFC74: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AFC79: add esp, 0000000Ch
008AFC7C: lea eax, var_34
008AFC7F: push eax
008AFC80: lea eax, var_30
008AFC83: push eax
008AFC84: push 00000002h
008AFC86: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AFC8B: add esp, 0000000Ch
008AFC8E: lea eax, var_74
008AFC91: push eax
008AFC92: lea eax, var_64
008AFC95: push eax
008AFC96: lea eax, var_54
008AFC99: push eax
008AFC9A: lea eax, var_44
008AFC9D: push eax
008AFC9E: push 00000004h
008AFCA0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AFCA5: add esp, 00000014h
008AFCA8: ret 
End Sub

Private sub Form__8AFCD1
008AFCD1: push ebp
008AFCD2: mov ebp, esp
008AFCD4: sub esp, 00000018h
008AFCD7: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008AFCDC: mov eax, fs:[00h]
008AFCE2: push eax
008AFCE3: mov fs:[00000000h], esp
008AFCEA: mov eax, 000000A8h
008AFCEF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AFCF4: push ebx
008AFCF5: push esi
008AFCF6: push edi
008AFCF7: mov var_18, esp
008AFCFA: mov var_14, 0040E978h
008AFD01: mov eax, [ebp+08h]
008AFD04: and eax, 00000001h
008AFD07: mov var_10, eax
008AFD0A: mov eax, [ebp+08h]
008AFD0D: and al, FEh
008AFD0F: mov [ebp+08h], eax
008AFD12: mov var_0C, 00000000h
008AFD19: mov eax, [ebp+08h]
008AFD1C: mov eax, [eax]
008AFD1E: push [ebp+08h]
008AFD21: call [eax+04h]
008AFD24: mov var_04, 00000001h
008AFD2B: mov var_04, 00000002h
008AFD32: push FFFFFFFFh
008AFD34: call 00410A60h ; On Error ...
008AFD39: mov var_04, 00000003h
008AFD40: mov eax, [ebp+08h]
008AFD43: cmp word ptr [eax+38h], FFFFh
008AFD48: jnz 008AFEB8h
008AFD4E: mov var_04, 00000004h
008AFD55: lea eax, var_6C
008AFD58: push eax
008AFD59: mov eax, [ebp+08h]
008AFD5C: mov eax, [eax]
008AFD5E: push [ebp+08h]
008AFD61: call [eax+00000080h]
008AFD67: fclex 
008AFD69: mov var_74, eax
008AFD6C: cmp var_74, 00000000h
008AFD70: jnl 8AFD8Fh
008AFD72: push 00000080h
008AFD77: push 00444EC0h
008AFD7C: push [ebp+08h]
008AFD7F: push var_74
008AFD82: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AFD87: mov var_0000009C, eax
008AFD8D: jmp 8AFD96h
008AFD8F: and var_0000009C, 00000000h
008AFD96: mov eax, [ebp+08h]
008AFD99: mov eax, [eax]
008AFD9B: push [ebp+08h]
008AFD9E: call [eax+00000324h]
008AFDA4: push eax
008AFDA5: lea eax, var_24
008AFDA8: push eax
008AFDA9: call 00410A84h ; Set (object)
008AFDAE: mov var_7C, eax
008AFDB1: lea eax, var_70
008AFDB4: push eax
008AFDB5: mov eax, [ebp+08h]
008AFDB8: mov eax, [eax]
008AFDBA: push [ebp+08h]
008AFDBD: call [eax+00000088h]
008AFDC3: fclex 
008AFDC5: mov var_78, eax
008AFDC8: cmp var_78, 00000000h
008AFDCC: jnl 8AFDEBh
008AFDCE: push 00000088h
008AFDD3: push 00444EC0h
008AFDD8: push [ebp+08h]
008AFDDB: push var_78
008AFDDE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AFDE3: mov var_000000A0, eax
008AFDE9: jmp 8AFDF2h
008AFDEB: and var_000000A0, 00000000h
008AFDF2: fld real4 ptr var_70
008AFDF5: fsub real4 ptr [00402B80h]
008AFDFB: fstp real4 ptr var_50
008AFDFE: fstsw ax
008AFE00: test al, 0Dh
008AFE02: jnz 008B04A0h
008AFE08: mov var_58, 00000004h
008AFE0F: fld real4 ptr var_6C
008AFE12: fsub real4 ptr [00402BA4h]
008AFE18: fstp real4 ptr var_40
008AFE1B: fstsw ax
008AFE1D: test al, 0Dh
008AFE1F: jnz 008B04A0h
008AFE25: mov var_48, 00000004h
008AFE2C: mov var_30, 000000F0h
008AFE33: mov var_38, 00000002h
008AFE3A: push 00000010h
008AFE3C: pop eax
008AFE3D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AFE42: lea esi, var_58
008AFE45: mov edi, esp
008AFE47: movsd 
008AFE48: movsd 
008AFE49: movsd 
008AFE4A: movsd 
008AFE4B: push 00000010h
008AFE4D: pop eax
008AFE4E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AFE53: lea esi, var_48
008AFE56: mov edi, esp
008AFE58: movsd 
008AFE59: movsd 
008AFE5A: movsd 
008AFE5B: movsd 
008AFE5C: push 00000010h
008AFE5E: pop eax
008AFE5F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AFE64: lea esi, var_38
008AFE67: mov edi, esp
008AFE69: movsd 
008AFE6A: movsd 
008AFE6B: movsd 
008AFE6C: movsd 
008AFE6D: fldz 
008AFE6F: push ecx
008AFE70: fstp real4 ptr [esp]
008AFE73: mov eax, var_7C
008AFE76: mov eax, [eax]
008AFE78: push var_7C
008AFE7B: call [eax+00000268h]
008AFE81: fclex 
008AFE83: mov var_80, eax
008AFE86: cmp var_80, 00000000h
008AFE8A: jnl 8AFEA9h
008AFE8C: push 00000268h
008AFE91: push 00440EDCh
008AFE96: push var_7C
008AFE99: push var_80
008AFE9C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AFEA1: mov var_000000A4, eax
008AFEA7: jmp 8AFEB0h
008AFEA9: and var_000000A4, 00000000h
008AFEB0: lea ecx, var_24
008AFEB3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AFEB8: mov var_04, 00000006h
008AFEBF: mov eax, [ebp+08h]
008AFEC2: movsx eax, word ptr [eax+38h]
008AFEC6: test eax, eax
008AFEC8: jnz 008B0038h
008AFECE: mov var_04, 00000007h
008AFED5: lea eax, var_6C
008AFED8: push eax
008AFED9: mov eax, [ebp+08h]
008AFEDC: mov eax, [eax]
008AFEDE: push [ebp+08h]
008AFEE1: call [eax+00000080h]
008AFEE7: fclex 
008AFEE9: mov var_74, eax
008AFEEC: cmp var_74, 00000000h
008AFEF0: jnl 8AFF0Fh
008AFEF2: push 00000080h
008AFEF7: push 00444EC0h
008AFEFC: push [ebp+08h]
008AFEFF: push var_74
008AFF02: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AFF07: mov var_000000A8, eax
008AFF0D: jmp 8AFF16h
008AFF0F: and var_000000A8, 00000000h
008AFF16: mov eax, [ebp+08h]
008AFF19: mov eax, [eax]
008AFF1B: push [ebp+08h]
008AFF1E: call [eax+00000324h]
008AFF24: push eax
008AFF25: lea eax, var_24
008AFF28: push eax
008AFF29: call 00410A84h ; Set (object)
008AFF2E: mov var_7C, eax
008AFF31: lea eax, var_70
008AFF34: push eax
008AFF35: mov eax, [ebp+08h]
008AFF38: mov eax, [eax]
008AFF3A: push [ebp+08h]
008AFF3D: call [eax+00000088h]
008AFF43: fclex 
008AFF45: mov var_78, eax
008AFF48: cmp var_78, 00000000h
008AFF4C: jnl 8AFF6Bh
008AFF4E: push 00000088h
008AFF53: push 00444EC0h
008AFF58: push [ebp+08h]
008AFF5B: push var_78
008AFF5E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AFF63: mov var_000000AC, eax
008AFF69: jmp 8AFF72h
008AFF6B: and var_000000AC, 00000000h
008AFF72: fld real4 ptr var_70
008AFF75: fsub real4 ptr [0040E9D8h]
008AFF7B: fstp real4 ptr var_50
008AFF7E: fstsw ax
008AFF80: test al, 0Dh
008AFF82: jnz 008B04A0h
008AFF88: mov var_58, 00000004h
008AFF8F: fld real4 ptr var_6C
008AFF92: fsub real4 ptr [00402BA4h]
008AFF98: fstp real4 ptr var_40
008AFF9B: fstsw ax
008AFF9D: test al, 0Dh
008AFF9F: jnz 008B04A0h
008AFFA5: mov var_48, 00000004h
008AFFAC: mov var_30, 000000F0h
008AFFB3: mov var_38, 00000002h
008AFFBA: push 00000010h
008AFFBC: pop eax
008AFFBD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AFFC2: lea esi, var_58
008AFFC5: mov edi, esp
008AFFC7: movsd 
008AFFC8: movsd 
008AFFC9: movsd 
008AFFCA: movsd 
008AFFCB: push 00000010h
008AFFCD: pop eax
008AFFCE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AFFD3: lea esi, var_48
008AFFD6: mov edi, esp
008AFFD8: movsd 
008AFFD9: movsd 
008AFFDA: movsd 
008AFFDB: movsd 
008AFFDC: push 00000010h
008AFFDE: pop eax
008AFFDF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AFFE4: lea esi, var_38
008AFFE7: mov edi, esp
008AFFE9: movsd 
008AFFEA: movsd 
008AFFEB: movsd 
008AFFEC: movsd 
008AFFED: fldz 
008AFFEF: push ecx
008AFFF0: fstp real4 ptr [esp]
008AFFF3: mov eax, var_7C
008AFFF6: mov eax, [eax]
008AFFF8: push var_7C
008AFFFB: call [eax+00000268h]
008B0001: fclex 
008B0003: mov var_80, eax
008B0006: cmp var_80, 00000000h
008B000A: jnl 8B0029h
008B000C: push 00000268h
008B0011: push 00440EDCh
008B0016: push var_7C
008B0019: push var_80
008B001C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B0021: mov var_000000B0, eax
008B0027: jmp 8B0030h
008B0029: and var_000000B0, 00000000h
008B0030: lea ecx, var_24
008B0033: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B0038: mov var_04, 00000009h
008B003F: mov eax, [ebp+08h]
008B0042: mov eax, [eax]
008B0044: push [ebp+08h]
008B0047: call [eax+00000324h]
008B004D: push eax
008B004E: lea eax, var_24
008B0051: push eax
008B0052: call 00410A84h ; Set (object)
008B0057: mov var_74, eax
008B005A: lea eax, var_6C
008B005D: push eax
008B005E: mov eax, var_74
008B0061: mov eax, [eax]
008B0063: push var_74
008B0066: call [eax+00000088h]
008B006C: fclex 
008B006E: mov var_78, eax
008B0071: cmp var_78, 00000000h
008B0075: jnl 8B0094h
008B0077: push 00000088h
008B007C: push 00440EDCh
008B0081: push var_74
008B0084: push var_78
008B0087: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B008C: mov var_000000B4, eax
008B0092: jmp 8B009Bh
008B0094: and var_000000B4, 00000000h
008B009B: lea eax, var_70
008B009E: push eax
008B009F: mov eax, [ebp+08h]
008B00A2: mov eax, [eax]
008B00A4: push [ebp+08h]
008B00A7: call [eax+00000080h]
008B00AD: fclex 
008B00AF: mov var_7C, eax
008B00B2: cmp var_7C, 00000000h
008B00B6: jnl 8B00D5h
008B00B8: push 00000080h
008B00BD: push 00444EC0h
008B00C2: push [ebp+08h]
008B00C5: push var_7C
008B00C8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B00CD: mov var_000000B8, eax
008B00D3: jmp 8B00DCh
008B00D5: and var_000000B8, 00000000h
008B00DC: mov eax, [ebp+08h]
008B00DF: mov eax, [eax]
008B00E1: push [ebp+08h]
008B00E4: call [eax+000002FCh]
008B00EA: push eax
008B00EB: lea eax, var_28
008B00EE: push eax
008B00EF: call 00410A84h ; Set (object)
008B00F4: mov var_80, eax
008B00F7: mov var_50, 0000027Bh
008B00FE: mov var_58, 00000002h
008B0105: fld real4 ptr var_70
008B0108: fsub real4 ptr [00402B7Ch]
008B010E: fstp real4 ptr var_40
008B0111: fstsw ax
008B0113: test al, 0Dh
008B0115: jnz 008B04A0h
008B011B: mov var_48, 00000004h
008B0122: fld real4 ptr var_6C
008B0125: fadd real4 ptr [0040E9D4h]
008B012B: fstp real4 ptr var_30
008B012E: fstsw ax
008B0130: test al, 0Dh
008B0132: jnz 008B04A0h
008B0138: mov var_38, 00000004h
008B013F: push 00000010h
008B0141: pop eax
008B0142: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B0147: lea esi, var_58
008B014A: mov edi, esp
008B014C: movsd 
008B014D: movsd 
008B014E: movsd 
008B014F: movsd 
008B0150: push 00000010h
008B0152: pop eax
008B0153: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B0158: lea esi, var_48
008B015B: mov edi, esp
008B015D: movsd 
008B015E: movsd 
008B015F: movsd 
008B0160: movsd 
008B0161: push 00000010h
008B0163: pop eax
008B0164: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B0169: lea esi, var_38
008B016C: mov edi, esp
008B016E: movsd 
008B016F: movsd 
008B0170: movsd 
008B0171: movsd 
008B0172: fld real4 ptr [00402B5Ch]
008B0178: push ecx
008B0179: fstp real4 ptr [esp]
008B017C: mov eax, var_80
008B017F: mov eax, [eax]
008B0181: push var_80
008B0184: call [eax+00000178h]
008B018A: fclex 
008B018C: mov var_00000084, eax
008B0192: cmp var_00000084, 00000000h
008B0199: jnl 8B01BBh
008B019B: push 00000178h
008B01A0: push 00447A30h
008B01A5: push var_80
008B01A8: push var_00000084
008B01AE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B01B3: mov var_000000BC, eax
008B01B9: jmp 8B01C2h
008B01BB: and var_000000BC, 00000000h
008B01C2: lea eax, var_28
008B01C5: push eax
008B01C6: lea eax, var_24
008B01C9: push eax
008B01CA: push 00000002h
008B01CC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B01D1: add esp, 0000000Ch
008B01D4: mov var_04, 0000000Ah
008B01DB: mov eax, [ebp+08h]
008B01DE: mov eax, [eax]
008B01E0: push [ebp+08h]
008B01E3: call [eax+00000324h]
008B01E9: push eax
008B01EA: lea eax, var_24
008B01ED: push eax
008B01EE: call 00410A84h ; Set (object)
008B01F3: mov var_74, eax
008B01F6: lea eax, var_6C
008B01F9: push eax
008B01FA: mov eax, var_74
008B01FD: mov eax, [eax]
008B01FF: push var_74
008B0202: call [eax+00000080h]
008B0208: fclex 
008B020A: mov var_78, eax
008B020D: cmp var_78, 00000000h
008B0211: jnl 8B0230h
008B0213: push 00000080h
008B0218: push 00440EDCh
008B021D: push var_74
008B0220: push var_78
008B0223: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B0228: mov var_000000C0, eax
008B022E: jmp 8B0237h
008B0230: and var_000000C0, 00000000h
008B0237: fld real4 ptr var_6C
008B023A: fsub real4 ptr [0040E9D0h]
008B0240: fstp real4 ptr var_30
008B0243: fstsw ax
008B0245: test al, 0Dh
008B0247: jnz 008B04A0h
008B024D: mov var_38, 00000004h
008B0254: mov var_50, 0000003Ch
008B025B: mov var_58, 00000002h
008B0262: push 00000010h
008B0264: pop eax
008B0265: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B026A: lea esi, var_38
008B026D: mov edi, esp
008B026F: movsd 
008B0270: movsd 
008B0271: movsd 
008B0272: movsd 
008B0273: push 00000010h
008B0275: pop eax
008B0276: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B027B: lea esi, var_58
008B027E: mov edi, esp
008B0280: movsd 
008B0281: movsd 
008B0282: movsd 
008B0283: movsd 
008B0284: push 00000002h
008B0286: push 80011002h
008B028B: mov eax, [ebp+08h]
008B028E: mov eax, [eax]
008B0290: push [ebp+08h]
008B0293: call [eax+0000036Ch]
008B0299: push eax
008B029A: lea eax, var_28
008B029D: push eax
008B029E: call 00410A84h ; Set (object)
008B02A3: push eax
008B02A4: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008B02A9: add esp, 0000002Ch
008B02AC: lea eax, var_28
008B02AF: push eax
008B02B0: lea eax, var_24
008B02B3: push eax
008B02B4: push 00000002h
008B02B6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B02BB: add esp, 0000000Ch
008B02BE: mov var_04, 0000000Bh
008B02C5: mov eax, [ebp+08h]
008B02C8: mov eax, [eax]
008B02CA: push [ebp+08h]
008B02CD: call [eax+000002FCh]
008B02D3: push eax
008B02D4: lea eax, var_24
008B02D7: push eax
008B02D8: call 00410A84h ; Set (object)
008B02DD: mov var_74, eax
008B02E0: lea eax, var_6C
008B02E3: push eax
008B02E4: mov eax, var_74
008B02E7: mov eax, [eax]
008B02E9: push var_74
008B02EC: call [eax+00000080h]
008B02F2: fclex 
008B02F4: mov var_78, eax
008B02F7: cmp var_78, 00000000h
008B02FB: jnl 8B031Ah
008B02FD: push 00000080h
008B0302: push 00447A30h
008B0307: push var_74
008B030A: push var_78
008B030D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B0312: mov var_000000C4, eax
008B0318: jmp 8B0321h
008B031A: and var_000000C4, 00000000h
008B0321: fld real4 ptr var_6C
008B0324: fsub real4 ptr [0040E9CCh]
008B032A: fstp real4 ptr var_30
008B032D: fstsw ax
008B032F: test al, 0Dh
008B0331: jnz 008B04A0h
008B0337: mov var_38, 00000004h
008B033E: mov var_50, 0000003Ch
008B0345: mov var_58, 00000002h
008B034C: push 00000010h
008B034E: pop eax
008B034F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B0354: lea esi, var_38
008B0357: mov edi, esp
008B0359: movsd 
008B035A: movsd 
008B035B: movsd 
008B035C: movsd 
008B035D: push 00000010h
008B035F: pop eax
008B0360: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B0365: lea esi, var_58
008B0368: mov edi, esp
008B036A: movsd 
008B036B: movsd 
008B036C: movsd 
008B036D: movsd 
008B036E: push 00000002h
008B0370: push 80011002h
008B0375: mov eax, [ebp+08h]
008B0378: mov eax, [eax]
008B037A: push [ebp+08h]
008B037D: call [eax+00000350h]
008B0383: push eax
008B0384: lea eax, var_28
008B0387: push eax
008B0388: call 00410A84h ; Set (object)
008B038D: push eax
008B038E: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008B0393: add esp, 0000002Ch
008B0396: lea eax, var_28
008B0399: push eax
008B039A: lea eax, var_24
008B039D: push eax
008B039E: push 00000002h
008B03A0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B03A5: add esp, 0000000Ch
008B03A8: mov var_04, 0000000Ch
008B03AF: mov eax, [ebp+08h]
008B03B2: mov eax, [eax]
008B03B4: push [ebp+08h]
008B03B7: call [eax+000002FCh]
008B03BD: push eax
008B03BE: lea eax, var_24
008B03C1: push eax
008B03C2: call 00410A84h ; Set (object)
008B03C7: mov var_74, eax
008B03CA: lea eax, var_6C
008B03CD: push eax
008B03CE: mov eax, var_74
008B03D1: mov eax, [eax]
008B03D3: push var_74
008B03D6: call [eax+00000080h]
008B03DC: fclex 
008B03DE: mov var_78, eax
008B03E1: cmp var_78, 00000000h
008B03E5: jnl 8B0404h
008B03E7: push 00000080h
008B03EC: push 00447A30h
008B03F1: push var_74
008B03F4: push var_78
008B03F7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B03FC: mov var_000000C8, eax
008B0402: jmp 8B040Bh
008B0404: and var_000000C8, 00000000h
008B040B: fld real4 ptr var_6C
008B040E: fstp real4 ptr var_30
008B0411: mov var_38, 00000004h
008B0418: push 00000010h
008B041A: pop eax
008B041B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B0420: lea esi, var_38
008B0423: mov edi, esp
008B0425: movsd 
008B0426: movsd 
008B0427: movsd 
008B0428: movsd 
008B0429: push 80010005h
008B042E: mov eax, [ebp+08h]
008B0431: mov eax, [eax]
008B0433: push [ebp+08h]
008B0436: call [eax+00000360h]
008B043C: push eax
008B043D: lea eax, var_28
008B0440: push eax
008B0441: call 00410A84h ; Set (object)
008B0446: push eax
008B0447: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008B044C: lea eax, var_28
008B044F: push eax
008B0450: lea eax, var_24
008B0453: push eax
008B0454: push 00000002h
008B0456: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B045B: add esp, 0000000Ch
008B045E: mov var_10, 00000000h
008B0465: wait 
008B0466: push 008B0481h
008B046B: jmp 8B0480h
008B046D: lea eax, var_28
008B0470: push eax
008B0471: lea eax, var_24
008B0474: push eax
008B0475: push 00000002h
008B0477: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B047C: add esp, 0000000Ch
008B047F: ret 
End Sub

Private sub Form__8B04A5
008B04A5: push ebp
008B04A6: mov ebp, esp
008B04A8: sub esp, 0000000Ch
008B04AB: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B04B0: mov eax, fs:[00h]
008B04B6: push eax
008B04B7: mov fs:[00000000h], esp
008B04BE: mov eax, 000000D0h
008B04C3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B04C8: push ebx
008B04C9: push esi
008B04CA: push edi
008B04CB: mov var_0C, esp
008B04CE: mov var_08, 0040E9E0h
008B04D5: mov eax, [ebp+08h]
008B04D8: and eax, 00000001h
008B04DB: mov var_04, eax
008B04DE: mov eax, [ebp+08h]
008B04E1: and al, FEh
008B04E3: mov [ebp+08h], eax
008B04E6: mov eax, [ebp+08h]
008B04E9: mov eax, [eax]
008B04EB: push [ebp+08h]
008B04EE: call [eax+04h]
008B04F1: mov eax, [ebp+08h]
008B04F4: mov eax, [eax]
008B04F6: push [ebp+08h]
008B04F9: call [eax+00000304h]
008B04FF: push eax
008B0500: lea eax, var_64
008B0503: push eax
008B0504: call 00410A84h ; Set (object)
008B0509: mov var_000000B0, eax
008B050F: lea eax, var_18
008B0512: push eax
008B0513: mov eax, var_000000B0
008B0519: mov eax, [eax]
008B051B: push var_000000B0
008B0521: call [eax+000000A0h]
008B0527: fclex 
008B0529: mov var_000000B4, eax
008B052F: cmp var_000000B4, 00000000h
008B0536: jnl 8B055Bh
008B0538: push 000000A0h
008B053D: push 00440E08h
008B0542: push var_000000B0
008B0548: push var_000000B4
008B054E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B0553: mov var_000000D8, eax
008B0559: jmp 8B0562h
008B055B: and var_000000D8, 00000000h
008B0562: mov eax, [ebp+08h]
008B0565: mov eax, [eax]
008B0567: push [ebp+08h]
008B056A: call [eax+00000308h]
008B0570: push eax
008B0571: lea eax, var_68
008B0574: push eax
008B0575: call 00410A84h ; Set (object)
008B057A: mov var_000000B8, eax
008B0580: lea eax, var_1C
008B0583: push eax
008B0584: mov eax, var_000000B8
008B058A: mov eax, [eax]
008B058C: push var_000000B8
008B0592: call [eax+000000A8h]
008B0598: fclex 
008B059A: mov var_000000BC, eax
008B05A0: cmp var_000000BC, 00000000h
008B05A7: jnl 8B05CCh
008B05A9: push 000000A8h
008B05AE: push 0044C944h
008B05B3: push var_000000B8
008B05B9: push var_000000BC
008B05BF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B05C4: mov var_000000DC, eax
008B05CA: jmp 8B05D3h
008B05CC: and var_000000DC, 00000000h
008B05D3: mov eax, [ebp+08h]
008B05D6: mov eax, [eax]
008B05D8: push [ebp+08h]
008B05DB: call [eax+0000030Ch]
008B05E1: push eax
008B05E2: lea eax, var_6C
008B05E5: push eax
008B05E6: call 00410A84h ; Set (object)
008B05EB: mov var_000000C0, eax
008B05F1: lea eax, var_28
008B05F4: push eax
008B05F5: mov eax, var_000000C0
008B05FB: mov eax, [eax]
008B05FD: push var_000000C0
008B0603: call [eax+000000A8h]
008B0609: fclex 
008B060B: mov var_000000C4, eax
008B0611: cmp var_000000C4, 00000000h
008B0618: jnl 8B063Dh
008B061A: push 000000A8h
008B061F: push 0044C944h
008B0624: push var_000000C0
008B062A: push var_000000C4
008B0630: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B0635: mov var_000000E0, eax
008B063B: jmp 8B0644h
008B063D: and var_000000E0, 00000000h
008B0644: mov eax, [ebp+08h]
008B0647: mov eax, [eax]
008B0649: push [ebp+08h]
008B064C: call [eax+00000310h]
008B0652: push eax
008B0653: lea eax, var_70
008B0656: push eax
008B0657: call 00410A84h ; Set (object)
008B065C: mov var_000000C8, eax
008B0662: lea eax, var_34
008B0665: push eax
008B0666: mov eax, var_000000C8
008B066C: mov eax, [eax]
008B066E: push var_000000C8
008B0674: call [eax+000000A8h]
008B067A: fclex 
008B067C: mov var_000000CC, eax
008B0682: cmp var_000000CC, 00000000h
008B0689: jnl 8B06AEh
008B068B: push 000000A8h
008B0690: push 0044C944h
008B0695: push var_000000C8
008B069B: push var_000000CC
008B06A1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B06A6: mov var_000000E4, eax
008B06AC: jmp 8B06B5h
008B06AE: and var_000000E4, 00000000h
008B06B5: push var_18
008B06B8: push 004413D8h
008B06BD: call 00410A18h ; &
008B06C2: mov edx, eax
008B06C4: lea ecx, var_20
008B06C7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B06CC: push eax
008B06CD: push var_1C
008B06D0: call 00410A18h ; &
008B06D5: mov edx, eax
008B06D7: lea ecx, var_24
008B06DA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B06DF: push eax
008B06E0: push 004413D8h
008B06E5: call 00410A18h ; &
008B06EA: mov edx, eax
008B06EC: lea ecx, var_2C
008B06EF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B06F4: push eax
008B06F5: push var_28
008B06F8: call 00410A18h ; &
008B06FD: mov edx, eax
008B06FF: lea ecx, var_30
008B0702: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B0707: push eax
008B0708: push 004413D8h
008B070D: call 00410A18h ; &
008B0712: mov edx, eax
008B0714: lea ecx, var_38
008B0717: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B071C: push eax
008B071D: push var_34
008B0720: call 00410A18h ; &
008B0725: mov edx, eax
008B0727: lea ecx, var_3C
008B072A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B072F: push eax
008B0730: push 004413D8h
008B0735: call 00410A18h ; &
008B073A: mov edx, eax
008B073C: lea ecx, var_40
008B073F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B0744: push eax
008B0745: push 00000000h
008B0747: push 00000000h
008B0749: mov eax, [ebp+08h]
008B074C: mov eax, [eax]
008B074E: push [ebp+08h]
008B0751: call [eax+00000368h]
008B0757: push eax
008B0758: lea eax, var_74
008B075B: push eax
008B075C: call 00410A84h ; Set (object)
008B0761: push eax
008B0762: lea eax, var_0000008C
008B0768: push eax
008B0769: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B076E: add esp, 00000010h
008B0771: push eax
008B0772: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008B0777: push eax
008B0778: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008B077D: mov edx, eax
008B077F: lea ecx, var_44
008B0782: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B0787: push eax
008B0788: call 00410A18h ; &
008B078D: mov edx, eax
008B078F: lea ecx, var_48
008B0792: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B0797: push eax
008B0798: push 004413D8h
008B079D: call 00410A18h ; &
008B07A2: mov edx, eax
008B07A4: lea ecx, var_4C
008B07A7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B07AC: push eax
008B07AD: push 00000000h
008B07AF: push 00000000h
008B07B1: mov eax, [ebp+08h]
008B07B4: mov eax, [eax]
008B07B6: push [ebp+08h]
008B07B9: call [eax+0000035Ch]
008B07BF: push eax
008B07C0: lea eax, var_78
008B07C3: push eax
008B07C4: call 00410A84h ; Set (object)
008B07C9: push eax
008B07CA: lea eax, var_0000009C
008B07D0: push eax
008B07D1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B07D6: add esp, 00000010h
008B07D9: push eax
008B07DA: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008B07DF: push eax
008B07E0: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008B07E5: mov edx, eax
008B07E7: lea ecx, var_50
008B07EA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B07EF: push eax
008B07F0: call 00410A18h ; &
008B07F5: mov edx, eax
008B07F7: lea ecx, var_54
008B07FA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B07FF: push eax
008B0800: push 004413D8h
008B0805: call 00410A18h ; &
008B080A: mov edx, eax
008B080C: lea ecx, var_58
008B080F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B0814: push eax
008B0815: push 00000000h
008B0817: push 00000000h
008B0819: mov eax, [ebp+08h]
008B081C: mov eax, [eax]
008B081E: push [ebp+08h]
008B0821: call [eax+00000364h]
008B0827: push eax
008B0828: lea eax, var_7C
008B082B: push eax
008B082C: call 00410A84h ; Set (object)
008B0831: push eax
008B0832: lea eax, var_000000AC
008B0838: push eax
008B0839: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B083E: add esp, 00000010h
008B0841: push eax
008B0842: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008B0847: push eax
008B0848: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008B084D: mov edx, eax
008B084F: lea ecx, var_5C
008B0852: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B0857: push eax
008B0858: call 00410A18h ; &
008B085D: mov edx, eax
008B085F: lea ecx, var_60
008B0862: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B0867: push eax
008B0868: push 00459CA4h ; screencap
008B086D: push 00446C3Ch ; settings
008B0872: push 00445984h ; bssnet
008B0877: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008B087C: lea eax, var_60
008B087F: push eax
008B0880: lea eax, var_5C
008B0883: push eax
008B0884: lea eax, var_58
008B0887: push eax
008B0888: lea eax, var_54
008B088B: push eax
008B088C: lea eax, var_50
008B088F: push eax
008B0890: lea eax, var_4C
008B0893: push eax
008B0894: lea eax, var_48
008B0897: push eax
008B0898: lea eax, var_44
008B089B: push eax
008B089C: lea eax, var_40
008B089F: push eax
008B08A0: lea eax, var_3C
008B08A3: push eax
008B08A4: lea eax, var_34
008B08A7: push eax
008B08A8: lea eax, var_38
008B08AB: push eax
008B08AC: lea eax, var_30
008B08AF: push eax
008B08B0: lea eax, var_28
008B08B3: push eax
008B08B4: lea eax, var_2C
008B08B7: push eax
008B08B8: lea eax, var_24
008B08BB: push eax
008B08BC: lea eax, var_1C
008B08BF: push eax
008B08C0: lea eax, var_20
008B08C3: push eax
008B08C4: lea eax, var_18
008B08C7: push eax
008B08C8: push 00000013h
008B08CA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B08CF: add esp, 00000050h
008B08D2: lea eax, var_7C
008B08D5: push eax
008B08D6: lea eax, var_78
008B08D9: push eax
008B08DA: lea eax, var_74
008B08DD: push eax
008B08DE: lea eax, var_70
008B08E1: push eax
008B08E2: lea eax, var_6C
008B08E5: push eax
008B08E6: lea eax, var_68
008B08E9: push eax
008B08EA: lea eax, var_64
008B08ED: push eax
008B08EE: push 00000007h
008B08F0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B08F5: add esp, 00000020h
008B08F8: lea eax, var_000000AC
008B08FE: push eax
008B08FF: lea eax, var_0000009C
008B0905: push eax
008B0906: lea eax, var_0000008C
008B090C: push eax
008B090D: push 00000003h
008B090F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B0914: add esp, 00000010h
008B0917: mov var_04, 00000000h
008B091E: push 008B09C5h
008B0923: jmp 008B09C4h
008B0928: lea eax, var_60
008B092B: push eax
008B092C: lea eax, var_5C
008B092F: push eax
008B0930: lea eax, var_58
008B0933: push eax
008B0934: lea eax, var_54
008B0937: push eax
008B0938: lea eax, var_50
008B093B: push eax
008B093C: lea eax, var_4C
008B093F: push eax
008B0940: lea eax, var_48
008B0943: push eax
008B0944: lea eax, var_44
008B0947: push eax
008B0948: lea eax, var_40
008B094B: push eax
008B094C: lea eax, var_3C
008B094F: push eax
008B0950: lea eax, var_38
008B0953: push eax
008B0954: lea eax, var_34
008B0957: push eax
008B0958: lea eax, var_30
008B095B: push eax
008B095C: lea eax, var_2C
008B095F: push eax
008B0960: lea eax, var_28
008B0963: push eax
008B0964: lea eax, var_24
008B0967: push eax
008B0968: lea eax, var_20
008B096B: push eax
008B096C: lea eax, var_1C
008B096F: push eax
008B0970: lea eax, var_18
008B0973: push eax
008B0974: push 00000013h
008B0976: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B097B: add esp, 00000050h
008B097E: lea eax, var_7C
008B0981: push eax
008B0982: lea eax, var_78
008B0985: push eax
008B0986: lea eax, var_74
008B0989: push eax
008B098A: lea eax, var_70
008B098D: push eax
008B098E: lea eax, var_6C
008B0991: push eax
008B0992: lea eax, var_68
008B0995: push eax
008B0996: lea eax, var_64
008B0999: push eax
008B099A: push 00000007h
008B099C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B09A1: add esp, 00000020h
008B09A4: lea eax, var_000000AC
008B09AA: push eax
008B09AB: lea eax, var_0000009C
008B09B1: push eax
008B09B2: lea eax, var_0000008C
008B09B8: push eax
008B09B9: push 00000003h
008B09BB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B09C0: add esp, 00000010h
008B09C3: ret 
End Sub

Private sub tmrFullscreen__8B1BB6
008B1BB6: push ebp
008B1BB7: mov ebp, esp
008B1BB9: sub esp, 0000000Ch
008B1BBC: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B1BC1: mov eax, fs:[00h]
008B1BC7: push eax
008B1BC8: mov fs:[00000000h], esp
008B1BCF: push 0000007Ch
008B1BD1: pop eax
008B1BD2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B1BD7: push ebx
008B1BD8: push esi
008B1BD9: push edi
008B1BDA: mov var_0C, esp
008B1BDD: mov var_08, 0040EA50h
008B1BE4: mov eax, [ebp+08h]
008B1BE7: and eax, 00000001h
008B1BEA: mov var_04, eax
008B1BED: mov eax, [ebp+08h]
008B1BF0: and al, FEh
008B1BF2: mov [ebp+08h], eax
008B1BF5: mov eax, [ebp+08h]
008B1BF8: mov eax, [eax]
008B1BFA: push [ebp+08h]
008B1BFD: call [eax+04h]
008B1C00: mov eax, [ebp+08h]
008B1C03: cmp word ptr [eax+38h], FFFFh
008B1C08: jnz 008B1E5Ah
008B1C0E: mov eax, [ebp+08h]
008B1C11: mov eax, [eax]
008B1C13: push [ebp+08h]
008B1C16: call [eax+00000324h]
008B1C1C: push eax
008B1C1D: lea eax, var_1C
008B1C20: push eax
008B1C21: call 00410A84h ; Set (object)
008B1C26: mov var_2C, eax
008B1C29: mov eax, [ebp+08h]
008B1C2C: mov eax, [eax]
008B1C2E: push [ebp+08h]
008B1C31: call [eax+00000324h]
008B1C37: push eax
008B1C38: lea eax, var_18
008B1C3B: push eax
008B1C3C: call 00410A84h ; Set (object)
008B1C41: mov var_24, eax
008B1C44: lea eax, var_20
008B1C47: push eax
008B1C48: mov eax, var_24
008B1C4B: mov eax, [eax]
008B1C4D: push var_24
008B1C50: call [eax+00000088h]
008B1C56: fclex 
008B1C58: mov var_28, eax
008B1C5B: cmp var_28, 00000000h
008B1C5F: jnl 8B1C7Bh
008B1C61: push 00000088h
008B1C66: push 00440EDCh
008B1C6B: push var_24
008B1C6E: push var_28
008B1C71: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B1C76: mov var_3C, eax
008B1C79: jmp 8B1C7Fh
008B1C7B: and var_3C, 00000000h
008B1C7F: fld real4 ptr var_20
008B1C82: fadd real4 ptr [00402B68h]
008B1C88: fstsw ax
008B1C8A: test al, 0Dh
008B1C8C: jnz 008B210Fh
008B1C92: push ecx
008B1C93: fstp real4 ptr [esp]
008B1C96: mov eax, var_2C
008B1C99: mov eax, [eax]
008B1C9B: push var_2C
008B1C9E: call [eax+0000008Ch]
008B1CA4: fclex 
008B1CA6: mov var_30, eax
008B1CA9: cmp var_30, 00000000h
008B1CAD: jnl 8B1CC9h
008B1CAF: push 0000008Ch
008B1CB4: push 00440EDCh
008B1CB9: push var_2C
008B1CBC: push var_30
008B1CBF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B1CC4: mov var_40, eax
008B1CC7: jmp 8B1CCDh
008B1CC9: and var_40, 00000000h
008B1CCD: lea eax, var_1C
008B1CD0: push eax
008B1CD1: lea eax, var_18
008B1CD4: push eax
008B1CD5: push 00000002h
008B1CD7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B1CDC: add esp, 0000000Ch
008B1CDF: mov eax, [ebp+08h]
008B1CE2: mov eax, [eax]
008B1CE4: push [ebp+08h]
008B1CE7: call [eax+00000324h]
008B1CED: push eax
008B1CEE: lea eax, var_18
008B1CF1: push eax
008B1CF2: call 00410A84h ; Set (object)
008B1CF7: mov var_24, eax
008B1CFA: lea eax, var_20
008B1CFD: push eax
008B1CFE: mov eax, var_24
008B1D01: mov eax, [eax]
008B1D03: push var_24
008B1D06: call [eax+00000088h]
008B1D0C: fclex 
008B1D0E: mov var_28, eax
008B1D11: cmp var_28, 00000000h
008B1D15: jnl 8B1D31h
008B1D17: push 00000088h
008B1D1C: push 00440EDCh
008B1D21: push var_24
008B1D24: push var_28
008B1D27: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B1D2C: mov var_44, eax
008B1D2F: jmp 8B1D35h
008B1D31: and var_44, 00000000h
008B1D35: fld real4 ptr var_20
008B1D38: call 004109D6h ; msvbvm60.dll.__vbaFpR8
008B1D3D: mov eax, [ebp+08h]
008B1D40: mov eax, [eax+34h]
008B1D43: add eax, 00000226h
008B1D48: jo 008B2114h
008B1D4E: mov var_48, eax
008B1D51: fild dword ptr var_48
008B1D54: fstp real8 ptr var_50
008B1D57: fcomp real8 ptr var_50
008B1D5A: fstsw ax
008B1D5C: sahf 
008B1D5D: jbe 8B1D68h
008B1D5F: mov var_54, 00000001h
008B1D66: jmp 8B1D6Ch
008B1D68: and var_54, 00000000h
008B1D6C: mov eax, var_54
008B1D6F: neg eax
008B1D71: mov var_2C, ax
008B1D75: lea ecx, var_18
008B1D78: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B1D7D: movsx eax, word ptr var_2C
008B1D81: test eax, eax
008B1D83: jz 008B1E5Ah
008B1D89: mov eax, [ebp+08h]
008B1D8C: mov eax, [eax]
008B1D8E: push [ebp+08h]
008B1D91: call [eax+00000324h]
008B1D97: push eax
008B1D98: lea eax, var_18
008B1D9B: push eax
008B1D9C: call 00410A84h ; Set (object)
008B1DA1: mov var_24, eax
008B1DA4: mov eax, [ebp+08h]
008B1DA7: mov eax, [eax+34h]
008B1DAA: add eax, 00000226h
008B1DAF: jo 008B2114h
008B1DB5: mov var_58, eax
008B1DB8: fild dword ptr var_58
008B1DBB: fstp real4 ptr var_5C
008B1DBE: fld real4 ptr var_5C
008B1DC1: push ecx
008B1DC2: fstp real4 ptr [esp]
008B1DC5: mov eax, var_24
008B1DC8: mov eax, [eax]
008B1DCA: push var_24
008B1DCD: call [eax+0000008Ch]
008B1DD3: fclex 
008B1DD5: mov var_28, eax
008B1DD8: cmp var_28, 00000000h
008B1DDC: jnl 8B1DF8h
008B1DDE: push 0000008Ch
008B1DE3: push 00440EDCh
008B1DE8: push var_24
008B1DEB: push var_28
008B1DEE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B1DF3: mov var_60, eax
008B1DF6: jmp 8B1DFCh
008B1DF8: and var_60, 00000000h
008B1DFC: lea ecx, var_18
008B1DFF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B1E04: mov eax, [ebp+08h]
008B1E07: mov eax, [eax]
008B1E09: push [ebp+08h]
008B1E0C: call [eax+00000338h]
008B1E12: push eax
008B1E13: lea eax, var_18
008B1E16: push eax
008B1E17: call 00410A84h ; Set (object)
008B1E1C: mov var_24, eax
008B1E1F: push 00000000h
008B1E21: mov eax, var_24
008B1E24: mov eax, [eax]
008B1E26: push var_24
008B1E29: call [eax+5Ch]
008B1E2C: fclex 
008B1E2E: mov var_28, eax
008B1E31: cmp var_28, 00000000h
008B1E35: jnl 8B1E4Eh
008B1E37: push 0000005Ch
008B1E39: push 00447A20h
008B1E3E: push var_24
008B1E41: push var_28
008B1E44: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B1E49: mov var_64, eax
008B1E4C: jmp 8B1E52h
008B1E4E: and var_64, 00000000h
008B1E52: lea ecx, var_18
008B1E55: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B1E5A: mov eax, [ebp+08h]
008B1E5D: movsx eax, word ptr [eax+38h]
008B1E61: test eax, eax
008B1E63: jnz 008B20CDh
008B1E69: mov eax, [ebp+08h]
008B1E6C: mov eax, [eax]
008B1E6E: push [ebp+08h]
008B1E71: call [eax+00000324h]
008B1E77: push eax
008B1E78: lea eax, var_1C
008B1E7B: push eax
008B1E7C: call 00410A84h ; Set (object)
008B1E81: mov var_2C, eax
008B1E84: mov eax, [ebp+08h]
008B1E87: mov eax, [eax]
008B1E89: push [ebp+08h]
008B1E8C: call [eax+00000324h]
008B1E92: push eax
008B1E93: lea eax, var_18
008B1E96: push eax
008B1E97: call 00410A84h ; Set (object)
008B1E9C: mov var_24, eax
008B1E9F: lea eax, var_20
008B1EA2: push eax
008B1EA3: mov eax, var_24
008B1EA6: mov eax, [eax]
008B1EA8: push var_24
008B1EAB: call [eax+00000088h]
008B1EB1: fclex 
008B1EB3: mov var_28, eax
008B1EB6: cmp var_28, 00000000h
008B1EBA: jnl 8B1ED6h
008B1EBC: push 00000088h
008B1EC1: push 00440EDCh
008B1EC6: push var_24
008B1EC9: push var_28
008B1ECC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B1ED1: mov var_68, eax
008B1ED4: jmp 8B1EDAh
008B1ED6: and var_68, 00000000h
008B1EDA: fld real4 ptr var_20
008B1EDD: fsub real4 ptr [00402B68h]
008B1EE3: fstsw ax
008B1EE5: test al, 0Dh
008B1EE7: jnz 008B210Fh
008B1EED: push ecx
008B1EEE: fstp real4 ptr [esp]
008B1EF1: mov eax, var_2C
008B1EF4: mov eax, [eax]
008B1EF6: push var_2C
008B1EF9: call [eax+0000008Ch]
008B1EFF: fclex 
008B1F01: mov var_30, eax
008B1F04: cmp var_30, 00000000h
008B1F08: jnl 8B1F24h
008B1F0A: push 0000008Ch
008B1F0F: push 00440EDCh
008B1F14: push var_2C
008B1F17: push var_30
008B1F1A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B1F1F: mov var_6C, eax
008B1F22: jmp 8B1F28h
008B1F24: and var_6C, 00000000h
008B1F28: lea eax, var_1C
008B1F2B: push eax
008B1F2C: lea eax, var_18
008B1F2F: push eax
008B1F30: push 00000002h
008B1F32: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B1F37: add esp, 0000000Ch
008B1F3A: mov eax, [ebp+08h]
008B1F3D: mov eax, [eax]
008B1F3F: push [ebp+08h]
008B1F42: call [eax+00000324h]
008B1F48: push eax
008B1F49: lea eax, var_18
008B1F4C: push eax
008B1F4D: call 00410A84h ; Set (object)
008B1F52: mov var_24, eax
008B1F55: lea eax, var_20
008B1F58: push eax
008B1F59: mov eax, var_24
008B1F5C: mov eax, [eax]
008B1F5E: push var_24
008B1F61: call [eax+00000088h]
008B1F67: fclex 
008B1F69: mov var_28, eax
008B1F6C: cmp var_28, 00000000h
008B1F70: jnl 8B1F8Ch
008B1F72: push 00000088h
008B1F77: push 00440EDCh
008B1F7C: push var_24
008B1F7F: push var_28
008B1F82: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B1F87: mov var_70, eax
008B1F8A: jmp 8B1F90h
008B1F8C: and var_70, 00000000h
008B1F90: fld real4 ptr var_20
008B1F93: call 004109D6h ; msvbvm60.dll.__vbaFpR8
008B1F98: mov eax, [ebp+08h]
008B1F9B: mov eax, [eax+34h]
008B1F9E: sub eax, 00000226h
008B1FA3: jo 008B2114h
008B1FA9: mov var_74, eax
008B1FAC: fild dword ptr var_74
008B1FAF: fstp real8 ptr var_7C
008B1FB2: fcomp real8 ptr var_7C
008B1FB5: fstsw ax
008B1FB7: sahf 
008B1FB8: jnb 8B1FC3h
008B1FBA: mov var_80, 00000001h
008B1FC1: jmp 8B1FC7h
008B1FC3: and var_80, 00000000h
008B1FC7: mov eax, var_80
008B1FCA: neg eax
008B1FCC: mov var_2C, ax
008B1FD0: lea ecx, var_18
008B1FD3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B1FD8: movsx eax, word ptr var_2C
008B1FDC: test eax, eax
008B1FDE: jz 008B20CDh
008B1FE4: mov eax, [ebp+08h]
008B1FE7: mov eax, [eax]
008B1FE9: push [ebp+08h]
008B1FEC: call [eax+00000324h]
008B1FF2: push eax
008B1FF3: lea eax, var_18
008B1FF6: push eax
008B1FF7: call 00410A84h ; Set (object)
008B1FFC: mov var_24, eax
008B1FFF: mov eax, [ebp+08h]
008B2002: mov eax, [eax+34h]
008B2005: sub eax, 00000226h
008B200A: jo 008B2114h
008B2010: mov var_00000084, eax
008B2016: fild dword ptr var_00000084
008B201C: fstp real4 ptr var_00000088
008B2022: fld real4 ptr var_00000088
008B2028: push ecx
008B2029: fstp real4 ptr [esp]
008B202C: mov eax, var_24
008B202F: mov eax, [eax]
008B2031: push var_24
008B2034: call [eax+0000008Ch]
008B203A: fclex 
008B203C: mov var_28, eax
008B203F: cmp var_28, 00000000h
008B2043: jnl 8B2062h
008B2045: push 0000008Ch
008B204A: push 00440EDCh
008B204F: push var_24
008B2052: push var_28
008B2055: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B205A: mov var_0000008C, eax
008B2060: jmp 8B2069h
008B2062: and var_0000008C, 00000000h
008B2069: lea ecx, var_18
008B206C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B2071: mov eax, [ebp+08h]
008B2074: mov eax, [eax]
008B2076: push [ebp+08h]
008B2079: call [eax+00000338h]
008B207F: push eax
008B2080: lea eax, var_18
008B2083: push eax
008B2084: call 00410A84h ; Set (object)
008B2089: mov var_24, eax
008B208C: push 00000000h
008B208E: mov eax, var_24
008B2091: mov eax, [eax]
008B2093: push var_24
008B2096: call [eax+5Ch]
008B2099: fclex 
008B209B: mov var_28, eax
008B209E: cmp var_28, 00000000h
008B20A2: jnl 8B20BEh
008B20A4: push 0000005Ch
008B20A6: push 00447A20h
008B20AB: push var_24
008B20AE: push var_28
008B20B1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B20B6: mov var_00000090, eax
008B20BC: jmp 8B20C5h
008B20BE: and var_00000090, 00000000h
008B20C5: lea ecx, var_18
008B20C8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B20CD: mov var_04, 00000000h
008B20D4: wait 
008B20D5: push 008B20F0h
008B20DA: jmp 8B20EFh
008B20DC: lea eax, var_1C
008B20DF: push eax
008B20E0: lea eax, var_18
008B20E3: push eax
008B20E4: push 00000002h
008B20E6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B20EB: add esp, 0000000Ch
008B20EE: ret 
End Sub

Private sub cmdScreencapShow__8AD108
008AD108: push ebp
008AD109: mov ebp, esp
008AD10B: sub esp, 0000000Ch
008AD10E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008AD113: mov eax, fs:[00h]
008AD119: push eax
008AD11A: mov fs:[00000000h], esp
008AD121: push 0000004Ch
008AD123: pop eax
008AD124: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AD129: push ebx
008AD12A: push esi
008AD12B: push edi
008AD12C: mov var_0C, esp
008AD12F: mov var_08, 0040E8A8h
008AD136: mov eax, [ebp+08h]
008AD139: and eax, 00000001h
008AD13C: mov var_04, eax
008AD13F: mov eax, [ebp+08h]
008AD142: and al, FEh
008AD144: mov [ebp+08h], eax
008AD147: mov eax, [ebp+08h]
008AD14A: mov eax, [eax]
008AD14C: push [ebp+08h]
008AD14F: call [eax+04h]
008AD152: and var_20, 00000000h
008AD156: mov var_28, 0000000Bh
008AD15D: push 00000010h
008AD15F: pop eax
008AD160: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AD165: lea esi, var_28
008AD168: mov edi, esp
008AD16A: movsd 
008AD16B: movsd 
008AD16C: movsd 
008AD16D: movsd 
008AD16E: push 80010007h
008AD173: mov eax, [ebp+08h]
008AD176: mov eax, [eax]
008AD178: push [ebp+08h]
008AD17B: call [eax+0000036Ch]
008AD181: push eax
008AD182: lea eax, var_18
008AD185: push eax
008AD186: call 00410A84h ; Set (object)
008AD18B: push eax
008AD18C: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008AD191: lea ecx, var_18
008AD194: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AD199: mov eax, [ebp+08h]
008AD19C: mov eax, [eax]
008AD19E: push [ebp+08h]
008AD1A1: call [eax+00000324h]
008AD1A7: push eax
008AD1A8: lea eax, var_18
008AD1AB: push eax
008AD1AC: call 00410A84h ; Set (object)
008AD1B1: mov var_40, eax
008AD1B4: lea eax, var_3C
008AD1B7: push eax
008AD1B8: mov eax, var_40
008AD1BB: mov eax, [eax]
008AD1BD: push var_40
008AD1C0: call [eax+00000088h]
008AD1C6: fclex 
008AD1C8: mov var_44, eax
008AD1CB: cmp var_44, 00000000h
008AD1CF: jnl 8AD1EBh
008AD1D1: push 00000088h
008AD1D6: push 00440EDCh
008AD1DB: push var_40
008AD1DE: push var_44
008AD1E1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AD1E6: mov var_50, eax
008AD1E9: jmp 8AD1EFh
008AD1EB: and var_50, 00000000h
008AD1EF: fld real4 ptr var_3C
008AD1F2: fsub real4 ptr [0040E890h]
008AD1F8: fstsw ax
008AD1FA: test al, 0Dh
008AD1FC: jnz 008AD396h
008AD202: call 00410814h ; msvbvm60.dll.__vbaFpI4
008AD207: mov ecx, [ebp+08h]
008AD20A: mov [ecx+34h], eax
008AD20D: lea ecx, var_18
008AD210: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AD215: mov eax, [ebp+08h]
008AD218: and word ptr [eax+38h], 0000h
008AD21D: mov eax, [ebp+08h]
008AD220: mov eax, [eax]
008AD222: push [ebp+08h]
008AD225: call [eax+00000338h]
008AD22B: push eax
008AD22C: lea eax, var_18
008AD22F: push eax
008AD230: call 00410A84h ; Set (object)
008AD235: mov var_40, eax
008AD238: push FFFFFFFFh
008AD23A: mov eax, var_40
008AD23D: mov eax, [eax]
008AD23F: push var_40
008AD242: call [eax+5Ch]
008AD245: fclex 
008AD247: mov var_44, eax
008AD24A: cmp var_44, 00000000h
008AD24E: jnl 8AD267h
008AD250: push 0000005Ch
008AD252: push 00447A20h
008AD257: push var_40
008AD25A: push var_44
008AD25D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AD262: mov var_54, eax
008AD265: jmp 8AD26Bh
008AD267: and var_54, 00000000h
008AD26B: lea ecx, var_18
008AD26E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AD273: mov eax, [ebp+08h]
008AD276: mov eax, [eax]
008AD278: push [ebp+08h]
008AD27B: call [eax+000002FCh]
008AD281: push eax
008AD282: lea eax, var_18
008AD285: push eax
008AD286: call 00410A84h ; Set (object)
008AD28B: mov var_40, eax
008AD28E: push FFFFFFFFh
008AD290: mov eax, var_40
008AD293: mov eax, [eax]
008AD295: push var_40
008AD298: call [eax+0000009Ch]
008AD29E: fclex 
008AD2A0: mov var_44, eax
008AD2A3: cmp var_44, 00000000h
008AD2A7: jnl 8AD2C3h
008AD2A9: push 0000009Ch
008AD2AE: push 00447A30h
008AD2B3: push var_40
008AD2B6: push var_44
008AD2B9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AD2BE: mov var_58, eax
008AD2C1: jmp 8AD2C7h
008AD2C3: and var_58, 00000000h
008AD2C7: lea ecx, var_18
008AD2CA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AD2CF: mov eax, [ebp+08h]
008AD2D2: mov eax, [eax]
008AD2D4: push [ebp+08h]
008AD2D7: call [eax+00000324h]
008AD2DD: push eax
008AD2DE: lea eax, var_18
008AD2E1: push eax
008AD2E2: call 00410A84h ; Set (object)
008AD2E7: mov var_40, eax
008AD2EA: mov eax, var_40
008AD2ED: mov eax, [eax]
008AD2EF: push var_40
008AD2F2: call [eax+0000026Ch]
008AD2F8: fclex 
008AD2FA: mov var_44, eax
008AD2FD: cmp var_44, 00000000h
008AD301: jnl 8AD31Dh
008AD303: push 0000026Ch
008AD308: push 00440EDCh
008AD30D: push var_40
008AD310: push var_44
008AD313: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AD318: mov var_5C, eax
008AD31B: jmp 8AD321h
008AD31D: and var_5C, 00000000h
008AD321: lea ecx, var_18
008AD324: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AD329: mov eax, [ebp+08h]
008AD32C: mov eax, [eax]
008AD32E: push [ebp+08h]
008AD331: call [eax+0000070Ch]
008AD337: mov var_40, eax
008AD33A: cmp var_40, 00000000h
008AD33E: jnl 8AD35Ah
008AD340: push 0000070Ch
008AD345: push 004401B0h
008AD34A: push [ebp+08h]
008AD34D: push var_40
008AD350: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AD355: mov var_60, eax
008AD358: jmp 8AD35Eh
008AD35A: and var_60, 00000000h
008AD35E: mov var_04, 00000000h
008AD365: wait 
008AD366: push 008AD377h
008AD36B: jmp 8AD376h
008AD36D: lea ecx, var_18
008AD370: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AD375: ret 
End Sub

