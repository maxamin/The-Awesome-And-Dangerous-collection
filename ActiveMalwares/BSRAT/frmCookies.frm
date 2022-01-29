VERSION 5.00
Begin VB.Form frmCookies
  Caption = "Cookie manager"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmCookies.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 12765
  ClientHeight = 7905
  StartUpPosition = 1 'CenterOwner
  Begin XtremeSuiteControls.ListView lstCookies
    Left = 0
    Top = 0
    Width = 12735
    Height = 5535
    TabIndex = 0
  End
  Begin XtremeSuiteControls.GroupBox gbCommands
    Left = 0
    Top = 5640
    Width = 12735
    Height = 1935
    TabIndex = 1
    Begin VB.TextBox txtURL
      Left = 600
      Top = 240
      Width = 5295
      Height = 285
      Text = "http://website.com/example.htm"
      TabIndex = 3
      MaxLength = 1024
    End
    Begin VB.TextBox txtCookie
      Left = 6000
      Top = 240
      Width = 5775
      Height = 1605
      Text = "val1=somevalue\nval2=somevalue\nval3=somevalue\n"
      TabIndex = 2
      MultiLine = -1  'True
      ScrollBars = 2
    End
    Begin VB.Timer tmrInfo
      Interval = 100
      Left = 12240
      Top = 0
    End
    Begin XtremeSuiteControls.PushButton cmdGet
      Left = 120
      Top = 1440
      Width = 735
      Height = 375
      TabIndex = 4
    End
    Begin XtremeSuiteControls.PushButton cmdSet
      Left = 11880
      Top = 1440
      Width = 735
      Height = 375
      TabIndex = 7
    End
    Begin VB.Label lblMSN
      Caption = "URL:"
      Left = 120
      Top = 250
      Width = 375
      Height = 255
      TabIndex = 5
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
    End
  End
  Begin MSComctlLib.StatusBar sbStatus
    Left = 0
    Top = 7590
    Width = 12765
    Height = 315
    TabIndex = 6
  End
  Begin VB.Menu mnuMenuCookies
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuCookies
      Index = 0
      Caption = "Copy"
      Begin VB.Menu mnuCookiesCopy
        Index = 0
        Caption = "All"
      End
      Begin VB.Menu mnuCookiesCopy
        Index = 1
        Caption = "Row"
      End
      Begin VB.Menu mnuCookiesCopy
        Index = 2
        Caption = "Cookie"
      End
    End
    Begin VB.Menu mnuCookies
      Index = 1
      Caption = "Save to file"
    End
    Begin VB.Menu mnuCookies
      Index = 2
      Caption = "-"
    End
    Begin VB.Menu mnuCookies
      Index = 3
      Caption = "Clear"
    End
  End
End

Attribute VB_Name = "frmCookies"


Private sub tmrInfo__8AC4A1
008AC4A1: push ebp
008AC4A2: mov ebp, esp
008AC4A4: sub esp, 0000000Ch
008AC4A7: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008AC4AC: mov eax, fs:[00h]
008AC4B2: push eax
008AC4B3: mov fs:[00000000h], esp
008AC4BA: mov eax, 000000D4h
008AC4BF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AC4C4: push ebx
008AC4C5: push esi
008AC4C6: push edi
008AC4C7: mov var_0C, esp
008AC4CA: mov var_08, 0040E880h
008AC4D1: mov eax, [ebp+08h]
008AC4D4: and eax, 00000001h
008AC4D7: mov var_04, eax
008AC4DA: mov eax, [ebp+08h]
008AC4DD: and al, FEh
008AC4DF: mov [ebp+08h], eax
008AC4E2: mov eax, [ebp+08h]
008AC4E5: mov eax, [eax]
008AC4E7: push [ebp+08h]
008AC4EA: call [eax+04h]
008AC4ED: movsx eax, word ptr [8F2430h]
008AC4F4: test eax, eax
008AC4F6: jnz 008AC7F4h
008AC4FC: cmp [008F2010h], 00000000h
008AC503: jnz 8AC520h
008AC505: push 008F2010h
008AC50A: push 00433984h
008AC50F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008AC514: mov var_000000C4, 008F2010h
008AC51E: jmp 8AC52Ah
008AC520: mov var_000000C4, 008F2010h
008AC52A: push 00000000h
008AC52C: push 00000001h
008AC52E: push 00440E48h
008AC533: push 00000000h
008AC535: push 00000018h
008AC537: mov eax, var_000000C4
008AC53D: mov eax, [eax]
008AC53F: mov ecx, var_000000C4
008AC545: mov ecx, [ecx]
008AC547: mov ecx, [ecx]
008AC549: push eax
008AC54A: call [ecx+00000550h]
008AC550: push eax
008AC551: lea eax, var_28
008AC554: push eax
008AC555: call 00410A84h ; Set (object)
008AC55A: push eax
008AC55B: lea eax, var_48
008AC55E: push eax
008AC55F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AC564: add esp, 00000010h
008AC567: push eax
008AC568: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AC56D: push eax
008AC56E: lea eax, var_2C
008AC571: push eax
008AC572: call 00410A84h ; Set (object)
008AC577: push eax
008AC578: lea eax, var_58
008AC57B: push eax
008AC57C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AC581: add esp, 00000010h
008AC584: push eax
008AC585: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008AC58A: xor ecx, ecx
008AC58C: test eax, eax
008AC58E: setnle cl
008AC591: neg ecx
008AC593: mov var_0000009C, cx
008AC59A: lea eax, var_2C
008AC59D: push eax
008AC59E: lea eax, var_28
008AC5A1: push eax
008AC5A2: push 00000002h
008AC5A4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AC5A9: add esp, 0000000Ch
008AC5AC: lea eax, var_58
008AC5AF: push eax
008AC5B0: lea eax, var_48
008AC5B3: push eax
008AC5B4: push 00000002h
008AC5B6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AC5BB: add esp, 0000000Ch
008AC5BE: movsx eax, word ptr var_0000009C
008AC5C5: test eax, eax
008AC5C7: jz 008AC7EFh
008AC5CD: cmp [008F2010h], 00000000h
008AC5D4: jnz 8AC5F1h
008AC5D6: push 008F2010h
008AC5DB: push 00433984h
008AC5E0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008AC5E5: mov var_000000C8, 008F2010h
008AC5EF: jmp 8AC5FBh
008AC5F1: mov var_000000C8, 008F2010h
008AC5FB: push 00000000h
008AC5FD: push 00000001h
008AC5FF: push 00440E48h
008AC604: push 00000000h
008AC606: push 00000018h
008AC608: mov eax, var_000000C8
008AC60E: mov eax, [eax]
008AC610: mov ecx, var_000000C8
008AC616: mov ecx, [ecx]
008AC618: mov ecx, [ecx]
008AC61A: push eax
008AC61B: call [ecx+00000550h]
008AC621: push eax
008AC622: lea eax, var_28
008AC625: push eax
008AC626: call 00410A84h ; Set (object)
008AC62B: push eax
008AC62C: lea eax, var_48
008AC62F: push eax
008AC630: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AC635: add esp, 00000010h
008AC638: push eax
008AC639: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AC63E: push eax
008AC63F: lea eax, var_2C
008AC642: push eax
008AC643: call 00410A84h ; Set (object)
008AC648: push eax
008AC649: lea eax, var_58
008AC64C: push eax
008AC64D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AC652: add esp, 00000010h
008AC655: push eax
008AC656: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008AC65B: mov var_000000B0, eax
008AC661: mov var_000000AC, 00000001h
008AC66B: mov var_18, 00000001h
008AC672: lea eax, var_2C
008AC675: push eax
008AC676: lea eax, var_28
008AC679: push eax
008AC67A: push 00000002h
008AC67C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AC681: add esp, 0000000Ch
008AC684: lea eax, var_58
008AC687: push eax
008AC688: lea eax, var_48
008AC68B: push eax
008AC68C: push 00000002h
008AC68E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AC693: add esp, 0000000Ch
008AC696: jmp 8AC6AAh
008AC698: mov eax, var_18
008AC69B: add eax, var_000000AC
008AC6A1: jo 008ACE70h
008AC6A7: mov var_18, eax
008AC6AA: mov eax, var_18
008AC6AD: cmp eax, var_000000B0
008AC6B3: jnle 008AC7EFh
008AC6B9: mov eax, var_18
008AC6BC: mov var_80, eax
008AC6BF: mov var_00000088, 00000003h
008AC6C9: cmp [008F2010h], 00000000h
008AC6D0: jnz 8AC6EDh
008AC6D2: push 008F2010h
008AC6D7: push 00433984h
008AC6DC: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008AC6E1: mov var_000000CC, 008F2010h
008AC6EB: jmp 8AC6F7h
008AC6ED: mov var_000000CC, 008F2010h
008AC6F7: push 00000000h
008AC6F9: push 00000004h
008AC6FB: push 00440E58h
008AC700: push 00000010h
008AC702: pop eax
008AC703: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AC708: lea esi, var_00000088
008AC70E: mov edi, esp
008AC710: movsd 
008AC711: movsd 
008AC712: movsd 
008AC713: movsd 
008AC714: push 00000001h
008AC716: push 00000000h
008AC718: push 00440E48h
008AC71D: push 00000000h
008AC71F: push 00000018h
008AC721: mov eax, var_000000CC
008AC727: mov eax, [eax]
008AC729: mov ecx, var_000000CC
008AC72F: mov ecx, [ecx]
008AC731: mov ecx, [ecx]
008AC733: push eax
008AC734: call [ecx+00000550h]
008AC73A: push eax
008AC73B: lea eax, var_28
008AC73E: push eax
008AC73F: call 00410A84h ; Set (object)
008AC744: push eax
008AC745: lea eax, var_48
008AC748: push eax
008AC749: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AC74E: add esp, 00000010h
008AC751: push eax
008AC752: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AC757: push eax
008AC758: lea eax, var_2C
008AC75B: push eax
008AC75C: call 00410A84h ; Set (object)
008AC761: push eax
008AC762: lea eax, var_58
008AC765: push eax
008AC766: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AC76B: add esp, 00000020h
008AC76E: push eax
008AC76F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AC774: push eax
008AC775: lea eax, var_30
008AC778: push eax
008AC779: call 00410A84h ; Set (object)
008AC77E: push eax
008AC77F: lea eax, var_68
008AC782: push eax
008AC783: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AC788: add esp, 00000010h
008AC78B: push eax
008AC78C: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008AC791: sub ax, FFFFh
008AC795: neg ax
008AC798: sbb eax, eax
008AC79A: inc eax
008AC79B: neg eax
008AC79D: mov var_0000009C, ax
008AC7A4: lea eax, var_30
008AC7A7: push eax
008AC7A8: lea eax, var_2C
008AC7AB: push eax
008AC7AC: lea eax, var_28
008AC7AF: push eax
008AC7B0: push 00000003h
008AC7B2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AC7B7: add esp, 00000010h
008AC7BA: lea eax, var_68
008AC7BD: push eax
008AC7BE: lea eax, var_58
008AC7C1: push eax
008AC7C2: lea eax, var_48
008AC7C5: push eax
008AC7C6: push 00000003h
008AC7C8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AC7CD: add esp, 00000010h
008AC7D0: movsx eax, word ptr var_0000009C
008AC7D7: test eax, eax
008AC7D9: jz 8AC7EAh
008AC7DB: mov eax, var_1C
008AC7DE: add eax, 00000001h
008AC7E1: jo 008ACE70h
008AC7E7: mov var_1C, eax
008AC7EA: jmp 008AC698h
008AC7EF: jmp 008ACADAh
008AC7F4: cmp [008F2010h], 00000000h
008AC7FB: jnz 8AC818h
008AC7FD: push 008F2010h
008AC802: push 00433984h
008AC807: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008AC80C: mov var_000000D0, 008F2010h
008AC816: jmp 8AC822h
008AC818: mov var_000000D0, 008F2010h
008AC822: and var_80, 00000000h
008AC826: mov var_00000088, 00008002h
008AC830: push 00000000h
008AC832: push 0044A9C8h ; COUNT
008AC837: push 00000000h
008AC839: push 0044A9B0h ; lstFiltered
008AC83E: mov eax, var_000000D0
008AC844: mov eax, [eax]
008AC846: mov ecx, var_000000D0
008AC84C: mov ecx, [ecx]
008AC84E: mov ecx, [ecx]
008AC850: push eax
008AC851: call [ecx+00000550h]
008AC857: push eax
008AC858: lea eax, var_28
008AC85B: push eax
008AC85C: call 00410A84h ; Set (object)
008AC861: push eax
008AC862: lea eax, var_48
008AC865: push eax
008AC866: call 00410742h ; msvbvm60.dll.__vbaLateMemCallLd
008AC86B: add esp, 00000010h
008AC86E: push eax
008AC86F: lea eax, var_58
008AC872: push eax
008AC873: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
008AC878: add esp, 00000010h
008AC87B: push eax
008AC87C: lea eax, var_00000088
008AC882: push eax
008AC883: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
008AC888: mov var_0000009C, ax
008AC88F: lea ecx, var_28
008AC892: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AC897: lea eax, var_58
008AC89A: push eax
008AC89B: lea eax, var_48
008AC89E: push eax
008AC89F: push 00000002h
008AC8A1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AC8A6: add esp, 0000000Ch
008AC8A9: movsx eax, word ptr var_0000009C
008AC8B0: test eax, eax
008AC8B2: jz 008ACADAh
008AC8B8: cmp [008F2010h], 00000000h
008AC8BF: jnz 8AC8DCh
008AC8C1: push 008F2010h
008AC8C6: push 00433984h
008AC8CB: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008AC8D0: mov var_000000D4, 008F2010h
008AC8DA: jmp 8AC8E6h
008AC8DC: mov var_000000D4, 008F2010h
008AC8E6: push 00000000h
008AC8E8: push 00000001h
008AC8EA: push 00440E48h
008AC8EF: push 00000000h
008AC8F1: push 00000018h
008AC8F3: mov eax, var_000000D4
008AC8F9: mov eax, [eax]
008AC8FB: mov ecx, var_000000D4
008AC901: mov ecx, [ecx]
008AC903: mov ecx, [ecx]
008AC905: push eax
008AC906: call [ecx+0000054Ch]
008AC90C: push eax
008AC90D: lea eax, var_28
008AC910: push eax
008AC911: call 00410A84h ; Set (object)
008AC916: push eax
008AC917: lea eax, var_48
008AC91A: push eax
008AC91B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AC920: add esp, 00000010h
008AC923: push eax
008AC924: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AC929: push eax
008AC92A: lea eax, var_2C
008AC92D: push eax
008AC92E: call 00410A84h ; Set (object)
008AC933: push eax
008AC934: lea eax, var_58
008AC937: push eax
008AC938: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AC93D: add esp, 00000010h
008AC940: push eax
008AC941: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008AC946: mov var_000000B8, eax
008AC94C: mov var_000000B4, 00000001h
008AC956: mov var_18, 00000001h
008AC95D: lea eax, var_2C
008AC960: push eax
008AC961: lea eax, var_28
008AC964: push eax
008AC965: push 00000002h
008AC967: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AC96C: add esp, 0000000Ch
008AC96F: lea eax, var_58
008AC972: push eax
008AC973: lea eax, var_48
008AC976: push eax
008AC977: push 00000002h
008AC979: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AC97E: add esp, 0000000Ch
008AC981: jmp 8AC995h
008AC983: mov eax, var_18
008AC986: add eax, var_000000B4
008AC98C: jo 008ACE70h
008AC992: mov var_18, eax
008AC995: mov eax, var_18
008AC998: cmp eax, var_000000B8
008AC99E: jnle 008ACADAh
008AC9A4: mov eax, var_18
008AC9A7: mov var_80, eax
008AC9AA: mov var_00000088, 00000003h
008AC9B4: cmp [008F2010h], 00000000h
008AC9BB: jnz 8AC9D8h
008AC9BD: push 008F2010h
008AC9C2: push 00433984h
008AC9C7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008AC9CC: mov var_000000D8, 008F2010h
008AC9D6: jmp 8AC9E2h
008AC9D8: mov var_000000D8, 008F2010h
008AC9E2: push 00000000h
008AC9E4: push 00000004h
008AC9E6: push 00440E58h
008AC9EB: push 00000010h
008AC9ED: pop eax
008AC9EE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AC9F3: lea esi, var_00000088
008AC9F9: mov edi, esp
008AC9FB: movsd 
008AC9FC: movsd 
008AC9FD: movsd 
008AC9FE: movsd 
008AC9FF: push 00000001h
008ACA01: push 00000000h
008ACA03: push 00440E48h
008ACA08: push 00000000h
008ACA0A: push 00000018h
008ACA0C: mov eax, var_000000D8
008ACA12: mov eax, [eax]
008ACA14: mov ecx, var_000000D8
008ACA1A: mov ecx, [ecx]
008ACA1C: mov ecx, [ecx]
008ACA1E: push eax
008ACA1F: call [ecx+0000054Ch]
008ACA25: push eax
008ACA26: lea eax, var_28
008ACA29: push eax
008ACA2A: call 00410A84h ; Set (object)
008ACA2F: push eax
008ACA30: lea eax, var_48
008ACA33: push eax
008ACA34: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ACA39: add esp, 00000010h
008ACA3C: push eax
008ACA3D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ACA42: push eax
008ACA43: lea eax, var_2C
008ACA46: push eax
008ACA47: call 00410A84h ; Set (object)
008ACA4C: push eax
008ACA4D: lea eax, var_58
008ACA50: push eax
008ACA51: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ACA56: add esp, 00000020h
008ACA59: push eax
008ACA5A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ACA5F: push eax
008ACA60: lea eax, var_30
008ACA63: push eax
008ACA64: call 00410A84h ; Set (object)
008ACA69: push eax
008ACA6A: lea eax, var_68
008ACA6D: push eax
008ACA6E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ACA73: add esp, 00000010h
008ACA76: push eax
008ACA77: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008ACA7C: sub ax, FFFFh
008ACA80: neg ax
008ACA83: sbb eax, eax
008ACA85: inc eax
008ACA86: neg eax
008ACA88: mov var_0000009C, ax
008ACA8F: lea eax, var_30
008ACA92: push eax
008ACA93: lea eax, var_2C
008ACA96: push eax
008ACA97: lea eax, var_28
008ACA9A: push eax
008ACA9B: push 00000003h
008ACA9D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008ACAA2: add esp, 00000010h
008ACAA5: lea eax, var_68
008ACAA8: push eax
008ACAA9: lea eax, var_58
008ACAAC: push eax
008ACAAD: lea eax, var_48
008ACAB0: push eax
008ACAB1: push 00000003h
008ACAB3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008ACAB8: add esp, 00000010h
008ACABB: movsx eax, word ptr var_0000009C
008ACAC2: test eax, eax
008ACAC4: jz 8ACAD5h
008ACAC6: mov eax, var_1C
008ACAC9: add eax, 00000001h
008ACACC: jo 008ACE70h
008ACAD2: mov var_1C, eax
008ACAD5: jmp 008AC983h
008ACADA: push 0044A87Ch
008ACADF: push 00000000h
008ACAE1: push 00000003h
008ACAE3: mov eax, [ebp+08h]
008ACAE6: mov eax, [eax]
008ACAE8: push [ebp+08h]
008ACAEB: call [eax+00000328h]
008ACAF1: push eax
008ACAF2: lea eax, var_30
008ACAF5: push eax
008ACAF6: call 00410A84h ; Set (object)
008ACAFB: push eax
008ACAFC: lea eax, var_68
008ACAFF: push eax
008ACB00: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ACB05: add esp, 00000010h
008ACB08: push eax
008ACB09: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ACB0E: push eax
008ACB0F: lea eax, var_34
008ACB12: push eax
008ACB13: call 00410A84h ; Set (object)
008ACB18: mov var_0000009C, eax
008ACB1E: mov var_70, 00000001h
008ACB25: mov var_78, 00000002h
008ACB2C: lea eax, var_38
008ACB2F: push eax
008ACB30: lea eax, var_78
008ACB33: push eax
008ACB34: mov eax, var_0000009C
008ACB3A: mov eax, [eax]
008ACB3C: push var_0000009C
008ACB42: call [eax+24h]
008ACB45: fclex 
008ACB47: mov var_000000A0, eax
008ACB4D: cmp var_000000A0, 00000000h
008ACB54: jnl 8ACB76h
008ACB56: push 00000024h
008ACB58: push 0044A87Ch
008ACB5D: push var_0000009C
008ACB63: push var_000000A0
008ACB69: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ACB6E: mov var_000000DC, eax
008ACB74: jmp 8ACB7Dh
008ACB76: and var_000000DC, 00000000h
008ACB7D: mov eax, var_38
008ACB80: mov var_000000A4, eax
008ACB86: push 004599C0h ; Total:
008ACB8B: push 00000000h
008ACB8D: push 00000001h
008ACB8F: push 00440E48h
008ACB94: push 00000000h
008ACB96: push 00000018h
008ACB98: mov eax, [ebp+08h]
008ACB9B: mov eax, [eax]
008ACB9D: push [ebp+08h]
008ACBA0: call [eax+00000318h]
008ACBA6: push eax
008ACBA7: lea eax, var_28
008ACBAA: push eax
008ACBAB: call 00410A84h ; Set (object)
008ACBB0: push eax
008ACBB1: lea eax, var_48
008ACBB4: push eax
008ACBB5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ACBBA: add esp, 00000010h
008ACBBD: push eax
008ACBBE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ACBC3: push eax
008ACBC4: lea eax, var_2C
008ACBC7: push eax
008ACBC8: call 00410A84h ; Set (object)
008ACBCD: push eax
008ACBCE: lea eax, var_58
008ACBD1: push eax
008ACBD2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ACBD7: add esp, 00000010h
008ACBDA: push eax
008ACBDB: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008ACBE0: push eax
008ACBE1: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008ACBE6: mov edx, eax
008ACBE8: lea ecx, var_20
008ACBEB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ACBF0: push eax
008ACBF1: call 00410A18h ; &
008ACBF6: mov edx, eax
008ACBF8: lea ecx, var_24
008ACBFB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ACC00: push eax
008ACC01: mov eax, var_000000A4
008ACC07: mov eax, [eax]
008ACC09: push var_000000A4
008ACC0F: call [eax+00000080h]
008ACC15: fclex 
008ACC17: mov var_000000A8, eax
008ACC1D: cmp var_000000A8, 00000000h
008ACC24: jnl 8ACC49h
008ACC26: push 00000080h
008ACC2B: push 0044A88Ch
008ACC30: push var_000000A4
008ACC36: push var_000000A8
008ACC3C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ACC41: mov var_000000E0, eax
008ACC47: jmp 8ACC50h
008ACC49: and var_000000E0, 00000000h
008ACC50: lea eax, var_24
008ACC53: push eax
008ACC54: lea eax, var_20
008ACC57: push eax
008ACC58: push 00000002h
008ACC5A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008ACC5F: add esp, 0000000Ch
008ACC62: lea eax, var_38
008ACC65: push eax
008ACC66: lea eax, var_34
008ACC69: push eax
008ACC6A: lea eax, var_30
008ACC6D: push eax
008ACC6E: lea eax, var_2C
008ACC71: push eax
008ACC72: lea eax, var_28
008ACC75: push eax
008ACC76: push 00000005h
008ACC78: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008ACC7D: add esp, 00000018h
008ACC80: lea eax, var_78
008ACC83: push eax
008ACC84: lea eax, var_68
008ACC87: push eax
008ACC88: lea eax, var_58
008ACC8B: push eax
008ACC8C: lea eax, var_48
008ACC8F: push eax
008ACC90: push 00000004h
008ACC92: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008ACC97: add esp, 00000014h
008ACC9A: push 0044A87Ch
008ACC9F: push 00000000h
008ACCA1: push 00000003h
008ACCA3: mov eax, [ebp+08h]
008ACCA6: mov eax, [eax]
008ACCA8: push [ebp+08h]
008ACCAB: call [eax+00000328h]
008ACCB1: push eax
008ACCB2: lea eax, var_28
008ACCB5: push eax
008ACCB6: call 00410A84h ; Set (object)
008ACCBB: push eax
008ACCBC: lea eax, var_48
008ACCBF: push eax
008ACCC0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ACCC5: add esp, 00000010h
008ACCC8: push eax
008ACCC9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ACCCE: push eax
008ACCCF: lea eax, var_2C
008ACCD2: push eax
008ACCD3: call 00410A84h ; Set (object)
008ACCD8: mov var_0000009C, eax
008ACCDE: mov var_50, 00000002h
008ACCE5: mov var_58, 00000002h
008ACCEC: lea eax, var_30
008ACCEF: push eax
008ACCF0: lea eax, var_58
008ACCF3: push eax
008ACCF4: mov eax, var_0000009C
008ACCFA: mov eax, [eax]
008ACCFC: push var_0000009C
008ACD02: call [eax+24h]
008ACD05: fclex 
008ACD07: mov var_000000A0, eax
008ACD0D: cmp var_000000A0, 00000000h
008ACD14: jnl 8ACD36h
008ACD16: push 00000024h
008ACD18: push 0044A87Ch
008ACD1D: push var_0000009C
008ACD23: push var_000000A0
008ACD29: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ACD2E: mov var_000000E4, eax
008ACD34: jmp 8ACD3Dh
008ACD36: and var_000000E4, 00000000h
008ACD3D: mov eax, var_30
008ACD40: mov var_000000A4, eax
008ACD46: push 00457C58h ; Selected bots:
008ACD4B: push var_1C
008ACD4E: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008ACD53: mov edx, eax
008ACD55: lea ecx, var_20
008ACD58: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ACD5D: push eax
008ACD5E: call 00410A18h ; &
008ACD63: mov edx, eax
008ACD65: lea ecx, var_24
008ACD68: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ACD6D: push eax
008ACD6E: mov eax, var_000000A4
008ACD74: mov eax, [eax]
008ACD76: push var_000000A4
008ACD7C: call [eax+00000080h]
008ACD82: fclex 
008ACD84: mov var_000000A8, eax
008ACD8A: cmp var_000000A8, 00000000h
008ACD91: jnl 8ACDB6h
008ACD93: push 00000080h
008ACD98: push 0044A88Ch
008ACD9D: push var_000000A4
008ACDA3: push var_000000A8
008ACDA9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ACDAE: mov var_000000E8, eax
008ACDB4: jmp 8ACDBDh
008ACDB6: and var_000000E8, 00000000h
008ACDBD: lea eax, var_24
008ACDC0: push eax
008ACDC1: lea eax, var_20
008ACDC4: push eax
008ACDC5: push 00000002h
008ACDC7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008ACDCC: add esp, 0000000Ch
008ACDCF: lea eax, var_30
008ACDD2: push eax
008ACDD3: lea eax, var_2C
008ACDD6: push eax
008ACDD7: lea eax, var_28
008ACDDA: push eax
008ACDDB: push 00000003h
008ACDDD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008ACDE2: add esp, 00000010h
008ACDE5: lea eax, var_58
008ACDE8: push eax
008ACDE9: lea eax, var_48
008ACDEC: push eax
008ACDED: push 00000002h
008ACDEF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008ACDF4: add esp, 0000000Ch
008ACDF7: mov var_04, 00000000h
008ACDFE: push 008ACE51h
008ACE03: jmp 8ACE50h
008ACE05: lea eax, var_24
008ACE08: push eax
008ACE09: lea eax, var_20
008ACE0C: push eax
008ACE0D: push 00000002h
008ACE0F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008ACE14: add esp, 0000000Ch
008ACE17: lea eax, var_38
008ACE1A: push eax
008ACE1B: lea eax, var_34
008ACE1E: push eax
008ACE1F: lea eax, var_30
008ACE22: push eax
008ACE23: lea eax, var_2C
008ACE26: push eax
008ACE27: lea eax, var_28
008ACE2A: push eax
008ACE2B: push 00000005h
008ACE2D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008ACE32: add esp, 00000018h
008ACE35: lea eax, var_78
008ACE38: push eax
008ACE39: lea eax, var_68
008ACE3C: push eax
008ACE3D: lea eax, var_58
008ACE40: push eax
008ACE41: lea eax, var_48
008ACE44: push eax
008ACE45: push 00000004h
008ACE47: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008ACE4C: add esp, 00000014h
008ACE4F: ret 
End Sub

Private sub cmdSet__8A8C15
008A8C15: push ebp
008A8C16: mov ebp, esp
008A8C18: sub esp, 00000018h
008A8C1B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008A8C20: mov eax, fs:[00h]
008A8C26: push eax
008A8C27: mov fs:[00000000h], esp
008A8C2E: mov eax, 00000138h
008A8C33: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A8C38: push ebx
008A8C39: push esi
008A8C3A: push edi
008A8C3B: mov var_18, esp
008A8C3E: mov var_14, 0040E678h
008A8C45: mov eax, [ebp+08h]
008A8C48: and eax, 00000001h
008A8C4B: mov var_10, eax
008A8C4E: mov eax, [ebp+08h]
008A8C51: and al, FEh
008A8C53: mov [ebp+08h], eax
008A8C56: mov var_0C, 00000000h
008A8C5D: mov eax, [ebp+08h]
008A8C60: mov eax, [eax]
008A8C62: push [ebp+08h]
008A8C65: call [eax+04h]
008A8C68: mov var_04, 00000001h
008A8C6F: mov var_04, 00000002h
008A8C76: push FFFFFFFFh
008A8C78: call 00410A60h ; On Error ...
008A8C7D: mov var_04, 00000003h
008A8C84: mov eax, [ebp+08h]
008A8C87: mov eax, [eax]
008A8C89: push [ebp+08h]
008A8C8C: call [eax+00000300h]
008A8C92: mov var_4C, eax
008A8C95: mov var_54, 00000009h
008A8C9C: mov var_000000A0, 004498C0h
008A8CA6: mov var_000000A8, 00000008h
008A8CB0: and var_000000B0, 00000000h
008A8CB7: mov var_000000B8, 00008002h
008A8CC1: push 00000001h
008A8CC3: lea eax, var_54
008A8CC6: push eax
008A8CC7: lea eax, var_000000A8
008A8CCD: push eax
008A8CCE: push 00000000h
008A8CD0: lea eax, var_64
008A8CD3: push eax
008A8CD4: call 0041083Eh ; InStr
008A8CD9: push eax
008A8CDA: lea eax, var_000000B8
008A8CE0: push eax
008A8CE1: call 004108FEh ; msvbvm60.dll.__vbaVarTstEq
008A8CE6: mov var_000000E4, ax
008A8CED: lea eax, var_64
008A8CF0: push eax
008A8CF1: lea eax, var_54
008A8CF4: push eax
008A8CF5: push 00000002h
008A8CF7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A8CFC: add esp, 0000000Ch
008A8CFF: movsx eax, word ptr var_000000E4
008A8D06: test eax, eax
008A8D08: jz 008A8DA0h
008A8D0E: mov var_04, 00000004h
008A8D15: mov var_7C, 80020004h
008A8D1C: mov var_00000084, 0000000Ah
008A8D26: mov var_6C, 80020004h
008A8D2D: mov var_74, 0000000Ah
008A8D34: mov var_5C, 80020004h
008A8D3B: mov var_64, 0000000Ah
008A8D42: mov var_000000A0, 00459BF4h ; Invalid cookie data
008A8D4C: mov var_000000A8, 00000008h
008A8D56: lea edx, var_000000A8
008A8D5C: lea ecx, var_54
008A8D5F: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008A8D64: lea eax, var_00000084
008A8D6A: push eax
008A8D6B: lea eax, var_74
008A8D6E: push eax
008A8D6F: lea eax, var_64
008A8D72: push eax
008A8D73: push 00000030h
008A8D75: lea eax, var_54
008A8D78: push eax
008A8D79: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008A8D7E: lea eax, var_00000084
008A8D84: push eax
008A8D85: lea eax, var_74
008A8D88: push eax
008A8D89: lea eax, var_64
008A8D8C: push eax
008A8D8D: lea eax, var_54
008A8D90: push eax
008A8D91: push 00000004h
008A8D93: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A8D98: add esp, 00000014h
008A8D9B: jmp 008A96C4h
008A8DA0: mov var_04, 00000007h
008A8DA7: cmp word ptr [008F2430h], FFFFh
008A8DAF: jnz 008A923Fh
008A8DB5: mov var_04, 00000008h
008A8DBC: mov var_000000A0, 00000001h
008A8DC6: mov var_000000A8, 00000002h
008A8DD0: cmp [008F2010h], 00000000h
008A8DD7: jnz 8A8DF4h
008A8DD9: push 008F2010h
008A8DDE: push 00433984h
008A8DE3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A8DE8: mov var_00000144, 008F2010h
008A8DF2: jmp 8A8DFEh
008A8DF4: mov var_00000144, 008F2010h
008A8DFE: push 00000000h
008A8E00: push 00000001h
008A8E02: push 00440E48h
008A8E07: push 00000000h
008A8E09: push 00000018h
008A8E0B: mov eax, var_00000144
008A8E11: mov eax, [eax]
008A8E13: mov ecx, var_00000144
008A8E19: mov ecx, [ecx]
008A8E1B: mov ecx, [ecx]
008A8E1D: push eax
008A8E1E: call [ecx+0000054Ch]
008A8E24: push eax
008A8E25: lea eax, var_3C
008A8E28: push eax
008A8E29: call 00410A84h ; Set (object)
008A8E2E: push eax
008A8E2F: lea eax, var_54
008A8E32: push eax
008A8E33: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A8E38: add esp, 00000010h
008A8E3B: push eax
008A8E3C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A8E41: push eax
008A8E42: lea eax, var_40
008A8E45: push eax
008A8E46: call 00410A84h ; Set (object)
008A8E4B: push eax
008A8E4C: lea eax, var_64
008A8E4F: push eax
008A8E50: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A8E55: add esp, 00000010h
008A8E58: push eax
008A8E59: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A8E5E: mov var_000000B0, eax
008A8E64: mov var_000000B8, 00000003h
008A8E6E: mov var_000000C0, 00000001h
008A8E78: mov var_000000C8, 00000002h
008A8E82: lea eax, var_000000A8
008A8E88: push eax
008A8E89: lea eax, var_000000B8
008A8E8F: push eax
008A8E90: lea eax, var_000000C8
008A8E96: push eax
008A8E97: lea eax, var_00000104
008A8E9D: push eax
008A8E9E: lea eax, var_000000F4
008A8EA4: push eax
008A8EA5: lea eax, var_30
008A8EA8: push eax
008A8EA9: call 00410A3Ch ; For
008A8EAE: mov var_0000013C, eax
008A8EB4: lea eax, var_40
008A8EB7: push eax
008A8EB8: lea eax, var_3C
008A8EBB: push eax
008A8EBC: push 00000002h
008A8EBE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A8EC3: add esp, 0000000Ch
008A8EC6: lea eax, var_64
008A8EC9: push eax
008A8ECA: lea eax, var_54
008A8ECD: push eax
008A8ECE: push 00000002h
008A8ED0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A8ED5: add esp, 0000000Ch
008A8ED8: jmp 008A922Dh
008A8EDD: mov var_04, 00000009h
008A8EE4: lea eax, var_30
008A8EE7: mov var_000000A0, eax
008A8EED: mov var_000000A8, 0000400Ch
008A8EF7: cmp [008F2010h], 00000000h
008A8EFE: jnz 8A8F1Bh
008A8F00: push 008F2010h
008A8F05: push 00433984h
008A8F0A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A8F0F: mov var_00000148, 008F2010h
008A8F19: jmp 8A8F25h
008A8F1B: mov var_00000148, 008F2010h
008A8F25: push 00000000h
008A8F27: push 00000004h
008A8F29: push 00440E58h
008A8F2E: push 00000010h
008A8F30: pop eax
008A8F31: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A8F36: lea esi, var_000000A8
008A8F3C: mov edi, esp
008A8F3E: movsd 
008A8F3F: movsd 
008A8F40: movsd 
008A8F41: movsd 
008A8F42: push 00000001h
008A8F44: push 00000000h
008A8F46: push 00440E48h
008A8F4B: push 00000000h
008A8F4D: push 00000018h
008A8F4F: mov eax, var_00000148
008A8F55: mov eax, [eax]
008A8F57: mov ecx, var_00000148
008A8F5D: mov ecx, [ecx]
008A8F5F: mov ecx, [ecx]
008A8F61: push eax
008A8F62: call [ecx+0000054Ch]
008A8F68: push eax
008A8F69: lea eax, var_3C
008A8F6C: push eax
008A8F6D: call 00410A84h ; Set (object)
008A8F72: push eax
008A8F73: lea eax, var_54
008A8F76: push eax
008A8F77: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A8F7C: add esp, 00000010h
008A8F7F: push eax
008A8F80: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A8F85: push eax
008A8F86: lea eax, var_40
008A8F89: push eax
008A8F8A: call 00410A84h ; Set (object)
008A8F8F: push eax
008A8F90: lea eax, var_64
008A8F93: push eax
008A8F94: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A8F99: add esp, 00000020h
008A8F9C: push eax
008A8F9D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A8FA2: push eax
008A8FA3: lea eax, var_44
008A8FA6: push eax
008A8FA7: call 00410A84h ; Set (object)
008A8FAC: push eax
008A8FAD: lea eax, var_74
008A8FB0: push eax
008A8FB1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A8FB6: add esp, 00000010h
008A8FB9: push eax
008A8FBA: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008A8FBF: sub ax, FFFFh
008A8FC3: neg ax
008A8FC6: sbb eax, eax
008A8FC8: inc eax
008A8FC9: neg eax
008A8FCB: mov var_000000E4, ax
008A8FD2: lea eax, var_44
008A8FD5: push eax
008A8FD6: lea eax, var_40
008A8FD9: push eax
008A8FDA: lea eax, var_3C
008A8FDD: push eax
008A8FDE: push 00000003h
008A8FE0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A8FE5: add esp, 00000010h
008A8FE8: lea eax, var_74
008A8FEB: push eax
008A8FEC: lea eax, var_64
008A8FEF: push eax
008A8FF0: lea eax, var_54
008A8FF3: push eax
008A8FF4: push 00000003h
008A8FF6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A8FFB: add esp, 00000010h
008A8FFE: movsx eax, word ptr var_000000E4
008A9005: test eax, eax
008A9007: jz 008A9209h
008A900D: mov var_04, 0000000Ah
008A9014: lea eax, var_30
008A9017: mov var_000000A0, eax
008A901D: mov var_000000A8, 0000400Ch
008A9027: cmp [008F2010h], 00000000h
008A902E: jnz 8A904Bh
008A9030: push 008F2010h
008A9035: push 00433984h
008A903A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A903F: mov var_0000014C, 008F2010h
008A9049: jmp 8A9055h
008A904B: mov var_0000014C, 008F2010h
008A9055: push 00000000h
008A9057: push 00000014h
008A9059: push 00440E58h
008A905E: push 00000010h
008A9060: pop eax
008A9061: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A9066: lea esi, var_000000A8
008A906C: mov edi, esp
008A906E: movsd 
008A906F: movsd 
008A9070: movsd 
008A9071: movsd 
008A9072: push 00000001h
008A9074: push 00000000h
008A9076: push 00440E48h
008A907B: push 00000000h
008A907D: push 00000018h
008A907F: mov eax, var_0000014C
008A9085: mov eax, [eax]
008A9087: mov ecx, var_0000014C
008A908D: mov ecx, [ecx]
008A908F: mov ecx, [ecx]
008A9091: push eax
008A9092: call [ecx+0000054Ch]
008A9098: push eax
008A9099: lea eax, var_3C
008A909C: push eax
008A909D: call 00410A84h ; Set (object)
008A90A2: push eax
008A90A3: lea eax, var_54
008A90A6: push eax
008A90A7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A90AC: add esp, 00000010h
008A90AF: push eax
008A90B0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A90B5: push eax
008A90B6: lea eax, var_40
008A90B9: push eax
008A90BA: call 00410A84h ; Set (object)
008A90BF: push eax
008A90C0: lea eax, var_64
008A90C3: push eax
008A90C4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A90C9: add esp, 00000020h
008A90CC: push eax
008A90CD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A90D2: push eax
008A90D3: lea eax, var_44
008A90D6: push eax
008A90D7: call 00410A84h ; Set (object)
008A90DC: push eax
008A90DD: lea eax, var_74
008A90E0: push eax
008A90E1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A90E6: add esp, 00000010h
008A90E9: push eax
008A90EA: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008A90EF: mov edx, eax
008A90F1: lea ecx, var_34
008A90F4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A90F9: push eax
008A90FA: call 004109DCh ; Val(arg_1)
008A90FF: fstp real8 ptr var_000000E0
008A9105: push 00000000h
008A9107: push 00000001h
008A9109: push 00000001h
008A910B: push 00000000h
008A910D: lea eax, var_00000098
008A9113: push eax
008A9114: push 00000010h
008A9116: push 00000880h
008A911B: call 00410946h ; ReDim
008A9120: add esp, 0000001Ch
008A9123: mov eax, [ebp+08h]
008A9126: mov eax, [eax]
008A9128: push [ebp+08h]
008A912B: call [eax+000002FCh]
008A9131: mov var_7C, eax
008A9134: mov var_00000084, 00000009h
008A913E: lea esi, var_00000084
008A9144: push 00000000h
008A9146: push var_00000098
008A914C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A9151: mov ecx, eax
008A9153: mov edx, esi
008A9155: call 00410940h ; msvbvm60.dll.__vbaVarZero
008A915A: mov eax, [ebp+08h]
008A915D: mov eax, [eax]
008A915F: push [ebp+08h]
008A9162: call [eax+00000300h]
008A9168: mov var_0000008C, eax
008A916E: mov var_00000094, 00000009h
008A9178: lea esi, var_00000094
008A917E: push 00000001h
008A9180: push var_00000098
008A9186: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A918B: mov ecx, eax
008A918D: mov edx, esi
008A918F: call 00410940h ; msvbvm60.dll.__vbaVarZero
008A9194: mov edx, 0043D944h ; x108
008A9199: lea ecx, var_38
008A919C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008A91A1: lea eax, var_00000098
008A91A7: push eax
008A91A8: lea eax, var_38
008A91AB: push eax
008A91AC: fld real8 ptr var_000000E0
008A91B2: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008A91B7: push eax
008A91B8: call 007A6910h
008A91BD: lea eax, var_00000098
008A91C3: push eax
008A91C4: push 00000000h
008A91C6: call 00410934h ; Erase
008A91CB: lea eax, var_38
008A91CE: push eax
008A91CF: lea eax, var_34
008A91D2: push eax
008A91D3: push 00000002h
008A91D5: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A91DA: add esp, 0000000Ch
008A91DD: lea eax, var_44
008A91E0: push eax
008A91E1: lea eax, var_40
008A91E4: push eax
008A91E5: lea eax, var_3C
008A91E8: push eax
008A91E9: push 00000003h
008A91EB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A91F0: add esp, 00000010h
008A91F3: lea eax, var_74
008A91F6: push eax
008A91F7: lea eax, var_64
008A91FA: push eax
008A91FB: lea eax, var_54
008A91FE: push eax
008A91FF: push 00000003h
008A9201: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A9206: add esp, 00000010h
008A9209: mov var_04, 0000000Ch
008A9210: lea eax, var_00000104
008A9216: push eax
008A9217: lea eax, var_000000F4
008A921D: push eax
008A921E: lea eax, var_30
008A9221: push eax
008A9222: call 00410A36h ; Next
008A9227: mov var_0000013C, eax
008A922D: cmp var_0000013C, 00000000h
008A9234: jnz 008A8EDDh
008A923A: jmp 008A96C4h
008A923F: mov var_04, 0000000Eh
008A9246: mov var_000000A0, 00000001h
008A9250: mov var_000000A8, 00000002h
008A925A: cmp [008F2010h], 00000000h
008A9261: jnz 8A927Eh
008A9263: push 008F2010h
008A9268: push 00433984h
008A926D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A9272: mov var_00000150, 008F2010h
008A927C: jmp 8A9288h
008A927E: mov var_00000150, 008F2010h
008A9288: push 00000000h
008A928A: push 00000001h
008A928C: push 00440E48h
008A9291: push 00000000h
008A9293: push 00000018h
008A9295: mov eax, var_00000150
008A929B: mov eax, [eax]
008A929D: mov ecx, var_00000150
008A92A3: mov ecx, [ecx]
008A92A5: mov ecx, [ecx]
008A92A7: push eax
008A92A8: call [ecx+00000550h]
008A92AE: push eax
008A92AF: lea eax, var_3C
008A92B2: push eax
008A92B3: call 00410A84h ; Set (object)
008A92B8: push eax
008A92B9: lea eax, var_54
008A92BC: push eax
008A92BD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A92C2: add esp, 00000010h
008A92C5: push eax
008A92C6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A92CB: push eax
008A92CC: lea eax, var_40
008A92CF: push eax
008A92D0: call 00410A84h ; Set (object)
008A92D5: push eax
008A92D6: lea eax, var_64
008A92D9: push eax
008A92DA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A92DF: add esp, 00000010h
008A92E2: push eax
008A92E3: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A92E8: mov var_000000B0, eax
008A92EE: mov var_000000B8, 00000003h
008A92F8: mov var_000000C0, 00000001h
008A9302: mov var_000000C8, 00000002h
008A930C: lea eax, var_000000A8
008A9312: push eax
008A9313: lea eax, var_000000B8
008A9319: push eax
008A931A: lea eax, var_000000C8
008A9320: push eax
008A9321: lea eax, var_00000124
008A9327: push eax
008A9328: lea eax, var_00000114
008A932E: push eax
008A932F: lea eax, var_30
008A9332: push eax
008A9333: call 00410A3Ch ; For
008A9338: mov var_00000140, eax
008A933E: lea eax, var_40
008A9341: push eax
008A9342: lea eax, var_3C
008A9345: push eax
008A9346: push 00000002h
008A9348: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A934D: add esp, 0000000Ch
008A9350: lea eax, var_64
008A9353: push eax
008A9354: lea eax, var_54
008A9357: push eax
008A9358: push 00000002h
008A935A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A935F: add esp, 0000000Ch
008A9362: jmp 008A96B7h
008A9367: mov var_04, 0000000Fh
008A936E: lea eax, var_30
008A9371: mov var_000000A0, eax
008A9377: mov var_000000A8, 0000400Ch
008A9381: cmp [008F2010h], 00000000h
008A9388: jnz 8A93A5h
008A938A: push 008F2010h
008A938F: push 00433984h
008A9394: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A9399: mov var_00000154, 008F2010h
008A93A3: jmp 8A93AFh
008A93A5: mov var_00000154, 008F2010h
008A93AF: push 00000000h
008A93B1: push 00000004h
008A93B3: push 00440E58h
008A93B8: push 00000010h
008A93BA: pop eax
008A93BB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A93C0: lea esi, var_000000A8
008A93C6: mov edi, esp
008A93C8: movsd 
008A93C9: movsd 
008A93CA: movsd 
008A93CB: movsd 
008A93CC: push 00000001h
008A93CE: push 00000000h
008A93D0: push 00440E48h
008A93D5: push 00000000h
008A93D7: push 00000018h
008A93D9: mov eax, var_00000154
008A93DF: mov eax, [eax]
008A93E1: mov ecx, var_00000154
008A93E7: mov ecx, [ecx]
008A93E9: mov ecx, [ecx]
008A93EB: push eax
008A93EC: call [ecx+00000550h]
008A93F2: push eax
008A93F3: lea eax, var_3C
008A93F6: push eax
008A93F7: call 00410A84h ; Set (object)
008A93FC: push eax
008A93FD: lea eax, var_54
008A9400: push eax
008A9401: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A9406: add esp, 00000010h
008A9409: push eax
008A940A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A940F: push eax
008A9410: lea eax, var_40
008A9413: push eax
008A9414: call 00410A84h ; Set (object)
008A9419: push eax
008A941A: lea eax, var_64
008A941D: push eax
008A941E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A9423: add esp, 00000020h
008A9426: push eax
008A9427: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A942C: push eax
008A942D: lea eax, var_44
008A9430: push eax
008A9431: call 00410A84h ; Set (object)
008A9436: push eax
008A9437: lea eax, var_74
008A943A: push eax
008A943B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A9440: add esp, 00000010h
008A9443: push eax
008A9444: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008A9449: sub ax, FFFFh
008A944D: neg ax
008A9450: sbb eax, eax
008A9452: inc eax
008A9453: neg eax
008A9455: mov var_000000E4, ax
008A945C: lea eax, var_44
008A945F: push eax
008A9460: lea eax, var_40
008A9463: push eax
008A9464: lea eax, var_3C
008A9467: push eax
008A9468: push 00000003h
008A946A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A946F: add esp, 00000010h
008A9472: lea eax, var_74
008A9475: push eax
008A9476: lea eax, var_64
008A9479: push eax
008A947A: lea eax, var_54
008A947D: push eax
008A947E: push 00000003h
008A9480: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A9485: add esp, 00000010h
008A9488: movsx eax, word ptr var_000000E4
008A948F: test eax, eax
008A9491: jz 008A9693h
008A9497: mov var_04, 00000010h
008A949E: lea eax, var_30
008A94A1: mov var_000000A0, eax
008A94A7: mov var_000000A8, 0000400Ch
008A94B1: cmp [008F2010h], 00000000h
008A94B8: jnz 8A94D5h
008A94BA: push 008F2010h
008A94BF: push 00433984h
008A94C4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A94C9: mov var_00000158, 008F2010h
008A94D3: jmp 8A94DFh
008A94D5: mov var_00000158, 008F2010h
008A94DF: push 00000000h
008A94E1: push 00000014h
008A94E3: push 00440E58h
008A94E8: push 00000010h
008A94EA: pop eax
008A94EB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A94F0: lea esi, var_000000A8
008A94F6: mov edi, esp
008A94F8: movsd 
008A94F9: movsd 
008A94FA: movsd 
008A94FB: movsd 
008A94FC: push 00000001h
008A94FE: push 00000000h
008A9500: push 00440E48h
008A9505: push 00000000h
008A9507: push 00000018h
008A9509: mov eax, var_00000158
008A950F: mov eax, [eax]
008A9511: mov ecx, var_00000158
008A9517: mov ecx, [ecx]
008A9519: mov ecx, [ecx]
008A951B: push eax
008A951C: call [ecx+00000550h]
008A9522: push eax
008A9523: lea eax, var_3C
008A9526: push eax
008A9527: call 00410A84h ; Set (object)
008A952C: push eax
008A952D: lea eax, var_54
008A9530: push eax
008A9531: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A9536: add esp, 00000010h
008A9539: push eax
008A953A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A953F: push eax
008A9540: lea eax, var_40
008A9543: push eax
008A9544: call 00410A84h ; Set (object)
008A9549: push eax
008A954A: lea eax, var_64
008A954D: push eax
008A954E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A9553: add esp, 00000020h
008A9556: push eax
008A9557: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A955C: push eax
008A955D: lea eax, var_44
008A9560: push eax
008A9561: call 00410A84h ; Set (object)
008A9566: push eax
008A9567: lea eax, var_74
008A956A: push eax
008A956B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A9570: add esp, 00000010h
008A9573: push eax
008A9574: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008A9579: mov edx, eax
008A957B: lea ecx, var_34
008A957E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A9583: push eax
008A9584: call 004109DCh ; Val(arg_1)
008A9589: fstp real8 ptr var_000000E0
008A958F: push 00000000h
008A9591: push 00000001h
008A9593: push 00000001h
008A9595: push 00000000h
008A9597: lea eax, var_00000098
008A959D: push eax
008A959E: push 00000010h
008A95A0: push 00000880h
008A95A5: call 00410946h ; ReDim
008A95AA: add esp, 0000001Ch
008A95AD: mov eax, [ebp+08h]
008A95B0: mov eax, [eax]
008A95B2: push [ebp+08h]
008A95B5: call [eax+000002FCh]
008A95BB: mov var_7C, eax
008A95BE: mov var_00000084, 00000009h
008A95C8: lea esi, var_00000084
008A95CE: push 00000000h
008A95D0: push var_00000098
008A95D6: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A95DB: mov ecx, eax
008A95DD: mov edx, esi
008A95DF: call 00410940h ; msvbvm60.dll.__vbaVarZero
008A95E4: mov eax, [ebp+08h]
008A95E7: mov eax, [eax]
008A95E9: push [ebp+08h]
008A95EC: call [eax+00000300h]
008A95F2: mov var_0000008C, eax
008A95F8: mov var_00000094, 00000009h
008A9602: lea esi, var_00000094
008A9608: push 00000001h
008A960A: push var_00000098
008A9610: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A9615: mov ecx, eax
008A9617: mov edx, esi
008A9619: call 00410940h ; msvbvm60.dll.__vbaVarZero
008A961E: mov edx, 0043D944h ; x108
008A9623: lea ecx, var_38
008A9626: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008A962B: lea eax, var_00000098
008A9631: push eax
008A9632: lea eax, var_38
008A9635: push eax
008A9636: fld real8 ptr var_000000E0
008A963C: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008A9641: push eax
008A9642: call 007A6910h
008A9647: lea eax, var_00000098
008A964D: push eax
008A964E: push 00000000h
008A9650: call 00410934h ; Erase
008A9655: lea eax, var_38
008A9658: push eax
008A9659: lea eax, var_34
008A965C: push eax
008A965D: push 00000002h
008A965F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A9664: add esp, 0000000Ch
008A9667: lea eax, var_44
008A966A: push eax
008A966B: lea eax, var_40
008A966E: push eax
008A966F: lea eax, var_3C
008A9672: push eax
008A9673: push 00000003h
008A9675: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A967A: add esp, 00000010h
008A967D: lea eax, var_74
008A9680: push eax
008A9681: lea eax, var_64
008A9684: push eax
008A9685: lea eax, var_54
008A9688: push eax
008A9689: push 00000003h
008A968B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A9690: add esp, 00000010h
008A9693: mov var_04, 00000012h
008A969A: lea eax, var_00000124
008A96A0: push eax
008A96A1: lea eax, var_00000114
008A96A7: push eax
008A96A8: lea eax, var_30
008A96AB: push eax
008A96AC: call 00410A36h ; Next
008A96B1: mov var_00000140, eax
008A96B7: cmp var_00000140, 00000000h
008A96BE: jnz 008A9367h
008A96C4: mov var_10, 00000000h
008A96CB: wait 
008A96CC: push 008A975Dh
008A96D1: jmp 8A972Eh
008A96D3: lea eax, var_38
008A96D6: push eax
008A96D7: lea eax, var_34
008A96DA: push eax
008A96DB: push 00000002h
008A96DD: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A96E2: add esp, 0000000Ch
008A96E5: lea eax, var_44
008A96E8: push eax
008A96E9: lea eax, var_40
008A96EC: push eax
008A96ED: lea eax, var_3C
008A96F0: push eax
008A96F1: push 00000003h
008A96F3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A96F8: add esp, 00000010h
008A96FB: lea eax, var_00000094
008A9701: push eax
008A9702: lea eax, var_00000084
008A9708: push eax
008A9709: lea eax, var_74
008A970C: push eax
008A970D: lea eax, var_64
008A9710: push eax
008A9711: lea eax, var_54
008A9714: push eax
008A9715: push 00000005h
008A9717: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A971C: add esp, 00000018h
008A971F: lea eax, var_00000098
008A9725: push eax
008A9726: push 00000000h
008A9728: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008A972D: ret 
End Sub

Private sub Form__8A977C
008A977C: push ebp
008A977D: mov ebp, esp
008A977F: sub esp, 0000000Ch
008A9782: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008A9787: mov eax, fs:[00h]
008A978D: push eax
008A978E: mov fs:[00000000h], esp
008A9795: mov eax, 000000A0h
008A979A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A979F: push ebx
008A97A0: push esi
008A97A1: push edi
008A97A2: mov var_0C, esp
008A97A5: mov var_08, 0040E6E8h
008A97AC: mov eax, [ebp+08h]
008A97AF: and eax, 00000001h
008A97B2: mov var_04, eax
008A97B5: mov eax, [ebp+08h]
008A97B8: and al, FEh
008A97BA: mov [ebp+08h], eax
008A97BD: mov eax, [ebp+08h]
008A97C0: mov eax, [eax]
008A97C2: push [ebp+08h]
008A97C5: call [eax+04h]
008A97C8: mov var_34, 80020004h
008A97CF: mov var_3C, 0000000Ah
008A97D6: mov var_54, 80020004h
008A97DD: mov var_5C, 0000000Ah
008A97E4: mov var_74, 00459C20h ; URL
008A97EB: mov var_7C, 00000008h
008A97F2: mov var_00000094, 000009C4h
008A97FC: mov var_0000009C, 00000002h
008A9806: push 00000010h
008A9808: pop eax
008A9809: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A980E: lea esi, var_3C
008A9811: mov edi, esp
008A9813: movsd 
008A9814: movsd 
008A9815: movsd 
008A9816: movsd 
008A9817: push 00000010h
008A9819: pop eax
008A981A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A981F: lea esi, var_5C
008A9822: mov edi, esp
008A9824: movsd 
008A9825: movsd 
008A9826: movsd 
008A9827: movsd 
008A9828: push 00000010h
008A982A: pop eax
008A982B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A9830: lea esi, var_7C
008A9833: mov edi, esp
008A9835: movsd 
008A9836: movsd 
008A9837: movsd 
008A9838: movsd 
008A9839: push 00000010h
008A983B: pop eax
008A983C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A9841: lea esi, var_0000009C
008A9847: mov edi, esp
008A9849: movsd 
008A984A: movsd 
008A984B: movsd 
008A984C: movsd 
008A984D: push 00000004h
008A984F: push 00000002h
008A9851: push 00445534h
008A9856: push 00000000h
008A9858: push 00000019h
008A985A: mov eax, [ebp+08h]
008A985D: mov eax, [eax]
008A985F: push [ebp+08h]
008A9862: call [eax+00000318h]
008A9868: push eax
008A9869: lea eax, var_18
008A986C: push eax
008A986D: call 00410A84h ; Set (object)
008A9872: push eax
008A9873: lea eax, var_2C
008A9876: push eax
008A9877: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A987C: add esp, 00000010h
008A987F: push eax
008A9880: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A9885: push eax
008A9886: lea eax, var_1C
008A9889: push eax
008A988A: call 00410A84h ; Set (object)
008A988F: push eax
008A9890: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008A9895: add esp, 0000004Ch
008A9898: lea eax, var_1C
008A989B: push eax
008A989C: lea eax, var_18
008A989F: push eax
008A98A0: push 00000002h
008A98A2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A98A7: add esp, 0000000Ch
008A98AA: lea ecx, var_2C
008A98AD: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A98B2: mov var_34, 80020004h
008A98B9: mov var_3C, 0000000Ah
008A98C0: mov var_54, 80020004h
008A98C7: mov var_5C, 0000000Ah
008A98CE: mov var_74, 00452754h ; Data
008A98D5: mov var_7C, 00000008h
008A98DC: mov var_00000094, 00001B58h
008A98E6: mov var_0000009C, 00000002h
008A98F0: push 00000010h
008A98F2: pop eax
008A98F3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A98F8: lea esi, var_3C
008A98FB: mov edi, esp
008A98FD: movsd 
008A98FE: movsd 
008A98FF: movsd 
008A9900: movsd 
008A9901: push 00000010h
008A9903: pop eax
008A9904: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A9909: lea esi, var_5C
008A990C: mov edi, esp
008A990E: movsd 
008A990F: movsd 
008A9910: movsd 
008A9911: movsd 
008A9912: push 00000010h
008A9914: pop eax
008A9915: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A991A: lea esi, var_7C
008A991D: mov edi, esp
008A991F: movsd 
008A9920: movsd 
008A9921: movsd 
008A9922: movsd 
008A9923: push 00000010h
008A9925: pop eax
008A9926: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A992B: lea esi, var_0000009C
008A9931: mov edi, esp
008A9933: movsd 
008A9934: movsd 
008A9935: movsd 
008A9936: movsd 
008A9937: push 00000004h
008A9939: push 00000002h
008A993B: push 00445534h
008A9940: push 00000000h
008A9942: push 00000019h
008A9944: mov eax, [ebp+08h]
008A9947: mov eax, [eax]
008A9949: push [ebp+08h]
008A994C: call [eax+00000318h]
008A9952: push eax
008A9953: lea eax, var_18
008A9956: push eax
008A9957: call 00410A84h ; Set (object)
008A995C: push eax
008A995D: lea eax, var_2C
008A9960: push eax
008A9961: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A9966: add esp, 00000010h
008A9969: push eax
008A996A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A996F: push eax
008A9970: lea eax, var_1C
008A9973: push eax
008A9974: call 00410A84h ; Set (object)
008A9979: push eax
008A997A: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008A997F: add esp, 0000004Ch
008A9982: lea eax, var_1C
008A9985: push eax
008A9986: lea eax, var_18
008A9989: push eax
008A998A: push 00000002h
008A998C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A9991: add esp, 0000000Ch
008A9994: lea ecx, var_2C
008A9997: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A999C: mov var_34, 80020004h
008A99A3: mov var_3C, 0000000Ah
008A99AA: mov var_54, 80020004h
008A99B1: mov var_5C, 0000000Ah
008A99B8: mov var_74, 004468B4h ; Owner
008A99BF: mov var_7C, 00000008h
008A99C6: mov var_00000094, 00000BB8h
008A99D0: mov var_0000009C, 00000002h
008A99DA: push 00000010h
008A99DC: pop eax
008A99DD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A99E2: lea esi, var_3C
008A99E5: mov edi, esp
008A99E7: movsd 
008A99E8: movsd 
008A99E9: movsd 
008A99EA: movsd 
008A99EB: push 00000010h
008A99ED: pop eax
008A99EE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A99F3: lea esi, var_5C
008A99F6: mov edi, esp
008A99F8: movsd 
008A99F9: movsd 
008A99FA: movsd 
008A99FB: movsd 
008A99FC: push 00000010h
008A99FE: pop eax
008A99FF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A9A04: lea esi, var_7C
008A9A07: mov edi, esp
008A9A09: movsd 
008A9A0A: movsd 
008A9A0B: movsd 
008A9A0C: movsd 
008A9A0D: push 00000010h
008A9A0F: pop eax
008A9A10: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A9A15: lea esi, var_0000009C
008A9A1B: mov edi, esp
008A9A1D: movsd 
008A9A1E: movsd 
008A9A1F: movsd 
008A9A20: movsd 
008A9A21: push 00000004h
008A9A23: push 00000002h
008A9A25: push 00445534h
008A9A2A: push 00000000h
008A9A2C: push 00000019h
008A9A2E: mov eax, [ebp+08h]
008A9A31: mov eax, [eax]
008A9A33: push [ebp+08h]
008A9A36: call [eax+00000318h]
008A9A3C: push eax
008A9A3D: lea eax, var_18
008A9A40: push eax
008A9A41: call 00410A84h ; Set (object)
008A9A46: push eax
008A9A47: lea eax, var_2C
008A9A4A: push eax
008A9A4B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A9A50: add esp, 00000010h
008A9A53: push eax
008A9A54: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A9A59: push eax
008A9A5A: lea eax, var_1C
008A9A5D: push eax
008A9A5E: call 00410A84h ; Set (object)
008A9A63: push eax
008A9A64: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008A9A69: add esp, 0000004Ch
008A9A6C: lea eax, var_1C
008A9A6F: push eax
008A9A70: lea eax, var_18
008A9A73: push eax
008A9A74: push 00000002h
008A9A76: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A9A7B: add esp, 0000000Ch
008A9A7E: lea ecx, var_2C
008A9A81: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A9A86: mov var_04, 00000000h
008A9A8D: push 008A9AB0h
008A9A92: jmp 8A9AAFh
008A9A94: lea eax, var_1C
008A9A97: push eax
008A9A98: lea eax, var_18
008A9A9B: push eax
008A9A9C: push 00000002h
008A9A9E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A9AA3: add esp, 0000000Ch
008A9AA6: lea ecx, var_2C
008A9AA9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A9AAE: ret 
End Sub

Private sub Form__8A9ACF
008A9ACF: push ebp
008A9AD0: mov ebp, esp
008A9AD2: sub esp, 00000018h
008A9AD5: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008A9ADA: mov eax, fs:[00h]
008A9AE0: push eax
008A9AE1: mov fs:[00000000h], esp
008A9AE8: mov eax, 00000124h
008A9AED: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A9AF2: push ebx
008A9AF3: push esi
008A9AF4: push edi
008A9AF5: mov var_18, esp
008A9AF8: mov var_14, 0040E6F8h
008A9AFF: mov eax, [ebp+08h]
008A9B02: and eax, 00000001h
008A9B05: mov var_10, eax
008A9B08: mov eax, [ebp+08h]
008A9B0B: and al, FEh
008A9B0D: mov [ebp+08h], eax
008A9B10: mov var_0C, 00000000h
008A9B17: mov eax, [ebp+08h]
008A9B1A: mov eax, [eax]
008A9B1C: push [ebp+08h]
008A9B1F: call [eax+04h]
008A9B22: mov var_04, 00000001h
008A9B29: mov var_04, 00000002h
008A9B30: push FFFFFFFFh
008A9B32: call 00410A60h ; On Error ...
008A9B37: mov var_04, 00000003h
008A9B3E: push 00000000h
008A9B40: push 80010006h
008A9B45: mov eax, [ebp+08h]
008A9B48: mov eax, [eax]
008A9B4A: push [ebp+08h]
008A9B4D: call [eax+0000031Ch]
008A9B53: push eax
008A9B54: lea eax, var_24
008A9B57: push eax
008A9B58: call 00410A84h ; Set (object)
008A9B5D: push eax
008A9B5E: lea eax, var_48
008A9B61: push eax
008A9B62: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A9B67: add esp, 00000010h
008A9B6A: fldz 
008A9B6C: fstp real4 ptr var_60
008A9B6F: mov var_68, 00000004h
008A9B76: and var_80, 00000000h
008A9B7A: mov var_00000088, 00000002h
008A9B84: lea eax, var_000000DC
008A9B8A: push eax
008A9B8B: mov eax, [ebp+08h]
008A9B8E: mov eax, [eax]
008A9B90: push [ebp+08h]
008A9B93: call [eax+00000080h]
008A9B99: fclex 
008A9B9B: mov var_000000E8, eax
008A9BA1: cmp var_000000E8, 00000000h
008A9BA8: jnl 8A9BCAh
008A9BAA: push 00000080h
008A9BAF: push 00447014h
008A9BB4: push [ebp+08h]
008A9BB7: push var_000000E8
008A9BBD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A9BC2: mov var_0000011C, eax
008A9BC8: jmp 8A9BD1h
008A9BCA: and var_0000011C, 00000000h
008A9BD1: fld real4 ptr var_000000DC
008A9BD7: fsub real4 ptr [00402BA4h]
008A9BDD: fstp real4 ptr var_000000A0
008A9BE3: fstsw ax
008A9BE5: test al, 0Dh
008A9BE7: jnz 008AA350h
008A9BED: mov var_000000A8, 00000004h
008A9BF7: lea eax, var_000000E0
008A9BFD: push eax
008A9BFE: mov eax, [ebp+08h]
008A9C01: mov eax, [eax]
008A9C03: push [ebp+08h]
008A9C06: call [eax+00000088h]
008A9C0C: fclex 
008A9C0E: mov var_000000EC, eax
008A9C14: cmp var_000000EC, 00000000h
008A9C1B: jnl 8A9C3Dh
008A9C1D: push 00000088h
008A9C22: push 00447014h
008A9C27: push [ebp+08h]
008A9C2A: push var_000000EC
008A9C30: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A9C35: mov var_00000120, eax
008A9C3B: jmp 8A9C44h
008A9C3D: and var_00000120, 00000000h
008A9C44: lea eax, var_48
008A9C47: push eax
008A9C48: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008A9C4D: fsubr real4 ptr var_000000E0
008A9C53: fsub real4 ptr [0040DF3Ch]
008A9C59: fstp real4 ptr var_000000C0
008A9C5F: fstsw ax
008A9C61: test al, 0Dh
008A9C63: jnz 008AA350h
008A9C69: mov var_000000C8, 00000004h
008A9C73: push 00000010h
008A9C75: pop eax
008A9C76: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A9C7B: lea esi, var_68
008A9C7E: mov edi, esp
008A9C80: movsd 
008A9C81: movsd 
008A9C82: movsd 
008A9C83: movsd 
008A9C84: push 00000010h
008A9C86: pop eax
008A9C87: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A9C8C: lea esi, var_00000088
008A9C92: mov edi, esp
008A9C94: movsd 
008A9C95: movsd 
008A9C96: movsd 
008A9C97: movsd 
008A9C98: push 00000010h
008A9C9A: pop eax
008A9C9B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A9CA0: lea esi, var_000000A8
008A9CA6: mov edi, esp
008A9CA8: movsd 
008A9CA9: movsd 
008A9CAA: movsd 
008A9CAB: movsd 
008A9CAC: push 00000010h
008A9CAE: pop eax
008A9CAF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A9CB4: lea esi, var_000000C8
008A9CBA: mov edi, esp
008A9CBC: movsd 
008A9CBD: movsd 
008A9CBE: movsd 
008A9CBF: movsd 
008A9CC0: push 00000004h
008A9CC2: push 80011002h
008A9CC7: mov eax, [ebp+08h]
008A9CCA: mov eax, [eax]
008A9CCC: push [ebp+08h]
008A9CCF: call [eax+00000318h]
008A9CD5: push eax
008A9CD6: lea eax, var_28
008A9CD9: push eax
008A9CDA: call 00410A84h ; Set (object)
008A9CDF: push eax
008A9CE0: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008A9CE5: add esp, 0000004Ch
008A9CE8: lea eax, var_28
008A9CEB: push eax
008A9CEC: lea eax, var_24
008A9CEF: push eax
008A9CF0: push 00000002h
008A9CF2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A9CF7: add esp, 0000000Ch
008A9CFA: lea ecx, var_48
008A9CFD: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A9D02: mov var_04, 00000004h
008A9D09: push 00000000h
008A9D0B: push 80010006h
008A9D10: mov eax, [ebp+08h]
008A9D13: mov eax, [eax]
008A9D15: push [ebp+08h]
008A9D18: call [eax+00000318h]
008A9D1E: push eax
008A9D1F: lea eax, var_28
008A9D22: push eax
008A9D23: call 00410A84h ; Set (object)
008A9D28: push eax
008A9D29: lea eax, var_58
008A9D2C: push eax
008A9D2D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A9D32: add esp, 00000010h
008A9D35: fldz 
008A9D37: fstp real4 ptr var_60
008A9D3A: mov var_68, 00000004h
008A9D41: push 00000000h
008A9D43: push 80010004h
008A9D48: mov eax, [ebp+08h]
008A9D4B: mov eax, [eax]
008A9D4D: push [ebp+08h]
008A9D50: call [eax+00000318h]
008A9D56: push eax
008A9D57: lea eax, var_24
008A9D5A: push eax
008A9D5B: call 00410A84h ; Set (object)
008A9D60: push eax
008A9D61: lea eax, var_48
008A9D64: push eax
008A9D65: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A9D6A: add esp, 00000010h
008A9D6D: push eax
008A9D6E: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008A9D73: fstp real4 ptr var_00000124
008A9D79: lea eax, var_58
008A9D7C: push eax
008A9D7D: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008A9D82: fadd real4 ptr var_00000124
008A9D88: fadd real4 ptr [00402BA8h]
008A9D8E: fstp real4 ptr var_80
008A9D91: fstsw ax
008A9D93: test al, 0Dh
008A9D95: jnz 008AA350h
008A9D9B: mov var_00000088, 00000004h
008A9DA5: lea eax, var_000000DC
008A9DAB: push eax
008A9DAC: mov eax, [ebp+08h]
008A9DAF: mov eax, [eax]
008A9DB1: push [ebp+08h]
008A9DB4: call [eax+00000080h]
008A9DBA: fclex 
008A9DBC: mov var_000000E8, eax
008A9DC2: cmp var_000000E8, 00000000h
008A9DC9: jnl 8A9DEBh
008A9DCB: push 00000080h
008A9DD0: push 00447014h
008A9DD5: push [ebp+08h]
008A9DD8: push var_000000E8
008A9DDE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A9DE3: mov var_00000128, eax
008A9DE9: jmp 8A9DF2h
008A9DEB: and var_00000128, 00000000h
008A9DF2: fld real4 ptr var_000000DC
008A9DF8: fsub real4 ptr [00402BA4h]
008A9DFE: fstp real4 ptr var_000000A0
008A9E04: fstsw ax
008A9E06: test al, 0Dh
008A9E08: jnz 008AA350h
008A9E0E: mov var_000000A8, 00000004h
008A9E18: push 00000010h
008A9E1A: pop eax
008A9E1B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A9E20: lea esi, var_68
008A9E23: mov edi, esp
008A9E25: movsd 
008A9E26: movsd 
008A9E27: movsd 
008A9E28: movsd 
008A9E29: push 00000010h
008A9E2B: pop eax
008A9E2C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A9E31: lea esi, var_00000088
008A9E37: mov edi, esp
008A9E39: movsd 
008A9E3A: movsd 
008A9E3B: movsd 
008A9E3C: movsd 
008A9E3D: push 00000010h
008A9E3F: pop eax
008A9E40: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A9E45: lea esi, var_000000A8
008A9E4B: mov edi, esp
008A9E4D: movsd 
008A9E4E: movsd 
008A9E4F: movsd 
008A9E50: movsd 
008A9E51: push 00000003h
008A9E53: push 80011001h
008A9E58: mov eax, [ebp+08h]
008A9E5B: mov eax, [eax]
008A9E5D: push [ebp+08h]
008A9E60: call [eax+0000031Ch]
008A9E66: push eax
008A9E67: lea eax, var_2C
008A9E6A: push eax
008A9E6B: call 00410A84h ; Set (object)
008A9E70: push eax
008A9E71: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008A9E76: add esp, 0000003Ch
008A9E79: lea eax, var_2C
008A9E7C: push eax
008A9E7D: lea eax, var_28
008A9E80: push eax
008A9E81: lea eax, var_24
008A9E84: push eax
008A9E85: push 00000003h
008A9E87: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A9E8C: add esp, 00000010h
008A9E8F: lea eax, var_58
008A9E92: push eax
008A9E93: lea eax, var_48
008A9E96: push eax
008A9E97: push 00000002h
008A9E99: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A9E9E: add esp, 0000000Ch
008A9EA1: mov var_04, 00000005h
008A9EA8: mov eax, [ebp+08h]
008A9EAB: mov eax, [eax]
008A9EAD: push [ebp+08h]
008A9EB0: call [eax+00000300h]
008A9EB6: push eax
008A9EB7: lea eax, var_24
008A9EBA: push eax
008A9EBB: call 00410A84h ; Set (object)
008A9EC0: mov var_000000E8, eax
008A9EC6: lea eax, var_000000DC
008A9ECC: push eax
008A9ECD: mov eax, var_000000E8
008A9ED3: mov eax, [eax]
008A9ED5: push var_000000E8
008A9EDB: call [eax+68h]
008A9EDE: fclex 
008A9EE0: mov var_000000EC, eax
008A9EE6: cmp var_000000EC, 00000000h
008A9EED: jnl 8A9F0Fh
008A9EEF: push 00000068h
008A9EF1: push 00440E08h
008A9EF6: push var_000000E8
008A9EFC: push var_000000EC
008A9F02: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A9F07: mov var_0000012C, eax
008A9F0D: jmp 8A9F16h
008A9F0F: and var_0000012C, 00000000h
008A9F16: mov eax, [ebp+08h]
008A9F19: mov eax, [eax]
008A9F1B: push [ebp+08h]
008A9F1E: call [eax+00000300h]
008A9F24: push eax
008A9F25: lea eax, var_28
008A9F28: push eax
008A9F29: call 00410A84h ; Set (object)
008A9F2E: mov var_000000F0, eax
008A9F34: lea eax, var_000000E0
008A9F3A: push eax
008A9F3B: mov eax, var_000000F0
008A9F41: mov eax, [eax]
008A9F43: push var_000000F0
008A9F49: call [eax+70h]
008A9F4C: fclex 
008A9F4E: mov var_000000F4, eax
008A9F54: cmp var_000000F4, 00000000h
008A9F5B: jnl 8A9F7Dh
008A9F5D: push 00000070h
008A9F5F: push 00440E08h
008A9F64: push var_000000F0
008A9F6A: push var_000000F4
008A9F70: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A9F75: mov var_00000130, eax
008A9F7B: jmp 8A9F84h
008A9F7D: and var_00000130, 00000000h
008A9F84: push 00000000h
008A9F86: push 80010005h
008A9F8B: mov eax, [ebp+08h]
008A9F8E: mov eax, [eax]
008A9F90: push [ebp+08h]
008A9F93: call [eax+0000031Ch]
008A9F99: push eax
008A9F9A: lea eax, var_2C
008A9F9D: push eax
008A9F9E: call 00410A84h ; Set (object)
008A9FA3: push eax
008A9FA4: lea eax, var_48
008A9FA7: push eax
008A9FA8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A9FAD: add esp, 00000010h
008A9FB0: mov eax, [ebp+08h]
008A9FB3: mov eax, [eax]
008A9FB5: push [ebp+08h]
008A9FB8: call [eax+00000300h]
008A9FBE: push eax
008A9FBF: lea eax, var_30
008A9FC2: push eax
008A9FC3: call 00410A84h ; Set (object)
008A9FC8: mov var_000000F8, eax
008A9FCE: lea eax, var_000000E4
008A9FD4: push eax
008A9FD5: mov eax, var_000000F8
008A9FDB: mov eax, [eax]
008A9FDD: push var_000000F8
008A9FE3: call [eax+68h]
008A9FE6: fclex 
008A9FE8: mov var_000000FC, eax
008A9FEE: cmp var_000000FC, 00000000h
008A9FF5: jnl 8AA017h
008A9FF7: push 00000068h
008A9FF9: push 00440E08h
008A9FFE: push var_000000F8
008AA004: push var_000000FC
008AA00A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AA00F: mov var_00000134, eax
008AA015: jmp 8AA01Eh
008AA017: and var_00000134, 00000000h
008AA01E: push 00000000h
008AA020: push 80010005h
008AA025: mov eax, [ebp+08h]
008AA028: mov eax, [eax]
008AA02A: push [ebp+08h]
008AA02D: call [eax+00000324h]
008AA033: push eax
008AA034: lea eax, var_34
008AA037: push eax
008AA038: call 00410A84h ; Set (object)
008AA03D: push eax
008AA03E: lea eax, var_58
008AA041: push eax
008AA042: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AA047: add esp, 00000010h
008AA04A: mov eax, [ebp+08h]
008AA04D: mov eax, [eax]
008AA04F: push [ebp+08h]
008AA052: call [eax+00000300h]
008AA058: push eax
008AA059: lea eax, var_38
008AA05C: push eax
008AA05D: call 00410A84h ; Set (object)
008AA062: mov var_00000100, eax
008AA068: mov var_80, 80020004h
008AA06F: mov var_00000088, 0000000Ah
008AA079: lea eax, var_48
008AA07C: push eax
008AA07D: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008AA082: fsub real4 ptr var_000000E4
008AA088: fstsw ax
008AA08A: test al, 0Dh
008AA08C: jnz 008AA350h
008AA092: fstp real4 ptr var_00000138
008AA098: lea eax, var_58
008AA09B: push eax
008AA09C: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008AA0A1: fsubr real4 ptr var_00000138
008AA0A7: fsub real4 ptr [0040E734h]
008AA0AD: fstp real4 ptr var_70
008AA0B0: fstsw ax
008AA0B2: test al, 0Dh
008AA0B4: jnz 008AA350h
008AA0BA: mov var_78, 00000004h
008AA0C1: fld real4 ptr var_000000E0
008AA0C7: fstp real4 ptr var_60
008AA0CA: mov var_68, 00000004h
008AA0D1: push 00000010h
008AA0D3: pop eax
008AA0D4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA0D9: lea esi, var_00000088
008AA0DF: mov edi, esp
008AA0E1: movsd 
008AA0E2: movsd 
008AA0E3: movsd 
008AA0E4: movsd 
008AA0E5: push 00000010h
008AA0E7: pop eax
008AA0E8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA0ED: lea esi, var_78
008AA0F0: mov edi, esp
008AA0F2: movsd 
008AA0F3: movsd 
008AA0F4: movsd 
008AA0F5: movsd 
008AA0F6: push 00000010h
008AA0F8: pop eax
008AA0F9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA0FE: lea esi, var_68
008AA101: mov edi, esp
008AA103: movsd 
008AA104: movsd 
008AA105: movsd 
008AA106: movsd 
008AA107: fld real4 ptr var_000000DC
008AA10D: push ecx
008AA10E: fstp real4 ptr [esp]
008AA111: mov eax, var_00000100
008AA117: mov eax, [eax]
008AA119: push var_00000100
008AA11F: call [eax+00000224h]
008AA125: fclex 
008AA127: mov var_00000104, eax
008AA12D: cmp var_00000104, 00000000h
008AA134: jnl 8AA159h
008AA136: push 00000224h
008AA13B: push 00440E08h
008AA140: push var_00000100
008AA146: push var_00000104
008AA14C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AA151: mov var_0000013C, eax
008AA157: jmp 8AA160h
008AA159: and var_0000013C, 00000000h
008AA160: lea eax, var_38
008AA163: push eax
008AA164: lea eax, var_34
008AA167: push eax
008AA168: lea eax, var_30
008AA16B: push eax
008AA16C: lea eax, var_2C
008AA16F: push eax
008AA170: lea eax, var_28
008AA173: push eax
008AA174: lea eax, var_24
008AA177: push eax
008AA178: push 00000006h
008AA17A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AA17F: add esp, 0000001Ch
008AA182: lea eax, var_58
008AA185: push eax
008AA186: lea eax, var_48
008AA189: push eax
008AA18A: push 00000002h
008AA18C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AA191: add esp, 0000000Ch
008AA194: mov var_04, 00000006h
008AA19B: mov eax, [ebp+08h]
008AA19E: mov eax, [eax]
008AA1A0: push [ebp+08h]
008AA1A3: call [eax+00000300h]
008AA1A9: push eax
008AA1AA: lea eax, var_28
008AA1AD: push eax
008AA1AE: call 00410A84h ; Set (object)
008AA1B3: mov var_000000E8, eax
008AA1B9: lea eax, var_000000E0
008AA1BF: push eax
008AA1C0: mov eax, var_000000E8
008AA1C6: mov eax, [eax]
008AA1C8: push var_000000E8
008AA1CE: call [eax+78h]
008AA1D1: fclex 
008AA1D3: mov var_000000EC, eax
008AA1D9: cmp var_000000EC, 00000000h
008AA1E0: jnl 8AA202h
008AA1E2: push 00000078h
008AA1E4: push 00440E08h
008AA1E9: push var_000000E8
008AA1EF: push var_000000EC
008AA1F5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AA1FA: mov var_00000140, eax
008AA200: jmp 8AA209h
008AA202: and var_00000140, 00000000h
008AA209: mov eax, [ebp+08h]
008AA20C: mov eax, [eax]
008AA20E: push [ebp+08h]
008AA211: call [eax+00000300h]
008AA217: push eax
008AA218: lea eax, var_24
008AA21B: push eax
008AA21C: call 00410A84h ; Set (object)
008AA221: mov var_000000F0, eax
008AA227: lea eax, var_000000DC
008AA22D: push eax
008AA22E: mov eax, var_000000F0
008AA234: mov eax, [eax]
008AA236: push var_000000F0
008AA23C: call [eax+68h]
008AA23F: fclex 
008AA241: mov var_000000F4, eax
008AA247: cmp var_000000F4, 00000000h
008AA24E: jnl 8AA270h
008AA250: push 00000068h
008AA252: push 00440E08h
008AA257: push var_000000F0
008AA25D: push var_000000F4
008AA263: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AA268: mov var_00000144, eax
008AA26E: jmp 8AA277h
008AA270: and var_00000144, 00000000h
008AA277: fld real4 ptr var_000000DC
008AA27D: fadd real4 ptr var_000000E0
008AA283: fadd real4 ptr [00402BA4h]
008AA289: fstp real4 ptr var_60
008AA28C: fstsw ax
008AA28E: test al, 0Dh
008AA290: jnz 008AA350h
008AA296: mov var_68, 00000004h
008AA29D: push 00000010h
008AA29F: pop eax
008AA2A0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA2A5: lea esi, var_68
008AA2A8: mov edi, esp
008AA2AA: movsd 
008AA2AB: movsd 
008AA2AC: movsd 
008AA2AD: movsd 
008AA2AE: push 00000001h
008AA2B0: push 80011002h
008AA2B5: mov eax, [ebp+08h]
008AA2B8: mov eax, [eax]
008AA2BA: push [ebp+08h]
008AA2BD: call [eax+00000324h]
008AA2C3: push eax
008AA2C4: lea eax, var_2C
008AA2C7: push eax
008AA2C8: call 00410A84h ; Set (object)
008AA2CD: push eax
008AA2CE: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008AA2D3: add esp, 0000001Ch
008AA2D6: lea eax, var_2C
008AA2D9: push eax
008AA2DA: lea eax, var_28
008AA2DD: push eax
008AA2DE: lea eax, var_24
008AA2E1: push eax
008AA2E2: push 00000003h
008AA2E4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AA2E9: add esp, 00000010h
008AA2EC: mov var_10, 00000000h
008AA2F3: wait 
008AA2F4: push 008AA331h
008AA2F9: jmp 8AA330h
008AA2FB: lea eax, var_38
008AA2FE: push eax
008AA2FF: lea eax, var_34
008AA302: push eax
008AA303: lea eax, var_30
008AA306: push eax
008AA307: lea eax, var_2C
008AA30A: push eax
008AA30B: lea eax, var_28
008AA30E: push eax
008AA30F: lea eax, var_24
008AA312: push eax
008AA313: push 00000006h
008AA315: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AA31A: add esp, 0000001Ch
008AA31D: lea eax, var_58
008AA320: push eax
008AA321: lea eax, var_48
008AA324: push eax
008AA325: push 00000002h
008AA327: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AA32C: add esp, 0000000Ch
008AA32F: ret 
End Sub

Private sub lstCookies__8AA7B1
008AA7B1: push ebp
008AA7B2: mov ebp, esp
008AA7B4: sub esp, 0000000Ch
008AA7B7: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008AA7BC: mov eax, fs:[00h]
008AA7C2: push eax
008AA7C3: mov fs:[00000000h], esp
008AA7CA: push 00000054h
008AA7CC: pop eax
008AA7CD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA7D2: push ebx
008AA7D3: push esi
008AA7D4: push edi
008AA7D5: mov var_0C, esp
008AA7D8: mov var_08, 0040E798h
008AA7DF: mov eax, [ebp+08h]
008AA7E2: and eax, 00000001h
008AA7E5: mov var_04, eax
008AA7E8: mov eax, [ebp+08h]
008AA7EB: and al, FEh
008AA7ED: mov [ebp+08h], eax
008AA7F0: mov eax, [ebp+08h]
008AA7F3: mov eax, [eax]
008AA7F5: push [ebp+08h]
008AA7F8: call [eax+04h]
008AA7FB: mov eax, [ebp+0Ch]
008AA7FE: cmp word ptr [eax], 0002h
008AA802: jnz 008AA8DCh
008AA808: mov var_50, 80020004h
008AA80F: mov var_58, 0000000Ah
008AA816: mov var_40, 80020004h
008AA81D: mov var_48, 0000000Ah
008AA824: mov var_30, 80020004h
008AA82B: mov var_38, 0000000Ah
008AA832: mov var_20, 80020004h
008AA839: mov var_28, 0000000Ah
008AA840: push 00000010h
008AA842: pop eax
008AA843: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA848: lea esi, var_58
008AA84B: mov edi, esp
008AA84D: movsd 
008AA84E: movsd 
008AA84F: movsd 
008AA850: movsd 
008AA851: push 00000010h
008AA853: pop eax
008AA854: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA859: lea esi, var_48
008AA85C: mov edi, esp
008AA85E: movsd 
008AA85F: movsd 
008AA860: movsd 
008AA861: movsd 
008AA862: push 00000010h
008AA864: pop eax
008AA865: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA86A: lea esi, var_38
008AA86D: mov edi, esp
008AA86F: movsd 
008AA870: movsd 
008AA871: movsd 
008AA872: movsd 
008AA873: push 00000010h
008AA875: pop eax
008AA876: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA87B: lea esi, var_28
008AA87E: mov edi, esp
008AA880: movsd 
008AA881: movsd 
008AA882: movsd 
008AA883: movsd 
008AA884: mov eax, [ebp+08h]
008AA887: mov eax, [eax]
008AA889: push [ebp+08h]
008AA88C: call [eax+0000030Ch]
008AA892: push eax
008AA893: lea eax, var_18
008AA896: push eax
008AA897: call 00410A84h ; Set (object)
008AA89C: push eax
008AA89D: mov eax, [ebp+08h]
008AA8A0: mov eax, [eax]
008AA8A2: push [ebp+08h]
008AA8A5: call [eax+000002BCh]
008AA8AB: fclex 
008AA8AD: mov var_5C, eax
008AA8B0: cmp var_5C, 00000000h
008AA8B4: jnl 8AA8D0h
008AA8B6: push 000002BCh
008AA8BB: push 00447014h
008AA8C0: push [ebp+08h]
008AA8C3: push var_5C
008AA8C6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AA8CB: mov var_68, eax
008AA8CE: jmp 8AA8D4h
008AA8D0: and var_68, 00000000h
008AA8D4: lea ecx, var_18
008AA8D7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AA8DC: mov var_04, 00000000h
008AA8E3: push 008AA8F4h
008AA8E8: jmp 8AA8F3h
008AA8EA: lea ecx, var_18
008AA8ED: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AA8F2: ret 
End Sub

Private sub lstCookies__8AA355
008AA355: push ebp
008AA356: mov ebp, esp
008AA358: sub esp, 0000000Ch
008AA35B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008AA360: mov eax, fs:[00h]
008AA366: push eax
008AA367: mov fs:[00000000h], esp
008AA36E: push 00000008h
008AA370: pop eax
008AA371: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA376: push ebx
008AA377: push esi
008AA378: push edi
008AA379: mov var_0C, esp
008AA37C: mov var_08, 0040E738h
008AA383: mov eax, [ebp+08h]
008AA386: and eax, 00000001h
008AA389: mov var_04, eax
008AA38C: mov eax, [ebp+08h]
008AA38F: and al, FEh
008AA391: mov [ebp+08h], eax
008AA394: mov eax, [ebp+08h]
008AA397: mov eax, [eax]
008AA399: push [ebp+08h]
008AA39C: call [eax+04h]
008AA39F: mov eax, [ebp+0Ch]
008AA3A2: or word ptr [eax], FFFFh
008AA3A6: mov var_04, 00000000h
008AA3AD: mov eax, [ebp+08h]
008AA3B0: mov eax, [eax]
008AA3B2: push [ebp+08h]
008AA3B5: call [eax+08h]
008AA3B8: mov eax, var_04
008AA3BB: mov ecx, var_14
008AA3BE: mov fs:[00000000h], ecx
008AA3C5: pop edi
008AA3C6: pop esi
008AA3C7: pop ebx
008AA3C8: leave 
008AA3C9: retn 0008h
End Sub

Private sub lstCookies__8AA3CC
008AA3CC: push ebp
008AA3CD: mov ebp, esp
008AA3CF: sub esp, 00000018h
008AA3D2: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008AA3D7: mov eax, fs:[00h]
008AA3DD: push eax
008AA3DE: mov fs:[00000000h], esp
008AA3E5: push 00000064h
008AA3E7: pop eax
008AA3E8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA3ED: push ebx
008AA3EE: push esi
008AA3EF: push edi
008AA3F0: mov var_18, esp
008AA3F3: mov var_14, 0040E740h
008AA3FA: mov eax, [ebp+08h]
008AA3FD: and eax, 00000001h
008AA400: mov var_10, eax
008AA403: mov eax, [ebp+08h]
008AA406: and al, FEh
008AA408: mov [ebp+08h], eax
008AA40B: mov var_0C, 00000000h
008AA412: mov eax, [ebp+08h]
008AA415: mov eax, [eax]
008AA417: push [ebp+08h]
008AA41A: call [eax+04h]
008AA41D: mov var_04, 00000001h
008AA424: push [ebp+0Ch]
008AA427: lea eax, var_24
008AA42A: push eax
008AA42B: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008AA430: mov var_04, 00000002h
008AA437: push FFFFFFFFh
008AA439: call 00410A60h ; On Error ...
008AA43E: mov var_04, 00000003h
008AA445: push 00000000h
008AA447: push 00000005h
008AA449: push var_24
008AA44C: lea eax, var_3C
008AA44F: push eax
008AA450: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AA455: add esp, 00000010h
008AA458: push eax
008AA459: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008AA45E: mov esi, eax
008AA460: sub esi, 00000001h
008AA463: jo 008AA7ACh
008AA469: push 00000000h
008AA46B: push 00000012h
008AA46D: mov eax, [ebp+08h]
008AA470: mov eax, [eax]
008AA472: push [ebp+08h]
008AA475: call [eax+00000318h]
008AA47B: push eax
008AA47C: lea eax, var_28
008AA47F: push eax
008AA480: call 00410A84h ; Set (object)
008AA485: push eax
008AA486: lea eax, var_4C
008AA489: push eax
008AA48A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AA48F: add esp, 00000010h
008AA492: push eax
008AA493: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008AA498: sub esi, eax
008AA49A: neg esi
008AA49C: sbb esi, esi
008AA49E: inc esi
008AA49F: neg esi
008AA4A1: mov var_70, si
008AA4A5: lea ecx, var_28
008AA4A8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AA4AD: lea eax, var_4C
008AA4B0: push eax
008AA4B1: lea eax, var_3C
008AA4B4: push eax
008AA4B5: push 00000002h
008AA4B7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AA4BC: add esp, 0000000Ch
008AA4BF: movsx eax, word ptr var_70
008AA4C3: test eax, eax
008AA4C5: jz 008AA5FCh
008AA4CB: mov var_04, 00000004h
008AA4D2: push 00000000h
008AA4D4: push 00000013h
008AA4D6: mov eax, [ebp+08h]
008AA4D9: mov eax, [eax]
008AA4DB: push [ebp+08h]
008AA4DE: call [eax+00000318h]
008AA4E4: push eax
008AA4E5: lea eax, var_28
008AA4E8: push eax
008AA4E9: call 00410A84h ; Set (object)
008AA4EE: push eax
008AA4EF: lea eax, var_3C
008AA4F2: push eax
008AA4F3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AA4F8: add esp, 00000010h
008AA4FB: push eax
008AA4FC: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008AA501: push 00000001h
008AA503: pop ecx
008AA504: sub ecx, eax
008AA506: jo 008AA7ACh
008AA50C: mov var_54, ecx
008AA50F: mov var_5C, 00000003h
008AA516: push 00000010h
008AA518: pop eax
008AA519: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA51E: lea esi, var_5C
008AA521: mov edi, esp
008AA523: movsd 
008AA524: movsd 
008AA525: movsd 
008AA526: movsd 
008AA527: push 00000013h
008AA529: mov eax, [ebp+08h]
008AA52C: mov eax, [eax]
008AA52E: push [ebp+08h]
008AA531: call [eax+00000318h]
008AA537: push eax
008AA538: lea eax, var_2C
008AA53B: push eax
008AA53C: call 00410A84h ; Set (object)
008AA541: push eax
008AA542: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008AA547: lea eax, var_2C
008AA54A: push eax
008AA54B: lea eax, var_28
008AA54E: push eax
008AA54F: push 00000002h
008AA551: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AA556: add esp, 0000000Ch
008AA559: lea ecx, var_3C
008AA55C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008AA561: mov var_04, 00000005h
008AA568: or var_54, FFFFFFFFh
008AA56C: mov var_5C, 0000000Bh
008AA573: push 00000010h
008AA575: pop eax
008AA576: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA57B: lea esi, var_5C
008AA57E: mov edi, esp
008AA580: movsd 
008AA581: movsd 
008AA582: movsd 
008AA583: movsd 
008AA584: push 00000011h
008AA586: mov eax, [ebp+08h]
008AA589: mov eax, [eax]
008AA58B: push [ebp+08h]
008AA58E: call [eax+00000318h]
008AA594: push eax
008AA595: lea eax, var_28
008AA598: push eax
008AA599: call 00410A84h ; Set (object)
008AA59E: push eax
008AA59F: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008AA5A4: lea ecx, var_28
008AA5A7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AA5AC: mov var_04, 00000006h
008AA5B3: and var_54, 00000000h
008AA5B7: mov var_5C, 0000000Bh
008AA5BE: push 00000010h
008AA5C0: pop eax
008AA5C1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA5C6: lea esi, var_5C
008AA5C9: mov edi, esp
008AA5CB: movsd 
008AA5CC: movsd 
008AA5CD: movsd 
008AA5CE: movsd 
008AA5CF: push 00000011h
008AA5D1: mov eax, [ebp+08h]
008AA5D4: mov eax, [eax]
008AA5D6: push [ebp+08h]
008AA5D9: call [eax+00000318h]
008AA5DF: push eax
008AA5E0: lea eax, var_28
008AA5E3: push eax
008AA5E4: call 00410A84h ; Set (object)
008AA5E9: push eax
008AA5EA: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008AA5EF: lea ecx, var_28
008AA5F2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AA5F7: jmp 008AA751h
008AA5FC: mov var_04, 00000008h
008AA603: and var_54, 00000000h
008AA607: mov var_5C, 00000003h
008AA60E: push 00000010h
008AA610: pop eax
008AA611: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA616: lea esi, var_5C
008AA619: mov edi, esp
008AA61B: movsd 
008AA61C: movsd 
008AA61D: movsd 
008AA61E: movsd 
008AA61F: push 00000013h
008AA621: mov eax, [ebp+08h]
008AA624: mov eax, [eax]
008AA626: push [ebp+08h]
008AA629: call [eax+00000318h]
008AA62F: push eax
008AA630: lea eax, var_28
008AA633: push eax
008AA634: call 00410A84h ; Set (object)
008AA639: push eax
008AA63A: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008AA63F: lea ecx, var_28
008AA642: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AA647: mov var_04, 00000009h
008AA64E: push 00000000h
008AA650: push 00000005h
008AA652: push var_24
008AA655: lea eax, var_3C
008AA658: push eax
008AA659: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AA65E: add esp, 00000010h
008AA661: push eax
008AA662: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008AA667: sub eax, 00000001h
008AA66A: jo 008AA7ACh
008AA670: mov var_54, eax
008AA673: mov var_5C, 00000003h
008AA67A: push 00000010h
008AA67C: pop eax
008AA67D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA682: lea esi, var_5C
008AA685: mov edi, esp
008AA687: movsd 
008AA688: movsd 
008AA689: movsd 
008AA68A: movsd 
008AA68B: push 00000012h
008AA68D: mov eax, [ebp+08h]
008AA690: mov eax, [eax]
008AA692: push [ebp+08h]
008AA695: call [eax+00000318h]
008AA69B: push eax
008AA69C: lea eax, var_28
008AA69F: push eax
008AA6A0: call 00410A84h ; Set (object)
008AA6A5: push eax
008AA6A6: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008AA6AB: lea ecx, var_28
008AA6AE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AA6B3: lea ecx, var_3C
008AA6B6: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008AA6BB: mov var_04, 0000000Ah
008AA6C2: or var_54, FFFFFFFFh
008AA6C6: mov var_5C, 0000000Bh
008AA6CD: push 00000010h
008AA6CF: pop eax
008AA6D0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA6D5: lea esi, var_5C
008AA6D8: mov edi, esp
008AA6DA: movsd 
008AA6DB: movsd 
008AA6DC: movsd 
008AA6DD: movsd 
008AA6DE: push 00000011h
008AA6E0: mov eax, [ebp+08h]
008AA6E3: mov eax, [eax]
008AA6E5: push [ebp+08h]
008AA6E8: call [eax+00000318h]
008AA6EE: push eax
008AA6EF: lea eax, var_28
008AA6F2: push eax
008AA6F3: call 00410A84h ; Set (object)
008AA6F8: push eax
008AA6F9: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008AA6FE: lea ecx, var_28
008AA701: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AA706: mov var_04, 0000000Bh
008AA70D: and var_54, 00000000h
008AA711: mov var_5C, 0000000Bh
008AA718: push 00000010h
008AA71A: pop eax
008AA71B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA720: lea esi, var_5C
008AA723: mov edi, esp
008AA725: movsd 
008AA726: movsd 
008AA727: movsd 
008AA728: movsd 
008AA729: push 00000011h
008AA72B: mov eax, [ebp+08h]
008AA72E: mov eax, [eax]
008AA730: push [ebp+08h]
008AA733: call [eax+00000318h]
008AA739: push eax
008AA73A: lea eax, var_28
008AA73D: push eax
008AA73E: call 00410A84h ; Set (object)
008AA743: push eax
008AA744: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008AA749: lea ecx, var_28
008AA74C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AA751: mov var_10, 00000000h
008AA758: push 008AA78Dh
008AA75D: jmp 8AA784h
008AA75F: lea eax, var_2C
008AA762: push eax
008AA763: lea eax, var_28
008AA766: push eax
008AA767: push 00000002h
008AA769: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AA76E: add esp, 0000000Ch
008AA771: lea eax, var_4C
008AA774: push eax
008AA775: lea eax, var_3C
008AA778: push eax
008AA779: push 00000002h
008AA77B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AA780: add esp, 0000000Ch
008AA783: ret 
End Sub

Private sub mnuCookiesCopy__8AB1A0
008AB1A0: push ebp
008AB1A1: mov ebp, esp
008AB1A3: sub esp, 00000018h
008AB1A6: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008AB1AB: mov eax, fs:[00h]
008AB1B1: push eax
008AB1B2: mov fs:[00000000h], esp
008AB1B9: mov eax, 00000298h
008AB1BE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AB1C3: push ebx
008AB1C4: push esi
008AB1C5: push edi
008AB1C6: mov var_18, esp
008AB1C9: mov var_14, 0040E810h
008AB1D0: mov eax, [ebp+08h]
008AB1D3: and eax, 00000001h
008AB1D6: mov var_10, eax
008AB1D9: mov eax, [ebp+08h]
008AB1DC: and al, FEh
008AB1DE: mov [ebp+08h], eax
008AB1E1: mov var_0C, 00000000h
008AB1E8: mov eax, [ebp+08h]
008AB1EB: mov eax, [eax]
008AB1ED: push [ebp+08h]
008AB1F0: call [eax+04h]
008AB1F3: mov var_04, 00000001h
008AB1FA: mov var_04, 00000002h
008AB201: push FFFFFFFFh
008AB203: call 00410A60h ; On Error ...
008AB208: mov var_04, 00000003h
008AB20F: mov eax, [ebp+0Ch]
008AB212: mov ax, [eax]
008AB215: mov var_00000254, ax
008AB21C: movsx eax, word ptr var_00000254
008AB223: mov var_00000270, eax
008AB229: cmp var_00000270, 00000000h
008AB230: jz 8AB256h
008AB232: cmp var_00000270, 00000001h
008AB239: jz 008AB911h
008AB23F: cmp var_00000270, 00000002h
008AB246: jz 008ABFD2h
008AB24C: jmp 008AC358h
008AB251: jmp 008AC358h
008AB256: mov var_04, 00000005h
008AB25D: mov var_00000188, 00000001h
008AB267: mov var_00000190, 00000002h
008AB271: push 00000000h
008AB273: push 00000001h
008AB275: push 00440E48h
008AB27A: push 00000000h
008AB27C: push 00000018h
008AB27E: mov eax, [ebp+08h]
008AB281: mov eax, [eax]
008AB283: push [ebp+08h]
008AB286: call [eax+00000318h]
008AB28C: push eax
008AB28D: lea eax, var_58
008AB290: push eax
008AB291: call 00410A84h ; Set (object)
008AB296: push eax
008AB297: lea eax, var_000000A0
008AB29D: push eax
008AB29E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AB2A3: add esp, 00000010h
008AB2A6: push eax
008AB2A7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AB2AC: push eax
008AB2AD: lea eax, var_5C
008AB2B0: push eax
008AB2B1: call 00410A84h ; Set (object)
008AB2B6: push eax
008AB2B7: lea eax, var_000000B0
008AB2BD: push eax
008AB2BE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AB2C3: add esp, 00000010h
008AB2C6: push eax
008AB2C7: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008AB2CC: mov var_00000198, eax
008AB2D2: mov var_000001A0, 00000003h
008AB2DC: mov var_000001A8, 00000001h
008AB2E6: mov var_000001B0, 00000002h
008AB2F0: lea eax, var_00000190
008AB2F6: push eax
008AB2F7: lea eax, var_000001A0
008AB2FD: push eax
008AB2FE: lea eax, var_000001B0
008AB304: push eax
008AB305: lea eax, var_00000250
008AB30B: push eax
008AB30C: lea eax, var_00000240
008AB312: push eax
008AB313: lea eax, var_30
008AB316: push eax
008AB317: call 00410A3Ch ; For
008AB31C: mov var_0000026C, eax
008AB322: lea eax, var_5C
008AB325: push eax
008AB326: lea eax, var_58
008AB329: push eax
008AB32A: push 00000002h
008AB32C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AB331: add esp, 0000000Ch
008AB334: lea eax, var_000000B0
008AB33A: push eax
008AB33B: lea eax, var_000000A0
008AB341: push eax
008AB342: push 00000002h
008AB344: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AB349: add esp, 0000000Ch
008AB34C: jmp 008AB700h
008AB351: mov var_04, 00000006h
008AB358: lea eax, var_30
008AB35B: mov var_00000188, eax
008AB361: mov var_00000190, 0000400Ch
008AB36B: mov var_000001A8, 00000001h
008AB375: mov var_000001B0, 00000003h
008AB37F: lea eax, var_30
008AB382: mov var_00000198, eax
008AB388: mov var_000001A0, 0000400Ch
008AB392: mov var_000001D8, 00000002h
008AB39C: mov var_000001E0, 00000003h
008AB3A6: lea eax, var_30
008AB3A9: mov var_000001C8, eax
008AB3AF: mov var_000001D0, 0000400Ch
008AB3B9: push var_34
008AB3BC: push 00000000h
008AB3BE: push 00000000h
008AB3C0: push 00440E58h
008AB3C5: push 00000010h
008AB3C7: pop eax
008AB3C8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AB3CD: lea esi, var_00000190
008AB3D3: mov edi, esp
008AB3D5: movsd 
008AB3D6: movsd 
008AB3D7: movsd 
008AB3D8: movsd 
008AB3D9: push 00000001h
008AB3DB: push 00000000h
008AB3DD: push 00440E48h
008AB3E2: push 00000000h
008AB3E4: push 00000018h
008AB3E6: mov eax, [ebp+08h]
008AB3E9: mov eax, [eax]
008AB3EB: push [ebp+08h]
008AB3EE: call [eax+00000318h]
008AB3F4: push eax
008AB3F5: lea eax, var_58
008AB3F8: push eax
008AB3F9: call 00410A84h ; Set (object)
008AB3FE: push eax
008AB3FF: lea eax, var_000000A0
008AB405: push eax
008AB406: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AB40B: add esp, 00000010h
008AB40E: push eax
008AB40F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AB414: push eax
008AB415: lea eax, var_5C
008AB418: push eax
008AB419: call 00410A84h ; Set (object)
008AB41E: push eax
008AB41F: lea eax, var_000000B0
008AB425: push eax
008AB426: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AB42B: add esp, 00000020h
008AB42E: push eax
008AB42F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AB434: push eax
008AB435: lea eax, var_60
008AB438: push eax
008AB439: call 00410A84h ; Set (object)
008AB43E: push eax
008AB43F: lea eax, var_000000C0
008AB445: push eax
008AB446: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AB44B: add esp, 00000010h
008AB44E: push eax
008AB44F: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008AB454: mov edx, eax
008AB456: lea ecx, var_38
008AB459: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AB45E: push eax
008AB45F: call 00410A18h ; &
008AB464: mov edx, eax
008AB466: lea ecx, var_3C
008AB469: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AB46E: push eax
008AB46F: push 004412B8h
008AB474: call 00410A18h ; &
008AB479: mov edx, eax
008AB47B: lea ecx, var_40
008AB47E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AB483: push eax
008AB484: push 00000010h
008AB486: pop eax
008AB487: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AB48C: lea esi, var_000001B0
008AB492: mov edi, esp
008AB494: movsd 
008AB495: movsd 
008AB496: movsd 
008AB497: movsd 
008AB498: push 00000001h
008AB49A: push 00000010h
008AB49C: push 00440E58h
008AB4A1: push 00000010h
008AB4A3: pop eax
008AB4A4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AB4A9: lea esi, var_000001A0
008AB4AF: mov edi, esp
008AB4B1: movsd 
008AB4B2: movsd 
008AB4B3: movsd 
008AB4B4: movsd 
008AB4B5: push 00000001h
008AB4B7: push 00000000h
008AB4B9: push 00440E48h
008AB4BE: push 00000000h
008AB4C0: push 00000018h
008AB4C2: mov eax, [ebp+08h]
008AB4C5: mov eax, [eax]
008AB4C7: push [ebp+08h]
008AB4CA: call [eax+00000318h]
008AB4D0: push eax
008AB4D1: lea eax, var_64
008AB4D4: push eax
008AB4D5: call 00410A84h ; Set (object)
008AB4DA: push eax
008AB4DB: lea eax, var_000000D0
008AB4E1: push eax
008AB4E2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AB4E7: add esp, 00000010h
008AB4EA: push eax
008AB4EB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AB4F0: push eax
008AB4F1: lea eax, var_68
008AB4F4: push eax
008AB4F5: call 00410A84h ; Set (object)
008AB4FA: push eax
008AB4FB: lea eax, var_000000E0
008AB501: push eax
008AB502: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AB507: add esp, 00000020h
008AB50A: push eax
008AB50B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AB510: push eax
008AB511: lea eax, var_6C
008AB514: push eax
008AB515: call 00410A84h ; Set (object)
008AB51A: push eax
008AB51B: lea eax, var_000000F0
008AB521: push eax
008AB522: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AB527: add esp, 00000020h
008AB52A: push eax
008AB52B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008AB530: mov edx, eax
008AB532: lea ecx, var_44
008AB535: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AB53A: push eax
008AB53B: call 00410A18h ; &
008AB540: mov edx, eax
008AB542: lea ecx, var_48
008AB545: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AB54A: push eax
008AB54B: push 004412B8h
008AB550: call 00410A18h ; &
008AB555: mov edx, eax
008AB557: lea ecx, var_4C
008AB55A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AB55F: push eax
008AB560: push 00000010h
008AB562: pop eax
008AB563: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AB568: lea esi, var_000001E0
008AB56E: mov edi, esp
008AB570: movsd 
008AB571: movsd 
008AB572: movsd 
008AB573: movsd 
008AB574: push 00000001h
008AB576: push 00000010h
008AB578: push 00440E58h
008AB57D: push 00000010h
008AB57F: pop eax
008AB580: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AB585: lea esi, var_000001D0
008AB58B: mov edi, esp
008AB58D: movsd 
008AB58E: movsd 
008AB58F: movsd 
008AB590: movsd 
008AB591: push 00000001h
008AB593: push 00000000h
008AB595: push 00440E48h
008AB59A: push 00000000h
008AB59C: push 00000018h
008AB59E: mov eax, [ebp+08h]
008AB5A1: mov eax, [eax]
008AB5A3: push [ebp+08h]
008AB5A6: call [eax+00000318h]
008AB5AC: push eax
008AB5AD: lea eax, var_70
008AB5B0: push eax
008AB5B1: call 00410A84h ; Set (object)
008AB5B6: push eax
008AB5B7: lea eax, var_00000100
008AB5BD: push eax
008AB5BE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AB5C3: add esp, 00000010h
008AB5C6: push eax
008AB5C7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AB5CC: push eax
008AB5CD: lea eax, var_74
008AB5D0: push eax
008AB5D1: call 00410A84h ; Set (object)
008AB5D6: push eax
008AB5D7: lea eax, var_00000110
008AB5DD: push eax
008AB5DE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AB5E3: add esp, 00000020h
008AB5E6: push eax
008AB5E7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AB5EC: push eax
008AB5ED: lea eax, var_78
008AB5F0: push eax
008AB5F1: call 00410A84h ; Set (object)
008AB5F6: push eax
008AB5F7: lea eax, var_00000120
008AB5FD: push eax
008AB5FE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AB603: add esp, 00000020h
008AB606: push eax
008AB607: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008AB60C: mov edx, eax
008AB60E: lea ecx, var_50
008AB611: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AB616: push eax
008AB617: call 00410A18h ; &
008AB61C: mov edx, eax
008AB61E: lea ecx, var_54
008AB621: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AB626: push eax
008AB627: push 00441264h ; vbCrLf
008AB62C: call 00410A18h ; &
008AB631: mov edx, eax
008AB633: lea ecx, var_34
008AB636: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AB63B: lea eax, var_54
008AB63E: push eax
008AB63F: lea eax, var_50
008AB642: push eax
008AB643: lea eax, var_4C
008AB646: push eax
008AB647: lea eax, var_48
008AB64A: push eax
008AB64B: lea eax, var_44
008AB64E: push eax
008AB64F: lea eax, var_40
008AB652: push eax
008AB653: lea eax, var_3C
008AB656: push eax
008AB657: lea eax, var_38
008AB65A: push eax
008AB65B: push 00000008h
008AB65D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AB662: add esp, 00000024h
008AB665: lea eax, var_78
008AB668: push eax
008AB669: lea eax, var_74
008AB66C: push eax
008AB66D: lea eax, var_70
008AB670: push eax
008AB671: lea eax, var_6C
008AB674: push eax
008AB675: lea eax, var_68
008AB678: push eax
008AB679: lea eax, var_64
008AB67C: push eax
008AB67D: lea eax, var_60
008AB680: push eax
008AB681: lea eax, var_5C
008AB684: push eax
008AB685: lea eax, var_58
008AB688: push eax
008AB689: push 00000009h
008AB68B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AB690: add esp, 00000028h
008AB693: lea eax, var_00000120
008AB699: push eax
008AB69A: lea eax, var_00000110
008AB6A0: push eax
008AB6A1: lea eax, var_00000100
008AB6A7: push eax
008AB6A8: lea eax, var_000000F0
008AB6AE: push eax
008AB6AF: lea eax, var_000000E0
008AB6B5: push eax
008AB6B6: lea eax, var_000000D0
008AB6BC: push eax
008AB6BD: lea eax, var_000000C0
008AB6C3: push eax
008AB6C4: lea eax, var_000000B0
008AB6CA: push eax
008AB6CB: lea eax, var_000000A0
008AB6D1: push eax
008AB6D2: push 00000009h
008AB6D4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AB6D9: add esp, 00000028h
008AB6DC: mov var_04, 00000007h
008AB6E3: lea eax, var_00000250
008AB6E9: push eax
008AB6EA: lea eax, var_00000240
008AB6F0: push eax
008AB6F1: lea eax, var_30
008AB6F4: push eax
008AB6F5: call 00410A36h ; Next
008AB6FA: mov var_0000026C, eax
008AB700: cmp var_0000026C, 00000000h
008AB707: jnz 008AB351h
008AB70D: mov var_04, 00000008h
008AB714: cmp [008F529Ch], 00000000h
008AB71B: jnz 8AB738h
008AB71D: push 008F529Ch
008AB722: push 00440F2Ch
008AB727: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008AB72C: mov var_00000274, 008F529Ch
008AB736: jmp 8AB742h
008AB738: mov var_00000274, 008F529Ch
008AB742: mov eax, var_00000274
008AB748: mov eax, [eax]
008AB74A: mov var_00000224, eax
008AB750: lea eax, var_58
008AB753: push eax
008AB754: mov eax, var_00000224
008AB75A: mov eax, [eax]
008AB75C: push var_00000224
008AB762: call [eax+1Ch]
008AB765: fclex 
008AB767: mov var_00000228, eax
008AB76D: cmp var_00000228, 00000000h
008AB774: jnl 8AB796h
008AB776: push 0000001Ch
008AB778: push 00440F1Ch
008AB77D: push var_00000224
008AB783: push var_00000228
008AB789: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AB78E: mov var_00000278, eax
008AB794: jmp 8AB79Dh
008AB796: and var_00000278, 00000000h
008AB79D: mov eax, var_58
008AB7A0: mov var_0000022C, eax
008AB7A6: mov eax, var_0000022C
008AB7AC: mov eax, [eax]
008AB7AE: push var_0000022C
008AB7B4: call [eax+50h]
008AB7B7: fclex 
008AB7B9: mov var_00000230, eax
008AB7BF: cmp var_00000230, 00000000h
008AB7C6: jnl 8AB7E8h
008AB7C8: push 00000050h
008AB7CA: push 00445554h
008AB7CF: push var_0000022C
008AB7D5: push var_00000230
008AB7DB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AB7E0: mov var_0000027C, eax
008AB7E6: jmp 8AB7EFh
008AB7E8: and var_0000027C, 00000000h
008AB7EF: lea ecx, var_58
008AB7F2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AB7F7: mov var_04, 00000009h
008AB7FE: cmp [008F529Ch], 00000000h
008AB805: jnz 8AB822h
008AB807: push 008F529Ch
008AB80C: push 00440F2Ch
008AB811: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008AB816: mov var_00000280, 008F529Ch
008AB820: jmp 8AB82Ch
008AB822: mov var_00000280, 008F529Ch
008AB82C: mov eax, var_00000280
008AB832: mov eax, [eax]
008AB834: mov var_00000224, eax
008AB83A: lea eax, var_58
008AB83D: push eax
008AB83E: mov eax, var_00000224
008AB844: mov eax, [eax]
008AB846: push var_00000224
008AB84C: call [eax+1Ch]
008AB84F: fclex 
008AB851: mov var_00000228, eax
008AB857: cmp var_00000228, 00000000h
008AB85E: jnl 8AB880h
008AB860: push 0000001Ch
008AB862: push 00440F1Ch
008AB867: push var_00000224
008AB86D: push var_00000228
008AB873: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AB878: mov var_00000284, eax
008AB87E: jmp 8AB887h
008AB880: and var_00000284, 00000000h
008AB887: mov eax, var_58
008AB88A: mov var_0000022C, eax
008AB890: mov var_00000188, 80020004h
008AB89A: mov var_00000190, 0000000Ah
008AB8A4: push 00000010h
008AB8A6: pop eax
008AB8A7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AB8AC: lea esi, var_00000190
008AB8B2: mov edi, esp
008AB8B4: movsd 
008AB8B5: movsd 
008AB8B6: movsd 
008AB8B7: movsd 
008AB8B8: push var_34
008AB8BB: mov eax, var_0000022C
008AB8C1: mov eax, [eax]
008AB8C3: push var_0000022C
008AB8C9: call [eax+60h]
008AB8CC: fclex 
008AB8CE: mov var_00000230, eax
008AB8D4: cmp var_00000230, 00000000h
008AB8DB: jnl 8AB8FDh
008AB8DD: push 00000060h
008AB8DF: push 00445554h
008AB8E4: push var_0000022C
008AB8EA: push var_00000230
008AB8F0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AB8F5: mov var_00000288, eax
008AB8FB: jmp 8AB904h
008AB8FD: and var_00000288, 00000000h
008AB904: lea ecx, var_58
008AB907: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AB90C: jmp 008AC358h
008AB911: mov var_04, 0000000Bh
008AB918: push 00000000h
008AB91A: push 00000008h
008AB91C: push 00440E58h
008AB921: push 00000000h
008AB923: push 00000017h
008AB925: mov eax, [ebp+08h]
008AB928: mov eax, [eax]
008AB92A: push [ebp+08h]
008AB92D: call [eax+00000318h]
008AB933: push eax
008AB934: lea eax, var_58
008AB937: push eax
008AB938: call 00410A84h ; Set (object)
008AB93D: push eax
008AB93E: lea eax, var_000000A0
008AB944: push eax
008AB945: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AB94A: add esp, 00000010h
008AB94D: push eax
008AB94E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AB953: push eax
008AB954: lea eax, var_5C
008AB957: push eax
008AB958: call 00410A84h ; Set (object)
008AB95D: push eax
008AB95E: lea eax, var_000000B0
008AB964: push eax
008AB965: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AB96A: add esp, 00000010h
008AB96D: push eax
008AB96E: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008AB973: mov var_00000188, eax
008AB979: mov var_00000190, 00000003h
008AB983: mov var_000001C8, 00000001h
008AB98D: mov var_000001D0, 00000003h
008AB997: push 00000000h
008AB999: push 00000008h
008AB99B: push 00440E58h
008AB9A0: push 00000000h
008AB9A2: push 00000017h
008AB9A4: mov eax, [ebp+08h]
008AB9A7: mov eax, [eax]
008AB9A9: push [ebp+08h]
008AB9AC: call [eax+00000318h]
008AB9B2: push eax
008AB9B3: lea eax, var_6C
008AB9B6: push eax
008AB9B7: call 00410A84h ; Set (object)
008AB9BC: push eax
008AB9BD: lea eax, var_000000F0
008AB9C3: push eax
008AB9C4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AB9C9: add esp, 00000010h
008AB9CC: push eax
008AB9CD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AB9D2: push eax
008AB9D3: lea eax, var_70
008AB9D6: push eax
008AB9D7: call 00410A84h ; Set (object)
008AB9DC: push eax
008AB9DD: lea eax, var_00000100
008AB9E3: push eax
008AB9E4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AB9E9: add esp, 00000010h
008AB9EC: push eax
008AB9ED: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008AB9F2: mov var_000001A8, eax
008AB9F8: mov var_000001B0, 00000003h
008ABA02: mov var_00000208, 00000002h
008ABA0C: mov var_00000210, 00000003h
008ABA16: push 00000000h
008ABA18: push 00000008h
008ABA1A: push 00440E58h
008ABA1F: push 00000000h
008ABA21: push 00000017h
008ABA23: mov eax, [ebp+08h]
008ABA26: mov eax, [eax]
008ABA28: push [ebp+08h]
008ABA2B: call [eax+00000318h]
008ABA31: push eax
008ABA32: lea eax, var_80
008ABA35: push eax
008ABA36: call 00410A84h ; Set (object)
008ABA3B: push eax
008ABA3C: lea eax, var_00000140
008ABA42: push eax
008ABA43: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ABA48: add esp, 00000010h
008ABA4B: push eax
008ABA4C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ABA51: push eax
008ABA52: lea eax, var_00000084
008ABA58: push eax
008ABA59: call 00410A84h ; Set (object)
008ABA5E: push eax
008ABA5F: lea eax, var_00000150
008ABA65: push eax
008ABA66: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ABA6B: add esp, 00000010h
008ABA6E: push eax
008ABA6F: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008ABA74: mov var_000001E8, eax
008ABA7A: mov var_000001F0, 00000003h
008ABA84: push 00000000h
008ABA86: push 00000000h
008ABA88: push 00440E58h
008ABA8D: push 00000010h
008ABA8F: pop eax
008ABA90: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ABA95: lea esi, var_00000190
008ABA9B: mov edi, esp
008ABA9D: movsd 
008ABA9E: movsd 
008ABA9F: movsd 
008ABAA0: movsd 
008ABAA1: push 00000001h
008ABAA3: push 00000000h
008ABAA5: push 00440E48h
008ABAAA: push 00000000h
008ABAAC: push 00000018h
008ABAAE: mov eax, [ebp+08h]
008ABAB1: mov eax, [eax]
008ABAB3: push [ebp+08h]
008ABAB6: call [eax+00000318h]
008ABABC: push eax
008ABABD: lea eax, var_60
008ABAC0: push eax
008ABAC1: call 00410A84h ; Set (object)
008ABAC6: push eax
008ABAC7: lea eax, var_000000C0
008ABACD: push eax
008ABACE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ABAD3: add esp, 00000010h
008ABAD6: push eax
008ABAD7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ABADC: push eax
008ABADD: lea eax, var_64
008ABAE0: push eax
008ABAE1: call 00410A84h ; Set (object)
008ABAE6: push eax
008ABAE7: lea eax, var_000000D0
008ABAED: push eax
008ABAEE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ABAF3: add esp, 00000020h
008ABAF6: push eax
008ABAF7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ABAFC: push eax
008ABAFD: lea eax, var_68
008ABB00: push eax
008ABB01: call 00410A84h ; Set (object)
008ABB06: push eax
008ABB07: lea eax, var_000000E0
008ABB0D: push eax
008ABB0E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ABB13: add esp, 00000010h
008ABB16: push eax
008ABB17: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008ABB1C: mov edx, eax
008ABB1E: lea ecx, var_38
008ABB21: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ABB26: push eax
008ABB27: push 004412B8h
008ABB2C: call 00410A18h ; &
008ABB31: mov edx, eax
008ABB33: lea ecx, var_3C
008ABB36: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ABB3B: push eax
008ABB3C: push 00000010h
008ABB3E: pop eax
008ABB3F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ABB44: lea esi, var_000001D0
008ABB4A: mov edi, esp
008ABB4C: movsd 
008ABB4D: movsd 
008ABB4E: movsd 
008ABB4F: movsd 
008ABB50: push 00000001h
008ABB52: push 00000010h
008ABB54: push 00440E58h
008ABB59: push 00000010h
008ABB5B: pop eax
008ABB5C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ABB61: lea esi, var_000001B0
008ABB67: mov edi, esp
008ABB69: movsd 
008ABB6A: movsd 
008ABB6B: movsd 
008ABB6C: movsd 
008ABB6D: push 00000001h
008ABB6F: push 00000000h
008ABB71: push 00440E48h
008ABB76: push 00000000h
008ABB78: push 00000018h
008ABB7A: mov eax, [ebp+08h]
008ABB7D: mov eax, [eax]
008ABB7F: push [ebp+08h]
008ABB82: call [eax+00000318h]
008ABB88: push eax
008ABB89: lea eax, var_74
008ABB8C: push eax
008ABB8D: call 00410A84h ; Set (object)
008ABB92: push eax
008ABB93: lea eax, var_00000110
008ABB99: push eax
008ABB9A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ABB9F: add esp, 00000010h
008ABBA2: push eax
008ABBA3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ABBA8: push eax
008ABBA9: lea eax, var_78
008ABBAC: push eax
008ABBAD: call 00410A84h ; Set (object)
008ABBB2: push eax
008ABBB3: lea eax, var_00000120
008ABBB9: push eax
008ABBBA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ABBBF: add esp, 00000020h
008ABBC2: push eax
008ABBC3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ABBC8: push eax
008ABBC9: lea eax, var_7C
008ABBCC: push eax
008ABBCD: call 00410A84h ; Set (object)
008ABBD2: push eax
008ABBD3: lea eax, var_00000130
008ABBD9: push eax
008ABBDA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ABBDF: add esp, 00000020h
008ABBE2: push eax
008ABBE3: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008ABBE8: mov edx, eax
008ABBEA: lea ecx, var_40
008ABBED: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ABBF2: push eax
008ABBF3: call 00410A18h ; &
008ABBF8: mov edx, eax
008ABBFA: lea ecx, var_44
008ABBFD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ABC02: push eax
008ABC03: push 004412B8h
008ABC08: call 00410A18h ; &
008ABC0D: mov edx, eax
008ABC0F: lea ecx, var_48
008ABC12: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ABC17: push eax
008ABC18: push 00000010h
008ABC1A: pop eax
008ABC1B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ABC20: lea esi, var_00000210
008ABC26: mov edi, esp
008ABC28: movsd 
008ABC29: movsd 
008ABC2A: movsd 
008ABC2B: movsd 
008ABC2C: push 00000001h
008ABC2E: push 00000010h
008ABC30: push 00440E58h
008ABC35: push 00000010h
008ABC37: pop eax
008ABC38: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ABC3D: lea esi, var_000001F0
008ABC43: mov edi, esp
008ABC45: movsd 
008ABC46: movsd 
008ABC47: movsd 
008ABC48: movsd 
008ABC49: push 00000001h
008ABC4B: push 00000000h
008ABC4D: push 00440E48h
008ABC52: push 00000000h
008ABC54: push 00000018h
008ABC56: mov eax, [ebp+08h]
008ABC59: mov eax, [eax]
008ABC5B: push [ebp+08h]
008ABC5E: call [eax+00000318h]
008ABC64: push eax
008ABC65: lea eax, var_00000088
008ABC6B: push eax
008ABC6C: call 00410A84h ; Set (object)
008ABC71: push eax
008ABC72: lea eax, var_00000160
008ABC78: push eax
008ABC79: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ABC7E: add esp, 00000010h
008ABC81: push eax
008ABC82: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ABC87: push eax
008ABC88: lea eax, var_0000008C
008ABC8E: push eax
008ABC8F: call 00410A84h ; Set (object)
008ABC94: push eax
008ABC95: lea eax, var_00000170
008ABC9B: push eax
008ABC9C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ABCA1: add esp, 00000020h
008ABCA4: push eax
008ABCA5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008ABCAA: push eax
008ABCAB: lea eax, var_00000090
008ABCB1: push eax
008ABCB2: call 00410A84h ; Set (object)
008ABCB7: push eax
008ABCB8: lea eax, var_00000180
008ABCBE: push eax
008ABCBF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008ABCC4: add esp, 00000020h
008ABCC7: push eax
008ABCC8: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008ABCCD: mov edx, eax
008ABCCF: lea ecx, var_4C
008ABCD2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ABCD7: push eax
008ABCD8: call 00410A18h ; &
008ABCDD: mov edx, eax
008ABCDF: lea ecx, var_34
008ABCE2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008ABCE7: lea eax, var_4C
008ABCEA: push eax
008ABCEB: lea eax, var_48
008ABCEE: push eax
008ABCEF: lea eax, var_44
008ABCF2: push eax
008ABCF3: lea eax, var_40
008ABCF6: push eax
008ABCF7: lea eax, var_3C
008ABCFA: push eax
008ABCFB: lea eax, var_38
008ABCFE: push eax
008ABCFF: push 00000006h
008ABD01: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008ABD06: add esp, 0000001Ch
008ABD09: lea eax, var_00000090
008ABD0F: push eax
008ABD10: lea eax, var_0000008C
008ABD16: push eax
008ABD17: lea eax, var_00000088
008ABD1D: push eax
008ABD1E: lea eax, var_00000084
008ABD24: push eax
008ABD25: lea eax, var_80
008ABD28: push eax
008ABD29: lea eax, var_7C
008ABD2C: push eax
008ABD2D: lea eax, var_78
008ABD30: push eax
008ABD31: lea eax, var_74
008ABD34: push eax
008ABD35: lea eax, var_70
008ABD38: push eax
008ABD39: lea eax, var_6C
008ABD3C: push eax
008ABD3D: lea eax, var_68
008ABD40: push eax
008ABD41: lea eax, var_64
008ABD44: push eax
008ABD45: lea eax, var_60
008ABD48: push eax
008ABD49: lea eax, var_5C
008ABD4C: push eax
008ABD4D: lea eax, var_58
008ABD50: push eax
008ABD51: push 0000000Fh
008ABD53: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008ABD58: add esp, 00000040h
008ABD5B: lea eax, var_00000180
008ABD61: push eax
008ABD62: lea eax, var_00000170
008ABD68: push eax
008ABD69: lea eax, var_00000160
008ABD6F: push eax
008ABD70: lea eax, var_00000150
008ABD76: push eax
008ABD77: lea eax, var_00000140
008ABD7D: push eax
008ABD7E: lea eax, var_00000130
008ABD84: push eax
008ABD85: lea eax, var_00000120
008ABD8B: push eax
008ABD8C: lea eax, var_00000110
008ABD92: push eax
008ABD93: lea eax, var_00000100
008ABD99: push eax
008ABD9A: lea eax, var_000000F0
008ABDA0: push eax
008ABDA1: lea eax, var_000000E0
008ABDA7: push eax
008ABDA8: lea eax, var_000000D0
008ABDAE: push eax
008ABDAF: lea eax, var_000000C0
008ABDB5: push eax
008ABDB6: lea eax, var_000000B0
008ABDBC: push eax
008ABDBD: lea eax, var_000000A0
008ABDC3: push eax
008ABDC4: push 0000000Fh
008ABDC6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008ABDCB: add esp, 00000040h
008ABDCE: mov var_04, 0000000Ch
008ABDD5: cmp [008F529Ch], 00000000h
008ABDDC: jnz 8ABDF9h
008ABDDE: push 008F529Ch
008ABDE3: push 00440F2Ch
008ABDE8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008ABDED: mov var_0000028C, 008F529Ch
008ABDF7: jmp 8ABE03h
008ABDF9: mov var_0000028C, 008F529Ch
008ABE03: mov eax, var_0000028C
008ABE09: mov eax, [eax]
008ABE0B: mov var_00000224, eax
008ABE11: lea eax, var_58
008ABE14: push eax
008ABE15: mov eax, var_00000224
008ABE1B: mov eax, [eax]
008ABE1D: push var_00000224
008ABE23: call [eax+1Ch]
008ABE26: fclex 
008ABE28: mov var_00000228, eax
008ABE2E: cmp var_00000228, 00000000h
008ABE35: jnl 8ABE57h
008ABE37: push 0000001Ch
008ABE39: push 00440F1Ch
008ABE3E: push var_00000224
008ABE44: push var_00000228
008ABE4A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ABE4F: mov var_00000290, eax
008ABE55: jmp 8ABE5Eh
008ABE57: and var_00000290, 00000000h
008ABE5E: mov eax, var_58
008ABE61: mov var_0000022C, eax
008ABE67: mov eax, var_0000022C
008ABE6D: mov eax, [eax]
008ABE6F: push var_0000022C
008ABE75: call [eax+50h]
008ABE78: fclex 
008ABE7A: mov var_00000230, eax
008ABE80: cmp var_00000230, 00000000h
008ABE87: jnl 8ABEA9h
008ABE89: push 00000050h
008ABE8B: push 00445554h
008ABE90: push var_0000022C
008ABE96: push var_00000230
008ABE9C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ABEA1: mov var_00000294, eax
008ABEA7: jmp 8ABEB0h
008ABEA9: and var_00000294, 00000000h
008ABEB0: lea ecx, var_58
008ABEB3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ABEB8: mov var_04, 0000000Dh
008ABEBF: cmp [008F529Ch], 00000000h
008ABEC6: jnz 8ABEE3h
008ABEC8: push 008F529Ch
008ABECD: push 00440F2Ch
008ABED2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008ABED7: mov var_00000298, 008F529Ch
008ABEE1: jmp 8ABEEDh
008ABEE3: mov var_00000298, 008F529Ch
008ABEED: mov eax, var_00000298
008ABEF3: mov eax, [eax]
008ABEF5: mov var_00000224, eax
008ABEFB: lea eax, var_58
008ABEFE: push eax
008ABEFF: mov eax, var_00000224
008ABF05: mov eax, [eax]
008ABF07: push var_00000224
008ABF0D: call [eax+1Ch]
008ABF10: fclex 
008ABF12: mov var_00000228, eax
008ABF18: cmp var_00000228, 00000000h
008ABF1F: jnl 8ABF41h
008ABF21: push 0000001Ch
008ABF23: push 00440F1Ch
008ABF28: push var_00000224
008ABF2E: push var_00000228
008ABF34: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ABF39: mov var_0000029C, eax
008ABF3F: jmp 8ABF48h
008ABF41: and var_0000029C, 00000000h
008ABF48: mov eax, var_58
008ABF4B: mov var_0000022C, eax
008ABF51: mov var_00000188, 80020004h
008ABF5B: mov var_00000190, 0000000Ah
008ABF65: push 00000010h
008ABF67: pop eax
008ABF68: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008ABF6D: lea esi, var_00000190
008ABF73: mov edi, esp
008ABF75: movsd 
008ABF76: movsd 
008ABF77: movsd 
008ABF78: movsd 
008ABF79: push var_34
008ABF7C: mov eax, var_0000022C
008ABF82: mov eax, [eax]
008ABF84: push var_0000022C
008ABF8A: call [eax+60h]
008ABF8D: fclex 
008ABF8F: mov var_00000230, eax
008ABF95: cmp var_00000230, 00000000h
008ABF9C: jnl 8ABFBEh
008ABF9E: push 00000060h
008ABFA0: push 00445554h
008ABFA5: push var_0000022C
008ABFAB: push var_00000230
008ABFB1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008ABFB6: mov var_000002A0, eax
008ABFBC: jmp 8ABFC5h
008ABFBE: and var_000002A0, 00000000h
008ABFC5: lea ecx, var_58
008ABFC8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008ABFCD: jmp 008AC358h
008ABFD2: mov var_04, 0000000Fh
008ABFD9: mov var_000001A8, 00000001h
008ABFE3: mov var_000001B0, 00000003h
008ABFED: push 00000000h
008ABFEF: push 00000008h
008ABFF1: push 00440E58h
008ABFF6: push 00000000h
008ABFF8: push 00000017h
008ABFFA: mov eax, [ebp+08h]
008ABFFD: mov eax, [eax]
008ABFFF: push [ebp+08h]
008AC002: call [eax+00000318h]
008AC008: push eax
008AC009: lea eax, var_58
008AC00C: push eax
008AC00D: call 00410A84h ; Set (object)
008AC012: push eax
008AC013: lea eax, var_000000A0
008AC019: push eax
008AC01A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AC01F: add esp, 00000010h
008AC022: push eax
008AC023: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AC028: push eax
008AC029: lea eax, var_5C
008AC02C: push eax
008AC02D: call 00410A84h ; Set (object)
008AC032: push eax
008AC033: lea eax, var_000000B0
008AC039: push eax
008AC03A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AC03F: add esp, 00000010h
008AC042: push eax
008AC043: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008AC048: mov var_00000188, eax
008AC04E: mov var_00000190, 00000003h
008AC058: push 00000010h
008AC05A: pop eax
008AC05B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AC060: lea esi, var_000001B0
008AC066: mov edi, esp
008AC068: movsd 
008AC069: movsd 
008AC06A: movsd 
008AC06B: movsd 
008AC06C: push 00000001h
008AC06E: push 00000010h
008AC070: push 00440E58h
008AC075: push 00000010h
008AC077: pop eax
008AC078: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AC07D: lea esi, var_00000190
008AC083: mov edi, esp
008AC085: movsd 
008AC086: movsd 
008AC087: movsd 
008AC088: movsd 
008AC089: push 00000001h
008AC08B: push 00000000h
008AC08D: push 00440E48h
008AC092: push 00000000h
008AC094: push 00000018h
008AC096: mov eax, [ebp+08h]
008AC099: mov eax, [eax]
008AC09B: push [ebp+08h]
008AC09E: call [eax+00000318h]
008AC0A4: push eax
008AC0A5: lea eax, var_60
008AC0A8: push eax
008AC0A9: call 00410A84h ; Set (object)
008AC0AE: push eax
008AC0AF: lea eax, var_000000C0
008AC0B5: push eax
008AC0B6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AC0BB: add esp, 00000010h
008AC0BE: push eax
008AC0BF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AC0C4: push eax
008AC0C5: lea eax, var_64
008AC0C8: push eax
008AC0C9: call 00410A84h ; Set (object)
008AC0CE: push eax
008AC0CF: lea eax, var_000000D0
008AC0D5: push eax
008AC0D6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AC0DB: add esp, 00000020h
008AC0DE: push eax
008AC0DF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AC0E4: push eax
008AC0E5: lea eax, var_68
008AC0E8: push eax
008AC0E9: call 00410A84h ; Set (object)
008AC0EE: push eax
008AC0EF: lea eax, var_000000E0
008AC0F5: push eax
008AC0F6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AC0FB: add esp, 00000020h
008AC0FE: push eax
008AC0FF: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008AC104: mov edx, eax
008AC106: lea ecx, var_34
008AC109: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AC10E: lea eax, var_68
008AC111: push eax
008AC112: lea eax, var_64
008AC115: push eax
008AC116: lea eax, var_60
008AC119: push eax
008AC11A: lea eax, var_5C
008AC11D: push eax
008AC11E: lea eax, var_58
008AC121: push eax
008AC122: push 00000005h
008AC124: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AC129: add esp, 00000018h
008AC12C: lea eax, var_000000E0
008AC132: push eax
008AC133: lea eax, var_000000D0
008AC139: push eax
008AC13A: lea eax, var_000000C0
008AC140: push eax
008AC141: lea eax, var_000000B0
008AC147: push eax
008AC148: lea eax, var_000000A0
008AC14E: push eax
008AC14F: push 00000005h
008AC151: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AC156: add esp, 00000018h
008AC159: mov var_04, 00000010h
008AC160: cmp [008F529Ch], 00000000h
008AC167: jnz 8AC184h
008AC169: push 008F529Ch
008AC16E: push 00440F2Ch
008AC173: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008AC178: mov var_000002A4, 008F529Ch
008AC182: jmp 8AC18Eh
008AC184: mov var_000002A4, 008F529Ch
008AC18E: mov eax, var_000002A4
008AC194: mov eax, [eax]
008AC196: mov var_00000224, eax
008AC19C: lea eax, var_58
008AC19F: push eax
008AC1A0: mov eax, var_00000224
008AC1A6: mov eax, [eax]
008AC1A8: push var_00000224
008AC1AE: call [eax+1Ch]
008AC1B1: fclex 
008AC1B3: mov var_00000228, eax
008AC1B9: cmp var_00000228, 00000000h
008AC1C0: jnl 8AC1E2h
008AC1C2: push 0000001Ch
008AC1C4: push 00440F1Ch
008AC1C9: push var_00000224
008AC1CF: push var_00000228
008AC1D5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AC1DA: mov var_000002A8, eax
008AC1E0: jmp 8AC1E9h
008AC1E2: and var_000002A8, 00000000h
008AC1E9: mov eax, var_58
008AC1EC: mov var_0000022C, eax
008AC1F2: mov eax, var_0000022C
008AC1F8: mov eax, [eax]
008AC1FA: push var_0000022C
008AC200: call [eax+50h]
008AC203: fclex 
008AC205: mov var_00000230, eax
008AC20B: cmp var_00000230, 00000000h
008AC212: jnl 8AC234h
008AC214: push 00000050h
008AC216: push 00445554h
008AC21B: push var_0000022C
008AC221: push var_00000230
008AC227: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AC22C: mov var_000002AC, eax
008AC232: jmp 8AC23Bh
008AC234: and var_000002AC, 00000000h
008AC23B: lea ecx, var_58
008AC23E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AC243: mov var_04, 00000011h
008AC24A: cmp [008F529Ch], 00000000h
008AC251: jnz 8AC26Eh
008AC253: push 008F529Ch
008AC258: push 00440F2Ch
008AC25D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008AC262: mov var_000002B0, 008F529Ch
008AC26C: jmp 8AC278h
008AC26E: mov var_000002B0, 008F529Ch
008AC278: mov eax, var_000002B0
008AC27E: mov eax, [eax]
008AC280: mov var_00000224, eax
008AC286: lea eax, var_58
008AC289: push eax
008AC28A: mov eax, var_00000224
008AC290: mov eax, [eax]
008AC292: push var_00000224
008AC298: call [eax+1Ch]
008AC29B: fclex 
008AC29D: mov var_00000228, eax
008AC2A3: cmp var_00000228, 00000000h
008AC2AA: jnl 8AC2CCh
008AC2AC: push 0000001Ch
008AC2AE: push 00440F1Ch
008AC2B3: push var_00000224
008AC2B9: push var_00000228
008AC2BF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AC2C4: mov var_000002B4, eax
008AC2CA: jmp 8AC2D3h
008AC2CC: and var_000002B4, 00000000h
008AC2D3: mov eax, var_58
008AC2D6: mov var_0000022C, eax
008AC2DC: mov var_00000188, 80020004h
008AC2E6: mov var_00000190, 0000000Ah
008AC2F0: push 00000010h
008AC2F2: pop eax
008AC2F3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AC2F8: lea esi, var_00000190
008AC2FE: mov edi, esp
008AC300: movsd 
008AC301: movsd 
008AC302: movsd 
008AC303: movsd 
008AC304: push var_34
008AC307: mov eax, var_0000022C
008AC30D: mov eax, [eax]
008AC30F: push var_0000022C
008AC315: call [eax+60h]
008AC318: fclex 
008AC31A: mov var_00000230, eax
008AC320: cmp var_00000230, 00000000h
008AC327: jnl 8AC349h
008AC329: push 00000060h
008AC32B: push 00445554h
008AC330: push var_0000022C
008AC336: push var_00000230
008AC33C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AC341: mov var_000002B8, eax
008AC347: jmp 8AC350h
008AC349: and var_000002B8, 00000000h
008AC350: lea ecx, var_58
008AC353: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AC358: mov var_10, 00000000h
008AC35F: push 008AC482h
008AC364: jmp 008AC459h
008AC369: lea eax, var_54
008AC36C: push eax
008AC36D: lea eax, var_50
008AC370: push eax
008AC371: lea eax, var_4C
008AC374: push eax
008AC375: lea eax, var_48
008AC378: push eax
008AC379: lea eax, var_44
008AC37C: push eax
008AC37D: lea eax, var_40
008AC380: push eax
008AC381: lea eax, var_3C
008AC384: push eax
008AC385: lea eax, var_38
008AC388: push eax
008AC389: push 00000008h
008AC38B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AC390: add esp, 00000024h
008AC393: lea eax, var_00000090
008AC399: push eax
008AC39A: lea eax, var_0000008C
008AC3A0: push eax
008AC3A1: lea eax, var_00000088
008AC3A7: push eax
008AC3A8: lea eax, var_00000084
008AC3AE: push eax
008AC3AF: lea eax, var_80
008AC3B2: push eax
008AC3B3: lea eax, var_7C
008AC3B6: push eax
008AC3B7: lea eax, var_78
008AC3BA: push eax
008AC3BB: lea eax, var_74
008AC3BE: push eax
008AC3BF: lea eax, var_70
008AC3C2: push eax
008AC3C3: lea eax, var_6C
008AC3C6: push eax
008AC3C7: lea eax, var_68
008AC3CA: push eax
008AC3CB: lea eax, var_64
008AC3CE: push eax
008AC3CF: lea eax, var_60
008AC3D2: push eax
008AC3D3: lea eax, var_5C
008AC3D6: push eax
008AC3D7: lea eax, var_58
008AC3DA: push eax
008AC3DB: push 0000000Fh
008AC3DD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AC3E2: add esp, 00000040h
008AC3E5: lea eax, var_00000180
008AC3EB: push eax
008AC3EC: lea eax, var_00000170
008AC3F2: push eax
008AC3F3: lea eax, var_00000160
008AC3F9: push eax
008AC3FA: lea eax, var_00000150
008AC400: push eax
008AC401: lea eax, var_00000140
008AC407: push eax
008AC408: lea eax, var_00000130
008AC40E: push eax
008AC40F: lea eax, var_00000120
008AC415: push eax
008AC416: lea eax, var_00000110
008AC41C: push eax
008AC41D: lea eax, var_00000100
008AC423: push eax
008AC424: lea eax, var_000000F0
008AC42A: push eax
008AC42B: lea eax, var_000000E0
008AC431: push eax
008AC432: lea eax, var_000000D0
008AC438: push eax
008AC439: lea eax, var_000000C0
008AC43F: push eax
008AC440: lea eax, var_000000B0
008AC446: push eax
008AC447: lea eax, var_000000A0
008AC44D: push eax
008AC44E: push 0000000Fh
008AC450: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AC455: add esp, 00000040h
008AC458: ret 
End Sub

Private sub cmdGet__8A810B
008A810B: push ebp
008A810C: mov ebp, esp
008A810E: sub esp, 00000018h
008A8111: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008A8116: mov eax, fs:[00h]
008A811C: push eax
008A811D: mov fs:[00000000h], esp
008A8124: mov eax, 00000134h
008A8129: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A812E: push ebx
008A812F: push esi
008A8130: push edi
008A8131: mov var_18, esp
008A8134: mov var_14, 0040E608h
008A813B: mov eax, [ebp+08h]
008A813E: and eax, 00000001h
008A8141: mov var_10, eax
008A8144: mov eax, [ebp+08h]
008A8147: and al, FEh
008A8149: mov [ebp+08h], eax
008A814C: mov var_0C, 00000000h
008A8153: mov eax, [ebp+08h]
008A8156: mov eax, [eax]
008A8158: push [ebp+08h]
008A815B: call [eax+04h]
008A815E: mov var_04, 00000001h
008A8165: mov var_04, 00000002h
008A816C: push FFFFFFFFh
008A816E: call 00410A60h ; On Error ...
008A8173: mov var_04, 00000003h
008A817A: mov eax, [ebp+08h]
008A817D: mov eax, [eax]
008A817F: push [ebp+08h]
008A8182: call [eax+000002FCh]
008A8188: push eax
008A8189: lea eax, var_3C
008A818C: push eax
008A818D: call 00410A84h ; Set (object)
008A8192: mov var_000000D4, eax
008A8198: lea eax, var_34
008A819B: push eax
008A819C: mov eax, var_000000D4
008A81A2: mov eax, [eax]
008A81A4: push var_000000D4
008A81AA: call [eax+000000A0h]
008A81B0: fclex 
008A81B2: mov var_000000D8, eax
008A81B8: cmp var_000000D8, 00000000h
008A81BF: jnl 8A81E4h
008A81C1: push 000000A0h
008A81C6: push 00440E08h
008A81CB: push var_000000D4
008A81D1: push var_000000D8
008A81D7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A81DC: mov var_0000013C, eax
008A81E2: jmp 8A81EBh
008A81E4: and var_0000013C, 00000000h
008A81EB: push var_34
008A81EE: push 00000000h
008A81F0: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008A81F5: neg eax
008A81F7: sbb eax, eax
008A81F9: inc eax
008A81FA: neg eax
008A81FC: mov var_000000DC, ax
008A8203: lea ecx, var_34
008A8206: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008A820B: lea ecx, var_3C
008A820E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008A8213: movsx eax, word ptr var_000000DC
008A821A: test eax, eax
008A821C: jz 008A82B4h
008A8222: mov var_04, 00000004h
008A8229: mov var_7C, 80020004h
008A8230: mov var_00000084, 0000000Ah
008A823A: mov var_6C, 80020004h
008A8241: mov var_74, 0000000Ah
008A8248: mov var_5C, 80020004h
008A824F: mov var_64, 0000000Ah
008A8256: mov var_00000090, 00459BC4h ; Please specify an URL
008A8260: mov var_00000098, 00000008h
008A826A: lea edx, var_00000098
008A8270: lea ecx, var_54
008A8273: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008A8278: lea eax, var_00000084
008A827E: push eax
008A827F: lea eax, var_74
008A8282: push eax
008A8283: lea eax, var_64
008A8286: push eax
008A8287: push 00000030h
008A8289: lea eax, var_54
008A828C: push eax
008A828D: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008A8292: lea eax, var_00000084
008A8298: push eax
008A8299: lea eax, var_74
008A829C: push eax
008A829D: lea eax, var_64
008A82A0: push eax
008A82A1: lea eax, var_54
008A82A4: push eax
008A82A5: push 00000004h
008A82A7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A82AC: add esp, 00000014h
008A82AF: jmp 008A8B64h
008A82B4: mov var_04, 00000007h
008A82BB: cmp word ptr [008F2430h], FFFFh
008A82C3: jnz 008A8719h
008A82C9: mov var_04, 00000008h
008A82D0: mov var_00000090, 00000001h
008A82DA: mov var_00000098, 00000002h
008A82E4: cmp [008F2010h], 00000000h
008A82EB: jnz 8A8308h
008A82ED: push 008F2010h
008A82F2: push 00433984h
008A82F7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A82FC: mov var_00000140, 008F2010h
008A8306: jmp 8A8312h
008A8308: mov var_00000140, 008F2010h
008A8312: push 00000000h
008A8314: push 00000001h
008A8316: push 00440E48h
008A831B: push 00000000h
008A831D: push 00000018h
008A831F: mov eax, var_00000140
008A8325: mov eax, [eax]
008A8327: mov ecx, var_00000140
008A832D: mov ecx, [ecx]
008A832F: mov ecx, [ecx]
008A8331: push eax
008A8332: call [ecx+0000054Ch]
008A8338: push eax
008A8339: lea eax, var_3C
008A833C: push eax
008A833D: call 00410A84h ; Set (object)
008A8342: push eax
008A8343: lea eax, var_54
008A8346: push eax
008A8347: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A834C: add esp, 00000010h
008A834F: push eax
008A8350: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A8355: push eax
008A8356: lea eax, var_40
008A8359: push eax
008A835A: call 00410A84h ; Set (object)
008A835F: push eax
008A8360: lea eax, var_64
008A8363: push eax
008A8364: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A8369: add esp, 00000010h
008A836C: push eax
008A836D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A8372: mov var_000000A0, eax
008A8378: mov var_000000A8, 00000003h
008A8382: mov var_000000B0, 00000001h
008A838C: mov var_000000B8, 00000002h
008A8396: lea eax, var_00000098
008A839C: push eax
008A839D: lea eax, var_000000A8
008A83A3: push eax
008A83A4: lea eax, var_000000B8
008A83AA: push eax
008A83AB: lea eax, var_000000FC
008A83B1: push eax
008A83B2: lea eax, var_000000EC
008A83B8: push eax
008A83B9: lea eax, var_30
008A83BC: push eax
008A83BD: call 00410A3Ch ; For
008A83C2: mov var_00000134, eax
008A83C8: lea eax, var_40
008A83CB: push eax
008A83CC: lea eax, var_3C
008A83CF: push eax
008A83D0: push 00000002h
008A83D2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A83D7: add esp, 0000000Ch
008A83DA: lea eax, var_64
008A83DD: push eax
008A83DE: lea eax, var_54
008A83E1: push eax
008A83E2: push 00000002h
008A83E4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A83E9: add esp, 0000000Ch
008A83EC: jmp 008A8707h
008A83F1: mov var_04, 00000009h
008A83F8: lea eax, var_30
008A83FB: mov var_00000090, eax
008A8401: mov var_00000098, 0000400Ch
008A840B: cmp [008F2010h], 00000000h
008A8412: jnz 8A842Fh
008A8414: push 008F2010h
008A8419: push 00433984h
008A841E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A8423: mov var_00000144, 008F2010h
008A842D: jmp 8A8439h
008A842F: mov var_00000144, 008F2010h
008A8439: push 00000000h
008A843B: push 00000004h
008A843D: push 00440E58h
008A8442: push 00000010h
008A8444: pop eax
008A8445: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A844A: lea esi, var_00000098
008A8450: mov edi, esp
008A8452: movsd 
008A8453: movsd 
008A8454: movsd 
008A8455: movsd 
008A8456: push 00000001h
008A8458: push 00000000h
008A845A: push 00440E48h
008A845F: push 00000000h
008A8461: push 00000018h
008A8463: mov eax, var_00000144
008A8469: mov eax, [eax]
008A846B: mov ecx, var_00000144
008A8471: mov ecx, [ecx]
008A8473: mov ecx, [ecx]
008A8475: push eax
008A8476: call [ecx+0000054Ch]
008A847C: push eax
008A847D: lea eax, var_3C
008A8480: push eax
008A8481: call 00410A84h ; Set (object)
008A8486: push eax
008A8487: lea eax, var_54
008A848A: push eax
008A848B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A8490: add esp, 00000010h
008A8493: push eax
008A8494: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A8499: push eax
008A849A: lea eax, var_40
008A849D: push eax
008A849E: call 00410A84h ; Set (object)
008A84A3: push eax
008A84A4: lea eax, var_64
008A84A7: push eax
008A84A8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A84AD: add esp, 00000020h
008A84B0: push eax
008A84B1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A84B6: push eax
008A84B7: lea eax, var_44
008A84BA: push eax
008A84BB: call 00410A84h ; Set (object)
008A84C0: push eax
008A84C1: lea eax, var_74
008A84C4: push eax
008A84C5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A84CA: add esp, 00000010h
008A84CD: push eax
008A84CE: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008A84D3: sub ax, FFFFh
008A84D7: neg ax
008A84DA: sbb eax, eax
008A84DC: inc eax
008A84DD: neg eax
008A84DF: mov var_000000D4, ax
008A84E6: lea eax, var_44
008A84E9: push eax
008A84EA: lea eax, var_40
008A84ED: push eax
008A84EE: lea eax, var_3C
008A84F1: push eax
008A84F2: push 00000003h
008A84F4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A84F9: add esp, 00000010h
008A84FC: lea eax, var_74
008A84FF: push eax
008A8500: lea eax, var_64
008A8503: push eax
008A8504: lea eax, var_54
008A8507: push eax
008A8508: push 00000003h
008A850A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A850F: add esp, 00000010h
008A8512: movsx eax, word ptr var_000000D4
008A8519: test eax, eax
008A851B: jz 008A86E3h
008A8521: mov var_04, 0000000Ah
008A8528: lea eax, var_30
008A852B: mov var_00000090, eax
008A8531: mov var_00000098, 0000400Ch
008A853B: cmp [008F2010h], 00000000h
008A8542: jnz 8A855Fh
008A8544: push 008F2010h
008A8549: push 00433984h
008A854E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A8553: mov var_00000148, 008F2010h
008A855D: jmp 8A8569h
008A855F: mov var_00000148, 008F2010h
008A8569: push 00000000h
008A856B: push 00000014h
008A856D: push 00440E58h
008A8572: push 00000010h
008A8574: pop eax
008A8575: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A857A: lea esi, var_00000098
008A8580: mov edi, esp
008A8582: movsd 
008A8583: movsd 
008A8584: movsd 
008A8585: movsd 
008A8586: push 00000001h
008A8588: push 00000000h
008A858A: push 00440E48h
008A858F: push 00000000h
008A8591: push 00000018h
008A8593: mov eax, var_00000148
008A8599: mov eax, [eax]
008A859B: mov ecx, var_00000148
008A85A1: mov ecx, [ecx]
008A85A3: mov ecx, [ecx]
008A85A5: push eax
008A85A6: call [ecx+0000054Ch]
008A85AC: push eax
008A85AD: lea eax, var_3C
008A85B0: push eax
008A85B1: call 00410A84h ; Set (object)
008A85B6: push eax
008A85B7: lea eax, var_54
008A85BA: push eax
008A85BB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A85C0: add esp, 00000010h
008A85C3: push eax
008A85C4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A85C9: push eax
008A85CA: lea eax, var_40
008A85CD: push eax
008A85CE: call 00410A84h ; Set (object)
008A85D3: push eax
008A85D4: lea eax, var_64
008A85D7: push eax
008A85D8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A85DD: add esp, 00000020h
008A85E0: push eax
008A85E1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A85E6: push eax
008A85E7: lea eax, var_44
008A85EA: push eax
008A85EB: call 00410A84h ; Set (object)
008A85F0: push eax
008A85F1: lea eax, var_74
008A85F4: push eax
008A85F5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A85FA: add esp, 00000010h
008A85FD: push eax
008A85FE: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008A8603: mov edx, eax
008A8605: lea ecx, var_34
008A8608: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A860D: push eax
008A860E: call 004109DCh ; Val(arg_1)
008A8613: fstp real8 ptr var_000000D0
008A8619: push 00000000h
008A861B: push 00000000h
008A861D: push 00000001h
008A861F: push 00000000h
008A8621: lea eax, var_00000088
008A8627: push eax
008A8628: push 00000010h
008A862A: push 00000880h
008A862F: call 00410946h ; ReDim
008A8634: add esp, 0000001Ch
008A8637: mov eax, [ebp+08h]
008A863A: mov eax, [eax]
008A863C: push [ebp+08h]
008A863F: call [eax+000002FCh]
008A8645: mov var_7C, eax
008A8648: mov var_00000084, 00000009h
008A8652: lea esi, var_00000084
008A8658: push 00000000h
008A865A: push var_00000088
008A8660: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A8665: mov ecx, eax
008A8667: mov edx, esi
008A8669: call 00410940h ; msvbvm60.dll.__vbaVarZero
008A866E: mov edx, 0043D934h ; x107
008A8673: lea ecx, var_38
008A8676: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008A867B: lea eax, var_00000088
008A8681: push eax
008A8682: lea eax, var_38
008A8685: push eax
008A8686: fld real8 ptr var_000000D0
008A868C: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008A8691: push eax
008A8692: call 007A6910h
008A8697: lea eax, var_00000088
008A869D: push eax
008A869E: push 00000000h
008A86A0: call 00410934h ; Erase
008A86A5: lea eax, var_38
008A86A8: push eax
008A86A9: lea eax, var_34
008A86AC: push eax
008A86AD: push 00000002h
008A86AF: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A86B4: add esp, 0000000Ch
008A86B7: lea eax, var_44
008A86BA: push eax
008A86BB: lea eax, var_40
008A86BE: push eax
008A86BF: lea eax, var_3C
008A86C2: push eax
008A86C3: push 00000003h
008A86C5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A86CA: add esp, 00000010h
008A86CD: lea eax, var_74
008A86D0: push eax
008A86D1: lea eax, var_64
008A86D4: push eax
008A86D5: lea eax, var_54
008A86D8: push eax
008A86D9: push 00000003h
008A86DB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A86E0: add esp, 00000010h
008A86E3: mov var_04, 0000000Ch
008A86EA: lea eax, var_000000FC
008A86F0: push eax
008A86F1: lea eax, var_000000EC
008A86F7: push eax
008A86F8: lea eax, var_30
008A86FB: push eax
008A86FC: call 00410A36h ; Next
008A8701: mov var_00000134, eax
008A8707: cmp var_00000134, 00000000h
008A870E: jnz 008A83F1h
008A8714: jmp 008A8B64h
008A8719: mov var_04, 0000000Eh
008A8720: mov var_00000090, 00000001h
008A872A: mov var_00000098, 00000002h
008A8734: cmp [008F2010h], 00000000h
008A873B: jnz 8A8758h
008A873D: push 008F2010h
008A8742: push 00433984h
008A8747: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A874C: mov var_0000014C, 008F2010h
008A8756: jmp 8A8762h
008A8758: mov var_0000014C, 008F2010h
008A8762: push 00000000h
008A8764: push 00000001h
008A8766: push 00440E48h
008A876B: push 00000000h
008A876D: push 00000018h
008A876F: mov eax, var_0000014C
008A8775: mov eax, [eax]
008A8777: mov ecx, var_0000014C
008A877D: mov ecx, [ecx]
008A877F: mov ecx, [ecx]
008A8781: push eax
008A8782: call [ecx+00000550h]
008A8788: push eax
008A8789: lea eax, var_3C
008A878C: push eax
008A878D: call 00410A84h ; Set (object)
008A8792: push eax
008A8793: lea eax, var_54
008A8796: push eax
008A8797: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A879C: add esp, 00000010h
008A879F: push eax
008A87A0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A87A5: push eax
008A87A6: lea eax, var_40
008A87A9: push eax
008A87AA: call 00410A84h ; Set (object)
008A87AF: push eax
008A87B0: lea eax, var_64
008A87B3: push eax
008A87B4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A87B9: add esp, 00000010h
008A87BC: push eax
008A87BD: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008A87C2: mov var_000000A0, eax
008A87C8: mov var_000000A8, 00000003h
008A87D2: mov var_000000B0, 00000001h
008A87DC: mov var_000000B8, 00000002h
008A87E6: lea eax, var_00000098
008A87EC: push eax
008A87ED: lea eax, var_000000A8
008A87F3: push eax
008A87F4: lea eax, var_000000B8
008A87FA: push eax
008A87FB: lea eax, var_0000011C
008A8801: push eax
008A8802: lea eax, var_0000010C
008A8808: push eax
008A8809: lea eax, var_30
008A880C: push eax
008A880D: call 00410A3Ch ; For
008A8812: mov var_00000138, eax
008A8818: lea eax, var_40
008A881B: push eax
008A881C: lea eax, var_3C
008A881F: push eax
008A8820: push 00000002h
008A8822: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A8827: add esp, 0000000Ch
008A882A: lea eax, var_64
008A882D: push eax
008A882E: lea eax, var_54
008A8831: push eax
008A8832: push 00000002h
008A8834: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A8839: add esp, 0000000Ch
008A883C: jmp 008A8B57h
008A8841: mov var_04, 0000000Fh
008A8848: lea eax, var_30
008A884B: mov var_00000090, eax
008A8851: mov var_00000098, 0000400Ch
008A885B: cmp [008F2010h], 00000000h
008A8862: jnz 8A887Fh
008A8864: push 008F2010h
008A8869: push 00433984h
008A886E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A8873: mov var_00000150, 008F2010h
008A887D: jmp 8A8889h
008A887F: mov var_00000150, 008F2010h
008A8889: push 00000000h
008A888B: push 00000004h
008A888D: push 00440E58h
008A8892: push 00000010h
008A8894: pop eax
008A8895: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A889A: lea esi, var_00000098
008A88A0: mov edi, esp
008A88A2: movsd 
008A88A3: movsd 
008A88A4: movsd 
008A88A5: movsd 
008A88A6: push 00000001h
008A88A8: push 00000000h
008A88AA: push 00440E48h
008A88AF: push 00000000h
008A88B1: push 00000018h
008A88B3: mov eax, var_00000150
008A88B9: mov eax, [eax]
008A88BB: mov ecx, var_00000150
008A88C1: mov ecx, [ecx]
008A88C3: mov ecx, [ecx]
008A88C5: push eax
008A88C6: call [ecx+00000550h]
008A88CC: push eax
008A88CD: lea eax, var_3C
008A88D0: push eax
008A88D1: call 00410A84h ; Set (object)
008A88D6: push eax
008A88D7: lea eax, var_54
008A88DA: push eax
008A88DB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A88E0: add esp, 00000010h
008A88E3: push eax
008A88E4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A88E9: push eax
008A88EA: lea eax, var_40
008A88ED: push eax
008A88EE: call 00410A84h ; Set (object)
008A88F3: push eax
008A88F4: lea eax, var_64
008A88F7: push eax
008A88F8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A88FD: add esp, 00000020h
008A8900: push eax
008A8901: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A8906: push eax
008A8907: lea eax, var_44
008A890A: push eax
008A890B: call 00410A84h ; Set (object)
008A8910: push eax
008A8911: lea eax, var_74
008A8914: push eax
008A8915: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A891A: add esp, 00000010h
008A891D: push eax
008A891E: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008A8923: sub ax, FFFFh
008A8927: neg ax
008A892A: sbb eax, eax
008A892C: inc eax
008A892D: neg eax
008A892F: mov var_000000D4, ax
008A8936: lea eax, var_44
008A8939: push eax
008A893A: lea eax, var_40
008A893D: push eax
008A893E: lea eax, var_3C
008A8941: push eax
008A8942: push 00000003h
008A8944: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A8949: add esp, 00000010h
008A894C: lea eax, var_74
008A894F: push eax
008A8950: lea eax, var_64
008A8953: push eax
008A8954: lea eax, var_54
008A8957: push eax
008A8958: push 00000003h
008A895A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A895F: add esp, 00000010h
008A8962: movsx eax, word ptr var_000000D4
008A8969: test eax, eax
008A896B: jz 008A8B33h
008A8971: mov var_04, 00000010h
008A8978: lea eax, var_30
008A897B: mov var_00000090, eax
008A8981: mov var_00000098, 0000400Ch
008A898B: cmp [008F2010h], 00000000h
008A8992: jnz 8A89AFh
008A8994: push 008F2010h
008A8999: push 00433984h
008A899E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008A89A3: mov var_00000154, 008F2010h
008A89AD: jmp 8A89B9h
008A89AF: mov var_00000154, 008F2010h
008A89B9: push 00000000h
008A89BB: push 00000014h
008A89BD: push 00440E58h
008A89C2: push 00000010h
008A89C4: pop eax
008A89C5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A89CA: lea esi, var_00000098
008A89D0: mov edi, esp
008A89D2: movsd 
008A89D3: movsd 
008A89D4: movsd 
008A89D5: movsd 
008A89D6: push 00000001h
008A89D8: push 00000000h
008A89DA: push 00440E48h
008A89DF: push 00000000h
008A89E1: push 00000018h
008A89E3: mov eax, var_00000154
008A89E9: mov eax, [eax]
008A89EB: mov ecx, var_00000154
008A89F1: mov ecx, [ecx]
008A89F3: mov ecx, [ecx]
008A89F5: push eax
008A89F6: call [ecx+00000550h]
008A89FC: push eax
008A89FD: lea eax, var_3C
008A8A00: push eax
008A8A01: call 00410A84h ; Set (object)
008A8A06: push eax
008A8A07: lea eax, var_54
008A8A0A: push eax
008A8A0B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A8A10: add esp, 00000010h
008A8A13: push eax
008A8A14: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A8A19: push eax
008A8A1A: lea eax, var_40
008A8A1D: push eax
008A8A1E: call 00410A84h ; Set (object)
008A8A23: push eax
008A8A24: lea eax, var_64
008A8A27: push eax
008A8A28: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A8A2D: add esp, 00000020h
008A8A30: push eax
008A8A31: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008A8A36: push eax
008A8A37: lea eax, var_44
008A8A3A: push eax
008A8A3B: call 00410A84h ; Set (object)
008A8A40: push eax
008A8A41: lea eax, var_74
008A8A44: push eax
008A8A45: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A8A4A: add esp, 00000010h
008A8A4D: push eax
008A8A4E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008A8A53: mov edx, eax
008A8A55: lea ecx, var_34
008A8A58: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A8A5D: push eax
008A8A5E: call 004109DCh ; Val(arg_1)
008A8A63: fstp real8 ptr var_000000D0
008A8A69: push 00000000h
008A8A6B: push 00000000h
008A8A6D: push 00000001h
008A8A6F: push 00000000h
008A8A71: lea eax, var_00000088
008A8A77: push eax
008A8A78: push 00000010h
008A8A7A: push 00000880h
008A8A7F: call 00410946h ; ReDim
008A8A84: add esp, 0000001Ch
008A8A87: mov eax, [ebp+08h]
008A8A8A: mov eax, [eax]
008A8A8C: push [ebp+08h]
008A8A8F: call [eax+000002FCh]
008A8A95: mov var_7C, eax
008A8A98: mov var_00000084, 00000009h
008A8AA2: lea esi, var_00000084
008A8AA8: push 00000000h
008A8AAA: push var_00000088
008A8AB0: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008A8AB5: mov ecx, eax
008A8AB7: mov edx, esi
008A8AB9: call 00410940h ; msvbvm60.dll.__vbaVarZero
008A8ABE: mov edx, 0043D934h ; x107
008A8AC3: lea ecx, var_38
008A8AC6: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008A8ACB: lea eax, var_00000088
008A8AD1: push eax
008A8AD2: lea eax, var_38
008A8AD5: push eax
008A8AD6: fld real8 ptr var_000000D0
008A8ADC: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008A8AE1: push eax
008A8AE2: call 007A6910h
008A8AE7: lea eax, var_00000088
008A8AED: push eax
008A8AEE: push 00000000h
008A8AF0: call 00410934h ; Erase
008A8AF5: lea eax, var_38
008A8AF8: push eax
008A8AF9: lea eax, var_34
008A8AFC: push eax
008A8AFD: push 00000002h
008A8AFF: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A8B04: add esp, 0000000Ch
008A8B07: lea eax, var_44
008A8B0A: push eax
008A8B0B: lea eax, var_40
008A8B0E: push eax
008A8B0F: lea eax, var_3C
008A8B12: push eax
008A8B13: push 00000003h
008A8B15: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A8B1A: add esp, 00000010h
008A8B1D: lea eax, var_74
008A8B20: push eax
008A8B21: lea eax, var_64
008A8B24: push eax
008A8B25: lea eax, var_54
008A8B28: push eax
008A8B29: push 00000003h
008A8B2B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A8B30: add esp, 00000010h
008A8B33: mov var_04, 00000012h
008A8B3A: lea eax, var_0000011C
008A8B40: push eax
008A8B41: lea eax, var_0000010C
008A8B47: push eax
008A8B48: lea eax, var_30
008A8B4B: push eax
008A8B4C: call 00410A36h ; Next
008A8B51: mov var_00000138, eax
008A8B57: cmp var_00000138, 00000000h
008A8B5E: jnz 008A8841h
008A8B64: mov var_10, 00000000h
008A8B6B: wait 
008A8B6C: push 008A8BF6h
008A8B71: jmp 8A8BC7h
008A8B73: lea eax, var_38
008A8B76: push eax
008A8B77: lea eax, var_34
008A8B7A: push eax
008A8B7B: push 00000002h
008A8B7D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008A8B82: add esp, 0000000Ch
008A8B85: lea eax, var_44
008A8B88: push eax
008A8B89: lea eax, var_40
008A8B8C: push eax
008A8B8D: lea eax, var_3C
008A8B90: push eax
008A8B91: push 00000003h
008A8B93: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A8B98: add esp, 00000010h
008A8B9B: lea eax, var_00000084
008A8BA1: push eax
008A8BA2: lea eax, var_74
008A8BA5: push eax
008A8BA6: lea eax, var_64
008A8BA9: push eax
008A8BAA: lea eax, var_54
008A8BAD: push eax
008A8BAE: push 00000004h
008A8BB0: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008A8BB5: add esp, 00000014h
008A8BB8: lea eax, var_00000088
008A8BBE: push eax
008A8BBF: push 00000000h
008A8BC1: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008A8BC6: ret 
End Sub

Private sub mnuCookies__8AA913
008AA913: push ebp
008AA914: mov ebp, esp
008AA916: sub esp, 00000018h
008AA919: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008AA91E: mov eax, fs:[00h]
008AA924: push eax
008AA925: mov fs:[00000000h], esp
008AA92C: mov eax, 000001BCh
008AA931: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AA936: push ebx
008AA937: push esi
008AA938: push edi
008AA939: mov var_18, esp
008AA93C: mov var_14, 0040E7A8h
008AA943: mov eax, [ebp+08h]
008AA946: and eax, 00000001h
008AA949: mov var_10, eax
008AA94C: mov eax, [ebp+08h]
008AA94F: and al, FEh
008AA951: mov [ebp+08h], eax
008AA954: mov var_0C, 00000000h
008AA95B: mov eax, [ebp+08h]
008AA95E: mov eax, [eax]
008AA960: push [ebp+08h]
008AA963: call [eax+04h]
008AA966: mov var_04, 00000001h
008AA96D: mov var_04, 00000002h
008AA974: push FFFFFFFFh
008AA976: call 00410A60h ; On Error ...
008AA97B: mov var_04, 00000003h
008AA982: mov eax, [ebp+0Ch]
008AA985: mov ax, [eax]
008AA988: mov var_000001B4, ax
008AA98F: movsx eax, word ptr var_000001B4
008AA996: mov var_000001D0, eax
008AA99C: cmp var_000001D0, 00000001h
008AA9A3: jz 8AA9BCh
008AA9A5: cmp var_000001D0, 00000003h
008AA9AC: jz 008AB02Bh
008AA9B2: jmp 008AB09Dh
008AA9B7: jmp 008AB09Dh
008AA9BC: mov var_04, 00000005h
008AA9C3: cmp [008F529Ch], 00000000h
008AA9CA: jnz 8AA9E7h
008AA9CC: push 008F529Ch
008AA9D1: push 00440F2Ch
008AA9D6: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008AA9DB: mov var_000001D4, 008F529Ch
008AA9E5: jmp 8AA9F1h
008AA9E7: mov var_000001D4, 008F529Ch
008AA9F1: mov eax, var_000001D4
008AA9F7: mov eax, [eax]
008AA9F9: mov var_00000184, eax
008AA9FF: lea eax, var_60
008AAA02: push eax
008AAA03: mov eax, var_00000184
008AAA09: mov eax, [eax]
008AAA0B: push var_00000184
008AAA11: call [eax+14h]
008AAA14: fclex 
008AAA16: mov var_00000188, eax
008AAA1C: cmp var_00000188, 00000000h
008AAA23: jnl 8AAA45h
008AAA25: push 00000014h
008AAA27: push 00440F1Ch
008AAA2C: push var_00000184
008AAA32: push var_00000188
008AAA38: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AAA3D: mov var_000001D8, eax
008AAA43: jmp 8AAA4Ch
008AAA45: and var_000001D8, 00000000h
008AAA4C: mov eax, var_60
008AAA4F: mov var_0000018C, eax
008AAA55: lea eax, var_40
008AAA58: push eax
008AAA59: mov eax, var_0000018C
008AAA5F: mov eax, [eax]
008AAA61: push var_0000018C
008AAA67: call [eax+50h]
008AAA6A: fclex 
008AAA6C: mov var_00000190, eax
008AAA72: cmp var_00000190, 00000000h
008AAA79: jnl 8AAA9Bh
008AAA7B: push 00000050h
008AAA7D: push 00440F3Ch
008AAA82: push var_0000018C
008AAA88: push var_00000190
008AAA8E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008AAA93: mov var_000001DC, eax
008AAA99: jmp 8AAAA2h
008AAA9B: and var_000001DC, 00000000h
008AAAA2: push 00000000h
008AAAA4: push 00000000h
008AAAA6: push var_40
008AAAA9: push 0044558Ch ; txt
008AAAAE: push 00452FD0h ; Text Documents
008AAAB3: call 007CCC4Dh
008AAAB8: mov edx, eax
008AAABA: lea ecx, var_3C
008AAABD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AAAC2: lea ecx, var_40
008AAAC5: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008AAACA: lea ecx, var_60
008AAACD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008AAAD2: mov var_04, 00000006h
008AAAD9: push var_3C
008AAADC: push 00000000h
008AAADE: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008AAAE3: test eax, eax
008AAAE5: jz 008AB029h
008AAAEB: mov var_04, 00000007h
008AAAF2: mov var_00000118, 00000001h
008AAAFC: mov var_00000120, 00000002h
008AAB06: push 00000000h
008AAB08: push 00000001h
008AAB0A: push 00440E48h
008AAB0F: push 00000000h
008AAB11: push 00000018h
008AAB13: mov eax, [ebp+08h]
008AAB16: mov eax, [eax]
008AAB18: push [ebp+08h]
008AAB1B: call [eax+00000318h]
008AAB21: push eax
008AAB22: lea eax, var_60
008AAB25: push eax
008AAB26: call 00410A84h ; Set (object)
008AAB2B: push eax
008AAB2C: lea eax, var_00000090
008AAB32: push eax
008AAB33: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AAB38: add esp, 00000010h
008AAB3B: push eax
008AAB3C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AAB41: push eax
008AAB42: lea eax, var_64
008AAB45: push eax
008AAB46: call 00410A84h ; Set (object)
008AAB4B: push eax
008AAB4C: lea eax, var_000000A0
008AAB52: push eax
008AAB53: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AAB58: add esp, 00000010h
008AAB5B: push eax
008AAB5C: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008AAB61: mov var_00000128, eax
008AAB67: mov var_00000130, 00000003h
008AAB71: mov var_00000138, 00000001h
008AAB7B: mov var_00000140, 00000002h
008AAB85: lea eax, var_00000120
008AAB8B: push eax
008AAB8C: lea eax, var_00000130
008AAB92: push eax
008AAB93: lea eax, var_00000140
008AAB99: push eax
008AAB9A: lea eax, var_000001B0
008AABA0: push eax
008AABA1: lea eax, var_000001A0
008AABA7: push eax
008AABA8: lea eax, var_30
008AABAB: push eax
008AABAC: call 00410A3Ch ; For
008AABB1: mov var_000001CC, eax
008AABB7: lea eax, var_64
008AABBA: push eax
008AABBB: lea eax, var_60
008AABBE: push eax
008AABBF: push 00000002h
008AABC1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AABC6: add esp, 0000000Ch
008AABC9: lea eax, var_000000A0
008AABCF: push eax
008AABD0: lea eax, var_00000090
008AABD6: push eax
008AABD7: push 00000002h
008AABD9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AABDE: add esp, 0000000Ch
008AABE1: jmp 008AAF95h
008AABE6: mov var_04, 00000008h
008AABED: lea eax, var_30
008AABF0: mov var_00000118, eax
008AABF6: mov var_00000120, 0000400Ch
008AAC00: mov var_00000138, 00000001h
008AAC0A: mov var_00000140, 00000003h
008AAC14: lea eax, var_30
008AAC17: mov var_00000128, eax
008AAC1D: mov var_00000130, 0000400Ch
008AAC27: mov var_00000168, 00000002h
008AAC31: mov var_00000170, 00000003h
008AAC3B: lea eax, var_30
008AAC3E: mov var_00000158, eax
008AAC44: mov var_00000160, 0000400Ch
008AAC4E: push var_38
008AAC51: push 00000000h
008AAC53: push 00000000h
008AAC55: push 00440E58h
008AAC5A: push 00000010h
008AAC5C: pop eax
008AAC5D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AAC62: lea esi, var_00000120
008AAC68: mov edi, esp
008AAC6A: movsd 
008AAC6B: movsd 
008AAC6C: movsd 
008AAC6D: movsd 
008AAC6E: push 00000001h
008AAC70: push 00000000h
008AAC72: push 00440E48h
008AAC77: push 00000000h
008AAC79: push 00000018h
008AAC7B: mov eax, [ebp+08h]
008AAC7E: mov eax, [eax]
008AAC80: push [ebp+08h]
008AAC83: call [eax+00000318h]
008AAC89: push eax
008AAC8A: lea eax, var_60
008AAC8D: push eax
008AAC8E: call 00410A84h ; Set (object)
008AAC93: push eax
008AAC94: lea eax, var_00000090
008AAC9A: push eax
008AAC9B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AACA0: add esp, 00000010h
008AACA3: push eax
008AACA4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AACA9: push eax
008AACAA: lea eax, var_64
008AACAD: push eax
008AACAE: call 00410A84h ; Set (object)
008AACB3: push eax
008AACB4: lea eax, var_000000A0
008AACBA: push eax
008AACBB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AACC0: add esp, 00000020h
008AACC3: push eax
008AACC4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AACC9: push eax
008AACCA: lea eax, var_68
008AACCD: push eax
008AACCE: call 00410A84h ; Set (object)
008AACD3: push eax
008AACD4: lea eax, var_000000B0
008AACDA: push eax
008AACDB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AACE0: add esp, 00000010h
008AACE3: push eax
008AACE4: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008AACE9: mov edx, eax
008AACEB: lea ecx, var_40
008AACEE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AACF3: push eax
008AACF4: call 00410A18h ; &
008AACF9: mov edx, eax
008AACFB: lea ecx, var_44
008AACFE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AAD03: push eax
008AAD04: push 004412B8h
008AAD09: call 00410A18h ; &
008AAD0E: mov edx, eax
008AAD10: lea ecx, var_48
008AAD13: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AAD18: push eax
008AAD19: push 00000010h
008AAD1B: pop eax
008AAD1C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AAD21: lea esi, var_00000140
008AAD27: mov edi, esp
008AAD29: movsd 
008AAD2A: movsd 
008AAD2B: movsd 
008AAD2C: movsd 
008AAD2D: push 00000001h
008AAD2F: push 00000010h
008AAD31: push 00440E58h
008AAD36: push 00000010h
008AAD38: pop eax
008AAD39: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AAD3E: lea esi, var_00000130
008AAD44: mov edi, esp
008AAD46: movsd 
008AAD47: movsd 
008AAD48: movsd 
008AAD49: movsd 
008AAD4A: push 00000001h
008AAD4C: push 00000000h
008AAD4E: push 00440E48h
008AAD53: push 00000000h
008AAD55: push 00000018h
008AAD57: mov eax, [ebp+08h]
008AAD5A: mov eax, [eax]
008AAD5C: push [ebp+08h]
008AAD5F: call [eax+00000318h]
008AAD65: push eax
008AAD66: lea eax, var_6C
008AAD69: push eax
008AAD6A: call 00410A84h ; Set (object)
008AAD6F: push eax
008AAD70: lea eax, var_000000C0
008AAD76: push eax
008AAD77: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AAD7C: add esp, 00000010h
008AAD7F: push eax
008AAD80: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AAD85: push eax
008AAD86: lea eax, var_70
008AAD89: push eax
008AAD8A: call 00410A84h ; Set (object)
008AAD8F: push eax
008AAD90: lea eax, var_000000D0
008AAD96: push eax
008AAD97: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AAD9C: add esp, 00000020h
008AAD9F: push eax
008AADA0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AADA5: push eax
008AADA6: lea eax, var_74
008AADA9: push eax
008AADAA: call 00410A84h ; Set (object)
008AADAF: push eax
008AADB0: lea eax, var_000000E0
008AADB6: push eax
008AADB7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AADBC: add esp, 00000020h
008AADBF: push eax
008AADC0: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008AADC5: mov edx, eax
008AADC7: lea ecx, var_4C
008AADCA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AADCF: push eax
008AADD0: call 00410A18h ; &
008AADD5: mov edx, eax
008AADD7: lea ecx, var_50
008AADDA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AADDF: push eax
008AADE0: push 004412B8h
008AADE5: call 00410A18h ; &
008AADEA: mov edx, eax
008AADEC: lea ecx, var_54
008AADEF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AADF4: push eax
008AADF5: push 00000010h
008AADF7: pop eax
008AADF8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AADFD: lea esi, var_00000170
008AAE03: mov edi, esp
008AAE05: movsd 
008AAE06: movsd 
008AAE07: movsd 
008AAE08: movsd 
008AAE09: push 00000001h
008AAE0B: push 00000010h
008AAE0D: push 00440E58h
008AAE12: push 00000010h
008AAE14: pop eax
008AAE15: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008AAE1A: lea esi, var_00000160
008AAE20: mov edi, esp
008AAE22: movsd 
008AAE23: movsd 
008AAE24: movsd 
008AAE25: movsd 
008AAE26: push 00000001h
008AAE28: push 00000000h
008AAE2A: push 00440E48h
008AAE2F: push 00000000h
008AAE31: push 00000018h
008AAE33: mov eax, [ebp+08h]
008AAE36: mov eax, [eax]
008AAE38: push [ebp+08h]
008AAE3B: call [eax+00000318h]
008AAE41: push eax
008AAE42: lea eax, var_78
008AAE45: push eax
008AAE46: call 00410A84h ; Set (object)
008AAE4B: push eax
008AAE4C: lea eax, var_000000F0
008AAE52: push eax
008AAE53: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AAE58: add esp, 00000010h
008AAE5B: push eax
008AAE5C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AAE61: push eax
008AAE62: lea eax, var_7C
008AAE65: push eax
008AAE66: call 00410A84h ; Set (object)
008AAE6B: push eax
008AAE6C: lea eax, var_00000100
008AAE72: push eax
008AAE73: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AAE78: add esp, 00000020h
008AAE7B: push eax
008AAE7C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AAE81: push eax
008AAE82: lea eax, var_80
008AAE85: push eax
008AAE86: call 00410A84h ; Set (object)
008AAE8B: push eax
008AAE8C: lea eax, var_00000110
008AAE92: push eax
008AAE93: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AAE98: add esp, 00000020h
008AAE9B: push eax
008AAE9C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008AAEA1: mov edx, eax
008AAEA3: lea ecx, var_58
008AAEA6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AAEAB: push eax
008AAEAC: call 00410A18h ; &
008AAEB1: mov edx, eax
008AAEB3: lea ecx, var_5C
008AAEB6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AAEBB: push eax
008AAEBC: push 00441264h ; vbCrLf
008AAEC1: call 00410A18h ; &
008AAEC6: mov edx, eax
008AAEC8: lea ecx, var_38
008AAECB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008AAED0: lea eax, var_5C
008AAED3: push eax
008AAED4: lea eax, var_58
008AAED7: push eax
008AAED8: lea eax, var_54
008AAEDB: push eax
008AAEDC: lea eax, var_50
008AAEDF: push eax
008AAEE0: lea eax, var_4C
008AAEE3: push eax
008AAEE4: lea eax, var_48
008AAEE7: push eax
008AAEE8: lea eax, var_44
008AAEEB: push eax
008AAEEC: lea eax, var_40
008AAEEF: push eax
008AAEF0: push 00000008h
008AAEF2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AAEF7: add esp, 00000024h
008AAEFA: lea eax, var_80
008AAEFD: push eax
008AAEFE: lea eax, var_7C
008AAF01: push eax
008AAF02: lea eax, var_78
008AAF05: push eax
008AAF06: lea eax, var_74
008AAF09: push eax
008AAF0A: lea eax, var_70
008AAF0D: push eax
008AAF0E: lea eax, var_6C
008AAF11: push eax
008AAF12: lea eax, var_68
008AAF15: push eax
008AAF16: lea eax, var_64
008AAF19: push eax
008AAF1A: lea eax, var_60
008AAF1D: push eax
008AAF1E: push 00000009h
008AAF20: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AAF25: add esp, 00000028h
008AAF28: lea eax, var_00000110
008AAF2E: push eax
008AAF2F: lea eax, var_00000100
008AAF35: push eax
008AAF36: lea eax, var_000000F0
008AAF3C: push eax
008AAF3D: lea eax, var_000000E0
008AAF43: push eax
008AAF44: lea eax, var_000000D0
008AAF4A: push eax
008AAF4B: lea eax, var_000000C0
008AAF51: push eax
008AAF52: lea eax, var_000000B0
008AAF58: push eax
008AAF59: lea eax, var_000000A0
008AAF5F: push eax
008AAF60: lea eax, var_00000090
008AAF66: push eax
008AAF67: push 00000009h
008AAF69: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AAF6E: add esp, 00000028h
008AAF71: mov var_04, 00000009h
008AAF78: lea eax, var_000001B0
008AAF7E: push eax
008AAF7F: lea eax, var_000001A0
008AAF85: push eax
008AAF86: lea eax, var_30
008AAF89: push eax
008AAF8A: call 00410A36h ; Next
008AAF8F: mov var_000001CC, eax
008AAF95: cmp var_000001CC, 00000000h
008AAF9C: jnz 008AABE6h
008AAFA2: mov var_04, 0000000Ah
008AAFA9: mov var_00000088, 80020004h
008AAFB3: mov var_00000090, 0000000Ah
008AAFBD: lea eax, var_00000090
008AAFC3: push eax
008AAFC4: call 004108C2h ; FreeFile
008AAFC9: movsx eax, ax
008AAFCC: mov var_34, eax
008AAFCF: lea ecx, var_00000090
008AAFD5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008AAFDA: mov var_04, 0000000Bh
008AAFE1: push var_3C
008AAFE4: mov ecx, var_34
008AAFE7: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008AAFEC: push eax
008AAFED: push FFFFFFFFh
008AAFEF: push 00000220h
008AAFF4: call 004108B6h ; Open #
008AAFF9: mov var_04, 0000000Ch
008AB000: mov ecx, var_34
008AB003: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008AB008: push eax
008AB009: lea eax, var_38
008AB00C: push eax
008AB00D: push 00000000h
008AB00F: call 0041089Eh ; Put #
008AB014: mov var_04, 0000000Dh
008AB01B: mov ecx, var_34
008AB01E: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008AB023: push eax
008AB024: call 00410898h ; Close #arg_1
008AB029: jmp 8AB09Dh
008AB02B: mov var_04, 00000010h
008AB032: push 00000000h
008AB034: push 00000003h
008AB036: push 00440E48h
008AB03B: push 00000000h
008AB03D: push 00000018h
008AB03F: mov eax, [ebp+08h]
008AB042: mov eax, [eax]
008AB044: push [ebp+08h]
008AB047: call [eax+00000318h]
008AB04D: push eax
008AB04E: lea eax, var_60
008AB051: push eax
008AB052: call 00410A84h ; Set (object)
008AB057: push eax
008AB058: lea eax, var_00000090
008AB05E: push eax
008AB05F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008AB064: add esp, 00000010h
008AB067: push eax
008AB068: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008AB06D: push eax
008AB06E: lea eax, var_64
008AB071: push eax
008AB072: call 00410A84h ; Set (object)
008AB077: push eax
008AB078: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008AB07D: add esp, 0000000Ch
008AB080: lea eax, var_64
008AB083: push eax
008AB084: lea eax, var_60
008AB087: push eax
008AB088: push 00000002h
008AB08A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AB08F: add esp, 0000000Ch
008AB092: lea ecx, var_00000090
008AB098: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008AB09D: mov var_10, 00000000h
008AB0A4: push 008AB181h
008AB0A9: jmp 008AB150h
008AB0AE: lea eax, var_5C
008AB0B1: push eax
008AB0B2: lea eax, var_58
008AB0B5: push eax
008AB0B6: lea eax, var_54
008AB0B9: push eax
008AB0BA: lea eax, var_50
008AB0BD: push eax
008AB0BE: lea eax, var_4C
008AB0C1: push eax
008AB0C2: lea eax, var_48
008AB0C5: push eax
008AB0C6: lea eax, var_44
008AB0C9: push eax
008AB0CA: lea eax, var_40
008AB0CD: push eax
008AB0CE: push 00000008h
008AB0D0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008AB0D5: add esp, 00000024h
008AB0D8: lea eax, var_80
008AB0DB: push eax
008AB0DC: lea eax, var_7C
008AB0DF: push eax
008AB0E0: lea eax, var_78
008AB0E3: push eax
008AB0E4: lea eax, var_74
008AB0E7: push eax
008AB0E8: lea eax, var_70
008AB0EB: push eax
008AB0EC: lea eax, var_6C
008AB0EF: push eax
008AB0F0: lea eax, var_68
008AB0F3: push eax
008AB0F4: lea eax, var_64
008AB0F7: push eax
008AB0F8: lea eax, var_60
008AB0FB: push eax
008AB0FC: push 00000009h
008AB0FE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008AB103: add esp, 00000028h
008AB106: lea eax, var_00000110
008AB10C: push eax
008AB10D: lea eax, var_00000100
008AB113: push eax
008AB114: lea eax, var_000000F0
008AB11A: push eax
008AB11B: lea eax, var_000000E0
008AB121: push eax
008AB122: lea eax, var_000000D0
008AB128: push eax
008AB129: lea eax, var_000000C0
008AB12F: push eax
008AB130: lea eax, var_000000B0
008AB136: push eax
008AB137: lea eax, var_000000A0
008AB13D: push eax
008AB13E: lea eax, var_00000090
008AB144: push eax
008AB145: push 00000009h
008AB147: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008AB14C: add esp, 00000028h
008AB14F: ret 
End Sub

