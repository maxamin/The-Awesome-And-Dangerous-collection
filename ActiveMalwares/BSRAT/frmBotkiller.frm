VERSION 5.00
Begin VB.Form frmBotkiller
  Caption = "Botkiller"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmBotkiller.frx":0
  LinkTopic = "Form1"
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 13245
  ClientHeight = 7245
  StartUpPosition = 2 'CenterScreen
  Begin XtremeSuiteControls.ListView lstResults
    Left = 0
    Top = 0
    Width = 13215
    Height = 6255
    TabIndex = 0
  End
  Begin XtremeSuiteControls.GroupBox gbBotkiller
    Left = 0
    Top = 6240
    Width = 13215
    Height = 735
    TabIndex = 1
    Begin VB.Timer tmrInfo
      Interval = 1000
      Left = 3480
      Top = 0
    End
    Begin XtremeSuiteControls.PushButton cmdStart
      Left = 11880
      Top = 240
      Width = 1215
      Height = 375
      TabIndex = 2
    End
    Begin XtremeSuiteControls.PushButton cmdStop
      Left = 120
      Top = 240
      Width = 1215
      Height = 375
      TabIndex = 3
    End
  End
  Begin MSComctlLib.StatusBar sbBotkiller
    Left = 0
    Top = 6945
    Width = 13245
    Height = 300
    TabIndex = 4
  End
  Begin VB.Menu mnuBotkillerMenu
    Visible = 0   'False
    Caption = "Menu"
    Begin VB.Menu mnuBotkiller
      Index = 0
      Caption = "Save to file"
    End
    Begin VB.Menu mnuBotkiller
      Index = 1
      Caption = "Copy to clipboard"
    End
    Begin VB.Menu mnuBotkiller
      Index = 2
      Caption = "-"
    End
    Begin VB.Menu mnuBotkiller
      Index = 3
      Caption = "Clear"
    End
  End
End

Attribute VB_Name = "frmBotkiller"


Private sub tmrInfo__8C62AA
008C62AA: push ebp
008C62AB: mov ebp, esp
008C62AD: sub esp, 00000018h
008C62B0: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008C62B5: mov eax, fs:[00h]
008C62BB: push eax
008C62BC: mov fs:[00000000h], esp
008C62C3: mov eax, 000000E0h
008C62C8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C62CD: push ebx
008C62CE: push esi
008C62CF: push edi
008C62D0: mov var_18, esp
008C62D3: mov var_14, 0040F588h
008C62DA: mov eax, [ebp+08h]
008C62DD: and eax, 00000001h
008C62E0: mov var_10, eax
008C62E3: mov eax, [ebp+08h]
008C62E6: and al, FEh
008C62E8: mov [ebp+08h], eax
008C62EB: mov var_0C, 00000000h
008C62F2: mov eax, [ebp+08h]
008C62F5: mov eax, [eax]
008C62F7: push [ebp+08h]
008C62FA: call [eax+04h]
008C62FD: mov var_04, 00000001h
008C6304: mov var_04, 00000002h
008C630B: push FFFFFFFFh
008C630D: call 00410A60h ; On Error ...
008C6312: mov var_04, 00000003h
008C6319: movsx eax, word ptr [8F2430h]
008C6320: test eax, eax
008C6322: jnz 008C6646h
008C6328: mov var_04, 00000004h
008C632F: cmp [008F2010h], 00000000h
008C6336: jnz 8C6353h
008C6338: push 008F2010h
008C633D: push 00433984h
008C6342: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C6347: mov var_000000DC, 008F2010h
008C6351: jmp 8C635Dh
008C6353: mov var_000000DC, 008F2010h
008C635D: push 00000000h
008C635F: push 00000001h
008C6361: push 00440E48h
008C6366: push 00000000h
008C6368: push 00000018h
008C636A: mov eax, var_000000DC
008C6370: mov eax, [eax]
008C6372: mov ecx, var_000000DC
008C6378: mov ecx, [ecx]
008C637A: mov ecx, [ecx]
008C637C: push eax
008C637D: call [ecx+00000550h]
008C6383: push eax
008C6384: lea eax, var_34
008C6387: push eax
008C6388: call 00410A84h ; Set (object)
008C638D: push eax
008C638E: lea eax, var_54
008C6391: push eax
008C6392: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C6397: add esp, 00000010h
008C639A: push eax
008C639B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C63A0: push eax
008C63A1: lea eax, var_38
008C63A4: push eax
008C63A5: call 00410A84h ; Set (object)
008C63AA: push eax
008C63AB: lea eax, var_64
008C63AE: push eax
008C63AF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C63B4: add esp, 00000010h
008C63B7: push eax
008C63B8: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C63BD: xor ecx, ecx
008C63BF: test eax, eax
008C63C1: setnle cl
008C63C4: neg ecx
008C63C6: mov var_000000A8, cx
008C63CD: lea eax, var_38
008C63D0: push eax
008C63D1: lea eax, var_34
008C63D4: push eax
008C63D5: push 00000002h
008C63D7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C63DC: add esp, 0000000Ch
008C63DF: lea eax, var_64
008C63E2: push eax
008C63E3: lea eax, var_54
008C63E6: push eax
008C63E7: push 00000002h
008C63E9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C63EE: add esp, 0000000Ch
008C63F1: movsx eax, word ptr var_000000A8
008C63F8: test eax, eax
008C63FA: jz 008C6641h
008C6400: mov var_04, 00000005h
008C6407: cmp [008F2010h], 00000000h
008C640E: jnz 8C642Bh
008C6410: push 008F2010h
008C6415: push 00433984h
008C641A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C641F: mov var_000000E0, 008F2010h
008C6429: jmp 8C6435h
008C642B: mov var_000000E0, 008F2010h
008C6435: push 00000000h
008C6437: push 00000001h
008C6439: push 00440E48h
008C643E: push 00000000h
008C6440: push 00000018h
008C6442: mov eax, var_000000E0
008C6448: mov eax, [eax]
008C644A: mov ecx, var_000000E0
008C6450: mov ecx, [ecx]
008C6452: mov ecx, [ecx]
008C6454: push eax
008C6455: call [ecx+00000550h]
008C645B: push eax
008C645C: lea eax, var_34
008C645F: push eax
008C6460: call 00410A84h ; Set (object)
008C6465: push eax
008C6466: lea eax, var_54
008C6469: push eax
008C646A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C646F: add esp, 00000010h
008C6472: push eax
008C6473: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C6478: push eax
008C6479: lea eax, var_38
008C647C: push eax
008C647D: call 00410A84h ; Set (object)
008C6482: push eax
008C6483: lea eax, var_64
008C6486: push eax
008C6487: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C648C: add esp, 00000010h
008C648F: push eax
008C6490: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C6495: mov var_000000BC, eax
008C649B: mov var_000000B8, 00000001h
008C64A5: mov var_24, 00000001h
008C64AC: lea eax, var_38
008C64AF: push eax
008C64B0: lea eax, var_34
008C64B3: push eax
008C64B4: push 00000002h
008C64B6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C64BB: add esp, 0000000Ch
008C64BE: lea eax, var_64
008C64C1: push eax
008C64C2: lea eax, var_54
008C64C5: push eax
008C64C6: push 00000002h
008C64C8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C64CD: add esp, 0000000Ch
008C64D0: jmp 8C64E4h
008C64D2: mov eax, var_24
008C64D5: add eax, var_000000B8
008C64DB: jo 008C6D05h
008C64E1: mov var_24, eax
008C64E4: mov eax, var_24
008C64E7: cmp eax, var_000000BC
008C64ED: jnle 008C6641h
008C64F3: mov var_04, 00000006h
008C64FA: mov eax, var_24
008C64FD: mov var_0000008C, eax
008C6503: mov var_00000094, 00000003h
008C650D: cmp [008F2010h], 00000000h
008C6514: jnz 8C6531h
008C6516: push 008F2010h
008C651B: push 00433984h
008C6520: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C6525: mov var_000000E4, 008F2010h
008C652F: jmp 8C653Bh
008C6531: mov var_000000E4, 008F2010h
008C653B: push 00000000h
008C653D: push 00000004h
008C653F: push 00440E58h
008C6544: push 00000010h
008C6546: pop eax
008C6547: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C654C: lea esi, var_00000094
008C6552: mov edi, esp
008C6554: movsd 
008C6555: movsd 
008C6556: movsd 
008C6557: movsd 
008C6558: push 00000001h
008C655A: push 00000000h
008C655C: push 00440E48h
008C6561: push 00000000h
008C6563: push 00000018h
008C6565: mov eax, var_000000E4
008C656B: mov eax, [eax]
008C656D: mov ecx, var_000000E4
008C6573: mov ecx, [ecx]
008C6575: mov ecx, [ecx]
008C6577: push eax
008C6578: call [ecx+00000550h]
008C657E: push eax
008C657F: lea eax, var_34
008C6582: push eax
008C6583: call 00410A84h ; Set (object)
008C6588: push eax
008C6589: lea eax, var_54
008C658C: push eax
008C658D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C6592: add esp, 00000010h
008C6595: push eax
008C6596: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C659B: push eax
008C659C: lea eax, var_38
008C659F: push eax
008C65A0: call 00410A84h ; Set (object)
008C65A5: push eax
008C65A6: lea eax, var_64
008C65A9: push eax
008C65AA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C65AF: add esp, 00000020h
008C65B2: push eax
008C65B3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C65B8: push eax
008C65B9: lea eax, var_3C
008C65BC: push eax
008C65BD: call 00410A84h ; Set (object)
008C65C2: push eax
008C65C3: lea eax, var_74
008C65C6: push eax
008C65C7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C65CC: add esp, 00000010h
008C65CF: push eax
008C65D0: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008C65D5: sub ax, FFFFh
008C65D9: neg ax
008C65DC: sbb eax, eax
008C65DE: inc eax
008C65DF: neg eax
008C65E1: mov var_000000A8, ax
008C65E8: lea eax, var_3C
008C65EB: push eax
008C65EC: lea eax, var_38
008C65EF: push eax
008C65F0: lea eax, var_34
008C65F3: push eax
008C65F4: push 00000003h
008C65F6: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C65FB: add esp, 00000010h
008C65FE: lea eax, var_74
008C6601: push eax
008C6602: lea eax, var_64
008C6605: push eax
008C6606: lea eax, var_54
008C6609: push eax
008C660A: push 00000003h
008C660C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C6611: add esp, 00000010h
008C6614: movsx eax, word ptr var_000000A8
008C661B: test eax, eax
008C661D: jz 8C6635h
008C661F: mov var_04, 00000007h
008C6626: mov eax, var_28
008C6629: add eax, 00000001h
008C662C: jo 008C6D05h
008C6632: mov var_28, eax
008C6635: mov var_04, 00000009h
008C663C: jmp 008C64D2h
008C6641: jmp 008C6955h
008C6646: mov var_04, 0000000Ch
008C664D: cmp [008F2010h], 00000000h
008C6654: jnz 8C6671h
008C6656: push 008F2010h
008C665B: push 00433984h
008C6660: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C6665: mov var_000000E8, 008F2010h
008C666F: jmp 8C667Bh
008C6671: mov var_000000E8, 008F2010h
008C667B: and var_0000008C, 00000000h
008C6682: mov var_00000094, 00008002h
008C668C: push 00000000h
008C668E: push 0044A9C8h ; COUNT
008C6693: push 00000000h
008C6695: push 0044A9B0h ; lstFiltered
008C669A: mov eax, var_000000E8
008C66A0: mov eax, [eax]
008C66A2: mov ecx, var_000000E8
008C66A8: mov ecx, [ecx]
008C66AA: mov ecx, [ecx]
008C66AC: push eax
008C66AD: call [ecx+00000550h]
008C66B3: push eax
008C66B4: lea eax, var_34
008C66B7: push eax
008C66B8: call 00410A84h ; Set (object)
008C66BD: push eax
008C66BE: lea eax, var_54
008C66C1: push eax
008C66C2: call 00410742h ; msvbvm60.dll.__vbaLateMemCallLd
008C66C7: add esp, 00000010h
008C66CA: push eax
008C66CB: lea eax, var_64
008C66CE: push eax
008C66CF: call 004107D8h ; msvbvm60.dll.__vbaVarLateMemCallLd
008C66D4: add esp, 00000010h
008C66D7: push eax
008C66D8: lea eax, var_00000094
008C66DE: push eax
008C66DF: call 0041091Ch ; msvbvm60.dll.__vbaVarTstGt
008C66E4: mov var_000000A8, ax
008C66EB: lea ecx, var_34
008C66EE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C66F3: lea eax, var_64
008C66F6: push eax
008C66F7: lea eax, var_54
008C66FA: push eax
008C66FB: push 00000002h
008C66FD: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C6702: add esp, 0000000Ch
008C6705: movsx eax, word ptr var_000000A8
008C670C: test eax, eax
008C670E: jz 008C6955h
008C6714: mov var_04, 0000000Dh
008C671B: cmp [008F2010h], 00000000h
008C6722: jnz 8C673Fh
008C6724: push 008F2010h
008C6729: push 00433984h
008C672E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C6733: mov var_000000EC, 008F2010h
008C673D: jmp 8C6749h
008C673F: mov var_000000EC, 008F2010h
008C6749: push 00000000h
008C674B: push 00000001h
008C674D: push 00440E48h
008C6752: push 00000000h
008C6754: push 00000018h
008C6756: mov eax, var_000000EC
008C675C: mov eax, [eax]
008C675E: mov ecx, var_000000EC
008C6764: mov ecx, [ecx]
008C6766: mov ecx, [ecx]
008C6768: push eax
008C6769: call [ecx+0000054Ch]
008C676F: push eax
008C6770: lea eax, var_34
008C6773: push eax
008C6774: call 00410A84h ; Set (object)
008C6779: push eax
008C677A: lea eax, var_54
008C677D: push eax
008C677E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C6783: add esp, 00000010h
008C6786: push eax
008C6787: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C678C: push eax
008C678D: lea eax, var_38
008C6790: push eax
008C6791: call 00410A84h ; Set (object)
008C6796: push eax
008C6797: lea eax, var_64
008C679A: push eax
008C679B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C67A0: add esp, 00000010h
008C67A3: push eax
008C67A4: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C67A9: mov var_000000C4, eax
008C67AF: mov var_000000C0, 00000001h
008C67B9: mov var_24, 00000001h
008C67C0: lea eax, var_38
008C67C3: push eax
008C67C4: lea eax, var_34
008C67C7: push eax
008C67C8: push 00000002h
008C67CA: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C67CF: add esp, 0000000Ch
008C67D2: lea eax, var_64
008C67D5: push eax
008C67D6: lea eax, var_54
008C67D9: push eax
008C67DA: push 00000002h
008C67DC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C67E1: add esp, 0000000Ch
008C67E4: jmp 8C67F8h
008C67E6: mov eax, var_24
008C67E9: add eax, var_000000C0
008C67EF: jo 008C6D05h
008C67F5: mov var_24, eax
008C67F8: mov eax, var_24
008C67FB: cmp eax, var_000000C4
008C6801: jnle 008C6955h
008C6807: mov var_04, 0000000Eh
008C680E: mov eax, var_24
008C6811: mov var_0000008C, eax
008C6817: mov var_00000094, 00000003h
008C6821: cmp [008F2010h], 00000000h
008C6828: jnz 8C6845h
008C682A: push 008F2010h
008C682F: push 00433984h
008C6834: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C6839: mov var_000000F0, 008F2010h
008C6843: jmp 8C684Fh
008C6845: mov var_000000F0, 008F2010h
008C684F: push 00000000h
008C6851: push 00000004h
008C6853: push 00440E58h
008C6858: push 00000010h
008C685A: pop eax
008C685B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C6860: lea esi, var_00000094
008C6866: mov edi, esp
008C6868: movsd 
008C6869: movsd 
008C686A: movsd 
008C686B: movsd 
008C686C: push 00000001h
008C686E: push 00000000h
008C6870: push 00440E48h
008C6875: push 00000000h
008C6877: push 00000018h
008C6879: mov eax, var_000000F0
008C687F: mov eax, [eax]
008C6881: mov ecx, var_000000F0
008C6887: mov ecx, [ecx]
008C6889: mov ecx, [ecx]
008C688B: push eax
008C688C: call [ecx+0000054Ch]
008C6892: push eax
008C6893: lea eax, var_34
008C6896: push eax
008C6897: call 00410A84h ; Set (object)
008C689C: push eax
008C689D: lea eax, var_54
008C68A0: push eax
008C68A1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C68A6: add esp, 00000010h
008C68A9: push eax
008C68AA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C68AF: push eax
008C68B0: lea eax, var_38
008C68B3: push eax
008C68B4: call 00410A84h ; Set (object)
008C68B9: push eax
008C68BA: lea eax, var_64
008C68BD: push eax
008C68BE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C68C3: add esp, 00000020h
008C68C6: push eax
008C68C7: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C68CC: push eax
008C68CD: lea eax, var_3C
008C68D0: push eax
008C68D1: call 00410A84h ; Set (object)
008C68D6: push eax
008C68D7: lea eax, var_74
008C68DA: push eax
008C68DB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C68E0: add esp, 00000010h
008C68E3: push eax
008C68E4: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008C68E9: sub ax, FFFFh
008C68ED: neg ax
008C68F0: sbb eax, eax
008C68F2: inc eax
008C68F3: neg eax
008C68F5: mov var_000000A8, ax
008C68FC: lea eax, var_3C
008C68FF: push eax
008C6900: lea eax, var_38
008C6903: push eax
008C6904: lea eax, var_34
008C6907: push eax
008C6908: push 00000003h
008C690A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C690F: add esp, 00000010h
008C6912: lea eax, var_74
008C6915: push eax
008C6916: lea eax, var_64
008C6919: push eax
008C691A: lea eax, var_54
008C691D: push eax
008C691E: push 00000003h
008C6920: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C6925: add esp, 00000010h
008C6928: movsx eax, word ptr var_000000A8
008C692F: test eax, eax
008C6931: jz 8C6949h
008C6933: mov var_04, 0000000Fh
008C693A: mov eax, var_28
008C693D: add eax, 00000001h
008C6940: jo 008C6D05h
008C6946: mov var_28, eax
008C6949: mov var_04, 00000011h
008C6950: jmp 008C67E6h
008C6955: mov var_04, 00000014h
008C695C: push 0044A87Ch
008C6961: push 00000000h
008C6963: push 00000003h
008C6965: mov eax, [ebp+08h]
008C6968: mov eax, [eax]
008C696A: push [ebp+08h]
008C696D: call [eax+00000318h]
008C6973: push eax
008C6974: lea eax, var_34
008C6977: push eax
008C6978: call 00410A84h ; Set (object)
008C697D: push eax
008C697E: lea eax, var_54
008C6981: push eax
008C6982: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C6987: add esp, 00000010h
008C698A: push eax
008C698B: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C6990: push eax
008C6991: lea eax, var_38
008C6994: push eax
008C6995: call 00410A84h ; Set (object)
008C699A: mov var_000000A8, eax
008C69A0: mov var_5C, 00000001h
008C69A7: mov var_64, 00000002h
008C69AE: lea eax, var_3C
008C69B1: push eax
008C69B2: lea eax, var_64
008C69B5: push eax
008C69B6: mov eax, var_000000A8
008C69BC: mov eax, [eax]
008C69BE: push var_000000A8
008C69C4: call [eax+24h]
008C69C7: fclex 
008C69C9: mov var_000000AC, eax
008C69CF: cmp var_000000AC, 00000000h
008C69D6: jnl 8C69F8h
008C69D8: push 00000024h
008C69DA: push 0044A87Ch
008C69DF: push var_000000A8
008C69E5: push var_000000AC
008C69EB: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C69F0: mov var_000000F4, eax
008C69F6: jmp 8C69FFh
008C69F8: and var_000000F4, 00000000h
008C69FF: mov eax, var_3C
008C6A02: mov var_000000B0, eax
008C6A08: push 00460A7Ch ; Bots selected:
008C6A0D: push var_28
008C6A10: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008C6A15: mov edx, eax
008C6A17: lea ecx, var_2C
008C6A1A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C6A1F: push eax
008C6A20: call 00410A18h ; &
008C6A25: mov edx, eax
008C6A27: lea ecx, var_30
008C6A2A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C6A2F: push eax
008C6A30: mov eax, var_000000B0
008C6A36: mov eax, [eax]
008C6A38: push var_000000B0
008C6A3E: call [eax+00000080h]
008C6A44: fclex 
008C6A46: mov var_000000B4, eax
008C6A4C: cmp var_000000B4, 00000000h
008C6A53: jnl 8C6A78h
008C6A55: push 00000080h
008C6A5A: push 0044A88Ch
008C6A5F: push var_000000B0
008C6A65: push var_000000B4
008C6A6B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C6A70: mov var_000000F8, eax
008C6A76: jmp 8C6A7Fh
008C6A78: and var_000000F8, 00000000h
008C6A7F: lea eax, var_30
008C6A82: push eax
008C6A83: lea eax, var_2C
008C6A86: push eax
008C6A87: push 00000002h
008C6A89: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C6A8E: add esp, 0000000Ch
008C6A91: lea eax, var_3C
008C6A94: push eax
008C6A95: lea eax, var_38
008C6A98: push eax
008C6A99: lea eax, var_34
008C6A9C: push eax
008C6A9D: push 00000003h
008C6A9F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C6AA4: add esp, 00000010h
008C6AA7: lea eax, var_64
008C6AAA: push eax
008C6AAB: lea eax, var_54
008C6AAE: push eax
008C6AAF: push 00000002h
008C6AB1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C6AB6: add esp, 0000000Ch
008C6AB9: mov var_04, 00000015h
008C6AC0: push 0044A87Ch
008C6AC5: push 00000000h
008C6AC7: push 00000003h
008C6AC9: mov eax, [ebp+08h]
008C6ACC: mov eax, [eax]
008C6ACE: push [ebp+08h]
008C6AD1: call [eax+00000318h]
008C6AD7: push eax
008C6AD8: lea eax, var_3C
008C6ADB: push eax
008C6ADC: call 00410A84h ; Set (object)
008C6AE1: push eax
008C6AE2: lea eax, var_74
008C6AE5: push eax
008C6AE6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C6AEB: add esp, 00000010h
008C6AEE: push eax
008C6AEF: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C6AF4: push eax
008C6AF5: lea eax, var_40
008C6AF8: push eax
008C6AF9: call 00410A84h ; Set (object)
008C6AFE: mov var_000000A8, eax
008C6B04: mov var_7C, 00000002h
008C6B0B: mov var_00000084, 00000002h
008C6B15: lea eax, var_44
008C6B18: push eax
008C6B19: lea eax, var_00000084
008C6B1F: push eax
008C6B20: mov eax, var_000000A8
008C6B26: mov eax, [eax]
008C6B28: push var_000000A8
008C6B2E: call [eax+24h]
008C6B31: fclex 
008C6B33: mov var_000000AC, eax
008C6B39: cmp var_000000AC, 00000000h
008C6B40: jnl 8C6B62h
008C6B42: push 00000024h
008C6B44: push 0044A87Ch
008C6B49: push var_000000A8
008C6B4F: push var_000000AC
008C6B55: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C6B5A: mov var_000000FC, eax
008C6B60: jmp 8C6B69h
008C6B62: and var_000000FC, 00000000h
008C6B69: mov eax, var_44
008C6B6C: mov var_000000B0, eax
008C6B72: push 00460AA0h ; Reports:
008C6B77: push 00000000h
008C6B79: push 00000001h
008C6B7B: push 00440E48h
008C6B80: push 00000000h
008C6B82: push 00000018h
008C6B84: mov eax, [ebp+08h]
008C6B87: mov eax, [eax]
008C6B89: push [ebp+08h]
008C6B8C: call [eax+00000308h]
008C6B92: push eax
008C6B93: lea eax, var_34
008C6B96: push eax
008C6B97: call 00410A84h ; Set (object)
008C6B9C: push eax
008C6B9D: lea eax, var_54
008C6BA0: push eax
008C6BA1: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C6BA6: add esp, 00000010h
008C6BA9: push eax
008C6BAA: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C6BAF: push eax
008C6BB0: lea eax, var_38
008C6BB3: push eax
008C6BB4: call 00410A84h ; Set (object)
008C6BB9: push eax
008C6BBA: lea eax, var_64
008C6BBD: push eax
008C6BBE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C6BC3: add esp, 00000010h
008C6BC6: push eax
008C6BC7: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C6BCC: push eax
008C6BCD: call 00410A1Eh ; msvbvm60.dll.__vbaStrI4
008C6BD2: mov edx, eax
008C6BD4: lea ecx, var_2C
008C6BD7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C6BDC: push eax
008C6BDD: call 00410A18h ; &
008C6BE2: mov edx, eax
008C6BE4: lea ecx, var_30
008C6BE7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C6BEC: push eax
008C6BED: mov eax, var_000000B0
008C6BF3: mov eax, [eax]
008C6BF5: push var_000000B0
008C6BFB: call [eax+00000080h]
008C6C01: fclex 
008C6C03: mov var_000000B4, eax
008C6C09: cmp var_000000B4, 00000000h
008C6C10: jnl 8C6C35h
008C6C12: push 00000080h
008C6C17: push 0044A88Ch
008C6C1C: push var_000000B0
008C6C22: push var_000000B4
008C6C28: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C6C2D: mov var_00000100, eax
008C6C33: jmp 8C6C3Ch
008C6C35: and var_00000100, 00000000h
008C6C3C: lea eax, var_30
008C6C3F: push eax
008C6C40: lea eax, var_2C
008C6C43: push eax
008C6C44: push 00000002h
008C6C46: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C6C4B: add esp, 0000000Ch
008C6C4E: lea eax, var_44
008C6C51: push eax
008C6C52: lea eax, var_40
008C6C55: push eax
008C6C56: lea eax, var_3C
008C6C59: push eax
008C6C5A: lea eax, var_38
008C6C5D: push eax
008C6C5E: lea eax, var_34
008C6C61: push eax
008C6C62: push 00000005h
008C6C64: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C6C69: add esp, 00000018h
008C6C6C: lea eax, var_00000084
008C6C72: push eax
008C6C73: lea eax, var_74
008C6C76: push eax
008C6C77: lea eax, var_64
008C6C7A: push eax
008C6C7B: lea eax, var_54
008C6C7E: push eax
008C6C7F: push 00000004h
008C6C81: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C6C86: add esp, 00000014h
008C6C89: mov var_10, 00000000h
008C6C90: push 008C6CE6h
008C6C95: jmp 8C6CE5h
008C6C97: lea eax, var_30
008C6C9A: push eax
008C6C9B: lea eax, var_2C
008C6C9E: push eax
008C6C9F: push 00000002h
008C6CA1: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C6CA6: add esp, 0000000Ch
008C6CA9: lea eax, var_44
008C6CAC: push eax
008C6CAD: lea eax, var_40
008C6CB0: push eax
008C6CB1: lea eax, var_3C
008C6CB4: push eax
008C6CB5: lea eax, var_38
008C6CB8: push eax
008C6CB9: lea eax, var_34
008C6CBC: push eax
008C6CBD: push 00000005h
008C6CBF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C6CC4: add esp, 00000018h
008C6CC7: lea eax, var_00000084
008C6CCD: push eax
008C6CCE: lea eax, var_74
008C6CD1: push eax
008C6CD2: lea eax, var_64
008C6CD5: push eax
008C6CD6: lea eax, var_54
008C6CD9: push eax
008C6CDA: push 00000004h
008C6CDC: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C6CE1: add esp, 00000014h
008C6CE4: ret 
End Sub

Private sub cmdStop__8C29A2
008C29A2: push ebp
008C29A3: mov ebp, esp
008C29A5: sub esp, 00000018h
008C29A8: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008C29AD: mov eax, fs:[00h]
008C29B3: push eax
008C29B4: mov fs:[00000000h], esp
008C29BB: mov eax, 0000011Ch
008C29C0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C29C5: push ebx
008C29C6: push esi
008C29C7: push edi
008C29C8: mov var_18, esp
008C29CB: mov var_14, 0040F3A0h
008C29D2: mov eax, [ebp+08h]
008C29D5: and eax, 00000001h
008C29D8: mov var_10, eax
008C29DB: mov eax, [ebp+08h]
008C29DE: and al, FEh
008C29E0: mov [ebp+08h], eax
008C29E3: mov var_0C, 00000000h
008C29EA: mov eax, [ebp+08h]
008C29ED: mov eax, [eax]
008C29EF: push [ebp+08h]
008C29F2: call [eax+04h]
008C29F5: mov var_04, 00000001h
008C29FC: mov var_04, 00000002h
008C2A03: push FFFFFFFFh
008C2A05: call 00410A60h ; On Error ...
008C2A0A: mov var_04, 00000003h
008C2A11: cmp word ptr [008F2430h], FFFFh
008C2A19: jnz 008C2E5Fh
008C2A1F: mov var_04, 00000004h
008C2A26: mov var_80, 00000001h
008C2A2D: mov var_00000088, 00000002h
008C2A37: cmp [008F2010h], 00000000h
008C2A3E: jnz 8C2A5Bh
008C2A40: push 008F2010h
008C2A45: push 00433984h
008C2A4A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C2A4F: mov var_00000120, 008F2010h
008C2A59: jmp 8C2A65h
008C2A5B: mov var_00000120, 008F2010h
008C2A65: push 00000000h
008C2A67: push 00000001h
008C2A69: push 00440E48h
008C2A6E: push 00000000h
008C2A70: push 00000018h
008C2A72: mov eax, var_00000120
008C2A78: mov eax, [eax]
008C2A7A: mov ecx, var_00000120
008C2A80: mov ecx, [ecx]
008C2A82: mov ecx, [ecx]
008C2A84: push eax
008C2A85: call [ecx+0000054Ch]
008C2A8B: push eax
008C2A8C: lea eax, var_3C
008C2A8F: push eax
008C2A90: call 00410A84h ; Set (object)
008C2A95: push eax
008C2A96: lea eax, var_54
008C2A99: push eax
008C2A9A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2A9F: add esp, 00000010h
008C2AA2: push eax
008C2AA3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C2AA8: push eax
008C2AA9: lea eax, var_40
008C2AAC: push eax
008C2AAD: call 00410A84h ; Set (object)
008C2AB2: push eax
008C2AB3: lea eax, var_64
008C2AB6: push eax
008C2AB7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2ABC: add esp, 00000010h
008C2ABF: push eax
008C2AC0: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C2AC5: mov var_00000090, eax
008C2ACB: mov var_00000098, 00000003h
008C2AD5: mov var_000000A0, 00000001h
008C2ADF: mov var_000000A8, 00000002h
008C2AE9: lea eax, var_00000088
008C2AEF: push eax
008C2AF0: lea eax, var_00000098
008C2AF6: push eax
008C2AF7: lea eax, var_000000A8
008C2AFD: push eax
008C2AFE: lea eax, var_000000E0
008C2B04: push eax
008C2B05: lea eax, var_000000D0
008C2B0B: push eax
008C2B0C: lea eax, var_30
008C2B0F: push eax
008C2B10: call 00410A3Ch ; For
008C2B15: mov var_00000118, eax
008C2B1B: lea eax, var_40
008C2B1E: push eax
008C2B1F: lea eax, var_3C
008C2B22: push eax
008C2B23: push 00000002h
008C2B25: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C2B2A: add esp, 0000000Ch
008C2B2D: lea eax, var_64
008C2B30: push eax
008C2B31: lea eax, var_54
008C2B34: push eax
008C2B35: push 00000002h
008C2B37: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C2B3C: add esp, 0000000Ch
008C2B3F: jmp 008C2E4Dh
008C2B44: mov var_04, 00000005h
008C2B4B: lea eax, var_30
008C2B4E: mov var_80, eax
008C2B51: mov var_00000088, 0000400Ch
008C2B5B: cmp [008F2010h], 00000000h
008C2B62: jnz 8C2B7Fh
008C2B64: push 008F2010h
008C2B69: push 00433984h
008C2B6E: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C2B73: mov var_00000124, 008F2010h
008C2B7D: jmp 8C2B89h
008C2B7F: mov var_00000124, 008F2010h
008C2B89: push 00000000h
008C2B8B: push 00000004h
008C2B8D: push 00440E58h
008C2B92: push 00000010h
008C2B94: pop eax
008C2B95: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C2B9A: lea esi, var_00000088
008C2BA0: mov edi, esp
008C2BA2: movsd 
008C2BA3: movsd 
008C2BA4: movsd 
008C2BA5: movsd 
008C2BA6: push 00000001h
008C2BA8: push 00000000h
008C2BAA: push 00440E48h
008C2BAF: push 00000000h
008C2BB1: push 00000018h
008C2BB3: mov eax, var_00000124
008C2BB9: mov eax, [eax]
008C2BBB: mov ecx, var_00000124
008C2BC1: mov ecx, [ecx]
008C2BC3: mov ecx, [ecx]
008C2BC5: push eax
008C2BC6: call [ecx+0000054Ch]
008C2BCC: push eax
008C2BCD: lea eax, var_3C
008C2BD0: push eax
008C2BD1: call 00410A84h ; Set (object)
008C2BD6: push eax
008C2BD7: lea eax, var_54
008C2BDA: push eax
008C2BDB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2BE0: add esp, 00000010h
008C2BE3: push eax
008C2BE4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C2BE9: push eax
008C2BEA: lea eax, var_40
008C2BED: push eax
008C2BEE: call 00410A84h ; Set (object)
008C2BF3: push eax
008C2BF4: lea eax, var_64
008C2BF7: push eax
008C2BF8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2BFD: add esp, 00000020h
008C2C00: push eax
008C2C01: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C2C06: push eax
008C2C07: lea eax, var_44
008C2C0A: push eax
008C2C0B: call 00410A84h ; Set (object)
008C2C10: push eax
008C2C11: lea eax, var_74
008C2C14: push eax
008C2C15: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2C1A: add esp, 00000010h
008C2C1D: push eax
008C2C1E: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008C2C23: sub ax, FFFFh
008C2C27: neg ax
008C2C2A: sbb eax, eax
008C2C2C: inc eax
008C2C2D: neg eax
008C2C2F: mov var_000000B4, ax
008C2C36: lea eax, var_44
008C2C39: push eax
008C2C3A: lea eax, var_40
008C2C3D: push eax
008C2C3E: lea eax, var_3C
008C2C41: push eax
008C2C42: push 00000003h
008C2C44: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C2C49: add esp, 00000010h
008C2C4C: lea eax, var_74
008C2C4F: push eax
008C2C50: lea eax, var_64
008C2C53: push eax
008C2C54: lea eax, var_54
008C2C57: push eax
008C2C58: push 00000003h
008C2C5A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C2C5F: add esp, 00000010h
008C2C62: movsx eax, word ptr var_000000B4
008C2C69: test eax, eax
008C2C6B: jz 008C2E29h
008C2C71: mov var_04, 00000006h
008C2C78: lea eax, var_30
008C2C7B: mov var_80, eax
008C2C7E: mov var_00000088, 0000400Ch
008C2C88: cmp [008F2010h], 00000000h
008C2C8F: jnz 8C2CACh
008C2C91: push 008F2010h
008C2C96: push 00433984h
008C2C9B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C2CA0: mov var_00000128, 008F2010h
008C2CAA: jmp 8C2CB6h
008C2CAC: mov var_00000128, 008F2010h
008C2CB6: push 00000000h
008C2CB8: push 00000014h
008C2CBA: push 00440E58h
008C2CBF: push 00000010h
008C2CC1: pop eax
008C2CC2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C2CC7: lea esi, var_00000088
008C2CCD: mov edi, esp
008C2CCF: movsd 
008C2CD0: movsd 
008C2CD1: movsd 
008C2CD2: movsd 
008C2CD3: push 00000001h
008C2CD5: push 00000000h
008C2CD7: push 00440E48h
008C2CDC: push 00000000h
008C2CDE: push 00000018h
008C2CE0: mov eax, var_00000128
008C2CE6: mov eax, [eax]
008C2CE8: mov ecx, var_00000128
008C2CEE: mov ecx, [ecx]
008C2CF0: mov ecx, [ecx]
008C2CF2: push eax
008C2CF3: call [ecx+0000054Ch]
008C2CF9: push eax
008C2CFA: lea eax, var_3C
008C2CFD: push eax
008C2CFE: call 00410A84h ; Set (object)
008C2D03: push eax
008C2D04: lea eax, var_54
008C2D07: push eax
008C2D08: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2D0D: add esp, 00000010h
008C2D10: push eax
008C2D11: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C2D16: push eax
008C2D17: lea eax, var_40
008C2D1A: push eax
008C2D1B: call 00410A84h ; Set (object)
008C2D20: push eax
008C2D21: lea eax, var_64
008C2D24: push eax
008C2D25: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2D2A: add esp, 00000020h
008C2D2D: push eax
008C2D2E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C2D33: push eax
008C2D34: lea eax, var_44
008C2D37: push eax
008C2D38: call 00410A84h ; Set (object)
008C2D3D: push eax
008C2D3E: lea eax, var_74
008C2D41: push eax
008C2D42: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2D47: add esp, 00000010h
008C2D4A: push eax
008C2D4B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C2D50: mov edx, eax
008C2D52: lea ecx, var_34
008C2D55: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C2D5A: push eax
008C2D5B: call 004109DCh ; Val(arg_1)
008C2D60: fstp real8 ptr var_000000B0
008C2D66: push 00000000h
008C2D68: push 00000000h
008C2D6A: push 00000001h
008C2D6C: push 00000000h
008C2D6E: lea eax, var_78
008C2D71: push eax
008C2D72: push 00000010h
008C2D74: push 00000880h
008C2D79: call 00410946h ; ReDim
008C2D7E: add esp, 0000001Ch
008C2D81: mov var_00000090, 00442930h
008C2D8B: mov var_00000098, 00000008h
008C2D95: lea esi, var_00000098
008C2D9B: push 00000000h
008C2D9D: push var_78
008C2DA0: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008C2DA5: mov ecx, eax
008C2DA7: mov edx, esi
008C2DA9: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008C2DAE: mov edx, 0043D9F0h ; x118
008C2DB3: lea ecx, var_38
008C2DB6: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008C2DBB: lea eax, var_78
008C2DBE: push eax
008C2DBF: lea eax, var_38
008C2DC2: push eax
008C2DC3: fld real8 ptr var_000000B0
008C2DC9: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008C2DCE: push eax
008C2DCF: call 007A6910h
008C2DD4: lea eax, var_78
008C2DD7: push eax
008C2DD8: push 00000000h
008C2DDA: call 00410934h ; Erase
008C2DDF: lea eax, var_38
008C2DE2: push eax
008C2DE3: lea eax, var_34
008C2DE6: push eax
008C2DE7: push 00000002h
008C2DE9: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C2DEE: add esp, 0000000Ch
008C2DF1: lea eax, var_44
008C2DF4: push eax
008C2DF5: lea eax, var_40
008C2DF8: push eax
008C2DF9: lea eax, var_3C
008C2DFC: push eax
008C2DFD: push 00000003h
008C2DFF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C2E04: add esp, 00000010h
008C2E07: lea eax, var_74
008C2E0A: push eax
008C2E0B: lea eax, var_64
008C2E0E: push eax
008C2E0F: lea eax, var_54
008C2E12: push eax
008C2E13: push 00000003h
008C2E15: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C2E1A: add esp, 00000010h
008C2E1D: mov var_04, 00000007h
008C2E24: call 0041096Ah ; DoEvents
008C2E29: mov var_04, 00000009h
008C2E30: lea eax, var_000000E0
008C2E36: push eax
008C2E37: lea eax, var_000000D0
008C2E3D: push eax
008C2E3E: lea eax, var_30
008C2E41: push eax
008C2E42: call 00410A36h ; Next
008C2E47: mov var_00000118, eax
008C2E4D: cmp var_00000118, 00000000h
008C2E54: jnz 008C2B44h
008C2E5A: jmp 008C329Ah
008C2E5F: mov var_04, 0000000Bh
008C2E66: mov var_80, 00000001h
008C2E6D: mov var_00000088, 00000002h
008C2E77: cmp [008F2010h], 00000000h
008C2E7E: jnz 8C2E9Bh
008C2E80: push 008F2010h
008C2E85: push 00433984h
008C2E8A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C2E8F: mov var_0000012C, 008F2010h
008C2E99: jmp 8C2EA5h
008C2E9B: mov var_0000012C, 008F2010h
008C2EA5: push 00000000h
008C2EA7: push 00000001h
008C2EA9: push 00440E48h
008C2EAE: push 00000000h
008C2EB0: push 00000018h
008C2EB2: mov eax, var_0000012C
008C2EB8: mov eax, [eax]
008C2EBA: mov ecx, var_0000012C
008C2EC0: mov ecx, [ecx]
008C2EC2: mov ecx, [ecx]
008C2EC4: push eax
008C2EC5: call [ecx+00000550h]
008C2ECB: push eax
008C2ECC: lea eax, var_3C
008C2ECF: push eax
008C2ED0: call 00410A84h ; Set (object)
008C2ED5: push eax
008C2ED6: lea eax, var_54
008C2ED9: push eax
008C2EDA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2EDF: add esp, 00000010h
008C2EE2: push eax
008C2EE3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C2EE8: push eax
008C2EE9: lea eax, var_40
008C2EEC: push eax
008C2EED: call 00410A84h ; Set (object)
008C2EF2: push eax
008C2EF3: lea eax, var_64
008C2EF6: push eax
008C2EF7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2EFC: add esp, 00000010h
008C2EFF: push eax
008C2F00: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C2F05: mov var_00000090, eax
008C2F0B: mov var_00000098, 00000003h
008C2F15: mov var_000000A0, 00000001h
008C2F1F: mov var_000000A8, 00000002h
008C2F29: lea eax, var_00000088
008C2F2F: push eax
008C2F30: lea eax, var_00000098
008C2F36: push eax
008C2F37: lea eax, var_000000A8
008C2F3D: push eax
008C2F3E: lea eax, var_00000100
008C2F44: push eax
008C2F45: lea eax, var_000000F0
008C2F4B: push eax
008C2F4C: lea eax, var_30
008C2F4F: push eax
008C2F50: call 00410A3Ch ; For
008C2F55: mov var_0000011C, eax
008C2F5B: lea eax, var_40
008C2F5E: push eax
008C2F5F: lea eax, var_3C
008C2F62: push eax
008C2F63: push 00000002h
008C2F65: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C2F6A: add esp, 0000000Ch
008C2F6D: lea eax, var_64
008C2F70: push eax
008C2F71: lea eax, var_54
008C2F74: push eax
008C2F75: push 00000002h
008C2F77: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C2F7C: add esp, 0000000Ch
008C2F7F: jmp 008C328Dh
008C2F84: mov var_04, 0000000Ch
008C2F8B: lea eax, var_30
008C2F8E: mov var_80, eax
008C2F91: mov var_00000088, 0000400Ch
008C2F9B: cmp [008F2010h], 00000000h
008C2FA2: jnz 8C2FBFh
008C2FA4: push 008F2010h
008C2FA9: push 00433984h
008C2FAE: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C2FB3: mov var_00000130, 008F2010h
008C2FBD: jmp 8C2FC9h
008C2FBF: mov var_00000130, 008F2010h
008C2FC9: push 00000000h
008C2FCB: push 00000004h
008C2FCD: push 00440E58h
008C2FD2: push 00000010h
008C2FD4: pop eax
008C2FD5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C2FDA: lea esi, var_00000088
008C2FE0: mov edi, esp
008C2FE2: movsd 
008C2FE3: movsd 
008C2FE4: movsd 
008C2FE5: movsd 
008C2FE6: push 00000001h
008C2FE8: push 00000000h
008C2FEA: push 00440E48h
008C2FEF: push 00000000h
008C2FF1: push 00000018h
008C2FF3: mov eax, var_00000130
008C2FF9: mov eax, [eax]
008C2FFB: mov ecx, var_00000130
008C3001: mov ecx, [ecx]
008C3003: mov ecx, [ecx]
008C3005: push eax
008C3006: call [ecx+00000550h]
008C300C: push eax
008C300D: lea eax, var_3C
008C3010: push eax
008C3011: call 00410A84h ; Set (object)
008C3016: push eax
008C3017: lea eax, var_54
008C301A: push eax
008C301B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C3020: add esp, 00000010h
008C3023: push eax
008C3024: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C3029: push eax
008C302A: lea eax, var_40
008C302D: push eax
008C302E: call 00410A84h ; Set (object)
008C3033: push eax
008C3034: lea eax, var_64
008C3037: push eax
008C3038: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C303D: add esp, 00000020h
008C3040: push eax
008C3041: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C3046: push eax
008C3047: lea eax, var_44
008C304A: push eax
008C304B: call 00410A84h ; Set (object)
008C3050: push eax
008C3051: lea eax, var_74
008C3054: push eax
008C3055: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C305A: add esp, 00000010h
008C305D: push eax
008C305E: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008C3063: sub ax, FFFFh
008C3067: neg ax
008C306A: sbb eax, eax
008C306C: inc eax
008C306D: neg eax
008C306F: mov var_000000B4, ax
008C3076: lea eax, var_44
008C3079: push eax
008C307A: lea eax, var_40
008C307D: push eax
008C307E: lea eax, var_3C
008C3081: push eax
008C3082: push 00000003h
008C3084: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C3089: add esp, 00000010h
008C308C: lea eax, var_74
008C308F: push eax
008C3090: lea eax, var_64
008C3093: push eax
008C3094: lea eax, var_54
008C3097: push eax
008C3098: push 00000003h
008C309A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C309F: add esp, 00000010h
008C30A2: movsx eax, word ptr var_000000B4
008C30A9: test eax, eax
008C30AB: jz 008C3269h
008C30B1: mov var_04, 0000000Dh
008C30B8: lea eax, var_30
008C30BB: mov var_80, eax
008C30BE: mov var_00000088, 0000400Ch
008C30C8: cmp [008F2010h], 00000000h
008C30CF: jnz 8C30ECh
008C30D1: push 008F2010h
008C30D6: push 00433984h
008C30DB: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C30E0: mov var_00000134, 008F2010h
008C30EA: jmp 8C30F6h
008C30EC: mov var_00000134, 008F2010h
008C30F6: push 00000000h
008C30F8: push 00000014h
008C30FA: push 00440E58h
008C30FF: push 00000010h
008C3101: pop eax
008C3102: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3107: lea esi, var_00000088
008C310D: mov edi, esp
008C310F: movsd 
008C3110: movsd 
008C3111: movsd 
008C3112: movsd 
008C3113: push 00000001h
008C3115: push 00000000h
008C3117: push 00440E48h
008C311C: push 00000000h
008C311E: push 00000018h
008C3120: mov eax, var_00000134
008C3126: mov eax, [eax]
008C3128: mov ecx, var_00000134
008C312E: mov ecx, [ecx]
008C3130: mov ecx, [ecx]
008C3132: push eax
008C3133: call [ecx+00000550h]
008C3139: push eax
008C313A: lea eax, var_3C
008C313D: push eax
008C313E: call 00410A84h ; Set (object)
008C3143: push eax
008C3144: lea eax, var_54
008C3147: push eax
008C3148: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C314D: add esp, 00000010h
008C3150: push eax
008C3151: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C3156: push eax
008C3157: lea eax, var_40
008C315A: push eax
008C315B: call 00410A84h ; Set (object)
008C3160: push eax
008C3161: lea eax, var_64
008C3164: push eax
008C3165: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C316A: add esp, 00000020h
008C316D: push eax
008C316E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C3173: push eax
008C3174: lea eax, var_44
008C3177: push eax
008C3178: call 00410A84h ; Set (object)
008C317D: push eax
008C317E: lea eax, var_74
008C3181: push eax
008C3182: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C3187: add esp, 00000010h
008C318A: push eax
008C318B: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C3190: mov edx, eax
008C3192: lea ecx, var_34
008C3195: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C319A: push eax
008C319B: call 004109DCh ; Val(arg_1)
008C31A0: fstp real8 ptr var_000000B0
008C31A6: push 00000000h
008C31A8: push 00000000h
008C31AA: push 00000001h
008C31AC: push 00000000h
008C31AE: lea eax, var_78
008C31B1: push eax
008C31B2: push 00000010h
008C31B4: push 00000880h
008C31B9: call 00410946h ; ReDim
008C31BE: add esp, 0000001Ch
008C31C1: mov var_00000090, 00442930h
008C31CB: mov var_00000098, 00000008h
008C31D5: lea esi, var_00000098
008C31DB: push 00000000h
008C31DD: push var_78
008C31E0: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008C31E5: mov ecx, eax
008C31E7: mov edx, esi
008C31E9: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008C31EE: mov edx, 0043D9F0h ; x118
008C31F3: lea ecx, var_38
008C31F6: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008C31FB: lea eax, var_78
008C31FE: push eax
008C31FF: lea eax, var_38
008C3202: push eax
008C3203: fld real8 ptr var_000000B0
008C3209: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008C320E: push eax
008C320F: call 007A6910h
008C3214: lea eax, var_78
008C3217: push eax
008C3218: push 00000000h
008C321A: call 00410934h ; Erase
008C321F: lea eax, var_38
008C3222: push eax
008C3223: lea eax, var_34
008C3226: push eax
008C3227: push 00000002h
008C3229: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C322E: add esp, 0000000Ch
008C3231: lea eax, var_44
008C3234: push eax
008C3235: lea eax, var_40
008C3238: push eax
008C3239: lea eax, var_3C
008C323C: push eax
008C323D: push 00000003h
008C323F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C3244: add esp, 00000010h
008C3247: lea eax, var_74
008C324A: push eax
008C324B: lea eax, var_64
008C324E: push eax
008C324F: lea eax, var_54
008C3252: push eax
008C3253: push 00000003h
008C3255: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C325A: add esp, 00000010h
008C325D: mov var_04, 0000000Eh
008C3264: call 0041096Ah ; DoEvents
008C3269: mov var_04, 00000010h
008C3270: lea eax, var_00000100
008C3276: push eax
008C3277: lea eax, var_000000F0
008C327D: push eax
008C327E: lea eax, var_30
008C3281: push eax
008C3282: call 00410A36h ; Next
008C3287: mov var_0000011C, eax
008C328D: cmp var_0000011C, 00000000h
008C3294: jnz 008C2F84h
008C329A: mov var_04, 00000012h
008C32A1: push 0044A87Ch
008C32A6: push 00000000h
008C32A8: push 00000003h
008C32AA: mov eax, [ebp+08h]
008C32AD: mov eax, [eax]
008C32AF: push [ebp+08h]
008C32B2: call [eax+00000318h]
008C32B8: push eax
008C32B9: lea eax, var_3C
008C32BC: push eax
008C32BD: call 00410A84h ; Set (object)
008C32C2: push eax
008C32C3: lea eax, var_54
008C32C6: push eax
008C32C7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C32CC: add esp, 00000010h
008C32CF: push eax
008C32D0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C32D5: push eax
008C32D6: lea eax, var_40
008C32D9: push eax
008C32DA: call 00410A84h ; Set (object)
008C32DF: mov var_000000B4, eax
008C32E5: mov var_5C, 00000003h
008C32EC: mov var_64, 00000002h
008C32F3: lea eax, var_44
008C32F6: push eax
008C32F7: lea eax, var_64
008C32FA: push eax
008C32FB: mov eax, var_000000B4
008C3301: mov eax, [eax]
008C3303: push var_000000B4
008C3309: call [eax+24h]
008C330C: fclex 
008C330E: mov var_000000B8, eax
008C3314: cmp var_000000B8, 00000000h
008C331B: jnl 8C333Dh
008C331D: push 00000024h
008C331F: push 0044A87Ch
008C3324: push var_000000B4
008C332A: push var_000000B8
008C3330: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C3335: mov var_00000138, eax
008C333B: jmp 8C3344h
008C333D: and var_00000138, 00000000h
008C3344: mov eax, var_44
008C3347: mov var_000000BC, eax
008C334D: push 00460A2Ch ; Status: Stopped
008C3352: mov eax, var_000000BC
008C3358: mov eax, [eax]
008C335A: push var_000000BC
008C3360: call [eax+00000080h]
008C3366: fclex 
008C3368: mov var_000000C0, eax
008C336E: cmp var_000000C0, 00000000h
008C3375: jnl 8C339Ah
008C3377: push 00000080h
008C337C: push 0044A88Ch
008C3381: push var_000000BC
008C3387: push var_000000C0
008C338D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C3392: mov var_0000013C, eax
008C3398: jmp 8C33A1h
008C339A: and var_0000013C, 00000000h
008C33A1: lea eax, var_44
008C33A4: push eax
008C33A5: lea eax, var_40
008C33A8: push eax
008C33A9: lea eax, var_3C
008C33AC: push eax
008C33AD: push 00000003h
008C33AF: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C33B4: add esp, 00000010h
008C33B7: lea eax, var_64
008C33BA: push eax
008C33BB: lea eax, var_54
008C33BE: push eax
008C33BF: push 00000002h
008C33C1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C33C6: add esp, 0000000Ch
008C33C9: mov var_10, 00000000h
008C33D0: wait 
008C33D1: push 008C3451h
008C33D6: jmp 8C3422h
008C33D8: lea eax, var_38
008C33DB: push eax
008C33DC: lea eax, var_34
008C33DF: push eax
008C33E0: push 00000002h
008C33E2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C33E7: add esp, 0000000Ch
008C33EA: lea eax, var_44
008C33ED: push eax
008C33EE: lea eax, var_40
008C33F1: push eax
008C33F2: lea eax, var_3C
008C33F5: push eax
008C33F6: push 00000003h
008C33F8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C33FD: add esp, 00000010h
008C3400: lea eax, var_74
008C3403: push eax
008C3404: lea eax, var_64
008C3407: push eax
008C3408: lea eax, var_54
008C340B: push eax
008C340C: push 00000003h
008C340E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C3413: add esp, 00000010h
008C3416: lea eax, var_78
008C3419: push eax
008C341A: push 00000000h
008C341C: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008C3421: ret 
End Sub

Private sub lstResults__8C4699
008C4699: push ebp
008C469A: mov ebp, esp
008C469C: sub esp, 00000018h
008C469F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008C46A4: mov eax, fs:[00h]
008C46AA: push eax
008C46AB: mov fs:[00000000h], esp
008C46B2: push 00000060h
008C46B4: pop eax
008C46B5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C46BA: push ebx
008C46BB: push esi
008C46BC: push edi
008C46BD: mov var_18, esp
008C46C0: mov var_14, 0040F4D0h
008C46C7: mov eax, [ebp+08h]
008C46CA: and eax, 00000001h
008C46CD: mov var_10, eax
008C46D0: mov eax, [ebp+08h]
008C46D3: and al, FEh
008C46D5: mov [ebp+08h], eax
008C46D8: mov var_0C, 00000000h
008C46DF: mov eax, [ebp+08h]
008C46E2: mov eax, [eax]
008C46E4: push [ebp+08h]
008C46E7: call [eax+04h]
008C46EA: mov var_04, 00000001h
008C46F1: mov var_04, 00000002h
008C46F8: push FFFFFFFFh
008C46FA: call 00410A60h ; On Error ...
008C46FF: mov var_04, 00000003h
008C4706: mov eax, [ebp+0Ch]
008C4709: cmp word ptr [eax], 0002h
008C470D: jnz 008C47EEh
008C4713: mov var_04, 00000004h
008C471A: mov var_5C, 80020004h
008C4721: mov var_64, 0000000Ah
008C4728: mov var_4C, 80020004h
008C472F: mov var_54, 0000000Ah
008C4736: mov var_3C, 80020004h
008C473D: mov var_44, 0000000Ah
008C4744: mov var_2C, 80020004h
008C474B: mov var_34, 0000000Ah
008C4752: push 00000010h
008C4754: pop eax
008C4755: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C475A: lea esi, var_64
008C475D: mov edi, esp
008C475F: movsd 
008C4760: movsd 
008C4761: movsd 
008C4762: movsd 
008C4763: push 00000010h
008C4765: pop eax
008C4766: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C476B: lea esi, var_54
008C476E: mov edi, esp
008C4770: movsd 
008C4771: movsd 
008C4772: movsd 
008C4773: movsd 
008C4774: push 00000010h
008C4776: pop eax
008C4777: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C477C: lea esi, var_44
008C477F: mov edi, esp
008C4781: movsd 
008C4782: movsd 
008C4783: movsd 
008C4784: movsd 
008C4785: push 00000010h
008C4787: pop eax
008C4788: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C478D: lea esi, var_34
008C4790: mov edi, esp
008C4792: movsd 
008C4793: movsd 
008C4794: movsd 
008C4795: movsd 
008C4796: mov eax, [ebp+08h]
008C4799: mov eax, [eax]
008C479B: push [ebp+08h]
008C479E: call [eax+00000300h]
008C47A4: push eax
008C47A5: lea eax, var_24
008C47A8: push eax
008C47A9: call 00410A84h ; Set (object)
008C47AE: push eax
008C47AF: mov eax, [ebp+08h]
008C47B2: mov eax, [eax]
008C47B4: push [ebp+08h]
008C47B7: call [eax+000002BCh]
008C47BD: fclex 
008C47BF: mov var_68, eax
008C47C2: cmp var_68, 00000000h
008C47C6: jnl 8C47E2h
008C47C8: push 000002BCh
008C47CD: push 00448380h
008C47D2: push [ebp+08h]
008C47D5: push var_68
008C47D8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C47DD: mov var_80, eax
008C47E0: jmp 8C47E6h
008C47E2: and var_80, 00000000h
008C47E6: lea ecx, var_24
008C47E9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C47EE: mov var_10, 00000000h
008C47F5: push 008C4806h
008C47FA: jmp 8C4805h
008C47FC: lea ecx, var_24
008C47FF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C4804: ret 
End Sub

Private sub lstResults__8C414E
008C414E: push ebp
008C414F: mov ebp, esp
008C4151: sub esp, 0000000Ch
008C4154: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008C4159: mov eax, fs:[00h]
008C415F: push eax
008C4160: mov fs:[00000000h], esp
008C4167: push 00000008h
008C4169: pop eax
008C416A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C416F: push ebx
008C4170: push esi
008C4171: push edi
008C4172: mov var_0C, esp
008C4175: mov var_08, 0040F458h
008C417C: mov eax, [ebp+08h]
008C417F: and eax, 00000001h
008C4182: mov var_04, eax
008C4185: mov eax, [ebp+08h]
008C4188: and al, FEh
008C418A: mov [ebp+08h], eax
008C418D: mov eax, [ebp+08h]
008C4190: mov eax, [eax]
008C4192: push [ebp+08h]
008C4195: call [eax+04h]
008C4198: mov eax, [ebp+0Ch]
008C419B: or word ptr [eax], FFFFh
008C419F: mov var_04, 00000000h
008C41A6: mov eax, [ebp+08h]
008C41A9: mov eax, [eax]
008C41AB: push [ebp+08h]
008C41AE: call [eax+08h]
008C41B1: mov eax, var_04
008C41B4: mov ecx, var_14
008C41B7: mov fs:[00000000h], ecx
008C41BE: pop edi
008C41BF: pop esi
008C41C0: pop ebx
008C41C1: leave 
008C41C2: retn 0008h
End Sub

Private sub lstResults__8C41C5
008C41C5: push ebp
008C41C6: mov ebp, esp
008C41C8: sub esp, 00000018h
008C41CB: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008C41D0: mov eax, fs:[00h]
008C41D6: push eax
008C41D7: mov fs:[00000000h], esp
008C41DE: push 0000007Ch
008C41E0: pop eax
008C41E1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C41E6: push ebx
008C41E7: push esi
008C41E8: push edi
008C41E9: mov var_18, esp
008C41EC: mov var_14, 0040F460h
008C41F3: mov eax, [ebp+08h]
008C41F6: and eax, 00000001h
008C41F9: mov var_10, eax
008C41FC: mov eax, [ebp+08h]
008C41FF: and al, FEh
008C4201: mov [ebp+08h], eax
008C4204: mov var_0C, 00000000h
008C420B: mov eax, [ebp+08h]
008C420E: mov eax, [eax]
008C4210: push [ebp+08h]
008C4213: call [eax+04h]
008C4216: mov var_04, 00000001h
008C421D: push [ebp+0Ch]
008C4220: lea eax, var_24
008C4223: push eax
008C4224: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008C4229: mov var_04, 00000002h
008C4230: push FFFFFFFFh
008C4232: call 00410A60h ; On Error ...
008C4237: mov var_04, 00000003h
008C423E: push 00000000h
008C4240: push 00000005h
008C4242: push var_24
008C4245: lea eax, var_3C
008C4248: push eax
008C4249: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C424E: add esp, 00000010h
008C4251: push eax
008C4252: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C4257: dec eax
008C4258: neg eax
008C425A: sbb eax, eax
008C425C: inc eax
008C425D: neg eax
008C425F: mov var_80, ax
008C4263: lea ecx, var_3C
008C4266: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C426B: movsx eax, word ptr var_80
008C426F: test eax, eax
008C4271: jz 008C43C0h
008C4277: mov var_04, 00000004h
008C427E: cmp word ptr [008F2404h], FFFFh
008C4286: jnz 008C4326h
008C428C: mov var_04, 00000005h
008C4293: mov eax, [ebp+08h]
008C4296: mov eax, [eax]
008C4298: push [ebp+08h]
008C429B: call [eax+00000308h]
008C42A1: push eax
008C42A2: lea eax, var_2C
008C42A5: push eax
008C42A6: call 00410A84h ; Set (object)
008C42AB: push 00000000h
008C42AD: push 00000005h
008C42AF: push var_24
008C42B2: lea eax, var_3C
008C42B5: push eax
008C42B6: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C42BB: add esp, 00000010h
008C42BE: mov eax, var_2C
008C42C1: mov var_00000098, eax
008C42C7: and var_2C, 00000000h
008C42CB: push var_00000098
008C42D1: lea eax, var_28
008C42D4: push eax
008C42D5: call 00410A84h ; Set (object)
008C42DA: push 00000000h
008C42DC: lea eax, var_3C
008C42DF: push eax
008C42E0: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C42E5: sub eax, 00000001h
008C42E8: jo 008C4694h
008C42EE: push eax
008C42EF: lea eax, var_28
008C42F2: push eax
008C42F3: call 007BB2C1h
008C42F8: lea eax, var_2C
008C42FB: push eax
008C42FC: lea eax, var_28
008C42FF: push eax
008C4300: push 00000002h
008C4302: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C4307: add esp, 0000000Ch
008C430A: lea ecx, var_3C
008C430D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C4312: mov var_04, 00000006h
008C4319: and word ptr [008F2404h], 0000h
008C4321: jmp 008C43BBh
008C4326: mov var_04, 00000008h
008C432D: mov eax, [ebp+08h]
008C4330: mov eax, [eax]
008C4332: push [ebp+08h]
008C4335: call [eax+00000308h]
008C433B: push eax
008C433C: lea eax, var_2C
008C433F: push eax
008C4340: call 00410A84h ; Set (object)
008C4345: push 00000000h
008C4347: push 00000005h
008C4349: push var_24
008C434C: lea eax, var_3C
008C434F: push eax
008C4350: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4355: add esp, 00000010h
008C4358: mov eax, var_2C
008C435B: mov var_0000009C, eax
008C4361: and var_2C, 00000000h
008C4365: push var_0000009C
008C436B: lea eax, var_28
008C436E: push eax
008C436F: call 00410A84h ; Set (object)
008C4374: push 00000001h
008C4376: lea eax, var_3C
008C4379: push eax
008C437A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C437F: sub eax, 00000001h
008C4382: jo 008C4694h
008C4388: push eax
008C4389: lea eax, var_28
008C438C: push eax
008C438D: call 007BB2C1h
008C4392: lea eax, var_2C
008C4395: push eax
008C4396: lea eax, var_28
008C4399: push eax
008C439A: push 00000002h
008C439C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C43A1: add esp, 0000000Ch
008C43A4: lea ecx, var_3C
008C43A7: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C43AC: mov var_04, 00000009h
008C43B3: or word ptr [008F2404h], FFFFh
008C43BB: jmp 008C4635h
008C43C0: mov var_04, 0000000Dh
008C43C7: push 00000000h
008C43C9: push 00000011h
008C43CB: mov eax, [ebp+08h]
008C43CE: mov eax, [eax]
008C43D0: push [ebp+08h]
008C43D3: call [eax+00000308h]
008C43D9: push eax
008C43DA: lea eax, var_28
008C43DD: push eax
008C43DE: call 00410A84h ; Set (object)
008C43E3: push eax
008C43E4: lea eax, var_3C
008C43E7: push eax
008C43E8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C43ED: add esp, 00000010h
008C43F0: push eax
008C43F1: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008C43F6: mov si, ax
008C43F9: push 00000000h
008C43FB: push 00000005h
008C43FD: push var_24
008C4400: lea eax, var_4C
008C4403: push eax
008C4404: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4409: add esp, 00000010h
008C440C: push eax
008C440D: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C4412: mov edi, eax
008C4414: sub edi, 00000001h
008C4417: jo 008C4694h
008C441D: push 00000000h
008C441F: push 00000012h
008C4421: mov eax, [ebp+08h]
008C4424: mov eax, [eax]
008C4426: push [ebp+08h]
008C4429: call [eax+00000308h]
008C442F: push eax
008C4430: lea eax, var_2C
008C4433: push eax
008C4434: call 00410A84h ; Set (object)
008C4439: push eax
008C443A: lea eax, var_5C
008C443D: push eax
008C443E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4443: add esp, 00000010h
008C4446: push eax
008C4447: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C444C: sub edi, eax
008C444E: neg edi
008C4450: sbb edi, edi
008C4452: inc edi
008C4453: neg edi
008C4455: and si, di
008C4458: mov var_80, si
008C445C: lea eax, var_2C
008C445F: push eax
008C4460: lea eax, var_28
008C4463: push eax
008C4464: push 00000002h
008C4466: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C446B: add esp, 0000000Ch
008C446E: lea eax, var_5C
008C4471: push eax
008C4472: lea eax, var_4C
008C4475: push eax
008C4476: lea eax, var_3C
008C4479: push eax
008C447A: push 00000003h
008C447C: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C4481: add esp, 00000010h
008C4484: movsx eax, word ptr var_80
008C4488: test eax, eax
008C448A: jz 008C452Bh
008C4490: mov var_04, 0000000Eh
008C4497: push 00000000h
008C4499: push 00000013h
008C449B: mov eax, [ebp+08h]
008C449E: mov eax, [eax]
008C44A0: push [ebp+08h]
008C44A3: call [eax+00000308h]
008C44A9: push eax
008C44AA: lea eax, var_28
008C44AD: push eax
008C44AE: call 00410A84h ; Set (object)
008C44B3: push eax
008C44B4: lea eax, var_3C
008C44B7: push eax
008C44B8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C44BD: add esp, 00000010h
008C44C0: push eax
008C44C1: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C44C6: push 00000001h
008C44C8: pop ecx
008C44C9: sub ecx, eax
008C44CB: jo 008C4694h
008C44D1: mov var_64, ecx
008C44D4: mov var_6C, 00000003h
008C44DB: push 00000010h
008C44DD: pop eax
008C44DE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C44E3: lea esi, var_6C
008C44E6: mov edi, esp
008C44E8: movsd 
008C44E9: movsd 
008C44EA: movsd 
008C44EB: movsd 
008C44EC: push 00000013h
008C44EE: mov eax, [ebp+08h]
008C44F1: mov eax, [eax]
008C44F3: push [ebp+08h]
008C44F6: call [eax+00000308h]
008C44FC: push eax
008C44FD: lea eax, var_2C
008C4500: push eax
008C4501: call 00410A84h ; Set (object)
008C4506: push eax
008C4507: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008C450C: lea eax, var_2C
008C450F: push eax
008C4510: lea eax, var_28
008C4513: push eax
008C4514: push 00000002h
008C4516: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C451B: add esp, 0000000Ch
008C451E: lea ecx, var_3C
008C4521: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C4526: jmp 008C45EAh
008C452B: mov var_04, 00000010h
008C4532: and var_64, 00000000h
008C4536: mov var_6C, 00000003h
008C453D: push 00000010h
008C453F: pop eax
008C4540: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C4545: lea esi, var_6C
008C4548: mov edi, esp
008C454A: movsd 
008C454B: movsd 
008C454C: movsd 
008C454D: movsd 
008C454E: push 00000013h
008C4550: mov eax, [ebp+08h]
008C4553: mov eax, [eax]
008C4555: push [ebp+08h]
008C4558: call [eax+00000308h]
008C455E: push eax
008C455F: lea eax, var_28
008C4562: push eax
008C4563: call 00410A84h ; Set (object)
008C4568: push eax
008C4569: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008C456E: lea ecx, var_28
008C4571: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C4576: mov var_04, 00000011h
008C457D: push 00000000h
008C457F: push 00000005h
008C4581: push var_24
008C4584: lea eax, var_3C
008C4587: push eax
008C4588: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C458D: add esp, 00000010h
008C4590: push eax
008C4591: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C4596: sub eax, 00000001h
008C4599: jo 008C4694h
008C459F: mov var_64, eax
008C45A2: mov var_6C, 00000003h
008C45A9: push 00000010h
008C45AB: pop eax
008C45AC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C45B1: lea esi, var_6C
008C45B4: mov edi, esp
008C45B6: movsd 
008C45B7: movsd 
008C45B8: movsd 
008C45B9: movsd 
008C45BA: push 00000012h
008C45BC: mov eax, [ebp+08h]
008C45BF: mov eax, [eax]
008C45C1: push [ebp+08h]
008C45C4: call [eax+00000308h]
008C45CA: push eax
008C45CB: lea eax, var_28
008C45CE: push eax
008C45CF: call 00410A84h ; Set (object)
008C45D4: push eax
008C45D5: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008C45DA: lea ecx, var_28
008C45DD: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C45E2: lea ecx, var_3C
008C45E5: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C45EA: mov var_04, 00000013h
008C45F1: or var_64, FFFFFFFFh
008C45F5: mov var_6C, 0000000Bh
008C45FC: push 00000010h
008C45FE: pop eax
008C45FF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C4604: lea esi, var_6C
008C4607: mov edi, esp
008C4609: movsd 
008C460A: movsd 
008C460B: movsd 
008C460C: movsd 
008C460D: push 00000011h
008C460F: mov eax, [ebp+08h]
008C4612: mov eax, [eax]
008C4614: push [ebp+08h]
008C4617: call [eax+00000308h]
008C461D: push eax
008C461E: lea eax, var_28
008C4621: push eax
008C4622: call 00410A84h ; Set (object)
008C4627: push eax
008C4628: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008C462D: lea ecx, var_28
008C4630: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C4635: mov var_10, 00000000h
008C463C: push 008C4675h
008C4641: jmp 8C466Ch
008C4643: lea eax, var_2C
008C4646: push eax
008C4647: lea eax, var_28
008C464A: push eax
008C464B: push 00000002h
008C464D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C4652: add esp, 0000000Ch
008C4655: lea eax, var_5C
008C4658: push eax
008C4659: lea eax, var_4C
008C465C: push eax
008C465D: lea eax, var_3C
008C4660: push eax
008C4661: push 00000003h
008C4663: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C4668: add esp, 00000010h
008C466B: ret 
End Sub

Private sub cmdStart__8C1D53
008C1D53: push ebp
008C1D54: mov ebp, esp
008C1D56: sub esp, 00000018h
008C1D59: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008C1D5E: mov eax, fs:[00h]
008C1D64: push eax
008C1D65: mov fs:[00000000h], esp
008C1D6C: mov eax, 0000012Ch
008C1D71: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C1D76: push ebx
008C1D77: push esi
008C1D78: push edi
008C1D79: mov var_18, esp
008C1D7C: mov var_14, 0040F320h
008C1D83: mov eax, [ebp+08h]
008C1D86: and eax, 00000001h
008C1D89: mov var_10, eax
008C1D8C: mov eax, [ebp+08h]
008C1D8F: and al, FEh
008C1D91: mov [ebp+08h], eax
008C1D94: mov var_0C, 00000000h
008C1D9B: mov eax, [ebp+08h]
008C1D9E: mov eax, [eax]
008C1DA0: push [ebp+08h]
008C1DA3: call [eax+04h]
008C1DA6: mov var_04, 00000001h
008C1DAD: mov var_04, 00000002h
008C1DB4: push FFFFFFFFh
008C1DB6: call 00410A60h ; On Error ...
008C1DBB: mov var_04, 00000003h
008C1DC2: mov var_7C, 80020004h
008C1DC9: mov var_00000084, 0000000Ah
008C1DD3: mov var_6C, 80020004h
008C1DDA: mov var_74, 0000000Ah
008C1DE1: mov var_5C, 80020004h
008C1DE8: mov var_64, 0000000Ah
008C1DEF: push 0046091Ch ; Activating the botkiller on selected bots will kill any found bot on target PCs.
008C1DF4: push 00441264h ; vbCrLf
008C1DF9: call 00410A18h ; &
008C1DFE: mov edx, eax
008C1E00: lea ecx, var_34
008C1E03: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C1E08: push eax
008C1E09: push 00441264h ; vbCrLf
008C1E0E: call 00410A18h ; &
008C1E13: mov edx, eax
008C1E15: lea ecx, var_38
008C1E18: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C1E1D: push eax
008C1E1E: push 004609C4h ; Do you really want to continue?
008C1E23: call 00410A18h ; &
008C1E28: mov var_4C, eax
008C1E2B: mov var_54, 00000008h
008C1E32: lea eax, var_00000084
008C1E38: push eax
008C1E39: lea eax, var_74
008C1E3C: push eax
008C1E3D: lea eax, var_64
008C1E40: push eax
008C1E41: push 00000034h
008C1E43: lea eax, var_54
008C1E46: push eax
008C1E47: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008C1E4C: sub eax, 00000007h
008C1E4F: neg eax
008C1E51: sbb eax, eax
008C1E53: inc eax
008C1E54: neg eax
008C1E56: mov var_000000C4, ax
008C1E5D: lea eax, var_38
008C1E60: push eax
008C1E61: lea eax, var_34
008C1E64: push eax
008C1E65: push 00000002h
008C1E67: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C1E6C: add esp, 0000000Ch
008C1E6F: lea eax, var_00000084
008C1E75: push eax
008C1E76: lea eax, var_74
008C1E79: push eax
008C1E7A: lea eax, var_64
008C1E7D: push eax
008C1E7E: lea eax, var_54
008C1E81: push eax
008C1E82: push 00000004h
008C1E84: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C1E89: add esp, 00000014h
008C1E8C: movsx eax, word ptr var_000000C4
008C1E93: test eax, eax
008C1E95: jz 8C1E9Ch
008C1E97: jmp 008C28F1h
008C1E9C: mov var_04, 00000006h
008C1EA3: push 00000000h
008C1EA5: push 00000003h
008C1EA7: push 00440E48h
008C1EAC: push 00000000h
008C1EAE: push 00000018h
008C1EB0: mov eax, [ebp+08h]
008C1EB3: mov eax, [eax]
008C1EB5: push [ebp+08h]
008C1EB8: call [eax+00000308h]
008C1EBE: push eax
008C1EBF: lea eax, var_3C
008C1EC2: push eax
008C1EC3: call 00410A84h ; Set (object)
008C1EC8: push eax
008C1EC9: lea eax, var_54
008C1ECC: push eax
008C1ECD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C1ED2: add esp, 00000010h
008C1ED5: push eax
008C1ED6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C1EDB: push eax
008C1EDC: lea eax, var_40
008C1EDF: push eax
008C1EE0: call 00410A84h ; Set (object)
008C1EE5: push eax
008C1EE6: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C1EEB: add esp, 0000000Ch
008C1EEE: lea eax, var_40
008C1EF1: push eax
008C1EF2: lea eax, var_3C
008C1EF5: push eax
008C1EF6: push 00000002h
008C1EF8: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C1EFD: add esp, 0000000Ch
008C1F00: lea ecx, var_54
008C1F03: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C1F08: mov var_04, 00000007h
008C1F0F: cmp word ptr [008F2430h], FFFFh
008C1F17: jnz 008C2372h
008C1F1D: mov var_04, 00000008h
008C1F24: mov var_00000090, 00000001h
008C1F2E: mov var_00000098, 00000002h
008C1F38: cmp [008F2010h], 00000000h
008C1F3F: jnz 8C1F5Ch
008C1F41: push 008F2010h
008C1F46: push 00433984h
008C1F4B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C1F50: mov var_00000130, 008F2010h
008C1F5A: jmp 8C1F66h
008C1F5C: mov var_00000130, 008F2010h
008C1F66: push 00000000h
008C1F68: push 00000001h
008C1F6A: push 00440E48h
008C1F6F: push 00000000h
008C1F71: push 00000018h
008C1F73: mov eax, var_00000130
008C1F79: mov eax, [eax]
008C1F7B: mov ecx, var_00000130
008C1F81: mov ecx, [ecx]
008C1F83: mov ecx, [ecx]
008C1F85: push eax
008C1F86: call [ecx+0000054Ch]
008C1F8C: push eax
008C1F8D: lea eax, var_3C
008C1F90: push eax
008C1F91: call 00410A84h ; Set (object)
008C1F96: push eax
008C1F97: lea eax, var_54
008C1F9A: push eax
008C1F9B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C1FA0: add esp, 00000010h
008C1FA3: push eax
008C1FA4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C1FA9: push eax
008C1FAA: lea eax, var_40
008C1FAD: push eax
008C1FAE: call 00410A84h ; Set (object)
008C1FB3: push eax
008C1FB4: lea eax, var_64
008C1FB7: push eax
008C1FB8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C1FBD: add esp, 00000010h
008C1FC0: push eax
008C1FC1: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C1FC6: mov var_000000A0, eax
008C1FCC: mov var_000000A8, 00000003h
008C1FD6: mov var_000000B0, 00000001h
008C1FE0: mov var_000000B8, 00000002h
008C1FEA: lea eax, var_00000098
008C1FF0: push eax
008C1FF1: lea eax, var_000000A8
008C1FF7: push eax
008C1FF8: lea eax, var_000000B8
008C1FFE: push eax
008C1FFF: lea eax, var_000000F0
008C2005: push eax
008C2006: lea eax, var_000000E0
008C200C: push eax
008C200D: lea eax, var_30
008C2010: push eax
008C2011: call 00410A3Ch ; For
008C2016: mov var_00000128, eax
008C201C: lea eax, var_40
008C201F: push eax
008C2020: lea eax, var_3C
008C2023: push eax
008C2024: push 00000002h
008C2026: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C202B: add esp, 0000000Ch
008C202E: lea eax, var_64
008C2031: push eax
008C2032: lea eax, var_54
008C2035: push eax
008C2036: push 00000002h
008C2038: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C203D: add esp, 0000000Ch
008C2040: jmp 008C2360h
008C2045: mov var_04, 00000009h
008C204C: lea eax, var_30
008C204F: mov var_00000090, eax
008C2055: mov var_00000098, 0000400Ch
008C205F: cmp [008F2010h], 00000000h
008C2066: jnz 8C2083h
008C2068: push 008F2010h
008C206D: push 00433984h
008C2072: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C2077: mov var_00000134, 008F2010h
008C2081: jmp 8C208Dh
008C2083: mov var_00000134, 008F2010h
008C208D: push 00000000h
008C208F: push 00000004h
008C2091: push 00440E58h
008C2096: push 00000010h
008C2098: pop eax
008C2099: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C209E: lea esi, var_00000098
008C20A4: mov edi, esp
008C20A6: movsd 
008C20A7: movsd 
008C20A8: movsd 
008C20A9: movsd 
008C20AA: push 00000001h
008C20AC: push 00000000h
008C20AE: push 00440E48h
008C20B3: push 00000000h
008C20B5: push 00000018h
008C20B7: mov eax, var_00000134
008C20BD: mov eax, [eax]
008C20BF: mov ecx, var_00000134
008C20C5: mov ecx, [ecx]
008C20C7: mov ecx, [ecx]
008C20C9: push eax
008C20CA: call [ecx+0000054Ch]
008C20D0: push eax
008C20D1: lea eax, var_3C
008C20D4: push eax
008C20D5: call 00410A84h ; Set (object)
008C20DA: push eax
008C20DB: lea eax, var_54
008C20DE: push eax
008C20DF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C20E4: add esp, 00000010h
008C20E7: push eax
008C20E8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C20ED: push eax
008C20EE: lea eax, var_40
008C20F1: push eax
008C20F2: call 00410A84h ; Set (object)
008C20F7: push eax
008C20F8: lea eax, var_64
008C20FB: push eax
008C20FC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2101: add esp, 00000020h
008C2104: push eax
008C2105: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C210A: push eax
008C210B: lea eax, var_44
008C210E: push eax
008C210F: call 00410A84h ; Set (object)
008C2114: push eax
008C2115: lea eax, var_74
008C2118: push eax
008C2119: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C211E: add esp, 00000010h
008C2121: push eax
008C2122: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008C2127: sub ax, FFFFh
008C212B: neg ax
008C212E: sbb eax, eax
008C2130: inc eax
008C2131: neg eax
008C2133: mov var_000000C4, ax
008C213A: lea eax, var_44
008C213D: push eax
008C213E: lea eax, var_40
008C2141: push eax
008C2142: lea eax, var_3C
008C2145: push eax
008C2146: push 00000003h
008C2148: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C214D: add esp, 00000010h
008C2150: lea eax, var_74
008C2153: push eax
008C2154: lea eax, var_64
008C2157: push eax
008C2158: lea eax, var_54
008C215B: push eax
008C215C: push 00000003h
008C215E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C2163: add esp, 00000010h
008C2166: movsx eax, word ptr var_000000C4
008C216D: test eax, eax
008C216F: jz 008C233Ch
008C2175: mov var_04, 0000000Ah
008C217C: lea eax, var_30
008C217F: mov var_00000090, eax
008C2185: mov var_00000098, 0000400Ch
008C218F: cmp [008F2010h], 00000000h
008C2196: jnz 8C21B3h
008C2198: push 008F2010h
008C219D: push 00433984h
008C21A2: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C21A7: mov var_00000138, 008F2010h
008C21B1: jmp 8C21BDh
008C21B3: mov var_00000138, 008F2010h
008C21BD: push 00000000h
008C21BF: push 00000014h
008C21C1: push 00440E58h
008C21C6: push 00000010h
008C21C8: pop eax
008C21C9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C21CE: lea esi, var_00000098
008C21D4: mov edi, esp
008C21D6: movsd 
008C21D7: movsd 
008C21D8: movsd 
008C21D9: movsd 
008C21DA: push 00000001h
008C21DC: push 00000000h
008C21DE: push 00440E48h
008C21E3: push 00000000h
008C21E5: push 00000018h
008C21E7: mov eax, var_00000138
008C21ED: mov eax, [eax]
008C21EF: mov ecx, var_00000138
008C21F5: mov ecx, [ecx]
008C21F7: mov ecx, [ecx]
008C21F9: push eax
008C21FA: call [ecx+0000054Ch]
008C2200: push eax
008C2201: lea eax, var_3C
008C2204: push eax
008C2205: call 00410A84h ; Set (object)
008C220A: push eax
008C220B: lea eax, var_54
008C220E: push eax
008C220F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2214: add esp, 00000010h
008C2217: push eax
008C2218: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C221D: push eax
008C221E: lea eax, var_40
008C2221: push eax
008C2222: call 00410A84h ; Set (object)
008C2227: push eax
008C2228: lea eax, var_64
008C222B: push eax
008C222C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2231: add esp, 00000020h
008C2234: push eax
008C2235: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C223A: push eax
008C223B: lea eax, var_44
008C223E: push eax
008C223F: call 00410A84h ; Set (object)
008C2244: push eax
008C2245: lea eax, var_74
008C2248: push eax
008C2249: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C224E: add esp, 00000010h
008C2251: push eax
008C2252: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C2257: mov edx, eax
008C2259: lea ecx, var_34
008C225C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C2261: push eax
008C2262: call 004109DCh ; Val(arg_1)
008C2267: fstp real8 ptr var_000000C0
008C226D: push 00000000h
008C226F: push 00000000h
008C2271: push 00000001h
008C2273: push 00000000h
008C2275: lea eax, var_00000088
008C227B: push eax
008C227C: push 00000010h
008C227E: push 00000880h
008C2283: call 00410946h ; ReDim
008C2288: add esp, 0000001Ch
008C228B: mov var_000000A0, 00442938h
008C2295: mov var_000000A8, 00000008h
008C229F: lea esi, var_000000A8
008C22A5: push 00000000h
008C22A7: push var_00000088
008C22AD: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008C22B2: mov ecx, eax
008C22B4: mov edx, esi
008C22B6: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008C22BB: mov edx, 0043D9F0h ; x118
008C22C0: lea ecx, var_38
008C22C3: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008C22C8: lea eax, var_00000088
008C22CE: push eax
008C22CF: lea eax, var_38
008C22D2: push eax
008C22D3: fld real8 ptr var_000000C0
008C22D9: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008C22DE: push eax
008C22DF: call 007A6910h
008C22E4: lea eax, var_00000088
008C22EA: push eax
008C22EB: push 00000000h
008C22ED: call 00410934h ; Erase
008C22F2: lea eax, var_38
008C22F5: push eax
008C22F6: lea eax, var_34
008C22F9: push eax
008C22FA: push 00000002h
008C22FC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C2301: add esp, 0000000Ch
008C2304: lea eax, var_44
008C2307: push eax
008C2308: lea eax, var_40
008C230B: push eax
008C230C: lea eax, var_3C
008C230F: push eax
008C2310: push 00000003h
008C2312: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C2317: add esp, 00000010h
008C231A: lea eax, var_74
008C231D: push eax
008C231E: lea eax, var_64
008C2321: push eax
008C2322: lea eax, var_54
008C2325: push eax
008C2326: push 00000003h
008C2328: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C232D: add esp, 00000010h
008C2330: mov var_04, 0000000Bh
008C2337: call 0041096Ah ; DoEvents
008C233C: mov var_04, 0000000Dh
008C2343: lea eax, var_000000F0
008C2349: push eax
008C234A: lea eax, var_000000E0
008C2350: push eax
008C2351: lea eax, var_30
008C2354: push eax
008C2355: call 00410A36h ; Next
008C235A: mov var_00000128, eax
008C2360: cmp var_00000128, 00000000h
008C2367: jnz 008C2045h
008C236D: jmp 008C27C2h
008C2372: mov var_04, 0000000Fh
008C2379: mov var_00000090, 00000001h
008C2383: mov var_00000098, 00000002h
008C238D: cmp [008F2010h], 00000000h
008C2394: jnz 8C23B1h
008C2396: push 008F2010h
008C239B: push 00433984h
008C23A0: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C23A5: mov var_0000013C, 008F2010h
008C23AF: jmp 8C23BBh
008C23B1: mov var_0000013C, 008F2010h
008C23BB: push 00000000h
008C23BD: push 00000001h
008C23BF: push 00440E48h
008C23C4: push 00000000h
008C23C6: push 00000018h
008C23C8: mov eax, var_0000013C
008C23CE: mov eax, [eax]
008C23D0: mov ecx, var_0000013C
008C23D6: mov ecx, [ecx]
008C23D8: mov ecx, [ecx]
008C23DA: push eax
008C23DB: call [ecx+00000550h]
008C23E1: push eax
008C23E2: lea eax, var_3C
008C23E5: push eax
008C23E6: call 00410A84h ; Set (object)
008C23EB: push eax
008C23EC: lea eax, var_54
008C23EF: push eax
008C23F0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C23F5: add esp, 00000010h
008C23F8: push eax
008C23F9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C23FE: push eax
008C23FF: lea eax, var_40
008C2402: push eax
008C2403: call 00410A84h ; Set (object)
008C2408: push eax
008C2409: lea eax, var_64
008C240C: push eax
008C240D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2412: add esp, 00000010h
008C2415: push eax
008C2416: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C241B: mov var_000000A0, eax
008C2421: mov var_000000A8, 00000003h
008C242B: mov var_000000B0, 00000001h
008C2435: mov var_000000B8, 00000002h
008C243F: lea eax, var_00000098
008C2445: push eax
008C2446: lea eax, var_000000A8
008C244C: push eax
008C244D: lea eax, var_000000B8
008C2453: push eax
008C2454: lea eax, var_00000110
008C245A: push eax
008C245B: lea eax, var_00000100
008C2461: push eax
008C2462: lea eax, var_30
008C2465: push eax
008C2466: call 00410A3Ch ; For
008C246B: mov var_0000012C, eax
008C2471: lea eax, var_40
008C2474: push eax
008C2475: lea eax, var_3C
008C2478: push eax
008C2479: push 00000002h
008C247B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C2480: add esp, 0000000Ch
008C2483: lea eax, var_64
008C2486: push eax
008C2487: lea eax, var_54
008C248A: push eax
008C248B: push 00000002h
008C248D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C2492: add esp, 0000000Ch
008C2495: jmp 008C27B5h
008C249A: mov var_04, 00000010h
008C24A1: lea eax, var_30
008C24A4: mov var_00000090, eax
008C24AA: mov var_00000098, 0000400Ch
008C24B4: cmp [008F2010h], 00000000h
008C24BB: jnz 8C24D8h
008C24BD: push 008F2010h
008C24C2: push 00433984h
008C24C7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C24CC: mov var_00000140, 008F2010h
008C24D6: jmp 8C24E2h
008C24D8: mov var_00000140, 008F2010h
008C24E2: push 00000000h
008C24E4: push 00000004h
008C24E6: push 00440E58h
008C24EB: push 00000010h
008C24ED: pop eax
008C24EE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C24F3: lea esi, var_00000098
008C24F9: mov edi, esp
008C24FB: movsd 
008C24FC: movsd 
008C24FD: movsd 
008C24FE: movsd 
008C24FF: push 00000001h
008C2501: push 00000000h
008C2503: push 00440E48h
008C2508: push 00000000h
008C250A: push 00000018h
008C250C: mov eax, var_00000140
008C2512: mov eax, [eax]
008C2514: mov ecx, var_00000140
008C251A: mov ecx, [ecx]
008C251C: mov ecx, [ecx]
008C251E: push eax
008C251F: call [ecx+00000550h]
008C2525: push eax
008C2526: lea eax, var_3C
008C2529: push eax
008C252A: call 00410A84h ; Set (object)
008C252F: push eax
008C2530: lea eax, var_54
008C2533: push eax
008C2534: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2539: add esp, 00000010h
008C253C: push eax
008C253D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C2542: push eax
008C2543: lea eax, var_40
008C2546: push eax
008C2547: call 00410A84h ; Set (object)
008C254C: push eax
008C254D: lea eax, var_64
008C2550: push eax
008C2551: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2556: add esp, 00000020h
008C2559: push eax
008C255A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C255F: push eax
008C2560: lea eax, var_44
008C2563: push eax
008C2564: call 00410A84h ; Set (object)
008C2569: push eax
008C256A: lea eax, var_74
008C256D: push eax
008C256E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2573: add esp, 00000010h
008C2576: push eax
008C2577: call 004108C8h ; msvbvm60.dll.__vbaBoolVar
008C257C: sub ax, FFFFh
008C2580: neg ax
008C2583: sbb eax, eax
008C2585: inc eax
008C2586: neg eax
008C2588: mov var_000000C4, ax
008C258F: lea eax, var_44
008C2592: push eax
008C2593: lea eax, var_40
008C2596: push eax
008C2597: lea eax, var_3C
008C259A: push eax
008C259B: push 00000003h
008C259D: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C25A2: add esp, 00000010h
008C25A5: lea eax, var_74
008C25A8: push eax
008C25A9: lea eax, var_64
008C25AC: push eax
008C25AD: lea eax, var_54
008C25B0: push eax
008C25B1: push 00000003h
008C25B3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C25B8: add esp, 00000010h
008C25BB: movsx eax, word ptr var_000000C4
008C25C2: test eax, eax
008C25C4: jz 008C2791h
008C25CA: mov var_04, 00000011h
008C25D1: lea eax, var_30
008C25D4: mov var_00000090, eax
008C25DA: mov var_00000098, 0000400Ch
008C25E4: cmp [008F2010h], 00000000h
008C25EB: jnz 8C2608h
008C25ED: push 008F2010h
008C25F2: push 00433984h
008C25F7: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C25FC: mov var_00000144, 008F2010h
008C2606: jmp 8C2612h
008C2608: mov var_00000144, 008F2010h
008C2612: push 00000000h
008C2614: push 00000014h
008C2616: push 00440E58h
008C261B: push 00000010h
008C261D: pop eax
008C261E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C2623: lea esi, var_00000098
008C2629: mov edi, esp
008C262B: movsd 
008C262C: movsd 
008C262D: movsd 
008C262E: movsd 
008C262F: push 00000001h
008C2631: push 00000000h
008C2633: push 00440E48h
008C2638: push 00000000h
008C263A: push 00000018h
008C263C: mov eax, var_00000144
008C2642: mov eax, [eax]
008C2644: mov ecx, var_00000144
008C264A: mov ecx, [ecx]
008C264C: mov ecx, [ecx]
008C264E: push eax
008C264F: call [ecx+00000550h]
008C2655: push eax
008C2656: lea eax, var_3C
008C2659: push eax
008C265A: call 00410A84h ; Set (object)
008C265F: push eax
008C2660: lea eax, var_54
008C2663: push eax
008C2664: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2669: add esp, 00000010h
008C266C: push eax
008C266D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C2672: push eax
008C2673: lea eax, var_40
008C2676: push eax
008C2677: call 00410A84h ; Set (object)
008C267C: push eax
008C267D: lea eax, var_64
008C2680: push eax
008C2681: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C2686: add esp, 00000020h
008C2689: push eax
008C268A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C268F: push eax
008C2690: lea eax, var_44
008C2693: push eax
008C2694: call 00410A84h ; Set (object)
008C2699: push eax
008C269A: lea eax, var_74
008C269D: push eax
008C269E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C26A3: add esp, 00000010h
008C26A6: push eax
008C26A7: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C26AC: mov edx, eax
008C26AE: lea ecx, var_34
008C26B1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C26B6: push eax
008C26B7: call 004109DCh ; Val(arg_1)
008C26BC: fstp real8 ptr var_000000C0
008C26C2: push 00000000h
008C26C4: push 00000000h
008C26C6: push 00000001h
008C26C8: push 00000000h
008C26CA: lea eax, var_00000088
008C26D0: push eax
008C26D1: push 00000010h
008C26D3: push 00000880h
008C26D8: call 00410946h ; ReDim
008C26DD: add esp, 0000001Ch
008C26E0: mov var_000000A0, 00442938h
008C26EA: mov var_000000A8, 00000008h
008C26F4: lea esi, var_000000A8
008C26FA: push 00000000h
008C26FC: push var_00000088
008C2702: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
008C2707: mov ecx, eax
008C2709: mov edx, esi
008C270B: call 004108F2h ; msvbvm60.dll.__vbaVarCopy
008C2710: mov edx, 0043D9F0h ; x118
008C2715: lea ecx, var_38
008C2718: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008C271D: lea eax, var_00000088
008C2723: push eax
008C2724: lea eax, var_38
008C2727: push eax
008C2728: fld real8 ptr var_000000C0
008C272E: call 004108E6h ; msvbvm60.dll.__vbaFpI2
008C2733: push eax
008C2734: call 007A6910h
008C2739: lea eax, var_00000088
008C273F: push eax
008C2740: push 00000000h
008C2742: call 00410934h ; Erase
008C2747: lea eax, var_38
008C274A: push eax
008C274B: lea eax, var_34
008C274E: push eax
008C274F: push 00000002h
008C2751: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C2756: add esp, 0000000Ch
008C2759: lea eax, var_44
008C275C: push eax
008C275D: lea eax, var_40
008C2760: push eax
008C2761: lea eax, var_3C
008C2764: push eax
008C2765: push 00000003h
008C2767: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C276C: add esp, 00000010h
008C276F: lea eax, var_74
008C2772: push eax
008C2773: lea eax, var_64
008C2776: push eax
008C2777: lea eax, var_54
008C277A: push eax
008C277B: push 00000003h
008C277D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C2782: add esp, 00000010h
008C2785: mov var_04, 00000012h
008C278C: call 0041096Ah ; DoEvents
008C2791: mov var_04, 00000014h
008C2798: lea eax, var_00000110
008C279E: push eax
008C279F: lea eax, var_00000100
008C27A5: push eax
008C27A6: lea eax, var_30
008C27A9: push eax
008C27AA: call 00410A36h ; Next
008C27AF: mov var_0000012C, eax
008C27B5: cmp var_0000012C, 00000000h
008C27BC: jnz 008C249Ah
008C27C2: mov var_04, 00000016h
008C27C9: push 0044A87Ch
008C27CE: push 00000000h
008C27D0: push 00000003h
008C27D2: mov eax, [ebp+08h]
008C27D5: mov eax, [eax]
008C27D7: push [ebp+08h]
008C27DA: call [eax+00000318h]
008C27E0: push eax
008C27E1: lea eax, var_3C
008C27E4: push eax
008C27E5: call 00410A84h ; Set (object)
008C27EA: push eax
008C27EB: lea eax, var_54
008C27EE: push eax
008C27EF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C27F4: add esp, 00000010h
008C27F7: push eax
008C27F8: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C27FD: push eax
008C27FE: lea eax, var_40
008C2801: push eax
008C2802: call 00410A84h ; Set (object)
008C2807: mov var_000000C4, eax
008C280D: mov var_5C, 00000003h
008C2814: mov var_64, 00000002h
008C281B: lea eax, var_44
008C281E: push eax
008C281F: lea eax, var_64
008C2822: push eax
008C2823: mov eax, var_000000C4
008C2829: mov eax, [eax]
008C282B: push var_000000C4
008C2831: call [eax+24h]
008C2834: fclex 
008C2836: mov var_000000C8, eax
008C283C: cmp var_000000C8, 00000000h
008C2843: jnl 8C2865h
008C2845: push 00000024h
008C2847: push 0044A87Ch
008C284C: push var_000000C4
008C2852: push var_000000C8
008C2858: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C285D: mov var_00000148, eax
008C2863: jmp 8C286Ch
008C2865: and var_00000148, 00000000h
008C286C: mov eax, var_44
008C286F: mov var_000000CC, eax
008C2875: push 00460A08h ; Status: Started
008C287A: mov eax, var_000000CC
008C2880: mov eax, [eax]
008C2882: push var_000000CC
008C2888: call [eax+00000080h]
008C288E: fclex 
008C2890: mov var_000000D0, eax
008C2896: cmp var_000000D0, 00000000h
008C289D: jnl 8C28C2h
008C289F: push 00000080h
008C28A4: push 0044A88Ch
008C28A9: push var_000000CC
008C28AF: push var_000000D0
008C28B5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C28BA: mov var_0000014C, eax
008C28C0: jmp 8C28C9h
008C28C2: and var_0000014C, 00000000h
008C28C9: lea eax, var_44
008C28CC: push eax
008C28CD: lea eax, var_40
008C28D0: push eax
008C28D1: lea eax, var_3C
008C28D4: push eax
008C28D5: push 00000003h
008C28D7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C28DC: add esp, 00000010h
008C28DF: lea eax, var_64
008C28E2: push eax
008C28E3: lea eax, var_54
008C28E6: push eax
008C28E7: push 00000002h
008C28E9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C28EE: add esp, 0000000Ch
008C28F1: mov var_10, 00000000h
008C28F8: wait 
008C28F9: push 008C2983h
008C28FE: jmp 8C2954h
008C2900: lea eax, var_38
008C2903: push eax
008C2904: lea eax, var_34
008C2907: push eax
008C2908: push 00000002h
008C290A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C290F: add esp, 0000000Ch
008C2912: lea eax, var_44
008C2915: push eax
008C2916: lea eax, var_40
008C2919: push eax
008C291A: lea eax, var_3C
008C291D: push eax
008C291E: push 00000003h
008C2920: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C2925: add esp, 00000010h
008C2928: lea eax, var_00000084
008C292E: push eax
008C292F: lea eax, var_74
008C2932: push eax
008C2933: lea eax, var_64
008C2936: push eax
008C2937: lea eax, var_54
008C293A: push eax
008C293B: push 00000004h
008C293D: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C2942: add esp, 00000014h
008C2945: lea eax, var_00000088
008C294B: push eax
008C294C: push 00000000h
008C294E: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
008C2953: ret 
End Sub

Private sub mnuBotkiller__8C4825
008C4825: push ebp
008C4826: mov ebp, esp
008C4828: sub esp, 00000018h
008C482B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008C4830: mov eax, fs:[00h]
008C4836: push eax
008C4837: mov fs:[00000000h], esp
008C483E: mov eax, 00000410h
008C4843: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C4848: push ebx
008C4849: push esi
008C484A: push edi
008C484B: mov var_18, esp
008C484E: mov var_14, 0040F508h
008C4855: mov eax, [ebp+08h]
008C4858: and eax, 00000001h
008C485B: mov var_10, eax
008C485E: mov eax, [ebp+08h]
008C4861: and al, FEh
008C4863: mov [ebp+08h], eax
008C4866: mov var_0C, 00000000h
008C486D: mov eax, [ebp+08h]
008C4870: mov eax, [eax]
008C4872: push [ebp+08h]
008C4875: call [eax+04h]
008C4878: mov var_04, 00000001h
008C487F: mov var_04, 00000002h
008C4886: push FFFFFFFFh
008C4888: call 00410A60h ; On Error ...
008C488D: mov var_04, 00000003h
008C4894: mov eax, [ebp+0Ch]
008C4897: mov ax, [eax]
008C489A: mov var_000003E4, ax
008C48A1: movsx eax, word ptr var_000003E4
008C48A8: mov var_0000040C, eax
008C48AE: cmp var_0000040C, 00000000h
008C48B5: jz 8C48DBh
008C48B7: cmp var_0000040C, 00000001h
008C48BE: jz 008C5474h
008C48C4: cmp var_0000040C, 00000003h
008C48CB: jz 008C6040h
008C48D1: jmp 008C60BEh
008C48D6: jmp 008C60BEh
008C48DB: mov var_04, 00000005h
008C48E2: cmp [008F529Ch], 00000000h
008C48E9: jnz 8C4906h
008C48EB: push 008F529Ch
008C48F0: push 00440F2Ch
008C48F5: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C48FA: mov var_00000410, 008F529Ch
008C4904: jmp 8C4910h
008C4906: mov var_00000410, 008F529Ch
008C4910: mov eax, var_00000410
008C4916: mov eax, [eax]
008C4918: mov var_000003D4, eax
008C491E: lea eax, var_00000090
008C4924: push eax
008C4925: mov eax, var_000003D4
008C492B: mov eax, [eax]
008C492D: push var_000003D4
008C4933: call [eax+14h]
008C4936: fclex 
008C4938: mov var_000003D8, eax
008C493E: cmp var_000003D8, 00000000h
008C4945: jnl 8C4967h
008C4947: push 00000014h
008C4949: push 00440F1Ch
008C494E: push var_000003D4
008C4954: push var_000003D8
008C495A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C495F: mov var_00000414, eax
008C4965: jmp 8C496Eh
008C4967: and var_00000414, 00000000h
008C496E: mov eax, var_00000090
008C4974: mov var_000003DC, eax
008C497A: lea eax, var_40
008C497D: push eax
008C497E: mov eax, var_000003DC
008C4984: mov eax, [eax]
008C4986: push var_000003DC
008C498C: call [eax+50h]
008C498F: fclex 
008C4991: mov var_000003E0, eax
008C4997: cmp var_000003E0, 00000000h
008C499E: jnl 8C49C0h
008C49A0: push 00000050h
008C49A2: push 00440F3Ch
008C49A7: push var_000003DC
008C49AD: push var_000003E0
008C49B3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C49B8: mov var_00000418, eax
008C49BE: jmp 8C49C7h
008C49C0: and var_00000418, 00000000h
008C49C7: push 00000000h
008C49C9: push 00000000h
008C49CB: push var_40
008C49CE: push 0044558Ch ; txt
008C49D3: push 00445570h ; Text Files
008C49D8: call 007CCC4Dh
008C49DD: mov edx, eax
008C49DF: lea ecx, var_3C
008C49E2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C49E7: lea ecx, var_40
008C49EA: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008C49EF: lea ecx, var_00000090
008C49F5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C49FA: mov var_04, 00000006h
008C4A01: push var_3C
008C4A04: push 00000000h
008C4A06: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008C4A0B: test eax, eax
008C4A0D: jz 008C546Fh
008C4A13: mov var_04, 00000007h
008C4A1A: push 00000000h
008C4A1C: push 00000001h
008C4A1E: push 00440E48h
008C4A23: push 00000000h
008C4A25: push 00000018h
008C4A27: mov eax, [ebp+08h]
008C4A2A: mov eax, [eax]
008C4A2C: push [ebp+08h]
008C4A2F: call [eax+00000308h]
008C4A35: push eax
008C4A36: lea eax, var_00000090
008C4A3C: push eax
008C4A3D: call 00410A84h ; Set (object)
008C4A42: push eax
008C4A43: lea eax, var_000000F0
008C4A49: push eax
008C4A4A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4A4F: add esp, 00000010h
008C4A52: push eax
008C4A53: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C4A58: push eax
008C4A59: lea eax, var_00000094
008C4A5F: push eax
008C4A60: call 00410A84h ; Set (object)
008C4A65: push eax
008C4A66: lea eax, var_00000100
008C4A6C: push eax
008C4A6D: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4A72: add esp, 00000010h
008C4A75: push eax
008C4A76: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C4A7B: mov var_000003EC, eax
008C4A81: mov var_000003E8, 00000001h
008C4A8B: mov var_24, 00000001h
008C4A92: lea eax, var_00000094
008C4A98: push eax
008C4A99: lea eax, var_00000090
008C4A9F: push eax
008C4AA0: push 00000002h
008C4AA2: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C4AA7: add esp, 0000000Ch
008C4AAA: lea eax, var_00000100
008C4AB0: push eax
008C4AB1: lea eax, var_000000F0
008C4AB7: push eax
008C4AB8: push 00000002h
008C4ABA: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C4ABF: add esp, 0000000Ch
008C4AC2: jmp 8C4AD6h
008C4AC4: mov eax, var_24
008C4AC7: add eax, var_000003E8
008C4ACD: jo 008C62A5h
008C4AD3: mov var_24, eax
008C4AD6: mov eax, var_24
008C4AD9: cmp eax, var_000003EC
008C4ADF: jnle 008C53CCh
008C4AE5: mov var_04, 00000008h
008C4AEC: mov eax, var_24
008C4AEF: mov var_00000238, eax
008C4AF5: mov var_00000240, 00000003h
008C4AFF: mov var_00000278, 00000001h
008C4B09: mov var_00000280, 00000003h
008C4B13: mov eax, var_24
008C4B16: mov var_00000258, eax
008C4B1C: mov var_00000260, 00000003h
008C4B26: mov var_000002B8, 00000002h
008C4B30: mov var_000002C0, 00000003h
008C4B3A: mov eax, var_24
008C4B3D: mov var_00000298, eax
008C4B43: mov var_000002A0, 00000003h
008C4B4D: mov var_000002F8, 00000003h
008C4B57: mov var_00000300, 00000003h
008C4B61: mov eax, var_24
008C4B64: mov var_000002D8, eax
008C4B6A: mov var_000002E0, 00000003h
008C4B74: mov var_00000338, 00000004h
008C4B7E: mov var_00000340, 00000003h
008C4B88: mov eax, var_24
008C4B8B: mov var_00000318, eax
008C4B91: mov var_00000320, 00000003h
008C4B9B: mov var_00000378, 00000005h
008C4BA5: mov var_00000380, 00000003h
008C4BAF: mov eax, var_24
008C4BB2: mov var_00000358, eax
008C4BB8: mov var_00000360, 00000003h
008C4BC2: mov var_000003B8, 00000006h
008C4BCC: mov var_000003C0, 00000003h
008C4BD6: mov eax, var_24
008C4BD9: mov var_00000398, eax
008C4BDF: mov var_000003A0, 00000003h
008C4BE9: push var_38
008C4BEC: push 00000000h
008C4BEE: push 00000000h
008C4BF0: push 00440E58h
008C4BF5: push 00000010h
008C4BF7: pop eax
008C4BF8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C4BFD: lea esi, var_00000240
008C4C03: mov edi, esp
008C4C05: movsd 
008C4C06: movsd 
008C4C07: movsd 
008C4C08: movsd 
008C4C09: push 00000001h
008C4C0B: push 00000000h
008C4C0D: push 00440E48h
008C4C12: push 00000000h
008C4C14: push 00000018h
008C4C16: mov eax, [ebp+08h]
008C4C19: mov eax, [eax]
008C4C1B: push [ebp+08h]
008C4C1E: call [eax+00000308h]
008C4C24: push eax
008C4C25: lea eax, var_00000090
008C4C2B: push eax
008C4C2C: call 00410A84h ; Set (object)
008C4C31: push eax
008C4C32: lea eax, var_000000F0
008C4C38: push eax
008C4C39: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4C3E: add esp, 00000010h
008C4C41: push eax
008C4C42: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C4C47: push eax
008C4C48: lea eax, var_00000094
008C4C4E: push eax
008C4C4F: call 00410A84h ; Set (object)
008C4C54: push eax
008C4C55: lea eax, var_00000100
008C4C5B: push eax
008C4C5C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4C61: add esp, 00000020h
008C4C64: push eax
008C4C65: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C4C6A: push eax
008C4C6B: lea eax, var_00000098
008C4C71: push eax
008C4C72: call 00410A84h ; Set (object)
008C4C77: push eax
008C4C78: lea eax, var_00000110
008C4C7E: push eax
008C4C7F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4C84: add esp, 00000010h
008C4C87: push eax
008C4C88: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C4C8D: mov edx, eax
008C4C8F: lea ecx, var_40
008C4C92: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C4C97: push eax
008C4C98: call 00410A18h ; &
008C4C9D: mov edx, eax
008C4C9F: lea ecx, var_44
008C4CA2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C4CA7: push eax
008C4CA8: push 00445568h
008C4CAD: call 00410A18h ; &
008C4CB2: mov edx, eax
008C4CB4: lea ecx, var_48
008C4CB7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C4CBC: push eax
008C4CBD: push 00000010h
008C4CBF: pop eax
008C4CC0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C4CC5: lea esi, var_00000280
008C4CCB: mov edi, esp
008C4CCD: movsd 
008C4CCE: movsd 
008C4CCF: movsd 
008C4CD0: movsd 
008C4CD1: push 00000001h
008C4CD3: push 00000010h
008C4CD5: push 00440E58h
008C4CDA: push 00000010h
008C4CDC: pop eax
008C4CDD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C4CE2: lea esi, var_00000260
008C4CE8: mov edi, esp
008C4CEA: movsd 
008C4CEB: movsd 
008C4CEC: movsd 
008C4CED: movsd 
008C4CEE: push 00000001h
008C4CF0: push 00000000h
008C4CF2: push 00440E48h
008C4CF7: push 00000000h
008C4CF9: push 00000018h
008C4CFB: mov eax, [ebp+08h]
008C4CFE: mov eax, [eax]
008C4D00: push [ebp+08h]
008C4D03: call [eax+00000308h]
008C4D09: push eax
008C4D0A: lea eax, var_0000009C
008C4D10: push eax
008C4D11: call 00410A84h ; Set (object)
008C4D16: push eax
008C4D17: lea eax, var_00000120
008C4D1D: push eax
008C4D1E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4D23: add esp, 00000010h
008C4D26: push eax
008C4D27: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C4D2C: push eax
008C4D2D: lea eax, var_000000A0
008C4D33: push eax
008C4D34: call 00410A84h ; Set (object)
008C4D39: push eax
008C4D3A: lea eax, var_00000130
008C4D40: push eax
008C4D41: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4D46: add esp, 00000020h
008C4D49: push eax
008C4D4A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C4D4F: push eax
008C4D50: lea eax, var_000000A4
008C4D56: push eax
008C4D57: call 00410A84h ; Set (object)
008C4D5C: push eax
008C4D5D: lea eax, var_00000140
008C4D63: push eax
008C4D64: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4D69: add esp, 00000020h
008C4D6C: push eax
008C4D6D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C4D72: mov edx, eax
008C4D74: lea ecx, var_4C
008C4D77: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C4D7C: push eax
008C4D7D: call 00410A18h ; &
008C4D82: mov edx, eax
008C4D84: lea ecx, var_50
008C4D87: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C4D8C: push eax
008C4D8D: push 00445568h
008C4D92: call 00410A18h ; &
008C4D97: mov edx, eax
008C4D99: lea ecx, var_54
008C4D9C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C4DA1: push eax
008C4DA2: push 00000010h
008C4DA4: pop eax
008C4DA5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C4DAA: lea esi, var_000002C0
008C4DB0: mov edi, esp
008C4DB2: movsd 
008C4DB3: movsd 
008C4DB4: movsd 
008C4DB5: movsd 
008C4DB6: push 00000001h
008C4DB8: push 00000010h
008C4DBA: push 00440E58h
008C4DBF: push 00000010h
008C4DC1: pop eax
008C4DC2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C4DC7: lea esi, var_000002A0
008C4DCD: mov edi, esp
008C4DCF: movsd 
008C4DD0: movsd 
008C4DD1: movsd 
008C4DD2: movsd 
008C4DD3: push 00000001h
008C4DD5: push 00000000h
008C4DD7: push 00440E48h
008C4DDC: push 00000000h
008C4DDE: push 00000018h
008C4DE0: mov eax, [ebp+08h]
008C4DE3: mov eax, [eax]
008C4DE5: push [ebp+08h]
008C4DE8: call [eax+00000308h]
008C4DEE: push eax
008C4DEF: lea eax, var_000000A8
008C4DF5: push eax
008C4DF6: call 00410A84h ; Set (object)
008C4DFB: push eax
008C4DFC: lea eax, var_00000150
008C4E02: push eax
008C4E03: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4E08: add esp, 00000010h
008C4E0B: push eax
008C4E0C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C4E11: push eax
008C4E12: lea eax, var_000000AC
008C4E18: push eax
008C4E19: call 00410A84h ; Set (object)
008C4E1E: push eax
008C4E1F: lea eax, var_00000160
008C4E25: push eax
008C4E26: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4E2B: add esp, 00000020h
008C4E2E: push eax
008C4E2F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C4E34: push eax
008C4E35: lea eax, var_000000B0
008C4E3B: push eax
008C4E3C: call 00410A84h ; Set (object)
008C4E41: push eax
008C4E42: lea eax, var_00000170
008C4E48: push eax
008C4E49: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4E4E: add esp, 00000020h
008C4E51: push eax
008C4E52: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C4E57: mov edx, eax
008C4E59: lea ecx, var_58
008C4E5C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C4E61: push eax
008C4E62: call 00410A18h ; &
008C4E67: mov edx, eax
008C4E69: lea ecx, var_5C
008C4E6C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C4E71: push eax
008C4E72: push 00445568h
008C4E77: call 00410A18h ; &
008C4E7C: mov edx, eax
008C4E7E: lea ecx, var_60
008C4E81: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C4E86: push eax
008C4E87: push 00000010h
008C4E89: pop eax
008C4E8A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C4E8F: lea esi, var_00000300
008C4E95: mov edi, esp
008C4E97: movsd 
008C4E98: movsd 
008C4E99: movsd 
008C4E9A: movsd 
008C4E9B: push 00000001h
008C4E9D: push 00000010h
008C4E9F: push 00440E58h
008C4EA4: push 00000010h
008C4EA6: pop eax
008C4EA7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C4EAC: lea esi, var_000002E0
008C4EB2: mov edi, esp
008C4EB4: movsd 
008C4EB5: movsd 
008C4EB6: movsd 
008C4EB7: movsd 
008C4EB8: push 00000001h
008C4EBA: push 00000000h
008C4EBC: push 00440E48h
008C4EC1: push 00000000h
008C4EC3: push 00000018h
008C4EC5: mov eax, [ebp+08h]
008C4EC8: mov eax, [eax]
008C4ECA: push [ebp+08h]
008C4ECD: call [eax+00000308h]
008C4ED3: push eax
008C4ED4: lea eax, var_000000B4
008C4EDA: push eax
008C4EDB: call 00410A84h ; Set (object)
008C4EE0: push eax
008C4EE1: lea eax, var_00000180
008C4EE7: push eax
008C4EE8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4EED: add esp, 00000010h
008C4EF0: push eax
008C4EF1: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C4EF6: push eax
008C4EF7: lea eax, var_000000B8
008C4EFD: push eax
008C4EFE: call 00410A84h ; Set (object)
008C4F03: push eax
008C4F04: lea eax, var_00000190
008C4F0A: push eax
008C4F0B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4F10: add esp, 00000020h
008C4F13: push eax
008C4F14: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C4F19: push eax
008C4F1A: lea eax, var_000000BC
008C4F20: push eax
008C4F21: call 00410A84h ; Set (object)
008C4F26: push eax
008C4F27: lea eax, var_000001A0
008C4F2D: push eax
008C4F2E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4F33: add esp, 00000020h
008C4F36: push eax
008C4F37: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C4F3C: mov edx, eax
008C4F3E: lea ecx, var_64
008C4F41: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C4F46: push eax
008C4F47: call 00410A18h ; &
008C4F4C: mov edx, eax
008C4F4E: lea ecx, var_68
008C4F51: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C4F56: push eax
008C4F57: push 00445568h
008C4F5C: call 00410A18h ; &
008C4F61: mov edx, eax
008C4F63: lea ecx, var_6C
008C4F66: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C4F6B: push eax
008C4F6C: push 00000010h
008C4F6E: pop eax
008C4F6F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C4F74: lea esi, var_00000340
008C4F7A: mov edi, esp
008C4F7C: movsd 
008C4F7D: movsd 
008C4F7E: movsd 
008C4F7F: movsd 
008C4F80: push 00000001h
008C4F82: push 00000010h
008C4F84: push 00440E58h
008C4F89: push 00000010h
008C4F8B: pop eax
008C4F8C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C4F91: lea esi, var_00000320
008C4F97: mov edi, esp
008C4F99: movsd 
008C4F9A: movsd 
008C4F9B: movsd 
008C4F9C: movsd 
008C4F9D: push 00000001h
008C4F9F: push 00000000h
008C4FA1: push 00440E48h
008C4FA6: push 00000000h
008C4FA8: push 00000018h
008C4FAA: mov eax, [ebp+08h]
008C4FAD: mov eax, [eax]
008C4FAF: push [ebp+08h]
008C4FB2: call [eax+00000308h]
008C4FB8: push eax
008C4FB9: lea eax, var_000000C0
008C4FBF: push eax
008C4FC0: call 00410A84h ; Set (object)
008C4FC5: push eax
008C4FC6: lea eax, var_000001B0
008C4FCC: push eax
008C4FCD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4FD2: add esp, 00000010h
008C4FD5: push eax
008C4FD6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C4FDB: push eax
008C4FDC: lea eax, var_000000C4
008C4FE2: push eax
008C4FE3: call 00410A84h ; Set (object)
008C4FE8: push eax
008C4FE9: lea eax, var_000001C0
008C4FEF: push eax
008C4FF0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4FF5: add esp, 00000020h
008C4FF8: push eax
008C4FF9: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C4FFE: push eax
008C4FFF: lea eax, var_000000C8
008C5005: push eax
008C5006: call 00410A84h ; Set (object)
008C500B: push eax
008C500C: lea eax, var_000001D0
008C5012: push eax
008C5013: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C5018: add esp, 00000020h
008C501B: push eax
008C501C: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C5021: mov edx, eax
008C5023: lea ecx, var_70
008C5026: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C502B: push eax
008C502C: call 00410A18h ; &
008C5031: mov edx, eax
008C5033: lea ecx, var_74
008C5036: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C503B: push eax
008C503C: push 00445568h
008C5041: call 00410A18h ; &
008C5046: mov edx, eax
008C5048: lea ecx, var_78
008C504B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C5050: push eax
008C5051: push 00000010h
008C5053: pop eax
008C5054: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C5059: lea esi, var_00000380
008C505F: mov edi, esp
008C5061: movsd 
008C5062: movsd 
008C5063: movsd 
008C5064: movsd 
008C5065: push 00000001h
008C5067: push 00000010h
008C5069: push 00440E58h
008C506E: push 00000010h
008C5070: pop eax
008C5071: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C5076: lea esi, var_00000360
008C507C: mov edi, esp
008C507E: movsd 
008C507F: movsd 
008C5080: movsd 
008C5081: movsd 
008C5082: push 00000001h
008C5084: push 00000000h
008C5086: push 00440E48h
008C508B: push 00000000h
008C508D: push 00000018h
008C508F: mov eax, [ebp+08h]
008C5092: mov eax, [eax]
008C5094: push [ebp+08h]
008C5097: call [eax+00000308h]
008C509D: push eax
008C509E: lea eax, var_000000CC
008C50A4: push eax
008C50A5: call 00410A84h ; Set (object)
008C50AA: push eax
008C50AB: lea eax, var_000001E0
008C50B1: push eax
008C50B2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C50B7: add esp, 00000010h
008C50BA: push eax
008C50BB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C50C0: push eax
008C50C1: lea eax, var_000000D0
008C50C7: push eax
008C50C8: call 00410A84h ; Set (object)
008C50CD: push eax
008C50CE: lea eax, var_000001F0
008C50D4: push eax
008C50D5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C50DA: add esp, 00000020h
008C50DD: push eax
008C50DE: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C50E3: push eax
008C50E4: lea eax, var_000000D4
008C50EA: push eax
008C50EB: call 00410A84h ; Set (object)
008C50F0: push eax
008C50F1: lea eax, var_00000200
008C50F7: push eax
008C50F8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C50FD: add esp, 00000020h
008C5100: push eax
008C5101: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C5106: mov edx, eax
008C5108: lea ecx, var_7C
008C510B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C5110: push eax
008C5111: call 00410A18h ; &
008C5116: mov edx, eax
008C5118: lea ecx, var_80
008C511B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C5120: push eax
008C5121: push 00445568h
008C5126: call 00410A18h ; &
008C512B: mov edx, eax
008C512D: lea ecx, var_00000084
008C5133: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C5138: push eax
008C5139: push 00000010h
008C513B: pop eax
008C513C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C5141: lea esi, var_000003C0
008C5147: mov edi, esp
008C5149: movsd 
008C514A: movsd 
008C514B: movsd 
008C514C: movsd 
008C514D: push 00000001h
008C514F: push 00000010h
008C5151: push 00440E58h
008C5156: push 00000010h
008C5158: pop eax
008C5159: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C515E: lea esi, var_000003A0
008C5164: mov edi, esp
008C5166: movsd 
008C5167: movsd 
008C5168: movsd 
008C5169: movsd 
008C516A: push 00000001h
008C516C: push 00000000h
008C516E: push 00440E48h
008C5173: push 00000000h
008C5175: push 00000018h
008C5177: mov eax, [ebp+08h]
008C517A: mov eax, [eax]
008C517C: push [ebp+08h]
008C517F: call [eax+00000308h]
008C5185: push eax
008C5186: lea eax, var_000000D8
008C518C: push eax
008C518D: call 00410A84h ; Set (object)
008C5192: push eax
008C5193: lea eax, var_00000210
008C5199: push eax
008C519A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C519F: add esp, 00000010h
008C51A2: push eax
008C51A3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C51A8: push eax
008C51A9: lea eax, var_000000DC
008C51AF: push eax
008C51B0: call 00410A84h ; Set (object)
008C51B5: push eax
008C51B6: lea eax, var_00000220
008C51BC: push eax
008C51BD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C51C2: add esp, 00000020h
008C51C5: push eax
008C51C6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C51CB: push eax
008C51CC: lea eax, var_000000E0
008C51D2: push eax
008C51D3: call 00410A84h ; Set (object)
008C51D8: push eax
008C51D9: lea eax, var_00000230
008C51DF: push eax
008C51E0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C51E5: add esp, 00000020h
008C51E8: push eax
008C51E9: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C51EE: mov edx, eax
008C51F0: lea ecx, var_00000088
008C51F6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C51FB: push eax
008C51FC: call 00410A18h ; &
008C5201: mov edx, eax
008C5203: lea ecx, var_0000008C
008C5209: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C520E: push eax
008C520F: push 00441264h ; vbCrLf
008C5214: call 00410A18h ; &
008C5219: mov edx, eax
008C521B: lea ecx, var_38
008C521E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C5223: lea eax, var_0000008C
008C5229: push eax
008C522A: lea eax, var_00000088
008C5230: push eax
008C5231: lea eax, var_00000084
008C5237: push eax
008C5238: lea eax, var_80
008C523B: push eax
008C523C: lea eax, var_7C
008C523F: push eax
008C5240: lea eax, var_78
008C5243: push eax
008C5244: lea eax, var_74
008C5247: push eax
008C5248: lea eax, var_70
008C524B: push eax
008C524C: lea eax, var_6C
008C524F: push eax
008C5250: lea eax, var_68
008C5253: push eax
008C5254: lea eax, var_64
008C5257: push eax
008C5258: lea eax, var_60
008C525B: push eax
008C525C: lea eax, var_5C
008C525F: push eax
008C5260: lea eax, var_58
008C5263: push eax
008C5264: lea eax, var_54
008C5267: push eax
008C5268: lea eax, var_50
008C526B: push eax
008C526C: lea eax, var_4C
008C526F: push eax
008C5270: lea eax, var_48
008C5273: push eax
008C5274: lea eax, var_44
008C5277: push eax
008C5278: lea eax, var_40
008C527B: push eax
008C527C: push 00000014h
008C527E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C5283: add esp, 00000054h
008C5286: lea eax, var_000000E0
008C528C: push eax
008C528D: lea eax, var_000000DC
008C5293: push eax
008C5294: lea eax, var_000000D8
008C529A: push eax
008C529B: lea eax, var_000000D4
008C52A1: push eax
008C52A2: lea eax, var_000000D0
008C52A8: push eax
008C52A9: lea eax, var_000000CC
008C52AF: push eax
008C52B0: lea eax, var_000000C8
008C52B6: push eax
008C52B7: lea eax, var_000000C4
008C52BD: push eax
008C52BE: lea eax, var_000000C0
008C52C4: push eax
008C52C5: lea eax, var_000000BC
008C52CB: push eax
008C52CC: lea eax, var_000000B8
008C52D2: push eax
008C52D3: lea eax, var_000000B4
008C52D9: push eax
008C52DA: lea eax, var_000000B0
008C52E0: push eax
008C52E1: lea eax, var_000000AC
008C52E7: push eax
008C52E8: lea eax, var_000000A8
008C52EE: push eax
008C52EF: lea eax, var_000000A4
008C52F5: push eax
008C52F6: lea eax, var_000000A0
008C52FC: push eax
008C52FD: lea eax, var_0000009C
008C5303: push eax
008C5304: lea eax, var_00000098
008C530A: push eax
008C530B: lea eax, var_00000094
008C5311: push eax
008C5312: lea eax, var_00000090
008C5318: push eax
008C5319: push 00000015h
008C531B: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C5320: add esp, 00000058h
008C5323: lea eax, var_00000230
008C5329: push eax
008C532A: lea eax, var_00000220
008C5330: push eax
008C5331: lea eax, var_00000210
008C5337: push eax
008C5338: lea eax, var_00000200
008C533E: push eax
008C533F: lea eax, var_000001F0
008C5345: push eax
008C5346: lea eax, var_000001E0
008C534C: push eax
008C534D: lea eax, var_000001D0
008C5353: push eax
008C5354: lea eax, var_000001C0
008C535A: push eax
008C535B: lea eax, var_000001B0
008C5361: push eax
008C5362: lea eax, var_000001A0
008C5368: push eax
008C5369: lea eax, var_00000190
008C536F: push eax
008C5370: lea eax, var_00000180
008C5376: push eax
008C5377: lea eax, var_00000170
008C537D: push eax
008C537E: lea eax, var_00000160
008C5384: push eax
008C5385: lea eax, var_00000150
008C538B: push eax
008C538C: lea eax, var_00000140
008C5392: push eax
008C5393: lea eax, var_00000130
008C5399: push eax
008C539A: lea eax, var_00000120
008C53A0: push eax
008C53A1: lea eax, var_00000110
008C53A7: push eax
008C53A8: lea eax, var_00000100
008C53AE: push eax
008C53AF: lea eax, var_000000F0
008C53B5: push eax
008C53B6: push 00000015h
008C53B8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C53BD: add esp, 00000058h
008C53C0: mov var_04, 00000009h
008C53C7: jmp 008C4AC4h
008C53CC: mov var_04, 0000000Ah
008C53D3: mov var_000000E8, 80020004h
008C53DD: mov var_000000F0, 0000000Ah
008C53E7: lea eax, var_000000F0
008C53ED: push eax
008C53EE: call 004108C2h ; FreeFile
008C53F3: mov var_00000248, ax
008C53FA: mov var_00000250, 00000002h
008C5404: lea edx, var_00000250
008C540A: lea ecx, var_34
008C540D: call 00410922h ; msvbvm60.dll.__vbaVarMove
008C5412: lea ecx, var_000000F0
008C5418: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C541D: mov var_04, 0000000Bh
008C5424: push var_3C
008C5427: lea eax, var_34
008C542A: push eax
008C542B: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008C5430: push eax
008C5431: push FFFFFFFFh
008C5433: push 00000220h
008C5438: call 004108B6h ; Open #
008C543D: mov var_04, 0000000Ch
008C5444: lea eax, var_34
008C5447: push eax
008C5448: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008C544D: push eax
008C544E: lea eax, var_38
008C5451: push eax
008C5452: push 00000000h
008C5454: call 0041089Eh ; Put #
008C5459: mov var_04, 0000000Dh
008C5460: lea eax, var_34
008C5463: push eax
008C5464: call 004109D0h ; msvbvm60.dll.__vbaI2Var
008C5469: push eax
008C546A: call 00410898h ; Close #arg_1
008C546F: jmp 008C60BEh
008C5474: mov var_04, 00000010h
008C547B: push 00000000h
008C547D: push 00000001h
008C547F: push 00440E48h
008C5484: push 00000000h
008C5486: push 00000018h
008C5488: mov eax, [ebp+08h]
008C548B: mov eax, [eax]
008C548D: push [ebp+08h]
008C5490: call [eax+00000308h]
008C5496: push eax
008C5497: lea eax, var_00000090
008C549D: push eax
008C549E: call 00410A84h ; Set (object)
008C54A3: push eax
008C54A4: lea eax, var_000000F0
008C54AA: push eax
008C54AB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C54B0: add esp, 00000010h
008C54B3: push eax
008C54B4: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C54B9: push eax
008C54BA: lea eax, var_00000094
008C54C0: push eax
008C54C1: call 00410A84h ; Set (object)
008C54C6: push eax
008C54C7: lea eax, var_00000100
008C54CD: push eax
008C54CE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C54D3: add esp, 00000010h
008C54D6: push eax
008C54D7: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008C54DC: mov var_000003F4, eax
008C54E2: mov var_000003F0, 00000001h
008C54EC: mov var_24, 00000001h
008C54F3: lea eax, var_00000094
008C54F9: push eax
008C54FA: lea eax, var_00000090
008C5500: push eax
008C5501: push 00000002h
008C5503: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C5508: add esp, 0000000Ch
008C550B: lea eax, var_00000100
008C5511: push eax
008C5512: lea eax, var_000000F0
008C5518: push eax
008C5519: push 00000002h
008C551B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C5520: add esp, 0000000Ch
008C5523: jmp 8C5537h
008C5525: mov eax, var_24
008C5528: add eax, var_000003F0
008C552E: jo 008C62A5h
008C5534: mov var_24, eax
008C5537: mov eax, var_24
008C553A: cmp eax, var_000003F4
008C5540: jnle 008C5E2Dh
008C5546: mov var_04, 00000011h
008C554D: mov eax, var_24
008C5550: mov var_00000238, eax
008C5556: mov var_00000240, 00000003h
008C5560: mov var_00000278, 00000001h
008C556A: mov var_00000280, 00000003h
008C5574: mov eax, var_24
008C5577: mov var_00000258, eax
008C557D: mov var_00000260, 00000003h
008C5587: mov var_000002B8, 00000002h
008C5591: mov var_000002C0, 00000003h
008C559B: mov eax, var_24
008C559E: mov var_00000298, eax
008C55A4: mov var_000002A0, 00000003h
008C55AE: mov var_000002F8, 00000003h
008C55B8: mov var_00000300, 00000003h
008C55C2: mov eax, var_24
008C55C5: mov var_000002D8, eax
008C55CB: mov var_000002E0, 00000003h
008C55D5: mov var_00000338, 00000004h
008C55DF: mov var_00000340, 00000003h
008C55E9: mov eax, var_24
008C55EC: mov var_00000318, eax
008C55F2: mov var_00000320, 00000003h
008C55FC: mov var_00000378, 00000005h
008C5606: mov var_00000380, 00000003h
008C5610: mov eax, var_24
008C5613: mov var_00000358, eax
008C5619: mov var_00000360, 00000003h
008C5623: mov var_000003B8, 00000006h
008C562D: mov var_000003C0, 00000003h
008C5637: mov eax, var_24
008C563A: mov var_00000398, eax
008C5640: mov var_000003A0, 00000003h
008C564A: push var_38
008C564D: push 00000000h
008C564F: push 00000000h
008C5651: push 00440E58h
008C5656: push 00000010h
008C5658: pop eax
008C5659: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C565E: lea esi, var_00000240
008C5664: mov edi, esp
008C5666: movsd 
008C5667: movsd 
008C5668: movsd 
008C5669: movsd 
008C566A: push 00000001h
008C566C: push 00000000h
008C566E: push 00440E48h
008C5673: push 00000000h
008C5675: push 00000018h
008C5677: mov eax, [ebp+08h]
008C567A: mov eax, [eax]
008C567C: push [ebp+08h]
008C567F: call [eax+00000308h]
008C5685: push eax
008C5686: lea eax, var_00000090
008C568C: push eax
008C568D: call 00410A84h ; Set (object)
008C5692: push eax
008C5693: lea eax, var_000000F0
008C5699: push eax
008C569A: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C569F: add esp, 00000010h
008C56A2: push eax
008C56A3: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C56A8: push eax
008C56A9: lea eax, var_00000094
008C56AF: push eax
008C56B0: call 00410A84h ; Set (object)
008C56B5: push eax
008C56B6: lea eax, var_00000100
008C56BC: push eax
008C56BD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C56C2: add esp, 00000020h
008C56C5: push eax
008C56C6: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C56CB: push eax
008C56CC: lea eax, var_00000098
008C56D2: push eax
008C56D3: call 00410A84h ; Set (object)
008C56D8: push eax
008C56D9: lea eax, var_00000110
008C56DF: push eax
008C56E0: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C56E5: add esp, 00000010h
008C56E8: push eax
008C56E9: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C56EE: mov edx, eax
008C56F0: lea ecx, var_40
008C56F3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C56F8: push eax
008C56F9: call 00410A18h ; &
008C56FE: mov edx, eax
008C5700: lea ecx, var_44
008C5703: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C5708: push eax
008C5709: push 00445568h
008C570E: call 00410A18h ; &
008C5713: mov edx, eax
008C5715: lea ecx, var_48
008C5718: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C571D: push eax
008C571E: push 00000010h
008C5720: pop eax
008C5721: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C5726: lea esi, var_00000280
008C572C: mov edi, esp
008C572E: movsd 
008C572F: movsd 
008C5730: movsd 
008C5731: movsd 
008C5732: push 00000001h
008C5734: push 00000010h
008C5736: push 00440E58h
008C573B: push 00000010h
008C573D: pop eax
008C573E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C5743: lea esi, var_00000260
008C5749: mov edi, esp
008C574B: movsd 
008C574C: movsd 
008C574D: movsd 
008C574E: movsd 
008C574F: push 00000001h
008C5751: push 00000000h
008C5753: push 00440E48h
008C5758: push 00000000h
008C575A: push 00000018h
008C575C: mov eax, [ebp+08h]
008C575F: mov eax, [eax]
008C5761: push [ebp+08h]
008C5764: call [eax+00000308h]
008C576A: push eax
008C576B: lea eax, var_0000009C
008C5771: push eax
008C5772: call 00410A84h ; Set (object)
008C5777: push eax
008C5778: lea eax, var_00000120
008C577E: push eax
008C577F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C5784: add esp, 00000010h
008C5787: push eax
008C5788: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C578D: push eax
008C578E: lea eax, var_000000A0
008C5794: push eax
008C5795: call 00410A84h ; Set (object)
008C579A: push eax
008C579B: lea eax, var_00000130
008C57A1: push eax
008C57A2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C57A7: add esp, 00000020h
008C57AA: push eax
008C57AB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C57B0: push eax
008C57B1: lea eax, var_000000A4
008C57B7: push eax
008C57B8: call 00410A84h ; Set (object)
008C57BD: push eax
008C57BE: lea eax, var_00000140
008C57C4: push eax
008C57C5: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C57CA: add esp, 00000020h
008C57CD: push eax
008C57CE: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C57D3: mov edx, eax
008C57D5: lea ecx, var_4C
008C57D8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C57DD: push eax
008C57DE: call 00410A18h ; &
008C57E3: mov edx, eax
008C57E5: lea ecx, var_50
008C57E8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C57ED: push eax
008C57EE: push 00445568h
008C57F3: call 00410A18h ; &
008C57F8: mov edx, eax
008C57FA: lea ecx, var_54
008C57FD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C5802: push eax
008C5803: push 00000010h
008C5805: pop eax
008C5806: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C580B: lea esi, var_000002C0
008C5811: mov edi, esp
008C5813: movsd 
008C5814: movsd 
008C5815: movsd 
008C5816: movsd 
008C5817: push 00000001h
008C5819: push 00000010h
008C581B: push 00440E58h
008C5820: push 00000010h
008C5822: pop eax
008C5823: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C5828: lea esi, var_000002A0
008C582E: mov edi, esp
008C5830: movsd 
008C5831: movsd 
008C5832: movsd 
008C5833: movsd 
008C5834: push 00000001h
008C5836: push 00000000h
008C5838: push 00440E48h
008C583D: push 00000000h
008C583F: push 00000018h
008C5841: mov eax, [ebp+08h]
008C5844: mov eax, [eax]
008C5846: push [ebp+08h]
008C5849: call [eax+00000308h]
008C584F: push eax
008C5850: lea eax, var_000000A8
008C5856: push eax
008C5857: call 00410A84h ; Set (object)
008C585C: push eax
008C585D: lea eax, var_00000150
008C5863: push eax
008C5864: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C5869: add esp, 00000010h
008C586C: push eax
008C586D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C5872: push eax
008C5873: lea eax, var_000000AC
008C5879: push eax
008C587A: call 00410A84h ; Set (object)
008C587F: push eax
008C5880: lea eax, var_00000160
008C5886: push eax
008C5887: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C588C: add esp, 00000020h
008C588F: push eax
008C5890: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C5895: push eax
008C5896: lea eax, var_000000B0
008C589C: push eax
008C589D: call 00410A84h ; Set (object)
008C58A2: push eax
008C58A3: lea eax, var_00000170
008C58A9: push eax
008C58AA: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C58AF: add esp, 00000020h
008C58B2: push eax
008C58B3: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C58B8: mov edx, eax
008C58BA: lea ecx, var_58
008C58BD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C58C2: push eax
008C58C3: call 00410A18h ; &
008C58C8: mov edx, eax
008C58CA: lea ecx, var_5C
008C58CD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C58D2: push eax
008C58D3: push 00445568h
008C58D8: call 00410A18h ; &
008C58DD: mov edx, eax
008C58DF: lea ecx, var_60
008C58E2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C58E7: push eax
008C58E8: push 00000010h
008C58EA: pop eax
008C58EB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C58F0: lea esi, var_00000300
008C58F6: mov edi, esp
008C58F8: movsd 
008C58F9: movsd 
008C58FA: movsd 
008C58FB: movsd 
008C58FC: push 00000001h
008C58FE: push 00000010h
008C5900: push 00440E58h
008C5905: push 00000010h
008C5907: pop eax
008C5908: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C590D: lea esi, var_000002E0
008C5913: mov edi, esp
008C5915: movsd 
008C5916: movsd 
008C5917: movsd 
008C5918: movsd 
008C5919: push 00000001h
008C591B: push 00000000h
008C591D: push 00440E48h
008C5922: push 00000000h
008C5924: push 00000018h
008C5926: mov eax, [ebp+08h]
008C5929: mov eax, [eax]
008C592B: push [ebp+08h]
008C592E: call [eax+00000308h]
008C5934: push eax
008C5935: lea eax, var_000000B4
008C593B: push eax
008C593C: call 00410A84h ; Set (object)
008C5941: push eax
008C5942: lea eax, var_00000180
008C5948: push eax
008C5949: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C594E: add esp, 00000010h
008C5951: push eax
008C5952: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C5957: push eax
008C5958: lea eax, var_000000B8
008C595E: push eax
008C595F: call 00410A84h ; Set (object)
008C5964: push eax
008C5965: lea eax, var_00000190
008C596B: push eax
008C596C: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C5971: add esp, 00000020h
008C5974: push eax
008C5975: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C597A: push eax
008C597B: lea eax, var_000000BC
008C5981: push eax
008C5982: call 00410A84h ; Set (object)
008C5987: push eax
008C5988: lea eax, var_000001A0
008C598E: push eax
008C598F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C5994: add esp, 00000020h
008C5997: push eax
008C5998: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C599D: mov edx, eax
008C599F: lea ecx, var_64
008C59A2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C59A7: push eax
008C59A8: call 00410A18h ; &
008C59AD: mov edx, eax
008C59AF: lea ecx, var_68
008C59B2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C59B7: push eax
008C59B8: push 00445568h
008C59BD: call 00410A18h ; &
008C59C2: mov edx, eax
008C59C4: lea ecx, var_6C
008C59C7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C59CC: push eax
008C59CD: push 00000010h
008C59CF: pop eax
008C59D0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C59D5: lea esi, var_00000340
008C59DB: mov edi, esp
008C59DD: movsd 
008C59DE: movsd 
008C59DF: movsd 
008C59E0: movsd 
008C59E1: push 00000001h
008C59E3: push 00000010h
008C59E5: push 00440E58h
008C59EA: push 00000010h
008C59EC: pop eax
008C59ED: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C59F2: lea esi, var_00000320
008C59F8: mov edi, esp
008C59FA: movsd 
008C59FB: movsd 
008C59FC: movsd 
008C59FD: movsd 
008C59FE: push 00000001h
008C5A00: push 00000000h
008C5A02: push 00440E48h
008C5A07: push 00000000h
008C5A09: push 00000018h
008C5A0B: mov eax, [ebp+08h]
008C5A0E: mov eax, [eax]
008C5A10: push [ebp+08h]
008C5A13: call [eax+00000308h]
008C5A19: push eax
008C5A1A: lea eax, var_000000C0
008C5A20: push eax
008C5A21: call 00410A84h ; Set (object)
008C5A26: push eax
008C5A27: lea eax, var_000001B0
008C5A2D: push eax
008C5A2E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C5A33: add esp, 00000010h
008C5A36: push eax
008C5A37: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C5A3C: push eax
008C5A3D: lea eax, var_000000C4
008C5A43: push eax
008C5A44: call 00410A84h ; Set (object)
008C5A49: push eax
008C5A4A: lea eax, var_000001C0
008C5A50: push eax
008C5A51: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C5A56: add esp, 00000020h
008C5A59: push eax
008C5A5A: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C5A5F: push eax
008C5A60: lea eax, var_000000C8
008C5A66: push eax
008C5A67: call 00410A84h ; Set (object)
008C5A6C: push eax
008C5A6D: lea eax, var_000001D0
008C5A73: push eax
008C5A74: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C5A79: add esp, 00000020h
008C5A7C: push eax
008C5A7D: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C5A82: mov edx, eax
008C5A84: lea ecx, var_70
008C5A87: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C5A8C: push eax
008C5A8D: call 00410A18h ; &
008C5A92: mov edx, eax
008C5A94: lea ecx, var_74
008C5A97: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C5A9C: push eax
008C5A9D: push 00445568h
008C5AA2: call 00410A18h ; &
008C5AA7: mov edx, eax
008C5AA9: lea ecx, var_78
008C5AAC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C5AB1: push eax
008C5AB2: push 00000010h
008C5AB4: pop eax
008C5AB5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C5ABA: lea esi, var_00000380
008C5AC0: mov edi, esp
008C5AC2: movsd 
008C5AC3: movsd 
008C5AC4: movsd 
008C5AC5: movsd 
008C5AC6: push 00000001h
008C5AC8: push 00000010h
008C5ACA: push 00440E58h
008C5ACF: push 00000010h
008C5AD1: pop eax
008C5AD2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C5AD7: lea esi, var_00000360
008C5ADD: mov edi, esp
008C5ADF: movsd 
008C5AE0: movsd 
008C5AE1: movsd 
008C5AE2: movsd 
008C5AE3: push 00000001h
008C5AE5: push 00000000h
008C5AE7: push 00440E48h
008C5AEC: push 00000000h
008C5AEE: push 00000018h
008C5AF0: mov eax, [ebp+08h]
008C5AF3: mov eax, [eax]
008C5AF5: push [ebp+08h]
008C5AF8: call [eax+00000308h]
008C5AFE: push eax
008C5AFF: lea eax, var_000000CC
008C5B05: push eax
008C5B06: call 00410A84h ; Set (object)
008C5B0B: push eax
008C5B0C: lea eax, var_000001E0
008C5B12: push eax
008C5B13: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C5B18: add esp, 00000010h
008C5B1B: push eax
008C5B1C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C5B21: push eax
008C5B22: lea eax, var_000000D0
008C5B28: push eax
008C5B29: call 00410A84h ; Set (object)
008C5B2E: push eax
008C5B2F: lea eax, var_000001F0
008C5B35: push eax
008C5B36: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C5B3B: add esp, 00000020h
008C5B3E: push eax
008C5B3F: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C5B44: push eax
008C5B45: lea eax, var_000000D4
008C5B4B: push eax
008C5B4C: call 00410A84h ; Set (object)
008C5B51: push eax
008C5B52: lea eax, var_00000200
008C5B58: push eax
008C5B59: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C5B5E: add esp, 00000020h
008C5B61: push eax
008C5B62: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C5B67: mov edx, eax
008C5B69: lea ecx, var_7C
008C5B6C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C5B71: push eax
008C5B72: call 00410A18h ; &
008C5B77: mov edx, eax
008C5B79: lea ecx, var_80
008C5B7C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C5B81: push eax
008C5B82: push 00445568h
008C5B87: call 00410A18h ; &
008C5B8C: mov edx, eax
008C5B8E: lea ecx, var_00000084
008C5B94: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C5B99: push eax
008C5B9A: push 00000010h
008C5B9C: pop eax
008C5B9D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C5BA2: lea esi, var_000003C0
008C5BA8: mov edi, esp
008C5BAA: movsd 
008C5BAB: movsd 
008C5BAC: movsd 
008C5BAD: movsd 
008C5BAE: push 00000001h
008C5BB0: push 00000010h
008C5BB2: push 00440E58h
008C5BB7: push 00000010h
008C5BB9: pop eax
008C5BBA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C5BBF: lea esi, var_000003A0
008C5BC5: mov edi, esp
008C5BC7: movsd 
008C5BC8: movsd 
008C5BC9: movsd 
008C5BCA: movsd 
008C5BCB: push 00000001h
008C5BCD: push 00000000h
008C5BCF: push 00440E48h
008C5BD4: push 00000000h
008C5BD6: push 00000018h
008C5BD8: mov eax, [ebp+08h]
008C5BDB: mov eax, [eax]
008C5BDD: push [ebp+08h]
008C5BE0: call [eax+00000308h]
008C5BE6: push eax
008C5BE7: lea eax, var_000000D8
008C5BED: push eax
008C5BEE: call 00410A84h ; Set (object)
008C5BF3: push eax
008C5BF4: lea eax, var_00000210
008C5BFA: push eax
008C5BFB: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C5C00: add esp, 00000010h
008C5C03: push eax
008C5C04: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C5C09: push eax
008C5C0A: lea eax, var_000000DC
008C5C10: push eax
008C5C11: call 00410A84h ; Set (object)
008C5C16: push eax
008C5C17: lea eax, var_00000220
008C5C1D: push eax
008C5C1E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C5C23: add esp, 00000020h
008C5C26: push eax
008C5C27: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C5C2C: push eax
008C5C2D: lea eax, var_000000E0
008C5C33: push eax
008C5C34: call 00410A84h ; Set (object)
008C5C39: push eax
008C5C3A: lea eax, var_00000230
008C5C40: push eax
008C5C41: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C5C46: add esp, 00000020h
008C5C49: push eax
008C5C4A: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008C5C4F: mov edx, eax
008C5C51: lea ecx, var_00000088
008C5C57: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C5C5C: push eax
008C5C5D: call 00410A18h ; &
008C5C62: mov edx, eax
008C5C64: lea ecx, var_0000008C
008C5C6A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C5C6F: push eax
008C5C70: push 00441264h ; vbCrLf
008C5C75: call 00410A18h ; &
008C5C7A: mov edx, eax
008C5C7C: lea ecx, var_38
008C5C7F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008C5C84: lea eax, var_0000008C
008C5C8A: push eax
008C5C8B: lea eax, var_00000088
008C5C91: push eax
008C5C92: lea eax, var_00000084
008C5C98: push eax
008C5C99: lea eax, var_80
008C5C9C: push eax
008C5C9D: lea eax, var_7C
008C5CA0: push eax
008C5CA1: lea eax, var_78
008C5CA4: push eax
008C5CA5: lea eax, var_74
008C5CA8: push eax
008C5CA9: lea eax, var_70
008C5CAC: push eax
008C5CAD: lea eax, var_6C
008C5CB0: push eax
008C5CB1: lea eax, var_68
008C5CB4: push eax
008C5CB5: lea eax, var_64
008C5CB8: push eax
008C5CB9: lea eax, var_60
008C5CBC: push eax
008C5CBD: lea eax, var_5C
008C5CC0: push eax
008C5CC1: lea eax, var_58
008C5CC4: push eax
008C5CC5: lea eax, var_54
008C5CC8: push eax
008C5CC9: lea eax, var_50
008C5CCC: push eax
008C5CCD: lea eax, var_4C
008C5CD0: push eax
008C5CD1: lea eax, var_48
008C5CD4: push eax
008C5CD5: lea eax, var_44
008C5CD8: push eax
008C5CD9: lea eax, var_40
008C5CDC: push eax
008C5CDD: push 00000014h
008C5CDF: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C5CE4: add esp, 00000054h
008C5CE7: lea eax, var_000000E0
008C5CED: push eax
008C5CEE: lea eax, var_000000DC
008C5CF4: push eax
008C5CF5: lea eax, var_000000D8
008C5CFB: push eax
008C5CFC: lea eax, var_000000D4
008C5D02: push eax
008C5D03: lea eax, var_000000D0
008C5D09: push eax
008C5D0A: lea eax, var_000000CC
008C5D10: push eax
008C5D11: lea eax, var_000000C8
008C5D17: push eax
008C5D18: lea eax, var_000000C4
008C5D1E: push eax
008C5D1F: lea eax, var_000000C0
008C5D25: push eax
008C5D26: lea eax, var_000000BC
008C5D2C: push eax
008C5D2D: lea eax, var_000000B8
008C5D33: push eax
008C5D34: lea eax, var_000000B4
008C5D3A: push eax
008C5D3B: lea eax, var_000000B0
008C5D41: push eax
008C5D42: lea eax, var_000000AC
008C5D48: push eax
008C5D49: lea eax, var_000000A8
008C5D4F: push eax
008C5D50: lea eax, var_000000A4
008C5D56: push eax
008C5D57: lea eax, var_000000A0
008C5D5D: push eax
008C5D5E: lea eax, var_0000009C
008C5D64: push eax
008C5D65: lea eax, var_00000098
008C5D6B: push eax
008C5D6C: lea eax, var_00000094
008C5D72: push eax
008C5D73: lea eax, var_00000090
008C5D79: push eax
008C5D7A: push 00000015h
008C5D7C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C5D81: add esp, 00000058h
008C5D84: lea eax, var_00000230
008C5D8A: push eax
008C5D8B: lea eax, var_00000220
008C5D91: push eax
008C5D92: lea eax, var_00000210
008C5D98: push eax
008C5D99: lea eax, var_00000200
008C5D9F: push eax
008C5DA0: lea eax, var_000001F0
008C5DA6: push eax
008C5DA7: lea eax, var_000001E0
008C5DAD: push eax
008C5DAE: lea eax, var_000001D0
008C5DB4: push eax
008C5DB5: lea eax, var_000001C0
008C5DBB: push eax
008C5DBC: lea eax, var_000001B0
008C5DC2: push eax
008C5DC3: lea eax, var_000001A0
008C5DC9: push eax
008C5DCA: lea eax, var_00000190
008C5DD0: push eax
008C5DD1: lea eax, var_00000180
008C5DD7: push eax
008C5DD8: lea eax, var_00000170
008C5DDE: push eax
008C5DDF: lea eax, var_00000160
008C5DE5: push eax
008C5DE6: lea eax, var_00000150
008C5DEC: push eax
008C5DED: lea eax, var_00000140
008C5DF3: push eax
008C5DF4: lea eax, var_00000130
008C5DFA: push eax
008C5DFB: lea eax, var_00000120
008C5E01: push eax
008C5E02: lea eax, var_00000110
008C5E08: push eax
008C5E09: lea eax, var_00000100
008C5E0F: push eax
008C5E10: lea eax, var_000000F0
008C5E16: push eax
008C5E17: push 00000015h
008C5E19: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C5E1E: add esp, 00000058h
008C5E21: mov var_04, 00000012h
008C5E28: jmp 008C5525h
008C5E2D: mov var_04, 00000013h
008C5E34: cmp [008F529Ch], 00000000h
008C5E3B: jnz 8C5E58h
008C5E3D: push 008F529Ch
008C5E42: push 00440F2Ch
008C5E47: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C5E4C: mov var_0000041C, 008F529Ch
008C5E56: jmp 8C5E62h
008C5E58: mov var_0000041C, 008F529Ch
008C5E62: mov eax, var_0000041C
008C5E68: mov eax, [eax]
008C5E6A: mov var_000003D4, eax
008C5E70: lea eax, var_00000090
008C5E76: push eax
008C5E77: mov eax, var_000003D4
008C5E7D: mov eax, [eax]
008C5E7F: push var_000003D4
008C5E85: call [eax+1Ch]
008C5E88: fclex 
008C5E8A: mov var_000003D8, eax
008C5E90: cmp var_000003D8, 00000000h
008C5E97: jnl 8C5EB9h
008C5E99: push 0000001Ch
008C5E9B: push 00440F1Ch
008C5EA0: push var_000003D4
008C5EA6: push var_000003D8
008C5EAC: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C5EB1: mov var_00000420, eax
008C5EB7: jmp 8C5EC0h
008C5EB9: and var_00000420, 00000000h
008C5EC0: mov eax, var_00000090
008C5EC6: mov var_000003DC, eax
008C5ECC: mov eax, var_000003DC
008C5ED2: mov eax, [eax]
008C5ED4: push var_000003DC
008C5EDA: call [eax+50h]
008C5EDD: fclex 
008C5EDF: mov var_000003E0, eax
008C5EE5: cmp var_000003E0, 00000000h
008C5EEC: jnl 8C5F0Eh
008C5EEE: push 00000050h
008C5EF0: push 00445554h
008C5EF5: push var_000003DC
008C5EFB: push var_000003E0
008C5F01: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C5F06: mov var_00000424, eax
008C5F0C: jmp 8C5F15h
008C5F0E: and var_00000424, 00000000h
008C5F15: lea ecx, var_00000090
008C5F1B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C5F20: mov var_04, 00000014h
008C5F27: cmp [008F529Ch], 00000000h
008C5F2E: jnz 8C5F4Bh
008C5F30: push 008F529Ch
008C5F35: push 00440F2Ch
008C5F3A: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008C5F3F: mov var_00000428, 008F529Ch
008C5F49: jmp 8C5F55h
008C5F4B: mov var_00000428, 008F529Ch
008C5F55: mov eax, var_00000428
008C5F5B: mov eax, [eax]
008C5F5D: mov var_000003D4, eax
008C5F63: lea eax, var_00000090
008C5F69: push eax
008C5F6A: mov eax, var_000003D4
008C5F70: mov eax, [eax]
008C5F72: push var_000003D4
008C5F78: call [eax+1Ch]
008C5F7B: fclex 
008C5F7D: mov var_000003D8, eax
008C5F83: cmp var_000003D8, 00000000h
008C5F8A: jnl 8C5FACh
008C5F8C: push 0000001Ch
008C5F8E: push 00440F1Ch
008C5F93: push var_000003D4
008C5F99: push var_000003D8
008C5F9F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C5FA4: mov var_0000042C, eax
008C5FAA: jmp 8C5FB3h
008C5FAC: and var_0000042C, 00000000h
008C5FB3: mov eax, var_00000090
008C5FB9: mov var_000003DC, eax
008C5FBF: mov var_00000238, 80020004h
008C5FC9: mov var_00000240, 0000000Ah
008C5FD3: push 00000010h
008C5FD5: pop eax
008C5FD6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C5FDB: lea esi, var_00000240
008C5FE1: mov edi, esp
008C5FE3: movsd 
008C5FE4: movsd 
008C5FE5: movsd 
008C5FE6: movsd 
008C5FE7: push var_38
008C5FEA: mov eax, var_000003DC
008C5FF0: mov eax, [eax]
008C5FF2: push var_000003DC
008C5FF8: call [eax+60h]
008C5FFB: fclex 
008C5FFD: mov var_000003E0, eax
008C6003: cmp var_000003E0, 00000000h
008C600A: jnl 8C602Ch
008C600C: push 00000060h
008C600E: push 00445554h
008C6013: push var_000003DC
008C6019: push var_000003E0
008C601F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C6024: mov var_00000430, eax
008C602A: jmp 8C6033h
008C602C: and var_00000430, 00000000h
008C6033: lea ecx, var_00000090
008C6039: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008C603E: jmp 8C5FBEh
008C6040: mov var_04, 00000016h
008C6047: push 00000000h
008C6049: push 00000003h
008C604B: push 00440E48h
008C6050: push 00000000h
008C6052: push 00000018h
008C6054: mov eax, [ebp+08h]
008C6057: mov eax, [eax]
008C6059: push [ebp+08h]
008C605C: call [eax+00000308h]
008C6062: push eax
008C6063: lea eax, var_00000090
008C6069: push eax
008C606A: call 00410A84h ; Set (object)
008C606F: push eax
008C6070: lea eax, var_000000F0
008C6076: push eax
008C6077: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C607C: add esp, 00000010h
008C607F: push eax
008C6080: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C6085: push eax
008C6086: lea eax, var_00000094
008C608C: push eax
008C608D: call 00410A84h ; Set (object)
008C6092: push eax
008C6093: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C6098: add esp, 0000000Ch
008C609B: lea eax, var_00000094
008C60A1: push eax
008C60A2: lea eax, var_00000090
008C60A8: push eax
008C60A9: push 00000002h
008C60AB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C60B0: add esp, 0000000Ch
008C60B3: lea ecx, var_000000F0
008C60B9: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C60BE: mov var_10, 00000000h
008C60C5: push 008C6286h
008C60CA: jmp 008C626Dh
008C60CF: lea eax, var_0000008C
008C60D5: push eax
008C60D6: lea eax, var_00000088
008C60DC: push eax
008C60DD: lea eax, var_00000084
008C60E3: push eax
008C60E4: lea eax, var_80
008C60E7: push eax
008C60E8: lea eax, var_7C
008C60EB: push eax
008C60EC: lea eax, var_78
008C60EF: push eax
008C60F0: lea eax, var_74
008C60F3: push eax
008C60F4: lea eax, var_70
008C60F7: push eax
008C60F8: lea eax, var_6C
008C60FB: push eax
008C60FC: lea eax, var_68
008C60FF: push eax
008C6100: lea eax, var_64
008C6103: push eax
008C6104: lea eax, var_60
008C6107: push eax
008C6108: lea eax, var_5C
008C610B: push eax
008C610C: lea eax, var_58
008C610F: push eax
008C6110: lea eax, var_54
008C6113: push eax
008C6114: lea eax, var_50
008C6117: push eax
008C6118: lea eax, var_4C
008C611B: push eax
008C611C: lea eax, var_48
008C611F: push eax
008C6120: lea eax, var_44
008C6123: push eax
008C6124: lea eax, var_40
008C6127: push eax
008C6128: push 00000014h
008C612A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008C612F: add esp, 00000054h
008C6132: lea eax, var_000000E0
008C6138: push eax
008C6139: lea eax, var_000000DC
008C613F: push eax
008C6140: lea eax, var_000000D8
008C6146: push eax
008C6147: lea eax, var_000000D4
008C614D: push eax
008C614E: lea eax, var_000000D0
008C6154: push eax
008C6155: lea eax, var_000000CC
008C615B: push eax
008C615C: lea eax, var_000000C8
008C6162: push eax
008C6163: lea eax, var_000000C4
008C6169: push eax
008C616A: lea eax, var_000000C0
008C6170: push eax
008C6171: lea eax, var_000000BC
008C6177: push eax
008C6178: lea eax, var_000000B8
008C617E: push eax
008C617F: lea eax, var_000000B4
008C6185: push eax
008C6186: lea eax, var_000000B0
008C618C: push eax
008C618D: lea eax, var_000000AC
008C6193: push eax
008C6194: lea eax, var_000000A8
008C619A: push eax
008C619B: lea eax, var_000000A4
008C61A1: push eax
008C61A2: lea eax, var_000000A0
008C61A8: push eax
008C61A9: lea eax, var_0000009C
008C61AF: push eax
008C61B0: lea eax, var_00000098
008C61B6: push eax
008C61B7: lea eax, var_00000094
008C61BD: push eax
008C61BE: lea eax, var_00000090
008C61C4: push eax
008C61C5: push 00000015h
008C61C7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C61CC: add esp, 00000058h
008C61CF: lea eax, var_00000230
008C61D5: push eax
008C61D6: lea eax, var_00000220
008C61DC: push eax
008C61DD: lea eax, var_00000210
008C61E3: push eax
008C61E4: lea eax, var_00000200
008C61EA: push eax
008C61EB: lea eax, var_000001F0
008C61F1: push eax
008C61F2: lea eax, var_000001E0
008C61F8: push eax
008C61F9: lea eax, var_000001D0
008C61FF: push eax
008C6200: lea eax, var_000001C0
008C6206: push eax
008C6207: lea eax, var_000001B0
008C620D: push eax
008C620E: lea eax, var_000001A0
008C6214: push eax
008C6215: lea eax, var_00000190
008C621B: push eax
008C621C: lea eax, var_00000180
008C6222: push eax
008C6223: lea eax, var_00000170
008C6229: push eax
008C622A: lea eax, var_00000160
008C6230: push eax
008C6231: lea eax, var_00000150
008C6237: push eax
008C6238: lea eax, var_00000140
008C623E: push eax
008C623F: lea eax, var_00000130
008C6245: push eax
008C6246: lea eax, var_00000120
008C624C: push eax
008C624D: lea eax, var_00000110
008C6253: push eax
008C6254: lea eax, var_00000100
008C625A: push eax
008C625B: lea eax, var_000000F0
008C6261: push eax
008C6262: push 00000015h
008C6264: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C6269: add esp, 00000058h
008C626C: ret 
End Sub

Private sub Form__8C3470
008C3470: push ebp
008C3471: mov ebp, esp
008C3473: sub esp, 0000000Ch
008C3476: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008C347B: mov eax, fs:[00h]
008C3481: push eax
008C3482: mov fs:[00000000h], esp
008C3489: mov eax, 000000A0h
008C348E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3493: push ebx
008C3494: push esi
008C3495: push edi
008C3496: mov var_0C, esp
008C3499: mov var_08, 0040F410h
008C34A0: mov eax, [ebp+08h]
008C34A3: and eax, 00000001h
008C34A6: mov var_04, eax
008C34A9: mov eax, [ebp+08h]
008C34AC: and al, FEh
008C34AE: mov [ebp+08h], eax
008C34B1: mov eax, [ebp+08h]
008C34B4: mov eax, [eax]
008C34B6: push [ebp+08h]
008C34B9: call [eax+04h]
008C34BC: mov var_34, 80020004h
008C34C3: mov var_3C, 0000000Ah
008C34CA: mov var_54, 80020004h
008C34D1: mov var_5C, 0000000Ah
008C34D8: mov var_74, 00446714h ; ID
008C34DF: mov var_7C, 00000008h
008C34E6: mov var_00000094, 00000384h
008C34F0: mov var_0000009C, 00000002h
008C34FA: push 00000010h
008C34FC: pop eax
008C34FD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3502: lea esi, var_3C
008C3505: mov edi, esp
008C3507: movsd 
008C3508: movsd 
008C3509: movsd 
008C350A: movsd 
008C350B: push 00000010h
008C350D: pop eax
008C350E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3513: lea esi, var_5C
008C3516: mov edi, esp
008C3518: movsd 
008C3519: movsd 
008C351A: movsd 
008C351B: movsd 
008C351C: push 00000010h
008C351E: pop eax
008C351F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3524: lea esi, var_7C
008C3527: mov edi, esp
008C3529: movsd 
008C352A: movsd 
008C352B: movsd 
008C352C: movsd 
008C352D: push 00000010h
008C352F: pop eax
008C3530: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3535: lea esi, var_0000009C
008C353B: mov edi, esp
008C353D: movsd 
008C353E: movsd 
008C353F: movsd 
008C3540: movsd 
008C3541: push 00000004h
008C3543: push 00000002h
008C3545: push 00445534h
008C354A: push 00000000h
008C354C: push 00000019h
008C354E: mov eax, [ebp+08h]
008C3551: mov eax, [eax]
008C3553: push [ebp+08h]
008C3556: call [eax+00000308h]
008C355C: push eax
008C355D: lea eax, var_18
008C3560: push eax
008C3561: call 00410A84h ; Set (object)
008C3566: push eax
008C3567: lea eax, var_2C
008C356A: push eax
008C356B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C3570: add esp, 00000010h
008C3573: push eax
008C3574: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C3579: push eax
008C357A: lea eax, var_1C
008C357D: push eax
008C357E: call 00410A84h ; Set (object)
008C3583: push eax
008C3584: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C3589: add esp, 0000004Ch
008C358C: lea eax, var_1C
008C358F: push eax
008C3590: lea eax, var_18
008C3593: push eax
008C3594: push 00000002h
008C3596: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C359B: add esp, 0000000Ch
008C359E: lea ecx, var_2C
008C35A1: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C35A6: mov var_34, 80020004h
008C35AD: mov var_3C, 0000000Ah
008C35B4: mov var_54, 80020004h
008C35BB: mov var_5C, 0000000Ah
008C35C2: mov var_74, 00446720h ; WAN
008C35C9: mov var_7C, 00000008h
008C35D0: mov var_00000094, 00000708h
008C35DA: mov var_0000009C, 00000002h
008C35E4: push 00000010h
008C35E6: pop eax
008C35E7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C35EC: lea esi, var_3C
008C35EF: mov edi, esp
008C35F1: movsd 
008C35F2: movsd 
008C35F3: movsd 
008C35F4: movsd 
008C35F5: push 00000010h
008C35F7: pop eax
008C35F8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C35FD: lea esi, var_5C
008C3600: mov edi, esp
008C3602: movsd 
008C3603: movsd 
008C3604: movsd 
008C3605: movsd 
008C3606: push 00000010h
008C3608: pop eax
008C3609: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C360E: lea esi, var_7C
008C3611: mov edi, esp
008C3613: movsd 
008C3614: movsd 
008C3615: movsd 
008C3616: movsd 
008C3617: push 00000010h
008C3619: pop eax
008C361A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C361F: lea esi, var_0000009C
008C3625: mov edi, esp
008C3627: movsd 
008C3628: movsd 
008C3629: movsd 
008C362A: movsd 
008C362B: push 00000004h
008C362D: push 00000002h
008C362F: push 00445534h
008C3634: push 00000000h
008C3636: push 00000019h
008C3638: mov eax, [ebp+08h]
008C363B: mov eax, [eax]
008C363D: push [ebp+08h]
008C3640: call [eax+00000308h]
008C3646: push eax
008C3647: lea eax, var_18
008C364A: push eax
008C364B: call 00410A84h ; Set (object)
008C3650: push eax
008C3651: lea eax, var_2C
008C3654: push eax
008C3655: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C365A: add esp, 00000010h
008C365D: push eax
008C365E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C3663: push eax
008C3664: lea eax, var_1C
008C3667: push eax
008C3668: call 00410A84h ; Set (object)
008C366D: push eax
008C366E: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C3673: add esp, 0000004Ch
008C3676: lea eax, var_1C
008C3679: push eax
008C367A: lea eax, var_18
008C367D: push eax
008C367E: push 00000002h
008C3680: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C3685: add esp, 0000000Ch
008C3688: lea ecx, var_2C
008C368B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C3690: mov var_34, 80020004h
008C3697: mov var_3C, 0000000Ah
008C369E: mov var_54, 80020004h
008C36A5: mov var_5C, 0000000Ah
008C36AC: mov var_74, 0044672Ch ; LAN
008C36B3: mov var_7C, 00000008h
008C36BA: mov var_00000094, 00000708h
008C36C4: mov var_0000009C, 00000002h
008C36CE: push 00000010h
008C36D0: pop eax
008C36D1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C36D6: lea esi, var_3C
008C36D9: mov edi, esp
008C36DB: movsd 
008C36DC: movsd 
008C36DD: movsd 
008C36DE: movsd 
008C36DF: push 00000010h
008C36E1: pop eax
008C36E2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C36E7: lea esi, var_5C
008C36EA: mov edi, esp
008C36EC: movsd 
008C36ED: movsd 
008C36EE: movsd 
008C36EF: movsd 
008C36F0: push 00000010h
008C36F2: pop eax
008C36F3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C36F8: lea esi, var_7C
008C36FB: mov edi, esp
008C36FD: movsd 
008C36FE: movsd 
008C36FF: movsd 
008C3700: movsd 
008C3701: push 00000010h
008C3703: pop eax
008C3704: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3709: lea esi, var_0000009C
008C370F: mov edi, esp
008C3711: movsd 
008C3712: movsd 
008C3713: movsd 
008C3714: movsd 
008C3715: push 00000004h
008C3717: push 00000002h
008C3719: push 00445534h
008C371E: push 00000000h
008C3720: push 00000019h
008C3722: mov eax, [ebp+08h]
008C3725: mov eax, [eax]
008C3727: push [ebp+08h]
008C372A: call [eax+00000308h]
008C3730: push eax
008C3731: lea eax, var_18
008C3734: push eax
008C3735: call 00410A84h ; Set (object)
008C373A: push eax
008C373B: lea eax, var_2C
008C373E: push eax
008C373F: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C3744: add esp, 00000010h
008C3747: push eax
008C3748: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C374D: push eax
008C374E: lea eax, var_1C
008C3751: push eax
008C3752: call 00410A84h ; Set (object)
008C3757: push eax
008C3758: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C375D: add esp, 0000004Ch
008C3760: lea eax, var_1C
008C3763: push eax
008C3764: lea eax, var_18
008C3767: push eax
008C3768: push 00000002h
008C376A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C376F: add esp, 0000000Ch
008C3772: lea ecx, var_2C
008C3775: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C377A: mov var_34, 80020004h
008C3781: mov var_3C, 0000000Ah
008C3788: mov var_54, 80020004h
008C378F: mov var_5C, 0000000Ah
008C3796: mov var_74, 00446744h ; Username
008C379D: mov var_7C, 00000008h
008C37A4: mov var_00000094, 000005DCh
008C37AE: mov var_0000009C, 00000002h
008C37B8: push 00000010h
008C37BA: pop eax
008C37BB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C37C0: lea esi, var_3C
008C37C3: mov edi, esp
008C37C5: movsd 
008C37C6: movsd 
008C37C7: movsd 
008C37C8: movsd 
008C37C9: push 00000010h
008C37CB: pop eax
008C37CC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C37D1: lea esi, var_5C
008C37D4: mov edi, esp
008C37D6: movsd 
008C37D7: movsd 
008C37D8: movsd 
008C37D9: movsd 
008C37DA: push 00000010h
008C37DC: pop eax
008C37DD: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C37E2: lea esi, var_7C
008C37E5: mov edi, esp
008C37E7: movsd 
008C37E8: movsd 
008C37E9: movsd 
008C37EA: movsd 
008C37EB: push 00000010h
008C37ED: pop eax
008C37EE: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C37F3: lea esi, var_0000009C
008C37F9: mov edi, esp
008C37FB: movsd 
008C37FC: movsd 
008C37FD: movsd 
008C37FE: movsd 
008C37FF: push 00000004h
008C3801: push 00000002h
008C3803: push 00445534h
008C3808: push 00000000h
008C380A: push 00000019h
008C380C: mov eax, [ebp+08h]
008C380F: mov eax, [eax]
008C3811: push [ebp+08h]
008C3814: call [eax+00000308h]
008C381A: push eax
008C381B: lea eax, var_18
008C381E: push eax
008C381F: call 00410A84h ; Set (object)
008C3824: push eax
008C3825: lea eax, var_2C
008C3828: push eax
008C3829: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C382E: add esp, 00000010h
008C3831: push eax
008C3832: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C3837: push eax
008C3838: lea eax, var_1C
008C383B: push eax
008C383C: call 00410A84h ; Set (object)
008C3841: push eax
008C3842: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C3847: add esp, 0000004Ch
008C384A: lea eax, var_1C
008C384D: push eax
008C384E: lea eax, var_18
008C3851: push eax
008C3852: push 00000002h
008C3854: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C3859: add esp, 0000000Ch
008C385C: lea ecx, var_2C
008C385F: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C3864: mov var_34, 80020004h
008C386B: mov var_3C, 0000000Ah
008C3872: mov var_54, 80020004h
008C3879: mov var_5C, 0000000Ah
008C3880: mov var_74, 0044675Ch ; Comp.Name
008C3887: mov var_7C, 00000008h
008C388E: mov var_00000094, 000005DCh
008C3898: mov var_0000009C, 00000002h
008C38A2: push 00000010h
008C38A4: pop eax
008C38A5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C38AA: lea esi, var_3C
008C38AD: mov edi, esp
008C38AF: movsd 
008C38B0: movsd 
008C38B1: movsd 
008C38B2: movsd 
008C38B3: push 00000010h
008C38B5: pop eax
008C38B6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C38BB: lea esi, var_5C
008C38BE: mov edi, esp
008C38C0: movsd 
008C38C1: movsd 
008C38C2: movsd 
008C38C3: movsd 
008C38C4: push 00000010h
008C38C6: pop eax
008C38C7: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C38CC: lea esi, var_7C
008C38CF: mov edi, esp
008C38D1: movsd 
008C38D2: movsd 
008C38D3: movsd 
008C38D4: movsd 
008C38D5: push 00000010h
008C38D7: pop eax
008C38D8: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C38DD: lea esi, var_0000009C
008C38E3: mov edi, esp
008C38E5: movsd 
008C38E6: movsd 
008C38E7: movsd 
008C38E8: movsd 
008C38E9: push 00000004h
008C38EB: push 00000002h
008C38ED: push 00445534h
008C38F2: push 00000000h
008C38F4: push 00000019h
008C38F6: mov eax, [ebp+08h]
008C38F9: mov eax, [eax]
008C38FB: push [ebp+08h]
008C38FE: call [eax+00000308h]
008C3904: push eax
008C3905: lea eax, var_18
008C3908: push eax
008C3909: call 00410A84h ; Set (object)
008C390E: push eax
008C390F: lea eax, var_2C
008C3912: push eax
008C3913: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C3918: add esp, 00000010h
008C391B: push eax
008C391C: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C3921: push eax
008C3922: lea eax, var_1C
008C3925: push eax
008C3926: call 00410A84h ; Set (object)
008C392B: push eax
008C392C: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C3931: add esp, 0000004Ch
008C3934: lea eax, var_1C
008C3937: push eax
008C3938: lea eax, var_18
008C393B: push eax
008C393C: push 00000002h
008C393E: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C3943: add esp, 0000000Ch
008C3946: lea ecx, var_2C
008C3949: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C394E: mov var_34, 80020004h
008C3955: mov var_3C, 0000000Ah
008C395C: mov var_54, 80020004h
008C3963: mov var_5C, 0000000Ah
008C396A: mov var_74, 00460A50h ; Process
008C3971: mov var_7C, 00000008h
008C3978: mov var_00000094, 000007D0h
008C3982: mov var_0000009C, 00000002h
008C398C: push 00000010h
008C398E: pop eax
008C398F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3994: lea esi, var_3C
008C3997: mov edi, esp
008C3999: movsd 
008C399A: movsd 
008C399B: movsd 
008C399C: movsd 
008C399D: push 00000010h
008C399F: pop eax
008C39A0: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C39A5: lea esi, var_5C
008C39A8: mov edi, esp
008C39AA: movsd 
008C39AB: movsd 
008C39AC: movsd 
008C39AD: movsd 
008C39AE: push 00000010h
008C39B0: pop eax
008C39B1: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C39B6: lea esi, var_7C
008C39B9: mov edi, esp
008C39BB: movsd 
008C39BC: movsd 
008C39BD: movsd 
008C39BE: movsd 
008C39BF: push 00000010h
008C39C1: pop eax
008C39C2: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C39C7: lea esi, var_0000009C
008C39CD: mov edi, esp
008C39CF: movsd 
008C39D0: movsd 
008C39D1: movsd 
008C39D2: movsd 
008C39D3: push 00000004h
008C39D5: push 00000002h
008C39D7: push 00445534h
008C39DC: push 00000000h
008C39DE: push 00000019h
008C39E0: mov eax, [ebp+08h]
008C39E3: mov eax, [eax]
008C39E5: push [ebp+08h]
008C39E8: call [eax+00000308h]
008C39EE: push eax
008C39EF: lea eax, var_18
008C39F2: push eax
008C39F3: call 00410A84h ; Set (object)
008C39F8: push eax
008C39F9: lea eax, var_2C
008C39FC: push eax
008C39FD: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C3A02: add esp, 00000010h
008C3A05: push eax
008C3A06: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C3A0B: push eax
008C3A0C: lea eax, var_1C
008C3A0F: push eax
008C3A10: call 00410A84h ; Set (object)
008C3A15: push eax
008C3A16: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C3A1B: add esp, 0000004Ch
008C3A1E: lea eax, var_1C
008C3A21: push eax
008C3A22: lea eax, var_18
008C3A25: push eax
008C3A26: push 00000002h
008C3A28: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C3A2D: add esp, 0000000Ch
008C3A30: lea ecx, var_2C
008C3A33: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C3A38: mov var_34, 80020004h
008C3A3F: mov var_3C, 0000000Ah
008C3A46: mov var_54, 80020004h
008C3A4D: mov var_5C, 0000000Ah
008C3A54: mov var_74, 00460A64h ; Detection
008C3A5B: mov var_7C, 00000008h
008C3A62: mov var_00000094, 00000BB8h
008C3A6C: mov var_0000009C, 00000002h
008C3A76: push 00000010h
008C3A78: pop eax
008C3A79: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3A7E: lea esi, var_3C
008C3A81: mov edi, esp
008C3A83: movsd 
008C3A84: movsd 
008C3A85: movsd 
008C3A86: movsd 
008C3A87: push 00000010h
008C3A89: pop eax
008C3A8A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3A8F: lea esi, var_5C
008C3A92: mov edi, esp
008C3A94: movsd 
008C3A95: movsd 
008C3A96: movsd 
008C3A97: movsd 
008C3A98: push 00000010h
008C3A9A: pop eax
008C3A9B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3AA0: lea esi, var_7C
008C3AA3: mov edi, esp
008C3AA5: movsd 
008C3AA6: movsd 
008C3AA7: movsd 
008C3AA8: movsd 
008C3AA9: push 00000010h
008C3AAB: pop eax
008C3AAC: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3AB1: lea esi, var_0000009C
008C3AB7: mov edi, esp
008C3AB9: movsd 
008C3ABA: movsd 
008C3ABB: movsd 
008C3ABC: movsd 
008C3ABD: push 00000004h
008C3ABF: push 00000002h
008C3AC1: push 00445534h
008C3AC6: push 00000000h
008C3AC8: push 00000019h
008C3ACA: mov eax, [ebp+08h]
008C3ACD: mov eax, [eax]
008C3ACF: push [ebp+08h]
008C3AD2: call [eax+00000308h]
008C3AD8: push eax
008C3AD9: lea eax, var_18
008C3ADC: push eax
008C3ADD: call 00410A84h ; Set (object)
008C3AE2: push eax
008C3AE3: lea eax, var_2C
008C3AE6: push eax
008C3AE7: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C3AEC: add esp, 00000010h
008C3AEF: push eax
008C3AF0: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
008C3AF5: push eax
008C3AF6: lea eax, var_1C
008C3AF9: push eax
008C3AFA: call 00410A84h ; Set (object)
008C3AFF: push eax
008C3B00: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C3B05: add esp, 0000004Ch
008C3B08: lea eax, var_1C
008C3B0B: push eax
008C3B0C: lea eax, var_18
008C3B0F: push eax
008C3B10: push 00000002h
008C3B12: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C3B17: add esp, 0000000Ch
008C3B1A: lea ecx, var_2C
008C3B1D: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C3B22: mov var_04, 00000000h
008C3B29: push 008C3B4Ch
008C3B2E: jmp 8C3B4Bh
008C3B30: lea eax, var_1C
008C3B33: push eax
008C3B34: lea eax, var_18
008C3B37: push eax
008C3B38: push 00000002h
008C3B3A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C3B3F: add esp, 0000000Ch
008C3B42: lea ecx, var_2C
008C3B45: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C3B4A: ret 
End Sub

Private sub Form__8C3B6B
008C3B6B: push ebp
008C3B6C: mov ebp, esp
008C3B6E: sub esp, 00000018h
008C3B71: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008C3B76: mov eax, fs:[00h]
008C3B7C: push eax
008C3B7D: mov fs:[00000000h], esp
008C3B84: mov eax, 000000FCh
008C3B89: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3B8E: push ebx
008C3B8F: push esi
008C3B90: push edi
008C3B91: mov var_18, esp
008C3B94: mov var_14, 0040F420h
008C3B9B: mov eax, [ebp+08h]
008C3B9E: and eax, 00000001h
008C3BA1: mov var_10, eax
008C3BA4: mov eax, [ebp+08h]
008C3BA7: and al, FEh
008C3BA9: mov [ebp+08h], eax
008C3BAC: mov var_0C, 00000000h
008C3BB3: mov eax, [ebp+08h]
008C3BB6: mov eax, [eax]
008C3BB8: push [ebp+08h]
008C3BBB: call [eax+04h]
008C3BBE: mov var_04, 00000001h
008C3BC5: mov var_04, 00000002h
008C3BCC: push FFFFFFFFh
008C3BCE: call 00410A60h ; On Error ...
008C3BD3: mov var_04, 00000003h
008C3BDA: push 00000000h
008C3BDC: push 80010006h
008C3BE1: mov eax, [ebp+08h]
008C3BE4: mov eax, [eax]
008C3BE6: push [ebp+08h]
008C3BE9: call [eax+0000030Ch]
008C3BEF: push eax
008C3BF0: lea eax, var_24
008C3BF3: push eax
008C3BF4: call 00410A84h ; Set (object)
008C3BF9: push eax
008C3BFA: lea eax, var_40
008C3BFD: push eax
008C3BFE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C3C03: add esp, 00000010h
008C3C06: fldz 
008C3C08: fstp real4 ptr var_68
008C3C0B: mov var_70, 00000004h
008C3C12: and var_00000088, 00000000h
008C3C19: mov var_00000090, 00000002h
008C3C23: lea eax, var_000000E4
008C3C29: push eax
008C3C2A: mov eax, [ebp+08h]
008C3C2D: mov eax, [eax]
008C3C2F: push [ebp+08h]
008C3C32: call [eax+00000080h]
008C3C38: fclex 
008C3C3A: mov var_000000EC, eax
008C3C40: cmp var_000000EC, 00000000h
008C3C47: jnl 8C3C69h
008C3C49: push 00000080h
008C3C4E: push 00448380h
008C3C53: push [ebp+08h]
008C3C56: push var_000000EC
008C3C5C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C3C61: mov var_00000108, eax
008C3C67: jmp 8C3C70h
008C3C69: and var_00000108, 00000000h
008C3C70: fld real4 ptr var_000000E4
008C3C76: fsub real4 ptr [00402B7Ch]
008C3C7C: fstp real4 ptr var_000000A8
008C3C82: fstsw ax
008C3C84: test al, 0Dh
008C3C86: jnz 008C4149h
008C3C8C: mov var_000000B0, 00000004h
008C3C96: lea eax, var_000000E8
008C3C9C: push eax
008C3C9D: mov eax, [ebp+08h]
008C3CA0: mov eax, [eax]
008C3CA2: push [ebp+08h]
008C3CA5: call [eax+00000088h]
008C3CAB: fclex 
008C3CAD: mov var_000000F0, eax
008C3CB3: cmp var_000000F0, 00000000h
008C3CBA: jnl 8C3CDCh
008C3CBC: push 00000088h
008C3CC1: push 00448380h
008C3CC6: push [ebp+08h]
008C3CC9: push var_000000F0
008C3CCF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C3CD4: mov var_0000010C, eax
008C3CDA: jmp 8C3CE3h
008C3CDC: and var_0000010C, 00000000h
008C3CE3: lea eax, var_40
008C3CE6: push eax
008C3CE7: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C3CEC: fsubr real4 ptr var_000000E8
008C3CF2: fsub real4 ptr [0040984Ch]
008C3CF8: fstp real4 ptr var_000000C8
008C3CFE: fstsw ax
008C3D00: test al, 0Dh
008C3D02: jnz 008C4149h
008C3D08: mov var_000000D0, 00000004h
008C3D12: push 00000010h
008C3D14: pop eax
008C3D15: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3D1A: lea esi, var_70
008C3D1D: mov edi, esp
008C3D1F: movsd 
008C3D20: movsd 
008C3D21: movsd 
008C3D22: movsd 
008C3D23: push 00000010h
008C3D25: pop eax
008C3D26: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3D2B: lea esi, var_00000090
008C3D31: mov edi, esp
008C3D33: movsd 
008C3D34: movsd 
008C3D35: movsd 
008C3D36: movsd 
008C3D37: push 00000010h
008C3D39: pop eax
008C3D3A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3D3F: lea esi, var_000000B0
008C3D45: mov edi, esp
008C3D47: movsd 
008C3D48: movsd 
008C3D49: movsd 
008C3D4A: movsd 
008C3D4B: push 00000010h
008C3D4D: pop eax
008C3D4E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3D53: lea esi, var_000000D0
008C3D59: mov edi, esp
008C3D5B: movsd 
008C3D5C: movsd 
008C3D5D: movsd 
008C3D5E: movsd 
008C3D5F: push 00000004h
008C3D61: push 80011002h
008C3D66: mov eax, [ebp+08h]
008C3D69: mov eax, [eax]
008C3D6B: push [ebp+08h]
008C3D6E: call [eax+00000308h]
008C3D74: push eax
008C3D75: lea eax, var_28
008C3D78: push eax
008C3D79: call 00410A84h ; Set (object)
008C3D7E: push eax
008C3D7F: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C3D84: add esp, 0000004Ch
008C3D87: lea eax, var_28
008C3D8A: push eax
008C3D8B: lea eax, var_24
008C3D8E: push eax
008C3D8F: push 00000002h
008C3D91: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C3D96: add esp, 0000000Ch
008C3D99: lea ecx, var_40
008C3D9C: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008C3DA1: mov var_04, 00000004h
008C3DA8: push 00000000h
008C3DAA: push 80010006h
008C3DAF: mov eax, [ebp+08h]
008C3DB2: mov eax, [eax]
008C3DB4: push [ebp+08h]
008C3DB7: call [eax+00000308h]
008C3DBD: push eax
008C3DBE: lea eax, var_28
008C3DC1: push eax
008C3DC2: call 00410A84h ; Set (object)
008C3DC7: push eax
008C3DC8: lea eax, var_50
008C3DCB: push eax
008C3DCC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C3DD1: add esp, 00000010h
008C3DD4: fldz 
008C3DD6: fstp real4 ptr var_68
008C3DD9: mov var_70, 00000004h
008C3DE0: push 00000000h
008C3DE2: push 80010004h
008C3DE7: mov eax, [ebp+08h]
008C3DEA: mov eax, [eax]
008C3DEC: push [ebp+08h]
008C3DEF: call [eax+00000308h]
008C3DF5: push eax
008C3DF6: lea eax, var_24
008C3DF9: push eax
008C3DFA: call 00410A84h ; Set (object)
008C3DFF: push eax
008C3E00: lea eax, var_40
008C3E03: push eax
008C3E04: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C3E09: add esp, 00000010h
008C3E0C: push eax
008C3E0D: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C3E12: fstp real4 ptr var_00000110
008C3E18: lea eax, var_50
008C3E1B: push eax
008C3E1C: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C3E21: fadd real4 ptr var_00000110
008C3E27: fadd real4 ptr [00402BA8h]
008C3E2D: fstp real4 ptr var_00000088
008C3E33: fstsw ax
008C3E35: test al, 0Dh
008C3E37: jnz 008C4149h
008C3E3D: mov var_00000090, 00000004h
008C3E47: lea eax, var_000000E4
008C3E4D: push eax
008C3E4E: mov eax, [ebp+08h]
008C3E51: mov eax, [eax]
008C3E53: push [ebp+08h]
008C3E56: call [eax+00000080h]
008C3E5C: fclex 
008C3E5E: mov var_000000EC, eax
008C3E64: cmp var_000000EC, 00000000h
008C3E6B: jnl 8C3E8Dh
008C3E6D: push 00000080h
008C3E72: push 00448380h
008C3E77: push [ebp+08h]
008C3E7A: push var_000000EC
008C3E80: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008C3E85: mov var_00000114, eax
008C3E8B: jmp 8C3E94h
008C3E8D: and var_00000114, 00000000h
008C3E94: fld real4 ptr var_000000E4
008C3E9A: fsub real4 ptr [00402B7Ch]
008C3EA0: fstp real4 ptr var_000000A8
008C3EA6: fstsw ax
008C3EA8: test al, 0Dh
008C3EAA: jnz 008C4149h
008C3EB0: mov var_000000B0, 00000004h
008C3EBA: push 00000000h
008C3EBC: push 80010006h
008C3EC1: mov eax, [ebp+08h]
008C3EC4: mov eax, [eax]
008C3EC6: push [ebp+08h]
008C3EC9: call [eax+0000030Ch]
008C3ECF: push eax
008C3ED0: lea eax, var_2C
008C3ED3: push eax
008C3ED4: call 00410A84h ; Set (object)
008C3ED9: push eax
008C3EDA: lea eax, var_60
008C3EDD: push eax
008C3EDE: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C3EE3: add esp, 00000010h
008C3EE6: push eax
008C3EE7: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C3EEC: fstp real4 ptr var_000000C8
008C3EF2: mov var_000000D0, 00000004h
008C3EFC: push 00000010h
008C3EFE: pop eax
008C3EFF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3F04: lea esi, var_70
008C3F07: mov edi, esp
008C3F09: movsd 
008C3F0A: movsd 
008C3F0B: movsd 
008C3F0C: movsd 
008C3F0D: push 00000010h
008C3F0F: pop eax
008C3F10: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3F15: lea esi, var_00000090
008C3F1B: mov edi, esp
008C3F1D: movsd 
008C3F1E: movsd 
008C3F1F: movsd 
008C3F20: movsd 
008C3F21: push 00000010h
008C3F23: pop eax
008C3F24: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3F29: lea esi, var_000000B0
008C3F2F: mov edi, esp
008C3F31: movsd 
008C3F32: movsd 
008C3F33: movsd 
008C3F34: movsd 
008C3F35: push 00000010h
008C3F37: pop eax
008C3F38: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C3F3D: lea esi, var_000000D0
008C3F43: mov edi, esp
008C3F45: movsd 
008C3F46: movsd 
008C3F47: movsd 
008C3F48: movsd 
008C3F49: push 00000004h
008C3F4B: push 80011001h
008C3F50: mov eax, [ebp+08h]
008C3F53: mov eax, [eax]
008C3F55: push [ebp+08h]
008C3F58: call [eax+0000030Ch]
008C3F5E: push eax
008C3F5F: lea eax, var_30
008C3F62: push eax
008C3F63: call 00410A84h ; Set (object)
008C3F68: push eax
008C3F69: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C3F6E: add esp, 0000004Ch
008C3F71: lea eax, var_30
008C3F74: push eax
008C3F75: lea eax, var_2C
008C3F78: push eax
008C3F79: lea eax, var_28
008C3F7C: push eax
008C3F7D: lea eax, var_24
008C3F80: push eax
008C3F81: push 00000004h
008C3F83: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C3F88: add esp, 00000014h
008C3F8B: lea eax, var_60
008C3F8E: push eax
008C3F8F: lea eax, var_50
008C3F92: push eax
008C3F93: lea eax, var_40
008C3F96: push eax
008C3F97: push 00000003h
008C3F99: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C3F9E: add esp, 00000010h
008C3FA1: mov var_04, 00000005h
008C3FA8: push 00000000h
008C3FAA: push 80010005h
008C3FAF: mov eax, [ebp+08h]
008C3FB2: mov eax, [eax]
008C3FB4: push [ebp+08h]
008C3FB7: call [eax+0000030Ch]
008C3FBD: push eax
008C3FBE: lea eax, var_28
008C3FC1: push eax
008C3FC2: call 00410A84h ; Set (object)
008C3FC7: push eax
008C3FC8: lea eax, var_50
008C3FCB: push eax
008C3FCC: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C3FD1: add esp, 00000010h
008C3FD4: push 00000000h
008C3FD6: push 80010005h
008C3FDB: mov eax, [ebp+08h]
008C3FDE: mov eax, [eax]
008C3FE0: push [ebp+08h]
008C3FE3: call [eax+00000310h]
008C3FE9: push eax
008C3FEA: lea eax, var_2C
008C3FED: push eax
008C3FEE: call 00410A84h ; Set (object)
008C3FF3: push eax
008C3FF4: lea eax, var_60
008C3FF7: push eax
008C3FF8: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C3FFD: add esp, 00000010h
008C4000: push 00000000h
008C4002: push 80010003h
008C4007: mov eax, [ebp+08h]
008C400A: mov eax, [eax]
008C400C: push [ebp+08h]
008C400F: call [eax+0000030Ch]
008C4015: push eax
008C4016: lea eax, var_24
008C4019: push eax
008C401A: call 00410A84h ; Set (object)
008C401F: push eax
008C4020: lea eax, var_40
008C4023: push eax
008C4024: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008C4029: add esp, 00000010h
008C402C: push eax
008C402D: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C4032: fstp real4 ptr var_00000118
008C4038: lea eax, var_50
008C403B: push eax
008C403C: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C4041: fadd real4 ptr var_00000118
008C4047: fstsw ax
008C4049: test al, 0Dh
008C404B: jnz 008C4149h
008C4051: fstp real4 ptr var_0000011C
008C4057: lea eax, var_60
008C405A: push eax
008C405B: call 004107EAh ; msvbvm60.dll.__vbaR4Var
008C4060: fsubr real4 ptr var_0000011C
008C4066: fsub real4 ptr [00402BA4h]
008C406C: fstp real4 ptr var_68
008C406F: fstsw ax
008C4071: test al, 0Dh
008C4073: jnz 008C4149h
008C4079: mov var_70, 00000004h
008C4080: push 00000010h
008C4082: pop eax
008C4083: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008C4088: lea esi, var_70
008C408B: mov edi, esp
008C408D: movsd 
008C408E: movsd 
008C408F: movsd 
008C4090: movsd 
008C4091: push 00000001h
008C4093: push 80011002h
008C4098: mov eax, [ebp+08h]
008C409B: mov eax, [eax]
008C409D: push [ebp+08h]
008C40A0: call [eax+00000310h]
008C40A6: push eax
008C40A7: lea eax, var_30
008C40AA: push eax
008C40AB: call 00410A84h ; Set (object)
008C40B0: push eax
008C40B1: call 00410A2Ah ; msvbvm60.dll.__vbaLateIdCall
008C40B6: add esp, 0000001Ch
008C40B9: lea eax, var_30
008C40BC: push eax
008C40BD: lea eax, var_2C
008C40C0: push eax
008C40C1: lea eax, var_28
008C40C4: push eax
008C40C5: lea eax, var_24
008C40C8: push eax
008C40C9: push 00000004h
008C40CB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C40D0: add esp, 00000014h
008C40D3: lea eax, var_60
008C40D6: push eax
008C40D7: lea eax, var_50
008C40DA: push eax
008C40DB: lea eax, var_40
008C40DE: push eax
008C40DF: push 00000003h
008C40E1: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C40E6: add esp, 00000010h
008C40E9: mov var_10, 00000000h
008C40F0: wait 
008C40F1: push 008C412Ah
008C40F6: jmp 8C4129h
008C40F8: lea eax, var_30
008C40FB: push eax
008C40FC: lea eax, var_2C
008C40FF: push eax
008C4100: lea eax, var_28
008C4103: push eax
008C4104: lea eax, var_24
008C4107: push eax
008C4108: push 00000004h
008C410A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008C410F: add esp, 00000014h
008C4112: lea eax, var_60
008C4115: push eax
008C4116: lea eax, var_50
008C4119: push eax
008C411A: lea eax, var_40
008C411D: push eax
008C411E: push 00000003h
008C4120: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008C4125: add esp, 00000010h
008C4128: ret 
End Sub

