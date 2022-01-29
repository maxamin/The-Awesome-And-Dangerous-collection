VERSION 5.00
Begin VB.Form frmWebPermissions
  Caption = "Web interface - Permissions"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 4 'Fixed ToolWindow
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 315
  ClientWidth = 4020
  ClientHeight = 2325
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin XtremeSuiteControls.GroupBox gbAccount
    Left = 0
    Top = 0
    Width = 3975
    Height = 2295
    TabIndex = 0
    Begin XtremeSuiteControls.PushButton cmdGuestApply
      Left = 2880
      Top = 1800
      Width = 975
      Height = 375
      TabIndex = 9
    End
    Begin XtremeSuiteControls.CheckBox chkGuestPermission
      Index = 1
      Left = 120
      Top = 720
      Width = 1215
      Height = 255
      TabIndex = 1
    End
    Begin XtremeSuiteControls.CheckBox chkGuestPermission
      Index = 2
      Left = 120
      Top = 1080
      Width = 1215
      Height = 255
      TabIndex = 2
    End
    Begin XtremeSuiteControls.CheckBox chkGuestPermission
      Index = 3
      Left = 120
      Top = 1440
      Width = 1215
      Height = 255
      TabIndex = 3
    End
    Begin XtremeSuiteControls.CheckBox chkGuestPermission
      Index = 0
      Left = 120
      Top = 360
      Width = 1215
      Height = 255
      TabIndex = 4
    End
    Begin XtremeSuiteControls.CheckBox chkGuestPermission
      Index = 4
      Left = 1800
      Top = 360
      Width = 1215
      Height = 255
      TabIndex = 5
    End
    Begin XtremeSuiteControls.CheckBox chkGuestPermission
      Index = 5
      Left = 1800
      Top = 720
      Width = 1215
      Height = 255
      TabIndex = 6
    End
    Begin XtremeSuiteControls.CheckBox chkGuestPermission
      Index = 6
      Left = 1800
      Top = 1080
      Width = 2055
      Height = 255
      TabIndex = 7
    End
    Begin XtremeSuiteControls.CheckBox chkGuestPermission
      Index = 7
      Left = 1800
      Top = 1440
      Width = 2055
      Height = 255
      TabIndex = 8
    End
  End
End

Attribute VB_Name = "frmWebPermissions"


Private sub Form__8A483F
008A483F: push ebp
008A4840: mov ebp, esp
008A4842: sub esp, 00000018h
008A4845: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008A484A: mov eax, fs:[00h]
008A4850: push eax
008A4851: mov fs:[00000000h], esp
008A4858: push 00000068h
008A485A: pop eax
008A485B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A4860: push ebx
008A4861: push esi
008A4862: push edi
008A4863: mov var_18, esp
008A4866: mov var_14, 0040E480h
008A486D: mov eax, [ebp+08h]
008A4870: and eax, 00000001h
008A4873: mov var_10, eax
008A4876: mov eax, [ebp+08h]
008A4879: and al, FEh
008A487B: mov [ebp+08h], eax
008A487E: mov var_0C, 00000000h
008A4885: mov eax, [ebp+08h]
008A4888: mov eax, [eax]
008A488A: push [ebp+08h]
008A488D: call [eax+04h]
008A4890: mov var_04, 00000001h
008A4897: mov var_04, 00000002h
008A489E: push FFFFFFFFh
008A48A0: call 00410A60h ; On Error ...
008A48A5: mov var_04, 00000003h
008A48AC: mov var_34, 80020004h
008A48B3: mov var_3C, 0000000Ah
008A48BA: push 00000010h
008A48BC: pop eax
008A48BD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A48C2: lea esi, var_3C
008A48C5: mov edi, esp
008A48C7: movsd 
008A48C8: movsd 
008A48C9: movsd 
008A48CA: movsd 
008A48CB: push 00456C8Ch ; ping
008A48D0: push 0044A580h ; web
008A48D5: push 00445984h ; bssnet
008A48DA: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008A48DF: mov edx, eax
008A48E1: lea ecx, var_24
008A48E4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A48E9: push eax
008A48EA: call 004107F6h ; msvbvm60.dll.__vbaBoolStr
008A48EF: mov [2470h], ax
008A48F3: pop [eax]
008A48F5: lea ecx, var_24
008A48F8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008A48FD: mov var_04, 00000004h
008A4904: mov var_34, 80020004h
008A490B: mov var_3C, 0000000Ah
008A4912: push 00000010h
008A4914: pop eax
008A4915: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A491A: lea esi, var_3C
008A491D: mov edi, esp
008A491F: movsd 
008A4920: movsd 
008A4921: movsd 
008A4922: movsd 
008A4923: push 00459AE0h ; klg
008A4928: push 0044A580h ; web
008A492D: push 00445984h ; bssnet
008A4932: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008A4937: mov edx, eax
008A4939: lea ecx, var_24
008A493C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A4941: push eax
008A4942: call 004107F6h ; msvbvm60.dll.__vbaBoolStr
008A4947: mov [2472h], ax
008A494B: pop [eax]
008A494D: lea ecx, var_24
008A4950: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008A4955: mov var_04, 00000005h
008A495C: mov var_34, 80020004h
008A4963: mov var_3C, 0000000Ah
008A496A: push 00000010h
008A496C: pop eax
008A496D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A4972: lea esi, var_3C
008A4975: mov edi, esp
008A4977: movsd 
008A4978: movsd 
008A4979: movsd 
008A497A: movsd 
008A497B: push 00459AECh ; ss
008A4980: push 0044A580h ; web
008A4985: push 00445984h ; bssnet
008A498A: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008A498F: mov edx, eax
008A4991: lea ecx, var_24
008A4994: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A4999: push eax
008A499A: call 004107F6h ; msvbvm60.dll.__vbaBoolStr
008A499F: mov [2474h], ax
008A49A3: pop [eax]
008A49A5: lea ecx, var_24
008A49A8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008A49AD: mov var_04, 00000006h
008A49B4: mov var_34, 80020004h
008A49BB: mov var_3C, 0000000Ah
008A49C2: push 00000010h
008A49C4: pop eax
008A49C5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A49CA: lea esi, var_3C
008A49CD: mov edi, esp
008A49CF: movsd 
008A49D0: movsd 
008A49D1: movsd 
008A49D2: movsd 
008A49D3: push 00456C9Ch ; cam
008A49D8: push 0044A580h ; web
008A49DD: push 00445984h ; bssnet
008A49E2: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008A49E7: mov edx, eax
008A49E9: lea ecx, var_24
008A49EC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A49F1: push eax
008A49F2: call 004107F6h ; msvbvm60.dll.__vbaBoolStr
008A49F7: mov [2476h], ax
008A49FB: pop [eax]
008A49FD: lea ecx, var_24
008A4A00: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008A4A05: mov var_04, 00000007h
008A4A0C: mov var_34, 80020004h
008A4A13: mov var_3C, 0000000Ah
008A4A1A: push 00000010h
008A4A1C: pop eax
008A4A1D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A4A22: lea esi, var_3C
008A4A25: mov edi, esp
008A4A27: movsd 
008A4A28: movsd 
008A4A29: movsd 
008A4A2A: movsd 
008A4A2B: push 0044F704h ; pass
008A4A30: push 0044A580h ; web
008A4A35: push 00445984h ; bssnet
008A4A3A: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008A4A3F: mov edx, eax
008A4A41: lea ecx, var_24
008A4A44: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A4A49: push eax
008A4A4A: call 004107F6h ; msvbvm60.dll.__vbaBoolStr
008A4A4F: mov [2478h], ax
008A4A53: pop [eax]
008A4A55: lea ecx, var_24
008A4A58: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008A4A5D: mov var_04, 00000008h
008A4A64: mov var_34, 80020004h
008A4A6B: mov var_3C, 0000000Ah
008A4A72: push 00000010h
008A4A74: pop eax
008A4A75: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A4A7A: lea esi, var_3C
008A4A7D: mov edi, esp
008A4A7F: movsd 
008A4A80: movsd 
008A4A81: movsd 
008A4A82: movsd 
008A4A83: push 00459AF8h ; ddos
008A4A88: push 0044A580h ; web
008A4A8D: push 00445984h ; bssnet
008A4A92: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008A4A97: mov edx, eax
008A4A99: lea ecx, var_24
008A4A9C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A4AA1: push eax
008A4AA2: call 004107F6h ; msvbvm60.dll.__vbaBoolStr
008A4AA7: mov [247Ah], ax
008A4AAB: pop [eax]
008A4AAD: lea ecx, var_24
008A4AB0: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008A4AB5: mov var_04, 00000009h
008A4ABC: mov var_34, 80020004h
008A4AC3: mov var_3C, 0000000Ah
008A4ACA: push 00000010h
008A4ACC: pop eax
008A4ACD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A4AD2: lea esi, var_3C
008A4AD5: mov edi, esp
008A4AD7: movsd 
008A4AD8: movsd 
008A4AD9: movsd 
008A4ADA: movsd 
008A4ADB: push 00459B08h ; dload
008A4AE0: push 0044A580h ; web
008A4AE5: push 00445984h ; bssnet
008A4AEA: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008A4AEF: mov edx, eax
008A4AF1: lea ecx, var_24
008A4AF4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A4AF9: push eax
008A4AFA: call 004107F6h ; msvbvm60.dll.__vbaBoolStr
008A4AFF: mov [247Ch], ax
008A4B03: pop [eax]
008A4B05: lea ecx, var_24
008A4B08: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008A4B0D: mov var_04, 0000000Ah
008A4B14: mov var_34, 80020004h
008A4B1B: mov var_3C, 0000000Ah
008A4B22: push 00000010h
008A4B24: pop eax
008A4B25: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A4B2A: lea esi, var_3C
008A4B2D: mov edi, esp
008A4B2F: movsd 
008A4B30: movsd 
008A4B31: movsd 
008A4B32: movsd 
008A4B33: push 00459B18h ; remv
008A4B38: push 0044A580h ; web
008A4B3D: push 00445984h ; bssnet
008A4B42: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008A4B47: mov edx, eax
008A4B49: lea ecx, var_24
008A4B4C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A4B51: push eax
008A4B52: call 004107F6h ; msvbvm60.dll.__vbaBoolStr
008A4B57: mov [247Eh], ax
008A4B5B: pop [eax]
008A4B5D: lea ecx, var_24
008A4B60: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008A4B65: mov var_04, 0000000Bh
008A4B6C: mov ax, [2470h]
008A4B70: pop [eax]
008A4B72: mov var_34, ax
008A4B76: mov var_3C, 0000000Bh
008A4B7D: mov eax, [ebp+08h]
008A4B80: mov eax, [eax]
008A4B82: push [ebp+08h]
008A4B85: call [eax+00000304h]
008A4B8B: push eax
008A4B8C: lea eax, var_28
008A4B8F: push eax
008A4B90: call 00410A84h ; Set (object)
008A4B95: mov var_50, eax
008A4B98: lea eax, var_2C
008A4B9B: push eax
008A4B9C: push 00000000h
008A4B9E: mov eax, var_50
008A4BA1: mov eax, [eax]
008A4BA3: push var_50
008A4BA6: call [eax+40h]
008A4BA9: fclex 
008A4BAB: mov var_54, eax
008A4BAE: cmp var_54, 00000000h
008A4BB2: jnl 8A4BCBh
008A4BB4: push 00000040h
008A4BB6: push 00440DE8h
008A4BBB: push var_50
008A4BBE: push var_54
008A4BC1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A4BC6: mov var_6C, eax
008A4BC9: jmp 8A4BCFh
008A4BCB: and var_6C, 00000000h
008A4BCF: push 00000010h
008A4BD1: pop eax
008A4BD2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A4BD7: lea esi, var_3C
008A4BDA: mov edi, esp
008A4BDC: movsd 
008A4BDD: movsd 
008A4BDE: movsd 
008A4BDF: movsd 
008A4BE0: push 00000000h
008A4BE2: push var_2C
008A4BE5: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008A4BEA: lea eax, var_2C
008A4BED: push eax
008A4BEE: lea eax, var_28
008A4BF1: push eax
008A4BF2: push 00000002h
008A4BF4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A4BF9: add esp, 0000000Ch
008A4BFC: lea ecx, var_3C
008A4BFF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A4C04: mov var_04, 0000000Ch
008A4C0B: mov ax, [2472h]
008A4C0F: pop [eax]
008A4C11: mov var_34, ax
008A4C15: mov var_3C, 0000000Bh
008A4C1C: mov eax, [ebp+08h]
008A4C1F: mov eax, [eax]
008A4C21: push [ebp+08h]
008A4C24: call [eax+00000304h]
008A4C2A: push eax
008A4C2B: lea eax, var_28
008A4C2E: push eax
008A4C2F: call 00410A84h ; Set (object)
008A4C34: mov var_50, eax
008A4C37: lea eax, var_2C
008A4C3A: push eax
008A4C3B: push 00000001h
008A4C3D: mov eax, var_50
008A4C40: mov eax, [eax]
008A4C42: push var_50
008A4C45: call [eax+40h]
008A4C48: fclex 
008A4C4A: mov var_54, eax
008A4C4D: cmp var_54, 00000000h
008A4C51: jnl 8A4C6Ah
008A4C53: push 00000040h
008A4C55: push 00440DE8h
008A4C5A: push var_50
008A4C5D: push var_54
008A4C60: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A4C65: mov var_70, eax
008A4C68: jmp 8A4C6Eh
008A4C6A: and var_70, 00000000h
008A4C6E: push 00000010h
008A4C70: pop eax
008A4C71: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A4C76: lea esi, var_3C
008A4C79: mov edi, esp
008A4C7B: movsd 
008A4C7C: movsd 
008A4C7D: movsd 
008A4C7E: movsd 
008A4C7F: push 00000000h
008A4C81: push var_2C
008A4C84: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008A4C89: lea eax, var_2C
008A4C8C: push eax
008A4C8D: lea eax, var_28
008A4C90: push eax
008A4C91: push 00000002h
008A4C93: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A4C98: add esp, 0000000Ch
008A4C9B: lea ecx, var_3C
008A4C9E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A4CA3: mov var_04, 0000000Dh
008A4CAA: mov ax, [2474h]
008A4CAE: pop [eax]
008A4CB0: mov var_34, ax
008A4CB4: mov var_3C, 0000000Bh
008A4CBB: mov eax, [ebp+08h]
008A4CBE: mov eax, [eax]
008A4CC0: push [ebp+08h]
008A4CC3: call [eax+00000304h]
008A4CC9: push eax
008A4CCA: lea eax, var_28
008A4CCD: push eax
008A4CCE: call 00410A84h ; Set (object)
008A4CD3: mov var_50, eax
008A4CD6: lea eax, var_2C
008A4CD9: push eax
008A4CDA: push 00000002h
008A4CDC: mov eax, var_50
008A4CDF: mov eax, [eax]
008A4CE1: push var_50
008A4CE4: call [eax+40h]
008A4CE7: fclex 
008A4CE9: mov var_54, eax
008A4CEC: cmp var_54, 00000000h
008A4CF0: jnl 8A4D09h
008A4CF2: push 00000040h
008A4CF4: push 00440DE8h
008A4CF9: push var_50
008A4CFC: push var_54
008A4CFF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A4D04: mov var_74, eax
008A4D07: jmp 8A4D0Dh
008A4D09: and var_74, 00000000h
008A4D0D: push 00000010h
008A4D0F: pop eax
008A4D10: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A4D15: lea esi, var_3C
008A4D18: mov edi, esp
008A4D1A: movsd 
008A4D1B: movsd 
008A4D1C: movsd 
008A4D1D: movsd 
008A4D1E: push 00000000h
008A4D20: push var_2C
008A4D23: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008A4D28: lea eax, var_2C
008A4D2B: push eax
008A4D2C: lea eax, var_28
008A4D2F: push eax
008A4D30: push 00000002h
008A4D32: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A4D37: add esp, 0000000Ch
008A4D3A: lea ecx, var_3C
008A4D3D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A4D42: mov var_04, 0000000Eh
008A4D49: mov ax, [2476h]
008A4D4D: pop [eax]
008A4D4F: mov var_34, ax
008A4D53: mov var_3C, 0000000Bh
008A4D5A: mov eax, [ebp+08h]
008A4D5D: mov eax, [eax]
008A4D5F: push [ebp+08h]
008A4D62: call [eax+00000304h]
008A4D68: push eax
008A4D69: lea eax, var_28
008A4D6C: push eax
008A4D6D: call 00410A84h ; Set (object)
008A4D72: mov var_50, eax
008A4D75: lea eax, var_2C
008A4D78: push eax
008A4D79: push 00000003h
008A4D7B: mov eax, var_50
008A4D7E: mov eax, [eax]
008A4D80: push var_50
008A4D83: call [eax+40h]
008A4D86: fclex 
008A4D88: mov var_54, eax
008A4D8B: cmp var_54, 00000000h
008A4D8F: jnl 8A4DA8h
008A4D91: push 00000040h
008A4D93: push 00440DE8h
008A4D98: push var_50
008A4D9B: push var_54
008A4D9E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A4DA3: mov var_78, eax
008A4DA6: jmp 8A4DACh
008A4DA8: and var_78, 00000000h
008A4DAC: push 00000010h
008A4DAE: pop eax
008A4DAF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A4DB4: lea esi, var_3C
008A4DB7: mov edi, esp
008A4DB9: movsd 
008A4DBA: movsd 
008A4DBB: movsd 
008A4DBC: movsd 
008A4DBD: push 00000000h
008A4DBF: push var_2C
008A4DC2: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008A4DC7: lea eax, var_2C
008A4DCA: push eax
008A4DCB: lea eax, var_28
008A4DCE: push eax
008A4DCF: push 00000002h
008A4DD1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A4DD6: add esp, 0000000Ch
008A4DD9: lea ecx, var_3C
008A4DDC: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A4DE1: mov var_04, 0000000Fh
008A4DE8: mov ax, [2478h]
008A4DEC: pop [eax]
008A4DEE: mov var_34, ax
008A4DF2: mov var_3C, 0000000Bh
008A4DF9: mov eax, [ebp+08h]
008A4DFC: mov eax, [eax]
008A4DFE: push [ebp+08h]
008A4E01: call [eax+00000304h]
008A4E07: push eax
008A4E08: lea eax, var_28
008A4E0B: push eax
008A4E0C: call 00410A84h ; Set (object)
008A4E11: mov var_50, eax
008A4E14: lea eax, var_2C
008A4E17: push eax
008A4E18: push 00000004h
008A4E1A: mov eax, var_50
008A4E1D: mov eax, [eax]
008A4E1F: push var_50
008A4E22: call [eax+40h]
008A4E25: fclex 
008A4E27: mov var_54, eax
008A4E2A: cmp var_54, 00000000h
008A4E2E: jnl 8A4E47h
008A4E30: push 00000040h
008A4E32: push 00440DE8h
008A4E37: push var_50
008A4E3A: push var_54
008A4E3D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A4E42: mov var_7C, eax
008A4E45: jmp 8A4E4Bh
008A4E47: and var_7C, 00000000h
008A4E4B: push 00000010h
008A4E4D: pop eax
008A4E4E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A4E53: lea esi, var_3C
008A4E56: mov edi, esp
008A4E58: movsd 
008A4E59: movsd 
008A4E5A: movsd 
008A4E5B: movsd 
008A4E5C: push 00000000h
008A4E5E: push var_2C
008A4E61: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008A4E66: lea eax, var_2C
008A4E69: push eax
008A4E6A: lea eax, var_28
008A4E6D: push eax
008A4E6E: push 00000002h
008A4E70: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A4E75: add esp, 0000000Ch
008A4E78: lea ecx, var_3C
008A4E7B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A4E80: mov var_04, 00000010h
008A4E87: mov ax, [247Ah]
008A4E8B: pop [eax]
008A4E8D: mov var_34, ax
008A4E91: mov var_3C, 0000000Bh
008A4E98: mov eax, [ebp+08h]
008A4E9B: mov eax, [eax]
008A4E9D: push [ebp+08h]
008A4EA0: call [eax+00000304h]
008A4EA6: push eax
008A4EA7: lea eax, var_28
008A4EAA: push eax
008A4EAB: call 00410A84h ; Set (object)
008A4EB0: mov var_50, eax
008A4EB3: lea eax, var_2C
008A4EB6: push eax
008A4EB7: push 00000005h
008A4EB9: mov eax, var_50
008A4EBC: mov eax, [eax]
008A4EBE: push var_50
008A4EC1: call [eax+40h]
008A4EC4: fclex 
008A4EC6: mov var_54, eax
008A4EC9: cmp var_54, 00000000h
008A4ECD: jnl 8A4EE6h
008A4ECF: push 00000040h
008A4ED1: push 00440DE8h
008A4ED6: push var_50
008A4ED9: push var_54
008A4EDC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A4EE1: mov var_80, eax
008A4EE4: jmp 8A4EEAh
008A4EE6: and var_80, 00000000h
008A4EEA: push 00000010h
008A4EEC: pop eax
008A4EED: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A4EF2: lea esi, var_3C
008A4EF5: mov edi, esp
008A4EF7: movsd 
008A4EF8: movsd 
008A4EF9: movsd 
008A4EFA: movsd 
008A4EFB: push 00000000h
008A4EFD: push var_2C
008A4F00: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008A4F05: lea eax, var_2C
008A4F08: push eax
008A4F09: lea eax, var_28
008A4F0C: push eax
008A4F0D: push 00000002h
008A4F0F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A4F14: add esp, 0000000Ch
008A4F17: lea ecx, var_3C
008A4F1A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A4F1F: mov var_04, 00000011h
008A4F26: mov ax, [247Ch]
008A4F2A: pop [eax]
008A4F2C: mov var_34, ax
008A4F30: mov var_3C, 0000000Bh
008A4F37: mov eax, [ebp+08h]
008A4F3A: mov eax, [eax]
008A4F3C: push [ebp+08h]
008A4F3F: call [eax+00000304h]
008A4F45: push eax
008A4F46: lea eax, var_28
008A4F49: push eax
008A4F4A: call 00410A84h ; Set (object)
008A4F4F: mov var_50, eax
008A4F52: lea eax, var_2C
008A4F55: push eax
008A4F56: push 00000006h
008A4F58: mov eax, var_50
008A4F5B: mov eax, [eax]
008A4F5D: push var_50
008A4F60: call [eax+40h]
008A4F63: fclex 
008A4F65: mov var_54, eax
008A4F68: cmp var_54, 00000000h
008A4F6C: jnl 8A4F88h
008A4F6E: push 00000040h
008A4F70: push 00440DE8h
008A4F75: push var_50
008A4F78: push var_54
008A4F7B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A4F80: mov var_00000084, eax
008A4F86: jmp 8A4F8Fh
008A4F88: and var_00000084, 00000000h
008A4F8F: push 00000010h
008A4F91: pop eax
008A4F92: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A4F97: lea esi, var_3C
008A4F9A: mov edi, esp
008A4F9C: movsd 
008A4F9D: movsd 
008A4F9E: movsd 
008A4F9F: movsd 
008A4FA0: push 00000000h
008A4FA2: push var_2C
008A4FA5: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008A4FAA: lea eax, var_2C
008A4FAD: push eax
008A4FAE: lea eax, var_28
008A4FB1: push eax
008A4FB2: push 00000002h
008A4FB4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A4FB9: add esp, 0000000Ch
008A4FBC: lea ecx, var_3C
008A4FBF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A4FC4: mov var_04, 00000012h
008A4FCB: mov ax, [247Eh]
008A4FCF: pop [eax]
008A4FD1: mov var_34, ax
008A4FD5: mov var_3C, 0000000Bh
008A4FDC: mov eax, [ebp+08h]
008A4FDF: mov eax, [eax]
008A4FE1: push [ebp+08h]
008A4FE4: call [eax+00000304h]
008A4FEA: push eax
008A4FEB: lea eax, var_28
008A4FEE: push eax
008A4FEF: call 00410A84h ; Set (object)
008A4FF4: mov var_50, eax
008A4FF7: lea eax, var_2C
008A4FFA: push eax
008A4FFB: push 00000007h
008A4FFD: mov eax, var_50
008A5000: mov eax, [eax]
008A5002: push var_50
008A5005: call [eax+40h]
008A5008: fclex 
008A500A: mov var_54, eax
008A500D: cmp var_54, 00000000h
008A5011: jnl 8A502Dh
008A5013: push 00000040h
008A5015: push 00440DE8h
008A501A: push var_50
008A501D: push var_54
008A5020: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A5025: mov var_00000088, eax
008A502B: jmp 8A5034h
008A502D: and var_00000088, 00000000h
008A5034: push 00000010h
008A5036: pop eax
008A5037: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A503C: lea esi, var_3C
008A503F: mov edi, esp
008A5041: movsd 
008A5042: movsd 
008A5043: movsd 
008A5044: movsd 
008A5045: push 00000000h
008A5047: push var_2C
008A504A: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008A504F: lea eax, var_2C
008A5052: push eax
008A5053: lea eax, var_28
008A5056: push eax
008A5057: push 00000002h
008A5059: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A505E: add esp, 0000000Ch
008A5061: lea ecx, var_3C
008A5064: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A5069: mov var_10, 00000000h
008A5070: push 008A5093h
008A5075: jmp 8A5092h
008A5077: lea ecx, var_24
008A507A: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008A507F: lea eax, var_2C
008A5082: push eax
008A5083: lea eax, var_28
008A5086: push eax
008A5087: push 00000002h
008A5089: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A508E: add esp, 0000000Ch
008A5091: ret 
End Sub

Private sub Form__8A50B2
008A50B2: push ebp
008A50B3: mov ebp, esp
008A50B5: sub esp, 0000000Ch
008A50B8: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008A50BD: mov eax, fs:[00h]
008A50C3: push eax
008A50C4: mov fs:[00000000h], esp
008A50CB: push 00000010h
008A50CD: pop eax
008A50CE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A50D3: push ebx
008A50D4: push esi
008A50D5: push edi
008A50D6: mov var_0C, esp
008A50D9: mov var_08, 0040E4F0h
008A50E0: mov eax, [ebp+08h]
008A50E3: and eax, 00000001h
008A50E6: mov var_04, eax
008A50E9: mov eax, [ebp+08h]
008A50EC: and al, FEh
008A50EE: mov [ebp+08h], eax
008A50F1: mov eax, [ebp+08h]
008A50F4: mov eax, [eax]
008A50F6: push [ebp+08h]
008A50F9: call [eax+04h]
008A50FC: push 00000000h
008A50FE: mov eax, [ebp+08h]
008A5101: mov eax, [eax]
008A5103: push [ebp+08h]
008A5106: call [eax+000001BCh]
008A510C: fclex 
008A510E: mov var_18, eax
008A5111: cmp var_18, 00000000h
008A5115: jnl 8A5131h
008A5117: push 000001BCh
008A511C: push 00443C2Ch
008A5121: push [ebp+08h]
008A5124: push var_18
008A5127: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A512C: mov var_24, eax
008A512F: jmp 8A5135h
008A5131: and var_24, 00000000h
008A5135: mov eax, [ebp+0Ch]
008A5138: or word ptr [eax], FFFFh
008A513C: mov var_04, 00000000h
008A5143: mov eax, [ebp+08h]
008A5146: mov eax, [eax]
008A5148: push [ebp+08h]
008A514B: call [eax+08h]
008A514E: mov eax, var_04
008A5151: mov ecx, var_14
008A5154: mov fs:[00000000h], ecx
008A515B: pop edi
008A515C: pop esi
008A515D: pop ebx
008A515E: leave 
008A515F: retn 0008h
End Sub

Private sub cmdGuestApply__8A3B9B
008A3B9B: push ebp
008A3B9C: mov ebp, esp
008A3B9E: sub esp, 00000018h
008A3BA1: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008A3BA6: mov eax, fs:[00h]
008A3BAC: push eax
008A3BAD: mov fs:[00000000h], esp
008A3BB4: push 0000007Ch
008A3BB6: pop eax
008A3BB7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A3BBC: push ebx
008A3BBD: push esi
008A3BBE: push edi
008A3BBF: mov var_18, esp
008A3BC2: mov var_14, 0040E410h
008A3BC9: mov eax, [ebp+08h]
008A3BCC: and eax, 00000001h
008A3BCF: mov var_10, eax
008A3BD2: mov eax, [ebp+08h]
008A3BD5: and al, FEh
008A3BD7: mov [ebp+08h], eax
008A3BDA: mov var_0C, 00000000h
008A3BE1: mov eax, [ebp+08h]
008A3BE4: mov eax, [eax]
008A3BE6: push [ebp+08h]
008A3BE9: call [eax+04h]
008A3BEC: mov var_04, 00000001h
008A3BF3: mov var_04, 00000002h
008A3BFA: push FFFFFFFFh
008A3BFC: call 00410A60h ; On Error ...
008A3C01: mov var_04, 00000003h
008A3C08: mov eax, [ebp+08h]
008A3C0B: mov eax, [eax]
008A3C0D: push [ebp+08h]
008A3C10: call [eax+00000304h]
008A3C16: push eax
008A3C17: lea eax, var_2C
008A3C1A: push eax
008A3C1B: call 00410A84h ; Set (object)
008A3C20: mov var_44, eax
008A3C23: lea eax, var_30
008A3C26: push eax
008A3C27: push 00000000h
008A3C29: mov eax, var_44
008A3C2C: mov eax, [eax]
008A3C2E: push var_44
008A3C31: call [eax+40h]
008A3C34: fclex 
008A3C36: mov var_48, eax
008A3C39: cmp var_48, 00000000h
008A3C3D: jnl 8A3C56h
008A3C3F: push 00000040h
008A3C41: push 00440DE8h
008A3C46: push var_44
008A3C49: push var_48
008A3C4C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A3C51: mov var_60, eax
008A3C54: jmp 8A3C5Ah
008A3C56: and var_60, 00000000h
008A3C5A: push 00000000h
008A3C5C: push 00000000h
008A3C5E: push var_30
008A3C61: lea eax, var_40
008A3C64: push eax
008A3C65: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A3C6A: add esp, 00000010h
008A3C6D: push eax
008A3C6E: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A3C73: neg eax
008A3C75: sbb eax, eax
008A3C77: neg eax
008A3C79: neg eax
008A3C7B: mov [2470h], ax
008A3C7F: pop [eax]
008A3C81: lea eax, var_30
008A3C84: push eax
008A3C85: lea eax, var_2C
008A3C88: push eax
008A3C89: push 00000002h
008A3C8B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A3C90: add esp, 0000000Ch
008A3C93: lea ecx, var_40
008A3C96: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A3C9B: mov var_04, 00000004h
008A3CA2: mov eax, [ebp+08h]
008A3CA5: mov eax, [eax]
008A3CA7: push [ebp+08h]
008A3CAA: call [eax+00000304h]
008A3CB0: push eax
008A3CB1: lea eax, var_2C
008A3CB4: push eax
008A3CB5: call 00410A84h ; Set (object)
008A3CBA: mov var_44, eax
008A3CBD: lea eax, var_30
008A3CC0: push eax
008A3CC1: push 00000001h
008A3CC3: mov eax, var_44
008A3CC6: mov eax, [eax]
008A3CC8: push var_44
008A3CCB: call [eax+40h]
008A3CCE: fclex 
008A3CD0: mov var_48, eax
008A3CD3: cmp var_48, 00000000h
008A3CD7: jnl 8A3CF0h
008A3CD9: push 00000040h
008A3CDB: push 00440DE8h
008A3CE0: push var_44
008A3CE3: push var_48
008A3CE6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A3CEB: mov var_64, eax
008A3CEE: jmp 8A3CF4h
008A3CF0: and var_64, 00000000h
008A3CF4: push 00000000h
008A3CF6: push 00000000h
008A3CF8: push var_30
008A3CFB: lea eax, var_40
008A3CFE: push eax
008A3CFF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A3D04: add esp, 00000010h
008A3D07: push eax
008A3D08: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A3D0D: neg eax
008A3D0F: sbb eax, eax
008A3D11: neg eax
008A3D13: neg eax
008A3D15: mov [2472h], ax
008A3D19: pop [eax]
008A3D1B: lea eax, var_30
008A3D1E: push eax
008A3D1F: lea eax, var_2C
008A3D22: push eax
008A3D23: push 00000002h
008A3D25: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A3D2A: add esp, 0000000Ch
008A3D2D: lea ecx, var_40
008A3D30: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A3D35: mov var_04, 00000005h
008A3D3C: mov eax, [ebp+08h]
008A3D3F: mov eax, [eax]
008A3D41: push [ebp+08h]
008A3D44: call [eax+00000304h]
008A3D4A: push eax
008A3D4B: lea eax, var_2C
008A3D4E: push eax
008A3D4F: call 00410A84h ; Set (object)
008A3D54: mov var_44, eax
008A3D57: lea eax, var_30
008A3D5A: push eax
008A3D5B: push 00000002h
008A3D5D: mov eax, var_44
008A3D60: mov eax, [eax]
008A3D62: push var_44
008A3D65: call [eax+40h]
008A3D68: fclex 
008A3D6A: mov var_48, eax
008A3D6D: cmp var_48, 00000000h
008A3D71: jnl 8A3D8Ah
008A3D73: push 00000040h
008A3D75: push 00440DE8h
008A3D7A: push var_44
008A3D7D: push var_48
008A3D80: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A3D85: mov var_68, eax
008A3D88: jmp 8A3D8Eh
008A3D8A: and var_68, 00000000h
008A3D8E: push 00000000h
008A3D90: push 00000000h
008A3D92: push var_30
008A3D95: lea eax, var_40
008A3D98: push eax
008A3D99: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A3D9E: add esp, 00000010h
008A3DA1: push eax
008A3DA2: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A3DA7: neg eax
008A3DA9: sbb eax, eax
008A3DAB: neg eax
008A3DAD: neg eax
008A3DAF: mov [2474h], ax
008A3DB3: pop [eax]
008A3DB5: lea eax, var_30
008A3DB8: push eax
008A3DB9: lea eax, var_2C
008A3DBC: push eax
008A3DBD: push 00000002h
008A3DBF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A3DC4: add esp, 0000000Ch
008A3DC7: lea ecx, var_40
008A3DCA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A3DCF: mov var_04, 00000006h
008A3DD6: mov eax, [ebp+08h]
008A3DD9: mov eax, [eax]
008A3DDB: push [ebp+08h]
008A3DDE: call [eax+00000304h]
008A3DE4: push eax
008A3DE5: lea eax, var_2C
008A3DE8: push eax
008A3DE9: call 00410A84h ; Set (object)
008A3DEE: mov var_44, eax
008A3DF1: lea eax, var_30
008A3DF4: push eax
008A3DF5: push 00000003h
008A3DF7: mov eax, var_44
008A3DFA: mov eax, [eax]
008A3DFC: push var_44
008A3DFF: call [eax+40h]
008A3E02: fclex 
008A3E04: mov var_48, eax
008A3E07: cmp var_48, 00000000h
008A3E0B: jnl 8A3E24h
008A3E0D: push 00000040h
008A3E0F: push 00440DE8h
008A3E14: push var_44
008A3E17: push var_48
008A3E1A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A3E1F: mov var_6C, eax
008A3E22: jmp 8A3E28h
008A3E24: and var_6C, 00000000h
008A3E28: push 00000000h
008A3E2A: push 00000000h
008A3E2C: push var_30
008A3E2F: lea eax, var_40
008A3E32: push eax
008A3E33: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A3E38: add esp, 00000010h
008A3E3B: push eax
008A3E3C: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A3E41: neg eax
008A3E43: sbb eax, eax
008A3E45: neg eax
008A3E47: neg eax
008A3E49: mov [2476h], ax
008A3E4D: pop [eax]
008A3E4F: lea eax, var_30
008A3E52: push eax
008A3E53: lea eax, var_2C
008A3E56: push eax
008A3E57: push 00000002h
008A3E59: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A3E5E: add esp, 0000000Ch
008A3E61: lea ecx, var_40
008A3E64: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A3E69: mov var_04, 00000007h
008A3E70: mov eax, [ebp+08h]
008A3E73: mov eax, [eax]
008A3E75: push [ebp+08h]
008A3E78: call [eax+00000304h]
008A3E7E: push eax
008A3E7F: lea eax, var_2C
008A3E82: push eax
008A3E83: call 00410A84h ; Set (object)
008A3E88: mov var_44, eax
008A3E8B: lea eax, var_30
008A3E8E: push eax
008A3E8F: push 00000004h
008A3E91: mov eax, var_44
008A3E94: mov eax, [eax]
008A3E96: push var_44
008A3E99: call [eax+40h]
008A3E9C: fclex 
008A3E9E: mov var_48, eax
008A3EA1: cmp var_48, 00000000h
008A3EA5: jnl 8A3EBEh
008A3EA7: push 00000040h
008A3EA9: push 00440DE8h
008A3EAE: push var_44
008A3EB1: push var_48
008A3EB4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A3EB9: mov var_70, eax
008A3EBC: jmp 8A3EC2h
008A3EBE: and var_70, 00000000h
008A3EC2: push 00000000h
008A3EC4: push 00000000h
008A3EC6: push var_30
008A3EC9: lea eax, var_40
008A3ECC: push eax
008A3ECD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A3ED2: add esp, 00000010h
008A3ED5: push eax
008A3ED6: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A3EDB: neg eax
008A3EDD: sbb eax, eax
008A3EDF: neg eax
008A3EE1: neg eax
008A3EE3: mov [2478h], ax
008A3EE7: pop [eax]
008A3EE9: lea eax, var_30
008A3EEC: push eax
008A3EED: lea eax, var_2C
008A3EF0: push eax
008A3EF1: push 00000002h
008A3EF3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A3EF8: add esp, 0000000Ch
008A3EFB: lea ecx, var_40
008A3EFE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A3F03: mov var_04, 00000008h
008A3F0A: mov eax, [ebp+08h]
008A3F0D: mov eax, [eax]
008A3F0F: push [ebp+08h]
008A3F12: call [eax+00000304h]
008A3F18: push eax
008A3F19: lea eax, var_2C
008A3F1C: push eax
008A3F1D: call 00410A84h ; Set (object)
008A3F22: mov var_44, eax
008A3F25: lea eax, var_30
008A3F28: push eax
008A3F29: push 00000005h
008A3F2B: mov eax, var_44
008A3F2E: mov eax, [eax]
008A3F30: push var_44
008A3F33: call [eax+40h]
008A3F36: fclex 
008A3F38: mov var_48, eax
008A3F3B: cmp var_48, 00000000h
008A3F3F: jnl 8A3F58h
008A3F41: push 00000040h
008A3F43: push 00440DE8h
008A3F48: push var_44
008A3F4B: push var_48
008A3F4E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A3F53: mov var_74, eax
008A3F56: jmp 8A3F5Ch
008A3F58: and var_74, 00000000h
008A3F5C: push 00000000h
008A3F5E: push 00000000h
008A3F60: push var_30
008A3F63: lea eax, var_40
008A3F66: push eax
008A3F67: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A3F6C: add esp, 00000010h
008A3F6F: push eax
008A3F70: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A3F75: neg eax
008A3F77: sbb eax, eax
008A3F79: neg eax
008A3F7B: neg eax
008A3F7D: mov [247Ah], ax
008A3F81: pop [eax]
008A3F83: lea eax, var_30
008A3F86: push eax
008A3F87: lea eax, var_2C
008A3F8A: push eax
008A3F8B: push 00000002h
008A3F8D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A3F92: add esp, 0000000Ch
008A3F95: lea ecx, var_40
008A3F98: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A3F9D: mov var_04, 00000009h
008A3FA4: mov eax, [ebp+08h]
008A3FA7: mov eax, [eax]
008A3FA9: push [ebp+08h]
008A3FAC: call [eax+00000304h]
008A3FB2: push eax
008A3FB3: lea eax, var_2C
008A3FB6: push eax
008A3FB7: call 00410A84h ; Set (object)
008A3FBC: mov var_44, eax
008A3FBF: lea eax, var_30
008A3FC2: push eax
008A3FC3: push 00000006h
008A3FC5: mov eax, var_44
008A3FC8: mov eax, [eax]
008A3FCA: push var_44
008A3FCD: call [eax+40h]
008A3FD0: fclex 
008A3FD2: mov var_48, eax
008A3FD5: cmp var_48, 00000000h
008A3FD9: jnl 8A3FF2h
008A3FDB: push 00000040h
008A3FDD: push 00440DE8h
008A3FE2: push var_44
008A3FE5: push var_48
008A3FE8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A3FED: mov var_78, eax
008A3FF0: jmp 8A3FF6h
008A3FF2: and var_78, 00000000h
008A3FF6: push 00000000h
008A3FF8: push 00000000h
008A3FFA: push var_30
008A3FFD: lea eax, var_40
008A4000: push eax
008A4001: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A4006: add esp, 00000010h
008A4009: push eax
008A400A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A400F: neg eax
008A4011: sbb eax, eax
008A4013: neg eax
008A4015: neg eax
008A4017: mov [247Ch], ax
008A401B: pop [eax]
008A401D: lea eax, var_30
008A4020: push eax
008A4021: lea eax, var_2C
008A4024: push eax
008A4025: push 00000002h
008A4027: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A402C: add esp, 0000000Ch
008A402F: lea ecx, var_40
008A4032: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A4037: mov var_04, 0000000Ah
008A403E: mov eax, [ebp+08h]
008A4041: mov eax, [eax]
008A4043: push [ebp+08h]
008A4046: call [eax+00000304h]
008A404C: push eax
008A404D: lea eax, var_2C
008A4050: push eax
008A4051: call 00410A84h ; Set (object)
008A4056: mov var_44, eax
008A4059: lea eax, var_30
008A405C: push eax
008A405D: push 00000007h
008A405F: mov eax, var_44
008A4062: mov eax, [eax]
008A4064: push var_44
008A4067: call [eax+40h]
008A406A: fclex 
008A406C: mov var_48, eax
008A406F: cmp var_48, 00000000h
008A4073: jnl 8A408Ch
008A4075: push 00000040h
008A4077: push 00440DE8h
008A407C: push var_44
008A407F: push var_48
008A4082: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A4087: mov var_7C, eax
008A408A: jmp 8A4090h
008A408C: and var_7C, 00000000h
008A4090: push 00000000h
008A4092: push 00000000h
008A4094: push var_30
008A4097: lea eax, var_40
008A409A: push eax
008A409B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A40A0: add esp, 00000010h
008A40A3: push eax
008A40A4: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A40A9: neg eax
008A40AB: sbb eax, eax
008A40AD: neg eax
008A40AF: neg eax
008A40B1: mov [247Eh], ax
008A40B5: pop [eax]
008A40B7: lea eax, var_30
008A40BA: push eax
008A40BB: lea eax, var_2C
008A40BE: push eax
008A40BF: push 00000002h
008A40C1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A40C6: add esp, 0000000Ch
008A40C9: lea ecx, var_40
008A40CC: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A40D1: mov var_04, 0000000Bh
008A40D8: mov eax, [ebp+08h]
008A40DB: mov eax, [eax]
008A40DD: push [ebp+08h]
008A40E0: call [eax+00000304h]
008A40E6: push eax
008A40E7: lea eax, var_2C
008A40EA: push eax
008A40EB: call 00410A84h ; Set (object)
008A40F0: mov var_44, eax
008A40F3: lea eax, var_30
008A40F6: push eax
008A40F7: push 00000000h
008A40F9: mov eax, var_44
008A40FC: mov eax, [eax]
008A40FE: push var_44
008A4101: call [eax+40h]
008A4104: fclex 
008A4106: mov var_48, eax
008A4109: cmp var_48, 00000000h
008A410D: jnl 8A4126h
008A410F: push 00000040h
008A4111: push 00440DE8h
008A4116: push var_44
008A4119: push var_48
008A411C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A4121: mov var_80, eax
008A4124: jmp 8A412Ah
008A4126: and var_80, 00000000h
008A412A: push 00000000h
008A412C: push 00000000h
008A412E: push var_30
008A4131: lea eax, var_40
008A4134: push eax
008A4135: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A413A: add esp, 00000010h
008A413D: push eax
008A413E: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A4143: push eax
008A4144: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008A4149: mov edx, eax
008A414B: lea ecx, var_24
008A414E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A4153: push eax
008A4154: call 004109DCh ; Val(arg_1)
008A4159: push ecx
008A415A: push ecx
008A415B: fstp real8 ptr [esp]
008A415E: call 00410790h ; msvbvm60.dll.__vbaStrR8
008A4163: mov edx, eax
008A4165: lea ecx, var_28
008A4168: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A416D: push eax
008A416E: push 00456C8Ch ; ping
008A4173: push 0044A580h ; web
008A4178: push 00445984h ; bssnet
008A417D: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008A4182: lea eax, var_28
008A4185: push eax
008A4186: lea eax, var_24
008A4189: push eax
008A418A: push 00000002h
008A418C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A4191: add esp, 0000000Ch
008A4194: lea eax, var_30
008A4197: push eax
008A4198: lea eax, var_2C
008A419B: push eax
008A419C: push 00000002h
008A419E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A41A3: add esp, 0000000Ch
008A41A6: lea ecx, var_40
008A41A9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A41AE: mov var_04, 0000000Ch
008A41B5: mov eax, [ebp+08h]
008A41B8: mov eax, [eax]
008A41BA: push [ebp+08h]
008A41BD: call [eax+00000304h]
008A41C3: push eax
008A41C4: lea eax, var_2C
008A41C7: push eax
008A41C8: call 00410A84h ; Set (object)
008A41CD: mov var_44, eax
008A41D0: lea eax, var_30
008A41D3: push eax
008A41D4: push 00000001h
008A41D6: mov eax, var_44
008A41D9: mov eax, [eax]
008A41DB: push var_44
008A41DE: call [eax+40h]
008A41E1: fclex 
008A41E3: mov var_48, eax
008A41E6: cmp var_48, 00000000h
008A41EA: jnl 8A4206h
008A41EC: push 00000040h
008A41EE: push 00440DE8h
008A41F3: push var_44
008A41F6: push var_48
008A41F9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A41FE: mov var_00000084, eax
008A4204: jmp 8A420Dh
008A4206: and var_00000084, 00000000h
008A420D: push 00000000h
008A420F: push 00000000h
008A4211: push var_30
008A4214: lea eax, var_40
008A4217: push eax
008A4218: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A421D: add esp, 00000010h
008A4220: push eax
008A4221: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A4226: push eax
008A4227: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008A422C: mov edx, eax
008A422E: lea ecx, var_24
008A4231: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A4236: push eax
008A4237: call 004109DCh ; Val(arg_1)
008A423C: push ecx
008A423D: push ecx
008A423E: fstp real8 ptr [esp]
008A4241: call 00410790h ; msvbvm60.dll.__vbaStrR8
008A4246: mov edx, eax
008A4248: lea ecx, var_28
008A424B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A4250: push eax
008A4251: push 00459AE0h ; klg
008A4256: push 0044A580h ; web
008A425B: push 00445984h ; bssnet
008A4260: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008A4265: lea eax, var_28
008A4268: push eax
008A4269: lea eax, var_24
008A426C: push eax
008A426D: push 00000002h
008A426F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A4274: add esp, 0000000Ch
008A4277: lea eax, var_30
008A427A: push eax
008A427B: lea eax, var_2C
008A427E: push eax
008A427F: push 00000002h
008A4281: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A4286: add esp, 0000000Ch
008A4289: lea ecx, var_40
008A428C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A4291: mov var_04, 0000000Dh
008A4298: mov eax, [ebp+08h]
008A429B: mov eax, [eax]
008A429D: push [ebp+08h]
008A42A0: call [eax+00000304h]
008A42A6: push eax
008A42A7: lea eax, var_2C
008A42AA: push eax
008A42AB: call 00410A84h ; Set (object)
008A42B0: mov var_44, eax
008A42B3: lea eax, var_30
008A42B6: push eax
008A42B7: push 00000002h
008A42B9: mov eax, var_44
008A42BC: mov eax, [eax]
008A42BE: push var_44
008A42C1: call [eax+40h]
008A42C4: fclex 
008A42C6: mov var_48, eax
008A42C9: cmp var_48, 00000000h
008A42CD: jnl 8A42E9h
008A42CF: push 00000040h
008A42D1: push 00440DE8h
008A42D6: push var_44
008A42D9: push var_48
008A42DC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A42E1: mov var_00000088, eax
008A42E7: jmp 8A42F0h
008A42E9: and var_00000088, 00000000h
008A42F0: push 00000000h
008A42F2: push 00000000h
008A42F4: push var_30
008A42F7: lea eax, var_40
008A42FA: push eax
008A42FB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A4300: add esp, 00000010h
008A4303: push eax
008A4304: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A4309: push eax
008A430A: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008A430F: mov edx, eax
008A4311: lea ecx, var_24
008A4314: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A4319: push eax
008A431A: call 004109DCh ; Val(arg_1)
008A431F: push ecx
008A4320: push ecx
008A4321: fstp real8 ptr [esp]
008A4324: call 00410790h ; msvbvm60.dll.__vbaStrR8
008A4329: mov edx, eax
008A432B: lea ecx, var_28
008A432E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A4333: push eax
008A4334: push 00459AECh ; ss
008A4339: push 0044A580h ; web
008A433E: push 00445984h ; bssnet
008A4343: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008A4348: lea eax, var_28
008A434B: push eax
008A434C: lea eax, var_24
008A434F: push eax
008A4350: push 00000002h
008A4352: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A4357: add esp, 0000000Ch
008A435A: lea eax, var_30
008A435D: push eax
008A435E: lea eax, var_2C
008A4361: push eax
008A4362: push 00000002h
008A4364: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A4369: add esp, 0000000Ch
008A436C: lea ecx, var_40
008A436F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A4374: mov var_04, 0000000Eh
008A437B: mov eax, [ebp+08h]
008A437E: mov eax, [eax]
008A4380: push [ebp+08h]
008A4383: call [eax+00000304h]
008A4389: push eax
008A438A: lea eax, var_2C
008A438D: push eax
008A438E: call 00410A84h ; Set (object)
008A4393: mov var_44, eax
008A4396: lea eax, var_30
008A4399: push eax
008A439A: push 00000003h
008A439C: mov eax, var_44
008A439F: mov eax, [eax]
008A43A1: push var_44
008A43A4: call [eax+40h]
008A43A7: fclex 
008A43A9: mov var_48, eax
008A43AC: cmp var_48, 00000000h
008A43B0: jnl 8A43CCh
008A43B2: push 00000040h
008A43B4: push 00440DE8h
008A43B9: push var_44
008A43BC: push var_48
008A43BF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A43C4: mov var_0000008C, eax
008A43CA: jmp 8A43D3h
008A43CC: and var_0000008C, 00000000h
008A43D3: push 00000000h
008A43D5: push 00000000h
008A43D7: push var_30
008A43DA: lea eax, var_40
008A43DD: push eax
008A43DE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A43E3: add esp, 00000010h
008A43E6: push eax
008A43E7: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A43EC: push eax
008A43ED: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008A43F2: mov edx, eax
008A43F4: lea ecx, var_24
008A43F7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A43FC: push eax
008A43FD: call 004109DCh ; Val(arg_1)
008A4402: push ecx
008A4403: push ecx
008A4404: fstp real8 ptr [esp]
008A4407: call 00410790h ; msvbvm60.dll.__vbaStrR8
008A440C: mov edx, eax
008A440E: lea ecx, var_28
008A4411: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A4416: push eax
008A4417: push 00456C9Ch ; cam
008A441C: push 0044A580h ; web
008A4421: push 00445984h ; bssnet
008A4426: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008A442B: lea eax, var_28
008A442E: push eax
008A442F: lea eax, var_24
008A4432: push eax
008A4433: push 00000002h
008A4435: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A443A: add esp, 0000000Ch
008A443D: lea eax, var_30
008A4440: push eax
008A4441: lea eax, var_2C
008A4444: push eax
008A4445: push 00000002h
008A4447: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A444C: add esp, 0000000Ch
008A444F: lea ecx, var_40
008A4452: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A4457: mov var_04, 0000000Fh
008A445E: mov eax, [ebp+08h]
008A4461: mov eax, [eax]
008A4463: push [ebp+08h]
008A4466: call [eax+00000304h]
008A446C: push eax
008A446D: lea eax, var_2C
008A4470: push eax
008A4471: call 00410A84h ; Set (object)
008A4476: mov var_44, eax
008A4479: lea eax, var_30
008A447C: push eax
008A447D: push 00000004h
008A447F: mov eax, var_44
008A4482: mov eax, [eax]
008A4484: push var_44
008A4487: call [eax+40h]
008A448A: fclex 
008A448C: mov var_48, eax
008A448F: cmp var_48, 00000000h
008A4493: jnl 8A44AFh
008A4495: push 00000040h
008A4497: push 00440DE8h
008A449C: push var_44
008A449F: push var_48
008A44A2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A44A7: mov var_00000090, eax
008A44AD: jmp 8A44B6h
008A44AF: and var_00000090, 00000000h
008A44B6: push 00000000h
008A44B8: push 00000000h
008A44BA: push var_30
008A44BD: lea eax, var_40
008A44C0: push eax
008A44C1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A44C6: add esp, 00000010h
008A44C9: push eax
008A44CA: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A44CF: push eax
008A44D0: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008A44D5: mov edx, eax
008A44D7: lea ecx, var_24
008A44DA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A44DF: push eax
008A44E0: call 004109DCh ; Val(arg_1)
008A44E5: push ecx
008A44E6: push ecx
008A44E7: fstp real8 ptr [esp]
008A44EA: call 00410790h ; msvbvm60.dll.__vbaStrR8
008A44EF: mov edx, eax
008A44F1: lea ecx, var_28
008A44F4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A44F9: push eax
008A44FA: push 0044F704h ; pass
008A44FF: push 0044A580h ; web
008A4504: push 00445984h ; bssnet
008A4509: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008A450E: lea eax, var_28
008A4511: push eax
008A4512: lea eax, var_24
008A4515: push eax
008A4516: push 00000002h
008A4518: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A451D: add esp, 0000000Ch
008A4520: lea eax, var_30
008A4523: push eax
008A4524: lea eax, var_2C
008A4527: push eax
008A4528: push 00000002h
008A452A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A452F: add esp, 0000000Ch
008A4532: lea ecx, var_40
008A4535: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A453A: mov var_04, 00000010h
008A4541: mov eax, [ebp+08h]
008A4544: mov eax, [eax]
008A4546: push [ebp+08h]
008A4549: call [eax+00000304h]
008A454F: push eax
008A4550: lea eax, var_2C
008A4553: push eax
008A4554: call 00410A84h ; Set (object)
008A4559: mov var_44, eax
008A455C: lea eax, var_30
008A455F: push eax
008A4560: push 00000005h
008A4562: mov eax, var_44
008A4565: mov eax, [eax]
008A4567: push var_44
008A456A: call [eax+40h]
008A456D: fclex 
008A456F: mov var_48, eax
008A4572: cmp var_48, 00000000h
008A4576: jnl 8A4592h
008A4578: push 00000040h
008A457A: push 00440DE8h
008A457F: push var_44
008A4582: push var_48
008A4585: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A458A: mov var_00000094, eax
008A4590: jmp 8A4599h
008A4592: and var_00000094, 00000000h
008A4599: push 00000000h
008A459B: push 00000000h
008A459D: push var_30
008A45A0: lea eax, var_40
008A45A3: push eax
008A45A4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A45A9: add esp, 00000010h
008A45AC: push eax
008A45AD: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A45B2: push eax
008A45B3: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008A45B8: mov edx, eax
008A45BA: lea ecx, var_24
008A45BD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A45C2: push eax
008A45C3: call 004109DCh ; Val(arg_1)
008A45C8: push ecx
008A45C9: push ecx
008A45CA: fstp real8 ptr [esp]
008A45CD: call 00410790h ; msvbvm60.dll.__vbaStrR8
008A45D2: mov edx, eax
008A45D4: lea ecx, var_28
008A45D7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A45DC: push eax
008A45DD: push 00459AF8h ; ddos
008A45E2: push 0044A580h ; web
008A45E7: push 00445984h ; bssnet
008A45EC: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008A45F1: lea eax, var_28
008A45F4: push eax
008A45F5: lea eax, var_24
008A45F8: push eax
008A45F9: push 00000002h
008A45FB: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A4600: add esp, 0000000Ch
008A4603: lea eax, var_30
008A4606: push eax
008A4607: lea eax, var_2C
008A460A: push eax
008A460B: push 00000002h
008A460D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A4612: add esp, 0000000Ch
008A4615: lea ecx, var_40
008A4618: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A461D: mov var_04, 00000011h
008A4624: mov eax, [ebp+08h]
008A4627: mov eax, [eax]
008A4629: push [ebp+08h]
008A462C: call [eax+00000304h]
008A4632: push eax
008A4633: lea eax, var_2C
008A4636: push eax
008A4637: call 00410A84h ; Set (object)
008A463C: mov var_44, eax
008A463F: lea eax, var_30
008A4642: push eax
008A4643: push 00000006h
008A4645: mov eax, var_44
008A4648: mov eax, [eax]
008A464A: push var_44
008A464D: call [eax+40h]
008A4650: fclex 
008A4652: mov var_48, eax
008A4655: cmp var_48, 00000000h
008A4659: jnl 8A4675h
008A465B: push 00000040h
008A465D: push 00440DE8h
008A4662: push var_44
008A4665: push var_48
008A4668: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A466D: mov var_00000098, eax
008A4673: jmp 8A467Ch
008A4675: and var_00000098, 00000000h
008A467C: push 00000000h
008A467E: push 00000000h
008A4680: push var_30
008A4683: lea eax, var_40
008A4686: push eax
008A4687: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A468C: add esp, 00000010h
008A468F: push eax
008A4690: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A4695: push eax
008A4696: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008A469B: mov edx, eax
008A469D: lea ecx, var_24
008A46A0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A46A5: push eax
008A46A6: call 004109DCh ; Val(arg_1)
008A46AB: push ecx
008A46AC: push ecx
008A46AD: fstp real8 ptr [esp]
008A46B0: call 00410790h ; msvbvm60.dll.__vbaStrR8
008A46B5: mov edx, eax
008A46B7: lea ecx, var_28
008A46BA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A46BF: push eax
008A46C0: push 00459B08h ; dload
008A46C5: push 0044A580h ; web
008A46CA: push 00445984h ; bssnet
008A46CF: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008A46D4: lea eax, var_28
008A46D7: push eax
008A46D8: lea eax, var_24
008A46DB: push eax
008A46DC: push 00000002h
008A46DE: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A46E3: add esp, 0000000Ch
008A46E6: lea eax, var_30
008A46E9: push eax
008A46EA: lea eax, var_2C
008A46ED: push eax
008A46EE: push 00000002h
008A46F0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A46F5: add esp, 0000000Ch
008A46F8: lea ecx, var_40
008A46FB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A4700: mov var_04, 00000012h
008A4707: mov eax, [ebp+08h]
008A470A: mov eax, [eax]
008A470C: push [ebp+08h]
008A470F: call [eax+00000304h]
008A4715: push eax
008A4716: lea eax, var_2C
008A4719: push eax
008A471A: call 00410A84h ; Set (object)
008A471F: mov var_44, eax
008A4722: lea eax, var_30
008A4725: push eax
008A4726: push 00000007h
008A4728: mov eax, var_44
008A472B: mov eax, [eax]
008A472D: push var_44
008A4730: call [eax+40h]
008A4733: fclex 
008A4735: mov var_48, eax
008A4738: cmp var_48, 00000000h
008A473C: jnl 8A4758h
008A473E: push 00000040h
008A4740: push 00440DE8h
008A4745: push var_44
008A4748: push var_48
008A474B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A4750: mov var_0000009C, eax
008A4756: jmp 8A475Fh
008A4758: and var_0000009C, 00000000h
008A475F: push 00000000h
008A4761: push 00000000h
008A4763: push var_30
008A4766: lea eax, var_40
008A4769: push eax
008A476A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A476F: add esp, 00000010h
008A4772: push eax
008A4773: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A4778: push eax
008A4779: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008A477E: mov edx, eax
008A4780: lea ecx, var_24
008A4783: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A4788: push eax
008A4789: call 004109DCh ; Val(arg_1)
008A478E: push ecx
008A478F: push ecx
008A4790: fstp real8 ptr [esp]
008A4793: call 00410790h ; msvbvm60.dll.__vbaStrR8
008A4798: mov edx, eax
008A479A: lea ecx, var_28
008A479D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A47A2: push eax
008A47A3: push 00459B18h ; remv
008A47A8: push 0044A580h ; web
008A47AD: push 00445984h ; bssnet
008A47B2: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008A47B7: lea eax, var_28
008A47BA: push eax
008A47BB: lea eax, var_24
008A47BE: push eax
008A47BF: push 00000002h
008A47C1: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A47C6: add esp, 0000000Ch
008A47C9: lea eax, var_30
008A47CC: push eax
008A47CD: lea eax, var_2C
008A47D0: push eax
008A47D1: push 00000002h
008A47D3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A47D8: add esp, 0000000Ch
008A47DB: lea ecx, var_40
008A47DE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A47E3: mov var_10, 00000000h
008A47EA: wait 
008A47EB: push 008A4820h
008A47F0: jmp 8A481Fh
008A47F2: lea eax, var_28
008A47F5: push eax
008A47F6: lea eax, var_24
008A47F9: push eax
008A47FA: push 00000002h
008A47FC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A4801: add esp, 0000000Ch
008A4804: lea eax, var_30
008A4807: push eax
008A4808: lea eax, var_2C
008A480B: push eax
008A480C: push 00000002h
008A480E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A4813: add esp, 0000000Ch
008A4816: lea ecx, var_40
008A4819: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A481E: ret 
End Sub

