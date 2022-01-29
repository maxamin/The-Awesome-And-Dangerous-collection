VERSION 5.00
Begin VB.Form frmToU
  Caption = "..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 375
  ClientWidth = 9540
  ClientHeight = 8265
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer tmrWait
    Enabled = 0   'False
    Interval = 1000
    Left = 6480
    Top = 0
  End
  Begin XtremeSuiteControls.CheckBox chkRemember
    Left = 120
    Top = 7800
    Width = 2175
    Height = 375
    TabIndex = 1
  End
  Begin XtremeSuiteControls.PushButton cmdAgree
    Left = 6960
    Top = 7800
    Width = 1215
    Height = 375
    TabIndex = 2
  End
  Begin XtremeSuiteControls.PushButton cmdDisagree
    Left = 8280
    Top = 7800
    Width = 1215
    Height = 375
    TabIndex = 3
  End
  Begin XtremeSuiteControls.FlatEdit txtTerms
    Left = 120
    Top = 120
    Width = 9375
    Height = 7575
    Tag = "TTTT"
    TabIndex = 0
  End
End

Attribute VB_Name = "frmToU"


Private sub cmdDisagree__8BA81C
008BA81C: push ebp
008BA81D: mov ebp, esp
008BA81F: sub esp, 0000000Ch
008BA822: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008BA827: mov eax, fs:[00h]
008BA82D: push eax
008BA82E: mov fs:[00000000h], esp
008BA835: mov eax, 00000080h
008BA83A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008BA83F: push ebx
008BA840: push esi
008BA841: push edi
008BA842: mov var_0C, esp
008BA845: mov var_08, 0040EDE0h
008BA84C: mov eax, [ebp+08h]
008BA84F: and eax, 00000001h
008BA852: mov var_04, eax
008BA855: mov eax, [ebp+08h]
008BA858: and al, FEh
008BA85A: mov [ebp+08h], eax
008BA85D: mov eax, [ebp+08h]
008BA860: mov eax, [eax]
008BA862: push [ebp+08h]
008BA865: call [eax+04h]
008BA868: mov var_54, 80020004h
008BA86F: mov var_5C, 0000000Ah
008BA876: mov var_44, 80020004h
008BA87D: mov var_4C, 0000000Ah
008BA884: mov var_64, 0045F544h ; Sorry, you can't use Blackshades NET
008BA88B: mov var_6C, 00000008h
008BA892: lea edx, var_6C
008BA895: lea ecx, var_3C
008BA898: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008BA89D: push 0045DDFCh ; You have chosen to disagree to the "Terms of Use" for Blackshades NET.
008BA8A2: push 00441264h ; vbCrLf
008BA8A7: call 00410A18h ; &
008BA8AC: mov edx, eax
008BA8AE: lea ecx, var_18
008BA8B1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA8B6: push eax
008BA8B7: push 00441264h ; vbCrLf
008BA8BC: call 00410A18h ; &
008BA8C1: mov edx, eax
008BA8C3: lea ecx, var_1C
008BA8C6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA8CB: push eax
008BA8CC: push 0045F478h ; You cannot operate this software until you accept all the terms and conditions of this agreeement.
008BA8D1: call 00410A18h ; &
008BA8D6: mov var_24, eax
008BA8D9: mov var_2C, 00000008h
008BA8E0: lea eax, var_5C
008BA8E3: push eax
008BA8E4: lea eax, var_4C
008BA8E7: push eax
008BA8E8: lea eax, var_3C
008BA8EB: push eax
008BA8EC: push 00000030h
008BA8EE: lea eax, var_2C
008BA8F1: push eax
008BA8F2: call 004109E8h ; MsgBox(arg_1, arg_2, arg_3, arg_4, arg_5)
008BA8F7: lea eax, var_1C
008BA8FA: push eax
008BA8FB: lea eax, var_18
008BA8FE: push eax
008BA8FF: push 00000002h
008BA901: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008BA906: add esp, 0000000Ch
008BA909: lea eax, var_5C
008BA90C: push eax
008BA90D: lea eax, var_4C
008BA910: push eax
008BA911: lea eax, var_3C
008BA914: push eax
008BA915: lea eax, var_2C
008BA918: push eax
008BA919: push 00000004h
008BA91B: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008BA920: add esp, 00000014h
008BA923: call 00410874h ; End
008BA928: mov var_04, 00000000h
008BA92F: push 008BA964h
008BA934: jmp 8BA963h
008BA936: lea eax, var_1C
008BA939: push eax
008BA93A: lea eax, var_18
008BA93D: push eax
008BA93E: push 00000002h
008BA940: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008BA945: add esp, 0000000Ch
008BA948: lea eax, var_5C
008BA94B: push eax
008BA94C: lea eax, var_4C
008BA94F: push eax
008BA950: lea eax, var_3C
008BA953: push eax
008BA954: lea eax, var_2C
008BA957: push eax
008BA958: push 00000004h
008BA95A: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008BA95F: add esp, 00000014h
008BA962: ret 
End Sub

Private sub tmrWait__8BA983
008BA983: push ebp
008BA984: mov ebp, esp
008BA986: sub esp, 0000000Ch
008BA989: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008BA98E: mov eax, fs:[00h]
008BA994: push eax
008BA995: mov fs:[00000000h], esp
008BA99C: push 00000050h
008BA99E: pop eax
008BA99F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008BA9A4: push ebx
008BA9A5: push esi
008BA9A6: push edi
008BA9A7: mov var_0C, esp
008BA9AA: mov var_08, 0040EDF0h
008BA9B1: mov eax, [ebp+08h]
008BA9B4: and eax, 00000001h
008BA9B7: mov var_04, eax
008BA9BA: mov eax, [ebp+08h]
008BA9BD: and al, FEh
008BA9BF: mov [ebp+08h], eax
008BA9C2: mov eax, [ebp+08h]
008BA9C5: mov eax, [eax]
008BA9C7: push [ebp+08h]
008BA9CA: call [eax+04h]
008BA9CD: mov eax, [ebp+08h]
008BA9D0: cmp word ptr [eax+34h], 0000h
008BA9D5: jnle 008BAAB3h
008BA9DB: push 0045A8BCh ; Blackshades cracked by MaxXor
008BA9E0: mov eax, [ebp+08h]
008BA9E3: mov eax, [eax]
008BA9E5: push [ebp+08h]
008BA9E8: call [eax+54h]
008BA9EB: fclex 
008BA9ED: mov var_4C, eax
008BA9F0: cmp var_4C, 00000000h
008BA9F4: jnl 8BAA0Dh
008BA9F6: push 00000054h
008BA9F8: push 0044F09Ch
008BA9FD: push [ebp+08h]
008BAA00: push var_4C
008BAA03: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008BAA08: mov var_5C, eax
008BAA0B: jmp 8BAA11h
008BAA0D: and var_5C, 00000000h
008BAA11: or var_30, FFFFFFFFh
008BAA15: mov var_38, 0000000Bh
008BAA1C: push 00000010h
008BAA1E: pop eax
008BAA1F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008BAA24: lea esi, var_38
008BAA27: mov edi, esp
008BAA29: movsd 
008BAA2A: movsd 
008BAA2B: movsd 
008BAA2C: movsd 
008BAA2D: push 8001000Dh
008BAA32: mov eax, [ebp+08h]
008BAA35: mov eax, [eax]
008BAA37: push [ebp+08h]
008BAA3A: call [eax+00000304h]
008BAA40: push eax
008BAA41: lea eax, var_28
008BAA44: push eax
008BAA45: call 00410A84h ; Set (object)
008BAA4A: push eax
008BAA4B: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008BAA50: lea ecx, var_28
008BAA53: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008BAA58: mov eax, [ebp+08h]
008BAA5B: mov eax, [eax]
008BAA5D: push [ebp+08h]
008BAA60: call [eax+000002FCh]
008BAA66: push eax
008BAA67: lea eax, var_28
008BAA6A: push eax
008BAA6B: call 00410A84h ; Set (object)
008BAA70: mov var_4C, eax
008BAA73: push 00000000h
008BAA75: mov eax, var_4C
008BAA78: mov eax, [eax]
008BAA7A: push var_4C
008BAA7D: call [eax+5Ch]
008BAA80: fclex 
008BAA82: mov var_50, eax
008BAA85: cmp var_50, 00000000h
008BAA89: jnl 8BAAA2h
008BAA8B: push 0000005Ch
008BAA8D: push 00447A20h
008BAA92: push var_4C
008BAA95: push var_50
008BAA98: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008BAA9D: mov var_60, eax
008BAAA0: jmp 8BAAA6h
008BAAA2: and var_60, 00000000h
008BAAA6: lea ecx, var_28
008BAAA9: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008BAAAE: jmp 008BAB69h
008BAAB3: push 0045F594h ; (Please wait
008BAAB8: mov eax, [ebp+08h]
008BAABB: mov ax, [eax+34h]
008BAABF: push eax
008BAAC0: call 00410964h ; msvbvm60.dll.__vbaStrI2
008BAAC5: mov edx, eax
008BAAC7: lea ecx, var_18
008BAACA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BAACF: push eax
008BAAD0: call 00410A18h ; &
008BAAD5: mov edx, eax
008BAAD7: lea ecx, var_1C
008BAADA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BAADF: push eax
008BAAE0: push 0045F5B4h ; seconds)
008BAAE5: call 00410A18h ; &
008BAAEA: mov edx, eax
008BAAEC: lea ecx, var_20
008BAAEF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BAAF4: push eax
008BAAF5: push 0045F5CCh ; Blackshades cracked by MaxXor
008BAAFA: call 00410A18h ; &
008BAAFF: mov edx, eax
008BAB01: lea ecx, var_24
008BAB04: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BAB09: push eax
008BAB0A: mov eax, [ebp+08h]
008BAB0D: mov eax, [eax]
008BAB0F: push [ebp+08h]
008BAB12: call [eax+54h]
008BAB15: fclex 
008BAB17: mov var_4C, eax
008BAB1A: cmp var_4C, 00000000h
008BAB1E: jnl 8BAB37h
008BAB20: push 00000054h
008BAB22: push 0044F09Ch
008BAB27: push [ebp+08h]
008BAB2A: push var_4C
008BAB2D: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008BAB32: mov var_64, eax
008BAB35: jmp 8BAB3Bh
008BAB37: and var_64, 00000000h
008BAB3B: lea eax, var_24
008BAB3E: push eax
008BAB3F: lea eax, var_20
008BAB42: push eax
008BAB43: lea eax, var_1C
008BAB46: push eax
008BAB47: lea eax, var_18
008BAB4A: push eax
008BAB4B: push 00000004h
008BAB4D: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008BAB52: add esp, 00000014h
008BAB55: mov eax, [ebp+08h]
008BAB58: mov ax, [eax+34h]
008BAB5C: sub ax, 0001h
008BAB60: jo 8BABBAh
008BAB62: mov ecx, [ebp+08h]
008BAB65: mov [ecx+34h], ax
008BAB69: mov var_04, 00000000h
008BAB70: push 008BAB9Bh
008BAB75: jmp 8BAB9Ah
008BAB77: lea eax, var_24
008BAB7A: push eax
008BAB7B: lea eax, var_20
008BAB7E: push eax
008BAB7F: lea eax, var_1C
008BAB82: push eax
008BAB83: lea eax, var_18
008BAB86: push eax
008BAB87: push 00000004h
008BAB89: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008BAB8E: add esp, 00000014h
008BAB91: lea ecx, var_28
008BAB94: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008BAB99: ret 
End Sub

Private sub Form__8B990F
008B990F: push ebp
008B9910: mov ebp, esp
008B9912: sub esp, 0000000Ch
008B9915: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B991A: mov eax, fs:[00h]
008B9920: push eax
008B9921: mov fs:[00000000h], esp
008B9928: mov eax, 00000190h
008B992D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B9932: push ebx
008B9933: push esi
008B9934: push edi
008B9935: mov var_0C, esp
008B9938: mov var_08, 0040EDD0h
008B993F: mov eax, [ebp+08h]
008B9942: and eax, 00000001h
008B9945: mov var_04, eax
008B9948: mov eax, [ebp+08h]
008B994B: and al, FEh
008B994D: mov [ebp+08h], eax
008B9950: mov eax, [ebp+08h]
008B9953: mov eax, [eax]
008B9955: push [ebp+08h]
008B9958: call [eax+04h]
008B995B: and var_00000160, 00000000h
008B9962: mov var_00000168, 00000002h
008B996C: push 00000010h
008B996E: pop eax
008B996F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B9974: lea esi, var_00000168
008B997A: mov edi, esp
008B997C: movsd 
008B997D: movsd 
008B997E: movsd 
008B997F: movsd 
008B9980: push 0045A8A8h ; Agreed
008B9985: push 0045A868h ; Agreement
008B998A: push 00445984h ; bssnet
008B998F: call 0041085Ch ; GetSetting(arg_1,arg_2,arg_3,arg_4)
008B9994: mov edx, eax
008B9996: lea ecx, var_18
008B9999: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B999E: push eax
008B999F: call 00410754h ; msvbvm60.dll.__vbaR8Str
008B99A4: fcomp real8 ptr [00401760h]
008B99AA: fstsw ax
008B99AC: sahf 
008B99AD: jnz 8B99BBh
008B99AF: mov var_0000018C, 00000001h
008B99B9: jmp 8B99C2h
008B99BB: and var_0000018C, 00000000h
008B99C2: mov eax, var_0000018C
008B99C8: neg eax
008B99CA: mov var_0000017C, ax
008B99D1: lea ecx, var_18
008B99D4: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008B99D9: movsx eax, word ptr var_0000017C
008B99E0: test eax, eax
008B99E2: jz 008B9BA4h
008B99E8: nop 
008B99E9: nop 
008B99EA: nop 
008B99EB: nop 
008B99EC: nop 
008B99ED: mov ecx, ecx
008B99EF: mov edi, edi
008B99F1: mov edx, edx
008B99F3: mov esi, esi
008B99F5: mov ebx, ebx
008B99F7: mov edx, edx
008B99F9: nop 
008B99FA: inc eax
008B99FB: dec eax
008B99FC: inc eax
008B99FD: dec eax
008B99FE: lea ecx, var_18
008B9A01: inc eax
008B9A02: dec eax
008B9A03: inc eax
008B9A04: dec eax
008B9A05: nop 
008B9A06: cmp [008F2608h], 00000000h
008B9A0D: jnz 8B9A2Ah
008B9A0F: push 008F2608h
008B9A14: push 004213D4h
008B9A19: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B9A1E: mov var_00000190, 008F2608h
008B9A28: jmp 8B9A34h
008B9A2A: mov var_00000190, 008F2608h
008B9A34: mov eax, var_00000190
008B9A3A: mov eax, [eax]
008B9A3C: mov var_0000017C, eax
008B9A42: mov var_00000170, 80020004h
008B9A4C: mov var_00000178, 0000000Ah
008B9A56: mov var_00000160, 80020004h
008B9A60: mov var_00000168, 0000000Ah
008B9A6A: push 00000010h
008B9A6C: pop eax
008B9A6D: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B9A72: lea esi, var_00000178
008B9A78: mov edi, esp
008B9A7A: movsd 
008B9A7B: movsd 
008B9A7C: movsd 
008B9A7D: movsd 
008B9A7E: push 00000010h
008B9A80: pop eax
008B9A81: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B9A86: lea esi, var_00000168
008B9A8C: mov edi, esp
008B9A8E: movsd 
008B9A8F: movsd 
008B9A90: movsd 
008B9A91: movsd 
008B9A92: mov eax, var_0000017C
008B9A98: mov eax, [eax]
008B9A9A: push var_0000017C
008B9AA0: call [eax+000002B0h]
008B9AA6: fclex 
008B9AA8: mov var_00000180, eax
008B9AAE: cmp var_00000180, 00000000h
008B9AB5: jnl 8B9ADAh
008B9AB7: push 000002B0h
008B9ABC: push 00443568h
008B9AC1: push var_0000017C
008B9AC7: push var_00000180
008B9ACD: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B9AD2: mov var_00000194, eax
008B9AD8: jmp 8B9AE1h
008B9ADA: and var_00000194, 00000000h
008B9AE1: cmp [008F529Ch], 00000000h
008B9AE8: jnz 8B9B05h
008B9AEA: push 008F529Ch
008B9AEF: push 00440F2Ch
008B9AF4: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B9AF9: mov var_00000198, 008F529Ch
008B9B03: jmp 8B9B0Fh
008B9B05: mov var_00000198, 008F529Ch
008B9B0F: mov eax, var_00000198
008B9B15: mov eax, [eax]
008B9B17: mov var_0000017C, eax
008B9B1D: push [ebp+08h]
008B9B20: lea eax, var_00000134
008B9B26: push eax
008B9B27: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008B9B2C: push eax
008B9B2D: mov eax, var_0000017C
008B9B33: mov eax, [eax]
008B9B35: push var_0000017C
008B9B3B: call [eax+10h]
008B9B3E: fclex 
008B9B40: mov var_00000180, eax
008B9B46: cmp var_00000180, 00000000h
008B9B4D: jnl 8B9B6Fh
008B9B4F: push 00000010h
008B9B51: push 00440F1Ch
008B9B56: push var_0000017C
008B9B5C: push var_00000180
008B9B62: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B9B67: mov var_0000019C, eax
008B9B6D: jmp 8B9B76h
008B9B6F: and var_0000019C, 00000000h
008B9B76: lea ecx, var_00000134
008B9B7C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B9B81: nop 
008B9B82: nop 
008B9B83: nop 
008B9B84: nop 
008B9B85: nop 
008B9B86: mov ebx, ebx
008B9B88: mov ebx, ebx
008B9B8A: mov edi, edi
008B9B8C: mov eax, eax
008B9B8E: mov ebx, ebx
008B9B90: mov ecx, ecx
008B9B92: nop 
008B9B93: inc eax
008B9B94: dec eax
008B9B95: inc eax
008B9B96: dec eax
008B9B97: lea ecx, var_18
008B9B9A: inc eax
008B9B9B: dec eax
008B9B9C: inc eax
008B9B9D: dec eax
008B9B9E: nop 
008B9B9F: jmp 008BA60Ch
008B9BA4: push 0045A8BCh ; Blackshades cracked by MaxXor
008B9BA9: mov eax, [ebp+08h]
008B9BAC: mov eax, [eax]
008B9BAE: push [ebp+08h]
008B9BB1: call [eax+54h]
008B9BB4: fclex 
008B9BB6: mov var_0000017C, eax
008B9BBC: cmp var_0000017C, 00000000h
008B9BC3: jnl 8B9BE2h
008B9BC5: push 00000054h
008B9BC7: push 0044F09Ch
008B9BCC: push [ebp+08h]
008B9BCF: push var_0000017C
008B9BD5: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B9BDA: mov var_000001A0, eax
008B9BE0: jmp 8B9BE9h
008B9BE2: and var_000001A0, 00000000h
008B9BE9: push 0045A904h ; THIS DISCLAIMER REPRESENTS A CONTRACT BETWEEN YOU AND Blackshades NET. AFTER READING, YOU WILL BE ASKED TO ACCEPT THIS AGREEMENT AND CONTINUE TO USE THE SOFTWARE, OR, IF YOU DO NOT WISH TO ACCEPT THIS AGREEMENT, TO EXIT, IN WHICH CASE YOU WILL NOT BE ABLE TO USE, INSTALL OR OPERATE THE SOFTWARE. BY USING THIS SOFTWARE YOU ACCEPT ALL THE TERMS AND CONDITIONS OF THIS AGREEMENT
008B9BEE: push 00441264h ; vbCrLf
008B9BF3: call 00410A18h ; &
008B9BF8: mov edx, eax
008B9BFA: lea ecx, var_18
008B9BFD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9C02: push eax
008B9C03: push 00441264h ; vbCrLf
008B9C08: call 00410A18h ; &
008B9C0D: mov edx, eax
008B9C0F: lea ecx, var_1C
008B9C12: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9C17: push eax
008B9C18: push 0045ABFCh ; This disclaimer is a legal agreement between you (henceforth referred to as "the User") and Blackshades NET, regarding the software application Blackshades NET (henceforth referred to as "the Software") which you have downloaded, or otherwiseobtained through other resources or media such as CD-ROMs, floppy disks, or through a network in object code form or other related services.
008B9C1D: call 00410A18h ; &
008B9C22: mov edx, eax
008B9C24: lea ecx, var_20
008B9C27: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9C2C: push eax
008B9C2D: push 00441264h ; vbCrLf
008B9C32: call 00410A18h ; &
008B9C37: mov edx, eax
008B9C39: lea ecx, var_24
008B9C3C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9C41: push eax
008B9C42: push 00441264h ; vbCrLf
008B9C47: call 00410A18h ; &
008B9C4C: mov edx, eax
008B9C4E: lea ecx, var_28
008B9C51: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9C56: push eax
008B9C57: push 0045AF00h ; By accessing, downloading, storing, loading, installing, executing, displaying, copying the Software into the memory of a computer or otherwise benefiting from using the functionality of the Software in accordance with the documentation, you agree to be bound by the terms of this agreement. If you do not agree to the terms and conditions of this Agreement, Blackshades NET is unwilling to grant usage of the Software to you. In such event, you may not Operate or use the Software in any way.
008B9C5C: call 00410A18h ; &
008B9C61: mov edx, eax
008B9C63: lea ecx, var_2C
008B9C66: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9C6B: push eax
008B9C6C: push 00441264h ; vbCrLf
008B9C71: call 00410A18h ; &
008B9C76: mov edx, eax
008B9C78: lea ecx, var_30
008B9C7B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9C80: push eax
008B9C81: push 00441264h ; vbCrLf
008B9C86: call 00410A18h ; &
008B9C8B: mov edx, eax
008B9C8D: lea ecx, var_34
008B9C90: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9C95: push eax
008B9C96: push 0045B2E0h ; BY CLICKING THE "I AGREE" BUTTON IT IS INTERPRETED AS A SYMBOL OF YOUR SIGNATURE AND YOU ARE THEREBY CONSENTING TO BE BOUND BY THIS AGREEMENT AND AGREE THAT IT IS ENFORCEABLE LIKE ANY WRITTEN NEGOTIATED AGREEMENT SIGNED BY YOU. IF YOU DO NOT AGREE TO ALL OF THE TERMS OF THIS AGREEMENT, CLICK THE EXIT BUTTON REMOVE THE SOFTWARE FROM YOUR COMPUTER.
008B9C9B: call 00410A18h ; &
008B9CA0: mov edx, eax
008B9CA2: lea ecx, var_38
008B9CA5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9CAA: push eax
008B9CAB: push 00441264h ; vbCrLf
008B9CB0: call 00410A18h ; &
008B9CB5: mov edx, eax
008B9CB7: lea ecx, var_3C
008B9CBA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9CBF: push eax
008B9CC0: push 00441264h ; vbCrLf
008B9CC5: call 00410A18h ; &
008B9CCA: mov edx, eax
008B9CCC: lea ecx, var_40
008B9CCF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9CD4: push eax
008B9CD5: push 0045B5A0h ; By running this Software, you are consenting to be bound by this agreement. Upon termination of this agreement you will no longer be authorized to operate or use the Software in any way. The Software will not run on your computer unless or until you accept the terms of this agreement.
008B9CDA: call 00410A18h ; &
008B9CDF: mov edx, eax
008B9CE1: lea ecx, var_44
008B9CE4: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9CE9: push eax
008B9CEA: push 00441264h ; vbCrLf
008B9CEF: call 00410A18h ; &
008B9CF4: mov edx, eax
008B9CF6: lea ecx, var_48
008B9CF9: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9CFE: push eax
008B9CFF: push 00441264h ; vbCrLf
008B9D04: call 00410A18h ; &
008B9D09: mov edx, eax
008B9D0B: lea ecx, var_4C
008B9D0E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9D13: push eax
008B9D14: push 0045A690h ; 1. Proprietary Ownership Rights.
008B9D19: call 00410A18h ; &
008B9D1E: mov edx, eax
008B9D20: lea ecx, var_50
008B9D23: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9D28: push eax
008B9D29: push 00441264h ; vbCrLf
008B9D2E: call 00410A18h ; &
008B9D33: mov edx, eax
008B9D35: lea ecx, var_54
008B9D38: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9D3D: push eax
008B9D3E: push 00441264h ; vbCrLf
008B9D43: call 00410A18h ; &
008B9D48: mov edx, eax
008B9D4A: lea ecx, var_58
008B9D4D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9D52: push eax
008B9D53: push 0045B7E0h ; You agree that the Software and any associated ideas, methods of operation, documentation and other information contained in the Software, are intellectual properties of Blackshades NET. You acknowledge that the source code for the Software is proprietary to Blackshades NET. You agree not to modify, adapt, translate, reverse engineer, decompile, disassemble or otherwise attempt to discover the source code of the Software. You may not remove any proprietary notices or labels on the Software.
008B9D58: call 00410A18h ; &
008B9D5D: mov edx, eax
008B9D5F: lea ecx, var_5C
008B9D62: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9D67: push eax
008B9D68: push 00441264h ; vbCrLf
008B9D6D: call 00410A18h ; &
008B9D72: mov edx, eax
008B9D74: lea ecx, var_60
008B9D77: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9D7C: push eax
008B9D7D: push 00441264h ; vbCrLf
008B9D82: call 00410A18h ; &
008B9D87: mov edx, eax
008B9D89: lea ecx, var_64
008B9D8C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9D91: push eax
008B9D92: push 0045A6D8h ; 2. Usage.
008B9D97: call 00410A18h ; &
008B9D9C: mov edx, eax
008B9D9E: lea ecx, var_68
008B9DA1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9DA6: push eax
008B9DA7: push 00441264h ; vbCrLf
008B9DAC: call 00410A18h ; &
008B9DB1: mov edx, eax
008B9DB3: lea ecx, var_6C
008B9DB6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9DBB: push eax
008B9DBC: push 00441264h ; vbCrLf
008B9DC1: call 00410A18h ; &
008B9DC6: mov edx, eax
008B9DC8: lea ecx, var_70
008B9DCB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9DD0: push eax
008B9DD1: push 0045BBC4h ; Blackshades NET grants you permission to store, load, install and execute the specified version of the Software on an unlimited number of computers, workstations, personal digital assistants, mobile phones, hand-held devices, or other electronic devices for which the software was designed provided you are in compliance with the terms and conditions set out in this agreement. By accepting this agreement, you agree not to use the Software to:
008B9DD6: call 00410A18h ; &
008B9DDB: mov edx, eax
008B9DDD: lea ecx, var_74
008B9DE0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9DE5: push eax
008B9DE6: push 00441264h ; vbCrLf
008B9DEB: call 00410A18h ; &
008B9DF0: mov edx, eax
008B9DF2: lea ecx, var_78
008B9DF5: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9DFA: push eax
008B9DFB: push 00441264h ; vbCrLf
008B9E00: call 00410A18h ; &
008B9E05: mov edx, eax
008B9E07: lea ecx, var_7C
008B9E0A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9E0F: push eax
008B9E10: push 0045BF44h ; a.) Obtain unauthorized access to computer systems or electronic devices. You, the User, will be held accountable for using the Software to obtain unauthorised access to any computer system or device. By using the Software on a machine you are not authorised to do so, you are violating the terms of this disclaimer and therefore you, the User, agree to accept full responsibility for the consequences of improper usage of the Software.
008B9E15: call 00410A18h ; &
008B9E1A: mov edx, eax
008B9E1C: lea ecx, var_80
008B9E1F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9E24: push eax
008B9E25: push 00441264h ; vbCrLf
008B9E2A: call 00410A18h ; &
008B9E2F: mov edx, eax
008B9E31: lea ecx, var_00000084
008B9E37: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9E3C: push eax
008B9E3D: push 00441264h ; vbCrLf
008B9E42: call 00410A18h ; &
008B9E47: mov edx, eax
008B9E49: lea ecx, var_00000088
008B9E4F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9E54: push eax
008B9E55: push 0045C2B4h ; b.) Cause unauthorized modification. By accepting this agreement you hereby agree that you will not use the Software to cause unauthorised modification on any computer system or electronic device. By abusing the software to cause unauthorised modifications to a computer system or electronic device you are violating the terms of this disclaimer and you, the User, agree to accept full responsibility for the consequences of improper usage of the Software.
008B9E5A: call 00410A18h ; &
008B9E5F: mov edx, eax
008B9E61: lea ecx, var_0000008C
008B9E67: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9E6C: push eax
008B9E6D: push 00441264h ; vbCrLf
008B9E72: call 00410A18h ; &
008B9E77: mov edx, eax
008B9E79: lea ecx, var_00000090
008B9E7F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9E84: push eax
008B9E85: push 00441264h ; vbCrLf
008B9E8A: call 00410A18h ; &
008B9E8F: mov edx, eax
008B9E91: lea ecx, var_00000094
008B9E97: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9E9C: push eax
008B9E9D: push 0045C64Ch ; c.) Cause the intentional loss or deletion of any type of data or information. By accepting this agreement you hereby agree that you will not use the Software to cause the intentional loss of data on a computer system or electronic device you are not authorised to access. By accepting this agreement you, the User, agree to accept full responsibility for the consequences that may result as well as total liability for accidental or intentional damage to any computer hardware or software, including damages caused by computer stoppages or crashes.
008B9EA2: call 00410A18h ; &
008B9EA7: mov edx, eax
008B9EA9: lea ecx, var_00000098
008B9EAF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9EB4: push eax
008B9EB5: push 00441264h ; vbCrLf
008B9EBA: call 00410A18h ; &
008B9EBF: mov edx, eax
008B9EC1: lea ecx, var_0000009C
008B9EC7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9ECC: push eax
008B9ECD: push 00441264h ; vbCrLf
008B9ED2: call 00410A18h ; &
008B9ED7: mov edx, eax
008B9ED9: lea ecx, var_000000A0
008B9EDF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9EE4: push eax
008B9EE5: push 0045CA9Ch ; d.) Endanger public safety. You agree that the Software will in no way, shape or form be used to endanger public safety.
008B9EEA: call 00410A18h ; &
008B9EEF: mov edx, eax
008B9EF1: lea ecx, var_000000A4
008B9EF7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9EFC: push eax
008B9EFD: push 00441264h ; vbCrLf
008B9F02: call 00410A18h ; &
008B9F07: mov edx, eax
008B9F09: lea ecx, var_000000A8
008B9F0F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9F14: push eax
008B9F15: push 00441264h ; vbCrLf
008B9F1A: call 00410A18h ; &
008B9F1F: mov edx, eax
008B9F21: lea ecx, var_000000AC
008B9F27: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9F2C: push eax
008B9F2D: push 0045CC74h ; e.) Engage in denial of service attacks. You agree not to use the Software to participate, engage or otherwise contribute to any denial of service type attacks over the internet or any other network of computers or electronic devices.
008B9F32: call 00410A18h ; &
008B9F37: mov edx, eax
008B9F39: lea ecx, var_000000B0
008B9F3F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9F44: push eax
008B9F45: push 00441264h ; vbCrLf
008B9F4A: call 00410A18h ; &
008B9F4F: mov edx, eax
008B9F51: lea ecx, var_000000B4
008B9F57: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9F5C: push eax
008B9F5D: push 00441264h ; vbCrLf
008B9F62: call 00410A18h ; &
008B9F67: mov edx, eax
008B9F69: lea ecx, var_000000B8
008B9F6F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9F74: push eax
008B9F75: push 0045CE6Ch ; INTENTIONALLY SPREADING APPLICATIONS FOR MALICIOUS OR DAMAGING PURPOSES IS A CRIME PUNISHABLE BY FINE OR IMPRISONMENT. BY USING Blackshades NET PRODUCTS FOR MALICIOUS PURPOSES YOU ARE BREAKING THE TERMS AND CONDITIONS SET IN THIS AGREEMENT AND THEREFORE ACCEPT FULL RESPONSIBILITY FOR ANY CONSEQUENCES WHICH MAY RESULT FROM YOUR ACTIONS.
008B9F7A: call 00410A18h ; &
008B9F7F: mov edx, eax
008B9F81: lea ecx, var_000000BC
008B9F87: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9F8C: push eax
008B9F8D: push 00441264h ; vbCrLf
008B9F92: call 00410A18h ; &
008B9F97: mov edx, eax
008B9F99: lea ecx, var_000000C0
008B9F9F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9FA4: push eax
008B9FA5: push 00441264h ; vbCrLf
008B9FAA: call 00410A18h ; &
008B9FAF: mov edx, eax
008B9FB1: lea ecx, var_000000C4
008B9FB7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9FBC: push eax
008B9FBD: push 0045CB94h ; 3. High Risk Activities.
008B9FC2: call 00410A18h ; &
008B9FC7: mov edx, eax
008B9FC9: lea ecx, var_000000C8
008B9FCF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9FD4: push eax
008B9FD5: push 00441264h ; vbCrLf
008B9FDA: call 00410A18h ; &
008B9FDF: mov edx, eax
008B9FE1: lea ecx, var_000000CC
008B9FE7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9FEC: push eax
008B9FED: push 00441264h ; vbCrLf
008B9FF2: call 00410A18h ; &
008B9FF7: mov edx, eax
008B9FF9: lea ecx, var_000000D0
008B9FFF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA004: push eax
008BA005: push 0045D114h ; The Software is not designed or intended for use as on-line control equipment in hazardous environments requiring fail-safe performance, such as in the operation of nuclear facilities, aircraft navigation or communication systems, air traffic control, direct life support machines or weapon systems in which the failure of the Software could lead directly to death, personal injury or severe physical or environmental damage ("high risk activities"). Accordingly, Blackshades NET specifically disclaims any express or implied warranty of fitness for High Risk Activities.
008BA00A: call 00410A18h ; &
008BA00F: mov edx, eax
008BA011: lea ecx, var_000000D4
008BA017: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA01C: push eax
008BA01D: push 00441264h ; vbCrLf
008BA022: call 00410A18h ; &
008BA027: mov edx, eax
008BA029: lea ecx, var_000000D8
008BA02F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA034: push eax
008BA035: push 00441264h ; vbCrLf
008BA03A: call 00410A18h ; &
008BA03F: mov edx, eax
008BA041: lea ecx, var_000000DC
008BA047: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA04C: push eax
008BA04D: push 0045CBCCh ; 4. Disclaimer of Warranty.
008BA052: call 00410A18h ; &
008BA057: mov edx, eax
008BA059: lea ecx, var_000000E0
008BA05F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA064: push eax
008BA065: push 00441264h ; vbCrLf
008BA06A: call 00410A18h ; &
008BA06F: mov edx, eax
008BA071: lea ecx, var_000000E4
008BA077: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA07C: push eax
008BA07D: push 00441264h ; vbCrLf
008BA082: call 00410A18h ; &
008BA087: mov edx, eax
008BA089: lea ecx, var_000000E8
008BA08F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA094: push eax
008BA095: push 0045D590h ; The Software is provided on an AS IS basis, without warranty of any kind. The entire risk as to the quality and performance of the software is borne by you, the User. Should the Software prove defective in any respect, the User, not Blackshades NET or any of its staff or associates, shall assume the cost of any service and repair.
008BA09A: call 00410A18h ; &
008BA09F: mov edx, eax
008BA0A1: lea ecx, var_000000EC
008BA0A7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA0AC: push eax
008BA0AD: push 00441264h ; vbCrLf
008BA0B2: call 00410A18h ; &
008BA0B7: mov edx, eax
008BA0B9: lea ecx, var_000000F0
008BA0BF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA0C4: push eax
008BA0C5: push 00441264h ; vbCrLf
008BA0CA: call 00410A18h ; &
008BA0CF: mov edx, eax
008BA0D1: lea ecx, var_000000F4
008BA0D7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA0DC: push eax
008BA0DD: push 0045CC08h ; 5. LIMITATION OF LIABILITY.
008BA0E2: call 00410A18h ; &
008BA0E7: mov edx, eax
008BA0E9: lea ecx, var_000000F8
008BA0EF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA0F4: push eax
008BA0F5: push 00441264h ; vbCrLf
008BA0FA: call 00410A18h ; &
008BA0FF: mov edx, eax
008BA101: lea ecx, var_000000FC
008BA107: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA10C: push eax
008BA10D: push 00441264h ; vbCrLf
008BA112: call 00410A18h ; &
008BA117: mov edx, eax
008BA119: lea ecx, var_00000100
008BA11F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA124: push eax
008BA125: push 0045D830h ; UNDER NO CIRCUMSTANCES AND UNDER NO LEGAL THEORY, TORT, CONTRACT OR OTHERWISE, SHALL Blackshades NET OR IT'S ASSOCIATES BE LIABLE TO THE USER, OR ANY OTHER PERSON FOR ANY INDIRECT, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES OF ANY CHARACTER INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF GOODWILL, PROFIT, WORK STOPPAGE, COMPUTER FAILURE OR MALFUNCTION OR ANY AND ALL OTHER COMMERCIAL DAMAGES OR LOSSES. IN NO EVENT WILL Blackshades NET BE LIABLE FOR ANY DAMAGES CAUSED BY IMPROPER OR UNAUTHORISED USAGE OF THE SOFTWARE, EVEN IF THE USER HAS BEEN INFORMED OF THE POSSIBILITY OF SUCH DAMAGES, OR FOR ANY CLAIM BY ANY THIRD PARTY.
008BA12A: call 00410A18h ; &
008BA12F: mov edx, eax
008BA131: lea ecx, var_00000104
008BA137: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA13C: push eax
008BA13D: push 00441264h ; vbCrLf
008BA142: call 00410A18h ; &
008BA147: mov edx, eax
008BA149: lea ecx, var_00000108
008BA14F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA154: push eax
008BA155: push 00441264h ; vbCrLf
008BA15A: call 00410A18h ; &
008BA15F: mov edx, eax
008BA161: lea ecx, var_0000010C
008BA167: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA16C: push eax
008BA16D: push 0045DD2Ch ; 5.1 NO IMPLIED OR OTHER WARRANTIES.
008BA172: call 00410A18h ; &
008BA177: mov edx, eax
008BA179: lea ecx, var_00000110
008BA17F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA184: push eax
008BA185: push 00441264h ; vbCrLf
008BA18A: call 00410A18h ; &
008BA18F: mov edx, eax
008BA191: lea ecx, var_00000114
008BA197: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA19C: push eax
008BA19D: push 00441264h ; vbCrLf
008BA1A2: call 00410A18h ; &
008BA1A7: mov edx, eax
008BA1A9: lea ecx, var_00000118
008BA1AF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA1B4: push eax
008BA1B5: push 0045DF04h ; THE SOFTWARE IS PROVIDED "AS IS", WITH NO WARRANTIES WHATSOEVER; Blackshades NET DOES NOT, EITHER EXPRESSED, IMPLIED OR STATUTORY, MAKE ANY WARRANTIES, CLAIMS OR REPRESENTATIONS WITH RESPECT TO THE SOFTWARE, INCLUDING, WITHOUT LIMITATION, WARRANTIES OF QUALITY, PERFORMANCE, NON-INFRINGEMENT, MERCHANTABILITY, OR FITNESS FOR USE OR A PARTICULAR PURPOSE. Blackshades NET FURTHER DOES NOT REPRESENT OR WARRANT THAT THE SOFTWARE WILL ALWAYS BE AVAILABLE, ACCESSIBLE, UNINTERRUPTED, TIMELY, SECURE, ACCURATE, COMPLETE AND ERROR-FREE, NOR DOES Blackshades NET WARRANT ANY CONNECTION TO OR TRANSMISSION FROM THE INTERNET USING THE SOFTWARE. YOU ASSUME ALL RISKS AND RESPONSIBILITIES FOR SELECTION OF THE SOFTWARE
008BA1BA: call 00410A18h ; &
008BA1BF: mov edx, eax
008BA1C1: lea ecx, var_0000011C
008BA1C7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA1CC: push eax
008BA1CD: push 0045E490h ; TO ACHIEVE YOUR INTENDED RESULTS, AND FOR THE INSTALLATION OF, USE OF, AND RESULTS OBTAINED FROM THE SOFTWARE. Blackshades NET MAKES NO WARRANTY THAT THE SOFTWARE WILL BE ERROR FREE OR FREE FROM INTERRUPTION OR FAILURE, OR THAT IT IS COMPATIBLE WITH ANY PARTICULAR HARDWARE OR SOFTWARE.
008BA1D2: call 00410A18h ; &
008BA1D7: mov edx, eax
008BA1D9: lea ecx, var_00000120
008BA1DF: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA1E4: push eax
008BA1E5: push 00441264h ; vbCrLf
008BA1EA: call 00410A18h ; &
008BA1EF: mov edx, eax
008BA1F1: lea ecx, var_00000124
008BA1F7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA1FC: push eax
008BA1FD: push 00441264h ; vbCrLf
008BA202: call 00410A18h ; &
008BA207: mov edx, eax
008BA209: lea ecx, var_00000128
008BA20F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA214: push eax
008BA215: push 0045E6D4h ; TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, Blackshades NET DISCLAIMS ALL WARRANTIES, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO IMPLIED WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT OF THIRD PARTY RIGHTS, INTEGRATION, SATISFACTORY QUALITY OR FITNESS FOR ANY PARTICULAR PURPOSE WITH RESPECT TO THE SOFTWARE AND THE ACCOMPANYING WRITTEN MATERIALS OR THE USE THEREOF. THEREFORE, Blackshades NET EXPRESSLY DISCLAIMS ANY EXPRESS OR IMPLIED WARRANTY REGARDING SYSTEM AND/OR SOFTWARE AVAILABILITY, ACCESSIBILITY, OR PERFORMANCE. Blackshades NET DISCLAIMS ANY AND ALL LIABILITY FOR THE LOSS OF DATA DURING ANY COMMUNICATIONS AND ANY LIABILITY ARISING FROM OR RELATED TO ANY FAILURE BY Blackshades NET TO TRANSMIT ACCURATE OR COMPLETE INFORMATION TO YOU.
008BA21A: call 00410A18h ; &
008BA21F: mov edx, eax
008BA221: lea ecx, var_0000012C
008BA227: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA22C: push eax
008BA22D: push 00441264h ; vbCrLf
008BA232: call 00410A18h ; &
008BA237: mov edx, eax
008BA239: lea ecx, var_00000130
008BA23F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA244: push eax
008BA245: push 00441264h ; vbCrLf
008BA24A: call 00410A18h ; &
008BA24F: mov var_00000140, eax
008BA255: mov var_00000148, 00000008h
008BA25F: push 00000010h
008BA261: pop eax
008BA262: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008BA267: lea esi, var_00000148
008BA26D: mov edi, esp
008BA26F: movsd 
008BA270: movsd 
008BA271: movsd 
008BA272: movsd 
008BA273: push 00000000h
008BA275: mov eax, [ebp+08h]
008BA278: mov eax, [eax]
008BA27A: push [ebp+08h]
008BA27D: call [eax+0000030Ch]
008BA283: push eax
008BA284: lea eax, var_00000134
008BA28A: push eax
008BA28B: call 00410A84h ; Set (object)
008BA290: push eax
008BA291: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008BA296: lea eax, var_0000008C
008BA29C: push eax
008BA29D: lea eax, var_00000088
008BA2A3: push eax
008BA2A4: lea eax, var_00000084
008BA2AA: push eax
008BA2AB: lea eax, var_80
008BA2AE: push eax
008BA2AF: lea eax, var_7C
008BA2B2: push eax
008BA2B3: lea eax, var_78
008BA2B6: push eax
008BA2B7: lea eax, var_74
008BA2BA: push eax
008BA2BB: lea eax, var_70
008BA2BE: push eax
008BA2BF: lea eax, var_6C
008BA2C2: push eax
008BA2C3: lea eax, var_68
008BA2C6: push eax
008BA2C7: lea eax, var_64
008BA2CA: push eax
008BA2CB: lea eax, var_60
008BA2CE: push eax
008BA2CF: lea eax, var_5C
008BA2D2: push eax
008BA2D3: lea eax, var_58
008BA2D6: push eax
008BA2D7: lea eax, var_54
008BA2DA: push eax
008BA2DB: lea eax, var_50
008BA2DE: push eax
008BA2DF: lea eax, var_4C
008BA2E2: push eax
008BA2E3: lea eax, var_48
008BA2E6: push eax
008BA2E7: lea eax, var_44
008BA2EA: push eax
008BA2EB: lea eax, var_40
008BA2EE: push eax
008BA2EF: lea eax, var_3C
008BA2F2: push eax
008BA2F3: lea eax, var_38
008BA2F6: push eax
008BA2F7: lea eax, var_34
008BA2FA: push eax
008BA2FB: lea eax, var_30
008BA2FE: push eax
008BA2FF: lea eax, var_2C
008BA302: push eax
008BA303: lea eax, var_28
008BA306: push eax
008BA307: lea eax, var_24
008BA30A: push eax
008BA30B: lea eax, var_20
008BA30E: push eax
008BA30F: lea eax, var_1C
008BA312: push eax
008BA313: lea eax, var_18
008BA316: push eax
008BA317: lea eax, var_00000104
008BA31D: push eax
008BA31E: lea eax, var_00000100
008BA324: push eax
008BA325: lea eax, var_000000FC
008BA32B: push eax
008BA32C: lea eax, var_000000F8
008BA332: push eax
008BA333: lea eax, var_000000F4
008BA339: push eax
008BA33A: lea eax, var_000000F0
008BA340: push eax
008BA341: lea eax, var_000000EC
008BA347: push eax
008BA348: lea eax, var_000000E8
008BA34E: push eax
008BA34F: lea eax, var_000000E4
008BA355: push eax
008BA356: lea eax, var_000000E0
008BA35C: push eax
008BA35D: lea eax, var_000000DC
008BA363: push eax
008BA364: lea eax, var_000000D8
008BA36A: push eax
008BA36B: lea eax, var_000000D4
008BA371: push eax
008BA372: lea eax, var_000000D0
008BA378: push eax
008BA379: lea eax, var_000000CC
008BA37F: push eax
008BA380: lea eax, var_000000C8
008BA386: push eax
008BA387: lea eax, var_000000C4
008BA38D: push eax
008BA38E: lea eax, var_000000C0
008BA394: push eax
008BA395: lea eax, var_000000BC
008BA39B: push eax
008BA39C: lea eax, var_000000B8
008BA3A2: push eax
008BA3A3: lea eax, var_000000B4
008BA3A9: push eax
008BA3AA: lea eax, var_000000B0
008BA3B0: push eax
008BA3B1: lea eax, var_000000AC
008BA3B7: push eax
008BA3B8: lea eax, var_000000A8
008BA3BE: push eax
008BA3BF: lea eax, var_000000A4
008BA3C5: push eax
008BA3C6: lea eax, var_000000A0
008BA3CC: push eax
008BA3CD: lea eax, var_0000009C
008BA3D3: push eax
008BA3D4: lea eax, var_00000098
008BA3DA: push eax
008BA3DB: lea eax, var_00000094
008BA3E1: push eax
008BA3E2: lea eax, var_00000090
008BA3E8: push eax
008BA3E9: lea eax, var_00000130
008BA3EF: push eax
008BA3F0: lea eax, var_0000012C
008BA3F6: push eax
008BA3F7: lea eax, var_00000128
008BA3FD: push eax
008BA3FE: lea eax, var_00000124
008BA404: push eax
008BA405: lea eax, var_00000120
008BA40B: push eax
008BA40C: lea eax, var_0000011C
008BA412: push eax
008BA413: lea eax, var_00000118
008BA419: push eax
008BA41A: lea eax, var_00000114
008BA420: push eax
008BA421: lea eax, var_00000110
008BA427: push eax
008BA428: lea eax, var_0000010C
008BA42E: push eax
008BA42F: lea eax, var_00000108
008BA435: push eax
008BA436: push 00000047h
008BA438: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008BA43D: add esp, 00000120h
008BA443: lea ecx, var_00000134
008BA449: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008BA44E: lea ecx, var_00000148
008BA454: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008BA459: push 00000000h
008BA45B: push 00000000h
008BA45D: mov eax, [ebp+08h]
008BA460: mov eax, [eax]
008BA462: push [ebp+08h]
008BA465: call [eax+0000030Ch]
008BA46B: push eax
008BA46C: lea eax, var_00000134
008BA472: push eax
008BA473: call 00410A84h ; Set (object)
008BA478: push eax
008BA479: lea eax, var_00000148
008BA47F: push eax
008BA480: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008BA485: add esp, 00000010h
008BA488: push eax
008BA489: call 004109FAh ; msvbvm60.dll.__vbaStrVarMove
008BA48E: mov edx, eax
008BA490: lea ecx, var_18
008BA493: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA498: push eax
008BA499: push 0045DD78h ; 5.2 LIMITED LIABILITY; NO LIABILITY FOR CONSEQUENTIAL DAMAGES.
008BA49E: call 00410A18h ; &
008BA4A3: mov edx, eax
008BA4A5: lea ecx, var_1C
008BA4A8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA4AD: push eax
008BA4AE: push 00441264h ; vbCrLf
008BA4B3: call 00410A18h ; &
008BA4B8: mov edx, eax
008BA4BA: lea ecx, var_20
008BA4BD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA4C2: push eax
008BA4C3: push 00441264h ; vbCrLf
008BA4C8: call 00410A18h ; &
008BA4CD: mov edx, eax
008BA4CF: lea ecx, var_24
008BA4D2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA4D7: push eax
008BA4D8: push 0045ECDCh ; NEITHER Blackshades NET NOR ITS ASSOCIATES SHALL BE LIABLE TO THE USER OR ANY THIRD PARTY FOR ANY INDIRECT, SPECIAL, INCIDENTAL, COVER OR CONSEQUENTIAL DAMAGES INCLUDING, BUT NOT LIMITED TO, DAMAGES FOR THE INABILITY TO USE THE SOFTWARE OR LOSS OF GOODWILL, PROFIT, WORK STOPPAGE, COMPUTER FAILURE OR MALFUNCTION OR ANY AND ALL OTHER COMMERCIAL DAMAGES OR LOSSES, ARISING OUT OF THE USE OF, OR INABILITY TO USE THE SOFTWARE AND BASED ON ANY THEORY OF LIABILITY INCLUDING BREACH OF CONTRACT, BREACH OF WARRANTY, TORT (INCLUDING NEGLIGENCE), PRODUCT LIABILITY OR OTHERWISE, EVEN IF Blackshades NET HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES AND EVEN IF A REMEDY SET FORTH HEREIN IS FOUND TO HAVE FAILED ITS ESSENTIAL
008BA4DD: call 00410A18h ; &
008BA4E2: mov edx, eax
008BA4E4: lea ecx, var_28
008BA4E7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008BA4EC: push eax
008BA4ED: push 0045F28Ch ; PURPOSE. Blackshades NETS TOTAL LIABILITY TO YOU FOR ACTUAL DAMAGES FOR ANY CAUSE WHATSOEVER WILL BE LIMITED TO THE AMOUNT PAID BY YOU FOR THE SOFTWARE THAT CAUSED SUCH DAMAGE.
008BA4F2: call 00410A18h ; &
008BA4F7: mov var_00000150, eax
008BA4FD: mov var_00000158, 00000008h
008BA507: push 00000010h
008BA509: pop eax
008BA50A: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008BA50F: lea esi, var_00000158
008BA515: mov edi, esp
008BA517: movsd 
008BA518: movsd 
008BA519: movsd 
008BA51A: movsd 
008BA51B: push 00000000h
008BA51D: mov eax, [ebp+08h]
008BA520: mov eax, [eax]
008BA522: push [ebp+08h]
008BA525: call [eax+0000030Ch]
008BA52B: push eax
008BA52C: lea eax, var_00000138
008BA532: push eax
008BA533: call 00410A84h ; Set (object)
008BA538: push eax
008BA539: call 00410A72h ; msvbvm60.dll.__vbaLateIdSt
008BA53E: lea eax, var_28
008BA541: push eax
008BA542: lea eax, var_24
008BA545: push eax
008BA546: lea eax, var_20
008BA549: push eax
008BA54A: lea eax, var_1C
008BA54D: push eax
008BA54E: lea eax, var_18
008BA551: push eax
008BA552: push 00000005h
008BA554: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008BA559: add esp, 00000018h
008BA55C: lea eax, var_00000138
008BA562: push eax
008BA563: lea eax, var_00000134
008BA569: push eax
008BA56A: push 00000002h
008BA56C: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008BA571: add esp, 0000000Ch
008BA574: lea eax, var_00000158
008BA57A: push eax
008BA57B: lea eax, var_00000148
008BA581: push eax
008BA582: push 00000002h
008BA584: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008BA589: add esp, 0000000Ch
008BA58C: mov eax, [ebp+08h]
008BA58F: mov word ptr [eax+34h], 0005h
008BA595: mov eax, [ebp+08h]
008BA598: mov eax, [eax]
008BA59A: push [ebp+08h]
008BA59D: call [eax+000002FCh]
008BA5A3: push eax
008BA5A4: lea eax, var_00000134
008BA5AA: push eax
008BA5AB: call 00410A84h ; Set (object)
008BA5B0: mov var_0000017C, eax
008BA5B6: push FFFFFFFFh
008BA5B8: mov eax, var_0000017C
008BA5BE: mov eax, [eax]
008BA5C0: push var_0000017C
008BA5C6: call [eax+5Ch]
008BA5C9: fclex 
008BA5CB: mov var_00000180, eax
008BA5D1: cmp var_00000180, 00000000h
008BA5D8: jnl 8BA5FAh
008BA5DA: push 0000005Ch
008BA5DC: push 00447A20h
008BA5E1: push var_0000017C
008BA5E7: push var_00000180
008BA5ED: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008BA5F2: mov var_000001A4, eax
008BA5F8: jmp 8BA601h
008BA5FA: and var_000001A4, 00000000h
008BA601: lea ecx, var_00000134
008BA607: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008BA60C: mov var_04, 00000000h
008BA613: wait 
008BA614: push 008BA7FDh
008BA619: jmp 008BA7FCh
008BA61E: lea eax, var_00000130
008BA624: push eax
008BA625: lea eax, var_0000012C
008BA62B: push eax
008BA62C: lea eax, var_00000128
008BA632: push eax
008BA633: lea eax, var_00000124
008BA639: push eax
008BA63A: lea eax, var_00000120
008BA640: push eax
008BA641: lea eax, var_0000011C
008BA647: push eax
008BA648: lea eax, var_00000118
008BA64E: push eax
008BA64F: lea eax, var_00000114
008BA655: push eax
008BA656: lea eax, var_00000110
008BA65C: push eax
008BA65D: lea eax, var_0000010C
008BA663: push eax
008BA664: lea eax, var_00000108
008BA66A: push eax
008BA66B: lea eax, var_00000104
008BA671: push eax
008BA672: lea eax, var_00000100
008BA678: push eax
008BA679: lea eax, var_000000FC
008BA67F: push eax
008BA680: lea eax, var_000000F8
008BA686: push eax
008BA687: lea eax, var_000000F4
008BA68D: push eax
008BA68E: lea eax, var_000000F0
008BA694: push eax
008BA695: lea eax, var_000000EC
008BA69B: push eax
008BA69C: lea eax, var_000000E8
008BA6A2: push eax
008BA6A3: lea eax, var_000000E4
008BA6A9: push eax
008BA6AA: lea eax, var_000000E0
008BA6B0: push eax
008BA6B1: lea eax, var_000000DC
008BA6B7: push eax
008BA6B8: lea eax, var_000000D8
008BA6BE: push eax
008BA6BF: lea eax, var_000000D4
008BA6C5: push eax
008BA6C6: lea eax, var_000000D0
008BA6CC: push eax
008BA6CD: lea eax, var_000000CC
008BA6D3: push eax
008BA6D4: lea eax, var_000000C8
008BA6DA: push eax
008BA6DB: lea eax, var_000000C4
008BA6E1: push eax
008BA6E2: lea eax, var_000000C0
008BA6E8: push eax
008BA6E9: lea eax, var_000000BC
008BA6EF: push eax
008BA6F0: lea eax, var_000000B8
008BA6F6: push eax
008BA6F7: lea eax, var_000000B4
008BA6FD: push eax
008BA6FE: lea eax, var_000000B0
008BA704: push eax
008BA705: lea eax, var_000000AC
008BA70B: push eax
008BA70C: lea eax, var_000000A8
008BA712: push eax
008BA713: lea eax, var_000000A4
008BA719: push eax
008BA71A: lea eax, var_000000A0
008BA720: push eax
008BA721: lea eax, var_0000009C
008BA727: push eax
008BA728: lea eax, var_00000098
008BA72E: push eax
008BA72F: lea eax, var_00000094
008BA735: push eax
008BA736: lea eax, var_00000090
008BA73C: push eax
008BA73D: lea eax, var_0000008C
008BA743: push eax
008BA744: lea eax, var_00000088
008BA74A: push eax
008BA74B: lea eax, var_00000084
008BA751: push eax
008BA752: lea eax, var_80
008BA755: push eax
008BA756: lea eax, var_7C
008BA759: push eax
008BA75A: lea eax, var_78
008BA75D: push eax
008BA75E: lea eax, var_74
008BA761: push eax
008BA762: lea eax, var_70
008BA765: push eax
008BA766: lea eax, var_6C
008BA769: push eax
008BA76A: lea eax, var_68
008BA76D: push eax
008BA76E: lea eax, var_64
008BA771: push eax
008BA772: lea eax, var_60
008BA775: push eax
008BA776: lea eax, var_5C
008BA779: push eax
008BA77A: lea eax, var_58
008BA77D: push eax
008BA77E: lea eax, var_54
008BA781: push eax
008BA782: lea eax, var_50
008BA785: push eax
008BA786: lea eax, var_4C
008BA789: push eax
008BA78A: lea eax, var_48
008BA78D: push eax
008BA78E: lea eax, var_44
008BA791: push eax
008BA792: lea eax, var_40
008BA795: push eax
008BA796: lea eax, var_3C
008BA799: push eax
008BA79A: lea eax, var_38
008BA79D: push eax
008BA79E: lea eax, var_34
008BA7A1: push eax
008BA7A2: lea eax, var_30
008BA7A5: push eax
008BA7A6: lea eax, var_2C
008BA7A9: push eax
008BA7AA: lea eax, var_28
008BA7AD: push eax
008BA7AE: lea eax, var_24
008BA7B1: push eax
008BA7B2: lea eax, var_20
008BA7B5: push eax
008BA7B6: lea eax, var_1C
008BA7B9: push eax
008BA7BA: lea eax, var_18
008BA7BD: push eax
008BA7BE: push 00000047h
008BA7C0: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008BA7C5: add esp, 00000120h
008BA7CB: lea eax, var_00000138
008BA7D1: push eax
008BA7D2: lea eax, var_00000134
008BA7D8: push eax
008BA7D9: push 00000002h
008BA7DB: call 00410A48h ; msvbvm60.dll.__vbaFreeObjList
008BA7E0: add esp, 0000000Ch
008BA7E3: lea eax, var_00000158
008BA7E9: push eax
008BA7EA: lea eax, var_00000148
008BA7F0: push eax
008BA7F1: push 00000002h
008BA7F3: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008BA7F8: add esp, 0000000Ch
008BA7FB: ret 
End Sub

Private sub cmdAgree__8B95EB
008B95EB: push ebp
008B95EC: mov ebp, esp
008B95EE: sub esp, 0000000Ch
008B95F1: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008B95F6: mov eax, fs:[00h]
008B95FC: push eax
008B95FD: mov fs:[00000000h], esp
008B9604: push 00000068h
008B9606: pop eax
008B9607: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B960C: push ebx
008B960D: push esi
008B960E: push edi
008B960F: mov var_0C, esp
008B9612: mov var_08, 0040EDC0h
008B9619: mov eax, [ebp+08h]
008B961C: and eax, 00000001h
008B961F: mov var_04, eax
008B9622: mov eax, [ebp+08h]
008B9625: and al, FEh
008B9627: mov [ebp+08h], eax
008B962A: mov eax, [ebp+08h]
008B962D: mov eax, [eax]
008B962F: push [ebp+08h]
008B9632: call [eax+04h]
008B9635: push 00000000h
008B9637: push 00000000h
008B9639: mov eax, [ebp+08h]
008B963C: mov eax, [eax]
008B963E: push [ebp+08h]
008B9641: call [eax+00000300h]
008B9647: push eax
008B9648: lea eax, var_1C
008B964B: push eax
008B964C: call 00410A84h ; Set (object)
008B9651: push eax
008B9652: lea eax, var_2C
008B9655: push eax
008B9656: call 00410A8Ah ; msvbvm60.dll.__vbaLateIdCallLd
008B965B: add esp, 00000010h
008B965E: push eax
008B965F: call 00410A90h ; msvbvm60.dll.__vbaI4Var
008B9664: neg eax
008B9666: sbb eax, eax
008B9668: neg eax
008B966A: neg eax
008B966C: mov var_60, ax
008B9670: lea ecx, var_1C
008B9673: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B9678: lea ecx, var_2C
008B967B: call 00410A78h ; msvbvm60.dll.__vbaFreeVar
008B9680: movsx eax, word ptr var_60
008B9684: test eax, eax
008B9686: jz 008B9767h
008B968C: mov var_44, 0045A890h ; USERNAME
008B9693: mov var_4C, 00000008h
008B969A: lea edx, var_4C
008B969D: lea ecx, var_2C
008B96A0: call 004109E2h ; msvbvm60.dll.__vbaVarDup
008B96A5: lea eax, var_2C
008B96A8: push eax
008B96A9: lea eax, var_3C
008B96AC: push eax
008B96AD: call 00410CE2h ; Environ
008B96B2: lea eax, var_3C
008B96B5: push eax
008B96B6: lea eax, var_18
008B96B9: push eax
008B96BA: call 0041097Ch ; msvbvm60.dll.__vbaStrVarVal
008B96BF: push eax
008B96C0: push 0045A880h ; User
008B96C5: push 0045A868h ; Agreement
008B96CA: push 00445984h ; bssnet
008B96CF: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008B96D4: lea ecx, var_18
008B96D7: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008B96DC: lea eax, var_3C
008B96DF: push eax
008B96E0: lea eax, var_2C
008B96E3: push eax
008B96E4: push 00000002h
008B96E6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B96EB: add esp, 0000000Ch
008B96EE: push 00000001h
008B96F0: call 00410964h ; msvbvm60.dll.__vbaStrI2
008B96F5: mov edx, eax
008B96F7: lea ecx, var_18
008B96FA: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B96FF: push eax
008B9700: push 0045A8A8h ; Agreed
008B9705: push 0045A868h ; Agreement
008B970A: push 00445984h ; bssnet
008B970F: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008B9714: lea ecx, var_18
008B9717: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008B971C: lea eax, var_2C
008B971F: push eax
008B9720: call 004109B2h ; Now
008B9725: lea eax, var_2C
008B9728: push eax
008B9729: call 00410BD4h ; msvbvm60.dll.__vbaStrErrVarCopy
008B972E: mov edx, eax
008B9730: lea ecx, var_18
008B9733: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008B9738: push eax
008B9739: push 00446908h ; Time
008B973E: push 0045A868h ; Agreement
008B9743: push 00445984h ; bssnet
008B9748: call 00410838h ; SaveSetting(arg_1,arg_2,arg_3,arg_4)
008B974D: lea ecx, var_18
008B9750: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008B9755: lea eax, var_2C
008B9758: push eax
008B9759: lea eax, var_2C
008B975C: push eax
008B975D: push 00000002h
008B975F: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B9764: add esp, 0000000Ch
008B9767: nop 
008B9768: nop 
008B9769: nop 
008B976A: nop 
008B976B: nop 
008B976C: mov edi, edi
008B976E: mov esi, esi
008B9770: mov ebx, ebx
008B9772: mov esi, esi
008B9774: mov eax, eax
008B9776: mov ecx, ecx
008B9778: nop 
008B9779: inc eax
008B977A: dec eax
008B977B: inc eax
008B977C: dec eax
008B977D: lea ecx, var_18
008B9780: inc eax
008B9781: dec eax
008B9782: inc eax
008B9783: dec eax
008B9784: nop 
008B9785: cmp [008F2608h], 00000000h
008B978C: jnz 8B97A6h
008B978E: push 008F2608h
008B9793: push 004213D4h
008B9798: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B979D: mov var_70, 008F2608h
008B97A4: jmp 8B97ADh
008B97A6: mov var_70, 008F2608h
008B97AD: mov eax, var_70
008B97B0: mov eax, [eax]
008B97B2: mov var_60, eax
008B97B5: mov var_54, 80020004h
008B97BC: mov var_5C, 0000000Ah
008B97C3: mov var_44, 80020004h
008B97CA: mov var_4C, 0000000Ah
008B97D1: push 00000010h
008B97D3: pop eax
008B97D4: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B97D9: lea esi, var_5C
008B97DC: mov edi, esp
008B97DE: movsd 
008B97DF: movsd 
008B97E0: movsd 
008B97E1: movsd 
008B97E2: push 00000010h
008B97E4: pop eax
008B97E5: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008B97EA: lea esi, var_4C
008B97ED: mov edi, esp
008B97EF: movsd 
008B97F0: movsd 
008B97F1: movsd 
008B97F2: movsd 
008B97F3: mov eax, var_60
008B97F6: mov eax, [eax]
008B97F8: push var_60
008B97FB: call [eax+000002B0h]
008B9801: fclex 
008B9803: mov var_64, eax
008B9806: cmp var_64, 00000000h
008B980A: jnl 8B9826h
008B980C: push 000002B0h
008B9811: push 00443568h
008B9816: push var_60
008B9819: push var_64
008B981C: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B9821: mov var_74, eax
008B9824: jmp 8B982Ah
008B9826: and var_74, 00000000h
008B982A: cmp [008F529Ch], 00000000h
008B9831: jnz 8B984Bh
008B9833: push 008F529Ch
008B9838: push 00440F2Ch
008B983D: call 00410A4Eh ; msvbvm60.dll.__vbaNew2
008B9842: mov var_78, 008F529Ch
008B9849: jmp 8B9852h
008B984B: mov var_78, 008F529Ch
008B9852: mov eax, var_78
008B9855: mov eax, [eax]
008B9857: mov var_60, eax
008B985A: push [ebp+08h]
008B985D: lea eax, var_1C
008B9860: push eax
008B9861: call 004108E0h ; msvbvm60.dll.__vbaObjSetAddref
008B9866: push eax
008B9867: mov eax, var_60
008B986A: mov eax, [eax]
008B986C: push var_60
008B986F: call [eax+10h]
008B9872: fclex 
008B9874: mov var_64, eax
008B9877: cmp var_64, 00000000h
008B987B: jnl 8B9894h
008B987D: push 00000010h
008B987F: push 00440F1Ch
008B9884: push var_60
008B9887: push var_64
008B988A: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008B988F: mov var_7C, eax
008B9892: jmp 8B9898h
008B9894: and var_7C, 00000000h
008B9898: lea ecx, var_1C
008B989B: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B98A0: nop 
008B98A1: nop 
008B98A2: nop 
008B98A3: nop 
008B98A4: nop 
008B98A5: mov ecx, ecx
008B98A7: mov esi, esi
008B98A9: mov esi, esi
008B98AB: mov edx, edx
008B98AD: mov ebx, ebx
008B98AF: mov edi, edi
008B98B1: nop 
008B98B2: inc eax
008B98B3: dec eax
008B98B4: inc eax
008B98B5: dec eax
008B98B6: lea ecx, var_18
008B98B9: inc eax
008B98BA: dec eax
008B98BB: inc eax
008B98BC: dec eax
008B98BD: nop 
008B98BE: mov var_04, 00000000h
008B98C5: push 008B98F0h
008B98CA: jmp 8B98EFh
008B98CC: lea ecx, var_18
008B98CF: call 00410A66h ; msvbvm60.dll.__vbaFreeStr
008B98D4: lea ecx, var_1C
008B98D7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008B98DC: lea eax, var_3C
008B98DF: push eax
008B98E0: lea eax, var_2C
008B98E3: push eax
008B98E4: push 00000002h
008B98E6: call 00410A42h ; msvbvm60.dll.__vbaFreeVarList
008B98EB: add esp, 0000000Ch
008B98EE: ret 
End Sub

