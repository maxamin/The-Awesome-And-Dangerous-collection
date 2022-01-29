VERSION 5.00
Begin VB.Form frmFun
  Caption = "Fun manager"
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
  ClientWidth = 3405
  ClientHeight = 4875
  StartUpPosition = 1 'CenterOwner
  Begin XtremeSuiteControls.PushButton PushButton12
    Left = 120
    Top = 1920
    Width = 1575
    Height = 375
    TabIndex = 23
  End
  Begin XtremeSuiteControls.PushButton PushButton13
    Left = 1680
    Top = 1920
    Width = 1575
    Height = 375
    TabIndex = 24
  End
  Begin VB.CheckBox chkAllServers
    Caption = "Send Fun Command to All Servers"
    Left = 120
    Top = 4560
    Width = 3255
    Height = 255
    TabIndex = 11
  End
  Begin XtremeSuiteControls.PushButton Command10
    Left = 120
    Top = 2280
    Width = 1575
    Height = 375
    TabIndex = 10
  End
  Begin XtremeSuiteControls.PushButton Command11
    Left = 1680
    Top = 1560
    Width = 1575
    Height = 375
    TabIndex = 9
  End
  Begin XtremeSuiteControls.PushButton Command9
    Left = 120
    Top = 1560
    Width = 1575
    Height = 375
    TabIndex = 8
  End
  Begin XtremeSuiteControls.PushButton Command8
    Left = 1680
    Top = 1200
    Width = 1575
    Height = 375
    TabIndex = 7
  End
  Begin XtremeSuiteControls.PushButton Command7
    Left = 120
    Top = 1200
    Width = 1575
    Height = 375
    TabIndex = 6
  End
  Begin XtremeSuiteControls.PushButton Command6
    Left = 1680
    Top = 840
    Width = 1575
    Height = 375
    TabIndex = 5
  End
  Begin XtremeSuiteControls.PushButton Command5
    Left = 120
    Top = 840
    Width = 1575
    Height = 375
    TabIndex = 4
  End
  Begin XtremeSuiteControls.PushButton Command4
    Left = 1680
    Top = 480
    Width = 1575
    Height = 375
    TabIndex = 3
  End
  Begin XtremeSuiteControls.PushButton Command1
    Left = 120
    Top = 120
    Width = 1575
    Height = 375
    TabIndex = 0
  End
  Begin XtremeSuiteControls.PushButton Command2
    Left = 1680
    Top = 120
    Width = 1575
    Height = 375
    TabIndex = 1
  End
  Begin XtremeSuiteControls.PushButton Command3
    Left = 120
    Top = 480
    Width = 1575
    Height = 375
    TabIndex = 2
  End
  Begin XtremeSuiteControls.PushButton PushButton1
    Left = 1680
    Top = 2280
    Width = 1575
    Height = 375
    TabIndex = 12
  End
  Begin XtremeSuiteControls.PushButton PushButton2
    Left = 120
    Top = 2640
    Width = 1575
    Height = 375
    TabIndex = 13
  End
  Begin XtremeSuiteControls.PushButton PushButton3
    Left = 1680
    Top = 2640
    Width = 1575
    Height = 375
    TabIndex = 14
  End
  Begin XtremeSuiteControls.PushButton PushButton4
    Left = 120
    Top = 3000
    Width = 1575
    Height = 375
    TabIndex = 15
  End
  Begin XtremeSuiteControls.PushButton PushButton5
    Left = 1680
    Top = 3000
    Width = 1575
    Height = 375
    TabIndex = 16
  End
  Begin XtremeSuiteControls.PushButton PushButton6
    Left = 120
    Top = 3360
    Width = 1575
    Height = 375
    TabIndex = 17
  End
  Begin XtremeSuiteControls.PushButton PushButton7
    Left = 1680
    Top = 3360
    Width = 1575
    Height = 375
    TabIndex = 18
  End
  Begin XtremeSuiteControls.PushButton PushButton8
    Left = 120
    Top = 3720
    Width = 1575
    Height = 375
    TabIndex = 19
  End
  Begin XtremeSuiteControls.PushButton PushButton9
    Left = 1680
    Top = 3720
    Width = 1575
    Height = 375
    TabIndex = 20
  End
  Begin XtremeSuiteControls.PushButton PushButton10
    Left = 120
    Top = 4080
    Width = 1575
    Height = 375
    TabIndex = 21
  End
  Begin XtremeSuiteControls.PushButton PushButton11
    Left = 1680
    Top = 4080
    Width = 1575
    Height = 375
    TabIndex = 22
  End
End

Attribute VB_Name = "frmFun"


Private sub PushButton10__81006D
0081006D: push ebp
0081006E: mov ebp, esp
00810070: sub esp, 0000000Ch
00810073: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00810078: mov eax, fs:[00h]
0081007E: push eax
0081007F: mov fs:[00000000h], esp
00810086: push 0000002Ch
00810088: pop eax
00810089: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081008E: push ebx
0081008F: push esi
00810090: push edi
00810091: mov var_0C, esp
00810094: mov var_08, 0040A868h
0081009B: mov eax, [ebp+08h]
0081009E: and eax, 00000001h
008100A1: mov var_04, eax
008100A4: mov eax, [ebp+08h]
008100A7: and al, FEh
008100A9: mov [ebp+08h], eax
008100AC: mov eax, [ebp+08h]
008100AF: mov eax, [eax]
008100B1: push [ebp+08h]
008100B4: call [eax+04h]
008100B7: mov eax, [ebp+08h]
008100BA: mov eax, [eax]
008100BC: push [ebp+08h]
008100BF: call [eax+000002FCh]
008100C5: push eax
008100C6: lea eax, var_24
008100C9: push eax
008100CA: call 00410A84h ; Set (object)
008100CF: mov var_2C, eax
008100D2: lea eax, var_28
008100D5: push eax
008100D6: mov eax, var_2C
008100D9: mov eax, [eax]
008100DB: push var_2C
008100DE: call [eax+000000E0h]
008100E4: fclex 
008100E6: mov var_30, eax
008100E9: cmp var_30, 00000000h
008100ED: jnl 810109h
008100EF: push 000000E0h
008100F4: push 00440DF8h
008100F9: push var_2C
008100FC: push var_30
008100FF: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00810104: mov var_40, eax
00810107: jmp 81010Dh
00810109: and var_40, 00000000h
0081010D: xor eax, eax
0081010F: cmp word ptr var_28, 0001h
00810114: setz al
00810117: neg eax
00810119: mov var_34, ax
0081011D: lea ecx, var_24
00810120: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00810125: movsx eax, word ptr var_34
00810129: test eax, eax
0081012B: jz 81018Ch
0081012D: xor edx, edx
0081012F: lea ecx, var_20
00810132: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810137: mov edx, 00442938h
0081013C: lea ecx, var_1C
0081013F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810144: mov edx, 0043D858h ; x91
00810149: lea ecx, var_18
0081014C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810151: or word ptr var_28, FFFFh
00810156: lea eax, var_20
00810159: push eax
0081015A: lea eax, var_1C
0081015D: push eax
0081015E: lea eax, var_18
00810161: push eax
00810162: lea eax, var_28
00810165: push eax
00810166: mov eax, [ebp+08h]
00810169: mov eax, [eax]
0081016B: push [ebp+08h]
0081016E: call [eax+00000738h]
00810174: lea eax, var_20
00810177: push eax
00810178: lea eax, var_1C
0081017B: push eax
0081017C: lea eax, var_18
0081017F: push eax
00810180: push 00000003h
00810182: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00810187: add esp, 00000010h
0081018A: jmp 8101E9h
0081018C: xor edx, edx
0081018E: lea ecx, var_20
00810191: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810196: mov edx, 00442938h
0081019B: lea ecx, var_1C
0081019E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008101A3: mov edx, 0043D858h ; x91
008101A8: lea ecx, var_18
008101AB: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008101B0: and word ptr var_28, 0000h
008101B5: lea eax, var_20
008101B8: push eax
008101B9: lea eax, var_1C
008101BC: push eax
008101BD: lea eax, var_18
008101C0: push eax
008101C1: lea eax, var_28
008101C4: push eax
008101C5: mov eax, [ebp+08h]
008101C8: mov eax, [eax]
008101CA: push [ebp+08h]
008101CD: call [eax+00000738h]
008101D3: lea eax, var_20
008101D6: push eax
008101D7: lea eax, var_1C
008101DA: push eax
008101DB: lea eax, var_18
008101DE: push eax
008101DF: push 00000003h
008101E1: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008101E6: add esp, 00000010h
008101E9: mov var_04, 00000000h
008101F0: push 00810217h
008101F5: jmp 810216h
008101F7: lea eax, var_20
008101FA: push eax
008101FB: lea eax, var_1C
008101FE: push eax
008101FF: lea eax, var_18
00810202: push eax
00810203: push 00000003h
00810205: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081020A: add esp, 00000010h
0081020D: lea ecx, var_24
00810210: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00810215: ret 
End Sub

Private sub PushButton13__8105C8
008105C8: push ebp
008105C9: mov ebp, esp
008105CB: sub esp, 0000000Ch
008105CE: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008105D3: mov eax, fs:[00h]
008105D9: push eax
008105DA: mov fs:[00000000h], esp
008105E1: push 0000002Ch
008105E3: pop eax
008105E4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008105E9: push ebx
008105EA: push esi
008105EB: push edi
008105EC: mov var_0C, esp
008105EF: mov var_08, 0040A898h
008105F6: mov eax, [ebp+08h]
008105F9: and eax, 00000001h
008105FC: mov var_04, eax
008105FF: mov eax, [ebp+08h]
00810602: and al, FEh
00810604: mov [ebp+08h], eax
00810607: mov eax, [ebp+08h]
0081060A: mov eax, [eax]
0081060C: push [ebp+08h]
0081060F: call [eax+04h]
00810612: mov eax, [ebp+08h]
00810615: mov eax, [eax]
00810617: push [ebp+08h]
0081061A: call [eax+000002FCh]
00810620: push eax
00810621: lea eax, var_24
00810624: push eax
00810625: call 00410A84h ; Set (object)
0081062A: mov var_2C, eax
0081062D: lea eax, var_28
00810630: push eax
00810631: mov eax, var_2C
00810634: mov eax, [eax]
00810636: push var_2C
00810639: call [eax+000000E0h]
0081063F: fclex 
00810641: mov var_30, eax
00810644: cmp var_30, 00000000h
00810648: jnl 810664h
0081064A: push 000000E0h
0081064F: push 00440DF8h
00810654: push var_2C
00810657: push var_30
0081065A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081065F: mov var_40, eax
00810662: jmp 810668h
00810664: and var_40, 00000000h
00810668: xor eax, eax
0081066A: cmp word ptr var_28, 0001h
0081066F: setz al
00810672: neg eax
00810674: mov var_34, ax
00810678: lea ecx, var_24
0081067B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00810680: movsx eax, word ptr var_34
00810684: test eax, eax
00810686: jz 8106E7h
00810688: xor edx, edx
0081068A: lea ecx, var_20
0081068D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810692: mov edx, 00442930h
00810697: lea ecx, var_1C
0081069A: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081069F: mov edx, 0043D904h ; x104
008106A4: lea ecx, var_18
008106A7: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008106AC: or word ptr var_28, FFFFh
008106B1: lea eax, var_20
008106B4: push eax
008106B5: lea eax, var_1C
008106B8: push eax
008106B9: lea eax, var_18
008106BC: push eax
008106BD: lea eax, var_28
008106C0: push eax
008106C1: mov eax, [ebp+08h]
008106C4: mov eax, [eax]
008106C6: push [ebp+08h]
008106C9: call [eax+00000738h]
008106CF: lea eax, var_20
008106D2: push eax
008106D3: lea eax, var_1C
008106D6: push eax
008106D7: lea eax, var_18
008106DA: push eax
008106DB: push 00000003h
008106DD: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008106E2: add esp, 00000010h
008106E5: jmp 810744h
008106E7: xor edx, edx
008106E9: lea ecx, var_20
008106EC: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008106F1: mov edx, 00442930h
008106F6: lea ecx, var_1C
008106F9: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008106FE: mov edx, 0043D904h ; x104
00810703: lea ecx, var_18
00810706: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081070B: and word ptr var_28, 0000h
00810710: lea eax, var_20
00810713: push eax
00810714: lea eax, var_1C
00810717: push eax
00810718: lea eax, var_18
0081071B: push eax
0081071C: lea eax, var_28
0081071F: push eax
00810720: mov eax, [ebp+08h]
00810723: mov eax, [eax]
00810725: push [ebp+08h]
00810728: call [eax+00000738h]
0081072E: lea eax, var_20
00810731: push eax
00810732: lea eax, var_1C
00810735: push eax
00810736: lea eax, var_18
00810739: push eax
0081073A: push 00000003h
0081073C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00810741: add esp, 00000010h
00810744: mov var_04, 00000000h
0081074B: push 00810772h
00810750: jmp 810771h
00810752: lea eax, var_20
00810755: push eax
00810756: lea eax, var_1C
00810759: push eax
0081075A: lea eax, var_18
0081075D: push eax
0081075E: push 00000003h
00810760: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00810765: add esp, 00000010h
00810768: lea ecx, var_24
0081076B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00810770: ret 
End Sub

Private sub Command2__80E6D1
0080E6D1: push ebp
0080E6D2: mov ebp, esp
0080E6D4: sub esp, 0000000Ch
0080E6D7: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080E6DC: mov eax, fs:[00h]
0080E6E2: push eax
0080E6E3: mov fs:[00000000h], esp
0080E6EA: push 0000002Ch
0080E6EC: pop eax
0080E6ED: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080E6F2: push ebx
0080E6F3: push esi
0080E6F4: push edi
0080E6F5: mov var_0C, esp
0080E6F8: mov var_08, 0040A768h
0080E6FF: mov eax, [ebp+08h]
0080E702: and eax, 00000001h
0080E705: mov var_04, eax
0080E708: mov eax, [ebp+08h]
0080E70B: and al, FEh
0080E70D: mov [ebp+08h], eax
0080E710: mov eax, [ebp+08h]
0080E713: mov eax, [eax]
0080E715: push [ebp+08h]
0080E718: call [eax+04h]
0080E71B: mov eax, [ebp+08h]
0080E71E: mov eax, [eax]
0080E720: push [ebp+08h]
0080E723: call [eax+000002FCh]
0080E729: push eax
0080E72A: lea eax, var_24
0080E72D: push eax
0080E72E: call 00410A84h ; Set (object)
0080E733: mov var_2C, eax
0080E736: lea eax, var_28
0080E739: push eax
0080E73A: mov eax, var_2C
0080E73D: mov eax, [eax]
0080E73F: push var_2C
0080E742: call [eax+000000E0h]
0080E748: fclex 
0080E74A: mov var_30, eax
0080E74D: cmp var_30, 00000000h
0080E751: jnl 80E76Dh
0080E753: push 000000E0h
0080E758: push 00440DF8h
0080E75D: push var_2C
0080E760: push var_30
0080E763: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080E768: mov var_40, eax
0080E76B: jmp 80E771h
0080E76D: and var_40, 00000000h
0080E771: xor eax, eax
0080E773: cmp word ptr var_28, 0001h
0080E778: setz al
0080E77B: neg eax
0080E77D: mov var_34, ax
0080E781: lea ecx, var_24
0080E784: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080E789: movsx eax, word ptr var_34
0080E78D: test eax, eax
0080E78F: jz 80E7F0h
0080E791: xor edx, edx
0080E793: lea ecx, var_20
0080E796: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E79B: mov edx, 00442938h
0080E7A0: lea ecx, var_1C
0080E7A3: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E7A8: mov edx, 0043D5D0h ; x37
0080E7AD: lea ecx, var_18
0080E7B0: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E7B5: or word ptr var_28, FFFFh
0080E7BA: lea eax, var_20
0080E7BD: push eax
0080E7BE: lea eax, var_1C
0080E7C1: push eax
0080E7C2: lea eax, var_18
0080E7C5: push eax
0080E7C6: lea eax, var_28
0080E7C9: push eax
0080E7CA: mov eax, [ebp+08h]
0080E7CD: mov eax, [eax]
0080E7CF: push [ebp+08h]
0080E7D2: call [eax+00000738h]
0080E7D8: lea eax, var_20
0080E7DB: push eax
0080E7DC: lea eax, var_1C
0080E7DF: push eax
0080E7E0: lea eax, var_18
0080E7E3: push eax
0080E7E4: push 00000003h
0080E7E6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080E7EB: add esp, 00000010h
0080E7EE: jmp 80E84Dh
0080E7F0: xor edx, edx
0080E7F2: lea ecx, var_20
0080E7F5: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E7FA: mov edx, 00442938h
0080E7FF: lea ecx, var_1C
0080E802: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E807: mov edx, 0043D5D0h ; x37
0080E80C: lea ecx, var_18
0080E80F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E814: and word ptr var_28, 0000h
0080E819: lea eax, var_20
0080E81C: push eax
0080E81D: lea eax, var_1C
0080E820: push eax
0080E821: lea eax, var_18
0080E824: push eax
0080E825: lea eax, var_28
0080E828: push eax
0080E829: mov eax, [ebp+08h]
0080E82C: mov eax, [eax]
0080E82E: push [ebp+08h]
0080E831: call [eax+00000738h]
0080E837: lea eax, var_20
0080E83A: push eax
0080E83B: lea eax, var_1C
0080E83E: push eax
0080E83F: lea eax, var_18
0080E842: push eax
0080E843: push 00000003h
0080E845: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080E84A: add esp, 00000010h
0080E84D: mov var_04, 00000000h
0080E854: push 0080E87Bh
0080E859: jmp 80E87Ah
0080E85B: lea eax, var_20
0080E85E: push eax
0080E85F: lea eax, var_1C
0080E862: push eax
0080E863: lea eax, var_18
0080E866: push eax
0080E867: push 00000003h
0080E869: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080E86E: add esp, 00000010h
0080E871: lea ecx, var_24
0080E874: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080E879: ret 
End Sub

Private sub Command3__80E89A
0080E89A: push ebp
0080E89B: mov ebp, esp
0080E89D: sub esp, 0000000Ch
0080E8A0: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080E8A5: mov eax, fs:[00h]
0080E8AB: push eax
0080E8AC: mov fs:[00000000h], esp
0080E8B3: push 0000002Ch
0080E8B5: pop eax
0080E8B6: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080E8BB: push ebx
0080E8BC: push esi
0080E8BD: push edi
0080E8BE: mov var_0C, esp
0080E8C1: mov var_08, 0040A778h
0080E8C8: mov eax, [ebp+08h]
0080E8CB: and eax, 00000001h
0080E8CE: mov var_04, eax
0080E8D1: mov eax, [ebp+08h]
0080E8D4: and al, FEh
0080E8D6: mov [ebp+08h], eax
0080E8D9: mov eax, [ebp+08h]
0080E8DC: mov eax, [eax]
0080E8DE: push [ebp+08h]
0080E8E1: call [eax+04h]
0080E8E4: mov eax, [ebp+08h]
0080E8E7: mov eax, [eax]
0080E8E9: push [ebp+08h]
0080E8EC: call [eax+000002FCh]
0080E8F2: push eax
0080E8F3: lea eax, var_24
0080E8F6: push eax
0080E8F7: call 00410A84h ; Set (object)
0080E8FC: mov var_2C, eax
0080E8FF: lea eax, var_28
0080E902: push eax
0080E903: mov eax, var_2C
0080E906: mov eax, [eax]
0080E908: push var_2C
0080E90B: call [eax+000000E0h]
0080E911: fclex 
0080E913: mov var_30, eax
0080E916: cmp var_30, 00000000h
0080E91A: jnl 80E936h
0080E91C: push 000000E0h
0080E921: push 00440DF8h
0080E926: push var_2C
0080E929: push var_30
0080E92C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080E931: mov var_40, eax
0080E934: jmp 80E93Ah
0080E936: and var_40, 00000000h
0080E93A: xor eax, eax
0080E93C: cmp word ptr var_28, 0001h
0080E941: setz al
0080E944: neg eax
0080E946: mov var_34, ax
0080E94A: lea ecx, var_24
0080E94D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080E952: movsx eax, word ptr var_34
0080E956: test eax, eax
0080E958: jz 80E9B9h
0080E95A: xor edx, edx
0080E95C: lea ecx, var_20
0080E95F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E964: mov edx, 00442938h
0080E969: lea ecx, var_1C
0080E96C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E971: mov edx, 0043D5DCh ; x38
0080E976: lea ecx, var_18
0080E979: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E97E: or word ptr var_28, FFFFh
0080E983: lea eax, var_20
0080E986: push eax
0080E987: lea eax, var_1C
0080E98A: push eax
0080E98B: lea eax, var_18
0080E98E: push eax
0080E98F: lea eax, var_28
0080E992: push eax
0080E993: mov eax, [ebp+08h]
0080E996: mov eax, [eax]
0080E998: push [ebp+08h]
0080E99B: call [eax+00000738h]
0080E9A1: lea eax, var_20
0080E9A4: push eax
0080E9A5: lea eax, var_1C
0080E9A8: push eax
0080E9A9: lea eax, var_18
0080E9AC: push eax
0080E9AD: push 00000003h
0080E9AF: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080E9B4: add esp, 00000010h
0080E9B7: jmp 80EA16h
0080E9B9: xor edx, edx
0080E9BB: lea ecx, var_20
0080E9BE: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E9C3: mov edx, 00442938h
0080E9C8: lea ecx, var_1C
0080E9CB: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E9D0: mov edx, 0043D5DCh ; x38
0080E9D5: lea ecx, var_18
0080E9D8: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E9DD: and word ptr var_28, 0000h
0080E9E2: lea eax, var_20
0080E9E5: push eax
0080E9E6: lea eax, var_1C
0080E9E9: push eax
0080E9EA: lea eax, var_18
0080E9ED: push eax
0080E9EE: lea eax, var_28
0080E9F1: push eax
0080E9F2: mov eax, [ebp+08h]
0080E9F5: mov eax, [eax]
0080E9F7: push [ebp+08h]
0080E9FA: call [eax+00000738h]
0080EA00: lea eax, var_20
0080EA03: push eax
0080EA04: lea eax, var_1C
0080EA07: push eax
0080EA08: lea eax, var_18
0080EA0B: push eax
0080EA0C: push 00000003h
0080EA0E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080EA13: add esp, 00000010h
0080EA16: mov var_04, 00000000h
0080EA1D: push 0080EA44h
0080EA22: jmp 80EA43h
0080EA24: lea eax, var_20
0080EA27: push eax
0080EA28: lea eax, var_1C
0080EA2B: push eax
0080EA2C: lea eax, var_18
0080EA2F: push eax
0080EA30: push 00000003h
0080EA32: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080EA37: add esp, 00000010h
0080EA3A: lea ecx, var_24
0080EA3D: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080EA42: ret 
End Sub

Private sub Command4__80EA63
0080EA63: push ebp
0080EA64: mov ebp, esp
0080EA66: sub esp, 0000000Ch
0080EA69: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080EA6E: mov eax, fs:[00h]
0080EA74: push eax
0080EA75: mov fs:[00000000h], esp
0080EA7C: push 0000002Ch
0080EA7E: pop eax
0080EA7F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080EA84: push ebx
0080EA85: push esi
0080EA86: push edi
0080EA87: mov var_0C, esp
0080EA8A: mov var_08, 0040A788h
0080EA91: mov eax, [ebp+08h]
0080EA94: and eax, 00000001h
0080EA97: mov var_04, eax
0080EA9A: mov eax, [ebp+08h]
0080EA9D: and al, FEh
0080EA9F: mov [ebp+08h], eax
0080EAA2: mov eax, [ebp+08h]
0080EAA5: mov eax, [eax]
0080EAA7: push [ebp+08h]
0080EAAA: call [eax+04h]
0080EAAD: mov eax, [ebp+08h]
0080EAB0: mov eax, [eax]
0080EAB2: push [ebp+08h]
0080EAB5: call [eax+000002FCh]
0080EABB: push eax
0080EABC: lea eax, var_24
0080EABF: push eax
0080EAC0: call 00410A84h ; Set (object)
0080EAC5: mov var_2C, eax
0080EAC8: lea eax, var_28
0080EACB: push eax
0080EACC: mov eax, var_2C
0080EACF: mov eax, [eax]
0080EAD1: push var_2C
0080EAD4: call [eax+000000E0h]
0080EADA: fclex 
0080EADC: mov var_30, eax
0080EADF: cmp var_30, 00000000h
0080EAE3: jnl 80EAFFh
0080EAE5: push 000000E0h
0080EAEA: push 00440DF8h
0080EAEF: push var_2C
0080EAF2: push var_30
0080EAF5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080EAFA: mov var_40, eax
0080EAFD: jmp 80EB03h
0080EAFF: and var_40, 00000000h
0080EB03: xor eax, eax
0080EB05: cmp word ptr var_28, 0001h
0080EB0A: setz al
0080EB0D: neg eax
0080EB0F: mov var_34, ax
0080EB13: lea ecx, var_24
0080EB16: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080EB1B: movsx eax, word ptr var_34
0080EB1F: test eax, eax
0080EB21: jz 80EB82h
0080EB23: xor edx, edx
0080EB25: lea ecx, var_20
0080EB28: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080EB2D: mov edx, 00442938h
0080EB32: lea ecx, var_1C
0080EB35: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080EB3A: mov edx, 0043D5E8h ; x39
0080EB3F: lea ecx, var_18
0080EB42: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080EB47: or word ptr var_28, FFFFh
0080EB4C: lea eax, var_20
0080EB4F: push eax
0080EB50: lea eax, var_1C
0080EB53: push eax
0080EB54: lea eax, var_18
0080EB57: push eax
0080EB58: lea eax, var_28
0080EB5B: push eax
0080EB5C: mov eax, [ebp+08h]
0080EB5F: mov eax, [eax]
0080EB61: push [ebp+08h]
0080EB64: call [eax+00000738h]
0080EB6A: lea eax, var_20
0080EB6D: push eax
0080EB6E: lea eax, var_1C
0080EB71: push eax
0080EB72: lea eax, var_18
0080EB75: push eax
0080EB76: push 00000003h
0080EB78: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080EB7D: add esp, 00000010h
0080EB80: jmp 80EBDFh
0080EB82: xor edx, edx
0080EB84: lea ecx, var_20
0080EB87: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080EB8C: mov edx, 00442938h
0080EB91: lea ecx, var_1C
0080EB94: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080EB99: mov edx, 0043D5E8h ; x39
0080EB9E: lea ecx, var_18
0080EBA1: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080EBA6: and word ptr var_28, 0000h
0080EBAB: lea eax, var_20
0080EBAE: push eax
0080EBAF: lea eax, var_1C
0080EBB2: push eax
0080EBB3: lea eax, var_18
0080EBB6: push eax
0080EBB7: lea eax, var_28
0080EBBA: push eax
0080EBBB: mov eax, [ebp+08h]
0080EBBE: mov eax, [eax]
0080EBC0: push [ebp+08h]
0080EBC3: call [eax+00000738h]
0080EBC9: lea eax, var_20
0080EBCC: push eax
0080EBCD: lea eax, var_1C
0080EBD0: push eax
0080EBD1: lea eax, var_18
0080EBD4: push eax
0080EBD5: push 00000003h
0080EBD7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080EBDC: add esp, 00000010h
0080EBDF: mov var_04, 00000000h
0080EBE6: push 0080EC0Dh
0080EBEB: jmp 80EC0Ch
0080EBED: lea eax, var_20
0080EBF0: push eax
0080EBF1: lea eax, var_1C
0080EBF4: push eax
0080EBF5: lea eax, var_18
0080EBF8: push eax
0080EBF9: push 00000003h
0080EBFB: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080EC00: add esp, 00000010h
0080EC03: lea ecx, var_24
0080EC06: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080EC0B: ret 
End Sub

Private sub Command5__80EC2C
0080EC2C: push ebp
0080EC2D: mov ebp, esp
0080EC2F: sub esp, 0000000Ch
0080EC32: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080EC37: mov eax, fs:[00h]
0080EC3D: push eax
0080EC3E: mov fs:[00000000h], esp
0080EC45: push 0000002Ch
0080EC47: pop eax
0080EC48: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080EC4D: push ebx
0080EC4E: push esi
0080EC4F: push edi
0080EC50: mov var_0C, esp
0080EC53: mov var_08, 0040A798h
0080EC5A: mov eax, [ebp+08h]
0080EC5D: and eax, 00000001h
0080EC60: mov var_04, eax
0080EC63: mov eax, [ebp+08h]
0080EC66: and al, FEh
0080EC68: mov [ebp+08h], eax
0080EC6B: mov eax, [ebp+08h]
0080EC6E: mov eax, [eax]
0080EC70: push [ebp+08h]
0080EC73: call [eax+04h]
0080EC76: mov eax, [ebp+08h]
0080EC79: mov eax, [eax]
0080EC7B: push [ebp+08h]
0080EC7E: call [eax+000002FCh]
0080EC84: push eax
0080EC85: lea eax, var_24
0080EC88: push eax
0080EC89: call 00410A84h ; Set (object)
0080EC8E: mov var_2C, eax
0080EC91: lea eax, var_28
0080EC94: push eax
0080EC95: mov eax, var_2C
0080EC98: mov eax, [eax]
0080EC9A: push var_2C
0080EC9D: call [eax+000000E0h]
0080ECA3: fclex 
0080ECA5: mov var_30, eax
0080ECA8: cmp var_30, 00000000h
0080ECAC: jnl 80ECC8h
0080ECAE: push 000000E0h
0080ECB3: push 00440DF8h
0080ECB8: push var_2C
0080ECBB: push var_30
0080ECBE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080ECC3: mov var_40, eax
0080ECC6: jmp 80ECCCh
0080ECC8: and var_40, 00000000h
0080ECCC: xor eax, eax
0080ECCE: cmp word ptr var_28, 0001h
0080ECD3: setz al
0080ECD6: neg eax
0080ECD8: mov var_34, ax
0080ECDC: lea ecx, var_24
0080ECDF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080ECE4: movsx eax, word ptr var_34
0080ECE8: test eax, eax
0080ECEA: jz 80ED4Bh
0080ECEC: xor edx, edx
0080ECEE: lea ecx, var_20
0080ECF1: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080ECF6: mov edx, 00442938h
0080ECFB: lea ecx, var_1C
0080ECFE: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080ED03: mov edx, 0043D60Ch ; x42
0080ED08: lea ecx, var_18
0080ED0B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080ED10: or word ptr var_28, FFFFh
0080ED15: lea eax, var_20
0080ED18: push eax
0080ED19: lea eax, var_1C
0080ED1C: push eax
0080ED1D: lea eax, var_18
0080ED20: push eax
0080ED21: lea eax, var_28
0080ED24: push eax
0080ED25: mov eax, [ebp+08h]
0080ED28: mov eax, [eax]
0080ED2A: push [ebp+08h]
0080ED2D: call [eax+00000738h]
0080ED33: lea eax, var_20
0080ED36: push eax
0080ED37: lea eax, var_1C
0080ED3A: push eax
0080ED3B: lea eax, var_18
0080ED3E: push eax
0080ED3F: push 00000003h
0080ED41: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080ED46: add esp, 00000010h
0080ED49: jmp 80EDA8h
0080ED4B: xor edx, edx
0080ED4D: lea ecx, var_20
0080ED50: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080ED55: mov edx, 00442938h
0080ED5A: lea ecx, var_1C
0080ED5D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080ED62: mov edx, 0043D60Ch ; x42
0080ED67: lea ecx, var_18
0080ED6A: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080ED6F: and word ptr var_28, 0000h
0080ED74: lea eax, var_20
0080ED77: push eax
0080ED78: lea eax, var_1C
0080ED7B: push eax
0080ED7C: lea eax, var_18
0080ED7F: push eax
0080ED80: lea eax, var_28
0080ED83: push eax
0080ED84: mov eax, [ebp+08h]
0080ED87: mov eax, [eax]
0080ED89: push [ebp+08h]
0080ED8C: call [eax+00000738h]
0080ED92: lea eax, var_20
0080ED95: push eax
0080ED96: lea eax, var_1C
0080ED99: push eax
0080ED9A: lea eax, var_18
0080ED9D: push eax
0080ED9E: push 00000003h
0080EDA0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080EDA5: add esp, 00000010h
0080EDA8: mov var_04, 00000000h
0080EDAF: push 0080EDD6h
0080EDB4: jmp 80EDD5h
0080EDB6: lea eax, var_20
0080EDB9: push eax
0080EDBA: lea eax, var_1C
0080EDBD: push eax
0080EDBE: lea eax, var_18
0080EDC1: push eax
0080EDC2: push 00000003h
0080EDC4: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080EDC9: add esp, 00000010h
0080EDCC: lea ecx, var_24
0080EDCF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080EDD4: ret 
End Sub

Private sub Command6__80EDF5
0080EDF5: push ebp
0080EDF6: mov ebp, esp
0080EDF8: sub esp, 0000000Ch
0080EDFB: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080EE00: mov eax, fs:[00h]
0080EE06: push eax
0080EE07: mov fs:[00000000h], esp
0080EE0E: push 0000002Ch
0080EE10: pop eax
0080EE11: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080EE16: push ebx
0080EE17: push esi
0080EE18: push edi
0080EE19: mov var_0C, esp
0080EE1C: mov var_08, 0040A7A8h
0080EE23: mov eax, [ebp+08h]
0080EE26: and eax, 00000001h
0080EE29: mov var_04, eax
0080EE2C: mov eax, [ebp+08h]
0080EE2F: and al, FEh
0080EE31: mov [ebp+08h], eax
0080EE34: mov eax, [ebp+08h]
0080EE37: mov eax, [eax]
0080EE39: push [ebp+08h]
0080EE3C: call [eax+04h]
0080EE3F: mov eax, [ebp+08h]
0080EE42: mov eax, [eax]
0080EE44: push [ebp+08h]
0080EE47: call [eax+000002FCh]
0080EE4D: push eax
0080EE4E: lea eax, var_24
0080EE51: push eax
0080EE52: call 00410A84h ; Set (object)
0080EE57: mov var_2C, eax
0080EE5A: lea eax, var_28
0080EE5D: push eax
0080EE5E: mov eax, var_2C
0080EE61: mov eax, [eax]
0080EE63: push var_2C
0080EE66: call [eax+000000E0h]
0080EE6C: fclex 
0080EE6E: mov var_30, eax
0080EE71: cmp var_30, 00000000h
0080EE75: jnl 80EE91h
0080EE77: push 000000E0h
0080EE7C: push 00440DF8h
0080EE81: push var_2C
0080EE84: push var_30
0080EE87: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080EE8C: mov var_40, eax
0080EE8F: jmp 80EE95h
0080EE91: and var_40, 00000000h
0080EE95: xor eax, eax
0080EE97: cmp word ptr var_28, 0001h
0080EE9C: setz al
0080EE9F: neg eax
0080EEA1: mov var_34, ax
0080EEA5: lea ecx, var_24
0080EEA8: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080EEAD: movsx eax, word ptr var_34
0080EEB1: test eax, eax
0080EEB3: jz 80EF14h
0080EEB5: xor edx, edx
0080EEB7: lea ecx, var_20
0080EEBA: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080EEBF: mov edx, 00442938h
0080EEC4: lea ecx, var_1C
0080EEC7: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080EECC: mov edx, 0043D618h ; x43
0080EED1: lea ecx, var_18
0080EED4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080EED9: or word ptr var_28, FFFFh
0080EEDE: lea eax, var_20
0080EEE1: push eax
0080EEE2: lea eax, var_1C
0080EEE5: push eax
0080EEE6: lea eax, var_18
0080EEE9: push eax
0080EEEA: lea eax, var_28
0080EEED: push eax
0080EEEE: mov eax, [ebp+08h]
0080EEF1: mov eax, [eax]
0080EEF3: push [ebp+08h]
0080EEF6: call [eax+00000738h]
0080EEFC: lea eax, var_20
0080EEFF: push eax
0080EF00: lea eax, var_1C
0080EF03: push eax
0080EF04: lea eax, var_18
0080EF07: push eax
0080EF08: push 00000003h
0080EF0A: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080EF0F: add esp, 00000010h
0080EF12: jmp 80EF71h
0080EF14: xor edx, edx
0080EF16: lea ecx, var_20
0080EF19: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080EF1E: mov edx, 00442938h
0080EF23: lea ecx, var_1C
0080EF26: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080EF2B: mov edx, 0043D618h ; x43
0080EF30: lea ecx, var_18
0080EF33: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080EF38: and word ptr var_28, 0000h
0080EF3D: lea eax, var_20
0080EF40: push eax
0080EF41: lea eax, var_1C
0080EF44: push eax
0080EF45: lea eax, var_18
0080EF48: push eax
0080EF49: lea eax, var_28
0080EF4C: push eax
0080EF4D: mov eax, [ebp+08h]
0080EF50: mov eax, [eax]
0080EF52: push [ebp+08h]
0080EF55: call [eax+00000738h]
0080EF5B: lea eax, var_20
0080EF5E: push eax
0080EF5F: lea eax, var_1C
0080EF62: push eax
0080EF63: lea eax, var_18
0080EF66: push eax
0080EF67: push 00000003h
0080EF69: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080EF6E: add esp, 00000010h
0080EF71: mov var_04, 00000000h
0080EF78: push 0080EF9Fh
0080EF7D: jmp 80EF9Eh
0080EF7F: lea eax, var_20
0080EF82: push eax
0080EF83: lea eax, var_1C
0080EF86: push eax
0080EF87: lea eax, var_18
0080EF8A: push eax
0080EF8B: push 00000003h
0080EF8D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080EF92: add esp, 00000010h
0080EF95: lea ecx, var_24
0080EF98: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080EF9D: ret 
End Sub

Private sub Command7__80EFBE
0080EFBE: push ebp
0080EFBF: mov ebp, esp
0080EFC1: sub esp, 0000000Ch
0080EFC4: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080EFC9: mov eax, fs:[00h]
0080EFCF: push eax
0080EFD0: mov fs:[00000000h], esp
0080EFD7: push 0000002Ch
0080EFD9: pop eax
0080EFDA: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080EFDF: push ebx
0080EFE0: push esi
0080EFE1: push edi
0080EFE2: mov var_0C, esp
0080EFE5: mov var_08, 0040A7B8h
0080EFEC: mov eax, [ebp+08h]
0080EFEF: and eax, 00000001h
0080EFF2: mov var_04, eax
0080EFF5: mov eax, [ebp+08h]
0080EFF8: and al, FEh
0080EFFA: mov [ebp+08h], eax
0080EFFD: mov eax, [ebp+08h]
0080F000: mov eax, [eax]
0080F002: push [ebp+08h]
0080F005: call [eax+04h]
0080F008: mov eax, [ebp+08h]
0080F00B: mov eax, [eax]
0080F00D: push [ebp+08h]
0080F010: call [eax+000002FCh]
0080F016: push eax
0080F017: lea eax, var_24
0080F01A: push eax
0080F01B: call 00410A84h ; Set (object)
0080F020: mov var_2C, eax
0080F023: lea eax, var_28
0080F026: push eax
0080F027: mov eax, var_2C
0080F02A: mov eax, [eax]
0080F02C: push var_2C
0080F02F: call [eax+000000E0h]
0080F035: fclex 
0080F037: mov var_30, eax
0080F03A: cmp var_30, 00000000h
0080F03E: jnl 80F05Ah
0080F040: push 000000E0h
0080F045: push 00440DF8h
0080F04A: push var_2C
0080F04D: push var_30
0080F050: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080F055: mov var_40, eax
0080F058: jmp 80F05Eh
0080F05A: and var_40, 00000000h
0080F05E: xor eax, eax
0080F060: cmp word ptr var_28, 0001h
0080F065: setz al
0080F068: neg eax
0080F06A: mov var_34, ax
0080F06E: lea ecx, var_24
0080F071: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080F076: movsx eax, word ptr var_34
0080F07A: test eax, eax
0080F07C: jz 80F0DDh
0080F07E: xor edx, edx
0080F080: lea ecx, var_20
0080F083: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F088: mov edx, 00442938h
0080F08D: lea ecx, var_1C
0080F090: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F095: mov edx, 0043D624h ; x44
0080F09A: lea ecx, var_18
0080F09D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F0A2: or word ptr var_28, FFFFh
0080F0A7: lea eax, var_20
0080F0AA: push eax
0080F0AB: lea eax, var_1C
0080F0AE: push eax
0080F0AF: lea eax, var_18
0080F0B2: push eax
0080F0B3: lea eax, var_28
0080F0B6: push eax
0080F0B7: mov eax, [ebp+08h]
0080F0BA: mov eax, [eax]
0080F0BC: push [ebp+08h]
0080F0BF: call [eax+00000738h]
0080F0C5: lea eax, var_20
0080F0C8: push eax
0080F0C9: lea eax, var_1C
0080F0CC: push eax
0080F0CD: lea eax, var_18
0080F0D0: push eax
0080F0D1: push 00000003h
0080F0D3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080F0D8: add esp, 00000010h
0080F0DB: jmp 80F13Ah
0080F0DD: xor edx, edx
0080F0DF: lea ecx, var_20
0080F0E2: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F0E7: mov edx, 00442938h
0080F0EC: lea ecx, var_1C
0080F0EF: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F0F4: mov edx, 0043D624h ; x44
0080F0F9: lea ecx, var_18
0080F0FC: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F101: and word ptr var_28, 0000h
0080F106: lea eax, var_20
0080F109: push eax
0080F10A: lea eax, var_1C
0080F10D: push eax
0080F10E: lea eax, var_18
0080F111: push eax
0080F112: lea eax, var_28
0080F115: push eax
0080F116: mov eax, [ebp+08h]
0080F119: mov eax, [eax]
0080F11B: push [ebp+08h]
0080F11E: call [eax+00000738h]
0080F124: lea eax, var_20
0080F127: push eax
0080F128: lea eax, var_1C
0080F12B: push eax
0080F12C: lea eax, var_18
0080F12F: push eax
0080F130: push 00000003h
0080F132: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080F137: add esp, 00000010h
0080F13A: mov var_04, 00000000h
0080F141: push 0080F168h
0080F146: jmp 80F167h
0080F148: lea eax, var_20
0080F14B: push eax
0080F14C: lea eax, var_1C
0080F14F: push eax
0080F150: lea eax, var_18
0080F153: push eax
0080F154: push 00000003h
0080F156: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080F15B: add esp, 00000010h
0080F15E: lea ecx, var_24
0080F161: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080F166: ret 
End Sub

Private sub Command8__80F187
0080F187: push ebp
0080F188: mov ebp, esp
0080F18A: sub esp, 0000000Ch
0080F18D: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080F192: mov eax, fs:[00h]
0080F198: push eax
0080F199: mov fs:[00000000h], esp
0080F1A0: push 0000002Ch
0080F1A2: pop eax
0080F1A3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080F1A8: push ebx
0080F1A9: push esi
0080F1AA: push edi
0080F1AB: mov var_0C, esp
0080F1AE: mov var_08, 0040A7C8h
0080F1B5: mov eax, [ebp+08h]
0080F1B8: and eax, 00000001h
0080F1BB: mov var_04, eax
0080F1BE: mov eax, [ebp+08h]
0080F1C1: and al, FEh
0080F1C3: mov [ebp+08h], eax
0080F1C6: mov eax, [ebp+08h]
0080F1C9: mov eax, [eax]
0080F1CB: push [ebp+08h]
0080F1CE: call [eax+04h]
0080F1D1: mov eax, [ebp+08h]
0080F1D4: mov eax, [eax]
0080F1D6: push [ebp+08h]
0080F1D9: call [eax+000002FCh]
0080F1DF: push eax
0080F1E0: lea eax, var_24
0080F1E3: push eax
0080F1E4: call 00410A84h ; Set (object)
0080F1E9: mov var_2C, eax
0080F1EC: lea eax, var_28
0080F1EF: push eax
0080F1F0: mov eax, var_2C
0080F1F3: mov eax, [eax]
0080F1F5: push var_2C
0080F1F8: call [eax+000000E0h]
0080F1FE: fclex 
0080F200: mov var_30, eax
0080F203: cmp var_30, 00000000h
0080F207: jnl 80F223h
0080F209: push 000000E0h
0080F20E: push 00440DF8h
0080F213: push var_2C
0080F216: push var_30
0080F219: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080F21E: mov var_40, eax
0080F221: jmp 80F227h
0080F223: and var_40, 00000000h
0080F227: xor eax, eax
0080F229: cmp word ptr var_28, 0001h
0080F22E: setz al
0080F231: neg eax
0080F233: mov var_34, ax
0080F237: lea ecx, var_24
0080F23A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080F23F: movsx eax, word ptr var_34
0080F243: test eax, eax
0080F245: jz 80F2A6h
0080F247: xor edx, edx
0080F249: lea ecx, var_20
0080F24C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F251: mov edx, 00442938h
0080F256: lea ecx, var_1C
0080F259: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F25E: mov edx, 0043D630h ; x45
0080F263: lea ecx, var_18
0080F266: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F26B: or word ptr var_28, FFFFh
0080F270: lea eax, var_20
0080F273: push eax
0080F274: lea eax, var_1C
0080F277: push eax
0080F278: lea eax, var_18
0080F27B: push eax
0080F27C: lea eax, var_28
0080F27F: push eax
0080F280: mov eax, [ebp+08h]
0080F283: mov eax, [eax]
0080F285: push [ebp+08h]
0080F288: call [eax+00000738h]
0080F28E: lea eax, var_20
0080F291: push eax
0080F292: lea eax, var_1C
0080F295: push eax
0080F296: lea eax, var_18
0080F299: push eax
0080F29A: push 00000003h
0080F29C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080F2A1: add esp, 00000010h
0080F2A4: jmp 80F303h
0080F2A6: xor edx, edx
0080F2A8: lea ecx, var_20
0080F2AB: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F2B0: mov edx, 00442938h
0080F2B5: lea ecx, var_1C
0080F2B8: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F2BD: mov edx, 0043D630h ; x45
0080F2C2: lea ecx, var_18
0080F2C5: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F2CA: and word ptr var_28, 0000h
0080F2CF: lea eax, var_20
0080F2D2: push eax
0080F2D3: lea eax, var_1C
0080F2D6: push eax
0080F2D7: lea eax, var_18
0080F2DA: push eax
0080F2DB: lea eax, var_28
0080F2DE: push eax
0080F2DF: mov eax, [ebp+08h]
0080F2E2: mov eax, [eax]
0080F2E4: push [ebp+08h]
0080F2E7: call [eax+00000738h]
0080F2ED: lea eax, var_20
0080F2F0: push eax
0080F2F1: lea eax, var_1C
0080F2F4: push eax
0080F2F5: lea eax, var_18
0080F2F8: push eax
0080F2F9: push 00000003h
0080F2FB: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080F300: add esp, 00000010h
0080F303: mov var_04, 00000000h
0080F30A: push 0080F331h
0080F30F: jmp 80F330h
0080F311: lea eax, var_20
0080F314: push eax
0080F315: lea eax, var_1C
0080F318: push eax
0080F319: lea eax, var_18
0080F31C: push eax
0080F31D: push 00000003h
0080F31F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080F324: add esp, 00000010h
0080F327: lea ecx, var_24
0080F32A: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080F32F: ret 
End Sub

Private sub Command9__80F350
0080F350: push ebp
0080F351: mov ebp, esp
0080F353: sub esp, 0000000Ch
0080F356: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080F35B: mov eax, fs:[00h]
0080F361: push eax
0080F362: mov fs:[00000000h], esp
0080F369: push 0000002Ch
0080F36B: pop eax
0080F36C: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080F371: push ebx
0080F372: push esi
0080F373: push edi
0080F374: mov var_0C, esp
0080F377: mov var_08, 0040A7D8h
0080F37E: mov eax, [ebp+08h]
0080F381: and eax, 00000001h
0080F384: mov var_04, eax
0080F387: mov eax, [ebp+08h]
0080F38A: and al, FEh
0080F38C: mov [ebp+08h], eax
0080F38F: mov eax, [ebp+08h]
0080F392: mov eax, [eax]
0080F394: push [ebp+08h]
0080F397: call [eax+04h]
0080F39A: mov eax, [ebp+08h]
0080F39D: mov eax, [eax]
0080F39F: push [ebp+08h]
0080F3A2: call [eax+000002FCh]
0080F3A8: push eax
0080F3A9: lea eax, var_24
0080F3AC: push eax
0080F3AD: call 00410A84h ; Set (object)
0080F3B2: mov var_2C, eax
0080F3B5: lea eax, var_28
0080F3B8: push eax
0080F3B9: mov eax, var_2C
0080F3BC: mov eax, [eax]
0080F3BE: push var_2C
0080F3C1: call [eax+000000E0h]
0080F3C7: fclex 
0080F3C9: mov var_30, eax
0080F3CC: cmp var_30, 00000000h
0080F3D0: jnl 80F3ECh
0080F3D2: push 000000E0h
0080F3D7: push 00440DF8h
0080F3DC: push var_2C
0080F3DF: push var_30
0080F3E2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080F3E7: mov var_40, eax
0080F3EA: jmp 80F3F0h
0080F3EC: and var_40, 00000000h
0080F3F0: xor eax, eax
0080F3F2: cmp word ptr var_28, 0001h
0080F3F7: setz al
0080F3FA: neg eax
0080F3FC: mov var_34, ax
0080F400: lea ecx, var_24
0080F403: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080F408: movsx eax, word ptr var_34
0080F40C: test eax, eax
0080F40E: jz 80F46Fh
0080F410: xor edx, edx
0080F412: lea ecx, var_20
0080F415: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F41A: mov edx, 00442938h
0080F41F: lea ecx, var_1C
0080F422: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F427: mov edx, 0043D5F4h ; x40
0080F42C: lea ecx, var_18
0080F42F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F434: or word ptr var_28, FFFFh
0080F439: lea eax, var_20
0080F43C: push eax
0080F43D: lea eax, var_1C
0080F440: push eax
0080F441: lea eax, var_18
0080F444: push eax
0080F445: lea eax, var_28
0080F448: push eax
0080F449: mov eax, [ebp+08h]
0080F44C: mov eax, [eax]
0080F44E: push [ebp+08h]
0080F451: call [eax+00000738h]
0080F457: lea eax, var_20
0080F45A: push eax
0080F45B: lea eax, var_1C
0080F45E: push eax
0080F45F: lea eax, var_18
0080F462: push eax
0080F463: push 00000003h
0080F465: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080F46A: add esp, 00000010h
0080F46D: jmp 80F4CCh
0080F46F: xor edx, edx
0080F471: lea ecx, var_20
0080F474: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F479: mov edx, 00442938h
0080F47E: lea ecx, var_1C
0080F481: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F486: mov edx, 0043D5F4h ; x40
0080F48B: lea ecx, var_18
0080F48E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F493: and word ptr var_28, 0000h
0080F498: lea eax, var_20
0080F49B: push eax
0080F49C: lea eax, var_1C
0080F49F: push eax
0080F4A0: lea eax, var_18
0080F4A3: push eax
0080F4A4: lea eax, var_28
0080F4A7: push eax
0080F4A8: mov eax, [ebp+08h]
0080F4AB: mov eax, [eax]
0080F4AD: push [ebp+08h]
0080F4B0: call [eax+00000738h]
0080F4B6: lea eax, var_20
0080F4B9: push eax
0080F4BA: lea eax, var_1C
0080F4BD: push eax
0080F4BE: lea eax, var_18
0080F4C1: push eax
0080F4C2: push 00000003h
0080F4C4: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080F4C9: add esp, 00000010h
0080F4CC: mov var_04, 00000000h
0080F4D3: push 0080F4FAh
0080F4D8: jmp 80F4F9h
0080F4DA: lea eax, var_20
0080F4DD: push eax
0080F4DE: lea eax, var_1C
0080F4E1: push eax
0080F4E2: lea eax, var_18
0080F4E5: push eax
0080F4E6: push 00000003h
0080F4E8: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080F4ED: add esp, 00000010h
0080F4F0: lea ecx, var_24
0080F4F3: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080F4F8: ret 
End Sub

Private sub Command1__80DFBD
0080DFBD: push ebp
0080DFBE: mov ebp, esp
0080DFC0: sub esp, 0000000Ch
0080DFC3: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080DFC8: mov eax, fs:[00h]
0080DFCE: push eax
0080DFCF: mov fs:[00000000h], esp
0080DFD6: push 0000002Ch
0080DFD8: pop eax
0080DFD9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080DFDE: push ebx
0080DFDF: push esi
0080DFE0: push edi
0080DFE1: mov var_0C, esp
0080DFE4: mov var_08, 0040A738h
0080DFEB: mov eax, [ebp+08h]
0080DFEE: and eax, 00000001h
0080DFF1: mov var_04, eax
0080DFF4: mov eax, [ebp+08h]
0080DFF7: and al, FEh
0080DFF9: mov [ebp+08h], eax
0080DFFC: mov eax, [ebp+08h]
0080DFFF: mov eax, [eax]
0080E001: push [ebp+08h]
0080E004: call [eax+04h]
0080E007: mov eax, [ebp+08h]
0080E00A: mov eax, [eax]
0080E00C: push [ebp+08h]
0080E00F: call [eax+000002FCh]
0080E015: push eax
0080E016: lea eax, var_24
0080E019: push eax
0080E01A: call 00410A84h ; Set (object)
0080E01F: mov var_2C, eax
0080E022: lea eax, var_28
0080E025: push eax
0080E026: mov eax, var_2C
0080E029: mov eax, [eax]
0080E02B: push var_2C
0080E02E: call [eax+000000E0h]
0080E034: fclex 
0080E036: mov var_30, eax
0080E039: cmp var_30, 00000000h
0080E03D: jnl 80E059h
0080E03F: push 000000E0h
0080E044: push 00440DF8h
0080E049: push var_2C
0080E04C: push var_30
0080E04F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080E054: mov var_40, eax
0080E057: jmp 80E05Dh
0080E059: and var_40, 00000000h
0080E05D: xor eax, eax
0080E05F: cmp word ptr var_28, 0001h
0080E064: setz al
0080E067: neg eax
0080E069: mov var_34, ax
0080E06D: lea ecx, var_24
0080E070: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080E075: movsx eax, word ptr var_34
0080E079: test eax, eax
0080E07B: jz 80E0DCh
0080E07D: xor edx, edx
0080E07F: lea ecx, var_20
0080E082: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E087: mov edx, 00442938h
0080E08C: lea ecx, var_1C
0080E08F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E094: mov edx, 0043D5C4h ; x36
0080E099: lea ecx, var_18
0080E09C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E0A1: or word ptr var_28, FFFFh
0080E0A6: lea eax, var_20
0080E0A9: push eax
0080E0AA: lea eax, var_1C
0080E0AD: push eax
0080E0AE: lea eax, var_18
0080E0B1: push eax
0080E0B2: lea eax, var_28
0080E0B5: push eax
0080E0B6: mov eax, [ebp+08h]
0080E0B9: mov eax, [eax]
0080E0BB: push [ebp+08h]
0080E0BE: call [eax+00000738h]
0080E0C4: lea eax, var_20
0080E0C7: push eax
0080E0C8: lea eax, var_1C
0080E0CB: push eax
0080E0CC: lea eax, var_18
0080E0CF: push eax
0080E0D0: push 00000003h
0080E0D2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080E0D7: add esp, 00000010h
0080E0DA: jmp 80E139h
0080E0DC: xor edx, edx
0080E0DE: lea ecx, var_20
0080E0E1: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E0E6: mov edx, 00442938h
0080E0EB: lea ecx, var_1C
0080E0EE: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E0F3: mov edx, 0043D5C4h ; x36
0080E0F8: lea ecx, var_18
0080E0FB: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E100: and word ptr var_28, 0000h
0080E105: lea eax, var_20
0080E108: push eax
0080E109: lea eax, var_1C
0080E10C: push eax
0080E10D: lea eax, var_18
0080E110: push eax
0080E111: lea eax, var_28
0080E114: push eax
0080E115: mov eax, [ebp+08h]
0080E118: mov eax, [eax]
0080E11A: push [ebp+08h]
0080E11D: call [eax+00000738h]
0080E123: lea eax, var_20
0080E126: push eax
0080E127: lea eax, var_1C
0080E12A: push eax
0080E12B: lea eax, var_18
0080E12E: push eax
0080E12F: push 00000003h
0080E131: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080E136: add esp, 00000010h
0080E139: mov var_04, 00000000h
0080E140: push 0080E167h
0080E145: jmp 80E166h
0080E147: lea eax, var_20
0080E14A: push eax
0080E14B: lea eax, var_1C
0080E14E: push eax
0080E14F: lea eax, var_18
0080E152: push eax
0080E153: push 00000003h
0080E155: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080E15A: add esp, 00000010h
0080E15D: lea ecx, var_24
0080E160: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080E165: ret 
End Sub

Private sub Command10__80E186
0080E186: push ebp
0080E187: mov ebp, esp
0080E189: sub esp, 0000000Ch
0080E18C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080E191: mov eax, fs:[00h]
0080E197: push eax
0080E198: mov fs:[00000000h], esp
0080E19F: mov eax, 0000010Ch
0080E1A4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080E1A9: push ebx
0080E1AA: push esi
0080E1AB: push edi
0080E1AC: mov var_0C, esp
0080E1AF: mov var_08, 0040A748h
0080E1B6: mov eax, [ebp+08h]
0080E1B9: and eax, 00000001h
0080E1BC: mov var_04, eax
0080E1BF: mov eax, [ebp+08h]
0080E1C2: and al, FEh
0080E1C4: mov [ebp+08h], eax
0080E1C7: mov eax, [ebp+08h]
0080E1CA: mov eax, [eax]
0080E1CC: push [ebp+08h]
0080E1CF: call [eax+04h]
0080E1D2: mov var_0000008C, 80020004h
0080E1DC: mov var_00000094, 0000000Ah
0080E1E6: mov var_7C, 80020004h
0080E1ED: mov var_00000084, 0000000Ah
0080E1F7: mov var_6C, 80020004h
0080E1FE: mov var_74, 0000000Ah
0080E205: mov var_5C, 80020004h
0080E20C: mov var_64, 0000000Ah
0080E213: mov var_4C, 80020004h
0080E21A: mov var_54, 0000000Ah
0080E221: mov var_3C, 80020004h
0080E228: mov var_44, 0000000Ah
0080E22F: mov var_0000009C, 004534B4h ; What would you like to send?
0080E239: mov var_000000A4, 00000008h
0080E243: lea edx, var_000000A4
0080E249: lea ecx, var_34
0080E24C: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0080E251: lea eax, var_00000094
0080E257: push eax
0080E258: lea eax, var_00000084
0080E25E: push eax
0080E25F: lea eax, var_74
0080E262: push eax
0080E263: lea eax, var_64
0080E266: push eax
0080E267: lea eax, var_54
0080E26A: push eax
0080E26B: lea eax, var_44
0080E26E: push eax
0080E26F: lea eax, var_34
0080E272: push eax
0080E273: call 00410994h ; InputBox
0080E278: mov edx, eax
0080E27A: lea ecx, var_18
0080E27D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080E282: lea eax, var_00000094
0080E288: push eax
0080E289: lea eax, var_00000084
0080E28F: push eax
0080E290: lea eax, var_74
0080E293: push eax
0080E294: lea eax, var_64
0080E297: push eax
0080E298: lea eax, var_54
0080E29B: push eax
0080E29C: lea eax, var_44
0080E29F: push eax
0080E2A0: lea eax, var_34
0080E2A3: push eax
0080E2A4: push 00000007h
0080E2A6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080E2AB: add esp, 00000020h
0080E2AE: push var_18
0080E2B1: push 00000000h
0080E2B3: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0080E2B8: test eax, eax
0080E2BA: jnz 0080E342h
0080E2C0: mov var_5C, 80020004h
0080E2C7: mov var_64, 0000000Ah
0080E2CE: mov var_4C, 80020004h
0080E2D5: mov var_54, 0000000Ah
0080E2DC: mov var_3C, 80020004h
0080E2E3: mov var_44, 0000000Ah
0080E2EA: mov var_0000009C, 004534F4h ; Invalid message!
0080E2F4: mov var_000000A4, 00000008h
0080E2FE: lea edx, var_000000A4
0080E304: lea ecx, var_34
0080E307: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0080E30C: lea eax, var_64
0080E30F: push eax
0080E310: lea eax, var_54
0080E313: push eax
0080E314: lea eax, var_44
0080E317: push eax
0080E318: push 00000010h
0080E31A: lea eax, var_34
0080E31D: push eax
0080E31E: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0080E323: lea eax, var_64
0080E326: push eax
0080E327: lea eax, var_54
0080E32A: push eax
0080E32B: lea eax, var_44
0080E32E: push eax
0080E32F: lea eax, var_34
0080E332: push eax
0080E333: push 00000004h
0080E335: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080E33A: add esp, 00000014h
0080E33D: jmp 0080E48Bh
0080E342: mov eax, [ebp+08h]
0080E345: mov eax, [eax]
0080E347: push [ebp+08h]
0080E34A: call [eax+000002FCh]
0080E350: push eax
0080E351: lea eax, var_24
0080E354: push eax
0080E355: call 00410A84h ; Set (object)
0080E35A: mov var_0000010C, eax
0080E360: lea eax, var_00000108
0080E366: push eax
0080E367: mov eax, var_0000010C
0080E36D: mov eax, [eax]
0080E36F: push var_0000010C
0080E375: call [eax+000000E0h]
0080E37B: fclex 
0080E37D: mov var_00000110, eax
0080E383: cmp var_00000110, 00000000h
0080E38A: jnl 80E3AFh
0080E38C: push 000000E0h
0080E391: push 00440DF8h
0080E396: push var_0000010C
0080E39C: push var_00000110
0080E3A2: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080E3A7: mov var_00000120, eax
0080E3AD: jmp 80E3B6h
0080E3AF: and var_00000120, 00000000h
0080E3B6: xor eax, eax
0080E3B8: cmp word ptr var_00000108, 0001h
0080E3C0: setz al
0080E3C3: neg eax
0080E3C5: mov var_00000114, ax
0080E3CC: lea ecx, var_24
0080E3CF: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080E3D4: movsx eax, word ptr var_00000114
0080E3DB: test eax, eax
0080E3DD: jz 80E436h
0080E3DF: mov edx, 00442938h
0080E3E4: lea ecx, var_20
0080E3E7: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E3EC: mov edx, 0043D63Ch ; x46
0080E3F1: lea ecx, var_1C
0080E3F4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E3F9: or word ptr var_00000108, FFFFh
0080E401: lea eax, var_18
0080E404: push eax
0080E405: lea eax, var_20
0080E408: push eax
0080E409: lea eax, var_1C
0080E40C: push eax
0080E40D: lea eax, var_00000108
0080E413: push eax
0080E414: mov eax, [ebp+08h]
0080E417: mov eax, [eax]
0080E419: push [ebp+08h]
0080E41C: call [eax+00000738h]
0080E422: lea eax, var_20
0080E425: push eax
0080E426: lea eax, var_1C
0080E429: push eax
0080E42A: push 00000002h
0080E42C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080E431: add esp, 0000000Ch
0080E434: jmp 80E48Bh
0080E436: mov edx, 00442938h
0080E43B: lea ecx, var_20
0080E43E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E443: mov edx, 0043D63Ch ; x46
0080E448: lea ecx, var_1C
0080E44B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E450: and word ptr var_00000108, 0000h
0080E458: lea eax, var_18
0080E45B: push eax
0080E45C: lea eax, var_20
0080E45F: push eax
0080E460: lea eax, var_1C
0080E463: push eax
0080E464: lea eax, var_00000108
0080E46A: push eax
0080E46B: mov eax, [ebp+08h]
0080E46E: mov eax, [eax]
0080E470: push [ebp+08h]
0080E473: call [eax+00000738h]
0080E479: lea eax, var_20
0080E47C: push eax
0080E47D: lea eax, var_1C
0080E480: push eax
0080E481: push 00000002h
0080E483: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080E488: add esp, 0000000Ch
0080E48B: mov var_04, 00000000h
0080E492: push 0080E4E9h
0080E497: jmp 80E4E0h
0080E499: lea eax, var_20
0080E49C: push eax
0080E49D: lea eax, var_1C
0080E4A0: push eax
0080E4A1: push 00000002h
0080E4A3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080E4A8: add esp, 0000000Ch
0080E4AB: lea ecx, var_24
0080E4AE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080E4B3: lea eax, var_00000094
0080E4B9: push eax
0080E4BA: lea eax, var_00000084
0080E4C0: push eax
0080E4C1: lea eax, var_74
0080E4C4: push eax
0080E4C5: lea eax, var_64
0080E4C8: push eax
0080E4C9: lea eax, var_54
0080E4CC: push eax
0080E4CD: lea eax, var_44
0080E4D0: push eax
0080E4D1: lea eax, var_34
0080E4D4: push eax
0080E4D5: push 00000007h
0080E4D7: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080E4DC: add esp, 00000020h
0080E4DF: ret 
End Sub

Private sub Command11__80E508
0080E508: push ebp
0080E509: mov ebp, esp
0080E50B: sub esp, 0000000Ch
0080E50E: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080E513: mov eax, fs:[00h]
0080E519: push eax
0080E51A: mov fs:[00000000h], esp
0080E521: push 0000002Ch
0080E523: pop eax
0080E524: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080E529: push ebx
0080E52A: push esi
0080E52B: push edi
0080E52C: mov var_0C, esp
0080E52F: mov var_08, 0040A758h
0080E536: mov eax, [ebp+08h]
0080E539: and eax, 00000001h
0080E53C: mov var_04, eax
0080E53F: mov eax, [ebp+08h]
0080E542: and al, FEh
0080E544: mov [ebp+08h], eax
0080E547: mov eax, [ebp+08h]
0080E54A: mov eax, [eax]
0080E54C: push [ebp+08h]
0080E54F: call [eax+04h]
0080E552: mov eax, [ebp+08h]
0080E555: mov eax, [eax]
0080E557: push [ebp+08h]
0080E55A: call [eax+000002FCh]
0080E560: push eax
0080E561: lea eax, var_24
0080E564: push eax
0080E565: call 00410A84h ; Set (object)
0080E56A: mov var_2C, eax
0080E56D: lea eax, var_28
0080E570: push eax
0080E571: mov eax, var_2C
0080E574: mov eax, [eax]
0080E576: push var_2C
0080E579: call [eax+000000E0h]
0080E57F: fclex 
0080E581: mov var_30, eax
0080E584: cmp var_30, 00000000h
0080E588: jnl 80E5A4h
0080E58A: push 000000E0h
0080E58F: push 00440DF8h
0080E594: push var_2C
0080E597: push var_30
0080E59A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080E59F: mov var_40, eax
0080E5A2: jmp 80E5A8h
0080E5A4: and var_40, 00000000h
0080E5A8: xor eax, eax
0080E5AA: cmp word ptr var_28, 0001h
0080E5AF: setz al
0080E5B2: neg eax
0080E5B4: mov var_34, ax
0080E5B8: lea ecx, var_24
0080E5BB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080E5C0: movsx eax, word ptr var_34
0080E5C4: test eax, eax
0080E5C6: jz 80E627h
0080E5C8: xor edx, edx
0080E5CA: lea ecx, var_20
0080E5CD: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E5D2: mov edx, 00442938h
0080E5D7: lea ecx, var_1C
0080E5DA: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E5DF: mov edx, 0043D600h ; x41
0080E5E4: lea ecx, var_18
0080E5E7: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E5EC: or word ptr var_28, FFFFh
0080E5F1: lea eax, var_20
0080E5F4: push eax
0080E5F5: lea eax, var_1C
0080E5F8: push eax
0080E5F9: lea eax, var_18
0080E5FC: push eax
0080E5FD: lea eax, var_28
0080E600: push eax
0080E601: mov eax, [ebp+08h]
0080E604: mov eax, [eax]
0080E606: push [ebp+08h]
0080E609: call [eax+00000738h]
0080E60F: lea eax, var_20
0080E612: push eax
0080E613: lea eax, var_1C
0080E616: push eax
0080E617: lea eax, var_18
0080E61A: push eax
0080E61B: push 00000003h
0080E61D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080E622: add esp, 00000010h
0080E625: jmp 80E684h
0080E627: xor edx, edx
0080E629: lea ecx, var_20
0080E62C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E631: mov edx, 00442938h
0080E636: lea ecx, var_1C
0080E639: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E63E: mov edx, 0043D600h ; x41
0080E643: lea ecx, var_18
0080E646: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080E64B: and word ptr var_28, 0000h
0080E650: lea eax, var_20
0080E653: push eax
0080E654: lea eax, var_1C
0080E657: push eax
0080E658: lea eax, var_18
0080E65B: push eax
0080E65C: lea eax, var_28
0080E65F: push eax
0080E660: mov eax, [ebp+08h]
0080E663: mov eax, [eax]
0080E665: push [ebp+08h]
0080E668: call [eax+00000738h]
0080E66E: lea eax, var_20
0080E671: push eax
0080E672: lea eax, var_1C
0080E675: push eax
0080E676: lea eax, var_18
0080E679: push eax
0080E67A: push 00000003h
0080E67C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080E681: add esp, 00000010h
0080E684: mov var_04, 00000000h
0080E68B: push 0080E6B2h
0080E690: jmp 80E6B1h
0080E692: lea eax, var_20
0080E695: push eax
0080E696: lea eax, var_1C
0080E699: push eax
0080E69A: lea eax, var_18
0080E69D: push eax
0080E69E: push 00000003h
0080E6A0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080E6A5: add esp, 00000010h
0080E6A8: lea ecx, var_24
0080E6AB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080E6B0: ret 
End Sub

Private sub PushButton8__811576
00811576: push ebp
00811577: mov ebp, esp
00811579: sub esp, 0000000Ch
0081157C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00811581: mov eax, fs:[00h]
00811587: push eax
00811588: mov fs:[00000000h], esp
0081158F: push 0000002Ch
00811591: pop eax
00811592: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00811597: push ebx
00811598: push esi
00811599: push edi
0081159A: mov var_0C, esp
0081159D: mov var_08, 0040A908h
008115A4: mov eax, [ebp+08h]
008115A7: and eax, 00000001h
008115AA: mov var_04, eax
008115AD: mov eax, [ebp+08h]
008115B0: and al, FEh
008115B2: mov [ebp+08h], eax
008115B5: mov eax, [ebp+08h]
008115B8: mov eax, [eax]
008115BA: push [ebp+08h]
008115BD: call [eax+04h]
008115C0: mov eax, [ebp+08h]
008115C3: mov eax, [eax]
008115C5: push [ebp+08h]
008115C8: call [eax+000002FCh]
008115CE: push eax
008115CF: lea eax, var_24
008115D2: push eax
008115D3: call 00410A84h ; Set (object)
008115D8: mov var_2C, eax
008115DB: lea eax, var_28
008115DE: push eax
008115DF: mov eax, var_2C
008115E2: mov eax, [eax]
008115E4: push var_2C
008115E7: call [eax+000000E0h]
008115ED: fclex 
008115EF: mov var_30, eax
008115F2: cmp var_30, 00000000h
008115F6: jnl 811612h
008115F8: push 000000E0h
008115FD: push 00440DF8h
00811602: push var_2C
00811605: push var_30
00811608: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081160D: mov var_40, eax
00811610: jmp 811616h
00811612: and var_40, 00000000h
00811616: xor eax, eax
00811618: cmp word ptr var_28, 0001h
0081161D: setz al
00811620: neg eax
00811622: mov var_34, ax
00811626: lea ecx, var_24
00811629: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081162E: movsx eax, word ptr var_34
00811632: test eax, eax
00811634: jz 811695h
00811636: xor edx, edx
00811638: lea ecx, var_20
0081163B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811640: mov edx, 00442938h
00811645: lea ecx, var_1C
00811648: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081164D: mov edx, 0043D840h ; x89
00811652: lea ecx, var_18
00811655: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081165A: or word ptr var_28, FFFFh
0081165F: lea eax, var_20
00811662: push eax
00811663: lea eax, var_1C
00811666: push eax
00811667: lea eax, var_18
0081166A: push eax
0081166B: lea eax, var_28
0081166E: push eax
0081166F: mov eax, [ebp+08h]
00811672: mov eax, [eax]
00811674: push [ebp+08h]
00811677: call [eax+00000738h]
0081167D: lea eax, var_20
00811680: push eax
00811681: lea eax, var_1C
00811684: push eax
00811685: lea eax, var_18
00811688: push eax
00811689: push 00000003h
0081168B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00811690: add esp, 00000010h
00811693: jmp 8116F2h
00811695: xor edx, edx
00811697: lea ecx, var_20
0081169A: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081169F: mov edx, 00442938h
008116A4: lea ecx, var_1C
008116A7: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008116AC: mov edx, 0043D840h ; x89
008116B1: lea ecx, var_18
008116B4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008116B9: and word ptr var_28, 0000h
008116BE: lea eax, var_20
008116C1: push eax
008116C2: lea eax, var_1C
008116C5: push eax
008116C6: lea eax, var_18
008116C9: push eax
008116CA: lea eax, var_28
008116CD: push eax
008116CE: mov eax, [ebp+08h]
008116D1: mov eax, [eax]
008116D3: push [ebp+08h]
008116D6: call [eax+00000738h]
008116DC: lea eax, var_20
008116DF: push eax
008116E0: lea eax, var_1C
008116E3: push eax
008116E4: lea eax, var_18
008116E7: push eax
008116E8: push 00000003h
008116EA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008116EF: add esp, 00000010h
008116F2: mov var_04, 00000000h
008116F9: push 00811720h
008116FE: jmp 81171Fh
00811700: lea eax, var_20
00811703: push eax
00811704: lea eax, var_1C
00811707: push eax
00811708: lea eax, var_18
0081170B: push eax
0081170C: push 00000003h
0081170E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00811713: add esp, 00000010h
00811716: lea ecx, var_24
00811719: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081171E: ret 
End Sub

Private sub PushButton7__8113AD
008113AD: push ebp
008113AE: mov ebp, esp
008113B0: sub esp, 0000000Ch
008113B3: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008113B8: mov eax, fs:[00h]
008113BE: push eax
008113BF: mov fs:[00000000h], esp
008113C6: push 0000002Ch
008113C8: pop eax
008113C9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008113CE: push ebx
008113CF: push esi
008113D0: push edi
008113D1: mov var_0C, esp
008113D4: mov var_08, 0040A8F8h
008113DB: mov eax, [ebp+08h]
008113DE: and eax, 00000001h
008113E1: mov var_04, eax
008113E4: mov eax, [ebp+08h]
008113E7: and al, FEh
008113E9: mov [ebp+08h], eax
008113EC: mov eax, [ebp+08h]
008113EF: mov eax, [eax]
008113F1: push [ebp+08h]
008113F4: call [eax+04h]
008113F7: mov eax, [ebp+08h]
008113FA: mov eax, [eax]
008113FC: push [ebp+08h]
008113FF: call [eax+000002FCh]
00811405: push eax
00811406: lea eax, var_24
00811409: push eax
0081140A: call 00410A84h ; Set (object)
0081140F: mov var_2C, eax
00811412: lea eax, var_28
00811415: push eax
00811416: mov eax, var_2C
00811419: mov eax, [eax]
0081141B: push var_2C
0081141E: call [eax+000000E0h]
00811424: fclex 
00811426: mov var_30, eax
00811429: cmp var_30, 00000000h
0081142D: jnl 811449h
0081142F: push 000000E0h
00811434: push 00440DF8h
00811439: push var_2C
0081143C: push var_30
0081143F: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00811444: mov var_40, eax
00811447: jmp 81144Dh
00811449: and var_40, 00000000h
0081144D: xor eax, eax
0081144F: cmp word ptr var_28, 0001h
00811454: setz al
00811457: neg eax
00811459: mov var_34, ax
0081145D: lea ecx, var_24
00811460: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00811465: movsx eax, word ptr var_34
00811469: test eax, eax
0081146B: jz 8114CCh
0081146D: xor edx, edx
0081146F: lea ecx, var_20
00811472: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811477: mov edx, 00442938h
0081147C: lea ecx, var_1C
0081147F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811484: mov edx, 0043D834h ; x88
00811489: lea ecx, var_18
0081148C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811491: or word ptr var_28, FFFFh
00811496: lea eax, var_20
00811499: push eax
0081149A: lea eax, var_1C
0081149D: push eax
0081149E: lea eax, var_18
008114A1: push eax
008114A2: lea eax, var_28
008114A5: push eax
008114A6: mov eax, [ebp+08h]
008114A9: mov eax, [eax]
008114AB: push [ebp+08h]
008114AE: call [eax+00000738h]
008114B4: lea eax, var_20
008114B7: push eax
008114B8: lea eax, var_1C
008114BB: push eax
008114BC: lea eax, var_18
008114BF: push eax
008114C0: push 00000003h
008114C2: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008114C7: add esp, 00000010h
008114CA: jmp 811529h
008114CC: xor edx, edx
008114CE: lea ecx, var_20
008114D1: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008114D6: mov edx, 00442938h
008114DB: lea ecx, var_1C
008114DE: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008114E3: mov edx, 0043D834h ; x88
008114E8: lea ecx, var_18
008114EB: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008114F0: and word ptr var_28, 0000h
008114F5: lea eax, var_20
008114F8: push eax
008114F9: lea eax, var_1C
008114FC: push eax
008114FD: lea eax, var_18
00811500: push eax
00811501: lea eax, var_28
00811504: push eax
00811505: mov eax, [ebp+08h]
00811508: mov eax, [eax]
0081150A: push [ebp+08h]
0081150D: call [eax+00000738h]
00811513: lea eax, var_20
00811516: push eax
00811517: lea eax, var_1C
0081151A: push eax
0081151B: lea eax, var_18
0081151E: push eax
0081151F: push 00000003h
00811521: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00811526: add esp, 00000010h
00811529: mov var_04, 00000000h
00811530: push 00811557h
00811535: jmp 811556h
00811537: lea eax, var_20
0081153A: push eax
0081153B: lea eax, var_1C
0081153E: push eax
0081153F: lea eax, var_18
00811542: push eax
00811543: push 00000003h
00811545: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081154A: add esp, 00000010h
0081154D: lea ecx, var_24
00811550: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00811555: ret 
End Sub

Private sub PushButton9__81173F
0081173F: push ebp
00811740: mov ebp, esp
00811742: sub esp, 0000000Ch
00811745: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081174A: mov eax, fs:[00h]
00811750: push eax
00811751: mov fs:[00000000h], esp
00811758: push 0000002Ch
0081175A: pop eax
0081175B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00811760: push ebx
00811761: push esi
00811762: push edi
00811763: mov var_0C, esp
00811766: mov var_08, 0040A918h
0081176D: mov eax, [ebp+08h]
00811770: and eax, 00000001h
00811773: mov var_04, eax
00811776: mov eax, [ebp+08h]
00811779: and al, FEh
0081177B: mov [ebp+08h], eax
0081177E: mov eax, [ebp+08h]
00811781: mov eax, [eax]
00811783: push [ebp+08h]
00811786: call [eax+04h]
00811789: mov eax, [ebp+08h]
0081178C: mov eax, [eax]
0081178E: push [ebp+08h]
00811791: call [eax+000002FCh]
00811797: push eax
00811798: lea eax, var_24
0081179B: push eax
0081179C: call 00410A84h ; Set (object)
008117A1: mov var_2C, eax
008117A4: lea eax, var_28
008117A7: push eax
008117A8: mov eax, var_2C
008117AB: mov eax, [eax]
008117AD: push var_2C
008117B0: call [eax+000000E0h]
008117B6: fclex 
008117B8: mov var_30, eax
008117BB: cmp var_30, 00000000h
008117BF: jnl 8117DBh
008117C1: push 000000E0h
008117C6: push 00440DF8h
008117CB: push var_2C
008117CE: push var_30
008117D1: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008117D6: mov var_40, eax
008117D9: jmp 8117DFh
008117DB: and var_40, 00000000h
008117DF: xor eax, eax
008117E1: cmp word ptr var_28, 0001h
008117E6: setz al
008117E9: neg eax
008117EB: mov var_34, ax
008117EF: lea ecx, var_24
008117F2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008117F7: movsx eax, word ptr var_34
008117FB: test eax, eax
008117FD: jz 81185Eh
008117FF: xor edx, edx
00811801: lea ecx, var_20
00811804: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811809: mov edx, 00442938h
0081180E: lea ecx, var_1C
00811811: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811816: mov edx, 0043D84Ch ; x90
0081181B: lea ecx, var_18
0081181E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811823: or word ptr var_28, FFFFh
00811828: lea eax, var_20
0081182B: push eax
0081182C: lea eax, var_1C
0081182F: push eax
00811830: lea eax, var_18
00811833: push eax
00811834: lea eax, var_28
00811837: push eax
00811838: mov eax, [ebp+08h]
0081183B: mov eax, [eax]
0081183D: push [ebp+08h]
00811840: call [eax+00000738h]
00811846: lea eax, var_20
00811849: push eax
0081184A: lea eax, var_1C
0081184D: push eax
0081184E: lea eax, var_18
00811851: push eax
00811852: push 00000003h
00811854: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00811859: add esp, 00000010h
0081185C: jmp 8118BBh
0081185E: xor edx, edx
00811860: lea ecx, var_20
00811863: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811868: mov edx, 00442938h
0081186D: lea ecx, var_1C
00811870: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811875: mov edx, 0043D84Ch ; x90
0081187A: lea ecx, var_18
0081187D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811882: and word ptr var_28, 0000h
00811887: lea eax, var_20
0081188A: push eax
0081188B: lea eax, var_1C
0081188E: push eax
0081188F: lea eax, var_18
00811892: push eax
00811893: lea eax, var_28
00811896: push eax
00811897: mov eax, [ebp+08h]
0081189A: mov eax, [eax]
0081189C: push [ebp+08h]
0081189F: call [eax+00000738h]
008118A5: lea eax, var_20
008118A8: push eax
008118A9: lea eax, var_1C
008118AC: push eax
008118AD: lea eax, var_18
008118B0: push eax
008118B1: push 00000003h
008118B3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008118B8: add esp, 00000010h
008118BB: mov var_04, 00000000h
008118C2: push 008118E9h
008118C7: jmp 8118E8h
008118C9: lea eax, var_20
008118CC: push eax
008118CD: lea eax, var_1C
008118D0: push eax
008118D1: lea eax, var_18
008118D4: push eax
008118D5: push 00000003h
008118D7: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008118DC: add esp, 00000010h
008118DF: lea ecx, var_24
008118E2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008118E7: ret 
End Sub

Private sub PushButton4__810E52
00810E52: push ebp
00810E53: mov ebp, esp
00810E55: sub esp, 0000000Ch
00810E58: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00810E5D: mov eax, fs:[00h]
00810E63: push eax
00810E64: mov fs:[00000000h], esp
00810E6B: push 0000002Ch
00810E6D: pop eax
00810E6E: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00810E73: push ebx
00810E74: push esi
00810E75: push edi
00810E76: mov var_0C, esp
00810E79: mov var_08, 0040A8C8h
00810E80: mov eax, [ebp+08h]
00810E83: and eax, 00000001h
00810E86: mov var_04, eax
00810E89: mov eax, [ebp+08h]
00810E8C: and al, FEh
00810E8E: mov [ebp+08h], eax
00810E91: mov eax, [ebp+08h]
00810E94: mov eax, [eax]
00810E96: push [ebp+08h]
00810E99: call [eax+04h]
00810E9C: mov eax, [ebp+08h]
00810E9F: mov eax, [eax]
00810EA1: push [ebp+08h]
00810EA4: call [eax+000002FCh]
00810EAA: push eax
00810EAB: lea eax, var_24
00810EAE: push eax
00810EAF: call 00410A84h ; Set (object)
00810EB4: mov var_2C, eax
00810EB7: lea eax, var_28
00810EBA: push eax
00810EBB: mov eax, var_2C
00810EBE: mov eax, [eax]
00810EC0: push var_2C
00810EC3: call [eax+000000E0h]
00810EC9: fclex 
00810ECB: mov var_30, eax
00810ECE: cmp var_30, 00000000h
00810ED2: jnl 810EEEh
00810ED4: push 000000E0h
00810ED9: push 00440DF8h
00810EDE: push var_2C
00810EE1: push var_30
00810EE4: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00810EE9: mov var_40, eax
00810EEC: jmp 810EF2h
00810EEE: and var_40, 00000000h
00810EF2: xor eax, eax
00810EF4: cmp word ptr var_28, 0001h
00810EF9: setz al
00810EFC: neg eax
00810EFE: mov var_34, ax
00810F02: lea ecx, var_24
00810F05: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00810F0A: movsx eax, word ptr var_34
00810F0E: test eax, eax
00810F10: jz 810F71h
00810F12: xor edx, edx
00810F14: lea ecx, var_20
00810F17: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810F1C: mov edx, 00442938h
00810F21: lea ecx, var_1C
00810F24: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810F29: mov edx, 0043D810h ; x85
00810F2E: lea ecx, var_18
00810F31: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810F36: or word ptr var_28, FFFFh
00810F3B: lea eax, var_20
00810F3E: push eax
00810F3F: lea eax, var_1C
00810F42: push eax
00810F43: lea eax, var_18
00810F46: push eax
00810F47: lea eax, var_28
00810F4A: push eax
00810F4B: mov eax, [ebp+08h]
00810F4E: mov eax, [eax]
00810F50: push [ebp+08h]
00810F53: call [eax+00000738h]
00810F59: lea eax, var_20
00810F5C: push eax
00810F5D: lea eax, var_1C
00810F60: push eax
00810F61: lea eax, var_18
00810F64: push eax
00810F65: push 00000003h
00810F67: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00810F6C: add esp, 00000010h
00810F6F: jmp 810FCEh
00810F71: xor edx, edx
00810F73: lea ecx, var_20
00810F76: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810F7B: mov edx, 00442938h
00810F80: lea ecx, var_1C
00810F83: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810F88: mov edx, 0043D810h ; x85
00810F8D: lea ecx, var_18
00810F90: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810F95: and word ptr var_28, 0000h
00810F9A: lea eax, var_20
00810F9D: push eax
00810F9E: lea eax, var_1C
00810FA1: push eax
00810FA2: lea eax, var_18
00810FA5: push eax
00810FA6: lea eax, var_28
00810FA9: push eax
00810FAA: mov eax, [ebp+08h]
00810FAD: mov eax, [eax]
00810FAF: push [ebp+08h]
00810FB2: call [eax+00000738h]
00810FB8: lea eax, var_20
00810FBB: push eax
00810FBC: lea eax, var_1C
00810FBF: push eax
00810FC0: lea eax, var_18
00810FC3: push eax
00810FC4: push 00000003h
00810FC6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00810FCB: add esp, 00000010h
00810FCE: mov var_04, 00000000h
00810FD5: push 00810FFCh
00810FDA: jmp 810FFBh
00810FDC: lea eax, var_20
00810FDF: push eax
00810FE0: lea eax, var_1C
00810FE3: push eax
00810FE4: lea eax, var_18
00810FE7: push eax
00810FE8: push 00000003h
00810FEA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00810FEF: add esp, 00000010h
00810FF2: lea ecx, var_24
00810FF5: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00810FFA: ret 
End Sub

Private sub PushButton3__810C89
00810C89: push ebp
00810C8A: mov ebp, esp
00810C8C: sub esp, 0000000Ch
00810C8F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00810C94: mov eax, fs:[00h]
00810C9A: push eax
00810C9B: mov fs:[00000000h], esp
00810CA2: push 0000002Ch
00810CA4: pop eax
00810CA5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00810CAA: push ebx
00810CAB: push esi
00810CAC: push edi
00810CAD: mov var_0C, esp
00810CB0: mov var_08, 0040A8B8h
00810CB7: mov eax, [ebp+08h]
00810CBA: and eax, 00000001h
00810CBD: mov var_04, eax
00810CC0: mov eax, [ebp+08h]
00810CC3: and al, FEh
00810CC5: mov [ebp+08h], eax
00810CC8: mov eax, [ebp+08h]
00810CCB: mov eax, [eax]
00810CCD: push [ebp+08h]
00810CD0: call [eax+04h]
00810CD3: mov eax, [ebp+08h]
00810CD6: mov eax, [eax]
00810CD8: push [ebp+08h]
00810CDB: call [eax+000002FCh]
00810CE1: push eax
00810CE2: lea eax, var_24
00810CE5: push eax
00810CE6: call 00410A84h ; Set (object)
00810CEB: mov var_2C, eax
00810CEE: lea eax, var_28
00810CF1: push eax
00810CF2: mov eax, var_2C
00810CF5: mov eax, [eax]
00810CF7: push var_2C
00810CFA: call [eax+000000E0h]
00810D00: fclex 
00810D02: mov var_30, eax
00810D05: cmp var_30, 00000000h
00810D09: jnl 810D25h
00810D0B: push 000000E0h
00810D10: push 00440DF8h
00810D15: push var_2C
00810D18: push var_30
00810D1B: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00810D20: mov var_40, eax
00810D23: jmp 810D29h
00810D25: and var_40, 00000000h
00810D29: xor eax, eax
00810D2B: cmp word ptr var_28, 0001h
00810D30: setz al
00810D33: neg eax
00810D35: mov var_34, ax
00810D39: lea ecx, var_24
00810D3C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00810D41: movsx eax, word ptr var_34
00810D45: test eax, eax
00810D47: jz 810DA8h
00810D49: xor edx, edx
00810D4B: lea ecx, var_20
00810D4E: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810D53: mov edx, 00442938h
00810D58: lea ecx, var_1C
00810D5B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810D60: mov edx, 0043D804h ; x84
00810D65: lea ecx, var_18
00810D68: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810D6D: or word ptr var_28, FFFFh
00810D72: lea eax, var_20
00810D75: push eax
00810D76: lea eax, var_1C
00810D79: push eax
00810D7A: lea eax, var_18
00810D7D: push eax
00810D7E: lea eax, var_28
00810D81: push eax
00810D82: mov eax, [ebp+08h]
00810D85: mov eax, [eax]
00810D87: push [ebp+08h]
00810D8A: call [eax+00000738h]
00810D90: lea eax, var_20
00810D93: push eax
00810D94: lea eax, var_1C
00810D97: push eax
00810D98: lea eax, var_18
00810D9B: push eax
00810D9C: push 00000003h
00810D9E: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00810DA3: add esp, 00000010h
00810DA6: jmp 810E05h
00810DA8: xor edx, edx
00810DAA: lea ecx, var_20
00810DAD: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810DB2: mov edx, 00442938h
00810DB7: lea ecx, var_1C
00810DBA: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810DBF: mov edx, 0043D804h ; x84
00810DC4: lea ecx, var_18
00810DC7: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810DCC: and word ptr var_28, 0000h
00810DD1: lea eax, var_20
00810DD4: push eax
00810DD5: lea eax, var_1C
00810DD8: push eax
00810DD9: lea eax, var_18
00810DDC: push eax
00810DDD: lea eax, var_28
00810DE0: push eax
00810DE1: mov eax, [ebp+08h]
00810DE4: mov eax, [eax]
00810DE6: push [ebp+08h]
00810DE9: call [eax+00000738h]
00810DEF: lea eax, var_20
00810DF2: push eax
00810DF3: lea eax, var_1C
00810DF6: push eax
00810DF7: lea eax, var_18
00810DFA: push eax
00810DFB: push 00000003h
00810DFD: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00810E02: add esp, 00000010h
00810E05: mov var_04, 00000000h
00810E0C: push 00810E33h
00810E11: jmp 810E32h
00810E13: lea eax, var_20
00810E16: push eax
00810E17: lea eax, var_1C
00810E1A: push eax
00810E1B: lea eax, var_18
00810E1E: push eax
00810E1F: push 00000003h
00810E21: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00810E26: add esp, 00000010h
00810E29: lea ecx, var_24
00810E2C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00810E31: ret 
End Sub

Private sub PushButton6__8111E4
008111E4: push ebp
008111E5: mov ebp, esp
008111E7: sub esp, 0000000Ch
008111EA: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008111EF: mov eax, fs:[00h]
008111F5: push eax
008111F6: mov fs:[00000000h], esp
008111FD: push 0000002Ch
008111FF: pop eax
00811200: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00811205: push ebx
00811206: push esi
00811207: push edi
00811208: mov var_0C, esp
0081120B: mov var_08, 0040A8E8h
00811212: mov eax, [ebp+08h]
00811215: and eax, 00000001h
00811218: mov var_04, eax
0081121B: mov eax, [ebp+08h]
0081121E: and al, FEh
00811220: mov [ebp+08h], eax
00811223: mov eax, [ebp+08h]
00811226: mov eax, [eax]
00811228: push [ebp+08h]
0081122B: call [eax+04h]
0081122E: mov eax, [ebp+08h]
00811231: mov eax, [eax]
00811233: push [ebp+08h]
00811236: call [eax+000002FCh]
0081123C: push eax
0081123D: lea eax, var_24
00811240: push eax
00811241: call 00410A84h ; Set (object)
00811246: mov var_2C, eax
00811249: lea eax, var_28
0081124C: push eax
0081124D: mov eax, var_2C
00811250: mov eax, [eax]
00811252: push var_2C
00811255: call [eax+000000E0h]
0081125B: fclex 
0081125D: mov var_30, eax
00811260: cmp var_30, 00000000h
00811264: jnl 811280h
00811266: push 000000E0h
0081126B: push 00440DF8h
00811270: push var_2C
00811273: push var_30
00811276: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0081127B: mov var_40, eax
0081127E: jmp 811284h
00811280: and var_40, 00000000h
00811284: xor eax, eax
00811286: cmp word ptr var_28, 0001h
0081128B: setz al
0081128E: neg eax
00811290: mov var_34, ax
00811294: lea ecx, var_24
00811297: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081129C: movsx eax, word ptr var_34
008112A0: test eax, eax
008112A2: jz 811303h
008112A4: xor edx, edx
008112A6: lea ecx, var_20
008112A9: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008112AE: mov edx, 00442938h
008112B3: lea ecx, var_1C
008112B6: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008112BB: mov edx, 0043D828h ; x87
008112C0: lea ecx, var_18
008112C3: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008112C8: or word ptr var_28, FFFFh
008112CD: lea eax, var_20
008112D0: push eax
008112D1: lea eax, var_1C
008112D4: push eax
008112D5: lea eax, var_18
008112D8: push eax
008112D9: lea eax, var_28
008112DC: push eax
008112DD: mov eax, [ebp+08h]
008112E0: mov eax, [eax]
008112E2: push [ebp+08h]
008112E5: call [eax+00000738h]
008112EB: lea eax, var_20
008112EE: push eax
008112EF: lea eax, var_1C
008112F2: push eax
008112F3: lea eax, var_18
008112F6: push eax
008112F7: push 00000003h
008112F9: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008112FE: add esp, 00000010h
00811301: jmp 811360h
00811303: xor edx, edx
00811305: lea ecx, var_20
00811308: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081130D: mov edx, 00442938h
00811312: lea ecx, var_1C
00811315: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081131A: mov edx, 0043D828h ; x87
0081131F: lea ecx, var_18
00811322: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811327: and word ptr var_28, 0000h
0081132C: lea eax, var_20
0081132F: push eax
00811330: lea eax, var_1C
00811333: push eax
00811334: lea eax, var_18
00811337: push eax
00811338: lea eax, var_28
0081133B: push eax
0081133C: mov eax, [ebp+08h]
0081133F: mov eax, [eax]
00811341: push [ebp+08h]
00811344: call [eax+00000738h]
0081134A: lea eax, var_20
0081134D: push eax
0081134E: lea eax, var_1C
00811351: push eax
00811352: lea eax, var_18
00811355: push eax
00811356: push 00000003h
00811358: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081135D: add esp, 00000010h
00811360: mov var_04, 00000000h
00811367: push 0081138Eh
0081136C: jmp 81138Dh
0081136E: lea eax, var_20
00811371: push eax
00811372: lea eax, var_1C
00811375: push eax
00811376: lea eax, var_18
00811379: push eax
0081137A: push 00000003h
0081137C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00811381: add esp, 00000010h
00811384: lea ecx, var_24
00811387: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0081138C: ret 
End Sub

Private sub PushButton5__81101B
0081101B: push ebp
0081101C: mov ebp, esp
0081101E: sub esp, 0000000Ch
00811021: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00811026: mov eax, fs:[00h]
0081102C: push eax
0081102D: mov fs:[00000000h], esp
00811034: push 0000002Ch
00811036: pop eax
00811037: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0081103C: push ebx
0081103D: push esi
0081103E: push edi
0081103F: mov var_0C, esp
00811042: mov var_08, 0040A8D8h
00811049: mov eax, [ebp+08h]
0081104C: and eax, 00000001h
0081104F: mov var_04, eax
00811052: mov eax, [ebp+08h]
00811055: and al, FEh
00811057: mov [ebp+08h], eax
0081105A: mov eax, [ebp+08h]
0081105D: mov eax, [eax]
0081105F: push [ebp+08h]
00811062: call [eax+04h]
00811065: mov eax, [ebp+08h]
00811068: mov eax, [eax]
0081106A: push [ebp+08h]
0081106D: call [eax+000002FCh]
00811073: push eax
00811074: lea eax, var_24
00811077: push eax
00811078: call 00410A84h ; Set (object)
0081107D: mov var_2C, eax
00811080: lea eax, var_28
00811083: push eax
00811084: mov eax, var_2C
00811087: mov eax, [eax]
00811089: push var_2C
0081108C: call [eax+000000E0h]
00811092: fclex 
00811094: mov var_30, eax
00811097: cmp var_30, 00000000h
0081109B: jnl 8110B7h
0081109D: push 000000E0h
008110A2: push 00440DF8h
008110A7: push var_2C
008110AA: push var_30
008110AD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008110B2: mov var_40, eax
008110B5: jmp 8110BBh
008110B7: and var_40, 00000000h
008110BB: xor eax, eax
008110BD: cmp word ptr var_28, 0001h
008110C2: setz al
008110C5: neg eax
008110C7: mov var_34, ax
008110CB: lea ecx, var_24
008110CE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008110D3: movsx eax, word ptr var_34
008110D7: test eax, eax
008110D9: jz 81113Ah
008110DB: xor edx, edx
008110DD: lea ecx, var_20
008110E0: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008110E5: mov edx, 00442938h
008110EA: lea ecx, var_1C
008110ED: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008110F2: mov edx, 0043D81Ch ; x86
008110F7: lea ecx, var_18
008110FA: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008110FF: or word ptr var_28, FFFFh
00811104: lea eax, var_20
00811107: push eax
00811108: lea eax, var_1C
0081110B: push eax
0081110C: lea eax, var_18
0081110F: push eax
00811110: lea eax, var_28
00811113: push eax
00811114: mov eax, [ebp+08h]
00811117: mov eax, [eax]
00811119: push [ebp+08h]
0081111C: call [eax+00000738h]
00811122: lea eax, var_20
00811125: push eax
00811126: lea eax, var_1C
00811129: push eax
0081112A: lea eax, var_18
0081112D: push eax
0081112E: push 00000003h
00811130: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00811135: add esp, 00000010h
00811138: jmp 811197h
0081113A: xor edx, edx
0081113C: lea ecx, var_20
0081113F: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811144: mov edx, 00442938h
00811149: lea ecx, var_1C
0081114C: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00811151: mov edx, 0043D81Ch ; x86
00811156: lea ecx, var_18
00811159: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081115E: and word ptr var_28, 0000h
00811163: lea eax, var_20
00811166: push eax
00811167: lea eax, var_1C
0081116A: push eax
0081116B: lea eax, var_18
0081116E: push eax
0081116F: lea eax, var_28
00811172: push eax
00811173: mov eax, [ebp+08h]
00811176: mov eax, [eax]
00811178: push [ebp+08h]
0081117B: call [eax+00000738h]
00811181: lea eax, var_20
00811184: push eax
00811185: lea eax, var_1C
00811188: push eax
00811189: lea eax, var_18
0081118C: push eax
0081118D: push 00000003h
0081118F: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00811194: add esp, 00000010h
00811197: mov var_04, 00000000h
0081119E: push 008111C5h
008111A3: jmp 8111C4h
008111A5: lea eax, var_20
008111A8: push eax
008111A9: lea eax, var_1C
008111AC: push eax
008111AD: lea eax, var_18
008111B0: push eax
008111B1: push 00000003h
008111B3: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008111B8: add esp, 00000010h
008111BB: lea ecx, var_24
008111BE: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008111C3: ret 
End Sub

Private sub PushButton2__810791
00810791: push ebp
00810792: mov ebp, esp
00810794: sub esp, 0000000Ch
00810797: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081079C: mov eax, fs:[00h]
008107A2: push eax
008107A3: mov fs:[00000000h], esp
008107AA: mov eax, 00000118h
008107AF: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008107B4: push ebx
008107B5: push esi
008107B6: push edi
008107B7: mov var_0C, esp
008107BA: mov var_08, 0040A8A8h
008107C1: mov eax, [ebp+08h]
008107C4: and eax, 00000001h
008107C7: mov var_04, eax
008107CA: mov eax, [ebp+08h]
008107CD: and al, FEh
008107CF: mov [ebp+08h], eax
008107D2: mov eax, [ebp+08h]
008107D5: mov eax, [eax]
008107D7: push [ebp+08h]
008107DA: call [eax+04h]
008107DD: mov var_00000098, 80020004h
008107E7: mov var_000000A0, 0000000Ah
008107F1: mov var_00000088, 80020004h
008107FB: mov var_00000090, 0000000Ah
00810805: mov var_78, 80020004h
0081080C: mov var_80, 0000000Ah
00810813: mov var_68, 80020004h
0081081A: mov var_70, 0000000Ah
00810821: mov var_58, 80020004h
00810828: mov var_60, 0000000Ah
0081082F: mov var_48, 80020004h
00810836: mov var_50, 0000000Ah
0081083D: mov var_000000A8, 004535CCh ; Please type the messasge you would like to be read aloud
00810847: mov var_000000B0, 00000008h
00810851: lea edx, var_000000B0
00810857: lea ecx, var_40
0081085A: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0081085F: lea eax, var_000000A0
00810865: push eax
00810866: lea eax, var_00000090
0081086C: push eax
0081086D: lea eax, var_80
00810870: push eax
00810871: lea eax, var_70
00810874: push eax
00810875: lea eax, var_60
00810878: push eax
00810879: lea eax, var_50
0081087C: push eax
0081087D: lea eax, var_40
00810880: push eax
00810881: call 00410994h ; InputBox
00810886: mov edx, eax
00810888: lea ecx, var_1C
0081088B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00810890: lea eax, var_000000A0
00810896: push eax
00810897: lea eax, var_00000090
0081089D: push eax
0081089E: lea eax, var_80
008108A1: push eax
008108A2: lea eax, var_70
008108A5: push eax
008108A6: lea eax, var_60
008108A9: push eax
008108AA: lea eax, var_50
008108AD: push eax
008108AE: lea eax, var_40
008108B1: push eax
008108B2: push 00000007h
008108B4: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008108B9: add esp, 00000020h
008108BC: mov var_00000098, 80020004h
008108C6: mov var_000000A0, 0000000Ah
008108D0: mov var_00000088, 80020004h
008108DA: mov var_00000090, 0000000Ah
008108E4: mov var_78, 80020004h
008108EB: mov var_80, 0000000Ah
008108F2: mov var_68, 80020004h
008108F9: mov var_70, 0000000Ah
00810900: mov var_58, 80020004h
00810907: mov var_60, 0000000Ah
0081090E: mov var_48, 80020004h
00810915: mov var_50, 0000000Ah
0081091C: mov var_000000A8, 00453690h ; Enter 0 for default-speed, 1 for slow-mo, 2 for speedy talking.
00810926: mov var_000000B0, 00000008h
00810930: lea edx, var_000000B0
00810936: lea ecx, var_40
00810939: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0081093E: lea eax, var_000000A0
00810944: push eax
00810945: lea eax, var_00000090
0081094B: push eax
0081094C: lea eax, var_80
0081094F: push eax
00810950: lea eax, var_70
00810953: push eax
00810954: lea eax, var_60
00810957: push eax
00810958: lea eax, var_50
0081095B: push eax
0081095C: lea eax, var_40
0081095F: push eax
00810960: call 00410994h ; InputBox
00810965: mov edx, eax
00810967: lea ecx, var_18
0081096A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0081096F: lea eax, var_000000A0
00810975: push eax
00810976: lea eax, var_00000090
0081097C: push eax
0081097D: lea eax, var_80
00810980: push eax
00810981: lea eax, var_70
00810984: push eax
00810985: lea eax, var_60
00810988: push eax
00810989: lea eax, var_50
0081098C: push eax
0081098D: lea eax, var_40
00810990: push eax
00810991: push 00000007h
00810993: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00810998: add esp, 00000020h
0081099B: push var_18
0081099E: push 00000000h
008109A0: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008109A5: test eax, eax
008109A7: jnz 8109BAh
008109A9: push 00000000h
008109AB: call 00410964h ; msvbvm60.dll.__vbaStrI2
008109B0: mov edx, eax
008109B2: lea ecx, var_18
008109B5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008109BA: push var_1C
008109BD: push 00000000h
008109BF: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
008109C4: test eax, eax
008109C6: jnz 00810A4Eh
008109CC: mov var_68, 80020004h
008109D3: mov var_70, 0000000Ah
008109DA: mov var_58, 80020004h
008109E1: mov var_60, 0000000Ah
008109E8: mov var_48, 80020004h
008109EF: mov var_50, 0000000Ah
008109F6: mov var_000000A8, 00453714h ; Your message cannot be blank!
00810A00: mov var_000000B0, 00000008h
00810A0A: lea edx, var_000000B0
00810A10: lea ecx, var_40
00810A13: call 004109E2h ; msvbvm60.dll.__vbaVarDup
00810A18: lea eax, var_70
00810A1B: push eax
00810A1C: lea eax, var_60
00810A1F: push eax
00810A20: lea eax, var_50
00810A23: push eax
00810A24: push 00000010h
00810A26: lea eax, var_40
00810A29: push eax
00810A2A: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
00810A2F: lea eax, var_70
00810A32: push eax
00810A33: lea eax, var_60
00810A36: push eax
00810A37: lea eax, var_50
00810A3A: push eax
00810A3B: lea eax, var_40
00810A3E: push eax
00810A3F: push 00000004h
00810A41: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00810A46: add esp, 00000014h
00810A49: jmp 00810BFCh
00810A4E: mov eax, [ebp+08h]
00810A51: mov eax, [eax]
00810A53: push [ebp+08h]
00810A56: call [eax+000002FCh]
00810A5C: push eax
00810A5D: lea eax, var_30
00810A60: push eax
00810A61: call 00410A84h ; Set (object)
00810A66: mov var_00000118, eax
00810A6C: lea eax, var_00000114
00810A72: push eax
00810A73: mov eax, var_00000118
00810A79: mov eax, [eax]
00810A7B: push var_00000118
00810A81: call [eax+000000E0h]
00810A87: fclex 
00810A89: mov var_0000011C, eax
00810A8F: cmp var_0000011C, 00000000h
00810A96: jnl 810ABBh
00810A98: push 000000E0h
00810A9D: push 00440DF8h
00810AA2: push var_00000118
00810AA8: push var_0000011C
00810AAE: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00810AB3: mov var_0000012C, eax
00810AB9: jmp 810AC2h
00810ABB: and var_0000012C, 00000000h
00810AC2: xor eax, eax
00810AC4: cmp word ptr var_00000114, 0001h
00810ACC: setz al
00810ACF: neg eax
00810AD1: mov var_00000120, ax
00810AD8: lea ecx, var_30
00810ADB: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00810AE0: movsx eax, word ptr var_00000120
00810AE7: test eax, eax
00810AE9: jz 00810B78h
00810AEF: xor edx, edx
00810AF1: lea ecx, var_2C
00810AF4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810AF9: push var_1C
00810AFC: push 004413D8h
00810B01: call 00410A18h ; &
00810B06: mov edx, eax
00810B08: lea ecx, var_20
00810B0B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00810B10: push eax
00810B11: push var_18
00810B14: call 00410A18h ; &
00810B19: mov edx, eax
00810B1B: lea ecx, var_28
00810B1E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00810B23: mov edx, 0043D7F8h ; x83
00810B28: lea ecx, var_24
00810B2B: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810B30: or word ptr var_00000114, FFFFh
00810B38: lea eax, var_2C
00810B3B: push eax
00810B3C: lea eax, var_28
00810B3F: push eax
00810B40: lea eax, var_24
00810B43: push eax
00810B44: lea eax, var_00000114
00810B4A: push eax
00810B4B: mov eax, [ebp+08h]
00810B4E: mov eax, [eax]
00810B50: push [ebp+08h]
00810B53: call [eax+00000738h]
00810B59: lea eax, var_2C
00810B5C: push eax
00810B5D: lea eax, var_28
00810B60: push eax
00810B61: lea eax, var_24
00810B64: push eax
00810B65: lea eax, var_20
00810B68: push eax
00810B69: push 00000004h
00810B6B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00810B70: add esp, 00000014h
00810B73: jmp 00810BFCh
00810B78: xor edx, edx
00810B7A: lea ecx, var_2C
00810B7D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810B82: push var_1C
00810B85: push 004413D8h
00810B8A: call 00410A18h ; &
00810B8F: mov edx, eax
00810B91: lea ecx, var_20
00810B94: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00810B99: push eax
00810B9A: push var_18
00810B9D: call 00410A18h ; &
00810BA2: mov edx, eax
00810BA4: lea ecx, var_28
00810BA7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00810BAC: mov edx, 0043D7F8h ; x83
00810BB1: lea ecx, var_24
00810BB4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810BB9: and word ptr var_00000114, 0000h
00810BC1: lea eax, var_2C
00810BC4: push eax
00810BC5: lea eax, var_28
00810BC8: push eax
00810BC9: lea eax, var_24
00810BCC: push eax
00810BCD: lea eax, var_00000114
00810BD3: push eax
00810BD4: mov eax, [ebp+08h]
00810BD7: mov eax, [eax]
00810BD9: push [ebp+08h]
00810BDC: call [eax+00000738h]
00810BE2: lea eax, var_2C
00810BE5: push eax
00810BE6: lea eax, var_28
00810BE9: push eax
00810BEA: lea eax, var_24
00810BED: push eax
00810BEE: lea eax, var_20
00810BF1: push eax
00810BF2: push 00000004h
00810BF4: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00810BF9: add esp, 00000014h
00810BFC: mov var_04, 00000000h
00810C03: push 00810C6Ah
00810C08: jmp 810C59h
00810C0A: lea eax, var_2C
00810C0D: push eax
00810C0E: lea eax, var_28
00810C11: push eax
00810C12: lea eax, var_24
00810C15: push eax
00810C16: lea eax, var_20
00810C19: push eax
00810C1A: push 00000004h
00810C1C: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00810C21: add esp, 00000014h
00810C24: lea ecx, var_30
00810C27: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00810C2C: lea eax, var_000000A0
00810C32: push eax
00810C33: lea eax, var_00000090
00810C39: push eax
00810C3A: lea eax, var_80
00810C3D: push eax
00810C3E: lea eax, var_70
00810C41: push eax
00810C42: lea eax, var_60
00810C45: push eax
00810C46: lea eax, var_50
00810C49: push eax
00810C4A: lea eax, var_40
00810C4D: push eax
00810C4E: push 00000007h
00810C50: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00810C55: add esp, 00000020h
00810C58: ret 
End Sub

Private sub PushButton1__80F519
0080F519: push ebp
0080F51A: mov ebp, esp
0080F51C: sub esp, 0000000Ch
0080F51F: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080F524: mov eax, fs:[00h]
0080F52A: push eax
0080F52B: mov fs:[00000000h], esp
0080F532: mov eax, 0000010Ch
0080F537: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080F53C: push ebx
0080F53D: push esi
0080F53E: push edi
0080F53F: mov var_0C, esp
0080F542: mov var_08, 0040A7E8h
0080F549: mov eax, [ebp+08h]
0080F54C: and eax, 00000001h
0080F54F: mov var_04, eax
0080F552: mov eax, [ebp+08h]
0080F555: and al, FEh
0080F557: mov [ebp+08h], eax
0080F55A: mov eax, [ebp+08h]
0080F55D: mov eax, [eax]
0080F55F: push [ebp+08h]
0080F562: call [eax+04h]
0080F565: mov var_0000008C, 80020004h
0080F56F: mov var_00000094, 0000000Ah
0080F579: mov var_7C, 80020004h
0080F580: mov var_00000084, 0000000Ah
0080F58A: mov var_6C, 80020004h
0080F591: mov var_74, 0000000Ah
0080F598: mov var_5C, 80020004h
0080F59F: mov var_64, 0000000Ah
0080F5A6: mov var_4C, 80020004h
0080F5AD: mov var_54, 0000000Ah
0080F5B4: mov var_3C, 80020004h
0080F5BB: mov var_44, 0000000Ah
0080F5C2: mov var_0000009C, 0045351Ch ; Please provide the URL to the new desktop in .jpg Format
0080F5CC: mov var_000000A4, 00000008h
0080F5D6: lea edx, var_000000A4
0080F5DC: lea ecx, var_34
0080F5DF: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0080F5E4: lea eax, var_00000094
0080F5EA: push eax
0080F5EB: lea eax, var_00000084
0080F5F1: push eax
0080F5F2: lea eax, var_74
0080F5F5: push eax
0080F5F6: lea eax, var_64
0080F5F9: push eax
0080F5FA: lea eax, var_54
0080F5FD: push eax
0080F5FE: lea eax, var_44
0080F601: push eax
0080F602: lea eax, var_34
0080F605: push eax
0080F606: call 00410994h ; InputBox
0080F60B: mov edx, eax
0080F60D: lea ecx, var_18
0080F610: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080F615: lea eax, var_00000094
0080F61B: push eax
0080F61C: lea eax, var_00000084
0080F622: push eax
0080F623: lea eax, var_74
0080F626: push eax
0080F627: lea eax, var_64
0080F62A: push eax
0080F62B: lea eax, var_54
0080F62E: push eax
0080F62F: lea eax, var_44
0080F632: push eax
0080F633: lea eax, var_34
0080F636: push eax
0080F637: push 00000007h
0080F639: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080F63E: add esp, 00000020h
0080F641: push var_18
0080F644: push 00000000h
0080F646: call 00410A00h ; msvbvm60.dll.__vbaStrCmp
0080F64B: test eax, eax
0080F64D: jnz 0080F6D5h
0080F653: mov var_5C, 80020004h
0080F65A: mov var_64, 0000000Ah
0080F661: mov var_4C, 80020004h
0080F668: mov var_54, 0000000Ah
0080F66F: mov var_3C, 80020004h
0080F676: mov var_44, 0000000Ah
0080F67D: mov var_0000009C, 00453594h ; Your URL cannot be blank!
0080F687: mov var_000000A4, 00000008h
0080F691: lea edx, var_000000A4
0080F697: lea ecx, var_34
0080F69A: call 004109E2h ; msvbvm60.dll.__vbaVarDup
0080F69F: lea eax, var_64
0080F6A2: push eax
0080F6A3: lea eax, var_54
0080F6A6: push eax
0080F6A7: lea eax, var_44
0080F6AA: push eax
0080F6AB: push 00000010h
0080F6AD: lea eax, var_34
0080F6B0: push eax
0080F6B1: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
0080F6B6: lea eax, var_64
0080F6B9: push eax
0080F6BA: lea eax, var_54
0080F6BD: push eax
0080F6BE: lea eax, var_44
0080F6C1: push eax
0080F6C2: lea eax, var_34
0080F6C5: push eax
0080F6C6: push 00000004h
0080F6C8: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080F6CD: add esp, 00000014h
0080F6D0: jmp 0080F818h
0080F6D5: mov eax, [ebp+08h]
0080F6D8: mov eax, [eax]
0080F6DA: push [ebp+08h]
0080F6DD: call [eax+000002FCh]
0080F6E3: push eax
0080F6E4: lea eax, var_24
0080F6E7: push eax
0080F6E8: call 00410A84h ; Set (object)
0080F6ED: mov var_0000010C, eax
0080F6F3: lea eax, var_00000108
0080F6F9: push eax
0080F6FA: mov eax, var_0000010C
0080F700: mov eax, [eax]
0080F702: push var_0000010C
0080F708: call [eax+000000E0h]
0080F70E: fclex 
0080F710: mov var_00000110, eax
0080F716: cmp var_00000110, 00000000h
0080F71D: jnl 80F742h
0080F71F: push 000000E0h
0080F724: push 00440DF8h
0080F729: push var_0000010C
0080F72F: push var_00000110
0080F735: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080F73A: mov var_00000120, eax
0080F740: jmp 80F749h
0080F742: and var_00000120, 00000000h
0080F749: xor eax, eax
0080F74B: cmp word ptr var_00000108, 0001h
0080F753: setz al
0080F756: neg eax
0080F758: mov var_00000114, ax
0080F75F: lea ecx, var_24
0080F762: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080F767: movsx eax, word ptr var_00000114
0080F76E: test eax, eax
0080F770: jz 80F7C6h
0080F772: xor edx, edx
0080F774: lea ecx, var_20
0080F777: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F77C: mov edx, 0043D7ECh ; x82
0080F781: lea ecx, var_1C
0080F784: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F789: or word ptr var_00000108, FFFFh
0080F791: lea eax, var_20
0080F794: push eax
0080F795: lea eax, var_18
0080F798: push eax
0080F799: lea eax, var_1C
0080F79C: push eax
0080F79D: lea eax, var_00000108
0080F7A3: push eax
0080F7A4: mov eax, [ebp+08h]
0080F7A7: mov eax, [eax]
0080F7A9: push [ebp+08h]
0080F7AC: call [eax+00000738h]
0080F7B2: lea eax, var_20
0080F7B5: push eax
0080F7B6: lea eax, var_1C
0080F7B9: push eax
0080F7BA: push 00000002h
0080F7BC: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080F7C1: add esp, 0000000Ch
0080F7C4: jmp 80F818h
0080F7C6: xor edx, edx
0080F7C8: lea ecx, var_20
0080F7CB: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F7D0: mov edx, 0043D7ECh ; x82
0080F7D5: lea ecx, var_1C
0080F7D8: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080F7DD: and word ptr var_00000108, 0000h
0080F7E5: lea eax, var_20
0080F7E8: push eax
0080F7E9: lea eax, var_18
0080F7EC: push eax
0080F7ED: lea eax, var_1C
0080F7F0: push eax
0080F7F1: lea eax, var_00000108
0080F7F7: push eax
0080F7F8: mov eax, [ebp+08h]
0080F7FB: mov eax, [eax]
0080F7FD: push [ebp+08h]
0080F800: call [eax+00000738h]
0080F806: lea eax, var_20
0080F809: push eax
0080F80A: lea eax, var_1C
0080F80D: push eax
0080F80E: push 00000002h
0080F810: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080F815: add esp, 0000000Ch
0080F818: mov var_04, 00000000h
0080F81F: push 0080F876h
0080F824: jmp 80F86Dh
0080F826: lea eax, var_20
0080F829: push eax
0080F82A: lea eax, var_1C
0080F82D: push eax
0080F82E: push 00000002h
0080F830: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080F835: add esp, 0000000Ch
0080F838: lea ecx, var_24
0080F83B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
0080F840: lea eax, var_00000094
0080F846: push eax
0080F847: lea eax, var_00000084
0080F84D: push eax
0080F84E: lea eax, var_74
0080F851: push eax
0080F852: lea eax, var_64
0080F855: push eax
0080F856: lea eax, var_54
0080F859: push eax
0080F85A: lea eax, var_44
0080F85D: push eax
0080F85E: lea eax, var_34
0080F861: push eax
0080F862: push 00000007h
0080F864: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080F869: add esp, 00000020h
0080F86C: ret 
End Sub

Private sub PushButton12__8103FF
008103FF: push ebp
00810400: mov ebp, esp
00810402: sub esp, 0000000Ch
00810405: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0081040A: mov eax, fs:[00h]
00810410: push eax
00810411: mov fs:[00000000h], esp
00810418: push 0000002Ch
0081041A: pop eax
0081041B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00810420: push ebx
00810421: push esi
00810422: push edi
00810423: mov var_0C, esp
00810426: mov var_08, 0040A888h
0081042D: mov eax, [ebp+08h]
00810430: and eax, 00000001h
00810433: mov var_04, eax
00810436: mov eax, [ebp+08h]
00810439: and al, FEh
0081043B: mov [ebp+08h], eax
0081043E: mov eax, [ebp+08h]
00810441: mov eax, [eax]
00810443: push [ebp+08h]
00810446: call [eax+04h]
00810449: mov eax, [ebp+08h]
0081044C: mov eax, [eax]
0081044E: push [ebp+08h]
00810451: call [eax+000002FCh]
00810457: push eax
00810458: lea eax, var_24
0081045B: push eax
0081045C: call 00410A84h ; Set (object)
00810461: mov var_2C, eax
00810464: lea eax, var_28
00810467: push eax
00810468: mov eax, var_2C
0081046B: mov eax, [eax]
0081046D: push var_2C
00810470: call [eax+000000E0h]
00810476: fclex 
00810478: mov var_30, eax
0081047B: cmp var_30, 00000000h
0081047F: jnl 81049Bh
00810481: push 000000E0h
00810486: push 00440DF8h
0081048B: push var_2C
0081048E: push var_30
00810491: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00810496: mov var_40, eax
00810499: jmp 81049Fh
0081049B: and var_40, 00000000h
0081049F: xor eax, eax
008104A1: cmp word ptr var_28, 0001h
008104A6: setz al
008104A9: neg eax
008104AB: mov var_34, ax
008104AF: lea ecx, var_24
008104B2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008104B7: movsx eax, word ptr var_34
008104BB: test eax, eax
008104BD: jz 81051Eh
008104BF: xor edx, edx
008104C1: lea ecx, var_20
008104C4: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008104C9: mov edx, 00442938h
008104CE: lea ecx, var_1C
008104D1: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008104D6: mov edx, 0043D904h ; x104
008104DB: lea ecx, var_18
008104DE: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
008104E3: or word ptr var_28, FFFFh
008104E8: lea eax, var_20
008104EB: push eax
008104EC: lea eax, var_1C
008104EF: push eax
008104F0: lea eax, var_18
008104F3: push eax
008104F4: lea eax, var_28
008104F7: push eax
008104F8: mov eax, [ebp+08h]
008104FB: mov eax, [eax]
008104FD: push [ebp+08h]
00810500: call [eax+00000738h]
00810506: lea eax, var_20
00810509: push eax
0081050A: lea eax, var_1C
0081050D: push eax
0081050E: lea eax, var_18
00810511: push eax
00810512: push 00000003h
00810514: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00810519: add esp, 00000010h
0081051C: jmp 81057Bh
0081051E: xor edx, edx
00810520: lea ecx, var_20
00810523: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810528: mov edx, 00442938h
0081052D: lea ecx, var_1C
00810530: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810535: mov edx, 0043D904h ; x104
0081053A: lea ecx, var_18
0081053D: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810542: and word ptr var_28, 0000h
00810547: lea eax, var_20
0081054A: push eax
0081054B: lea eax, var_1C
0081054E: push eax
0081054F: lea eax, var_18
00810552: push eax
00810553: lea eax, var_28
00810556: push eax
00810557: mov eax, [ebp+08h]
0081055A: mov eax, [eax]
0081055C: push [ebp+08h]
0081055F: call [eax+00000738h]
00810565: lea eax, var_20
00810568: push eax
00810569: lea eax, var_1C
0081056C: push eax
0081056D: lea eax, var_18
00810570: push eax
00810571: push 00000003h
00810573: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00810578: add esp, 00000010h
0081057B: mov var_04, 00000000h
00810582: push 008105A9h
00810587: jmp 8105A8h
00810589: lea eax, var_20
0081058C: push eax
0081058D: lea eax, var_1C
00810590: push eax
00810591: lea eax, var_18
00810594: push eax
00810595: push 00000003h
00810597: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0081059C: add esp, 00000010h
0081059F: lea ecx, var_24
008105A2: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008105A7: ret 
End Sub

Private sub PushButton11__810236
00810236: push ebp
00810237: mov ebp, esp
00810239: sub esp, 0000000Ch
0081023C: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00810241: mov eax, fs:[00h]
00810247: push eax
00810248: mov fs:[00000000h], esp
0081024F: push 0000002Ch
00810251: pop eax
00810252: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00810257: push ebx
00810258: push esi
00810259: push edi
0081025A: mov var_0C, esp
0081025D: mov var_08, 0040A878h
00810264: mov eax, [ebp+08h]
00810267: and eax, 00000001h
0081026A: mov var_04, eax
0081026D: mov eax, [ebp+08h]
00810270: and al, FEh
00810272: mov [ebp+08h], eax
00810275: mov eax, [ebp+08h]
00810278: mov eax, [eax]
0081027A: push [ebp+08h]
0081027D: call [eax+04h]
00810280: mov eax, [ebp+08h]
00810283: mov eax, [eax]
00810285: push [ebp+08h]
00810288: call [eax+000002FCh]
0081028E: push eax
0081028F: lea eax, var_24
00810292: push eax
00810293: call 00410A84h ; Set (object)
00810298: mov var_2C, eax
0081029B: lea eax, var_28
0081029E: push eax
0081029F: mov eax, var_2C
008102A2: mov eax, [eax]
008102A4: push var_2C
008102A7: call [eax+000000E0h]
008102AD: fclex 
008102AF: mov var_30, eax
008102B2: cmp var_30, 00000000h
008102B6: jnl 8102D2h
008102B8: push 000000E0h
008102BD: push 00440DF8h
008102C2: push var_2C
008102C5: push var_30
008102C8: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008102CD: mov var_40, eax
008102D0: jmp 8102D6h
008102D2: and var_40, 00000000h
008102D6: xor eax, eax
008102D8: cmp word ptr var_28, 0001h
008102DD: setz al
008102E0: neg eax
008102E2: mov var_34, ax
008102E6: lea ecx, var_24
008102E9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008102EE: movsx eax, word ptr var_34
008102F2: test eax, eax
008102F4: jz 810355h
008102F6: xor edx, edx
008102F8: lea ecx, var_20
008102FB: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810300: mov edx, 00442938h
00810305: lea ecx, var_1C
00810308: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081030D: mov edx, 0043D864h ; x92
00810312: lea ecx, var_18
00810315: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081031A: or word ptr var_28, FFFFh
0081031F: lea eax, var_20
00810322: push eax
00810323: lea eax, var_1C
00810326: push eax
00810327: lea eax, var_18
0081032A: push eax
0081032B: lea eax, var_28
0081032E: push eax
0081032F: mov eax, [ebp+08h]
00810332: mov eax, [eax]
00810334: push [ebp+08h]
00810337: call [eax+00000738h]
0081033D: lea eax, var_20
00810340: push eax
00810341: lea eax, var_1C
00810344: push eax
00810345: lea eax, var_18
00810348: push eax
00810349: push 00000003h
0081034B: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00810350: add esp, 00000010h
00810353: jmp 8103B2h
00810355: xor edx, edx
00810357: lea ecx, var_20
0081035A: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081035F: mov edx, 00442938h
00810364: lea ecx, var_1C
00810367: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0081036C: mov edx, 0043D864h ; x92
00810371: lea ecx, var_18
00810374: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
00810379: and word ptr var_28, 0000h
0081037E: lea eax, var_20
00810381: push eax
00810382: lea eax, var_1C
00810385: push eax
00810386: lea eax, var_18
00810389: push eax
0081038A: lea eax, var_28
0081038D: push eax
0081038E: mov eax, [ebp+08h]
00810391: mov eax, [eax]
00810393: push [ebp+08h]
00810396: call [eax+00000738h]
0081039C: lea eax, var_20
0081039F: push eax
008103A0: lea eax, var_1C
008103A3: push eax
008103A4: lea eax, var_18
008103A7: push eax
008103A8: push 00000003h
008103AA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008103AF: add esp, 00000010h
008103B2: mov var_04, 00000000h
008103B9: push 008103E0h
008103BE: jmp 8103DFh
008103C0: lea eax, var_20
008103C3: push eax
008103C4: lea eax, var_1C
008103C7: push eax
008103C8: lea eax, var_18
008103CB: push eax
008103CC: push 00000003h
008103CE: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008103D3: add esp, 00000010h
008103D6: lea ecx, var_24
008103D9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008103DE: ret 
End Sub

Private sub unknown_80F895
0080F895: push ebp
0080F896: mov ebp, esp
0080F898: sub esp, 00000018h
0080F89B: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
0080F8A0: mov eax, fs:[00h]
0080F8A6: push eax
0080F8A7: mov fs:[00000000h], esp
0080F8AE: mov eax, 000000D0h
0080F8B3: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080F8B8: push ebx
0080F8B9: push esi
0080F8BA: push edi
0080F8BB: mov var_18, esp
0080F8BE: mov var_14, 0040A7F8h
0080F8C5: mov var_10, 00000000h
0080F8CC: mov var_0C, 00000000h
0080F8D3: mov var_04, 00000001h
0080F8DA: mov var_04, 00000002h
0080F8E1: push FFFFFFFFh
0080F8E3: call 00410A60h ; On Error ...
0080F8E8: mov var_04, 00000003h
0080F8EF: mov eax, [ebp+0Ch]
0080F8F2: cmp word ptr [eax], FFFFh
0080F8F6: jnz 0080FEA3h
0080F8FC: mov var_04, 00000004h
0080F903: cmp word ptr [008F2430h], FFFFh
0080F90B: jnz 0080FBDAh
0080F911: mov var_04, 00000005h
0080F918: cmp [008F2010h], 00000000h
0080F91F: jnz 80F93Ch
0080F921: push 008F2010h
0080F926: push 00433984h
0080F92B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080F930: mov var_000000E0, 008F2010h
0080F93A: jmp 80F946h
0080F93C: mov var_000000E0, 008F2010h
0080F946: push 00000000h
0080F948: push 00000001h
0080F94A: push 00440E48h
0080F94F: push 00000000h
0080F951: push 00000018h
0080F953: mov eax, var_000000E0
0080F959: mov eax, [eax]
0080F95B: mov ecx, var_000000E0
0080F961: mov ecx, [ecx]
0080F963: mov ecx, [ecx]
0080F965: push eax
0080F966: call [ecx+0000054Ch]
0080F96C: push eax
0080F96D: lea eax, var_30
0080F970: push eax
0080F971: call 00410A84h ; Set (object)
0080F976: push eax
0080F977: lea eax, var_48
0080F97A: push eax
0080F97B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080F980: add esp, 00000010h
0080F983: push eax
0080F984: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080F989: push eax
0080F98A: lea eax, var_34
0080F98D: push eax
0080F98E: call 00410A84h ; Set (object)
0080F993: push eax
0080F994: lea eax, var_58
0080F997: push eax
0080F998: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080F99D: add esp, 00000010h
0080F9A0: push eax
0080F9A1: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0080F9A6: mov var_000000C0, eax
0080F9AC: mov var_000000BC, 00000001h
0080F9B6: mov var_24, 00000001h
0080F9BD: lea eax, var_34
0080F9C0: push eax
0080F9C1: lea eax, var_30
0080F9C4: push eax
0080F9C5: push 00000002h
0080F9C7: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080F9CC: add esp, 0000000Ch
0080F9CF: lea eax, var_58
0080F9D2: push eax
0080F9D3: lea eax, var_48
0080F9D6: push eax
0080F9D7: push 00000002h
0080F9D9: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080F9DE: add esp, 0000000Ch
0080F9E1: jmp 80F9F5h
0080F9E3: mov eax, var_24
0080F9E6: add eax, var_000000BC
0080F9EC: jo 00810068h
0080F9F2: mov var_24, eax
0080F9F5: mov eax, var_24
0080F9F8: cmp eax, var_000000C0
0080F9FE: jnle 0080FBD5h
0080FA04: mov var_04, 00000006h
0080FA0B: mov eax, var_24
0080FA0E: mov var_74, eax
0080FA11: mov var_7C, 00000003h
0080FA18: cmp [008F2010h], 00000000h
0080FA1F: jnz 80FA3Ch
0080FA21: push 008F2010h
0080FA26: push 00433984h
0080FA2B: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080FA30: mov var_000000E4, 008F2010h
0080FA3A: jmp 80FA46h
0080FA3C: mov var_000000E4, 008F2010h
0080FA46: push 00000000h
0080FA48: push 00000014h
0080FA4A: push 00440E58h
0080FA4F: push 00000010h
0080FA51: pop eax
0080FA52: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080FA57: lea esi, var_7C
0080FA5A: mov edi, esp
0080FA5C: movsd 
0080FA5D: movsd 
0080FA5E: movsd 
0080FA5F: movsd 
0080FA60: push 00000001h
0080FA62: push 00000000h
0080FA64: push 00440E48h
0080FA69: push 00000000h
0080FA6B: push 00000018h
0080FA6D: mov eax, var_000000E4
0080FA73: mov eax, [eax]
0080FA75: mov ecx, var_000000E4
0080FA7B: mov ecx, [ecx]
0080FA7D: mov ecx, [ecx]
0080FA7F: push eax
0080FA80: call [ecx+0000054Ch]
0080FA86: push eax
0080FA87: lea eax, var_30
0080FA8A: push eax
0080FA8B: call 00410A84h ; Set (object)
0080FA90: push eax
0080FA91: lea eax, var_48
0080FA94: push eax
0080FA95: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080FA9A: add esp, 00000010h
0080FA9D: push eax
0080FA9E: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080FAA3: push eax
0080FAA4: lea eax, var_34
0080FAA7: push eax
0080FAA8: call 00410A84h ; Set (object)
0080FAAD: push eax
0080FAAE: lea eax, var_58
0080FAB1: push eax
0080FAB2: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080FAB7: add esp, 00000020h
0080FABA: push eax
0080FABB: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080FAC0: push eax
0080FAC1: lea eax, var_38
0080FAC4: push eax
0080FAC5: call 00410A84h ; Set (object)
0080FACA: push eax
0080FACB: lea eax, var_68
0080FACE: push eax
0080FACF: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080FAD4: add esp, 00000010h
0080FAD7: push eax
0080FAD8: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0080FADD: mov edx, eax
0080FADF: lea ecx, var_28
0080FAE2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080FAE7: push eax
0080FAE8: call 004109DCh ; Val(arg_1)
0080FAED: fstp real8 ptr var_000000B4
0080FAF3: push 00000000h
0080FAF5: push 00000001h
0080FAF7: push 00000001h
0080FAF9: push 00000000h
0080FAFB: lea eax, var_6C
0080FAFE: push eax
0080FAFF: push 00000010h
0080FB01: push 00000880h
0080FB06: call 00410946h ; ReDim
0080FB0B: add esp, 0000001Ch
0080FB0E: mov eax, [ebp+14h]
0080FB11: mov var_00000094, eax
0080FB17: mov var_0000009C, 00004008h
0080FB21: lea esi, var_0000009C
0080FB27: push 00000000h
0080FB29: push var_6C
0080FB2C: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080FB31: mov ecx, eax
0080FB33: mov edx, esi
0080FB35: call 00410940h ; msvbvm60.dll.__vbaVarZero
0080FB3A: mov eax, [ebp+18h]
0080FB3D: mov var_000000A4, eax
0080FB43: mov var_000000AC, 00004008h
0080FB4D: lea esi, var_000000AC
0080FB53: push 00000001h
0080FB55: push var_6C
0080FB58: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080FB5D: mov ecx, eax
0080FB5F: mov edx, esi
0080FB61: call 00410940h ; msvbvm60.dll.__vbaVarZero
0080FB66: lea eax, var_6C
0080FB69: push eax
0080FB6A: push [ebp+10h]
0080FB6D: fld real8 ptr var_000000B4
0080FB73: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0080FB78: push eax
0080FB79: call 007A6910h
0080FB7E: lea eax, var_6C
0080FB81: push eax
0080FB82: push 00000000h
0080FB84: call 00410934h ; Erase
0080FB89: lea ecx, var_28
0080FB8C: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0080FB91: lea eax, var_38
0080FB94: push eax
0080FB95: lea eax, var_34
0080FB98: push eax
0080FB99: lea eax, var_30
0080FB9C: push eax
0080FB9D: push 00000003h
0080FB9F: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080FBA4: add esp, 00000010h
0080FBA7: lea eax, var_68
0080FBAA: push eax
0080FBAB: lea eax, var_58
0080FBAE: push eax
0080FBAF: lea eax, var_48
0080FBB2: push eax
0080FBB3: push 00000003h
0080FBB5: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080FBBA: add esp, 00000010h
0080FBBD: mov var_04, 00000007h
0080FBC4: call 0041096Ah ; DoEvents
0080FBC9: mov var_04, 00000008h
0080FBD0: jmp 0080F9E3h
0080FBD5: jmp 0080FE9Eh
0080FBDA: mov var_04, 0000000Ah
0080FBE1: cmp [008F2010h], 00000000h
0080FBE8: jnz 80FC05h
0080FBEA: push 008F2010h
0080FBEF: push 00433984h
0080FBF4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080FBF9: mov var_000000E8, 008F2010h
0080FC03: jmp 80FC0Fh
0080FC05: mov var_000000E8, 008F2010h
0080FC0F: push 00000000h
0080FC11: push 00000001h
0080FC13: push 00440E48h
0080FC18: push 00000000h
0080FC1A: push 00000018h
0080FC1C: mov eax, var_000000E8
0080FC22: mov eax, [eax]
0080FC24: mov ecx, var_000000E8
0080FC2A: mov ecx, [ecx]
0080FC2C: mov ecx, [ecx]
0080FC2E: push eax
0080FC2F: call [ecx+00000550h]
0080FC35: push eax
0080FC36: lea eax, var_30
0080FC39: push eax
0080FC3A: call 00410A84h ; Set (object)
0080FC3F: push eax
0080FC40: lea eax, var_48
0080FC43: push eax
0080FC44: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080FC49: add esp, 00000010h
0080FC4C: push eax
0080FC4D: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080FC52: push eax
0080FC53: lea eax, var_34
0080FC56: push eax
0080FC57: call 00410A84h ; Set (object)
0080FC5C: push eax
0080FC5D: lea eax, var_58
0080FC60: push eax
0080FC61: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080FC66: add esp, 00000010h
0080FC69: push eax
0080FC6A: call 00410A90h ; msvbvm60.dll.__vbaI4Var
0080FC6F: mov var_000000C8, eax
0080FC75: mov var_000000C4, 00000001h
0080FC7F: mov var_24, 00000001h
0080FC86: lea eax, var_34
0080FC89: push eax
0080FC8A: lea eax, var_30
0080FC8D: push eax
0080FC8E: push 00000002h
0080FC90: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080FC95: add esp, 0000000Ch
0080FC98: lea eax, var_58
0080FC9B: push eax
0080FC9C: lea eax, var_48
0080FC9F: push eax
0080FCA0: push 00000002h
0080FCA2: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080FCA7: add esp, 0000000Ch
0080FCAA: jmp 80FCBEh
0080FCAC: mov eax, var_24
0080FCAF: add eax, var_000000C4
0080FCB5: jo 00810068h
0080FCBB: mov var_24, eax
0080FCBE: mov eax, var_24
0080FCC1: cmp eax, var_000000C8
0080FCC7: jnle 0080FE9Eh
0080FCCD: mov var_04, 0000000Bh
0080FCD4: mov eax, var_24
0080FCD7: mov var_74, eax
0080FCDA: mov var_7C, 00000003h
0080FCE1: cmp [008F2010h], 00000000h
0080FCE8: jnz 80FD05h
0080FCEA: push 008F2010h
0080FCEF: push 00433984h
0080FCF4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
0080FCF9: mov var_000000EC, 008F2010h
0080FD03: jmp 80FD0Fh
0080FD05: mov var_000000EC, 008F2010h
0080FD0F: push 00000000h
0080FD11: push 00000014h
0080FD13: push 00440E58h
0080FD18: push 00000010h
0080FD1A: pop eax
0080FD1B: call 004106A0h ; msvbvm60.dll.__vbaChkstk
0080FD20: lea esi, var_7C
0080FD23: mov edi, esp
0080FD25: movsd 
0080FD26: movsd 
0080FD27: movsd 
0080FD28: movsd 
0080FD29: push 00000001h
0080FD2B: push 00000000h
0080FD2D: push 00440E48h
0080FD32: push 00000000h
0080FD34: push 00000018h
0080FD36: mov eax, var_000000EC
0080FD3C: mov eax, [eax]
0080FD3E: mov ecx, var_000000EC
0080FD44: mov ecx, [ecx]
0080FD46: mov ecx, [ecx]
0080FD48: push eax
0080FD49: call [ecx+00000550h]
0080FD4F: push eax
0080FD50: lea eax, var_30
0080FD53: push eax
0080FD54: call 00410A84h ; Set (object)
0080FD59: push eax
0080FD5A: lea eax, var_48
0080FD5D: push eax
0080FD5E: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080FD63: add esp, 00000010h
0080FD66: push eax
0080FD67: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080FD6C: push eax
0080FD6D: lea eax, var_34
0080FD70: push eax
0080FD71: call 00410A84h ; Set (object)
0080FD76: push eax
0080FD77: lea eax, var_58
0080FD7A: push eax
0080FD7B: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080FD80: add esp, 00000020h
0080FD83: push eax
0080FD84: call 00410A30h ; msvbvm60.dll.__vbaCastObjVar
0080FD89: push eax
0080FD8A: lea eax, var_38
0080FD8D: push eax
0080FD8E: call 00410A84h ; Set (object)
0080FD93: push eax
0080FD94: lea eax, var_68
0080FD97: push eax
0080FD98: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
0080FD9D: add esp, 00000010h
0080FDA0: push eax
0080FDA1: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
0080FDA6: mov edx, eax
0080FDA8: lea ecx, var_28
0080FDAB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080FDB0: push eax
0080FDB1: call 004109DCh ; Val(arg_1)
0080FDB6: fstp real8 ptr var_000000B4
0080FDBC: push 00000000h
0080FDBE: push 00000001h
0080FDC0: push 00000001h
0080FDC2: push 00000000h
0080FDC4: lea eax, var_6C
0080FDC7: push eax
0080FDC8: push 00000010h
0080FDCA: push 00000880h
0080FDCF: call 00410946h ; ReDim
0080FDD4: add esp, 0000001Ch
0080FDD7: mov eax, [ebp+14h]
0080FDDA: mov var_00000094, eax
0080FDE0: mov var_0000009C, 00004008h
0080FDEA: lea esi, var_0000009C
0080FDF0: push 00000000h
0080FDF2: push var_6C
0080FDF5: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080FDFA: mov ecx, eax
0080FDFC: mov edx, esi
0080FDFE: call 00410940h ; msvbvm60.dll.__vbaVarZero
0080FE03: mov eax, [ebp+18h]
0080FE06: mov var_000000A4, eax
0080FE0C: mov var_000000AC, 00004008h
0080FE16: lea esi, var_000000AC
0080FE1C: push 00000001h
0080FE1E: push var_6C
0080FE21: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080FE26: mov ecx, eax
0080FE28: mov edx, esi
0080FE2A: call 00410940h ; msvbvm60.dll.__vbaVarZero
0080FE2F: lea eax, var_6C
0080FE32: push eax
0080FE33: push [ebp+10h]
0080FE36: fld real8 ptr var_000000B4
0080FE3C: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0080FE41: push eax
0080FE42: call 007A6910h
0080FE47: lea eax, var_6C
0080FE4A: push eax
0080FE4B: push 00000000h
0080FE4D: call 00410934h ; Erase
0080FE52: lea ecx, var_28
0080FE55: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0080FE5A: lea eax, var_38
0080FE5D: push eax
0080FE5E: lea eax, var_34
0080FE61: push eax
0080FE62: lea eax, var_30
0080FE65: push eax
0080FE66: push 00000003h
0080FE68: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0080FE6D: add esp, 00000010h
0080FE70: lea eax, var_68
0080FE73: push eax
0080FE74: lea eax, var_58
0080FE77: push eax
0080FE78: lea eax, var_48
0080FE7B: push eax
0080FE7C: push 00000003h
0080FE7E: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
0080FE83: add esp, 00000010h
0080FE86: mov var_04, 0000000Ch
0080FE8D: call 0041096Ah ; DoEvents
0080FE92: mov var_04, 0000000Dh
0080FE99: jmp 0080FCACh
0080FE9E: jmp 0080FF97h
0080FEA3: mov var_04, 00000010h
0080FEAA: lea eax, var_28
0080FEAD: push eax
0080FEAE: mov eax, [ebp+08h]
0080FEB1: mov eax, [eax]
0080FEB3: push [ebp+08h]
0080FEB6: call [eax+000001C0h]
0080FEBC: fclex 
0080FEBE: mov var_000000B8, eax
0080FEC4: cmp var_000000B8, 00000000h
0080FECB: jnl 80FEEDh
0080FECD: push 000001C0h
0080FED2: push 00444570h
0080FED7: push [ebp+08h]
0080FEDA: push var_000000B8
0080FEE0: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
0080FEE5: mov var_000000F0, eax
0080FEEB: jmp 80FEF4h
0080FEED: and var_000000F0, 00000000h
0080FEF4: push var_28
0080FEF7: call 004109DCh ; Val(arg_1)
0080FEFC: fstp real8 ptr var_000000B4
0080FF02: push 00000000h
0080FF04: push 00000001h
0080FF06: push 00000001h
0080FF08: push 00000000h
0080FF0A: lea eax, var_6C
0080FF0D: push eax
0080FF0E: push 00000010h
0080FF10: push 00000880h
0080FF15: call 00410946h ; ReDim
0080FF1A: add esp, 0000001Ch
0080FF1D: mov eax, [ebp+14h]
0080FF20: mov var_74, eax
0080FF23: mov var_7C, 00004008h
0080FF2A: lea esi, var_7C
0080FF2D: push 00000000h
0080FF2F: push var_6C
0080FF32: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080FF37: mov ecx, eax
0080FF39: mov edx, esi
0080FF3B: call 00410940h ; msvbvm60.dll.__vbaVarZero
0080FF40: mov eax, [ebp+18h]
0080FF43: mov var_00000084, eax
0080FF49: mov var_0000008C, 00004008h
0080FF53: lea esi, var_0000008C
0080FF59: push 00000001h
0080FF5B: push var_6C
0080FF5E: call 0041093Ah ; msvbvm60.dll.__vbaDerefAry1
0080FF63: mov ecx, eax
0080FF65: mov edx, esi
0080FF67: call 00410940h ; msvbvm60.dll.__vbaVarZero
0080FF6C: lea eax, var_6C
0080FF6F: push eax
0080FF70: push [ebp+10h]
0080FF73: fld real8 ptr var_000000B4
0080FF79: call 004108E6h ; msvbvm60.dll.__vbaFpI2
0080FF7E: push eax
0080FF7F: call 007A6910h
0080FF84: lea eax, var_6C
0080FF87: push eax
0080FF88: push 00000000h
0080FF8A: call 00410934h ; Erase
0080FF8F: lea ecx, var_28
0080FF92: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
0080FF97: mov var_04, 00000012h
0080FF9E: mov eax, [ebp+10h]
0080FFA1: mov edx, [eax]
0080FFA3: mov ecx, [ebp+08h]
0080FFA6: add ecx, 00000034h
0080FFA9: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080FFAE: mov var_04, 00000013h
0080FFB5: mov eax, [ebp+14h]
0080FFB8: push [eax]
0080FFBA: push 004413D8h
0080FFBF: call 00410A18h ; &
0080FFC4: mov edx, eax
0080FFC6: lea ecx, var_28
0080FFC9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080FFCE: push eax
0080FFCF: mov eax, [ebp+18h]
0080FFD2: push [eax]
0080FFD4: call 00410A18h ; &
0080FFD9: mov edx, eax
0080FFDB: lea ecx, var_2C
0080FFDE: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0080FFE3: mov edx, eax
0080FFE5: mov ecx, [ebp+08h]
0080FFE8: add ecx, 00000038h
0080FFEB: call 00410A6Ch ; msvbvm60.dll.__vbaStrCopy
0080FFF0: lea eax, var_2C
0080FFF3: push eax
0080FFF4: lea eax, var_28
0080FFF7: push eax
0080FFF8: push 00000002h
0080FFFA: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
0080FFFF: add esp, 0000000Ch
00810002: wait 
00810003: push 00810055h
00810008: jmp 810054h
0081000A: lea eax, var_2C
0081000D: push eax
0081000E: lea eax, var_28
00810011: push eax
00810012: push 00000002h
00810014: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00810019: add esp, 0000000Ch
0081001C: lea eax, var_38
0081001F: push eax
00810020: lea eax, var_34
00810023: push eax
00810024: lea eax, var_30
00810027: push eax
00810028: push 00000003h
0081002A: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
0081002F: add esp, 00000010h
00810032: lea eax, var_68
00810035: push eax
00810036: lea eax, var_58
00810039: push eax
0081003A: lea eax, var_48
0081003D: push eax
0081003E: push 00000003h
00810040: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
00810045: add esp, 00000010h
00810048: lea eax, var_6C
0081004B: push eax
0081004C: push 00000000h
0081004E: call 0041092Eh ; msvbvm60.dll.__vbaAryDestruct
00810053: ret 
End Sub

