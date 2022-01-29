VERSION 5.00
Begin VB.Form frmGallery
  Caption = "Remote gallery"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmGallery.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 10800
  ClientHeight = 6405
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame frmThumbPanel
    Caption = "Panel"
    ForeColor = &H80000008&
    Left = 120
    Top = 5520
    Width = 10575
    Height = 495
    TabIndex = 1
    Appearance = 0 'Flat
    BorderStyle = 0 'None
    Begin VB.ComboBox cmbScreenBits
      Style = 2
      Left = 2040
      Top = 120
      Width = 855
      Height = 315
      TabIndex = 3
      List = "frmGallery.frx":8E79
      ItemData = "frmGallery.frx":8EAC
    End
    Begin VB.ComboBox cmbScreenSize
      Style = 2
      Left = 480
      Top = 120
      Width = 855
      Height = 315
      TabIndex = 2
      List = "frmGallery.frx":8ED4
      ItemData = "frmGallery.frx":8F2B
    End
    Begin XtremeSuiteControls.CheckBox chkStretch
      Left = 3120
      Top = 135
      Width = 975
      Height = 255
      TabIndex = 7
    End
    Begin VB.Label Label4
      Caption = "Size:"
      Left = 0
      Top = 165
      Width = 495
      Height = 255
      TabIndex = 5
      BackStyle = 0 'Transparent
    End
    Begin VB.Label Label1
      Caption = "Quality:"
      Left = 1440
      Top = 165
      Width = 615
      Height = 255
      TabIndex = 4
      BackStyle = 0 'Transparent
    End
  End
  Begin VB.PictureBox imgThumb
    ForeColor = &H80000008&
    Left = 120
    Top = 120
    Width = 10575
    Height = 5295
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
  End
  Begin MSComctlLib.StatusBar sbGallery
    Left = 0
    Top = 6105
    Width = 10800
    Height = 300
    TabIndex = 6
  End
End

Attribute VB_Name = "frmGallery"


Private sub Form__8A34BD
008A34BD: push ebp
008A34BE: mov ebp, esp
008A34C0: sub esp, 0000000Ch
008A34C3: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008A34C8: mov eax, fs:[00h]
008A34CE: push eax
008A34CF: mov fs:[00000000h], esp
008A34D6: push 00000020h
008A34D8: pop eax
008A34D9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A34DE: push ebx
008A34DF: push esi
008A34E0: push edi
008A34E1: mov var_0C, esp
008A34E4: mov var_08, 0040E3C8h
008A34EB: mov eax, [ebp+08h]
008A34EE: and eax, 00000001h
008A34F1: mov var_04, eax
008A34F4: mov eax, [ebp+08h]
008A34F7: and al, FEh
008A34F9: mov [ebp+08h], eax
008A34FC: mov eax, [ebp+08h]
008A34FF: mov eax, [eax]
008A3501: push [ebp+08h]
008A3504: call [eax+04h]
008A3507: mov eax, [ebp+08h]
008A350A: mov eax, [eax]
008A350C: push [ebp+08h]
008A350F: call [eax+00000304h]
008A3515: push eax
008A3516: lea eax, var_1C
008A3519: push eax
008A351A: call 00410A84h ; Set (object)
008A351F: mov var_20, eax
008A3522: push 0000000Fh
008A3524: call 00410964h ; msvbvm60.dll.__vbaStrI2
008A3529: mov edx, eax
008A352B: lea ecx, var_18
008A352E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A3533: push eax
008A3534: mov eax, var_20
008A3537: mov eax, [eax]
008A3539: push var_20
008A353C: call [eax+000000ACh]
008A3542: fclex 
008A3544: mov var_24, eax
008A3547: cmp var_24, 00000000h
008A354B: jnl 8A3567h
008A354D: push 000000ACh
008A3552: push 0044C944h
008A3557: push var_20
008A355A: push var_24
008A355D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A3562: mov var_30, eax
008A3565: jmp 8A356Bh
008A3567: and var_30, 00000000h
008A356B: lea ecx, var_18
008A356E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008A3573: lea ecx, var_1C
008A3576: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008A357B: mov eax, [ebp+08h]
008A357E: mov eax, [eax]
008A3580: push [ebp+08h]
008A3583: call [eax+00000300h]
008A3589: push eax
008A358A: lea eax, var_1C
008A358D: push eax
008A358E: call 00410A84h ; Set (object)
008A3593: mov var_20, eax
008A3596: push 0000001Eh
008A3598: call 00410964h ; msvbvm60.dll.__vbaStrI2
008A359D: mov edx, eax
008A359F: lea ecx, var_18
008A35A2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008A35A7: push eax
008A35A8: mov eax, var_20
008A35AB: mov eax, [eax]
008A35AD: push var_20
008A35B0: call [eax+000000ACh]
008A35B6: fclex 
008A35B8: mov var_24, eax
008A35BB: cmp var_24, 00000000h
008A35BF: jnl 8A35DBh
008A35C1: push 000000ACh
008A35C6: push 0044C944h
008A35CB: push var_20
008A35CE: push var_24
008A35D1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A35D6: mov var_34, eax
008A35D9: jmp 8A35DFh
008A35DB: and var_34, 00000000h
008A35DF: lea ecx, var_18
008A35E2: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008A35E7: lea ecx, var_1C
008A35EA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008A35EF: mov var_04, 00000000h
008A35F6: push 008A360Fh
008A35FB: jmp 8A360Eh
008A35FD: lea ecx, var_18
008A3600: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008A3605: lea ecx, var_1C
008A3608: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008A360D: ret 
End Sub

Private sub Form__8A362E
008A362E: push ebp
008A362F: mov ebp, esp
008A3631: sub esp, 00000018h
008A3634: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008A3639: mov eax, fs:[00h]
008A363F: push eax
008A3640: mov fs:[00000000h], esp
008A3647: mov eax, 000000B4h
008A364C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A3651: push ebx
008A3652: push esi
008A3653: push edi
008A3654: mov var_18, esp
008A3657: mov var_14, 0040E3D8h
008A365E: mov eax, [ebp+08h]
008A3661: and eax, 00000001h
008A3664: mov var_10, eax
008A3667: mov eax, [ebp+08h]
008A366A: and al, FEh
008A366C: mov [ebp+08h], eax
008A366F: mov var_0C, 00000000h
008A3676: mov eax, [ebp+08h]
008A3679: mov eax, [eax]
008A367B: push [ebp+08h]
008A367E: call [eax+04h]
008A3681: mov var_04, 00000001h
008A3688: mov var_04, 00000002h
008A368F: push FFFFFFFFh
008A3691: call 00410A60h ; On Error ...
008A3696: mov var_04, 00000003h
008A369D: lea eax, var_74
008A36A0: push eax
008A36A1: mov eax, [ebp+08h]
008A36A4: mov eax, [eax]
008A36A6: push [ebp+08h]
008A36A9: call [eax+00000080h]
008A36AF: fclex 
008A36B1: mov var_80, eax
008A36B4: cmp var_80, 00000000h
008A36B8: jnl 8A36D7h
008A36BA: push 00000080h
008A36BF: push 0044CE8Ch
008A36C4: push [ebp+08h]
008A36C7: push var_80
008A36CA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A36CF: mov var_000000B4, eax
008A36D5: jmp 8A36DEh
008A36D7: and var_000000B4, 00000000h
008A36DE: mov eax, [ebp+08h]
008A36E1: mov eax, [eax]
008A36E3: push [ebp+08h]
008A36E6: call [eax+000002FCh]
008A36EC: push eax
008A36ED: lea eax, var_24
008A36F0: push eax
008A36F1: call 00410A84h ; Set (object)
008A36F6: mov var_00000084, eax
008A36FC: lea eax, var_7C
008A36FF: push eax
008A3700: mov eax, var_00000084
008A3706: mov eax, [eax]
008A3708: push var_00000084
008A370E: call [eax+00000088h]
008A3714: fclex 
008A3716: mov var_00000088, eax
008A371C: cmp var_00000088, 00000000h
008A3723: jnl 8A3748h
008A3725: push 00000088h
008A372A: push 00447A30h
008A372F: push var_00000084
008A3735: push var_00000088
008A373B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A3740: mov var_000000B8, eax
008A3746: jmp 8A374Fh
008A3748: and var_000000B8, 00000000h
008A374F: push 00000000h
008A3751: push 80010006h
008A3756: mov eax, [ebp+08h]
008A3759: mov eax, [eax]
008A375B: push [ebp+08h]
008A375E: call [eax+00000330h]
008A3764: push eax
008A3765: lea eax, var_28
008A3768: push eax
008A3769: call 00410A84h ; Set (object)
008A376E: push eax
008A376F: lea eax, var_40
008A3772: push eax
008A3773: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008A3778: add esp, 00000010h
008A377B: mov eax, [ebp+08h]
008A377E: mov eax, [eax]
008A3780: push [ebp+08h]
008A3783: call [eax+00000310h]
008A3789: push eax
008A378A: lea eax, var_2C
008A378D: push eax
008A378E: call 00410A84h ; Set (object)
008A3793: mov var_00000090, eax
008A3799: lea eax, var_78
008A379C: push eax
008A379D: mov eax, [ebp+08h]
008A37A0: mov eax, [eax]
008A37A2: push [ebp+08h]
008A37A5: call [eax+00000088h]
008A37AB: fclex 
008A37AD: mov var_0000008C, eax
008A37B3: cmp var_0000008C, 00000000h
008A37BA: jnl 8A37DCh
008A37BC: push 00000088h
008A37C1: push 0044CE8Ch
008A37C6: push [ebp+08h]
008A37C9: push var_0000008C
008A37CF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A37D4: mov var_000000BC, eax
008A37DA: jmp 8A37E3h
008A37DC: and var_000000BC, 00000000h
008A37E3: fld real4 ptr var_78
008A37E6: fsub real4 ptr [0040984Ch]
008A37EC: fsub real4 ptr var_7C
008A37EF: fstsw ax
008A37F1: test al, 0Dh
008A37F3: jnz 008A3B96h
008A37F9: fstp real4 ptr var_000000C0
008A37FF: lea eax, var_40
008A3802: push eax
008A3803: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008A3808: fsubr real4 ptr var_000000C0
008A380E: fsub real4 ptr [00402BA8h]
008A3814: fstp real4 ptr var_68
008A3817: fstsw ax
008A3819: test al, 0Dh
008A381B: jnz 008A3B96h
008A3821: mov var_70, 00000004h
008A3828: fld real4 ptr var_74
008A382B: fsub real4 ptr [0040E40Ch]
008A3831: fstp real4 ptr var_58
008A3834: fstsw ax
008A3836: test al, 0Dh
008A3838: jnz 008A3B96h
008A383E: mov var_60, 00000004h
008A3845: mov var_48, 000000F0h
008A384C: mov var_50, 00000002h
008A3853: push 00000010h
008A3855: pop eax
008A3856: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A385B: lea esi, var_70
008A385E: mov edi, esp
008A3860: movsd 
008A3861: movsd 
008A3862: movsd 
008A3863: movsd 
008A3864: push 00000010h
008A3866: pop eax
008A3867: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A386C: lea esi, var_60
008A386F: mov edi, esp
008A3871: movsd 
008A3872: movsd 
008A3873: movsd 
008A3874: movsd 
008A3875: push 00000010h
008A3877: pop eax
008A3878: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A387D: lea esi, var_50
008A3880: mov edi, esp
008A3882: movsd 
008A3883: movsd 
008A3884: movsd 
008A3885: movsd 
008A3886: fld real4 ptr [00402B7Ch]
008A388C: push ecx
008A388D: fstp real4 ptr [esp]
008A3890: mov eax, var_00000090
008A3896: mov eax, [eax]
008A3898: push var_00000090
008A389E: call [eax+00000268h]
008A38A4: fclex 
008A38A6: mov var_00000094, eax
008A38AC: cmp var_00000094, 00000000h
008A38B3: jnl 8A38D8h
008A38B5: push 00000268h
008A38BA: push 00440EDCh
008A38BF: push var_00000090
008A38C5: push var_00000094
008A38CB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A38D0: mov var_000000C4, eax
008A38D6: jmp 8A38DFh
008A38D8: and var_000000C4, 00000000h
008A38DF: lea eax, var_2C
008A38E2: push eax
008A38E3: lea eax, var_28
008A38E6: push eax
008A38E7: lea eax, var_24
008A38EA: push eax
008A38EB: push 00000003h
008A38ED: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A38F2: add esp, 00000010h
008A38F5: lea ecx, var_40
008A38F8: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A38FD: mov var_04, 00000004h
008A3904: mov eax, [ebp+08h]
008A3907: mov eax, [eax]
008A3909: push [ebp+08h]
008A390C: call [eax+00000310h]
008A3912: push eax
008A3913: lea eax, var_24
008A3916: push eax
008A3917: call 00410A84h ; Set (object)
008A391C: mov var_80, eax
008A391F: lea eax, var_74
008A3922: push eax
008A3923: mov eax, var_80
008A3926: mov eax, [eax]
008A3928: push var_80
008A392B: call [eax+78h]
008A392E: fclex 
008A3930: mov var_00000084, eax
008A3936: cmp var_00000084, 00000000h
008A393D: jnl 8A395Ch
008A393F: push 00000078h
008A3941: push 00440EDCh
008A3946: push var_80
008A3949: push var_00000084
008A394F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A3954: mov var_000000C8, eax
008A395A: jmp 8A3963h
008A395C: and var_000000C8, 00000000h
008A3963: mov eax, [ebp+08h]
008A3966: mov eax, [eax]
008A3968: push [ebp+08h]
008A396B: call [eax+00000310h]
008A3971: push eax
008A3972: lea eax, var_28
008A3975: push eax
008A3976: call 00410A84h ; Set (object)
008A397B: mov var_00000088, eax
008A3981: lea eax, var_78
008A3984: push eax
008A3985: mov eax, var_00000088
008A398B: mov eax, [eax]
008A398D: push var_00000088
008A3993: call [eax+00000088h]
008A3999: fclex 
008A399B: mov var_0000008C, eax
008A39A1: cmp var_0000008C, 00000000h
008A39A8: jnl 8A39CDh
008A39AA: push 00000088h
008A39AF: push 00440EDCh
008A39B4: push var_00000088
008A39BA: push var_0000008C
008A39C0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A39C5: mov var_000000CC, eax
008A39CB: jmp 8A39D4h
008A39CD: and var_000000CC, 00000000h
008A39D4: mov eax, [ebp+08h]
008A39D7: mov eax, [eax]
008A39D9: push [ebp+08h]
008A39DC: call [eax+00000310h]
008A39E2: push eax
008A39E3: lea eax, var_2C
008A39E6: push eax
008A39E7: call 00410A84h ; Set (object)
008A39EC: mov var_00000090, eax
008A39F2: lea eax, var_7C
008A39F5: push eax
008A39F6: mov eax, var_00000090
008A39FC: mov eax, [eax]
008A39FE: push var_00000090
008A3A04: call [eax+00000080h]
008A3A0A: fclex 
008A3A0C: mov var_00000094, eax
008A3A12: cmp var_00000094, 00000000h
008A3A19: jnl 8A3A3Eh
008A3A1B: push 00000080h
008A3A20: push 00440EDCh
008A3A25: push var_00000090
008A3A2B: push var_00000094
008A3A31: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A3A36: mov var_000000D0, eax
008A3A3C: jmp 8A3A45h
008A3A3E: and var_000000D0, 00000000h
008A3A45: mov eax, [ebp+08h]
008A3A48: mov eax, [eax]
008A3A4A: push [ebp+08h]
008A3A4D: call [eax+000002FCh]
008A3A53: push eax
008A3A54: lea eax, var_30
008A3A57: push eax
008A3A58: call 00410A84h ; Set (object)
008A3A5D: mov var_00000098, eax
008A3A63: mov var_68, 80020004h
008A3A6A: mov var_70, 0000000Ah
008A3A71: fld real4 ptr var_7C
008A3A74: fstp real4 ptr var_58
008A3A77: mov var_60, 00000004h
008A3A7E: fld real4 ptr var_74
008A3A81: fadd real4 ptr var_78
008A3A84: fadd real4 ptr [00402BA8h]
008A3A8A: fstp real4 ptr var_48
008A3A8D: fstsw ax
008A3A8F: test al, 0Dh
008A3A91: jnz 008A3B96h
008A3A97: mov var_50, 00000004h
008A3A9E: push 00000010h
008A3AA0: pop eax
008A3AA1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A3AA6: lea esi, var_70
008A3AA9: mov edi, esp
008A3AAB: movsd 
008A3AAC: movsd 
008A3AAD: movsd 
008A3AAE: movsd 
008A3AAF: push 00000010h
008A3AB1: pop eax
008A3AB2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A3AB7: lea esi, var_60
008A3ABA: mov edi, esp
008A3ABC: movsd 
008A3ABD: movsd 
008A3ABE: movsd 
008A3ABF: movsd 
008A3AC0: push 00000010h
008A3AC2: pop eax
008A3AC3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008A3AC8: lea esi, var_50
008A3ACB: mov edi, esp
008A3ACD: movsd 
008A3ACE: movsd 
008A3ACF: movsd 
008A3AD0: movsd 
008A3AD1: fld real4 ptr [00402B7Ch]
008A3AD7: push ecx
008A3AD8: fstp real4 ptr [esp]
008A3ADB: mov eax, var_00000098
008A3AE1: mov eax, [eax]
008A3AE3: push var_00000098
008A3AE9: call [eax+00000178h]
008A3AEF: fclex 
008A3AF1: mov var_0000009C, eax
008A3AF7: cmp var_0000009C, 00000000h
008A3AFE: jnl 8A3B23h
008A3B00: push 00000178h
008A3B05: push 00447A30h
008A3B0A: push var_00000098
008A3B10: push var_0000009C
008A3B16: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008A3B1B: mov var_000000D4, eax
008A3B21: jmp 8A3B2Ah
008A3B23: and var_000000D4, 00000000h
008A3B2A: lea eax, var_30
008A3B2D: push eax
008A3B2E: lea eax, var_2C
008A3B31: push eax
008A3B32: lea eax, var_28
008A3B35: push eax
008A3B36: lea eax, var_24
008A3B39: push eax
008A3B3A: push 00000004h
008A3B3C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A3B41: add esp, 00000014h
008A3B44: mov var_10, 00000000h
008A3B4B: wait 
008A3B4C: push 008A3B77h
008A3B51: jmp 8A3B76h
008A3B53: lea eax, var_30
008A3B56: push eax
008A3B57: lea eax, var_2C
008A3B5A: push eax
008A3B5B: lea eax, var_28
008A3B5E: push eax
008A3B5F: lea eax, var_24
008A3B62: push eax
008A3B63: push 00000004h
008A3B65: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008A3B6A: add esp, 00000014h
008A3B6D: lea ecx, var_40
008A3B70: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008A3B75: ret 
End Sub

