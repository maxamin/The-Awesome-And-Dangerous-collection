VERSION 5.00
Begin VB.Form frmFilterSearch
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 3645
  ClientHeight = 1080
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin VB.TextBox txtKeyword
    Left = 120
    Top = 600
    Width = 3375
    Height = 375
    TabIndex = 0
  End
  Begin VB.Label lblSearch
    Caption = "Quick search"
    Left = 600
    Top = 120
    Width = 2415
    Height = 375
    TabIndex = 1
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13,5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmFilterSearch"


Private sub txtKeyword__87649C
0087649C: push ebp
0087649D: mov ebp, esp
0087649F: sub esp, 0000000Ch
008764A2: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008764A7: mov eax, fs:[00h]
008764AD: push eax
008764AE: mov fs:[00000000h], esp
008764B5: push 00000034h
008764B7: pop eax
008764B8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008764BD: push ebx
008764BE: push esi
008764BF: push edi
008764C0: mov var_0C, esp
008764C3: mov var_08, 0040D560h
008764CA: mov eax, [ebp+08h]
008764CD: and eax, 00000001h
008764D0: mov var_04, eax
008764D3: mov eax, [ebp+08h]
008764D6: and al, FEh
008764D8: mov [ebp+08h], eax
008764DB: mov eax, [ebp+08h]
008764DE: mov eax, [eax]
008764E0: push [ebp+08h]
008764E3: call [eax+04h]
008764E6: mov eax, [ebp+0Ch]
008764E9: movsx eax, word ptr [eax]
008764EC: cmp eax, 0000000Dh
008764EF: jnz 00876611h
008764F5: mov eax, [ebp+08h]
008764F8: mov eax, [eax]
008764FA: push [ebp+08h]
008764FD: call [eax+000002FCh]
00876503: push eax
00876504: lea eax, var_1C
00876507: push eax
00876508: call 00410A84h ; Set (object)
0087650D: mov var_20, eax
00876510: lea eax, var_18
00876513: push eax
00876514: mov eax, var_20
00876517: mov eax, [eax]
00876519: push var_20
0087651C: call [eax+000000A0h]
00876522: fclex 
00876524: mov var_24, eax
00876527: cmp var_24, 00000000h
0087652B: jnl 876547h
0087652D: push 000000A0h
00876532: push 00440E08h
00876537: push var_20
0087653A: push var_24
0087653D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00876542: mov var_34, eax
00876545: jmp 87654Bh
00876547: and var_34, 00000000h
0087654B: push var_18
0087654E: mov eax, [ebp+08h]
00876551: mov eax, [eax]
00876553: push [ebp+08h]
00876556: call [eax+000006FCh]
0087655C: mov var_28, eax
0087655F: cmp var_28, 00000000h
00876563: jnl 87657Fh
00876565: push 000006FCh
0087656A: push 00447C74h
0087656F: push [ebp+08h]
00876572: push var_28
00876575: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087657A: mov var_38, eax
0087657D: jmp 876583h
0087657F: and var_38, 00000000h
00876583: lea ecx, var_18
00876586: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0087658B: lea ecx, var_1C
0087658E: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00876593: or word ptr [008F2430h], FFFFh
0087659B: cmp [008F529Ch], 00000000h
008765A2: jnz 8765BCh
008765A4: push 008F529Ch
008765A9: push 00440F2Ch
008765AE: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008765B3: mov var_3C, 008F529Ch
008765BA: jmp 8765C3h
008765BC: mov var_3C, 008F529Ch
008765C3: mov eax, var_3C
008765C6: mov eax, [eax]
008765C8: mov var_20, eax
008765CB: push [ebp+08h]
008765CE: lea eax, var_1C
008765D1: push eax
008765D2: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008765D7: push eax
008765D8: mov eax, var_20
008765DB: mov eax, [eax]
008765DD: push var_20
008765E0: call [eax+10h]
008765E3: fclex 
008765E5: mov var_24, eax
008765E8: cmp var_24, 00000000h
008765EC: jnl 876605h
008765EE: push 00000010h
008765F0: push 00440F1Ch
008765F5: push var_20
008765F8: push var_24
008765FB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00876600: mov var_40, eax
00876603: jmp 876609h
00876605: and var_40, 00000000h
00876609: lea ecx, var_1C
0087660C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00876611: mov eax, [ebp+0Ch]
00876614: movsx eax, word ptr [eax]
00876617: cmp eax, 0000001Bh
0087661A: jnz 876692h
0087661C: cmp [008F529Ch], 00000000h
00876623: jnz 87663Dh
00876625: push 008F529Ch
0087662A: push 00440F2Ch
0087662F: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00876634: mov var_44, 008F529Ch
0087663B: jmp 876644h
0087663D: mov var_44, 008F529Ch
00876644: mov eax, var_44
00876647: mov eax, [eax]
00876649: mov var_20, eax
0087664C: push [ebp+08h]
0087664F: lea eax, var_1C
00876652: push eax
00876653: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
00876658: push eax
00876659: mov eax, var_20
0087665C: mov eax, [eax]
0087665E: push var_20
00876661: call [eax+10h]
00876664: fclex 
00876666: mov var_24, eax
00876669: cmp var_24, 00000000h
0087666D: jnl 876686h
0087666F: push 00000010h
00876671: push 00440F1Ch
00876676: push var_20
00876679: push var_24
0087667C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00876681: mov var_48, eax
00876684: jmp 87668Ah
00876686: and var_48, 00000000h
0087668A: lea ecx, var_1C
0087668D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00876692: mov var_04, 00000000h
00876699: push 008766B2h
0087669E: jmp 8766B1h
008766A0: lea ecx, var_18
008766A3: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008766A8: lea ecx, var_1C
008766AB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008766B0: ret 
End Sub

Private sub lblSearch__8763A5
008763A5: push ebp
008763A6: mov ebp, esp
008763A8: sub esp, 0000000Ch
008763AB: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008763B0: mov eax, fs:[00h]
008763B6: push eax
008763B7: mov fs:[00000000h], esp
008763BE: push 0000001Ch
008763C0: pop eax
008763C1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008763C6: push ebx
008763C7: push esi
008763C8: push edi
008763C9: mov var_0C, esp
008763CC: mov var_08, 0040D550h
008763D3: mov eax, [ebp+08h]
008763D6: and eax, 00000001h
008763D9: mov var_04, eax
008763DC: mov eax, [ebp+08h]
008763DF: and al, FEh
008763E1: mov [ebp+08h], eax
008763E4: mov eax, [ebp+08h]
008763E7: mov eax, [eax]
008763E9: push [ebp+08h]
008763EC: call [eax+04h]
008763EF: cmp [008F529Ch], 00000000h
008763F6: jnz 876410h
008763F8: push 008F529Ch
008763FD: push 00440F2Ch
00876402: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00876407: mov var_2C, 008F529Ch
0087640E: jmp 876417h
00876410: mov var_2C, 008F529Ch
00876417: mov eax, var_2C
0087641A: mov eax, [eax]
0087641C: mov var_1C, eax
0087641F: push [ebp+08h]
00876422: lea eax, var_18
00876425: push eax
00876426: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
0087642B: push eax
0087642C: mov eax, var_1C
0087642F: mov eax, [eax]
00876431: push var_1C
00876434: call [eax+10h]
00876437: fclex 
00876439: mov var_20, eax
0087643C: cmp var_20, 00000000h
00876440: jnl 876459h
00876442: push 00000010h
00876444: push 00440F1Ch
00876449: push var_1C
0087644C: push var_20
0087644F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00876454: mov var_30, eax
00876457: jmp 87645Dh
00876459: and var_30, 00000000h
0087645D: lea ecx, var_18
00876460: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00876465: mov var_04, 00000000h
0087646C: push 0087647Dh
00876471: jmp 87647Ch
00876473: lea ecx, var_18
00876476: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087647B: ret 
End Sub

Private sub Form__8761C1
008761C1: push ebp
008761C2: mov ebp, esp
008761C4: sub esp, 0000000Ch
008761C7: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008761CC: mov eax, fs:[00h]
008761D2: push eax
008761D3: mov fs:[00000000h], esp
008761DA: push 0000001Ch
008761DC: pop eax
008761DD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008761E2: push ebx
008761E3: push esi
008761E4: push edi
008761E5: mov var_0C, esp
008761E8: mov var_08, 0040D530h
008761EF: mov eax, [ebp+08h]
008761F2: and eax, 00000001h
008761F5: mov var_04, eax
008761F8: mov eax, [ebp+08h]
008761FB: and al, FEh
008761FD: mov [ebp+08h], eax
00876200: mov eax, [ebp+08h]
00876203: mov eax, [eax]
00876205: push [ebp+08h]
00876208: call [eax+04h]
0087620B: mov cx, 00AFh
0087620F: call 00410928h ; msvbvm60.dll.__vbaUI1I2
00876214: mov var_1C, al
00876217: push 00447D44h
0087621C: push [ebp+08h]
0087621F: call 00410A06h ; msvbvm60.dll.__vbaCastObj
00876224: push eax
00876225: lea eax, var_18
00876228: push eax
00876229: call 00410A84h ; Set (object)
0087622E: lea eax, var_20
00876231: push eax
00876232: lea eax, var_1C
00876235: push eax
00876236: lea eax, var_18
00876239: push eax
0087623A: mov eax, [ebp+08h]
0087623D: mov eax, [eax]
0087623F: push [ebp+08h]
00876242: call [eax+000006F8h]
00876248: mov var_24, eax
0087624B: cmp var_24, 00000000h
0087624F: jnl 87626Bh
00876251: push 000006F8h
00876256: push 00447C74h
0087625B: push [ebp+08h]
0087625E: push var_24
00876261: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00876266: mov var_30, eax
00876269: jmp 87626Fh
0087626B: and var_30, 00000000h
0087626F: lea ecx, var_18
00876272: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00876277: mov var_04, 00000000h
0087627E: push 0087628Fh
00876283: jmp 87628Eh
00876285: lea ecx, var_18
00876288: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087628D: ret 
End Sub

Private sub Form__8762AE
008762AE: push ebp
008762AF: mov ebp, esp
008762B1: sub esp, 0000000Ch
008762B4: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008762B9: mov eax, fs:[00h]
008762BF: push eax
008762C0: mov fs:[00000000h], esp
008762C7: push 0000001Ch
008762C9: pop eax
008762CA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008762CF: push ebx
008762D0: push esi
008762D1: push edi
008762D2: mov var_0C, esp
008762D5: mov var_08, 0040D540h
008762DC: mov eax, [ebp+08h]
008762DF: and eax, 00000001h
008762E2: mov var_04, eax
008762E5: mov eax, [ebp+08h]
008762E8: and al, FEh
008762EA: mov [ebp+08h], eax
008762ED: mov eax, [ebp+08h]
008762F0: mov eax, [eax]
008762F2: push [ebp+08h]
008762F5: call [eax+04h]
008762F8: cmp [008F529Ch], 00000000h
008762FF: jnz 876319h
00876301: push 008F529Ch
00876306: push 00440F2Ch
0087630B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00876310: mov var_2C, 008F529Ch
00876317: jmp 876320h
00876319: mov var_2C, 008F529Ch
00876320: mov eax, var_2C
00876323: mov eax, [eax]
00876325: mov var_1C, eax
00876328: push [ebp+08h]
0087632B: lea eax, var_18
0087632E: push eax
0087632F: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
00876334: push eax
00876335: mov eax, var_1C
00876338: mov eax, [eax]
0087633A: push var_1C
0087633D: call [eax+10h]
00876340: fclex 
00876342: mov var_20, eax
00876345: cmp var_20, 00000000h
00876349: jnl 876362h
0087634B: push 00000010h
0087634D: push 00440F1Ch
00876352: push var_1C
00876355: push var_20
00876358: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0087635D: mov var_30, eax
00876360: jmp 876366h
00876362: and var_30, 00000000h
00876366: lea ecx, var_18
00876369: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087636E: mov var_04, 00000000h
00876375: push 00876386h
0087637A: jmp 876385h
0087637C: lea ecx, var_18
0087637F: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00876384: ret 
End Sub

Private sub unknown_876013
00876013: push ebp
00876014: mov ebp, esp
00876016: sub esp, 00000018h
00876019: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0087601E: mov eax, fs:[00h]
00876024: push eax
00876025: mov fs:[00000000h], esp
0087602C: push 00000034h
0087602E: pop eax
0087602F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00876034: push ebx
00876035: push esi
00876036: push edi
00876037: mov var_18, esp
0087603A: mov var_14, 0040D4F8h
00876041: mov var_10, 00000000h
00876048: mov var_0C, 00000000h
0087604F: mov eax, [ebp+08h]
00876052: mov eax, [eax]
00876054: push [ebp+08h]
00876057: call [eax+04h]
0087605A: mov var_04, 00000001h
00876061: mov var_04, 00000002h
00876068: push FFFFFFFFh
0087606A: call 00410A60h ; On Error ...
0087606F: mov var_04, 00000003h
00876076: mov eax, [ebp+0Ch]
00876079: mov eax, [eax]
0087607B: mov var_30, eax
0087607E: lea eax, var_2C
00876081: push eax
00876082: mov eax, var_30
00876085: mov eax, [eax]
00876087: push var_30
0087608A: call [eax+58h]
0087608D: fclex 
0087608F: mov var_34, eax
00876092: cmp var_34, 00000000h
00876096: jnl 8760AFh
00876098: push 00000058h
0087609A: push 00447D44h
0087609F: push var_30
008760A2: push var_34
008760A5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008760AA: mov var_4C, eax
008760AD: jmp 8760B3h
008760AF: and var_4C, 00000000h
008760B3: push 00080000h
008760B8: push FFFFFFECh
008760BA: push var_2C
008760BD: call 00440104h
008760C2: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
008760C7: mov var_04, 00000004h
008760CE: mov eax, [ebp+0Ch]
008760D1: mov eax, [eax]
008760D3: mov var_30, eax
008760D6: lea eax, var_2C
008760D9: push eax
008760DA: mov eax, var_30
008760DD: mov eax, [eax]
008760DF: push var_30
008760E2: call [eax+58h]
008760E5: fclex 
008760E7: mov var_34, eax
008760EA: cmp var_34, 00000000h
008760EE: jnl 876107h
008760F0: push 00000058h
008760F2: push 00447D44h
008760F7: push var_30
008760FA: push var_34
008760FD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00876102: mov var_50, eax
00876105: jmp 87610Bh
00876107: and var_50, 00000000h
0087610B: push 00000002h
0087610D: mov eax, [ebp+10h]
00876110: mov al, [eax]
00876112: push eax
00876113: push 00000000h
00876115: push var_2C
00876118: call 00447D1Ch
0087611D: call 00410A54h ; msvbvm60.dll.__vbaSetSystemError
00876122: mov var_04, 00000005h
00876129: call 004109CAh ; Err
0087612E: push eax
0087612F: lea eax, var_28
00876132: push eax
00876133: call 00410A84h ; Set (object)
00876138: mov var_30, eax
0087613B: lea eax, var_2C
0087613E: push eax
0087613F: mov eax, var_30
00876142: mov eax, [eax]
00876144: push var_30
00876147: call [eax+4Ch]
0087614A: fclex 
0087614C: mov var_34, eax
0087614F: cmp var_34, 00000000h
00876153: jnl 87616Ch
00876155: push 0000004Ch
00876157: push 00441298h
0087615C: push var_30
0087615F: push var_34
00876162: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00876167: mov var_54, eax
0087616A: jmp 876170h
0087616C: and var_54, 00000000h
00876170: xor eax, eax
00876172: cmp var_2C, 00000000h
00876176: setz al
00876179: neg eax
0087617B: mov var_24, ax
0087617F: lea ecx, var_28
00876182: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00876187: push 00876198h
0087618C: jmp 876197h
0087618E: lea ecx, var_28
00876191: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00876196: ret 
End Sub

Private sub unknown_8766D1
008766D1: push ebp
008766D2: mov ebp, esp
008766D4: sub esp, 00000018h
008766D7: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008766DC: mov eax, fs:[00h]
008766E2: push eax
008766E3: mov fs:[00000000h], esp
008766EA: mov eax, 000001F4h
008766EF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008766F4: push ebx
008766F5: push esi
008766F6: push edi
008766F7: mov var_18, esp
008766FA: mov var_14, 0040D570h
00876701: mov var_10, 00000000h
00876708: mov var_0C, 00000000h
0087670F: mov eax, [ebp+08h]
00876712: mov eax, [eax]
00876714: push [ebp+08h]
00876717: call [eax+04h]
0087671A: mov var_04, 00000001h
00876721: mov edx, [ebp+0Ch]
00876724: lea ecx, var_44
00876727: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0087672C: mov var_04, 00000002h
00876733: push FFFFFFFFh
00876735: call 00410A60h ; On Error ...
0087673A: mov var_04, 00000003h
00876741: cmp [008F2010h], 00000000h
00876748: jnz 876765h
0087674A: push 008F2010h
0087674F: push 00433984h
00876754: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00876759: mov var_000001FC, 008F2010h
00876763: jmp 87676Fh
00876765: mov var_000001FC, 008F2010h
0087676F: push 00000000h
00876771: push 00000003h
00876773: push 00440E48h
00876778: push 00000000h
0087677A: push 00000018h
0087677C: mov eax, var_000001FC
00876782: mov eax, [eax]
00876784: mov ecx, var_000001FC
0087678A: mov ecx, [ecx]
0087678C: mov ecx, [ecx]
0087678E: push eax
0087678F: call [ecx+0000054Ch]
00876795: push eax
00876796: lea eax, var_50
00876799: push eax
0087679A: call 00410A84h ; Set (object)
0087679F: push eax
008767A0: lea eax, var_70
008767A3: push eax
008767A4: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008767A9: add esp, 00000010h
008767AC: push eax
008767AD: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008767B2: push eax
008767B3: lea eax, var_54
008767B6: push eax
008767B7: call 00410A84h ; Set (object)
008767BC: push eax
008767BD: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008767C2: add esp, 0000000Ch
008767C5: lea eax, var_54
008767C8: push eax
008767C9: lea eax, var_50
008767CC: push eax
008767CD: push 00000002h
008767CF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008767D4: add esp, 0000000Ch
008767D7: lea ecx, var_70
008767DA: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008767DF: mov var_04, 00000004h
008767E6: or var_000000E8, FFFFFFFFh
008767ED: mov var_000000F0, 0000000Bh
008767F7: cmp [008F2010h], 00000000h
008767FE: jnz 87681Bh
00876800: push 008F2010h
00876805: push 00433984h
0087680A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0087680F: mov var_00000200, 008F2010h
00876819: jmp 876825h
0087681B: mov var_00000200, 008F2010h
00876825: push 00000010h
00876827: pop eax
00876828: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087682D: lea esi, var_000000F0
00876833: mov edi, esp
00876835: movsd 
00876836: movsd 
00876837: movsd 
00876838: movsd 
00876839: push 80010007h
0087683E: mov eax, var_00000200
00876844: mov eax, [eax]
00876846: mov ecx, var_00000200
0087684C: mov ecx, [ecx]
0087684E: mov ecx, [ecx]
00876850: push eax
00876851: call [ecx+0000054Ch]
00876857: push eax
00876858: lea eax, var_50
0087685B: push eax
0087685C: call 00410A84h ; Set (object)
00876861: push eax
00876862: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
00876867: lea ecx, var_50
0087686A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0087686F: mov var_04, 00000005h
00876876: and var_000000E8, 00000000h
0087687D: mov var_000000F0, 00000002h
00876887: cmp [008F2010h], 00000000h
0087688E: jnz 8768ABh
00876890: push 008F2010h
00876895: push 00433984h
0087689A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0087689F: mov var_00000204, 008F2010h
008768A9: jmp 8768B5h
008768AB: mov var_00000204, 008F2010h
008768B5: push 00000010h
008768B7: pop eax
008768B8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008768BD: lea esi, var_000000F0
008768C3: mov edi, esp
008768C5: movsd 
008768C6: movsd 
008768C7: movsd 
008768C8: movsd 
008768C9: push 00000001h
008768CB: push 80011001h
008768D0: mov eax, var_00000204
008768D6: mov eax, [eax]
008768D8: mov ecx, var_00000204
008768DE: mov ecx, [ecx]
008768E0: mov ecx, [ecx]
008768E2: push eax
008768E3: call [ecx+0000054Ch]
008768E9: push eax
008768EA: lea eax, var_50
008768ED: push eax
008768EE: call 00410A84h ; Set (object)
008768F3: push eax
008768F4: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008768F9: add esp, 0000001Ch
008768FC: lea ecx, var_50
008768FF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00876904: mov var_04, 00000006h
0087690B: cmp [008F2010h], 00000000h
00876912: jnz 87692Fh
00876914: push 008F2010h
00876919: push 00433984h
0087691E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00876923: mov var_00000208, 008F2010h
0087692D: jmp 876939h
0087692F: mov var_00000208, 008F2010h
00876939: mov eax, var_00000208
0087693F: mov eax, [eax]
00876941: mov ecx, var_00000208
00876947: mov ecx, [ecx]
00876949: mov ecx, [ecx]
0087694B: push eax
0087694C: call [ecx+00000550h]
00876952: push eax
00876953: lea eax, var_00000178
00876959: push eax
0087695A: call 00410A84h ; Set (object)
0087695F: mov var_04, 00000007h
00876966: mov var_000000E8, 00000001h
00876970: mov var_000000F0, 00000002h
0087697A: cmp [008F2010h], 00000000h
00876981: jnz 87699Eh
00876983: push 008F2010h
00876988: push 00433984h
0087698D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
00876992: mov var_0000020C, 008F2010h
0087699C: jmp 8769A8h
0087699E: mov var_0000020C, 008F2010h
008769A8: push 00000000h
008769AA: push 00000001h
008769AC: push 00440E48h
008769B1: push 00000000h
008769B3: push 00000018h
008769B5: mov eax, var_0000020C
008769BB: mov eax, [eax]
008769BD: mov ecx, var_0000020C
008769C3: mov ecx, [ecx]
008769C5: mov ecx, [ecx]
008769C7: push eax
008769C8: call [ecx+00000550h]
008769CE: push eax
008769CF: lea eax, var_50
008769D2: push eax
008769D3: call 00410A84h ; Set (object)
008769D8: push eax
008769D9: lea eax, var_70
008769DC: push eax
008769DD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008769E2: add esp, 00000010h
008769E5: push eax
008769E6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008769EB: push eax
008769EC: lea eax, var_54
008769EF: push eax
008769F0: call 00410A84h ; Set (object)
008769F5: push eax
008769F6: lea eax, var_80
008769F9: push eax
008769FA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008769FF: add esp, 00000010h
00876A02: push eax
00876A03: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00876A08: mov var_000000F8, eax
00876A0E: mov var_00000100, 00000003h
00876A18: mov var_00000108, 00000001h
00876A22: mov var_00000110, 00000002h
00876A2C: lea eax, var_000000F0
00876A32: push eax
00876A33: lea eax, var_00000100
00876A39: push eax
00876A3A: lea eax, var_00000110
00876A40: push eax
00876A41: lea eax, var_00000198
00876A47: push eax
00876A48: lea eax, var_00000188
00876A4E: push eax
00876A4F: lea eax, var_30
00876A52: push eax
00876A53: call 00410A3Ch ; For
00876A58: mov var_000001F0, eax
00876A5E: lea eax, var_54
00876A61: push eax
00876A62: lea eax, var_50
00876A65: push eax
00876A66: push 00000002h
00876A68: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00876A6D: add esp, 0000000Ch
00876A70: lea eax, var_80
00876A73: push eax
00876A74: lea eax, var_70
00876A77: push eax
00876A78: push 00000002h
00876A7A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00876A7F: add esp, 0000000Ch
00876A82: jmp 00877433h
00876A87: mov var_04, 00000008h
00876A8E: lea eax, var_30
00876A91: mov var_000000E8, eax
00876A97: mov var_000000F0, 0000400Ch
00876AA1: push 00000000h
00876AA3: push 00000014h
00876AA5: push 00440E58h
00876AAA: push 00000010h
00876AAC: pop eax
00876AAD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00876AB2: lea esi, var_000000F0
00876AB8: mov edi, esp
00876ABA: movsd 
00876ABB: movsd 
00876ABC: movsd 
00876ABD: movsd 
00876ABE: push 00000001h
00876AC0: push 00000000h
00876AC2: push 00440E48h
00876AC7: push 00000000h
00876AC9: push 00000018h
00876ACB: push var_00000178
00876AD1: lea eax, var_70
00876AD4: push eax
00876AD5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00876ADA: add esp, 00000010h
00876ADD: push eax
00876ADE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00876AE3: push eax
00876AE4: lea eax, var_50
00876AE7: push eax
00876AE8: call 00410A84h ; Set (object)
00876AED: push eax
00876AEE: lea eax, var_80
00876AF1: push eax
00876AF2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00876AF7: add esp, 00000020h
00876AFA: push eax
00876AFB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00876B00: push eax
00876B01: lea eax, var_54
00876B04: push eax
00876B05: call 00410A84h ; Set (object)
00876B0A: push eax
00876B0B: lea eax, var_00000090
00876B11: push eax
00876B12: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00876B17: add esp, 00000010h
00876B1A: push eax
00876B1B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00876B20: mov edx, eax
00876B22: lea ecx, var_4C
00876B25: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00876B2A: lea eax, var_54
00876B2D: push eax
00876B2E: lea eax, var_50
00876B31: push eax
00876B32: push 00000002h
00876B34: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00876B39: add esp, 0000000Ch
00876B3C: lea eax, var_00000090
00876B42: push eax
00876B43: lea eax, var_80
00876B46: push eax
00876B47: lea eax, var_70
00876B4A: push eax
00876B4B: push 00000003h
00876B4D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00876B52: add esp, 00000010h
00876B55: mov var_04, 00000009h
00876B5C: and word ptr var_48, 0000h
00876B61: mov var_04, 0000000Ah
00876B68: lea eax, var_30
00876B6B: mov var_000000E8, eax
00876B71: mov var_000000F0, 0000400Ch
00876B7B: push 00000000h
00876B7D: push 00000000h
00876B7F: push 00440E58h
00876B84: push 00000010h
00876B86: pop eax
00876B87: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00876B8C: lea esi, var_000000F0
00876B92: mov edi, esp
00876B94: movsd 
00876B95: movsd 
00876B96: movsd 
00876B97: movsd 
00876B98: push 00000001h
00876B9A: push 00000000h
00876B9C: push 00440E48h
00876BA1: push 00000000h
00876BA3: push 00000018h
00876BA5: push var_00000178
00876BAB: lea eax, var_70
00876BAE: push eax
00876BAF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00876BB4: add esp, 00000010h
00876BB7: push eax
00876BB8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00876BBD: push eax
00876BBE: lea eax, var_50
00876BC1: push eax
00876BC2: call 00410A84h ; Set (object)
00876BC7: push eax
00876BC8: lea eax, var_80
00876BCB: push eax
00876BCC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00876BD1: add esp, 00000020h
00876BD4: push eax
00876BD5: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00876BDA: push eax
00876BDB: lea eax, var_54
00876BDE: push eax
00876BDF: call 00410A84h ; Set (object)
00876BE4: push eax
00876BE5: lea eax, var_00000090
00876BEB: push eax
00876BEC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00876BF1: add esp, 00000010h
00876BF4: push eax
00876BF5: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00876BFA: mov var_00000098, eax
00876C00: mov var_000000A0, 00000008h
00876C0A: lea eax, var_000000A0
00876C10: push eax
00876C11: lea eax, var_000000B0
00876C17: push eax
00876C18: call 00410856h ; LCase(arg_1)
00876C1D: lea eax, var_44
00876C20: mov var_000000F8, eax
00876C26: mov var_00000100, 00004008h
00876C30: lea eax, var_00000100
00876C36: push eax
00876C37: lea eax, var_000000C0
00876C3D: push eax
00876C3E: call 00410856h ; LCase(arg_1)
00876C43: and var_00000108, 00000000h
00876C4A: mov var_00000110, 00008002h
00876C54: push 00000001h
00876C56: lea eax, var_000000B0
00876C5C: push eax
00876C5D: lea eax, var_000000C0
00876C63: push eax
00876C64: push 00000000h
00876C66: lea eax, var_000000D0
00876C6C: push eax
00876C6D: call 0041083Eh ; InStr
00876C72: push eax
00876C73: lea eax, var_00000110
00876C79: push eax
00876C7A: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
00876C7F: mov var_00000174, ax
00876C86: lea eax, var_54
00876C89: push eax
00876C8A: lea eax, var_50
00876C8D: push eax
00876C8E: push 00000002h
00876C90: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00876C95: add esp, 0000000Ch
00876C98: lea eax, var_000000D0
00876C9E: push eax
00876C9F: lea eax, var_000000B0
00876CA5: push eax
00876CA6: lea eax, var_000000C0
00876CAC: push eax
00876CAD: lea eax, var_000000A0
00876CB3: push eax
00876CB4: lea eax, var_00000090
00876CBA: push eax
00876CBB: lea eax, var_80
00876CBE: push eax
00876CBF: lea eax, var_70
00876CC2: push eax
00876CC3: push 00000007h
00876CC5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00876CCA: add esp, 00000020h
00876CCD: movsx eax, word ptr var_00000174
00876CD4: test eax, eax
00876CD6: jz 876CE9h
00876CD8: mov var_04, 0000000Bh
00876CDF: or word ptr var_48, FFFFh
00876CE4: jmp 00876F44h
00876CE9: mov var_04, 0000000Dh
00876CF0: mov var_000000E8, 00000001h
00876CFA: mov var_000000F0, 00000002h
00876D04: mov var_000000F8, 00000013h
00876D0E: mov var_00000100, 00000002h
00876D18: mov var_00000108, 00000001h
00876D22: mov var_00000110, 00000002h
00876D2C: lea eax, var_000000F0
00876D32: push eax
00876D33: lea eax, var_00000100
00876D39: push eax
00876D3A: lea eax, var_00000110
00876D40: push eax
00876D41: lea eax, var_000001B8
00876D47: push eax
00876D48: lea eax, var_000001A8
00876D4E: push eax
00876D4F: lea eax, var_40
00876D52: push eax
00876D53: call 00410A3Ch ; For
00876D58: mov var_000001F4, eax
00876D5E: jmp 00876F37h
00876D63: mov var_04, 0000000Eh
00876D6A: lea eax, var_40
00876D6D: push eax
00876D6E: call 00410A90h ; msvbvm60.dll.__vbaI4Var
00876D73: mov var_000000F8, eax
00876D79: mov var_00000100, 00000003h
00876D83: lea eax, var_30
00876D86: mov var_000000E8, eax
00876D8C: mov var_000000F0, 0000400Ch
00876D96: push 00000010h
00876D98: pop eax
00876D99: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00876D9E: lea esi, var_00000100
00876DA4: mov edi, esp
00876DA6: movsd 
00876DA7: movsd 
00876DA8: movsd 
00876DA9: movsd 
00876DAA: push 00000001h
00876DAC: push 00000010h
00876DAE: push 00440E58h
00876DB3: push 00000010h
00876DB5: pop eax
00876DB6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00876DBB: lea esi, var_000000F0
00876DC1: mov edi, esp
00876DC3: movsd 
00876DC4: movsd 
00876DC5: movsd 
00876DC6: movsd 
00876DC7: push 00000001h
00876DC9: push 00000000h
00876DCB: push 00440E48h
00876DD0: push 00000000h
00876DD2: push 00000018h
00876DD4: push var_00000178
00876DDA: lea eax, var_70
00876DDD: push eax
00876DDE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00876DE3: add esp, 00000010h
00876DE6: push eax
00876DE7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00876DEC: push eax
00876DED: lea eax, var_50
00876DF0: push eax
00876DF1: call 00410A84h ; Set (object)
00876DF6: push eax
00876DF7: lea eax, var_80
00876DFA: push eax
00876DFB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00876E00: add esp, 00000020h
00876E03: push eax
00876E04: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00876E09: push eax
00876E0A: lea eax, var_54
00876E0D: push eax
00876E0E: call 00410A84h ; Set (object)
00876E13: push eax
00876E14: lea eax, var_00000090
00876E1A: push eax
00876E1B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00876E20: add esp, 00000020h
00876E23: push eax
00876E24: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00876E29: mov var_00000098, eax
00876E2F: mov var_000000A0, 00000008h
00876E39: lea eax, var_000000A0
00876E3F: push eax
00876E40: lea eax, var_000000B0
00876E46: push eax
00876E47: call 00410856h ; LCase(arg_1)
00876E4C: lea eax, var_44
00876E4F: mov var_00000118, eax
00876E55: mov var_00000120, 00004008h
00876E5F: lea eax, var_00000120
00876E65: push eax
00876E66: lea eax, var_000000C0
00876E6C: push eax
00876E6D: call 00410856h ; LCase(arg_1)
00876E72: and var_00000128, 00000000h
00876E79: mov var_00000130, 00008002h
00876E83: push 00000001h
00876E85: lea eax, var_000000B0
00876E8B: push eax
00876E8C: lea eax, var_000000C0
00876E92: push eax
00876E93: push 00000000h
00876E95: lea eax, var_000000D0
00876E9B: push eax
00876E9C: call 0041083Eh ; InStr
00876EA1: push eax
00876EA2: lea eax, var_00000130
00876EA8: push eax
00876EA9: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
00876EAE: mov var_00000174, ax
00876EB5: lea eax, var_54
00876EB8: push eax
00876EB9: lea eax, var_50
00876EBC: push eax
00876EBD: push 00000002h
00876EBF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00876EC4: add esp, 0000000Ch
00876EC7: lea eax, var_000000D0
00876ECD: push eax
00876ECE: lea eax, var_000000B0
00876ED4: push eax
00876ED5: lea eax, var_000000C0
00876EDB: push eax
00876EDC: lea eax, var_000000A0
00876EE2: push eax
00876EE3: lea eax, var_00000090
00876EE9: push eax
00876EEA: lea eax, var_80
00876EED: push eax
00876EEE: lea eax, var_70
00876EF1: push eax
00876EF2: push 00000007h
00876EF4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00876EF9: add esp, 00000020h
00876EFC: movsx eax, word ptr var_00000174
00876F03: test eax, eax
00876F05: jz 876F13h
00876F07: mov var_04, 0000000Fh
00876F0E: or word ptr var_48, FFFFh
00876F13: mov var_04, 00000011h
00876F1A: lea eax, var_000001B8
00876F20: push eax
00876F21: lea eax, var_000001A8
00876F27: push eax
00876F28: lea eax, var_40
00876F2B: push eax
00876F2C: call 00410A36h ; Next
00876F31: mov var_000001F4, eax
00876F37: cmp var_000001F4, 00000000h
00876F3E: jnz 00876D63h
00876F44: mov var_04, 00000013h
00876F4B: cmp word ptr var_48, FFFFh
00876F50: jnz 0087740Fh
00876F56: mov var_04, 00000014h
00876F5D: mov var_000000F8, 80020004h
00876F67: mov var_00000100, 0000000Ah
00876F71: mov eax, var_4C
00876F74: mov var_00000118, eax
00876F7A: mov var_00000120, 00000008h
00876F84: lea eax, var_30
00876F87: mov var_000000E8, eax
00876F8D: mov var_000000F0, 0000400Ch
00876F97: push 00000000h
00876F99: push 00000000h
00876F9B: push 00440E58h
00876FA0: push 00000010h
00876FA2: pop eax
00876FA3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00876FA8: lea esi, var_000000F0
00876FAE: mov edi, esp
00876FB0: movsd 
00876FB1: movsd 
00876FB2: movsd 
00876FB3: movsd 
00876FB4: push 00000001h
00876FB6: push 00000000h
00876FB8: push 00440E48h
00876FBD: push 00000000h
00876FBF: push 00000018h
00876FC1: push var_00000178
00876FC7: lea eax, var_70
00876FCA: push eax
00876FCB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00876FD0: add esp, 00000010h
00876FD3: push eax
00876FD4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00876FD9: push eax
00876FDA: lea eax, var_50
00876FDD: push eax
00876FDE: call 00410A84h ; Set (object)
00876FE3: push eax
00876FE4: lea eax, var_80
00876FE7: push eax
00876FE8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00876FED: add esp, 00000020h
00876FF0: push eax
00876FF1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00876FF6: push eax
00876FF7: lea eax, var_54
00876FFA: push eax
00876FFB: call 00410A84h ; Set (object)
00877000: push eax
00877001: lea eax, var_00000090
00877007: push eax
00877008: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087700D: add esp, 00000010h
00877010: push eax
00877011: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00877016: mov var_000000A8, eax
0087701C: mov var_000000B0, 00000008h
00877026: cmp [008F2010h], 00000000h
0087702D: jnz 87704Ah
0087702F: push 008F2010h
00877034: push 00433984h
00877039: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0087703E: mov var_00000210, 008F2010h
00877048: jmp 877054h
0087704A: mov var_00000210, 008F2010h
00877054: push 00000010h
00877056: pop eax
00877057: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087705C: lea esi, var_00000100
00877062: mov edi, esp
00877064: movsd 
00877065: movsd 
00877066: movsd 
00877067: movsd 
00877068: push 00000010h
0087706A: pop eax
0087706B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00877070: lea esi, var_00000120
00877076: mov edi, esp
00877078: movsd 
00877079: movsd 
0087707A: movsd 
0087707B: movsd 
0087707C: push 00000010h
0087707E: pop eax
0087707F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00877084: lea esi, var_000000B0
0087708A: mov edi, esp
0087708C: movsd 
0087708D: movsd 
0087708E: movsd 
0087708F: movsd 
00877090: push 00000003h
00877092: push 00000002h
00877094: push 00440E48h
00877099: push 00000000h
0087709B: push 00000018h
0087709D: mov eax, var_00000210
008770A3: mov eax, [eax]
008770A5: mov ecx, var_00000210
008770AB: mov ecx, [ecx]
008770AD: mov ecx, [ecx]
008770AF: push eax
008770B0: call [ecx+0000054Ch]
008770B6: push eax
008770B7: lea eax, var_58
008770BA: push eax
008770BB: call 00410A84h ; Set (object)
008770C0: push eax
008770C1: lea eax, var_000000A0
008770C7: push eax
008770C8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008770CD: add esp, 00000010h
008770D0: push eax
008770D1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008770D6: push eax
008770D7: lea eax, var_5C
008770DA: push eax
008770DB: call 00410A84h ; Set (object)
008770E0: push eax
008770E1: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008770E6: add esp, 0000003Ch
008770E9: lea eax, var_5C
008770EC: push eax
008770ED: lea eax, var_58
008770F0: push eax
008770F1: lea eax, var_54
008770F4: push eax
008770F5: lea eax, var_50
008770F8: push eax
008770F9: push 00000004h
008770FB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00877100: add esp, 00000014h
00877103: lea eax, var_000000B0
00877109: push eax
0087710A: lea eax, var_000000A0
00877110: push eax
00877111: lea eax, var_00000090
00877117: push eax
00877118: lea eax, var_80
0087711B: push eax
0087711C: lea eax, var_70
0087711F: push eax
00877120: push 00000005h
00877122: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00877127: add esp, 00000018h
0087712A: mov var_04, 00000015h
00877131: mov var_000000E8, 00000001h
0087713B: mov var_000000F0, 00000002h
00877145: mov var_000000F8, 00000013h
0087714F: mov var_00000100, 00000002h
00877159: mov var_00000108, 00000001h
00877163: mov var_00000110, 00000002h
0087716D: lea eax, var_000000F0
00877173: push eax
00877174: lea eax, var_00000100
0087717A: push eax
0087717B: lea eax, var_00000110
00877181: push eax
00877182: lea eax, var_000001D8
00877188: push eax
00877189: lea eax, var_000001C8
0087718F: push eax
00877190: lea eax, var_40
00877193: push eax
00877194: call 00410A3Ch ; For
00877199: mov var_000001F8, eax
0087719F: jmp 00877402h
008771A4: mov var_04, 00000016h
008771AB: lea eax, var_40
008771AE: push eax
008771AF: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008771B4: mov var_00000148, eax
008771BA: mov var_00000150, 00000003h
008771C4: lea eax, var_40
008771C7: push eax
008771C8: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008771CD: mov var_00000108, eax
008771D3: mov var_00000110, 00000003h
008771DD: mov eax, var_4C
008771E0: mov var_000000E8, eax
008771E6: mov var_000000F0, 00000008h
008771F0: push 00000010h
008771F2: pop eax
008771F3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008771F8: lea esi, var_00000110
008771FE: mov edi, esp
00877200: movsd 
00877201: movsd 
00877202: movsd 
00877203: movsd 
00877204: push 00000001h
00877206: push 00000010h
00877208: push 00440E58h
0087720D: push 00000010h
0087720F: pop eax
00877210: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00877215: lea esi, var_000000F0
0087721B: mov edi, esp
0087721D: movsd 
0087721E: movsd 
0087721F: movsd 
00877220: movsd 
00877221: push 00000001h
00877223: push 00000000h
00877225: push 00440E48h
0087722A: push 00000000h
0087722C: push 00000018h
0087722E: push var_00000178
00877234: lea eax, var_70
00877237: push eax
00877238: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087723D: add esp, 00000010h
00877240: push eax
00877241: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00877246: push eax
00877247: lea eax, var_50
0087724A: push eax
0087724B: call 00410A84h ; Set (object)
00877250: push eax
00877251: lea eax, var_80
00877254: push eax
00877255: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087725A: add esp, 00000020h
0087725D: push eax
0087725E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
00877263: push eax
00877264: lea eax, var_54
00877267: push eax
00877268: call 00410A84h ; Set (object)
0087726D: push eax
0087726E: lea eax, var_00000090
00877274: push eax
00877275: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0087727A: add esp, 00000020h
0087727D: push eax
0087727E: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
00877283: mov var_000000B8, eax
00877289: mov var_000000C0, 00000008h
00877293: mov eax, var_4C
00877296: mov var_00000128, eax
0087729C: mov var_00000130, 00000008h
008772A6: cmp [008F2010h], 00000000h
008772AD: jnz 8772CAh
008772AF: push 008F2010h
008772B4: push 00433984h
008772B9: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008772BE: mov var_00000214, 008F2010h
008772C8: jmp 8772D4h
008772CA: mov var_00000214, 008F2010h
008772D4: push 00000010h
008772D6: pop eax
008772D7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008772DC: lea esi, var_00000150
008772E2: mov edi, esp
008772E4: movsd 
008772E5: movsd 
008772E6: movsd 
008772E7: movsd 
008772E8: push 00000010h
008772EA: pop eax
008772EB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008772F0: lea esi, var_000000C0
008772F6: mov edi, esp
008772F8: movsd 
008772F9: movsd 
008772FA: movsd 
008772FB: movsd 
008772FC: push 00000001h
008772FE: push 00000010h
00877300: push 00440E58h
00877305: push 00000010h
00877307: pop eax
00877308: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0087730D: lea esi, var_00000130
00877313: mov edi, esp
00877315: movsd 
00877316: movsd 
00877317: movsd 
00877318: movsd 
00877319: push 00000001h
0087731B: push 00000000h
0087731D: push 00440E48h
00877322: push 00000000h
00877324: push 00000018h
00877326: mov eax, var_00000214
0087732C: mov eax, [eax]
0087732E: mov ecx, var_00000214
00877334: mov ecx, [ecx]
00877336: mov ecx, [ecx]
00877338: push eax
00877339: call [ecx+0000054Ch]
0087733F: push eax
00877340: lea eax, var_58
00877343: push eax
00877344: call 00410A84h ; Set (object)
00877349: push eax
0087734A: lea eax, var_000000A0
00877350: push eax
00877351: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00877356: add esp, 00000010h
00877359: push eax
0087735A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0087735F: push eax
00877360: lea eax, var_5C
00877363: push eax
00877364: call 00410A84h ; Set (object)
00877369: push eax
0087736A: lea eax, var_000000B0
00877370: push eax
00877371: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
00877376: add esp, 00000020h
00877379: push eax
0087737A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0087737F: push eax
00877380: lea eax, var_60
00877383: push eax
00877384: call 00410A84h ; Set (object)
00877389: push eax
0087738A: call 0041095Eh ; msvbvm60.dll.__vbaLateIdCallSt
0087738F: add esp, 0000002Ch
00877392: lea eax, var_60
00877395: push eax
00877396: lea eax, var_5C
00877399: push eax
0087739A: lea eax, var_58
0087739D: push eax
0087739E: lea eax, var_54
008773A1: push eax
008773A2: lea eax, var_50
008773A5: push eax
008773A6: push 00000005h
008773A8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008773AD: add esp, 00000018h
008773B0: lea eax, var_000000C0
008773B6: push eax
008773B7: lea eax, var_000000B0
008773BD: push eax
008773BE: lea eax, var_000000A0
008773C4: push eax
008773C5: lea eax, var_00000090
008773CB: push eax
008773CC: lea eax, var_80
008773CF: push eax
008773D0: lea eax, var_70
008773D3: push eax
008773D4: push 00000006h
008773D6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008773DB: add esp, 0000001Ch
008773DE: mov var_04, 00000017h
008773E5: lea eax, var_000001D8
008773EB: push eax
008773EC: lea eax, var_000001C8
008773F2: push eax
008773F3: lea eax, var_40
008773F6: push eax
008773F7: call 00410A36h ; Next
008773FC: mov var_000001F8, eax
00877402: cmp var_000001F8, 00000000h
00877409: jnz 008771A4h
0087740F: mov var_04, 00000019h
00877416: lea eax, var_00000198
0087741C: push eax
0087741D: lea eax, var_00000188
00877423: push eax
00877424: lea eax, var_30
00877427: push eax
00877428: call 00410A36h ; Next
0087742D: mov var_000001F0, eax
00877433: cmp var_000001F0, 00000000h
0087743A: jnz 00876A87h
00877440: mov var_04, 0000001Ah
00877447: push 00000000h
00877449: lea eax, var_00000178
0087744F: push eax
00877450: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
00877455: push 00877517h
0087745A: jmp 8774B7h
0087745C: lea eax, var_60
0087745F: push eax
00877460: lea eax, var_5C
00877463: push eax
00877464: lea eax, var_58
00877467: push eax
00877468: lea eax, var_54
0087746B: push eax
0087746C: lea eax, var_50
0087746F: push eax
00877470: push 00000005h
00877472: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
00877477: add esp, 00000018h
0087747A: lea eax, var_000000E0
00877480: push eax
00877481: lea eax, var_000000D0
00877487: push eax
00877488: lea eax, var_000000C0
0087748E: push eax
0087748F: lea eax, var_000000B0
00877495: push eax
00877496: lea eax, var_000000A0
0087749C: push eax
0087749D: lea eax, var_00000090
008774A3: push eax
008774A4: lea eax, var_80
008774A7: push eax
008774A8: lea eax, var_70
008774AB: push eax
008774AC: push 00000008h
008774AE: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008774B3: add esp, 00000024h
008774B6: ret 
End Sub

