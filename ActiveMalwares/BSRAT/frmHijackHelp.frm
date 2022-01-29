VERSION 5.00
Begin VB.Form frmHijackHelp
  Caption = "Help - Hijacker"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 5 'Sizable ToolWindow
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 120
  ClientTop = 390
  ClientWidth = 8415
  ClientHeight = 8520
  StartUpPosition = 3 'Windows Default
  Begin VB.TextBox txtMain
    Left = 0
    Top = 0
    Width = 8415
    Height = 8535
    TabIndex = 0
    MultiLine = -1  'True
    ScrollBars = 2
    Locked = -1  'True
  End
End

Attribute VB_Name = "frmHijackHelp"


Private sub Form__8584BD
008584BD: push ebp
008584BE: mov ebp, esp
008584C0: sub esp, 0000000Ch
008584C3: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
008584C8: mov eax, fs:[00h]
008584CE: push eax
008584CF: mov fs:[00000000h], esp
008584D6: mov eax, 000000B8h
008584DB: call 004106A0h ; msvbvm60.dll.__vbaChkstk
008584E0: push ebx
008584E1: push esi
008584E2: push edi
008584E3: mov var_0C, esp
008584E6: mov var_08, 0040C998h
008584ED: mov eax, [ebp+08h]
008584F0: and eax, 00000001h
008584F3: mov var_04, eax
008584F6: mov eax, [ebp+08h]
008584F9: and al, FEh
008584FB: mov [ebp+08h], eax
008584FE: mov eax, [ebp+08h]
00858501: mov eax, [eax]
00858503: push [ebp+08h]
00858506: call [eax+04h]
00858509: mov eax, [ebp+08h]
0085850C: mov eax, [eax]
0085850E: push [ebp+08h]
00858511: call [eax+000002FCh]
00858517: push eax
00858518: lea eax, var_000000B8
0085851E: push eax
0085851F: call 00410A84h ; Set (object)
00858524: mov var_000000BC, eax
0085852A: push 00455FDCh ; ---What is File hijacker?
0085852F: push 00441264h ; vbCrLf
00858534: call 00410A18h ; &
00858539: mov edx, eax
0085853B: lea ecx, var_18
0085853E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858543: push eax
00858544: push 00456014h ; File hijacker is what its name says.
00858549: call 00410A18h ; &
0085854E: mov edx, eax
00858550: lea ecx, var_1C
00858553: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858558: push eax
00858559: push 00441264h ; vbCrLf
0085855E: call 00410A18h ; &
00858563: mov edx, eax
00858565: lea ecx, var_20
00858568: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085856D: push eax
0085856E: push 00456064h ; The file hijacker will (recursively) search for files in a given direcotry,
00858573: call 00410A18h ; &
00858578: mov edx, eax
0085857A: lea ecx, var_24
0085857D: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858582: push eax
00858583: push 00441264h ; vbCrLf
00858588: call 00410A18h ; &
0085858D: mov edx, eax
0085858F: lea ecx, var_28
00858592: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858597: push eax
00858598: push 00456184h ; matching the search critera, and then encrypt all found files with a given password/encryption key.
0085859D: call 00410A18h ; &
008585A2: mov edx, eax
008585A4: lea ecx, var_2C
008585A7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008585AC: push eax
008585AD: push 00441264h ; vbCrLf
008585B2: call 00410A18h ; &
008585B7: mov edx, eax
008585B9: lea ecx, var_30
008585BC: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008585C1: push eax
008585C2: push 00456250h ; By other words, the content of the hijacked files will be completely different,
008585C7: call 00410A18h ; &
008585CC: mov edx, eax
008585CE: lea ecx, var_34
008585D1: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008585D6: push eax
008585D7: push 00441264h ; vbCrLf
008585DC: call 00410A18h ; &
008585E1: mov edx, eax
008585E3: lea ecx, var_38
008585E6: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008585EB: push eax
008585EC: push 004562F4h ; and only you will be able to rescue/restore these files.
008585F1: call 00410A18h ; &
008585F6: mov edx, eax
008585F8: lea ecx, var_3C
008585FB: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858600: push eax
00858601: push 00441264h ; vbCrLf
00858606: call 00410A18h ; &
0085860B: mov edx, eax
0085860D: lea ecx, var_40
00858610: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858615: push eax
00858616: push 00441264h ; vbCrLf
0085861B: call 00410A18h ; &
00858620: mov edx, eax
00858622: lea ecx, var_44
00858625: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085862A: push eax
0085862B: push 00456100h ; ---Why file hijacker?
00858630: call 00410A18h ; &
00858635: mov edx, eax
00858637: lea ecx, var_48
0085863A: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085863F: push eax
00858640: push 00441264h ; vbCrLf
00858645: call 00410A18h ; &
0085864A: mov edx, eax
0085864C: lea ecx, var_4C
0085864F: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858654: push eax
00858655: push 00456130h ; Ask yourself!
0085865A: call 00410A18h ; &
0085865F: mov edx, eax
00858661: lea ecx, var_50
00858664: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858669: push eax
0085866A: push 00441264h ; vbCrLf
0085866F: call 00410A18h ; &
00858674: mov edx, eax
00858676: lea ecx, var_54
00858679: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085867E: push eax
0085867F: push 0045636Ch ; File hijacker could be used for many reasons.
00858684: call 00410A18h ; &
00858689: mov edx, eax
0085868B: lea ecx, var_58
0085868E: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858693: push eax
00858694: push 00441264h ; vbCrLf
00858699: call 00410A18h ; &
0085869E: mov edx, eax
008586A0: lea ecx, var_5C
008586A3: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008586A8: push eax
008586A9: push 00441264h ; vbCrLf
008586AE: call 00410A18h ; &
008586B3: mov edx, eax
008586B5: lea ecx, var_60
008586B8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008586BD: push eax
008586BE: push 004563CCh ; ---Usage
008586C3: call 00410A18h ; &
008586C8: mov edx, eax
008586CA: lea ecx, var_64
008586CD: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008586D2: push eax
008586D3: push 00441264h ; vbCrLf
008586D8: call 00410A18h ; &
008586DD: mov edx, eax
008586DF: lea ecx, var_68
008586E2: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008586E7: push eax
008586E8: push 004563E4h ; Choose a target path to hijack, set criterias and execute the hijacker!
008586ED: call 00410A18h ; &
008586F2: mov edx, eax
008586F4: lea ecx, var_6C
008586F7: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008586FC: push eax
008586FD: push 00441264h ; vbCrLf
00858702: call 00410A18h ; &
00858707: mov edx, eax
00858709: lea ecx, var_70
0085870C: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858711: push eax
00858712: push 00456478h ; Make sure to Test the hijacker before executing (not harmful).
00858717: call 00410A18h ; &
0085871C: mov edx, eax
0085871E: lea ecx, var_74
00858721: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858726: push eax
00858727: push 00441264h ; vbCrLf
0085872C: call 00410A18h ; &
00858731: mov edx, eax
00858733: lea ecx, var_78
00858736: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085873B: push eax
0085873C: push 00456554h ; In order to rescue/restore the hijacked files, you'll just need to hijack the files again,
00858741: call 00410A18h ; &
00858746: mov edx, eax
00858748: lea ecx, var_7C
0085874B: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858750: push eax
00858751: push 00441264h ; vbCrLf
00858756: call 00410A18h ; &
0085875B: mov edx, eax
0085875D: lea ecx, var_80
00858760: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858765: push eax
00858766: push 00456610h ; using same password/encryption key as the first time.
0085876B: call 00410A18h ; &
00858770: mov edx, eax
00858772: lea ecx, var_00000084
00858778: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085877D: push eax
0085877E: push 00441264h ; vbCrLf
00858783: call 00410A18h ; &
00858788: mov edx, eax
0085878A: lea ecx, var_00000088
00858790: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858795: push eax
00858796: push 00441264h ; vbCrLf
0085879B: call 00410A18h ; &
008587A0: mov edx, eax
008587A2: lea ecx, var_0000008C
008587A8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008587AD: push eax
008587AE: push 00441264h ; vbCrLf
008587B3: call 00410A18h ; &
008587B8: mov edx, eax
008587BA: lea ecx, var_00000090
008587C0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008587C5: push eax
008587C6: push 00456680h ; WARNING!
008587CB: call 00410A18h ; &
008587D0: mov edx, eax
008587D2: lea ecx, var_00000094
008587D8: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008587DD: push eax
008587DE: push 00441264h ; vbCrLf
008587E3: call 00410A18h ; &
008587E8: mov edx, eax
008587EA: lea ecx, var_00000098
008587F0: call 00410A24h ; msvbvm60.dll.__vbaStrMove
008587F5: push eax
008587F6: push 00456698h ; You should be extremely careful when dealing with this feature.
008587FB: call 00410A18h ; &
00858800: mov edx, eax
00858802: lea ecx, var_0000009C
00858808: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085880D: push eax
0085880E: push 00441264h ; vbCrLf
00858813: call 00410A18h ; &
00858818: mov edx, eax
0085881A: lea ecx, var_000000A0
00858820: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858825: push eax
00858826: push 004564FCh ; Use this feature at your own risk.
0085882B: call 00410A18h ; &
00858830: mov edx, eax
00858832: lea ecx, var_000000A4
00858838: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085883D: push eax
0085883E: push 00441264h ; vbCrLf
00858843: call 00410A18h ; &
00858848: mov edx, eax
0085884A: lea ecx, var_000000A8
00858850: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858855: push eax
00858856: push 00456740h ; However, one thing to put in mind:
0085885B: call 00410A18h ; &
00858860: mov edx, eax
00858862: lea ecx, var_000000AC
00858868: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085886D: push eax
0085886E: push 00441264h ; vbCrLf
00858873: call 00410A18h ; &
00858878: mov edx, eax
0085887A: lea ecx, var_000000B0
00858880: call 00410A24h ; msvbvm60.dll.__vbaStrMove
00858885: push eax
00858886: push 0045678Ch ; This feature was made for educational purposes only.
0085888B: call 00410A18h ; &
00858890: mov edx, eax
00858892: lea ecx, var_000000B4
00858898: call 00410A24h ; msvbvm60.dll.__vbaStrMove
0085889D: push eax
0085889E: mov eax, var_000000BC
008588A4: mov eax, [eax]
008588A6: push var_000000BC
008588AC: call [eax+000000A4h]
008588B2: fclex 
008588B4: mov var_000000C0, eax
008588BA: cmp var_000000C0, 00000000h
008588C1: jnl 8588E6h
008588C3: push 000000A4h
008588C8: push 00440E08h
008588CD: push var_000000BC
008588D3: push var_000000C0
008588D9: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
008588DE: mov var_000000CC, eax
008588E4: jmp 8588EDh
008588E6: and var_000000CC, 00000000h
008588ED: lea eax, var_0000008C
008588F3: push eax
008588F4: lea eax, var_00000088
008588FA: push eax
008588FB: lea eax, var_00000084
00858901: push eax
00858902: lea eax, var_80
00858905: push eax
00858906: lea eax, var_7C
00858909: push eax
0085890A: lea eax, var_78
0085890D: push eax
0085890E: lea eax, var_74
00858911: push eax
00858912: lea eax, var_70
00858915: push eax
00858916: lea eax, var_6C
00858919: push eax
0085891A: lea eax, var_68
0085891D: push eax
0085891E: lea eax, var_64
00858921: push eax
00858922: lea eax, var_60
00858925: push eax
00858926: lea eax, var_5C
00858929: push eax
0085892A: lea eax, var_58
0085892D: push eax
0085892E: lea eax, var_54
00858931: push eax
00858932: lea eax, var_50
00858935: push eax
00858936: lea eax, var_4C
00858939: push eax
0085893A: lea eax, var_48
0085893D: push eax
0085893E: lea eax, var_44
00858941: push eax
00858942: lea eax, var_40
00858945: push eax
00858946: lea eax, var_3C
00858949: push eax
0085894A: lea eax, var_38
0085894D: push eax
0085894E: lea eax, var_34
00858951: push eax
00858952: lea eax, var_30
00858955: push eax
00858956: lea eax, var_2C
00858959: push eax
0085895A: lea eax, var_28
0085895D: push eax
0085895E: lea eax, var_24
00858961: push eax
00858962: lea eax, var_20
00858965: push eax
00858966: lea eax, var_1C
00858969: push eax
0085896A: lea eax, var_18
0085896D: push eax
0085896E: lea eax, var_000000B4
00858974: push eax
00858975: lea eax, var_000000B0
0085897B: push eax
0085897C: lea eax, var_000000AC
00858982: push eax
00858983: lea eax, var_000000A8
00858989: push eax
0085898A: lea eax, var_000000A4
00858990: push eax
00858991: lea eax, var_000000A0
00858997: push eax
00858998: lea eax, var_0000009C
0085899E: push eax
0085899F: lea eax, var_00000098
008589A5: push eax
008589A6: lea eax, var_00000094
008589AC: push eax
008589AD: lea eax, var_00000090
008589B3: push eax
008589B4: push 00000028h
008589B6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
008589BB: add esp, 000000A4h
008589C1: lea ecx, var_000000B8
008589C7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
008589CC: mov var_04, 00000000h
008589D3: push 00858ABEh
008589D8: jmp 00858ABDh
008589DD: lea eax, var_000000B4
008589E3: push eax
008589E4: lea eax, var_000000B0
008589EA: push eax
008589EB: lea eax, var_000000AC
008589F1: push eax
008589F2: lea eax, var_000000A8
008589F8: push eax
008589F9: lea eax, var_000000A4
008589FF: push eax
00858A00: lea eax, var_000000A0
00858A06: push eax
00858A07: lea eax, var_0000009C
00858A0D: push eax
00858A0E: lea eax, var_00000098
00858A14: push eax
00858A15: lea eax, var_00000094
00858A1B: push eax
00858A1C: lea eax, var_00000090
00858A22: push eax
00858A23: lea eax, var_0000008C
00858A29: push eax
00858A2A: lea eax, var_00000088
00858A30: push eax
00858A31: lea eax, var_00000084
00858A37: push eax
00858A38: lea eax, var_80
00858A3B: push eax
00858A3C: lea eax, var_7C
00858A3F: push eax
00858A40: lea eax, var_78
00858A43: push eax
00858A44: lea eax, var_74
00858A47: push eax
00858A48: lea eax, var_70
00858A4B: push eax
00858A4C: lea eax, var_6C
00858A4F: push eax
00858A50: lea eax, var_68
00858A53: push eax
00858A54: lea eax, var_64
00858A57: push eax
00858A58: lea eax, var_60
00858A5B: push eax
00858A5C: lea eax, var_5C
00858A5F: push eax
00858A60: lea eax, var_58
00858A63: push eax
00858A64: lea eax, var_54
00858A67: push eax
00858A68: lea eax, var_50
00858A6B: push eax
00858A6C: lea eax, var_4C
00858A6F: push eax
00858A70: lea eax, var_48
00858A73: push eax
00858A74: lea eax, var_44
00858A77: push eax
00858A78: lea eax, var_40
00858A7B: push eax
00858A7C: lea eax, var_3C
00858A7F: push eax
00858A80: lea eax, var_38
00858A83: push eax
00858A84: lea eax, var_34
00858A87: push eax
00858A88: lea eax, var_30
00858A8B: push eax
00858A8C: lea eax, var_2C
00858A8F: push eax
00858A90: lea eax, var_28
00858A93: push eax
00858A94: lea eax, var_24
00858A97: push eax
00858A98: lea eax, var_20
00858A9B: push eax
00858A9C: lea eax, var_1C
00858A9F: push eax
00858AA0: lea eax, var_18
00858AA3: push eax
00858AA4: push 00000028h
00858AA6: call 00410A12h ; msvbvm60.dll.__vbaFreeStrList
00858AAB: add esp, 000000A4h
00858AB1: lea ecx, var_000000B8
00858AB7: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00858ABC: ret 
End Sub

Private sub Form__858ADD
00858ADD: push ebp
00858ADE: mov ebp, esp
00858AE0: sub esp, 00000018h
00858AE3: push 004106A6h ; msvbvm60.dll.__vbaExceptHandler
00858AE8: mov eax, fs:[00h]
00858AEE: push eax
00858AEF: mov fs:[00000000h], esp
00858AF6: push 0000006Ch
00858AF8: pop eax
00858AF9: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00858AFE: push ebx
00858AFF: push esi
00858B00: push edi
00858B01: mov var_18, esp
00858B04: mov var_14, 0040C9A8h
00858B0B: mov eax, [ebp+08h]
00858B0E: and eax, 00000001h
00858B11: mov var_10, eax
00858B14: mov eax, [ebp+08h]
00858B17: and al, FEh
00858B19: mov [ebp+08h], eax
00858B1C: mov var_0C, 00000000h
00858B23: mov eax, [ebp+08h]
00858B26: mov eax, [eax]
00858B28: push [ebp+08h]
00858B2B: call [eax+04h]
00858B2E: mov var_04, 00000001h
00858B35: mov var_04, 00000002h
00858B3C: push FFFFFFFFh
00858B3E: call 00410A60h ; On Error ...
00858B43: mov var_04, 00000003h
00858B4A: lea eax, var_58
00858B4D: push eax
00858B4E: mov eax, [ebp+08h]
00858B51: mov eax, [eax]
00858B53: push [ebp+08h]
00858B56: call [eax+00000080h]
00858B5C: fclex 
00858B5E: mov var_60, eax
00858B61: cmp var_60, 00000000h
00858B65: jnl 858B84h
00858B67: push 00000080h
00858B6C: push 004448BCh
00858B71: push [ebp+08h]
00858B74: push var_60
00858B77: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00858B7C: mov var_00000084, eax
00858B82: jmp 858B8Bh
00858B84: and var_00000084, 00000000h
00858B8B: mov eax, [ebp+08h]
00858B8E: mov eax, [eax]
00858B90: push [ebp+08h]
00858B93: call [eax+000002FCh]
00858B99: push eax
00858B9A: lea eax, var_24
00858B9D: push eax
00858B9E: call 00410A84h ; Set (object)
00858BA3: mov var_68, eax
00858BA6: lea eax, var_5C
00858BA9: push eax
00858BAA: mov eax, [ebp+08h]
00858BAD: mov eax, [eax]
00858BAF: push [ebp+08h]
00858BB2: call [eax+00000088h]
00858BB8: fclex 
00858BBA: mov var_64, eax
00858BBD: cmp var_64, 00000000h
00858BC1: jnl 858BE0h
00858BC3: push 00000088h
00858BC8: push 004448BCh
00858BCD: push [ebp+08h]
00858BD0: push var_64
00858BD3: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00858BD8: mov var_00000088, eax
00858BDE: jmp 858BE7h
00858BE0: and var_00000088, 00000000h
00858BE7: fld real4 ptr var_5C
00858BEA: fstp real4 ptr var_4C
00858BED: mov var_54, 00000004h
00858BF4: fld real4 ptr var_58
00858BF7: fstp real4 ptr var_3C
00858BFA: mov var_44, 00000004h
00858C01: and var_2C, 00000000h
00858C05: mov var_34, 00000002h
00858C0C: push 00000010h
00858C0E: pop eax
00858C0F: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00858C14: lea esi, var_54
00858C17: mov edi, esp
00858C19: movsd 
00858C1A: movsd 
00858C1B: movsd 
00858C1C: movsd 
00858C1D: push 00000010h
00858C1F: pop eax
00858C20: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00858C25: lea esi, var_44
00858C28: mov edi, esp
00858C2A: movsd 
00858C2B: movsd 
00858C2C: movsd 
00858C2D: movsd 
00858C2E: push 00000010h
00858C30: pop eax
00858C31: call 004106A0h ; msvbvm60.dll.__vbaChkstk
00858C36: lea esi, var_34
00858C39: mov edi, esp
00858C3B: movsd 
00858C3C: movsd 
00858C3D: movsd 
00858C3E: movsd 
00858C3F: fldz 
00858C41: push ecx
00858C42: fstp real4 ptr [esp]
00858C45: mov eax, var_68
00858C48: mov eax, [eax]
00858C4A: push var_68
00858C4D: call [eax+00000224h]
00858C53: fclex 
00858C55: mov var_6C, eax
00858C58: cmp var_6C, 00000000h
00858C5C: jnl 858C7Bh
00858C5E: push 00000224h
00858C63: push 00440E08h
00858C68: push var_68
00858C6B: push var_6C
00858C6E: call 00410A5Ah ; msvbvm60.dll.__vbaHresultCheckObj
00858C73: mov var_0000008C, eax
00858C79: jmp 858C82h
00858C7B: and var_0000008C, 00000000h
00858C82: lea ecx, var_24
00858C85: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00858C8A: mov var_10, 00000000h
00858C91: wait 
00858C92: push 00858CA3h
00858C97: jmp 858CA2h
00858C99: lea ecx, var_24
00858C9C: call 00410A7Eh ; msvbvm60.dll.__vbaFreeObj
00858CA1: ret 
End Sub

