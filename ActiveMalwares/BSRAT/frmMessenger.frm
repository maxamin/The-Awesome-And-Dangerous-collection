VERSION 5.00
Begin VB.Form frmMessenger
  Caption = "MSN Messenger"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmMessenger.frx":0
  LinkTopic = "Form1"
  ClientLeft = 225
  ClientTop = 555
  ClientWidth = 11325
  ClientHeight = 6810
  StartUpPosition = 2 'CenterScreen
  Begin XtremeSuiteControls.ListView lstContacts
    Left = 0
    Top = 0
    Width = 11295
    Height = 4815
    TabIndex = 0
  End
  Begin XtremeSuiteControls.GroupBox gbCommands
    Left = 0
    Top = 4800
    Width = 11295
    Height = 1695
    TabIndex = 1
    Begin VB.Timer tmrInfo
      Interval = 100
      Left = 6840
      Top = 0
    End
    Begin VB.TextBox txtMessage
      Left = 7320
      Top = 240
      Width = 3855
      Height = 1005
      TabIndex = 5
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
    End
    Begin VB.TextBox txtEmail
      Left = 960
      Top = 240
      Width = 2655
      Height = 285
      Text = "mail@example.com"
      TabIndex = 3
    End
    Begin XtremeSuiteControls.PushButton cmdSend
      Left = 10200
      Top = 1320
      Width = 975
      Height = 255
      TabIndex = 6
    End
    Begin XtremeSuiteControls.PushButton cmdAddContact
      Left = 240
      Top = 600
      Width = 735
      Height = 255
      TabIndex = 7
    End
    Begin XtremeSuiteControls.PushButton cmdBlockContact
      Left = 1080
      Top = 600
      Width = 735
      Height = 255
      TabIndex = 8
    End
    Begin XtremeSuiteControls.CheckBox chkMSNCmd
      Left = 3600
      Top = 600
      Width = 1695
      Height = 255
      TabIndex = 9
    End
    Begin XtremeSuiteControls.PushButton cmdSignOut
      Left = 120
      Top = 1200
      Width = 975
      Height = 375
      TabIndex = 10
    End
    Begin XtremeSuiteControls.PushButton cmdUnblockContact
      Left = 1920
      Top = 600
      Width = 735
      Height = 255
      TabIndex = 11
    End
    Begin XtremeSuiteControls.PushButton cmdChat
      Left = 2760
      Top = 600
      Width = 735
      Height = 255
      TabIndex = 12
    End
    Begin XtremeSuiteControls.CheckBox chkAllContacts
      Left = 7320
      Top = 1320
      Width = 1695
      Height = 255
      TabIndex = 14
    End
    Begin VB.Label Label1
      Caption = "Send message:"
      Left = 6120
      Top = 240
      Width = 1095
      Height = 255
      TabIndex = 4
      BackStyle = 0 'Transparent
    End
    Begin VB.Label lblMSN
      Caption = "Contact:"
      Left = 240
      Top = 240
      Width = 615
      Height = 255
      TabIndex = 2
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
  End
  Begin MSComctlLib.StatusBar sbStatus
    Left = 0
    Top = 6495
    Width = 11325
    Height = 315
    TabIndex = 13
  End
  Begin VB.Menu mnuMSNMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuMSN
      Index = 0
      Caption = "Get contacts"
      Begin VB.Menu mnuMSNGetContacts
        Index = 0
        Caption = "Current bot"
      End
      Begin VB.Menu mnuMSNGetContacts
        Index = 1
        Caption = "Selected bots"
      End
    End
    Begin VB.Menu mnuMSN
      Index = 1
      Caption = "Dump emails"
      Begin VB.Menu mnuMSNDumpEmails
        Index = 0
        Caption = "Current bot"
      End
      Begin VB.Menu mnuMSNDumpEmails
        Index = 1
        Caption = "Selected bots"
      End
    End
    Begin VB.Menu mnuMSN
      Index = 2
      Caption = "-"
    End
    Begin VB.Menu mnuMSN
      Index = 3
      Caption = "Block"
    End
    Begin VB.Menu mnuMSN
      Index = 4
      Caption = "Unblock"
    End
    Begin VB.Menu mnuMSN
      Index = 5
      Caption = "-"
    End
    Begin VB.Menu mnuMSN
      Index = 6
      Caption = "Open conversation"
    End
    Begin VB.Menu mnuMSN
      Index = 7
      Caption = "-"
    End
    Begin VB.Menu mnuMSN
      Index = 8
      Caption = "Copy"
      Begin VB.Menu mnuMSNCopy
        Index = 0
        Caption = "Entire line"
      End
      Begin VB.Menu mnuMSNCopy
        Index = 1
        Caption = "Email only"
      End
    End
    Begin VB.Menu mnuMSN
      Index = 9
      Caption = "Save to file"
      Begin VB.Menu mnuMSNSave
        Index = 0
        Caption = "Entire line"
      End
      Begin VB.Menu mnuMSNSave
        Index = 1
        Caption = "Email only"
      End
    End
  End
End

Attribute VB_Name = "frmMessenger"


Private sub tmrInfo__89B96C
0089B96C: push ebp
0089B96D: mov ebp, esp
0089B96F: sub esp, 0000000Ch
0089B972: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0089B977: mov eax, fs:[00h]
0089B97D: push eax
0089B97E: mov fs:[00000000h], esp
0089B985: mov eax, 000000D4h
0089B98A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089B98F: push ebx
0089B990: push esi
0089B991: push edi
0089B992: mov var_0C, esp
0089B995: mov var_08, 0040E0B0h
0089B99C: mov eax, [ebp+08h]
0089B99F: and eax, 00000001h
0089B9A2: mov var_04, eax
0089B9A5: mov eax, [ebp+08h]
0089B9A8: and al, FEh
0089B9AA: mov [ebp+08h], eax
0089B9AD: mov eax, [ebp+08h]
0089B9B0: mov eax, [eax]
0089B9B2: push [ebp+08h]
0089B9B5: call [eax+04h]
0089B9B8: movsx eax, word ptr [8F2430h]
0089B9BF: test eax, eax
0089B9C1: jnz 0089BCBFh
0089B9C7: cmp [008F2010h], 00000000h
0089B9CE: jnz 89B9EBh
0089B9D0: push 008F2010h
0089B9D5: push 00433984h
0089B9DA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089B9DF: mov var_000000C4, 008F2010h
0089B9E9: jmp 89B9F5h
0089B9EB: mov var_000000C4, 008F2010h
0089B9F5: push 00000000h
0089B9F7: push 00000001h
0089B9F9: push 00440E48h
0089B9FE: push 00000000h
0089BA00: push 00000018h
0089BA02: mov eax, var_000000C4
0089BA08: mov eax, [eax]
0089BA0A: mov ecx, var_000000C4
0089BA10: mov ecx, [ecx]
0089BA12: mov ecx, [ecx]
0089BA14: push eax
0089BA15: call [ecx+00000550h]
0089BA1B: push eax
0089BA1C: lea eax, var_28
0089BA1F: push eax
0089BA20: call 00410A84h ; Set (object)
0089BA25: push eax
0089BA26: lea eax, var_48
0089BA29: push eax
0089BA2A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089BA2F: add esp, 00000010h
0089BA32: push eax
0089BA33: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089BA38: push eax
0089BA39: lea eax, var_2C
0089BA3C: push eax
0089BA3D: call 00410A84h ; Set (object)
0089BA42: push eax
0089BA43: lea eax, var_58
0089BA46: push eax
0089BA47: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089BA4C: add esp, 00000010h
0089BA4F: push eax
0089BA50: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0089BA55: xor ecx, ecx
0089BA57: test eax, eax
0089BA59: setnle cl
0089BA5C: neg ecx
0089BA5E: mov var_0000009C, cx
0089BA65: lea eax, var_2C
0089BA68: push eax
0089BA69: lea eax, var_28
0089BA6C: push eax
0089BA6D: push 00000002h
0089BA6F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089BA74: add esp, 0000000Ch
0089BA77: lea eax, var_58
0089BA7A: push eax
0089BA7B: lea eax, var_48
0089BA7E: push eax
0089BA7F: push 00000002h
0089BA81: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089BA86: add esp, 0000000Ch
0089BA89: movsx eax, word ptr var_0000009C
0089BA90: test eax, eax
0089BA92: jz 0089BCBAh
0089BA98: cmp [008F2010h], 00000000h
0089BA9F: jnz 89BABCh
0089BAA1: push 008F2010h
0089BAA6: push 00433984h
0089BAAB: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089BAB0: mov var_000000C8, 008F2010h
0089BABA: jmp 89BAC6h
0089BABC: mov var_000000C8, 008F2010h
0089BAC6: push 00000000h
0089BAC8: push 00000001h
0089BACA: push 00440E48h
0089BACF: push 00000000h
0089BAD1: push 00000018h
0089BAD3: mov eax, var_000000C8
0089BAD9: mov eax, [eax]
0089BADB: mov ecx, var_000000C8
0089BAE1: mov ecx, [ecx]
0089BAE3: mov ecx, [ecx]
0089BAE5: push eax
0089BAE6: call [ecx+00000550h]
0089BAEC: push eax
0089BAED: lea eax, var_28
0089BAF0: push eax
0089BAF1: call 00410A84h ; Set (object)
0089BAF6: push eax
0089BAF7: lea eax, var_48
0089BAFA: push eax
0089BAFB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089BB00: add esp, 00000010h
0089BB03: push eax
0089BB04: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089BB09: push eax
0089BB0A: lea eax, var_2C
0089BB0D: push eax
0089BB0E: call 00410A84h ; Set (object)
0089BB13: push eax
0089BB14: lea eax, var_58
0089BB17: push eax
0089BB18: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089BB1D: add esp, 00000010h
0089BB20: push eax
0089BB21: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0089BB26: mov var_000000B0, eax
0089BB2C: mov var_000000AC, 00000001h
0089BB36: mov var_18, 00000001h
0089BB3D: lea eax, var_2C
0089BB40: push eax
0089BB41: lea eax, var_28
0089BB44: push eax
0089BB45: push 00000002h
0089BB47: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089BB4C: add esp, 0000000Ch
0089BB4F: lea eax, var_58
0089BB52: push eax
0089BB53: lea eax, var_48
0089BB56: push eax
0089BB57: push 00000002h
0089BB59: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089BB5E: add esp, 0000000Ch
0089BB61: jmp 89BB75h
0089BB63: mov eax, var_18
0089BB66: add eax, var_000000AC
0089BB6C: jo 0089C33Bh
0089BB72: mov var_18, eax
0089BB75: mov eax, var_18
0089BB78: cmp eax, var_000000B0
0089BB7E: jnle 0089BCBAh
0089BB84: mov eax, var_18
0089BB87: mov var_80, eax
0089BB8A: mov var_00000088, 00000003h
0089BB94: cmp [008F2010h], 00000000h
0089BB9B: jnz 89BBB8h
0089BB9D: push 008F2010h
0089BBA2: push 00433984h
0089BBA7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089BBAC: mov var_000000CC, 008F2010h
0089BBB6: jmp 89BBC2h
0089BBB8: mov var_000000CC, 008F2010h
0089BBC2: push 00000000h
0089BBC4: push 00000004h
0089BBC6: push 00440E58h
0089BBCB: push 00000010h
0089BBCD: pop eax
0089BBCE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089BBD3: lea esi, var_00000088
0089BBD9: mov edi, esp
0089BBDB: movsd 
0089BBDC: movsd 
0089BBDD: movsd 
0089BBDE: movsd 
0089BBDF: push 00000001h
0089BBE1: push 00000000h
0089BBE3: push 00440E48h
0089BBE8: push 00000000h
0089BBEA: push 00000018h
0089BBEC: mov eax, var_000000CC
0089BBF2: mov eax, [eax]
0089BBF4: mov ecx, var_000000CC
0089BBFA: mov ecx, [ecx]
0089BBFC: mov ecx, [ecx]
0089BBFE: push eax
0089BBFF: call [ecx+00000550h]
0089BC05: push eax
0089BC06: lea eax, var_28
0089BC09: push eax
0089BC0A: call 00410A84h ; Set (object)
0089BC0F: push eax
0089BC10: lea eax, var_48
0089BC13: push eax
0089BC14: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089BC19: add esp, 00000010h
0089BC1C: push eax
0089BC1D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089BC22: push eax
0089BC23: lea eax, var_2C
0089BC26: push eax
0089BC27: call 00410A84h ; Set (object)
0089BC2C: push eax
0089BC2D: lea eax, var_58
0089BC30: push eax
0089BC31: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089BC36: add esp, 00000020h
0089BC39: push eax
0089BC3A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089BC3F: push eax
0089BC40: lea eax, var_30
0089BC43: push eax
0089BC44: call 00410A84h ; Set (object)
0089BC49: push eax
0089BC4A: lea eax, var_68
0089BC4D: push eax
0089BC4E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089BC53: add esp, 00000010h
0089BC56: push eax
0089BC57: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0089BC5C: sub ax, FFFFh
0089BC60: neg ax
0089BC63: sbb eax, eax
0089BC65: inc eax
0089BC66: neg eax
0089BC68: mov var_0000009C, ax
0089BC6F: lea eax, var_30
0089BC72: push eax
0089BC73: lea eax, var_2C
0089BC76: push eax
0089BC77: lea eax, var_28
0089BC7A: push eax
0089BC7B: push 00000003h
0089BC7D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089BC82: add esp, 00000010h
0089BC85: lea eax, var_68
0089BC88: push eax
0089BC89: lea eax, var_58
0089BC8C: push eax
0089BC8D: lea eax, var_48
0089BC90: push eax
0089BC91: push 00000003h
0089BC93: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089BC98: add esp, 00000010h
0089BC9B: movsx eax, word ptr var_0000009C
0089BCA2: test eax, eax
0089BCA4: jz 89BCB5h
0089BCA6: mov eax, var_1C
0089BCA9: add eax, 00000001h
0089BCAC: jo 0089C33Bh
0089BCB2: mov var_1C, eax
0089BCB5: jmp 0089BB63h
0089BCBA: jmp 0089BFA5h
0089BCBF: cmp [008F2010h], 00000000h
0089BCC6: jnz 89BCE3h
0089BCC8: push 008F2010h
0089BCCD: push 00433984h
0089BCD2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089BCD7: mov var_000000D0, 008F2010h
0089BCE1: jmp 89BCEDh
0089BCE3: mov var_000000D0, 008F2010h
0089BCED: and var_80, 00000000h
0089BCF1: mov var_00000088, 00008002h
0089BCFB: push 00000000h
0089BCFD: push 0044A9C8h ; COUNT
0089BD02: push 00000000h
0089BD04: push 0044A9B0h ; lstFiltered
0089BD09: mov eax, var_000000D0
0089BD0F: mov eax, [eax]
0089BD11: mov ecx, var_000000D0
0089BD17: mov ecx, [ecx]
0089BD19: mov ecx, [ecx]
0089BD1B: push eax
0089BD1C: call [ecx+00000550h]
0089BD22: push eax
0089BD23: lea eax, var_28
0089BD26: push eax
0089BD27: call 00410A84h ; Set (object)
0089BD2C: push eax
0089BD2D: lea eax, var_48
0089BD30: push eax
0089BD31: call 00410742h ; msvbvm60.dll.__vbaLateMemCallLd
0089BD36: add esp, 00000010h
0089BD39: push eax
0089BD3A: lea eax, var_58
0089BD3D: push eax
0089BD3E: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
0089BD43: add esp, 00000010h
0089BD46: push eax
0089BD47: lea eax, var_00000088
0089BD4D: push eax
0089BD4E: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
0089BD53: mov var_0000009C, ax
0089BD5A: lea ecx, var_28
0089BD5D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0089BD62: lea eax, var_58
0089BD65: push eax
0089BD66: lea eax, var_48
0089BD69: push eax
0089BD6A: push 00000002h
0089BD6C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089BD71: add esp, 0000000Ch
0089BD74: movsx eax, word ptr var_0000009C
0089BD7B: test eax, eax
0089BD7D: jz 0089BFA5h
0089BD83: cmp [008F2010h], 00000000h
0089BD8A: jnz 89BDA7h
0089BD8C: push 008F2010h
0089BD91: push 00433984h
0089BD96: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089BD9B: mov var_000000D4, 008F2010h
0089BDA5: jmp 89BDB1h
0089BDA7: mov var_000000D4, 008F2010h
0089BDB1: push 00000000h
0089BDB3: push 00000001h
0089BDB5: push 00440E48h
0089BDBA: push 00000000h
0089BDBC: push 00000018h
0089BDBE: mov eax, var_000000D4
0089BDC4: mov eax, [eax]
0089BDC6: mov ecx, var_000000D4
0089BDCC: mov ecx, [ecx]
0089BDCE: mov ecx, [ecx]
0089BDD0: push eax
0089BDD1: call [ecx+0000054Ch]
0089BDD7: push eax
0089BDD8: lea eax, var_28
0089BDDB: push eax
0089BDDC: call 00410A84h ; Set (object)
0089BDE1: push eax
0089BDE2: lea eax, var_48
0089BDE5: push eax
0089BDE6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089BDEB: add esp, 00000010h
0089BDEE: push eax
0089BDEF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089BDF4: push eax
0089BDF5: lea eax, var_2C
0089BDF8: push eax
0089BDF9: call 00410A84h ; Set (object)
0089BDFE: push eax
0089BDFF: lea eax, var_58
0089BE02: push eax
0089BE03: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089BE08: add esp, 00000010h
0089BE0B: push eax
0089BE0C: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0089BE11: mov var_000000B8, eax
0089BE17: mov var_000000B4, 00000001h
0089BE21: mov var_18, 00000001h
0089BE28: lea eax, var_2C
0089BE2B: push eax
0089BE2C: lea eax, var_28
0089BE2F: push eax
0089BE30: push 00000002h
0089BE32: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089BE37: add esp, 0000000Ch
0089BE3A: lea eax, var_58
0089BE3D: push eax
0089BE3E: lea eax, var_48
0089BE41: push eax
0089BE42: push 00000002h
0089BE44: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089BE49: add esp, 0000000Ch
0089BE4C: jmp 89BE60h
0089BE4E: mov eax, var_18
0089BE51: add eax, var_000000B4
0089BE57: jo 0089C33Bh
0089BE5D: mov var_18, eax
0089BE60: mov eax, var_18
0089BE63: cmp eax, var_000000B8
0089BE69: jnle 0089BFA5h
0089BE6F: mov eax, var_18
0089BE72: mov var_80, eax
0089BE75: mov var_00000088, 00000003h
0089BE7F: cmp [008F2010h], 00000000h
0089BE86: jnz 89BEA3h
0089BE88: push 008F2010h
0089BE8D: push 00433984h
0089BE92: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089BE97: mov var_000000D8, 008F2010h
0089BEA1: jmp 89BEADh
0089BEA3: mov var_000000D8, 008F2010h
0089BEAD: push 00000000h
0089BEAF: push 00000004h
0089BEB1: push 00440E58h
0089BEB6: push 00000010h
0089BEB8: pop eax
0089BEB9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089BEBE: lea esi, var_00000088
0089BEC4: mov edi, esp
0089BEC6: movsd 
0089BEC7: movsd 
0089BEC8: movsd 
0089BEC9: movsd 
0089BECA: push 00000001h
0089BECC: push 00000000h
0089BECE: push 00440E48h
0089BED3: push 00000000h
0089BED5: push 00000018h
0089BED7: mov eax, var_000000D8
0089BEDD: mov eax, [eax]
0089BEDF: mov ecx, var_000000D8
0089BEE5: mov ecx, [ecx]
0089BEE7: mov ecx, [ecx]
0089BEE9: push eax
0089BEEA: call [ecx+0000054Ch]
0089BEF0: push eax
0089BEF1: lea eax, var_28
0089BEF4: push eax
0089BEF5: call 00410A84h ; Set (object)
0089BEFA: push eax
0089BEFB: lea eax, var_48
0089BEFE: push eax
0089BEFF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089BF04: add esp, 00000010h
0089BF07: push eax
0089BF08: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089BF0D: push eax
0089BF0E: lea eax, var_2C
0089BF11: push eax
0089BF12: call 00410A84h ; Set (object)
0089BF17: push eax
0089BF18: lea eax, var_58
0089BF1B: push eax
0089BF1C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089BF21: add esp, 00000020h
0089BF24: push eax
0089BF25: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089BF2A: push eax
0089BF2B: lea eax, var_30
0089BF2E: push eax
0089BF2F: call 00410A84h ; Set (object)
0089BF34: push eax
0089BF35: lea eax, var_68
0089BF38: push eax
0089BF39: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089BF3E: add esp, 00000010h
0089BF41: push eax
0089BF42: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0089BF47: sub ax, FFFFh
0089BF4B: neg ax
0089BF4E: sbb eax, eax
0089BF50: inc eax
0089BF51: neg eax
0089BF53: mov var_0000009C, ax
0089BF5A: lea eax, var_30
0089BF5D: push eax
0089BF5E: lea eax, var_2C
0089BF61: push eax
0089BF62: lea eax, var_28
0089BF65: push eax
0089BF66: push 00000003h
0089BF68: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089BF6D: add esp, 00000010h
0089BF70: lea eax, var_68
0089BF73: push eax
0089BF74: lea eax, var_58
0089BF77: push eax
0089BF78: lea eax, var_48
0089BF7B: push eax
0089BF7C: push 00000003h
0089BF7E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089BF83: add esp, 00000010h
0089BF86: movsx eax, word ptr var_0000009C
0089BF8D: test eax, eax
0089BF8F: jz 89BFA0h
0089BF91: mov eax, var_1C
0089BF94: add eax, 00000001h
0089BF97: jo 0089C33Bh
0089BF9D: mov var_1C, eax
0089BFA0: jmp 0089BE4Eh
0089BFA5: push 0044A87Ch
0089BFAA: push 00000000h
0089BFAC: push 00000003h
0089BFAE: mov eax, [ebp+08h]
0089BFB1: mov eax, [eax]
0089BFB3: push [ebp+08h]
0089BFB6: call [eax+00000350h]
0089BFBC: push eax
0089BFBD: lea eax, var_30
0089BFC0: push eax
0089BFC1: call 00410A84h ; Set (object)
0089BFC6: push eax
0089BFC7: lea eax, var_68
0089BFCA: push eax
0089BFCB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089BFD0: add esp, 00000010h
0089BFD3: push eax
0089BFD4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089BFD9: push eax
0089BFDA: lea eax, var_34
0089BFDD: push eax
0089BFDE: call 00410A84h ; Set (object)
0089BFE3: mov var_0000009C, eax
0089BFE9: mov var_70, 00000001h
0089BFF0: mov var_78, 00000002h
0089BFF7: lea eax, var_38
0089BFFA: push eax
0089BFFB: lea eax, var_78
0089BFFE: push eax
0089BFFF: mov eax, var_0000009C
0089C005: mov eax, [eax]
0089C007: push var_0000009C
0089C00D: call [eax+24h]
0089C010: fclex 
0089C012: mov var_000000A0, eax
0089C018: cmp var_000000A0, 00000000h
0089C01F: jnl 89C041h
0089C021: push 00000024h
0089C023: push 0044A87Ch
0089C028: push var_0000009C
0089C02E: push var_000000A0
0089C034: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0089C039: mov var_000000DC, eax
0089C03F: jmp 89C048h
0089C041: and var_000000DC, 00000000h
0089C048: mov eax, var_38
0089C04B: mov var_000000A4, eax
0089C051: push 004599C0h ; Total:
0089C056: push 00000000h
0089C058: push 00000001h
0089C05A: push 00440E48h
0089C05F: push 00000000h
0089C061: push 00000018h
0089C063: mov eax, [ebp+08h]
0089C066: mov eax, [eax]
0089C068: push [ebp+08h]
0089C06B: call [eax+00000328h]
0089C071: push eax
0089C072: lea eax, var_28
0089C075: push eax
0089C076: call 00410A84h ; Set (object)
0089C07B: push eax
0089C07C: lea eax, var_48
0089C07F: push eax
0089C080: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089C085: add esp, 00000010h
0089C088: push eax
0089C089: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089C08E: push eax
0089C08F: lea eax, var_2C
0089C092: push eax
0089C093: call 00410A84h ; Set (object)
0089C098: push eax
0089C099: lea eax, var_58
0089C09C: push eax
0089C09D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089C0A2: add esp, 00000010h
0089C0A5: push eax
0089C0A6: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0089C0AB: push eax
0089C0AC: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0089C0B1: mov edx, eax
0089C0B3: lea ecx, var_20
0089C0B6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089C0BB: push eax
0089C0BC: call 00410A18h ; &
0089C0C1: mov edx, eax
0089C0C3: lea ecx, var_24
0089C0C6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089C0CB: push eax
0089C0CC: mov eax, var_000000A4
0089C0D2: mov eax, [eax]
0089C0D4: push var_000000A4
0089C0DA: call [eax+00000080h]
0089C0E0: fclex 
0089C0E2: mov var_000000A8, eax
0089C0E8: cmp var_000000A8, 00000000h
0089C0EF: jnl 89C114h
0089C0F1: push 00000080h
0089C0F6: push 0044A88Ch
0089C0FB: push var_000000A4
0089C101: push var_000000A8
0089C107: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0089C10C: mov var_000000E0, eax
0089C112: jmp 89C11Bh
0089C114: and var_000000E0, 00000000h
0089C11B: lea eax, var_24
0089C11E: push eax
0089C11F: lea eax, var_20
0089C122: push eax
0089C123: push 00000002h
0089C125: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089C12A: add esp, 0000000Ch
0089C12D: lea eax, var_38
0089C130: push eax
0089C131: lea eax, var_34
0089C134: push eax
0089C135: lea eax, var_30
0089C138: push eax
0089C139: lea eax, var_2C
0089C13C: push eax
0089C13D: lea eax, var_28
0089C140: push eax
0089C141: push 00000005h
0089C143: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089C148: add esp, 00000018h
0089C14B: lea eax, var_78
0089C14E: push eax
0089C14F: lea eax, var_68
0089C152: push eax
0089C153: lea eax, var_58
0089C156: push eax
0089C157: lea eax, var_48
0089C15A: push eax
0089C15B: push 00000004h
0089C15D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089C162: add esp, 00000014h
0089C165: push 0044A87Ch
0089C16A: push 00000000h
0089C16C: push 00000003h
0089C16E: mov eax, [ebp+08h]
0089C171: mov eax, [eax]
0089C173: push [ebp+08h]
0089C176: call [eax+00000350h]
0089C17C: push eax
0089C17D: lea eax, var_28
0089C180: push eax
0089C181: call 00410A84h ; Set (object)
0089C186: push eax
0089C187: lea eax, var_48
0089C18A: push eax
0089C18B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089C190: add esp, 00000010h
0089C193: push eax
0089C194: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089C199: push eax
0089C19A: lea eax, var_2C
0089C19D: push eax
0089C19E: call 00410A84h ; Set (object)
0089C1A3: mov var_0000009C, eax
0089C1A9: mov var_50, 00000002h
0089C1B0: mov var_58, 00000002h
0089C1B7: lea eax, var_30
0089C1BA: push eax
0089C1BB: lea eax, var_58
0089C1BE: push eax
0089C1BF: mov eax, var_0000009C
0089C1C5: mov eax, [eax]
0089C1C7: push var_0000009C
0089C1CD: call [eax+24h]
0089C1D0: fclex 
0089C1D2: mov var_000000A0, eax
0089C1D8: cmp var_000000A0, 00000000h
0089C1DF: jnl 89C201h
0089C1E1: push 00000024h
0089C1E3: push 0044A87Ch
0089C1E8: push var_0000009C
0089C1EE: push var_000000A0
0089C1F4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0089C1F9: mov var_000000E4, eax
0089C1FF: jmp 89C208h
0089C201: and var_000000E4, 00000000h
0089C208: mov eax, var_30
0089C20B: mov var_000000A4, eax
0089C211: push 00457C58h ; Selected bots:
0089C216: push var_1C
0089C219: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0089C21E: mov edx, eax
0089C220: lea ecx, var_20
0089C223: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089C228: push eax
0089C229: call 00410A18h ; &
0089C22E: mov edx, eax
0089C230: lea ecx, var_24
0089C233: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089C238: push eax
0089C239: mov eax, var_000000A4
0089C23F: mov eax, [eax]
0089C241: push var_000000A4
0089C247: call [eax+00000080h]
0089C24D: fclex 
0089C24F: mov var_000000A8, eax
0089C255: cmp var_000000A8, 00000000h
0089C25C: jnl 89C281h
0089C25E: push 00000080h
0089C263: push 0044A88Ch
0089C268: push var_000000A4
0089C26E: push var_000000A8
0089C274: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0089C279: mov var_000000E8, eax
0089C27F: jmp 89C288h
0089C281: and var_000000E8, 00000000h
0089C288: lea eax, var_24
0089C28B: push eax
0089C28C: lea eax, var_20
0089C28F: push eax
0089C290: push 00000002h
0089C292: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089C297: add esp, 0000000Ch
0089C29A: lea eax, var_30
0089C29D: push eax
0089C29E: lea eax, var_2C
0089C2A1: push eax
0089C2A2: lea eax, var_28
0089C2A5: push eax
0089C2A6: push 00000003h
0089C2A8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089C2AD: add esp, 00000010h
0089C2B0: lea eax, var_58
0089C2B3: push eax
0089C2B4: lea eax, var_48
0089C2B7: push eax
0089C2B8: push 00000002h
0089C2BA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089C2BF: add esp, 0000000Ch
0089C2C2: mov var_04, 00000000h
0089C2C9: push 0089C31Ch
0089C2CE: jmp 89C31Bh
0089C2D0: lea eax, var_24
0089C2D3: push eax
0089C2D4: lea eax, var_20
0089C2D7: push eax
0089C2D8: push 00000002h
0089C2DA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089C2DF: add esp, 0000000Ch
0089C2E2: lea eax, var_38
0089C2E5: push eax
0089C2E6: lea eax, var_34
0089C2E9: push eax
0089C2EA: lea eax, var_30
0089C2ED: push eax
0089C2EE: lea eax, var_2C
0089C2F1: push eax
0089C2F2: lea eax, var_28
0089C2F5: push eax
0089C2F6: push 00000005h
0089C2F8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089C2FD: add esp, 00000018h
0089C300: lea eax, var_78
0089C303: push eax
0089C304: lea eax, var_68
0089C307: push eax
0089C308: lea eax, var_58
0089C30B: push eax
0089C30C: lea eax, var_48
0089C30F: push eax
0089C310: push 00000004h
0089C312: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089C317: add esp, 00000014h
0089C31A: ret 
End Sub

Private sub cmdSend__891A51
00891A51: push ebp
00891A52: mov ebp, esp
00891A54: sub esp, 0000000Ch
00891A57: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00891A5C: mov eax, fs:[00h]
00891A62: push eax
00891A63: mov fs:[00000000h], esp
00891A6A: mov eax, 00000158h
00891A6F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00891A74: push ebx
00891A75: push esi
00891A76: push edi
00891A77: mov var_0C, esp
00891A7A: mov var_08, 0040DEC8h
00891A81: mov eax, [ebp+08h]
00891A84: and eax, 00000001h
00891A87: mov var_04, eax
00891A8A: mov eax, [ebp+08h]
00891A8D: and al, FEh
00891A8F: mov [ebp+08h], eax
00891A92: mov eax, [ebp+08h]
00891A95: mov eax, [eax]
00891A97: push [ebp+08h]
00891A9A: call [eax+04h]
00891A9D: mov eax, [ebp+08h]
00891AA0: mov eax, [eax]
00891AA2: push [ebp+08h]
00891AA5: call [eax+00000300h]
00891AAB: push eax
00891AAC: lea eax, var_30
00891AAF: push eax
00891AB0: call 00410A84h ; Set (object)
00891AB5: mov var_000000D8, eax
00891ABB: lea eax, var_28
00891ABE: push eax
00891ABF: mov eax, var_000000D8
00891AC5: mov eax, [eax]
00891AC7: push var_000000D8
00891ACD: call [eax+000000A0h]
00891AD3: fclex 
00891AD5: mov var_000000DC, eax
00891ADB: cmp var_000000DC, 00000000h
00891AE2: jnl 891B07h
00891AE4: push 000000A0h
00891AE9: push 00440E08h
00891AEE: push var_000000D8
00891AF4: push var_000000DC
00891AFA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00891AFF: mov var_00000134, eax
00891B05: jmp 891B0Eh
00891B07: and var_00000134, 00000000h
00891B0E: push var_28
00891B11: call 0041098Eh ; Len(arg_1)
00891B16: neg eax
00891B18: sbb eax, eax
00891B1A: inc eax
00891B1B: neg eax
00891B1D: mov var_000000E0, ax
00891B24: lea ecx, var_28
00891B27: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00891B2C: lea ecx, var_30
00891B2F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00891B34: movsx eax, word ptr var_000000E0
00891B3B: test eax, eax
00891B3D: jz 00891BC5h
00891B43: mov var_70, 80020004h
00891B4A: mov var_78, 0000000Ah
00891B51: mov var_60, 80020004h
00891B58: mov var_68, 0000000Ah
00891B5F: mov var_50, 80020004h
00891B66: mov var_58, 0000000Ah
00891B6D: mov var_00000094, 004589CCh ; Please enter a message!
00891B77: mov var_0000009C, 00000008h
00891B81: lea edx, var_0000009C
00891B87: lea ecx, var_48
00891B8A: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00891B8F: lea eax, var_78
00891B92: push eax
00891B93: lea eax, var_68
00891B96: push eax
00891B97: lea eax, var_58
00891B9A: push eax
00891B9B: push 00000010h
00891B9D: lea eax, var_48
00891BA0: push eax
00891BA1: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00891BA6: lea eax, var_78
00891BA9: push eax
00891BAA: lea eax, var_68
00891BAD: push eax
00891BAE: lea eax, var_58
00891BB1: push eax
00891BB2: lea eax, var_48
00891BB5: push eax
00891BB6: push 00000004h
00891BB8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00891BBD: add esp, 00000014h
00891BC0: jmp 008931CEh
00891BC5: push 00000000h
00891BC7: push 00000000h
00891BC9: mov eax, [ebp+08h]
00891BCC: mov eax, [eax]
00891BCE: push [ebp+08h]
00891BD1: call [eax+0000033Ch]
00891BD7: push eax
00891BD8: lea eax, var_30
00891BDB: push eax
00891BDC: call 00410A84h ; Set (object)
00891BE1: push eax
00891BE2: lea eax, var_48
00891BE5: push eax
00891BE6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00891BEB: add esp, 00000010h
00891BEE: push eax
00891BEF: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00891BF4: dec eax
00891BF5: neg eax
00891BF7: sbb eax, eax
00891BF9: inc eax
00891BFA: neg eax
00891BFC: mov var_000000D8, ax
00891C03: lea ecx, var_30
00891C06: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00891C0B: lea ecx, var_48
00891C0E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00891C13: movsx eax, word ptr var_000000D8
00891C1A: test eax, eax
00891C1C: jz 00891CC5h
00891C22: mov var_70, 80020004h
00891C29: mov var_78, 0000000Ah
00891C30: mov var_60, 80020004h
00891C37: mov var_68, 0000000Ah
00891C3E: mov var_50, 80020004h
00891C45: mov var_58, 0000000Ah
00891C4C: mov var_00000094, 00459588h ; Do you really want to send the message to all selected bots?
00891C56: mov var_0000009C, 00000008h
00891C60: lea edx, var_0000009C
00891C66: lea ecx, var_48
00891C69: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00891C6E: lea eax, var_78
00891C71: push eax
00891C72: lea eax, var_68
00891C75: push eax
00891C76: lea eax, var_58
00891C79: push eax
00891C7A: push 00000034h
00891C7C: lea eax, var_48
00891C7F: push eax
00891C80: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00891C85: sub eax, 00000007h
00891C88: neg eax
00891C8A: sbb eax, eax
00891C8C: inc eax
00891C8D: neg eax
00891C8F: mov var_000000D8, ax
00891C96: lea eax, var_78
00891C99: push eax
00891C9A: lea eax, var_68
00891C9D: push eax
00891C9E: lea eax, var_58
00891CA1: push eax
00891CA2: lea eax, var_48
00891CA5: push eax
00891CA6: push 00000004h
00891CA8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00891CAD: add esp, 00000014h
00891CB0: movsx eax, word ptr var_000000D8
00891CB7: test eax, eax
00891CB9: jz 891CC0h
00891CBB: jmp 008931CEh
00891CC0: jmp 00891F23h
00891CC5: mov eax, [ebp+08h]
00891CC8: mov eax, [eax]
00891CCA: push [ebp+08h]
00891CCD: call [eax+00000304h]
00891CD3: push eax
00891CD4: lea eax, var_30
00891CD7: push eax
00891CD8: call 00410A84h ; Set (object)
00891CDD: mov var_000000D8, eax
00891CE3: lea eax, var_28
00891CE6: push eax
00891CE7: mov eax, var_000000D8
00891CED: mov eax, [eax]
00891CEF: push var_000000D8
00891CF5: call [eax+000000A0h]
00891CFB: fclex 
00891CFD: mov var_000000DC, eax
00891D03: cmp var_000000DC, 00000000h
00891D0A: jnl 891D2Fh
00891D0C: push 000000A0h
00891D11: push 00440E08h
00891D16: push var_000000D8
00891D1C: push var_000000DC
00891D22: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00891D27: mov var_00000138, eax
00891D2D: jmp 891D36h
00891D2F: and var_00000138, 00000000h
00891D36: push var_28
00891D39: call 0041098Eh ; Len(arg_1)
00891D3E: xor ecx, ecx
00891D40: cmp eax, 00000003h
00891D43: setle cl
00891D46: neg ecx
00891D48: mov var_000000E0, cx
00891D4F: lea ecx, var_28
00891D52: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00891D57: lea ecx, var_30
00891D5A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00891D5F: movsx eax, word ptr var_000000E0
00891D66: test eax, eax
00891D68: jz 00891DF0h
00891D6E: mov var_70, 80020004h
00891D75: mov var_78, 0000000Ah
00891D7C: mov var_60, 80020004h
00891D83: mov var_68, 0000000Ah
00891D8A: mov var_50, 80020004h
00891D91: mov var_58, 0000000Ah
00891D98: mov var_00000094, 00459330h ; Invalid email
00891DA2: mov var_0000009C, 00000008h
00891DAC: lea edx, var_0000009C
00891DB2: lea ecx, var_48
00891DB5: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00891DBA: lea eax, var_78
00891DBD: push eax
00891DBE: lea eax, var_68
00891DC1: push eax
00891DC2: lea eax, var_58
00891DC5: push eax
00891DC6: push 00000010h
00891DC8: lea eax, var_48
00891DCB: push eax
00891DCC: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00891DD1: lea eax, var_78
00891DD4: push eax
00891DD5: lea eax, var_68
00891DD8: push eax
00891DD9: lea eax, var_58
00891DDC: push eax
00891DDD: lea eax, var_48
00891DE0: push eax
00891DE1: push 00000004h
00891DE3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00891DE8: add esp, 00000014h
00891DEB: jmp 008931CEh
00891DF0: mov eax, [ebp+08h]
00891DF3: mov eax, [eax]
00891DF5: push [ebp+08h]
00891DF8: call [eax+00000304h]
00891DFE: push eax
00891DFF: lea eax, var_30
00891E02: push eax
00891E03: call 00410A84h ; Set (object)
00891E08: mov var_000000D8, eax
00891E0E: lea eax, var_28
00891E11: push eax
00891E12: mov eax, var_000000D8
00891E18: mov eax, [eax]
00891E1A: push var_000000D8
00891E20: call [eax+000000A0h]
00891E26: fclex 
00891E28: mov var_000000DC, eax
00891E2E: cmp var_000000DC, 00000000h
00891E35: jnl 891E5Ah
00891E37: push 000000A0h
00891E3C: push 00440E08h
00891E41: push var_000000D8
00891E47: push var_000000DC
00891E4D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00891E52: mov var_0000013C, eax
00891E58: jmp 891E61h
00891E5A: and var_0000013C, 00000000h
00891E61: mov var_70, 80020004h
00891E68: mov var_78, 0000000Ah
00891E6F: mov var_60, 80020004h
00891E76: mov var_68, 0000000Ah
00891E7D: mov var_50, 80020004h
00891E84: mov var_58, 0000000Ah
00891E8B: push 00459608h ; Do you really want to send the message to:
00891E90: push var_28
00891E93: call 00410A18h ; &
00891E98: mov edx, eax
00891E9A: lea ecx, var_2C
00891E9D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00891EA2: push eax
00891EA3: push 00459390h
00891EA8: call 00410A18h ; &
00891EAD: mov var_40, eax
00891EB0: mov var_48, 00000008h
00891EB7: lea eax, var_78
00891EBA: push eax
00891EBB: lea eax, var_68
00891EBE: push eax
00891EBF: lea eax, var_58
00891EC2: push eax
00891EC3: push 00000034h
00891EC5: lea eax, var_48
00891EC8: push eax
00891EC9: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00891ECE: sub eax, 00000007h
00891ED1: neg eax
00891ED3: sbb eax, eax
00891ED5: inc eax
00891ED6: neg eax
00891ED8: mov var_000000E0, ax
00891EDF: lea eax, var_2C
00891EE2: push eax
00891EE3: lea eax, var_28
00891EE6: push eax
00891EE7: push 00000002h
00891EE9: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00891EEE: add esp, 0000000Ch
00891EF1: lea ecx, var_30
00891EF4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00891EF9: lea eax, var_78
00891EFC: push eax
00891EFD: lea eax, var_68
00891F00: push eax
00891F01: lea eax, var_58
00891F04: push eax
00891F05: lea eax, var_48
00891F08: push eax
00891F09: push 00000004h
00891F0B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00891F10: add esp, 00000014h
00891F13: movsx eax, word ptr var_000000E0
00891F1A: test eax, eax
00891F1C: jz 891F23h
00891F1E: jmp 008931CEh
00891F23: cmp word ptr [008F2430h], FFFFh
00891F2B: jnz 00892882h
00891F31: push 00000000h
00891F33: push 00000000h
00891F35: mov eax, [ebp+08h]
00891F38: mov eax, [eax]
00891F3A: push [ebp+08h]
00891F3D: call [eax+0000033Ch]
00891F43: push eax
00891F44: lea eax, var_30
00891F47: push eax
00891F48: call 00410A84h ; Set (object)
00891F4D: push eax
00891F4E: lea eax, var_48
00891F51: push eax
00891F52: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00891F57: add esp, 00000010h
00891F5A: push eax
00891F5B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00891F60: dec eax
00891F61: neg eax
00891F63: sbb eax, eax
00891F65: inc eax
00891F66: neg eax
00891F68: mov var_000000D8, ax
00891F6F: lea ecx, var_30
00891F72: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00891F77: lea ecx, var_48
00891F7A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00891F7F: movsx eax, word ptr var_000000D8
00891F86: test eax, eax
00891F88: jz 0089260Ah
00891F8E: mov var_00000094, 00000001h
00891F98: mov var_0000009C, 00000002h
00891FA2: cmp [008F2010h], 00000000h
00891FA9: jnz 891FC6h
00891FAB: push 008F2010h
00891FB0: push 00433984h
00891FB5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00891FBA: mov var_00000140, 008F2010h
00891FC4: jmp 891FD0h
00891FC6: mov var_00000140, 008F2010h
00891FD0: push 00000000h
00891FD2: push 00000001h
00891FD4: push 00440E48h
00891FD9: push 00000000h
00891FDB: push 00000018h
00891FDD: mov eax, var_00000140
00891FE3: mov eax, [eax]
00891FE5: mov ecx, var_00000140
00891FEB: mov ecx, [ecx]
00891FED: mov ecx, [ecx]
00891FEF: push eax
00891FF0: call [ecx+0000054Ch]
00891FF6: push eax
00891FF7: lea eax, var_30
00891FFA: push eax
00891FFB: call 00410A84h ; Set (object)
00892000: push eax
00892001: lea eax, var_48
00892004: push eax
00892005: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089200A: add esp, 00000010h
0089200D: push eax
0089200E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00892013: push eax
00892014: lea eax, var_34
00892017: push eax
00892018: call 00410A84h ; Set (object)
0089201D: push eax
0089201E: lea eax, var_58
00892021: push eax
00892022: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892027: add esp, 00000010h
0089202A: push eax
0089202B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00892030: mov var_000000A4, eax
00892036: mov var_000000AC, 00000003h
00892040: mov var_000000B4, 00000001h
0089204A: mov var_000000BC, 00000002h
00892054: lea eax, var_0000009C
0089205A: push eax
0089205B: lea eax, var_000000AC
00892061: push eax
00892062: lea eax, var_000000BC
00892068: push eax
00892069: lea eax, var_00000100
0089206F: push eax
00892070: lea eax, var_000000F0
00892076: push eax
00892077: lea eax, var_24
0089207A: push eax
0089207B: call 00410A3Ch ; For
00892080: mov var_0000012C, eax
00892086: lea eax, var_34
00892089: push eax
0089208A: lea eax, var_30
0089208D: push eax
0089208E: push 00000002h
00892090: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00892095: add esp, 0000000Ch
00892098: lea eax, var_58
0089209B: push eax
0089209C: lea eax, var_48
0089209F: push eax
008920A0: push 00000002h
008920A2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008920A7: add esp, 0000000Ch
008920AA: jmp 008925F8h
008920AF: lea eax, var_24
008920B2: mov var_00000094, eax
008920B8: mov var_0000009C, 0000400Ch
008920C2: cmp [008F2010h], 00000000h
008920C9: jnz 8920E6h
008920CB: push 008F2010h
008920D0: push 00433984h
008920D5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008920DA: mov var_00000144, 008F2010h
008920E4: jmp 8920F0h
008920E6: mov var_00000144, 008F2010h
008920F0: push 00000000h
008920F2: push 00000004h
008920F4: push 00440E58h
008920F9: push 00000010h
008920FB: pop eax
008920FC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00892101: lea esi, var_0000009C
00892107: mov edi, esp
00892109: movsd 
0089210A: movsd 
0089210B: movsd 
0089210C: movsd 
0089210D: push 00000001h
0089210F: push 00000000h
00892111: push 00440E48h
00892116: push 00000000h
00892118: push 00000018h
0089211A: mov eax, var_00000144
00892120: mov eax, [eax]
00892122: mov ecx, var_00000144
00892128: mov ecx, [ecx]
0089212A: mov ecx, [ecx]
0089212C: push eax
0089212D: call [ecx+0000054Ch]
00892133: push eax
00892134: lea eax, var_30
00892137: push eax
00892138: call 00410A84h ; Set (object)
0089213D: push eax
0089213E: lea eax, var_48
00892141: push eax
00892142: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892147: add esp, 00000010h
0089214A: push eax
0089214B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00892150: push eax
00892151: lea eax, var_34
00892154: push eax
00892155: call 00410A84h ; Set (object)
0089215A: push eax
0089215B: lea eax, var_58
0089215E: push eax
0089215F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892164: add esp, 00000020h
00892167: push eax
00892168: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089216D: push eax
0089216E: lea eax, var_38
00892171: push eax
00892172: call 00410A84h ; Set (object)
00892177: push eax
00892178: lea eax, var_68
0089217B: push eax
0089217C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892181: add esp, 00000010h
00892184: push eax
00892185: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0089218A: sub ax, FFFFh
0089218E: neg ax
00892191: sbb eax, eax
00892193: inc eax
00892194: neg eax
00892196: mov var_000000D8, ax
0089219D: lea eax, var_38
008921A0: push eax
008921A1: lea eax, var_34
008921A4: push eax
008921A5: lea eax, var_30
008921A8: push eax
008921A9: push 00000003h
008921AB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008921B0: add esp, 00000010h
008921B3: lea eax, var_68
008921B6: push eax
008921B7: lea eax, var_58
008921BA: push eax
008921BB: lea eax, var_48
008921BE: push eax
008921BF: push 00000003h
008921C1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008921C6: add esp, 00000010h
008921C9: movsx eax, word ptr var_000000D8
008921D0: test eax, eax
008921D2: jz 008925DBh
008921D8: push 00000000h
008921DA: push 00000000h
008921DC: mov eax, [ebp+08h]
008921DF: mov eax, [eax]
008921E1: push [ebp+08h]
008921E4: call [eax+0000034Ch]
008921EA: push eax
008921EB: lea eax, var_30
008921EE: push eax
008921EF: call 00410A84h ; Set (object)
008921F4: push eax
008921F5: lea eax, var_48
008921F8: push eax
008921F9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008921FE: add esp, 00000010h
00892201: push eax
00892202: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00892207: dec eax
00892208: neg eax
0089220A: sbb eax, eax
0089220C: inc eax
0089220D: neg eax
0089220F: mov var_000000D8, ax
00892216: lea ecx, var_30
00892219: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0089221E: lea ecx, var_48
00892221: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00892226: movsx eax, word ptr var_000000D8
0089222D: test eax, eax
0089222F: jz 008923EFh
00892235: lea eax, var_24
00892238: mov var_00000094, eax
0089223E: mov var_0000009C, 0000400Ch
00892248: cmp [008F2010h], 00000000h
0089224F: jnz 89226Ch
00892251: push 008F2010h
00892256: push 00433984h
0089225B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00892260: mov var_00000148, 008F2010h
0089226A: jmp 892276h
0089226C: mov var_00000148, 008F2010h
00892276: push 00000000h
00892278: push 00000014h
0089227A: push 00440E58h
0089227F: push 00000010h
00892281: pop eax
00892282: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00892287: lea esi, var_0000009C
0089228D: mov edi, esp
0089228F: movsd 
00892290: movsd 
00892291: movsd 
00892292: movsd 
00892293: push 00000001h
00892295: push 00000000h
00892297: push 00440E48h
0089229C: push 00000000h
0089229E: push 00000018h
008922A0: mov eax, var_00000148
008922A6: mov eax, [eax]
008922A8: mov ecx, var_00000148
008922AE: mov ecx, [ecx]
008922B0: mov ecx, [ecx]
008922B2: push eax
008922B3: call [ecx+0000054Ch]
008922B9: push eax
008922BA: lea eax, var_30
008922BD: push eax
008922BE: call 00410A84h ; Set (object)
008922C3: push eax
008922C4: lea eax, var_48
008922C7: push eax
008922C8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008922CD: add esp, 00000010h
008922D0: push eax
008922D1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008922D6: push eax
008922D7: lea eax, var_34
008922DA: push eax
008922DB: call 00410A84h ; Set (object)
008922E0: push eax
008922E1: lea eax, var_58
008922E4: push eax
008922E5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008922EA: add esp, 00000020h
008922ED: push eax
008922EE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008922F3: push eax
008922F4: lea eax, var_38
008922F7: push eax
008922F8: call 00410A84h ; Set (object)
008922FD: push eax
008922FE: lea eax, var_68
00892301: push eax
00892302: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892307: add esp, 00000010h
0089230A: push eax
0089230B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00892310: mov edx, eax
00892312: lea ecx, var_28
00892315: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089231A: push eax
0089231B: call 004109DCh ; Val(arg_1)
00892320: fstp real8 ptr var_000000D4
00892326: push 00000000h
00892328: push 00000000h
0089232A: push 00000001h
0089232C: push 00000000h
0089232E: lea eax, var_0000008C
00892334: push eax
00892335: push 00000010h
00892337: push 00000880h
0089233C: call 00410946h ; ReDim
00892341: add esp, 0000001Ch
00892344: mov eax, [ebp+08h]
00892347: mov eax, [eax]
00892349: push [ebp+08h]
0089234C: call [eax+00000300h]
00892352: mov var_70, eax
00892355: mov var_78, 00000009h
0089235C: lea esi, var_78
0089235F: push 00000000h
00892361: push var_0000008C
00892367: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089236C: mov ecx, eax
0089236E: mov edx, esi
00892370: call 00410940h ; msvbvm60.dll.__vbaVarZero
00892375: mov edx, 0043D8A0h ; x97
0089237A: lea ecx, var_2C
0089237D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00892382: lea eax, var_0000008C
00892388: push eax
00892389: lea eax, var_2C
0089238C: push eax
0089238D: fld real8 ptr var_000000D4
00892393: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00892398: push eax
00892399: call 007A6910h
0089239E: lea eax, var_0000008C
008923A4: push eax
008923A5: push 00000000h
008923A7: call 00410934h ; Erase
008923AC: lea eax, var_2C
008923AF: push eax
008923B0: lea eax, var_28
008923B3: push eax
008923B4: push 00000002h
008923B6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008923BB: add esp, 0000000Ch
008923BE: lea eax, var_38
008923C1: push eax
008923C2: lea eax, var_34
008923C5: push eax
008923C6: lea eax, var_30
008923C9: push eax
008923CA: push 00000003h
008923CC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008923D1: add esp, 00000010h
008923D4: lea eax, var_68
008923D7: push eax
008923D8: lea eax, var_58
008923DB: push eax
008923DC: lea eax, var_48
008923DF: push eax
008923E0: push 00000003h
008923E2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008923E7: add esp, 00000010h
008923EA: jmp 008925DBh
008923EF: lea eax, var_24
008923F2: mov var_00000094, eax
008923F8: mov var_0000009C, 0000400Ch
00892402: cmp [008F2010h], 00000000h
00892409: jnz 892426h
0089240B: push 008F2010h
00892410: push 00433984h
00892415: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089241A: mov var_0000014C, 008F2010h
00892424: jmp 892430h
00892426: mov var_0000014C, 008F2010h
00892430: push 00000000h
00892432: push 00000014h
00892434: push 00440E58h
00892439: push 00000010h
0089243B: pop eax
0089243C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00892441: lea esi, var_0000009C
00892447: mov edi, esp
00892449: movsd 
0089244A: movsd 
0089244B: movsd 
0089244C: movsd 
0089244D: push 00000001h
0089244F: push 00000000h
00892451: push 00440E48h
00892456: push 00000000h
00892458: push 00000018h
0089245A: mov eax, var_0000014C
00892460: mov eax, [eax]
00892462: mov ecx, var_0000014C
00892468: mov ecx, [ecx]
0089246A: mov ecx, [ecx]
0089246C: push eax
0089246D: call [ecx+0000054Ch]
00892473: push eax
00892474: lea eax, var_30
00892477: push eax
00892478: call 00410A84h ; Set (object)
0089247D: push eax
0089247E: lea eax, var_48
00892481: push eax
00892482: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892487: add esp, 00000010h
0089248A: push eax
0089248B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00892490: push eax
00892491: lea eax, var_34
00892494: push eax
00892495: call 00410A84h ; Set (object)
0089249A: push eax
0089249B: lea eax, var_58
0089249E: push eax
0089249F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008924A4: add esp, 00000020h
008924A7: push eax
008924A8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008924AD: push eax
008924AE: lea eax, var_38
008924B1: push eax
008924B2: call 00410A84h ; Set (object)
008924B7: push eax
008924B8: lea eax, var_68
008924BB: push eax
008924BC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008924C1: add esp, 00000010h
008924C4: push eax
008924C5: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008924CA: mov edx, eax
008924CC: lea ecx, var_28
008924CF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008924D4: push eax
008924D5: call 004109DCh ; Val(arg_1)
008924DA: fstp real8 ptr var_000000D4
008924E0: push 00000000h
008924E2: push 00000001h
008924E4: push 00000001h
008924E6: push 00000000h
008924E8: lea eax, var_0000008C
008924EE: push eax
008924EF: push 00000010h
008924F1: push 00000880h
008924F6: call 00410946h ; ReDim
008924FB: add esp, 0000001Ch
008924FE: mov eax, [ebp+08h]
00892501: mov eax, [eax]
00892503: push [ebp+08h]
00892506: call [eax+00000304h]
0089250C: mov var_70, eax
0089250F: mov var_78, 00000009h
00892516: lea esi, var_78
00892519: push 00000000h
0089251B: push var_0000008C
00892521: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00892526: mov ecx, eax
00892528: mov edx, esi
0089252A: call 00410940h ; msvbvm60.dll.__vbaVarZero
0089252F: mov eax, [ebp+08h]
00892532: mov eax, [eax]
00892534: push [ebp+08h]
00892537: call [eax+00000300h]
0089253D: mov var_80, eax
00892540: mov var_00000088, 00000009h
0089254A: lea esi, var_00000088
00892550: push 00000001h
00892552: push var_0000008C
00892558: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089255D: mov ecx, eax
0089255F: mov edx, esi
00892561: call 00410940h ; msvbvm60.dll.__vbaVarZero
00892566: mov edx, 0043D894h ; x96
0089256B: lea ecx, var_2C
0089256E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00892573: lea eax, var_0000008C
00892579: push eax
0089257A: lea eax, var_2C
0089257D: push eax
0089257E: fld real8 ptr var_000000D4
00892584: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00892589: push eax
0089258A: call 007A6910h
0089258F: lea eax, var_0000008C
00892595: push eax
00892596: push 00000000h
00892598: call 00410934h ; Erase
0089259D: lea eax, var_2C
008925A0: push eax
008925A1: lea eax, var_28
008925A4: push eax
008925A5: push 00000002h
008925A7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008925AC: add esp, 0000000Ch
008925AF: lea eax, var_38
008925B2: push eax
008925B3: lea eax, var_34
008925B6: push eax
008925B7: lea eax, var_30
008925BA: push eax
008925BB: push 00000003h
008925BD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008925C2: add esp, 00000010h
008925C5: lea eax, var_68
008925C8: push eax
008925C9: lea eax, var_58
008925CC: push eax
008925CD: lea eax, var_48
008925D0: push eax
008925D1: push 00000003h
008925D3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008925D8: add esp, 00000010h
008925DB: lea eax, var_00000100
008925E1: push eax
008925E2: lea eax, var_000000F0
008925E8: push eax
008925E9: lea eax, var_24
008925EC: push eax
008925ED: call 00410A36h ; Next
008925F2: mov var_0000012C, eax
008925F8: cmp var_0000012C, 00000000h
008925FF: jnz 008920AFh
00892605: jmp 0089287Dh
0089260A: push 00000000h
0089260C: push 00000000h
0089260E: mov eax, [ebp+08h]
00892611: mov eax, [eax]
00892613: push [ebp+08h]
00892616: call [eax+0000034Ch]
0089261C: push eax
0089261D: lea eax, var_30
00892620: push eax
00892621: call 00410A84h ; Set (object)
00892626: push eax
00892627: lea eax, var_48
0089262A: push eax
0089262B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892630: add esp, 00000010h
00892633: push eax
00892634: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00892639: dec eax
0089263A: neg eax
0089263C: sbb eax, eax
0089263E: inc eax
0089263F: neg eax
00892641: mov var_000000D8, ax
00892648: lea ecx, var_30
0089264B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00892650: lea ecx, var_48
00892653: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00892658: movsx eax, word ptr var_000000D8
0089265F: test eax, eax
00892661: jz 0089275Ch
00892667: lea eax, var_28
0089266A: push eax
0089266B: mov eax, [ebp+08h]
0089266E: mov eax, [eax]
00892670: push [ebp+08h]
00892673: call [eax+000001C0h]
00892679: fclex 
0089267B: mov var_000000D8, eax
00892681: cmp var_000000D8, 00000000h
00892688: jnl 8926AAh
0089268A: push 000001C0h
0089268F: push 004485C8h
00892694: push [ebp+08h]
00892697: push var_000000D8
0089269D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008926A2: mov var_00000150, eax
008926A8: jmp 8926B1h
008926AA: and var_00000150, 00000000h
008926B1: push var_28
008926B4: call 004109DCh ; Val(arg_1)
008926B9: fstp real8 ptr var_000000D4
008926BF: push 00000000h
008926C1: push 00000000h
008926C3: push 00000001h
008926C5: push 00000000h
008926C7: lea eax, var_0000008C
008926CD: push eax
008926CE: push 00000010h
008926D0: push 00000880h
008926D5: call 00410946h ; ReDim
008926DA: add esp, 0000001Ch
008926DD: mov eax, [ebp+08h]
008926E0: mov eax, [eax]
008926E2: push [ebp+08h]
008926E5: call [eax+00000300h]
008926EB: mov var_40, eax
008926EE: mov var_48, 00000009h
008926F5: lea esi, var_48
008926F8: push 00000000h
008926FA: push var_0000008C
00892700: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00892705: mov ecx, eax
00892707: mov edx, esi
00892709: call 00410940h ; msvbvm60.dll.__vbaVarZero
0089270E: mov edx, 0043D8A0h ; x97
00892713: lea ecx, var_2C
00892716: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0089271B: lea eax, var_0000008C
00892721: push eax
00892722: lea eax, var_2C
00892725: push eax
00892726: fld real8 ptr var_000000D4
0089272C: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00892731: push eax
00892732: call 007A6910h
00892737: lea eax, var_0000008C
0089273D: push eax
0089273E: push 00000000h
00892740: call 00410934h ; Erase
00892745: lea eax, var_2C
00892748: push eax
00892749: lea eax, var_28
0089274C: push eax
0089274D: push 00000002h
0089274F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00892754: add esp, 0000000Ch
00892757: jmp 0089287Dh
0089275C: lea eax, var_28
0089275F: push eax
00892760: mov eax, [ebp+08h]
00892763: mov eax, [eax]
00892765: push [ebp+08h]
00892768: call [eax+000001C0h]
0089276E: fclex 
00892770: mov var_000000D8, eax
00892776: cmp var_000000D8, 00000000h
0089277D: jnl 89279Fh
0089277F: push 000001C0h
00892784: push 004485C8h
00892789: push [ebp+08h]
0089278C: push var_000000D8
00892792: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00892797: mov var_00000154, eax
0089279D: jmp 8927A6h
0089279F: and var_00000154, 00000000h
008927A6: push var_28
008927A9: call 004109DCh ; Val(arg_1)
008927AE: fstp real8 ptr var_000000D4
008927B4: push 00000000h
008927B6: push 00000001h
008927B8: push 00000001h
008927BA: push 00000000h
008927BC: lea eax, var_0000008C
008927C2: push eax
008927C3: push 00000010h
008927C5: push 00000880h
008927CA: call 00410946h ; ReDim
008927CF: add esp, 0000001Ch
008927D2: mov eax, [ebp+08h]
008927D5: mov eax, [eax]
008927D7: push [ebp+08h]
008927DA: call [eax+00000304h]
008927E0: mov var_40, eax
008927E3: mov var_48, 00000009h
008927EA: lea esi, var_48
008927ED: push 00000000h
008927EF: push var_0000008C
008927F5: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008927FA: mov ecx, eax
008927FC: mov edx, esi
008927FE: call 00410940h ; msvbvm60.dll.__vbaVarZero
00892803: mov eax, [ebp+08h]
00892806: mov eax, [eax]
00892808: push [ebp+08h]
0089280B: call [eax+00000300h]
00892811: mov var_50, eax
00892814: mov var_58, 00000009h
0089281B: lea esi, var_58
0089281E: push 00000001h
00892820: push var_0000008C
00892826: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089282B: mov ecx, eax
0089282D: mov edx, esi
0089282F: call 00410940h ; msvbvm60.dll.__vbaVarZero
00892834: mov edx, 0043D894h ; x96
00892839: lea ecx, var_2C
0089283C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00892841: lea eax, var_0000008C
00892847: push eax
00892848: lea eax, var_2C
0089284B: push eax
0089284C: fld real8 ptr var_000000D4
00892852: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00892857: push eax
00892858: call 007A6910h
0089285D: lea eax, var_0000008C
00892863: push eax
00892864: push 00000000h
00892866: call 00410934h ; Erase
0089286B: lea eax, var_2C
0089286E: push eax
0089286F: lea eax, var_28
00892872: push eax
00892873: push 00000002h
00892875: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089287A: add esp, 0000000Ch
0089287D: jmp 008931CEh
00892882: push 00000000h
00892884: push 00000000h
00892886: mov eax, [ebp+08h]
00892889: mov eax, [eax]
0089288B: push [ebp+08h]
0089288E: call [eax+0000033Ch]
00892894: push eax
00892895: lea eax, var_30
00892898: push eax
00892899: call 00410A84h ; Set (object)
0089289E: push eax
0089289F: lea eax, var_48
008928A2: push eax
008928A3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008928A8: add esp, 00000010h
008928AB: push eax
008928AC: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008928B1: dec eax
008928B2: neg eax
008928B4: sbb eax, eax
008928B6: inc eax
008928B7: neg eax
008928B9: mov var_000000D8, ax
008928C0: lea ecx, var_30
008928C3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008928C8: lea ecx, var_48
008928CB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008928D0: movsx eax, word ptr var_000000D8
008928D7: test eax, eax
008928D9: jz 00892F5Bh
008928DF: mov var_00000094, 00000001h
008928E9: mov var_0000009C, 00000002h
008928F3: cmp [008F2010h], 00000000h
008928FA: jnz 892917h
008928FC: push 008F2010h
00892901: push 00433984h
00892906: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089290B: mov var_00000158, 008F2010h
00892915: jmp 892921h
00892917: mov var_00000158, 008F2010h
00892921: push 00000000h
00892923: push 00000001h
00892925: push 00440E48h
0089292A: push 00000000h
0089292C: push 00000018h
0089292E: mov eax, var_00000158
00892934: mov eax, [eax]
00892936: mov ecx, var_00000158
0089293C: mov ecx, [ecx]
0089293E: mov ecx, [ecx]
00892940: push eax
00892941: call [ecx+00000550h]
00892947: push eax
00892948: lea eax, var_30
0089294B: push eax
0089294C: call 00410A84h ; Set (object)
00892951: push eax
00892952: lea eax, var_48
00892955: push eax
00892956: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089295B: add esp, 00000010h
0089295E: push eax
0089295F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00892964: push eax
00892965: lea eax, var_34
00892968: push eax
00892969: call 00410A84h ; Set (object)
0089296E: push eax
0089296F: lea eax, var_58
00892972: push eax
00892973: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892978: add esp, 00000010h
0089297B: push eax
0089297C: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00892981: mov var_000000A4, eax
00892987: mov var_000000AC, 00000003h
00892991: mov var_000000B4, 00000001h
0089299B: mov var_000000BC, 00000002h
008929A5: lea eax, var_0000009C
008929AB: push eax
008929AC: lea eax, var_000000AC
008929B2: push eax
008929B3: lea eax, var_000000BC
008929B9: push eax
008929BA: lea eax, var_00000120
008929C0: push eax
008929C1: lea eax, var_00000110
008929C7: push eax
008929C8: lea eax, var_24
008929CB: push eax
008929CC: call 00410A3Ch ; For
008929D1: mov var_00000130, eax
008929D7: lea eax, var_34
008929DA: push eax
008929DB: lea eax, var_30
008929DE: push eax
008929DF: push 00000002h
008929E1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008929E6: add esp, 0000000Ch
008929E9: lea eax, var_58
008929EC: push eax
008929ED: lea eax, var_48
008929F0: push eax
008929F1: push 00000002h
008929F3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008929F8: add esp, 0000000Ch
008929FB: jmp 00892F49h
00892A00: lea eax, var_24
00892A03: mov var_00000094, eax
00892A09: mov var_0000009C, 0000400Ch
00892A13: cmp [008F2010h], 00000000h
00892A1A: jnz 892A37h
00892A1C: push 008F2010h
00892A21: push 00433984h
00892A26: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00892A2B: mov var_0000015C, 008F2010h
00892A35: jmp 892A41h
00892A37: mov var_0000015C, 008F2010h
00892A41: push 00000000h
00892A43: push 00000004h
00892A45: push 00440E58h
00892A4A: push 00000010h
00892A4C: pop eax
00892A4D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00892A52: lea esi, var_0000009C
00892A58: mov edi, esp
00892A5A: movsd 
00892A5B: movsd 
00892A5C: movsd 
00892A5D: movsd 
00892A5E: push 00000001h
00892A60: push 00000000h
00892A62: push 00440E48h
00892A67: push 00000000h
00892A69: push 00000018h
00892A6B: mov eax, var_0000015C
00892A71: mov eax, [eax]
00892A73: mov ecx, var_0000015C
00892A79: mov ecx, [ecx]
00892A7B: mov ecx, [ecx]
00892A7D: push eax
00892A7E: call [ecx+00000550h]
00892A84: push eax
00892A85: lea eax, var_30
00892A88: push eax
00892A89: call 00410A84h ; Set (object)
00892A8E: push eax
00892A8F: lea eax, var_48
00892A92: push eax
00892A93: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892A98: add esp, 00000010h
00892A9B: push eax
00892A9C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00892AA1: push eax
00892AA2: lea eax, var_34
00892AA5: push eax
00892AA6: call 00410A84h ; Set (object)
00892AAB: push eax
00892AAC: lea eax, var_58
00892AAF: push eax
00892AB0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892AB5: add esp, 00000020h
00892AB8: push eax
00892AB9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00892ABE: push eax
00892ABF: lea eax, var_38
00892AC2: push eax
00892AC3: call 00410A84h ; Set (object)
00892AC8: push eax
00892AC9: lea eax, var_68
00892ACC: push eax
00892ACD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892AD2: add esp, 00000010h
00892AD5: push eax
00892AD6: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00892ADB: sub ax, FFFFh
00892ADF: neg ax
00892AE2: sbb eax, eax
00892AE4: inc eax
00892AE5: neg eax
00892AE7: mov var_000000D8, ax
00892AEE: lea eax, var_38
00892AF1: push eax
00892AF2: lea eax, var_34
00892AF5: push eax
00892AF6: lea eax, var_30
00892AF9: push eax
00892AFA: push 00000003h
00892AFC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00892B01: add esp, 00000010h
00892B04: lea eax, var_68
00892B07: push eax
00892B08: lea eax, var_58
00892B0B: push eax
00892B0C: lea eax, var_48
00892B0F: push eax
00892B10: push 00000003h
00892B12: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00892B17: add esp, 00000010h
00892B1A: movsx eax, word ptr var_000000D8
00892B21: test eax, eax
00892B23: jz 00892F2Ch
00892B29: push 00000000h
00892B2B: push 00000000h
00892B2D: mov eax, [ebp+08h]
00892B30: mov eax, [eax]
00892B32: push [ebp+08h]
00892B35: call [eax+0000034Ch]
00892B3B: push eax
00892B3C: lea eax, var_30
00892B3F: push eax
00892B40: call 00410A84h ; Set (object)
00892B45: push eax
00892B46: lea eax, var_48
00892B49: push eax
00892B4A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892B4F: add esp, 00000010h
00892B52: push eax
00892B53: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00892B58: dec eax
00892B59: neg eax
00892B5B: sbb eax, eax
00892B5D: inc eax
00892B5E: neg eax
00892B60: mov var_000000D8, ax
00892B67: lea ecx, var_30
00892B6A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00892B6F: lea ecx, var_48
00892B72: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00892B77: movsx eax, word ptr var_000000D8
00892B7E: test eax, eax
00892B80: jz 00892D40h
00892B86: lea eax, var_24
00892B89: mov var_00000094, eax
00892B8F: mov var_0000009C, 0000400Ch
00892B99: cmp [008F2010h], 00000000h
00892BA0: jnz 892BBDh
00892BA2: push 008F2010h
00892BA7: push 00433984h
00892BAC: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00892BB1: mov var_00000160, 008F2010h
00892BBB: jmp 892BC7h
00892BBD: mov var_00000160, 008F2010h
00892BC7: push 00000000h
00892BC9: push 00000014h
00892BCB: push 00440E58h
00892BD0: push 00000010h
00892BD2: pop eax
00892BD3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00892BD8: lea esi, var_0000009C
00892BDE: mov edi, esp
00892BE0: movsd 
00892BE1: movsd 
00892BE2: movsd 
00892BE3: movsd 
00892BE4: push 00000001h
00892BE6: push 00000000h
00892BE8: push 00440E48h
00892BED: push 00000000h
00892BEF: push 00000018h
00892BF1: mov eax, var_00000160
00892BF7: mov eax, [eax]
00892BF9: mov ecx, var_00000160
00892BFF: mov ecx, [ecx]
00892C01: mov ecx, [ecx]
00892C03: push eax
00892C04: call [ecx+00000550h]
00892C0A: push eax
00892C0B: lea eax, var_30
00892C0E: push eax
00892C0F: call 00410A84h ; Set (object)
00892C14: push eax
00892C15: lea eax, var_48
00892C18: push eax
00892C19: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892C1E: add esp, 00000010h
00892C21: push eax
00892C22: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00892C27: push eax
00892C28: lea eax, var_34
00892C2B: push eax
00892C2C: call 00410A84h ; Set (object)
00892C31: push eax
00892C32: lea eax, var_58
00892C35: push eax
00892C36: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892C3B: add esp, 00000020h
00892C3E: push eax
00892C3F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00892C44: push eax
00892C45: lea eax, var_38
00892C48: push eax
00892C49: call 00410A84h ; Set (object)
00892C4E: push eax
00892C4F: lea eax, var_68
00892C52: push eax
00892C53: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892C58: add esp, 00000010h
00892C5B: push eax
00892C5C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00892C61: mov edx, eax
00892C63: lea ecx, var_28
00892C66: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00892C6B: push eax
00892C6C: call 004109DCh ; Val(arg_1)
00892C71: fstp real8 ptr var_000000D4
00892C77: push 00000000h
00892C79: push 00000000h
00892C7B: push 00000001h
00892C7D: push 00000000h
00892C7F: lea eax, var_0000008C
00892C85: push eax
00892C86: push 00000010h
00892C88: push 00000880h
00892C8D: call 00410946h ; ReDim
00892C92: add esp, 0000001Ch
00892C95: mov eax, [ebp+08h]
00892C98: mov eax, [eax]
00892C9A: push [ebp+08h]
00892C9D: call [eax+00000300h]
00892CA3: mov var_70, eax
00892CA6: mov var_78, 00000009h
00892CAD: lea esi, var_78
00892CB0: push 00000000h
00892CB2: push var_0000008C
00892CB8: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00892CBD: mov ecx, eax
00892CBF: mov edx, esi
00892CC1: call 00410940h ; msvbvm60.dll.__vbaVarZero
00892CC6: mov edx, 0043D8A0h ; x97
00892CCB: lea ecx, var_2C
00892CCE: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00892CD3: lea eax, var_0000008C
00892CD9: push eax
00892CDA: lea eax, var_2C
00892CDD: push eax
00892CDE: fld real8 ptr var_000000D4
00892CE4: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00892CE9: push eax
00892CEA: call 007A6910h
00892CEF: lea eax, var_0000008C
00892CF5: push eax
00892CF6: push 00000000h
00892CF8: call 00410934h ; Erase
00892CFD: lea eax, var_2C
00892D00: push eax
00892D01: lea eax, var_28
00892D04: push eax
00892D05: push 00000002h
00892D07: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00892D0C: add esp, 0000000Ch
00892D0F: lea eax, var_38
00892D12: push eax
00892D13: lea eax, var_34
00892D16: push eax
00892D17: lea eax, var_30
00892D1A: push eax
00892D1B: push 00000003h
00892D1D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00892D22: add esp, 00000010h
00892D25: lea eax, var_68
00892D28: push eax
00892D29: lea eax, var_58
00892D2C: push eax
00892D2D: lea eax, var_48
00892D30: push eax
00892D31: push 00000003h
00892D33: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00892D38: add esp, 00000010h
00892D3B: jmp 00892F2Ch
00892D40: lea eax, var_24
00892D43: mov var_00000094, eax
00892D49: mov var_0000009C, 0000400Ch
00892D53: cmp [008F2010h], 00000000h
00892D5A: jnz 892D77h
00892D5C: push 008F2010h
00892D61: push 00433984h
00892D66: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00892D6B: mov var_00000164, 008F2010h
00892D75: jmp 892D81h
00892D77: mov var_00000164, 008F2010h
00892D81: push 00000000h
00892D83: push 00000014h
00892D85: push 00440E58h
00892D8A: push 00000010h
00892D8C: pop eax
00892D8D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00892D92: lea esi, var_0000009C
00892D98: mov edi, esp
00892D9A: movsd 
00892D9B: movsd 
00892D9C: movsd 
00892D9D: movsd 
00892D9E: push 00000001h
00892DA0: push 00000000h
00892DA2: push 00440E48h
00892DA7: push 00000000h
00892DA9: push 00000018h
00892DAB: mov eax, var_00000164
00892DB1: mov eax, [eax]
00892DB3: mov ecx, var_00000164
00892DB9: mov ecx, [ecx]
00892DBB: mov ecx, [ecx]
00892DBD: push eax
00892DBE: call [ecx+00000550h]
00892DC4: push eax
00892DC5: lea eax, var_30
00892DC8: push eax
00892DC9: call 00410A84h ; Set (object)
00892DCE: push eax
00892DCF: lea eax, var_48
00892DD2: push eax
00892DD3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892DD8: add esp, 00000010h
00892DDB: push eax
00892DDC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00892DE1: push eax
00892DE2: lea eax, var_34
00892DE5: push eax
00892DE6: call 00410A84h ; Set (object)
00892DEB: push eax
00892DEC: lea eax, var_58
00892DEF: push eax
00892DF0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892DF5: add esp, 00000020h
00892DF8: push eax
00892DF9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00892DFE: push eax
00892DFF: lea eax, var_38
00892E02: push eax
00892E03: call 00410A84h ; Set (object)
00892E08: push eax
00892E09: lea eax, var_68
00892E0C: push eax
00892E0D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892E12: add esp, 00000010h
00892E15: push eax
00892E16: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00892E1B: mov edx, eax
00892E1D: lea ecx, var_28
00892E20: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00892E25: push eax
00892E26: call 004109DCh ; Val(arg_1)
00892E2B: fstp real8 ptr var_000000D4
00892E31: push 00000000h
00892E33: push 00000001h
00892E35: push 00000001h
00892E37: push 00000000h
00892E39: lea eax, var_0000008C
00892E3F: push eax
00892E40: push 00000010h
00892E42: push 00000880h
00892E47: call 00410946h ; ReDim
00892E4C: add esp, 0000001Ch
00892E4F: mov eax, [ebp+08h]
00892E52: mov eax, [eax]
00892E54: push [ebp+08h]
00892E57: call [eax+00000304h]
00892E5D: mov var_70, eax
00892E60: mov var_78, 00000009h
00892E67: lea esi, var_78
00892E6A: push 00000000h
00892E6C: push var_0000008C
00892E72: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00892E77: mov ecx, eax
00892E79: mov edx, esi
00892E7B: call 00410940h ; msvbvm60.dll.__vbaVarZero
00892E80: mov eax, [ebp+08h]
00892E83: mov eax, [eax]
00892E85: push [ebp+08h]
00892E88: call [eax+00000300h]
00892E8E: mov var_80, eax
00892E91: mov var_00000088, 00000009h
00892E9B: lea esi, var_00000088
00892EA1: push 00000001h
00892EA3: push var_0000008C
00892EA9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00892EAE: mov ecx, eax
00892EB0: mov edx, esi
00892EB2: call 00410940h ; msvbvm60.dll.__vbaVarZero
00892EB7: mov edx, 0043D894h ; x96
00892EBC: lea ecx, var_2C
00892EBF: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00892EC4: lea eax, var_0000008C
00892ECA: push eax
00892ECB: lea eax, var_2C
00892ECE: push eax
00892ECF: fld real8 ptr var_000000D4
00892ED5: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00892EDA: push eax
00892EDB: call 007A6910h
00892EE0: lea eax, var_0000008C
00892EE6: push eax
00892EE7: push 00000000h
00892EE9: call 00410934h ; Erase
00892EEE: lea eax, var_2C
00892EF1: push eax
00892EF2: lea eax, var_28
00892EF5: push eax
00892EF6: push 00000002h
00892EF8: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00892EFD: add esp, 0000000Ch
00892F00: lea eax, var_38
00892F03: push eax
00892F04: lea eax, var_34
00892F07: push eax
00892F08: lea eax, var_30
00892F0B: push eax
00892F0C: push 00000003h
00892F0E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00892F13: add esp, 00000010h
00892F16: lea eax, var_68
00892F19: push eax
00892F1A: lea eax, var_58
00892F1D: push eax
00892F1E: lea eax, var_48
00892F21: push eax
00892F22: push 00000003h
00892F24: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00892F29: add esp, 00000010h
00892F2C: lea eax, var_00000120
00892F32: push eax
00892F33: lea eax, var_00000110
00892F39: push eax
00892F3A: lea eax, var_24
00892F3D: push eax
00892F3E: call 00410A36h ; Next
00892F43: mov var_00000130, eax
00892F49: cmp var_00000130, 00000000h
00892F50: jnz 00892A00h
00892F56: jmp 008931CEh
00892F5B: push 00000000h
00892F5D: push 00000000h
00892F5F: mov eax, [ebp+08h]
00892F62: mov eax, [eax]
00892F64: push [ebp+08h]
00892F67: call [eax+0000034Ch]
00892F6D: push eax
00892F6E: lea eax, var_30
00892F71: push eax
00892F72: call 00410A84h ; Set (object)
00892F77: push eax
00892F78: lea eax, var_48
00892F7B: push eax
00892F7C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00892F81: add esp, 00000010h
00892F84: push eax
00892F85: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00892F8A: dec eax
00892F8B: neg eax
00892F8D: sbb eax, eax
00892F8F: inc eax
00892F90: neg eax
00892F92: mov var_000000D8, ax
00892F99: lea ecx, var_30
00892F9C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00892FA1: lea ecx, var_48
00892FA4: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00892FA9: movsx eax, word ptr var_000000D8
00892FB0: test eax, eax
00892FB2: jz 008930ADh
00892FB8: lea eax, var_28
00892FBB: push eax
00892FBC: mov eax, [ebp+08h]
00892FBF: mov eax, [eax]
00892FC1: push [ebp+08h]
00892FC4: call [eax+000001C0h]
00892FCA: fclex 
00892FCC: mov var_000000D8, eax
00892FD2: cmp var_000000D8, 00000000h
00892FD9: jnl 892FFBh
00892FDB: push 000001C0h
00892FE0: push 004485C8h
00892FE5: push [ebp+08h]
00892FE8: push var_000000D8
00892FEE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00892FF3: mov var_00000168, eax
00892FF9: jmp 893002h
00892FFB: and var_00000168, 00000000h
00893002: push var_28
00893005: call 004109DCh ; Val(arg_1)
0089300A: fstp real8 ptr var_000000D4
00893010: push 00000000h
00893012: push 00000000h
00893014: push 00000001h
00893016: push 00000000h
00893018: lea eax, var_0000008C
0089301E: push eax
0089301F: push 00000010h
00893021: push 00000880h
00893026: call 00410946h ; ReDim
0089302B: add esp, 0000001Ch
0089302E: mov eax, [ebp+08h]
00893031: mov eax, [eax]
00893033: push [ebp+08h]
00893036: call [eax+00000300h]
0089303C: mov var_40, eax
0089303F: mov var_48, 00000009h
00893046: lea esi, var_48
00893049: push 00000000h
0089304B: push var_0000008C
00893051: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00893056: mov ecx, eax
00893058: mov edx, esi
0089305A: call 00410940h ; msvbvm60.dll.__vbaVarZero
0089305F: mov edx, 0043D8A0h ; x97
00893064: lea ecx, var_2C
00893067: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0089306C: lea eax, var_0000008C
00893072: push eax
00893073: lea eax, var_2C
00893076: push eax
00893077: fld real8 ptr var_000000D4
0089307D: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00893082: push eax
00893083: call 007A6910h
00893088: lea eax, var_0000008C
0089308E: push eax
0089308F: push 00000000h
00893091: call 00410934h ; Erase
00893096: lea eax, var_2C
00893099: push eax
0089309A: lea eax, var_28
0089309D: push eax
0089309E: push 00000002h
008930A0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008930A5: add esp, 0000000Ch
008930A8: jmp 008931CEh
008930AD: lea eax, var_28
008930B0: push eax
008930B1: mov eax, [ebp+08h]
008930B4: mov eax, [eax]
008930B6: push [ebp+08h]
008930B9: call [eax+000001C0h]
008930BF: fclex 
008930C1: mov var_000000D8, eax
008930C7: cmp var_000000D8, 00000000h
008930CE: jnl 8930F0h
008930D0: push 000001C0h
008930D5: push 004485C8h
008930DA: push [ebp+08h]
008930DD: push var_000000D8
008930E3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008930E8: mov var_0000016C, eax
008930EE: jmp 8930F7h
008930F0: and var_0000016C, 00000000h
008930F7: push var_28
008930FA: call 004109DCh ; Val(arg_1)
008930FF: fstp real8 ptr var_000000D4
00893105: push 00000000h
00893107: push 00000001h
00893109: push 00000001h
0089310B: push 00000000h
0089310D: lea eax, var_0000008C
00893113: push eax
00893114: push 00000010h
00893116: push 00000880h
0089311B: call 00410946h ; ReDim
00893120: add esp, 0000001Ch
00893123: mov eax, [ebp+08h]
00893126: mov eax, [eax]
00893128: push [ebp+08h]
0089312B: call [eax+00000304h]
00893131: mov var_40, eax
00893134: mov var_48, 00000009h
0089313B: lea esi, var_48
0089313E: push 00000000h
00893140: push var_0000008C
00893146: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089314B: mov ecx, eax
0089314D: mov edx, esi
0089314F: call 00410940h ; msvbvm60.dll.__vbaVarZero
00893154: mov eax, [ebp+08h]
00893157: mov eax, [eax]
00893159: push [ebp+08h]
0089315C: call [eax+00000300h]
00893162: mov var_50, eax
00893165: mov var_58, 00000009h
0089316C: lea esi, var_58
0089316F: push 00000001h
00893171: push var_0000008C
00893177: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089317C: mov ecx, eax
0089317E: mov edx, esi
00893180: call 00410940h ; msvbvm60.dll.__vbaVarZero
00893185: mov edx, 0043D894h ; x96
0089318A: lea ecx, var_2C
0089318D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00893192: lea eax, var_0000008C
00893198: push eax
00893199: lea eax, var_2C
0089319C: push eax
0089319D: fld real8 ptr var_000000D4
008931A3: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008931A8: push eax
008931A9: call 007A6910h
008931AE: lea eax, var_0000008C
008931B4: push eax
008931B5: push 00000000h
008931B7: call 00410934h ; Erase
008931BC: lea eax, var_2C
008931BF: push eax
008931C0: lea eax, var_28
008931C3: push eax
008931C4: push 00000002h
008931C6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008931CB: add esp, 0000000Ch
008931CE: mov var_04, 00000000h
008931D5: wait 
008931D6: push 00893264h
008931DB: jmp 893235h
008931DD: lea eax, var_2C
008931E0: push eax
008931E1: lea eax, var_28
008931E4: push eax
008931E5: push 00000002h
008931E7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008931EC: add esp, 0000000Ch
008931EF: lea eax, var_38
008931F2: push eax
008931F3: lea eax, var_34
008931F6: push eax
008931F7: lea eax, var_30
008931FA: push eax
008931FB: push 00000003h
008931FD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00893202: add esp, 00000010h
00893205: lea eax, var_00000088
0089320B: push eax
0089320C: lea eax, var_78
0089320F: push eax
00893210: lea eax, var_68
00893213: push eax
00893214: lea eax, var_58
00893217: push eax
00893218: lea eax, var_48
0089321B: push eax
0089321C: push 00000005h
0089321E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00893223: add esp, 00000018h
00893226: lea eax, var_0000008C
0089322C: push eax
0089322D: push 00000000h
0089322F: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
00893234: ret 
End Sub

Private sub cmdBlockContact__88FDF5
0088FDF5: push ebp
0088FDF6: mov ebp, esp
0088FDF8: sub esp, 0000000Ch
0088FDFB: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0088FE00: mov eax, fs:[00h]
0088FE06: push eax
0088FE07: mov fs:[00000000h], esp
0088FE0E: mov eax, 00000134h
0088FE13: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088FE18: push ebx
0088FE19: push esi
0088FE1A: push edi
0088FE1B: mov var_0C, esp
0088FE1E: mov var_08, 0040DEA8h
0088FE25: mov eax, [ebp+08h]
0088FE28: and eax, 00000001h
0088FE2B: mov var_04, eax
0088FE2E: mov eax, [ebp+08h]
0088FE31: and al, FEh
0088FE33: mov [ebp+08h], eax
0088FE36: mov eax, [ebp+08h]
0088FE39: mov eax, [eax]
0088FE3B: push [ebp+08h]
0088FE3E: call [eax+04h]
0088FE41: mov eax, [ebp+08h]
0088FE44: mov eax, [eax]
0088FE46: push [ebp+08h]
0088FE49: call [eax+00000304h]
0088FE4F: push eax
0088FE50: lea eax, var_30
0088FE53: push eax
0088FE54: call 00410A84h ; Set (object)
0088FE59: mov var_000000C8, eax
0088FE5F: lea eax, var_28
0088FE62: push eax
0088FE63: mov eax, var_000000C8
0088FE69: mov eax, [eax]
0088FE6B: push var_000000C8
0088FE71: call [eax+000000A0h]
0088FE77: fclex 
0088FE79: mov var_000000CC, eax
0088FE7F: cmp var_000000CC, 00000000h
0088FE86: jnl 88FEABh
0088FE88: push 000000A0h
0088FE8D: push 00440E08h
0088FE92: push var_000000C8
0088FE98: push var_000000CC
0088FE9E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088FEA3: mov var_00000124, eax
0088FEA9: jmp 88FEB2h
0088FEAB: and var_00000124, 00000000h
0088FEB2: push var_28
0088FEB5: call 0041098Eh ; Len(arg_1)
0088FEBA: xor ecx, ecx
0088FEBC: cmp eax, 00000003h
0088FEBF: setle cl
0088FEC2: neg ecx
0088FEC4: mov var_000000D0, cx
0088FECB: lea ecx, var_28
0088FECE: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0088FED3: lea ecx, var_30
0088FED6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0088FEDB: movsx eax, word ptr var_000000D0
0088FEE2: test eax, eax
0088FEE4: jz 0088FF6Ch
0088FEEA: mov var_70, 80020004h
0088FEF1: mov var_78, 0000000Ah
0088FEF8: mov var_60, 80020004h
0088FEFF: mov var_68, 0000000Ah
0088FF06: mov var_50, 80020004h
0088FF0D: mov var_58, 0000000Ah
0088FF14: mov var_00000084, 00459330h ; Invalid email
0088FF1E: mov var_0000008C, 00000008h
0088FF28: lea edx, var_0000008C
0088FF2E: lea ecx, var_48
0088FF31: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0088FF36: lea eax, var_78
0088FF39: push eax
0088FF3A: lea eax, var_68
0088FF3D: push eax
0088FF3E: lea eax, var_58
0088FF41: push eax
0088FF42: push 00000010h
0088FF44: lea eax, var_48
0088FF47: push eax
0088FF48: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0088FF4D: lea eax, var_78
0088FF50: push eax
0088FF51: lea eax, var_68
0088FF54: push eax
0088FF55: lea eax, var_58
0088FF58: push eax
0088FF59: lea eax, var_48
0088FF5C: push eax
0088FF5D: push 00000004h
0088FF5F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088FF64: add esp, 00000014h
0088FF67: jmp 00890B78h
0088FF6C: mov eax, [ebp+08h]
0088FF6F: mov eax, [eax]
0088FF71: push [ebp+08h]
0088FF74: call [eax+00000304h]
0088FF7A: push eax
0088FF7B: lea eax, var_30
0088FF7E: push eax
0088FF7F: call 00410A84h ; Set (object)
0088FF84: mov var_000000C8, eax
0088FF8A: lea eax, var_28
0088FF8D: push eax
0088FF8E: mov eax, var_000000C8
0088FF94: mov eax, [eax]
0088FF96: push var_000000C8
0088FF9C: call [eax+000000A0h]
0088FFA2: fclex 
0088FFA4: mov var_000000CC, eax
0088FFAA: cmp var_000000CC, 00000000h
0088FFB1: jnl 88FFD6h
0088FFB3: push 000000A0h
0088FFB8: push 00440E08h
0088FFBD: push var_000000C8
0088FFC3: push var_000000CC
0088FFC9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088FFCE: mov var_00000128, eax
0088FFD4: jmp 88FFDDh
0088FFD6: and var_00000128, 00000000h
0088FFDD: mov var_70, 80020004h
0088FFE4: mov var_78, 0000000Ah
0088FFEB: mov var_60, 80020004h
0088FFF2: mov var_68, 0000000Ah
0088FFF9: mov var_50, 80020004h
00890000: mov var_58, 0000000Ah
00890007: push 00459350h ; Do you really want to block:
0089000C: push var_28
0089000F: call 00410A18h ; &
00890014: mov edx, eax
00890016: lea ecx, var_2C
00890019: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089001E: push eax
0089001F: push 00459390h
00890024: call 00410A18h ; &
00890029: mov var_40, eax
0089002C: mov var_48, 00000008h
00890033: lea eax, var_78
00890036: push eax
00890037: lea eax, var_68
0089003A: push eax
0089003B: lea eax, var_58
0089003E: push eax
0089003F: push 00000034h
00890041: lea eax, var_48
00890044: push eax
00890045: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0089004A: sub eax, 00000007h
0089004D: neg eax
0089004F: sbb eax, eax
00890051: inc eax
00890052: neg eax
00890054: mov var_000000D0, ax
0089005B: lea eax, var_2C
0089005E: push eax
0089005F: lea eax, var_28
00890062: push eax
00890063: push 00000002h
00890065: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089006A: add esp, 0000000Ch
0089006D: lea ecx, var_30
00890070: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00890075: lea eax, var_78
00890078: push eax
00890079: lea eax, var_68
0089007C: push eax
0089007D: lea eax, var_58
00890080: push eax
00890081: lea eax, var_48
00890084: push eax
00890085: push 00000004h
00890087: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089008C: add esp, 00000014h
0089008F: movsx eax, word ptr var_000000D0
00890096: test eax, eax
00890098: jz 89009Fh
0089009A: jmp 00890B78h
0089009F: cmp word ptr [008F2430h], FFFFh
008900A7: jnz 00890615h
008900AD: push 00000000h
008900AF: push 00000000h
008900B1: mov eax, [ebp+08h]
008900B4: mov eax, [eax]
008900B6: push [ebp+08h]
008900B9: call [eax+0000033Ch]
008900BF: push eax
008900C0: lea eax, var_30
008900C3: push eax
008900C4: call 00410A84h ; Set (object)
008900C9: push eax
008900CA: lea eax, var_48
008900CD: push eax
008900CE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008900D3: add esp, 00000010h
008900D6: push eax
008900D7: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008900DC: dec eax
008900DD: neg eax
008900DF: sbb eax, eax
008900E1: inc eax
008900E2: neg eax
008900E4: mov var_000000C8, ax
008900EB: lea ecx, var_30
008900EE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008900F3: lea ecx, var_48
008900F6: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008900FB: movsx eax, word ptr var_000000C8
00890102: test eax, eax
00890104: jz 0089052Ch
0089010A: mov var_00000084, 00000001h
00890114: mov var_0000008C, 00000002h
0089011E: cmp [008F2010h], 00000000h
00890125: jnz 890142h
00890127: push 008F2010h
0089012C: push 00433984h
00890131: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00890136: mov var_0000012C, 008F2010h
00890140: jmp 89014Ch
00890142: mov var_0000012C, 008F2010h
0089014C: push 00000000h
0089014E: push 00000001h
00890150: push 00440E48h
00890155: push 00000000h
00890157: push 00000018h
00890159: mov eax, var_0000012C
0089015F: mov eax, [eax]
00890161: mov ecx, var_0000012C
00890167: mov ecx, [ecx]
00890169: mov ecx, [ecx]
0089016B: push eax
0089016C: call [ecx+0000054Ch]
00890172: push eax
00890173: lea eax, var_30
00890176: push eax
00890177: call 00410A84h ; Set (object)
0089017C: push eax
0089017D: lea eax, var_48
00890180: push eax
00890181: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00890186: add esp, 00000010h
00890189: push eax
0089018A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089018F: push eax
00890190: lea eax, var_34
00890193: push eax
00890194: call 00410A84h ; Set (object)
00890199: push eax
0089019A: lea eax, var_58
0089019D: push eax
0089019E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008901A3: add esp, 00000010h
008901A6: push eax
008901A7: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008901AC: mov var_00000094, eax
008901B2: mov var_0000009C, 00000003h
008901BC: mov var_000000A4, 00000001h
008901C6: mov var_000000AC, 00000002h
008901D0: lea eax, var_0000008C
008901D6: push eax
008901D7: lea eax, var_0000009C
008901DD: push eax
008901DE: lea eax, var_000000AC
008901E4: push eax
008901E5: lea eax, var_000000F0
008901EB: push eax
008901EC: lea eax, var_000000E0
008901F2: push eax
008901F3: lea eax, var_24
008901F6: push eax
008901F7: call 00410A3Ch ; For
008901FC: mov var_0000011C, eax
00890202: lea eax, var_34
00890205: push eax
00890206: lea eax, var_30
00890209: push eax
0089020A: push 00000002h
0089020C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00890211: add esp, 0000000Ch
00890214: lea eax, var_58
00890217: push eax
00890218: lea eax, var_48
0089021B: push eax
0089021C: push 00000002h
0089021E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00890223: add esp, 0000000Ch
00890226: jmp 0089051Ah
0089022B: lea eax, var_24
0089022E: mov var_00000084, eax
00890234: mov var_0000008C, 0000400Ch
0089023E: cmp [008F2010h], 00000000h
00890245: jnz 890262h
00890247: push 008F2010h
0089024C: push 00433984h
00890251: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00890256: mov var_00000130, 008F2010h
00890260: jmp 89026Ch
00890262: mov var_00000130, 008F2010h
0089026C: push 00000000h
0089026E: push 00000004h
00890270: push 00440E58h
00890275: push 00000010h
00890277: pop eax
00890278: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089027D: lea esi, var_0000008C
00890283: mov edi, esp
00890285: movsd 
00890286: movsd 
00890287: movsd 
00890288: movsd 
00890289: push 00000001h
0089028B: push 00000000h
0089028D: push 00440E48h
00890292: push 00000000h
00890294: push 00000018h
00890296: mov eax, var_00000130
0089029C: mov eax, [eax]
0089029E: mov ecx, var_00000130
008902A4: mov ecx, [ecx]
008902A6: mov ecx, [ecx]
008902A8: push eax
008902A9: call [ecx+0000054Ch]
008902AF: push eax
008902B0: lea eax, var_30
008902B3: push eax
008902B4: call 00410A84h ; Set (object)
008902B9: push eax
008902BA: lea eax, var_48
008902BD: push eax
008902BE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008902C3: add esp, 00000010h
008902C6: push eax
008902C7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008902CC: push eax
008902CD: lea eax, var_34
008902D0: push eax
008902D1: call 00410A84h ; Set (object)
008902D6: push eax
008902D7: lea eax, var_58
008902DA: push eax
008902DB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008902E0: add esp, 00000020h
008902E3: push eax
008902E4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008902E9: push eax
008902EA: lea eax, var_38
008902ED: push eax
008902EE: call 00410A84h ; Set (object)
008902F3: push eax
008902F4: lea eax, var_68
008902F7: push eax
008902F8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008902FD: add esp, 00000010h
00890300: push eax
00890301: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00890306: sub ax, FFFFh
0089030A: neg ax
0089030D: sbb eax, eax
0089030F: inc eax
00890310: neg eax
00890312: mov var_000000C8, ax
00890319: lea eax, var_38
0089031C: push eax
0089031D: lea eax, var_34
00890320: push eax
00890321: lea eax, var_30
00890324: push eax
00890325: push 00000003h
00890327: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089032C: add esp, 00000010h
0089032F: lea eax, var_68
00890332: push eax
00890333: lea eax, var_58
00890336: push eax
00890337: lea eax, var_48
0089033A: push eax
0089033B: push 00000003h
0089033D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00890342: add esp, 00000010h
00890345: movsx eax, word ptr var_000000C8
0089034C: test eax, eax
0089034E: jz 008904FDh
00890354: lea eax, var_24
00890357: mov var_00000084, eax
0089035D: mov var_0000008C, 0000400Ch
00890367: cmp [008F2010h], 00000000h
0089036E: jnz 89038Bh
00890370: push 008F2010h
00890375: push 00433984h
0089037A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089037F: mov var_00000134, 008F2010h
00890389: jmp 890395h
0089038B: mov var_00000134, 008F2010h
00890395: push 00000000h
00890397: push 00000014h
00890399: push 00440E58h
0089039E: push 00000010h
008903A0: pop eax
008903A1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008903A6: lea esi, var_0000008C
008903AC: mov edi, esp
008903AE: movsd 
008903AF: movsd 
008903B0: movsd 
008903B1: movsd 
008903B2: push 00000001h
008903B4: push 00000000h
008903B6: push 00440E48h
008903BB: push 00000000h
008903BD: push 00000018h
008903BF: mov eax, var_00000134
008903C5: mov eax, [eax]
008903C7: mov ecx, var_00000134
008903CD: mov ecx, [ecx]
008903CF: mov ecx, [ecx]
008903D1: push eax
008903D2: call [ecx+0000054Ch]
008903D8: push eax
008903D9: lea eax, var_30
008903DC: push eax
008903DD: call 00410A84h ; Set (object)
008903E2: push eax
008903E3: lea eax, var_48
008903E6: push eax
008903E7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008903EC: add esp, 00000010h
008903EF: push eax
008903F0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008903F5: push eax
008903F6: lea eax, var_34
008903F9: push eax
008903FA: call 00410A84h ; Set (object)
008903FF: push eax
00890400: lea eax, var_58
00890403: push eax
00890404: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00890409: add esp, 00000020h
0089040C: push eax
0089040D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00890412: push eax
00890413: lea eax, var_38
00890416: push eax
00890417: call 00410A84h ; Set (object)
0089041C: push eax
0089041D: lea eax, var_68
00890420: push eax
00890421: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00890426: add esp, 00000010h
00890429: push eax
0089042A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0089042F: mov edx, eax
00890431: lea ecx, var_28
00890434: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00890439: push eax
0089043A: call 004109DCh ; Val(arg_1)
0089043F: fstp real8 ptr var_000000C4
00890445: push 00000000h
00890447: push 00000000h
00890449: push 00000001h
0089044B: push 00000000h
0089044D: lea eax, var_7C
00890450: push eax
00890451: push 00000010h
00890453: push 00000880h
00890458: call 00410946h ; ReDim
0089045D: add esp, 0000001Ch
00890460: mov eax, [ebp+08h]
00890463: mov eax, [eax]
00890465: push [ebp+08h]
00890468: call [eax+00000304h]
0089046E: mov var_70, eax
00890471: mov var_78, 00000009h
00890478: lea esi, var_78
0089047B: push 00000000h
0089047D: push var_7C
00890480: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00890485: mov ecx, eax
00890487: mov edx, esi
00890489: call 00410940h ; msvbvm60.dll.__vbaVarZero
0089048E: mov edx, 0043D8B8h ; x99
00890493: lea ecx, var_2C
00890496: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0089049B: lea eax, var_7C
0089049E: push eax
0089049F: lea eax, var_2C
008904A2: push eax
008904A3: fld real8 ptr var_000000C4
008904A9: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008904AE: push eax
008904AF: call 007A6910h
008904B4: lea eax, var_7C
008904B7: push eax
008904B8: push 00000000h
008904BA: call 00410934h ; Erase
008904BF: lea eax, var_2C
008904C2: push eax
008904C3: lea eax, var_28
008904C6: push eax
008904C7: push 00000002h
008904C9: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008904CE: add esp, 0000000Ch
008904D1: lea eax, var_38
008904D4: push eax
008904D5: lea eax, var_34
008904D8: push eax
008904D9: lea eax, var_30
008904DC: push eax
008904DD: push 00000003h
008904DF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008904E4: add esp, 00000010h
008904E7: lea eax, var_68
008904EA: push eax
008904EB: lea eax, var_58
008904EE: push eax
008904EF: lea eax, var_48
008904F2: push eax
008904F3: push 00000003h
008904F5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008904FA: add esp, 00000010h
008904FD: lea eax, var_000000F0
00890503: push eax
00890504: lea eax, var_000000E0
0089050A: push eax
0089050B: lea eax, var_24
0089050E: push eax
0089050F: call 00410A36h ; Next
00890514: mov var_0000011C, eax
0089051A: cmp var_0000011C, 00000000h
00890521: jnz 0089022Bh
00890527: jmp 00890610h
0089052C: lea eax, var_28
0089052F: push eax
00890530: mov eax, [ebp+08h]
00890533: mov eax, [eax]
00890535: push [ebp+08h]
00890538: call [eax+000001C0h]
0089053E: fclex 
00890540: mov var_000000C8, eax
00890546: cmp var_000000C8, 00000000h
0089054D: jnl 89056Fh
0089054F: push 000001C0h
00890554: push 004485C8h
00890559: push [ebp+08h]
0089055C: push var_000000C8
00890562: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00890567: mov var_00000138, eax
0089056D: jmp 890576h
0089056F: and var_00000138, 00000000h
00890576: push var_28
00890579: call 004109DCh ; Val(arg_1)
0089057E: fstp real8 ptr var_000000C4
00890584: push 00000000h
00890586: push 00000000h
00890588: push 00000001h
0089058A: push 00000000h
0089058C: lea eax, var_7C
0089058F: push eax
00890590: push 00000010h
00890592: push 00000880h
00890597: call 00410946h ; ReDim
0089059C: add esp, 0000001Ch
0089059F: mov eax, [ebp+08h]
008905A2: mov eax, [eax]
008905A4: push [ebp+08h]
008905A7: call [eax+00000304h]
008905AD: mov var_40, eax
008905B0: mov var_48, 00000009h
008905B7: lea esi, var_48
008905BA: push 00000000h
008905BC: push var_7C
008905BF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008905C4: mov ecx, eax
008905C6: mov edx, esi
008905C8: call 00410940h ; msvbvm60.dll.__vbaVarZero
008905CD: mov edx, 0043D8B8h ; x99
008905D2: lea ecx, var_2C
008905D5: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008905DA: lea eax, var_7C
008905DD: push eax
008905DE: lea eax, var_2C
008905E1: push eax
008905E2: fld real8 ptr var_000000C4
008905E8: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008905ED: push eax
008905EE: call 007A6910h
008905F3: lea eax, var_7C
008905F6: push eax
008905F7: push 00000000h
008905F9: call 00410934h ; Erase
008905FE: lea eax, var_2C
00890601: push eax
00890602: lea eax, var_28
00890605: push eax
00890606: push 00000002h
00890608: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089060D: add esp, 0000000Ch
00890610: jmp 00890B78h
00890615: push 00000000h
00890617: push 00000000h
00890619: mov eax, [ebp+08h]
0089061C: mov eax, [eax]
0089061E: push [ebp+08h]
00890621: call [eax+0000033Ch]
00890627: push eax
00890628: lea eax, var_30
0089062B: push eax
0089062C: call 00410A84h ; Set (object)
00890631: push eax
00890632: lea eax, var_48
00890635: push eax
00890636: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089063B: add esp, 00000010h
0089063E: push eax
0089063F: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00890644: dec eax
00890645: neg eax
00890647: sbb eax, eax
00890649: inc eax
0089064A: neg eax
0089064C: mov var_000000C8, ax
00890653: lea ecx, var_30
00890656: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0089065B: lea ecx, var_48
0089065E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00890663: movsx eax, word ptr var_000000C8
0089066A: test eax, eax
0089066C: jz 00890A94h
00890672: mov var_00000084, 00000001h
0089067C: mov var_0000008C, 00000002h
00890686: cmp [008F2010h], 00000000h
0089068D: jnz 8906AAh
0089068F: push 008F2010h
00890694: push 00433984h
00890699: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089069E: mov var_0000013C, 008F2010h
008906A8: jmp 8906B4h
008906AA: mov var_0000013C, 008F2010h
008906B4: push 00000000h
008906B6: push 00000001h
008906B8: push 00440E48h
008906BD: push 00000000h
008906BF: push 00000018h
008906C1: mov eax, var_0000013C
008906C7: mov eax, [eax]
008906C9: mov ecx, var_0000013C
008906CF: mov ecx, [ecx]
008906D1: mov ecx, [ecx]
008906D3: push eax
008906D4: call [ecx+00000550h]
008906DA: push eax
008906DB: lea eax, var_30
008906DE: push eax
008906DF: call 00410A84h ; Set (object)
008906E4: push eax
008906E5: lea eax, var_48
008906E8: push eax
008906E9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008906EE: add esp, 00000010h
008906F1: push eax
008906F2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008906F7: push eax
008906F8: lea eax, var_34
008906FB: push eax
008906FC: call 00410A84h ; Set (object)
00890701: push eax
00890702: lea eax, var_58
00890705: push eax
00890706: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089070B: add esp, 00000010h
0089070E: push eax
0089070F: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00890714: mov var_00000094, eax
0089071A: mov var_0000009C, 00000003h
00890724: mov var_000000A4, 00000001h
0089072E: mov var_000000AC, 00000002h
00890738: lea eax, var_0000008C
0089073E: push eax
0089073F: lea eax, var_0000009C
00890745: push eax
00890746: lea eax, var_000000AC
0089074C: push eax
0089074D: lea eax, var_00000110
00890753: push eax
00890754: lea eax, var_00000100
0089075A: push eax
0089075B: lea eax, var_24
0089075E: push eax
0089075F: call 00410A3Ch ; For
00890764: mov var_00000120, eax
0089076A: lea eax, var_34
0089076D: push eax
0089076E: lea eax, var_30
00890771: push eax
00890772: push 00000002h
00890774: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00890779: add esp, 0000000Ch
0089077C: lea eax, var_58
0089077F: push eax
00890780: lea eax, var_48
00890783: push eax
00890784: push 00000002h
00890786: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089078B: add esp, 0000000Ch
0089078E: jmp 00890A82h
00890793: lea eax, var_24
00890796: mov var_00000084, eax
0089079C: mov var_0000008C, 0000400Ch
008907A6: cmp [008F2010h], 00000000h
008907AD: jnz 8907CAh
008907AF: push 008F2010h
008907B4: push 00433984h
008907B9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008907BE: mov var_00000140, 008F2010h
008907C8: jmp 8907D4h
008907CA: mov var_00000140, 008F2010h
008907D4: push 00000000h
008907D6: push 00000004h
008907D8: push 00440E58h
008907DD: push 00000010h
008907DF: pop eax
008907E0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008907E5: lea esi, var_0000008C
008907EB: mov edi, esp
008907ED: movsd 
008907EE: movsd 
008907EF: movsd 
008907F0: movsd 
008907F1: push 00000001h
008907F3: push 00000000h
008907F5: push 00440E48h
008907FA: push 00000000h
008907FC: push 00000018h
008907FE: mov eax, var_00000140
00890804: mov eax, [eax]
00890806: mov ecx, var_00000140
0089080C: mov ecx, [ecx]
0089080E: mov ecx, [ecx]
00890810: push eax
00890811: call [ecx+00000550h]
00890817: push eax
00890818: lea eax, var_30
0089081B: push eax
0089081C: call 00410A84h ; Set (object)
00890821: push eax
00890822: lea eax, var_48
00890825: push eax
00890826: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089082B: add esp, 00000010h
0089082E: push eax
0089082F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00890834: push eax
00890835: lea eax, var_34
00890838: push eax
00890839: call 00410A84h ; Set (object)
0089083E: push eax
0089083F: lea eax, var_58
00890842: push eax
00890843: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00890848: add esp, 00000020h
0089084B: push eax
0089084C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00890851: push eax
00890852: lea eax, var_38
00890855: push eax
00890856: call 00410A84h ; Set (object)
0089085B: push eax
0089085C: lea eax, var_68
0089085F: push eax
00890860: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00890865: add esp, 00000010h
00890868: push eax
00890869: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0089086E: sub ax, FFFFh
00890872: neg ax
00890875: sbb eax, eax
00890877: inc eax
00890878: neg eax
0089087A: mov var_000000C8, ax
00890881: lea eax, var_38
00890884: push eax
00890885: lea eax, var_34
00890888: push eax
00890889: lea eax, var_30
0089088C: push eax
0089088D: push 00000003h
0089088F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00890894: add esp, 00000010h
00890897: lea eax, var_68
0089089A: push eax
0089089B: lea eax, var_58
0089089E: push eax
0089089F: lea eax, var_48
008908A2: push eax
008908A3: push 00000003h
008908A5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008908AA: add esp, 00000010h
008908AD: movsx eax, word ptr var_000000C8
008908B4: test eax, eax
008908B6: jz 00890A65h
008908BC: lea eax, var_24
008908BF: mov var_00000084, eax
008908C5: mov var_0000008C, 0000400Ch
008908CF: cmp [008F2010h], 00000000h
008908D6: jnz 8908F3h
008908D8: push 008F2010h
008908DD: push 00433984h
008908E2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008908E7: mov var_00000144, 008F2010h
008908F1: jmp 8908FDh
008908F3: mov var_00000144, 008F2010h
008908FD: push 00000000h
008908FF: push 00000014h
00890901: push 00440E58h
00890906: push 00000010h
00890908: pop eax
00890909: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089090E: lea esi, var_0000008C
00890914: mov edi, esp
00890916: movsd 
00890917: movsd 
00890918: movsd 
00890919: movsd 
0089091A: push 00000001h
0089091C: push 00000000h
0089091E: push 00440E48h
00890923: push 00000000h
00890925: push 00000018h
00890927: mov eax, var_00000144
0089092D: mov eax, [eax]
0089092F: mov ecx, var_00000144
00890935: mov ecx, [ecx]
00890937: mov ecx, [ecx]
00890939: push eax
0089093A: call [ecx+00000550h]
00890940: push eax
00890941: lea eax, var_30
00890944: push eax
00890945: call 00410A84h ; Set (object)
0089094A: push eax
0089094B: lea eax, var_48
0089094E: push eax
0089094F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00890954: add esp, 00000010h
00890957: push eax
00890958: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089095D: push eax
0089095E: lea eax, var_34
00890961: push eax
00890962: call 00410A84h ; Set (object)
00890967: push eax
00890968: lea eax, var_58
0089096B: push eax
0089096C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00890971: add esp, 00000020h
00890974: push eax
00890975: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089097A: push eax
0089097B: lea eax, var_38
0089097E: push eax
0089097F: call 00410A84h ; Set (object)
00890984: push eax
00890985: lea eax, var_68
00890988: push eax
00890989: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089098E: add esp, 00000010h
00890991: push eax
00890992: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00890997: mov edx, eax
00890999: lea ecx, var_28
0089099C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008909A1: push eax
008909A2: call 004109DCh ; Val(arg_1)
008909A7: fstp real8 ptr var_000000C4
008909AD: push 00000000h
008909AF: push 00000000h
008909B1: push 00000001h
008909B3: push 00000000h
008909B5: lea eax, var_7C
008909B8: push eax
008909B9: push 00000010h
008909BB: push 00000880h
008909C0: call 00410946h ; ReDim
008909C5: add esp, 0000001Ch
008909C8: mov eax, [ebp+08h]
008909CB: mov eax, [eax]
008909CD: push [ebp+08h]
008909D0: call [eax+00000304h]
008909D6: mov var_70, eax
008909D9: mov var_78, 00000009h
008909E0: lea esi, var_78
008909E3: push 00000000h
008909E5: push var_7C
008909E8: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008909ED: mov ecx, eax
008909EF: mov edx, esi
008909F1: call 00410940h ; msvbvm60.dll.__vbaVarZero
008909F6: mov edx, 0043D8B8h ; x99
008909FB: lea ecx, var_2C
008909FE: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00890A03: lea eax, var_7C
00890A06: push eax
00890A07: lea eax, var_2C
00890A0A: push eax
00890A0B: fld real8 ptr var_000000C4
00890A11: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00890A16: push eax
00890A17: call 007A6910h
00890A1C: lea eax, var_7C
00890A1F: push eax
00890A20: push 00000000h
00890A22: call 00410934h ; Erase
00890A27: lea eax, var_2C
00890A2A: push eax
00890A2B: lea eax, var_28
00890A2E: push eax
00890A2F: push 00000002h
00890A31: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00890A36: add esp, 0000000Ch
00890A39: lea eax, var_38
00890A3C: push eax
00890A3D: lea eax, var_34
00890A40: push eax
00890A41: lea eax, var_30
00890A44: push eax
00890A45: push 00000003h
00890A47: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00890A4C: add esp, 00000010h
00890A4F: lea eax, var_68
00890A52: push eax
00890A53: lea eax, var_58
00890A56: push eax
00890A57: lea eax, var_48
00890A5A: push eax
00890A5B: push 00000003h
00890A5D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00890A62: add esp, 00000010h
00890A65: lea eax, var_00000110
00890A6B: push eax
00890A6C: lea eax, var_00000100
00890A72: push eax
00890A73: lea eax, var_24
00890A76: push eax
00890A77: call 00410A36h ; Next
00890A7C: mov var_00000120, eax
00890A82: cmp var_00000120, 00000000h
00890A89: jnz 00890793h
00890A8F: jmp 00890B78h
00890A94: lea eax, var_28
00890A97: push eax
00890A98: mov eax, [ebp+08h]
00890A9B: mov eax, [eax]
00890A9D: push [ebp+08h]
00890AA0: call [eax+000001C0h]
00890AA6: fclex 
00890AA8: mov var_000000C8, eax
00890AAE: cmp var_000000C8, 00000000h
00890AB5: jnl 890AD7h
00890AB7: push 000001C0h
00890ABC: push 004485C8h
00890AC1: push [ebp+08h]
00890AC4: push var_000000C8
00890ACA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00890ACF: mov var_00000148, eax
00890AD5: jmp 890ADEh
00890AD7: and var_00000148, 00000000h
00890ADE: push var_28
00890AE1: call 004109DCh ; Val(arg_1)
00890AE6: fstp real8 ptr var_000000C4
00890AEC: push 00000000h
00890AEE: push 00000000h
00890AF0: push 00000001h
00890AF2: push 00000000h
00890AF4: lea eax, var_7C
00890AF7: push eax
00890AF8: push 00000010h
00890AFA: push 00000880h
00890AFF: call 00410946h ; ReDim
00890B04: add esp, 0000001Ch
00890B07: mov eax, [ebp+08h]
00890B0A: mov eax, [eax]
00890B0C: push [ebp+08h]
00890B0F: call [eax+00000304h]
00890B15: mov var_40, eax
00890B18: mov var_48, 00000009h
00890B1F: lea esi, var_48
00890B22: push 00000000h
00890B24: push var_7C
00890B27: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00890B2C: mov ecx, eax
00890B2E: mov edx, esi
00890B30: call 00410940h ; msvbvm60.dll.__vbaVarZero
00890B35: mov edx, 0043D8B8h ; x99
00890B3A: lea ecx, var_2C
00890B3D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00890B42: lea eax, var_7C
00890B45: push eax
00890B46: lea eax, var_2C
00890B49: push eax
00890B4A: fld real8 ptr var_000000C4
00890B50: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00890B55: push eax
00890B56: call 007A6910h
00890B5B: lea eax, var_7C
00890B5E: push eax
00890B5F: push 00000000h
00890B61: call 00410934h ; Erase
00890B66: lea eax, var_2C
00890B69: push eax
00890B6A: lea eax, var_28
00890B6D: push eax
00890B6E: push 00000002h
00890B70: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00890B75: add esp, 0000000Ch
00890B78: mov var_04, 00000000h
00890B7F: wait 
00890B80: push 00890C04h
00890B85: jmp 890BD5h
00890B87: lea eax, var_2C
00890B8A: push eax
00890B8B: lea eax, var_28
00890B8E: push eax
00890B8F: push 00000002h
00890B91: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00890B96: add esp, 0000000Ch
00890B99: lea eax, var_38
00890B9C: push eax
00890B9D: lea eax, var_34
00890BA0: push eax
00890BA1: lea eax, var_30
00890BA4: push eax
00890BA5: push 00000003h
00890BA7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00890BAC: add esp, 00000010h
00890BAF: lea eax, var_78
00890BB2: push eax
00890BB3: lea eax, var_68
00890BB6: push eax
00890BB7: lea eax, var_58
00890BBA: push eax
00890BBB: lea eax, var_48
00890BBE: push eax
00890BBF: push 00000004h
00890BC1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00890BC6: add esp, 00000014h
00890BC9: lea eax, var_7C
00890BCC: push eax
00890BCD: push 00000000h
00890BCF: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
00890BD4: ret 
End Sub

Private sub mnuMSN__8958AC
008958AC: push ebp
008958AD: mov ebp, esp
008958AF: sub esp, 0000000Ch
008958B2: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008958B7: mov eax, fs:[00h]
008958BD: push eax
008958BE: mov fs:[00000000h], esp
008958C5: mov eax, 0000026Ch
008958CA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008958CF: push ebx
008958D0: push esi
008958D1: push edi
008958D2: mov var_0C, esp
008958D5: mov var_08, 0040DF68h
008958DC: mov eax, [ebp+08h]
008958DF: and eax, 00000001h
008958E2: mov var_04, eax
008958E5: mov eax, [ebp+08h]
008958E8: and al, FEh
008958EA: mov [ebp+08h], eax
008958ED: mov eax, [ebp+08h]
008958F0: mov eax, [eax]
008958F2: push [ebp+08h]
008958F5: call [eax+04h]
008958F8: mov eax, [ebp+0Ch]
008958FB: mov ax, [eax]
008958FE: mov var_000001F0, ax
00895905: movsx eax, word ptr var_000001F0
0089590C: mov var_00000220, eax
00895912: cmp var_00000220, 00000003h
00895919: jz 89593Ah
0089591B: cmp var_00000220, 00000004h
00895922: jz 0089687Eh
00895928: cmp var_00000220, 00000006h
0089592F: jz 00897724h
00895935: jmp 00898663h
0089593A: mov var_00000088, 00000001h
00895944: mov var_00000090, 00000002h
0089594E: push 00000000h
00895950: push 00000001h
00895952: push 00440E48h
00895957: push 00000000h
00895959: push 00000018h
0089595B: mov eax, [ebp+08h]
0089595E: mov eax, [eax]
00895960: push [ebp+08h]
00895963: call [eax+00000328h]
00895969: push eax
0089596A: lea eax, var_34
0089596D: push eax
0089596E: call 00410A84h ; Set (object)
00895973: push eax
00895974: lea eax, var_4C
00895977: push eax
00895978: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089597D: add esp, 00000010h
00895980: push eax
00895981: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00895986: push eax
00895987: lea eax, var_38
0089598A: push eax
0089598B: call 00410A84h ; Set (object)
00895990: push eax
00895991: lea eax, var_5C
00895994: push eax
00895995: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089599A: add esp, 00000010h
0089599D: push eax
0089599E: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008959A3: mov var_00000098, eax
008959A9: mov var_000000A0, 00000003h
008959B3: mov var_000000A8, 00000001h
008959BD: mov var_000000B0, 00000002h
008959C7: lea eax, var_00000090
008959CD: push eax
008959CE: lea eax, var_000000A0
008959D4: push eax
008959D5: lea eax, var_000000B0
008959DB: push eax
008959DC: lea eax, var_000000EC
008959E2: push eax
008959E3: lea eax, var_000000DC
008959E9: push eax
008959EA: lea eax, var_24
008959ED: push eax
008959EE: call 00410A3Ch ; For
008959F3: mov var_000001FC, eax
008959F9: lea eax, var_38
008959FC: push eax
008959FD: lea eax, var_34
00895A00: push eax
00895A01: push 00000002h
00895A03: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00895A08: add esp, 0000000Ch
00895A0B: lea eax, var_5C
00895A0E: push eax
00895A0F: lea eax, var_4C
00895A12: push eax
00895A13: push 00000002h
00895A15: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00895A1A: add esp, 0000000Ch
00895A1D: jmp 00895C69h
00895A22: lea eax, var_24
00895A25: mov var_00000088, eax
00895A2B: mov var_00000090, 0000400Ch
00895A35: push 00000000h
00895A37: push 00000004h
00895A39: push 00440E58h
00895A3E: push 00000010h
00895A40: pop eax
00895A41: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00895A46: lea esi, var_00000090
00895A4C: mov edi, esp
00895A4E: movsd 
00895A4F: movsd 
00895A50: movsd 
00895A51: movsd 
00895A52: push 00000001h
00895A54: push 00000000h
00895A56: push 00440E48h
00895A5B: push 00000000h
00895A5D: push 00000018h
00895A5F: mov eax, [ebp+08h]
00895A62: mov eax, [eax]
00895A64: push [ebp+08h]
00895A67: call [eax+00000328h]
00895A6D: push eax
00895A6E: lea eax, var_34
00895A71: push eax
00895A72: call 00410A84h ; Set (object)
00895A77: push eax
00895A78: lea eax, var_4C
00895A7B: push eax
00895A7C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00895A81: add esp, 00000010h
00895A84: push eax
00895A85: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00895A8A: push eax
00895A8B: lea eax, var_38
00895A8E: push eax
00895A8F: call 00410A84h ; Set (object)
00895A94: push eax
00895A95: lea eax, var_5C
00895A98: push eax
00895A99: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00895A9E: add esp, 00000020h
00895AA1: push eax
00895AA2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00895AA7: push eax
00895AA8: lea eax, var_3C
00895AAB: push eax
00895AAC: call 00410A84h ; Set (object)
00895AB1: push eax
00895AB2: lea eax, var_6C
00895AB5: push eax
00895AB6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00895ABB: add esp, 00000010h
00895ABE: push eax
00895ABF: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00895AC4: sub ax, FFFFh
00895AC8: neg ax
00895ACB: sbb eax, eax
00895ACD: inc eax
00895ACE: neg eax
00895AD0: mov var_000000CC, ax
00895AD7: lea eax, var_3C
00895ADA: push eax
00895ADB: lea eax, var_38
00895ADE: push eax
00895ADF: lea eax, var_34
00895AE2: push eax
00895AE3: push 00000003h
00895AE5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00895AEA: add esp, 00000010h
00895AED: lea eax, var_6C
00895AF0: push eax
00895AF1: lea eax, var_5C
00895AF4: push eax
00895AF5: lea eax, var_4C
00895AF8: push eax
00895AF9: push 00000003h
00895AFB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00895B00: add esp, 00000010h
00895B03: movsx eax, word ptr var_000000CC
00895B0A: test eax, eax
00895B0C: jz 00895C4Ch
00895B12: mov var_00000098, 00000001h
00895B1C: mov var_000000A0, 00000003h
00895B26: lea eax, var_24
00895B29: mov var_00000088, eax
00895B2F: mov var_00000090, 0000400Ch
00895B39: push var_28
00895B3C: push 00000010h
00895B3E: pop eax
00895B3F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00895B44: lea esi, var_000000A0
00895B4A: mov edi, esp
00895B4C: movsd 
00895B4D: movsd 
00895B4E: movsd 
00895B4F: movsd 
00895B50: push 00000001h
00895B52: push 00000010h
00895B54: push 00440E58h
00895B59: push 00000010h
00895B5B: pop eax
00895B5C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00895B61: lea esi, var_00000090
00895B67: mov edi, esp
00895B69: movsd 
00895B6A: movsd 
00895B6B: movsd 
00895B6C: movsd 
00895B6D: push 00000001h
00895B6F: push 00000000h
00895B71: push 00440E48h
00895B76: push 00000000h
00895B78: push 00000018h
00895B7A: mov eax, [ebp+08h]
00895B7D: mov eax, [eax]
00895B7F: push [ebp+08h]
00895B82: call [eax+00000328h]
00895B88: push eax
00895B89: lea eax, var_34
00895B8C: push eax
00895B8D: call 00410A84h ; Set (object)
00895B92: push eax
00895B93: lea eax, var_4C
00895B96: push eax
00895B97: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00895B9C: add esp, 00000010h
00895B9F: push eax
00895BA0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00895BA5: push eax
00895BA6: lea eax, var_38
00895BA9: push eax
00895BAA: call 00410A84h ; Set (object)
00895BAF: push eax
00895BB0: lea eax, var_5C
00895BB3: push eax
00895BB4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00895BB9: add esp, 00000020h
00895BBC: push eax
00895BBD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00895BC2: push eax
00895BC3: lea eax, var_3C
00895BC6: push eax
00895BC7: call 00410A84h ; Set (object)
00895BCC: push eax
00895BCD: lea eax, var_6C
00895BD0: push eax
00895BD1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00895BD6: add esp, 00000020h
00895BD9: push eax
00895BDA: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00895BDF: mov edx, eax
00895BE1: lea ecx, var_2C
00895BE4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00895BE9: push eax
00895BEA: call 00410A18h ; &
00895BEF: mov edx, eax
00895BF1: lea ecx, var_30
00895BF4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00895BF9: push eax
00895BFA: push 004413D8h
00895BFF: call 00410A18h ; &
00895C04: mov edx, eax
00895C06: lea ecx, var_28
00895C09: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00895C0E: lea eax, var_30
00895C11: push eax
00895C12: lea eax, var_2C
00895C15: push eax
00895C16: push 00000002h
00895C18: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00895C1D: add esp, 0000000Ch
00895C20: lea eax, var_3C
00895C23: push eax
00895C24: lea eax, var_38
00895C27: push eax
00895C28: lea eax, var_34
00895C2B: push eax
00895C2C: push 00000003h
00895C2E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00895C33: add esp, 00000010h
00895C36: lea eax, var_6C
00895C39: push eax
00895C3A: lea eax, var_5C
00895C3D: push eax
00895C3E: lea eax, var_4C
00895C41: push eax
00895C42: push 00000003h
00895C44: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00895C49: add esp, 00000010h
00895C4C: lea eax, var_000000EC
00895C52: push eax
00895C53: lea eax, var_000000DC
00895C59: push eax
00895C5A: lea eax, var_24
00895C5D: push eax
00895C5E: call 00410A36h ; Next
00895C63: mov var_000001FC, eax
00895C69: cmp var_000001FC, 00000000h
00895C70: jnz 00895A22h
00895C76: push var_28
00895C79: push 00000000h
00895C7B: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00895C80: test eax, eax
00895C82: jnz 00895D0Ah
00895C88: mov var_74, 80020004h
00895C8F: mov var_7C, 0000000Ah
00895C96: mov var_64, 80020004h
00895C9D: mov var_6C, 0000000Ah
00895CA4: mov var_54, 80020004h
00895CAB: mov var_5C, 0000000Ah
00895CB2: mov var_00000088, 00459834h ; No contact selected(s)
00895CBC: mov var_00000090, 00000008h
00895CC6: lea edx, var_00000090
00895CCC: lea ecx, var_4C
00895CCF: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00895CD4: lea eax, var_7C
00895CD7: push eax
00895CD8: lea eax, var_6C
00895CDB: push eax
00895CDC: lea eax, var_5C
00895CDF: push eax
00895CE0: push 00000010h
00895CE2: lea eax, var_4C
00895CE5: push eax
00895CE6: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00895CEB: lea eax, var_7C
00895CEE: push eax
00895CEF: lea eax, var_6C
00895CF2: push eax
00895CF3: lea eax, var_5C
00895CF6: push eax
00895CF7: lea eax, var_4C
00895CFA: push eax
00895CFB: push 00000004h
00895CFD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00895D02: add esp, 00000014h
00895D05: jmp 00898663h
00895D0A: mov var_74, 80020004h
00895D11: mov var_7C, 0000000Ah
00895D18: mov var_64, 80020004h
00895D1F: mov var_6C, 0000000Ah
00895D26: mov var_54, 80020004h
00895D2D: mov var_5C, 0000000Ah
00895D34: mov var_00000088, 00459868h ; Do you really want to block the selected contact(s)?
00895D3E: mov var_00000090, 00000008h
00895D48: lea edx, var_00000090
00895D4E: lea ecx, var_4C
00895D51: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00895D56: lea eax, var_7C
00895D59: push eax
00895D5A: lea eax, var_6C
00895D5D: push eax
00895D5E: lea eax, var_5C
00895D61: push eax
00895D62: push 00000034h
00895D64: lea eax, var_4C
00895D67: push eax
00895D68: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00895D6D: sub eax, 00000007h
00895D70: neg eax
00895D72: sbb eax, eax
00895D74: inc eax
00895D75: neg eax
00895D77: mov var_000000CC, ax
00895D7E: lea eax, var_7C
00895D81: push eax
00895D82: lea eax, var_6C
00895D85: push eax
00895D86: lea eax, var_5C
00895D89: push eax
00895D8A: lea eax, var_4C
00895D8D: push eax
00895D8E: push 00000004h
00895D90: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00895D95: add esp, 00000014h
00895D98: movsx eax, word ptr var_000000CC
00895D9F: test eax, eax
00895DA1: jz 895DA8h
00895DA3: jmp 00898663h
00895DA8: cmp word ptr [008F2430h], FFFFh
00895DB0: jnz 0089631Ah
00895DB6: push 00000000h
00895DB8: push 00000000h
00895DBA: mov eax, [ebp+08h]
00895DBD: mov eax, [eax]
00895DBF: push [ebp+08h]
00895DC2: call [eax+0000033Ch]
00895DC8: push eax
00895DC9: lea eax, var_34
00895DCC: push eax
00895DCD: call 00410A84h ; Set (object)
00895DD2: push eax
00895DD3: lea eax, var_4C
00895DD6: push eax
00895DD7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00895DDC: add esp, 00000010h
00895DDF: push eax
00895DE0: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00895DE5: dec eax
00895DE6: neg eax
00895DE8: sbb eax, eax
00895DEA: inc eax
00895DEB: neg eax
00895DED: mov var_000000CC, ax
00895DF4: lea ecx, var_34
00895DF7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00895DFC: lea ecx, var_4C
00895DFF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00895E04: movsx eax, word ptr var_000000CC
00895E0B: test eax, eax
00895E0D: jz 00896233h
00895E13: mov var_00000088, 00000001h
00895E1D: mov var_00000090, 00000002h
00895E27: cmp [008F2010h], 00000000h
00895E2E: jnz 895E4Bh
00895E30: push 008F2010h
00895E35: push 00433984h
00895E3A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00895E3F: mov var_00000224, 008F2010h
00895E49: jmp 895E55h
00895E4B: mov var_00000224, 008F2010h
00895E55: push 00000000h
00895E57: push 00000001h
00895E59: push 00440E48h
00895E5E: push 00000000h
00895E60: push 00000018h
00895E62: mov eax, var_00000224
00895E68: mov eax, [eax]
00895E6A: mov ecx, var_00000224
00895E70: mov ecx, [ecx]
00895E72: mov ecx, [ecx]
00895E74: push eax
00895E75: call [ecx+0000054Ch]
00895E7B: push eax
00895E7C: lea eax, var_34
00895E7F: push eax
00895E80: call 00410A84h ; Set (object)
00895E85: push eax
00895E86: lea eax, var_4C
00895E89: push eax
00895E8A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00895E8F: add esp, 00000010h
00895E92: push eax
00895E93: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00895E98: push eax
00895E99: lea eax, var_38
00895E9C: push eax
00895E9D: call 00410A84h ; Set (object)
00895EA2: push eax
00895EA3: lea eax, var_5C
00895EA6: push eax
00895EA7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00895EAC: add esp, 00000010h
00895EAF: push eax
00895EB0: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00895EB5: mov var_00000098, eax
00895EBB: mov var_000000A0, 00000003h
00895EC5: mov var_000000A8, 00000001h
00895ECF: mov var_000000B0, 00000002h
00895ED9: lea eax, var_00000090
00895EDF: push eax
00895EE0: lea eax, var_000000A0
00895EE6: push eax
00895EE7: lea eax, var_000000B0
00895EED: push eax
00895EEE: lea eax, var_0000010C
00895EF4: push eax
00895EF5: lea eax, var_000000FC
00895EFB: push eax
00895EFC: lea eax, var_24
00895EFF: push eax
00895F00: call 00410A3Ch ; For
00895F05: mov var_00000200, eax
00895F0B: lea eax, var_38
00895F0E: push eax
00895F0F: lea eax, var_34
00895F12: push eax
00895F13: push 00000002h
00895F15: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00895F1A: add esp, 0000000Ch
00895F1D: lea eax, var_5C
00895F20: push eax
00895F21: lea eax, var_4C
00895F24: push eax
00895F25: push 00000002h
00895F27: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00895F2C: add esp, 0000000Ch
00895F2F: jmp 00896221h
00895F34: lea eax, var_24
00895F37: mov var_00000088, eax
00895F3D: mov var_00000090, 0000400Ch
00895F47: cmp [008F2010h], 00000000h
00895F4E: jnz 895F6Bh
00895F50: push 008F2010h
00895F55: push 00433984h
00895F5A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00895F5F: mov var_00000228, 008F2010h
00895F69: jmp 895F75h
00895F6B: mov var_00000228, 008F2010h
00895F75: push 00000000h
00895F77: push 00000004h
00895F79: push 00440E58h
00895F7E: push 00000010h
00895F80: pop eax
00895F81: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00895F86: lea esi, var_00000090
00895F8C: mov edi, esp
00895F8E: movsd 
00895F8F: movsd 
00895F90: movsd 
00895F91: movsd 
00895F92: push 00000001h
00895F94: push 00000000h
00895F96: push 00440E48h
00895F9B: push 00000000h
00895F9D: push 00000018h
00895F9F: mov eax, var_00000228
00895FA5: mov eax, [eax]
00895FA7: mov ecx, var_00000228
00895FAD: mov ecx, [ecx]
00895FAF: mov ecx, [ecx]
00895FB1: push eax
00895FB2: call [ecx+0000054Ch]
00895FB8: push eax
00895FB9: lea eax, var_34
00895FBC: push eax
00895FBD: call 00410A84h ; Set (object)
00895FC2: push eax
00895FC3: lea eax, var_4C
00895FC6: push eax
00895FC7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00895FCC: add esp, 00000010h
00895FCF: push eax
00895FD0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00895FD5: push eax
00895FD6: lea eax, var_38
00895FD9: push eax
00895FDA: call 00410A84h ; Set (object)
00895FDF: push eax
00895FE0: lea eax, var_5C
00895FE3: push eax
00895FE4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00895FE9: add esp, 00000020h
00895FEC: push eax
00895FED: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00895FF2: push eax
00895FF3: lea eax, var_3C
00895FF6: push eax
00895FF7: call 00410A84h ; Set (object)
00895FFC: push eax
00895FFD: lea eax, var_6C
00896000: push eax
00896001: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896006: add esp, 00000010h
00896009: push eax
0089600A: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0089600F: sub ax, FFFFh
00896013: neg ax
00896016: sbb eax, eax
00896018: inc eax
00896019: neg eax
0089601B: mov var_000000CC, ax
00896022: lea eax, var_3C
00896025: push eax
00896026: lea eax, var_38
00896029: push eax
0089602A: lea eax, var_34
0089602D: push eax
0089602E: push 00000003h
00896030: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00896035: add esp, 00000010h
00896038: lea eax, var_6C
0089603B: push eax
0089603C: lea eax, var_5C
0089603F: push eax
00896040: lea eax, var_4C
00896043: push eax
00896044: push 00000003h
00896046: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089604B: add esp, 00000010h
0089604E: movsx eax, word ptr var_000000CC
00896055: test eax, eax
00896057: jz 00896204h
0089605D: lea eax, var_24
00896060: mov var_00000088, eax
00896066: mov var_00000090, 0000400Ch
00896070: cmp [008F2010h], 00000000h
00896077: jnz 896094h
00896079: push 008F2010h
0089607E: push 00433984h
00896083: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00896088: mov var_0000022C, 008F2010h
00896092: jmp 89609Eh
00896094: mov var_0000022C, 008F2010h
0089609E: push 00000000h
008960A0: push 00000014h
008960A2: push 00440E58h
008960A7: push 00000010h
008960A9: pop eax
008960AA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008960AF: lea esi, var_00000090
008960B5: mov edi, esp
008960B7: movsd 
008960B8: movsd 
008960B9: movsd 
008960BA: movsd 
008960BB: push 00000001h
008960BD: push 00000000h
008960BF: push 00440E48h
008960C4: push 00000000h
008960C6: push 00000018h
008960C8: mov eax, var_0000022C
008960CE: mov eax, [eax]
008960D0: mov ecx, var_0000022C
008960D6: mov ecx, [ecx]
008960D8: mov ecx, [ecx]
008960DA: push eax
008960DB: call [ecx+0000054Ch]
008960E1: push eax
008960E2: lea eax, var_34
008960E5: push eax
008960E6: call 00410A84h ; Set (object)
008960EB: push eax
008960EC: lea eax, var_4C
008960EF: push eax
008960F0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008960F5: add esp, 00000010h
008960F8: push eax
008960F9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008960FE: push eax
008960FF: lea eax, var_38
00896102: push eax
00896103: call 00410A84h ; Set (object)
00896108: push eax
00896109: lea eax, var_5C
0089610C: push eax
0089610D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896112: add esp, 00000020h
00896115: push eax
00896116: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089611B: push eax
0089611C: lea eax, var_3C
0089611F: push eax
00896120: call 00410A84h ; Set (object)
00896125: push eax
00896126: lea eax, var_6C
00896129: push eax
0089612A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089612F: add esp, 00000010h
00896132: push eax
00896133: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00896138: mov edx, eax
0089613A: lea ecx, var_2C
0089613D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00896142: push eax
00896143: call 004109DCh ; Val(arg_1)
00896148: fstp real8 ptr var_000000C8
0089614E: push 00000000h
00896150: push 00000000h
00896152: push 00000001h
00896154: push 00000000h
00896156: lea eax, var_80
00896159: push eax
0089615A: push 00000010h
0089615C: push 00000880h
00896161: call 00410946h ; ReDim
00896166: add esp, 0000001Ch
00896169: lea eax, var_28
0089616C: mov var_00000098, eax
00896172: mov var_000000A0, 00004008h
0089617C: lea esi, var_000000A0
00896182: push 00000000h
00896184: push var_80
00896187: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089618C: mov ecx, eax
0089618E: mov edx, esi
00896190: call 00410940h ; msvbvm60.dll.__vbaVarZero
00896195: mov edx, 0043D8B8h ; x99
0089619A: lea ecx, var_30
0089619D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008961A2: lea eax, var_80
008961A5: push eax
008961A6: lea eax, var_30
008961A9: push eax
008961AA: fld real8 ptr var_000000C8
008961B0: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008961B5: push eax
008961B6: call 007A6910h
008961BB: lea eax, var_80
008961BE: push eax
008961BF: push 00000000h
008961C1: call 00410934h ; Erase
008961C6: lea eax, var_30
008961C9: push eax
008961CA: lea eax, var_2C
008961CD: push eax
008961CE: push 00000002h
008961D0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008961D5: add esp, 0000000Ch
008961D8: lea eax, var_3C
008961DB: push eax
008961DC: lea eax, var_38
008961DF: push eax
008961E0: lea eax, var_34
008961E3: push eax
008961E4: push 00000003h
008961E6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008961EB: add esp, 00000010h
008961EE: lea eax, var_6C
008961F1: push eax
008961F2: lea eax, var_5C
008961F5: push eax
008961F6: lea eax, var_4C
008961F9: push eax
008961FA: push 00000003h
008961FC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00896201: add esp, 00000010h
00896204: lea eax, var_0000010C
0089620A: push eax
0089620B: lea eax, var_000000FC
00896211: push eax
00896212: lea eax, var_24
00896215: push eax
00896216: call 00410A36h ; Next
0089621B: mov var_00000200, eax
00896221: cmp var_00000200, 00000000h
00896228: jnz 00895F34h
0089622E: jmp 00896315h
00896233: lea eax, var_2C
00896236: push eax
00896237: mov eax, [ebp+08h]
0089623A: mov eax, [eax]
0089623C: push [ebp+08h]
0089623F: call [eax+000001C0h]
00896245: fclex 
00896247: mov var_000000CC, eax
0089624D: cmp var_000000CC, 00000000h
00896254: jnl 896276h
00896256: push 000001C0h
0089625B: push 004485C8h
00896260: push [ebp+08h]
00896263: push var_000000CC
00896269: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0089626E: mov var_00000230, eax
00896274: jmp 89627Dh
00896276: and var_00000230, 00000000h
0089627D: push var_2C
00896280: call 004109DCh ; Val(arg_1)
00896285: fstp real8 ptr var_000000C8
0089628B: push 00000000h
0089628D: push 00000000h
0089628F: push 00000001h
00896291: push 00000000h
00896293: lea eax, var_80
00896296: push eax
00896297: push 00000010h
00896299: push 00000880h
0089629E: call 00410946h ; ReDim
008962A3: add esp, 0000001Ch
008962A6: lea eax, var_28
008962A9: mov var_00000088, eax
008962AF: mov var_00000090, 00004008h
008962B9: lea esi, var_00000090
008962BF: push 00000000h
008962C1: push var_80
008962C4: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008962C9: mov ecx, eax
008962CB: mov edx, esi
008962CD: call 00410940h ; msvbvm60.dll.__vbaVarZero
008962D2: mov edx, 0043D8B8h ; x99
008962D7: lea ecx, var_30
008962DA: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008962DF: lea eax, var_80
008962E2: push eax
008962E3: lea eax, var_30
008962E6: push eax
008962E7: fld real8 ptr var_000000C8
008962ED: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008962F2: push eax
008962F3: call 007A6910h
008962F8: lea eax, var_80
008962FB: push eax
008962FC: push 00000000h
008962FE: call 00410934h ; Erase
00896303: lea eax, var_30
00896306: push eax
00896307: lea eax, var_2C
0089630A: push eax
0089630B: push 00000002h
0089630D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00896312: add esp, 0000000Ch
00896315: jmp 00896879h
0089631A: push 00000000h
0089631C: push 00000000h
0089631E: mov eax, [ebp+08h]
00896321: mov eax, [eax]
00896323: push [ebp+08h]
00896326: call [eax+0000033Ch]
0089632C: push eax
0089632D: lea eax, var_34
00896330: push eax
00896331: call 00410A84h ; Set (object)
00896336: push eax
00896337: lea eax, var_4C
0089633A: push eax
0089633B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896340: add esp, 00000010h
00896343: push eax
00896344: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00896349: dec eax
0089634A: neg eax
0089634C: sbb eax, eax
0089634E: inc eax
0089634F: neg eax
00896351: mov var_000000CC, ax
00896358: lea ecx, var_34
0089635B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00896360: lea ecx, var_4C
00896363: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00896368: movsx eax, word ptr var_000000CC
0089636F: test eax, eax
00896371: jz 00896797h
00896377: mov var_00000088, 00000001h
00896381: mov var_00000090, 00000002h
0089638B: cmp [008F2010h], 00000000h
00896392: jnz 8963AFh
00896394: push 008F2010h
00896399: push 00433984h
0089639E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008963A3: mov var_00000234, 008F2010h
008963AD: jmp 8963B9h
008963AF: mov var_00000234, 008F2010h
008963B9: push 00000000h
008963BB: push 00000001h
008963BD: push 00440E48h
008963C2: push 00000000h
008963C4: push 00000018h
008963C6: mov eax, var_00000234
008963CC: mov eax, [eax]
008963CE: mov ecx, var_00000234
008963D4: mov ecx, [ecx]
008963D6: mov ecx, [ecx]
008963D8: push eax
008963D9: call [ecx+00000550h]
008963DF: push eax
008963E0: lea eax, var_34
008963E3: push eax
008963E4: call 00410A84h ; Set (object)
008963E9: push eax
008963EA: lea eax, var_4C
008963ED: push eax
008963EE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008963F3: add esp, 00000010h
008963F6: push eax
008963F7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008963FC: push eax
008963FD: lea eax, var_38
00896400: push eax
00896401: call 00410A84h ; Set (object)
00896406: push eax
00896407: lea eax, var_5C
0089640A: push eax
0089640B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896410: add esp, 00000010h
00896413: push eax
00896414: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00896419: mov var_00000098, eax
0089641F: mov var_000000A0, 00000003h
00896429: mov var_000000A8, 00000001h
00896433: mov var_000000B0, 00000002h
0089643D: lea eax, var_00000090
00896443: push eax
00896444: lea eax, var_000000A0
0089644A: push eax
0089644B: lea eax, var_000000B0
00896451: push eax
00896452: lea eax, var_0000012C
00896458: push eax
00896459: lea eax, var_0000011C
0089645F: push eax
00896460: lea eax, var_24
00896463: push eax
00896464: call 00410A3Ch ; For
00896469: mov var_00000204, eax
0089646F: lea eax, var_38
00896472: push eax
00896473: lea eax, var_34
00896476: push eax
00896477: push 00000002h
00896479: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089647E: add esp, 0000000Ch
00896481: lea eax, var_5C
00896484: push eax
00896485: lea eax, var_4C
00896488: push eax
00896489: push 00000002h
0089648B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00896490: add esp, 0000000Ch
00896493: jmp 00896785h
00896498: lea eax, var_24
0089649B: mov var_00000088, eax
008964A1: mov var_00000090, 0000400Ch
008964AB: cmp [008F2010h], 00000000h
008964B2: jnz 8964CFh
008964B4: push 008F2010h
008964B9: push 00433984h
008964BE: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008964C3: mov var_00000238, 008F2010h
008964CD: jmp 8964D9h
008964CF: mov var_00000238, 008F2010h
008964D9: push 00000000h
008964DB: push 00000004h
008964DD: push 00440E58h
008964E2: push 00000010h
008964E4: pop eax
008964E5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008964EA: lea esi, var_00000090
008964F0: mov edi, esp
008964F2: movsd 
008964F3: movsd 
008964F4: movsd 
008964F5: movsd 
008964F6: push 00000001h
008964F8: push 00000000h
008964FA: push 00440E48h
008964FF: push 00000000h
00896501: push 00000018h
00896503: mov eax, var_00000238
00896509: mov eax, [eax]
0089650B: mov ecx, var_00000238
00896511: mov ecx, [ecx]
00896513: mov ecx, [ecx]
00896515: push eax
00896516: call [ecx+00000550h]
0089651C: push eax
0089651D: lea eax, var_34
00896520: push eax
00896521: call 00410A84h ; Set (object)
00896526: push eax
00896527: lea eax, var_4C
0089652A: push eax
0089652B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896530: add esp, 00000010h
00896533: push eax
00896534: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00896539: push eax
0089653A: lea eax, var_38
0089653D: push eax
0089653E: call 00410A84h ; Set (object)
00896543: push eax
00896544: lea eax, var_5C
00896547: push eax
00896548: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089654D: add esp, 00000020h
00896550: push eax
00896551: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00896556: push eax
00896557: lea eax, var_3C
0089655A: push eax
0089655B: call 00410A84h ; Set (object)
00896560: push eax
00896561: lea eax, var_6C
00896564: push eax
00896565: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089656A: add esp, 00000010h
0089656D: push eax
0089656E: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00896573: sub ax, FFFFh
00896577: neg ax
0089657A: sbb eax, eax
0089657C: inc eax
0089657D: neg eax
0089657F: mov var_000000CC, ax
00896586: lea eax, var_3C
00896589: push eax
0089658A: lea eax, var_38
0089658D: push eax
0089658E: lea eax, var_34
00896591: push eax
00896592: push 00000003h
00896594: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00896599: add esp, 00000010h
0089659C: lea eax, var_6C
0089659F: push eax
008965A0: lea eax, var_5C
008965A3: push eax
008965A4: lea eax, var_4C
008965A7: push eax
008965A8: push 00000003h
008965AA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008965AF: add esp, 00000010h
008965B2: movsx eax, word ptr var_000000CC
008965B9: test eax, eax
008965BB: jz 00896768h
008965C1: lea eax, var_24
008965C4: mov var_00000088, eax
008965CA: mov var_00000090, 0000400Ch
008965D4: cmp [008F2010h], 00000000h
008965DB: jnz 8965F8h
008965DD: push 008F2010h
008965E2: push 00433984h
008965E7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008965EC: mov var_0000023C, 008F2010h
008965F6: jmp 896602h
008965F8: mov var_0000023C, 008F2010h
00896602: push 00000000h
00896604: push 00000014h
00896606: push 00440E58h
0089660B: push 00000010h
0089660D: pop eax
0089660E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00896613: lea esi, var_00000090
00896619: mov edi, esp
0089661B: movsd 
0089661C: movsd 
0089661D: movsd 
0089661E: movsd 
0089661F: push 00000001h
00896621: push 00000000h
00896623: push 00440E48h
00896628: push 00000000h
0089662A: push 00000018h
0089662C: mov eax, var_0000023C
00896632: mov eax, [eax]
00896634: mov ecx, var_0000023C
0089663A: mov ecx, [ecx]
0089663C: mov ecx, [ecx]
0089663E: push eax
0089663F: call [ecx+00000550h]
00896645: push eax
00896646: lea eax, var_34
00896649: push eax
0089664A: call 00410A84h ; Set (object)
0089664F: push eax
00896650: lea eax, var_4C
00896653: push eax
00896654: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896659: add esp, 00000010h
0089665C: push eax
0089665D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00896662: push eax
00896663: lea eax, var_38
00896666: push eax
00896667: call 00410A84h ; Set (object)
0089666C: push eax
0089666D: lea eax, var_5C
00896670: push eax
00896671: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896676: add esp, 00000020h
00896679: push eax
0089667A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089667F: push eax
00896680: lea eax, var_3C
00896683: push eax
00896684: call 00410A84h ; Set (object)
00896689: push eax
0089668A: lea eax, var_6C
0089668D: push eax
0089668E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896693: add esp, 00000010h
00896696: push eax
00896697: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0089669C: mov edx, eax
0089669E: lea ecx, var_2C
008966A1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008966A6: push eax
008966A7: call 004109DCh ; Val(arg_1)
008966AC: fstp real8 ptr var_000000C8
008966B2: push 00000000h
008966B4: push 00000000h
008966B6: push 00000001h
008966B8: push 00000000h
008966BA: lea eax, var_80
008966BD: push eax
008966BE: push 00000010h
008966C0: push 00000880h
008966C5: call 00410946h ; ReDim
008966CA: add esp, 0000001Ch
008966CD: lea eax, var_28
008966D0: mov var_00000098, eax
008966D6: mov var_000000A0, 00004008h
008966E0: lea esi, var_000000A0
008966E6: push 00000000h
008966E8: push var_80
008966EB: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008966F0: mov ecx, eax
008966F2: mov edx, esi
008966F4: call 00410940h ; msvbvm60.dll.__vbaVarZero
008966F9: mov edx, 0043D8B8h ; x99
008966FE: lea ecx, var_30
00896701: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00896706: lea eax, var_80
00896709: push eax
0089670A: lea eax, var_30
0089670D: push eax
0089670E: fld real8 ptr var_000000C8
00896714: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00896719: push eax
0089671A: call 007A6910h
0089671F: lea eax, var_80
00896722: push eax
00896723: push 00000000h
00896725: call 00410934h ; Erase
0089672A: lea eax, var_30
0089672D: push eax
0089672E: lea eax, var_2C
00896731: push eax
00896732: push 00000002h
00896734: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00896739: add esp, 0000000Ch
0089673C: lea eax, var_3C
0089673F: push eax
00896740: lea eax, var_38
00896743: push eax
00896744: lea eax, var_34
00896747: push eax
00896748: push 00000003h
0089674A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089674F: add esp, 00000010h
00896752: lea eax, var_6C
00896755: push eax
00896756: lea eax, var_5C
00896759: push eax
0089675A: lea eax, var_4C
0089675D: push eax
0089675E: push 00000003h
00896760: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00896765: add esp, 00000010h
00896768: lea eax, var_0000012C
0089676E: push eax
0089676F: lea eax, var_0000011C
00896775: push eax
00896776: lea eax, var_24
00896779: push eax
0089677A: call 00410A36h ; Next
0089677F: mov var_00000204, eax
00896785: cmp var_00000204, 00000000h
0089678C: jnz 00896498h
00896792: jmp 00896879h
00896797: lea eax, var_2C
0089679A: push eax
0089679B: mov eax, [ebp+08h]
0089679E: mov eax, [eax]
008967A0: push [ebp+08h]
008967A3: call [eax+000001C0h]
008967A9: fclex 
008967AB: mov var_000000CC, eax
008967B1: cmp var_000000CC, 00000000h
008967B8: jnl 8967DAh
008967BA: push 000001C0h
008967BF: push 004485C8h
008967C4: push [ebp+08h]
008967C7: push var_000000CC
008967CD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008967D2: mov var_00000240, eax
008967D8: jmp 8967E1h
008967DA: and var_00000240, 00000000h
008967E1: push var_2C
008967E4: call 004109DCh ; Val(arg_1)
008967E9: fstp real8 ptr var_000000C8
008967EF: push 00000000h
008967F1: push 00000000h
008967F3: push 00000001h
008967F5: push 00000000h
008967F7: lea eax, var_80
008967FA: push eax
008967FB: push 00000010h
008967FD: push 00000880h
00896802: call 00410946h ; ReDim
00896807: add esp, 0000001Ch
0089680A: lea eax, var_28
0089680D: mov var_00000088, eax
00896813: mov var_00000090, 00004008h
0089681D: lea esi, var_00000090
00896823: push 00000000h
00896825: push var_80
00896828: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089682D: mov ecx, eax
0089682F: mov edx, esi
00896831: call 00410940h ; msvbvm60.dll.__vbaVarZero
00896836: mov edx, 0043D8B8h ; x99
0089683B: lea ecx, var_30
0089683E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00896843: lea eax, var_80
00896846: push eax
00896847: lea eax, var_30
0089684A: push eax
0089684B: fld real8 ptr var_000000C8
00896851: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00896856: push eax
00896857: call 007A6910h
0089685C: lea eax, var_80
0089685F: push eax
00896860: push 00000000h
00896862: call 00410934h ; Erase
00896867: lea eax, var_30
0089686A: push eax
0089686B: lea eax, var_2C
0089686E: push eax
0089686F: push 00000002h
00896871: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00896876: add esp, 0000000Ch
00896879: jmp 00898663h
0089687E: mov var_00000088, 00000001h
00896888: mov var_00000090, 00000002h
00896892: push 00000000h
00896894: push 00000001h
00896896: push 00440E48h
0089689B: push 00000000h
0089689D: push 00000018h
0089689F: mov eax, [ebp+08h]
008968A2: mov eax, [eax]
008968A4: push [ebp+08h]
008968A7: call [eax+00000328h]
008968AD: push eax
008968AE: lea eax, var_34
008968B1: push eax
008968B2: call 00410A84h ; Set (object)
008968B7: push eax
008968B8: lea eax, var_4C
008968BB: push eax
008968BC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008968C1: add esp, 00000010h
008968C4: push eax
008968C5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008968CA: push eax
008968CB: lea eax, var_38
008968CE: push eax
008968CF: call 00410A84h ; Set (object)
008968D4: push eax
008968D5: lea eax, var_5C
008968D8: push eax
008968D9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008968DE: add esp, 00000010h
008968E1: push eax
008968E2: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008968E7: mov var_00000098, eax
008968ED: mov var_000000A0, 00000003h
008968F7: mov var_000000A8, 00000001h
00896901: mov var_000000B0, 00000002h
0089690B: lea eax, var_00000090
00896911: push eax
00896912: lea eax, var_000000A0
00896918: push eax
00896919: lea eax, var_000000B0
0089691F: push eax
00896920: lea eax, var_0000014C
00896926: push eax
00896927: lea eax, var_0000013C
0089692D: push eax
0089692E: lea eax, var_24
00896931: push eax
00896932: call 00410A3Ch ; For
00896937: mov var_00000208, eax
0089693D: lea eax, var_38
00896940: push eax
00896941: lea eax, var_34
00896944: push eax
00896945: push 00000002h
00896947: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089694C: add esp, 0000000Ch
0089694F: lea eax, var_5C
00896952: push eax
00896953: lea eax, var_4C
00896956: push eax
00896957: push 00000002h
00896959: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089695E: add esp, 0000000Ch
00896961: jmp 00896BADh
00896966: lea eax, var_24
00896969: mov var_00000088, eax
0089696F: mov var_00000090, 0000400Ch
00896979: push 00000000h
0089697B: push 00000004h
0089697D: push 00440E58h
00896982: push 00000010h
00896984: pop eax
00896985: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089698A: lea esi, var_00000090
00896990: mov edi, esp
00896992: movsd 
00896993: movsd 
00896994: movsd 
00896995: movsd 
00896996: push 00000001h
00896998: push 00000000h
0089699A: push 00440E48h
0089699F: push 00000000h
008969A1: push 00000018h
008969A3: mov eax, [ebp+08h]
008969A6: mov eax, [eax]
008969A8: push [ebp+08h]
008969AB: call [eax+00000328h]
008969B1: push eax
008969B2: lea eax, var_34
008969B5: push eax
008969B6: call 00410A84h ; Set (object)
008969BB: push eax
008969BC: lea eax, var_4C
008969BF: push eax
008969C0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008969C5: add esp, 00000010h
008969C8: push eax
008969C9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008969CE: push eax
008969CF: lea eax, var_38
008969D2: push eax
008969D3: call 00410A84h ; Set (object)
008969D8: push eax
008969D9: lea eax, var_5C
008969DC: push eax
008969DD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008969E2: add esp, 00000020h
008969E5: push eax
008969E6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008969EB: push eax
008969EC: lea eax, var_3C
008969EF: push eax
008969F0: call 00410A84h ; Set (object)
008969F5: push eax
008969F6: lea eax, var_6C
008969F9: push eax
008969FA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008969FF: add esp, 00000010h
00896A02: push eax
00896A03: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00896A08: sub ax, FFFFh
00896A0C: neg ax
00896A0F: sbb eax, eax
00896A11: inc eax
00896A12: neg eax
00896A14: mov var_000000CC, ax
00896A1B: lea eax, var_3C
00896A1E: push eax
00896A1F: lea eax, var_38
00896A22: push eax
00896A23: lea eax, var_34
00896A26: push eax
00896A27: push 00000003h
00896A29: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00896A2E: add esp, 00000010h
00896A31: lea eax, var_6C
00896A34: push eax
00896A35: lea eax, var_5C
00896A38: push eax
00896A39: lea eax, var_4C
00896A3C: push eax
00896A3D: push 00000003h
00896A3F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00896A44: add esp, 00000010h
00896A47: movsx eax, word ptr var_000000CC
00896A4E: test eax, eax
00896A50: jz 00896B90h
00896A56: mov var_00000098, 00000001h
00896A60: mov var_000000A0, 00000003h
00896A6A: lea eax, var_24
00896A6D: mov var_00000088, eax
00896A73: mov var_00000090, 0000400Ch
00896A7D: push var_28
00896A80: push 00000010h
00896A82: pop eax
00896A83: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00896A88: lea esi, var_000000A0
00896A8E: mov edi, esp
00896A90: movsd 
00896A91: movsd 
00896A92: movsd 
00896A93: movsd 
00896A94: push 00000001h
00896A96: push 00000010h
00896A98: push 00440E58h
00896A9D: push 00000010h
00896A9F: pop eax
00896AA0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00896AA5: lea esi, var_00000090
00896AAB: mov edi, esp
00896AAD: movsd 
00896AAE: movsd 
00896AAF: movsd 
00896AB0: movsd 
00896AB1: push 00000001h
00896AB3: push 00000000h
00896AB5: push 00440E48h
00896ABA: push 00000000h
00896ABC: push 00000018h
00896ABE: mov eax, [ebp+08h]
00896AC1: mov eax, [eax]
00896AC3: push [ebp+08h]
00896AC6: call [eax+00000328h]
00896ACC: push eax
00896ACD: lea eax, var_34
00896AD0: push eax
00896AD1: call 00410A84h ; Set (object)
00896AD6: push eax
00896AD7: lea eax, var_4C
00896ADA: push eax
00896ADB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896AE0: add esp, 00000010h
00896AE3: push eax
00896AE4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00896AE9: push eax
00896AEA: lea eax, var_38
00896AED: push eax
00896AEE: call 00410A84h ; Set (object)
00896AF3: push eax
00896AF4: lea eax, var_5C
00896AF7: push eax
00896AF8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896AFD: add esp, 00000020h
00896B00: push eax
00896B01: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00896B06: push eax
00896B07: lea eax, var_3C
00896B0A: push eax
00896B0B: call 00410A84h ; Set (object)
00896B10: push eax
00896B11: lea eax, var_6C
00896B14: push eax
00896B15: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896B1A: add esp, 00000020h
00896B1D: push eax
00896B1E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00896B23: mov edx, eax
00896B25: lea ecx, var_2C
00896B28: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00896B2D: push eax
00896B2E: call 00410A18h ; &
00896B33: mov edx, eax
00896B35: lea ecx, var_30
00896B38: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00896B3D: push eax
00896B3E: push 004413D8h
00896B43: call 00410A18h ; &
00896B48: mov edx, eax
00896B4A: lea ecx, var_28
00896B4D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00896B52: lea eax, var_30
00896B55: push eax
00896B56: lea eax, var_2C
00896B59: push eax
00896B5A: push 00000002h
00896B5C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00896B61: add esp, 0000000Ch
00896B64: lea eax, var_3C
00896B67: push eax
00896B68: lea eax, var_38
00896B6B: push eax
00896B6C: lea eax, var_34
00896B6F: push eax
00896B70: push 00000003h
00896B72: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00896B77: add esp, 00000010h
00896B7A: lea eax, var_6C
00896B7D: push eax
00896B7E: lea eax, var_5C
00896B81: push eax
00896B82: lea eax, var_4C
00896B85: push eax
00896B86: push 00000003h
00896B88: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00896B8D: add esp, 00000010h
00896B90: lea eax, var_0000014C
00896B96: push eax
00896B97: lea eax, var_0000013C
00896B9D: push eax
00896B9E: lea eax, var_24
00896BA1: push eax
00896BA2: call 00410A36h ; Next
00896BA7: mov var_00000208, eax
00896BAD: cmp var_00000208, 00000000h
00896BB4: jnz 00896966h
00896BBA: push var_28
00896BBD: push 00000000h
00896BBF: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00896BC4: test eax, eax
00896BC6: jnz 00896C4Eh
00896BCC: mov var_74, 80020004h
00896BD3: mov var_7C, 0000000Ah
00896BDA: mov var_64, 80020004h
00896BE1: mov var_6C, 0000000Ah
00896BE8: mov var_54, 80020004h
00896BEF: mov var_5C, 0000000Ah
00896BF6: mov var_00000088, 004598D8h ; No contact(s) selected
00896C00: mov var_00000090, 00000008h
00896C0A: lea edx, var_00000090
00896C10: lea ecx, var_4C
00896C13: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00896C18: lea eax, var_7C
00896C1B: push eax
00896C1C: lea eax, var_6C
00896C1F: push eax
00896C20: lea eax, var_5C
00896C23: push eax
00896C24: push 00000010h
00896C26: lea eax, var_4C
00896C29: push eax
00896C2A: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00896C2F: lea eax, var_7C
00896C32: push eax
00896C33: lea eax, var_6C
00896C36: push eax
00896C37: lea eax, var_5C
00896C3A: push eax
00896C3B: lea eax, var_4C
00896C3E: push eax
00896C3F: push 00000004h
00896C41: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00896C46: add esp, 00000014h
00896C49: jmp 00898663h
00896C4E: cmp word ptr [008F2430h], FFFFh
00896C56: jnz 008971C0h
00896C5C: push 00000000h
00896C5E: push 00000000h
00896C60: mov eax, [ebp+08h]
00896C63: mov eax, [eax]
00896C65: push [ebp+08h]
00896C68: call [eax+0000033Ch]
00896C6E: push eax
00896C6F: lea eax, var_34
00896C72: push eax
00896C73: call 00410A84h ; Set (object)
00896C78: push eax
00896C79: lea eax, var_4C
00896C7C: push eax
00896C7D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896C82: add esp, 00000010h
00896C85: push eax
00896C86: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00896C8B: dec eax
00896C8C: neg eax
00896C8E: sbb eax, eax
00896C90: inc eax
00896C91: neg eax
00896C93: mov var_000000CC, ax
00896C9A: lea ecx, var_34
00896C9D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00896CA2: lea ecx, var_4C
00896CA5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00896CAA: movsx eax, word ptr var_000000CC
00896CB1: test eax, eax
00896CB3: jz 008970D9h
00896CB9: mov var_00000088, 00000001h
00896CC3: mov var_00000090, 00000002h
00896CCD: cmp [008F2010h], 00000000h
00896CD4: jnz 896CF1h
00896CD6: push 008F2010h
00896CDB: push 00433984h
00896CE0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00896CE5: mov var_00000244, 008F2010h
00896CEF: jmp 896CFBh
00896CF1: mov var_00000244, 008F2010h
00896CFB: push 00000000h
00896CFD: push 00000001h
00896CFF: push 00440E48h
00896D04: push 00000000h
00896D06: push 00000018h
00896D08: mov eax, var_00000244
00896D0E: mov eax, [eax]
00896D10: mov ecx, var_00000244
00896D16: mov ecx, [ecx]
00896D18: mov ecx, [ecx]
00896D1A: push eax
00896D1B: call [ecx+0000054Ch]
00896D21: push eax
00896D22: lea eax, var_34
00896D25: push eax
00896D26: call 00410A84h ; Set (object)
00896D2B: push eax
00896D2C: lea eax, var_4C
00896D2F: push eax
00896D30: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896D35: add esp, 00000010h
00896D38: push eax
00896D39: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00896D3E: push eax
00896D3F: lea eax, var_38
00896D42: push eax
00896D43: call 00410A84h ; Set (object)
00896D48: push eax
00896D49: lea eax, var_5C
00896D4C: push eax
00896D4D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896D52: add esp, 00000010h
00896D55: push eax
00896D56: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00896D5B: mov var_00000098, eax
00896D61: mov var_000000A0, 00000003h
00896D6B: mov var_000000A8, 00000001h
00896D75: mov var_000000B0, 00000002h
00896D7F: lea eax, var_00000090
00896D85: push eax
00896D86: lea eax, var_000000A0
00896D8C: push eax
00896D8D: lea eax, var_000000B0
00896D93: push eax
00896D94: lea eax, var_0000016C
00896D9A: push eax
00896D9B: lea eax, var_0000015C
00896DA1: push eax
00896DA2: lea eax, var_24
00896DA5: push eax
00896DA6: call 00410A3Ch ; For
00896DAB: mov var_0000020C, eax
00896DB1: lea eax, var_38
00896DB4: push eax
00896DB5: lea eax, var_34
00896DB8: push eax
00896DB9: push 00000002h
00896DBB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00896DC0: add esp, 0000000Ch
00896DC3: lea eax, var_5C
00896DC6: push eax
00896DC7: lea eax, var_4C
00896DCA: push eax
00896DCB: push 00000002h
00896DCD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00896DD2: add esp, 0000000Ch
00896DD5: jmp 008970C7h
00896DDA: lea eax, var_24
00896DDD: mov var_00000088, eax
00896DE3: mov var_00000090, 0000400Ch
00896DED: cmp [008F2010h], 00000000h
00896DF4: jnz 896E11h
00896DF6: push 008F2010h
00896DFB: push 00433984h
00896E00: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00896E05: mov var_00000248, 008F2010h
00896E0F: jmp 896E1Bh
00896E11: mov var_00000248, 008F2010h
00896E1B: push 00000000h
00896E1D: push 00000004h
00896E1F: push 00440E58h
00896E24: push 00000010h
00896E26: pop eax
00896E27: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00896E2C: lea esi, var_00000090
00896E32: mov edi, esp
00896E34: movsd 
00896E35: movsd 
00896E36: movsd 
00896E37: movsd 
00896E38: push 00000001h
00896E3A: push 00000000h
00896E3C: push 00440E48h
00896E41: push 00000000h
00896E43: push 00000018h
00896E45: mov eax, var_00000248
00896E4B: mov eax, [eax]
00896E4D: mov ecx, var_00000248
00896E53: mov ecx, [ecx]
00896E55: mov ecx, [ecx]
00896E57: push eax
00896E58: call [ecx+0000054Ch]
00896E5E: push eax
00896E5F: lea eax, var_34
00896E62: push eax
00896E63: call 00410A84h ; Set (object)
00896E68: push eax
00896E69: lea eax, var_4C
00896E6C: push eax
00896E6D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896E72: add esp, 00000010h
00896E75: push eax
00896E76: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00896E7B: push eax
00896E7C: lea eax, var_38
00896E7F: push eax
00896E80: call 00410A84h ; Set (object)
00896E85: push eax
00896E86: lea eax, var_5C
00896E89: push eax
00896E8A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896E8F: add esp, 00000020h
00896E92: push eax
00896E93: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00896E98: push eax
00896E99: lea eax, var_3C
00896E9C: push eax
00896E9D: call 00410A84h ; Set (object)
00896EA2: push eax
00896EA3: lea eax, var_6C
00896EA6: push eax
00896EA7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896EAC: add esp, 00000010h
00896EAF: push eax
00896EB0: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00896EB5: sub ax, FFFFh
00896EB9: neg ax
00896EBC: sbb eax, eax
00896EBE: inc eax
00896EBF: neg eax
00896EC1: mov var_000000CC, ax
00896EC8: lea eax, var_3C
00896ECB: push eax
00896ECC: lea eax, var_38
00896ECF: push eax
00896ED0: lea eax, var_34
00896ED3: push eax
00896ED4: push 00000003h
00896ED6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00896EDB: add esp, 00000010h
00896EDE: lea eax, var_6C
00896EE1: push eax
00896EE2: lea eax, var_5C
00896EE5: push eax
00896EE6: lea eax, var_4C
00896EE9: push eax
00896EEA: push 00000003h
00896EEC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00896EF1: add esp, 00000010h
00896EF4: movsx eax, word ptr var_000000CC
00896EFB: test eax, eax
00896EFD: jz 008970AAh
00896F03: lea eax, var_24
00896F06: mov var_00000088, eax
00896F0C: mov var_00000090, 0000400Ch
00896F16: cmp [008F2010h], 00000000h
00896F1D: jnz 896F3Ah
00896F1F: push 008F2010h
00896F24: push 00433984h
00896F29: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00896F2E: mov var_0000024C, 008F2010h
00896F38: jmp 896F44h
00896F3A: mov var_0000024C, 008F2010h
00896F44: push 00000000h
00896F46: push 00000014h
00896F48: push 00440E58h
00896F4D: push 00000010h
00896F4F: pop eax
00896F50: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00896F55: lea esi, var_00000090
00896F5B: mov edi, esp
00896F5D: movsd 
00896F5E: movsd 
00896F5F: movsd 
00896F60: movsd 
00896F61: push 00000001h
00896F63: push 00000000h
00896F65: push 00440E48h
00896F6A: push 00000000h
00896F6C: push 00000018h
00896F6E: mov eax, var_0000024C
00896F74: mov eax, [eax]
00896F76: mov ecx, var_0000024C
00896F7C: mov ecx, [ecx]
00896F7E: mov ecx, [ecx]
00896F80: push eax
00896F81: call [ecx+0000054Ch]
00896F87: push eax
00896F88: lea eax, var_34
00896F8B: push eax
00896F8C: call 00410A84h ; Set (object)
00896F91: push eax
00896F92: lea eax, var_4C
00896F95: push eax
00896F96: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896F9B: add esp, 00000010h
00896F9E: push eax
00896F9F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00896FA4: push eax
00896FA5: lea eax, var_38
00896FA8: push eax
00896FA9: call 00410A84h ; Set (object)
00896FAE: push eax
00896FAF: lea eax, var_5C
00896FB2: push eax
00896FB3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896FB8: add esp, 00000020h
00896FBB: push eax
00896FBC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00896FC1: push eax
00896FC2: lea eax, var_3C
00896FC5: push eax
00896FC6: call 00410A84h ; Set (object)
00896FCB: push eax
00896FCC: lea eax, var_6C
00896FCF: push eax
00896FD0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00896FD5: add esp, 00000010h
00896FD8: push eax
00896FD9: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00896FDE: mov edx, eax
00896FE0: lea ecx, var_2C
00896FE3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00896FE8: push eax
00896FE9: call 004109DCh ; Val(arg_1)
00896FEE: fstp real8 ptr var_000000C8
00896FF4: push 00000000h
00896FF6: push 00000000h
00896FF8: push 00000001h
00896FFA: push 00000000h
00896FFC: lea eax, var_80
00896FFF: push eax
00897000: push 00000010h
00897002: push 00000880h
00897007: call 00410946h ; ReDim
0089700C: add esp, 0000001Ch
0089700F: lea eax, var_28
00897012: mov var_00000098, eax
00897018: mov var_000000A0, 00004008h
00897022: lea esi, var_000000A0
00897028: push 00000000h
0089702A: push var_80
0089702D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00897032: mov ecx, eax
00897034: mov edx, esi
00897036: call 00410940h ; msvbvm60.dll.__vbaVarZero
0089703B: mov edx, 0043D8C4h ; x100
00897040: lea ecx, var_30
00897043: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00897048: lea eax, var_80
0089704B: push eax
0089704C: lea eax, var_30
0089704F: push eax
00897050: fld real8 ptr var_000000C8
00897056: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0089705B: push eax
0089705C: call 007A6910h
00897061: lea eax, var_80
00897064: push eax
00897065: push 00000000h
00897067: call 00410934h ; Erase
0089706C: lea eax, var_30
0089706F: push eax
00897070: lea eax, var_2C
00897073: push eax
00897074: push 00000002h
00897076: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089707B: add esp, 0000000Ch
0089707E: lea eax, var_3C
00897081: push eax
00897082: lea eax, var_38
00897085: push eax
00897086: lea eax, var_34
00897089: push eax
0089708A: push 00000003h
0089708C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00897091: add esp, 00000010h
00897094: lea eax, var_6C
00897097: push eax
00897098: lea eax, var_5C
0089709B: push eax
0089709C: lea eax, var_4C
0089709F: push eax
008970A0: push 00000003h
008970A2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008970A7: add esp, 00000010h
008970AA: lea eax, var_0000016C
008970B0: push eax
008970B1: lea eax, var_0000015C
008970B7: push eax
008970B8: lea eax, var_24
008970BB: push eax
008970BC: call 00410A36h ; Next
008970C1: mov var_0000020C, eax
008970C7: cmp var_0000020C, 00000000h
008970CE: jnz 00896DDAh
008970D4: jmp 008971BBh
008970D9: lea eax, var_2C
008970DC: push eax
008970DD: mov eax, [ebp+08h]
008970E0: mov eax, [eax]
008970E2: push [ebp+08h]
008970E5: call [eax+000001C0h]
008970EB: fclex 
008970ED: mov var_000000CC, eax
008970F3: cmp var_000000CC, 00000000h
008970FA: jnl 89711Ch
008970FC: push 000001C0h
00897101: push 004485C8h
00897106: push [ebp+08h]
00897109: push var_000000CC
0089710F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00897114: mov var_00000250, eax
0089711A: jmp 897123h
0089711C: and var_00000250, 00000000h
00897123: push var_2C
00897126: call 004109DCh ; Val(arg_1)
0089712B: fstp real8 ptr var_000000C8
00897131: push 00000000h
00897133: push 00000000h
00897135: push 00000001h
00897137: push 00000000h
00897139: lea eax, var_80
0089713C: push eax
0089713D: push 00000010h
0089713F: push 00000880h
00897144: call 00410946h ; ReDim
00897149: add esp, 0000001Ch
0089714C: lea eax, var_28
0089714F: mov var_00000088, eax
00897155: mov var_00000090, 00004008h
0089715F: lea esi, var_00000090
00897165: push 00000000h
00897167: push var_80
0089716A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089716F: mov ecx, eax
00897171: mov edx, esi
00897173: call 00410940h ; msvbvm60.dll.__vbaVarZero
00897178: mov edx, 0043D8C4h ; x100
0089717D: lea ecx, var_30
00897180: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00897185: lea eax, var_80
00897188: push eax
00897189: lea eax, var_30
0089718C: push eax
0089718D: fld real8 ptr var_000000C8
00897193: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00897198: push eax
00897199: call 007A6910h
0089719E: lea eax, var_80
008971A1: push eax
008971A2: push 00000000h
008971A4: call 00410934h ; Erase
008971A9: lea eax, var_30
008971AC: push eax
008971AD: lea eax, var_2C
008971B0: push eax
008971B1: push 00000002h
008971B3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008971B8: add esp, 0000000Ch
008971BB: jmp 0089771Fh
008971C0: push 00000000h
008971C2: push 00000000h
008971C4: mov eax, [ebp+08h]
008971C7: mov eax, [eax]
008971C9: push [ebp+08h]
008971CC: call [eax+0000033Ch]
008971D2: push eax
008971D3: lea eax, var_34
008971D6: push eax
008971D7: call 00410A84h ; Set (object)
008971DC: push eax
008971DD: lea eax, var_4C
008971E0: push eax
008971E1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008971E6: add esp, 00000010h
008971E9: push eax
008971EA: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008971EF: dec eax
008971F0: neg eax
008971F2: sbb eax, eax
008971F4: inc eax
008971F5: neg eax
008971F7: mov var_000000CC, ax
008971FE: lea ecx, var_34
00897201: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00897206: lea ecx, var_4C
00897209: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0089720E: movsx eax, word ptr var_000000CC
00897215: test eax, eax
00897217: jz 0089763Dh
0089721D: mov var_00000088, 00000001h
00897227: mov var_00000090, 00000002h
00897231: cmp [008F2010h], 00000000h
00897238: jnz 897255h
0089723A: push 008F2010h
0089723F: push 00433984h
00897244: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00897249: mov var_00000254, 008F2010h
00897253: jmp 89725Fh
00897255: mov var_00000254, 008F2010h
0089725F: push 00000000h
00897261: push 00000001h
00897263: push 00440E48h
00897268: push 00000000h
0089726A: push 00000018h
0089726C: mov eax, var_00000254
00897272: mov eax, [eax]
00897274: mov ecx, var_00000254
0089727A: mov ecx, [ecx]
0089727C: mov ecx, [ecx]
0089727E: push eax
0089727F: call [ecx+00000550h]
00897285: push eax
00897286: lea eax, var_34
00897289: push eax
0089728A: call 00410A84h ; Set (object)
0089728F: push eax
00897290: lea eax, var_4C
00897293: push eax
00897294: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00897299: add esp, 00000010h
0089729C: push eax
0089729D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008972A2: push eax
008972A3: lea eax, var_38
008972A6: push eax
008972A7: call 00410A84h ; Set (object)
008972AC: push eax
008972AD: lea eax, var_5C
008972B0: push eax
008972B1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008972B6: add esp, 00000010h
008972B9: push eax
008972BA: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008972BF: mov var_00000098, eax
008972C5: mov var_000000A0, 00000003h
008972CF: mov var_000000A8, 00000001h
008972D9: mov var_000000B0, 00000002h
008972E3: lea eax, var_00000090
008972E9: push eax
008972EA: lea eax, var_000000A0
008972F0: push eax
008972F1: lea eax, var_000000B0
008972F7: push eax
008972F8: lea eax, var_0000018C
008972FE: push eax
008972FF: lea eax, var_0000017C
00897305: push eax
00897306: lea eax, var_24
00897309: push eax
0089730A: call 00410A3Ch ; For
0089730F: mov var_00000210, eax
00897315: lea eax, var_38
00897318: push eax
00897319: lea eax, var_34
0089731C: push eax
0089731D: push 00000002h
0089731F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00897324: add esp, 0000000Ch
00897327: lea eax, var_5C
0089732A: push eax
0089732B: lea eax, var_4C
0089732E: push eax
0089732F: push 00000002h
00897331: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00897336: add esp, 0000000Ch
00897339: jmp 0089762Bh
0089733E: lea eax, var_24
00897341: mov var_00000088, eax
00897347: mov var_00000090, 0000400Ch
00897351: cmp [008F2010h], 00000000h
00897358: jnz 897375h
0089735A: push 008F2010h
0089735F: push 00433984h
00897364: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00897369: mov var_00000258, 008F2010h
00897373: jmp 89737Fh
00897375: mov var_00000258, 008F2010h
0089737F: push 00000000h
00897381: push 00000004h
00897383: push 00440E58h
00897388: push 00000010h
0089738A: pop eax
0089738B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00897390: lea esi, var_00000090
00897396: mov edi, esp
00897398: movsd 
00897399: movsd 
0089739A: movsd 
0089739B: movsd 
0089739C: push 00000001h
0089739E: push 00000000h
008973A0: push 00440E48h
008973A5: push 00000000h
008973A7: push 00000018h
008973A9: mov eax, var_00000258
008973AF: mov eax, [eax]
008973B1: mov ecx, var_00000258
008973B7: mov ecx, [ecx]
008973B9: mov ecx, [ecx]
008973BB: push eax
008973BC: call [ecx+00000550h]
008973C2: push eax
008973C3: lea eax, var_34
008973C6: push eax
008973C7: call 00410A84h ; Set (object)
008973CC: push eax
008973CD: lea eax, var_4C
008973D0: push eax
008973D1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008973D6: add esp, 00000010h
008973D9: push eax
008973DA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008973DF: push eax
008973E0: lea eax, var_38
008973E3: push eax
008973E4: call 00410A84h ; Set (object)
008973E9: push eax
008973EA: lea eax, var_5C
008973ED: push eax
008973EE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008973F3: add esp, 00000020h
008973F6: push eax
008973F7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008973FC: push eax
008973FD: lea eax, var_3C
00897400: push eax
00897401: call 00410A84h ; Set (object)
00897406: push eax
00897407: lea eax, var_6C
0089740A: push eax
0089740B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00897410: add esp, 00000010h
00897413: push eax
00897414: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00897419: sub ax, FFFFh
0089741D: neg ax
00897420: sbb eax, eax
00897422: inc eax
00897423: neg eax
00897425: mov var_000000CC, ax
0089742C: lea eax, var_3C
0089742F: push eax
00897430: lea eax, var_38
00897433: push eax
00897434: lea eax, var_34
00897437: push eax
00897438: push 00000003h
0089743A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089743F: add esp, 00000010h
00897442: lea eax, var_6C
00897445: push eax
00897446: lea eax, var_5C
00897449: push eax
0089744A: lea eax, var_4C
0089744D: push eax
0089744E: push 00000003h
00897450: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00897455: add esp, 00000010h
00897458: movsx eax, word ptr var_000000CC
0089745F: test eax, eax
00897461: jz 0089760Eh
00897467: lea eax, var_24
0089746A: mov var_00000088, eax
00897470: mov var_00000090, 0000400Ch
0089747A: cmp [008F2010h], 00000000h
00897481: jnz 89749Eh
00897483: push 008F2010h
00897488: push 00433984h
0089748D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00897492: mov var_0000025C, 008F2010h
0089749C: jmp 8974A8h
0089749E: mov var_0000025C, 008F2010h
008974A8: push 00000000h
008974AA: push 00000014h
008974AC: push 00440E58h
008974B1: push 00000010h
008974B3: pop eax
008974B4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008974B9: lea esi, var_00000090
008974BF: mov edi, esp
008974C1: movsd 
008974C2: movsd 
008974C3: movsd 
008974C4: movsd 
008974C5: push 00000001h
008974C7: push 00000000h
008974C9: push 00440E48h
008974CE: push 00000000h
008974D0: push 00000018h
008974D2: mov eax, var_0000025C
008974D8: mov eax, [eax]
008974DA: mov ecx, var_0000025C
008974E0: mov ecx, [ecx]
008974E2: mov ecx, [ecx]
008974E4: push eax
008974E5: call [ecx+00000550h]
008974EB: push eax
008974EC: lea eax, var_34
008974EF: push eax
008974F0: call 00410A84h ; Set (object)
008974F5: push eax
008974F6: lea eax, var_4C
008974F9: push eax
008974FA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008974FF: add esp, 00000010h
00897502: push eax
00897503: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00897508: push eax
00897509: lea eax, var_38
0089750C: push eax
0089750D: call 00410A84h ; Set (object)
00897512: push eax
00897513: lea eax, var_5C
00897516: push eax
00897517: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089751C: add esp, 00000020h
0089751F: push eax
00897520: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00897525: push eax
00897526: lea eax, var_3C
00897529: push eax
0089752A: call 00410A84h ; Set (object)
0089752F: push eax
00897530: lea eax, var_6C
00897533: push eax
00897534: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00897539: add esp, 00000010h
0089753C: push eax
0089753D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00897542: mov edx, eax
00897544: lea ecx, var_2C
00897547: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089754C: push eax
0089754D: call 004109DCh ; Val(arg_1)
00897552: fstp real8 ptr var_000000C8
00897558: push 00000000h
0089755A: push 00000000h
0089755C: push 00000001h
0089755E: push 00000000h
00897560: lea eax, var_80
00897563: push eax
00897564: push 00000010h
00897566: push 00000880h
0089756B: call 00410946h ; ReDim
00897570: add esp, 0000001Ch
00897573: lea eax, var_28
00897576: mov var_00000098, eax
0089757C: mov var_000000A0, 00004008h
00897586: lea esi, var_000000A0
0089758C: push 00000000h
0089758E: push var_80
00897591: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00897596: mov ecx, eax
00897598: mov edx, esi
0089759A: call 00410940h ; msvbvm60.dll.__vbaVarZero
0089759F: mov edx, 0043D8C4h ; x100
008975A4: lea ecx, var_30
008975A7: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008975AC: lea eax, var_80
008975AF: push eax
008975B0: lea eax, var_30
008975B3: push eax
008975B4: fld real8 ptr var_000000C8
008975BA: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008975BF: push eax
008975C0: call 007A6910h
008975C5: lea eax, var_80
008975C8: push eax
008975C9: push 00000000h
008975CB: call 00410934h ; Erase
008975D0: lea eax, var_30
008975D3: push eax
008975D4: lea eax, var_2C
008975D7: push eax
008975D8: push 00000002h
008975DA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008975DF: add esp, 0000000Ch
008975E2: lea eax, var_3C
008975E5: push eax
008975E6: lea eax, var_38
008975E9: push eax
008975EA: lea eax, var_34
008975ED: push eax
008975EE: push 00000003h
008975F0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008975F5: add esp, 00000010h
008975F8: lea eax, var_6C
008975FB: push eax
008975FC: lea eax, var_5C
008975FF: push eax
00897600: lea eax, var_4C
00897603: push eax
00897604: push 00000003h
00897606: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089760B: add esp, 00000010h
0089760E: lea eax, var_0000018C
00897614: push eax
00897615: lea eax, var_0000017C
0089761B: push eax
0089761C: lea eax, var_24
0089761F: push eax
00897620: call 00410A36h ; Next
00897625: mov var_00000210, eax
0089762B: cmp var_00000210, 00000000h
00897632: jnz 0089733Eh
00897638: jmp 0089771Fh
0089763D: lea eax, var_2C
00897640: push eax
00897641: mov eax, [ebp+08h]
00897644: mov eax, [eax]
00897646: push [ebp+08h]
00897649: call [eax+000001C0h]
0089764F: fclex 
00897651: mov var_000000CC, eax
00897657: cmp var_000000CC, 00000000h
0089765E: jnl 897680h
00897660: push 000001C0h
00897665: push 004485C8h
0089766A: push [ebp+08h]
0089766D: push var_000000CC
00897673: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00897678: mov var_00000260, eax
0089767E: jmp 897687h
00897680: and var_00000260, 00000000h
00897687: push var_2C
0089768A: call 004109DCh ; Val(arg_1)
0089768F: fstp real8 ptr var_000000C8
00897695: push 00000000h
00897697: push 00000000h
00897699: push 00000001h
0089769B: push 00000000h
0089769D: lea eax, var_80
008976A0: push eax
008976A1: push 00000010h
008976A3: push 00000880h
008976A8: call 00410946h ; ReDim
008976AD: add esp, 0000001Ch
008976B0: lea eax, var_28
008976B3: mov var_00000088, eax
008976B9: mov var_00000090, 00004008h
008976C3: lea esi, var_00000090
008976C9: push 00000000h
008976CB: push var_80
008976CE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008976D3: mov ecx, eax
008976D5: mov edx, esi
008976D7: call 00410940h ; msvbvm60.dll.__vbaVarZero
008976DC: mov edx, 0043D8C4h ; x100
008976E1: lea ecx, var_30
008976E4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008976E9: lea eax, var_80
008976EC: push eax
008976ED: lea eax, var_30
008976F0: push eax
008976F1: fld real8 ptr var_000000C8
008976F7: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008976FC: push eax
008976FD: call 007A6910h
00897702: lea eax, var_80
00897705: push eax
00897706: push 00000000h
00897708: call 00410934h ; Erase
0089770D: lea eax, var_30
00897710: push eax
00897711: lea eax, var_2C
00897714: push eax
00897715: push 00000002h
00897717: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089771C: add esp, 0000000Ch
0089771F: jmp 00898663h
00897724: mov var_00000088, 00000001h
0089772E: mov var_00000090, 00000002h
00897738: push 00000000h
0089773A: push 00000001h
0089773C: push 00440E48h
00897741: push 00000000h
00897743: push 00000018h
00897745: mov eax, [ebp+08h]
00897748: mov eax, [eax]
0089774A: push [ebp+08h]
0089774D: call [eax+00000328h]
00897753: push eax
00897754: lea eax, var_34
00897757: push eax
00897758: call 00410A84h ; Set (object)
0089775D: push eax
0089775E: lea eax, var_4C
00897761: push eax
00897762: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00897767: add esp, 00000010h
0089776A: push eax
0089776B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00897770: push eax
00897771: lea eax, var_38
00897774: push eax
00897775: call 00410A84h ; Set (object)
0089777A: push eax
0089777B: lea eax, var_5C
0089777E: push eax
0089777F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00897784: add esp, 00000010h
00897787: push eax
00897788: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0089778D: mov var_00000098, eax
00897793: mov var_000000A0, 00000003h
0089779D: mov var_000000A8, 00000001h
008977A7: mov var_000000B0, 00000002h
008977B1: lea eax, var_00000090
008977B7: push eax
008977B8: lea eax, var_000000A0
008977BE: push eax
008977BF: lea eax, var_000000B0
008977C5: push eax
008977C6: lea eax, var_000001AC
008977CC: push eax
008977CD: lea eax, var_0000019C
008977D3: push eax
008977D4: lea eax, var_24
008977D7: push eax
008977D8: call 00410A3Ch ; For
008977DD: mov var_00000214, eax
008977E3: lea eax, var_38
008977E6: push eax
008977E7: lea eax, var_34
008977EA: push eax
008977EB: push 00000002h
008977ED: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008977F2: add esp, 0000000Ch
008977F5: lea eax, var_5C
008977F8: push eax
008977F9: lea eax, var_4C
008977FC: push eax
008977FD: push 00000002h
008977FF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00897804: add esp, 0000000Ch
00897807: jmp 00897A53h
0089780C: lea eax, var_24
0089780F: mov var_00000088, eax
00897815: mov var_00000090, 0000400Ch
0089781F: push 00000000h
00897821: push 00000004h
00897823: push 00440E58h
00897828: push 00000010h
0089782A: pop eax
0089782B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00897830: lea esi, var_00000090
00897836: mov edi, esp
00897838: movsd 
00897839: movsd 
0089783A: movsd 
0089783B: movsd 
0089783C: push 00000001h
0089783E: push 00000000h
00897840: push 00440E48h
00897845: push 00000000h
00897847: push 00000018h
00897849: mov eax, [ebp+08h]
0089784C: mov eax, [eax]
0089784E: push [ebp+08h]
00897851: call [eax+00000328h]
00897857: push eax
00897858: lea eax, var_34
0089785B: push eax
0089785C: call 00410A84h ; Set (object)
00897861: push eax
00897862: lea eax, var_4C
00897865: push eax
00897866: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089786B: add esp, 00000010h
0089786E: push eax
0089786F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00897874: push eax
00897875: lea eax, var_38
00897878: push eax
00897879: call 00410A84h ; Set (object)
0089787E: push eax
0089787F: lea eax, var_5C
00897882: push eax
00897883: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00897888: add esp, 00000020h
0089788B: push eax
0089788C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00897891: push eax
00897892: lea eax, var_3C
00897895: push eax
00897896: call 00410A84h ; Set (object)
0089789B: push eax
0089789C: lea eax, var_6C
0089789F: push eax
008978A0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008978A5: add esp, 00000010h
008978A8: push eax
008978A9: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008978AE: sub ax, FFFFh
008978B2: neg ax
008978B5: sbb eax, eax
008978B7: inc eax
008978B8: neg eax
008978BA: mov var_000000CC, ax
008978C1: lea eax, var_3C
008978C4: push eax
008978C5: lea eax, var_38
008978C8: push eax
008978C9: lea eax, var_34
008978CC: push eax
008978CD: push 00000003h
008978CF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008978D4: add esp, 00000010h
008978D7: lea eax, var_6C
008978DA: push eax
008978DB: lea eax, var_5C
008978DE: push eax
008978DF: lea eax, var_4C
008978E2: push eax
008978E3: push 00000003h
008978E5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008978EA: add esp, 00000010h
008978ED: movsx eax, word ptr var_000000CC
008978F4: test eax, eax
008978F6: jz 00897A36h
008978FC: mov var_00000098, 00000001h
00897906: mov var_000000A0, 00000003h
00897910: lea eax, var_24
00897913: mov var_00000088, eax
00897919: mov var_00000090, 0000400Ch
00897923: push var_28
00897926: push 00000010h
00897928: pop eax
00897929: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089792E: lea esi, var_000000A0
00897934: mov edi, esp
00897936: movsd 
00897937: movsd 
00897938: movsd 
00897939: movsd 
0089793A: push 00000001h
0089793C: push 00000010h
0089793E: push 00440E58h
00897943: push 00000010h
00897945: pop eax
00897946: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089794B: lea esi, var_00000090
00897951: mov edi, esp
00897953: movsd 
00897954: movsd 
00897955: movsd 
00897956: movsd 
00897957: push 00000001h
00897959: push 00000000h
0089795B: push 00440E48h
00897960: push 00000000h
00897962: push 00000018h
00897964: mov eax, [ebp+08h]
00897967: mov eax, [eax]
00897969: push [ebp+08h]
0089796C: call [eax+00000328h]
00897972: push eax
00897973: lea eax, var_34
00897976: push eax
00897977: call 00410A84h ; Set (object)
0089797C: push eax
0089797D: lea eax, var_4C
00897980: push eax
00897981: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00897986: add esp, 00000010h
00897989: push eax
0089798A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089798F: push eax
00897990: lea eax, var_38
00897993: push eax
00897994: call 00410A84h ; Set (object)
00897999: push eax
0089799A: lea eax, var_5C
0089799D: push eax
0089799E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008979A3: add esp, 00000020h
008979A6: push eax
008979A7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008979AC: push eax
008979AD: lea eax, var_3C
008979B0: push eax
008979B1: call 00410A84h ; Set (object)
008979B6: push eax
008979B7: lea eax, var_6C
008979BA: push eax
008979BB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008979C0: add esp, 00000020h
008979C3: push eax
008979C4: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008979C9: mov edx, eax
008979CB: lea ecx, var_2C
008979CE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008979D3: push eax
008979D4: call 00410A18h ; &
008979D9: mov edx, eax
008979DB: lea ecx, var_30
008979DE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008979E3: push eax
008979E4: push 004413D8h
008979E9: call 00410A18h ; &
008979EE: mov edx, eax
008979F0: lea ecx, var_28
008979F3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008979F8: lea eax, var_30
008979FB: push eax
008979FC: lea eax, var_2C
008979FF: push eax
00897A00: push 00000002h
00897A02: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00897A07: add esp, 0000000Ch
00897A0A: lea eax, var_3C
00897A0D: push eax
00897A0E: lea eax, var_38
00897A11: push eax
00897A12: lea eax, var_34
00897A15: push eax
00897A16: push 00000003h
00897A18: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00897A1D: add esp, 00000010h
00897A20: lea eax, var_6C
00897A23: push eax
00897A24: lea eax, var_5C
00897A27: push eax
00897A28: lea eax, var_4C
00897A2B: push eax
00897A2C: push 00000003h
00897A2E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00897A33: add esp, 00000010h
00897A36: lea eax, var_000001AC
00897A3C: push eax
00897A3D: lea eax, var_0000019C
00897A43: push eax
00897A44: lea eax, var_24
00897A47: push eax
00897A48: call 00410A36h ; Next
00897A4D: mov var_00000214, eax
00897A53: cmp var_00000214, 00000000h
00897A5A: jnz 0089780Ch
00897A60: push var_28
00897A63: push 00000000h
00897A65: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00897A6A: test eax, eax
00897A6C: jnz 00897AF4h
00897A72: mov var_74, 80020004h
00897A79: mov var_7C, 0000000Ah
00897A80: mov var_64, 80020004h
00897A87: mov var_6C, 0000000Ah
00897A8E: mov var_54, 80020004h
00897A95: mov var_5C, 0000000Ah
00897A9C: mov var_00000088, 004598D8h ; No contact(s) selected
00897AA6: mov var_00000090, 00000008h
00897AB0: lea edx, var_00000090
00897AB6: lea ecx, var_4C
00897AB9: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00897ABE: lea eax, var_7C
00897AC1: push eax
00897AC2: lea eax, var_6C
00897AC5: push eax
00897AC6: lea eax, var_5C
00897AC9: push eax
00897ACA: push 00000010h
00897ACC: lea eax, var_4C
00897ACF: push eax
00897AD0: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00897AD5: lea eax, var_7C
00897AD8: push eax
00897AD9: lea eax, var_6C
00897ADC: push eax
00897ADD: lea eax, var_5C
00897AE0: push eax
00897AE1: lea eax, var_4C
00897AE4: push eax
00897AE5: push 00000004h
00897AE7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00897AEC: add esp, 00000014h
00897AEF: jmp 00898663h
00897AF4: mov var_74, 80020004h
00897AFB: mov var_7C, 0000000Ah
00897B02: mov var_64, 80020004h
00897B09: mov var_6C, 0000000Ah
00897B10: mov var_54, 80020004h
00897B17: mov var_5C, 0000000Ah
00897B1E: mov var_00000088, 00459930h ; Do you really want to open conversation with the selected contact(s)?
00897B28: mov var_00000090, 00000008h
00897B32: lea edx, var_00000090
00897B38: lea ecx, var_4C
00897B3B: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00897B40: lea eax, var_7C
00897B43: push eax
00897B44: lea eax, var_6C
00897B47: push eax
00897B48: lea eax, var_5C
00897B4B: push eax
00897B4C: push 00000034h
00897B4E: lea eax, var_4C
00897B51: push eax
00897B52: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00897B57: sub eax, 00000007h
00897B5A: neg eax
00897B5C: sbb eax, eax
00897B5E: inc eax
00897B5F: neg eax
00897B61: mov var_000000CC, ax
00897B68: lea eax, var_7C
00897B6B: push eax
00897B6C: lea eax, var_6C
00897B6F: push eax
00897B70: lea eax, var_5C
00897B73: push eax
00897B74: lea eax, var_4C
00897B77: push eax
00897B78: push 00000004h
00897B7A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00897B7F: add esp, 00000014h
00897B82: movsx eax, word ptr var_000000CC
00897B89: test eax, eax
00897B8B: jz 897B92h
00897B8D: jmp 00898663h
00897B92: cmp word ptr [008F2430h], FFFFh
00897B9A: jnz 00898104h
00897BA0: push 00000000h
00897BA2: push 00000000h
00897BA4: mov eax, [ebp+08h]
00897BA7: mov eax, [eax]
00897BA9: push [ebp+08h]
00897BAC: call [eax+0000033Ch]
00897BB2: push eax
00897BB3: lea eax, var_34
00897BB6: push eax
00897BB7: call 00410A84h ; Set (object)
00897BBC: push eax
00897BBD: lea eax, var_4C
00897BC0: push eax
00897BC1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00897BC6: add esp, 00000010h
00897BC9: push eax
00897BCA: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00897BCF: dec eax
00897BD0: neg eax
00897BD2: sbb eax, eax
00897BD4: inc eax
00897BD5: neg eax
00897BD7: mov var_000000CC, ax
00897BDE: lea ecx, var_34
00897BE1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00897BE6: lea ecx, var_4C
00897BE9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00897BEE: movsx eax, word ptr var_000000CC
00897BF5: test eax, eax
00897BF7: jz 0089801Dh
00897BFD: mov var_00000088, 00000001h
00897C07: mov var_00000090, 00000002h
00897C11: cmp [008F2010h], 00000000h
00897C18: jnz 897C35h
00897C1A: push 008F2010h
00897C1F: push 00433984h
00897C24: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00897C29: mov var_00000264, 008F2010h
00897C33: jmp 897C3Fh
00897C35: mov var_00000264, 008F2010h
00897C3F: push 00000000h
00897C41: push 00000001h
00897C43: push 00440E48h
00897C48: push 00000000h
00897C4A: push 00000018h
00897C4C: mov eax, var_00000264
00897C52: mov eax, [eax]
00897C54: mov ecx, var_00000264
00897C5A: mov ecx, [ecx]
00897C5C: mov ecx, [ecx]
00897C5E: push eax
00897C5F: call [ecx+0000054Ch]
00897C65: push eax
00897C66: lea eax, var_34
00897C69: push eax
00897C6A: call 00410A84h ; Set (object)
00897C6F: push eax
00897C70: lea eax, var_4C
00897C73: push eax
00897C74: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00897C79: add esp, 00000010h
00897C7C: push eax
00897C7D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00897C82: push eax
00897C83: lea eax, var_38
00897C86: push eax
00897C87: call 00410A84h ; Set (object)
00897C8C: push eax
00897C8D: lea eax, var_5C
00897C90: push eax
00897C91: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00897C96: add esp, 00000010h
00897C99: push eax
00897C9A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00897C9F: mov var_00000098, eax
00897CA5: mov var_000000A0, 00000003h
00897CAF: mov var_000000A8, 00000001h
00897CB9: mov var_000000B0, 00000002h
00897CC3: lea eax, var_00000090
00897CC9: push eax
00897CCA: lea eax, var_000000A0
00897CD0: push eax
00897CD1: lea eax, var_000000B0
00897CD7: push eax
00897CD8: lea eax, var_000001CC
00897CDE: push eax
00897CDF: lea eax, var_000001BC
00897CE5: push eax
00897CE6: lea eax, var_24
00897CE9: push eax
00897CEA: call 00410A3Ch ; For
00897CEF: mov var_00000218, eax
00897CF5: lea eax, var_38
00897CF8: push eax
00897CF9: lea eax, var_34
00897CFC: push eax
00897CFD: push 00000002h
00897CFF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00897D04: add esp, 0000000Ch
00897D07: lea eax, var_5C
00897D0A: push eax
00897D0B: lea eax, var_4C
00897D0E: push eax
00897D0F: push 00000002h
00897D11: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00897D16: add esp, 0000000Ch
00897D19: jmp 0089800Bh
00897D1E: lea eax, var_24
00897D21: mov var_00000088, eax
00897D27: mov var_00000090, 0000400Ch
00897D31: cmp [008F2010h], 00000000h
00897D38: jnz 897D55h
00897D3A: push 008F2010h
00897D3F: push 00433984h
00897D44: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00897D49: mov var_00000268, 008F2010h
00897D53: jmp 897D5Fh
00897D55: mov var_00000268, 008F2010h
00897D5F: push 00000000h
00897D61: push 00000004h
00897D63: push 00440E58h
00897D68: push 00000010h
00897D6A: pop eax
00897D6B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00897D70: lea esi, var_00000090
00897D76: mov edi, esp
00897D78: movsd 
00897D79: movsd 
00897D7A: movsd 
00897D7B: movsd 
00897D7C: push 00000001h
00897D7E: push 00000000h
00897D80: push 00440E48h
00897D85: push 00000000h
00897D87: push 00000018h
00897D89: mov eax, var_00000268
00897D8F: mov eax, [eax]
00897D91: mov ecx, var_00000268
00897D97: mov ecx, [ecx]
00897D99: mov ecx, [ecx]
00897D9B: push eax
00897D9C: call [ecx+0000054Ch]
00897DA2: push eax
00897DA3: lea eax, var_34
00897DA6: push eax
00897DA7: call 00410A84h ; Set (object)
00897DAC: push eax
00897DAD: lea eax, var_4C
00897DB0: push eax
00897DB1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00897DB6: add esp, 00000010h
00897DB9: push eax
00897DBA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00897DBF: push eax
00897DC0: lea eax, var_38
00897DC3: push eax
00897DC4: call 00410A84h ; Set (object)
00897DC9: push eax
00897DCA: lea eax, var_5C
00897DCD: push eax
00897DCE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00897DD3: add esp, 00000020h
00897DD6: push eax
00897DD7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00897DDC: push eax
00897DDD: lea eax, var_3C
00897DE0: push eax
00897DE1: call 00410A84h ; Set (object)
00897DE6: push eax
00897DE7: lea eax, var_6C
00897DEA: push eax
00897DEB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00897DF0: add esp, 00000010h
00897DF3: push eax
00897DF4: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00897DF9: sub ax, FFFFh
00897DFD: neg ax
00897E00: sbb eax, eax
00897E02: inc eax
00897E03: neg eax
00897E05: mov var_000000CC, ax
00897E0C: lea eax, var_3C
00897E0F: push eax
00897E10: lea eax, var_38
00897E13: push eax
00897E14: lea eax, var_34
00897E17: push eax
00897E18: push 00000003h
00897E1A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00897E1F: add esp, 00000010h
00897E22: lea eax, var_6C
00897E25: push eax
00897E26: lea eax, var_5C
00897E29: push eax
00897E2A: lea eax, var_4C
00897E2D: push eax
00897E2E: push 00000003h
00897E30: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00897E35: add esp, 00000010h
00897E38: movsx eax, word ptr var_000000CC
00897E3F: test eax, eax
00897E41: jz 00897FEEh
00897E47: lea eax, var_24
00897E4A: mov var_00000088, eax
00897E50: mov var_00000090, 0000400Ch
00897E5A: cmp [008F2010h], 00000000h
00897E61: jnz 897E7Eh
00897E63: push 008F2010h
00897E68: push 00433984h
00897E6D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00897E72: mov var_0000026C, 008F2010h
00897E7C: jmp 897E88h
00897E7E: mov var_0000026C, 008F2010h
00897E88: push 00000000h
00897E8A: push 00000014h
00897E8C: push 00440E58h
00897E91: push 00000010h
00897E93: pop eax
00897E94: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00897E99: lea esi, var_00000090
00897E9F: mov edi, esp
00897EA1: movsd 
00897EA2: movsd 
00897EA3: movsd 
00897EA4: movsd 
00897EA5: push 00000001h
00897EA7: push 00000000h
00897EA9: push 00440E48h
00897EAE: push 00000000h
00897EB0: push 00000018h
00897EB2: mov eax, var_0000026C
00897EB8: mov eax, [eax]
00897EBA: mov ecx, var_0000026C
00897EC0: mov ecx, [ecx]
00897EC2: mov ecx, [ecx]
00897EC4: push eax
00897EC5: call [ecx+0000054Ch]
00897ECB: push eax
00897ECC: lea eax, var_34
00897ECF: push eax
00897ED0: call 00410A84h ; Set (object)
00897ED5: push eax
00897ED6: lea eax, var_4C
00897ED9: push eax
00897EDA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00897EDF: add esp, 00000010h
00897EE2: push eax
00897EE3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00897EE8: push eax
00897EE9: lea eax, var_38
00897EEC: push eax
00897EED: call 00410A84h ; Set (object)
00897EF2: push eax
00897EF3: lea eax, var_5C
00897EF6: push eax
00897EF7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00897EFC: add esp, 00000020h
00897EFF: push eax
00897F00: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00897F05: push eax
00897F06: lea eax, var_3C
00897F09: push eax
00897F0A: call 00410A84h ; Set (object)
00897F0F: push eax
00897F10: lea eax, var_6C
00897F13: push eax
00897F14: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00897F19: add esp, 00000010h
00897F1C: push eax
00897F1D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00897F22: mov edx, eax
00897F24: lea ecx, var_2C
00897F27: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00897F2C: push eax
00897F2D: call 004109DCh ; Val(arg_1)
00897F32: fstp real8 ptr var_000000C8
00897F38: push 00000000h
00897F3A: push 00000000h
00897F3C: push 00000001h
00897F3E: push 00000000h
00897F40: lea eax, var_80
00897F43: push eax
00897F44: push 00000010h
00897F46: push 00000880h
00897F4B: call 00410946h ; ReDim
00897F50: add esp, 0000001Ch
00897F53: lea eax, var_28
00897F56: mov var_00000098, eax
00897F5C: mov var_000000A0, 00004008h
00897F66: lea esi, var_000000A0
00897F6C: push 00000000h
00897F6E: push var_80
00897F71: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00897F76: mov ecx, eax
00897F78: mov edx, esi
00897F7A: call 00410940h ; msvbvm60.dll.__vbaVarZero
00897F7F: mov edx, 0043D8ACh ; x98
00897F84: lea ecx, var_30
00897F87: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00897F8C: lea eax, var_80
00897F8F: push eax
00897F90: lea eax, var_30
00897F93: push eax
00897F94: fld real8 ptr var_000000C8
00897F9A: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00897F9F: push eax
00897FA0: call 007A6910h
00897FA5: lea eax, var_80
00897FA8: push eax
00897FA9: push 00000000h
00897FAB: call 00410934h ; Erase
00897FB0: lea eax, var_30
00897FB3: push eax
00897FB4: lea eax, var_2C
00897FB7: push eax
00897FB8: push 00000002h
00897FBA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00897FBF: add esp, 0000000Ch
00897FC2: lea eax, var_3C
00897FC5: push eax
00897FC6: lea eax, var_38
00897FC9: push eax
00897FCA: lea eax, var_34
00897FCD: push eax
00897FCE: push 00000003h
00897FD0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00897FD5: add esp, 00000010h
00897FD8: lea eax, var_6C
00897FDB: push eax
00897FDC: lea eax, var_5C
00897FDF: push eax
00897FE0: lea eax, var_4C
00897FE3: push eax
00897FE4: push 00000003h
00897FE6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00897FEB: add esp, 00000010h
00897FEE: lea eax, var_000001CC
00897FF4: push eax
00897FF5: lea eax, var_000001BC
00897FFB: push eax
00897FFC: lea eax, var_24
00897FFF: push eax
00898000: call 00410A36h ; Next
00898005: mov var_00000218, eax
0089800B: cmp var_00000218, 00000000h
00898012: jnz 00897D1Eh
00898018: jmp 008980FFh
0089801D: lea eax, var_2C
00898020: push eax
00898021: mov eax, [ebp+08h]
00898024: mov eax, [eax]
00898026: push [ebp+08h]
00898029: call [eax+000001C0h]
0089802F: fclex 
00898031: mov var_000000CC, eax
00898037: cmp var_000000CC, 00000000h
0089803E: jnl 898060h
00898040: push 000001C0h
00898045: push 004485C8h
0089804A: push [ebp+08h]
0089804D: push var_000000CC
00898053: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00898058: mov var_00000270, eax
0089805E: jmp 898067h
00898060: and var_00000270, 00000000h
00898067: push var_2C
0089806A: call 004109DCh ; Val(arg_1)
0089806F: fstp real8 ptr var_000000C8
00898075: push 00000000h
00898077: push 00000000h
00898079: push 00000001h
0089807B: push 00000000h
0089807D: lea eax, var_80
00898080: push eax
00898081: push 00000010h
00898083: push 00000880h
00898088: call 00410946h ; ReDim
0089808D: add esp, 0000001Ch
00898090: lea eax, var_28
00898093: mov var_00000088, eax
00898099: mov var_00000090, 00004008h
008980A3: lea esi, var_00000090
008980A9: push 00000000h
008980AB: push var_80
008980AE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008980B3: mov ecx, eax
008980B5: mov edx, esi
008980B7: call 00410940h ; msvbvm60.dll.__vbaVarZero
008980BC: mov edx, 0043D8ACh ; x98
008980C1: lea ecx, var_30
008980C4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008980C9: lea eax, var_80
008980CC: push eax
008980CD: lea eax, var_30
008980D0: push eax
008980D1: fld real8 ptr var_000000C8
008980D7: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008980DC: push eax
008980DD: call 007A6910h
008980E2: lea eax, var_80
008980E5: push eax
008980E6: push 00000000h
008980E8: call 00410934h ; Erase
008980ED: lea eax, var_30
008980F0: push eax
008980F1: lea eax, var_2C
008980F4: push eax
008980F5: push 00000002h
008980F7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008980FC: add esp, 0000000Ch
008980FF: jmp 00898663h
00898104: push 00000000h
00898106: push 00000000h
00898108: mov eax, [ebp+08h]
0089810B: mov eax, [eax]
0089810D: push [ebp+08h]
00898110: call [eax+0000033Ch]
00898116: push eax
00898117: lea eax, var_34
0089811A: push eax
0089811B: call 00410A84h ; Set (object)
00898120: push eax
00898121: lea eax, var_4C
00898124: push eax
00898125: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089812A: add esp, 00000010h
0089812D: push eax
0089812E: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00898133: dec eax
00898134: neg eax
00898136: sbb eax, eax
00898138: inc eax
00898139: neg eax
0089813B: mov var_000000CC, ax
00898142: lea ecx, var_34
00898145: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0089814A: lea ecx, var_4C
0089814D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00898152: movsx eax, word ptr var_000000CC
00898159: test eax, eax
0089815B: jz 00898581h
00898161: mov var_00000088, 00000001h
0089816B: mov var_00000090, 00000002h
00898175: cmp [008F2010h], 00000000h
0089817C: jnz 898199h
0089817E: push 008F2010h
00898183: push 00433984h
00898188: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089818D: mov var_00000274, 008F2010h
00898197: jmp 8981A3h
00898199: mov var_00000274, 008F2010h
008981A3: push 00000000h
008981A5: push 00000001h
008981A7: push 00440E48h
008981AC: push 00000000h
008981AE: push 00000018h
008981B0: mov eax, var_00000274
008981B6: mov eax, [eax]
008981B8: mov ecx, var_00000274
008981BE: mov ecx, [ecx]
008981C0: mov ecx, [ecx]
008981C2: push eax
008981C3: call [ecx+00000550h]
008981C9: push eax
008981CA: lea eax, var_34
008981CD: push eax
008981CE: call 00410A84h ; Set (object)
008981D3: push eax
008981D4: lea eax, var_4C
008981D7: push eax
008981D8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008981DD: add esp, 00000010h
008981E0: push eax
008981E1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008981E6: push eax
008981E7: lea eax, var_38
008981EA: push eax
008981EB: call 00410A84h ; Set (object)
008981F0: push eax
008981F1: lea eax, var_5C
008981F4: push eax
008981F5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008981FA: add esp, 00000010h
008981FD: push eax
008981FE: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00898203: mov var_00000098, eax
00898209: mov var_000000A0, 00000003h
00898213: mov var_000000A8, 00000001h
0089821D: mov var_000000B0, 00000002h
00898227: lea eax, var_00000090
0089822D: push eax
0089822E: lea eax, var_000000A0
00898234: push eax
00898235: lea eax, var_000000B0
0089823B: push eax
0089823C: lea eax, var_000001EC
00898242: push eax
00898243: lea eax, var_000001DC
00898249: push eax
0089824A: lea eax, var_24
0089824D: push eax
0089824E: call 00410A3Ch ; For
00898253: mov var_0000021C, eax
00898259: lea eax, var_38
0089825C: push eax
0089825D: lea eax, var_34
00898260: push eax
00898261: push 00000002h
00898263: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00898268: add esp, 0000000Ch
0089826B: lea eax, var_5C
0089826E: push eax
0089826F: lea eax, var_4C
00898272: push eax
00898273: push 00000002h
00898275: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089827A: add esp, 0000000Ch
0089827D: jmp 0089856Fh
00898282: lea eax, var_24
00898285: mov var_00000088, eax
0089828B: mov var_00000090, 0000400Ch
00898295: cmp [008F2010h], 00000000h
0089829C: jnz 8982B9h
0089829E: push 008F2010h
008982A3: push 00433984h
008982A8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008982AD: mov var_00000278, 008F2010h
008982B7: jmp 8982C3h
008982B9: mov var_00000278, 008F2010h
008982C3: push 00000000h
008982C5: push 00000004h
008982C7: push 00440E58h
008982CC: push 00000010h
008982CE: pop eax
008982CF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008982D4: lea esi, var_00000090
008982DA: mov edi, esp
008982DC: movsd 
008982DD: movsd 
008982DE: movsd 
008982DF: movsd 
008982E0: push 00000001h
008982E2: push 00000000h
008982E4: push 00440E48h
008982E9: push 00000000h
008982EB: push 00000018h
008982ED: mov eax, var_00000278
008982F3: mov eax, [eax]
008982F5: mov ecx, var_00000278
008982FB: mov ecx, [ecx]
008982FD: mov ecx, [ecx]
008982FF: push eax
00898300: call [ecx+00000550h]
00898306: push eax
00898307: lea eax, var_34
0089830A: push eax
0089830B: call 00410A84h ; Set (object)
00898310: push eax
00898311: lea eax, var_4C
00898314: push eax
00898315: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089831A: add esp, 00000010h
0089831D: push eax
0089831E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00898323: push eax
00898324: lea eax, var_38
00898327: push eax
00898328: call 00410A84h ; Set (object)
0089832D: push eax
0089832E: lea eax, var_5C
00898331: push eax
00898332: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898337: add esp, 00000020h
0089833A: push eax
0089833B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00898340: push eax
00898341: lea eax, var_3C
00898344: push eax
00898345: call 00410A84h ; Set (object)
0089834A: push eax
0089834B: lea eax, var_6C
0089834E: push eax
0089834F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898354: add esp, 00000010h
00898357: push eax
00898358: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0089835D: sub ax, FFFFh
00898361: neg ax
00898364: sbb eax, eax
00898366: inc eax
00898367: neg eax
00898369: mov var_000000CC, ax
00898370: lea eax, var_3C
00898373: push eax
00898374: lea eax, var_38
00898377: push eax
00898378: lea eax, var_34
0089837B: push eax
0089837C: push 00000003h
0089837E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00898383: add esp, 00000010h
00898386: lea eax, var_6C
00898389: push eax
0089838A: lea eax, var_5C
0089838D: push eax
0089838E: lea eax, var_4C
00898391: push eax
00898392: push 00000003h
00898394: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00898399: add esp, 00000010h
0089839C: movsx eax, word ptr var_000000CC
008983A3: test eax, eax
008983A5: jz 00898552h
008983AB: lea eax, var_24
008983AE: mov var_00000088, eax
008983B4: mov var_00000090, 0000400Ch
008983BE: cmp [008F2010h], 00000000h
008983C5: jnz 8983E2h
008983C7: push 008F2010h
008983CC: push 00433984h
008983D1: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008983D6: mov var_0000027C, 008F2010h
008983E0: jmp 8983ECh
008983E2: mov var_0000027C, 008F2010h
008983EC: push 00000000h
008983EE: push 00000014h
008983F0: push 00440E58h
008983F5: push 00000010h
008983F7: pop eax
008983F8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008983FD: lea esi, var_00000090
00898403: mov edi, esp
00898405: movsd 
00898406: movsd 
00898407: movsd 
00898408: movsd 
00898409: push 00000001h
0089840B: push 00000000h
0089840D: push 00440E48h
00898412: push 00000000h
00898414: push 00000018h
00898416: mov eax, var_0000027C
0089841C: mov eax, [eax]
0089841E: mov ecx, var_0000027C
00898424: mov ecx, [ecx]
00898426: mov ecx, [ecx]
00898428: push eax
00898429: call [ecx+00000550h]
0089842F: push eax
00898430: lea eax, var_34
00898433: push eax
00898434: call 00410A84h ; Set (object)
00898439: push eax
0089843A: lea eax, var_4C
0089843D: push eax
0089843E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898443: add esp, 00000010h
00898446: push eax
00898447: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089844C: push eax
0089844D: lea eax, var_38
00898450: push eax
00898451: call 00410A84h ; Set (object)
00898456: push eax
00898457: lea eax, var_5C
0089845A: push eax
0089845B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898460: add esp, 00000020h
00898463: push eax
00898464: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00898469: push eax
0089846A: lea eax, var_3C
0089846D: push eax
0089846E: call 00410A84h ; Set (object)
00898473: push eax
00898474: lea eax, var_6C
00898477: push eax
00898478: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089847D: add esp, 00000010h
00898480: push eax
00898481: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00898486: mov edx, eax
00898488: lea ecx, var_2C
0089848B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00898490: push eax
00898491: call 004109DCh ; Val(arg_1)
00898496: fstp real8 ptr var_000000C8
0089849C: push 00000000h
0089849E: push 00000000h
008984A0: push 00000001h
008984A2: push 00000000h
008984A4: lea eax, var_80
008984A7: push eax
008984A8: push 00000010h
008984AA: push 00000880h
008984AF: call 00410946h ; ReDim
008984B4: add esp, 0000001Ch
008984B7: lea eax, var_28
008984BA: mov var_00000098, eax
008984C0: mov var_000000A0, 00004008h
008984CA: lea esi, var_000000A0
008984D0: push 00000000h
008984D2: push var_80
008984D5: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008984DA: mov ecx, eax
008984DC: mov edx, esi
008984DE: call 00410940h ; msvbvm60.dll.__vbaVarZero
008984E3: mov edx, 0043D8ACh ; x98
008984E8: lea ecx, var_30
008984EB: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008984F0: lea eax, var_80
008984F3: push eax
008984F4: lea eax, var_30
008984F7: push eax
008984F8: fld real8 ptr var_000000C8
008984FE: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00898503: push eax
00898504: call 007A6910h
00898509: lea eax, var_80
0089850C: push eax
0089850D: push 00000000h
0089850F: call 00410934h ; Erase
00898514: lea eax, var_30
00898517: push eax
00898518: lea eax, var_2C
0089851B: push eax
0089851C: push 00000002h
0089851E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00898523: add esp, 0000000Ch
00898526: lea eax, var_3C
00898529: push eax
0089852A: lea eax, var_38
0089852D: push eax
0089852E: lea eax, var_34
00898531: push eax
00898532: push 00000003h
00898534: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00898539: add esp, 00000010h
0089853C: lea eax, var_6C
0089853F: push eax
00898540: lea eax, var_5C
00898543: push eax
00898544: lea eax, var_4C
00898547: push eax
00898548: push 00000003h
0089854A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089854F: add esp, 00000010h
00898552: lea eax, var_000001EC
00898558: push eax
00898559: lea eax, var_000001DC
0089855F: push eax
00898560: lea eax, var_24
00898563: push eax
00898564: call 00410A36h ; Next
00898569: mov var_0000021C, eax
0089856F: cmp var_0000021C, 00000000h
00898576: jnz 00898282h
0089857C: jmp 00898663h
00898581: lea eax, var_2C
00898584: push eax
00898585: mov eax, [ebp+08h]
00898588: mov eax, [eax]
0089858A: push [ebp+08h]
0089858D: call [eax+000001C0h]
00898593: fclex 
00898595: mov var_000000CC, eax
0089859B: cmp var_000000CC, 00000000h
008985A2: jnl 8985C4h
008985A4: push 000001C0h
008985A9: push 004485C8h
008985AE: push [ebp+08h]
008985B1: push var_000000CC
008985B7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008985BC: mov var_00000280, eax
008985C2: jmp 8985CBh
008985C4: and var_00000280, 00000000h
008985CB: push var_2C
008985CE: call 004109DCh ; Val(arg_1)
008985D3: fstp real8 ptr var_000000C8
008985D9: push 00000000h
008985DB: push 00000000h
008985DD: push 00000001h
008985DF: push 00000000h
008985E1: lea eax, var_80
008985E4: push eax
008985E5: push 00000010h
008985E7: push 00000880h
008985EC: call 00410946h ; ReDim
008985F1: add esp, 0000001Ch
008985F4: lea eax, var_28
008985F7: mov var_00000088, eax
008985FD: mov var_00000090, 00004008h
00898607: lea esi, var_00000090
0089860D: push 00000000h
0089860F: push var_80
00898612: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00898617: mov ecx, eax
00898619: mov edx, esi
0089861B: call 00410940h ; msvbvm60.dll.__vbaVarZero
00898620: mov edx, 0043D8C4h ; x100
00898625: lea ecx, var_30
00898628: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0089862D: lea eax, var_80
00898630: push eax
00898631: lea eax, var_30
00898634: push eax
00898635: fld real8 ptr var_000000C8
0089863B: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00898640: push eax
00898641: call 007A6910h
00898646: lea eax, var_80
00898649: push eax
0089864A: push 00000000h
0089864C: call 00410934h ; Erase
00898651: lea eax, var_30
00898654: push eax
00898655: lea eax, var_2C
00898658: push eax
00898659: push 00000002h
0089865B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00898660: add esp, 0000000Ch
00898663: mov var_04, 00000000h
0089866A: wait 
0089866B: push 00898759h
00898670: jmp 8986C0h
00898672: lea eax, var_30
00898675: push eax
00898676: lea eax, var_2C
00898679: push eax
0089867A: push 00000002h
0089867C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00898681: add esp, 0000000Ch
00898684: lea eax, var_3C
00898687: push eax
00898688: lea eax, var_38
0089868B: push eax
0089868C: lea eax, var_34
0089868F: push eax
00898690: push 00000003h
00898692: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00898697: add esp, 00000010h
0089869A: lea eax, var_7C
0089869D: push eax
0089869E: lea eax, var_6C
008986A1: push eax
008986A2: lea eax, var_5C
008986A5: push eax
008986A6: lea eax, var_4C
008986A9: push eax
008986AA: push 00000004h
008986AC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008986B1: add esp, 00000014h
008986B4: lea eax, var_80
008986B7: push eax
008986B8: push 00000000h
008986BA: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008986BF: ret 
End Sub

Private sub cmdChat__890C23
00890C23: push ebp
00890C24: mov ebp, esp
00890C26: sub esp, 0000000Ch
00890C29: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00890C2E: mov eax, fs:[00h]
00890C34: push eax
00890C35: mov fs:[00000000h], esp
00890C3C: mov eax, 00000134h
00890C41: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00890C46: push ebx
00890C47: push esi
00890C48: push edi
00890C49: mov var_0C, esp
00890C4C: mov var_08, 0040DEB8h
00890C53: mov eax, [ebp+08h]
00890C56: and eax, 00000001h
00890C59: mov var_04, eax
00890C5C: mov eax, [ebp+08h]
00890C5F: and al, FEh
00890C61: mov [ebp+08h], eax
00890C64: mov eax, [ebp+08h]
00890C67: mov eax, [eax]
00890C69: push [ebp+08h]
00890C6C: call [eax+04h]
00890C6F: mov eax, [ebp+08h]
00890C72: mov eax, [eax]
00890C74: push [ebp+08h]
00890C77: call [eax+00000304h]
00890C7D: push eax
00890C7E: lea eax, var_30
00890C81: push eax
00890C82: call 00410A84h ; Set (object)
00890C87: mov var_000000C8, eax
00890C8D: lea eax, var_28
00890C90: push eax
00890C91: mov eax, var_000000C8
00890C97: mov eax, [eax]
00890C99: push var_000000C8
00890C9F: call [eax+000000A0h]
00890CA5: fclex 
00890CA7: mov var_000000CC, eax
00890CAD: cmp var_000000CC, 00000000h
00890CB4: jnl 890CD9h
00890CB6: push 000000A0h
00890CBB: push 00440E08h
00890CC0: push var_000000C8
00890CC6: push var_000000CC
00890CCC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00890CD1: mov var_00000124, eax
00890CD7: jmp 890CE0h
00890CD9: and var_00000124, 00000000h
00890CE0: push var_28
00890CE3: call 0041098Eh ; Len(arg_1)
00890CE8: xor ecx, ecx
00890CEA: cmp eax, 00000003h
00890CED: setle cl
00890CF0: neg ecx
00890CF2: mov var_000000D0, cx
00890CF9: lea ecx, var_28
00890CFC: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00890D01: lea ecx, var_30
00890D04: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00890D09: movsx eax, word ptr var_000000D0
00890D10: test eax, eax
00890D12: jz 00890D9Ah
00890D18: mov var_70, 80020004h
00890D1F: mov var_78, 0000000Ah
00890D26: mov var_60, 80020004h
00890D2D: mov var_68, 0000000Ah
00890D34: mov var_50, 80020004h
00890D3B: mov var_58, 0000000Ah
00890D42: mov var_00000084, 00459330h ; Invalid email
00890D4C: mov var_0000008C, 00000008h
00890D56: lea edx, var_0000008C
00890D5C: lea ecx, var_48
00890D5F: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00890D64: lea eax, var_78
00890D67: push eax
00890D68: lea eax, var_68
00890D6B: push eax
00890D6C: lea eax, var_58
00890D6F: push eax
00890D70: push 00000010h
00890D72: lea eax, var_48
00890D75: push eax
00890D76: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00890D7B: lea eax, var_78
00890D7E: push eax
00890D7F: lea eax, var_68
00890D82: push eax
00890D83: lea eax, var_58
00890D86: push eax
00890D87: lea eax, var_48
00890D8A: push eax
00890D8B: push 00000004h
00890D8D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00890D92: add esp, 00000014h
00890D95: jmp 008919A6h
00890D9A: mov eax, [ebp+08h]
00890D9D: mov eax, [eax]
00890D9F: push [ebp+08h]
00890DA2: call [eax+00000304h]
00890DA8: push eax
00890DA9: lea eax, var_30
00890DAC: push eax
00890DAD: call 00410A84h ; Set (object)
00890DB2: mov var_000000C8, eax
00890DB8: lea eax, var_28
00890DBB: push eax
00890DBC: mov eax, var_000000C8
00890DC2: mov eax, [eax]
00890DC4: push var_000000C8
00890DCA: call [eax+000000A0h]
00890DD0: fclex 
00890DD2: mov var_000000CC, eax
00890DD8: cmp var_000000CC, 00000000h
00890DDF: jnl 890E04h
00890DE1: push 000000A0h
00890DE6: push 00440E08h
00890DEB: push var_000000C8
00890DF1: push var_000000CC
00890DF7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00890DFC: mov var_00000128, eax
00890E02: jmp 890E0Bh
00890E04: and var_00000128, 00000000h
00890E0B: mov var_70, 80020004h
00890E12: mov var_78, 0000000Ah
00890E19: mov var_60, 80020004h
00890E20: mov var_68, 0000000Ah
00890E27: mov var_50, 80020004h
00890E2E: mov var_58, 0000000Ah
00890E35: push 00458D8Ch ; Do you really want to open conversation with:
00890E3A: push var_28
00890E3D: call 00410A18h ; &
00890E42: mov edx, eax
00890E44: lea ecx, var_2C
00890E47: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00890E4C: push eax
00890E4D: push 00459390h
00890E52: call 00410A18h ; &
00890E57: mov var_40, eax
00890E5A: mov var_48, 00000008h
00890E61: lea eax, var_78
00890E64: push eax
00890E65: lea eax, var_68
00890E68: push eax
00890E69: lea eax, var_58
00890E6C: push eax
00890E6D: push 00000034h
00890E6F: lea eax, var_48
00890E72: push eax
00890E73: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00890E78: sub eax, 00000007h
00890E7B: neg eax
00890E7D: sbb eax, eax
00890E7F: inc eax
00890E80: neg eax
00890E82: mov var_000000D0, ax
00890E89: lea eax, var_2C
00890E8C: push eax
00890E8D: lea eax, var_28
00890E90: push eax
00890E91: push 00000002h
00890E93: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00890E98: add esp, 0000000Ch
00890E9B: lea ecx, var_30
00890E9E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00890EA3: lea eax, var_78
00890EA6: push eax
00890EA7: lea eax, var_68
00890EAA: push eax
00890EAB: lea eax, var_58
00890EAE: push eax
00890EAF: lea eax, var_48
00890EB2: push eax
00890EB3: push 00000004h
00890EB5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00890EBA: add esp, 00000014h
00890EBD: movsx eax, word ptr var_000000D0
00890EC4: test eax, eax
00890EC6: jz 890ECDh
00890EC8: jmp 008919A6h
00890ECD: cmp word ptr [008F2430h], FFFFh
00890ED5: jnz 00891443h
00890EDB: push 00000000h
00890EDD: push 00000000h
00890EDF: mov eax, [ebp+08h]
00890EE2: mov eax, [eax]
00890EE4: push [ebp+08h]
00890EE7: call [eax+0000033Ch]
00890EED: push eax
00890EEE: lea eax, var_30
00890EF1: push eax
00890EF2: call 00410A84h ; Set (object)
00890EF7: push eax
00890EF8: lea eax, var_48
00890EFB: push eax
00890EFC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00890F01: add esp, 00000010h
00890F04: push eax
00890F05: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00890F0A: dec eax
00890F0B: neg eax
00890F0D: sbb eax, eax
00890F0F: inc eax
00890F10: neg eax
00890F12: mov var_000000C8, ax
00890F19: lea ecx, var_30
00890F1C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00890F21: lea ecx, var_48
00890F24: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00890F29: movsx eax, word ptr var_000000C8
00890F30: test eax, eax
00890F32: jz 0089135Ah
00890F38: mov var_00000084, 00000001h
00890F42: mov var_0000008C, 00000002h
00890F4C: cmp [008F2010h], 00000000h
00890F53: jnz 890F70h
00890F55: push 008F2010h
00890F5A: push 00433984h
00890F5F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00890F64: mov var_0000012C, 008F2010h
00890F6E: jmp 890F7Ah
00890F70: mov var_0000012C, 008F2010h
00890F7A: push 00000000h
00890F7C: push 00000001h
00890F7E: push 00440E48h
00890F83: push 00000000h
00890F85: push 00000018h
00890F87: mov eax, var_0000012C
00890F8D: mov eax, [eax]
00890F8F: mov ecx, var_0000012C
00890F95: mov ecx, [ecx]
00890F97: mov ecx, [ecx]
00890F99: push eax
00890F9A: call [ecx+0000054Ch]
00890FA0: push eax
00890FA1: lea eax, var_30
00890FA4: push eax
00890FA5: call 00410A84h ; Set (object)
00890FAA: push eax
00890FAB: lea eax, var_48
00890FAE: push eax
00890FAF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00890FB4: add esp, 00000010h
00890FB7: push eax
00890FB8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00890FBD: push eax
00890FBE: lea eax, var_34
00890FC1: push eax
00890FC2: call 00410A84h ; Set (object)
00890FC7: push eax
00890FC8: lea eax, var_58
00890FCB: push eax
00890FCC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00890FD1: add esp, 00000010h
00890FD4: push eax
00890FD5: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00890FDA: mov var_00000094, eax
00890FE0: mov var_0000009C, 00000003h
00890FEA: mov var_000000A4, 00000001h
00890FF4: mov var_000000AC, 00000002h
00890FFE: lea eax, var_0000008C
00891004: push eax
00891005: lea eax, var_0000009C
0089100B: push eax
0089100C: lea eax, var_000000AC
00891012: push eax
00891013: lea eax, var_000000F0
00891019: push eax
0089101A: lea eax, var_000000E0
00891020: push eax
00891021: lea eax, var_24
00891024: push eax
00891025: call 00410A3Ch ; For
0089102A: mov var_0000011C, eax
00891030: lea eax, var_34
00891033: push eax
00891034: lea eax, var_30
00891037: push eax
00891038: push 00000002h
0089103A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089103F: add esp, 0000000Ch
00891042: lea eax, var_58
00891045: push eax
00891046: lea eax, var_48
00891049: push eax
0089104A: push 00000002h
0089104C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00891051: add esp, 0000000Ch
00891054: jmp 00891348h
00891059: lea eax, var_24
0089105C: mov var_00000084, eax
00891062: mov var_0000008C, 0000400Ch
0089106C: cmp [008F2010h], 00000000h
00891073: jnz 891090h
00891075: push 008F2010h
0089107A: push 00433984h
0089107F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00891084: mov var_00000130, 008F2010h
0089108E: jmp 89109Ah
00891090: mov var_00000130, 008F2010h
0089109A: push 00000000h
0089109C: push 00000004h
0089109E: push 00440E58h
008910A3: push 00000010h
008910A5: pop eax
008910A6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008910AB: lea esi, var_0000008C
008910B1: mov edi, esp
008910B3: movsd 
008910B4: movsd 
008910B5: movsd 
008910B6: movsd 
008910B7: push 00000001h
008910B9: push 00000000h
008910BB: push 00440E48h
008910C0: push 00000000h
008910C2: push 00000018h
008910C4: mov eax, var_00000130
008910CA: mov eax, [eax]
008910CC: mov ecx, var_00000130
008910D2: mov ecx, [ecx]
008910D4: mov ecx, [ecx]
008910D6: push eax
008910D7: call [ecx+0000054Ch]
008910DD: push eax
008910DE: lea eax, var_30
008910E1: push eax
008910E2: call 00410A84h ; Set (object)
008910E7: push eax
008910E8: lea eax, var_48
008910EB: push eax
008910EC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008910F1: add esp, 00000010h
008910F4: push eax
008910F5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008910FA: push eax
008910FB: lea eax, var_34
008910FE: push eax
008910FF: call 00410A84h ; Set (object)
00891104: push eax
00891105: lea eax, var_58
00891108: push eax
00891109: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089110E: add esp, 00000020h
00891111: push eax
00891112: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00891117: push eax
00891118: lea eax, var_38
0089111B: push eax
0089111C: call 00410A84h ; Set (object)
00891121: push eax
00891122: lea eax, var_68
00891125: push eax
00891126: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089112B: add esp, 00000010h
0089112E: push eax
0089112F: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00891134: sub ax, FFFFh
00891138: neg ax
0089113B: sbb eax, eax
0089113D: inc eax
0089113E: neg eax
00891140: mov var_000000C8, ax
00891147: lea eax, var_38
0089114A: push eax
0089114B: lea eax, var_34
0089114E: push eax
0089114F: lea eax, var_30
00891152: push eax
00891153: push 00000003h
00891155: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089115A: add esp, 00000010h
0089115D: lea eax, var_68
00891160: push eax
00891161: lea eax, var_58
00891164: push eax
00891165: lea eax, var_48
00891168: push eax
00891169: push 00000003h
0089116B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00891170: add esp, 00000010h
00891173: movsx eax, word ptr var_000000C8
0089117A: test eax, eax
0089117C: jz 0089132Bh
00891182: lea eax, var_24
00891185: mov var_00000084, eax
0089118B: mov var_0000008C, 0000400Ch
00891195: cmp [008F2010h], 00000000h
0089119C: jnz 8911B9h
0089119E: push 008F2010h
008911A3: push 00433984h
008911A8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008911AD: mov var_00000134, 008F2010h
008911B7: jmp 8911C3h
008911B9: mov var_00000134, 008F2010h
008911C3: push 00000000h
008911C5: push 00000014h
008911C7: push 00440E58h
008911CC: push 00000010h
008911CE: pop eax
008911CF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008911D4: lea esi, var_0000008C
008911DA: mov edi, esp
008911DC: movsd 
008911DD: movsd 
008911DE: movsd 
008911DF: movsd 
008911E0: push 00000001h
008911E2: push 00000000h
008911E4: push 00440E48h
008911E9: push 00000000h
008911EB: push 00000018h
008911ED: mov eax, var_00000134
008911F3: mov eax, [eax]
008911F5: mov ecx, var_00000134
008911FB: mov ecx, [ecx]
008911FD: mov ecx, [ecx]
008911FF: push eax
00891200: call [ecx+0000054Ch]
00891206: push eax
00891207: lea eax, var_30
0089120A: push eax
0089120B: call 00410A84h ; Set (object)
00891210: push eax
00891211: lea eax, var_48
00891214: push eax
00891215: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089121A: add esp, 00000010h
0089121D: push eax
0089121E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00891223: push eax
00891224: lea eax, var_34
00891227: push eax
00891228: call 00410A84h ; Set (object)
0089122D: push eax
0089122E: lea eax, var_58
00891231: push eax
00891232: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00891237: add esp, 00000020h
0089123A: push eax
0089123B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00891240: push eax
00891241: lea eax, var_38
00891244: push eax
00891245: call 00410A84h ; Set (object)
0089124A: push eax
0089124B: lea eax, var_68
0089124E: push eax
0089124F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00891254: add esp, 00000010h
00891257: push eax
00891258: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0089125D: mov edx, eax
0089125F: lea ecx, var_28
00891262: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00891267: push eax
00891268: call 004109DCh ; Val(arg_1)
0089126D: fstp real8 ptr var_000000C4
00891273: push 00000000h
00891275: push 00000000h
00891277: push 00000001h
00891279: push 00000000h
0089127B: lea eax, var_7C
0089127E: push eax
0089127F: push 00000010h
00891281: push 00000880h
00891286: call 00410946h ; ReDim
0089128B: add esp, 0000001Ch
0089128E: mov eax, [ebp+08h]
00891291: mov eax, [eax]
00891293: push [ebp+08h]
00891296: call [eax+00000304h]
0089129C: mov var_70, eax
0089129F: mov var_78, 00000009h
008912A6: lea esi, var_78
008912A9: push 00000000h
008912AB: push var_7C
008912AE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008912B3: mov ecx, eax
008912B5: mov edx, esi
008912B7: call 00410940h ; msvbvm60.dll.__vbaVarZero
008912BC: mov edx, 0043D8ACh ; x98
008912C1: lea ecx, var_2C
008912C4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008912C9: lea eax, var_7C
008912CC: push eax
008912CD: lea eax, var_2C
008912D0: push eax
008912D1: fld real8 ptr var_000000C4
008912D7: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008912DC: push eax
008912DD: call 007A6910h
008912E2: lea eax, var_7C
008912E5: push eax
008912E6: push 00000000h
008912E8: call 00410934h ; Erase
008912ED: lea eax, var_2C
008912F0: push eax
008912F1: lea eax, var_28
008912F4: push eax
008912F5: push 00000002h
008912F7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008912FC: add esp, 0000000Ch
008912FF: lea eax, var_38
00891302: push eax
00891303: lea eax, var_34
00891306: push eax
00891307: lea eax, var_30
0089130A: push eax
0089130B: push 00000003h
0089130D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00891312: add esp, 00000010h
00891315: lea eax, var_68
00891318: push eax
00891319: lea eax, var_58
0089131C: push eax
0089131D: lea eax, var_48
00891320: push eax
00891321: push 00000003h
00891323: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00891328: add esp, 00000010h
0089132B: lea eax, var_000000F0
00891331: push eax
00891332: lea eax, var_000000E0
00891338: push eax
00891339: lea eax, var_24
0089133C: push eax
0089133D: call 00410A36h ; Next
00891342: mov var_0000011C, eax
00891348: cmp var_0000011C, 00000000h
0089134F: jnz 00891059h
00891355: jmp 0089143Eh
0089135A: lea eax, var_28
0089135D: push eax
0089135E: mov eax, [ebp+08h]
00891361: mov eax, [eax]
00891363: push [ebp+08h]
00891366: call [eax+000001C0h]
0089136C: fclex 
0089136E: mov var_000000C8, eax
00891374: cmp var_000000C8, 00000000h
0089137B: jnl 89139Dh
0089137D: push 000001C0h
00891382: push 004485C8h
00891387: push [ebp+08h]
0089138A: push var_000000C8
00891390: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00891395: mov var_00000138, eax
0089139B: jmp 8913A4h
0089139D: and var_00000138, 00000000h
008913A4: push var_28
008913A7: call 004109DCh ; Val(arg_1)
008913AC: fstp real8 ptr var_000000C4
008913B2: push 00000000h
008913B4: push 00000000h
008913B6: push 00000001h
008913B8: push 00000000h
008913BA: lea eax, var_7C
008913BD: push eax
008913BE: push 00000010h
008913C0: push 00000880h
008913C5: call 00410946h ; ReDim
008913CA: add esp, 0000001Ch
008913CD: mov eax, [ebp+08h]
008913D0: mov eax, [eax]
008913D2: push [ebp+08h]
008913D5: call [eax+00000304h]
008913DB: mov var_40, eax
008913DE: mov var_48, 00000009h
008913E5: lea esi, var_48
008913E8: push 00000000h
008913EA: push var_7C
008913ED: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008913F2: mov ecx, eax
008913F4: mov edx, esi
008913F6: call 00410940h ; msvbvm60.dll.__vbaVarZero
008913FB: mov edx, 0043D8ACh ; x98
00891400: lea ecx, var_2C
00891403: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00891408: lea eax, var_7C
0089140B: push eax
0089140C: lea eax, var_2C
0089140F: push eax
00891410: fld real8 ptr var_000000C4
00891416: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0089141B: push eax
0089141C: call 007A6910h
00891421: lea eax, var_7C
00891424: push eax
00891425: push 00000000h
00891427: call 00410934h ; Erase
0089142C: lea eax, var_2C
0089142F: push eax
00891430: lea eax, var_28
00891433: push eax
00891434: push 00000002h
00891436: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089143B: add esp, 0000000Ch
0089143E: jmp 008919A6h
00891443: push 00000000h
00891445: push 00000000h
00891447: mov eax, [ebp+08h]
0089144A: mov eax, [eax]
0089144C: push [ebp+08h]
0089144F: call [eax+0000033Ch]
00891455: push eax
00891456: lea eax, var_30
00891459: push eax
0089145A: call 00410A84h ; Set (object)
0089145F: push eax
00891460: lea eax, var_48
00891463: push eax
00891464: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00891469: add esp, 00000010h
0089146C: push eax
0089146D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00891472: dec eax
00891473: neg eax
00891475: sbb eax, eax
00891477: inc eax
00891478: neg eax
0089147A: mov var_000000C8, ax
00891481: lea ecx, var_30
00891484: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00891489: lea ecx, var_48
0089148C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00891491: movsx eax, word ptr var_000000C8
00891498: test eax, eax
0089149A: jz 008918C2h
008914A0: mov var_00000084, 00000001h
008914AA: mov var_0000008C, 00000002h
008914B4: cmp [008F2010h], 00000000h
008914BB: jnz 8914D8h
008914BD: push 008F2010h
008914C2: push 00433984h
008914C7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008914CC: mov var_0000013C, 008F2010h
008914D6: jmp 8914E2h
008914D8: mov var_0000013C, 008F2010h
008914E2: push 00000000h
008914E4: push 00000001h
008914E6: push 00440E48h
008914EB: push 00000000h
008914ED: push 00000018h
008914EF: mov eax, var_0000013C
008914F5: mov eax, [eax]
008914F7: mov ecx, var_0000013C
008914FD: mov ecx, [ecx]
008914FF: mov ecx, [ecx]
00891501: push eax
00891502: call [ecx+00000550h]
00891508: push eax
00891509: lea eax, var_30
0089150C: push eax
0089150D: call 00410A84h ; Set (object)
00891512: push eax
00891513: lea eax, var_48
00891516: push eax
00891517: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089151C: add esp, 00000010h
0089151F: push eax
00891520: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00891525: push eax
00891526: lea eax, var_34
00891529: push eax
0089152A: call 00410A84h ; Set (object)
0089152F: push eax
00891530: lea eax, var_58
00891533: push eax
00891534: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00891539: add esp, 00000010h
0089153C: push eax
0089153D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00891542: mov var_00000094, eax
00891548: mov var_0000009C, 00000003h
00891552: mov var_000000A4, 00000001h
0089155C: mov var_000000AC, 00000002h
00891566: lea eax, var_0000008C
0089156C: push eax
0089156D: lea eax, var_0000009C
00891573: push eax
00891574: lea eax, var_000000AC
0089157A: push eax
0089157B: lea eax, var_00000110
00891581: push eax
00891582: lea eax, var_00000100
00891588: push eax
00891589: lea eax, var_24
0089158C: push eax
0089158D: call 00410A3Ch ; For
00891592: mov var_00000120, eax
00891598: lea eax, var_34
0089159B: push eax
0089159C: lea eax, var_30
0089159F: push eax
008915A0: push 00000002h
008915A2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008915A7: add esp, 0000000Ch
008915AA: lea eax, var_58
008915AD: push eax
008915AE: lea eax, var_48
008915B1: push eax
008915B2: push 00000002h
008915B4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008915B9: add esp, 0000000Ch
008915BC: jmp 008918B0h
008915C1: lea eax, var_24
008915C4: mov var_00000084, eax
008915CA: mov var_0000008C, 0000400Ch
008915D4: cmp [008F2010h], 00000000h
008915DB: jnz 8915F8h
008915DD: push 008F2010h
008915E2: push 00433984h
008915E7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008915EC: mov var_00000140, 008F2010h
008915F6: jmp 891602h
008915F8: mov var_00000140, 008F2010h
00891602: push 00000000h
00891604: push 00000004h
00891606: push 00440E58h
0089160B: push 00000010h
0089160D: pop eax
0089160E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00891613: lea esi, var_0000008C
00891619: mov edi, esp
0089161B: movsd 
0089161C: movsd 
0089161D: movsd 
0089161E: movsd 
0089161F: push 00000001h
00891621: push 00000000h
00891623: push 00440E48h
00891628: push 00000000h
0089162A: push 00000018h
0089162C: mov eax, var_00000140
00891632: mov eax, [eax]
00891634: mov ecx, var_00000140
0089163A: mov ecx, [ecx]
0089163C: mov ecx, [ecx]
0089163E: push eax
0089163F: call [ecx+00000550h]
00891645: push eax
00891646: lea eax, var_30
00891649: push eax
0089164A: call 00410A84h ; Set (object)
0089164F: push eax
00891650: lea eax, var_48
00891653: push eax
00891654: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00891659: add esp, 00000010h
0089165C: push eax
0089165D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00891662: push eax
00891663: lea eax, var_34
00891666: push eax
00891667: call 00410A84h ; Set (object)
0089166C: push eax
0089166D: lea eax, var_58
00891670: push eax
00891671: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00891676: add esp, 00000020h
00891679: push eax
0089167A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089167F: push eax
00891680: lea eax, var_38
00891683: push eax
00891684: call 00410A84h ; Set (object)
00891689: push eax
0089168A: lea eax, var_68
0089168D: push eax
0089168E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00891693: add esp, 00000010h
00891696: push eax
00891697: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0089169C: sub ax, FFFFh
008916A0: neg ax
008916A3: sbb eax, eax
008916A5: inc eax
008916A6: neg eax
008916A8: mov var_000000C8, ax
008916AF: lea eax, var_38
008916B2: push eax
008916B3: lea eax, var_34
008916B6: push eax
008916B7: lea eax, var_30
008916BA: push eax
008916BB: push 00000003h
008916BD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008916C2: add esp, 00000010h
008916C5: lea eax, var_68
008916C8: push eax
008916C9: lea eax, var_58
008916CC: push eax
008916CD: lea eax, var_48
008916D0: push eax
008916D1: push 00000003h
008916D3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008916D8: add esp, 00000010h
008916DB: movsx eax, word ptr var_000000C8
008916E2: test eax, eax
008916E4: jz 00891893h
008916EA: lea eax, var_24
008916ED: mov var_00000084, eax
008916F3: mov var_0000008C, 0000400Ch
008916FD: cmp [008F2010h], 00000000h
00891704: jnz 891721h
00891706: push 008F2010h
0089170B: push 00433984h
00891710: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00891715: mov var_00000144, 008F2010h
0089171F: jmp 89172Bh
00891721: mov var_00000144, 008F2010h
0089172B: push 00000000h
0089172D: push 00000014h
0089172F: push 00440E58h
00891734: push 00000010h
00891736: pop eax
00891737: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089173C: lea esi, var_0000008C
00891742: mov edi, esp
00891744: movsd 
00891745: movsd 
00891746: movsd 
00891747: movsd 
00891748: push 00000001h
0089174A: push 00000000h
0089174C: push 00440E48h
00891751: push 00000000h
00891753: push 00000018h
00891755: mov eax, var_00000144
0089175B: mov eax, [eax]
0089175D: mov ecx, var_00000144
00891763: mov ecx, [ecx]
00891765: mov ecx, [ecx]
00891767: push eax
00891768: call [ecx+00000550h]
0089176E: push eax
0089176F: lea eax, var_30
00891772: push eax
00891773: call 00410A84h ; Set (object)
00891778: push eax
00891779: lea eax, var_48
0089177C: push eax
0089177D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00891782: add esp, 00000010h
00891785: push eax
00891786: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089178B: push eax
0089178C: lea eax, var_34
0089178F: push eax
00891790: call 00410A84h ; Set (object)
00891795: push eax
00891796: lea eax, var_58
00891799: push eax
0089179A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089179F: add esp, 00000020h
008917A2: push eax
008917A3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008917A8: push eax
008917A9: lea eax, var_38
008917AC: push eax
008917AD: call 00410A84h ; Set (object)
008917B2: push eax
008917B3: lea eax, var_68
008917B6: push eax
008917B7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008917BC: add esp, 00000010h
008917BF: push eax
008917C0: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008917C5: mov edx, eax
008917C7: lea ecx, var_28
008917CA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008917CF: push eax
008917D0: call 004109DCh ; Val(arg_1)
008917D5: fstp real8 ptr var_000000C4
008917DB: push 00000000h
008917DD: push 00000000h
008917DF: push 00000001h
008917E1: push 00000000h
008917E3: lea eax, var_7C
008917E6: push eax
008917E7: push 00000010h
008917E9: push 00000880h
008917EE: call 00410946h ; ReDim
008917F3: add esp, 0000001Ch
008917F6: mov eax, [ebp+08h]
008917F9: mov eax, [eax]
008917FB: push [ebp+08h]
008917FE: call [eax+00000304h]
00891804: mov var_70, eax
00891807: mov var_78, 00000009h
0089180E: lea esi, var_78
00891811: push 00000000h
00891813: push var_7C
00891816: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089181B: mov ecx, eax
0089181D: mov edx, esi
0089181F: call 00410940h ; msvbvm60.dll.__vbaVarZero
00891824: mov edx, 0043D8ACh ; x98
00891829: lea ecx, var_2C
0089182C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00891831: lea eax, var_7C
00891834: push eax
00891835: lea eax, var_2C
00891838: push eax
00891839: fld real8 ptr var_000000C4
0089183F: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00891844: push eax
00891845: call 007A6910h
0089184A: lea eax, var_7C
0089184D: push eax
0089184E: push 00000000h
00891850: call 00410934h ; Erase
00891855: lea eax, var_2C
00891858: push eax
00891859: lea eax, var_28
0089185C: push eax
0089185D: push 00000002h
0089185F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00891864: add esp, 0000000Ch
00891867: lea eax, var_38
0089186A: push eax
0089186B: lea eax, var_34
0089186E: push eax
0089186F: lea eax, var_30
00891872: push eax
00891873: push 00000003h
00891875: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089187A: add esp, 00000010h
0089187D: lea eax, var_68
00891880: push eax
00891881: lea eax, var_58
00891884: push eax
00891885: lea eax, var_48
00891888: push eax
00891889: push 00000003h
0089188B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00891890: add esp, 00000010h
00891893: lea eax, var_00000110
00891899: push eax
0089189A: lea eax, var_00000100
008918A0: push eax
008918A1: lea eax, var_24
008918A4: push eax
008918A5: call 00410A36h ; Next
008918AA: mov var_00000120, eax
008918B0: cmp var_00000120, 00000000h
008918B7: jnz 008915C1h
008918BD: jmp 008919A6h
008918C2: lea eax, var_28
008918C5: push eax
008918C6: mov eax, [ebp+08h]
008918C9: mov eax, [eax]
008918CB: push [ebp+08h]
008918CE: call [eax+000001C0h]
008918D4: fclex 
008918D6: mov var_000000C8, eax
008918DC: cmp var_000000C8, 00000000h
008918E3: jnl 891905h
008918E5: push 000001C0h
008918EA: push 004485C8h
008918EF: push [ebp+08h]
008918F2: push var_000000C8
008918F8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008918FD: mov var_00000148, eax
00891903: jmp 89190Ch
00891905: and var_00000148, 00000000h
0089190C: push var_28
0089190F: call 004109DCh ; Val(arg_1)
00891914: fstp real8 ptr var_000000C4
0089191A: push 00000000h
0089191C: push 00000000h
0089191E: push 00000001h
00891920: push 00000000h
00891922: lea eax, var_7C
00891925: push eax
00891926: push 00000010h
00891928: push 00000880h
0089192D: call 00410946h ; ReDim
00891932: add esp, 0000001Ch
00891935: mov eax, [ebp+08h]
00891938: mov eax, [eax]
0089193A: push [ebp+08h]
0089193D: call [eax+00000304h]
00891943: mov var_40, eax
00891946: mov var_48, 00000009h
0089194D: lea esi, var_48
00891950: push 00000000h
00891952: push var_7C
00891955: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089195A: mov ecx, eax
0089195C: mov edx, esi
0089195E: call 00410940h ; msvbvm60.dll.__vbaVarZero
00891963: mov edx, 0043D8ACh ; x98
00891968: lea ecx, var_2C
0089196B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00891970: lea eax, var_7C
00891973: push eax
00891974: lea eax, var_2C
00891977: push eax
00891978: fld real8 ptr var_000000C4
0089197E: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00891983: push eax
00891984: call 007A6910h
00891989: lea eax, var_7C
0089198C: push eax
0089198D: push 00000000h
0089198F: call 00410934h ; Erase
00891994: lea eax, var_2C
00891997: push eax
00891998: lea eax, var_28
0089199B: push eax
0089199C: push 00000002h
0089199E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008919A3: add esp, 0000000Ch
008919A6: mov var_04, 00000000h
008919AD: wait 
008919AE: push 00891A32h
008919B3: jmp 891A03h
008919B5: lea eax, var_2C
008919B8: push eax
008919B9: lea eax, var_28
008919BC: push eax
008919BD: push 00000002h
008919BF: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008919C4: add esp, 0000000Ch
008919C7: lea eax, var_38
008919CA: push eax
008919CB: lea eax, var_34
008919CE: push eax
008919CF: lea eax, var_30
008919D2: push eax
008919D3: push 00000003h
008919D5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008919DA: add esp, 00000010h
008919DD: lea eax, var_78
008919E0: push eax
008919E1: lea eax, var_68
008919E4: push eax
008919E5: lea eax, var_58
008919E8: push eax
008919E9: lea eax, var_48
008919EC: push eax
008919ED: push 00000004h
008919EF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008919F4: add esp, 00000014h
008919F7: lea eax, var_7C
008919FA: push eax
008919FB: push 00000000h
008919FD: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
00891A02: ret 
End Sub

Private sub lstContacts__89574A
0089574A: push ebp
0089574B: mov ebp, esp
0089574D: sub esp, 0000000Ch
00895750: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00895755: mov eax, fs:[00h]
0089575B: push eax
0089575C: mov fs:[00000000h], esp
00895763: push 00000054h
00895765: pop eax
00895766: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089576B: push ebx
0089576C: push esi
0089576D: push edi
0089576E: mov var_0C, esp
00895771: mov var_08, 0040DF58h
00895778: mov eax, [ebp+08h]
0089577B: and eax, 00000001h
0089577E: mov var_04, eax
00895781: mov eax, [ebp+08h]
00895784: and al, FEh
00895786: mov [ebp+08h], eax
00895789: mov eax, [ebp+08h]
0089578C: mov eax, [eax]
0089578E: push [ebp+08h]
00895791: call [eax+04h]
00895794: mov eax, [ebp+0Ch]
00895797: cmp word ptr [eax], 0002h
0089579B: jnz 00895875h
008957A1: mov var_50, 80020004h
008957A8: mov var_58, 0000000Ah
008957AF: mov var_40, 80020004h
008957B6: mov var_48, 0000000Ah
008957BD: mov var_30, 80020004h
008957C4: mov var_38, 0000000Ah
008957CB: mov var_20, 80020004h
008957D2: mov var_28, 0000000Ah
008957D9: push 00000010h
008957DB: pop eax
008957DC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008957E1: lea esi, var_58
008957E4: mov edi, esp
008957E6: movsd 
008957E7: movsd 
008957E8: movsd 
008957E9: movsd 
008957EA: push 00000010h
008957EC: pop eax
008957ED: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008957F2: lea esi, var_48
008957F5: mov edi, esp
008957F7: movsd 
008957F8: movsd 
008957F9: movsd 
008957FA: movsd 
008957FB: push 00000010h
008957FD: pop eax
008957FE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00895803: lea esi, var_38
00895806: mov edi, esp
00895808: movsd 
00895809: movsd 
0089580A: movsd 
0089580B: movsd 
0089580C: push 00000010h
0089580E: pop eax
0089580F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00895814: lea esi, var_28
00895817: mov edi, esp
00895819: movsd 
0089581A: movsd 
0089581B: movsd 
0089581C: movsd 
0089581D: mov eax, [ebp+08h]
00895820: mov eax, [eax]
00895822: push [ebp+08h]
00895825: call [eax+00000310h]
0089582B: push eax
0089582C: lea eax, var_18
0089582F: push eax
00895830: call 00410A84h ; Set (object)
00895835: push eax
00895836: mov eax, [ebp+08h]
00895839: mov eax, [eax]
0089583B: push [ebp+08h]
0089583E: call [eax+000002BCh]
00895844: fclex 
00895846: mov var_5C, eax
00895849: cmp var_5C, 00000000h
0089584D: jnl 895869h
0089584F: push 000002BCh
00895854: push 004485C8h
00895859: push [ebp+08h]
0089585C: push var_5C
0089585F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00895864: mov var_68, eax
00895867: jmp 89586Dh
00895869: and var_68, 00000000h
0089586D: lea ecx, var_18
00895870: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00895875: mov var_04, 00000000h
0089587C: push 0089588Dh
00895881: jmp 89588Ch
00895883: lea ecx, var_18
00895886: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0089588B: ret 
End Sub

Private sub lstContacts__895548
00895548: push ebp
00895549: mov ebp, esp
0089554B: sub esp, 0000000Ch
0089554E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00895553: mov eax, fs:[00h]
00895559: push eax
0089555A: mov fs:[00000000h], esp
00895561: push 00000008h
00895563: pop eax
00895564: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00895569: push ebx
0089556A: push esi
0089556B: push edi
0089556C: mov var_0C, esp
0089556F: mov var_08, 0040DF40h
00895576: mov eax, [ebp+08h]
00895579: and eax, 00000001h
0089557C: mov var_04, eax
0089557F: mov eax, [ebp+08h]
00895582: and al, FEh
00895584: mov [ebp+08h], eax
00895587: mov eax, [ebp+08h]
0089558A: mov eax, [eax]
0089558C: push [ebp+08h]
0089558F: call [eax+04h]
00895592: mov eax, [ebp+0Ch]
00895595: or word ptr [eax], FFFFh
00895599: mov var_04, 00000000h
008955A0: mov eax, [ebp+08h]
008955A3: mov eax, [eax]
008955A5: push [ebp+08h]
008955A8: call [eax+08h]
008955AB: mov eax, var_04
008955AE: mov ecx, var_14
008955B1: mov fs:[00000000h], ecx
008955B8: pop edi
008955B9: pop esi
008955BA: pop ebx
008955BB: leave 
008955BC: retn 0008h
End Sub

Private sub lstContacts__8955BF
008955BF: push ebp
008955C0: mov ebp, esp
008955C2: sub esp, 0000000Ch
008955C5: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008955CA: mov eax, fs:[00h]
008955D0: push eax
008955D1: mov fs:[00000000h], esp
008955D8: push 00000044h
008955DA: pop eax
008955DB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008955E0: push ebx
008955E1: push esi
008955E2: push edi
008955E3: mov var_0C, esp
008955E6: mov var_08, 0040DF48h
008955ED: mov eax, [ebp+08h]
008955F0: and eax, 00000001h
008955F3: mov var_04, eax
008955F6: mov eax, [ebp+08h]
008955F9: and al, FEh
008955FB: mov [ebp+08h], eax
008955FE: mov eax, [ebp+08h]
00895601: mov eax, [eax]
00895603: push [ebp+08h]
00895606: call [eax+04h]
00895609: push [ebp+0Ch]
0089560C: lea eax, var_18
0089560F: push eax
00895610: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
00895615: mov eax, [ebp+08h]
00895618: mov eax, [eax]
0089561A: push [ebp+08h]
0089561D: call [eax+00000328h]
00895623: push eax
00895624: lea eax, var_50
00895627: push eax
00895628: call 00410A84h ; Set (object)
0089562D: push 00000000h
0089562F: push 00000005h
00895631: push var_18
00895634: lea eax, var_2C
00895637: push eax
00895638: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089563D: add esp, 00000010h
00895640: push eax
00895641: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00895646: sub eax, 00000001h
00895649: jo 00895745h
0089564F: mov var_34, eax
00895652: mov var_3C, 00000003h
00895659: push 00000010h
0089565B: pop eax
0089565C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00895661: lea esi, var_3C
00895664: mov edi, esp
00895666: movsd 
00895667: movsd 
00895668: movsd 
00895669: movsd 
0089566A: push 00000012h
0089566C: push var_50
0089566F: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00895674: lea ecx, var_2C
00895677: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0089567C: or var_34, FFFFFFFFh
00895680: mov var_3C, 0000000Bh
00895687: push 00000010h
00895689: pop eax
0089568A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089568F: lea esi, var_3C
00895692: mov edi, esp
00895694: movsd 
00895695: movsd 
00895696: movsd 
00895697: movsd 
00895698: push 00000011h
0089569A: push var_50
0089569D: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008956A2: push 00000000h
008956A4: push 00000013h
008956A6: push var_50
008956A9: lea eax, var_2C
008956AC: push eax
008956AD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008956B2: add esp, 00000010h
008956B5: push eax
008956B6: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008956BB: xor eax, 00000001h
008956BE: mov var_34, eax
008956C1: mov var_3C, 00000003h
008956C8: push 00000010h
008956CA: pop eax
008956CB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008956D0: lea esi, var_3C
008956D3: mov edi, esp
008956D5: movsd 
008956D6: movsd 
008956D7: movsd 
008956D8: movsd 
008956D9: push 00000013h
008956DB: push var_50
008956DE: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008956E3: lea ecx, var_2C
008956E6: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008956EB: push 00000000h
008956ED: lea eax, var_50
008956F0: push eax
008956F1: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008956F6: mov var_04, 00000000h
008956FD: push 00895726h
00895702: jmp 89570Dh
00895704: lea ecx, var_2C
00895707: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0089570C: ret 
End Sub

Private sub mnuMSNGetContacts__89A2A2
0089A2A2: push ebp
0089A2A3: mov ebp, esp
0089A2A5: sub esp, 0000000Ch
0089A2A8: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0089A2AD: mov eax, fs:[00h]
0089A2B3: push eax
0089A2B4: mov fs:[00000000h], esp
0089A2BB: mov eax, 00000118h
0089A2C0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089A2C5: push ebx
0089A2C6: push esi
0089A2C7: push edi
0089A2C8: mov var_0C, esp
0089A2CB: mov var_08, 0040E010h
0089A2D2: mov eax, [ebp+08h]
0089A2D5: and eax, 00000001h
0089A2D8: mov var_04, eax
0089A2DB: mov eax, [ebp+08h]
0089A2DE: and al, FEh
0089A2E0: mov [ebp+08h], eax
0089A2E3: mov eax, [ebp+08h]
0089A2E6: mov eax, [eax]
0089A2E8: push [ebp+08h]
0089A2EB: call [eax+04h]
0089A2EE: push 00000000h
0089A2F0: push 00000003h
0089A2F2: push 00440E48h
0089A2F7: push 00000000h
0089A2F9: push 00000018h
0089A2FB: mov eax, [ebp+08h]
0089A2FE: mov eax, [eax]
0089A300: push [ebp+08h]
0089A303: call [eax+00000328h]
0089A309: push eax
0089A30A: lea eax, var_30
0089A30D: push eax
0089A30E: call 00410A84h ; Set (object)
0089A313: push eax
0089A314: lea eax, var_48
0089A317: push eax
0089A318: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089A31D: add esp, 00000010h
0089A320: push eax
0089A321: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089A326: push eax
0089A327: lea eax, var_34
0089A32A: push eax
0089A32B: call 00410A84h ; Set (object)
0089A330: push eax
0089A331: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0089A336: add esp, 0000000Ch
0089A339: lea eax, var_34
0089A33C: push eax
0089A33D: lea eax, var_30
0089A340: push eax
0089A341: push 00000002h
0089A343: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089A348: add esp, 0000000Ch
0089A34B: lea ecx, var_48
0089A34E: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0089A353: mov eax, [ebp+0Ch]
0089A356: mov ax, [eax]
0089A359: mov var_000000FC, ax
0089A360: movsx eax, word ptr var_000000FC
0089A367: mov var_00000110, eax
0089A36D: cmp var_00000110, 00000000h
0089A374: jz 89A388h
0089A376: cmp var_00000110, 00000001h
0089A37D: jz 0089A4C1h
0089A383: jmp 0089AD8Ah
0089A388: lea eax, var_28
0089A38B: push eax
0089A38C: mov eax, [ebp+08h]
0089A38F: mov eax, [eax]
0089A391: push [ebp+08h]
0089A394: call [eax+000001C0h]
0089A39A: fclex 
0089A39C: mov var_000000B8, eax
0089A3A2: cmp var_000000B8, 00000000h
0089A3A9: jnl 89A3CBh
0089A3AB: push 000001C0h
0089A3B0: push 004485C8h
0089A3B5: push [ebp+08h]
0089A3B8: push var_000000B8
0089A3BE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0089A3C3: mov var_00000114, eax
0089A3C9: jmp 89A3D2h
0089A3CB: and var_00000114, 00000000h
0089A3D2: push var_28
0089A3D5: call 004109DCh ; Val(arg_1)
0089A3DA: fstp real8 ptr var_000000B4
0089A3E0: push 00000000h
0089A3E2: push 00000002h
0089A3E4: push 00000001h
0089A3E6: push 00000000h
0089A3E8: lea eax, var_6C
0089A3EB: push eax
0089A3EC: push 00000010h
0089A3EE: push 00000880h
0089A3F3: call 00410946h ; ReDim
0089A3F8: add esp, 0000001Ch
0089A3FB: mov var_74, 00000001h
0089A402: mov var_7C, 00000002h
0089A409: lea esi, var_7C
0089A40C: push 00000000h
0089A40E: push var_6C
0089A411: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089A416: mov ecx, eax
0089A418: mov edx, esi
0089A41A: call 00410922h ; msvbvm60.dll.__vbaVarMove
0089A41F: mov var_00000084, 00000001h
0089A429: mov var_0000008C, 00000002h
0089A433: lea esi, var_0000008C
0089A439: push 00000001h
0089A43B: push var_6C
0089A43E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089A443: mov ecx, eax
0089A445: mov edx, esi
0089A447: call 00410922h ; msvbvm60.dll.__vbaVarMove
0089A44C: mov var_00000094, 00000001h
0089A456: mov var_0000009C, 00000002h
0089A460: lea esi, var_0000009C
0089A466: push 00000002h
0089A468: push var_6C
0089A46B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089A470: mov ecx, eax
0089A472: mov edx, esi
0089A474: call 00410922h ; msvbvm60.dll.__vbaVarMove
0089A479: mov edx, 0043D888h ; x95
0089A47E: lea ecx, var_2C
0089A481: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0089A486: lea eax, var_6C
0089A489: push eax
0089A48A: lea eax, var_2C
0089A48D: push eax
0089A48E: fld real8 ptr var_000000B4
0089A494: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0089A499: push eax
0089A49A: call 007A6910h
0089A49F: lea eax, var_6C
0089A4A2: push eax
0089A4A3: push 00000000h
0089A4A5: call 00410934h ; Erase
0089A4AA: lea eax, var_2C
0089A4AD: push eax
0089A4AE: lea eax, var_28
0089A4B1: push eax
0089A4B2: push 00000002h
0089A4B4: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089A4B9: add esp, 0000000Ch
0089A4BC: jmp 0089AD8Ah
0089A4C1: cmp word ptr [008F2430h], FFFFh
0089A4C9: jnz 0089A92Fh
0089A4CF: mov var_74, 00000001h
0089A4D6: mov var_7C, 00000002h
0089A4DD: cmp [008F2010h], 00000000h
0089A4E4: jnz 89A501h
0089A4E6: push 008F2010h
0089A4EB: push 00433984h
0089A4F0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089A4F5: mov var_00000118, 008F2010h
0089A4FF: jmp 89A50Bh
0089A501: mov var_00000118, 008F2010h
0089A50B: push 00000000h
0089A50D: push 00000001h
0089A50F: push 00440E48h
0089A514: push 00000000h
0089A516: push 00000018h
0089A518: mov eax, var_00000118
0089A51E: mov eax, [eax]
0089A520: mov ecx, var_00000118
0089A526: mov ecx, [ecx]
0089A528: mov ecx, [ecx]
0089A52A: push eax
0089A52B: call [ecx+0000054Ch]
0089A531: push eax
0089A532: lea eax, var_30
0089A535: push eax
0089A536: call 00410A84h ; Set (object)
0089A53B: push eax
0089A53C: lea eax, var_48
0089A53F: push eax
0089A540: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089A545: add esp, 00000010h
0089A548: push eax
0089A549: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089A54E: push eax
0089A54F: lea eax, var_34
0089A552: push eax
0089A553: call 00410A84h ; Set (object)
0089A558: push eax
0089A559: lea eax, var_58
0089A55C: push eax
0089A55D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089A562: add esp, 00000010h
0089A565: push eax
0089A566: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0089A56B: mov var_00000084, eax
0089A571: mov var_0000008C, 00000003h
0089A57B: mov var_00000094, 00000001h
0089A585: mov var_0000009C, 00000002h
0089A58F: lea eax, var_7C
0089A592: push eax
0089A593: lea eax, var_0000008C
0089A599: push eax
0089A59A: lea eax, var_0000009C
0089A5A0: push eax
0089A5A1: lea eax, var_000000D8
0089A5A7: push eax
0089A5A8: lea eax, var_000000C8
0089A5AE: push eax
0089A5AF: lea eax, var_24
0089A5B2: push eax
0089A5B3: call 00410A3Ch ; For
0089A5B8: mov var_00000108, eax
0089A5BE: lea eax, var_34
0089A5C1: push eax
0089A5C2: lea eax, var_30
0089A5C5: push eax
0089A5C6: push 00000002h
0089A5C8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089A5CD: add esp, 0000000Ch
0089A5D0: lea eax, var_58
0089A5D3: push eax
0089A5D4: lea eax, var_48
0089A5D7: push eax
0089A5D8: push 00000002h
0089A5DA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089A5DF: add esp, 0000000Ch
0089A5E2: jmp 0089A91Dh
0089A5E7: lea eax, var_24
0089A5EA: mov var_74, eax
0089A5ED: mov var_7C, 0000400Ch
0089A5F4: cmp [008F2010h], 00000000h
0089A5FB: jnz 89A618h
0089A5FD: push 008F2010h
0089A602: push 00433984h
0089A607: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089A60C: mov var_0000011C, 008F2010h
0089A616: jmp 89A622h
0089A618: mov var_0000011C, 008F2010h
0089A622: push 00000000h
0089A624: push 00000004h
0089A626: push 00440E58h
0089A62B: push 00000010h
0089A62D: pop eax
0089A62E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089A633: lea esi, var_7C
0089A636: mov edi, esp
0089A638: movsd 
0089A639: movsd 
0089A63A: movsd 
0089A63B: movsd 
0089A63C: push 00000001h
0089A63E: push 00000000h
0089A640: push 00440E48h
0089A645: push 00000000h
0089A647: push 00000018h
0089A649: mov eax, var_0000011C
0089A64F: mov eax, [eax]
0089A651: mov ecx, var_0000011C
0089A657: mov ecx, [ecx]
0089A659: mov ecx, [ecx]
0089A65B: push eax
0089A65C: call [ecx+0000054Ch]
0089A662: push eax
0089A663: lea eax, var_30
0089A666: push eax
0089A667: call 00410A84h ; Set (object)
0089A66C: push eax
0089A66D: lea eax, var_48
0089A670: push eax
0089A671: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089A676: add esp, 00000010h
0089A679: push eax
0089A67A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089A67F: push eax
0089A680: lea eax, var_34
0089A683: push eax
0089A684: call 00410A84h ; Set (object)
0089A689: push eax
0089A68A: lea eax, var_58
0089A68D: push eax
0089A68E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089A693: add esp, 00000020h
0089A696: push eax
0089A697: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089A69C: push eax
0089A69D: lea eax, var_38
0089A6A0: push eax
0089A6A1: call 00410A84h ; Set (object)
0089A6A6: push eax
0089A6A7: lea eax, var_68
0089A6AA: push eax
0089A6AB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089A6B0: add esp, 00000010h
0089A6B3: push eax
0089A6B4: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0089A6B9: sub ax, FFFFh
0089A6BD: neg ax
0089A6C0: sbb eax, eax
0089A6C2: inc eax
0089A6C3: neg eax
0089A6C5: mov var_000000B8, ax
0089A6CC: lea eax, var_38
0089A6CF: push eax
0089A6D0: lea eax, var_34
0089A6D3: push eax
0089A6D4: lea eax, var_30
0089A6D7: push eax
0089A6D8: push 00000003h
0089A6DA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089A6DF: add esp, 00000010h
0089A6E2: lea eax, var_68
0089A6E5: push eax
0089A6E6: lea eax, var_58
0089A6E9: push eax
0089A6EA: lea eax, var_48
0089A6ED: push eax
0089A6EE: push 00000003h
0089A6F0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089A6F5: add esp, 00000010h
0089A6F8: movsx eax, word ptr var_000000B8
0089A6FF: test eax, eax
0089A701: jz 0089A900h
0089A707: lea eax, var_24
0089A70A: mov var_74, eax
0089A70D: mov var_7C, 0000400Ch
0089A714: cmp [008F2010h], 00000000h
0089A71B: jnz 89A738h
0089A71D: push 008F2010h
0089A722: push 00433984h
0089A727: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089A72C: mov var_00000120, 008F2010h
0089A736: jmp 89A742h
0089A738: mov var_00000120, 008F2010h
0089A742: push 00000000h
0089A744: push 00000014h
0089A746: push 00440E58h
0089A74B: push 00000010h
0089A74D: pop eax
0089A74E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089A753: lea esi, var_7C
0089A756: mov edi, esp
0089A758: movsd 
0089A759: movsd 
0089A75A: movsd 
0089A75B: movsd 
0089A75C: push 00000001h
0089A75E: push 00000000h
0089A760: push 00440E48h
0089A765: push 00000000h
0089A767: push 00000018h
0089A769: mov eax, var_00000120
0089A76F: mov eax, [eax]
0089A771: mov ecx, var_00000120
0089A777: mov ecx, [ecx]
0089A779: mov ecx, [ecx]
0089A77B: push eax
0089A77C: call [ecx+0000054Ch]
0089A782: push eax
0089A783: lea eax, var_30
0089A786: push eax
0089A787: call 00410A84h ; Set (object)
0089A78C: push eax
0089A78D: lea eax, var_48
0089A790: push eax
0089A791: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089A796: add esp, 00000010h
0089A799: push eax
0089A79A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089A79F: push eax
0089A7A0: lea eax, var_34
0089A7A3: push eax
0089A7A4: call 00410A84h ; Set (object)
0089A7A9: push eax
0089A7AA: lea eax, var_58
0089A7AD: push eax
0089A7AE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089A7B3: add esp, 00000020h
0089A7B6: push eax
0089A7B7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089A7BC: push eax
0089A7BD: lea eax, var_38
0089A7C0: push eax
0089A7C1: call 00410A84h ; Set (object)
0089A7C6: push eax
0089A7C7: lea eax, var_68
0089A7CA: push eax
0089A7CB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089A7D0: add esp, 00000010h
0089A7D3: push eax
0089A7D4: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0089A7D9: mov edx, eax
0089A7DB: lea ecx, var_28
0089A7DE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089A7E3: push eax
0089A7E4: call 004109DCh ; Val(arg_1)
0089A7E9: fstp real8 ptr var_000000B4
0089A7EF: push 00000000h
0089A7F1: push 00000002h
0089A7F3: push 00000001h
0089A7F5: push 00000000h
0089A7F7: lea eax, var_6C
0089A7FA: push eax
0089A7FB: push 00000010h
0089A7FD: push 00000880h
0089A802: call 00410946h ; ReDim
0089A807: add esp, 0000001Ch
0089A80A: mov var_00000084, 00000001h
0089A814: mov var_0000008C, 00000002h
0089A81E: lea esi, var_0000008C
0089A824: push 00000000h
0089A826: push var_6C
0089A829: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089A82E: mov ecx, eax
0089A830: mov edx, esi
0089A832: call 00410922h ; msvbvm60.dll.__vbaVarMove
0089A837: mov var_00000094, 00000001h
0089A841: mov var_0000009C, 00000002h
0089A84B: lea esi, var_0000009C
0089A851: push 00000001h
0089A853: push var_6C
0089A856: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089A85B: mov ecx, eax
0089A85D: mov edx, esi
0089A85F: call 00410922h ; msvbvm60.dll.__vbaVarMove
0089A864: mov var_000000A4, 00000001h
0089A86E: mov var_000000AC, 00000002h
0089A878: lea esi, var_000000AC
0089A87E: push 00000002h
0089A880: push var_6C
0089A883: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089A888: mov ecx, eax
0089A88A: mov edx, esi
0089A88C: call 00410922h ; msvbvm60.dll.__vbaVarMove
0089A891: mov edx, 0043D888h ; x95
0089A896: lea ecx, var_2C
0089A899: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0089A89E: lea eax, var_6C
0089A8A1: push eax
0089A8A2: lea eax, var_2C
0089A8A5: push eax
0089A8A6: fld real8 ptr var_000000B4
0089A8AC: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0089A8B1: push eax
0089A8B2: call 007A6910h
0089A8B7: lea eax, var_6C
0089A8BA: push eax
0089A8BB: push 00000000h
0089A8BD: call 00410934h ; Erase
0089A8C2: lea eax, var_2C
0089A8C5: push eax
0089A8C6: lea eax, var_28
0089A8C9: push eax
0089A8CA: push 00000002h
0089A8CC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089A8D1: add esp, 0000000Ch
0089A8D4: lea eax, var_38
0089A8D7: push eax
0089A8D8: lea eax, var_34
0089A8DB: push eax
0089A8DC: lea eax, var_30
0089A8DF: push eax
0089A8E0: push 00000003h
0089A8E2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089A8E7: add esp, 00000010h
0089A8EA: lea eax, var_68
0089A8ED: push eax
0089A8EE: lea eax, var_58
0089A8F1: push eax
0089A8F2: lea eax, var_48
0089A8F5: push eax
0089A8F6: push 00000003h
0089A8F8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089A8FD: add esp, 00000010h
0089A900: lea eax, var_000000D8
0089A906: push eax
0089A907: lea eax, var_000000C8
0089A90D: push eax
0089A90E: lea eax, var_24
0089A911: push eax
0089A912: call 00410A36h ; Next
0089A917: mov var_00000108, eax
0089A91D: cmp var_00000108, 00000000h
0089A924: jnz 0089A5E7h
0089A92A: jmp 0089AD8Ah
0089A92F: mov var_74, 00000001h
0089A936: mov var_7C, 00000002h
0089A93D: cmp [008F2010h], 00000000h
0089A944: jnz 89A961h
0089A946: push 008F2010h
0089A94B: push 00433984h
0089A950: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089A955: mov var_00000124, 008F2010h
0089A95F: jmp 89A96Bh
0089A961: mov var_00000124, 008F2010h
0089A96B: push 00000000h
0089A96D: push 00000001h
0089A96F: push 00440E48h
0089A974: push 00000000h
0089A976: push 00000018h
0089A978: mov eax, var_00000124
0089A97E: mov eax, [eax]
0089A980: mov ecx, var_00000124
0089A986: mov ecx, [ecx]
0089A988: mov ecx, [ecx]
0089A98A: push eax
0089A98B: call [ecx+00000550h]
0089A991: push eax
0089A992: lea eax, var_30
0089A995: push eax
0089A996: call 00410A84h ; Set (object)
0089A99B: push eax
0089A99C: lea eax, var_48
0089A99F: push eax
0089A9A0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089A9A5: add esp, 00000010h
0089A9A8: push eax
0089A9A9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089A9AE: push eax
0089A9AF: lea eax, var_34
0089A9B2: push eax
0089A9B3: call 00410A84h ; Set (object)
0089A9B8: push eax
0089A9B9: lea eax, var_58
0089A9BC: push eax
0089A9BD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089A9C2: add esp, 00000010h
0089A9C5: push eax
0089A9C6: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0089A9CB: mov var_00000084, eax
0089A9D1: mov var_0000008C, 00000003h
0089A9DB: mov var_00000094, 00000001h
0089A9E5: mov var_0000009C, 00000002h
0089A9EF: lea eax, var_7C
0089A9F2: push eax
0089A9F3: lea eax, var_0000008C
0089A9F9: push eax
0089A9FA: lea eax, var_0000009C
0089AA00: push eax
0089AA01: lea eax, var_000000F8
0089AA07: push eax
0089AA08: lea eax, var_000000E8
0089AA0E: push eax
0089AA0F: lea eax, var_24
0089AA12: push eax
0089AA13: call 00410A3Ch ; For
0089AA18: mov var_0000010C, eax
0089AA1E: lea eax, var_34
0089AA21: push eax
0089AA22: lea eax, var_30
0089AA25: push eax
0089AA26: push 00000002h
0089AA28: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089AA2D: add esp, 0000000Ch
0089AA30: lea eax, var_58
0089AA33: push eax
0089AA34: lea eax, var_48
0089AA37: push eax
0089AA38: push 00000002h
0089AA3A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089AA3F: add esp, 0000000Ch
0089AA42: jmp 0089AD7Dh
0089AA47: lea eax, var_24
0089AA4A: mov var_74, eax
0089AA4D: mov var_7C, 0000400Ch
0089AA54: cmp [008F2010h], 00000000h
0089AA5B: jnz 89AA78h
0089AA5D: push 008F2010h
0089AA62: push 00433984h
0089AA67: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089AA6C: mov var_00000128, 008F2010h
0089AA76: jmp 89AA82h
0089AA78: mov var_00000128, 008F2010h
0089AA82: push 00000000h
0089AA84: push 00000004h
0089AA86: push 00440E58h
0089AA8B: push 00000010h
0089AA8D: pop eax
0089AA8E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089AA93: lea esi, var_7C
0089AA96: mov edi, esp
0089AA98: movsd 
0089AA99: movsd 
0089AA9A: movsd 
0089AA9B: movsd 
0089AA9C: push 00000001h
0089AA9E: push 00000000h
0089AAA0: push 00440E48h
0089AAA5: push 00000000h
0089AAA7: push 00000018h
0089AAA9: mov eax, var_00000128
0089AAAF: mov eax, [eax]
0089AAB1: mov ecx, var_00000128
0089AAB7: mov ecx, [ecx]
0089AAB9: mov ecx, [ecx]
0089AABB: push eax
0089AABC: call [ecx+00000550h]
0089AAC2: push eax
0089AAC3: lea eax, var_30
0089AAC6: push eax
0089AAC7: call 00410A84h ; Set (object)
0089AACC: push eax
0089AACD: lea eax, var_48
0089AAD0: push eax
0089AAD1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089AAD6: add esp, 00000010h
0089AAD9: push eax
0089AADA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089AADF: push eax
0089AAE0: lea eax, var_34
0089AAE3: push eax
0089AAE4: call 00410A84h ; Set (object)
0089AAE9: push eax
0089AAEA: lea eax, var_58
0089AAED: push eax
0089AAEE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089AAF3: add esp, 00000020h
0089AAF6: push eax
0089AAF7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089AAFC: push eax
0089AAFD: lea eax, var_38
0089AB00: push eax
0089AB01: call 00410A84h ; Set (object)
0089AB06: push eax
0089AB07: lea eax, var_68
0089AB0A: push eax
0089AB0B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089AB10: add esp, 00000010h
0089AB13: push eax
0089AB14: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0089AB19: sub ax, FFFFh
0089AB1D: neg ax
0089AB20: sbb eax, eax
0089AB22: inc eax
0089AB23: neg eax
0089AB25: mov var_000000B8, ax
0089AB2C: lea eax, var_38
0089AB2F: push eax
0089AB30: lea eax, var_34
0089AB33: push eax
0089AB34: lea eax, var_30
0089AB37: push eax
0089AB38: push 00000003h
0089AB3A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089AB3F: add esp, 00000010h
0089AB42: lea eax, var_68
0089AB45: push eax
0089AB46: lea eax, var_58
0089AB49: push eax
0089AB4A: lea eax, var_48
0089AB4D: push eax
0089AB4E: push 00000003h
0089AB50: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089AB55: add esp, 00000010h
0089AB58: movsx eax, word ptr var_000000B8
0089AB5F: test eax, eax
0089AB61: jz 0089AD60h
0089AB67: lea eax, var_24
0089AB6A: mov var_74, eax
0089AB6D: mov var_7C, 0000400Ch
0089AB74: cmp [008F2010h], 00000000h
0089AB7B: jnz 89AB98h
0089AB7D: push 008F2010h
0089AB82: push 00433984h
0089AB87: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089AB8C: mov var_0000012C, 008F2010h
0089AB96: jmp 89ABA2h
0089AB98: mov var_0000012C, 008F2010h
0089ABA2: push 00000000h
0089ABA4: push 00000014h
0089ABA6: push 00440E58h
0089ABAB: push 00000010h
0089ABAD: pop eax
0089ABAE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089ABB3: lea esi, var_7C
0089ABB6: mov edi, esp
0089ABB8: movsd 
0089ABB9: movsd 
0089ABBA: movsd 
0089ABBB: movsd 
0089ABBC: push 00000001h
0089ABBE: push 00000000h
0089ABC0: push 00440E48h
0089ABC5: push 00000000h
0089ABC7: push 00000018h
0089ABC9: mov eax, var_0000012C
0089ABCF: mov eax, [eax]
0089ABD1: mov ecx, var_0000012C
0089ABD7: mov ecx, [ecx]
0089ABD9: mov ecx, [ecx]
0089ABDB: push eax
0089ABDC: call [ecx+00000550h]
0089ABE2: push eax
0089ABE3: lea eax, var_30
0089ABE6: push eax
0089ABE7: call 00410A84h ; Set (object)
0089ABEC: push eax
0089ABED: lea eax, var_48
0089ABF0: push eax
0089ABF1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089ABF6: add esp, 00000010h
0089ABF9: push eax
0089ABFA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089ABFF: push eax
0089AC00: lea eax, var_34
0089AC03: push eax
0089AC04: call 00410A84h ; Set (object)
0089AC09: push eax
0089AC0A: lea eax, var_58
0089AC0D: push eax
0089AC0E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089AC13: add esp, 00000020h
0089AC16: push eax
0089AC17: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089AC1C: push eax
0089AC1D: lea eax, var_38
0089AC20: push eax
0089AC21: call 00410A84h ; Set (object)
0089AC26: push eax
0089AC27: lea eax, var_68
0089AC2A: push eax
0089AC2B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089AC30: add esp, 00000010h
0089AC33: push eax
0089AC34: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0089AC39: mov edx, eax
0089AC3B: lea ecx, var_28
0089AC3E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089AC43: push eax
0089AC44: call 004109DCh ; Val(arg_1)
0089AC49: fstp real8 ptr var_000000B4
0089AC4F: push 00000000h
0089AC51: push 00000002h
0089AC53: push 00000001h
0089AC55: push 00000000h
0089AC57: lea eax, var_6C
0089AC5A: push eax
0089AC5B: push 00000010h
0089AC5D: push 00000880h
0089AC62: call 00410946h ; ReDim
0089AC67: add esp, 0000001Ch
0089AC6A: mov var_00000084, 00000001h
0089AC74: mov var_0000008C, 00000002h
0089AC7E: lea esi, var_0000008C
0089AC84: push 00000000h
0089AC86: push var_6C
0089AC89: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089AC8E: mov ecx, eax
0089AC90: mov edx, esi
0089AC92: call 00410922h ; msvbvm60.dll.__vbaVarMove
0089AC97: mov var_00000094, 00000001h
0089ACA1: mov var_0000009C, 00000002h
0089ACAB: lea esi, var_0000009C
0089ACB1: push 00000001h
0089ACB3: push var_6C
0089ACB6: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089ACBB: mov ecx, eax
0089ACBD: mov edx, esi
0089ACBF: call 00410922h ; msvbvm60.dll.__vbaVarMove
0089ACC4: mov var_000000A4, 00000001h
0089ACCE: mov var_000000AC, 00000002h
0089ACD8: lea esi, var_000000AC
0089ACDE: push 00000002h
0089ACE0: push var_6C
0089ACE3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089ACE8: mov ecx, eax
0089ACEA: mov edx, esi
0089ACEC: call 00410922h ; msvbvm60.dll.__vbaVarMove
0089ACF1: mov edx, 0043D888h ; x95
0089ACF6: lea ecx, var_2C
0089ACF9: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0089ACFE: lea eax, var_6C
0089AD01: push eax
0089AD02: lea eax, var_2C
0089AD05: push eax
0089AD06: fld real8 ptr var_000000B4
0089AD0C: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0089AD11: push eax
0089AD12: call 007A6910h
0089AD17: lea eax, var_6C
0089AD1A: push eax
0089AD1B: push 00000000h
0089AD1D: call 00410934h ; Erase
0089AD22: lea eax, var_2C
0089AD25: push eax
0089AD26: lea eax, var_28
0089AD29: push eax
0089AD2A: push 00000002h
0089AD2C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089AD31: add esp, 0000000Ch
0089AD34: lea eax, var_38
0089AD37: push eax
0089AD38: lea eax, var_34
0089AD3B: push eax
0089AD3C: lea eax, var_30
0089AD3F: push eax
0089AD40: push 00000003h
0089AD42: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089AD47: add esp, 00000010h
0089AD4A: lea eax, var_68
0089AD4D: push eax
0089AD4E: lea eax, var_58
0089AD51: push eax
0089AD52: lea eax, var_48
0089AD55: push eax
0089AD56: push 00000003h
0089AD58: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089AD5D: add esp, 00000010h
0089AD60: lea eax, var_000000F8
0089AD66: push eax
0089AD67: lea eax, var_000000E8
0089AD6D: push eax
0089AD6E: lea eax, var_24
0089AD71: push eax
0089AD72: call 00410A36h ; Next
0089AD77: mov var_0000010C, eax
0089AD7D: cmp var_0000010C, 00000000h
0089AD84: jnz 0089AA47h
0089AD8A: mov var_04, 00000000h
0089AD91: wait 
0089AD92: push 0089AE12h
0089AD97: jmp 89ADE3h
0089AD99: lea eax, var_2C
0089AD9C: push eax
0089AD9D: lea eax, var_28
0089ADA0: push eax
0089ADA1: push 00000002h
0089ADA3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089ADA8: add esp, 0000000Ch
0089ADAB: lea eax, var_38
0089ADAE: push eax
0089ADAF: lea eax, var_34
0089ADB2: push eax
0089ADB3: lea eax, var_30
0089ADB6: push eax
0089ADB7: push 00000003h
0089ADB9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089ADBE: add esp, 00000010h
0089ADC1: lea eax, var_68
0089ADC4: push eax
0089ADC5: lea eax, var_58
0089ADC8: push eax
0089ADC9: lea eax, var_48
0089ADCC: push eax
0089ADCD: push 00000003h
0089ADCF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089ADD4: add esp, 00000010h
0089ADD7: lea eax, var_6C
0089ADDA: push eax
0089ADDB: push 00000000h
0089ADDD: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0089ADE2: ret 
End Sub

Private sub mnuMSNCopy__898778
00898778: push ebp
00898779: mov ebp, esp
0089877B: sub esp, 00000018h
0089877E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00898783: mov eax, fs:[00h]
00898789: push eax
0089878A: mov fs:[00000000h], esp
00898791: mov eax, 00000184h
00898796: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089879B: push ebx
0089879C: push esi
0089879D: push edi
0089879E: mov var_18, esp
008987A1: mov var_14, 0040DF78h
008987A8: mov eax, [ebp+08h]
008987AB: and eax, 00000001h
008987AE: mov var_10, eax
008987B1: mov eax, [ebp+08h]
008987B4: and al, FEh
008987B6: mov [ebp+08h], eax
008987B9: mov var_0C, 00000000h
008987C0: mov eax, [ebp+08h]
008987C3: mov eax, [eax]
008987C5: push [ebp+08h]
008987C8: call [eax+04h]
008987CB: mov var_04, 00000001h
008987D2: mov var_04, 00000002h
008987D9: push FFFFFFFFh
008987DB: call 00410A60h ; On Error ...
008987E0: mov var_04, 00000003h
008987E7: mov eax, [ebp+0Ch]
008987EA: mov ax, [eax]
008987ED: mov var_00000154, ax
008987F4: movsx eax, word ptr var_00000154
008987FB: mov var_00000174, eax
00898801: cmp var_00000174, 00000000h
00898808: jz 898821h
0089880A: cmp var_00000174, 00000001h
00898811: jz 008990EFh
00898817: jmp 00899652h
0089881C: jmp 00899652h
00898821: mov var_04, 00000005h
00898828: mov var_000000C8, 00000001h
00898832: mov var_000000D0, 00000002h
0089883C: push 00000000h
0089883E: push 00000001h
00898840: push 00440E48h
00898845: push 00000000h
00898847: push 00000018h
00898849: mov eax, [ebp+08h]
0089884C: mov eax, [eax]
0089884E: push [ebp+08h]
00898851: call [eax+00000328h]
00898857: push eax
00898858: lea eax, var_4C
0089885B: push eax
0089885C: call 00410A84h ; Set (object)
00898861: push eax
00898862: lea eax, var_70
00898865: push eax
00898866: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089886B: add esp, 00000010h
0089886E: push eax
0089886F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00898874: push eax
00898875: lea eax, var_50
00898878: push eax
00898879: call 00410A84h ; Set (object)
0089887E: push eax
0089887F: lea eax, var_80
00898882: push eax
00898883: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898888: add esp, 00000010h
0089888B: push eax
0089888C: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00898891: mov var_000000D8, eax
00898897: mov var_000000E0, 00000003h
008988A1: mov var_000000E8, 00000001h
008988AB: mov var_000000F0, 00000002h
008988B5: lea eax, var_000000D0
008988BB: push eax
008988BC: lea eax, var_000000E0
008988C2: push eax
008988C3: lea eax, var_000000F0
008988C9: push eax
008988CA: lea eax, var_00000130
008988D0: push eax
008988D1: lea eax, var_00000120
008988D7: push eax
008988D8: lea eax, var_30
008988DB: push eax
008988DC: call 00410A3Ch ; For
008988E1: mov var_0000016C, eax
008988E7: lea eax, var_50
008988EA: push eax
008988EB: lea eax, var_4C
008988EE: push eax
008988EF: push 00000002h
008988F1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008988F6: add esp, 0000000Ch
008988F9: lea eax, var_80
008988FC: push eax
008988FD: lea eax, var_70
00898900: push eax
00898901: push 00000002h
00898903: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00898908: add esp, 0000000Ch
0089890B: jmp 00898EDEh
00898910: mov var_04, 00000006h
00898917: lea eax, var_30
0089891A: mov var_000000C8, eax
00898920: mov var_000000D0, 0000400Ch
0089892A: push 00000000h
0089892C: push 00000004h
0089892E: push 00440E58h
00898933: push 00000010h
00898935: pop eax
00898936: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089893B: lea esi, var_000000D0
00898941: mov edi, esp
00898943: movsd 
00898944: movsd 
00898945: movsd 
00898946: movsd 
00898947: push 00000001h
00898949: push 00000000h
0089894B: push 00440E48h
00898950: push 00000000h
00898952: push 00000018h
00898954: mov eax, [ebp+08h]
00898957: mov eax, [eax]
00898959: push [ebp+08h]
0089895C: call [eax+00000328h]
00898962: push eax
00898963: lea eax, var_4C
00898966: push eax
00898967: call 00410A84h ; Set (object)
0089896C: push eax
0089896D: lea eax, var_70
00898970: push eax
00898971: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898976: add esp, 00000010h
00898979: push eax
0089897A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089897F: push eax
00898980: lea eax, var_50
00898983: push eax
00898984: call 00410A84h ; Set (object)
00898989: push eax
0089898A: lea eax, var_80
0089898D: push eax
0089898E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898993: add esp, 00000020h
00898996: push eax
00898997: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089899C: push eax
0089899D: lea eax, var_54
008989A0: push eax
008989A1: call 00410A84h ; Set (object)
008989A6: push eax
008989A7: lea eax, var_00000090
008989AD: push eax
008989AE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008989B3: add esp, 00000010h
008989B6: push eax
008989B7: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008989BC: sub ax, FFFFh
008989C0: neg ax
008989C3: sbb eax, eax
008989C5: inc eax
008989C6: neg eax
008989C8: mov var_00000104, ax
008989CF: lea eax, var_54
008989D2: push eax
008989D3: lea eax, var_50
008989D6: push eax
008989D7: lea eax, var_4C
008989DA: push eax
008989DB: push 00000003h
008989DD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008989E2: add esp, 00000010h
008989E5: lea eax, var_00000090
008989EB: push eax
008989EC: lea eax, var_80
008989EF: push eax
008989F0: lea eax, var_70
008989F3: push eax
008989F4: push 00000003h
008989F6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008989FB: add esp, 00000010h
008989FE: movsx eax, word ptr var_00000104
00898A05: test eax, eax
00898A07: jz 00898EBAh
00898A0D: mov var_04, 00000007h
00898A14: lea eax, var_30
00898A17: mov var_000000C8, eax
00898A1D: mov var_000000D0, 0000400Ch
00898A27: push 00000000h
00898A29: push 00000000h
00898A2B: push 00440E58h
00898A30: push 00000010h
00898A32: pop eax
00898A33: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00898A38: lea esi, var_000000D0
00898A3E: mov edi, esp
00898A40: movsd 
00898A41: movsd 
00898A42: movsd 
00898A43: movsd 
00898A44: push 00000001h
00898A46: push 00000000h
00898A48: push 00440E48h
00898A4D: push 00000000h
00898A4F: push 00000018h
00898A51: mov eax, [ebp+08h]
00898A54: mov eax, [eax]
00898A56: push [ebp+08h]
00898A59: call [eax+00000328h]
00898A5F: push eax
00898A60: lea eax, var_4C
00898A63: push eax
00898A64: call 00410A84h ; Set (object)
00898A69: push eax
00898A6A: lea eax, var_70
00898A6D: push eax
00898A6E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898A73: add esp, 00000010h
00898A76: push eax
00898A77: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00898A7C: push eax
00898A7D: lea eax, var_50
00898A80: push eax
00898A81: call 00410A84h ; Set (object)
00898A86: push eax
00898A87: lea eax, var_80
00898A8A: push eax
00898A8B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898A90: add esp, 00000020h
00898A93: push eax
00898A94: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00898A99: push eax
00898A9A: lea eax, var_54
00898A9D: push eax
00898A9E: call 00410A84h ; Set (object)
00898AA3: push eax
00898AA4: lea eax, var_00000090
00898AAA: push eax
00898AAB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898AB0: add esp, 00000010h
00898AB3: push eax
00898AB4: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00898AB9: mov edx, eax
00898ABB: lea ecx, var_38
00898ABE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00898AC3: push eax
00898AC4: push 00000000h
00898AC6: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00898ACB: neg eax
00898ACD: sbb eax, eax
00898ACF: inc eax
00898AD0: neg eax
00898AD2: mov var_00000104, ax
00898AD9: lea ecx, var_38
00898ADC: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00898AE1: lea eax, var_54
00898AE4: push eax
00898AE5: lea eax, var_50
00898AE8: push eax
00898AE9: lea eax, var_4C
00898AEC: push eax
00898AED: push 00000003h
00898AEF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00898AF4: add esp, 00000010h
00898AF7: lea eax, var_00000090
00898AFD: push eax
00898AFE: lea eax, var_80
00898B01: push eax
00898B02: lea eax, var_70
00898B05: push eax
00898B06: push 00000003h
00898B08: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00898B0D: add esp, 00000010h
00898B10: movsx eax, word ptr var_00000104
00898B17: test eax, eax
00898B19: jz 00898C6Bh
00898B1F: mov var_04, 00000008h
00898B26: mov var_000000D8, 00000001h
00898B30: mov var_000000E0, 00000003h
00898B3A: lea eax, var_30
00898B3D: mov var_000000C8, eax
00898B43: mov var_000000D0, 0000400Ch
00898B4D: push var_34
00898B50: push 00000010h
00898B52: pop eax
00898B53: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00898B58: lea esi, var_000000E0
00898B5E: mov edi, esp
00898B60: movsd 
00898B61: movsd 
00898B62: movsd 
00898B63: movsd 
00898B64: push 00000001h
00898B66: push 00000010h
00898B68: push 00440E58h
00898B6D: push 00000010h
00898B6F: pop eax
00898B70: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00898B75: lea esi, var_000000D0
00898B7B: mov edi, esp
00898B7D: movsd 
00898B7E: movsd 
00898B7F: movsd 
00898B80: movsd 
00898B81: push 00000001h
00898B83: push 00000000h
00898B85: push 00440E48h
00898B8A: push 00000000h
00898B8C: push 00000018h
00898B8E: mov eax, [ebp+08h]
00898B91: mov eax, [eax]
00898B93: push [ebp+08h]
00898B96: call [eax+00000328h]
00898B9C: push eax
00898B9D: lea eax, var_4C
00898BA0: push eax
00898BA1: call 00410A84h ; Set (object)
00898BA6: push eax
00898BA7: lea eax, var_70
00898BAA: push eax
00898BAB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898BB0: add esp, 00000010h
00898BB3: push eax
00898BB4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00898BB9: push eax
00898BBA: lea eax, var_50
00898BBD: push eax
00898BBE: call 00410A84h ; Set (object)
00898BC3: push eax
00898BC4: lea eax, var_80
00898BC7: push eax
00898BC8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898BCD: add esp, 00000020h
00898BD0: push eax
00898BD1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00898BD6: push eax
00898BD7: lea eax, var_54
00898BDA: push eax
00898BDB: call 00410A84h ; Set (object)
00898BE0: push eax
00898BE1: lea eax, var_00000090
00898BE7: push eax
00898BE8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898BED: add esp, 00000020h
00898BF0: push eax
00898BF1: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00898BF6: mov edx, eax
00898BF8: lea ecx, var_38
00898BFB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00898C00: push eax
00898C01: call 00410A18h ; &
00898C06: mov edx, eax
00898C08: lea ecx, var_3C
00898C0B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00898C10: push eax
00898C11: push 00441264h ; vbCrLf
00898C16: call 00410A18h ; &
00898C1B: mov edx, eax
00898C1D: lea ecx, var_34
00898C20: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00898C25: lea eax, var_3C
00898C28: push eax
00898C29: lea eax, var_38
00898C2C: push eax
00898C2D: push 00000002h
00898C2F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00898C34: add esp, 0000000Ch
00898C37: lea eax, var_54
00898C3A: push eax
00898C3B: lea eax, var_50
00898C3E: push eax
00898C3F: lea eax, var_4C
00898C42: push eax
00898C43: push 00000003h
00898C45: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00898C4A: add esp, 00000010h
00898C4D: lea eax, var_00000090
00898C53: push eax
00898C54: lea eax, var_80
00898C57: push eax
00898C58: lea eax, var_70
00898C5B: push eax
00898C5C: push 00000003h
00898C5E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00898C63: add esp, 00000010h
00898C66: jmp 00898EBAh
00898C6B: mov var_04, 0000000Ah
00898C72: lea eax, var_30
00898C75: mov var_000000C8, eax
00898C7B: mov var_000000D0, 0000400Ch
00898C85: mov var_000000E8, 00000001h
00898C8F: mov var_000000F0, 00000003h
00898C99: lea eax, var_30
00898C9C: mov var_000000D8, eax
00898CA2: mov var_000000E0, 0000400Ch
00898CAC: push var_34
00898CAF: push 00000000h
00898CB1: push 00000000h
00898CB3: push 00440E58h
00898CB8: push 00000010h
00898CBA: pop eax
00898CBB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00898CC0: lea esi, var_000000D0
00898CC6: mov edi, esp
00898CC8: movsd 
00898CC9: movsd 
00898CCA: movsd 
00898CCB: movsd 
00898CCC: push 00000001h
00898CCE: push 00000000h
00898CD0: push 00440E48h
00898CD5: push 00000000h
00898CD7: push 00000018h
00898CD9: mov eax, [ebp+08h]
00898CDC: mov eax, [eax]
00898CDE: push [ebp+08h]
00898CE1: call [eax+00000328h]
00898CE7: push eax
00898CE8: lea eax, var_4C
00898CEB: push eax
00898CEC: call 00410A84h ; Set (object)
00898CF1: push eax
00898CF2: lea eax, var_70
00898CF5: push eax
00898CF6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898CFB: add esp, 00000010h
00898CFE: push eax
00898CFF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00898D04: push eax
00898D05: lea eax, var_50
00898D08: push eax
00898D09: call 00410A84h ; Set (object)
00898D0E: push eax
00898D0F: lea eax, var_80
00898D12: push eax
00898D13: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898D18: add esp, 00000020h
00898D1B: push eax
00898D1C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00898D21: push eax
00898D22: lea eax, var_54
00898D25: push eax
00898D26: call 00410A84h ; Set (object)
00898D2B: push eax
00898D2C: lea eax, var_00000090
00898D32: push eax
00898D33: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898D38: add esp, 00000010h
00898D3B: push eax
00898D3C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00898D41: mov edx, eax
00898D43: lea ecx, var_38
00898D46: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00898D4B: push eax
00898D4C: call 00410A18h ; &
00898D51: mov edx, eax
00898D53: lea ecx, var_3C
00898D56: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00898D5B: push eax
00898D5C: push 00445568h
00898D61: call 00410A18h ; &
00898D66: mov edx, eax
00898D68: lea ecx, var_40
00898D6B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00898D70: push eax
00898D71: push 00000010h
00898D73: pop eax
00898D74: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00898D79: lea esi, var_000000F0
00898D7F: mov edi, esp
00898D81: movsd 
00898D82: movsd 
00898D83: movsd 
00898D84: movsd 
00898D85: push 00000001h
00898D87: push 00000010h
00898D89: push 00440E58h
00898D8E: push 00000010h
00898D90: pop eax
00898D91: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00898D96: lea esi, var_000000E0
00898D9C: mov edi, esp
00898D9E: movsd 
00898D9F: movsd 
00898DA0: movsd 
00898DA1: movsd 
00898DA2: push 00000001h
00898DA4: push 00000000h
00898DA6: push 00440E48h
00898DAB: push 00000000h
00898DAD: push 00000018h
00898DAF: mov eax, [ebp+08h]
00898DB2: mov eax, [eax]
00898DB4: push [ebp+08h]
00898DB7: call [eax+00000328h]
00898DBD: push eax
00898DBE: lea eax, var_58
00898DC1: push eax
00898DC2: call 00410A84h ; Set (object)
00898DC7: push eax
00898DC8: lea eax, var_000000A0
00898DCE: push eax
00898DCF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898DD4: add esp, 00000010h
00898DD7: push eax
00898DD8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00898DDD: push eax
00898DDE: lea eax, var_5C
00898DE1: push eax
00898DE2: call 00410A84h ; Set (object)
00898DE7: push eax
00898DE8: lea eax, var_000000B0
00898DEE: push eax
00898DEF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898DF4: add esp, 00000020h
00898DF7: push eax
00898DF8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00898DFD: push eax
00898DFE: lea eax, var_60
00898E01: push eax
00898E02: call 00410A84h ; Set (object)
00898E07: push eax
00898E08: lea eax, var_000000C0
00898E0E: push eax
00898E0F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00898E14: add esp, 00000020h
00898E17: push eax
00898E18: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00898E1D: mov edx, eax
00898E1F: lea ecx, var_44
00898E22: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00898E27: push eax
00898E28: call 00410A18h ; &
00898E2D: mov edx, eax
00898E2F: lea ecx, var_48
00898E32: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00898E37: push eax
00898E38: push 00441264h ; vbCrLf
00898E3D: call 00410A18h ; &
00898E42: mov edx, eax
00898E44: lea ecx, var_34
00898E47: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00898E4C: lea eax, var_48
00898E4F: push eax
00898E50: lea eax, var_44
00898E53: push eax
00898E54: lea eax, var_40
00898E57: push eax
00898E58: lea eax, var_3C
00898E5B: push eax
00898E5C: lea eax, var_38
00898E5F: push eax
00898E60: push 00000005h
00898E62: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00898E67: add esp, 00000018h
00898E6A: lea eax, var_60
00898E6D: push eax
00898E6E: lea eax, var_5C
00898E71: push eax
00898E72: lea eax, var_58
00898E75: push eax
00898E76: lea eax, var_54
00898E79: push eax
00898E7A: lea eax, var_50
00898E7D: push eax
00898E7E: lea eax, var_4C
00898E81: push eax
00898E82: push 00000006h
00898E84: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00898E89: add esp, 0000001Ch
00898E8C: lea eax, var_000000C0
00898E92: push eax
00898E93: lea eax, var_000000B0
00898E99: push eax
00898E9A: lea eax, var_000000A0
00898EA0: push eax
00898EA1: lea eax, var_00000090
00898EA7: push eax
00898EA8: lea eax, var_80
00898EAB: push eax
00898EAC: lea eax, var_70
00898EAF: push eax
00898EB0: push 00000006h
00898EB2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00898EB7: add esp, 0000001Ch
00898EBA: mov var_04, 0000000Dh
00898EC1: lea eax, var_00000130
00898EC7: push eax
00898EC8: lea eax, var_00000120
00898ECE: push eax
00898ECF: lea eax, var_30
00898ED2: push eax
00898ED3: call 00410A36h ; Next
00898ED8: mov var_0000016C, eax
00898EDE: cmp var_0000016C, 00000000h
00898EE5: jnz 00898910h
00898EEB: mov var_04, 0000000Eh
00898EF2: cmp [008F529Ch], 00000000h
00898EF9: jnz 898F16h
00898EFB: push 008F529Ch
00898F00: push 00440F2Ch
00898F05: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00898F0A: mov var_00000178, 008F529Ch
00898F14: jmp 898F20h
00898F16: mov var_00000178, 008F529Ch
00898F20: mov eax, var_00000178
00898F26: mov eax, [eax]
00898F28: mov var_00000104, eax
00898F2E: lea eax, var_4C
00898F31: push eax
00898F32: mov eax, var_00000104
00898F38: mov eax, [eax]
00898F3A: push var_00000104
00898F40: call [eax+1Ch]
00898F43: fclex 
00898F45: mov var_00000108, eax
00898F4B: cmp var_00000108, 00000000h
00898F52: jnl 898F74h
00898F54: push 0000001Ch
00898F56: push 00440F1Ch
00898F5B: push var_00000104
00898F61: push var_00000108
00898F67: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00898F6C: mov var_0000017C, eax
00898F72: jmp 898F7Bh
00898F74: and var_0000017C, 00000000h
00898F7B: mov eax, var_4C
00898F7E: mov var_0000010C, eax
00898F84: mov eax, var_0000010C
00898F8A: mov eax, [eax]
00898F8C: push var_0000010C
00898F92: call [eax+50h]
00898F95: fclex 
00898F97: mov var_00000110, eax
00898F9D: cmp var_00000110, 00000000h
00898FA4: jnl 898FC6h
00898FA6: push 00000050h
00898FA8: push 00445554h
00898FAD: push var_0000010C
00898FB3: push var_00000110
00898FB9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00898FBE: mov var_00000180, eax
00898FC4: jmp 898FCDh
00898FC6: and var_00000180, 00000000h
00898FCD: lea ecx, var_4C
00898FD0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00898FD5: mov var_04, 0000000Fh
00898FDC: cmp [008F529Ch], 00000000h
00898FE3: jnz 899000h
00898FE5: push 008F529Ch
00898FEA: push 00440F2Ch
00898FEF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00898FF4: mov var_00000184, 008F529Ch
00898FFE: jmp 89900Ah
00899000: mov var_00000184, 008F529Ch
0089900A: mov eax, var_00000184
00899010: mov eax, [eax]
00899012: mov var_00000104, eax
00899018: lea eax, var_4C
0089901B: push eax
0089901C: mov eax, var_00000104
00899022: mov eax, [eax]
00899024: push var_00000104
0089902A: call [eax+1Ch]
0089902D: fclex 
0089902F: mov var_00000108, eax
00899035: cmp var_00000108, 00000000h
0089903C: jnl 89905Eh
0089903E: push 0000001Ch
00899040: push 00440F1Ch
00899045: push var_00000104
0089904B: push var_00000108
00899051: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00899056: mov var_00000188, eax
0089905C: jmp 899065h
0089905E: and var_00000188, 00000000h
00899065: mov eax, var_4C
00899068: mov var_0000010C, eax
0089906E: mov var_000000C8, 80020004h
00899078: mov var_000000D0, 0000000Ah
00899082: push 00000010h
00899084: pop eax
00899085: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089908A: lea esi, var_000000D0
00899090: mov edi, esp
00899092: movsd 
00899093: movsd 
00899094: movsd 
00899095: movsd 
00899096: push var_34
00899099: mov eax, var_0000010C
0089909F: mov eax, [eax]
008990A1: push var_0000010C
008990A7: call [eax+60h]
008990AA: fclex 
008990AC: mov var_00000110, eax
008990B2: cmp var_00000110, 00000000h
008990B9: jnl 8990DBh
008990BB: push 00000060h
008990BD: push 00445554h
008990C2: push var_0000010C
008990C8: push var_00000110
008990CE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008990D3: mov var_0000018C, eax
008990D9: jmp 8990E2h
008990DB: and var_0000018C, 00000000h
008990E2: lea ecx, var_4C
008990E5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008990EA: jmp 00899652h
008990EF: mov var_04, 00000011h
008990F6: mov var_000000C8, 00000001h
00899100: mov var_000000D0, 00000002h
0089910A: push 00000000h
0089910C: push 00000001h
0089910E: push 00440E48h
00899113: push 00000000h
00899115: push 00000018h
00899117: mov eax, [ebp+08h]
0089911A: mov eax, [eax]
0089911C: push [ebp+08h]
0089911F: call [eax+00000328h]
00899125: push eax
00899126: lea eax, var_4C
00899129: push eax
0089912A: call 00410A84h ; Set (object)
0089912F: push eax
00899130: lea eax, var_70
00899133: push eax
00899134: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899139: add esp, 00000010h
0089913C: push eax
0089913D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00899142: push eax
00899143: lea eax, var_50
00899146: push eax
00899147: call 00410A84h ; Set (object)
0089914C: push eax
0089914D: lea eax, var_80
00899150: push eax
00899151: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899156: add esp, 00000010h
00899159: push eax
0089915A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0089915F: mov var_000000D8, eax
00899165: mov var_000000E0, 00000003h
0089916F: mov var_000000E8, 00000001h
00899179: mov var_000000F0, 00000002h
00899183: lea eax, var_000000D0
00899189: push eax
0089918A: lea eax, var_000000E0
00899190: push eax
00899191: lea eax, var_000000F0
00899197: push eax
00899198: lea eax, var_00000150
0089919E: push eax
0089919F: lea eax, var_00000140
008991A5: push eax
008991A6: lea eax, var_30
008991A9: push eax
008991AA: call 00410A3Ch ; For
008991AF: mov var_00000170, eax
008991B5: lea eax, var_50
008991B8: push eax
008991B9: lea eax, var_4C
008991BC: push eax
008991BD: push 00000002h
008991BF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008991C4: add esp, 0000000Ch
008991C7: lea eax, var_80
008991CA: push eax
008991CB: lea eax, var_70
008991CE: push eax
008991CF: push 00000002h
008991D1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008991D6: add esp, 0000000Ch
008991D9: jmp 00899446h
008991DE: mov var_04, 00000012h
008991E5: lea eax, var_30
008991E8: mov var_000000C8, eax
008991EE: mov var_000000D0, 0000400Ch
008991F8: push 00000000h
008991FA: push 00000004h
008991FC: push 00440E58h
00899201: push 00000010h
00899203: pop eax
00899204: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00899209: lea esi, var_000000D0
0089920F: mov edi, esp
00899211: movsd 
00899212: movsd 
00899213: movsd 
00899214: movsd 
00899215: push 00000001h
00899217: push 00000000h
00899219: push 00440E48h
0089921E: push 00000000h
00899220: push 00000018h
00899222: mov eax, [ebp+08h]
00899225: mov eax, [eax]
00899227: push [ebp+08h]
0089922A: call [eax+00000328h]
00899230: push eax
00899231: lea eax, var_4C
00899234: push eax
00899235: call 00410A84h ; Set (object)
0089923A: push eax
0089923B: lea eax, var_70
0089923E: push eax
0089923F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899244: add esp, 00000010h
00899247: push eax
00899248: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089924D: push eax
0089924E: lea eax, var_50
00899251: push eax
00899252: call 00410A84h ; Set (object)
00899257: push eax
00899258: lea eax, var_80
0089925B: push eax
0089925C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899261: add esp, 00000020h
00899264: push eax
00899265: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089926A: push eax
0089926B: lea eax, var_54
0089926E: push eax
0089926F: call 00410A84h ; Set (object)
00899274: push eax
00899275: lea eax, var_00000090
0089927B: push eax
0089927C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899281: add esp, 00000010h
00899284: push eax
00899285: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0089928A: sub ax, FFFFh
0089928E: neg ax
00899291: sbb eax, eax
00899293: inc eax
00899294: neg eax
00899296: mov var_00000104, ax
0089929D: lea eax, var_54
008992A0: push eax
008992A1: lea eax, var_50
008992A4: push eax
008992A5: lea eax, var_4C
008992A8: push eax
008992A9: push 00000003h
008992AB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008992B0: add esp, 00000010h
008992B3: lea eax, var_00000090
008992B9: push eax
008992BA: lea eax, var_80
008992BD: push eax
008992BE: lea eax, var_70
008992C1: push eax
008992C2: push 00000003h
008992C4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008992C9: add esp, 00000010h
008992CC: movsx eax, word ptr var_00000104
008992D3: test eax, eax
008992D5: jz 00899422h
008992DB: mov var_04, 00000013h
008992E2: mov var_000000D8, 00000001h
008992EC: mov var_000000E0, 00000003h
008992F6: lea eax, var_30
008992F9: mov var_000000C8, eax
008992FF: mov var_000000D0, 0000400Ch
00899309: push var_34
0089930C: push 00000010h
0089930E: pop eax
0089930F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00899314: lea esi, var_000000E0
0089931A: mov edi, esp
0089931C: movsd 
0089931D: movsd 
0089931E: movsd 
0089931F: movsd 
00899320: push 00000001h
00899322: push 00000010h
00899324: push 00440E58h
00899329: push 00000010h
0089932B: pop eax
0089932C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00899331: lea esi, var_000000D0
00899337: mov edi, esp
00899339: movsd 
0089933A: movsd 
0089933B: movsd 
0089933C: movsd 
0089933D: push 00000001h
0089933F: push 00000000h
00899341: push 00440E48h
00899346: push 00000000h
00899348: push 00000018h
0089934A: mov eax, [ebp+08h]
0089934D: mov eax, [eax]
0089934F: push [ebp+08h]
00899352: call [eax+00000328h]
00899358: push eax
00899359: lea eax, var_4C
0089935C: push eax
0089935D: call 00410A84h ; Set (object)
00899362: push eax
00899363: lea eax, var_70
00899366: push eax
00899367: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089936C: add esp, 00000010h
0089936F: push eax
00899370: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00899375: push eax
00899376: lea eax, var_50
00899379: push eax
0089937A: call 00410A84h ; Set (object)
0089937F: push eax
00899380: lea eax, var_80
00899383: push eax
00899384: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899389: add esp, 00000020h
0089938C: push eax
0089938D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00899392: push eax
00899393: lea eax, var_54
00899396: push eax
00899397: call 00410A84h ; Set (object)
0089939C: push eax
0089939D: lea eax, var_00000090
008993A3: push eax
008993A4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008993A9: add esp, 00000020h
008993AC: push eax
008993AD: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008993B2: mov edx, eax
008993B4: lea ecx, var_38
008993B7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008993BC: push eax
008993BD: call 00410A18h ; &
008993C2: mov edx, eax
008993C4: lea ecx, var_3C
008993C7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008993CC: push eax
008993CD: push 00441264h ; vbCrLf
008993D2: call 00410A18h ; &
008993D7: mov edx, eax
008993D9: lea ecx, var_34
008993DC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008993E1: lea eax, var_3C
008993E4: push eax
008993E5: lea eax, var_38
008993E8: push eax
008993E9: push 00000002h
008993EB: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008993F0: add esp, 0000000Ch
008993F3: lea eax, var_54
008993F6: push eax
008993F7: lea eax, var_50
008993FA: push eax
008993FB: lea eax, var_4C
008993FE: push eax
008993FF: push 00000003h
00899401: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00899406: add esp, 00000010h
00899409: lea eax, var_00000090
0089940F: push eax
00899410: lea eax, var_80
00899413: push eax
00899414: lea eax, var_70
00899417: push eax
00899418: push 00000003h
0089941A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089941F: add esp, 00000010h
00899422: mov var_04, 00000015h
00899429: lea eax, var_00000150
0089942F: push eax
00899430: lea eax, var_00000140
00899436: push eax
00899437: lea eax, var_30
0089943A: push eax
0089943B: call 00410A36h ; Next
00899440: mov var_00000170, eax
00899446: cmp var_00000170, 00000000h
0089944D: jnz 008991DEh
00899453: mov var_04, 00000016h
0089945A: cmp [008F529Ch], 00000000h
00899461: jnz 89947Eh
00899463: push 008F529Ch
00899468: push 00440F2Ch
0089946D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00899472: mov var_00000190, 008F529Ch
0089947C: jmp 899488h
0089947E: mov var_00000190, 008F529Ch
00899488: mov eax, var_00000190
0089948E: mov eax, [eax]
00899490: mov var_00000104, eax
00899496: lea eax, var_4C
00899499: push eax
0089949A: mov eax, var_00000104
008994A0: mov eax, [eax]
008994A2: push var_00000104
008994A8: call [eax+1Ch]
008994AB: fclex 
008994AD: mov var_00000108, eax
008994B3: cmp var_00000108, 00000000h
008994BA: jnl 8994DCh
008994BC: push 0000001Ch
008994BE: push 00440F1Ch
008994C3: push var_00000104
008994C9: push var_00000108
008994CF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008994D4: mov var_00000194, eax
008994DA: jmp 8994E3h
008994DC: and var_00000194, 00000000h
008994E3: mov eax, var_4C
008994E6: mov var_0000010C, eax
008994EC: mov eax, var_0000010C
008994F2: mov eax, [eax]
008994F4: push var_0000010C
008994FA: call [eax+50h]
008994FD: fclex 
008994FF: mov var_00000110, eax
00899505: cmp var_00000110, 00000000h
0089950C: jnl 89952Eh
0089950E: push 00000050h
00899510: push 00445554h
00899515: push var_0000010C
0089951B: push var_00000110
00899521: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00899526: mov var_00000198, eax
0089952C: jmp 899535h
0089952E: and var_00000198, 00000000h
00899535: lea ecx, var_4C
00899538: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0089953D: mov var_04, 00000017h
00899544: cmp [008F529Ch], 00000000h
0089954B: jnz 899568h
0089954D: push 008F529Ch
00899552: push 00440F2Ch
00899557: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089955C: mov var_0000019C, 008F529Ch
00899566: jmp 899572h
00899568: mov var_0000019C, 008F529Ch
00899572: mov eax, var_0000019C
00899578: mov eax, [eax]
0089957A: mov var_00000104, eax
00899580: lea eax, var_4C
00899583: push eax
00899584: mov eax, var_00000104
0089958A: mov eax, [eax]
0089958C: push var_00000104
00899592: call [eax+1Ch]
00899595: fclex 
00899597: mov var_00000108, eax
0089959D: cmp var_00000108, 00000000h
008995A4: jnl 8995C6h
008995A6: push 0000001Ch
008995A8: push 00440F1Ch
008995AD: push var_00000104
008995B3: push var_00000108
008995B9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008995BE: mov var_000001A0, eax
008995C4: jmp 8995CDh
008995C6: and var_000001A0, 00000000h
008995CD: mov eax, var_4C
008995D0: mov var_0000010C, eax
008995D6: mov var_000000C8, 80020004h
008995E0: mov var_000000D0, 0000000Ah
008995EA: push 00000010h
008995EC: pop eax
008995ED: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008995F2: lea esi, var_000000D0
008995F8: mov edi, esp
008995FA: movsd 
008995FB: movsd 
008995FC: movsd 
008995FD: movsd 
008995FE: push var_34
00899601: mov eax, var_0000010C
00899607: mov eax, [eax]
00899609: push var_0000010C
0089960F: call [eax+60h]
00899612: fclex 
00899614: mov var_00000110, eax
0089961A: cmp var_00000110, 00000000h
00899621: jnl 899643h
00899623: push 00000060h
00899625: push 00445554h
0089962A: push var_0000010C
00899630: push var_00000110
00899636: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0089963B: mov var_000001A4, eax
00899641: jmp 89964Ah
00899643: and var_000001A4, 00000000h
0089964A: lea ecx, var_4C
0089964D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00899652: mov var_10, 00000000h
00899659: push 00899706h
0089965E: jmp 8996CFh
00899660: lea eax, var_48
00899663: push eax
00899664: lea eax, var_44
00899667: push eax
00899668: lea eax, var_40
0089966B: push eax
0089966C: lea eax, var_3C
0089966F: push eax
00899670: lea eax, var_38
00899673: push eax
00899674: push 00000005h
00899676: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089967B: add esp, 00000018h
0089967E: lea eax, var_60
00899681: push eax
00899682: lea eax, var_5C
00899685: push eax
00899686: lea eax, var_58
00899689: push eax
0089968A: lea eax, var_54
0089968D: push eax
0089968E: lea eax, var_50
00899691: push eax
00899692: lea eax, var_4C
00899695: push eax
00899696: push 00000006h
00899698: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089969D: add esp, 0000001Ch
008996A0: lea eax, var_000000C0
008996A6: push eax
008996A7: lea eax, var_000000B0
008996AD: push eax
008996AE: lea eax, var_000000A0
008996B4: push eax
008996B5: lea eax, var_00000090
008996BB: push eax
008996BC: lea eax, var_80
008996BF: push eax
008996C0: lea eax, var_70
008996C3: push eax
008996C4: push 00000006h
008996C6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008996CB: add esp, 0000001Ch
008996CE: ret 
End Sub

Private sub mnuMSNDumpEmails__899725
00899725: push ebp
00899726: mov ebp, esp
00899728: sub esp, 0000000Ch
0089972B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00899730: mov eax, fs:[00h]
00899736: push eax
00899737: mov fs:[00000000h], esp
0089973E: mov eax, 00000118h
00899743: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00899748: push ebx
00899749: push esi
0089974A: push edi
0089974B: mov var_0C, esp
0089974E: mov var_08, 0040E000h
00899755: mov eax, [ebp+08h]
00899758: and eax, 00000001h
0089975B: mov var_04, eax
0089975E: mov eax, [ebp+08h]
00899761: and al, FEh
00899763: mov [ebp+08h], eax
00899766: mov eax, [ebp+08h]
00899769: mov eax, [eax]
0089976B: push [ebp+08h]
0089976E: call [eax+04h]
00899771: push 00000000h
00899773: push 00000003h
00899775: push 00440E48h
0089977A: push 00000000h
0089977C: push 00000018h
0089977E: mov eax, [ebp+08h]
00899781: mov eax, [eax]
00899783: push [ebp+08h]
00899786: call [eax+00000328h]
0089978C: push eax
0089978D: lea eax, var_30
00899790: push eax
00899791: call 00410A84h ; Set (object)
00899796: push eax
00899797: lea eax, var_48
0089979A: push eax
0089979B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008997A0: add esp, 00000010h
008997A3: push eax
008997A4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008997A9: push eax
008997AA: lea eax, var_34
008997AD: push eax
008997AE: call 00410A84h ; Set (object)
008997B3: push eax
008997B4: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008997B9: add esp, 0000000Ch
008997BC: lea eax, var_34
008997BF: push eax
008997C0: lea eax, var_30
008997C3: push eax
008997C4: push 00000002h
008997C6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008997CB: add esp, 0000000Ch
008997CE: lea ecx, var_48
008997D1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008997D6: mov eax, [ebp+0Ch]
008997D9: mov ax, [eax]
008997DC: mov var_000000FC, ax
008997E3: movsx eax, word ptr var_000000FC
008997EA: mov var_00000110, eax
008997F0: cmp var_00000110, 00000000h
008997F7: jz 89980Bh
008997F9: cmp var_00000110, 00000001h
00899800: jz 0089993Eh
00899806: jmp 0089A1FBh
0089980B: lea eax, var_28
0089980E: push eax
0089980F: mov eax, [ebp+08h]
00899812: mov eax, [eax]
00899814: push [ebp+08h]
00899817: call [eax+000001C0h]
0089981D: fclex 
0089981F: mov var_000000B8, eax
00899825: cmp var_000000B8, 00000000h
0089982C: jnl 89984Eh
0089982E: push 000001C0h
00899833: push 004485C8h
00899838: push [ebp+08h]
0089983B: push var_000000B8
00899841: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00899846: mov var_00000114, eax
0089984C: jmp 899855h
0089984E: and var_00000114, 00000000h
00899855: push var_28
00899858: call 004109DCh ; Val(arg_1)
0089985D: fstp real8 ptr var_000000B4
00899863: push 00000000h
00899865: push 00000002h
00899867: push 00000001h
00899869: push 00000000h
0089986B: lea eax, var_6C
0089986E: push eax
0089986F: push 00000010h
00899871: push 00000880h
00899876: call 00410946h ; ReDim
0089987B: add esp, 0000001Ch
0089987E: and var_74, 00000000h
00899882: mov var_7C, 00000002h
00899889: lea esi, var_7C
0089988C: push 00000000h
0089988E: push var_6C
00899891: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00899896: mov ecx, eax
00899898: mov edx, esi
0089989A: call 00410922h ; msvbvm60.dll.__vbaVarMove
0089989F: mov var_00000084, 00000001h
008998A9: mov var_0000008C, 00000002h
008998B3: lea esi, var_0000008C
008998B9: push 00000001h
008998BB: push var_6C
008998BE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008998C3: mov ecx, eax
008998C5: mov edx, esi
008998C7: call 00410922h ; msvbvm60.dll.__vbaVarMove
008998CC: and var_00000094, 00000000h
008998D3: mov var_0000009C, 00000002h
008998DD: lea esi, var_0000009C
008998E3: push 00000002h
008998E5: push var_6C
008998E8: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008998ED: mov ecx, eax
008998EF: mov edx, esi
008998F1: call 00410922h ; msvbvm60.dll.__vbaVarMove
008998F6: mov edx, 0043D888h ; x95
008998FB: lea ecx, var_2C
008998FE: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00899903: lea eax, var_6C
00899906: push eax
00899907: lea eax, var_2C
0089990A: push eax
0089990B: fld real8 ptr var_000000B4
00899911: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00899916: push eax
00899917: call 007A6910h
0089991C: lea eax, var_6C
0089991F: push eax
00899920: push 00000000h
00899922: call 00410934h ; Erase
00899927: lea eax, var_2C
0089992A: push eax
0089992B: lea eax, var_28
0089992E: push eax
0089992F: push 00000002h
00899931: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00899936: add esp, 0000000Ch
00899939: jmp 0089A1FBh
0089993E: cmp word ptr [008F2430h], FFFFh
00899946: jnz 00899DA6h
0089994C: mov var_74, 00000001h
00899953: mov var_7C, 00000002h
0089995A: cmp [008F2010h], 00000000h
00899961: jnz 89997Eh
00899963: push 008F2010h
00899968: push 00433984h
0089996D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00899972: mov var_00000118, 008F2010h
0089997C: jmp 899988h
0089997E: mov var_00000118, 008F2010h
00899988: push 00000000h
0089998A: push 00000001h
0089998C: push 00440E48h
00899991: push 00000000h
00899993: push 00000018h
00899995: mov eax, var_00000118
0089999B: mov eax, [eax]
0089999D: mov ecx, var_00000118
008999A3: mov ecx, [ecx]
008999A5: mov ecx, [ecx]
008999A7: push eax
008999A8: call [ecx+0000054Ch]
008999AE: push eax
008999AF: lea eax, var_30
008999B2: push eax
008999B3: call 00410A84h ; Set (object)
008999B8: push eax
008999B9: lea eax, var_48
008999BC: push eax
008999BD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008999C2: add esp, 00000010h
008999C5: push eax
008999C6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008999CB: push eax
008999CC: lea eax, var_34
008999CF: push eax
008999D0: call 00410A84h ; Set (object)
008999D5: push eax
008999D6: lea eax, var_58
008999D9: push eax
008999DA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008999DF: add esp, 00000010h
008999E2: push eax
008999E3: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008999E8: mov var_00000084, eax
008999EE: mov var_0000008C, 00000003h
008999F8: mov var_00000094, 00000001h
00899A02: mov var_0000009C, 00000002h
00899A0C: lea eax, var_7C
00899A0F: push eax
00899A10: lea eax, var_0000008C
00899A16: push eax
00899A17: lea eax, var_0000009C
00899A1D: push eax
00899A1E: lea eax, var_000000D8
00899A24: push eax
00899A25: lea eax, var_000000C8
00899A2B: push eax
00899A2C: lea eax, var_24
00899A2F: push eax
00899A30: call 00410A3Ch ; For
00899A35: mov var_00000108, eax
00899A3B: lea eax, var_34
00899A3E: push eax
00899A3F: lea eax, var_30
00899A42: push eax
00899A43: push 00000002h
00899A45: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00899A4A: add esp, 0000000Ch
00899A4D: lea eax, var_58
00899A50: push eax
00899A51: lea eax, var_48
00899A54: push eax
00899A55: push 00000002h
00899A57: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00899A5C: add esp, 0000000Ch
00899A5F: jmp 00899D94h
00899A64: lea eax, var_24
00899A67: mov var_74, eax
00899A6A: mov var_7C, 0000400Ch
00899A71: cmp [008F2010h], 00000000h
00899A78: jnz 899A95h
00899A7A: push 008F2010h
00899A7F: push 00433984h
00899A84: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00899A89: mov var_0000011C, 008F2010h
00899A93: jmp 899A9Fh
00899A95: mov var_0000011C, 008F2010h
00899A9F: push 00000000h
00899AA1: push 00000004h
00899AA3: push 00440E58h
00899AA8: push 00000010h
00899AAA: pop eax
00899AAB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00899AB0: lea esi, var_7C
00899AB3: mov edi, esp
00899AB5: movsd 
00899AB6: movsd 
00899AB7: movsd 
00899AB8: movsd 
00899AB9: push 00000001h
00899ABB: push 00000000h
00899ABD: push 00440E48h
00899AC2: push 00000000h
00899AC4: push 00000018h
00899AC6: mov eax, var_0000011C
00899ACC: mov eax, [eax]
00899ACE: mov ecx, var_0000011C
00899AD4: mov ecx, [ecx]
00899AD6: mov ecx, [ecx]
00899AD8: push eax
00899AD9: call [ecx+0000054Ch]
00899ADF: push eax
00899AE0: lea eax, var_30
00899AE3: push eax
00899AE4: call 00410A84h ; Set (object)
00899AE9: push eax
00899AEA: lea eax, var_48
00899AED: push eax
00899AEE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899AF3: add esp, 00000010h
00899AF6: push eax
00899AF7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00899AFC: push eax
00899AFD: lea eax, var_34
00899B00: push eax
00899B01: call 00410A84h ; Set (object)
00899B06: push eax
00899B07: lea eax, var_58
00899B0A: push eax
00899B0B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899B10: add esp, 00000020h
00899B13: push eax
00899B14: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00899B19: push eax
00899B1A: lea eax, var_38
00899B1D: push eax
00899B1E: call 00410A84h ; Set (object)
00899B23: push eax
00899B24: lea eax, var_68
00899B27: push eax
00899B28: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899B2D: add esp, 00000010h
00899B30: push eax
00899B31: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00899B36: sub ax, FFFFh
00899B3A: neg ax
00899B3D: sbb eax, eax
00899B3F: inc eax
00899B40: neg eax
00899B42: mov var_000000B8, ax
00899B49: lea eax, var_38
00899B4C: push eax
00899B4D: lea eax, var_34
00899B50: push eax
00899B51: lea eax, var_30
00899B54: push eax
00899B55: push 00000003h
00899B57: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00899B5C: add esp, 00000010h
00899B5F: lea eax, var_68
00899B62: push eax
00899B63: lea eax, var_58
00899B66: push eax
00899B67: lea eax, var_48
00899B6A: push eax
00899B6B: push 00000003h
00899B6D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00899B72: add esp, 00000010h
00899B75: movsx eax, word ptr var_000000B8
00899B7C: test eax, eax
00899B7E: jz 00899D77h
00899B84: lea eax, var_24
00899B87: mov var_74, eax
00899B8A: mov var_7C, 0000400Ch
00899B91: cmp [008F2010h], 00000000h
00899B98: jnz 899BB5h
00899B9A: push 008F2010h
00899B9F: push 00433984h
00899BA4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00899BA9: mov var_00000120, 008F2010h
00899BB3: jmp 899BBFh
00899BB5: mov var_00000120, 008F2010h
00899BBF: push 00000000h
00899BC1: push 00000014h
00899BC3: push 00440E58h
00899BC8: push 00000010h
00899BCA: pop eax
00899BCB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00899BD0: lea esi, var_7C
00899BD3: mov edi, esp
00899BD5: movsd 
00899BD6: movsd 
00899BD7: movsd 
00899BD8: movsd 
00899BD9: push 00000001h
00899BDB: push 00000000h
00899BDD: push 00440E48h
00899BE2: push 00000000h
00899BE4: push 00000018h
00899BE6: mov eax, var_00000120
00899BEC: mov eax, [eax]
00899BEE: mov ecx, var_00000120
00899BF4: mov ecx, [ecx]
00899BF6: mov ecx, [ecx]
00899BF8: push eax
00899BF9: call [ecx+0000054Ch]
00899BFF: push eax
00899C00: lea eax, var_30
00899C03: push eax
00899C04: call 00410A84h ; Set (object)
00899C09: push eax
00899C0A: lea eax, var_48
00899C0D: push eax
00899C0E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899C13: add esp, 00000010h
00899C16: push eax
00899C17: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00899C1C: push eax
00899C1D: lea eax, var_34
00899C20: push eax
00899C21: call 00410A84h ; Set (object)
00899C26: push eax
00899C27: lea eax, var_58
00899C2A: push eax
00899C2B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899C30: add esp, 00000020h
00899C33: push eax
00899C34: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00899C39: push eax
00899C3A: lea eax, var_38
00899C3D: push eax
00899C3E: call 00410A84h ; Set (object)
00899C43: push eax
00899C44: lea eax, var_68
00899C47: push eax
00899C48: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899C4D: add esp, 00000010h
00899C50: push eax
00899C51: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00899C56: mov edx, eax
00899C58: lea ecx, var_28
00899C5B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00899C60: push eax
00899C61: call 004109DCh ; Val(arg_1)
00899C66: fstp real8 ptr var_000000B4
00899C6C: push 00000000h
00899C6E: push 00000002h
00899C70: push 00000001h
00899C72: push 00000000h
00899C74: lea eax, var_6C
00899C77: push eax
00899C78: push 00000010h
00899C7A: push 00000880h
00899C7F: call 00410946h ; ReDim
00899C84: add esp, 0000001Ch
00899C87: and var_00000084, 00000000h
00899C8E: mov var_0000008C, 00000002h
00899C98: lea esi, var_0000008C
00899C9E: push 00000000h
00899CA0: push var_6C
00899CA3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00899CA8: mov ecx, eax
00899CAA: mov edx, esi
00899CAC: call 00410922h ; msvbvm60.dll.__vbaVarMove
00899CB1: mov var_00000094, 00000001h
00899CBB: mov var_0000009C, 00000002h
00899CC5: lea esi, var_0000009C
00899CCB: push 00000001h
00899CCD: push var_6C
00899CD0: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00899CD5: mov ecx, eax
00899CD7: mov edx, esi
00899CD9: call 00410922h ; msvbvm60.dll.__vbaVarMove
00899CDE: and var_000000A4, 00000000h
00899CE5: mov var_000000AC, 00000002h
00899CEF: lea esi, var_000000AC
00899CF5: push 00000002h
00899CF7: push var_6C
00899CFA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00899CFF: mov ecx, eax
00899D01: mov edx, esi
00899D03: call 00410922h ; msvbvm60.dll.__vbaVarMove
00899D08: mov edx, 0043D888h ; x95
00899D0D: lea ecx, var_2C
00899D10: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00899D15: lea eax, var_6C
00899D18: push eax
00899D19: lea eax, var_2C
00899D1C: push eax
00899D1D: fld real8 ptr var_000000B4
00899D23: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00899D28: push eax
00899D29: call 007A6910h
00899D2E: lea eax, var_6C
00899D31: push eax
00899D32: push 00000000h
00899D34: call 00410934h ; Erase
00899D39: lea eax, var_2C
00899D3C: push eax
00899D3D: lea eax, var_28
00899D40: push eax
00899D41: push 00000002h
00899D43: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00899D48: add esp, 0000000Ch
00899D4B: lea eax, var_38
00899D4E: push eax
00899D4F: lea eax, var_34
00899D52: push eax
00899D53: lea eax, var_30
00899D56: push eax
00899D57: push 00000003h
00899D59: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00899D5E: add esp, 00000010h
00899D61: lea eax, var_68
00899D64: push eax
00899D65: lea eax, var_58
00899D68: push eax
00899D69: lea eax, var_48
00899D6C: push eax
00899D6D: push 00000003h
00899D6F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00899D74: add esp, 00000010h
00899D77: lea eax, var_000000D8
00899D7D: push eax
00899D7E: lea eax, var_000000C8
00899D84: push eax
00899D85: lea eax, var_24
00899D88: push eax
00899D89: call 00410A36h ; Next
00899D8E: mov var_00000108, eax
00899D94: cmp var_00000108, 00000000h
00899D9B: jnz 00899A64h
00899DA1: jmp 0089A1FBh
00899DA6: mov var_74, 00000001h
00899DAD: mov var_7C, 00000002h
00899DB4: cmp [008F2010h], 00000000h
00899DBB: jnz 899DD8h
00899DBD: push 008F2010h
00899DC2: push 00433984h
00899DC7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00899DCC: mov var_00000124, 008F2010h
00899DD6: jmp 899DE2h
00899DD8: mov var_00000124, 008F2010h
00899DE2: push 00000000h
00899DE4: push 00000001h
00899DE6: push 00440E48h
00899DEB: push 00000000h
00899DED: push 00000018h
00899DEF: mov eax, var_00000124
00899DF5: mov eax, [eax]
00899DF7: mov ecx, var_00000124
00899DFD: mov ecx, [ecx]
00899DFF: mov ecx, [ecx]
00899E01: push eax
00899E02: call [ecx+00000550h]
00899E08: push eax
00899E09: lea eax, var_30
00899E0C: push eax
00899E0D: call 00410A84h ; Set (object)
00899E12: push eax
00899E13: lea eax, var_48
00899E16: push eax
00899E17: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899E1C: add esp, 00000010h
00899E1F: push eax
00899E20: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00899E25: push eax
00899E26: lea eax, var_34
00899E29: push eax
00899E2A: call 00410A84h ; Set (object)
00899E2F: push eax
00899E30: lea eax, var_58
00899E33: push eax
00899E34: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899E39: add esp, 00000010h
00899E3C: push eax
00899E3D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00899E42: mov var_00000084, eax
00899E48: mov var_0000008C, 00000003h
00899E52: mov var_00000094, 00000001h
00899E5C: mov var_0000009C, 00000002h
00899E66: lea eax, var_7C
00899E69: push eax
00899E6A: lea eax, var_0000008C
00899E70: push eax
00899E71: lea eax, var_0000009C
00899E77: push eax
00899E78: lea eax, var_000000F8
00899E7E: push eax
00899E7F: lea eax, var_000000E8
00899E85: push eax
00899E86: lea eax, var_24
00899E89: push eax
00899E8A: call 00410A3Ch ; For
00899E8F: mov var_0000010C, eax
00899E95: lea eax, var_34
00899E98: push eax
00899E99: lea eax, var_30
00899E9C: push eax
00899E9D: push 00000002h
00899E9F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00899EA4: add esp, 0000000Ch
00899EA7: lea eax, var_58
00899EAA: push eax
00899EAB: lea eax, var_48
00899EAE: push eax
00899EAF: push 00000002h
00899EB1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00899EB6: add esp, 0000000Ch
00899EB9: jmp 0089A1EEh
00899EBE: lea eax, var_24
00899EC1: mov var_74, eax
00899EC4: mov var_7C, 0000400Ch
00899ECB: cmp [008F2010h], 00000000h
00899ED2: jnz 899EEFh
00899ED4: push 008F2010h
00899ED9: push 00433984h
00899EDE: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00899EE3: mov var_00000128, 008F2010h
00899EED: jmp 899EF9h
00899EEF: mov var_00000128, 008F2010h
00899EF9: push 00000000h
00899EFB: push 00000004h
00899EFD: push 00440E58h
00899F02: push 00000010h
00899F04: pop eax
00899F05: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00899F0A: lea esi, var_7C
00899F0D: mov edi, esp
00899F0F: movsd 
00899F10: movsd 
00899F11: movsd 
00899F12: movsd 
00899F13: push 00000001h
00899F15: push 00000000h
00899F17: push 00440E48h
00899F1C: push 00000000h
00899F1E: push 00000018h
00899F20: mov eax, var_00000128
00899F26: mov eax, [eax]
00899F28: mov ecx, var_00000128
00899F2E: mov ecx, [ecx]
00899F30: mov ecx, [ecx]
00899F32: push eax
00899F33: call [ecx+00000550h]
00899F39: push eax
00899F3A: lea eax, var_30
00899F3D: push eax
00899F3E: call 00410A84h ; Set (object)
00899F43: push eax
00899F44: lea eax, var_48
00899F47: push eax
00899F48: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899F4D: add esp, 00000010h
00899F50: push eax
00899F51: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00899F56: push eax
00899F57: lea eax, var_34
00899F5A: push eax
00899F5B: call 00410A84h ; Set (object)
00899F60: push eax
00899F61: lea eax, var_58
00899F64: push eax
00899F65: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899F6A: add esp, 00000020h
00899F6D: push eax
00899F6E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00899F73: push eax
00899F74: lea eax, var_38
00899F77: push eax
00899F78: call 00410A84h ; Set (object)
00899F7D: push eax
00899F7E: lea eax, var_68
00899F81: push eax
00899F82: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00899F87: add esp, 00000010h
00899F8A: push eax
00899F8B: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00899F90: sub ax, FFFFh
00899F94: neg ax
00899F97: sbb eax, eax
00899F99: inc eax
00899F9A: neg eax
00899F9C: mov var_000000B8, ax
00899FA3: lea eax, var_38
00899FA6: push eax
00899FA7: lea eax, var_34
00899FAA: push eax
00899FAB: lea eax, var_30
00899FAE: push eax
00899FAF: push 00000003h
00899FB1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00899FB6: add esp, 00000010h
00899FB9: lea eax, var_68
00899FBC: push eax
00899FBD: lea eax, var_58
00899FC0: push eax
00899FC1: lea eax, var_48
00899FC4: push eax
00899FC5: push 00000003h
00899FC7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00899FCC: add esp, 00000010h
00899FCF: movsx eax, word ptr var_000000B8
00899FD6: test eax, eax
00899FD8: jz 0089A1D1h
00899FDE: lea eax, var_24
00899FE1: mov var_74, eax
00899FE4: mov var_7C, 0000400Ch
00899FEB: cmp [008F2010h], 00000000h
00899FF2: jnz 89A00Fh
00899FF4: push 008F2010h
00899FF9: push 00433984h
00899FFE: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089A003: mov var_0000012C, 008F2010h
0089A00D: jmp 89A019h
0089A00F: mov var_0000012C, 008F2010h
0089A019: push 00000000h
0089A01B: push 00000014h
0089A01D: push 00440E58h
0089A022: push 00000010h
0089A024: pop eax
0089A025: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089A02A: lea esi, var_7C
0089A02D: mov edi, esp
0089A02F: movsd 
0089A030: movsd 
0089A031: movsd 
0089A032: movsd 
0089A033: push 00000001h
0089A035: push 00000000h
0089A037: push 00440E48h
0089A03C: push 00000000h
0089A03E: push 00000018h
0089A040: mov eax, var_0000012C
0089A046: mov eax, [eax]
0089A048: mov ecx, var_0000012C
0089A04E: mov ecx, [ecx]
0089A050: mov ecx, [ecx]
0089A052: push eax
0089A053: call [ecx+00000550h]
0089A059: push eax
0089A05A: lea eax, var_30
0089A05D: push eax
0089A05E: call 00410A84h ; Set (object)
0089A063: push eax
0089A064: lea eax, var_48
0089A067: push eax
0089A068: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089A06D: add esp, 00000010h
0089A070: push eax
0089A071: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089A076: push eax
0089A077: lea eax, var_34
0089A07A: push eax
0089A07B: call 00410A84h ; Set (object)
0089A080: push eax
0089A081: lea eax, var_58
0089A084: push eax
0089A085: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089A08A: add esp, 00000020h
0089A08D: push eax
0089A08E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089A093: push eax
0089A094: lea eax, var_38
0089A097: push eax
0089A098: call 00410A84h ; Set (object)
0089A09D: push eax
0089A09E: lea eax, var_68
0089A0A1: push eax
0089A0A2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089A0A7: add esp, 00000010h
0089A0AA: push eax
0089A0AB: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0089A0B0: mov edx, eax
0089A0B2: lea ecx, var_28
0089A0B5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089A0BA: push eax
0089A0BB: call 004109DCh ; Val(arg_1)
0089A0C0: fstp real8 ptr var_000000B4
0089A0C6: push 00000000h
0089A0C8: push 00000002h
0089A0CA: push 00000001h
0089A0CC: push 00000000h
0089A0CE: lea eax, var_6C
0089A0D1: push eax
0089A0D2: push 00000010h
0089A0D4: push 00000880h
0089A0D9: call 00410946h ; ReDim
0089A0DE: add esp, 0000001Ch
0089A0E1: and var_00000084, 00000000h
0089A0E8: mov var_0000008C, 00000002h
0089A0F2: lea esi, var_0000008C
0089A0F8: push 00000000h
0089A0FA: push var_6C
0089A0FD: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089A102: mov ecx, eax
0089A104: mov edx, esi
0089A106: call 00410922h ; msvbvm60.dll.__vbaVarMove
0089A10B: mov var_00000094, 00000001h
0089A115: mov var_0000009C, 00000002h
0089A11F: lea esi, var_0000009C
0089A125: push 00000001h
0089A127: push var_6C
0089A12A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089A12F: mov ecx, eax
0089A131: mov edx, esi
0089A133: call 00410922h ; msvbvm60.dll.__vbaVarMove
0089A138: and var_000000A4, 00000000h
0089A13F: mov var_000000AC, 00000002h
0089A149: lea esi, var_000000AC
0089A14F: push 00000002h
0089A151: push var_6C
0089A154: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089A159: mov ecx, eax
0089A15B: mov edx, esi
0089A15D: call 00410922h ; msvbvm60.dll.__vbaVarMove
0089A162: mov edx, 0043D888h ; x95
0089A167: lea ecx, var_2C
0089A16A: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0089A16F: lea eax, var_6C
0089A172: push eax
0089A173: lea eax, var_2C
0089A176: push eax
0089A177: fld real8 ptr var_000000B4
0089A17D: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0089A182: push eax
0089A183: call 007A6910h
0089A188: lea eax, var_6C
0089A18B: push eax
0089A18C: push 00000000h
0089A18E: call 00410934h ; Erase
0089A193: lea eax, var_2C
0089A196: push eax
0089A197: lea eax, var_28
0089A19A: push eax
0089A19B: push 00000002h
0089A19D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089A1A2: add esp, 0000000Ch
0089A1A5: lea eax, var_38
0089A1A8: push eax
0089A1A9: lea eax, var_34
0089A1AC: push eax
0089A1AD: lea eax, var_30
0089A1B0: push eax
0089A1B1: push 00000003h
0089A1B3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089A1B8: add esp, 00000010h
0089A1BB: lea eax, var_68
0089A1BE: push eax
0089A1BF: lea eax, var_58
0089A1C2: push eax
0089A1C3: lea eax, var_48
0089A1C6: push eax
0089A1C7: push 00000003h
0089A1C9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089A1CE: add esp, 00000010h
0089A1D1: lea eax, var_000000F8
0089A1D7: push eax
0089A1D8: lea eax, var_000000E8
0089A1DE: push eax
0089A1DF: lea eax, var_24
0089A1E2: push eax
0089A1E3: call 00410A36h ; Next
0089A1E8: mov var_0000010C, eax
0089A1EE: cmp var_0000010C, 00000000h
0089A1F5: jnz 00899EBEh
0089A1FB: mov var_04, 00000000h
0089A202: wait 
0089A203: push 0089A283h
0089A208: jmp 89A254h
0089A20A: lea eax, var_2C
0089A20D: push eax
0089A20E: lea eax, var_28
0089A211: push eax
0089A212: push 00000002h
0089A214: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089A219: add esp, 0000000Ch
0089A21C: lea eax, var_38
0089A21F: push eax
0089A220: lea eax, var_34
0089A223: push eax
0089A224: lea eax, var_30
0089A227: push eax
0089A228: push 00000003h
0089A22A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089A22F: add esp, 00000010h
0089A232: lea eax, var_68
0089A235: push eax
0089A236: lea eax, var_58
0089A239: push eax
0089A23A: lea eax, var_48
0089A23D: push eax
0089A23E: push 00000003h
0089A240: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089A245: add esp, 00000010h
0089A248: lea eax, var_6C
0089A24B: push eax
0089A24C: push 00000000h
0089A24E: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0089A253: ret 
End Sub

Private sub cmdAddContact__88F0FA
0088F0FA: push ebp
0088F0FB: mov ebp, esp
0088F0FD: sub esp, 0000000Ch
0088F100: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0088F105: mov eax, fs:[00h]
0088F10B: push eax
0088F10C: mov fs:[00000000h], esp
0088F113: mov eax, 00000130h
0088F118: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088F11D: push ebx
0088F11E: push esi
0088F11F: push edi
0088F120: mov var_0C, esp
0088F123: mov var_08, 0040DE98h
0088F12A: mov eax, [ebp+08h]
0088F12D: and eax, 00000001h
0088F130: mov var_04, eax
0088F133: mov eax, [ebp+08h]
0088F136: and al, FEh
0088F138: mov [ebp+08h], eax
0088F13B: mov eax, [ebp+08h]
0088F13E: mov eax, [eax]
0088F140: push [ebp+08h]
0088F143: call [eax+04h]
0088F146: mov eax, [ebp+08h]
0088F149: mov eax, [eax]
0088F14B: push [ebp+08h]
0088F14E: call [eax+00000304h]
0088F154: push eax
0088F155: lea eax, var_30
0088F158: push eax
0088F159: call 00410A84h ; Set (object)
0088F15E: mov var_000000C8, eax
0088F164: lea eax, var_28
0088F167: push eax
0088F168: mov eax, var_000000C8
0088F16E: mov eax, [eax]
0088F170: push var_000000C8
0088F176: call [eax+000000A0h]
0088F17C: fclex 
0088F17E: mov var_000000CC, eax
0088F184: cmp var_000000CC, 00000000h
0088F18B: jnl 88F1B0h
0088F18D: push 000000A0h
0088F192: push 00440E08h
0088F197: push var_000000C8
0088F19D: push var_000000CC
0088F1A3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088F1A8: mov var_00000124, eax
0088F1AE: jmp 88F1B7h
0088F1B0: and var_00000124, 00000000h
0088F1B7: push var_28
0088F1BA: call 0041098Eh ; Len(arg_1)
0088F1BF: xor ecx, ecx
0088F1C1: cmp eax, 00000003h
0088F1C4: setle cl
0088F1C7: neg ecx
0088F1C9: mov var_000000D0, cx
0088F1D0: lea ecx, var_28
0088F1D3: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0088F1D8: lea ecx, var_30
0088F1DB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0088F1E0: movsx eax, word ptr var_000000D0
0088F1E7: test eax, eax
0088F1E9: jz 0088F271h
0088F1EF: mov var_70, 80020004h
0088F1F6: mov var_78, 0000000Ah
0088F1FD: mov var_60, 80020004h
0088F204: mov var_68, 0000000Ah
0088F20B: mov var_50, 80020004h
0088F212: mov var_58, 0000000Ah
0088F219: mov var_00000084, 00459330h ; Invalid email
0088F223: mov var_0000008C, 00000008h
0088F22D: lea edx, var_0000008C
0088F233: lea ecx, var_48
0088F236: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0088F23B: lea eax, var_78
0088F23E: push eax
0088F23F: lea eax, var_68
0088F242: push eax
0088F243: lea eax, var_58
0088F246: push eax
0088F247: push 00000010h
0088F249: lea eax, var_48
0088F24C: push eax
0088F24D: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0088F252: lea eax, var_78
0088F255: push eax
0088F256: lea eax, var_68
0088F259: push eax
0088F25A: lea eax, var_58
0088F25D: push eax
0088F25E: lea eax, var_48
0088F261: push eax
0088F262: push 00000004h
0088F264: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088F269: add esp, 00000014h
0088F26C: jmp 0088FD4Ah
0088F271: cmp word ptr [008F2430h], FFFFh
0088F279: jnz 0088F7E7h
0088F27F: push 00000000h
0088F281: push 00000000h
0088F283: mov eax, [ebp+08h]
0088F286: mov eax, [eax]
0088F288: push [ebp+08h]
0088F28B: call [eax+0000033Ch]
0088F291: push eax
0088F292: lea eax, var_30
0088F295: push eax
0088F296: call 00410A84h ; Set (object)
0088F29B: push eax
0088F29C: lea eax, var_48
0088F29F: push eax
0088F2A0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088F2A5: add esp, 00000010h
0088F2A8: push eax
0088F2A9: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0088F2AE: dec eax
0088F2AF: neg eax
0088F2B1: sbb eax, eax
0088F2B3: inc eax
0088F2B4: neg eax
0088F2B6: mov var_000000C8, ax
0088F2BD: lea ecx, var_30
0088F2C0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0088F2C5: lea ecx, var_48
0088F2C8: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0088F2CD: movsx eax, word ptr var_000000C8
0088F2D4: test eax, eax
0088F2D6: jz 0088F6FEh
0088F2DC: mov var_00000084, 00000001h
0088F2E6: mov var_0000008C, 00000002h
0088F2F0: cmp [008F2010h], 00000000h
0088F2F7: jnz 88F314h
0088F2F9: push 008F2010h
0088F2FE: push 00433984h
0088F303: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088F308: mov var_00000128, 008F2010h
0088F312: jmp 88F31Eh
0088F314: mov var_00000128, 008F2010h
0088F31E: push 00000000h
0088F320: push 00000001h
0088F322: push 00440E48h
0088F327: push 00000000h
0088F329: push 00000018h
0088F32B: mov eax, var_00000128
0088F331: mov eax, [eax]
0088F333: mov ecx, var_00000128
0088F339: mov ecx, [ecx]
0088F33B: mov ecx, [ecx]
0088F33D: push eax
0088F33E: call [ecx+0000054Ch]
0088F344: push eax
0088F345: lea eax, var_30
0088F348: push eax
0088F349: call 00410A84h ; Set (object)
0088F34E: push eax
0088F34F: lea eax, var_48
0088F352: push eax
0088F353: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088F358: add esp, 00000010h
0088F35B: push eax
0088F35C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088F361: push eax
0088F362: lea eax, var_34
0088F365: push eax
0088F366: call 00410A84h ; Set (object)
0088F36B: push eax
0088F36C: lea eax, var_58
0088F36F: push eax
0088F370: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088F375: add esp, 00000010h
0088F378: push eax
0088F379: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0088F37E: mov var_00000094, eax
0088F384: mov var_0000009C, 00000003h
0088F38E: mov var_000000A4, 00000001h
0088F398: mov var_000000AC, 00000002h
0088F3A2: lea eax, var_0000008C
0088F3A8: push eax
0088F3A9: lea eax, var_0000009C
0088F3AF: push eax
0088F3B0: lea eax, var_000000AC
0088F3B6: push eax
0088F3B7: lea eax, var_000000F0
0088F3BD: push eax
0088F3BE: lea eax, var_000000E0
0088F3C4: push eax
0088F3C5: lea eax, var_24
0088F3C8: push eax
0088F3C9: call 00410A3Ch ; For
0088F3CE: mov var_0000011C, eax
0088F3D4: lea eax, var_34
0088F3D7: push eax
0088F3D8: lea eax, var_30
0088F3DB: push eax
0088F3DC: push 00000002h
0088F3DE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088F3E3: add esp, 0000000Ch
0088F3E6: lea eax, var_58
0088F3E9: push eax
0088F3EA: lea eax, var_48
0088F3ED: push eax
0088F3EE: push 00000002h
0088F3F0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088F3F5: add esp, 0000000Ch
0088F3F8: jmp 0088F6ECh
0088F3FD: lea eax, var_24
0088F400: mov var_00000084, eax
0088F406: mov var_0000008C, 0000400Ch
0088F410: cmp [008F2010h], 00000000h
0088F417: jnz 88F434h
0088F419: push 008F2010h
0088F41E: push 00433984h
0088F423: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088F428: mov var_0000012C, 008F2010h
0088F432: jmp 88F43Eh
0088F434: mov var_0000012C, 008F2010h
0088F43E: push 00000000h
0088F440: push 00000004h
0088F442: push 00440E58h
0088F447: push 00000010h
0088F449: pop eax
0088F44A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088F44F: lea esi, var_0000008C
0088F455: mov edi, esp
0088F457: movsd 
0088F458: movsd 
0088F459: movsd 
0088F45A: movsd 
0088F45B: push 00000001h
0088F45D: push 00000000h
0088F45F: push 00440E48h
0088F464: push 00000000h
0088F466: push 00000018h
0088F468: mov eax, var_0000012C
0088F46E: mov eax, [eax]
0088F470: mov ecx, var_0000012C
0088F476: mov ecx, [ecx]
0088F478: mov ecx, [ecx]
0088F47A: push eax
0088F47B: call [ecx+0000054Ch]
0088F481: push eax
0088F482: lea eax, var_30
0088F485: push eax
0088F486: call 00410A84h ; Set (object)
0088F48B: push eax
0088F48C: lea eax, var_48
0088F48F: push eax
0088F490: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088F495: add esp, 00000010h
0088F498: push eax
0088F499: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088F49E: push eax
0088F49F: lea eax, var_34
0088F4A2: push eax
0088F4A3: call 00410A84h ; Set (object)
0088F4A8: push eax
0088F4A9: lea eax, var_58
0088F4AC: push eax
0088F4AD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088F4B2: add esp, 00000020h
0088F4B5: push eax
0088F4B6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088F4BB: push eax
0088F4BC: lea eax, var_38
0088F4BF: push eax
0088F4C0: call 00410A84h ; Set (object)
0088F4C5: push eax
0088F4C6: lea eax, var_68
0088F4C9: push eax
0088F4CA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088F4CF: add esp, 00000010h
0088F4D2: push eax
0088F4D3: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0088F4D8: sub ax, FFFFh
0088F4DC: neg ax
0088F4DF: sbb eax, eax
0088F4E1: inc eax
0088F4E2: neg eax
0088F4E4: mov var_000000C8, ax
0088F4EB: lea eax, var_38
0088F4EE: push eax
0088F4EF: lea eax, var_34
0088F4F2: push eax
0088F4F3: lea eax, var_30
0088F4F6: push eax
0088F4F7: push 00000003h
0088F4F9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088F4FE: add esp, 00000010h
0088F501: lea eax, var_68
0088F504: push eax
0088F505: lea eax, var_58
0088F508: push eax
0088F509: lea eax, var_48
0088F50C: push eax
0088F50D: push 00000003h
0088F50F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088F514: add esp, 00000010h
0088F517: movsx eax, word ptr var_000000C8
0088F51E: test eax, eax
0088F520: jz 0088F6CFh
0088F526: lea eax, var_24
0088F529: mov var_00000084, eax
0088F52F: mov var_0000008C, 0000400Ch
0088F539: cmp [008F2010h], 00000000h
0088F540: jnz 88F55Dh
0088F542: push 008F2010h
0088F547: push 00433984h
0088F54C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088F551: mov var_00000130, 008F2010h
0088F55B: jmp 88F567h
0088F55D: mov var_00000130, 008F2010h
0088F567: push 00000000h
0088F569: push 00000014h
0088F56B: push 00440E58h
0088F570: push 00000010h
0088F572: pop eax
0088F573: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088F578: lea esi, var_0000008C
0088F57E: mov edi, esp
0088F580: movsd 
0088F581: movsd 
0088F582: movsd 
0088F583: movsd 
0088F584: push 00000001h
0088F586: push 00000000h
0088F588: push 00440E48h
0088F58D: push 00000000h
0088F58F: push 00000018h
0088F591: mov eax, var_00000130
0088F597: mov eax, [eax]
0088F599: mov ecx, var_00000130
0088F59F: mov ecx, [ecx]
0088F5A1: mov ecx, [ecx]
0088F5A3: push eax
0088F5A4: call [ecx+0000054Ch]
0088F5AA: push eax
0088F5AB: lea eax, var_30
0088F5AE: push eax
0088F5AF: call 00410A84h ; Set (object)
0088F5B4: push eax
0088F5B5: lea eax, var_48
0088F5B8: push eax
0088F5B9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088F5BE: add esp, 00000010h
0088F5C1: push eax
0088F5C2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088F5C7: push eax
0088F5C8: lea eax, var_34
0088F5CB: push eax
0088F5CC: call 00410A84h ; Set (object)
0088F5D1: push eax
0088F5D2: lea eax, var_58
0088F5D5: push eax
0088F5D6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088F5DB: add esp, 00000020h
0088F5DE: push eax
0088F5DF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088F5E4: push eax
0088F5E5: lea eax, var_38
0088F5E8: push eax
0088F5E9: call 00410A84h ; Set (object)
0088F5EE: push eax
0088F5EF: lea eax, var_68
0088F5F2: push eax
0088F5F3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088F5F8: add esp, 00000010h
0088F5FB: push eax
0088F5FC: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088F601: mov edx, eax
0088F603: lea ecx, var_28
0088F606: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088F60B: push eax
0088F60C: call 004109DCh ; Val(arg_1)
0088F611: fstp real8 ptr var_000000C4
0088F617: push 00000000h
0088F619: push 00000000h
0088F61B: push 00000001h
0088F61D: push 00000000h
0088F61F: lea eax, var_7C
0088F622: push eax
0088F623: push 00000010h
0088F625: push 00000880h
0088F62A: call 00410946h ; ReDim
0088F62F: add esp, 0000001Ch
0088F632: mov eax, [ebp+08h]
0088F635: mov eax, [eax]
0088F637: push [ebp+08h]
0088F63A: call [eax+00000304h]
0088F640: mov var_70, eax
0088F643: mov var_78, 00000009h
0088F64A: lea esi, var_78
0088F64D: push 00000000h
0088F64F: push var_7C
0088F652: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0088F657: mov ecx, eax
0088F659: mov edx, esi
0088F65B: call 00410940h ; msvbvm60.dll.__vbaVarZero
0088F660: mov edx, 0043D87Ch ; x94
0088F665: lea ecx, var_2C
0088F668: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0088F66D: lea eax, var_7C
0088F670: push eax
0088F671: lea eax, var_2C
0088F674: push eax
0088F675: fld real8 ptr var_000000C4
0088F67B: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0088F680: push eax
0088F681: call 007A6910h
0088F686: lea eax, var_7C
0088F689: push eax
0088F68A: push 00000000h
0088F68C: call 00410934h ; Erase
0088F691: lea eax, var_2C
0088F694: push eax
0088F695: lea eax, var_28
0088F698: push eax
0088F699: push 00000002h
0088F69B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0088F6A0: add esp, 0000000Ch
0088F6A3: lea eax, var_38
0088F6A6: push eax
0088F6A7: lea eax, var_34
0088F6AA: push eax
0088F6AB: lea eax, var_30
0088F6AE: push eax
0088F6AF: push 00000003h
0088F6B1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088F6B6: add esp, 00000010h
0088F6B9: lea eax, var_68
0088F6BC: push eax
0088F6BD: lea eax, var_58
0088F6C0: push eax
0088F6C1: lea eax, var_48
0088F6C4: push eax
0088F6C5: push 00000003h
0088F6C7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088F6CC: add esp, 00000010h
0088F6CF: lea eax, var_000000F0
0088F6D5: push eax
0088F6D6: lea eax, var_000000E0
0088F6DC: push eax
0088F6DD: lea eax, var_24
0088F6E0: push eax
0088F6E1: call 00410A36h ; Next
0088F6E6: mov var_0000011C, eax
0088F6EC: cmp var_0000011C, 00000000h
0088F6F3: jnz 0088F3FDh
0088F6F9: jmp 0088F7E2h
0088F6FE: lea eax, var_28
0088F701: push eax
0088F702: mov eax, [ebp+08h]
0088F705: mov eax, [eax]
0088F707: push [ebp+08h]
0088F70A: call [eax+000001C0h]
0088F710: fclex 
0088F712: mov var_000000C8, eax
0088F718: cmp var_000000C8, 00000000h
0088F71F: jnl 88F741h
0088F721: push 000001C0h
0088F726: push 004485C8h
0088F72B: push [ebp+08h]
0088F72E: push var_000000C8
0088F734: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088F739: mov var_00000134, eax
0088F73F: jmp 88F748h
0088F741: and var_00000134, 00000000h
0088F748: push var_28
0088F74B: call 004109DCh ; Val(arg_1)
0088F750: fstp real8 ptr var_000000C4
0088F756: push 00000000h
0088F758: push 00000000h
0088F75A: push 00000001h
0088F75C: push 00000000h
0088F75E: lea eax, var_7C
0088F761: push eax
0088F762: push 00000010h
0088F764: push 00000880h
0088F769: call 00410946h ; ReDim
0088F76E: add esp, 0000001Ch
0088F771: mov eax, [ebp+08h]
0088F774: mov eax, [eax]
0088F776: push [ebp+08h]
0088F779: call [eax+00000304h]
0088F77F: mov var_40, eax
0088F782: mov var_48, 00000009h
0088F789: lea esi, var_48
0088F78C: push 00000000h
0088F78E: push var_7C
0088F791: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0088F796: mov ecx, eax
0088F798: mov edx, esi
0088F79A: call 00410940h ; msvbvm60.dll.__vbaVarZero
0088F79F: mov edx, 0043D87Ch ; x94
0088F7A4: lea ecx, var_2C
0088F7A7: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0088F7AC: lea eax, var_7C
0088F7AF: push eax
0088F7B0: lea eax, var_2C
0088F7B3: push eax
0088F7B4: fld real8 ptr var_000000C4
0088F7BA: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0088F7BF: push eax
0088F7C0: call 007A6910h
0088F7C5: lea eax, var_7C
0088F7C8: push eax
0088F7C9: push 00000000h
0088F7CB: call 00410934h ; Erase
0088F7D0: lea eax, var_2C
0088F7D3: push eax
0088F7D4: lea eax, var_28
0088F7D7: push eax
0088F7D8: push 00000002h
0088F7DA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0088F7DF: add esp, 0000000Ch
0088F7E2: jmp 0088FD4Ah
0088F7E7: push 00000000h
0088F7E9: push 00000000h
0088F7EB: mov eax, [ebp+08h]
0088F7EE: mov eax, [eax]
0088F7F0: push [ebp+08h]
0088F7F3: call [eax+0000033Ch]
0088F7F9: push eax
0088F7FA: lea eax, var_30
0088F7FD: push eax
0088F7FE: call 00410A84h ; Set (object)
0088F803: push eax
0088F804: lea eax, var_48
0088F807: push eax
0088F808: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088F80D: add esp, 00000010h
0088F810: push eax
0088F811: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0088F816: dec eax
0088F817: neg eax
0088F819: sbb eax, eax
0088F81B: inc eax
0088F81C: neg eax
0088F81E: mov var_000000C8, ax
0088F825: lea ecx, var_30
0088F828: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0088F82D: lea ecx, var_48
0088F830: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0088F835: movsx eax, word ptr var_000000C8
0088F83C: test eax, eax
0088F83E: jz 0088FC66h
0088F844: mov var_00000084, 00000001h
0088F84E: mov var_0000008C, 00000002h
0088F858: cmp [008F2010h], 00000000h
0088F85F: jnz 88F87Ch
0088F861: push 008F2010h
0088F866: push 00433984h
0088F86B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088F870: mov var_00000138, 008F2010h
0088F87A: jmp 88F886h
0088F87C: mov var_00000138, 008F2010h
0088F886: push 00000000h
0088F888: push 00000001h
0088F88A: push 00440E48h
0088F88F: push 00000000h
0088F891: push 00000018h
0088F893: mov eax, var_00000138
0088F899: mov eax, [eax]
0088F89B: mov ecx, var_00000138
0088F8A1: mov ecx, [ecx]
0088F8A3: mov ecx, [ecx]
0088F8A5: push eax
0088F8A6: call [ecx+00000550h]
0088F8AC: push eax
0088F8AD: lea eax, var_30
0088F8B0: push eax
0088F8B1: call 00410A84h ; Set (object)
0088F8B6: push eax
0088F8B7: lea eax, var_48
0088F8BA: push eax
0088F8BB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088F8C0: add esp, 00000010h
0088F8C3: push eax
0088F8C4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088F8C9: push eax
0088F8CA: lea eax, var_34
0088F8CD: push eax
0088F8CE: call 00410A84h ; Set (object)
0088F8D3: push eax
0088F8D4: lea eax, var_58
0088F8D7: push eax
0088F8D8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088F8DD: add esp, 00000010h
0088F8E0: push eax
0088F8E1: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0088F8E6: mov var_00000094, eax
0088F8EC: mov var_0000009C, 00000003h
0088F8F6: mov var_000000A4, 00000001h
0088F900: mov var_000000AC, 00000002h
0088F90A: lea eax, var_0000008C
0088F910: push eax
0088F911: lea eax, var_0000009C
0088F917: push eax
0088F918: lea eax, var_000000AC
0088F91E: push eax
0088F91F: lea eax, var_00000110
0088F925: push eax
0088F926: lea eax, var_00000100
0088F92C: push eax
0088F92D: lea eax, var_24
0088F930: push eax
0088F931: call 00410A3Ch ; For
0088F936: mov var_00000120, eax
0088F93C: lea eax, var_34
0088F93F: push eax
0088F940: lea eax, var_30
0088F943: push eax
0088F944: push 00000002h
0088F946: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088F94B: add esp, 0000000Ch
0088F94E: lea eax, var_58
0088F951: push eax
0088F952: lea eax, var_48
0088F955: push eax
0088F956: push 00000002h
0088F958: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088F95D: add esp, 0000000Ch
0088F960: jmp 0088FC54h
0088F965: lea eax, var_24
0088F968: mov var_00000084, eax
0088F96E: mov var_0000008C, 0000400Ch
0088F978: cmp [008F2010h], 00000000h
0088F97F: jnz 88F99Ch
0088F981: push 008F2010h
0088F986: push 00433984h
0088F98B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088F990: mov var_0000013C, 008F2010h
0088F99A: jmp 88F9A6h
0088F99C: mov var_0000013C, 008F2010h
0088F9A6: push 00000000h
0088F9A8: push 00000004h
0088F9AA: push 00440E58h
0088F9AF: push 00000010h
0088F9B1: pop eax
0088F9B2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088F9B7: lea esi, var_0000008C
0088F9BD: mov edi, esp
0088F9BF: movsd 
0088F9C0: movsd 
0088F9C1: movsd 
0088F9C2: movsd 
0088F9C3: push 00000001h
0088F9C5: push 00000000h
0088F9C7: push 00440E48h
0088F9CC: push 00000000h
0088F9CE: push 00000018h
0088F9D0: mov eax, var_0000013C
0088F9D6: mov eax, [eax]
0088F9D8: mov ecx, var_0000013C
0088F9DE: mov ecx, [ecx]
0088F9E0: mov ecx, [ecx]
0088F9E2: push eax
0088F9E3: call [ecx+00000550h]
0088F9E9: push eax
0088F9EA: lea eax, var_30
0088F9ED: push eax
0088F9EE: call 00410A84h ; Set (object)
0088F9F3: push eax
0088F9F4: lea eax, var_48
0088F9F7: push eax
0088F9F8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088F9FD: add esp, 00000010h
0088FA00: push eax
0088FA01: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088FA06: push eax
0088FA07: lea eax, var_34
0088FA0A: push eax
0088FA0B: call 00410A84h ; Set (object)
0088FA10: push eax
0088FA11: lea eax, var_58
0088FA14: push eax
0088FA15: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088FA1A: add esp, 00000020h
0088FA1D: push eax
0088FA1E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088FA23: push eax
0088FA24: lea eax, var_38
0088FA27: push eax
0088FA28: call 00410A84h ; Set (object)
0088FA2D: push eax
0088FA2E: lea eax, var_68
0088FA31: push eax
0088FA32: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088FA37: add esp, 00000010h
0088FA3A: push eax
0088FA3B: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
0088FA40: sub ax, FFFFh
0088FA44: neg ax
0088FA47: sbb eax, eax
0088FA49: inc eax
0088FA4A: neg eax
0088FA4C: mov var_000000C8, ax
0088FA53: lea eax, var_38
0088FA56: push eax
0088FA57: lea eax, var_34
0088FA5A: push eax
0088FA5B: lea eax, var_30
0088FA5E: push eax
0088FA5F: push 00000003h
0088FA61: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088FA66: add esp, 00000010h
0088FA69: lea eax, var_68
0088FA6C: push eax
0088FA6D: lea eax, var_58
0088FA70: push eax
0088FA71: lea eax, var_48
0088FA74: push eax
0088FA75: push 00000003h
0088FA77: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088FA7C: add esp, 00000010h
0088FA7F: movsx eax, word ptr var_000000C8
0088FA86: test eax, eax
0088FA88: jz 0088FC37h
0088FA8E: lea eax, var_24
0088FA91: mov var_00000084, eax
0088FA97: mov var_0000008C, 0000400Ch
0088FAA1: cmp [008F2010h], 00000000h
0088FAA8: jnz 88FAC5h
0088FAAA: push 008F2010h
0088FAAF: push 00433984h
0088FAB4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0088FAB9: mov var_00000140, 008F2010h
0088FAC3: jmp 88FACFh
0088FAC5: mov var_00000140, 008F2010h
0088FACF: push 00000000h
0088FAD1: push 00000014h
0088FAD3: push 00440E58h
0088FAD8: push 00000010h
0088FADA: pop eax
0088FADB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088FAE0: lea esi, var_0000008C
0088FAE6: mov edi, esp
0088FAE8: movsd 
0088FAE9: movsd 
0088FAEA: movsd 
0088FAEB: movsd 
0088FAEC: push 00000001h
0088FAEE: push 00000000h
0088FAF0: push 00440E48h
0088FAF5: push 00000000h
0088FAF7: push 00000018h
0088FAF9: mov eax, var_00000140
0088FAFF: mov eax, [eax]
0088FB01: mov ecx, var_00000140
0088FB07: mov ecx, [ecx]
0088FB09: mov ecx, [ecx]
0088FB0B: push eax
0088FB0C: call [ecx+00000550h]
0088FB12: push eax
0088FB13: lea eax, var_30
0088FB16: push eax
0088FB17: call 00410A84h ; Set (object)
0088FB1C: push eax
0088FB1D: lea eax, var_48
0088FB20: push eax
0088FB21: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088FB26: add esp, 00000010h
0088FB29: push eax
0088FB2A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088FB2F: push eax
0088FB30: lea eax, var_34
0088FB33: push eax
0088FB34: call 00410A84h ; Set (object)
0088FB39: push eax
0088FB3A: lea eax, var_58
0088FB3D: push eax
0088FB3E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088FB43: add esp, 00000020h
0088FB46: push eax
0088FB47: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0088FB4C: push eax
0088FB4D: lea eax, var_38
0088FB50: push eax
0088FB51: call 00410A84h ; Set (object)
0088FB56: push eax
0088FB57: lea eax, var_68
0088FB5A: push eax
0088FB5B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088FB60: add esp, 00000010h
0088FB63: push eax
0088FB64: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0088FB69: mov edx, eax
0088FB6B: lea ecx, var_28
0088FB6E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088FB73: push eax
0088FB74: call 004109DCh ; Val(arg_1)
0088FB79: fstp real8 ptr var_000000C4
0088FB7F: push 00000000h
0088FB81: push 00000000h
0088FB83: push 00000001h
0088FB85: push 00000000h
0088FB87: lea eax, var_7C
0088FB8A: push eax
0088FB8B: push 00000010h
0088FB8D: push 00000880h
0088FB92: call 00410946h ; ReDim
0088FB97: add esp, 0000001Ch
0088FB9A: mov eax, [ebp+08h]
0088FB9D: mov eax, [eax]
0088FB9F: push [ebp+08h]
0088FBA2: call [eax+00000304h]
0088FBA8: mov var_70, eax
0088FBAB: mov var_78, 00000009h
0088FBB2: lea esi, var_78
0088FBB5: push 00000000h
0088FBB7: push var_7C
0088FBBA: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0088FBBF: mov ecx, eax
0088FBC1: mov edx, esi
0088FBC3: call 00410940h ; msvbvm60.dll.__vbaVarZero
0088FBC8: mov edx, 0043D87Ch ; x94
0088FBCD: lea ecx, var_2C
0088FBD0: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0088FBD5: lea eax, var_7C
0088FBD8: push eax
0088FBD9: lea eax, var_2C
0088FBDC: push eax
0088FBDD: fld real8 ptr var_000000C4
0088FBE3: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0088FBE8: push eax
0088FBE9: call 007A6910h
0088FBEE: lea eax, var_7C
0088FBF1: push eax
0088FBF2: push 00000000h
0088FBF4: call 00410934h ; Erase
0088FBF9: lea eax, var_2C
0088FBFC: push eax
0088FBFD: lea eax, var_28
0088FC00: push eax
0088FC01: push 00000002h
0088FC03: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0088FC08: add esp, 0000000Ch
0088FC0B: lea eax, var_38
0088FC0E: push eax
0088FC0F: lea eax, var_34
0088FC12: push eax
0088FC13: lea eax, var_30
0088FC16: push eax
0088FC17: push 00000003h
0088FC19: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088FC1E: add esp, 00000010h
0088FC21: lea eax, var_68
0088FC24: push eax
0088FC25: lea eax, var_58
0088FC28: push eax
0088FC29: lea eax, var_48
0088FC2C: push eax
0088FC2D: push 00000003h
0088FC2F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088FC34: add esp, 00000010h
0088FC37: lea eax, var_00000110
0088FC3D: push eax
0088FC3E: lea eax, var_00000100
0088FC44: push eax
0088FC45: lea eax, var_24
0088FC48: push eax
0088FC49: call 00410A36h ; Next
0088FC4E: mov var_00000120, eax
0088FC54: cmp var_00000120, 00000000h
0088FC5B: jnz 0088F965h
0088FC61: jmp 0088FD4Ah
0088FC66: lea eax, var_28
0088FC69: push eax
0088FC6A: mov eax, [ebp+08h]
0088FC6D: mov eax, [eax]
0088FC6F: push [ebp+08h]
0088FC72: call [eax+000001C0h]
0088FC78: fclex 
0088FC7A: mov var_000000C8, eax
0088FC80: cmp var_000000C8, 00000000h
0088FC87: jnl 88FCA9h
0088FC89: push 000001C0h
0088FC8E: push 004485C8h
0088FC93: push [ebp+08h]
0088FC96: push var_000000C8
0088FC9C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088FCA1: mov var_00000144, eax
0088FCA7: jmp 88FCB0h
0088FCA9: and var_00000144, 00000000h
0088FCB0: push var_28
0088FCB3: call 004109DCh ; Val(arg_1)
0088FCB8: fstp real8 ptr var_000000C4
0088FCBE: push 00000000h
0088FCC0: push 00000000h
0088FCC2: push 00000001h
0088FCC4: push 00000000h
0088FCC6: lea eax, var_7C
0088FCC9: push eax
0088FCCA: push 00000010h
0088FCCC: push 00000880h
0088FCD1: call 00410946h ; ReDim
0088FCD6: add esp, 0000001Ch
0088FCD9: mov eax, [ebp+08h]
0088FCDC: mov eax, [eax]
0088FCDE: push [ebp+08h]
0088FCE1: call [eax+00000304h]
0088FCE7: mov var_40, eax
0088FCEA: mov var_48, 00000009h
0088FCF1: lea esi, var_48
0088FCF4: push 00000000h
0088FCF6: push var_7C
0088FCF9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0088FCFE: mov ecx, eax
0088FD00: mov edx, esi
0088FD02: call 00410940h ; msvbvm60.dll.__vbaVarZero
0088FD07: mov edx, 0043D87Ch ; x94
0088FD0C: lea ecx, var_2C
0088FD0F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0088FD14: lea eax, var_7C
0088FD17: push eax
0088FD18: lea eax, var_2C
0088FD1B: push eax
0088FD1C: fld real8 ptr var_000000C4
0088FD22: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0088FD27: push eax
0088FD28: call 007A6910h
0088FD2D: lea eax, var_7C
0088FD30: push eax
0088FD31: push 00000000h
0088FD33: call 00410934h ; Erase
0088FD38: lea eax, var_2C
0088FD3B: push eax
0088FD3C: lea eax, var_28
0088FD3F: push eax
0088FD40: push 00000002h
0088FD42: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0088FD47: add esp, 0000000Ch
0088FD4A: mov var_04, 00000000h
0088FD51: wait 
0088FD52: push 0088FDD6h
0088FD57: jmp 88FDA7h
0088FD59: lea eax, var_2C
0088FD5C: push eax
0088FD5D: lea eax, var_28
0088FD60: push eax
0088FD61: push 00000002h
0088FD63: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0088FD68: add esp, 0000000Ch
0088FD6B: lea eax, var_38
0088FD6E: push eax
0088FD6F: lea eax, var_34
0088FD72: push eax
0088FD73: lea eax, var_30
0088FD76: push eax
0088FD77: push 00000003h
0088FD79: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088FD7E: add esp, 00000010h
0088FD81: lea eax, var_78
0088FD84: push eax
0088FD85: lea eax, var_68
0088FD88: push eax
0088FD89: lea eax, var_58
0088FD8C: push eax
0088FD8D: lea eax, var_48
0088FD90: push eax
0088FD91: push 00000004h
0088FD93: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088FD98: add esp, 00000014h
0088FD9B: lea eax, var_7C
0088FD9E: push eax
0088FD9F: push 00000000h
0088FDA1: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
0088FDA6: ret 
End Sub

Private sub mnuMSNSave__89AE31
0089AE31: push ebp
0089AE32: mov ebp, esp
0089AE34: sub esp, 00000018h
0089AE37: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0089AE3C: mov eax, fs:[00h]
0089AE42: push eax
0089AE43: mov fs:[00000000h], esp
0089AE4A: mov eax, 00000180h
0089AE4F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089AE54: push ebx
0089AE55: push esi
0089AE56: push edi
0089AE57: mov var_18, esp
0089AE5A: mov var_14, 0040E020h
0089AE61: mov eax, [ebp+08h]
0089AE64: and eax, 00000001h
0089AE67: mov var_10, eax
0089AE6A: mov eax, [ebp+08h]
0089AE6D: and al, FEh
0089AE6F: mov [ebp+08h], eax
0089AE72: mov var_0C, 00000000h
0089AE79: mov eax, [ebp+08h]
0089AE7C: mov eax, [eax]
0089AE7E: push [ebp+08h]
0089AE81: call [eax+04h]
0089AE84: mov var_04, 00000001h
0089AE8B: mov var_04, 00000002h
0089AE92: push FFFFFFFFh
0089AE94: call 00410A60h ; On Error ...
0089AE99: mov var_04, 00000003h
0089AEA0: mov eax, [ebp+0Ch]
0089AEA3: mov ax, [eax]
0089AEA6: mov var_00000168, ax
0089AEAD: movsx eax, word ptr var_00000168
0089AEB4: mov var_00000188, eax
0089AEBA: cmp var_00000188, 00000000h
0089AEC1: jz 89AEDAh
0089AEC3: cmp var_00000188, 00000001h
0089AECA: jz 0089B435h
0089AED0: jmp 0089B883h
0089AED5: jmp 0089B883h
0089AEDA: mov var_04, 00000005h
0089AEE1: cmp [008F529Ch], 00000000h
0089AEE8: jnz 89AF05h
0089AEEA: push 008F529Ch
0089AEEF: push 00440F2Ch
0089AEF4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089AEF9: mov var_0000018C, 008F529Ch
0089AF03: jmp 89AF0Fh
0089AF05: mov var_0000018C, 008F529Ch
0089AF0F: mov eax, var_0000018C
0089AF15: mov eax, [eax]
0089AF17: mov var_00000118, eax
0089AF1D: lea eax, var_60
0089AF20: push eax
0089AF21: mov eax, var_00000118
0089AF27: mov eax, [eax]
0089AF29: push var_00000118
0089AF2F: call [eax+14h]
0089AF32: fclex 
0089AF34: mov var_0000011C, eax
0089AF3A: cmp var_0000011C, 00000000h
0089AF41: jnl 89AF63h
0089AF43: push 00000014h
0089AF45: push 00440F1Ch
0089AF4A: push var_00000118
0089AF50: push var_0000011C
0089AF56: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0089AF5B: mov var_00000190, eax
0089AF61: jmp 89AF6Ah
0089AF63: and var_00000190, 00000000h
0089AF6A: mov eax, var_60
0089AF6D: mov var_00000120, eax
0089AF73: lea eax, var_4C
0089AF76: push eax
0089AF77: mov eax, var_00000120
0089AF7D: mov eax, [eax]
0089AF7F: push var_00000120
0089AF85: call [eax+50h]
0089AF88: fclex 
0089AF8A: mov var_00000124, eax
0089AF90: cmp var_00000124, 00000000h
0089AF97: jnl 89AFB9h
0089AF99: push 00000050h
0089AF9B: push 00440F3Ch
0089AFA0: push var_00000120
0089AFA6: push var_00000124
0089AFAC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0089AFB1: mov var_00000194, eax
0089AFB7: jmp 89AFC0h
0089AFB9: and var_00000194, 00000000h
0089AFC0: push 00000000h
0089AFC2: push 00000000h
0089AFC4: push var_4C
0089AFC7: push 0044558Ch ; txt
0089AFCC: push 00452FD0h ; Text Documents
0089AFD1: call 007CCC4Dh
0089AFD6: mov edx, eax
0089AFD8: lea ecx, var_48
0089AFDB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089AFE0: lea ecx, var_4C
0089AFE3: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0089AFE8: lea ecx, var_60
0089AFEB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0089AFF0: mov var_04, 00000006h
0089AFF7: push var_48
0089AFFA: push 00000000h
0089AFFC: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0089B001: test eax, eax
0089B003: jz 0089B430h
0089B009: mov var_04, 00000007h
0089B010: mov var_000000DC, 00000001h
0089B01A: mov var_000000E4, 00000002h
0089B024: push 00000000h
0089B026: push 00000001h
0089B028: push 00440E48h
0089B02D: push 00000000h
0089B02F: push 00000018h
0089B031: mov eax, [ebp+08h]
0089B034: mov eax, [eax]
0089B036: push [ebp+08h]
0089B039: call [eax+00000328h]
0089B03F: push eax
0089B040: lea eax, var_60
0089B043: push eax
0089B044: call 00410A84h ; Set (object)
0089B049: push eax
0089B04A: lea eax, var_00000084
0089B050: push eax
0089B051: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089B056: add esp, 00000010h
0089B059: push eax
0089B05A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089B05F: push eax
0089B060: lea eax, var_64
0089B063: push eax
0089B064: call 00410A84h ; Set (object)
0089B069: push eax
0089B06A: lea eax, var_00000094
0089B070: push eax
0089B071: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089B076: add esp, 00000010h
0089B079: push eax
0089B07A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0089B07F: mov var_000000EC, eax
0089B085: mov var_000000F4, 00000003h
0089B08F: mov var_000000FC, 00000001h
0089B099: mov var_00000104, 00000002h
0089B0A3: lea eax, var_000000E4
0089B0A9: push eax
0089B0AA: lea eax, var_000000F4
0089B0B0: push eax
0089B0B1: lea eax, var_00000104
0089B0B7: push eax
0089B0B8: lea eax, var_00000144
0089B0BE: push eax
0089B0BF: lea eax, var_00000134
0089B0C5: push eax
0089B0C6: lea eax, var_30
0089B0C9: push eax
0089B0CA: call 00410A3Ch ; For
0089B0CF: mov var_00000180, eax
0089B0D5: lea eax, var_64
0089B0D8: push eax
0089B0D9: lea eax, var_60
0089B0DC: push eax
0089B0DD: push 00000002h
0089B0DF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089B0E4: add esp, 0000000Ch
0089B0E7: lea eax, var_00000094
0089B0ED: push eax
0089B0EE: lea eax, var_00000084
0089B0F4: push eax
0089B0F5: push 00000002h
0089B0F7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089B0FC: add esp, 0000000Ch
0089B0FF: jmp 0089B383h
0089B104: mov var_04, 00000008h
0089B10B: lea eax, var_30
0089B10E: mov var_000000DC, eax
0089B114: mov var_000000E4, 0000400Ch
0089B11E: mov var_000000FC, 00000001h
0089B128: mov var_00000104, 00000003h
0089B132: lea eax, var_30
0089B135: mov var_000000EC, eax
0089B13B: mov var_000000F4, 0000400Ch
0089B145: push var_44
0089B148: push 00000000h
0089B14A: push 00000000h
0089B14C: push 00440E58h
0089B151: push 00000010h
0089B153: pop eax
0089B154: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089B159: lea esi, var_000000E4
0089B15F: mov edi, esp
0089B161: movsd 
0089B162: movsd 
0089B163: movsd 
0089B164: movsd 
0089B165: push 00000001h
0089B167: push 00000000h
0089B169: push 00440E48h
0089B16E: push 00000000h
0089B170: push 00000018h
0089B172: mov eax, [ebp+08h]
0089B175: mov eax, [eax]
0089B177: push [ebp+08h]
0089B17A: call [eax+00000328h]
0089B180: push eax
0089B181: lea eax, var_60
0089B184: push eax
0089B185: call 00410A84h ; Set (object)
0089B18A: push eax
0089B18B: lea eax, var_00000084
0089B191: push eax
0089B192: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089B197: add esp, 00000010h
0089B19A: push eax
0089B19B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089B1A0: push eax
0089B1A1: lea eax, var_64
0089B1A4: push eax
0089B1A5: call 00410A84h ; Set (object)
0089B1AA: push eax
0089B1AB: lea eax, var_00000094
0089B1B1: push eax
0089B1B2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089B1B7: add esp, 00000020h
0089B1BA: push eax
0089B1BB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089B1C0: push eax
0089B1C1: lea eax, var_68
0089B1C4: push eax
0089B1C5: call 00410A84h ; Set (object)
0089B1CA: push eax
0089B1CB: lea eax, var_000000A4
0089B1D1: push eax
0089B1D2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089B1D7: add esp, 00000010h
0089B1DA: push eax
0089B1DB: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0089B1E0: mov edx, eax
0089B1E2: lea ecx, var_4C
0089B1E5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089B1EA: push eax
0089B1EB: call 00410A18h ; &
0089B1F0: mov edx, eax
0089B1F2: lea ecx, var_50
0089B1F5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089B1FA: push eax
0089B1FB: push 00445568h
0089B200: call 00410A18h ; &
0089B205: mov edx, eax
0089B207: lea ecx, var_54
0089B20A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089B20F: push eax
0089B210: push 00000010h
0089B212: pop eax
0089B213: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089B218: lea esi, var_00000104
0089B21E: mov edi, esp
0089B220: movsd 
0089B221: movsd 
0089B222: movsd 
0089B223: movsd 
0089B224: push 00000001h
0089B226: push 00000010h
0089B228: push 00440E58h
0089B22D: push 00000010h
0089B22F: pop eax
0089B230: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089B235: lea esi, var_000000F4
0089B23B: mov edi, esp
0089B23D: movsd 
0089B23E: movsd 
0089B23F: movsd 
0089B240: movsd 
0089B241: push 00000001h
0089B243: push 00000000h
0089B245: push 00440E48h
0089B24A: push 00000000h
0089B24C: push 00000018h
0089B24E: mov eax, [ebp+08h]
0089B251: mov eax, [eax]
0089B253: push [ebp+08h]
0089B256: call [eax+00000328h]
0089B25C: push eax
0089B25D: lea eax, var_6C
0089B260: push eax
0089B261: call 00410A84h ; Set (object)
0089B266: push eax
0089B267: lea eax, var_000000B4
0089B26D: push eax
0089B26E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089B273: add esp, 00000010h
0089B276: push eax
0089B277: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089B27C: push eax
0089B27D: lea eax, var_70
0089B280: push eax
0089B281: call 00410A84h ; Set (object)
0089B286: push eax
0089B287: lea eax, var_000000C4
0089B28D: push eax
0089B28E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089B293: add esp, 00000020h
0089B296: push eax
0089B297: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089B29C: push eax
0089B29D: lea eax, var_74
0089B2A0: push eax
0089B2A1: call 00410A84h ; Set (object)
0089B2A6: push eax
0089B2A7: lea eax, var_000000D4
0089B2AD: push eax
0089B2AE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089B2B3: add esp, 00000020h
0089B2B6: push eax
0089B2B7: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0089B2BC: mov edx, eax
0089B2BE: lea ecx, var_58
0089B2C1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089B2C6: push eax
0089B2C7: call 00410A18h ; &
0089B2CC: mov edx, eax
0089B2CE: lea ecx, var_5C
0089B2D1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089B2D6: push eax
0089B2D7: push 00441264h ; vbCrLf
0089B2DC: call 00410A18h ; &
0089B2E1: mov edx, eax
0089B2E3: lea ecx, var_44
0089B2E6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089B2EB: lea eax, var_5C
0089B2EE: push eax
0089B2EF: lea eax, var_58
0089B2F2: push eax
0089B2F3: lea eax, var_54
0089B2F6: push eax
0089B2F7: lea eax, var_50
0089B2FA: push eax
0089B2FB: lea eax, var_4C
0089B2FE: push eax
0089B2FF: push 00000005h
0089B301: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089B306: add esp, 00000018h
0089B309: lea eax, var_74
0089B30C: push eax
0089B30D: lea eax, var_70
0089B310: push eax
0089B311: lea eax, var_6C
0089B314: push eax
0089B315: lea eax, var_68
0089B318: push eax
0089B319: lea eax, var_64
0089B31C: push eax
0089B31D: lea eax, var_60
0089B320: push eax
0089B321: push 00000006h
0089B323: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089B328: add esp, 0000001Ch
0089B32B: lea eax, var_000000D4
0089B331: push eax
0089B332: lea eax, var_000000C4
0089B338: push eax
0089B339: lea eax, var_000000B4
0089B33F: push eax
0089B340: lea eax, var_000000A4
0089B346: push eax
0089B347: lea eax, var_00000094
0089B34D: push eax
0089B34E: lea eax, var_00000084
0089B354: push eax
0089B355: push 00000006h
0089B357: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089B35C: add esp, 0000001Ch
0089B35F: mov var_04, 00000009h
0089B366: lea eax, var_00000144
0089B36C: push eax
0089B36D: lea eax, var_00000134
0089B373: push eax
0089B374: lea eax, var_30
0089B377: push eax
0089B378: call 00410A36h ; Next
0089B37D: mov var_00000180, eax
0089B383: cmp var_00000180, 00000000h
0089B38A: jnz 0089B104h
0089B390: mov var_04, 0000000Ah
0089B397: mov var_7C, 80020004h
0089B39E: mov var_00000084, 0000000Ah
0089B3A8: lea eax, var_00000084
0089B3AE: push eax
0089B3AF: call 004108C2h ; FreeFile
0089B3B4: mov var_000000EC, ax
0089B3BB: mov var_000000F4, 00000002h
0089B3C5: lea edx, var_000000F4
0089B3CB: lea ecx, var_40
0089B3CE: call 00410922h ; msvbvm60.dll.__vbaVarMove
0089B3D3: lea ecx, var_00000084
0089B3D9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0089B3DE: mov var_04, 0000000Bh
0089B3E5: push var_48
0089B3E8: lea eax, var_40
0089B3EB: push eax
0089B3EC: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0089B3F1: push eax
0089B3F2: push FFFFFFFFh
0089B3F4: push 00000220h
0089B3F9: call 004108B6h ; Open #
0089B3FE: mov var_04, 0000000Ch
0089B405: lea eax, var_40
0089B408: push eax
0089B409: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0089B40E: push eax
0089B40F: lea eax, var_44
0089B412: push eax
0089B413: push 00000000h
0089B415: call 0041089Eh ; Put #
0089B41A: mov var_04, 0000000Dh
0089B421: lea eax, var_40
0089B424: push eax
0089B425: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0089B42A: push eax
0089B42B: call 00410898h ; Close #arg_1
0089B430: jmp 0089B883h
0089B435: mov var_04, 00000010h
0089B43C: cmp [008F529Ch], 00000000h
0089B443: jnz 89B460h
0089B445: push 008F529Ch
0089B44A: push 00440F2Ch
0089B44F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089B454: mov var_00000198, 008F529Ch
0089B45E: jmp 89B46Ah
0089B460: mov var_00000198, 008F529Ch
0089B46A: mov eax, var_00000198
0089B470: mov eax, [eax]
0089B472: mov var_00000118, eax
0089B478: lea eax, var_60
0089B47B: push eax
0089B47C: mov eax, var_00000118
0089B482: mov eax, [eax]
0089B484: push var_00000118
0089B48A: call [eax+14h]
0089B48D: fclex 
0089B48F: mov var_0000011C, eax
0089B495: cmp var_0000011C, 00000000h
0089B49C: jnl 89B4BEh
0089B49E: push 00000014h
0089B4A0: push 00440F1Ch
0089B4A5: push var_00000118
0089B4AB: push var_0000011C
0089B4B1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0089B4B6: mov var_0000019C, eax
0089B4BC: jmp 89B4C5h
0089B4BE: and var_0000019C, 00000000h
0089B4C5: mov eax, var_60
0089B4C8: mov var_00000120, eax
0089B4CE: lea eax, var_4C
0089B4D1: push eax
0089B4D2: mov eax, var_00000120
0089B4D8: mov eax, [eax]
0089B4DA: push var_00000120
0089B4E0: call [eax+50h]
0089B4E3: fclex 
0089B4E5: mov var_00000124, eax
0089B4EB: cmp var_00000124, 00000000h
0089B4F2: jnl 89B514h
0089B4F4: push 00000050h
0089B4F6: push 00440F3Ch
0089B4FB: push var_00000120
0089B501: push var_00000124
0089B507: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0089B50C: mov var_000001A0, eax
0089B512: jmp 89B51Bh
0089B514: and var_000001A0, 00000000h
0089B51B: push 00000000h
0089B51D: push 00000000h
0089B51F: push var_4C
0089B522: push 0044558Ch ; txt
0089B527: push 00452FD0h ; Text Documents
0089B52C: call 007CCC4Dh
0089B531: mov edx, eax
0089B533: lea ecx, var_48
0089B536: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089B53B: lea ecx, var_4C
0089B53E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0089B543: lea ecx, var_60
0089B546: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0089B54B: mov var_04, 00000011h
0089B552: push var_48
0089B555: push 00000000h
0089B557: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0089B55C: test eax, eax
0089B55E: jz 0089B883h
0089B564: mov var_04, 00000012h
0089B56B: mov var_000000DC, 00000001h
0089B575: mov var_000000E4, 00000002h
0089B57F: push 00000000h
0089B581: push 00000001h
0089B583: push 00440E48h
0089B588: push 00000000h
0089B58A: push 00000018h
0089B58C: mov eax, [ebp+08h]
0089B58F: mov eax, [eax]
0089B591: push [ebp+08h]
0089B594: call [eax+00000328h]
0089B59A: push eax
0089B59B: lea eax, var_60
0089B59E: push eax
0089B59F: call 00410A84h ; Set (object)
0089B5A4: push eax
0089B5A5: lea eax, var_00000084
0089B5AB: push eax
0089B5AC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089B5B1: add esp, 00000010h
0089B5B4: push eax
0089B5B5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089B5BA: push eax
0089B5BB: lea eax, var_64
0089B5BE: push eax
0089B5BF: call 00410A84h ; Set (object)
0089B5C4: push eax
0089B5C5: lea eax, var_00000094
0089B5CB: push eax
0089B5CC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089B5D1: add esp, 00000010h
0089B5D4: push eax
0089B5D5: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0089B5DA: mov var_000000EC, eax
0089B5E0: mov var_000000F4, 00000003h
0089B5EA: mov var_000000FC, 00000001h
0089B5F4: mov var_00000104, 00000002h
0089B5FE: lea eax, var_000000E4
0089B604: push eax
0089B605: lea eax, var_000000F4
0089B60B: push eax
0089B60C: lea eax, var_00000104
0089B612: push eax
0089B613: lea eax, var_00000164
0089B619: push eax
0089B61A: lea eax, var_00000154
0089B620: push eax
0089B621: lea eax, var_30
0089B624: push eax
0089B625: call 00410A3Ch ; For
0089B62A: mov var_00000184, eax
0089B630: lea eax, var_64
0089B633: push eax
0089B634: lea eax, var_60
0089B637: push eax
0089B638: push 00000002h
0089B63A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089B63F: add esp, 0000000Ch
0089B642: lea eax, var_00000094
0089B648: push eax
0089B649: lea eax, var_00000084
0089B64F: push eax
0089B650: push 00000002h
0089B652: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089B657: add esp, 0000000Ch
0089B65A: jmp 0089B7D6h
0089B65F: mov var_04, 00000013h
0089B666: mov var_000000EC, 00000001h
0089B670: mov var_000000F4, 00000003h
0089B67A: lea eax, var_30
0089B67D: mov var_000000DC, eax
0089B683: mov var_000000E4, 0000400Ch
0089B68D: push var_44
0089B690: push 00000010h
0089B692: pop eax
0089B693: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089B698: lea esi, var_000000F4
0089B69E: mov edi, esp
0089B6A0: movsd 
0089B6A1: movsd 
0089B6A2: movsd 
0089B6A3: movsd 
0089B6A4: push 00000001h
0089B6A6: push 00000010h
0089B6A8: push 00440E58h
0089B6AD: push 00000010h
0089B6AF: pop eax
0089B6B0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089B6B5: lea esi, var_000000E4
0089B6BB: mov edi, esp
0089B6BD: movsd 
0089B6BE: movsd 
0089B6BF: movsd 
0089B6C0: movsd 
0089B6C1: push 00000001h
0089B6C3: push 00000000h
0089B6C5: push 00440E48h
0089B6CA: push 00000000h
0089B6CC: push 00000018h
0089B6CE: mov eax, [ebp+08h]
0089B6D1: mov eax, [eax]
0089B6D3: push [ebp+08h]
0089B6D6: call [eax+00000328h]
0089B6DC: push eax
0089B6DD: lea eax, var_60
0089B6E0: push eax
0089B6E1: call 00410A84h ; Set (object)
0089B6E6: push eax
0089B6E7: lea eax, var_00000084
0089B6ED: push eax
0089B6EE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089B6F3: add esp, 00000010h
0089B6F6: push eax
0089B6F7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089B6FC: push eax
0089B6FD: lea eax, var_64
0089B700: push eax
0089B701: call 00410A84h ; Set (object)
0089B706: push eax
0089B707: lea eax, var_00000094
0089B70D: push eax
0089B70E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089B713: add esp, 00000020h
0089B716: push eax
0089B717: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089B71C: push eax
0089B71D: lea eax, var_68
0089B720: push eax
0089B721: call 00410A84h ; Set (object)
0089B726: push eax
0089B727: lea eax, var_000000A4
0089B72D: push eax
0089B72E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089B733: add esp, 00000020h
0089B736: push eax
0089B737: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0089B73C: mov edx, eax
0089B73E: lea ecx, var_4C
0089B741: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089B746: push eax
0089B747: call 00410A18h ; &
0089B74C: mov edx, eax
0089B74E: lea ecx, var_50
0089B751: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089B756: push eax
0089B757: push 00441264h ; vbCrLf
0089B75C: call 00410A18h ; &
0089B761: mov edx, eax
0089B763: lea ecx, var_44
0089B766: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0089B76B: lea eax, var_50
0089B76E: push eax
0089B76F: lea eax, var_4C
0089B772: push eax
0089B773: push 00000002h
0089B775: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089B77A: add esp, 0000000Ch
0089B77D: lea eax, var_68
0089B780: push eax
0089B781: lea eax, var_64
0089B784: push eax
0089B785: lea eax, var_60
0089B788: push eax
0089B789: push 00000003h
0089B78B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089B790: add esp, 00000010h
0089B793: lea eax, var_000000A4
0089B799: push eax
0089B79A: lea eax, var_00000094
0089B7A0: push eax
0089B7A1: lea eax, var_00000084
0089B7A7: push eax
0089B7A8: push 00000003h
0089B7AA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089B7AF: add esp, 00000010h
0089B7B2: mov var_04, 00000014h
0089B7B9: lea eax, var_00000164
0089B7BF: push eax
0089B7C0: lea eax, var_00000154
0089B7C6: push eax
0089B7C7: lea eax, var_30
0089B7CA: push eax
0089B7CB: call 00410A36h ; Next
0089B7D0: mov var_00000184, eax
0089B7D6: cmp var_00000184, 00000000h
0089B7DD: jnz 0089B65Fh
0089B7E3: mov var_04, 00000015h
0089B7EA: mov var_7C, 80020004h
0089B7F1: mov var_00000084, 0000000Ah
0089B7FB: lea eax, var_00000084
0089B801: push eax
0089B802: call 004108C2h ; FreeFile
0089B807: mov var_000000EC, ax
0089B80E: mov var_000000F4, 00000002h
0089B818: lea edx, var_000000F4
0089B81E: lea ecx, var_40
0089B821: call 00410922h ; msvbvm60.dll.__vbaVarMove
0089B826: lea ecx, var_00000084
0089B82C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0089B831: mov var_04, 00000016h
0089B838: push var_48
0089B83B: lea eax, var_40
0089B83E: push eax
0089B83F: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0089B844: push eax
0089B845: push FFFFFFFFh
0089B847: push 00000220h
0089B84C: call 004108B6h ; Open #
0089B851: mov var_04, 00000017h
0089B858: lea eax, var_40
0089B85B: push eax
0089B85C: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0089B861: push eax
0089B862: lea eax, var_44
0089B865: push eax
0089B866: push 00000000h
0089B868: call 0041089Eh ; Put #
0089B86D: mov var_04, 00000018h
0089B874: lea eax, var_40
0089B877: push eax
0089B878: call 004109D0h ; msvbvm60.dll.__vbaI2Var
0089B87D: push eax
0089B87E: call 00410898h ; Close #arg_1
0089B883: mov var_10, 00000000h
0089B88A: push 0089B94Dh
0089B88F: jmp 89B906h
0089B891: lea eax, var_5C
0089B894: push eax
0089B895: lea eax, var_58
0089B898: push eax
0089B899: lea eax, var_54
0089B89C: push eax
0089B89D: lea eax, var_50
0089B8A0: push eax
0089B8A1: lea eax, var_4C
0089B8A4: push eax
0089B8A5: push 00000005h
0089B8A7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089B8AC: add esp, 00000018h
0089B8AF: lea eax, var_74
0089B8B2: push eax
0089B8B3: lea eax, var_70
0089B8B6: push eax
0089B8B7: lea eax, var_6C
0089B8BA: push eax
0089B8BB: lea eax, var_68
0089B8BE: push eax
0089B8BF: lea eax, var_64
0089B8C2: push eax
0089B8C3: lea eax, var_60
0089B8C6: push eax
0089B8C7: push 00000006h
0089B8C9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089B8CE: add esp, 0000001Ch
0089B8D1: lea eax, var_000000D4
0089B8D7: push eax
0089B8D8: lea eax, var_000000C4
0089B8DE: push eax
0089B8DF: lea eax, var_000000B4
0089B8E5: push eax
0089B8E6: lea eax, var_000000A4
0089B8EC: push eax
0089B8ED: lea eax, var_00000094
0089B8F3: push eax
0089B8F4: lea eax, var_00000084
0089B8FA: push eax
0089B8FB: push 00000006h
0089B8FD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089B902: add esp, 0000001Ch
0089B905: ret 
End Sub

Private sub cmdSignOut__893283
00893283: push ebp
00893284: mov ebp, esp
00893286: sub esp, 0000000Ch
00893289: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0089328E: mov eax, fs:[00h]
00893294: push eax
00893295: mov fs:[00000000h], esp
0089329C: mov eax, 00000124h
008932A1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008932A6: push ebx
008932A7: push esi
008932A8: push edi
008932A9: mov var_0C, esp
008932AC: mov var_08, 0040DED8h
008932B3: mov eax, [ebp+08h]
008932B6: and eax, 00000001h
008932B9: mov var_04, eax
008932BC: mov eax, [ebp+08h]
008932BF: and al, FEh
008932C1: mov [ebp+08h], eax
008932C4: mov eax, [ebp+08h]
008932C7: mov eax, [eax]
008932C9: push [ebp+08h]
008932CC: call [eax+04h]
008932CF: push 00000000h
008932D1: push 00000000h
008932D3: mov eax, [ebp+08h]
008932D6: mov eax, [eax]
008932D8: push [ebp+08h]
008932DB: call [eax+0000033Ch]
008932E1: push eax
008932E2: lea eax, var_30
008932E5: push eax
008932E6: call 00410A84h ; Set (object)
008932EB: push eax
008932EC: lea eax, var_48
008932EF: push eax
008932F0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008932F5: add esp, 00000010h
008932F8: push eax
008932F9: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008932FE: dec eax
008932FF: neg eax
00893301: sbb eax, eax
00893303: inc eax
00893304: neg eax
00893306: mov var_000000C8, ax
0089330D: lea ecx, var_30
00893310: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00893315: lea ecx, var_48
00893318: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0089331D: movsx eax, word ptr var_000000C8
00893324: test eax, eax
00893326: jz 008933CFh
0089332C: mov var_70, 80020004h
00893333: mov var_78, 0000000Ah
0089333A: mov var_60, 80020004h
00893341: mov var_68, 0000000Ah
00893348: mov var_50, 80020004h
0089334F: mov var_58, 0000000Ah
00893356: mov var_00000084, 00459664h ; Do you really want to sign out all selected bots from the MSN Messenger service?
00893360: mov var_0000008C, 00000008h
0089336A: lea edx, var_0000008C
00893370: lea ecx, var_48
00893373: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00893378: lea eax, var_78
0089337B: push eax
0089337C: lea eax, var_68
0089337F: push eax
00893380: lea eax, var_58
00893383: push eax
00893384: push 00000034h
00893386: lea eax, var_48
00893389: push eax
0089338A: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0089338F: sub eax, 00000007h
00893392: neg eax
00893394: sbb eax, eax
00893396: inc eax
00893397: neg eax
00893399: mov var_000000C8, ax
008933A0: lea eax, var_78
008933A3: push eax
008933A4: lea eax, var_68
008933A7: push eax
008933A8: lea eax, var_58
008933AB: push eax
008933AC: lea eax, var_48
008933AF: push eax
008933B0: push 00000004h
008933B2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008933B7: add esp, 00000014h
008933BA: movsx eax, word ptr var_000000C8
008933C1: test eax, eax
008933C3: jz 8933CAh
008933C5: jmp 00893F42h
008933CA: jmp 0089346Dh
008933CF: mov var_70, 80020004h
008933D6: mov var_78, 0000000Ah
008933DD: mov var_60, 80020004h
008933E4: mov var_68, 0000000Ah
008933EB: mov var_50, 80020004h
008933F2: mov var_58, 0000000Ah
008933F9: mov var_00000084, 00459754h ; Do you really want to sign out the current bot from the MSN Messenger service?
00893403: mov var_0000008C, 00000008h
0089340D: lea edx, var_0000008C
00893413: lea ecx, var_48
00893416: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0089341B: lea eax, var_78
0089341E: push eax
0089341F: lea eax, var_68
00893422: push eax
00893423: lea eax, var_58
00893426: push eax
00893427: push 00000034h
00893429: lea eax, var_48
0089342C: push eax
0089342D: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00893432: sub eax, 00000007h
00893435: neg eax
00893437: sbb eax, eax
00893439: inc eax
0089343A: neg eax
0089343C: mov var_000000C8, ax
00893443: lea eax, var_78
00893446: push eax
00893447: lea eax, var_68
0089344A: push eax
0089344B: lea eax, var_58
0089344E: push eax
0089344F: lea eax, var_48
00893452: push eax
00893453: push 00000004h
00893455: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089345A: add esp, 00000014h
0089345D: movsx eax, word ptr var_000000C8
00893464: test eax, eax
00893466: jz 89346Dh
00893468: jmp 00893F42h
0089346D: cmp word ptr [008F2430h], FFFFh
00893475: jnz 008939E1h
0089347B: push 00000000h
0089347D: push 00000000h
0089347F: mov eax, [ebp+08h]
00893482: mov eax, [eax]
00893484: push [ebp+08h]
00893487: call [eax+0000033Ch]
0089348D: push eax
0089348E: lea eax, var_30
00893491: push eax
00893492: call 00410A84h ; Set (object)
00893497: push eax
00893498: lea eax, var_48
0089349B: push eax
0089349C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008934A1: add esp, 00000010h
008934A4: push eax
008934A5: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008934AA: dec eax
008934AB: neg eax
008934AD: sbb eax, eax
008934AF: inc eax
008934B0: neg eax
008934B2: mov var_000000C8, ax
008934B9: lea ecx, var_30
008934BC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008934C1: lea ecx, var_48
008934C4: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008934C9: movsx eax, word ptr var_000000C8
008934D0: test eax, eax
008934D2: jz 008938F9h
008934D8: mov var_00000084, 00000001h
008934E2: mov var_0000008C, 00000002h
008934EC: cmp [008F2010h], 00000000h
008934F3: jnz 893510h
008934F5: push 008F2010h
008934FA: push 00433984h
008934FF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00893504: mov var_0000011C, 008F2010h
0089350E: jmp 89351Ah
00893510: mov var_0000011C, 008F2010h
0089351A: push 00000000h
0089351C: push 00000001h
0089351E: push 00440E48h
00893523: push 00000000h
00893525: push 00000018h
00893527: mov eax, var_0000011C
0089352D: mov eax, [eax]
0089352F: mov ecx, var_0000011C
00893535: mov ecx, [ecx]
00893537: mov ecx, [ecx]
00893539: push eax
0089353A: call [ecx+0000054Ch]
00893540: push eax
00893541: lea eax, var_30
00893544: push eax
00893545: call 00410A84h ; Set (object)
0089354A: push eax
0089354B: lea eax, var_48
0089354E: push eax
0089354F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00893554: add esp, 00000010h
00893557: push eax
00893558: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089355D: push eax
0089355E: lea eax, var_34
00893561: push eax
00893562: call 00410A84h ; Set (object)
00893567: push eax
00893568: lea eax, var_58
0089356B: push eax
0089356C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00893571: add esp, 00000010h
00893574: push eax
00893575: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0089357A: mov var_00000094, eax
00893580: mov var_0000009C, 00000003h
0089358A: mov var_000000A4, 00000001h
00893594: mov var_000000AC, 00000002h
0089359E: lea eax, var_0000008C
008935A4: push eax
008935A5: lea eax, var_0000009C
008935AB: push eax
008935AC: lea eax, var_000000AC
008935B2: push eax
008935B3: lea eax, var_000000E8
008935B9: push eax
008935BA: lea eax, var_000000D8
008935C0: push eax
008935C1: lea eax, var_24
008935C4: push eax
008935C5: call 00410A3Ch ; For
008935CA: mov var_00000114, eax
008935D0: lea eax, var_34
008935D3: push eax
008935D4: lea eax, var_30
008935D7: push eax
008935D8: push 00000002h
008935DA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008935DF: add esp, 0000000Ch
008935E2: lea eax, var_58
008935E5: push eax
008935E6: lea eax, var_48
008935E9: push eax
008935EA: push 00000002h
008935EC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008935F1: add esp, 0000000Ch
008935F4: jmp 008938E7h
008935F9: lea eax, var_24
008935FC: mov var_00000084, eax
00893602: mov var_0000008C, 0000400Ch
0089360C: cmp [008F2010h], 00000000h
00893613: jnz 893630h
00893615: push 008F2010h
0089361A: push 00433984h
0089361F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00893624: mov var_00000120, 008F2010h
0089362E: jmp 89363Ah
00893630: mov var_00000120, 008F2010h
0089363A: push 00000000h
0089363C: push 00000004h
0089363E: push 00440E58h
00893643: push 00000010h
00893645: pop eax
00893646: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089364B: lea esi, var_0000008C
00893651: mov edi, esp
00893653: movsd 
00893654: movsd 
00893655: movsd 
00893656: movsd 
00893657: push 00000001h
00893659: push 00000000h
0089365B: push 00440E48h
00893660: push 00000000h
00893662: push 00000018h
00893664: mov eax, var_00000120
0089366A: mov eax, [eax]
0089366C: mov ecx, var_00000120
00893672: mov ecx, [ecx]
00893674: mov ecx, [ecx]
00893676: push eax
00893677: call [ecx+0000054Ch]
0089367D: push eax
0089367E: lea eax, var_30
00893681: push eax
00893682: call 00410A84h ; Set (object)
00893687: push eax
00893688: lea eax, var_48
0089368B: push eax
0089368C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00893691: add esp, 00000010h
00893694: push eax
00893695: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0089369A: push eax
0089369B: lea eax, var_34
0089369E: push eax
0089369F: call 00410A84h ; Set (object)
008936A4: push eax
008936A5: lea eax, var_58
008936A8: push eax
008936A9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008936AE: add esp, 00000020h
008936B1: push eax
008936B2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008936B7: push eax
008936B8: lea eax, var_38
008936BB: push eax
008936BC: call 00410A84h ; Set (object)
008936C1: push eax
008936C2: lea eax, var_68
008936C5: push eax
008936C6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008936CB: add esp, 00000010h
008936CE: push eax
008936CF: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008936D4: sub ax, FFFFh
008936D8: neg ax
008936DB: sbb eax, eax
008936DD: inc eax
008936DE: neg eax
008936E0: mov var_000000C8, ax
008936E7: lea eax, var_38
008936EA: push eax
008936EB: lea eax, var_34
008936EE: push eax
008936EF: lea eax, var_30
008936F2: push eax
008936F3: push 00000003h
008936F5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008936FA: add esp, 00000010h
008936FD: lea eax, var_68
00893700: push eax
00893701: lea eax, var_58
00893704: push eax
00893705: lea eax, var_48
00893708: push eax
00893709: push 00000003h
0089370B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00893710: add esp, 00000010h
00893713: movsx eax, word ptr var_000000C8
0089371A: test eax, eax
0089371C: jz 008938CAh
00893722: lea eax, var_24
00893725: mov var_00000084, eax
0089372B: mov var_0000008C, 0000400Ch
00893735: cmp [008F2010h], 00000000h
0089373C: jnz 893759h
0089373E: push 008F2010h
00893743: push 00433984h
00893748: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089374D: mov var_00000124, 008F2010h
00893757: jmp 893763h
00893759: mov var_00000124, 008F2010h
00893763: push 00000000h
00893765: push 00000014h
00893767: push 00440E58h
0089376C: push 00000010h
0089376E: pop eax
0089376F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00893774: lea esi, var_0000008C
0089377A: mov edi, esp
0089377C: movsd 
0089377D: movsd 
0089377E: movsd 
0089377F: movsd 
00893780: push 00000001h
00893782: push 00000000h
00893784: push 00440E48h
00893789: push 00000000h
0089378B: push 00000018h
0089378D: mov eax, var_00000124
00893793: mov eax, [eax]
00893795: mov ecx, var_00000124
0089379B: mov ecx, [ecx]
0089379D: mov ecx, [ecx]
0089379F: push eax
008937A0: call [ecx+0000054Ch]
008937A6: push eax
008937A7: lea eax, var_30
008937AA: push eax
008937AB: call 00410A84h ; Set (object)
008937B0: push eax
008937B1: lea eax, var_48
008937B4: push eax
008937B5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008937BA: add esp, 00000010h
008937BD: push eax
008937BE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008937C3: push eax
008937C4: lea eax, var_34
008937C7: push eax
008937C8: call 00410A84h ; Set (object)
008937CD: push eax
008937CE: lea eax, var_58
008937D1: push eax
008937D2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008937D7: add esp, 00000020h
008937DA: push eax
008937DB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008937E0: push eax
008937E1: lea eax, var_38
008937E4: push eax
008937E5: call 00410A84h ; Set (object)
008937EA: push eax
008937EB: lea eax, var_68
008937EE: push eax
008937EF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008937F4: add esp, 00000010h
008937F7: push eax
008937F8: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008937FD: mov edx, eax
008937FF: lea ecx, var_28
00893802: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00893807: push eax
00893808: call 004109DCh ; Val(arg_1)
0089380D: fstp real8 ptr var_000000C4
00893813: push 00000000h
00893815: push 00000000h
00893817: push 00000001h
00893819: push 00000000h
0089381B: lea eax, var_7C
0089381E: push eax
0089381F: push 00000010h
00893821: push 00000880h
00893826: call 00410946h ; ReDim
0089382B: add esp, 0000001Ch
0089382E: mov var_00000094, 00442BFCh
00893838: mov var_0000009C, 00000008h
00893842: lea esi, var_0000009C
00893848: push 00000000h
0089384A: push var_7C
0089384D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00893852: mov ecx, eax
00893854: mov edx, esi
00893856: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
0089385B: mov edx, 0043D8D4h ; x101
00893860: lea ecx, var_2C
00893863: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00893868: lea eax, var_7C
0089386B: push eax
0089386C: lea eax, var_2C
0089386F: push eax
00893870: fld real8 ptr var_000000C4
00893876: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0089387B: push eax
0089387C: call 007A6910h
00893881: lea eax, var_7C
00893884: push eax
00893885: push 00000000h
00893887: call 00410934h ; Erase
0089388C: lea eax, var_2C
0089388F: push eax
00893890: lea eax, var_28
00893893: push eax
00893894: push 00000002h
00893896: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0089389B: add esp, 0000000Ch
0089389E: lea eax, var_38
008938A1: push eax
008938A2: lea eax, var_34
008938A5: push eax
008938A6: lea eax, var_30
008938A9: push eax
008938AA: push 00000003h
008938AC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008938B1: add esp, 00000010h
008938B4: lea eax, var_68
008938B7: push eax
008938B8: lea eax, var_58
008938BB: push eax
008938BC: lea eax, var_48
008938BF: push eax
008938C0: push 00000003h
008938C2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008938C7: add esp, 00000010h
008938CA: lea eax, var_000000E8
008938D0: push eax
008938D1: lea eax, var_000000D8
008938D7: push eax
008938D8: lea eax, var_24
008938DB: push eax
008938DC: call 00410A36h ; Next
008938E1: mov var_00000114, eax
008938E7: cmp var_00000114, 00000000h
008938EE: jnz 008935F9h
008938F4: jmp 008939DCh
008938F9: lea eax, var_28
008938FC: push eax
008938FD: mov eax, [ebp+08h]
00893900: mov eax, [eax]
00893902: push [ebp+08h]
00893905: call [eax+000001C0h]
0089390B: fclex 
0089390D: mov var_000000C8, eax
00893913: cmp var_000000C8, 00000000h
0089391A: jnl 89393Ch
0089391C: push 000001C0h
00893921: push 004485C8h
00893926: push [ebp+08h]
00893929: push var_000000C8
0089392F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00893934: mov var_00000128, eax
0089393A: jmp 893943h
0089393C: and var_00000128, 00000000h
00893943: push var_28
00893946: call 004109DCh ; Val(arg_1)
0089394B: fstp real8 ptr var_000000C4
00893951: push 00000000h
00893953: push 00000000h
00893955: push 00000001h
00893957: push 00000000h
00893959: lea eax, var_7C
0089395C: push eax
0089395D: push 00000010h
0089395F: push 00000880h
00893964: call 00410946h ; ReDim
00893969: add esp, 0000001Ch
0089396C: mov var_00000084, 00442BFCh
00893976: mov var_0000008C, 00000008h
00893980: lea esi, var_0000008C
00893986: push 00000000h
00893988: push var_7C
0089398B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00893990: mov ecx, eax
00893992: mov edx, esi
00893994: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
00893999: mov edx, 0043D8D4h ; x101
0089399E: lea ecx, var_2C
008939A1: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008939A6: lea eax, var_7C
008939A9: push eax
008939AA: lea eax, var_2C
008939AD: push eax
008939AE: fld real8 ptr var_000000C4
008939B4: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008939B9: push eax
008939BA: call 007A6910h
008939BF: lea eax, var_7C
008939C2: push eax
008939C3: push 00000000h
008939C5: call 00410934h ; Erase
008939CA: lea eax, var_2C
008939CD: push eax
008939CE: lea eax, var_28
008939D1: push eax
008939D2: push 00000002h
008939D4: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008939D9: add esp, 0000000Ch
008939DC: jmp 00893F42h
008939E1: push 00000000h
008939E3: push 00000000h
008939E5: mov eax, [ebp+08h]
008939E8: mov eax, [eax]
008939EA: push [ebp+08h]
008939ED: call [eax+0000033Ch]
008939F3: push eax
008939F4: lea eax, var_30
008939F7: push eax
008939F8: call 00410A84h ; Set (object)
008939FD: push eax
008939FE: lea eax, var_48
00893A01: push eax
00893A02: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00893A07: add esp, 00000010h
00893A0A: push eax
00893A0B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00893A10: dec eax
00893A11: neg eax
00893A13: sbb eax, eax
00893A15: inc eax
00893A16: neg eax
00893A18: mov var_000000C8, ax
00893A1F: lea ecx, var_30
00893A22: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00893A27: lea ecx, var_48
00893A2A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00893A2F: movsx eax, word ptr var_000000C8
00893A36: test eax, eax
00893A38: jz 00893E5Fh
00893A3E: mov var_00000084, 00000001h
00893A48: mov var_0000008C, 00000002h
00893A52: cmp [008F2010h], 00000000h
00893A59: jnz 893A76h
00893A5B: push 008F2010h
00893A60: push 00433984h
00893A65: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00893A6A: mov var_0000012C, 008F2010h
00893A74: jmp 893A80h
00893A76: mov var_0000012C, 008F2010h
00893A80: push 00000000h
00893A82: push 00000001h
00893A84: push 00440E48h
00893A89: push 00000000h
00893A8B: push 00000018h
00893A8D: mov eax, var_0000012C
00893A93: mov eax, [eax]
00893A95: mov ecx, var_0000012C
00893A9B: mov ecx, [ecx]
00893A9D: mov ecx, [ecx]
00893A9F: push eax
00893AA0: call [ecx+00000550h]
00893AA6: push eax
00893AA7: lea eax, var_30
00893AAA: push eax
00893AAB: call 00410A84h ; Set (object)
00893AB0: push eax
00893AB1: lea eax, var_48
00893AB4: push eax
00893AB5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00893ABA: add esp, 00000010h
00893ABD: push eax
00893ABE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00893AC3: push eax
00893AC4: lea eax, var_34
00893AC7: push eax
00893AC8: call 00410A84h ; Set (object)
00893ACD: push eax
00893ACE: lea eax, var_58
00893AD1: push eax
00893AD2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00893AD7: add esp, 00000010h
00893ADA: push eax
00893ADB: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00893AE0: mov var_00000094, eax
00893AE6: mov var_0000009C, 00000003h
00893AF0: mov var_000000A4, 00000001h
00893AFA: mov var_000000AC, 00000002h
00893B04: lea eax, var_0000008C
00893B0A: push eax
00893B0B: lea eax, var_0000009C
00893B11: push eax
00893B12: lea eax, var_000000AC
00893B18: push eax
00893B19: lea eax, var_00000108
00893B1F: push eax
00893B20: lea eax, var_000000F8
00893B26: push eax
00893B27: lea eax, var_24
00893B2A: push eax
00893B2B: call 00410A3Ch ; For
00893B30: mov var_00000118, eax
00893B36: lea eax, var_34
00893B39: push eax
00893B3A: lea eax, var_30
00893B3D: push eax
00893B3E: push 00000002h
00893B40: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00893B45: add esp, 0000000Ch
00893B48: lea eax, var_58
00893B4B: push eax
00893B4C: lea eax, var_48
00893B4F: push eax
00893B50: push 00000002h
00893B52: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00893B57: add esp, 0000000Ch
00893B5A: jmp 00893E4Dh
00893B5F: lea eax, var_24
00893B62: mov var_00000084, eax
00893B68: mov var_0000008C, 0000400Ch
00893B72: cmp [008F2010h], 00000000h
00893B79: jnz 893B96h
00893B7B: push 008F2010h
00893B80: push 00433984h
00893B85: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00893B8A: mov var_00000130, 008F2010h
00893B94: jmp 893BA0h
00893B96: mov var_00000130, 008F2010h
00893BA0: push 00000000h
00893BA2: push 00000004h
00893BA4: push 00440E58h
00893BA9: push 00000010h
00893BAB: pop eax
00893BAC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00893BB1: lea esi, var_0000008C
00893BB7: mov edi, esp
00893BB9: movsd 
00893BBA: movsd 
00893BBB: movsd 
00893BBC: movsd 
00893BBD: push 00000001h
00893BBF: push 00000000h
00893BC1: push 00440E48h
00893BC6: push 00000000h
00893BC8: push 00000018h
00893BCA: mov eax, var_00000130
00893BD0: mov eax, [eax]
00893BD2: mov ecx, var_00000130
00893BD8: mov ecx, [ecx]
00893BDA: mov ecx, [ecx]
00893BDC: push eax
00893BDD: call [ecx+00000550h]
00893BE3: push eax
00893BE4: lea eax, var_30
00893BE7: push eax
00893BE8: call 00410A84h ; Set (object)
00893BED: push eax
00893BEE: lea eax, var_48
00893BF1: push eax
00893BF2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00893BF7: add esp, 00000010h
00893BFA: push eax
00893BFB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00893C00: push eax
00893C01: lea eax, var_34
00893C04: push eax
00893C05: call 00410A84h ; Set (object)
00893C0A: push eax
00893C0B: lea eax, var_58
00893C0E: push eax
00893C0F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00893C14: add esp, 00000020h
00893C17: push eax
00893C18: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00893C1D: push eax
00893C1E: lea eax, var_38
00893C21: push eax
00893C22: call 00410A84h ; Set (object)
00893C27: push eax
00893C28: lea eax, var_68
00893C2B: push eax
00893C2C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00893C31: add esp, 00000010h
00893C34: push eax
00893C35: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00893C3A: sub ax, FFFFh
00893C3E: neg ax
00893C41: sbb eax, eax
00893C43: inc eax
00893C44: neg eax
00893C46: mov var_000000C8, ax
00893C4D: lea eax, var_38
00893C50: push eax
00893C51: lea eax, var_34
00893C54: push eax
00893C55: lea eax, var_30
00893C58: push eax
00893C59: push 00000003h
00893C5B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00893C60: add esp, 00000010h
00893C63: lea eax, var_68
00893C66: push eax
00893C67: lea eax, var_58
00893C6A: push eax
00893C6B: lea eax, var_48
00893C6E: push eax
00893C6F: push 00000003h
00893C71: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00893C76: add esp, 00000010h
00893C79: movsx eax, word ptr var_000000C8
00893C80: test eax, eax
00893C82: jz 00893E30h
00893C88: lea eax, var_24
00893C8B: mov var_00000084, eax
00893C91: mov var_0000008C, 0000400Ch
00893C9B: cmp [008F2010h], 00000000h
00893CA2: jnz 893CBFh
00893CA4: push 008F2010h
00893CA9: push 00433984h
00893CAE: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00893CB3: mov var_00000134, 008F2010h
00893CBD: jmp 893CC9h
00893CBF: mov var_00000134, 008F2010h
00893CC9: push 00000000h
00893CCB: push 00000014h
00893CCD: push 00440E58h
00893CD2: push 00000010h
00893CD4: pop eax
00893CD5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00893CDA: lea esi, var_0000008C
00893CE0: mov edi, esp
00893CE2: movsd 
00893CE3: movsd 
00893CE4: movsd 
00893CE5: movsd 
00893CE6: push 00000001h
00893CE8: push 00000000h
00893CEA: push 00440E48h
00893CEF: push 00000000h
00893CF1: push 00000018h
00893CF3: mov eax, var_00000134
00893CF9: mov eax, [eax]
00893CFB: mov ecx, var_00000134
00893D01: mov ecx, [ecx]
00893D03: mov ecx, [ecx]
00893D05: push eax
00893D06: call [ecx+00000550h]
00893D0C: push eax
00893D0D: lea eax, var_30
00893D10: push eax
00893D11: call 00410A84h ; Set (object)
00893D16: push eax
00893D17: lea eax, var_48
00893D1A: push eax
00893D1B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00893D20: add esp, 00000010h
00893D23: push eax
00893D24: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00893D29: push eax
00893D2A: lea eax, var_34
00893D2D: push eax
00893D2E: call 00410A84h ; Set (object)
00893D33: push eax
00893D34: lea eax, var_58
00893D37: push eax
00893D38: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00893D3D: add esp, 00000020h
00893D40: push eax
00893D41: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00893D46: push eax
00893D47: lea eax, var_38
00893D4A: push eax
00893D4B: call 00410A84h ; Set (object)
00893D50: push eax
00893D51: lea eax, var_68
00893D54: push eax
00893D55: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00893D5A: add esp, 00000010h
00893D5D: push eax
00893D5E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00893D63: mov edx, eax
00893D65: lea ecx, var_28
00893D68: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00893D6D: push eax
00893D6E: call 004109DCh ; Val(arg_1)
00893D73: fstp real8 ptr var_000000C4
00893D79: push 00000000h
00893D7B: push 00000000h
00893D7D: push 00000001h
00893D7F: push 00000000h
00893D81: lea eax, var_7C
00893D84: push eax
00893D85: push 00000010h
00893D87: push 00000880h
00893D8C: call 00410946h ; ReDim
00893D91: add esp, 0000001Ch
00893D94: mov var_00000094, 00442BFCh
00893D9E: mov var_0000009C, 00000008h
00893DA8: lea esi, var_0000009C
00893DAE: push 00000000h
00893DB0: push var_7C
00893DB3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00893DB8: mov ecx, eax
00893DBA: mov edx, esi
00893DBC: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
00893DC1: mov edx, 0043D8D4h ; x101
00893DC6: lea ecx, var_2C
00893DC9: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00893DCE: lea eax, var_7C
00893DD1: push eax
00893DD2: lea eax, var_2C
00893DD5: push eax
00893DD6: fld real8 ptr var_000000C4
00893DDC: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00893DE1: push eax
00893DE2: call 007A6910h
00893DE7: lea eax, var_7C
00893DEA: push eax
00893DEB: push 00000000h
00893DED: call 00410934h ; Erase
00893DF2: lea eax, var_2C
00893DF5: push eax
00893DF6: lea eax, var_28
00893DF9: push eax
00893DFA: push 00000002h
00893DFC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00893E01: add esp, 0000000Ch
00893E04: lea eax, var_38
00893E07: push eax
00893E08: lea eax, var_34
00893E0B: push eax
00893E0C: lea eax, var_30
00893E0F: push eax
00893E10: push 00000003h
00893E12: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00893E17: add esp, 00000010h
00893E1A: lea eax, var_68
00893E1D: push eax
00893E1E: lea eax, var_58
00893E21: push eax
00893E22: lea eax, var_48
00893E25: push eax
00893E26: push 00000003h
00893E28: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00893E2D: add esp, 00000010h
00893E30: lea eax, var_00000108
00893E36: push eax
00893E37: lea eax, var_000000F8
00893E3D: push eax
00893E3E: lea eax, var_24
00893E41: push eax
00893E42: call 00410A36h ; Next
00893E47: mov var_00000118, eax
00893E4D: cmp var_00000118, 00000000h
00893E54: jnz 00893B5Fh
00893E5A: jmp 00893F42h
00893E5F: lea eax, var_28
00893E62: push eax
00893E63: mov eax, [ebp+08h]
00893E66: mov eax, [eax]
00893E68: push [ebp+08h]
00893E6B: call [eax+000001C0h]
00893E71: fclex 
00893E73: mov var_000000C8, eax
00893E79: cmp var_000000C8, 00000000h
00893E80: jnl 893EA2h
00893E82: push 000001C0h
00893E87: push 004485C8h
00893E8C: push [ebp+08h]
00893E8F: push var_000000C8
00893E95: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00893E9A: mov var_00000138, eax
00893EA0: jmp 893EA9h
00893EA2: and var_00000138, 00000000h
00893EA9: push var_28
00893EAC: call 004109DCh ; Val(arg_1)
00893EB1: fstp real8 ptr var_000000C4
00893EB7: push 00000000h
00893EB9: push 00000000h
00893EBB: push 00000001h
00893EBD: push 00000000h
00893EBF: lea eax, var_7C
00893EC2: push eax
00893EC3: push 00000010h
00893EC5: push 00000880h
00893ECA: call 00410946h ; ReDim
00893ECF: add esp, 0000001Ch
00893ED2: mov var_00000084, 00442BFCh
00893EDC: mov var_0000008C, 00000008h
00893EE6: lea esi, var_0000008C
00893EEC: push 00000000h
00893EEE: push var_7C
00893EF1: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00893EF6: mov ecx, eax
00893EF8: mov edx, esi
00893EFA: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
00893EFF: mov edx, 0043D8D4h ; x101
00893F04: lea ecx, var_2C
00893F07: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00893F0C: lea eax, var_7C
00893F0F: push eax
00893F10: lea eax, var_2C
00893F13: push eax
00893F14: fld real8 ptr var_000000C4
00893F1A: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00893F1F: push eax
00893F20: call 007A6910h
00893F25: lea eax, var_7C
00893F28: push eax
00893F29: push 00000000h
00893F2B: call 00410934h ; Erase
00893F30: lea eax, var_2C
00893F33: push eax
00893F34: lea eax, var_28
00893F37: push eax
00893F38: push 00000002h
00893F3A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00893F3F: add esp, 0000000Ch
00893F42: mov var_04, 00000000h
00893F49: wait 
00893F4A: push 00893FCEh
00893F4F: jmp 893F9Fh
00893F51: lea eax, var_2C
00893F54: push eax
00893F55: lea eax, var_28
00893F58: push eax
00893F59: push 00000002h
00893F5B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00893F60: add esp, 0000000Ch
00893F63: lea eax, var_38
00893F66: push eax
00893F67: lea eax, var_34
00893F6A: push eax
00893F6B: lea eax, var_30
00893F6E: push eax
00893F6F: push 00000003h
00893F71: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00893F76: add esp, 00000010h
00893F79: lea eax, var_78
00893F7C: push eax
00893F7D: lea eax, var_68
00893F80: push eax
00893F81: lea eax, var_58
00893F84: push eax
00893F85: lea eax, var_48
00893F88: push eax
00893F89: push 00000004h
00893F8B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00893F90: add esp, 00000014h
00893F93: lea eax, var_7C
00893F96: push eax
00893F97: push 00000000h
00893F99: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
00893F9E: ret 
End Sub

Private sub cmdUnblockContact__893FED
00893FED: push ebp
00893FEE: mov ebp, esp
00893FF0: sub esp, 0000000Ch
00893FF3: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00893FF8: mov eax, fs:[00h]
00893FFE: push eax
00893FFF: mov fs:[00000000h], esp
00894006: mov eax, 00000130h
0089400B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00894010: push ebx
00894011: push esi
00894012: push edi
00894013: mov var_0C, esp
00894016: mov var_08, 0040DEE8h
0089401D: mov eax, [ebp+08h]
00894020: and eax, 00000001h
00894023: mov var_04, eax
00894026: mov eax, [ebp+08h]
00894029: and al, FEh
0089402B: mov [ebp+08h], eax
0089402E: mov eax, [ebp+08h]
00894031: mov eax, [eax]
00894033: push [ebp+08h]
00894036: call [eax+04h]
00894039: mov eax, [ebp+08h]
0089403C: mov eax, [eax]
0089403E: push [ebp+08h]
00894041: call [eax+00000304h]
00894047: push eax
00894048: lea eax, var_30
0089404B: push eax
0089404C: call 00410A84h ; Set (object)
00894051: mov var_000000C8, eax
00894057: lea eax, var_28
0089405A: push eax
0089405B: mov eax, var_000000C8
00894061: mov eax, [eax]
00894063: push var_000000C8
00894069: call [eax+000000A0h]
0089406F: fclex 
00894071: mov var_000000CC, eax
00894077: cmp var_000000CC, 00000000h
0089407E: jnl 8940A3h
00894080: push 000000A0h
00894085: push 00440E08h
0089408A: push var_000000C8
00894090: push var_000000CC
00894096: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0089409B: mov var_00000124, eax
008940A1: jmp 8940AAh
008940A3: and var_00000124, 00000000h
008940AA: push var_28
008940AD: call 0041098Eh ; Len(arg_1)
008940B2: xor ecx, ecx
008940B4: cmp eax, 00000003h
008940B7: setle cl
008940BA: neg ecx
008940BC: mov var_000000D0, cx
008940C3: lea ecx, var_28
008940C6: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008940CB: lea ecx, var_30
008940CE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008940D3: movsx eax, word ptr var_000000D0
008940DA: test eax, eax
008940DC: jz 00894164h
008940E2: mov var_70, 80020004h
008940E9: mov var_78, 0000000Ah
008940F0: mov var_60, 80020004h
008940F7: mov var_68, 0000000Ah
008940FE: mov var_50, 80020004h
00894105: mov var_58, 0000000Ah
0089410C: mov var_00000084, 00459330h ; Invalid email
00894116: mov var_0000008C, 00000008h
00894120: lea edx, var_0000008C
00894126: lea ecx, var_48
00894129: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0089412E: lea eax, var_78
00894131: push eax
00894132: lea eax, var_68
00894135: push eax
00894136: lea eax, var_58
00894139: push eax
0089413A: push 00000010h
0089413C: lea eax, var_48
0089413F: push eax
00894140: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00894145: lea eax, var_78
00894148: push eax
00894149: lea eax, var_68
0089414C: push eax
0089414D: lea eax, var_58
00894150: push eax
00894151: lea eax, var_48
00894154: push eax
00894155: push 00000004h
00894157: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089415C: add esp, 00000014h
0089415F: jmp 00894C3Dh
00894164: cmp word ptr [008F2430h], FFFFh
0089416C: jnz 008946DAh
00894172: push 00000000h
00894174: push 00000000h
00894176: mov eax, [ebp+08h]
00894179: mov eax, [eax]
0089417B: push [ebp+08h]
0089417E: call [eax+0000033Ch]
00894184: push eax
00894185: lea eax, var_30
00894188: push eax
00894189: call 00410A84h ; Set (object)
0089418E: push eax
0089418F: lea eax, var_48
00894192: push eax
00894193: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00894198: add esp, 00000010h
0089419B: push eax
0089419C: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008941A1: dec eax
008941A2: neg eax
008941A4: sbb eax, eax
008941A6: inc eax
008941A7: neg eax
008941A9: mov var_000000C8, ax
008941B0: lea ecx, var_30
008941B3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008941B8: lea ecx, var_48
008941BB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008941C0: movsx eax, word ptr var_000000C8
008941C7: test eax, eax
008941C9: jz 008945F1h
008941CF: mov var_00000084, 00000001h
008941D9: mov var_0000008C, 00000002h
008941E3: cmp [008F2010h], 00000000h
008941EA: jnz 894207h
008941EC: push 008F2010h
008941F1: push 00433984h
008941F6: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008941FB: mov var_00000128, 008F2010h
00894205: jmp 894211h
00894207: mov var_00000128, 008F2010h
00894211: push 00000000h
00894213: push 00000001h
00894215: push 00440E48h
0089421A: push 00000000h
0089421C: push 00000018h
0089421E: mov eax, var_00000128
00894224: mov eax, [eax]
00894226: mov ecx, var_00000128
0089422C: mov ecx, [ecx]
0089422E: mov ecx, [ecx]
00894230: push eax
00894231: call [ecx+0000054Ch]
00894237: push eax
00894238: lea eax, var_30
0089423B: push eax
0089423C: call 00410A84h ; Set (object)
00894241: push eax
00894242: lea eax, var_48
00894245: push eax
00894246: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089424B: add esp, 00000010h
0089424E: push eax
0089424F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00894254: push eax
00894255: lea eax, var_34
00894258: push eax
00894259: call 00410A84h ; Set (object)
0089425E: push eax
0089425F: lea eax, var_58
00894262: push eax
00894263: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00894268: add esp, 00000010h
0089426B: push eax
0089426C: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00894271: mov var_00000094, eax
00894277: mov var_0000009C, 00000003h
00894281: mov var_000000A4, 00000001h
0089428B: mov var_000000AC, 00000002h
00894295: lea eax, var_0000008C
0089429B: push eax
0089429C: lea eax, var_0000009C
008942A2: push eax
008942A3: lea eax, var_000000AC
008942A9: push eax
008942AA: lea eax, var_000000F0
008942B0: push eax
008942B1: lea eax, var_000000E0
008942B7: push eax
008942B8: lea eax, var_24
008942BB: push eax
008942BC: call 00410A3Ch ; For
008942C1: mov var_0000011C, eax
008942C7: lea eax, var_34
008942CA: push eax
008942CB: lea eax, var_30
008942CE: push eax
008942CF: push 00000002h
008942D1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008942D6: add esp, 0000000Ch
008942D9: lea eax, var_58
008942DC: push eax
008942DD: lea eax, var_48
008942E0: push eax
008942E1: push 00000002h
008942E3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008942E8: add esp, 0000000Ch
008942EB: jmp 008945DFh
008942F0: lea eax, var_24
008942F3: mov var_00000084, eax
008942F9: mov var_0000008C, 0000400Ch
00894303: cmp [008F2010h], 00000000h
0089430A: jnz 894327h
0089430C: push 008F2010h
00894311: push 00433984h
00894316: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0089431B: mov var_0000012C, 008F2010h
00894325: jmp 894331h
00894327: mov var_0000012C, 008F2010h
00894331: push 00000000h
00894333: push 00000004h
00894335: push 00440E58h
0089433A: push 00000010h
0089433C: pop eax
0089433D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00894342: lea esi, var_0000008C
00894348: mov edi, esp
0089434A: movsd 
0089434B: movsd 
0089434C: movsd 
0089434D: movsd 
0089434E: push 00000001h
00894350: push 00000000h
00894352: push 00440E48h
00894357: push 00000000h
00894359: push 00000018h
0089435B: mov eax, var_0000012C
00894361: mov eax, [eax]
00894363: mov ecx, var_0000012C
00894369: mov ecx, [ecx]
0089436B: mov ecx, [ecx]
0089436D: push eax
0089436E: call [ecx+0000054Ch]
00894374: push eax
00894375: lea eax, var_30
00894378: push eax
00894379: call 00410A84h ; Set (object)
0089437E: push eax
0089437F: lea eax, var_48
00894382: push eax
00894383: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00894388: add esp, 00000010h
0089438B: push eax
0089438C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00894391: push eax
00894392: lea eax, var_34
00894395: push eax
00894396: call 00410A84h ; Set (object)
0089439B: push eax
0089439C: lea eax, var_58
0089439F: push eax
008943A0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008943A5: add esp, 00000020h
008943A8: push eax
008943A9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008943AE: push eax
008943AF: lea eax, var_38
008943B2: push eax
008943B3: call 00410A84h ; Set (object)
008943B8: push eax
008943B9: lea eax, var_68
008943BC: push eax
008943BD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008943C2: add esp, 00000010h
008943C5: push eax
008943C6: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008943CB: sub ax, FFFFh
008943CF: neg ax
008943D2: sbb eax, eax
008943D4: inc eax
008943D5: neg eax
008943D7: mov var_000000C8, ax
008943DE: lea eax, var_38
008943E1: push eax
008943E2: lea eax, var_34
008943E5: push eax
008943E6: lea eax, var_30
008943E9: push eax
008943EA: push 00000003h
008943EC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008943F1: add esp, 00000010h
008943F4: lea eax, var_68
008943F7: push eax
008943F8: lea eax, var_58
008943FB: push eax
008943FC: lea eax, var_48
008943FF: push eax
00894400: push 00000003h
00894402: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00894407: add esp, 00000010h
0089440A: movsx eax, word ptr var_000000C8
00894411: test eax, eax
00894413: jz 008945C2h
00894419: lea eax, var_24
0089441C: mov var_00000084, eax
00894422: mov var_0000008C, 0000400Ch
0089442C: cmp [008F2010h], 00000000h
00894433: jnz 894450h
00894435: push 008F2010h
0089443A: push 00433984h
0089443F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00894444: mov var_00000130, 008F2010h
0089444E: jmp 89445Ah
00894450: mov var_00000130, 008F2010h
0089445A: push 00000000h
0089445C: push 00000014h
0089445E: push 00440E58h
00894463: push 00000010h
00894465: pop eax
00894466: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089446B: lea esi, var_0000008C
00894471: mov edi, esp
00894473: movsd 
00894474: movsd 
00894475: movsd 
00894476: movsd 
00894477: push 00000001h
00894479: push 00000000h
0089447B: push 00440E48h
00894480: push 00000000h
00894482: push 00000018h
00894484: mov eax, var_00000130
0089448A: mov eax, [eax]
0089448C: mov ecx, var_00000130
00894492: mov ecx, [ecx]
00894494: mov ecx, [ecx]
00894496: push eax
00894497: call [ecx+0000054Ch]
0089449D: push eax
0089449E: lea eax, var_30
008944A1: push eax
008944A2: call 00410A84h ; Set (object)
008944A7: push eax
008944A8: lea eax, var_48
008944AB: push eax
008944AC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008944B1: add esp, 00000010h
008944B4: push eax
008944B5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008944BA: push eax
008944BB: lea eax, var_34
008944BE: push eax
008944BF: call 00410A84h ; Set (object)
008944C4: push eax
008944C5: lea eax, var_58
008944C8: push eax
008944C9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008944CE: add esp, 00000020h
008944D1: push eax
008944D2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008944D7: push eax
008944D8: lea eax, var_38
008944DB: push eax
008944DC: call 00410A84h ; Set (object)
008944E1: push eax
008944E2: lea eax, var_68
008944E5: push eax
008944E6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008944EB: add esp, 00000010h
008944EE: push eax
008944EF: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008944F4: mov edx, eax
008944F6: lea ecx, var_28
008944F9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008944FE: push eax
008944FF: call 004109DCh ; Val(arg_1)
00894504: fstp real8 ptr var_000000C4
0089450A: push 00000000h
0089450C: push 00000000h
0089450E: push 00000001h
00894510: push 00000000h
00894512: lea eax, var_7C
00894515: push eax
00894516: push 00000010h
00894518: push 00000880h
0089451D: call 00410946h ; ReDim
00894522: add esp, 0000001Ch
00894525: mov eax, [ebp+08h]
00894528: mov eax, [eax]
0089452A: push [ebp+08h]
0089452D: call [eax+00000304h]
00894533: mov var_70, eax
00894536: mov var_78, 00000009h
0089453D: lea esi, var_78
00894540: push 00000000h
00894542: push var_7C
00894545: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0089454A: mov ecx, eax
0089454C: mov edx, esi
0089454E: call 00410940h ; msvbvm60.dll.__vbaVarZero
00894553: mov edx, 0043D8C4h ; x100
00894558: lea ecx, var_2C
0089455B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00894560: lea eax, var_7C
00894563: push eax
00894564: lea eax, var_2C
00894567: push eax
00894568: fld real8 ptr var_000000C4
0089456E: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00894573: push eax
00894574: call 007A6910h
00894579: lea eax, var_7C
0089457C: push eax
0089457D: push 00000000h
0089457F: call 00410934h ; Erase
00894584: lea eax, var_2C
00894587: push eax
00894588: lea eax, var_28
0089458B: push eax
0089458C: push 00000002h
0089458E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00894593: add esp, 0000000Ch
00894596: lea eax, var_38
00894599: push eax
0089459A: lea eax, var_34
0089459D: push eax
0089459E: lea eax, var_30
008945A1: push eax
008945A2: push 00000003h
008945A4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008945A9: add esp, 00000010h
008945AC: lea eax, var_68
008945AF: push eax
008945B0: lea eax, var_58
008945B3: push eax
008945B4: lea eax, var_48
008945B7: push eax
008945B8: push 00000003h
008945BA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008945BF: add esp, 00000010h
008945C2: lea eax, var_000000F0
008945C8: push eax
008945C9: lea eax, var_000000E0
008945CF: push eax
008945D0: lea eax, var_24
008945D3: push eax
008945D4: call 00410A36h ; Next
008945D9: mov var_0000011C, eax
008945DF: cmp var_0000011C, 00000000h
008945E6: jnz 008942F0h
008945EC: jmp 008946D5h
008945F1: lea eax, var_28
008945F4: push eax
008945F5: mov eax, [ebp+08h]
008945F8: mov eax, [eax]
008945FA: push [ebp+08h]
008945FD: call [eax+000001C0h]
00894603: fclex 
00894605: mov var_000000C8, eax
0089460B: cmp var_000000C8, 00000000h
00894612: jnl 894634h
00894614: push 000001C0h
00894619: push 004485C8h
0089461E: push [ebp+08h]
00894621: push var_000000C8
00894627: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0089462C: mov var_00000134, eax
00894632: jmp 89463Bh
00894634: and var_00000134, 00000000h
0089463B: push var_28
0089463E: call 004109DCh ; Val(arg_1)
00894643: fstp real8 ptr var_000000C4
00894649: push 00000000h
0089464B: push 00000000h
0089464D: push 00000001h
0089464F: push 00000000h
00894651: lea eax, var_7C
00894654: push eax
00894655: push 00000010h
00894657: push 00000880h
0089465C: call 00410946h ; ReDim
00894661: add esp, 0000001Ch
00894664: mov eax, [ebp+08h]
00894667: mov eax, [eax]
00894669: push [ebp+08h]
0089466C: call [eax+00000304h]
00894672: mov var_40, eax
00894675: mov var_48, 00000009h
0089467C: lea esi, var_48
0089467F: push 00000000h
00894681: push var_7C
00894684: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00894689: mov ecx, eax
0089468B: mov edx, esi
0089468D: call 00410940h ; msvbvm60.dll.__vbaVarZero
00894692: mov edx, 0043D8C4h ; x100
00894697: lea ecx, var_2C
0089469A: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0089469F: lea eax, var_7C
008946A2: push eax
008946A3: lea eax, var_2C
008946A6: push eax
008946A7: fld real8 ptr var_000000C4
008946AD: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008946B2: push eax
008946B3: call 007A6910h
008946B8: lea eax, var_7C
008946BB: push eax
008946BC: push 00000000h
008946BE: call 00410934h ; Erase
008946C3: lea eax, var_2C
008946C6: push eax
008946C7: lea eax, var_28
008946CA: push eax
008946CB: push 00000002h
008946CD: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008946D2: add esp, 0000000Ch
008946D5: jmp 00894C3Dh
008946DA: push 00000000h
008946DC: push 00000000h
008946DE: mov eax, [ebp+08h]
008946E1: mov eax, [eax]
008946E3: push [ebp+08h]
008946E6: call [eax+0000033Ch]
008946EC: push eax
008946ED: lea eax, var_30
008946F0: push eax
008946F1: call 00410A84h ; Set (object)
008946F6: push eax
008946F7: lea eax, var_48
008946FA: push eax
008946FB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00894700: add esp, 00000010h
00894703: push eax
00894704: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00894709: dec eax
0089470A: neg eax
0089470C: sbb eax, eax
0089470E: inc eax
0089470F: neg eax
00894711: mov var_000000C8, ax
00894718: lea ecx, var_30
0089471B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00894720: lea ecx, var_48
00894723: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00894728: movsx eax, word ptr var_000000C8
0089472F: test eax, eax
00894731: jz 00894B59h
00894737: mov var_00000084, 00000001h
00894741: mov var_0000008C, 00000002h
0089474B: cmp [008F2010h], 00000000h
00894752: jnz 89476Fh
00894754: push 008F2010h
00894759: push 00433984h
0089475E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00894763: mov var_00000138, 008F2010h
0089476D: jmp 894779h
0089476F: mov var_00000138, 008F2010h
00894779: push 00000000h
0089477B: push 00000001h
0089477D: push 00440E48h
00894782: push 00000000h
00894784: push 00000018h
00894786: mov eax, var_00000138
0089478C: mov eax, [eax]
0089478E: mov ecx, var_00000138
00894794: mov ecx, [ecx]
00894796: mov ecx, [ecx]
00894798: push eax
00894799: call [ecx+00000550h]
0089479F: push eax
008947A0: lea eax, var_30
008947A3: push eax
008947A4: call 00410A84h ; Set (object)
008947A9: push eax
008947AA: lea eax, var_48
008947AD: push eax
008947AE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008947B3: add esp, 00000010h
008947B6: push eax
008947B7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008947BC: push eax
008947BD: lea eax, var_34
008947C0: push eax
008947C1: call 00410A84h ; Set (object)
008947C6: push eax
008947C7: lea eax, var_58
008947CA: push eax
008947CB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008947D0: add esp, 00000010h
008947D3: push eax
008947D4: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008947D9: mov var_00000094, eax
008947DF: mov var_0000009C, 00000003h
008947E9: mov var_000000A4, 00000001h
008947F3: mov var_000000AC, 00000002h
008947FD: lea eax, var_0000008C
00894803: push eax
00894804: lea eax, var_0000009C
0089480A: push eax
0089480B: lea eax, var_000000AC
00894811: push eax
00894812: lea eax, var_00000110
00894818: push eax
00894819: lea eax, var_00000100
0089481F: push eax
00894820: lea eax, var_24
00894823: push eax
00894824: call 00410A3Ch ; For
00894829: mov var_00000120, eax
0089482F: lea eax, var_34
00894832: push eax
00894833: lea eax, var_30
00894836: push eax
00894837: push 00000002h
00894839: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089483E: add esp, 0000000Ch
00894841: lea eax, var_58
00894844: push eax
00894845: lea eax, var_48
00894848: push eax
00894849: push 00000002h
0089484B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00894850: add esp, 0000000Ch
00894853: jmp 00894B47h
00894858: lea eax, var_24
0089485B: mov var_00000084, eax
00894861: mov var_0000008C, 0000400Ch
0089486B: cmp [008F2010h], 00000000h
00894872: jnz 89488Fh
00894874: push 008F2010h
00894879: push 00433984h
0089487E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00894883: mov var_0000013C, 008F2010h
0089488D: jmp 894899h
0089488F: mov var_0000013C, 008F2010h
00894899: push 00000000h
0089489B: push 00000004h
0089489D: push 00440E58h
008948A2: push 00000010h
008948A4: pop eax
008948A5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008948AA: lea esi, var_0000008C
008948B0: mov edi, esp
008948B2: movsd 
008948B3: movsd 
008948B4: movsd 
008948B5: movsd 
008948B6: push 00000001h
008948B8: push 00000000h
008948BA: push 00440E48h
008948BF: push 00000000h
008948C1: push 00000018h
008948C3: mov eax, var_0000013C
008948C9: mov eax, [eax]
008948CB: mov ecx, var_0000013C
008948D1: mov ecx, [ecx]
008948D3: mov ecx, [ecx]
008948D5: push eax
008948D6: call [ecx+00000550h]
008948DC: push eax
008948DD: lea eax, var_30
008948E0: push eax
008948E1: call 00410A84h ; Set (object)
008948E6: push eax
008948E7: lea eax, var_48
008948EA: push eax
008948EB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008948F0: add esp, 00000010h
008948F3: push eax
008948F4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008948F9: push eax
008948FA: lea eax, var_34
008948FD: push eax
008948FE: call 00410A84h ; Set (object)
00894903: push eax
00894904: lea eax, var_58
00894907: push eax
00894908: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089490D: add esp, 00000020h
00894910: push eax
00894911: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00894916: push eax
00894917: lea eax, var_38
0089491A: push eax
0089491B: call 00410A84h ; Set (object)
00894920: push eax
00894921: lea eax, var_68
00894924: push eax
00894925: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0089492A: add esp, 00000010h
0089492D: push eax
0089492E: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
00894933: sub ax, FFFFh
00894937: neg ax
0089493A: sbb eax, eax
0089493C: inc eax
0089493D: neg eax
0089493F: mov var_000000C8, ax
00894946: lea eax, var_38
00894949: push eax
0089494A: lea eax, var_34
0089494D: push eax
0089494E: lea eax, var_30
00894951: push eax
00894952: push 00000003h
00894954: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00894959: add esp, 00000010h
0089495C: lea eax, var_68
0089495F: push eax
00894960: lea eax, var_58
00894963: push eax
00894964: lea eax, var_48
00894967: push eax
00894968: push 00000003h
0089496A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089496F: add esp, 00000010h
00894972: movsx eax, word ptr var_000000C8
00894979: test eax, eax
0089497B: jz 00894B2Ah
00894981: lea eax, var_24
00894984: mov var_00000084, eax
0089498A: mov var_0000008C, 0000400Ch
00894994: cmp [008F2010h], 00000000h
0089499B: jnz 8949B8h
0089499D: push 008F2010h
008949A2: push 00433984h
008949A7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008949AC: mov var_00000140, 008F2010h
008949B6: jmp 8949C2h
008949B8: mov var_00000140, 008F2010h
008949C2: push 00000000h
008949C4: push 00000014h
008949C6: push 00440E58h
008949CB: push 00000010h
008949CD: pop eax
008949CE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008949D3: lea esi, var_0000008C
008949D9: mov edi, esp
008949DB: movsd 
008949DC: movsd 
008949DD: movsd 
008949DE: movsd 
008949DF: push 00000001h
008949E1: push 00000000h
008949E3: push 00440E48h
008949E8: push 00000000h
008949EA: push 00000018h
008949EC: mov eax, var_00000140
008949F2: mov eax, [eax]
008949F4: mov ecx, var_00000140
008949FA: mov ecx, [ecx]
008949FC: mov ecx, [ecx]
008949FE: push eax
008949FF: call [ecx+00000550h]
00894A05: push eax
00894A06: lea eax, var_30
00894A09: push eax
00894A0A: call 00410A84h ; Set (object)
00894A0F: push eax
00894A10: lea eax, var_48
00894A13: push eax
00894A14: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00894A19: add esp, 00000010h
00894A1C: push eax
00894A1D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00894A22: push eax
00894A23: lea eax, var_34
00894A26: push eax
00894A27: call 00410A84h ; Set (object)
00894A2C: push eax
00894A2D: lea eax, var_58
00894A30: push eax
00894A31: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00894A36: add esp, 00000020h
00894A39: push eax
00894A3A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00894A3F: push eax
00894A40: lea eax, var_38
00894A43: push eax
00894A44: call 00410A84h ; Set (object)
00894A49: push eax
00894A4A: lea eax, var_68
00894A4D: push eax
00894A4E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00894A53: add esp, 00000010h
00894A56: push eax
00894A57: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00894A5C: mov edx, eax
00894A5E: lea ecx, var_28
00894A61: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00894A66: push eax
00894A67: call 004109DCh ; Val(arg_1)
00894A6C: fstp real8 ptr var_000000C4
00894A72: push 00000000h
00894A74: push 00000000h
00894A76: push 00000001h
00894A78: push 00000000h
00894A7A: lea eax, var_7C
00894A7D: push eax
00894A7E: push 00000010h
00894A80: push 00000880h
00894A85: call 00410946h ; ReDim
00894A8A: add esp, 0000001Ch
00894A8D: mov eax, [ebp+08h]
00894A90: mov eax, [eax]
00894A92: push [ebp+08h]
00894A95: call [eax+00000304h]
00894A9B: mov var_70, eax
00894A9E: mov var_78, 00000009h
00894AA5: lea esi, var_78
00894AA8: push 00000000h
00894AAA: push var_7C
00894AAD: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00894AB2: mov ecx, eax
00894AB4: mov edx, esi
00894AB6: call 00410940h ; msvbvm60.dll.__vbaVarZero
00894ABB: mov edx, 0043D8C4h ; x100
00894AC0: lea ecx, var_2C
00894AC3: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00894AC8: lea eax, var_7C
00894ACB: push eax
00894ACC: lea eax, var_2C
00894ACF: push eax
00894AD0: fld real8 ptr var_000000C4
00894AD6: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00894ADB: push eax
00894ADC: call 007A6910h
00894AE1: lea eax, var_7C
00894AE4: push eax
00894AE5: push 00000000h
00894AE7: call 00410934h ; Erase
00894AEC: lea eax, var_2C
00894AEF: push eax
00894AF0: lea eax, var_28
00894AF3: push eax
00894AF4: push 00000002h
00894AF6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00894AFB: add esp, 0000000Ch
00894AFE: lea eax, var_38
00894B01: push eax
00894B02: lea eax, var_34
00894B05: push eax
00894B06: lea eax, var_30
00894B09: push eax
00894B0A: push 00000003h
00894B0C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00894B11: add esp, 00000010h
00894B14: lea eax, var_68
00894B17: push eax
00894B18: lea eax, var_58
00894B1B: push eax
00894B1C: lea eax, var_48
00894B1F: push eax
00894B20: push 00000003h
00894B22: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00894B27: add esp, 00000010h
00894B2A: lea eax, var_00000110
00894B30: push eax
00894B31: lea eax, var_00000100
00894B37: push eax
00894B38: lea eax, var_24
00894B3B: push eax
00894B3C: call 00410A36h ; Next
00894B41: mov var_00000120, eax
00894B47: cmp var_00000120, 00000000h
00894B4E: jnz 00894858h
00894B54: jmp 00894C3Dh
00894B59: lea eax, var_28
00894B5C: push eax
00894B5D: mov eax, [ebp+08h]
00894B60: mov eax, [eax]
00894B62: push [ebp+08h]
00894B65: call [eax+000001C0h]
00894B6B: fclex 
00894B6D: mov var_000000C8, eax
00894B73: cmp var_000000C8, 00000000h
00894B7A: jnl 894B9Ch
00894B7C: push 000001C0h
00894B81: push 004485C8h
00894B86: push [ebp+08h]
00894B89: push var_000000C8
00894B8F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00894B94: mov var_00000144, eax
00894B9A: jmp 894BA3h
00894B9C: and var_00000144, 00000000h
00894BA3: push var_28
00894BA6: call 004109DCh ; Val(arg_1)
00894BAB: fstp real8 ptr var_000000C4
00894BB1: push 00000000h
00894BB3: push 00000000h
00894BB5: push 00000001h
00894BB7: push 00000000h
00894BB9: lea eax, var_7C
00894BBC: push eax
00894BBD: push 00000010h
00894BBF: push 00000880h
00894BC4: call 00410946h ; ReDim
00894BC9: add esp, 0000001Ch
00894BCC: mov eax, [ebp+08h]
00894BCF: mov eax, [eax]
00894BD1: push [ebp+08h]
00894BD4: call [eax+00000304h]
00894BDA: mov var_40, eax
00894BDD: mov var_48, 00000009h
00894BE4: lea esi, var_48
00894BE7: push 00000000h
00894BE9: push var_7C
00894BEC: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00894BF1: mov ecx, eax
00894BF3: mov edx, esi
00894BF5: call 00410940h ; msvbvm60.dll.__vbaVarZero
00894BFA: mov edx, 0043D8C4h ; x100
00894BFF: lea ecx, var_2C
00894C02: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00894C07: lea eax, var_7C
00894C0A: push eax
00894C0B: lea eax, var_2C
00894C0E: push eax
00894C0F: fld real8 ptr var_000000C4
00894C15: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00894C1A: push eax
00894C1B: call 007A6910h
00894C20: lea eax, var_7C
00894C23: push eax
00894C24: push 00000000h
00894C26: call 00410934h ; Erase
00894C2B: lea eax, var_2C
00894C2E: push eax
00894C2F: lea eax, var_28
00894C32: push eax
00894C33: push 00000002h
00894C35: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00894C3A: add esp, 0000000Ch
00894C3D: mov var_04, 00000000h
00894C44: wait 
00894C45: push 00894CC9h
00894C4A: jmp 894C9Ah
00894C4C: lea eax, var_2C
00894C4F: push eax
00894C50: lea eax, var_28
00894C53: push eax
00894C54: push 00000002h
00894C56: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00894C5B: add esp, 0000000Ch
00894C5E: lea eax, var_38
00894C61: push eax
00894C62: lea eax, var_34
00894C65: push eax
00894C66: lea eax, var_30
00894C69: push eax
00894C6A: push 00000003h
00894C6C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00894C71: add esp, 00000010h
00894C74: lea eax, var_78
00894C77: push eax
00894C78: lea eax, var_68
00894C7B: push eax
00894C7C: lea eax, var_58
00894C7F: push eax
00894C80: lea eax, var_48
00894C83: push eax
00894C84: push 00000004h
00894C86: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00894C8B: add esp, 00000014h
00894C8E: lea eax, var_7C
00894C91: push eax
00894C92: push 00000000h
00894C94: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
00894C99: ret 
End Sub

Private sub Form__894CE8
00894CE8: push ebp
00894CE9: mov ebp, esp
00894CEB: sub esp, 0000000Ch
00894CEE: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00894CF3: mov eax, fs:[00h]
00894CF9: push eax
00894CFA: mov fs:[00000000h], esp
00894D01: mov eax, 000000A0h
00894D06: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00894D0B: push ebx
00894D0C: push esi
00894D0D: push edi
00894D0E: mov var_0C, esp
00894D11: mov var_08, 0040DEF8h
00894D18: mov eax, [ebp+08h]
00894D1B: and eax, 00000001h
00894D1E: mov var_04, eax
00894D21: mov eax, [ebp+08h]
00894D24: and al, FEh
00894D26: mov [ebp+08h], eax
00894D29: mov eax, [ebp+08h]
00894D2C: mov eax, [eax]
00894D2E: push [ebp+08h]
00894D31: call [eax+04h]
00894D34: mov var_34, 80020004h
00894D3B: mov var_3C, 0000000Ah
00894D42: mov var_54, 80020004h
00894D49: mov var_5C, 0000000Ah
00894D50: mov var_74, 004597F8h ; Nickname
00894D57: mov var_7C, 00000008h
00894D5E: mov var_00000094, 00001388h
00894D68: mov var_0000009C, 00000002h
00894D72: push 00000010h
00894D74: pop eax
00894D75: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00894D7A: lea esi, var_3C
00894D7D: mov edi, esp
00894D7F: movsd 
00894D80: movsd 
00894D81: movsd 
00894D82: movsd 
00894D83: push 00000010h
00894D85: pop eax
00894D86: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00894D8B: lea esi, var_5C
00894D8E: mov edi, esp
00894D90: movsd 
00894D91: movsd 
00894D92: movsd 
00894D93: movsd 
00894D94: push 00000010h
00894D96: pop eax
00894D97: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00894D9C: lea esi, var_7C
00894D9F: mov edi, esp
00894DA1: movsd 
00894DA2: movsd 
00894DA3: movsd 
00894DA4: movsd 
00894DA5: push 00000010h
00894DA7: pop eax
00894DA8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00894DAD: lea esi, var_0000009C
00894DB3: mov edi, esp
00894DB5: movsd 
00894DB6: movsd 
00894DB7: movsd 
00894DB8: movsd 
00894DB9: push 00000004h
00894DBB: push 00000002h
00894DBD: push 00445534h
00894DC2: push 00000000h
00894DC4: push 00000019h
00894DC6: mov eax, [ebp+08h]
00894DC9: mov eax, [eax]
00894DCB: push [ebp+08h]
00894DCE: call [eax+00000328h]
00894DD4: push eax
00894DD5: lea eax, var_18
00894DD8: push eax
00894DD9: call 00410A84h ; Set (object)
00894DDE: push eax
00894DDF: lea eax, var_2C
00894DE2: push eax
00894DE3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00894DE8: add esp, 00000010h
00894DEB: push eax
00894DEC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00894DF1: push eax
00894DF2: lea eax, var_1C
00894DF5: push eax
00894DF6: call 00410A84h ; Set (object)
00894DFB: push eax
00894DFC: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00894E01: add esp, 0000004Ch
00894E04: lea eax, var_1C
00894E07: push eax
00894E08: lea eax, var_18
00894E0B: push eax
00894E0C: push 00000002h
00894E0E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00894E13: add esp, 0000000Ch
00894E16: lea ecx, var_2C
00894E19: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00894E1E: mov var_34, 80020004h
00894E25: mov var_3C, 0000000Ah
00894E2C: mov var_54, 80020004h
00894E33: mov var_5C, 0000000Ah
00894E3A: mov var_74, 00459810h ; Email
00894E41: mov var_7C, 00000008h
00894E48: mov var_00000094, 00000DACh
00894E52: mov var_0000009C, 00000002h
00894E5C: push 00000010h
00894E5E: pop eax
00894E5F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00894E64: lea esi, var_3C
00894E67: mov edi, esp
00894E69: movsd 
00894E6A: movsd 
00894E6B: movsd 
00894E6C: movsd 
00894E6D: push 00000010h
00894E6F: pop eax
00894E70: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00894E75: lea esi, var_5C
00894E78: mov edi, esp
00894E7A: movsd 
00894E7B: movsd 
00894E7C: movsd 
00894E7D: movsd 
00894E7E: push 00000010h
00894E80: pop eax
00894E81: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00894E86: lea esi, var_7C
00894E89: mov edi, esp
00894E8B: movsd 
00894E8C: movsd 
00894E8D: movsd 
00894E8E: movsd 
00894E8F: push 00000010h
00894E91: pop eax
00894E92: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00894E97: lea esi, var_0000009C
00894E9D: mov edi, esp
00894E9F: movsd 
00894EA0: movsd 
00894EA1: movsd 
00894EA2: movsd 
00894EA3: push 00000004h
00894EA5: push 00000002h
00894EA7: push 00445534h
00894EAC: push 00000000h
00894EAE: push 00000019h
00894EB0: mov eax, [ebp+08h]
00894EB3: mov eax, [eax]
00894EB5: push [ebp+08h]
00894EB8: call [eax+00000328h]
00894EBE: push eax
00894EBF: lea eax, var_18
00894EC2: push eax
00894EC3: call 00410A84h ; Set (object)
00894EC8: push eax
00894EC9: lea eax, var_2C
00894ECC: push eax
00894ECD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00894ED2: add esp, 00000010h
00894ED5: push eax
00894ED6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00894EDB: push eax
00894EDC: lea eax, var_1C
00894EDF: push eax
00894EE0: call 00410A84h ; Set (object)
00894EE5: push eax
00894EE6: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00894EEB: add esp, 0000004Ch
00894EEE: lea eax, var_1C
00894EF1: push eax
00894EF2: lea eax, var_18
00894EF5: push eax
00894EF6: push 00000002h
00894EF8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00894EFD: add esp, 0000000Ch
00894F00: lea ecx, var_2C
00894F03: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00894F08: mov var_34, 80020004h
00894F0F: mov var_3C, 0000000Ah
00894F16: mov var_54, 80020004h
00894F1D: mov var_5C, 0000000Ah
00894F24: mov var_74, 004468A0h ; Status
00894F2B: mov var_7C, 00000008h
00894F32: mov var_00000094, 000005DCh
00894F3C: mov var_0000009C, 00000002h
00894F46: push 00000010h
00894F48: pop eax
00894F49: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00894F4E: lea esi, var_3C
00894F51: mov edi, esp
00894F53: movsd 
00894F54: movsd 
00894F55: movsd 
00894F56: movsd 
00894F57: push 00000010h
00894F59: pop eax
00894F5A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00894F5F: lea esi, var_5C
00894F62: mov edi, esp
00894F64: movsd 
00894F65: movsd 
00894F66: movsd 
00894F67: movsd 
00894F68: push 00000010h
00894F6A: pop eax
00894F6B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00894F70: lea esi, var_7C
00894F73: mov edi, esp
00894F75: movsd 
00894F76: movsd 
00894F77: movsd 
00894F78: movsd 
00894F79: push 00000010h
00894F7B: pop eax
00894F7C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00894F81: lea esi, var_0000009C
00894F87: mov edi, esp
00894F89: movsd 
00894F8A: movsd 
00894F8B: movsd 
00894F8C: movsd 
00894F8D: push 00000004h
00894F8F: push 00000002h
00894F91: push 00445534h
00894F96: push 00000000h
00894F98: push 00000019h
00894F9A: mov eax, [ebp+08h]
00894F9D: mov eax, [eax]
00894F9F: push [ebp+08h]
00894FA2: call [eax+00000328h]
00894FA8: push eax
00894FA9: lea eax, var_18
00894FAC: push eax
00894FAD: call 00410A84h ; Set (object)
00894FB2: push eax
00894FB3: lea eax, var_2C
00894FB6: push eax
00894FB7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00894FBC: add esp, 00000010h
00894FBF: push eax
00894FC0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00894FC5: push eax
00894FC6: lea eax, var_1C
00894FC9: push eax
00894FCA: call 00410A84h ; Set (object)
00894FCF: push eax
00894FD0: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00894FD5: add esp, 0000004Ch
00894FD8: lea eax, var_1C
00894FDB: push eax
00894FDC: lea eax, var_18
00894FDF: push eax
00894FE0: push 00000002h
00894FE2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00894FE7: add esp, 0000000Ch
00894FEA: lea ecx, var_2C
00894FED: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00894FF2: mov var_34, 80020004h
00894FF9: mov var_3C, 0000000Ah
00895000: mov var_54, 80020004h
00895007: mov var_5C, 0000000Ah
0089500E: mov var_74, 00459820h ; Blocked
00895015: mov var_7C, 00000008h
0089501C: mov var_00000094, 000003E8h
00895026: mov var_0000009C, 00000002h
00895030: push 00000010h
00895032: pop eax
00895033: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00895038: lea esi, var_3C
0089503B: mov edi, esp
0089503D: movsd 
0089503E: movsd 
0089503F: movsd 
00895040: movsd 
00895041: push 00000010h
00895043: pop eax
00895044: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00895049: lea esi, var_5C
0089504C: mov edi, esp
0089504E: movsd 
0089504F: movsd 
00895050: movsd 
00895051: movsd 
00895052: push 00000010h
00895054: pop eax
00895055: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089505A: lea esi, var_7C
0089505D: mov edi, esp
0089505F: movsd 
00895060: movsd 
00895061: movsd 
00895062: movsd 
00895063: push 00000010h
00895065: pop eax
00895066: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089506B: lea esi, var_0000009C
00895071: mov edi, esp
00895073: movsd 
00895074: movsd 
00895075: movsd 
00895076: movsd 
00895077: push 00000004h
00895079: push 00000002h
0089507B: push 00445534h
00895080: push 00000000h
00895082: push 00000019h
00895084: mov eax, [ebp+08h]
00895087: mov eax, [eax]
00895089: push [ebp+08h]
0089508C: call [eax+00000328h]
00895092: push eax
00895093: lea eax, var_18
00895096: push eax
00895097: call 00410A84h ; Set (object)
0089509C: push eax
0089509D: lea eax, var_2C
008950A0: push eax
008950A1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008950A6: add esp, 00000010h
008950A9: push eax
008950AA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008950AF: push eax
008950B0: lea eax, var_1C
008950B3: push eax
008950B4: call 00410A84h ; Set (object)
008950B9: push eax
008950BA: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008950BF: add esp, 0000004Ch
008950C2: lea eax, var_1C
008950C5: push eax
008950C6: lea eax, var_18
008950C9: push eax
008950CA: push 00000002h
008950CC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008950D1: add esp, 0000000Ch
008950D4: lea ecx, var_2C
008950D7: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008950DC: mov var_04, 00000000h
008950E3: push 00895106h
008950E8: jmp 895105h
008950EA: lea eax, var_1C
008950ED: push eax
008950EE: lea eax, var_18
008950F1: push eax
008950F2: push 00000002h
008950F4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008950F9: add esp, 0000000Ch
008950FC: lea ecx, var_2C
008950FF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00895104: ret 
End Sub

Private sub Form__895125
00895125: push ebp
00895126: mov ebp, esp
00895128: sub esp, 00000018h
0089512B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00895130: mov eax, fs:[00h]
00895136: push eax
00895137: mov fs:[00000000h], esp
0089513E: mov eax, 000000E0h
00895143: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00895148: push ebx
00895149: push esi
0089514A: push edi
0089514B: mov var_18, esp
0089514E: mov var_14, 0040DF08h
00895155: mov eax, [ebp+08h]
00895158: and eax, 00000001h
0089515B: mov var_10, eax
0089515E: mov eax, [ebp+08h]
00895161: and al, FEh
00895163: mov [ebp+08h], eax
00895166: mov var_0C, 00000000h
0089516D: mov eax, [ebp+08h]
00895170: mov eax, [eax]
00895172: push [ebp+08h]
00895175: call [eax+04h]
00895178: mov var_04, 00000001h
0089517F: mov var_04, 00000002h
00895186: push FFFFFFFFh
00895188: call 00410A60h ; On Error ...
0089518D: mov var_04, 00000003h
00895194: push 00000000h
00895196: push 80010006h
0089519B: mov eax, [ebp+08h]
0089519E: mov eax, [eax]
008951A0: push [ebp+08h]
008951A3: call [eax+0000032Ch]
008951A9: push eax
008951AA: lea eax, var_24
008951AD: push eax
008951AE: call 00410A84h ; Set (object)
008951B3: push eax
008951B4: lea eax, var_3C
008951B7: push eax
008951B8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008951BD: add esp, 00000010h
008951C0: fldz 
008951C2: fstp real4 ptr var_54
008951C5: mov var_5C, 00000004h
008951CC: and var_74, 00000000h
008951D0: mov var_7C, 00000002h
008951D7: lea eax, var_000000D0
008951DD: push eax
008951DE: mov eax, [ebp+08h]
008951E1: mov eax, [eax]
008951E3: push [ebp+08h]
008951E6: call [eax+00000080h]
008951EC: fclex 
008951EE: mov var_000000D8, eax
008951F4: cmp var_000000D8, 00000000h
008951FB: jnl 89521Dh
008951FD: push 00000080h
00895202: push 004485C8h
00895207: push [ebp+08h]
0089520A: push var_000000D8
00895210: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00895215: mov var_000000F4, eax
0089521B: jmp 895224h
0089521D: and var_000000F4, 00000000h
00895224: fld real4 ptr var_000000D0
0089522A: fsub real4 ptr [00402BA4h]
00895230: fstp real4 ptr var_00000094
00895236: fstsw ax
00895238: test al, 0Dh
0089523A: jnz 00895543h
00895240: mov var_0000009C, 00000004h
0089524A: lea eax, var_000000D4
00895250: push eax
00895251: mov eax, [ebp+08h]
00895254: mov eax, [eax]
00895256: push [ebp+08h]
00895259: call [eax+00000088h]
0089525F: fclex 
00895261: mov var_000000DC, eax
00895267: cmp var_000000DC, 00000000h
0089526E: jnl 895290h
00895270: push 00000088h
00895275: push 004485C8h
0089527A: push [ebp+08h]
0089527D: push var_000000DC
00895283: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00895288: mov var_000000F8, eax
0089528E: jmp 895297h
00895290: and var_000000F8, 00000000h
00895297: lea eax, var_3C
0089529A: push eax
0089529B: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008952A0: fsubr real4 ptr var_000000D4
008952A6: fsub real4 ptr [0040DF3Ch]
008952AC: fstp real4 ptr var_000000B4
008952B2: fstsw ax
008952B4: test al, 0Dh
008952B6: jnz 00895543h
008952BC: mov var_000000BC, 00000004h
008952C6: push 00000010h
008952C8: pop eax
008952C9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008952CE: lea esi, var_5C
008952D1: mov edi, esp
008952D3: movsd 
008952D4: movsd 
008952D5: movsd 
008952D6: movsd 
008952D7: push 00000010h
008952D9: pop eax
008952DA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008952DF: lea esi, var_7C
008952E2: mov edi, esp
008952E4: movsd 
008952E5: movsd 
008952E6: movsd 
008952E7: movsd 
008952E8: push 00000010h
008952EA: pop eax
008952EB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008952F0: lea esi, var_0000009C
008952F6: mov edi, esp
008952F8: movsd 
008952F9: movsd 
008952FA: movsd 
008952FB: movsd 
008952FC: push 00000010h
008952FE: pop eax
008952FF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00895304: lea esi, var_000000BC
0089530A: mov edi, esp
0089530C: movsd 
0089530D: movsd 
0089530E: movsd 
0089530F: movsd 
00895310: push 00000004h
00895312: push 80011002h
00895317: mov eax, [ebp+08h]
0089531A: mov eax, [eax]
0089531C: push [ebp+08h]
0089531F: call [eax+00000328h]
00895325: push eax
00895326: lea eax, var_28
00895329: push eax
0089532A: call 00410A84h ; Set (object)
0089532F: push eax
00895330: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00895335: add esp, 0000004Ch
00895338: lea eax, var_28
0089533B: push eax
0089533C: lea eax, var_24
0089533F: push eax
00895340: push 00000002h
00895342: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00895347: add esp, 0000000Ch
0089534A: lea ecx, var_3C
0089534D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00895352: mov var_04, 00000004h
00895359: push 00000000h
0089535B: push 80010006h
00895360: mov eax, [ebp+08h]
00895363: mov eax, [eax]
00895365: push [ebp+08h]
00895368: call [eax+00000328h]
0089536E: push eax
0089536F: lea eax, var_28
00895372: push eax
00895373: call 00410A84h ; Set (object)
00895378: push eax
00895379: lea eax, var_4C
0089537C: push eax
0089537D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00895382: add esp, 00000010h
00895385: fldz 
00895387: fstp real4 ptr var_54
0089538A: mov var_5C, 00000004h
00895391: push 00000000h
00895393: push 80010004h
00895398: mov eax, [ebp+08h]
0089539B: mov eax, [eax]
0089539D: push [ebp+08h]
008953A0: call [eax+00000328h]
008953A6: push eax
008953A7: lea eax, var_24
008953AA: push eax
008953AB: call 00410A84h ; Set (object)
008953B0: push eax
008953B1: lea eax, var_3C
008953B4: push eax
008953B5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008953BA: add esp, 00000010h
008953BD: push eax
008953BE: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008953C3: fstp real4 ptr var_000000FC
008953C9: lea eax, var_4C
008953CC: push eax
008953CD: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008953D2: fadd real4 ptr var_000000FC
008953D8: fadd real4 ptr [00402BA8h]
008953DE: fstp real4 ptr var_74
008953E1: fstsw ax
008953E3: test al, 0Dh
008953E5: jnz 00895543h
008953EB: mov var_7C, 00000004h
008953F2: lea eax, var_000000D0
008953F8: push eax
008953F9: mov eax, [ebp+08h]
008953FC: mov eax, [eax]
008953FE: push [ebp+08h]
00895401: call [eax+00000080h]
00895407: fclex 
00895409: mov var_000000D8, eax
0089540F: cmp var_000000D8, 00000000h
00895416: jnl 895438h
00895418: push 00000080h
0089541D: push 004485C8h
00895422: push [ebp+08h]
00895425: push var_000000D8
0089542B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00895430: mov var_00000100, eax
00895436: jmp 89543Fh
00895438: and var_00000100, 00000000h
0089543F: fld real4 ptr var_000000D0
00895445: fsub real4 ptr [00402BA4h]
0089544B: fstp real4 ptr var_00000094
00895451: fstsw ax
00895453: test al, 0Dh
00895455: jnz 00895543h
0089545B: mov var_0000009C, 00000004h
00895465: push 00000010h
00895467: pop eax
00895468: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089546D: lea esi, var_5C
00895470: mov edi, esp
00895472: movsd 
00895473: movsd 
00895474: movsd 
00895475: movsd 
00895476: push 00000010h
00895478: pop eax
00895479: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089547E: lea esi, var_7C
00895481: mov edi, esp
00895483: movsd 
00895484: movsd 
00895485: movsd 
00895486: movsd 
00895487: push 00000010h
00895489: pop eax
0089548A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0089548F: lea esi, var_0000009C
00895495: mov edi, esp
00895497: movsd 
00895498: movsd 
00895499: movsd 
0089549A: movsd 
0089549B: push 00000003h
0089549D: push 80011001h
008954A2: mov eax, [ebp+08h]
008954A5: mov eax, [eax]
008954A7: push [ebp+08h]
008954AA: call [eax+0000032Ch]
008954B0: push eax
008954B1: lea eax, var_2C
008954B4: push eax
008954B5: call 00410A84h ; Set (object)
008954BA: push eax
008954BB: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008954C0: add esp, 0000003Ch
008954C3: lea eax, var_2C
008954C6: push eax
008954C7: lea eax, var_28
008954CA: push eax
008954CB: lea eax, var_24
008954CE: push eax
008954CF: push 00000003h
008954D1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008954D6: add esp, 00000010h
008954D9: lea eax, var_4C
008954DC: push eax
008954DD: lea eax, var_3C
008954E0: push eax
008954E1: push 00000002h
008954E3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008954E8: add esp, 0000000Ch
008954EB: mov var_10, 00000000h
008954F2: wait 
008954F3: push 00895524h
008954F8: jmp 895523h
008954FA: lea eax, var_2C
008954FD: push eax
008954FE: lea eax, var_28
00895501: push eax
00895502: lea eax, var_24
00895505: push eax
00895506: push 00000003h
00895508: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0089550D: add esp, 00000010h
00895510: lea eax, var_4C
00895513: push eax
00895514: lea eax, var_3C
00895517: push eax
00895518: push 00000002h
0089551A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0089551F: add esp, 0000000Ch
00895522: ret 
End Sub

