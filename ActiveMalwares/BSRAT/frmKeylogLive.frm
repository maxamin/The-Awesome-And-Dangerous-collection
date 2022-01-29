VERSION 5.00
Begin VB.Form frmKeylogLive
  Caption = "Live logger"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmKeylogLive.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 13230
  ClientHeight = 6630
  StartUpPosition = 2 'CenterScreen
  Begin XtremeSuiteControls.FlatEdit txtLog
    Left = 0
    Top = 0
    Width = 13215
    Height = 6615
    TabIndex = 0
  End
End

Attribute VB_Name = "frmKeylogLive"


Private sub Form__8D509E
008D509E: push ebp
008D509F: mov ebp, esp
008D50A1: sub esp, 00000018h
008D50A4: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D50A9: mov eax, fs:[00h]
008D50AF: push eax
008D50B0: mov fs:[00000000h], esp
008D50B7: mov eax, 000000B0h
008D50BC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D50C1: push ebx
008D50C2: push esi
008D50C3: push edi
008D50C4: mov var_18, esp
008D50C7: mov var_14, 0040FBE8h
008D50CE: mov eax, [ebp+08h]
008D50D1: and eax, 00000001h
008D50D4: mov var_10, eax
008D50D7: mov eax, [ebp+08h]
008D50DA: and al, FEh
008D50DC: mov [ebp+08h], eax
008D50DF: mov var_0C, 00000000h
008D50E6: mov eax, [ebp+08h]
008D50E9: mov eax, [eax]
008D50EB: push [ebp+08h]
008D50EE: call [eax+04h]
008D50F1: mov var_04, 00000001h
008D50F8: mov var_04, 00000002h
008D50FF: push FFFFFFFFh
008D5101: call 00410A60h ; On Error ...
008D5106: mov var_04, 00000003h
008D510D: fldz 
008D510F: fstp real4 ptr var_2C
008D5112: mov var_34, 00000004h
008D5119: and var_4C, 00000000h
008D511D: mov var_54, 00000002h
008D5124: lea eax, var_000000A8
008D512A: push eax
008D512B: mov eax, [ebp+08h]
008D512E: mov eax, [eax]
008D5130: push [ebp+08h]
008D5133: call [eax+00000080h]
008D5139: fclex 
008D513B: mov var_000000B0, eax
008D5141: cmp var_000000B0, 00000000h
008D5148: jnl 8D516Ah
008D514A: push 00000080h
008D514F: push 004490D0h
008D5154: push [ebp+08h]
008D5157: push var_000000B0
008D515D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D5162: mov var_000000CC, eax
008D5168: jmp 8D5171h
008D516A: and var_000000CC, 00000000h
008D5171: fld real4 ptr var_000000A8
008D5177: fsub real4 ptr [00402BB0h]
008D517D: fstp real4 ptr var_6C
008D5180: fstsw ax
008D5182: test al, 0Dh
008D5184: jnz 008D52B3h
008D518A: mov var_74, 00000004h
008D5191: lea eax, var_000000AC
008D5197: push eax
008D5198: mov eax, [ebp+08h]
008D519B: mov eax, [eax]
008D519D: push [ebp+08h]
008D51A0: call [eax+00000088h]
008D51A6: fclex 
008D51A8: mov var_000000B4, eax
008D51AE: cmp var_000000B4, 00000000h
008D51B5: jnl 8D51D7h
008D51B7: push 00000088h
008D51BC: push 004490D0h
008D51C1: push [ebp+08h]
008D51C4: push var_000000B4
008D51CA: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D51CF: mov var_000000D0, eax
008D51D5: jmp 8D51DEh
008D51D7: and var_000000D0, 00000000h
008D51DE: fld real4 ptr var_000000AC
008D51E4: fsub real4 ptr [00402B54h]
008D51EA: fstp real4 ptr var_0000008C
008D51F0: fstsw ax
008D51F2: test al, 0Dh
008D51F4: jnz 008D52B3h
008D51FA: mov var_00000094, 00000004h
008D5204: push 00000010h
008D5206: pop eax
008D5207: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D520C: lea esi, var_34
008D520F: mov edi, esp
008D5211: movsd 
008D5212: movsd 
008D5213: movsd 
008D5214: movsd 
008D5215: push 00000010h
008D5217: pop eax
008D5218: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D521D: lea esi, var_54
008D5220: mov edi, esp
008D5222: movsd 
008D5223: movsd 
008D5224: movsd 
008D5225: movsd 
008D5226: push 00000010h
008D5228: pop eax
008D5229: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D522E: lea esi, var_74
008D5231: mov edi, esp
008D5233: movsd 
008D5234: movsd 
008D5235: movsd 
008D5236: movsd 
008D5237: push 00000010h
008D5239: pop eax
008D523A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D523F: lea esi, var_00000094
008D5245: mov edi, esp
008D5247: movsd 
008D5248: movsd 
008D5249: movsd 
008D524A: movsd 
008D524B: push 00000004h
008D524D: push 80011002h
008D5252: mov eax, [ebp+08h]
008D5255: mov eax, [eax]
008D5257: push [ebp+08h]
008D525A: call [eax+000002FCh]
008D5260: push eax
008D5261: lea eax, var_24
008D5264: push eax
008D5265: call 00410A84h ; Set (object)
008D526A: push eax
008D526B: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008D5270: add esp, 0000004Ch
008D5273: lea ecx, var_24
008D5276: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D527B: mov var_10, 00000000h
008D5282: wait 
008D5283: push 008D5294h
008D5288: jmp 8D5293h
008D528A: lea ecx, var_24
008D528D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008D5292: ret 
End Sub

Private sub Form__8D52B8
008D52B8: push ebp
008D52B9: mov ebp, esp
008D52BB: sub esp, 0000000Ch
008D52BE: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008D52C3: mov eax, fs:[00h]
008D52C9: push eax
008D52CA: mov fs:[00000000h], esp
008D52D1: push 00000034h
008D52D3: pop eax
008D52D4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008D52D9: push ebx
008D52DA: push esi
008D52DB: push edi
008D52DC: mov var_0C, esp
008D52DF: mov var_08, 0040FC18h
008D52E6: mov eax, [ebp+08h]
008D52E9: and eax, 00000001h
008D52EC: mov var_04, eax
008D52EF: mov eax, [ebp+08h]
008D52F2: and al, FEh
008D52F4: mov [ebp+08h], eax
008D52F7: mov eax, [ebp+08h]
008D52FA: mov eax, [eax]
008D52FC: push [ebp+08h]
008D52FF: call [eax+04h]
008D5302: lea eax, var_18
008D5305: push eax
008D5306: mov eax, [ebp+08h]
008D5309: mov eax, [eax]
008D530B: push [ebp+08h]
008D530E: call [eax+000001C0h]
008D5314: fclex 
008D5316: mov var_3C, eax
008D5319: cmp var_3C, 00000000h
008D531D: jnl 8D5339h
008D531F: push 000001C0h
008D5324: push 004490D0h
008D5329: push [ebp+08h]
008D532C: push var_3C
008D532F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008D5334: mov var_48, eax
008D5337: jmp 8D533Dh
008D5339: and var_48, 00000000h
008D533D: push var_18
008D5340: call 004109DCh ; Val(arg_1)
008D5345: fstp real8 ptr var_38
008D5348: push 00000000h
008D534A: push 00000000h
008D534C: push 00000001h
008D534E: push 00000000h
008D5350: lea eax, var_20
008D5353: push eax
008D5354: push 00000010h
008D5356: push 00000880h
008D535B: call 00410946h ; ReDim
008D5360: add esp, 0000001Ch
008D5363: mov var_28, 00442930h
008D536A: mov var_30, 00000008h
008D5371: lea esi, var_30
008D5374: push 00000000h
008D5376: push var_20
008D5379: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008D537E: mov ecx, eax
008D5380: mov edx, esi
008D5382: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008D5387: mov edx, 0043DA50h ; x124
008D538C: lea ecx, var_1C
008D538F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008D5394: lea eax, var_20
008D5397: push eax
008D5398: lea eax, var_1C
008D539B: push eax
008D539C: fld real8 ptr var_38
008D539F: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008D53A4: push eax
008D53A5: call 007A6910h
008D53AA: lea eax, var_20
008D53AD: push eax
008D53AE: push 00000000h
008D53B0: call 00410934h ; Erase
008D53B5: lea eax, var_1C
008D53B8: push eax
008D53B9: lea eax, var_18
008D53BC: push eax
008D53BD: push 00000002h
008D53BF: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D53C4: add esp, 0000000Ch
008D53C7: mov var_04, 00000000h
008D53CE: wait 
008D53CF: push 008D53F5h
008D53D4: jmp 8D53F4h
008D53D6: lea eax, var_1C
008D53D9: push eax
008D53DA: lea eax, var_18
008D53DD: push eax
008D53DE: push 00000002h
008D53E0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008D53E5: add esp, 0000000Ch
008D53E8: lea eax, var_20
008D53EB: push eax
008D53EC: push 00000000h
008D53EE: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008D53F3: ret 
End Sub

