VERSION 5.00
Begin VB.Form frmSkype
  Caption = "Skype commander"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmSkype.frx":0
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
      Text = "user_name"
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
    Begin XtremeSuiteControls.CheckBox chkSkypeCmd
      Left = 2760
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
    Begin XtremeSuiteControls.CheckBox chkAllContacts
      Left = 7320
      Top = 1320
      Width = 1695
      Height = 255
      TabIndex = 13
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
    TabIndex = 12
  End
  Begin VB.Menu mnuSkypeMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuSkype
      Index = 0
      Caption = "Get contacts"
      Begin VB.Menu mnuSkypeGetContacts
        Index = 0
        Caption = "Current bot"
      End
      Begin VB.Menu mnuSkypeGetContacts
        Index = 1
        Caption = "Selected bots"
      End
    End
    Begin VB.Menu mnuSkype
      Index = 1
      Caption = "Dump emails"
      Begin VB.Menu mnuSkypeDumpContacts
        Index = 0
        Caption = "Current bot"
      End
      Begin VB.Menu mnuSkypeDumpContacts
        Index = 1
        Caption = "Selected bots"
      End
    End
    Begin VB.Menu mnuSkype
      Index = 2
      Caption = "-"
    End
    Begin VB.Menu mnuSkype
      Index = 3
      Caption = "Block"
    End
    Begin VB.Menu mnuSkype
      Index = 4
      Caption = "Unblock"
    End
    Begin VB.Menu mnuSkype
      Index = 7
      Caption = "-"
    End
    Begin VB.Menu mnuSkype
      Index = 8
      Caption = "Copy"
      Begin VB.Menu mnuSkypeCopy
        Index = 0
        Caption = "Entire line"
      End
      Begin VB.Menu mnuSkypeCopy
        Index = 1
        Caption = "Email only"
      End
    End
    Begin VB.Menu mnuSkype
      Index = 9
      Caption = "Save to file"
      Begin VB.Menu mnuSkypeSave
        Index = 0
        Caption = "Entire line"
      End
      Begin VB.Menu mnuSkypeSave
        Index = 1
        Caption = "Email only"
      End
    End
  End
End

Attribute VB_Name = "frmSkype"


Private sub cmdSignOut__8E8260
008E8260: push ebp
008E8261: mov ebp, esp
008E8263: sub esp, 0000000Ch
008E8266: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E826B: mov eax, fs:[00h]
008E8271: push eax
008E8272: mov fs:[00000000h], esp
008E8279: mov eax, 00000124h
008E827E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E8283: push ebx
008E8284: push esi
008E8285: push edi
008E8286: mov var_0C, esp
008E8289: mov var_08, 004104B8h
008E8290: mov eax, [ebp+08h]
008E8293: and eax, 00000001h
008E8296: mov var_04, eax
008E8299: mov eax, [ebp+08h]
008E829C: and al, FEh
008E829E: mov [ebp+08h], eax
008E82A1: mov eax, [ebp+08h]
008E82A4: mov eax, [eax]
008E82A6: push [ebp+08h]
008E82A9: call [eax+04h]
008E82AC: push 00000000h
008E82AE: push 00000000h
008E82B0: mov eax, [ebp+08h]
008E82B3: mov eax, [eax]
008E82B5: push [ebp+08h]
008E82B8: call [eax+0000033Ch]
008E82BE: push eax
008E82BF: lea eax, var_30
008E82C2: push eax
008E82C3: call 00410A84h ; Set (object)
008E82C8: push eax
008E82C9: lea eax, var_48
008E82CC: push eax
008E82CD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E82D2: add esp, 00000010h
008E82D5: push eax
008E82D6: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E82DB: dec eax
008E82DC: neg eax
008E82DE: sbb eax, eax
008E82E0: inc eax
008E82E1: neg eax
008E82E3: mov var_000000C8, ax
008E82EA: lea ecx, var_30
008E82ED: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E82F2: lea ecx, var_48
008E82F5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E82FA: movsx eax, word ptr var_000000C8
008E8301: test eax, eax
008E8303: jz 008E83ACh
008E8309: mov var_70, 80020004h
008E8310: mov var_78, 0000000Ah
008E8317: mov var_60, 80020004h
008E831E: mov var_68, 0000000Ah
008E8325: mov var_50, 80020004h
008E832C: mov var_58, 0000000Ah
008E8333: mov var_00000084, 00461630h ; Do you really want to sign out all selected bots from Skype?
008E833D: mov var_0000008C, 00000008h
008E8347: lea edx, var_0000008C
008E834D: lea ecx, var_48
008E8350: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008E8355: lea eax, var_78
008E8358: push eax
008E8359: lea eax, var_68
008E835C: push eax
008E835D: lea eax, var_58
008E8360: push eax
008E8361: push 00000034h
008E8363: lea eax, var_48
008E8366: push eax
008E8367: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008E836C: sub eax, 00000007h
008E836F: neg eax
008E8371: sbb eax, eax
008E8373: inc eax
008E8374: neg eax
008E8376: mov var_000000C8, ax
008E837D: lea eax, var_78
008E8380: push eax
008E8381: lea eax, var_68
008E8384: push eax
008E8385: lea eax, var_58
008E8388: push eax
008E8389: lea eax, var_48
008E838C: push eax
008E838D: push 00000004h
008E838F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E8394: add esp, 00000014h
008E8397: movsx eax, word ptr var_000000C8
008E839E: test eax, eax
008E83A0: jz 8E83A7h
008E83A2: jmp 008E8F1Fh
008E83A7: jmp 008E844Ah
008E83AC: mov var_70, 80020004h
008E83B3: mov var_78, 0000000Ah
008E83BA: mov var_60, 80020004h
008E83C1: mov var_68, 0000000Ah
008E83C8: mov var_50, 80020004h
008E83CF: mov var_58, 0000000Ah
008E83D6: mov var_00000084, 004616B0h ; Do you really want to sign out the current bot from Skype?
008E83E0: mov var_0000008C, 00000008h
008E83EA: lea edx, var_0000008C
008E83F0: lea ecx, var_48
008E83F3: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008E83F8: lea eax, var_78
008E83FB: push eax
008E83FC: lea eax, var_68
008E83FF: push eax
008E8400: lea eax, var_58
008E8403: push eax
008E8404: push 00000034h
008E8406: lea eax, var_48
008E8409: push eax
008E840A: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008E840F: sub eax, 00000007h
008E8412: neg eax
008E8414: sbb eax, eax
008E8416: inc eax
008E8417: neg eax
008E8419: mov var_000000C8, ax
008E8420: lea eax, var_78
008E8423: push eax
008E8424: lea eax, var_68
008E8427: push eax
008E8428: lea eax, var_58
008E842B: push eax
008E842C: lea eax, var_48
008E842F: push eax
008E8430: push 00000004h
008E8432: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E8437: add esp, 00000014h
008E843A: movsx eax, word ptr var_000000C8
008E8441: test eax, eax
008E8443: jz 8E844Ah
008E8445: jmp 008E8F1Fh
008E844A: cmp word ptr [008F2430h], FFFFh
008E8452: jnz 008E89BEh
008E8458: push 00000000h
008E845A: push 00000000h
008E845C: mov eax, [ebp+08h]
008E845F: mov eax, [eax]
008E8461: push [ebp+08h]
008E8464: call [eax+0000033Ch]
008E846A: push eax
008E846B: lea eax, var_30
008E846E: push eax
008E846F: call 00410A84h ; Set (object)
008E8474: push eax
008E8475: lea eax, var_48
008E8478: push eax
008E8479: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E847E: add esp, 00000010h
008E8481: push eax
008E8482: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E8487: dec eax
008E8488: neg eax
008E848A: sbb eax, eax
008E848C: inc eax
008E848D: neg eax
008E848F: mov var_000000C8, ax
008E8496: lea ecx, var_30
008E8499: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E849E: lea ecx, var_48
008E84A1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E84A6: movsx eax, word ptr var_000000C8
008E84AD: test eax, eax
008E84AF: jz 008E88D6h
008E84B5: mov var_00000084, 00000001h
008E84BF: mov var_0000008C, 00000002h
008E84C9: cmp [008F2010h], 00000000h
008E84D0: jnz 8E84EDh
008E84D2: push 008F2010h
008E84D7: push 00433984h
008E84DC: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E84E1: mov var_0000011C, 008F2010h
008E84EB: jmp 8E84F7h
008E84ED: mov var_0000011C, 008F2010h
008E84F7: push 00000000h
008E84F9: push 00000001h
008E84FB: push 00440E48h
008E8500: push 00000000h
008E8502: push 00000018h
008E8504: mov eax, var_0000011C
008E850A: mov eax, [eax]
008E850C: mov ecx, var_0000011C
008E8512: mov ecx, [ecx]
008E8514: mov ecx, [ecx]
008E8516: push eax
008E8517: call [ecx+0000054Ch]
008E851D: push eax
008E851E: lea eax, var_30
008E8521: push eax
008E8522: call 00410A84h ; Set (object)
008E8527: push eax
008E8528: lea eax, var_48
008E852B: push eax
008E852C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E8531: add esp, 00000010h
008E8534: push eax
008E8535: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E853A: push eax
008E853B: lea eax, var_34
008E853E: push eax
008E853F: call 00410A84h ; Set (object)
008E8544: push eax
008E8545: lea eax, var_58
008E8548: push eax
008E8549: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E854E: add esp, 00000010h
008E8551: push eax
008E8552: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E8557: mov var_00000094, eax
008E855D: mov var_0000009C, 00000003h
008E8567: mov var_000000A4, 00000001h
008E8571: mov var_000000AC, 00000002h
008E857B: lea eax, var_0000008C
008E8581: push eax
008E8582: lea eax, var_0000009C
008E8588: push eax
008E8589: lea eax, var_000000AC
008E858F: push eax
008E8590: lea eax, var_000000E8
008E8596: push eax
008E8597: lea eax, var_000000D8
008E859D: push eax
008E859E: lea eax, var_24
008E85A1: push eax
008E85A2: call 00410A3Ch ; For
008E85A7: mov var_00000114, eax
008E85AD: lea eax, var_34
008E85B0: push eax
008E85B1: lea eax, var_30
008E85B4: push eax
008E85B5: push 00000002h
008E85B7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E85BC: add esp, 0000000Ch
008E85BF: lea eax, var_58
008E85C2: push eax
008E85C3: lea eax, var_48
008E85C6: push eax
008E85C7: push 00000002h
008E85C9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E85CE: add esp, 0000000Ch
008E85D1: jmp 008E88C4h
008E85D6: lea eax, var_24
008E85D9: mov var_00000084, eax
008E85DF: mov var_0000008C, 0000400Ch
008E85E9: cmp [008F2010h], 00000000h
008E85F0: jnz 8E860Dh
008E85F2: push 008F2010h
008E85F7: push 00433984h
008E85FC: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E8601: mov var_00000120, 008F2010h
008E860B: jmp 8E8617h
008E860D: mov var_00000120, 008F2010h
008E8617: push 00000000h
008E8619: push 00000004h
008E861B: push 00440E58h
008E8620: push 00000010h
008E8622: pop eax
008E8623: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E8628: lea esi, var_0000008C
008E862E: mov edi, esp
008E8630: movsd 
008E8631: movsd 
008E8632: movsd 
008E8633: movsd 
008E8634: push 00000001h
008E8636: push 00000000h
008E8638: push 00440E48h
008E863D: push 00000000h
008E863F: push 00000018h
008E8641: mov eax, var_00000120
008E8647: mov eax, [eax]
008E8649: mov ecx, var_00000120
008E864F: mov ecx, [ecx]
008E8651: mov ecx, [ecx]
008E8653: push eax
008E8654: call [ecx+0000054Ch]
008E865A: push eax
008E865B: lea eax, var_30
008E865E: push eax
008E865F: call 00410A84h ; Set (object)
008E8664: push eax
008E8665: lea eax, var_48
008E8668: push eax
008E8669: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E866E: add esp, 00000010h
008E8671: push eax
008E8672: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E8677: push eax
008E8678: lea eax, var_34
008E867B: push eax
008E867C: call 00410A84h ; Set (object)
008E8681: push eax
008E8682: lea eax, var_58
008E8685: push eax
008E8686: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E868B: add esp, 00000020h
008E868E: push eax
008E868F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E8694: push eax
008E8695: lea eax, var_38
008E8698: push eax
008E8699: call 00410A84h ; Set (object)
008E869E: push eax
008E869F: lea eax, var_68
008E86A2: push eax
008E86A3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E86A8: add esp, 00000010h
008E86AB: push eax
008E86AC: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008E86B1: sub ax, FFFFh
008E86B5: neg ax
008E86B8: sbb eax, eax
008E86BA: inc eax
008E86BB: neg eax
008E86BD: mov var_000000C8, ax
008E86C4: lea eax, var_38
008E86C7: push eax
008E86C8: lea eax, var_34
008E86CB: push eax
008E86CC: lea eax, var_30
008E86CF: push eax
008E86D0: push 00000003h
008E86D2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E86D7: add esp, 00000010h
008E86DA: lea eax, var_68
008E86DD: push eax
008E86DE: lea eax, var_58
008E86E1: push eax
008E86E2: lea eax, var_48
008E86E5: push eax
008E86E6: push 00000003h
008E86E8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E86ED: add esp, 00000010h
008E86F0: movsx eax, word ptr var_000000C8
008E86F7: test eax, eax
008E86F9: jz 008E88A7h
008E86FF: lea eax, var_24
008E8702: mov var_00000084, eax
008E8708: mov var_0000008C, 0000400Ch
008E8712: cmp [008F2010h], 00000000h
008E8719: jnz 8E8736h
008E871B: push 008F2010h
008E8720: push 00433984h
008E8725: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E872A: mov var_00000124, 008F2010h
008E8734: jmp 8E8740h
008E8736: mov var_00000124, 008F2010h
008E8740: push 00000000h
008E8742: push 00000014h
008E8744: push 00440E58h
008E8749: push 00000010h
008E874B: pop eax
008E874C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E8751: lea esi, var_0000008C
008E8757: mov edi, esp
008E8759: movsd 
008E875A: movsd 
008E875B: movsd 
008E875C: movsd 
008E875D: push 00000001h
008E875F: push 00000000h
008E8761: push 00440E48h
008E8766: push 00000000h
008E8768: push 00000018h
008E876A: mov eax, var_00000124
008E8770: mov eax, [eax]
008E8772: mov ecx, var_00000124
008E8778: mov ecx, [ecx]
008E877A: mov ecx, [ecx]
008E877C: push eax
008E877D: call [ecx+0000054Ch]
008E8783: push eax
008E8784: lea eax, var_30
008E8787: push eax
008E8788: call 00410A84h ; Set (object)
008E878D: push eax
008E878E: lea eax, var_48
008E8791: push eax
008E8792: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E8797: add esp, 00000010h
008E879A: push eax
008E879B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E87A0: push eax
008E87A1: lea eax, var_34
008E87A4: push eax
008E87A5: call 00410A84h ; Set (object)
008E87AA: push eax
008E87AB: lea eax, var_58
008E87AE: push eax
008E87AF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E87B4: add esp, 00000020h
008E87B7: push eax
008E87B8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E87BD: push eax
008E87BE: lea eax, var_38
008E87C1: push eax
008E87C2: call 00410A84h ; Set (object)
008E87C7: push eax
008E87C8: lea eax, var_68
008E87CB: push eax
008E87CC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E87D1: add esp, 00000010h
008E87D4: push eax
008E87D5: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E87DA: mov edx, eax
008E87DC: lea ecx, var_28
008E87DF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E87E4: push eax
008E87E5: call 004109DCh ; Val(arg_1)
008E87EA: fstp real8 ptr var_000000C4
008E87F0: push 00000000h
008E87F2: push 00000000h
008E87F4: push 00000001h
008E87F6: push 00000000h
008E87F8: lea eax, var_7C
008E87FB: push eax
008E87FC: push 00000010h
008E87FE: push 00000880h
008E8803: call 00410946h ; ReDim
008E8808: add esp, 0000001Ch
008E880B: mov var_00000094, 00442BFCh
008E8815: mov var_0000009C, 00000008h
008E881F: lea esi, var_0000009C
008E8825: push 00000000h
008E8827: push var_7C
008E882A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E882F: mov ecx, eax
008E8831: mov edx, esi
008E8833: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008E8838: mov edx, 0043DB68h ; x141
008E883D: lea ecx, var_2C
008E8840: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E8845: lea eax, var_7C
008E8848: push eax
008E8849: lea eax, var_2C
008E884C: push eax
008E884D: fld real8 ptr var_000000C4
008E8853: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E8858: push eax
008E8859: call 007A6910h
008E885E: lea eax, var_7C
008E8861: push eax
008E8862: push 00000000h
008E8864: call 00410934h ; Erase
008E8869: lea eax, var_2C
008E886C: push eax
008E886D: lea eax, var_28
008E8870: push eax
008E8871: push 00000002h
008E8873: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E8878: add esp, 0000000Ch
008E887B: lea eax, var_38
008E887E: push eax
008E887F: lea eax, var_34
008E8882: push eax
008E8883: lea eax, var_30
008E8886: push eax
008E8887: push 00000003h
008E8889: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E888E: add esp, 00000010h
008E8891: lea eax, var_68
008E8894: push eax
008E8895: lea eax, var_58
008E8898: push eax
008E8899: lea eax, var_48
008E889C: push eax
008E889D: push 00000003h
008E889F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E88A4: add esp, 00000010h
008E88A7: lea eax, var_000000E8
008E88AD: push eax
008E88AE: lea eax, var_000000D8
008E88B4: push eax
008E88B5: lea eax, var_24
008E88B8: push eax
008E88B9: call 00410A36h ; Next
008E88BE: mov var_00000114, eax
008E88C4: cmp var_00000114, 00000000h
008E88CB: jnz 008E85D6h
008E88D1: jmp 008E89B9h
008E88D6: lea eax, var_28
008E88D9: push eax
008E88DA: mov eax, [ebp+08h]
008E88DD: mov eax, [eax]
008E88DF: push [ebp+08h]
008E88E2: call [eax+000001C0h]
008E88E8: fclex 
008E88EA: mov var_000000C8, eax
008E88F0: cmp var_000000C8, 00000000h
008E88F7: jnl 8E8919h
008E88F9: push 000001C0h
008E88FE: push 00448930h
008E8903: push [ebp+08h]
008E8906: push var_000000C8
008E890C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E8911: mov var_00000128, eax
008E8917: jmp 8E8920h
008E8919: and var_00000128, 00000000h
008E8920: push var_28
008E8923: call 004109DCh ; Val(arg_1)
008E8928: fstp real8 ptr var_000000C4
008E892E: push 00000000h
008E8930: push 00000000h
008E8932: push 00000001h
008E8934: push 00000000h
008E8936: lea eax, var_7C
008E8939: push eax
008E893A: push 00000010h
008E893C: push 00000880h
008E8941: call 00410946h ; ReDim
008E8946: add esp, 0000001Ch
008E8949: mov var_00000084, 00442BFCh
008E8953: mov var_0000008C, 00000008h
008E895D: lea esi, var_0000008C
008E8963: push 00000000h
008E8965: push var_7C
008E8968: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E896D: mov ecx, eax
008E896F: mov edx, esi
008E8971: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008E8976: mov edx, 0043DB68h ; x141
008E897B: lea ecx, var_2C
008E897E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E8983: lea eax, var_7C
008E8986: push eax
008E8987: lea eax, var_2C
008E898A: push eax
008E898B: fld real8 ptr var_000000C4
008E8991: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E8996: push eax
008E8997: call 007A6910h
008E899C: lea eax, var_7C
008E899F: push eax
008E89A0: push 00000000h
008E89A2: call 00410934h ; Erase
008E89A7: lea eax, var_2C
008E89AA: push eax
008E89AB: lea eax, var_28
008E89AE: push eax
008E89AF: push 00000002h
008E89B1: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E89B6: add esp, 0000000Ch
008E89B9: jmp 008E8F1Fh
008E89BE: push 00000000h
008E89C0: push 00000000h
008E89C2: mov eax, [ebp+08h]
008E89C5: mov eax, [eax]
008E89C7: push [ebp+08h]
008E89CA: call [eax+0000033Ch]
008E89D0: push eax
008E89D1: lea eax, var_30
008E89D4: push eax
008E89D5: call 00410A84h ; Set (object)
008E89DA: push eax
008E89DB: lea eax, var_48
008E89DE: push eax
008E89DF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E89E4: add esp, 00000010h
008E89E7: push eax
008E89E8: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E89ED: dec eax
008E89EE: neg eax
008E89F0: sbb eax, eax
008E89F2: inc eax
008E89F3: neg eax
008E89F5: mov var_000000C8, ax
008E89FC: lea ecx, var_30
008E89FF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E8A04: lea ecx, var_48
008E8A07: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E8A0C: movsx eax, word ptr var_000000C8
008E8A13: test eax, eax
008E8A15: jz 008E8E3Ch
008E8A1B: mov var_00000084, 00000001h
008E8A25: mov var_0000008C, 00000002h
008E8A2F: cmp [008F2010h], 00000000h
008E8A36: jnz 8E8A53h
008E8A38: push 008F2010h
008E8A3D: push 00433984h
008E8A42: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E8A47: mov var_0000012C, 008F2010h
008E8A51: jmp 8E8A5Dh
008E8A53: mov var_0000012C, 008F2010h
008E8A5D: push 00000000h
008E8A5F: push 00000001h
008E8A61: push 00440E48h
008E8A66: push 00000000h
008E8A68: push 00000018h
008E8A6A: mov eax, var_0000012C
008E8A70: mov eax, [eax]
008E8A72: mov ecx, var_0000012C
008E8A78: mov ecx, [ecx]
008E8A7A: mov ecx, [ecx]
008E8A7C: push eax
008E8A7D: call [ecx+00000550h]
008E8A83: push eax
008E8A84: lea eax, var_30
008E8A87: push eax
008E8A88: call 00410A84h ; Set (object)
008E8A8D: push eax
008E8A8E: lea eax, var_48
008E8A91: push eax
008E8A92: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E8A97: add esp, 00000010h
008E8A9A: push eax
008E8A9B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E8AA0: push eax
008E8AA1: lea eax, var_34
008E8AA4: push eax
008E8AA5: call 00410A84h ; Set (object)
008E8AAA: push eax
008E8AAB: lea eax, var_58
008E8AAE: push eax
008E8AAF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E8AB4: add esp, 00000010h
008E8AB7: push eax
008E8AB8: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E8ABD: mov var_00000094, eax
008E8AC3: mov var_0000009C, 00000003h
008E8ACD: mov var_000000A4, 00000001h
008E8AD7: mov var_000000AC, 00000002h
008E8AE1: lea eax, var_0000008C
008E8AE7: push eax
008E8AE8: lea eax, var_0000009C
008E8AEE: push eax
008E8AEF: lea eax, var_000000AC
008E8AF5: push eax
008E8AF6: lea eax, var_00000108
008E8AFC: push eax
008E8AFD: lea eax, var_000000F8
008E8B03: push eax
008E8B04: lea eax, var_24
008E8B07: push eax
008E8B08: call 00410A3Ch ; For
008E8B0D: mov var_00000118, eax
008E8B13: lea eax, var_34
008E8B16: push eax
008E8B17: lea eax, var_30
008E8B1A: push eax
008E8B1B: push 00000002h
008E8B1D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E8B22: add esp, 0000000Ch
008E8B25: lea eax, var_58
008E8B28: push eax
008E8B29: lea eax, var_48
008E8B2C: push eax
008E8B2D: push 00000002h
008E8B2F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E8B34: add esp, 0000000Ch
008E8B37: jmp 008E8E2Ah
008E8B3C: lea eax, var_24
008E8B3F: mov var_00000084, eax
008E8B45: mov var_0000008C, 0000400Ch
008E8B4F: cmp [008F2010h], 00000000h
008E8B56: jnz 8E8B73h
008E8B58: push 008F2010h
008E8B5D: push 00433984h
008E8B62: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E8B67: mov var_00000130, 008F2010h
008E8B71: jmp 8E8B7Dh
008E8B73: mov var_00000130, 008F2010h
008E8B7D: push 00000000h
008E8B7F: push 00000004h
008E8B81: push 00440E58h
008E8B86: push 00000010h
008E8B88: pop eax
008E8B89: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E8B8E: lea esi, var_0000008C
008E8B94: mov edi, esp
008E8B96: movsd 
008E8B97: movsd 
008E8B98: movsd 
008E8B99: movsd 
008E8B9A: push 00000001h
008E8B9C: push 00000000h
008E8B9E: push 00440E48h
008E8BA3: push 00000000h
008E8BA5: push 00000018h
008E8BA7: mov eax, var_00000130
008E8BAD: mov eax, [eax]
008E8BAF: mov ecx, var_00000130
008E8BB5: mov ecx, [ecx]
008E8BB7: mov ecx, [ecx]
008E8BB9: push eax
008E8BBA: call [ecx+00000550h]
008E8BC0: push eax
008E8BC1: lea eax, var_30
008E8BC4: push eax
008E8BC5: call 00410A84h ; Set (object)
008E8BCA: push eax
008E8BCB: lea eax, var_48
008E8BCE: push eax
008E8BCF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E8BD4: add esp, 00000010h
008E8BD7: push eax
008E8BD8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E8BDD: push eax
008E8BDE: lea eax, var_34
008E8BE1: push eax
008E8BE2: call 00410A84h ; Set (object)
008E8BE7: push eax
008E8BE8: lea eax, var_58
008E8BEB: push eax
008E8BEC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E8BF1: add esp, 00000020h
008E8BF4: push eax
008E8BF5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E8BFA: push eax
008E8BFB: lea eax, var_38
008E8BFE: push eax
008E8BFF: call 00410A84h ; Set (object)
008E8C04: push eax
008E8C05: lea eax, var_68
008E8C08: push eax
008E8C09: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E8C0E: add esp, 00000010h
008E8C11: push eax
008E8C12: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008E8C17: sub ax, FFFFh
008E8C1B: neg ax
008E8C1E: sbb eax, eax
008E8C20: inc eax
008E8C21: neg eax
008E8C23: mov var_000000C8, ax
008E8C2A: lea eax, var_38
008E8C2D: push eax
008E8C2E: lea eax, var_34
008E8C31: push eax
008E8C32: lea eax, var_30
008E8C35: push eax
008E8C36: push 00000003h
008E8C38: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E8C3D: add esp, 00000010h
008E8C40: lea eax, var_68
008E8C43: push eax
008E8C44: lea eax, var_58
008E8C47: push eax
008E8C48: lea eax, var_48
008E8C4B: push eax
008E8C4C: push 00000003h
008E8C4E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E8C53: add esp, 00000010h
008E8C56: movsx eax, word ptr var_000000C8
008E8C5D: test eax, eax
008E8C5F: jz 008E8E0Dh
008E8C65: lea eax, var_24
008E8C68: mov var_00000084, eax
008E8C6E: mov var_0000008C, 0000400Ch
008E8C78: cmp [008F2010h], 00000000h
008E8C7F: jnz 8E8C9Ch
008E8C81: push 008F2010h
008E8C86: push 00433984h
008E8C8B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E8C90: mov var_00000134, 008F2010h
008E8C9A: jmp 8E8CA6h
008E8C9C: mov var_00000134, 008F2010h
008E8CA6: push 00000000h
008E8CA8: push 00000014h
008E8CAA: push 00440E58h
008E8CAF: push 00000010h
008E8CB1: pop eax
008E8CB2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E8CB7: lea esi, var_0000008C
008E8CBD: mov edi, esp
008E8CBF: movsd 
008E8CC0: movsd 
008E8CC1: movsd 
008E8CC2: movsd 
008E8CC3: push 00000001h
008E8CC5: push 00000000h
008E8CC7: push 00440E48h
008E8CCC: push 00000000h
008E8CCE: push 00000018h
008E8CD0: mov eax, var_00000134
008E8CD6: mov eax, [eax]
008E8CD8: mov ecx, var_00000134
008E8CDE: mov ecx, [ecx]
008E8CE0: mov ecx, [ecx]
008E8CE2: push eax
008E8CE3: call [ecx+00000550h]
008E8CE9: push eax
008E8CEA: lea eax, var_30
008E8CED: push eax
008E8CEE: call 00410A84h ; Set (object)
008E8CF3: push eax
008E8CF4: lea eax, var_48
008E8CF7: push eax
008E8CF8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E8CFD: add esp, 00000010h
008E8D00: push eax
008E8D01: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E8D06: push eax
008E8D07: lea eax, var_34
008E8D0A: push eax
008E8D0B: call 00410A84h ; Set (object)
008E8D10: push eax
008E8D11: lea eax, var_58
008E8D14: push eax
008E8D15: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E8D1A: add esp, 00000020h
008E8D1D: push eax
008E8D1E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E8D23: push eax
008E8D24: lea eax, var_38
008E8D27: push eax
008E8D28: call 00410A84h ; Set (object)
008E8D2D: push eax
008E8D2E: lea eax, var_68
008E8D31: push eax
008E8D32: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E8D37: add esp, 00000010h
008E8D3A: push eax
008E8D3B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E8D40: mov edx, eax
008E8D42: lea ecx, var_28
008E8D45: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E8D4A: push eax
008E8D4B: call 004109DCh ; Val(arg_1)
008E8D50: fstp real8 ptr var_000000C4
008E8D56: push 00000000h
008E8D58: push 00000000h
008E8D5A: push 00000001h
008E8D5C: push 00000000h
008E8D5E: lea eax, var_7C
008E8D61: push eax
008E8D62: push 00000010h
008E8D64: push 00000880h
008E8D69: call 00410946h ; ReDim
008E8D6E: add esp, 0000001Ch
008E8D71: mov var_00000094, 00442BFCh
008E8D7B: mov var_0000009C, 00000008h
008E8D85: lea esi, var_0000009C
008E8D8B: push 00000000h
008E8D8D: push var_7C
008E8D90: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E8D95: mov ecx, eax
008E8D97: mov edx, esi
008E8D99: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008E8D9E: mov edx, 0043DB68h ; x141
008E8DA3: lea ecx, var_2C
008E8DA6: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E8DAB: lea eax, var_7C
008E8DAE: push eax
008E8DAF: lea eax, var_2C
008E8DB2: push eax
008E8DB3: fld real8 ptr var_000000C4
008E8DB9: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E8DBE: push eax
008E8DBF: call 007A6910h
008E8DC4: lea eax, var_7C
008E8DC7: push eax
008E8DC8: push 00000000h
008E8DCA: call 00410934h ; Erase
008E8DCF: lea eax, var_2C
008E8DD2: push eax
008E8DD3: lea eax, var_28
008E8DD6: push eax
008E8DD7: push 00000002h
008E8DD9: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E8DDE: add esp, 0000000Ch
008E8DE1: lea eax, var_38
008E8DE4: push eax
008E8DE5: lea eax, var_34
008E8DE8: push eax
008E8DE9: lea eax, var_30
008E8DEC: push eax
008E8DED: push 00000003h
008E8DEF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E8DF4: add esp, 00000010h
008E8DF7: lea eax, var_68
008E8DFA: push eax
008E8DFB: lea eax, var_58
008E8DFE: push eax
008E8DFF: lea eax, var_48
008E8E02: push eax
008E8E03: push 00000003h
008E8E05: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E8E0A: add esp, 00000010h
008E8E0D: lea eax, var_00000108
008E8E13: push eax
008E8E14: lea eax, var_000000F8
008E8E1A: push eax
008E8E1B: lea eax, var_24
008E8E1E: push eax
008E8E1F: call 00410A36h ; Next
008E8E24: mov var_00000118, eax
008E8E2A: cmp var_00000118, 00000000h
008E8E31: jnz 008E8B3Ch
008E8E37: jmp 008E8F1Fh
008E8E3C: lea eax, var_28
008E8E3F: push eax
008E8E40: mov eax, [ebp+08h]
008E8E43: mov eax, [eax]
008E8E45: push [ebp+08h]
008E8E48: call [eax+000001C0h]
008E8E4E: fclex 
008E8E50: mov var_000000C8, eax
008E8E56: cmp var_000000C8, 00000000h
008E8E5D: jnl 8E8E7Fh
008E8E5F: push 000001C0h
008E8E64: push 00448930h
008E8E69: push [ebp+08h]
008E8E6C: push var_000000C8
008E8E72: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E8E77: mov var_00000138, eax
008E8E7D: jmp 8E8E86h
008E8E7F: and var_00000138, 00000000h
008E8E86: push var_28
008E8E89: call 004109DCh ; Val(arg_1)
008E8E8E: fstp real8 ptr var_000000C4
008E8E94: push 00000000h
008E8E96: push 00000000h
008E8E98: push 00000001h
008E8E9A: push 00000000h
008E8E9C: lea eax, var_7C
008E8E9F: push eax
008E8EA0: push 00000010h
008E8EA2: push 00000880h
008E8EA7: call 00410946h ; ReDim
008E8EAC: add esp, 0000001Ch
008E8EAF: mov var_00000084, 00442BFCh
008E8EB9: mov var_0000008C, 00000008h
008E8EC3: lea esi, var_0000008C
008E8EC9: push 00000000h
008E8ECB: push var_7C
008E8ECE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E8ED3: mov ecx, eax
008E8ED5: mov edx, esi
008E8ED7: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008E8EDC: mov edx, 0043DB68h ; x141
008E8EE1: lea ecx, var_2C
008E8EE4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E8EE9: lea eax, var_7C
008E8EEC: push eax
008E8EED: lea eax, var_2C
008E8EF0: push eax
008E8EF1: fld real8 ptr var_000000C4
008E8EF7: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E8EFC: push eax
008E8EFD: call 007A6910h
008E8F02: lea eax, var_7C
008E8F05: push eax
008E8F06: push 00000000h
008E8F08: call 00410934h ; Erase
008E8F0D: lea eax, var_2C
008E8F10: push eax
008E8F11: lea eax, var_28
008E8F14: push eax
008E8F15: push 00000002h
008E8F17: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E8F1C: add esp, 0000000Ch
008E8F1F: mov var_04, 00000000h
008E8F26: wait 
008E8F27: push 008E8FABh
008E8F2C: jmp 8E8F7Ch
008E8F2E: lea eax, var_2C
008E8F31: push eax
008E8F32: lea eax, var_28
008E8F35: push eax
008E8F36: push 00000002h
008E8F38: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E8F3D: add esp, 0000000Ch
008E8F40: lea eax, var_38
008E8F43: push eax
008E8F44: lea eax, var_34
008E8F47: push eax
008E8F48: lea eax, var_30
008E8F4B: push eax
008E8F4C: push 00000003h
008E8F4E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E8F53: add esp, 00000010h
008E8F56: lea eax, var_78
008E8F59: push eax
008E8F5A: lea eax, var_68
008E8F5D: push eax
008E8F5E: lea eax, var_58
008E8F61: push eax
008E8F62: lea eax, var_48
008E8F65: push eax
008E8F66: push 00000004h
008E8F68: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E8F6D: add esp, 00000014h
008E8F70: lea eax, var_7C
008E8F73: push eax
008E8F74: push 00000000h
008E8F76: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008E8F7B: ret 
End Sub

Private sub cmdAddContact__8E4120
008E4120: push ebp
008E4121: mov ebp, esp
008E4123: sub esp, 0000000Ch
008E4126: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E412B: mov eax, fs:[00h]
008E4131: push eax
008E4132: mov fs:[00000000h], esp
008E4139: mov eax, 00000130h
008E413E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E4143: push ebx
008E4144: push esi
008E4145: push edi
008E4146: mov var_0C, esp
008E4149: mov var_08, 00410478h
008E4150: mov eax, [ebp+08h]
008E4153: and eax, 00000001h
008E4156: mov var_04, eax
008E4159: mov eax, [ebp+08h]
008E415C: and al, FEh
008E415E: mov [ebp+08h], eax
008E4161: mov eax, [ebp+08h]
008E4164: mov eax, [eax]
008E4166: push [ebp+08h]
008E4169: call [eax+04h]
008E416C: mov eax, [ebp+08h]
008E416F: mov eax, [eax]
008E4171: push [ebp+08h]
008E4174: call [eax+00000304h]
008E417A: push eax
008E417B: lea eax, var_30
008E417E: push eax
008E417F: call 00410A84h ; Set (object)
008E4184: mov var_000000C8, eax
008E418A: lea eax, var_28
008E418D: push eax
008E418E: mov eax, var_000000C8
008E4194: mov eax, [eax]
008E4196: push var_000000C8
008E419C: call [eax+000000A0h]
008E41A2: fclex 
008E41A4: mov var_000000CC, eax
008E41AA: cmp var_000000CC, 00000000h
008E41B1: jnl 8E41D6h
008E41B3: push 000000A0h
008E41B8: push 00440E08h
008E41BD: push var_000000C8
008E41C3: push var_000000CC
008E41C9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E41CE: mov var_00000124, eax
008E41D4: jmp 8E41DDh
008E41D6: and var_00000124, 00000000h
008E41DD: push var_28
008E41E0: call 0041098Eh ; Len(arg_1)
008E41E5: xor ecx, ecx
008E41E7: cmp eax, 00000003h
008E41EA: setle cl
008E41ED: neg ecx
008E41EF: mov var_000000D0, cx
008E41F6: lea ecx, var_28
008E41F9: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008E41FE: lea ecx, var_30
008E4201: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E4206: movsx eax, word ptr var_000000D0
008E420D: test eax, eax
008E420F: jz 008E4297h
008E4215: mov var_70, 80020004h
008E421C: mov var_78, 0000000Ah
008E4223: mov var_60, 80020004h
008E422A: mov var_68, 0000000Ah
008E4231: mov var_50, 80020004h
008E4238: mov var_58, 0000000Ah
008E423F: mov var_00000084, 00459330h ; Invalid email
008E4249: mov var_0000008C, 00000008h
008E4253: lea edx, var_0000008C
008E4259: lea ecx, var_48
008E425C: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008E4261: lea eax, var_78
008E4264: push eax
008E4265: lea eax, var_68
008E4268: push eax
008E4269: lea eax, var_58
008E426C: push eax
008E426D: push 00000010h
008E426F: lea eax, var_48
008E4272: push eax
008E4273: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008E4278: lea eax, var_78
008E427B: push eax
008E427C: lea eax, var_68
008E427F: push eax
008E4280: lea eax, var_58
008E4283: push eax
008E4284: lea eax, var_48
008E4287: push eax
008E4288: push 00000004h
008E428A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E428F: add esp, 00000014h
008E4292: jmp 008E4D70h
008E4297: cmp word ptr [008F2430h], FFFFh
008E429F: jnz 008E480Dh
008E42A5: push 00000000h
008E42A7: push 00000000h
008E42A9: mov eax, [ebp+08h]
008E42AC: mov eax, [eax]
008E42AE: push [ebp+08h]
008E42B1: call [eax+0000033Ch]
008E42B7: push eax
008E42B8: lea eax, var_30
008E42BB: push eax
008E42BC: call 00410A84h ; Set (object)
008E42C1: push eax
008E42C2: lea eax, var_48
008E42C5: push eax
008E42C6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E42CB: add esp, 00000010h
008E42CE: push eax
008E42CF: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E42D4: dec eax
008E42D5: neg eax
008E42D7: sbb eax, eax
008E42D9: inc eax
008E42DA: neg eax
008E42DC: mov var_000000C8, ax
008E42E3: lea ecx, var_30
008E42E6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E42EB: lea ecx, var_48
008E42EE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E42F3: movsx eax, word ptr var_000000C8
008E42FA: test eax, eax
008E42FC: jz 008E4724h
008E4302: mov var_00000084, 00000001h
008E430C: mov var_0000008C, 00000002h
008E4316: cmp [008F2010h], 00000000h
008E431D: jnz 8E433Ah
008E431F: push 008F2010h
008E4324: push 00433984h
008E4329: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E432E: mov var_00000128, 008F2010h
008E4338: jmp 8E4344h
008E433A: mov var_00000128, 008F2010h
008E4344: push 00000000h
008E4346: push 00000001h
008E4348: push 00440E48h
008E434D: push 00000000h
008E434F: push 00000018h
008E4351: mov eax, var_00000128
008E4357: mov eax, [eax]
008E4359: mov ecx, var_00000128
008E435F: mov ecx, [ecx]
008E4361: mov ecx, [ecx]
008E4363: push eax
008E4364: call [ecx+0000054Ch]
008E436A: push eax
008E436B: lea eax, var_30
008E436E: push eax
008E436F: call 00410A84h ; Set (object)
008E4374: push eax
008E4375: lea eax, var_48
008E4378: push eax
008E4379: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E437E: add esp, 00000010h
008E4381: push eax
008E4382: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E4387: push eax
008E4388: lea eax, var_34
008E438B: push eax
008E438C: call 00410A84h ; Set (object)
008E4391: push eax
008E4392: lea eax, var_58
008E4395: push eax
008E4396: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E439B: add esp, 00000010h
008E439E: push eax
008E439F: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E43A4: mov var_00000094, eax
008E43AA: mov var_0000009C, 00000003h
008E43B4: mov var_000000A4, 00000001h
008E43BE: mov var_000000AC, 00000002h
008E43C8: lea eax, var_0000008C
008E43CE: push eax
008E43CF: lea eax, var_0000009C
008E43D5: push eax
008E43D6: lea eax, var_000000AC
008E43DC: push eax
008E43DD: lea eax, var_000000F0
008E43E3: push eax
008E43E4: lea eax, var_000000E0
008E43EA: push eax
008E43EB: lea eax, var_24
008E43EE: push eax
008E43EF: call 00410A3Ch ; For
008E43F4: mov var_0000011C, eax
008E43FA: lea eax, var_34
008E43FD: push eax
008E43FE: lea eax, var_30
008E4401: push eax
008E4402: push 00000002h
008E4404: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E4409: add esp, 0000000Ch
008E440C: lea eax, var_58
008E440F: push eax
008E4410: lea eax, var_48
008E4413: push eax
008E4414: push 00000002h
008E4416: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E441B: add esp, 0000000Ch
008E441E: jmp 008E4712h
008E4423: lea eax, var_24
008E4426: mov var_00000084, eax
008E442C: mov var_0000008C, 0000400Ch
008E4436: cmp [008F2010h], 00000000h
008E443D: jnz 8E445Ah
008E443F: push 008F2010h
008E4444: push 00433984h
008E4449: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E444E: mov var_0000012C, 008F2010h
008E4458: jmp 8E4464h
008E445A: mov var_0000012C, 008F2010h
008E4464: push 00000000h
008E4466: push 00000004h
008E4468: push 00440E58h
008E446D: push 00000010h
008E446F: pop eax
008E4470: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E4475: lea esi, var_0000008C
008E447B: mov edi, esp
008E447D: movsd 
008E447E: movsd 
008E447F: movsd 
008E4480: movsd 
008E4481: push 00000001h
008E4483: push 00000000h
008E4485: push 00440E48h
008E448A: push 00000000h
008E448C: push 00000018h
008E448E: mov eax, var_0000012C
008E4494: mov eax, [eax]
008E4496: mov ecx, var_0000012C
008E449C: mov ecx, [ecx]
008E449E: mov ecx, [ecx]
008E44A0: push eax
008E44A1: call [ecx+0000054Ch]
008E44A7: push eax
008E44A8: lea eax, var_30
008E44AB: push eax
008E44AC: call 00410A84h ; Set (object)
008E44B1: push eax
008E44B2: lea eax, var_48
008E44B5: push eax
008E44B6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E44BB: add esp, 00000010h
008E44BE: push eax
008E44BF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E44C4: push eax
008E44C5: lea eax, var_34
008E44C8: push eax
008E44C9: call 00410A84h ; Set (object)
008E44CE: push eax
008E44CF: lea eax, var_58
008E44D2: push eax
008E44D3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E44D8: add esp, 00000020h
008E44DB: push eax
008E44DC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E44E1: push eax
008E44E2: lea eax, var_38
008E44E5: push eax
008E44E6: call 00410A84h ; Set (object)
008E44EB: push eax
008E44EC: lea eax, var_68
008E44EF: push eax
008E44F0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E44F5: add esp, 00000010h
008E44F8: push eax
008E44F9: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008E44FE: sub ax, FFFFh
008E4502: neg ax
008E4505: sbb eax, eax
008E4507: inc eax
008E4508: neg eax
008E450A: mov var_000000C8, ax
008E4511: lea eax, var_38
008E4514: push eax
008E4515: lea eax, var_34
008E4518: push eax
008E4519: lea eax, var_30
008E451C: push eax
008E451D: push 00000003h
008E451F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E4524: add esp, 00000010h
008E4527: lea eax, var_68
008E452A: push eax
008E452B: lea eax, var_58
008E452E: push eax
008E452F: lea eax, var_48
008E4532: push eax
008E4533: push 00000003h
008E4535: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E453A: add esp, 00000010h
008E453D: movsx eax, word ptr var_000000C8
008E4544: test eax, eax
008E4546: jz 008E46F5h
008E454C: lea eax, var_24
008E454F: mov var_00000084, eax
008E4555: mov var_0000008C, 0000400Ch
008E455F: cmp [008F2010h], 00000000h
008E4566: jnz 8E4583h
008E4568: push 008F2010h
008E456D: push 00433984h
008E4572: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E4577: mov var_00000130, 008F2010h
008E4581: jmp 8E458Dh
008E4583: mov var_00000130, 008F2010h
008E458D: push 00000000h
008E458F: push 00000014h
008E4591: push 00440E58h
008E4596: push 00000010h
008E4598: pop eax
008E4599: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E459E: lea esi, var_0000008C
008E45A4: mov edi, esp
008E45A6: movsd 
008E45A7: movsd 
008E45A8: movsd 
008E45A9: movsd 
008E45AA: push 00000001h
008E45AC: push 00000000h
008E45AE: push 00440E48h
008E45B3: push 00000000h
008E45B5: push 00000018h
008E45B7: mov eax, var_00000130
008E45BD: mov eax, [eax]
008E45BF: mov ecx, var_00000130
008E45C5: mov ecx, [ecx]
008E45C7: mov ecx, [ecx]
008E45C9: push eax
008E45CA: call [ecx+0000054Ch]
008E45D0: push eax
008E45D1: lea eax, var_30
008E45D4: push eax
008E45D5: call 00410A84h ; Set (object)
008E45DA: push eax
008E45DB: lea eax, var_48
008E45DE: push eax
008E45DF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E45E4: add esp, 00000010h
008E45E7: push eax
008E45E8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E45ED: push eax
008E45EE: lea eax, var_34
008E45F1: push eax
008E45F2: call 00410A84h ; Set (object)
008E45F7: push eax
008E45F8: lea eax, var_58
008E45FB: push eax
008E45FC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E4601: add esp, 00000020h
008E4604: push eax
008E4605: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E460A: push eax
008E460B: lea eax, var_38
008E460E: push eax
008E460F: call 00410A84h ; Set (object)
008E4614: push eax
008E4615: lea eax, var_68
008E4618: push eax
008E4619: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E461E: add esp, 00000010h
008E4621: push eax
008E4622: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E4627: mov edx, eax
008E4629: lea ecx, var_28
008E462C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E4631: push eax
008E4632: call 004109DCh ; Val(arg_1)
008E4637: fstp real8 ptr var_000000C4
008E463D: push 00000000h
008E463F: push 00000000h
008E4641: push 00000001h
008E4643: push 00000000h
008E4645: lea eax, var_7C
008E4648: push eax
008E4649: push 00000010h
008E464B: push 00000880h
008E4650: call 00410946h ; ReDim
008E4655: add esp, 0000001Ch
008E4658: mov eax, [ebp+08h]
008E465B: mov eax, [eax]
008E465D: push [ebp+08h]
008E4660: call [eax+00000304h]
008E4666: mov var_70, eax
008E4669: mov var_78, 00000009h
008E4670: lea esi, var_78
008E4673: push 00000000h
008E4675: push var_7C
008E4678: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E467D: mov ecx, eax
008E467F: mov edx, esi
008E4681: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E4686: mov edx, 0043DAF0h ; x134
008E468B: lea ecx, var_2C
008E468E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E4693: lea eax, var_7C
008E4696: push eax
008E4697: lea eax, var_2C
008E469A: push eax
008E469B: fld real8 ptr var_000000C4
008E46A1: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E46A6: push eax
008E46A7: call 007A6910h
008E46AC: lea eax, var_7C
008E46AF: push eax
008E46B0: push 00000000h
008E46B2: call 00410934h ; Erase
008E46B7: lea eax, var_2C
008E46BA: push eax
008E46BB: lea eax, var_28
008E46BE: push eax
008E46BF: push 00000002h
008E46C1: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E46C6: add esp, 0000000Ch
008E46C9: lea eax, var_38
008E46CC: push eax
008E46CD: lea eax, var_34
008E46D0: push eax
008E46D1: lea eax, var_30
008E46D4: push eax
008E46D5: push 00000003h
008E46D7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E46DC: add esp, 00000010h
008E46DF: lea eax, var_68
008E46E2: push eax
008E46E3: lea eax, var_58
008E46E6: push eax
008E46E7: lea eax, var_48
008E46EA: push eax
008E46EB: push 00000003h
008E46ED: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E46F2: add esp, 00000010h
008E46F5: lea eax, var_000000F0
008E46FB: push eax
008E46FC: lea eax, var_000000E0
008E4702: push eax
008E4703: lea eax, var_24
008E4706: push eax
008E4707: call 00410A36h ; Next
008E470C: mov var_0000011C, eax
008E4712: cmp var_0000011C, 00000000h
008E4719: jnz 008E4423h
008E471F: jmp 008E4808h
008E4724: lea eax, var_28
008E4727: push eax
008E4728: mov eax, [ebp+08h]
008E472B: mov eax, [eax]
008E472D: push [ebp+08h]
008E4730: call [eax+000001C0h]
008E4736: fclex 
008E4738: mov var_000000C8, eax
008E473E: cmp var_000000C8, 00000000h
008E4745: jnl 8E4767h
008E4747: push 000001C0h
008E474C: push 00448930h
008E4751: push [ebp+08h]
008E4754: push var_000000C8
008E475A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E475F: mov var_00000134, eax
008E4765: jmp 8E476Eh
008E4767: and var_00000134, 00000000h
008E476E: push var_28
008E4771: call 004109DCh ; Val(arg_1)
008E4776: fstp real8 ptr var_000000C4
008E477C: push 00000000h
008E477E: push 00000000h
008E4780: push 00000001h
008E4782: push 00000000h
008E4784: lea eax, var_7C
008E4787: push eax
008E4788: push 00000010h
008E478A: push 00000880h
008E478F: call 00410946h ; ReDim
008E4794: add esp, 0000001Ch
008E4797: mov eax, [ebp+08h]
008E479A: mov eax, [eax]
008E479C: push [ebp+08h]
008E479F: call [eax+00000304h]
008E47A5: mov var_40, eax
008E47A8: mov var_48, 00000009h
008E47AF: lea esi, var_48
008E47B2: push 00000000h
008E47B4: push var_7C
008E47B7: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E47BC: mov ecx, eax
008E47BE: mov edx, esi
008E47C0: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E47C5: mov edx, 0043DAF0h ; x134
008E47CA: lea ecx, var_2C
008E47CD: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E47D2: lea eax, var_7C
008E47D5: push eax
008E47D6: lea eax, var_2C
008E47D9: push eax
008E47DA: fld real8 ptr var_000000C4
008E47E0: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E47E5: push eax
008E47E6: call 007A6910h
008E47EB: lea eax, var_7C
008E47EE: push eax
008E47EF: push 00000000h
008E47F1: call 00410934h ; Erase
008E47F6: lea eax, var_2C
008E47F9: push eax
008E47FA: lea eax, var_28
008E47FD: push eax
008E47FE: push 00000002h
008E4800: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E4805: add esp, 0000000Ch
008E4808: jmp 008E4D70h
008E480D: push 00000000h
008E480F: push 00000000h
008E4811: mov eax, [ebp+08h]
008E4814: mov eax, [eax]
008E4816: push [ebp+08h]
008E4819: call [eax+0000033Ch]
008E481F: push eax
008E4820: lea eax, var_30
008E4823: push eax
008E4824: call 00410A84h ; Set (object)
008E4829: push eax
008E482A: lea eax, var_48
008E482D: push eax
008E482E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E4833: add esp, 00000010h
008E4836: push eax
008E4837: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E483C: dec eax
008E483D: neg eax
008E483F: sbb eax, eax
008E4841: inc eax
008E4842: neg eax
008E4844: mov var_000000C8, ax
008E484B: lea ecx, var_30
008E484E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E4853: lea ecx, var_48
008E4856: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E485B: movsx eax, word ptr var_000000C8
008E4862: test eax, eax
008E4864: jz 008E4C8Ch
008E486A: mov var_00000084, 00000001h
008E4874: mov var_0000008C, 00000002h
008E487E: cmp [008F2010h], 00000000h
008E4885: jnz 8E48A2h
008E4887: push 008F2010h
008E488C: push 00433984h
008E4891: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E4896: mov var_00000138, 008F2010h
008E48A0: jmp 8E48ACh
008E48A2: mov var_00000138, 008F2010h
008E48AC: push 00000000h
008E48AE: push 00000001h
008E48B0: push 00440E48h
008E48B5: push 00000000h
008E48B7: push 00000018h
008E48B9: mov eax, var_00000138
008E48BF: mov eax, [eax]
008E48C1: mov ecx, var_00000138
008E48C7: mov ecx, [ecx]
008E48C9: mov ecx, [ecx]
008E48CB: push eax
008E48CC: call [ecx+00000550h]
008E48D2: push eax
008E48D3: lea eax, var_30
008E48D6: push eax
008E48D7: call 00410A84h ; Set (object)
008E48DC: push eax
008E48DD: lea eax, var_48
008E48E0: push eax
008E48E1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E48E6: add esp, 00000010h
008E48E9: push eax
008E48EA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E48EF: push eax
008E48F0: lea eax, var_34
008E48F3: push eax
008E48F4: call 00410A84h ; Set (object)
008E48F9: push eax
008E48FA: lea eax, var_58
008E48FD: push eax
008E48FE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E4903: add esp, 00000010h
008E4906: push eax
008E4907: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E490C: mov var_00000094, eax
008E4912: mov var_0000009C, 00000003h
008E491C: mov var_000000A4, 00000001h
008E4926: mov var_000000AC, 00000002h
008E4930: lea eax, var_0000008C
008E4936: push eax
008E4937: lea eax, var_0000009C
008E493D: push eax
008E493E: lea eax, var_000000AC
008E4944: push eax
008E4945: lea eax, var_00000110
008E494B: push eax
008E494C: lea eax, var_00000100
008E4952: push eax
008E4953: lea eax, var_24
008E4956: push eax
008E4957: call 00410A3Ch ; For
008E495C: mov var_00000120, eax
008E4962: lea eax, var_34
008E4965: push eax
008E4966: lea eax, var_30
008E4969: push eax
008E496A: push 00000002h
008E496C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E4971: add esp, 0000000Ch
008E4974: lea eax, var_58
008E4977: push eax
008E4978: lea eax, var_48
008E497B: push eax
008E497C: push 00000002h
008E497E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E4983: add esp, 0000000Ch
008E4986: jmp 008E4C7Ah
008E498B: lea eax, var_24
008E498E: mov var_00000084, eax
008E4994: mov var_0000008C, 0000400Ch
008E499E: cmp [008F2010h], 00000000h
008E49A5: jnz 8E49C2h
008E49A7: push 008F2010h
008E49AC: push 00433984h
008E49B1: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E49B6: mov var_0000013C, 008F2010h
008E49C0: jmp 8E49CCh
008E49C2: mov var_0000013C, 008F2010h
008E49CC: push 00000000h
008E49CE: push 00000004h
008E49D0: push 00440E58h
008E49D5: push 00000010h
008E49D7: pop eax
008E49D8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E49DD: lea esi, var_0000008C
008E49E3: mov edi, esp
008E49E5: movsd 
008E49E6: movsd 
008E49E7: movsd 
008E49E8: movsd 
008E49E9: push 00000001h
008E49EB: push 00000000h
008E49ED: push 00440E48h
008E49F2: push 00000000h
008E49F4: push 00000018h
008E49F6: mov eax, var_0000013C
008E49FC: mov eax, [eax]
008E49FE: mov ecx, var_0000013C
008E4A04: mov ecx, [ecx]
008E4A06: mov ecx, [ecx]
008E4A08: push eax
008E4A09: call [ecx+00000550h]
008E4A0F: push eax
008E4A10: lea eax, var_30
008E4A13: push eax
008E4A14: call 00410A84h ; Set (object)
008E4A19: push eax
008E4A1A: lea eax, var_48
008E4A1D: push eax
008E4A1E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E4A23: add esp, 00000010h
008E4A26: push eax
008E4A27: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E4A2C: push eax
008E4A2D: lea eax, var_34
008E4A30: push eax
008E4A31: call 00410A84h ; Set (object)
008E4A36: push eax
008E4A37: lea eax, var_58
008E4A3A: push eax
008E4A3B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E4A40: add esp, 00000020h
008E4A43: push eax
008E4A44: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E4A49: push eax
008E4A4A: lea eax, var_38
008E4A4D: push eax
008E4A4E: call 00410A84h ; Set (object)
008E4A53: push eax
008E4A54: lea eax, var_68
008E4A57: push eax
008E4A58: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E4A5D: add esp, 00000010h
008E4A60: push eax
008E4A61: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008E4A66: sub ax, FFFFh
008E4A6A: neg ax
008E4A6D: sbb eax, eax
008E4A6F: inc eax
008E4A70: neg eax
008E4A72: mov var_000000C8, ax
008E4A79: lea eax, var_38
008E4A7C: push eax
008E4A7D: lea eax, var_34
008E4A80: push eax
008E4A81: lea eax, var_30
008E4A84: push eax
008E4A85: push 00000003h
008E4A87: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E4A8C: add esp, 00000010h
008E4A8F: lea eax, var_68
008E4A92: push eax
008E4A93: lea eax, var_58
008E4A96: push eax
008E4A97: lea eax, var_48
008E4A9A: push eax
008E4A9B: push 00000003h
008E4A9D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E4AA2: add esp, 00000010h
008E4AA5: movsx eax, word ptr var_000000C8
008E4AAC: test eax, eax
008E4AAE: jz 008E4C5Dh
008E4AB4: lea eax, var_24
008E4AB7: mov var_00000084, eax
008E4ABD: mov var_0000008C, 0000400Ch
008E4AC7: cmp [008F2010h], 00000000h
008E4ACE: jnz 8E4AEBh
008E4AD0: push 008F2010h
008E4AD5: push 00433984h
008E4ADA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E4ADF: mov var_00000140, 008F2010h
008E4AE9: jmp 8E4AF5h
008E4AEB: mov var_00000140, 008F2010h
008E4AF5: push 00000000h
008E4AF7: push 00000014h
008E4AF9: push 00440E58h
008E4AFE: push 00000010h
008E4B00: pop eax
008E4B01: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E4B06: lea esi, var_0000008C
008E4B0C: mov edi, esp
008E4B0E: movsd 
008E4B0F: movsd 
008E4B10: movsd 
008E4B11: movsd 
008E4B12: push 00000001h
008E4B14: push 00000000h
008E4B16: push 00440E48h
008E4B1B: push 00000000h
008E4B1D: push 00000018h
008E4B1F: mov eax, var_00000140
008E4B25: mov eax, [eax]
008E4B27: mov ecx, var_00000140
008E4B2D: mov ecx, [ecx]
008E4B2F: mov ecx, [ecx]
008E4B31: push eax
008E4B32: call [ecx+00000550h]
008E4B38: push eax
008E4B39: lea eax, var_30
008E4B3C: push eax
008E4B3D: call 00410A84h ; Set (object)
008E4B42: push eax
008E4B43: lea eax, var_48
008E4B46: push eax
008E4B47: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E4B4C: add esp, 00000010h
008E4B4F: push eax
008E4B50: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E4B55: push eax
008E4B56: lea eax, var_34
008E4B59: push eax
008E4B5A: call 00410A84h ; Set (object)
008E4B5F: push eax
008E4B60: lea eax, var_58
008E4B63: push eax
008E4B64: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E4B69: add esp, 00000020h
008E4B6C: push eax
008E4B6D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E4B72: push eax
008E4B73: lea eax, var_38
008E4B76: push eax
008E4B77: call 00410A84h ; Set (object)
008E4B7C: push eax
008E4B7D: lea eax, var_68
008E4B80: push eax
008E4B81: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E4B86: add esp, 00000010h
008E4B89: push eax
008E4B8A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E4B8F: mov edx, eax
008E4B91: lea ecx, var_28
008E4B94: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E4B99: push eax
008E4B9A: call 004109DCh ; Val(arg_1)
008E4B9F: fstp real8 ptr var_000000C4
008E4BA5: push 00000000h
008E4BA7: push 00000000h
008E4BA9: push 00000001h
008E4BAB: push 00000000h
008E4BAD: lea eax, var_7C
008E4BB0: push eax
008E4BB1: push 00000010h
008E4BB3: push 00000880h
008E4BB8: call 00410946h ; ReDim
008E4BBD: add esp, 0000001Ch
008E4BC0: mov eax, [ebp+08h]
008E4BC3: mov eax, [eax]
008E4BC5: push [ebp+08h]
008E4BC8: call [eax+00000304h]
008E4BCE: mov var_70, eax
008E4BD1: mov var_78, 00000009h
008E4BD8: lea esi, var_78
008E4BDB: push 00000000h
008E4BDD: push var_7C
008E4BE0: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E4BE5: mov ecx, eax
008E4BE7: mov edx, esi
008E4BE9: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E4BEE: mov edx, 0043DAF0h ; x134
008E4BF3: lea ecx, var_2C
008E4BF6: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E4BFB: lea eax, var_7C
008E4BFE: push eax
008E4BFF: lea eax, var_2C
008E4C02: push eax
008E4C03: fld real8 ptr var_000000C4
008E4C09: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E4C0E: push eax
008E4C0F: call 007A6910h
008E4C14: lea eax, var_7C
008E4C17: push eax
008E4C18: push 00000000h
008E4C1A: call 00410934h ; Erase
008E4C1F: lea eax, var_2C
008E4C22: push eax
008E4C23: lea eax, var_28
008E4C26: push eax
008E4C27: push 00000002h
008E4C29: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E4C2E: add esp, 0000000Ch
008E4C31: lea eax, var_38
008E4C34: push eax
008E4C35: lea eax, var_34
008E4C38: push eax
008E4C39: lea eax, var_30
008E4C3C: push eax
008E4C3D: push 00000003h
008E4C3F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E4C44: add esp, 00000010h
008E4C47: lea eax, var_68
008E4C4A: push eax
008E4C4B: lea eax, var_58
008E4C4E: push eax
008E4C4F: lea eax, var_48
008E4C52: push eax
008E4C53: push 00000003h
008E4C55: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E4C5A: add esp, 00000010h
008E4C5D: lea eax, var_00000110
008E4C63: push eax
008E4C64: lea eax, var_00000100
008E4C6A: push eax
008E4C6B: lea eax, var_24
008E4C6E: push eax
008E4C6F: call 00410A36h ; Next
008E4C74: mov var_00000120, eax
008E4C7A: cmp var_00000120, 00000000h
008E4C81: jnz 008E498Bh
008E4C87: jmp 008E4D70h
008E4C8C: lea eax, var_28
008E4C8F: push eax
008E4C90: mov eax, [ebp+08h]
008E4C93: mov eax, [eax]
008E4C95: push [ebp+08h]
008E4C98: call [eax+000001C0h]
008E4C9E: fclex 
008E4CA0: mov var_000000C8, eax
008E4CA6: cmp var_000000C8, 00000000h
008E4CAD: jnl 8E4CCFh
008E4CAF: push 000001C0h
008E4CB4: push 00448930h
008E4CB9: push [ebp+08h]
008E4CBC: push var_000000C8
008E4CC2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E4CC7: mov var_00000144, eax
008E4CCD: jmp 8E4CD6h
008E4CCF: and var_00000144, 00000000h
008E4CD6: push var_28
008E4CD9: call 004109DCh ; Val(arg_1)
008E4CDE: fstp real8 ptr var_000000C4
008E4CE4: push 00000000h
008E4CE6: push 00000000h
008E4CE8: push 00000001h
008E4CEA: push 00000000h
008E4CEC: lea eax, var_7C
008E4CEF: push eax
008E4CF0: push 00000010h
008E4CF2: push 00000880h
008E4CF7: call 00410946h ; ReDim
008E4CFC: add esp, 0000001Ch
008E4CFF: mov eax, [ebp+08h]
008E4D02: mov eax, [eax]
008E4D04: push [ebp+08h]
008E4D07: call [eax+00000304h]
008E4D0D: mov var_40, eax
008E4D10: mov var_48, 00000009h
008E4D17: lea esi, var_48
008E4D1A: push 00000000h
008E4D1C: push var_7C
008E4D1F: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E4D24: mov ecx, eax
008E4D26: mov edx, esi
008E4D28: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E4D2D: mov edx, 0043DAF0h ; x134
008E4D32: lea ecx, var_2C
008E4D35: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E4D3A: lea eax, var_7C
008E4D3D: push eax
008E4D3E: lea eax, var_2C
008E4D41: push eax
008E4D42: fld real8 ptr var_000000C4
008E4D48: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E4D4D: push eax
008E4D4E: call 007A6910h
008E4D53: lea eax, var_7C
008E4D56: push eax
008E4D57: push 00000000h
008E4D59: call 00410934h ; Erase
008E4D5E: lea eax, var_2C
008E4D61: push eax
008E4D62: lea eax, var_28
008E4D65: push eax
008E4D66: push 00000002h
008E4D68: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E4D6D: add esp, 0000000Ch
008E4D70: mov var_04, 00000000h
008E4D77: wait 
008E4D78: push 008E4DFCh
008E4D7D: jmp 8E4DCDh
008E4D7F: lea eax, var_2C
008E4D82: push eax
008E4D83: lea eax, var_28
008E4D86: push eax
008E4D87: push 00000002h
008E4D89: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E4D8E: add esp, 0000000Ch
008E4D91: lea eax, var_38
008E4D94: push eax
008E4D95: lea eax, var_34
008E4D98: push eax
008E4D99: lea eax, var_30
008E4D9C: push eax
008E4D9D: push 00000003h
008E4D9F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E4DA4: add esp, 00000010h
008E4DA7: lea eax, var_78
008E4DAA: push eax
008E4DAB: lea eax, var_68
008E4DAE: push eax
008E4DAF: lea eax, var_58
008E4DB2: push eax
008E4DB3: lea eax, var_48
008E4DB6: push eax
008E4DB7: push 00000004h
008E4DB9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E4DBE: add esp, 00000014h
008E4DC1: lea eax, var_7C
008E4DC4: push eax
008E4DC5: push 00000000h
008E4DC7: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008E4DCC: ret 
End Sub

Private sub Form__8E9CC5
008E9CC5: push ebp
008E9CC6: mov ebp, esp
008E9CC8: sub esp, 0000000Ch
008E9CCB: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E9CD0: mov eax, fs:[00h]
008E9CD6: push eax
008E9CD7: mov fs:[00000000h], esp
008E9CDE: mov eax, 000000A0h
008E9CE3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E9CE8: push ebx
008E9CE9: push esi
008E9CEA: push edi
008E9CEB: mov var_0C, esp
008E9CEE: mov var_08, 004104D8h
008E9CF5: mov eax, [ebp+08h]
008E9CF8: and eax, 00000001h
008E9CFB: mov var_04, eax
008E9CFE: mov eax, [ebp+08h]
008E9D01: and al, FEh
008E9D03: mov [ebp+08h], eax
008E9D06: mov eax, [ebp+08h]
008E9D09: mov eax, [eax]
008E9D0B: push [ebp+08h]
008E9D0E: call [eax+04h]
008E9D11: mov var_34, 80020004h
008E9D18: mov var_3C, 0000000Ah
008E9D1F: mov var_54, 80020004h
008E9D26: mov var_5C, 0000000Ah
008E9D2D: mov var_74, 004597F8h ; Nickname
008E9D34: mov var_7C, 00000008h
008E9D3B: mov var_00000094, 00001388h
008E9D45: mov var_0000009C, 00000002h
008E9D4F: push 00000010h
008E9D51: pop eax
008E9D52: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E9D57: lea esi, var_3C
008E9D5A: mov edi, esp
008E9D5C: movsd 
008E9D5D: movsd 
008E9D5E: movsd 
008E9D5F: movsd 
008E9D60: push 00000010h
008E9D62: pop eax
008E9D63: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E9D68: lea esi, var_5C
008E9D6B: mov edi, esp
008E9D6D: movsd 
008E9D6E: movsd 
008E9D6F: movsd 
008E9D70: movsd 
008E9D71: push 00000010h
008E9D73: pop eax
008E9D74: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E9D79: lea esi, var_7C
008E9D7C: mov edi, esp
008E9D7E: movsd 
008E9D7F: movsd 
008E9D80: movsd 
008E9D81: movsd 
008E9D82: push 00000010h
008E9D84: pop eax
008E9D85: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E9D8A: lea esi, var_0000009C
008E9D90: mov edi, esp
008E9D92: movsd 
008E9D93: movsd 
008E9D94: movsd 
008E9D95: movsd 
008E9D96: push 00000004h
008E9D98: push 00000002h
008E9D9A: push 00445534h
008E9D9F: push 00000000h
008E9DA1: push 00000019h
008E9DA3: mov eax, [ebp+08h]
008E9DA6: mov eax, [eax]
008E9DA8: push [ebp+08h]
008E9DAB: call [eax+00000328h]
008E9DB1: push eax
008E9DB2: lea eax, var_18
008E9DB5: push eax
008E9DB6: call 00410A84h ; Set (object)
008E9DBB: push eax
008E9DBC: lea eax, var_2C
008E9DBF: push eax
008E9DC0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E9DC5: add esp, 00000010h
008E9DC8: push eax
008E9DC9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E9DCE: push eax
008E9DCF: lea eax, var_1C
008E9DD2: push eax
008E9DD3: call 00410A84h ; Set (object)
008E9DD8: push eax
008E9DD9: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008E9DDE: add esp, 0000004Ch
008E9DE1: lea eax, var_1C
008E9DE4: push eax
008E9DE5: lea eax, var_18
008E9DE8: push eax
008E9DE9: push 00000002h
008E9DEB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E9DF0: add esp, 0000000Ch
008E9DF3: lea ecx, var_2C
008E9DF6: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E9DFB: mov var_34, 80020004h
008E9E02: mov var_3C, 0000000Ah
008E9E09: mov var_54, 80020004h
008E9E10: mov var_5C, 0000000Ah
008E9E17: mov var_74, 0046172Ch ; Skype name
008E9E1E: mov var_7C, 00000008h
008E9E25: mov var_00000094, 00000DACh
008E9E2F: mov var_0000009C, 00000002h
008E9E39: push 00000010h
008E9E3B: pop eax
008E9E3C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E9E41: lea esi, var_3C
008E9E44: mov edi, esp
008E9E46: movsd 
008E9E47: movsd 
008E9E48: movsd 
008E9E49: movsd 
008E9E4A: push 00000010h
008E9E4C: pop eax
008E9E4D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E9E52: lea esi, var_5C
008E9E55: mov edi, esp
008E9E57: movsd 
008E9E58: movsd 
008E9E59: movsd 
008E9E5A: movsd 
008E9E5B: push 00000010h
008E9E5D: pop eax
008E9E5E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E9E63: lea esi, var_7C
008E9E66: mov edi, esp
008E9E68: movsd 
008E9E69: movsd 
008E9E6A: movsd 
008E9E6B: movsd 
008E9E6C: push 00000010h
008E9E6E: pop eax
008E9E6F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E9E74: lea esi, var_0000009C
008E9E7A: mov edi, esp
008E9E7C: movsd 
008E9E7D: movsd 
008E9E7E: movsd 
008E9E7F: movsd 
008E9E80: push 00000004h
008E9E82: push 00000002h
008E9E84: push 00445534h
008E9E89: push 00000000h
008E9E8B: push 00000019h
008E9E8D: mov eax, [ebp+08h]
008E9E90: mov eax, [eax]
008E9E92: push [ebp+08h]
008E9E95: call [eax+00000328h]
008E9E9B: push eax
008E9E9C: lea eax, var_18
008E9E9F: push eax
008E9EA0: call 00410A84h ; Set (object)
008E9EA5: push eax
008E9EA6: lea eax, var_2C
008E9EA9: push eax
008E9EAA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E9EAF: add esp, 00000010h
008E9EB2: push eax
008E9EB3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E9EB8: push eax
008E9EB9: lea eax, var_1C
008E9EBC: push eax
008E9EBD: call 00410A84h ; Set (object)
008E9EC2: push eax
008E9EC3: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008E9EC8: add esp, 0000004Ch
008E9ECB: lea eax, var_1C
008E9ECE: push eax
008E9ECF: lea eax, var_18
008E9ED2: push eax
008E9ED3: push 00000002h
008E9ED5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E9EDA: add esp, 0000000Ch
008E9EDD: lea ecx, var_2C
008E9EE0: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E9EE5: mov var_34, 80020004h
008E9EEC: mov var_3C, 0000000Ah
008E9EF3: mov var_54, 80020004h
008E9EFA: mov var_5C, 0000000Ah
008E9F01: mov var_74, 004468A0h ; Status
008E9F08: mov var_7C, 00000008h
008E9F0F: mov var_00000094, 000005DCh
008E9F19: mov var_0000009C, 00000002h
008E9F23: push 00000010h
008E9F25: pop eax
008E9F26: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E9F2B: lea esi, var_3C
008E9F2E: mov edi, esp
008E9F30: movsd 
008E9F31: movsd 
008E9F32: movsd 
008E9F33: movsd 
008E9F34: push 00000010h
008E9F36: pop eax
008E9F37: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E9F3C: lea esi, var_5C
008E9F3F: mov edi, esp
008E9F41: movsd 
008E9F42: movsd 
008E9F43: movsd 
008E9F44: movsd 
008E9F45: push 00000010h
008E9F47: pop eax
008E9F48: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E9F4D: lea esi, var_7C
008E9F50: mov edi, esp
008E9F52: movsd 
008E9F53: movsd 
008E9F54: movsd 
008E9F55: movsd 
008E9F56: push 00000010h
008E9F58: pop eax
008E9F59: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E9F5E: lea esi, var_0000009C
008E9F64: mov edi, esp
008E9F66: movsd 
008E9F67: movsd 
008E9F68: movsd 
008E9F69: movsd 
008E9F6A: push 00000004h
008E9F6C: push 00000002h
008E9F6E: push 00445534h
008E9F73: push 00000000h
008E9F75: push 00000019h
008E9F77: mov eax, [ebp+08h]
008E9F7A: mov eax, [eax]
008E9F7C: push [ebp+08h]
008E9F7F: call [eax+00000328h]
008E9F85: push eax
008E9F86: lea eax, var_18
008E9F89: push eax
008E9F8A: call 00410A84h ; Set (object)
008E9F8F: push eax
008E9F90: lea eax, var_2C
008E9F93: push eax
008E9F94: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E9F99: add esp, 00000010h
008E9F9C: push eax
008E9F9D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E9FA2: push eax
008E9FA3: lea eax, var_1C
008E9FA6: push eax
008E9FA7: call 00410A84h ; Set (object)
008E9FAC: push eax
008E9FAD: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008E9FB2: add esp, 0000004Ch
008E9FB5: lea eax, var_1C
008E9FB8: push eax
008E9FB9: lea eax, var_18
008E9FBC: push eax
008E9FBD: push 00000002h
008E9FBF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E9FC4: add esp, 0000000Ch
008E9FC7: lea ecx, var_2C
008E9FCA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E9FCF: mov var_34, 80020004h
008E9FD6: mov var_3C, 0000000Ah
008E9FDD: mov var_54, 80020004h
008E9FE4: mov var_5C, 0000000Ah
008E9FEB: mov var_74, 00459820h ; Blocked
008E9FF2: mov var_7C, 00000008h
008E9FF9: mov var_00000094, 000003E8h
008EA003: mov var_0000009C, 00000002h
008EA00D: push 00000010h
008EA00F: pop eax
008EA010: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA015: lea esi, var_3C
008EA018: mov edi, esp
008EA01A: movsd 
008EA01B: movsd 
008EA01C: movsd 
008EA01D: movsd 
008EA01E: push 00000010h
008EA020: pop eax
008EA021: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA026: lea esi, var_5C
008EA029: mov edi, esp
008EA02B: movsd 
008EA02C: movsd 
008EA02D: movsd 
008EA02E: movsd 
008EA02F: push 00000010h
008EA031: pop eax
008EA032: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA037: lea esi, var_7C
008EA03A: mov edi, esp
008EA03C: movsd 
008EA03D: movsd 
008EA03E: movsd 
008EA03F: movsd 
008EA040: push 00000010h
008EA042: pop eax
008EA043: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA048: lea esi, var_0000009C
008EA04E: mov edi, esp
008EA050: movsd 
008EA051: movsd 
008EA052: movsd 
008EA053: movsd 
008EA054: push 00000004h
008EA056: push 00000002h
008EA058: push 00445534h
008EA05D: push 00000000h
008EA05F: push 00000019h
008EA061: mov eax, [ebp+08h]
008EA064: mov eax, [eax]
008EA066: push [ebp+08h]
008EA069: call [eax+00000328h]
008EA06F: push eax
008EA070: lea eax, var_18
008EA073: push eax
008EA074: call 00410A84h ; Set (object)
008EA079: push eax
008EA07A: lea eax, var_2C
008EA07D: push eax
008EA07E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EA083: add esp, 00000010h
008EA086: push eax
008EA087: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EA08C: push eax
008EA08D: lea eax, var_1C
008EA090: push eax
008EA091: call 00410A84h ; Set (object)
008EA096: push eax
008EA097: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008EA09C: add esp, 0000004Ch
008EA09F: lea eax, var_1C
008EA0A2: push eax
008EA0A3: lea eax, var_18
008EA0A6: push eax
008EA0A7: push 00000002h
008EA0A9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EA0AE: add esp, 0000000Ch
008EA0B1: lea ecx, var_2C
008EA0B4: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008EA0B9: mov var_04, 00000000h
008EA0C0: push 008EA0E3h
008EA0C5: jmp 8EA0E2h
008EA0C7: lea eax, var_1C
008EA0CA: push eax
008EA0CB: lea eax, var_18
008EA0CE: push eax
008EA0CF: push 00000002h
008EA0D1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EA0D6: add esp, 0000000Ch
008EA0D9: lea ecx, var_2C
008EA0DC: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008EA0E1: ret 
End Sub

Private sub Form__8EA102
008EA102: push ebp
008EA103: mov ebp, esp
008EA105: sub esp, 00000018h
008EA108: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008EA10D: mov eax, fs:[00h]
008EA113: push eax
008EA114: mov fs:[00000000h], esp
008EA11B: mov eax, 000000E0h
008EA120: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA125: push ebx
008EA126: push esi
008EA127: push edi
008EA128: mov var_18, esp
008EA12B: mov var_14, 004104E8h
008EA132: mov eax, [ebp+08h]
008EA135: and eax, 00000001h
008EA138: mov var_10, eax
008EA13B: mov eax, [ebp+08h]
008EA13E: and al, FEh
008EA140: mov [ebp+08h], eax
008EA143: mov var_0C, 00000000h
008EA14A: mov eax, [ebp+08h]
008EA14D: mov eax, [eax]
008EA14F: push [ebp+08h]
008EA152: call [eax+04h]
008EA155: mov var_04, 00000001h
008EA15C: mov var_04, 00000002h
008EA163: push FFFFFFFFh
008EA165: call 00410A60h ; On Error ...
008EA16A: mov var_04, 00000003h
008EA171: push 00000000h
008EA173: push 80010006h
008EA178: mov eax, [ebp+08h]
008EA17B: mov eax, [eax]
008EA17D: push [ebp+08h]
008EA180: call [eax+0000032Ch]
008EA186: push eax
008EA187: lea eax, var_24
008EA18A: push eax
008EA18B: call 00410A84h ; Set (object)
008EA190: push eax
008EA191: lea eax, var_3C
008EA194: push eax
008EA195: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EA19A: add esp, 00000010h
008EA19D: fldz 
008EA19F: fstp real4 ptr var_54
008EA1A2: mov var_5C, 00000004h
008EA1A9: and var_74, 00000000h
008EA1AD: mov var_7C, 00000002h
008EA1B4: lea eax, var_000000D0
008EA1BA: push eax
008EA1BB: mov eax, [ebp+08h]
008EA1BE: mov eax, [eax]
008EA1C0: push [ebp+08h]
008EA1C3: call [eax+00000080h]
008EA1C9: fclex 
008EA1CB: mov var_000000D8, eax
008EA1D1: cmp var_000000D8, 00000000h
008EA1D8: jnl 8EA1FAh
008EA1DA: push 00000080h
008EA1DF: push 00448930h
008EA1E4: push [ebp+08h]
008EA1E7: push var_000000D8
008EA1ED: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008EA1F2: mov var_000000F4, eax
008EA1F8: jmp 8EA201h
008EA1FA: and var_000000F4, 00000000h
008EA201: fld real4 ptr var_000000D0
008EA207: fsub real4 ptr [00402BA4h]
008EA20D: fstp real4 ptr var_00000094
008EA213: fstsw ax
008EA215: test al, 0Dh
008EA217: jnz 008EA520h
008EA21D: mov var_0000009C, 00000004h
008EA227: lea eax, var_000000D4
008EA22D: push eax
008EA22E: mov eax, [ebp+08h]
008EA231: mov eax, [eax]
008EA233: push [ebp+08h]
008EA236: call [eax+00000088h]
008EA23C: fclex 
008EA23E: mov var_000000DC, eax
008EA244: cmp var_000000DC, 00000000h
008EA24B: jnl 8EA26Dh
008EA24D: push 00000088h
008EA252: push 00448930h
008EA257: push [ebp+08h]
008EA25A: push var_000000DC
008EA260: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008EA265: mov var_000000F8, eax
008EA26B: jmp 8EA274h
008EA26D: and var_000000F8, 00000000h
008EA274: lea eax, var_3C
008EA277: push eax
008EA278: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008EA27D: fsubr real4 ptr var_000000D4
008EA283: fsub real4 ptr [0040DF3Ch]
008EA289: fstp real4 ptr var_000000B4
008EA28F: fstsw ax
008EA291: test al, 0Dh
008EA293: jnz 008EA520h
008EA299: mov var_000000BC, 00000004h
008EA2A3: push 00000010h
008EA2A5: pop eax
008EA2A6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA2AB: lea esi, var_5C
008EA2AE: mov edi, esp
008EA2B0: movsd 
008EA2B1: movsd 
008EA2B2: movsd 
008EA2B3: movsd 
008EA2B4: push 00000010h
008EA2B6: pop eax
008EA2B7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA2BC: lea esi, var_7C
008EA2BF: mov edi, esp
008EA2C1: movsd 
008EA2C2: movsd 
008EA2C3: movsd 
008EA2C4: movsd 
008EA2C5: push 00000010h
008EA2C7: pop eax
008EA2C8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA2CD: lea esi, var_0000009C
008EA2D3: mov edi, esp
008EA2D5: movsd 
008EA2D6: movsd 
008EA2D7: movsd 
008EA2D8: movsd 
008EA2D9: push 00000010h
008EA2DB: pop eax
008EA2DC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA2E1: lea esi, var_000000BC
008EA2E7: mov edi, esp
008EA2E9: movsd 
008EA2EA: movsd 
008EA2EB: movsd 
008EA2EC: movsd 
008EA2ED: push 00000004h
008EA2EF: push 80011002h
008EA2F4: mov eax, [ebp+08h]
008EA2F7: mov eax, [eax]
008EA2F9: push [ebp+08h]
008EA2FC: call [eax+00000328h]
008EA302: push eax
008EA303: lea eax, var_28
008EA306: push eax
008EA307: call 00410A84h ; Set (object)
008EA30C: push eax
008EA30D: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008EA312: add esp, 0000004Ch
008EA315: lea eax, var_28
008EA318: push eax
008EA319: lea eax, var_24
008EA31C: push eax
008EA31D: push 00000002h
008EA31F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EA324: add esp, 0000000Ch
008EA327: lea ecx, var_3C
008EA32A: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008EA32F: mov var_04, 00000004h
008EA336: push 00000000h
008EA338: push 80010006h
008EA33D: mov eax, [ebp+08h]
008EA340: mov eax, [eax]
008EA342: push [ebp+08h]
008EA345: call [eax+00000328h]
008EA34B: push eax
008EA34C: lea eax, var_28
008EA34F: push eax
008EA350: call 00410A84h ; Set (object)
008EA355: push eax
008EA356: lea eax, var_4C
008EA359: push eax
008EA35A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EA35F: add esp, 00000010h
008EA362: fldz 
008EA364: fstp real4 ptr var_54
008EA367: mov var_5C, 00000004h
008EA36E: push 00000000h
008EA370: push 80010004h
008EA375: mov eax, [ebp+08h]
008EA378: mov eax, [eax]
008EA37A: push [ebp+08h]
008EA37D: call [eax+00000328h]
008EA383: push eax
008EA384: lea eax, var_24
008EA387: push eax
008EA388: call 00410A84h ; Set (object)
008EA38D: push eax
008EA38E: lea eax, var_3C
008EA391: push eax
008EA392: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EA397: add esp, 00000010h
008EA39A: push eax
008EA39B: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008EA3A0: fstp real4 ptr var_000000FC
008EA3A6: lea eax, var_4C
008EA3A9: push eax
008EA3AA: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008EA3AF: fadd real4 ptr var_000000FC
008EA3B5: fadd real4 ptr [00402BA8h]
008EA3BB: fstp real4 ptr var_74
008EA3BE: fstsw ax
008EA3C0: test al, 0Dh
008EA3C2: jnz 008EA520h
008EA3C8: mov var_7C, 00000004h
008EA3CF: lea eax, var_000000D0
008EA3D5: push eax
008EA3D6: mov eax, [ebp+08h]
008EA3D9: mov eax, [eax]
008EA3DB: push [ebp+08h]
008EA3DE: call [eax+00000080h]
008EA3E4: fclex 
008EA3E6: mov var_000000D8, eax
008EA3EC: cmp var_000000D8, 00000000h
008EA3F3: jnl 8EA415h
008EA3F5: push 00000080h
008EA3FA: push 00448930h
008EA3FF: push [ebp+08h]
008EA402: push var_000000D8
008EA408: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008EA40D: mov var_00000100, eax
008EA413: jmp 8EA41Ch
008EA415: and var_00000100, 00000000h
008EA41C: fld real4 ptr var_000000D0
008EA422: fsub real4 ptr [00402BA4h]
008EA428: fstp real4 ptr var_00000094
008EA42E: fstsw ax
008EA430: test al, 0Dh
008EA432: jnz 008EA520h
008EA438: mov var_0000009C, 00000004h
008EA442: push 00000010h
008EA444: pop eax
008EA445: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA44A: lea esi, var_5C
008EA44D: mov edi, esp
008EA44F: movsd 
008EA450: movsd 
008EA451: movsd 
008EA452: movsd 
008EA453: push 00000010h
008EA455: pop eax
008EA456: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA45B: lea esi, var_7C
008EA45E: mov edi, esp
008EA460: movsd 
008EA461: movsd 
008EA462: movsd 
008EA463: movsd 
008EA464: push 00000010h
008EA466: pop eax
008EA467: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA46C: lea esi, var_0000009C
008EA472: mov edi, esp
008EA474: movsd 
008EA475: movsd 
008EA476: movsd 
008EA477: movsd 
008EA478: push 00000003h
008EA47A: push 80011001h
008EA47F: mov eax, [ebp+08h]
008EA482: mov eax, [eax]
008EA484: push [ebp+08h]
008EA487: call [eax+0000032Ch]
008EA48D: push eax
008EA48E: lea eax, var_2C
008EA491: push eax
008EA492: call 00410A84h ; Set (object)
008EA497: push eax
008EA498: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008EA49D: add esp, 0000003Ch
008EA4A0: lea eax, var_2C
008EA4A3: push eax
008EA4A4: lea eax, var_28
008EA4A7: push eax
008EA4A8: lea eax, var_24
008EA4AB: push eax
008EA4AC: push 00000003h
008EA4AE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EA4B3: add esp, 00000010h
008EA4B6: lea eax, var_4C
008EA4B9: push eax
008EA4BA: lea eax, var_3C
008EA4BD: push eax
008EA4BE: push 00000002h
008EA4C0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EA4C5: add esp, 0000000Ch
008EA4C8: mov var_10, 00000000h
008EA4CF: wait 
008EA4D0: push 008EA501h
008EA4D5: jmp 8EA500h
008EA4D7: lea eax, var_2C
008EA4DA: push eax
008EA4DB: lea eax, var_28
008EA4DE: push eax
008EA4DF: lea eax, var_24
008EA4E2: push eax
008EA4E3: push 00000003h
008EA4E5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EA4EA: add esp, 00000010h
008EA4ED: lea eax, var_4C
008EA4F0: push eax
008EA4F1: lea eax, var_3C
008EA4F4: push eax
008EA4F5: push 00000002h
008EA4F7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EA4FC: add esp, 0000000Ch
008EA4FF: ret 
End Sub

Private sub cmdUnblockContact__8E8FCA
008E8FCA: push ebp
008E8FCB: mov ebp, esp
008E8FCD: sub esp, 0000000Ch
008E8FD0: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E8FD5: mov eax, fs:[00h]
008E8FDB: push eax
008E8FDC: mov fs:[00000000h], esp
008E8FE3: mov eax, 00000130h
008E8FE8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E8FED: push ebx
008E8FEE: push esi
008E8FEF: push edi
008E8FF0: mov var_0C, esp
008E8FF3: mov var_08, 004104C8h
008E8FFA: mov eax, [ebp+08h]
008E8FFD: and eax, 00000001h
008E9000: mov var_04, eax
008E9003: mov eax, [ebp+08h]
008E9006: and al, FEh
008E9008: mov [ebp+08h], eax
008E900B: mov eax, [ebp+08h]
008E900E: mov eax, [eax]
008E9010: push [ebp+08h]
008E9013: call [eax+04h]
008E9016: mov eax, [ebp+08h]
008E9019: mov eax, [eax]
008E901B: push [ebp+08h]
008E901E: call [eax+00000304h]
008E9024: push eax
008E9025: lea eax, var_30
008E9028: push eax
008E9029: call 00410A84h ; Set (object)
008E902E: mov var_000000C8, eax
008E9034: lea eax, var_28
008E9037: push eax
008E9038: mov eax, var_000000C8
008E903E: mov eax, [eax]
008E9040: push var_000000C8
008E9046: call [eax+000000A0h]
008E904C: fclex 
008E904E: mov var_000000CC, eax
008E9054: cmp var_000000CC, 00000000h
008E905B: jnl 8E9080h
008E905D: push 000000A0h
008E9062: push 00440E08h
008E9067: push var_000000C8
008E906D: push var_000000CC
008E9073: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E9078: mov var_00000124, eax
008E907E: jmp 8E9087h
008E9080: and var_00000124, 00000000h
008E9087: push var_28
008E908A: call 0041098Eh ; Len(arg_1)
008E908F: xor ecx, ecx
008E9091: cmp eax, 00000003h
008E9094: setle cl
008E9097: neg ecx
008E9099: mov var_000000D0, cx
008E90A0: lea ecx, var_28
008E90A3: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008E90A8: lea ecx, var_30
008E90AB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E90B0: movsx eax, word ptr var_000000D0
008E90B7: test eax, eax
008E90B9: jz 008E9141h
008E90BF: mov var_70, 80020004h
008E90C6: mov var_78, 0000000Ah
008E90CD: mov var_60, 80020004h
008E90D4: mov var_68, 0000000Ah
008E90DB: mov var_50, 80020004h
008E90E2: mov var_58, 0000000Ah
008E90E9: mov var_00000084, 00459330h ; Invalid email
008E90F3: mov var_0000008C, 00000008h
008E90FD: lea edx, var_0000008C
008E9103: lea ecx, var_48
008E9106: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008E910B: lea eax, var_78
008E910E: push eax
008E910F: lea eax, var_68
008E9112: push eax
008E9113: lea eax, var_58
008E9116: push eax
008E9117: push 00000010h
008E9119: lea eax, var_48
008E911C: push eax
008E911D: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008E9122: lea eax, var_78
008E9125: push eax
008E9126: lea eax, var_68
008E9129: push eax
008E912A: lea eax, var_58
008E912D: push eax
008E912E: lea eax, var_48
008E9131: push eax
008E9132: push 00000004h
008E9134: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E9139: add esp, 00000014h
008E913C: jmp 008E9C1Ah
008E9141: cmp word ptr [008F2430h], FFFFh
008E9149: jnz 008E96B7h
008E914F: push 00000000h
008E9151: push 00000000h
008E9153: mov eax, [ebp+08h]
008E9156: mov eax, [eax]
008E9158: push [ebp+08h]
008E915B: call [eax+0000033Ch]
008E9161: push eax
008E9162: lea eax, var_30
008E9165: push eax
008E9166: call 00410A84h ; Set (object)
008E916B: push eax
008E916C: lea eax, var_48
008E916F: push eax
008E9170: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E9175: add esp, 00000010h
008E9178: push eax
008E9179: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E917E: dec eax
008E917F: neg eax
008E9181: sbb eax, eax
008E9183: inc eax
008E9184: neg eax
008E9186: mov var_000000C8, ax
008E918D: lea ecx, var_30
008E9190: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E9195: lea ecx, var_48
008E9198: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E919D: movsx eax, word ptr var_000000C8
008E91A4: test eax, eax
008E91A6: jz 008E95CEh
008E91AC: mov var_00000084, 00000001h
008E91B6: mov var_0000008C, 00000002h
008E91C0: cmp [008F2010h], 00000000h
008E91C7: jnz 8E91E4h
008E91C9: push 008F2010h
008E91CE: push 00433984h
008E91D3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E91D8: mov var_00000128, 008F2010h
008E91E2: jmp 8E91EEh
008E91E4: mov var_00000128, 008F2010h
008E91EE: push 00000000h
008E91F0: push 00000001h
008E91F2: push 00440E48h
008E91F7: push 00000000h
008E91F9: push 00000018h
008E91FB: mov eax, var_00000128
008E9201: mov eax, [eax]
008E9203: mov ecx, var_00000128
008E9209: mov ecx, [ecx]
008E920B: mov ecx, [ecx]
008E920D: push eax
008E920E: call [ecx+0000054Ch]
008E9214: push eax
008E9215: lea eax, var_30
008E9218: push eax
008E9219: call 00410A84h ; Set (object)
008E921E: push eax
008E921F: lea eax, var_48
008E9222: push eax
008E9223: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E9228: add esp, 00000010h
008E922B: push eax
008E922C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E9231: push eax
008E9232: lea eax, var_34
008E9235: push eax
008E9236: call 00410A84h ; Set (object)
008E923B: push eax
008E923C: lea eax, var_58
008E923F: push eax
008E9240: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E9245: add esp, 00000010h
008E9248: push eax
008E9249: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E924E: mov var_00000094, eax
008E9254: mov var_0000009C, 00000003h
008E925E: mov var_000000A4, 00000001h
008E9268: mov var_000000AC, 00000002h
008E9272: lea eax, var_0000008C
008E9278: push eax
008E9279: lea eax, var_0000009C
008E927F: push eax
008E9280: lea eax, var_000000AC
008E9286: push eax
008E9287: lea eax, var_000000F0
008E928D: push eax
008E928E: lea eax, var_000000E0
008E9294: push eax
008E9295: lea eax, var_24
008E9298: push eax
008E9299: call 00410A3Ch ; For
008E929E: mov var_0000011C, eax
008E92A4: lea eax, var_34
008E92A7: push eax
008E92A8: lea eax, var_30
008E92AB: push eax
008E92AC: push 00000002h
008E92AE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E92B3: add esp, 0000000Ch
008E92B6: lea eax, var_58
008E92B9: push eax
008E92BA: lea eax, var_48
008E92BD: push eax
008E92BE: push 00000002h
008E92C0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E92C5: add esp, 0000000Ch
008E92C8: jmp 008E95BCh
008E92CD: lea eax, var_24
008E92D0: mov var_00000084, eax
008E92D6: mov var_0000008C, 0000400Ch
008E92E0: cmp [008F2010h], 00000000h
008E92E7: jnz 8E9304h
008E92E9: push 008F2010h
008E92EE: push 00433984h
008E92F3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E92F8: mov var_0000012C, 008F2010h
008E9302: jmp 8E930Eh
008E9304: mov var_0000012C, 008F2010h
008E930E: push 00000000h
008E9310: push 00000004h
008E9312: push 00440E58h
008E9317: push 00000010h
008E9319: pop eax
008E931A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E931F: lea esi, var_0000008C
008E9325: mov edi, esp
008E9327: movsd 
008E9328: movsd 
008E9329: movsd 
008E932A: movsd 
008E932B: push 00000001h
008E932D: push 00000000h
008E932F: push 00440E48h
008E9334: push 00000000h
008E9336: push 00000018h
008E9338: mov eax, var_0000012C
008E933E: mov eax, [eax]
008E9340: mov ecx, var_0000012C
008E9346: mov ecx, [ecx]
008E9348: mov ecx, [ecx]
008E934A: push eax
008E934B: call [ecx+0000054Ch]
008E9351: push eax
008E9352: lea eax, var_30
008E9355: push eax
008E9356: call 00410A84h ; Set (object)
008E935B: push eax
008E935C: lea eax, var_48
008E935F: push eax
008E9360: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E9365: add esp, 00000010h
008E9368: push eax
008E9369: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E936E: push eax
008E936F: lea eax, var_34
008E9372: push eax
008E9373: call 00410A84h ; Set (object)
008E9378: push eax
008E9379: lea eax, var_58
008E937C: push eax
008E937D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E9382: add esp, 00000020h
008E9385: push eax
008E9386: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E938B: push eax
008E938C: lea eax, var_38
008E938F: push eax
008E9390: call 00410A84h ; Set (object)
008E9395: push eax
008E9396: lea eax, var_68
008E9399: push eax
008E939A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E939F: add esp, 00000010h
008E93A2: push eax
008E93A3: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008E93A8: sub ax, FFFFh
008E93AC: neg ax
008E93AF: sbb eax, eax
008E93B1: inc eax
008E93B2: neg eax
008E93B4: mov var_000000C8, ax
008E93BB: lea eax, var_38
008E93BE: push eax
008E93BF: lea eax, var_34
008E93C2: push eax
008E93C3: lea eax, var_30
008E93C6: push eax
008E93C7: push 00000003h
008E93C9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E93CE: add esp, 00000010h
008E93D1: lea eax, var_68
008E93D4: push eax
008E93D5: lea eax, var_58
008E93D8: push eax
008E93D9: lea eax, var_48
008E93DC: push eax
008E93DD: push 00000003h
008E93DF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E93E4: add esp, 00000010h
008E93E7: movsx eax, word ptr var_000000C8
008E93EE: test eax, eax
008E93F0: jz 008E959Fh
008E93F6: lea eax, var_24
008E93F9: mov var_00000084, eax
008E93FF: mov var_0000008C, 0000400Ch
008E9409: cmp [008F2010h], 00000000h
008E9410: jnz 8E942Dh
008E9412: push 008F2010h
008E9417: push 00433984h
008E941C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E9421: mov var_00000130, 008F2010h
008E942B: jmp 8E9437h
008E942D: mov var_00000130, 008F2010h
008E9437: push 00000000h
008E9439: push 00000014h
008E943B: push 00440E58h
008E9440: push 00000010h
008E9442: pop eax
008E9443: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E9448: lea esi, var_0000008C
008E944E: mov edi, esp
008E9450: movsd 
008E9451: movsd 
008E9452: movsd 
008E9453: movsd 
008E9454: push 00000001h
008E9456: push 00000000h
008E9458: push 00440E48h
008E945D: push 00000000h
008E945F: push 00000018h
008E9461: mov eax, var_00000130
008E9467: mov eax, [eax]
008E9469: mov ecx, var_00000130
008E946F: mov ecx, [ecx]
008E9471: mov ecx, [ecx]
008E9473: push eax
008E9474: call [ecx+0000054Ch]
008E947A: push eax
008E947B: lea eax, var_30
008E947E: push eax
008E947F: call 00410A84h ; Set (object)
008E9484: push eax
008E9485: lea eax, var_48
008E9488: push eax
008E9489: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E948E: add esp, 00000010h
008E9491: push eax
008E9492: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E9497: push eax
008E9498: lea eax, var_34
008E949B: push eax
008E949C: call 00410A84h ; Set (object)
008E94A1: push eax
008E94A2: lea eax, var_58
008E94A5: push eax
008E94A6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E94AB: add esp, 00000020h
008E94AE: push eax
008E94AF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E94B4: push eax
008E94B5: lea eax, var_38
008E94B8: push eax
008E94B9: call 00410A84h ; Set (object)
008E94BE: push eax
008E94BF: lea eax, var_68
008E94C2: push eax
008E94C3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E94C8: add esp, 00000010h
008E94CB: push eax
008E94CC: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E94D1: mov edx, eax
008E94D3: lea ecx, var_28
008E94D6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E94DB: push eax
008E94DC: call 004109DCh ; Val(arg_1)
008E94E1: fstp real8 ptr var_000000C4
008E94E7: push 00000000h
008E94E9: push 00000000h
008E94EB: push 00000001h
008E94ED: push 00000000h
008E94EF: lea eax, var_7C
008E94F2: push eax
008E94F3: push 00000010h
008E94F5: push 00000880h
008E94FA: call 00410946h ; ReDim
008E94FF: add esp, 0000001Ch
008E9502: mov eax, [ebp+08h]
008E9505: mov eax, [eax]
008E9507: push [ebp+08h]
008E950A: call [eax+00000304h]
008E9510: mov var_70, eax
008E9513: mov var_78, 00000009h
008E951A: lea esi, var_78
008E951D: push 00000000h
008E951F: push var_7C
008E9522: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E9527: mov ecx, eax
008E9529: mov edx, esi
008E952B: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E9530: mov edx, 0043DB58h ; x140
008E9535: lea ecx, var_2C
008E9538: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E953D: lea eax, var_7C
008E9540: push eax
008E9541: lea eax, var_2C
008E9544: push eax
008E9545: fld real8 ptr var_000000C4
008E954B: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E9550: push eax
008E9551: call 007A6910h
008E9556: lea eax, var_7C
008E9559: push eax
008E955A: push 00000000h
008E955C: call 00410934h ; Erase
008E9561: lea eax, var_2C
008E9564: push eax
008E9565: lea eax, var_28
008E9568: push eax
008E9569: push 00000002h
008E956B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E9570: add esp, 0000000Ch
008E9573: lea eax, var_38
008E9576: push eax
008E9577: lea eax, var_34
008E957A: push eax
008E957B: lea eax, var_30
008E957E: push eax
008E957F: push 00000003h
008E9581: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E9586: add esp, 00000010h
008E9589: lea eax, var_68
008E958C: push eax
008E958D: lea eax, var_58
008E9590: push eax
008E9591: lea eax, var_48
008E9594: push eax
008E9595: push 00000003h
008E9597: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E959C: add esp, 00000010h
008E959F: lea eax, var_000000F0
008E95A5: push eax
008E95A6: lea eax, var_000000E0
008E95AC: push eax
008E95AD: lea eax, var_24
008E95B0: push eax
008E95B1: call 00410A36h ; Next
008E95B6: mov var_0000011C, eax
008E95BC: cmp var_0000011C, 00000000h
008E95C3: jnz 008E92CDh
008E95C9: jmp 008E96B2h
008E95CE: lea eax, var_28
008E95D1: push eax
008E95D2: mov eax, [ebp+08h]
008E95D5: mov eax, [eax]
008E95D7: push [ebp+08h]
008E95DA: call [eax+000001C0h]
008E95E0: fclex 
008E95E2: mov var_000000C8, eax
008E95E8: cmp var_000000C8, 00000000h
008E95EF: jnl 8E9611h
008E95F1: push 000001C0h
008E95F6: push 00448930h
008E95FB: push [ebp+08h]
008E95FE: push var_000000C8
008E9604: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E9609: mov var_00000134, eax
008E960F: jmp 8E9618h
008E9611: and var_00000134, 00000000h
008E9618: push var_28
008E961B: call 004109DCh ; Val(arg_1)
008E9620: fstp real8 ptr var_000000C4
008E9626: push 00000000h
008E9628: push 00000000h
008E962A: push 00000001h
008E962C: push 00000000h
008E962E: lea eax, var_7C
008E9631: push eax
008E9632: push 00000010h
008E9634: push 00000880h
008E9639: call 00410946h ; ReDim
008E963E: add esp, 0000001Ch
008E9641: mov eax, [ebp+08h]
008E9644: mov eax, [eax]
008E9646: push [ebp+08h]
008E9649: call [eax+00000304h]
008E964F: mov var_40, eax
008E9652: mov var_48, 00000009h
008E9659: lea esi, var_48
008E965C: push 00000000h
008E965E: push var_7C
008E9661: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E9666: mov ecx, eax
008E9668: mov edx, esi
008E966A: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E966F: mov edx, 0043DB58h ; x140
008E9674: lea ecx, var_2C
008E9677: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E967C: lea eax, var_7C
008E967F: push eax
008E9680: lea eax, var_2C
008E9683: push eax
008E9684: fld real8 ptr var_000000C4
008E968A: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E968F: push eax
008E9690: call 007A6910h
008E9695: lea eax, var_7C
008E9698: push eax
008E9699: push 00000000h
008E969B: call 00410934h ; Erase
008E96A0: lea eax, var_2C
008E96A3: push eax
008E96A4: lea eax, var_28
008E96A7: push eax
008E96A8: push 00000002h
008E96AA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E96AF: add esp, 0000000Ch
008E96B2: jmp 008E9C1Ah
008E96B7: push 00000000h
008E96B9: push 00000000h
008E96BB: mov eax, [ebp+08h]
008E96BE: mov eax, [eax]
008E96C0: push [ebp+08h]
008E96C3: call [eax+0000033Ch]
008E96C9: push eax
008E96CA: lea eax, var_30
008E96CD: push eax
008E96CE: call 00410A84h ; Set (object)
008E96D3: push eax
008E96D4: lea eax, var_48
008E96D7: push eax
008E96D8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E96DD: add esp, 00000010h
008E96E0: push eax
008E96E1: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E96E6: dec eax
008E96E7: neg eax
008E96E9: sbb eax, eax
008E96EB: inc eax
008E96EC: neg eax
008E96EE: mov var_000000C8, ax
008E96F5: lea ecx, var_30
008E96F8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E96FD: lea ecx, var_48
008E9700: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E9705: movsx eax, word ptr var_000000C8
008E970C: test eax, eax
008E970E: jz 008E9B36h
008E9714: mov var_00000084, 00000001h
008E971E: mov var_0000008C, 00000002h
008E9728: cmp [008F2010h], 00000000h
008E972F: jnz 8E974Ch
008E9731: push 008F2010h
008E9736: push 00433984h
008E973B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E9740: mov var_00000138, 008F2010h
008E974A: jmp 8E9756h
008E974C: mov var_00000138, 008F2010h
008E9756: push 00000000h
008E9758: push 00000001h
008E975A: push 00440E48h
008E975F: push 00000000h
008E9761: push 00000018h
008E9763: mov eax, var_00000138
008E9769: mov eax, [eax]
008E976B: mov ecx, var_00000138
008E9771: mov ecx, [ecx]
008E9773: mov ecx, [ecx]
008E9775: push eax
008E9776: call [ecx+00000550h]
008E977C: push eax
008E977D: lea eax, var_30
008E9780: push eax
008E9781: call 00410A84h ; Set (object)
008E9786: push eax
008E9787: lea eax, var_48
008E978A: push eax
008E978B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E9790: add esp, 00000010h
008E9793: push eax
008E9794: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E9799: push eax
008E979A: lea eax, var_34
008E979D: push eax
008E979E: call 00410A84h ; Set (object)
008E97A3: push eax
008E97A4: lea eax, var_58
008E97A7: push eax
008E97A8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E97AD: add esp, 00000010h
008E97B0: push eax
008E97B1: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E97B6: mov var_00000094, eax
008E97BC: mov var_0000009C, 00000003h
008E97C6: mov var_000000A4, 00000001h
008E97D0: mov var_000000AC, 00000002h
008E97DA: lea eax, var_0000008C
008E97E0: push eax
008E97E1: lea eax, var_0000009C
008E97E7: push eax
008E97E8: lea eax, var_000000AC
008E97EE: push eax
008E97EF: lea eax, var_00000110
008E97F5: push eax
008E97F6: lea eax, var_00000100
008E97FC: push eax
008E97FD: lea eax, var_24
008E9800: push eax
008E9801: call 00410A3Ch ; For
008E9806: mov var_00000120, eax
008E980C: lea eax, var_34
008E980F: push eax
008E9810: lea eax, var_30
008E9813: push eax
008E9814: push 00000002h
008E9816: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E981B: add esp, 0000000Ch
008E981E: lea eax, var_58
008E9821: push eax
008E9822: lea eax, var_48
008E9825: push eax
008E9826: push 00000002h
008E9828: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E982D: add esp, 0000000Ch
008E9830: jmp 008E9B24h
008E9835: lea eax, var_24
008E9838: mov var_00000084, eax
008E983E: mov var_0000008C, 0000400Ch
008E9848: cmp [008F2010h], 00000000h
008E984F: jnz 8E986Ch
008E9851: push 008F2010h
008E9856: push 00433984h
008E985B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E9860: mov var_0000013C, 008F2010h
008E986A: jmp 8E9876h
008E986C: mov var_0000013C, 008F2010h
008E9876: push 00000000h
008E9878: push 00000004h
008E987A: push 00440E58h
008E987F: push 00000010h
008E9881: pop eax
008E9882: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E9887: lea esi, var_0000008C
008E988D: mov edi, esp
008E988F: movsd 
008E9890: movsd 
008E9891: movsd 
008E9892: movsd 
008E9893: push 00000001h
008E9895: push 00000000h
008E9897: push 00440E48h
008E989C: push 00000000h
008E989E: push 00000018h
008E98A0: mov eax, var_0000013C
008E98A6: mov eax, [eax]
008E98A8: mov ecx, var_0000013C
008E98AE: mov ecx, [ecx]
008E98B0: mov ecx, [ecx]
008E98B2: push eax
008E98B3: call [ecx+00000550h]
008E98B9: push eax
008E98BA: lea eax, var_30
008E98BD: push eax
008E98BE: call 00410A84h ; Set (object)
008E98C3: push eax
008E98C4: lea eax, var_48
008E98C7: push eax
008E98C8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E98CD: add esp, 00000010h
008E98D0: push eax
008E98D1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E98D6: push eax
008E98D7: lea eax, var_34
008E98DA: push eax
008E98DB: call 00410A84h ; Set (object)
008E98E0: push eax
008E98E1: lea eax, var_58
008E98E4: push eax
008E98E5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E98EA: add esp, 00000020h
008E98ED: push eax
008E98EE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E98F3: push eax
008E98F4: lea eax, var_38
008E98F7: push eax
008E98F8: call 00410A84h ; Set (object)
008E98FD: push eax
008E98FE: lea eax, var_68
008E9901: push eax
008E9902: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E9907: add esp, 00000010h
008E990A: push eax
008E990B: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008E9910: sub ax, FFFFh
008E9914: neg ax
008E9917: sbb eax, eax
008E9919: inc eax
008E991A: neg eax
008E991C: mov var_000000C8, ax
008E9923: lea eax, var_38
008E9926: push eax
008E9927: lea eax, var_34
008E992A: push eax
008E992B: lea eax, var_30
008E992E: push eax
008E992F: push 00000003h
008E9931: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E9936: add esp, 00000010h
008E9939: lea eax, var_68
008E993C: push eax
008E993D: lea eax, var_58
008E9940: push eax
008E9941: lea eax, var_48
008E9944: push eax
008E9945: push 00000003h
008E9947: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E994C: add esp, 00000010h
008E994F: movsx eax, word ptr var_000000C8
008E9956: test eax, eax
008E9958: jz 008E9B07h
008E995E: lea eax, var_24
008E9961: mov var_00000084, eax
008E9967: mov var_0000008C, 0000400Ch
008E9971: cmp [008F2010h], 00000000h
008E9978: jnz 8E9995h
008E997A: push 008F2010h
008E997F: push 00433984h
008E9984: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E9989: mov var_00000140, 008F2010h
008E9993: jmp 8E999Fh
008E9995: mov var_00000140, 008F2010h
008E999F: push 00000000h
008E99A1: push 00000014h
008E99A3: push 00440E58h
008E99A8: push 00000010h
008E99AA: pop eax
008E99AB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E99B0: lea esi, var_0000008C
008E99B6: mov edi, esp
008E99B8: movsd 
008E99B9: movsd 
008E99BA: movsd 
008E99BB: movsd 
008E99BC: push 00000001h
008E99BE: push 00000000h
008E99C0: push 00440E48h
008E99C5: push 00000000h
008E99C7: push 00000018h
008E99C9: mov eax, var_00000140
008E99CF: mov eax, [eax]
008E99D1: mov ecx, var_00000140
008E99D7: mov ecx, [ecx]
008E99D9: mov ecx, [ecx]
008E99DB: push eax
008E99DC: call [ecx+00000550h]
008E99E2: push eax
008E99E3: lea eax, var_30
008E99E6: push eax
008E99E7: call 00410A84h ; Set (object)
008E99EC: push eax
008E99ED: lea eax, var_48
008E99F0: push eax
008E99F1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E99F6: add esp, 00000010h
008E99F9: push eax
008E99FA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E99FF: push eax
008E9A00: lea eax, var_34
008E9A03: push eax
008E9A04: call 00410A84h ; Set (object)
008E9A09: push eax
008E9A0A: lea eax, var_58
008E9A0D: push eax
008E9A0E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E9A13: add esp, 00000020h
008E9A16: push eax
008E9A17: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E9A1C: push eax
008E9A1D: lea eax, var_38
008E9A20: push eax
008E9A21: call 00410A84h ; Set (object)
008E9A26: push eax
008E9A27: lea eax, var_68
008E9A2A: push eax
008E9A2B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E9A30: add esp, 00000010h
008E9A33: push eax
008E9A34: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E9A39: mov edx, eax
008E9A3B: lea ecx, var_28
008E9A3E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E9A43: push eax
008E9A44: call 004109DCh ; Val(arg_1)
008E9A49: fstp real8 ptr var_000000C4
008E9A4F: push 00000000h
008E9A51: push 00000000h
008E9A53: push 00000001h
008E9A55: push 00000000h
008E9A57: lea eax, var_7C
008E9A5A: push eax
008E9A5B: push 00000010h
008E9A5D: push 00000880h
008E9A62: call 00410946h ; ReDim
008E9A67: add esp, 0000001Ch
008E9A6A: mov eax, [ebp+08h]
008E9A6D: mov eax, [eax]
008E9A6F: push [ebp+08h]
008E9A72: call [eax+00000304h]
008E9A78: mov var_70, eax
008E9A7B: mov var_78, 00000009h
008E9A82: lea esi, var_78
008E9A85: push 00000000h
008E9A87: push var_7C
008E9A8A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E9A8F: mov ecx, eax
008E9A91: mov edx, esi
008E9A93: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E9A98: mov edx, 0043DB58h ; x140
008E9A9D: lea ecx, var_2C
008E9AA0: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E9AA5: lea eax, var_7C
008E9AA8: push eax
008E9AA9: lea eax, var_2C
008E9AAC: push eax
008E9AAD: fld real8 ptr var_000000C4
008E9AB3: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E9AB8: push eax
008E9AB9: call 007A6910h
008E9ABE: lea eax, var_7C
008E9AC1: push eax
008E9AC2: push 00000000h
008E9AC4: call 00410934h ; Erase
008E9AC9: lea eax, var_2C
008E9ACC: push eax
008E9ACD: lea eax, var_28
008E9AD0: push eax
008E9AD1: push 00000002h
008E9AD3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E9AD8: add esp, 0000000Ch
008E9ADB: lea eax, var_38
008E9ADE: push eax
008E9ADF: lea eax, var_34
008E9AE2: push eax
008E9AE3: lea eax, var_30
008E9AE6: push eax
008E9AE7: push 00000003h
008E9AE9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E9AEE: add esp, 00000010h
008E9AF1: lea eax, var_68
008E9AF4: push eax
008E9AF5: lea eax, var_58
008E9AF8: push eax
008E9AF9: lea eax, var_48
008E9AFC: push eax
008E9AFD: push 00000003h
008E9AFF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E9B04: add esp, 00000010h
008E9B07: lea eax, var_00000110
008E9B0D: push eax
008E9B0E: lea eax, var_00000100
008E9B14: push eax
008E9B15: lea eax, var_24
008E9B18: push eax
008E9B19: call 00410A36h ; Next
008E9B1E: mov var_00000120, eax
008E9B24: cmp var_00000120, 00000000h
008E9B2B: jnz 008E9835h
008E9B31: jmp 008E9C1Ah
008E9B36: lea eax, var_28
008E9B39: push eax
008E9B3A: mov eax, [ebp+08h]
008E9B3D: mov eax, [eax]
008E9B3F: push [ebp+08h]
008E9B42: call [eax+000001C0h]
008E9B48: fclex 
008E9B4A: mov var_000000C8, eax
008E9B50: cmp var_000000C8, 00000000h
008E9B57: jnl 8E9B79h
008E9B59: push 000001C0h
008E9B5E: push 00448930h
008E9B63: push [ebp+08h]
008E9B66: push var_000000C8
008E9B6C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E9B71: mov var_00000144, eax
008E9B77: jmp 8E9B80h
008E9B79: and var_00000144, 00000000h
008E9B80: push var_28
008E9B83: call 004109DCh ; Val(arg_1)
008E9B88: fstp real8 ptr var_000000C4
008E9B8E: push 00000000h
008E9B90: push 00000000h
008E9B92: push 00000001h
008E9B94: push 00000000h
008E9B96: lea eax, var_7C
008E9B99: push eax
008E9B9A: push 00000010h
008E9B9C: push 00000880h
008E9BA1: call 00410946h ; ReDim
008E9BA6: add esp, 0000001Ch
008E9BA9: mov eax, [ebp+08h]
008E9BAC: mov eax, [eax]
008E9BAE: push [ebp+08h]
008E9BB1: call [eax+00000304h]
008E9BB7: mov var_40, eax
008E9BBA: mov var_48, 00000009h
008E9BC1: lea esi, var_48
008E9BC4: push 00000000h
008E9BC6: push var_7C
008E9BC9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E9BCE: mov ecx, eax
008E9BD0: mov edx, esi
008E9BD2: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E9BD7: mov edx, 0043DB58h ; x140
008E9BDC: lea ecx, var_2C
008E9BDF: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E9BE4: lea eax, var_7C
008E9BE7: push eax
008E9BE8: lea eax, var_2C
008E9BEB: push eax
008E9BEC: fld real8 ptr var_000000C4
008E9BF2: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E9BF7: push eax
008E9BF8: call 007A6910h
008E9BFD: lea eax, var_7C
008E9C00: push eax
008E9C01: push 00000000h
008E9C03: call 00410934h ; Erase
008E9C08: lea eax, var_2C
008E9C0B: push eax
008E9C0C: lea eax, var_28
008E9C0F: push eax
008E9C10: push 00000002h
008E9C12: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E9C17: add esp, 0000000Ch
008E9C1A: mov var_04, 00000000h
008E9C21: wait 
008E9C22: push 008E9CA6h
008E9C27: jmp 8E9C77h
008E9C29: lea eax, var_2C
008E9C2C: push eax
008E9C2D: lea eax, var_28
008E9C30: push eax
008E9C31: push 00000002h
008E9C33: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E9C38: add esp, 0000000Ch
008E9C3B: lea eax, var_38
008E9C3E: push eax
008E9C3F: lea eax, var_34
008E9C42: push eax
008E9C43: lea eax, var_30
008E9C46: push eax
008E9C47: push 00000003h
008E9C49: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E9C4E: add esp, 00000010h
008E9C51: lea eax, var_78
008E9C54: push eax
008E9C55: lea eax, var_68
008E9C58: push eax
008E9C59: lea eax, var_58
008E9C5C: push eax
008E9C5D: lea eax, var_48
008E9C60: push eax
008E9C61: push 00000004h
008E9C63: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E9C68: add esp, 00000014h
008E9C6B: lea eax, var_7C
008E9C6E: push eax
008E9C6F: push 00000000h
008E9C71: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008E9C76: ret 
End Sub

Private sub mnuSkype__8EA889
008EA889: push ebp
008EA88A: mov ebp, esp
008EA88C: sub esp, 0000000Ch
008EA88F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008EA894: mov eax, fs:[00h]
008EA89A: push eax
008EA89B: mov fs:[00000000h], esp
008EA8A2: mov eax, 000001E0h
008EA8A7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA8AC: push ebx
008EA8AD: push esi
008EA8AE: push edi
008EA8AF: mov var_0C, esp
008EA8B2: mov var_08, 00410548h
008EA8B9: mov eax, [ebp+08h]
008EA8BC: and eax, 00000001h
008EA8BF: mov var_04, eax
008EA8C2: mov eax, [ebp+08h]
008EA8C5: and al, FEh
008EA8C7: mov [ebp+08h], eax
008EA8CA: mov eax, [ebp+08h]
008EA8CD: mov eax, [eax]
008EA8CF: push [ebp+08h]
008EA8D2: call [eax+04h]
008EA8D5: mov eax, [ebp+0Ch]
008EA8D8: mov ax, [eax]
008EA8DB: mov var_00000190, ax
008EA8E2: movsx eax, word ptr var_00000190
008EA8E9: mov var_000001B4, eax
008EA8EF: cmp var_000001B4, 00000003h
008EA8F6: jz 8EA90Ah
008EA8F8: cmp var_000001B4, 00000004h
008EA8FF: jz 008EB84Eh
008EA905: jmp 008EC6EFh
008EA90A: mov var_00000088, 00000001h
008EA914: mov var_00000090, 00000002h
008EA91E: push 00000000h
008EA920: push 00000001h
008EA922: push 00440E48h
008EA927: push 00000000h
008EA929: push 00000018h
008EA92B: mov eax, [ebp+08h]
008EA92E: mov eax, [eax]
008EA930: push [ebp+08h]
008EA933: call [eax+00000328h]
008EA939: push eax
008EA93A: lea eax, var_34
008EA93D: push eax
008EA93E: call 00410A84h ; Set (object)
008EA943: push eax
008EA944: lea eax, var_4C
008EA947: push eax
008EA948: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EA94D: add esp, 00000010h
008EA950: push eax
008EA951: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EA956: push eax
008EA957: lea eax, var_38
008EA95A: push eax
008EA95B: call 00410A84h ; Set (object)
008EA960: push eax
008EA961: lea eax, var_5C
008EA964: push eax
008EA965: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EA96A: add esp, 00000010h
008EA96D: push eax
008EA96E: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EA973: mov var_00000098, eax
008EA979: mov var_000000A0, 00000003h
008EA983: mov var_000000A8, 00000001h
008EA98D: mov var_000000B0, 00000002h
008EA997: lea eax, var_00000090
008EA99D: push eax
008EA99E: lea eax, var_000000A0
008EA9A4: push eax
008EA9A5: lea eax, var_000000B0
008EA9AB: push eax
008EA9AC: lea eax, var_000000EC
008EA9B2: push eax
008EA9B3: lea eax, var_000000DC
008EA9B9: push eax
008EA9BA: lea eax, var_24
008EA9BD: push eax
008EA9BE: call 00410A3Ch ; For
008EA9C3: mov var_0000019C, eax
008EA9C9: lea eax, var_38
008EA9CC: push eax
008EA9CD: lea eax, var_34
008EA9D0: push eax
008EA9D1: push 00000002h
008EA9D3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EA9D8: add esp, 0000000Ch
008EA9DB: lea eax, var_5C
008EA9DE: push eax
008EA9DF: lea eax, var_4C
008EA9E2: push eax
008EA9E3: push 00000002h
008EA9E5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EA9EA: add esp, 0000000Ch
008EA9ED: jmp 008EAC39h
008EA9F2: lea eax, var_24
008EA9F5: mov var_00000088, eax
008EA9FB: mov var_00000090, 0000400Ch
008EAA05: push 00000000h
008EAA07: push 00000004h
008EAA09: push 00440E58h
008EAA0E: push 00000010h
008EAA10: pop eax
008EAA11: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EAA16: lea esi, var_00000090
008EAA1C: mov edi, esp
008EAA1E: movsd 
008EAA1F: movsd 
008EAA20: movsd 
008EAA21: movsd 
008EAA22: push 00000001h
008EAA24: push 00000000h
008EAA26: push 00440E48h
008EAA2B: push 00000000h
008EAA2D: push 00000018h
008EAA2F: mov eax, [ebp+08h]
008EAA32: mov eax, [eax]
008EAA34: push [ebp+08h]
008EAA37: call [eax+00000328h]
008EAA3D: push eax
008EAA3E: lea eax, var_34
008EAA41: push eax
008EAA42: call 00410A84h ; Set (object)
008EAA47: push eax
008EAA48: lea eax, var_4C
008EAA4B: push eax
008EAA4C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EAA51: add esp, 00000010h
008EAA54: push eax
008EAA55: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EAA5A: push eax
008EAA5B: lea eax, var_38
008EAA5E: push eax
008EAA5F: call 00410A84h ; Set (object)
008EAA64: push eax
008EAA65: lea eax, var_5C
008EAA68: push eax
008EAA69: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EAA6E: add esp, 00000020h
008EAA71: push eax
008EAA72: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EAA77: push eax
008EAA78: lea eax, var_3C
008EAA7B: push eax
008EAA7C: call 00410A84h ; Set (object)
008EAA81: push eax
008EAA82: lea eax, var_6C
008EAA85: push eax
008EAA86: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EAA8B: add esp, 00000010h
008EAA8E: push eax
008EAA8F: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008EAA94: sub ax, FFFFh
008EAA98: neg ax
008EAA9B: sbb eax, eax
008EAA9D: inc eax
008EAA9E: neg eax
008EAAA0: mov var_000000CC, ax
008EAAA7: lea eax, var_3C
008EAAAA: push eax
008EAAAB: lea eax, var_38
008EAAAE: push eax
008EAAAF: lea eax, var_34
008EAAB2: push eax
008EAAB3: push 00000003h
008EAAB5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EAABA: add esp, 00000010h
008EAABD: lea eax, var_6C
008EAAC0: push eax
008EAAC1: lea eax, var_5C
008EAAC4: push eax
008EAAC5: lea eax, var_4C
008EAAC8: push eax
008EAAC9: push 00000003h
008EAACB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EAAD0: add esp, 00000010h
008EAAD3: movsx eax, word ptr var_000000CC
008EAADA: test eax, eax
008EAADC: jz 008EAC1Ch
008EAAE2: mov var_00000098, 00000001h
008EAAEC: mov var_000000A0, 00000003h
008EAAF6: lea eax, var_24
008EAAF9: mov var_00000088, eax
008EAAFF: mov var_00000090, 0000400Ch
008EAB09: push var_28
008EAB0C: push 00000010h
008EAB0E: pop eax
008EAB0F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EAB14: lea esi, var_000000A0
008EAB1A: mov edi, esp
008EAB1C: movsd 
008EAB1D: movsd 
008EAB1E: movsd 
008EAB1F: movsd 
008EAB20: push 00000001h
008EAB22: push 00000010h
008EAB24: push 00440E58h
008EAB29: push 00000010h
008EAB2B: pop eax
008EAB2C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EAB31: lea esi, var_00000090
008EAB37: mov edi, esp
008EAB39: movsd 
008EAB3A: movsd 
008EAB3B: movsd 
008EAB3C: movsd 
008EAB3D: push 00000001h
008EAB3F: push 00000000h
008EAB41: push 00440E48h
008EAB46: push 00000000h
008EAB48: push 00000018h
008EAB4A: mov eax, [ebp+08h]
008EAB4D: mov eax, [eax]
008EAB4F: push [ebp+08h]
008EAB52: call [eax+00000328h]
008EAB58: push eax
008EAB59: lea eax, var_34
008EAB5C: push eax
008EAB5D: call 00410A84h ; Set (object)
008EAB62: push eax
008EAB63: lea eax, var_4C
008EAB66: push eax
008EAB67: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EAB6C: add esp, 00000010h
008EAB6F: push eax
008EAB70: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EAB75: push eax
008EAB76: lea eax, var_38
008EAB79: push eax
008EAB7A: call 00410A84h ; Set (object)
008EAB7F: push eax
008EAB80: lea eax, var_5C
008EAB83: push eax
008EAB84: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EAB89: add esp, 00000020h
008EAB8C: push eax
008EAB8D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EAB92: push eax
008EAB93: lea eax, var_3C
008EAB96: push eax
008EAB97: call 00410A84h ; Set (object)
008EAB9C: push eax
008EAB9D: lea eax, var_6C
008EABA0: push eax
008EABA1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EABA6: add esp, 00000020h
008EABA9: push eax
008EABAA: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008EABAF: mov edx, eax
008EABB1: lea ecx, var_2C
008EABB4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EABB9: push eax
008EABBA: call 00410A18h ; &
008EABBF: mov edx, eax
008EABC1: lea ecx, var_30
008EABC4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EABC9: push eax
008EABCA: push 004413D8h
008EABCF: call 00410A18h ; &
008EABD4: mov edx, eax
008EABD6: lea ecx, var_28
008EABD9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EABDE: lea eax, var_30
008EABE1: push eax
008EABE2: lea eax, var_2C
008EABE5: push eax
008EABE6: push 00000002h
008EABE8: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EABED: add esp, 0000000Ch
008EABF0: lea eax, var_3C
008EABF3: push eax
008EABF4: lea eax, var_38
008EABF7: push eax
008EABF8: lea eax, var_34
008EABFB: push eax
008EABFC: push 00000003h
008EABFE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EAC03: add esp, 00000010h
008EAC06: lea eax, var_6C
008EAC09: push eax
008EAC0A: lea eax, var_5C
008EAC0D: push eax
008EAC0E: lea eax, var_4C
008EAC11: push eax
008EAC12: push 00000003h
008EAC14: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EAC19: add esp, 00000010h
008EAC1C: lea eax, var_000000EC
008EAC22: push eax
008EAC23: lea eax, var_000000DC
008EAC29: push eax
008EAC2A: lea eax, var_24
008EAC2D: push eax
008EAC2E: call 00410A36h ; Next
008EAC33: mov var_0000019C, eax
008EAC39: cmp var_0000019C, 00000000h
008EAC40: jnz 008EA9F2h
008EAC46: push var_28
008EAC49: push 00000000h
008EAC4B: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008EAC50: test eax, eax
008EAC52: jnz 008EACDAh
008EAC58: mov var_74, 80020004h
008EAC5F: mov var_7C, 0000000Ah
008EAC66: mov var_64, 80020004h
008EAC6D: mov var_6C, 0000000Ah
008EAC74: mov var_54, 80020004h
008EAC7B: mov var_5C, 0000000Ah
008EAC82: mov var_00000088, 00459834h ; No contact selected(s)
008EAC8C: mov var_00000090, 00000008h
008EAC96: lea edx, var_00000090
008EAC9C: lea ecx, var_4C
008EAC9F: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008EACA4: lea eax, var_7C
008EACA7: push eax
008EACA8: lea eax, var_6C
008EACAB: push eax
008EACAC: lea eax, var_5C
008EACAF: push eax
008EACB0: push 00000010h
008EACB2: lea eax, var_4C
008EACB5: push eax
008EACB6: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008EACBB: lea eax, var_7C
008EACBE: push eax
008EACBF: lea eax, var_6C
008EACC2: push eax
008EACC3: lea eax, var_5C
008EACC6: push eax
008EACC7: lea eax, var_4C
008EACCA: push eax
008EACCB: push 00000004h
008EACCD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EACD2: add esp, 00000014h
008EACD5: jmp 008EC6EFh
008EACDA: mov var_74, 80020004h
008EACE1: mov var_7C, 0000000Ah
008EACE8: mov var_64, 80020004h
008EACEF: mov var_6C, 0000000Ah
008EACF6: mov var_54, 80020004h
008EACFD: mov var_5C, 0000000Ah
008EAD04: mov var_00000088, 00459868h ; Do you really want to block the selected contact(s)?
008EAD0E: mov var_00000090, 00000008h
008EAD18: lea edx, var_00000090
008EAD1E: lea ecx, var_4C
008EAD21: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008EAD26: lea eax, var_7C
008EAD29: push eax
008EAD2A: lea eax, var_6C
008EAD2D: push eax
008EAD2E: lea eax, var_5C
008EAD31: push eax
008EAD32: push 00000034h
008EAD34: lea eax, var_4C
008EAD37: push eax
008EAD38: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008EAD3D: sub eax, 00000007h
008EAD40: neg eax
008EAD42: sbb eax, eax
008EAD44: inc eax
008EAD45: neg eax
008EAD47: mov var_000000CC, ax
008EAD4E: lea eax, var_7C
008EAD51: push eax
008EAD52: lea eax, var_6C
008EAD55: push eax
008EAD56: lea eax, var_5C
008EAD59: push eax
008EAD5A: lea eax, var_4C
008EAD5D: push eax
008EAD5E: push 00000004h
008EAD60: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EAD65: add esp, 00000014h
008EAD68: movsx eax, word ptr var_000000CC
008EAD6F: test eax, eax
008EAD71: jz 8EAD78h
008EAD73: jmp 008EC6EFh
008EAD78: cmp word ptr [008F2430h], FFFFh
008EAD80: jnz 008EB2EAh
008EAD86: push 00000000h
008EAD88: push 00000000h
008EAD8A: mov eax, [ebp+08h]
008EAD8D: mov eax, [eax]
008EAD8F: push [ebp+08h]
008EAD92: call [eax+0000033Ch]
008EAD98: push eax
008EAD99: lea eax, var_34
008EAD9C: push eax
008EAD9D: call 00410A84h ; Set (object)
008EADA2: push eax
008EADA3: lea eax, var_4C
008EADA6: push eax
008EADA7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EADAC: add esp, 00000010h
008EADAF: push eax
008EADB0: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EADB5: dec eax
008EADB6: neg eax
008EADB8: sbb eax, eax
008EADBA: inc eax
008EADBB: neg eax
008EADBD: mov var_000000CC, ax
008EADC4: lea ecx, var_34
008EADC7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008EADCC: lea ecx, var_4C
008EADCF: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008EADD4: movsx eax, word ptr var_000000CC
008EADDB: test eax, eax
008EADDD: jz 008EB203h
008EADE3: mov var_00000088, 00000001h
008EADED: mov var_00000090, 00000002h
008EADF7: cmp [008F2010h], 00000000h
008EADFE: jnz 8EAE1Bh
008EAE00: push 008F2010h
008EAE05: push 00433984h
008EAE0A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EAE0F: mov var_000001B8, 008F2010h
008EAE19: jmp 8EAE25h
008EAE1B: mov var_000001B8, 008F2010h
008EAE25: push 00000000h
008EAE27: push 00000001h
008EAE29: push 00440E48h
008EAE2E: push 00000000h
008EAE30: push 00000018h
008EAE32: mov eax, var_000001B8
008EAE38: mov eax, [eax]
008EAE3A: mov ecx, var_000001B8
008EAE40: mov ecx, [ecx]
008EAE42: mov ecx, [ecx]
008EAE44: push eax
008EAE45: call [ecx+0000054Ch]
008EAE4B: push eax
008EAE4C: lea eax, var_34
008EAE4F: push eax
008EAE50: call 00410A84h ; Set (object)
008EAE55: push eax
008EAE56: lea eax, var_4C
008EAE59: push eax
008EAE5A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EAE5F: add esp, 00000010h
008EAE62: push eax
008EAE63: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EAE68: push eax
008EAE69: lea eax, var_38
008EAE6C: push eax
008EAE6D: call 00410A84h ; Set (object)
008EAE72: push eax
008EAE73: lea eax, var_5C
008EAE76: push eax
008EAE77: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EAE7C: add esp, 00000010h
008EAE7F: push eax
008EAE80: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EAE85: mov var_00000098, eax
008EAE8B: mov var_000000A0, 00000003h
008EAE95: mov var_000000A8, 00000001h
008EAE9F: mov var_000000B0, 00000002h
008EAEA9: lea eax, var_00000090
008EAEAF: push eax
008EAEB0: lea eax, var_000000A0
008EAEB6: push eax
008EAEB7: lea eax, var_000000B0
008EAEBD: push eax
008EAEBE: lea eax, var_0000010C
008EAEC4: push eax
008EAEC5: lea eax, var_000000FC
008EAECB: push eax
008EAECC: lea eax, var_24
008EAECF: push eax
008EAED0: call 00410A3Ch ; For
008EAED5: mov var_000001A0, eax
008EAEDB: lea eax, var_38
008EAEDE: push eax
008EAEDF: lea eax, var_34
008EAEE2: push eax
008EAEE3: push 00000002h
008EAEE5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EAEEA: add esp, 0000000Ch
008EAEED: lea eax, var_5C
008EAEF0: push eax
008EAEF1: lea eax, var_4C
008EAEF4: push eax
008EAEF5: push 00000002h
008EAEF7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EAEFC: add esp, 0000000Ch
008EAEFF: jmp 008EB1F1h
008EAF04: lea eax, var_24
008EAF07: mov var_00000088, eax
008EAF0D: mov var_00000090, 0000400Ch
008EAF17: cmp [008F2010h], 00000000h
008EAF1E: jnz 8EAF3Bh
008EAF20: push 008F2010h
008EAF25: push 00433984h
008EAF2A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EAF2F: mov var_000001BC, 008F2010h
008EAF39: jmp 8EAF45h
008EAF3B: mov var_000001BC, 008F2010h
008EAF45: push 00000000h
008EAF47: push 00000004h
008EAF49: push 00440E58h
008EAF4E: push 00000010h
008EAF50: pop eax
008EAF51: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EAF56: lea esi, var_00000090
008EAF5C: mov edi, esp
008EAF5E: movsd 
008EAF5F: movsd 
008EAF60: movsd 
008EAF61: movsd 
008EAF62: push 00000001h
008EAF64: push 00000000h
008EAF66: push 00440E48h
008EAF6B: push 00000000h
008EAF6D: push 00000018h
008EAF6F: mov eax, var_000001BC
008EAF75: mov eax, [eax]
008EAF77: mov ecx, var_000001BC
008EAF7D: mov ecx, [ecx]
008EAF7F: mov ecx, [ecx]
008EAF81: push eax
008EAF82: call [ecx+0000054Ch]
008EAF88: push eax
008EAF89: lea eax, var_34
008EAF8C: push eax
008EAF8D: call 00410A84h ; Set (object)
008EAF92: push eax
008EAF93: lea eax, var_4C
008EAF96: push eax
008EAF97: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EAF9C: add esp, 00000010h
008EAF9F: push eax
008EAFA0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EAFA5: push eax
008EAFA6: lea eax, var_38
008EAFA9: push eax
008EAFAA: call 00410A84h ; Set (object)
008EAFAF: push eax
008EAFB0: lea eax, var_5C
008EAFB3: push eax
008EAFB4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EAFB9: add esp, 00000020h
008EAFBC: push eax
008EAFBD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EAFC2: push eax
008EAFC3: lea eax, var_3C
008EAFC6: push eax
008EAFC7: call 00410A84h ; Set (object)
008EAFCC: push eax
008EAFCD: lea eax, var_6C
008EAFD0: push eax
008EAFD1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EAFD6: add esp, 00000010h
008EAFD9: push eax
008EAFDA: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008EAFDF: sub ax, FFFFh
008EAFE3: neg ax
008EAFE6: sbb eax, eax
008EAFE8: inc eax
008EAFE9: neg eax
008EAFEB: mov var_000000CC, ax
008EAFF2: lea eax, var_3C
008EAFF5: push eax
008EAFF6: lea eax, var_38
008EAFF9: push eax
008EAFFA: lea eax, var_34
008EAFFD: push eax
008EAFFE: push 00000003h
008EB000: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EB005: add esp, 00000010h
008EB008: lea eax, var_6C
008EB00B: push eax
008EB00C: lea eax, var_5C
008EB00F: push eax
008EB010: lea eax, var_4C
008EB013: push eax
008EB014: push 00000003h
008EB016: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EB01B: add esp, 00000010h
008EB01E: movsx eax, word ptr var_000000CC
008EB025: test eax, eax
008EB027: jz 008EB1D4h
008EB02D: lea eax, var_24
008EB030: mov var_00000088, eax
008EB036: mov var_00000090, 0000400Ch
008EB040: cmp [008F2010h], 00000000h
008EB047: jnz 8EB064h
008EB049: push 008F2010h
008EB04E: push 00433984h
008EB053: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EB058: mov var_000001C0, 008F2010h
008EB062: jmp 8EB06Eh
008EB064: mov var_000001C0, 008F2010h
008EB06E: push 00000000h
008EB070: push 00000014h
008EB072: push 00440E58h
008EB077: push 00000010h
008EB079: pop eax
008EB07A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EB07F: lea esi, var_00000090
008EB085: mov edi, esp
008EB087: movsd 
008EB088: movsd 
008EB089: movsd 
008EB08A: movsd 
008EB08B: push 00000001h
008EB08D: push 00000000h
008EB08F: push 00440E48h
008EB094: push 00000000h
008EB096: push 00000018h
008EB098: mov eax, var_000001C0
008EB09E: mov eax, [eax]
008EB0A0: mov ecx, var_000001C0
008EB0A6: mov ecx, [ecx]
008EB0A8: mov ecx, [ecx]
008EB0AA: push eax
008EB0AB: call [ecx+0000054Ch]
008EB0B1: push eax
008EB0B2: lea eax, var_34
008EB0B5: push eax
008EB0B6: call 00410A84h ; Set (object)
008EB0BB: push eax
008EB0BC: lea eax, var_4C
008EB0BF: push eax
008EB0C0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB0C5: add esp, 00000010h
008EB0C8: push eax
008EB0C9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EB0CE: push eax
008EB0CF: lea eax, var_38
008EB0D2: push eax
008EB0D3: call 00410A84h ; Set (object)
008EB0D8: push eax
008EB0D9: lea eax, var_5C
008EB0DC: push eax
008EB0DD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB0E2: add esp, 00000020h
008EB0E5: push eax
008EB0E6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EB0EB: push eax
008EB0EC: lea eax, var_3C
008EB0EF: push eax
008EB0F0: call 00410A84h ; Set (object)
008EB0F5: push eax
008EB0F6: lea eax, var_6C
008EB0F9: push eax
008EB0FA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB0FF: add esp, 00000010h
008EB102: push eax
008EB103: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008EB108: mov edx, eax
008EB10A: lea ecx, var_2C
008EB10D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EB112: push eax
008EB113: call 004109DCh ; Val(arg_1)
008EB118: fstp real8 ptr var_000000C8
008EB11E: push 00000000h
008EB120: push 00000000h
008EB122: push 00000001h
008EB124: push 00000000h
008EB126: lea eax, var_80
008EB129: push eax
008EB12A: push 00000010h
008EB12C: push 00000880h
008EB131: call 00410946h ; ReDim
008EB136: add esp, 0000001Ch
008EB139: lea eax, var_28
008EB13C: mov var_00000098, eax
008EB142: mov var_000000A0, 00004008h
008EB14C: lea esi, var_000000A0
008EB152: push 00000000h
008EB154: push var_80
008EB157: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EB15C: mov ecx, eax
008EB15E: mov edx, esi
008EB160: call 00410940h ; msvbvm60.dll.__vbaVarZero
008EB165: mov edx, 0043DB48h ; x139
008EB16A: lea ecx, var_30
008EB16D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008EB172: lea eax, var_80
008EB175: push eax
008EB176: lea eax, var_30
008EB179: push eax
008EB17A: fld real8 ptr var_000000C8
008EB180: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008EB185: push eax
008EB186: call 007A6910h
008EB18B: lea eax, var_80
008EB18E: push eax
008EB18F: push 00000000h
008EB191: call 00410934h ; Erase
008EB196: lea eax, var_30
008EB199: push eax
008EB19A: lea eax, var_2C
008EB19D: push eax
008EB19E: push 00000002h
008EB1A0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EB1A5: add esp, 0000000Ch
008EB1A8: lea eax, var_3C
008EB1AB: push eax
008EB1AC: lea eax, var_38
008EB1AF: push eax
008EB1B0: lea eax, var_34
008EB1B3: push eax
008EB1B4: push 00000003h
008EB1B6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EB1BB: add esp, 00000010h
008EB1BE: lea eax, var_6C
008EB1C1: push eax
008EB1C2: lea eax, var_5C
008EB1C5: push eax
008EB1C6: lea eax, var_4C
008EB1C9: push eax
008EB1CA: push 00000003h
008EB1CC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EB1D1: add esp, 00000010h
008EB1D4: lea eax, var_0000010C
008EB1DA: push eax
008EB1DB: lea eax, var_000000FC
008EB1E1: push eax
008EB1E2: lea eax, var_24
008EB1E5: push eax
008EB1E6: call 00410A36h ; Next
008EB1EB: mov var_000001A0, eax
008EB1F1: cmp var_000001A0, 00000000h
008EB1F8: jnz 008EAF04h
008EB1FE: jmp 008EB2E5h
008EB203: lea eax, var_2C
008EB206: push eax
008EB207: mov eax, [ebp+08h]
008EB20A: mov eax, [eax]
008EB20C: push [ebp+08h]
008EB20F: call [eax+000001C0h]
008EB215: fclex 
008EB217: mov var_000000CC, eax
008EB21D: cmp var_000000CC, 00000000h
008EB224: jnl 8EB246h
008EB226: push 000001C0h
008EB22B: push 00448930h
008EB230: push [ebp+08h]
008EB233: push var_000000CC
008EB239: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008EB23E: mov var_000001C4, eax
008EB244: jmp 8EB24Dh
008EB246: and var_000001C4, 00000000h
008EB24D: push var_2C
008EB250: call 004109DCh ; Val(arg_1)
008EB255: fstp real8 ptr var_000000C8
008EB25B: push 00000000h
008EB25D: push 00000000h
008EB25F: push 00000001h
008EB261: push 00000000h
008EB263: lea eax, var_80
008EB266: push eax
008EB267: push 00000010h
008EB269: push 00000880h
008EB26E: call 00410946h ; ReDim
008EB273: add esp, 0000001Ch
008EB276: lea eax, var_28
008EB279: mov var_00000088, eax
008EB27F: mov var_00000090, 00004008h
008EB289: lea esi, var_00000090
008EB28F: push 00000000h
008EB291: push var_80
008EB294: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EB299: mov ecx, eax
008EB29B: mov edx, esi
008EB29D: call 00410940h ; msvbvm60.dll.__vbaVarZero
008EB2A2: mov edx, 0043DB48h ; x139
008EB2A7: lea ecx, var_30
008EB2AA: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008EB2AF: lea eax, var_80
008EB2B2: push eax
008EB2B3: lea eax, var_30
008EB2B6: push eax
008EB2B7: fld real8 ptr var_000000C8
008EB2BD: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008EB2C2: push eax
008EB2C3: call 007A6910h
008EB2C8: lea eax, var_80
008EB2CB: push eax
008EB2CC: push 00000000h
008EB2CE: call 00410934h ; Erase
008EB2D3: lea eax, var_30
008EB2D6: push eax
008EB2D7: lea eax, var_2C
008EB2DA: push eax
008EB2DB: push 00000002h
008EB2DD: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EB2E2: add esp, 0000000Ch
008EB2E5: jmp 008EB849h
008EB2EA: push 00000000h
008EB2EC: push 00000000h
008EB2EE: mov eax, [ebp+08h]
008EB2F1: mov eax, [eax]
008EB2F3: push [ebp+08h]
008EB2F6: call [eax+0000033Ch]
008EB2FC: push eax
008EB2FD: lea eax, var_34
008EB300: push eax
008EB301: call 00410A84h ; Set (object)
008EB306: push eax
008EB307: lea eax, var_4C
008EB30A: push eax
008EB30B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB310: add esp, 00000010h
008EB313: push eax
008EB314: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EB319: dec eax
008EB31A: neg eax
008EB31C: sbb eax, eax
008EB31E: inc eax
008EB31F: neg eax
008EB321: mov var_000000CC, ax
008EB328: lea ecx, var_34
008EB32B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008EB330: lea ecx, var_4C
008EB333: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008EB338: movsx eax, word ptr var_000000CC
008EB33F: test eax, eax
008EB341: jz 008EB767h
008EB347: mov var_00000088, 00000001h
008EB351: mov var_00000090, 00000002h
008EB35B: cmp [008F2010h], 00000000h
008EB362: jnz 8EB37Fh
008EB364: push 008F2010h
008EB369: push 00433984h
008EB36E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EB373: mov var_000001C8, 008F2010h
008EB37D: jmp 8EB389h
008EB37F: mov var_000001C8, 008F2010h
008EB389: push 00000000h
008EB38B: push 00000001h
008EB38D: push 00440E48h
008EB392: push 00000000h
008EB394: push 00000018h
008EB396: mov eax, var_000001C8
008EB39C: mov eax, [eax]
008EB39E: mov ecx, var_000001C8
008EB3A4: mov ecx, [ecx]
008EB3A6: mov ecx, [ecx]
008EB3A8: push eax
008EB3A9: call [ecx+00000550h]
008EB3AF: push eax
008EB3B0: lea eax, var_34
008EB3B3: push eax
008EB3B4: call 00410A84h ; Set (object)
008EB3B9: push eax
008EB3BA: lea eax, var_4C
008EB3BD: push eax
008EB3BE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB3C3: add esp, 00000010h
008EB3C6: push eax
008EB3C7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EB3CC: push eax
008EB3CD: lea eax, var_38
008EB3D0: push eax
008EB3D1: call 00410A84h ; Set (object)
008EB3D6: push eax
008EB3D7: lea eax, var_5C
008EB3DA: push eax
008EB3DB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB3E0: add esp, 00000010h
008EB3E3: push eax
008EB3E4: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EB3E9: mov var_00000098, eax
008EB3EF: mov var_000000A0, 00000003h
008EB3F9: mov var_000000A8, 00000001h
008EB403: mov var_000000B0, 00000002h
008EB40D: lea eax, var_00000090
008EB413: push eax
008EB414: lea eax, var_000000A0
008EB41A: push eax
008EB41B: lea eax, var_000000B0
008EB421: push eax
008EB422: lea eax, var_0000012C
008EB428: push eax
008EB429: lea eax, var_0000011C
008EB42F: push eax
008EB430: lea eax, var_24
008EB433: push eax
008EB434: call 00410A3Ch ; For
008EB439: mov var_000001A4, eax
008EB43F: lea eax, var_38
008EB442: push eax
008EB443: lea eax, var_34
008EB446: push eax
008EB447: push 00000002h
008EB449: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EB44E: add esp, 0000000Ch
008EB451: lea eax, var_5C
008EB454: push eax
008EB455: lea eax, var_4C
008EB458: push eax
008EB459: push 00000002h
008EB45B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EB460: add esp, 0000000Ch
008EB463: jmp 008EB755h
008EB468: lea eax, var_24
008EB46B: mov var_00000088, eax
008EB471: mov var_00000090, 0000400Ch
008EB47B: cmp [008F2010h], 00000000h
008EB482: jnz 8EB49Fh
008EB484: push 008F2010h
008EB489: push 00433984h
008EB48E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EB493: mov var_000001CC, 008F2010h
008EB49D: jmp 8EB4A9h
008EB49F: mov var_000001CC, 008F2010h
008EB4A9: push 00000000h
008EB4AB: push 00000004h
008EB4AD: push 00440E58h
008EB4B2: push 00000010h
008EB4B4: pop eax
008EB4B5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EB4BA: lea esi, var_00000090
008EB4C0: mov edi, esp
008EB4C2: movsd 
008EB4C3: movsd 
008EB4C4: movsd 
008EB4C5: movsd 
008EB4C6: push 00000001h
008EB4C8: push 00000000h
008EB4CA: push 00440E48h
008EB4CF: push 00000000h
008EB4D1: push 00000018h
008EB4D3: mov eax, var_000001CC
008EB4D9: mov eax, [eax]
008EB4DB: mov ecx, var_000001CC
008EB4E1: mov ecx, [ecx]
008EB4E3: mov ecx, [ecx]
008EB4E5: push eax
008EB4E6: call [ecx+00000550h]
008EB4EC: push eax
008EB4ED: lea eax, var_34
008EB4F0: push eax
008EB4F1: call 00410A84h ; Set (object)
008EB4F6: push eax
008EB4F7: lea eax, var_4C
008EB4FA: push eax
008EB4FB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB500: add esp, 00000010h
008EB503: push eax
008EB504: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EB509: push eax
008EB50A: lea eax, var_38
008EB50D: push eax
008EB50E: call 00410A84h ; Set (object)
008EB513: push eax
008EB514: lea eax, var_5C
008EB517: push eax
008EB518: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB51D: add esp, 00000020h
008EB520: push eax
008EB521: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EB526: push eax
008EB527: lea eax, var_3C
008EB52A: push eax
008EB52B: call 00410A84h ; Set (object)
008EB530: push eax
008EB531: lea eax, var_6C
008EB534: push eax
008EB535: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB53A: add esp, 00000010h
008EB53D: push eax
008EB53E: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008EB543: sub ax, FFFFh
008EB547: neg ax
008EB54A: sbb eax, eax
008EB54C: inc eax
008EB54D: neg eax
008EB54F: mov var_000000CC, ax
008EB556: lea eax, var_3C
008EB559: push eax
008EB55A: lea eax, var_38
008EB55D: push eax
008EB55E: lea eax, var_34
008EB561: push eax
008EB562: push 00000003h
008EB564: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EB569: add esp, 00000010h
008EB56C: lea eax, var_6C
008EB56F: push eax
008EB570: lea eax, var_5C
008EB573: push eax
008EB574: lea eax, var_4C
008EB577: push eax
008EB578: push 00000003h
008EB57A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EB57F: add esp, 00000010h
008EB582: movsx eax, word ptr var_000000CC
008EB589: test eax, eax
008EB58B: jz 008EB738h
008EB591: lea eax, var_24
008EB594: mov var_00000088, eax
008EB59A: mov var_00000090, 0000400Ch
008EB5A4: cmp [008F2010h], 00000000h
008EB5AB: jnz 8EB5C8h
008EB5AD: push 008F2010h
008EB5B2: push 00433984h
008EB5B7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EB5BC: mov var_000001D0, 008F2010h
008EB5C6: jmp 8EB5D2h
008EB5C8: mov var_000001D0, 008F2010h
008EB5D2: push 00000000h
008EB5D4: push 00000014h
008EB5D6: push 00440E58h
008EB5DB: push 00000010h
008EB5DD: pop eax
008EB5DE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EB5E3: lea esi, var_00000090
008EB5E9: mov edi, esp
008EB5EB: movsd 
008EB5EC: movsd 
008EB5ED: movsd 
008EB5EE: movsd 
008EB5EF: push 00000001h
008EB5F1: push 00000000h
008EB5F3: push 00440E48h
008EB5F8: push 00000000h
008EB5FA: push 00000018h
008EB5FC: mov eax, var_000001D0
008EB602: mov eax, [eax]
008EB604: mov ecx, var_000001D0
008EB60A: mov ecx, [ecx]
008EB60C: mov ecx, [ecx]
008EB60E: push eax
008EB60F: call [ecx+00000550h]
008EB615: push eax
008EB616: lea eax, var_34
008EB619: push eax
008EB61A: call 00410A84h ; Set (object)
008EB61F: push eax
008EB620: lea eax, var_4C
008EB623: push eax
008EB624: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB629: add esp, 00000010h
008EB62C: push eax
008EB62D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EB632: push eax
008EB633: lea eax, var_38
008EB636: push eax
008EB637: call 00410A84h ; Set (object)
008EB63C: push eax
008EB63D: lea eax, var_5C
008EB640: push eax
008EB641: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB646: add esp, 00000020h
008EB649: push eax
008EB64A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EB64F: push eax
008EB650: lea eax, var_3C
008EB653: push eax
008EB654: call 00410A84h ; Set (object)
008EB659: push eax
008EB65A: lea eax, var_6C
008EB65D: push eax
008EB65E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB663: add esp, 00000010h
008EB666: push eax
008EB667: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008EB66C: mov edx, eax
008EB66E: lea ecx, var_2C
008EB671: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EB676: push eax
008EB677: call 004109DCh ; Val(arg_1)
008EB67C: fstp real8 ptr var_000000C8
008EB682: push 00000000h
008EB684: push 00000000h
008EB686: push 00000001h
008EB688: push 00000000h
008EB68A: lea eax, var_80
008EB68D: push eax
008EB68E: push 00000010h
008EB690: push 00000880h
008EB695: call 00410946h ; ReDim
008EB69A: add esp, 0000001Ch
008EB69D: lea eax, var_28
008EB6A0: mov var_00000098, eax
008EB6A6: mov var_000000A0, 00004008h
008EB6B0: lea esi, var_000000A0
008EB6B6: push 00000000h
008EB6B8: push var_80
008EB6BB: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EB6C0: mov ecx, eax
008EB6C2: mov edx, esi
008EB6C4: call 00410940h ; msvbvm60.dll.__vbaVarZero
008EB6C9: mov edx, 0043DB48h ; x139
008EB6CE: lea ecx, var_30
008EB6D1: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008EB6D6: lea eax, var_80
008EB6D9: push eax
008EB6DA: lea eax, var_30
008EB6DD: push eax
008EB6DE: fld real8 ptr var_000000C8
008EB6E4: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008EB6E9: push eax
008EB6EA: call 007A6910h
008EB6EF: lea eax, var_80
008EB6F2: push eax
008EB6F3: push 00000000h
008EB6F5: call 00410934h ; Erase
008EB6FA: lea eax, var_30
008EB6FD: push eax
008EB6FE: lea eax, var_2C
008EB701: push eax
008EB702: push 00000002h
008EB704: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EB709: add esp, 0000000Ch
008EB70C: lea eax, var_3C
008EB70F: push eax
008EB710: lea eax, var_38
008EB713: push eax
008EB714: lea eax, var_34
008EB717: push eax
008EB718: push 00000003h
008EB71A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EB71F: add esp, 00000010h
008EB722: lea eax, var_6C
008EB725: push eax
008EB726: lea eax, var_5C
008EB729: push eax
008EB72A: lea eax, var_4C
008EB72D: push eax
008EB72E: push 00000003h
008EB730: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EB735: add esp, 00000010h
008EB738: lea eax, var_0000012C
008EB73E: push eax
008EB73F: lea eax, var_0000011C
008EB745: push eax
008EB746: lea eax, var_24
008EB749: push eax
008EB74A: call 00410A36h ; Next
008EB74F: mov var_000001A4, eax
008EB755: cmp var_000001A4, 00000000h
008EB75C: jnz 008EB468h
008EB762: jmp 008EB849h
008EB767: lea eax, var_2C
008EB76A: push eax
008EB76B: mov eax, [ebp+08h]
008EB76E: mov eax, [eax]
008EB770: push [ebp+08h]
008EB773: call [eax+000001C0h]
008EB779: fclex 
008EB77B: mov var_000000CC, eax
008EB781: cmp var_000000CC, 00000000h
008EB788: jnl 8EB7AAh
008EB78A: push 000001C0h
008EB78F: push 00448930h
008EB794: push [ebp+08h]
008EB797: push var_000000CC
008EB79D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008EB7A2: mov var_000001D4, eax
008EB7A8: jmp 8EB7B1h
008EB7AA: and var_000001D4, 00000000h
008EB7B1: push var_2C
008EB7B4: call 004109DCh ; Val(arg_1)
008EB7B9: fstp real8 ptr var_000000C8
008EB7BF: push 00000000h
008EB7C1: push 00000000h
008EB7C3: push 00000001h
008EB7C5: push 00000000h
008EB7C7: lea eax, var_80
008EB7CA: push eax
008EB7CB: push 00000010h
008EB7CD: push 00000880h
008EB7D2: call 00410946h ; ReDim
008EB7D7: add esp, 0000001Ch
008EB7DA: lea eax, var_28
008EB7DD: mov var_00000088, eax
008EB7E3: mov var_00000090, 00004008h
008EB7ED: lea esi, var_00000090
008EB7F3: push 00000000h
008EB7F5: push var_80
008EB7F8: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EB7FD: mov ecx, eax
008EB7FF: mov edx, esi
008EB801: call 00410940h ; msvbvm60.dll.__vbaVarZero
008EB806: mov edx, 0043DB48h ; x139
008EB80B: lea ecx, var_30
008EB80E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008EB813: lea eax, var_80
008EB816: push eax
008EB817: lea eax, var_30
008EB81A: push eax
008EB81B: fld real8 ptr var_000000C8
008EB821: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008EB826: push eax
008EB827: call 007A6910h
008EB82C: lea eax, var_80
008EB82F: push eax
008EB830: push 00000000h
008EB832: call 00410934h ; Erase
008EB837: lea eax, var_30
008EB83A: push eax
008EB83B: lea eax, var_2C
008EB83E: push eax
008EB83F: push 00000002h
008EB841: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EB846: add esp, 0000000Ch
008EB849: jmp 008EC6EFh
008EB84E: mov var_00000088, 00000001h
008EB858: mov var_00000090, 00000002h
008EB862: push 00000000h
008EB864: push 00000001h
008EB866: push 00440E48h
008EB86B: push 00000000h
008EB86D: push 00000018h
008EB86F: mov eax, [ebp+08h]
008EB872: mov eax, [eax]
008EB874: push [ebp+08h]
008EB877: call [eax+00000328h]
008EB87D: push eax
008EB87E: lea eax, var_34
008EB881: push eax
008EB882: call 00410A84h ; Set (object)
008EB887: push eax
008EB888: lea eax, var_4C
008EB88B: push eax
008EB88C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB891: add esp, 00000010h
008EB894: push eax
008EB895: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EB89A: push eax
008EB89B: lea eax, var_38
008EB89E: push eax
008EB89F: call 00410A84h ; Set (object)
008EB8A4: push eax
008EB8A5: lea eax, var_5C
008EB8A8: push eax
008EB8A9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB8AE: add esp, 00000010h
008EB8B1: push eax
008EB8B2: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EB8B7: mov var_00000098, eax
008EB8BD: mov var_000000A0, 00000003h
008EB8C7: mov var_000000A8, 00000001h
008EB8D1: mov var_000000B0, 00000002h
008EB8DB: lea eax, var_00000090
008EB8E1: push eax
008EB8E2: lea eax, var_000000A0
008EB8E8: push eax
008EB8E9: lea eax, var_000000B0
008EB8EF: push eax
008EB8F0: lea eax, var_0000014C
008EB8F6: push eax
008EB8F7: lea eax, var_0000013C
008EB8FD: push eax
008EB8FE: lea eax, var_24
008EB901: push eax
008EB902: call 00410A3Ch ; For
008EB907: mov var_000001A8, eax
008EB90D: lea eax, var_38
008EB910: push eax
008EB911: lea eax, var_34
008EB914: push eax
008EB915: push 00000002h
008EB917: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EB91C: add esp, 0000000Ch
008EB91F: lea eax, var_5C
008EB922: push eax
008EB923: lea eax, var_4C
008EB926: push eax
008EB927: push 00000002h
008EB929: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EB92E: add esp, 0000000Ch
008EB931: jmp 008EBB7Dh
008EB936: lea eax, var_24
008EB939: mov var_00000088, eax
008EB93F: mov var_00000090, 0000400Ch
008EB949: push 00000000h
008EB94B: push 00000004h
008EB94D: push 00440E58h
008EB952: push 00000010h
008EB954: pop eax
008EB955: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EB95A: lea esi, var_00000090
008EB960: mov edi, esp
008EB962: movsd 
008EB963: movsd 
008EB964: movsd 
008EB965: movsd 
008EB966: push 00000001h
008EB968: push 00000000h
008EB96A: push 00440E48h
008EB96F: push 00000000h
008EB971: push 00000018h
008EB973: mov eax, [ebp+08h]
008EB976: mov eax, [eax]
008EB978: push [ebp+08h]
008EB97B: call [eax+00000328h]
008EB981: push eax
008EB982: lea eax, var_34
008EB985: push eax
008EB986: call 00410A84h ; Set (object)
008EB98B: push eax
008EB98C: lea eax, var_4C
008EB98F: push eax
008EB990: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB995: add esp, 00000010h
008EB998: push eax
008EB999: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EB99E: push eax
008EB99F: lea eax, var_38
008EB9A2: push eax
008EB9A3: call 00410A84h ; Set (object)
008EB9A8: push eax
008EB9A9: lea eax, var_5C
008EB9AC: push eax
008EB9AD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB9B2: add esp, 00000020h
008EB9B5: push eax
008EB9B6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EB9BB: push eax
008EB9BC: lea eax, var_3C
008EB9BF: push eax
008EB9C0: call 00410A84h ; Set (object)
008EB9C5: push eax
008EB9C6: lea eax, var_6C
008EB9C9: push eax
008EB9CA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EB9CF: add esp, 00000010h
008EB9D2: push eax
008EB9D3: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008EB9D8: sub ax, FFFFh
008EB9DC: neg ax
008EB9DF: sbb eax, eax
008EB9E1: inc eax
008EB9E2: neg eax
008EB9E4: mov var_000000CC, ax
008EB9EB: lea eax, var_3C
008EB9EE: push eax
008EB9EF: lea eax, var_38
008EB9F2: push eax
008EB9F3: lea eax, var_34
008EB9F6: push eax
008EB9F7: push 00000003h
008EB9F9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EB9FE: add esp, 00000010h
008EBA01: lea eax, var_6C
008EBA04: push eax
008EBA05: lea eax, var_5C
008EBA08: push eax
008EBA09: lea eax, var_4C
008EBA0C: push eax
008EBA0D: push 00000003h
008EBA0F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EBA14: add esp, 00000010h
008EBA17: movsx eax, word ptr var_000000CC
008EBA1E: test eax, eax
008EBA20: jz 008EBB60h
008EBA26: mov var_00000098, 00000001h
008EBA30: mov var_000000A0, 00000003h
008EBA3A: lea eax, var_24
008EBA3D: mov var_00000088, eax
008EBA43: mov var_00000090, 0000400Ch
008EBA4D: push var_28
008EBA50: push 00000010h
008EBA52: pop eax
008EBA53: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EBA58: lea esi, var_000000A0
008EBA5E: mov edi, esp
008EBA60: movsd 
008EBA61: movsd 
008EBA62: movsd 
008EBA63: movsd 
008EBA64: push 00000001h
008EBA66: push 00000010h
008EBA68: push 00440E58h
008EBA6D: push 00000010h
008EBA6F: pop eax
008EBA70: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EBA75: lea esi, var_00000090
008EBA7B: mov edi, esp
008EBA7D: movsd 
008EBA7E: movsd 
008EBA7F: movsd 
008EBA80: movsd 
008EBA81: push 00000001h
008EBA83: push 00000000h
008EBA85: push 00440E48h
008EBA8A: push 00000000h
008EBA8C: push 00000018h
008EBA8E: mov eax, [ebp+08h]
008EBA91: mov eax, [eax]
008EBA93: push [ebp+08h]
008EBA96: call [eax+00000328h]
008EBA9C: push eax
008EBA9D: lea eax, var_34
008EBAA0: push eax
008EBAA1: call 00410A84h ; Set (object)
008EBAA6: push eax
008EBAA7: lea eax, var_4C
008EBAAA: push eax
008EBAAB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EBAB0: add esp, 00000010h
008EBAB3: push eax
008EBAB4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EBAB9: push eax
008EBABA: lea eax, var_38
008EBABD: push eax
008EBABE: call 00410A84h ; Set (object)
008EBAC3: push eax
008EBAC4: lea eax, var_5C
008EBAC7: push eax
008EBAC8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EBACD: add esp, 00000020h
008EBAD0: push eax
008EBAD1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EBAD6: push eax
008EBAD7: lea eax, var_3C
008EBADA: push eax
008EBADB: call 00410A84h ; Set (object)
008EBAE0: push eax
008EBAE1: lea eax, var_6C
008EBAE4: push eax
008EBAE5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EBAEA: add esp, 00000020h
008EBAED: push eax
008EBAEE: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008EBAF3: mov edx, eax
008EBAF5: lea ecx, var_2C
008EBAF8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EBAFD: push eax
008EBAFE: call 00410A18h ; &
008EBB03: mov edx, eax
008EBB05: lea ecx, var_30
008EBB08: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EBB0D: push eax
008EBB0E: push 004413D8h
008EBB13: call 00410A18h ; &
008EBB18: mov edx, eax
008EBB1A: lea ecx, var_28
008EBB1D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EBB22: lea eax, var_30
008EBB25: push eax
008EBB26: lea eax, var_2C
008EBB29: push eax
008EBB2A: push 00000002h
008EBB2C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EBB31: add esp, 0000000Ch
008EBB34: lea eax, var_3C
008EBB37: push eax
008EBB38: lea eax, var_38
008EBB3B: push eax
008EBB3C: lea eax, var_34
008EBB3F: push eax
008EBB40: push 00000003h
008EBB42: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EBB47: add esp, 00000010h
008EBB4A: lea eax, var_6C
008EBB4D: push eax
008EBB4E: lea eax, var_5C
008EBB51: push eax
008EBB52: lea eax, var_4C
008EBB55: push eax
008EBB56: push 00000003h
008EBB58: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EBB5D: add esp, 00000010h
008EBB60: lea eax, var_0000014C
008EBB66: push eax
008EBB67: lea eax, var_0000013C
008EBB6D: push eax
008EBB6E: lea eax, var_24
008EBB71: push eax
008EBB72: call 00410A36h ; Next
008EBB77: mov var_000001A8, eax
008EBB7D: cmp var_000001A8, 00000000h
008EBB84: jnz 008EB936h
008EBB8A: push var_28
008EBB8D: push 00000000h
008EBB8F: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008EBB94: test eax, eax
008EBB96: jnz 008EBC1Eh
008EBB9C: mov var_74, 80020004h
008EBBA3: mov var_7C, 0000000Ah
008EBBAA: mov var_64, 80020004h
008EBBB1: mov var_6C, 0000000Ah
008EBBB8: mov var_54, 80020004h
008EBBBF: mov var_5C, 0000000Ah
008EBBC6: mov var_00000088, 004598D8h ; No contact(s) selected
008EBBD0: mov var_00000090, 00000008h
008EBBDA: lea edx, var_00000090
008EBBE0: lea ecx, var_4C
008EBBE3: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008EBBE8: lea eax, var_7C
008EBBEB: push eax
008EBBEC: lea eax, var_6C
008EBBEF: push eax
008EBBF0: lea eax, var_5C
008EBBF3: push eax
008EBBF4: push 00000010h
008EBBF6: lea eax, var_4C
008EBBF9: push eax
008EBBFA: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008EBBFF: lea eax, var_7C
008EBC02: push eax
008EBC03: lea eax, var_6C
008EBC06: push eax
008EBC07: lea eax, var_5C
008EBC0A: push eax
008EBC0B: lea eax, var_4C
008EBC0E: push eax
008EBC0F: push 00000004h
008EBC11: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EBC16: add esp, 00000014h
008EBC19: jmp 008EC6EFh
008EBC1E: cmp word ptr [008F2430h], FFFFh
008EBC26: jnz 008EC190h
008EBC2C: push 00000000h
008EBC2E: push 00000000h
008EBC30: mov eax, [ebp+08h]
008EBC33: mov eax, [eax]
008EBC35: push [ebp+08h]
008EBC38: call [eax+0000033Ch]
008EBC3E: push eax
008EBC3F: lea eax, var_34
008EBC42: push eax
008EBC43: call 00410A84h ; Set (object)
008EBC48: push eax
008EBC49: lea eax, var_4C
008EBC4C: push eax
008EBC4D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EBC52: add esp, 00000010h
008EBC55: push eax
008EBC56: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EBC5B: dec eax
008EBC5C: neg eax
008EBC5E: sbb eax, eax
008EBC60: inc eax
008EBC61: neg eax
008EBC63: mov var_000000CC, ax
008EBC6A: lea ecx, var_34
008EBC6D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008EBC72: lea ecx, var_4C
008EBC75: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008EBC7A: movsx eax, word ptr var_000000CC
008EBC81: test eax, eax
008EBC83: jz 008EC0A9h
008EBC89: mov var_00000088, 00000001h
008EBC93: mov var_00000090, 00000002h
008EBC9D: cmp [008F2010h], 00000000h
008EBCA4: jnz 8EBCC1h
008EBCA6: push 008F2010h
008EBCAB: push 00433984h
008EBCB0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EBCB5: mov var_000001D8, 008F2010h
008EBCBF: jmp 8EBCCBh
008EBCC1: mov var_000001D8, 008F2010h
008EBCCB: push 00000000h
008EBCCD: push 00000001h
008EBCCF: push 00440E48h
008EBCD4: push 00000000h
008EBCD6: push 00000018h
008EBCD8: mov eax, var_000001D8
008EBCDE: mov eax, [eax]
008EBCE0: mov ecx, var_000001D8
008EBCE6: mov ecx, [ecx]
008EBCE8: mov ecx, [ecx]
008EBCEA: push eax
008EBCEB: call [ecx+0000054Ch]
008EBCF1: push eax
008EBCF2: lea eax, var_34
008EBCF5: push eax
008EBCF6: call 00410A84h ; Set (object)
008EBCFB: push eax
008EBCFC: lea eax, var_4C
008EBCFF: push eax
008EBD00: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EBD05: add esp, 00000010h
008EBD08: push eax
008EBD09: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EBD0E: push eax
008EBD0F: lea eax, var_38
008EBD12: push eax
008EBD13: call 00410A84h ; Set (object)
008EBD18: push eax
008EBD19: lea eax, var_5C
008EBD1C: push eax
008EBD1D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EBD22: add esp, 00000010h
008EBD25: push eax
008EBD26: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EBD2B: mov var_00000098, eax
008EBD31: mov var_000000A0, 00000003h
008EBD3B: mov var_000000A8, 00000001h
008EBD45: mov var_000000B0, 00000002h
008EBD4F: lea eax, var_00000090
008EBD55: push eax
008EBD56: lea eax, var_000000A0
008EBD5C: push eax
008EBD5D: lea eax, var_000000B0
008EBD63: push eax
008EBD64: lea eax, var_0000016C
008EBD6A: push eax
008EBD6B: lea eax, var_0000015C
008EBD71: push eax
008EBD72: lea eax, var_24
008EBD75: push eax
008EBD76: call 00410A3Ch ; For
008EBD7B: mov var_000001AC, eax
008EBD81: lea eax, var_38
008EBD84: push eax
008EBD85: lea eax, var_34
008EBD88: push eax
008EBD89: push 00000002h
008EBD8B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EBD90: add esp, 0000000Ch
008EBD93: lea eax, var_5C
008EBD96: push eax
008EBD97: lea eax, var_4C
008EBD9A: push eax
008EBD9B: push 00000002h
008EBD9D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EBDA2: add esp, 0000000Ch
008EBDA5: jmp 008EC097h
008EBDAA: lea eax, var_24
008EBDAD: mov var_00000088, eax
008EBDB3: mov var_00000090, 0000400Ch
008EBDBD: cmp [008F2010h], 00000000h
008EBDC4: jnz 8EBDE1h
008EBDC6: push 008F2010h
008EBDCB: push 00433984h
008EBDD0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EBDD5: mov var_000001DC, 008F2010h
008EBDDF: jmp 8EBDEBh
008EBDE1: mov var_000001DC, 008F2010h
008EBDEB: push 00000000h
008EBDED: push 00000004h
008EBDEF: push 00440E58h
008EBDF4: push 00000010h
008EBDF6: pop eax
008EBDF7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EBDFC: lea esi, var_00000090
008EBE02: mov edi, esp
008EBE04: movsd 
008EBE05: movsd 
008EBE06: movsd 
008EBE07: movsd 
008EBE08: push 00000001h
008EBE0A: push 00000000h
008EBE0C: push 00440E48h
008EBE11: push 00000000h
008EBE13: push 00000018h
008EBE15: mov eax, var_000001DC
008EBE1B: mov eax, [eax]
008EBE1D: mov ecx, var_000001DC
008EBE23: mov ecx, [ecx]
008EBE25: mov ecx, [ecx]
008EBE27: push eax
008EBE28: call [ecx+0000054Ch]
008EBE2E: push eax
008EBE2F: lea eax, var_34
008EBE32: push eax
008EBE33: call 00410A84h ; Set (object)
008EBE38: push eax
008EBE39: lea eax, var_4C
008EBE3C: push eax
008EBE3D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EBE42: add esp, 00000010h
008EBE45: push eax
008EBE46: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EBE4B: push eax
008EBE4C: lea eax, var_38
008EBE4F: push eax
008EBE50: call 00410A84h ; Set (object)
008EBE55: push eax
008EBE56: lea eax, var_5C
008EBE59: push eax
008EBE5A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EBE5F: add esp, 00000020h
008EBE62: push eax
008EBE63: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EBE68: push eax
008EBE69: lea eax, var_3C
008EBE6C: push eax
008EBE6D: call 00410A84h ; Set (object)
008EBE72: push eax
008EBE73: lea eax, var_6C
008EBE76: push eax
008EBE77: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EBE7C: add esp, 00000010h
008EBE7F: push eax
008EBE80: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008EBE85: sub ax, FFFFh
008EBE89: neg ax
008EBE8C: sbb eax, eax
008EBE8E: inc eax
008EBE8F: neg eax
008EBE91: mov var_000000CC, ax
008EBE98: lea eax, var_3C
008EBE9B: push eax
008EBE9C: lea eax, var_38
008EBE9F: push eax
008EBEA0: lea eax, var_34
008EBEA3: push eax
008EBEA4: push 00000003h
008EBEA6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EBEAB: add esp, 00000010h
008EBEAE: lea eax, var_6C
008EBEB1: push eax
008EBEB2: lea eax, var_5C
008EBEB5: push eax
008EBEB6: lea eax, var_4C
008EBEB9: push eax
008EBEBA: push 00000003h
008EBEBC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EBEC1: add esp, 00000010h
008EBEC4: movsx eax, word ptr var_000000CC
008EBECB: test eax, eax
008EBECD: jz 008EC07Ah
008EBED3: lea eax, var_24
008EBED6: mov var_00000088, eax
008EBEDC: mov var_00000090, 0000400Ch
008EBEE6: cmp [008F2010h], 00000000h
008EBEED: jnz 8EBF0Ah
008EBEEF: push 008F2010h
008EBEF4: push 00433984h
008EBEF9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EBEFE: mov var_000001E0, 008F2010h
008EBF08: jmp 8EBF14h
008EBF0A: mov var_000001E0, 008F2010h
008EBF14: push 00000000h
008EBF16: push 00000014h
008EBF18: push 00440E58h
008EBF1D: push 00000010h
008EBF1F: pop eax
008EBF20: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EBF25: lea esi, var_00000090
008EBF2B: mov edi, esp
008EBF2D: movsd 
008EBF2E: movsd 
008EBF2F: movsd 
008EBF30: movsd 
008EBF31: push 00000001h
008EBF33: push 00000000h
008EBF35: push 00440E48h
008EBF3A: push 00000000h
008EBF3C: push 00000018h
008EBF3E: mov eax, var_000001E0
008EBF44: mov eax, [eax]
008EBF46: mov ecx, var_000001E0
008EBF4C: mov ecx, [ecx]
008EBF4E: mov ecx, [ecx]
008EBF50: push eax
008EBF51: call [ecx+0000054Ch]
008EBF57: push eax
008EBF58: lea eax, var_34
008EBF5B: push eax
008EBF5C: call 00410A84h ; Set (object)
008EBF61: push eax
008EBF62: lea eax, var_4C
008EBF65: push eax
008EBF66: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EBF6B: add esp, 00000010h
008EBF6E: push eax
008EBF6F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EBF74: push eax
008EBF75: lea eax, var_38
008EBF78: push eax
008EBF79: call 00410A84h ; Set (object)
008EBF7E: push eax
008EBF7F: lea eax, var_5C
008EBF82: push eax
008EBF83: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EBF88: add esp, 00000020h
008EBF8B: push eax
008EBF8C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EBF91: push eax
008EBF92: lea eax, var_3C
008EBF95: push eax
008EBF96: call 00410A84h ; Set (object)
008EBF9B: push eax
008EBF9C: lea eax, var_6C
008EBF9F: push eax
008EBFA0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EBFA5: add esp, 00000010h
008EBFA8: push eax
008EBFA9: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008EBFAE: mov edx, eax
008EBFB0: lea ecx, var_2C
008EBFB3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EBFB8: push eax
008EBFB9: call 004109DCh ; Val(arg_1)
008EBFBE: fstp real8 ptr var_000000C8
008EBFC4: push 00000000h
008EBFC6: push 00000000h
008EBFC8: push 00000001h
008EBFCA: push 00000000h
008EBFCC: lea eax, var_80
008EBFCF: push eax
008EBFD0: push 00000010h
008EBFD2: push 00000880h
008EBFD7: call 00410946h ; ReDim
008EBFDC: add esp, 0000001Ch
008EBFDF: lea eax, var_28
008EBFE2: mov var_00000098, eax
008EBFE8: mov var_000000A0, 00004008h
008EBFF2: lea esi, var_000000A0
008EBFF8: push 00000000h
008EBFFA: push var_80
008EBFFD: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EC002: mov ecx, eax
008EC004: mov edx, esi
008EC006: call 00410940h ; msvbvm60.dll.__vbaVarZero
008EC00B: mov edx, 0043DB58h ; x140
008EC010: lea ecx, var_30
008EC013: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008EC018: lea eax, var_80
008EC01B: push eax
008EC01C: lea eax, var_30
008EC01F: push eax
008EC020: fld real8 ptr var_000000C8
008EC026: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008EC02B: push eax
008EC02C: call 007A6910h
008EC031: lea eax, var_80
008EC034: push eax
008EC035: push 00000000h
008EC037: call 00410934h ; Erase
008EC03C: lea eax, var_30
008EC03F: push eax
008EC040: lea eax, var_2C
008EC043: push eax
008EC044: push 00000002h
008EC046: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EC04B: add esp, 0000000Ch
008EC04E: lea eax, var_3C
008EC051: push eax
008EC052: lea eax, var_38
008EC055: push eax
008EC056: lea eax, var_34
008EC059: push eax
008EC05A: push 00000003h
008EC05C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EC061: add esp, 00000010h
008EC064: lea eax, var_6C
008EC067: push eax
008EC068: lea eax, var_5C
008EC06B: push eax
008EC06C: lea eax, var_4C
008EC06F: push eax
008EC070: push 00000003h
008EC072: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EC077: add esp, 00000010h
008EC07A: lea eax, var_0000016C
008EC080: push eax
008EC081: lea eax, var_0000015C
008EC087: push eax
008EC088: lea eax, var_24
008EC08B: push eax
008EC08C: call 00410A36h ; Next
008EC091: mov var_000001AC, eax
008EC097: cmp var_000001AC, 00000000h
008EC09E: jnz 008EBDAAh
008EC0A4: jmp 008EC18Bh
008EC0A9: lea eax, var_2C
008EC0AC: push eax
008EC0AD: mov eax, [ebp+08h]
008EC0B0: mov eax, [eax]
008EC0B2: push [ebp+08h]
008EC0B5: call [eax+000001C0h]
008EC0BB: fclex 
008EC0BD: mov var_000000CC, eax
008EC0C3: cmp var_000000CC, 00000000h
008EC0CA: jnl 8EC0ECh
008EC0CC: push 000001C0h
008EC0D1: push 00448930h
008EC0D6: push [ebp+08h]
008EC0D9: push var_000000CC
008EC0DF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008EC0E4: mov var_000001E4, eax
008EC0EA: jmp 8EC0F3h
008EC0EC: and var_000001E4, 00000000h
008EC0F3: push var_2C
008EC0F6: call 004109DCh ; Val(arg_1)
008EC0FB: fstp real8 ptr var_000000C8
008EC101: push 00000000h
008EC103: push 00000000h
008EC105: push 00000001h
008EC107: push 00000000h
008EC109: lea eax, var_80
008EC10C: push eax
008EC10D: push 00000010h
008EC10F: push 00000880h
008EC114: call 00410946h ; ReDim
008EC119: add esp, 0000001Ch
008EC11C: lea eax, var_28
008EC11F: mov var_00000088, eax
008EC125: mov var_00000090, 00004008h
008EC12F: lea esi, var_00000090
008EC135: push 00000000h
008EC137: push var_80
008EC13A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EC13F: mov ecx, eax
008EC141: mov edx, esi
008EC143: call 00410940h ; msvbvm60.dll.__vbaVarZero
008EC148: mov edx, 0043DB58h ; x140
008EC14D: lea ecx, var_30
008EC150: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008EC155: lea eax, var_80
008EC158: push eax
008EC159: lea eax, var_30
008EC15C: push eax
008EC15D: fld real8 ptr var_000000C8
008EC163: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008EC168: push eax
008EC169: call 007A6910h
008EC16E: lea eax, var_80
008EC171: push eax
008EC172: push 00000000h
008EC174: call 00410934h ; Erase
008EC179: lea eax, var_30
008EC17C: push eax
008EC17D: lea eax, var_2C
008EC180: push eax
008EC181: push 00000002h
008EC183: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EC188: add esp, 0000000Ch
008EC18B: jmp 008EC6EFh
008EC190: push 00000000h
008EC192: push 00000000h
008EC194: mov eax, [ebp+08h]
008EC197: mov eax, [eax]
008EC199: push [ebp+08h]
008EC19C: call [eax+0000033Ch]
008EC1A2: push eax
008EC1A3: lea eax, var_34
008EC1A6: push eax
008EC1A7: call 00410A84h ; Set (object)
008EC1AC: push eax
008EC1AD: lea eax, var_4C
008EC1B0: push eax
008EC1B1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EC1B6: add esp, 00000010h
008EC1B9: push eax
008EC1BA: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EC1BF: dec eax
008EC1C0: neg eax
008EC1C2: sbb eax, eax
008EC1C4: inc eax
008EC1C5: neg eax
008EC1C7: mov var_000000CC, ax
008EC1CE: lea ecx, var_34
008EC1D1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008EC1D6: lea ecx, var_4C
008EC1D9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008EC1DE: movsx eax, word ptr var_000000CC
008EC1E5: test eax, eax
008EC1E7: jz 008EC60Dh
008EC1ED: mov var_00000088, 00000001h
008EC1F7: mov var_00000090, 00000002h
008EC201: cmp [008F2010h], 00000000h
008EC208: jnz 8EC225h
008EC20A: push 008F2010h
008EC20F: push 00433984h
008EC214: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EC219: mov var_000001E8, 008F2010h
008EC223: jmp 8EC22Fh
008EC225: mov var_000001E8, 008F2010h
008EC22F: push 00000000h
008EC231: push 00000001h
008EC233: push 00440E48h
008EC238: push 00000000h
008EC23A: push 00000018h
008EC23C: mov eax, var_000001E8
008EC242: mov eax, [eax]
008EC244: mov ecx, var_000001E8
008EC24A: mov ecx, [ecx]
008EC24C: mov ecx, [ecx]
008EC24E: push eax
008EC24F: call [ecx+00000550h]
008EC255: push eax
008EC256: lea eax, var_34
008EC259: push eax
008EC25A: call 00410A84h ; Set (object)
008EC25F: push eax
008EC260: lea eax, var_4C
008EC263: push eax
008EC264: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EC269: add esp, 00000010h
008EC26C: push eax
008EC26D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EC272: push eax
008EC273: lea eax, var_38
008EC276: push eax
008EC277: call 00410A84h ; Set (object)
008EC27C: push eax
008EC27D: lea eax, var_5C
008EC280: push eax
008EC281: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EC286: add esp, 00000010h
008EC289: push eax
008EC28A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EC28F: mov var_00000098, eax
008EC295: mov var_000000A0, 00000003h
008EC29F: mov var_000000A8, 00000001h
008EC2A9: mov var_000000B0, 00000002h
008EC2B3: lea eax, var_00000090
008EC2B9: push eax
008EC2BA: lea eax, var_000000A0
008EC2C0: push eax
008EC2C1: lea eax, var_000000B0
008EC2C7: push eax
008EC2C8: lea eax, var_0000018C
008EC2CE: push eax
008EC2CF: lea eax, var_0000017C
008EC2D5: push eax
008EC2D6: lea eax, var_24
008EC2D9: push eax
008EC2DA: call 00410A3Ch ; For
008EC2DF: mov var_000001B0, eax
008EC2E5: lea eax, var_38
008EC2E8: push eax
008EC2E9: lea eax, var_34
008EC2EC: push eax
008EC2ED: push 00000002h
008EC2EF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EC2F4: add esp, 0000000Ch
008EC2F7: lea eax, var_5C
008EC2FA: push eax
008EC2FB: lea eax, var_4C
008EC2FE: push eax
008EC2FF: push 00000002h
008EC301: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EC306: add esp, 0000000Ch
008EC309: jmp 008EC5FBh
008EC30E: lea eax, var_24
008EC311: mov var_00000088, eax
008EC317: mov var_00000090, 0000400Ch
008EC321: cmp [008F2010h], 00000000h
008EC328: jnz 8EC345h
008EC32A: push 008F2010h
008EC32F: push 00433984h
008EC334: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EC339: mov var_000001EC, 008F2010h
008EC343: jmp 8EC34Fh
008EC345: mov var_000001EC, 008F2010h
008EC34F: push 00000000h
008EC351: push 00000004h
008EC353: push 00440E58h
008EC358: push 00000010h
008EC35A: pop eax
008EC35B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EC360: lea esi, var_00000090
008EC366: mov edi, esp
008EC368: movsd 
008EC369: movsd 
008EC36A: movsd 
008EC36B: movsd 
008EC36C: push 00000001h
008EC36E: push 00000000h
008EC370: push 00440E48h
008EC375: push 00000000h
008EC377: push 00000018h
008EC379: mov eax, var_000001EC
008EC37F: mov eax, [eax]
008EC381: mov ecx, var_000001EC
008EC387: mov ecx, [ecx]
008EC389: mov ecx, [ecx]
008EC38B: push eax
008EC38C: call [ecx+00000550h]
008EC392: push eax
008EC393: lea eax, var_34
008EC396: push eax
008EC397: call 00410A84h ; Set (object)
008EC39C: push eax
008EC39D: lea eax, var_4C
008EC3A0: push eax
008EC3A1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EC3A6: add esp, 00000010h
008EC3A9: push eax
008EC3AA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EC3AF: push eax
008EC3B0: lea eax, var_38
008EC3B3: push eax
008EC3B4: call 00410A84h ; Set (object)
008EC3B9: push eax
008EC3BA: lea eax, var_5C
008EC3BD: push eax
008EC3BE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EC3C3: add esp, 00000020h
008EC3C6: push eax
008EC3C7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EC3CC: push eax
008EC3CD: lea eax, var_3C
008EC3D0: push eax
008EC3D1: call 00410A84h ; Set (object)
008EC3D6: push eax
008EC3D7: lea eax, var_6C
008EC3DA: push eax
008EC3DB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EC3E0: add esp, 00000010h
008EC3E3: push eax
008EC3E4: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008EC3E9: sub ax, FFFFh
008EC3ED: neg ax
008EC3F0: sbb eax, eax
008EC3F2: inc eax
008EC3F3: neg eax
008EC3F5: mov var_000000CC, ax
008EC3FC: lea eax, var_3C
008EC3FF: push eax
008EC400: lea eax, var_38
008EC403: push eax
008EC404: lea eax, var_34
008EC407: push eax
008EC408: push 00000003h
008EC40A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EC40F: add esp, 00000010h
008EC412: lea eax, var_6C
008EC415: push eax
008EC416: lea eax, var_5C
008EC419: push eax
008EC41A: lea eax, var_4C
008EC41D: push eax
008EC41E: push 00000003h
008EC420: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EC425: add esp, 00000010h
008EC428: movsx eax, word ptr var_000000CC
008EC42F: test eax, eax
008EC431: jz 008EC5DEh
008EC437: lea eax, var_24
008EC43A: mov var_00000088, eax
008EC440: mov var_00000090, 0000400Ch
008EC44A: cmp [008F2010h], 00000000h
008EC451: jnz 8EC46Eh
008EC453: push 008F2010h
008EC458: push 00433984h
008EC45D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EC462: mov var_000001F0, 008F2010h
008EC46C: jmp 8EC478h
008EC46E: mov var_000001F0, 008F2010h
008EC478: push 00000000h
008EC47A: push 00000014h
008EC47C: push 00440E58h
008EC481: push 00000010h
008EC483: pop eax
008EC484: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EC489: lea esi, var_00000090
008EC48F: mov edi, esp
008EC491: movsd 
008EC492: movsd 
008EC493: movsd 
008EC494: movsd 
008EC495: push 00000001h
008EC497: push 00000000h
008EC499: push 00440E48h
008EC49E: push 00000000h
008EC4A0: push 00000018h
008EC4A2: mov eax, var_000001F0
008EC4A8: mov eax, [eax]
008EC4AA: mov ecx, var_000001F0
008EC4B0: mov ecx, [ecx]
008EC4B2: mov ecx, [ecx]
008EC4B4: push eax
008EC4B5: call [ecx+00000550h]
008EC4BB: push eax
008EC4BC: lea eax, var_34
008EC4BF: push eax
008EC4C0: call 00410A84h ; Set (object)
008EC4C5: push eax
008EC4C6: lea eax, var_4C
008EC4C9: push eax
008EC4CA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EC4CF: add esp, 00000010h
008EC4D2: push eax
008EC4D3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EC4D8: push eax
008EC4D9: lea eax, var_38
008EC4DC: push eax
008EC4DD: call 00410A84h ; Set (object)
008EC4E2: push eax
008EC4E3: lea eax, var_5C
008EC4E6: push eax
008EC4E7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EC4EC: add esp, 00000020h
008EC4EF: push eax
008EC4F0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EC4F5: push eax
008EC4F6: lea eax, var_3C
008EC4F9: push eax
008EC4FA: call 00410A84h ; Set (object)
008EC4FF: push eax
008EC500: lea eax, var_6C
008EC503: push eax
008EC504: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EC509: add esp, 00000010h
008EC50C: push eax
008EC50D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008EC512: mov edx, eax
008EC514: lea ecx, var_2C
008EC517: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EC51C: push eax
008EC51D: call 004109DCh ; Val(arg_1)
008EC522: fstp real8 ptr var_000000C8
008EC528: push 00000000h
008EC52A: push 00000000h
008EC52C: push 00000001h
008EC52E: push 00000000h
008EC530: lea eax, var_80
008EC533: push eax
008EC534: push 00000010h
008EC536: push 00000880h
008EC53B: call 00410946h ; ReDim
008EC540: add esp, 0000001Ch
008EC543: lea eax, var_28
008EC546: mov var_00000098, eax
008EC54C: mov var_000000A0, 00004008h
008EC556: lea esi, var_000000A0
008EC55C: push 00000000h
008EC55E: push var_80
008EC561: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EC566: mov ecx, eax
008EC568: mov edx, esi
008EC56A: call 00410940h ; msvbvm60.dll.__vbaVarZero
008EC56F: mov edx, 0043DB58h ; x140
008EC574: lea ecx, var_30
008EC577: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008EC57C: lea eax, var_80
008EC57F: push eax
008EC580: lea eax, var_30
008EC583: push eax
008EC584: fld real8 ptr var_000000C8
008EC58A: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008EC58F: push eax
008EC590: call 007A6910h
008EC595: lea eax, var_80
008EC598: push eax
008EC599: push 00000000h
008EC59B: call 00410934h ; Erase
008EC5A0: lea eax, var_30
008EC5A3: push eax
008EC5A4: lea eax, var_2C
008EC5A7: push eax
008EC5A8: push 00000002h
008EC5AA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EC5AF: add esp, 0000000Ch
008EC5B2: lea eax, var_3C
008EC5B5: push eax
008EC5B6: lea eax, var_38
008EC5B9: push eax
008EC5BA: lea eax, var_34
008EC5BD: push eax
008EC5BE: push 00000003h
008EC5C0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EC5C5: add esp, 00000010h
008EC5C8: lea eax, var_6C
008EC5CB: push eax
008EC5CC: lea eax, var_5C
008EC5CF: push eax
008EC5D0: lea eax, var_4C
008EC5D3: push eax
008EC5D4: push 00000003h
008EC5D6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EC5DB: add esp, 00000010h
008EC5DE: lea eax, var_0000018C
008EC5E4: push eax
008EC5E5: lea eax, var_0000017C
008EC5EB: push eax
008EC5EC: lea eax, var_24
008EC5EF: push eax
008EC5F0: call 00410A36h ; Next
008EC5F5: mov var_000001B0, eax
008EC5FB: cmp var_000001B0, 00000000h
008EC602: jnz 008EC30Eh
008EC608: jmp 008EC6EFh
008EC60D: lea eax, var_2C
008EC610: push eax
008EC611: mov eax, [ebp+08h]
008EC614: mov eax, [eax]
008EC616: push [ebp+08h]
008EC619: call [eax+000001C0h]
008EC61F: fclex 
008EC621: mov var_000000CC, eax
008EC627: cmp var_000000CC, 00000000h
008EC62E: jnl 8EC650h
008EC630: push 000001C0h
008EC635: push 00448930h
008EC63A: push [ebp+08h]
008EC63D: push var_000000CC
008EC643: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008EC648: mov var_000001F4, eax
008EC64E: jmp 8EC657h
008EC650: and var_000001F4, 00000000h
008EC657: push var_2C
008EC65A: call 004109DCh ; Val(arg_1)
008EC65F: fstp real8 ptr var_000000C8
008EC665: push 00000000h
008EC667: push 00000000h
008EC669: push 00000001h
008EC66B: push 00000000h
008EC66D: lea eax, var_80
008EC670: push eax
008EC671: push 00000010h
008EC673: push 00000880h
008EC678: call 00410946h ; ReDim
008EC67D: add esp, 0000001Ch
008EC680: lea eax, var_28
008EC683: mov var_00000088, eax
008EC689: mov var_00000090, 00004008h
008EC693: lea esi, var_00000090
008EC699: push 00000000h
008EC69B: push var_80
008EC69E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EC6A3: mov ecx, eax
008EC6A5: mov edx, esi
008EC6A7: call 00410940h ; msvbvm60.dll.__vbaVarZero
008EC6AC: mov edx, 0043DB58h ; x140
008EC6B1: lea ecx, var_30
008EC6B4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008EC6B9: lea eax, var_80
008EC6BC: push eax
008EC6BD: lea eax, var_30
008EC6C0: push eax
008EC6C1: fld real8 ptr var_000000C8
008EC6C7: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008EC6CC: push eax
008EC6CD: call 007A6910h
008EC6D2: lea eax, var_80
008EC6D5: push eax
008EC6D6: push 00000000h
008EC6D8: call 00410934h ; Erase
008EC6DD: lea eax, var_30
008EC6E0: push eax
008EC6E1: lea eax, var_2C
008EC6E4: push eax
008EC6E5: push 00000002h
008EC6E7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EC6EC: add esp, 0000000Ch
008EC6EF: mov var_04, 00000000h
008EC6F6: wait 
008EC6F7: push 008EC7BBh
008EC6FC: jmp 8EC74Ch
008EC6FE: lea eax, var_30
008EC701: push eax
008EC702: lea eax, var_2C
008EC705: push eax
008EC706: push 00000002h
008EC708: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EC70D: add esp, 0000000Ch
008EC710: lea eax, var_3C
008EC713: push eax
008EC714: lea eax, var_38
008EC717: push eax
008EC718: lea eax, var_34
008EC71B: push eax
008EC71C: push 00000003h
008EC71E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EC723: add esp, 00000010h
008EC726: lea eax, var_7C
008EC729: push eax
008EC72A: lea eax, var_6C
008EC72D: push eax
008EC72E: lea eax, var_5C
008EC731: push eax
008EC732: lea eax, var_4C
008EC735: push eax
008EC736: push 00000004h
008EC738: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EC73D: add esp, 00000014h
008EC740: lea eax, var_80
008EC743: push eax
008EC744: push 00000000h
008EC746: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008EC74B: ret 
End Sub

Private sub mnuSkypeGetContacts__8EE2C5
008EE2C5: push ebp
008EE2C6: mov ebp, esp
008EE2C8: sub esp, 0000000Ch
008EE2CB: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008EE2D0: mov eax, fs:[00h]
008EE2D6: push eax
008EE2D7: mov fs:[00000000h], esp
008EE2DE: mov eax, 00000118h
008EE2E3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EE2E8: push ebx
008EE2E9: push esi
008EE2EA: push edi
008EE2EB: mov var_0C, esp
008EE2EE: mov var_08, 004105F0h
008EE2F5: mov eax, [ebp+08h]
008EE2F8: and eax, 00000001h
008EE2FB: mov var_04, eax
008EE2FE: mov eax, [ebp+08h]
008EE301: and al, FEh
008EE303: mov [ebp+08h], eax
008EE306: mov eax, [ebp+08h]
008EE309: mov eax, [eax]
008EE30B: push [ebp+08h]
008EE30E: call [eax+04h]
008EE311: push 00000000h
008EE313: push 00000003h
008EE315: push 00440E48h
008EE31A: push 00000000h
008EE31C: push 00000018h
008EE31E: mov eax, [ebp+08h]
008EE321: mov eax, [eax]
008EE323: push [ebp+08h]
008EE326: call [eax+00000328h]
008EE32C: push eax
008EE32D: lea eax, var_30
008EE330: push eax
008EE331: call 00410A84h ; Set (object)
008EE336: push eax
008EE337: lea eax, var_48
008EE33A: push eax
008EE33B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EE340: add esp, 00000010h
008EE343: push eax
008EE344: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EE349: push eax
008EE34A: lea eax, var_34
008EE34D: push eax
008EE34E: call 00410A84h ; Set (object)
008EE353: push eax
008EE354: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008EE359: add esp, 0000000Ch
008EE35C: lea eax, var_34
008EE35F: push eax
008EE360: lea eax, var_30
008EE363: push eax
008EE364: push 00000002h
008EE366: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EE36B: add esp, 0000000Ch
008EE36E: lea ecx, var_48
008EE371: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008EE376: mov eax, [ebp+0Ch]
008EE379: mov ax, [eax]
008EE37C: mov var_000000FC, ax
008EE383: movsx eax, word ptr var_000000FC
008EE38A: mov var_00000110, eax
008EE390: cmp var_00000110, 00000000h
008EE397: jz 8EE3ABh
008EE399: cmp var_00000110, 00000001h
008EE3A0: jz 008EE4E4h
008EE3A6: jmp 008EEDADh
008EE3AB: lea eax, var_28
008EE3AE: push eax
008EE3AF: mov eax, [ebp+08h]
008EE3B2: mov eax, [eax]
008EE3B4: push [ebp+08h]
008EE3B7: call [eax+000001C0h]
008EE3BD: fclex 
008EE3BF: mov var_000000B8, eax
008EE3C5: cmp var_000000B8, 00000000h
008EE3CC: jnl 8EE3EEh
008EE3CE: push 000001C0h
008EE3D3: push 00448930h
008EE3D8: push [ebp+08h]
008EE3DB: push var_000000B8
008EE3E1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008EE3E6: mov var_00000114, eax
008EE3EC: jmp 8EE3F5h
008EE3EE: and var_00000114, 00000000h
008EE3F5: push var_28
008EE3F8: call 004109DCh ; Val(arg_1)
008EE3FD: fstp real8 ptr var_000000B4
008EE403: push 00000000h
008EE405: push 00000002h
008EE407: push 00000001h
008EE409: push 00000000h
008EE40B: lea eax, var_6C
008EE40E: push eax
008EE40F: push 00000010h
008EE411: push 00000880h
008EE416: call 00410946h ; ReDim
008EE41B: add esp, 0000001Ch
008EE41E: mov var_74, 00000001h
008EE425: mov var_7C, 00000002h
008EE42C: lea esi, var_7C
008EE42F: push 00000000h
008EE431: push var_6C
008EE434: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EE439: mov ecx, eax
008EE43B: mov edx, esi
008EE43D: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EE442: mov var_00000084, 00000001h
008EE44C: mov var_0000008C, 00000002h
008EE456: lea esi, var_0000008C
008EE45C: push 00000001h
008EE45E: push var_6C
008EE461: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EE466: mov ecx, eax
008EE468: mov edx, esi
008EE46A: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EE46F: mov var_00000094, 00000001h
008EE479: mov var_0000009C, 00000002h
008EE483: lea esi, var_0000009C
008EE489: push 00000002h
008EE48B: push var_6C
008EE48E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EE493: mov ecx, eax
008EE495: mov edx, esi
008EE497: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EE49C: mov edx, 0043DB00h ; x135
008EE4A1: lea ecx, var_2C
008EE4A4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008EE4A9: lea eax, var_6C
008EE4AC: push eax
008EE4AD: lea eax, var_2C
008EE4B0: push eax
008EE4B1: fld real8 ptr var_000000B4
008EE4B7: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008EE4BC: push eax
008EE4BD: call 007A6910h
008EE4C2: lea eax, var_6C
008EE4C5: push eax
008EE4C6: push 00000000h
008EE4C8: call 00410934h ; Erase
008EE4CD: lea eax, var_2C
008EE4D0: push eax
008EE4D1: lea eax, var_28
008EE4D4: push eax
008EE4D5: push 00000002h
008EE4D7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EE4DC: add esp, 0000000Ch
008EE4DF: jmp 008EEDADh
008EE4E4: cmp word ptr [008F2430h], FFFFh
008EE4EC: jnz 008EE952h
008EE4F2: mov var_74, 00000001h
008EE4F9: mov var_7C, 00000002h
008EE500: cmp [008F2010h], 00000000h
008EE507: jnz 8EE524h
008EE509: push 008F2010h
008EE50E: push 00433984h
008EE513: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EE518: mov var_00000118, 008F2010h
008EE522: jmp 8EE52Eh
008EE524: mov var_00000118, 008F2010h
008EE52E: push 00000000h
008EE530: push 00000001h
008EE532: push 00440E48h
008EE537: push 00000000h
008EE539: push 00000018h
008EE53B: mov eax, var_00000118
008EE541: mov eax, [eax]
008EE543: mov ecx, var_00000118
008EE549: mov ecx, [ecx]
008EE54B: mov ecx, [ecx]
008EE54D: push eax
008EE54E: call [ecx+0000054Ch]
008EE554: push eax
008EE555: lea eax, var_30
008EE558: push eax
008EE559: call 00410A84h ; Set (object)
008EE55E: push eax
008EE55F: lea eax, var_48
008EE562: push eax
008EE563: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EE568: add esp, 00000010h
008EE56B: push eax
008EE56C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EE571: push eax
008EE572: lea eax, var_34
008EE575: push eax
008EE576: call 00410A84h ; Set (object)
008EE57B: push eax
008EE57C: lea eax, var_58
008EE57F: push eax
008EE580: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EE585: add esp, 00000010h
008EE588: push eax
008EE589: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EE58E: mov var_00000084, eax
008EE594: mov var_0000008C, 00000003h
008EE59E: mov var_00000094, 00000001h
008EE5A8: mov var_0000009C, 00000002h
008EE5B2: lea eax, var_7C
008EE5B5: push eax
008EE5B6: lea eax, var_0000008C
008EE5BC: push eax
008EE5BD: lea eax, var_0000009C
008EE5C3: push eax
008EE5C4: lea eax, var_000000D8
008EE5CA: push eax
008EE5CB: lea eax, var_000000C8
008EE5D1: push eax
008EE5D2: lea eax, var_24
008EE5D5: push eax
008EE5D6: call 00410A3Ch ; For
008EE5DB: mov var_00000108, eax
008EE5E1: lea eax, var_34
008EE5E4: push eax
008EE5E5: lea eax, var_30
008EE5E8: push eax
008EE5E9: push 00000002h
008EE5EB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EE5F0: add esp, 0000000Ch
008EE5F3: lea eax, var_58
008EE5F6: push eax
008EE5F7: lea eax, var_48
008EE5FA: push eax
008EE5FB: push 00000002h
008EE5FD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EE602: add esp, 0000000Ch
008EE605: jmp 008EE940h
008EE60A: lea eax, var_24
008EE60D: mov var_74, eax
008EE610: mov var_7C, 0000400Ch
008EE617: cmp [008F2010h], 00000000h
008EE61E: jnz 8EE63Bh
008EE620: push 008F2010h
008EE625: push 00433984h
008EE62A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EE62F: mov var_0000011C, 008F2010h
008EE639: jmp 8EE645h
008EE63B: mov var_0000011C, 008F2010h
008EE645: push 00000000h
008EE647: push 00000004h
008EE649: push 00440E58h
008EE64E: push 00000010h
008EE650: pop eax
008EE651: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EE656: lea esi, var_7C
008EE659: mov edi, esp
008EE65B: movsd 
008EE65C: movsd 
008EE65D: movsd 
008EE65E: movsd 
008EE65F: push 00000001h
008EE661: push 00000000h
008EE663: push 00440E48h
008EE668: push 00000000h
008EE66A: push 00000018h
008EE66C: mov eax, var_0000011C
008EE672: mov eax, [eax]
008EE674: mov ecx, var_0000011C
008EE67A: mov ecx, [ecx]
008EE67C: mov ecx, [ecx]
008EE67E: push eax
008EE67F: call [ecx+0000054Ch]
008EE685: push eax
008EE686: lea eax, var_30
008EE689: push eax
008EE68A: call 00410A84h ; Set (object)
008EE68F: push eax
008EE690: lea eax, var_48
008EE693: push eax
008EE694: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EE699: add esp, 00000010h
008EE69C: push eax
008EE69D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EE6A2: push eax
008EE6A3: lea eax, var_34
008EE6A6: push eax
008EE6A7: call 00410A84h ; Set (object)
008EE6AC: push eax
008EE6AD: lea eax, var_58
008EE6B0: push eax
008EE6B1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EE6B6: add esp, 00000020h
008EE6B9: push eax
008EE6BA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EE6BF: push eax
008EE6C0: lea eax, var_38
008EE6C3: push eax
008EE6C4: call 00410A84h ; Set (object)
008EE6C9: push eax
008EE6CA: lea eax, var_68
008EE6CD: push eax
008EE6CE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EE6D3: add esp, 00000010h
008EE6D6: push eax
008EE6D7: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008EE6DC: sub ax, FFFFh
008EE6E0: neg ax
008EE6E3: sbb eax, eax
008EE6E5: inc eax
008EE6E6: neg eax
008EE6E8: mov var_000000B8, ax
008EE6EF: lea eax, var_38
008EE6F2: push eax
008EE6F3: lea eax, var_34
008EE6F6: push eax
008EE6F7: lea eax, var_30
008EE6FA: push eax
008EE6FB: push 00000003h
008EE6FD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EE702: add esp, 00000010h
008EE705: lea eax, var_68
008EE708: push eax
008EE709: lea eax, var_58
008EE70C: push eax
008EE70D: lea eax, var_48
008EE710: push eax
008EE711: push 00000003h
008EE713: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EE718: add esp, 00000010h
008EE71B: movsx eax, word ptr var_000000B8
008EE722: test eax, eax
008EE724: jz 008EE923h
008EE72A: lea eax, var_24
008EE72D: mov var_74, eax
008EE730: mov var_7C, 0000400Ch
008EE737: cmp [008F2010h], 00000000h
008EE73E: jnz 8EE75Bh
008EE740: push 008F2010h
008EE745: push 00433984h
008EE74A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EE74F: mov var_00000120, 008F2010h
008EE759: jmp 8EE765h
008EE75B: mov var_00000120, 008F2010h
008EE765: push 00000000h
008EE767: push 00000014h
008EE769: push 00440E58h
008EE76E: push 00000010h
008EE770: pop eax
008EE771: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EE776: lea esi, var_7C
008EE779: mov edi, esp
008EE77B: movsd 
008EE77C: movsd 
008EE77D: movsd 
008EE77E: movsd 
008EE77F: push 00000001h
008EE781: push 00000000h
008EE783: push 00440E48h
008EE788: push 00000000h
008EE78A: push 00000018h
008EE78C: mov eax, var_00000120
008EE792: mov eax, [eax]
008EE794: mov ecx, var_00000120
008EE79A: mov ecx, [ecx]
008EE79C: mov ecx, [ecx]
008EE79E: push eax
008EE79F: call [ecx+0000054Ch]
008EE7A5: push eax
008EE7A6: lea eax, var_30
008EE7A9: push eax
008EE7AA: call 00410A84h ; Set (object)
008EE7AF: push eax
008EE7B0: lea eax, var_48
008EE7B3: push eax
008EE7B4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EE7B9: add esp, 00000010h
008EE7BC: push eax
008EE7BD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EE7C2: push eax
008EE7C3: lea eax, var_34
008EE7C6: push eax
008EE7C7: call 00410A84h ; Set (object)
008EE7CC: push eax
008EE7CD: lea eax, var_58
008EE7D0: push eax
008EE7D1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EE7D6: add esp, 00000020h
008EE7D9: push eax
008EE7DA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EE7DF: push eax
008EE7E0: lea eax, var_38
008EE7E3: push eax
008EE7E4: call 00410A84h ; Set (object)
008EE7E9: push eax
008EE7EA: lea eax, var_68
008EE7ED: push eax
008EE7EE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EE7F3: add esp, 00000010h
008EE7F6: push eax
008EE7F7: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008EE7FC: mov edx, eax
008EE7FE: lea ecx, var_28
008EE801: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EE806: push eax
008EE807: call 004109DCh ; Val(arg_1)
008EE80C: fstp real8 ptr var_000000B4
008EE812: push 00000000h
008EE814: push 00000002h
008EE816: push 00000001h
008EE818: push 00000000h
008EE81A: lea eax, var_6C
008EE81D: push eax
008EE81E: push 00000010h
008EE820: push 00000880h
008EE825: call 00410946h ; ReDim
008EE82A: add esp, 0000001Ch
008EE82D: mov var_00000084, 00000001h
008EE837: mov var_0000008C, 00000002h
008EE841: lea esi, var_0000008C
008EE847: push 00000000h
008EE849: push var_6C
008EE84C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EE851: mov ecx, eax
008EE853: mov edx, esi
008EE855: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EE85A: mov var_00000094, 00000001h
008EE864: mov var_0000009C, 00000002h
008EE86E: lea esi, var_0000009C
008EE874: push 00000001h
008EE876: push var_6C
008EE879: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EE87E: mov ecx, eax
008EE880: mov edx, esi
008EE882: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EE887: mov var_000000A4, 00000001h
008EE891: mov var_000000AC, 00000002h
008EE89B: lea esi, var_000000AC
008EE8A1: push 00000002h
008EE8A3: push var_6C
008EE8A6: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EE8AB: mov ecx, eax
008EE8AD: mov edx, esi
008EE8AF: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EE8B4: mov edx, 0043DB00h ; x135
008EE8B9: lea ecx, var_2C
008EE8BC: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008EE8C1: lea eax, var_6C
008EE8C4: push eax
008EE8C5: lea eax, var_2C
008EE8C8: push eax
008EE8C9: fld real8 ptr var_000000B4
008EE8CF: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008EE8D4: push eax
008EE8D5: call 007A6910h
008EE8DA: lea eax, var_6C
008EE8DD: push eax
008EE8DE: push 00000000h
008EE8E0: call 00410934h ; Erase
008EE8E5: lea eax, var_2C
008EE8E8: push eax
008EE8E9: lea eax, var_28
008EE8EC: push eax
008EE8ED: push 00000002h
008EE8EF: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EE8F4: add esp, 0000000Ch
008EE8F7: lea eax, var_38
008EE8FA: push eax
008EE8FB: lea eax, var_34
008EE8FE: push eax
008EE8FF: lea eax, var_30
008EE902: push eax
008EE903: push 00000003h
008EE905: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EE90A: add esp, 00000010h
008EE90D: lea eax, var_68
008EE910: push eax
008EE911: lea eax, var_58
008EE914: push eax
008EE915: lea eax, var_48
008EE918: push eax
008EE919: push 00000003h
008EE91B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EE920: add esp, 00000010h
008EE923: lea eax, var_000000D8
008EE929: push eax
008EE92A: lea eax, var_000000C8
008EE930: push eax
008EE931: lea eax, var_24
008EE934: push eax
008EE935: call 00410A36h ; Next
008EE93A: mov var_00000108, eax
008EE940: cmp var_00000108, 00000000h
008EE947: jnz 008EE60Ah
008EE94D: jmp 008EEDADh
008EE952: mov var_74, 00000001h
008EE959: mov var_7C, 00000002h
008EE960: cmp [008F2010h], 00000000h
008EE967: jnz 8EE984h
008EE969: push 008F2010h
008EE96E: push 00433984h
008EE973: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EE978: mov var_00000124, 008F2010h
008EE982: jmp 8EE98Eh
008EE984: mov var_00000124, 008F2010h
008EE98E: push 00000000h
008EE990: push 00000001h
008EE992: push 00440E48h
008EE997: push 00000000h
008EE999: push 00000018h
008EE99B: mov eax, var_00000124
008EE9A1: mov eax, [eax]
008EE9A3: mov ecx, var_00000124
008EE9A9: mov ecx, [ecx]
008EE9AB: mov ecx, [ecx]
008EE9AD: push eax
008EE9AE: call [ecx+00000550h]
008EE9B4: push eax
008EE9B5: lea eax, var_30
008EE9B8: push eax
008EE9B9: call 00410A84h ; Set (object)
008EE9BE: push eax
008EE9BF: lea eax, var_48
008EE9C2: push eax
008EE9C3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EE9C8: add esp, 00000010h
008EE9CB: push eax
008EE9CC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EE9D1: push eax
008EE9D2: lea eax, var_34
008EE9D5: push eax
008EE9D6: call 00410A84h ; Set (object)
008EE9DB: push eax
008EE9DC: lea eax, var_58
008EE9DF: push eax
008EE9E0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EE9E5: add esp, 00000010h
008EE9E8: push eax
008EE9E9: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EE9EE: mov var_00000084, eax
008EE9F4: mov var_0000008C, 00000003h
008EE9FE: mov var_00000094, 00000001h
008EEA08: mov var_0000009C, 00000002h
008EEA12: lea eax, var_7C
008EEA15: push eax
008EEA16: lea eax, var_0000008C
008EEA1C: push eax
008EEA1D: lea eax, var_0000009C
008EEA23: push eax
008EEA24: lea eax, var_000000F8
008EEA2A: push eax
008EEA2B: lea eax, var_000000E8
008EEA31: push eax
008EEA32: lea eax, var_24
008EEA35: push eax
008EEA36: call 00410A3Ch ; For
008EEA3B: mov var_0000010C, eax
008EEA41: lea eax, var_34
008EEA44: push eax
008EEA45: lea eax, var_30
008EEA48: push eax
008EEA49: push 00000002h
008EEA4B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EEA50: add esp, 0000000Ch
008EEA53: lea eax, var_58
008EEA56: push eax
008EEA57: lea eax, var_48
008EEA5A: push eax
008EEA5B: push 00000002h
008EEA5D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EEA62: add esp, 0000000Ch
008EEA65: jmp 008EEDA0h
008EEA6A: lea eax, var_24
008EEA6D: mov var_74, eax
008EEA70: mov var_7C, 0000400Ch
008EEA77: cmp [008F2010h], 00000000h
008EEA7E: jnz 8EEA9Bh
008EEA80: push 008F2010h
008EEA85: push 00433984h
008EEA8A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EEA8F: mov var_00000128, 008F2010h
008EEA99: jmp 8EEAA5h
008EEA9B: mov var_00000128, 008F2010h
008EEAA5: push 00000000h
008EEAA7: push 00000004h
008EEAA9: push 00440E58h
008EEAAE: push 00000010h
008EEAB0: pop eax
008EEAB1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EEAB6: lea esi, var_7C
008EEAB9: mov edi, esp
008EEABB: movsd 
008EEABC: movsd 
008EEABD: movsd 
008EEABE: movsd 
008EEABF: push 00000001h
008EEAC1: push 00000000h
008EEAC3: push 00440E48h
008EEAC8: push 00000000h
008EEACA: push 00000018h
008EEACC: mov eax, var_00000128
008EEAD2: mov eax, [eax]
008EEAD4: mov ecx, var_00000128
008EEADA: mov ecx, [ecx]
008EEADC: mov ecx, [ecx]
008EEADE: push eax
008EEADF: call [ecx+00000550h]
008EEAE5: push eax
008EEAE6: lea eax, var_30
008EEAE9: push eax
008EEAEA: call 00410A84h ; Set (object)
008EEAEF: push eax
008EEAF0: lea eax, var_48
008EEAF3: push eax
008EEAF4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EEAF9: add esp, 00000010h
008EEAFC: push eax
008EEAFD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EEB02: push eax
008EEB03: lea eax, var_34
008EEB06: push eax
008EEB07: call 00410A84h ; Set (object)
008EEB0C: push eax
008EEB0D: lea eax, var_58
008EEB10: push eax
008EEB11: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EEB16: add esp, 00000020h
008EEB19: push eax
008EEB1A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EEB1F: push eax
008EEB20: lea eax, var_38
008EEB23: push eax
008EEB24: call 00410A84h ; Set (object)
008EEB29: push eax
008EEB2A: lea eax, var_68
008EEB2D: push eax
008EEB2E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EEB33: add esp, 00000010h
008EEB36: push eax
008EEB37: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008EEB3C: sub ax, FFFFh
008EEB40: neg ax
008EEB43: sbb eax, eax
008EEB45: inc eax
008EEB46: neg eax
008EEB48: mov var_000000B8, ax
008EEB4F: lea eax, var_38
008EEB52: push eax
008EEB53: lea eax, var_34
008EEB56: push eax
008EEB57: lea eax, var_30
008EEB5A: push eax
008EEB5B: push 00000003h
008EEB5D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EEB62: add esp, 00000010h
008EEB65: lea eax, var_68
008EEB68: push eax
008EEB69: lea eax, var_58
008EEB6C: push eax
008EEB6D: lea eax, var_48
008EEB70: push eax
008EEB71: push 00000003h
008EEB73: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EEB78: add esp, 00000010h
008EEB7B: movsx eax, word ptr var_000000B8
008EEB82: test eax, eax
008EEB84: jz 008EED83h
008EEB8A: lea eax, var_24
008EEB8D: mov var_74, eax
008EEB90: mov var_7C, 0000400Ch
008EEB97: cmp [008F2010h], 00000000h
008EEB9E: jnz 8EEBBBh
008EEBA0: push 008F2010h
008EEBA5: push 00433984h
008EEBAA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EEBAF: mov var_0000012C, 008F2010h
008EEBB9: jmp 8EEBC5h
008EEBBB: mov var_0000012C, 008F2010h
008EEBC5: push 00000000h
008EEBC7: push 00000014h
008EEBC9: push 00440E58h
008EEBCE: push 00000010h
008EEBD0: pop eax
008EEBD1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EEBD6: lea esi, var_7C
008EEBD9: mov edi, esp
008EEBDB: movsd 
008EEBDC: movsd 
008EEBDD: movsd 
008EEBDE: movsd 
008EEBDF: push 00000001h
008EEBE1: push 00000000h
008EEBE3: push 00440E48h
008EEBE8: push 00000000h
008EEBEA: push 00000018h
008EEBEC: mov eax, var_0000012C
008EEBF2: mov eax, [eax]
008EEBF4: mov ecx, var_0000012C
008EEBFA: mov ecx, [ecx]
008EEBFC: mov ecx, [ecx]
008EEBFE: push eax
008EEBFF: call [ecx+00000550h]
008EEC05: push eax
008EEC06: lea eax, var_30
008EEC09: push eax
008EEC0A: call 00410A84h ; Set (object)
008EEC0F: push eax
008EEC10: lea eax, var_48
008EEC13: push eax
008EEC14: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EEC19: add esp, 00000010h
008EEC1C: push eax
008EEC1D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EEC22: push eax
008EEC23: lea eax, var_34
008EEC26: push eax
008EEC27: call 00410A84h ; Set (object)
008EEC2C: push eax
008EEC2D: lea eax, var_58
008EEC30: push eax
008EEC31: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EEC36: add esp, 00000020h
008EEC39: push eax
008EEC3A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EEC3F: push eax
008EEC40: lea eax, var_38
008EEC43: push eax
008EEC44: call 00410A84h ; Set (object)
008EEC49: push eax
008EEC4A: lea eax, var_68
008EEC4D: push eax
008EEC4E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EEC53: add esp, 00000010h
008EEC56: push eax
008EEC57: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008EEC5C: mov edx, eax
008EEC5E: lea ecx, var_28
008EEC61: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EEC66: push eax
008EEC67: call 004109DCh ; Val(arg_1)
008EEC6C: fstp real8 ptr var_000000B4
008EEC72: push 00000000h
008EEC74: push 00000002h
008EEC76: push 00000001h
008EEC78: push 00000000h
008EEC7A: lea eax, var_6C
008EEC7D: push eax
008EEC7E: push 00000010h
008EEC80: push 00000880h
008EEC85: call 00410946h ; ReDim
008EEC8A: add esp, 0000001Ch
008EEC8D: mov var_00000084, 00000001h
008EEC97: mov var_0000008C, 00000002h
008EECA1: lea esi, var_0000008C
008EECA7: push 00000000h
008EECA9: push var_6C
008EECAC: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EECB1: mov ecx, eax
008EECB3: mov edx, esi
008EECB5: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EECBA: mov var_00000094, 00000001h
008EECC4: mov var_0000009C, 00000002h
008EECCE: lea esi, var_0000009C
008EECD4: push 00000001h
008EECD6: push var_6C
008EECD9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EECDE: mov ecx, eax
008EECE0: mov edx, esi
008EECE2: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EECE7: mov var_000000A4, 00000001h
008EECF1: mov var_000000AC, 00000002h
008EECFB: lea esi, var_000000AC
008EED01: push 00000002h
008EED03: push var_6C
008EED06: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EED0B: mov ecx, eax
008EED0D: mov edx, esi
008EED0F: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EED14: mov edx, 0043DB00h ; x135
008EED19: lea ecx, var_2C
008EED1C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008EED21: lea eax, var_6C
008EED24: push eax
008EED25: lea eax, var_2C
008EED28: push eax
008EED29: fld real8 ptr var_000000B4
008EED2F: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008EED34: push eax
008EED35: call 007A6910h
008EED3A: lea eax, var_6C
008EED3D: push eax
008EED3E: push 00000000h
008EED40: call 00410934h ; Erase
008EED45: lea eax, var_2C
008EED48: push eax
008EED49: lea eax, var_28
008EED4C: push eax
008EED4D: push 00000002h
008EED4F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EED54: add esp, 0000000Ch
008EED57: lea eax, var_38
008EED5A: push eax
008EED5B: lea eax, var_34
008EED5E: push eax
008EED5F: lea eax, var_30
008EED62: push eax
008EED63: push 00000003h
008EED65: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EED6A: add esp, 00000010h
008EED6D: lea eax, var_68
008EED70: push eax
008EED71: lea eax, var_58
008EED74: push eax
008EED75: lea eax, var_48
008EED78: push eax
008EED79: push 00000003h
008EED7B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EED80: add esp, 00000010h
008EED83: lea eax, var_000000F8
008EED89: push eax
008EED8A: lea eax, var_000000E8
008EED90: push eax
008EED91: lea eax, var_24
008EED94: push eax
008EED95: call 00410A36h ; Next
008EED9A: mov var_0000010C, eax
008EEDA0: cmp var_0000010C, 00000000h
008EEDA7: jnz 008EEA6Ah
008EEDAD: mov var_04, 00000000h
008EEDB4: wait 
008EEDB5: push 008EEE35h
008EEDBA: jmp 8EEE06h
008EEDBC: lea eax, var_2C
008EEDBF: push eax
008EEDC0: lea eax, var_28
008EEDC3: push eax
008EEDC4: push 00000002h
008EEDC6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EEDCB: add esp, 0000000Ch
008EEDCE: lea eax, var_38
008EEDD1: push eax
008EEDD2: lea eax, var_34
008EEDD5: push eax
008EEDD6: lea eax, var_30
008EEDD9: push eax
008EEDDA: push 00000003h
008EEDDC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EEDE1: add esp, 00000010h
008EEDE4: lea eax, var_68
008EEDE7: push eax
008EEDE8: lea eax, var_58
008EEDEB: push eax
008EEDEC: lea eax, var_48
008EEDEF: push eax
008EEDF0: push 00000003h
008EEDF2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EEDF7: add esp, 00000010h
008EEDFA: lea eax, var_6C
008EEDFD: push eax
008EEDFE: push 00000000h
008EEE00: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008EEE05: ret 
End Sub

Private sub mnuSkypeCopy__8EC7DA
008EC7DA: push ebp
008EC7DB: mov ebp, esp
008EC7DD: sub esp, 00000018h
008EC7E0: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008EC7E5: mov eax, fs:[00h]
008EC7EB: push eax
008EC7EC: mov fs:[00000000h], esp
008EC7F3: mov eax, 00000184h
008EC7F8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EC7FD: push ebx
008EC7FE: push esi
008EC7FF: push edi
008EC800: mov var_18, esp
008EC803: mov var_14, 00410558h
008EC80A: mov eax, [ebp+08h]
008EC80D: and eax, 00000001h
008EC810: mov var_10, eax
008EC813: mov eax, [ebp+08h]
008EC816: and al, FEh
008EC818: mov [ebp+08h], eax
008EC81B: mov var_0C, 00000000h
008EC822: mov eax, [ebp+08h]
008EC825: mov eax, [eax]
008EC827: push [ebp+08h]
008EC82A: call [eax+04h]
008EC82D: mov var_04, 00000001h
008EC834: mov var_04, 00000002h
008EC83B: push FFFFFFFFh
008EC83D: call 00410A60h ; On Error ...
008EC842: mov var_04, 00000003h
008EC849: mov eax, [ebp+0Ch]
008EC84C: mov ax, [eax]
008EC84F: mov var_00000154, ax
008EC856: movsx eax, word ptr var_00000154
008EC85D: mov var_00000174, eax
008EC863: cmp var_00000174, 00000000h
008EC86A: jz 8EC883h
008EC86C: cmp var_00000174, 00000001h
008EC873: jz 008ED151h
008EC879: jmp 008ED6B4h
008EC87E: jmp 008ED6B4h
008EC883: mov var_04, 00000005h
008EC88A: mov var_000000C8, 00000001h
008EC894: mov var_000000D0, 00000002h
008EC89E: push 00000000h
008EC8A0: push 00000001h
008EC8A2: push 00440E48h
008EC8A7: push 00000000h
008EC8A9: push 00000018h
008EC8AB: mov eax, [ebp+08h]
008EC8AE: mov eax, [eax]
008EC8B0: push [ebp+08h]
008EC8B3: call [eax+00000328h]
008EC8B9: push eax
008EC8BA: lea eax, var_4C
008EC8BD: push eax
008EC8BE: call 00410A84h ; Set (object)
008EC8C3: push eax
008EC8C4: lea eax, var_70
008EC8C7: push eax
008EC8C8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EC8CD: add esp, 00000010h
008EC8D0: push eax
008EC8D1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EC8D6: push eax
008EC8D7: lea eax, var_50
008EC8DA: push eax
008EC8DB: call 00410A84h ; Set (object)
008EC8E0: push eax
008EC8E1: lea eax, var_80
008EC8E4: push eax
008EC8E5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EC8EA: add esp, 00000010h
008EC8ED: push eax
008EC8EE: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EC8F3: mov var_000000D8, eax
008EC8F9: mov var_000000E0, 00000003h
008EC903: mov var_000000E8, 00000001h
008EC90D: mov var_000000F0, 00000002h
008EC917: lea eax, var_000000D0
008EC91D: push eax
008EC91E: lea eax, var_000000E0
008EC924: push eax
008EC925: lea eax, var_000000F0
008EC92B: push eax
008EC92C: lea eax, var_00000130
008EC932: push eax
008EC933: lea eax, var_00000120
008EC939: push eax
008EC93A: lea eax, var_30
008EC93D: push eax
008EC93E: call 00410A3Ch ; For
008EC943: mov var_0000016C, eax
008EC949: lea eax, var_50
008EC94C: push eax
008EC94D: lea eax, var_4C
008EC950: push eax
008EC951: push 00000002h
008EC953: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EC958: add esp, 0000000Ch
008EC95B: lea eax, var_80
008EC95E: push eax
008EC95F: lea eax, var_70
008EC962: push eax
008EC963: push 00000002h
008EC965: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EC96A: add esp, 0000000Ch
008EC96D: jmp 008ECF40h
008EC972: mov var_04, 00000006h
008EC979: lea eax, var_30
008EC97C: mov var_000000C8, eax
008EC982: mov var_000000D0, 0000400Ch
008EC98C: push 00000000h
008EC98E: push 00000004h
008EC990: push 00440E58h
008EC995: push 00000010h
008EC997: pop eax
008EC998: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EC99D: lea esi, var_000000D0
008EC9A3: mov edi, esp
008EC9A5: movsd 
008EC9A6: movsd 
008EC9A7: movsd 
008EC9A8: movsd 
008EC9A9: push 00000001h
008EC9AB: push 00000000h
008EC9AD: push 00440E48h
008EC9B2: push 00000000h
008EC9B4: push 00000018h
008EC9B6: mov eax, [ebp+08h]
008EC9B9: mov eax, [eax]
008EC9BB: push [ebp+08h]
008EC9BE: call [eax+00000328h]
008EC9C4: push eax
008EC9C5: lea eax, var_4C
008EC9C8: push eax
008EC9C9: call 00410A84h ; Set (object)
008EC9CE: push eax
008EC9CF: lea eax, var_70
008EC9D2: push eax
008EC9D3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EC9D8: add esp, 00000010h
008EC9DB: push eax
008EC9DC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EC9E1: push eax
008EC9E2: lea eax, var_50
008EC9E5: push eax
008EC9E6: call 00410A84h ; Set (object)
008EC9EB: push eax
008EC9EC: lea eax, var_80
008EC9EF: push eax
008EC9F0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EC9F5: add esp, 00000020h
008EC9F8: push eax
008EC9F9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EC9FE: push eax
008EC9FF: lea eax, var_54
008ECA02: push eax
008ECA03: call 00410A84h ; Set (object)
008ECA08: push eax
008ECA09: lea eax, var_00000090
008ECA0F: push eax
008ECA10: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ECA15: add esp, 00000010h
008ECA18: push eax
008ECA19: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008ECA1E: sub ax, FFFFh
008ECA22: neg ax
008ECA25: sbb eax, eax
008ECA27: inc eax
008ECA28: neg eax
008ECA2A: mov var_00000104, ax
008ECA31: lea eax, var_54
008ECA34: push eax
008ECA35: lea eax, var_50
008ECA38: push eax
008ECA39: lea eax, var_4C
008ECA3C: push eax
008ECA3D: push 00000003h
008ECA3F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008ECA44: add esp, 00000010h
008ECA47: lea eax, var_00000090
008ECA4D: push eax
008ECA4E: lea eax, var_80
008ECA51: push eax
008ECA52: lea eax, var_70
008ECA55: push eax
008ECA56: push 00000003h
008ECA58: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008ECA5D: add esp, 00000010h
008ECA60: movsx eax, word ptr var_00000104
008ECA67: test eax, eax
008ECA69: jz 008ECF1Ch
008ECA6F: mov var_04, 00000007h
008ECA76: lea eax, var_30
008ECA79: mov var_000000C8, eax
008ECA7F: mov var_000000D0, 0000400Ch
008ECA89: push 00000000h
008ECA8B: push 00000000h
008ECA8D: push 00440E58h
008ECA92: push 00000010h
008ECA94: pop eax
008ECA95: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ECA9A: lea esi, var_000000D0
008ECAA0: mov edi, esp
008ECAA2: movsd 
008ECAA3: movsd 
008ECAA4: movsd 
008ECAA5: movsd 
008ECAA6: push 00000001h
008ECAA8: push 00000000h
008ECAAA: push 00440E48h
008ECAAF: push 00000000h
008ECAB1: push 00000018h
008ECAB3: mov eax, [ebp+08h]
008ECAB6: mov eax, [eax]
008ECAB8: push [ebp+08h]
008ECABB: call [eax+00000328h]
008ECAC1: push eax
008ECAC2: lea eax, var_4C
008ECAC5: push eax
008ECAC6: call 00410A84h ; Set (object)
008ECACB: push eax
008ECACC: lea eax, var_70
008ECACF: push eax
008ECAD0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ECAD5: add esp, 00000010h
008ECAD8: push eax
008ECAD9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ECADE: push eax
008ECADF: lea eax, var_50
008ECAE2: push eax
008ECAE3: call 00410A84h ; Set (object)
008ECAE8: push eax
008ECAE9: lea eax, var_80
008ECAEC: push eax
008ECAED: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ECAF2: add esp, 00000020h
008ECAF5: push eax
008ECAF6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ECAFB: push eax
008ECAFC: lea eax, var_54
008ECAFF: push eax
008ECB00: call 00410A84h ; Set (object)
008ECB05: push eax
008ECB06: lea eax, var_00000090
008ECB0C: push eax
008ECB0D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ECB12: add esp, 00000010h
008ECB15: push eax
008ECB16: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008ECB1B: mov edx, eax
008ECB1D: lea ecx, var_38
008ECB20: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ECB25: push eax
008ECB26: push 00000000h
008ECB28: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008ECB2D: neg eax
008ECB2F: sbb eax, eax
008ECB31: inc eax
008ECB32: neg eax
008ECB34: mov var_00000104, ax
008ECB3B: lea ecx, var_38
008ECB3E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008ECB43: lea eax, var_54
008ECB46: push eax
008ECB47: lea eax, var_50
008ECB4A: push eax
008ECB4B: lea eax, var_4C
008ECB4E: push eax
008ECB4F: push 00000003h
008ECB51: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008ECB56: add esp, 00000010h
008ECB59: lea eax, var_00000090
008ECB5F: push eax
008ECB60: lea eax, var_80
008ECB63: push eax
008ECB64: lea eax, var_70
008ECB67: push eax
008ECB68: push 00000003h
008ECB6A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008ECB6F: add esp, 00000010h
008ECB72: movsx eax, word ptr var_00000104
008ECB79: test eax, eax
008ECB7B: jz 008ECCCDh
008ECB81: mov var_04, 00000008h
008ECB88: mov var_000000D8, 00000001h
008ECB92: mov var_000000E0, 00000003h
008ECB9C: lea eax, var_30
008ECB9F: mov var_000000C8, eax
008ECBA5: mov var_000000D0, 0000400Ch
008ECBAF: push var_34
008ECBB2: push 00000010h
008ECBB4: pop eax
008ECBB5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ECBBA: lea esi, var_000000E0
008ECBC0: mov edi, esp
008ECBC2: movsd 
008ECBC3: movsd 
008ECBC4: movsd 
008ECBC5: movsd 
008ECBC6: push 00000001h
008ECBC8: push 00000010h
008ECBCA: push 00440E58h
008ECBCF: push 00000010h
008ECBD1: pop eax
008ECBD2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ECBD7: lea esi, var_000000D0
008ECBDD: mov edi, esp
008ECBDF: movsd 
008ECBE0: movsd 
008ECBE1: movsd 
008ECBE2: movsd 
008ECBE3: push 00000001h
008ECBE5: push 00000000h
008ECBE7: push 00440E48h
008ECBEC: push 00000000h
008ECBEE: push 00000018h
008ECBF0: mov eax, [ebp+08h]
008ECBF3: mov eax, [eax]
008ECBF5: push [ebp+08h]
008ECBF8: call [eax+00000328h]
008ECBFE: push eax
008ECBFF: lea eax, var_4C
008ECC02: push eax
008ECC03: call 00410A84h ; Set (object)
008ECC08: push eax
008ECC09: lea eax, var_70
008ECC0C: push eax
008ECC0D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ECC12: add esp, 00000010h
008ECC15: push eax
008ECC16: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ECC1B: push eax
008ECC1C: lea eax, var_50
008ECC1F: push eax
008ECC20: call 00410A84h ; Set (object)
008ECC25: push eax
008ECC26: lea eax, var_80
008ECC29: push eax
008ECC2A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ECC2F: add esp, 00000020h
008ECC32: push eax
008ECC33: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ECC38: push eax
008ECC39: lea eax, var_54
008ECC3C: push eax
008ECC3D: call 00410A84h ; Set (object)
008ECC42: push eax
008ECC43: lea eax, var_00000090
008ECC49: push eax
008ECC4A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ECC4F: add esp, 00000020h
008ECC52: push eax
008ECC53: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008ECC58: mov edx, eax
008ECC5A: lea ecx, var_38
008ECC5D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ECC62: push eax
008ECC63: call 00410A18h ; &
008ECC68: mov edx, eax
008ECC6A: lea ecx, var_3C
008ECC6D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ECC72: push eax
008ECC73: push 00441264h ; vbCrLf
008ECC78: call 00410A18h ; &
008ECC7D: mov edx, eax
008ECC7F: lea ecx, var_34
008ECC82: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ECC87: lea eax, var_3C
008ECC8A: push eax
008ECC8B: lea eax, var_38
008ECC8E: push eax
008ECC8F: push 00000002h
008ECC91: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008ECC96: add esp, 0000000Ch
008ECC99: lea eax, var_54
008ECC9C: push eax
008ECC9D: lea eax, var_50
008ECCA0: push eax
008ECCA1: lea eax, var_4C
008ECCA4: push eax
008ECCA5: push 00000003h
008ECCA7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008ECCAC: add esp, 00000010h
008ECCAF: lea eax, var_00000090
008ECCB5: push eax
008ECCB6: lea eax, var_80
008ECCB9: push eax
008ECCBA: lea eax, var_70
008ECCBD: push eax
008ECCBE: push 00000003h
008ECCC0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008ECCC5: add esp, 00000010h
008ECCC8: jmp 008ECF1Ch
008ECCCD: mov var_04, 0000000Ah
008ECCD4: lea eax, var_30
008ECCD7: mov var_000000C8, eax
008ECCDD: mov var_000000D0, 0000400Ch
008ECCE7: mov var_000000E8, 00000001h
008ECCF1: mov var_000000F0, 00000003h
008ECCFB: lea eax, var_30
008ECCFE: mov var_000000D8, eax
008ECD04: mov var_000000E0, 0000400Ch
008ECD0E: push var_34
008ECD11: push 00000000h
008ECD13: push 00000000h
008ECD15: push 00440E58h
008ECD1A: push 00000010h
008ECD1C: pop eax
008ECD1D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ECD22: lea esi, var_000000D0
008ECD28: mov edi, esp
008ECD2A: movsd 
008ECD2B: movsd 
008ECD2C: movsd 
008ECD2D: movsd 
008ECD2E: push 00000001h
008ECD30: push 00000000h
008ECD32: push 00440E48h
008ECD37: push 00000000h
008ECD39: push 00000018h
008ECD3B: mov eax, [ebp+08h]
008ECD3E: mov eax, [eax]
008ECD40: push [ebp+08h]
008ECD43: call [eax+00000328h]
008ECD49: push eax
008ECD4A: lea eax, var_4C
008ECD4D: push eax
008ECD4E: call 00410A84h ; Set (object)
008ECD53: push eax
008ECD54: lea eax, var_70
008ECD57: push eax
008ECD58: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ECD5D: add esp, 00000010h
008ECD60: push eax
008ECD61: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ECD66: push eax
008ECD67: lea eax, var_50
008ECD6A: push eax
008ECD6B: call 00410A84h ; Set (object)
008ECD70: push eax
008ECD71: lea eax, var_80
008ECD74: push eax
008ECD75: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ECD7A: add esp, 00000020h
008ECD7D: push eax
008ECD7E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ECD83: push eax
008ECD84: lea eax, var_54
008ECD87: push eax
008ECD88: call 00410A84h ; Set (object)
008ECD8D: push eax
008ECD8E: lea eax, var_00000090
008ECD94: push eax
008ECD95: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ECD9A: add esp, 00000010h
008ECD9D: push eax
008ECD9E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008ECDA3: mov edx, eax
008ECDA5: lea ecx, var_38
008ECDA8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ECDAD: push eax
008ECDAE: call 00410A18h ; &
008ECDB3: mov edx, eax
008ECDB5: lea ecx, var_3C
008ECDB8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ECDBD: push eax
008ECDBE: push 00445568h
008ECDC3: call 00410A18h ; &
008ECDC8: mov edx, eax
008ECDCA: lea ecx, var_40
008ECDCD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ECDD2: push eax
008ECDD3: push 00000010h
008ECDD5: pop eax
008ECDD6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ECDDB: lea esi, var_000000F0
008ECDE1: mov edi, esp
008ECDE3: movsd 
008ECDE4: movsd 
008ECDE5: movsd 
008ECDE6: movsd 
008ECDE7: push 00000001h
008ECDE9: push 00000010h
008ECDEB: push 00440E58h
008ECDF0: push 00000010h
008ECDF2: pop eax
008ECDF3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ECDF8: lea esi, var_000000E0
008ECDFE: mov edi, esp
008ECE00: movsd 
008ECE01: movsd 
008ECE02: movsd 
008ECE03: movsd 
008ECE04: push 00000001h
008ECE06: push 00000000h
008ECE08: push 00440E48h
008ECE0D: push 00000000h
008ECE0F: push 00000018h
008ECE11: mov eax, [ebp+08h]
008ECE14: mov eax, [eax]
008ECE16: push [ebp+08h]
008ECE19: call [eax+00000328h]
008ECE1F: push eax
008ECE20: lea eax, var_58
008ECE23: push eax
008ECE24: call 00410A84h ; Set (object)
008ECE29: push eax
008ECE2A: lea eax, var_000000A0
008ECE30: push eax
008ECE31: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ECE36: add esp, 00000010h
008ECE39: push eax
008ECE3A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ECE3F: push eax
008ECE40: lea eax, var_5C
008ECE43: push eax
008ECE44: call 00410A84h ; Set (object)
008ECE49: push eax
008ECE4A: lea eax, var_000000B0
008ECE50: push eax
008ECE51: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ECE56: add esp, 00000020h
008ECE59: push eax
008ECE5A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ECE5F: push eax
008ECE60: lea eax, var_60
008ECE63: push eax
008ECE64: call 00410A84h ; Set (object)
008ECE69: push eax
008ECE6A: lea eax, var_000000C0
008ECE70: push eax
008ECE71: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ECE76: add esp, 00000020h
008ECE79: push eax
008ECE7A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008ECE7F: mov edx, eax
008ECE81: lea ecx, var_44
008ECE84: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ECE89: push eax
008ECE8A: call 00410A18h ; &
008ECE8F: mov edx, eax
008ECE91: lea ecx, var_48
008ECE94: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ECE99: push eax
008ECE9A: push 00441264h ; vbCrLf
008ECE9F: call 00410A18h ; &
008ECEA4: mov edx, eax
008ECEA6: lea ecx, var_34
008ECEA9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ECEAE: lea eax, var_48
008ECEB1: push eax
008ECEB2: lea eax, var_44
008ECEB5: push eax
008ECEB6: lea eax, var_40
008ECEB9: push eax
008ECEBA: lea eax, var_3C
008ECEBD: push eax
008ECEBE: lea eax, var_38
008ECEC1: push eax
008ECEC2: push 00000005h
008ECEC4: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008ECEC9: add esp, 00000018h
008ECECC: lea eax, var_60
008ECECF: push eax
008ECED0: lea eax, var_5C
008ECED3: push eax
008ECED4: lea eax, var_58
008ECED7: push eax
008ECED8: lea eax, var_54
008ECEDB: push eax
008ECEDC: lea eax, var_50
008ECEDF: push eax
008ECEE0: lea eax, var_4C
008ECEE3: push eax
008ECEE4: push 00000006h
008ECEE6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008ECEEB: add esp, 0000001Ch
008ECEEE: lea eax, var_000000C0
008ECEF4: push eax
008ECEF5: lea eax, var_000000B0
008ECEFB: push eax
008ECEFC: lea eax, var_000000A0
008ECF02: push eax
008ECF03: lea eax, var_00000090
008ECF09: push eax
008ECF0A: lea eax, var_80
008ECF0D: push eax
008ECF0E: lea eax, var_70
008ECF11: push eax
008ECF12: push 00000006h
008ECF14: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008ECF19: add esp, 0000001Ch
008ECF1C: mov var_04, 0000000Dh
008ECF23: lea eax, var_00000130
008ECF29: push eax
008ECF2A: lea eax, var_00000120
008ECF30: push eax
008ECF31: lea eax, var_30
008ECF34: push eax
008ECF35: call 00410A36h ; Next
008ECF3A: mov var_0000016C, eax
008ECF40: cmp var_0000016C, 00000000h
008ECF47: jnz 008EC972h
008ECF4D: mov var_04, 0000000Eh
008ECF54: cmp [008F529Ch], 00000000h
008ECF5B: jnz 8ECF78h
008ECF5D: push 008F529Ch
008ECF62: push 00440F2Ch
008ECF67: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008ECF6C: mov var_00000178, 008F529Ch
008ECF76: jmp 8ECF82h
008ECF78: mov var_00000178, 008F529Ch
008ECF82: mov eax, var_00000178
008ECF88: mov eax, [eax]
008ECF8A: mov var_00000104, eax
008ECF90: lea eax, var_4C
008ECF93: push eax
008ECF94: mov eax, var_00000104
008ECF9A: mov eax, [eax]
008ECF9C: push var_00000104
008ECFA2: call [eax+1Ch]
008ECFA5: fclex 
008ECFA7: mov var_00000108, eax
008ECFAD: cmp var_00000108, 00000000h
008ECFB4: jnl 8ECFD6h
008ECFB6: push 0000001Ch
008ECFB8: push 00440F1Ch
008ECFBD: push var_00000104
008ECFC3: push var_00000108
008ECFC9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ECFCE: mov var_0000017C, eax
008ECFD4: jmp 8ECFDDh
008ECFD6: and var_0000017C, 00000000h
008ECFDD: mov eax, var_4C
008ECFE0: mov var_0000010C, eax
008ECFE6: mov eax, var_0000010C
008ECFEC: mov eax, [eax]
008ECFEE: push var_0000010C
008ECFF4: call [eax+50h]
008ECFF7: fclex 
008ECFF9: mov var_00000110, eax
008ECFFF: cmp var_00000110, 00000000h
008ED006: jnl 8ED028h
008ED008: push 00000050h
008ED00A: push 00445554h
008ED00F: push var_0000010C
008ED015: push var_00000110
008ED01B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ED020: mov var_00000180, eax
008ED026: jmp 8ED02Fh
008ED028: and var_00000180, 00000000h
008ED02F: lea ecx, var_4C
008ED032: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ED037: mov var_04, 0000000Fh
008ED03E: cmp [008F529Ch], 00000000h
008ED045: jnz 8ED062h
008ED047: push 008F529Ch
008ED04C: push 00440F2Ch
008ED051: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008ED056: mov var_00000184, 008F529Ch
008ED060: jmp 8ED06Ch
008ED062: mov var_00000184, 008F529Ch
008ED06C: mov eax, var_00000184
008ED072: mov eax, [eax]
008ED074: mov var_00000104, eax
008ED07A: lea eax, var_4C
008ED07D: push eax
008ED07E: mov eax, var_00000104
008ED084: mov eax, [eax]
008ED086: push var_00000104
008ED08C: call [eax+1Ch]
008ED08F: fclex 
008ED091: mov var_00000108, eax
008ED097: cmp var_00000108, 00000000h
008ED09E: jnl 8ED0C0h
008ED0A0: push 0000001Ch
008ED0A2: push 00440F1Ch
008ED0A7: push var_00000104
008ED0AD: push var_00000108
008ED0B3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ED0B8: mov var_00000188, eax
008ED0BE: jmp 8ED0C7h
008ED0C0: and var_00000188, 00000000h
008ED0C7: mov eax, var_4C
008ED0CA: mov var_0000010C, eax
008ED0D0: mov var_000000C8, 80020004h
008ED0DA: mov var_000000D0, 0000000Ah
008ED0E4: push 00000010h
008ED0E6: pop eax
008ED0E7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ED0EC: lea esi, var_000000D0
008ED0F2: mov edi, esp
008ED0F4: movsd 
008ED0F5: movsd 
008ED0F6: movsd 
008ED0F7: movsd 
008ED0F8: push var_34
008ED0FB: mov eax, var_0000010C
008ED101: mov eax, [eax]
008ED103: push var_0000010C
008ED109: call [eax+60h]
008ED10C: fclex 
008ED10E: mov var_00000110, eax
008ED114: cmp var_00000110, 00000000h
008ED11B: jnl 8ED13Dh
008ED11D: push 00000060h
008ED11F: push 00445554h
008ED124: push var_0000010C
008ED12A: push var_00000110
008ED130: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ED135: mov var_0000018C, eax
008ED13B: jmp 8ED144h
008ED13D: and var_0000018C, 00000000h
008ED144: lea ecx, var_4C
008ED147: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ED14C: jmp 008ED6B4h
008ED151: mov var_04, 00000011h
008ED158: mov var_000000C8, 00000001h
008ED162: mov var_000000D0, 00000002h
008ED16C: push 00000000h
008ED16E: push 00000001h
008ED170: push 00440E48h
008ED175: push 00000000h
008ED177: push 00000018h
008ED179: mov eax, [ebp+08h]
008ED17C: mov eax, [eax]
008ED17E: push [ebp+08h]
008ED181: call [eax+00000328h]
008ED187: push eax
008ED188: lea eax, var_4C
008ED18B: push eax
008ED18C: call 00410A84h ; Set (object)
008ED191: push eax
008ED192: lea eax, var_70
008ED195: push eax
008ED196: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ED19B: add esp, 00000010h
008ED19E: push eax
008ED19F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ED1A4: push eax
008ED1A5: lea eax, var_50
008ED1A8: push eax
008ED1A9: call 00410A84h ; Set (object)
008ED1AE: push eax
008ED1AF: lea eax, var_80
008ED1B2: push eax
008ED1B3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ED1B8: add esp, 00000010h
008ED1BB: push eax
008ED1BC: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008ED1C1: mov var_000000D8, eax
008ED1C7: mov var_000000E0, 00000003h
008ED1D1: mov var_000000E8, 00000001h
008ED1DB: mov var_000000F0, 00000002h
008ED1E5: lea eax, var_000000D0
008ED1EB: push eax
008ED1EC: lea eax, var_000000E0
008ED1F2: push eax
008ED1F3: lea eax, var_000000F0
008ED1F9: push eax
008ED1FA: lea eax, var_00000150
008ED200: push eax
008ED201: lea eax, var_00000140
008ED207: push eax
008ED208: lea eax, var_30
008ED20B: push eax
008ED20C: call 00410A3Ch ; For
008ED211: mov var_00000170, eax
008ED217: lea eax, var_50
008ED21A: push eax
008ED21B: lea eax, var_4C
008ED21E: push eax
008ED21F: push 00000002h
008ED221: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008ED226: add esp, 0000000Ch
008ED229: lea eax, var_80
008ED22C: push eax
008ED22D: lea eax, var_70
008ED230: push eax
008ED231: push 00000002h
008ED233: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008ED238: add esp, 0000000Ch
008ED23B: jmp 008ED4A8h
008ED240: mov var_04, 00000012h
008ED247: lea eax, var_30
008ED24A: mov var_000000C8, eax
008ED250: mov var_000000D0, 0000400Ch
008ED25A: push 00000000h
008ED25C: push 00000004h
008ED25E: push 00440E58h
008ED263: push 00000010h
008ED265: pop eax
008ED266: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ED26B: lea esi, var_000000D0
008ED271: mov edi, esp
008ED273: movsd 
008ED274: movsd 
008ED275: movsd 
008ED276: movsd 
008ED277: push 00000001h
008ED279: push 00000000h
008ED27B: push 00440E48h
008ED280: push 00000000h
008ED282: push 00000018h
008ED284: mov eax, [ebp+08h]
008ED287: mov eax, [eax]
008ED289: push [ebp+08h]
008ED28C: call [eax+00000328h]
008ED292: push eax
008ED293: lea eax, var_4C
008ED296: push eax
008ED297: call 00410A84h ; Set (object)
008ED29C: push eax
008ED29D: lea eax, var_70
008ED2A0: push eax
008ED2A1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ED2A6: add esp, 00000010h
008ED2A9: push eax
008ED2AA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ED2AF: push eax
008ED2B0: lea eax, var_50
008ED2B3: push eax
008ED2B4: call 00410A84h ; Set (object)
008ED2B9: push eax
008ED2BA: lea eax, var_80
008ED2BD: push eax
008ED2BE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ED2C3: add esp, 00000020h
008ED2C6: push eax
008ED2C7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ED2CC: push eax
008ED2CD: lea eax, var_54
008ED2D0: push eax
008ED2D1: call 00410A84h ; Set (object)
008ED2D6: push eax
008ED2D7: lea eax, var_00000090
008ED2DD: push eax
008ED2DE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ED2E3: add esp, 00000010h
008ED2E6: push eax
008ED2E7: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008ED2EC: sub ax, FFFFh
008ED2F0: neg ax
008ED2F3: sbb eax, eax
008ED2F5: inc eax
008ED2F6: neg eax
008ED2F8: mov var_00000104, ax
008ED2FF: lea eax, var_54
008ED302: push eax
008ED303: lea eax, var_50
008ED306: push eax
008ED307: lea eax, var_4C
008ED30A: push eax
008ED30B: push 00000003h
008ED30D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008ED312: add esp, 00000010h
008ED315: lea eax, var_00000090
008ED31B: push eax
008ED31C: lea eax, var_80
008ED31F: push eax
008ED320: lea eax, var_70
008ED323: push eax
008ED324: push 00000003h
008ED326: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008ED32B: add esp, 00000010h
008ED32E: movsx eax, word ptr var_00000104
008ED335: test eax, eax
008ED337: jz 008ED484h
008ED33D: mov var_04, 00000013h
008ED344: mov var_000000D8, 00000001h
008ED34E: mov var_000000E0, 00000003h
008ED358: lea eax, var_30
008ED35B: mov var_000000C8, eax
008ED361: mov var_000000D0, 0000400Ch
008ED36B: push var_34
008ED36E: push 00000010h
008ED370: pop eax
008ED371: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ED376: lea esi, var_000000E0
008ED37C: mov edi, esp
008ED37E: movsd 
008ED37F: movsd 
008ED380: movsd 
008ED381: movsd 
008ED382: push 00000001h
008ED384: push 00000010h
008ED386: push 00440E58h
008ED38B: push 00000010h
008ED38D: pop eax
008ED38E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ED393: lea esi, var_000000D0
008ED399: mov edi, esp
008ED39B: movsd 
008ED39C: movsd 
008ED39D: movsd 
008ED39E: movsd 
008ED39F: push 00000001h
008ED3A1: push 00000000h
008ED3A3: push 00440E48h
008ED3A8: push 00000000h
008ED3AA: push 00000018h
008ED3AC: mov eax, [ebp+08h]
008ED3AF: mov eax, [eax]
008ED3B1: push [ebp+08h]
008ED3B4: call [eax+00000328h]
008ED3BA: push eax
008ED3BB: lea eax, var_4C
008ED3BE: push eax
008ED3BF: call 00410A84h ; Set (object)
008ED3C4: push eax
008ED3C5: lea eax, var_70
008ED3C8: push eax
008ED3C9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ED3CE: add esp, 00000010h
008ED3D1: push eax
008ED3D2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ED3D7: push eax
008ED3D8: lea eax, var_50
008ED3DB: push eax
008ED3DC: call 00410A84h ; Set (object)
008ED3E1: push eax
008ED3E2: lea eax, var_80
008ED3E5: push eax
008ED3E6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ED3EB: add esp, 00000020h
008ED3EE: push eax
008ED3EF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ED3F4: push eax
008ED3F5: lea eax, var_54
008ED3F8: push eax
008ED3F9: call 00410A84h ; Set (object)
008ED3FE: push eax
008ED3FF: lea eax, var_00000090
008ED405: push eax
008ED406: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ED40B: add esp, 00000020h
008ED40E: push eax
008ED40F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008ED414: mov edx, eax
008ED416: lea ecx, var_38
008ED419: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ED41E: push eax
008ED41F: call 00410A18h ; &
008ED424: mov edx, eax
008ED426: lea ecx, var_3C
008ED429: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ED42E: push eax
008ED42F: push 00441264h ; vbCrLf
008ED434: call 00410A18h ; &
008ED439: mov edx, eax
008ED43B: lea ecx, var_34
008ED43E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ED443: lea eax, var_3C
008ED446: push eax
008ED447: lea eax, var_38
008ED44A: push eax
008ED44B: push 00000002h
008ED44D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008ED452: add esp, 0000000Ch
008ED455: lea eax, var_54
008ED458: push eax
008ED459: lea eax, var_50
008ED45C: push eax
008ED45D: lea eax, var_4C
008ED460: push eax
008ED461: push 00000003h
008ED463: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008ED468: add esp, 00000010h
008ED46B: lea eax, var_00000090
008ED471: push eax
008ED472: lea eax, var_80
008ED475: push eax
008ED476: lea eax, var_70
008ED479: push eax
008ED47A: push 00000003h
008ED47C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008ED481: add esp, 00000010h
008ED484: mov var_04, 00000015h
008ED48B: lea eax, var_00000150
008ED491: push eax
008ED492: lea eax, var_00000140
008ED498: push eax
008ED499: lea eax, var_30
008ED49C: push eax
008ED49D: call 00410A36h ; Next
008ED4A2: mov var_00000170, eax
008ED4A8: cmp var_00000170, 00000000h
008ED4AF: jnz 008ED240h
008ED4B5: mov var_04, 00000016h
008ED4BC: cmp [008F529Ch], 00000000h
008ED4C3: jnz 8ED4E0h
008ED4C5: push 008F529Ch
008ED4CA: push 00440F2Ch
008ED4CF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008ED4D4: mov var_00000190, 008F529Ch
008ED4DE: jmp 8ED4EAh
008ED4E0: mov var_00000190, 008F529Ch
008ED4EA: mov eax, var_00000190
008ED4F0: mov eax, [eax]
008ED4F2: mov var_00000104, eax
008ED4F8: lea eax, var_4C
008ED4FB: push eax
008ED4FC: mov eax, var_00000104
008ED502: mov eax, [eax]
008ED504: push var_00000104
008ED50A: call [eax+1Ch]
008ED50D: fclex 
008ED50F: mov var_00000108, eax
008ED515: cmp var_00000108, 00000000h
008ED51C: jnl 8ED53Eh
008ED51E: push 0000001Ch
008ED520: push 00440F1Ch
008ED525: push var_00000104
008ED52B: push var_00000108
008ED531: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ED536: mov var_00000194, eax
008ED53C: jmp 8ED545h
008ED53E: and var_00000194, 00000000h
008ED545: mov eax, var_4C
008ED548: mov var_0000010C, eax
008ED54E: mov eax, var_0000010C
008ED554: mov eax, [eax]
008ED556: push var_0000010C
008ED55C: call [eax+50h]
008ED55F: fclex 
008ED561: mov var_00000110, eax
008ED567: cmp var_00000110, 00000000h
008ED56E: jnl 8ED590h
008ED570: push 00000050h
008ED572: push 00445554h
008ED577: push var_0000010C
008ED57D: push var_00000110
008ED583: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ED588: mov var_00000198, eax
008ED58E: jmp 8ED597h
008ED590: and var_00000198, 00000000h
008ED597: lea ecx, var_4C
008ED59A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ED59F: mov var_04, 00000017h
008ED5A6: cmp [008F529Ch], 00000000h
008ED5AD: jnz 8ED5CAh
008ED5AF: push 008F529Ch
008ED5B4: push 00440F2Ch
008ED5B9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008ED5BE: mov var_0000019C, 008F529Ch
008ED5C8: jmp 8ED5D4h
008ED5CA: mov var_0000019C, 008F529Ch
008ED5D4: mov eax, var_0000019C
008ED5DA: mov eax, [eax]
008ED5DC: mov var_00000104, eax
008ED5E2: lea eax, var_4C
008ED5E5: push eax
008ED5E6: mov eax, var_00000104
008ED5EC: mov eax, [eax]
008ED5EE: push var_00000104
008ED5F4: call [eax+1Ch]
008ED5F7: fclex 
008ED5F9: mov var_00000108, eax
008ED5FF: cmp var_00000108, 00000000h
008ED606: jnl 8ED628h
008ED608: push 0000001Ch
008ED60A: push 00440F1Ch
008ED60F: push var_00000104
008ED615: push var_00000108
008ED61B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ED620: mov var_000001A0, eax
008ED626: jmp 8ED62Fh
008ED628: and var_000001A0, 00000000h
008ED62F: mov eax, var_4C
008ED632: mov var_0000010C, eax
008ED638: mov var_000000C8, 80020004h
008ED642: mov var_000000D0, 0000000Ah
008ED64C: push 00000010h
008ED64E: pop eax
008ED64F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ED654: lea esi, var_000000D0
008ED65A: mov edi, esp
008ED65C: movsd 
008ED65D: movsd 
008ED65E: movsd 
008ED65F: movsd 
008ED660: push var_34
008ED663: mov eax, var_0000010C
008ED669: mov eax, [eax]
008ED66B: push var_0000010C
008ED671: call [eax+60h]
008ED674: fclex 
008ED676: mov var_00000110, eax
008ED67C: cmp var_00000110, 00000000h
008ED683: jnl 8ED6A5h
008ED685: push 00000060h
008ED687: push 00445554h
008ED68C: push var_0000010C
008ED692: push var_00000110
008ED698: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ED69D: mov var_000001A4, eax
008ED6A3: jmp 8ED6ACh
008ED6A5: and var_000001A4, 00000000h
008ED6AC: lea ecx, var_4C
008ED6AF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ED6B4: mov var_10, 00000000h
008ED6BB: push 008ED768h
008ED6C0: jmp 8ED731h
008ED6C2: lea eax, var_48
008ED6C5: push eax
008ED6C6: lea eax, var_44
008ED6C9: push eax
008ED6CA: lea eax, var_40
008ED6CD: push eax
008ED6CE: lea eax, var_3C
008ED6D1: push eax
008ED6D2: lea eax, var_38
008ED6D5: push eax
008ED6D6: push 00000005h
008ED6D8: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008ED6DD: add esp, 00000018h
008ED6E0: lea eax, var_60
008ED6E3: push eax
008ED6E4: lea eax, var_5C
008ED6E7: push eax
008ED6E8: lea eax, var_58
008ED6EB: push eax
008ED6EC: lea eax, var_54
008ED6EF: push eax
008ED6F0: lea eax, var_50
008ED6F3: push eax
008ED6F4: lea eax, var_4C
008ED6F7: push eax
008ED6F8: push 00000006h
008ED6FA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008ED6FF: add esp, 0000001Ch
008ED702: lea eax, var_000000C0
008ED708: push eax
008ED709: lea eax, var_000000B0
008ED70F: push eax
008ED710: lea eax, var_000000A0
008ED716: push eax
008ED717: lea eax, var_00000090
008ED71D: push eax
008ED71E: lea eax, var_80
008ED721: push eax
008ED722: lea eax, var_70
008ED725: push eax
008ED726: push 00000006h
008ED728: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008ED72D: add esp, 0000001Ch
008ED730: ret 
End Sub

Private sub tmrInfo__8EF98F
008EF98F: push ebp
008EF990: mov ebp, esp
008EF992: sub esp, 0000000Ch
008EF995: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008EF99A: mov eax, fs:[00h]
008EF9A0: push eax
008EF9A1: mov fs:[00000000h], esp
008EF9A8: mov eax, 000000D4h
008EF9AD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EF9B2: push ebx
008EF9B3: push esi
008EF9B4: push edi
008EF9B5: mov var_0C, esp
008EF9B8: mov var_08, 00410690h
008EF9BF: mov eax, [ebp+08h]
008EF9C2: and eax, 00000001h
008EF9C5: mov var_04, eax
008EF9C8: mov eax, [ebp+08h]
008EF9CB: and al, FEh
008EF9CD: mov [ebp+08h], eax
008EF9D0: mov eax, [ebp+08h]
008EF9D3: mov eax, [eax]
008EF9D5: push [ebp+08h]
008EF9D8: call [eax+04h]
008EF9DB: movsx eax, word ptr [8F2430h]
008EF9E2: test eax, eax
008EF9E4: jnz 008EFCE2h
008EF9EA: cmp [008F2010h], 00000000h
008EF9F1: jnz 8EFA0Eh
008EF9F3: push 008F2010h
008EF9F8: push 00433984h
008EF9FD: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EFA02: mov var_000000C4, 008F2010h
008EFA0C: jmp 8EFA18h
008EFA0E: mov var_000000C4, 008F2010h
008EFA18: push 00000000h
008EFA1A: push 00000001h
008EFA1C: push 00440E48h
008EFA21: push 00000000h
008EFA23: push 00000018h
008EFA25: mov eax, var_000000C4
008EFA2B: mov eax, [eax]
008EFA2D: mov ecx, var_000000C4
008EFA33: mov ecx, [ecx]
008EFA35: mov ecx, [ecx]
008EFA37: push eax
008EFA38: call [ecx+00000550h]
008EFA3E: push eax
008EFA3F: lea eax, var_28
008EFA42: push eax
008EFA43: call 00410A84h ; Set (object)
008EFA48: push eax
008EFA49: lea eax, var_48
008EFA4C: push eax
008EFA4D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EFA52: add esp, 00000010h
008EFA55: push eax
008EFA56: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EFA5B: push eax
008EFA5C: lea eax, var_2C
008EFA5F: push eax
008EFA60: call 00410A84h ; Set (object)
008EFA65: push eax
008EFA66: lea eax, var_58
008EFA69: push eax
008EFA6A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EFA6F: add esp, 00000010h
008EFA72: push eax
008EFA73: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EFA78: xor ecx, ecx
008EFA7A: test eax, eax
008EFA7C: setnle cl
008EFA7F: neg ecx
008EFA81: mov var_0000009C, cx
008EFA88: lea eax, var_2C
008EFA8B: push eax
008EFA8C: lea eax, var_28
008EFA8F: push eax
008EFA90: push 00000002h
008EFA92: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EFA97: add esp, 0000000Ch
008EFA9A: lea eax, var_58
008EFA9D: push eax
008EFA9E: lea eax, var_48
008EFAA1: push eax
008EFAA2: push 00000002h
008EFAA4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EFAA9: add esp, 0000000Ch
008EFAAC: movsx eax, word ptr var_0000009C
008EFAB3: test eax, eax
008EFAB5: jz 008EFCDDh
008EFABB: cmp [008F2010h], 00000000h
008EFAC2: jnz 8EFADFh
008EFAC4: push 008F2010h
008EFAC9: push 00433984h
008EFACE: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EFAD3: mov var_000000C8, 008F2010h
008EFADD: jmp 8EFAE9h
008EFADF: mov var_000000C8, 008F2010h
008EFAE9: push 00000000h
008EFAEB: push 00000001h
008EFAED: push 00440E48h
008EFAF2: push 00000000h
008EFAF4: push 00000018h
008EFAF6: mov eax, var_000000C8
008EFAFC: mov eax, [eax]
008EFAFE: mov ecx, var_000000C8
008EFB04: mov ecx, [ecx]
008EFB06: mov ecx, [ecx]
008EFB08: push eax
008EFB09: call [ecx+00000550h]
008EFB0F: push eax
008EFB10: lea eax, var_28
008EFB13: push eax
008EFB14: call 00410A84h ; Set (object)
008EFB19: push eax
008EFB1A: lea eax, var_48
008EFB1D: push eax
008EFB1E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EFB23: add esp, 00000010h
008EFB26: push eax
008EFB27: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EFB2C: push eax
008EFB2D: lea eax, var_2C
008EFB30: push eax
008EFB31: call 00410A84h ; Set (object)
008EFB36: push eax
008EFB37: lea eax, var_58
008EFB3A: push eax
008EFB3B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EFB40: add esp, 00000010h
008EFB43: push eax
008EFB44: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EFB49: mov var_000000B0, eax
008EFB4F: mov var_000000AC, 00000001h
008EFB59: mov var_18, 00000001h
008EFB60: lea eax, var_2C
008EFB63: push eax
008EFB64: lea eax, var_28
008EFB67: push eax
008EFB68: push 00000002h
008EFB6A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EFB6F: add esp, 0000000Ch
008EFB72: lea eax, var_58
008EFB75: push eax
008EFB76: lea eax, var_48
008EFB79: push eax
008EFB7A: push 00000002h
008EFB7C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EFB81: add esp, 0000000Ch
008EFB84: jmp 8EFB98h
008EFB86: mov eax, var_18
008EFB89: add eax, var_000000AC
008EFB8F: jo 008F035Eh
008EFB95: mov var_18, eax
008EFB98: mov eax, var_18
008EFB9B: cmp eax, var_000000B0
008EFBA1: jnle 008EFCDDh
008EFBA7: mov eax, var_18
008EFBAA: mov var_80, eax
008EFBAD: mov var_00000088, 00000003h
008EFBB7: cmp [008F2010h], 00000000h
008EFBBE: jnz 8EFBDBh
008EFBC0: push 008F2010h
008EFBC5: push 00433984h
008EFBCA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EFBCF: mov var_000000CC, 008F2010h
008EFBD9: jmp 8EFBE5h
008EFBDB: mov var_000000CC, 008F2010h
008EFBE5: push 00000000h
008EFBE7: push 00000004h
008EFBE9: push 00440E58h
008EFBEE: push 00000010h
008EFBF0: pop eax
008EFBF1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EFBF6: lea esi, var_00000088
008EFBFC: mov edi, esp
008EFBFE: movsd 
008EFBFF: movsd 
008EFC00: movsd 
008EFC01: movsd 
008EFC02: push 00000001h
008EFC04: push 00000000h
008EFC06: push 00440E48h
008EFC0B: push 00000000h
008EFC0D: push 00000018h
008EFC0F: mov eax, var_000000CC
008EFC15: mov eax, [eax]
008EFC17: mov ecx, var_000000CC
008EFC1D: mov ecx, [ecx]
008EFC1F: mov ecx, [ecx]
008EFC21: push eax
008EFC22: call [ecx+00000550h]
008EFC28: push eax
008EFC29: lea eax, var_28
008EFC2C: push eax
008EFC2D: call 00410A84h ; Set (object)
008EFC32: push eax
008EFC33: lea eax, var_48
008EFC36: push eax
008EFC37: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EFC3C: add esp, 00000010h
008EFC3F: push eax
008EFC40: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EFC45: push eax
008EFC46: lea eax, var_2C
008EFC49: push eax
008EFC4A: call 00410A84h ; Set (object)
008EFC4F: push eax
008EFC50: lea eax, var_58
008EFC53: push eax
008EFC54: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EFC59: add esp, 00000020h
008EFC5C: push eax
008EFC5D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EFC62: push eax
008EFC63: lea eax, var_30
008EFC66: push eax
008EFC67: call 00410A84h ; Set (object)
008EFC6C: push eax
008EFC6D: lea eax, var_68
008EFC70: push eax
008EFC71: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EFC76: add esp, 00000010h
008EFC79: push eax
008EFC7A: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008EFC7F: sub ax, FFFFh
008EFC83: neg ax
008EFC86: sbb eax, eax
008EFC88: inc eax
008EFC89: neg eax
008EFC8B: mov var_0000009C, ax
008EFC92: lea eax, var_30
008EFC95: push eax
008EFC96: lea eax, var_2C
008EFC99: push eax
008EFC9A: lea eax, var_28
008EFC9D: push eax
008EFC9E: push 00000003h
008EFCA0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EFCA5: add esp, 00000010h
008EFCA8: lea eax, var_68
008EFCAB: push eax
008EFCAC: lea eax, var_58
008EFCAF: push eax
008EFCB0: lea eax, var_48
008EFCB3: push eax
008EFCB4: push 00000003h
008EFCB6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EFCBB: add esp, 00000010h
008EFCBE: movsx eax, word ptr var_0000009C
008EFCC5: test eax, eax
008EFCC7: jz 8EFCD8h
008EFCC9: mov eax, var_1C
008EFCCC: add eax, 00000001h
008EFCCF: jo 008F035Eh
008EFCD5: mov var_1C, eax
008EFCD8: jmp 008EFB86h
008EFCDD: jmp 008EFFC8h
008EFCE2: cmp [008F2010h], 00000000h
008EFCE9: jnz 8EFD06h
008EFCEB: push 008F2010h
008EFCF0: push 00433984h
008EFCF5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EFCFA: mov var_000000D0, 008F2010h
008EFD04: jmp 8EFD10h
008EFD06: mov var_000000D0, 008F2010h
008EFD10: and var_80, 00000000h
008EFD14: mov var_00000088, 00008002h
008EFD1E: push 00000000h
008EFD20: push 0044A9C8h ; COUNT
008EFD25: push 00000000h
008EFD27: push 0044A9B0h ; lstFiltered
008EFD2C: mov eax, var_000000D0
008EFD32: mov eax, [eax]
008EFD34: mov ecx, var_000000D0
008EFD3A: mov ecx, [ecx]
008EFD3C: mov ecx, [ecx]
008EFD3E: push eax
008EFD3F: call [ecx+00000550h]
008EFD45: push eax
008EFD46: lea eax, var_28
008EFD49: push eax
008EFD4A: call 00410A84h ; Set (object)
008EFD4F: push eax
008EFD50: lea eax, var_48
008EFD53: push eax
008EFD54: call 00410742h ; msvbvm60.dll.__vbaLateMemCallLd
008EFD59: add esp, 00000010h
008EFD5C: push eax
008EFD5D: lea eax, var_58
008EFD60: push eax
008EFD61: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
008EFD66: add esp, 00000010h
008EFD69: push eax
008EFD6A: lea eax, var_00000088
008EFD70: push eax
008EFD71: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
008EFD76: mov var_0000009C, ax
008EFD7D: lea ecx, var_28
008EFD80: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008EFD85: lea eax, var_58
008EFD88: push eax
008EFD89: lea eax, var_48
008EFD8C: push eax
008EFD8D: push 00000002h
008EFD8F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EFD94: add esp, 0000000Ch
008EFD97: movsx eax, word ptr var_0000009C
008EFD9E: test eax, eax
008EFDA0: jz 008EFFC8h
008EFDA6: cmp [008F2010h], 00000000h
008EFDAD: jnz 8EFDCAh
008EFDAF: push 008F2010h
008EFDB4: push 00433984h
008EFDB9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EFDBE: mov var_000000D4, 008F2010h
008EFDC8: jmp 8EFDD4h
008EFDCA: mov var_000000D4, 008F2010h
008EFDD4: push 00000000h
008EFDD6: push 00000001h
008EFDD8: push 00440E48h
008EFDDD: push 00000000h
008EFDDF: push 00000018h
008EFDE1: mov eax, var_000000D4
008EFDE7: mov eax, [eax]
008EFDE9: mov ecx, var_000000D4
008EFDEF: mov ecx, [ecx]
008EFDF1: mov ecx, [ecx]
008EFDF3: push eax
008EFDF4: call [ecx+0000054Ch]
008EFDFA: push eax
008EFDFB: lea eax, var_28
008EFDFE: push eax
008EFDFF: call 00410A84h ; Set (object)
008EFE04: push eax
008EFE05: lea eax, var_48
008EFE08: push eax
008EFE09: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EFE0E: add esp, 00000010h
008EFE11: push eax
008EFE12: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EFE17: push eax
008EFE18: lea eax, var_2C
008EFE1B: push eax
008EFE1C: call 00410A84h ; Set (object)
008EFE21: push eax
008EFE22: lea eax, var_58
008EFE25: push eax
008EFE26: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EFE2B: add esp, 00000010h
008EFE2E: push eax
008EFE2F: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EFE34: mov var_000000B8, eax
008EFE3A: mov var_000000B4, 00000001h
008EFE44: mov var_18, 00000001h
008EFE4B: lea eax, var_2C
008EFE4E: push eax
008EFE4F: lea eax, var_28
008EFE52: push eax
008EFE53: push 00000002h
008EFE55: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EFE5A: add esp, 0000000Ch
008EFE5D: lea eax, var_58
008EFE60: push eax
008EFE61: lea eax, var_48
008EFE64: push eax
008EFE65: push 00000002h
008EFE67: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EFE6C: add esp, 0000000Ch
008EFE6F: jmp 8EFE83h
008EFE71: mov eax, var_18
008EFE74: add eax, var_000000B4
008EFE7A: jo 008F035Eh
008EFE80: mov var_18, eax
008EFE83: mov eax, var_18
008EFE86: cmp eax, var_000000B8
008EFE8C: jnle 008EFFC8h
008EFE92: mov eax, var_18
008EFE95: mov var_80, eax
008EFE98: mov var_00000088, 00000003h
008EFEA2: cmp [008F2010h], 00000000h
008EFEA9: jnz 8EFEC6h
008EFEAB: push 008F2010h
008EFEB0: push 00433984h
008EFEB5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EFEBA: mov var_000000D8, 008F2010h
008EFEC4: jmp 8EFED0h
008EFEC6: mov var_000000D8, 008F2010h
008EFED0: push 00000000h
008EFED2: push 00000004h
008EFED4: push 00440E58h
008EFED9: push 00000010h
008EFEDB: pop eax
008EFEDC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EFEE1: lea esi, var_00000088
008EFEE7: mov edi, esp
008EFEE9: movsd 
008EFEEA: movsd 
008EFEEB: movsd 
008EFEEC: movsd 
008EFEED: push 00000001h
008EFEEF: push 00000000h
008EFEF1: push 00440E48h
008EFEF6: push 00000000h
008EFEF8: push 00000018h
008EFEFA: mov eax, var_000000D8
008EFF00: mov eax, [eax]
008EFF02: mov ecx, var_000000D8
008EFF08: mov ecx, [ecx]
008EFF0A: mov ecx, [ecx]
008EFF0C: push eax
008EFF0D: call [ecx+0000054Ch]
008EFF13: push eax
008EFF14: lea eax, var_28
008EFF17: push eax
008EFF18: call 00410A84h ; Set (object)
008EFF1D: push eax
008EFF1E: lea eax, var_48
008EFF21: push eax
008EFF22: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EFF27: add esp, 00000010h
008EFF2A: push eax
008EFF2B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EFF30: push eax
008EFF31: lea eax, var_2C
008EFF34: push eax
008EFF35: call 00410A84h ; Set (object)
008EFF3A: push eax
008EFF3B: lea eax, var_58
008EFF3E: push eax
008EFF3F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EFF44: add esp, 00000020h
008EFF47: push eax
008EFF48: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EFF4D: push eax
008EFF4E: lea eax, var_30
008EFF51: push eax
008EFF52: call 00410A84h ; Set (object)
008EFF57: push eax
008EFF58: lea eax, var_68
008EFF5B: push eax
008EFF5C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EFF61: add esp, 00000010h
008EFF64: push eax
008EFF65: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008EFF6A: sub ax, FFFFh
008EFF6E: neg ax
008EFF71: sbb eax, eax
008EFF73: inc eax
008EFF74: neg eax
008EFF76: mov var_0000009C, ax
008EFF7D: lea eax, var_30
008EFF80: push eax
008EFF81: lea eax, var_2C
008EFF84: push eax
008EFF85: lea eax, var_28
008EFF88: push eax
008EFF89: push 00000003h
008EFF8B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EFF90: add esp, 00000010h
008EFF93: lea eax, var_68
008EFF96: push eax
008EFF97: lea eax, var_58
008EFF9A: push eax
008EFF9B: lea eax, var_48
008EFF9E: push eax
008EFF9F: push 00000003h
008EFFA1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EFFA6: add esp, 00000010h
008EFFA9: movsx eax, word ptr var_0000009C
008EFFB0: test eax, eax
008EFFB2: jz 8EFFC3h
008EFFB4: mov eax, var_1C
008EFFB7: add eax, 00000001h
008EFFBA: jo 008F035Eh
008EFFC0: mov var_1C, eax
008EFFC3: jmp 008EFE71h
008EFFC8: push 0044A87Ch
008EFFCD: push 00000000h
008EFFCF: push 00000003h
008EFFD1: mov eax, [ebp+08h]
008EFFD4: mov eax, [eax]
008EFFD6: push [ebp+08h]
008EFFD9: call [eax+0000034Ch]
008EFFDF: push eax
008EFFE0: lea eax, var_30
008EFFE3: push eax
008EFFE4: call 00410A84h ; Set (object)
008EFFE9: push eax
008EFFEA: lea eax, var_68
008EFFED: push eax
008EFFEE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EFFF3: add esp, 00000010h
008EFFF6: push eax
008EFFF7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EFFFC: push eax
008EFFFD: lea eax, var_34
008F0000: push eax
008F0001: call 00410A84h ; Set (object)
008F0006: mov var_0000009C, eax
008F000C: mov var_70, 00000001h
008F0013: mov var_78, 00000002h
008F001A: lea eax, var_38
008F001D: push eax
008F001E: lea eax, var_78
008F0021: push eax
008F0022: mov eax, var_0000009C
008F0028: mov eax, [eax]
008F002A: push var_0000009C
008F0030: call [eax+24h]
008F0033: fclex 
008F0035: mov var_000000A0, eax
008F003B: cmp var_000000A0, 00000000h
008F0042: jnl 8F0064h
008F0044: push 00000024h
008F0046: push 0044A87Ch
008F004B: push var_0000009C
008F0051: push var_000000A0
008F0057: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008F005C: mov var_000000DC, eax
008F0062: jmp 8F006Bh
008F0064: and var_000000DC, 00000000h
008F006B: mov eax, var_38
008F006E: mov var_000000A4, eax
008F0074: push 004599C0h ; Total:
008F0079: push 00000000h
008F007B: push 00000001h
008F007D: push 00440E48h
008F0082: push 00000000h
008F0084: push 00000018h
008F0086: mov eax, [ebp+08h]
008F0089: mov eax, [eax]
008F008B: push [ebp+08h]
008F008E: call [eax+00000328h]
008F0094: push eax
008F0095: lea eax, var_28
008F0098: push eax
008F0099: call 00410A84h ; Set (object)
008F009E: push eax
008F009F: lea eax, var_48
008F00A2: push eax
008F00A3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008F00A8: add esp, 00000010h
008F00AB: push eax
008F00AC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008F00B1: push eax
008F00B2: lea eax, var_2C
008F00B5: push eax
008F00B6: call 00410A84h ; Set (object)
008F00BB: push eax
008F00BC: lea eax, var_58
008F00BF: push eax
008F00C0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008F00C5: add esp, 00000010h
008F00C8: push eax
008F00C9: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008F00CE: push eax
008F00CF: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008F00D4: mov edx, eax
008F00D6: lea ecx, var_20
008F00D9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008F00DE: push eax
008F00DF: call 00410A18h ; &
008F00E4: mov edx, eax
008F00E6: lea ecx, var_24
008F00E9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008F00EE: push eax
008F00EF: mov eax, var_000000A4
008F00F5: mov eax, [eax]
008F00F7: push var_000000A4
008F00FD: call [eax+00000080h]
008F0103: fclex 
008F0105: mov var_000000A8, eax
008F010B: cmp var_000000A8, 00000000h
008F0112: jnl 8F0137h
008F0114: push 00000080h
008F0119: push 0044A88Ch
008F011E: push var_000000A4
008F0124: push var_000000A8
008F012A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008F012F: mov var_000000E0, eax
008F0135: jmp 8F013Eh
008F0137: and var_000000E0, 00000000h
008F013E: lea eax, var_24
008F0141: push eax
008F0142: lea eax, var_20
008F0145: push eax
008F0146: push 00000002h
008F0148: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008F014D: add esp, 0000000Ch
008F0150: lea eax, var_38
008F0153: push eax
008F0154: lea eax, var_34
008F0157: push eax
008F0158: lea eax, var_30
008F015B: push eax
008F015C: lea eax, var_2C
008F015F: push eax
008F0160: lea eax, var_28
008F0163: push eax
008F0164: push 00000005h
008F0166: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008F016B: add esp, 00000018h
008F016E: lea eax, var_78
008F0171: push eax
008F0172: lea eax, var_68
008F0175: push eax
008F0176: lea eax, var_58
008F0179: push eax
008F017A: lea eax, var_48
008F017D: push eax
008F017E: push 00000004h
008F0180: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008F0185: add esp, 00000014h
008F0188: push 0044A87Ch
008F018D: push 00000000h
008F018F: push 00000003h
008F0191: mov eax, [ebp+08h]
008F0194: mov eax, [eax]
008F0196: push [ebp+08h]
008F0199: call [eax+0000034Ch]
008F019F: push eax
008F01A0: lea eax, var_28
008F01A3: push eax
008F01A4: call 00410A84h ; Set (object)
008F01A9: push eax
008F01AA: lea eax, var_48
008F01AD: push eax
008F01AE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008F01B3: add esp, 00000010h
008F01B6: push eax
008F01B7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008F01BC: push eax
008F01BD: lea eax, var_2C
008F01C0: push eax
008F01C1: call 00410A84h ; Set (object)
008F01C6: mov var_0000009C, eax
008F01CC: mov var_50, 00000002h
008F01D3: mov var_58, 00000002h
008F01DA: lea eax, var_30
008F01DD: push eax
008F01DE: lea eax, var_58
008F01E1: push eax
008F01E2: mov eax, var_0000009C
008F01E8: mov eax, [eax]
008F01EA: push var_0000009C
008F01F0: call [eax+24h]
008F01F3: fclex 
008F01F5: mov var_000000A0, eax
008F01FB: cmp var_000000A0, 00000000h
008F0202: jnl 8F0224h
008F0204: push 00000024h
008F0206: push 0044A87Ch
008F020B: push var_0000009C
008F0211: push var_000000A0
008F0217: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008F021C: mov var_000000E4, eax
008F0222: jmp 8F022Bh
008F0224: and var_000000E4, 00000000h
008F022B: mov eax, var_30
008F022E: mov var_000000A4, eax
008F0234: push 00457C58h ; Selected bots:
008F0239: push var_1C
008F023C: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008F0241: mov edx, eax
008F0243: lea ecx, var_20
008F0246: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008F024B: push eax
008F024C: call 00410A18h ; &
008F0251: mov edx, eax
008F0253: lea ecx, var_24
008F0256: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008F025B: push eax
008F025C: mov eax, var_000000A4
008F0262: mov eax, [eax]
008F0264: push var_000000A4
008F026A: call [eax+00000080h]
008F0270: fclex 
008F0272: mov var_000000A8, eax
008F0278: cmp var_000000A8, 00000000h
008F027F: jnl 8F02A4h
008F0281: push 00000080h
008F0286: push 0044A88Ch
008F028B: push var_000000A4
008F0291: push var_000000A8
008F0297: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008F029C: mov var_000000E8, eax
008F02A2: jmp 8F02ABh
008F02A4: and var_000000E8, 00000000h
008F02AB: lea eax, var_24
008F02AE: push eax
008F02AF: lea eax, var_20
008F02B2: push eax
008F02B3: push 00000002h
008F02B5: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008F02BA: add esp, 0000000Ch
008F02BD: lea eax, var_30
008F02C0: push eax
008F02C1: lea eax, var_2C
008F02C4: push eax
008F02C5: lea eax, var_28
008F02C8: push eax
008F02C9: push 00000003h
008F02CB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008F02D0: add esp, 00000010h
008F02D3: lea eax, var_58
008F02D6: push eax
008F02D7: lea eax, var_48
008F02DA: push eax
008F02DB: push 00000002h
008F02DD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008F02E2: add esp, 0000000Ch
008F02E5: mov var_04, 00000000h
008F02EC: push 008F033Fh
008F02F1: jmp 8F033Eh
008F02F3: lea eax, var_24
008F02F6: push eax
008F02F7: lea eax, var_20
008F02FA: push eax
008F02FB: push 00000002h
008F02FD: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008F0302: add esp, 0000000Ch
008F0305: lea eax, var_38
008F0308: push eax
008F0309: lea eax, var_34
008F030C: push eax
008F030D: lea eax, var_30
008F0310: push eax
008F0311: lea eax, var_2C
008F0314: push eax
008F0315: lea eax, var_28
008F0318: push eax
008F0319: push 00000005h
008F031B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008F0320: add esp, 00000018h
008F0323: lea eax, var_78
008F0326: push eax
008F0327: lea eax, var_68
008F032A: push eax
008F032B: lea eax, var_58
008F032E: push eax
008F032F: lea eax, var_48
008F0332: push eax
008F0333: push 00000004h
008F0335: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008F033A: add esp, 00000014h
008F033D: ret 
End Sub

Private sub lstContacts__8EA727
008EA727: push ebp
008EA728: mov ebp, esp
008EA72A: sub esp, 0000000Ch
008EA72D: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008EA732: mov eax, fs:[00h]
008EA738: push eax
008EA739: mov fs:[00000000h], esp
008EA740: push 00000054h
008EA742: pop eax
008EA743: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA748: push ebx
008EA749: push esi
008EA74A: push edi
008EA74B: mov var_0C, esp
008EA74E: mov var_08, 00410538h
008EA755: mov eax, [ebp+08h]
008EA758: and eax, 00000001h
008EA75B: mov var_04, eax
008EA75E: mov eax, [ebp+08h]
008EA761: and al, FEh
008EA763: mov [ebp+08h], eax
008EA766: mov eax, [ebp+08h]
008EA769: mov eax, [eax]
008EA76B: push [ebp+08h]
008EA76E: call [eax+04h]
008EA771: mov eax, [ebp+0Ch]
008EA774: cmp word ptr [eax], 0002h
008EA778: jnz 008EA852h
008EA77E: mov var_50, 80020004h
008EA785: mov var_58, 0000000Ah
008EA78C: mov var_40, 80020004h
008EA793: mov var_48, 0000000Ah
008EA79A: mov var_30, 80020004h
008EA7A1: mov var_38, 0000000Ah
008EA7A8: mov var_20, 80020004h
008EA7AF: mov var_28, 0000000Ah
008EA7B6: push 00000010h
008EA7B8: pop eax
008EA7B9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA7BE: lea esi, var_58
008EA7C1: mov edi, esp
008EA7C3: movsd 
008EA7C4: movsd 
008EA7C5: movsd 
008EA7C6: movsd 
008EA7C7: push 00000010h
008EA7C9: pop eax
008EA7CA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA7CF: lea esi, var_48
008EA7D2: mov edi, esp
008EA7D4: movsd 
008EA7D5: movsd 
008EA7D6: movsd 
008EA7D7: movsd 
008EA7D8: push 00000010h
008EA7DA: pop eax
008EA7DB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA7E0: lea esi, var_38
008EA7E3: mov edi, esp
008EA7E5: movsd 
008EA7E6: movsd 
008EA7E7: movsd 
008EA7E8: movsd 
008EA7E9: push 00000010h
008EA7EB: pop eax
008EA7EC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA7F1: lea esi, var_28
008EA7F4: mov edi, esp
008EA7F6: movsd 
008EA7F7: movsd 
008EA7F8: movsd 
008EA7F9: movsd 
008EA7FA: mov eax, [ebp+08h]
008EA7FD: mov eax, [eax]
008EA7FF: push [ebp+08h]
008EA802: call [eax+00000310h]
008EA808: push eax
008EA809: lea eax, var_18
008EA80C: push eax
008EA80D: call 00410A84h ; Set (object)
008EA812: push eax
008EA813: mov eax, [ebp+08h]
008EA816: mov eax, [eax]
008EA818: push [ebp+08h]
008EA81B: call [eax+000002BCh]
008EA821: fclex 
008EA823: mov var_5C, eax
008EA826: cmp var_5C, 00000000h
008EA82A: jnl 8EA846h
008EA82C: push 000002BCh
008EA831: push 00448930h
008EA836: push [ebp+08h]
008EA839: push var_5C
008EA83C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008EA841: mov var_68, eax
008EA844: jmp 8EA84Ah
008EA846: and var_68, 00000000h
008EA84A: lea ecx, var_18
008EA84D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008EA852: mov var_04, 00000000h
008EA859: push 008EA86Ah
008EA85E: jmp 8EA869h
008EA860: lea ecx, var_18
008EA863: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008EA868: ret 
End Sub

Private sub lstContacts__8EA525
008EA525: push ebp
008EA526: mov ebp, esp
008EA528: sub esp, 0000000Ch
008EA52B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008EA530: mov eax, fs:[00h]
008EA536: push eax
008EA537: mov fs:[00000000h], esp
008EA53E: push 00000008h
008EA540: pop eax
008EA541: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA546: push ebx
008EA547: push esi
008EA548: push edi
008EA549: mov var_0C, esp
008EA54C: mov var_08, 00410520h
008EA553: mov eax, [ebp+08h]
008EA556: and eax, 00000001h
008EA559: mov var_04, eax
008EA55C: mov eax, [ebp+08h]
008EA55F: and al, FEh
008EA561: mov [ebp+08h], eax
008EA564: mov eax, [ebp+08h]
008EA567: mov eax, [eax]
008EA569: push [ebp+08h]
008EA56C: call [eax+04h]
008EA56F: mov eax, [ebp+0Ch]
008EA572: or word ptr [eax], FFFFh
008EA576: mov var_04, 00000000h
008EA57D: mov eax, [ebp+08h]
008EA580: mov eax, [eax]
008EA582: push [ebp+08h]
008EA585: call [eax+08h]
008EA588: mov eax, var_04
008EA58B: mov ecx, var_14
008EA58E: mov fs:[00000000h], ecx
008EA595: pop edi
008EA596: pop esi
008EA597: pop ebx
008EA598: leave 
008EA599: retn 0008h
End Sub

Private sub lstContacts__8EA59C
008EA59C: push ebp
008EA59D: mov ebp, esp
008EA59F: sub esp, 0000000Ch
008EA5A2: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008EA5A7: mov eax, fs:[00h]
008EA5AD: push eax
008EA5AE: mov fs:[00000000h], esp
008EA5B5: push 00000044h
008EA5B7: pop eax
008EA5B8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA5BD: push ebx
008EA5BE: push esi
008EA5BF: push edi
008EA5C0: mov var_0C, esp
008EA5C3: mov var_08, 00410528h
008EA5CA: mov eax, [ebp+08h]
008EA5CD: and eax, 00000001h
008EA5D0: mov var_04, eax
008EA5D3: mov eax, [ebp+08h]
008EA5D6: and al, FEh
008EA5D8: mov [ebp+08h], eax
008EA5DB: mov eax, [ebp+08h]
008EA5DE: mov eax, [eax]
008EA5E0: push [ebp+08h]
008EA5E3: call [eax+04h]
008EA5E6: push [ebp+0Ch]
008EA5E9: lea eax, var_18
008EA5EC: push eax
008EA5ED: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008EA5F2: mov eax, [ebp+08h]
008EA5F5: mov eax, [eax]
008EA5F7: push [ebp+08h]
008EA5FA: call [eax+00000328h]
008EA600: push eax
008EA601: lea eax, var_50
008EA604: push eax
008EA605: call 00410A84h ; Set (object)
008EA60A: push 00000000h
008EA60C: push 00000005h
008EA60E: push var_18
008EA611: lea eax, var_2C
008EA614: push eax
008EA615: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EA61A: add esp, 00000010h
008EA61D: push eax
008EA61E: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EA623: sub eax, 00000001h
008EA626: jo 008EA722h
008EA62C: mov var_34, eax
008EA62F: mov var_3C, 00000003h
008EA636: push 00000010h
008EA638: pop eax
008EA639: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA63E: lea esi, var_3C
008EA641: mov edi, esp
008EA643: movsd 
008EA644: movsd 
008EA645: movsd 
008EA646: movsd 
008EA647: push 00000012h
008EA649: push var_50
008EA64C: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008EA651: lea ecx, var_2C
008EA654: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008EA659: or var_34, FFFFFFFFh
008EA65D: mov var_3C, 0000000Bh
008EA664: push 00000010h
008EA666: pop eax
008EA667: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA66C: lea esi, var_3C
008EA66F: mov edi, esp
008EA671: movsd 
008EA672: movsd 
008EA673: movsd 
008EA674: movsd 
008EA675: push 00000011h
008EA677: push var_50
008EA67A: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008EA67F: push 00000000h
008EA681: push 00000013h
008EA683: push var_50
008EA686: lea eax, var_2C
008EA689: push eax
008EA68A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EA68F: add esp, 00000010h
008EA692: push eax
008EA693: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EA698: xor eax, 00000001h
008EA69B: mov var_34, eax
008EA69E: mov var_3C, 00000003h
008EA6A5: push 00000010h
008EA6A7: pop eax
008EA6A8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EA6AD: lea esi, var_3C
008EA6B0: mov edi, esp
008EA6B2: movsd 
008EA6B3: movsd 
008EA6B4: movsd 
008EA6B5: movsd 
008EA6B6: push 00000013h
008EA6B8: push var_50
008EA6BB: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008EA6C0: lea ecx, var_2C
008EA6C3: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008EA6C8: push 00000000h
008EA6CA: lea eax, var_50
008EA6CD: push eax
008EA6CE: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008EA6D3: mov var_04, 00000000h
008EA6DA: push 008EA703h
008EA6DF: jmp 8EA6EAh
008EA6E1: lea ecx, var_2C
008EA6E4: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008EA6E9: ret 
End Sub

Private sub cmdSend__8E6A2E
008E6A2E: push ebp
008E6A2F: mov ebp, esp
008E6A31: sub esp, 0000000Ch
008E6A34: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E6A39: mov eax, fs:[00h]
008E6A3F: push eax
008E6A40: mov fs:[00000000h], esp
008E6A47: mov eax, 00000158h
008E6A4C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E6A51: push ebx
008E6A52: push esi
008E6A53: push edi
008E6A54: mov var_0C, esp
008E6A57: mov var_08, 004104A8h
008E6A5E: mov eax, [ebp+08h]
008E6A61: and eax, 00000001h
008E6A64: mov var_04, eax
008E6A67: mov eax, [ebp+08h]
008E6A6A: and al, FEh
008E6A6C: mov [ebp+08h], eax
008E6A6F: mov eax, [ebp+08h]
008E6A72: mov eax, [eax]
008E6A74: push [ebp+08h]
008E6A77: call [eax+04h]
008E6A7A: mov eax, [ebp+08h]
008E6A7D: mov eax, [eax]
008E6A7F: push [ebp+08h]
008E6A82: call [eax+00000300h]
008E6A88: push eax
008E6A89: lea eax, var_30
008E6A8C: push eax
008E6A8D: call 00410A84h ; Set (object)
008E6A92: mov var_000000D8, eax
008E6A98: lea eax, var_28
008E6A9B: push eax
008E6A9C: mov eax, var_000000D8
008E6AA2: mov eax, [eax]
008E6AA4: push var_000000D8
008E6AAA: call [eax+000000A0h]
008E6AB0: fclex 
008E6AB2: mov var_000000DC, eax
008E6AB8: cmp var_000000DC, 00000000h
008E6ABF: jnl 8E6AE4h
008E6AC1: push 000000A0h
008E6AC6: push 00440E08h
008E6ACB: push var_000000D8
008E6AD1: push var_000000DC
008E6AD7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E6ADC: mov var_00000134, eax
008E6AE2: jmp 8E6AEBh
008E6AE4: and var_00000134, 00000000h
008E6AEB: push var_28
008E6AEE: call 0041098Eh ; Len(arg_1)
008E6AF3: neg eax
008E6AF5: sbb eax, eax
008E6AF7: inc eax
008E6AF8: neg eax
008E6AFA: mov var_000000E0, ax
008E6B01: lea ecx, var_28
008E6B04: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008E6B09: lea ecx, var_30
008E6B0C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E6B11: movsx eax, word ptr var_000000E0
008E6B18: test eax, eax
008E6B1A: jz 008E6BA2h
008E6B20: mov var_70, 80020004h
008E6B27: mov var_78, 0000000Ah
008E6B2E: mov var_60, 80020004h
008E6B35: mov var_68, 0000000Ah
008E6B3C: mov var_50, 80020004h
008E6B43: mov var_58, 0000000Ah
008E6B4A: mov var_00000094, 004589CCh ; Please enter a message!
008E6B54: mov var_0000009C, 00000008h
008E6B5E: lea edx, var_0000009C
008E6B64: lea ecx, var_48
008E6B67: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008E6B6C: lea eax, var_78
008E6B6F: push eax
008E6B70: lea eax, var_68
008E6B73: push eax
008E6B74: lea eax, var_58
008E6B77: push eax
008E6B78: push 00000010h
008E6B7A: lea eax, var_48
008E6B7D: push eax
008E6B7E: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008E6B83: lea eax, var_78
008E6B86: push eax
008E6B87: lea eax, var_68
008E6B8A: push eax
008E6B8B: lea eax, var_58
008E6B8E: push eax
008E6B8F: lea eax, var_48
008E6B92: push eax
008E6B93: push 00000004h
008E6B95: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E6B9A: add esp, 00000014h
008E6B9D: jmp 008E81ABh
008E6BA2: push 00000000h
008E6BA4: push 00000000h
008E6BA6: mov eax, [ebp+08h]
008E6BA9: mov eax, [eax]
008E6BAB: push [ebp+08h]
008E6BAE: call [eax+0000033Ch]
008E6BB4: push eax
008E6BB5: lea eax, var_30
008E6BB8: push eax
008E6BB9: call 00410A84h ; Set (object)
008E6BBE: push eax
008E6BBF: lea eax, var_48
008E6BC2: push eax
008E6BC3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E6BC8: add esp, 00000010h
008E6BCB: push eax
008E6BCC: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E6BD1: dec eax
008E6BD2: neg eax
008E6BD4: sbb eax, eax
008E6BD6: inc eax
008E6BD7: neg eax
008E6BD9: mov var_000000D8, ax
008E6BE0: lea ecx, var_30
008E6BE3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E6BE8: lea ecx, var_48
008E6BEB: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E6BF0: movsx eax, word ptr var_000000D8
008E6BF7: test eax, eax
008E6BF9: jz 008E6CA2h
008E6BFF: mov var_70, 80020004h
008E6C06: mov var_78, 0000000Ah
008E6C0D: mov var_60, 80020004h
008E6C14: mov var_68, 0000000Ah
008E6C1B: mov var_50, 80020004h
008E6C22: mov var_58, 0000000Ah
008E6C29: mov var_00000094, 00459588h ; Do you really want to send the message to all selected bots?
008E6C33: mov var_0000009C, 00000008h
008E6C3D: lea edx, var_0000009C
008E6C43: lea ecx, var_48
008E6C46: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008E6C4B: lea eax, var_78
008E6C4E: push eax
008E6C4F: lea eax, var_68
008E6C52: push eax
008E6C53: lea eax, var_58
008E6C56: push eax
008E6C57: push 00000034h
008E6C59: lea eax, var_48
008E6C5C: push eax
008E6C5D: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008E6C62: sub eax, 00000007h
008E6C65: neg eax
008E6C67: sbb eax, eax
008E6C69: inc eax
008E6C6A: neg eax
008E6C6C: mov var_000000D8, ax
008E6C73: lea eax, var_78
008E6C76: push eax
008E6C77: lea eax, var_68
008E6C7A: push eax
008E6C7B: lea eax, var_58
008E6C7E: push eax
008E6C7F: lea eax, var_48
008E6C82: push eax
008E6C83: push 00000004h
008E6C85: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E6C8A: add esp, 00000014h
008E6C8D: movsx eax, word ptr var_000000D8
008E6C94: test eax, eax
008E6C96: jz 8E6C9Dh
008E6C98: jmp 008E81ABh
008E6C9D: jmp 008E6F00h
008E6CA2: mov eax, [ebp+08h]
008E6CA5: mov eax, [eax]
008E6CA7: push [ebp+08h]
008E6CAA: call [eax+00000304h]
008E6CB0: push eax
008E6CB1: lea eax, var_30
008E6CB4: push eax
008E6CB5: call 00410A84h ; Set (object)
008E6CBA: mov var_000000D8, eax
008E6CC0: lea eax, var_28
008E6CC3: push eax
008E6CC4: mov eax, var_000000D8
008E6CCA: mov eax, [eax]
008E6CCC: push var_000000D8
008E6CD2: call [eax+000000A0h]
008E6CD8: fclex 
008E6CDA: mov var_000000DC, eax
008E6CE0: cmp var_000000DC, 00000000h
008E6CE7: jnl 8E6D0Ch
008E6CE9: push 000000A0h
008E6CEE: push 00440E08h
008E6CF3: push var_000000D8
008E6CF9: push var_000000DC
008E6CFF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E6D04: mov var_00000138, eax
008E6D0A: jmp 8E6D13h
008E6D0C: and var_00000138, 00000000h
008E6D13: push var_28
008E6D16: call 0041098Eh ; Len(arg_1)
008E6D1B: xor ecx, ecx
008E6D1D: cmp eax, 00000003h
008E6D20: setle cl
008E6D23: neg ecx
008E6D25: mov var_000000E0, cx
008E6D2C: lea ecx, var_28
008E6D2F: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008E6D34: lea ecx, var_30
008E6D37: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E6D3C: movsx eax, word ptr var_000000E0
008E6D43: test eax, eax
008E6D45: jz 008E6DCDh
008E6D4B: mov var_70, 80020004h
008E6D52: mov var_78, 0000000Ah
008E6D59: mov var_60, 80020004h
008E6D60: mov var_68, 0000000Ah
008E6D67: mov var_50, 80020004h
008E6D6E: mov var_58, 0000000Ah
008E6D75: mov var_00000094, 00459330h ; Invalid email
008E6D7F: mov var_0000009C, 00000008h
008E6D89: lea edx, var_0000009C
008E6D8F: lea ecx, var_48
008E6D92: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008E6D97: lea eax, var_78
008E6D9A: push eax
008E6D9B: lea eax, var_68
008E6D9E: push eax
008E6D9F: lea eax, var_58
008E6DA2: push eax
008E6DA3: push 00000010h
008E6DA5: lea eax, var_48
008E6DA8: push eax
008E6DA9: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008E6DAE: lea eax, var_78
008E6DB1: push eax
008E6DB2: lea eax, var_68
008E6DB5: push eax
008E6DB6: lea eax, var_58
008E6DB9: push eax
008E6DBA: lea eax, var_48
008E6DBD: push eax
008E6DBE: push 00000004h
008E6DC0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E6DC5: add esp, 00000014h
008E6DC8: jmp 008E81ABh
008E6DCD: mov eax, [ebp+08h]
008E6DD0: mov eax, [eax]
008E6DD2: push [ebp+08h]
008E6DD5: call [eax+00000304h]
008E6DDB: push eax
008E6DDC: lea eax, var_30
008E6DDF: push eax
008E6DE0: call 00410A84h ; Set (object)
008E6DE5: mov var_000000D8, eax
008E6DEB: lea eax, var_28
008E6DEE: push eax
008E6DEF: mov eax, var_000000D8
008E6DF5: mov eax, [eax]
008E6DF7: push var_000000D8
008E6DFD: call [eax+000000A0h]
008E6E03: fclex 
008E6E05: mov var_000000DC, eax
008E6E0B: cmp var_000000DC, 00000000h
008E6E12: jnl 8E6E37h
008E6E14: push 000000A0h
008E6E19: push 00440E08h
008E6E1E: push var_000000D8
008E6E24: push var_000000DC
008E6E2A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E6E2F: mov var_0000013C, eax
008E6E35: jmp 8E6E3Eh
008E6E37: and var_0000013C, 00000000h
008E6E3E: mov var_70, 80020004h
008E6E45: mov var_78, 0000000Ah
008E6E4C: mov var_60, 80020004h
008E6E53: mov var_68, 0000000Ah
008E6E5A: mov var_50, 80020004h
008E6E61: mov var_58, 0000000Ah
008E6E68: push 00459608h ; Do you really want to send the message to:
008E6E6D: push var_28
008E6E70: call 00410A18h ; &
008E6E75: mov edx, eax
008E6E77: lea ecx, var_2C
008E6E7A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E6E7F: push eax
008E6E80: push 00459390h
008E6E85: call 00410A18h ; &
008E6E8A: mov var_40, eax
008E6E8D: mov var_48, 00000008h
008E6E94: lea eax, var_78
008E6E97: push eax
008E6E98: lea eax, var_68
008E6E9B: push eax
008E6E9C: lea eax, var_58
008E6E9F: push eax
008E6EA0: push 00000034h
008E6EA2: lea eax, var_48
008E6EA5: push eax
008E6EA6: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008E6EAB: sub eax, 00000007h
008E6EAE: neg eax
008E6EB0: sbb eax, eax
008E6EB2: inc eax
008E6EB3: neg eax
008E6EB5: mov var_000000E0, ax
008E6EBC: lea eax, var_2C
008E6EBF: push eax
008E6EC0: lea eax, var_28
008E6EC3: push eax
008E6EC4: push 00000002h
008E6EC6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E6ECB: add esp, 0000000Ch
008E6ECE: lea ecx, var_30
008E6ED1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E6ED6: lea eax, var_78
008E6ED9: push eax
008E6EDA: lea eax, var_68
008E6EDD: push eax
008E6EDE: lea eax, var_58
008E6EE1: push eax
008E6EE2: lea eax, var_48
008E6EE5: push eax
008E6EE6: push 00000004h
008E6EE8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E6EED: add esp, 00000014h
008E6EF0: movsx eax, word ptr var_000000E0
008E6EF7: test eax, eax
008E6EF9: jz 8E6F00h
008E6EFB: jmp 008E81ABh
008E6F00: cmp word ptr [008F2430h], FFFFh
008E6F08: jnz 008E785Fh
008E6F0E: push 00000000h
008E6F10: push 00000000h
008E6F12: mov eax, [ebp+08h]
008E6F15: mov eax, [eax]
008E6F17: push [ebp+08h]
008E6F1A: call [eax+0000033Ch]
008E6F20: push eax
008E6F21: lea eax, var_30
008E6F24: push eax
008E6F25: call 00410A84h ; Set (object)
008E6F2A: push eax
008E6F2B: lea eax, var_48
008E6F2E: push eax
008E6F2F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E6F34: add esp, 00000010h
008E6F37: push eax
008E6F38: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E6F3D: dec eax
008E6F3E: neg eax
008E6F40: sbb eax, eax
008E6F42: inc eax
008E6F43: neg eax
008E6F45: mov var_000000D8, ax
008E6F4C: lea ecx, var_30
008E6F4F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E6F54: lea ecx, var_48
008E6F57: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E6F5C: movsx eax, word ptr var_000000D8
008E6F63: test eax, eax
008E6F65: jz 008E75E7h
008E6F6B: mov var_00000094, 00000001h
008E6F75: mov var_0000009C, 00000002h
008E6F7F: cmp [008F2010h], 00000000h
008E6F86: jnz 8E6FA3h
008E6F88: push 008F2010h
008E6F8D: push 00433984h
008E6F92: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E6F97: mov var_00000140, 008F2010h
008E6FA1: jmp 8E6FADh
008E6FA3: mov var_00000140, 008F2010h
008E6FAD: push 00000000h
008E6FAF: push 00000001h
008E6FB1: push 00440E48h
008E6FB6: push 00000000h
008E6FB8: push 00000018h
008E6FBA: mov eax, var_00000140
008E6FC0: mov eax, [eax]
008E6FC2: mov ecx, var_00000140
008E6FC8: mov ecx, [ecx]
008E6FCA: mov ecx, [ecx]
008E6FCC: push eax
008E6FCD: call [ecx+0000054Ch]
008E6FD3: push eax
008E6FD4: lea eax, var_30
008E6FD7: push eax
008E6FD8: call 00410A84h ; Set (object)
008E6FDD: push eax
008E6FDE: lea eax, var_48
008E6FE1: push eax
008E6FE2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E6FE7: add esp, 00000010h
008E6FEA: push eax
008E6FEB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E6FF0: push eax
008E6FF1: lea eax, var_34
008E6FF4: push eax
008E6FF5: call 00410A84h ; Set (object)
008E6FFA: push eax
008E6FFB: lea eax, var_58
008E6FFE: push eax
008E6FFF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7004: add esp, 00000010h
008E7007: push eax
008E7008: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E700D: mov var_000000A4, eax
008E7013: mov var_000000AC, 00000003h
008E701D: mov var_000000B4, 00000001h
008E7027: mov var_000000BC, 00000002h
008E7031: lea eax, var_0000009C
008E7037: push eax
008E7038: lea eax, var_000000AC
008E703E: push eax
008E703F: lea eax, var_000000BC
008E7045: push eax
008E7046: lea eax, var_00000100
008E704C: push eax
008E704D: lea eax, var_000000F0
008E7053: push eax
008E7054: lea eax, var_24
008E7057: push eax
008E7058: call 00410A3Ch ; For
008E705D: mov var_0000012C, eax
008E7063: lea eax, var_34
008E7066: push eax
008E7067: lea eax, var_30
008E706A: push eax
008E706B: push 00000002h
008E706D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E7072: add esp, 0000000Ch
008E7075: lea eax, var_58
008E7078: push eax
008E7079: lea eax, var_48
008E707C: push eax
008E707D: push 00000002h
008E707F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E7084: add esp, 0000000Ch
008E7087: jmp 008E75D5h
008E708C: lea eax, var_24
008E708F: mov var_00000094, eax
008E7095: mov var_0000009C, 0000400Ch
008E709F: cmp [008F2010h], 00000000h
008E70A6: jnz 8E70C3h
008E70A8: push 008F2010h
008E70AD: push 00433984h
008E70B2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E70B7: mov var_00000144, 008F2010h
008E70C1: jmp 8E70CDh
008E70C3: mov var_00000144, 008F2010h
008E70CD: push 00000000h
008E70CF: push 00000004h
008E70D1: push 00440E58h
008E70D6: push 00000010h
008E70D8: pop eax
008E70D9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E70DE: lea esi, var_0000009C
008E70E4: mov edi, esp
008E70E6: movsd 
008E70E7: movsd 
008E70E8: movsd 
008E70E9: movsd 
008E70EA: push 00000001h
008E70EC: push 00000000h
008E70EE: push 00440E48h
008E70F3: push 00000000h
008E70F5: push 00000018h
008E70F7: mov eax, var_00000144
008E70FD: mov eax, [eax]
008E70FF: mov ecx, var_00000144
008E7105: mov ecx, [ecx]
008E7107: mov ecx, [ecx]
008E7109: push eax
008E710A: call [ecx+0000054Ch]
008E7110: push eax
008E7111: lea eax, var_30
008E7114: push eax
008E7115: call 00410A84h ; Set (object)
008E711A: push eax
008E711B: lea eax, var_48
008E711E: push eax
008E711F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7124: add esp, 00000010h
008E7127: push eax
008E7128: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E712D: push eax
008E712E: lea eax, var_34
008E7131: push eax
008E7132: call 00410A84h ; Set (object)
008E7137: push eax
008E7138: lea eax, var_58
008E713B: push eax
008E713C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7141: add esp, 00000020h
008E7144: push eax
008E7145: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E714A: push eax
008E714B: lea eax, var_38
008E714E: push eax
008E714F: call 00410A84h ; Set (object)
008E7154: push eax
008E7155: lea eax, var_68
008E7158: push eax
008E7159: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E715E: add esp, 00000010h
008E7161: push eax
008E7162: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008E7167: sub ax, FFFFh
008E716B: neg ax
008E716E: sbb eax, eax
008E7170: inc eax
008E7171: neg eax
008E7173: mov var_000000D8, ax
008E717A: lea eax, var_38
008E717D: push eax
008E717E: lea eax, var_34
008E7181: push eax
008E7182: lea eax, var_30
008E7185: push eax
008E7186: push 00000003h
008E7188: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E718D: add esp, 00000010h
008E7190: lea eax, var_68
008E7193: push eax
008E7194: lea eax, var_58
008E7197: push eax
008E7198: lea eax, var_48
008E719B: push eax
008E719C: push 00000003h
008E719E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E71A3: add esp, 00000010h
008E71A6: movsx eax, word ptr var_000000D8
008E71AD: test eax, eax
008E71AF: jz 008E75B8h
008E71B5: push 00000000h
008E71B7: push 00000000h
008E71B9: mov eax, [ebp+08h]
008E71BC: mov eax, [eax]
008E71BE: push [ebp+08h]
008E71C1: call [eax+00000348h]
008E71C7: push eax
008E71C8: lea eax, var_30
008E71CB: push eax
008E71CC: call 00410A84h ; Set (object)
008E71D1: push eax
008E71D2: lea eax, var_48
008E71D5: push eax
008E71D6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E71DB: add esp, 00000010h
008E71DE: push eax
008E71DF: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E71E4: dec eax
008E71E5: neg eax
008E71E7: sbb eax, eax
008E71E9: inc eax
008E71EA: neg eax
008E71EC: mov var_000000D8, ax
008E71F3: lea ecx, var_30
008E71F6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E71FB: lea ecx, var_48
008E71FE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E7203: movsx eax, word ptr var_000000D8
008E720A: test eax, eax
008E720C: jz 008E73CCh
008E7212: lea eax, var_24
008E7215: mov var_00000094, eax
008E721B: mov var_0000009C, 0000400Ch
008E7225: cmp [008F2010h], 00000000h
008E722C: jnz 8E7249h
008E722E: push 008F2010h
008E7233: push 00433984h
008E7238: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E723D: mov var_00000148, 008F2010h
008E7247: jmp 8E7253h
008E7249: mov var_00000148, 008F2010h
008E7253: push 00000000h
008E7255: push 00000014h
008E7257: push 00440E58h
008E725C: push 00000010h
008E725E: pop eax
008E725F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E7264: lea esi, var_0000009C
008E726A: mov edi, esp
008E726C: movsd 
008E726D: movsd 
008E726E: movsd 
008E726F: movsd 
008E7270: push 00000001h
008E7272: push 00000000h
008E7274: push 00440E48h
008E7279: push 00000000h
008E727B: push 00000018h
008E727D: mov eax, var_00000148
008E7283: mov eax, [eax]
008E7285: mov ecx, var_00000148
008E728B: mov ecx, [ecx]
008E728D: mov ecx, [ecx]
008E728F: push eax
008E7290: call [ecx+0000054Ch]
008E7296: push eax
008E7297: lea eax, var_30
008E729A: push eax
008E729B: call 00410A84h ; Set (object)
008E72A0: push eax
008E72A1: lea eax, var_48
008E72A4: push eax
008E72A5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E72AA: add esp, 00000010h
008E72AD: push eax
008E72AE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E72B3: push eax
008E72B4: lea eax, var_34
008E72B7: push eax
008E72B8: call 00410A84h ; Set (object)
008E72BD: push eax
008E72BE: lea eax, var_58
008E72C1: push eax
008E72C2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E72C7: add esp, 00000020h
008E72CA: push eax
008E72CB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E72D0: push eax
008E72D1: lea eax, var_38
008E72D4: push eax
008E72D5: call 00410A84h ; Set (object)
008E72DA: push eax
008E72DB: lea eax, var_68
008E72DE: push eax
008E72DF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E72E4: add esp, 00000010h
008E72E7: push eax
008E72E8: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E72ED: mov edx, eax
008E72EF: lea ecx, var_28
008E72F2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E72F7: push eax
008E72F8: call 004109DCh ; Val(arg_1)
008E72FD: fstp real8 ptr var_000000D4
008E7303: push 00000000h
008E7305: push 00000000h
008E7307: push 00000001h
008E7309: push 00000000h
008E730B: lea eax, var_0000008C
008E7311: push eax
008E7312: push 00000010h
008E7314: push 00000880h
008E7319: call 00410946h ; ReDim
008E731E: add esp, 0000001Ch
008E7321: mov eax, [ebp+08h]
008E7324: mov eax, [eax]
008E7326: push [ebp+08h]
008E7329: call [eax+00000300h]
008E732F: mov var_70, eax
008E7332: mov var_78, 00000009h
008E7339: lea esi, var_78
008E733C: push 00000000h
008E733E: push var_0000008C
008E7344: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E7349: mov ecx, eax
008E734B: mov edx, esi
008E734D: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E7352: mov edx, 0043DB28h ; x137
008E7357: lea ecx, var_2C
008E735A: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E735F: lea eax, var_0000008C
008E7365: push eax
008E7366: lea eax, var_2C
008E7369: push eax
008E736A: fld real8 ptr var_000000D4
008E7370: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E7375: push eax
008E7376: call 007A6910h
008E737B: lea eax, var_0000008C
008E7381: push eax
008E7382: push 00000000h
008E7384: call 00410934h ; Erase
008E7389: lea eax, var_2C
008E738C: push eax
008E738D: lea eax, var_28
008E7390: push eax
008E7391: push 00000002h
008E7393: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E7398: add esp, 0000000Ch
008E739B: lea eax, var_38
008E739E: push eax
008E739F: lea eax, var_34
008E73A2: push eax
008E73A3: lea eax, var_30
008E73A6: push eax
008E73A7: push 00000003h
008E73A9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E73AE: add esp, 00000010h
008E73B1: lea eax, var_68
008E73B4: push eax
008E73B5: lea eax, var_58
008E73B8: push eax
008E73B9: lea eax, var_48
008E73BC: push eax
008E73BD: push 00000003h
008E73BF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E73C4: add esp, 00000010h
008E73C7: jmp 008E75B8h
008E73CC: lea eax, var_24
008E73CF: mov var_00000094, eax
008E73D5: mov var_0000009C, 0000400Ch
008E73DF: cmp [008F2010h], 00000000h
008E73E6: jnz 8E7403h
008E73E8: push 008F2010h
008E73ED: push 00433984h
008E73F2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E73F7: mov var_0000014C, 008F2010h
008E7401: jmp 8E740Dh
008E7403: mov var_0000014C, 008F2010h
008E740D: push 00000000h
008E740F: push 00000014h
008E7411: push 00440E58h
008E7416: push 00000010h
008E7418: pop eax
008E7419: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E741E: lea esi, var_0000009C
008E7424: mov edi, esp
008E7426: movsd 
008E7427: movsd 
008E7428: movsd 
008E7429: movsd 
008E742A: push 00000001h
008E742C: push 00000000h
008E742E: push 00440E48h
008E7433: push 00000000h
008E7435: push 00000018h
008E7437: mov eax, var_0000014C
008E743D: mov eax, [eax]
008E743F: mov ecx, var_0000014C
008E7445: mov ecx, [ecx]
008E7447: mov ecx, [ecx]
008E7449: push eax
008E744A: call [ecx+0000054Ch]
008E7450: push eax
008E7451: lea eax, var_30
008E7454: push eax
008E7455: call 00410A84h ; Set (object)
008E745A: push eax
008E745B: lea eax, var_48
008E745E: push eax
008E745F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7464: add esp, 00000010h
008E7467: push eax
008E7468: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E746D: push eax
008E746E: lea eax, var_34
008E7471: push eax
008E7472: call 00410A84h ; Set (object)
008E7477: push eax
008E7478: lea eax, var_58
008E747B: push eax
008E747C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7481: add esp, 00000020h
008E7484: push eax
008E7485: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E748A: push eax
008E748B: lea eax, var_38
008E748E: push eax
008E748F: call 00410A84h ; Set (object)
008E7494: push eax
008E7495: lea eax, var_68
008E7498: push eax
008E7499: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E749E: add esp, 00000010h
008E74A1: push eax
008E74A2: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E74A7: mov edx, eax
008E74A9: lea ecx, var_28
008E74AC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E74B1: push eax
008E74B2: call 004109DCh ; Val(arg_1)
008E74B7: fstp real8 ptr var_000000D4
008E74BD: push 00000000h
008E74BF: push 00000001h
008E74C1: push 00000001h
008E74C3: push 00000000h
008E74C5: lea eax, var_0000008C
008E74CB: push eax
008E74CC: push 00000010h
008E74CE: push 00000880h
008E74D3: call 00410946h ; ReDim
008E74D8: add esp, 0000001Ch
008E74DB: mov eax, [ebp+08h]
008E74DE: mov eax, [eax]
008E74E0: push [ebp+08h]
008E74E3: call [eax+00000304h]
008E74E9: mov var_70, eax
008E74EC: mov var_78, 00000009h
008E74F3: lea esi, var_78
008E74F6: push 00000000h
008E74F8: push var_0000008C
008E74FE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E7503: mov ecx, eax
008E7505: mov edx, esi
008E7507: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E750C: mov eax, [ebp+08h]
008E750F: mov eax, [eax]
008E7511: push [ebp+08h]
008E7514: call [eax+00000300h]
008E751A: mov var_80, eax
008E751D: mov var_00000088, 00000009h
008E7527: lea esi, var_00000088
008E752D: push 00000001h
008E752F: push var_0000008C
008E7535: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E753A: mov ecx, eax
008E753C: mov edx, esi
008E753E: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E7543: mov edx, 0043DB10h ; x136
008E7548: lea ecx, var_2C
008E754B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E7550: lea eax, var_0000008C
008E7556: push eax
008E7557: lea eax, var_2C
008E755A: push eax
008E755B: fld real8 ptr var_000000D4
008E7561: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E7566: push eax
008E7567: call 007A6910h
008E756C: lea eax, var_0000008C
008E7572: push eax
008E7573: push 00000000h
008E7575: call 00410934h ; Erase
008E757A: lea eax, var_2C
008E757D: push eax
008E757E: lea eax, var_28
008E7581: push eax
008E7582: push 00000002h
008E7584: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E7589: add esp, 0000000Ch
008E758C: lea eax, var_38
008E758F: push eax
008E7590: lea eax, var_34
008E7593: push eax
008E7594: lea eax, var_30
008E7597: push eax
008E7598: push 00000003h
008E759A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E759F: add esp, 00000010h
008E75A2: lea eax, var_68
008E75A5: push eax
008E75A6: lea eax, var_58
008E75A9: push eax
008E75AA: lea eax, var_48
008E75AD: push eax
008E75AE: push 00000003h
008E75B0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E75B5: add esp, 00000010h
008E75B8: lea eax, var_00000100
008E75BE: push eax
008E75BF: lea eax, var_000000F0
008E75C5: push eax
008E75C6: lea eax, var_24
008E75C9: push eax
008E75CA: call 00410A36h ; Next
008E75CF: mov var_0000012C, eax
008E75D5: cmp var_0000012C, 00000000h
008E75DC: jnz 008E708Ch
008E75E2: jmp 008E785Ah
008E75E7: push 00000000h
008E75E9: push 00000000h
008E75EB: mov eax, [ebp+08h]
008E75EE: mov eax, [eax]
008E75F0: push [ebp+08h]
008E75F3: call [eax+00000348h]
008E75F9: push eax
008E75FA: lea eax, var_30
008E75FD: push eax
008E75FE: call 00410A84h ; Set (object)
008E7603: push eax
008E7604: lea eax, var_48
008E7607: push eax
008E7608: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E760D: add esp, 00000010h
008E7610: push eax
008E7611: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E7616: dec eax
008E7617: neg eax
008E7619: sbb eax, eax
008E761B: inc eax
008E761C: neg eax
008E761E: mov var_000000D8, ax
008E7625: lea ecx, var_30
008E7628: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E762D: lea ecx, var_48
008E7630: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E7635: movsx eax, word ptr var_000000D8
008E763C: test eax, eax
008E763E: jz 008E7739h
008E7644: lea eax, var_28
008E7647: push eax
008E7648: mov eax, [ebp+08h]
008E764B: mov eax, [eax]
008E764D: push [ebp+08h]
008E7650: call [eax+000001C0h]
008E7656: fclex 
008E7658: mov var_000000D8, eax
008E765E: cmp var_000000D8, 00000000h
008E7665: jnl 8E7687h
008E7667: push 000001C0h
008E766C: push 00448930h
008E7671: push [ebp+08h]
008E7674: push var_000000D8
008E767A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E767F: mov var_00000150, eax
008E7685: jmp 8E768Eh
008E7687: and var_00000150, 00000000h
008E768E: push var_28
008E7691: call 004109DCh ; Val(arg_1)
008E7696: fstp real8 ptr var_000000D4
008E769C: push 00000000h
008E769E: push 00000000h
008E76A0: push 00000001h
008E76A2: push 00000000h
008E76A4: lea eax, var_0000008C
008E76AA: push eax
008E76AB: push 00000010h
008E76AD: push 00000880h
008E76B2: call 00410946h ; ReDim
008E76B7: add esp, 0000001Ch
008E76BA: mov eax, [ebp+08h]
008E76BD: mov eax, [eax]
008E76BF: push [ebp+08h]
008E76C2: call [eax+00000300h]
008E76C8: mov var_40, eax
008E76CB: mov var_48, 00000009h
008E76D2: lea esi, var_48
008E76D5: push 00000000h
008E76D7: push var_0000008C
008E76DD: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E76E2: mov ecx, eax
008E76E4: mov edx, esi
008E76E6: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E76EB: mov edx, 0043DB28h ; x137
008E76F0: lea ecx, var_2C
008E76F3: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E76F8: lea eax, var_0000008C
008E76FE: push eax
008E76FF: lea eax, var_2C
008E7702: push eax
008E7703: fld real8 ptr var_000000D4
008E7709: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E770E: push eax
008E770F: call 007A6910h
008E7714: lea eax, var_0000008C
008E771A: push eax
008E771B: push 00000000h
008E771D: call 00410934h ; Erase
008E7722: lea eax, var_2C
008E7725: push eax
008E7726: lea eax, var_28
008E7729: push eax
008E772A: push 00000002h
008E772C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E7731: add esp, 0000000Ch
008E7734: jmp 008E785Ah
008E7739: lea eax, var_28
008E773C: push eax
008E773D: mov eax, [ebp+08h]
008E7740: mov eax, [eax]
008E7742: push [ebp+08h]
008E7745: call [eax+000001C0h]
008E774B: fclex 
008E774D: mov var_000000D8, eax
008E7753: cmp var_000000D8, 00000000h
008E775A: jnl 8E777Ch
008E775C: push 000001C0h
008E7761: push 00448930h
008E7766: push [ebp+08h]
008E7769: push var_000000D8
008E776F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E7774: mov var_00000154, eax
008E777A: jmp 8E7783h
008E777C: and var_00000154, 00000000h
008E7783: push var_28
008E7786: call 004109DCh ; Val(arg_1)
008E778B: fstp real8 ptr var_000000D4
008E7791: push 00000000h
008E7793: push 00000001h
008E7795: push 00000001h
008E7797: push 00000000h
008E7799: lea eax, var_0000008C
008E779F: push eax
008E77A0: push 00000010h
008E77A2: push 00000880h
008E77A7: call 00410946h ; ReDim
008E77AC: add esp, 0000001Ch
008E77AF: mov eax, [ebp+08h]
008E77B2: mov eax, [eax]
008E77B4: push [ebp+08h]
008E77B7: call [eax+00000304h]
008E77BD: mov var_40, eax
008E77C0: mov var_48, 00000009h
008E77C7: lea esi, var_48
008E77CA: push 00000000h
008E77CC: push var_0000008C
008E77D2: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E77D7: mov ecx, eax
008E77D9: mov edx, esi
008E77DB: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E77E0: mov eax, [ebp+08h]
008E77E3: mov eax, [eax]
008E77E5: push [ebp+08h]
008E77E8: call [eax+00000300h]
008E77EE: mov var_50, eax
008E77F1: mov var_58, 00000009h
008E77F8: lea esi, var_58
008E77FB: push 00000001h
008E77FD: push var_0000008C
008E7803: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E7808: mov ecx, eax
008E780A: mov edx, esi
008E780C: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E7811: mov edx, 0043DB10h ; x136
008E7816: lea ecx, var_2C
008E7819: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E781E: lea eax, var_0000008C
008E7824: push eax
008E7825: lea eax, var_2C
008E7828: push eax
008E7829: fld real8 ptr var_000000D4
008E782F: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E7834: push eax
008E7835: call 007A6910h
008E783A: lea eax, var_0000008C
008E7840: push eax
008E7841: push 00000000h
008E7843: call 00410934h ; Erase
008E7848: lea eax, var_2C
008E784B: push eax
008E784C: lea eax, var_28
008E784F: push eax
008E7850: push 00000002h
008E7852: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E7857: add esp, 0000000Ch
008E785A: jmp 008E81ABh
008E785F: push 00000000h
008E7861: push 00000000h
008E7863: mov eax, [ebp+08h]
008E7866: mov eax, [eax]
008E7868: push [ebp+08h]
008E786B: call [eax+0000033Ch]
008E7871: push eax
008E7872: lea eax, var_30
008E7875: push eax
008E7876: call 00410A84h ; Set (object)
008E787B: push eax
008E787C: lea eax, var_48
008E787F: push eax
008E7880: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7885: add esp, 00000010h
008E7888: push eax
008E7889: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E788E: dec eax
008E788F: neg eax
008E7891: sbb eax, eax
008E7893: inc eax
008E7894: neg eax
008E7896: mov var_000000D8, ax
008E789D: lea ecx, var_30
008E78A0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E78A5: lea ecx, var_48
008E78A8: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E78AD: movsx eax, word ptr var_000000D8
008E78B4: test eax, eax
008E78B6: jz 008E7F38h
008E78BC: mov var_00000094, 00000001h
008E78C6: mov var_0000009C, 00000002h
008E78D0: cmp [008F2010h], 00000000h
008E78D7: jnz 8E78F4h
008E78D9: push 008F2010h
008E78DE: push 00433984h
008E78E3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E78E8: mov var_00000158, 008F2010h
008E78F2: jmp 8E78FEh
008E78F4: mov var_00000158, 008F2010h
008E78FE: push 00000000h
008E7900: push 00000001h
008E7902: push 00440E48h
008E7907: push 00000000h
008E7909: push 00000018h
008E790B: mov eax, var_00000158
008E7911: mov eax, [eax]
008E7913: mov ecx, var_00000158
008E7919: mov ecx, [ecx]
008E791B: mov ecx, [ecx]
008E791D: push eax
008E791E: call [ecx+00000550h]
008E7924: push eax
008E7925: lea eax, var_30
008E7928: push eax
008E7929: call 00410A84h ; Set (object)
008E792E: push eax
008E792F: lea eax, var_48
008E7932: push eax
008E7933: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7938: add esp, 00000010h
008E793B: push eax
008E793C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E7941: push eax
008E7942: lea eax, var_34
008E7945: push eax
008E7946: call 00410A84h ; Set (object)
008E794B: push eax
008E794C: lea eax, var_58
008E794F: push eax
008E7950: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7955: add esp, 00000010h
008E7958: push eax
008E7959: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E795E: mov var_000000A4, eax
008E7964: mov var_000000AC, 00000003h
008E796E: mov var_000000B4, 00000001h
008E7978: mov var_000000BC, 00000002h
008E7982: lea eax, var_0000009C
008E7988: push eax
008E7989: lea eax, var_000000AC
008E798F: push eax
008E7990: lea eax, var_000000BC
008E7996: push eax
008E7997: lea eax, var_00000120
008E799D: push eax
008E799E: lea eax, var_00000110
008E79A4: push eax
008E79A5: lea eax, var_24
008E79A8: push eax
008E79A9: call 00410A3Ch ; For
008E79AE: mov var_00000130, eax
008E79B4: lea eax, var_34
008E79B7: push eax
008E79B8: lea eax, var_30
008E79BB: push eax
008E79BC: push 00000002h
008E79BE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E79C3: add esp, 0000000Ch
008E79C6: lea eax, var_58
008E79C9: push eax
008E79CA: lea eax, var_48
008E79CD: push eax
008E79CE: push 00000002h
008E79D0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E79D5: add esp, 0000000Ch
008E79D8: jmp 008E7F26h
008E79DD: lea eax, var_24
008E79E0: mov var_00000094, eax
008E79E6: mov var_0000009C, 0000400Ch
008E79F0: cmp [008F2010h], 00000000h
008E79F7: jnz 8E7A14h
008E79F9: push 008F2010h
008E79FE: push 00433984h
008E7A03: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E7A08: mov var_0000015C, 008F2010h
008E7A12: jmp 8E7A1Eh
008E7A14: mov var_0000015C, 008F2010h
008E7A1E: push 00000000h
008E7A20: push 00000004h
008E7A22: push 00440E58h
008E7A27: push 00000010h
008E7A29: pop eax
008E7A2A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E7A2F: lea esi, var_0000009C
008E7A35: mov edi, esp
008E7A37: movsd 
008E7A38: movsd 
008E7A39: movsd 
008E7A3A: movsd 
008E7A3B: push 00000001h
008E7A3D: push 00000000h
008E7A3F: push 00440E48h
008E7A44: push 00000000h
008E7A46: push 00000018h
008E7A48: mov eax, var_0000015C
008E7A4E: mov eax, [eax]
008E7A50: mov ecx, var_0000015C
008E7A56: mov ecx, [ecx]
008E7A58: mov ecx, [ecx]
008E7A5A: push eax
008E7A5B: call [ecx+00000550h]
008E7A61: push eax
008E7A62: lea eax, var_30
008E7A65: push eax
008E7A66: call 00410A84h ; Set (object)
008E7A6B: push eax
008E7A6C: lea eax, var_48
008E7A6F: push eax
008E7A70: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7A75: add esp, 00000010h
008E7A78: push eax
008E7A79: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E7A7E: push eax
008E7A7F: lea eax, var_34
008E7A82: push eax
008E7A83: call 00410A84h ; Set (object)
008E7A88: push eax
008E7A89: lea eax, var_58
008E7A8C: push eax
008E7A8D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7A92: add esp, 00000020h
008E7A95: push eax
008E7A96: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E7A9B: push eax
008E7A9C: lea eax, var_38
008E7A9F: push eax
008E7AA0: call 00410A84h ; Set (object)
008E7AA5: push eax
008E7AA6: lea eax, var_68
008E7AA9: push eax
008E7AAA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7AAF: add esp, 00000010h
008E7AB2: push eax
008E7AB3: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008E7AB8: sub ax, FFFFh
008E7ABC: neg ax
008E7ABF: sbb eax, eax
008E7AC1: inc eax
008E7AC2: neg eax
008E7AC4: mov var_000000D8, ax
008E7ACB: lea eax, var_38
008E7ACE: push eax
008E7ACF: lea eax, var_34
008E7AD2: push eax
008E7AD3: lea eax, var_30
008E7AD6: push eax
008E7AD7: push 00000003h
008E7AD9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E7ADE: add esp, 00000010h
008E7AE1: lea eax, var_68
008E7AE4: push eax
008E7AE5: lea eax, var_58
008E7AE8: push eax
008E7AE9: lea eax, var_48
008E7AEC: push eax
008E7AED: push 00000003h
008E7AEF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E7AF4: add esp, 00000010h
008E7AF7: movsx eax, word ptr var_000000D8
008E7AFE: test eax, eax
008E7B00: jz 008E7F09h
008E7B06: push 00000000h
008E7B08: push 00000000h
008E7B0A: mov eax, [ebp+08h]
008E7B0D: mov eax, [eax]
008E7B0F: push [ebp+08h]
008E7B12: call [eax+00000348h]
008E7B18: push eax
008E7B19: lea eax, var_30
008E7B1C: push eax
008E7B1D: call 00410A84h ; Set (object)
008E7B22: push eax
008E7B23: lea eax, var_48
008E7B26: push eax
008E7B27: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7B2C: add esp, 00000010h
008E7B2F: push eax
008E7B30: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E7B35: dec eax
008E7B36: neg eax
008E7B38: sbb eax, eax
008E7B3A: inc eax
008E7B3B: neg eax
008E7B3D: mov var_000000D8, ax
008E7B44: lea ecx, var_30
008E7B47: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E7B4C: lea ecx, var_48
008E7B4F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E7B54: movsx eax, word ptr var_000000D8
008E7B5B: test eax, eax
008E7B5D: jz 008E7D1Dh
008E7B63: lea eax, var_24
008E7B66: mov var_00000094, eax
008E7B6C: mov var_0000009C, 0000400Ch
008E7B76: cmp [008F2010h], 00000000h
008E7B7D: jnz 8E7B9Ah
008E7B7F: push 008F2010h
008E7B84: push 00433984h
008E7B89: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E7B8E: mov var_00000160, 008F2010h
008E7B98: jmp 8E7BA4h
008E7B9A: mov var_00000160, 008F2010h
008E7BA4: push 00000000h
008E7BA6: push 00000014h
008E7BA8: push 00440E58h
008E7BAD: push 00000010h
008E7BAF: pop eax
008E7BB0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E7BB5: lea esi, var_0000009C
008E7BBB: mov edi, esp
008E7BBD: movsd 
008E7BBE: movsd 
008E7BBF: movsd 
008E7BC0: movsd 
008E7BC1: push 00000001h
008E7BC3: push 00000000h
008E7BC5: push 00440E48h
008E7BCA: push 00000000h
008E7BCC: push 00000018h
008E7BCE: mov eax, var_00000160
008E7BD4: mov eax, [eax]
008E7BD6: mov ecx, var_00000160
008E7BDC: mov ecx, [ecx]
008E7BDE: mov ecx, [ecx]
008E7BE0: push eax
008E7BE1: call [ecx+00000550h]
008E7BE7: push eax
008E7BE8: lea eax, var_30
008E7BEB: push eax
008E7BEC: call 00410A84h ; Set (object)
008E7BF1: push eax
008E7BF2: lea eax, var_48
008E7BF5: push eax
008E7BF6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7BFB: add esp, 00000010h
008E7BFE: push eax
008E7BFF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E7C04: push eax
008E7C05: lea eax, var_34
008E7C08: push eax
008E7C09: call 00410A84h ; Set (object)
008E7C0E: push eax
008E7C0F: lea eax, var_58
008E7C12: push eax
008E7C13: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7C18: add esp, 00000020h
008E7C1B: push eax
008E7C1C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E7C21: push eax
008E7C22: lea eax, var_38
008E7C25: push eax
008E7C26: call 00410A84h ; Set (object)
008E7C2B: push eax
008E7C2C: lea eax, var_68
008E7C2F: push eax
008E7C30: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7C35: add esp, 00000010h
008E7C38: push eax
008E7C39: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E7C3E: mov edx, eax
008E7C40: lea ecx, var_28
008E7C43: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E7C48: push eax
008E7C49: call 004109DCh ; Val(arg_1)
008E7C4E: fstp real8 ptr var_000000D4
008E7C54: push 00000000h
008E7C56: push 00000000h
008E7C58: push 00000001h
008E7C5A: push 00000000h
008E7C5C: lea eax, var_0000008C
008E7C62: push eax
008E7C63: push 00000010h
008E7C65: push 00000880h
008E7C6A: call 00410946h ; ReDim
008E7C6F: add esp, 0000001Ch
008E7C72: mov eax, [ebp+08h]
008E7C75: mov eax, [eax]
008E7C77: push [ebp+08h]
008E7C7A: call [eax+00000300h]
008E7C80: mov var_70, eax
008E7C83: mov var_78, 00000009h
008E7C8A: lea esi, var_78
008E7C8D: push 00000000h
008E7C8F: push var_0000008C
008E7C95: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E7C9A: mov ecx, eax
008E7C9C: mov edx, esi
008E7C9E: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E7CA3: mov edx, 0043DB28h ; x137
008E7CA8: lea ecx, var_2C
008E7CAB: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E7CB0: lea eax, var_0000008C
008E7CB6: push eax
008E7CB7: lea eax, var_2C
008E7CBA: push eax
008E7CBB: fld real8 ptr var_000000D4
008E7CC1: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E7CC6: push eax
008E7CC7: call 007A6910h
008E7CCC: lea eax, var_0000008C
008E7CD2: push eax
008E7CD3: push 00000000h
008E7CD5: call 00410934h ; Erase
008E7CDA: lea eax, var_2C
008E7CDD: push eax
008E7CDE: lea eax, var_28
008E7CE1: push eax
008E7CE2: push 00000002h
008E7CE4: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E7CE9: add esp, 0000000Ch
008E7CEC: lea eax, var_38
008E7CEF: push eax
008E7CF0: lea eax, var_34
008E7CF3: push eax
008E7CF4: lea eax, var_30
008E7CF7: push eax
008E7CF8: push 00000003h
008E7CFA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E7CFF: add esp, 00000010h
008E7D02: lea eax, var_68
008E7D05: push eax
008E7D06: lea eax, var_58
008E7D09: push eax
008E7D0A: lea eax, var_48
008E7D0D: push eax
008E7D0E: push 00000003h
008E7D10: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E7D15: add esp, 00000010h
008E7D18: jmp 008E7F09h
008E7D1D: lea eax, var_24
008E7D20: mov var_00000094, eax
008E7D26: mov var_0000009C, 0000400Ch
008E7D30: cmp [008F2010h], 00000000h
008E7D37: jnz 8E7D54h
008E7D39: push 008F2010h
008E7D3E: push 00433984h
008E7D43: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E7D48: mov var_00000164, 008F2010h
008E7D52: jmp 8E7D5Eh
008E7D54: mov var_00000164, 008F2010h
008E7D5E: push 00000000h
008E7D60: push 00000014h
008E7D62: push 00440E58h
008E7D67: push 00000010h
008E7D69: pop eax
008E7D6A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E7D6F: lea esi, var_0000009C
008E7D75: mov edi, esp
008E7D77: movsd 
008E7D78: movsd 
008E7D79: movsd 
008E7D7A: movsd 
008E7D7B: push 00000001h
008E7D7D: push 00000000h
008E7D7F: push 00440E48h
008E7D84: push 00000000h
008E7D86: push 00000018h
008E7D88: mov eax, var_00000164
008E7D8E: mov eax, [eax]
008E7D90: mov ecx, var_00000164
008E7D96: mov ecx, [ecx]
008E7D98: mov ecx, [ecx]
008E7D9A: push eax
008E7D9B: call [ecx+00000550h]
008E7DA1: push eax
008E7DA2: lea eax, var_30
008E7DA5: push eax
008E7DA6: call 00410A84h ; Set (object)
008E7DAB: push eax
008E7DAC: lea eax, var_48
008E7DAF: push eax
008E7DB0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7DB5: add esp, 00000010h
008E7DB8: push eax
008E7DB9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E7DBE: push eax
008E7DBF: lea eax, var_34
008E7DC2: push eax
008E7DC3: call 00410A84h ; Set (object)
008E7DC8: push eax
008E7DC9: lea eax, var_58
008E7DCC: push eax
008E7DCD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7DD2: add esp, 00000020h
008E7DD5: push eax
008E7DD6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E7DDB: push eax
008E7DDC: lea eax, var_38
008E7DDF: push eax
008E7DE0: call 00410A84h ; Set (object)
008E7DE5: push eax
008E7DE6: lea eax, var_68
008E7DE9: push eax
008E7DEA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7DEF: add esp, 00000010h
008E7DF2: push eax
008E7DF3: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E7DF8: mov edx, eax
008E7DFA: lea ecx, var_28
008E7DFD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E7E02: push eax
008E7E03: call 004109DCh ; Val(arg_1)
008E7E08: fstp real8 ptr var_000000D4
008E7E0E: push 00000000h
008E7E10: push 00000001h
008E7E12: push 00000001h
008E7E14: push 00000000h
008E7E16: lea eax, var_0000008C
008E7E1C: push eax
008E7E1D: push 00000010h
008E7E1F: push 00000880h
008E7E24: call 00410946h ; ReDim
008E7E29: add esp, 0000001Ch
008E7E2C: mov eax, [ebp+08h]
008E7E2F: mov eax, [eax]
008E7E31: push [ebp+08h]
008E7E34: call [eax+00000304h]
008E7E3A: mov var_70, eax
008E7E3D: mov var_78, 00000009h
008E7E44: lea esi, var_78
008E7E47: push 00000000h
008E7E49: push var_0000008C
008E7E4F: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E7E54: mov ecx, eax
008E7E56: mov edx, esi
008E7E58: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E7E5D: mov eax, [ebp+08h]
008E7E60: mov eax, [eax]
008E7E62: push [ebp+08h]
008E7E65: call [eax+00000300h]
008E7E6B: mov var_80, eax
008E7E6E: mov var_00000088, 00000009h
008E7E78: lea esi, var_00000088
008E7E7E: push 00000001h
008E7E80: push var_0000008C
008E7E86: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E7E8B: mov ecx, eax
008E7E8D: mov edx, esi
008E7E8F: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E7E94: mov edx, 0043DB10h ; x136
008E7E99: lea ecx, var_2C
008E7E9C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E7EA1: lea eax, var_0000008C
008E7EA7: push eax
008E7EA8: lea eax, var_2C
008E7EAB: push eax
008E7EAC: fld real8 ptr var_000000D4
008E7EB2: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E7EB7: push eax
008E7EB8: call 007A6910h
008E7EBD: lea eax, var_0000008C
008E7EC3: push eax
008E7EC4: push 00000000h
008E7EC6: call 00410934h ; Erase
008E7ECB: lea eax, var_2C
008E7ECE: push eax
008E7ECF: lea eax, var_28
008E7ED2: push eax
008E7ED3: push 00000002h
008E7ED5: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E7EDA: add esp, 0000000Ch
008E7EDD: lea eax, var_38
008E7EE0: push eax
008E7EE1: lea eax, var_34
008E7EE4: push eax
008E7EE5: lea eax, var_30
008E7EE8: push eax
008E7EE9: push 00000003h
008E7EEB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E7EF0: add esp, 00000010h
008E7EF3: lea eax, var_68
008E7EF6: push eax
008E7EF7: lea eax, var_58
008E7EFA: push eax
008E7EFB: lea eax, var_48
008E7EFE: push eax
008E7EFF: push 00000003h
008E7F01: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E7F06: add esp, 00000010h
008E7F09: lea eax, var_00000120
008E7F0F: push eax
008E7F10: lea eax, var_00000110
008E7F16: push eax
008E7F17: lea eax, var_24
008E7F1A: push eax
008E7F1B: call 00410A36h ; Next
008E7F20: mov var_00000130, eax
008E7F26: cmp var_00000130, 00000000h
008E7F2D: jnz 008E79DDh
008E7F33: jmp 008E81ABh
008E7F38: push 00000000h
008E7F3A: push 00000000h
008E7F3C: mov eax, [ebp+08h]
008E7F3F: mov eax, [eax]
008E7F41: push [ebp+08h]
008E7F44: call [eax+00000348h]
008E7F4A: push eax
008E7F4B: lea eax, var_30
008E7F4E: push eax
008E7F4F: call 00410A84h ; Set (object)
008E7F54: push eax
008E7F55: lea eax, var_48
008E7F58: push eax
008E7F59: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E7F5E: add esp, 00000010h
008E7F61: push eax
008E7F62: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E7F67: dec eax
008E7F68: neg eax
008E7F6A: sbb eax, eax
008E7F6C: inc eax
008E7F6D: neg eax
008E7F6F: mov var_000000D8, ax
008E7F76: lea ecx, var_30
008E7F79: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E7F7E: lea ecx, var_48
008E7F81: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E7F86: movsx eax, word ptr var_000000D8
008E7F8D: test eax, eax
008E7F8F: jz 008E808Ah
008E7F95: lea eax, var_28
008E7F98: push eax
008E7F99: mov eax, [ebp+08h]
008E7F9C: mov eax, [eax]
008E7F9E: push [ebp+08h]
008E7FA1: call [eax+000001C0h]
008E7FA7: fclex 
008E7FA9: mov var_000000D8, eax
008E7FAF: cmp var_000000D8, 00000000h
008E7FB6: jnl 8E7FD8h
008E7FB8: push 000001C0h
008E7FBD: push 00448930h
008E7FC2: push [ebp+08h]
008E7FC5: push var_000000D8
008E7FCB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E7FD0: mov var_00000168, eax
008E7FD6: jmp 8E7FDFh
008E7FD8: and var_00000168, 00000000h
008E7FDF: push var_28
008E7FE2: call 004109DCh ; Val(arg_1)
008E7FE7: fstp real8 ptr var_000000D4
008E7FED: push 00000000h
008E7FEF: push 00000000h
008E7FF1: push 00000001h
008E7FF3: push 00000000h
008E7FF5: lea eax, var_0000008C
008E7FFB: push eax
008E7FFC: push 00000010h
008E7FFE: push 00000880h
008E8003: call 00410946h ; ReDim
008E8008: add esp, 0000001Ch
008E800B: mov eax, [ebp+08h]
008E800E: mov eax, [eax]
008E8010: push [ebp+08h]
008E8013: call [eax+00000300h]
008E8019: mov var_40, eax
008E801C: mov var_48, 00000009h
008E8023: lea esi, var_48
008E8026: push 00000000h
008E8028: push var_0000008C
008E802E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E8033: mov ecx, eax
008E8035: mov edx, esi
008E8037: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E803C: mov edx, 0043DB28h ; x137
008E8041: lea ecx, var_2C
008E8044: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E8049: lea eax, var_0000008C
008E804F: push eax
008E8050: lea eax, var_2C
008E8053: push eax
008E8054: fld real8 ptr var_000000D4
008E805A: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E805F: push eax
008E8060: call 007A6910h
008E8065: lea eax, var_0000008C
008E806B: push eax
008E806C: push 00000000h
008E806E: call 00410934h ; Erase
008E8073: lea eax, var_2C
008E8076: push eax
008E8077: lea eax, var_28
008E807A: push eax
008E807B: push 00000002h
008E807D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E8082: add esp, 0000000Ch
008E8085: jmp 008E81ABh
008E808A: lea eax, var_28
008E808D: push eax
008E808E: mov eax, [ebp+08h]
008E8091: mov eax, [eax]
008E8093: push [ebp+08h]
008E8096: call [eax+000001C0h]
008E809C: fclex 
008E809E: mov var_000000D8, eax
008E80A4: cmp var_000000D8, 00000000h
008E80AB: jnl 8E80CDh
008E80AD: push 000001C0h
008E80B2: push 00448930h
008E80B7: push [ebp+08h]
008E80BA: push var_000000D8
008E80C0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E80C5: mov var_0000016C, eax
008E80CB: jmp 8E80D4h
008E80CD: and var_0000016C, 00000000h
008E80D4: push var_28
008E80D7: call 004109DCh ; Val(arg_1)
008E80DC: fstp real8 ptr var_000000D4
008E80E2: push 00000000h
008E80E4: push 00000001h
008E80E6: push 00000001h
008E80E8: push 00000000h
008E80EA: lea eax, var_0000008C
008E80F0: push eax
008E80F1: push 00000010h
008E80F3: push 00000880h
008E80F8: call 00410946h ; ReDim
008E80FD: add esp, 0000001Ch
008E8100: mov eax, [ebp+08h]
008E8103: mov eax, [eax]
008E8105: push [ebp+08h]
008E8108: call [eax+00000304h]
008E810E: mov var_40, eax
008E8111: mov var_48, 00000009h
008E8118: lea esi, var_48
008E811B: push 00000000h
008E811D: push var_0000008C
008E8123: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E8128: mov ecx, eax
008E812A: mov edx, esi
008E812C: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E8131: mov eax, [ebp+08h]
008E8134: mov eax, [eax]
008E8136: push [ebp+08h]
008E8139: call [eax+00000300h]
008E813F: mov var_50, eax
008E8142: mov var_58, 00000009h
008E8149: lea esi, var_58
008E814C: push 00000001h
008E814E: push var_0000008C
008E8154: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E8159: mov ecx, eax
008E815B: mov edx, esi
008E815D: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E8162: mov edx, 0043DB10h ; x136
008E8167: lea ecx, var_2C
008E816A: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E816F: lea eax, var_0000008C
008E8175: push eax
008E8176: lea eax, var_2C
008E8179: push eax
008E817A: fld real8 ptr var_000000D4
008E8180: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E8185: push eax
008E8186: call 007A6910h
008E818B: lea eax, var_0000008C
008E8191: push eax
008E8192: push 00000000h
008E8194: call 00410934h ; Erase
008E8199: lea eax, var_2C
008E819C: push eax
008E819D: lea eax, var_28
008E81A0: push eax
008E81A1: push 00000002h
008E81A3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E81A8: add esp, 0000000Ch
008E81AB: mov var_04, 00000000h
008E81B2: wait 
008E81B3: push 008E8241h
008E81B8: jmp 8E8212h
008E81BA: lea eax, var_2C
008E81BD: push eax
008E81BE: lea eax, var_28
008E81C1: push eax
008E81C2: push 00000002h
008E81C4: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E81C9: add esp, 0000000Ch
008E81CC: lea eax, var_38
008E81CF: push eax
008E81D0: lea eax, var_34
008E81D3: push eax
008E81D4: lea eax, var_30
008E81D7: push eax
008E81D8: push 00000003h
008E81DA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E81DF: add esp, 00000010h
008E81E2: lea eax, var_00000088
008E81E8: push eax
008E81E9: lea eax, var_78
008E81EC: push eax
008E81ED: lea eax, var_68
008E81F0: push eax
008E81F1: lea eax, var_58
008E81F4: push eax
008E81F5: lea eax, var_48
008E81F8: push eax
008E81F9: push 00000005h
008E81FB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E8200: add esp, 00000018h
008E8203: lea eax, var_0000008C
008E8209: push eax
008E820A: push 00000000h
008E820C: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008E8211: ret 
End Sub

Private sub cmdBlockContact__8E4E1B
008E4E1B: push ebp
008E4E1C: mov ebp, esp
008E4E1E: sub esp, 0000000Ch
008E4E21: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E4E26: mov eax, fs:[00h]
008E4E2C: push eax
008E4E2D: mov fs:[00000000h], esp
008E4E34: mov eax, 00000134h
008E4E39: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E4E3E: push ebx
008E4E3F: push esi
008E4E40: push edi
008E4E41: mov var_0C, esp
008E4E44: mov var_08, 00410488h
008E4E4B: mov eax, [ebp+08h]
008E4E4E: and eax, 00000001h
008E4E51: mov var_04, eax
008E4E54: mov eax, [ebp+08h]
008E4E57: and al, FEh
008E4E59: mov [ebp+08h], eax
008E4E5C: mov eax, [ebp+08h]
008E4E5F: mov eax, [eax]
008E4E61: push [ebp+08h]
008E4E64: call [eax+04h]
008E4E67: mov eax, [ebp+08h]
008E4E6A: mov eax, [eax]
008E4E6C: push [ebp+08h]
008E4E6F: call [eax+00000304h]
008E4E75: push eax
008E4E76: lea eax, var_30
008E4E79: push eax
008E4E7A: call 00410A84h ; Set (object)
008E4E7F: mov var_000000C8, eax
008E4E85: lea eax, var_28
008E4E88: push eax
008E4E89: mov eax, var_000000C8
008E4E8F: mov eax, [eax]
008E4E91: push var_000000C8
008E4E97: call [eax+000000A0h]
008E4E9D: fclex 
008E4E9F: mov var_000000CC, eax
008E4EA5: cmp var_000000CC, 00000000h
008E4EAC: jnl 8E4ED1h
008E4EAE: push 000000A0h
008E4EB3: push 00440E08h
008E4EB8: push var_000000C8
008E4EBE: push var_000000CC
008E4EC4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E4EC9: mov var_00000124, eax
008E4ECF: jmp 8E4ED8h
008E4ED1: and var_00000124, 00000000h
008E4ED8: push var_28
008E4EDB: call 0041098Eh ; Len(arg_1)
008E4EE0: xor ecx, ecx
008E4EE2: cmp eax, 00000003h
008E4EE5: setle cl
008E4EE8: neg ecx
008E4EEA: mov var_000000D0, cx
008E4EF1: lea ecx, var_28
008E4EF4: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008E4EF9: lea ecx, var_30
008E4EFC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E4F01: movsx eax, word ptr var_000000D0
008E4F08: test eax, eax
008E4F0A: jz 008E4F92h
008E4F10: mov var_70, 80020004h
008E4F17: mov var_78, 0000000Ah
008E4F1E: mov var_60, 80020004h
008E4F25: mov var_68, 0000000Ah
008E4F2C: mov var_50, 80020004h
008E4F33: mov var_58, 0000000Ah
008E4F3A: mov var_00000084, 00459330h ; Invalid email
008E4F44: mov var_0000008C, 00000008h
008E4F4E: lea edx, var_0000008C
008E4F54: lea ecx, var_48
008E4F57: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008E4F5C: lea eax, var_78
008E4F5F: push eax
008E4F60: lea eax, var_68
008E4F63: push eax
008E4F64: lea eax, var_58
008E4F67: push eax
008E4F68: push 00000010h
008E4F6A: lea eax, var_48
008E4F6D: push eax
008E4F6E: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008E4F73: lea eax, var_78
008E4F76: push eax
008E4F77: lea eax, var_68
008E4F7A: push eax
008E4F7B: lea eax, var_58
008E4F7E: push eax
008E4F7F: lea eax, var_48
008E4F82: push eax
008E4F83: push 00000004h
008E4F85: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E4F8A: add esp, 00000014h
008E4F8D: jmp 008E5B9Eh
008E4F92: mov eax, [ebp+08h]
008E4F95: mov eax, [eax]
008E4F97: push [ebp+08h]
008E4F9A: call [eax+00000304h]
008E4FA0: push eax
008E4FA1: lea eax, var_30
008E4FA4: push eax
008E4FA5: call 00410A84h ; Set (object)
008E4FAA: mov var_000000C8, eax
008E4FB0: lea eax, var_28
008E4FB3: push eax
008E4FB4: mov eax, var_000000C8
008E4FBA: mov eax, [eax]
008E4FBC: push var_000000C8
008E4FC2: call [eax+000000A0h]
008E4FC8: fclex 
008E4FCA: mov var_000000CC, eax
008E4FD0: cmp var_000000CC, 00000000h
008E4FD7: jnl 8E4FFCh
008E4FD9: push 000000A0h
008E4FDE: push 00440E08h
008E4FE3: push var_000000C8
008E4FE9: push var_000000CC
008E4FEF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E4FF4: mov var_00000128, eax
008E4FFA: jmp 8E5003h
008E4FFC: and var_00000128, 00000000h
008E5003: mov var_70, 80020004h
008E500A: mov var_78, 0000000Ah
008E5011: mov var_60, 80020004h
008E5018: mov var_68, 0000000Ah
008E501F: mov var_50, 80020004h
008E5026: mov var_58, 0000000Ah
008E502D: push 00459350h ; Do you really want to block:
008E5032: push var_28
008E5035: call 00410A18h ; &
008E503A: mov edx, eax
008E503C: lea ecx, var_2C
008E503F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E5044: push eax
008E5045: push 00459390h
008E504A: call 00410A18h ; &
008E504F: mov var_40, eax
008E5052: mov var_48, 00000008h
008E5059: lea eax, var_78
008E505C: push eax
008E505D: lea eax, var_68
008E5060: push eax
008E5061: lea eax, var_58
008E5064: push eax
008E5065: push 00000034h
008E5067: lea eax, var_48
008E506A: push eax
008E506B: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008E5070: sub eax, 00000007h
008E5073: neg eax
008E5075: sbb eax, eax
008E5077: inc eax
008E5078: neg eax
008E507A: mov var_000000D0, ax
008E5081: lea eax, var_2C
008E5084: push eax
008E5085: lea eax, var_28
008E5088: push eax
008E5089: push 00000002h
008E508B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E5090: add esp, 0000000Ch
008E5093: lea ecx, var_30
008E5096: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E509B: lea eax, var_78
008E509E: push eax
008E509F: lea eax, var_68
008E50A2: push eax
008E50A3: lea eax, var_58
008E50A6: push eax
008E50A7: lea eax, var_48
008E50AA: push eax
008E50AB: push 00000004h
008E50AD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E50B2: add esp, 00000014h
008E50B5: movsx eax, word ptr var_000000D0
008E50BC: test eax, eax
008E50BE: jz 8E50C5h
008E50C0: jmp 008E5B9Eh
008E50C5: cmp word ptr [008F2430h], FFFFh
008E50CD: jnz 008E563Bh
008E50D3: push 00000000h
008E50D5: push 00000000h
008E50D7: mov eax, [ebp+08h]
008E50DA: mov eax, [eax]
008E50DC: push [ebp+08h]
008E50DF: call [eax+0000033Ch]
008E50E5: push eax
008E50E6: lea eax, var_30
008E50E9: push eax
008E50EA: call 00410A84h ; Set (object)
008E50EF: push eax
008E50F0: lea eax, var_48
008E50F3: push eax
008E50F4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E50F9: add esp, 00000010h
008E50FC: push eax
008E50FD: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E5102: dec eax
008E5103: neg eax
008E5105: sbb eax, eax
008E5107: inc eax
008E5108: neg eax
008E510A: mov var_000000C8, ax
008E5111: lea ecx, var_30
008E5114: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E5119: lea ecx, var_48
008E511C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E5121: movsx eax, word ptr var_000000C8
008E5128: test eax, eax
008E512A: jz 008E5552h
008E5130: mov var_00000084, 00000001h
008E513A: mov var_0000008C, 00000002h
008E5144: cmp [008F2010h], 00000000h
008E514B: jnz 8E5168h
008E514D: push 008F2010h
008E5152: push 00433984h
008E5157: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E515C: mov var_0000012C, 008F2010h
008E5166: jmp 8E5172h
008E5168: mov var_0000012C, 008F2010h
008E5172: push 00000000h
008E5174: push 00000001h
008E5176: push 00440E48h
008E517B: push 00000000h
008E517D: push 00000018h
008E517F: mov eax, var_0000012C
008E5185: mov eax, [eax]
008E5187: mov ecx, var_0000012C
008E518D: mov ecx, [ecx]
008E518F: mov ecx, [ecx]
008E5191: push eax
008E5192: call [ecx+0000054Ch]
008E5198: push eax
008E5199: lea eax, var_30
008E519C: push eax
008E519D: call 00410A84h ; Set (object)
008E51A2: push eax
008E51A3: lea eax, var_48
008E51A6: push eax
008E51A7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E51AC: add esp, 00000010h
008E51AF: push eax
008E51B0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E51B5: push eax
008E51B6: lea eax, var_34
008E51B9: push eax
008E51BA: call 00410A84h ; Set (object)
008E51BF: push eax
008E51C0: lea eax, var_58
008E51C3: push eax
008E51C4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E51C9: add esp, 00000010h
008E51CC: push eax
008E51CD: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E51D2: mov var_00000094, eax
008E51D8: mov var_0000009C, 00000003h
008E51E2: mov var_000000A4, 00000001h
008E51EC: mov var_000000AC, 00000002h
008E51F6: lea eax, var_0000008C
008E51FC: push eax
008E51FD: lea eax, var_0000009C
008E5203: push eax
008E5204: lea eax, var_000000AC
008E520A: push eax
008E520B: lea eax, var_000000F0
008E5211: push eax
008E5212: lea eax, var_000000E0
008E5218: push eax
008E5219: lea eax, var_24
008E521C: push eax
008E521D: call 00410A3Ch ; For
008E5222: mov var_0000011C, eax
008E5228: lea eax, var_34
008E522B: push eax
008E522C: lea eax, var_30
008E522F: push eax
008E5230: push 00000002h
008E5232: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E5237: add esp, 0000000Ch
008E523A: lea eax, var_58
008E523D: push eax
008E523E: lea eax, var_48
008E5241: push eax
008E5242: push 00000002h
008E5244: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E5249: add esp, 0000000Ch
008E524C: jmp 008E5540h
008E5251: lea eax, var_24
008E5254: mov var_00000084, eax
008E525A: mov var_0000008C, 0000400Ch
008E5264: cmp [008F2010h], 00000000h
008E526B: jnz 8E5288h
008E526D: push 008F2010h
008E5272: push 00433984h
008E5277: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E527C: mov var_00000130, 008F2010h
008E5286: jmp 8E5292h
008E5288: mov var_00000130, 008F2010h
008E5292: push 00000000h
008E5294: push 00000004h
008E5296: push 00440E58h
008E529B: push 00000010h
008E529D: pop eax
008E529E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E52A3: lea esi, var_0000008C
008E52A9: mov edi, esp
008E52AB: movsd 
008E52AC: movsd 
008E52AD: movsd 
008E52AE: movsd 
008E52AF: push 00000001h
008E52B1: push 00000000h
008E52B3: push 00440E48h
008E52B8: push 00000000h
008E52BA: push 00000018h
008E52BC: mov eax, var_00000130
008E52C2: mov eax, [eax]
008E52C4: mov ecx, var_00000130
008E52CA: mov ecx, [ecx]
008E52CC: mov ecx, [ecx]
008E52CE: push eax
008E52CF: call [ecx+0000054Ch]
008E52D5: push eax
008E52D6: lea eax, var_30
008E52D9: push eax
008E52DA: call 00410A84h ; Set (object)
008E52DF: push eax
008E52E0: lea eax, var_48
008E52E3: push eax
008E52E4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E52E9: add esp, 00000010h
008E52EC: push eax
008E52ED: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E52F2: push eax
008E52F3: lea eax, var_34
008E52F6: push eax
008E52F7: call 00410A84h ; Set (object)
008E52FC: push eax
008E52FD: lea eax, var_58
008E5300: push eax
008E5301: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E5306: add esp, 00000020h
008E5309: push eax
008E530A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E530F: push eax
008E5310: lea eax, var_38
008E5313: push eax
008E5314: call 00410A84h ; Set (object)
008E5319: push eax
008E531A: lea eax, var_68
008E531D: push eax
008E531E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E5323: add esp, 00000010h
008E5326: push eax
008E5327: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008E532C: sub ax, FFFFh
008E5330: neg ax
008E5333: sbb eax, eax
008E5335: inc eax
008E5336: neg eax
008E5338: mov var_000000C8, ax
008E533F: lea eax, var_38
008E5342: push eax
008E5343: lea eax, var_34
008E5346: push eax
008E5347: lea eax, var_30
008E534A: push eax
008E534B: push 00000003h
008E534D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E5352: add esp, 00000010h
008E5355: lea eax, var_68
008E5358: push eax
008E5359: lea eax, var_58
008E535C: push eax
008E535D: lea eax, var_48
008E5360: push eax
008E5361: push 00000003h
008E5363: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E5368: add esp, 00000010h
008E536B: movsx eax, word ptr var_000000C8
008E5372: test eax, eax
008E5374: jz 008E5523h
008E537A: lea eax, var_24
008E537D: mov var_00000084, eax
008E5383: mov var_0000008C, 0000400Ch
008E538D: cmp [008F2010h], 00000000h
008E5394: jnz 8E53B1h
008E5396: push 008F2010h
008E539B: push 00433984h
008E53A0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E53A5: mov var_00000134, 008F2010h
008E53AF: jmp 8E53BBh
008E53B1: mov var_00000134, 008F2010h
008E53BB: push 00000000h
008E53BD: push 00000014h
008E53BF: push 00440E58h
008E53C4: push 00000010h
008E53C6: pop eax
008E53C7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E53CC: lea esi, var_0000008C
008E53D2: mov edi, esp
008E53D4: movsd 
008E53D5: movsd 
008E53D6: movsd 
008E53D7: movsd 
008E53D8: push 00000001h
008E53DA: push 00000000h
008E53DC: push 00440E48h
008E53E1: push 00000000h
008E53E3: push 00000018h
008E53E5: mov eax, var_00000134
008E53EB: mov eax, [eax]
008E53ED: mov ecx, var_00000134
008E53F3: mov ecx, [ecx]
008E53F5: mov ecx, [ecx]
008E53F7: push eax
008E53F8: call [ecx+0000054Ch]
008E53FE: push eax
008E53FF: lea eax, var_30
008E5402: push eax
008E5403: call 00410A84h ; Set (object)
008E5408: push eax
008E5409: lea eax, var_48
008E540C: push eax
008E540D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E5412: add esp, 00000010h
008E5415: push eax
008E5416: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E541B: push eax
008E541C: lea eax, var_34
008E541F: push eax
008E5420: call 00410A84h ; Set (object)
008E5425: push eax
008E5426: lea eax, var_58
008E5429: push eax
008E542A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E542F: add esp, 00000020h
008E5432: push eax
008E5433: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E5438: push eax
008E5439: lea eax, var_38
008E543C: push eax
008E543D: call 00410A84h ; Set (object)
008E5442: push eax
008E5443: lea eax, var_68
008E5446: push eax
008E5447: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E544C: add esp, 00000010h
008E544F: push eax
008E5450: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E5455: mov edx, eax
008E5457: lea ecx, var_28
008E545A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E545F: push eax
008E5460: call 004109DCh ; Val(arg_1)
008E5465: fstp real8 ptr var_000000C4
008E546B: push 00000000h
008E546D: push 00000000h
008E546F: push 00000001h
008E5471: push 00000000h
008E5473: lea eax, var_7C
008E5476: push eax
008E5477: push 00000010h
008E5479: push 00000880h
008E547E: call 00410946h ; ReDim
008E5483: add esp, 0000001Ch
008E5486: mov eax, [ebp+08h]
008E5489: mov eax, [eax]
008E548B: push [ebp+08h]
008E548E: call [eax+00000304h]
008E5494: mov var_70, eax
008E5497: mov var_78, 00000009h
008E549E: lea esi, var_78
008E54A1: push 00000000h
008E54A3: push var_7C
008E54A6: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E54AB: mov ecx, eax
008E54AD: mov edx, esi
008E54AF: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E54B4: mov edx, 0043DB48h ; x139
008E54B9: lea ecx, var_2C
008E54BC: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E54C1: lea eax, var_7C
008E54C4: push eax
008E54C5: lea eax, var_2C
008E54C8: push eax
008E54C9: fld real8 ptr var_000000C4
008E54CF: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E54D4: push eax
008E54D5: call 007A6910h
008E54DA: lea eax, var_7C
008E54DD: push eax
008E54DE: push 00000000h
008E54E0: call 00410934h ; Erase
008E54E5: lea eax, var_2C
008E54E8: push eax
008E54E9: lea eax, var_28
008E54EC: push eax
008E54ED: push 00000002h
008E54EF: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E54F4: add esp, 0000000Ch
008E54F7: lea eax, var_38
008E54FA: push eax
008E54FB: lea eax, var_34
008E54FE: push eax
008E54FF: lea eax, var_30
008E5502: push eax
008E5503: push 00000003h
008E5505: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E550A: add esp, 00000010h
008E550D: lea eax, var_68
008E5510: push eax
008E5511: lea eax, var_58
008E5514: push eax
008E5515: lea eax, var_48
008E5518: push eax
008E5519: push 00000003h
008E551B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E5520: add esp, 00000010h
008E5523: lea eax, var_000000F0
008E5529: push eax
008E552A: lea eax, var_000000E0
008E5530: push eax
008E5531: lea eax, var_24
008E5534: push eax
008E5535: call 00410A36h ; Next
008E553A: mov var_0000011C, eax
008E5540: cmp var_0000011C, 00000000h
008E5547: jnz 008E5251h
008E554D: jmp 008E5636h
008E5552: lea eax, var_28
008E5555: push eax
008E5556: mov eax, [ebp+08h]
008E5559: mov eax, [eax]
008E555B: push [ebp+08h]
008E555E: call [eax+000001C0h]
008E5564: fclex 
008E5566: mov var_000000C8, eax
008E556C: cmp var_000000C8, 00000000h
008E5573: jnl 8E5595h
008E5575: push 000001C0h
008E557A: push 00448930h
008E557F: push [ebp+08h]
008E5582: push var_000000C8
008E5588: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E558D: mov var_00000138, eax
008E5593: jmp 8E559Ch
008E5595: and var_00000138, 00000000h
008E559C: push var_28
008E559F: call 004109DCh ; Val(arg_1)
008E55A4: fstp real8 ptr var_000000C4
008E55AA: push 00000000h
008E55AC: push 00000000h
008E55AE: push 00000001h
008E55B0: push 00000000h
008E55B2: lea eax, var_7C
008E55B5: push eax
008E55B6: push 00000010h
008E55B8: push 00000880h
008E55BD: call 00410946h ; ReDim
008E55C2: add esp, 0000001Ch
008E55C5: mov eax, [ebp+08h]
008E55C8: mov eax, [eax]
008E55CA: push [ebp+08h]
008E55CD: call [eax+00000304h]
008E55D3: mov var_40, eax
008E55D6: mov var_48, 00000009h
008E55DD: lea esi, var_48
008E55E0: push 00000000h
008E55E2: push var_7C
008E55E5: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E55EA: mov ecx, eax
008E55EC: mov edx, esi
008E55EE: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E55F3: mov edx, 0043DB48h ; x139
008E55F8: lea ecx, var_2C
008E55FB: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E5600: lea eax, var_7C
008E5603: push eax
008E5604: lea eax, var_2C
008E5607: push eax
008E5608: fld real8 ptr var_000000C4
008E560E: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E5613: push eax
008E5614: call 007A6910h
008E5619: lea eax, var_7C
008E561C: push eax
008E561D: push 00000000h
008E561F: call 00410934h ; Erase
008E5624: lea eax, var_2C
008E5627: push eax
008E5628: lea eax, var_28
008E562B: push eax
008E562C: push 00000002h
008E562E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E5633: add esp, 0000000Ch
008E5636: jmp 008E5B9Eh
008E563B: push 00000000h
008E563D: push 00000000h
008E563F: mov eax, [ebp+08h]
008E5642: mov eax, [eax]
008E5644: push [ebp+08h]
008E5647: call [eax+0000033Ch]
008E564D: push eax
008E564E: lea eax, var_30
008E5651: push eax
008E5652: call 00410A84h ; Set (object)
008E5657: push eax
008E5658: lea eax, var_48
008E565B: push eax
008E565C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E5661: add esp, 00000010h
008E5664: push eax
008E5665: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E566A: dec eax
008E566B: neg eax
008E566D: sbb eax, eax
008E566F: inc eax
008E5670: neg eax
008E5672: mov var_000000C8, ax
008E5679: lea ecx, var_30
008E567C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E5681: lea ecx, var_48
008E5684: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E5689: movsx eax, word ptr var_000000C8
008E5690: test eax, eax
008E5692: jz 008E5ABAh
008E5698: mov var_00000084, 00000001h
008E56A2: mov var_0000008C, 00000002h
008E56AC: cmp [008F2010h], 00000000h
008E56B3: jnz 8E56D0h
008E56B5: push 008F2010h
008E56BA: push 00433984h
008E56BF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E56C4: mov var_0000013C, 008F2010h
008E56CE: jmp 8E56DAh
008E56D0: mov var_0000013C, 008F2010h
008E56DA: push 00000000h
008E56DC: push 00000001h
008E56DE: push 00440E48h
008E56E3: push 00000000h
008E56E5: push 00000018h
008E56E7: mov eax, var_0000013C
008E56ED: mov eax, [eax]
008E56EF: mov ecx, var_0000013C
008E56F5: mov ecx, [ecx]
008E56F7: mov ecx, [ecx]
008E56F9: push eax
008E56FA: call [ecx+00000550h]
008E5700: push eax
008E5701: lea eax, var_30
008E5704: push eax
008E5705: call 00410A84h ; Set (object)
008E570A: push eax
008E570B: lea eax, var_48
008E570E: push eax
008E570F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E5714: add esp, 00000010h
008E5717: push eax
008E5718: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E571D: push eax
008E571E: lea eax, var_34
008E5721: push eax
008E5722: call 00410A84h ; Set (object)
008E5727: push eax
008E5728: lea eax, var_58
008E572B: push eax
008E572C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E5731: add esp, 00000010h
008E5734: push eax
008E5735: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E573A: mov var_00000094, eax
008E5740: mov var_0000009C, 00000003h
008E574A: mov var_000000A4, 00000001h
008E5754: mov var_000000AC, 00000002h
008E575E: lea eax, var_0000008C
008E5764: push eax
008E5765: lea eax, var_0000009C
008E576B: push eax
008E576C: lea eax, var_000000AC
008E5772: push eax
008E5773: lea eax, var_00000110
008E5779: push eax
008E577A: lea eax, var_00000100
008E5780: push eax
008E5781: lea eax, var_24
008E5784: push eax
008E5785: call 00410A3Ch ; For
008E578A: mov var_00000120, eax
008E5790: lea eax, var_34
008E5793: push eax
008E5794: lea eax, var_30
008E5797: push eax
008E5798: push 00000002h
008E579A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E579F: add esp, 0000000Ch
008E57A2: lea eax, var_58
008E57A5: push eax
008E57A6: lea eax, var_48
008E57A9: push eax
008E57AA: push 00000002h
008E57AC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E57B1: add esp, 0000000Ch
008E57B4: jmp 008E5AA8h
008E57B9: lea eax, var_24
008E57BC: mov var_00000084, eax
008E57C2: mov var_0000008C, 0000400Ch
008E57CC: cmp [008F2010h], 00000000h
008E57D3: jnz 8E57F0h
008E57D5: push 008F2010h
008E57DA: push 00433984h
008E57DF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E57E4: mov var_00000140, 008F2010h
008E57EE: jmp 8E57FAh
008E57F0: mov var_00000140, 008F2010h
008E57FA: push 00000000h
008E57FC: push 00000004h
008E57FE: push 00440E58h
008E5803: push 00000010h
008E5805: pop eax
008E5806: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E580B: lea esi, var_0000008C
008E5811: mov edi, esp
008E5813: movsd 
008E5814: movsd 
008E5815: movsd 
008E5816: movsd 
008E5817: push 00000001h
008E5819: push 00000000h
008E581B: push 00440E48h
008E5820: push 00000000h
008E5822: push 00000018h
008E5824: mov eax, var_00000140
008E582A: mov eax, [eax]
008E582C: mov ecx, var_00000140
008E5832: mov ecx, [ecx]
008E5834: mov ecx, [ecx]
008E5836: push eax
008E5837: call [ecx+00000550h]
008E583D: push eax
008E583E: lea eax, var_30
008E5841: push eax
008E5842: call 00410A84h ; Set (object)
008E5847: push eax
008E5848: lea eax, var_48
008E584B: push eax
008E584C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E5851: add esp, 00000010h
008E5854: push eax
008E5855: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E585A: push eax
008E585B: lea eax, var_34
008E585E: push eax
008E585F: call 00410A84h ; Set (object)
008E5864: push eax
008E5865: lea eax, var_58
008E5868: push eax
008E5869: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E586E: add esp, 00000020h
008E5871: push eax
008E5872: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E5877: push eax
008E5878: lea eax, var_38
008E587B: push eax
008E587C: call 00410A84h ; Set (object)
008E5881: push eax
008E5882: lea eax, var_68
008E5885: push eax
008E5886: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E588B: add esp, 00000010h
008E588E: push eax
008E588F: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008E5894: sub ax, FFFFh
008E5898: neg ax
008E589B: sbb eax, eax
008E589D: inc eax
008E589E: neg eax
008E58A0: mov var_000000C8, ax
008E58A7: lea eax, var_38
008E58AA: push eax
008E58AB: lea eax, var_34
008E58AE: push eax
008E58AF: lea eax, var_30
008E58B2: push eax
008E58B3: push 00000003h
008E58B5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E58BA: add esp, 00000010h
008E58BD: lea eax, var_68
008E58C0: push eax
008E58C1: lea eax, var_58
008E58C4: push eax
008E58C5: lea eax, var_48
008E58C8: push eax
008E58C9: push 00000003h
008E58CB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E58D0: add esp, 00000010h
008E58D3: movsx eax, word ptr var_000000C8
008E58DA: test eax, eax
008E58DC: jz 008E5A8Bh
008E58E2: lea eax, var_24
008E58E5: mov var_00000084, eax
008E58EB: mov var_0000008C, 0000400Ch
008E58F5: cmp [008F2010h], 00000000h
008E58FC: jnz 8E5919h
008E58FE: push 008F2010h
008E5903: push 00433984h
008E5908: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E590D: mov var_00000144, 008F2010h
008E5917: jmp 8E5923h
008E5919: mov var_00000144, 008F2010h
008E5923: push 00000000h
008E5925: push 00000014h
008E5927: push 00440E58h
008E592C: push 00000010h
008E592E: pop eax
008E592F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E5934: lea esi, var_0000008C
008E593A: mov edi, esp
008E593C: movsd 
008E593D: movsd 
008E593E: movsd 
008E593F: movsd 
008E5940: push 00000001h
008E5942: push 00000000h
008E5944: push 00440E48h
008E5949: push 00000000h
008E594B: push 00000018h
008E594D: mov eax, var_00000144
008E5953: mov eax, [eax]
008E5955: mov ecx, var_00000144
008E595B: mov ecx, [ecx]
008E595D: mov ecx, [ecx]
008E595F: push eax
008E5960: call [ecx+00000550h]
008E5966: push eax
008E5967: lea eax, var_30
008E596A: push eax
008E596B: call 00410A84h ; Set (object)
008E5970: push eax
008E5971: lea eax, var_48
008E5974: push eax
008E5975: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E597A: add esp, 00000010h
008E597D: push eax
008E597E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E5983: push eax
008E5984: lea eax, var_34
008E5987: push eax
008E5988: call 00410A84h ; Set (object)
008E598D: push eax
008E598E: lea eax, var_58
008E5991: push eax
008E5992: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E5997: add esp, 00000020h
008E599A: push eax
008E599B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E59A0: push eax
008E59A1: lea eax, var_38
008E59A4: push eax
008E59A5: call 00410A84h ; Set (object)
008E59AA: push eax
008E59AB: lea eax, var_68
008E59AE: push eax
008E59AF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E59B4: add esp, 00000010h
008E59B7: push eax
008E59B8: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E59BD: mov edx, eax
008E59BF: lea ecx, var_28
008E59C2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E59C7: push eax
008E59C8: call 004109DCh ; Val(arg_1)
008E59CD: fstp real8 ptr var_000000C4
008E59D3: push 00000000h
008E59D5: push 00000000h
008E59D7: push 00000001h
008E59D9: push 00000000h
008E59DB: lea eax, var_7C
008E59DE: push eax
008E59DF: push 00000010h
008E59E1: push 00000880h
008E59E6: call 00410946h ; ReDim
008E59EB: add esp, 0000001Ch
008E59EE: mov eax, [ebp+08h]
008E59F1: mov eax, [eax]
008E59F3: push [ebp+08h]
008E59F6: call [eax+00000304h]
008E59FC: mov var_70, eax
008E59FF: mov var_78, 00000009h
008E5A06: lea esi, var_78
008E5A09: push 00000000h
008E5A0B: push var_7C
008E5A0E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E5A13: mov ecx, eax
008E5A15: mov edx, esi
008E5A17: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E5A1C: mov edx, 0043DB48h ; x139
008E5A21: lea ecx, var_2C
008E5A24: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E5A29: lea eax, var_7C
008E5A2C: push eax
008E5A2D: lea eax, var_2C
008E5A30: push eax
008E5A31: fld real8 ptr var_000000C4
008E5A37: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E5A3C: push eax
008E5A3D: call 007A6910h
008E5A42: lea eax, var_7C
008E5A45: push eax
008E5A46: push 00000000h
008E5A48: call 00410934h ; Erase
008E5A4D: lea eax, var_2C
008E5A50: push eax
008E5A51: lea eax, var_28
008E5A54: push eax
008E5A55: push 00000002h
008E5A57: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E5A5C: add esp, 0000000Ch
008E5A5F: lea eax, var_38
008E5A62: push eax
008E5A63: lea eax, var_34
008E5A66: push eax
008E5A67: lea eax, var_30
008E5A6A: push eax
008E5A6B: push 00000003h
008E5A6D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E5A72: add esp, 00000010h
008E5A75: lea eax, var_68
008E5A78: push eax
008E5A79: lea eax, var_58
008E5A7C: push eax
008E5A7D: lea eax, var_48
008E5A80: push eax
008E5A81: push 00000003h
008E5A83: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E5A88: add esp, 00000010h
008E5A8B: lea eax, var_00000110
008E5A91: push eax
008E5A92: lea eax, var_00000100
008E5A98: push eax
008E5A99: lea eax, var_24
008E5A9C: push eax
008E5A9D: call 00410A36h ; Next
008E5AA2: mov var_00000120, eax
008E5AA8: cmp var_00000120, 00000000h
008E5AAF: jnz 008E57B9h
008E5AB5: jmp 008E5B9Eh
008E5ABA: lea eax, var_28
008E5ABD: push eax
008E5ABE: mov eax, [ebp+08h]
008E5AC1: mov eax, [eax]
008E5AC3: push [ebp+08h]
008E5AC6: call [eax+000001C0h]
008E5ACC: fclex 
008E5ACE: mov var_000000C8, eax
008E5AD4: cmp var_000000C8, 00000000h
008E5ADB: jnl 8E5AFDh
008E5ADD: push 000001C0h
008E5AE2: push 00448930h
008E5AE7: push [ebp+08h]
008E5AEA: push var_000000C8
008E5AF0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E5AF5: mov var_00000148, eax
008E5AFB: jmp 8E5B04h
008E5AFD: and var_00000148, 00000000h
008E5B04: push var_28
008E5B07: call 004109DCh ; Val(arg_1)
008E5B0C: fstp real8 ptr var_000000C4
008E5B12: push 00000000h
008E5B14: push 00000000h
008E5B16: push 00000001h
008E5B18: push 00000000h
008E5B1A: lea eax, var_7C
008E5B1D: push eax
008E5B1E: push 00000010h
008E5B20: push 00000880h
008E5B25: call 00410946h ; ReDim
008E5B2A: add esp, 0000001Ch
008E5B2D: mov eax, [ebp+08h]
008E5B30: mov eax, [eax]
008E5B32: push [ebp+08h]
008E5B35: call [eax+00000304h]
008E5B3B: mov var_40, eax
008E5B3E: mov var_48, 00000009h
008E5B45: lea esi, var_48
008E5B48: push 00000000h
008E5B4A: push var_7C
008E5B4D: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E5B52: mov ecx, eax
008E5B54: mov edx, esi
008E5B56: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E5B5B: mov edx, 0043DB48h ; x139
008E5B60: lea ecx, var_2C
008E5B63: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E5B68: lea eax, var_7C
008E5B6B: push eax
008E5B6C: lea eax, var_2C
008E5B6F: push eax
008E5B70: fld real8 ptr var_000000C4
008E5B76: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E5B7B: push eax
008E5B7C: call 007A6910h
008E5B81: lea eax, var_7C
008E5B84: push eax
008E5B85: push 00000000h
008E5B87: call 00410934h ; Erase
008E5B8C: lea eax, var_2C
008E5B8F: push eax
008E5B90: lea eax, var_28
008E5B93: push eax
008E5B94: push 00000002h
008E5B96: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E5B9B: add esp, 0000000Ch
008E5B9E: mov var_04, 00000000h
008E5BA5: wait 
008E5BA6: push 008E5C2Ah
008E5BAB: jmp 8E5BFBh
008E5BAD: lea eax, var_2C
008E5BB0: push eax
008E5BB1: lea eax, var_28
008E5BB4: push eax
008E5BB5: push 00000002h
008E5BB7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E5BBC: add esp, 0000000Ch
008E5BBF: lea eax, var_38
008E5BC2: push eax
008E5BC3: lea eax, var_34
008E5BC6: push eax
008E5BC7: lea eax, var_30
008E5BCA: push eax
008E5BCB: push 00000003h
008E5BCD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E5BD2: add esp, 00000010h
008E5BD5: lea eax, var_78
008E5BD8: push eax
008E5BD9: lea eax, var_68
008E5BDC: push eax
008E5BDD: lea eax, var_58
008E5BE0: push eax
008E5BE1: lea eax, var_48
008E5BE4: push eax
008E5BE5: push 00000004h
008E5BE7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E5BEC: add esp, 00000014h
008E5BEF: lea eax, var_7C
008E5BF2: push eax
008E5BF3: push 00000000h
008E5BF5: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008E5BFA: ret 
End Sub

Private sub mnuSkypeSave__8EEE54
008EEE54: push ebp
008EEE55: mov ebp, esp
008EEE57: sub esp, 00000018h
008EEE5A: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008EEE5F: mov eax, fs:[00h]
008EEE65: push eax
008EEE66: mov fs:[00000000h], esp
008EEE6D: mov eax, 00000180h
008EEE72: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EEE77: push ebx
008EEE78: push esi
008EEE79: push edi
008EEE7A: mov var_18, esp
008EEE7D: mov var_14, 00410600h
008EEE84: mov eax, [ebp+08h]
008EEE87: and eax, 00000001h
008EEE8A: mov var_10, eax
008EEE8D: mov eax, [ebp+08h]
008EEE90: and al, FEh
008EEE92: mov [ebp+08h], eax
008EEE95: mov var_0C, 00000000h
008EEE9C: mov eax, [ebp+08h]
008EEE9F: mov eax, [eax]
008EEEA1: push [ebp+08h]
008EEEA4: call [eax+04h]
008EEEA7: mov var_04, 00000001h
008EEEAE: mov var_04, 00000002h
008EEEB5: push FFFFFFFFh
008EEEB7: call 00410A60h ; On Error ...
008EEEBC: mov var_04, 00000003h
008EEEC3: mov eax, [ebp+0Ch]
008EEEC6: mov ax, [eax]
008EEEC9: mov var_00000168, ax
008EEED0: movsx eax, word ptr var_00000168
008EEED7: mov var_00000188, eax
008EEEDD: cmp var_00000188, 00000000h
008EEEE4: jz 8EEEFDh
008EEEE6: cmp var_00000188, 00000001h
008EEEED: jz 008EF458h
008EEEF3: jmp 008EF8A6h
008EEEF8: jmp 008EF8A6h
008EEEFD: mov var_04, 00000005h
008EEF04: cmp [008F529Ch], 00000000h
008EEF0B: jnz 8EEF28h
008EEF0D: push 008F529Ch
008EEF12: push 00440F2Ch
008EEF17: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EEF1C: mov var_0000018C, 008F529Ch
008EEF26: jmp 8EEF32h
008EEF28: mov var_0000018C, 008F529Ch
008EEF32: mov eax, var_0000018C
008EEF38: mov eax, [eax]
008EEF3A: mov var_00000118, eax
008EEF40: lea eax, var_60
008EEF43: push eax
008EEF44: mov eax, var_00000118
008EEF4A: mov eax, [eax]
008EEF4C: push var_00000118
008EEF52: call [eax+14h]
008EEF55: fclex 
008EEF57: mov var_0000011C, eax
008EEF5D: cmp var_0000011C, 00000000h
008EEF64: jnl 8EEF86h
008EEF66: push 00000014h
008EEF68: push 00440F1Ch
008EEF6D: push var_00000118
008EEF73: push var_0000011C
008EEF79: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008EEF7E: mov var_00000190, eax
008EEF84: jmp 8EEF8Dh
008EEF86: and var_00000190, 00000000h
008EEF8D: mov eax, var_60
008EEF90: mov var_00000120, eax
008EEF96: lea eax, var_4C
008EEF99: push eax
008EEF9A: mov eax, var_00000120
008EEFA0: mov eax, [eax]
008EEFA2: push var_00000120
008EEFA8: call [eax+50h]
008EEFAB: fclex 
008EEFAD: mov var_00000124, eax
008EEFB3: cmp var_00000124, 00000000h
008EEFBA: jnl 8EEFDCh
008EEFBC: push 00000050h
008EEFBE: push 00440F3Ch
008EEFC3: push var_00000120
008EEFC9: push var_00000124
008EEFCF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008EEFD4: mov var_00000194, eax
008EEFDA: jmp 8EEFE3h
008EEFDC: and var_00000194, 00000000h
008EEFE3: push 00000000h
008EEFE5: push 00000000h
008EEFE7: push var_4C
008EEFEA: push 0044558Ch ; txt
008EEFEF: push 00452FD0h ; Text Documents
008EEFF4: call 007CCC4Dh
008EEFF9: mov edx, eax
008EEFFB: lea ecx, var_48
008EEFFE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EF003: lea ecx, var_4C
008EF006: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008EF00B: lea ecx, var_60
008EF00E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008EF013: mov var_04, 00000006h
008EF01A: push var_48
008EF01D: push 00000000h
008EF01F: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008EF024: test eax, eax
008EF026: jz 008EF453h
008EF02C: mov var_04, 00000007h
008EF033: mov var_000000DC, 00000001h
008EF03D: mov var_000000E4, 00000002h
008EF047: push 00000000h
008EF049: push 00000001h
008EF04B: push 00440E48h
008EF050: push 00000000h
008EF052: push 00000018h
008EF054: mov eax, [ebp+08h]
008EF057: mov eax, [eax]
008EF059: push [ebp+08h]
008EF05C: call [eax+00000328h]
008EF062: push eax
008EF063: lea eax, var_60
008EF066: push eax
008EF067: call 00410A84h ; Set (object)
008EF06C: push eax
008EF06D: lea eax, var_00000084
008EF073: push eax
008EF074: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EF079: add esp, 00000010h
008EF07C: push eax
008EF07D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EF082: push eax
008EF083: lea eax, var_64
008EF086: push eax
008EF087: call 00410A84h ; Set (object)
008EF08C: push eax
008EF08D: lea eax, var_00000094
008EF093: push eax
008EF094: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EF099: add esp, 00000010h
008EF09C: push eax
008EF09D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EF0A2: mov var_000000EC, eax
008EF0A8: mov var_000000F4, 00000003h
008EF0B2: mov var_000000FC, 00000001h
008EF0BC: mov var_00000104, 00000002h
008EF0C6: lea eax, var_000000E4
008EF0CC: push eax
008EF0CD: lea eax, var_000000F4
008EF0D3: push eax
008EF0D4: lea eax, var_00000104
008EF0DA: push eax
008EF0DB: lea eax, var_00000144
008EF0E1: push eax
008EF0E2: lea eax, var_00000134
008EF0E8: push eax
008EF0E9: lea eax, var_30
008EF0EC: push eax
008EF0ED: call 00410A3Ch ; For
008EF0F2: mov var_00000180, eax
008EF0F8: lea eax, var_64
008EF0FB: push eax
008EF0FC: lea eax, var_60
008EF0FF: push eax
008EF100: push 00000002h
008EF102: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EF107: add esp, 0000000Ch
008EF10A: lea eax, var_00000094
008EF110: push eax
008EF111: lea eax, var_00000084
008EF117: push eax
008EF118: push 00000002h
008EF11A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EF11F: add esp, 0000000Ch
008EF122: jmp 008EF3A6h
008EF127: mov var_04, 00000008h
008EF12E: lea eax, var_30
008EF131: mov var_000000DC, eax
008EF137: mov var_000000E4, 0000400Ch
008EF141: mov var_000000FC, 00000001h
008EF14B: mov var_00000104, 00000003h
008EF155: lea eax, var_30
008EF158: mov var_000000EC, eax
008EF15E: mov var_000000F4, 0000400Ch
008EF168: push var_44
008EF16B: push 00000000h
008EF16D: push 00000000h
008EF16F: push 00440E58h
008EF174: push 00000010h
008EF176: pop eax
008EF177: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EF17C: lea esi, var_000000E4
008EF182: mov edi, esp
008EF184: movsd 
008EF185: movsd 
008EF186: movsd 
008EF187: movsd 
008EF188: push 00000001h
008EF18A: push 00000000h
008EF18C: push 00440E48h
008EF191: push 00000000h
008EF193: push 00000018h
008EF195: mov eax, [ebp+08h]
008EF198: mov eax, [eax]
008EF19A: push [ebp+08h]
008EF19D: call [eax+00000328h]
008EF1A3: push eax
008EF1A4: lea eax, var_60
008EF1A7: push eax
008EF1A8: call 00410A84h ; Set (object)
008EF1AD: push eax
008EF1AE: lea eax, var_00000084
008EF1B4: push eax
008EF1B5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EF1BA: add esp, 00000010h
008EF1BD: push eax
008EF1BE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EF1C3: push eax
008EF1C4: lea eax, var_64
008EF1C7: push eax
008EF1C8: call 00410A84h ; Set (object)
008EF1CD: push eax
008EF1CE: lea eax, var_00000094
008EF1D4: push eax
008EF1D5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EF1DA: add esp, 00000020h
008EF1DD: push eax
008EF1DE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EF1E3: push eax
008EF1E4: lea eax, var_68
008EF1E7: push eax
008EF1E8: call 00410A84h ; Set (object)
008EF1ED: push eax
008EF1EE: lea eax, var_000000A4
008EF1F4: push eax
008EF1F5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EF1FA: add esp, 00000010h
008EF1FD: push eax
008EF1FE: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008EF203: mov edx, eax
008EF205: lea ecx, var_4C
008EF208: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EF20D: push eax
008EF20E: call 00410A18h ; &
008EF213: mov edx, eax
008EF215: lea ecx, var_50
008EF218: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EF21D: push eax
008EF21E: push 00445568h
008EF223: call 00410A18h ; &
008EF228: mov edx, eax
008EF22A: lea ecx, var_54
008EF22D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EF232: push eax
008EF233: push 00000010h
008EF235: pop eax
008EF236: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EF23B: lea esi, var_00000104
008EF241: mov edi, esp
008EF243: movsd 
008EF244: movsd 
008EF245: movsd 
008EF246: movsd 
008EF247: push 00000001h
008EF249: push 00000010h
008EF24B: push 00440E58h
008EF250: push 00000010h
008EF252: pop eax
008EF253: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EF258: lea esi, var_000000F4
008EF25E: mov edi, esp
008EF260: movsd 
008EF261: movsd 
008EF262: movsd 
008EF263: movsd 
008EF264: push 00000001h
008EF266: push 00000000h
008EF268: push 00440E48h
008EF26D: push 00000000h
008EF26F: push 00000018h
008EF271: mov eax, [ebp+08h]
008EF274: mov eax, [eax]
008EF276: push [ebp+08h]
008EF279: call [eax+00000328h]
008EF27F: push eax
008EF280: lea eax, var_6C
008EF283: push eax
008EF284: call 00410A84h ; Set (object)
008EF289: push eax
008EF28A: lea eax, var_000000B4
008EF290: push eax
008EF291: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EF296: add esp, 00000010h
008EF299: push eax
008EF29A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EF29F: push eax
008EF2A0: lea eax, var_70
008EF2A3: push eax
008EF2A4: call 00410A84h ; Set (object)
008EF2A9: push eax
008EF2AA: lea eax, var_000000C4
008EF2B0: push eax
008EF2B1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EF2B6: add esp, 00000020h
008EF2B9: push eax
008EF2BA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EF2BF: push eax
008EF2C0: lea eax, var_74
008EF2C3: push eax
008EF2C4: call 00410A84h ; Set (object)
008EF2C9: push eax
008EF2CA: lea eax, var_000000D4
008EF2D0: push eax
008EF2D1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EF2D6: add esp, 00000020h
008EF2D9: push eax
008EF2DA: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008EF2DF: mov edx, eax
008EF2E1: lea ecx, var_58
008EF2E4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EF2E9: push eax
008EF2EA: call 00410A18h ; &
008EF2EF: mov edx, eax
008EF2F1: lea ecx, var_5C
008EF2F4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EF2F9: push eax
008EF2FA: push 00441264h ; vbCrLf
008EF2FF: call 00410A18h ; &
008EF304: mov edx, eax
008EF306: lea ecx, var_44
008EF309: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EF30E: lea eax, var_5C
008EF311: push eax
008EF312: lea eax, var_58
008EF315: push eax
008EF316: lea eax, var_54
008EF319: push eax
008EF31A: lea eax, var_50
008EF31D: push eax
008EF31E: lea eax, var_4C
008EF321: push eax
008EF322: push 00000005h
008EF324: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EF329: add esp, 00000018h
008EF32C: lea eax, var_74
008EF32F: push eax
008EF330: lea eax, var_70
008EF333: push eax
008EF334: lea eax, var_6C
008EF337: push eax
008EF338: lea eax, var_68
008EF33B: push eax
008EF33C: lea eax, var_64
008EF33F: push eax
008EF340: lea eax, var_60
008EF343: push eax
008EF344: push 00000006h
008EF346: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EF34B: add esp, 0000001Ch
008EF34E: lea eax, var_000000D4
008EF354: push eax
008EF355: lea eax, var_000000C4
008EF35B: push eax
008EF35C: lea eax, var_000000B4
008EF362: push eax
008EF363: lea eax, var_000000A4
008EF369: push eax
008EF36A: lea eax, var_00000094
008EF370: push eax
008EF371: lea eax, var_00000084
008EF377: push eax
008EF378: push 00000006h
008EF37A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EF37F: add esp, 0000001Ch
008EF382: mov var_04, 00000009h
008EF389: lea eax, var_00000144
008EF38F: push eax
008EF390: lea eax, var_00000134
008EF396: push eax
008EF397: lea eax, var_30
008EF39A: push eax
008EF39B: call 00410A36h ; Next
008EF3A0: mov var_00000180, eax
008EF3A6: cmp var_00000180, 00000000h
008EF3AD: jnz 008EF127h
008EF3B3: mov var_04, 0000000Ah
008EF3BA: mov var_7C, 80020004h
008EF3C1: mov var_00000084, 0000000Ah
008EF3CB: lea eax, var_00000084
008EF3D1: push eax
008EF3D2: call 004108C2h ; FreeFile
008EF3D7: mov var_000000EC, ax
008EF3DE: mov var_000000F4, 00000002h
008EF3E8: lea edx, var_000000F4
008EF3EE: lea ecx, var_40
008EF3F1: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EF3F6: lea ecx, var_00000084
008EF3FC: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008EF401: mov var_04, 0000000Bh
008EF408: push var_48
008EF40B: lea eax, var_40
008EF40E: push eax
008EF40F: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008EF414: push eax
008EF415: push FFFFFFFFh
008EF417: push 00000220h
008EF41C: call 004108B6h ; Open #
008EF421: mov var_04, 0000000Ch
008EF428: lea eax, var_40
008EF42B: push eax
008EF42C: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008EF431: push eax
008EF432: lea eax, var_44
008EF435: push eax
008EF436: push 00000000h
008EF438: call 0041089Eh ; Put #
008EF43D: mov var_04, 0000000Dh
008EF444: lea eax, var_40
008EF447: push eax
008EF448: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008EF44D: push eax
008EF44E: call 00410898h ; Close #arg_1
008EF453: jmp 008EF8A6h
008EF458: mov var_04, 00000010h
008EF45F: cmp [008F529Ch], 00000000h
008EF466: jnz 8EF483h
008EF468: push 008F529Ch
008EF46D: push 00440F2Ch
008EF472: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EF477: mov var_00000198, 008F529Ch
008EF481: jmp 8EF48Dh
008EF483: mov var_00000198, 008F529Ch
008EF48D: mov eax, var_00000198
008EF493: mov eax, [eax]
008EF495: mov var_00000118, eax
008EF49B: lea eax, var_60
008EF49E: push eax
008EF49F: mov eax, var_00000118
008EF4A5: mov eax, [eax]
008EF4A7: push var_00000118
008EF4AD: call [eax+14h]
008EF4B0: fclex 
008EF4B2: mov var_0000011C, eax
008EF4B8: cmp var_0000011C, 00000000h
008EF4BF: jnl 8EF4E1h
008EF4C1: push 00000014h
008EF4C3: push 00440F1Ch
008EF4C8: push var_00000118
008EF4CE: push var_0000011C
008EF4D4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008EF4D9: mov var_0000019C, eax
008EF4DF: jmp 8EF4E8h
008EF4E1: and var_0000019C, 00000000h
008EF4E8: mov eax, var_60
008EF4EB: mov var_00000120, eax
008EF4F1: lea eax, var_4C
008EF4F4: push eax
008EF4F5: mov eax, var_00000120
008EF4FB: mov eax, [eax]
008EF4FD: push var_00000120
008EF503: call [eax+50h]
008EF506: fclex 
008EF508: mov var_00000124, eax
008EF50E: cmp var_00000124, 00000000h
008EF515: jnl 8EF537h
008EF517: push 00000050h
008EF519: push 00440F3Ch
008EF51E: push var_00000120
008EF524: push var_00000124
008EF52A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008EF52F: mov var_000001A0, eax
008EF535: jmp 8EF53Eh
008EF537: and var_000001A0, 00000000h
008EF53E: push 00000000h
008EF540: push 00000000h
008EF542: push var_4C
008EF545: push 0044558Ch ; txt
008EF54A: push 00452FD0h ; Text Documents
008EF54F: call 007CCC4Dh
008EF554: mov edx, eax
008EF556: lea ecx, var_48
008EF559: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EF55E: lea ecx, var_4C
008EF561: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008EF566: lea ecx, var_60
008EF569: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008EF56E: mov var_04, 00000011h
008EF575: push var_48
008EF578: push 00000000h
008EF57A: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008EF57F: test eax, eax
008EF581: jz 008EF8A6h
008EF587: mov var_04, 00000012h
008EF58E: mov var_000000DC, 00000001h
008EF598: mov var_000000E4, 00000002h
008EF5A2: push 00000000h
008EF5A4: push 00000001h
008EF5A6: push 00440E48h
008EF5AB: push 00000000h
008EF5AD: push 00000018h
008EF5AF: mov eax, [ebp+08h]
008EF5B2: mov eax, [eax]
008EF5B4: push [ebp+08h]
008EF5B7: call [eax+00000328h]
008EF5BD: push eax
008EF5BE: lea eax, var_60
008EF5C1: push eax
008EF5C2: call 00410A84h ; Set (object)
008EF5C7: push eax
008EF5C8: lea eax, var_00000084
008EF5CE: push eax
008EF5CF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EF5D4: add esp, 00000010h
008EF5D7: push eax
008EF5D8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EF5DD: push eax
008EF5DE: lea eax, var_64
008EF5E1: push eax
008EF5E2: call 00410A84h ; Set (object)
008EF5E7: push eax
008EF5E8: lea eax, var_00000094
008EF5EE: push eax
008EF5EF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EF5F4: add esp, 00000010h
008EF5F7: push eax
008EF5F8: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EF5FD: mov var_000000EC, eax
008EF603: mov var_000000F4, 00000003h
008EF60D: mov var_000000FC, 00000001h
008EF617: mov var_00000104, 00000002h
008EF621: lea eax, var_000000E4
008EF627: push eax
008EF628: lea eax, var_000000F4
008EF62E: push eax
008EF62F: lea eax, var_00000104
008EF635: push eax
008EF636: lea eax, var_00000164
008EF63C: push eax
008EF63D: lea eax, var_00000154
008EF643: push eax
008EF644: lea eax, var_30
008EF647: push eax
008EF648: call 00410A3Ch ; For
008EF64D: mov var_00000184, eax
008EF653: lea eax, var_64
008EF656: push eax
008EF657: lea eax, var_60
008EF65A: push eax
008EF65B: push 00000002h
008EF65D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EF662: add esp, 0000000Ch
008EF665: lea eax, var_00000094
008EF66B: push eax
008EF66C: lea eax, var_00000084
008EF672: push eax
008EF673: push 00000002h
008EF675: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EF67A: add esp, 0000000Ch
008EF67D: jmp 008EF7F9h
008EF682: mov var_04, 00000013h
008EF689: mov var_000000EC, 00000001h
008EF693: mov var_000000F4, 00000003h
008EF69D: lea eax, var_30
008EF6A0: mov var_000000DC, eax
008EF6A6: mov var_000000E4, 0000400Ch
008EF6B0: push var_44
008EF6B3: push 00000010h
008EF6B5: pop eax
008EF6B6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EF6BB: lea esi, var_000000F4
008EF6C1: mov edi, esp
008EF6C3: movsd 
008EF6C4: movsd 
008EF6C5: movsd 
008EF6C6: movsd 
008EF6C7: push 00000001h
008EF6C9: push 00000010h
008EF6CB: push 00440E58h
008EF6D0: push 00000010h
008EF6D2: pop eax
008EF6D3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EF6D8: lea esi, var_000000E4
008EF6DE: mov edi, esp
008EF6E0: movsd 
008EF6E1: movsd 
008EF6E2: movsd 
008EF6E3: movsd 
008EF6E4: push 00000001h
008EF6E6: push 00000000h
008EF6E8: push 00440E48h
008EF6ED: push 00000000h
008EF6EF: push 00000018h
008EF6F1: mov eax, [ebp+08h]
008EF6F4: mov eax, [eax]
008EF6F6: push [ebp+08h]
008EF6F9: call [eax+00000328h]
008EF6FF: push eax
008EF700: lea eax, var_60
008EF703: push eax
008EF704: call 00410A84h ; Set (object)
008EF709: push eax
008EF70A: lea eax, var_00000084
008EF710: push eax
008EF711: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EF716: add esp, 00000010h
008EF719: push eax
008EF71A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EF71F: push eax
008EF720: lea eax, var_64
008EF723: push eax
008EF724: call 00410A84h ; Set (object)
008EF729: push eax
008EF72A: lea eax, var_00000094
008EF730: push eax
008EF731: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EF736: add esp, 00000020h
008EF739: push eax
008EF73A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EF73F: push eax
008EF740: lea eax, var_68
008EF743: push eax
008EF744: call 00410A84h ; Set (object)
008EF749: push eax
008EF74A: lea eax, var_000000A4
008EF750: push eax
008EF751: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EF756: add esp, 00000020h
008EF759: push eax
008EF75A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008EF75F: mov edx, eax
008EF761: lea ecx, var_4C
008EF764: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EF769: push eax
008EF76A: call 00410A18h ; &
008EF76F: mov edx, eax
008EF771: lea ecx, var_50
008EF774: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EF779: push eax
008EF77A: push 00441264h ; vbCrLf
008EF77F: call 00410A18h ; &
008EF784: mov edx, eax
008EF786: lea ecx, var_44
008EF789: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EF78E: lea eax, var_50
008EF791: push eax
008EF792: lea eax, var_4C
008EF795: push eax
008EF796: push 00000002h
008EF798: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EF79D: add esp, 0000000Ch
008EF7A0: lea eax, var_68
008EF7A3: push eax
008EF7A4: lea eax, var_64
008EF7A7: push eax
008EF7A8: lea eax, var_60
008EF7AB: push eax
008EF7AC: push 00000003h
008EF7AE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EF7B3: add esp, 00000010h
008EF7B6: lea eax, var_000000A4
008EF7BC: push eax
008EF7BD: lea eax, var_00000094
008EF7C3: push eax
008EF7C4: lea eax, var_00000084
008EF7CA: push eax
008EF7CB: push 00000003h
008EF7CD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EF7D2: add esp, 00000010h
008EF7D5: mov var_04, 00000014h
008EF7DC: lea eax, var_00000164
008EF7E2: push eax
008EF7E3: lea eax, var_00000154
008EF7E9: push eax
008EF7EA: lea eax, var_30
008EF7ED: push eax
008EF7EE: call 00410A36h ; Next
008EF7F3: mov var_00000184, eax
008EF7F9: cmp var_00000184, 00000000h
008EF800: jnz 008EF682h
008EF806: mov var_04, 00000015h
008EF80D: mov var_7C, 80020004h
008EF814: mov var_00000084, 0000000Ah
008EF81E: lea eax, var_00000084
008EF824: push eax
008EF825: call 004108C2h ; FreeFile
008EF82A: mov var_000000EC, ax
008EF831: mov var_000000F4, 00000002h
008EF83B: lea edx, var_000000F4
008EF841: lea ecx, var_40
008EF844: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EF849: lea ecx, var_00000084
008EF84F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008EF854: mov var_04, 00000016h
008EF85B: push var_48
008EF85E: lea eax, var_40
008EF861: push eax
008EF862: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008EF867: push eax
008EF868: push FFFFFFFFh
008EF86A: push 00000220h
008EF86F: call 004108B6h ; Open #
008EF874: mov var_04, 00000017h
008EF87B: lea eax, var_40
008EF87E: push eax
008EF87F: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008EF884: push eax
008EF885: lea eax, var_44
008EF888: push eax
008EF889: push 00000000h
008EF88B: call 0041089Eh ; Put #
008EF890: mov var_04, 00000018h
008EF897: lea eax, var_40
008EF89A: push eax
008EF89B: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008EF8A0: push eax
008EF8A1: call 00410898h ; Close #arg_1
008EF8A6: mov var_10, 00000000h
008EF8AD: push 008EF970h
008EF8B2: jmp 8EF929h
008EF8B4: lea eax, var_5C
008EF8B7: push eax
008EF8B8: lea eax, var_58
008EF8BB: push eax
008EF8BC: lea eax, var_54
008EF8BF: push eax
008EF8C0: lea eax, var_50
008EF8C3: push eax
008EF8C4: lea eax, var_4C
008EF8C7: push eax
008EF8C8: push 00000005h
008EF8CA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EF8CF: add esp, 00000018h
008EF8D2: lea eax, var_74
008EF8D5: push eax
008EF8D6: lea eax, var_70
008EF8D9: push eax
008EF8DA: lea eax, var_6C
008EF8DD: push eax
008EF8DE: lea eax, var_68
008EF8E1: push eax
008EF8E2: lea eax, var_64
008EF8E5: push eax
008EF8E6: lea eax, var_60
008EF8E9: push eax
008EF8EA: push 00000006h
008EF8EC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EF8F1: add esp, 0000001Ch
008EF8F4: lea eax, var_000000D4
008EF8FA: push eax
008EF8FB: lea eax, var_000000C4
008EF901: push eax
008EF902: lea eax, var_000000B4
008EF908: push eax
008EF909: lea eax, var_000000A4
008EF90F: push eax
008EF910: lea eax, var_00000094
008EF916: push eax
008EF917: lea eax, var_00000084
008EF91D: push eax
008EF91E: push 00000006h
008EF920: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EF925: add esp, 0000001Ch
008EF928: ret 
End Sub

Private sub unknown_8E5C49
008E5C49: push ebp
008E5C4A: mov ebp, esp
008E5C4C: push ecx
008E5C4D: push ecx
008E5C4E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008E5C53: mov eax, fs:[00h]
008E5C59: push eax
008E5C5A: mov fs:[00000000h], esp
008E5C61: mov eax, 00000130h
008E5C66: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E5C6B: push ebx
008E5C6C: push esi
008E5C6D: push edi
008E5C6E: mov var_08, esp
008E5C71: mov var_04, 00410498h
008E5C78: mov eax, [ebp+08h]
008E5C7B: mov eax, [eax]
008E5C7D: push [ebp+08h]
008E5C80: call [eax+00000304h]
008E5C86: push eax
008E5C87: lea eax, var_2C
008E5C8A: push eax
008E5C8B: call 00410A84h ; Set (object)
008E5C90: mov var_000000C4, eax
008E5C96: lea eax, var_24
008E5C99: push eax
008E5C9A: mov eax, var_000000C4
008E5CA0: mov eax, [eax]
008E5CA2: push var_000000C4
008E5CA8: call [eax+000000A0h]
008E5CAE: fclex 
008E5CB0: mov var_000000C8, eax
008E5CB6: cmp var_000000C8, 00000000h
008E5CBD: jnl 8E5CE2h
008E5CBF: push 000000A0h
008E5CC4: push 00440E08h
008E5CC9: push var_000000C4
008E5CCF: push var_000000C8
008E5CD5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E5CDA: mov var_0000011C, eax
008E5CE0: jmp 8E5CE9h
008E5CE2: and var_0000011C, 00000000h
008E5CE9: push var_24
008E5CEC: call 0041098Eh ; Len(arg_1)
008E5CF1: xor ecx, ecx
008E5CF3: cmp eax, 00000003h
008E5CF6: setle cl
008E5CF9: neg ecx
008E5CFB: mov var_000000CC, cx
008E5D02: lea ecx, var_24
008E5D05: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008E5D0A: lea ecx, var_2C
008E5D0D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E5D12: movsx eax, word ptr var_000000CC
008E5D19: test eax, eax
008E5D1B: jz 8E5C9Ch
008E5D1D: mov var_6C, 80020004h
008E5D24: mov var_74, 0000000Ah
008E5D2B: mov var_5C, 80020004h
008E5D32: mov var_64, 0000000Ah
008E5D39: mov var_4C, 80020004h
008E5D40: mov var_54, 0000000Ah
008E5D47: mov var_80, 00459330h ; Invalid email
008E5D4E: mov var_00000088, 00000008h
008E5D58: lea edx, var_00000088
008E5D5E: lea ecx, var_44
008E5D61: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008E5D66: lea eax, var_74
008E5D69: push eax
008E5D6A: lea eax, var_64
008E5D6D: push eax
008E5D6E: lea eax, var_54
008E5D71: push eax
008E5D72: push 00000010h
008E5D74: lea eax, var_44
008E5D77: push eax
008E5D78: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008E5D7D: lea eax, var_74
008E5D80: push eax
008E5D81: lea eax, var_64
008E5D84: push eax
008E5D85: lea eax, var_54
008E5D88: push eax
008E5D89: lea eax, var_44
008E5D8C: push eax
008E5D8D: push 00000004h
008E5D8F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E5D94: add esp, 00000014h
008E5D97: jmp 008E6996h
008E5D9C: mov eax, [ebp+08h]
008E5D9F: mov eax, [eax]
008E5DA1: push [ebp+08h]
008E5DA4: call [eax+00000304h]
008E5DAA: push eax
008E5DAB: lea eax, var_2C
008E5DAE: push eax
008E5DAF: call 00410A84h ; Set (object)
008E5DB4: mov var_000000C4, eax
008E5DBA: lea eax, var_24
008E5DBD: push eax
008E5DBE: mov eax, var_000000C4
008E5DC4: mov eax, [eax]
008E5DC6: push var_000000C4
008E5DCC: call [eax+000000A0h]
008E5DD2: fclex 
008E5DD4: mov var_000000C8, eax
008E5DDA: cmp var_000000C8, 00000000h
008E5DE1: jnl 8E5E06h
008E5DE3: push 000000A0h
008E5DE8: push 00440E08h
008E5DED: push var_000000C4
008E5DF3: push var_000000C8
008E5DF9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E5DFE: mov var_00000120, eax
008E5E04: jmp 8E5E0Dh
008E5E06: and var_00000120, 00000000h
008E5E0D: mov var_6C, 80020004h
008E5E14: mov var_74, 0000000Ah
008E5E1B: mov var_5C, 80020004h
008E5E22: mov var_64, 0000000Ah
008E5E29: mov var_4C, 80020004h
008E5E30: mov var_54, 0000000Ah
008E5E37: push 00458D8Ch ; Do you really want to open conversation with:
008E5E3C: push var_24
008E5E3F: call 00410A18h ; &
008E5E44: mov edx, eax
008E5E46: lea ecx, var_28
008E5E49: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E5E4E: push eax
008E5E4F: push 00459390h
008E5E54: call 00410A18h ; &
008E5E59: mov var_3C, eax
008E5E5C: mov var_44, 00000008h
008E5E63: lea eax, var_74
008E5E66: push eax
008E5E67: lea eax, var_64
008E5E6A: push eax
008E5E6B: lea eax, var_54
008E5E6E: push eax
008E5E6F: push 00000034h
008E5E71: lea eax, var_44
008E5E74: push eax
008E5E75: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008E5E7A: sub eax, 00000007h
008E5E7D: neg eax
008E5E7F: sbb eax, eax
008E5E81: inc eax
008E5E82: neg eax
008E5E84: mov var_000000CC, ax
008E5E8B: lea eax, var_28
008E5E8E: push eax
008E5E8F: lea eax, var_24
008E5E92: push eax
008E5E93: push 00000002h
008E5E95: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E5E9A: add esp, 0000000Ch
008E5E9D: lea ecx, var_2C
008E5EA0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E5EA5: lea eax, var_74
008E5EA8: push eax
008E5EA9: lea eax, var_64
008E5EAC: push eax
008E5EAD: lea eax, var_54
008E5EB0: push eax
008E5EB1: lea eax, var_44
008E5EB4: push eax
008E5EB5: push 00000004h
008E5EB7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E5EBC: add esp, 00000014h
008E5EBF: movsx eax, word ptr var_000000CC
008E5EC6: test eax, eax
008E5EC8: jz 8E5ECFh
008E5ECA: jmp 008E6996h
008E5ECF: cmp word ptr [008F2430h], FFFFh
008E5ED7: jnz 008E643Ch
008E5EDD: push 00000000h
008E5EDF: push 00000000h
008E5EE1: mov eax, [ebp+08h]
008E5EE4: mov eax, [eax]
008E5EE6: push [ebp+08h]
008E5EE9: call [eax+0000033Ch]
008E5EEF: push eax
008E5EF0: lea eax, var_2C
008E5EF3: push eax
008E5EF4: call 00410A84h ; Set (object)
008E5EF9: push eax
008E5EFA: lea eax, var_44
008E5EFD: push eax
008E5EFE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E5F03: add esp, 00000010h
008E5F06: push eax
008E5F07: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E5F0C: dec eax
008E5F0D: neg eax
008E5F0F: sbb eax, eax
008E5F11: inc eax
008E5F12: neg eax
008E5F14: mov var_000000C4, ax
008E5F1B: lea ecx, var_2C
008E5F1E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E5F23: lea ecx, var_44
008E5F26: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E5F2B: movsx eax, word ptr var_000000C4
008E5F32: test eax, eax
008E5F34: jz 008E6353h
008E5F3A: mov var_80, 00000001h
008E5F41: mov var_00000088, 00000002h
008E5F4B: cmp [008F2010h], 00000000h
008E5F52: jnz 8E5F6Fh
008E5F54: push 008F2010h
008E5F59: push 00433984h
008E5F5E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E5F63: mov var_00000124, 008F2010h
008E5F6D: jmp 8E5F79h
008E5F6F: mov var_00000124, 008F2010h
008E5F79: push 00000000h
008E5F7B: push 00000001h
008E5F7D: push 00440E48h
008E5F82: push 00000000h
008E5F84: push 00000018h
008E5F86: mov eax, var_00000124
008E5F8C: mov eax, [eax]
008E5F8E: mov ecx, var_00000124
008E5F94: mov ecx, [ecx]
008E5F96: mov ecx, [ecx]
008E5F98: push eax
008E5F99: call [ecx+0000054Ch]
008E5F9F: push eax
008E5FA0: lea eax, var_2C
008E5FA3: push eax
008E5FA4: call 00410A84h ; Set (object)
008E5FA9: push eax
008E5FAA: lea eax, var_44
008E5FAD: push eax
008E5FAE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E5FB3: add esp, 00000010h
008E5FB6: push eax
008E5FB7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E5FBC: push eax
008E5FBD: lea eax, var_30
008E5FC0: push eax
008E5FC1: call 00410A84h ; Set (object)
008E5FC6: push eax
008E5FC7: lea eax, var_54
008E5FCA: push eax
008E5FCB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E5FD0: add esp, 00000010h
008E5FD3: push eax
008E5FD4: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E5FD9: mov var_00000090, eax
008E5FDF: mov var_00000098, 00000003h
008E5FE9: mov var_000000A0, 00000001h
008E5FF3: mov var_000000A8, 00000002h
008E5FFD: lea eax, var_00000088
008E6003: push eax
008E6004: lea eax, var_00000098
008E600A: push eax
008E600B: lea eax, var_000000A8
008E6011: push eax
008E6012: lea eax, var_000000EC
008E6018: push eax
008E6019: lea eax, var_000000DC
008E601F: push eax
008E6020: lea eax, var_20
008E6023: push eax
008E6024: call 00410A3Ch ; For
008E6029: mov var_00000114, eax
008E602F: lea eax, var_30
008E6032: push eax
008E6033: lea eax, var_2C
008E6036: push eax
008E6037: push 00000002h
008E6039: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E603E: add esp, 0000000Ch
008E6041: lea eax, var_54
008E6044: push eax
008E6045: lea eax, var_44
008E6048: push eax
008E6049: push 00000002h
008E604B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E6050: add esp, 0000000Ch
008E6053: jmp 008E6341h
008E6058: lea eax, var_20
008E605B: mov var_80, eax
008E605E: mov var_00000088, 0000400Ch
008E6068: cmp [008F2010h], 00000000h
008E606F: jnz 8E608Ch
008E6071: push 008F2010h
008E6076: push 00433984h
008E607B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E6080: mov var_00000128, 008F2010h
008E608A: jmp 8E6096h
008E608C: mov var_00000128, 008F2010h
008E6096: push 00000000h
008E6098: push 00000004h
008E609A: push 00440E58h
008E609F: push 00000010h
008E60A1: pop eax
008E60A2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E60A7: lea esi, var_00000088
008E60AD: mov edi, esp
008E60AF: movsd 
008E60B0: movsd 
008E60B1: movsd 
008E60B2: movsd 
008E60B3: push 00000001h
008E60B5: push 00000000h
008E60B7: push 00440E48h
008E60BC: push 00000000h
008E60BE: push 00000018h
008E60C0: mov eax, var_00000128
008E60C6: mov eax, [eax]
008E60C8: mov ecx, var_00000128
008E60CE: mov ecx, [ecx]
008E60D0: mov ecx, [ecx]
008E60D2: push eax
008E60D3: call [ecx+0000054Ch]
008E60D9: push eax
008E60DA: lea eax, var_2C
008E60DD: push eax
008E60DE: call 00410A84h ; Set (object)
008E60E3: push eax
008E60E4: lea eax, var_44
008E60E7: push eax
008E60E8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E60ED: add esp, 00000010h
008E60F0: push eax
008E60F1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E60F6: push eax
008E60F7: lea eax, var_30
008E60FA: push eax
008E60FB: call 00410A84h ; Set (object)
008E6100: push eax
008E6101: lea eax, var_54
008E6104: push eax
008E6105: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E610A: add esp, 00000020h
008E610D: push eax
008E610E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E6113: push eax
008E6114: lea eax, var_34
008E6117: push eax
008E6118: call 00410A84h ; Set (object)
008E611D: push eax
008E611E: lea eax, var_64
008E6121: push eax
008E6122: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E6127: add esp, 00000010h
008E612A: push eax
008E612B: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008E6130: sub ax, FFFFh
008E6134: neg ax
008E6137: sbb eax, eax
008E6139: inc eax
008E613A: neg eax
008E613C: mov var_000000C4, ax
008E6143: lea eax, var_34
008E6146: push eax
008E6147: lea eax, var_30
008E614A: push eax
008E614B: lea eax, var_2C
008E614E: push eax
008E614F: push 00000003h
008E6151: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E6156: add esp, 00000010h
008E6159: lea eax, var_64
008E615C: push eax
008E615D: lea eax, var_54
008E6160: push eax
008E6161: lea eax, var_44
008E6164: push eax
008E6165: push 00000003h
008E6167: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E616C: add esp, 00000010h
008E616F: movsx eax, word ptr var_000000C4
008E6176: test eax, eax
008E6178: jz 008E6324h
008E617E: lea eax, var_20
008E6181: mov var_80, eax
008E6184: mov var_00000088, 0000400Ch
008E618E: cmp [008F2010h], 00000000h
008E6195: jnz 8E61B2h
008E6197: push 008F2010h
008E619C: push 00433984h
008E61A1: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E61A6: mov var_0000012C, 008F2010h
008E61B0: jmp 8E61BCh
008E61B2: mov var_0000012C, 008F2010h
008E61BC: push 00000000h
008E61BE: push 00000014h
008E61C0: push 00440E58h
008E61C5: push 00000010h
008E61C7: pop eax
008E61C8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E61CD: lea esi, var_00000088
008E61D3: mov edi, esp
008E61D5: movsd 
008E61D6: movsd 
008E61D7: movsd 
008E61D8: movsd 
008E61D9: push 00000001h
008E61DB: push 00000000h
008E61DD: push 00440E48h
008E61E2: push 00000000h
008E61E4: push 00000018h
008E61E6: mov eax, var_0000012C
008E61EC: mov eax, [eax]
008E61EE: mov ecx, var_0000012C
008E61F4: mov ecx, [ecx]
008E61F6: mov ecx, [ecx]
008E61F8: push eax
008E61F9: call [ecx+0000054Ch]
008E61FF: push eax
008E6200: lea eax, var_2C
008E6203: push eax
008E6204: call 00410A84h ; Set (object)
008E6209: push eax
008E620A: lea eax, var_44
008E620D: push eax
008E620E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E6213: add esp, 00000010h
008E6216: push eax
008E6217: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E621C: push eax
008E621D: lea eax, var_30
008E6220: push eax
008E6221: call 00410A84h ; Set (object)
008E6226: push eax
008E6227: lea eax, var_54
008E622A: push eax
008E622B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E6230: add esp, 00000020h
008E6233: push eax
008E6234: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E6239: push eax
008E623A: lea eax, var_34
008E623D: push eax
008E623E: call 00410A84h ; Set (object)
008E6243: push eax
008E6244: lea eax, var_64
008E6247: push eax
008E6248: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E624D: add esp, 00000010h
008E6250: push eax
008E6251: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E6256: mov edx, eax
008E6258: lea ecx, var_24
008E625B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E6260: push eax
008E6261: call 004109DCh ; Val(arg_1)
008E6266: fstp real8 ptr var_000000C0
008E626C: push 00000000h
008E626E: push 00000000h
008E6270: push 00000001h
008E6272: push 00000000h
008E6274: lea eax, var_78
008E6277: push eax
008E6278: push 00000010h
008E627A: push 00000880h
008E627F: call 00410946h ; ReDim
008E6284: add esp, 0000001Ch
008E6287: mov eax, [ebp+08h]
008E628A: mov eax, [eax]
008E628C: push [ebp+08h]
008E628F: call [eax+00000304h]
008E6295: mov var_6C, eax
008E6298: mov var_74, 00000009h
008E629F: lea esi, var_74
008E62A2: push 00000000h
008E62A4: push var_78
008E62A7: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E62AC: mov ecx, eax
008E62AE: mov edx, esi
008E62B0: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E62B5: mov edx, 0043DB38h ; x138
008E62BA: lea ecx, var_28
008E62BD: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E62C2: lea eax, var_78
008E62C5: push eax
008E62C6: lea eax, var_28
008E62C9: push eax
008E62CA: fld real8 ptr var_000000C0
008E62D0: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E62D5: push eax
008E62D6: call 007A6910h
008E62DB: lea eax, var_78
008E62DE: push eax
008E62DF: push 00000000h
008E62E1: call 00410934h ; Erase
008E62E6: lea eax, var_28
008E62E9: push eax
008E62EA: lea eax, var_24
008E62ED: push eax
008E62EE: push 00000002h
008E62F0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E62F5: add esp, 0000000Ch
008E62F8: lea eax, var_34
008E62FB: push eax
008E62FC: lea eax, var_30
008E62FF: push eax
008E6300: lea eax, var_2C
008E6303: push eax
008E6304: push 00000003h
008E6306: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E630B: add esp, 00000010h
008E630E: lea eax, var_64
008E6311: push eax
008E6312: lea eax, var_54
008E6315: push eax
008E6316: lea eax, var_44
008E6319: push eax
008E631A: push 00000003h
008E631C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E6321: add esp, 00000010h
008E6324: lea eax, var_000000EC
008E632A: push eax
008E632B: lea eax, var_000000DC
008E6331: push eax
008E6332: lea eax, var_20
008E6335: push eax
008E6336: call 00410A36h ; Next
008E633B: mov var_00000114, eax
008E6341: cmp var_00000114, 00000000h
008E6348: jnz 008E6058h
008E634E: jmp 008E6437h
008E6353: lea eax, var_24
008E6356: push eax
008E6357: mov eax, [ebp+08h]
008E635A: mov eax, [eax]
008E635C: push [ebp+08h]
008E635F: call [eax+000001C0h]
008E6365: fclex 
008E6367: mov var_000000C4, eax
008E636D: cmp var_000000C4, 00000000h
008E6374: jnl 8E6396h
008E6376: push 000001C0h
008E637B: push 00448930h
008E6380: push [ebp+08h]
008E6383: push var_000000C4
008E6389: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E638E: mov var_00000130, eax
008E6394: jmp 8E639Dh
008E6396: and var_00000130, 00000000h
008E639D: push var_24
008E63A0: call 004109DCh ; Val(arg_1)
008E63A5: fstp real8 ptr var_000000C0
008E63AB: push 00000000h
008E63AD: push 00000000h
008E63AF: push 00000001h
008E63B1: push 00000000h
008E63B3: lea eax, var_78
008E63B6: push eax
008E63B7: push 00000010h
008E63B9: push 00000880h
008E63BE: call 00410946h ; ReDim
008E63C3: add esp, 0000001Ch
008E63C6: mov eax, [ebp+08h]
008E63C9: mov eax, [eax]
008E63CB: push [ebp+08h]
008E63CE: call [eax+00000304h]
008E63D4: mov var_3C, eax
008E63D7: mov var_44, 00000009h
008E63DE: lea esi, var_44
008E63E1: push 00000000h
008E63E3: push var_78
008E63E6: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E63EB: mov ecx, eax
008E63ED: mov edx, esi
008E63EF: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E63F4: mov edx, 0043DB38h ; x138
008E63F9: lea ecx, var_28
008E63FC: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E6401: lea eax, var_78
008E6404: push eax
008E6405: lea eax, var_28
008E6408: push eax
008E6409: fld real8 ptr var_000000C0
008E640F: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E6414: push eax
008E6415: call 007A6910h
008E641A: lea eax, var_78
008E641D: push eax
008E641E: push 00000000h
008E6420: call 00410934h ; Erase
008E6425: lea eax, var_28
008E6428: push eax
008E6429: lea eax, var_24
008E642C: push eax
008E642D: push 00000002h
008E642F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E6434: add esp, 0000000Ch
008E6437: jmp 008E6996h
008E643C: push 00000000h
008E643E: push 00000000h
008E6440: mov eax, [ebp+08h]
008E6443: mov eax, [eax]
008E6445: push [ebp+08h]
008E6448: call [eax+0000033Ch]
008E644E: push eax
008E644F: lea eax, var_2C
008E6452: push eax
008E6453: call 00410A84h ; Set (object)
008E6458: push eax
008E6459: lea eax, var_44
008E645C: push eax
008E645D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E6462: add esp, 00000010h
008E6465: push eax
008E6466: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E646B: dec eax
008E646C: neg eax
008E646E: sbb eax, eax
008E6470: inc eax
008E6471: neg eax
008E6473: mov var_000000C4, ax
008E647A: lea ecx, var_2C
008E647D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008E6482: lea ecx, var_44
008E6485: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008E648A: movsx eax, word ptr var_000000C4
008E6491: test eax, eax
008E6493: jz 008E68B2h
008E6499: mov var_80, 00000001h
008E64A0: mov var_00000088, 00000002h
008E64AA: cmp [008F2010h], 00000000h
008E64B1: jnz 8E64CEh
008E64B3: push 008F2010h
008E64B8: push 00433984h
008E64BD: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E64C2: mov var_00000134, 008F2010h
008E64CC: jmp 8E64D8h
008E64CE: mov var_00000134, 008F2010h
008E64D8: push 00000000h
008E64DA: push 00000001h
008E64DC: push 00440E48h
008E64E1: push 00000000h
008E64E3: push 00000018h
008E64E5: mov eax, var_00000134
008E64EB: mov eax, [eax]
008E64ED: mov ecx, var_00000134
008E64F3: mov ecx, [ecx]
008E64F5: mov ecx, [ecx]
008E64F7: push eax
008E64F8: call [ecx+00000550h]
008E64FE: push eax
008E64FF: lea eax, var_2C
008E6502: push eax
008E6503: call 00410A84h ; Set (object)
008E6508: push eax
008E6509: lea eax, var_44
008E650C: push eax
008E650D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E6512: add esp, 00000010h
008E6515: push eax
008E6516: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E651B: push eax
008E651C: lea eax, var_30
008E651F: push eax
008E6520: call 00410A84h ; Set (object)
008E6525: push eax
008E6526: lea eax, var_54
008E6529: push eax
008E652A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E652F: add esp, 00000010h
008E6532: push eax
008E6533: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008E6538: mov var_00000090, eax
008E653E: mov var_00000098, 00000003h
008E6548: mov var_000000A0, 00000001h
008E6552: mov var_000000A8, 00000002h
008E655C: lea eax, var_00000088
008E6562: push eax
008E6563: lea eax, var_00000098
008E6569: push eax
008E656A: lea eax, var_000000A8
008E6570: push eax
008E6571: lea eax, var_0000010C
008E6577: push eax
008E6578: lea eax, var_000000FC
008E657E: push eax
008E657F: lea eax, var_20
008E6582: push eax
008E6583: call 00410A3Ch ; For
008E6588: mov var_00000118, eax
008E658E: lea eax, var_30
008E6591: push eax
008E6592: lea eax, var_2C
008E6595: push eax
008E6596: push 00000002h
008E6598: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E659D: add esp, 0000000Ch
008E65A0: lea eax, var_54
008E65A3: push eax
008E65A4: lea eax, var_44
008E65A7: push eax
008E65A8: push 00000002h
008E65AA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E65AF: add esp, 0000000Ch
008E65B2: jmp 008E68A0h
008E65B7: lea eax, var_20
008E65BA: mov var_80, eax
008E65BD: mov var_00000088, 0000400Ch
008E65C7: cmp [008F2010h], 00000000h
008E65CE: jnz 8E65EBh
008E65D0: push 008F2010h
008E65D5: push 00433984h
008E65DA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E65DF: mov var_00000138, 008F2010h
008E65E9: jmp 8E65F5h
008E65EB: mov var_00000138, 008F2010h
008E65F5: push 00000000h
008E65F7: push 00000004h
008E65F9: push 00440E58h
008E65FE: push 00000010h
008E6600: pop eax
008E6601: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E6606: lea esi, var_00000088
008E660C: mov edi, esp
008E660E: movsd 
008E660F: movsd 
008E6610: movsd 
008E6611: movsd 
008E6612: push 00000001h
008E6614: push 00000000h
008E6616: push 00440E48h
008E661B: push 00000000h
008E661D: push 00000018h
008E661F: mov eax, var_00000138
008E6625: mov eax, [eax]
008E6627: mov ecx, var_00000138
008E662D: mov ecx, [ecx]
008E662F: mov ecx, [ecx]
008E6631: push eax
008E6632: call [ecx+00000550h]
008E6638: push eax
008E6639: lea eax, var_2C
008E663C: push eax
008E663D: call 00410A84h ; Set (object)
008E6642: push eax
008E6643: lea eax, var_44
008E6646: push eax
008E6647: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E664C: add esp, 00000010h
008E664F: push eax
008E6650: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E6655: push eax
008E6656: lea eax, var_30
008E6659: push eax
008E665A: call 00410A84h ; Set (object)
008E665F: push eax
008E6660: lea eax, var_54
008E6663: push eax
008E6664: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E6669: add esp, 00000020h
008E666C: push eax
008E666D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E6672: push eax
008E6673: lea eax, var_34
008E6676: push eax
008E6677: call 00410A84h ; Set (object)
008E667C: push eax
008E667D: lea eax, var_64
008E6680: push eax
008E6681: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E6686: add esp, 00000010h
008E6689: push eax
008E668A: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008E668F: sub ax, FFFFh
008E6693: neg ax
008E6696: sbb eax, eax
008E6698: inc eax
008E6699: neg eax
008E669B: mov var_000000C4, ax
008E66A2: lea eax, var_34
008E66A5: push eax
008E66A6: lea eax, var_30
008E66A9: push eax
008E66AA: lea eax, var_2C
008E66AD: push eax
008E66AE: push 00000003h
008E66B0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E66B5: add esp, 00000010h
008E66B8: lea eax, var_64
008E66BB: push eax
008E66BC: lea eax, var_54
008E66BF: push eax
008E66C0: lea eax, var_44
008E66C3: push eax
008E66C4: push 00000003h
008E66C6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E66CB: add esp, 00000010h
008E66CE: movsx eax, word ptr var_000000C4
008E66D5: test eax, eax
008E66D7: jz 008E6883h
008E66DD: lea eax, var_20
008E66E0: mov var_80, eax
008E66E3: mov var_00000088, 0000400Ch
008E66ED: cmp [008F2010h], 00000000h
008E66F4: jnz 8E6711h
008E66F6: push 008F2010h
008E66FB: push 00433984h
008E6700: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008E6705: mov var_0000013C, 008F2010h
008E670F: jmp 8E671Bh
008E6711: mov var_0000013C, 008F2010h
008E671B: push 00000000h
008E671D: push 00000014h
008E671F: push 00440E58h
008E6724: push 00000010h
008E6726: pop eax
008E6727: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008E672C: lea esi, var_00000088
008E6732: mov edi, esp
008E6734: movsd 
008E6735: movsd 
008E6736: movsd 
008E6737: movsd 
008E6738: push 00000001h
008E673A: push 00000000h
008E673C: push 00440E48h
008E6741: push 00000000h
008E6743: push 00000018h
008E6745: mov eax, var_0000013C
008E674B: mov eax, [eax]
008E674D: mov ecx, var_0000013C
008E6753: mov ecx, [ecx]
008E6755: mov ecx, [ecx]
008E6757: push eax
008E6758: call [ecx+00000550h]
008E675E: push eax
008E675F: lea eax, var_2C
008E6762: push eax
008E6763: call 00410A84h ; Set (object)
008E6768: push eax
008E6769: lea eax, var_44
008E676C: push eax
008E676D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E6772: add esp, 00000010h
008E6775: push eax
008E6776: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E677B: push eax
008E677C: lea eax, var_30
008E677F: push eax
008E6780: call 00410A84h ; Set (object)
008E6785: push eax
008E6786: lea eax, var_54
008E6789: push eax
008E678A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E678F: add esp, 00000020h
008E6792: push eax
008E6793: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008E6798: push eax
008E6799: lea eax, var_34
008E679C: push eax
008E679D: call 00410A84h ; Set (object)
008E67A2: push eax
008E67A3: lea eax, var_64
008E67A6: push eax
008E67A7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008E67AC: add esp, 00000010h
008E67AF: push eax
008E67B0: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008E67B5: mov edx, eax
008E67B7: lea ecx, var_24
008E67BA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008E67BF: push eax
008E67C0: call 004109DCh ; Val(arg_1)
008E67C5: fstp real8 ptr var_000000C0
008E67CB: push 00000000h
008E67CD: push 00000000h
008E67CF: push 00000001h
008E67D1: push 00000000h
008E67D3: lea eax, var_78
008E67D6: push eax
008E67D7: push 00000010h
008E67D9: push 00000880h
008E67DE: call 00410946h ; ReDim
008E67E3: add esp, 0000001Ch
008E67E6: mov eax, [ebp+08h]
008E67E9: mov eax, [eax]
008E67EB: push [ebp+08h]
008E67EE: call [eax+00000304h]
008E67F4: mov var_6C, eax
008E67F7: mov var_74, 00000009h
008E67FE: lea esi, var_74
008E6801: push 00000000h
008E6803: push var_78
008E6806: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E680B: mov ecx, eax
008E680D: mov edx, esi
008E680F: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E6814: mov edx, 0043DB38h ; x138
008E6819: lea ecx, var_28
008E681C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E6821: lea eax, var_78
008E6824: push eax
008E6825: lea eax, var_28
008E6828: push eax
008E6829: fld real8 ptr var_000000C0
008E682F: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E6834: push eax
008E6835: call 007A6910h
008E683A: lea eax, var_78
008E683D: push eax
008E683E: push 00000000h
008E6840: call 00410934h ; Erase
008E6845: lea eax, var_28
008E6848: push eax
008E6849: lea eax, var_24
008E684C: push eax
008E684D: push 00000002h
008E684F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E6854: add esp, 0000000Ch
008E6857: lea eax, var_34
008E685A: push eax
008E685B: lea eax, var_30
008E685E: push eax
008E685F: lea eax, var_2C
008E6862: push eax
008E6863: push 00000003h
008E6865: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E686A: add esp, 00000010h
008E686D: lea eax, var_64
008E6870: push eax
008E6871: lea eax, var_54
008E6874: push eax
008E6875: lea eax, var_44
008E6878: push eax
008E6879: push 00000003h
008E687B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E6880: add esp, 00000010h
008E6883: lea eax, var_0000010C
008E6889: push eax
008E688A: lea eax, var_000000FC
008E6890: push eax
008E6891: lea eax, var_20
008E6894: push eax
008E6895: call 00410A36h ; Next
008E689A: mov var_00000118, eax
008E68A0: cmp var_00000118, 00000000h
008E68A7: jnz 008E65B7h
008E68AD: jmp 008E6996h
008E68B2: lea eax, var_24
008E68B5: push eax
008E68B6: mov eax, [ebp+08h]
008E68B9: mov eax, [eax]
008E68BB: push [ebp+08h]
008E68BE: call [eax+000001C0h]
008E68C4: fclex 
008E68C6: mov var_000000C4, eax
008E68CC: cmp var_000000C4, 00000000h
008E68D3: jnl 8E68F5h
008E68D5: push 000001C0h
008E68DA: push 00448930h
008E68DF: push [ebp+08h]
008E68E2: push var_000000C4
008E68E8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008E68ED: mov var_00000140, eax
008E68F3: jmp 8E68FCh
008E68F5: and var_00000140, 00000000h
008E68FC: push var_24
008E68FF: call 004109DCh ; Val(arg_1)
008E6904: fstp real8 ptr var_000000C0
008E690A: push 00000000h
008E690C: push 00000000h
008E690E: push 00000001h
008E6910: push 00000000h
008E6912: lea eax, var_78
008E6915: push eax
008E6916: push 00000010h
008E6918: push 00000880h
008E691D: call 00410946h ; ReDim
008E6922: add esp, 0000001Ch
008E6925: mov eax, [ebp+08h]
008E6928: mov eax, [eax]
008E692A: push [ebp+08h]
008E692D: call [eax+00000304h]
008E6933: mov var_3C, eax
008E6936: mov var_44, 00000009h
008E693D: lea esi, var_44
008E6940: push 00000000h
008E6942: push var_78
008E6945: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008E694A: mov ecx, eax
008E694C: mov edx, esi
008E694E: call 00410940h ; msvbvm60.dll.__vbaVarZero
008E6953: mov edx, 0043DB38h ; x138
008E6958: lea ecx, var_28
008E695B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008E6960: lea eax, var_78
008E6963: push eax
008E6964: lea eax, var_28
008E6967: push eax
008E6968: fld real8 ptr var_000000C0
008E696E: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008E6973: push eax
008E6974: call 007A6910h
008E6979: lea eax, var_78
008E697C: push eax
008E697D: push 00000000h
008E697F: call 00410934h ; Erase
008E6984: lea eax, var_28
008E6987: push eax
008E6988: lea eax, var_24
008E698B: push eax
008E698C: push 00000002h
008E698E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E6993: add esp, 0000000Ch
008E6996: wait 
008E6997: push 008E6A1Bh
008E699C: jmp 8E69ECh
008E699E: lea eax, var_28
008E69A1: push eax
008E69A2: lea eax, var_24
008E69A5: push eax
008E69A6: push 00000002h
008E69A8: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008E69AD: add esp, 0000000Ch
008E69B0: lea eax, var_34
008E69B3: push eax
008E69B4: lea eax, var_30
008E69B7: push eax
008E69B8: lea eax, var_2C
008E69BB: push eax
008E69BC: push 00000003h
008E69BE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008E69C3: add esp, 00000010h
008E69C6: lea eax, var_74
008E69C9: push eax
008E69CA: lea eax, var_64
008E69CD: push eax
008E69CE: lea eax, var_54
008E69D1: push eax
008E69D2: lea eax, var_44
008E69D5: push eax
008E69D6: push 00000004h
008E69D8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008E69DD: add esp, 00000014h
008E69E0: lea eax, var_78
008E69E3: push eax
008E69E4: push 00000000h
008E69E6: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008E69EB: ret 
End Sub

Private sub unknown_8ED787
008ED787: push ebp
008ED788: mov ebp, esp
008ED78A: push ecx
008ED78B: push ecx
008ED78C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008ED791: mov eax, fs:[00h]
008ED797: push eax
008ED798: mov fs:[00000000h], esp
008ED79F: mov eax, 00000114h
008ED7A4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ED7A9: push ebx
008ED7AA: push esi
008ED7AB: push edi
008ED7AC: mov var_08, esp
008ED7AF: mov var_04, 004105E0h
008ED7B6: push 00000000h
008ED7B8: push 00000003h
008ED7BA: push 00440E48h
008ED7BF: push 00000000h
008ED7C1: push 00000018h
008ED7C3: mov eax, [ebp+08h]
008ED7C6: mov eax, [eax]
008ED7C8: push [ebp+08h]
008ED7CB: call [eax+00000328h]
008ED7D1: push eax
008ED7D2: lea eax, var_2C
008ED7D5: push eax
008ED7D6: call 00410A84h ; Set (object)
008ED7DB: push eax
008ED7DC: lea eax, var_44
008ED7DF: push eax
008ED7E0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ED7E5: add esp, 00000010h
008ED7E8: push eax
008ED7E9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ED7EE: push eax
008ED7EF: lea eax, var_30
008ED7F2: push eax
008ED7F3: call 00410A84h ; Set (object)
008ED7F8: push eax
008ED7F9: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008ED7FE: add esp, 0000000Ch
008ED801: lea eax, var_30
008ED804: push eax
008ED805: lea eax, var_2C
008ED808: push eax
008ED809: push 00000002h
008ED80B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008ED810: add esp, 0000000Ch
008ED813: lea ecx, var_44
008ED816: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008ED81B: mov eax, [ebp+0Ch]
008ED81E: mov ax, [eax]
008ED821: mov var_000000F8, ax
008ED828: movsx eax, word ptr var_000000F8
008ED82F: mov var_00000108, eax
008ED835: cmp var_00000108, 00000000h
008ED83C: jz 8ED850h
008ED83E: cmp var_00000108, 00000001h
008ED845: jz 008ED980h
008ED84B: jmp 008EE231h
008ED850: lea eax, var_24
008ED853: push eax
008ED854: mov eax, [ebp+08h]
008ED857: mov eax, [eax]
008ED859: push [ebp+08h]
008ED85C: call [eax+000001C0h]
008ED862: fclex 
008ED864: mov var_000000B4, eax
008ED86A: cmp var_000000B4, 00000000h
008ED871: jnl 8ED893h
008ED873: push 000001C0h
008ED878: push 00448930h
008ED87D: push [ebp+08h]
008ED880: push var_000000B4
008ED886: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ED88B: mov var_0000010C, eax
008ED891: jmp 8ED89Ah
008ED893: and var_0000010C, 00000000h
008ED89A: push var_24
008ED89D: call 004109DCh ; Val(arg_1)
008ED8A2: fstp real8 ptr var_000000B0
008ED8A8: push 00000000h
008ED8AA: push 00000002h
008ED8AC: push 00000001h
008ED8AE: push 00000000h
008ED8B0: lea eax, var_68
008ED8B3: push eax
008ED8B4: push 00000010h
008ED8B6: push 00000880h
008ED8BB: call 00410946h ; ReDim
008ED8C0: add esp, 0000001Ch
008ED8C3: and var_70, 00000000h
008ED8C7: mov var_78, 00000002h
008ED8CE: lea esi, var_78
008ED8D1: push 00000000h
008ED8D3: push var_68
008ED8D6: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008ED8DB: mov ecx, eax
008ED8DD: mov edx, esi
008ED8DF: call 00410922h ; msvbvm60.dll.__vbaVarMove
008ED8E4: mov var_80, 00000001h
008ED8EB: mov var_00000088, 00000002h
008ED8F5: lea esi, var_00000088
008ED8FB: push 00000001h
008ED8FD: push var_68
008ED900: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008ED905: mov ecx, eax
008ED907: mov edx, esi
008ED909: call 00410922h ; msvbvm60.dll.__vbaVarMove
008ED90E: and var_00000090, 00000000h
008ED915: mov var_00000098, 00000002h
008ED91F: lea esi, var_00000098
008ED925: push 00000002h
008ED927: push var_68
008ED92A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008ED92F: mov ecx, eax
008ED931: mov edx, esi
008ED933: call 00410922h ; msvbvm60.dll.__vbaVarMove
008ED938: mov edx, 0043DB00h ; x135
008ED93D: lea ecx, var_28
008ED940: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008ED945: lea eax, var_68
008ED948: push eax
008ED949: lea eax, var_28
008ED94C: push eax
008ED94D: fld real8 ptr var_000000B0
008ED953: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008ED958: push eax
008ED959: call 007A6910h
008ED95E: lea eax, var_68
008ED961: push eax
008ED962: push 00000000h
008ED964: call 00410934h ; Erase
008ED969: lea eax, var_28
008ED96C: push eax
008ED96D: lea eax, var_24
008ED970: push eax
008ED971: push 00000002h
008ED973: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008ED978: add esp, 0000000Ch
008ED97B: jmp 008EE231h
008ED980: cmp word ptr [008F2430h], FFFFh
008ED988: jnz 008EDDE2h
008ED98E: mov var_70, 00000001h
008ED995: mov var_78, 00000002h
008ED99C: cmp [008F2010h], 00000000h
008ED9A3: jnz 8ED9C0h
008ED9A5: push 008F2010h
008ED9AA: push 00433984h
008ED9AF: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008ED9B4: mov var_00000110, 008F2010h
008ED9BE: jmp 8ED9CAh
008ED9C0: mov var_00000110, 008F2010h
008ED9CA: push 00000000h
008ED9CC: push 00000001h
008ED9CE: push 00440E48h
008ED9D3: push 00000000h
008ED9D5: push 00000018h
008ED9D7: mov eax, var_00000110
008ED9DD: mov eax, [eax]
008ED9DF: mov ecx, var_00000110
008ED9E5: mov ecx, [ecx]
008ED9E7: mov ecx, [ecx]
008ED9E9: push eax
008ED9EA: call [ecx+0000054Ch]
008ED9F0: push eax
008ED9F1: lea eax, var_2C
008ED9F4: push eax
008ED9F5: call 00410A84h ; Set (object)
008ED9FA: push eax
008ED9FB: lea eax, var_44
008ED9FE: push eax
008ED9FF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EDA04: add esp, 00000010h
008EDA07: push eax
008EDA08: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EDA0D: push eax
008EDA0E: lea eax, var_30
008EDA11: push eax
008EDA12: call 00410A84h ; Set (object)
008EDA17: push eax
008EDA18: lea eax, var_54
008EDA1B: push eax
008EDA1C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EDA21: add esp, 00000010h
008EDA24: push eax
008EDA25: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EDA2A: mov var_80, eax
008EDA2D: mov var_00000088, 00000003h
008EDA37: mov var_00000090, 00000001h
008EDA41: mov var_00000098, 00000002h
008EDA4B: lea eax, var_78
008EDA4E: push eax
008EDA4F: lea eax, var_00000088
008EDA55: push eax
008EDA56: lea eax, var_00000098
008EDA5C: push eax
008EDA5D: lea eax, var_000000D4
008EDA63: push eax
008EDA64: lea eax, var_000000C4
008EDA6A: push eax
008EDA6B: lea eax, var_20
008EDA6E: push eax
008EDA6F: call 00410A3Ch ; For
008EDA74: mov var_00000100, eax
008EDA7A: lea eax, var_30
008EDA7D: push eax
008EDA7E: lea eax, var_2C
008EDA81: push eax
008EDA82: push 00000002h
008EDA84: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EDA89: add esp, 0000000Ch
008EDA8C: lea eax, var_54
008EDA8F: push eax
008EDA90: lea eax, var_44
008EDA93: push eax
008EDA94: push 00000002h
008EDA96: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EDA9B: add esp, 0000000Ch
008EDA9E: jmp 008EDDD0h
008EDAA3: lea eax, var_20
008EDAA6: mov var_70, eax
008EDAA9: mov var_78, 0000400Ch
008EDAB0: cmp [008F2010h], 00000000h
008EDAB7: jnz 8EDAD4h
008EDAB9: push 008F2010h
008EDABE: push 00433984h
008EDAC3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EDAC8: mov var_00000114, 008F2010h
008EDAD2: jmp 8EDADEh
008EDAD4: mov var_00000114, 008F2010h
008EDADE: push 00000000h
008EDAE0: push 00000004h
008EDAE2: push 00440E58h
008EDAE7: push 00000010h
008EDAE9: pop eax
008EDAEA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EDAEF: lea esi, var_78
008EDAF2: mov edi, esp
008EDAF4: movsd 
008EDAF5: movsd 
008EDAF6: movsd 
008EDAF7: movsd 
008EDAF8: push 00000001h
008EDAFA: push 00000000h
008EDAFC: push 00440E48h
008EDB01: push 00000000h
008EDB03: push 00000018h
008EDB05: mov eax, var_00000114
008EDB0B: mov eax, [eax]
008EDB0D: mov ecx, var_00000114
008EDB13: mov ecx, [ecx]
008EDB15: mov ecx, [ecx]
008EDB17: push eax
008EDB18: call [ecx+0000054Ch]
008EDB1E: push eax
008EDB1F: lea eax, var_2C
008EDB22: push eax
008EDB23: call 00410A84h ; Set (object)
008EDB28: push eax
008EDB29: lea eax, var_44
008EDB2C: push eax
008EDB2D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EDB32: add esp, 00000010h
008EDB35: push eax
008EDB36: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EDB3B: push eax
008EDB3C: lea eax, var_30
008EDB3F: push eax
008EDB40: call 00410A84h ; Set (object)
008EDB45: push eax
008EDB46: lea eax, var_54
008EDB49: push eax
008EDB4A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EDB4F: add esp, 00000020h
008EDB52: push eax
008EDB53: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EDB58: push eax
008EDB59: lea eax, var_34
008EDB5C: push eax
008EDB5D: call 00410A84h ; Set (object)
008EDB62: push eax
008EDB63: lea eax, var_64
008EDB66: push eax
008EDB67: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EDB6C: add esp, 00000010h
008EDB6F: push eax
008EDB70: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008EDB75: sub ax, FFFFh
008EDB79: neg ax
008EDB7C: sbb eax, eax
008EDB7E: inc eax
008EDB7F: neg eax
008EDB81: mov var_000000B4, ax
008EDB88: lea eax, var_34
008EDB8B: push eax
008EDB8C: lea eax, var_30
008EDB8F: push eax
008EDB90: lea eax, var_2C
008EDB93: push eax
008EDB94: push 00000003h
008EDB96: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EDB9B: add esp, 00000010h
008EDB9E: lea eax, var_64
008EDBA1: push eax
008EDBA2: lea eax, var_54
008EDBA5: push eax
008EDBA6: lea eax, var_44
008EDBA9: push eax
008EDBAA: push 00000003h
008EDBAC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EDBB1: add esp, 00000010h
008EDBB4: movsx eax, word ptr var_000000B4
008EDBBB: test eax, eax
008EDBBD: jz 008EDDB3h
008EDBC3: lea eax, var_20
008EDBC6: mov var_70, eax
008EDBC9: mov var_78, 0000400Ch
008EDBD0: cmp [008F2010h], 00000000h
008EDBD7: jnz 8EDBF4h
008EDBD9: push 008F2010h
008EDBDE: push 00433984h
008EDBE3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EDBE8: mov var_00000118, 008F2010h
008EDBF2: jmp 8EDBFEh
008EDBF4: mov var_00000118, 008F2010h
008EDBFE: push 00000000h
008EDC00: push 00000014h
008EDC02: push 00440E58h
008EDC07: push 00000010h
008EDC09: pop eax
008EDC0A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EDC0F: lea esi, var_78
008EDC12: mov edi, esp
008EDC14: movsd 
008EDC15: movsd 
008EDC16: movsd 
008EDC17: movsd 
008EDC18: push 00000001h
008EDC1A: push 00000000h
008EDC1C: push 00440E48h
008EDC21: push 00000000h
008EDC23: push 00000018h
008EDC25: mov eax, var_00000118
008EDC2B: mov eax, [eax]
008EDC2D: mov ecx, var_00000118
008EDC33: mov ecx, [ecx]
008EDC35: mov ecx, [ecx]
008EDC37: push eax
008EDC38: call [ecx+0000054Ch]
008EDC3E: push eax
008EDC3F: lea eax, var_2C
008EDC42: push eax
008EDC43: call 00410A84h ; Set (object)
008EDC48: push eax
008EDC49: lea eax, var_44
008EDC4C: push eax
008EDC4D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EDC52: add esp, 00000010h
008EDC55: push eax
008EDC56: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EDC5B: push eax
008EDC5C: lea eax, var_30
008EDC5F: push eax
008EDC60: call 00410A84h ; Set (object)
008EDC65: push eax
008EDC66: lea eax, var_54
008EDC69: push eax
008EDC6A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EDC6F: add esp, 00000020h
008EDC72: push eax
008EDC73: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EDC78: push eax
008EDC79: lea eax, var_34
008EDC7C: push eax
008EDC7D: call 00410A84h ; Set (object)
008EDC82: push eax
008EDC83: lea eax, var_64
008EDC86: push eax
008EDC87: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EDC8C: add esp, 00000010h
008EDC8F: push eax
008EDC90: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008EDC95: mov edx, eax
008EDC97: lea ecx, var_24
008EDC9A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EDC9F: push eax
008EDCA0: call 004109DCh ; Val(arg_1)
008EDCA5: fstp real8 ptr var_000000B0
008EDCAB: push 00000000h
008EDCAD: push 00000002h
008EDCAF: push 00000001h
008EDCB1: push 00000000h
008EDCB3: lea eax, var_68
008EDCB6: push eax
008EDCB7: push 00000010h
008EDCB9: push 00000880h
008EDCBE: call 00410946h ; ReDim
008EDCC3: add esp, 0000001Ch
008EDCC6: and var_80, 00000000h
008EDCCA: mov var_00000088, 00000002h
008EDCD4: lea esi, var_00000088
008EDCDA: push 00000000h
008EDCDC: push var_68
008EDCDF: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EDCE4: mov ecx, eax
008EDCE6: mov edx, esi
008EDCE8: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EDCED: mov var_00000090, 00000001h
008EDCF7: mov var_00000098, 00000002h
008EDD01: lea esi, var_00000098
008EDD07: push 00000001h
008EDD09: push var_68
008EDD0C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EDD11: mov ecx, eax
008EDD13: mov edx, esi
008EDD15: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EDD1A: and var_000000A0, 00000000h
008EDD21: mov var_000000A8, 00000002h
008EDD2B: lea esi, var_000000A8
008EDD31: push 00000002h
008EDD33: push var_68
008EDD36: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EDD3B: mov ecx, eax
008EDD3D: mov edx, esi
008EDD3F: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EDD44: mov edx, 0043DB00h ; x135
008EDD49: lea ecx, var_28
008EDD4C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008EDD51: lea eax, var_68
008EDD54: push eax
008EDD55: lea eax, var_28
008EDD58: push eax
008EDD59: fld real8 ptr var_000000B0
008EDD5F: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008EDD64: push eax
008EDD65: call 007A6910h
008EDD6A: lea eax, var_68
008EDD6D: push eax
008EDD6E: push 00000000h
008EDD70: call 00410934h ; Erase
008EDD75: lea eax, var_28
008EDD78: push eax
008EDD79: lea eax, var_24
008EDD7C: push eax
008EDD7D: push 00000002h
008EDD7F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EDD84: add esp, 0000000Ch
008EDD87: lea eax, var_34
008EDD8A: push eax
008EDD8B: lea eax, var_30
008EDD8E: push eax
008EDD8F: lea eax, var_2C
008EDD92: push eax
008EDD93: push 00000003h
008EDD95: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EDD9A: add esp, 00000010h
008EDD9D: lea eax, var_64
008EDDA0: push eax
008EDDA1: lea eax, var_54
008EDDA4: push eax
008EDDA5: lea eax, var_44
008EDDA8: push eax
008EDDA9: push 00000003h
008EDDAB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EDDB0: add esp, 00000010h
008EDDB3: lea eax, var_000000D4
008EDDB9: push eax
008EDDBA: lea eax, var_000000C4
008EDDC0: push eax
008EDDC1: lea eax, var_20
008EDDC4: push eax
008EDDC5: call 00410A36h ; Next
008EDDCA: mov var_00000100, eax
008EDDD0: cmp var_00000100, 00000000h
008EDDD7: jnz 008EDAA3h
008EDDDD: jmp 008EE231h
008EDDE2: mov var_70, 00000001h
008EDDE9: mov var_78, 00000002h
008EDDF0: cmp [008F2010h], 00000000h
008EDDF7: jnz 8EDE14h
008EDDF9: push 008F2010h
008EDDFE: push 00433984h
008EDE03: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EDE08: mov var_0000011C, 008F2010h
008EDE12: jmp 8EDE1Eh
008EDE14: mov var_0000011C, 008F2010h
008EDE1E: push 00000000h
008EDE20: push 00000001h
008EDE22: push 00440E48h
008EDE27: push 00000000h
008EDE29: push 00000018h
008EDE2B: mov eax, var_0000011C
008EDE31: mov eax, [eax]
008EDE33: mov ecx, var_0000011C
008EDE39: mov ecx, [ecx]
008EDE3B: mov ecx, [ecx]
008EDE3D: push eax
008EDE3E: call [ecx+00000550h]
008EDE44: push eax
008EDE45: lea eax, var_2C
008EDE48: push eax
008EDE49: call 00410A84h ; Set (object)
008EDE4E: push eax
008EDE4F: lea eax, var_44
008EDE52: push eax
008EDE53: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EDE58: add esp, 00000010h
008EDE5B: push eax
008EDE5C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EDE61: push eax
008EDE62: lea eax, var_30
008EDE65: push eax
008EDE66: call 00410A84h ; Set (object)
008EDE6B: push eax
008EDE6C: lea eax, var_54
008EDE6F: push eax
008EDE70: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EDE75: add esp, 00000010h
008EDE78: push eax
008EDE79: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008EDE7E: mov var_80, eax
008EDE81: mov var_00000088, 00000003h
008EDE8B: mov var_00000090, 00000001h
008EDE95: mov var_00000098, 00000002h
008EDE9F: lea eax, var_78
008EDEA2: push eax
008EDEA3: lea eax, var_00000088
008EDEA9: push eax
008EDEAA: lea eax, var_00000098
008EDEB0: push eax
008EDEB1: lea eax, var_000000F4
008EDEB7: push eax
008EDEB8: lea eax, var_000000E4
008EDEBE: push eax
008EDEBF: lea eax, var_20
008EDEC2: push eax
008EDEC3: call 00410A3Ch ; For
008EDEC8: mov var_00000104, eax
008EDECE: lea eax, var_30
008EDED1: push eax
008EDED2: lea eax, var_2C
008EDED5: push eax
008EDED6: push 00000002h
008EDED8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EDEDD: add esp, 0000000Ch
008EDEE0: lea eax, var_54
008EDEE3: push eax
008EDEE4: lea eax, var_44
008EDEE7: push eax
008EDEE8: push 00000002h
008EDEEA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EDEEF: add esp, 0000000Ch
008EDEF2: jmp 008EE224h
008EDEF7: lea eax, var_20
008EDEFA: mov var_70, eax
008EDEFD: mov var_78, 0000400Ch
008EDF04: cmp [008F2010h], 00000000h
008EDF0B: jnz 8EDF28h
008EDF0D: push 008F2010h
008EDF12: push 00433984h
008EDF17: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EDF1C: mov var_00000120, 008F2010h
008EDF26: jmp 8EDF32h
008EDF28: mov var_00000120, 008F2010h
008EDF32: push 00000000h
008EDF34: push 00000004h
008EDF36: push 00440E58h
008EDF3B: push 00000010h
008EDF3D: pop eax
008EDF3E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EDF43: lea esi, var_78
008EDF46: mov edi, esp
008EDF48: movsd 
008EDF49: movsd 
008EDF4A: movsd 
008EDF4B: movsd 
008EDF4C: push 00000001h
008EDF4E: push 00000000h
008EDF50: push 00440E48h
008EDF55: push 00000000h
008EDF57: push 00000018h
008EDF59: mov eax, var_00000120
008EDF5F: mov eax, [eax]
008EDF61: mov ecx, var_00000120
008EDF67: mov ecx, [ecx]
008EDF69: mov ecx, [ecx]
008EDF6B: push eax
008EDF6C: call [ecx+00000550h]
008EDF72: push eax
008EDF73: lea eax, var_2C
008EDF76: push eax
008EDF77: call 00410A84h ; Set (object)
008EDF7C: push eax
008EDF7D: lea eax, var_44
008EDF80: push eax
008EDF81: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EDF86: add esp, 00000010h
008EDF89: push eax
008EDF8A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EDF8F: push eax
008EDF90: lea eax, var_30
008EDF93: push eax
008EDF94: call 00410A84h ; Set (object)
008EDF99: push eax
008EDF9A: lea eax, var_54
008EDF9D: push eax
008EDF9E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EDFA3: add esp, 00000020h
008EDFA6: push eax
008EDFA7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EDFAC: push eax
008EDFAD: lea eax, var_34
008EDFB0: push eax
008EDFB1: call 00410A84h ; Set (object)
008EDFB6: push eax
008EDFB7: lea eax, var_64
008EDFBA: push eax
008EDFBB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EDFC0: add esp, 00000010h
008EDFC3: push eax
008EDFC4: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008EDFC9: sub ax, FFFFh
008EDFCD: neg ax
008EDFD0: sbb eax, eax
008EDFD2: inc eax
008EDFD3: neg eax
008EDFD5: mov var_000000B4, ax
008EDFDC: lea eax, var_34
008EDFDF: push eax
008EDFE0: lea eax, var_30
008EDFE3: push eax
008EDFE4: lea eax, var_2C
008EDFE7: push eax
008EDFE8: push 00000003h
008EDFEA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EDFEF: add esp, 00000010h
008EDFF2: lea eax, var_64
008EDFF5: push eax
008EDFF6: lea eax, var_54
008EDFF9: push eax
008EDFFA: lea eax, var_44
008EDFFD: push eax
008EDFFE: push 00000003h
008EE000: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EE005: add esp, 00000010h
008EE008: movsx eax, word ptr var_000000B4
008EE00F: test eax, eax
008EE011: jz 008EE207h
008EE017: lea eax, var_20
008EE01A: mov var_70, eax
008EE01D: mov var_78, 0000400Ch
008EE024: cmp [008F2010h], 00000000h
008EE02B: jnz 8EE048h
008EE02D: push 008F2010h
008EE032: push 00433984h
008EE037: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008EE03C: mov var_00000124, 008F2010h
008EE046: jmp 8EE052h
008EE048: mov var_00000124, 008F2010h
008EE052: push 00000000h
008EE054: push 00000014h
008EE056: push 00440E58h
008EE05B: push 00000010h
008EE05D: pop eax
008EE05E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008EE063: lea esi, var_78
008EE066: mov edi, esp
008EE068: movsd 
008EE069: movsd 
008EE06A: movsd 
008EE06B: movsd 
008EE06C: push 00000001h
008EE06E: push 00000000h
008EE070: push 00440E48h
008EE075: push 00000000h
008EE077: push 00000018h
008EE079: mov eax, var_00000124
008EE07F: mov eax, [eax]
008EE081: mov ecx, var_00000124
008EE087: mov ecx, [ecx]
008EE089: mov ecx, [ecx]
008EE08B: push eax
008EE08C: call [ecx+00000550h]
008EE092: push eax
008EE093: lea eax, var_2C
008EE096: push eax
008EE097: call 00410A84h ; Set (object)
008EE09C: push eax
008EE09D: lea eax, var_44
008EE0A0: push eax
008EE0A1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EE0A6: add esp, 00000010h
008EE0A9: push eax
008EE0AA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EE0AF: push eax
008EE0B0: lea eax, var_30
008EE0B3: push eax
008EE0B4: call 00410A84h ; Set (object)
008EE0B9: push eax
008EE0BA: lea eax, var_54
008EE0BD: push eax
008EE0BE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EE0C3: add esp, 00000020h
008EE0C6: push eax
008EE0C7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008EE0CC: push eax
008EE0CD: lea eax, var_34
008EE0D0: push eax
008EE0D1: call 00410A84h ; Set (object)
008EE0D6: push eax
008EE0D7: lea eax, var_64
008EE0DA: push eax
008EE0DB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008EE0E0: add esp, 00000010h
008EE0E3: push eax
008EE0E4: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008EE0E9: mov edx, eax
008EE0EB: lea ecx, var_24
008EE0EE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008EE0F3: push eax
008EE0F4: call 004109DCh ; Val(arg_1)
008EE0F9: fstp real8 ptr var_000000B0
008EE0FF: push 00000000h
008EE101: push 00000002h
008EE103: push 00000001h
008EE105: push 00000000h
008EE107: lea eax, var_68
008EE10A: push eax
008EE10B: push 00000010h
008EE10D: push 00000880h
008EE112: call 00410946h ; ReDim
008EE117: add esp, 0000001Ch
008EE11A: and var_80, 00000000h
008EE11E: mov var_00000088, 00000002h
008EE128: lea esi, var_00000088
008EE12E: push 00000000h
008EE130: push var_68
008EE133: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EE138: mov ecx, eax
008EE13A: mov edx, esi
008EE13C: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EE141: mov var_00000090, 00000001h
008EE14B: mov var_00000098, 00000002h
008EE155: lea esi, var_00000098
008EE15B: push 00000001h
008EE15D: push var_68
008EE160: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EE165: mov ecx, eax
008EE167: mov edx, esi
008EE169: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EE16E: and var_000000A0, 00000000h
008EE175: mov var_000000A8, 00000002h
008EE17F: lea esi, var_000000A8
008EE185: push 00000002h
008EE187: push var_68
008EE18A: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008EE18F: mov ecx, eax
008EE191: mov edx, esi
008EE193: call 00410922h ; msvbvm60.dll.__vbaVarMove
008EE198: mov edx, 0043DB00h ; x135
008EE19D: lea ecx, var_28
008EE1A0: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008EE1A5: lea eax, var_68
008EE1A8: push eax
008EE1A9: lea eax, var_28
008EE1AC: push eax
008EE1AD: fld real8 ptr var_000000B0
008EE1B3: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008EE1B8: push eax
008EE1B9: call 007A6910h
008EE1BE: lea eax, var_68
008EE1C1: push eax
008EE1C2: push 00000000h
008EE1C4: call 00410934h ; Erase
008EE1C9: lea eax, var_28
008EE1CC: push eax
008EE1CD: lea eax, var_24
008EE1D0: push eax
008EE1D1: push 00000002h
008EE1D3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EE1D8: add esp, 0000000Ch
008EE1DB: lea eax, var_34
008EE1DE: push eax
008EE1DF: lea eax, var_30
008EE1E2: push eax
008EE1E3: lea eax, var_2C
008EE1E6: push eax
008EE1E7: push 00000003h
008EE1E9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EE1EE: add esp, 00000010h
008EE1F1: lea eax, var_64
008EE1F4: push eax
008EE1F5: lea eax, var_54
008EE1F8: push eax
008EE1F9: lea eax, var_44
008EE1FC: push eax
008EE1FD: push 00000003h
008EE1FF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EE204: add esp, 00000010h
008EE207: lea eax, var_000000F4
008EE20D: push eax
008EE20E: lea eax, var_000000E4
008EE214: push eax
008EE215: lea eax, var_20
008EE218: push eax
008EE219: call 00410A36h ; Next
008EE21E: mov var_00000104, eax
008EE224: cmp var_00000104, 00000000h
008EE22B: jnz 008EDEF7h
008EE231: wait 
008EE232: push 008EE2B2h
008EE237: jmp 8EE283h
008EE239: lea eax, var_28
008EE23C: push eax
008EE23D: lea eax, var_24
008EE240: push eax
008EE241: push 00000002h
008EE243: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008EE248: add esp, 0000000Ch
008EE24B: lea eax, var_34
008EE24E: push eax
008EE24F: lea eax, var_30
008EE252: push eax
008EE253: lea eax, var_2C
008EE256: push eax
008EE257: push 00000003h
008EE259: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008EE25E: add esp, 00000010h
008EE261: lea eax, var_64
008EE264: push eax
008EE265: lea eax, var_54
008EE268: push eax
008EE269: lea eax, var_44
008EE26C: push eax
008EE26D: push 00000003h
008EE26F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008EE274: add esp, 00000010h
008EE277: lea eax, var_68
008EE27A: push eax
008EE27B: push 00000000h
008EE27D: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008EE282: ret 
End Sub

